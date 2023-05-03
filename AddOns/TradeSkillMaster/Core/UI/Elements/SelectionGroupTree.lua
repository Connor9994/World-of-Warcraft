-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

--- SelectionGroupTree UI Element Class.
-- A selection group tree allows for selecting a single group within the tree. It is a subclass of the @{GroupTree} class.
-- @classmod SelectionGroupTree

local TSM = select(2, ...) ---@type TSM
local Table = TSM.Include("Util.Table")
local UIElements = TSM.Include("UI.UIElements")
local SelectionGroupTree = TSM.Include("LibTSMClass").DefineClass("SelectionGroupTree", TSM.UI.GroupTree)
UIElements.Register(SelectionGroupTree)
TSM.UI.SelectionGroupTree = SelectionGroupTree



-- ============================================================================
-- Public Class Methods
-- ============================================================================

function SelectionGroupTree.__init(self)
	self.__super:__init()

	self._selectedGroup = TSM.CONST.ROOT_GROUP_PATH
	self._selectedGroupChangedHandler = nil
end

function SelectionGroupTree.Release(self)
	self._selectedGroupChangedHandler = nil
	self._selectedGroup = TSM.CONST.ROOT_GROUP_PATH
	self.__super:Release()
end

--- Sets the selected group path.
-- @tparam SelectionGroupTree self The selection group tree object
-- @tparam string groupPath The group path string to select
-- @treturn SelectionGroupTree The application group tree object
function SelectionGroupTree.SetSelection(self, groupPath)
	assert(groupPath)
	self._selectedGroup = groupPath
	wipe(self._contextTable.selected)
	self._contextTable.selected[groupPath] = true
	local index = Table.KeyByValue(self._data, groupPath)
	assert(index)
	-- set the scroll so that the selection is visible if necessary
	local rowHeight = self._rowHeight
	local firstVisibleIndex = ceil(self._vScrollValue / rowHeight) + 1
	local lastVisibleIndex = floor((self._vScrollValue + self:_GetDimension("HEIGHT")) / rowHeight)
	if lastVisibleIndex > firstVisibleIndex and (index < firstVisibleIndex or index > lastVisibleIndex) then
		self:_OnScrollValueChanged(min((index - 1) * rowHeight, self:_GetMaxScroll()))
	end
	return self
end

--- Gets the selected group path.
-- @tparam SelectionGroupTree self The selection group tree object
-- @treturn string The currently selected group path string
function SelectionGroupTree.GetSelection(self)
	return self._selectedGroup
end

--- Sets the context table.
-- This table can be used to preserve selection state across lifecycles of the application group tree and even WoW
-- sessions if it's within the settings DB.
-- @see GroupTree.SetContextTable
-- @tparam SelectionGroupTree self The application group tree object
-- @tparam table tbl The context table
-- @tparam table defaultTbl The default table (required fields: `selected`, `collapsed`)
-- @treturn SelectionGroupTree The application group tree object
function SelectionGroupTree.SetContextTable(self, tbl, defaultTbl)
	assert(type(defaultTbl.selected) == "table")
	tbl.selected = tbl.selected or CopyTable(defaultTbl.selected)
	self.__super:SetContextTable(tbl, defaultTbl)
	return self
end

--- Registers a script handler.
-- @tparam SelectionGroupTree self The selection group tree object
-- @tparam string script The script to register for (supported scripts: `OnGroupSelectionChanged`)
-- @tparam function handler The script handler which will be called with the selection group tree object followed by any
-- arguments to the script
-- @treturn SelectionGroupTree The selection group tree object
function SelectionGroupTree.SetScript(self, script, handler)
	if script == "OnGroupSelectionChanged" then
		self._selectedGroupChangedHandler = handler
	else
		error("Unknown SelectionGroupTree script: "..tostring(script))
	end
	return self
end



-- ============================================================================
-- Private Class Methods
-- ============================================================================

function SelectionGroupTree._HandleRowClick(self, data, mouseButton)
	if mouseButton == "RightButton" then
		self.__super:_HandleRowClick(data, mouseButton)
		return
	end
	self._selectedGroup = data
	wipe(self._contextTable.selected)
	self._contextTable.selected[data] = true
	self:Draw()
	if self._selectedGroupChangedHandler then
		self:_selectedGroupChangedHandler(data)
	end
end

function SelectionGroupTree._IsSelected(self, data)
	return data == self._selectedGroup
end
