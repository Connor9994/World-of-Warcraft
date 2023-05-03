-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local UIElements = TSM.Include("UI.UIElements")



-- ============================================================================
-- Element Definition
-- ============================================================================

local ToggleYesNo = UIElements.Define("ToggleYesNo", "Element") ---@class ToggleYesNo: Element
ToggleYesNo:_ExtendStateSchema()
	:AddBooleanField("value", false)
	:AddBooleanField("disabled", false)
	:Commit()



-- ============================================================================
-- Meta Class Methods
-- ============================================================================

function ToggleYesNo:__init()
	self.__super:__init(UIElements.CreateFrame(self, "Frame"))
	self._content = nil
	self._setSettingInfo = false
	self._onValueChangedHandler = nil
end

function ToggleYesNo:Acquire()
	local frame = self:_GetBaseFrame()
	self._content = UIElements.New("Frame", "toggle")
		:SetLayout("HORIZONTAL")
		:AddAnchor("TOPLEFT", frame)
		:AddAnchor("BOTTOMRIGHT", frame)
		:SetContext(self)
		:AddChild(UIElements.New("Checkbox", "yes")
			:SetWidth("AUTO")
			:SetTheme("RADIO")
			:SetFont("BODY_BODY2")
			:SetText(YES)
			:SetContext(true)
			:SetScript("OnValueChanged", self:__closure("_HandleCheckboxValueChanged"))
		)
		:AddChild(UIElements.New("Checkbox", "no")
			:SetWidth("AUTO")
			:SetTheme("RADIO")
			:SetFont("BODY_BODY2")
			:SetMargin(8, 0, 0, 0)
			:SetText(NO)
			:SetContext(false)
			:SetScript("OnValueChanged", self:__closure("_HandleCheckboxValueChanged"))
		)
		:AddChild(UIElements.New("Spacer", "spacer"))
	self:_AddChild(self._content)

	self.__super:Acquire()

	self._state:PublisherForKeyChange("disabled")
		:CallMethod(self:GetElement("toggle.yes"), "SetDisabled")
	self._state:PublisherForKeyChange("disabled")
		:CallMethod(self:GetElement("toggle.no"), "SetDisabled")

	self._state:PublisherForKeyChange("value")
		:CallMethod(self:GetElement("toggle.yes"), "SetCheckedSilent")
	self._state:PublisherForKeyChange("value")
		:InvertBoolean()
		:CallMethod(self:GetElement("toggle.no"), "SetCheckedSilent")
end

function ToggleYesNo:Release()
	self._content = nil
	self._setSettingInfo = false
	self._onValueChangedHandler = nil
	self.__super:Release()
end



-- ============================================================================
-- Public Class Methods
-- ============================================================================

---Sets the setting info which ties the value of the toggle to the key of a table.
---@param tbl table The table which the value is stored in
---@param key string The key at which the value is stored
---@return ToggleYesNo
function ToggleYesNo:SetSettingInfo(tbl, key)
	assert(not self._setSettingInfo)
	self._setSettingInfo = true
	self._state.value = tbl[key]
	self._state:PublisherForKeyChange("value")
		:AssignToTableKey(tbl, key)
	return self
end

---Enables or disables the toggle.
---@param disabled boolean Whether or not the toggle is disabled
---@param redraw boolean Whether or not to redraw the toggle
---@return ToggleYesNo
function ToggleYesNo:SetDisabled(disabled, redraw)
	self._state.disabled = disabled
	if redraw then
		self:Draw()
	end
	return self
end

---Set the value of the toggle.
---@param value boolean Whether the toggle is on (true) or off (false)
---@param redraw boolean Whether or not to redraw the toggle
---@return ToggleYesNo
function ToggleYesNo:SetValue(value, redraw)
	if value ~= self._state.value then
		self._state.value = value
		if self._onValueChangedHandler then
			self:_onValueChangedHandler(value)
		end
	end
	if redraw then
		self:Draw()
	end
	return self
end

---Registers a script handler.
---@param script "OnValueChanged"
---@param handler fun(toggle: ToggleYesNo, ...: any) The handler
---@return ToggleYesNo
function ToggleYesNo:SetScript(script, handler)
	if script == "OnValueChanged" then
		self._onValueChangedHandler = handler
	else
		error("Unknown ToggleYesNo script: "..tostring(script))
	end
	return self
end

---Get the value of the toggle.
---@return boolean
function ToggleYesNo:GetValue()
	return self._state.value
end

function ToggleYesNo:Draw()
	self.__super:Draw()
	self._content:Draw()
end



-- ============================================================================
-- Private Class Methods
-- ============================================================================

function ToggleYesNo:_HandleCheckboxValueChanged(checkbox, checked)
	if not checked then
		checkbox:SetCheckedSilent(true)
		return
	end
	self:SetValue(checkbox:GetContext(), true)
end
