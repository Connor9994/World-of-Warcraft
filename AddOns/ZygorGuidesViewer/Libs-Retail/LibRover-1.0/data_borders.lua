local name,addon = ...

addon.LibRoverData = addon.LibRoverData or {}
local data=addon.LibRoverData

-- WATCH OUT. These are GROUND ONLY, and WILL be ignored by flight!

-- indexed by continent, but that's ignored anyway.
data.basenodes.borders = {

	-- Shadowlands
		"The Maw/0 23.01,68.40 -x- Altar of Domination/0 89.73,34.52 {title_atob:Enter the building} {title_btoa:Leave the building}",
		"The Maw/0 27.87,20.52 -x- Extractor's Sanatorium/0 19.94,73.08 {title_atob:Enter the building} {title_btoa:Leave the building}",
		"Bastion/0 44.03,24.70 -x- Path of Wisdom/0 48.04,90.71 {title_atob:Enter the building} {title_btoa:Leave the building}",
		"The Maw/0 65.61,80.80 <border_in_flight:true> -x- Korthia/0 58.48,13.67 {title_atob:Follow the path up} {title_btoa:Follow the path down} <border_in_flight:true>",
		"The Maw/0 51.53,90.46 <border_in_flight:true> -x- Korthia/0 40.04,25.94 {title_atob:Follow the path up} {title_btoa:Follow the path down} <border_in_flight:true>",

	-- Kalimdor
		"Ashenvale 20.7,15.8 -x- Darkshore 38.8,96.4",
		"Ashenvale 36.8,73.8 -x- Stonetalon Mountains 73.3,40.0",
		"Ashenvale 55.8,28.8 -x- Felwood 54.7,90.8",
		"Ashenvale 68.6,86.8 -x- Northern Barrens 42.8,12.5",
		"Ashenvale 95.4,48.4 -x- Azshara 7.8,69.9",
		"Azshara 26.6,79.2 -x- Orgrimmar 76.5,1.8",
		"Azuremyst Isle 36.9,46.9 -x- The Exodar 88.3,64.9",
		"Azuremyst Isle 42.0,1.5 -x- Bloodmyst Isle 65.5,95.4",
		"Darnassus 77.0,46.4 -x- Teldrassil 38.1,47.5",
		"Desolace 42.5,97.3 -x- Feralas 44.9,2.2",
		"Desolace 54.2,2.9 -x- Stonetalon Mountains 35.7,77.2",
		"Durotar 34.1,42.4 -x- Northern Barrens 69.0,39.0",
		"Durotar 45.5,11.7 -x- Orgrimmar 49.5,93.2",
		"Dustwallow Marsh 28.5,47.2 -x- Southern Barrens 51.6,78.7",
		"Dustwallow Marsh 50.3,94.3 -x- Thousand Needles 72.3,46.6",
		"Felwood 64.3,10.3 -x- Moonglade 35.7,72.5 {name:Timbermaw Hold}",
		"Felwood 64.3,10.3 -x- Winterspring 21.2,46.1 {name:Timbermaw Hold}",
		"Feralas 89.3,36.8 -x- Thousand Needles 10.2,4.7",
		"Mulgore 38.3,33.9 -x- Thunder Bluff 38.1,79.0",
		"Mulgore 67.8,59.9 -x- Southern Barrens 39.8,48.0 {cond:PlayerLevel()>10} {title:Go around the side of the Great Gate}",
		"Northern Barrens 27.3,48.0 -x- Southern Barrens 36.7,4.8",
		--"Northern Barrens 70.2,73.3 -x- The Cape of Stranglethorn 39.0,67.0",  -- this is a ship!!
		"Silithus 86.1,10.6 -x- Un'Goro Crater 29.6,7.4",
		"Silithus 35.9,83.3 -x- Ahn'Qiraj: The Fallen Kingdom 58.2,7.0",
		"Southern Barrens 29.1,9.0 -x- Stonetalon Mountains 79.7,92.6",
		"Southern Barrens 43.3,96.5 -x- Thousand Needles 32.2,20.5",
		"Thousand Needles 75.3,97.0 -x- Tanaris 51.4,22.9",
		"Tanaris 25.9,66.3 -x- Uldum 70.6,22.5",
		"Tanaris/0 25.98,66.23 -x- Uldum New/0 70.51,22.43 {cond:not ZGV.InPhase('OldUldum')}",
		"Tanaris 28.0,51.3 -x- Un'Goro Crater 70.8,91.9",

		"Un'Goro Crater 50.4,7.9 <region:shapers_terrace> -x- Sholazar Basin 40.4,83.0 {mode:PORTAL} {template:portalauto} {cond:PlayerCompletedQuest(12613)}", -- Only if the player completed quest 12613 "Powering the Waygate - The Makers' Overlook"

		"Ammen Vale 23.1,53.5 -x- Azuremyst Isle 67.1,53.8",
		"Valley of Trials 73.4,67.11 -x- Durotar 50.6,68.4",
		"Echo Isles 45.1,42.9 -x- Durotar 63.1,80.7",
		"Camp Narache 26.4,16.1 -x- Mulgore 44.7,71.5",
		"Shadowglen 54.9,86.0 -x- Teldrassil 60.6,44.8",

		"Orgrimmar War Campaign 49.61,93.48 <border_in_flight:true> -x- Durotar War Campaign 30.56,36.13 <border_in_flight:true>",
		"Orgrimmar War Campaign 24.70,66.90 <border_in_flight:true> -x- Durotar 36.83,3.33 <border_in_flight:true>",

	-- Eastern Kingdoms

		"Westfall 61.8,17.8 -x- Elwynn Forest 21.0,79.7",
		"Elwynn Forest 32.27,49.74 <radius:25> -x- Stormwind City 74.1,92.3 <radius:25>", "@+ -x- Stormwind City 66.20,77.18 <title:Stormwind City gates> {cost:5}",
		"Westfall 67.3,62.5 -x- Duskwood 10.6,63.0",
		"Duskwood 44.9,79.2 -x- Northern Stranglethorn 51.3,11.5",
		"Northern Stranglethorn 51.1,69.8 -x- The Cape of Stranglethorn 59.2,24.3",
		"Duskwood 87.7,41.1 -x- Deadwind Pass 34.9,35.6",
		"Deadwind Pass 59.2,41.3 -x- Swamp of Sorrows 16.8,52.0",
		"Swamp of Sorrows 67.5,14.1 -x- Redridge Mountains 90.2,56.7",
		"Swamp of Sorrows 36.2,66.4 -x- Blasted Lands 48.9,10.5",
		"Elwynn Forest 91.2,73.2 -x- Redridge Mountains 13.5,64.3",
		"Redridge Mountains 16.0,69.5 -x- Duskwood 92.9,12.3",
		"Redridge Mountains 43.0,17.0 -x- Burning Steppes 67.3,81.0",
		"Redridge Mountains 64.0,17.5 -x- Burning Steppes 83.9,79.7",
		"Searing Gorge 35.3,83.9 -x- Burning Steppes 20.8,38.2",
		"Searing Gorge 72.7,55.7 -x- Badlands 7.4,52.8",
		--"Badlands 45.8,7.3 -x- Loch Modan 47.0,73.5 {title:Cross the chasm carefully!}", -- point before the chasm
		--"Badlands 45.8,7.3 -x- Loch Modan 48.13,79.19", -- for the climb, point after / in the chasm
		"Dun Morogh 90.0,51.2 -x- Loch Modan 20.8,63.5",
		"Dun Morogh/6 37.3,92.8 -x- Coldridge Valley 73.5,45.2",
		"Loch Modan 13.2,22.2 -x- Dun Morogh 91.7,29.3",
		--"Loch Modan 25.6,10.7 -x- Wetlands 50.1,81.8",
		"Wetlands 51.0,10.2 -x- Arathi Highlands 38.6,91.0",
		"Wetlands 79.0,47.3 -x- Twilight Highlands 24.3,37.4",
		"Arathi Highlands 13.7,31.1 -x- Hillsbrad Foothills 68.4,69.8 {cond:PlayerLevel()>=10 or UnitFactionGroup('player')=='Horde'}", -- gate, with guards (lvl 35), shouldn't be openly suggested for low-level Alliance players.
		"Arathi Highlands 18.3,21.2 -x- Hillsbrad Foothills 74.3,65.2", -- break in wall
		"Arathi Highlands 37.0,29.3 -x-  The Hinterlands/0 26.1,69.9",
		"The Hinterlands 9.7,55.7 -x- Hillsbrad Foothills 73.1,52.8",
		"The Hinterlands 24.3,42.1 -x- Western Plaguelands 65.1,86.5",
		"Hillsbrad Foothills 65.6,25.9 -x- Western Plaguelands 43.5,88.1",
		"Silverpine Forest 69.4,80.5 -x- Hillsbrad Foothills 29.4,63.3",
		"Silverpine Forest 64.9,8.4 -x- Tirisfal Glades 53.9,77.1",
		"Tirisfal Glades 84.6,70.3 -x- Western Plaguelands 29.7,57.3",
		"Western Plaguelands 69.1,50.2 -x- Eastern Plaguelands 9.3,66.1",
		"Ghostlands 47.8,13.9 -x- Eversong Woods 48.5,90.4",
		"Eversong Woods 56.4,52.0 -x- Silvermoon City 72.7,86.0",
		"Dun Morogh 60.46,33.35 <border_in_flight:true> -x- Ironforge 18.02,82.20 <border_in_flight:true> {title_atob:Enter Ironforge through the gate} {title_btoa:Leave Ironforge through the gate}",
		--"Tirisfal Glades 61.9,65.0 -x- Undercity 66.3,6.8",
		"Tirisfal Glades 61.9,65.0 -x- Tirisfal Glades 61.85,65.2 <region:undercitycourt>",
		"Tirisfal Glades 61.85,69.5 <region:undercitycourt> <border_in_flight:true> -x- Undercity 66.3,25.3 <border_in_flight:true> {title_atob:Enter Undercity and take an elevator down} {title_btoa:Take an elevator up and leave Undercity}",

		"Tirisfal Glades 51.1,71.6 <border_in_flight:true> -x- Undercity 15.2,33.3 <region:undercityaccess> <border_in_flight:true> {mode:FLY} {title_atob:Enter Undercity through the tunnel} {title_btoa:Leave Undercity through the tunnel}",
		"Undercity 43.4,24.0 <region:undercityaccess> <border_in_flight:true> -x- Undercity 49.6,29.5 <border_in_flight:true> {mode:FLY} {title_atob:Enter Undercity through the tunnel} {title_btoa:Leave Undercity through the tunnel}",

		"Silverpine Forest 45.3,85.7 -x- Ruins of Gilneas 60.2,9.6",
		"Twilight Highlands 24.0,37.3 -x- Wetlands 80.0,47.9",

		"Tol Barad Peninsula 66.73,82.02 -x- Tol Barad 40.95,18.53",

		"Coldridge Valley 73.5,45.7 -x- Dun Morogh 38.3,70.9",
		"New Tinkertown 79.6,56.7 -x- Dun Morogh 49.1,45.5",
		"Deathknell 81.4,14.4 -x- Tirisfal Glades 39.3,55.4",
		"Northshire 23.8,76.7 -x- Elwynn Forest 45.5,48.7",
		"Sunstrider Isle 64.8,74.9 -x- Eversong Woods 39.3,30.8",

		"Dun Morogh 02.0,28.0 -x- Kelp'thar Forest 71.0,63.0 {mode:FLY} {cond:LibRover.HasAchievement(890)}", -- anyone can fly this one, really
		"Eastern Kingdoms 40.34,69.07 @sw_lighthouse -x- Stormwind City 0,0",
		"@sw_lighthouse -x- Shimmering Expanse 70.0,74.0 {mode:FLY} {cond:LibRover.HasAchievement(5180)}", -- only for epic flyers!
		"Ruins of Gilneas 72.77,99.94 -x- Dun Morogh 35.08,2.95 {mode:FLY} {cond:LibRover.HasAchievement(890)}", -- TODO: try on a normal flyer
		"Gilneas 3/0 67.61,42.38 -x- Gilneas City 66.26,20.93",
		--"Gilneas City 7.7,71.5 -x- 679/0 49.87,57.17", -- rat filled tunnel

		-- some extra points to help mounted flight over bays - note: not all zones on Eastern see each other!! Fatigue prevention!
		"Arathi Highlands 86,74 {mode:FLY} {cond:LibRover.HasAchievement(890)} @arathi001",  -- skip a Twilight-Arathi flyaround
		"Arathi Highlands 20,90 {mode:FLY} {cond:LibRover.HasAchievement(890)} @arathi002",  -- skip a Arathi-Wetlands flyaround

		--Booty Bay tunnel
			"The Cape of Stranglethorn 42.5,67.1 <region:booty_bay> <radius:5> -x- The Cape of Stranglethorn 44.9,66.0 <radius:5> {template:longtunnel}",

		--Loch Modan / Wetlands cross
			"Loch Modan 25.6,10.5",
			"@+ -x- Loch Modan 25.3,0.2 <radius:5> <dark:1>",
			"@+ -x- Wetlands 55.1,83.5 <radius:5> <dark:1> <cost:0>",
			"@+ -x- Wetlands 50.7,82.6 <radius:5> <dark:1> <cost:0>",
			"@+ -x- Wetlands 50.2,78.3 <radius:5> <dark:1> <cost:0>",
			"@+ -x- Wetlands 50.1,71.6 <radius:5> <dark:1> <cost:0>",
			"@+ -x- Wetlands 50.1,71.6 <radius:5> <dark:1> <cost:0>",
			"@+ -x- Wetlands 49.3,70.6 <radius:5> <dark:1> <cost:0>",
			"@+ -x- Wetlands 53.9,70.3 <radius:5> <dark:1> <cost:0>",
			"@+ -x- Wetlands 54.4,70.3 <radius:15>",

		-- Loch Modan / Badlands cross
			"Badlands 45.8,7.3",
			"@+ -x- Loch Modan 48.13,79.19 <radius:10> <dark:1>",  -- @+ means "last one added", it's a nightmare, I know.
			--"@+ -x- Loch Modan 47.15,78.55 <radius:5> <dark:1>",
			--"@+ -x- Loch Modan 48.22,78.08 <radius:5> <dark:1>",
			"@+ -x- Loch Modan 48.21,77.16 <radius:5> <dark:1>",
			"@+ -x- Loch Modan 47.28,76.00 <radius:5> <dark:1>",
			--"@+ -x- Loch Modan 48.32,76.41 <radius:5> <dark:1>",
			--"@+ -x- Loch Modan 46.96,73.77 <radius:5> <dark:1>",
			"@+ -x- Loch Modan 47.21,73.40 <radius:5>",

		-- Badlands details
			-- Fuselight-by-the-sea teleport
			"Badlands 72.1,31.6 -x- Badlands 75.6,33.2", --access
			"Badlands 82.8078,33.9781 -x- Badlands 88.0642,32.4937 {fac:A} {mode:PORTAL} {template:transporter}",
			-- Fuselight entrances
			"Badlands 60.7,28.3 -x- Badlands 62.8,35.7 <region:fuselight>",
			"Badlands 68.7,30.9 -x- Badlands 66.7,36.3 <region:fuselight>",


	-- Outlands

		"Blade's Edge Mountains 28.5,93.9 -x- Zangarmarsh 43.3,27.5 {fac:A}",
		"Blade's Edge Mountains 52.0,98.8 -x- Zangarmarsh 68.7,32.9 {fac:H}",
		"Blade's Edge Mountains 82.5,28.7 -x- Netherstorm 20.0,56.1",
		"Hellfire Peninsula 31.1,92.2 -x- Terokkar Forest 58.3,19.3",
		"Hellfire Peninsula 4.7,50.6 -x- Zangarmarsh 83.0,65.5",
		"Nagrand 34.0,13.0 -x- Zangarmarsh 21.0,70.5",
		"Nagrand 74.1,32.9 -x- Zangarmarsh 74.1,32.6",
		"Nagrand 77.9,82.6 -x- Terokkar Forest 20.3,55.6",
		"Nagrand 78.3,54.5 -x- Shattrath City 12.8,56.4",
		"Shadowmoon Valley 18.0,23.7 -x- Terokkar Forest 71.3,50.4",
		"Shattrath City 76.2,77.3 -x- Terokkar Forest 36.0,31.9",
		"Shattrath City 88.0,45.0 -x- Terokkar Forest 38.9,24.1",
		"Terokkar Forest 32.3,4.7 -x- Zangarmarsh 82.2,92.5",

	-- Northrend

		"Borean Tundra 52.8,7.0 -x- Sholazar Basin 32.2,91.4",
		"Borean Tundra 78.9,53.6 -x- Dragonblight 48.0,78.7",
		"Borean Tundra 93.7,35.8 -x- Dragonblight 8.2,54.9",
		"Crystalsong Forest 46.1,71.7 -x- Dragonblight 61.3,10.1",
		"Crystalsong Forest 58.2,33.2 -x- Icecrown 89.1,84.3",
		"Crystalsong Forest 63.6,44.3 -x- The Storm Peaks 30.0,94.8",
		"Crystalsong Forest 86.3,44.3 -x- The Storm Peaks 38.6,94.8",
		"Crystalsong Forest 97.1,58.5 -x- Zul'Drak 12.0,66.9",
		"Dragonblight 48.0,78.7 -x- Borean Tundra 78.9,53.6",
		"Dragonblight 49.6,78.4 -x- Howling Fjord 23.5,57.8",
		"Dragonblight 89.0,24.0 -x- Zul'Drak 15.4,89.7",
		"Dragonblight 92.0,30.8 -x- Grizzly Hills 8.1,31.2",
		"Dragonblight 93.2,64.0 -x- Grizzly Hills 9.4,66.7",
		"Grizzly Hills 33.7,81.3 -x- Howling Fjord 24.5,11.3",
		"Grizzly Hills 67.3,70.0 -x- Howling Fjord 53.7,1.3",
		"Grizzly Hills 87.9,69.9 -x- Howling Fjord 71.6,1.3",
		"Grizzly Hills 43.0,25.3 -x- Zul'Drak 55.4,91.1",
		"Grizzly Hills 58.7,13.8 -x- Zul'Drak 71.9,79.1",
		--"Sholazar Basin 40.4,83.0 -x- Un'Goro Crater 50.4,7.9",

	-- Pandaria

		"Krasarang Wilds 15.0,36.2 -x- Valley of the Four Winds 10.7,84.3",
		"Valley of the Four Winds 82.1,50.7 -x-  Krasarang Wilds 74.5,4.0",
		"Valley of the Four Winds 70.1,22.8 -x- The Veiled Stair 56.6,81.5", --(This is a stairway and path to go up and down the mountain).
		"Townlong Steppes 60.9,83.9 -x- Dread Wastes 45.2,8.8", -- (This is a huge fallen tree that acts as a bridge between the two zones).
		"Townlong Steppes 76.0,91.9 -x- Dread Wastes 64.2,10.9", -- (Big open area from TS to DW
		"Valley of the Four Winds 71.2,20.4 -x- The Veiled Stair 51.7,93.6",
		"Kun-Lai Summit 73.3,94.6 -x- The Veiled Stair 31.1,1.7", --Long cave. Cave entrence is 73.3,94.6 in Kun-Lai and The Veiled Stair 50.0,39.6
		"The Jade Forest 33.6,64.7 -x- Valley of the Four Winds 90.6,17.7",
		"Townlong Steppes 71.0,42.8 -x- Kun-Lai Summit 29.5,64.4", -- Ox Gate

		"Kun-Lai Summit 45.05,99.98 <subtype:door> <radius:2> -x- Kun-Lai Summit 44.8,90.0 <subtype:door> <radius:15> <region:totopofwallKLS> <title:Go down the stairs>",
		"Kun-Lai Summit 44.50,89.06 <subtype:door> <radius:2> -x- Kun-Lai Summit 44.50,89.15 <subtype:door> <radius:20> <region:totopofwallKLS> <title:Go down the stairs>",
		"Kun-Lai Summit 44.3,89.9 <radius:20> <region:totopofwallKLS> <title:Go up the stairs> -x- Kun-Lai Summit 44.1,89.9 <radius:5> <region:topofthewallKLS>",
		"Kun-Lai Summit 44.5,90.3 <radius:20> <region:totopofwallKLS> <title:Go up the stairs> -x- Kun-Lai Summit 44.5,90.6 <radius:5> <region:topofthewallKLS>",

		"Valley of the Four Winds 12.3,33.8 <region:topofthewallVFW> -x- Vale of Eternal Blossoms 11.8,99.9 <region:topofthewallVEB>",

		"Kun-Lai Summit 55.5,93.0 -x- Vale of Eternal Blossoms 44.1,12.8 {cond:PlayerCompletedQuest(31512)}", -- Quest 31512 "A Witness to History" opens access to the Vale. --Alliance actually get the ability to do this border during the quest... Lets see how it works.
		"Kun-Lai Summit 55.5,93.0 -x- Vale of Eternal Blossoms 44.1,12.8 {cond:PlayerCompletedQuest(31511)}", -- Horde variant of the above.
		"Kun-Lai Summit/0 55.54,92.77 -x- Vale of Eternal Blossoms New/0 44.12,10.42 {cond:not ZGV.InPhase('OldVale')}",

		-- And now some stuff to appease the groundwalkers.
		"The Jade Forest 44.46,89.43 -x- The Jade Forest 44.22,88.43",  -- Garrosh'ar point
		"The Jade Forest 45.66,85.82 -x- The Jade Forest 47.06,87.95",  -- paw'don bridge
		"Vale of Eternal Blossoms New/0 57.48,38.78 -x- Pools of Power/0 12.61,74.17",
		--"Vale of Eternal Blossoms/0 80.48,31.95 -x- Vale of Eternal Blossoms New/0 80.97,29.48"..
			--"{title_atob:Talk to Zidormi\nAsk her |cfff0e081\"Can you return me to the present time?\"|r}"..
			--"{title_btoa:Talk to Zidormi\nAsk her |cfff0e081\"Can you show me what the Vale was like before the Black Empire assault?\"|r}",


		--Shrine of 7 Stars is a  micro dungeon right now... Yes Shrine of 2 Moons is it's own map..
		--Panda Land cities are all in micro dungeons to make them walk borders.

	-- Draenor
	
		"Talador 29.7,56.3 -x- Nagrand D 92.4,72.2",
		"Talador 69.9,0.7 -x- Gorgrond 41.6,95.2",
		"Talador 81.0,58.2 -x- Shadowmoon Valley D 18.9,12.2",
		"Talador 41.9,98.3 -x- Spires of Arak 22.2,21.3",
		"Talador 57.07,91.08 -x- Spires of Arak 37.3,14.4",

		"Spires of Arak 65.2,18.6 -x- Shadowmoon Valley D 23.0,45.4",
		"Gorgrond 35.9,78.3 -x- Frostfire Ridge 87.9,72.4",
		"Warspear 48.3,80.9 -x- Ashran 42.0,23.4",

	-- Broken Isles

		"Stormheim/0 27.03,38.40 -x- Highmountain/0 59.65,68.94",
		"Stormheim/0 33.66,76.69 -x- Suramar/0 64.23,34.17",
		"Highmountain/0 26.63,63.74 -x- Val'sharah/0 69.35,27.81",
		"Suramar/0 21.54,64.00 -x- Azsuna/0 66.70,18.43",
		"Suramar/0 26.35,74.16 -x- Azsuna/0 69.65,25.89",
		"Val'sharah/0 68.19,66.37 -x- Suramar/0 15.07,24.92",
		"Val'sharah/0 58.69,92.08 -x- Azsuna/0 52.60,5.89",

		"Tirisfal Glades/0 15.18,56.28 -x- Tirisfal Glades/25 37.57,12.44 {title_atob:Enter the underwater cave} {title_btoa:Leave the underwater cave}",

	-- Kul Tiras

		"Tiragarde Sound/0 66.46,8.59 -x- Stormsong Valley/0 57.86,86.01",
		"Tiragarde Sound/0 52.50,53.79 -x- Drustvar/0 73.16,41.94",
		"Tiragarde Sound/0 43.00,32.46 -x- Drustvar/0 61.03,14.85",

		"Tiragarde Sound/0 67.00,25.63 -x- Boralus/0 43.63,32.47",
		"Tiragarde Sound/0 68.99,24.52 -x- Boralus/0 49.56,19.38",
		"Tiragarde Sound/0 76.83,38.93 -x- Boralus/0 79.25,76.18",

		"Tiragarde Sound/0 74.42,23.89 -x- Boralus/0 70.34,17.93", -- Sanctum of the Sages; this should be fixed ingame...

		"Boralus/0 39.93,48.02 -x- Boralus/0 39.93,53.56 {fac:A}",
		"Boralus/0 56.90,51.39 -x- Boralus/0 57.95,56.63 {fac:A}",
		
		"Drustvar 59.66,36.80", -- bridge nav point
		"Tiragarde Sound/0 45.86,28.33",
		"Tiragarde Sound/0 43.82,24.00",
		"Tiragarde Sound/0 37.62,22.61",

		"Tiragarde Sound/0 99.55,47.62 -x- Tol Dagor Isle/0 4.42,84.04 {title:Enter the Garrison}",

	-- Zandalar

		"Zuldazar/0 46.15,20.37 -x- Nazmir/0 31.13,93.94",
		"Zuldazar/0 53.73,18.59 -x- Nazmir/0 43.48,91.08",
		"Zuldazar/0 57.99,17.45 -x- Nazmir/0 50.35,89.21",
		"Nazmir/0 16.08,69.41 -x- Vol'dun/0 59.87,71.20",
		"Nazmir/0 21.23,47.85 -x- Vol'dun/0 63.89,54.52",
		"Nazmir/0 23.82,34.07 -x- Vol'dun/0 65.77,44.08",
		"Nazmir/0 27.67,25.68 -x- Vol'dun/0 68.96,37.37",

	-- The Maw -x- Pit of Anguish
		"The Maw/0 54.62,80.06 <radius:15> -x- Pit of Anguish/1 46.35,25.54 <radius:15> {title_atob:Enter the Cave} {title_btoa:Leave the Cave}",
		
}

