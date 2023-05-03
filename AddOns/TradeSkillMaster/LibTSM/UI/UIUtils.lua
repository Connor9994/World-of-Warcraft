-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local UIUtils = TSM.Init("UI.UIUtils") ---@class UI.UIUtils
local Environment = TSM.Include("Environment")
local Analytics = TSM.Include("Util.Analytics")
local Theme = TSM.Include("Util.Theme")
local Wow = TSM.Include("Util.Wow")
local ItemInfo = TSM.Include("Service.ItemInfo")
local private = {
	analyticsPath = {},
}
local TIME_LEFT_STRINGS = {}
do
	-- generate the TIME_LEFT_STRINGS values
	local colors = {
		Theme.GetColor("FEEDBACK_RED"),
		Theme.GetColor("FEEDBACK_RED"),
		Theme.GetColor("FEEDBACK_YELLOW"),
		Theme.GetColor("FEEDBACK_GREEN"),
	}
	local strs = Environment.IsRetail() and { "1h", "2h", "24h", "48h" } or { "30m", "2h", "8h", "24h" }
	assert(#colors == #strs)
	for i = 1, #colors do
		TIME_LEFT_STRINGS[i] = colors[i]:ColorText(strs[i])
	end
end



-- ============================================================================
-- Module Functions
-- ============================================================================

---Gets an item name formatted for display.
---@param item string The item to display
---@param tintPct? number The tintPct to apply to the quality color
function UIUtils.GetDisplayItemName(item, tintPct)
	local name = ItemInfo.GetName(item)
	local quality = ItemInfo.GetQuality(item)
	local craftedQuality = ItemInfo.GetCraftedQuality(item)
	return UIUtils.GetQualityColoredText(name, quality, craftedQuality, tintPct)
end

---Colors text based on an item quality.
---@param name string The name of the item
---@param quality number The quality of the item
---@param craftedQuality? number The crafted quality of the item
---@param tintPct? number The tintPct to apply to the quality color
---@return string
function UIUtils.GetQualityColoredText(name, quality, craftedQuality, tintPct)
	if not name or not quality then
		return
	end
	local color = Theme.GetItemQualityColor(quality)
	local result = color:GetTint(tintPct or 0):ColorText(name)
	local craftedQualityIcon = craftedQuality and Professions.GetChatIconMarkupForQuality(craftedQuality, true)
	if craftedQualityIcon then
		result = result.." "..craftedQualityIcon
	end
	return result
end

---Gets the localized string representation of an auction time left.
---@param timeLeft number The time left index (i.e. from WoW APIs)
---@return string
function UIUtils.GetTimeLeftString(timeLeft)
	local str = TIME_LEFT_STRINGS[timeLeft]
	assert(str, "Invalid timeLeft: "..tostring(timeLeft))
	return str
end

---Registers a UI for analytics tracking.
---@param uiName string The name of the UI
function UIUtils.RegisterUIForAnalytics(uiName)
	assert(not private.analyticsPath[uiName])
	private.analyticsPath[uiName] = ""
end

---Logs an analytics action for the UI path changing.
---@param uiName string The name of the UI
---@param ... string The extra path components
function UIUtils.AnalyticsRecordPathChange(uiName, ...)
	assert(private.analyticsPath[uiName])
	local path = strjoin("/", uiName, ...)
	if path == private.analyticsPath[uiName] then
		return
	end
	Analytics.Action("UI_NAVIGATION", private.analyticsPath[uiName], path)
	private.analyticsPath[uiName] = path
end

---Logs an analytics action for a UI being closed.
---@param uiName string The name of the UI
function UIUtils.AnalyticsRecordClose(uiName)
	assert(private.analyticsPath[uiName])
	if private.analyticsPath[uiName] == "" then
		return
	end
	Analytics.Action("UI_NAVIGATION", private.analyticsPath[uiName], "")
	private.analyticsPath[uiName] = ""
end

---Handles a modified item click from a UI.
---@param itemString string The itemString for the item which was clicked on
function UIUtils.HandleModifiedItemClick(itemString)
	local link = ItemInfo.GetLink(itemString)
	if not link then
		return
	end
	if IsShiftKeyDown() then
		Wow.SafeItemRef(link)
	elseif IsControlKeyDown() then
		DressUpItemLink(link)
	end
end
