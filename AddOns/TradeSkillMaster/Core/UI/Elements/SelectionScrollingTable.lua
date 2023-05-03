-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

--- SelectionScrollingTable UI Element Class.
-- A selection scrolling table is a scrolling table which allows for selecting and deselecting individual rows. It is a
-- subclass of the @{QueryScrollingTable} class.
-- @classmod SelectionScrollingTable

local TSM = select(2, ...) ---@type TSM
local Table = TSM.Include("Util.Table")
local TempTable = TSM.Include("Util.TempTable")
local UIElements = TSM.Include("UI.UIElements")
local SelectionScrollingTable = TSM.Include("LibTSMClass").DefineClass("SelectionScrollingTable", TSM.UI.QueryScrollingTable)
UIElements.Register(SelectionScrollingTable)
TSM.UI.SelectionScrollingTable = SelectionScrollingTable
local private = {
	querySelectionScrollingTableLookup = {},
	sortValuesTemp = {},
	tempContextTable = {},
}
local TEMP_CONTEXT_TABLE_DEFAULT = {
	colWidth = {
		selected = 16,
	},
	colHidden = {},
}



-- ============================================================================
-- Public Class Methods
-- ============================================================================

function SelectionScrollingTable.__init(self)
	self.__super:__init()

	self._selectedData = {}
	self._selectionEnabledFunc = nil
	self._rightClickToggle = true
end

function SelectionScrollingTable.Acquire(self)
	self.__super:Acquire()
	-- temporarily set a context table so we can create the table columns (should be overridden later)
	wipe(private.tempContextTable)
	self.__super:SetContextTable(private.tempContextTable, TEMP_CONTEXT_TABLE_DEFAULT)
	self:GetScrollingTableInfo()
		:NewColumn("selected", true)
			:SetTitleIcon("iconPack.14x14/Checkmark/Default")
			:SetWidth(14)
			:SetIconSize(14)
			:SetFont("ITEM_BODY3")
			:SetJustifyH("CENTER")
			:SetIconInfo(nil, private.GetSelectedIcon)
			:DisableHiding()
			:Commit()
		:Commit()
end

function SelectionScrollingTable.Release(self)
	private.querySelectionScrollingTableLookup[self._query] = nil
	wipe(self._selectedData)
	self._selectionEnabledFunc = nil
	self.__super:Release()
end

--- Sets the @{DatabaseQuery} source for this table.
-- This query is used to populate the entries in the selection scrolling table.
-- @tparam SelectionScrollingTable self The selection scrolling table object
-- @tparam DatabaseQuery query The query object
-- @tparam[opt=false] bool redraw Whether or not to redraw the selection scrolling table
-- @treturn SelectionScrollingTable The selection scrolling table object
function SelectionScrollingTable.SetQuery(self, query, redraw)
	if self._query then
		private.querySelectionScrollingTableLookup[self._query] = nil
	end
	private.querySelectionScrollingTableLookup[query] = self
	self.__super:SetQuery(query, redraw)
	return self
end

--- Selects all items.
-- @tparam SelectionScrollingTable self The selection scrolling table object
function SelectionScrollingTable.SelectAll(self)
	for _, uuid in ipairs(self._data) do
		self._selectedData[uuid] = true
	end
	self:_UpdateData()
	self:Draw()
	if self._onSelectionChangedHandler then
		self._onSelectionChangedHandler(self)
	end
end

--- Clear the selection.
-- @tparam SelectionScrollingTable self The selection scrolling table object
function SelectionScrollingTable.ClearSelection(self)
	wipe(self._selectedData)
	self:_UpdateData()
	self:Draw()
	if self._onSelectionChangedHandler then
		self._onSelectionChangedHandler(self)
	end
end

--- Sets a selection enabled function.
-- @tparam SelectionScrollingTable self The selection scrolling table object
-- @tparam function func A funciton which gets called with data to determine if it's selectable or not
-- @treturn SelectionScrollingTable The selection scrolling table object
function SelectionScrollingTable.SetIsSelectionEnabledFunc(self, func)
	self._selectionEnabledFunc = func
	return self
end

--- Toggles the selection of a record.
-- @tparam SelectionScrollingTable self The selection scrolling table object
-- @tparam ?table data The record to toggle the selection of
-- @treturn SelectionScrollingTable The selection scrolling table object
function SelectionScrollingTable.SetSelection(self, data)
	if data and self._selectionValidator and not self:_selectionValidator(self._query:GetResultRowByUUID(data)) then
		assert(not self._selectedData[data])
		return self
	end
	self._selectedData[data] = not self._selectedData[data] or nil
	for _, row in ipairs(self._rows) do
		if row:GetData() == data then
			self:_SetRowData(row, data)
			break
		end
	end
	if self._sortCol == "selected" then
		self:_UpdateData()
		self:Draw()
	end
	if self._onSelectionChangedHandler then
		self._onSelectionChangedHandler(self)
	end
	return self
end

--- Gets whether or not all of the items are currently selected.
-- @tparam SelectionScrollingTable self The selection scrolling table object
-- @treturn boolean Whether or not all of the selection is selected
function SelectionScrollingTable.IsAllSelected(self)
	for _, uuid in ipairs(self._data) do
		if not self._selectedData[uuid] then
			return false
		end
	end
	return true
end

--- Gets whether or not the selection is currently cleared.
-- @tparam SelectionScrollingTable self The selection scrolling table object
-- @treturn boolean Whether or not the selection is cleared
function SelectionScrollingTable.IsSelectionCleared(self)
	return not next(self._selectedData)
end

--- Gets the current selection table.
-- @tparam SelectionScrollingTable self The selection scrolling table object
-- @treturn table A table where the key is the data and the value is whether or not it's selected (only selected entries
-- are in the table)
function SelectionScrollingTable.SelectionIterator(self)
	return private.SelectionIteratorHelper, self
end

--- Sets the context table.
-- This table can be used to preserve the table configuration across lifecycles of the scrolling table and even WoW
-- sessions if it's within the settings DB.
-- @tparam SelectionScrollingTable self The selection scrolling table object
-- @tparam table tbl The context table
-- @tparam table defaultTbl The default table (required fields: `colWidth`)
-- @treturn SelectionScrollingTable The selection scrolling table object
function SelectionScrollingTable.SetContextTable(self, tbl, defaultTbl)
	assert(defaultTbl.colWidth.selected)
	self.__super:SetContextTable(tbl, defaultTbl)
	return self
end



-- ============================================================================
-- Private Class Methods
-- ============================================================================

function SelectionScrollingTable._IsSelected(self, data)
	return self._selectedData[data] == 1
end

function SelectionScrollingTable._UpdateData(self)
	self.__super:_UpdateData()
	-- clear any old selection context
	local hasData = TempTable.Acquire()
	for _, data in ipairs(self._data) do
		hasData[data] = true
	end
	for data in pairs(self._selectedData) do
		if not hasData[data] then
			self._selectedData[data] = nil
		end
	end
	TempTable.Release(hasData)
	if self._sortCol == "selected" then
		local selectedValue = self._sortAscending and -1 or 1
		for _, uuid in ipairs(self._data) do
			private.sortValuesTemp[uuid] = self._selectedData[uuid] and selectedValue or 0
		end
		Table.SortWithValueLookup(self._data, private.sortValuesTemp)
		wipe(private.sortValuesTemp)
	end
end

function SelectionScrollingTable._ToggleSort(self, id)
	if id ~= "selected" then
		return self.__super:_ToggleSort(id)
	end

	if id == self._sortCol then
		self._sortAscending = not self._sortAscending
	else
		self._sortCol = id
		self._sortAscending = true
	end

	self:_UpdateData()
	self:Draw()
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.SelectionIteratorHelper(self, uuid)
	uuid = next(self._selectedData, uuid)
	if not uuid then
		return
	end
	return uuid, self._query:GetResultRowByUUID(uuid)
end

function private.GetSelectedIcon(row)
	local self = private.querySelectionScrollingTableLookup[row:GetQuery()]
	return self._selectedData[row:GetUUID()] and "iconPack.14x14/Checkmark/Default" or 0
end
