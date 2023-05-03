-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Operations = TSM.MainUI:NewPackage("Operations")
local Environment = TSM.Include("Environment")
local L = TSM.Include("Locale").GetTable()
local Log = TSM.Include("Util.Log")
local Theme = TSM.Include("Util.Theme")
local TextureAtlas = TSM.Include("Util.TextureAtlas")
local Money = TSM.Include("Util.Money")
local TempTable = TSM.Include("Util.TempTable")
local Settings = TSM.Include("Service.Settings")
local CustomPrice = TSM.Include("Service.CustomPrice")
local UIElements = TSM.Include("UI.UIElements")
local UIUtils = TSM.Include("UI.UIUtils")
local private = {
	settings = nil,
	moduleNames = {},
	moduleCollapsed = {},
	moduleCallbacks = {},
	currentModule = nil,
	currentOperationName = nil,
	playerList = {},
	linkMenuEntries = {},
}
local DEFAULT_PRICE_INPUT_VALIDATE_CONTEXT = {}



-- ============================================================================
-- Module Functions
-- ============================================================================

function Operations.OnInitialize()
	private.settings = Settings.NewView()
		:AddKey("global", "mainUIContext", "operationsDividedContainer")
		:AddKey("global", "mainUIContext", "operationsSummaryScrollingTable")
	TSM.MainUI.RegisterTopLevelPage(L["Operations"], private.GetOperationsFrame)
end

function Operations.RegisterModule(name, callback)
	tinsert(private.moduleNames, name)
	private.moduleCallbacks[name] = callback
end

function Operations.ShowOperationSettings(baseFrame, moduleName, operationName)
	baseFrame:SetSelectedNavButton(L["Operations"], true)
	baseFrame:GetElement("content.operations.selection.operationTree"):SetSelectedOperation(moduleName, operationName)
end

function Operations.GetOperationManagementElements(moduleName, operationName)
	local operation = TSM.Operations.GetSettings(private.currentModule, private.currentOperationName)
	wipe(private.playerList)
	for factionrealm in TSM.db:GetConnectedRealmIterator("factionrealm") do
		for _, character in TSM.db:FactionrealmCharacterIterator(factionrealm) do
			tinsert(private.playerList, character.." - "..factionrealm)
		end
	end
	return UIElements.New("Frame", "management")
		:SetLayout("VERTICAL")
		:AddChild(Operations.CreateExpandableSection(moduleName, "managementOptions", L["Management Options"], L["Below you can ignore this operation on certain characters or realms."])
			:AddChild(Operations.CreateSettingLine("ignoreFactionRealms", L["Ignore operation on faction-realms"])
				:SetLayout("VERTICAL")
				:SetHeight(48)
				:SetMargin(0, 0, 0, 12)
				:AddChild(UIElements.New("MultiselectionDropdown", "dropdown")
					:SetHeight(24)
					:SetItems(TSM.db:GetScopeKeys("factionrealm"), TSM.db:GetScopeKeys("factionrealm"))
					:SetSelectionText(L["No Faction-Realms"], L["%d Faction-Realms"], L["All Faction-Realms"])
					:SetSettingInfo(operation, "ignoreFactionrealm")
					:SetScript("OnSelectionChanged", TSM.Groups.RebuildDB)
				)
			)
			:AddChild(Operations.CreateSettingLine("ignoreCharacters", L["Ignore operation on characters"])
				:SetLayout("VERTICAL")
				:SetHeight(48)
				:AddChild(UIElements.New("MultiselectionDropdown", "dropdown")
					:SetHeight(24)
					:SetItems(private.playerList, private.playerList)
					:SetSelectionText(L["No Characters"], L["%d Characters"], L["All Characters"])
					:SetSettingInfo(operation, "ignorePlayer")
					:SetScript("OnSelectionChanged", TSM.Groups.RebuildDB)
				)
			)
		)
		:AddChild(Operations.CreateExpandableSection(moduleName, "groupManagement", L["Group Management"], L["Here you can add/remove what groups this operation is attached to."])
			:AddChild(Operations.CreateSettingLine("applyNewGroup", L["Apply operation to group"])
				:SetLayout("VERTICAL")
				:SetHeight(48)
				:AddChild(UIElements.New("GroupSelector", "group")
					:SetHintText(L["Add operation to groups"])
					:SetScript("OnSelectionChanged", private.GroupSelectionChanged)
				)
			)
			:AddChildrenWithFunction(private.AddOperationGroups)
		)
end

function Operations.CreateExpandableSection(moduleName, id, text, description)
	return UIElements.New("CollapsibleContainer", id)
		:SetLayout("VERTICAL")
		:SetMargin(0, 0, 0, 8)
		:SetContextTable(private.moduleCollapsed, moduleName..text)
		:SetHeadingText(text)
		:AddChild(UIElements.New("Text", "description")
			:SetHeight(20)
			:SetMargin(0, 0, 0, 12)
			:SetFont("BODY_BODY3")
			:SetText(description)
		)
end

function Operations.CreateLinkedSettingLine(settingKey, labelText, disabled, alternateName)
	local relationshipSet = TSM.Operations.HasRelationship(private.currentModule, private.currentOperationName, settingKey)
	return UIElements.New("Frame", alternateName or settingKey)
		:SetLayout("HORIZONTAL")
		:SetHeight(24)
		:SetMargin(0, 0, 0, 4)
		:AddChild(UIElements.New("Frame", "line")
			:SetLayout("HORIZONTAL")
			:AddChild(UIElements.New("Text", "label")
				:SetWidth("AUTO")
				:SetFont("BODY_BODY2_MEDIUM")
				:SetTextColor((relationshipSet or disabled) and "TEXT_DISABLED" or "TEXT")
				:SetText(labelText)
			)
			:AddChild(private.CreateLinkButton(disabled, settingKey))
			:AddChild(UIElements.New("Spacer", "spacer"))
		)
end

function Operations.CreateSettingLine(id, labelText, disabled)
	return UIElements.New("Frame", id)
		:SetLayout("HORIZONTAL")
		:SetHeight(24)
		:SetMargin(0, 0, 0, 4)
		:AddChild(UIElements.New("Text", "label")
			:SetFont("BODY_BODY2_MEDIUM")
			:SetTextColor(disabled and "TEXT_DISABLED" or "TEXT")
			:SetText(labelText)
		)
end

function Operations.CreateLinkedPriceInput(settingKey, label, validateContext, defaultValue, isDisabled)
	-- Make sure the context is the right shape
	validateContext = validateContext or DEFAULT_PRICE_INPUT_VALIDATE_CONTEXT
	for key in pairs(validateContext) do
		assert(key == "isNumber" or key == "isUndercut" or key == "badSources" or key == "minValue" or key == "maxValue")
	end
	assert(not validateContext.isNumber or not validateContext.isUndercut)
	if validateContext.minValue or validateContext.maxValue then
		assert(validateContext.isNumber)
		assert(validateContext.minValue < validateContext.maxValue)
		assert(not validateContext.isUndercut and not validateContext.badSources)
	end
	assert(not validateContext.isNumber or not validateContext.badSources)

	-- Get information on the opeartion
	isDisabled = isDisabled or TSM.Operations.HasRelationship(private.currentModule, private.currentOperationName, settingKey)
	local operation = TSM.Operations.GetSettings(private.currentModule, private.currentOperationName)
	local value = operation[settingKey]
	if defaultValue ~= nil and (not value or value == "") then
		isDisabled = true
		value = defaultValue
	end

	return Operations.CreateLinkedSettingLine(settingKey, label)
		:SetLayout("VERTICAL")
		:SetHeight(48)
		:AddChild(UIElements.New("Frame", "content")
			:SetLayout("HORIZONTAL")
			:SetContext(label)
			:AddChild(UIElements.New("Input", "input")
				:SetHeight(24)
				:SetBackgroundColor("PRIMARY_BG")
				:SetDisabled(isDisabled)
				:SetContext(settingKey)
				:SetValidateFunc(validateContext.isUndercut and private.UndercutValidateFunction or private.DefaultValidateFunction, validateContext.badSources)
				:SetSettingInfo(operation, settingKey)
				:SetValue(validateContext.isNumber and value or (Money.ToString(value) or value))
				:SetTooltip(not isDisabled and validateContext.minValue and format(L["Supported value range: %d - %d"], validateContext.minValue, validateContext.maxValue) or nil)
			)
			:AddChild(UIElements.New("Button", "popout")
				:SetMargin(4, 4, 0, 0)
				:SetBackgroundAndSize("iconPack.12x12/Popout", isDisabled and "TEXT_DISABLED" or "TEXT")
				:SetDisabled(isDisabled)
				:SetContext(validateContext)
				:SetScript("OnClick", private.CustomStringPopoutOnClick)
			)
		)
end



-- ============================================================================
-- Operations UI
-- ============================================================================

function private.GetOperationsFrame()
	UIUtils.AnalyticsRecordPathChange("main", "operations")
	local frame = UIElements.New("DividedContainer", "operations")
		:SetSettingsContext(private.settings, "operationsDividedContainer")
		:SetMinWidth(250, 250)
		:SetLeftChild(UIElements.New("Frame", "selection")
			:SetLayout("VERTICAL")
			:SetBackgroundColor("PRIMARY_BG_ALT")
			:AddChild(UIElements.New("Input", "search")
				:SetHeight(24)
				:SetMargin(8, 8, 8, 16)
				:SetIconTexture("iconPack.18x18/Search")
				:SetClearButtonEnabled(true)
				:AllowItemInsert(true)
				:SetHintText(L["Search Operations"])
				:SetScript("OnValueChanged", private.OperationSearchOnValueChanged)
			)
			:AddChild(UIElements.New("OperationTree", "operationTree")
				:SetScript("OnOperationAdded", private.OperationTreeOnOperationAdded)
				:SetScript("OnOperationDeleted", private.OperationTreeOnOperationConfirmDelete)
				:SetScript("OnOperationSelected", private.OperationTreeOnOperationSelected)
			)
		)
		:SetRightChild(UIElements.New("ViewContainer", "content")
			:SetNavCallback(private.GetOperationsContent)
			:AddPath("none", true)
			:AddPath("summary")
			:AddPath("operation")
		)
	return frame
end

function private.GetOperationsContent(_, path)
	if path == "none" then
		return UIElements.New("Frame", "settings")
			:SetLayout("VERTICAL")
			:SetWidth("EXPAND")
			:SetBackgroundColor("PRIMARY_BG")
			:AddChild(UIElements.New("Frame", "title")
				:SetLayout("HORIZONTAL")
				:SetHeight(40)
				:SetPadding(8)
				:AddChild(UIElements.New("Texture", "icon")
					:SetMargin(0, 8, 0, 0)
					:SetTextureAndSize(TextureAtlas.GetColoredKey("iconPack.18x18/Operation", "TEXT"))
				)
				:AddChild(UIElements.New("Text", "text")
					:SetFont("BODY_BODY1_BOLD")
					:SetText(L["No Operation Selected"])
				)
			)
			:AddChild(UIElements.New("Spacer", "spacer"))
	elseif path == "summary" then
		return UIElements.New("Frame", "settings")
			:SetLayout("VERTICAL")
			:SetWidth("EXPAND")
			:SetBackgroundColor("PRIMARY_BG")
			:AddChild(UIElements.New("Frame", "title")
				:SetLayout("HORIZONTAL")
				:SetHeight(40)
				:SetPadding(8)
				:AddChild(UIElements.New("Text", "text")
					:SetWidth("AUTO")
					:SetFont("BODY_BODY1_BOLD")
				)
				:AddChild(UIElements.New("Spacer"))
				:AddChild(UIElements.New("Button", "addBtn")
					:SetWidth("AUTO")
					:SetMargin(12, 12, 0, 0)
					:SetFont("BODY_BODY2_MEDIUM")
					:SetIcon("iconPack.14x14/Add/Circle", "LEFT")
					:SetText(L["Create New"])
					:SetScript("OnClick", private.CreateNewOperationOnClick)
				)
			)
			:AddChild(UIElements.New("Frame", "content")
				:SetLayout("VERTICAL")
				-- will be filled in by the operation selection callback
			)
	elseif path == "operation" then
		return UIElements.New("Frame", "settings")
			:SetLayout("VERTICAL")
			:SetWidth("EXPAND")
			:SetBackgroundColor("PRIMARY_BG")
			:AddChild(UIElements.New("Frame", "title")
				:SetLayout("HORIZONTAL")
				:SetHeight(40)
				:SetPadding(8)
				:AddChild(UIElements.New("Texture", "icon")
					:SetMargin(0, 8, 0, 0)
					:SetTextureAndSize(TextureAtlas.GetColoredKey("iconPack.18x18/Operation", "TEXT"))
				)
				:AddChild(UIElements.New("EditableText", "text")
					:AllowItemInsert(true)
					:SetFont("BODY_BODY1_BOLD")
					:SetText(L["No Operation Selected"])
					:SetScript("OnValueChanged", private.OperationNameChanged)
					:SetScript("OnEditingChanged", private.NameOnEditingChanged)
				)
				:AddChild(UIElements.New("Button", "renameBtn")
					:SetWidth("AUTO")
					:SetMargin(12, 12, 0, 0)
					:SetFont("BODY_BODY2_MEDIUM")
					:SetIcon("iconPack.14x14/Edit", "LEFT")
					:SetText(L["Rename"])
					:SetScript("OnClick", private.RenameOperationOnClick)
				)
				:AddChild(UIElements.New("Button", "resetBtn")
					:SetWidth("AUTO")
					:SetMargin(0, 8, 0, 0)
					:SetFont("BODY_BODY2_MEDIUM")
					:SetIcon("iconPack.14x14/Reset", "LEFT")
					:SetText(L["Reset"])
					:SetScript("OnClick", private.ResetOperationOnClick)
				)
			)
			:AddChild(UIElements.New("Frame", "content")
				:SetLayout("VERTICAL")
				-- will be filled in by the operation selection callback
			)
	else
		error("Invalid path: "..tostring(path))
	end
end

function private.GetSummaryContent()
	local query = TSM.Operations.CreateQuery()
		:Equal("moduleName", private.currentModule)
		:VirtualField("numGroups", "number", private.NumGroupsVirtualField)
		:VirtualField("numItems", "number", private.NumItemsVirtualField)
		:OrderBy("operationName", true)
	local mostGroupsName, mostGroupsValue = "---", -math.huge
	local leastGroupsName, leastGroupsValue = "---", math.huge
	local mostItemsName, mostItemsValue = "---", -math.huge
	local leastItemsName, leastItemsValue = "---", math.huge
	for _, row in query:Iterator() do
		local operationName, numGroups, numItems = row:GetFields("operationName", "numGroups", "numItems")
		if numGroups > mostGroupsValue then
			mostGroupsValue = numGroups
			mostGroupsName = operationName
		end
		if numGroups < leastGroupsValue then
			leastGroupsValue = numGroups
			leastGroupsName = operationName
		end
		if numItems > mostItemsValue then
			mostItemsValue = numItems
			mostItemsName = operationName
		end
		if numItems < leastItemsValue then
			leastItemsValue = numItems
			leastItemsName = operationName
		end
	end
	return UIElements.New("Frame", "summary")
		:SetLayout("VERTICAL")
		:SetBackgroundColor("PRIMARY_BG")
		:AddChild(UIElements.New("Frame", "summary")
			:SetLayout("HORIZONTAL")
			:SetHeight(48)
			:SetMargin(8, 8, 0, 16)
			:SetBackgroundColor("PRIMARY_BG_ALT", true)
			:AddChild(UIElements.New("Frame", "groups")
				:SetLayout("VERTICAL")
				:SetPadding(8, 8, 2, 2)
				:AddChild(UIElements.New("Frame", "most")
					:SetLayout("HORIZONTAL")
					:SetHeight(20)
					:SetMargin(0, 0, 0, 4)
					:AddChild(UIElements.New("Text", "label")
						:SetWidth("AUTO")
						:SetFont("TABLE_TABLE1")
						:SetTextColor("ACTIVE_BG_ALT")
						:SetText(L["MOST GROUPS"])
					)
					:AddChild(UIElements.New("Spacer", "spacer"))
					:AddChild(UIElements.New("Text", "value")
						:SetWidth("AUTO")
						:SetFont("TABLE_TABLE1")
						:SetJustifyH("RIGHT")
						:SetText(mostGroupsName)
					)
				)
				:AddChild(UIElements.New("Frame", "least")
					:SetLayout("HORIZONTAL")
					:SetHeight(20)
					:AddChild(UIElements.New("Text", "label")
						:SetWidth("AUTO")
						:SetFont("TABLE_TABLE1")
						:SetTextColor("ACTIVE_BG_ALT")
						:SetText(L["LEAST GROUPS"])
					)
					:AddChild(UIElements.New("Spacer", "spacer"))
					:AddChild(UIElements.New("Text", "value")
						:SetWidth("AUTO")
						:SetFont("TABLE_TABLE1")
						:SetJustifyH("RIGHT")
						:SetText(leastGroupsName)
					)
				)
			)
			:AddChild(UIElements.New("VerticalLine", "line1")
				:SetWidth(1)
			)
			:AddChild(UIElements.New("Frame", "items")
				:SetLayout("VERTICAL")
				:SetPadding(8, 8, 2, 2)
				:AddChild(UIElements.New("Frame", "most")
					:SetLayout("HORIZONTAL")
					:SetHeight(20)
					:SetMargin(0, 0, 0, 4)
					:AddChild(UIElements.New("Text", "label")
						:SetWidth("AUTO")
						:SetFont("TABLE_TABLE1")
						:SetTextColor("ACTIVE_BG_ALT")
						:SetText(L["MOST ITEMS"])
					)
					:AddChild(UIElements.New("Spacer", "spacer"))
					:AddChild(UIElements.New("Text", "value")
						:SetWidth("AUTO")
						:SetFont("TABLE_TABLE1")
						:SetJustifyH("RIGHT")
						:SetText(mostItemsName)
					)
				)
				:AddChild(UIElements.New("Frame", "least")
					:SetLayout("HORIZONTAL")
					:SetHeight(20)
					:AddChild(UIElements.New("Text", "label")
						:SetWidth("AUTO")
						:SetFont("TABLE_TABLE1")
						:SetTextColor("ACTIVE_BG_ALT")
						:SetText(L["LEAST ITEMS"])
					)
					:AddChild(UIElements.New("Spacer", "spacer"))
					:AddChild(UIElements.New("Text", "value")
						:SetWidth("AUTO")
						:SetFont("TABLE_TABLE1")
						:SetJustifyH("RIGHT")
						:SetText(leastItemsName)
					)
				)
			)
		)
		:AddChild(UIElements.New("SelectionScrollingTable", "list")
			:SetSettingsContext(private.settings, "operationsSummaryScrollingTable")
			:GetScrollingTableInfo()
				:NewColumn("name")
					:SetTitle(L["Operation"])
					:SetFont("TABLE_TABLE1")
					:SetJustifyH("LEFT")
					:SetTextInfo("operationName")
					:SetSortInfo("operationName")
					:SetActionIconInfo(1, 12, private.GetConfigureIcon, true)
					:SetActionIconClickHandler(private.OnConfigureIconClick)
					:DisableHiding()
					:Commit()
				:NewColumn("groups")
					:SetTitle(L["Groups Using"])
					:SetFont("TABLE_TABLE1")
					:SetJustifyH("LEFT")
					:SetTextInfo("numGroups")
					:SetSortInfo("numGroups")
					:Commit()
				:NewColumn("items")
					:SetTitle(L["Items Using"])
					:SetFont("TABLE_TABLE1")
					:SetJustifyH("LEFT")
					:SetTextInfo("numItems", private.GetNumItemsText)
					:SetSortInfo("numItems")
					:SetTooltipInfo("numItems", private.GetNumItemsTooltip)
					:Commit()
				:Commit()
			:SetQuery(query)
			:SetContext(query)
			:SetAutoReleaseQuery(true)
			:SetScript("OnSelectionChanged", private.OperationListOnSelectionChanged)
		)
		:AddChild(UIElements.New("HorizontalLine", "line"))
		:AddChild(UIElements.New("Frame", "footer")
			:SetLayout("HORIZONTAL")
			:SetHeight(40)
			:SetPadding(8)
			:SetBackgroundColor("PRIMARY_BG_ALT")
			:AddChild(UIElements.New("ActionButton", "deleteSelected")
				:SetHeight(24)
				:SetMargin(0, 8, 0, 0)
				:SetDisabled(true)
				:SetText(L["Delete Operations"])
				:SetScript("OnClick", private.DeleteSelectedOnClick)
			)
			:AddChild(UIElements.New("Button", "selectAll")
				:SetSize("AUTO", 20)
				:SetMargin(0, 8, 0, 0)
				:SetFont("BODY_BODY3_MEDIUM")
				:SetText(L["Select All"])
				:SetScript("OnClick", private.SelectAllOnClick)
			)
			:AddChild(UIElements.New("VerticalLine", "line")
				:SetHeight(2, 20)
				:SetMargin(0, 8, 0, 0)
			)
			:AddChild(UIElements.New("Button", "clearAll")
				:SetSize("AUTO", 20)
				:SetFont("BODY_BODY3_MEDIUM")
				:SetText(L["Clear All"])
				:SetDisabled(true)
				:SetScript("OnClick", private.ClearAllOnClick)
			)
		)
end

function private.AddOperationGroups(frame)
	for _, groupPath in TSM.Operations.GroupIterator(private.currentModule, private.currentOperationName, true) do
		frame:AddChild(private.CreateGroupOperationLine(groupPath))
	end
end

function private.CreateGroupOperationLine(groupPath)
	local groupName = groupPath == TSM.CONST.ROOT_GROUP_PATH and L["Base Group"] or TSM.Groups.Path.GetName(groupPath)
	local level = select('#', strsplit(TSM.CONST.GROUP_SEP, groupPath))
	return UIElements.New("Frame", "group")
		:SetLayout("HORIZONTAL")
		:SetHeight(20)
		:SetMargin(2, 0, 0, 0)
		:AddChild(UIElements.New("Text", "text")
			:SetWidth("AUTO")
			:SetFont("BODY_BODY2")
			:SetTextColor(Theme.GetGroupColorKey(level))
			:SetText(groupName)
		)
		:AddChild(UIElements.New("Button", "viewBtn")
			:SetMargin(2, 2, 0, 0)
			:SetBackgroundAndSize("iconPack.14x14/Groups")
			:SetContext(groupPath)
			:SetScript("OnClick", private.ViewGroupOnClick)
		)
		:AddChild(UIElements.New("Button", "removeBtn")
			:SetBackgroundAndSize("iconPack.14x14/Close/Default")
			:SetContext(groupPath)
			:SetScript("OnClick", private.RemoveOperationGroupOnClick)
		)
		:AddChild(UIElements.New("Spacer", "spacer"))
end

function private.CreateLinkButton(disabled, settingKey)
	local relationshipSet = TSM.Operations.HasRelationship(private.currentModule, private.currentOperationName, settingKey)
	local linkTexture = nil
	if disabled and relationshipSet then
		linkTexture = TextureAtlas.GetColoredKey("iconPack.14x14/Link", "INDICATOR_DISABLED")
	elseif disabled then
		linkTexture = TextureAtlas.GetColoredKey("iconPack.14x14/Link", "TEXT_DISABLED")
	elseif relationshipSet then
		linkTexture = TextureAtlas.GetColoredKey("iconPack.14x14/Link", "INDICATOR")
	else
		linkTexture = TextureAtlas.GetColoredKey("iconPack.14x14/Link", "TEXT")
	end
	return UIElements.New("Button", "linkBtn")
		:SetMargin(4, 4, 0, 0)
		:SetBackgroundAndSize(linkTexture)
		:SetDisabled(disabled)
		:SetContext(settingKey)
		:SetScript("OnClick", private.LinkBtnOnClick)
end



-- ============================================================================
-- Local Script Handlers
-- ============================================================================

function private.OperationSearchOnValueChanged(input)
	local filter = strlower(input:GetValue())
	input:GetElement("__parent.operationTree"):SetOperationNameFilter(filter)
end

function private.OperationTreeOnOperationAdded(operationTree, moduleName, operationName, copyOperationName)
	-- clear the filter
	operationTree:GetElement("__parent.search")
		:SetValue("")
		:Draw()
	operationTree:SetOperationNameFilter("")
	TSM.Operations.Create(moduleName, operationName)
	if copyOperationName then
		TSM.Operations.Copy(moduleName, operationName, copyOperationName)
	end
end

function private.OperationTreeOnOperationConfirmDelete(self, moduleName, operationName)
	self:GetBaseElement():ShowConfirmationDialog(L["Delete Operation?"], L["Are you sure you want to delete this operation?"], private.OperationTreeOnOperationDeleted, self, moduleName, operationName)
end

function private.OperationTreeOnOperationDeleted(self, moduleName, operationName)
	TSM.Operations.Delete(moduleName, operationName)
	local operationTree = self:GetElement("__parent.operationTree")
	operationTree:SetSelectedOperation(moduleName, nil)
		:Draw()
end

function private.OperationTreeOnOperationSelected(self, moduleName, operationName)
	private.currentModule = moduleName
	private.currentOperationName = operationName

	local viewContainer = self:GetParentElement():GetParentElement():GetElement("content")
	if moduleName and operationName then
		TSM.Operations.Update(moduleName, operationName)
		viewContainer:SetPath("operation")
		viewContainer:GetElement("settings.title.text"):SetText(operationName)
		local contentFrame = viewContainer:GetElement("settings.content")
		contentFrame:ReleaseAllChildren()
		contentFrame:AddChild(private.moduleCallbacks[moduleName](operationName))
	elseif moduleName then
		local numOperations = 0
		for _ in TSM.Operations.OperationIterator(moduleName) do
			numOperations = numOperations + 1
		end
		UIUtils.AnalyticsRecordPathChange("main", "operations", "summary")
		viewContainer:SetPath("summary")
		viewContainer:GetElement("settings.title.text"):SetText(format(L["%s %s Operations"], Theme.GetColor("INDICATOR"):ColorText(numOperations), moduleName))
		local contentFrame = viewContainer:GetElement("settings.content")
		contentFrame:ReleaseAllChildren()
		contentFrame:AddChild(private.GetSummaryContent())
	else
		UIUtils.AnalyticsRecordPathChange("main", "operations", "none")
		viewContainer:SetPath("none")
		viewContainer:GetElement("settings.title.text"):SetText(L["No Operation Selected"])
	end
	viewContainer:Draw()
end

function private.CreateNewOperationOnClick(button)
	local operationName = "New Operation"
	local num = 1
	while TSM.Operations.Exists(private.currentModule, operationName.." "..num) do
		num = num + 1
	end
	operationName = operationName .. " " .. num
	TSM.Operations.Create(private.currentModule, operationName)
	button:GetElement("__parent.__parent.__parent.__parent.selection.operationTree")
		:SetSelectedOperation(private.currentModule, operationName)
		:Draw()
end

function private.OperationNameChanged(text, newValue)
	newValue = strtrim(newValue)
	if newValue == private.currentOperationName then
		-- didn't change
		text:Draw()
	elseif newValue == "" then
		Log.PrintUser(L["Invalid operation name."])
		text:Draw()
	elseif TSM.Operations.Exists(private.currentModule, newValue) then
		Log.PrintUser(L["Group already exists."])
		text:Draw()
	else
		TSM.Operations.Rename(private.currentModule, private.currentOperationName, newValue)
		text:GetElement("__parent.__parent.__parent.__parent.selection.operationTree")
			:SetSelectedOperation(private.currentModule, newValue)
			:Draw()
	end
end

function private.NameOnEditingChanged(text, editing)
	if editing then
		text:GetElement("__parent.renameBtn"):Hide()
	else
		text:GetElement("__parent.renameBtn"):Show()
	end
end

function private.RenameOperationOnClick(button)
	button:GetElement("__parent.text"):SetEditing(true)
end

function private.ResetOperationOnClick(button)
	button:GetBaseElement():ShowConfirmationDialog(L["Reset Operation?"], L["Resetting the operation will return all inputs back to default and cannot be unddone. Click confirm to reset."], private.ConfirmResetOnClick, button)
end

function private.ConfirmResetOnClick(button)
	TSM.Operations.Reset(private.currentModule, private.currentOperationName)
	local settingsFrame = button:GetBaseElement():GetElement("content.operations.content.settings")
	local contentFrame = settingsFrame:GetElement("content")
	contentFrame:ReleaseAllChildren()
	TSM.Operations.Update(private.currentModule, private.currentOperationName)
	contentFrame:AddChild(private.moduleCallbacks[private.currentModule](private.currentOperationName))
	button:GetBaseElement():HideDialog()
	settingsFrame:Draw()
	Log.PrintfUser(L["%s - %s has been reset to default values."], private.currentModule, Theme.GetColor("INDICATOR_ALT"):ColorText(private.currentOperationName))
end

function private.GroupSelectionChanged(groupSelector)
	for groupPath in groupSelector:SelectedGroupIterator() do
		if not TSM.Operations.GroupHasOperation(private.currentModule, groupPath, private.currentOperationName) then
			local parentElement = groupSelector:GetParentElement():GetParentElement()
			if groupPath ~= TSM.CONST.ROOT_GROUP_PATH then
				TSM.Groups.SetOperationOverride(groupPath, private.currentModule, true, true)
			end
			local numOperations = 0
			local lastOperationName = nil
			for _, groupOperationName in TSM.Groups.OperationIterator(groupPath, private.currentModule) do
				lastOperationName = groupOperationName
				numOperations = numOperations + 1
			end
			if numOperations == TSM.Operations.GetMaxNumber(private.currentModule) then
				-- replace the last operation since we're already at the max number of operations
				TSM.Groups.RemoveOperation(groupPath, private.currentModule, numOperations, true)
				Log.PrintfUser(L["%s previously had the max number of operations, so removed %s."], Log.ColorUserAccentText(TSM.Groups.Path.Format(groupPath)), Log.ColorUserAccentText(lastOperationName))
			end
			TSM.Groups.AppendOperation(groupPath, private.currentModule, private.currentOperationName, true)
			Log.PrintfUser(L["Added %s to %s."], Log.ColorUserAccentText(private.currentOperationName), Log.ColorUserAccentText(groupPath == TSM.CONST.ROOT_GROUP_PATH and L["Base Group"] or TSM.Groups.Path.Format(groupPath)))
			parentElement:AddChild(private.CreateGroupOperationLine(groupPath))
		end
	end
	TSM.Groups.RebuildDB()
	groupSelector:ClearSelectedGroups(true)
	groupSelector:GetParentElement():GetParentElement():GetParentElement():GetParentElement():GetParentElement():GetParentElement():Draw()
end

function private.ViewGroupOnClick(button)
	local baseFrame = button:GetBaseElement()
	TSM.MainUI.Groups.ShowGroupSettings(baseFrame, button:GetContext())
end

function private.RemoveOperationGroupOnClick(self)
	local groupPath = self:GetContext()
	TSM.Groups.RemoveOperationByName(groupPath, private.currentModule, private.currentOperationName)

	-- remove the line for this group
	local removeElement = self:GetParentElement()
	local removeElementParent = removeElement:GetParentElement()
	removeElementParent:RemoveChild(removeElement)
	removeElementParent:GetParentElement():GetParentElement():GetParentElement():Draw()
end

function private.LinkBtnOnClick(button)
	local settingKey = button:GetContext()
	wipe(private.linkMenuEntries)
	for _, operationName in TSM.Operations.OperationIterator(private.currentModule) do
		if operationName ~= private.currentOperationName and not TSM.Operations.IsCircularRelationship(private.currentModule, private.currentOperationName, settingKey) then
			tinsert(private.linkMenuEntries, operationName)
		end
	end
	sort(private.linkMenuEntries)
	button:GetBaseElement():ShowDialogFrame(UIElements.New("PopupFrame", "linkDialog")
		:SetLayout("VERTICAL")
		:SetSize(263, 243)
		:AddAnchor("TOPRIGHT", button:_GetBaseFrame(), "BOTTOM", 22, -16)
		:AddChild(UIElements.New("Frame", "titleFrame")
			:SetLayout("VERTICAL")
			:SetHeight(37)
			:AddChild(UIElements.New("Text", "title")
				:SetFont("BODY_BODY2_MEDIUM")
				:SetJustifyH("CENTER")
				:SetText(L["Link to Another Operation"])
			)
		)
		:AddChild(UIElements.New("HorizontalLine", "line")
			:SetColor("TEXT")
		)
		:AddChild(UIElements.New("SelectionList", "list")
			:SetContext(settingKey)
			:SetMargin(2, 2, 0, 3)
			:SetEntries(private.linkMenuEntries, TSM.Operations.GetRelationship(private.currentModule, private.currentOperationName, settingKey))
			:SetScript("OnEntrySelected", private.ListOnEntrySelected)
		)
	)
end

function private.ListOnEntrySelected(list, operationName)
	local settingKey = list:GetContext()
	local previousValue = TSM.Operations.GetRelationship(private.currentModule, private.currentOperationName, settingKey)
	if operationName == previousValue then
		TSM.Operations.SetRelationship(private.currentModule, private.currentOperationName, settingKey, nil)
	else
		TSM.Operations.SetRelationship(private.currentModule, private.currentOperationName, settingKey, operationName)
	end

	local baseFrame = list:GetBaseElement()
	baseFrame:HideDialog()
	Operations.ShowOperationSettings(baseFrame, private.currentModule, private.currentOperationName)
end

function private.OperationListOnSelectionChanged(scrollingTable)
	local selectionCleared = scrollingTable:IsSelectionCleared()
	local numSelected = 0
	for _ in scrollingTable:SelectionIterator() do
		numSelected = numSelected + 1
	end
	local footer = scrollingTable:GetElement("__parent.footer")
	footer:GetElement("deleteSelected")
		:SetText(numSelected > 0 and format(L["Delete %d Operations"], numSelected) or L["Delete Operations"])
		:SetDisabled(selectionCleared)
	footer:GetElement("selectAll")
		:SetDisabled(scrollingTable:IsAllSelected())
	footer:GetElement("clearAll")
		:SetDisabled(selectionCleared)
	footer:Draw()
end

function private.SelectAllOnClick(button)
	button:GetElement("__parent.__parent.list"):SelectAll()
end

function private.ClearAllOnClick(button)
	button:GetElement("__parent.__parent.list"):ClearSelection()
end

function private.DeleteSelectedOnClick(button)
	local scrollingTable = button:GetElement("__parent.__parent.list")
	button:GetBaseElement():ShowConfirmationDialog(L["Delete Operations?"], L["Are you sure you want to delete the selected operations?"], private.DeleteSelectedOperations, scrollingTable)
end

function private.DeleteSelectedOperations(scrollingTable)
	local toDelete = TempTable.Acquire()
	for _, row in scrollingTable:SelectionIterator() do
		local moduleName, operationName = row:GetFields("moduleName", "operationName")
		assert(moduleName == private.currentModule)
		tinsert(toDelete, operationName)
	end
	TSM.Operations.DeleteList(private.currentModule, toDelete)
	TempTable.Release(toDelete)
	scrollingTable:UpdateData(true)
	private.OperationListOnSelectionChanged(scrollingTable)
	scrollingTable:GetElement("__parent.__parent.__parent.__parent.__parent.selection.operationTree"):UpdateData(true)
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.NumGroupsVirtualField(row)
	local num = 0
	for _ in TSM.Operations.GroupIterator(row:GetField("moduleName"), row:GetField("operationName")) do
		num = num + 1
	end
	return num
end

function private.NumItemsVirtualField(row)
	local includesBaseGroup = false
	local num = 0
	for _, groupPath in TSM.Operations.GroupIterator(row:GetField("moduleName"), row:GetField("operationName")) do
		if groupPath == TSM.CONST.ROOT_GROUP_PATH then
			includesBaseGroup = true
		else
			num = num + TSM.Groups.GetNumItems(groupPath)
		end
	end
	if includesBaseGroup then
		num = num + 0.9
	end
	return num
end

function private.GetConfigureIcon(_, _, iconIndex)
	assert(iconIndex == 1)
	return true, "iconPack.12x12/Popout", false
end

function private.OnConfigureIconClick(scrollingTable, data, iconIndex)
	assert(iconIndex == 1)
	local operationName = scrollingTable:GetContext():GetResultRowByUUID(data):GetField("operationName")
	scrollingTable:GetElement("__parent.__parent.__parent.__parent.__parent.selection.operationTree")
		:SetSelectedOperation(private.currentModule, operationName)
end

function private.GetNumItemsText(numItems)
	if numItems == floor(numItems) then
		return numItems
	else
		return floor(numItems).."*"
	end
end

function private.GetNumItemsTooltip(numItems)
	if numItems == floor(numItems) then
		return nil
	end
	return L["This operation is applied to the base group which includes every item not in another group."]
end

function private.CustomStringPopoutOnClick(button)
	local validateContext = button:GetContext()
	local input = button:GetElement("__parent.input")
	local title = button:GetParentElement():GetContext()
	local validateFunc = validateContext.isUndercut and private.UndercutValidateFunction or private.DefaultValidateFunction
	button:GetBaseElement():ShowDialogFrame(TSM.UI.Views.CustomStringDialog.New(input:GetValue(), title, validateFunc, validateContext.badSources, validateContext.isNumber and private.CustomStringNumberDialogCallback or private.CustomStringDialogCallback, button))
end

function private.CustomStringDialogCallback(newValue, button)
	button:GetElement("__parent.input"):SetValue(Money.ToString(newValue) or newValue)
		:Draw()
end

function private.CustomStringNumberDialogCallback(newValue, button)
	button:GetElement("__parent.input"):SetValue(newValue)
		:Draw()
end

function private.DefaultValidateFunction(_, value, badSources)
	local isValid, err = CustomPrice.Validate(value, badSources)
	if not isValid then
		return false, err
	end
	return true
end

function private.UndercutValidateFunction(_, value, badSources)
	if Environment.IsRetail() then
		if Money.FromString(Money.ToString(value) or value) == 0 then
			return true
		elseif (Money.FromString(Money.ToString(value) or value) or math.huge) < COPPER_PER_SILVER then
			return false, L["Invalid undercut. To post below the cheapest auction without a significant undercut, set your undercut to 0c."]
		end
	end
	return private.DefaultValidateFunction(nil, value, badSources)
end
