-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

--- ApplicationGroupTree UI Element Class.
-- An application group tree displays the group tree in a way which allows the user to select any number of them. This
-- element is used wherever the user needs to select groups to perform some action on. It is a subclass of the
-- @{GroupTree} class.
-- @classmod ApplicationGroupTree

local TSM = select(2, ...) ---@type TSM
local TempTable = TSM.Include("Util.TempTable")
local UIElements = TSM.Include("UI.UIElements")
local ApplicationGroupTree = TSM.Include("LibTSMClass").DefineClass("ApplicationGroupTree", TSM.UI.GroupTree)
UIElements.Register(ApplicationGroupTree)
TSM.UI.ApplicationGroupTree = ApplicationGroupTree



-- ============================================================================
-- Public Class Methods
-- ============================================================================

function ApplicationGroupTree.__init(self)
	self.__super:__init()
	self._selectedGroupsChangedHandler = nil
end

function ApplicationGroupTree.Release(self)
	self._selectedGroupsChangedHandler = nil
	self.__super:Release()
end

--- Registers a script handler.
-- @tparam ApplicationGroupTree self The application group tree object
-- @tparam string script The script to register for (supported scripts: `OnGroupSelectionChanged`)
-- @tparam function handler The script handler which will be called with the application group tree object followed by
-- any arguments to the script
-- @treturn ApplicationGroupTree The application group tree object
function ApplicationGroupTree.SetScript(self, script, handler)
	if script == "OnGroupSelectionChanged" then
		self._selectedGroupsChangedHandler = handler
	else
		error("Unknown ApplicationGroupTree script: "..tostring(script))
	end
	return self
end

--- Iterates through the selected groups.
-- @tparam ApplicationGroupTree self The application group tree object
-- @return Iterator with the following fields: `index, groupPath`
function ApplicationGroupTree.SelectedGroupsIterator(self)
	local groups = TempTable.Acquire()
	for _, groupPath in ipairs(self._allData) do
		if self:_IsSelected(groupPath) then
			tinsert(groups, groupPath)
		end
	end
	return TempTable.Iterator(groups)
end

--- Sets the context table.
-- This table can be used to preserve selection state across lifecycles of the application group tree and even WoW
-- sessions if it's within the settings DB.
-- @see GroupTree.SetContextTable
-- @tparam ApplicationGroupTree self The application group tree object
-- @tparam table tbl The context table
-- @tparam table defaultTbl The default table (required fields: `unselected` OR `selected`, `collapsed`)
-- @treturn ApplicationGroupTree The application group tree object
function ApplicationGroupTree.SetContextTable(self, tbl, defaultTbl)
	if defaultTbl.unselected then
		assert(type(defaultTbl.unselected) == "table" and not defaultTbl.selected)
		tbl.unselected = tbl.unselected or CopyTable(defaultTbl.unselected)
		tbl.selected = nil
	else
		assert(type(defaultTbl.selected) == "table" and not defaultTbl.unselected)
		tbl.selected = tbl.selected or CopyTable(defaultTbl.selected)
		tbl.unselected = nil
	end
	self.__super:SetContextTable(tbl, defaultTbl)
	return self
end

--- Gets whether or not a group is currently selected.
-- @tparam ApplicationGroupTree self The application group tree object
-- @tparam string groupPath The group to check
-- @treturn boolean Whether or not the group is selected
function ApplicationGroupTree.IsGroupSelected(self, groupPath)
	return self:_IsSelected(groupPath)
end

--- Gets whether or not a group is currently selected.
-- @tparam ApplicationGroupTree self The application group tree object
-- @tparam string groupPath The group to set the selected state of
-- @tparam boolean selected Whether or not the group should be selected
-- @treturn ApplicationGroupTree The application group tree object
function ApplicationGroupTree.SetGroupSelected(self, groupPath, selected)
	self:_SetSelected(groupPath, selected)
	return self
end

--- Gets whether or not the selection is cleared.
-- @tparam ApplicationGroupTree self The application group tree object
-- @tparam[opt=false] boolean updateData Whether or not to update the data first
-- @treturn boolean Whether or not the selection is cleared
function ApplicationGroupTree.IsSelectionCleared(self, updateData)
	if updateData then
		self:_UpdateData()
	end
	for _, groupPath in ipairs(self._searchStr == "" and self._allData or self._data) do
		if self:_IsSelected(groupPath) then
			return false
		end
	end
	return true
end

--- Toggle the selection state of the application group tree.
-- @tparam ApplicationGroupTree self The application group tree object
-- @treturn ApplicationGroupTree The application group tree object
function ApplicationGroupTree.ToggleSelectAll(self)
	local isCleared = self:IsSelectionCleared()
	for _, groupPath in ipairs(self._searchStr == "" and self._allData or self._data) do
		self:_SetSelected(groupPath, isCleared)
	end
	self:Draw()
	if self._selectedGroupsChangedHandler then
		self:_selectedGroupsChangedHandler()
	end
	return self
end



-- ============================================================================
-- Private Class Methods
-- ============================================================================

function ApplicationGroupTree._UpdateData(self)
	self.__super:_UpdateData()
	-- remove data which is no longer present from _contextTable
	local selectedGroups = TempTable.Acquire()
	for _, groupPath in ipairs(self._allData) do
		if self:_IsSelected(groupPath) then
			selectedGroups[groupPath] = true
		end
	end
	wipe(self._contextTable.selected or self._contextTable.unselected)
	for _, groupPath in ipairs(self._allData) do
		self:_SetSelected(groupPath, selectedGroups[groupPath])
	end
	TempTable.Release(selectedGroups)
end

function ApplicationGroupTree._IsSelected(self, data)
	if self._contextTable.unselected then
		return not self._contextTable.unselected[data]
	else
		return self._contextTable.selected[data]
	end
end

function ApplicationGroupTree._SetSelected(self, data, selected)
	if self._contextTable.unselected then
		self._contextTable.unselected[data] = not selected or nil
	else
		self._contextTable.selected[data] = selected or nil
	end
end

function ApplicationGroupTree._HandleRowClick(self, data, mouseButton)
	if mouseButton == "RightButton" then
		self.__super:_HandleRowClick(data, mouseButton)
		return
	end
	self:_SetSelected(data, not self:_IsSelected(data))
	-- also set the selection for all child groups to the same as this group
	for _, groupPath in ipairs(self._allData) do
		if TSM.Groups.Path.IsChild(groupPath, data) and data ~= TSM.CONST.ROOT_GROUP_PATH then
			self:_SetSelected(groupPath, self:_IsSelected(data))
		end
	end
	self:Draw()
	if self._selectedGroupsChangedHandler then
		self:_selectedGroupsChangedHandler()
	end
end
