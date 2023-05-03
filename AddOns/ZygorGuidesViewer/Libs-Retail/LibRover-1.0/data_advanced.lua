local name,addon = ...

addon.LibRoverData = addon.LibRoverData or {}
local data=addon.LibRoverData

--[[
	Regions are custom subzones. Unwanted beelines are prevented if nodes are in different regions.
	A region must have a name (and many regions can share a name), and either:
		- center (map+coords), radius (number in yards) : for coordinate-based detection
		- minimapzone (English, from GetMinimapZoneText()), optionally mapzone : for subzone name-based detection
	After those, regions can have any properties, the ones in use are:
		- nofly : nodes in the region get the 'nofly' attribute, becoming unreachable for flight
		- dark : costs of travel from start and to end node get multiplied, and non-hardwired node linkage is completely forbidden. Use only for "one possible path only" zones.

	In general, if you want a region to have a specific route through it, set it to dark so that the system doesn't ignore the route and plan a beeline instead.
	Then, remember to add some nodes in the region, so that there IS a reasonable path through it...

	Conversely, if you set dark and don't plan some paths across the area, it'll become a "swamp", an area the system will try to avoid altogether.

	You can also add "green borders" to a region, so that it is directly seen and connected to a neighboring zone, instead of its own zone.
--]]
data.basenodes.advanced = {
	--		Swamp of Sorrows 69.6,53.9 (Temple of Atal'Hakkar Outside (Entering Doorway Outside mini map))
	--		Swamp of Sorrows 69.8,52.9 (Temple of Atal'Hakkar Inside (going downstairs Inside mini map))
	--
	--		Swamp of Sorrows 70.0,51.1 (5 yds before Broken Hall starts (underwater))
	--		Swamp of Sorrows 70.2,50.4 (5 yds into Broken Halls (swimming across pool indoors))
	--
	--		Swamp of Sorrows 70.9,46.2 (5 yds before exting Broken Halls (out of water on stone floor))
	--		Swamp of Sorrows 71.1,45.4 (5 yds entering indoor The Temple of Atal'Hakkar (hallway L))
	--
	--		Swamp of Sorrows 73.7,44.3 (5 yds before exiting indoor The Temple of Atal'Hakkar (hallway downstairs L))
	--		Swamp of Sorrows 74.3,44.5 (5 yds Entering Hall of Masks (exiting stairs hallway))
	--
	--		Swamp of Sorrows 76.0,45.3 (Portal to Dungeon (in hall of masks))

	{"REGION",name="cleftofshadow",center="Orgrimmar/2 50,51.34",radius=80},

	{"REGION",name="undercityaccess",center="Undercity/0 29,31", radius=150, in_flight=true},
	{"REGION",name="undercitycourt",center="Tirisfal Glades 62,67", radius=60},
	{"REGION",name="undercitycourt",center="Tirisfal Glades 60,67", radius=65},
	
	{"REGION",name="booty_bay",center="The Cape of Stranglethorn 41,70",radius=127},

	{"REGION",name="fuselight",center="Badlands 65.9,35.3",radius=100},
	{"REGION",name="fuselightbts",center="Badlands 90.7,36.3",radius=150},
	{"REGION",name="fuselightbtspre",center="Badlands 79.1,31.6",radius=150},

	{"REGION",name="lochmodanclimb",center="Loch Modan 46.1,77.3",radius=75},
	{"REGION",name="lochmodanclimb",center="Loch Modan 51.1,77.3",radius=55},
	{"REGION",name="lochmodanclimb",center="Loch Modan 47.6,79.9",radius=50},

	{"REGION",name="krasarang_edge",center="Valley of the Four Winds 36.8,79.3",radius=30,greenborders={"Krasarang Wilds"}},
	{"REGION",name="krasarang_edge",center="Valley of the Four Winds 31.3,82.9",radius=10,greenborders={"Krasarang Wilds"}},
	{"REGION",name="krasarang_edge",center="Valley of the Four Winds 34.4,82.3",radius=10,greenborders={"Krasarang Wilds"}},
	{"REGION",name="krasarang_edge",center="Valley of the Four Winds 35.7,79.9",radius=35,greenborders={"Krasarang Wilds"}},
	{"REGION",name="krasarang_edge",center="Valley of the Four Winds 53.7,77.8",radius=40,greenborders={"Krasarang Wilds"}},
	{"REGION",name="krasarang_edge",center="Valley of the Four Winds 63.3,74.9",radius=30,greenborders={"Krasarang Wilds"}},
	{"REGION",name="krasarang_edge",center="Valley of the Four Winds 69.6,69.9",radius=30,greenborders={"Krasarang Wilds"}},
	{"REGION",name="krasarang_edge",center="Valley of the Four Winds 67.3,69.0",radius=30,greenborders={"Krasarang Wilds"}},
	{"REGION",name="krasarang_edge",center="Valley of the Four Winds 76.0,57.2",radius=60,greenborders={"Krasarang Wilds"}},
	{"REGION",name="krasarang_edge",center="Valley of the Four Winds 74.1,56.3",radius=20,greenborders={"Krasarang Wilds"}},

	{"REGION",name="shrine2moon_west",center="Shrine of Two Moons/2 30.3,53.5",radius=75,nofly=1},
	{"REGION",name="shrine2moon_east",center="Shrine of Two Moons/2 70.4,46.2",radius=75,nofly=1},

	{"REGION",name="shrine7star_west",center="Shrine of Seven Stars/2 40.8,69.2",radius=75,nofly=1},
	{"REGION",name="shrine7star_east",center="Shrine of Seven Stars/2 69.5,40.4",radius=75,nofly=1},

	{"REGION",name="endtime_entry",center="End Time/1 80,45",radius=200,nofly=1},  -- One can't rove around the whole End Time map.

	{"REGION",name="underbelly",mapzone=125,zonematch="*/*/*/The Underbelly",nofly=1,greenborders={{"Dalaran",2}}},

	-- Pandaria, since we're mostly running for the initial levels
	{"REGION",name="garrosharpoint",center="The Jade Forest/0 44.4,93.3",radius=200 },
	{"REGION",name="garrosharpoint",center="The Jade Forest 46.3,96.4",radius=50 },

	{"REGION",name="pawdonvillage",center="The Jade Forest/0 44.35,86.00",radius=145 },
	{"REGION",name="pawdonvillage",center="The Jade Forest/0 41.88,83.49",radius=285 },
	{"REGION",name="pawdonvillage",center="The Jade Forest/0 46.00,84.00",radius=70 },
	{"REGION",name="pawdonvillage",center="The Jade Forest/0 39.4,90.2",radius=150 },

	--{"MAP",map="Tanaris", floor=17, extra={dark=1} },

	{"REGION",name="allyboat_thunder",center="Isle of Thunder/0 34.8,89.8",radius=100},
	{"REGION",name="hordeboat_thunder",center="Isle of Thunder/0 28.4,52.5",radius=100},

	{"REGION",name="topofthewallVFW",mapzone="Valley of the Four Winds",zonematch="*/*/*/Serpent's Spine"},
	{"REGION",name="topofthewallP",mapzone="Pandaria",zonematch="*/*/*/Serpent's Spine",greenborders={"Valley of the Four Winds"}}, -- This is a dead zone between the above and below regions. Let it see into the above region so it can find a way out.
	{"REGION",name="topofthewallVEB",mapzone="Vale of Eternal Blossoms",zonematch="*/*/*/Serpent's Spine"},
	{"REGION",name="topofthewallVEB",mapzone="Vale of Eternal Blossoms",center="Vale of Eternal Blossoms/0 14.1,79.2",radius=40},

	{"REGION",name="totopofwallKLS",mapzone="Kun-Lai Summit",zonematch="*/*/*/Shado-Pan Fallback"},
	{"REGION",name="topofthewallKLS",mapzone="Kun-Lai Summit",zonematch="*/*/*/Serpent's Spine"},

	-- Terrace in Un'Goro Crater. Inaccessible without old world flying.
	{"REGION",name="shapers_terrace",mapzone="Un'Goro Crater",zonematch="*/*/*/Waygate"},
	{"REGION",name="shapers_terrace",mapzone="Un'Goro Crater",zonematch="*/*/*/The Shaper's Terrace"},

	--[[
	{"REGION",name="dmentry",mapzone="Westfall",zonematch="*/*/*/Defias Hideout",nofly=1,dark=1},
	{"REGION",name="dmentry2",mapzone="Westfall",zonematch="*/*/*/The Deadmines",nofly=1,dark=1},
	{"REGION",name="maraudon",mapzone="Desolace",zonematch="*/*/*/Maraudon",nofly=1,dark=1},
	{"REGION",name="sm_gv",mapzone="Tirisfal Glades",zonematch="*/*/*/The Grand Vestibule",nofly=1},
	{"REGION",name="gnomer",mapzone="Dun Morogh",zonematch="*/*/*/Gnomeregan",nofly=1,dark=1},
	{"REGION",name="gnomertrain",mapzone="Dun Morogh",zonematch="*/*/*/Train Depot",nofly=1,dark=1},
	{"REGION",name="blackfathom",mapzone="Ashenvale",zonematch="*/*/*/Blackfathom Deeps",nofly=1,dark=1},
	{"REGION",name="wailingcave1",mapzone="Northern Barrens",zonematch="*/*/*/The Wailing Caverns",nofly=1,dark=1},
	{"REGION",name="wailingcave2",mapzone="Northern Barrens",zonematch="*/*/*/Cavern of Mists",nofly=1,dark=1},
	{"REGION",name="cotime",mapzone="Tanaris",zonematch="*/*/*/Caverns of Time",dark=1},
	--]]

	--{"REGION",name="ironforgecenter",center="Ironforge 48,43",radius=100,nofly=1},
	
	-- Peak of Serenity, monk training area. Players are not allowed to leave on foot while training (might be dependent on level?).
	{"REGION",name="peak_of_serenity",center="Kun-Lai Summit 50,40",radius=300}, -- One large circle.
	{"REGION",name="peak_of_serenity",mapzone="Kun-Lai Summit",zonematch="*/*/*/Peak of Serenity"}, -- Make sure the peak itself is always part of the region.
	
	-- Redridge Mountains pass to the east is not accessible from the rest of Redridge Mountains.
	{"REGION",name="redridge_pass",center="Redridge Mountains 63.6,9.1",radius=50},
	{"REGION",name="redridge_pass",center="Redridge Mountains 63.8,12.1",radius=50},
	{"REGION",name="redridge_pass",center="Redridge Mountains 63.9,15.3",radius=50},
	{"REGION",name="redridge_pass",center="Redridge Mountains 64.1,18.3",radius=50},
	{"REGION",name="redridge_pass",center="Redridge Mountains 64.9,21.6",radius=50},
	{"REGION",name="redridge_pass",center="Redridge Mountains 67.1,22.5",radius=50},
	{"REGION",name="redridge_pass",center="Redridge Mountains 69.1,22.6",radius=50},
	{"REGION",name="redridge_pass",center="Redridge Mountains 71.3,23.6",radius=50},
	{"REGION",name="redridge_pass",center="Redridge Mountains 72.9,25.6",radius=50},
	{"REGION",name="redridge_pass",center="Redridge Mountains 74.7,27.0",radius=50},
	{"REGION",name="redridge_pass",center="Redridge Mountains 77.0,27.4",radius=50},
	{"REGION",name="redridge_pass",center="Redridge Mountains 79.0,28.4",radius=50},
	{"REGION",name="redridge_pass",center="Redridge Mountains 80.1,31.1",radius=50},
	{"REGION",name="redridge_pass",center="Redridge Mountains 80.5,34.2",radius=50},
	{"REGION",name="redridge_pass",center="Redridge Mountains 80.9,37.5",radius=50},
	{"REGION",name="redridge_pass",center="Redridge Mountains 81.1,40.8",radius=50},
	{"REGION",name="redridge_pass",center="Redridge Mountains 81.6,44.0",radius=50},
	{"REGION",name="redridge_pass",center="Redridge Mountains 81.9,47.0",radius=50},
	{"REGION",name="redridge_pass",center="Redridge Mountains 82.2,50.1",radius=50},
	{"REGION",name="redridge_pass",center="Redridge Mountains 83.1,53.0",radius=50},
	{"REGION",name="redridge_pass",center="Redridge Mountains 85.0,53.7",radius=50},
	{"REGION",name="redridge_pass",center="Redridge Mountains 87.0,54.0",radius=50},
	{"REGION",name="redridge_pass",center="Redridge Mountains 89.0,54.0",radius=50},
	{"REGION",name="redridge_pass",center="Redridge Mountains 90.0,56.6",radius=50},
	{"REGION",name="redridge_pass",center="Redridge Mountains 90.9,59.8",radius=50},
	{"REGION",name="redridge_pass",center="Redridge Mountains 89.8,62.2",radius=50},

	{"REGION",name="magetower",mapzone="Stormwind City",zonematch="*/*/*/Wizard's Sanctum",nofly=1,indoors=true},
	"Stormwind City/0 49.44,86.79 -x- Stormwind City/0 49.21,87.09 <region:magetower> {title_atob:Enter the Mage Tower} {title_btoa:Exit the Mage Tower}",


	---------------
	--- DRAENOR ---
	---------------



	----------------
	---- LEGION ----
	----------------
	-- Suramar Shal'Aran Cave
		{"REGION",name="suramar_shalaran",mapzone="Suramar",zonematch="*/*/*/Shal'Aran",nofly=1,indoors=true},

	-- Suramar Ruins of Elune'eth
		{"REGION",name="suramar_eluneeth",mapzone="Suramar",zonematch="*/*/*/Ruins of Elune'eth"},
		
	-- Dalaran (Margoss's Retreat) - Fishing Reputation, Floating Island next to Dalaran
		{"REGION",name="dalaran_margosss_retreat",mapzone="Dalaran L",zonematch="*/*/*/Margoss's Retreat"},


	-------------------------------
	-----     SHADOWLANDS     -----
	-------------------------------
	-- Hero's Rest (Bastion)
		{"REGION",name="heros_rest",mapzone="Bastion",zonematch="*/*/*/Hero's Rest",nofly=0},

	-- Elysian Hold (Bastion)
		--{"REGION",name="elysian_hold",mapzone="Elysian Hold",zonematch="*/*/*/Elysian Hold",nofly=0},

	-- The Eonian Archives (Bastion)
		{"REGION",name="eonian_archives_floatisle",center="Bastion 40.11,20.11",radius=100,nofly=0},

	-- Vortrexxis (Maldraxxus)
		{"REGION",name="vortrexxis",mapzone="Maldraxxus",zonematch="*/*/*/Vortrexxis",nofly=0},

	-- Redelav Tower (Revendreth)
		{"REGION",name="redelav_tower",mapzone="Revendreth",indoors=true,zonematch="*/*/*/Redelav Tower",nofly=0},

	-- Vault of Secrets (Korthia)
		{"REGION",name="vault_of_secrets",mapzone="Korthia",center="Korthia 50.27,75.06",radius=375,nofly=0},

	{"REGION",name="zerekriss",mapzone="The Maw",zonematch="*/*/*/Zerekriss"},

}

