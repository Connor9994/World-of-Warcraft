local name,ZGV = ...

ZGV.Retrofit = {}

ZGV.Retrofit.C_Container = C_Container or {
	ContainerIDToInventoryID = ContainerIDToInventoryID,
	GetContainerNumSlots = GetContainerNumSlots,
	GetContainerNumFreeSlots = GetContainerNumFreeSlots,
	GetContainerItemLink = GetContainerItemLink,
	GetContainerItemID = GetContainerItemID,
	GetContainerItemInfo = function(bag,slot)
		local textureName, stackCount, isLocked, quality, isReadable, hasLoot, itemLink, isFiltered, hasNoValue, itemID, isBound = GetContainerItemInfo(bag, slot)
		return {iconFileID=textureName,stackCount=stackCount,isLocked=isLocked,isReadable=isReadable,hasLoot=hasLoot,hyperlink=itemLink,isFiltered=isFiltered,hasNoValue=hasNoValue,quality=quality,itemID=itemID,isBound=isBound}
	end,
	PickupContainerItem = PickupContainerItem,
	UseContainerItem = UseContainerItem,
}

ZGV.Retrofit.Enum = {}
ZGV.Retrofit.Enum.ItemClass = Enum.ItemClass or {
	Armor = LE_ITEM_CLASS_ARMOR,
	Battlepet = LE_ITEM_CLASS_BATTLEPET,
	Consumable = LE_ITEM_CLASS_CONSUMABLE,
	Container = LE_ITEM_CLASS_CONTAINER,
	--CurrencyTokenObsolete = 10,
	Gem = LE_ITEM_CLASS_GEM,
	Glyph = LE_ITEM_CLASS_GLYPH,
	ItemEnhancement = LE_ITEM_CLASS_ITEM_ENHANCEMENT,
	Key = LE_ITEM_CLASS_KEY,
	Miscellaneous = LE_ITEM_CLASS_MISCELLANEOUS,
	--PermanentObsolete = 14,
	Profession = 19,
	Projectile = LE_ITEM_CLASS_PROJECTILE,
	Questitem = LE_ITEM_CLASS_QUESTITEM,
	Quiver = LE_ITEM_CLASS_QUIVER,
	Reagent = LE_ITEM_CLASS_REAGENT,
	Recipe = LE_ITEM_CLASS_RECIPE,
	Tradegoods = LE_ITEM_CLASS_TRADEGOODS,
	Weapon = LE_ITEM_CLASS_WEAPON,
	WoWToken = LE_ITEM_CLASS_WOW_TOKEN,
}


ZGV.Retrofit.Enum.ItemArmorSubclass = Enum.ItemArmorSubclass or {
	Cloth = LE_ITEM_ARMOR_CLOTH,
	Cosmetic = LE_ITEM_ARMOR_COSMETIC,
	Generic = LE_ITEM_ARMOR_GENERIC,
	Idol = LE_ITEM_ARMOR_IDOL,
	Leather = LE_ITEM_ARMOR_LEATHER,
	Libram = LE_ITEM_ARMOR_LIBRAM,
	Mail = LE_ITEM_ARMOR_MAIL,
	Plate = LE_ITEM_ARMOR_PLATE,
	Relic = LE_ITEM_ARMOR_RELIC,
	Shield = LE_ITEM_ARMOR_SHIELD,
	Sigil = LE_ITEM_ARMOR_SIGIL,
	Totem = LE_ITEM_ARMOR_TOTEM,
}

ZGV.Retrofit.Enum.ItemConsumableSubclass = Enum.ItemConsumableSubclass or {
	Bandage = 6,
	Elixir = 2,
	Fooddrink = 4,
	Generic = 0,
	Itemenhancement = 5,
	Other = 7,
	Potion = 1,
	Scroll = 3,
}

ZGV.Retrofit.Enum.ItemMiscellaneousSubclass = Enum.ItemMiscellaneousSubclass or {
	CompanionPet = LE_ITEM_MISCELLANEOUS_COMPANION_PET,
	Holiday = LE_ITEM_MISCELLANEOUS_HOLIDAY,
	Junk = LE_ITEM_MISCELLANEOUS_JUNK,
	Mount = LE_ITEM_MISCELLANEOUS_MOUNT,
	MountEquipment = LE_ITEM_MISCELLANEOUS_MOUNT_EQUIPMENT,
	Other = LE_ITEM_MISCELLANEOUS_OTHER,
	Reagent = LE_ITEM_MISCELLANEOUS_REAGENT,
}

ZGV.Retrofit.Enum.ItemRecipeSubclass = Enum.ItemRecipeSubclass or {
	Alchemy = LE_ITEM_RECIPE_ALCHEMY,
	Blacksmithing = LE_ITEM_RECIPE_BLACKSMITHING,
	Book = LE_ITEM_RECIPE_BOOK,
	Cooking = LE_ITEM_RECIPE_COOKING,
	Enchanting = LE_ITEM_RECIPE_ENCHANTING,
	Engineering = LE_ITEM_RECIPE_ENGINEERING,
	FirstAid = LE_ITEM_RECIPE_FIRST_AID,
	Fishing = LE_ITEM_RECIPE_FISHING,
	Inscription = LE_ITEM_RECIPE_INSCRIPTION,
	Jewelcrafting = LE_ITEM_RECIPE_JEWELCRAFTING,
	Leatherworking = LE_ITEM_RECIPE_LEATHERWORKING,
	Tailoring = LE_ITEM_RECIPE_TAILORING,
}

ZGV.Retrofit.Enum.ItemWeaponSubclass = Enum.ItemWeaponSubclass or {
	Axe1H = LE_ITEM_WEAPON_AXE1H,
	Axe2H = LE_ITEM_WEAPON_AXE2H,
	Bearclaw = LE_ITEM_WEAPON_BEARCLAW,
	Bows = LE_ITEM_WEAPON_BOWS,
	Catclaw = LE_ITEM_WEAPON_CATCLAW,
	Crossbow = LE_ITEM_WEAPON_CROSSBOW,
	Dagger = LE_ITEM_WEAPON_DAGGER,
	Fishingpole = LE_ITEM_WEAPON_FISHINGPOLE,
	Generic = LE_ITEM_WEAPON_GENERIC,
	Guns = LE_ITEM_WEAPON_GUNS,
	Mace1H = LE_ITEM_WEAPON_MACE1H,
	Mace2H = LE_ITEM_WEAPON_MACE2H,
	Obsolete3 = LE_ITEM_WEAPON_OBSOLETE3,
	Polearm = LE_ITEM_WEAPON_POLEARM,
	Staff = LE_ITEM_WEAPON_STAFF,
	Sword1H = LE_ITEM_WEAPON_SWORD1H,
	Sword2H = LE_ITEM_WEAPON_SWORD2H,
	Thrown = LE_ITEM_WEAPON_THROWN,
	Unarmed = LE_ITEM_WEAPON_UNARMED,
	Wand = LE_ITEM_WEAPON_WAND,
	Warglaive = LE_ITEM_WEAPON_WARGLAIVE,
}

ZGV.Retrofit.Enum.ItemRecipeSubclass = Enum.ItemRecipeSubclass or {
	Alchemy = LE_ITEM_RECIPE_ALCHEMY,
	Blacksmithing = LE_ITEM_RECIPE_BLACKSMITHING,
	Book = LE_ITEM_RECIPE_BOOK,
	Cooking = LE_ITEM_RECIPE_COOKING,
	Enchanting = LE_ITEM_RECIPE_ENCHANTING,
	Engineering = LE_ITEM_RECIPE_ENGINEERING,
	FirstAid = LE_ITEM_RECIPE_FIRST_AID,
	Fishing = LE_ITEM_RECIPE_FISHING,
	Inscription = LE_ITEM_RECIPE_INSCRIPTION,
	Jewelcrafting = LE_ITEM_RECIPE_JEWELCRAFTING,
	Leatherworking = LE_ITEM_RECIPE_LEATHERWORKING,
	Tailoring = LE_ITEM_RECIPE_TAILORING,
}

ZGV.Retrofit.Enum.TooltipDataType = Enum.TooltipDataType or {
	Achievement = 12,
	AzeriteEssence = 8,
	BattlePet = 6,
	CompanionPet = 9,
	Corpse = 3,
	CorruptionCleanser = 20,
	Currency = 5,
	Debug = 26,
	EnhancedConduit = 13,
	EquipmentSet = 14,
	Flyout = 22,
	InstanceLock = 15,
	Item = 0,
	Macro = 25,
	MinimapMouseover = 21,
	Mount = 10,
	Object = 4,
	PetAction = 11,
	PvPBrawl = 16,
	Quest = 23,
	QuestPartyProgress = 24,
	RecipeRankInfo = 17,
	Spell = 1,
	Totem = 18,
	Toy = 19,
	Unit = 2,
	UnitAura = 7,
}