-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

--- Scrolling Table UI Element Class.
-- A scrolling table contains a scrollable list of rows with a fixed set of columns. It is a subclass of the @{Element}
-- class.
-- @classmod ScrollingTable

local TSM = select(2, ...) ---@type TSM
local ObjectPool = TSM.Include("Util.ObjectPool")
local Table = TSM.Include("Util.Table")
local Math = TSM.Include("Util.Math")
local ScriptWrapper = TSM.Include("Util.ScriptWrapper")
local Color = TSM.Include("Util.Color")
local Theme = TSM.Include("Util.Theme")
local ScrollingTable = TSM.Include("LibTSMClass").DefineClass("ScrollingTable", TSM.UI.Element, "ABSTRACT")
local UIElements = TSM.Include("UI.UIElements")
UIElements.Register(ScrollingTable)
TSM.UI.ScrollingTable = ScrollingTable
local private = {
	rowPool = ObjectPool.New("TABLE_ROWS", TSM.UI.Util.TableRow, 1),
}
local HEADER_HEIGHT = 22
local HEADER_LINE_HEIGHT = 2
local MORE_COL_WIDTH = 8
local FORCE_DATA_UPDATE = newproxy()
local IGNORE_DATA_UPDATE = newproxy()
local SCROLL_TO_DATA_TOTAL_TIME_S = 0.1



-- ============================================================================
-- Meta Class Methods
-- ============================================================================

function ScrollingTable.__init(self)
	local frame = UIElements.CreateFrame(self, "Frame", nil, nil, BackdropTemplateMixin and "BackdropTemplate" or nil)
	self.__super:__init(frame)

	frame:SetBackdrop({ bgFile = "Interface\\Buttons\\WHITE8X8" })

	self._lineTop = frame:CreateTexture(nil, "ARTWORK")
	self._lineTop:SetPoint("TOPLEFT")
	self._lineTop:SetPoint("TOPRIGHT")
	self._lineTop:SetHeight(HEADER_LINE_HEIGHT)
	self._lineTop:SetColorTexture(Theme.GetColor("ACTIVE_BG"):GetFractionalRGBA())

	self._lineBottom = frame:CreateTexture(nil, "ARTWORK")
	self._lineBottom:SetPoint("TOPLEFT", 0, -HEADER_HEIGHT - HEADER_LINE_HEIGHT)
	self._lineBottom:SetPoint("TOPRIGHT", 0, -HEADER_HEIGHT - HEADER_LINE_HEIGHT)
	self._lineBottom:SetHeight(HEADER_LINE_HEIGHT)
	self._lineBottom:SetColorTexture(Theme.GetColor("ACTIVE_BG"):GetFractionalRGBA())

	self._hScrollFrame = CreateFrame("ScrollFrame", nil, frame)
	self._hScrollFrame:SetPoint("TOPLEFT")
	self._hScrollFrame:SetPoint("BOTTOMRIGHT")
	self._hScrollFrame:EnableMouseWheel(true)
	self._hScrollFrame:SetClipsChildren(true)
	ScriptWrapper.Set(self._hScrollFrame, "OnUpdate", private.HScrollFrameOnUpdate, self)
	ScriptWrapper.Set(self._hScrollFrame, "OnMouseWheel", private.FrameOnMouseWheel, self)

	self._hContent = CreateFrame("Frame", nil, self._hScrollFrame)
	self._hContent:SetPoint("TOPLEFT")
	self._hScrollFrame:SetScrollChild(self._hContent)

	self._vScrollFrame = CreateFrame("ScrollFrame", nil, self._hContent)
	self._vScrollFrame:SetPoint("TOPLEFT")
	self._vScrollFrame:SetPoint("BOTTOMRIGHT")
	self._vScrollFrame:EnableMouseWheel(true)
	self._vScrollFrame:SetClipsChildren(true)
	ScriptWrapper.Set(self._vScrollFrame, "OnUpdate", private.VScrollFrameOnUpdate, self)
	ScriptWrapper.Set(self._vScrollFrame, "OnMouseWheel", private.FrameOnMouseWheel, self)

	self._content = CreateFrame("Frame", nil, self._vScrollFrame)
	self._content:SetPoint("TOPLEFT")
	self._vScrollFrame:SetScrollChild(self._content)

	self._hScrollbar = TSM.UI.Scrollbar.Create(frame, true)
	self._vScrollbar = TSM.UI.Scrollbar.Create(frame)

	self._rowHeight = 20
	self._backgroundColor = "PRIMARY_BG"
	self._rows = {}
	self._data = {}
	self._hScrollValue = 0
	self._vScrollValue = 0
	self._onSelectionChangedHandler = nil
	self._onRowClickHandler = nil
	self._selection = nil
	self._selectionDisabled = nil
	self._selectionValidator = nil
	self._tableInfo = self:_CreateScrollingTableInfo()
	self._header = nil
	self._dataTranslationFunc = nil
	self._contextTable = nil
	self._defaultContextTable = nil
	self._prevDataOffset = nil
	self._lastDataUpdate = nil
	self._rowHoverEnabled = true
	self._headerMode = "FULL"
	self._targetScrollValue = nil
	self._totalScrollDistance = nil
	self._rightClickToggle = nil

	Theme.RegisterChangeCallback(function()
		if self:IsVisible() and self._header then
			self._header:_LayoutHeaderRow()
		end
	end)
end

function ScrollingTable.Acquire(self)
	self.__super:Acquire()
	self._tableInfo:_Acquire(self)
	self._hScrollFrame:SetHorizontalScroll(0)
	self._hScrollValue = 0
	self._vScrollValue = 0

	ScriptWrapper.Set(self._vScrollbar, "OnValueChanged", private.OnVScrollbarValueChangedNoDraw, self)
	-- don't want to cause this element to be drawn for this initial scrollbar change
	self._vScrollbar:SetValue(0)
	ScriptWrapper.Set(self._vScrollbar, "OnValueChanged", private.OnVScrollbarValueChanged, self)

	ScriptWrapper.Set(self._hScrollbar, "OnValueChanged", private.OnHScrollbarValueChangedNoDraw, self)
	-- don't want to cause this element to be drawn for this initial scrollbar change
	self._hScrollbar:SetValue(0)
	ScriptWrapper.Set(self._hScrollbar, "OnValueChanged", private.OnHScrollbarValueChanged, self)
end

function ScrollingTable.Release(self)
	self._rowHeight = 20
	self._backgroundColor = "PRIMARY_BG"
	self._onSelectionChangedHandler = nil
	self._onRowClickHandler = nil
	self._selection = nil
	self._selectionDisabled = nil
	self._selectionValidator = nil
	self._dataTranslationFunc = nil
	self._contextTable = nil
	self._defaultContextTable = nil
	self._prevDataOffset = nil
	self._lastDataUpdate = nil
	if self._header then
		self._header:Release()
		private.rowPool:Recycle(self._header)
		self._header = nil
	end
	for _, row in ipairs(self._rows) do
		row:Release()
		private.rowPool:Recycle(row)
	end
	wipe(self._rows)
	self._tableInfo:_Release()
	wipe(self._data)
	self._headerMode = "FULL"
	self._targetScrollValue = nil
	self._totalScrollDistance = nil
	self.__super:Release()
end



-- ============================================================================
-- Public Class Methods
-- ============================================================================

--- Sets the background of the scrolling table.
-- @tparam ScrollingTable self The scrolling table object
-- @tparam number rowHeight The row height
-- @treturn ScrollingTable The scrolling table object
function ScrollingTable.SetRowHeight(self, rowHeight)
	self._rowHeight = rowHeight
	return self
end

--- Sets the background of the scrolling table.
-- @tparam ScrollingTable self The scrolling table object
-- @tparam boolean hidden Whether or not the header should be hidden
-- @treturn ScrollingTable The scrolling table object
function ScrollingTable.SetHeaderHidden(self, hidden)
	self._headerMode = "NONE"
	return self
end

--- Sets the background of the scrolling table.
-- @tparam ScrollingTable self The scrolling table object
-- @tparam string color The background color as a theme color key
-- @treturn ScrollingTable The scrolling table object
function ScrollingTable.SetBackgroundColor(self, color)
	assert(Theme.IsValidColor(color))
	self._backgroundColor = color
	return self
end

--- Sets the context table.
-- This table can be used to preserve the table configuration across lifecycles of the scrolling table and even WoW
-- sessions if it's within the settings DB.
-- @tparam ScrollingTable self The scrolling table object
-- @tparam table tbl The context table
-- @tparam table defaultTbl The default table (required fields: `colWidth`, `colHidden`)
-- @treturn ScrollingTable The scrolling table object
function ScrollingTable.SetContextTable(self, tbl, defaultTbl)
	assert(type(defaultTbl.colWidth) == "table" and type(defaultTbl.colHidden) == "table")
	tbl.colWidth = tbl.colWidth or CopyTable(defaultTbl.colWidth)
	tbl.colHidden = tbl.colHidden or CopyTable(defaultTbl.colHidden)
	self._contextTable = tbl
	self._defaultContextTable = defaultTbl
	self:_UpdateColsHidden()
	return self
end

--- Sets the context table from a settings object.
-- @tparam ScrollingTable self The scrolling table object
-- @tparam Settings settings The settings object
-- @tparam string key The setting key
-- @treturn ScrollingTable The scrolling table object
function ScrollingTable.SetSettingsContext(self, settings, key)
	return self:SetContextTable(settings[key], settings:GetDefaultReadOnly(key))
end

--- Forces an update of the data shown within the table.
-- @tparam ScrollingTable self The scrolling table object
-- @tparam[opt=false] bool redraw Whether or not to redraw the scrolling table
-- @treturn ScrollingTable The scrolling table object
function ScrollingTable.UpdateData(self, redraw)
	self:_ForceLastDataUpdate()
	self:_UpdateData()
	if redraw then
		self:Draw()
	end
	return self
end

--- Gets the ScrollingTableInfo object.
-- @tparam ScrollingTable self The scrolling table object
-- @treturn ScrollingTableInfo The scrolling table info object
function ScrollingTable.GetScrollingTableInfo(self)
	return self._tableInfo
end

--- Commits the scrolling table info.
-- This should be called once the scrolling table info is completely set (retrieved via @{ScrollingTable.GetScrollingTableInfo}).
-- @tparam ScrollingTable self The scrolling table object
-- @treturn ScrollingTable The scrolling table object
function ScrollingTable.CommitTableInfo(self)
	self:_UpdateColsHidden()
	if self._header then
		self._header:Release()
		private.rowPool:Recycle(self._header)
		self._header = nil
	end
	return self
end

--- Registers a script handler.
-- @tparam ScrollingTable self The scrolling table object
-- @tparam string script The script to register for (supported scripts: `OnSelectionChanged`, `OnRowClick`)
-- @tparam function handler The script handler which will be called with the scrolling table object followed by any
-- arguments to the script
-- @treturn ScrollingTable The scrolling table object
function ScrollingTable.SetScript(self, script, handler)
	if script == "OnSelectionChanged" then
		self._onSelectionChangedHandler = handler
	elseif script == "OnRowClick" then
		self._onRowClickHandler = handler
	else
		error("Unknown ScrollingTable script: "..tostring(script))
	end
	return self
end

--- Sets the selected row.
-- @tparam ScrollingTable self The scrolling table object
-- @param selection The selected row or nil to clear the selection
-- @tparam[opt=false] boolean noDraw Don't redraw the rows
-- @treturn ScrollingTable The scrolling table object
function ScrollingTable.SetSelection(self, selection, noDraw)
	if selection == self._selection then
		self:_JumpToData(selection)
		return self
	elseif selection and self._selectionValidator and not self:_selectionValidator(selection) then
		return self
	end
	self._selection = selection
	self:_JumpToData(selection)
	if not noDraw then
		for _, row in ipairs(self._rows) do
			if not row:IsMouseOver() and row:IsVisible() and not self:_IsSelected(row:GetData()) then
				row:SetHighlightState(nil)
			elseif row:IsMouseOver() and row:IsVisible() and not self:_IsSelected(row:GetData()) then
				row:SetHighlightState("hover")
			elseif row:IsMouseOver() and row:IsVisible() and self:_IsSelected(row:GetData()) then
				row:SetHighlightState(self._selectionDisabled and "hover" or "selectedHover")
			elseif row:IsVisible() and self:_IsSelected(row:GetData()) then
				row:SetHighlightState("selected")
			end
		end
	end
	if self._onSelectionChangedHandler then
		self:_onSelectionChangedHandler()
	end
	return self
end

--- Gets the currently selected row.
-- @tparam ScrollingTable self The scrolling table object
-- @return The selected row or nil if there's nothing selected
function ScrollingTable.GetSelection(self)
	return self._selection
end

--- Sets a selection validator function.
-- @tparam ScrollingTable self The scrolling table object
-- @tparam function validator A function which gets called with the scrolling table object and a row to validate
-- whether or not it's selectable (returns true if it is, false otherwise)
-- @treturn ScrollingTable The scrolling table object
function ScrollingTable.SetSelectionValidator(self, validator)
	self._selectionValidator = validator
	return self
end

--- Sets whether or not selection is disabled.
-- @tparam ScrollingTable self The scrolling table object
-- @tparam boolean disabled Whether or not to disable selection
-- @treturn ScrollingTable The scrolling table object
function ScrollingTable.SetSelectionDisabled(self, disabled)
	self._selectionDisabled = disabled
	return self
end

function ScrollingTable.Draw(self)
	self.__super:Draw()
	local frame = self:_GetBaseFrame()
	local background = Theme.GetColor(self._backgroundColor)
	frame:SetBackdropColor(background:GetFractionalRGBA())
	if self:_CanResizeCols() then
		self:_UpdateColsHidden()
	end

	if not self._header then
		self._header = self:_GetTableRow(true)
		self._header:SetBackgroundColor(Theme.GetColor("FRAME_BG"))
		self._header:SetHeight(HEADER_HEIGHT)
	end

	-- update the scrollbar layout
	if self._headerMode == "NONE" then
		self._vScrollbar:SetPoint("TOPRIGHT", -Theme.GetScrollbarMargin(), -Theme.GetScrollbarMargin())
	elseif self._headerMode == "COMPACT" then
		self._vScrollbar:SetPoint("TOPRIGHT", -Theme.GetScrollbarMargin(), -Theme.GetScrollbarMargin() - HEADER_HEIGHT - HEADER_LINE_HEIGHT)
	elseif self._headerMode == "FULL" then
		self._vScrollbar:SetPoint("TOPRIGHT", -Theme.GetScrollbarMargin(), -Theme.GetScrollbarMargin() - HEADER_HEIGHT - HEADER_LINE_HEIGHT * 2)
	else
		error("Invalid header mode: "..tostring(self._headerMode))
	end

	local totalWidth = 0
	if self:_CanResizeCols() then
		-- add the "more" column
		totalWidth = totalWidth + MORE_COL_WIDTH + Theme.GetColSpacing()
		for colId, colWidth in pairs(self._contextTable.colWidth) do
			if not self._contextTable.colHidden[colId] then
				totalWidth = totalWidth + colWidth + Theme.GetColSpacing()
			end
		end
	end
	totalWidth = max(totalWidth, self:_GetDimension("WIDTH"))
	self._hContent:SetHeight(self._hScrollFrame:GetHeight())
	self._hContent:SetWidth(totalWidth)
	self._content:SetWidth(self._hContent:GetWidth())

	local rowHeight = self._rowHeight
	local totalHeight = #self._data * rowHeight
	local visibleHeight = self._vScrollFrame:GetHeight()
	local visibleWidth = self._hScrollFrame:GetWidth()
	local numVisibleRows = min(ceil(visibleHeight / rowHeight), #self._data)
	local maxScroll = self:_GetMaxScroll()
	local vScrollOffset = min(self._vScrollValue, maxScroll)
	local hScrollOffset = min(self._hScrollValue, self:_GetMaxHScroll())
	local dataOffset = floor(vScrollOffset / rowHeight)

	self._vScrollbar.thumb:SetHeight(TSM.UI.Scrollbar.GetLength(totalHeight, visibleHeight))
	self._vScrollbar:SetMinMaxValues(0, maxScroll)
	self._vScrollbar:SetValue(vScrollOffset)
	self._hScrollbar.thumb:SetWidth(TSM.UI.Scrollbar.GetLength(self._hContent:GetWidth(), visibleWidth))
	self._hScrollbar:SetMinMaxValues(0, self:_GetMaxHScroll())
	self._hScrollbar:SetValue(hScrollOffset)
	self._content:SetHeight(numVisibleRows * rowHeight)

	if self._headerMode == "NONE" then
		self._lineTop:Hide()
		self._lineBottom:Hide()
		self._header:SetHeight(0)
		self._header:SetBackgroundColor(Color.GetTransparent())
		self._vScrollFrame:SetPoint("TOPLEFT", 0, 0)
	elseif self._headerMode == "COMPACT" then
		self._lineBottom:SetColorTexture(Theme.GetColor("ACTIVE_BG"):GetFractionalRGBA())
		self._lineBottom:SetPoint("TOPLEFT", 0, -HEADER_HEIGHT)
		self._lineBottom:SetPoint("TOPRIGHT", 0, -HEADER_HEIGHT)
		self._lineTop:Hide()
		self._lineBottom:Show()
		self._vScrollFrame:SetPoint("TOPLEFT", 0, -HEADER_HEIGHT - HEADER_LINE_HEIGHT)
		self._header:SetBackgroundColor(Theme.GetColor("FRAME_BG"))
		self._header:SetHeight(HEADER_HEIGHT)
	elseif self._headerMode == "FULL" then
		self._lineTop:SetColorTexture(Theme.GetColor("ACTIVE_BG"):GetFractionalRGBA())
		self._lineBottom:SetColorTexture(Theme.GetColor("ACTIVE_BG"):GetFractionalRGBA())
		self._lineBottom:SetPoint("TOPLEFT", 0, -HEADER_HEIGHT - HEADER_LINE_HEIGHT)
		self._lineBottom:SetPoint("TOPRIGHT", 0, -HEADER_HEIGHT - HEADER_LINE_HEIGHT)
		self._lineTop:Show()
		self._lineBottom:Show()
		self._vScrollFrame:SetPoint("TOPLEFT", 0, -HEADER_HEIGHT - HEADER_LINE_HEIGHT * 2)
		self._header:SetBackgroundColor(Theme.GetColor("FRAME_BG"))
		self._header:SetHeight(HEADER_HEIGHT)
	else
		error("Invalid header mode: "..tostring(self._headerMode))
	end

	if Math.Round(vScrollOffset + visibleHeight) == totalHeight then
		-- we are at the bottom
		self._vScrollFrame:SetVerticalScroll(numVisibleRows * rowHeight - visibleHeight)
	else
		self._vScrollFrame:SetVerticalScroll(0)
	end
	self._hScrollFrame:SetHorizontalScroll(hScrollOffset)

	while #self._rows < numVisibleRows do
		local row = self:_GetTableRow(false)
		row._frame:SetPoint("TOPLEFT", 0, -rowHeight * #self._rows)
		row._frame:SetPoint("TOPRIGHT", 0, -rowHeight * #self._rows)
		tinsert(self._rows, row)
	end

	local scrollDiff = dataOffset - (self._prevDataOffset or dataOffset)
	self._prevDataOffset = dataOffset
	if numVisibleRows > 0 and scrollDiff ~= 0 then
		-- Shuffle the rows around to accomplish the scrolling so that the data only changes
		-- for the minimal number of rows, which allows for better optimization
		for _ = 1, abs(scrollDiff) do
			if scrollDiff > 0 then
				tinsert(self._rows, tremove(self._rows, 1))
			else
				tinsert(self._rows, 1, tremove(self._rows))
			end
		end
		-- fix the points of all the rows
		for i, row in ipairs(self._rows) do
			row._frame:SetPoint("TOPLEFT", 0, -rowHeight * (i - 1))
			row._frame:SetPoint("TOPRIGHT", 0, -rowHeight * (i - 1))
		end
	end

	for i, row in ipairs(self._rows) do
		local dataIndex = i + dataOffset
		local data = self._data[dataIndex]
		if i > numVisibleRows or not data then
			row:SetVisible(false)
			row:ClearData()
		else
			row:SetVisible(true)
			self:_SetRowData(row, data)
			row:SetBackgroundColor(background)
			row:SetHeight(rowHeight)
		end
	end
	self._lastDataUpdate = nil

	self._header:SetHeaderData()
end



-- ============================================================================
-- ScrollingTable - Private Class Methods
-- ============================================================================

function ScrollingTable._CreateScrollingTableInfo(self)
	return TSM.UI.Util.ScrollingTableInfo()
end

function ScrollingTable._GetTableRow(self, isHeader)
	local row = private.rowPool:Get()
	row:Acquire(self, isHeader)
	return row
end

function ScrollingTable._SetRowData(self, row, data)
	-- updating the row data is expensive, so only do it if necessary
	local dataUpdated = row:GetData() ~= data or not self._lastDataUpdate or self._lastDataUpdate == FORCE_DATA_UPDATE or self._lastDataUpdate == data
	local isMouseOver = row:IsMouseOver()
	local isSelected = self:_IsSelected(data)
	if not isMouseOver and isSelected then
		row:SetHighlightState("selected", dataUpdated)
	elseif isMouseOver and isSelected then
		row:SetHighlightState(self._selectionDisabled and "hover" or "selectedHover", dataUpdated)
	elseif isMouseOver and not isSelected then
		row:SetHighlightState("hover", dataUpdated)
	else
		row:SetHighlightState(nil, dataUpdated)
	end
	if dataUpdated then
		row:SetData(data)
	end
end

function ScrollingTable._OnScrollValueChanged(self, value, noDraw)
	self._vScrollValue = value
	if not noDraw then
		self:Draw()
	end
end

function ScrollingTable._OnHScrollValueChanged(self, value, noDraw)
	self._hScrollValue = value
	if not noDraw then
		self:Draw()
	end
end

function ScrollingTable._GetMaxScroll(self)
	return max(#self._data * self._rowHeight - self._vScrollFrame:GetHeight(), 0)
end

function ScrollingTable._GetMaxHScroll(self)
	return max(self._hContent:GetWidth() - self._hScrollFrame:GetWidth(), 0)
end

function ScrollingTable._UpdateData(self)
	error("Must be implemented by the subclass")
end

function ScrollingTable._ToggleSort(self, id)
	error("Must be implemented by the subclass")
end

function ScrollingTable._IsSelected(self, data)
	return data == self._selection
end

function ScrollingTable._HandleRowClick(self, data, mouseButton)
	if self._onRowClickHandler then
		self:_onRowClickHandler(data, mouseButton)
	end
end

function ScrollingTable._GetColWidth(self, id)
	return self._contextTable.colWidth[id]
end

function ScrollingTable._ResetColWidth(self, id)
	local defaultWidth = self._defaultContextTable.colWidth[id]
	local currentWidth = self._contextTable.colWidth[id]
	assert(currentWidth and defaultWidth)
	self._contextTable.colWidth[id] = defaultWidth
	self._header:_LayoutHeaderRow()
	for _, row in ipairs(self._rows) do
		row:_LayoutDataRow()
	end
	self:Draw()
end

function ScrollingTable._SetColWidth(self, id, width, redraw)
	assert(not self._contextTable.colWidthLocked)
	local prevWidth = self._contextTable.colWidth[id]
	assert(prevWidth)
	if width == prevWidth and not redraw then
		return
	end
	self._contextTable.colWidth[id] = width
	for _, row in ipairs(self._rows) do
		row:_LayoutDataRow()
	end
	if redraw then
		self:Draw()
	end
end

function ScrollingTable._IsColWidthLocked(self)
	return self._contextTable.colWidthLocked
end

function ScrollingTable._ToogleColWidthLocked(self)
	self._contextTable.colWidthLocked = not self._contextTable.colWidthLocked or nil
	self._header:_LayoutHeaderRow()
	self:Draw()
end

function ScrollingTable._CanResizeCols(self)
	return self._contextTable and true or false
end

function ScrollingTable._ToggleColHide(self, id)
	if not self._contextTable then
		return
	end
	self._contextTable.colHidden[id] = not self._contextTable.colHidden[id] or nil
	self:_UpdateColsHidden()
	self._header:_LayoutHeaderRow()
	for _, row in ipairs(self._rows) do
		row:_LayoutDataRow()
	end
	self:Draw()
end

function ScrollingTable._ResetContext(self)
	assert(self._contextTable)
	if self._defaultContextTable.colWidth then
		wipe(self._contextTable.colWidth)
		for col, width in pairs(self._defaultContextTable.colWidth) do
			self._contextTable.colWidth[col] = width
		end
	end
	if self._defaultContextTable.colHidden then
		wipe(self._contextTable.colHidden)
		for col, hidden in pairs(self._defaultContextTable.colHidden) do
			self._contextTable.colHidden[col] = hidden
		end
		self:_UpdateColsHidden()
	end
	self._header:_LayoutHeaderRow()
	for _, row in ipairs(self._rows) do
		row:_LayoutDataRow()
	end
	self:Draw()
end

function ScrollingTable._UpdateColsHidden(self)
	for _, col in self:GetScrollingTableInfo():_ColIterator() do
		local colId = col:_GetId()
		if col:_CanHide() then
			col:_SetHidden(self._contextTable and self._contextTable.colHidden[colId] and true or false)
		elseif self._contextTable then
			self._contextTable.colHidden[colId] = nil
		end
	end
end

function ScrollingTable._SetLastDataUpdate(self, value)
	self._lastDataUpdate = value
end

function ScrollingTable._IgnoreLastDataUpdate(self)
	self._lastDataUpdate = IGNORE_DATA_UPDATE
end

function ScrollingTable._ForceLastDataUpdate(self)
	self._lastDataUpdate = FORCE_DATA_UPDATE
end

function ScrollingTable._ScrollToData(self, data)
	local rowHeight = self._rowHeight
	local visibleHeight = self._vScrollFrame:GetHeight()
	local currentOffset = self._vScrollbar:GetValue()
	local dataIndex = Table.KeyByValue(self._data, data)
	-- if we are going to scroll up/down, we want to scroll such that the top of the passed row is in the visible area
	-- by at least 1 row height
	local scrollUpOffset = max(rowHeight * (dataIndex - 1) - rowHeight, 0)
	local scrollDownOffset = min(rowHeight * dataIndex + rowHeight - visibleHeight, self:_GetMaxScroll())
	if scrollUpOffset < currentOffset and scrollDownOffset > currentOffset then
		-- it's impossible to scroll to the right place, so do nothing
	elseif scrollUpOffset < currentOffset then
		-- we need to scroll up
		self._targetScrollValue = scrollUpOffset
		self._totalScrollDistance = currentOffset - scrollUpOffset
	elseif scrollDownOffset > currentOffset then
		-- we need to scroll down
		self._targetScrollValue = scrollDownOffset
		self._totalScrollDistance = scrollDownOffset - currentOffset
	else
		-- the data is already in the visible area, so do nothing
	end
end

function ScrollingTable._JumpToData(self, data)
	if not data then
		return
	end
	local index = Table.KeyByValue(self._data, data)
	assert(index)
	-- set the scroll so that the selection is visible if necessary
	local rowHeight = self._rowHeight
	local firstVisibleIndex = ceil(self._vScrollValue / rowHeight) + 1
	local lastVisibleIndex = floor((self._vScrollValue + self:_GetDimension("HEIGHT")) / rowHeight)
	if lastVisibleIndex > firstVisibleIndex and (index < firstVisibleIndex or index > lastVisibleIndex) then
		self:_OnScrollValueChanged(min((index - 1) * rowHeight, self:_GetMaxScroll()))
	end
end



-- ============================================================================
-- ScrollingTable - Local Script Handlers
-- ============================================================================

function private.OnHScrollbarValueChanged(self, value)
	value = max(min(value, self:_GetMaxHScroll()), 0)
	self:_OnHScrollValueChanged(value)
end

function private.OnVScrollbarValueChanged(self, value)
	value = max(min(value, self:_GetMaxScroll()), 0)
	self:_OnScrollValueChanged(value)
end

function private.OnHScrollbarValueChangedNoDraw(self, value)
	value = max(min(value, self:_GetMaxHScroll()), 0)
	self:_OnHScrollValueChanged(value, true)
end

function private.OnVScrollbarValueChangedNoDraw(self, value)
	value = max(min(value, self:_GetMaxScroll()), 0)
	self:_OnScrollValueChanged(value, true)
end

function private.HScrollFrameOnUpdate(self)
	if (self._hScrollFrame:IsMouseOver() and self:_GetMaxHScroll() > 1) or self._hScrollbar.dragging then
		self._hScrollbar:Show()
	else
		self._hScrollbar:Hide()
	end
end

function private.VScrollFrameOnUpdate(self, elapsed)
	elapsed = min(elapsed, 0.01)

	if self._targetScrollValue then
		local scrollValue = self._vScrollbar:GetValue()
		local direction = scrollValue < self._targetScrollValue and 1 or -1
		local newScrollValue = scrollValue + direction * self._totalScrollDistance * elapsed / SCROLL_TO_DATA_TOTAL_TIME_S
		self._vScrollbar:SetValue(newScrollValue)
		if direction * newScrollValue >= direction * self._targetScrollValue or newScrollValue <= 0 or newScrollValue >= self:_GetMaxScroll() then
			-- we are done scrolling
			self._targetScrollValue = nil
			self._totalScrollDistance = nil
		end
	end

	local rOffset = max(self._hContent:GetWidth() - self._hScrollFrame:GetWidth() - self._hScrollbar:GetValue(), 0)
	if (self._vScrollFrame:IsMouseOver(0, 0, 0, -rOffset) and self:_GetMaxScroll() > 1) or self._vScrollbar.dragging then
		self._vScrollbar:Show()
	else
		self._vScrollbar:Hide()
	end
end

function private.FrameOnMouseWheel(self, direction)
	local scrollAmount = -direction * Theme.GetMouseWheelScrollAmount()
	if IsShiftKeyDown() and self._hScrollbar:IsVisible() then
		-- scroll horizontally
		self._hScrollbar:SetValue(self._hScrollbar:GetValue() + scrollAmount)
	else
		self._vScrollbar:SetValue(self._vScrollbar:GetValue() + scrollAmount)
	end
end
