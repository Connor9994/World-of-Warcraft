-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Types = TSM.Init("Util.CustomStringClasses.Types") ---@class Util.CustomStringClasses.Types
local EnumType = TSM.Include("Util.EnumType")
local NamedTupleListType = TSM.Include("Util.NamedTupleListType")
Types.TOKEN = EnumType.New("TOKEN", {
	UNKNOWN = EnumType.CreateValue(),
	NUMBER = EnumType.CreateValue(),
	MONEY = EnumType.CreateValue(),
	NEWLINE = EnumType.CreateValue(),
	WHITESPACE = EnumType.CreateValue(),
	IDENTIFIER = EnumType.CreateValue(),
	FUNCTION = EnumType.CreateValue(),
	COMMA = EnumType.CreateValue(),
	LEFT_PAREN = EnumType.CreateValue(),
	RIGHT_PAREN = EnumType.CreateValue(),
	MATH_OPERATOR = EnumType.CreateValue(),
	COLORCODE = EnumType.CreateValue(),
	NEGATIVE_OPERATOR = EnumType.CreateValue(),
})
local ITEM_STRING_MATCH_STR_1 = "^[ip]:[0-9:%-]+$"
local ITEM_STRING_MATCH_STR_2 = "^item:[0-9:%-]+$"



-- ============================================================================
-- Module Methods
-- ============================================================================

---Creates a new token list.
---@return NamedTupleList
function Types.CreateTokenList()
	return NamedTupleListType.New("token", "str", "startPos", "endPos")
end

---Return if a value is an item parameter.
---@param value string
---@return boolean
function Types.IsItemParam(value)
	return value == "baseitem" or Types.IsItemStringParam(value)
end

---Return if a value is an item string parameter.
---@param value string
---@return boolean
function Types.IsItemStringParam(value)
	return (strmatch(value, ITEM_STRING_MATCH_STR_1) or strmatch(value, ITEM_STRING_MATCH_STR_2)) and true or false
end
