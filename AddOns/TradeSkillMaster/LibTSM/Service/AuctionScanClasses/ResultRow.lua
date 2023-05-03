-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local ResultRow = TSM.Init("Service.AuctionScanClasses.ResultRow") ---@class Service.AuctionScanClasses.ResultRow
local Environment = TSM.Include("Environment")
local ItemString = TSM.Include("Util.ItemString")
local ObjectPool = TSM.Include("Util.ObjectPool")
local TempTable = TSM.Include("Util.TempTable")
local Table = TSM.Include("Util.Table")
local ItemInfo = TSM.Include("Service.ItemInfo")
local LibTSMClass = TSM.Include("LibTSMClass")
local Util = TSM.Include("Service.AuctionScanClasses.Util")
local AuctionHouseWrapper = TSM.Include("Service.AuctionHouseWrapper")
local ResultSubRow = TSM.Include("Service.AuctionScanClasses.ResultSubRow")
local ResultRowWrapper = LibTSMClass.DefineClass("ResultRowWrapper")
local private = {
	objectPool = ObjectPool.New("AUCTION_SCAN_RESULT_ROW", ResultRowWrapper),
}
local SUB_ROW_SEARCH_INDEX_MULTIPLIER = 1000000



-- ============================================================================
-- Module Functions
-- ============================================================================

function ResultRow.Get(query, itemKey, minPrice, totalQuantity)
	local row = private.objectPool:Get()
	row:_Acquire(query, itemKey, minPrice, totalQuantity)
	return row
end



-- ============================================================================
-- ResultRowWrapper - Meta Class Methods
-- ============================================================================

function ResultRowWrapper.__init(self)
	self._query = nil
	self._items = {}
	self._baseItemString = nil
	self._canHaveNonBaseItemString = nil
	self._minPrice = nil
	self._hasItemInfo = nil
	self._isCommodity = nil
	self._notFiltered = false
	self._searchIndex = nil
	self._subRows = {}
	self._minBrowseId = nil
end

function ResultRowWrapper._Acquire(self, query, item, minPrice, totalQuantity)
	self._query = query
	if Environment.IsRetail() then
		item._minPrice = minPrice
		item._totalQuantity = totalQuantity
		tinsert(self._items, item)
		self._baseItemString = ItemString.GetBaseFromItemKey(item)
	else
		assert(not minPrice and not totalQuantity)
		tinsert(self._items, item)
		self._baseItemString = ItemString.GetBase(item)
	end
	self._canHaveNonBaseItemString = nil
	self._minPrice = nil
end



-- ============================================================================
-- ResultRowWrapper - Public Class Methods
-- ============================================================================

function ResultRowWrapper.Merge(self, item, minPrice, totalQuantity)
	-- check if we already have this item
	for i = 1, #self._items do
		if item == self._items[i] then
			return
		end
		if type(item) == "table" then
			local isEqual = true
			for k in pairs(item) do
				if item[k] ~= self._items[i][k] then
					isEqual = false
					break
				end
			end
			if isEqual then
				return
			end
		end
	end
	self._hasItemInfo = nil
	if Environment.IsRetail() then
		assert(self._baseItemString == ItemString.GetBaseFromItemKey(item))
		item._minPrice = minPrice
		item._totalQuantity = totalQuantity
		tinsert(self._items, item)
		self._notFiltered = false
	else
		assert(not minPrice and not totalQuantity)
		assert(self._baseItemString == ItemString.GetBase(item))
		tinsert(self._items, item)
		self._notFiltered = false
	end
	self._canHaveNonBaseItemString = nil
end

function ResultRowWrapper.Release(self)
	wipe(self._items)
	self._baseItemString = nil
	self._canHaveNonBaseItemString = nil
	self._minPrice = nil
	self._hasItemInfo = nil
	self._isCommodity = nil
	self._notFiltered = false
	self._searchIndex = nil
	self._minBrowseId = nil
	for _, subRow in pairs(self._subRows) do
		subRow:Release()
	end
	wipe(self._subRows)
	private.objectPool:Recycle(self)
end

function ResultRowWrapper.IsSubRow(self)
	return false
end

function ResultRowWrapper.PopulateBrowseData(self)
	assert(self._baseItemString)
	if self._hasItemInfo then
		-- already have our item info
		return true
	elseif not Util.HasItemInfo(self._baseItemString) then
		-- don't have item info yet
		return false
	end

	if Environment.HasFeature(Environment.FEATURES.COMMODITY_ITEMS) then
		-- cache the commodity status since it's referenced a ton
		if self._isCommodity == nil then
			self._isCommodity = ItemInfo.IsCommodity(self._baseItemString)
			assert(self._isCommodity ~= nil)
		end
	end

	-- check if we have info for all the items and try to fetch it if not
	local missingInfo = false
	ItemInfo.SetQueryUpdatesPaused(true)
	for _, item in ipairs(self._items) do
		if Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE) then
			if not item._itemKeyInfo then
				item._itemKeyInfo = C_AuctionHouse.GetItemKeyInfo(item, true)
				if not item._itemKeyInfo then
					missingInfo = true
				end
			end
		else
			if not Util.HasItemInfo(ItemString.Get(item)) then
				missingInfo = true
			end
		end
	end
	ItemInfo.SetQueryUpdatesPaused(false)
	if missingInfo then
		return false
	end

	self._hasItemInfo = true
	return true
end

function ResultRowWrapper.IsFiltered(self, query)
	assert(#self._items > 0)
	if self._notFiltered then
		return false
	end

	-- check if the whole row is filtered
	if query:_IsFiltered(self, false) then
		return true
	end

	-- filter our items
	for i = #self._items, 1, -1 do
		if query:_IsFiltered(self, false, self._items[i]) then
			tremove(self._items, i)
		end
	end
	self._canHaveNonBaseItemString = nil
	self._minPrice = nil
	if #self._items == 0 then
		-- no more items, so the entire row is filtered
		return true
	end

	-- not filtered (cache this result)
	self._notFiltered = true
	return false
end

function ResultRowWrapper.SearchReset(self)
	assert(Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE))
	assert(#self._items > 0)
	self._searchIndex = 1
end

function ResultRowWrapper.SearchNext(self)
	assert(Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE))
	assert(self._searchIndex)
	if self._searchIndex == #self._items then
		self._searchIndex = nil
		return false
	end
	self._searchIndex = self._searchIndex + 1
	return true
end

function ResultRowWrapper.SearchIsReady(self)
	assert(Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE))
	assert(self._searchIndex)
	-- the client needs to have the item key info cached before we can run the search
	return C_AuctionHouse.GetItemKeyInfo(self._items[self._searchIndex], true) and true or false
end

function ResultRowWrapper.SearchSend(self)
	assert(Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE))
	assert(self._searchIndex)
	local itemKey = self._items[self._searchIndex]
	-- send a sell query if we don't have browse results for the itemKey
	-- for some reason sell queries don't work for commodities or pets
	local isSellQuery = not self._isCommodity and not ItemString.IsPet(self._baseItemString) and not itemKey._totalQuantity
	return AuctionHouseWrapper.SendSearchQuery(itemKey, isSellQuery)
end

function ResultRowWrapper.HasCachedSearchData(self)
	local itemKey = self._items[self._searchIndex]
	if self._isCommodity then
		return C_AuctionHouse.HasFullCommoditySearchResults(itemKey.itemID)
	else
		return C_AuctionHouse.HasFullItemSearchResults(itemKey)
	end
end

function ResultRowWrapper.SearchCheckStatus(self)
	assert(Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE))
	assert(self._searchIndex)
	local itemKey = self._items[self._searchIndex]

	-- check if we have the full results
	local hasFullResults = nil
	if self._isCommodity then
		hasFullResults = C_AuctionHouse.HasFullCommoditySearchResults(itemKey.itemID)
	else
		hasFullResults = C_AuctionHouse.HasFullItemSearchResults(itemKey)
	end
	if hasFullResults then
		return true
	end

	-- request more results
	if self._isCommodity then
		return false, AuctionHouseWrapper.RequestMoreCommoditySearchResults(itemKey.itemID)
	else
		return false, AuctionHouseWrapper.RequestMoreItemSearchResults(itemKey)
	end
end

function ResultRowWrapper.PopulateSubRows(self, browseId, index, itemLink)
	if Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE) then
		assert(self._searchIndex and not index)
		local subRowOffset = self._searchIndex * SUB_ROW_SEARCH_INDEX_MULTIPLIER
		local itemKey = self._items[self._searchIndex]
		local numAuctions = nil
		if self:IsCommodity() then
			numAuctions = C_AuctionHouse.GetNumCommoditySearchResults(itemKey.itemID)
		else
			numAuctions = C_AuctionHouse.GetNumItemSearchResults(itemKey)
		end
		if itemKey._numAuctions and numAuctions ~= itemKey._numAuctions then
			-- the results changed so clear out our existing data
			for i = itemKey._numAuctions, 1, -1 do
				if i > numAuctions then
					self._subRows[subRowOffset + i]:Release()
					self._subRows[subRowOffset + i] = nil
				else
					self._subRows[subRowOffset + i]:_SetRawData(nil)
				end
			end
		end
		itemKey._numAuctions = numAuctions
		for i = 1, numAuctions do
			self._subRows[subRowOffset + i] = self._subRows[subRowOffset + i] or ResultSubRow.Get(self)
			local subRow = self._subRows[subRowOffset + i]
			if not subRow:HasRawData() or not subRow:HasOwners() then
				local result = nil
				if self:IsCommodity() then
					result = C_AuctionHouse.GetCommoditySearchResultInfo(itemKey.itemID, i)
				else
					result = C_AuctionHouse.GetItemSearchResultInfo(itemKey, i)
				end
				subRow:_SetRawData(result, browseId)
			end
		end
	else
		-- remove any prior results with a different browseId
		assert(index and not self._searchIndex)
		local subRow = ResultSubRow.Get(self)
		subRow:_SetRawData(index, browseId, itemLink)
		local _, hashNoSeller = subRow:GetHashes()
		if self._minBrowseId and self._minBrowseId ~= browseId then
			-- check if this subRow already exists with a prior browseId
			for i, existingSubRow in ipairs(self._subRows) do
				local _, existingHashNoSeller = existingSubRow:GetHashes()
				local _, _, existingBrowseId = existingSubRow:GetListingInfo()
				if hashNoSeller == existingHashNoSeller and browseId ~= existingBrowseId then
					-- replace the existing subRow
					existingSubRow:Release()
					self._subRows[i] = subRow
					return
				end
			end
		end
		tinsert(self._subRows, subRow)
	end
	self._minBrowseId = min(self._minBrowseId or math.huge, browseId)
end

function ResultRowWrapper.FilterSubRows(self, query)
	local subRowOffset = Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE) and (self._searchIndex * SUB_ROW_SEARCH_INDEX_MULTIPLIER) or 0
	if Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE) then
		local itemKey = self._items[self._searchIndex]
		for j = itemKey._numAuctions, 1, -1 do
			local subRow = self._subRows[subRowOffset + j]
			if query:_IsFiltered(subRow, true) then
				self:_RemoveSubRowByIndex(j)
			end
		end
	else
		for i = #self._subRows, 1, -1 do
			if query:_IsFiltered(self._subRows[i], true) then
				self:_RemoveSubRowByIndex(i)
			end
		end
	end

	-- merge subRows with identical hashes
	local numSubRows = nil
	local hashIndexLookup = TempTable.Acquire()
	local index = 1
	while true do
		numSubRows = Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE) and self._items[self._searchIndex]._numAuctions or #self._subRows
		if index > numSubRows then
			break
		end
		local subRow = self._subRows[subRowOffset + index]
		local hash = subRow:GetHashes()
		local prevIndex = hashIndexLookup[hash]
		if prevIndex then
			-- there was a previous subRow with the same hash
			self._subRows[subRowOffset + prevIndex]:Merge(subRow)
			-- remove this subRow
			self:_RemoveSubRowByIndex(index)
		else
			hashIndexLookup[hash] = index
			index = index + 1
		end
	end
	TempTable.Release(hashIndexLookup)
	return numSubRows == 0
end

function ResultRowWrapper.GetNumSubRows(self)
	if Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE) then
		local result = 0
		for _, itemKey in ipairs(self._items) do
			result = result + (itemKey._numAuctions or 0)
		end
		return result
	else
		return #self._subRows
	end
end

function ResultRowWrapper.SubRowIterator(self, searchOnly)
	if Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE) then
		if searchOnly then
			local result = TempTable.Acquire()
			assert(self._searchIndex)
			for i = 1, self._items[self._searchIndex]._numAuctions do
				local subRow = self._subRows[self._searchIndex * SUB_ROW_SEARCH_INDEX_MULTIPLIER + i]
				assert(subRow)
				tinsert(result, subRow)
			end
			return TempTable.Iterator(result)
		else
			return private.SubRowIteratorHelper, self, SUB_ROW_SEARCH_INDEX_MULTIPLIER
		end
	else
		return ipairs(self._subRows)
	end
end

function ResultRowWrapper.IsCommodity(self)
	assert(self._isCommodity ~= nil)
	return self._isCommodity
end

function ResultRowWrapper.HasItemInfo(self)
	return self._hasItemInfo
end

function ResultRowWrapper.GetBaseItemString(self)
	return self._baseItemString
end

function ResultRowWrapper.GetItemString(self)
	if not Environment.IsRetail() or not self._hasItemInfo or self._canHaveNonBaseItemString then
		return nil
	end
	if self._canHaveNonBaseItemString == nil then
		for _, itemKey in ipairs(self._items) do
			if ItemInfo.CanHaveVariations(self._baseItemString) or itemKey.battlePetSpeciesID ~= 0 or itemKey.itemSuffix ~= 0 or itemKey.itemLevel ~= 0 then
				-- this item can have variations, so we don't know its itemString
				self._canHaveNonBaseItemString = true
				return nil
			end
		end
		self._canHaveNonBaseItemString = false
	end
	return self._baseItemString
end

function ResultRowWrapper.GetItemInfo(self, itemKey)
	if not Environment.IsRetail() or not self._hasItemInfo then
		return nil, nil, nil, nil
	end
	itemKey = itemKey or (#self._items == 1 and self._items[1] or nil)
	assert(not itemKey or itemKey._itemKeyInfo)
	local baseItemString = self:GetBaseItemString()
	local itemString = self:GetItemString()
	local itemName, quality, itemLevel, maxItemLevel = nil, nil, nil, nil
	if itemString then
		-- this item can't have variations, so we can know the name / level / quality
		itemName = ItemInfo.GetName(baseItemString)
		itemLevel = ItemInfo.GetItemLevel(baseItemString)
		quality = ItemInfo.GetQuality(baseItemString)
		assert(itemName and itemLevel and quality)
	else
		if itemKey and not itemKey._totalQuantity then
			-- if we didn't do a browse, then don't use this itemKey
			itemKey = nil
		end
		if itemKey then
			-- grab the name from the itemKeyInfo
			itemName = itemKey._itemKeyInfo.itemName
			assert(itemName)
		end
		local hasSingleAuction = itemKey and itemKey._totalQuantity == 1
		if hasSingleAuction then
			-- grab the quality from the itemKeyInfo since there's only one listing
			quality = itemKey._itemKeyInfo.quality
			assert(quality)
		end
		if not ItemString.IsPet(self._baseItemString) then
			-- for non-pets, we can maybe grab the itemLevel from the itemKey
			if itemKey then
				itemLevel = itemKey.itemLevel ~= 0 and itemKey.itemLevel or nil
			else
				-- only use the itemLevel from the itemKeys if they are all the same
				local itemKeyItemLevel = self._items[1].itemLevel
				for i = 2, #self._items do
					if self._items[i].itemLevel ~= itemKeyItemLevel then
						itemKeyItemLevel = nil
						break
					end
				end
				itemLevel = (itemKeyItemLevel or 0) ~= 0 and itemKeyItemLevel or nil
			end
		elseif itemKey and itemKey._itemKeyInfo.battlePetLink then
			if hasSingleAuction then
				-- grab the itemLevel from the link since there's only one listing
				itemLevel = ItemInfo.GetItemLevel(itemKey._itemKeyInfo.battlePetLink)
				assert(itemLevel)
			else
				-- grab the maxItemLevel from the link
				maxItemLevel = ItemInfo.GetItemLevel(itemKey._itemKeyInfo.battlePetLink)
				assert(maxItemLevel)
			end
		end
	end
	return itemName, quality, itemLevel, maxItemLevel
end

function ResultRowWrapper.GetBuyouts(self, resultItemKey)
	if not Environment.IsRetail() then
		return nil, nil, nil
	end
	assert(#self._items > 0)
	if resultItemKey then
		return nil, nil, resultItemKey._minPrice
	else
		if self._minPrice == nil then
			for _, itemKey in ipairs(self._items) do
				if not itemKey._minPrice then
					self._minPrice = -1
					return nil, nil, nil
				end
				self._minPrice = min(self._minPrice or math.huge, itemKey._minPrice)
			end
		elseif self._minPrice == -1 then
			return nil, nil, nil
		end
		return nil, nil, self._minPrice
	end
end

function ResultRowWrapper.GetQuantities(self)
	local totalQuantity = 0
	if Environment.IsRetail() then
		for _, itemKey in ipairs(self._items) do
			if not itemKey._totalQuantity then
				return
			end
			totalQuantity = totalQuantity + itemKey._totalQuantity
		end
	else
		for _, subRow in ipairs(self._subRows) do
			local quantity, numAuctions = subRow:GetQuantities()
			totalQuantity = totalQuantity + quantity * numAuctions
		end
	end
	return totalQuantity, 1
end

function ResultRowWrapper.GetMaxQuantities(self)
	assert(self:IsCommodity())
	local totalQuantity = 0
	for _, subRow in self:SubRowIterator() do
		local _, numOwnerItems = subRow:GetOwnerInfo()
		local quantityAvailable = subRow:GetQuantities() - numOwnerItems
		totalQuantity = totalQuantity + quantityAvailable
	end
	return totalQuantity
end

function ResultRowWrapper.RemoveSubRow(self, subRow)
	local index = Table.KeyByValue(self._subRows, subRow)
	if Environment.IsRetail() then
		local searchIndex = floor(index / SUB_ROW_SEARCH_INDEX_MULTIPLIER)
		index = index % SUB_ROW_SEARCH_INDEX_MULTIPLIER
		assert(self._subRows[searchIndex * SUB_ROW_SEARCH_INDEX_MULTIPLIER + index] == subRow)
		local prevSearchIndex = self._searchIndex
		self._searchIndex = searchIndex
		self:_RemoveSubRowByIndex(index)
		self._searchIndex = prevSearchIndex
	else
		self:_RemoveSubRowByIndex(index)
	end
	self._query:_OnSubRowRemoved(self)
end

function ResultRowWrapper.WipeSearchResults(self)
	wipe(self._subRows)
	if Environment.IsRetail() then
		for _, itemKey in ipairs(self._items) do
			itemKey._numAuctions = nil
		end
	end
end

function ResultRowWrapper.GetQuery(self)
	return self._query
end

function ResultRowWrapper.DecrementQuantity(self, amount)
	assert(self:IsCommodity() and Environment.IsRetail() and #self._items == 1)
	local index = 1
	while amount > 0 do
		local subRow = self._subRows[index + SUB_ROW_SEARCH_INDEX_MULTIPLIER]
		assert(subRow)
		local _, numOwnerItems = subRow:GetOwnerInfo()
		local quantityAvailable = subRow:GetQuantities() - numOwnerItems
		if quantityAvailable > 0 then
			local usedQuantity = min(quantityAvailable, amount)
			local prevItemBuyout = floor(subRow._buyout / subRow._quantity)
			amount = amount - usedQuantity
			subRow._quantity = subRow._quantity - usedQuantity
			subRow._buyout = prevItemBuyout * subRow._quantity
			subRow._minBid = subRow._buyout
			if numOwnerItems == 0 and subRow._quantity == 0 then
				self:RemoveSubRow(subRow)
			else
				index = index + 1
			end
		else
			index = index + 1
		end
	end
end

function ResultRowWrapper.GetMinBrowseId(self)
	return self._minBrowseId
end



-- ============================================================================
-- ResultRowWrapper - Private Class Methods
-- ============================================================================

function ResultRowWrapper._RemoveSubRowByIndex(self, index)
	if Environment.IsRetail() then
		local subRowOffset = self._searchIndex * SUB_ROW_SEARCH_INDEX_MULTIPLIER
		local itemKey = self._items[self._searchIndex]
		self._subRows[subRowOffset + index]:Release()
		self._subRows[subRowOffset + index] = nil
		-- shift the other subRows for this item down
		for i = index, itemKey._numAuctions - 1 do
			self._subRows[subRowOffset + i] = self._subRows[subRowOffset + i + 1]
		end
		self._subRows[subRowOffset + itemKey._numAuctions] = nil
		itemKey._numAuctions = itemKey._numAuctions - 1
	else
		self._subRows[index]:Release()
		tremove(self._subRows, index)
	end
end

function ResultRowWrapper._GetSearchProgress(self)
	assert(Environment.IsRetail())
	if #self._items == 0 then
		return 0
	end
	local numSearched = 0
	for _, itemKey in ipairs(self._items) do
		if itemKey._numAuctions then
			numSearched = numSearched + 1
		end
	end
	return numSearched / #self._items
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.SubRowIteratorHelper(row, index)
	local searchIndex = floor(index / SUB_ROW_SEARCH_INDEX_MULTIPLIER)
	local subRowIndex = index % SUB_ROW_SEARCH_INDEX_MULTIPLIER
	while true do
		local itemKey = row._items[searchIndex]
		if not itemKey then
			return
		end

		if subRowIndex >= (itemKey._numAuctions or 0) then
			searchIndex = searchIndex + 1
			subRowIndex = 0
		else
			subRowIndex = subRowIndex + 1
			index = searchIndex * SUB_ROW_SEARCH_INDEX_MULTIPLIER + subRowIndex
			return index, row._subRows[index]
		end
	end
end
