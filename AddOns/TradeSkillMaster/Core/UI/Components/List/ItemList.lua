-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local L = TSM.Include("Locale").GetTable()
local Theme = TSM.Include("Util.Theme")
local TextureAtlas = TSM.Include("Util.TextureAtlas")
local Delay = TSM.Include("Util.Delay")
local Math = TSM.Include("Util.Math")
local Table = TSM.Include("Util.Table")
local TempTable = TSM.Include("Util.TempTable")
local DragContext = TSM.Include("UI.DragContext")
local Tooltip = TSM.Include("UI.Tooltip")
local UIElements = TSM.Include("UI.UIElements")
local UIUtils = TSM.Include("UI.UIUtils")
local private = {
	dragContextTimer = Delay.CreateTimer("ITEM_LIST_DRAG_CONTEXT", DragContext.Clear),
	prevSelectedTemp = {},
}
local ROW_HEIGHT = 20
local ICON_SIZE = 12
local ICON_SPACING = 4
local INDENT_WIDTH = 8
local MOVE_FRAME_PADDING = 8
local EXPANDER_TEXTURE_EXPANDED = "iconPack.12x12/Caret/Down"
local EXPANDER_TEXTURE_COLLAPSED = "iconPack.12x12/Caret/Right"
local CHECK_TEXTURE = "iconPack.14x14/Checkmark/Default"



-- ============================================================================
-- Element Definition
-- ============================================================================

local ItemList = UIElements.Define("ItemList", "List") ---@class ItemList: List



-- ============================================================================
-- Meta Class Methods
-- ============================================================================

function ItemList:__init()
	self.__super:__init()
	self._moveFrame = nil
	self._headings = {}
	self._sectionNumRows = {}
	self._sectionCollapsed = {}
	self._queries = {}
	self._autoReleaseQuery = {}
	self._data = {}
	self._itemString = {}
	self._icon = {}
	self._text = {}
	self._selectedData = {}
	self._dragItems = {}
	self._onSelectionChangedHandler = nil
end

function ItemList:Acquire()
	self.__super:Acquire(ROW_HEIGHT)
	self._moveFrame = UIElements.New("Frame", self._id.."_MoveFrame")
		:SetLayout("VERTICAL")
		:SetHeight(20)
		:SetStrata("TOOLTIP")
		:SetBackgroundColor("PRIMARY_BG_ALT", true)
		:SetBorderColor("INDICATOR")
		:SetContext(self)
		:AddChild(UIElements.New("Text", "text")
			:SetFont("BODY_BODY3")
			:SetJustifyH("CENTER")
		)
	self._moveFrame:SetParent(self:_GetBaseFrame())
	self._moveFrame:Hide()
	self._moveFrame:SetScript("OnUpdate", private.MoveFrameOnUpdate)
end

function ItemList:Release()
	self._moveFrame:Release()
	self._moveFrame = nil
	wipe(self._headings)
	wipe(self._sectionNumRows)
	wipe(self._sectionCollapsed)
	wipe(self._data)
	wipe(self._itemString)
	wipe(self._icon)
	wipe(self._text)
	wipe(self._selectedData)
	wipe(self._dragItems)
	self._onSelectionChangedHandler = nil
	self.__super:Release()
	for _, query in ipairs(self._queries) do
		if self._autoReleaseQuery[query] then
			query:Release()
		end
	end
	wipe(self._queries)
	wipe(self._autoReleaseQuery)
end



-- ============================================================================
-- Public Class Methods
-- ============================================================================

---Sets a single query to use to populate the list (no sections).
---@param query DatabaseQuery The query
---@param noAutoRelease boolean Don't auto-release the query when the ItemList is released
---@return ItemList
function ItemList:SetSingleQuery(query, noAutoRelease)
	assert(#self._headings == 0 and #self._queries == 0 and #self._sectionNumRows == 0)
	tinsert(self._queries, query)
	self._autoReleaseQuery[query] = not noAutoRelease
	self:AddCancellable(query:Publisher()
		:MapToValue(query)
		:CallMethod(self, "_HandleQueryUpdate")
	)
	return self
end

---Adds a section with a specified query to use to populate the section's list of items.
---@param heading string The heading text
---@param query DatabaseQuery The query
---@param noAutoRelease boolean Don't auto-release the query when the ItemList is released
---@return ItemList
function ItemList:AddSectionQuery(heading, query, noAutoRelease)
	assert(#self._headings == #self._queries and #self._headings == #self._sectionNumRows)
	assert(not Table.KeyByValue(self._headings, heading))
	tinsert(self._headings, heading)
	tinsert(self._sectionNumRows, 0)
	tinsert(self._queries, query)
	self._autoReleaseQuery[query] = not noAutoRelease
	self:AddCancellable(query:Publisher()
		:MapToValue(query)
		:CallMethod(self, "_HandleQueryUpdate")
	)
	return self
end

---Registers a script handler.
---@generic T: ItemList
---@param self T
---@param script string The script to register for (supported scripts: `OnSelectionChanged`)
---@param handler function The script handler which will be called with the item list object followed by any arguments
-- to the script
---@return T
function ItemList:SetScript(script, handler)
	if script == "OnSelectionChanged" then
		self._onSelectionChangedHandler = handler
	else
		error("Unknown ItemList script: "..tostring(script))
	end
	return self
end

---Gets the number of selected items.
---@return number @The number of selected items
function ItemList:GetNumSelected()
	return Table.Count(self._selectedData)
end

---Populates a table with the list of selected items.
---@param resultTbl string[] The table to populate
function ItemList:GetSelectedItems(resultTbl)
	for itemString in pairs(self._selectedData) do
		tinsert(resultTbl, itemString)
	end
end

---Toggle the selection state of all items.
---@return number @The number of selected items
function ItemList:ToggleSelectAll()
	if not next(self._selectedData) then
		for _, itemString in pairs(self._itemString) do
			self._selectedData[itemString] = true
		end
	else
		wipe(self._selectedData)
	end
	for i, uuid in ipairs(self._data) do
		local row = self:_GetRow(i)
		if row then
			self:_DrawItemRowSelectedState(row, self._selectedData[self._itemString[uuid]])
		end
	end
	if self._onSelectionChangedHandler then
		self:_onSelectionChangedHandler()
	end
	self:Draw()
end



-- ============================================================================
-- Protected/Private Class Methods
-- ============================================================================

function ItemList:_HandleQueryUpdate(query)
	query:SetUpdatesPaused(true)
	local oldUUIDs, dataStartOffset, dataLen, rowStartOffset = nil, nil, nil, nil
	local isCollapsed = false
	if #self._sectionNumRows > 0 then
		-- This list has sections, so offset past the previous sections
		dataStartOffset = 0
		for i, numRows in ipairs(self._sectionNumRows) do
			if self._queries[i] == query then
				dataLen = numRows
				rowStartOffset = i
				isCollapsed = self._sectionCollapsed[i]
				break
			end
			dataStartOffset = dataStartOffset + numRows
		end
		assert(dataLen)
		oldUUIDs = TempTable.Acquire()
		for i = 1, dataLen do
			tinsert(oldUUIDs, self._data[dataStartOffset + i])
		end
	else
		oldUUIDs = self._data
		dataStartOffset = 0
		dataLen = #self._data
		rowStartOffset = 0
		isCollapsed = false
	end

	local selectionChanged = false
	local sectionIndex = #self._sectionNumRows > 0 and Table.KeyByValue(self._queries, query) or nil
	-- TODO: Support updating collapsed sections with a UUID diff
	if not isCollapsed and #oldUUIDs > 0 and query:UUIDDiffPrepare(oldUUIDs) then
		for _, action, startIndex, uuids in query:UUIDDiffIterator() do
			startIndex = startIndex + dataStartOffset
			if action == "REMOVE" then
				if sectionIndex then
					self._sectionNumRows[sectionIndex] = self._sectionNumRows[sectionIndex] - #uuids
				end
				if #uuids > 0 then
					table.removemulti(self._data, startIndex, #uuids)
				end
				for _, uuid in ipairs(uuids) do
					local itemString = self._itemString[uuid]
					assert(itemString)
					self._itemString[uuid] = nil
					self._icon[uuid] = nil
					self._text[uuid] = nil
					if self._selectedData[itemString] then
						self._selectedData[itemString] = nil
						selectionChanged = true
					end
				end
				self:_RemoveRows(rowStartOffset + startIndex, #uuids)
				dataLen = dataLen - #uuids
			elseif action == "INSERT" then
				if sectionIndex then
					self._sectionNumRows[sectionIndex] = self._sectionNumRows[sectionIndex] + #uuids
				end
				Table.InsertFill(self._data, startIndex, #uuids, 0)
				for i, uuid in ipairs(uuids) do
					self._data[startIndex + i - 1] = uuid
					local itemString, icon, text = query:GetSelectedFieldsByUUID(uuid)
					self._itemString[uuid] = itemString
					self._icon[uuid] = icon
					self._text[uuid] = text
				end
				self:_AddRows(rowStartOffset + startIndex, #uuids)
				dataLen = dataLen + #uuids
			else
				error("Invalid action: "..tostring(action))
			end
		end

		for i = 1, dataLen do
			local uuid = self._data[dataStartOffset + i]
			local itemString, icon, text = query:GetSelectedFieldsByUUID(uuid)
			local prevItemString = self._itemString[uuid]
			if prevItemString ~= itemString then
				self._itemString[uuid] = itemString
				if self._selectedData[prevItemString] then
					-- Just clear the previous selection
					self._selectedData[prevItemString] = nil
					selectionChanged = true
				end
			end
			if self._icon[uuid] ~= icon or self._text[uuid] ~= text then
				self._icon[uuid] = icon
				self._text[uuid] = text
				self:_DrawItemRowIconAndText(self:_GetRow(rowStartOffset + i), uuid)
			end
		end
	else
		-- We weren't able to calculate the diff, so just rebuild this section completely
		assert(not next(private.prevSelectedTemp))
		local prevSelectionHash = Math.CalculateHash(self._selectedData)
		for itemString in pairs(self._selectedData) do
			private.prevSelectedTemp[itemString] = true
		end

		if dataLen == #self._data then
			wipe(self._data)
			wipe(self._itemString)
			wipe(self._icon)
			wipe(self._text)
			wipe(self._selectedData)
		else
			for i = 1, dataLen do
				local uuid = self._data[dataStartOffset + i]
				local prevItemString = self._itemString[uuid]
				self._itemString[uuid] = nil
				self._icon[uuid] = nil
				self._text[uuid] = nil
				if self._selectedData[prevItemString] then
					-- Just clear the previous selection (may be set again when we add data back)
					self._selectedData[prevItemString] = nil
				end
			end
			if dataLen > 0 then
				table.removemulti(self._data, dataStartOffset + 1, dataLen)
			end
		end
		dataLen = query:Count()
		if dataLen > 0 then
			Table.InsertFill(self._data, dataStartOffset + 1, dataLen, 0)
		end
		for i, uuid in query:UUIDIterator() do
			self._data[dataStartOffset + i] = uuid
			local itemString, icon, text = query:GetSelectedFieldsByUUID(uuid)
			self._itemString[uuid] = itemString
			self._icon[uuid] = icon
			self._text[uuid] = text
			self._selectedData[itemString] = private.prevSelectedTemp[itemString]
		end
		wipe(private.prevSelectedTemp)

		if sectionIndex then
			self._sectionNumRows[sectionIndex] = dataLen
		end

		-- Calculate the number of visible rows
		local numVisibleDataRows = 0
		if #self._sectionNumRows > 0 then
			for i, numRows in ipairs(self._sectionNumRows) do
				numVisibleDataRows = numVisibleDataRows + (self._sectionCollapsed[i] and 0 or numRows)
			end
		else
			numVisibleDataRows = #self._data
		end
		self:_SetNumRows(numVisibleDataRows + #self._headings)
		self:Draw()

		selectionChanged = Math.CalculateHash(self._selectedData) ~= prevSelectionHash
	end

	if sectionIndex then
		TempTable.Release(oldUUIDs)
	end

	if self._onSelectionChangedHandler and selectionChanged then
		self:_onSelectionChangedHandler()
	end
	query:SetUpdatesPaused(false)
end

function ItemList.__protected:_HandleRowAcquired(row)
	row:SetScript("OnMouseDown", self:__closure("_HandleRowMouseDown"))
	row:EnableDragging(self:__closure("_HandleRowDragStart"), self:__closure("_HandleRowDragStop"))

	-- Add the icon
	local icon = row:AddTexture("icon")
	icon:SetDrawLayer("ARTWORK", 1)
	icon:SetWidth(ICON_SIZE)
	icon:SetHeight(ICON_SIZE)

	-- Add the text
	local text = row:AddText("text")
	text:SetFont(Theme.GetFont("ITEM_BODY3"):GetWowFont())
	text:SetJustifyH("LEFT")

	-- Add the expander texture and its button
	local expander = row:AddTexture("expander")
	expander:SetDrawLayer("ARTWORK", 1)
	TextureAtlas.SetSize(expander, EXPANDER_TEXTURE_EXPANDED)

	-- Add the check texture
	local check = row:AddTexture("check")
	check:SetDrawLayer("ARTWORK", 1)
	TextureAtlas.SetTextureAndSize(check, CHECK_TEXTURE)

	-- Layout the elements
	expander:SetPoint("LEFT", Theme.GetColSpacing() / 2, 0)
	check:SetPoint("LEFT", (TextureAtlas.GetWidth(EXPANDER_TEXTURE_COLLAPSED) + INDENT_WIDTH - TextureAtlas.GetWidth(CHECK_TEXTURE) + Theme.GetColSpacing() / 2), 0)
	icon:SetPoint("LEFT", check, "RIGHT", ICON_SPACING, 0)
	text:SetPoint("RIGHT", -Theme.GetColSpacing(), 0)
end

function ItemList.__protected:_HandleRowReleased(row)
	row:SetScript("OnMouseDown", nil)
end

function ItemList.__protected:_HandleRowDraw(row)
	local sectionIndex, dataIndex = self:_GetRowDataIndex(row)
	if not dataIndex then
		local headingText = self._headings[sectionIndex]
		assert(headingText)
		self:_DrawHeadingRowLayout(row)
		self:_DrawHeadingRowText(row, headingText)
		self:_DrawHeadingCollapsedState(row, self._sectionCollapsed[sectionIndex])
	else
		local uuid = self._data[dataIndex]
		self:_DrawItemRowLayout(row)
		self:_DrawItemRowSelectedState(row, self._selectedData[self._itemString[uuid]])
		self:_DrawItemRowIconAndText(row, uuid)
	end
end

function ItemList.__private:_DrawHeadingRowLayout(row)
	-- Hide the icon and check
	local icon = row:GetTexture("icon")
	icon:Hide()
	local check = row:GetTexture("check")
	check:Hide()
	-- Show the expander
	local expander = row:GetTexture("expander")
	expander:Show()
	-- Show the text and anchor it to the expander
	local text = row:GetText("text")
	text:SetPoint("LEFT", expander, "RIGHT", ICON_SPACING, 0)
end

function ItemList.__private:_DrawHeadingRowText(row, headingText)
	row:GetText("text"):SetText(headingText)
end

function ItemList.__private:_DrawHeadingCollapsedState(row, isCollapsed)
	local expander = row:GetTexture("expander")
	TextureAtlas.SetTexture(expander, isCollapsed and EXPANDER_TEXTURE_COLLAPSED or EXPANDER_TEXTURE_EXPANDED)
end

function ItemList.__private:_DrawItemRowLayout(row)
	-- Show the icon
	local icon = row:GetTexture("icon")
	icon:Show()
	-- Hide the expander
	local expander = row:GetTexture("expander")
	expander:Hide()
	-- Show the text and anchor it to the icon
	local text = row:GetText("text")
	text:SetPoint("LEFT", icon, "RIGHT", ICON_SPACING, 0)
end

function ItemList.__private:_DrawItemRowSelectedState(row, isSelected)
	-- Update the check
	local check = row:GetTexture("check")
	if isSelected then
		check:Show()
	else
		check:Hide()
	end
end

function ItemList.__private:_DrawItemRowIconAndText(row, uuid)
	row:GetTexture("icon"):SetTexture(self._icon[uuid])
	row:GetText("text"):SetText(self._text[uuid])
end

function ItemList.__protected:_HandleRowEnter(row)
	-- Right-click and drag to select multiple rows
	if IsMouseButtonDown("RightButton") then
		self:_HandleRowClick(row, "LeftButton")
	end
	local _, dataIndex = self:_GetRowDataIndex(row)
	if not dataIndex then
		return
	end
	local itemString = self._itemString[self._data[dataIndex]]
	if not itemString then
		return
	end
	for _, query in ipairs(self._queries) do
		query:SetUpdatesPaused(true)
	end
	row:ShowTooltip(itemString)
	for _, query in ipairs(self._queries) do
		query:SetUpdatesPaused(false)
	end
end

function ItemList.__protected:_HandleRowLeave(row)
	-- TODO: Could this be handled by the ListRow code?
	-- The data might not exist anymore, so just hide the tooltip to be safe
	Tooltip.Hide()
end

function ItemList.__protected:_HandleRowClick(row, mouseButton)
	if mouseButton ~= "LeftButton" then
		-- right-clicks are translated into left clicks via RowOnMouseDown, so this just ignores the extra call
		return
	end
	local sectionIndex, dataIndex = self:_GetRowDataIndex(row)
	if dataIndex then
		local itemString = self._itemString[self._data[dataIndex]]
		if IsShiftKeyDown() or IsControlKeyDown() then
			UIUtils.HandleModifiedItemClick(itemString)
		else
			self._selectedData[itemString] = not self._selectedData[itemString] or nil
			self:_DrawItemRowSelectedState(row, self._selectedData[itemString])
			if self._onSelectionChangedHandler then
				self:_onSelectionChangedHandler()
			end
		end
	else
		self._sectionCollapsed[sectionIndex] = not self._sectionCollapsed[sectionIndex]
		self:_DrawHeadingCollapsedState(row, self._sectionCollapsed[sectionIndex])
		if self._sectionCollapsed[sectionIndex] then
			local numRows = self._sectionNumRows[sectionIndex]
			if numRows == 0 then
				-- The section is empty, so don't need to do anything
				return
			end
			self:_RemoveRows(row:GetDataIndex() + 1, numRows)
		else
			local numRows = self._sectionNumRows[sectionIndex]
			if numRows == 0 then
				-- The section is empty, so don't need to do anything
				return
			end
			self:_AddRows(row:GetDataIndex() + 1, numRows)
		end
	end
end

function ItemList.__private:_HandleRowMouseDown(row, mouseButton)
	if mouseButton ~= "RightButton" then
		return
	end
	self:_HandleRowClick(row, "LeftButton")
end

function ItemList.__private:_HandleRowDragStart(row)
	local _, dataIndex = self:_GetRowDataIndex(row)
	if not dataIndex then
		-- Ignore drag starting from section heading
		return
	end
	assert(dataIndex)
	local uuid = self._data[dataIndex]
	local itemString = self._itemString[uuid]
	local text = self._text[uuid]
	self._moveFrame:Show()
	self._moveFrame:SetHeight(ROW_HEIGHT)
	local moveFrameText = self._moveFrame:GetElement("text")
	wipe(self._dragItems)
	if self:GetNumSelected() == 0 then
		moveFrameText:SetText(text)
		tinsert(self._dragItems, itemString)
	else
		moveFrameText:SetFormattedText(L["Selected Items (%d)"], self:GetNumSelected())
		self:GetSelectedItems(self._dragItems)
	end
	moveFrameText:SetWidth(1000)
	moveFrameText:Draw()
	self._moveFrame:SetWidth(moveFrameText:GetStringWidth() + MOVE_FRAME_PADDING * 2)
	self._moveFrame:Draw()
	DragContext.Set(self._dragItems)
end

function ItemList.__private:_HandleRowDragStop()
	self._moveFrame:Hide()
	private.dragContextTimer:RunForFrames(1)
end

function ItemList.__private:_GetRowDataIndex(row)
	local visibleDataIndex = row:GetDataIndex()
	if #self._sectionNumRows > 0 then
		local sectionOffset, dataOffset = 0, 0
		for i, numRows in ipairs(self._sectionNumRows) do
			if visibleDataIndex == sectionOffset + 1 then
				-- This is a section heading row
				return i, nil
			end
			if self._sectionCollapsed[i] then
				-- This section is collapsed, so advance the dataOffset to account for it
				dataOffset = dataOffset + numRows
				sectionOffset = sectionOffset + 1
			else
				if visibleDataIndex > sectionOffset + 1 and visibleDataIndex <= sectionOffset + numRows + 1 then
					-- The data is within this section
					return i, dataOffset + visibleDataIndex - i
				end
				-- Not in this section, so advance the section offset past it
				sectionOffset = sectionOffset + numRows + 1
			end
		end
		error("Failed to find data index")
	else
		return nil, visibleDataIndex
	end
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.MoveFrameOnUpdate(frame)
	local uiScale = frame:_GetBaseFrame():GetEffectiveScale()
	local x, y = GetCursorPosition()
	x = x / uiScale
	y = y / uiScale
	frame:_GetBaseFrame():SetPoint("CENTER", UIParent, "BOTTOMLEFT", x, y)
end
