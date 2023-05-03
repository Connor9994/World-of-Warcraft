-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Auctioning = TSM.Banking:NewPackage("Auctioning")
local Environment = TSM.Include("Environment")
local TempTable = TSM.Include("Util.TempTable")
local BagTracking = TSM.Include("Service.BagTracking")
local AltTracking = TSM.Include("Service.AltTracking")
local AuctionTracking = TSM.Include("Service.AuctionTracking")
local MailTracking = TSM.Include("Service.MailTracking")
local Settings = TSM.Include("Service.Settings")
local private = {}



-- ============================================================================
-- Module Functions
-- ============================================================================

function Auctioning.MoveGroupsToBank(callback, groups)
	local items = TempTable.Acquire()
	TSM.Banking.Util.PopulateGroupItemsFromBags(items, groups, private.GroupsGetNumToMoveToBank)
	TSM.Banking.MoveToBank(items, callback)
	TempTable.Release(items)
end

function Auctioning.PostCapToBags(callback, groups)
	local items = TempTable.Acquire()
	TSM.Banking.Util.PopulateGroupItemsFromOpenBank(items, groups, private.GetNumToMoveToBags)
	TSM.Banking.MoveToBag(items, callback)
	TempTable.Release(items)
end

function Auctioning.ShortfallToBags(callback, groups)
	local items = TempTable.Acquire()
	TSM.Banking.Util.PopulateGroupItemsFromOpenBank(items, groups, private.GetNumToMoveToBags, true)
	TSM.Banking.MoveToBag(items, callback)
	TempTable.Release(items)
end

function Auctioning.MaxExpiresToBank(callback, groups)
	local items = TempTable.Acquire()
	TSM.Banking.Util.PopulateGroupItemsFromBags(items, groups, private.MaxExpiresGetNumToMoveToBank)
	TSM.Banking.MoveToBank(items, callback)
	TempTable.Release(items)
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.GroupsGetNumToMoveToBank(itemString, numHave)
	-- move everything
	return numHave
end

function private.GetNumToMoveToBags(itemString, numHave, includeAH)
	local totalNumToMove = 0
	local numAvailable = numHave
	local numInBags = BagTracking.CreateQueryBagsItem(itemString)
		:VirtualField("autoBaseItemString", "string", TSM.Groups.TranslateItemString, "itemString")
		:Equal("autoBaseItemString", itemString)
		:SumAndRelease("quantity")
	if includeAH then
		numInBags = numInBags + AuctionTracking.GetQuantity(itemString) + MailTracking.GetQuantity(itemString)
		-- include alt auctions
		for _, factionrealm, character in Settings.ConnectedFactionrealmAltCharacterIterator() do
			numInBags = numInBags + AltTracking.GetAuctionQuantity(itemString, character, factionrealm)
		end
	end

	for _, _, operationSettings in TSM.Operations.GroupOperationIterator("Auctioning", TSM.Groups.GetPathByItem(itemString)) do
		local maxExpires = TSM.Auctioning.Util.GetPrice("maxExpires", operationSettings, itemString)
		local operationHasExpired = false
		if maxExpires and maxExpires > 0 then
			local numExpires = TSM.Accounting.Auctions.GetNumExpiresSinceSale(itemString)
			if numExpires and numExpires > maxExpires then
				operationHasExpired = true
			end
		end

		local postCap = TSM.Auctioning.Util.GetPrice("postCap", operationSettings, itemString)
		local stackSize = private.GetOperationStackSize(operationSettings, itemString)
		if not operationHasExpired and postCap and stackSize then
			local numNeeded = stackSize * postCap
			if numInBags > numNeeded then
				-- we can satisfy this operation from the bags
				numInBags = numInBags - numNeeded
				numNeeded = 0
			elseif numInBags > 0 then
				-- we can partially satisfy this operation from the bags
				numNeeded = numNeeded - numInBags
				numInBags = 0
			end

			local numToMove = min(numAvailable, numNeeded)
			if numToMove > 0 then
				numAvailable = numAvailable - numToMove
				totalNumToMove = totalNumToMove + numToMove
			end
		end
	end

	return totalNumToMove
end

function private.MaxExpiresGetNumToMoveToBank(itemString, numHave)
	local numToKeepInBags = 0
	for _, _, operationSettings in TSM.Operations.GroupOperationIterator("Auctioning", TSM.Groups.GetPathByItem(itemString)) do
		local maxExpires = TSM.Auctioning.Util.GetPrice("maxExpires", operationSettings, itemString)
		local operationHasExpired = false
		if maxExpires and maxExpires > 0 then
			local numExpires = TSM.Accounting.Auctions.GetNumExpiresSinceSale(itemString)
			if numExpires and numExpires > maxExpires then
				operationHasExpired = true
			end
		end
		local postCap = TSM.Auctioning.Util.GetPrice("postCap", operationSettings, itemString)
		local stackSize = private.GetOperationStackSize(operationSettings, itemString)
		if not operationHasExpired and postCap and stackSize then
			numToKeepInBags = numToKeepInBags + stackSize * postCap
		end
	end
	return max(numHave - numToKeepInBags, 0)
end

function private.GetOperationStackSize(operationSettings, itemString)
	if Environment.HasFeature(Environment.FEATURES.AH_STACKS) then
		return TSM.Auctioning.Util.GetPrice("stackSize", operationSettings, itemString)
	else
		return 1
	end
end
