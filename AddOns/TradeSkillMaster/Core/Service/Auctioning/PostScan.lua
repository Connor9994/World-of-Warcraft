-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local PostScan = TSM.Auctioning:NewPackage("PostScan")
local Environment = TSM.Include("Environment")
local L = TSM.Include("Locale").GetTable()
local Database = TSM.Include("Util.Database")
local TempTable = TSM.Include("Util.TempTable")
local Table = TSM.Include("Util.Table")
local SlotId = TSM.Include("Util.SlotId")
local Delay = TSM.Include("Util.Delay")
local Math = TSM.Include("Util.Math")
local Log = TSM.Include("Util.Log")
local ItemString = TSM.Include("Util.ItemString")
local Container = TSM.Include("Util.Container")
local DefaultUI = TSM.Include("Service.DefaultUI")
local Threading = TSM.Include("Service.Threading")
local ItemInfo = TSM.Include("Service.ItemInfo")
local BagTracking = TSM.Include("Service.BagTracking")
local AuctionHouseWrapper = TSM.Include("Service.AuctionHouseWrapper")
local private = {
	scanThreadId = nil,
	queueDB = nil,
	nextQueueIndex = 1,
	bagDB = nil,
	itemList = {},
	operationDB = nil,
	debugLog = {},
	itemLocation = ItemLocation:CreateEmpty(),
	subRowsTemp = {},
	groupsQuery = nil, --luacheck: ignore 1004 - just stored for GC reasons
	operationsQuery = nil, --luacheck: ignore 1004 - just stored for GC reasons
	operationsChangedTimer = nil,
}
local RESET_REASON_LOOKUP = {
	minPrice = "postResetMin",
	maxPrice = "postResetMax",
	normalPrice = "postResetNormal"
}
local ABOVE_MAX_REASON_LOOKUP = {
	minPrice = "postAboveMaxMin",
	maxPrice = "postAboveMaxMax",
	normalPrice = "postAboveMaxNormal",
	none = "postAboveMaxNoPost"
}
local MAX_COMMODITY_STACKS_PER_AUCTION = 40



-- ============================================================================
-- Module Functions
-- ============================================================================

function PostScan.OnInitialize()
	private.operationsChangedTimer = Delay.CreateTimer("POST_SCAN_OPERATIONS_CHANGED", private.UpdateOperationDB)
	BagTracking.RegisterCallback(private.UpdateOperationDB)
	DefaultUI.RegisterAuctionHouseVisibleCallback(private.UpdateOperationDB, true)
	private.operationDB = Database.NewSchema("AUCTIONING_OPERATIONS")
		:AddUniqueStringField("autoBaseItemString")
		:AddStringField("firstOperation")
		:Commit()
	private.scanThreadId = Threading.New("POST_SCAN", private.ScanThread)
	private.queueDB = Database.NewSchema("AUCTIONING_POST_QUEUE")
		:AddNumberField("auctionId")
		:AddStringField("itemString")
		:AddStringField("operationName")
		:AddNumberField("bid")
		:AddNumberField("buyout")
		:AddNumberField("itemBid")
		:AddNumberField("itemBuyout")
		:AddNumberField("stackSize")
		:AddNumberField("numStacks")
		:AddNumberField("postTime")
		:AddNumberField("numProcessed")
		:AddNumberField("numConfirmed")
		:AddNumberField("numFailed")
		:AddIndex("auctionId")
		:AddIndex("itemString")
		:Commit()
	-- We maintain our own bag database rather than using the one in BagTracking since we need to be able to remove items
	-- as they are posted, without waiting for bag update events, and control when our DB updates.
	private.bagDB = Database.NewSchema("AUCTIONING_POST_BAGS")
		:AddStringField("itemString")
		:AddNumberField("bag")
		:AddNumberField("slot")
		:AddNumberField("quantity")
		:AddUniqueNumberField("slotId")
		:AddIndex("itemString")
		:AddIndex("slotId")
		:Commit()
	-- create a groups and operations query just to register for updates
	private.groupsQuery = TSM.Groups.CreateQuery()
		:SetUpdateCallback(private.OnGroupsOperationsChanged)
	private.operationsQuery = TSM.Operations.CreateQuery()
		:SetUpdateCallback(private.OnGroupsOperationsChanged)
end

function PostScan.CreateBagsQuery()
	return BagTracking.CreateQueryBagsAuctionable()
		:VirtualField("autoBaseItemString", "string", TSM.Groups.TranslateItemString, "itemString")
		:VirtualField("name", "string", ItemInfo.GetName, "autoBaseItemString", "")
		:Distinct("autoBaseItemString")
		:LeftJoin(private.operationDB, "autoBaseItemString")
		:OrderBy("name", true)
end

function PostScan.Prepare()
	return private.scanThreadId
end

function PostScan.GetCurrentRow()
	return private.queueDB:NewQuery()
		:Custom(private.NextProcessRowQueryHelper)
		:OrderBy("auctionId", true)
		:GetFirstResultAndRelease()
end

function PostScan.GetStatus()
	return TSM.Auctioning.Util.GetQueueStatus(private.queueDB:NewQuery())
end

function PostScan.DoProcess()
	local result, noRetry = nil, false
	local postRow = PostScan.GetCurrentRow()
	local itemString, stackSize, bid, buyout, itemBuyout, postTime = postRow:GetFields("itemString", "stackSize", "bid", "buyout", "itemBuyout", "postTime")
	local bag, slot = private.GetPostBagSlot(itemString, stackSize)
	if bag then
		local _, bagQuantity = Container.GetItemInfo(bag, slot)
		Log.Info("Posting %s x %d from %d,%d (%d)", itemString, stackSize, bag, slot, bagQuantity or -1)
		if Environment.HasFeature(Environment.FEATURES.AH_STACKS) then
			result = AuctionHouseWrapper.PostAuction(bag, slot, bid, buyout, postTime, stackSize, 1)
		else
			bid = Math.Round(bid / stackSize, COPPER_PER_SILVER)
			buyout = Math.Round(buyout / stackSize, COPPER_PER_SILVER)
			itemBuyout = Math.Round(itemBuyout, COPPER_PER_SILVER)
			private.itemLocation:Clear()
			private.itemLocation:SetBagAndSlot(bag, slot)
			local commodityStatus = C_AuctionHouse.GetItemCommodityStatus(private.itemLocation)
			if commodityStatus == Enum.ItemCommodityStatus.Item then
				result = AuctionHouseWrapper.PostItem(private.itemLocation, postTime, stackSize, (buyout == 0 or bid < buyout) and bid or nil, buyout > 0 and buyout or nil)
			elseif commodityStatus == Enum.ItemCommodityStatus.Commodity then
				result = AuctionHouseWrapper.PostCommodity(private.itemLocation, postTime, stackSize, itemBuyout)
			else
				error("Unknown commodity status: "..tostring(itemString))
			end
			if not result then
				Log.Err("Failed to post (%s, %s, %s)", itemString, bag, slot)
			end
		end
	else
		-- we couldn't find this item, so mark this post as failed and we'll try again later
		result = false
		noRetry = slot
		if noRetry then
			Log.PrintfUser(L["Failed to post %sx%d as the item no longer exists in your bags."], ItemInfo.GetLink(itemString), stackSize)
		end
	end
	if result then
		private.DebugLogInsert(itemString, "Posting %d from %d, %d", stackSize, bag, slot)
		if postRow:GetField("numProcessed") + 1 == postRow:GetField("numStacks") then
			-- update the log
			local auctionId = postRow:GetField("auctionId")
			TSM.Auctioning.Log.UpdateRowByIndex(auctionId, "state", "POSTED")
		end
	end
	postRow:SetField("numProcessed", postRow:GetField("numProcessed") + 1)
		:Update()
	postRow:Release()
	return result, noRetry
end

function PostScan.DoSkip()
	local postRow = PostScan.GetCurrentRow()
	local auctionId = postRow:GetField("auctionId")
	local numStacks = postRow:GetField("numStacks")
	postRow:SetField("numProcessed", numStacks)
		:SetField("numConfirmed", numStacks)
		:Update()
	postRow:Release()
	-- update the log
	TSM.Auctioning.Log.UpdateRowByIndex(auctionId, "state", "SKIPPED")
end

function PostScan.HandleConfirm(success, canRetry)
	if not success then
		ClearCursor()
	end

	local confirmRow = private.queueDB:NewQuery()
		:Custom(private.ConfirmRowQueryHelper)
		:OrderBy("auctionId", true)
		:GetFirstResultAndRelease()
	if not confirmRow then
		-- we may have posted something outside of TSM
		return
	end

	private.DebugLogInsert(confirmRow:GetField("itemString"), "HandleConfirm(success=%s) x %d", tostring(success), confirmRow:GetField("stackSize"))
	if canRetry then
		assert(not success)
		confirmRow:SetField("numFailed", confirmRow:GetField("numFailed") + 1)
	end
	confirmRow:SetField("numConfirmed", confirmRow:GetField("numConfirmed") + 1)
		:Update()
	confirmRow:Release()
end

function PostScan.PrepareFailedPosts()
	private.queueDB:SetQueryUpdatesPaused(true)
	local query = private.queueDB:NewQuery()
		:GreaterThan("numFailed", 0)
		:OrderBy("auctionId", true)
	for _, row in query:Iterator() do
		local numFailed, numProcessed, numConfirmed = row:GetFields("numFailed", "numProcessed", "numConfirmed")
		assert(numProcessed >= numFailed and numConfirmed >= numFailed)
		private.DebugLogInsert(row:GetField("itemString"), "Preparing failed (%d, %d, %d)", numFailed, numProcessed, numConfirmed)
		row:SetField("numFailed", 0)
			:SetField("numProcessed", numProcessed - numFailed)
			:SetField("numConfirmed", numConfirmed - numFailed)
			:Update()
	end
	query:Release()
	private.queueDB:SetQueryUpdatesPaused(false)
	private.UpdateBagDB()
end

function PostScan.Reset()
	private.queueDB:Truncate()
	private.nextQueueIndex = 1
	private.bagDB:Truncate()
end

function PostScan.ChangePostDetail(field, value)
	local postRow = PostScan.GetCurrentRow()
	local isCommodity = ItemInfo.IsCommodity(postRow:GetField("itemString"))
	if field == "bid" or field == "itemBid" then
		assert(not isCommodity)
		value = max(value, 1)
		local stackSize = postRow:GetField("stackSize")
		local itemBid = field == "itemBid" and value or floor(value / stackSize)
		local itemBuyout = postRow:GetField("itemBuyout")
		if itemBuyout > 0 then
			itemBid = min(itemBid, itemBuyout)
		end
		postRow:SetField("bid", itemBid * stackSize)
		postRow:SetField("itemBid", itemBid)
	elseif field == "buyout" or field == "itemBuyout" then
		local stackSize = postRow:GetField("stackSize")
		local itemBuyout = field == "itemBuyout" and value or floor(value / stackSize)
		if isCommodity or (itemBuyout > 0 and itemBuyout < postRow:GetField("itemBid")) then
			postRow:SetField("bid", itemBuyout * stackSize)
			postRow:SetField("itemBid", itemBuyout)
		end
		TSM.Auctioning.Log.UpdateRowByIndex(postRow:GetField("auctionId"), "buyout", itemBuyout)
		postRow:SetField("buyout", itemBuyout * stackSize)
		postRow:SetField("itemBuyout", itemBuyout)
	elseif field == "postTime" then
		postRow:SetField("postTime", value)
	else
		error("Invalid field: "..tostring(field))
	end
	postRow:Update()
	postRow:Release()
end



-- ============================================================================
-- Private Helper Functions (General)
-- ============================================================================

function private.OnGroupsOperationsChanged()
	private.operationsChangedTimer:RunForFrames(1)
end

function private.UpdateOperationDB()
	if not DefaultUI.IsAuctionHouseVisible() then
		return
	end
	private.operationDB:TruncateAndBulkInsertStart()
	local query = BagTracking.CreateQueryBagsAuctionable()
		:VirtualField("autoBaseItemString", "string", TSM.Groups.TranslateItemString, "itemString")
		:Select("autoBaseItemString")
		:Distinct("autoBaseItemString")
	for _, itemString in query:Iterator() do
		local firstOperation = TSM.Operations.GetFirstOperationByItem("Auctioning", itemString)
		if firstOperation then
			private.operationDB:BulkInsertNewRow(itemString, firstOperation)
		end
	end
	query:Release()
	private.operationDB:BulkInsertEnd()
end



-- ============================================================================
-- Scan Thread
-- ============================================================================

function private.ScanThread(auctionScan, scanContext)
	wipe(private.debugLog)
	auctionScan:SetScript("OnQueryDone", private.AuctionScanOnQueryDone)
	private.UpdateBagDB()

	-- get the state of the player's bags
	local bagCounts = TempTable.Acquire()
	local bagQuery = private.bagDB:NewQuery()
		:Select("itemString", "quantity")
	for _, itemString, quantity in bagQuery:Iterator() do
		bagCounts[itemString] = (bagCounts[itemString] or 0) + quantity
	end
	bagQuery:Release()

	-- generate the list of items we want to scan for
	wipe(private.itemList)
	for itemString, numHave in pairs(bagCounts) do
		private.DebugLogInsert(itemString, "Scan thread has %d", numHave)
		local groupPath = TSM.Groups.GetPathByItem(itemString)
		local contextFilter = scanContext.isItems and itemString or groupPath
		if groupPath and tContains(scanContext, contextFilter) and private.CanPostItem(itemString, groupPath, numHave) then
			tinsert(private.itemList, itemString)
		end
	end
	TempTable.Release(bagCounts)
	if #private.itemList == 0 then
		return
	end
	-- record this search
	TSM.Auctioning.SavedSearches.RecordSearch(scanContext, scanContext.isItems and "postItems" or "postGroups")

	-- run the scan
	auctionScan:AddItemListQueriesThreaded(private.itemList)
	for _, query in auctionScan:QueryIterator() do
		query:SetIsBrowseDoneFunction(private.QueryIsBrowseDoneFunction)
		query:AddCustomFilter(private.QueryBuyoutFilter)
	end
	if not auctionScan:ScanQueriesThreaded() then
		Log.PrintUser(L["TSM failed to scan some auctions. Please rerun the scan."])
	end
end



-- ============================================================================
-- Private Helper Functions for Scanning
-- ============================================================================

function private.UpdateBagDB()
	private.bagDB:TruncateAndBulkInsertStart()
	local query = BagTracking.CreateQueryBagsAuctionable()
		:OrderBy("slotId", true)
		:VirtualField("autoBaseItemString", "string", TSM.Groups.TranslateItemString, "itemString")
		:Select("slotId", "bag", "slot", "autoBaseItemString", "quantity")
	for _, slotId, bag, slot, itemString, quantity in query:Iterator() do
		private.DebugLogInsert(itemString, "Updating bag DB with %d in %d, %d", quantity, bag, slot)
		private.bagDB:BulkInsertNewRow(itemString, bag, slot, quantity, slotId)
	end
	query:Release()
	private.bagDB:BulkInsertEnd()
end

function private.CanPostItem(itemString, groupPath, numHave)
	local hasValidOperation, hasInvalidOperation = false, false
	for _, operationName, operationSettings in TSM.Operations.GroupOperationIterator("Auctioning", groupPath) do
		local isValid, numUsed = private.IsOperationValid(itemString, numHave, operationName, operationSettings)
		if isValid == true then
			assert(numUsed and numUsed > 0)
			numHave = numHave - numUsed
			hasValidOperation = true
		elseif isValid == false then
			hasInvalidOperation = true
		else
			-- we are ignoring this operation
			assert(isValid == nil, "Invalid return value")
		end
	end

	return hasValidOperation and not hasInvalidOperation
end

function private.IsOperationValid(itemString, num, operationName, operationSettings, noLog)
	local postCap = TSM.Auctioning.Util.GetPrice("postCap", operationSettings, itemString)
	if not postCap then
		-- invalid postCap setting
		if not TSM.db.global.auctioningOptions.disableInvalidMsg then
			Log.PrintfUser(L["Did not post %s because your post cap (%s) is invalid. Check your settings."], ItemInfo.GetLink(itemString), operationSettings.postCap)
		end
		if not noLog then
			TSM.Auctioning.Log.AddEntry(itemString, operationName, "invalidItemGroup", "", 0, math.huge)
		end
		return nil
	elseif postCap == 0 then
		-- posting is disabled, so ignore this operation
		if not noLog then
			TSM.Auctioning.Log.AddEntry(itemString, operationName, "postDisabled", "", 0, math.huge)
		end
		return nil
	end

	local stackSize = nil
	local minPostQuantity = nil
	if Environment.HasFeature(Environment.FEATURES.AH_STACKS) then
		-- check the stack size
		stackSize = TSM.Auctioning.Util.GetPrice("stackSize", operationSettings, itemString)
		if not stackSize then
			-- invalid stackSize setting
			if not TSM.db.global.auctioningOptions.disableInvalidMsg then
				Log.PrintfUser(L["Did not post %s because your stack size (%s) is invalid. Check your settings."], ItemInfo.GetLink(itemString), operationSettings.stackSize)
			end
			if not noLog then
				TSM.Auctioning.Log.AddEntry(itemString, operationName, "invalidItemGroup", "", 0, math.huge)
			end
			return nil
		end
		local maxStackSize = ItemInfo.GetMaxStack(itemString)
		minPostQuantity = operationSettings.stackSizeIsCap and 1 or stackSize
		if not maxStackSize then
			-- couldn't lookup item info for this item (shouldn't happen)
			if not TSM.db.global.auctioningOptions.disableInvalidMsg then
				Log.PrintfUser(L["Did not post %s because Blizzard didn't provide all necessary information for it. Try again later."], ItemInfo.GetLink(itemString))
			end
			if not noLog then
				TSM.Auctioning.Log.AddEntry(itemString, operationName, "invalidItemGroup", "", 0, math.huge)
			end
			return false
		elseif maxStackSize < minPostQuantity then
			-- invalid stack size
			return nil
		end
	else
		minPostQuantity = 1
	end

	-- check that we have enough to post
	local keepQuantity = TSM.Auctioning.Util.GetPrice("keepQuantity", operationSettings, itemString)
	if not keepQuantity then
		-- invalid keepQuantity setting
		if not TSM.db.global.auctioningOptions.disableInvalidMsg then
			Log.PrintfUser(L["Did not post %s because your keep quantity (%s) is invalid. Check your settings."], ItemInfo.GetLink(itemString), operationSettings.keepQuantity)
		end
		if not noLog then
			TSM.Auctioning.Log.AddEntry(itemString, operationName, "invalidItemGroup", "", 0, math.huge)
		end
		return nil
	end
	num = num - keepQuantity
	if num < minPostQuantity then
		-- not enough items to post for this operation
		if not noLog then
			TSM.Auctioning.Log.AddEntry(itemString, operationName, "postNotEnough", "", 0, math.huge)
		end
		return nil
	end

	-- check the max expires
	local maxExpires = TSM.Auctioning.Util.GetPrice("maxExpires", operationSettings, itemString)
	if not maxExpires then
		-- invalid maxExpires setting
		if not TSM.db.global.auctioningOptions.disableInvalidMsg then
			Log.PrintfUser(L["Did not post %s because your max expires (%s) is invalid. Check your settings."], ItemInfo.GetLink(itemString), operationSettings.maxExpires)
		end
		if not noLog then
			TSM.Auctioning.Log.AddEntry(itemString, operationName, "invalidItemGroup", "", 0, math.huge)
		end
		return nil
	end
	if maxExpires > 0 then
		local numExpires = TSM.Accounting.Auctions.GetNumExpiresSinceSale(itemString)
		if numExpires and numExpires > maxExpires then
			-- too many expires, so ignore this operation
			if not noLog then
				TSM.Auctioning.Log.AddEntry(itemString, operationName, "postMaxExpires", "", 0, math.huge)
			end
			return nil
		end
	end

	local errMsg = nil
	local minPrice = TSM.Auctioning.Util.GetPrice("minPrice", operationSettings, itemString)
	local normalPrice = TSM.Auctioning.Util.GetPrice("normalPrice", operationSettings, itemString)
	local maxPrice = TSM.Auctioning.Util.GetPrice("maxPrice", operationSettings, itemString)
	local undercut = TSM.Auctioning.Util.GetPrice("undercut", operationSettings, itemString)
	if not minPrice then
		errMsg = format(L["Did not post %s because your minimum price (%s) is invalid. Check your settings."], ItemInfo.GetLink(itemString), operationSettings.minPrice)
	elseif not maxPrice then
		errMsg = format(L["Did not post %s because your maximum price (%s) is invalid. Check your settings."], ItemInfo.GetLink(itemString), operationSettings.maxPrice)
	elseif not normalPrice then
		errMsg = format(L["Did not post %s because your normal price (%s) is invalid. Check your settings."], ItemInfo.GetLink(itemString), operationSettings.normalPrice)
	elseif not undercut then
		errMsg = format(L["Did not post %s because your undercut (%s) is invalid. Check your settings."], ItemInfo.GetLink(itemString), operationSettings.undercut)
	elseif normalPrice < minPrice then
		errMsg = format(L["Did not post %s because your normal price (%s) is lower than your minimum price (%s). Check your settings."], ItemInfo.GetLink(itemString), operationSettings.normalPrice, operationSettings.minPrice)
	elseif maxPrice < minPrice then
		errMsg = format(L["Did not post %s because your maximum price (%s) is lower than your minimum price (%s). Check your settings."], ItemInfo.GetLink(itemString), operationSettings.maxPrice, operationSettings.minPrice)
	end

	if errMsg then
		if not TSM.db.global.auctioningOptions.disableInvalidMsg then
			Log.PrintUser(errMsg)
		end
		if not noLog then
			TSM.Auctioning.Log.AddEntry(itemString, operationName, "invalidItemGroup", "", 0, math.huge)
		end
		return false
	else
		local vendorSellPrice = ItemInfo.GetVendorSell(itemString) or 0
		if vendorSellPrice > 0 and minPrice <= vendorSellPrice / 0.95 then
			-- just a warning, not an error
			Log.PrintfUser(L["WARNING: Your minimum price for %s is below its vendorsell price (with AH cut taken into account). Consider raising your minimum price, or vendoring the item."], ItemInfo.GetLink(itemString))
		end
		if Environment.HasFeature(Environment.FEATURES.AH_STACKS) then
			if not operationSettings.stackSizeIsCap then
				num = Math.Floor(num, stackSize)
			end
			num = min(stackSize * postCap, num)
		else
			num = min(num, postCap)
		end
		return true, num
	end
end

function private.QueryBuyoutFilter(_, row)
	local _, itemBuyout, minItemBuyout = row:GetBuyouts()
	return (itemBuyout and itemBuyout == 0) or (minItemBuyout and minItemBuyout == 0)
end

function private.QueryIsBrowseDoneFunction(query)
	if Environment.IsRetail() then
		return false
	end
	local isDone = true
	for itemString in query:ItemIterator() do
		isDone = isDone and private.QueryIsBrowseDoneForItem(query, itemString)
	end
	return isDone
end

function private.QueryIsBrowseDoneForItem(query, itemString)
	local groupPath = TSM.Groups.GetPathByItem(itemString)
	if not groupPath then
		return true
	end
	local isFilterDone = true
	for _, _, operationSettings in TSM.Operations.GroupOperationIterator("Auctioning", groupPath) do
		if isFilterDone then
			local numBuyouts, minItemBuyout, maxItemBuyout = 0, nil, nil
			for _, subRow in query:ItemSubRowIterator(itemString) do
				local _, itemBuyout = subRow:GetBuyouts()
				local timeLeft = subRow:GetListingInfo()
				local quantity = subRow:GetQuantities()
				if not TSM.Auctioning.Util.IsFiltered(itemString, operationSettings, itemBuyout, quantity, timeLeft) then
					numBuyouts = numBuyouts + 1
					minItemBuyout = min(minItemBuyout or math.huge, itemBuyout)
					maxItemBuyout = max(maxItemBuyout or 0, itemBuyout)
				end
			end
			if numBuyouts <= 1 then
				-- there is only one distinct item buyout, so can't stop yet
				isFilterDone = false
			else
				local minPrice = TSM.Auctioning.Util.GetPrice("minPrice", operationSettings, itemString)
				local undercut = TSM.Auctioning.Util.GetPrice("undercut", operationSettings, itemString)
				if not minPrice or not undercut then
					-- the min price or undercut is not valid, so just keep scanning
					isFilterDone = false
				elseif minItemBuyout - undercut <= minPrice then
					local resetPrice = TSM.Auctioning.Util.GetPrice("priceReset", operationSettings, itemString)
					if operationSettings.priceReset == "ignore" or (resetPrice and maxItemBuyout <= resetPrice) then
						-- we need to keep scanning to handle the reset price (always keep scanning for "ignore")
						isFilterDone = false
					end
				end
			end
		end
	end
	return isFilterDone
end

function private.AuctionScanOnQueryDone(_, query)
	for itemString in query:ItemIterator() do
		local groupPath = TSM.Groups.GetPathByItem(itemString)
		if groupPath then
			local numHave = 0
			local bagQuery = private.bagDB:NewQuery()
				:Select("quantity", "bag", "slot")
				:Equal("itemString", itemString)
			for _, quantity, bag, slot in bagQuery:Iterator() do
				numHave = numHave + quantity
				private.DebugLogInsert(itemString, "Filter done and have %d in %d, %d", numHave, bag, slot)
			end
			bagQuery:Release()

			for _, operationName, operationSettings in TSM.Operations.GroupOperationIterator("Auctioning", groupPath) do
				if private.IsOperationValid(itemString, numHave, operationName, operationSettings, true) then
					local keepQuantity = TSM.Auctioning.Util.GetPrice("keepQuantity", operationSettings, itemString)
					assert(keepQuantity)
					local operationNumHave = numHave - keepQuantity
					if operationNumHave > 0 then
						assert(not next(private.subRowsTemp))
						TSM.Auctioning.Util.GetFilteredSubRows(query, itemString, operationSettings, private.subRowsTemp)
						local reason, numUsed, itemBuyout, seller, auctionId = private.GeneratePosts(itemString, operationName, operationSettings, operationNumHave, private.subRowsTemp)
						wipe(private.subRowsTemp)
						numHave = numHave - (numUsed or 0)
						seller = seller or ""
						auctionId = auctionId or math.huge
						TSM.Auctioning.Log.AddEntry(itemString, operationName, reason, seller, itemBuyout or 0, auctionId)
					end
				end
			end
			assert(numHave >= 0)
		else
			Log.Warn("Item removed from group since start of scan: %s", itemString)
		end
	end
end

function private.GeneratePosts(itemString, operationName, operationSettings, numHave, subRows)
	if numHave == 0 then
		return "postNotEnough"
	end

	local perAuction, maxCanPost = nil, nil
	local postCap = TSM.Auctioning.Util.GetPrice("postCap", operationSettings, itemString)
	if Environment.HasFeature(Environment.FEATURES.AH_STACKS) then
		local stackSize = TSM.Auctioning.Util.GetPrice("stackSize", operationSettings, itemString)
		local maxStackSize = ItemInfo.GetMaxStack(itemString)
		if stackSize > maxStackSize and not operationSettings.stackSizeIsCap then
			return "postNotEnough"
		end

		perAuction = min(stackSize, maxStackSize)
		maxCanPost = min(floor(numHave / perAuction), postCap)
		if maxCanPost == 0 then
			if operationSettings.stackSizeIsCap then
				perAuction = numHave
				maxCanPost = 1
			else
				-- not enough for single post
				return "postNotEnough"
			end
		end
	else
		perAuction = min(postCap, numHave)
		maxCanPost = 1
	end

	local lowestAuction = TempTable.Acquire()
	if not TSM.Auctioning.Util.GetLowestAuction(subRows, itemString, operationSettings, lowestAuction) then
		TempTable.Release(lowestAuction)
		lowestAuction = nil
	end
	local minPrice = TSM.Auctioning.Util.GetPrice("minPrice", operationSettings, itemString)
	local normalPrice = TSM.Auctioning.Util.GetPrice("normalPrice", operationSettings, itemString)
	local maxPrice = TSM.Auctioning.Util.GetPrice("maxPrice", operationSettings, itemString)
	local undercut = TSM.Auctioning.Util.GetPrice("undercut", operationSettings, itemString)
	local resetPrice = TSM.Auctioning.Util.GetPrice("priceReset", operationSettings, itemString)
	local aboveMax = TSM.Auctioning.Util.GetPrice("aboveMax", operationSettings, itemString)

	local reason, bid, buyout, seller, activeAuctions = nil, nil, nil, nil, 0
	if not lowestAuction then
		-- post as many as we can at the normal price
		reason = "postNormal"
		buyout = normalPrice
	elseif lowestAuction.hasInvalidSeller then
		-- we didn't get all the necessary seller info
		Log.PrintfUser(L["The seller name of the lowest auction for %s was not given by the server. Skipping this item."], ItemInfo.GetLink(itemString))
		TempTable.Release(lowestAuction)
		return "invalidSeller"
	elseif lowestAuction.isBlacklist and lowestAuction.isPlayer then
		Log.PrintfUser(L["Did not post %s because you or one of your alts (%s) is on the blacklist which is not allowed. Remove this character from your blacklist."], ItemInfo.GetLink(itemString), lowestAuction.seller)
		TempTable.Release(lowestAuction)
		return "invalidItemGroup"
	elseif lowestAuction.isBlacklist and lowestAuction.isWhitelist then
		Log.PrintfUser(L["Did not post %s because the owner of the lowest auction (%s) is on both the blacklist and whitelist which is not allowed. Adjust your settings to correct this issue."], ItemInfo.GetLink(itemString), lowestAuction.seller)
		TempTable.Release(lowestAuction)
		return "invalidItemGroup"
	elseif lowestAuction.buyout - undercut < minPrice then
		seller = lowestAuction.seller
		if resetPrice then
			-- lowest is below the min price, but there is a reset price
			assert(RESET_REASON_LOOKUP[operationSettings.priceReset], "Unexpected 'below minimum price' setting: "..tostring(operationSettings.priceReset))
			reason = RESET_REASON_LOOKUP[operationSettings.priceReset]
			buyout = resetPrice
			bid = max(bid or buyout * operationSettings.bidPercent, minPrice)
			activeAuctions = TSM.Auctioning.Util.GetPlayerAuctionCount(subRows, itemString, operationSettings, floor(bid), buyout, perAuction)
		elseif lowestAuction.isBlacklist then
			-- undercut the blacklisted player
			reason = "postBlacklist"
			buyout = lowestAuction.buyout - undercut
		else
			-- don't post this item
			TempTable.Release(lowestAuction)
			return "postBelowMin", nil, nil, seller
		end
	elseif lowestAuction.isPlayer or (lowestAuction.isWhitelist and TSM.db.global.auctioningOptions.matchWhitelist) then
		-- we (or a whitelisted play we should match) are lowest, so match the current price and post as many as we can
		activeAuctions = TSM.Auctioning.Util.GetPlayerAuctionCount(subRows, itemString, operationSettings, lowestAuction.bid, lowestAuction.buyout, perAuction)
		if lowestAuction.isPlayer then
			reason = "postPlayer"
		else
			reason = "postWhitelist"
		end
		bid = lowestAuction.bid
		buyout = lowestAuction.buyout
		seller = lowestAuction.seller
	elseif lowestAuction.isWhitelist then
		-- don't undercut a whitelisted player
		seller = lowestAuction.seller
		TempTable.Release(lowestAuction)
		return "postWhitelistNoPost", nil, nil, seller
	elseif (lowestAuction.buyout - undercut) > maxPrice then
		-- we'd be posting above the max price, so resort to the aboveMax setting
		seller = lowestAuction.seller
		if operationSettings.aboveMax == "none" then
			TempTable.Release(lowestAuction)
			return "postAboveMaxNoPost", nil, nil, seller
		end
		assert(ABOVE_MAX_REASON_LOOKUP[operationSettings.aboveMax], "Unexpected 'above max price' setting: "..tostring(operationSettings.aboveMax))
		reason = ABOVE_MAX_REASON_LOOKUP[operationSettings.aboveMax]
		buyout = aboveMax
	else
		-- we just need to do a normal undercut of the lowest auction
		reason = "postUndercut"
		buyout = lowestAuction.buyout - undercut
		seller = lowestAuction.seller
	end
	if reason == "postBlacklist" then
		bid = bid or buyout * operationSettings.bidPercent
	else
		buyout = max(buyout, minPrice)
		bid = max(bid or buyout * operationSettings.bidPercent, minPrice)
	end
	if lowestAuction then
		TempTable.Release(lowestAuction)
	end
	if Environment.HasFeature(Environment.FEATURES.AH_COPPER) then
		bid = floor(bid)
	else
		bid = max(Math.Round(bid, COPPER_PER_SILVER), COPPER_PER_SILVER)
		buyout = max(Math.Round(buyout, COPPER_PER_SILVER), COPPER_PER_SILVER)
	end

	bid = min(bid, Environment.HasFeature(Environment.FEATURES.AH_COPPER) and MAXIMUM_BID_PRICE or MAXIMUM_BID_PRICE - 99)
	buyout = min(buyout, Environment.HasFeature(Environment.FEATURES.AH_COPPER) and MAXIMUM_BID_PRICE or MAXIMUM_BID_PRICE - 99)

	-- check if we can't post anymore
	local queueQuery = private.queueDB:NewQuery()
		:Select("numStacks")
		:Equal("itemString", itemString)
		:Equal("stackSize", perAuction)
		:Equal("itemBuyout", buyout)
	for _, numStacks in queueQuery:Iterator() do
		activeAuctions = activeAuctions + numStacks
	end
	queueQuery:Release()
	if Environment.HasFeature(Environment.FEATURES.AH_STACKS) then
		maxCanPost = min(postCap - activeAuctions, maxCanPost)
	else
		perAuction = min(postCap - activeAuctions, perAuction)
	end
	if maxCanPost <= 0 or perAuction <= 0 then
		return "postTooMany"
	end

	if Environment.HasFeature(Environment.FEATURES.AH_STACKS) and (bid * perAuction > MAXIMUM_BID_PRICE or buyout * perAuction > MAXIMUM_BID_PRICE) then
		Log.PrintfUser(L["The buyout price for %s would be above the maximum allowed price. Skipping this item."], ItemInfo.GetLink(itemString))
		return "invalidItemGroup"
	end

	-- insert the posts into our DB
	local auctionId = private.nextQueueIndex
	local postTime = operationSettings.duration
	local extraStack = 0
	if Environment.HasFeature(Environment.FEATURES.AH_STACKS)  then
		private.AddToQueue(itemString, operationName, bid, buyout, perAuction, maxCanPost, postTime)
		-- check if we can post an extra partial stack
		extraStack = (maxCanPost < postCap and operationSettings.stackSizeIsCap and (numHave % perAuction)) or 0
	else
		assert(maxCanPost == 1)
		if ItemInfo.IsCommodity(itemString) then
			local maxPerAuction = ItemInfo.GetMaxStack(itemString) * MAX_COMMODITY_STACKS_PER_AUCTION
			maxCanPost = floor(perAuction / maxPerAuction)
			-- check if we can post an extra partial stack
			extraStack = perAuction % maxPerAuction
			perAuction = min(perAuction, maxPerAuction)
			bid = buyout
		else
			-- post non-commodities as single stacks
			maxCanPost = perAuction
			perAuction = 1
		end
		assert(maxCanPost > 0 or extraStack > 0)
		if maxCanPost > 0 then
			private.AddToQueue(itemString, operationName, bid, buyout, perAuction, maxCanPost, postTime)
		end
	end
	if extraStack > 0 then
		private.AddToQueue(itemString, operationName, bid, buyout, extraStack, 1, postTime)
	end
	return reason, (perAuction * maxCanPost) + extraStack, buyout, seller, auctionId
end

function private.AddToQueue(itemString, operationName, itemBid, itemBuyout, stackSize, numStacks, postTime)
	private.DebugLogInsert(itemString, "Queued %d stacks of %d", stackSize, numStacks)
	private.queueDB:NewRow()
		:SetField("auctionId", private.nextQueueIndex)
		:SetField("itemString", itemString)
		:SetField("operationName", operationName)
		:SetField("bid", itemBid * stackSize)
		:SetField("buyout", itemBuyout * stackSize)
		:SetField("itemBid", itemBid)
		:SetField("itemBuyout", itemBuyout)
		:SetField("stackSize", stackSize)
		:SetField("numStacks", numStacks)
		:SetField("postTime", postTime)
		:SetField("numProcessed", 0)
		:SetField("numConfirmed", 0)
		:SetField("numFailed", 0)
		:Create()
	private.nextQueueIndex = private.nextQueueIndex + 1
end



-- ============================================================================
-- Private Helper Functions for Posting
-- ============================================================================

function private.GetPostBagSlot(itemString, quantity)
	-- start with the slot which is closest to the desired stack size
	local bag, slot = private.bagDB:NewQuery()
		:Select("bag", "slot")
		:Equal("itemString", itemString)
		:GreaterThanOrEqual("quantity", quantity)
		:OrderBy("quantity", true)
		:GetFirstResultAndRelease()
	if not bag then
		bag, slot = private.bagDB:NewQuery()
			:Select("bag", "slot")
			:Equal("itemString", itemString)
			:LessThanOrEqual("quantity", quantity)
			:OrderBy("quantity", false)
			:GetFirstResultAndRelease()
	end
	if not bag or not slot then
		-- this item was likely removed from the player's bags, so just give up
		Log.Err("Failed to find initial bag / slot (%s, %d)", itemString, quantity)
		return nil, true
	end
	local removeContext = TempTable.Acquire()
	bag, slot = private.ItemBagSlotHelper(itemString, bag, slot, quantity, removeContext)

	local bagItemString = ItemString.Get(Container.GetItemLink(bag, slot))
	if not bagItemString or TSM.Groups.TranslateItemString(bagItemString) ~= itemString then
		-- something changed with the player's bags so we can't post the item right now
		TempTable.Release(removeContext)
		private.DebugLogInsert(itemString, "Bags changed")
		return nil, nil
	end
	local _, _, _, quality = Container.GetItemInfo(bag, slot)
	assert(quality)
	if quality == -1 then
		-- the game client doesn't have item info cached for this item, so we can't post it yet
		TempTable.Release(removeContext)
		private.DebugLogInsert(itemString, "No item info")
		return nil, nil
	end
	for slotId, removeQuantity in pairs(removeContext) do
		private.RemoveBagQuantity(slotId, removeQuantity)
	end
	TempTable.Release(removeContext)
	private.DebugLogInsert(itemString, "GetPostBagSlot(%d) -> %d, %d", quantity, bag, slot)
	return bag, slot
end

function private.ItemBagSlotHelper(itemString, bag, slot, quantity, removeContext)
	local slotId = SlotId.Join(bag, slot)

	-- try to post completely from the selected slot
	local found = private.bagDB:NewQuery()
		:Select("slotId")
		:Equal("slotId", slotId)
		:GreaterThanOrEqual("quantity", quantity)
		:GetFirstResultAndRelease()
	if found then
		removeContext[slotId] = quantity
		return bag, slot
	end

	-- try to find a stack at a lower slot which has enough to post from
	local foundSlotId, foundBag, foundSlot = private.bagDB:NewQuery()
		:Select("slotId", "bag", "slot")
		:Equal("itemString", itemString)
		:LessThan("slotId", slotId)
		:GreaterThanOrEqual("quantity", quantity)
		:OrderBy("slotId", true)
		:GetFirstResultAndRelease()
	if foundSlotId then
		removeContext[foundSlotId] = quantity
		return foundBag, foundSlot
	end

	-- try to post using the selected slot and the lower slots
	local selectedQuantity = private.bagDB:NewQuery()
		:Select("quantity")
		:Equal("slotId", slotId)
		:GetFirstResultAndRelease()
	local query = private.bagDB:NewQuery()
		:Select("slotId", "quantity")
		:Equal("itemString", itemString)
		:LessThan("slotId", slotId)
		:OrderBy("slotId", true)
	local numNeeded = quantity - selectedQuantity
	local numUsed = 0
	local usedSlotIds = TempTable.Acquire()
	for _, rowSlotId, rowQuantity in query:Iterator() do
		if numNeeded ~= numUsed then
			numUsed = min(numUsed + rowQuantity, numNeeded)
			tinsert(usedSlotIds, rowSlotId)
		end
	end
	query:Release()
	if numNeeded == numUsed then
		removeContext[slotId] = selectedQuantity
		for _, rowSlotId in TempTable.Iterator(usedSlotIds) do
			local rowQuantity = private.bagDB:GetUniqueRowField("slotId", rowSlotId, "quantity")
			local rowNumUsed = min(numUsed, rowQuantity)
			numUsed = numUsed - rowNumUsed
			removeContext[rowSlotId] = (removeContext[rowSlotId] or 0) + rowNumUsed
		end
		return bag, slot
	else
		TempTable.Release(usedSlotIds)
	end

	-- try posting from the next highest slot
	local rowBag, rowSlot = private.bagDB:NewQuery()
		:Select("bag", "slot")
		:Equal("itemString", itemString)
		:GreaterThan("slotId", slotId)
		:OrderBy("slotId", true)
		:GetFirstResultAndRelease()
	if not rowBag or not rowSlot then
		private.ErrorForItem(itemString, "Failed to find next highest bag / slot")
	end
	return private.ItemBagSlotHelper(itemString, rowBag, rowSlot, quantity, removeContext)
end

function private.RemoveBagQuantity(slotId, quantity)
	local row = private.bagDB:GetUniqueRow("slotId", slotId)
	local remainingQuantity = row:GetField("quantity") - quantity
	private.DebugLogInsert(row:GetField("itemString"), "Removing %d (%d remain) from %d", quantity, remainingQuantity, slotId)
	if remainingQuantity > 0 then
		row:SetField("quantity", remainingQuantity)
			:Update()
	else
		assert(remainingQuantity == 0)
		private.bagDB:DeleteRow(row)
	end
	row:Release()
end

function private.ConfirmRowQueryHelper(row)
	return row:GetField("numConfirmed") < row:GetField("numProcessed")
end

function private.NextProcessRowQueryHelper(row)
	return row:GetField("numProcessed") < row:GetField("numStacks")
end

function private.DebugLogInsert(itemString, ...)
	Table.InsertMultiple(private.debugLog, itemString, format(...))
end

function private.ErrorForItem(itemString, errorStr)
	for _, debugItemString, msg in Table.StrideIterator(private.debugLog, 2) do
		if debugItemString == itemString then
			Log.Info(msg)
		end
	end
	Log.Info("Bag state:")
	for _, slotId in Container.GetBagSlotIterator() do
		local bag, slot = SlotId.Split(slotId)
		if ItemString.GetBase(Container.GetItemLink(bag, slot)) == itemString then
			local _, stackSize = Container.GetItemInfo(bag, slot)
			Log.Info("%d in %d, %d", stackSize, bag, slot)
		end
	end
	error(errorStr, 2)
end
