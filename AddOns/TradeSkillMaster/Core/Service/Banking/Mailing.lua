-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Mailing = TSM.Banking:NewPackage("Mailing")
local TempTable = TSM.Include("Util.TempTable")
local private = {}



-- ============================================================================
-- Module Functions
-- ============================================================================

function Mailing.MoveGroupsToBank(callback, groups)
	local items = TempTable.Acquire()
	TSM.Banking.Util.PopulateGroupItemsFromBags(items, groups, private.GroupsGetNumToMoveToBank)
	TSM.Banking.MoveToBank(items, callback)
	TempTable.Release(items)
end

function Mailing.NongroupToBank(callback)
	local items = TempTable.Acquire()
	TSM.Banking.Util.PopulateItemsFromBags(items, private.NongroupGetNumToBank)
	TSM.Banking.MoveToBank(items, callback)
	TempTable.Release(items)
end

function Mailing.TargetShortfallToBags(callback, groups)
	local items = TempTable.Acquire()
	TSM.Banking.Util.PopulateGroupItemsFromOpenBank(items, groups, TSM.Operations.Mailing.TargetShortfallGetNumToBags)
	TSM.Banking.MoveToBag(items, callback)
	TempTable.Release(items)
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.GroupsGetNumToMoveToBank(itemString, numHave)
	-- move everything
	return numHave
end

function private.NongroupGetNumToBank(itemString, numHave)
	local hasOperations = false
	for _ in TSM.Operations.GroupOperationIterator("Mailing", TSM.Groups.GetPathByItem(itemString)) do
		hasOperations = true
	end
	return not hasOperations and numHave or 0
end
