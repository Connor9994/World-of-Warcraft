-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local BagTracking = TSM.Init("Service.BagTracking") ---@class Service.BagTracking
local Environment = TSM.Include("Environment")
local Container = TSM.Include("Util.Container")
local Database = TSM.Include("Util.Database")
local Delay = TSM.Include("Util.Delay")
local Event = TSM.Include("Util.Event")
local SlotId = TSM.Include("Util.SlotId")
local Log = TSM.Include("Util.Log")
local Table = TSM.Include("Util.Table")
local TempTable = TSM.Include("Util.TempTable")
local ItemString = TSM.Include("Util.ItemString")
local DefaultUI = TSM.Include("Service.DefaultUI")
local ItemInfo = TSM.Include("Service.ItemInfo")
local TooltipScanning = TSM.Include("Service.TooltipScanning")
local InventoryInfo = TSM.Include("Service.InventoryInfo")
local Settings = TSM.Include("Service.Settings")
local private = {
	slotDB = nil,
	quantityDB = nil,
	settings = nil,
	bagUpdates = {
		pending = {},
		bagList = {},
		bankList = {},
	},
	bankSlotUpdates = {
		pending = {},
		list = {},
	},
	reagentBankSlotUpdates = {
		pending = {},
		list = {},
	},
	isFirstBankOpen = true,
	baseItemQuantityQuery = nil,
	callbackQuery = nil, -- luacheck: ignore 1004 - just stored for GC reasons
	callbacks = {},
	bagUpdateTimer = nil,
	bagUpdateDelayedTimer = nil,
	bankSlotUpdateTimer = nil,
	reagentBankSlotUpdateTimer = nil,
	bagTrackingTimer = nil,
	itemLocation = ItemLocation:CreateEmpty(),
}
local BANK_BAG_SLOTS = {}



-- ============================================================================
-- Population of the Static Data
-- ============================================================================

do
	BANK_BAG_SLOTS[BANK_CONTAINER] = true
	local firstBankBag, lastBankBag = Container.GetBankBagIndexes()
	for i = firstBankBag, lastBankBag do
		BANK_BAG_SLOTS[i] = true
	end
	if Environment.HasFeature(Environment.FEATURES.REAGENT_BANK) then
		BANK_BAG_SLOTS[REAGENTBANK_CONTAINER] = true
	end
end



-- ============================================================================
-- Module Loading
-- ============================================================================

BagTracking:OnSettingsLoad(function()
	Event.Register("BAG_UPDATE", private.BagUpdateHandler)
	if Environment.IsWrathClassic() or Environment.IsRetail() then
		-- In Wrath 3.4.1 and in Retail 10.0.5, BAG_UPDATE_DELAYED doesnt fire for non-backpack slots, so emulate it
		private.bagUpdateDelayedTimer = Delay.CreateTimer("BAG_TRACKING_BAG_UPDATE_DELAYED", private.BagUpdateDelayedHandler)
		Event.Register("BAG_UPDATE", function() private.bagUpdateDelayedTimer:RunForFrames(0) end)
	else
		Event.Register("BAG_UPDATE_DELAYED", private.BagUpdateDelayedHandler)
	end
	DefaultUI.RegisterBankVisibleCallback(private.BankVisible, true)
	Event.Register("PLAYERBANKSLOTS_CHANGED", private.BankSlotChangedHandler)
	if Environment.HasFeature(Environment.FEATURES.REAGENT_BANK) then
		Event.Register("PLAYERREAGENTBANKSLOTS_CHANGED", private.ReagentBankSlotChangedHandler)
	end
	private.slotDB = Database.NewSchema("BAG_TRACKING_SLOTS")
		:AddUniqueNumberField("slotId")
		:AddNumberField("bag")
		:AddNumberField("slot")
		:AddStringField("itemLink")
		:AddStringField("itemString")
		:AddSmartMapField("baseItemString", ItemString.GetBaseMap(), "itemString")
		:AddSmartMapField("levelItemString", ItemString.GetLevelMap(), "itemString")
		:AddNumberField("itemTexture")
		:AddNumberField("quantity")
		:AddBooleanField("isBoP")
		:AddBooleanField("isBoA")
		:AddIndex("slotId")
		:AddIndex("bag")
		:AddIndex("itemString")
		:AddIndex("baseItemString")
		:AddIndex("levelItemString")
		:Commit()
	private.quantityDB = Database.NewSchema("BAG_TRACKING_QUANTITY")
		:AddUniqueStringField("levelItemString")
		:AddNumberField("bagQuantity")
		:AddNumberField("bankQuantity")
		:AddNumberField("reagentBankQuantity")
		:AddSmartMapField("baseItemString", ItemString.GetBaseMap(), "levelItemString")
		:AddIndex("baseItemString")
		:Commit()
	private.baseItemQuantityQuery = private.quantityDB:NewQuery()
		:Select("bagQuantity", "bankQuantity", "reagentBankQuantity")
		:Equal("baseItemString", Database.BoundQueryParam())
	private.callbackQuery = private.slotDB:NewQuery()
		:SetUpdateCallback(private.OnCallbackQueryUpdated)
	private.settings = Settings.NewView()
		:AddKey("sync", "internalData", "bagQuantity")
		:AddKey("sync", "internalData", "bankQuantity")
		:AddKey("sync", "internalData", "reagentBankQuantity")

	private.bagUpdateTimer = Delay.CreateTimer("BAG_TRACKING_BAG_UPDATE", private.BagUpdateDelayedHandler)
	private.bankSlotUpdateTimer = Delay.CreateTimer("BAG_TRACKING_BANK_SLOT_UPDATE", private.BankSlotUpdateDelayed)
	private.reagentBankSlotUpdateTimer = Delay.CreateTimer("BAG_TRACKING_REAGENT_BANK_SLOT_UPDATE", private.ReagentBankSlotUpdateDelayed)
	private.bagTrackingTimer = Delay.CreateTimer("BAG_TRACKING_BAG_TRACKING", private.DelayedBagTrackingCallback)
	Table.Filter(private.settings.bagQuantity, private.FilterNonItemLevelStrings)
	Table.Filter(private.settings.bankQuantity, private.FilterNonItemLevelStrings)
	Table.Filter(private.settings.reagentBankQuantity, private.FilterNonItemLevelStrings)
	local items = TempTable.Acquire()
	for levelItemString in pairs(private.settings.bagQuantity) do
		items[levelItemString] = true
	end
	for levelItemString in pairs(private.settings.bankQuantity) do
		items[levelItemString] = true
	end
	for levelItemString in pairs(private.settings.reagentBankQuantity) do
		items[levelItemString] = true
	end
	private.quantityDB:BulkInsertStart()
	for levelItemString in pairs(items) do
		local bagQuantity = private.settings.bagQuantity[levelItemString] or 0
		local bankQuantity = private.settings.bankQuantity[levelItemString] or 0
		local reagentBankQuantity = private.settings.reagentBankQuantity[levelItemString] or 0
		if (bagQuantity + bankQuantity + reagentBankQuantity) > 0 then
			private.quantityDB:BulkInsertNewRow(levelItemString, bagQuantity, bankQuantity, reagentBankQuantity)
		end
	end
	private.quantityDB:BulkInsertEnd()
	TempTable.Release(items)
end)

BagTracking:OnGameDataLoad(function()
	-- we'll scan all the bags right away, so wipe the existing quantities
	wipe(private.settings.bagQuantity)
	private.quantityDB:SetQueryUpdatesPaused(true)
	local query = private.quantityDB:NewQuery()
	for _, row in query:Iterator() do
		local oldBagQuantity = row:GetField("bagQuantity")
		local oldTotalBankQuantity = row:GetField("bankQuantity") + row:GetField("reagentBankQuantity")
		if oldTotalBankQuantity == 0 then
			-- remove this row
			assert(oldBagQuantity > 0)
			private.quantityDB:DeleteRow(row)
		else
			local updated = false
			if Environment.IsRetail() and oldTotalBankQuantity > 0 then
				-- Update commodity quantities using GetItemCount()
				local levelItemString = row:GetField("levelItemString")
				if levelItemString == ItemString.GetBaseFast(levelItemString) and ItemInfo.IsCommodity(levelItemString) then
					local itemId = ItemString.ToId(levelItemString)
					-- GetItemCount() is a bit buggy and not all combinations of arguments work, so carefully call it to calculate the quantities
					local bagQuantity = GetItemCount(itemId, false, false, false)
					local reagentBankQuantity = GetItemCount(itemId, false, false, true) - bagQuantity
					local bankQuantity = GetItemCount(itemId, true, false, true) - bagQuantity - reagentBankQuantity
					if reagentBankQuantity ~= row:GetField("reagentBankQuantity") or bankQuantity ~= row:GetField("bankQuantity") then
						updated = true
						if reagentBankQuantity + bankQuantity == 0 then
							private.quantityDB:DeleteRow(row)
						else
							row:SetField("bagQuantity", 0)
								:SetField("bankQuantity", bankQuantity)
								:SetField("reagentBankQuantity", reagentBankQuantity)
								:Update()
						end
					end
				end
			end
			if not updated and oldBagQuantity ~= 0 then
				-- update this row
				row:SetField("bagQuantity", 0)
					:Update()
			end
		end
	end
	query:Release()
	private.quantityDB:SetQueryUpdatesPaused(false)

	-- WoW does not fire an update event for the backpack when you log in, so trigger one
	private.BagUpdateHandler(nil, 0)
	private.BagUpdateDelayedHandler()
end)



-- ============================================================================
-- Module Functions
-- ============================================================================

function BagTracking.RegisterCallback(callback)
	tinsert(private.callbacks, callback)
end

function BagTracking.QuantityIterator()
	return private.quantityDB:NewQuery()
		:Select("levelItemString", "bagQuantity", "bankQuantity", "reagentBankQuantity")
		:IteratorAndRelease()
end

function BagTracking.FilterQueryBags(query)
	return query
		:GreaterThanOrEqual("slotId", SlotId.Join(0, 1))
		:LessThanOrEqual("slotId", SlotId.Join(Container.GetNumBags() + 1, 0))
end

function BagTracking.CreateQueryBags()
	return BagTracking.FilterQueryBags(private.slotDB:NewQuery())
end

function BagTracking.CreateQueryBagsAuctionable()
	return BagTracking.CreateQueryBags()
		:Equal("isBoP", false)
		:Equal("isBoA", false)
		:Custom(private.IsAuctionableQueryFilter)
end

function BagTracking.CreateQueryBagsItem(itemString)
	local query = BagTracking.CreateQueryBags()
	if itemString == ItemString.GetBaseFast(itemString) then
		query:Equal("baseItemString", itemString)
	elseif ItemString.IsLevel(itemString) then
		query:Equal("levelItemString", itemString)
	else
		query:Equal("itemString", itemString)
	end
	return query
end

function BagTracking.CreateQueryBagsItemAuctionable(itemString)
	return BagTracking.CreateQueryBagsItem(itemString)
		:Equal("isBoP", false)
		:Equal("isBoA", false)
		:Custom(private.IsAuctionableQueryFilter)
end

function BagTracking.GetNumMailable(itemString)
	return BagTracking.CreateQueryBagsItem(itemString)
		:Equal("isBoP", false)
		:SumAndRelease("quantity")
end

function BagTracking.CreateQueryBank()
	return private.slotDB:NewQuery()
		:InTable("bag", BANK_BAG_SLOTS)
end

function BagTracking.CreateQueryBankItem(itemString)
	local query = BagTracking.CreateQueryBank()
	if itemString == ItemString.GetBaseFast(itemString) then
		query:Equal("baseItemString", itemString)
	elseif ItemString.IsLevel(itemString) then
		query:Equal("levelItemString", itemString)
	else
		query:Equal("itemString", itemString)
	end
	return query
end

function BagTracking.ForceBankQuantityDeduction(itemString, quantity)
	if DefaultUI.IsBankVisible() then
		return
	end
	private.slotDB:SetQueryUpdatesPaused(true)
	local query = private.slotDB:NewQuery()
		:Equal("itemString", itemString)
		:InTable("bag", BANK_BAG_SLOTS)
	local levelItemString = ItemString.ToLevel(itemString)
	for _, row in query:Iterator() do
		if quantity > 0 then
			local rowQuantity, rowBag = row:GetFields("quantity", "bag")
			if rowQuantity <= quantity then
				private.ChangeBagItemTotal(rowBag, levelItemString, -rowQuantity)
				private.slotDB:DeleteRow(row)
				quantity = quantity - rowQuantity
			else
				row:SetField("quantity", rowQuantity - quantity)
					:Update()
				private.ChangeBagItemTotal(rowBag, levelItemString, -quantity)
				quantity = 0
			end
		end
	end
	query:Release()
	private.slotDB:SetQueryUpdatesPaused(false)
end

function BagTracking.GetQuantityBySlotId(slotId)
	return private.slotDB:GetUniqueRowField("slotId", slotId, "quantity")
end

function BagTracking.GetBagQuantity(itemString)
	if not ItemString.IsLevel(itemString) and itemString == ItemString.GetBaseFast(itemString) then
		return private.baseItemQuantityQuery
			:BindParams(itemString)
			:Sum("bagQuantity")
	else
		local levelItemString = ItemString.ToLevel(itemString)
		return private.quantityDB:GetUniqueRowField("levelItemString", levelItemString, "bagQuantity") or 0
	end
end

function BagTracking.GetBankQuantity(itemString)
	if not ItemString.IsLevel(itemString) and itemString == ItemString.GetBaseFast(itemString) then
		return private.baseItemQuantityQuery
			:BindParams(itemString)
			:Sum("bankQuantity")
	else
		local levelItemString = ItemString.ToLevel(itemString)
		return private.quantityDB:GetUniqueRowField("levelItemString", levelItemString, "bankQuantity") or 0
	end
end

function BagTracking.GetReagentBankQuantity(itemString)
	if not ItemString.IsLevel(itemString) and itemString == ItemString.GetBaseFast(itemString) then
		return private.baseItemQuantityQuery
			:BindParams(itemString)
			:Sum("reagentBankQuantity")
	else
		local levelItemString = ItemString.ToLevel(itemString)
		return private.quantityDB:GetUniqueRowField("levelItemString", levelItemString, "reagentBankQuantity") or 0
	end
end

function BagTracking.GetQuantities(itemString)
	if not ItemString.IsLevel(itemString) and itemString == ItemString.GetBaseFast(itemString) then
		private.baseItemQuantityQuery:BindParams(itemString)
		return private.baseItemQuantityQuery:Sum("bagQuantity"), private.baseItemQuantityQuery:Sum("bankQuantity"), private.baseItemQuantityQuery:Sum("reagentBankQuantity")
	else
		local levelItemString = ItemString.ToLevel(itemString)
		local bagQuantity, bankQuantity, reagentBankQuantity = private.quantityDB:GetUniqueRowFields("levelItemString", levelItemString, "bagQuantity", "bankQuantity", "reagentBankQuantity")
		return bagQuantity or 0, bankQuantity or 0, reagentBankQuantity or 0
	end
end

function BagTracking.GetTotalQuantity(itemString)
	local bagQuantity, bankQuantity, reagentBankQuantity = BagTracking.GetQuantities(itemString)
	return bagQuantity + bankQuantity + reagentBankQuantity
end

function BagTracking.GetCraftingMatQuantity(itemString)
	if Environment.IsRetail() then
		return BagTracking.GetTotalQuantity(itemString)
	else
		return BagTracking.GetBagQuantity(itemString)
	end
end



-- ============================================================================
-- Event Handlers
-- ============================================================================

function private.BankVisible()
	if private.isFirstBankOpen then
		private.isFirstBankOpen = false
		-- this is the first time opening the bank so we'll scan all the items so wipe our existing quantities
		wipe(private.settings.bankQuantity)
		wipe(private.settings.reagentBankQuantity)
		private.quantityDB:SetQueryUpdatesPaused(true)
		local query = private.quantityDB:NewQuery()
		for _, row in query:Iterator() do
			local oldValue = row:GetField("bankQuantity") + row:GetField("reagentBankQuantity")
			if row:GetField("bagQuantity") == 0 then
				-- remove this row
				assert(oldValue > 0)
				private.quantityDB:DeleteRow(row)
			elseif oldValue ~= 0 then
				-- update this row
				row:SetField("bankQuantity", 0)
					:SetField("reagentBankQuantity", 0)
					:Update()
			end
		end
		query:Release()
		private.quantityDB:SetQueryUpdatesPaused(false)
	end
	private.BagUpdateHandler(nil, BANK_CONTAINER)
	local firstBankBag, lastBankBag = Container.GetBankBagIndexes()
	for bag = firstBankBag, lastBankBag do
		private.BagUpdateHandler(nil, bag)
	end
	if Environment.HasFeature(Environment.FEATURES.REAGENT_BANK) and IsReagentBankUnlocked() then
		for slot = 1, Container.GetNumSlots(REAGENTBANK_CONTAINER) do
			private.ReagentBankSlotChangedHandler(nil, slot)
		end
	end
	private.BagUpdateDelayedHandler()
	private.BankSlotUpdateDelayed()
	private.ReagentBankSlotUpdateDelayed()
end

function private.BagUpdateHandler(_, bag)
	if private.bagUpdates.pending[bag] then
		return
	end
	private.bagUpdates.pending[bag] = true
	local firstBankBag, lastBankBag = Container.GetBankBagIndexes()
	if bag >= BACKPACK_CONTAINER and bag <= Container.GetNumBags() then
		tinsert(private.bagUpdates.bagList, bag)
	elseif bag == BANK_CONTAINER or (bag >= firstBankBag and bag <= lastBankBag) then
		tinsert(private.bagUpdates.bankList, bag)
	elseif bag ~= KEYRING_CONTAINER then
		error("Unexpected bag: "..tostring(bag))
	end
end

function private.BagUpdateDelayedHandler()
	private.slotDB:SetQueryUpdatesPaused(true)

	-- scan any pending bags
	for i = #private.bagUpdates.bagList, 1, -1 do
		local bag = private.bagUpdates.bagList[i]
		if private.ScanBagOrBank(bag) then
			private.bagUpdates.pending[bag] = nil
			tremove(private.bagUpdates.bagList, i)
		end
	end
	if #private.bagUpdates.bagList > 0 then
		-- some failed to scan so try again
		private.bagUpdateTimer:RunForFrames(2)
	end

	if DefaultUI.IsBankVisible() then
		-- scan any pending bank bags
		for i = #private.bagUpdates.bankList, 1, -1 do
			local bag = private.bagUpdates.bankList[i]
			if private.ScanBagOrBank(bag) then
				private.bagUpdates.pending[bag] = nil
				tremove(private.bagUpdates.bankList, i)
			end
		end
		if #private.bagUpdates.bankList > 0 then
			-- some failed to scan so try again
			private.bagUpdateTimer:RunForFrames(2)
		end
	end

	private.slotDB:SetQueryUpdatesPaused(false)
end

function private.BankSlotChangedHandler(_, slot)
	if slot > NUM_BANKGENERIC_SLOTS then
		private.BagUpdateHandler(nil, slot - NUM_BANKGENERIC_SLOTS)
		return
	end
	if private.bankSlotUpdates.pending[slot] then
		return
	end
	private.bankSlotUpdates.pending[slot] = true
	tinsert(private.bankSlotUpdates.list, slot)
	private.bankSlotUpdateTimer:RunForFrames(2)
end

-- this is not a WoW event, but we fake it based on a delay from private.BankSlotChangedHandler
function private.BankSlotUpdateDelayed()
	if not DefaultUI.IsBankVisible() then
		return
	end
	private.slotDB:SetQueryUpdatesPaused(true)

	-- scan any pending slots
	for i = #private.bankSlotUpdates.list, 1, -1 do
		local slot = private.bankSlotUpdates.list[i]
		if private.ScanBankSlot(slot) then
			private.bankSlotUpdates.pending[slot] = nil
			tremove(private.bankSlotUpdates.list, i)
		end
	end
	if #private.bankSlotUpdates.list > 0 then
		-- some failed to scan so try again
		private.bankSlotUpdateTimer:RunForFrames(2)
	end

	private.slotDB:SetQueryUpdatesPaused(false)
end

function private.ReagentBankSlotChangedHandler(_, slot)
	if private.reagentBankSlotUpdates.pending[slot] then
		return
	end
	private.reagentBankSlotUpdates.pending[slot] = true
	tinsert(private.reagentBankSlotUpdates.list, slot)
	private.reagentBankSlotUpdateTimer:RunForFrames(2)
end

-- this is not a WoW event, but we fake it based on a delay from private.ReagentBankSlotChangedHandler
function private.ReagentBankSlotUpdateDelayed()
	if not DefaultUI.IsBankVisible() then
		return
	end
	private.slotDB:SetQueryUpdatesPaused(true)

	-- scan any pending slots
	for i = #private.reagentBankSlotUpdates.list, 1, -1 do
		local slot = private.reagentBankSlotUpdates.list[i]
		if private.ScanReagentBankSlot(slot) then
			private.reagentBankSlotUpdates.pending[slot] = nil
			tremove(private.reagentBankSlotUpdates.list, i)
		end
	end
	if #private.reagentBankSlotUpdates.list > 0 then
		-- some failed to scan so try again
		private.reagentBankSlotUpdateTimer:RunForFrames(2)
	end

	private.slotDB:SetQueryUpdatesPaused(false)
end



-- ============================================================================
-- Scanning Functions
-- ============================================================================

function private.ScanBagOrBank(bag)
	local numSlots = Container.GetNumSlots(bag)
	private.RemoveExtraSlots(bag, numSlots)
	local result = true
	for slot = 1, numSlots do
		if not private.ScanBagSlot(bag, slot) then
			result = false
		end
	end
	return result
end

function private.ScanBankSlot(slot)
	return private.ScanBagSlot(BANK_CONTAINER, slot)
end

function private.ScanReagentBankSlot(slot)
	return private.ScanBagSlot(REAGENTBANK_CONTAINER, slot)
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.IsAuctionableQueryFilter(row)
	if Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE) then
		private.itemLocation:Clear()
		private.itemLocation:SetBagAndSlot(row:GetFields("bag", "slot"))
		return private.itemLocation:IsValid() and C_AuctionHouse.IsSellItemValid(private.itemLocation, false)
	else
		return not TooltipScanning.HasUsedCharges(row:GetFields("bag", "slot"))
	end
end

function private.RemoveExtraSlots(bag, numSlots)
	-- the number of slots of this bag may have changed, in which case we should remove any higher ones from our DB
	local query = private.slotDB:NewQuery()
		:Equal("bag", bag)
		:GreaterThan("slot", numSlots)
	for _, row in query:Iterator() do
		local levelItemString, quantity = row:GetFields("levelItemString", "quantity")
		private.ChangeBagItemTotal(bag, levelItemString, -quantity)
		private.slotDB:DeleteRow(row)
	end
	query:Release()
end

function private.ScanBagSlot(bag, slot)
	local texture, quantity, _, _, _, _, link, _, _, itemId = Container.GetItemInfo(bag, slot)
	if quantity and not itemId then
		-- we are pending item info for this slot so try again later to scan it
		return false
	elseif quantity == 0 then
		-- this item is going away, so try again later to scan it
		return false
	end
	local itemString = ItemString.Get(link)
	local levelItemString = itemString and ItemString.ToLevel(itemString)
	local slotId = SlotId.Join(bag, slot)
	local row = private.slotDB:GetUniqueRow("slotId", slotId)
	if levelItemString then
		local isBoP, isBoA = nil, nil
		if row then
			if row:GetField("itemLink") == link then
				-- the item didn't change, so use the previous values
				isBoP, isBoA = row:GetFields("isBoP", "isBoA")
			else
				isBoP, isBoA = InventoryInfo.IsSoulbound(bag, slot)
				if isBoP == nil then
					Log.Err("Failed to get soulbound info for %d,%d (%s)", bag, slot, link or "?")
					return false
				end
			end
			-- remove the old row from the item totals
			local oldLevelItemString, oldQuantity = row:GetFields("levelItemString", "quantity")
			private.ChangeBagItemTotal(bag, oldLevelItemString, -oldQuantity)
		else
			isBoP, isBoA = InventoryInfo.IsSoulbound(bag, slot)
			if isBoP == nil then
				Log.Err("Failed to get soulbound info for %d,%d (%s)", bag, slot, link or "?")
				return false
			end
			-- there was nothing here previously so create a new row
			row = private.slotDB:NewRow()
				:SetField("slotId", slotId)
				:SetField("bag", bag)
				:SetField("slot", slot)
		end
		-- update the row
		row:SetField("itemLink", link)
			:SetField("itemString", ItemString.Get(link))
			:SetField("itemTexture", texture or ItemInfo.GetTexture(link))
			:SetField("quantity", quantity)
			:SetField("isBoP", isBoP)
			:SetField("isBoA", isBoA)
			:CreateOrUpdateAndRelease()
		-- add to the item totals
		private.ChangeBagItemTotal(bag, levelItemString, quantity)
	elseif row then
		-- nothing here now so delete the row and remove from the item totals
		local oldLevelItemString, oldQuantity = row:GetFields("levelItemString", "quantity")
		private.ChangeBagItemTotal(bag, oldLevelItemString, -oldQuantity)
		private.slotDB:DeleteRow(row)
		row:Release()
	end
	return true
end

function private.DelayedBagTrackingCallback()
	for _, callback in ipairs(private.callbacks) do
		callback()
	end
end

function private.OnCallbackQueryUpdated()
	private.bagTrackingTimer:RunForFrames(2)
end

function private.ChangeBagItemTotal(bag, levelItemString, changeQuantity)
	assert(changeQuantity ~= 0)
	local totalsTable = nil
	local field = nil
	local firstBankBag, lastBankBag = Container.GetBankBagIndexes()
	if bag >= BACKPACK_CONTAINER and bag <= Container.GetNumBags() then
		totalsTable = private.settings.bagQuantity
		field = "bagQuantity"
	elseif bag == BANK_CONTAINER or (bag >= firstBankBag and bag <= lastBankBag) then
		totalsTable = private.settings.bankQuantity
		field = "bankQuantity"
	elseif bag == REAGENTBANK_CONTAINER then
		totalsTable = private.settings.reagentBankQuantity
		field = "reagentBankQuantity"
	else
		error("Unexpected bag: "..tostring(bag))
	end
	totalsTable[levelItemString] = (totalsTable[levelItemString] or 0) + changeQuantity

	if not private.quantityDB:HasUniqueRow("levelItemString", levelItemString) then
		-- create a new row
		private.quantityDB:NewRow()
			:SetField("levelItemString", levelItemString)
			:SetField("bagQuantity", 0)
			:SetField("bankQuantity", 0)
			:SetField("reagentBankQuantity", 0)
			:Create()
	end
	local row = private.quantityDB:GetUniqueRow("levelItemString", levelItemString)
	local totalQuantity = row:GetField("bagQuantity") + row:GetField("bankQuantity") + row:GetField("reagentBankQuantity")
	local oldValue = row:GetField(field)
	local newValue = oldValue + changeQuantity
	assert(newValue >= 0)
	if newValue == 0 and totalQuantity == oldValue then
		-- remove this row
		private.quantityDB:DeleteRow(row)
	else
		-- update this row
		row:SetField(field, oldValue + changeQuantity)
			:Update()
	end
	row:Release()

	assert(totalsTable[levelItemString] >= 0)
	if totalsTable[levelItemString] == 0 then
		totalsTable[levelItemString] = nil
	end
end

function private.FilterNonItemLevelStrings(levelItemString)
	return levelItemString ~= ItemString.ToLevel(levelItemString)
end
