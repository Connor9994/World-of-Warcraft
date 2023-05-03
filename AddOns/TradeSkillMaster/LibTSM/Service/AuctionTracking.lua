-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local AuctionTracking = TSM.Init("Service.AuctionTracking") ---@class Service.AuctionTracking
local Environment = TSM.Include("Environment")
local L = TSM.Include("Locale").GetTable()
local Database = TSM.Include("Util.Database")
local Delay = TSM.Include("Util.Delay")
local Event = TSM.Include("Util.Event")
local Log = TSM.Include("Util.Log")
local ItemString = TSM.Include("Util.ItemString")
local TempTable = TSM.Include("Util.TempTable")
local Sound = TSM.Include("Util.Sound")
local Money = TSM.Include("Util.Money")
local Theme = TSM.Include("Util.Theme")
local Analytics = TSM.Include("Util.Analytics")
local DefaultUI = TSM.Include("Service.DefaultUI")
local ItemInfo = TSM.Include("Service.ItemInfo")
local Settings = TSM.Include("Service.Settings")
local AuctionHouseWrapper = TSM.Include("Service.AuctionHouseWrapper")
local private = {
	settings = nil,
	indexDB = nil,
	quantityDB = nil,
	baseItemQuantityQuery = nil,
	updateQuery = nil, -- luacheck: ignore 1004 - just stored for GC reasons
	callbacks = {},
	expiresCallbacks = {},
	indexUpdates = {
		list = {},
		pending = {},
	},
	cancelAuctionId = nil,
	pendingPost = {
		itemLink = nil,
		quantity = nil,
		unitPrice = nil,
	},
	lastScanNum = nil,
	ignoreUpdateEvent = nil,
	lastPurchase = {},
	prevLineId = nil,
	prevLineResult = nil,
	origChatFrameOnEvent = nil,
	pendingFuture = nil,
	auctionIdToLink = {},
	auctionIdToItemBuyout = {},
	prevLogTime = 0,
	prevLogNum = math.huge,
	queryTimer = nil,
	backgroundScanTimer = nil,
	scanTimer = nil,
	auctionPriceMessagesThrottleTimer = nil,
}
local PLAYER_NAME = UnitName("player")
local SALE_HINT_SEP = "\001"
local SALE_HINT_EXPIRE_TIME = 33 * 24 * 60 * 60
local SORT_ORDER = Environment.IsRetail() and {
	{ sortOrder = Enum.AuctionHouseSortOrder.Name, reverseSort = false },
	{ sortOrder = Enum.AuctionHouseSortOrder.Price, reverseSort = false },
}
local AUCTIONABLE_WOW_TOKEN_ITEM_ID = 122270



-- ============================================================================
-- Module Loading
-- ============================================================================

AuctionTracking:OnSettingsLoad(function()
	private.settings = Settings.NewView()
		:AddKey("char", "internalData", "auctionSaleHints")
		:AddKey("char", "internalData", "auctionPrices")
		:AddKey("char", "internalData", "auctionMessages")
		:AddKey("factionrealm", "internalData", "expiringAuction")
		:AddKey("sync", "internalData", "auctionQuantity")
		:AddKey("global", "coreOptions", "auctionSaleSound")
	private.queryTimer = Delay.CreateTimer("AUCTION_TRACKING_QUERY_OWNED", AuctionTracking.QueryOwnedAuctions)
	private.backgroundScanTimer = Delay.CreateTimer("AUCTION_TRACKING_BACKGROUND_SCAN", private.DoBackgroundScan)
	private.scanTimer = Delay.CreateTimer("AUCTION_TRACKING_OWNED_LIST_SCAN", private.AuctionOwnedListUpdateDelayed)
	private.auctionPriceMessagesThrottleTimer = Delay.CreateTimer("AUCTION_TRACKING_PRICE_MESSAGES_THROTTLE", private.UpdateAuctionPricesMessages)
	DefaultUI.RegisterAuctionHouseVisibleCallback(private.AuctionHouseVisibilityHandler)
	if Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE) then
		Event.Register("OWNED_AUCTIONS_UPDATED", private.AuctionOwnedListUpdateHandler)
		Event.Register("AUCTION_CANCELED", private.AuctionCanceledHandler)
		Event.Register("AUCTION_HOUSE_AUCTION_CREATED", private.AuctionCreatedHandler)
	else
		Event.Register("AUCTION_OWNED_LIST_UPDATE", private.AuctionOwnedListUpdateHandler)
	end
	private.indexDB = Database.NewSchema("AUCTION_TRACKING_INDEXES")
		:AddUniqueNumberField("index")
		:AddStringField("itemString")
		:AddSmartMapField("baseItemString", ItemString.GetBaseMap(), "itemString")
		:AddSmartMapField("levelItemString", ItemString.GetLevelMap(), "itemString")
		:AddStringField("itemLink")
		:AddNumberField("itemTexture")
		:AddStringField("itemName")
		:AddNumberField("itemQuality")
		:AddNumberField("duration")
		:AddStringField("highBidder")
		:AddNumberField("currentBid")
		:AddNumberField("buyout")
		:AddNumberField("stackSize")
		:AddNumberField("saleStatus")
		:AddNumberField("auctionId")
		:AddIndex("index")
		:AddIndex("saleStatus")
		:AddIndex("auctionId")
		:Commit()
	private.quantityDB = Database.NewSchema("AUCTION_TRACKING_QUANTITY")
		:AddUniqueStringField("levelItemString")
		:AddNumberField("auctionQuantity")
		:AddSmartMapField("baseItemString", ItemString.GetBaseMap(), "levelItemString")
		:AddIndex("baseItemString")
		:Commit()
	private.baseItemQuantityQuery = private.quantityDB:NewQuery()
		:Select("auctionQuantity")
		:Equal("baseItemString", Database.BoundQueryParam())
	private.updateQuery = private.indexDB:NewQuery()
		:SetUpdateCallback(private.OnCallbackQueryUpdated)

	private.RebuildQuantityDB()
	for info, timestamp in pairs(private.settings.auctionSaleHints) do
		if time() > timestamp + SALE_HINT_EXPIRE_TIME then
			private.settings.auctionSaleHints[info] = nil
		end
	end

	if Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE) then
		hooksecurefunc(C_AuctionHouse, "PostCommodity", function(item, duration, quantity, unitPrice)
			local itemLink = C_Item.GetItemLink(item)
			private.PostAuctionHookHandler(duration, itemLink, quantity, unitPrice)
		end)
		hooksecurefunc(C_AuctionHouse, "PostItem", function(item, duration, quantity, bid, buyout)
			local itemLink = C_Item.GetItemLink(item)
			private.PostAuctionHookHandler(duration, itemLink, quantity, buyout)
		end)
		hooksecurefunc(C_AuctionHouse, "CancelAuction", function(auctionId)
			private.cancelAuctionId = auctionId
		end)
	else
		hooksecurefunc("PostAuction", function(_, _, duration)
			private.PostAuctionHookHandler(duration)
		end)
	end

	-- setup enhanced sale / buy messages
	if Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE) then
		Event.Register("AUCTION_HOUSE_SHOW_NOTIFICATION", private.FilterAuctionMsg)
		Event.Register("AUCTION_HOUSE_SHOW_FORMATTED_NOTIFICATION", private.FilterAuctionMsg)
		Event.Register("AUCTION_HOUSE_SHOW_COMMODITY_WON_NOTIFICATION", private.FilterCommodityAuctionMsg)
	else
		ChatFrame_AddMessageEventFilter("CHAT_MSG_SYSTEM", private.FilterSystemMsg)
	end
	if Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE) then
		Event.Register("ITEM_SEARCH_RESULTS_UPDATED", function(_, itemKey)
			wipe(private.auctionIdToLink)
			wipe(private.auctionIdToItemBuyout)
			for i = 1, C_AuctionHouse.GetNumItemSearchResults(itemKey) do
				local info = C_AuctionHouse.GetItemSearchResultInfo(itemKey, i)
				if info.buyoutAmount then
					private.auctionIdToLink[info.auctionID] = info.itemLink
					private.auctionIdToItemBuyout[info.auctionID] = info.buyoutAmount
				end
			end
		end)
		hooksecurefunc(C_AuctionHouse, "PlaceBid", function(auctionId, bidPlaced)
			local link = private.auctionIdToLink[auctionId]
			local buyout = private.auctionIdToItemBuyout[auctionId]
			if not link or buyout ~= bidPlaced then
				return
			end
			wipe(private.lastPurchase)
			private.lastPurchase.name = ItemInfo.GetName(link)
			private.lastPurchase.link = link
			private.lastPurchase.stackSize = 1
			private.lastPurchase.buyout = bidPlaced
		end)
		hooksecurefunc(C_AuctionHouse, "ConfirmCommoditiesPurchase", function(itemId, quantity)
			local link = ItemInfo.GetLink("i:"..itemId)
			if not link then
				return
			end
			local origQuantity = quantity
			local buyout = 0
			for i = 1, C_AuctionHouse.GetNumCommoditySearchResults(itemId) do
				local info = C_AuctionHouse.GetCommoditySearchResultInfo(itemId, i)
				local resultQuantity = min(quantity, info.quantity - info.numOwnerItems)
				buyout = buyout + resultQuantity * info.unitPrice
				quantity = quantity - resultQuantity
				if quantity == 0 then
					break
				end
			end
			if quantity > 0 then
				return
			end
			private.lastPurchase.name = ItemInfo.GetName(link)
			private.lastPurchase.link = link
			private.lastPurchase.stackSize = origQuantity
			private.lastPurchase.buyout = buyout
		end)
	else
		hooksecurefunc("PlaceAuctionBid", function(_, index, amountPaid)
			local link = GetAuctionItemLink("list", index)
			local name, _, stackSize, _, _, _, _, _, _, buyout = GetAuctionItemInfo("list", index)
			if amountPaid == buyout then
				wipe(private.lastPurchase)
				private.lastPurchase.name = name
				private.lastPurchase.link = link
				private.lastPurchase.stackSize = stackSize
				private.lastPurchase.buyout = buyout
			end
		end)
	end
end)

AuctionTracking:OnGameDataLoad(function()
	-- setup auction created / cancelled filtering
	-- NOTE: this is delayed until the game is loaded to avoid taint issues
	local ElvUIChat, ElvUIChatIsEnabled = nil, nil
	if IsAddOnLoaded("ElvUI") and ElvUI then
		ElvUIChat = ElvUI[1]:GetModule("Chat")
		if ElvUI[3].chat.enable then
			ElvUIChatIsEnabled = true
		end
	end
	if not Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE) then
		if ElvUIChatIsEnabled then
			private.origChatFrameOnEvent = ElvUIChat.ChatFrame_OnEvent
			ElvUIChat.ChatFrame_OnEvent = private.ChatFrameOnEvent
		else
			private.origChatFrameOnEvent = ChatFrame_OnEvent
			ChatFrame_OnEvent = private.ChatFrameOnEvent
		end
	end
end)



-- ============================================================================
-- Module Functions
-- ============================================================================

function AuctionTracking.RegisterCallback(callback)
	tinsert(private.callbacks, callback)
end

function AuctionTracking.RegisterExpiresCallback(callback)
	tinsert(private.expiresCallbacks, callback)
end

function AuctionTracking.DatabaseFieldIterator()
	return private.indexDB:FieldIterator()
end

function AuctionTracking.QuantityIterator()
	return private.quantityDB:NewQuery()
		:Select("levelItemString", "auctionQuantity")
		:IteratorAndRelease()
end

function AuctionTracking.CreateQuery()
	return private.indexDB:NewQuery()
end

function AuctionTracking.CreateQueryUnsold()
	return AuctionTracking.CreateQuery()
		:Equal("saleStatus", 0)
end

function AuctionTracking.CreateQueryUnsoldItem(itemString)
	local query = AuctionTracking.CreateQueryUnsold()
	if itemString == ItemString.GetBaseFast(itemString) then
		query:Equal("baseItemString", itemString)
	elseif ItemString.IsLevel(itemString) then
		query:Equal("levelItemString", itemString)
	else
		query:Equal("itemString", itemString)
	end
	return query
end

function AuctionTracking.GetSaleHintItemString(name, stackSize, buyout)
	if not Environment.HasFeature(Environment.FEATURES.AH_STACKS) and stackSize > 1 then
		buyout = buyout / stackSize
	end
	for info in pairs(private.settings.auctionSaleHints) do
		local infoName, itemString, infoStackSize, infoBuyout = strsplit(SALE_HINT_SEP, info)
		if infoName == name and tonumber(infoStackSize) == stackSize and tonumber(infoBuyout) == buyout then
			return itemString
		end
	end
end

function AuctionTracking.GetQuantity(itemString)
	if not ItemString.IsLevel(itemString) and itemString == ItemString.GetBaseFast(itemString) then
		return private.baseItemQuantityQuery
			:BindParams(itemString)
			:Sum("auctionQuantity")
	else
		local levelItemString = ItemString.ToLevel(itemString)
		return private.quantityDB:GetUniqueRowField("levelItemString", levelItemString, "auctionQuantity") or 0
	end
end

function AuctionTracking.QueryOwnedAuctions()
	if not DefaultUI.IsAuctionHouseVisible() then
		return
	end
	if Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE) then
		if private.pendingFuture then
			return
		end
		private.pendingFuture = AuctionHouseWrapper.QueryOwnedAuctions(SORT_ORDER)
		if not private.pendingFuture then
			private.queryTimer:RunForTime(0.5)
			return
		end
		private.pendingFuture:SetScript("OnDone", private.PendingFutureOnDone)
	else
		GetOwnerAuctionItems()
	end
end



-- ============================================================================
-- Event Handlers
-- ============================================================================

function private.AuctionHouseVisibilityHandler(visible)
	if visible then
		if Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE) then
			private.queryTimer:RunForTime(0.1)
		else
			AuctionTracking.QueryOwnedAuctions()
			-- We don't always get AUCTION_OWNED_LIST_UPDATE events, so do our own scanning if needed
			private.backgroundScanTimer:RunForTime(1)
		end
	else
		private.backgroundScanTimer:Cancel()
	end
end

function private.DoBackgroundScan()
	private.backgroundScanTimer:RunForTime(1)
	if private.GetNumOwnedAuctions() ~= private.lastScanNum then
		private.AuctionOwnedListUpdateHandler()
	end
end

function private.AuctionOwnedListUpdateHandler()
	if private.ignoreUpdateEvent then
		return
	end
	wipe(private.indexUpdates.pending)
	wipe(private.indexUpdates.list)
	local numOwned = private.GetNumOwnedAuctions()
	for i = 1, numOwned do
		if not private.indexUpdates.pending[i] then
			private.indexUpdates.pending[i] = true
			tinsert(private.indexUpdates.list, i)
		end
	end
	if numOwned == 0 and private.settings.expiringAuction[PLAYER_NAME] then
		private.settings.expiringAuction[PLAYER_NAME] = nil
		for _, callback in ipairs(private.expiresCallbacks) do
			callback()
		end
	end
	private.scanTimer:RunForFrames(2)
end

function private.AuctionCanceledHandler(_, auctionId)
	if not private.cancelAuctionId or auctionId ~= 0 then
		-- an auction was bought, so rescan the owned auctions
		AuctionTracking.QueryOwnedAuctions()
		return
	end
	local row = private.indexDB:NewQuery()
		:Equal("auctionId", private.cancelAuctionId)
		:GetFirstResultAndRelease()
	private.cancelAuctionId = nil
	if not row then
		return
	end

	local levelItemString = row:GetField("levelItemString")
	local stackSize = row:GetField("stackSize")
	assert(stackSize <= private.settings.auctionQuantity[levelItemString])
	private.settings.auctionQuantity[levelItemString] = private.settings.auctionQuantity[levelItemString] - stackSize
	private.RebuildQuantityDB()
	private.indexDB:DeleteRow(row)
	row:Release()
end

function private.AuctionCreatedHandler()
	if private.pendingPost.itemLink then
		local hintInfo = strjoin(SALE_HINT_SEP, ItemInfo.GetName(private.pendingPost.itemLink), ItemString.Get(private.pendingPost.itemLink), private.pendingPost.quantity, private.pendingPost.unitPrice)
		private.settings.auctionSaleHints[hintInfo] = time()
		private.pendingPost.itemLink = nil
	end
end

function private.AuctionOwnedListUpdateDelayed()
	if not DefaultUI.IsAuctionHouseVisible() then
		return
	elseif AuctionFrame and AuctionFrame:IsVisible() and AuctionFrame.selectedTab == 3 then
		-- default UI auctions tab is visible, so scan later
		private.scanTimer:RunForFrames(2)
		return
	elseif Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE) and not C_AuctionHouse.HasFullOwnedAuctionResults() then
		-- don't have all the results yet, so try again in a moment
		private.scanTimer:RunForFrames(2)
		return
	end
	if not Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE) then
		-- check if we need to change the sort
		local needsSort = false
		local numColumns = #AuctionSort.owner_duration
		for i, info in ipairs(AuctionSort.owner_duration) do
			local col, reversed = GetAuctionSort("owner", numColumns - i + 1)
			-- we want to do the opposite order
			reversed = not reversed
			if col ~= info.column or info.reverse ~= reversed then
				needsSort = true
				break
			end
		end
		if needsSort then
			Log.Info("Sorting owner auctions")
			-- ignore events while changing the sort
			private.ignoreUpdateEvent = true
			AuctionFrame_SetSort("owner", "duration", true)
			SortAuctionApplySort("owner")
			private.ignoreUpdateEvent = nil
		end
	end

	-- scan the auctions
	local shouldLog = GetTime() - private.prevLogTime > 5
	if shouldLog then
		private.prevLogTime = GetTime()
	end
	wipe(private.settings.auctionQuantity)
	private.indexDB:TruncateAndBulkInsertStart()
	local expire = math.huge
	for i = #private.indexUpdates.list, 1, -1 do
		local index = private.indexUpdates.list[i]
		local auctionId, link, name, texture, stackSize, quality, minBid, buyout, bid, highBidder, saleStatus, duration, shouldIgnore = private.GetOwnedAuctionInfo(index)
		if shouldIgnore then
			private.indexUpdates.pending[index] = nil
			tremove(private.indexUpdates.list, i)
		else
			name = name or ItemInfo.GetName(link)
			texture = texture or ItemInfo.GetTexture(link)
			quality = quality or ItemInfo.GetQuality(link)
			if link and name and texture and quality then
				assert(saleStatus == 0 or saleStatus == 1)
				highBidder = highBidder or ""
				local itemString = ItemString.Get(link)
				local currentBid = highBidder ~= "" and bid or minBid
				if not currentBid and saleStatus == 1 and Environment.IsRetail() then
					-- sometimes wow doesn't tell us the current bid on sold auctions on retail
					currentBid = 0
				end
				if saleStatus == 0 then
					if Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE) then
						duration = time() + duration
						expire = min(expire, duration)
					else
						if duration == 1 then -- 30 min
							expire = min(expire, time() + 0.5 * 60 * 60)
						elseif duration == 2 then -- 2 hours
							expire = min(expire, time() + 2 * 60 * 60)
						elseif duration == 3 then -- 12 hours
							expire = min(expire, time() + 12 * 60 * 60)
						end
					end
					local levelItemString = ItemString.ToLevel(itemString)
					private.settings.auctionQuantity[levelItemString] = (private.settings.auctionQuantity[levelItemString] or 0) + stackSize
					local hintInfo = strjoin(SALE_HINT_SEP, ItemInfo.GetName(link), itemString, stackSize, buyout)
					private.settings.auctionSaleHints[hintInfo] = time()
				else
					duration = time() + duration
				end
				private.indexUpdates.pending[index] = nil
				tremove(private.indexUpdates.list, i)
				private.indexDB:BulkInsertNewRow(index, itemString, link, texture, name, quality, duration, highBidder, currentBid, buyout, stackSize, saleStatus, auctionId)
			elseif shouldLog then
				Log.Warn("Missing info (%s, %s, %s, %s)", gsub(tostring(link), "\124", "\\124"), tostring(name), tostring(texture), tostring(quality))
				if link and strmatch(link, "item:") and Environment.IsRetail() then
					Analytics.Action("AUCTION_TRACKING_MISSING_INFO", link)
				end
			end
		end
	end
	private.RebuildQuantityDB()
	private.indexDB:BulkInsertEnd()

	if expire ~= math.huge and (private.settings.expiringAuction[PLAYER_NAME] or math.huge) > expire then
		private.settings.expiringAuction[PLAYER_NAME] = expire
		for _, callback in ipairs(private.expiresCallbacks) do
			callback()
		end
	end

	if shouldLog or #private.indexUpdates.list ~= private.prevLogNum then
		Log.Info("Scanned auctions (left=%d)", #private.indexUpdates.list)
		private.prevLogNum = #private.indexUpdates.list
	end
	if #private.indexUpdates.list > 0 then
		-- some failed to scan so try again
		private.scanTimer:RunForFrames(2)
	else
		private.lastScanNum = private.GetNumOwnedAuctions()
	end
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.RebuildQuantityDB()
	private.quantityDB:TruncateAndBulkInsertStart()
	for levelItemString, quantity in pairs(private.settings.auctionQuantity) do
		if quantity > 0 then
			private.quantityDB:BulkInsertNewRow(levelItemString, quantity)
		else
			private.settings.auctionQuantity[levelItemString] = nil
		end
	end
	private.quantityDB:BulkInsertEnd()
end

function private.GetNumOwnedAuctions()
	if Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE) then
		return C_AuctionHouse.GetNumOwnedAuctions()
	else
		return GetNumAuctionItems("owner")
	end
end

function private.GetOwnedAuctionInfo(index)
	if Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE) then
		local info = C_AuctionHouse.GetOwnedAuctionInfo(index)
		if info.itemKey.itemID == AUCTIONABLE_WOW_TOKEN_ITEM_ID then
			-- this is a token, so just ignore it
			return nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, true
		end
		local link = info and info.itemLink
		if not link then
			if ItemInfo.IsCommodity(info.itemKey.itemID) then
				link = ItemInfo.GetLink(info.itemKey.itemID)
			end
			if not link then
				return
			end
		end
		local bid = info.bidAmount or info.buyoutAmount
		local minBid = bid
		return info.auctionID, link, nil, nil, info.quantity, nil, minBid, info.buyoutAmount or 0, bid, info.bidder or "", info.status, info.timeLeftSeconds
	else
		local name, texture, stackSize, quality, _, _, _, minBid, _, buyout, bid, highBidder, _, _, _, saleStatus = GetAuctionItemInfo("owner", index)
		local link = name and name ~= "" and GetAuctionItemLink("owner", index)
		if not link then
			return
		end
		local duration = GetAuctionItemTimeLeft("owner", index)
		return index, link, name, texture, stackSize, quality, minBid, buyout, bid, highBidder, saleStatus, duration
	end
end

function private.OnCallbackQueryUpdated()
	for _, callback in ipairs(private.callbacks) do
		callback()
	end
	-- updating the auction prices / messages is very low-priority, so throttle it to at most every 0.5 seconds
	private.auctionPriceMessagesThrottleTimer:RunForTime(0.5)
end

function private.PostAuctionHookHandler(duration, itemLink, quantity, unitPrice)
	local days = nil
	if duration == 1 then
		days = 0.5
	elseif duration == 2 then
		days = 1
	elseif duration == 3 then
		days = 2
	end

	if itemLink then
		private.pendingPost.itemLink = itemLink
		private.pendingPost.quantity = quantity
		private.pendingPost.unitPrice = unitPrice
	else
		private.pendingPost.itemLink = nil
	end

	local expiration = time() + (days * 24 * 60 * 60)
	if (private.settings.expiringAuction[PLAYER_NAME] or math.huge) < expiration then
		return
	end
	private.settings.expiringAuction[PLAYER_NAME] = expiration
	for _, callback in ipairs(private.expiresCallbacks) do
		callback()
	end
end

function private.UpdateAuctionPricesMessages()
	local INVALID_STACK_SIZE = -1
	-- recycle tables from private.settings.auctionPrices if we can so we're not creating a ton of garbage
	local freeTables = TempTable.Acquire()
	for _, tbl in pairs(private.settings.auctionPrices) do
		wipe(tbl)
		tinsert(freeTables, tbl)
	end
	wipe(private.settings.auctionPrices)
	wipe(private.settings.auctionMessages)
	local auctionPrices = TempTable.Acquire()
	local auctionStackSizes = TempTable.Acquire()
	local query = AuctionTracking.CreateQueryUnsold()
		:Select("itemLink", "stackSize", "buyout")
		:GreaterThan("buyout", 0)
		:OrderBy("index", true)
	for _, link, stackSize, buyout in query:IteratorAndRelease() do
		auctionPrices[link] = auctionPrices[link] or tremove(freeTables) or {}
		if stackSize ~= auctionStackSizes[link] then
			auctionStackSizes[link] = stackSize
		end
		tinsert(auctionPrices[link], buyout)
	end
	for link, prices in pairs(auctionPrices) do
		local name = ItemInfo.GetName(link)
		if auctionStackSizes[link] ~= INVALID_STACK_SIZE then
			sort(prices)
			private.settings.auctionPrices[link] = prices
			if Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE) then
				private.settings.auctionMessages[name] = link
			else
				private.settings.auctionMessages[format(ERR_AUCTION_SOLD_S, name)] = link
			end
		end
	end
	TempTable.Release(freeTables)
	TempTable.Release(auctionPrices)
	TempTable.Release(auctionStackSizes)
end

function private.ChatFrameOnEvent(self, event, msg, ...)
	-- surpress auction created / cancelled spam
	if event == "CHAT_MSG_SYSTEM" and (msg == ERR_AUCTION_STARTED or msg == ERR_AUCTION_REMOVED) then
		return
	end
	return private.origChatFrameOnEvent(self, event, msg, ...)
end

function private.FilterSystemMsg(_, _, msg, ...)
	local lineID = select(10, ...)
	if lineID ~= private.prevLineId then
		private.prevLineId = lineID
		private.prevLineResult = nil
		local link = private.settings.auctionMessages and private.settings.auctionMessages[msg]
		if private.lastPurchase.name and (msg == format(ERR_AUCTION_WON_S, private.lastPurchase.name) or (Environment.IsRetail() and msg == format(ERR_AUCTION_COMMODITY_WON_S, private.lastPurchase.name, private.lastPurchase.stackSize))) then
			-- we just bought an auction
			private.prevLineResult = format(L["You won an auction for %sx%d for %s"], private.lastPurchase.link, private.lastPurchase.stackSize, Money.ToString(private.lastPurchase.buyout, "|cffffffff"))
			return nil, private.prevLineResult, ...
		elseif link then
			-- we may have just sold an auction
			local price = tremove(private.settings.auctionPrices[link], 1)
			local numAuctions = #private.settings.auctionPrices[link]
			if not price then
				-- couldn't determine the price, so just replace the link
				private.prevLineResult = format(ERR_AUCTION_SOLD_S, link)
				Sound.PlaySound(private.settings.auctionSaleSound)
				return nil, private.prevLineResult, ...
			end
			if numAuctions == 0 then -- this was the last auction
				private.settings.auctionMessages[msg] = nil
			end
			private.prevLineResult = format(L["Your auction of %s has sold for %s!"], link, Money.ToString(price, "|cffffffff"))
			Sound.PlaySound(private.settings.auctionSaleSound)
			return nil, private.prevLineResult, ...
		end
	end
end

function private.FilterAuctionMsg(_, msg, item)
	if msg == Enum.AuctionHouseNotification.AuctionWon and private.lastPurchase.name then
		Log.PrintUserRaw(Theme.GetColor("BLIZZARD_YELLOW"):ColorText(format(L["You won an auction for %sx%d for %s"], private.lastPurchase.link, private.lastPurchase.stackSize, Money.ToString(private.lastPurchase.buyout, "|cffffffff"))))
	elseif msg == Enum.AuctionHouseNotification.AuctionSold and item then
		local link = private.settings.auctionMessages and private.settings.auctionMessages[item]
		if link then
			-- we may have just sold an auction
			local price = tremove(private.settings.auctionPrices[link], 1)
			local numAuctions = #private.settings.auctionPrices[link]
			if not price then
				-- couldn't determine the price, so just replace the link
				Log.PrintUserRaw(Theme.GetColor("BLIZZARD_YELLOW"):ColorText(format(L["Your auction of %s has sold!"], link)))
				Sound.PlaySound(private.settings.auctionSaleSound)
			end
			if numAuctions == 0 then -- this was the last auction
				private.settings.auctionMessages[item] = nil
			end
			Log.PrintUserRaw(Theme.GetColor("BLIZZARD_YELLOW"):ColorText(format(L["Your auction of %s has sold for %s!"], link, Money.ToString(price, "|cffffffff"))))
			Sound.PlaySound(private.settings.auctionSaleSound)
		else
			Log.PrintUserRaw(Theme.GetColor("BLIZZARD_YELLOW"):ColorText(format(L["Your auction of %s has sold!"], item)))
			Sound.PlaySound(private.settings.auctionSaleSound)
		end
	elseif msg == Enum.AuctionHouseNotification.AuctionOutbid and item then
		Log.PrintUserRaw(Theme.GetColor("BLIZZARD_YELLOW"):ColorText(format(ERR_AUCTION_OUTBID_S, item)))
	elseif msg == Enum.AuctionHouseNotification.AuctionExpired and item then
		Log.PrintUserRaw(Theme.GetColor("BLIZZARD_YELLOW"):ColorText(format(ERR_AUCTION_EXPIRED_S, item)))
	elseif msg == Enum.AuctionHouseNotification.BidPlaced then
		Log.PrintUserRaw(Theme.GetColor("BLIZZARD_YELLOW"):ColorText(ERR_AUCTION_BID_PLACED))
	end
end

function private.FilterCommodityAuctionMsg(_, msg, qty)
	if private.lastPurchase.name then
		Log.PrintUserRaw(Theme.GetColor("BLIZZARD_YELLOW"):ColorText(format(L["You won an auction for %sx%d for %s"], private.lastPurchase.link, qty, Money.ToString(private.lastPurchase.buyout, "|cffffffff"))))
	end
end

function private.PendingFutureOnDone()
	-- we also hook the event, so don't care what the result is
	private.pendingFuture:GetValue()
	private.pendingFuture = nil
end
