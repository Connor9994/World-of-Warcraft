-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Crafting = TSM.Tooltip:NewPackage("Crafting")
local L = TSM.Include("Locale").GetTable()
local ItemString = TSM.Include("Util.ItemString")
local MatString = TSM.Include("Util.MatString")
local Theme = TSM.Include("Util.Theme")
local TempTable = TSM.Include("Util.TempTable")
local private = {}



-- ============================================================================
-- Module Functions
-- ============================================================================

function Crafting.OnInitialize()
	TSM.Tooltip.Register(TSM.Tooltip.CreateInfo()
		:SetHeadings(L["TSM Crafting"])
		:SetSettingsModule("Crafting")
		:AddSettingEntry("craftingCost", true, private.PopulateCostLine)
		:AddSettingEntry("detailedMats", false, private.PopulateDetailedMatsLines)
		:AddSettingEntry("matPrice", false, private.PopulateMatPriceLine)
	)
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.PopulateCostLine(tooltip, itemString)
	local levelItemString = itemString and ItemString.ToLevel(itemString)
	assert(levelItemString)
	local cost, profit = nil, nil
	if itemString == ItemString.GetPlaceholder() then
		-- example tooltip
		cost = 55
		profit = 20
	elseif not TSM.Crafting.CanCraftItem(levelItemString) then
		return
	else
		cost = TSM.Crafting.Cost.GetLowestCostByItem(itemString)
		local buyout = cost and TSM.Crafting.Cost.GetCraftedItemValue(itemString) or nil
		profit = buyout and (buyout - cost) or nil
	end

	local costText = tooltip:FormatMoney(cost)
	local profitText = tooltip:FormatMoney(profit, profit and Theme.GetColor(profit >= 0 and "FEEDBACK_GREEN" or "FEEDBACK_RED") or nil)
	tooltip:AddLine(L["Crafting Cost"], format(L["%s (%s profit)"], costText, profitText))
end

function private.PopulateDetailedMatsLines(tooltip, itemString)
	local levelItemString = itemString and ItemString.ToLevel(itemString)
	assert(levelItemString)
	if levelItemString == ItemString.GetPlaceholder() then
		-- example tooltip
		tooltip:StartSection()
		tooltip:AddSubItemValueLine(ItemString.GetPlaceholder(), 11, 5)
		tooltip:EndSection()
		return
	elseif not TSM.Crafting.CanCraftItem(levelItemString) then
		return
	end

	local optionalMats = TempTable.Acquire()
	local qualityMats = TempTable.Acquire()
	local _, craftString = TSM.Crafting.Cost.GetLowestCostByItem(itemString, optionalMats, qualityMats)
	for _, matItemString in ipairs(qualityMats) do
		tinsert(optionalMats, matItemString)
	end
	TempTable.Release(qualityMats)
	if not craftString then
		TempTable.Release(optionalMats)
		return
	end

	-- only include optional mats which actually belong to the spell
	local hasOptionalMat = TempTable.Acquire()
	for _, matString in TSM.Crafting.OptionalMatIterator(craftString) do
		for _, optionalMatItemString in ipairs(optionalMats) do
			local itemId = ItemString.ToId(optionalMatItemString)
			if MatString.ContainsItem(matString, itemId) then
				hasOptionalMat[optionalMatItemString] = true
			end
		end
	end

	tooltip:StartSection()
	local numResult = TSM.Crafting.GetNumResult(craftString)
	for _, matItemString, matQuantity in TSM.Crafting.MatIterator(craftString) do
		tooltip:AddSubItemValueLine(matItemString, TSM.Crafting.Cost.GetMatCost(matItemString), matQuantity / numResult)
	end
	for _, matItemString in ipairs(optionalMats) do
		if hasOptionalMat[matItemString] then
			local matQuantity = TSM.Crafting.GetOptionalMatQuantity(craftString, ItemString.ToId(matItemString))
			tooltip:AddSubItemValueLine(matItemString, TSM.Crafting.Cost.GetMatCost(matItemString), matQuantity / numResult)
		end
	end
	TempTable.Release(hasOptionalMat)
	TempTable.Release(optionalMats)
	tooltip:EndSection()
end

function private.PopulateMatPriceLine(tooltip, itemString)
	itemString = itemString and ItemString.GetBase(itemString) or nil
	local matCost = nil
	if itemString == ItemString.GetPlaceholder() then
		-- example tooltip
		matCost = 17
	else
		matCost = TSM.Crafting.Cost.GetMatCost(itemString)
	end
	if matCost then
		tooltip:AddItemValueLine(L["Material Cost"], matCost)
	end
end
