-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Shopping = TSM.Operations:NewPackage("Shopping")
local private = {}
local L = TSM.Include("Locale").GetTable()
local CustomPrice = TSM.Include("Service.CustomPrice")
local BagTracking = TSM.Include("Service.BagTracking")
local GuildTracking = TSM.Include("Service.GuildTracking")
local MailTracking = TSM.Include("Service.MailTracking")
local AltTracking = TSM.Include("Service.AltTracking")
local AuctionTracking = TSM.Include("Service.AuctionTracking")
local Settings = TSM.Include("Service.Settings")
local OPERATION_INFO = {
	restockQuantity = { type = "string", default = "0" },
	maxPrice = { type = "string", default = "dbmarket" },
	showAboveMaxPrice = { type = "boolean", default = true },
	restockSources = { type = "table", default = { alts = false, auctions = false, bank = false, guild = false } },
}
local MIN_RESTOCK_VALUE = 0
local MAX_RESTOCK_VALUE = 50000



-- ============================================================================
-- Module Functions
-- ============================================================================

function Shopping.OnInitialize()
	TSM.Operations.Register("Shopping", L["Shopping"], OPERATION_INFO, 1, private.GetOperationInfo)
end

function Shopping.GetRestockRange()
	return MIN_RESTOCK_VALUE, MAX_RESTOCK_VALUE
end

function Shopping.GetMaxPrice(itemString)
	local operationSettings = private.GetOperationSettings(itemString)
	if not operationSettings then
		return
	end
	return CustomPrice.GetValue(operationSettings.maxPrice, itemString)
end

function Shopping.ShouldShowAboveMaxPrice(itemString)
	local operationSettings = private.GetOperationSettings(itemString)
	if not operationSettings then
		return
	end
	return operationSettings.showAboveMaxPrice
end

function Shopping.IsFiltered(itemString, itemBuyout)
	local operationSettings = private.GetOperationSettings(itemString)
	if not operationSettings then
		return true
	end
	if operationSettings.showAboveMaxPrice then
		return false
	end
	local maxPrice = CustomPrice.GetValue(operationSettings.maxPrice, itemString)
	if itemBuyout > (maxPrice or 0) then
		return true, true
	end
	return false
end

function Shopping.ValidAndGetRestockQuantity(itemString)
	local operationSettings = private.GetOperationSettings(itemString)
	if not operationSettings then
		return false, nil
	end
	local isValid, err = CustomPrice.Validate(operationSettings.maxPrice)
	if not isValid then
		return false, err
	end
	local maxQuantity, restockQuantity = nil, nil
	restockQuantity, err = CustomPrice.GetValue(operationSettings.restockQuantity, itemString, true)
	if not restockQuantity then
		return false, err
	elseif restockQuantity < MIN_RESTOCK_VALUE or restockQuantity > MAX_RESTOCK_VALUE then
		return false, format(L["Your restock quantity is invalid. It must be between %d and %s."], MIN_RESTOCK_VALUE, MAX_RESTOCK_VALUE)
	end
	if restockQuantity > 0 then
		-- include mail and bags
		local numHave = MailTracking.GetQuantity(itemString)
		if operationSettings.restockSources.bank then
			numHave = numHave + BagTracking.GetTotalQuantity(itemString)
		else
			numHave = numHave + BagTracking.GetBagQuantity(itemString)
		end
		if operationSettings.restockSources.guild then
			numHave = numHave + GuildTracking.GetQuantity(itemString)
		end
		if operationSettings.restockSources.alts or operationSettings.restockSources.auctions then
			local numAuctions = AuctionTracking.GetQuantity(itemString)
			local numAlts = 0
			for _, factionrealm, character in Settings.ConnectedFactionrealmAltCharacterIterator() do
				numAlts = numAlts + AltTracking.GetBagQuantity(itemString, character, factionrealm)
				numAlts = numAlts + AltTracking.GetBankQuantity(itemString, character, factionrealm)
				numAlts = numAlts + AltTracking.GetReagentBankQuantity(itemString, character, factionrealm)
				numAlts = numAlts + AltTracking.GetMailQuantity(itemString, character, factionrealm)
				numAuctions = numAuctions + AltTracking.GetAuctionQuantity(itemString, character, factionrealm)
			end
			if operationSettings.restockSources.alts then
				numHave = numHave + numAlts
			end
			if operationSettings.restockSources.auctions then
				numHave = numHave + numAuctions
			end
		end
		if numHave >= restockQuantity then
			return false, nil
		end
		maxQuantity = restockQuantity - numHave
	end
	if not operationSettings.showAboveMaxPrice and not CustomPrice.GetValue(operationSettings.maxPrice, itemString) then
		-- we're not showing auctions above the max price and the max price isn't valid for this item, so skip it
		return false, nil
	end
	return true, maxQuantity
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.GetOperationInfo(operationSettings)
	if operationSettings.showAboveMaxPrice then
		return format(L["Shopping for auctions including those above the max price."])
	else
		return format(L["Shopping for auctions with a max price set."])
	end
end

function private.GetOperationSettings(itemString)
	itemString = TSM.Groups.TranslateItemString(itemString)
	local operationName, operationSettings = TSM.Operations.GetFirstOperationByItem("Shopping", itemString)
	if not operationName then
		return
	end
	return operationSettings
end
