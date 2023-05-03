-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Vendoring = TSM.MainUI.Operations:NewPackage("Vendoring")
local L = TSM.Include("Locale").GetTable()
local TextureAtlas = TSM.Include("Util.TextureAtlas")
local UIElements = TSM.Include("UI.UIElements")
local UIUtils = TSM.Include("UI.UIUtils")
local private = {
	currentOperationName = nil,
}
local RESTOCK_SOURCES = { BANK, GUILD, L["Alts"], L["Alts AH"], L["AH"], L["Mail"] }
local RESTOCK_SOURCES_KEYS = { "bank", "guild", "alts", "alts_ah", "ah", "mail" }
local SETTING_INFO = {
	restockQty = "INPUT_LABEL",
	restockSources = "DROPDOWN",
	keepQty = "INPUT_LABEL",
	sellAfterExpired = "INPUT_LABEL",
	vsMarketValue = "INPUT_POPOUT",
	vsMaxMarketValue = "INPUT_POPOUT",
	vsDestroyValue = "INPUT_POPOUT",
	vsMaxDestroyValue = "INPUT_POPOUT",
	sellSoulbound = "TOGGLE",
}



-- ============================================================================
-- Module Functions
-- ============================================================================

function Vendoring.OnInitialize()
	TSM.MainUI.Operations.RegisterModule("Vendoring", private.GetVendoringOperationSettings)
end



-- ============================================================================
-- Vendoring Operation Settings UI
-- ============================================================================

function private.GetVendoringOperationSettings(operationName)
	UIUtils.AnalyticsRecordPathChange("main", "operations", "vendoring")
	private.currentOperationName = operationName

	local operation = TSM.Operations.GetSettings("Vendoring", private.currentOperationName)
	return UIElements.New("ScrollFrame", "settings")
		:SetPadding(8, 8, 8, 0)
		:AddChild(TSM.MainUI.Operations.CreateExpandableSection("Vendoring", "buyOptionsHeading", L["Buy Options"], L["Set what is bought from a vendor."])
			:AddChild(TSM.MainUI.Operations.CreateLinkedSettingLine("enableBuy", L["Enable buying"])
				:SetLayout("VERTICAL")
				:SetHeight(48)
				:SetMargin(0, 0, 0, 12)
				:AddChild(UIElements.New("ToggleYesNo", "toggle")
					:SetHeight(18)
					:SetSettingInfo(operation, "enableBuy")
					:SetDisabled(TSM.Operations.HasRelationship("Vendoring", private.currentOperationName, "enableBuy"))
					:SetScript("OnValueChanged", private.EnableBuyingToggleOnValueChanged)
				)
			)
			:AddChild(TSM.MainUI.Operations.CreateLinkedSettingLine("restockQty", L["Restock quantity"], not operation.enableBuy)
				:SetLayout("VERTICAL")
				:SetHeight(48)
				:SetMargin(0, 0, 0, 12)
				:AddChild(UIElements.New("Frame", "content")
					:SetLayout("HORIZONTAL")
					:SetHeight(24)
					:AddChild(UIElements.New("Input", "input")
						:SetMargin(0, 8, 0, 0)
						:SetBackgroundColor("ACTIVE_BG")
						:SetValidateFunc("NUMBER", "0:50000")
						:SetSettingInfo(operation, "restockQty")
						:SetDisabled(TSM.Operations.HasRelationship("Vendoring", private.currentOperationName, "restockQty") or not operation.enableBuy)
					)
					:AddChild(UIElements.New("Text", "label")
						:SetWidth("AUTO")
						:SetFont("BODY_BODY3")
						:SetTextColor((TSM.Operations.HasRelationship("Vendoring", private.currentOperationName, "restockQty") or not operation.enableBuy) and "TEXT_DISABLED" or "TEXT")
						:SetFormattedText(L["Enter a value from %d - %d"], 0, 50000)
					)
				)
			)
			:AddChild(TSM.MainUI.Operations.CreateLinkedSettingLine("restockSources", L["Sources to include for restock"], not operation.enableBuy)
				:SetLayout("VERTICAL")
				:SetHeight(48)
				:AddChild(UIElements.New("MultiselectionDropdown", "dropdown")
					:SetHeight(24)
					:SetItems(RESTOCK_SOURCES, RESTOCK_SOURCES_KEYS)
					:SetSettingInfo(operation, "restockSources")
					:SetSelectionText(L["No Sources"], L["%d Sources"], L["All Sources"])
					:SetDisabled(TSM.Operations.HasRelationship("Vendoring", private.currentOperationName, "restockSources") or not operation.enableBuy)
				)
			)
		)
		:AddChild(TSM.MainUI.Operations.CreateExpandableSection("Vendoring", "sellOptionsHeading", L["Sell Options"], L["Set what is sold to a vendor."])
			:AddChild(TSM.MainUI.Operations.CreateLinkedSettingLine("enableSell", L["Enable selling"])
				:SetLayout("VERTICAL")
				:SetHeight(48)
				:SetMargin(0, 0, 0, 12)
				:AddChild(UIElements.New("ToggleYesNo", "toggle")
					:SetHeight(18)
					:SetSettingInfo(operation, "enableSell")
					:SetScript("OnValueChanged", private.EnableSellingToggleOnValueChanged)
					:SetDisabled(TSM.Operations.HasRelationship("Vendoring", private.currentOperationName, "enableSell"))
				)
			)
			:AddChild(TSM.MainUI.Operations.CreateLinkedSettingLine("keepQty", L["Keep quantity"], not operation.enableSell)
				:SetLayout("VERTICAL")
				:SetHeight(48)
				:SetMargin(0, 0, 0, 12)
				:AddChild(UIElements.New("Frame", "content")
					:SetLayout("HORIZONTAL")
					:SetHeight(24)
					:AddChild(UIElements.New("Input", "input")
						:SetMargin(0, 8, 0, 0)
						:SetBackgroundColor("ACTIVE_BG")
						:SetValidateFunc("NUMBER", "0:50000")
						:SetSettingInfo(operation, "keepQty")
						:SetDisabled(TSM.Operations.HasRelationship("Vendoring", private.currentOperationName, "keepQty") or not operation.enableSell)
					)
					:AddChild(UIElements.New("Text", "label")
						:SetWidth("AUTO")
						:SetFont("BODY_BODY3")
						:SetTextColor((TSM.Operations.HasRelationship("Vendoring", private.currentOperationName, "keepQty") or not operation.enableSell) and "TEXT_DISABLED" or "TEXT")
						:SetFormattedText(L["Enter a value from %d - %d"], 0, 50000)
					)
				)
			)
			:AddChild(TSM.MainUI.Operations.CreateLinkedSettingLine("sellAfterExpired", L["Min number of expires"], not operation.enableSell)
				:SetLayout("VERTICAL")
				:SetHeight(48)
				:SetMargin(0, 0, 0, 12)
				:AddChild(UIElements.New("Frame", "content")
					:SetLayout("HORIZONTAL")
					:SetHeight(24)
					:AddChild(UIElements.New("Input", "input")
						:SetMargin(0, 8, 0, 0)
						:SetBackgroundColor("ACTIVE_BG")
						:SetValidateFunc("NUMBER", "0:50000")
						:SetSettingInfo(operation, "sellAfterExpired")
						:SetDisabled(TSM.Operations.HasRelationship("Vendoring", private.currentOperationName, "sellAfterExpired") or not operation.enableSell)
					)
					:AddChild(UIElements.New("Text", "label")
						:SetWidth("AUTO")
						:SetFont("BODY_BODY3")
						:SetTextColor((TSM.Operations.HasRelationship("Vendoring", private.currentOperationName, "sellAfterExpired") or not operation.enableSell) and "TEXT_DISABLED" or "TEXT")
						:SetFormattedText(L["Enter a value from %d - %d"], 0, 50000)
					)
				)
			)
			:AddChild(TSM.MainUI.Operations.CreateLinkedPriceInput("vsMarketValue", L["Market value"], nil, nil, not operation.enableSell)
				:SetMargin(0, 0, 0, 12)
			)
			:AddChild(TSM.MainUI.Operations.CreateLinkedPriceInput("vsMaxMarketValue", L["Max market value (Enter '0c' to disable)"], nil, nil, not operation.enableSell)
				:SetMargin(0, 0, 0, 12)
			)
			:AddChild(TSM.MainUI.Operations.CreateLinkedPriceInput("vsDestroyValue", L["Destroy value"], nil, nil, not operation.enableSell)
				:SetMargin(0, 0, 0, 12)
			)
			:AddChild(TSM.MainUI.Operations.CreateLinkedPriceInput("vsMaxDestroyValue", L["Max destroy value (Enter '0c' to disable)"], nil, nil, not operation.enableSell)
				:SetMargin(0, 0, 0, 12)
			)
			:AddChild(TSM.MainUI.Operations.CreateLinkedSettingLine("sellSoulbound", L["Sell soulbound items"], not operation.enableSell)
				:SetLayout("VERTICAL")
				:SetHeight(48)
				:SetMargin(0, 0, 0, 0)
				:AddChild(UIElements.New("ToggleYesNo", "toggle")
					:SetHeight(18)
					:SetSettingInfo(operation, "sellSoulbound")
					:SetDisabled(TSM.Operations.HasRelationship("Vendoring", private.currentOperationName, "sellSoulbound") or not operation.enableSell)
				)
			)
		)
		:AddChild(TSM.MainUI.Operations.GetOperationManagementElements("Vendoring", private.currentOperationName))
end




-- ============================================================================
-- Local Script Handlers
-- ============================================================================

function private.UpdateSettingState(settingsFrame, key, operation, value)
	local relationshipSet, linkTexture, textColor = TSM.Operations.GetRelationshipColors("Vendoring", private.currentOperationName, key, value)
	local settingKeyFrame = settingsFrame:GetElement(key)
	settingKeyFrame:GetElement("line.linkBtn")
		:SetBackground(linkTexture)
		:SetDisabled(not value)
	settingKeyFrame:GetElement("line.label")
		:SetTextColor(textColor)
	local settingType = SETTING_INFO[key]
	if settingType == "INPUT_LABEL" then
		settingKeyFrame:GetElement("content.input")
			:SetDisabled(relationshipSet or not value)
			:SetValue(operation[key] or "")
		settingKeyFrame:GetElement("content.label")
			:SetTextColor(textColor)
	elseif settingType == "INPUT_POPOUT" then
		settingKeyFrame:GetElement("content.input")
			:SetDisabled(relationshipSet or not value)
		settingKeyFrame:GetElement("content.popout")
			:SetBackground(TextureAtlas.GetColoredKey("iconPack.12x12/Popout", relationshipSet or not value and "TEXT_DISABLED" or "TEXT"))
			:SetDisabled(relationshipSet or not value)
	elseif settingType == "TOGGLE" then
		settingKeyFrame:GetElement("toggle")
			:SetDisabled(relationshipSet or not value)
	elseif settingType == "DROPDOWN" then
		settingKeyFrame:GetElement("dropdown")
			:SetDisabled(relationshipSet or not value)
	else
		error("Invalid settingType: "..tostring(settingType))
	end
end

function private.EnableBuyingToggleOnValueChanged(toggle, value)
	local operation = TSM.Operations.GetSettings("Vendoring", private.currentOperationName)
	local settingsFrame = toggle:GetElement("__parent.__parent")
	private.UpdateSettingState(settingsFrame, "restockQty", operation, value)
	private.UpdateSettingState(settingsFrame, "restockSources", operation, value)
	settingsFrame:Draw()
end

function private.EnableSellingToggleOnValueChanged(toggle, value)
	local operation = TSM.Operations.GetSettings("Vendoring", private.currentOperationName)
	local settingsFrame = toggle:GetElement("__parent.__parent")
	for key in pairs(SETTING_INFO) do
		if key ~= "restockQty" and key ~= "restockSources" then
			private.UpdateSettingState(settingsFrame, key, operation, value)
		end
	end
	settingsFrame:Draw()
end
