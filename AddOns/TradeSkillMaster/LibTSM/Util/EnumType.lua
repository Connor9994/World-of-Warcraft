-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local EnumType = TSM.Init("Util.EnumType") ---@class Util.EnumType
local private = {
	valueStr = {},
}



-- ============================================================================
-- Metatables
-- ============================================================================

local ENUM_MT = {
	__newindex = function()
		error("EnumType is read-only")
	end,
	__index = function(_, key)
		error("Unknown enum value: "..tostring(key))
	end
}
local ROOT_VALUE_PROXY = newproxy(true)
getmetatable(ROOT_VALUE_PROXY).__tostring = function(self)
	local str = private.valueStr[self]
	if not str then
		error("Invalid enum value")
	end
	return str
end
getmetatable(ROOT_VALUE_PROXY).__metatable = ROOT_VALUE_PROXY



-- ============================================================================
-- Module Functions
-- ============================================================================

---@class EnumTypeValue

---Creates an enum.
---@generic T
---@param name string
---@param values T
---@return T
function EnumType.New(name, values)
	assert(type(name) == "string")
	for k, v in pairs(values) do
		assert(type(k) == "string" and type(v) == "userdata")
		assert(getmetatable(v) == ROOT_VALUE_PROXY)
		assert(not private.valueStr[v])
		private.valueStr[v] = name.."."..k
	end
	return setmetatable(values, ENUM_MT)
end

---Creates a new enum value.
---@return EnumTypeValue
function EnumType.CreateValue()
	local value = newproxy(ROOT_VALUE_PROXY)
	---@cast value -userdata, +EnumTypeValue
	return value
end
