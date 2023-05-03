-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local TaskList = TSM:NewPackage("TaskList")
local TempTable = TSM.Include("Util.TempTable")
local private = {
	updateCallback = nil,
	iterFuncs = {},
}



-- ============================================================================
-- Module Functions
-- ============================================================================

function TaskList.RegisterTaskPool(iterFunc)
	tinsert(private.iterFuncs, iterFunc)
end

function TaskList.SetUpdateCallback(func)
	assert(func and not private.updateCallback)
	private.updateCallback = func
end

function TaskList.GetNumTasks()
	local num = 0
	for _, iterFunc in ipairs(private.iterFuncs) do
		for _ in iterFunc() do
			num = num + 1
		end
	end
	return num
end

function TaskList.Iterator()
	local tasks = TempTable.Acquire()
	for _, iterFunc in ipairs(private.iterFuncs) do
		for _, task in iterFunc() do
			tinsert(tasks, task)
		end
	end
	return TempTable.Iterator(tasks)
end

function TaskList.OnTaskUpdated()
	private.updateCallback()
end
