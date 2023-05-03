-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Money = TSM.Init("Util.Money") ---@class Util.Money
local Environment = TSM.Include("Environment")
local Math = TSM.Include("Util.Math")
local String = TSM.Include("Util.String")
local private = {
	textMoneyParts = {},
}
local GOLD_ICON = "|TInterface\\MoneyFrame\\UI-GoldIcon:0|t"
local SILVER_ICON = "|TInterface\\MoneyFrame\\UI-SilverIcon:0|t"
local COPPER_ICON = "|TInterface\\MoneyFrame\\UI-CopperIcon:0|t"
local GOLD_ICON_DISABLED = "|TInterface\\MoneyFrame\\UI-GoldIcon:0:0:0:0:1:1:0:1:0:1:100:100:100|t"
local SILVER_ICON_DISABLED = "|TInterface\\MoneyFrame\\UI-SilverIcon:0:0:0:0:1:1:0:1:0:1:100:100:100|t"
local COPPER_ICON_DISABLED = "|TInterface\\MoneyFrame\\UI-CopperIcon:0:0:0:0:1:1:0:1:0:1:100:100:100|t"
local GOLD_TEXT = "|cffffd70ag|r"
local SILVER_TEXT = "|cffc7c7cfs|r"
local COPPER_TEXT = "|cffeda55fc|r"
local GOLD_TEXT_DISABLED = "|cff5d5222g|r"
local SILVER_TEXT_DISABLED = "|cff464646s|r"
local COPPER_TEXT_DISABLED = "|cff402d22c|r"
---@alias MoneyStringOption
---|'"OPT_ICON"' # Use texture icons instead of g/s/c letters
---|'"OPT_TRIM"' # Remove any non-significant 0 valued denominations (i.e. "1g" instead of "1g 0s 0c")
---|'"OPT_83_NO_COPPER"' # Remove the copper value entirely if we're patch 8.3 or newer
---|'"OPT_DISABLE"' # Uses a muted color from the denomination text (not allowed with "OPT_ICON")
---|'"OPT_RETAIL_ROUND"' # Round to the nearest silver on retail when >= 1g



-- ============================================================================
-- Module Functions
-- ============================================================================

---Converts a numeric money value (in copper) to a string for display in the UI.
---@param value number The money value to be converted in copper (100 copper per silver, 100 silver per gold)
---@param color? string A color prefix to use for the numbers in the result (i.e. "|cff00ff00" for red)
---@param ... MoneyStringOption One or more options to modify the format of the result
---@return string @The string representation of the specified money value
function Money.ToString(value, color, ...)
	value = tonumber(value)
	if not value then
		return
	end
	assert(not color or strmatch(color, "^\124cff[0-9a-fA-F][0-9a-fA-F][0-9a-fA-F][0-9a-fA-F][0-9a-fA-F][0-9a-fA-F]$"))

	-- parse the options
	local isIcon, trim, disabled, roundCopper, noCopper = false, false, false, false, false
	for i = 1, select('#', ...) do
		local opt = select(i, ...)
		if opt == nil then
			-- pass
		elseif opt == "OPT_ICON" then
			isIcon = true
		elseif opt == "OPT_TRIM" then
			trim = true
		elseif opt == "OPT_DISABLE" then
			disabled = true
		elseif opt == "OPT_RETAIL_ROUND" then
			roundCopper = Environment.IsRetail()
		elseif opt == "OPT_83_NO_COPPER" then
			noCopper = Environment.IsRetail()
		else
			error("Invalid option: "..tostring(opt))
		end
	end

	local isNegative = value < 0
	value = abs(value)
	if roundCopper and value >= COPPER_PER_GOLD then
		value = Math.Round(value, COPPER_PER_SILVER)
	end
	local gold = floor(value / COPPER_PER_GOLD)
	local silver = floor((value % COPPER_PER_GOLD) / COPPER_PER_SILVER)
	local copper = floor(value % COPPER_PER_SILVER)
	assert(not noCopper or copper == 0)
	local goldText, silverText, copperText = nil, nil, nil
	if isIcon then
		if disabled then
			goldText, silverText, copperText = GOLD_ICON_DISABLED, SILVER_ICON_DISABLED, COPPER_ICON_DISABLED
		else
			goldText, silverText, copperText = GOLD_ICON, SILVER_ICON, COPPER_ICON
		end
	else
		if disabled then
			goldText, silverText, copperText = GOLD_TEXT_DISABLED, SILVER_TEXT_DISABLED, COPPER_TEXT_DISABLED
		else
			goldText, silverText, copperText = GOLD_TEXT, SILVER_TEXT, COPPER_TEXT
		end
	end

	if value == 0 then
		return private.FormatNumber(0, true, color)..(noCopper and silverText or copperText)
	end

	wipe(private.textMoneyParts)
	-- add gold
	if gold > 0 then
		private.InsertMoneyPart(gold, color, goldText)
	end
	-- add silver
	if silver > 0 or (not trim and gold > 0) then
		private.InsertMoneyPart(silver, color, silverText)
	end
	-- add copper
	if copper > 0 or (not trim and not roundCopper and not noCopper and (gold + silver) > 0) then
		private.InsertMoneyPart(copper, color, copperText)
	end
	local text = table.concat(private.textMoneyParts, " ")
	if isNegative then
		return (color and (color.."-|r") or "-")..text
	else
		return text
	end
end

---Converts a string money value to a number value (in copper).
---The value passed to this function can contain colored text, but must use g/s/c for the denominations and not icons.
---@param value string The money value to be converted as a string
---@return string @The numeric representation of the specified money value
function Money.FromString(value)
	-- remove any colors
	value = gsub(gsub(strtrim(value), "\124c([0-9a-fA-F][0-9a-fA-F][0-9a-fA-F][0-9a-fA-F][0-9a-fA-F][0-9a-fA-F][0-9a-fA-F][0-9a-fA-F])", ""), "\124r", "")
	-- remove any separators
	value = gsub(value, String.Escape(LARGE_NUMBER_SEPERATOR), "")

	-- extract gold/silver/copper values
	local gold = tonumber(strmatch(value, "([0-9]+)g"))
	local silver = tonumber(strmatch(value, "([0-9]+)s"))
	local copper = tonumber(strmatch(value, "([0-9]+)c"))
	if not gold and not silver and not copper then return end

	-- test that there are no extra characters (other than spaces)
	value = gsub(value, "[0-9]+g", "", 1)
	value = gsub(value, "[0-9]+s", "", 1)
	value = gsub(value, "[0-9]+c", "", 1)
	if strtrim(value) ~= "" then return end

	return ((gold or 0) * COPPER_PER_GOLD) + ((silver or 0) * COPPER_PER_SILVER) + (copper or 0)
end

---Returns the colored copper indicator text.
---@return string
function Money.GetCopperText()
	return COPPER_TEXT
end

---Returns the colored silver indicator text.
---@return string
function Money.GetSilverText()
	return SILVER_TEXT
end

---Returns the colored gold indicator text.
---@return string
function Money.GetGoldText()
	return GOLD_TEXT
end



-- ============================================================================
-- Helper Functions
-- ============================================================================

function private.InsertMoneyPart(value, color, text)
	tinsert(private.textMoneyParts, private.FormatNumber(value, #private.textMoneyParts == 0, color)..text)
end

function private.FormatNumber(num, isMostSignificant, color)
	if num < 10 and not isMostSignificant then
		num = "0"..num
	elseif isMostSignificant and num >= 1000 then
		num = tostring(num)
		local result = ""
		for i = 4, #num, 3 do
			result = LARGE_NUMBER_SEPERATOR..strsub(num, -(i - 1), -(i - 3))..result
		end
		result = strsub(num, 1, (#num % 3 == 0) and 3 or (#num % 3))..result
		num = result
	end

	if color then
		return color..num.."|r"
	else
		return num
	end
end
