-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local ItemClass = TSM.Init("Data.ItemClass") ---@class Data.ItemClass
local Environment = TSM.Include("Environment")
local STATIC_DATA = {
	classes = {},
	subClasses = {},
	classLookup = {},
	classIdLookup = {},
	inventorySlotIdLookup = {},
}



-- ============================================================================
-- Population of the Static Data
-- ============================================================================

do
	local ITEM_CLASS_IDS = nil
	if Environment.IsRetail() then
		ITEM_CLASS_IDS = {
			Enum.ItemClass.Weapon,
			Enum.ItemClass.Armor,
			Enum.ItemClass.Container,
			Enum.ItemClass.Gem,
			Enum.ItemClass.ItemEnhancement,
			Enum.ItemClass.Consumable,
			Enum.ItemClass.Glyph,
			Enum.ItemClass.Tradegoods,
			Enum.ItemClass.Recipe,
			Enum.ItemClass.Battlepet,
			Enum.ItemClass.Questitem,
			Enum.ItemClass.Miscellaneous,
		}
	elseif Environment.IsWrathClassic() then
		ITEM_CLASS_IDS = {
			Enum.ItemClass.Weapon,
			Enum.ItemClass.Armor,
			Enum.ItemClass.Container,
			Enum.ItemClass.Consumable,
			Enum.ItemClass.Glyph,
			Enum.ItemClass.Tradegoods,
			Enum.ItemClass.Projectile,
			Enum.ItemClass.Quiver,
			Enum.ItemClass.Recipe,
			Enum.ItemClass.Gem,
			Enum.ItemClass.Miscellaneous,
			Enum.ItemClass.Questitem,
		}
	elseif Environment.IsVanillaClassic() then
		ITEM_CLASS_IDS = {
			Enum.ItemClass.Weapon,
			Enum.ItemClass.Armor,
			Enum.ItemClass.Container,
			Enum.ItemClass.Consumable,
			Enum.ItemClass.Tradegoods,
			Enum.ItemClass.Projectile,
			Enum.ItemClass.Quiver,
			Enum.ItemClass.Recipe,
			Enum.ItemClass.Reagent,
			Enum.ItemClass.Miscellaneous,
		}
	else
		error("Invalid game version")
	end

	for _, classId in ipairs(ITEM_CLASS_IDS) do
		local class = GetItemClassInfo(classId)
		if class then
			STATIC_DATA.classIdLookup[strlower(class)] = classId
			STATIC_DATA.classLookup[class] = {}
			STATIC_DATA.classLookup[class]._index = classId
			local subClasses = nil
			if Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE) then
				subClasses = C_AuctionHouse.GetAuctionItemSubClasses(classId)
			else
				subClasses = {GetAuctionItemSubClasses(classId)}
			end
			for _, subClassId in pairs(subClasses) do
				local subClassName = GetItemSubClassInfo(classId, subClassId)
				if not strfind(subClassName, "(OBSOLETE)") then
					STATIC_DATA.classLookup[class][subClassName] = subClassId
				end
			end
		end
	end

	for class, subClasses in pairs(STATIC_DATA.classLookup) do
		tinsert(STATIC_DATA.classes, class)
		STATIC_DATA.subClasses[class] = {}
		for subClass in pairs(subClasses) do
			if subClass ~= "_index" then
				tinsert(STATIC_DATA.subClasses[class], subClass)
			end
		end
		sort(STATIC_DATA.subClasses[class], function(a, b) return STATIC_DATA.classLookup[class][a] < STATIC_DATA.classLookup[class][b] end)
	end
	sort(STATIC_DATA.classes, function(a, b) return STATIC_DATA.classIdLookup[strlower(a)] < STATIC_DATA.classIdLookup[strlower(b)] end)

	for _, id in pairs(Enum.InventoryType) do
		local invType = GetItemInventorySlotInfo(id)
		if invType then
			STATIC_DATA.inventorySlotIdLookup[strlower(invType)] = id
		end
	end
end



-- ============================================================================
-- Module Functions
-- ============================================================================

function ItemClass.GetClasses()
	return STATIC_DATA.classes
end

function ItemClass.GetSubClasses(class)
	return STATIC_DATA.subClasses[class]
end

function ItemClass.GetClassIdFromClassString(classStr)
	return STATIC_DATA.classIdLookup[strlower(classStr)]
end

function ItemClass.GetSubClassIdFromSubClassString(subClass, classId)
	if not classId then return end
	local class = GetItemClassInfo(classId)
	if not STATIC_DATA.classLookup[class] then return end
	for str, index in pairs(STATIC_DATA.classLookup[class]) do
		if strlower(str) == strlower(subClass) then
			return index
		end
	end
end

function ItemClass.GetInventorySlotIdFromInventorySlotString(slot)
	return STATIC_DATA.inventorySlotIdLookup[strlower(slot)]
end
