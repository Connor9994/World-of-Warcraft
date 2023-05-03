-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

--- Commodity List UI Element Class.
-- The element used to show the details of a selected commodity in shopping. It is a subclass of the @{ScrollingTable} class.
-- @classmod CommodityList

local TSM = select(2, ...) ---@type TSM
local L = TSM.Include("Locale").GetTable()
local Money = TSM.Include("Util.Money")
local Math = TSM.Include("Util.Math")
local Theme = TSM.Include("Util.Theme")
local UIElements = TSM.Include("UI.UIElements")
local CommodityList = TSM.Include("LibTSMClass").DefineClass("CommodityList", TSM.UI.ScrollingTable)
UIElements.Register(CommodityList)
TSM.UI.CommodityList = CommodityList
local private = {}



-- ============================================================================
-- Public Class Methods
-- ============================================================================

function CommodityList.__init(self)
	self.__super:__init()
	self._row = nil
	self._marketValueFunc = nil
	self._marketThreshold = math.huge
	self._alertThreshold = math.huge
end

function CommodityList.Acquire(self)
	self._headerMode = "NONE"
	self.__super:Acquire()
	self:GetScrollingTableInfo()
		:NewColumn("warning")
			:SetWidth(12)
			:SetIconSize(12)
			:SetIconHoverEnabled(true)
			:SetIconFunction(private.GetWarningIcon)
			:SetJustifyH("CENTER")
			:SetFont("BODY_BODY3")
			:Commit()
		:NewColumn("itemBuyout")
			:SetFont("TABLE_TABLE1")
			:SetJustifyH("LEFT")
			:SetTextFunction(private.GetItemBuyoutText)
			:DisableHiding()
			:Commit()
		:NewColumn("quantity")
			:SetWidth(60)
			:SetFont("TABLE_TABLE1")
			:SetJustifyH("RIGHT")
			:SetTextFunction(private.GetQuantityText)
			:DisableHiding()
			:Commit()
		:NewColumn("pct")
			:SetWidth(50)
			:SetFont("TABLE_TABLE1")
			:SetJustifyH("RIGHT")
			:SetTextFunction(private.GetPercentText)
			:DisableHiding()
			:Commit()
		:Commit()
end

function CommodityList.Release(self)
	self._row = nil
	self._marketValueFunc = nil
	self._marketThreshold = math.huge
	self._alertThreshold = math.huge
	self.__super:Release()
end

function CommodityList.GetTotalQuantity(self, maxIndex)
	local totalQuantity = 0
	for _, index in ipairs(self._data) do
		if index > maxIndex then
			break
		end
		local subRow = self:_GetSubRow(index)
		local _, numOwnerItems = subRow:GetOwnerInfo()
		local quantityAvailable = subRow:GetQuantities() - numOwnerItems
		totalQuantity = totalQuantity + quantityAvailable
	end
	return totalQuantity
end

--- Sets the result row.
-- @tparam CommodityList self The commodity list object
-- @tparam table row The row to set
-- @treturn CommodityList The commodity list object
function CommodityList.SetData(self, row)
	self._row = row
	self:UpdateData()
	return self
end

--- Sets the selected quantity.
-- @tparam CommodityList self The commodity list object
-- @tparam number quantity The selected quantity
-- @treturn CommodityList The commodity list object
function CommodityList.SelectQuantity(self, quantity)
	local maxIndex = nil
	for _, index in ipairs(self._data) do
		local subRow = self:_GetSubRow(index)
		local _, numOwnerItems = subRow:GetOwnerInfo()
		local quantityAvailable = subRow:GetQuantities() - numOwnerItems
		maxIndex = index
		quantity = quantity - quantityAvailable
		if quantity <= 0 then
			break
		end
	end
	self:SetSelection(maxIndex)
	return self
end

--- Sets the market value function.
-- @tparam CommodityList self The commodity list object
-- @tparam function func The function to call with the ResultSubRow to get the market value
-- @treturn CommodityList The commodity list object
function CommodityList.SetMarketValueFunction(self, func)
	self._marketValueFunc = func
	return self
end

--- Sets the alert threshold.
-- @tparam CommodityList self The commodity list object
-- @tparam number threshold The item buyout above which the alert icon should be shown
-- @treturn CommodityList The commodity list object
function CommodityList.SetAlertThreshold(self, threshold)
	self._alertThreshold = threshold or math.huge
	return self
end

--- Sets the market threshold.
-- @tparam CommodityList self The commodity list object
-- @tparam number threshold The item buyout above which the alert icon should be shown
-- @treturn CommodityList The commodity list object
function CommodityList.SetMarketThreshold(self, threshold)
	self._marketThreshold = threshold or math.huge
	return self
end

function CommodityList.SetSelection(self, selection)
	self.__super:SetSelection(selection and self:_SanitizeSelectionIndex(selection) or nil)
	return self
end



-- ============================================================================
-- Private Class Methods
-- ============================================================================

function CommodityList._HandleRowClick(self, data, mouseButton)
	local index = self:_SanitizeSelectionIndex(data)
	if not index then
		return
	end
	self.__super:_HandleRowClick(index, mouseButton)
end

function CommodityList._SanitizeSelectionIndex(self, selectedIndex)
	-- select the highest subrow which isn't the player's auction and isn't above the selection
	local highestIndex = nil
	for index, subRow in self._row:SubRowIterator() do
		if subRow:GetQuantities() - select(2, subRow:GetOwnerInfo()) ~= 0 then
			highestIndex = index
		end
		if index == selectedIndex then
			break
		end
	end
	return highestIndex
end

function CommodityList._GetSubRow(self, index)
	return self._row._subRows[index]
end

function CommodityList._UpdateData(self)
	wipe(self._data)
	if not self._row then
		return
	end
	for index in self._row:SubRowIterator() do
		tinsert(self._data, index)
	end
end

function CommodityList._IsSelected(self, data)
	if data > (self._selection or 0) then
		return false
	end
	local subRow = self:_GetSubRow(data)
	local _, numOwnerItems = subRow:GetOwnerInfo()
	local quantityAvailable = subRow:GetQuantities() - numOwnerItems
	return quantityAvailable > 0
end

function CommodityList._GetMarketValuePct(self, row)
	assert(row:IsSubRow())
	if not self._marketValueFunc then
		-- no market value function was set
		return nil, nil
	end
	local marketValue = self._marketValueFunc(row) or 0
	if marketValue == 0 then
		-- this item doesn't have a market value
		return nil, nil
	end
	local _, itemBuyout = row:GetBuyouts()
	return itemBuyout > 0 and Math.Round(100 * itemBuyout / marketValue) or nil
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.GetWarningIcon(self, index)
	local subRow = self:_GetSubRow(index)
	assert(subRow)
	local _, itemBuyout = subRow:GetBuyouts()
	if itemBuyout < self._alertThreshold and itemBuyout < self._marketThreshold then
		return
	end
	return "iconPack.12x12/Attention", itemBuyout >= self._marketThreshold and L["This price is above your material value."] or L["This price is above your confirmation alert threshold."]
end

function private.GetItemBuyoutText(self, index)
	local _, itemBuyout = self:_GetSubRow(index):GetBuyouts()
	return Money.ToString(itemBuyout, nil, "OPT_83_NO_COPPER")
end

function private.GetPercentText(self, index)
	local pct = self:_GetMarketValuePct(self:_GetSubRow(index))
	if not pct then
		return "---"
	end
	local pctColor = Theme.GetAuctionPercentColor(pct)
	if pct > 999 then
		pct = ">999"
	end
	return pctColor:ColorText(pct.."%")
end

function private.GetQuantityText(self, index)
	local subRow = self:_GetSubRow(index)
	local _, numOwnerItems = subRow:GetOwnerInfo()
	local totalQuantity = subRow:GetQuantities()
	local quantityAvailable = totalQuantity - numOwnerItems
	if quantityAvailable == 0 then
		return Theme.GetColor("INDICATOR_ALT"):ColorText(totalQuantity)
	else
		return quantityAvailable
	end
end
