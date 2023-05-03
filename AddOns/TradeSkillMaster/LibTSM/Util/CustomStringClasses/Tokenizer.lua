-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Tokenizer = TSM.Init("Util.CustomStringClasses.Tokenizer") ---@class Util.CustomStringClasses.Tokenizer
local Types = TSM.Include("Util.CustomStringClasses.Types")
local String = TSM.Include("Util.String")
local private = {}
local COLORED_CURRENCY_PATTERN = {
	g = "|cff%x%x%x%x%x%xg|r",
	s = "|cff%x%x%x%x%x%xs|r",
	c = "|cff%x%x%x%x%x%xc|r",
}
local CURRENCY_PATTERNS = {
	COLORED_CURRENCY_PATTERN.g.."%s*%d+"..COLORED_CURRENCY_PATTERN.s.."%s*%d+"..COLORED_CURRENCY_PATTERN.c,
	COLORED_CURRENCY_PATTERN.g.."%s*%d+"..COLORED_CURRENCY_PATTERN.s.."%s*%d+c",
	COLORED_CURRENCY_PATTERN.g.."%s*%d+s%s*%d+"..COLORED_CURRENCY_PATTERN.c,
	"g%s*%d+"..COLORED_CURRENCY_PATTERN.s.."%s*%d+"..COLORED_CURRENCY_PATTERN.c,
	"g%s*%d+s%s*%d+"..COLORED_CURRENCY_PATTERN.c,
	"g%s*%d+"..COLORED_CURRENCY_PATTERN.s.."%s*%d+c",
	"g%s*%d+s%s*%d+c",
	COLORED_CURRENCY_PATTERN.g.."%s*%d+"..COLORED_CURRENCY_PATTERN.s,
	"g%s*%d+"..COLORED_CURRENCY_PATTERN.s,
	COLORED_CURRENCY_PATTERN.g.."%s*%d+s",
	"g%s*%d+s",
	COLORED_CURRENCY_PATTERN.g.."%s*%d+"..COLORED_CURRENCY_PATTERN.c,
	COLORED_CURRENCY_PATTERN.g.."%s*%d+c",
	"g%s*%d+"..COLORED_CURRENCY_PATTERN.c,
	"g%s*%d+c",
	COLORED_CURRENCY_PATTERN.g,
	"g",
	COLORED_CURRENCY_PATTERN.s.."%s*%d+"..COLORED_CURRENCY_PATTERN.c,
	"s%s*%d+"..COLORED_CURRENCY_PATTERN.c,
	COLORED_CURRENCY_PATTERN.s.."%s*%d+c",
	"s%s*%d+c",
	COLORED_CURRENCY_PATTERN.s,
	"s",
	COLORED_CURRENCY_PATTERN.c,
	"c",
}



-- ============================================================================
-- Module Functions
-- ============================================================================

---Generates a token list based on the specified custom string.
---@param text string The custom string text
---@param tokenList NamedTupleList The list to store the result in
function Tokenizer.GetTokens(text, tokenList)
	-- Check if the whole thing is just a currency string for backwards compatibility (optionally with commas / color strings)
	local moneyStr = gsub(text, String.Escape(LARGE_NUMBER_SEPERATOR), "")
	for _, pattern in ipairs(CURRENCY_PATTERNS) do
		if strmatch(moneyStr, "%s*%d+"..pattern.."%s*") == moneyStr then
			tokenList:InsertRow(Types.TOKEN.MONEY, text, 1, #text)
			return
		end
	end

	local pos = 1
	while true do
		local token, str, nextPos = private.NextToken(text, pos, tokenList)
		if not token then
			break
		end
		tokenList:InsertRow(token, str, pos, nextPos - 1)
		pos = nextPos
	end
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.NextToken(text, pos, tokenList)
	local char = strsub(text, pos, pos)
	if char == "" then
		return
	end
	if char == "\n" then
		-- Newline
		return Types.TOKEN.NEWLINE, char, pos + 1
	elseif char == " " or char == "\t" then
		-- Whitespace token
		local nextPos = strfind(text, "[^\t ]", pos + 1) or (#text + 1)
		local str = strsub(text, pos, nextPos - 1)
		return Types.TOKEN.WHITESPACE, str, nextPos
	end
	local isNegativeSign = false
	if char == "-" then
		-- Check if this is a negative sign vs. just a subtraction
		local prevToken = nil
		for _, token in tokenList:Iterator() do
			if token ~= Types.TOKEN.WHITESPACE and token ~= Types.TOKEN.COLORCODE and token ~= Types.TOKEN.NEWLINE then
				prevToken = token
			end
		end
		if not prevToken or prevToken == Types.TOKEN.COMMA or prevToken == Types.TOKEN.LEFT_PAREN or prevToken == Types.TOKEN.MATH_OPERATOR then
			return Types.TOKEN.NEGATIVE_OPERATOR, char, pos + 1
		end
	end
	if char == "." or tonumber(char) or isNegativeSign then
		-- Get the full number token
		local match = strmatch(text, "^[0-9%.]+", pos)
		pos = pos + #match
		if not tonumber(match) then
			return Types.TOKEN.UNKNOWN, match, pos
		end
		local nextChar = strsub(text, pos, pos)
		if nextChar == "e" or nextChar == "E" then
			-- Check if there's an exponent next
			local expMatch = strmatch(text, "^([eE]%-?%d+)", pos)
			if not expMatch then
				return Types.TOKEN.UNKNOWN, match..nextChar, pos + 1
			end
			return Types.TOKEN.NUMBER, match..expMatch, pos + #expMatch
		elseif nextChar == "g" or nextChar == "s" or nextChar == "c" or nextChar == "|" then
			-- There is a currency symbol next - get the rest of the money string
			local moneyMatch = nil
			for _, pattern in ipairs(CURRENCY_PATTERNS) do
				moneyMatch = strmatch(text, "^"..pattern, pos)
				if moneyMatch then
					break
				end
			end
			local str = match..(moneyMatch or nextChar)
			pos = pos + (moneyMatch and #moneyMatch or 1)
			if not moneyMatch and nextChar == "|" then
				return Types.TOKEN.UNKNOWN, str, pos + 1
			end
			if strmatch(str, "%.") then
				-- Can't use decimal places in money strings
				return Types.TOKEN.UNKNOWN, str, pos
			else
				return Types.TOKEN.MONEY, str, pos
			end
		end
		return Types.TOKEN.NUMBER, match, pos
	elseif char == "," then
		return Types.TOKEN.COMMA, char, pos + 1
	elseif char == "(" then
		return Types.TOKEN.LEFT_PAREN, char, pos + 1
	elseif char == ")" then
		return Types.TOKEN.RIGHT_PAREN, char, pos + 1
	elseif char == "+" or char == "-" or char == "*" or char == "/" or char == "^" or char == "%" then
		return Types.TOKEN.MATH_OPERATOR, char, pos + 1
	elseif char == "|" and strmatch(text, "^|c", pos) then
		local str = strsub(text, pos, pos + 9)
		return Types.TOKEN.COLORCODE, str, pos + 10
	elseif char == "|" and strmatch(text, "^|r", pos) then
		return Types.TOKEN.COLORCODE, "|r", pos + 2
	else
		-- Find the end of this identifier
		local nextPos = strfind(text, "[\n \t/%.%-,%(%)%+%^%*%%|]", pos + 1) or (#text + 1)
		local str = strsub(text, pos, nextPos - 1)
		if Types.IsItemParam(str) then
			return Types.TOKEN.IDENTIFIER, str, nextPos
		elseif strmatch(str, "[a-z]+") ~= str then
			-- Identifiers and function names must only consist of letters
			return Types.TOKEN.UNKNOWN, str, nextPos
		elseif strfind(text, "^%s*%(", nextPos) then
			-- If the next token is a left paren, this is a function and not an identifier
			return Types.TOKEN.FUNCTION, str, nextPos
		else
			return Types.TOKEN.IDENTIFIER, str, nextPos
		end
	end
end
