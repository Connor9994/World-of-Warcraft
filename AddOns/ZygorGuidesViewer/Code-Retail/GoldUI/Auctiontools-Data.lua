local name,ZGV = ...
local Appraiser = ZGV.Gold.Appraiser 

Appraiser.QuickSearch = {
	-- TAILORING
	2589, -- Linen Cloth
	2592, -- Wool Cloth
	4306, -- Silk Cloth
	4338, -- Mageweave Cloth
	14047, -- Runecloth
	21877, -- Netherweave Cloth
	33470, -- Frostweave Cloth
	53010, -- Embersilk Cloth
	72988, -- Windwool Cloth
	111557, -- Sumptuous Fur
	151567, -- Lightweave Cloth
	124437, -- Shal'dorei Silk
	152576, -- Tidespray Linen
	152577, -- Deep Sea Satin

	-- SKINNING
	-- Leather
	2318, -- Light Leather
	2319, -- Medium Leather
	4234, -- Heavy Leather
	4304, -- Thick Leather
	8170, -- Rugged Leather
	4235, -- Heavy Hide
	21887, -- Knothide Leather
	25700, -- Fel Scales
	33568, -- Borean Leather
	52976, -- Savage Leather
	72120, -- Exotic Leather
	151566, -- Fiendish Leather
	124113, -- Stonehide Leather
	152541, -- Coarse Leather


	-- Scales
	52979, -- Blackened Dragonscale
	124115, -- Stormscale
	153051, -- Mistscale
	50738, -- Shimmerscale

	-- Hides
	110609, -- Raw Beast Hide
	154722, -- Tempest Hide
	152542, -- Hardened Tempest Hide

	-- Other
	154165, -- Calcified Bone
	154164, -- Blood-Stained Bone
	158378, -- Embroidered Deep Sea Satin
	127004, -- Imbued Silkweave

	-- MINING:
	2770, -- Copper Ore
	2840, -- Copper Bar
	2771, -- Tin Ore
	3576, -- Tin Bar
	2775, -- Silver Ore
	2842, -- Silver Bar
	2772, -- Iron Ore
	3575, -- Iron Bar
	2776, -- Gold Ore
	3577, -- Gold Bar
	3858, -- Mithril Ore
	3860, -- Mithril Bar
	7911, -- Truesilver Ore
	6037, -- Truesilver Bar
	11370, -- Dark Iron Ore
	11371, -- Dark Iron Bar
	10620, -- Thorium Ore
	12359, -- Thorium Bar
	23424, -- Fel Iron Ore
	23445, -- Fel Iron Bar
	23425, -- Adamantite Ore
	23446, -- Adamantite Bar
	23426, -- Khorium Ore
	23449, -- Khorium Bar
	36909, -- Cobalt Ore
	36916, -- Cobalt Bar
	36912, -- Saronite Ore
	36913, -- Saronite Bar
	36910, -- Titanium Ore
	41163, -- Titanium Bar
	53038, -- Obsidium Ore
	54849, -- Obsidium Bar
	52185, -- Elementium Ore
	52186, -- Elementium Bar
	52183, -- Pyrite Ore
	72092, -- Ghost Iron Ore
	72096, -- Ghost Iron Bar
	72093, -- Kyparite
	72094, -- Black Trillium Ore
	72103, -- White Trillium Ore
	72095, -- Trillium Bar
	109118, -- Blackrock Ore
	109119, -- True Iron Ore
	151564, -- Empyrium
	123919, -- Felslate
	123918, -- Leystone Ore
	124007, -- Leystone Bar
	152512, -- Monelite Ore
	152579, -- Storm Silver Ore
	152513, -- Platinum Ore
	124444, -- Infernal Brimstone

	-- HERBALISM
	2447, -- Peacebloom
	765, -- Silverleaf
	22710, -- Bloodthistle
	2449, -- Earthroot
	785, -- Mageroyal
	2450, -- Briarthorn
	3820, -- Stranglekelp
	1622, -- Bruiseweed
	3369, -- Grave Moss
	3355, -- Wild Steelbloom
	3356, -- Kingsblood
	3357, -- Liferoot
	3818, -- Fadeleaf
	3821, -- Goldthorn
	3358, -- Khadgar's Whisker
	32732, -- Dragon's Teeth
	4625, -- Firebloom
	8831, -- Purple Lotus
	8838, -- Sungrass
	8839, -- Blindweed
	8845, -- Ghost Mushroom
	8846, -- Gromsblood
	13464, -- Golden Sansam
	13463, -- Dreamfoil
	13465, -- Mountain Silversage
	13466, -- Sorrowmoss
	13467, -- Icecap
	13468, -- Black Lotus
	22785, -- Felweed
	22786, -- Dreaming Glory
	22787, -- Ragveil
	22789, -- Terocone
	22790, -- Ancient Lichen
	22791, -- Netherbloom
	22792, -- Nightmare Vine
	22793, -- Mana Thistle
	22794, -- Fel Lotus
	36901, -- Goldclover
	39970, -- Fire Leaf
	39970, -- Tiger Lily
	36907, -- Talandra's Rose
	36903, -- Adder's Tongue
	37921, -- Deadnettle
	36905, -- Lichbloom
	36906, -- Icethorn
	36908, -- Frost Lotus
	52983, -- Cinderbloom
	52985, -- Azshara's Veil
	52984, -- Stormvine
	52986, -- Heartblossom
	52988, -- Whiptail
	52987, -- Twilight Jasmine
	72234, -- Green Tea Leaf
	72237, -- Rain Poppy
	72235, -- Silkweed
	79010, -- Snow Lily
	79011, -- Fool's Cap
	72238, -- Golden Lotus
	109124, -- Frostweed
	109127, -- Starflower
	109125, -- Fireweed
	109126, -- Gorgrond Flytrap
	109129, -- Talador Orchid
	109128, -- Nagrand Arrowbloom
	124101, -- Aethril
	151565, -- Astral Glory
	124102, -- Dreamleaf
	124104, -- Fjarnskaggl
	124103, -- Foxflower
	124105, -- Starlight Rose
	124106, -- Felwort
	152511, -- Sea Stalk
	152505, -- Riverbud
	152506, -- Star Moss
	152507, -- Akunda's Bite
	152508, -- Winter's Kiss
	152509, -- Siren's Pollen
	152510, -- Anchor Weed
	128304, -- Yseralline Seed

	-- BLACKSMITHING
	124461, -- Demonsteel Bar

	-- COOKING
	152631, -- Briny Flesh
	154897, -- Stringy Loins
	154898, -- Meaty Haunch
	154899, -- Thick Paleo Steak
	152544, -- Slimy Mackerel
	152543, -- Sand Shifter
	152546, -- Lane Snapper
	152545, -- Frenzied Fangtooth
	152549, -- Redtail Loach
	152547, -- Great Sea Catfish
	154881, -- Kul Tiramisu
	154882, -- Honey-Glaxed Haunches
	124108, -- Mossgill Perch

	-- ENCHANTING
	152875, -- Gloom Dust
	152876, -- Umbra Shard
	152877, -- Veiled Crystal
	109693, -- Draenic Dust
	14344, -- Large Brilliant Shard

	-- INSCRIPTION
	114931, -- Cerulean Pigment
	153635, -- Ultramarine Pigment
	153636, -- Crimson Pigment
}