-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Transactions = TSM.Accounting:NewPackage("Transactions")
local L = TSM.Include("Locale").GetTable()
local Database = TSM.Include("Util.Database")
local TempTable = TSM.Include("Util.TempTable")
local CSV = TSM.Include("Util.CSV")
local Math = TSM.Include("Util.Math")
local String = TSM.Include("Util.String")
local Log = TSM.Include("Util.Log")
local Table = TSM.Include("Util.Table")
local ItemString = TSM.Include("Util.ItemString")
local Theme = TSM.Include("Util.Theme")
local Wow = TSM.Include("Util.Wow")
local CustomPrice = TSM.Include("Service.CustomPrice")
local ItemInfo = TSM.Include("Service.ItemInfo")
local Inventory = TSM.Include("Service.Inventory")
local Settings = TSM.Include("Service.Settings")
local Threading = TSM.Include("Service.Threading")
local private = {
	db = nil,
	dbSummary = nil,
	dataChanged = false,
	baseStatsQuery = nil,
	levelStatsQuery = nil,
	statsQuery = nil,
	baseStatsMinTimeQuery = nil,
	levelStatsMinTimeQuery = nil,
	statsMinTimeQuery = nil,
	syncHashesThread = nil,
	isSyncHashesThreadRunning = false,
	syncHashDayCache = {},
	syncHashDayCacheIsInvalid = {},
	pendingSyncHashCharacters = {},
}
local OLD_CSV_KEYS = {
	sale = { "itemString", "stackSize", "quantity", "price", "buyer", "player", "time", "source" },
	buy = { "itemString", "stackSize", "quantity", "price", "seller", "player", "time", "source" },
}
local CSV_KEYS = { "itemString", "stackSize", "quantity", "price", "otherPlayer", "player", "time", "source" }
local COMBINE_TIME_THRESHOLD = 300 -- group transactions within 5 minutes together
local MAX_CSV_RECORDS = 55000 -- the max number of records we can store without WoW corrupting the SV file
local TRIMMED_CSV_RECORDS = 50000 -- how many records to trim to if we're over the limit (so we don't trim every time)
local SECONDS_PER_DAY = 24 * 60 * 60
local SYNC_FIELDS = { "type", "itemString", "stackSize", "quantity", "price", "otherPlayer", "time", "source", "saveTime" }



-- ============================================================================
-- Module Functions
-- ============================================================================

function Transactions.OnInitialize()
	if TSM.db.realm.internalData.accountingTrimmed.sales then
		Log.PrintfUser(L["%sIMPORTANT:|r When Accounting data was last saved for this realm, it was too big for WoW to handle, so old data was automatically trimmed in order to avoid corruption of the saved variables. The last %s of sale data has been preserved."], Theme.GetColor("FEEDBACK_RED"):GetTextColorPrefix(), SecondsToTime(time() - TSM.db.realm.internalData.accountingTrimmed.sales))
		TSM.db.realm.internalData.accountingTrimmed.sales = nil
	end
	if TSM.db.realm.internalData.accountingTrimmed.buys then
		Log.PrintfUser(L["%sIMPORTANT:|r When Accounting data was last saved for this realm, it was too big for WoW to handle, so old data was automatically trimmed in order to avoid corruption of the saved variables. The last %s of purchase data has been preserved."], Theme.GetColor("FEEDBACK_RED"):GetTextColorPrefix(), SecondsToTime(time() - TSM.db.realm.internalData.accountingTrimmed.buys))
		TSM.db.realm.internalData.accountingTrimmed.buys = nil
	end

	private.db = Database.NewSchema("TRANSACTIONS_LOG")
		:AddStringField("baseItemString")
		:AddStringField("type")
		:AddStringField("itemString")
		:AddStringField("levelItemString")
		:AddNumberField("stackSize")
		:AddNumberField("quantity")
		:AddNumberField("price")
		:AddStringField("otherPlayer")
		:AddStringField("player")
		:AddNumberField("time")
		:AddStringField("source")
		:AddNumberField("saveTime")
		:AddIndex("baseItemString")
		:AddIndex("levelItemString")
		:AddIndex("time")
		:Commit()
	private.db:BulkInsertStart()
	private.LoadData("sale", TSM.db.realm.internalData.csvSales, TSM.db.realm.internalData.saveTimeSales)
	private.LoadData("buy", TSM.db.realm.internalData.csvBuys, TSM.db.realm.internalData.saveTimeBuys)
	private.db:BulkInsertEnd()
	private.dbSummary = Database.NewSchema("TRANSACTIONS_SUMMARY")
		:AddUniqueStringField("itemString")
		:AddNumberField("sold")
		:AddNumberField("avgSellPrice")
		:AddNumberField("bought")
		:AddNumberField("avgBuyPrice")
		:AddNumberField("avgProfit")
		:AddNumberField("totalProfit")
		:AddNumberField("profitPct")
		:Commit()
	private.baseStatsQuery = private.db:NewQuery()
		:Select("quantity", "price")
		:Equal("type", Database.BoundQueryParam())
		:Equal("baseItemString", Database.BoundQueryParam())
		:NotEqual("source", "Vendor")
	private.levelStatsQuery = private.db:NewQuery()
		:Select("quantity", "price")
		:Equal("type", Database.BoundQueryParam())
		:Equal("baseItemString", Database.BoundQueryParam())
		:Equal("levelItemString", Database.BoundQueryParam())
		:NotEqual("source", "Vendor")
	private.statsQuery = private.db:NewQuery()
		:Select("quantity", "price")
		:Equal("type", Database.BoundQueryParam())
		:Equal("baseItemString", Database.BoundQueryParam())
		:Equal("itemString", Database.BoundQueryParam())
		:NotEqual("source", "Vendor")
	private.baseStatsMinTimeQuery = private.db:NewQuery()
		:Select("quantity", "price")
		:Equal("type", Database.BoundQueryParam())
		:Equal("baseItemString", Database.BoundQueryParam())
		:GreaterThanOrEqual("time", Database.BoundQueryParam())
		:NotEqual("source", "Vendor")
	private.levelStatsMinTimeQuery = private.db:NewQuery()
		:Select("quantity", "price")
		:Equal("type", Database.BoundQueryParam())
		:Equal("baseItemString", Database.BoundQueryParam())
		:Equal("levelItemString", Database.BoundQueryParam())
		:GreaterThanOrEqual("time", Database.BoundQueryParam())
		:NotEqual("source", "Vendor")
	private.statsMinTimeQuery = private.db:NewQuery()
		:Select("quantity", "price")
		:Equal("type", Database.BoundQueryParam())
		:Equal("baseItemString", Database.BoundQueryParam())
		:Equal("itemString", Database.BoundQueryParam())
		:GreaterThanOrEqual("time", Database.BoundQueryParam())
		:NotEqual("source", "Vendor")
	private.syncHashesThread = Threading.New("TRANSACTIONS_SYNC_HASHES", private.SyncHashesThread)

	Inventory.RegisterCallback(private.InventoryCallback)
end

function Transactions.OnDisable()
	if not private.dataChanged then
		-- nothing changed, so just keep the previous saved values
		return
	end
	TSM.db.realm.internalData.csvSales, TSM.db.realm.internalData.saveTimeSales, TSM.db.realm.internalData.accountingTrimmed.sales = private.SaveData("sale")
	TSM.db.realm.internalData.csvBuys, TSM.db.realm.internalData.saveTimeBuys, TSM.db.realm.internalData.accountingTrimmed.buys = private.SaveData("buy")
end

function Transactions.InsertAuctionSale(itemString, stackSize, price, buyer, timestamp)
	private.InsertRecord("sale", itemString, "Auction", stackSize, price, buyer, timestamp)
end

function Transactions.InsertAuctionBuy(itemString, stackSize, price, seller, timestamp)
	private.InsertRecord("buy", itemString, "Auction", stackSize, price, seller, timestamp)
end

function Transactions.InsertCODSale(itemString, stackSize, price, buyer, timestamp)
	private.InsertRecord("sale", itemString, "COD", stackSize, price, buyer, timestamp)
end

function Transactions.InsertCODBuy(itemString, stackSize, price, seller, timestamp)
	private.InsertRecord("buy", itemString, "COD", stackSize, price, seller, timestamp)
end

function Transactions.InsertTradeSale(itemString, stackSize, price, buyer)
	private.InsertRecord("sale", itemString, "Trade", stackSize, price, buyer, time())
end

function Transactions.InsertTradeBuy(itemString, stackSize, price, seller)
	private.InsertRecord("buy", itemString, "Trade", stackSize, price, seller, time())
end

function Transactions.InsertVendorSale(itemString, stackSize, price)
	private.InsertRecord("sale", itemString, "Vendor", stackSize, price, "Merchant", time())
end

function Transactions.InsertVendorBuy(itemString, stackSize, price)
	private.InsertRecord("buy", itemString, "Vendor", stackSize, price, "Merchant", time())
end

function Transactions.CreateQuery()
	return private.db:NewQuery()
end

function Transactions.RemoveOldData(days)
	private.dataChanged = true
	private.db:SetQueryUpdatesPaused(true)
	local numRecords = private.db:NewQuery()
		:LessThan("time", time() - days * SECONDS_PER_DAY)
		:DeleteAndRelease()
	private.db:SetQueryUpdatesPaused(false)
	private.OnItemRecordsChanged("sale")
	private.OnItemRecordsChanged("buy")
	TSM.Accounting.Sync.OnTransactionsChanged()
	return numRecords
end

function Transactions.GetSaleStats(itemString, minTime)
	local baseItemString = ItemString.GetBaseFast(itemString)
	local levelItemString = ItemString.ToLevel(itemString)
	local isBaseItemString = itemString == baseItemString
	local isLevelItemString = itemString == levelItemString
	local query = nil
	if minTime then
		if isBaseItemString then
			query = private.baseStatsMinTimeQuery:BindParams("sale", baseItemString, minTime)
		elseif isLevelItemString then
			query = private.levelStatsMinTimeQuery:BindParams("sale", baseItemString, levelItemString, minTime)
		else
			query = private.statsMinTimeQuery:BindParams("sale", baseItemString, itemString, minTime)
		end
	else
		if isBaseItemString then
			query = private.baseStatsQuery:BindParams("sale", baseItemString)
		elseif isLevelItemString then
			query = private.levelStatsQuery:BindParams("sale", baseItemString, levelItemString)
		else
			query = private.statsQuery:BindParams("sale", baseItemString, itemString)
		end
	end
	query:ResetOrderBy()
	local totalNum = query:Sum("quantity")
	if totalNum == 0 then
		return
	end
	return query:SumOfProduct("quantity", "price"), totalNum
end

function Transactions.GetBuyStats(itemString, isSmart)
	local baseItemString = ItemString.GetBaseFast(itemString)
	local levelItemString = ItemString.ToLevel(itemString)
	local isBaseItemString = itemString == baseItemString
	local isLevelItemString = itemString == levelItemString
	local query = nil
	if isBaseItemString then
		query = private.baseStatsQuery:BindParams("buy", baseItemString)
	elseif isLevelItemString then
		query = private.levelStatsQuery:BindParams("buy", baseItemString, levelItemString)
	else
		query = private.statsQuery:BindParams("buy", baseItemString, itemString)
	end
	query:ResetOrderBy()

	if isSmart then
		local totalQuantity = CustomPrice.GetItemPrice(itemString, "NumInventory") or 0
		if totalQuantity == 0 then
			return nil, nil
		end
		query:OrderBy("time", false)

		local remainingSmartQuantity = totalQuantity
		local priceSum, quantitySum = 0, 0
		for _, quantity, price in query:Iterator() do
			if remainingSmartQuantity > 0 then
				quantity = min(remainingSmartQuantity, quantity)
				remainingSmartQuantity = remainingSmartQuantity - quantity
				priceSum = priceSum + price * quantity
				quantitySum = quantitySum + quantity
			end
		end
		if priceSum == 0 then
			return nil, nil
		end
		return priceSum, quantitySum
	else
		local quantitySum = query:Sum("quantity")
		if quantitySum == 0 then
			return nil, nil
		end
		local priceSum = query:SumOfProduct("quantity", "price")
		if priceSum == 0 then
			return nil, nil
		end
		return priceSum, quantitySum
	end
end

function Transactions.GetMaxSalePrice(itemString)
	local query = private.GetItemQuery(itemString)
		:Select("price")
		:Equal("type", "sale")
		:NotEqual("source", "Vendor")
		:OrderBy("price", false)
	return query:GetFirstResultAndRelease()
end

function Transactions.GetMaxBuyPrice(itemString)
	local query = private.GetItemQuery(itemString)
		:Select("price")
		:Equal("type", "buy")
		:NotEqual("source", "Vendor")
		:OrderBy("price", false)
	return query:GetFirstResultAndRelease()
end

function Transactions.GetMinSalePrice(itemString)
	local query = private.GetItemQuery(itemString)
		:Select("price")
		:Equal("type", "sale")
		:NotEqual("source", "Vendor")
		:OrderBy("price", true)
	return query:GetFirstResultAndRelease()
end

function Transactions.GetMinBuyPrice(itemString)
	local query = private.GetItemQuery(itemString)
		:Select("price")
		:Equal("type", "buy")
		:NotEqual("source", "Vendor")
		:OrderBy("price", true)
	return query:GetFirstResultAndRelease()
end

function Transactions.GetAverageSalePrice(itemString)
	local totalPrice, totalNum = Transactions.GetSaleStats(itemString)
	if not totalPrice or totalPrice == 0 then
		return
	end
	return Math.Round(totalPrice / totalNum), totalNum
end

function Transactions.GetAverageBuyPrice(itemString, isSmart)
	local totalPrice, totalNum = Transactions.GetBuyStats(itemString, isSmart)
	return totalPrice and Math.Round(totalPrice / totalNum) or nil
end

function Transactions.GetLastSaleTime(itemString)
	local query = private.GetItemQuery(itemString)
		:Select("time")
		:Equal("type", "sale")
		:NotEqual("source", "Vendor")
		:OrderBy("time", false)
	return query:GetFirstResultAndRelease()
end

function Transactions.GetLastBuyTime(itemString)
	local query = private.GetItemQuery(itemString)
		:Select("time")
		:Equal("type", "buy")
		:NotEqual("source", "Vendor")
		:OrderBy("time", false)
	return query:GetFirstResultAndRelease()
end

function Transactions.GetQuantity(itemString, timeFilter, typeFilter)
	local query = private.GetItemQuery(itemString)
		:Equal("type", typeFilter)
	if timeFilter then
		query:GreaterThan("time", time() - timeFilter)
	end
	return query:SumAndRelease("quantity")
end

function Transactions.GetAveragePrice(itemString, timeFilter, typeFilter)
	local query = private.GetItemQuery(itemString)
		:Select("price", "quantity")
		:Equal("type", typeFilter)
	if timeFilter then
		query:GreaterThan("time", time() - timeFilter)
	end
	local avgPrice = 0
	local totalQuantity = 0
	for _, price, quantity in query:IteratorAndRelease() do
		avgPrice = avgPrice + price * quantity
		totalQuantity = totalQuantity + quantity
	end
	return Math.Round(avgPrice / totalQuantity)
end

function Transactions.GetTotalPrice(itemString, timeFilter, typeFilter)
	local query = private.GetItemQuery(itemString)
		:Select("price", "quantity")
		:Equal("type", typeFilter)
	if timeFilter then
		query:GreaterThan("time", time() - timeFilter)
	end
	local sumPrice = query:SumOfProduct("price", "quantity")
	query:Release()
	return sumPrice
end

function Transactions.CreateSummaryQuery()
	return private.dbSummary:NewQuery()
end

function Transactions.UpdateSummaryData(groupFilter, searchFilter, typeFilter, characterFilter, minTime)
	local totalSold = TempTable.Acquire()
	local totalSellPrice = TempTable.Acquire()
	local totalBought = TempTable.Acquire()
	local totalBoughtPrice = TempTable.Acquire()

	local items = private.db:NewQuery()
		:Select("itemString", "price", "quantity", "type")
		:LeftJoin(TSM.Groups.GetItemDBForJoin(), "itemString")

	if groupFilter then
		items:InTable("groupPath", groupFilter)
	end
	if searchFilter then
		items:VirtualField("name", "string", ItemInfo.GetName, "itemString", "")
			:Matches("name", String.Escape(searchFilter))
	end
	if typeFilter then
		items:InTable("source", typeFilter)
	end
	if characterFilter then
		items:InTable("player", characterFilter)
	end
	if minTime then
		items:GreaterThan("time", minTime)
	end

	for _, itemString, price, quantity, recordType in items:IteratorAndRelease() do
		if not totalSold[itemString] then
			totalSold[itemString] = 0
			totalSellPrice[itemString] = 0
			totalBought[itemString] = 0
			totalBoughtPrice[itemString] = 0
		end

		if recordType == "sale" then
			totalSold[itemString] = totalSold[itemString] + quantity
			totalSellPrice[itemString] = totalSellPrice[itemString] + price * quantity
		elseif recordType == "buy" then
			totalBought[itemString] = totalBought[itemString] + quantity
			totalBoughtPrice[itemString] = totalBoughtPrice[itemString] + price * quantity
		else
			error("Invalid recordType: "..tostring(recordType))
		end
	end

	private.dbSummary:TruncateAndBulkInsertStart()
	for itemString, sold in pairs(totalSold) do
		if sold > 0 and totalBought[itemString] > 0 then
			local totalAvgSellPrice = totalSellPrice[itemString] / totalSold[itemString]
			local totalAvgBuyPrice = totalBoughtPrice[itemString] / totalBought[itemString]
			local profit = totalAvgSellPrice - totalAvgBuyPrice
			local totalProfit = profit * min(totalSold[itemString], totalBought[itemString])
			local profitPct = Math.Round(profit * 100 / totalAvgBuyPrice)
			private.dbSummary:BulkInsertNewRow(itemString, sold, totalAvgSellPrice, totalBought[itemString], totalAvgBuyPrice, profit, totalProfit, profitPct)
		end
	end
	private.dbSummary:BulkInsertEnd()

	TempTable.Release(totalSold)
	TempTable.Release(totalSellPrice)
	TempTable.Release(totalBought)
	TempTable.Release(totalBoughtPrice)
end

function Transactions.GetCharacters(characters)
	private.db:NewQuery()
		:Distinct("player")
		:Select("player")
		:AsTable(characters)
		:Release()
	return characters
end

function Transactions.CanDeleteByUUID(uuid)
	return Settings.IsCurrentAccountOwner(private.db:GetRowFieldByUUID(uuid, "player"))
end

function Transactions.RemoveRowByUUID(uuid)
	local recordType = private.db:GetRowFieldByUUID(uuid, "type")
	local itemString = private.db:GetRowFieldByUUID(uuid, "itemString")
	local player = private.db:GetRowFieldByUUID(uuid, "player")
	private.db:DeleteRowByUUID(uuid)
	if private.syncHashDayCache[player] then
		private.syncHashDayCacheIsInvalid[player] = true
	end
	private.dataChanged = true
	private.OnItemRecordsChanged(recordType, itemString)
	TSM.Accounting.Sync.OnTransactionsChanged()
end

function Transactions.PrepareSyncHashes(player)
	tinsert(private.pendingSyncHashCharacters, player)
	if not private.isSyncHashesThreadRunning then
		private.isSyncHashesThreadRunning = true
		Threading.Start(private.syncHashesThread)
	end
end

function Transactions.GetSyncHash(player)
	local hashesByDay = Transactions.GetSyncHashByDay(player)
	if not hashesByDay then
		return
	end
	return Math.CalculateHash(hashesByDay)
end

function Transactions.GetSyncHashByDay(player)
	if not private.syncHashDayCache[player] or private.syncHashDayCacheIsInvalid[player] then
		return
	end
	return private.syncHashDayCache[player]
end

function Transactions.GetSyncData(player, day, result)
	local query = private.db:NewQuery()
		:Equal("player", player)
		:GreaterThanOrEqual("time", day * SECONDS_PER_DAY)
		:LessThan("time", (day + 1) * SECONDS_PER_DAY)
	for _, row in query:Iterator() do
		Table.Append(result, row:GetFields(unpack(SYNC_FIELDS)))
	end
	query:Release()
end

function Transactions.RemovePlayerDay(player, day)
	private.dataChanged = true
	private.db:SetQueryUpdatesPaused(true)
	local query = private.db:NewQuery()
		:Equal("player", player)
		:GreaterThanOrEqual("time", day * SECONDS_PER_DAY)
		:LessThan("time", (day + 1) * SECONDS_PER_DAY)
	for _, uuid in query:UUIDIterator() do
		private.db:DeleteRowByUUID(uuid)
	end
	query:Release()
	if private.syncHashDayCache[player] then
		private.syncHashDayCacheIsInvalid[player] = true
	end
	private.db:SetQueryUpdatesPaused(false)
	private.OnItemRecordsChanged("sale")
	private.OnItemRecordsChanged("buy")
end

function Transactions.HandleSyncedData(player, day, data)
	assert(#data % 9 == 0)
	private.dataChanged = true
	private.db:SetQueryUpdatesPaused(true)

	-- remove any prior data for the day
	private.db:NewQuery()
		:Equal("player", player)
		:GreaterThanOrEqual("time", day * SECONDS_PER_DAY)
		:LessThan("time", (day + 1) * SECONDS_PER_DAY)
		:DeleteAndRelease()
	if private.syncHashDayCache[player] then
		private.syncHashDayCacheIsInvalid[player] = true
	end

	-- insert the new data
	private.db:BulkInsertStart()
	private.db:BulkInsertPartition()
	for i = 1, #data, 9 do
		private.BulkInsertNewRowHelper(player, unpack(data, i, i + 8))
	end
	private.db:BulkInsertEnd()

	private.db:SetQueryUpdatesPaused(false)
	private.OnItemRecordsChanged("sale")
	private.OnItemRecordsChanged("buy")
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.LoadData(recordType, csvRecords, csvSaveTimes)
	local saveTimes = String.SafeSplit(csvSaveTimes, ",")

	local decodeContext = CSV.DecodeStart(csvRecords, OLD_CSV_KEYS[recordType]) or CSV.DecodeStart(csvRecords, CSV_KEYS)
	if not decodeContext then
		Log.Err("Failed to decode %s records", recordType)
		private.dataChanged = true
		return
	end

	local saveTimeIndex = 1
	for itemString, stackSize, quantity, price, otherPlayer, player, timestamp, source in CSV.DecodeIterator(decodeContext) do
		local saveTime = 0
		if saveTimes and source == "Auction" then
			saveTime = tonumber(saveTimes[saveTimeIndex])
			saveTimeIndex = saveTimeIndex + 1
		end
		private.BulkInsertNewRowHelper(player, recordType, itemString, stackSize, quantity, price, otherPlayer, timestamp, source, saveTime)
	end

	if not CSV.DecodeEnd(decodeContext) then
		Log.Err("Failed to decode %s records", recordType)
		private.dataChanged = true
	end

	private.OnItemRecordsChanged(recordType)
end

function private.BulkInsertNewRowHelper(player, recordType, itemString, stackSize, quantity, price, otherPlayer, timestamp, source, saveTime)
	itemString = ItemString.Get(itemString)
	local baseItemString = ItemString.GetBaseFast(itemString)
	local levelItemString = ItemString.ToLevel(itemString)
	stackSize = tonumber(stackSize)
	quantity = tonumber(quantity)
	price = tonumber(price)
	timestamp = tonumber(timestamp)
	if itemString and stackSize and quantity and price and otherPlayer and player and timestamp and source then
		local newTimestamp = floor(timestamp)
		if newTimestamp ~= timestamp then
			-- make sure all timestamps are stored as integers
			private.dataChanged = true
			timestamp = newTimestamp
		end
		local newPrice = floor(price)
		if newPrice ~= price then
			-- make sure all prices are stored as integers
			private.dataChanged = true
			price = newPrice
		end
		private.db:BulkInsertNewRowFast12(baseItemString, recordType, itemString, levelItemString, stackSize, quantity, price, otherPlayer, player, timestamp, source, saveTime)
	else
		private.dataChanged = true
	end
end

function private.SaveData(recordType)
	local numRecords = private.db:NewQuery()
		:Equal("type", recordType)
		:CountAndRelease()
	if numRecords > MAX_CSV_RECORDS then
		local query = private.db:NewQuery()
			:Equal("type", recordType)
			:OrderBy("time", false)
		local count = 0
		local saveTimes = {}
		local shouldTrim = query:Count() > MAX_CSV_RECORDS
		local lastTime = nil
		local encodeContext = CSV.EncodeStart(CSV_KEYS)
		for _, row in query:Iterator() do
			if not shouldTrim or count <= TRIMMED_CSV_RECORDS then
				-- add the save time
				local saveTime = row:GetField("saveTime")
				saveTime = saveTime ~= 0 and saveTime or time()
				if row:GetField("source") == "Auction" then
					tinsert(saveTimes, saveTime)
				end
				-- update the time we're trimming to
				if shouldTrim then
					lastTime = row:GetField("time")
				end
				-- add to our list of CSV lines
				CSV.EncodeAddRowData(encodeContext, row)
			end
			count = count + 1
		end
		query:Release()
		return CSV.EncodeEnd(encodeContext), table.concat(saveTimes, ","), lastTime
	else
		local saveTimes = {}
		local encodeContext = CSV.EncodeStart(CSV_KEYS)
		for _, _, rowRecordType, itemString, _, stackSize, quantity, price, otherPlayer, player, timestamp, source, saveTime in private.db:RawIterator() do
			if rowRecordType == recordType then
				-- add the save time
				if source == "Auction" then
					tinsert(saveTimes, saveTime ~= 0 and saveTime or time())
				end
				-- add to our list of CSV lines
				CSV.EncodeAddRowDataRaw(encodeContext, itemString, stackSize, quantity, price, otherPlayer, player, timestamp, source)
			end
		end
		return CSV.EncodeEnd(encodeContext), table.concat(saveTimes, ","), nil
	end
end

function private.InsertRecord(recordType, itemString, source, stackSize, price, otherPlayer, timestamp)
	private.dataChanged = true
	assert(itemString and source and stackSize and price and otherPlayer and timestamp)
	timestamp = floor(timestamp)
	local baseItemString = ItemString.GetBase(itemString)
	local levelItemString = ItemString.ToLevel(itemString)
	local player = Wow.GetCharacterName()
	local matchingRow = private.db:NewQuery()
		:Equal("type", recordType)
		:Equal("itemString", itemString)
		:Equal("baseItemString", baseItemString)
		:Equal("levelItemString", levelItemString)
		:Equal("stackSize", stackSize)
		:Equal("source", source)
		:Equal("price", price)
		:Equal("player", player)
		:Equal("otherPlayer", otherPlayer)
		:GreaterThan("time", timestamp - COMBINE_TIME_THRESHOLD)
		:LessThan("time", timestamp + COMBINE_TIME_THRESHOLD)
		:Equal("saveTime", 0)
		:GetFirstResultAndRelease()
	if matchingRow then
		matchingRow:SetField("quantity", matchingRow:GetField("quantity") + stackSize)
		matchingRow:Update()
		matchingRow:Release()
	else
		private.db:NewRow()
			:SetField("type", recordType)
			:SetField("itemString", itemString)
			:SetField("baseItemString", baseItemString)
			:SetField("levelItemString", levelItemString)
			:SetField("stackSize", stackSize)
			:SetField("quantity", stackSize)
			:SetField("price", price)
			:SetField("otherPlayer", otherPlayer)
			:SetField("player", player)
			:SetField("time", timestamp)
			:SetField("source", source)
			:SetField("saveTime", 0)
			:Create()
	end
	if private.syncHashDayCache[player] then
		private.syncHashDayCacheIsInvalid[player] = true
	end

	private.OnItemRecordsChanged(recordType, itemString)
	TSM.Accounting.Sync.OnTransactionsChanged()
end

function private.OnItemRecordsChanged(recordType, itemString)
	if recordType == "sale" then
		CustomPrice.OnSourceChange("AvgSell", itemString)
		CustomPrice.OnSourceChange("MaxSell", itemString)
		CustomPrice.OnSourceChange("MinSell", itemString)
		CustomPrice.OnSourceChange("NumExpires", itemString)
	elseif recordType == "buy" then
		CustomPrice.OnSourceChange("AvgBuy", itemString)
		CustomPrice.OnSourceChange("MaxBuy", itemString)
		CustomPrice.OnSourceChange("MinBuy", itemString)
	else
		error("Invalid recordType: "..tostring(recordType))
	end
end

function private.SyncHashesThread(otherPlayer)
	private.CalculateSyncHashesThreaded(Wow.GetCharacterName())
	while #private.pendingSyncHashCharacters > 0 do
		local player = tremove(private.pendingSyncHashCharacters, 1)
		private.CalculateSyncHashesThreaded(player)
	end
	private.isSyncHashesThreadRunning = false
end

function private.CalculateSyncHashesThreaded(player)
	if private.syncHashDayCache[player] and not private.syncHashDayCacheIsInvalid[player] then
		Log.Info("Sync hashes for player (%s) are already up to date", player)
		return
	end
	private.syncHashDayCache[player] = private.syncHashDayCache[player] or {}
	local result = private.syncHashDayCache[player]
	wipe(result)
	private.syncHashDayCacheIsInvalid[player] = true
	while true do
		local aborted = false
		local query = private.db:NewQuery()
			:Equal("player", player)
			:OrderBy("time", false)
			:OrderBy("itemString", true)
		Threading.GuardDatabaseQuery(query)
		for _, row in query:Iterator(true) do
			local rowHash = row:CalculateHash(SYNC_FIELDS)
			local day = floor(row:GetField("time") / SECONDS_PER_DAY)
			result[day] = Math.CalculateHash(rowHash, result[day])
			Threading.Yield()
			if query:IsIteratorAborted() then
				Log.Warn("Iterator was aborted for player (%s), will retry", player)
				aborted = true
			end
		end
		Threading.UnguardDatabaseQuery(query)
		query:Release()
		if not aborted then
			break
		end
	end
	private.syncHashDayCacheIsInvalid[player] = nil
	Log.Info("Updated sync hashes for player (%s)", player)
end

function private.InventoryCallback()
	CustomPrice.OnSourceChange("SmartAvgBuy")
end

function private.GetItemQuery(itemString)
	local query = private.db:NewQuery()
	local baseItemString = ItemString.GetBaseFast(itemString)
	local levelItemString = ItemString.ToLevel(itemString)
	local isBaseItemString = itemString == baseItemString
	local isLevelItemString = itemString == levelItemString
	if isBaseItemString then
		query:Equal("baseItemString", baseItemString)
	elseif isLevelItemString then
		query:Equal("baseItemString", baseItemString)
			:Equal("levelItemString", levelItemString)
	else
		query:Equal("baseItemString", baseItemString)
			:Equal("itemString", itemString)
	end
	return query
end
