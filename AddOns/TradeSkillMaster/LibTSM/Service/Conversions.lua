-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Conversions = TSM.Init("Service.Conversions") ---@class Service.Conversions
local DisenchantInfo = TSM.Include("Data.DisenchantInfo")
local Mill = TSM.Include("Data.Mill")
local Prospect = TSM.Include("Data.Prospect")
local Transform = TSM.Include("Data.Transform")
local VendorTrade = TSM.Include("Data.VendorTrade")
local TempTable = TSM.Include("Util.TempTable")
local ItemString = TSM.Include("Util.ItemString")
local Table = TSM.Include("Util.Table")
local ItemInfo = TSM.Include("Service.ItemInfo")
Conversions.METHOD = {
	DISENCHANT = newproxy(),
	MILL = newproxy(),
	PROSPECT = newproxy(),
	TRANSFORM = newproxy(),
	VENDOR_TRADE = newproxy(),
	CRAFT = newproxy(),
}
local private = {
	data = {},
	sourceItemCache = {},
	skippedConversions = {},
}
local MAX_CONVERSION_DEPTH = 3
local EMPTY_CONVERSION = newproxy()



-- ============================================================================
-- Module Loading
-- ============================================================================

Conversions:OnModuleLoad(function()
	Table.SetReadOnly(Conversions.METHOD)
	for itemString in DisenchantInfo.TargetItemIterator() do
		ItemInfo.FetchInfo(itemString)
	end
	for targetItemString in Mill.TargetItemIterator() do
		for sourceItemString in Mill.SourceItemIterator(targetItemString) do
			local rate, amount, minAmount, maxAmount, skillRequired = Mill.GetRate(targetItemString, sourceItemString)
			private.Add(targetItemString, sourceItemString, Conversions.METHOD.MILL, rate, amount, minAmount, maxAmount, skillRequired)
		end
	end
	for targetItemString in Prospect.TargetItemIterator() do
		for sourceItemString in Prospect.SourceItemIterator(targetItemString) do
			local rate, amount, minAmount, maxAmount, skillRequired = Prospect.GetRate(targetItemString, sourceItemString)
			private.Add(targetItemString, sourceItemString, Conversions.METHOD.PROSPECT, rate, amount, minAmount, maxAmount, skillRequired)
		end
	end
	for targetItemString in Transform.TargetItemIterator() do
		for sourceItemString in Transform.SourceItemIterator(targetItemString) do
			local rate = Transform.GetRate(targetItemString, sourceItemString)
			private.Add(targetItemString, sourceItemString, Conversions.METHOD.TRANSFORM, rate)
		end
	end
	for targetItemString in VendorTrade.TargetItemIterator() do
		for sourceItemString in VendorTrade.SourceItemIterator(targetItemString) do
			local rate = VendorTrade.GetRate(targetItemString, sourceItemString)
			private.Add(targetItemString, sourceItemString, Conversions.METHOD.VENDOR_TRADE, rate)
		end
	end
end)



-- ============================================================================
-- Module Functions
-- ============================================================================

function Conversions.AddCraft(targetItemString, sourceItemString, rate)
	private.Add(targetItemString, sourceItemString, Conversions.METHOD.CRAFT, rate)
end

function Conversions.TargetItemsByMethodIterator(sourceItemString, method)
	local context = TempTable.Acquire()
	context.sourceItemString = sourceItemString
	context.method = method
	return private.TargetItemsByMethodIteratorHelper, context, nil
end

function Conversions.GetTargetItemByName(targetItemName)
	targetItemName = strlower(targetItemName)
	for targetItemString in pairs(private.data) do
		local name = ItemInfo.GetName(targetItemString)
		if name and strlower(name) == targetItemName then
			return targetItemString
		end
	end
	for targetItemString in DisenchantInfo.TargetItemIterator() do
		local name = ItemInfo.GetName(targetItemString)
		if name and strlower(name) == targetItemName then
			return targetItemString
		end
	end
end

function Conversions.GetSourceItems(targetItemString)
	if not targetItemString or not private.data[targetItemString] or private.sourceItemCache[targetItemString] == EMPTY_CONVERSION then
		return
	end
	if not private.sourceItemCache[targetItemString] then
		local depthLookup = TempTable.Acquire()
		depthLookup[targetItemString] = -1 -- set this so we don't loop back through the target item
		private.sourceItemCache[targetItemString] = {}
		private.GetSourceItemsHelper(targetItemString, private.sourceItemCache[targetItemString], depthLookup, 0, 1)
		TempTable.Release(depthLookup)
		if not next(private.sourceItemCache[targetItemString]) then
			private.sourceItemCache[targetItemString] = EMPTY_CONVERSION
			return
		end
	end
	return private.sourceItemCache[targetItemString]
end

function Conversions.SourceItemsByMethodIterator(targetItemString, method)
	local context = TempTable.Acquire()
	context.targetItemString = targetItemString
	context.method = method
	return private.SourceItemsByMethodIteratorHelper, context, nil
end

function Conversions.GetRate(sourceItemString, targetItemString)
	local info = private.data[targetItemString][sourceItemString]
	return info and info.rate or nil
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.Add(targetItemString, sourceItemString, method, rate, amount, minAmount, maxAmount, skillRequired)
	targetItemString = ItemString.GetBase(targetItemString)
	sourceItemString = ItemString.GetBase(sourceItemString)
	assert(targetItemString and sourceItemString)

	private.data[targetItemString] = private.data[targetItemString] or {}
	if private.data[targetItemString][sourceItemString] then
		-- if there is more than one way to go from source to target, then just skip all conversions between these items
		private.skippedConversions[targetItemString..sourceItemString] = true
		private.data[targetItemString][sourceItemString] = nil
	end
	if private.skippedConversions[targetItemString..sourceItemString] then
		return
	end

	private.data[targetItemString][sourceItemString] = {
		method = method,
		rate = rate,
		amount = amount,
		minAmount = minAmount,
		maxAmount = maxAmount,
		skillRequired = skillRequired
	}
	ItemInfo.FetchInfo(targetItemString)
	ItemInfo.FetchInfo(sourceItemString)
	wipe(private.sourceItemCache)
end

function private.GetSourceItemsHelper(targetItemString, result, depthLookup, currentDepth, currentRate)
	if currentDepth >= MAX_CONVERSION_DEPTH or not private.data[targetItemString] then
		return
	end
	for sourceItemString, info in pairs(private.data[targetItemString]) do
		if not result[sourceItemString] or depthLookup[sourceItemString] > currentDepth then
			local rate = info.rate * currentRate
			result[sourceItemString] = rate
			depthLookup[sourceItemString] = currentDepth
			private.GetSourceItemsHelper(sourceItemString, result, depthLookup, currentDepth + 1, rate)
		end
	end
end

function private.TargetItemsByMethodIteratorHelper(context, index)
	while true do
		index = next(private.data, index)
		local items = private.data[index]
		if not items then
			TempTable.Release(context)
			return
		end
		local info = items[context.sourceItemString]
		if info and ((not context.method and info.method ~= Conversions.METHOD.CRAFT) or info.method == context.method) then
			return index, info.rate, info.amount, info.minAmount, info.maxAmount, info.skillRequired, info.method
		end
	end
end

function private.SourceItemsByMethodIteratorHelper(context, index)
	if not private.data[context.targetItemString] then
		TempTable.Release(context)
		return
	end
	while true do
		index = next(private.data[context.targetItemString], index)
		local info = private.data[context.targetItemString][index]
		if not info then
			TempTable.Release(context)
			return
		end
		if info.method == context.method then
			return index, info.rate
		end
	end
end
