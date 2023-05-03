local name,ZGV = ...

local ST_HERB = 5
local ST_PIGMENT = 5
local ST_CLOTH = 10
local ST_ORE = 10
local ST_BAR = 5
local ST_COOK = 5
local ST_COOKFARM = 25
local ST_PEARL = 1
local ST_GEM = 1
local ST_LEATHER = 10
local ST_HIDE = 10
local ST_SCALE = 10
local ST_ELEM = 5
local ST_ELEMMOTE = 10
local ST_DUST = 10
local ST_ESSENCEG = 5
local ST_ESSENCEL = 10
local ST_SHARDL = 3
local ST_SHARDS = 10

local L = ZGV.L

-- For easier coverage of entire classes and subclasses

-- ZGV.StackSizesByType[class]=number
-- or
-- ZGV.StackSizesByType[class][subclass]=number

-- class and subclass are localized!
ZGV.StackSizesByType = {
	[L["type_glyph"]] = 1,
	[L["type_consumable"]] = {[L["subtype_consumable_item_enhancement"]] = 1},
	[L["type_gem"]] = 1,

}

-- Individual items
ZGV.StackSizes = {

	-- herbs

		[765]=ST_HERB,--silverleaf
		[2447]=ST_HERB,--peacebloom
		[2449]=ST_HERB,--earthroot
		[2450]=ST_HERB,--briarthorn
		[2452]=ST_HERB,--swiftthistle
		[2453]=ST_HERB,--bruiseweed
		[785]=ST_HERB,--mageroyal
		[3820]=ST_HERB,--stranglekelp
		[3355]=ST_HERB,--wild steelbloom
		[3357]=ST_HERB,--liferoot
		[3356]=ST_HERB,--kingsblood
		[3369]=ST_HERB,--Grave Moss
		[3818]=ST_HERB,--fadeleaf
		[3821]=ST_HERB,--goldthorn
		[3358]=ST_HERB,--khadgar's whisker
		[3819]=ST_HERB,--dragon's teeth
		[8153]=ST_HERB,--wildvine
		[4625]=ST_HERB,--firebloom
		[8831]=ST_HERB,--purple lotus
		[8836]=ST_HERB,--arthas' tears
		[8838]=ST_HERB,--sungrass
		[8839]=ST_HERB,--blindweed
		[8845]=ST_HERB,--ghost mushroom
		[8846]=ST_HERB,--gromsblood
		[13464]=ST_HERB,--golden sansam
		[13463]=ST_HERB,--dreamfoil
		[13465]=ST_HERB,--mountain silversage
		[13466]=ST_HERB,--sorrowmoss
		[13467]=ST_HERB,--icecap
		[13468]=ST_HERB,--black lotus
		[22789]=ST_HERB,--terocone
		[22785]=ST_HERB,--felweed
		[22787]=ST_HERB,--ragveil
		[22788]=ST_HERB,--flame cap
		--[qq22722]=ST_HERB,
		[22786]=ST_HERB,--dreaming glory
		[22791]=ST_HERB,--netherbloom
		[22792]=ST_HERB,--nightmare vine
		[22793]=ST_HERB,--mana thistle
		[22794]=ST_HERB,--fel lotus
		[22790]=ST_HERB,--ancient lichen
		[36907]=ST_HERB,--Talandra's Rose
		[36901]=ST_HERB,--Goldclover
		[37921]=ST_HERB,--Deadnettle
		[36904]=ST_HERB,--Tiger Lily
		[36905]=ST_HERB,--Lichbloom
		[36906]=ST_HERB,--Icethorn
		[52983]=ST_HERB,--Cinderbloom
		[52984]=ST_HERB,--Stormvine
		[52985]=ST_HERB,--Azshara's Veil
		[52986]=ST_HERB,--Heartblossom
		[52988]=ST_HERB,--Whiptail
		[52987]=ST_HERB,--Twilight Jasmine
		[36908]=ST_HERB,--Frost Lotus

		-- and split:
		--Cata
		--[[
		--[52329]=ST_HERB,--Volatile Life
		[52986]=ST_HERB,--Heartblossom
		[52983]=ST_HERB,--Cinderbloom
		[52984]=ST_HERB,--Stormvine
		[52987]=ST_HERB,--Twilight Jasmine
		[52988]=ST_HERB,--Whiptail
		[52312]=ST_HERB,--Alicite
		[52316]=ST_HERB,--Hessonite
		[52314]=ST_HERB,--Nightstone
		[52182]=ST_HERB,--Jasper
		--]]
		--MoP
		[72234]=ST_HERB,--Green Tea Leaf
		[72237]=ST_HERB,--Rain Poppy  ( or silkweed below )
		[72235]=ST_HERB,--Silkweed
		[79010]=ST_HERB,--Snow Lily
		[79011]=ST_HERB,--Fool's Cap

	-- pigments

		[39151]=ST_PIGMENT,--alabaster pigment
		[39334]=ST_PIGMENT,--dusky pigment
		[43103]=ST_PIGMENT,--verdant pigment
		[39338]=ST_PIGMENT,--golden pigment
		[43104]=ST_PIGMENT,--burnt pigment
		[39339]=ST_PIGMENT,--emerald pigment
		[43105]=ST_PIGMENT,--indigo pigment
		[39340]=ST_PIGMENT,--violet pigment
		[43106]=ST_PIGMENT,--ruby pigment
		[39341]=ST_PIGMENT,--silvery pigment
		[43107]=ST_PIGMENT,--sapphire pigment
		[39342]=ST_PIGMENT,--nether pigment
		[43108]=ST_PIGMENT,--ebon pigment
		[39343]=ST_PIGMENT,--azure pigment
		[43109]=ST_PIGMENT,--icy pigment
		[61980]=ST_PIGMENT,--burning embers
		[61979]=ST_PIGMENT,--ashen pigment
		[79253]=ST_PIGMENT,--misty pigment
		[79251]=ST_PIGMENT,--shadow pigment

	-- cloths

		[2589]=ST_CLOTH, --Linen Cloth
		[2592]=ST_CLOTH, --Wool Cloth
		[4306]=ST_CLOTH, --Silk Cloth
		[4338]=ST_CLOTH, --Mageweave Cloth
		[14047]=ST_CLOTH, --Runecloth
		[21877]=ST_CLOTH, --Netherweave Cloth
		[33470]=ST_CLOTH, --Frostweave Cloth
		[53010]=ST_CLOTH, --Embersilk Cloth
		[72988]=ST_CLOTH, --Windwool Cloth: engineer,f.aid,
		[14256]=ST_CLOTH, --Felcloth


	-- Usage numbers are whacked from now on; this is merely a 'usable items' list from this point.

	-- mining
		[2770]=ST_ORE, --Copper Ore
		[2840]=ST_BAR, --Copper Bar
		[2771]=ST_ORE, --Tin Ore
		[3576]=ST_BAR, --Tin Bar
		[2841]=ST_BAR, --Bronze Bar
		[2772]=ST_ORE, --Iron Ore
		[3575]=ST_BAR, --Iron Bar
		[3859]=ST_BAR, --Steel Bar
		[3858]=ST_ORE, --Mithril Ore
		[7911]=ST_ORE, --Truesilver Ore
		[10097]=ST_BAR, --Mithril Bar
		[10620]=ST_ORE, --Thorium Ore
		[12359]=ST_BAR, --Thorium Bar
		[23424]=ST_ORE, --Fel Iron Ore
		[23445]=ST_BAR, --Fel Iron Bar
		[23425]=ST_ORE, --Adamantite Ore
		[23446]=ST_BAR, --Adamantite Bar
		[36909]=ST_ORE, --Cobalt Ore
		[36916]=ST_BAR, --Cobalt Bar
		[36912]=ST_ORE, --Saronite Ore
		[36913]=ST_BAR, --Saronite Bar
		[53038]=ST_ORE, --Obsidium Ore
		[54849]=ST_BAR, --Obsidium Bar
		[52185]=ST_ORE, --Elementium Ore
		[52186]=ST_BAR, --Elementium Bar
		[52183]=ST_ORE, --Pyrite Ore
		[23426]=ST_ORE, --Khorium Ore
		[72092]=ST_ORE, --Ghost Iron Ore
		[72093]=ST_ORE, --Kyparite
		[23427]=ST_ORE, --Eternium Ore

		[2835]=ST_ORE, --Rough Stone
		[2836]=ST_ORE, --Coarse Stone
		[2838]=ST_ORE, --Heavy Stone
		[12365]=ST_ORE, --Dense Stone

		[3857]=ST_ORE, --Coal


	-- cooking

		[3173]=ST_COOK, --Bear Meat
		[5503]=ST_COOK, --Clam Meat
		[3685]=ST_COOK, --Raptor Egg
		[12184]=ST_COOK, --Raptor Flesh
		[35562]=ST_COOK, --Bear Flank
		[12207]=ST_COOK, --Giant Egg
		[20424]=ST_COOK, --Sandworm Meat
		[27674]=ST_COOK, --Ravager Flesh
		[27682]=ST_COOK, --Talbuk Venison
		[43013]=ST_COOK, --Chilled Meat
		[43012]=ST_COOK, --Rhino Meat
		[43011]=ST_COOK, --Worg Haunch
		[62778]=ST_COOK, --Toughened Flesh
		[62791]=ST_COOK, --Blood Shrimp
		[62782]=ST_COOK, --Dragon Flank

		[75014]=ST_COOK, --Raw Crocolisk Belly
		[74839]=ST_COOK, --Wildfowl Breast
		[74837]=ST_COOK, --Raw Turtle Meat
		[74834]=ST_COOK, --Mushan Ribs
		[74833]=ST_COOK, --Raw Tiger Steak
		[769]=ST_COOK, --Chunk of Boar Meat
		[2672]=ST_COOK, --Stringy Wolf Meat
		[6889]=ST_COOK, --Small Egg

		[74841]=ST_COOKFARM, --Juicycrunch Carrot
		[74842]=ST_COOKFARM, --Mogu Pumpkin
		[74840]=ST_COOKFARM, --Green Cabbage
		[74844]=ST_COOKFARM, --Red Blossom Leek
		[74843]=ST_COOKFARM, --Scallions
		[74846]=ST_COOKFARM, --Witchberries
		[74847]=ST_COOKFARM, --Jade Squash
		[74849]=ST_COOKFARM, --Pink Turnip
		[74850]=ST_COOKFARM, --White Turnip

		[74838]=ST_COOK, --Raw Crab Meat
		[85506]=ST_COOK, --Viseclaw Meat

	-- pearls

		[5498]=ST_PEARL, --Small Lustrous Pearl
		[5500]=ST_PEARL, --Iridescent Pearl
		[7971]=ST_PEARL, --Black Pearl
		[13926]=ST_PEARL, --Golden Pearl
		[24479]=ST_PEARL, --Shadow Pearl
		[24478]=ST_PEARL, --Jaggal Pearl
		[36783]=ST_PEARL, --Northsea Pearl

	-- gems

		[774]=ST_GEM, --Malachite
		[818]=ST_GEM, --Tigerseye
		[1206]=ST_GEM, --Moss Agate
		[1210]=ST_GEM, --Shadowgem
		[1529]=ST_GEM, --Jade
		[1705]=ST_GEM, --Lesser Moonstone
		[3864]=ST_GEM, --Citrine
		[7909]=ST_GEM, --Aquamarine
		[7910]=ST_GEM, --Star Ruby
		[12363]=ST_GEM, --Arcane Crystal
		[12800]=ST_GEM, --Azerothian Diamond
		[23438]=ST_GEM, --Star of Elune
		[36929]=ST_GEM, --Huge Citrine
		[36932]=ST_GEM, --Dark Jade
		[52182]=ST_GEM, --Jasper
		[12361]=ST_GEM, --Blue Sapphire
		[12364]=ST_GEM, --Huge Emerald
		[12799]=ST_GEM, --Large Opal
		[23112]=ST_GEM, --Golden Draenite
		[23077]=ST_GEM, --Blood Garnet
		[23079]=ST_GEM, --Deep Peridot
		[23117]=ST_GEM, --Azure Moonstone
		[21929]=ST_GEM, --Flame Spessarite
		[23107]=ST_GEM, --Shadow Draenite
		[23440]=ST_GEM, --Dawnstone
		[23436]=ST_GEM, --Living Ruby
		[23441]=ST_GEM, --Nightseye
		[23437]=ST_GEM, --Talasite
		[36784]=ST_GEM, --Siren\'s Tear
		[36927]=ST_GEM, --Twilight Opal
		[36923]=ST_GEM, --Chalcedony
		[36920]=ST_GEM, --Sun Crystal
		[36924]=ST_GEM, --Sky Sapphire
		[52177]=ST_GEM, --Carnelian
		[52193]=ST_GEM, --Ember Topaz
		[52192]=ST_GEM, --Dream Emerald
		[52178]=ST_GEM, --Zephyrite
		[52177]=ST_GEM, --Carnelian
		[52193]=ST_GEM, --Ember Topaz
		[52192]=ST_GEM, --Dream Emerald
		[52178]=ST_GEM, --Zephyrite
		[76137]=ST_GEM, --Alexandrite
		[76136]=ST_GEM, --Pandarian Garnet
		[76135]=ST_GEM, --Roguestone
		[76134]=ST_GEM, --Sunstone
		[76133]=ST_GEM, --Lapis Lazuli
		[76130]=ST_GEM, --Tiger Opal
		[76141]=ST_GEM, --Imperial Amethyst
		[76131]=ST_GEM, --Primordial Ruby
		[76138]=ST_GEM, --River\'s Heart
		[76139]=ST_GEM, --Wild Jade
		[76142]=ST_GEM, --Sun\'s Radiance
		[76140]=ST_GEM, --Vermilion Onyx
		[90407]=20, --Sparkling Shard

	-- leather

		[2934]=ST_LEATHER, --Ruined Leather Scraps
		[2318]=ST_LEATHER, --Light Leather
		[2319]=ST_LEATHER, --Medium Leather
		[4234]=ST_LEATHER, --Heavy Leather
		[4304]=ST_LEATHER, --Thick Leather
		[8170]=ST_LEATHER, --Rugged Leather
		[15419]=ST_LEATHER, --Warbear Leather
		[15417]=ST_LEATHER, --Devilsaur Leather
		[52976]=ST_LEATHER, --Savage Leather
		[56516]=ST_LEATHER, --Heavy Savage Leather
		[25649]=ST_LEATHER, --Knothide Leather Scraps
		[21887]=ST_LEATHER, --Knothide Leather
		[25708]=ST_LEATHER, --Thick Clefthoof Leather
		[25699]=ST_LEATHER, --Crystal Infused Leather
		[33568]=ST_LEATHER, --Borean Leather
		[38425]=ST_LEATHER, --Heavy Borean Leather
		[72120]=ST_LEATHER, --Exotic Leather

		[783]=ST_HIDE, --Light Hide
		[4232]=ST_HIDE, --Medium Hide
		[4235]=ST_HIDE, --Heavy Hide
		[4461]=ST_HIDE, --Raptor Hide
		[8169]=ST_HIDE, --Thick Hide
		[8171]=ST_HIDE, --Rugged Hide
		[52980]=ST_HIDE, --Pristine Hide
		[25707]=ST_HIDE, --Fel Hide
		[72163]=ST_HIDE, --Magnificent Hide

		[6470]=ST_SCALE, --Deviate Scale
		[6471]=ST_SCALE, --Perfect Deviate Scale
		[8167]=ST_SCALE, --Turtle Scale
		[8165]=ST_SCALE, --Worn Dragonscale
		[15412]=ST_SCALE, --Green Dragonscale
		[7286]=ST_SCALE, --Black Whelp Scale
		[8154]=ST_SCALE, --Scorpid Scale
		[15414]=ST_SCALE, --Red Dragonscale
		[15416]=ST_SCALE, --Black Dragonscale
		[12607]=ST_SCALE, --Brilliant Chromatic Scale
		[15408]=ST_SCALE, --Heavy Scorpid Scale
		[52979]=ST_SCALE, --Blackened Dragonscale
		[29548]=ST_SCALE, --Nether Dragonscales
		[29547]=ST_SCALE, --Wind Scales
		[29539]=ST_SCALE, --Cobra Scales
		[25700]=ST_SCALE, --Fel Scales
		[38558]=ST_SCALE, --Nerubian Chitin
		[38561]=ST_SCALE, --Jormungar Scale
		[44128]=ST_SCALE, --Arctic Fur
		[38557]=ST_SCALE, --Icy Dragonscale
		[52982]=ST_SCALE, --Deepsea Scale
		[79101]=ST_SCALE, --Prismatic Scale


	-- elementals

		[7067]=ST_ELEM, --Elemental Earth
		[7068]=ST_ELEM, --Elemental Fire
		[7069]=ST_ELEM, --Elemental Air
		[7070]=ST_ELEM, --Elemental Water

		[7081]=ST_ELEM, --Breath of Wind
		[7079]=ST_ELEM, --Globe of Water
		[7077]=ST_ELEM, --Heart of Fire
		[7075]=ST_ELEM, --Core of Earth

		[12803]=ST_ELEM, --Living Essence
		[22576]=ST_ELEM, --Essence of Mana
		[7078]=ST_ELEM, --Essence of Fire
		[7080]=ST_ELEM, --Essence of Water
		[22577]=ST_ELEM, --Essence of Shadow
		[7076]=ST_ELEM, --Essence of Earth
		[7082]=ST_ELEM, --Essence of Air
		[12808]=ST_ELEM, --Essence of Undeath

		[10286]=ST_ELEM, --Heart of the Wild

		[22575]=ST_ELEMMOTE, --Mote of Life
		[22576]=ST_ELEMMOTE, --Mote of Mana
		[22574]=ST_ELEMMOTE, --Mote of Fire
		[22578]=ST_ELEMMOTE, --Mote of Water
		[22577]=ST_ELEMMOTE, --Mote of Shadow
		[22573]=ST_ELEMMOTE, --Mote of Earth
		[22572]=ST_ELEMMOTE, --Mote of Air

		[21886]=ST_ELEM, --Primal Life
		[22457]=ST_ELEM, --Primal Mana
		[21884]=ST_ELEM, --Primal Fire
		[21885]=ST_ELEM, --Primal Water
		[22456]=ST_ELEM, --Primal Shadow
		[23572]=ST_ELEM, --Primal Nether
		[23571]=ST_ELEM, --Primal Might
		[22452]=ST_ELEM, --Primal Earth
		[22451]=ST_ELEM, --Primal Air

		[37700]=ST_ELEMMOTE, --Crystallized Air
		[37701]=ST_ELEMMOTE, --Crystallized Earth
		[37702]=ST_ELEMMOTE, --Crystallized Fire
		[37703]=ST_ELEMMOTE, --Crystallized Shadow
		[37704]=ST_ELEMMOTE, --Crystallized Life
		[37705]=ST_ELEMMOTE, --Crystallized Water

		[35623]=ST_ELEM, --Eternal Air
		[35624]=ST_ELEM, --Eternal Earth
		[36860]=ST_ELEM, --Eternal Fire
		[35627]=ST_ELEM, --Eternal Shadow
		[35625]=ST_ELEM, --Eternal Life
		[35622]=ST_ELEM, --Eternal Water

		[52327]=ST_ELEMMOTE, --Volatile Earth
		[52325]=ST_ELEMMOTE, --Volatile Fire
		[52326]=ST_ELEMMOTE, --Volatile Water
		[52328]=ST_ELEMMOTE, --Volatile Air
		[52329]=ST_ELEMMOTE, --Volatile Life
		-- no volatile shadow

	-- enchanting dusts, essences, shards, crystals

		[10940]=ST_DUST, --Strange Dust
		[11083]=ST_DUST, --Soul Dust
		[11137]=ST_DUST, --Vision Dust
		[11176]=ST_DUST, --Dream Dust
		[22445]=ST_DUST, --Arcane Dust
		[34054]=ST_DUST, --Infinite Dust
		[16204]=ST_DUST, --Illusion Dust
		[52555]=ST_DUST, --Hypnotic Dust
		[74249]=ST_DUST, --Spirit Dust

		[10938]=ST_ESSENCEL,  --Lesser Magic Essence
		[10939]=ST_ESSENCEG, --Greater Magic Essence
		[10998]=ST_ESSENCEL,  --Lesser Astral Essence
		[11082]=ST_ESSENCEG, --Greater Astral Essence
		[11134]=ST_ESSENCEL,  --Lesser Mystic Essence
		[11135]=ST_ESSENCEG, --Greater Mystic Essence
		[11174]=ST_ESSENCEL,  --Lesser Nether Essence
		[11175]=ST_ESSENCEG,  --Greater Nether Essence
		[16202]=ST_ESSENCEL,  --Lesser Eternal Essence
		[16203]=ST_ESSENCEG, --Greater Eternal Essence
		[22447]=ST_ESSENCEL,  --Lesser Planar Essence
		[22446]=ST_ESSENCEG, --Greater Planar Essence
		[34056]=ST_ESSENCEL,  --Lesser Cosmic Essence
		[34055]=ST_ESSENCEG, --Greater Cosmic Essence
		[52718]=ST_ESSENCEL,  --Lesser Celestial Essence
		[52719]=ST_ESSENCEG, --Greater Celestial Essence
		[74250]=ST_ESSENCEG, --Mysterious Essence

		[10978]=ST_SHARDS, --Small Glimmering Shard
		[11084]=ST_SHARDL, --Large Glimmering Shard
		[11138]=ST_SHARDS, --Small Glowing Shard
		[11139]=ST_SHARDL, --Large Glowing Shard
		[11177]=ST_SHARDS, --Small Radiant Shard
		[11178]=ST_SHARDL, --Large Radiant Shard
		[14343]=ST_SHARDS, --Small Brilliant Shard
		[14344]=ST_SHARDL, --Large Brilliant Shard
		[22448]=ST_SHARDS, --Small Prismatic Shard
		[22449]=ST_SHARDL, --Large Prismatic Shard
		[34053]=ST_SHARDS, --Small Dream Shard
		[34052]=ST_SHARDL, --Dream Shard
		[52720]=ST_SHARDS, --Small Heavenly Shard
		[52721]=ST_SHARDL, --Heavenly Shard
		[74252]=ST_SHARDS, --Small Ethereal Shard
		[74247]=ST_SHARDL, --Ethereal Shard

		[20725]=1, --Nexus Crystal
		[22450]=1, --Void Crystal
		[34057]=1, --Abyss Crystal
		[105718]=10, --Sha Crystal Fragment
		[74248]=1, --Sha Crystal
		[52722]=1, --Maelstrom Crystal

	-- misc
		[7972]=1, --Ichor of Undeath
		[42253]=5, --Iceweb Spider Silk
		[38551]=5, --Drakkari Offerings
		[5637]=5, --Large Fang
		[24477]=5, --Jaggal Clam Meat
		[3685]=5, --Raptor Egg
		[12184]=5, --Raptor Flesh


		[55985]=10, --Inert Elemental Piece
		[55984]=10, --Inert Elemental Shard

-- (\d+) (.*)##(\d+)
-- [\3]=\1, --\2
}

