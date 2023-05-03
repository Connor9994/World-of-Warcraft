-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local ScanManager = TSM.Init("Service.AuctionScanClasses.ScanManager") ---@class Service.AuctionScanClasses.ScanManager
local Environment = TSM.Include("Environment")
local L = TSM.Include("Locale").GetTable()
local TempTable = TSM.Include("Util.TempTable")
local Log = TSM.Include("Util.Log")
local ItemString = TSM.Include("Util.ItemString")
local Math = TSM.Include("Util.Math")
local ObjectPool = TSM.Include("Util.ObjectPool")
local AuctionHouseWrapper = TSM.Include("Service.AuctionHouseWrapper")
local Threading = TSM.Include("Service.Threading")
local ItemInfo = TSM.Include("Service.ItemInfo")
local Query = TSM.Include("Service.AuctionScanClasses.Query")
local QueryUtil = TSM.Include("Service.AuctionScanClasses.QueryUtil")
local AuctionScanManager = TSM.Include("LibTSMClass").DefineClass("AuctionScanManager")
local private = {
	objectPool = ObjectPool.New("AUCTION_SCAN_MANAGER", AuctionScanManager),
}
-- arbitrary estimate that finishing the browse request is worth 10% of the query's progress
local BROWSE_PROGRESS = 0.1



-- ============================================================================
-- Module Functions
-- ============================================================================

function ScanManager.Get()
	return private.objectPool:Get()
end



-- ============================================================================
-- Class Meta Methods
-- ============================================================================

function AuctionScanManager.__init(self)
	self._resolveSellers = nil
	self._ignoreItemLevel = nil
	self._queries = {}
	self._queriesScanned = 0
	self._queryDidBrowse = false
	self._onProgressUpdateHandler = nil
	self._onQueryDoneHandler = nil
	self._resultsUpdateCallbacks = {}
	self._nextSearchItemFunction = nil
	self._currentSearchChangedCallback = nil
	self._findResult = {}
	self._cancelled = false
	self._shouldPause = false
	self._paused = false
	self._scanQuery = nil
	self._findQuery = nil
	self._numItems = nil
	self._queryCallback = function(query, searchRow)
		for func in pairs(self._resultsUpdateCallbacks) do
			func(self, query, searchRow)
		end
	end
end

function AuctionScanManager._Release(self)
	self._resolveSellers = nil
	self._ignoreItemLevel = nil
	for _, query in ipairs(self._queries) do
		query:Release()
	end
	wipe(self._queries)
	self._queriesScanned = 0
	self._queryDidBrowse = false
	self._onProgressUpdateHandler = nil
	self._onQueryDoneHandler = nil
	wipe(self._resultsUpdateCallbacks)
	self._nextSearchItemFunction = nil
	self._currentSearchChangedCallback = nil
	self._cancelled = false
	self._shouldPause = false
	self._paused = false
	wipe(self._findResult)
	self._scanQuery = nil
	if self._findQuery then
		self._findQuery:Release()
		self._findQuery = nil
	end
	self._numItems = nil
end



-- ============================================================================
-- Public Class Methods
-- ============================================================================

function AuctionScanManager.Release(self)
	self:_Release()
	private.objectPool:Recycle(self)
end

function AuctionScanManager.SetResolveSellers(self, resolveSellers)
	self._resolveSellers = resolveSellers
	return self
end

function AuctionScanManager.SetIgnoreItemLevel(self, ignoreItemLevel)
	self._ignoreItemLevel = ignoreItemLevel
	return self
end

function AuctionScanManager.SetScript(self, script, handler)
	if script == "OnProgressUpdate" then
		self._onProgressUpdateHandler = handler
	elseif script == "OnQueryDone" then
		self._onQueryDoneHandler = handler
	elseif script == "OnCurrentSearchChanged" then
		self._currentSearchChangedCallback = handler
	else
		error("Unknown AuctionScanManager script: "..tostring(script))
	end
	return self
end

function AuctionScanManager.AddResultsUpdateCallback(self, func)
	self._resultsUpdateCallbacks[func] = true
end

function AuctionScanManager.RemoveResultsUpdateCallback(self, func)
	self._resultsUpdateCallbacks[func] = nil
end

function AuctionScanManager.SetNextSearchItemFunction(self, func)
	self._nextSearchItemFunction = func
end

function AuctionScanManager.GetNumQueries(self)
	return #self._queries
end

function AuctionScanManager.QueryIterator(self, offset)
	return private.QueryIteratorHelper, self._queries, offset or 0
end

function AuctionScanManager.NewQuery(self)
	local query = Query.Get()
	self:_AddQuery(query)
	return query
end

function AuctionScanManager.AddItemListQueriesThreaded(self, itemList)
	assert(Threading.IsThreadContext())
	-- remove duplicates
	local usedItems = TempTable.Acquire()
	for i = #itemList, 1, -1 do
		local itemString = itemList[i]
		if usedItems[itemString] then
			tremove(itemList, i)
		end
		usedItems[itemString] = true
	end
	TempTable.Release(usedItems)
	self._numItems = #itemList
	QueryUtil.GenerateThreaded(itemList, private.NewQueryCallback, self)
end

function AuctionScanManager.ScanQueriesThreaded(self)
	assert(Threading.IsThreadContext())
	self._queriesScanned = 0
	self._cancelled = false
	AuctionHouseWrapper.GetAndResetTotalHookedTime()
	self:_NotifyProgressUpdate()

	-- loop through each filter to perform
	local allSuccess = true
	while self._queriesScanned < #self._queries do
		local query = self._queries[self._queriesScanned + 1]
		-- run the browse query
		local querySuccess, numNewResults = self:_ProcessQuery(query)
		if not querySuccess then
			allSuccess = false
			break
		end
		self._queriesScanned = self._queriesScanned + 1
		self:_NotifyProgressUpdate()
		if self._onQueryDoneHandler then
			self:_onQueryDoneHandler(query, numNewResults)
		end
		self:_Pause()
	end

	if allSuccess then
		local hookedTime, topAddon, topTime = AuctionHouseWrapper.GetAndResetTotalHookedTime()
		if hookedTime > 1 and topAddon ~= "Blizzard_AuctionHouseUI" then
			Log.PrintfUser(L["Scan was slowed down by %s seconds by other AH addons (%s seconds by %s)."], Math.Round(hookedTime, 0.1), Math.Round(topTime, 0.1), topAddon)
		end
	end
	return allSuccess
end

function AuctionScanManager.FindAuctionThreaded(self, findSubRow, noSeller)
	assert(Threading.IsThreadContext())
	wipe(self._findResult)
	if Environment.IsRetail() then
		return self:_FindAuctionThreadedRetail(findSubRow)
	else
		return self:_FindAuctionThreadedClassic(findSubRow, noSeller)
	end
end

function AuctionScanManager.PrepareForBidOrBuyout(self, index, subRow, noSeller, quantity, itemBuyout)
	if Environment.IsRetail() then
		local itemString = subRow:GetItemString()
		if ItemInfo.IsCommodity(itemString) then
			local future = AuctionHouseWrapper.StartCommoditiesPurchase(ItemString.ToId(itemString), quantity, itemBuyout)
			if not future then
				return false
			end
			return true, future
		else
			return true
		end
	else
		return subRow:EqualsIndex(index, noSeller)
	end
end

function AuctionScanManager.PlaceBidOrBuyout(self, index, bidBuyout, subRow, quantity)
	if Environment.IsRetail() then
		local itemString = subRow:GetItemString()
		local future = nil
		if ItemInfo.IsCommodity(itemString) then
			local itemId = ItemString.ToId(itemString)
			future = AuctionHouseWrapper.ConfirmCommoditiesPurchase(itemId, quantity)
		else
			local _, auctionId = subRow:GetListingInfo()
			future = AuctionHouseWrapper.PlaceBid(auctionId, bidBuyout)
			quantity = 1
		end
		return future
	else
		return AuctionHouseWrapper.PlaceBid(index, bidBuyout)
	end
end

function AuctionScanManager.GetProgress(self)
	local numQueries = self:GetNumQueries()
	if self._queriesScanned == numQueries then
		return 1
	end
	local currentQuery = self._queries[self._queriesScanned + 1]
	local searchProgress = nil
	if self._queryDidBrowse and Environment.IsRetail() then
		searchProgress = currentQuery:GetSearchProgress() * (1 - BROWSE_PROGRESS) + BROWSE_PROGRESS
	else
		searchProgress = 0
	end
	local queryStep = 1 / numQueries
	local progress = min((self._queriesScanned + searchProgress) * queryStep, 1)
	return progress, self._paused
end

function AuctionScanManager.Cancel(self)
	self._cancelled = true
	if self._scanQuery then
		self._scanQuery:CancelBrowseOrSearch()
		self._scanQuery = nil
	end
end

function AuctionScanManager.SetPaused(self, paused)
	self._shouldPause = paused
	if self._scanQuery then
		self._scanQuery:CancelBrowseOrSearch()
		self._scanQuery = nil
	end
end

function AuctionScanManager.GetNumItems(self)
	return self._numItems
end



-- ============================================================================
-- Private Class Methods
-- ============================================================================

function AuctionScanManager._AddQuery(self, query)
	query:SetResolveSellers(self._resolveSellers)
	query:SetCallback(self._queryCallback)
	tinsert(self._queries, query)
end

function AuctionScanManager._IsCancelled(self)
	return self._cancelled
end

function AuctionScanManager._Pause(self)
	if not self._shouldPause then
		return
	end
	self._paused = true
	self:_NotifyProgressUpdate()
	if self._currentSearchChangedCallback then
		self:_currentSearchChangedCallback()
	end
	while self._shouldPause do
		Threading.Yield(true)
	end
	self._paused = false
	self:_NotifyProgressUpdate()
	if self._currentSearchChangedCallback then
		self:_currentSearchChangedCallback()
	end
end

function AuctionScanManager._NotifyProgressUpdate(self)
	if self._onProgressUpdateHandler then
		self:_onProgressUpdateHandler()
	end
end

function AuctionScanManager._ProcessQuery(self, query)
	local prevMaxBrowseId = 0
	if not Environment.IsRetail() then
		for _, row in query:BrowseResultsIterator() do
			prevMaxBrowseId = max(prevMaxBrowseId, row:GetMinBrowseId())
		end
	end

	-- run the browse query
	self._queryDidBrowse = false
	while not self:_DoBrowse(query) do
		if self._shouldPause then
			-- this browse failed due to a pause request, so try again after we're resumed
			self:_Pause()
			-- wipe the browse results since we're going to do another search
			query:WipeBrowseResults()
		else
			return false, 0
		end
	end
	self._queryDidBrowse = true
	self:_NotifyProgressUpdate()

	local numNewResults = 0
	if not Environment.IsRetail() then
		for _, row in query:BrowseResultsIterator() do
			if row:GetMinBrowseId() > prevMaxBrowseId then
				numNewResults = numNewResults + row:GetNumSubRows()
			end
		end
		return true, numNewResults
	end

	local rows = Threading.AcquireSafeTempTable()
	for baseItemString, row in query:BrowseResultsIterator() do
		rows[baseItemString] = row
	end
	while true do
		local baseItemString, row = nil, nil
		if self._nextSearchItemFunction then
			baseItemString = self._nextSearchItemFunction()
			row = baseItemString and rows[baseItemString]
		end
		if not row then
			baseItemString, row = next(rows)
		end
		if not row then
			break
		end
		rows[baseItemString] = nil
		if self._currentSearchChangedCallback then
			self:_currentSearchChangedCallback(baseItemString)
		end
		-- store all the existing auctionIds so we can see what changed
		local prevAuctionIds = Threading.AcquireSafeTempTable()
		for _, subRow in row:SubRowIterator() do
			local _, auctionId = subRow:GetListingInfo()
			assert(not prevAuctionIds[auctionId])
			prevAuctionIds[auctionId] = true
		end
		-- send the query for this item
		while not self:_DoSearch(query, row) do
			if self._shouldPause then
				-- this search failed due to a pause request, so try again after we're resumed
				self:_Pause()
				-- wipe the search results since we're going to do another search
				row:WipeSearchResults()
			else
				Threading.ReleaseSafeTempTable(prevAuctionIds)
				Threading.ReleaseSafeTempTable(rows)
				return false, numNewResults
			end
		end

		local numSubRows = row:GetNumSubRows()
		for _, subRow in row:SubRowIterator() do
			local _, auctionId = subRow:GetListingInfo()
			if not prevAuctionIds[auctionId] then
				numNewResults = numNewResults + 1
			end
		end
		Threading.ReleaseSafeTempTable(prevAuctionIds)
		if numSubRows == 0 then
			-- remove this row since there are no search results
			query:RemoveResultRow(row)
		end

		self:_NotifyProgressUpdate()
		self:_Pause()
		Threading.Yield()
	end
	Threading.ReleaseSafeTempTable(rows)
	return true, numNewResults
end

function AuctionScanManager._DoBrowse(self, query, ...)
	return self:_DoBrowseSearchHelper(query, query:Browse(...))
end

function AuctionScanManager._DoSearch(self, query, ...)
	return self:_DoBrowseSearchHelper(query, query:Search(...))
end

function AuctionScanManager._DoBrowseSearchHelper(self, query, future)
	if not future then
		return false
	end
	self._scanQuery = query
	local result = Threading.WaitForFuture(future)
	self._scanQuery = nil
	Threading.Yield()
	return result
end

function AuctionScanManager._FindAuctionThreadedClassic(self, row, noSeller)
	self._cancelled = false
	-- make sure we're not in the middle of a query where the results are going to change on us
	Threading.WaitForFunction(CanSendAuctionQuery)

	-- search the current page for the auction
	if self:_FindAuctionOnCurrentPage(row, noSeller) then
		Log.Info("Found on current page")
		return self._findResult
	end

	-- search for the item
	local page, maxPage = 0, nil
	while true do
		-- query the AH
		if self._findQuery then
			self._findQuery:Release()
		end
		local itemString = row:GetItemString()
		local level = ItemInfo.GetMinLevel(itemString)
		local quality = ItemInfo.GetQuality(itemString)
		assert(level and quality)
		self._findQuery = Query.Get()
			:SetStr(ItemInfo.GetName(itemString), true)
			:SetQualityRange(quality, quality)
			:SetLevelRange(level, level)
			:SetClass(ItemInfo.GetClassId(itemString), ItemInfo.GetSubClassId(itemString))
			:SetItems(itemString)
			:SetResolveSellers(not noSeller)
			:SetPage(page)
		local filterSuccess = self:_DoBrowse(self._findQuery)
		if self._findQuery then
			self._findQuery:Release()
			self._findQuery = nil
		end
		if not filterSuccess then
			break
		end
		-- search this page for the row
		if self:_FindAuctionOnCurrentPage(row, noSeller) then
			Log.Info("Found auction (%d)", page)
			return self._findResult
		elseif self:_IsCancelled() then
			break
		end

		local numPages = AuctionHouseWrapper.GetNumPages()
		local canBeLater = private.FindAuctionCanBeOnLaterPage(row)
		maxPage = maxPage or numPages - 1
		if not canBeLater and page < maxPage then
			maxPage = page
		end
		if canBeLater and page < maxPage then
			Log.Info("Trying next page (%d)", page + 1)
			page = page + 1
		else
			return
		end
	end
end

function AuctionScanManager._FindAuctionOnCurrentPage(self, subRow, noSeller)
	local found = false
	for i = 1, AuctionHouseWrapper.GetNumAuctions() do
		if subRow:EqualsIndex(i, noSeller) then
			tinsert(self._findResult, i)
			found = true
		end
	end
	return found
end

function AuctionScanManager._FindAuctionThreadedRetail(self, findSubRow)
	assert(findSubRow:IsSubRow())
	self._cancelled = false

	local row = findSubRow:GetResultRow()
	local findHash, findHashNoSeller = findSubRow:GetHashes()

	if not self:_DoSearch(row:GetQuery(), row, false) then
		return nil
	end
	local result = nil
	-- first try to find a subRow with a full matching hash
	for _, subRow in row:SubRowIterator() do
		local quantity, numAuctions = subRow:GetQuantities()
		local hash = subRow:GetHashes()
		if hash == findHash then
			result = (result or 0) + quantity * numAuctions
		end
	end
	if result then
		return result
	end
	-- next try to find the first subRow with a matching no-seller hash
	local firstHash = nil
	for _, subRow in row:SubRowIterator() do
		local quantity, numAuctions = subRow:GetQuantities()
		local hash, hashNoSeller = subRow:GetHashes()
		if (not firstHash or hash == firstHash) and hashNoSeller == findHashNoSeller then
			firstHash = hash
			result = (result or 0) + quantity * numAuctions
		end
	end
	return result
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.NewQueryCallback(query, self)
	self:_AddQuery(query)
end

function private.FindAuctionCanBeOnLaterPage(row)
	local pageAuctions = AuctionHouseWrapper.GetNumAuctions()
	if pageAuctions == 0 then
		-- there are no auctions on this page, so it cannot be on a later one
		return false
	end
	local _, _, stackSize, _, _, _, _, _, _, buyout, _, _, _, seller, sellerFull = GetAuctionItemInfo("list", pageAuctions)

	local itemBuyout = (buyout > 0) and floor(buyout / stackSize) or 0
	local _, rowItemBuyout = row:GetBuyouts()
	if rowItemBuyout > itemBuyout then
		-- item must be on a later page since it would be sorted after the last auction on this page
		return true
	elseif rowItemBuyout < itemBuyout then
		-- item cannot be on a later page since it would be sorted before the last auction on this page
		return false
	end

	local rowStackSize = row:GetQuantities()
	if rowStackSize > stackSize then
		-- item must be on a later page since it would be sorted after the last auction on this page
		return true
	elseif rowStackSize < stackSize then
		-- item cannot be on a later page since it would be sorted before the last auction on this page
		return false
	end

	seller = private.FixSellerName(seller, sellerFull) or "?"
	local rowSeller = row:GetOwnerInfo()
	if rowSeller > seller then
		-- item must be on a later page since it would be sorted after the last auction on this page
		return true
	elseif rowSeller < seller then
		-- item cannot be on a later page since it would be sorted before the last auction on this page
		return false
	end

	-- all the things we are sorting on are the same, so the auction could be on a later page
	return true
end

function private.FixSellerName(seller, sellerFull)
	local realm = GetRealmName()
	if sellerFull and strjoin("-", seller, realm) ~= sellerFull then
		return sellerFull
	else
		return seller
	end
end

function private.QueryIteratorHelper(tbl, index)
	index = index + 1
	if index > #tbl then
		return
	end
	return index, tbl[index]
end
