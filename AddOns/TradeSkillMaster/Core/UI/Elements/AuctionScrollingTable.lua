-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Environment = TSM.Include("Environment")
local L = TSM.Include("Locale").GetTable()
local Math = TSM.Include("Util.Math")
local Money = TSM.Include("Util.Money")
local String = TSM.Include("Util.String")
local TempTable = TSM.Include("Util.TempTable")
local Theme = TSM.Include("Util.Theme")
local TextureAtlas = TSM.Include("Util.TextureAtlas")
local ScriptWrapper = TSM.Include("Util.ScriptWrapper")
local ItemInfo = TSM.Include("Service.ItemInfo")
local PlayerInfo = TSM.Include("Service.PlayerInfo")
local UIUtils = TSM.Include("UI.UIUtils")
local AuctionScrollingTable = TSM.Include("LibTSMClass").DefineClass("AuctionScrollingTable", TSM.UI.ScrollingTable)
local UIElements = TSM.Include("UI.UIElements")
UIElements.Register(AuctionScrollingTable)
TSM.UI.AuctionScrollingTable = AuctionScrollingTable
local private = {
	sortContext = {
		rowSortValue = {},
		baseSortValue = {},
		sortValue = {},
		self = nil,
	},
	subRowsTemp = {},
}
local ICON_SIZE = 12



-- ============================================================================
-- Public Class Methods
-- ============================================================================

function AuctionScrollingTable.__init(self)
	self.__super:__init()
	self._auctionScan = nil
	self._marketValueFunc = nil
	self._sortCol = nil
	self._sortAscending = nil
	self._expanded = {}
	self._firstSubRowByItem = {}
	self._rowByItem = {}
	self._isPlayerCache = {}
	self._browseResultsVisible = false
	self._firstUnscannedItem = nil
	self._selectionBaseItemString = nil
	self._selectionBaseSortValue = nil
	self._selectionSubRowIndex = nil
	self._currentSearchItem = nil
	self._onResultsUpdated = function()
		self:_ForceLastDataUpdate()
		self:UpdateData(true)
	end
	self._getNextSearchItem = function()
		if self._selectionBaseItemString and not self._firstSubRowByItem[self._selectionBaseItemString] then
			-- the selected row has priority
			return self._selectionBaseItemString
		end
		return self._firstUnscannedItem
	end
	self._currentSearchChanged = function(_, baseItemString)
		if not baseItemString then
			-- the search was paused or unpaused, so just update the current item
			baseItemString = self._currentSearchItem
		end
		self._currentSearchItem = baseItemString
		-- layout the new row to update it's action icon state
		for _, row in ipairs(self._rows) do
			local data = row:GetData()
			if data and not data:IsSubRow() and data:GetBaseItemString() == baseItemString then
				row:_LayoutDataRow()
			end
		end
	end
end

function AuctionScrollingTable.Acquire(self)
	self.__super:Acquire()
	-- temporarily set a context table so we can create the table columns (should be overridden later)
	self:GetScrollingTableInfo()
		:NewColumn("item")
			:SetHeaderIndent("8")
			:SetTitle(L["Item"])
			:SetFont("ITEM_BODY3")
			:SetJustifyH("LEFT")
			:SetIconSize(ICON_SIZE)
			:SetTextFunction(private.GetItemCellText)
			:SetIconFunction(private.GetItemCellIcon)
			:SetTooltipFunction(private.GetItemCellTooltip)
			:SetExpanderStateFunction(private.GetExpanderState)
			:SetBadgeStateFunction(private.GetBadgeState)
			:SetActionIconInfo(1, 12, private.GetPendingIcon)
			:SetActionIconClickHandler(private.OnPendingIconClick)
			:DisableHiding()
			:Commit()
		:NewColumn("ilvl")
			:SetTitle(L["ilvl"])
			:SetFont("TABLE_TABLE1")
			:SetJustifyH("RIGHT")
			:SetTextFunction(private.GetItemLevelCellText)
			:Commit()
	if Environment.IsRetail() then
		self:GetScrollingTableInfo()
			:NewColumn("qty")
				:SetTitle(L["Qty"])
				:SetFont("TABLE_TABLE1")
				:SetJustifyH("RIGHT")
				:SetTextFunction(private.GetAuctionsQuantityText)
				:Commit()
	else
		self:GetScrollingTableInfo()
			:NewColumn("posts")
				:SetTitle(L["Posts"])
				:SetFont("TABLE_TABLE1")
				:SetJustifyH("RIGHT")
				:SetTextFunction(private.GetAuctionsPostsText)
				:Commit()
			:NewColumn("stack")
				:SetTitle(L["Stack"])
				:SetFont("TABLE_TABLE1")
				:SetJustifyH("RIGHT")
				:SetTextFunction(private.GetAuctionsStackText)
				:Commit()
	end
	self:GetScrollingTableInfo()
		:NewColumn("timeLeft")
			:SetTitleIcon("iconPack.14x14/Clock")
			:SetFont("TABLE_TABLE1")
			:SetJustifyH("CENTER")
			:SetTextFunction(private.GetTimeLeftCellText)
			:Commit()
		:NewColumn("seller")
			:SetTitle(L["Seller"])
			:SetFont("ITEM_BODY3")
			:SetJustifyH("LEFT")
			:SetTextFunction(private.GetSellerCellText)
			:Commit()
		:NewColumn("itemBid")
			:SetTitle(L["Bid (item)"])
			:SetFont("TABLE_TABLE1")
			:SetJustifyH("RIGHT")
			:SetTextFunction(private.GetItemBidCellText)
			:Commit()
		:NewColumn("bid")
			:SetTitle(Environment.HasFeature(Environment.FEATURES.AH_STACKS) and L["Bid (stack)"] or L["Bid (total)"])
			:SetFont("TABLE_TABLE1")
			:SetJustifyH("RIGHT")
			:SetTextFunction(private.GetBidCellText)
			:Commit()
		:NewColumn("itemBuyout")
			:SetTitle(L["Buyout (item)"])
			:SetFont("TABLE_TABLE1")
			:SetJustifyH("RIGHT")
			:SetTextFunction(private.GetItemBuyoutCellText)
			:Commit()
		:NewColumn("buyout")
			:SetTitle(Environment.HasFeature(Environment.FEATURES.AH_STACKS) and L["Buyout (stack)"] or L["Buyout (total)"])
			:SetFont("TABLE_TABLE1")
			:SetJustifyH("RIGHT")
			:SetTextFunction(private.GetBuyoutCellText)
			:Commit()
		:NewColumn("bidPct")
			:SetTitle(BID.." %")
			:SetFont("TABLE_TABLE1")
			:SetJustifyH("RIGHT")
			:SetTextFunction(private.GetBidPercentCellText)
			:Commit()
		:NewColumn("pct")
			:SetTitle("%")
			:SetFont("TABLE_TABLE1")
			:SetJustifyH("RIGHT")
			:SetTextFunction(private.GetPercentCellText)
			:Commit()
		:Commit()
	self._sortCol = "pct"
	self._sortAscending = true
end

function AuctionScrollingTable.Release(self)
	if self._auctionScan then
		self._auctionScan:RemoveResultsUpdateCallback(self._onResultsUpdated)
		self._auctionScan:SetNextSearchItemFunction(nil)
		self._auctionScan:SetScript("OnCurrentSearchChanged", nil)
	end
	self._auctionScan = nil
	self._sortCol = nil
	self._sortAscending = nil
	self._marketValueFunc = nil
	self._browseResultsVisible = false
	self._firstUnscannedItem = nil
	wipe(self._expanded)
	wipe(self._firstSubRowByItem)
	wipe(self._rowByItem)
	wipe(self._isPlayerCache)
	for _, row in ipairs(self._rows) do
		ScriptWrapper.Clear(row._frame, "OnDoubleClick")
		for _, tooltipFrame in pairs(row._buttons) do
			ScriptWrapper.Clear(tooltipFrame, "OnDoubleClick")
		end
	end
	self._selectionBaseItemString = nil
	self._selectionBaseSortValue = nil
	self._selectionSubRowIndex = nil
	self._currentSearchItem = nil
	self.__super:Release()
end

--- Sets the @{DatabaseQuery} source for this table.
-- This query is used to populate the entries in the auction scrolling table.
-- @tparam AuctionScrollingTable self The auction scrolling table object
-- @tparam AuctionScanManager auctionScan The auction scan object
-- @tparam[opt=false] bool redraw Whether or not to redraw the scrolling table
-- @treturn AuctionScrollingTable The auction scrolling table object
function AuctionScrollingTable.SetAuctionScan(self, auctionScan, redraw)
	if auctionScan == self._auctionScan and not redraw then
		return self
	end
	if self._auctionScan then
		self._auctionScan:RemoveResultsUpdateCallback(self._onResultsUpdated)
		self._auctionScan:SetNextSearchItemFunction(nil)
		self._auctionScan:SetScript("OnCurrentSearchChanged", nil)
	end
	self._auctionScan = auctionScan
	self._auctionScan:AddResultsUpdateCallback(self._onResultsUpdated)
	self._auctionScan:SetNextSearchItemFunction(self._getNextSearchItem)
	self._auctionScan:SetScript("OnCurrentSearchChanged", self._currentSearchChanged)
	wipe(self._expanded)
	self:UpdateData(redraw)
	return self
end

--- Sets whether or not browse results are visible.
-- @tparam AuctionScrollingTable self The auction scrolling table object
-- @tparam boolean visible Whether or not browse results should be visible
-- @treturn AuctionScrollingTable The auction scrolling table object
function AuctionScrollingTable.SetBrowseResultsVisible(self, visible)
	self._browseResultsVisible = visible
	self:_ForceLastDataUpdate()
	return self
end

--- Sets the market value function.
-- @tparam AuctionScrollingTable self The auction scrolling table object
-- @tparam function func The function to call with the item DB record to get the market value
-- @treturn AuctionScrollingTable The auction scrolling table object
function AuctionScrollingTable.SetMarketValueFunction(self, func)
	if self._marketValueFunc ~= func then
		self._marketValueFunc = func
		self:UpdateData(false)
	end
	return self
end

--- Gets the selected result row.
-- @tparam AuctionScrollingTable self The auction scrolling table object
-- @return The selected result row or nil if there's no selection
function AuctionScrollingTable.GetSelection(self)
	local selection = self.__super:GetSelection()
	if not selection then
		return nil
	end
	local baseItemString = selection:GetBaseItemString()
	if not selection:IsSubRow() then
		selection = self._firstSubRowByItem[baseItemString] or selection
	end
	return selection
end

--- Sets the selected result row.
-- @tparam AuctionScrollingTable self The auction scrolling table object
-- @param selection The selected result row or nil to clear the selection
-- @treturn AuctionScrollingTable The auction scrolling table object
function AuctionScrollingTable.SetSelection(self, selection)
	if not selection then
		self._selectionBaseItemString = nil
		self._selectionBaseSortValue = nil
		self._selectionSubRowIndex = nil
		return self.__super:SetSelection(selection)
	end
	local baseItemString = selection:GetBaseItemString()
	if selection == self._firstSubRowByItem[baseItemString] then
		selection = self._rowByItem[baseItemString]
		assert(selection)
	end
	self._selectionBaseItemString = baseItemString
	self._selectionBaseSortValue = self:_GetSortValue(selection, self._sortCol, self._sortAscending)
	local firstIndex = nil
	for i, data in ipairs(self._data) do
		if not firstIndex and data:GetBaseItemString() == baseItemString then
			firstIndex = i
		end
		if data == selection then
			self._selectionSubRowIndex = i - firstIndex + 1
			break
		end
	end
	assert(self._selectionSubRowIndex)
	return self.__super:SetSelection(selection)
end

--- Expands a single auction result.
-- If there is a single top-level auction result, this will cause it to be expanded. Otherwise, this does nothing.
-- @tparam AuctionScrollingTable self The auction scrolling table object
-- @treturn AuctionScrollingTable The auction scrolling table object
function AuctionScrollingTable.ExpandSingleResult(self)
	-- if only one result, expand it
	local singleResult = nil
	for baseItemString in pairs(self._firstSubRowByItem) do
		if not singleResult then
			singleResult = baseItemString
		elseif singleResult then
			singleResult = nil
			break
		end
	end
	if singleResult then
		self._expanded[singleResult] = true
		self:UpdateData(true)
	end
end

--- Sets the % column header tooltip.
-- @tparam AuctionScrollingTable self The auction scrolling table object
-- @param tooltip The tooltip
-- @treturn AuctionScrollingTable The auction scrolling table object
function AuctionScrollingTable.SetPctTooltip(self, tooltip)
	self._tableInfo:GetColById("pct"):SetHeaderTooltip(tooltip)
	return self
end

function AuctionScrollingTable.Draw(self)
	if self._lastDataUpdate == nil then
		self:_IgnoreLastDataUpdate()
	end
	self.__super:Draw()
	self._header:SetSort(self._sortCol, self._sortAscending)
end



-- ============================================================================
-- Private Class Methods
-- ============================================================================

function AuctionScrollingTable._UpdateData(self)
	if not self._auctionScan then
		return
	end
	local sortKey = self._sortCol
	wipe(self._data)
	wipe(self._firstSubRowByItem)
	wipe(self._rowByItem)
	self._firstUnscannedItem = nil
	private.sortContext.self = self

	local rows = TempTable.Acquire()
	local subRows = TempTable.Acquire()
	local subRowsStart = TempTable.Acquire()
	local subRowsEnd = TempTable.Acquire()
	local sortAscending = self._sortAscending
	for _, query in self._auctionScan:QueryIterator() do
		for baseItemString, row in query:BrowseResultsIterator() do
			if not self._rowByItem[baseItemString] and row:HasItemInfo() then
				assert(not next(private.subRowsTemp))
				local hasSubRows = false
				for _, subRow in row:SubRowIterator() do
					hasSubRows = true
					local sortValue = self:_GetSortValue(subRow, sortKey, sortAscending)
					private.sortContext.sortValue[subRow] = sortValue
					tinsert(private.subRowsTemp, subRow)
				end
				if hasSubRows then
					-- sort all the subRows
					sort(private.subRowsTemp, sortAscending and private.SortSubRowAscendingHelper or private.SortSubRowDescendingHelper)
					-- grab the first subRow which is shown when this item is collapsed
					assert(not self._firstSubRowByItem[baseItemString])
					local firstSubRow = private.subRowsTemp[1]
					self._firstSubRowByItem[baseItemString] = firstSubRow
					private.sortContext.baseSortValue[baseItemString] = private.sortContext.sortValue[firstSubRow]
					private.sortContext.rowSortValue[row] = private.sortContext.baseSortValue[baseItemString]
					-- add all the subRows if this item is expanded
					if self._expanded[baseItemString] and #private.subRowsTemp > 1 then
						subRowsStart[baseItemString] = #subRows + 1
						for i = 2, #private.subRowsTemp do
							tinsert(subRows, private.subRowsTemp[i])
						end
						subRowsEnd[baseItemString] = #subRows
					end
				elseif self._browseResultsVisible then
					private.sortContext.baseSortValue[baseItemString] = self:_GetSortValue(row, sortKey, sortAscending)
					private.sortContext.rowSortValue[row] = private.sortContext.baseSortValue[baseItemString]
				end

				-- insert this row
				if hasSubRows or self._browseResultsVisible then
					self._rowByItem[baseItemString] = row
					tinsert(rows, row)
				else
					self._rowByItem[baseItemString] = private.subRowsTemp[1]
				end
				wipe(private.subRowsTemp)
			end
		end
	end

	-- sort the rows
	sort(rows, sortAscending and private.SortRowAscendingHelper or private.SortRowDescendingHelper)

	-- insert all the data
	local hasPrevSelection, nextIndexSelection = false, nil
	for _, row in ipairs(rows) do
		local baseItemString = row:GetBaseItemString()
		if not self._firstSubRowByItem[baseItemString] and not self._firstUnscannedItem then
			self._firstUnscannedItem = baseItemString
		end
		tinsert(self._data, row)
		hasPrevSelection = hasPrevSelection or self._selection == row
		local startIndex = subRowsStart[baseItemString]
		if startIndex then
			for i = startIndex, subRowsEnd[baseItemString] do
				local subRow = subRows[i]
				tinsert(self._data, subRow)
				hasPrevSelection = hasPrevSelection or self._selection == subRow
			end
			if not hasPrevSelection and not nextIndexSelection then
				if self._selectionBaseItemString == baseItemString and self._selectionSubRowIndex then
					-- check if we can find the new selection based on the sub row index (subtract 2 because subRows start from index 2)
					local index = startIndex + self._selectionSubRowIndex - 2
					if index <= subRowsEnd[baseItemString] then
						nextIndexSelection = subRows[index]
					end
				end
			end
		end
	end
	TempTable.Release(rows)
	TempTable.Release(subRows)
	TempTable.Release(subRowsStart)
	TempTable.Release(subRowsEnd)

	if self._selection and not hasPrevSelection then
		-- the previous selection doesn't exist anymore
		local firstSubRow = self._firstSubRowByItem[self._selectionBaseItemString]
		if nextIndexSelection then
			-- we can select the next subRow for the same item
			self:SetSelection(nextIndexSelection)
		elseif firstSubRow then
			-- select the first row of the same item
			self:SetSelection(firstSubRow)
		elseif self._selectionBaseSortValue then
			-- select the next row by sort value (if it exists)
			local bestSortValue, bestNewSelection = nil, nil
			for _, row in ipairs(self._data) do
				local baseItemString = row:GetBaseItemString()
				local sortValue = private.sortContext.baseSortValue[baseItemString]
				if sortValue and (row == self._firstSubRowByItem[baseItemString] or row == self._rowByItem[baseItemString]) then
					local isBetterSortValue = nil
					if self._sortAscending then
						isBetterSortValue = (not bestSortValue or sortValue < bestSortValue) and (sortValue > self._selectionBaseSortValue or (sortValue == self._selectionBaseSortValue and baseItemString > self._selectionBaseItemString))
					else
						isBetterSortValue = (not bestSortValue or sortValue > bestSortValue) and (sortValue < self._selectionBaseSortValue or (sortValue == self._selectionBaseSortValue and baseItemString < self._selectionBaseItemString))
					end
					if isBetterSortValue then
						bestSortValue = sortValue
						bestNewSelection = row
					end
				end
			end
			self:SetSelection(bestNewSelection)
		else
			self:SetSelection(nil)
		end
	elseif self._selection then
		self._selectionBaseSortValue = private.sortContext.baseSortValue[self._selection:GetBaseItemString()]
	end

	wipe(private.sortContext.sortValue)
	wipe(private.sortContext.rowSortValue)
	wipe(private.sortContext.baseSortValue)
	private.sortContext.self = nil
end

function AuctionScrollingTable._GetSortValue(self, row, id, isAscending)
	if id == "item" then
		local baseItemString = row:GetBaseItemString()
		return ItemInfo.GetName(baseItemString)
	elseif id == "ilvl" then
		return ItemInfo.GetItemLevel(row:GetItemString() or row:GetBaseItemString())
	elseif id == "posts" then
		local _, numAuctions = row:GetQuantities()
		return numAuctions or (isAscending and math.huge or -math.huge)
	elseif id == "stack" then
		local quantity = row:GetQuantities()
		return quantity or (isAscending and math.huge or -math.huge)
	elseif id == "qty" then
		local quantity, numAuctions = row:GetQuantities()
		if not quantity or not numAuctions then
			return isAscending and math.huge or -math.huge
		end
		return quantity * numAuctions
	elseif id == "timeLeft" then
		if not row:IsSubRow() then
			return isAscending and math.huge or -math.huge
		end
		local timeLeft = row:GetListingInfo()
		return timeLeft
	elseif id == "seller" then
		if not row:IsSubRow() then
			return ""
		end
		local ownerStr = row:GetOwnerInfo()
		return ownerStr
	elseif id == "itemBid" then
		if not row:IsSubRow() then
			return isAscending and math.huge or -math.huge
		end
		local _, itemDisplayedBid = row:GetDisplayedBids()
		return itemDisplayedBid
	elseif id == "bid" then
		if not row:IsSubRow() then
			return isAscending and math.huge or -math.huge
		end
		local displayedBid = row:GetDisplayedBids()
		return displayedBid
	elseif id == "itemBuyout" then
		local _, itemBuyout, minItemBuyout = row:GetBuyouts()
		itemBuyout = itemBuyout or minItemBuyout or 0
		return itemBuyout == 0 and (isAscending and math.huge or -math.huge) or itemBuyout
	elseif id == "buyout" then
		local buyout = row:GetBuyouts() or 0
		return buyout == 0 and (isAscending and math.huge or -math.huge) or buyout
	elseif id == "bidPct" then
		local _, pct = self:_GetMarketValuePct(row)
		return pct or (isAscending and math.huge or -math.huge)
	elseif id == "pct" then
		local pct = self:_GetMarketValuePct(row)
		return pct or (isAscending and math.huge or -math.huge)
	else
		error("Invalid sort col id: "..tostring(id))
	end
end

function AuctionScrollingTable._GetTableRow(self, isHeader)
	local row = self.__super:_GetTableRow(isHeader)
	if not isHeader then
		for _, tooltipFrame in pairs(row._buttons) do
			ScriptWrapper.SetPropagate(tooltipFrame, "OnDoubleClick")
		end
		ScriptWrapper.Set(row._frame, "OnDoubleClick", private.RowOnDoubleClick, row)
	end
	return row
end

function AuctionScrollingTable._GetMarketValuePct(self, row)
	if not self._marketValueFunc then
		-- no market value function was set
		return nil, nil
	end
	local marketValue = self._marketValueFunc(row) or 0
	if marketValue == 0 then
		-- this item doesn't have a market value
		return nil, nil
	end
	local _, itemBuyout, minItemBuyout = row:GetBuyouts()
	itemBuyout = itemBuyout or minItemBuyout or 0
	local bidPct = nil
	if row:IsSubRow() then
		local _, itemDisplayedBid = row:GetDisplayedBids()
		bidPct = itemDisplayedBid / marketValue
	end
	return itemBuyout > 0 and itemBuyout / marketValue or nil, bidPct
end

function AuctionScrollingTable._ToggleSort(self, id)
	if not self._sortCol or not self._auctionScan then
		-- sorting disabled so ignore
		return
	end

	local sortCol = nil
	for _, col in ipairs(self._tableInfo:_GetCols()) do
		if col:_GetId() == id then
			sortCol = col:_GetId()
		end
	end
	assert(sortCol)
	if sortCol == self._sortCol then
		self._sortAscending = not self._sortAscending
	else
		self._sortCol = sortCol
		self._sortAscending = true
	end
	if self._selection then
		self._selectionBaseSortValue = self:_GetSortValue(self._selection, self._sortCol, self._sortAscending)
	end
	self:UpdateData(true)
end



-- ============================================================================
-- Local Script Handlers
-- ============================================================================

function private.RowOnDoubleClick(row, mouseButton)
	if mouseButton ~= "LeftButton" then
		return
	end
	local self = row._scrollingTable
	local subRow = row:GetData()
	local baseItemString = subRow:GetBaseItemString()
	self._expanded[baseItemString] = not self._expanded[baseItemString]
	self:UpdateData(true)
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.SortRowAscendingHelper(a, b)
	local sortContext = private.sortContext
	local aSortValue = sortContext.rowSortValue[a]
	local bSortValue = sortContext.rowSortValue[b]
	if aSortValue == bSortValue then
		return a:GetBaseItemString() < b:GetBaseItemString()
	end
	return aSortValue < bSortValue
end

function private.SortRowDescendingHelper(a, b)
	local sortContext = private.sortContext
	local aSortValue = sortContext.rowSortValue[a]
	local bSortValue = sortContext.rowSortValue[b]
	if aSortValue == bSortValue then
		return a:GetBaseItemString() > b:GetBaseItemString()
	end
	return aSortValue > bSortValue
end

function private.SortSubRowAscendingHelper(a, b)
	local sortContext = private.sortContext
	local aBaseItemString = a:GetBaseItemString()
	local bBaseItemString = b:GetBaseItemString()
	if aBaseItemString == bBaseItemString then
		local aSortValue = sortContext.sortValue[a]
		local bSortValue = sortContext.sortValue[b]
		if aSortValue == bSortValue then
			-- always show base records first
			local self = sortContext.self
			if self._firstSubRowByItem[aBaseItemString] == a then
				return true
			elseif self._firstSubRowByItem[bBaseItemString] == b then
				return false
			else
				-- order by buyout
				local _, aItemBuyout = a:GetBuyouts()
				local _, bItemBuyout = b:GetBuyouts()
				if aItemBuyout ~= bItemBuyout then
					return aItemBuyout < bItemBuyout
				end
				-- show the higher auctionId first
				local _, aAuctionId, aBrowseId = a:GetListingInfo()
				local _, bAuctionId, bBrowseId = b:GetListingInfo()
				if aAuctionId ~= bAuctionId then
					return aAuctionId > bAuctionId
				else
					return aBrowseId > bBrowseId
				end
			end
		end
		return aSortValue < bSortValue
	else
		-- we're sorting different items
		local aSortValue = sortContext.baseSortValue[aBaseItemString]
		local bSortValue = sortContext.baseSortValue[bBaseItemString]
		if aSortValue == bSortValue then
			return aBaseItemString < bBaseItemString
		end
		return aSortValue < bSortValue
	end
end

function private.SortSubRowDescendingHelper(a, b)
	local sortContext = private.sortContext
	local aBaseItemString = a:GetBaseItemString()
	local bBaseItemString = b:GetBaseItemString()
	if aBaseItemString == bBaseItemString then
		local aSortValue = sortContext.sortValue[a]
		local bSortValue = sortContext.sortValue[b]
		if aSortValue == bSortValue then
			-- always show base records first
			local self = sortContext.self
			if self._firstSubRowByItem[aBaseItemString] == a then
				return true
			elseif self._firstSubRowByItem[bBaseItemString] == b then
				return false
			else
				-- order by buyout
				local _, aItemBuyout = a:GetBuyouts()
				local _, bItemBuyout = b:GetBuyouts()
				if aItemBuyout ~= bItemBuyout then
					return aItemBuyout < bItemBuyout
				end
				-- show the higher auctionId first
				local _, aAuctionId, aBrowseId = a:GetListingInfo()
				local _, bAuctionId, bBrowseId = b:GetListingInfo()
				if aAuctionId ~= bAuctionId then
					return aAuctionId > bAuctionId
				else
					return aBrowseId > bBrowseId
				end
			end
		end
		return aSortValue > bSortValue
	else
		-- we're sorting different items
		local aSortValue = sortContext.baseSortValue[aBaseItemString]
		local bSortValue = sortContext.baseSortValue[bBaseItemString]
		if aSortValue == bSortValue then
			return aBaseItemString > bBaseItemString
		end
		return aSortValue > bSortValue
	end
end

function private.GetItemCellText(self, subRow)
	local isIndented = subRow:IsSubRow()
	if not subRow:IsSubRow() then
		local baseItemString = subRow:GetBaseItemString()
		local itemString = subRow:GetItemString()
		subRow = self._firstSubRowByItem[baseItemString]
		if not subRow then
			return UIUtils.GetDisplayItemName(itemString or baseItemString, 0)
		end
	end
	local itemLink = subRow:GetLinks()
	-- TODO: use theme constant for indented tint pct
	return UIUtils.GetDisplayItemName(itemLink, isIndented and -20 or 0)
end

function private.GetItemLevelCellText(self, subRow)
	if not subRow:IsSubRow() then
		local baseItemString = subRow:GetBaseItemString()
		local itemString = subRow:GetItemString()
		subRow = self._firstSubRowByItem[baseItemString]
		if not subRow then
			return ItemInfo.GetItemLevel(itemString or baseItemString)
		end
	end
	local itemLink = subRow:GetLinks()
	return ItemInfo.GetItemLevel(itemLink)
end

function private.GetAuctionsQuantityText(self, subRow)
	if not subRow:IsSubRow() then
		local baseItemString = subRow:GetBaseItemString()
		subRow = self._firstSubRowByItem[baseItemString] or subRow
	end
	local quantity, numAuctions = subRow:GetQuantities()
	if not quantity or not numAuctions then
		return ""
	end
	return quantity * numAuctions
end

function private.GetAuctionsPostsText(self, subRow)
	if not subRow:IsSubRow() then
		local baseItemString = subRow:GetBaseItemString()
		subRow = self._firstSubRowByItem[baseItemString] or subRow
	end
	local _, numAuctions = subRow:GetQuantities()
	return numAuctions
end

function private.GetAuctionsStackText(self, subRow)
	if not subRow:IsSubRow() then
		local baseItemString = subRow:GetBaseItemString()
		subRow = self._firstSubRowByItem[baseItemString] or subRow
	end
	local quantity = subRow:GetQuantities()
	return quantity
end

function private.GetTimeLeftCellText(self, subRow)
	if not subRow:IsSubRow() then
		local baseItemString = subRow:GetBaseItemString()
		subRow = self._firstSubRowByItem[baseItemString]
		if not subRow then
			return ""
		end
	end
	local timeLeft = subRow:GetListingInfo()
	return UIUtils.GetTimeLeftString(timeLeft)
end

function private.GetSellerCellText(self, subRow)
	if not subRow:IsSubRow() then
		local baseItemString = subRow:GetBaseItemString()
		subRow = self._firstSubRowByItem[baseItemString]
		if not subRow then
			return "", 1, 1, 1, 1
		end
	end
	local ownerStr = subRow:GetOwnerInfo()
	if self._isPlayerCache[ownerStr] == nil then
		self._isPlayerCache[ownerStr] = false
		for owner in String.SplitIterator(ownerStr, ",") do
			if PlayerInfo.IsPlayer(owner, true, true, true) then
				self._isPlayerCache[ownerStr] = true
				break
			end
		end
	end
	if self._isPlayerCache[ownerStr] then
		return ownerStr, 0.3, 0.6, 1, 1
	else
		return ownerStr, 1, 1, 1, 1
	end
end

function private.GetItemBidCellText(self, subRow)
	if not subRow:IsSubRow() then
		local baseItemString = subRow:GetBaseItemString()
		subRow = self._firstSubRowByItem[baseItemString]
		if not subRow then
			return ""
		end
	end
	local _, itemDisplayedBid = subRow:GetDisplayedBids()
	local _, _, _, isHighBidder = subRow:GetBidInfo()
	return Money.ToString(itemDisplayedBid, isHighBidder and Theme.GetColor("FEEDBACK_GREEN"):GetTextColorPrefix() or nil, "OPT_83_NO_COPPER")
end

function private.GetBidCellText(self, subRow)
	if not subRow:IsSubRow() then
		local baseItemString = subRow:GetBaseItemString()
		subRow = self._firstSubRowByItem[baseItemString]
		if not subRow then
			return ""
		end
	end
	local displayedBid = subRow:GetDisplayedBids()
	local _, _, _, isHighBidder = subRow:GetBidInfo()
	return Money.ToString(displayedBid, isHighBidder and Theme.GetColor("FEEDBACK_GREEN"):GetTextColorPrefix() or nil, "OPT_83_NO_COPPER")
end

function private.GetItemBuyoutCellText(self, subRow)
	if not subRow:IsSubRow() then
		local baseItemString = subRow:GetBaseItemString()
		subRow = self._firstSubRowByItem[baseItemString] or subRow
	end
	local _, itemBuyout, minItemBuyout = subRow:GetBuyouts()
	local value = itemBuyout or minItemBuyout
	if not value then
		return ""
	end
	return Money.ToString(value, nil, "OPT_83_NO_COPPER")
end

function private.GetBuyoutCellText(self, subRow)
	if not subRow:IsSubRow() then
		local baseItemString = subRow:GetBaseItemString()
		subRow = self._firstSubRowByItem[baseItemString] or subRow
	end
	local buyout = subRow:GetBuyouts()
	if not buyout then
		return ""
	end
	return Money.ToString(buyout, nil, "OPT_83_NO_COPPER")
end

function private.GetBidPercentCellText(self, subRow)
	if not subRow:IsSubRow() then
		local baseItemString = subRow:GetBaseItemString()
		subRow = self._firstSubRowByItem[baseItemString] or subRow
	end
	local _, pct = self:_GetMarketValuePct(subRow)
	pct = pct and Math.Round(pct * 100) or nil
	if not pct then
		return "---"
	end
	local pctColor = Theme.GetAuctionPercentColor(pct)
	if pct > 999 then
		pct = ">999"
	end
	return pctColor:ColorText(pct.."%")
end

function private.GetPercentCellText(self, subRow)
	if not subRow:IsSubRow() then
		local baseItemString = subRow:GetBaseItemString()
		subRow = self._firstSubRowByItem[baseItemString] or subRow
	end
	local pct, bidPct = self:_GetMarketValuePct(subRow)
	pct = pct and Math.Round(pct * 100) or nil
	bidPct = bidPct and Math.Round(bidPct * 100) or nil
	if pct then
		local pctColor = Theme.GetAuctionPercentColor(pct)
		if pct > 999 then
			pct = ">999"
		end
		return pctColor:ColorText(pct.."%")
	elseif bidPct then
		local pctColor = Theme.GetAuctionPercentColor("BID")
		if bidPct > 999 then
			bidPct = ">999"
		end
		return pctColor:ColorText(bidPct.."%")
	else
		return "---"
	end
end

function private.GetItemCellIcon(self, subRow)
	if not subRow:IsSubRow() then
		local baseItemString = subRow:GetBaseItemString()
		subRow = self._firstSubRowByItem[baseItemString]
		if not subRow then
			return ItemInfo.GetTexture(baseItemString)
		end
	end
	local itemLink = subRow:GetLinks()
	return ItemInfo.GetTexture(itemLink)
end

function private.GetItemCellTooltip(self, subRow)
	local baseItemString = subRow:GetBaseItemString()
	local itemString = subRow:GetItemString()
	if not subRow:IsSubRow() then
		subRow = self._firstSubRowByItem[baseItemString] or subRow
		baseItemString = subRow:GetBaseItemString()
		itemString = subRow:GetItemString()
	end
	if subRow:IsSubRow() then
		local _, rawLink = subRow:GetLinks()
		return rawLink or itemString or baseItemString
	else
		return itemString or baseItemString
	end
end

function private.GetExpanderState(self, subRow)
	if not subRow:IsSubRow() then
		local baseItemString = subRow:GetBaseItemString()
		subRow = self._firstSubRowByItem[baseItemString]
		if not subRow then
			return false, false, 0
		end
	end
	local baseItemString = subRow:GetBaseItemString()
	local isExpanded = self._expanded[baseItemString]
	local isIndented = isExpanded and subRow ~= self._firstSubRowByItem[baseItemString]
	local numSubRows = subRow:GetResultRow():GetNumSubRows()
	local expanderVisible = not isIndented and numSubRows > 1
	return expanderVisible, expanderVisible and isExpanded, isIndented and 1 or 0
end

function private.GetBadgeState(self, subRow)
	if not subRow:IsSubRow() then
		local baseItemString = subRow:GetBaseItemString()
		subRow = self._firstSubRowByItem[baseItemString]
		if not subRow then
			return false
		end
	end
	local baseItemString = subRow:GetBaseItemString()
	local numSubRows = subRow:GetResultRow():GetNumSubRows()
	local isVisible = not self._expanded[baseItemString] and numSubRows > 1
	return isVisible, numSubRows > 999 and "(999+)" or ("("..numSubRows..")")
end

function private.GetPendingIcon(self, subRow, iconIndex)
	assert(iconIndex == 1)
	if not subRow:IsSubRow() then
		local baseItemString = subRow:GetBaseItemString()
		subRow = self._firstSubRowByItem[baseItemString]
		if not subRow then
			local texture, shouldRotate = nil, nil
			if baseItemString == self._currentSearchItem then
				local _, isPaused = self._auctionScan:GetProgress()
				texture = "iconPack.12x12/Running"
				shouldRotate = not isPaused
			else
				texture = TextureAtlas.GetColoredKey("iconPack.12x12/Running", "ACTIVE_BG_ALT")
				shouldRotate = false
			end
			return true, texture, true, nil, shouldRotate
		end
	end
	return false
end

function private.OnPendingIconClick(self, data)
	self:SetSelection(data)
end
