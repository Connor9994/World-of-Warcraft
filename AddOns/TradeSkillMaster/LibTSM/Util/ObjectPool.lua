-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local ObjectPool = TSM.Init("Util.ObjectPool") ---@class Util.ObjectPool
local Environment = TSM.Include("Environment")
local Debug = TSM.Include("Util.Debug")
local private = {
	debugLeaks = nil,
	instances = {}, ---@type table<string, Pool>
}
local DEBUG_STATS_MIN_COUNT = 1



-- ============================================================================
-- Module Loading
-- ============================================================================

ObjectPool:OnModuleLoad(function()
	private.debugLeaks = Environment.IsTest()
end)



-- ============================================================================
-- Class Definition
-- ============================================================================

---@class Util.ObjectPool.Pool
local Pool = TSM.Include("LibTSMClass").DefineClass("ObjectPool")

function Pool.__init(self, createFunc, extraStackOffset)
	self._createFunc = createFunc
	self._extraStackOffset = extraStackOffset
	self._freeList = {}
	self._state = {}
	self._numCreated = 0
end



-- ============================================================================
-- Public Class Methods
-- ============================================================================

--- Either returns a recycled instance of the object or creates a new one as applicable.
---@generic T
---@return T @The object instance
function Pool:Get()
	local obj = tremove(self._freeList)
	if not obj then
		self._numCreated = self._numCreated + 1
		obj = self._createFunc()
		assert(obj)
	end
	if private.debugLeaks then
		self._state[obj] = (Debug.GetStackLevelLocation(2 + self._extraStackOffset) or "?").." -> "..(Debug.GetStackLevelLocation(3 + self._extraStackOffset) or "?")
	else
		self._state[obj] = "???"
	end
	return obj
end

--- Recycles an instance of the object back into the pool.
---@generic T
---@param obj T @The object to recycle
function Pool:Recycle(obj)
	assert(self._state[obj])
	self._state[obj] = nil
	tinsert(self._freeList, obj)
end



-- ============================================================================
-- Private Class Methods
-- ============================================================================

---@return Util.ObjectPool.PoolDebugInfo
function Pool:_GetDebugInfo()
	local counts = {}
	local totalCount = 0
	for _, caller in pairs(self._state) do
		counts[caller] = (counts[caller] or 0) + 1
		totalCount = totalCount + 1
	end
	local debugInfo = {}
	for info, count in pairs(counts) do
		if count > DEBUG_STATS_MIN_COUNT then
			tinsert(debugInfo, format("[%d] %s", count, info))
		end
	end
	if #debugInfo == 0 then
		tinsert(debugInfo, "<none>")
	end
	---@class Util.ObjectPool.PoolDebugInfo
	---@field numCreated number The total number of objects created
	---@field numInUse number The number of objects currently in use
	---@field info string[] The debug info strings
	return {
		numCreated = self._numCreated,
		numInUse = totalCount,
		info = debugInfo,
	}
end



-- ============================================================================
-- Module Functions
-- ============================================================================

---Create a new object pool.
---@param name string The name of the object pool for debug purposes
---@param createFunc function The function which is called to create a new object
---@param extraStackOffset? number The extra stack offset for tracking where objects are being used from or nil to
---disable stack info
---@return Util.ObjectPool.Pool # The object pool
function ObjectPool.New(name, createFunc, extraStackOffset)
	assert(createFunc)
	assert(not private.instances[name])
	local pool = Pool(createFunc, extraStackOffset or 0)
	private.instances[name] = pool
	return pool
end

---Enables leak debugging.
function ObjectPool.EnableLeakDebug()
	private.debugLeaks = true
end

---Gets debug information which represents the current state of all the created object pools
---@return table<string,Util.ObjectPool.PoolDebugInfo>
function ObjectPool.GetDebugInfo()
	local debugInfo = {}
	for name, pool in pairs(private.instances) do
		debugInfo[name] = pool:_GetDebugInfo()
	end
	return debugInfo
end
