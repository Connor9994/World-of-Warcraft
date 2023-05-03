-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Warehousing = TSM.MainUI.Operations:NewPackage("Warehousing")
local L = TSM.Include("Locale").GetTable()
local UIElements = TSM.Include("UI.UIElements")
local UIUtils = TSM.Include("UI.UIUtils")
local private = { currentOperationName = nil }



-- ============================================================================
-- Module Functions
-- ============================================================================

function Warehousing.OnInitialize()
	TSM.MainUI.Operations.RegisterModule("Warehousing", private.GetWarehousingOperationSettings)
end



-- ============================================================================
-- Warehousing Operation Settings UI
-- ============================================================================

function private.GetWarehousingOperationSettings(operationName)
	UIUtils.AnalyticsRecordPathChange("main", "operations", "warehousing")
	private.currentOperationName = operationName
	return UIElements.New("ScrollFrame", "settings")
		:SetPadding(8, 8, 8, 0)
		:AddChild(TSM.MainUI.Operations.CreateExpandableSection("Warehousing", "moveSettings", L["Move Quantity Options"], L["Set how items are moved out of the bank."])
			:AddChild(private.CreateEnabledSettingLine("moveQuantity", L["Set move quantity"], L["Quantity to move"], 0, 50000, true))
			:AddChild(private.CreateEnabledSettingLine("stackSize", L["Set stack size"], L["Stack size multiple"], 0, 200, true))
			:AddChild(private.CreateEnabledSettingLine("keepBagQuantity", L["Set keep in bags quantity"], L["Keep in bags quantity"], 0, 50000, true))
			:AddChild(private.CreateEnabledSettingLine("keepBankQuantity", L["Set keep in bank quantity"], L["Keep in bank quantity"], 0, 50000))
		)
		:AddChild(TSM.MainUI.Operations.CreateExpandableSection("Warehousing", "restockSettings", L["Restock Options"], L["Set how items are restocked from the bank."])
			:AddChild(private.CreateEnabledSettingLine("restockQuantity", L["Enable restock"], L["Restock quantity"], 0, 50000, true))
			:AddChild(private.CreateEnabledSettingLine("restockStackSize", L["Set stack size for restock"], L["Stack size multiple"], 0, 200, true))
			:AddChild(private.CreateEnabledSettingLine("restockKeepBankQuantity", L["Set keep in bank quantity"], L["Keep in bank quantity"], 0, 50000))
		)
		:AddChild(TSM.MainUI.Operations.GetOperationManagementElements("Warehousing", private.currentOperationName))
end

function private.CreateEnabledSettingLine(key, enableText, text, minValue, maxValue, margin)
	local operation = TSM.Operations.GetSettings("Warehousing", private.currentOperationName)
	local hasRelationship = TSM.Operations.HasRelationship("Warehousing", private.currentOperationName, key)
	return UIElements.New("Frame", "content")
			:SetLayout("VERTICAL")
			:AddChild(TSM.MainUI.Operations.CreateLinkedSettingLine(key, text)
				:SetLayout("VERTICAL")
				:SetHeight(48)
				:SetMargin(0, 0, 0, 12)
				:AddChild(UIElements.New("ToggleYesNo", "toggle")
					:SetHeight(18)
					:SetValue(operation[key] ~= 0)
					:SetDisabled(hasRelationship)
					:SetContext(key)
					:SetScript("OnValueChanged", private.EnabledSettingEnableOnValueChanged)
				)
			)
			:AddChild(TSM.MainUI.Operations.CreateSettingLine("content", text, hasRelationship or operation[key] == 0)
				:SetLayout("VERTICAL")
				:SetHeight(48)
				:SetMargin(0, 0, 0, margin and 12 or 4)
				:AddChild(UIElements.New("Frame", "content")
					:SetLayout("HORIZONTAL")
					:SetHeight(24)
					:AddChild(UIElements.New("Input", "input")
						:SetMargin(0, 8, 0, 0)
						:SetBackgroundColor("ACTIVE_BG")
						:SetValidateFunc("NUMBER", minValue..":"..maxValue)
						:SetSettingInfo(operation, key)
						:SetDisabled(hasRelationship or operation[key] == 0)
					)
					:AddChild(UIElements.New("Text", "label")
						:SetWidth("AUTO")
						:SetFont("BODY_BODY3")
						:SetTextColor((hasRelationship or operation[key] == 0) and "TEXT_DISABLED" or "TEXT")
						:SetFormattedText(L["Enter a value from %d - %d"], minValue, maxValue)
					)
				)
			)
end



-- ============================================================================
-- Local Script Handlers
-- ============================================================================

function private.EnabledSettingEnableOnValueChanged(toggle, value)
	local key = toggle:GetContext()
	local operation = TSM.Operations.GetSettings("Warehousing", private.currentOperationName)
	operation[key] = value and 1 or 0
	local settingFrame = toggle:GetElement("__parent.__parent.content")
	settingFrame:GetElement("label")
		:SetTextColor(value and "TEXT" or "TEXT_DISABLED")
	settingFrame:GetElement("content.input")
		:SetDisabled(not value)
		:SetValue(operation[key])
	settingFrame:GetElement("content.label")
		:SetTextColor(value and "TEXT" or "TEXT_DISABLED")
	settingFrame:Draw()
end
