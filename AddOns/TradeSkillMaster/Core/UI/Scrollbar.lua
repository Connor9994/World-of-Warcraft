-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

--- Scrollbar Functions
-- @module Scrollbar

local TSM = select(2, ...) ---@type TSM
local Scrollbar = TSM.UI:NewPackage("Scrollbar")
local Math = TSM.Include("Util.Math")
local Theme = TSM.Include("Util.Theme")
local WidgetExtensions = TSM.Include("UI.WidgetExtensions")
local private = {
	scrollbars = {},
}



-- ============================================================================
-- Module Functions
-- ============================================================================

function Scrollbar.OnInitialize()
	Theme.RegisterChangeCallback(private.OnThemeChange)
end

--- Creates a scrollbar.
-- @return The newly-created scrollbar
function Scrollbar.Create(parent, isHorizontal)
	local scrollbar = CreateFrame("Slider", nil, parent, nil)
	WidgetExtensions.AddToObject(scrollbar)
	scrollbar:ClearAllPoints()
	if isHorizontal then
		scrollbar:SetOrientation("HORIZONTAL")
		scrollbar:SetPoint("BOTTOMLEFT", 4, 0)
		scrollbar:SetPoint("BOTTOMRIGHT", -4, 0)
		scrollbar:SetHitRectInsets(-4, -4, -6, -10)
		scrollbar:SetHeight(Theme.GetScrollbarWidth())
		scrollbar:SetPoint("BOTTOMLEFT", Theme.GetScrollbarMargin(), Theme.GetScrollbarMargin())
		scrollbar:SetPoint("BOTTOMRIGHT", -Theme.GetScrollbarMargin(), Theme.GetScrollbarMargin())
	else
		scrollbar:SetOrientation("VERTICAL")
		scrollbar:SetHitRectInsets(-6, -10, -4, -4)
		scrollbar:SetWidth(Theme.GetScrollbarWidth())
		scrollbar:SetPoint("TOPRIGHT", -Theme.GetScrollbarMargin(), -Theme.GetScrollbarMargin())
		scrollbar:SetPoint("BOTTOMRIGHT", -Theme.GetScrollbarMargin(), Theme.GetScrollbarMargin())
	end
	scrollbar:SetValueStep(1)
	scrollbar:SetObeyStepOnDrag(true)
	scrollbar:TSMSetScript("OnShow", private.ScrollbarOnLeave)
	scrollbar:TSMSetScript("OnHide", private.ScrollbarOnMouseUp)
	scrollbar:TSMSetScript("OnUpdate", private.ScrollbarOnUpdate)
	scrollbar:TSMSetScript("OnEnter", private.ScrollbarOnEnter)
	scrollbar:TSMSetScript("OnLeave", private.ScrollbarOnLeave)
	scrollbar:TSMSetScript("OnMouseDown", private.ScrollbarOnMouseDown)
	scrollbar:TSMSetScript("OnMouseUp", private.ScrollbarOnMouseUp)

	scrollbar:SetThumbTexture(scrollbar:CreateTexture())
	scrollbar.thumb = scrollbar:GetThumbTexture()
	scrollbar.thumb:SetPoint("CENTER")
	scrollbar.thumb:SetColorTexture(Theme.GetColor("ACTIVE_BG_ALT"):GetFractionalRGBA())
	if isHorizontal then
		scrollbar.thumb:SetHeight(Theme.GetScrollbarWidth())
	else
		scrollbar.thumb:SetWidth(Theme.GetScrollbarWidth())
	end
	tinsert(private.scrollbars, scrollbar)

	return scrollbar
end

function Scrollbar.GetLength(contentLength, visibleLength)
	-- arbitrary minimum length
	local minLength = 25
	-- the maximum length of the scrollbar is half the total visible length
	local maxLength = visibleLength / 2
	if minLength >= maxLength or visibleLength >= contentLength then
		return maxLength
	end

	-- calculate the ratio of our total content length to the visible length (capped at 10)
	local ratio = min(contentLength / visibleLength, 10)
	assert(ratio >= 1)

	-- calculate the appropriate scroll bar length based on the ratio (which is between 1 and 10)
	return Math.Scale(ratio, 1, 10, maxLength, minLength)
end



-- ============================================================================
-- Local Script Handlers
-- ============================================================================

function private.ScrollbarOnUpdate(scrollbar)
	scrollbar:SetFrameLevel(scrollbar:GetParent():GetFrameLevel() + 5)
end

function private.ScrollbarOnEnter(scrollbar)
	scrollbar.thumb:SetColorTexture(Theme.GetColor("ACTIVE_BG_ALT+SELECTED_HOVER"):GetFractionalRGBA())
end

function private.ScrollbarOnLeave(scrollbar)
	scrollbar.thumb:SetColorTexture(Theme.GetColor("ACTIVE_BG_ALT"):GetFractionalRGBA())
end

function private.ScrollbarOnMouseDown(scrollbar)
	scrollbar.dragging = true
end

function private.ScrollbarOnMouseUp(scrollbar)
	scrollbar.dragging = nil
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.OnThemeChange()
	for _, scrollbar in ipairs(private.scrollbars) do
		scrollbar.thumb:SetColorTexture(Theme.GetColor("ACTIVE_BG_ALT"):GetFractionalRGBA())
	end
end
