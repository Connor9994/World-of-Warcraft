-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

--- Group Selector UI Element Class.
-- A group selector is an element which can be used to prompt the user to select a list of groups, usually for
-- filtering. It is a subclass of the @{Element} class.
-- @classmod GroupSelector

local TSM = select(2, ...) ---@type TSM
local L = TSM.Include("Locale").GetTable()
local Table = TSM.Include("Util.Table")
local Analytics = TSM.Include("Util.Analytics")
local Theme = TSM.Include("Util.Theme")
local TextureAtlas = TSM.Include("Util.TextureAtlas")
local Rectangle = TSM.Include("UI.Rectangle")
local ScriptWrapper = TSM.Include("Util.ScriptWrapper")
local UIElements = TSM.Include("UI.UIElements")
local GroupSelector = UIElements.Define("GroupSelector", "Element")
local private = {}
local TEXT_MARGIN = 8
local ICON_MARGIN = 4
local CORNER_RADIUS = 4
local DEFAULT_CONTEXT = { selected = {}, collapsed = {} }



-- ============================================================================
-- Public Class Methods
-- ============================================================================

function GroupSelector.__init(self)
	local frame = UIElements.CreateFrame(self, "Button")
	ScriptWrapper.Set(frame, "OnClick", private.OnClick, self)
	self.__super:__init(frame)

	frame.text = UIElements.CreateFontString(self, frame)
	frame.text:SetFont(Theme.GetFont("BODY_BODY2"):GetWowFont())
	frame.text:SetPoint("TOPLEFT", TEXT_MARGIN, 0)
	frame.text:SetPoint("BOTTOMRIGHT", -ICON_MARGIN - TextureAtlas.GetWidth("iconPack.18x18/Add/Default") - TEXT_MARGIN, 0)
	frame.text:SetJustifyH("LEFT")
	frame.text:SetJustifyV("MIDDLE")

	frame.icon = frame:CreateTexture(nil, "ARTWORK")
	frame.icon:SetPoint("RIGHT", -ICON_MARGIN, 0)

	frame.iconBtn = CreateFrame("Button", nil, frame)
	frame.iconBtn:SetAllPoints(frame.icon)
	ScriptWrapper.Set(frame.iconBtn, "OnClick", private.OnIconClick, self)

	self._backgroundTexture = Rectangle.New(frame)
	self._backgroundTexture:SetCornerRadius(CORNER_RADIUS)

	self._groupTreeContext = CopyTable(DEFAULT_CONTEXT)
	self._hintText = ""
	self._selectedText = L["%d groups"]
	self._singleSelection = nil
	self._onSelectionChanged = nil
	self._customQueryFunc = nil
	self._showCreateNew = false
end

function GroupSelector.Release(self)
	wipe(self._groupTreeContext.collapsed)
	wipe(self._groupTreeContext.selected)
	self._hintText = ""
	self._selectedText = L["%d groups"]
	self._singleSelection = nil
	self._onSelectionChanged = nil
	self._customQueryFunc = nil
	self._showCreateNew = false
	self.__super:Release()
end

---Sets the hint text.
---@param self GroupSelector The group selector object
---@param text string The hint text
---@return self GroupSelector @The group selector object
function GroupSelector.SetHintText(self, text)
	assert(type(text) == "string")
	self._hintText = text
	return self
end

---Sets the selected text.
---@param self GroupSelector The group selector object
---@param text string The selected text (with a %d formatter for the number of groups)
---@return self GroupSelector @The group selector object
function GroupSelector.SetSelectedText(self, text)
	assert(type(text) == "string" and strmatch(text, "%%d"))
	self._selectedText = text
	return self
end

---Registers a script handler.
---@param self GroupSelector The group selector object
---@param script string The script to register for (supported scripts: `OnSelectionChanged`)
---@param handler function The script handler which will be called with the group selector object followed by any arguments to the script
---@return self GroupSelector @The group selector object
function GroupSelector.SetScript(self, script, handler)
	if script == "OnSelectionChanged" then
		self._onSelectionChanged = handler
	else
		error("Unknown GroupSelector script: "..tostring(script))
	end
	return self
end

---Sets a function to generate a custom query to use for the group tree.
---@param self GroupSelector The group selector object
---@param func function A function to call to create the custom query (gets auto-released by the GroupTree)
---@return self GroupSelector The group selector object
function GroupSelector.SetCustomQueryFunc(self, func)
	self._customQueryFunc = func
	return self
end

---Adds the "Create New Group" option to the group tree.
---@param self GroupSelector The group selector object
---@return self GroupSelector The group selector object
function GroupSelector.AddCreateNew(self)
	self._showCreateNew = true
	return self
end

---Sets the selection to only handle single selection.
---@param self GroupSelector The group selector object
---@param enabled boolean The state of the single selection
---@return self GroupSelector The group selector object
function GroupSelector.SetSingleSelection(self, enabled)
	self._singleSelection = enabled
	return self
end

---Returns the single selected group path.
---@param self GroupSelector @The group selector object
function GroupSelector.GetSelection(self)
	assert(self._singleSelection)
	return next(self._groupTreeContext.selected)
end

---Sets the single selected group path.
---@param self GroupSelector The group selector object
---@param selection string|table The selected group(s) or nil if nothing should be selected
---@return self GroupSelector @The group selector object
function GroupSelector.SetSelection(self, selection)
	wipe(self._groupTreeContext.selected)
	if not selection then
		return self
	end
	if self._singleSelection then
		self._groupTreeContext.selected[selection] = true
	else
		for groupPath in pairs(selection) do
			self._groupTreeContext.selected[groupPath] = true
		end
	end
	return self
end

---Returns an iterator for all selected groups.
---@param self GroupSelector The group selector object
---@return iter Iterator @An iterator which iterates over the selected groups and has the following values: `groupPath`
function GroupSelector.SelectedGroupIterator(self)
	return pairs(self._groupTreeContext.selected)
end

---Clears all selected groups.
---@param self GroupSelector The group selector object
---@param silent boolean Don't call the selection changed callback
---@return self GroupSelector @The group selector object
function GroupSelector.ClearSelectedGroups(self, silent)
	wipe(self._groupTreeContext.selected)
	if not silent and self._onSelectionChanged then
		self:_onSelectionChanged()
	end
	return self
end

function GroupSelector.Draw(self)
	self.__super:Draw()
	local frame = self:_GetBaseFrame()

	local numGroups = Table.Count(self._groupTreeContext.selected)
	frame.text:SetText(numGroups == 0 and self._hintText or (self._singleSelection and TSM.Groups.Path.Format(next(self._groupTreeContext.selected)) or format(self._selectedText, numGroups)))

	TextureAtlas.SetTextureAndSize(frame.icon, numGroups == 0 and "iconPack.18x18/Add/Default" or "iconPack.18x18/Close/Default")

	self._backgroundTexture:SetColor(Theme.GetColor("ACTIVE_BG"))
end



-- ============================================================================
-- Private Class Methods
-- ============================================================================

function GroupSelector._CreateQuery(self)
	local query = nil
	if self._customQueryFunc then
		query = self._customQueryFunc()
	else
		query = TSM.Groups.CreateQuery()
	end
	if self._singleSelection then
		query:NotEqual("groupPath", TSM.CONST.ROOT_GROUP_PATH)
	end
	return query
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.OnClick(self)
	self:GetBaseElement():ShowDialogFrame(UIElements.New("Frame", "frame", "DIALOG")
		:SetLayout("VERTICAL")
		:SetSize(464, 500)
		:SetPadding(8)
		:AddAnchor("CENTER")
		:SetBackgroundColor("FRAME_BG", true)
		:SetMouseEnabled(true)
		:AddChild(UIElements.New("Frame", "header")
			:SetLayout("HORIZONTAL")
			:SetHeight(24)
			:SetMargin(0, 0, 0, 8)
			:AddChild(UIElements.New("Text", "title")
				:SetMargin(32, 8, 0, 0)
				:SetFont("BODY_BODY1_BOLD")
				:SetJustifyH("CENTER")
				:SetText(L["Select Group"])
			)
			:AddChild(UIElements.New("Button", "closeBtn")
				:SetBackgroundAndSize("iconPack.24x24/Close/Default")
				:SetScript("OnClick", private.DialogCloseBtnOnClick)
			)
		)
		:AddChild(UIElements.New("Frame", "container")
			:SetLayout("VERTICAL")
			:SetPadding(2)
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
					:SetScript("OnValueChanged", private.DialogFilterOnValueChanged)
				)
				:AddChild(UIElements.New("Button", "expandAllBtn")
					:SetSize(24, 24)
					:SetMargin(8, 0, 0, 0)
					:SetBackground("iconPack.18x18/Expand All")
					:SetScript("OnClick", private.ExpandAllGroupsOnClick)
					:SetTooltip(L["Expand / Collapse All Groups"])
				)
				:AddChildIf(not self._singleSelection, UIElements.New("Button", "selectAllBtn")
					:SetSize(24, 24)
					:SetMargin(8, 0, 0, 0)
					:SetBackground("iconPack.18x18/Select All")
					:SetScript("OnClick", private.SelectAllGroupsOnClick)
					:SetTooltip(L["Select / Deselect All Groups"])
				)
			)
			:AddChildIf(self._showCreateNew, UIElements.New("Button", "createGroup")
				:SetHeight(24)
				:SetMargin(8, 8, 0, 0)
				:SetFont("BODY_BODY2_MEDIUM")
				:SetJustifyH("LEFT")
				:SetIcon("iconPack.14x14/Add/Circle", "LEFT")
				:SetText(L["Create New Group"])
				:SetScript("OnClick", private.CreateGroupOnClick)
			)
			:AddChild(UIElements.New(self._singleSelection and "SelectionGroupTree" or "ApplicationGroupTree", "groupTree")
				:SetContext(self)
				:SetContextTable(self._groupTreeContext, DEFAULT_CONTEXT)
				:SetQuery(self:_CreateQuery())
			)
		)
		:AddChild(UIElements.New("ActionButton", "groupBtn")
			:SetHeight(24)
			:SetMargin(0, 0, 8, 0)
			:SetContext(self)
			:SetText(L["Select Group"])
			:SetScript("OnClick", private.DialogSelectOnClick)
		)
	)
end

function private.OnIconClick(self)
	if Table.Count(self._groupTreeContext.selected) > 0 then
		self:ClearSelectedGroups()
		self:Draw()
		if self._onSelectionChanged then
			self:_onSelectionChanged()
		end
	else
		private.OnClick(self)
	end
end

function private.DialogCloseBtnOnClick(button)
	button:GetBaseElement():HideDialog()
end

function private.DialogFilterOnValueChanged(input)
	input:GetElement("__parent.__parent.groupTree")
		:SetSearchString(strlower(input:GetValue()))
		:Draw()
end

function private.ExpandAllGroupsOnClick(button)
	button:GetElement("__parent.__parent.groupTree")
		:ToggleExpandAll()
end

function private.SelectAllGroupsOnClick(button)
	button:GetElement("__parent.__parent.groupTree")
		:ToggleSelectAll()
end

function private.DialogSelectOnClick(button)
	local self = button:GetContext()
	button:GetBaseElement():HideDialog()
	self:Draw()
	if self._onSelectionChanged then
		self:_onSelectionChanged()
	end
end

function private.CreateGroupOnClick(button)
	local newGroupPath = L["New Group"]
	if TSM.Groups.Exists(newGroupPath) then
		local num = 1
		while TSM.Groups.Exists(newGroupPath.." "..num) do
			num = num + 1
		end
		newGroupPath = newGroupPath.." "..num
	end
	TSM.Groups.Create(newGroupPath)
	Analytics.Action("CREATED_GROUP", newGroupPath)
	button:GetElement("__parent.groupTree")
		:UpdateData()
		:SetSelection(newGroupPath)
		:Draw()
end
