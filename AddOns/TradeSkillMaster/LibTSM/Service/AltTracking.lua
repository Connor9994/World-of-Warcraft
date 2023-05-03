-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local AltTracking = TSM.Init("Service.AltTracking") ---@class Service.AltTracking
local Database = TSM.Include("Util.Database")
local TempTable = TSM.Include("Util.TempTable")
local ItemString = TSM.Include("Util.ItemString")
local Vararg = TSM.Include("Util.Vararg")
local Wow = TSM.Include("Util.Wow")
local Table = TSM.Include("Util.Table")
local Settings = TSM.Include("Service.Settings")
local Sync = TSM.Include("Service.Sync")
local PlayerInfo = TSM.Include("Service.PlayerInfo")
local private = {
	settings = nil,
	quantityDB = nil,
	baseItemQuantityQuery = nil,
	characterFactionrealmCache = {},
}
local CACHE_SEP = "\001"



-- ============================================================================
-- Module Loading
-- ============================================================================

AltTracking:OnSettingsLoad(function()
	private.settings = Settings.NewView()
		:AddKey("factionrealm", "internalData", "pendingMail")
		:AddKey("factionrealm", "internalData", "guildVaults")
		:AddKey("factionrealm", "coreOptions", "ignoreGuilds")
		:AddKey("sync", "internalData", "bagQuantity")
		:AddKey("sync", "internalData", "bankQuantity")
		:AddKey("sync", "internalData", "reagentBankQuantity")
		:AddKey("sync", "internalData", "auctionQuantity")
		:AddKey("sync", "internalData", "mailQuantity")

	private.quantityDB = Database.NewSchema("INVENTORY_ALT_QUANTITY")
		:AddUniqueStringField("levelItemString")
		:AddNumberField("total")
		:AddNumberField("inventory")
		:AddNumberField("auctions")
		:AddSmartMapField("baseItemString", ItemString.GetBaseMap(), "levelItemString")
		:AddIndex("baseItemString")
		:Commit()
	private.baseItemQuantityQuery = private.quantityDB:NewQuery()
		:Equal("baseItemString", Database.BoundQueryParam())

	private.UpdateDB()
	Sync.RegisterMirrorCallback(private.UpdateDB)
end)



-- ============================================================================
-- Module Functions
-- ============================================================================

function AltTracking.QuantityIterator()
	return private.quantityDB:NewQuery()
		:Select("levelItemString", "total")
		:IteratorAndRelease()
end

function AltTracking.GetTotalQuantity(itemString)
	if not ItemString.IsLevel(itemString) and itemString == ItemString.GetBaseFast(itemString) then
		private.baseItemQuantityQuery:BindParams(itemString)
		return private.baseItemQuantityQuery:Sum("total")
	else
		local levelItemString = ItemString.ToLevel(itemString)
		return private.quantityDB:GetUniqueRowField("levelItemString", levelItemString, "total") or 0
	end
end

function AltTracking.GetTotalGuildQuantity(itemString)
	local total = 0
	for _, guildName, factionrealm in PlayerInfo.GuildIterator() do
		total = total + AltTracking.GetGuildQuantity(itemString, guildName, factionrealm)
	end
	return total
end

function AltTracking.GetQuantity(itemString)
	if not ItemString.IsLevel(itemString) and itemString == ItemString.GetBaseFast(itemString) then
		private.baseItemQuantityQuery:BindParams(itemString)
		return private.baseItemQuantityQuery:Sum("inventory"), private.baseItemQuantityQuery:Sum("auctions")
	else
		local levelItemString = ItemString.ToLevel(itemString)
		return private.quantityDB:GetUniqueRowField("levelItemString", levelItemString, "inventory") or 0, private.quantityDB:GetUniqueRowField("levelItemString", levelItemString, "auctions") or 0
	end
end

function AltTracking.GetBagQuantity(itemString, character, factionrealm)
	return private.GetInventoryValue(itemString, "bagQuantity", character, factionrealm)
end

function AltTracking.GetBankQuantity(itemString, character, factionrealm)
	return private.GetInventoryValue(itemString, "bankQuantity", character, factionrealm)
end

function AltTracking.GetReagentBankQuantity(itemString, character, factionrealm)
	return private.GetInventoryValue(itemString, "reagentBankQuantity", character, factionrealm)
end

function AltTracking.GetAuctionQuantity(itemString, character, factionrealm)
	return private.GetInventoryValue(itemString, "auctionQuantity", character, factionrealm)
end

function AltTracking.GetMailQuantity(itemString, character, factionrealm)
	local pendingQuantity = private.GetPendingMailQuantity(itemString, character, factionrealm)
	return private.GetInventoryValue(itemString, "mailQuantity", character, factionrealm) + pendingQuantity
end

function AltTracking.GetGuildItems(result)
	for _, guildName, factionrealm in PlayerInfo.GuildIterator() do
		local guildItems = private.settings:GetForScopeKey("guildVaults", factionrealm)[guildName]
		if guildItems then
			for levelItemString, quantity in pairs(guildItems) do
				result[levelItemString] = (result[levelItemString] or 0) + quantity
			end
		end
	end
end

function AltTracking.GetGuildQuantity(itemString, guild, factionrealm)
	assert(guild)
	local ignoreGuilds = private.settings:GetForScopeKey("ignoreGuilds", factionrealm)
	local guildVaults = private.settings:GetForScopeKey("guildVaults", factionrealm)
	if not ignoreGuilds or not guildVaults or ignoreGuilds[guild] then
		return 0
	end
	return private.GetItemQuantityFromSettingsTable(guildVaults[guild], itemString)
end

function AltTracking.CharacterIterator()
	local result = TempTable.Acquire()
	for _, cacheKey in ipairs(private.characterFactionrealmCache) do
		local character, factionrealm = strsplit(CACHE_SEP, cacheKey)
		Table.InsertMultiple(result, character, factionrealm)
	end
	return TempTable.Iterator(result, 2)
end

function AltTracking.GuildQuantityIterator(itemString)
	local result = TempTable.Acquire()
	for _, guildName, factionrealm in PlayerInfo.GuildIterator() do
		local quantity = AltTracking.GetGuildQuantity(itemString, guildName, factionrealm)
		if quantity > 0 then
			Table.InsertMultiple(result, guildName, quantity)
		end
	end
	return TempTable.Iterator(result, 2)
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.UpdateDB()
	wipe(private.characterFactionrealmCache)
	local totalQuantity = TempTable.Acquire()
	local auctionQuantity = TempTable.Acquire()
	for _, key in Vararg.Iterator("bagQuantity", "bankQuantity", "reagentBankQuantity", "auctionQuantity", "mailQuantity") do
		for _, data, character, factionrealm in private.settings:AccessibleValueIterator(key) do
			if not Wow.IsPlayer(character, factionrealm) then
				local cacheKey = character..CACHE_SEP..factionrealm
				if not private.characterFactionrealmCache[cacheKey] then
					private.characterFactionrealmCache[cacheKey] = true
					tinsert(private.characterFactionrealmCache, cacheKey)
				end
				for levelItemString, quantity in pairs(data) do
					if quantity <= 0 then
						data[levelItemString] = nil
					else
						if key == "auctionQuantity" then
							auctionQuantity[levelItemString] = (auctionQuantity[levelItemString] or 0) + quantity
						end
						totalQuantity[levelItemString] = (totalQuantity[levelItemString] or 0) + quantity
					end
				end
			end
		end
	end
	for _, data, _, factionrealm in private.settings:AccessibleValueIterator("pendingMail") do
		for character, pendingQuantity in pairs(data) do
			local isValid = true
			for levelItemString, quantity in pairs(pendingQuantity) do
				if type(quantity) ~= "number" or quantity < 0 then
					isValid = false
					break
				end
				if not Wow.IsPlayer(character, factionrealm) then
					totalQuantity[levelItemString] = (totalQuantity[levelItemString] or 0) + quantity
				end
			end
			if not isValid then
				data[character] = nil
			end
		end
	end
	sort(private.characterFactionrealmCache)
	private.quantityDB:TruncateAndBulkInsertStart()
	for levelItemString, quantity in pairs(totalQuantity) do
		local auction = (auctionQuantity[levelItemString] or 0)
		assert(quantity >= auction)
		private.quantityDB:BulkInsertNewRow(levelItemString, quantity, quantity - auction, auction)
	end
	private.quantityDB:BulkInsertEnd()
	TempTable.Release(totalQuantity)
	TempTable.Release(auctionQuantity)
end

function private.GetInventoryValue(itemString, settingKey, character, factionrealm)
	local tbl = nil
	if character then
		tbl = private.settings:GetForScopeKey(settingKey, character, factionrealm)
	else
		tbl = private.settings:GetForScopeKey(settingKey, nil)
	end
	return private.GetItemQuantityFromSettingsTable(tbl, itemString)
end

function private.GetPendingMailQuantity(itemString, character, factionrealm)
	character = character or Wow.GetCharacterName()
	-- TODO: Figure out how to track pendingMail across accounts
	-- TODO: Update this code to support pendingMail across connected realms
	if factionrealm and factionrealm ~= Wow.GetFactionrealmName() then
		return 0
	end
	return private.GetItemQuantityFromSettingsTable(private.settings.pendingMail[character], itemString)
end

function private.GetItemQuantityFromSettingsTable(tbl, itemString)
	if not tbl then
		return 0
	end

	-- If we got passed a non-base item, return the quantity for the item level version
	if itemString ~= ItemString.GetBaseFast(itemString) then
		local levelItemString = ItemString.ToLevel(itemString)
		return tbl[levelItemString] or 0
	end

	-- If there is a value within the table for this item, then there aren't any non-base versions of it
	if tbl[itemString] then
		return tbl[itemString]
	end

	-- Get the sum of all the item level versions of the base item we're looking up
	local totalQuantity = 0
	for entryItemString, quantity in pairs(tbl) do
		if ItemString.GetBaseFast(entryItemString) == itemString then
			totalQuantity = totalQuantity + quantity
		end
	end

	return totalQuantity
end
