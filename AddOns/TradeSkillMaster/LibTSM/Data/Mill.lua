-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Mill = TSM.Init("Data.Mill") ---@class Data.Mill
local Environment = TSM.Include("Environment")
local private = {}
local DATA = nil



-- ============================================================================
-- Mill Data
-- ============================================================================

if Environment.IsVanillaClassic() then
	DATA = {}
elseif Environment.IsWrathClassic() then
	DATA = {
		-- ======================================= Common Pigments =======================================
		["i:39151"] = { -- Alabaster Pigment (Ivory / Moonglow Ink)
			["i:765"] = {requiredSkill = 1, matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.5780}, -- Silverleaf
			["i:2447"] = {requiredSkill = 1, matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.5780}, -- Peacebloom
			["i:2449"] = {requiredSkill = 1, matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.6000}, -- Earthroot
		},
		["i:39334"] = { -- Dusky Pigment (Midnight Ink)
			["i:785"] = {requiredSkill = 25, matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.5660}, -- Mageroyal
			["i:2450"] = {requiredSkill = 25, matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.5765}, -- Briarthorn
			["i:2452"] = {requiredSkill = 25, matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.5855}, -- Swiftthistle
			["i:3820"] = {requiredSkill = 25, matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.6000}, -- Stranglekelp
			["i:2453"] = {requiredSkill = 25, matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.6000}, -- Bruiseweed
		},
		["i:39338"] = { -- Golden Pigment (Lion's Ink)
			["i:3355"] = {requiredSkill = 75, matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.5765}, -- Wild Steelbloom
			["i:3369"] = {requiredSkill = 75, matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.5765}, -- Grave Moss
			["i:3356"] = {requiredSkill = 75, matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.6000}, -- Kingsblood
			["i:3357"] = {requiredSkill = 75, matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.6000}, -- Liferoot
		},
		["i:39339"] = { -- Emerald Pigment (Jadefire Ink)
			["i:3818"] = {requiredSkill = 125, matRate = 1.0000, minAmount = 2, maxAmount = 3, amountOfMats = 0.5000}, -- Fadeleaf
			["i:3821"] = {requiredSkill = 125, matRate = 1.0000, minAmount = 2, maxAmount = 3, amountOfMats = 0.5000}, -- Goldthorn
			["i:3358"] = {requiredSkill = 125, matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.5720}, -- Khadgar's Whisker
			["i:3819"] = {requiredSkill = 125, matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.5720}, -- Wintersbite (Dragon's Teeth)
		},
		["i:39340"] = { -- Violet Pigment (Celestial Ink)
			["i:8836"] = {requiredSkill = 175, matRate = 1.0000, minAmount = 2, maxAmount = 3, amountOfMats = 0.5000}, -- Arthas' Tears
			["i:4625"] = {requiredSkill = 175, matRate = 1.0000, minAmount = 2, maxAmount = 3, amountOfMats = 0.5000}, -- Firebloom
			["i:8831"] = {requiredSkill = 175, matRate = 1.0000, minAmount = 2, maxAmount = 3, amountOfMats = 0.5000}, -- Purple Lotus
			["i:8838"] = {requiredSkill = 175, matRate = 1.0000, minAmount = 2, maxAmount = 3, amountOfMats = 0.5000}, -- Sungrass
			["i:8845"] = {requiredSkill = 175, matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.6000}, -- Ghost Mushroom
			["i:8839"] = {requiredSkill = 175, matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.6000}, -- Blindweed
			["i:8846"] = {requiredSkill = 175, matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.6000}, -- Gromsblood
		},
		["i:39341"] = { -- Silvery Pigment (Shimmering Ink)
			["i:13463"] = {requiredSkill = 225, matRate = 1.0000, minAmount = 2, maxAmount = 3, amountOfMats = 0.5000}, -- Dreamfoil
			["i:13464"] = {requiredSkill = 225, matRate = 1.0000, minAmount = 2, maxAmount = 3, amountOfMats = 0.5000}, -- Golden Sansam
			["i:13467"] = {requiredSkill = 225, matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.6000}, -- Icecap
			["i:13465"] = {requiredSkill = 225, matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.6000}, -- Mountain Silversage
			["i:13466"] = {requiredSkill = 225, matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.6000}, -- Plaguebloom (Sorrowmoss)
		},
		["i:39342"] = { -- Nether Pigment (Ethereal Ink)
			["i:22789"] = {requiredSkill = 275, matRate = 1.0000, minAmount = 2, maxAmount = 3, amountOfMats = 0.5000}, -- Terocone
			["i:22787"] = {requiredSkill = 275, matRate = 1.0000, minAmount = 2, maxAmount = 3, amountOfMats = 0.5000}, -- Ragveil
			["i:22785"] = {requiredSkill = 275, matRate = 1.0000, minAmount = 2, maxAmount = 3, amountOfMats = 0.5000}, -- Felweed
			["i:22786"] = {requiredSkill = 275, matRate = 1.0000, minAmount = 2, maxAmount = 3, amountOfMats = 0.5000}, -- Dreaming Glory
			["i:22792"] = {requiredSkill = 275, matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.6000}, -- Nightmare Vine
			["i:22790"] = {requiredSkill = 275, matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.6000}, -- Ancient Lichen
			["i:22791"] = {requiredSkill = 275, matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.6000}, -- Netherbloom
			["i:22793"] = {requiredSkill = 275, matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.6000}, -- Mana Thistle
		},
		["i:39343"] = { -- Azure Pigment (Ink of the Sea)
			["i:36907"] = {requiredSkill = 325, matRate = 1.0000, minAmount = 2, maxAmount = 3, amountOfMats = 0.5000}, -- Talandra's Rose
			["i:39970"] = {requiredSkill = 325, matRate = 1.0000, minAmount = 2, maxAmount = 3, amountOfMats = 0.5000}, -- Fire Leaf
			["i:36904"] = {requiredSkill = 325, matRate = 1.0000, minAmount = 2, maxAmount = 3, amountOfMats = 0.5000}, -- Tiger Lily
			["i:37921"] = {requiredSkill = 325, matRate = 1.0000, minAmount = 2, maxAmount = 3, amountOfMats = 0.5000}, -- Deadnettle
			["i:36901"] = {requiredSkill = 325, matRate = 1.0000, minAmount = 2, maxAmount = 3, amountOfMats = 0.5000}, -- Goldclover
			["i:36906"] = {requiredSkill = 325, matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.6000}, -- Icethorn
			["i:36905"] = {requiredSkill = 325, matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.6000}, -- Lichbloom
			["i:36903"] = {requiredSkill = 325, matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.6000}, -- Adder's Tongue
		},
		-- ======================================= Uncommon Pigments =======================================
		["i:43103"] = { -- Verdant Pigment (Hunter's Ink)
			["i:785"] = {requiredSkill = 25, matRate = 0.2500, minAmount = 1, maxAmount = 3, amountOfMats = 0.0545}, -- Mageroyal
			["i:2450"] = {requiredSkill = 25, matRate = 0.2500, minAmount = 1, maxAmount = 3, amountOfMats = 0.0545}, -- Briarthorn
			["i:2452"] = {requiredSkill = 25, matRate = 0.2500, minAmount = 1, maxAmount = 3, amountOfMats = 0.0545}, -- Swiftthistle
			["i:3820"] = {requiredSkill = 25, matRate = 0.5000, minAmount = 1, maxAmount = 3, amountOfMats = 0.1075}, -- Stranglekelp
			["i:2453"] = {requiredSkill = 25, matRate = 0.5000, minAmount = 1, maxAmount = 3, amountOfMats = 0.1075}, -- Bruiseweed
		},
		["i:43104"] = { -- Burnt Pigment (Dawnstar Ink)
			["i:3355"] = {requiredSkill = 75, matRate = 0.2500, minAmount = 1, maxAmount = 3, amountOfMats = 0.0545}, -- Wild Steelbloom
			["i:3369"] = {requiredSkill = 75, matRate = 0.2500, minAmount = 1, maxAmount = 3, amountOfMats = 0.0545}, -- Grave Moss
			["i:3356"] = {requiredSkill = 75, matRate = 0.5000, minAmount = 1, maxAmount = 3, amountOfMats = 0.1075}, -- Kingsblood
			["i:3357"] = {requiredSkill = 75, matRate = 0.5000, minAmount = 1, maxAmount = 3, amountOfMats = 0.1075}, -- Liferoot
		},
		["i:43105"] = { -- Indigo Pigment (Royal Ink)
			["i:3818"] = {requiredSkill = 125, matRate = 0.2500, minAmount = 1, maxAmount = 3, amountOfMats = 0.0545}, -- Fadeleaf
			["i:3821"] = {requiredSkill = 125, matRate = 0.2500, minAmount = 1, maxAmount = 3, amountOfMats = 0.0545}, -- Goldthorn
			["i:3358"] = {requiredSkill = 125, matRate = 0.5000, minAmount = 1, maxAmount = 3, amountOfMats = 0.1075}, -- Khadgar's Whisker
			["i:3819"] = {requiredSkill = 125, matRate = 0.5000, minAmount = 1, maxAmount = 3, amountOfMats = 0.1075}, -- Wintersbite (Dragon's Teeth)
		},
		["i:43106"] = { -- Ruby Pigment (Fiery Ink)
			["i:8836"] = {requiredSkill = 175, matRate = 0.2500, minAmount = 1, maxAmount = 3, amountOfMats = 0.0545}, -- Arthas' Tears
			["i:4625"] = {requiredSkill = 175, matRate = 0.2500, minAmount = 1, maxAmount = 3, amountOfMats = 0.0545}, -- Firebloom
			["i:8831"] = {requiredSkill = 175, matRate = 0.2500, minAmount = 1, maxAmount = 3, amountOfMats = 0.0545}, -- Purple Lotus
			["i:8838"] = {requiredSkill = 175, matRate = 0.2500, minAmount = 1, maxAmount = 3, amountOfMats = 0.0545}, -- Sungrass
			["i:8839"] = {requiredSkill = 175, matRate = 0.5000, minAmount = 1, maxAmount = 3, amountOfMats = 0.1075}, -- Blindweed
			["i:8845"] = {requiredSkill = 175, matRate = 0.5000, minAmount = 1, maxAmount = 3, amountOfMats = 0.1075}, -- Ghost Mushroom
			["i:8846"] = {requiredSkill = 175, matRate = 0.5000, minAmount = 1, maxAmount = 3, amountOfMats = 0.1075}, -- Gromsblood
		},
		["i:43107"] = { -- Sapphire Pigment (Ink of the Sky)
			["i:13463"] = {requiredSkill = 225, matRate = 0.2500, minAmount = 1, maxAmount = 3, amountOfMats = 0.0545}, -- Dreamfoil
			["i:13464"] = {requiredSkill = 225, matRate = 0.2500, minAmount = 1, maxAmount = 3, amountOfMats = 0.0545}, -- Golden Sansam
			["i:13467"] = {requiredSkill = 225, matRate = 0.5000, minAmount = 1, maxAmount = 3, amountOfMats = 0.1075}, -- Icecap
			["i:13465"] = {requiredSkill = 225, matRate = 0.5000, minAmount = 1, maxAmount = 3, amountOfMats = 0.1075}, -- Mountain Silversage
			["i:13466"] = {requiredSkill = 225, matRate = 0.5000, minAmount = 1, maxAmount = 3, amountOfMats = 0.1075}, -- Plaguebloom (Sorrowmoss)
		},
		["i:43108"] = { -- Ebon Pigment (Darkflame Ink)
			["i:22789"] = {requiredSkill = 275, matRate = 0.2500, minAmount = 1, maxAmount = 3, amountOfMats = 0.0545}, -- Terocone
			["i:22787"] = {requiredSkill = 275, matRate = 0.2500, minAmount = 1, maxAmount = 3, amountOfMats = 0.0545}, -- Ragveil
			["i:22785"] = {requiredSkill = 275, matRate = 0.2500, minAmount = 1, maxAmount = 3, amountOfMats = 0.0545}, -- Felweed
			["i:22786"] = {requiredSkill = 275, matRate = 0.2500, minAmount = 1, maxAmount = 3, amountOfMats = 0.0545}, -- Dreaming Glory
			["i:22790"] = {requiredSkill = 275, matRate = 0.5000, minAmount = 1, maxAmount = 3, amountOfMats = 0.1075}, -- Ancient Lichen
			["i:22791"] = {requiredSkill = 275, matRate = 0.5000, minAmount = 1, maxAmount = 3, amountOfMats = 0.1075}, -- Netherbloom
			["i:22792"] = {requiredSkill = 275, matRate = 0.5000, minAmount = 1, maxAmount = 3, amountOfMats = 0.1075}, -- Nightmare Vine
			["i:22793"] = {requiredSkill = 275, matRate = 0.5000, minAmount = 1, maxAmount = 3, amountOfMats = 0.1075}, -- Mana Thistle
		},
		["i:43109"] = { -- Icy Pigment (Snowfall Ink)
			["i:36907"] = {requiredSkill = 325, matRate = 0.2500, minAmount = 1, maxAmount = 3, amountOfMats = 0.0545}, -- Talandra's Rose
			["i:39970"] = {requiredSkill = 325, matRate = 0.2500, minAmount = 1, maxAmount = 3, amountOfMats = 0.0545}, -- Fire Leaf
			["i:36904"] = {requiredSkill = 325, matRate = 0.2500, minAmount = 1, maxAmount = 3, amountOfMats = 0.0545}, -- Tiger Lily
			["i:37921"] = {requiredSkill = 325, matRate = 0.2500, minAmount = 1, maxAmount = 3, amountOfMats = 0.0545}, -- Deadnettle
			["i:36901"] = {requiredSkill = 325, matRate = 0.2500, minAmount = 1, maxAmount = 3, amountOfMats = 0.0545}, -- Goldclover
			["i:36903"] = {requiredSkill = 325, matRate = 0.5000, minAmount = 1, maxAmount = 3, amountOfMats = 0.1075}, -- Adder's Tongue
			["i:36905"] = {requiredSkill = 325, matRate = 0.5000, minAmount = 1, maxAmount = 3, amountOfMats = 0.1075}, -- Lichbloom
			["i:36906"] = {requiredSkill = 325, matRate = 0.5000, minAmount = 1, maxAmount = 3, amountOfMats = 0.1075}, -- Icethorn
		},
	}
elseif Environment.IsRetail() then
	DATA = {
		-- ======================================= Common Pigments =======================================
		["i:39151"] = { -- Alabaster Pigment (Ivory / Moonglow Ink)
			["i:765"] = {matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.5780}, -- Silverleaf
			["i:2447"] = {matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.5780}, -- Peacebloom
			["i:2449"] = {matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.6000}, -- Earthroot
		},
		["i:39334"] = { -- Dusky Pigment (Midnight Ink)
			["i:785"] = {matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.5660}, -- Mageroyal
			["i:2450"] = {matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.5765}, -- Briarthorn
			["i:2452"] = {matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.5855}, -- Swiftthistle
			["i:3820"] = {matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.6000}, -- Stranglekelp
			["i:2453"] = {matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.6000}, -- Bruiseweed
		},
		["i:39338"] = { -- Golden Pigment (Lion's Ink)
			["i:3355"] = {matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.5765}, -- Wild Steelbloom
			["i:3369"] = {matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.5765}, -- Grave Moss
			["i:3356"] = {matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.6000}, -- Kingsblood
			["i:3357"] = {matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.6000}, -- Liferoot
		},
		["i:39339"] = { -- Emerald Pigment (Jadefire Ink)
			["i:3818"] = {matRate = 1.0000, minAmount = 2, maxAmount = 3, amountOfMats = 0.5000}, -- Fadeleaf
			["i:3821"] = {matRate = 1.0000, minAmount = 2, maxAmount = 3, amountOfMats = 0.5000}, -- Goldthorn
			["i:3358"] = {matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.5720}, -- Khadgar's Whisker
			["i:3819"] = {matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.5720}, -- Dragon's Teeth
		},
		["i:39340"] = { -- Violet Pigment (Celestial Ink)
			["i:8836"] = {matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.5660}, -- Arthas' Tears
			["i:4625"] = {matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.5660}, -- Firebloom
			["i:8831"] = {matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.5750}, -- Purple Lotus
			["i:8838"] = {matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.5750}, -- Sungrass
			["i:8845"] = {matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.6000}, -- Ghost Mushroom
			["i:8839"] = {matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.6000}, -- Blindweed
			["i:8846"] = {matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.6000}, -- Gromsblood
		},
		["i:39341"] = { -- Silvery Pigment (Shimmering Ink)
			["i:13463"] = {matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.5540}, -- Dreamfoil
			["i:13464"] = {matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.5780}, -- Golden Sansam
			["i:13467"] = {matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.6000}, -- Icecap
			["i:13465"] = {matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.6000}, -- Mountain Silversage
			["i:13466"] = {matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.6000}, -- Sorrowmoss
		},
		["i:39342"] = { -- Nether Pigment (Ethereal Ink)
			["i:22789"] = {matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.5600}, -- Terocone
			["i:22787"] = {matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.5600}, -- Ragveil
			["i:22785"] = {matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.5600}, -- Felweed
			["i:22786"] = {matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.5600}, -- Dreaming Glory
			["i:22792"] = {matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.6000}, -- Nightmare Vine
			["i:22790"] = {matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.6000}, -- Ancient Lichen
			["i:22791"] = {matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.6000}, -- Netherbloom
			["i:22793"] = {matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.6000}, -- Mana Thistle
		},
		["i:39343"] = { -- Azure Pigment (Ink of the Sea)
			["i:36907"] = {matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.5360}, -- Talandra's Rose
			["i:39970"] = {matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.5360}, -- Fire Leaf
			["i:36904"] = {matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.5360}, -- Tiger Lily
			["i:37921"] = {matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.5360}, -- Deadnettle
			["i:36901"] = {matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.5360}, -- Goldclover
			["i:36906"] = {matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.6000}, -- Icethorn
			["i:36905"] = {matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.6000}, -- Lichbloom
			["i:36903"] = {matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.6000}, -- Adder's Tongue
		},
		["i:61979"] = { -- Ashen Pigment (Blackfallow Ink)
			["i:52985"] = {matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.5600}, -- Azshara's Veil
			["i:52983"] = {matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.5600}, -- Cinderbloom
			["i:52986"] = {matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.5855}, -- Heartblossom
			["i:52984"] = {matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.5855}, -- Stormvine
			["i:52988"] = {matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.6000}, -- Whiptail
			["i:52987"] = {matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.6000}, -- Twilight Jasmine
		},
		["i:79251"] = { -- Shadow Pigment (Ink of Dreams)
			["i:72234"] = {matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.5660}, -- Green Tea Leaf
			["i:72237"] = {matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.5720}, -- Rain Poppy
			["i:72235"] = {matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.5720}, -- Silkweed
			["i:89639"] = {matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.5780}, -- Desecrated Herb
			["i:79010"] = {matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.5780}, -- Snow Lily
			["i:79011"] = {matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.6000}, -- Fool's Cap
		},
		["i:114931"] = { -- Cerulean Pigment (Warbinder's Ink)
			["i:109124"] = {matRate = 1.0000, minAmount = 2, maxAmount = 3, amountOfMats = 0.4200}, -- Frostweed
			["i:109125"] = {matRate = 1.0000, minAmount = 2, maxAmount = 3, amountOfMats = 0.4200}, -- Fireweed
			["i:109126"] = {matRate = 1.0000, minAmount = 2, maxAmount = 3, amountOfMats = 0.4200}, -- Gorgrond Flytrap
			["i:109127"] = {matRate = 1.0000, minAmount = 2, maxAmount = 3, amountOfMats = 0.4200}, -- Starflower
			["i:109128"] = {matRate = 1.0000, minAmount = 2, maxAmount = 3, amountOfMats = 0.4200}, -- Nagrand Arrowbloom
			["i:109129"] = {matRate = 1.0000, minAmount = 2, maxAmount = 3, amountOfMats = 0.4200}, -- Talador Orchid
		},
		["i:129032"] = { -- Roseate Pigment (No Legion Ink)
			["i:128304"] = {matRate = 0.9900, minAmount = 1, maxAmount = 1, amountOfMats = 0.1980}, -- Yseralline Seed
			["i:124101"] = {matRate = 1.0000, minAmount = 2, maxAmount = 3, amountOfMats = 0.4200}, -- Aethril
			["i:151565"] = {matRate = 1.0000, minAmount = 2, maxAmount = 3, amountOfMats = 0.4200}, -- Astral Glory
			["i:124102"] = {matRate = 1.0000, minAmount = 2, maxAmount = 3, amountOfMats = 0.4200}, -- Dreamleaf
			["i:124103"] = {matRate = 1.0000, minAmount = 2, maxAmount = 3, amountOfMats = 0.4200}, -- Foxflower
			["i:124106"] = {matRate = 1.0000, minAmount = 2, maxAmount = 3, amountOfMats = 0.4200}, -- Felwort
			["i:124104"] = {matRate = 1.0000, minAmount = 2, maxAmount = 5, amountOfMats = 0.4660}, -- Fjarnskaggl
			["i:124105"] = {matRate = 1.0000, minAmount = 5, maxAmount = 8, amountOfMats = 1.2120}, -- Starlight Rose
		},
		["i:153635"] = { -- Ultramarine Pigment (Ultramarine Ink)
			["i:152507"] = {matRate = 1.0000, minAmount = 2, maxAmount = 6, amountOfMats = 0.7500}, -- Akunda's Bite
			["i:152505"] = {matRate = 1.0000, minAmount = 2, maxAmount = 6, amountOfMats = 0.7500}, -- Riverbud
			["i:152511"] = {matRate = 1.0000, minAmount = 2, maxAmount = 6, amountOfMats = 0.7500}, -- Sea Stalk
			["i:152509"] = {matRate = 1.0000, minAmount = 2, maxAmount = 6, amountOfMats = 0.7500}, -- Siren's Pollen
			["i:152506"] = {matRate = 1.0000, minAmount = 2, maxAmount = 6, amountOfMats = 0.7500}, -- Star Moss
			["i:152508"] = {matRate = 1.0000, minAmount = 2, maxAmount = 6, amountOfMats = 0.7500}, -- Winter's Kiss
			["i:152510"] = {matRate = 1.0000, minAmount = 2, maxAmount = 6, amountOfMats = 0.7500}, -- Anchor Weed
		},
		["i:153636"] = { -- Crimson Pigment (Crimson Ink)
			["i:152507"] = {matRate = 0.6600, minAmount = 1, maxAmount = 4, amountOfMats = 0.2720}, -- Akunda's Bite
			["i:152505"] = {matRate = 0.6600, minAmount = 1, maxAmount = 4, amountOfMats = 0.2720}, -- Riverbud
			["i:152511"] = {matRate = 0.6600, minAmount = 1, maxAmount = 4, amountOfMats = 0.2720}, -- Sea Stalk
			["i:152509"] = {matRate = 0.6600, minAmount = 1, maxAmount = 4, amountOfMats = 0.2720}, -- Siren's Pollen
			["i:152506"] = {matRate = 0.6600, minAmount = 1, maxAmount = 4, amountOfMats = 0.2720}, -- Star Moss
			["i:152508"] = {matRate = 0.6600, minAmount = 1, maxAmount = 4, amountOfMats = 0.2720}, -- Winter's Kiss
			["i:152510"] = {matRate = 0.6600, minAmount = 1, maxAmount = 4, amountOfMats = 0.2720}, -- Anchor Weed
		},
		["i:168662"] = { -- Maroon Pigment (Maroon Ink)
			["i:168487"] = {matRate = 1.0000, minAmount = 2, maxAmount = 4, amountOfMats = 0.6000}, -- Zin'anthid
		},
		["i:173056"] = { -- Umbral Pigment (Umbral ink)
			["i:168586"] = {matRate = 0.3500, minAmount = 1, maxAmount = 2, amountOfMats = 0.1050}, -- Rising Glory
			["i:170554"] = {matRate = 0.3500, minAmount = 1, maxAmount = 2, amountOfMats = 0.1050}, -- Vigil's Torch
			["i:169701"] = {matRate = 0.5000, minAmount = 1, maxAmount = 2, amountOfMats = 0.1500}, -- Death Blossom
			["i:168589"] = {matRate = 0.6500, minAmount = 1, maxAmount = 2, amountOfMats = 0.1950}, -- Marrowroot
			["i:168583"] = {matRate = 0.6500, minAmount = 1, maxAmount = 2, amountOfMats = 0.1950}, -- Widowbloom
			["i:171315"] = {matRate = 0.5000, minAmount = 1, maxAmount = 3, amountOfMats = 0.2500}, -- Nightshade
			["i:187699"] = {matRate = 0.5000, minAmount = 2, maxAmount = 3, amountOfMats = 0.2500}, -- First Flower
		},
		["i:173057"] = { -- Luminous Pigment (Luminous Ink)
			["i:168583"] = {matRate = 0.3500, minAmount = 1, maxAmount = 2, amountOfMats = 0.1050}, -- Widowbloom
			["i:168589"] = {matRate = 0.3500, minAmount = 1, maxAmount = 2, amountOfMats = 0.1050}, -- Marrowroot
			["i:169701"] = {matRate = 0.5000, minAmount = 1, maxAmount = 2, amountOfMats = 0.1500}, -- Death Blossom
			["i:168586"] = {matRate = 0.6500, minAmount = 1, maxAmount = 2, amountOfMats = 0.1950}, -- Rising Glory
			["i:170554"] = {matRate = 0.6500, minAmount = 1, maxAmount = 2, amountOfMats = 0.1950}, -- Vigil's Torch
			["i:171315"] = {matRate = 0.5000, minAmount = 1, maxAmount = 3, amountOfMats = 0.2500}, -- Nightshade
			["i:187699"] = {matRate = 0.5000, minAmount = 2, maxAmount = 3, amountOfMats = 0.2500}, -- First Flower
		},
		-- ======================================= Uncommon Pigments =======================================
		["i:43103"] = { -- Verdant Pigment (Hunter's Ink)
			["i:785"] = {matRate = 0.4200, minAmount = 1, maxAmount = 3, amountOfMats = 0.0915}, -- Mageroyal
			["i:2450"] = {matRate = 0.4200, minAmount = 1, maxAmount = 3, amountOfMats = 0.0915}, -- Briarthorn
			["i:2452"] = {matRate = 0.4650, minAmount = 1, maxAmount = 3, amountOfMats = 0.1005}, -- Swiftthistle
			["i:3820"] = {matRate = 0.5000, minAmount = 1, maxAmount = 3, amountOfMats = 0.1075}, -- Stranglekelp
			["i:2453"] = {matRate = 0.5000, minAmount = 1, maxAmount = 3, amountOfMats = 0.1075}, -- Bruiseweed
		},
		["i:43104"] = { -- Burnt Pigment (Dawnstar Ink)
			["i:3355"] = {matRate = 0.4500, minAmount = 1, maxAmount = 3, amountOfMats = 0.0975}, -- Wild Steelbloom
			["i:3369"] = {matRate = 0.4500, minAmount = 1, maxAmount = 3, amountOfMats = 0.0975}, -- Grave Moss
			["i:3356"] = {matRate = 0.5000, minAmount = 1, maxAmount = 3, amountOfMats = 0.1075}, -- Kingsblood
			["i:3357"] = {matRate = 0.5000, minAmount = 1, maxAmount = 3, amountOfMats = 0.1075}, -- Liferoot
		},
		["i:43105"] = { -- Indigo Pigment (Royal Ink)
			["i:3818"] = {matRate = 0.4200, minAmount = 1, maxAmount = 3, amountOfMats = 0.0915}, -- Fadeleaf
			["i:3821"] = {matRate = 0.4200, minAmount = 1, maxAmount = 3, amountOfMats = 0.0915}, -- Goldthorn
			["i:3358"] = {matRate = 0.5000, minAmount = 1, maxAmount = 3, amountOfMats = 0.1075}, -- Khadgar's Whisker
			["i:3819"] = {matRate = 0.5000, minAmount = 1, maxAmount = 3, amountOfMats = 0.1075}, -- Dragon's Teeth
		},
		["i:43106"] = { -- Ruby Pigment (Fiery Ink)
			["i:8836"] = {matRate = 0.4000, minAmount = 1, maxAmount = 3, amountOfMats = 0.0875}, -- Arthas' Tears
			["i:4625"] = {matRate = 0.4000, minAmount = 1, maxAmount = 3, amountOfMats = 0.0875}, -- Firebloom
			["i:8831"] = {matRate = 0.4500, minAmount = 1, maxAmount = 3, amountOfMats = 0.0975}, -- Purple Lotus
			["i:8838"] = {matRate = 0.4500, minAmount = 1, maxAmount = 3, amountOfMats = 0.0975}, -- Sungrass
			["i:8839"] = {matRate = 0.5000, minAmount = 1, maxAmount = 3, amountOfMats = 0.1075}, -- Blindweed
			["i:8845"] = {matRate = 0.5000, minAmount = 1, maxAmount = 3, amountOfMats = 0.1075}, -- Ghost Mushroom
			["i:8846"] = {matRate = 0.5000, minAmount = 1, maxAmount = 3, amountOfMats = 0.1075}, -- Gromsblood
		},
		["i:43107"] = { -- Sapphire Pigment (Ink of the Sky)
			["i:13463"] = {matRate = 0.4000, minAmount = 1, maxAmount = 3, amountOfMats = 0.0875}, -- Dreamfoil
			["i:13464"] = {matRate = 0.4400, minAmount = 1, maxAmount = 3, amountOfMats = 0.0955}, -- Golden Sansam
			["i:13467"] = {matRate = 0.5000, minAmount = 1, maxAmount = 3, amountOfMats = 0.1075}, -- Icecap
			["i:13465"] = {matRate = 0.5000, minAmount = 1, maxAmount = 3, amountOfMats = 0.1075}, -- Mountain Silversage
			["i:13466"] = {matRate = 0.5000, minAmount = 1, maxAmount = 3, amountOfMats = 0.1075}, -- Sorrowmoss
		},
		["i:43108"] = { -- Ebon Pigment (Darkflame Ink)
			["i:22789"] = {matRate = 0.4000, minAmount = 1, maxAmount = 3, amountOfMats = 0.0875}, -- Terocone
			["i:22787"] = {matRate = 0.4000, minAmount = 1, maxAmount = 3, amountOfMats = 0.0875}, -- Ragveil
			["i:22785"] = {matRate = 0.4000, minAmount = 1, maxAmount = 3, amountOfMats = 0.0875}, -- Felweed
			["i:22786"] = {matRate = 0.4000, minAmount = 1, maxAmount = 3, amountOfMats = 0.0875}, -- Dreaming Glory
			["i:22790"] = {matRate = 0.5000, minAmount = 1, maxAmount = 3, amountOfMats = 0.1075}, -- Ancient Lichen
			["i:22791"] = {matRate = 0.5000, minAmount = 1, maxAmount = 3, amountOfMats = 0.1075}, -- Netherbloom
			["i:22792"] = {matRate = 0.5000, minAmount = 1, maxAmount = 3, amountOfMats = 0.1075}, -- Nightmare Vine
			["i:22793"] = {matRate = 0.5000, minAmount = 1, maxAmount = 3, amountOfMats = 0.1075}, -- Mana Thistle
		},
		["i:43109"] = { -- Icy Pigment (Snowfall Ink)
			["i:36907"] = {matRate = 0.3300, minAmount = 1, maxAmount = 3, amountOfMats = 0.0755}, -- Talandra's Rose
			["i:39970"] = {matRate = 0.3300, minAmount = 1, maxAmount = 3, amountOfMats = 0.0795}, -- Fire Leaf
			["i:36904"] = {matRate = 0.3300, minAmount = 1, maxAmount = 3, amountOfMats = 0.0835}, -- Tiger Lily
			["i:37921"] = {matRate = 0.4000, minAmount = 1, maxAmount = 3, amountOfMats = 0.0875}, -- Deadnettle
			["i:36901"] = {matRate = 0.4000, minAmount = 1, maxAmount = 3, amountOfMats = 0.0875}, -- Goldclover
			["i:36903"] = {matRate = 0.5000, minAmount = 1, maxAmount = 3, amountOfMats = 0.1075}, -- Adder's Tongue
			["i:36905"] = {matRate = 0.5000, minAmount = 1, maxAmount = 3, amountOfMats = 0.1075}, -- Lichbloom
			["i:36906"] = {matRate = 0.5000, minAmount = 1, maxAmount = 3, amountOfMats = 0.1075}, -- Icethorn
		},
		["i:61980"] = { -- Burning Embers (Inferno Ink)
			["i:52985"] = {matRate = 0.4000, minAmount = 1, maxAmount = 3, amountOfMats = 0.0875}, -- Azshara's Veil
			["i:52983"] = {matRate = 0.4200, minAmount = 1, maxAmount = 3, amountOfMats = 0.0915}, -- Cinderbloom
			["i:52986"] = {matRate = 0.4400, minAmount = 1, maxAmount = 3, amountOfMats = 0.0955}, -- Heartblossom
			["i:52984"] = {matRate = 0.4600, minAmount = 1, maxAmount = 3, amountOfMats = 0.0995}, -- Stormvine
			["i:52988"] = {matRate = 0.5000, minAmount = 1, maxAmount = 3, amountOfMats = 0.1075}, -- Whiptail
			["i:52987"] = {matRate = 0.5000, minAmount = 1, maxAmount = 3, amountOfMats = 0.1075}, -- Twilight Jasmine
		},
		["i:79253"] = { -- Misty Pigment (Starlight Ink)
			["i:72234"] = {matRate = 0.4000, minAmount = 1, maxAmount = 3, amountOfMats = 0.0860}, -- Green Tea Leaf
			["i:72237"] = {matRate = 0.4200, minAmount = 1, maxAmount = 3, amountOfMats = 0.0900}, -- Rain Poppy
			["i:72235"] = {matRate = 0.4200, minAmount = 1, maxAmount = 3, amountOfMats = 0.0900}, -- Silkweed
			["i:89639"] = {matRate = 0.4400, minAmount = 1, maxAmount = 3, amountOfMats = 0.0940}, -- Desecrated Herb
			["i:79010"] = {matRate = 0.4400, minAmount = 1, maxAmount = 3, amountOfMats = 0.0940}, -- Snow Lily
			["i:79011"] = {matRate = 0.5000, minAmount = 1, maxAmount = 3, amountOfMats = 0.1075}, -- Fool's Cap
		},
		["i:129034"] = { -- Sallow Pigment (No Legion Ink)
			["i:128304"] = {matRate = 0.0100, minAmount = 1, maxAmount = 1, amountOfMats = 0.0020}, -- Yseralline Seed
			["i:124101"] = {matRate = 0.2200, minAmount = 1, maxAmount = 1, amountOfMats = 0.0440}, -- Aethril
			["i:151565"] = {matRate = 0.2200, minAmount = 1, maxAmount = 1, amountOfMats = 0.0440}, -- Astral Glory
			["i:124102"] = {matRate = 0.2200, minAmount = 1, maxAmount = 1, amountOfMats = 0.0440}, -- Dreamleaf
			["i:124103"] = {matRate = 0.2200, minAmount = 1, maxAmount = 1, amountOfMats = 0.0440}, -- Foxflower
			["i:124105"] = {matRate = 0.2200, minAmount = 1, maxAmount = 1, amountOfMats = 0.0440}, -- Starlight Rose
			["i:124104"] = {matRate = 0.2400, minAmount = 1, maxAmount = 2, amountOfMats = 0.0495}, -- Fjarnskaggl
			["i:124106"] = {matRate = 1.0000, minAmount = 8, maxAmount = 14, amountOfMats = 2.1480}, -- Felwort
		},
		["i:153669"] = { -- Viridescent Pigment (Viridescent Ink)
			["i:152505"] = {matRate = 0.2800, minAmount = 1, maxAmount = 3, amountOfMats = 0.1110}, -- Riverbud
			["i:152506"] = {matRate = 0.2800, minAmount = 1, maxAmount = 3, amountOfMats = 0.1110}, -- Star Moss
			["i:152507"] = {matRate = 0.2800, minAmount = 1, maxAmount = 3, amountOfMats = 0.1110}, -- Akunda's Bite
			["i:152508"] = {matRate = 0.2800, minAmount = 1, maxAmount = 3, amountOfMats = 0.1110}, -- Winter's Kiss
			["i:152509"] = {matRate = 0.2800, minAmount = 1, maxAmount = 3, amountOfMats = 0.1110}, -- Siren's Pollen
			["i:152511"] = {matRate = 0.2800, minAmount = 1, maxAmount = 3, amountOfMats = 0.1110}, -- Sea Stalk
			["i:152510"] = {matRate = 0.9750, minAmount = 1, maxAmount = 4, amountOfMats = 0.3150}, -- Anchor Weed
		},
		["i:175788"] = { -- Tranquil Pigment (Tranquil Ink)
			["i:168583"] = {matRate = 0.0300, minAmount = 1, maxAmount = 1, amountOfMats = 0.0060}, -- Widowbloom
			["i:168589"] = {matRate = 0.0300, minAmount = 1, maxAmount = 1, amountOfMats = 0.0060}, -- Marrowroot
			["i:168586"] = {matRate = 0.0300, minAmount = 1, maxAmount = 1, amountOfMats = 0.0060}, -- Rising Glory
			["i:170554"] = {matRate = 0.0300, minAmount = 1, maxAmount = 1, amountOfMats = 0.0060}, -- Vigil's Torch
			["i:169701"] = {matRate = 0.0300, minAmount = 1, maxAmount = 1, amountOfMats = 0.0060}, -- Death Blossom
			["i:171315"] = {matRate = 1.0000, minAmount = 1, maxAmount = 2, amountOfMats = 0.3000}, -- Nightshade
			["i:187699"] = {matRate = 1.0000, minAmount = 2, maxAmount = 3, amountOfMats = 0.5000}, -- First Flower
		},
	}
else
	error("Invalid game version")
end



-- ============================================================================
-- Module Functions
-- ============================================================================

function Mill.TargetItemIterator()
	return private.TableKeyIterator, DATA, nil
end

function Mill.SourceItemIterator(targetItemString)
	return private.TableKeyIterator, DATA[targetItemString], nil
end

function Mill.GetRate(targetItemString, sourceItemString)
	return DATA[targetItemString][sourceItemString].amountOfMats, DATA[targetItemString][sourceItemString].matRate, DATA[targetItemString][sourceItemString].minAmount, DATA[targetItemString][sourceItemString].maxAmount, DATA[targetItemString][sourceItemString].requiredSkill
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.TableKeyIterator(tbl, index)
	index = next(tbl, index)
	return index
end
