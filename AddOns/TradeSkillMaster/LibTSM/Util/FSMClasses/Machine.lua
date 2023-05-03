-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Machine = TSM.Init("Util.FSMClasses.Machine") ---@class Util.FSMClasses.Machine
local State = TSM.Include("Util.FSMClasses.State")
local TempTable = TSM.Include("Util.TempTable")
local Log = TSM.Include("Util.Log")
local LibTSMClass = TSM.Include("LibTSMClass")
local FSMObject = LibTSMClass.DefineClass("FSMObject") ---@class FSMObject
local private = {
	eventTransitionHandlerCache = {},
}



-- ============================================================================
-- Module Functions
-- ============================================================================

function Machine.Create(name)
	return FSMObject(name)
end



-- ============================================================================
-- Class Meta Methods
-- ============================================================================

function FSMObject:__init(name)
	self._name = name
	self._currentState = nil
	self._context = nil
	self._loggingDisabledCount = 0
	self._stateObjs = {}
	self._defaultEvents = {}
	self._handlingEvent = nil
end



-- ============================================================================
-- Public Class Methods
-- ============================================================================

---Add an FSM state.
---@param stateObj FSMState The FSM state object to add
---@return FSMObject @The FSM object
function FSMObject:AddState(stateObj)
	assert(State.IsInstance(stateObj))
	local name = stateObj:_GetName()
	assert(not self._stateObjs[name], "state already exists")
	self._stateObjs[stateObj:_GetName()] = stateObj
	return self
end

---Add a default event handler.
---@param event string The event name
---@param handler function The default event handler
---@return FSM @The FSM object
function FSMObject:AddDefaultEvent(event, handler)
	assert(not self._defaultEvents[event], "event already exists")
	self._defaultEvents[event] = handler
	return self
end

---Add a simple default event-based transition.
---@param event string The event name
---@param toState string The state to transition to
---@return FSMObject @The FSM object
function FSMObject:AddDefaultEventTransition(event, toState)
	if not private.eventTransitionHandlerCache[toState] then
		private.eventTransitionHandlerCache[toState] = function(context, ...)
			return toState, ...
		end
	end
	return self:AddDefaultEvent(event, private.eventTransitionHandlerCache[toState])
end

---Initialize the FSM.
---@param initialState string The name of the initial state
---@param context? table The FSM context table which gets passed to all state and event handlers
---@return FSMObject @The FSM object
function FSMObject:Init(initialState, context)
	assert(self._stateObjs[initialState], "invalid initial state")
	self._currentState = initialState
	self._context = context or {}
	-- validate all the transitions
	for name, obj in pairs(self._stateObjs) do
		for _, toState in obj:_ToStateIterator() do
			assert(self._stateObjs[toState], format("toState doesn't exist (%s -> %s)", name, toState))
		end
	end
	return self
end

---Process an event.
---@param event string The name of the event
---@param ... any Additional arguments to pass to the handler function
---@return FSMObject @The FSM object
function FSMObject:ProcessEvent(event, ...)
	assert(self._currentState, "FSM not initialized")
	if self._handlingEvent then
		Log.RaiseStackLevel()
		Log.Warn("[%s] %s (ignored - handling event - %s)", self._name, event, self._handlingEvent)
		Log.LowerStackLevel()
		return self
	elseif self._inTransition then
		Log.RaiseStackLevel()
		Log.Warn("[%s] %s (ignored - in transition)", self._name, event)
		Log.LowerStackLevel()
		return self
	end

	if self._loggingDisabledCount == 0 then
		Log.RaiseStackLevel()
		Log.Info("[%s] %s", self._name, event)
		Log.LowerStackLevel()
	end
	self._handlingEvent = event
	local currentStateObj = self._stateObjs[self._currentState]
	if currentStateObj:_HasEventHandler(event) then
		self:_Transition(TempTable.Acquire(currentStateObj:_ProcessEvent(event, self._context, ...)))
	elseif self._defaultEvents[event] then
		self:_Transition(TempTable.Acquire(self._defaultEvents[event](self._context, ...)))
	end
	self._handlingEvent = nil
	return self
end

---Enable or disable event and state transition logs (can be called recursively).
---@param enabled boolean Whether or not logging should be enabled
---@return FSMObject @The FSM object
function FSMObject:SetLoggingEnabled(enabled)
	self._loggingDisabledCount = self._loggingDisabledCount + (enabled and -1 or 1)
	assert(self._loggingDisabledCount >= 0)
	return self
end



-- ============================================================================
-- Private Class Methods
-- ============================================================================

function FSMObject:_Transition(eventResult)
	local result = eventResult
	while result[1] do
		-- perform the transition
		local currentStateObj = self._stateObjs[self._currentState]
		local toState = tremove(result, 1)
		local toStateObj = self._stateObjs[toState]
		if self._loggingDisabledCount == 0 then
			Log.RaiseStackLevel()
			Log.RaiseStackLevel()
			Log.Info("[%s] %s -> %s", self._name, self._currentState, toState)
			Log.LowerStackLevel()
			Log.LowerStackLevel()
		end
		assert(toStateObj and currentStateObj:_IsTransitionValid(toState), "invalid transition")
		self._inTransition = true
		currentStateObj:_Exit(self._context)
		self._currentState = toState
		result = TempTable.Acquire(toStateObj:_Enter(self._context, TempTable.UnpackAndRelease(result)))
		self._inTransition = false
	end
	TempTable.Release(result)
end
