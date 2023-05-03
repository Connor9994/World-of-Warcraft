-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local FilterSearch = TSM.Shopping:NewPackage("FilterSearch")
local Environment = TSM.Include("Environment")
local L = TSM.Include("Locale").GetTable()
local DisenchantInfo = TSM.Include("Data.DisenchantInfo")
local TempTable = TSM.Include("Util.TempTable")
local String = TSM.Include("Util.String")
local Log = TSM.Include("Util.Log")
local Math = TSM.Include("Util.Math")
local ItemString = TSM.Include("Util.ItemString")
local Threading = TSM.Include("Service.Threading")
local ItemFilter = TSM.Include("Service.ItemFilter")
local CustomPrice = TSM.Include("Service.CustomPrice")
local Conversions = TSM.Include("Service.Conversions")
local ItemInfo = TSM.Include("Service.ItemInfo")
local Settings = TSM.Include("Service.Settings")
local FilterSearchContext = TSM.Include("LibTSMClass").DefineClass("FilterSearchContext", TSM.Shopping.ShoppingSearchContext)
local private = {
	settings = nil,
	scanThreadId = nil,
	itemFilter = nil,
	isSpecial = false,
	marketValueSource = nil,
	searchContext = nil,
	gatheringSearchContext = nil,
	targetItem = {},
	itemList = {},
	generalMaxQuantity = {},
}



-- ============================================================================
-- Module Functions
-- ============================================================================

function FilterSearch.OnInitialize()
	private.settings = Settings.NewView()
		:AddKey("global", "shoppingOptions", "pctSource")
	-- initialize thread
	private.scanThreadId = Threading.New("FILTER_SEARCH", private.ScanThread)
	private.itemFilter = ItemFilter.New()
	private.searchContext = FilterSearchContext(private.scanThreadId, private.MarketValueFunction)
	private.gatheringSearchContext = FilterSearchContext(private.scanThreadId, private.MarketValueFunction, private.GatheringResultsFunction)
end

function FilterSearch.GetGreatDealsSearchContext(filterStr)
	filterStr = private.ValidateFilterStr(filterStr, "NORMAL")
	if not filterStr then
		return
	end
	private.marketValueSource = private.settings.pctSource
	private.isSpecial = true
	return private.searchContext:SetScanContext(L["Great Deals Search"], filterStr, nil, L["Market Value"])
end

function FilterSearch.GetSearchContext(filterStr, itemInfo)
	local errMsg = nil
	filterStr, errMsg = private.ValidateFilterStr(filterStr, "NORMAL")
	if not filterStr then
		return nil, errMsg
	end
	private.marketValueSource = private.settings.pctSource
	private.isSpecial = false
	return private.searchContext:SetScanContext(filterStr, filterStr, itemInfo, L["Market Value"])
end

function FilterSearch.GetGatheringSearchContext(filterStr, mode)
	filterStr = private.ValidateFilterStr(filterStr, mode)
	if not filterStr then
		return
	end
	private.marketValueSource = "matprice"
	private.isSpecial = true
	return private.gatheringSearchContext:SetScanContext(L["Gathering Search"], filterStr, nil, L["Material Cost"])
end



-- ============================================================================
-- Scan Thread
-- ============================================================================

function private.ScanThread(auctionScan, filterStr)
	wipe(private.generalMaxQuantity)
	if Environment.IsRetail() and filterStr == "" then
		auctionScan:NewQuery()
			:SetStr("")
		wipe(private.targetItem)
		wipe(private.itemList)
	else
		local hasFilter, errMsg = false, nil
		for filter in String.SplitIterator(filterStr, ";") do
			filter = strtrim(filter)
			if filter ~= "" then
				local filterIsValid, filterErrMsg = private.itemFilter:ParseStr(filter)
				if filterIsValid then
					hasFilter = true
				else
					errMsg = errMsg or filterErrMsg
				end
			end
		end
		if not hasFilter then
			Log.PrintUser(format(L["Invalid search filter (%s)."], filterStr).." "..errMsg)
			return false
		end
		wipe(private.targetItem)
		wipe(private.itemList)
		local itemFilter = private.itemFilter
		for filterPart in String.SplitIterator(filterStr, ";") do
			filterPart = strtrim(filterPart)
			if filterPart ~= "" and itemFilter:ParseStr(filterPart) then
				if itemFilter:GetCrafting() then
					wipe(private.itemList)
					local targetItem = Conversions.GetTargetItemByName(private.itemFilter:GetStr())
					assert(targetItem)
					-- populate the list of items
					private.targetItem[targetItem] = targetItem
					tinsert(private.itemList, targetItem)
					local conversionInfo = Conversions.GetSourceItems(targetItem)
					for itemString in pairs(conversionInfo) do
						if not private.targetItem[itemString] then
							private.targetItem[itemString] = targetItem
							tinsert(private.itemList, itemString)
						end
					end
					-- generate the queries and add our filter
					local queryOffset = auctionScan:GetNumQueries()
					auctionScan:AddItemListQueriesThreaded(private.itemList)
					local maxQuantity = itemFilter:GetMaxQuantity()
					local firstQuery = nil
					for _, query in auctionScan:QueryIterator(queryOffset) do
						private.targetItem[query] = targetItem
						query:AddCustomFilter(private.TargetItemQueryFilter)
						if maxQuantity then
							if firstQuery then
								-- redirect to the first query so the max quantity spans them all
								private.generalMaxQuantity[query] = firstQuery
							else
								private.generalMaxQuantity[query] = maxQuantity
								firstQuery = query
							end
						end
					end
					auctionScan:AddResultsUpdateCallback(private.ResultsUpdated)
					auctionScan:SetScript("OnQueryDone", private.OnQueryDone)
				elseif itemFilter:GetDisenchant() then
					local queryOffset = auctionScan:GetNumQueries()
					local targetItem = Conversions.GetTargetItemByName(itemFilter:GetStr())
					assert(targetItem)
					-- generate queries for groups of items that d/e into the target item
					local disenchantInfo = DisenchantInfo.GetInfo(targetItem)
					for _, info in ipairs(disenchantInfo.sourceInfo) do
						auctionScan:NewQuery()
							:SetLevelRange(disenchantInfo.minLevel, disenchantInfo.maxLevel)
							:SetQualityRange(info.quality, info.quality)
							:SetClass(info.classId)
							:SetItemLevelRange(info.minItemLevel, info.maxItemLevel)
					end
					-- add a query for the target item itself
					wipe(private.itemList)
					tinsert(private.itemList, targetItem)
					private.targetItem[targetItem] = targetItem
					auctionScan:AddItemListQueriesThreaded(private.itemList)
					-- add our filter to each query and generate a lookup from query to target item
					local maxQuantity = itemFilter:GetMaxQuantity()
					local firstQuery = nil
					for _, query in auctionScan:QueryIterator(queryOffset) do
						private.targetItem[query] = targetItem
						query:AddCustomFilter(private.TargetItemQueryFilter)
						if maxQuantity then
							if firstQuery then
								-- redirect to the first query so the max quantity spans them all
								private.generalMaxQuantity[query] = firstQuery
							else
								private.generalMaxQuantity[query] = maxQuantity
								firstQuery = query
							end
						end
					end
					auctionScan:AddResultsUpdateCallback(private.ResultsUpdated)
					auctionScan:SetScript("OnQueryDone", private.OnQueryDone)
				else
					local query = auctionScan:NewQuery()
					query:SetStr(itemFilter:GetStr(), itemFilter:GetExactOnly())
					query:SetQualityRange(itemFilter:GetMinQuality(), itemFilter:GetMaxQuality())
					query:SetLevelRange(itemFilter:GetMinLevel(), itemFilter:GetMaxLevel())
					query:SetItemLevelRange(itemFilter:GetMinItemLevel(), itemFilter:GetMaxItemLevel())
					query:SetClass(itemFilter:GetClass(), itemFilter:GetSubClass(), itemFilter:GetInvSlotId())
					query:SetUsable(itemFilter:GetUsableOnly())
					query:SetUncollected(itemFilter:GetUncollected())
					query:SetUpgrades(itemFilter:GetUpgrades())
					query:SetPriceRange(itemFilter:GetMinPrice(), itemFilter:GetMaxPrice())
					query:SetItems(itemFilter:GetItem())
					query:SetCanLearn(itemFilter:GetCanLearn())
					query:SetUnlearned(itemFilter:GetUnlearned())
					private.generalMaxQuantity[query] = itemFilter:GetMaxQuantity()
				end
			end
		end
		if not private.isSpecial then
			TSM.Shopping.SavedSearches.RecordFilterSearch(filterStr)
		end
	end

	-- run the scan
	if not auctionScan:ScanQueriesThreaded() then
		Log.PrintUser(L["TSM failed to scan some auctions. Please rerun the scan."])
	end
	return true
end



-- ============================================================================
-- FilterSearchContext Class
-- ============================================================================

function FilterSearchContext.GetMaxCanBuy(self, itemString)
	local targetItemString = private.targetItem[itemString]
	local maxNum = nil
	local itemQuery = private.GetMaxQuantityQuery(targetItemString or itemString)
	if itemQuery then
		maxNum = private.generalMaxQuantity[itemQuery]
		if targetItemString then
			local rate, chunkSize = private.GetTargetItemRate(targetItemString, itemString)
			maxNum = Math.Ceil(maxNum / rate, chunkSize)
		end
	end
	return maxNum
end

function FilterSearchContext.OnBuy(self, itemString, quantity)
	local targetItemString = private.targetItem[itemString]
	if targetItemString then
		quantity = quantity * private.GetTargetItemRate(targetItemString, itemString)
		itemString = targetItemString
	end
	self.__super:OnBuy(itemString, quantity)

	local itemQuery = private.GetMaxQuantityQuery(itemString)
	if itemQuery then
		private.generalMaxQuantity[itemQuery] = private.generalMaxQuantity[itemQuery] - quantity
		if private.generalMaxQuantity[itemQuery] <= 0 then
			itemQuery:WipeBrowseResults()
			for query, maxQuantity in pairs(private.generalMaxQuantity) do
				if maxQuantity == itemQuery then
					query:WipeBrowseResults()
				end
			end
		end
	end
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.ValidateFilterStr(filterStr, mode)
	assert(mode == "NORMAL" or mode == "CRAFTING" or mode == "DISENCHANT")
	filterStr = strtrim(filterStr)
	if mode == "NORMAL" and Environment.IsRetail() and filterStr == "" then
		return filterStr
	end
	local isValid, errMsg = true, nil
	local filters = TempTable.Acquire()
	for filter in String.SplitIterator(filterStr, ";") do
		filter = strtrim(filter)
		if isValid and gsub(filter, "/", "") ~= "" then
			local filterIsValid, filterErrMsg = private.itemFilter:ParseStr(filter)
			if filterIsValid then
				local str = private.itemFilter:GetStr()
				if mode == "CRAFTING" and not strfind(strlower(filter), "/crafting") and str then
					filter = filter.."/crafting"
				elseif mode == "DISENCHANT" and not strfind(strlower(filter), "/disenchant") and str then
					filter = filter.."/disenchant"
				end
				if strfind(strlower(filter), "/crafting") then
					local craftingTargetItem = str and Conversions.GetTargetItemByName(str) or nil
					if not craftingTargetItem or not Conversions.GetSourceItems(craftingTargetItem) then
						isValid = false
						errMsg = errMsg or L["The specified item is not supported for crafting searches."]
					end
				end
				if strfind(strlower(filter), "/disenchant") then
					local targetItemString = str and Conversions.GetTargetItemByName(str) or nil
					if not DisenchantInfo.IsTargetItem(targetItemString) then
						isValid = false
						errMsg = errMsg or L["The specified item is not supported for disenchant searches."]
					end
				end
			else
				isValid = false
				errMsg = errMsg or filterErrMsg
			end
		else
			isValid = false
		end
		if isValid then
			tinsert(filters, filter)
		end
	end
	local result = table.concat(filters, ";")
	TempTable.Release(filters)
	result = isValid and result ~= "" and result or nil
	errMsg = errMsg or L["The specified filter was empty."]
	return result, errMsg
end

function private.MarketValueFunction(subRow)
	local baseItemString = subRow:GetBaseItemString()
	local itemString = subRow:GetItemString()
	if next(private.targetItem) then
		local targetItemString = private.targetItem[itemString]
		if not itemString or not targetItemString then
			return nil
		end
		local targetItemRate = private.GetTargetItemRate(targetItemString, itemString)
		return Math.Round(targetItemRate * CustomPrice.GetValue(private.marketValueSource, targetItemString))
	else
		return CustomPrice.GetValue(private.marketValueSource, itemString or baseItemString)
	end
end

function private.GatheringResultsFunction(auctionScan, marketValueFunc, itemString, quantity, maxQuantity)
	local filterQuantity = 0
	for _, query in auctionScan:QueryIterator() do
		for _, subRow in query:ItemSubRowIterator(itemString) do
			local _, itemBuyout = subRow:GetBuyouts()
			if marketValueFunc(subRow) >= itemBuyout then
				local _, numOwnerItems = subRow:GetOwnerInfo()
				local quantityAvailable = subRow:GetQuantities() - numOwnerItems
				filterQuantity = filterQuantity + quantityAvailable
			end
		end
	end
	return filterQuantity > 0 and min(filterQuantity, quantity, maxQuantity) or min(quantity, maxQuantity)
end

function private.GetTargetItemRate(targetItemString, itemString)
	if itemString == targetItemString then
		return 1, 1
	end
	if DisenchantInfo.IsTargetItem(targetItemString) then
		local classId = ItemInfo.GetClassId(itemString)
		local quality = ItemInfo.GetQuality(itemString)
		local itemLevel = Environment.IsRetail() and ItemInfo.GetItemLevel(itemString) or ItemInfo.GetItemLevel(ItemString.GetBase(itemString))
		local expansion = Environment.IsRetail() and ItemInfo.GetExpansion(itemString) or nil
		local amountOfMats = DisenchantInfo.GetTargetItemSourceInfo(targetItemString, classId, quality, itemLevel, expansion)
		if amountOfMats then
			return amountOfMats, 1
		end
	end
	local conversionInfo = Conversions.GetSourceItems(targetItemString)
	local conversionChunkSize = 1
	for _ in Conversions.TargetItemsByMethodIterator(itemString, Conversions.METHOD.MILL) do
		conversionChunkSize = 5
	end
	for _ in Conversions.TargetItemsByMethodIterator(itemString, Conversions.METHOD.PROSPECT) do
		conversionChunkSize = 5
	end
	return conversionInfo and conversionInfo[itemString] or 0, conversionChunkSize
end

function private.TargetItemQueryFilter(query, row)
	local itemString = row:GetItemString()
	local targetItemString = private.targetItem[itemString] or private.targetItem[query]
	return itemString and targetItemString and private.GetTargetItemRate(targetItemString, itemString) == 0
end

function private.ResultsUpdated(_, query)
	local targetItemString = private.targetItem[query]
	if not targetItemString then
		return
	end

	-- populate the targetItem table for each item in the results
	for _, row in query:BrowseResultsIterator() do
		if row:HasItemInfo() then
			for _, subRow in row:SubRowIterator() do
				local itemString = subRow:GetItemString()
				if itemString then
					private.targetItem[itemString] = targetItemString
				end
			end
		end
	end
end

function private.OnQueryDone(_, query)
	private.ResultsUpdated(nil, query)
	private.targetItem[query] = nil
end

function private.GetMaxQuantityQuery(itemString)
	if not next(private.generalMaxQuantity) then
		return
	end

	-- find the query this item belongs to
	local itemQuery = nil
	for query, value in pairs(private.generalMaxQuantity) do
		local containsItem = false
		for _ in query:ItemSubRowIterator(itemString) do
			containsItem = true
		end
		if containsItem then
			-- resolve any potential redirection to the base query
			itemQuery = type(value) == "number" and query or value
			break
		end
	end
	if not itemQuery or not private.generalMaxQuantity[itemQuery] then
		return
	end
	return itemQuery
end
