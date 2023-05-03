-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local ObjectPool = TSM.Include("Util.ObjectPool")
local Theme = TSM.Include("Util.Theme")
local Table = TSM.Include("Util.Table")
local UIElements = TSM.Include("UI.UIElements")
local private = {
	rowPool = ObjectPool.New("LIST_ROWS", TSM.UI.ListRow, 1),
}



-- ============================================================================
-- Element Definition
-- ============================================================================

local List = UIElements.Define("List", "Element", "ABSTRACT") ---@class List: Element
List:_ExtendStateSchema()
	:AddStringField("backgroundColor", "PRIMARY_BG")
	:Commit()



-- ============================================================================
-- Meta Class Methods
-- ============================================================================

function List:__init()
	local frame = UIElements.CreateFrame(self, "Frame", nil, nil, BackdropTemplateMixin and "BackdropTemplate" or nil)
	self.__super:__init(frame)

	frame:SetBackdrop({ bgFile = "Interface\\Buttons\\WHITE8X8" })

	self._hScrollFrame = UIElements.CreateFrame(self, "ScrollFrame", nil, frame)
	self._hScrollFrame:SetPoint("TOPLEFT")
	self._hScrollFrame:SetPoint("BOTTOMRIGHT")
	self._hScrollFrame:EnableMouseWheel(true)
	self._hScrollFrame:SetClipsChildren(true)
	self._hScrollFrame:TSMSetScript("OnUpdate", self:__closure("_HScrollFrameOnUpdate"))
	self._hScrollFrame:TSMSetScript("OnMouseWheel", self:__closure("_FrameOnMouseWheel"))

	self._hContent = CreateFrame("Frame", nil, self._hScrollFrame)
	self._hContent:SetPoint("TOPLEFT")
	self._hScrollFrame:SetScrollChild(self._hContent)

	self._vScrollFrame = UIElements.CreateFrame(self, "ScrollFrame", nil, self._hContent)
	self._vScrollFrame:SetPoint("TOPLEFT")
	self._vScrollFrame:SetPoint("BOTTOMRIGHT")
	self._vScrollFrame:EnableMouseWheel(true)
	self._vScrollFrame:SetClipsChildren(true)
	self._vScrollFrame:TSMSetScript("OnUpdate", self:__closure("_VScrollFrameOnUpdate"))
	self._vScrollFrame:TSMSetScript("OnMouseWheel", self:__closure("_FrameOnMouseWheel"))

	self._content = CreateFrame("Frame", nil, self._vScrollFrame)
	self._content:SetPoint("TOPLEFT")
	self._vScrollFrame:SetScrollChild(self._content)

	self._hScrollbar = TSM.UI.Scrollbar.Create(frame, true)
	self._vScrollbar = TSM.UI.Scrollbar.Create(frame)
	self._vScrollbar:SetPoint("TOPRIGHT", -Theme.GetScrollbarMargin(), -Theme.GetScrollbarMargin())

	self._rowHeight = nil
	self._rowElements = {}
	self._numRows = 0
	self._hScrollValue = 0
	self._vScrollValue = 0
	self._prevDataOffset = nil
	self._registeredItemInfoObjects = {}
	self._registeredItemInfoBaseItemStrings = {}
	self._itemInfoPublisher = nil
end

function List:Acquire(rowHeight)
	assert(type(rowHeight) == "number" and rowHeight > 0)
	assert(#self._rowElements == 0)
	self._rowHeight = rowHeight

	self.__super:Acquire()
	local frame = self:_GetBaseFrame()

	-- Set the background color
	self._state:PublisherForKeyChange("backgroundColor")
		:CallMethod(frame, "TSMSubscribeBackdropColor")
	self._state:PublisherForKeyChange("backgroundColor")
		:CallMethodForEachListValue(self._rowElements, "SetBackgroundColor")

	self._hScrollFrame:SetHorizontalScroll(0)
	self._hScrollValue = 0
	self._vScrollValue = 0

	self._vScrollbar:TSMSetScript("OnValueChanged", self:__closure("_OnVScrollbarValueChangedNoDraw"))
	-- don't want to cause this element to be drawn for this initial scrollbar change
	self._vScrollbar:SetValue(0)
	self._vScrollbar:TSMSetScript("OnValueChanged", self:__closure("_OnVScrollbarValueChanged"))

	self._hScrollbar:TSMSetScript("OnValueChanged", self:__closure("_OnHScrollbarValueChangedNoDraw"))
	-- don't want to cause this element to be drawn for this initial scrollbar change
	self._hScrollbar:SetValue(0)
	self._hScrollbar:TSMSetScript("OnValueChanged", self:__closure("_OnHScrollbarValueChanged"))
end

function List:Release()
	self._prevDataOffset = nil
	for _, row in ipairs(self._rowElements) do
		self:_HandleRowReleased(row)
		row:Release()
		private.rowPool:Recycle(row)
	end
	assert(not self._itemInfoPublisher and not next(self._registeredItemInfoObjects) and not next(self._registeredItemInfoBaseItemStrings))
	wipe(self._rowElements)
	self._numRows = 0
	local frame = self:_GetBaseFrame()
	frame:TSMCancelAll()
	self.__super:Release()
end



-- ============================================================================
-- Public Class Methods
-- ============================================================================

---Sets the background of the list.
---@generic T: List
---@param self T
---@param color ThemeColorKey The background color as a theme color key
---@return T @The list object
function List:SetBackgroundColor(color)
	assert(Theme.IsValidColor(color))
	self._state.backgroundColor = color
	return self
end

function List:Draw()
	self.__super:Draw()

	self:_DrawHFrames()
	self:_DrawVFrames()

	-- Add/hide rows as needed
	local backgroundColor = self._state.backgroundColor
	local maxVisibleRows = self:_GetMaxVisibleRows()
	for i = #self._rowElements + 1, maxVisibleRows do
		local row = private.rowPool:Get()
		row:Acquire(self._content, self._rowHeight, self:__closure("_HandleRowFrameEvent"))
		row:SetOffset(i - 1)
		row:SetBackgroundColor(backgroundColor)
		self:_HandleRowAcquired(row)
		self._rowElements[i] = row
	end
	self:_HideExtraRows()

	-- Draw all the rows
	self:_DrawRows()
end



-- ============================================================================
-- List - Abstract Class Methods
-- ============================================================================

function List.__abstract:_HandleRowDraw(row)
	-- must be implemented by subclass
end



-- ============================================================================
-- List - Protected Class Methods
-- ============================================================================

function List.__protected:_SetNumRows(numRows)
	self._numRows = numRows
	return self
end

function List.__protected:_IsBackgroundColorLight()
	return Theme.GetColor(self._state.backgroundColor):IsLight()
end

function List.__protected:_GetRow(index)
	local dataOffset = self:_GetDataOffset()
	local numVisibleRows = self:_GetNumVisibleRows()
	local rowIndex = index - dataOffset
	if rowIndex < 1 or rowIndex > numVisibleRows then
		return nil
	end
	return self._rowElements[rowIndex]
end

function List.__protected:_AddRows(index, num)
	local dataOffset = self:_GetDataOffset()
	self:_SetNumRows(self._numRows + num)
	self:_DrawVFrames()
	local numVisibleRows = self:_GetNumVisibleRows()
	assert(dataOffset == self:_GetDataOffset())
	local firstRowIndex = index - dataOffset
	local lastRowIndex = firstRowIndex + num - 1
	firstRowIndex = max(firstRowIndex, 1)
	if firstRowIndex > numVisibleRows then
		-- Adding all the rows below the visible range, so don't need to do anything
	elseif lastRowIndex >= numVisibleRows then
		-- We're inserting enough rows that all the ones being shifted down are going off the bottom of the visible area, so just redraw them
		self:_DrawRows(firstRowIndex, numVisibleRows)
	else
		-- Update the dataIndex of all the rows which we're shifting down
		for i = firstRowIndex, numVisibleRows - num do
			local row = self._rowElements[i]
			row:UpdateDataIndex(row:GetDataIndex() + num)
		end
		-- Rotate the existing rows down to just redraw the new rows
		self:_RotateRowsDown(num, firstRowIndex, numVisibleRows)
	end
end

function List.__protected:_RemoveRows(index, num)
	local dataOffset = self:_GetDataOffset()
	local numVisibleRows = self:_GetNumVisibleRows()
	self:_SetNumRows(self._numRows - num)
	self:_DrawVFrames()
	local newDataOffset = self:_GetDataOffset()
	local newNumVisibleRows = self:_GetNumVisibleRows()
	local rowIndex = index - newDataOffset
	assert(newNumVisibleRows <= numVisibleRows)
	assert(newNumVisibleRows == numVisibleRows or newDataOffset == 0)
	if numVisibleRows ~= newNumVisibleRows then
		-- We removed enough rows that we have less total now than were previously visible, so
		-- redraw the rows which got shifted into view, and hide the extra ones
		self:_DrawRows(rowIndex, newNumVisibleRows)
		self:_HideExtraRows()
	elseif dataOffset ~= newDataOffset then
		-- The scroll changed which will already take care of drawing the new rows at the top
		-- which got shifted in, so do nothing
	elseif rowIndex > numVisibleRows then
		-- None of the removed rows were visible, so don't need to draw any
	elseif num > numVisibleRows - rowIndex then
		-- We're inserting enough rows that all the ones being shifted down are going off the
		-- bottom of the visible area, so just redraw them
		self:_DrawRows(rowIndex, numVisibleRows)
	else
		-- Update the dataIndex of all the rows which we're shifting up
		local startIndex = index - dataOffset
		for i = startIndex + num, numVisibleRows do
			local row = self._rowElements[i]
			row:UpdateDataIndex(row:GetDataIndex() - num)
		end
		-- Rotate the existing rows up to just redraw the new rows
		self:_RotateRowsDown(-num, startIndex, numVisibleRows)
	end
end

function List.__protected:_DrawHFrames()
	local totalWidth = self:_GetDimension("WIDTH")
	self._hContent:SetWidth(totalWidth)
	self._content:SetWidth(self._hContent:GetWidth())

	local visibleWidth = self._hScrollFrame:GetWidth()
	local hScrollOffset = min(self._hScrollValue, self:_GetMaxHScroll())

	self._hScrollbar.thumb:SetWidth(TSM.UI.Scrollbar.GetLength(self._hContent:GetWidth(), visibleWidth))
	self._hScrollbar:SetMinMaxValues(0, self:_GetMaxHScroll())
	self._hScrollbar:SetValue(hScrollOffset)
	self._hScrollFrame:SetHorizontalScroll(hScrollOffset)
end

function List.__protected:_DrawVFrames()
	self._hContent:SetHeight(self._hScrollFrame:GetHeight())

	local rowHeight = self._rowHeight
	local totalHeight = self._numRows * rowHeight
	local visibleHeight = self._vScrollFrame:GetHeight()
	local numVisibleRows = self:_GetNumVisibleRows()
	local maxScroll = self:_GetMaxVScroll()
	local vScrollOffset = min(self._vScrollValue, maxScroll)

	self._vScrollbar.thumb:SetHeight(TSM.UI.Scrollbar.GetLength(totalHeight, visibleHeight))
	self._vScrollbar:SetMinMaxValues(0, maxScroll)
	-- FIXME: this causes a double-draw on first show(?) and is super hacky
	if self._vScrollbar:GetValue() ~= vScrollOffset or self._numRows > 0 then
		self._vScrollbar:SetValue(vScrollOffset)
	end
	self._content:SetHeight(numVisibleRows * rowHeight)
	self._vScrollFrame:SetVerticalScroll(vScrollOffset % rowHeight)
end

function List.__protected:_HideExtraRows()
	for i = self:_GetNumVisibleRows() + 1, #self._rowElements do
		self._rowElements[i]:SetDataIndex(nil)
	end
end

function List.__protected:_DrawRows(startIndex, endIndex)
	local numVisibleRows = self:_GetNumVisibleRows()
	startIndex = startIndex or 1
	endIndex = endIndex or numVisibleRows
	assert(startIndex >= 1 and endIndex <= numVisibleRows)
	local dataOffset = self:_GetDataOffset()
	for i = startIndex, endIndex do
		local dataIndex = i + dataOffset
		assert(dataIndex <= self._numRows)
		local row = self._rowElements[i]
		row:SetDataIndex(dataIndex)
		self:_HandleRowDraw(row)
	end
end

function List.__protected:_HandleRowAcquired(row)
	-- do nothing if not implemented by the subclass
end

function List.__protected:_HandleRowReleased(row)
	-- do nothing if not implemented by the subclass
end

function List.__protected:_HandleRowEnter(row)
	-- do nothing if not implemented by the subclass
end

function List.__protected:_HandleRowLeave(row)
	-- do nothing if not implemented by the subclass
end

function List.__protected:_HandleRowClick(row, mouseButton)
	-- do nothing if not implemented by the subclass
end



-- ============================================================================
-- List - Private Class Methods
-- ============================================================================

function List.__private:_HandleRowFrameEvent(row, event, ...)
	if event == "OnEnter" then
		local focus = GetMouseFocus()
		if not focus or (focus ~= row._frame and focus ~= row._frame:GetParent()) then
			-- Sometimes we get erronous OnEnter events - just ignore them
			return
		end
		assert(select("#", ...) == 0)
		self:_HandleRowEnter(row)
	elseif event == "OnLeave" then
		assert(select("#", ...) == 0)
		self:_HandleRowLeave(row)
	elseif event == "OnClick" then
		assert(select("#", ...) == 1)
		local mouseButton = ...
		self:_HandleRowClick(row, mouseButton)
	else
		error("Unexpected event: "..tostring(event))
	end
end

function List.__private:_GetMaxVScroll()
	return max(self._numRows * self._rowHeight - self._vScrollFrame:GetHeight(), 0)
end

function List.__private:_GetMaxHScroll()
	return max(self._hContent:GetWidth() - self._hScrollFrame:GetWidth(), 0)
end

function List.__private:_GetMaxVisibleRows()
	return ceil(self._vScrollFrame:GetHeight() / self._rowHeight)
end

function List.__private:_GetNumVisibleRows()
	return min(self:_GetMaxVisibleRows(), self._numRows)
end

function List.__private:_GetDataOffset()
	return floor(min(self._vScrollValue, self:_GetMaxVScroll()) / self._rowHeight)
end

function List.__private:_RotateRowsDown(amount, startIndex, endIndex)
	startIndex = startIndex or 1
	endIndex = endIndex or self:_GetNumVisibleRows()
	Table.RotateRight(self._rowElements, amount, startIndex, endIndex)
	-- Fix the points of all the rows
	for i, row in ipairs(self._rowElements) do
		row:SetOffset(i - 1)
	end
	-- Just draw the rows which were rotated in, not the ones which were shifted
	if amount > 0 then
		self:_DrawRows(startIndex, min(startIndex + amount - 1, endIndex))
	else
		self:_DrawRows(endIndex + amount + 1, endIndex)
	end
end



-- ============================================================================
-- List - Private Script Handlers
-- ============================================================================

function List.__private:_FrameOnMouseWheel(frame, direction)
	local scrollAmount = -direction * Theme.GetMouseWheelScrollAmount()
	if IsShiftKeyDown() and self._hScrollbar:IsVisible() then
		-- scroll horizontally
		self._hScrollbar:SetValue(self._hScrollbar:GetValue() + scrollAmount)
	else
		self._vScrollbar:SetValue(self._vScrollbar:GetValue() + scrollAmount)
	end
end

function List.__private:_VScrollFrameOnUpdate()
	local rOffset = max(self._hContent:GetWidth() - self._hScrollFrame:GetWidth() - self._hScrollbar:GetValue(), 0)
	if (self._vScrollFrame:IsMouseOver(0, 0, 0, -rOffset) and self:_GetMaxVScroll() > 1) or self._vScrollbar.dragging then
		self._vScrollbar:Show()
	else
		self._vScrollbar:Hide()
	end
end

function List.__private:_HScrollFrameOnUpdate()
	if (self._hScrollFrame:IsMouseOver() and self:_GetMaxHScroll() > 1) or self._hScrollbar.dragging then
		self._hScrollbar:Show()
	else
		self._hScrollbar:Hide()
	end
end

function List.__private:_OnHScrollbarValueChanged(frame, value)
	self:_OnHScrollbarValueChangedNoDraw(frame, value)
	self:_DrawHFrames()
end

function List.__private:_OnVScrollbarValueChanged(frame, value)
	self:_OnVScrollbarValueChangedNoDraw(frame, value)
	self:_DrawVFrames()

	local numVisibleRows = self:_GetNumVisibleRows()
	assert(numVisibleRows >= 0)
	local dataOffset = self:_GetDataOffset()
	local scrollDiff = dataOffset - (self._prevDataOffset or 0)
	self._prevDataOffset = dataOffset
	if scrollDiff == 0 then
		-- Didn't actually scroll
		return
	elseif abs(scrollDiff) > numVisibleRows then
		-- All rows changed, so just redraw them all
		self:_DrawRows()
		return
	end
	-- Shift the rows to match the scrolling so we only have to update as few rows as possible
	self:_RotateRowsDown(-scrollDiff)
end

function List.__private:_OnHScrollbarValueChangedNoDraw(frame, value)
	self._hScrollValue = max(min(value, self:_GetMaxHScroll()), 0)
end

function List.__private:_OnVScrollbarValueChangedNoDraw(frame, value)
	self._vScrollValue = max(min(value, self:_GetMaxVScroll()), 0)
end
