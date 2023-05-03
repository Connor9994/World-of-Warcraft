-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

--- Base Input UI Element Class.
-- The base input class is an abstract class which provides shared functionality between the @{Input} and
-- @{MultiLineInput} classes. It is a subclass of the @{Element} class.
-- @classmod BaseInput

local TSM = select(2, ...) ---@type TSM
local L = TSM.Include("Locale").GetTable()
local Rectangle = TSM.Include("UI.Rectangle")
local Log = TSM.Include("Util.Log")
local Theme = TSM.Include("Util.Theme")
local Delay = TSM.Include("Util.Delay")
local ScriptWrapper = TSM.Include("Util.ScriptWrapper")
local CustomPrice = TSM.Include("Service.CustomPrice")
local UIElements = TSM.Include("UI.UIElements")
local BaseInput = UIElements.Define("BaseInput", "Element", "ABSTRACT")
local private = {}
local BORDER_THICKNESS = 1
local CORNER_RADIUS = 4



-- ============================================================================
-- Public Class Methods
-- ============================================================================

function BaseInput.__init(self, frame)
	self.__super:__init(frame)

	self._borderTexture = Rectangle.New(frame)
	self._borderTexture:SetCornerRadius(CORNER_RADIUS)
	self._backgroundTexture = Rectangle.New(frame, 1)
	self._backgroundTexture:SetCornerRadius(CORNER_RADIUS)

	self._editBox:SetShadowColor(0, 0, 0, 0)
	self._editBox:SetAutoFocus(false)
	ScriptWrapper.Set(self._editBox, "OnEscapePressed", private.OnEscapePressed, self)
	ScriptWrapper.Set(self._editBox, "OnTabPressed", private.OnTabPressed, self)
	ScriptWrapper.Set(self._editBox, "OnEditFocusGained", private.OnEditFocusGained, self)
	ScriptWrapper.Set(self._editBox, "OnEditFocusLost", private.OnEditFocusLost, self)
	ScriptWrapper.Set(self._editBox, "OnChar", self._OnChar, self)

	self._lostFocusTimer = Delay.CreateTimer("INPUT_LOST_FOCUS_"..tostring(frame), self:__closure("_HandleFocusLost"))
	self._backgroundColor = "ACTIVE_BG_ALT"
	self._borderColor = nil
	self._value = ""
	self._escValue = nil
	self._justifyH = "LEFT"
	self._justifyV = "MIDDLE"
	self._font = "BODY_BODY2"
	self._pasteMode = nil
	self._validateFunc = nil
	self._validateContext = nil
	self._settingTable = nil
	self._settingKey = nil
	self._disabled = false
	self._isValid = true
	self._tabPrevPath = nil
	self._tabNextPath = nil
	self._onValueChangedHandler = nil
	self._onEnterPressedHandler = nil
	self._onValidationChangedHandler = nil
	self._onFocusLostHandler = nil
	self._pasteChars = {}
end

function BaseInput.Acquire(self)
	self.__super:Acquire()
	ScriptWrapper.Set(self._editBox, "OnEnterPressed", private.OnEnterPressed, self)
	ScriptWrapper.Set(self._editBox, "OnTextChanged", private.OnTextChanged, self)
end

function BaseInput.Release(self)
	self._lostFocusTimer:Cancel()
	ScriptWrapper.Clear(self._editBox, "OnEnterPressed")
	ScriptWrapper.Clear(self._editBox, "OnTextChanged")
	self._editBox:SetText("")
	self._editBox:ClearFocus()
	self._editBox:Enable()
	self._editBox:EnableMouse(true)
	self._editBox:EnableKeyboard(true)
	self._editBox:HighlightText(0, 0)
	self._editBox:SetHitRectInsets(0, 0, 0, 0)
	self._editBox:SetMaxLetters(2147483647)
	self._editBox:SetMaxBytes(2147483647)
	self._backgroundColor = "ACTIVE_BG_ALT"
	self._borderColor = nil
	self._value = ""
	self._escValue = nil
	self._justifyH = "LEFT"
	self._justifyV = "MIDDLE"
	self._font = "BODY_BODY2"
	self._pasteMode = nil
	self._validateFunc = nil
	self._validateContext = nil
	self._settingTable = nil
	self._settingKey = nil
	self._disabled = false
	self._isValid = true
	self._tabPrevPath = nil
	self._tabNextPath = nil
	self._onValueChangedHandler = nil
	self._onEnterPressedHandler = nil
	self._onValidationChangedHandler = nil
	self._onFocusLostHandler = nil
	wipe(self._pasteChars)
	self.__super:Release()
end

--- Sets the background of the input.
-- @tparam BaseInput self The input object
-- @tparam ?string|nil color The background color as a theme color key or nil
-- @treturn BaseInput The input object
function BaseInput.SetBackgroundColor(self, color)
	assert(color == nil or Theme.IsValidColor(color))
	self._backgroundColor = color
	return self
end

--- Sets the border of the input.
-- @tparam BaseInput self The input object
-- @tparam ?string|nil color The border color as a theme color key or nil
-- @treturn BaseInput The input object
function BaseInput.SetBorderColor(self, color)
	assert(color == nil or Theme.IsValidColor(color))
	self._borderColor = color
	return self
end

--- Sets the horizontal justification of the input.
-- @tparam BaseInput self The input object
-- @tparam string justifyH The horizontal justification (either "LEFT", "CENTER" or "RIGHT")
-- @treturn BaseInput The input object
function BaseInput.SetJustifyH(self, justifyH)
	assert(justifyH == "LEFT" or justifyH == "CENTER" or justifyH == "RIGHT")
	self._justifyH = justifyH
	return self
end

--- Sets the vertical justification of the input.
-- @tparam BaseInput self The input object
-- @tparam string justifyV The vertical justification (either "TOP", "MIDDLE" or "BOTTOM")
-- @treturn BaseInput The input object
function BaseInput.SetJustifyV(self, justifyV)
	assert(justifyV == "TOP" or justifyV == "MIDDLE" or justifyV == "BOTTOM")
	self._justifyV = justifyV
	return self
end

--- Sets the font.
-- @tparam BaseInput self The input object
-- @tparam string font The font key
-- @treturn BaseInput The input object
function BaseInput.SetFont(self, font)
	assert(Theme.GetFont(font))
	self._font = font
	return self
end

--- Sets the path of the inputs to jump to when tab (or shift-tab to go backwards) is pressed.
-- @tparam BaseInput self The input object
-- @tparam string prevPath The path to the previous input (for shift-tab)
-- @tparam string nextPath The path to the next input (for tab)
-- @treturn BaseInput The input object
function BaseInput.SetTabPaths(self, prevPath, nextPath)
	self._tabPrevPath = prevPath
	self._tabNextPath = nextPath
	return self
end

--- Set the highlight to all or some of the input's text.
-- @tparam BaseInput self The input object
-- @tparam number starting The position at which to start the highlight
-- @tparam number ending The position at which to stop the highlight
-- @treturn BaseInput The input object
function BaseInput.HighlightText(self, starting, ending)
	if starting and ending then
		self._editBox:HighlightText(starting, ending)
	else
		self._editBox:HighlightText()
	end
	return self
end

--- Sets the current value.
-- @tparam BaseInput self The input object
-- @tparam string value The value
-- @treturn BaseInput The input object
function BaseInput.SetValue(self, value)
	if type(value) == "number" then
		value = tostring(value)
	end
	assert(type(value) == "string")
	if self:_SetValueHelper(value, true) then
		self._escValue = self._value
	else
		self._escValue = nil
	end
	return self
end

--- Sets whether or not the input is disabled.
-- @tparam BaseInput self The input object
-- @tparam boolean disabled Whether or not the input is disabled
-- @treturn BaseInput The input object
function BaseInput.SetDisabled(self, disabled)
	self._disabled = disabled
	if disabled then
		self._editBox:Disable()
	else
		self._editBox:Enable()
	end
	return self
end

--- Sets the function to use to validate the input text.
-- @tparam BaseInput self The input object
-- @tparam ?string|function validateFunc A function which returns true if the passed text is valid
-- or false and an error message if not, or one of the following strings for built in validate
-- functions: "CUSTOM_PRICE"
-- @param[opt=nil] context Extra context to pass to the validate function. For the built-in
-- "CUSTOM_PRICE" function, this is optionally a list of bad sources. For the built-in "NUMBER"
-- function, this must be a string such as "0:1000" to specify the min and max values.
-- @treturn BaseInput The input object
function BaseInput.SetValidateFunc(self, validateFunc, context)
	if type(validateFunc) == "function" then
		self._validateFunc = validateFunc
		self._validateContext = context
	elseif validateFunc == "CUSTOM_PRICE" then
		assert(context == nil or type(context) == "table")
		self._validateFunc = private.CustomPriceValidateFunc
		self._validateContext = context
	elseif validateFunc == "NUMBER" then
		local minVal, maxVal, extra = strsplit(":", context)
		assert(tonumber(minVal) <= tonumber(maxVal) and not extra)
		self._validateFunc = private.NumberValidateFunc
		self._validateContext = context
	else
		error("Invalid validateFunc: "..tostring(validateFunc))
	end
	return self
end

--- Returns the input's focus state.
-- @tparam BaseInput self The input object
function BaseInput.HasFocus(self)
	return self._editBox:HasFocus()
end

--- Sets whether or not this input is focused.
-- @tparam BaseInput self The input object
-- @tparam boolean focused Whether or not this input is focused
-- @treturn BaseInput The input object
function BaseInput.SetFocused(self, focused)
	if focused then
		self._editBox:SetFocus()
	else
		self._editBox:ClearFocus()
	end
	return self
end

--- Clears the highlight.
-- @tparam BaseInput self The input object
-- @treturn BaseInput The input object
function BaseInput.ClearHighlight(self)
	self._editBox:HighlightText(0, 0)
	return self
end

--- Set the maximum number of letters for the input's entered text.
-- @tparam BaseInput self The input object
-- @tparam number number The number of letters for entered text
-- @treturn BaseInput The input object
function BaseInput.SetMaxLetters(self, number)
	self._editBox:SetMaxLetters(number)
	return self
end

--- Gets the input value.
-- @tparam BaseInput self The input object
-- @treturn string The input value
function BaseInput.GetValue(self)
	return self._ignoreEnter and self._value or strtrim(self._value)
end

--- Registers a script handler.
-- @tparam BaseInput self The input object
-- @tparam string script The script to register for
-- @tparam[opt=nil] function handler The script handler which should be called
-- @treturn BaseInput The element object
function BaseInput.SetScript(self, script, handler)
	if script == "OnValueChanged" then
		self._onValueChangedHandler = handler
	elseif script == "OnEnterPressed" then
		self._onEnterPressedHandler = handler
	elseif script == "OnValidationChanged" then
		self._onValidationChangedHandler = handler
	elseif script == "OnFocusLost" then
		self._onFocusLostHandler = handler
	else
		error("Invalid base input script: "..tostring(script))
	end
	return self
end

--- Sets the setting info.
-- This method is used to have the value of the input automatically correspond with the value of a field in a table.
-- This is useful for inputs which are tied directly to settings.
-- @tparam BaseInput self The input object
-- @tparam table tbl The table which the field to set belongs to
-- @tparam string key The key into the table to be set based on the input state
-- @treturn BaseInput The input object
function BaseInput.SetSettingInfo(self, tbl, key)
	assert(self._value == "")
	self._settingTable = tbl
	self._settingKey = key
	self:SetValue(tbl[key])
	return self
end

--- Get the current validation state.
-- @tparam BaseInput self The input object
-- @treturn boolean The current valiation state
function BaseInput.IsValid(self)
	return self._isValid
end

--- Sets the input into paste mode for supporting the pasting of large strings.
-- @tparam BaseInput self The input object
-- @treturn BaseInput The input object
function BaseInput.SetPasteMode(self)
	self._pasteMode = true
	ScriptWrapper.Clear(self._editBox, "OnTextChanged")
	self._editBox:SetMaxBytes(1)
	return self
end

function BaseInput.Draw(self)
	self.__super:Draw()

	self:_DrawBackgroundAndBorder()

	-- set the font
	self._editBox:SetFont(Theme.GetFont(self._font):GetWowFont())

	-- set the justification
	self._editBox:SetJustifyH(self._justifyH)
	self._editBox:SetJustifyV(self._justifyV)

	-- set the text color
	self._editBox:SetTextColor(Theme.GetColor(self:_GetTextColorKey()):GetFractionalRGBA())

	-- set the highlight color
	self._editBox:SetHighlightColor(Theme.GetColor("TEXT%HIGHLIGHT"):GetFractionalRGBA())

	if not self._editBox:HasFocus() then
		-- set the text
		self._editBox:SetText(self._value)
	end
end



-- ============================================================================
-- Private Class Methods
-- ============================================================================

function BaseInput._GetTextColorKey(self, tintKey)
	-- the text color should have maximum contrast with the input color, so set it to white/black based on the input color
	local backgroundIsLight = Theme.GetColor(self._disabled and "PRIMARY_BG_ALT" or self._backgroundColor):IsLight()
	local colorKey = backgroundIsLight and "FULL_BLACK" or "FULL_WHITE"
	if self._disabled then
		return colorKey..(backgroundIsLight and "-DISABLED" or "+DISABLED")
	elseif tintKey then
		return colorKey..(backgroundIsLight and "+" or "-")..tintKey
	else
		return colorKey
	end
end

function BaseInput._SetValueHelper(self, value, noCallback)
	if not self._validateFunc or self:_validateFunc(strtrim(value), self._validateContext) then
		self._value = value
		if self._settingTable then
			if type(self._settingTable[self._settingKey]) == "number" then
				value = tonumber(value)
				assert(value)
			end
			self._settingTable[self._settingKey] = value
		end
		if not noCallback and self._onValueChangedHandler then
			self:_onValueChangedHandler()
		end
		if not self._isValid then
			self._isValid = true
			self:_DrawBackgroundAndBorder()
			if self._onValidationChangedHandler then
				self:_onValidationChangedHandler()
			end
		end
		return true
	else
		if self._value == "" then
			self._value = value
		end
		if self._isValid then
			self._isValid = false
			self:_DrawBackgroundAndBorder()
			if self._onValidationChangedHandler then
				self:_onValidationChangedHandler()
			end
		end
		return false
	end
end

function BaseInput._DrawBackgroundAndBorder(self)
	assert(self._backgroundColor)
	self._backgroundTexture:SetInset((self._borderColor or not self._isValid) and BORDER_THICKNESS or 0)
	self._backgroundTexture:SetColor(Theme.GetColor(self._disabled and "PRIMARY_BG_ALT" or self._backgroundColor))
	if self._borderColor or not self._isValid then
		self._borderTexture:Show()
		self._borderTexture:SetColor(Theme.GetColor(not self._isValid and "FEEDBACK_RED" or self._borderColor))
	else
		self._borderTexture:Hide()
	end
end

function BaseInput._OnChar(self, c)
	-- can be overridden
	if not self._pasteMode then
		return
	end
	tinsert(self._pasteChars, c)
	ScriptWrapper.Set(self._editBox, "OnUpdate", private.OnUpdate, self)
end

function BaseInput._OnTextChanged(self, value)
	-- can be overridden
end

function BaseInput._ShouldKeepFocus(self)
	-- can be overridden
	return false
end

function BaseInput._HandleFocusLost(self)
	if self:HasFocus() then
		return
	end
	if self._onFocusLostHandler then
		self:_onFocusLostHandler()
	end
end



-- ============================================================================
-- Local Script Handlers
-- ============================================================================

function private.OnEscapePressed(self)
	if self._escValue then
		self._value = self._escValue
		assert(self:_SetValueHelper(self._escValue))
	end
	self:SetFocused(false)
	self:HighlightText(0, 0)
	self:Draw()
end

function private.OnTabPressed(self)
	local isValid, err = true, nil
	if self._validateFunc then
		local value = strtrim(self._editBox:GetText())
		isValid, err = self:_validateFunc(value, self._validateContext)
	end
	if not isValid and err then
		-- TODO: better way to show the error message?
		Log.PrintUser(err)
	end
	self:SetFocused(false)
	self:HighlightText(0, 0)
	if self._tabPrevPath and IsShiftKeyDown() then
		self:GetElement(self._tabPrevPath):SetFocused(true)
	elseif self._tabNextPath and not IsShiftKeyDown() then
		self:GetElement(self._tabNextPath):SetFocused(true)
	end
end

function private.OnEnterPressed(self)
	local isValid, err = true, nil
	if self._validateFunc then
		local value = strtrim(self._editBox:GetText())
		isValid, err = self:_validateFunc(value, self._validateContext)
	end
	if not isValid and err then
		-- TODO: better way to show the error message?
		Log.PrintUser(err)
	end
	if isValid then
		self:SetFocused(false)
		self:HighlightText(0, 0)
		if self._onEnterPressedHandler then
			self:_onEnterPressedHandler()
		end
	end
end

function private.OnEditFocusGained(self)
	self._lostFocusTimer:Cancel()
	self:Draw()
	self:HighlightText()
end

function private.OnEditFocusLost(self)
	if self:_ShouldKeepFocus() then
		self:SetFocused(true)
		return
	end
	if self._isValid then
		self._escValue = self._value
	end
	self:HighlightText(0, 0)
	self:Draw()
	if not self._isValid then
		self._isValid = true
		self:_DrawBackgroundAndBorder()
		if self._onValidationChangedHandler then
			self:_onValidationChangedHandler()
		end
	end
	-- wait until the next frame before calling the handler
	self._lostFocusTimer:RunForFrames(0)
end

function private.OnTextChanged(self, isUserInput)
	if not isUserInput then
		return
	end
	local value = self._editBox:GetText()
	self:_SetValueHelper(value)
	self:_OnTextChanged(value)
end

function private.OnUpdate(self)
	ScriptWrapper.Clear(self._editBox, "OnUpdate")
	local value = table.concat(self._pasteChars)
	wipe(self._pasteChars)
	self:_SetValueHelper(value)
	self:_OnTextChanged(value)
end



-- ============================================================================
-- Built In Validate Functions
-- ============================================================================

function private.CustomPriceValidateFunc(_, value, badSources)
	local isValid, err = CustomPrice.Validate(value, badSources)
	if not isValid then
		return false, L["Invalid custom price."].." "..err
	end
	return true
end

function private.NumberValidateFunc(input, value, range)
	local minValue, maxValue = strsplit(":", range)
	minValue = tonumber(minValue)
	maxValue = tonumber(maxValue)
	value = tonumber(value)
	if not value then
		return false, L["Invalid numeric value."]
	elseif value < minValue or value > maxValue then
		return false, format(L["Value must be between %d and %d."], minValue, maxValue)
	end
	return true
end
