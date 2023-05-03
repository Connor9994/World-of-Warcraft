-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local UIElements = TSM.Include("UI.UIElements")
local BUTTON_PADDING = 16



-- ============================================================================
-- Element Definition
-- ============================================================================

local Toggle = UIElements.Define("Toggle", "Element") ---@class Toggle: Element
Toggle:_ExtendStateSchema()
	:AddStringField("font", "BODY_BODY3")
	:AddOptionalStringField("selectedOption", nil)
	:AddBooleanField("disabled", false)
	:Commit()



-- ============================================================================
-- Meta Class Methods
-- ============================================================================

function Toggle:__init()
	self.__super:__init(UIElements.CreateFrame(self, "Frame"))
	self._checkboxes = {}
	self._onValueChangedHandler = nil
end

function Toggle:Release()
	wipe(self._checkboxes)
	self._onValueChangedHandler = nil
	self.__super:Release()
end



-- ============================================================================
-- Public Class Methods
-- ============================================================================

---Add an option.
---@param option string The text for the new option
---@param setSelected boolean Whether or not to set this as the selected option (false by default)
---@return Toggle
function Toggle:AddOption(option, setSelected)
	self:_CreateCheckbox(option)
	if setSelected then
		self:SetOption(option)
	end
	return self
end

---Sets the currently selected option.
---@param option string The text of the option to select
---@return Toggle
function Toggle:SetOption(option)
	assert(type(option) == "string")
	self._state.selectedOption = option
	return self
end

---Clears the currently selected option.
---@return Toggle
function Toggle:ClearOption()
	self._state.selectedOption = nil
	return self
end

---Enables or disables the toggle.
---@param disabled boolean Whether or not the toggle is disabled.
---@return Toggle
function Toggle:SetDisabled(disabled)
	self._state.disabled = disabled
	return self
end

---Registers a script handler.
---@param script "OnValueChanged"
---@param handler fun(toggle: Toggle, ...: any) The handler
---@return Toggle
function Toggle:SetScript(script, handler)
	if script == "OnValueChanged" then
		self._onValueChangedHandler = handler
	else
		error("Unknown Toggle script: "..tostring(script))
	end
	return self
end

---Sets the font.
---@param font string The font key
---@return Toggle
function Toggle:SetFont(font)
	self._state.font = font
	return self
end

---Get the selected option.
---@return string|nil
function Toggle:GetValue()
	return self._state.selectedOption
end

function Toggle:Draw()
	self.__super:Draw()
	local height = self:_GetDimension("HEIGHT")
	local checkboxWidth = (self:_GetDimension("WIDTH") / #self._checkboxes) + BUTTON_PADDING
	local offsetX = 0
	for _, checkbox in ipairs(self._checkboxes) do
		checkbox:SetSize(checkboxWidth, height)
		checkbox:WipeAnchors()
		checkbox:AddAnchor("TOPLEFT", offsetX, 0)
		offsetX = offsetX + checkboxWidth
		checkbox:Draw()
	end
end



-- ============================================================================
-- Private Class Methods
-- ============================================================================

function Toggle:_CreateCheckbox(option)
	local checkbox = UIElements.New("Checkbox", self._id.."_Option"..(#self._checkboxes + 1))
		:SetFont(self._state.font)
		:SetWidth("AUTO")
		:SetTheme("RADIO")
		:SetText(option)
		:SetScript("OnValueChanged", self:__closure("_HandleCheckboxClick"))
	tinsert(self._checkboxes, checkbox)
	self:_AddChild(checkbox)

	self._state:PublisherForKeyChange("font")
		:CallMethod(checkbox, "SetFont")
	self._state:PublisherForKeyChange("disabled")
		:CallMethod(checkbox, "SetDisabled")
	self._state:PublisherForKeyChange("selectedOption")
		:MapBooleanEquals(option)
		:CallMethod(checkbox, "SetCheckedSilent")
	self._state:PublisherForKeyChange("selectedOption")
		:CallMethodIfNotNil(self, "_onValueChangedHandler")
end

function Toggle:_HandleCheckboxClick(checkbox)
	self:SetOption(checkbox:GetText())
end
