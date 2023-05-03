-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Tooltip = TSM.Init("UI.Tooltip") ---@class UI.Tooltip
local Environment = TSM.Include("Environment")
local ItemString = TSM.Include("Util.ItemString")
local RecipeString = TSM.Include("Util.RecipeString")
local CraftString = TSM.Include("Util.CraftString")
local String = TSM.Include("Util.String")
local Event = TSM.Include("Util.Event")
local ItemInfo = TSM.Include("Service.ItemInfo")
local Profession = TSM.Include("Service.Profession")
local private = {
	currentParent = nil,
	registeredEvent = false,
	optionalMatTable = {},
	unusedOptionalMatTempTables = {},
}
local SEP_CHAR = "\001"



-- ============================================================================
-- Module Functions
-- ============================================================================

--- Gets the character used as a separator between left and right text in a tooltip line
-- @treturn string The separator character
function Tooltip.GetSepChar()
	return SEP_CHAR
end

--- Shows a tooltip which is anchored to the frame.
-- @tparam Frame parent The parent and anchor frame for the tooltip
-- @tparam ?number|string|function data The tooltip information which can be either an itemId,
-- itemString, raw text string, or function which returns one of the other options
-- @tparam ?boolean noWrapping Disables wrapping of text lines
-- @tparam[opt=0] number xOffset An extra x offset to apply to the anchor of the tooltip
function Tooltip.Show(parent, data, noWrapping, xOffset)
	if not data then
		return
	elseif type(data) == "function" then
		local funcNoWrapping, funcXOffset = false, 0
		data, funcNoWrapping, funcXOffset = data()
		noWrapping = noWrapping or funcNoWrapping
		xOffset = xOffset or funcXOffset
	end
	local showCompare = false
	GameTooltip:SetOwner(parent, "ANCHOR_PRESERVE")
	GameTooltip:ClearAllPoints()
	GameTooltip:SetPoint("LEFT", parent, "RIGHT", xOffset or 0, 0)
	if type(data) == "number" then
		GameTooltip:SetHyperlink("item:"..data)
		showCompare = true
	elseif type(data) == "string" and strfind(data, "^craft:") then
		data = strmatch(data, "craft:(%d+)")
		GameTooltip:SetCraftSpell(tonumber(data))
	elseif type(data) == "string" and strfind(data, "^enchant:") then
		GameTooltip:SetHyperlink(data)
	elseif type(data) == "string" and data == "arena" then
		GameTooltip:SetText(ARENA_POINTS, HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b)
		GameTooltip:AddLine(TOOLTIP_ARENA_POINTS, nil, nil, nil, 1)
	elseif type(data) == "string" and data == "honor" then
		GameTooltip:SetText(HONOR_POINTS, HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b)
		GameTooltip:AddLine(TOOLTIP_HONOR_POINTS, nil, nil, nil, 1)
	elseif Environment.IsRetail() and type(data) == "string" and strfind(data, "^currency:") then
		GameTooltip:SetCurrencyByID(strmatch(data, "currency:(%d+)"))
	elseif type(data) == "string" and strfind(data, "^r:") then
		local spellId = RecipeString.GetSpellId(data)
		if Environment.HasFeature(Environment.FEATURES.C_TRADE_SKILL_UI) then
			-- Release the previous tables
			for _, tbl in ipairs(private.optionalMatTable) do
				wipe(tbl)
				tinsert(private.unusedOptionalMatTempTables, tbl)
			end
			wipe(private.optionalMatTable)
			local level = RecipeString.GetLevel(data)
			for _, slotId, itemId in RecipeString.OptionalMatIterator(data) do
				local info = tremove(private.unusedOptionalMatTempTables) or {}
				info.itemID = itemId
				info.dataSlotIndex = slotId
				info.quantity = 1
				tinsert(private.optionalMatTable, info)
			end
			GameTooltip:SetRecipeResultItem(spellId, private.optionalMatTable, nil, level)
		else
			local index = Profession.GetIndexByCraftString(CraftString.Get(spellId))
			if index then
				GameTooltip:SetTradeSkillItem(index)
			end
		end
	elseif type(data) == "string" and (strfind(data, "^\124c.+\124Hitem:") or ItemString.IsItem(data)) then
		GameTooltip:SetHyperlink(ItemInfo.GetLink(data))
		showCompare = true
	elseif type(data) == "string" and (strfind(data, "^\124c.+\124Hbattlepet:") or ItemString.IsPet(data)) then
		if not Environment.HasFeature(Environment.FEATURES.BATTLE_PETS) then
			return
		end
		if strmatch(data, "p:") then
			data = ItemInfo.GetLink(data)
		end
		local _, speciesID, level, breedQuality, maxHealth, power, speed = strsplit(":", data)
		BattlePetToolTip_Show(tonumber(speciesID), tonumber(level) or 0, tonumber(breedQuality) or 0, tonumber(maxHealth) or 0, tonumber(power) or 0, tonumber(speed) or 0, gsub(gsub(data, "^(.*)%[", ""), "%](.*)$", ""))
	else
		for line in String.SplitIterator(data, "\n", true) do
			local textLeft, textRight = strsplit(SEP_CHAR, line)
			if textRight then
				GameTooltip:AddDoubleLine(textLeft, textRight, 1, 1, 1, 1, 1, 1)
			else
				GameTooltip:AddLine(textLeft, 1, 1, 1, not noWrapping)
			end
		end
	end
	GameTooltip:Show()
	private.currentParent = parent
	if showCompare then
		assert(not private.registeredEvent)
		private.registeredEvent = true
		Event.Register("MODIFIER_STATE_CHANGED", private.UpdateCompareState)
		private.UpdateCompareState()
	end
end

--- Hides the current tooltip.
function Tooltip.Hide()
	if private.registeredEvent then
		Event.Unregister("MODIFIER_STATE_CHANGED", private.UpdateCompareState)
		private.registeredEvent = false
	end
	private.currentParent = nil
	GameTooltip:SetOwner(UIParent, "ANCHOR_PRESERVE")
	GameTooltip:ClearAllPoints()
	GameTooltip:SetPoint("CENTER")
	GameTooltip:Hide()
	if Environment.HasFeature(Environment.FEATURES.BATTLE_PETS) then
		BattlePetTooltip:ClearAllPoints()
		BattlePetTooltip:SetPoint("CENTER")
		BattlePetTooltip:Hide()
	end
end

--- Checks if the tooltip is visible.
-- @tparam[opt=nil] table frame An optional parent frame to check against
-- @treturn boolean Whether or not the tooltip is visible
function Tooltip.IsVisible(frame)
	if frame then
		return private.currentParent == frame
	else
		return private.currentParent and true or false
	end
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.UpdateCompareState()
	if private.currentParent and GameTooltip:IsVisible() and IsShiftKeyDown() then
		GameTooltip_ShowCompareItem(GameTooltip)
	else
		GameTooltip_HideShoppingTooltips(GameTooltip)
	end
end
