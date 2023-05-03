--[[
	Enchantrix Addon for World of Warcraft(tm).
	Version: 9.1.BETA.5.11 (OneMawTime)
	Revision: $Id$
	URL: http://enchantrix.org/

	Enchantrix Constants.

	License:
		This program is free software; you can redistribute it and/or
		modify it under the terms of the GNU General Public License
		as published by the Free Software Foundation; either version 2
		of the License, or (at your option) any later version.

		This program is distributed in the hope that it will be useful,
		but WITHOUT ANY WARRANTY; without even the implied warranty of
		MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
		GNU General Public License for more details.

		You should have received a copy of the GNU General Public License
		along with this program(see GPL.txt); if not, write to the Free Software
		Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

	Note:
		This AddOn's source code is specifically designed to work with
		World of Warcraft's interpreted AddOn system.
		You have an implicit license to use this AddOn with these facilities
		since that is its designated purpose as per:
		http://www.fsf.org/licensing/licenses/gpl-faq.html#InterpreterIncompat
]]
Enchantrix_RegisterRevision("$URL$", "$Rev$")

local const = Enchantrix.Constants


-- Need to know early if we're using Classic or Modern version
local MINIMUM_RETAIL = 80300
local _,_,_,tocVersion = GetBuildInfo()
if tocVersion < MINIMUM_RETAIL then
	const.Classic = floor(tocVersion / 10000)
else
	const.Classic = nil -- will be nil for Retail
end


-- These are market norm prices, a median across all servers

-- Prices are in copper aka GGSSCC
const.StaticPrices = {

	[113588] = 200000, -- Temporal Crystal
	[115504] =  50000, -- Fractured Temporal Crystal
	[74248] =  100000, -- Sha Crystal
	[105718] =  40000, -- Sha Crystal Fragment
	[52722] =  100000, -- Maelstrom Crystal
	[34057] =   50000, -- Abyss Crystal
	[22450] =   10000, -- Void Crystal
	[20725] =  100000, -- Nexus Crystal (Classic)

	[111245] = 100000, -- Luminous Shard
	[74247] =   50000, -- Etheral Shard
	[52721] =   50000, -- Heavenly Shard
	[34052] =   70000, -- Dream Shard
	[22449] =   50000, -- Large Prismatic Shard
	[14344] =  200000, -- Large Brilliant Shard
	[11178] =   20000, -- Large Radiant Shard (Classic)
	[11139] =   10000, -- Large Glowing Shard (Classic)
	[11084] =    5000, -- Large Glimmering Shard (Classic)

	[115502] =  40000, -- Small Luminous Shard
	[74252] =   30000, -- Small Etheral Shard
	[52720] =   12000, -- Small Heavenly Shard
	[34053] =   10000, -- Small Dream Shard
	[22448] =   20000, -- Small Prismatic Shard
	[14343] =   25000, -- Small Brilliant Shard
	[11177] =   10000, -- Small Radiant Shard (Classic)
	[11138] =    5000, -- Small Glowing Shard (Classic)
	[10978] =    1000, -- Small Glimmering Shard (Classic)

	[52719] =   20000, -- Greater Celestial Essence
	[34055] =   20000, -- Greater Cosmic Essence
	[22446] =   10000, -- Greater Planar Essence
	[16203] =   50000, -- Greater Eternal Essence
	[11175] =   50000, -- Greater Nether Essence (Classic)
	[11135] =   50000, -- Greater Mystic Essence (Classic)
	[11082] =   50000, -- Greater Astral Essence (Classic)
	[10939] =   50000, -- Greater Magic Essence

	[74250] =   50000, -- Mysterious Essence
	[52718] =   20000, -- Lesser Celestial Essence
	[34056] =   35000, -- Lesser Cosmic Essence
	[22447] =   28000, -- Lesser Planar Essence
	[16202] =   32500, -- Lesser Eternal Essence
    [11174] =   10000, -- Lesser Nether Essence (Classic)
    [11134] =    5000, -- Lesser Mystic Essence (Classic)
    [10998] =    2000, -- Lesser Astral Essence (Classic)
	[10938] =   10000, -- Lesser Magic Essence

	[109693] =  20000, -- Draenic Dust
	[74249] =   20000, -- Spirit Dust
	[52555] =   10000, -- Hypnotic Dust
	[34054] =   27500, -- Infinite Dust
	[22445] =   12500, -- Arcane Dust
	[156930] =  40000, -- Rich Illusion Dust
	[16204] =   13000, -- Illusion Dust
    [11176] =    8000, -- Dream Dust (Classic)
    [11137] =    5000, -- Vision Dust (Classic)
    [11083] =    2000, -- Soul Dust (Classic)
	[10940] =   10000, -- Strange Dust

	[124440] = 	 15000, -- Arkhana
	[124441] =  100000, -- Laylight Shard
	[124442] =  400000, -- Chaos Crystal
	[124124] =       1, -- Blood of Sargaras (can't sell it, but needs a value)

-- BfA
	[152875] =   90000, -- GLOOMDUST
	[152876] =  800000, -- UMBRASHARD
	[152877] = 2000000, -- VEILEDCRYSTAL
	[162460] =       1, -- HYDROCORE (can't sell it, but needs a value)
	[152668] =       1, -- EXPULSOM (can't sell it, but needs a value)

-- Shadowlands
    [172230] =    4800, -- Soul Dust, Redux
    [172231] =    8500, -- Sacred Shard
    [172232] =   20000, -- Eternal Crystal


-- needs update - some items no longer available
	[2772] =   11500, -- Iron Ore
	[3356] =   11000, -- Kingsblood
	[3371] =      20, -- Empty Vial		-- should use vendor price
	[3372] =     200, -- Leaded Vial	-- should use vendor price
	[3819] =   21000, -- Wintersbite
	[3829] =  110000, -- Frost Oil
	[4470] =      38, -- Simple Wood	-- should use vendor price
	[4625] =   12500, -- Firebloom
	[5500] =   65000, -- Iridescent Pearl
	[5637] =   15000, -- Large Fang
	[6037] =   37500, -- Truesilver Bar
	[6048] =   10000, -- Shadow Protection Potion
	[6217] =     124, -- Copper Rod		-- should use vendor price
	[6370] =    7500, -- Blackmouth Oil
	[6371] =   15000, -- Fire Oil
	[7067] =   45000, -- Elemental Earth
	[7075] =   45000, -- Core of Earth
	[7077] =   30000, -- Heart of Fire
	[7078] =   20000, -- Essence of Fire
	[7079] =   35000, -- Globe of Water
	[7080] =   40000, -- Essence of Water
	[7081] =   70000, -- Breath of Wind
	[7082] =   35000, -- Essence of Air
	[7392] =    5000, -- Green Whelp Scale
	[7971] =   50000, -- Black Pearl
	[7972] =    1500, -- Ichor of Undeath
	[8153] =   13000, -- Wildvine
	[8170] =   10000, -- Rugged Leather
	[8831] =   13500, -- Purple Lotus
	[8838] =   12500, -- Sungrass
	[8925] =    2500, -- Crystal Vial	-- should use vendor price
	[9224] =   32500, -- Elixir of Demonslaying
	[11128] =  70000, -- Golden Rod
	[11144] = 150000, -- Truesilver Rod
	[11291] =   4500, -- Star Wood		-- should use vendor price
	[11382] = 400000, -- Blood of the Mountain
	[11754] =  15000, -- Black Diamond
	[12359] =  27500, -- Thorium Bar
	[12803] =  30000, -- Living Essence
	[12808] =  40000, -- Essence of Undeath
	[12809] =  75000, -- Guardian Stone
	[12811] = 220000, -- Righteous Orb
	[13444] =   6500, -- Major Mana Potion
	[13446] =   6000, -- Major Healing Potion
	[13467] =  15000, -- Icecap
	[13468] =  59000, -- Black Lotus
	[13926] =  80000, -- Golden Pearl
	[16206] = 580000, -- Arcanite Rod

	[17034] =    200, -- Maple Seed		-- should use vendor price
	[17035] =    400, -- Stranglethorn Seed		-- should use vendor price
	[18256] =  20000, -- Imbued Vial	-- should use vendor price
	[18512] =  45000, -- Larval Acid
	[21884] = 120000, -- Primal Fire
	[21885] = 130000, -- Primal Water
	[21886] =  70000, -- Primal Life
	[22451] = 200000, -- Primal Air
	[22452] =  25000, -- Primal Earth
	[22456] =  45000, -- Primal Shadow
	[22457] =  75000, -- Primal Mana
	[22791] =  15500, -- Netherbloom
	[22792] =  15000, -- Nightmare Vine
	[25843] = 650000, -- Fel Iron Rod
	[25844] = 850000, -- Adamantite Rod
	[25845] = 850000, -- Eternium Rod
	[23571] =1500000, -- Primal MIght
	[35622] =  80000, -- Eternal Water
	[35623] =  80000, -- Eternal Air
	[35624] =  80000, -- Eternal Earth
	[35625] =  80000, -- Eternal Life
	[35627] =  67500, -- Eternal Shadow
	[36860] = 200000, -- Eternal Fire
	[37705] =   7500, -- Crystallized Water
	[41745] = 750000, -- Titanium Rod
	[41163] = 150000, -- Titanium bar

	[24243] =  17500, 	-- ADAMANTITEPOWDER
	[46849] =  20000,	-- TITANIUMPOWDER

	[39151] =    3500,	-- ALABASTER_PIGMENT
	[39334] =    3500,	-- DUSKY_PIGMENT
	[39338] =   10000,	-- GOLDEN_PIGMENT
	[39339] =   20000,	-- EMERALD_PIGMENT
	[39340] =   20000,	-- VIOLET_PIGMENT
	[39341] =   15000, 	-- SILVERY_PIGMENT
	[43103] =   17500,	-- VERDANT_PIGMENT
	[43104] =   20000,	-- BURNT_PIGMENT
	[43105] =   20000,	-- INDIGO_PIGMENT
	[43106] =   30000,	-- RUBY_PIGMENT
	[43107] =   40000, 	-- SAPPHIRE_PIGMENT
	[39342] =   20000, 	-- NETHER_PIGMENT
	[43108] =   20000, 	-- EBON_PIGMENT
	[39343] =   40000, 	-- AZURE_PIGMENT
	[43109] =   30000, 	-- ICY_PIGMENT
	[61979] =   40000,   -- ASHEN_PIGMENT
	[61980] =   50000,   -- BURNING_EMBERS
	[79251] =   70000,   -- SHADOW_PIGMENT
	[79253] =   70000,   -- MISTY_PIGMENT
	[114931] =  50000, 	-- Cerulean Pigment
	[129032] =  180000, -- Roseate Pigment
	[129034] = 1000000, -- Salllow Pigment

-- BfA pigments
	[153635] =   50000, --ULTRAMARINE_PIGMENT
	[153636] =  200000, --CRIMSON_PIGMENT
	[153669] =  300000, --VIRIDESCENT_PIGMENT
	[168662] = 1000000, --MAROON_PIGMENT

-- Shadowlands pigments
    [173057] =   20000, --LUMINOUS_PIGMENT
    [173056] =   20000, --UMBRAL_PIGMENT
    [175788] =  500000, --TRANQUIL_PIGMENT


	[818] =      7500, 	-- TIGERSEYE
	[774] =      5000, 	-- MALACHITE
	[1210] =    20000,	-- SHADOWGEM
	[1705] =    25000, 	-- LESSERMOONSTONE
	[1206] =    25000, 	-- MOSSAGATE
	[3864] =    25000, 	-- CITRINE
	[1529] =    30000, 	-- JADE
	[7909] =    40000, 	-- AQUAMARINE
	[7910] =    50000, 	-- STARRUBY
	[12800] =   70000, 	-- AZEROTHIANDIAMOND
	[12361] =   50000, 	-- BLUESAPPHIRE
	[12799] =   70000, 	-- LARGEOPAL
	[12364] =   50000, 	-- HUGEEMERALD

	[23077] =   50000, 	-- BLOODGARNET
	[21929] =   50000, 	-- FLAMESPESSARITE
	[23112] =   50000, 	-- GOLDENDRAENITE
	[23079] =   50000, 	-- DEEPPERIDOT
	[23117] =   50000, 	-- AZUREMOONSTONE
	[23107] =   50000, 	-- SHADOWDRAENITE

	[23436] =   10000,	-- LIVINGRUBY
	[23439] =   10000, 	-- NOBLETOPAZ
	[23440] =   10000, 	-- DAWNSTONE
	[23437] =   10000, 	-- TALASITE
	[23438] =   10000, 	-- STAROFELUNE
	[23441] =   10000, 	-- NIGHTSEYE

	[36923] =   60000, 	-- Chalcedony
	[36929] =   60000, 	-- Huge Citrine
	[36917] =   60000, 	-- Bloodstone
	[36926] =   60000, 	-- Shadow Crystal
	[36920] =   60000, 	-- Sun Crystal
	[36932] =   60000, 	-- Dark Jade

	[36933] =  100000, 	-- Forest Emerald
	[36918] =  100000, 	-- Scarlet Ruby
	[36927] =  100000, 	-- Twilight Opal
	[36930] =  100000, 	-- Monarch Topaz
	[36924] =  100000, 	-- Sky Sapphire
	[36921] =  100000, 	-- Autumn's Glow

	[36925] =  200000, 	-- MAJESTICZIRCON
	[36931] =  200000, 	-- AMETRINE
	[36922] =  200000, 	-- KINGSAMBER
	[36928] =  200000, 	-- DREADSTONE
	[36919] =  200000, 	-- CARDINALRUBY
	[36934] =  200000, 	-- EYEOFZUL

	[52177] =   80000,  -- CARNELIAN
	[52178] =   80000,  -- ZEPHYRITE
	[52179] =   80000,  -- ALICITE
	[52180] =   80000,  -- NIGHTSTONE
	[52181] =   80000,  -- HESSONITE
	[52182] =   80000,  -- JASPER

	[52190] =   100000,  -- INFERNORUBY
	[52191] =   100000,  -- OCEANSAPPHIRE
	[52192] =   100000,  -- DREAMEMERALD
	[52193] =   100000,  -- EMBERTOPAZ
	[52194] =   100000,  -- DEMONSEYE
	[52195] =   100000,  -- AMBERJEWEL

	[76130] =   200000,	-- TIGEROPAL
	[76133] =   200000,	-- LAPISLAZULI
	[76134] =   200000,	-- SUNSTONE
	[76135] =   200000,	-- ROGUESTONE
	[76136] =   200000,	-- PANDARIANGARNET
	[76137] =   200000,	-- ALEXANDRITE

	[76131] =  1000000,	-- PRIMORDIALRUBY
	[76138] =  1000000,	-- RIVERSHEART
	[76139] =  1000000,	-- WILDJADE
	[76140] =  1000000,	-- VERMILIONONYX
	[76141] =  1000000,	-- IMPERIALAMETHYST
	[76142] =  1000000,	-- SUNSRADIANCE

	-- WoD has no raw gems

	-- Legion Gems
	[130172] =   50000, -- SANGRITE
	[130173] =   50000, -- DEEPAMBER
	[130174] =   50000, -- AZSUNITE
	[130175] =   50000, -- CHAOTICSPINEL
	[130176] =   50000, -- SKYSTONE
	[130177] =   50000, -- QUEENSOPAL

	[130178] =  100000, -- FURYSTONE
	[130179] =  100000, -- EYEOFPROPHECY
	[130180] =  100000, -- DAWNLIGHT
	[130181] =  100000, -- PANDEMONITE
	[130182] =  100000, -- MAELSTROMSAPPHIRE
	[130183] =  100000, -- SHADOWRUBY

	[151718] = 400000, -- ARGULITE
	[151719] = 400000, -- LIGHTSPHENE
	[151720] = 400000, -- CHEMIRINE
	[151721] = 400000, -- HESSELIAN
	[151722] = 400000, -- FLORIDMALACHITE
	[151579] = 400000, -- LABRADORITE

	[129099] = 1, -- REDGEMCHIP
	[129100] = 1, -- GENERICGEMCHIP
	[130200] = 1, -- ORANGEGEMCHIP
	[130201] = 1, -- YELLOWGEMCHIP
	[130202] = 1, -- GREENGEMCHIP
	[130203] = 1, -- BLUEGEMCHIP
	[130204] = 1, -- PURPLEGEMCHIP

-- BfA Gems
	[153706] = 3000000, --GEM_KRAKENSEYE
    [168635] = 5000000, -- GEM_LEVIATHANSEYE

	[153700] =  100000, --GEM_GOLDENBERYL
	[153701] =  100000, --GEM_RUBELIGHT
	[153702] =  100000, --GEM_KUBILINE
	[153703] =  100000, --GEM_SOLSTONE
	[153704] =  100000, --GEM_VIRIDIUM
	[153705] =  100000, --GEM_KYANITE

	[154120] =  200000, --GEM_OWLSEYE
	[154121] =  200000, --GEM_SCARLETDIAMOND
	[154122] =  200000, --GEM_TIDALAMYTHEST
	[154123] =  200000, --GEM_AMBERBLAZE
	[154124] =  200000, --GEM_LARIBOLE
	[154125] =  200000, --GEM_ROYALQUARTZ

	[168188] =  1000000, --GEM_SAGEAGATE
	[168189] =  1000000, --GEM_DARKOPAL
	[168190] =  1000000, --GEM_LAVALAZULI
	[168191] =  1000000, --GEM_SEACURRANT
	[168192] =  1000000, --GEM_SANDSPINEL
	[168193] =  1000000, --GEM_AZSHARINE

-- Shadowlands 'Gems'
    [173109] =  100000, -- GEM_ANGERSEYE
    [173110] =  100000, -- GEM_UMBRYL
    [173108] =  100000, -- GEM_ORIBLASE
    [173170] =  500000, -- GEM_ESREBIRTH
    [173171] =  500000, -- GEM_ESTORMENT
    [173172] =  500000, -- GEM_ESSERVITUDE
    [173173] =  500000, -- GEM_ESVALOR

}

const.DUST = 1
const.ESSENCE_LESSER = 2
const.ESSENCE_GREATER = 3
const.SHARD_SMALL = 4
const.SHARD_LARGE = 5
const.CRYSTAL = 6

const.CONSUMABLE = 0
const.CONTAINER  = 1
const.WEAPON     = 2
const.ARMOR      = 4
const.REAGENT    = 5
const.PROJECTILE = 6
const.TRADE      = 7
const.RECIPE     = 9
const.QUIVER     = 11
const.QUEST      = 12
const.KEY        = 13
const.MISC       = 15


const.InventoryTypes = {
	["INVTYPE_2HWEAPON"] = const.WEAPON,
	["INVTYPE_WEAPON"] = const.WEAPON,
	["INVTYPE_WEAPONMAINHAND"] = const.WEAPON,
	["INVTYPE_WEAPONOFFHAND"] = const.WEAPON,
	["INVTYPE_RANGED"] = const.WEAPON,
	["INVTYPE_RANGEDRIGHT"] = const.WEAPON,
	["INVTYPE_THROWN"] = const.WEAPON,
--	["INVTYPE_BODY"] = const.ARMOR,			-- shirts, marked green quality in Legion, not disenchantable
	["INVTYPE_CHEST"] = const.ARMOR,
	["INVTYPE_CLOAK"] = const.ARMOR,
	["INVTYPE_FEET"] = const.ARMOR,
	["INVTYPE_FINGER"] = const.ARMOR,
	["INVTYPE_HAND"] = const.ARMOR,
	["INVTYPE_HEAD"] = const.ARMOR,
	["INVTYPE_HOLDABLE"] = const.ARMOR,
	["INVTYPE_LEGS"] = const.ARMOR,
	["INVTYPE_NECK"] = const.ARMOR,
	["INVTYPE_ROBE"] = const.ARMOR,
	["INVTYPE_SHIELD"] = const.ARMOR,
	["INVTYPE_SHOULDER"] = const.ARMOR,
	["INVTYPE_TABARD"] = const.ARMOR,
	["INVTYPE_TRINKET"] = const.ARMOR,
	["INVTYPE_WAIST"] = const.ARMOR,
	["INVTYPE_WRIST"] = const.ARMOR,
	["INVTYPE_RELIC"] = const.ARMOR,
}

-- Enchanting reagents
local VOID = 22450
local NEXUS = 20725

local LPRISMATIC = 22449
local LBRILLIANT = 14344
local LRADIANT = 11178
local LGLOWING = 11139
local LGLIMMERING = 11084

local SPRISMATIC = 22448
local SBRILLIANT = 14343
local SRADIANT = 11177
local SGLOWING = 11138
local SGLIMMERING = 10978

local GPLANAR = 22446
local GETERNAL = 16203
local GNETHER = 11175
local GMYSTIC = 11135
local GASTRAL = 11082
local GMAGIC = 10939

local LPLANAR = 22447
local LETERNAL = 16202
local LNETHER = 11174
local LMYSTIC = 11134
local LASTRAL = 10998
local LMAGIC = 10938

local ARCANE = 22445
local RILLUSION = 156930
local ILLUSION = 16204
local DREAM = 11176
local VISION = 11137
local SOUL = 11083
local STRANGE = 10940

local DREAM_SHARD = 34052
local SDREAM_SHARD = 34053
local INFINITE = 34054
local GCOSMIC = 34055
local LCOSMIC = 34056
local ABYSS = 34057

local HEAVENLY_SHARD = 52721
local SHEAVENLY_SHARD = 52720
local HYPNOTIC = 52555
local GCELESTIAL = 52719
local LCELESTIAL = 52718
local MAELSTROM = 52722

local SHA_CRYSTAL = 74248
local ETHERAL = 74247
local SETHERAL = 74252
local SPIRIT = 74249
--local GMYSTERIOUS = 74251		-- never used
local MYSTERIOUS = 74250
local SHA_FRAGMENT = 105718		-- added in a dot release

local DRAENIC = 109693
local SLUMINOUS = 115502
local LUMINOUS = 111245
local TEMPORAL = 113588
local FRACTEMPORAL = 115504
--local AZURIAN = 113589		-- no longer used
--local BLACKFIRE = 111247		-- never used

local ARKHANA	= 124440
local LEYLIGHT_SHARD = 124441
local CHAOS_CRYSTAL = 124442
local BLOOD_SARGERAS = 124124

local GLOOMDUST = 152875
local UMBRASHARD = 152876
local VEILEDCRYSTAL = 152877
local EXPULSOM = 152668


-- Shadowlands items
local SOULDUSTNEW = 172230
local SACREDSHARD = 172231
local ETERNALCRYS = 172232

-- item qualities
local UNCOMMON = 2
local RARE = 3
local EPIC = 4


if not const.Classic then -- Retail tables

-- List in a form we can iterate over, with a fixed order for the UI

const.DisenchantReagentList = {

ETERNALCRYS,
VEILEDCRYSTAL,
CHAOS_CRYSTAL,
TEMPORAL,
FRACTEMPORAL,
SHA_CRYSTAL,
SHA_FRAGMENT,
MAELSTROM,
ABYSS,
VOID,

SACREDSHARD,
UMBRASHARD,
LEYLIGHT_SHARD,
LUMINOUS,
ETHERAL,
HEAVENLY_SHARD,
DREAM_SHARD,
LPRISMATIC,
LBRILLIANT,

SLUMINOUS,
SETHERAL,
SHEAVENLY_SHARD,
SDREAM_SHARD,
SPRISMATIC,
SBRILLIANT,

GCELESTIAL,
GCOSMIC,
GPLANAR,
GETERNAL,
GMAGIC,

MYSTERIOUS,
LCELESTIAL,
LCOSMIC,
LPLANAR,
LETERNAL,
LMAGIC,

SOULDUSTNEW,
GLOOMDUST,
ARKHANA,
DRAENIC,
SPIRIT,
HYPNOTIC,
INFINITE,
ARCANE,
RILLUSION,
ILLUSION,
STRANGE,

}

-- the big disenchant table, indexed by [quality][type][level bracket]
-- and yielding { { reagent type, drop probability, average drop quantity }, ... }
-- Thanks to Picksell, Wambo, and others for contributing data!

const.baseDisenchantTable = {
	[UNCOMMON] = {
		[const.WEAPON] = {
		 ["bounds"] = { 8, 10, 13, 16, 18, 21, 23, 26, 28, 29, 30, 31, 32, 34, 35, 36, 37, 38, 44, 50, 84, 300 },
		 [8]   = { { STRANGE, 0.20, 2.0 }, { LMAGIC, 0.80, 1.5 } },
		 [10]  = { { STRANGE, 0.20, 3.5 }, { GMAGIC, 0.80, 1.6 } },
		 [13]  = { { STRANGE, 0.20, 5.0 }, { GMAGIC, 0.80, 2.5 } },

		 [16]  = { { ILLUSION , 0.2, 1.6 }, { LETERNAL, 0.75, 1.5 }, { SBRILLIANT , 0.05, 1.0 }, },
		 [18]  = { { ILLUSION , 0.2, 3.5 }, { LETERNAL, 0.75, 2.0 }, { SBRILLIANT , 0.05, 1.0 }, },
		 [21]  = { { ILLUSION , 0.2, 4.5 }, { LETERNAL, 0.75, 2.5 }, { SBRILLIANT , 0.05, 1.0 }, },
		 [23]  = { { ILLUSION , 0.2, 4.5 }, { LETERNAL, 0.75, 3.0 }, { SBRILLIANT , 0.05, 1.5 }, },

		 [26]  = { { RILLUSION, 0.2, 1.5 }, { GETERNAL, 0.75, 1.0 }, { LBRILLIANT , 0.05, 1.0 }, },
		 [28]  = { { RILLUSION, 0.2, 2.0 }, { GETERNAL, 0.75, 2.0 }, { LBRILLIANT , 0.05, 1.0 }, },
		 [29]  = { { RILLUSION, 0.2, 3.0 }, { GETERNAL, 0.75, 2.5 }, { LBRILLIANT , 0.05, 1.0 }, },

		 [30]  = { { ARCANE  , 0.20, 2.5 }, { LPLANAR , 0.75, 2.5 }, { SPRISMATIC , 0.05, 1.0 }, },
		 [31]  = { { ARCANE  , 0.20, 3.5 }, { GPLANAR , 0.75, 1.5 }, { LPRISMATIC , 0.05, 1.0 }, },

		 [32]  = { { INFINITE, 0.20, 2.5 }, { LCOSMIC , 0.75, 1.5 }, { SDREAM_SHARD, 0.05, 1.0 }, },
		 [34]  = { { INFINITE, 0.20, 5.5 }, { GCOSMIC , 0.75, 1.5 }, { DREAM_SHARD , 0.05, 1.0 }, },

		 [35]  = { { HYPNOTIC, 0.25, 1.5 }, { LCELESTIAL , 0.75, 1.5 }, },   -- no shards from greens in Cataclysm
		 [36]  = { { HYPNOTIC, 0.25, 3.0 }, { GCELESTIAL , 0.75, 1.5 }, },

		 [37]  = { { SPIRIT, 0.15, 2.0 }, { MYSTERIOUS , 0.85, 1.0 }, },
		 [38]  = { { SPIRIT, 0.15, 4.0 }, { MYSTERIOUS , 0.85, 2.0 }, },

		 [44]  = { { DRAENIC, 1.0, 1.5 } },

		 [50]  = { {ARKHANA, 1.0, 5.25 } },

		 [84]  = { {GLOOMDUST, 1.0, 5.5 } },

		 [300] = { {SOULDUSTNEW, 1.0, 2.3 } },

		 },
		[const.ARMOR] = {
		 ["bounds"] = { 8, 10, 13, 16, 18, 21, 23, 26, 28, 29, 30, 31, 32, 34, 35, 36, 37, 38, 44, 50, 84, 300 },
		 [8]   = { { STRANGE, 0.80, 2.0 }, { LMAGIC, 0.20, 1.5 } },
		 [10]  = { { STRANGE, 0.80, 3.5 }, { GMAGIC, 0.20, 1.6 } },
		 [13]  = { { STRANGE, 0.80, 5.0 }, { GMAGIC, 0.20, 2.5 } },

		 [16]  = { { ILLUSION , 0.75, 1.6 }, { LETERNAL, 0.20, 1.5 }, { SBRILLIANT , 0.05, 1.0 }, },
		 [18]  = { { ILLUSION , 0.75, 3.5 }, { LETERNAL, 0.20, 2.0 }, { SBRILLIANT , 0.05, 1.0 }, },
		 [21]  = { { ILLUSION , 0.75, 4.5 }, { LETERNAL, 0.20, 2.5 }, { SBRILLIANT , 0.05, 1.0 }, },
		 [23]  = { { ILLUSION , 0.75, 4.5 }, { LETERNAL, 0.20, 3.0 }, { SBRILLIANT , 0.05, 1.5 }, },

		 [26]  = { { RILLUSION, 0.75, 1.5 }, { GETERNAL, 0.20, 1.0 }, { LBRILLIANT , 0.05, 1.0 }, },
		 [28]  = { { RILLUSION, 0.75, 2.0 }, { GETERNAL, 0.20, 2.0 }, { LBRILLIANT , 0.05, 1.0 }, },
		 [29]  = { { RILLUSION, 0.75, 3.0 }, { GETERNAL, 0.20, 2.5 }, { LBRILLIANT , 0.05, 1.0 }, },

		 [30]  = { { ARCANE  , 0.75, 2.5 }, { LPLANAR , 0.20, 2.5 }, { SPRISMATIC , 0.05, 1.0 }, },
		 [31]  = { { ARCANE  , 0.75, 3.5 }, { GPLANAR , 0.20, 1.5 }, { LPRISMATIC , 0.05, 1.0 }, },

		 [32]  = { { INFINITE, 0.75, 2.5 }, { LCOSMIC , 0.20, 1.5 }, { SDREAM_SHARD, 0.05, 1.0 }, },
		 [34]  = { { INFINITE, 0.75, 5.5 }, { GCOSMIC , 0.20, 1.5 }, { DREAM_SHARD , 0.05, 1.0 }, },

		 [35]  = { { HYPNOTIC, 0.75, 1.5 }, { LCELESTIAL , 0.25, 1.5 }, },   -- no shards from greens in Cataclysm
		 [36]  = { { HYPNOTIC, 0.75, 3.0 }, { GCELESTIAL , 0.25, 1.5 }, },

		 [37]  = { { SPIRIT, 0.85, 2.0 }, { MYSTERIOUS , 0.15, 1.0 }, },
		 [38]  = { { SPIRIT, 0.85, 4.0 }, { MYSTERIOUS , 0.15, 2.0 }, },

		 [44]  = { { DRAENIC, 1.0, 2.5 } },

		 [50]  = { {ARKHANA, 1.0, 5.5 } },

		 [84]  = { {GLOOMDUST, 1.0, 5.5 } },

		 [300] = { {SOULDUSTNEW, 1.0, 2.3 } },

		},
	   },
	   [RARE] = {
		   -- weapon lookups will fall back to the armor table
		[const.ARMOR] = {
		 ["bounds"] = { 13, 18, 23, 28, 29, 30, 31, 32, 34, 35, 36, 37, 38, 44, 50, 84, 300 },
		 [13]  = { { GMAGIC,      	1.00, 2.0 } },
		 [18]  = { { SBRILLIANT,      1.00, 1.5 } },
		 [23]  = { { SBRILLIANT,      0.80, 2.25 }, { LBRILLIANT, 0.20, 1.5 } },
		 [28]  = { { LBRILLIANT,      0.80, 1.5 },  { GETERNAL, 0.20, 1.5 }, },
		 [29]  = { { LBRILLIANT,      0.80, 2.0 },  { GETERNAL, 0.20, 2.5 }, },

		 [30]  = { { SPRISMATIC,      1.00, 1.0 } },
		 [31]  = { { LPRISMATIC,      1.00, 1.0 } },

		 [32]  = { { SDREAM_SHARD,    1.00, 1.0 } },
		 [34]  = { { DREAM_SHARD ,    1.00, 1.0 } },

		 [35]  = { { SHEAVENLY_SHARD, 1.00, 1.0 } },
		 [36]  = { { HEAVENLY_SHARD,  1.00, 1.0 } },

		 [37]  = { { SETHERAL,        1.00, 1.0 } },
		 [38]  = { { ETHERAL,         1.00, 1.0 } },

		 [44]  = { { DRAENIC, 0.85, 10.0 }, { LUMINOUS , 0.15, 1.0 }, },

		 [50]  =  { { LEYLIGHT_SHARD, 1.0, 1.0 } },

		 [84]  =  { { UMBRASHARD, 0.5, 1.3 }, { GLOOMDUST, 0.5, 1.5, }, },

		 [300] =  { { SACREDSHARD, 0.5, 2.8 }, { SOULDUSTNEW, 0.5, 3.0, }, },

		},
	   },
	   [EPIC] = {
		   -- weapon lookups will fall back to the armor table
		[const.ARMOR] = {
		 ["bounds"] = { 27, 29, 31, 33, 35, 37, 39, 41, 47, 57, 147, 300 },
		 [27]  = { { GETERNAL,  1, 2.0 } },
		 [29]  = { { LBRILLIANT,  0.60, 4.0 }, { GETERNAL, 0.25, 3.5 }, { RILLUSION, 0.15, 4.5 }, },
		 [31]  = { { VOID,        1.00, 1.0 } },
		 [33]  = { { VOID,        1.00, 1.5 } },
		 [35] = { { ABYSS,       1.00, 1.0 } },
		 [37] = { { MAELSTROM,   1.00, 1.0 } },
		 [39] = { { SHA_FRAGMENT, 1.00, 1.0 } },
		 [41] = { { SHA_CRYSTAL, 1.00, 1.0 } },
		 [47] = { { TEMPORAL,    1.00, 1.0 } },
		 [57] =  { {CHAOS_CRYSTAL, 1.00, 1.0 } },

		 [147] =  { {VEILEDCRYSTAL, 0.7, 1.0 }, { UMBRASHARD, 0.3, 1, }, },

		 [300] =  { {ETERNALCRYS, 0.5, 2.1 }, { SACREDSHARD, 0.5, 0.7, }, },

  },
 },
}

-- map reagents to item levels they are obtainable from
-- ignoring the 1% chance for rare drops

-- manually copied from baseDisenchantTable

const.ReverseDisenchantLevelList = {

    [ETERNALCRYS]   = { 148, 300 }, -- Eternal Crystal
	[VEILEDCRYSTAL] = { 58, 147 }, -- Veiled Crystal
	[CHAOS_CRYSTAL] = { 48, 57 },	-- Chaos Crystal
	[TEMPORAL]	    = { 42, 47 }, -- Temporal Crystal
--	[FRACTEMPORAL]  = { 601, 800 }, -- Fractured Temporal Crystal			-- underskilled result
	[SHA_CRYSTAL]   = { 40, 41 }, -- Sha Crystal
	[SHA_FRAGMENT]  = { 38, 39 }, -- Sha Crystal Fragment
	[MAELSTROM]     = { 36, 37 }, -- Maelstrom Crystal
	[ABYSS]         = {  34, 35 }, -- Abyss Crystal
	[VOID]          = {  30,  33 }, -- Void Crystal

    [SACREDSHARD]     = { 85, 300 }, -- Sacred Shard
	[UMBRASHARD]      = { 51, 84 }, -- Umbra Shard
	[LEYLIGHT_SHARD]  = { 45, 50 }, -- Leylight Shard
	[LUMINOUS]		  = { 39, 44 }, -- Luminous Shards
	[ETHERAL] 		  = { 38, 38 }, -- Etheral Shard
	[SETHERAL]        = { 37, 37 }, -- Small Etheral Shard
	[HEAVENLY_SHARD]  = { 36, 36 }, -- Heavenly Shard
	[SHEAVENLY_SHARD] = { 35, 35 }, -- Small Heavenly Shard
	[DREAM_SHARD]     = {  33, 34 }, -- Dream Shard
	[SDREAM_SHARD]    = {  32,  32 }, -- Small Dream Shard
	[LPRISMATIC]      = {  31,  31 }, -- Large Prismatic Shard
	[SPRISMATIC]      = {  30,  30 }, -- Small Prismatic Shard
	[LBRILLIANT]      = {  24,  29 }, -- Large Brilliant Shard
	[SBRILLIANT]      = {  18,  23 }, -- Small Brilliant Shard

	[MYSTERIOUS]  = { 37, 38 }, -- Mysterious Essence
	[GCELESTIAL]  = { 36, 36 }, -- Greater Celestial Essence
	[LCELESTIAL]  = { 35, 35 }, -- Lesser Celestial Essence
	[GCOSMIC]     = {  33, 34 }, -- Greater Cosmic Essence
	[LCOSMIC]     = {  32,  32 }, -- Lesser Cosmic Essence
	[GPLANAR]     = {  31,  31 }, -- Greater Planar Essence
	[LPLANAR]     = {  30,  30 }, -- Lesser Planar Essence
	[GETERNAL]    = {  24,  29 }, -- Greater Eternal Essence
	[LETERNAL]    = {  14,  23 }, -- Lesser Eternal Essence
	[GMAGIC]      = {  9,  13 }, -- Greater Magic Essence
	[LMAGIC]      = {   1,  8 }, -- Lesser Magic Essence

    [SOULDUSTNEW] = { 85, 300 }, -- Soul Dust, Redux
	[GLOOMDUST] = { 51, 84 }, -- Gloom Dust
	[ARKHANA]   = { 43, 50 }, -- Arkhana
	[DRAENIC]   = { 39, 44 }, -- Draenic Dust
	[SPIRIT]    = { 37, 38 }, -- Spirit Dust
	[HYPNOTIC]  = { 35, 36 }, -- Hypnotic Dust
	[INFINITE]  = {  32, 34 }, -- Infinite Dust
	[ARCANE]    = {  30,  31 }, -- Arcane Dust
	[RILLUSION] = {  24,  29 }, -- Rich Illusion Dust
	[ILLUSION]  = {  14,  23 }, -- Light Illusion Dust
	[STRANGE]   = {   1,  13 }, -- Strange Dust

}


else -- Tables for Classic: check const.Classic if we need to know exactly which Classic expansion we are in

-- copied from early Legion table for now
-- need to refine estimates with actual DE results
-- WotLK values also copied from old Legion version, specifically 7.2.5688 - brykrys

-- List in a form we can iterate over, with a fixed order for the UI.
-- Each Classic client needs its own table

	if const.Classic == 1 then -- Classic Era regents
		const.DisenchantReagentList = {

			NEXUS,

			LBRILLIANT,
			LRADIANT,
			LGLOWING,
			LGLIMMERING,

			SBRILLIANT,
			SRADIANT,
			SGLOWING,
			SGLIMMERING,

			GETERNAL,
			GNETHER,
			GMYSTIC,
			GASTRAL,
			GMAGIC,

			LETERNAL,
			LNETHER,
			LMYSTIC,
			LASTRAL,
			LMAGIC,

			ILLUSION,
			DREAM,
			VISION,
			SOUL,
			STRANGE,

		}

	else -- WotLK (any other client will fall back to this)
		const.DisenchantReagentList = {

			ABYSS,
			VOID,
			NEXUS,

			DREAM_SHARD,
			LPRISMATIC,
			LBRILLIANT,
			LRADIANT,
			LGLOWING,
			LGLIMMERING,

			SDREAM_SHARD,
			SPRISMATIC,
			SBRILLIANT,
			SRADIANT,
			SGLOWING,
			SGLIMMERING,

			GCOSMIC,
			GPLANAR,
			GETERNAL,
			GNETHER,
			GMYSTIC,
			GASTRAL,
			GMAGIC,

			LCOSMIC,
			LPLANAR,
			LETERNAL,
			LNETHER,
			LMYSTIC,
			LASTRAL,
			LMAGIC,

			INFINITE,
			ARCANE,
			ILLUSION,
			DREAM,
			VISION,
			SOUL,
			STRANGE,

		}

end
-- the big disenchant table, indexed by [quality][type][level bracket]
-- and yielding { { reagent type, drop probability, average drop quantity }, ... }
-- Todo: refine yields for each Classic client - may need separate tables if the yields are different between clients

    const.baseDisenchantTable = {
     [UNCOMMON] = {
      [const.WEAPON] = {
       ["bounds"] = { 15, 20, 25, 30, 35, 40, 45, 50, 55, 60, 65, 99, 120, 151, 200 },
       [15]  = { { STRANGE , 0.20, 1.5 }, { LMAGIC  , 0.80, 1.5 }, },
       [20]  = { { STRANGE , 0.20, 2.5 }, { GMAGIC  , 0.75, 1.5 }, { SGLIMMERING, 0.05, 1.0 }, },
       [25]  = { { STRANGE , 0.15, 5.0 }, { LASTRAL , 0.75, 1.5 }, { SGLIMMERING, 0.10, 1.0 }, },
       [30]  = { { SOUL    , 0.20, 1.5 }, { GASTRAL , 0.75, 1.5 }, { LGLIMMERING, 0.05, 1.0 }, },
       [35]  = { { SOUL    , 0.20, 3.5 }, { LMYSTIC , 0.75, 1.5 }, { SGLOWING   , 0.05, 1.0 }, },
       [40]  = { { VISION  , 0.20, 1.5 }, { GMYSTIC , 0.75, 1.5 }, { LGLOWING   , 0.05, 1.0 }, },
       [45]  = { { VISION  , 0.20, 3.5 }, { LNETHER , 0.75, 1.5 }, { SRADIANT   , 0.05, 1.0 }, },
       [50]  = { { DREAM   , 0.20, 1.5 }, { GNETHER , 0.75, 1.5 }, { LRADIANT   , 0.05, 1.0 }, },
       [55]  = { { DREAM   , 0.20, 3.5 }, { LETERNAL, 0.75, 1.5 }, { SBRILLIANT , 0.05, 1.0 }, },
       [60]  = { { ILLUSION, 0.20, 1.5 }, { GETERNAL, 0.75, 1.5 }, { LBRILLIANT , 0.05, 1.0 }, },
       [65]  = { { ILLUSION, 0.20, 3.5 }, { GETERNAL, 0.75, 2.5 }, { LBRILLIANT , 0.05, 1.0 }, },
       [99]  = { { ARCANE  , 0.20, 2.5 }, { LPLANAR , 0.75, 2.5 }, { SPRISMATIC , 0.05, 1.0 }, },
       [120] = { { ARCANE  , 0.20, 3.5 }, { GPLANAR , 0.75, 1.5 }, { LPRISMATIC , 0.05, 1.0 }, },	-- highest level BC green
       [151] = { { INFINITE, 0.20, 2.5 }, { LCOSMIC , 0.75, 1.5 }, { SDREAM_SHARD, 0.05, 1.0 }, },
       [200] = { { INFINITE, 0.20, 5.5 }, { GCOSMIC , 0.75, 1.5 }, { DREAM_SHARD , 0.05, 1.0 }, },	-- highest level LK green is 182

       },

      [const.ARMOR] = {
       ["bounds"] = { 15, 20, 25, 30, 35, 40, 45, 50, 55, 60, 65, 99, 120, 151, 200 },
       [15]  = { { STRANGE , 0.80, 1.5 }, { LMAGIC  , 0.20, 1.5 }, },
       [20]  = { { STRANGE , 0.75, 2.5 }, { GMAGIC  , 0.20, 1.5 }, { SGLIMMERING, 0.05, 1.0 }, },
       [25]  = { { STRANGE , 0.75, 5.0 }, { LASTRAL , 0.15, 1.5 }, { SGLIMMERING, 0.10, 1.0 }, },
       [30]  = { { SOUL    , 0.75, 1.5 }, { GASTRAL , 0.20, 1.5 }, { LGLIMMERING, 0.05, 1.0 }, },
       [35]  = { { SOUL    , 0.75, 3.5 }, { LMYSTIC , 0.20, 1.5 }, { SGLOWING   , 0.05, 1.0 }, },
       [40]  = { { VISION  , 0.75, 1.5 }, { GMYSTIC , 0.20, 1.5 }, { LGLOWING   , 0.05, 1.0 }, },
       [45]  = { { VISION  , 0.75, 3.5 }, { LNETHER , 0.20, 1.5 }, { SRADIANT   , 0.05, 1.0 }, },
       [50]  = { { DREAM   , 0.75, 1.5 }, { GNETHER , 0.20, 1.5 }, { LRADIANT   , 0.05, 1.0 }, },
       [55]  = { { DREAM   , 0.75, 3.5 }, { LETERNAL, 0.20, 1.5 }, { SBRILLIANT , 0.05, 1.0 }, },
       [60]  = { { ILLUSION, 0.75, 1.5 }, { GETERNAL, 0.20, 1.5 }, { LBRILLIANT , 0.05, 1.0 }, },
       [65]  = { { ILLUSION, 0.75, 3.5 }, { GETERNAL, 0.20, 2.5 }, { LBRILLIANT , 0.05, 1.0 }, },
       [99]  = { { ARCANE  , 0.75, 2.5 }, { LPLANAR , 0.20, 2.5 }, { SPRISMATIC , 0.05, 1.0 }, },
       [120] = { { ARCANE  , 0.75, 3.5 }, { GPLANAR , 0.20, 1.5 }, { LPRISMATIC , 0.05, 1.0 }, },	-- highest level BC green
       [151] = { { INFINITE, 0.75, 2.5 }, { LCOSMIC , 0.20, 1.5 }, { SDREAM_SHARD, 0.05, 1.0 }, },
       [200] = { { INFINITE, 0.75, 5.5 }, { GCOSMIC , 0.20, 1.5 }, { DREAM_SHARD , 0.05, 1.0 }, },	-- highest level LK green is 182

      },

     },

     [RARE] = {
        -- weapon lookups will fall back to the armor table
      [const.ARMOR] = {
       ["bounds"] = { 25, 30, 35, 40, 45, 50, 55, 65, 99, 120, 164, 200 },
       [25]  = { { SGLIMMERING,     1.00, 1.0 } },
       [30]  = { { LGLIMMERING,     1.00, 1.0 } },
       [35]  = { { SGLOWING,        1.00, 1.0 } },
       [40]  = { { LGLOWING,        1.00, 1.0 } },
       [45]  = { { SRADIANT,        1.00, 1.0 } },
       [50]  = { { LRADIANT,        1.00, 1.0 } },
       [55]  = { { SBRILLIANT,      1.00, 1.0 } },
       [65]  = { { LBRILLIANT,      1.00, 1.0 } },
       [99]  = { { SPRISMATIC,      1.00, 1.0 } },
       [120] = { { LPRISMATIC,      1.00, 1.0 } },
       [164] = { { SDREAM_SHARD,    1.00, 1.0 } },
       [200] = { { DREAM_SHARD ,    1.00, 1.0 } },	-- highest level LK blue is 200, first Cata blue is 288

      },

     },
     [EPIC] = {
        -- weapon lookups will fall back to the armor table
      [const.ARMOR] = {
       ["bounds"] = { 40, 45, 50, 55, 66, 94, 99, 164, 299 },
       [40]  = { { SRADIANT,    1.00, 3.0 } },
       [45]  = { { SRADIANT,    1.00, 3.5 } },
       [50]  = { { LRADIANT,    1.00, 3.5 } },
       [55]  = { { SBRILLIANT,  1.00, 3.5 } },
       [66]  = { { LBRILLIANT,  0.60, 4.0 }, { GETERNAL, 0.25, 3.5 }, { ILLUSION, 0.15, 4.5 }, },
       [94]  = { { NEXUS,       1.00, 1.5 } },	-- highest level classic item is 94, first BC epic is 95
       [99]  = { { VOID,        1.00, 1.0 } },
       [164] = { { VOID,        1.00, 1.5 } },	-- highest level BC epic is 164, first LK epic is 200
       [299] = { { ABYSS,       1.00, 1.0 } },	-- highest level LK epic is 284, first Cata epic is 300

      },

     },

    }

-- map reagents to item levels they are obtainable from
-- ignoring the 1% chance for rare drops

    const.ReverseDisenchantLevelList = {

        [ABYSS]       = { 165, 299 }, -- Abyss Crystal
        [VOID]        = {  95, 164 }, -- Void Crystal
        [NEXUS]       = {  56,  94 }, -- Nexus Crystal

        [DREAM_SHARD]     = { 165, 200 }, -- Dream Shard
        [SDREAM_SHARD]    = { 121, 164 }, -- Small Dream Shard
        [LPRISMATIC]      = { 100, 120 }, -- Large Prismatic Shard
        [SPRISMATIC]      = {  66,  99 }, -- Small Prismatic Shard
        [LBRILLIANT]      = {  56,  65 }, -- Large Brilliant Shard
        [SBRILLIANT]      = {  51,  55 }, -- Small Brilliant Shard
        [LRADIANT]        = {  46,  50 }, -- Large Radiant Shard
        [SRADIANT]        = {  41,  45 }, -- Small Radiant Shard
        [LGLOWING]        = {  36,  40 }, -- Large Glowing Shard
        [SGLOWING]        = {  31,  35 }, -- Small Glowing Shard
        [LGLIMMERING]     = {  26,  30 }, -- Large Glimmering Shard
        [SGLIMMERING]     = {  1,   25 }, -- Small Glimmering Shard

        [GCOSMIC]     = { 152, 200 }, -- Greater Cosmic Essence
        [LCOSMIC]     = { 121, 151 }, -- Lesser Cosmic Essence
        [GPLANAR]     = { 100, 120 }, -- Greater Planar Essence
        [LPLANAR]     = {  66,  99 }, -- Lesser Planar Essence
        [GETERNAL]    = {  56,  65 }, -- Greater Eternal Essence
        [LETERNAL]    = {  51,  55 }, -- Lesser Eternal Essence
        [GNETHER]     = {  46,  50 }, -- Greater Nether Essence
        [LNETHER]     = {  41,  45 }, -- Lesser Nether Essence
        [GMYSTIC]     = {  36,  40 }, -- Greater Mystic Essence
        [LMYSTIC]     = {  31,  35 }, -- Lesser Mystic Essence
        [GASTRAL]     = {  26,  30 }, -- Greater Astral Essence
        [LASTRAL]     = {  21,  25 }, -- Lesser Astral Essence
        [GMAGIC]      = {  16,  20 }, -- Greater Magic Essence
        [LMAGIC]      = {   1,  15 }, -- Lesser Magic Essence

        [INFINITE] = { 121, 200 }, -- Infinite Dust
        [ARCANE]   = {  66, 120 }, -- Arcane Dust
        [ILLUSION] = {  56,  65 }, -- Illusion Dust
        [DREAM]    = {  46,  55 }, -- Dream Dust
        [VISION]   = {  36,  45 }, -- Vision Dust
        [SOUL]     = {  26,  35 }, -- Soul Dust
        [STRANGE]  = {   1,  25 }, -- Strange Dust

    }

end


-- needed because GetItemInfo fails when items are not in the user's cache
-- it would be nice if it failed a lot less often
const.BackupReagentItemInfo = {
	[774] = "Malachite#|cff1eff00|Hitem:774:0:0:0:0:0:0:0:91:0:0:0|h[Malachite]|h|r#2#7#0#Gem#Simple#200##Interface\\ICONS\\INV_Misc_Gem_Emerald_03.blp",
	[818] = "Tigerseye#|cff1eff00|Hitem:818:0:0:0:0:0:0:0:91:0:0:0|h[Tigerseye]|h|r#2#15#0#Gem#Simple#200##Interface\\ICONS\\INV_Misc_Gem_Opal_03.blp",
	[1206] = "Moss Agate#|cff1eff00|Hitem:1206:0:0:0:0:0:0:0:100:251:0:0:0|h[Moss Agate]|h|r#2#25#0#Gem#Simple#200##Interface\\ICONS\\INV_Misc_Gem_Emerald_02.blp",
	[1210] = "Shadowgem#|cff1eff00|Hitem:1210:0:0:0:0:0:0:0:100:251:0:0:0|h[Shadowgem]|h|r#2#20#0#Gem#Simple#200##Interface\\ICONS\\INV_Misc_Gem_Amethyst_01.blp",
	[1529] = "Jade#|cff1eff00|Hitem:1529:0:0:0:0:0:0:0:100:251:0:0:0|h[Jade]|h|r#2#35#0#Gem#Simple#200##Interface\\ICONS\\INV_Misc_Gem_Stone_01.blp",
	[1705] = "Lesser Moonstone#|cff1eff00|Hitem:1705:0:0:0:0:0:0:0:100:251:0:0:0|h[Lesser Moonstone]|h|r#2#30#0#Gem#Simple#200##Interface\\ICONS\\INV_Misc_Gem_Crystal_01.blp",
	[2770] = "Copper Ore#|cffffffff|Hitem:2770:0:0:0:0:0:0:0:90:0:0:0|h[Copper Ore]|h|r#1#10#0#Trade Goods#Metal & Stone#200##Interface\\ICONS\\INV_Ore_Copper_01.blp",
	[2771] = "Tin Ore#|cffffffff|Hitem:2771:0:0:0:0:0:0:0:90:0:0:0|h[Tin Ore]|h|r#1#20#0#Trade Goods#Metal & Stone#200##Interface\\ICONS\\INV_Ore_Tin_01.blp",
	[2772] = "Iron Ore#|cffffffff|Hitem:2772:0:0:0:0:0:0:0:15:0:0:0|h[Iron Ore]|h|r#1#30#0#Trade Goods#Metal & Stone#200##Interface\\ICONS\\INV_Ore_Iron_01.blp",
	[3371] = "Crystal Vial#|cffffffff|Hitem:3371:0:0:0:0:0:0:0:84:0|h[Crystal Vial]|h|r#1#1#0#Trade Goods#Other#20##Interface\\Icons\\INV_Alchemy_LeadedVial",
	[3829] = "Frost Oil#|cffffffff|Hitem:3829:0:0:0:0:0:0:0:55|h[Frost Oil]|h|r#1#40#30#Consumable#Other#5##Interface\\Icons\\INV_Potion_20",
	[3858] = "Mithril Ore#|cffffffff|Hitem:3858:0:0:0:0:0:0:0:15:0:0:0|h[Mithril Ore]|h|r#1#40#0#Trade Goods#Metal & Stone#200##Interface\\ICONS\\INV_Ore_Mithril_02.blp",
	[3860] = "Mithril Bar#|cffffffff|Hitem:3860:0:0:0:0:0:0:0:80|h[Mithril Bar]|h|r#1#40#0#Trade Goods#Metal & Stone#20##Interface\\Icons\\INV_Ingot_06",
	[3864] = "Citrine#|cff1eff00|Hitem:3864:0:0:0:0:0:0:0:100:251:0:0:0|h[Citrine]|h|r#2#40#0#Gem#Simple#200##Interface\\ICONS\\INV_Misc_Gem_Opal_02.blp",
	[6037] = "Truesilver Bar#|cff1eff00|Hitem:6037:0:0:0:0:0:0:0:45|h[Truesilver Bar]|h|r#2#50#0#Trade Goods#Metal & Stone#20##Interface\\Icons\\INV_Ingot_08",
	[6371] = "Fire Oil#|cffffffff|Hitem:6371:0:0:0:0:0:0:0:70:0|h[Fire Oil]|h|r#1#25#0#Trade Goods#Other#20##Interface\\Icons\\INV_Potion_38",
	[7068] = "Elemental Fire#|cffffffff|Hitem:7068:0:0:0:0:0:0:0:32|h[Elemental Fire]|h|r#1#25#0#Trade Goods#Elemental#10##Interface\\Icons\\Spell_Fire_Fire",
	[7075] = "Core of Earth#|cffffffff|Hitem:7075:0:0:0:0:0:0:0:65|h[Core of Earth]|h|r#1#45#0#Trade Goods#Elemental#10##Interface\\Icons\\INV_Stone_05",
	[7077] = "Heart of Fire#|cffffffff|Hitem:7077:0:0:0:0:0:0:0:65|h[Heart of Fire]|h|r#1#45#0#Trade Goods#Elemental#10##Interface\\Icons\\Spell_Fire_LavaSpawn",
	[7078] = "Essence of Fire#|cff1eff00|Hitem:7078:0:0:0:0:0:0:0:65|h[Essence of Fire]|h|r#2#55#0#Trade Goods#Elemental#10##Interface\\Icons\\Spell_Fire_Volcano",
	[7079] = "Globe of Water#|cffffffff|Hitem:7079:0:0:0:0:0:0:0:65|h[Globe of Water]|h|r#1#45#0#Trade Goods#Elemental#10##Interface\\Icons\\INV_Misc_Orb_01",
	[7080] = "Essence of Water#|cff1eff00|Hitem:7080:0:0:0:0:0:0:0:74|h[Essence of Water]|h|r#2#55#0#Trade Goods#Elemental#10##Interface\\Icons\\Spell_Nature_Acid_01",
	[7081] = "Breath of Wind#|cffffffff|Hitem:7081:0:0:0:0:0:0:0:65|h[Breath of Wind]|h|r#1#45#0#Trade Goods#Elemental#10##Interface\\Icons\\Spell_Nature_Cyclone",
	[7082] = "Essence of Air#|cff1eff00|Hitem:7082:0:0:0:0:0:0:0:74|h[Essence of Air]|h|r#2#55#0#Trade Goods#Elemental#10##Interface\\Icons\\Spell_Nature_EarthBind",
	[7392] = "Green Whelp Scale#|cffffffff|Hitem:7392:0:0:0:0:0:0:0:85:0|h[Green Whelp Scale]|h|r#1#1#0#Trade Goods#Leather#5##Interface\\Icons\\INV_Misc_MonsterScales_03",
	[7909] = "Aquamarine#|cff1eff00|Hitem:7909:0:0:0:0:0:0:0:100:251:0:0:0|h[Aquamarine]|h|r#2#45#0#Gem#Simple#200##Interface\\ICONS\\INV_Misc_Gem_Crystal_02.blp",
	[7910] = "Star Ruby#|cff1eff00|Hitem:7910:0:0:0:0:0:0:0:100:251:0:0:0|h[Star Ruby]|h|r#2#50#0#Gem#Simple#200##Interface\\ICONS\\INV_Misc_Gem_Ruby_02.blp",
	[7972] = "Ichor of Undeath#|cffffffff|Hitem:7972:0:0:0:0:0:0:0:65|h[Ichor of Undeath]|h|r#1#45#0#Trade Goods#Elemental#10##Interface\\Icons\\INV_Misc_Slime_01",
	[8153] = "Wildvine#|cff1eff00|Hitem:8153:0:0:0:0:0:0:0:60:0|h[Wildvine]|h|r#2#40#0#Trade Goods#Herb#20##Interface\\Icons\\INV_Misc_Herb_03",
	[8170] = "Rugged Leather#|cffffffff|Hitem:8170:0:0:0:0:0:0:0:14|h[Rugged Leather]|h|r#1#50#0#Trade Goods#Leather#20##Interface\\Icons\\INV_Misc_LeatherScrap_02",
	[9224] = "Elixir of Demonslaying#|cffffffff|Hitem:9224:0:0:0:0:0:0:0:48|h[Elixir of Demonslaying]|h|r#1#50#40#Consumable#Elixir#20##Interface\\Icons\\INV_Potion_27",
	[10620] = "Thorium Ore#|cffffffff|Hitem:10620:0:0:0:0:0:0:0:15:0:0:0|h[Thorium Ore]|h|r#1#40#0#Trade Goods#Metal & Stone#200##Interface\\ICONS\\INV_Ore_Thorium_02.blp",
	[10938] = "Lesser Magic Essence#|cff1eff00|Hitem:10938:0:0:0:0:0:0:0:100:105:0:0:0|h[Lesser Magic Essence]|h|r#2#10#0#Trade Goods#Enchanting#200##Interface\\ICONS\\INV_Enchant_EssenceMagicSmall.blp",
	[10939] = "Greater Magic Essence#|cff1eff00|Hitem:10939:0:0:0:0:0:0:0:100:105:0:0:0|h[Greater Magic Essence]|h|r#2#15#0#Trade Goods#Enchanting#200##Interface\\ICONS\\INV_Enchant_EssenceMagicLarge.blp",
	[10940] = "Strange Dust#|cffffffff|Hitem:10940:0:0:0:0:0:0:0:100:105:0:0:0|h[Strange Dust]|h|r#1#10#0#Trade Goods#Enchanting#200##Interface\\ICONS\\INV_Enchant_DustStrange.blp",
	[10978] = "Small Glimmering Shard#|cff0070dd|Hitem:10978:0:0:0:0:0:0:0:100:267:0:0:0|h[Small Glimmering Shard]|h|r#3#20#0#Trade Goods#Enchanting#200##Interface\\ICONS\\INV_Enchant_ShardGlimmeringSmall.blp",
	[10998] = "Lesser Astral Essence#|cff1eff00|Hitem:10998:0:0:0:0:0:0:0:100:261:0:0:0|h[Lesser Astral Essence]|h|r#2#20#0#Trade Goods#Enchanting#200##Interface\\ICONS\\INV_Enchant_EssenceAstralSmall.blp",
	[11082] = "Greater Astral Essence#|cff1eff00|Hitem:11082:0:0:0:0:0:0:0:100:104:0:0:0|h[Greater Astral Essence]|h|r#2#25#0#Trade Goods#Enchanting#200##Interface\\ICONS\\INV_Enchant_EssenceAstralLarge.blp",
	[11083] = "Soul Dust#|cffffffff|Hitem:11083:0:0:0:0:0:0:0:100:104:0:0:0|h[Soul Dust]|h|r#1#25#0#Trade Goods#Enchanting#200##Interface\\ICONS\\INV_Enchant_DustSoul.blp",
	[11084] = "Large Glimmering Shard#|cff0070dd|Hitem:11084:0:0:0:0:0:0:0:100:104:0:0:0|h[Large Glimmering Shard]|h|r#3#25#0#Trade Goods#Enchanting#200##Interface\\ICONS\\INV_Enchant_ShardGlimmeringLarge.blp",
	[11134] = "Lesser Mystic Essence#|cff1eff00|Hitem:11134:0:0:0:0:0:0:0:100:251:0:0:0|h[Lesser Mystic Essence]|h|r#2#30#0#Trade Goods#Enchanting#200##Interface\\ICONS\\INV_Enchant_EssenceMysticalSmall.blp",
	[11135] = "Greater Mystic Essence#|cff1eff00|Hitem:11135:0:0:0:0:0:0:0:100:261:0:0:0|h[Greater Mystic Essence]|h|r#2#35#0#Trade Goods#Enchanting#200##Interface\\ICONS\\INV_Enchant_EssenceMysticalLarge.blp",
	[11137] = "Vision Dust#|cffffffff|Hitem:11137:0:0:0:0:0:0:0:100:105:0:0:0|h[Vision Dust]|h|r#1#35#0#Trade Goods#Enchanting#200##Interface\\ICONS\\INV_Enchant_DustVision.blp",
	[11138] = "Small Glowing Shard#|cff0070dd|Hitem:11138:0:0:0:0:0:0:0:100:251:0:0:0|h[Small Glowing Shard]|h|r#3#30#0#Trade Goods#Enchanting#200##Interface\\ICONS\\INV_Enchant_ShardGlowingSmall.blp",
	[11139] = "Large Glowing Shard#|cff0070dd|Hitem:11139:0:0:0:0:0:0:0:100:261:0:0:0|h[Large Glowing Shard]|h|r#3#35#0#Trade Goods#Enchanting#200##Interface\\ICONS\\INV_Enchant_ShardGlowingLarge.blp",
	[11174] = "Lesser Nether Essence#|cff1eff00|Hitem:11174:0:0:0:0:0:0:0:100:105:0:0:0|h[Lesser Nether Essence]|h|r#2#40#0#Trade Goods#Enchanting#200##Interface\\ICONS\\INV_Enchant_EssenceNetherSmall.blp",
	[11175] = "Greater Nether Essence#|cff1eff00|Hitem:11175:0:0:0:0:0:0:0:100:251:0:0:0|h[Greater Nether Essence]|h|r#2#45#0#Trade Goods#Enchanting#200##Interface\\ICONS\\INV_Enchant_EssenceNetherLarge.blp",
	[11176] = "Dream Dust#|cffffffff|Hitem:11176:0:0:0:0:0:0:0:100:251:0:0:0|h[Dream Dust]|h|r#1#45#0#Trade Goods#Enchanting#200##Interface\\ICONS\\INV_Enchant_DustDream.blp",
	[11177] = "Small Radiant Shard#|cff0070dd|Hitem:11177:0:0:0:0:0:0:0:100:105:0:0:0|h[Small Radiant Shard]|h|r#3#40#0#Trade Goods#Enchanting#200##Interface\\ICONS\\INV_Enchant_ShardRadientSmall.blp",
	[11178] = "Large Radiant Shard#|cff0070dd|Hitem:11178:0:0:0:0:0:0:0:100:251:0:0:0|h[Large Radiant Shard]|h|r#3#45#0#Trade Goods#Enchanting#200##Interface\\ICONS\\INV_Enchant_ShardRadientLarge.blp",
	[12361] = "Blue Sapphire#|cff1eff00|Hitem:12361:0:0:0:0:0:0:0:100:251:0:0:0|h[Blue Sapphire]|h|r#2#55#0#Gem#Simple#200##Interface\\ICONS\\INV_Misc_Gem_Sapphire_02.blp",
	[12364] = "Huge Emerald#|cff1eff00|Hitem:12364:0:0:0:0:0:0:0:100:251:0:0:0|h[Huge Emerald]|h|r#2#60#0#Gem#Simple#200##Interface\\ICONS\\INV_Misc_Gem_Emerald_01.blp",
	[12799] = "Large Opal#|cff1eff00|Hitem:12799:0:0:0:0:0:0:0:100:251:0:0:0|h[Large Opal]|h|r#2#55#0#Gem#Simple#200##Interface\\ICONS\\INV_Misc_Gem_Opal_01.blp",
	[12800] = "Azerothian Diamond#|cff1eff00|Hitem:12800:0:0:0:0:0:0:0:100:251:0:0:0|h[Azerothian Diamond]|h|r#2#60#0#Gem#Simple#200##Interface\\ICONS\\INV_Misc_Gem_Diamond_01.blp",
	[12803] = "Living Essence#|cff1eff00|Hitem:12803:0:0:0:0:0:0:0:56:0|h[Living Essence]|h|r#2#55#0#Trade Goods#Elemental#10##Interface\\Icons\\Spell_Nature_AbolishMagic",
	[12808] = "Essence of Undeath#|cff1eff00|Hitem:12808:0:0:0:0:0:0:0:82:0|h[Essence of Undeath]|h|r#2#55#0#Trade Goods#Elemental#10##Interface\\Icons\\Spell_Shadow_ShadeTrueSight",
	[12811] = "Righteous Orb#|cff1eff00|Hitem:12811:0:0:0:0:0:0:0:80|h[Righteous Orb]|h|r#2#60#0#Trade Goods#Other#20##Interface\\Icons\\INV_Misc_Gem_Pearl_03",
	[13446] = "Major Healing Potion#|cffffffff|Hitem:13446:0:0:0:0:0:0:0:65:0|h[Major Healing Potion]|h|r#1#55#45#Consumable#Potion#20##Interface\\Icons\\INV_Potion_54",
	[13467] = "Icecap#|cffffffff|Hitem:13467:0:0:0:0:0:0:0:74|h[Icecap]|h|r#1#58#0#Trade Goods#Herb#20##Interface\\Icons\\INV_Misc_Herb_IceCap",
	[14343] = "Small Brilliant Shard#|cff0070dd|Hitem:14343:0:0:0:0:0:0:0:100:261:0:0:0|h[Small Brilliant Shard]|h|r#3#50#0#Trade Goods#Enchanting#200##Interface\\ICONS\\INV_Enchant_ShardBrilliantSmall.blp",
	[14344] = "Large Brilliant Shard#|cff0070dd|Hitem:14344:0:0:0:0:0:0:0:100:105:0:0:0|h[Large Brilliant Shard]|h|r#3#55#0#Trade Goods#Enchanting#200##Interface\\ICONS\\INV_Enchant_ShardBrilliantLarge.blp",
	[16202] = "Lesser Eternal Essence#|cff1eff00|Hitem:16202:0:0:0:0:0:0:0:100:261:0:0:0|h[Lesser Eternal Essence]|h|r#2#50#0#Trade Goods#Enchanting#200##Interface\\ICONS\\INV_Enchant_EssenceEternalSmall.blp",
	[16203] = "Greater Eternal Essence#|cff1eff00|Hitem:16203:0:0:0:0:0:0:0:100:251:0:0:0|h[Greater Eternal Essence]|h|r#2#55#0#Trade Goods#Enchanting#200##Interface\\ICONS\\INV_Enchant_EssenceEternalLarge.blp",
	[16204] = "Illusion Dust#|cffffffff|Hitem:16204:0:0:0:0:0:0:0:100:251:0:0:0|h[Illusion Dust]|h|r#1#55#0#Trade Goods#Enchanting#200##Interface\\ICONS\\INV_Enchant_DustIllusion.blp",
	[18256] = "Imbued Vial#|cffffffff|Hitem:18256:0:0:0:0:0:0:0:62|h[Imbued Vial]|h|r#1#55#0#Trade Goods#Other#20##Interface\\Icons\\INV_Alchemy_ImbuedVial",
	[20725] = "Nexus Crystal#|cffa335ee|Hitem:20725:0:0:0:0:0:0:0:100:251:0:0:0|h[Nexus Crystal]|h|r#4#60#0#Trade Goods#Enchanting#200##Interface\\ICONS\\INV_Enchant_ShardNexusLarge.blp",
	[21886] = "Primal Life#|cff1eff00|Hitem:21886:0:0:0:0:0:0:0:73|h[Primal Life]|h|r#2#65#0#Trade Goods#Elemental#20##Interface\\Icons\\INV_Elemental_Primal_Life",
	[21929] = "Flame Spessarite#|cff1eff00|Hitem:21929:0:0:0:0:0:0:0:100:251:0:0:0|h[Flame Spessarite]|h|r#2#65#0#Gem#Orange#200##Interface\\ICONS\\INV_Misc_Gem_FlameSpessarite_03.blp",
	[22445] = "Arcane Dust#|cffffffff|Hitem:22445:0:0:0:0:0:0:0:100:105:0:0:0|h[Arcane Dust]|h|r#1#60#0#Trade Goods#Enchanting#200##Interface\\ICONS\\INV_Enchant_DustArcane.blp",
	[22446] = "Greater Planar Essence#|cff1eff00|Hitem:22446:0:0:0:0:0:0:0:100:105:0:0:0|h[Greater Planar Essence]|h|r#2#65#0#Trade Goods#Enchanting#200##Interface\\ICONS\\INV_Enchant_EssenceArcaneLarge.blp",
	[22447] = "Lesser Planar Essence#|cff1eff00|Hitem:22447:0:0:0:0:0:0:0:100:251:0:0:0|h[Lesser Planar Essence]|h|r#2#60#0#Trade Goods#Enchanting#200##Interface\\ICONS\\INV_Enchant_EssenceArcaneSmall.blp",
	[22448] = "Small Prismatic Shard#|cff0070dd|Hitem:22448:0:0:0:0:0:0:0:100:251:0:0:0|h[Small Prismatic Shard]|h|r#3#65#0#Trade Goods#Enchanting#200##Interface\\ICONS\\INV_Enchant_ShardPrismaticSmall.blp",
	[22449] = "Large Prismatic Shard#|cff0070dd|Hitem:22449:0:0:0:0:0:0:0:100:105:0:0:0|h[Large Prismatic Shard]|h|r#3#70#0#Trade Goods#Enchanting#200##Interface\\ICONS\\INV_Enchant_ShardPrismaticLarge.blp",
	[22450] = "Void Crystal#|cffa335ee|Hitem:22450:0:0:0:0:0:0:0:100:104:0:0:0|h[Void Crystal]|h|r#4#70#0#Trade Goods#Enchanting#200##Interface\\ICONS\\INV_Enchant_VoidCrystal.blp",
	[22451] = "Primal Air#|cff1eff00|Hitem:22451:0:0:0:0:0:0:0:72|h[Primal Air]|h|r#2#65#0#Trade Goods#Elemental#20##Interface\\Icons\\INV_Elemental_Primal_Air",
	[22452] = "Primal Earth#|cff1eff00|Hitem:22452:0:0:0:0:0:0:0:72|h[Primal Earth]|h|r#2#65#0#Trade Goods#Elemental#20##Interface\\Icons\\INV_Elemental_Primal_Earth",
	[22457] = "Primal Mana#|cff1eff00|Hitem:22457:0:0:0:0:0:0:0:69:0|h[Primal Mana]|h|r#2#65#0#Trade Goods#Elemental#20##Interface\\Icons\\INV_Elemental_Primal_Mana",
	[23077] = "Blood Garnet#|cff1eff00|Hitem:23077:0:0:0:0:0:0:0:100:251:0:0:0|h[Blood Garnet]|h|r#2#65#0#Gem#Red#200##Interface\\ICONS\\INV_Misc_Gem_BloodGem_03.blp",
	[23079] = "Deep Peridot#|cff1eff00|Hitem:23079:0:0:0:0:0:0:0:100:251:0:0:0|h[Deep Peridot]|h|r#2#65#0#Gem#Green#200##Interface\\ICONS\\INV_Misc_Gem_DeepPeridot_03.blp",
	[23107] = "Shadow Draenite#|cff1eff00|Hitem:23107:0:0:0:0:0:0:0:100:251:0:0:0|h[Shadow Draenite]|h|r#2#65#0#Gem#Purple#200##Interface\\ICONS\\INV_Misc_Gem_EbonDraenite_03.blp",
	[23112] = "Golden Draenite#|cff1eff00|Hitem:23112:0:0:0:0:0:0:0:100:251:0:0:0|h[Golden Draenite]|h|r#2#65#0#Gem#Yellow#200##Interface\\ICONS\\INV_Misc_Gem_GoldenDraenite_03.blp",
	[23117] = "Azure Moonstone#|cff1eff00|Hitem:23117:0:0:0:0:0:0:0:100:251:0:0:0|h[Azure Moonstone]|h|r#2#65#0#Gem#Blue#200##Interface\\ICONS\\INV_Misc_Gem_AzureDraenite_03.blp",
	[23424] = "Fel Iron Ore#|cffffffff|Hitem:23424:0:0:0:0:0:0:0:100:251:0:0:0|h[Fel Iron Ore]|h|r#1#60#0#Trade Goods#Metal & Stone#200##Interface\\ICONS\\INV_Ore_FelIron.blp",
	[23425] = "Adamantite Ore#|cffffffff|Hitem:23425:0:0:0:0:0:0:0:100:251:0:0:0|h[Adamantite Ore]|h|r#1#65#0#Trade Goods#Metal & Stone#200##Interface\\ICONS\\INV_Ore_Adamantium.blp",
	[23436] = "Living Ruby#|cff0070dd|Hitem:23436:0:0:0:0:0:0:0:100:251:0:0:0|h[Living Ruby]|h|r#3#70#0#Gem#Red#200##Interface\\ICONS\\INV_Jewelcrafting_LivingRuby_02.blp",
	[23437] = "Talasite#|cff0070dd|Hitem:23437:0:0:0:0:0:0:0:100:251:0:0:0|h[Talasite]|h|r#3#70#0#Gem#Green#200##Interface\\ICONS\\INV_Jewelcrafting_Talasite_02.blp",
	[23438] = "Star of Elune#|cff0070dd|Hitem:23438:0:0:0:0:0:0:0:100:251:0:0:0|h[Star of Elune]|h|r#3#70#0#Gem#Blue#200##Interface\\ICONS\\INV_Jewelcrafting_StarOfElune_02.blp",
	[23439] = "Noble Topaz#|cff0070dd|Hitem:23439:0:0:0:0:0:0:0:100:251:0:0:0|h[Noble Topaz]|h|r#3#70#0#Gem#Orange#200##Interface\\ICONS\\INV_Jewelcrafting_NobleTopaz_02.blp",
	[23440] = "Dawnstone#|cff0070dd|Hitem:23440:0:0:0:0:0:0:0:100:251:0:0:0|h[Dawnstone]|h|r#3#70#0#Gem#Yellow#200##Interface\\ICONS\\INV_Jewelcrafting_Dawnstone_02.blp",
	[23441] = "Nightseye#|cff0070dd|Hitem:23441:0:0:0:0:0:0:0:100:251:0:0:0|h[Nightseye]|h|r#3#70#0#Gem#Purple#200##Interface\\ICONS\\INV_Jewelcrafting_Nightseye_02.blp",
	[24243] = "Adamantite Powder#|cffffffff|Hitem:24243:0:0:0:0:0:0:0:100:251:0:0:0|h[Adamantite Powder]|h|r#1#70#0#Trade Goods#Jewelcrafting#200##Interface\\ICONS\\INV_Misc_Powder_Adamantite.blp",
	[34052] = "Dream Shard#|cff0070dd|Hitem:34052:0:0:0:0:0:0:0:100:104:0:0:0|h[Dream Shard]|h|r#3#80#0#Trade Goods#Enchanting#200##Interface\\ICONS\\INV_Enchant_DreamShard_02.blp",
	[34053] = "Small Dream Shard#|cff0070dd|Hitem:34053:0:0:0:0:0:0:0:100:267:0:0:0|h[Small Dream Shard]|h|r#3#80#0#Trade Goods#Enchanting#200##Interface\\ICONS\\INV_Enchant_DreamShard_01.blp",
	[34054] = "Infinite Dust#|cffffffff|Hitem:34054:0:0:0:0:0:0:0:100:104:0:0:0|h[Infinite Dust]|h|r#1#70#0#Trade Goods#Enchanting#200##Interface\\ICONS\\INV_Misc_Dust_Infinite.blp",
	[34055] = "Greater Cosmic Essence#|cff1eff00|Hitem:34055:0:0:0:0:0:0:0:100:104:0:0:0|h[Greater Cosmic Essence]|h|r#2#75#0#Trade Goods#Enchanting#200##Interface\\ICONS\\INV_Enchant_EssenceCosmicGreater.blp",
	[34056] = "Lesser Cosmic Essence#|cff1eff00|Hitem:34056:0:0:0:0:0:0:0:100:261:0:0:0|h[Lesser Cosmic Essence]|h|r#2#70#0#Trade Goods#Enchanting#200##Interface\\ICONS\\INV_Enchant_EssenceCosmicLesser.blp",
	[34057] = "Abyss Crystal#|cffa335ee|Hitem:34057:0:0:0:0:0:0:0:100:64:0:0:0|h[Abyss Crystal]|h|r#4#80#0#Trade Goods#Enchanting#200##Interface\\ICONS\\INV_Enchant_AbyssCrystal.blp",
	[35622] = "Eternal Water#|cff1eff00|Hitem:35622:0:0:0:0:0:0:0:80|h[Eternal Water]|h|r#2#75#0#Trade Goods#Elemental#20##Interface\\Icons\\INV_Elemental_Eternal_Water",
	[35623] = "Eternal Air#|cff1eff00|Hitem:35623:0:0:0:0:0:0:0:85:0|h[Eternal Air]|h|r#2#75#0#Trade Goods#Elemental#20##Interface\\Icons\\INV_Elemental_Eternal_Air",
	[35624] = "Eternal Earth#|cff1eff00|Hitem:35624:0:0:0:0:0:0:0:85:0|h[Eternal Earth]|h|r#2#75#0#Trade Goods#Elemental#20##Interface\\Icons\\INV_Elemental_Eternal_Earth",
	[35625] = "Eternal Life#|cff1eff00|Hitem:35625:0:0:0:0:0:0:0:80|h[Eternal Life]|h|r#2#75#0#Trade Goods#Elemental#20##Interface\\Icons\\INV_Elemental_Eternal_Life",
	[35627] = "Eternal Shadow#|cff1eff00|Hitem:35627:0:0:0:0:0:0:0:80|h[Eternal Shadow]|h|r#2#75#0#Trade Goods#Elemental#20##Interface\\Icons\\INV_Elemental_Eternal_Shadow",
	[36784] = "Siren's Tear#|cff0070dd|Hitem:36784:0:0:0:0:0:0:0:80|h[Siren's Tear]|h|r#3#75#0#Gem#Simple#20##Interface\\Icons\\INV_Misc_Gem_Pearl_11",
	[36860] = "Eternal Fire#|cff1eff00|Hitem:36860:0:0:0:0:0:0:0:80|h[Eternal Fire]|h|r#2#75#0#Trade Goods#Elemental#20##Interface\\Icons\\INV_Elemental_Eternal_Fire",
	[36901] = "Goldclover#|cffffffff|Hitem:36901:0:0:0:0:0:0:0:84:0|h[Goldclover]|h|r#1#72#0#Trade Goods#Herb#20##Interface\\Icons\\INV_Misc_Herb_GoldClover",
	[36903] = "Adder's Tongue#|cffffffff|Hitem:36903:0:0:0:0:0:0:0:84:0|h[Adder's Tongue]|h|r#1#77#0#Trade Goods#Herb#20##Interface\\Icons\\INV_Misc_Herb_EvergreenMoss",
	[36905] = "Lichbloom#|cffffffff|Hitem:36905:0:0:0:0:0:0:0:62|h[Lichbloom]|h|r#1#80#0#Trade Goods#Herb#20##Interface\\Icons\\INV_Misc_Herb_Whispervine",
	[36906] = "Icethorn#|cffffffff|Hitem:36906:0:0:0:0:0:0:0:62|h[Icethorn]|h|r#1#80#0#Trade Goods#Herb#20##Interface\\Icons\\INV_Misc_Herb_IceThorn",
	[36907] = "Talandra's Rose#|cffffffff|Hitem:36907:0:0:0:0:0:0:0:84:0|h[Talandra's Rose]|h|r#1#72#0#Trade Goods#Herb#20##Interface\\Icons\\INV_Misc_Herb_TalandrasRose",
	[36908] = "Frost Lotus#|cff1eff00|Hitem:36908:0:0:0:0:0:0:0:62|h[Frost Lotus]|h|r#2#80#0#Trade Goods#Herb#20##Interface\\Icons\\INV_Misc_Herb_FrostLotus",
	[36909] = "Cobalt Ore#|cffffffff|Hitem:36909:0:0:0:0:0:0:0:100:251:0:0:0|h[Cobalt Ore]|h|r#1#72#0#Trade Goods#Metal & Stone#200##Interface\\ICONS\\INV_Ore_Cobalt.blp",
	[36910] = "Titanium Ore#|cff1eff00|Hitem:36910:0:0:0:0:0:0:0:100:251:0:0:0|h[Titanium Ore]|h|r#2#80#0#Trade Goods#Metal & Stone#200##Interface\\ICONS\\INV_Ore_Platinum_01.blp",
	[36912] = "Saronite Ore#|cffffffff|Hitem:36912:0:0:0:0:0:0:0:100:251:0:0:0|h[Saronite Ore]|h|r#1#75#0#Trade Goods#Metal & Stone#200##Interface\\ICONS\\INV_Ore_Saronite_01.blp",
	[36913] = "Saronite Bar#|cffffffff|Hitem:36913:0:0:0:0:0:0:0:80:0|h[Saronite Bar]|h|r#1#80#0#Trade Goods#Metal & Stone#20##Interface\\Icons\\INV_Ingot_Yoggthorite",
	[36917] = "Bloodstone#|cff1eff00|Hitem:36917:0:0:0:0:0:0:0:100:251:0:0:0|h[Bloodstone]|h|r#2#75#0#Gem#Red#200##Interface\\ICONS\\INV_Jewelcrafting_Gem_12.blp",
	[36918] = "Scarlet Ruby#|cff0070dd|Hitem:36918:0:0:0:0:0:0:0:100:251:0:0:0|h[Scarlet Ruby]|h|r#3#80#0#Gem#Red#200##Interface\\ICONS\\INV_Jewelcrafting_Gem_04.blp",
	[36919] = "Cardinal Ruby#|cffa335ee|Hitem:36919:0:0:0:0:0:0:0:100:251:0:0:0|h[Cardinal Ruby]|h|r#4#80#0#Gem#Red#200##Interface\\ICONS\\INV_JEWELCRAFTING_GEM_32.BLP",
	[36920] = "Sun Crystal#|cff1eff00|Hitem:36920:0:0:0:0:0:0:0:100:251:0:0:0|h[Sun Crystal]|h|r#2#75#0#Gem#Yellow#200##Interface\\ICONS\\INV_Jewelcrafting_Gem_08.blp",
	[36921] = "Autumn's Glow#|cff0070dd|Hitem:36921:0:0:0:0:0:0:0:100:251:0:0:0|h[Autumn's Glow]|h|r#3#80#0#Gem#Yellow#200##Interface\\ICONS\\INV_Jewelcrafting_Gem_03.blp",
	[36922] = "King's Amber#|cffa335ee|Hitem:36922:0:0:0:0:0:0:0:100:251:0:0:0|h[King's Amber]|h|r#4#80#0#Gem#Yellow#200##Interface\\ICONS\\INV_JEWELCRAFTING_GEM_36.BLP",
	[36923] = "Chalcedony#|cff1eff00|Hitem:36923:0:0:0:0:0:0:0:100:251:0:0:0|h[Chalcedony]|h|r#2#75#0#Gem#Blue#200##Interface\\ICONS\\INV_Jewelcrafting_Gem_10.blp",
	[36924] = "Sky Sapphire#|cff0070dd|Hitem:36924:0:0:0:0:0:0:0:100:251:0:0:0|h[Sky Sapphire]|h|r#3#80#0#Gem#Blue#200##Interface\\ICONS\\INV_Jewelcrafting_Gem_05.blp",
	[36925] = "Majestic Zircon#|cffa335ee|Hitem:36925:0:0:0:0:0:0:0:100:251:0:0:0|h[Majestic Zircon]|h|r#4#80#0#Gem#Blue#200##Interface\\ICONS\\INV_JEWELCRAFTING_GEM_35.BLP",
	[36926] = "Shadow Crystal#|cff1eff00|Hitem:36926:0:0:0:0:0:0:0:100:251:0:0:0|h[Shadow Crystal]|h|r#2#75#0#Gem#Purple#200##Interface\\ICONS\\INV_Jewelcrafting_Gem_11.blp",
	[36927] = "Twilight Opal#|cff0070dd|Hitem:36927:0:0:0:0:0:0:0:100:251:0:0:0|h[Twilight Opal]|h|r#3#80#0#Gem#Purple#200##Interface\\ICONS\\INV_Jewelcrafting_Gem_06.blp",
	[36928] = "Dreadstone#|cffa335ee|Hitem:36928:0:0:0:0:0:0:0:100:251:0:0:0|h[Dreadstone]|h|r#4#80#0#Gem#Purple#200##Interface\\ICONS\\INV_JEWELCRAFTING_GEM_31.BLP",
	[36929] = "Huge Citrine#|cff1eff00|Hitem:36929:0:0:0:0:0:0:0:100:251:0:0:0|h[Huge Citrine]|h|r#2#75#0#Gem#Orange#200##Interface\\ICONS\\INV_Jewelcrafting_Gem_09.blp",
	[36930] = "Monarch Topaz#|cff0070dd|Hitem:36930:0:0:0:0:0:0:0:100:251:0:0:0|h[Monarch Topaz]|h|r#3#80#0#Gem#Orange#200##Interface\\ICONS\\INV_Jewelcrafting_Gem_02.blp",
	[36931] = "Ametrine#|cffa335ee|Hitem:36931:0:0:0:0:0:0:0:100:251:0:0:0|h[Ametrine]|h|r#4#80#0#Gem#Orange#200##Interface\\ICONS\\INV_JEWELCRAFTING_GEM_33.BLP",
	[36932] = "Dark Jade#|cff1eff00|Hitem:36932:0:0:0:0:0:0:0:100:251:0:0:0|h[Dark Jade]|h|r#2#75#0#Gem#Green#200##Interface\\ICONS\\INV_Jewelcrafting_Gem_07.blp",
	[36933] = "Forest Emerald#|cff0070dd|Hitem:36933:0:0:0:0:0:0:0:100:251:0:0:0|h[Forest Emerald]|h|r#3#80#0#Gem#Green#200##Interface\\ICONS\\INV_Jewelcrafting_Gem_01.blp",
	[36934] = "Eye of Zul#|cffa335ee|Hitem:36934:0:0:0:0:0:0:0:100:251:0:0:0|h[Eye of Zul]|h|r#4#80#0#Gem#Green#200##Interface\\ICONS\\INV_JEWELCRAFTING_GEM_34.BLP",
	[37663] = "Titansteel Bar#|cff1eff00|Hitem:37663:0:0:0:0:0:0:0:43|h[Titansteel Bar]|h|r#2#80#0#Trade Goods#Metal & Stone#20##Interface\\Icons\\INV_Ingot_Titansteel_blue",
	[37704] = "Crystallized Life#|cffffffff|Hitem:37704:0:0:0:0:0:0:0:62|h[Crystallized Life]|h|r#1#75#0#Trade Goods#Elemental#10##Interface\\Icons\\INV_Elemental_Crystal_Life",
	[37705] = "Crystallized Water#|cffffffff|Hitem:37705:0:0:0:0:0:0:0:81:0|h[Crystallized Water]|h|r#1#75#0#Trade Goods#Elemental#10##Interface\\Icons\\INV_Elemental_Crystal_Water",
	[38426] = "Eternium Thread#|cffffffff|Hitem:38426:0:0:0:0:0:0:0:90:0:0|h[Eternium Thread]|h|r#1#70#0#Trade Goods#Cloth#20##Interface\\Icons\\INV_Misc_Thread_01",
	[38558] = "Nerubian Chitin#|cffffffff|Hitem:38558:0:0:0:0:0:0:0:85:0|h[Nerubian Chitin]|h|r#1#70#0#Trade Goods#Leather#20##Interface\\Icons\\INV_Misc_NerubianChitin_01",
	[38561] = "Jormungar Scale#|cffffffff|Hitem:38561:0:0:0:0:0:0:0:85:0|h[Jormungar Scale]|h|r#1#75#0#Trade Goods#Leather#20##Interface\\Icons\\INV_Misc_MonsterScales_18",
	[39151] = "Alabaster Pigment#|cffffffff|Hitem:39151:0:0:0:0:0:0:0:10:0:0:0|h[Alabaster Pigment]|h|r#1#1#0#Trade Goods#Other#200##Interface\\ICONS\\INV_Inscription_Pigment_White.blp",
	[39334] = "Dusky Pigment#|cffffffff|Hitem:39334:0:0:0:0:0:0:0:100:267:0:0:0|h[Dusky Pigment]|h|r#1#10#0#Trade Goods#Other#200##Interface\\ICONS\\INV_Inscription_Pigment_Silver.blp",
	[39338] = "Golden Pigment#|cffffffff|Hitem:39338:0:0:0:0:0:0:0:93:0:0:0|h[Golden Pigment]|h|r#1#20#0#Trade Goods#Other#200##Interface\\ICONS\\INV_Inscription_Pigment_Golden.blp",
	[39339] = "Emerald Pigment#|cffffffff|Hitem:39339:0:0:0:0:0:0:0:100:105:0:0:0|h[Emerald Pigment]|h|r#1#30#0#Trade Goods#Other#200##Interface\\ICONS\\INV_Inscription_Pigment_Emerald.blp",
	[39340] = "Violet Pigment#|cffffffff|Hitem:39340:0:0:0:0:0:0:0:93:0:0:0|h[Violet Pigment]|h|r#1#40#0#Trade Goods#Other#200##Interface\\ICONS\\INV_Inscription_Pigment_Violet.blp",
	[39341] = "Silvery Pigment#|cffffffff|Hitem:39341:0:0:0:0:0:0:0:93:0:0:0|h[Silvery Pigment]|h|r#1#50#0#Trade Goods#Other#200##Interface\\ICONS\\INV_Inscription_Pigment_Silvery.blp",
	[39342] = "Nether Pigment#|cffffffff|Hitem:39342:0:0:0:0:0:0:0:100:105:0:0:0|h[Nether Pigment]|h|r#1#60#0#Trade Goods#Other#200##Interface\\ICONS\\INV_Inscription_Pigment_Nether.blp",
	[39343] = "Azure Pigment#|cffffffff|Hitem:39343:0:0:0:0:0:0:0:100:105:0:0:0|h[Azure Pigment]|h|r#1#70#0#Trade Goods#Other#200##Interface\\ICONS\\INV_Inscription_Pigment_Azure.blp",
	[39354] = "Light Parchment#|cffffffff|Hitem:39354:0:0:0:0:0:0:0:96:0:0:0|h[Light Parchment]|h|r#1#1#0#Trade Goods#Other#200##Interface\\ICONS\\INV_Inscription_Papyrus.blp",
	[39469] = "Moonglow Ink#|cffffffff|Hitem:39469:0:0:0:0:0:0:0:85:0|h[Moonglow Ink]|h|r#1#1#0#Trade Goods#Parts#20##Interface\\Icons\\INV_Inscription_InkWhite02",
	[39502] = "Resilient Parchment#|cffffffff|Hitem:39502:0:0:0:0:0:0:0:85:0|h[Resilient Parchment]|h|r#1#80#0#Trade Goods#Other#20##Interface\\Icons\\INV_Inscription_Certificate",
	[39970] = "Fire Leaf#|cffffffff|Hitem:39970:0:0:0:0:0:0:0:62|h[Fire Leaf]|h|r#1#75#0#Consumable#Other#20##Interface\\Icons\\INV_Misc_Herb_11a",
	[40411] = "Enchanted Vial#|cffffffff|Hitem:40411:0:0:0:0:0:0:0:80|h[Enchanted Vial]|h|r#1#75#0#Trade Goods#Other#20##Interface\\Icons\\INV_Alchemy_EnchantedVial",
	[41163] = "Titanium Bar#|cff1eff00|Hitem:41163:0:0:0:0:0:0:0:85:0|h[Titanium Bar]|h|r#2#80#0#Trade Goods#Metal & Stone#20##Interface\\Icons\\INV_Ingot_Platinum",
	[43102] = "Frozen Orb#|cff0070dd|Hitem:43102:0:0:0:0:0:0:0:80|h[Frozen Orb]|h|r#3#80#0#Trade Goods#Other#20##Interface\\Icons\\Spell_Frost_FrozenCore",
	[43103] = "Verdant Pigment#|cff1eff00|Hitem:43103:0:0:0:0:0:0:0:100:267:0:0:0|h[Verdant Pigment]|h|r#2#20#0#Trade Goods#Other#200##Interface\\ICONS\\INV_Inscription_Pigment_Verdant.blp",
	[43104] = "Burnt Pigment#|cff1eff00|Hitem:43104:0:0:0:0:0:0:0:93:0:0:0|h[Burnt Pigment]|h|r#2#30#0#Trade Goods#Other#200##Interface\\ICONS\\INV_Inscription_Pigment_Burnt.blp",
	[43105] = "Indigo Pigment#|cff1eff00|Hitem:43105:0:0:0:0:0:0:0:100:105:0:0:0|h[Indigo Pigment]|h|r#2#40#0#Trade Goods#Other#200##Interface\\ICONS\\INV_Inscription_Pigment_Indigo.blp",
	[43106] = "Ruby Pigment#|cff1eff00|Hitem:43106:0:0:0:0:0:0:0:93:0:0:0|h[Ruby Pigment]|h|r#2#50#0#Trade Goods#Other#200##Interface\\ICONS\\INV_Inscription_Pigment_Ruby.blp",
	[43107] = "Sapphire Pigment#|cff1eff00|Hitem:43107:0:0:0:0:0:0:0:93:0:0:0|h[Sapphire Pigment]|h|r#2#60#0#Trade Goods#Other#200##Interface\\ICONS\\INV_Inscription_Pigment_Sapphire.blp",
	[43108] = "Ebon Pigment#|cff1eff00|Hitem:43108:0:0:0:0:0:0:0:100:105:0:0:0|h[Ebon Pigment]|h|r#2#70#0#Trade Goods#Other#200##Interface\\ICONS\\INV_Inscription_Pigment_Ebon.blp",
	[43109] = "Icy Pigment#|cff1eff00|Hitem:43109:0:0:0:0:0:0:0:100:105:0:0:0|h[Icy Pigment]|h|r#2#80#0#Trade Goods#Other#200##Interface\\ICONS\\INV_Inscription_Pigment_Icy.blp",
	[43126] = "Ink of the Sea#|cffffffff|Hitem:43126:0:0:0:0:0:0:0:90:0:0|h[Ink of the Sea]|h|r#1#70#0#Trade Goods#Parts#20##Interface\\Icons\\INV_Inscription_InkPurple01",
	[43127] = "Snowfall Ink#|cff1eff00|Hitem:43127:0:0:0:0:0:0:0:90:0:0|h[Snowfall Ink]|h|r#2#70#0#Trade Goods#Parts#20##Interface\\Icons\\INV_Inscription_InkBlueWhite01",
	[44128] = "Arctic Fur#|cff0070dd|Hitem:44128:0:0:0:0:0:0:0:85:0|h[Arctic Fur]|h|r#3#75#0#Trade Goods#Leather#20##Interface\\Icons\\INV_Misc_Pelt_14",
	[46849] = "Titanium Powder#|cff1eff00|Hitem:46849:0:0:0:0:0:0:0:100:251:0:0:0|h[Titanium Powder]|h|r#2#80#0#Trade Goods#Enchanting#20##Interface\\ICONS\\INV_MISC_DUST_03.BLP",
	[52177] = "Carnelian#|cff1eff00|Hitem:52177:0:0:0:0:0:0:0:100:251:0:0:0|h[Carnelian]|h|r#2#81#0#Gem#Red#200##Interface\\ICONS\\inv_misc_uncutgemsuperior4.blp",
	[52178] = "Zephyrite#|cff1eff00|Hitem:52178:0:0:0:0:0:0:0:100:251:0:0:0|h[Zephyrite]|h|r#2#81#0#Gem#Blue#200##Interface\\ICONS\\inv_misc_uncutgemsuperior6.blp",
	[52179] = "Alicite#|cff1eff00|Hitem:52179:0:0:0:0:0:0:0:100:251:0:0:0|h[Alicite]|h|r#2#81#0#Gem#Yellow#200##Interface\\ICONS\\INV_MISC_UNCUTGEMSUPERIOR.BLP",
	[52180] = "Nightstone#|cff1eff00|Hitem:52180:0:0:0:0:0:0:0:100:251:0:0:0|h[Nightstone]|h|r#2#81#0#Gem#Purple#200##Interface\\ICONS\\inv_misc_uncutgemsuperior3.blp",
	[52181] = "Hessonite#|cff1eff00|Hitem:52181:0:0:0:0:0:0:0:100:251:0:0:0|h[Hessonite]|h|r#2#81#0#Gem#Orange#200##Interface\\ICONS\\inv_misc_uncutgemsuperior5.blp",
	[52182] = "Jasper#|cff1eff00|Hitem:52182:0:0:0:0:0:0:0:100:251:0:0:0|h[Jasper]|h|r#2#81#0#Gem#Green#200##Interface\\ICONS\\inv_misc_uncutgemsuperior2.blp",
	[52183] = "Pyrite Ore#|cff1eff00|Hitem:52183:0:0:0:0:0:0:0:100:251:0:0:0|h[Pyrite Ore]|h|r#2#85#0#Trade Goods#Metal & Stone#200##Interface\\ICONS\\INV_Ore_Arcanite_01.blp",
	[52185] = "Elementium Ore#|cffffffff|Hitem:52185:0:0:0:0:0:0:0:100:251:0:0:0|h[Elementium Ore]|h|r#1#83#0#Trade Goods#Metal & Stone#200##Interface\\ICONS\\Item_pyriumore.blp",
	[52190] = "Inferno Ruby#|cff0070dd|Hitem:52190:0:0:0:0:0:0:0:100:251:0:0:0|h[Inferno Ruby]|h|r#3#84#0#Gem#Red#200##Interface\\ICONS\\inv_misc_uncutgemnormal3.blp",
	[52191] = "Ocean Sapphire#|cff0070dd|Hitem:52191:0:0:0:0:0:0:0:100:251:0:0:0|h[Ocean Sapphire]|h|r#3#84#0#Gem#Blue#200##Interface\\ICONS\\inv_misc_uncutgemnormal2.blp",
	[52192] = "Dream Emerald#|cff0070dd|Hitem:52192:0:0:0:0:0:0:0:100:251:0:0:0|h[Dream Emerald]|h|r#3#84#0#Gem#Green#200##Interface\\ICONS\\inv_misc_uncutgemnormal1.blp",
	[52193] = "Ember Topaz#|cff0070dd|Hitem:52193:0:0:0:0:0:0:0:100:251:0:0:0|h[Ember Topaz]|h|r#3#84#0#Gem#Orange#200##Interface\\ICONS\\INV_MISC_UNCUTGEMNORMAL.BLP",
	[52194] = "Demonseye#|cff0070dd|Hitem:52194:0:0:0:0:0:0:0:100:251:0:0:0|h[Demonseye]|h|r#3#84#0#Gem#Purple#200##Interface\\ICONS\\inv_misc_uncutgemnormal4.blp",
	[52195] = "Amberjewel#|cff0070dd|Hitem:52195:0:0:0:0:0:0:0:100:251:0:0:0|h[Amberjewel]|h|r#3#84#0#Gem#Yellow#200##Interface\\ICONS\\inv_misc_uncutgemnormal5.blp",
	[52325] = "Volatile Fire#|cffffffff|Hitem:52325:0:0:0:0:0:0:0:85:0|h[Volatile Fire]|h|r#1#83#0#Trade Goods#Elemental#200##Interface\\Icons\\inv_misc_volatilefire",
	[52327] = "Volatile Earth#|cffffffff|Hitem:52327:0:0:0:0:0:0:0:100:251:0:0:0|h[Volatile Earth]|h|r#1#83#0#Trade Goods#Elemental#200##Interface\\ICONS\\inv_misc_volatileearth.blp",
	[52328] = "Volatile Air#|cffffffff|Hitem:52328:0:0:0:0:0:0:0:85:0|h[Volatile Air]|h|r#1#83#0#Trade Goods#Elemental#200##Interface\\Icons\\inv_misc_volatileair",
	[52329] = "Volatile Life#|cffffffff|Hitem:52329:0:0:0:0:0:0:0:90:0:0|h[Volatile Life]|h|r#1#83#0#Trade Goods#Elemental#200##Interface\\Icons\\inv_misc_volatilelife_green",
	[52555] = "Hypnotic Dust#|cffffffff|Hitem:52555:0:0:0:0:0:0:0:100:104:0:0:0|h[Hypnotic Dust]|h|r#1#81#0#Trade Goods#Enchanting#200##Interface\\ICONS\\inv_enchant_dust.blp",
	[52718] = "Lesser Celestial Essence#|cff1eff00|Hitem:52718:0:0:0:0:0:0:0:100:104:0:0:0|h[Lesser Celestial Essence]|h|r#2#81#0#Trade Goods#Enchanting#200##Interface\\ICONS\\inv_misc_lesseressence.blp",
	[52719] = "Greater Celestial Essence#|cff1eff00|Hitem:52719:0:0:0:0:0:0:0:100:267:0:0:0|h[Greater Celestial Essence]|h|r#2#83#0#Trade Goods#Enchanting#200##Interface\\ICONS\\inv_misc_greateressence.blp",
	[52720] = "Small Heavenly Shard#|cff0070dd|Hitem:52720:0:0:0:0:0:0:0:100:105:0:0:0|h[Small Heavenly Shard]|h|r#3#85#0#Trade Goods#Enchanting#200##Interface\\ICONS\\inv_misc_smallshard_superior.blp",
	[52721] = "Heavenly Shard#|cff0070dd|Hitem:52721:0:0:0:0:0:0:0:100:105:0:0:0|h[Heavenly Shard]|h|r#3#85#0#Trade Goods#Enchanting#200##Interface\\ICONS\\inv_misc_largeshard_superior.blp",
	[52722] = "Maelstrom Crystal#|cffa335ee|Hitem:52722:0:0:0:0:0:0:0:100:251:0:0:0|h[Maelstrom Crystal]|h|r#4#85#0#Trade Goods#Enchanting#200##Interface\\ICONS\\inv_misc_crystalepic.blp",
	[52979] = "Blackened Dragonscale#|cffffffff|Hitem:52979:0:0:0:0:0:0:0:85:0|h[Blackened Dragonscale]|h|r#1#85#0#Trade Goods#Leather#20##Interface\\Icons\\inv_misc_rubysanctum2",
	[53038] = "Obsidium Ore#|cffffffff|Hitem:53038:0:0:0:0:0:0:0:100:251:0:0:0|h[Obsidium Ore]|h|r#1#81#0#Trade Goods#Metal & Stone#200##Interface\\ICONS\\Item_elementiumore.blp",
	[58094] = "Elixir of Impossible Accuracy#|cffffffff|Hitem:58094:0:0:0:0:0:0:0:85:0|h[Elixir of Impossible Accuracy]|h|r#1#85#80#Consumable#Elixir#20##Interface\\Icons\\inv_potionf_6",
	[61978] = "Blackfallow Ink#|cffffffff|Hitem:61978:0:0:0:0:0:0:0:96:0:0:0|h[Blackfallow Ink]|h|r#1#81#0#Trade Goods#Parts#200##Interface\\ICONS\\INV_Inscription_InkBlack03.blp",
	[61979] = "Ashen Pigment#|cffffffff|Hitem:61979:0:0:0:0:0:0:0:85:0:0:0|h[Ashen Pigment]|h|r#1#81#0#Trade Goods#Other#200##Interface\\ICONS\\INV_MISC_ASHENPIGMENT.BLP",
	[61980] = "Burning Embers#|cff1eff00|Hitem:61980:0:0:0:0:0:0:0:85:0:0:0|h[Burning Embers]|h|r#2#81#0#Trade Goods#Other#200##Interface\\ICONS\\INV_MISC_EMBERS.BLP",
	[61981] = "Inferno Ink#|cff1eff00|Hitem:61981:0:0:0:0:0:0:0:80:0|h[Inferno Ink]|h|r#2#85#0#Trade Goods#Parts#20##Interface\\Icons\\inv_inscription_inkred03",
	[72092] = "Ghost Iron Ore#|cffffffff|Hitem:72092:0:0:0:0:0:0:0:100:251:0:0:0|h[Ghost Iron Ore]|h|r#1#86#0#Trade Goods#Metal & Stone#200##Interface\\ICONS\\INV_ORE_GHOSTIRON.BLP",
	[72093] = "Kyparite#|cffffffff|Hitem:72093:0:0:0:0:0:0:0:100:251:0:0:0|h[Kyparite]|h|r#1#88#0#Trade Goods#Metal & Stone#200##Interface\\ICONS\\INV_Ore_Manticyte.blp",
	[72094] = "Black Trillium Ore#|cff1eff00|Hitem:72094:0:0:0:0:0:0:0:100:251:0:0:0|h[Black Trillium Ore]|h|r#2#90#0#Trade Goods#Metal & Stone#200##Interface\\ICONS\\INV_Ore_TrilliumBlack.blp",
	[72103] = "White Trillium Ore#|cff1eff00|Hitem:72103:0:0:0:0:0:0:0:100:251:0:0:0|h[White Trillium Ore]|h|r#2#90#0#Trade Goods#Metal & Stone#200##Interface\\ICONS\\INV_Ore_TrilliumWhite.blp",
	[74247] = "Ethereal Shard#|cff0070dd|Hitem:74247:0:0:0:0:0:0:0:97:64:0:0:0|h[Ethereal Shard]|h|r#3#90#0#Trade Goods#Enchanting#200##Interface\\ICONS\\Trade_Enchanting_LargeEtherealShard.blp",
	[74248] = "Sha Crystal#|cffa335ee|Hitem:74248:0:0:0:0:0:0:0:100:105:0:0:0|h[Sha Crystal]|h|r#4#90#0#Trade Goods#Enchanting#200##Interface\\ICONS\\inv_misc_crystalepic2.blp",
	[74249] = "Spirit Dust#|cffffffff|Hitem:74249:0:0:0:0:0:0:0:100:104:0:0:0|h[Spirit Dust]|h|r#1#86#0#Trade Goods#Enchanting#200##Interface\\ICONS\\INV_Misc_Powder_Copper.blp",
	[74250] = "Mysterious Essence#|cff1eff00|Hitem:74250:0:0:0:0:0:0:0:100:104:0:0:0|h[Mysterious Essence]|h|r#2#87#0#Trade Goods#Enchanting#200##Interface\\ICONS\\Trade_Enchanting_GreaterMysteriousEssence.blp",
	[74252] = "Small Ethereal Shard#|cff0070dd|Hitem:74252:0:0:0:0:0:0:0:100:261:0:0:0|h[Small Ethereal Shard]|h|r#3#87#0#Trade Goods#Enchanting#200##Interface\\ICONS\\Trade_Enchanting_SmallEtherealShard.blp",
	[76130] = "Tiger Opal#|cff1eff00|Hitem:76130:0:0:0:0:0:0:0:100:251:0:0:0|h[Tiger Opal]|h|r#2#87#0#Gem#Orange#200##Interface\\ICONS\\INV_Misc_Gem_OpalRough_03.blp",
	[76131] = "Primordial Ruby#|cff0070dd|Hitem:76131:0:0:0:0:0:0:0:100:251:0:0:0|h[Primordial Ruby]|h|r#3#90#0#Gem#Red#200##Interface\\ICONS\\INV_Misc_Gem_X4_Rare_Uncut_Red.blp",
	[76133] = "Lapis Lazuli#|cff1eff00|Hitem:76133:0:0:0:0:0:0:0:100:251:0:0:0|h[Lapis Lazuli]|h|r#2#87#0#Gem#Blue#200##Interface\\ICONS\\INV_Misc_Gem_SaphireRough_03.blp",
	[76134] = "Sunstone#|cff1eff00|Hitem:76134:0:0:0:0:0:0:0:100:251:0:0:0|h[Sunstone]|h|r#2#87#0#Gem#Yellow#200##Interface\\ICONS\\INV_Misc_Gem_TopazRough_03.blp",
	[76135] = "Roguestone#|cff1eff00|Hitem:76135:0:0:0:0:0:0:0:100:251:0:0:0|h[Roguestone]|h|r#2#87#0#Gem#Purple#200##Interface\\ICONS\\INV_Misc_Gem_AmethystRough_03.blp",
	[76136] = "Pandarian Garnet#|cff1eff00|Hitem:76136:0:0:0:0:0:0:0:100:251:0:0:0|h[Pandarian Garnet]|h|r#2#87#0#Gem#Red#200##Interface\\ICONS\\INV_Misc_Gem_RubyRough_03.blp",
	[76137] = "Alexandrite#|cff1eff00|Hitem:76137:0:0:0:0:0:0:0:100:251:0:0:0|h[Alexandrite]|h|r#2#87#0#Gem#Green#200##Interface\\ICONS\\INV_Misc_Gem_EmeraldRough_03.blp",
	[76138] = "River's Heart#|cff0070dd|Hitem:76138:0:0:0:0:0:0:0:100:251:0:0:0|h[River's Heart]|h|r#3#90#0#Gem#Blue#200##Interface\\ICONS\\INV_Misc_Gem_X4_Rare_Uncut_Blue.blp",
	[76139] = "Wild Jade#|cff0070dd|Hitem:76139:0:0:0:0:0:0:0:100:251:0:0:0|h[Wild Jade]|h|r#3#90#0#Gem#Green#200##Interface\\ICONS\\INV_Misc_Gem_X4_Rare_Uncut_Green.blp",
	[76140] = "Vermilion Onyx#|cff0070dd|Hitem:76140:0:0:0:0:0:0:0:100:251:0:0:0|h[Vermilion Onyx]|h|r#3#90#0#Gem#Orange#200##Interface\\ICONS\\INV_Misc_Gem_X4_Rare_Uncut_Orange.blp",
	[76141] = "Imperial Amethyst#|cff0070dd|Hitem:76141:0:0:0:0:0:0:0:100:251:0:0:0|h[Imperial Amethyst]|h|r#3#90#0#Gem#Purple#200##Interface\\ICONS\\INV_Misc_Gem_X4_Rare_Uncut_Purple.blp",
	[76142] = "Sun's Radiance#|cff0070dd|Hitem:76142:0:0:0:0:0:0:0:100:251:0:0:0|h[Sun's Radiance]|h|r#3#90#0#Gem#Yellow#200##Interface\\ICONS\\INV_Misc_Gem_X4_Rare_Uncut_Yellow.blp",
	[79251] = "Shadow Pigment#|cffffffff|Hitem:79251:0:0:0:0:0:0:0:100:105:0:0:0|h[Shadow Pigment]|h|r#1#86#0#Trade Goods#Other#200##Interface\\ICONS\\INV_Inscription_Pigment_Shadow.blp",
	[79253] = "Misty Pigment#|cff1eff00|Hitem:79253:0:0:0:0:0:0:0:100:105:0:0:0|h[Misty Pigment]|h|r#2#86#0#Trade Goods#Other#200##Interface\\ICONS\\INV_Inscription_Pigment_Misty.blp",
	[90146] = "Tinker's Kit#|cffffffff|Hitem:90146:0:0:0:0:0:0:0:90:0:0|h[Tinker's Kit]|h|r#1#60#0#Trade Goods#Parts#20##Interface\\Icons\\INV_MISC_ENGGIZMOS_17",
	[90407] = "Sparkling Shard#|cffffffff|Hitem:90407:0:0:0:0:0:0:0:100:251:0:0:0|h[Sparkling Shard]|h|r#1#87#0#Trade Goods#Other#200##Interface\\ICONS\\INV_Misc_Gem_Diamond_03.blp",
	[105718] = "Sha Crystal Fragment#|cffa335ee|Hitem:105718:0:0:0:0:0:0:0:100:105:0:0:0|h[Sha Crystal Fragment]|h|r#4#85#0#Trade Goods#Enchanting#20##Interface\\ICONS\\INV_Misc_Apexis_Crystal.blp",
	[109693] = "Draenic Dust#|cffffffff|Hitem:109693:0:0:0:0:0:0:0:100:104:0:0:0|h[Draenic Dust]|h|r#1#100#0#Trade Goods#Enchanting#200##interface\\ICONS\\INV_Enchanting_WOD_dust3.blp",
	[111245] = "Luminous Shard#|cff0070dd|Hitem:111245:0:0:0:0:0:0:0:100:105:0:0:0|h[Luminous Shard]|h|r#3#100#0#Trade Goods#Enchanting#200##interface\\ICONS\\INV_Enchanting_WOD_crystalshard3.blp",
	[113261] = "Sorcerous Fire#|cff1eff00|Hitem:113261:0:0:0:0:0:0:0:100:267:0:0:0|h[Sorcerous Fire]|h|r#2#100#0#Trade Goods#Elemental#200##Interface\\ICONS\\INV_TRADESKILLITEM_SORCERERSFIRE_TONG.blp",
	[113262] = "Sorcerous Water#|cff1eff00|Hitem:113262:0:0:0:0:0:0:0:100:64:0:0:0|h[Sorcerous Water]|h|r#2#100#0#Trade Goods#Elemental#200##Interface\\ICONS\\INV_TRADESKILLITEM_SORCERERSWATER_TONG.blp",
	[113263] = "Sorcerous Earth#|cff1eff00|Hitem:113263:0:0:0:0:0:0:0:100:105:0:0:0|h[Sorcerous Earth]|h|r#2#100#0#Trade Goods#Elemental#200##Interface\\ICONS\\INV_TRADESKILLITEM_SORCERERSEARTH_TONG.blp",
	[113264] = "Sorcerous Air#|cff1eff00|Hitem:113264:0:0:0:0:0:0:0:100:267:0:0:0|h[Sorcerous Air]|h|r#2#100#0#Trade Goods#Elemental#200##Interface\\ICONS\\INV_TRADESKILLITEM_SORCERERSWIND_TONG.blp",
	[113588] = "Temporal Crystal#|cffa335ee|Hitem:113588:0:0:0:0:0:0:0:100:105:0:0:0|h[Temporal Crystal]|h|r#4#100#0#Trade Goods#Enchanting#200##interface\\ICONS\\INV_Enchanting_WOD_crystal.blp",
	[114931] = "Cerulean Pigment#|cffffffff|Hitem:114931:0:0:0:0:0:0:0:100:105:0:0:0|h[Cerulean Pigment]|h|r#1#100#0#Trade Goods#Other#200##Interface\\ICONS\\INV_Inscription_Pigment_Cerulean.blp",
	[115502] = "Small Luminous Shard#|cff0070dd|Hitem:115502:0:0:0:0:0:0:0:15:0:0:0|h[Small Luminous Shard]|h|r#3#95#0#Trade Goods#Enchanting#200##Interface\\ICONS\\INV_TRADESKILLITEM_LESSERSORCERERSEARTH.blp",
	[115504] = "Fractured Temporal Crystal#|cffa335ee|Hitem:115504:0:0:0:0:0:0:0:15:0:0:0|h[Fractured Temporal Crystal]|h|r#4#95#0#Trade Goods#Enchanting#200##interface\\ICONS\\INV_Enchanting_WOD_crystalshard4.blp",
}


