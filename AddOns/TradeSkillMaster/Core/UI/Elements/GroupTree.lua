-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

--- GroupTree UI Element Class.
-- A group tree is an abstract element which displays TSM groups. It is a subclass of the @{ScrollingTable} class.
-- @classmod GroupTree

local TSM = select(2, ...) ---@type TSM
local L = TSM.Include("Locale").GetTable()
local TempTable = TSM.Include("Util.TempTable")
local String = TSM.Include("Util.String")
local ScriptWrapper = TSM.Include("Util.ScriptWrapper")
local Theme = TSM.Include("Util.Theme")
local TextureAtlas = TSM.Include("Util.TextureAtlas")
local UIElements = TSM.Include("UI.UIElements")
local GroupTree = UIElements.Define("GroupTree", "ScrollingTable", "ABSTRACT")
TSM.UI.GroupTree = GroupTree
local private = {}
local EXPANDER_SPACING = 2



-- ============================================================================
-- Public Class Methods
-- ============================================================================

function GroupTree.__init(self)
	self.__super:__init()
	self:SetRowHeight(24)

	self._allData = {}
	self._contextTable = nil
	self._defaultContextTable = nil
	self._hasChildrenLookup = {}
	self._query = nil
	self._searchStr = ""
	self._moduleOperationFilter = nil
end

function GroupTree.Acquire(self)
	self._headerMode = "NONE"
	self.__super:Acquire()
	self:GetScrollingTableInfo()
		:NewColumn("group")
			:SetFont("BODY_BODY2")
			:SetJustifyH("LEFT")
			:SetTextFunction(private.GetGroupText)
			:SetExpanderStateFunction(private.GetExpanderState)
			:SetFlagStateFunction(private.GetFlagState)
			:SetTooltipFunction(private.GetTooltip)
			:Commit()
		:Commit()
end

function GroupTree.Release(self)
	wipe(self._allData)
	if self._query then
		self._query:Release()
		self._query = nil
	end
	self._searchStr = ""
	self._moduleOperationFilter = nil
	self._contextTable = nil
	self._defaultContextTable = nil
	wipe(self._hasChildrenLookup)
	for _, row in ipairs(self._rows) do
		ScriptWrapper.Clear(row._frame, "OnDoubleClick")
	end
	self.__super:Release()
	self:SetRowHeight(24)
end

--- Returns the group path's name which is currently under the cursor
-- @tparam GroupTree self The group tree object
-- @return string destPath The group path
function GroupTree.GetMouseOverPath(self)
	local destPath = nil
	for _, row in ipairs(self._rows) do
		if row:IsMouseOver() then
			destPath = row:GetData()
			break
		end
	end
	return destPath
end

--- Sets the context table.
-- This table can be used to preserve collapsed state across lifecycles of the group tree and even WoW sessions if it's
-- within the settings DB.
-- @tparam GroupTree self The group tree object
-- @tparam table tbl The context table
-- @tparam table defaultTbl The default table (required fields: `collapsed`)
-- @treturn GroupTree The group tree object
function GroupTree.SetContextTable(self, tbl, defaultTbl)
	assert(type(defaultTbl.collapsed) == "table")
	tbl.collapsed = tbl.collapsed or CopyTable(defaultTbl.collapsed)
	self._contextTable = tbl
	self._defaultContextTable = defaultTbl
	return self
end

--- Sets the context table from a settings object.
-- @tparam GroupTree self The group tree object
-- @tparam Settings settings The settings object
-- @tparam string key The setting key
-- @treturn GroupTree The group tree object
function GroupTree.SetSettingsContext(self, settings, key)
	return self:SetContextTable(settings[key], settings:GetDefaultReadOnly(key))
end

--- Sets the query used to populate the group tree.
-- @tparam GroupTree self The group tree object
-- @tparam DatabaseQuery query The database query object
-- @tparam[opt=nil] string moduleName The name of the module to filter visible groups to only ones with operations
-- @treturn GroupTree The group tree object
function GroupTree.SetQuery(self, query, moduleName)
	assert(query)
	if self._query then
		self._query:Release()
	end
	self._query = query
	self._query:SetUpdateCallback(private.QueryUpdateCallback, self)
	self._moduleOperationFilter = moduleName
	self:UpdateData()
	return self
end

function GroupTree.SetScript(self, script, handler)
	-- GroupTree doesn't support any scripts
	error("Unknown GroupTree script: "..tostring(script))
	return self
end

--- Sets the search string.
-- This search string is used to filter the groups which are displayed in the group tree.
-- @tparam GroupTree self The group tree object
-- @tparam string searchStr The search string which filters the displayed groups
-- @treturn GroupTree The group tree object
function GroupTree.SetSearchString(self, searchStr)
	self._searchStr = String.Escape(searchStr)
	self:UpdateData()
	return self
end

--- Expand every group.
-- @tparam GroupTree self The application group tree object
-- @treturn GroupTree The application group tree object
function GroupTree.ExpandAll(self)
	for _, groupPath in ipairs(self._allData) do
		if groupPath ~= TSM.CONST.ROOT_GROUP_PATH and self._hasChildrenLookup[groupPath] and self._contextTable.collapsed[groupPath] then
			self:_SetCollapsed(groupPath, false)
		end
	end
	self:UpdateData(true)
	return self
end

--- Collapse every group.
-- @tparam GroupTree self The application group tree object
-- @treturn GroupTree The application group tree object
function GroupTree.CollapseAll(self)
	for _, groupPath in ipairs(self._allData) do
		if groupPath ~= TSM.CONST.ROOT_GROUP_PATH and self._hasChildrenLookup[groupPath] and not self._contextTable.collapsed[groupPath] then
			self:_SetCollapsed(groupPath, true)
		end
	end
	self:UpdateData(true)
	return self
end

--- Toggle the expand/collapse all state of the group tree.
-- @tparam GroupTree self The application group tree object
-- @treturn GroupTree The application group tree object
function GroupTree.ToggleExpandAll(self)
	if next(self._contextTable.collapsed) then
		-- at least one group is collapsed, so expand everything
		self:ExpandAll()
	else
		-- nothing is collapsed, so collapse everything
		self:CollapseAll()
	end
	return self
end



-- ============================================================================
-- Private Class Methods
-- ============================================================================

function GroupTree._GetTableRow(self, isHeader)
	local row = self.__super:_GetTableRow(isHeader)
	if not isHeader then
		ScriptWrapper.Set(row._frame, "OnDoubleClick", private.RowOnDoubleClick, row)
	end
	return row
end

function GroupTree._CanResizeCols(self)
	return false
end

function GroupTree._UpdateData(self)
	-- update our groups list
	wipe(self._hasChildrenLookup)
	wipe(self._allData)
	wipe(self._data)
	local groups = TempTable.Acquire()
	if self._moduleOperationFilter then
		local shouldKeep = TempTable.Acquire()
		for _, row in self._query:Iterator() do
			local groupPath = row:GetField("groupPath")
			shouldKeep[groupPath] = row:GetField("has"..self._moduleOperationFilter.."Operation")
			if shouldKeep[groupPath] then
				shouldKeep[TSM.CONST.ROOT_GROUP_PATH] = true
				-- add all parent groups to the keep table as well
				local checkPath = TSM.Groups.Path.GetParent(groupPath)
				while checkPath and checkPath ~= TSM.CONST.ROOT_GROUP_PATH do
					shouldKeep[checkPath] = true
					checkPath = TSM.Groups.Path.GetParent(checkPath)
				end
			end
		end
		for _, row in self._query:Iterator() do
			local groupPath = row:GetField("groupPath")
			if shouldKeep[groupPath] then
				tinsert(groups, groupPath)
			end
		end
		TempTable.Release(shouldKeep)
	else
		for _, row in self._query:Iterator() do
			tinsert(groups, row:GetField("groupPath"))
		end
	end

	-- remove collapsed state for any groups which no longer exist or no longer have children
	local pathExists = TempTable.Acquire()
	for i, groupPath in ipairs(groups) do
		pathExists[groupPath] = true
		local nextGroupPath = groups[i + 1]
		self._hasChildrenLookup[groupPath] = nextGroupPath and TSM.Groups.Path.IsChild(nextGroupPath, groupPath) or nil
	end
	for groupPath in pairs(self._contextTable.collapsed) do
		if groupPath == TSM.CONST.ROOT_GROUP_PATH or not pathExists[groupPath] or not self._hasChildrenLookup[groupPath] then
			self._contextTable.collapsed[groupPath] = nil
		end
	end
	TempTable.Release(pathExists)

	for _, groupPath in ipairs(groups) do
		tinsert(self._allData, groupPath)
		if self._searchStr ~= "" or not self:_IsGroupHidden(groupPath) then
			local groupName = groupPath == TSM.CONST.ROOT_GROUP_PATH and L["Base Group"] or TSM.Groups.Path.GetName(groupPath)
			if strmatch(strlower(groupName), self._searchStr) and (self._searchStr == "" or groupPath ~= TSM.CONST.ROOT_GROUP_PATH) then
				tinsert(self._data, groupPath)
			end
		end
	end
	TempTable.Release(groups)
end

function GroupTree._IsGroupHidden(self, data)
	if data == TSM.CONST.ROOT_GROUP_PATH then
		return false
	elseif self._contextTable.collapsed[TSM.CONST.ROOT_GROUP_PATH] then
		return true
	end
	local parent = TSM.Groups.Path.GetParent(data)
	while parent and parent ~= TSM.CONST.ROOT_GROUP_PATH do
		if self._contextTable.collapsed[parent] then
			return true
		end
		parent = TSM.Groups.Path.GetParent(parent)
	end
	return false
end

function GroupTree._SetCollapsed(self, data, collapsed)
	self._contextTable.collapsed[data] = collapsed or nil
end

function GroupTree._IsSelected(self, data)
	return false
end

function GroupTree._HandleRowClick(self, data, mouseButton)
	if mouseButton == "RightButton" and self._searchStr == "" and data ~= TSM.CONST.ROOT_GROUP_PATH and self._hasChildrenLookup[data] then
		self:_SetCollapsed(data, not self._contextTable.collapsed[data])
		self:UpdateData(true)
	end
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.GetGroupText(self, data)
	local groupName = data == TSM.CONST.ROOT_GROUP_PATH and L["Base Group"] or TSM.Groups.Path.GetName(data)
	if data ~= TSM.CONST.ROOT_GROUP_PATH then
		groupName = Theme.GetGroupColor(select('#', strsplit(TSM.CONST.GROUP_SEP, data))):ColorText(groupName)
	end
	return groupName
end

function private.GetExpanderState(self, data)
	local indentWidth = nil
	local searchIsActive = self._searchStr ~= ""
	if data == TSM.CONST.ROOT_GROUP_PATH then
		indentWidth = -TextureAtlas.GetWidth("iconPack.14x14/Caret/Right") + EXPANDER_SPACING
	else
		local level = select('#', strsplit(TSM.CONST.GROUP_SEP, data))
		indentWidth = (searchIsActive and 0 or (level - 1)) * (TextureAtlas.GetWidth("iconPack.14x14/Caret/Right") + EXPANDER_SPACING)
	end
	return not searchIsActive and data ~= TSM.CONST.ROOT_GROUP_PATH and self._hasChildrenLookup[data], not self._contextTable.collapsed[data], nil, indentWidth, EXPANDER_SPACING, true
end

function private.GetFlagState(self, data, isMouseOver)
	if data == TSM.CONST.ROOT_GROUP_PATH then
		return true, Theme.GetColor("TEXT")
	end
	local level = select('#', strsplit(TSM.CONST.GROUP_SEP, data))
	local levelColor = Theme.GetGroupColor(level)
	local color = (self:_IsSelected(data) or isMouseOver) and levelColor or Theme.GetColor("PRIMARY_BG_ALT")
	return true, color
end

function private.GetTooltip(self, data)
	if self._searchStr == "" then
		return nil
	end
	return TSM.Groups.Path.Format(data), true
end

function private.QueryUpdateCallback(_, _, self)
	self:UpdateData(true)
end



-- ============================================================================
-- Local Script Handlers
-- ============================================================================

function private.RowOnDoubleClick(row, mouseButton)
	if mouseButton ~= "LeftButton" then
		return
	end
	local data = row:GetData()
	local self = row._scrollingTable
	assert(self._searchStr == "" and data ~= TSM.CONST.ROOT_GROUP_PATH and self._hasChildrenLookup[data])
	self:_SetCollapsed(data, not self._contextTable.collapsed[data])
	self:UpdateData(true)
end
