-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Groups = TSM.MainUI:NewPackage("Groups")
local L = TSM.Include("Locale").GetTable()
local Analytics = TSM.Include("Util.Analytics")
local TempTable = TSM.Include("Util.TempTable")
local String = TSM.Include("Util.String")
local Log = TSM.Include("Util.Log")
local Theme = TSM.Include("Util.Theme")
local TextureAtlas = TSM.Include("Util.TextureAtlas")
local ItemString = TSM.Include("Util.ItemString")
local Database = TSM.Include("Util.Database")
local SmartMap = TSM.Include("Util.SmartMap")
local CustomPrice = TSM.Include("Service.CustomPrice")
local ItemInfo = TSM.Include("Service.ItemInfo")
local ItemFilter = TSM.Include("Service.ItemFilter")
local BagTracking = TSM.Include("Service.BagTracking")
local Settings = TSM.Include("Service.Settings")
local UIElements = TSM.Include("UI.UIElements")
local UIUtils = TSM.Include("UI.UIUtils")
local private = {
	settings = nil,
	currentGroupPath = TSM.CONST.ROOT_GROUP_PATH,
	moveGroupPath = nil,
	baseItemInfoQuery = nil,
	itemFilter = ItemFilter.New(),
	itemFilterSmartMap = nil,
	ungroupedItemStringSmartMap = nil,
	moduleCollapsed = {},
	filterText = "",
	groupSearch = "",
	itemSearch = "",
	frame = nil,
	operationQuery = nil,
	importExportGroupDB = nil,
	exportSubGroups = {},
	importGroupTreeContext = {},
}
local DRAG_SCROLL_SPEED_FACTOR = 12
local OPERATION_LABELS = {
	Auctioning = L["Auctioning operations control posting to and canceling from the AH."],
	Crafting = L["Crafting operations control how queuing profession crafts."],
	Mailing = L["Mailing operations control mailing to other characters."],
	Shopping = L["Shopping operations control buyout from the AH."],
	Sniper = L["Sniper operations control sniping from the AH."],
	Vendoring = L["Vendoring operations control selling to and buying from a vendor."],
	Warehousing = L["Warehousing operations control moving in and out of the bank."],
}
local DEFAULT_IMPORT_GROUP_TREE_CONTEXT = { unselected = {}, collapsed = {} }



-- ============================================================================
-- Module Functions
-- ============================================================================

function Groups.OnInitialize()
	private.settings = Settings.NewView()
		:AddKey("global", "coreOptions", "groupPriceSource")
		:AddKey("global", "mainUIContext", "groupsDividedContainer")
		:AddKey("global", "userData", "ungroupedItemMode")
		:AddKey("char", "mainUIContext", "groupsManagementGroupTree")
		:AddKey("profile", "userData", "groups")
	TSM.MainUI.RegisterTopLevelPage(L["Groups"], private.GetGroupsFrame)
	private.itemFilter:ParseStr("")
	private.itemFilterSmartMap = SmartMap.New("string", "boolean", private.ItemFilterLookup)
	private.ungroupedItemStringSmartMap = SmartMap.New("string", "string", private.UngroupedItemStringLookup)
	private.importExportGroupDB = Database.NewSchema("IMPORT_EXPORT_GROUPS")
		:AddStringField("groupPath")
		:AddStringField("orderStr")
		:AddIndex("groupPath")
		:Commit()
end

function Groups.ShowGroupSettings(baseFrame, groupPath)
	baseFrame:SetSelectedNavButton(L["Groups"], true)
	baseFrame:GetElement("content.groups.groupSelection.groupTree"):SetSelectedGroup(groupPath, true)
end



-- ============================================================================
-- Groups UI
-- ============================================================================

function private.GetGroupsFrame()
	UIUtils.AnalyticsRecordPathChange("main", "groups")
	private.currentGroupPath = TSM.CONST.ROOT_GROUP_PATH
	private.moveGroupPath = nil
	local frame = UIElements.New("DividedContainer", "groups")
		:SetSettingsContext(private.settings, "groupsDividedContainer")
		:SetMinWidth(250, 250)
		:SetLeftChild(UIElements.New("Frame", "groupSelection")
			:SetLayout("VERTICAL")
			:SetBackgroundColor("PRIMARY_BG")
			:AddChild(UIElements.New("Frame", "search")
				:SetLayout("HORIZONTAL")
				:SetHeight(24)
				:SetMargin(8)
				:AddChild(UIElements.New("Input", "input")
					:SetIconTexture("iconPack.18x18/Search")
					:SetClearButtonEnabled(true)
					:AllowItemInsert(true)
					:SetValue(private.groupSearch)
					:SetHintText(L["Search Groups"])
					:SetScript("OnValueChanged", private.GroupSearchOnValueChanged)
				)
				:AddChild(UIElements.New("Button", "expandAllBtn")
					:SetSize(24, 24)
					:SetMargin(8, 0, 0, 0)
					:SetBackground("iconPack.18x18/Expand All")
					:SetScript("OnClick", private.ExpandAllGroupsOnClick)
					:SetTooltip(L["Expand / Collapse All Groups"])
				)
				:AddChild(UIElements.New("Button", "importBtn")
					:SetSize(24, 24)
					:SetMargin(8, 0, 0, 0)
					:SetBackground("iconPack.18x18/Import")
					:SetScript("OnClick", private.ImportGroupBtnOnClick)
					:SetTooltip(L["Import group"])
				)
			)
			:AddChild(UIElements.New("HorizontalLine", "line"))
			:AddChild(UIElements.New("ManagementGroupTree", "groupTree")
				:SetSettingsContext(private.settings, "groupsManagementGroupTree")
				:SetQuery(TSM.Groups.CreateQuery())
				:SetSelectedGroup(private.currentGroupPath)
				:SetSearchString(private.groupSearch)
				:SetScript("OnGroupSelected", private.GroupTreeOnGroupSelected)
				:SetScript("OnNewGroup", private.GroupTreeOnNewGroup)
				:SetScript("OnDragRecieved", private.GroupTreeOnDragRecieved)
			)
		)
		:SetRightChild(UIElements.New("ViewContainer", "view")
			:SetNavCallback(private.GetViewContainerContent)
			:AddPath("content", true)
			:AddPath("search")
		)
	frame:GetElement("view.content.header.title.renameBtn"):Hide()
	private.frame = frame
	return frame
end

function private.GetViewContainerContent(viewContainer, path)
	if path == "content" then
		return private.GetContentFrame()
	elseif path == "search" then
		return private.GetSearchFrame()
	else
		error("Unexpected path: "..tostring(path))
	end
end

function private.GetContentFrame()
	local frame = UIElements.New("Frame", "content")
		:SetLayout("VERTICAL")
		:SetBackgroundColor("PRIMARY_BG")
		:AddChild(UIElements.New("Frame", "header")
			:SetLayout("VERTICAL")
			:SetSize("EXPAND", 40)
			:SetPadding(8)
			:AddChild(UIElements.New("Frame", "title")
				:SetLayout("HORIZONTAL")
				:AddChild(UIElements.New("Texture", "icon")
					:SetMargin(0, 8, 0, 0)
					:SetTextureAndSize(TextureAtlas.GetColoredKey("iconPack.18x18/Folder", "TEXT"))
				)
				:AddChild(UIElements.New("EditableText", "text")
					:AllowItemInsert(true)
					:SetFont("BODY_BODY1_BOLD")
					:SetText(L["Base Group"])
					:SetScript("OnValueChanged", private.GroupNameChanged)
					:SetScript("OnEditingChanged", private.NameOnEditingChanged)
				)
				:AddChild(UIElements.New("Button", "renameBtn")
					:SetMargin(8, 0, 0, 0)
					:SetBackgroundAndSize("iconPack.18x18/Edit")
					:SetScript("OnClick", private.RenameBtnOnClick)
					:SetTooltip(L["Rename this group"])
				)
				:AddChild(UIElements.New("Button", "exportBtn")
					:SetMargin(8, 4, 0, 0)
					:SetBackgroundAndSize("iconPack.18x18/Export")
					:SetScript("OnClick", private.ExportBtnOnClick)
					:SetTooltip(L["Export this group"])
				)
			)
		)
		:AddChild(UIElements.New("TabGroup", "buttons")
			:SetMargin(0, 0, 6, 0)
			:SetNavCallback(private.GetGroupsPage)
			:AddPath(L["Information"], true)
			:AddPath(L["Operations"])
		)
	frame:GetElement("header.title.renameBtn"):Hide()
	frame:GetElement("header.title.exportBtn"):Hide()
	return frame
end

function private.GetSearchFrame()
	private.UpdateBaseItemInfoQuery()
	return UIElements.New("Frame", "content")
		:SetLayout("VERTICAL")
		:SetBackgroundColor("PRIMARY_BG")
		:AddChild(UIElements.New("Frame", "header")
			:SetLayout("HORIZONTAL")
			:SetHeight(40)
			:SetPadding(8)
			:AddChild(UIElements.New("ActionButton", "button")
				:SetWidth(64)
				:SetMargin(0, 8, 0, 0)
				:SetText(TextureAtlas.GetTextureLink(TextureAtlas.GetFlippedHorizontallyKey("iconPack.14x14/Chevron/Right"))..BACK)
				:SetScript("OnClick", private.SearchBackButtonOnClick)
			)
			:AddChild(UIElements.New("Input", "input")
				:SetMargin(0, 8, 0, 0)
				:SetIconTexture("iconPack.18x18/Search")
				:AllowItemInsert()
				:SetClearButtonEnabled(true)
				:SetValidateFunc(private.ValidateBaseSearchValue)
				:SetHintText(L["Search items"])
				:SetValue(private.itemSearch)
				:SetScript("OnValueChanged", private.BaseSearchOnValueChanged)
			)
			:AddChild(UIElements.New("Button", "selectAllBtn")
				:SetSize(24, 24)
				:SetBackground("iconPack.18x18/Select All")
				:SetScript("OnClick", private.SelectAllResultsOnClick)
				:SetTooltip(L["Select / Deselect All Results"])
			)
		)
		:AddChild(UIElements.New("Frame", "header2")
			:SetLayout("HORIZONTAL")
			:SetHeight(30)
			:SetPadding(8, 8, 0, 8)
			:AddChild(UIElements.New("Text", "label")
				:SetFont("BODY_BODY2")
				:SetText(format(L["%d Results"], 0))
			)
			:AddChild(UIElements.New("Text", "text")
				:SetWidth("AUTO", 24)
				:SetMargin(0, 8, 0, 0)
				:SetFont("BODY_BODY2")
				:SetText(L["Show results as:"])
			)
			:AddChild(UIElements.New("SelectionDropdown", "itemMode")
				:SetSize(150, 24)
				:AddItem(L["Specific Item"], "specific")
				:AddItem(L["Item Level"], "level")
				:AddItem(L["Base Item"], "base")
				:SetSettingInfo(private.settings, "ungroupedItemMode")
				:SetScript("OnSelectionChanged", private.SearchItemModeOnValueChanged)
			)
		)
		:AddChild(UIElements.New("HorizontalLine", "line"))
		:AddChild(UIElements.New("ItemList", "itemList")
			:AddSectionQuery(Theme.GetColor("INDICATOR"):ColorText(L["Search Results"]), private.baseItemInfoQuery, true)
			:SetScript("OnSelectionChanged", private.ItemListOnSelectionChanged)
		)
		:AddChild(UIElements.New("HorizontalLine", "line2"))
		:AddChild(UIElements.New("Frame", "bottom")
			:SetLayout("HORIZONTAL")
			:SetHeight(40)
			:SetPadding(8)
			:SetBackgroundColor("PRIMARY_BG_ALT")
			:AddChild(UIElements.New("GroupSelector", "group")
				:SetMargin(0, 8, 0, 0)
				:SetHintText(L["Select Group"])
				:SetSingleSelection(true)
				:AddCreateNew()
				:SetSelection(TSM.Groups.Exists(private.moveGroupPath) and private.moveGroupPath)
				:SetScript("OnSelectionChanged", private.BaseGroupOnSelectionChanged)
			)
			:AddChild(UIElements.New("ActionButton", "move")
				:SetWidth(124)
				:SetDisabled(true)
				:SetText(L["Move Item"])
				:SetScript("OnClick", private.BaseMoveItemOnClick)
			)
		)
end

function private.GetGroupsPage(_, button)
	private.itemSearch = ""
	private.itemFilter:ParseStr("")
	private.itemFilterSmartMap:Invalidate()
	private.ungroupedItemStringSmartMap:Invalidate()
	if button == L["Information"] then
		UIUtils.AnalyticsRecordPathChange("main", "groups", "information")
		return UIElements.New("Frame", "items")
			:SetLayout("VERTICAL")
			:SetPadding(0, 0, 9, 0)
			:SetBackgroundColor("PRIMARY_BG")
			:AddChild(UIElements.New("Text", "text")
				:SetHeight(42)
				:SetMargin(8, 8, 0, 8)
				:SetFont("BODY_BODY3")
				:SetText(L["The Base Group contains all ungrouped items in the game. Use the search and filter controls to find items to add to other groups."])
			)
			:AddChild(UIElements.New("Frame", "header")
				:SetLayout("HORIZONTAL")
				:SetHeight(40)
				:SetPadding(8)
				:AddChild(UIElements.New("Input", "filter")
					:SetHeight(24)
					:SetMargin(0, 8, 0, 0)
					:SetIconTexture("iconPack.18x18/Search")
					:AllowItemInsert()
					:SetClearButtonEnabled(true)
					:SetValidateFunc(private.ValidateBaseSearchValue)
					:SetHintText(L["Search items"])
					:SetScript("OnValueChanged", private.InformationSearchOnValueChanged)
				)
				:AddChild(UIElements.New("Button", "selectAllBtn")
					:SetSize(24, 24)
					:SetBackground("iconPack.18x18/Select All")
					:SetScript("OnClick", private.SelectAllResultsOnClick)
					:SetTooltip(L["Select / Deselect All Results"])
				)
			)
			:AddChild(UIElements.New("Frame", "header2")
				:SetLayout("HORIZONTAL")
				:SetHeight(24)
				:SetMargin(8, 8, 0, 8)
				:AddChild(UIElements.New("Text", "text")
					:SetSize("AUTO", 24)
					:SetMargin(0, 8, 0, 0)
					:SetFont("BODY_BODY2")
					:SetText(L["Show ungrouped items as:"])
				)
				:AddChild(UIElements.New("SelectionDropdown", "itemMode")
					:SetHeight(24)
					:AddItem(L["Specific Item"], "specific")
					:AddItem(L["Item Level"], "level")
					:AddItem(L["Base Item"], "base")
					:SetSettingInfo(private.settings, "ungroupedItemMode")
					:SetScript("OnSelectionChanged", private.ItemModeOnSelectionChanged)
				)
			)
			:AddChild(UIElements.New("ItemList", "itemList")
				:AddSectionQuery(Theme.GetColor("INDICATOR"):ColorText(L["Ungrouped Items in Bags"]), private.CreateUngroupedBagItemQuery())
				:SetScript("OnSelectionChanged", private.ItemListOnSelectionChanged)
			)
			:AddChild(UIElements.New("HorizontalLine", "line"))
			:AddChild(UIElements.New("Frame", "bottom")
				:SetLayout("HORIZONTAL")
				:SetHeight(40)
				:SetPadding(8)
				:SetBackgroundColor("PRIMARY_BG_ALT")
				:AddChild(UIElements.New("GroupSelector", "group")
					:SetMargin(0, 8, 0, 0)
					:SetHintText(L["Select Group"])
					:SetSingleSelection(true)
					:AddCreateNew()
					:SetSelection(TSM.Groups.Exists(private.moveGroupPath) and private.moveGroupPath)
					:SetScript("OnSelectionChanged", private.GroupOnSelectionChanged)
				)
				:AddChild(UIElements.New("ActionButton", "move")
					:SetWidth(124)
					:SetDisabled(true)
					:SetText(L["Move Item"])
					:SetScript("OnClick", private.MoveItemOnClick)
				)
			)
	elseif button == L["Items"] then
		UIUtils.AnalyticsRecordPathChange("main", "groups", "items")
		assert(private.currentGroupPath ~= TSM.CONST.ROOT_GROUP_PATH)
		local hasParent = TSM.Groups.Path.GetParent(private.currentGroupPath) ~= TSM.CONST.ROOT_GROUP_PATH
		local frame = UIElements.New("Frame", "items")
			:SetLayout("VERTICAL")
			:SetPadding(8)
			:SetBackgroundColor("PRIMARY_BG")
			:AddChild(UIElements.New("Input", "filter")
				:SetHeight(24)
				:SetMargin(0, 0, 0, 8)
				:SetIconTexture("iconPack.18x18/Search")
				:SetClearButtonEnabled(true)
				:SetValidateFunc(private.ItemFilterValidateFunc)
				:SetHintText(L["Search items in group"])
				:SetScript("OnValueChanged", private.ItemFilterOnValueChanged)
			)
			:AddChild(UIElements.New("Frame", "header")
				:SetLayout("HORIZONTAL")
				:SetHeight(24)
				:SetMargin(0, 0, 0, 8)
				:AddChild(UIElements.New("Text", "text")
					:SetSize("AUTO", 24)
					:SetMargin(0, 8, 0, 0)
					:SetFont("BODY_BODY2")
					:SetText(L["Show ungrouped items as:"])
				)
				:AddChild(UIElements.New("SelectionDropdown", "itemMode")
					:SetHeight(24)
					:AddItem(L["Specific Item"], "specific")
					:AddItem(L["Item Level"], "level")
					:AddItem(L["Base Item"], "base")
					:SetSettingInfo(private.settings, "ungroupedItemMode")
					:SetScript("OnSelectionChanged", private.ItemModeOnSelectionChanged)
				)
			)
			:AddChild(UIElements.New("Frame", "content")
				:SetLayout("HORIZONTAL")
				:AddChild(UIElements.New("Frame", "ungrouped")
					:SetLayout("VERTICAL")
					:SetMargin(0, 8, 0, 0)
					:AddChild(UIElements.New("Frame", "content")
						:SetLayout("VERTICAL")
						:SetBackgroundColor("PRIMARY_BG_ALT", true)
						:AddChild(UIElements.New("Frame", "header")
							:SetLayout("HORIZONTAL")
							:SetHeight(24)
							:SetBackgroundColor("FRAME_BG", true)
							:AddChild(UIElements.New("Text", "text")
								:SetMargin(8, 0, 4, 4)
								:SetFont("BODY_BODY2_MEDIUM")
								:SetText(L["Ungrouped Items"])
							)
							:AddChild(UIElements.New("Button", "selectAllBtn")
								:SetSize(20, 20)
								:SetMargin(8, 4, 0, 0)
								:SetBackground("iconPack.18x18/Select All")
								:SetScript("OnClick", private.ItemListSelectAllOnClick)
								:SetTooltip(L["Select / Deselect All Items"])
							)
						)
						-- draw a line along the bottom to hide the rounded corners at the bottom of the header frame
						:AddChildNoLayout(UIElements.New("Texture", "line")
							:AddAnchor("BOTTOMLEFT", "header")
							:AddAnchor("BOTTOMRIGHT", "header")
							:SetHeight(4)
							:SetColor("FRAME_BG")
						)
						:AddChild(UIElements.New("ItemList", "itemList")
							:SetMargin(0, 0, 0, 7)
							:SetBackgroundColor("PRIMARY_BG_ALT")
							:AddSectionQuery(Theme.GetColor("INDICATOR"):ColorText(L["Ungrouped Items in Bags"]), private.CreateUngroupedBagItemQuery())
							:SetScript("OnSelectionChanged", private.UngroupedItemsOnSelectionChanged)
						)
					)
					:AddChild(UIElements.New("ActionButton", "btn")
						:SetHeight(26)
						:SetMargin(0, 0, 10, 0)
						:SetText(L["Add"])
						:SetDisabled(true)
						:SetScript("OnClick", private.AddItemsOnClick)
					)
				)
				:AddChild(UIElements.New("Frame", "grouped")
					:SetLayout("VERTICAL")
					:AddChild(UIElements.New("Frame", "content")
						:SetLayout("VERTICAL")
						:SetBackgroundColor("PRIMARY_BG_ALT", true)
						:AddChild(UIElements.New("Frame", "header")
							:SetLayout("HORIZONTAL")
							:SetHeight(24)
							:SetBackgroundColor("FRAME_BG", true)
							:AddChild(UIElements.New("Text", "text")
								:SetMargin(8, 0, 4, 4)
								:SetFont("BODY_BODY2_MEDIUM")
								:SetText(L["Grouped Items"])
							)
							:AddChild(UIElements.New("Button", "selectAllBtn")
								:SetSize(20, 20)
								:SetMargin(8, 4, 0, 0)
								:SetBackground("iconPack.18x18/Select All")
								:SetScript("OnClick", private.ItemListSelectAllOnClick)
								:SetTooltip(L["Select / Deselect All Items"])
							)
						)
						-- draw a line along the bottom to hide the rounded corners at the bottom of the header frame
						:AddChildNoLayout(UIElements.New("Texture", "line")
							:AddAnchor("BOTTOMLEFT", "header")
							:AddAnchor("BOTTOMRIGHT", "header")
							:SetHeight(4)
							:SetColor("FRAME_BG")
						)
						:AddChild(UIElements.New("ItemList", "itemList")
							:SetMargin(0, 0, 0, 7)
							:SetBackgroundColor("PRIMARY_BG_ALT")
							:SetSingleQuery(private.CreateGroupedItemQuery())
							:SetScript("OnSelectionChanged", private.GroupedItemsOnSelectionChanged)
						)
					)
					:AddChildIf(hasParent, UIElements.New("ActionButton", "btn")
						:SetHeight(26)
						:SetMargin(0, 0, 10, 0)
						:SetText(L["Remove"])
						:SetDisabled(true)
						:SetModifierText(L["Move to Parent Group"], "SHIFT")
						:SetScript("OnClick", private.RemoveItemsOnClick)
						:SetTooltip(L["Hold shift to move the items to the parent group instead of removing them."])
					)
					:AddChildIf(not hasParent, UIElements.New("ActionButton", "btn")
						:SetHeight(26)
						:SetMargin(0, 0, 10, 0)
						:SetText(L["Remove"])
						:SetDisabled(true)
						:SetScript("OnClick", private.RemoveItemsOnClick)
					)
				)
			)
		if hasParent then
			local ungruopedItemList = frame:GetElement("content.ungrouped.content.itemList")
			ungruopedItemList:AddSectionQuery(Theme.GetColor("INDICATOR"):ColorText(L["Parent Items"]), private.CreateParentGroupItemQuery())
		end
		return frame
	elseif button == L["Operations"] then
		UIUtils.AnalyticsRecordPathChange("main", "groups", "operations")
		return UIElements.New("ScrollFrame", "operations")
			:SetPadding(8)
			:SetBackgroundColor("PRIMARY_BG")
			:AddChild(private.GetModuleOperationFrame("Auctioning"))
			:AddChild(private.GetModuleOperationFrame("Crafting"))
			:AddChild(private.GetModuleOperationFrame("Mailing"))
			:AddChild(private.GetModuleOperationFrame("Shopping"))
			:AddChild(private.GetModuleOperationFrame("Sniper"))
			:AddChild(private.GetModuleOperationFrame("Vendoring"))
			:AddChild(private.GetModuleOperationFrame("Warehousing"))
	else
		error("Unknown button!")
	end
end

function private.GetModuleOperationFrame(moduleName)
	local override = TSM.Groups.HasOperationOverride(private.currentGroupPath, moduleName) or private.currentGroupPath == TSM.CONST.ROOT_GROUP_PATH
	local numGroupOperations = 0
	for _ in TSM.Groups.OperationIterator(private.currentGroupPath, moduleName) do
		numGroupOperations = numGroupOperations + 1
	end

	return UIElements.New("CollapsibleContainer", "operationInfo"..moduleName)
		:SetLayout("VERTICAL")
		:SetMargin(0, 0, 0, moduleName == "Warehousing" and 0 or 8)
		:SetContext(moduleName)
		:SetContextTable(private.moduleCollapsed, moduleName)
		:SetHeadingText(format(L["%s Operations"], moduleName))
		:AddChild(UIElements.New("Text", "moduleDesc")
			:SetSize("AUTO", 20)
			:SetFont("BODY_BODY3")
			:SetText(OPERATION_LABELS[moduleName])
		)
		:AddChildIf(private.currentGroupPath ~= TSM.CONST.ROOT_GROUP_PATH, UIElements.New("Checkbox", "overrideCheckbox")
			:SetHeight(20)
			:SetMargin(0, 0, 6, 0)
			:SetFont("BODY_BODY2")
			:SetText(L["Override Parent Operations"])
			:SetChecked(override)
			:SetScript("OnValueChanged", private.OverrideToggleOnValueChanged)
		)
		:AddChild(UIElements.New("Frame", "container")
			:SetLayout("VERTICAL")
			:SetContext(moduleName)
			:SetHeight(36 * numGroupOperations)
			:AddChildrenWithFunction(private.AddOperationRows)
		)
		:AddChildIf(override and numGroupOperations < TSM.Operations.GetMaxNumber(moduleName), UIElements.New("Frame", "addMore")
			:SetLayout("HORIZONTAL")
			:SetHeight(24)
			:SetMargin(0, 0, 8, 0)
			:AddChild(UIElements.New("Spacer", "spacer"))
			:AddChild(UIElements.New("Button", "button")
				:SetWidth("AUTO")
				:SetMargin(0, 2, 0, 0)
				:SetFont("BODY_BODY2")
				:SetTextColor("INDICATOR")
				:SetText(L["Add More Operations"])
				:SetContext(moduleName)
				:SetScript("OnClick", private.AddOperationButtonOnClick)
			)
		)
end

function private.AddOperationRows(container)
	local moduleName = container:GetContext()
	local override = TSM.Groups.HasOperationOverride(private.currentGroupPath, moduleName) or private.currentGroupPath == TSM.CONST.ROOT_GROUP_PATH
	for i, operationName in TSM.Groups.OperationIterator(private.currentGroupPath, moduleName) do
		container:AddChild(UIElements.New("Frame", "operation"..i)
			:SetLayout("HORIZONTAL")
			:SetHeight(28)
			:SetMargin(0, 0, 8, 0)
			:SetBackgroundColor("PRIMARY_BG_ALT")
			:AddChild(UIElements.New("Text", "operationNum")
				:SetWidth(20)
				:SetMargin(2, 8, 0, 0)
				:SetFont("BODY_BODY1_BOLD")
				:SetText(i)
			)
			:AddChild(UIElements.New("Frame", "title")
				:SetLayout("HORIZONTAL")
				:SetPadding(0, 8, 0, 0)
				:SetBackgroundColor("ACTIVE_BG", true)
				:AddChildNoLayout(UIElements.New("Button", "dragFrame")
					:SetSize(15, 24)
					:AddAnchor("LEFT", 1, 0)
					:SetContext(i)
					:SetScript("OnMouseDown", override and private.DragButtonOnMouseDown or nil)
					:SetScript("OnMouseUp", override and private.DragButtonOnMouseUp or nil)
				)
				:AddChild(UIElements.New("Frame", "handleBackground")
					:SetSize(18, 28)
					:SetBackgroundColor("FRAME_BG", true)
					-- draw a line along the right to hide the rounded corners at the bottom of the header frame
					:AddChildNoLayout(UIElements.New("Texture", "line")
						:AddAnchor("TOPRIGHT")
						:AddAnchor("BOTTOMRIGHT")
						:SetWidth(6)
						:SetColor("FRAME_BG")
					)
					:AddChildNoLayout(UIElements.New("Texture", "texture")
						:AddAnchor("LEFT")
						:SetTextureAndSize("iconPack.18x18/Grip")
					)
				)
				:AddChild(UIElements.New("Text", "name")
					:SetWidth("AUTO")
					:SetMargin(8, 0, 0, 0)
					:SetFont("BODY_BODY2")
					:SetText(operationName)
				)
				:AddChild(UIElements.New("Frame", "spacer"))
				:AddChild(UIElements.New("Button", "configBtn")
					:SetBackgroundAndSize("iconPack.18x18/Popout")
					:SetContext(operationName)
					:SetScript("OnClick", private.ConfigOperationOnClick)
				)
				:AddChildIf(override, UIElements.New("Button", "removeBtn")
					:SetMargin(4, 0, 0, 0)
					:SetBackgroundAndSize("iconPack.18x18/Close/Default")
					:SetContext(i)
					:SetScript("OnClick", private.RemoveOperationOnClick)
				)
			)
		)
	end
end



-- ============================================================================
-- Local Script Handlers
-- ============================================================================

function private.DragButtonOnMouseDown(button)
	local frame = button:GetParentElement()
	frame:SetRelativeLevel(20)
	frame:StartMoving()
	button:SetScript("OnUpdate", private.DragFrameOnUpdate)
	button:GetElement("__parent.name")
		:SetTextColor("INDICATOR")
	frame:SetWidth(250)
		:Draw()
end

function private.DragButtonOnMouseUp(button)
	button:SetScript("OnUpdate", nil)
	local frame = button:GetParentElement()
	frame:StopMovingOrSizing()
	frame:SetRelativeLevel(1)
	local container = frame:GetParentElement():GetParentElement()

	local moduleName = container:GetParentElement():GetParentElement():GetContext()
	local index = button:GetContext()
	-- TODO: refactor
	for k, v in container:LayoutChildrenIterator() do
		if k ~= index and v:IsMouseOver() then
			TSM.Groups.SwapOperation(private.currentGroupPath, moduleName, index, k)
		end
	end
	for i, operationName in TSM.Groups.OperationIterator(private.currentGroupPath, moduleName) do
		container:GetElement("operation"..i..".title.name"):SetText(operationName)
	end

	frame:SetWidth(nil)
	frame:GetElement("name")
		:SetTextColor("TEXT")
	frame:GetParentElement():GetParentElement()
		:Draw()
end

function private.DragFrameOnUpdate(frame)
	local scrollFrame = frame:GetElement("__parent.__parent.__parent.__parent.__parent.__parent")
	local uiScale = frame:_GetBaseFrame():GetEffectiveScale()
	local x, y = GetCursorPosition()
	x = x / uiScale
	y = y / uiScale

	-- TODO: refactor
	local top = scrollFrame:_GetBaseFrame():GetTop()
	local bottom = scrollFrame:_GetBaseFrame():GetBottom()
	if y > top then
		scrollFrame._scrollAmount = top - y
	elseif y < bottom then
		scrollFrame._scrollAmount = bottom - y
	else
		scrollFrame._scrollAmount = 0
	end

	scrollFrame._scrollbar:SetValue(scrollFrame._scrollbar:GetValue() + scrollFrame._scrollAmount / DRAG_SCROLL_SPEED_FACTOR)
end

function private.GroupSearchOnValueChanged(input)
	local groupsContentFrame = input:GetElement("__parent.__parent.__parent.view.content")
	-- Copy search filter
	local text = strlower(input:GetValue())

	if private.groupSearch == text then
		return
	end

	private.groupSearch = text
	local searchStr = String.Escape(private.groupSearch)
	-- Check if the selection is being filtered out
	if strmatch(strlower(private.currentGroupPath), searchStr) then
		local titleFrame = groupsContentFrame:GetElement("header.title")
		local buttonsFrame = groupsContentFrame:GetElement("buttons")
		input:GetElement("__parent.__parent.groupTree"):SetSelectedGroup(private.currentGroupPath)
		if private.currentGroupPath == TSM.CONST.ROOT_GROUP_PATH then
			titleFrame:GetElement("text")
				:SetTextColor("TEXT")
				:SetText(L["Base Group"])
		else
			titleFrame:GetElement("text")
				:SetTextColor(Theme.GetGroupColorKey(select('#', strsplit(TSM.CONST.GROUP_SEP, private.currentGroupPath))))
				:SetText(TSM.Groups.Path.GetName(private.currentGroupPath))
		end
		titleFrame:GetElement("renameBtn"):Show()
		titleFrame:GetElement("exportBtn"):Show()
		buttonsFrame:Show()
		buttonsFrame:Draw()
		titleFrame:Draw()
	else
		local titleFrame = groupsContentFrame:GetElement("header.title")
		local buttonsFrame = groupsContentFrame:GetElement("buttons")
		input:GetElement("__parent.__parent.groupTree"):SetSelectedGroup(TSM.CONST.ROOT_GROUP_PATH)
		titleFrame:GetElement("text")
			:SetText(L["No group selected"])
			:SetEditing(false)
		-- Hide the content
		titleFrame:GetElement("renameBtn"):Hide()
		titleFrame:GetElement("exportBtn"):Hide()
		buttonsFrame:Hide()
		buttonsFrame:Draw()
		titleFrame:Draw()
	end
	input:GetElement("__parent.__parent.groupTree")
		:SetSearchString(private.groupSearch)
		:Draw()
end

function private.ExpandAllGroupsOnClick(button)
	button:GetElement("__parent.__parent.groupTree")
		:ToggleExpandAll()
end

function private.ImportGroupBtnOnClick(button)
	button:GetBaseElement():ShowDialogFrame(UIElements.New("Frame", "frame")
		:SetLayout("VERTICAL")
		:SetSize(658, 250)
		:SetPadding(12)
		:AddAnchor("CENTER")
		:SetBackgroundColor("FRAME_BG", true)
		:SetMouseEnabled(true)
		:AddChild(UIElements.New("Frame", "header")
			:SetLayout("HORIZONTAL")
			:SetHeight(24)
			:SetMargin(20, -4, -4, 12)
			:AddChild(UIElements.New("Text", "title")
				:SetFont("BODY_BODY2_BOLD")
				:SetJustifyH("CENTER")
				:SetText(L["Import Groups & Operations"])
			)
			:AddChild(UIElements.New("Button", "closeBtn")
				:SetBackgroundAndSize("iconPack.24x24/Close/Default")
				:SetScript("OnClick", private.ImportExportCloseBtnOnClick)
			)
		)
		:AddChild(UIElements.New("Text", "desc")
			:SetHeight(40)
			:SetMargin(0, 0, 0, 12)
			:SetFont("BODY_BODY3")
			:SetText(L["You can import groups by pasting an import string into the box below. Group import strings can be found at: https://tradeskillmaster.com/group-maker/all"])
		)
		:AddChild(UIElements.New("Text", "text")
			:SetHeight(20)
			:SetMargin(0, 0, 0, 8)
			:SetFont("BODY_BODY2_MEDIUM")
			:SetText(L["Import String"])
		)
		:AddChild(UIElements.New("MultiLineInput", "input")
			:SetMargin(0, 0, 0, 12)
			:SetBackgroundColor("PRIMARY_BG_ALT")
			:SetFocused(true)
			:SetPasteMode()
			:SetScript("OnValueChanged", private.ImportInputOnValueChanged)
		)
		:SetScript("OnHide", private.ImportOnHide)
	)
end

function private.GetImportSummaryDialog()
	wipe(private.importGroupTreeContext)
	local dialogFrame = UIElements.New("Frame", "frame")
		:SetLayout("VERTICAL")
		:SetSize(612, 437)
		:SetPadding(8)
		:AddAnchor("CENTER")
		:SetBackgroundColor("FRAME_BG", true)
		:SetMouseEnabled(true)
		:AddChild(UIElements.New("Frame", "header")
			:SetLayout("HORIZONTAL")
			:SetHeight(24)
			:SetMargin(20, -4, -4, 16)
			:AddChild(UIElements.New("Text", "title")
				:SetFont("BODY_BODY2_BOLD")
				:SetJustifyH("CENTER")
				:SetText(L["Import Summary"])
			)
			:AddChild(UIElements.New("Button", "closeBtn")
				:SetBackgroundAndSize("iconPack.24x24/Close/Default")
				:SetScript("OnClick", private.ImportExportCloseBtnOnClick)
			)
		)
		:AddChild(UIElements.New("Frame", "nav")
			:SetLayout("HORIZONTAL")
			:SetHeight(20)
			:SetMargin(0, 0, 0, 16)
			:AddChild(UIElements.New("Spacer", "spacer"))
			-- TODO: add the other tabs (and OnClick handlers for these buttons)
			:AddChild(UIElements.New("Button", "groups")
				:SetWidth("AUTO")
				:SetMargin(8, 8, 0, 0)
				:SetFont("BODY_BODY2_BOLD")
				:SetJustifyH("CENTER")
				:SetText(format(L["%d Groups"], 0))
			)
			:AddChild(UIElements.New("VerticalLine", "line")
				:SetColor("ACTIVE_BG_ALT")
			)
			:AddChild(UIElements.New("Button", "operations")
				:SetWidth("AUTO")
				:SetMargin(8, 8, 0, 0)
				:SetFont("BODY_BODY2_BOLD")
				:SetJustifyH("CENTER")
				:SetText(format(L["%d Operations"], 0))
			)
			:AddChild(UIElements.New("VerticalLine", "line2")
				:SetColor("ACTIVE_BG_ALT")
			)
			:AddChild(UIElements.New("Button", "items")
				:SetWidth("AUTO")
				:SetMargin(8, 8, 0, 0)
				:SetFont("BODY_BODY2_BOLD")
				:SetJustifyH("CENTER")
				:SetText(format(L["%d Items"], 0))
			)
			:AddChild(UIElements.New("Spacer", "spacer"))
		)
		:AddChild(UIElements.New("Frame", "container")
			:SetLayout("VERTICAL")
			:SetPadding(2)
			:SetMargin(0, 0, 0, 12)
			:SetBackgroundColor("PRIMARY_BG")
			:SetBorderColor("ACTIVE_BG")
			:AddChild(UIElements.New("Frame", "header")
				:SetLayout("HORIZONTAL")
				:SetHeight(24)
				:SetMargin(8)
				:AddChild(UIElements.New("Input", "input")
					:AllowItemInsert(true)
					:SetIconTexture("iconPack.18x18/Search")
					:SetClearButtonEnabled(true)
					:SetHintText(L["Search Groups"])
					:SetScript("OnValueChanged", private.ImportFilterOnValueChanged)
				)
				:AddChild(UIElements.New("Button", "expandAllBtn")
					:SetSize(24, 24)
					:SetMargin(8, 4, 0, 0)
					:SetBackground("iconPack.18x18/Expand All")
					:SetScript("OnClick", private.ImportExpandAllOnClick)
					:SetTooltip(L["Expand / Collapse All Groups"])
				)
				:AddChild(UIElements.New("Button", "selectAllBtn")
					:SetSize(24, 24)
					:SetBackground("iconPack.18x18/Select All")
					:SetScript("OnClick", private.ImportSelectAllOnClick)
					:SetTooltip(L["Select / Deselect All Groups"])
				)
			)
			:AddChild(UIElements.New("ApplicationGroupTree", "groupTree")
				:SetContextTable(private.importGroupTreeContext, DEFAULT_IMPORT_GROUP_TREE_CONTEXT)
				:SetQuery(private.CreateImportExportDBQuery())
				:SetScript("OnGroupSelectionChanged", private.ImportGroupTreeOnGroupSelectionChanged)
			)
		)
		:AddChild(UIElements.New("Frame", "items")
			:SetLayout("HORIZONTAL")
			:SetHeight(20)
			:SetMargin(0, 0, 0, 12)
			:AddChild(UIElements.New("Checkbox", "moveCheckbox")
				:SetWidth("AUTO")
				:SetMargin(0, 8, 0, 0)
				:SetFont("BODY_BODY3")
				:SetChecked(true)
			)
			:AddChild(UIElements.New("Spacer", "spacer"))
		)
		:AddChild(UIElements.New("Frame", "operations")
			:SetLayout("HORIZONTAL")
			:SetHeight(20)
			:SetMargin(0, 0, 0, 12)
			:AddChild(UIElements.New("Checkbox", "includeCheckbox")
				:SetWidth("AUTO")
				:SetMargin(0, 8, 0, 0)
				:SetFont("BODY_BODY3")
				:SetChecked(true)
				:SetText(L["Include operations?"])
				:SetScript("OnValueChanged", private.ImportIncludeOperationsCheckboxOnValueChanged)
			)
			:AddChild(UIElements.New("Checkbox", "replaceCheckbox")
				:SetWidth("AUTO")
				:SetMargin(0, 8, 0, 0)
				:SetFont("BODY_BODY3")
				:SetChecked(true)
			)
			:AddChild(UIElements.New("Spacer", "spacer"))
		)
		:AddChild(UIElements.New("ActionButton", "btn")
			:SetHeight(24)
			:SetText(L["Import"])
			:SetScript("OnClick", private.ImportBtnOnClick)
		)
		:SetScript("OnHide", private.ImportOnHide)
	return dialogFrame
end

function private.ImportInputOnValueChanged(input)
	local baseFrame = input:GetBaseElement()
	if not TSM.Groups.ImportExport.ProcessImport(input:GetValue()) then
		baseFrame:HideDialog()
		Log.PrintUser(L["The pasted value was not valid. Ensure you are pasting the entire import string."])
		return
	end

	-- build the import group DB
	private.importExportGroupDB:TruncateAndBulkInsertStart()
	local importGroupName = TSM.Groups.ImportExport.GetPendingImportGroupName()
	for groupPath in TSM.Groups.ImportExport.PendingImportGroupIterator() do
		groupPath = groupPath == TSM.CONST.ROOT_GROUP_PATH and importGroupName or TSM.Groups.Path.Join(importGroupName, groupPath)
		local orderStr = gsub(groupPath, TSM.CONST.GROUP_SEP, "\001")
		orderStr = strlower(orderStr)
		private.importExportGroupDB:BulkInsertNewRow(groupPath, orderStr)
	end
	private.importExportGroupDB:BulkInsertEnd()

	-- clear the OnHide handler so we don't reset the import context
	input:GetParentElement():SetScript("OnHide", nil)
	baseFrame:HideDialog()
	local dialogFrame = private.GetImportSummaryDialog()
	baseFrame:ShowDialogFrame(dialogFrame)
	private.UpdateImportConfirmationDialog(dialogFrame)
end

function private.UpdateImportConfirmationDialog(dialogFrame)
	local numItems, numGroups, numExistingItems, numOperations, numExistingOperations, numExistingCustomSources = TSM.Groups.ImportExport.GetImportTotals()
	dialogFrame:GetElement("nav.groups")
		:SetText(format(L["%d Groups"], numGroups))
	dialogFrame:GetElement("nav.operations")
		:SetText(format(L["%d Operations"], numOperations))
	dialogFrame:GetElement("nav.items")
		:SetText(format(L["%d Items"], numItems))
	if numExistingItems > 0 then
		dialogFrame:GetElement("items.moveCheckbox")
			:SetText(format(L["Move %d already grouped items?"], numExistingItems))
			:SetChecked(true)
		dialogFrame:GetElement("items"):Show()
	else
		dialogFrame:GetElement("items"):Hide()
	end
	if numOperations > 0 then
		dialogFrame:GetElement("operations.includeCheckbox")
			:SetChecked(true)
		dialogFrame:GetElement("operations.replaceCheckbox")
			:SetChecked(true)
		if numExistingOperations > 0 then
			if numExistingCustomSources > 0 then
				dialogFrame:GetElement("operations.replaceCheckbox")
					:SetText(format(L["Replace %d existing operations and %d existing custom sources?"], numExistingOperations, numExistingCustomSources))
			else
				dialogFrame:GetElement("operations.replaceCheckbox")
					:SetText(format(L["Replace %d existing operations?"], numExistingOperations))
			end
			dialogFrame:GetElement("operations.replaceCheckbox"):Show()
		else
			dialogFrame:GetElement("operations.replaceCheckbox"):Hide()
		end
		dialogFrame:GetElement("operations"):Show()
	else
		dialogFrame:GetElement("operations"):Hide()
	end
	dialogFrame:Draw()
end

function private.ImportFilterOnValueChanged(input)
	input:GetElement("__parent.__parent.groupTree")
		:SetSearchString(strlower(input:GetValue()))
		:Draw()
end

function private.ImportExpandAllOnClick(button)
	button:GetElement("__parent.__parent.groupTree")
		:ToggleExpandAll()
end

function private.ImportSelectAllOnClick(button)
	local importGroupName = TSM.Groups.ImportExport.GetPendingImportGroupName()
	local groupTree = button:GetElement("__parent.__parent.groupTree")
	groupTree:SetGroupSelected(importGroupName, false)
	groupTree:ToggleSelectAll()
end

function private.ImportGroupTreeOnGroupSelectionChanged(groupTree)
	local importGroupName = TSM.Groups.ImportExport.GetPendingImportGroupName()
	groupTree:SetGroupSelected(importGroupName, true)
	-- make sure the parent of any selected groups are also selected
	for relativeGroupPath in TSM.Groups.ImportExport.PendingImportGroupIterator() do
		local groupPath = relativeGroupPath == TSM.CONST.ROOT_GROUP_PATH and importGroupName or TSM.Groups.Path.Join(importGroupName, relativeGroupPath)
		local isSelected = groupTree:IsGroupSelected(groupPath)
		TSM.Groups.ImportExport.SetGroupFiltered(relativeGroupPath, not isSelected)
		if isSelected then
			local tempGroupPath = TSM.Groups.Path.Split(groupPath)
			while tempGroupPath do
				groupTree:SetGroupSelected(tempGroupPath, true)
				tempGroupPath = TSM.Groups.Path.Split(tempGroupPath)
			end
		end
	end
	for relativeGroupPath in TSM.Groups.ImportExport.PendingImportGroupIterator() do
		local groupPath = relativeGroupPath == TSM.CONST.ROOT_GROUP_PATH and importGroupName or TSM.Groups.Path.Join(importGroupName, relativeGroupPath)
		local isSelected = groupTree:IsGroupSelected(groupPath)
		TSM.Groups.ImportExport.SetGroupFiltered(relativeGroupPath, not isSelected)
	end
	private.UpdateImportConfirmationDialog(groupTree:GetParentElement():GetParentElement())
end

function private.ImportIncludeOperationsCheckboxOnValueChanged(checkbox)
	if checkbox:IsChecked() then
		checkbox:GetElement("__parent.replaceCheckbox"):Show()
	else
		checkbox:GetElement("__parent.replaceCheckbox"):Hide()
	end
end

function private.ImportBtnOnClick(button)
	local moveExistingItems = button:GetElement("__parent.items.moveCheckbox"):IsChecked()
	local includeOperations = button:GetElement("__parent.operations.includeCheckbox"):IsChecked()
	local replaceOperations = button:GetElement("__parent.operations.replaceCheckbox"):IsChecked()
	TSM.Groups.ImportExport.CommitImport(moveExistingItems, includeOperations, replaceOperations)
	button:GetBaseElement():HideDialog()
end

function private.ImportOnHide()
	TSM.Groups.ImportExport.ClearImportContext()
end

function private.GroupTreeOnGroupSelected(groupTree, path)
	local view = groupTree:GetElement("__parent.__parent.view")
	if view:GetPath() ~= "content" then
		view:SetPath("content", true)
	end

	private.currentGroupPath = path
	local contentFrame = view:GetElement("content")
	local titleFrame = contentFrame:GetElement("header.title")
	local buttonsFrame = contentFrame:GetElement("buttons")

	if path == TSM.CONST.ROOT_GROUP_PATH then
		titleFrame:GetElement("icon")
			:SetTextureAndSize(TextureAtlas.GetColoredKey("iconPack.18x18/Folder", "TEXT"))
		titleFrame:GetElement("text")
			:SetTextColor("TEXT")
			:SetText(L["Base Group"])
			:SetEditing(false)
		titleFrame:GetElement("renameBtn"):Hide()
		titleFrame:GetElement("exportBtn"):Hide()
		buttonsFrame:RenamePath(L["Information"], 1)
	else
		local groupColorKey = Theme.GetGroupColorKey(select('#', strsplit(TSM.CONST.GROUP_SEP, path)))
		titleFrame:GetElement("icon")
			:SetTextureAndSize(TextureAtlas.GetColoredKey("iconPack.18x18/Folder", groupColorKey))
		titleFrame:GetElement("text")
			:SetTextColor(groupColorKey)
			:SetText(TSM.Groups.Path.GetName(path))
			:SetEditing(false)
		titleFrame:GetElement("renameBtn"):Show()
		titleFrame:GetElement("exportBtn"):Show()
		buttonsFrame:RenamePath(L["Items"], 1)
	end
	-- Show the frame in case it is hidden by filter
	buttonsFrame:Show()
	buttonsFrame:Draw()
	titleFrame:Draw()
	contentFrame:GetElement("buttons"):ReloadContent()
end

function private.GroupTreeOnNewGroup(groupTree)
	groupTree:GetElement("__parent.__parent.view.content.header.title.text"):SetEditing(true)
end

function private.GroupTreeOnDragRecieved(groupTree, context, destPath)
	local items = TempTable.Acquire()
	for _, itemString in ipairs(context) do
		if TSM.Groups.GetPathByItem(itemString) ~= destPath then
			tinsert(items, itemString)
		end
	end
	TSM.Groups.SetItemsGroup(items, destPath ~= TSM.CONST.ROOT_GROUP_PATH and destPath or nil)
	TempTable.Release(items)
	local view = groupTree:GetElement("__parent.__parent.view")
	if view:GetPath() == "content" then
		local contentFrame = view:GetElement("content")
		contentFrame:GetElement("buttons"):ReloadContent()
	elseif view:GetPath() == "search" then
		view:GetElement("content.header2.label")
			:SetText(format(L["%d Results"], private.baseItemInfoQuery:Count()))
			:Draw()
	else
		error("Unexpected path: "..tostring(view))
	end
end

function private.GroupNameChanged(text, newValue)
	newValue = strtrim(newValue)
	local parent = TSM.Groups.Path.GetParent(private.currentGroupPath)
	local newPath = parent and parent ~= TSM.CONST.ROOT_GROUP_PATH and (parent..TSM.CONST.GROUP_SEP..newValue) or newValue
	if newPath == private.currentGroupPath then
		-- didn't change
		text:Draw()
	elseif strfind(newValue, TSM.CONST.GROUP_SEP) or newValue == "" then
		Log.PrintUser(L["Invalid group name."])
		text:Draw()
	elseif TSM.Groups.Exists(newPath) then
		Log.PrintUser(L["Group already exists."])
		text:Draw()
	else
		TSM.Groups.Move(private.currentGroupPath, newPath)
		Analytics.Action("MOVED_GROUP", private.currentGroupPath, newPath)
		text:GetElement("__parent.__parent.__parent.__parent.__parent.groupSelection.groupTree"):SetSelectedGroup(newPath, true)
	end
end

function private.NameOnEditingChanged(text, editing)
	if editing then
		text:GetElement("__parent.renameBtn"):Hide()
		text:GetElement("__parent.exportBtn"):Hide()
	else
		text:GetElement("__parent.renameBtn"):Show()
		text:GetElement("__parent.exportBtn"):Show()
	end
end

function private.RenameBtnOnClick(button)
	button:GetElement("__parent.text"):SetEditing(true)
end

function private.ExportBtnOnClick(button)
	-- build the export DB
	wipe(private.exportSubGroups)
	private.importExportGroupDB:TruncateAndBulkInsertStart()
	for _, groupPath in TSM.Groups.GroupIterator() do
		local relGroupPath = nil
		if TSM.Groups.Path.IsChild(groupPath, private.currentGroupPath) then
			relGroupPath = TSM.Groups.Path.GetRelative(groupPath, private.currentGroupPath)
		end
		if relGroupPath then
			private.exportSubGroups[relGroupPath] = true
			local orderStr = gsub(relGroupPath, TSM.CONST.GROUP_SEP, "\001")
			orderStr = strlower(orderStr)
			private.importExportGroupDB:BulkInsertNewRow(relGroupPath, orderStr)
		end
	end
	private.importExportGroupDB:BulkInsertEnd()

	local str, numItems, numSubGroups, numOperations, numCustomSources = TSM.Groups.ImportExport.GenerateExport(private.currentGroupPath, private.exportSubGroups, false, false)
	local coloredGroupName = Theme.GetGroupColor(select('#', strsplit(TSM.CONST.GROUP_SEP, private.currentGroupPath))):ColorText(TSM.Groups.Path.GetName(private.currentGroupPath))
	button:GetBaseElement():ShowDialogFrame(UIElements.New("Frame", "frame")
		:SetLayout("VERTICAL")
		:SetSize(658, 408)
		:SetPadding(12)
		:AddAnchor("CENTER")
		:SetBackgroundColor("FRAME_BG", true)
		:SetMouseEnabled(true)
		:AddChild(UIElements.New("Frame", "header")
			:SetLayout("HORIZONTAL")
			:SetHeight(24)
			:SetMargin(20, -4, -4, 12)
			:AddChild(UIElements.New("Text", "title")
				:SetFont("BODY_BODY2_BOLD")
				:SetJustifyH("CENTER")
				:SetText(L["Export"]..": "..coloredGroupName)
			)
			:AddChild(UIElements.New("Button", "closeBtn")
				:SetBackgroundAndSize("iconPack.24x24/Close/Default")
				:SetScript("OnClick", private.ImportExportCloseBtnOnClick)
			)
		)
		:AddChild(UIElements.New("Text", "desc")
			:SetHeight(20)
			:SetMargin(0, 0, 0, 12)
			:SetFont("BODY_BODY3")
			:SetText(L["You can use the export string below to share this group with others."])
		)
		:AddChild(UIElements.New("Frame", "options")
			:SetLayout("HORIZONTAL")
			:SetHeight(20)
			:SetMargin(0, 0, 0, 12)
			:AddChild(UIElements.New("GroupSelector", "subGroups")
				:SetWidth(240)
				:SetMargin(0, 12, 0, 0)
				:SetSelectedText(L["%d subgroups included"])
				:SetCustomQueryFunc(private.CreateImportExportDBQuery)
				:SetSelection(private.exportSubGroups)
				:SetHintText(L["Select included subgroups"])
				:SetScript("OnSelectionChanged", private.ExportOptionOnValueChanged)
			)
			:AddChild(UIElements.New("Checkbox", "excludeOperations")
				:SetWidth("AUTO")
				:SetMargin(0, 12, 0, 0)
				:SetFont("BODY_BODY3")
				:SetText(L["Exclude operations?"])
				:SetScript("OnValueChanged", private.ExportOptionOnValueChanged)
			)
			:AddChild(UIElements.New("Checkbox", "excludeCustomSources")
				:SetWidth("AUTO")
				:SetMargin(0, 12, 0, 0)
				:SetFont("BODY_BODY3")
				:SetText(L["Exclude custom sources?"])
				:SetScript("OnValueChanged", private.ExportOptionOnValueChanged)
			)
			:AddChild(UIElements.New("Spacer", "spacer"))
		)
		:AddChild(UIElements.New("Text", "heading")
			:SetMargin(0, 0, 0, 8)
			:SetHeight(20)
			:SetFont("BODY_BODY2_MEDIUM")
			:SetText(L["Export String"])
		)
		:AddChild(UIElements.New("Frame", "content")
			:SetLayout("VERTICAL")
			:SetBackgroundColor("PRIMARY_BG_ALT", true)
			:AddChild(UIElements.New("MultiLineInput", "input")
				:SetBackgroundColor("PRIMARY_BG_ALT")
				:SetValue(str)
				:SetScript("OnValueChanged", private.ExportInputOnEnterPressed)
			)
			:AddChild(UIElements.New("HorizontalLine", "line"))
			:AddChild(UIElements.New("Frame", "footer")
				:SetLayout("HORIZONTAL")
				:SetHeight(28)
				:SetPadding(8, 8, 4, 4)
				:AddChild(UIElements.New("Spacer", "spacer"))
				:AddChild(UIElements.New("Text", "items")
					:SetWidth("AUTO")
					:SetMargin(8, 8, 0, 0)
					:SetFont("BODY_BODY2_MEDIUM")
					:SetText(format(L["%d Items"], numItems))
				)
				:AddChild(UIElements.New("VerticalLine", "line1"))
				:AddChild(UIElements.New("Text", "subGroups")
					:SetWidth("AUTO")
					:SetMargin(8, 8, 0, 0)
					:SetFont("BODY_BODY2_MEDIUM")
					:SetText(format(L["%d Sub-Groups"], numSubGroups))
				)
				:AddChild(UIElements.New("VerticalLine", "line2"))
				:AddChild(UIElements.New("Text", "operations")
					:SetWidth("AUTO")
					:SetMargin(8, 8, 0, 0)
					:SetFont("BODY_BODY2_MEDIUM")
					:SetText(format(L["%d Operations"], numOperations))
				)
				:AddChild(UIElements.New("VerticalLine", "line3"))
				:AddChild(UIElements.New("Text", "customSources")
					:SetWidth("AUTO")
					:SetMargin(8, 0, 0, 0)
					:SetFont("BODY_BODY2_MEDIUM")
					:SetText(format(L["%d Custom Sources"], numCustomSources))
				)
			)
		)
	)
end

function private.CreateImportExportDBQuery()
	return private.importExportGroupDB:NewQuery()
		:OrderBy("orderStr", true)
end

function private.ImportExportCloseBtnOnClick(button)
	button:GetBaseElement():HideDialog()
end

function private.ExportOptionOnValueChanged(element)
	wipe(private.exportSubGroups)
	for groupPath in element:GetElement("__parent.subGroups"):SelectedGroupIterator() do
		private.exportSubGroups[groupPath] = true
	end
	local excludeOperations = element:GetElement("__parent.excludeOperations"):IsChecked()
	local excludeCustomSources = element:GetElement("__parent.excludeCustomSources"):IsChecked()
	local str, numItems, numSubGroups, numOperations, numCustomSources = TSM.Groups.ImportExport.GenerateExport(private.currentGroupPath, private.exportSubGroups, excludeOperations, excludeCustomSources)
	element:GetElement("__parent.excludeCustomSources")
		:SetDisabled(excludeOperations)
		:SetChecked(excludeCustomSources and not excludeOperations, true)
		:Draw()
	local content = element:GetElement("__parent.__parent.content")
	content:GetElement("input"):SetValue(str)
	content:GetElement("footer.items"):SetText(format(L["%d Items"], numItems))
	content:GetElement("footer.subGroups"):SetText(format(L["%d Sub-Groups"], numSubGroups))
	content:GetElement("footer.operations"):SetText(format(L["%d Operations"], numOperations))
	content:GetElement("footer.customSources"):SetText(format(L["%d Custom Sources"], numCustomSources))
	content:Draw()
end

function private.ExportInputOnEnterPressed(input)
	input:SetValue(TSM.Groups.ImportExport.GenerateExport(private.currentGroupPath, private.exportSubGroups, false, false))
		:Draw()
end

function private.ItemFilterValidateFunc(_, value)
	return private.itemFilter:ValidateStr(value)
end

function private.ItemFilterOnValueChanged(input)
	local text = input:GetValue()
	if private.itemSearch == text then
		return
	end
	private.itemSearch = text
	private.itemFilter:ParseStr(text)
	private.itemFilterSmartMap:Invalidate()
end

function private.ValidateBaseSearchValue(_, value)
	if value == "" then
		return true
	elseif #value < 3 then
		return false, L["The search term must be at least 3 characters."]
	elseif not private.itemFilter:ParseStr(value) then
		return false, L["Invalid search term."]
	elseif private.itemFilter:GetStr() and #private.itemFilter:GetStr() < 3 then
		return false, L["The name portion of the search term must be at least 3 characters if present."]
	elseif private.itemFilter:GetMinPrice() or private.itemFilter:GetMaxPrice() then
		return false, L["Invalid search term. Cannot filter by price here."]
	end
	return true
end

function private.InformationSearchOnValueChanged(input)
	local value = input:GetValue()
	if private.itemSearch == value or value == "" then
		return
	end
	private.BaseSearchOnValueChanged(input)
	private.frame:GetBaseElement():GetElement("content.groups.view.content.header.input")
		:SetFocused(true)
		:ClearHighlight()
end

function private.UpdateBaseItemInfoQuery()
	local shouldPause = private.baseItemInfoQuery ~= nil
	if shouldPause then
		private.baseItemInfoQuery:SetUpdatesPaused(true)
	end
	private.baseItemInfoQuery = ItemInfo.MatchItemFilterQuery(private.itemFilter, private.baseItemInfoQuery)
		:Select("ungroupedItemString", "texture", "coloredItemName")
		:VirtualSmartMapField("ungroupedItemString", private.ungroupedItemStringSmartMap, "itemString")
		:Distinct("ungroupedItemString")
		:LeftJoin(TSM.Groups.GetItemDBForJoin(), "ungroupedItemString", "itemString")
		:IsNil("groupPath")
		:OrderBy("name", true)
		:VirtualField("coloredItemName", "string", UIUtils.GetDisplayItemName, "itemString", Theme.GetColor("FEEDBACK_RED"):ColorText("?"))
	if shouldPause then
		private.baseItemInfoQuery:SetUpdatesPaused(false)
	end
end

function private.BaseSearchOnValueChanged(input)
	local value = input:GetValue()
	if private.itemSearch == value or value == "" then
		return
	end
	assert(private.itemFilter:ParseStr(value))
	private.itemFilterSmartMap:Invalidate()
	private.itemSearch = value
	private.UpdateBaseItemInfoQuery()
	private.frame:GetBaseElement():GetElement("content.groups.view"):SetPath("search", true)
	private.frame:GetBaseElement():GetElement("content.groups.view.content.header2.label")
		:SetText(format(L["%d Results"], private.baseItemInfoQuery:Count()))
		:Draw()
end

function private.SelectAllResultsOnClick(button)
	button:GetElement("__parent.__parent.itemList"):ToggleSelectAll()
end

function private.SearchItemModeOnValueChanged(checkbox, checked)
	private.ungroupedItemStringSmartMap:Invalidate()
	checkbox:GetElement("__parent.label")
		:SetText(format(L["%d Results"], private.baseItemInfoQuery:Count()))
		:Draw()
end

function private.SearchBackButtonOnClick(button)
	button:GetBaseElement():GetElement("content.groups.view"):SetPath("content", true)
end

function private.ItemListOnSelectionChanged(itemList)
	local selection = itemList:GetElement("__parent.bottom.group"):GetSelection()
	local button = itemList:GetElement("__parent.bottom.move")
	local numSelected = itemList:GetNumSelected()
	button:SetDisabled(not selection or numSelected == 0)
		:SetText(numSelected == 0 and L["Move Item"] or format(L["Move %d |4Item:Items"], numSelected))
		:Draw()
end

function private.BaseMoveItemOnClick(button)
	assert(private.moveGroupPath)
	local itemList = button:GetElement("__parent.__parent.itemList")
	local addedItems = TempTable.Acquire()
	itemList:GetSelectedItems(addedItems)
	TSM.Groups.SetItemsGroup(addedItems, private.moveGroupPath)
	Analytics.Action("ADDED_GROUP_ITEMS", private.moveGroupPath, #addedItems)
	TempTable.Release(addedItems)
	itemList:GetElement("__parent.header2.label")
		:SetText(format(L["%d Results"], private.baseItemInfoQuery:Count()))
		:Draw()
end

function private.MoveItemOnClick(button)
	assert(private.moveGroupPath)
	local itemList = button:GetElement("__parent.__parent.itemList")
	local addedItems = TempTable.Acquire()
	itemList:GetSelectedItems(addedItems)
	TSM.Groups.SetItemsGroup(addedItems, private.moveGroupPath)
	Analytics.Action("ADDED_GROUP_ITEMS", private.moveGroupPath, #addedItems)
	TempTable.Release(addedItems)
end

function private.BaseGroupOnSelectionChanged(groupSelector)
	local selection = groupSelector:GetSelection()
	private.moveGroupPath = selection
	local numSelected = groupSelector:GetBaseElement():GetElement("content.groups.view.content.itemList"):GetNumSelected()
	groupSelector:GetBaseElement():GetElement("content.groups.view.content.bottom.move")
		:SetDisabled(not selection or numSelected == 0)
		:SetText(numSelected == 0 and L["Move Item"] or format(L["Move %d |4Item:Items"], numSelected))
		:Draw()
end

function private.GroupOnSelectionChanged(groupSelector)
	local selection = groupSelector:GetSelection()
	private.moveGroupPath = selection
	local numSelected = groupSelector:GetBaseElement():GetElement("content.groups.view.content.buttons.items.itemList"):GetNumSelected()
	groupSelector:GetBaseElement():GetElement("content.groups.view.content.buttons.items.bottom.move")
		:SetDisabled(not selection or numSelected == 0)
		:SetText(numSelected == 0 and L["Move Item"] or format(L["Move %d |4Item:Items"], numSelected))
		:Draw()
end

function private.ItemModeOnSelectionChanged(dropdown)
	private.ungroupedItemStringSmartMap:Invalidate()
end

function private.AddItemsOnClick(button)
	local itemList = button:GetElement("__parent.content.itemList")
	local addedItems = TempTable.Acquire()
	itemList:GetSelectedItems(addedItems)
	TSM.Groups.SetItemsGroup(addedItems, private.currentGroupPath)
	Analytics.Action("ADDED_GROUP_ITEMS", private.currentGroupPath, #addedItems)
	TempTable.Release(addedItems)
end

function private.ItemListSelectAllOnClick(button)
	button:GetElement("__parent.__parent.itemList"):ToggleSelectAll()
end

function private.UngroupedItemsOnSelectionChanged(itemList)
	local button = itemList:GetElement("__parent.__parent.btn")
	local numSelected = itemList:GetNumSelected()
	button:SetDisabled(numSelected == 0)
		:SetText(numSelected == 0 and L["Add"] or format(L["Add %d |4Item:Items"], numSelected))
		:Draw()
end

function private.GroupedItemsOnSelectionChanged(itemList)
	local button = itemList:GetElement("__parent.__parent.btn")
	local numSelected = itemList:GetNumSelected()
	local parentGroup = TSM.Groups.Path.GetParent(private.currentGroupPath)
	parentGroup = parentGroup ~= TSM.CONST.ROOT_GROUP_PATH and parentGroup or nil
	if parentGroup then
		button:SetModifierText(numSelected == 0 and L["Move to Parent Group"] or format(L["Move %d |4Item:Items"], numSelected), "SHIFT")
	end
	button:SetDisabled(numSelected == 0)
		:SetText(numSelected == 0 and L["Remove"] or format(L["Remove %d |4Item:Items"], numSelected))
		:Draw()
end

function private.RebuildModuleOperations(moduleOperationFrame)
	local moduleName = moduleOperationFrame:GetContext()
	local override = TSM.Groups.HasOperationOverride(private.currentGroupPath, moduleName) or private.currentGroupPath == TSM.CONST.ROOT_GROUP_PATH

	-- remove the existing operations container and add more row
	local content = moduleOperationFrame:GetElement("content")
	content:RemoveChild(content:GetElement("container"))
	if content:HasChildById("addMore") then
		content:RemoveChild(content:GetElement("addMore"))
	end

	local numGroupOperations = 0
	for _ in TSM.Groups.OperationIterator(private.currentGroupPath, moduleName) do
		numGroupOperations = numGroupOperations + 1
	end
	moduleOperationFrame:AddChild(UIElements.New("Frame", "container")
		:SetLayout("VERTICAL")
		:SetContext(moduleName)
		:SetHeight(36 * numGroupOperations)
		:AddChildrenWithFunction(private.AddOperationRows)
	)
	moduleOperationFrame:AddChildIf(override and numGroupOperations < TSM.Operations.GetMaxNumber(moduleName), UIElements.New("Frame", "addMore")
		:SetLayout("HORIZONTAL")
		:SetHeight(24)
		:SetMargin(0, 0, 8, 0)
		:AddChild(UIElements.New("Spacer", "spacer"))
		:AddChild(UIElements.New("Button", "button")
			:SetWidth("AUTO")
			:SetMargin(0, 2, 0, 0)
			:SetFont("BODY_BODY2")
			:SetTextColor("INDICATOR")
			:SetText(L["Add More Operations"])
			:SetContext(moduleName)
			:SetScript("OnClick", private.AddOperationButtonOnClick)
		)
	)

	moduleOperationFrame:GetParentElement():Draw()
end

function private.RemoveItemsOnClick(button)
	local itemList = button:GetElement("__parent.content.itemList")
	local parentGroup = TSM.Groups.Path.GetParent(private.currentGroupPath)
	parentGroup = parentGroup ~= TSM.CONST.ROOT_GROUP_PATH and parentGroup or nil
	local targetGroup = IsShiftKeyDown() and parentGroup or nil
	local removedItems = TempTable.Acquire()
	itemList:GetSelectedItems(removedItems)
	TSM.Groups.SetItemsGroup(removedItems, targetGroup)
	Analytics.Action("REMOVED_GROUP_ITEMS", private.currentGroupPath, #removedItems, targetGroup or "")
	TempTable.Release(removedItems)
end

function private.OverrideToggleOnValueChanged(checkbox, value)
	assert(private.currentGroupPath ~= TSM.CONST.ROOT_GROUP_PATH)
	local moduleOperationFrame = checkbox:GetParentElement():GetParentElement()
	local moduleName = moduleOperationFrame:GetContext()
	TSM.Groups.SetOperationOverride(private.currentGroupPath, moduleName, value)
	Analytics.Action("CHANGED_GROUP_OVERRIDE", private.currentGroupPath, moduleName, value)
	private.RebuildModuleOperations(moduleOperationFrame)
end

function private.ConfigOperationOnClick(button)
	local moduleName = button:GetParentElement():GetParentElement():GetParentElement():GetParentElement():GetParentElement():GetContext()
	local operationName = button:GetContext()
	local baseFrame = button:GetBaseElement()
	TSM.MainUI.Operations.ShowOperationSettings(baseFrame, moduleName, operationName)
end

function private.AddOperationButtonOnClick(button)
	local moduleName = button:GetContext()
	private.operationQuery = private.operationQuery or TSM.Operations.CreateQuery()
	private.operationQuery:Reset()
	private.operationQuery
		:Contains("operationName", private.filterText)
		:Equal("moduleName", moduleName)
		:OrderBy("operationName", true)
	button:GetBaseElement():ShowDialogFrame(UIElements.New("Frame", "frame")
		:SetLayout("VERTICAL")
		:SetSize(464, 318)
		:SetPadding(12)
		:AddAnchor("CENTER")
		:SetBackgroundColor("FRAME_BG")
		:SetBorderColor("ACTIVE_BG")
		:SetMouseEnabled(true)
		:AddChild(UIElements.New("Frame", "header")
			:SetLayout("HORIZONTAL")
			:SetHeight(24)
			:SetMargin(0, 0, -4, 10)
			:AddChild(UIElements.New("Spacer", "spacer")
				:SetWidth(24)
			)
			:AddChild(UIElements.New("Text", "title")
				:SetFont("BODY_BODY2_MEDIUM")
				:SetJustifyH("CENTER")
				:SetText(format(L["Add %s Operation"], moduleName))
			)
			:AddChild(UIElements.New("Button", "closeBtn")
				:SetMargin(0, -4, 0, 0)
				:SetBackgroundAndSize("iconPack.24x24/Close/Default")
				:SetScript("OnClick", private.AddOperationCloseBtnOnClick)
			)
		)
		:AddChild(UIElements.New("Frame", "container")
			:SetLayout("VERTICAL")
			:SetPadding(1)
			:SetBackgroundColor("PRIMARY_BG")
			:AddChild(UIElements.New("Frame", "search")
				:SetLayout("HORIZONTAL")
				:SetHeight(24)
				:SetMargin(8, 8, 8, 12)
				:AddChild(UIElements.New("Input", "input")
					:SetContext(moduleName)
					:SetIconTexture("iconPack.18x18/Search")
					:SetClearButtonEnabled(true)
					:AllowItemInsert(true)
					:SetHintText(format(L["Search %s operations"], strlower(moduleName)))
					:SetValue(private.filterText)
					:SetScript("OnValueChanged", private.OperationSearchOnValueChanged)
				)
			)
			:AddChild(UIElements.New("Button", "createOperation")
				:SetHeight(24)
				:SetPadding(8, 0, 0, 0)
				:SetFont("BODY_BODY2_MEDIUM")
				:SetContext(button)
				:SetTextColor("INDICATOR")
				:SetJustifyH("LEFT")
				:SetText(L["Create New Operation"])
				:SetScript("OnEnter", private.AddOperationCreateBtnOnEnter)
				:SetScript("OnLeave", private.AddOperationCreateBtnOnLeave)
				:SetScript("OnClick", private.AddOperationCreateBtnOnClick)
			)
			:AddChild(UIElements.New("QueryScrollingTable", "list")
				:SetContext(moduleName)
				:SetHeaderHidden(true)
				:SetQuery(private.operationQuery)
				:GetScrollingTableInfo()
					:NewColumn("name")
						:SetTitle("")
						:SetFont("BODY_BODY2_MEDIUM")
						:SetJustifyH("LEFT")
						:SetTextInfo("operationName")
						:Commit()
					:Commit()
				:SetScript("OnSelectionChanged", private.AddOperationSelectionChanged)
			)
		)
		:AddChild(UIElements.New("ActionButton", "addBtn")
			:SetHeight(24)
			:SetMargin(0, 0, 8, 0)
			:SetDisabled(true)
			:SetContext(button)
			:SetText(L["Add Operation"])
			:SetScript("OnClick", private.AddOperationBtnOnClick)
		)
	)
end

function private.AddOperationCloseBtnOnClick(button)
	button:GetBaseElement():HideDialog()
end

function private.AddOperationCreateBtnOnEnter(button)
	button:SetTextColor("TEXT")
		:Draw()
end

function private.AddOperationCreateBtnOnLeave(button)
	button:SetTextColor(Theme.GetGroupColorKey(1))
		:Draw()
end

function private.AddOperationCreateBtnOnClick(button)
	local scrollingTable = button:GetElement("__parent.list")
	local moduleName = scrollingTable:GetContext()
	local operationName = L["New Operation"]
	local extra = ""
	local num = 0
	while TSM.Operations.Exists(moduleName, operationName..extra) do
		num = num + 1
		extra = " "..num
	end
	operationName = operationName..extra
	TSM.Operations.Create(moduleName, operationName)
	TSM.Groups.AppendOperation(private.currentGroupPath, moduleName, operationName)
	Analytics.Action("ADDED_GROUP_OPERATION", private.currentGroupPath, moduleName, operationName)
	TSM.MainUI.Operations.ShowOperationSettings(button:GetBaseElement(), moduleName, operationName)
end

function private.OperationSearchOnValueChanged(input)
	local text = strlower(input:GetValue())
	if text == private.filterText then
		return
	end
	private.filterText = text

	private.operationQuery:SetUpdatesPaused(true)
	private.operationQuery:ResetFilters()
		:Contains("operationName", private.filterText)
		:Equal("moduleName", input:GetContext())
	private.operationQuery:SetUpdatesPaused(false)
	input:GetElement("__parent.__parent.list"):UpdateData(true)
end

function private.AddOperationBtnOnClick(button)
	local scrollingTable = button:GetElement("__parent.container.list")
	local moduleName = scrollingTable:GetContext()
	local operationName = scrollingTable:GetSelection():GetField("operationName")
	TSM.Groups.AppendOperation(private.currentGroupPath, scrollingTable:GetContext(), operationName)
	Analytics.Action("ADDED_GROUP_OPERATION", private.currentGroupPath, moduleName, operationName)
	local moduleOperationFrame = button:GetContext():GetElement("__parent.__parent.__parent")
	private.RebuildModuleOperations(moduleOperationFrame)
	moduleOperationFrame:GetBaseElement():HideDialog()
end

function private.AddOperationSelectionChanged(scrollingTable)
	if scrollingTable:GetSelection() then
		scrollingTable:GetElement("__parent.__parent.addBtn")
			:SetDisabled(false)
			:Draw()
	end
end

function private.RemoveOperationOnClick(button)
	local moduleOperationFrame = button:GetElement("__parent.__parent.__parent.__parent.__parent")
	local moduleName = moduleOperationFrame:GetContext()
	local operationIndex = button:GetContext()
	local operationName = nil
	for index, name in TSM.Groups.OperationIterator(private.currentGroupPath, moduleName) do
		if index == operationIndex then
			operationName = name
		end
	end
	assert(operationName)
	TSM.Groups.RemoveOperation(private.currentGroupPath, moduleName, operationIndex)
	Analytics.Action("REMOVED_GROUP_OPERATION", private.currentGroupPath, moduleName, operationName)
	private.RebuildModuleOperations(moduleOperationFrame)
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.CreateUngroupedBagItemQuery()
	return BagTracking.CreateQueryBags()
		:Select("ungroupedItemString", "texture", "coloredItemName")
		:Equal("isBoP", false)
		:VirtualSmartMapField("ungroupedItemString", private.ungroupedItemStringSmartMap, "itemString")
		:Distinct("ungroupedItemString")
		:LeftJoin(TSM.Groups.GetItemDBForJoin(), "ungroupedItemString", "itemString")
		:IsNil("groupPath")
		:VirtualField("name", "string", ItemInfo.GetName, "ungroupedItemString", "?")
		:VirtualField("texture", "number", ItemInfo.GetTexture, "ungroupedItemString", ItemInfo.GetTexture(ItemString.GetUnknown()))
		:VirtualField("coloredItemName", "string", UIUtils.GetDisplayItemName, "ungroupedItemString", Theme.GetColor("FEEDBACK_RED"):ColorText("?"))
		:VirtualSmartMapField("matchesFilter", private.itemFilterSmartMap, "ungroupedItemString")
		:Equal("matchesFilter", true)
		:OrderBy("name", true)
end

function private.CreateParentGroupItemQuery()
	local parentGroupPath = TSM.Groups.Path.GetParent(private.currentGroupPath)
	return TSM.Groups.CreateItemsQuery(parentGroupPath, false)
		:Select("itemString", "texture", "coloredItemName")
		:VirtualField("name", "string", ItemInfo.GetName, "itemString", "?")
		:VirtualField("texture", "number", ItemInfo.GetTexture, "itemString", ItemInfo.GetTexture(ItemString.GetUnknown()))
		:VirtualField("coloredItemName", "string", UIUtils.GetDisplayItemName, "itemString", Theme.GetColor("FEEDBACK_RED"):ColorText("?"))
		:VirtualSmartMapField("matchesFilter", private.itemFilterSmartMap, "itemString")
		:Equal("matchesFilter", true)
		:OrderBy("name", true)
end

function private.CreateGroupedItemQuery()
	return TSM.Groups.CreateItemsQuery(private.currentGroupPath, true)
		:Select("itemString", "texture", "coloredItemName")
		:VirtualField("name", "string", ItemInfo.GetName, "itemString", "?")
		:VirtualField("texture", "number", ItemInfo.GetTexture, "itemString", ItemInfo.GetTexture(ItemString.GetUnknown()))
		:VirtualField("coloredItemName", "string", UIUtils.GetDisplayItemName, "itemString", Theme.GetColor("FEEDBACK_RED"):ColorText("?"))
		:VirtualSmartMapField("matchesFilter", private.itemFilterSmartMap, "itemString")
		:Equal("matchesFilter", true)
		:OrderBy("name", true)
end

function private.ItemFilterLookup(itemString)
	local basePrice = CustomPrice.GetValue(private.settings.groupPriceSource, itemString)
	return private.itemFilter:Matches(itemString, basePrice)
end

function private.UngroupedItemStringLookup(itemString)
	if private.settings.ungroupedItemMode == "level" then
		return ItemString.ToLevel(itemString)
	elseif private.settings.ungroupedItemMode == "base" then
		return ItemString.GetBase(itemString)
	elseif private.settings.ungroupedItemMode == "specific" then
		return itemString
	else
		error("Invalid ungrouped item mode: "..tostring(private.settings.ungroupedItemMode))
	end
end
