-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local CustomString = TSM.Init("Util.CustomString") ---@class Util.CustomString
local Types = TSM.Include("Util.CustomStringClasses.Types")
local Tokenizer = TSM.Include("Util.CustomStringClasses.Tokenizer")
CustomString.TOKEN_TYPE = Types.TOKEN



-- ============================================================================
-- Module Functions
-- ============================================================================

---Creates a new token list object.
---@return NamedTupleList
function CustomString.CreateTokenList()
	return Types.CreateTokenList()
end

---Populates an empty token list object based on the specified custom string.
---@param tokenList NamedTupleList The token list
---@param str string The custom string
function CustomString.PopulateTokenList(tokenList, str)
	Tokenizer.GetTokens(str, tokenList)
end
