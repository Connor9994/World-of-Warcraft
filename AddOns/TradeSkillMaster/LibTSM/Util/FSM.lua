-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local FSM = TSM.Init("Util.FSM") ---@class Util.FSM
local Machine = TSM.Include("Util.FSMClasses.Machine")
local State = TSM.Include("Util.FSMClasses.State")



-- ============================================================================
-- Module Functions
-- ============================================================================

---Create a new FSM.
---@param name string The name of the FSM (for debugging purposes)
---@return FSMObject @The FSM object
function FSM.New(name)
	return Machine.Create(name)
end

---Create a new FSM state.
---@param state string The name of the state
---@return FSMState @The State object
function FSM.NewState(state)
	return State.Create(state)
end
