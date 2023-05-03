-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Accounting = TSM.Tooltip:NewPackage("Accounting")
local L = TSM.Include("Locale").GetTable()
local Math = TSM.Include("Util.Math")
local ItemString = TSM.Include("Util.ItemString")
local CustomPrice = TSM.Include("Service.CustomPrice")
local private = {}



-- ============================================================================
-- Module Functions
-- ============================================================================

function Accounting.OnInitialize()
	TSM.Tooltip.Register(TSM.Tooltip.CreateInfo()
		:SetHeadings(L["TSM Accounting"])
		:SetSettingsModule("Accounting")
		:AddSettingEntry("purchase", true, private.PopulatePurchaseLines)
		:AddSettingEntry("sale", true, private.PopulateSaleLines)
		:AddSettingEntry("saleRate", false, private.PopulateSaleRateLine)
		:AddSettingEntry("expiredAuctions", false, private.PopulateExpireLine)
		:AddSettingEntry("cancelledAuctions", false, private.PopulateCancelLine)
	)
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.PopulateSaleLines(tooltip, itemString)
	local showTotals = itemString ~= ItemString.GetPlaceholder() and IsShiftKeyDown()
	local avgSalePrice, totalSaleNum, lastSaleTime, minSellPrice, maxSellPrice = nil, nil, nil, nil, nil
	if itemString == ItemString.GetPlaceholder() then
		-- example tooltip
		avgSalePrice = 20
		totalSaleNum = 5
		lastSaleTime = time() - 60
		minSellPrice = 10
		maxSellPrice = 50
	else
		local totalPrice = nil
		totalPrice, totalSaleNum = TSM.Accounting.Transactions.GetSaleStats(itemString)
		if not totalSaleNum then
			return
		end
		avgSalePrice = totalPrice and Math.Round(totalPrice / totalSaleNum) or nil
		lastSaleTime = TSM.Accounting.Transactions.GetLastSaleTime(itemString)
		if not showTotals then
			minSellPrice = CustomPrice.GetItemPrice(itemString, "MinSell") or 0
			maxSellPrice = CustomPrice.GetItemPrice(itemString, "MaxSell") or 0
		end
	end

	if showTotals then
		tooltip:AddQuantityValueLine(L["Sold (Total Price)"], totalSaleNum, avgSalePrice * totalSaleNum)
	else
		assert(minSellPrice and maxSellPrice)
		tooltip:AddQuantityValueLine(L["Sold (Min/Avg/Max Price)"], totalSaleNum, minSellPrice, avgSalePrice, maxSellPrice)
	end
	tooltip:AddTextLine(L["Last Sold"], format(L["%s ago"], SecondsToTime(time() - lastSaleTime)))
end

function private.PopulateExpireLine(tooltip, itemString)
	local expiredNum = nil
	if itemString == ItemString.GetPlaceholder() then
		-- example tooltip
		expiredNum = 2
	else
		local lastSaleTime = TSM.Accounting.Transactions.GetLastSaleTime(itemString)
		expiredNum = select(2, TSM.Accounting.Auctions.GetStats(itemString, lastSaleTime))
		if expiredNum == 0 then
			expiredNum = nil
		end
	end
	if expiredNum then
		tooltip:AddTextLine(L["Expired Since Last Sale"], expiredNum)
	end
end

function private.PopulateCancelLine(tooltip, itemString)
	local cancelledNum = nil
	if itemString == ItemString.GetPlaceholder() then
		-- example tooltip
		cancelledNum = 2
	else
		local lastSaleTime = TSM.Accounting.Transactions.GetLastSaleTime(itemString)
		cancelledNum = TSM.Accounting.Auctions.GetStats(itemString, lastSaleTime)
		if cancelledNum == 0 then
			cancelledNum = nil
		end
	end
	if cancelledNum then
		tooltip:AddTextLine(L["Cancelled Since Last Sale"], cancelledNum)
	end
end

function private.PopulateSaleRateLine(tooltip, itemString)
	local saleRate = nil
	if itemString == ItemString.GetPlaceholder() then
		-- example tooltip
		saleRate = 0.7
	else
		saleRate = CustomPrice.GetItemPrice(itemString, "SaleRate")
		if not saleRate then
			return
		end
	end
	tooltip:AddTextLine(L["Sale Rate"], saleRate)
end

function private.PopulatePurchaseLines(tooltip, itemString)
	local showTotals = itemString ~= ItemString.GetPlaceholder() and IsShiftKeyDown()
	local smartAvgPrice, totalPrice, totalNum, minPrice, maxPrice, lastBuyTime = nil, nil, nil, nil, nil, nil
	if itemString == ItemString.GetPlaceholder() then
		-- example tooltip
		smartAvgPrice = 25
		totalPrice = 78
		totalNum = 3
		minPrice = 15
		maxPrice = 55
		lastBuyTime = time() - 3600
	else
		smartAvgPrice = CustomPrice.GetItemPrice(itemString, "SmartAvgBuy")
		totalPrice, totalNum = TSM.Accounting.Transactions.GetBuyStats(itemString, false)
		if not totalPrice then
			return
		end
		if not showTotals then
			minPrice = CustomPrice.GetItemPrice(itemString, "MinBuy") or 0
			maxPrice = CustomPrice.GetItemPrice(itemString, "MaxBuy") or 0
		end
		lastBuyTime = TSM.Accounting.Transactions.GetLastBuyTime(itemString)
	end


	if showTotals then
		tooltip:AddQuantityValueLine(L["Purchased (Total Price)"], totalNum, totalPrice)
	else
		assert(minPrice and maxPrice)
		tooltip:AddQuantityValueLine(L["Purchased (Min/Avg/Max Price)"], totalNum, minPrice, Math.Round(totalPrice / totalNum), maxPrice)
	end
	tooltip:AddItemValueLine(L["Smart Avg Buy Price"], smartAvgPrice)
	tooltip:AddTextLine(L["Last Purchased"], format(L["%s ago"], SecondsToTime(time() - lastBuyTime)))
end
