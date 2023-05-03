-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local MyAuctions = TSM:NewPackage("MyAuctions")
local Environment = TSM.Include("Environment")
local L = TSM.Include("Locale").GetTable()
local Database = TSM.Include("Util.Database")
local Event = TSM.Include("Util.Event")
local TempTable = TSM.Include("Util.TempTable")
local Log = TSM.Include("Util.Log")
local DefaultUI = TSM.Include("Service.DefaultUI")
local AuctionTracking = TSM.Include("Service.AuctionTracking")
local ItemInfo = TSM.Include("Service.ItemInfo")
local AuctionHouseWrapper = TSM.Include("Service.AuctionHouseWrapper")
local private = {
	pendingDB = nil,
	pendingHashes = {},
	expectedCounts = {},
	auctionInfo = { numPosted = 0, numSold = 0, postedGold = 0, soldGold = 0 },
	dbHashFields = {},
	pendingFuture = nil,
}



-- ============================================================================
-- Module Functions
-- ============================================================================

function MyAuctions.OnInitialize()
	private.pendingDB = Database.NewSchema("MY_AUCTIONS_PENDING")
		:AddUniqueNumberField("index")
		:AddNumberField("hash")
		:AddBooleanField("isPending")
		:AddNumberField("pendingAuctionId")
		:AddIndex("index")
		:Commit()
	for field in AuctionTracking.DatabaseFieldIterator() do
		if field ~= "index" and field ~= "auctionId" then
			tinsert(private.dbHashFields, field)
		end
	end
	DefaultUI.RegisterAuctionHouseVisibleCallback(private.AuctionHouseClosed, false)
	if not Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE) then
		Event.Register("CHAT_MSG_SYSTEM", private.ChatMsgSystemEventHandler)
		Event.Register("UI_ERROR_MESSAGE", private.UIErrorMessageEventHandler)
	end
	AuctionTracking.RegisterCallback(private.OnAuctionsUpdated)
end

function MyAuctions.CreateQuery()
	local query = AuctionTracking.CreateQuery()
		:LeftJoin(private.pendingDB, "index")
		:VirtualField("group", "string", TSM.Groups.GetPathByItem, "itemString", "")
	if Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE) then
		query:OrderBy("saleStatus", false)
		query:OrderBy("itemName", true)
		query:OrderBy("auctionId", true)
	else
		query:OrderBy("index", false)
	end
	return query
end

function MyAuctions.CancelAuction(auctionId)
	local row = private.pendingDB:NewQuery()
		:Equal("pendingAuctionId", auctionId)
		:GetFirstResultAndRelease()
	local hash = row:GetField("hash")
	assert(hash)

	Log.Info("Canceling (auctionId=%d, hash=%d)", auctionId, hash)
	private.pendingFuture = AuctionHouseWrapper.CancelAuction(auctionId)
	if not private.pendingFuture then
		Log.PrintUser(L["Failed to cancel auction due to the auction house being busy. Ensure no other addons are scanning the AH and try again."])
		return
	end
	private.pendingFuture:SetScript("OnDone", private.PendingFutureOnDone)

	if private.expectedCounts[hash] and private.expectedCounts[hash] > 0 then
		private.expectedCounts[hash] = private.expectedCounts[hash] - 1
	else
		private.expectedCounts[hash] = private.GetNumRowsByHash(hash) - 1
	end
	assert(private.expectedCounts[hash] >= 0)
	assert(not row:GetField("isPending"))
	row:SetField("isPending", true)
		:Update()
	row:Release()

	tinsert(private.pendingHashes, hash)
end

function MyAuctions.CanCancel(index)
	if Environment.IsRetail() then
		return not private.pendingFuture
	else
		local numPending = private.pendingDB:NewQuery()
			:Equal("isPending", true)
			:LessThanOrEqual("index", index)
			:CountAndRelease()
		return numPending == 0
	end
end

function MyAuctions.GetNumPending()
	if Environment.IsRetail() then
		return private.pendingFuture and 1 or 0
	else
		return private.pendingDB:NewQuery()
			:Equal("isPending", true)
			:CountAndRelease()
	end
end

function MyAuctions.GetAuctionInfo()
	if not DefaultUI.IsAuctionHouseVisible() then
		return
	end
	return private.auctionInfo.numPosted, private.auctionInfo.numSold, private.auctionInfo.postedGold, private.auctionInfo.soldGold
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.AuctionHouseClosed()
	if private.pendingFuture then
		private.pendingFuture:Cancel()
		private.pendingFuture = nil
	end
end

function private.ChatMsgSystemEventHandler(_, msg)
	if msg == ERR_AUCTION_REMOVED and #private.pendingHashes > 0 then
		local hash = tremove(private.pendingHashes, 1)
		assert(hash)
		Log.Info("Confirmed (hash=%d)", hash)
	end
end

function private.UIErrorMessageEventHandler(_, _, msg)
	if (msg == ERR_ITEM_NOT_FOUND or msg == ERR_NOT_ENOUGH_MONEY) and #private.pendingHashes > 0 then
		local hash = tremove(private.pendingHashes, 1)
		assert(hash)
		Log.Info("Failed to cancel (hash=%d)", hash)
		if private.expectedCounts[hash] then
			private.expectedCounts[hash] = private.expectedCounts[hash] + 1
		end
	end
end

function private.PendingFutureOnDone()
	local result = private.pendingFuture:GetValue()
	private.pendingFuture = nil
	local hash = tremove(private.pendingHashes, 1)
	assert(hash)
	if result then
		Log.Info("Confirmed (hash=%d)", hash)
	else
		Log.Info("Failed to cancel (hash=%d)", hash)
		if private.expectedCounts[hash] then
			private.expectedCounts[hash] = private.expectedCounts[hash] + 1
		end
		private.OnAuctionsUpdated()
		AuctionTracking.QueryOwnedAuctions()
	end
end

function private.GetNumRowsByHash(hash)
	return private.pendingDB:NewQuery()
		:Equal("hash", hash)
		:CountAndRelease()
end

function private.OnAuctionsUpdated()
	local minPendingIndexByHash = TempTable.Acquire()
	local numByHash = TempTable.Acquire()
	local query = AuctionTracking.CreateQuery()
		:OrderBy("index", true)
	for _, row in query:Iterator() do
		local index = row:GetField("index")
		local hash = row:CalculateHash(private.dbHashFields)
		numByHash[hash] = (numByHash[hash] or 0) + 1
		if not minPendingIndexByHash[hash] and private.pendingDB:GetUniqueRowField("index", index, "isPending") then
			minPendingIndexByHash[hash] = index
		end
	end
	local numUsed = TempTable.Acquire()
	private.pendingDB:TruncateAndBulkInsertStart()
	for _, row in query:Iterator() do
		local hash = row:CalculateHash(private.dbHashFields)
		assert(numByHash[hash] > 0)
		local expectedCount = private.expectedCounts[hash]
		local isPending = nil
		if not expectedCount then
			-- this was never pending
			isPending = false
		elseif numByHash[hash] <= expectedCount then
			-- this is no longer pending
			isPending = false
			private.expectedCounts[hash] = nil
		elseif row:GetField("index") >= (minPendingIndexByHash[hash] or math.huge) then
			local numPending = numByHash[hash] - expectedCount
			assert(numPending > 0)
			numUsed[hash] = (numUsed[hash] or 0) + 1
			isPending = numUsed[hash] <= numPending
		else
			-- it's a later auction which is pending
			isPending = false
		end
		private.pendingDB:BulkInsertNewRow(row:GetField("index"), hash, isPending, row:GetField("auctionId"))
	end
	private.pendingDB:BulkInsertEnd()
	TempTable.Release(numByHash)
	TempTable.Release(numUsed)
	TempTable.Release(minPendingIndexByHash)

	-- update the player's auction status
	private.auctionInfo.numPosted = 0
	private.auctionInfo.numSold = 0
	private.auctionInfo.postedGold = 0
	private.auctionInfo.soldGold = 0
	for _, row in query:Iterator() do
		local itemString, saleStatus, buyout, currentBid, stackSize = row:GetFields("itemString", "saleStatus", "buyout", "currentBid", "stackSize")
		if saleStatus == 1 then
			private.auctionInfo.numSold = private.auctionInfo.numSold + 1
			-- if somebody did a buyout, then bid will be equal to buyout, otherwise it'll be the winning bid
			private.auctionInfo.soldGold = private.auctionInfo.soldGold + currentBid
		else
			private.auctionInfo.numPosted = private.auctionInfo.numPosted + 1
			if ItemInfo.IsCommodity(itemString) then
				private.auctionInfo.postedGold = private.auctionInfo.postedGold + (buyout * stackSize)
			else
				private.auctionInfo.postedGold = private.auctionInfo.postedGold + buyout
			end
		end
	end
	query:Release()
end
