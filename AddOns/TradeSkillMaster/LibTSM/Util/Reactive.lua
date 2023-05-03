-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Reactive = TSM.Init("Util.Reactive") ---@class Util.Reactive
local StateSchema = TSM.Include("Util.ReactiveClasses.StateSchema")
local Stream = TSM.Include("Util.ReactiveClasses.Stream")



-- ============================================================================
-- Module Methods
-- ============================================================================

---Creates a new state schema object.
---@return ReactiveStateSchema @The state schema
function Reactive.CreateStateSchema()
	return StateSchema.Create()
end

---Creates a new stream object.
---@return ReactiveStream @The stream
function Reactive.CreateStream()
	return Stream.Create()
end
