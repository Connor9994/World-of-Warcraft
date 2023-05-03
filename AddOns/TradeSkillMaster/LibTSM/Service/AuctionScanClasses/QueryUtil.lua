-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local QueryUtil = TSM.Init("Service.AuctionScanClasses.QueryUtil") ---@class Service.AuctionScanClasses.QueryUtil
local Environment = TSM.Include("Environment")
local TempTable = TSM.Include("Util.TempTable")
local Log = TSM.Include("Util.Log")
local ItemString = TSM.Include("Util.ItemString")
local Threading = TSM.Include("Service.Threading")
local ItemInfo = TSM.Include("Service.ItemInfo")
local Query = TSM.Include("Service.AuctionScanClasses.Query")
local private = {
	itemListSortValue = {},
}
local MAX_ITEM_INFO_RETRIES = 30



-- ============================================================================
-- Module Functions
-- ============================================================================

function QueryUtil.GenerateThreaded(itemList, callback, context)
	-- get all the item info into the game's cache
	for _ = 1, MAX_ITEM_INFO_RETRIES do
		local isMissingItemInfo = false
		for _, itemString in ipairs(itemList) do
			if not private.HasInfo(itemString) then
				isMissingItemInfo = true
			end
			Threading.Yield()
		end
		if not isMissingItemInfo then
			break
		end
		Threading.Sleep(0.1)
	end

	-- remove items we're missing info for
	for i = #itemList, 1, -1 do
		if not private.HasInfo(itemList[i]) then
			Log.Err("Missing item info for %s", itemList[i])
			tremove(itemList, i)
		end
		Threading.Yield()
	end
	if #itemList == 0 then
		return
	end

	-- add all the items
	if Environment.IsRetail() then
		-- sort the item list so all base items are grouped together but keep relative ordering between base items the same
		wipe(private.itemListSortValue)
		for i, itemString in ipairs(itemList) do
			local baseItemString = ItemString.GetBaseFast(itemString)
			private.itemListSortValue[baseItemString] = private.itemListSortValue[baseItemString] or i
			private.itemListSortValue[itemString] = private.itemListSortValue[baseItemString]
		end
		sort(itemList, private.ItemListSortHelper)
		local currentBaseItemString = nil
		local currentItems = TempTable.Acquire()
		for _, itemString in ipairs(itemList) do
			local baseItemString = ItemString.GetBaseFast(itemString)
			assert(baseItemString)
			if baseItemString == currentBaseItemString then
				-- same base item
				tinsert(currentItems, itemString)
			else
				-- new base item
				if currentBaseItemString then
					private.GenerateQuery(callback, context, currentItems, ItemInfo.GetName(currentBaseItemString))
					wipe(currentItems)
				end
				currentBaseItemString = baseItemString
				tinsert(currentItems, itemString)
			end
		end
		if currentBaseItemString then
			private.GenerateQuery(callback, context, currentItems, ItemInfo.GetName(currentBaseItemString))
			wipe(currentItems)
		end
		TempTable.Release(currentItems)
	else
		for _, itemString in ipairs(itemList) do
			private.GenerateQuery(callback, context, itemString, private.GetItemQueryInfo(itemString))
		end
	end
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.GetItemQueryInfo(itemString)
	local name = ItemInfo.GetName(itemString)
	local level = ItemInfo.GetMinLevel(itemString) or 0
	local quality = ItemInfo.GetQuality(itemString)
	local classId = ItemInfo.GetClassId(itemString) or 0
	local subClassId = ItemInfo.GetSubClassId(itemString) or 0
	-- Ignoring level because level can now vary
	if itemString == ItemString.GetBase(itemString) and (classId == Enum.ItemClass.Weapon or classId == Enum.ItemClass.Armor or (classId == Enum.ItemClass.Gem and subClassId == Enum.ItemGemSubclass.Artifactrelic)) then
		level = nil
	end
	return name, level, level, quality, classId, subClassId
end

function private.HasInfo(itemString)
	return ItemInfo.GetName(itemString) and ItemInfo.GetQuality(itemString) and ItemInfo.GetMinLevel(itemString)
end

function private.GenerateQuery(callback, context, items, name, minLevel, maxLevel, quality, class, subClass)
	local query = Query.Get()
		:SetStr(name, false)
		:SetQualityRange(quality, quality)
		:SetLevelRange(minLevel, maxLevel)
		:SetClass(class, subClass)
		:SetItems(items)
	callback(query, context)
end

function private.ItemListSortHelper(a, b)
	local aSortValue = private.itemListSortValue[a]
	local bSortValue = private.itemListSortValue[b]
	if aSortValue ~= bSortValue then
		return aSortValue < bSortValue
	end
	return a < b
end
