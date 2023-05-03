-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local CancelScan = TSM.Auctioning:NewPackage("CancelScan")
local Environment = TSM.Include("Environment")
local L = TSM.Include("Locale").GetTable()
local Database = TSM.Include("Util.Database")
local TempTable = TSM.Include("Util.TempTable")
local ItemString = TSM.Include("Util.ItemString")
local Log = TSM.Include("Util.Log")
local Threading = TSM.Include("Service.Threading")
local ItemInfo = TSM.Include("Service.ItemInfo")
local AuctionTracking = TSM.Include("Service.AuctionTracking")
local AuctionHouseWrapper = TSM.Include("Service.AuctionHouseWrapper")
local private = {
	scanThreadId = nil,
	queueDB = nil,
	itemList = {},
	usedAuctionIndex = {},
	subRowsTemp = {},
}



-- ============================================================================
-- Module Functions
-- ============================================================================

function CancelScan.OnInitialize()
	-- initialize thread
	private.scanThreadId = Threading.New("CANCEL_SCAN", private.ScanThread)
	private.queueDB = Database.NewSchema("AUCTIONING_CANCEL_QUEUE")
		:AddNumberField("auctionId")
		:AddStringField("itemString")
		:AddStringField("operationName")
		:AddNumberField("bid")
		:AddNumberField("buyout")
		:AddNumberField("itemBid")
		:AddNumberField("itemBuyout")
		:AddNumberField("stackSize")
		:AddNumberField("duration")
		:AddNumberField("numStacks")
		:AddNumberField("numProcessed")
		:AddNumberField("numConfirmed")
		:AddNumberField("numFailed")
		:AddIndex("auctionId")
		:AddIndex("itemString")
		:Commit()
end

function CancelScan.Prepare()
	return private.scanThreadId
end

function CancelScan.GetCurrentRow()
	return private.queueDB:NewQuery()
		:Custom(private.NextProcessRowQueryHelper)
		:OrderBy("auctionId", false)
		:GetFirstResultAndRelease()
end

function CancelScan.GetStatus()
	return TSM.Auctioning.Util.GetQueueStatus(private.queueDB:NewQuery())
end

function CancelScan.DoProcess()
	local cancelRow = CancelScan.GetCurrentRow()
	local cancelItemString = cancelRow:GetField("itemString")
	local query = AuctionTracking.CreateQueryUnsoldItem(cancelItemString)
		:Equal("stackSize", cancelRow:GetField("stackSize"))
		:VirtualField("autoBaseItemString", "string", TSM.Groups.TranslateItemString, "itemString")
		:Equal("autoBaseItemString", cancelItemString)
		:Custom(private.ProcessQueryHelper, cancelRow)
		:OrderBy("auctionId", false)
		:Select("auctionId", "autoBaseItemString", "currentBid", "buyout")
	if not TSM.db.global.auctioningOptions.cancelWithBid then
		query:Equal("highBidder", "")
	end
	local auctionId, itemString, currentBid, buyout = query:GetFirstResultAndRelease()
	if auctionId then
		local usedAuctionIndex = Environment.IsRetail() and auctionId or (itemString..buyout..currentBid..auctionId)
		private.usedAuctionIndex[usedAuctionIndex] = true
		local result = AuctionHouseWrapper.CancelAuction(auctionId)
		local isRowDone = cancelRow:GetField("numProcessed") + 1 == cancelRow:GetField("numStacks")
		cancelRow:SetField("numProcessed", cancelRow:GetField("numProcessed") + 1)
			:Update()
		cancelRow:Release()
		if result and isRowDone then
			-- update the log
			TSM.Auctioning.Log.UpdateRowByIndex(auctionId, "state", "CANCELLED")
		end
		return result, false
	end

	-- we couldn't find this item, so mark this cancel as failed and we'll try again later
	cancelRow:SetField("numProcessed", cancelRow:GetField("numProcessed") + 1)
		:Update()
	cancelRow:Release()
	return false, false
end

function CancelScan.DoSkip()
	local cancelRow = CancelScan.GetCurrentRow()
	local auctionId = cancelRow:GetField("auctionId")
	cancelRow:SetField("numProcessed", cancelRow:GetField("numProcessed") + 1)
		:SetField("numConfirmed", cancelRow:GetField("numConfirmed") + 1)
		:Update()
	cancelRow:Release()
	-- update the log
	TSM.Auctioning.Log.UpdateRowByIndex(auctionId, "state", "SKIPPED")
end

function CancelScan.HandleConfirm(success, canRetry)
	local confirmRow = private.queueDB:NewQuery()
		:Custom(private.ConfirmRowQueryHelper)
		:OrderBy("auctionId", true)
		:GetFirstResultAndRelease()
	if not confirmRow then
		-- we may have cancelled something outside of TSM
		return
	end

	if canRetry then
		assert(not success)
		confirmRow:SetField("numFailed", confirmRow:GetField("numFailed") + 1)
	end
	confirmRow:SetField("numConfirmed", confirmRow:GetField("numConfirmed") + 1)
		:Update()
	confirmRow:Release()
end

function CancelScan.PrepareFailedCancels()
	wipe(private.usedAuctionIndex)
	private.queueDB:SetQueryUpdatesPaused(true)
	local query = private.queueDB:NewQuery()
		:GreaterThan("numFailed", 0)
	for _, row in query:Iterator() do
		local numFailed, numProcessed, numConfirmed = row:GetFields("numFailed", "numProcessed", "numConfirmed")
		assert(numProcessed >= numFailed and numConfirmed >= numFailed)
		row:SetField("numFailed", 0)
			:SetField("numProcessed", numProcessed - numFailed)
			:SetField("numConfirmed", numConfirmed - numFailed)
			:Update()
	end
	query:Release()
	private.queueDB:SetQueryUpdatesPaused(false)
end

function CancelScan.Reset()
	private.queueDB:Truncate()
	wipe(private.usedAuctionIndex)
end



-- ============================================================================
-- Scan Thread
-- ============================================================================

function private.ScanThread(auctionScan, groupList)
	auctionScan:SetScript("OnQueryDone", private.AuctionScanOnQueryDone)

	-- generate the list of items we want to scan for
	wipe(private.itemList)
	local processedItems = TempTable.Acquire()
	local query = AuctionTracking.CreateQueryUnsold()
		:VirtualField("autoBaseItemString", "string", TSM.Groups.TranslateItemString, "itemString")
		:Select("autoBaseItemString")
	if not TSM.db.global.auctioningOptions.cancelWithBid then
		query:Equal("highBidder", "")
	end
	for _, itemString in query:Iterator() do
		if not processedItems[itemString] and private.CanCancelItem(itemString, groupList) then
			tinsert(private.itemList, itemString)
		end
		processedItems[itemString] = true
	end
	query:Release()
	TempTable.Release(processedItems)

	if #private.itemList == 0 then
		return
	end
	TSM.Auctioning.SavedSearches.RecordSearch(groupList, "cancelGroups")

	-- run the scan
	auctionScan:AddItemListQueriesThreaded(private.itemList)
	for _, query2 in auctionScan:QueryIterator() do
		query2:AddCustomFilter(private.QueryBuyoutFilter)
	end
	if not auctionScan:ScanQueriesThreaded() then
		Log.PrintUser(L["TSM failed to scan some auctions. Please rerun the scan."])
	end
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.CanCancelItem(itemString, groupList)
	local groupPath = TSM.Groups.GetPathByItem(itemString)
	if not groupPath or not tContains(groupList, groupPath) then
		return false
	end

	local hasValidOperation, hasInvalidOperation = false, false
	for _, operationName, operationSettings in TSM.Operations.GroupOperationIterator("Auctioning", groupPath) do
		local isValid = private.IsOperationValid(itemString, operationName, operationSettings)
		if isValid == true then
			hasValidOperation = true
		elseif isValid == false then
			hasInvalidOperation = true
		else
			-- we are ignoring this operation
			assert(isValid == nil, "Invalid return value")
		end
	end
	return hasValidOperation and not hasInvalidOperation, itemString
end

function private.IsOperationValid(itemString, operationName, operationSettings)
	if not operationSettings.cancelUndercut and not operationSettings.cancelRepost then
		-- canceling is disabled, so ignore this operation
		TSM.Auctioning.Log.AddEntry(itemString, operationName, "cancelDisabled", "", 0, 0)
		return nil
	end

	local errMsg = nil
	local minPrice = TSM.Auctioning.Util.GetPrice("minPrice", operationSettings, itemString)
	local normalPrice = TSM.Auctioning.Util.GetPrice("normalPrice", operationSettings, itemString)
	local maxPrice = TSM.Auctioning.Util.GetPrice("maxPrice", operationSettings, itemString)
	local undercut = TSM.Auctioning.Util.GetPrice("undercut", operationSettings, itemString)
	local cancelRepostThreshold = TSM.Auctioning.Util.GetPrice("cancelRepostThreshold", operationSettings, itemString)
	if not minPrice then
		errMsg = format(L["Did not cancel %s because your minimum price (%s) is invalid. Check your settings."], ItemInfo.GetLink(itemString), operationSettings.minPrice)
	elseif not maxPrice then
		errMsg = format(L["Did not cancel %s because your maximum price (%s) is invalid. Check your settings."], ItemInfo.GetLink(itemString), operationSettings.maxPrice)
	elseif not normalPrice then
		errMsg = format(L["Did not cancel %s because your normal price (%s) is invalid. Check your settings."], ItemInfo.GetLink(itemString), operationSettings.normalPrice)
	elseif operationSettings.cancelRepost and not cancelRepostThreshold then
		errMsg = format(L["Did not cancel %s because your cancel to repost threshold (%s) is invalid. Check your settings."], ItemInfo.GetLink(itemString), operationSettings.cancelRepostThreshold)
	elseif not undercut then
		errMsg = format(L["Did not cancel %s because your undercut (%s) is invalid. Check your settings."], ItemInfo.GetLink(itemString), operationSettings.undercut)
	elseif maxPrice < minPrice then
		errMsg = format(L["Did not cancel %s because your maximum price (%s) is lower than your minimum price (%s). Check your settings."], ItemInfo.GetLink(itemString), operationSettings.maxPrice, operationSettings.minPrice)
	elseif normalPrice < minPrice then
		errMsg = format(L["Did not cancel %s because your normal price (%s) is lower than your minimum price (%s). Check your settings."], ItemInfo.GetLink(itemString), operationSettings.normalPrice, operationSettings.minPrice)
	end

	if errMsg then
		if not TSM.db.global.auctioningOptions.disableInvalidMsg then
			Log.PrintUser(errMsg)
		end
		TSM.Auctioning.Log.AddEntry(itemString, operationName, "invalidItemGroup", "", 0, 0)
		return false
	else
		return true
	end
end

function private.QueryBuyoutFilter(_, row)
	local _, itemBuyout, minItemBuyout = row:GetBuyouts()
	return (itemBuyout and itemBuyout == 0) or (minItemBuyout and minItemBuyout == 0)
end

function private.AuctionScanOnQueryDone(_, query)
	TSM.Auctioning.Log.SetQueryUpdatesPaused(true)
	for itemString in query:ItemIterator() do
		local groupPath = TSM.Groups.GetPathByItem(itemString)
		if groupPath then
			local baseItemString = ItemString.GetBaseFast(itemString)
			local levelItemString = ItemString.ToLevel(itemString)
			local isLevelItemString = itemString == levelItemString and itemString ~= baseItemString
			local auctionsDBQuery = AuctionTracking.CreateQueryUnsoldItem(isLevelItemString and baseItemString or itemString)
				:VirtualField("autoBaseItemString", "string", TSM.Groups.TranslateItemString, "itemString")
				:Equal("autoBaseItemString", itemString)
				:OrderBy("auctionId", false)
			for _, auctionsDBRow in auctionsDBQuery:IteratorAndRelease() do
				private.GenerateCancels(auctionsDBRow, itemString, groupPath, query)
			end
		else
			Log.Warn("Item removed from group since start of scan: %s", itemString)
		end
	end
	TSM.Auctioning.Log.SetQueryUpdatesPaused(false)
end

function private.GenerateCancels(auctionsDBRow, itemString, groupPath, query)
	local isHandled = false
	for _, operationName, operationSettings in TSM.Operations.GroupOperationIterator("Auctioning", groupPath) do
		if not isHandled and private.IsOperationValid(itemString, operationName, operationSettings) then
			assert(not next(private.subRowsTemp))
			TSM.Auctioning.Util.GetFilteredSubRows(query, itemString, operationSettings, private.subRowsTemp)
			local handled, logReason, itemBuyout, seller, auctionId = private.GenerateCancel(auctionsDBRow, itemString, operationName, operationSettings, private.subRowsTemp)
			wipe(private.subRowsTemp)
			if logReason then
				seller = seller or ""
				auctionId = auctionId or 0
				TSM.Auctioning.Log.AddEntry(itemString, operationName, logReason, seller, itemBuyout, auctionId)
			end
			isHandled = isHandled or handled
		end
	end
end

function private.GenerateCancel(auctionsDBRow, itemString, operationName, operationSettings, subRows)
	local auctionId, stackSize, currentBid, buyout, highBidder, duration = auctionsDBRow:GetFields("auctionId", "stackSize", "currentBid", "buyout", "highBidder", "duration")
	local itemBuyout = Environment.HasFeature(Environment.FEATURES.AH_STACKS) and floor(buyout / stackSize) or buyout
	local itemBid = Environment.HasFeature(Environment.FEATURES.AH_STACKS) and floor(currentBid / stackSize) or currentBid
	if Environment.HasFeature(Environment.FEATURES.AH_STACKS) and operationSettings.matchStackSize and stackSize ~= TSM.Auctioning.Util.GetPrice("stackSize", operationSettings, itemString) then
		return false
	elseif not TSM.db.global.auctioningOptions.cancelWithBid and highBidder ~= "" then
		-- Don't cancel an auction if it has a bid and we're set to not cancel those
		return true, "cancelBid", itemBuyout, nil, auctionId
	elseif not Environment.HasFeature(Environment.FEATURES.AH_STACKS) and C_AuctionHouse.GetCancelCost(auctionId) > GetMoney() then
		return true, "cancelNoMoney", itemBuyout, nil, auctionId
	end

	local lowestAuction = TempTable.Acquire()
	if not TSM.Auctioning.Util.GetLowestAuction(subRows, itemString, operationSettings, lowestAuction) then
		TempTable.Release(lowestAuction)
		lowestAuction = nil
	end
	local minPrice = TSM.Auctioning.Util.GetPrice("minPrice", operationSettings, itemString)
	local normalPrice = TSM.Auctioning.Util.GetPrice("normalPrice", operationSettings, itemString)
	local maxPrice = TSM.Auctioning.Util.GetPrice("maxPrice", operationSettings, itemString)
	local resetPrice = TSM.Auctioning.Util.GetPrice("priceReset", operationSettings, itemString)
	local cancelRepostThreshold = TSM.Auctioning.Util.GetPrice("cancelRepostThreshold", operationSettings, itemString)
	local undercut = TSM.Auctioning.Util.GetPrice("undercut", operationSettings, itemString)
	local aboveMax = TSM.Auctioning.Util.GetPrice("aboveMax", operationSettings, itemString)

	if not lowestAuction then
		-- all auctions which are posted (including ours) have been ignored, so check if we should cancel to repost higher
		if operationSettings.cancelRepost and normalPrice - itemBuyout > cancelRepostThreshold then
			private.AddToQueue(itemString, operationName, itemBid, itemBuyout, stackSize, duration, auctionId)
			return true, "cancelRepost", itemBuyout, nil, auctionId
		else
			return false, "cancelNotUndercut", itemBuyout
		end
	elseif lowestAuction.hasInvalidSeller then
		Log.PrintfUser(L["The seller name of the lowest auction for %s was not given by the server. Skipping this item."], ItemInfo.GetLink(itemString))
		TempTable.Release(lowestAuction)
		return false, "invalidSeller", itemBuyout
	end

	local shouldCancel, logReason = false, nil
	local playerLowestItemBuyout, playerLowestAuctionId = TSM.Auctioning.Util.GetPlayerLowestBuyout(subRows, itemString, operationSettings)
	local secondLowestBuyout = TSM.Auctioning.Util.GetNextLowestItemBuyout(subRows, itemString, lowestAuction, operationSettings)
	local nonPlayerLowestAuctionId = Environment.IsRetail() and playerLowestItemBuyout and TSM.Auctioning.Util.GetLowestNonPlayerAuctionId(subRows, itemString, operationSettings, playerLowestItemBuyout)
	if itemBuyout < minPrice and not lowestAuction.isBlacklist then
		-- this auction is below the min price
		if operationSettings.cancelRepost and resetPrice and itemBuyout < (resetPrice - cancelRepostThreshold) then
			-- canceling to post at reset price
			shouldCancel = true
			logReason = "cancelReset"
		else
			logReason = "cancelBelowMin"
		end
	elseif lowestAuction.buyout < minPrice and not lowestAuction.isBlacklist then
		-- lowest buyout is below min price, so do nothing
		logReason = "cancelBelowMin"
	elseif operationSettings.cancelUndercut and playerLowestItemBuyout and ((itemBuyout - undercut) > playerLowestItemBuyout or (Environment.IsRetail() and (itemBuyout - undercut) == playerLowestItemBuyout and auctionId ~= playerLowestAuctionId and auctionId < (nonPlayerLowestAuctionId or 0))) then
		-- we've undercut this auction
		shouldCancel = true
		logReason = "cancelPlayerUndercut"
	elseif TSM.Auctioning.Util.IsPlayerOnlySeller(subRows, itemString, operationSettings) then
		-- we are the only auction
		if operationSettings.cancelRepost and (normalPrice - itemBuyout) > cancelRepostThreshold then
			-- we can repost higher
			shouldCancel = true
			logReason = "cancelRepost"
		else
			logReason = "cancelAtNormal"
		end
	elseif lowestAuction.isPlayer and secondLowestBuyout and secondLowestBuyout > maxPrice then
		-- we are posted at the aboveMax price with no competition under our max price
		if operationSettings.cancelRepost and operationSettings.aboveMax ~= "none" and (aboveMax - itemBuyout) > cancelRepostThreshold then
			-- we can repost higher
			shouldCancel = true
			logReason = "cancelRepost"
		else
			logReason = "cancelAtAboveMax"
		end
	elseif lowestAuction.isPlayer then
		-- we are the loewst auction
		if operationSettings.cancelRepost and secondLowestBuyout and ((secondLowestBuyout - undercut) - lowestAuction.buyout) > cancelRepostThreshold then
			-- we can repost higher
			shouldCancel = true
			logReason = "cancelRepost"
		else
			logReason = "cancelNotUndercut"
		end
	elseif not operationSettings.cancelUndercut then
		-- we're undercut but not canceling undercut auctions
	elseif lowestAuction.isWhitelist and itemBuyout == lowestAuction.buyout then
		-- at whitelisted player price
		logReason = "cancelAtWhitelist"
	elseif not lowestAuction.isWhitelist then
		-- we've been undercut by somebody not on our whitelist
		shouldCancel = true
		logReason = "cancelUndercut"
	elseif itemBuyout ~= lowestAuction.buyout or itemBid ~= lowestAuction.bid then
		-- somebody on our whitelist undercut us (or their bid is lower)
		shouldCancel = true
		logReason = "cancelWhitelistUndercut"
	else
		error("Should not get here")
	end

	local seller = lowestAuction.seller
	TempTable.Release(lowestAuction)
	if shouldCancel then
		private.AddToQueue(itemString, operationName, itemBid, itemBuyout, stackSize, duration, auctionId)
	end
	return shouldCancel, logReason, itemBuyout, seller, shouldCancel and auctionId or nil
end

function private.AddToQueue(itemString, operationName, itemBid, itemBuyout, stackSize, duration, auctionId)
	private.queueDB:NewRow()
		:SetField("auctionId", auctionId)
		:SetField("itemString", itemString)
		:SetField("operationName", operationName)
		:SetField("bid", itemBid * stackSize)
		:SetField("buyout", itemBuyout * stackSize)
		:SetField("itemBid", itemBid)
		:SetField("itemBuyout", itemBuyout)
		:SetField("stackSize", stackSize)
		:SetField("duration", duration)
		:SetField("numStacks", 1)
		:SetField("numProcessed", 0)
		:SetField("numConfirmed", 0)
		:SetField("numFailed", 0)
		:Create()
end

function private.ProcessQueryHelper(row, cancelRow)
	if Environment.HasFeature(Environment.FEATURES.AH_STACKS) then
		local auctionId, itemString, stackSize, currentBid, buyout = row:GetFields("auctionId", "autoBaseItemString", "stackSize", "currentBid", "buyout")
		local itemBid = floor(currentBid / stackSize)
		local itemBuyout = floor(buyout / stackSize)
		return not private.usedAuctionIndex[itemString..buyout..currentBid..auctionId] and cancelRow:GetField("itemBid") == itemBid and cancelRow:GetField("itemBuyout") == itemBuyout
	else
		local auctionId = row:GetField("auctionId")
		return not private.usedAuctionIndex[auctionId] and cancelRow:GetField("auctionId") == auctionId
	end
end

function private.ConfirmRowQueryHelper(row)
	return row:GetField("numConfirmed") < row:GetField("numProcessed")
end

function private.NextProcessRowQueryHelper(row)
	return row:GetField("numProcessed") < row:GetField("numStacks")
end
