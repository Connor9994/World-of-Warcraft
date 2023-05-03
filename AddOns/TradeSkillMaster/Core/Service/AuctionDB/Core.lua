-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local AuctionDB = TSM:NewPackage("AuctionDB")
local L = TSM.Include("Locale").GetTable()
local Log = TSM.Include("Util.Log")
local Table = TSM.Include("Util.Table")
local ItemString = TSM.Include("Util.ItemString")
local Threading = TSM.Include("Service.Threading")
local ItemInfo = TSM.Include("Service.ItemInfo")
local CustomPrice = TSM.Include("Service.CustomPrice")
local private = {
	realmData = {},
	realmUpdateTime = nil,
	regionData = {},
	regionUpdateTime = nil,
	lastScanTemp = {},
}



-- ============================================================================
-- Module Functions
-- ============================================================================

function AuctionDB.OnEnable()
	local realmData, realmScanStat, realmHistorical, regionCommodity, regionStat, regionHistorical, regionSale = TSM.AppHelper.GetAuctionDBData()
	if realmData then
		local loadedData, updateTime = private.LoadAppData(realmData)
		for field in pairs(loadedData.fieldLookup) do
			assert(not private.realmData[field])
			private.realmData[field] = loadedData
		end
		private.realmUpdateTime = max(private.realmUpdateTime or 0, updateTime)
		Log.Info("Loaded realm data (%s)", SecondsToTime(time() - updateTime).." ago")
	end
	if realmScanStat then
		local loadedData, updateTime = private.LoadAppData(realmScanStat)
		for field in pairs(loadedData.fieldLookup) do
			assert(not private.realmData[field])
			private.realmData[field] = loadedData
		end
		Log.Info("Loaded realm scan stat (%s)", SecondsToTime(time() - updateTime).." ago")
	end
	if realmHistorical then
		local loadedData, updateTime = private.LoadAppData(realmHistorical)
		for field in pairs(loadedData.fieldLookup) do
			assert(not private.realmData[field])
			private.realmData[field] = loadedData
		end
		Log.Info("Loaded realm historical (%s)", SecondsToTime(time() - updateTime).." ago")
	end
	if regionCommodity then
		local loadedData, updateTime = private.LoadAppData(regionCommodity)
		if realmData then
			-- Merge items into existing realmData
			local existing = private.realmData[next(loadedData.fieldLookup)]
			assert(Table.Equal(existing.fieldLookup, loadedData.fieldLookup))
			for itemString, data in pairs(loadedData.itemLookup) do
				if existing.itemLookup[itemString] then
					error("Duplicate data for item: "..tostring(itemString))
				end
				existing.itemLookup[itemString] = data
			end
		else
			for field in pairs(loadedData.fieldLookup) do
				assert(not private.realmData[field])
				private.realmData[field] = loadedData
			end
		end
		Log.Info("Loaded region commodity (%s)", SecondsToTime(time() - updateTime).." ago")
	end
	if regionStat then
		local loadedData, updateTime = private.LoadAppData(regionStat)
		for field in pairs(loadedData.fieldLookup) do
			assert(not private.regionData[field])
			private.regionData[field] = loadedData
		end
		private.regionUpdateTime = updateTime
		Log.Info("Loaded region stat (%s)", SecondsToTime(time() - updateTime).." ago")
	end
	if regionHistorical then
		local loadedData, updateTime = private.LoadAppData(regionHistorical)
		for field in pairs(loadedData.fieldLookup) do
			assert(not private.regionData[field])
			private.regionData[field] = loadedData
		end
		Log.Info("Loaded region historical (%s)", SecondsToTime(time() - updateTime).." ago")
	end
	if regionSale then
		local loadedData, updateTime = private.LoadAppData(regionSale)
		for field in pairs(loadedData.fieldLookup) do
			assert(not private.regionData[field])
			private.regionData[field] = loadedData
		end
		Log.Info("Loaded region sale (%s)", SecondsToTime(time() - updateTime).." ago")
	end

	-- Pre-fetch item info for items currently on the AH
	if private.realmData.minBuyout then
		for itemString in pairs(private.realmData.minBuyout.itemLookup) do
			ItemInfo.FetchInfo(itemString)
		end
	end

	if not private.realmUpdateTime then
		Log.PrintfUser(L["TSM doesn't currently have any AuctionDB pricing data for your realm. We recommend you download the TSM Desktop Application from %s to automatically update your AuctionDB data (and auto-backup your TSM settings)."], Log.ColorUserAccentText("https://tradeskillmaster.com"))
	end

	CustomPrice.OnSourceChange("DBMarket")
	CustomPrice.OnSourceChange("DBMinBuyout")
	CustomPrice.OnSourceChange("DBHistorical")
	CustomPrice.OnSourceChange("DBRecent")
	CustomPrice.OnSourceChange("DBRegionMarketAvg")
	CustomPrice.OnSourceChange("DBRegionHistorical")
	CustomPrice.OnSourceChange("DBRegionSaleAvg")
	CustomPrice.OnSourceChange("DBRegionSaleRate")
	CustomPrice.OnSourceChange("DBRegionSoldPerDay")
	collectgarbage()
end

function AuctionDB.GetAppDataUpdateTimes()
	return private.realmUpdateTime or 0, private.regionUpdateTime or 0
end

function AuctionDB.LastScanIteratorThreaded()
	wipe(private.lastScanTemp)
	local minBuyoutData = private.realmData.minBuyout
	local minBuyoutIndex = minBuyoutData.fieldLookup.minBuyout
	assert(minBuyoutIndex)
	local baseItems = Threading.AcquireSafeTempTable()
	for itemString in pairs(minBuyoutData.itemLookup) do
		local minBuyout = private.UnpackData(minBuyoutData, itemString)[minBuyoutIndex]
		itemString = ItemString.Get(itemString)
		local baseItemString = ItemString.GetBaseFast(itemString)
		if baseItemString ~= itemString then
			baseItems[baseItemString] = true
		end
		if minBuyout and minBuyout > 0 then
			private.lastScanTemp[itemString] = min(private.lastScanTemp[itemString] or math.huge, minBuyout)
		end
		Threading.Yield()
	end

	-- remove the base items since they would be double-counted with the specific variants
	for itemString in pairs(baseItems) do
		private.lastScanTemp[itemString] = nil
	end
	Threading.ReleaseSafeTempTable(baseItems)

	return pairs(private.lastScanTemp)
end

function AuctionDB.GetRealmItemData(itemString, key)
	return private.GetItemDataHelper(private.realmData[key], key, itemString)
end

function AuctionDB.GetRegionItemData(itemString, key)
	local result = private.GetItemDataHelper(private.regionData[key], key, itemString)
	if key == "regionSalePercent" or key == "regionSoldPerDay" then
		result = result and (result / 1000) or nil
	end
	return result
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.LoadAppData(appData)
	-- Extract the metadata from the start of the string
	local metadataEndIndex, dataStartIndex = strfind(appData, ",data={")
	local itemData = strsub(appData, dataStartIndex + 1, -3)
	local metadataStr = strsub(appData, 1, metadataEndIndex - 1).."}"
	local metadata = assert(loadstring(metadataStr))()

	local result = { fieldLookup = {}, itemLookup = {} }
	assert(metadata.fields[1] == "itemString")
	for i = 2, #metadata.fields do
		result.fieldLookup[metadata.fields[i]] = i - 1
	end

	for itemString, otherData in gmatch(itemData, "{\"?([^,\"]+)\"?,([^}]+)}") do
		if tonumber(itemString) then
			itemString = "i:"..itemString
		end
		result.itemLookup[itemString] = otherData
	end

	return result, metadata.downloadTime
end

function private.GetItemDataHelper(tbl, key, itemString)
	if not itemString or not tbl then
		return nil
	end
	local fieldIndex = tbl.fieldLookup[key]
	if not fieldIndex then
		return nil
	end
	itemString = ItemString.Filter(itemString)
	if not tbl.itemLookup[itemString] and not strmatch(itemString, "^[ip]:[0-9]+$") then
		-- first try to get the data for the level itemString (if there is an explicit one)
		local levelItemString = ItemString.ToLevel(itemString)
		levelItemString = ItemString.IsLevel(levelItemString) and levelItemString or nil
		if levelItemString and tbl.itemLookup[levelItemString] then
			itemString = levelItemString
		else
			-- try the base item
			itemString = private.GetBaseItemHelper(itemString)
			if not itemString then
				return nil
			end
		end
	end
	local data = private.UnpackData(tbl, itemString)
	local value = data and data[fieldIndex] or 0
	return value > 0 and value or nil
end

function private.GetBaseItemHelper(itemString)
	local quality = ItemInfo.GetQuality(itemString)
	local itemLevel = ItemInfo.GetItemLevel(itemString)
	local classId = ItemInfo.GetClassId(itemString)
	if quality and quality >= 2 and itemLevel and itemLevel >= TSM.CONST.MIN_BONUS_ID_ITEM_LEVEL and (classId == Enum.ItemClass.Weapon or classId == Enum.ItemClass.Armor) then
		if strmatch(itemString, "^i:[0-9]+:[0-9%-]*:") then
			return nil
		end
	end
	return ItemString.GetBaseFast(itemString)
end

function private.UnpackData(tbl, itemString)
	local data = tbl.itemLookup[itemString]
	if type(data) ~= "string" then
		return data
	end
	-- Need to unpack the data
	local tblData = {strsplit(",", data)}
	for i = 1, #tblData do
		local val = tblData[i]
		if #val > 6 then
			-- tonumber only works for 32-bit values, so need to cut the value in half
			val = tonumber(strsub(val, -6), 32) + tonumber(strsub(val, 1, -7), 32) * (2 ^ 30)
		else
			val = tonumber(val, 32)
		end
		tblData[i] = val
	end
	tbl.itemLookup[itemString] = tblData
	data = tblData
	return data
end
