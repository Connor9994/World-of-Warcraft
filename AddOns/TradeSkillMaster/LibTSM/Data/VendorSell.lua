-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local VendorSell = TSM.Init("Data.VendorSell") ---@class Data.VendorSell
local Environment = TSM.Include("Environment")



-- ============================================================================
-- Vendor Sell Data
-- ============================================================================

-- Scraped from Wowhead using the following javascript and then manually pruned to remove limited quantity items and fill in missing prices:
-- x = listviewitems.sort((a,b) => a.id - b.id); for (i=0; i<x.length; i++) console.log("[\"i:"+x[i].id+"\"] = "+x[i].cost[0]+", -- "+x[i].name);
local VENDOR_SELL_PRICES = Environment.IsRetail() and {
		-- https://www.wowhead.com/items/side:3/live-only:on?filter=92:87:186:86;1:11:1:12;0:0:0:0
		["i:159"] = 25, -- Refreshing Spring Water
		["i:1179"] = 125, -- Ice Cold Milk
		["i:2320"] = 10, -- Coarse Thread
		["i:2321"] = 100, -- Fine Thread
		["i:2324"] = 25, -- Bleach
		["i:2325"] = 1000, -- Black Dye
		["i:2593"] = 150, -- Flask of Stormwind Tawny
		["i:2594"] = 1500, -- Flagon of Dwarven Mead
		["i:2595"] = 2000, -- Jug of Badlands Bourbon
		["i:2596"] = 120, -- Skin of Dwarven Stout
		["i:2604"] = 50, -- Red Dye
		["i:2605"] = 100, -- Green Dye
		["i:2678"] = 10, -- Mild Spices
		["i:2880"] = 100, -- Weak Flux
		["i:2901"] = 81, -- Mining Pick
		["i:3371"] = 150, -- Crystal Vial
		["i:3466"] = 2000, -- Strong Flux
		["i:3857"] = 500, -- Coal
		["i:4289"] = 50, -- Salt
		["i:4291"] = 500, -- Silken Thread
		["i:4340"] = 350, -- Gray Dye
		["i:4341"] = 500, -- Yellow Dye
		["i:4342"] = 2500, -- Purple Dye
		["i:4399"] = 200, -- Wooden Stock
		["i:4400"] = 2000, -- Heavy Stock
		["i:4470"] = 38, -- Simple Wood
		["i:4537"] = 125, -- Tel'Abim Banana
		["i:5956"] = 18, -- Blacksmith Hammer
		["i:6217"] = 124, -- Copper Rod
		["i:6260"] = 50, -- Blue Dye
		["i:6261"] = 1000, -- Orange Dye
		["i:6530"] = 100, -- Nightcrawlers
		["i:7005"] = 82, -- Skinning Knife
		["i:8343"] = 2000, -- Heavy Silken Thread
		["i:10290"] = 2500, -- Pink Dye
		["i:10647"] = 2000, -- Engineer's Ink
		["i:11291"] = 4500, -- Star Wood
		["i:14341"] = 5000, -- Rune Thread
		["i:17194"] = 10, -- Holiday Spices
		["i:17196"] = 50, -- Holiday Spirits
		["i:17202"] = 10, -- Snowball
		["i:18567"] = 30000, -- Elemental Flux
		["i:23572"] = 500000, -- Primal Nether
		["i:27860"] = 6400, -- Purified Draenic Water
		["i:30183"] = 700000, -- Nether Vortex
		["i:30817"] = 25, -- Simple Flour
		["i:34249"] = 1000000, -- Hula Girl Doll
		["i:34412"] = 1000, -- Sparkling Apple Cider
		["i:35948"] = 16000, -- Savory Snowplum
		["i:35949"] = 8500, -- Tundra Berries
		["i:38426"] = 30000, -- Eternium Thread
		["i:39354"] = 15, -- Light Parchment
		["i:39684"] = 9000, -- Hair Trigger
		["i:40533"] = 50000, -- Walnut Stock
		["i:43102"] = 750000, -- Frozen Orb
		["i:44499"] = 30000000, -- Salvaged Iron Golem Parts
		["i:44500"] = 15000000, -- Elementium-Plated Exhaust Pipe
		["i:44501"] = 10000000, -- Goblin-Machined Piston
		["i:44835"] = 10, -- Autumnal Herbs
		["i:44853"] = 25, -- Honey
		["i:44854"] = 25, -- Tangy Wetland Cranberries
		["i:44855"] = 25, -- Teldrassil Sweet Potato
		["i:46784"] = 25, -- Ripe Elwynn Pumpkin
		["i:46793"] = 25, -- Tangy Southfury Cranberries
		["i:46796"] = 25, -- Ripe Tirisfal Pumpkin
		["i:46797"] = 25, -- Mulgore Sweet Potato
		["i:49908"] = 1500000, -- Primordial Saronite
		["i:52188"] = 15000, -- Jeweler's Setting
		["i:58265"] = 20000, -- Highland Pomegranate
		["i:58278"] = 16000, -- Tropical Sunfruit
		["i:62323"] = 60000, -- Deathwing Scale Fragment
		["i:65892"] = 50000000, -- Pyrium-Laced Crystalline Vial
		["i:65893"] = 30000000, -- Sands of Time
		["i:67319"] = 328990, -- Preserved Ogre Eye
		["i:67335"] = 445561, -- Silver Charm Bracelet
		["i:74659"] = 30000, -- Farm Chicken
		["i:74660"] = 15000, -- Pandaren Peach
		["i:74832"] = 12000, -- Barley
		["i:74845"] = 35000, -- Ginseng
		["i:74851"] = 14000, -- Rice
		["i:74852"] = 16000, -- Yak Milk
		["i:74854"] = 7000, -- Instant Noodles
		["i:79740"] = 23, -- Plain Wooden Staff
		["i:80433"] = 2000000, -- Blood Spirit
		["i:83092"] = 200000000, -- Orb of Mystery
		["i:85583"] = 12000, -- Needle Mushrooms
		["i:85584"] = 17000, -- Silkworm Pupa
		["i:85585"] = 27000, -- Red Beans
		["i:102539"] = 5000, -- Fresh Strawberries
		["i:102540"] = 5000, -- Fresh Mangos
		["i:124436"] = 40000, -- Foxflower Flux
		["i:127037"] = 5000, -- Runic Catgut
		["i:127681"] = 5000, -- Sharp Spritethorn
		["i:133588"] = 25000, -- Flaked Sea Salt
		["i:133589"] = 25000, -- Dalapeño Pepper
		["i:133590"] = 25000, -- Muskenbutter
		["i:133591"] = 25000, -- River Onion
		["i:133592"] = 25000, -- Stonedark Snail
		["i:133593"] = 25000, -- Royal Olive
		["i:136629"] = 173300, -- Felgibber Shotgun
		["i:136630"] = 118500, -- "Twirling Bottom" Repeater
		["i:136631"] = 450000, -- Surface-to-Infernal Rocket Launcher
		["i:136632"] = 210800, -- Chaos Blaster
		["i:136633"] = 25000, -- Loose Trigger
		["i:136636"] = 57500, -- Sniping Scope
		["i:136637"] = 11500, -- Oversized Blasting Cap
		["i:136638"] = 89500, -- True Iron Barrel
		["i:158186"] = 250, -- Distilled Water
		["i:158205"] = 1000, -- Acacia Powder
		["i:159959"] = 6000, -- Nylon Thread
		["i:160059"] = 250, -- Amber Tanning Oil
		["i:160298"] = 3000, -- Durable Flux
		["i:160398"] = 25000, -- Choral Honey
		["i:160399"] = 25000, -- Wild Flour
		["i:160400"] = 25000, -- Foosaka
		["i:160502"] = 11500, -- Chemical Blasting Cap
		["i:160705"] = 50, -- Major's Frothy Coffee
		["i:160709"] = 25000, -- Fresh Potato
		["i:160710"] = 25000, -- Wild Berries
		["i:160712"] = 25000, -- Powdered Sugar
		["i:161131"] = 300000000, -- Barely Stable Azerite Reactor
		["i:163203"] = 50000000, -- Hypersensitive Azeritometer Sensor
		["i:163569"] = 100, -- Insulated Wiring
		["i:172056"] = 50000, -- Medley of Transplanar Spices
		["i:172057"] = 37500, -- Inconceivably Aged Vinegar
		["i:172058"] = 45000, -- Smuggled Azerothian Produce
		["i:172059"] = 42500, -- Rich Grazer Milk
		["i:173060"] = 5000, -- Aerated Water
		["i:173168"] = 10000, -- Laestrite Setting
		["i:175886"] = 5000, -- Dark Parchment
		["i:177062"] = 50000, -- Penumbra Thread
		["i:178786"] = 35000, -- Lusterwheat Flour
		["i:178787"] = 1250000, -- Orboreal Shard
		["i:180732"] = 10000, -- Rune Etched Vial
		["i:180733"] = 50000, -- Luminous Flux
		["i:183950"] = 50000, -- Distilled Death Extract
		["i:183951"] = 50000, -- Immortal Shard
		["i:183952"] = 50000, -- Machinist's Oil
		["i:183953"] = 50000, -- Sealing Wax
		["i:183954"] = 50000, -- Malleable Wire
	} or {
		-- https://classic.wowhead.com/items/side:3?filter=92:87:186:86;1:11:1:12;0:0:0:0
		["i:159"] = 25, -- Refreshing Spring Water
		["i:1179"] = 125, -- Ice Cold Milk
		["i:2320"] = 10, -- Coarse Thread
		["i:2321"] = 100, -- Fine Thread
		["i:2324"] = 25, -- Bleach
		["i:2325"] = 1000, -- Black Dye
		["i:2596"] = 120, -- Skin of Dwarven Stout
		["i:2604"] = 50, -- Red Dye
		["i:2605"] = 100, -- Green Dye
		["i:2665"] = 20, -- Stormwind Seasoning Herbs
		["i:2678"] = 10, -- Mild Spices
		["i:2692"] = 40, -- Hot Spices
		["i:2880"] = 100, -- Weak Flux
		["i:2894"] = 50, -- Rhapsody Malt
		["i:3371"] = 20, -- Empty Vial
		["i:3372"] = 200, -- Leaded Vial
		["i:3466"] = 2000, -- Strong Flux
		["i:3713"] = 160, -- Soothing Spices
		["i:3857"] = 500, -- Coal
		["i:4289"] = 50, -- Salt
		["i:4291"] = 500, -- Silken Thread
		["i:4340"] = 350, -- Gray Dye
		["i:4341"] = 500, -- Yellow Dye
		["i:4342"] = 2500, -- Purple Dye
		["i:4399"] = 200, -- Wooden Stock
		["i:4400"] = 2000, -- Heavy Stock
		["i:4470"] = 38, -- Simple Wood
		["i:4536"] = 25, -- Shiny Red Apple
		["i:5140"] = 25, -- Flash Powder
		["i:6217"] = 124, -- Copper Rod
		["i:6260"] = 50, -- Blue Dye
		["i:6261"] = 1000, -- Orange Dye
		["i:6530"] = 100, -- Nightcrawlers
		["i:8343"] = 2000, -- Heavy Silken Thread
		["i:8925"] = 2500, -- Crystal Vial
		["i:10290"] = 2500, -- Pink Dye
		["i:10647"] = 2000, -- Engineer's Ink
		["i:10648"] = 500, -- Blank Parchment
		["i:11291"] = 4500, -- Star Wood
		["i:14341"] = 5000, -- Rune Thread
		["i:16583"] = 10000, -- Demonic Figurine
		["i:17020"] = 1000, -- Arcane Powder
		["i:17021"] = 700, -- Wild Berries
		["i:17026"] = 1000, -- Wild Thornroot
		["i:17028"] = 700, -- Holy Candle
		["i:17029"] = 1000, -- Sacred Candle
		["i:17030"] = 2000, -- Ankh
		["i:17031"] = 1000, -- Rune of Teleportation
		["i:17032"] = 2000, -- Rune of Portals
		["i:17033"] = 2000, -- Symbol of Divinity
		["i:17034"] = 200, -- Maple Seed
		["i:17035"] = 400, -- Stranglethorn Seed
		["i:17036"] = 800, -- Ashwood Seed
		["i:17037"] = 1400, -- Hornbeam Seed
		["i:17038"] = 2000, -- Ironwood Seed
		["i:17194"] = 10, -- Holiday Spices
		["i:17196"] = 50, -- Holiday Spirits
		["i:17202"] = 10, -- Snowball
		["i:18256"] = 30000, -- Imbued Vial
		["i:18567"] = 150000, -- Elemental Flux
		["i:21177"] = 3000, -- Symbol of Kings
	}



-- ============================================================================
-- Module Functions
-- ============================================================================

function VendorSell.Iterator()
	return pairs(VENDOR_SELL_PRICES)
end
