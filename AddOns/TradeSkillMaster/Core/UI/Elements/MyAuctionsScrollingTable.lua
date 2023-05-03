-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local MyAuctionsScrollingTable = TSM.Include("LibTSMClass").DefineClass("MyAuctionsScrollingTable", TSM.UI.QueryScrollingTable)
local Environment = TSM.Include("Environment")
local TempTable = TSM.Include("Util.TempTable")
local UIElements = TSM.Include("UI.UIElements")
UIElements.Register(MyAuctionsScrollingTable)
TSM.UI.MyAuctionsScrollingTable = MyAuctionsScrollingTable



-- ============================================================================
-- Public Class Methods
-- ============================================================================

function MyAuctionsScrollingTable.__init(self)
	self.__super:__init()
	self._selectionSortValue = nil
	self._selectionAuctionId = nil
end

function MyAuctionsScrollingTable.Release(self)
	self._selectionSortValue = nil
	self._selectionAuctionId = nil
	self.__super:Release()
end

--- Sets the selected record.
-- @tparam MyAuctionsScrollingTable self The my auctions scrolling table object
-- @param selection The selected record or nil to clear the selection
-- @tparam[opt=false] bool redraw Whether or not to redraw the scrolling table
-- @treturn MyAuctionsScrollingTable The my auctions scrolling table object
function MyAuctionsScrollingTable.SetSelection(self, selection, redraw)
	self.__super:SetSelection(selection, redraw)
	if self._selection then
		local selectedRow = self:GetSelection()
		local sortField = Environment.IsRetail() and self._tableInfo:_GetSortFieldById(self._sortCol) or "index"
		self._selectionSortValue = selectedRow:GetField(sortField)
		if type(self._selectionSortValue) == "string" then
			self._selectionSortValue = strlower(self._selectionSortValue)
		end
		self._selectionAuctionId = selectedRow:GetField("auctionId")
	else
		self._selectionSortValue = nil
		self._selectionAuctionId = nil
	end
	return self
end

--- Selects the next row.
-- @tparam MyAuctionsScrollingTable self The my auctions scrolling table object
-- @treturn MyAuctionsScrollingTable The my auctions scrolling table object
function MyAuctionsScrollingTable.SelectNextRow(self)
	local newSelection = nil
	for i = 1, #self._data - 1 do
		if self._data[i] == self._selection then
			for j = i + 1, #self._data do
				if not self._selectionValidator or self:_selectionValidator(self._query:GetResultRowByUUID(self._data[j])) then
					newSelection = self._data[j]
					break
				end
			end
			break
		end
	end
	self:SetSelection(newSelection, true)
	return self
end



-- ============================================================================
-- Private Class Methods
-- ============================================================================

function MyAuctionsScrollingTable._UpdateSortFromQuery(self)
	if self._tableInfo:_IsSortEnabled() then
		assert(Environment.IsRetail())
		local sortField, sortAscending = self._query:GetOrderBy(2)
		if sortField then
			self._sortCol = self._tableInfo:_GetIdBySortField(sortField)
			self._sortAscending = sortAscending
		else
			self._sortCol = nil
			self._sortAscending = nil
		end
	end
end

function MyAuctionsScrollingTable._UpdateData(self)
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
		local row = self._query:GetResultRowByUUID(uuid)
		if (uuid == prevSelection or (row:GetField("auctionId") == self._selectionAuctionId)) and not row:GetField("isPending") then
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
		local newSelection = nil
		-- try to select the next row based on the sorting
		local sortField = Environment.IsRetail() and self._tableInfo:_GetSortFieldById(self._sortCol) or "index"
		local sortAscending = Environment.IsRetail() and self._sortAscending
		for _, uuid in ipairs(self._data) do
			local row = self._query:GetResultRowByUUID(uuid)
			local sortValue = row:GetField(sortField)
			if type(sortValue) == "string" then
				sortValue = strlower(sortValue)
			end
			if (sortAscending and sortValue > self._selectionSortValue) or (not sortAscending and sortValue < self._selectionSortValue) then
				if not self._selectionValidator or self:_selectionValidator(row) then
					newSelection = uuid
					break
				end
			elseif Environment.IsRetail() and sortValue == self._selectionSortValue and row:GetField("auctionId") > self._selectionAuctionId then
				if not self._selectionValidator or self:_selectionValidator(row) then
					newSelection = uuid
					break
				end
			end
		end
		-- select either the next row
		self:SetSelection(newSelection)
	end
	if self._onDataUpdated then
		self:_onDataUpdated()
	end
end

function MyAuctionsScrollingTable._ToggleSort(self, id)
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

	assert(Environment.IsRetail())
	self._query:ResetOrderBy()
		:OrderBy("saleStatus", false)
		:OrderBy(sortField, self._sortAscending)
		:OrderBy("auctionId", true)
	self:_UpdateData()
	self:Draw()
end
