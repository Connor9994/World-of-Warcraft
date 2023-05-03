-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Settings = TSM.MainUI:NewPackage("Settings")
local L = TSM.Include("Locale").GetTable()
local Wow = TSM.Include("Util.Wow")
local UIElements = TSM.Include("UI.UIElements")
local UIUtils = TSM.Include("UI.UIUtils")
local private = {
	settingPages = {
		top = {},
		middle = {},
		bottom = {},
	},
	callback = {},
	childSettingsPages = {},
	sectionCollapsed = {},
}
local SECTIONS = { "top", "middle" }
local SETTING_PATH_SEP = "`"
local SETTING_LABEL_WIDTH = 400



-- ============================================================================
-- Module Functions
-- ============================================================================

function Settings.OnInitialize()
	TSM.MainUI.RegisterTopLevelPage(L["Settings"], private.GetSettingsFrame)
end

function Settings.RegisterSettingPage(name, section, callback)
	assert(tContains(SECTIONS, section))
	tinsert(private.settingPages[section], name)
	private.callback[name] = callback
end

function Settings.RegisterChildSettingPage(parentName, childName, callback)
	local path = parentName..SETTING_PATH_SEP..childName
	private.childSettingsPages[parentName] = private.childSettingsPages[parentName] or {}
	tinsert(private.childSettingsPages[parentName], childName)
	private.callback[path] = callback
end

function Settings.CreateSettingLine(id, labelText, width)
	width = width or SETTING_LABEL_WIDTH

	return UIElements.New("Frame", id)
		:SetLayout("HORIZONTAL")
		:SetHeight(26)
		:SetMargin(0, 0, 0, 16)
		:AddChild(UIElements.New("Text", "label")
			:SetWidth(width)
			:SetFont("BODY_BODY2_MEDIUM")
			:SetTextColor("TEXT_ALT")
			:SetText(labelText)
		)
end

function Settings.CreateHeading(id, text)
	return UIElements.New("Text", id)
		:SetHeight(19)
		:SetMargin(0, 0, 0, 4)
		:SetFont("BODY_BODY1_BOLD")
		:SetText(text)
end

function Settings.CreateInputWithReset(id, label, context, validate, forceDisable)
	local scope, namespace, key = strsplit(".", context)
	local validateFunc, validateContext = nil, nil
	if type(validate) == "table" then
		validateFunc = "CUSTOM_PRICE"
		validateContext = validate
	elseif type(validate) == "function" then
		validateFunc = validate
	elseif validate == nil then
		validateFunc = "CUSTOM_PRICE"
	else
		error("Invalid validate: "..tostring(validate))
	end
	return UIElements.New("Frame", id)
		:SetLayout("VERTICAL")
		:AddChild(UIElements.New("Text", "label")
			:SetHeight(18)
			:SetMargin(0, 0, 0, 4)
			:SetFont("BODY_BODY2_MEDIUM")
			:SetTextColor(forceDisable and "TEXT_DISABLED" or "TEXT_ALT")
			:SetText(label)
		)
		:AddChild(UIElements.New("Frame", "content")
			:SetLayout("HORIZONTAL")
			:SetHeight(24)
			:AddChild(UIElements.New("Input", "input")
				:SetMargin(0, 8, 0, 0)
				:SetBackgroundColor("ACTIVE_BG")
				:SetValidateFunc(validateFunc, validateContext)
				:SetSettingInfo(TSM.db[scope][namespace], key)
				:SetDisabled(forceDisable)
				:SetScript("OnValueChanged", private.InputOnValueChanged)
			)
			:AddChild(UIElements.New("ActionButton", "resetButton")
				:SetWidth(108)
				:SetText(L["Reset"])
				:SetDisabled(forceDisable or TSM.db[scope][namespace][key] == TSM.db:GetDefault(scope, namespace, key))
				:SetScript("OnClick", private.ResetBtnOnClick)
				:SetContext(context)
			)
		)
end

function Settings.CreateMultiInputWithReset(id, label, context, validate)
	local scope, namespace, key = strsplit(".", context)
	local validateFunc, validateContext = nil, nil
	if type(validate) == "table" then
		validateFunc = "CUSTOM_PRICE"
		validateContext = validate
	elseif type(validate) == "function" then
		validateFunc = validate
	elseif validate == nil then
		validateFunc = "CUSTOM_PRICE"
	else
		error("Invalid validate: "..tostring(validate))
	end
	return UIElements.New("Frame", id)
		:SetLayout("VERTICAL")
		:AddChild(UIElements.New("Text", "label")
			:SetHeight(18)
			:SetMargin(0, 0, 0, 4)
			:SetFont("BODY_BODY2_MEDIUM")
			:SetTextColor("TEXT_ALT")
			:SetText(label)
		)
		:AddChild(UIElements.New("Frame", "content")
			:SetLayout("VERTICAL")
			:AddChild(UIElements.New("MultiLineInput", "input")
				:SetHeight(70)
				:SetMargin(0, 0, 0, 8)
				:SetValidateFunc(validateFunc, validateContext)
				:SetSettingInfo(TSM.db[scope][namespace], key)
				:SetScript("OnValueChanged", private.MultiInputOnValueChanged)
			)
			:AddChild(UIElements.New("Frame", "reset")
				:SetLayout("HORIZONTAL")
				:SetHeight(24)
				:AddChild(UIElements.New("Spacer", "spacer"))
				:AddChild(UIElements.New("ActionButton", "button")
					:SetWidth(108)
					:SetText(L["Reset"])
					:SetDisabled(TSM.db[scope][namespace][key] == TSM.db:GetDefault(scope, namespace, key))
					:SetContext("global.craftingOptions.defaultCraftPriceMethod")
					:SetScript("OnClick", private.MultiResetBtnOnClick)
					:SetContext(context)
				)
			)
		)
end

function Settings.CreateExpandableSection(pageName, id, text, description, descriptionHeight)
	return UIElements.New("CollapsibleContainer", id)
		:SetLayout("VERTICAL")
		:SetMargin(0, 0, 0, 8)
		:SetContextTable(private.sectionCollapsed, pageName..text)
		:SetHeadingText(text)
		:AddChild(UIElements.New("Text", "description")
			:SetHeight(descriptionHeight or 20)
			:SetMargin(0, 0, 0, 12)
			:SetFont("BODY_BODY3")
			:SetText(description)
		)
end

function Settings.PromptToReload()
	StaticPopupDialogs["TSMReloadPrompt"] = StaticPopupDialogs["TSMReloadPrompt"] or {
		text = L["You must reload your UI for these settings to take effect. Reload now?"],
		button1 = YES,
		button2 = NO,
		timeout = 0,
		OnAccept = ReloadUI,
	}
	Wow.ShowStaticPopupDialog("TSMReloadPrompt")
end



-- ============================================================================
-- Settings UI
-- ============================================================================

function private.GetSettingsFrame()
	UIUtils.AnalyticsRecordPathChange("main", "settings")
	local defaultPage = private.settingPages.top[1]

	local frame = UIElements.New("Frame", "settings")
		:SetLayout("HORIZONTAL")
		:SetBackgroundColor("PRIMARY_BG_ALT")
		:AddChild(UIElements.New("Frame", "settingNavigation")
			:SetLayout("VERTICAL")
			:SetWidth(160)
			:SetPadding(12, 12, 1, 9)
			:AddChild(UIElements.New("Frame", "top")
				:SetLayout("VERTICAL")
			)
			:AddChild(UIElements.New("Texture", "vline")
				:SetHeight(1)
				:SetMargin(0, 0, 8, 8)
				:SetColor("ACTIVE_BG_ALT")
			)
			:AddChild(UIElements.New("Frame", "middle")
				:SetLayout("VERTICAL")
			)
			:AddChild(UIElements.New("Spacer", "spacer")
				-- make all the navigation align to the top
			)
		)
		:AddChild(UIElements.New("VerticalLine", "divider"))
		:AddChild(UIElements.New("Frame", "contentFrame")
			:SetLayout("VERTICAL")
			:SetBackgroundColor("PRIMARY_BG")
			:AddChild(UIElements.New("ViewContainer", "content")
				:SetNavCallback(private.ContentNavCallback)
			)
		)

	local content = frame:GetElement("contentFrame.content")
	local settingNav = frame:GetElement("settingNavigation")
	for _, location in ipairs(SECTIONS) do
		local navFrame = settingNav:GetElement(location)
		for _, settingName in ipairs(private.settingPages[location]) do
			navFrame:AddChild(UIElements.New("Button", settingName)
				:SetHeight(20)
				:SetMargin(0, 0, 8, 0)
				:SetFont("BODY_BODY2_BOLD")
				:SetJustifyH("LEFT")
				:SetContext(settingName)
				:SetText(settingName)
				:SetScript("OnClick", private.NavButtonOnClick)
			)
			content:AddPath(settingName, settingName == defaultPage)
			if private.childSettingsPages[settingName] then
				for _, childSettingName in ipairs(private.childSettingsPages[settingName]) do
					local path = settingName..SETTING_PATH_SEP..childSettingName
					navFrame:AddChild(UIElements.New("Button", path)
						:SetHeight(20)
						:SetMargin(9, 0, 8, 0)
						:SetFont("BODY_BODY3_MEDIUM")
						:SetJustifyH("LEFT")
						:SetContext(path)
						:SetText(strupper(childSettingName))
						:SetScript("OnClick", private.NavButtonOnClick)
					)
					content:AddPath(path, path == defaultPage)
				end
			end
		end
	end
	private.UpdateNavFrame(settingNav, defaultPage)
	return frame
end

function private.ContentNavCallback(content, path)
	return private.callback[path]()
end



-- ============================================================================
-- Local Script Handlers
-- ============================================================================

function private.NavButtonOnClick(button)
	local path = button:GetContext()
	if private.childSettingsPages[path] then
		-- select the first child
		path = path..SETTING_PATH_SEP..private.childSettingsPages[path][1]
	end

	local contentFrame = button:GetElement("__parent.__parent.__parent.contentFrame")
	local navFrame = contentFrame:GetElement("__parent.settingNavigation")
	private.UpdateNavFrame(navFrame, path)
	navFrame:Draw()
	contentFrame:GetElement("content"):SetPath(path, true)
end

function private.InputOnValueChanged(input)
	local button = input:GetElement("__parent.resetButton")
	local scope, namespace, key = strsplit(".", button:GetContext())
	button:SetDisabled(TSM.db[scope][namespace][key] == TSM.db:GetDefault(scope, namespace, key))
		:Draw()
end

function private.ResetBtnOnClick(button)
	local scope, namespace, key = strsplit(".", button:GetContext())
	local defaultValue = TSM.db:GetDefault(scope, namespace, key)
	TSM.db:Set(scope, nil, namespace, key, defaultValue)
	button:GetElement("__parent.input")
		:SetValue(defaultValue)
		:Draw()
	button:SetDisabled(true)
		:Draw()
end

function private.MultiInputOnValueChanged(input)
	local button = input:GetElement("__parent.reset.button")
	local scope, namespace, key = strsplit(".", button:GetContext())
	button:SetDisabled(TSM.db[scope][namespace][key] == TSM.db:GetDefault(scope, namespace, key))
		:Draw()
end

function private.MultiResetBtnOnClick(button)
	local scope, namespace, key = strsplit(".", button:GetContext())
	local defaultValue = TSM.db:GetDefault(scope, namespace, key)
	TSM.db:Set(scope, nil, namespace, key, defaultValue)
	button:GetElement("__parent.__parent.input")
		:SetValue(defaultValue)
		:Draw()
	button:SetDisabled(true)
		:Draw()
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.UpdateNavFrame(navFrame, selectedPath)
	local selectedSetting = strsplit(SETTING_PATH_SEP, selectedPath)
	for _, location in ipairs(SECTIONS) do
		for _, settingName in ipairs(private.settingPages[location]) do
			navFrame:GetElement(location ..".".. settingName)
				:SetTextColor(settingName == selectedSetting and "TEXT" or "ACTIVE_BG_ALT")
			if private.childSettingsPages[settingName] then
				for _, childSettingName in ipairs(private.childSettingsPages[settingName]) do
					local path = settingName..SETTING_PATH_SEP..childSettingName
					if settingName == selectedSetting then
						navFrame:GetElement(location ..".".. path)
							:SetTextColor(path == selectedPath and "INDICATOR" or "TEXT")
							:Show()
					else
						navFrame:GetElement(location ..".".. path):Hide()
					end
				end
			end
		end
	end
end
