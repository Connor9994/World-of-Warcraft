-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Rectangle = TSM.Include("UI.Rectangle")
local Theme = TSM.Include("Util.Theme")
local Math = TSM.Include("Util.Math")
local UIElements = TSM.Include("UI.UIElements")
local SyntaxHelpers = TSM.Include("UI.SyntaxHelpers")
local CORNER_RADIUS = 4



-- ============================================================================
-- Element Definition
-- ============================================================================

local SyntaxInput = UIElements.Define("SyntaxInput", "Element") ---@class SyntaxInput: Element
SyntaxInput:_ExtendStateSchema()
	:AddOptionalStringField("validationError", nil)
	:Commit()



-- ============================================================================
-- Public Class Methods
-- ============================================================================

function SyntaxInput:__init()
	local frame = UIElements.CreateFrame(self, "ScrollFrame")
	frame:EnableMouseWheel(true)
	frame:SetClipsChildren(true)
	self._editBox = UIElements.CreateFrame(self, "EditBox", nil, frame)
	frame:SetScrollChild(self._editBox)

	self.__super:__init(frame)

	frame:TSMSetScript("OnUpdate", self:__closure("_HandleFrameUpdate"))
	frame:TSMSetScript("OnMouseWheel", self:__closure("_HandleFrameMouseWheel"))
	frame:TSMSetScript("OnMouseUp", self:__closure("_HandleFrameMouseUp"))

	self._scrollbar = TSM.UI.Scrollbar.Create(frame)
	self._scrollbar:TSMSetScript("OnValueChanged", self:__closure("_HandleScrollbarValueChanged"))

	self._backgroundTexture = Rectangle.New(frame, 1)
	self._backgroundTexture:SetCornerRadius(CORNER_RADIUS)

	self._editBox:TSMSetFont("BODY_BODY2")
	self._editBox:TSMSubscribeTextColor("TEXT")
	-- TODO: Better highlight color
	self._editBox:SetHighlightColor(0.2, 0.2, 0.2, 1)
	self._editBox:SetShadowColor(0, 0, 0, 0)
	self._editBox:SetAutoFocus(false)
	self._editBox:SetMultiLine(true)
	self._editBox:SetTextInsets(8, 8, 4, 4)
	self._editBox:SetJustifyH("LEFT")
	self._editBox:SetJustifyV("TOP")
	self._editBox:TSMSetScript("OnEscapePressed", self:__closure("_HandleEscapePressed"))
	self._editBox:TSMSetScript("OnKeyDown", self:__closure("_HandleKeyDown"))
	self._editBox:TSMSetScript("OnMouseUp", self:__closure("_HandleMouseUp"))
	self._editBox:TSMSetScript("OnCursorChanged", self:__closure("_HandleCursorChanged"))
	self._editBox:TSMSetScript("OnSizeChanged", self:__closure("_HandleSizeChanged"))

	self._value = nil
	self._prevValue = nil
	self._prevIndentValue = nil
	self._numLinesCache = nil
	self._validateFunc = nil
	self._validateContext = nil
	self._scrollValue = 0
	self._onDoneEditing = nil
	self._onValueChanged = nil
end

function SyntaxInput:Acquire()
	self.__super:Acquire()

	self._backgroundTexture:SubscribeColor("PRIMARY_BG")

	self._editBox:TSMSetScript("OnEnterPressed", self:__closure("_HandleEnterPressed"))
	self._editBox:TSMSetScript("OnTextChanged", self:__closure("_HandleTextChanged"))
	self._editBox:SetFocus()

	self._scrollValue = 0
	self._scrollbar:SetValue(0)
end

function SyntaxInput:Release()
	self._backgroundTexture:CancelAll()
	self._editBox:TSMCancelAll()
	self._editBox:TSMSetScript("OnEnterPressed", nil)
	self._editBox:TSMSetScript("OnTextChanged", nil)
	self._editBox:SetText("")
	self._editBox:ClearFocus()
	self._editBox:Enable()
	self._editBox:EnableMouse(true)
	self._editBox:EnableKeyboard(true)
	self._editBox:HighlightText(0, 0)
	self._editBox:SetHitRectInsets(0, 0, 0, 0)
	self._editBox:SetMaxLetters(2147483647)
	self._editBox:SetMaxBytes(2147483647)
	self._value = nil
	self._prevValue = nil
	self._prevIndentValue = nil
	self._numLinesCache = nil
	self._validateFunc = nil
	self._validateContext = nil
	self._onDoneEditing = nil
	self._onValueChanged = nil
	self.__super:Release()
end

---Sets the current value.
---@param value string The value
---@return SyntaxInput @The input object
function SyntaxInput:SetValue(value)
	if type(value) == "number" then
		value = tostring(value)
	end
	assert(type(value) == "string")
	self:_SetValueHelper(value)
	self:_SetSyntax(SyntaxHelpers.SetAutoIndent(value or ""))
	return self
end

---Sets the function to use to validate the input text.
---@alias SyntaxInputValidateFunc fun(input: SyntaxInput, value: string, context?: any): bool, string?
---@param validateFunc SyntaxInputValidateFunc A function which returns whether or not the value is
---valid and an error message if not
---@param context? any Extra context to pass to the validate function
---@return SyntaxInput
function SyntaxInput:SetValidateFunc(validateFunc, context)
	assert(type(validateFunc) == "function")
	self._validateFunc = validateFunc
	self._validateContext = context
	return self
end

---Get the value of the input and any active validation error.
---@return string?
function SyntaxInput:GetValue()
	return self._value, self._state.validationError
end

---Registers a script handler.
---@param script "OnDoneEditing"|"OnValueChanged" The script to register for
---@param handler function The script handler which will be called with the syntax input object
---followed by any arguments to the script
---@return SyntaxInput
function SyntaxInput:SetScript(script, handler)
	if script == "OnDoneEditing" then
		self._onDoneEditing = handler
	elseif script == "OnValueChanged" then
		self._onValueChanged = handler
	else
		error("Unknown SyntaxInput script: "..tostring(script))
	end
	return self
end

function SyntaxInput:Draw()
	self._editBox:SetWidth(self:_GetBaseFrame():GetWidth())
	self.__super:Draw()

	local maxScroll = self:_GetMaxScroll()
	self._scrollbar:SetMinMaxValues(0, maxScroll)
	self._scrollbar:SetValue(min(self._scrollValue, maxScroll))
	self._scrollbar.thumb:SetHeight(TSM.UI.Scrollbar.GetLength(self._editBox:GetHeight(), self:_GetDimension("HEIGHT")))
end



-- ============================================================================
-- Private Class Methods
-- ============================================================================

function SyntaxInput:_SetValueHelper(value)
	local sanitizedValue = SyntaxHelpers.StripColors(value)
	sanitizedValue = SyntaxHelpers.StripWhitespace(sanitizedValue)
	sanitizedValue = strtrim(sanitizedValue)
	local isValid, errMsg = self:_validateFunc(sanitizedValue, self._validateContext)
	assert(type(isValid) == "boolean" and isValid == not errMsg)
	self._value = isValid and sanitizedValue or nil
	self._state.validationError = errMsg
	if self._onValueChanged then
		self:_onValueChanged()
	end
	return isValid
end

function SyntaxInput:_SetSyntax(value)
	if value == self._prevValue then
		return
	end
	local cursor = self._editBox:GetCursorPosition()
	local newValue, newCursor = SyntaxHelpers.SetSyntaxColor(value, cursor)
	local numLines = select(2, gsub(newValue, "\n", ""))
	self._prevValue = newValue
	if value ~= newValue then
		self:_SetValueHelper(newValue)
		self._editBox:SetText(newValue)
		self:Draw()
		if newCursor then
			cursor = Math.Bound(newCursor, 0, #newValue)
			self._editBox:SetCursorPosition(cursor)
		end
	end
	if numLines ~= self._numLinesCache then
		self._numLinesCache = numLines
		value = self._editBox:GetText()
		if value ~= self._prevIndentValue then
			newValue, newCursor = SyntaxHelpers.SetIndent(value, cursor)
			self._prevIndentValue = newValue
			if value ~= newValue then
				self:_SetValueHelper(newValue)
				self._editBox:SetText(newValue)
				self:Draw()
				if newCursor then
					self._editBox:SetCursorPosition(Math.Bound(newCursor, 0, #newValue))
				end
			end
		end
	end
end

function SyntaxInput:_GetMaxScroll()
	return max(self._editBox:GetHeight() - self:_GetDimension("HEIGHT"), 0)
end

function SyntaxInput:_HandleFrameUpdate()
	if (self:_GetBaseFrame():IsMouseOver() and self:_GetMaxScroll() > 0) or self._scrollbar.dragging then
		self._scrollbar:Show()
	else
		self._scrollbar:Hide()
	end
end

function SyntaxInput:_HandleFrameMouseWheel(_, direction)
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

function SyntaxInput:_HandleFrameMouseUp()
	self._editBox:SetFocus()
end

function SyntaxInput:_HandleScrollbarValueChanged(_, value)
	value = max(min(value, self:_GetMaxScroll()), 0)
	self:_GetBaseFrame():SetVerticalScroll(value)
	self._scrollValue = value
end

function SyntaxInput:_HandleEscapePressed()
	self._editBox:ClearFocus()
	self:_onDoneEditing(false)
end

function SyntaxInput:_HandleKeyDown()
	if IsShiftKeyDown() then
		self._editBox:TSMSetScript("OnEnterPressed", self:__closure("_HandleEnterPressed"))
	else
		self._editBox:TSMSetScript("OnEnterPressed", nil)
	end
end

function SyntaxInput:_HandleMouseUp()
	if (self._lastClickTime or math.huge) < (GetTime() - 0.5) then
		self._lastClickTime = nil
		self._lastClickPos = nil
	end
	local cursorPos = self._editBox:GetUTF8CursorPosition()
	if self._lastClickTime and self._lastClickPos == cursorPos then
		if (self._lastClickTime or 0) > (GetTime() - 0.5) then
			local value = self._editBox:GetText()
			local starPos, endPos = 0, 0
			for i = 1, cursorPos do
				if not strmatch(strsub(value, i, i), "[a-zA-Z]") then
					starPos = i
				end
			end
			for i = cursorPos + 1, #value do
				if not strmatch(strsub(value, i, i), "[a-zA-Z]") then
					endPos = i - 1
					break
				end
			end
			self._editBox:HighlightText(starPos, endPos)
		end
	else
		self._lastClickTime = GetTime()
		self._lastClickPos = cursorPos
	end
end

function SyntaxInput:_HandleCursorChanged(_, x, y, _, lineHeight)
	y = abs(y)
	local offset = y - self._scrollValue
	if offset < 0 or offset > self:_GetDimension("HEIGHT") - lineHeight then
		self._scrollbar:SetValue(y)
	end
end

function SyntaxInput:_HandleSizeChanged(_, _, height)
	local maxScroll = self:_GetMaxScroll()
	self._scrollbar:SetMinMaxValues(0, maxScroll)
	self._scrollbar:SetValue(min(self._scrollValue, maxScroll))
	self._scrollbar.thumb:SetHeight(TSM.UI.Scrollbar.GetLength(self._editBox:GetHeight(), self:_GetDimension("HEIGHT")))
end

function SyntaxInput:_HandleEnterPressed()
	self._editBox:ClearFocus()
	self._editBox:HighlightText(0, 0)
	self:_onDoneEditing(true)
end

function SyntaxInput:_HandleTextChanged(_, isUserInput)
	if not isUserInput then
		return
	end
	local value = self._editBox:GetText()
	self:_SetValueHelper(value)
	self:_SetSyntax(value)
end
