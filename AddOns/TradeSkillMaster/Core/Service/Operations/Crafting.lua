-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Crafting = TSM.Operations:NewPackage("Crafting")
local L = TSM.Include("Locale").GetTable()
local Log = TSM.Include("Util.Log")
local CustomPrice = TSM.Include("Service.CustomPrice")
local ItemInfo = TSM.Include("Service.ItemInfo")
local private = {}
local OPERATION_INFO = {
	minRestock = { type = "string", default = "10" },
	maxRestock = { type = "string", default = "20" },
	minProfit = { type = "string", default = "100g" },
	craftPriceMethod = { type = "string", default = "" },
}
local MIN_RESTOCK_VALUE = 0
local MAX_RESTOCK_VALUE = 2000
local BAD_CRAFTING_PRICE_SOURCES = {
	crafting = true,
}



-- ============================================================================
-- Module Functions
-- ============================================================================

function Crafting.OnInitialize()
	TSM.Operations.Register("Crafting", L["Crafting"], OPERATION_INFO, 1, private.GetOperationInfo)
	for _, name in TSM.Operations.OperationIterator("Crafting") do
		local operation = TSM.Operations.GetSettings("Crafting", name)
		if operation.craftPriceMethod ~= "" then
			local isValid, err = CustomPrice.Validate(operation.craftPriceMethod, BAD_CRAFTING_PRICE_SOURCES)
			if not isValid then
				Log.PrintfUser(L["Your craft value method for '%s' was invalid so it has been returned to the default. Details: %s"], name, err)
				operation.craftPriceMethod = ""
			end
		end
	end
end

function Crafting.HasOperation(itemString)
	return private.GetOperationSettings(itemString) and true or false
end

function Crafting.GetRestockRange()
	return MIN_RESTOCK_VALUE, MAX_RESTOCK_VALUE
end

function Crafting.IsValid(itemString)
	local origItemString = itemString
	itemString = TSM.Groups.TranslateItemString(itemString)
	local operationName, operationSettings = TSM.Operations.GetFirstOperationByItem("Crafting", itemString)
	if not operationSettings then
		return false
	end
	local minRestock, maxRestock, errMsg = nil, nil, nil
	minRestock, errMsg = private.GetMinRestock(operationSettings, origItemString)
	if not minRestock then
		return false, errMsg
	end
	maxRestock, errMsg = private.GetMaxRestock(operationSettings, origItemString)
	if not maxRestock then
		return false, errMsg
	end
	if minRestock > maxRestock then
		-- invalid cause min > max restock quantity
		return false, format(L["'%s' is an invalid operation. Min restock of %d is higher than max restock of %d for %s."], operationName, minRestock, maxRestock, ItemInfo.GetLink(origItemString))
	end
	return true
end

function Crafting.GetMinProfit(itemString)
	local operationSettings = private.GetOperationSettings(itemString)
	if not operationSettings then
		return false
	end
	if operationSettings.minProfit == "" then
		return false
	end
	return true, CustomPrice.GetValue(operationSettings.minProfit, itemString)
end

function Crafting.GetRestockQuantity(itemString, haveQuantity)
	local operationSettings = private.GetOperationSettings(itemString)
	if not operationSettings then
		return 0
	end
	local minRestock = private.GetMinRestock(operationSettings, itemString)
	local maxRestock = private.GetMaxRestock(operationSettings, itemString)
	if not minRestock or not maxRestock or minRestock > maxRestock then
		return 0
	end
	local neededQuantity = maxRestock - haveQuantity
	if neededQuantity <= 0 then
		-- don't need to queue any
		return 0
	elseif neededQuantity < minRestock then
		-- we're below the min restock quantity
		return 0
	end
	return neededQuantity
end

function Crafting.GetCraftedItemValue(itemString)
	local operationSettings = private.GetOperationSettings(itemString)
	if not operationSettings then
		return false
	end
	if operationSettings.craftPriceMethod == "" then
		return false
	end
	return true, CustomPrice.GetValue(operationSettings.craftPriceMethod, itemString)
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.GetMinRestock(operationSettings, itemString)
	local minRestock, errMsg = CustomPrice.GetValue(operationSettings.minRestock, itemString, true)
	if not minRestock then
		return nil, format(L["Your min restock (%s) is invalid for %s."], operationSettings.minRestock, ItemInfo.GetLink(itemString) or "?").." "..errMsg
	elseif minRestock < MIN_RESTOCK_VALUE or minRestock > MAX_RESTOCK_VALUE then
		return nil, format(L["Your min restock (%s) is invalid for %s."], operationSettings.minRestock, ItemInfo.GetLink(itemString) or "?").." "..format(L["Must be between %d and %s."], MIN_RESTOCK_VALUE, MAX_RESTOCK_VALUE)
	end
	return minRestock
end

function private.GetMaxRestock(operationSettings, itemString)
	local maxRestock, errMsg = CustomPrice.GetValue(operationSettings.maxRestock, itemString, true)
	if not maxRestock then
		return nil, format(L["Your max restock (%s) is invalid for %s."], operationSettings.maxRestock, ItemInfo.GetLink(itemString) or "?").." "..errMsg
	elseif maxRestock < MIN_RESTOCK_VALUE or maxRestock > MAX_RESTOCK_VALUE then
		return nil, format(L["Your max restock (%s) is invalid for %s."], operationSettings.maxRestock, ItemInfo.GetLink(itemString) or "?").." "..format(L["Must be between %d and %s."], MIN_RESTOCK_VALUE, MAX_RESTOCK_VALUE)
	end
	return maxRestock
end

function private.GetOperationInfo(operationSettings)
	if operationSettings.minProfit ~= "" then
		return L["Restocking with a min profit."]
	else
		return L["Restocking with no min profit."]
	end
end

function private.GetOperationSettings(itemString)
	itemString = TSM.Groups.TranslateItemString(itemString)
	local operationName, operationSettings = TSM.Operations.GetFirstOperationByItem("Crafting", itemString)
	if not operationName then
		return
	end
	return operationSettings
end
