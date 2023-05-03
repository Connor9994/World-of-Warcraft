-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Scanner = TSM.Init("Service.AuctionScanClasses.Scanner") ---@class Service.AuctionScanClasses.Scanner
local Environment = TSM.Include("Environment")
local Delay = TSM.Include("Util.Delay")
local FSM = TSM.Include("Util.FSM")
local Future = TSM.Include("Util.Future")
local Log = TSM.Include("Util.Log")
local ItemString = TSM.Include("Util.ItemString")
local Event = TSM.Include("Util.Event")
local DefaultUI = TSM.Include("Service.DefaultUI")
local ItemInfo = TSM.Include("Service.ItemInfo")
local AuctionHouseWrapper = TSM.Include("Service.AuctionHouseWrapper")
local Util = TSM.Include("Service.AuctionScanClasses.Util")
local ResultRow = TSM.Include("Service.AuctionScanClasses.ResultRow")
local private = {
	resolveSellers = nil,
	pendingFuture = nil,
	query = nil,
	browseResults = nil,
	callback = nil,
	browseId = 1,
	browseIsNoScan = false,
	browseIndex = 1,
	browsePendingIndexes = {},
	searchRow = nil,
	useCachedData = nil,
	retryCount = 0,
	requestFuture = Future.New("AUCTION_SCANNER_FUTURE"),
	requestResult = nil,
	fsm = nil,
	retryTimer = nil,
	doneTimer = nil,
}



-- ============================================================================
-- Module Loading
-- ============================================================================

Scanner:OnModuleLoad(function()
	private.retryTimer = Delay.CreateTimer("AUCTION_SCANNER_RETRY", private.RetryHandler)
	private.doneTimer = Delay.CreateTimer("AUCTION_SCANNER_DONE", private.RequestDoneHandler)
	private.requestFuture:SetScript("OnCleanup", function()
		private.doneTimer:Cancel()
		private.fsm:ProcessEvent("EV_CANCEL")
	end)

	if Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE) then
		Event.Register("COMMODITY_SEARCH_RESULTS_UPDATED", function()
			private.fsm:ProcessEvent("EV_SEARCH_RESULTS_UPDATED")
		end)
		Event.Register("ITEM_SEARCH_RESULTS_UPDATED", function()
			private.fsm:ProcessEvent("EV_SEARCH_RESULTS_UPDATED")
		end)
	else
		Event.Register("AUCTION_ITEM_LIST_UPDATE", function()
			private.fsm:SetLoggingEnabled(false)
			private.fsm:ProcessEvent("EV_BROWSE_RESULTS_UPDATED")
			private.fsm:SetLoggingEnabled(true)
		end)
	end

	private.fsm = FSM.New("AUCTION_SCANNER_FSM")
		:AddState(FSM.NewState("ST_INIT")
			:SetOnEnter(function()
				private.query = nil
				private.resolveSellers = nil
				private.useCachedData = nil
				private.searchRow = nil
				private.callback = nil
				private.retryCount = 0
				private.retryTimer:Cancel()
				if private.pendingFuture then
					private.pendingFuture:Cancel()
					private.pendingFuture = nil
				end
			end)
			:AddTransition("ST_BROWSE_SORT")
			:AddTransition("ST_BROWSE_CHECKING")
			:AddTransition("ST_SEARCH_GET_KEY")
			:AddEvent("EV_START_BROWSE", function(_, query, resolveSellers, browseResults, callback)
				assert(not private.query)
				private.query = query
				private.resolveSellers = resolveSellers
				private.browseResults = browseResults
				private.browseId = private.browseId + 1
				private.browseIsNoScan = false
				private.callback = callback
				return "ST_BROWSE_SORT"
			end)
			:AddEvent("EV_START_BROWSE_NO_SCAN", function(_, query, itemKeys, browseResults, callback)
				assert(Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE))
				assert(not private.query)
				private.query = query
				private.browseResults = browseResults
				private.browseId = private.browseId + 1
				private.browseIsNoScan = true
				private.callback = callback
				for _, itemKey in ipairs(itemKeys) do
					local baseItemString = ItemString.GetBaseFromItemKey(itemKey)
					private.ProcessBrowseResult(baseItemString, itemKey)
				end
				return "ST_BROWSE_CHECKING"
			end)
			:AddEvent("EV_START_SEARCH", function(_, query, resolveSellers, useCachedData, searchRow, callback)
				assert(Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE))
				assert(not private.query)
				private.query = query
				private.resolveSellers = resolveSellers
				private.useCachedData = useCachedData
				private.searchRow = searchRow
				private.callback = callback
				private.searchRow:SearchReset()
				return "ST_SEARCH_GET_KEY"
			end)
		)
		:AddState(FSM.NewState("ST_BROWSE_SORT")
			:SetOnEnter(function()
				if not private.query:_SetSort() then
					private.retryTimer:RunForTime(0.5)
					return
				end
				return "ST_BROWSE_SEND"
			end)
			:AddTransition("ST_BROWSE_SORT")
			:AddTransition("ST_BROWSE_SEND")
			:AddTransition("ST_CANCELING")
			:AddEventTransition("EV_RETRY", "ST_BROWSE_SORT")
			:AddEventTransition("EV_CANCEL", "ST_CANCELING")
		)
		:AddState(FSM.NewState("ST_BROWSE_SEND")
			:SetOnEnter(function()
				private.HandleAuctionHouseWrapperResult(private.query:_SendWowQuery())
			end)
			:AddTransition("ST_BROWSE_SEND")
			:AddTransition("ST_BROWSE_CHECKING")
			:AddTransition("ST_CANCELING")
			:AddEvent("EV_FUTURE_SUCCESS", function()
				if Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE) then
					for _, result in ipairs(C_AuctionHouse.GetBrowseResults()) do
						local baseItemString = ItemString.GetBaseFromItemKey(result.itemKey)
						private.ProcessBrowseResult(baseItemString, result.itemKey, result.minPrice, result.totalQuantity)
					end
				else
					private.browseIndex = 1
					wipe(private.browsePendingIndexes)
				end
				return "ST_BROWSE_CHECKING"
			end)
			:AddEventTransition("EV_RETRY", "ST_BROWSE_SEND")
			:AddEventTransition("EV_CANCEL", "ST_CANCELING")
		)
		:AddState(FSM.NewState("ST_BROWSE_CHECKING")
			:SetOnEnter(function()
				if not private.query:_BrowseIsPageValid() then
					-- this page isn't valid, so go to the next page
					return "ST_BROWSE_REQUEST_MORE"
				elseif not private.CheckBrowseResults() then
					-- result's aren't valid yet, so check again
					private.retryTimer:RunForTime(1)
					return
				end
				-- we're done with this set of browse results
				if private.callback then
					private.callback(private.query)
				end
				if private.browseIsNoScan or private.query:_BrowseIsDone() then
					-- we're done
					return "ST_BROWSE_DONE"
				else
					-- move on to the next page
					return "ST_BROWSE_REQUEST_MORE"
				end
			end)
			:AddTransition("ST_BROWSE_CHECKING")
			:AddTransition("ST_BROWSE_DONE")
			:AddTransition("ST_BROWSE_REQUEST_MORE")
			:AddTransition("ST_CANCELING")
			:AddEventTransition("EV_RETRY", "ST_BROWSE_CHECKING")
			:AddEventTransition("EV_BROWSE_RESULTS_UPDATED", "ST_BROWSE_CHECKING")
			:AddEventTransition("EV_CANCEL", "ST_CANCELING")
		)
		:AddState(FSM.NewState("ST_BROWSE_REQUEST_MORE")
			:SetOnEnter(function(_, isRetry)
				if private.query:_BrowseIsDone(isRetry) then
					return "ST_BROWSE_CHECKING"
				else
					private.HandleAuctionHouseWrapperResult(private.query:_BrowseRequestMore(isRetry))
				end
			end)
			:AddTransition("ST_BROWSE_REQUEST_MORE")
			:AddTransition("ST_BROWSE_CHECKING")
			:AddTransition("ST_CANCELING")
			:AddEvent("EV_FUTURE_SUCCESS", function(_, ...)
				if Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE) then
					local newResults = ...
					for _, result in ipairs(newResults) do
						local baseItemString = ItemString.GetBaseFromItemKey(result.itemKey)
						private.ProcessBrowseResult(baseItemString, result.itemKey, result.minPrice, result.totalQuantity)
					end
				else
					private.browseIndex = 1
					wipe(private.browsePendingIndexes)
				end
				return "ST_BROWSE_CHECKING"
			end)
			:AddEvent("EV_RETRY", function()
				return "ST_BROWSE_REQUEST_MORE", true
			end)
			:AddEventTransition("EV_CANCEL", "ST_CANCELING")
		)
		:AddState(FSM.NewState("ST_BROWSE_DONE")
			:SetOnEnter(function()
				private.HandleRequestDone(true)
				return "ST_INIT"
			end)
			:AddTransition("ST_INIT")
		)
		:AddState(FSM.NewState("ST_SEARCH_GET_KEY")
			:SetOnEnter(function()
				assert(Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE))
				if not private.searchRow:SearchIsReady() then
					private.retryTimer:RunForTime(0.1)
					return
				end
				return "ST_SEARCH_SEND"
			end)
			:AddTransition("ST_SEARCH_GET_KEY")
			:AddTransition("ST_SEARCH_SEND")
			:AddTransition("ST_CANCELING")
			:AddEventTransition("EV_FUTURE_SUCCESS", "ST_SEARCH_SEND")
			:AddEventTransition("EV_RETRY", "ST_SEARCH_GET_KEY")
			:AddEventTransition("EV_CANCEL", "ST_CANCELING")
		)
		:AddState(FSM.NewState("ST_SEARCH_SEND")
			:SetOnEnter(function()
				assert(Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE))
				if not DefaultUI.IsAuctionHouseVisible() then
					return "ST_CANCELING"
				end
				if private.useCachedData and private.searchRow:HasCachedSearchData() then
					return "ST_SEARCH_REQUEST_MORE"
				end
				local future, delayTime = private.searchRow:SearchSend()
				if future then
					private.HandleAuctionHouseWrapperResult(future)
				else
					if not delayTime then
						Log.Err("Failed to send search query - retrying")
						delayTime = 0.5
					end
					-- try again after a delay
					private.retryTimer:RunForTime(delayTime)
				end
			end)
			:AddTransition("ST_SEARCH_SEND")
			:AddTransition("ST_SEARCH_REQUEST_MORE")
			:AddTransition("ST_CANCELING")
			:AddEventTransition("EV_FUTURE_SUCCESS", "ST_SEARCH_REQUEST_MORE")
			:AddEventTransition("EV_RETRY", "ST_SEARCH_SEND")
			:AddEventTransition("EV_CANCEL", "ST_CANCELING")
		)
		:AddState(FSM.NewState("ST_SEARCH_REQUEST_MORE")
			:SetOnEnter(function()
				assert(Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE))
				local baseItemString = private.searchRow:GetBaseItemString()
				-- get if the item is a commodity or not
				local isCommodity = ItemInfo.IsCommodity(baseItemString)
				if isCommodity == nil then
					private.retryTimer:RunForTime(0.1)
					return
				end

				local isDone, future = private.searchRow:SearchCheckStatus()
				if isDone then
					return "ST_SEARCH_CHECKING"
				elseif future then
					private.HandleAuctionHouseWrapperResult(future)
				else
					private.retryTimer:RunForTime(0.5)
				end
			end)
			:AddTransition("ST_SEARCH_SEND")
			:AddTransition("ST_SEARCH_CHECKING")
			:AddTransition("ST_CANCELING")
			:AddEventTransition("EV_FUTURE_SUCCESS", "ST_SEARCH_CHECKING")
			:AddEventTransition("EV_RETRY", "ST_SEARCH_SEND")
			:AddEventTransition("EV_CANCEL", "ST_CANCELING")
		)
		:AddState(FSM.NewState("ST_SEARCH_CHECKING")
			:SetOnEnter(function()
				assert(Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE))
				private.retryTimer:Cancel()
				private.searchRow:PopulateSubRows(private.browseId)

				-- check if all the sub rows have their data
				local missingInfo = false
				for _, subRow in private.searchRow:SubRowIterator(true) do
					if not subRow:HasRawData() or not subRow:HasItemString() then
						missingInfo = true
					elseif private.resolveSellers and not subRow:HasOwners() and not private.query:_IsFiltered(subRow, true) then
						-- Waiting for owner info
						-- Currently can't rely on owner info as of 9.2.7, so limit the retries for it
						if not Environment.IsRetail() or private.retryCount <= 10 then
							missingInfo = true
						end
					end
				end

				if missingInfo and private.retryCount >= 100 then
					-- Out of retries, so give up
					return "ST_SEARCH_DONE", false
				elseif missingInfo then
					-- We'll try again
					private.retryCount = private.retryCount + 1
					private.retryTimer:RunForTime(0.5)
					return
				end

				-- Filter the sub rows we don't care about
				private.searchRow:FilterSubRows(private.query)

				if private.callback then
					private.callback(private.query, private.searchRow)
				end
				if private.searchRow:SearchNext() then
					-- there is more to search
					return "ST_SEARCH_GET_KEY"
				else
					-- scanned everything
					return "ST_SEARCH_DONE", true
				end
			end)
			:AddTransition("ST_SEARCH_GET_KEY")
			:AddTransition("ST_SEARCH_CHECKING")
			:AddTransition("ST_SEARCH_DONE")
			:AddTransition("ST_CANCELING")
			:AddEventTransition("EV_RETRY", "ST_SEARCH_CHECKING")
			:AddEventTransition("EV_SEARCH_RESULTS_UPDATED", "ST_SEARCH_CHECKING")
			:AddEventTransition("EV_CANCEL", "ST_CANCELING")
		)
		:AddState(FSM.NewState("ST_SEARCH_DONE")
			:SetOnEnter(function(_, result)
				assert(Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE))
				private.HandleRequestDone(result)
				return "ST_INIT"
			end)
			:AddTransition("ST_INIT")
		)
		:AddState(FSM.NewState("ST_CANCELING")
			:SetOnEnter(function()
				private.doneTimer:Cancel()
				return "ST_INIT"
			end)
			:AddTransition("ST_INIT")
		)
		:Init("ST_INIT", nil)
end)



-- ============================================================================
-- Module Functions
-- ============================================================================

function Scanner.Browse(query, resolveSellers, results, callback)
	private.requestFuture:Start()
	private.fsm:ProcessEvent("EV_START_BROWSE", query, resolveSellers, results, callback)
	return private.requestFuture
end

function Scanner.BrowseNoScan(query, itemKeys, results, callback)
	assert(Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE))
	private.requestFuture:Start()
	private.fsm:ProcessEvent("EV_START_BROWSE_NO_SCAN", query, itemKeys, results, callback)
	return private.requestFuture
end

function Scanner.Search(query, resolveSellers, useCachedData, browseRow, callback)
	assert(Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE))
	private.requestFuture:Start()
	private.fsm:ProcessEvent("EV_START_SEARCH", query, resolveSellers, useCachedData, browseRow, callback)
	return private.requestFuture
end

function Scanner.Cancel()
	private.requestFuture:Done(false)
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.ProcessBrowseResult(baseItemString, ...)
	if private.browseResults[baseItemString] then
		private.browseResults[baseItemString]:Merge(...)
	else
		private.browseResults[baseItemString] = ResultRow.Get(private.query, ...)
	end
	return private.browseResults[baseItemString]
end

function private.PendingFutureDoneHandler()
	local result = private.pendingFuture:GetValue()
	private.pendingFuture = nil
	if result then
		private.fsm:ProcessEvent("EV_FUTURE_SUCCESS", result)
	else
		private.retryTimer:RunForTime(0.1)
	end
end

function private.RetryHandler()
	private.fsm:SetLoggingEnabled(false)
	private.fsm:ProcessEvent("EV_RETRY")
	private.fsm:SetLoggingEnabled(true)
end

function private.RequestDoneHandler()
	local result = private.requestResult
	private.requestResult = nil
	private.requestFuture:Done(result)
end

function private.HandleAuctionHouseWrapperResult(future)
	if future then
		private.pendingFuture = future
		private.pendingFuture:SetScript("OnDone", private.PendingFutureDoneHandler)
	else
		private.retryTimer:RunForTime(0.1)
	end
end

function private.HandleRequestDone(result)
	private.requestResult = result
	-- delay a bit so that we complete our current FSM transition
	private.doneTimer:RunForTime(0)
end

function private.CheckBrowseResults()
	if not Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE) then
		-- process as many auctions as we can
		local numAuctions = AuctionHouseWrapper.GetNumAuctions()
		for i = #private.browsePendingIndexes, 1, -1 do
			local index = private.browsePendingIndexes[i]
			if private.ProcessBrowseResultClassic(index) then
				tremove(private.browsePendingIndexes, i)
			end
		end
		local index = private.browseIndex
		while index <= numAuctions and #private.browsePendingIndexes < 50 do
			if not private.ProcessBrowseResultClassic(index) then
				tinsert(private.browsePendingIndexes, index)
			end
			index = index + 1
		end
		private.browseIndex = index
		if private.browseIndex <= numAuctions or #private.browsePendingIndexes > 0 then
			return false
		end
	end

	-- check if there's data still pending
	local hasPendingData = false
	for _, row in pairs(private.browseResults) do
		if not row:PopulateBrowseData() then
			hasPendingData = true
			-- keep going so we issue requests for all pending rows
		end
	end
	if hasPendingData then
		return false
	end

	-- filter the results
	local numRemoved = 0
	for baseItemString, row in pairs(private.browseResults) do
		-- filter the itemKeys we don't care about and rows which don't match the query
		if row:IsFiltered(private.query) then
			private.browseResults[baseItemString] = nil
			numRemoved = numRemoved + 1
		end
		if not Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE) and row:FilterSubRows(private.query) then
			-- no more subRows, so filter the entire row
			private.browseResults[baseItemString] = nil
			numRemoved = numRemoved + 1
		end
	end
	if numRemoved > 0 then
		Log.Info("Removed %d results", numRemoved)
	end

	return true
end

function private.ProcessBrowseResultClassic(index)
	local rawName, _, stackSize, _, _, _, _, _, _, buyout, _, _, _, seller, sellerFull = GetAuctionItemInfo("list", index)
	local itemLink = GetAuctionItemLink("list", index)
	local baseItemString = ItemString.GetBase(itemLink)
	local timeLeft = GetAuctionItemTimeLeft("list", index)
	seller = Util.FixSellerName(seller, sellerFull)
	if not rawName or rawName == "" or not baseItemString or not buyout or not stackSize or not timeLeft or (not seller and private.resolveSellers) then
		return false
	end
	local row = private.ProcessBrowseResult(baseItemString, itemLink)
	-- amazingly, GetAuctionItemLink could return nil the next time it's called (within the same frame), so pass through our itemLink
	row:PopulateSubRows(private.browseId, index, itemLink)
	return true
end
