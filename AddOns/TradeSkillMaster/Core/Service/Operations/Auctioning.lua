-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Auctioning = TSM.Operations:NewPackage("Auctioning")
local Environment = TSM.Include("Environment")
local L = TSM.Include("Locale").GetTable()
local TempTable = TSM.Include("Util.TempTable")
local Money = TSM.Include("Util.Money")
local private = {}
local OPERATION_INFO = {
	-- general
	ignoreLowDuration = { type = "number", default = 0 },
	-- post
	postCap = { type = "string", default = "5" },
	keepQuantity = { type = "string", default = "0" },
	maxExpires = { type = "string", default = "0" },
	duration = { type = "number", default = 2, customSanitizeFunction = nil },
	bidPercent = { type = "number", default = 1 },
	undercut = { type = "string", default = "0c", customSanitizeFunction = nil },
	minPrice = { type = "string", default = "check(first(crafting,dbmarket,dbregionmarketavg),max(0.25*avg(crafting,dbmarket,dbregionmarketavg),1.5*vendorsell))" },
	maxPrice = { type = "string", default = "check(first(crafting,dbmarket,dbregionmarketavg),max(5*avg(crafting,dbmarket,dbregionmarketavg),30*vendorsell))" },
	normalPrice = { type = "string", default = "check(first(crafting,dbmarket,dbregionmarketavg),max(2*avg(crafting,dbmarket,dbregionmarketavg),12*vendorsell))" },
	priceReset = { type = "string", default = "none" },
	aboveMax = { type = "string", default = "maxPrice" },
	-- cancel
	cancelUndercut = { type = "boolean", default = true },
	cancelRepost = { type = "boolean", default = true },
	cancelRepostThreshold = { type = "string", default = "1g" },
}
local OPERATION_VALUE_LIMITS = {
	postCap = { min = 0, max = 50000 },
	keepQuantity = { min = 0, max = 50000 },
	maxExpires = { min = 0, max = 50000 },
}
if not Environment.IsRetail() then
	OPERATION_INFO.blacklist = { type = "string", default = "" }
	OPERATION_INFO.undercut.default = "1c"
end
if Environment.HasFeature(Environment.FEATURES.AH_STACKS) then
	OPERATION_INFO.matchStackSize = { type = "boolean", default = false }
	OPERATION_INFO.stackSize = { type = "string", default = "1" }
	OPERATION_INFO.stackSizeIsCap = { type = "boolean", default = false }
	OPERATION_VALUE_LIMITS.stackSize = { min = 1, max = 200 }
	OPERATION_VALUE_LIMITS.postCap.max = 200
end



-- ============================================================================
-- Module Functions
-- ============================================================================

function Auctioning.OnInitialize()
	OPERATION_INFO.duration.customSanitizeFunction = private.SanitizeDuration
	OPERATION_INFO.undercut.customSanitizeFunction = private.SanitizeUndercut
	TSM.Operations.Register("Auctioning", L["Auctioning"], OPERATION_INFO, 20, private.GetOperationInfo, private.OperationSanitize)
end

function Auctioning.GetMinMaxValues(key)
	local info = OPERATION_VALUE_LIMITS[key]
	return info and info.min or -math.huge, info and info.max or math.huge
end

function Auctioning.GetMinPrice(itemString)
	return private.GetOperationValueHelper(itemString, "minPrice")
end

function Auctioning.GetMaxPrice(itemString)
	return private.GetOperationValueHelper(itemString, "maxPrice")
end

function Auctioning.GetNormalPrice(itemString)
	return private.GetOperationValueHelper(itemString, "normalPrice")
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.OperationSanitize(operation)
	if not Environment.HasFeature(Environment.FEATURES.AH_STACKS) and operation.stackSize then
		operation.postCap = tonumber(operation.postCap) * tonumber(operation.stackSize)
	end
	if Environment.IsRetail() and (type(operation.undercut) == "number" and operation.undercut or Money.FromString(operation.undercut) or math.huge) < COPPER_PER_SILVER then
		operation.undercut = "0c"
	end
end

function private.SanitizeDuration(value)
	-- convert from 12/24/48 durations to 1/2/3 API values
	if value == 12 then
		return 1
	elseif value == 24 then
		return 2
	elseif value == 48 then
		return 3
	else
		return value
	end
end

function private.SanitizeUndercut(value)
	if Environment.IsRetail() and (Money.FromString(Money.ToString(value) or value) or math.huge) < COPPER_PER_SILVER then
		return "0c"
	end
	return value
end

function private.GetOperationValueHelper(itemString, key)
	local origItemString = itemString
	itemString = TSM.Groups.TranslateItemString(itemString)
	local operationName, operationSettings = TSM.Operations.GetFirstOperationByItem("Auctioning", itemString)
	if not operationName then
		return
	end
	return TSM.Auctioning.Util.GetPrice(key, operationSettings, origItemString)
end

function private.GetOperationInfo(operationSettings)
	local parts = TempTable.Acquire()

	-- get the post string
	if operationSettings.postCap == 0 then
		tinsert(parts, L["No posting."])
	else
		if Environment.HasFeature(Environment.FEATURES.AH_STACKS) then
			tinsert(parts, format(L["Posting %d stack(s) of %d for %s hours."], operationSettings.postCap, operationSettings.stackSize, strmatch(TSM.CONST.AUCTION_DURATIONS[operationSettings.duration], "%d+")))
		else
			tinsert(parts, format(L["Posting %d items for %s hours."], operationSettings.postCap, strmatch(TSM.CONST.AUCTION_DURATIONS[operationSettings.duration], "%d+")))
		end
	end

	-- get the cancel string
	if operationSettings.cancelUndercut and operationSettings.cancelRepost then
		tinsert(parts, format(L["Canceling undercut auctions and to repost higher."]))
	elseif operationSettings.cancelUndercut then
		tinsert(parts, format(L["Canceling undercut auctions."]))
	elseif operationSettings.cancelRepost then
		tinsert(parts, format(L["Canceling to repost higher."]))
	else
		tinsert(parts, L["Not canceling."])
	end

	local result = table.concat(parts, " ")
	TempTable.Release(parts)
	return result
end
