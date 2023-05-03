-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local AuctionHouseWrapper = TSM.Init("Service.AuctionHouseWrapper") ---@class Service.AuctionHouseWrapper
local Environment = TSM.Include("Environment")
local LibTSMClass = TSM.Include("LibTSMClass")
local Container = TSM.Include("Util.Container")
local Log = TSM.Include("Util.Log")
local Delay = TSM.Include("Util.Delay")
local Event = TSM.Include("Util.Event")
local Table = TSM.Include("Util.Table")
local Future = TSM.Include("Util.Future")
local Vararg = TSM.Include("Util.Vararg")
local Analytics = TSM.Include("Util.Analytics")
local Math = TSM.Include("Util.Math")
local Debug = TSM.Include("Util.Debug")
local DefaultUI = TSM.Include("Service.DefaultUI")
local APIWrapper = LibTSMClass.DefineClass("APIWrapper")
local private = {
	wrappers = {},
	events = {},
	argsTemp = {},
	sortsPartsTemp = {},
	itemKeyPartsTemp = {},
	searchQueryAPITimes = {},
	lastResponseReceived = 0,
	hookedTime = {},
	lastAuctionCanceledAuctionId = nil,
	lastAuctionCanceledTime = 0,
	auctionIdUpdateCallbacks = {},
	canSendAuctionQueryTimer = nil,
	canSendAuctionQueryValue = true,
	canSendAuctionQueryCallbacks = {},
	analyticsRegionRealm = nil,
}
local API_TIMEOUT = 5
local GET_ALL_TIMEOUT = 30
local SEARCH_QUERY_THROTTLE_INTERVAL = 60
local SEARCH_QUERY_THROTTLE_MAX = 100
local EMPTY_SORTS_TABLE = {}
local ITEM_KEY_KEYS = {
	"itemID",
	"itemLevel",
	"itemSuffix",
	"battlePetSpeciesID",
}
local SILENT_EVENTS = {
	AUCTION_ITEM_LIST_UPDATE = true,
	REPLICATE_ITEM_LIST_UPDATE = true,
}
local GENERIC_EVENTS = {
	CHAT_MSG_SYSTEM = 1,
	UI_ERROR_MESSAGE = Environment.IsRetail() and 2 or 1,
}
local GENERIC_EVENT_SEP = "/"
local API_EVENT_INFO = not Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE) and
	{ -- Classic
		QueryAuctionItems = {
			AUCTION_ITEM_LIST_UPDATE = { result = true },
		},
		PlaceAuctionBid = {
			["CHAT_MSG_SYSTEM"..GENERIC_EVENT_SEP..ERR_AUCTION_BID_PLACED] = { result = true },
			["UI_ERROR_MESSAGE"..GENERIC_EVENT_SEP..LE_GAME_ERR_AUCTION_DATABASE_ERROR] = { result = false },
			["UI_ERROR_MESSAGE"..GENERIC_EVENT_SEP..LE_GAME_ERR_AUCTION_HIGHER_BID] = { result = false },
			["UI_ERROR_MESSAGE"..GENERIC_EVENT_SEP..LE_GAME_ERR_ITEM_NOT_FOUND] = { result = false },
			["UI_ERROR_MESSAGE"..GENERIC_EVENT_SEP..LE_GAME_ERR_AUCTION_BID_OWN] = { result = false },
			["UI_ERROR_MESSAGE"..GENERIC_EVENT_SEP..LE_GAME_ERR_NOT_ENOUGH_MONEY] = { result = false },
			["UI_ERROR_MESSAGE"..GENERIC_EVENT_SEP..LE_GAME_ERR_ITEM_MAX_COUNT] = { result = false },
		},
		CancelAuction = {
			["CHAT_MSG_SYSTEM"..GENERIC_EVENT_SEP..ERR_AUCTION_REMOVED] = { result = true },
			["UI_ERROR_MESSAGE"..GENERIC_EVENT_SEP..LE_GAME_ERR_AUCTION_DATABASE_ERROR] = { result = false },
			["UI_ERROR_MESSAGE"..GENERIC_EVENT_SEP..LE_GAME_ERR_ITEM_NOT_FOUND] = { result = false },
		},
		PostAuction = {
			["CHAT_MSG_SYSTEM"..GENERIC_EVENT_SEP..ERR_AUCTION_STARTED] = { result = true },
			["UI_ERROR_MESSAGE"..GENERIC_EVENT_SEP..LE_GAME_ERR_AUCTION_DATABASE_ERROR] = { result = false },
			["UI_ERROR_MESSAGE"..GENERIC_EVENT_SEP..LE_GAME_ERR_ITEM_NOT_FOUND] = { result = false },
			-- TODO: Somehow convey that we can't retry these
			["UI_ERROR_MESSAGE"..GENERIC_EVENT_SEP..ERR_AUCTION_REPAIR_ITEM] = { result = false },
			["UI_ERROR_MESSAGE"..GENERIC_EVENT_SEP..ERR_AUCTION_LIMITED_DURATION_ITEM] = { result = false },
			["UI_ERROR_MESSAGE"..GENERIC_EVENT_SEP..ERR_AUCTION_USED_CHARGES] = { result = false },
			["UI_ERROR_MESSAGE"..GENERIC_EVENT_SEP..ERR_AUCTION_WRAPPED_ITEM] = { result = false },
			["UI_ERROR_MESSAGE"..GENERIC_EVENT_SEP..ERR_AUCTION_BAG] = { result = false },
			["UI_ERROR_MESSAGE"..GENERIC_EVENT_SEP..ERR_NOT_ENOUGH_MONEY] = { result = false },
		}
	} or
	{ -- Retail
		SendBrowseQuery = {
			AUCTION_HOUSE_BROWSE_RESULTS_UPDATED = { result = true },
		},
		SearchForFavorites = {
			AUCTION_HOUSE_BROWSE_RESULTS_UPDATED = { result = true },
		},
		SearchForItemKeys = {
			AUCTION_HOUSE_BROWSE_RESULTS_UPDATED = { result = true },
		},
		ReplicateItems = {
			REPLICATE_ITEM_LIST_UPDATE = { result = true },
		},
		RequestMoreBrowseResults = {
			AUCTION_HOUSE_BROWSE_RESULTS_ADDED = { result = 1 },
			["UI_ERROR_MESSAGE"..GENERIC_EVENT_SEP..ERR_AUCTION_DATABASE_ERROR] = { timeoutChange = 1 },
		},
		SendSearchQuery = {
			COMMODITY_SEARCH_RESULTS_UPDATED = { result = true, eventArgIndex = 1, apiArgIndex = 1, apiArgKey = "itemID" },
			ITEM_SEARCH_RESULTS_UPDATED = { result = true, eventArgIndex = 1, apiArgIndex = 1 },
			["UI_ERROR_MESSAGE"..GENERIC_EVENT_SEP..ERR_AUCTION_DATABASE_ERROR] = { timeoutChange = 1 },
		},
		SendSellSearchQuery = {
			COMMODITY_SEARCH_RESULTS_UPDATED = { result = true, eventArgIndex = 1, apiArgIndex = 1, apiArgKey = "itemID" },
			ITEM_SEARCH_RESULTS_UPDATED = { result = true, eventArgIndex = 1, apiArgIndex = 1 },
			["UI_ERROR_MESSAGE"..GENERIC_EVENT_SEP..ERR_AUCTION_DATABASE_ERROR] = { timeoutChange = 1 },
		},
		RequestMoreCommoditySearchResults = {
			COMMODITY_SEARCH_RESULTS_ADDED = { result = true },
		},
		RequestMoreItemSearchResults = {
			ITEM_SEARCH_RESULTS_ADDED = { result = true },
		},
		RefreshCommoditySearchResults = {
			COMMODITY_SEARCH_RESULTS_UPDATED = { result = true },
		},
		RefreshItemSearchResults = {
			ITEM_SEARCH_RESULTS_UPDATED = { result = true },
		},
		QueryOwnedAuctions = {
			OWNED_AUCTIONS_UPDATED = { result = true },
		},
		QueryBids = {
			BIDS_UPDATED = { result = true },
		},
		CancelAuction = {
			AUCTION_CANCELED = { result = true, eventArgIndex = 1, apiArgIndex = 1, compareFunc = function(eventArg, apiArg) return eventArg == 0 or apiArg == eventArg end },
			["UI_ERROR_MESSAGE"..GENERIC_EVENT_SEP..ERR_ITEM_NOT_FOUND] = { result = false },
			["UI_ERROR_MESSAGE"..GENERIC_EVENT_SEP..ERR_NOT_ENOUGH_MONEY] = { result = false },
			["UI_ERROR_MESSAGE"..GENERIC_EVENT_SEP..ERR_AUCTION_DATABASE_ERROR] = { result = false },
		},
		StartCommoditiesPurchase = {
			COMMODITY_PRICE_UPDATED = { result = 2, rawFilterFunc = function(apiArgs, unitPrice, totalPrice) return Math.Ceil((totalPrice / apiArgs[2]), COPPER_PER_SILVER) == apiArgs[3] and true end },
			COMMODITY_PRICE_UNAVAILABLE = { result = false },
		},
		ConfirmCommoditiesPurchase = {
			COMMODITY_PURCHASE_SUCCEEDED = { result = true },
			COMMODITY_PURCHASE_FAILED = { result = false },
			["UI_ERROR_MESSAGE"..GENERIC_EVENT_SEP..ERR_AUCTION_DATABASE_ERROR] = { result = false },
			["UI_ERROR_MESSAGE"..GENERIC_EVENT_SEP..ERR_AUCTION_HIGHER_BID] = { result = false },
			["UI_ERROR_MESSAGE"..GENERIC_EVENT_SEP..ERR_ITEM_NOT_FOUND] = { result = false },
			["UI_ERROR_MESSAGE"..GENERIC_EVENT_SEP..ERR_AUCTION_BID_OWN] = { result = false },
			["UI_ERROR_MESSAGE"..GENERIC_EVENT_SEP..ERR_NOT_ENOUGH_MONEY] = { result = false },
		},
		PlaceBid = {
			AUCTION_CANCELED = { result = true, eventArgIndex = 1, apiArgIndex = 1 },
			["CHAT_MSG_SYSTEM"..GENERIC_EVENT_SEP..ERR_AUCTION_BID_PLACED] = { result = true },
			["UI_ERROR_MESSAGE"..GENERIC_EVENT_SEP..ERR_AUCTION_DATABASE_ERROR] = { result = false },
			["UI_ERROR_MESSAGE"..GENERIC_EVENT_SEP..ERR_AUCTION_HIGHER_BID] = { result = false },
			["UI_ERROR_MESSAGE"..GENERIC_EVENT_SEP..ERR_ITEM_NOT_FOUND] = { result = false },
			["UI_ERROR_MESSAGE"..GENERIC_EVENT_SEP..ERR_AUCTION_BID_OWN] = { result = false },
			["UI_ERROR_MESSAGE"..GENERIC_EVENT_SEP..ERR_NOT_ENOUGH_MONEY] = { result = false },
			["UI_ERROR_MESSAGE"..GENERIC_EVENT_SEP..ERR_ITEM_MAX_COUNT] = { result = false },
		},
		PostItem = {
			AUCTION_HOUSE_AUCTION_CREATED = { result = true, rawFilterFunc = function(apiArgs) return apiArgs[3] <= 1 end },
			AUCTION_MULTISELL_UPDATE = { result = true, rawFilterFunc = function(apiArgs, createdCount, totalToCreate) return createdCount == totalToCreate end },
			AUCTION_MULTISELL_FAILURE = { result = false },
			["UI_ERROR_MESSAGE"..GENERIC_EVENT_SEP..ERR_ITEM_NOT_FOUND] = { result = false },
			["UI_ERROR_MESSAGE"..GENERIC_EVENT_SEP..ERR_AUCTION_DATABASE_ERROR] = { result = false },
			["UI_ERROR_MESSAGE"..GENERIC_EVENT_SEP..ERR_AUCTION_REPAIR_ITEM] = { result = nil },
			["UI_ERROR_MESSAGE"..GENERIC_EVENT_SEP..ERR_AUCTION_LIMITED_DURATION_ITEM] = { result = nil },
			["UI_ERROR_MESSAGE"..GENERIC_EVENT_SEP..ERR_AUCTION_USED_CHARGES] = { result = nil },
			["UI_ERROR_MESSAGE"..GENERIC_EVENT_SEP..ERR_AUCTION_WRAPPED_ITEM] = { result = nil },
			["UI_ERROR_MESSAGE"..GENERIC_EVENT_SEP..ERR_AUCTION_BAG] = { result = nil },
			["UI_ERROR_MESSAGE"..GENERIC_EVENT_SEP..ERR_NOT_ENOUGH_MONEY] = { result = nil },
		},
		PostCommodity = {
			AUCTION_HOUSE_AUCTION_CREATED = { result = true },
			["UI_ERROR_MESSAGE"..GENERIC_EVENT_SEP..ERR_ITEM_NOT_FOUND] = { result = false },
			["UI_ERROR_MESSAGE"..GENERIC_EVENT_SEP..ERR_AUCTION_DATABASE_ERROR] = { result = false },
			["UI_ERROR_MESSAGE"..GENERIC_EVENT_SEP..ERR_AUCTION_REPAIR_ITEM] = { result = nil },
			["UI_ERROR_MESSAGE"..GENERIC_EVENT_SEP..ERR_AUCTION_LIMITED_DURATION_ITEM] = { result = nil },
			["UI_ERROR_MESSAGE"..GENERIC_EVENT_SEP..ERR_AUCTION_USED_CHARGES] = { result = nil },
			["UI_ERROR_MESSAGE"..GENERIC_EVENT_SEP..ERR_AUCTION_WRAPPED_ITEM] = { result = nil },
			["UI_ERROR_MESSAGE"..GENERIC_EVENT_SEP..ERR_AUCTION_BAG] = { result = nil },
			["UI_ERROR_MESSAGE"..GENERIC_EVENT_SEP..ERR_NOT_ENOUGH_MONEY] = { result = nil },
		},
	}



-- ============================================================================
-- Module Loading
-- ============================================================================

AuctionHouseWrapper:OnModuleLoad(function()
	DefaultUI.RegisterAuctionHouseVisibleCallback(private.AuctionHouseClosed, false)

	-- setup wrappers
	for apiName in pairs(API_EVENT_INFO) do
		private.wrappers[apiName] = APIWrapper(apiName)
	end

	if Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE) then
		-- extra hooks to track search query calls since they are limited
		hooksecurefunc(C_AuctionHouse, "SendSearchQuery", function()
			tinsert(private.searchQueryAPITimes, GetTime())
		end)
		hooksecurefunc(C_AuctionHouse, "SendSellSearchQuery", function()
			tinsert(private.searchQueryAPITimes, GetTime())
		end)

		-- events to track auction purchases
		Event.Register("AUCTION_CANCELED", private.AuctionCanceledHandler)
		Event.Register("ITEM_SEARCH_RESULTS_UPDATED", private.ItemSearchResultsUpdated)

		-- general events
		Event.Register("AUCTION_HOUSE_THROTTLED_MESSAGE_RESPONSE_RECEIVED", private.ResponseReceivedHandler)

		-- extra events that are interesting to log
		Event.Register("AUCTION_HOUSE_NEW_RESULTS_RECEIVED", private.UnusedEventHandler)
		Event.Register("AUCTION_HOUSE_THROTTLED_MESSAGE_DROPPED", private.UnusedEventHandler)
		Event.Register("AUCTION_HOUSE_THROTTLED_MESSAGE_QUEUED", private.UnusedEventHandler)
		Event.Register("AUCTION_HOUSE_THROTTLED_MESSAGE_SENT", private.UnusedEventHandler)
		Event.Register("AUCTION_HOUSE_THROTTLED_SYSTEM_READY", private.UnusedEventHandler)
	else
		private.canSendAuctionQueryTimer = Delay.CreateTimer("CHECK_CAN_SEND_AUCTION_QUERY", private.CheckCanSendAuctionQuery)
		private.canSendAuctionQueryTimer:RunForTime(0.1)
	end
end)



-- ============================================================================
-- Module Functions
-- ============================================================================

function AuctionHouseWrapper.SetAnalyticsRegionRealm(regionRealm)
	private.analyticsRegionRealm = regionRealm
end

function AuctionHouseWrapper.RegisterAuctionIdUpdateCallback(callback)
	tinsert(private.auctionIdUpdateCallbacks, callback)
end

function AuctionHouseWrapper.RegisterCanSendAuctionQueryCallback(callback)
	tinsert(private.canSendAuctionQueryCallbacks, callback)
end

function AuctionHouseWrapper.GetAndResetTotalHookedTime()
	local total, topTime, topAddon = 0, nil, nil
	for addon, hookedTime in pairs(private.hookedTime) do
		total = total + hookedTime
		if hookedTime > (topTime or 0) then
			topTime = hookedTime
			topAddon = addon
		end
	end
	wipe(private.hookedTime)
	return total, topAddon, topTime
end

function AuctionHouseWrapper.SendBrowseQuery(query)
	assert(Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE))
	if not private.CheckAllIdle() then
		return
	end
	return private.wrappers.SendBrowseQuery:Start(query)
end

function AuctionHouseWrapper.RequestMoreBrowseResults()
	assert(Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE))
	if not private.CheckAllIdle() then
		return
	end
	return private.wrappers.RequestMoreBrowseResults:Start()
end

function AuctionHouseWrapper.SendSearchQuery(itemKey, isSell)
	assert(Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE))
	if not private.CheckAllIdle() then
		return
	end
	-- remove times which are beyond the throttle interval
	for i = #private.searchQueryAPITimes, 1, -1 do
		if GetTime() - private.searchQueryAPITimes[i] >= SEARCH_QUERY_THROTTLE_INTERVAL then
			tremove(private.searchQueryAPITimes, i)
		end
	end
	if #private.searchQueryAPITimes >= SEARCH_QUERY_THROTTLE_MAX then
		local delayTime = private.searchQueryAPITimes[1] + SEARCH_QUERY_THROTTLE_INTERVAL - GetTime()
		assert(delayTime > 0, "Invalid delay time: "..tostring(delayTime))
		Log.Err("Search query can't be run for another %.3f seconds", delayTime)
		return nil, delayTime
	end
	assert(type(isSell) == "boolean")
	if isSell then
		return private.wrappers.SendSellSearchQuery:Start(itemKey, EMPTY_SORTS_TABLE, true)
	else
		return private.wrappers.SendSearchQuery:Start(itemKey, EMPTY_SORTS_TABLE, true)
	end
end

function AuctionHouseWrapper.RequestMoreCommoditySearchResults(itemId)
	assert(Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE))
	if not private.CheckAllIdle() then
		return
	end
	return private.wrappers.RequestMoreCommoditySearchResults:Start(itemId)
end

function AuctionHouseWrapper.RequestMoreItemSearchResults(itemKey)
	assert(Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE))
	if not private.CheckAllIdle() then
		return
	end
	return private.wrappers.RequestMoreItemSearchResults:Start(itemKey)
end

function AuctionHouseWrapper.QueryOwnedAuctions(sorts)
	assert(Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE))
	if not private.CheckAllIdle() then
		return
	end
	return private.wrappers.QueryOwnedAuctions:Start(sorts)
end

function AuctionHouseWrapper.CancelAuction(auctionId)
	if Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE) then
		-- if QueryOwnedAuctions is pending, just cancel it
		private.wrappers.QueryOwnedAuctions:CancelIfPending()
	end
	if not private.CheckAllIdle() then
		return
	end
	return private.wrappers.CancelAuction:Start(auctionId)
end

function AuctionHouseWrapper.StartCommoditiesPurchase(itemId, quantity, itemBuyout)
	assert(Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE))
	if not private.CheckAllIdle() then
		return
	end
	return private.wrappers.StartCommoditiesPurchase:Start(itemId, quantity, itemBuyout)
end

function AuctionHouseWrapper.ConfirmCommoditiesPurchase(itemId, quantity, totalBuyout)
	assert(Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE))
	if not private.CheckAllIdle() then
		return
	end
	return private.wrappers.ConfirmCommoditiesPurchase:Start(itemId, quantity, totalBuyout)
end

function AuctionHouseWrapper.PlaceBid(auctionId, bidBuyout)
	if not private.CheckAllIdle() then
		return
	end
	if Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE) then
		return private.wrappers.PlaceBid:Start(auctionId, bidBuyout)
	else
		return private.wrappers.PlaceAuctionBid:Start("list", auctionId, bidBuyout)
	end
end

function AuctionHouseWrapper.PostAuction(bag, slot, bid, buyout, postTime, stackSize, quantity)
	assert(not Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE))
	if not private.CheckAllIdle() then
		return
	end
	-- need to set the duration in the default UI to avoid Blizzard errors
	AuctionFrameAuctions.duration = postTime
	ClearCursor()
	Container.PickupItem(bag, slot)
	ClickAuctionSellItemButton(AuctionsItemButton, "LeftButton")
	local result = private.wrappers.PostAuction:Start(bid, buyout, postTime, stackSize, quantity)
	ClearCursor()
	return result
end

function AuctionHouseWrapper.PostItem(itemLocation, postTime, stackSize, bid, buyout)
	assert(Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE))
	if not private.CheckAllIdle() then
		return
	end
	return private.wrappers.PostItem:Start(itemLocation, postTime, stackSize, bid, buyout)
end

function AuctionHouseWrapper.PostCommodity(itemLocation, postTime, stackSize, itemBuyout)
	assert(Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE))
	if not private.CheckAllIdle() then
		return
	end
	return private.wrappers.PostCommodity:Start(itemLocation, postTime, stackSize, itemBuyout)
end

function AuctionHouseWrapper.QueryAuctionItems(name, minLevel, maxLevel, page, usable, quality, getAll, exact, filterData)
	assert(not Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE))
	local canSendQuery, canSendGetAll = CanSendAuctionQuery()
	if not canSendQuery or (getAll and not canSendGetAll) or not private.CheckAllIdle() then
		return
	end
	return private.wrappers.QueryAuctionItems:Start(name, minLevel, maxLevel, page, usable, quality, getAll, exact, filterData)
end

function AuctionHouseWrapper.GetNumAuctions()
	assert(not Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE))
	local numAuctions = GetNumAuctionItems("list")
	return numAuctions
end

function AuctionHouseWrapper.GetNumPages()
	assert(not Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE))
	local numAuctions, totalNumAuctions = GetNumAuctionItems("list")
	if numAuctions == 0 then
		-- Sometimes the AH refuses to give more results, so don't keep scanning
		totalNumAuctions = 0
	end
	return ceil(totalNumAuctions / NUM_AUCTION_ITEMS_PER_PAGE)
end



-- ============================================================================
-- APIWrapper Class
-- ============================================================================

function APIWrapper.__init(self, name)
	self._name = name
	self._args = {}
	self._state = "IDLE"
	self._callTime = nil
	self._future = Future.New(self._name.."_FUTURE")
	self._future:SetScript("OnCleanup", function()
		if self._state == "PENDING_REQUESTED" then
			-- switch the current call to a hooked call
			self._state = "PENDING_HOOKED"
		elseif self._state == "DONE" then
			self._state = "IDLE"
		end
	end)
	self._timeoutTimer = Delay.CreateTimer("AH_API_TIMEOUT_"..name, function()
		Log.Err("API timed out: %s(%s)", self._name, private.ArgsToStr(unpack(self._args)))
		return self:_Done(false)
	end)

	-- hook the API
	hooksecurefunc(Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE) and C_AuctionHouse or _G, self._name, function(...)
		Log.Info("%s(%s)", self._name, private.ArgsToStr(...))
		if self:_IsPending() and select("#", ...) == 0 then
			return
		end
		self:CancelIfPending()
		if self:_HandleAPICall(...) then
			for _, wrapper in pairs(private.wrappers) do
				if wrapper ~= self and GetTime() ~= private.lastResponseReceived then
					wrapper:CancelIfPending()
				end
			end
		end
	end)

	-- register related events
	for eventName in pairs(API_EVENT_INFO[self._name]) do
		private.RegisterForEvent(eventName, self)
	end
end

function APIWrapper.IsIdle(self)
	return self._state == "IDLE"
end

function APIWrapper.CancelIfPending(self)
	if not self:_IsPending() then
		return
	end
	Log.Warn("Canceling pending (%s, %s)", self._name, self._state)
	self:_Done(false)
end

function APIWrapper.Start(self, ...)
	if self._state ~= "IDLE" then
		Log.Err("API already in progress (%s)", self._name)
		return
	end
	self._state = "STARTING"
	self:_CallAPI(...)
	return self._future
end

function APIWrapper._IsPending(self)
	return self._state == "PENDING_REQUESTED" or self._state == "PENDING_HOOKED"
end

function APIWrapper._CallAPI(self, ...)
	return (Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE) and C_AuctionHouse or _G)[self._name](...)
end

function APIWrapper._HandleAPICall(self, ...)
	self._callTime = GetTime()
	if self._state == "IDLE" then
		self._state = "PENDING_HOOKED"
		self._hookAddon = strmatch(Debug.GetStackLevelLocation(3), "AddOns\\([^\\]+)\\")
	elseif self._state == "STARTING" then
		self._future:Start()
		self._state = "PENDING_REQUESTED"
	else
		error("Unexpected state: "..self._state)
	end
	Vararg.IntoTable(self._args, ...)
	local timeout = nil
	if not DefaultUI.IsAuctionHouseVisible() then
		timeout = 0
	elseif self._name == "QueryAuctionItems" and select(7, ...) then
		timeout = GET_ALL_TIMEOUT
	else
		timeout = API_TIMEOUT
	end
	self._timeoutTimer:RunForTime(timeout)
	return true
end

function APIWrapper._HandleEvent(self, eventName, ...)
	if self._state ~= "PENDING_REQUESTED" and self._state ~= "PENDING_HOOKED" then
		return
	end
	local eventIsValid, result = self:_ValidateEvent(eventName, ...)
	if not eventIsValid then
		Log.Info("Ignoring invalidated event")
		return
	end
	self:_Done(result)
end

function APIWrapper._ValidateEvent(self, eventName, ...)
	local info = nil
	if GENERIC_EVENTS[eventName] then
		local arg = ...
		info = API_EVENT_INFO[self._name][eventName..GENERIC_EVENT_SEP..arg]
	else
		info = API_EVENT_INFO[self._name][eventName]
	end
	assert(info)
	if info.timeoutChange then
		self._timeoutTimer:Cancel()
		self._timeoutTimer:RunForTime(info.timeoutChange)
		return false
	end
	local eventIsValid, result = true, nil
	if type(info.result) == "number" then
		result = select(info.result, ...)
	else
		result = info.result
	end
	if info.rawFilterFunc then
		if not info.rawFilterFunc(self._args, ...) then
			eventIsValid = false
		end
	elseif info.eventArgIndex then
		local eventValue = select(info.eventArgIndex, ...)
		local apiValue = self._args[info.apiArgIndex]
		if info.apiArgKey then
			apiValue = apiValue[info.apiArgKey]
		end
		local argMatches = nil
		assert(type(eventValue) == type(apiValue))
		if info.compareFunc then
			argMatches = info.compareFunc(eventValue, apiValue)
		elseif private.IsItemKey(eventValue) then
			argMatches = true
			for _, key in ipairs(ITEM_KEY_KEYS) do
				if eventValue[key] ~= apiValue[key] then
					argMatches = false
					break
				end
			end
		elseif type(eventValue) == "table" then
			argMatches = Table.Equal(eventValue, apiValue)
		else
			argMatches = eventValue == apiValue
		end
		if not argMatches then
			eventIsValid = false
		end
	end
	return eventIsValid, result
end

function APIWrapper._Done(self, result)
	wipe(self._args)
	local hookAddon = self._hookAddon
	self._hookAddon = nil
	local totalTime = Math.Round((GetTime() - (self._callTime or GetTime())) * 1000)
	self._callTime = nil
	self._timeoutTimer:Cancel()
	if self._state == "PENDING_REQUESTED" then
		if totalTime > 0 then
			Analytics.Action("AH_API_TIME", private.analyticsRegionRealm, self._name, result and totalTime or -1)
		end
		self._state = "DONE"
		-- need to do this last as it might trigger another API call or OnCleanup on the future
		self._future:Done(result)
	elseif self._state == "PENDING_HOOKED" then
		self._state = "IDLE"
		if hookAddon then
			private.hookedTime[hookAddon] = (private.hookedTime[hookAddon] or 0) + totalTime / 1000
		end
	else
		error("Unexpected state: "..self._state)
	end
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.AuctionHouseClosed()
	for _, wrapper in pairs(private.wrappers) do
		wrapper:CancelIfPending()
	end
end

function private.IsItemKey(value)
	if type(value) ~= "table" then
		return false
	end
	for _, key in ipairs(ITEM_KEY_KEYS) do
		if not value[key] then
			return false
		end
	end
	return true
end

function private.ItemKeyToStr(itemKey)
	assert(#private.itemKeyPartsTemp == 0)
	if itemKey.itemID ~= 0 then
		tinsert(private.itemKeyPartsTemp, "itemID="..itemKey.itemID)
	end
	if itemKey.itemLevel ~= 0 then
		tinsert(private.itemKeyPartsTemp, "itemLevel="..itemKey.itemLevel)
	end
	if itemKey.itemSuffix ~= 0 then
		tinsert(private.itemKeyPartsTemp, "itemSuffix="..itemKey.itemSuffix)
	end
	if itemKey.battlePetSpeciesID ~= 0 then
		tinsert(private.itemKeyPartsTemp, "battlePetSpeciesID="..itemKey.battlePetSpeciesID)
	end
	local result = format("{%s}", table.concat(private.itemKeyPartsTemp, ","))
	wipe(private.itemKeyPartsTemp)
	return result
end

function private.SortsToStr(sorts)
	assert(#private.sortsPartsTemp == 0)
	for _, sort in ipairs(sorts) do
		local name = Table.KeyByValue(Enum.AuctionHouseSortOrder, sort.sortOrder) or "?"
		tinsert(private.sortsPartsTemp, format("%s%s", sort.reverseSort and "-" or "", name))
	end
	local result = format("{%s}", table.concat(private.sortsPartsTemp, ","))
	wipe(private.sortsPartsTemp)
	return result
end

function private.ArgToStr(arg)
	if type(arg) == "table" then
		local count = Table.Count(arg)
		if private.IsItemKey(arg) then
			return private.ItemKeyToStr(arg)
		elseif arg.searchString then
			return format("{searchString=\"%s\", sorts=%s, minLevel=%s, maxLevel=%s, filters=%s, itemClassFilters=%s}", arg.searchString, private.SortsToStr(arg.sorts), private.ArgToStr(arg.minLevel), private.ArgToStr(arg.maxLevel), private.ArgToStr(arg.filters), private.ArgToStr(arg.itemClassFilters))
		elseif arg.IsBagAndSlot then
			return format("{<ItemLocation:(%d,%d)>}", arg:GetBagAndSlot())
		elseif count == 0 then
			return "{}"
		elseif count == #arg then
			if type(arg[1]) == "table" and arg[1].sortOrder then
				return format("{sorts=%s}", private.SortsToStr(arg))
			end
			if not Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE) and #arg == 1 and arg[1].classID then
				return format("{classID=%s, subClassID=%s, inventoryType=%s}", tostring(arg[1].classID), tostring(arg[1].subClassID), tostring(arg[1].inventoryType))
			end
			return format("{<%d items>}", count)
		else
			return "{...}"
		end
	else
		return tostring(arg)
	end
end

function private.ArgsToStr(...)
	assert(#private.argsTemp == 0)
	Vararg.IntoTable(private.argsTemp, ...)
	for i = 1, #private.argsTemp do
		private.argsTemp[i] = private.ArgToStr(private.argsTemp[i])
	end
	local result = table.concat(private.argsTemp, ",")
	wipe(private.argsTemp)
	return result
end

function private.RegisterForEvent(eventName, wrapper)
	local genericEventArg = nil
	eventName, genericEventArg = strsplit(GENERIC_EVENT_SEP, eventName)
	if not private.events[eventName] then
		private.events[eventName] = {}
		Event.Register(eventName, private.EventHandler)
	end
	if genericEventArg then
		private.events[eventName][genericEventArg] = private.events[eventName][genericEventArg] or {}
		tinsert(private.events[eventName][genericEventArg], wrapper)
	else
		tinsert(private.events[eventName], wrapper)
	end
end

function private.EventHandler(eventName, ...)
	-- reduce the log spam of generic events by combining the message with the name and discarding arguments
	if eventName == "UI_ERROR_MESSAGE" and select(1, ...) == ERR_AUCTION_DATABASE_ERROR then
		-- log an analytics event for "Internal Auction Error" messages
		for apiName, wrapper in pairs(private.wrappers) do
			if not wrapper:IsIdle() then
				Analytics.Action("AH_INTERNAL_ERROR", private.analyticsRegionRealm, apiName)
				break
			end
		end
	end
	if GENERIC_EVENTS[eventName] then
		local genericEventArg = select(GENERIC_EVENTS[eventName], ...)
		assert(genericEventArg)
		genericEventArg = tostring(genericEventArg)
		if not private.events[eventName][genericEventArg] then
			return
		end
		private.EventHandlerHelper(private.events[eventName][genericEventArg], eventName, genericEventArg)
	else
		private.EventHandlerHelper(private.events[eventName], eventName, ...)
	end
end

function private.ResponseReceivedHandler(eventName, ...)
	Log.Info("%s (%s)", eventName, private.ArgsToStr(...))
	private.lastResponseReceived = GetTime()
end

function private.UnusedEventHandler(eventName, ...)
	Log.Info("%s (%s)", eventName, private.ArgsToStr(...))
end

function private.EventHandlerHelper(wrappers, eventName, ...)
	if not SILENT_EVENTS[eventName] then
		Log.Info("%s (%s)", eventName, private.ArgsToStr(...))
	end
	for _, wrapper in ipairs(wrappers) do
		wrapper:_HandleEvent(eventName, ...)
	end
end

function private.CheckAllIdle()
	for apiName, wrapper in pairs(private.wrappers) do
		if not wrapper:IsIdle() then
			Log.Err("Another wrapper is pending (%s)", apiName)
			return false
		end
	end
	return true
end

function private.AuctionCanceledHandler(_, auctionId)
	private.lastAuctionCanceledAuctionId = auctionId
	private.lastAuctionCanceledTime = GetTime()
end

function private.ItemSearchResultsUpdated(_, itemKey, auctionId)
	if private.lastAuctionCanceledTime == GetTime() and auctionId then
		Log.Info("Auction ID changed from %s to %s", tostring(private.lastAuctionCanceledAuctionId), tostring(auctionId))
		local newResultInfo = nil
		for i = 1, C_AuctionHouse.GetNumItemSearchResults(itemKey) do
			local info = C_AuctionHouse.GetItemSearchResultInfo(itemKey, i)
			if info.auctionID == auctionId then
				newResultInfo = info
				break
			end
		end
		if not newResultInfo then
			Log.Warn("Failed to find new result info")
		end
		for _, callback in ipairs(private.auctionIdUpdateCallbacks) do
			callback(private.lastAuctionCanceledAuctionId, auctionId, newResultInfo)
		end
		private.lastAuctionCanceledAuctionId = nil
		private.lastAuctionCanceledTime = 0
	end
end

function private.CheckCanSendAuctionQuery()
	assert(not Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE))
	private.canSendAuctionQueryTimer:RunForTime(0.1)
	local value = CanSendAuctionQuery() and true or false
	if value ~= private.canSendAuctionQueryValue then
		private.canSendAuctionQueryValue = value
		for _, callback in ipairs(private.canSendAuctionQueryCallbacks) do
			callback(value)
		end
	end
end
