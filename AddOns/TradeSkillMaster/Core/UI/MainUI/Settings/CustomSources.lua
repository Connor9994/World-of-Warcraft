-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local CustomSources = TSM.MainUI.Settings:NewPackage("CustomSources")
local L = TSM.Include("Locale").GetTable()
local TempTable = TSM.Include("Util.TempTable")
local Theme = TSM.Include("Util.Theme")
local CustomPrice = TSM.Include("Service.CustomPrice")
local UIElements = TSM.Include("UI.UIElements")
local UIUtils = TSM.Include("UI.UIUtils")
local private = {
	editOldName = nil,
	editNewName = nil,
}



-- ============================================================================
-- Module Functions
-- ============================================================================

function CustomSources.OnInitialize()
	TSM.MainUI.Settings.RegisterSettingPage(L["Custom Sources"], "middle", private.GetCustomSourcesSettingsFrame)
end



-- ============================================================================
-- Custom Sources Settings UI
-- ============================================================================

function private.GetCustomSourcesSettingsFrame()
	UIUtils.AnalyticsRecordPathChange("main", "settings", "custom_sources")
	return UIElements.New("ScrollFrame", "content")
		:SetPadding(8, 8, 8, 0)
		:AddChild(TSM.MainUI.Settings.CreateExpandableSection("Custom Price", "general", L["Custom Sources"], format(L["Custom sources allow you to create more advanced prices for use throughout the addon. You'll be able to use these new variables in the same way you can use the built-in price sources such as %s and %s."], Theme.GetColor("INDICATOR"):ColorText("vendorsell"), Theme.GetColor("INDICATOR"):ColorText("vendorbuy")), 60)
			:AddChild(UIElements.New("Frame", "tableHeading")
				:SetLayout("HORIZONTAL")
				:SetHeight(20)
				:AddChild(UIElements.New("Text", "col1")
					:SetWidth(162)
					:SetMargin(0, 8, 0, 0)
					:SetFont("BODY_BODY3_MEDIUM")
					:SetText(L["Name"])
				)
				:AddChild(UIElements.New("Text", "col2")
					:SetFont("BODY_BODY3_MEDIUM")
					:SetText(L["String"])
				)
			)
			:AddChild(UIElements.New("HorizontalLine", "line1")
				:SetHeight(1)
			)
			:AddChildrenWithFunction(private.AddCustomPriceRows)
			:AddChild(UIElements.New("ActionButton", "addNewBtn")
				:SetHeight(24)
				:SetMargin(0, 0, 32, 0)
				:SetFont("BODY_BODY2_MEDIUM")
				:SetText(L["Add a new custom source"])
				:SetScript("OnClick", private.AddNewButtonOnClick)
			)
		)
end

function private.CreateCustomPriceRow(name)
	local priceString = TSM.db.global.userData.customPriceSources[name]
	local row = UIElements.New("Frame", "row_"..name)
		:SetLayout("HORIZONTAL")
		:SetHeight(28)
		:SetMargin(-12, -12, 0, 0)
		:SetPadding(12, 12, 0, 0)
		:SetBackgroundColor("PRIMARY_BG_ALT")
		:SetContext(name)
		:SetScript("OnEnter", private.CustomPriceRowOnEnter)
		:SetScript("OnLeave", private.CustomPriceRowOnLeave)
		:AddChild(UIElements.New("Text", "nameText")
			:SetWidth(162)
			:SetMargin(0, 8, 0, 0)
			:SetFont("BODY_BODY3_MEDIUM")
			:SetText(name)
		)
		:AddChild(UIElements.New("Text", "valueText")
			:SetFont("BODY_BODY3")
			:SetText(priceString)
		)
		:AddChild(UIElements.New("Button", "editBtn")
			:SetMargin(4, 0, 0, 0)
			:SetBackgroundAndSize("iconPack.18x18/Edit")
			:SetScript("OnClick", private.EditCustomPriceOnClick)
			:PropagateScript("OnEnter")
			:PropagateScript("OnLeave")
		)
		:AddChild(UIElements.New("Button", "deleteBtn")
			:SetMargin(4, 0, 0, 0)
			:SetBackgroundAndSize("iconPack.18x18/Delete")
			:SetScript("OnClick", private.DeleteCustomPriceOnClick)
			:PropagateScript("OnEnter")
			:PropagateScript("OnLeave")
		)
	row:GetElement("editBtn"):Hide()
	row:GetElement("deleteBtn"):Hide()
	return row
end

function private.AddCustomPriceRows(frame)
	local names = TempTable.Acquire()
	for name in pairs(TSM.db.global.userData.customPriceSources) do
		tinsert(names, name)
	end
	sort(names)
	for _, name in ipairs(names) do
		frame:AddChild(private.CreateCustomPriceRow(name))
	end
	TempTable.Release(names)
end



-- ============================================================================
-- Local Script Handlers
-- ============================================================================

function private.CustomPriceRowOnEnter(frame)
	frame:SetBackgroundColor("FRAME_BG")
	frame:GetElement("editBtn"):Show()
	frame:GetElement("deleteBtn"):Show()
	frame:Draw()
end

function private.CustomPriceRowOnLeave(frame)
	frame:SetBackgroundColor("PRIMARY_BG_ALT")
	frame:GetElement("editBtn"):Hide()
	frame:GetElement("deleteBtn"):Hide()
	frame:Draw()
end

function private.EditCustomPriceOnClick(editBtn)
	assert(not private.editOldName)
	private.editOldName = editBtn:GetElement("__parent.nameText"):GetText()
	local value = editBtn:GetElement("__parent.valueText"):GetText()
	editBtn:GetBaseElement():ShowDialogFrame(TSM.UI.Views.CustomStringDialog.New(value, L["Custom Source"], private.ValueValidateFunc, nil, private.EditDialogOnHide, editBtn)
		:AddChildBeforeById("input", UIElements.New("Frame", "nameLine")
			:SetLayout("VERTICAL")
			:SetMargin(0, 0, 0, 8)
			:SetContext(editBtn)
			:AddChild(UIElements.New("Text", "name")
				:SetHeight(20)
				:SetFont("BODY_BODY2_MEDIUM")
				:SetJustifyH("LEFT")
				:SetText(L["Name"])
			)
			:AddChild(UIElements.New("Input", "nameInput")
				:SetHeight(24)
				:SetBackgroundColor("PRIMARY_BG_ALT")
				:SetValue(private.editOldName)
				:SetValidateFunc(private.NameValidateFunc)
				:SetScript("OnValueChanged", private.EditDialogNameOnValueChanged)
			)
			:AddChild(UIElements.New("Text", "string")
				:SetHeight(20)
				:SetMargin(0, 0, 6, 0)
				:SetFont("BODY_BODY2_MEDIUM")
				:SetJustifyH("LEFT")
				:SetText(L["String"])
			)
		)
	)
end

function private.NameValidateFunc(input, value)
	if value == "" then
		return false
	elseif gsub(value, "([a-z]+)", "") ~= "" then
		return false, L["Custom price names can only contain lowercase letters."]
	elseif value ~= input:GetParentElement():GetContext():GetParentElement():GetContext() then
		return CustomPrice.ValidateName(value)
	end
	return true
end

function private.ValueValidateFunc(input, value)
	local isValid, errMsg = CustomPrice.Validate(value)
	if not isValid and value ~= "" then
		return false, errMsg
	end
	return true
end

function private.EditDialogNameOnValueChanged(input)
	private.editNewName = input:GetValue()
end

function private.EditDialogOnHide(value, button)
	local baseElement = button:GetBaseElement()
	local oldName = private.editOldName
	local newName = private.editNewName or private.editOldName
	private.editOldName = nil
	private.editNewName = nil
	if oldName ~= newName then
		CustomPrice.RenameCustomPriceSource(oldName, newName)
		CustomPrice.SetCustomPriceSource(newName, value)
		local generalContainer = button:GetParentElement():GetParentElement()
		local rowFrame = button:GetParentElement()
		generalContainer:AddChildBeforeById("addNewBtn", private.CreateCustomPriceRow(newName))
		generalContainer:RemoveChild(rowFrame)
		generalContainer:GetElement("__parent.__parent")
			:Draw()
	else
		CustomPrice.SetCustomPriceSource(newName, value)
		button:GetElement("__parent.nameText")
			:SetText(newName)
			:Draw()
		button:GetElement("__parent.valueText")
			:SetText(value)
			:Draw()
	end
	baseElement:HideDialog()
end

function private.DeleteCustomPriceOnClick(button)
	CustomPrice.DeleteCustomPriceSource(button:GetParentElement():GetContext())
	local rowFrame = button:GetParentElement()
	local parentFrame = rowFrame:GetParentElement()
	parentFrame:RemoveChild(rowFrame)
	parentFrame:GetElement("__parent.__parent")
		:Draw()
end

function private.AddNewButtonOnClick(button)
	-- generate a placeholder name
	local newName = nil
	local suffix = ""
	while not newName do
		for i = strbyte("a"), strbyte("z") do
			newName = "customprice"..suffix..strchar(i)
			if not TSM.db.global.userData.customPriceSources[newName] then
				break
			end
			newName = nil
		end
		suffix = suffix..strchar(random(strbyte("a"), strbyte("z")))
	end

	CustomPrice.CreateCustomPriceSource(newName, "")
	button:GetParentElement()
		:AddChildBeforeById("addNewBtn", private.CreateCustomPriceRow(newName))
	button:GetElement("__parent.__parent.__parent")
		:Draw()
	private.EditCustomPriceOnClick(button:GetElement("__parent.row_"..newName..".editBtn"))
end
