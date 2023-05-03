-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

--- Query Scrolling Table UI ScrollingTable Class.
-- A query scrolling table contains a scrollable list of rows with a fixed set of columns. It is a subclass of the
-- @{ScrollingTable} class.
-- @classmod QueryScrollingTable

local TSM = select(2, ...) ---@type TSM
local QueryScrollingTable = TSM.Include("LibTSMClass").DefineClass("QueryScrollingTable", TSM.UI.ScrollingTable)
local TempTable = TSM.Include("Util.TempTable")
local Table = TSM.Include("Util.Table")
local UIElements = TSM.Include("UI.UIElements")
UIElements.Register(QueryScrollingTable)
TSM.UI.QueryScrollingTable = QueryScrollingTable



-- ============================================================================
-- Public Class Methods
-- ============================================================================

function QueryScrollingTable.__init(self)
	self.__super:__init()
	self._query = nil
	self._queryCancellable = nil
	self._sortCol = nil
	self._sortAscending = nil
	self._autoReleaseQuery = false
end

function QueryScrollingTable.Release(self)
	if self._query then
		self._queryCancellable:Cancel()
		self._queryCancellable = nil
		if self._autoReleaseQuery then
			self._query:Release()
		end
		self._query = nil
	end
	self._sortCol = nil
	self._sortAscending = nil
	self._autoReleaseQuery = false
	self.__super:Release()
end

--- Sets the @{DatabaseQuery} source for this table.
-- This query is used to populate the entries in the query scrolling table.
-- @tparam QueryScrollingTable self The query scrolling table object
-- @tparam DatabaseQuery query The query object
-- @tparam[opt=false] bool redraw Whether or not to redraw the scrolling table
-- @treturn QueryScrollingTable The query scrolling table object
function QueryScrollingTable.SetQuery(self, query, redraw)
	if query == self._query and not redraw then
		return self
	end
	if self._query then
		self._queryCancellable:Cancel()
		if self._autoReleaseQuery then
			self._query:Release()
		end
	end
	self._query = query
	self:_UpdateSortFromQuery()
	self._queryCancellable = query:Publisher()
		:CallMethod(self, "_HandleQueryUpdate")
		:Stored()
	return self
end

--- Sets whether or not the @{DatabaseQuery} is automatically released.
-- @tparam QueryScrollingTable self The query scrolling table object
-- @tparam bool autoRelease Whether or not to auto-release the query
-- @treturn QueryScrollingTable The query scrolling table object
function QueryScrollingTable.SetAutoReleaseQuery(self, autoRelease)
	self._autoReleaseQuery = autoRelease
	return self
end

--- Sets the selected record.
-- @tparam QueryScrollingTable self The query scrolling table object
-- @param selection The selected record or nil to clear the selection
-- @tparam[opt=false] bool redraw Whether or not to redraw the scrolling table
-- @treturn QueryScrollingTable The query scrolling table object
function QueryScrollingTable.SetSelection(self, selection, redraw)
	if selection == self._selection then
		return self
	elseif selection and self._selectionValidator and not self:_selectionValidator(self._query:GetResultRowByUUID(selection)) then
		return self
	end
	local index = nil
	if selection then
		index = Table.KeyByValue(self._data, selection)
		assert(index)
	end
	self:_IgnoreLastDataUpdate()
	self._selection = selection
	if selection then
		-- set the scroll so that the selection is visible if necessary
		local rowHeight = self._rowHeight
		local firstVisibleIndex = ceil(self._vScrollValue / rowHeight) + 1
		local lastVisibleIndex = floor((self._vScrollValue + self:_GetDimension("HEIGHT")) / rowHeight)
		if lastVisibleIndex > firstVisibleIndex and (index < firstVisibleIndex or index > lastVisibleIndex) then
			self:_OnScrollValueChanged(min((index - 1) * rowHeight, self:_GetMaxScroll()))
		end
	end
	for _, row in ipairs(self._rows) do
		if not row:IsMouseOver() and row:IsVisible() and row:GetData() ~= selection then
			row:SetHighlightState(nil)
		elseif row:IsMouseOver() and row:IsVisible() then
			row:SetHighlightState(row:GetData() == selection and "selectedHover" or "hover")
		elseif row:IsVisible() and row:GetData() == selection then
			row:SetHighlightState("selected")
		end
	end
	if self._onSelectionChangedHandler then
		self:_onSelectionChangedHandler()
	end
	if redraw then
		self:Draw()
	end
	return self
end

--- Gets the currently selected row.
-- @tparam QueryScrollingTable self The scrolling table object
-- @return The selected row or nil if there's nothing selected
function QueryScrollingTable.GetSelection(self)
	return self._selection and self._query:GetResultRowByUUID(self._selection) or nil
end

--- Registers a script handler.
-- @tparam QueryScrollingTable self The scrolling table object
-- @tparam string script The script to register for (supported scripts: `OnDataUpdated`, `OnSelectionChanged`, `OnRowClick`)
-- @tparam function handler The script handler which will be called with the scrolling table object followed by any
-- arguments to the script
-- @treturn QueryScrollingTable The scrolling table object
function QueryScrollingTable.SetScript(self, script, handler)
	if script == "OnDataUpdated" then
		self._onDataUpdated = handler
	else
		self.__super:SetScript(script, handler)
	end
	return self
end

function QueryScrollingTable.Draw(self)
	self._query:SetUpdatesPaused(true)
	if self._lastDataUpdate == nil then
		self:_IgnoreLastDataUpdate()
	end
	self.__super:Draw()
	self._header:SetSort(self._sortCol, self._sortAscending)
	self._query:SetUpdatesPaused(false)
end



-- ============================================================================
-- Private Class Methods
-- ============================================================================

function QueryScrollingTable._CreateScrollingTableInfo(self)
	return TSM.UI.Util.QueryScrollingTableInfo()
end

function QueryScrollingTable._UpdateSortFromQuery(self)
	if self._tableInfo:_IsSortEnabled() then
		local sortField, sortAscending = self._query:GetLastOrderBy()
		if sortField then
			self._sortCol = self._tableInfo:_GetIdBySortField(sortField)
			self._sortAscending = sortAscending
		else
			self._sortCol = nil
			self._sortAscending = nil
		end
	end
end

function QueryScrollingTable._UpdateData(self)
	-- we need to fix up the data within the rows updated to avoid errors with trying to access old DatabaseQueryResultRows
	local prevRowIndex = TempTable.Acquire()
	local newRowData = TempTable.Acquire()
	for i, row in ipairs(self._rows) do
		if row:IsVisible() then
			prevRowIndex[row:GetData()] = i
		end
	end
	local prevSelection = self._selection
	wipe(self._data)
	self._selection = nil
	for _, uuid in self._query:UUIDIterator() do
		if uuid == prevSelection then
			self._selection = uuid
		end
		if prevRowIndex[uuid] then
			newRowData[prevRowIndex[uuid]] = uuid
		end
		tinsert(self._data, uuid)
	end
	for i, row in ipairs(self._rows) do
		if row:IsVisible() then
			if newRowData[i] then
				row:SetData(newRowData[i])
			else
				row:ClearData()
			end
		end
	end
	TempTable.Release(prevRowIndex)
	TempTable.Release(newRowData)
	if prevSelection and not self._selection then
		-- select the first row since we weren't able to find the previously-selected row
		self:SetSelection(self._data[1])
	end
	if self._onDataUpdated then
		self:_onDataUpdated()
	end
end

function QueryScrollingTable._ToggleSort(self, id)
	local sortField = self._tableInfo:_GetSortFieldById(id)
	if not self._sortCol or not self._query or not sortField then
		-- sorting disabled so ignore
		return
	end

	if id == self._sortCol then
		self._sortAscending = not self._sortAscending
	else
		self._sortCol = id
		self._sortAscending = true
	end

	self._query:UpdateLastOrderBy(sortField, self._sortAscending)
	self:_UpdateData()
	self:Draw()
end

function QueryScrollingTable._HandleRowClick(self, uuid, mouseButton)
	if self._onRowClickHandler then
		self:_onRowClickHandler(self._query:GetResultRowByUUID(uuid), mouseButton)
	end
end

function QueryScrollingTable._HandleQueryUpdate(self, uuid)
	self:_SetLastDataUpdate(uuid)
	if not uuid then
		self:_UpdateData()
	end
	self:Draw()
end
