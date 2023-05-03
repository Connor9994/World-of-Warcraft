-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Util = TSM.Init("Util.DatabaseClasses.Util") ---@class Util.DatabaseClasses.Util
local Math = TSM.Include("Util.Math")



-- ============================================================================
-- Module Functions
-- ============================================================================

---Converts a value to the equivalent value which should be used for an index.
---@param value any The value to convert
---@return any @The index value
function Util.ToIndexValue(value)
	if value == nil then
		return nil
	end
	local valueType = type(value)
	if valueType == "string" then
		return strlower(value)
	elseif valueType == "boolean" then
		return value and 1 or 0
	elseif valueType == "number" and Math.IsNan(value) then
		return nil
	else
		return value
	end
end
