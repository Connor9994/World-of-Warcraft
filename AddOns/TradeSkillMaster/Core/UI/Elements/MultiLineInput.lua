-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

--- MultiLineInput UI Element Class.
-- The input element allows the user to enter text. It is a subclass of the @{BaseInput} class.
-- @classmod MultiLineInput

local TSM = select(2, ...) ---@type TSM
local Theme = TSM.Include("Util.Theme")
local ScriptWrapper = TSM.Include("Util.ScriptWrapper")
local UIElements = TSM.Include("UI.UIElements")
local MultiLineInput = UIElements.Define("MultiLineInput", "BaseInput")
local private = {}



-- ============================================================================
-- Public Class Methods
-- ============================================================================

function MultiLineInput.__init(self)
	local frame = UIElements.CreateFrame(self, "ScrollFrame")
	self._editBox = CreateFrame("EditBox", nil, frame)
	self.__super:__init(frame)

	frame:EnableMouseWheel(true)
	frame:SetClipsChildren(true)
	ScriptWrapper.Set(frame, "OnUpdate", private.FrameOnUpdate, self)
	ScriptWrapper.Set(frame, "OnMouseWheel", private.FrameOnMouseWheel, self)
	ScriptWrapper.Set(frame, "OnMouseUp", private.FrameOnMouseUp, self)

	self._scrollbar = TSM.UI.Scrollbar.Create(frame)
	ScriptWrapper.Set(self._scrollbar, "OnValueChanged", private.OnScrollbarValueChanged, self)

	self._editBox:SetMultiLine(true)
	self._editBox:SetTextInsets(8, 8, 4, 4)
	frame:SetScrollChild(self._editBox)

	ScriptWrapper.Set(self._editBox, "OnCursorChanged", private.OnCursorChanged, self)
	ScriptWrapper.Set(self._editBox, "OnSizeChanged", private.OnSizeChanged, self)

	self._scrollValue = 0
	self._ignoreEnter = false
end

function MultiLineInput.Acquire(self)
	self:SetBackgroundColor("ACTIVE_BG")
	self:SetJustifyH("LEFT")
	self:SetJustifyV("TOP")
	self.__super:Acquire()
	self._scrollValue = 0
	self._ignoreEnter = false
	self._scrollbar:SetValue(0)
end

function MultiLineInput.Draw(self)
	self._editBox:SetWidth(self:_GetBaseFrame():GetWidth())

	self.__super:Draw()

	local maxScroll = self:_GetMaxScroll()
	self._scrollbar:SetMinMaxValues(0, maxScroll)
	self._scrollbar:SetValue(min(self._scrollValue, maxScroll))
	self._scrollbar.thumb:SetHeight(TSM.UI.Scrollbar.GetLength(self._editBox:GetHeight(), self:_GetDimension("HEIGHT")))
end

--- Sets to ignore enter pressed scripts for the input multi-line input.
-- @tparam MultiLineInput self The multi-line input object
-- @treturn MultiLineInput The multi-line input object
function MultiLineInput.SetIgnoreEnter(self)
	ScriptWrapper.Clear(self._editBox, "OnEnterPressed")
	self._ignoreEnter = true
	return self
end



-- ============================================================================
-- Private Class Methods
-- ============================================================================

function MultiLineInput._OnScrollValueChanged(self, value)
	self:_GetBaseFrame():SetVerticalScroll(value)
	self._scrollValue = value
end

function MultiLineInput._GetMaxScroll(self)
	return max(self._editBox:GetHeight() - self:_GetDimension("HEIGHT"), 0)
end



-- ============================================================================
-- Local Script Handlers
-- ============================================================================

function private.OnCursorChanged(self, _, y, _, lineHeight)
	y = abs(y)
	local offset = y - self._scrollValue
	if offset < 0 or offset > self:_GetDimension("HEIGHT") - lineHeight then
		self._scrollbar:SetValue(y)
	end
end

function private.OnSizeChanged(self, _, height)
	local maxScroll = self:_GetMaxScroll()
	self._scrollbar:SetMinMaxValues(0, maxScroll)
	self._scrollbar:SetValue(min(self._scrollValue, maxScroll))
	self._scrollbar.thumb:SetHeight(TSM.UI.Scrollbar.GetLength(self._editBox:GetHeight(), self:_GetDimension("HEIGHT")))
end

function private.OnScrollbarValueChanged(self, value)
	value = max(min(value, self:_GetMaxScroll()), 0)
	self:_OnScrollValueChanged(value)
end

function private.FrameOnUpdate(self)
	if (self:_GetBaseFrame():IsMouseOver() and self:_GetMaxScroll() > 0) or self._scrollbar.dragging then
		self._scrollbar:Show()
	else
		self._scrollbar:Hide()
	end
end

function private.FrameOnMouseWheel(self, direction)
	local parentScroll = nil
	local parent = self:GetParentElement()
	while parent do
		if parent:__isa(TSM.UI.ScrollFrame) then
			parentScroll = parent
			break
		else
			parent = parent:GetParentElement()
		end
	end

	if parentScroll then
		local minValue, maxValue = self._scrollbar:GetMinMaxValues()
		if direction > 0 then
			if self._scrollbar:GetValue() == minValue then
				local scrollAmount = min(parentScroll:_GetDimension("HEIGHT") / 3, Theme.GetMouseWheelScrollAmount())
				parentScroll._scrollbar:SetValue(parentScroll._scrollbar:GetValue() + -1 * direction * scrollAmount)
			else
				local scrollAmount = min(self:_GetDimension("HEIGHT") / 3, Theme.GetMouseWheelScrollAmount())
				self._scrollbar:SetValue(self._scrollbar:GetValue() + -1 * direction * scrollAmount)
			end
		else
			if self._scrollbar:GetValue() == maxValue then
				local scrollAmount = min(parentScroll:_GetDimension("HEIGHT") / 3, Theme.GetMouseWheelScrollAmount())
				parentScroll._scrollbar:SetValue(parentScroll._scrollbar:GetValue() + -1 * direction * scrollAmount)
			else
				local scrollAmount = min(self:_GetDimension("HEIGHT") / 3, Theme.GetMouseWheelScrollAmount())
				self._scrollbar:SetValue(self._scrollbar:GetValue() + -1 * direction * scrollAmount)
			end
		end
	else
		local scrollAmount = min(self:_GetDimension("HEIGHT") / 3, Theme.GetMouseWheelScrollAmount())
		self._scrollbar:SetValue(self._scrollbar:GetValue() + -1 * direction * scrollAmount)
	end
end

function private.FrameOnMouseUp(self)
	self:SetFocused(true)
end
