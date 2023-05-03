-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local MailTracking = TSM.Init("Service.MailTracking") ---@class Service.MailTracking
local Environment = TSM.Include("Environment")
local Database = TSM.Include("Util.Database")
local Delay = TSM.Include("Util.Delay")
local Event = TSM.Include("Util.Event")
local TempTable = TSM.Include("Util.TempTable")
local Log = TSM.Include("Util.Log")
local ItemString = TSM.Include("Util.ItemString")
local DefaultUI = TSM.Include("Service.DefaultUI")
local ItemInfo = TSM.Include("Service.ItemInfo")
local Settings = TSM.Include("Service.Settings")
local AuctionTracking = TSM.Include("Service.AuctionTracking")
local TooltipScanning = TSM.Include("Service.TooltipScanning")
local private = {
	settings = nil,
	mailDB = nil,
	itemDB = nil,
	quantityDB = nil,
	baseItemQuantityQuery = nil,
	callbacks = {},
	expiresCallbacks = {},
	cancelAuctionQuery = nil,
	scanTimer = nil,
}
local PLAYER_NAME = UnitName("player")



-- ============================================================================
-- Module Loading
-- ============================================================================

MailTracking:OnSettingsLoad(function()
	private.settings = Settings.NewView()
		:AddKey("factionrealm", "internalData", "pendingMail")
		:AddKey("factionrealm", "internalData", "expiringMail")
		:AddKey("sync", "internalData", "mailQuantity")
	private.scanTimer = Delay.CreateTimer("MAIL_TRACKING_SCAN", private.MailInboxUpdateDelayed)

	-- update the structure of TSM.db.factionrealm.internalData.pendingMail
	local toUpdate = TempTable.Acquire()
	for character, pendingMailData in pairs(private.settings.pendingMail) do
		if pendingMailData.items then
			Log.Info("Converting pending mail data for %s", character)
			toUpdate[character] = pendingMailData.items
		end
	end
	for character, items in pairs(toUpdate) do
		private.settings.pendingMail[character] = items
	end
	TempTable.Release(toUpdate)

	-- remove data for characters we don't own
	local toRemove = TempTable.Acquire()
	for character in pairs(private.settings.pendingMail) do
		if Settings.GetCharacterSyncAccountKey(character) ~= Settings.GetCurrentSyncAccountKey() then
			Log.Info("Removed pending mail data for %s", character)
			tinsert(toRemove, character)
		end
	end
	for _, character in ipairs(toRemove) do
		private.settings.pendingMail[character] = nil
	end
	TempTable.Release(toRemove)

	private.mailDB = Database.NewSchema("MAIL_TRACKING_INBOX_INFO")
		:AddUniqueNumberField("index")
		:AddStringField("icon")
		:AddStringField("sender")
		:AddStringField("subject")
		:AddStringField("itemString")
		:AddSmartMapField("levelItemString", ItemString.GetLevelMap(), "itemString")
		:AddNumberField("itemCount")
		:AddNumberField("money")
		:AddNumberField("cod")
		:AddNumberField("expires")
		:AddIndex("index")
		:Commit()
	private.itemDB = Database.NewSchema("MAIL_TRACKING_INBOX_ITEMS")
		:AddNumberField("index")
		:AddNumberField("itemIndex")
		:AddStringField("itemLink")
		:AddNumberField("quantity")
		:Commit()
	private.quantityDB = Database.NewSchema("MAIL_TRACKING_QUANTITY")
		:AddUniqueStringField("levelItemString")
		:AddNumberField("mailQuantity")
		:AddSmartMapField("baseItemString", ItemString.GetBaseMap(), "levelItemString")
		:AddIndex("baseItemString")
		:Commit()
	private.baseItemQuantityQuery = private.quantityDB:NewQuery()
		:Select("mailQuantity")
		:Equal("baseItemString", Database.BoundQueryParam())

	private.settings.pendingMail[PLAYER_NAME] = private.settings.pendingMail[PLAYER_NAME] or {}
	Event.Register("MAIL_INBOX_UPDATE", private.MailInboxUpdateHandler)

	if Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE) then
		private.cancelAuctionQuery = AuctionTracking.CreateQuery()
			:Equal("auctionId", Database.BoundQueryParam())
			:Select("levelItemString", "stackSize")

		-- handle auction canceling
		hooksecurefunc(C_AuctionHouse, "CancelAuction", function(auctionId)
			private.cancelAuctionQuery:BindParams(auctionId)
			for _, levelItemString, stackSize in private.cancelAuctionQuery:Iterator() do
				private.ChangePendingMailQuantity(levelItemString, stackSize)
			end
		end)
	else
		-- handle auction buying
		hooksecurefunc("PlaceAuctionBid", function(listType, index, bidPlaced)
			local itemString = ItemString.Get(GetAuctionItemLink(listType, index))
			local _, _, stackSize, _, _, _, _, _, _, buyout = GetAuctionItemInfo(listType, index)
			if not itemString or bidPlaced ~= buyout then
				return
			end
			private.ChangePendingMailQuantity(ItemString.ToLevel(itemString), stackSize)
		end)

		-- handle auction canceling
		hooksecurefunc("CancelAuction", function(index)
			local itemString = ItemString.Get(GetAuctionItemLink("owner", index))
			local _, _, stackSize = GetAuctionItemInfo("owner", index)
			-- for some reason, these APIs don't always work properly, so check the return values
			if not itemString or not stackSize or stackSize == 0 then
				return
			end
			private.ChangePendingMailQuantity(ItemString.ToLevel(itemString), stackSize)
		end)
	end

	-- handle sending mail to alts
	hooksecurefunc("SendMail", function(target)
		local character = private.ValidateCharacter(target)
		if not character then
			return
		end
		private.settings.pendingMail[character] = private.settings.pendingMail[character] or {}
		local altPendingMail = private.settings.pendingMail[character]
		for i = 1, ATTACHMENTS_MAX_SEND do
			local itemString = ItemString.Get(GetSendMailItemLink(i))
			local _, _, _, quantity = GetSendMailItem(i)
			if itemString and quantity then
				local levelItemString = ItemString.ToLevel(itemString)
				altPendingMail[levelItemString] = (altPendingMail[levelItemString] or 0) + quantity
			end
		end
	end)

	-- handle returning mail to alts
	hooksecurefunc("ReturnInboxItem", function(index)
		local character = private.ValidateCharacter(select(3, GetInboxHeaderInfo(index)))
		if not character then
			return
		end
		private.settings.pendingMail[character] = private.settings.pendingMail[character] or {}
		local altPendingMail = private.settings.pendingMail[character]
		for i = 1, ATTACHMENTS_MAX_SEND do
			local _, _, _, quantity = GetInboxItem(index, i)
			local itemLink = quantity and quantity > 0 and private.GetInboxItemLink(index, i) or nil
			local itemString = itemLink and ItemString.Get(itemLink) or nil
			if itemString then
				local levelItemString = ItemString.ToLevel(itemString)
				altPendingMail[levelItemString] = (altPendingMail[levelItemString] or 0) + quantity
			end
		end
	end)

	private.quantityDB:BulkInsertStart()
	for levelItemString, quantity in pairs(private.settings.pendingMail[PLAYER_NAME]) do
		if quantity > 0 then
			private.quantityDB:BulkInsertNewRow(levelItemString, quantity)
		else
			private.settings.pendingMail[PLAYER_NAME][levelItemString] = nil
		end
	end
	private.quantityDB:BulkInsertEnd()
end)



-- ============================================================================
-- Module Functions
-- ============================================================================

function MailTracking.RegisterCallback(callback)
	tinsert(private.callbacks, callback)
end

function MailTracking.RegisterExpiresCallback(callback)
	tinsert(private.expiresCallbacks, callback)
end

function MailTracking.QuantityIterator()
	return private.quantityDB:NewQuery()
		:Select("levelItemString", "mailQuantity")
		:IteratorAndRelease()
end

function MailTracking.CreateMailInboxQuery()
	return private.mailDB:NewQuery()
end

function MailTracking.CreateMailItemQuery()
	return private.itemDB:NewQuery()
end

function MailTracking.GetInboxItemLink(index)
	return private.GetInboxItemLink(index, 1)
end

function MailTracking.GetMailType(index)
	return private.GetMailType(index)
end

function MailTracking.GetQuantity(itemString)
	if not ItemString.IsLevel(itemString) and itemString == ItemString.GetBaseFast(itemString) then
		return private.baseItemQuantityQuery
			:BindParams(itemString)
			:Sum("mailQuantity")
	else
		local levelItemString = ItemString.ToLevel(itemString)
		return private.quantityDB:GetUniqueRowField("levelItemString", levelItemString, "mailQuantity") or 0
	end
end

function MailTracking.RecordAuctionBuyout(levelItemString, stackSize)
	if not Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE) then
		-- We'll handle auction buys via a direct hook
		return
	end
	private.ChangePendingMailQuantity(levelItemString, stackSize)
end



-- ============================================================================
-- Event Handlers
-- ============================================================================

function private.MailInboxUpdateHandler()
	if not DefaultUI.IsMailVisible() then
		return
	end
	private.scanTimer:RunForFrames(1)
end

function private.MailInboxUpdateDelayed()
	if not DefaultUI.IsMailVisible() then
		return
	end

	wipe(private.settings.mailQuantity)
	wipe(private.settings.pendingMail[PLAYER_NAME])
	private.mailDB:TruncateAndBulkInsertStart()
	private.itemDB:TruncateAndBulkInsertStart()
	local expiration = math.huge
	for i = 1, GetInboxNumItems() do
		local _, _, sender, subject, money, cod, daysLeft, itemCount = GetInboxHeaderInfo(i)
		if itemCount and itemCount > 0 and money and money > 0 then
			expiration = min(expiration, time() + (daysLeft * 24 * 60 * 60))
		end

		if money and money > 0 then
			private.itemDB:BulkInsertNewRow(i, 0, tostring(money), 0)
		end

		local firstItemString = nil
		for j = 1, ATTACHMENTS_MAX do
			local _, _, _, quantity = GetInboxItem(i, j)
			local itemLink = quantity and quantity > 0 and private.GetInboxItemLink(i, j) or nil
			local itemString = itemLink and ItemString.Get(itemLink) or nil
			if itemString then
				firstItemString = firstItemString or itemString
				local levelItemString = ItemString.ToLevel(itemString)
				private.settings.mailQuantity[levelItemString] = (private.settings.mailQuantity[levelItemString] or 0) + quantity
				private.itemDB:BulkInsertNewRow(i, j, itemLink, quantity)
			end
		end

		local mailType = private.GetMailType(i, firstItemString) or ""
		if mailType == "BUY" then
			local _, _, _, bid = GetInboxInvoiceInfo(i)
			cod = bid
		end

		private.mailDB:BulkInsertNewRow(i, mailType, sender or UNKNOWN, subject or "--", firstItemString or "", itemCount or 0, money or 0, cod or 0, daysLeft)
	end
	private.quantityDB:TruncateAndBulkInsertStart()
	for levelItemString, quantity in pairs(private.settings.mailQuantity) do
		private.quantityDB:BulkInsertNewRow(levelItemString, quantity)
	end
	private.quantityDB:BulkInsertEnd()
	private.itemDB:BulkInsertEnd()
	private.mailDB:BulkInsertEnd()

	private.settings.expiringMail[PLAYER_NAME] = expiration ~= math.huge and expiration or nil
	for _, callback in ipairs(private.expiresCallbacks) do
		callback()
	end
	for _, callback in ipairs(private.callbacks) do
		callback()
	end
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.ChangePendingMailQuantity(levelItemString, quantity)
	assert(quantity ~= 0)
	private.settings.pendingMail[PLAYER_NAME][levelItemString] = (private.settings.pendingMail[PLAYER_NAME][levelItemString] or 0) + quantity
	if not private.quantityDB:HasUniqueRow("levelItemString", levelItemString) then
		-- create a new row
		private.quantityDB:NewRow()
			:SetField("levelItemString", levelItemString)
			:SetField("mailQuantity", quantity)
			:Create()
	else
		local row = private.quantityDB:GetUniqueRow("levelItemString", levelItemString)
		local newValue = row:GetField("mailQuantity") + quantity
		assert(newValue >= 0)
		if newValue == 0 then
			-- remove this row
			private.quantityDB:DeleteRow(row)
		else
			-- update this row
			row:SetField("mailQuantity", newValue)
				:Update()
		end
		row:Release()
	end
	for _, callback in ipairs(private.callbacks) do
		callback()
	end
end

function private.ValidateCharacter(character)
	if not character then
		return
	end
	local characterName, realm = strsplit("-", strlower(character))
	-- we only care to track mails with characters on this realm
	if realm and realm ~= strlower(GetRealmName()) then
		return
	end
	-- we only care to track mails with characters on this account
	local result = nil
	for _, name in Settings.CharacterByAccountFactionrealmIterator() do
		if strlower(name) == characterName then
			result = name
		end
	end
	return result
end

function private.GetInboxItemLink(index, attachIndex)
	local link = GetInboxItemLink(index, attachIndex)
	if ItemString.GetBase(link) ~= ItemString.GetPetCage() then
		return link
	end
	local speciesId, level, breedQuality = TooltipScanning.GetInboxBattlePetInfo(index, attachIndex)
	assert(speciesId and speciesId > 0)
	return ItemInfo.GetLink(strjoin(":", "p", speciesId, level, breedQuality))
end

function private.GetMailType(index, firstItemString)
	local _, _, _, subject, money, cod, _, numItems, _, _, _, _, isGM = GetInboxHeaderInfo(index)
	if isGM or (cod and cod > 0) or (money == 0 and (not numItems or numItems == 0)) then
		return nil
	end

	local info = GetInboxInvoiceInfo(index)
	if money and money > 0 and info == "seller" then
		return "SALE"
	elseif numItems and numItems > 0 and info == "buyer" then
		return "BUY"
	elseif not info then
		if strfind(subject, gsub("^"..AUCTION_REMOVED_MAIL_SUBJECT, "%%s", "")) then
			return "CANCEL"
		end

		if strfind(subject, gsub("^"..AUCTION_EXPIRED_MAIL_SUBJECT, "%%s", "")) then
			return "EXPIRE"
		end
	end

	return "OTHER"
end
