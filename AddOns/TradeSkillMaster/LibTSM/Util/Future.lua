-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Future = TSM.Init("Util.Future") ---@class Util.Future
local FutureObject = TSM.Include("LibTSMClass").DefineClass("FutureObject") ---@class FutureObject



-- ============================================================================
-- Module Functions
-- ============================================================================

---Create a new future.
---@param name string The name of the future for debugging purposes
---@return FutureObject @The future object
function Future.New(name)
	return FutureObject(name)
end



-- ============================================================================
-- FutureObject Class Methods
-- ============================================================================

function FutureObject:__init(name)
	self._name = name
	self._state = "RESET"
	self._value = nil
	self._onDone = nil
	self._onCleanup = nil
end

function FutureObject:__tostring()
	return "Future:"..self._name
end

---Gets the name for debugging purposes.
---@return string @The name
function FutureObject:GetName()
	return self._name
end

---Registers a script handler.
---@param script FutureScript The script to register for
---@param handler function The script handler
function FutureObject:SetScript(script, handler)
	assert(type(handler) == "function")
	if script == "OnDone" then
		assert(self._state ~= "DONE")
		assert(not self._onDone)
		self._onDone = handler
	elseif script == "OnCleanup" then
		assert(not self._onCleanup)
		self._onCleanup = handler
	else
		error("Unknown script: "..tostring(script))
	end
end

---Marks the future as started.
function FutureObject:Start()
	assert(self._state == "RESET")
	self._state = "STARTED"
end

---Marks the future as cancelled and cleans it up.
function FutureObject:Cancel()
	assert(self._state ~= "RESET")
	self:_Reset()
end

---Marks the future as done with the specified result value.
---@param value any The reuslt value
function FutureObject:Done(value)
	assert(self._state == "STARTED")
	self._state = "DONE"
	self._value = value
	if self._onDone then
		self._onDone(self)
	end
end

---Returns whether or not the future is done.
---@return boolean @Whether or not the future is done
function FutureObject:IsDone()
	assert(self._state ~= "RESET")
	return self._state == "DONE"
end

---Gets the result value from a future in the done state.
---@return any @The result value
function FutureObject:GetValue()
	assert(self._state == "DONE")
	local value = self._value
	self:_Reset()
	return value
end

function FutureObject:_Reset()
	self._state = "RESET"
	self._value = nil
	self._onDone = nil
	if self._onCleanup then
		self._onCleanup()
	end
end
