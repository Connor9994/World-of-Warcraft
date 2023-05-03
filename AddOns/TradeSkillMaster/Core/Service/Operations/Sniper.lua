-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Sniper = TSM.Operations:NewPackage("Sniper")
local private = {}
local L = TSM.Include("Locale").GetTable()
local CustomPrice = TSM.Include("Service.CustomPrice")
local OPERATION_INFO = {
	belowPrice = { type = "string", default = "max(vendorsell, ifgt(DBRegionMarketAvg, 250000g, 0.8, ifgt(DBRegionMarketAvg, 100000g, 0.7, ifgt(DBRegionMarketAvg, 50000g, 0.6, ifgt(DBRegionMarketAvg, 25000g, 0.5, ifgt(DBRegionMarketAvg, 10000g, 0.4, ifgt(DBRegionMarketAvg, 5000g, 0.3, ifgt(DBRegionMarketAvg, 2000g, 0.2, ifgt(DBRegionMarketAvg, 1000g, 0.1, 0.05)))))))) * DBRegionMarketAvg)" },
}



-- ============================================================================
-- Module Functions
-- ============================================================================

function Sniper.OnInitialize()
	TSM.Operations.Register("Sniper", L["Sniper"], OPERATION_INFO, 1, private.GetOperationInfo)
end

function Sniper.IsOperationValid(itemString)
	local _, operationSettings = TSM.Operations.GetFirstOperationByItem("Sniper", itemString)
	if not operationSettings then
		return false
	end
	local isValid = CustomPrice.Validate(operationSettings.belowPrice)
	return isValid
end

function Sniper.HasOperation(itemString)
	itemString = TSM.Groups.TranslateItemString(itemString)
	return TSM.Operations.GetFirstOperationByItem("Sniper", itemString) and true or false
end

function Sniper.GetBelowPrice(itemString)
	itemString = TSM.Groups.TranslateItemString(itemString)
	local operationName, operationSettings = TSM.Operations.GetFirstOperationByItem("Sniper", itemString)
	if not operationName then
		return
	end
	return CustomPrice.GetValue(operationSettings.belowPrice, itemString)
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.GetOperationInfo(operationSettings)
	return L["Sniping items below a max price"]
end
