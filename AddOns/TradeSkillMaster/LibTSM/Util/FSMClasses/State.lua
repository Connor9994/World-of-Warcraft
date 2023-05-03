-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local State = TSM.Init("Util.FSMClasses.State") ---@class Util.FSMClasses.State
local LibTSMClass = TSM.Include("LibTSMClass")
local TempTable = TSM.Include("Util.TempTable")
local FSMState = LibTSMClass.DefineClass("FSMState") ---@class FSMState
local private = {
	eventTransitionHandlerCache = {},
}



-- ============================================================================
-- Class Meta Methods
-- ============================================================================

function State.Create(name)
	return FSMState(name)
end

function State.IsInstance(obj)
	return obj:__isa(FSMState)
end



-- ============================================================================
-- Class Meta Methods
-- ============================================================================

function FSMState:__init(name)
	self._name = name
	self._onEnterHandler = nil
	self._onExitHandler = nil
	self._transitionValid = {}
	self._events = {}
end



-- ============================================================================
-- Public Class Methods
-- ============================================================================

---Set the OnEnter handler.
---
---This function is called upon entering the state.
---@param handler function The handler function to call
---@return FSMState @The FSM state object
function FSMState:SetOnEnter(handler)
	assert(type(handler) == "function")
	self._onEnterHandler = handler
	return self
end

---Set the OnExit handler.
---
---This function is called upon existing the state.
---@param handler function The handler function to call
---@return FSMState @The FSM state object
function FSMState:SetOnExit(handler)
	assert(type(handler) == "function")
	self._onExitHandler = handler
	return self
end

---Add a transition.
---@param toState string The state this transition goes to
---@return FSMState @The FSM state object
function FSMState:AddTransition(toState)
	assert(not self._transitionValid[toState], "transition already exists")
	self._transitionValid[toState] = true
	return self
end

---Add a handled event.
---@param event string The name of the event
---@param handler function The function called when the event occurs
---@return FSMState @The FSM state object
function FSMState:AddEvent(event, handler)
	assert(not self._events[event], "event already exists")
	self._events[event] = handler
	return self
end

---Add a simple event-based transition.
---@param event string The event name
---@param toState string The state to transition to
---@return FSMState @The FSM state object
function FSMState:AddEventTransition(event, toState)
	if not private.eventTransitionHandlerCache[toState] then
		private.eventTransitionHandlerCache[toState] = function(context, ...)
			return toState, ...
		end
	end
	return self:AddEvent(event, private.eventTransitionHandlerCache[toState])
end



-- ============================================================================
-- Private Class Methods
-- ============================================================================

function FSMState:_GetName()
	return self._name
end

function FSMState:_ToStateIterator()
	local temp = TempTable.Acquire()
	for toState in pairs(self._transitionValid) do
		tinsert(temp, toState)
	end
	return TempTable.Iterator(temp)
end

function FSMState:_IsTransitionValid(toState)
	return self._transitionValid[toState]
end

function FSMState:_HasEventHandler(event)
	return self._events[event] and true or false
end

function FSMState:_ProcessEvent(event, context, ...)
	return self:_HandlerHelper(self._events[event], context, ...)
end

function FSMState:_Enter(context, ...)
	return self:_HandlerHelper(self._onEnterHandler, context, ...)
end

function FSMState:_Exit(context)
	return self:_HandlerHelper(self._onExitHandler, context)
end

function FSMState:_HandlerHelper(handler, context, ...)
	if type(handler) == "function" then
		return handler(context, ...)
	elseif handler ~= nil then
		error("Invalid handler: "..tostring(handler))
	end
end
