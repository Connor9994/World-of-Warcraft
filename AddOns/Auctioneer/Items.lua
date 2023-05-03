local Items = Auctioneer:Boot("Items")

local Item = {
	--[[

	id: string, The ID that Auctioneer uses to fetch statistics for this item.
	itemKey: {
		itemID,
		itemLevel,
		itemSuffix,
		battlePetSpeciesID
	},
	itemInfo: {
		itemName,
		battlePetLink,
		quality,
		iconFileID,
		isPet,
		isCommodity,
		isEquipment
	},
	itemData: {
		itemKey,
		appearanceLink,
		totalQuantity,
		minPrice,
		containsOwnerItem
	},

	]]
}

-- Gets additional information from the item's link.
function Item:Info()
	if self._info then
		return self._info
	end

	self._info = Items:InfoStruct(self)
	return self._info
end

function Item:ID()
	if not self.id then
		self.id = Auctioneer:ItemKeyKey(self.itemKey)
	end
	return self.id
end

local meta = {__index = Item}
function Items:NewItem(n)
	n = n or {}
	if getmetatable(n) then
		error("Auctioneer: New Item object already has metatable")
	end
	setmetatable(n, meta)
	return n
end

function Items:InfoStruct(item)
	local info = {}

	if not item.itemInfo then
		item.itemInfo = C_AuctionHouse.GetItemKeyInfo(item.itemKey)
	end

	info.name = item.itemInfo.itemName
	info.icon = item.itemInfo.iconFileID
	info.quality = item.itemInfo.quality

	if item.itemKey.battlePetSpeciesID > 0 then
		info.link = item.itemInfo.battlePetLink
	else
		if item.itemData then
			info.link = item.itemData.appearanceLink
		end

		local itemID = item.itemKey.itemID
		if not info.name then
			info.name = C_Item.GetItemNameByID(itemID)
		end
		if not info.quality then
			info.quality = C_Item.GetItemQualityByID(itemID)
		end
		if not info.icon then
			info.icon = C_Item.GetItemIconByID(itemID)
		end

		info.inventoryType = C_Item.GetItemInventoryTypeByID(itemID)

		if C_Item.IsItemDataCachedByID(itemID) then
			info.vendorPrice = select(11, GetItemInfo(itemID));
		end
	end

	if info.quality then
		info.color = strsub(ITEM_QUALITY_COLORS[info.quality].hex, 3)
	elseif info.link then
		info.color = strmatch(info.link, "^|c([0-9a-f]+)|H")
	end

	if not info.color then
		info.color = "ff604040"
	end

	if not info.name then
		if info.link then
			info.name = select(3, LinkUtil.ExtractLink(link))
		else
			info.name = info.itemString
		end
	end

	return info
end
