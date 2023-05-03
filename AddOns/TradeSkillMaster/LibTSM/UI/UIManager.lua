-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local UIManager = TSM.Init("UI.UIManager") ---@class UI.UIManager
local UIManagerClass = TSM.Include("LibTSMClass").DefineClass("UIManagerClass") ---@class UIManagerClass



-- ============================================================================
-- Module Functions
-- ============================================================================

---Creates a new UI manager object.
---@param state ReactiveState
---@param actionHandler fun(state: ReactiveState, action: string)
---@return UIManagerClass
function UIManager.Create(state, actionHandler)
	return UIManagerClass(state, actionHandler)
end



-- ============================================================================
-- UIManagerClass - Meta Methods
-- ============================================================================

function UIManagerClass:__init(state, actionHandler)
	self._state = state
	self._actionHandler = actionHandler
	self._cancellables = {}
end



-- ============================================================================
-- UIManagerClass - Public Methods
-- ============================================================================

---Sets up a publisher to assign any published values to the state.
---@param publisher ReactivePublisher The settings view
---@param key string The key to set in the state
function UIManagerClass:SetStateFromPublisher(key, publisher)
	self:AddCancellable(publisher:AssignToTableKey(self._state, key))
end

---Adds a cancellable to be owned by the manager.
---@param publisher ReactivePublisher
function UIManagerClass:AddCancellable(publisher)
	publisher:StoreIn(self._cancellables)
end

---Processes an action whenever a value is published.
---@param action string The action to be processed
---@param publisher ReactivePublisher The publisher
function UIManagerClass:ProcessActionFromPublisher(action, publisher)
	publisher
		:MapToValue(action)
		:CallMethod(self, "ProcessAction")
		:StoreIn(self._cancellables)
end

---Processes an action.
---@param action string
function UIManagerClass:ProcessAction(action)
	while action do
		action = self._actionHandler(self._state, action)
	end
end
