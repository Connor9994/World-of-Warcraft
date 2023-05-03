-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local CustomStringDialog = TSM.UI.Views:NewPackage("CustomStringDialog") ---@class TSM.UI.Views.CustomStringDialog
local L = TSM.Include("Locale").GetTable()
local Theme = TSM.Include("Util.Theme")
local TempTable = TSM.Include("Util.TempTable")
local UIElements = TSM.Include("UI.UIElements")
local private = {}



-- ============================================================================
-- Module Functions
-- ============================================================================

function CustomStringDialog.New(value, title, validateFunc, badSources, callback, callbackContext)
	local context = TempTable.Acquire()
	context.callback = callback
	context.callbackContext = callbackContext
	context.originalValue = value
	local _, validationError = validateFunc(nil, value, badSources)
	return UIElements.New("Frame", "frame")
		:SetLayout("VERTICAL")
		:SetSize(590, 442)
		:SetPadding(12)
		:AddAnchor("CENTER")
		:SetMouseEnabled(true)
		:SetBackgroundColor("FRAME_BG", true)
		:SetContext(context)
		:AddChild(UIElements.New("Frame", "header")
			:SetLayout("HORIZONTAL")
			:SetHeight(24)
			:SetMargin(0, 0, -4, 8)
			:AddChild(UIElements.New("Text", "title")
				:SetWidth("AUTO")
				:SetFont("BODY_BODY1_BOLD")
				:SetJustifyH("LEFT")
				:SetText(EDIT..": ")
			)
			:AddChild(UIElements.New("Text", "title")
				:SetFont("BODY_BODY1")
				:SetJustifyH("LEFT")
				:SetText(title)
			)
		)
		:AddChild(UIElements.New("SyntaxInput", "input")
			:SetValidateFunc(validateFunc, badSources)
			:SetValue(value)
			:SetScript("OnValueChanged", private.InputOnValueChanged)
			:SetScript("OnDoneEditing", private.InputOnDoneEditing)
		)
		:AddChild(UIElements.New("Frame", "footer")
			:SetLayout("HORIZONTAL")
			:SetHeight(24)
			:SetMargin(0, 0, 8, 0)
			:AddChild(UIElements.New("Text", "status")
				:SetMargin(0, 10, 0, 0)
				:SetFont("BODY_BODY3")
				:SetJustifyH("RIGHT")
				:SetText(private.GetStatus(validationError))
			)
			:AddChild(UIElements.New("ActionButton", "cancelBtn")
				:SetSize(81, 24)
				:SetMargin(0, 10, 0, 0)
				:SetText(CANCEL)
				:SetScript("OnClick", private.CancelBtnOnClick)
			)
			:AddChild(UIElements.New("ActionButton", "saveBtn")
				:SetSize(121, 24)
				:SetText(L["Save & Close"])
				:SetDisabled(validationError and true or false)
				:SetScript("OnClick", private.HideDialog)
			)
		)
		:SetScript("OnHide", private.DialogOnHide)
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.DialogOnHide(frame)
	local context = frame:GetContext()
	context.callback(context.value or context.originalValue, context.callbackContext)
	TempTable.Release(context)
end

function private.InputOnValueChanged(input)
	local frame = input:GetParentElement()
	local context = frame:GetContext()
	local value, validationError = input:GetValue()
	context.value = value
	frame:GetElement("footer.saveBtn")
		:SetDisabled(validationError and true or false)
		:Draw()
	frame:GetElement("footer.status")
		:SetText(private.GetStatus(validationError))
		:Draw()
end

function private.GetStatus(validationError)
	if validationError then
		return Theme.GetColor("FEEDBACK_RED"):ColorText(validationError)
	else
		return L["Saved"]
	end
end

function private.InputOnDoneEditing(input, shouldSave)
	local context = input:GetParentElement():GetContext()
	if not shouldSave then
		context.value = nil
	end
	private.HideDialog(input)
end

function private.CancelBtnOnClick(button)
	local context = button:GetParentElement():GetParentElement():GetContext()
	context.value = nil
	private.HideDialog(button)
end

function private.HideDialog(element)
	element:GetBaseElement():HideDialog()
end
