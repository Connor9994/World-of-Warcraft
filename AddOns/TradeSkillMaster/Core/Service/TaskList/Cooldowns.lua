-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Cooldowns = TSM.TaskList:NewPackage("Cooldowns")
local L = TSM.Include("Locale").GetTable()
local Delay = TSM.Include("Util.Delay")
local ObjectPool = TSM.Include("Util.ObjectPool")
local Table = TSM.Include("Util.Table")
local private = {
	query = nil,
	taskPool = ObjectPool.New("COOLDOWN_TASK", TSM.TaskList.CooldownCraftingTask, 0),
	activeTasks = {},
	activeTaskByProfession = {},
	ignoredQuery = nil, -- luacheck: ignore 1004 - just stored for GC reasons
	updateTimer = nil,
}



-- ============================================================================
-- Module Functions
-- ============================================================================

function Cooldowns.OnEnable()
	TSM.TaskList.RegisterTaskPool(private.ActiveTaskIterator)
	private.updateTimer = Delay.CreateTimer("COOLDOWNS_UPDATE", private.PopulateTasks)
	private.query = TSM.Crafting.CreateCooldownSpellsQuery()
		:Select("profession", "craftString")
		:ListContains("players", UnitName("player"))
		:SetUpdateCallback(private.PopulateTasks)
	private.ignoredQuery = TSM.Crafting.CreateIgnoredCooldownQuery()
		:SetUpdateCallback(private.PopulateTasks)
	private.PopulateTasks()
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.ActiveTaskIterator()
	return ipairs(private.activeTasks)
end

function private.PopulateTasks()
	-- clean DB entries with expired times
	for craftString, expireTime in pairs(TSM.db.char.internalData.craftingCooldowns) do
		if expireTime <= time() then
			TSM.db.char.internalData.craftingCooldowns[craftString] = nil
		end
	end

	-- clear out the existing tasks
	for _, task in pairs(private.activeTaskByProfession) do
		task:WipeCraftStrings()
	end

	local minPendingCooldown = math.huge
	for _, profession, craftString in private.query:Iterator() do
		if TSM.Crafting.IsCooldownIgnored(craftString) then
			-- this is ignored
		elseif TSM.db.char.internalData.craftingCooldowns[craftString] then
			-- this is on CD
			minPendingCooldown = min(minPendingCooldown, TSM.db.char.internalData.craftingCooldowns[craftString] - time())
		else
			-- this is a new CD task
			local task = private.activeTaskByProfession[profession]
			if not task then
				task = private.taskPool:Get()
				task:Acquire(private.RemoveTask, L["Cooldowns"], profession)
				private.activeTaskByProfession[profession] = task
			end
			if not task:HasCraftString(craftString) then
				task:AddCraftString(craftString, 1)
			end
		end
	end

	-- update our tasks
	wipe(private.activeTasks)
	for profession, task in pairs(private.activeTaskByProfession) do
		if task:HasCraftStrings() then
			tinsert(private.activeTasks, task)
			task:Update()
		else
			private.activeTaskByProfession[profession] = nil
			task:Release()
			private.taskPool:Recycle(task)
		end
	end
	TSM.TaskList.OnTaskUpdated()

	if minPendingCooldown ~= math.huge then
		private.updateTimer:RunForTime(minPendingCooldown)
	else
		private.updateTimer:Cancel()
	end
end

function private.RemoveTask(task)
	local profession = task:GetProfession()
	assert(Table.RemoveByValue(private.activeTasks, task) == 1)
	assert(private.activeTaskByProfession[profession] == task)
	private.activeTaskByProfession[profession] = nil
	task:Release()
	private.taskPool:Recycle(task)
	TSM.TaskList.OnTaskUpdated()
end
