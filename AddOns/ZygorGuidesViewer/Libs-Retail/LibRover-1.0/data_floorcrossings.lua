local name,addon = ...

addon.LibRoverData = addon.LibRoverData or {}
local data=addon.LibRoverData

data.basenodes.FloorCrossings = {

	
	-- DRAGONFLIGHT
		["The Azure Span"] = {
			"The Azure Span/0 34.03,30.81 <radius:15> -x- The Azure Span/1 35.06,90.20 <radius:10> {title_atob:Enter the cave} {title_btoa:Leave the cave}",		-- Kargpaw's Den (Main Entrance)
			"The Azure Span/0 34.96,30.01 <radius:15> -x- The Azure Span/1 53.14,82.77 <radius:10> {title_atob:Enter the cave} {title_btoa:Leave the cave}",		-- Kargpaw's Den (Side Entrance)
		},
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	-- SHADOWLANDS

		
		["Zereth Mortis"] = {
			"Zereth Mortis/0 63.67,73.70 -x- Blooming Foundry/0 28.07,11.88 <radius:10> {title_atob:Enter the building} {title_btoa:Leave the building}",
			"Zereth Mortis/0 49.57,77.80 -x- Catalyst Wards/0 23.06,12.02 <radius:10> {title_atob:Enter the building} {title_btoa:Leave the building}",
			"Zereth Mortis/0 65.90,20.94 -x- Crypts of the Eternal/0 31.18,86.86 <radius:10> {title_atob:Enter the building} {title_btoa:Leave the building}",
			"Zereth Mortis/0 55.72,53.46 -x- Locrian Esper/0 13.87,34.86 <radius:10> {title_atob:Enter the building} {title_btoa:Leave the building}",
			"Zereth Mortis/0 50.57,32.08 -x- Gravid Repose/0 69.62,9.03 <radius:10> {title_atob:Enter the building} {title_btoa:Leave the building}",
			"Zereth Mortis/0 58.10,44.33 -x- Nexus of Actualization/0 31.16,61.21 <radius:10> {title_atob:Enter the building} {title_btoa:Leave the building}",
		},


		["The Maw"] = {
			"The Maw/0 23.01,68.40 -x- Altar of Domination/0 89.73,34.52 {title_atob:Enter the building} {title_btoa:Leave the building}",
			"The Maw/0 27.87,20.52 -x- Extractor's Sanatorium/0 19.94,73.08 {title_atob:Enter the building} {title_btoa:Leave the building}",
			"The Maw/0 65.61,80.80 <border_in_flight:true> -x- Korthia/0 58.48,13.67 {title_atob:Follow the path up} {title_btoa:Follow the path down} <border_in_flight:true>",
			"The Maw/0 51.53,90.46 <border_in_flight:true> -x- Korthia/0 40.04,25.94 {title_atob:Follow the path up} {title_btoa:Follow the path down} <border_in_flight:true>",
		},


		["Korthia"] = {
				"Korthia/0 60.15,31.97 <radius:15> -x- Caverns of Contemplation/0 42.59,88.16 <radius:15> {title_atob:Enter the cave} {title_btoa:Leave the cave}",
				"Korthia/0 30.15,55.13 <radius:15> -x- Gromit Hollow/0 65.79,35.02 <radius:15> {title_atob:Enter the cave} {title_btoa:Leave the cave}",
		},


		["Oribos"] = {
			-- The Idyllia, Oribos -x- Downstairs, Oribos --
				"Oribos/0 70.72,40.59 <radius:15> -x- Oribos/2 55.71,28.17 <radius:15> {title_atob:Run down the stairs} {title_btoa:Run up the stairs}",
			-- The Idyllia, Oribos -x- Downstairs, Oribos --
				"Oribos/0 70.50,59.94 <radius:15> -x- Oribos/2 55.63,71.15 <radius:15> {title_atob:Run down the stairs} {title_btoa:Run up the stairs}",
		},


		["Bastion"] = {
			-- Kalliope's Rest, Bastion -x- Third Chamber of Kalliope, Bastion --
				"Bastion/0 43.52,38.60 <radius:15> -x- Third Chamber of Kalliope/0 25.68,88.78 <radius:15> {title_atob:Enter the building} {title_btoa:Leave the building} "..
				"{cond:PlayerCompletedQuest(57875) and PlayerCompletedQuest(57914)}",
				"Bastion/0 44.03,24.70 -x- Path of Wisdom/0 48.04,90.71 {title_atob:Enter the building} {title_btoa:Leave the building}",
		},


		["Pit of Anguish"] = {
			-- Pit of Anguish (Upper) -x- Pit of Anguish (Lower)
				"Pit of Anguish/1 51.81,27.65 <radius:15> -x- Pit of Anguish/0 52.09,26.31 <radius:15> {title_atob:Run down the ramp} {title_btoa:Run up the ramp}",

			-- Pit of Anguish (Upper - Chain) -to- Pit of Anguish (Lower)
				"Pit of Anguish/1 49.83,48.55 <radius:5> -to- Pit of Anguish/0 52.07,54.46 <radius:15> {title:Click the Chain}",

			-- Pit of Anguish (Lower - Chain) -to- Pit of Anguish (Upper)
				"Pit of Anguish/0 60.47,54.08 <radius:5> -to- Pit of Anguish/1 60.66,51.99 <radius:15> {title:Click the Chain}",
		},


		["Maldraxxus"] = {
			
			-- Seat of the Primus Building Entrance/Exit --
				"Maldraxxus/0 50.39,68.04 <radius:7> -x- Seat of the Primus/0 49.68,13.66 <radius:7> {title_atob:Enter the building} {title_btoa:Leave the building}",
			
			-- Sightless Hold Building Entrance/Exit --
				"Maldraxxus/0 54.08,12.25 <radius:6> -x- Sightless Hold/0 42.06,82.99 <radius:6> {title_atob:Enter the building} {title_btoa:Leave the building}",
			
			-- Etheric Vault Building Entrance/Exit --
				"Maldraxxus/0 24.45,31.55 <radius:6> -x- Etheric Vault/0 62.64,69.18 <radius:6> {title_atob:Enter the building} {title_btoa:Leave the building}",
		},

		["Elysian Hold"] = {
			
			-- Elysian Hold Building Entrance/Exit
				"Elysian Hold/0 50.86,49.18 <radius:10> -x- Elysian Hold/0 53.12,45.76 <radius:10> {title_atob:Enter the building} {title_btoa:Leave the building}",
				"@+ <radius:10> -x- Elysian Hold/1 55.68,42.09 <radius:10> {title_atob:Run down the stairs} {title_btoa:Run up the stairs}",
		},

		["Heart of the Forest"] = {
			
			-- Heart of the forest upstairs/downstairs
				"Heart of the Forest/0 45.23,47.01 <radius:10> -x- Heart of the Forest/1 45.81,71.75 <radius:10> {title_atob:Run down the ramp} {title_btoa:Run up the ramp}",
		},
		
	-- BATTLE FOR AZEROTH
		["Mechagon City"] = {

			-- Winterchill Mine, Indoor Floor Cross
				"Mechagon City/0 20.46,17.96 -x- Mechagon City/1 62.37,78.95 {title_atob:Run up the ramp} {title_btoa:Run down the ramp}",
		},

		["Halls of Origination S"] = {

			-- Winterchill Mine, Indoor Floor Cross
				"Halls of Origination S/1 24.68,49.39 -x- Halls of Origination S/0 89.82,49.78 {title_atob:Run down the stairs} {title_btoa:Run up the stairs}",
		},

		["Tiragarde Sound"] = {

			-- Gol Thovas, Cave Entrance
				"Tiragarde Sound/0 62.88,27.37 -x- Tiragarde Sound/1 44.28,88.13 {template:cave}",
	
			-- Gol Thovas, Indoor Floor Cross
				"Tiragarde Sound/1 50.95,47.91 -x- Tiragarde Sound/2 36.75,55.63 {title_atob:Follow the path up} {title_btoa:Follow the path down}",

			-- Winterchill Mine, Cave Entrance
				"Tiragarde Sound/0 78.77,53.26 -x- Tiragarde Sound/4 39.98,34.23 {template:cave}",

			-- Winterchill Mine, Indoor Floor Cross
				"Tiragarde Sound/4 47.06,61.74 -x- Tiragarde Sound/3 55.34,30.26 {title_atob:Follow the path up} {title_btoa:Follow the path down}",
		},

	-- Old Dalaran
		["Dalaran"] = {
			 --Underbelly, a few entries. Cost to adjust which gets used for each part of the city.
			"Dalaran/1 35.0,45.3 <radius:5> -x- Dalaran/2 34.4,43.4 <region:underbelly> <radius:5> {template:tunnel}",
			"@+ -x- Dalaran/1 38.8,45.1 <region:underbelly> ",
			"@+ -x- Dalaran/2 34.3,43.3",
			"Dalaran/1 60.2,47.7 <radius:5> -x- Dalaran/2 64.3,48.6 <region:underbelly> <radius:5> {template:tunnel} {cost:4}",
			"@+ -x- Dalaran/1 38.8,45.1 <region:underbelly> ",
			"@+ -x- Dalaran/2  64.4,48.6",
			"Dalaran/1 48.1,32.7 <radius:2> <title:Dalaran Well> -to- Dalaran/2 44.3,25.2 {cost:8}",

			--[[
			"Dalaran/1 34.89,45.42 <title:Western sewer entrance> -x- Dalaran/1 31.59,45.56 <onlyhardwire_qq:1> <title:Western sewer entrance midpoint> <region:underbelly> {cost:0}",
			"@+ -x- Dalaran/2 34.28,43.57 <title:Western sewer exit> {cost:0}",
			"Dalaran/1 60.28,47.77 <title:Eastern sewer entrance> -x- Dalaran/1 62.68,51.37 <onlyhardwire_qq:1> <title:Eastern sewer entrance midpoint> <region:underbelly> {cost:0}",
			"@+ -x- Dalaran/2 64.16,48.00 <title:Eastern sewer exit> {cost:0}",
			--]]
		},

		[762] = { -- Scarlet Monastery - has to stay numeric! - this is funny, yes, it should be empty: floors are wings, inaccessible from each other. Rely on normal entrance/exit paths.
		},

	-- Kalimdor

		["Azuremyst Isle"] = {
			"Azuremyst Isle/0 27.01,76.61 <radius:10> -x- Azuremyst Isle/2 58.76,85.37 <radius:10> {template:cave}", -- Tides' Hollow, Azuremyst Isle
			"Azuremyst Isle/0 45.34,19.54 <radius:10> -x- Azuremyst Isle/3 21.11,91.45 <radius:10> {template:cave}", -- Stillpine Hold, Azuremyst Isle
		},
		["Desolace"] = {
			"Desolace/0 29.09,62.55 <radius:8> -x- Desolace/21 22.85,43.46 <radius:10> {title:Click the Stone Door}", -- Wicked Grotto, Desolace (Mauradon entrance) **Only Way to Get To Felspore Cavern**
			"Desolace/21 28.36,42.60 <radius:8> -x- Desolace/22 48.27,88.67 <radius:8> {template:cave}", -- Felspore Cavern, Desolace (Mauradon inner cave)
			"Desolace/21 27.07,35.72 <radius:8> -x- Desolace/22 46.12,77.70 <radius:8> {template:cave}", -- Felspore Cavern, Desolace (Mauradon  inner cave)
		},
		["Durotar"] = {
			"Durotar/0 54.99,9.67 <radius:8> -x- Durotar/12 84.13,53.61 <radius:8> {template:cave}", -- Skull Rock, Durotar
			"Valley of Trials/0 52.87,21.89 <radius:8> -x- Durotar/0 45.35,56.32 <radius:8> {template:cave}", -- Valley of Trials to Durotar buffer map for Burning Blade Coven, Valley of Trials (Durotar)
			"Durotar/0 45.40,56.21 <radius:8> -x- Durotar/8 72.48,89.43 <radius:8> {template:cave}", -- Buffer map to Burning Blade Coven, Valley of Trials (Durotar)
			"Durotar/0 58.94,58.31 <radius:6> -x- Durotar/10 34.55,52.42 <radius:6> {template:building}", -- Tiragarde Keep entrance, Durotar
			"Durotar/10 42.89,29.82 <radius:5> -x- Durotar/11 33.16,37.87 <radius:5> {title_atob:Run up the ramp} {title_btoa:Run down the ramp}", -- Tiragarde Keep Great Hall, Durotar (Upstairs)
			"Durotar/10 56.68,19.13 <radius:5> -x- Durotar/11 64.23,26.68 <radius:5> {title_atob:Go up the stairs} {title_btoa:Go down the stairs}", -- Tiragarde Keep Rampart stair, Durotar (Upstairs)
			"Durotar/11 58.23,21.18 <radius:3> -x- Durotar/0 59.65,57.68 <radius:3> {title:Follow the path}", -- Tiragarde Keep Rampart doorway, Durotar (Upstairs)
			"Durotar/0 52.83,28.69 <radius:6> -x- Durotar/19 49.95,91.36 <radius:6> {template:cave}", -- Dustwind Cave, Durotar
		},
		["Echo Isles"] = {
			"Echo Isles/0 59.11,22.33 <radius:10> -x- Echo Isles/9 54.16,80.12 <radius:10> {template:cave}", -- Spitescale Cavern, Echo Isles (Durotar)
		},
		["Mulgore"] = {
			"Mulgore/0 35.00,61.35 <radius:10> -x- Mulgore/6 74.75,55.62 <radius:10> {template:cave}", -- Palemane Rock
			"Mulgore/0 60.74,47.59 <radius:10> -x- Mulgore/7 40.15,89.72 <radius:10> {template:mine}", -- The Venture Co. Mine (East)
			"Mulgore/0 59.19,36.39 <radius:10> -x- Mulgore/7 29.55,13.58 <radius:8> {template:mine}", -- The Venture Co. Mine (West)
			"Mulgore/0 59.19,44.16 <radius:10> -x- Mulgore/7 28.50,65.33 <radius:10> {template:mine}", -- The Venture Co. Mine (Middle)
		},
		["Northern Barrens"] = {
			"Northern Barrens/0 38.97,69.42 <radius:10> -x- Northern Barrens/20 22.61,87.96 <radius:10> {template:cave}", -- Wailing Caverns cave entrance, Northern Barrens
		},
		["Orgrimmar"] = {
			"Orgrimmar/1 55.98,51.39 <radius:15> -x- Orgrimmar/2 77.67,15.09 <radius:15> {template:cave}", -- The Drag, Orgrimmar (East)
			"Orgrimmar/1 42.18,61.25 <radius:10> -x- Orgrimmar/2 24.27,73.65 <radius:10> {template:cave}", -- The Drag, Orgrimmar (West)
		},
		["Silithus"] = {
			"Silithus/0 70.4,15.9 -x- Silithus/13 15.1,70.0 {template:cave}", -- Twilight's Run
		},
		["Tanaris"] = {
			"Tanaris/0 35.3,42.6 -x- Tanaris/15 55.9,36.4 {template:tunnel}", -- The Noxious Lair
			"Tanaris/0 34.8,41.6 -x- Tanaris/15 50.4,25.1 {template:tunnel}", -- The Noxious Lair
			"Tanaris/0 34.5,42.4 -x- Tanaris/15 47.5,33.6 {template:tunnel}", -- The Noxious Lair
			"Tanaris/0 54.5,69.8 -x- Tanaris/16 42.2,39.4 {template:tunnel}", -- The Gaping Chasm
			"Tanaris/0 55.5,68.2 -x- Tanaris/16 51.5,24.3 {template:tunnel}", -- The Gaping Chasm
			{ {"Tanaris/0 64.9,50.0",radius=20,actiontitle=function(self,fromnode,tonode) if tonode==self.border then return "Enter Caverns of Time" else return "Exit Caverns of Time" end end},
			   {"Tanaris/17 53.3,29.4",actiontitle=function(self,fromnode,tonode) if fromnode and fromnode.m==self.m and fromnode.f==self.f then return "Go up the spiral tunnel" end end, actionicon=function(self,fromnode,tonode) if fromnode and fromnode.m==self.m and fromnode.f==self.f then return "upstairs" end end} }, -- Caverns of Time2
			{ {"Tanaris/17 36.8,75.0",radius=20,actiontitle=function(self,fromnode,tonode) if fromnode and fromnode.m==self.m and fromnode.f==self.f then return "Go down the spiral tunnel" end end, actionicon=function(self,fromnode,tonode) if fromnode and fromnode.m==self.m and fromnode.f==self.f then return "downstairs" end end} ,
			"Tanaris/18 61.8,52.4" }, -- Caverns of Time2
			--[[  Detailed waypoints through the CoT tunnel. Obsolete, kindish.
			"Tanaris/17 56,27 -x- Tanaris/17 59,28 {title:Traverse the Timeless Tunnel}",
			"@+ -x- Tanaris/17 66,29 {title:Traverse the Timeless Tunnel}",
			"@+ -x- Tanaris/17 68,18 {title:Traverse the Timeless Tunnel}",
			"@+ -x- Tanaris/17 49,20 {title:Traverse the Timeless Tunnel}",
			"@+ -x- @cot_tunnel_17to18 {title:Traverse the Timeless Tunnel}",
			--]]
		},
		["Teldrassil"] = {
			"Teldrassil/0 45.6,50.6 @teldrbanethila0 -x- Teldrassil/4 52.6,15.5 @teldrbanethila4 {template:barrow}", -- Banethil Barrow Den (Upper Den)
			"Teldrassil/4 24.6,86.0 @teldrbanethilb4 -x- Teldrassil/5 29.9,76.4 @teldrbanethilb5 {title_atob:Descend into Lower Den} {title_btoa:Ascend to Upper Den}", -- Banethil Barrow Den (Lower Den)
			"Teldrassil/4 54.2,36.5 @teldrbanethilc4 -x- Teldrassil/5 46.7,39.7 @teldrbanethilc5 {title_atob:Descend into Lower Den} {title_btoa:Ascend to Upper Den}", -- Banethil Barrow Den (Lower Den)
			"@teldrbanethila4 -x- @teldrbanethilb4 {replace:1}",
			"@teldrbanethilb4 -x- @teldrbanethilc4 {replace:1}",
			"@teldrbanethilc4 -x- @teldrbanethila4 {replace:1}",
			"Teldrassil/4 25.9,34.2 @teldrbanethil4up <onlyhardwire:1>",
			"Teldrassil/4 38.8,56.8 @teldrbanethil4x <onlyhardwire:1>",
			"@teldrbanethil4up -x- @teldrbanethila4 {dontsetborder:1}",
			"@teldrbanethil4up -x- @teldrbanethil4x {dontsetborder:1}",
			"@teldrbanethil4x -x- @teldrbanethilb4 {dontsetborder:1}",
			"@teldrbanethil4x -x- @teldrbanethilc4 {dontsetborder:1}",

			"Teldrassil/0 54.5,46.3 -x- Teldrassil/3 77.6,81.7 {template:cave}", -- Fel Rock
			"Shadowglen/0 39.3,30.4 -x- Teldrassil/2 45.4,90.3 {template:cave}", -- Shadowthread Cave
		},

	-- Eastern Kingdoms

		["Badlands"] = {
			"Badlands/0 41.6,11.6 -x- Badlands/18 75.6,36.5 {template:cave}", --Uldaman Entrance
		},
		["Burning Steppes"] = {
			"Burning Steppes/0 21.0,38.0 -x- Burning Steppes/14 49.50,88.66", -- Blackrock Spire south entrance
			"Burning Steppes/14 72.0,43.2 -x- Burning Steppes/15 60.5,27.8", -- Blackrock Caverns foyer
			"Burning Steppes/14 66.8,60.7 -x- Burning Steppes/15 41.7,79.6", -- Blackrock Caverns foyer north
			"Burning Steppes/14 46.8,50.8 -x- Burning Steppes/16 58.2,88.5", -- Blackrock Depths chain
		},
		["Coldridge Valley"] = {
			"Coldridge Valley/0 51.3,82.5 -x- Coldridge Valley/9 14.4,50.1  {template:cave}", -- Frostmane Hovel
		},
		["Deathknell"] = {
			"Deathknell/0 29.7,30.7 -x- Deathknell/12 87.3,52.0 {template:building}", -- Night's Web Hollow
		},
		["Dun Morogh"] = {
			"Dun Morogh/0 48.9,52.6 -x- Dun Morogh/7 60.4,77.0 {template:cave}",  -- Grizzled Den
			"Dun Morogh/0 42.7,64.1 -x- Dun Morogh/6 60.6,11.0",  -- Coldridge Pass
			"Dun Morogh/0 41.1,70.0 -x- Dun Morogh/6 38.0,91.1", -- Coldridge Pass
			"Dun Morogh/10 79.5,84.2 -x- New Tinkertown/0 32.6,37.0", --Gnome Starter
			"Dun Morogh/0 77.8,55.1 -x- Dun Morogh/11 39.6,84.2 {template:cave}", -- Gol'Bolar Quarry Mine
		},
		["Eastern Plaguelands"] = {
			"Eastern Plaguelands/0 75.37,52.73 -x- Eastern Plaguelands/20 40.60,91.63 {template:building}", -- Light's Hope Chapel
		},
		["Elwynn Forest"] = {
			"Elwynn Forest/0 61.7,53.7 -x- Elwynn Forest/19 48.9,90.1 {template:mine}", --Jasperload Mine
			"Elwynn Forest/0 38.9,82.3 -x- Elwynn Forest/1 39.9,88.0 {template:mine}", --Fargodeep Mine
			"Elwynn Forest/1 55.4,36.3 -x- Elwynn Forest/2 56.3,26.0", --Fargodeep Mine Lower
			"Elwynn Forest/0 38.5,81.5 -x- Elwynn Forest/2 35.2,68.4 {template:mine}", --Fargodeep Mine Lower
		},
		["Gilneas 2"] = {
			"Gilneas 2/0 29.03,51.66 -x- Gilneas 2/2 66.89,58.26 {template:building}", -- Greymane Manor Main Floor
			"Gilneas 2/2 61.0,47.5 -x- Gilneas 2/3 56.7,47.5 {title_atob:Run up the stairs} {title_btoa:Run down the stairs}", -- Greymane Manor Upper Floor
			"Gilneas 2/0 76.08,31.63 -x- Gilneas 2/1 28.33,69.82 {template:mine}", -- Emberstone Mine
		},
		["New Tinkertown"] = {
			"New Tinkertown/0 33.3,66.4 -x- New Tinkertown/8 94.6,58.1 {template:cave}", -- Frostmane Hold
		},
		["Searing Gorge"] = {
			"Burning Steppes/0 20.11,18.52 -x- Burning Steppes/14 47.41,12.29 {title:Enter Blackrock Mountain through the gate on the ground}", -- Blackrock Spire north entrance
			"Burning Steppes/14 46.8,50.8 -x- Burning Steppes/16 58.2,88.5", -- Blackrock Depths chain again - silly two-zone clone dungeon
			"Burning Steppes/16 40.2,57.9 -x- Burning Steppes/16 46.2,62.9",
		},
		["Tirisfal Glades"] = {
			"Tirisfal Glades/0 82.6,33.5 -x- Tirisfal Glades/13 17.3,82.9 {template:building}", -- Scarlet Monastery Entrance
			"Tirisfal Glades/0 82.3,32.6 -x- Tirisfal Glades/13 14.5,73.1 {template:building}", -- Scarlet Monastery Entrance
			--"Deathknell/0 44.56,82.68 -x- Tirisfal Glades/0 30.33,72.86 {title_atob:Enter the crypt} {title_btoa:Leave the crypt}", -- Deathknell Crypt
		},
		["Westfall"] = {
			"Westfall/0 42.5,71.8 -x- Westfall/17 69.3,23.7 {template:building}", -- Deadmines Cave Entrance (Moonbrook)
			"Westfall/0 44.5,24.7 -x- Westfall/5 41.1,94.1 {template:mine}", -- Jangolode Mine
		},

	-- Outland

	-- Northrend

	-- Cataclysm

		["Kezan"] = {
			"Kezan/0 65.6,86.7 -x- Kezan/7 64.0,19.6 {template:mine}", -- Kaja'Mine Copper
			"Kezan/0 74.3,83.3 -x- Kezan/6 32.9,31.0 {template:mine}", -- Kaja'Mine Silver
			"Kezan/0 70.9,76.5 -x- Kezan/5 41.0,75.5 {template:mine}", -- Kaja'Mine Gold
		},
		["The Lost Isles"] = {
			"The Lost Isles/0 31.2,78.6 -x- The Lost Isles/1 48.1,90.0 {template:cave}", -- Kaja'mite Cavern
			"The Lost Isles/0 70.0,48.0 -x- The Lost Isles/2 50.0,10.8 {template:cave}", -- Volcanoth's Lair
		},
		["Gilneas 3"] = {
			"Gilneas 3/0 76.6,31.1 -x- Gilneas 3/1 28.5,70.0 <indoors:Emberstone Mine> {template:mine}", -- Emberstone Mine
		},


		["Deepholm"] = {
			"Deepholm/0 62.60,78.56 -x- Deepholm/1 37.42,23.93 {template:mine}", -- Twilight Depths
		},
			

	-- Pandaria

		["The Jade Forest"] = {
			"The Jade Forest/0 45.9,28.9 -x- The Jade Forest/6 75.7,24.7 {template:mine}", -- Greenstone Quarry (Outside --> Upper Quarry)
			"The Jade Forest/6 39.8,38.0 -x- The Jade Forest/7 51.2,51.0 {title_atob:Go to the Lower Quarry} {title_btoa:Go to the Upper Quarry}", -- Greenstone Quarry (Upper Quarry --> Lower Quarry)
			"The Jade Forest/0 57.7,31.7 -x- The Jade Forest/15 76.8,20.0 {template:cave}", -- The Widow's Wail (Outside of Cave --> Inside Cave)
			"The Jade Forest/0 57.5,27.7 -x- The Jade Forest/16 82.4,47.7 {template:cave}", -- Oona Kagu (Outside of Cave --> Inside Cave)
		},
		["Krasarang Wilds"] = {
			"Krasarang Wilds/0 80.3,17.8 -x- Krasarang Wilds/1 33.3,24.4 {template:building}",
			"Krasarang Wilds/1 61.6,51.8 -x- Krasarang Wilds/2 59.5,36.7",
			"Krasarang Wilds/2 62.7,39.6 -x- Krasarang Wilds/3 82.3,36.0",
		},
		["Kun-Lai Summit"] = {
			"Kun-Lai Summit/0  52.9,71.3 -x- Kun-Lai Summit/11 56.5,15.9 {template:cave}", --The Deeper
			-- 11 to 12 is now a green border
			"Kun-Lai Summit/12 51.6,55.9 -to- Kun-Lai Summit/11 52.4,65.5 {title:Go upstairs}", --The Deeper2
			"Kun-Lai Summit/0  50.3,61.7 -x- Kun-Lai Summit/10 74.9,91.5 {template:cave}", -- Knucklethump Hole
			"Kun-Lai Summit/0  73.2,73.5 -x- Kun-Lai Summit/9  11.5,30.0 {template:cave}", -- Pranksters' Hollow
			"Kun-Lai Summit/0  59.1,52.5 -x- Kun-Lai Summit/8  66.9,82.3 {template:cave}", -- Howlingwind Cavern
			"Kun-Lai Summit/0  53.0,46.5 -x- Kun-Lai Summit/17 88.3,54.8 {template:building}", -- Tomb of Conquerors
			"Kun-Lai Summit/0  33.1,26.6 -x- Kun-Lai Summit/20 52.2,11.6 {template:building}", -- Ruins of Korune
			"Kun-Lai Summit/20 30.9,75.9 <radius:15> -x- Kun-Lai Summit/21 34.3,76.1 {title_atob:Go downstairs} {title_btoa:Go upstairs}", -- Crypt of Korune
		},
		["Townlong Steppes"] = {
			"Townlong Steppes/0 33.02,61.24 -x- Townlong Steppes/13 20.15,68.46 {template:cave}", -- Niuzao Catacombs
		},
		["Vale of Eternal Blossoms"] = {
			"Vale of Eternal Blossoms/0 22.2,26.3 <radius:7> -x- Vale of Eternal Blossoms/1 54.0,88.2 <radius:7> {template:building}", -- Guo-Lai Halls

			"Shrine of Seven Stars/1 38.6,28.4 <nofly:1> -x- Vale of Eternal Blossoms 86.8,64.3 {B:WALK}",  -- main door
			"Shrine of Seven Stars/1 25.5,55.8 <nofly:1> -x- Vale of Eternal Blossoms 85.6,67.4 {B:WALK}",  -- west door
			"Shrine of Seven Stars/1 60.3,18.0 <nofly:1> -x- Vale of Eternal Blossoms 89.1,63.5 {B:WALK}",  -- east door

			"Shrine of Seven Stars/1 33.6,78.3 <radius:5> -x- Shrine of Seven Stars/2 32.3,75.5 <radius:5> <region:shrine7star_west>", -- west staircase
			"Shrine of Seven Stars/1 70.4,33.5 <radius:5> -x- Shrine of Seven Stars/2 61.7,18.4 <radius:5> <region:shrine7star_east>", -- east staircase

			"Shrine of Seven Stars/1 52.4,78.9 <radius:10> -x- Shrine of Seven Stars/2 56.1,75.7 <radius:10> <region:shrine7star_west>", -- west hall
			"Shrine of Seven Stars/1 66.4,63.3 <radius:10> -x- Shrine of Seven Stars/2 68.4,63.3 <radius:10> <region:shrine7star_east>", -- east hall

			"Shrine of Seven Stars/2 43.3,44.3 <radius:5> <region:shrine7star_west> -to- Shrine of Seven Stars/1 44.9,47.6 <radius:5>", -- west balcony jump
			"Shrine of Seven Stars/2 52.6,33.7 <radius:5> <region:shrine7star_east> -to- Shrine of Seven Stars/1 46.4,44.8 <radius:5>", -- east balcony jump

			"Shrine of Seven Stars/1 38.6,28.4 <nofly:1> -x- Vale of Eternal Blossoms 86.8,64.3",  -- main door
			"Shrine of Seven Stars/1 25.5,55.8 <nofly:1> -x- Vale of Eternal Blossoms 85.6,67.4",  -- west door
			"Shrine of Seven Stars/1 60.3,18.0 <nofly:1> -x- Vale of Eternal Blossoms 89.1,63.5",  -- east door
		},
		["The Veiled Stair"] = {
			"Kun-Lai Summit/0 73.2,94.6 -x- The Veiled Stair/5 25.1,12.5", -- The Ancient Passage
			"The Veiled Stair/0 50.6,40.4 -x- The Veiled Stair/5 63.1,86.4", -- The Ancient Passage
			"The Veiled Stair/0 57.3,13.6 -x- The Veiled Stair/5 77.6,36.7", -- The Ancient Passage
		},
		["Shrine of Two Moons"] = {
			"Shrine of Two Moons/1 22.1,54.4 <radius:5> -x- Shrine of Two Moons/2 27.8,80.6 <radius:5> <region:shrine2moon_west>", -- west staircase
			"Shrine of Two Moons/1 77.5,42.6 <radius:5> -x- Shrine of Two Moons/2 74.4,70.3 <radius:5> <region:shrine2moon_east>", -- east staircase

			"Shrine of Two Moons/1 36.6,21.7 <radius:10> -x- Shrine of Two Moons/2 38.3,36.6 <radius:10> <region:shrine2moon_west>", -- west hall
			"Shrine of Two Moons/1 58.0,18.5 <radius:10> -x- Shrine of Two Moons/2 55.8,30.0 <radius:10> <region:shrine2moon_east>", -- east hall

			"Shrine of Two Moons/2 47.0,77.0 <radius:5> <region:shrine2moon_west> -to- Shrine of Two Moons/1 48.6,64.5 <radius:5>", -- west balcony jump
			"Shrine of Two Moons/2 55.4,73.1 <radius:5> <region:shrine2moon_east> -to- Shrine of Two Moons/1 54.0,62.0 <radius:5>", -- east balcony jump

			"Shrine of Two Moons/1 53.8,87.0 <nofly:1> -x- Vale of Eternal Blossoms 61.5,18.8",  -- main door
			"Shrine of Two Moons/1 26.8,80.7 <nofly:1> -x- Vale of Eternal Blossoms 59.1,17.9",  -- west door
			"Shrine of Two Moons/1 77.4,69.0 <nofly:1> -x- Vale of Eternal Blossoms 63.5,17.0",  -- east door
		},
		["Isle of Thunder"] = {
			"Isle of Thunder/0 54.6,29.1 -x- Isle of Thunder/1 73.1,51.3 {template:cave}", --Ghostly Veins
			"Isle of Thunder/0 49.3,25.5 -x- Isle of Thunder/1 38.8,27.1 {template:cave}", --Ghostly Veins
			"Isle of Thunder/0 49.2,32.2 -x- Isle of Thunder/1 31.7,81.7 {template:cave}", --Ghostly Veins
			"Isle of Thunder/0 62.4,40.3 -x- Isle of Thunder/2 66.1,77.9 {template:tunnel}", --The Swollen Vault
		},
		["Isle of Thunder Scenario"] = { -- Isle of Thunder scenario  clone
			"Isle of Thunder Scenario/0 54.6,29.1 -x- Isle of Thunder Scenario/1 73.1,51.3 {template:cave}",
			"Isle of Thunder Scenario/0 49.3,25.5 -x- Isle of Thunder Scenario/1 38.8,27.1 {template:cave}",
			"Isle of Thunder Scenario/0 49.2,33.0 -x- Isle of Thunder Scenario/1 31.5,82.0 {template:cave}",
			"Isle of Thunder Scenario/0 62.4,40.3 -x- Isle of Thunder Scenario/2 66.1,77.9 {template:tunnel}",
		},
		["Timeless Isle"] = {
			"Timeless Isle/0 43.3,40.8 -x- Timeless Isle/22 44.4,81.0 {template:cave}", --Cavern of Lost Spirits
		},

	-- Draenor

		["Frostfire Ridge"] = {
		},
		["Frostwall"] = {
		},
		["Gorgrond"] = {
		},
		["Lunarfall"] = {
		},
		["Nagrand D"] = {
		},

		["Spires of Arak"] = {
		},
		["Talador"] = {
		},

		["Dark Heart of Pandaria"] = {
			"Dark Heart of Pandaria/0 43.6,70.6 -x- Dark Heart of Pandaria/1 74.4,14.0 {template:mine}",
		},

		["Deeprun Tram"] = {
			"Deeprun Tram/1 52.24,46.9 -x- Deeprun Tram/2 72.3,16.2", -- brawlpub entry
		},
		["Dagger in the Dark"] = {
			"Dagger in the Dark/0 50.3,39.5 -x- Dagger in the Dark/1 61.3,82.9",
			"Dagger in the Dark/1 77.0,37.9 -x- Dagger in the Dark/0 57.9,13.2",
			"Dagger in the Dark/1 25.9,13.8 -x- Dagger in the Dark/0 31.1,1.1",
		},
	
	-- LEGION

		-----------------
		---  DALARAN  ---
		-----------------
		["Dalaran L"] = {
			-- Underbelly Entrance for Warlock Order Hall Portal
				"Dalaran L/10 34.33,45.60 <radius:10> -x- Dalaran L/11 19.18,57.14 <radius:10>"..
					"{title_atob:Enter the Underbelly and run down the stairs}"..
					"{title_btoa:Run up the stairs and leave the Underbelly} {cond:ZGV.IsLegionOn()}",

			-- Underbelly Main Entrance
				"Dalaran L/10 59.85,47.89 <radius:10> -x- Dalaran L/11 76.26,68.47 <radius:10>"..
					"{title_atob:Enter the Underbelly and run down the stairs}"..
					"{title_btoa:Run up the stairs and leave the Underbelly} {cond:ZGV.IsLegionOn()}",

			-- Rogue Order Hall Entrance
				"Dalaran L/10 52.83,70.29 <radius:10> -x- Dalaran L/4 87.05,76.65 <radius:10> {template:atob}"..
					"{title_atob:Talk to \"Red\" Jack Findle and Show Him Your Insignia, Enter the Doorway, and Run Down the Stairs}"..
					"{title_btoa:Run Up the Stairs, Click the Torch, and Leave the Doorway} {cond:PlayerIsOnQuest(40832) or PlayerCompletedQuest(40832)}",
		},


		----------------
		---  AZSUNA  ---
		----------------
		["Azsuna"] = {
		},



		--------------------
		---  VAL'SHARAH  ---
		--------------------
		["Val'sharah"] = {					
			-- The Dreamgrove Ground Entrance (Druid Only)
				"Val'sharah/0 45.48,34.51 <radius:20> -x- The Dreamgrove/0 44.82,32.76 <radius:20>"..
					"{title:Follow the path}"..
					"{cond:select(2,UnitClass('player'))=='DRUID' and ZGV.IsLegionOn()}",
		},



		----------------------
		---  HIGHMOUNTAIN  ---
		----------------------
		["Highmountain"] = {
			-- Trueshot Lodge Ground Entrance (Hunter Only)
				"Highmountain/0 36.13,44.71 <radius:20> -x- Trueshot Lodge/0 42.72,9.98 <radius:20>"..
					"{title_atob:Follow the path up} {title_btoa:Follow the path down}"..
					"{cond:select(2,UnitClass('player'))=='HUNTER' and ZGV.IsLegionOn()}",
		},

		--["Thunder Totem"] = {
				--"Thunder Totem/0 45.86,58.91 <radius:10> -x- Thunder Totem/6 58.72,86.69 <radius:10>"..
					--"{title_atob:Ride the elevator down} {title_btoa:Ride the elevator up}",
				--"Thunder Totem/0 49.27,46.06 <radius:10> -x- Thunder Totem/6 68.48,49.88 <radius:10>"..
					--"{title_atob:Ride the elevator down} {title_btoa:Ride the elevator up}",
		--},		

		-------------------
		---  STORMHEIM  ---
		-------------------
		["Stormheim"] = {
		},		
				
		
		
		-----------------
		---  SURAMAR  ---
		-----------------
		["Suramar"] = {
		},

		
		
		-------------------------
		---  MAGE ORDER HALL  ---
		-------------------------
		["Hall of the Guardian"] = {
			"Hall of the Guardian/1 59.64,60.14 <radius:15> -x- Hall of the Guardian/2 58.32,65.16 <radius:15>"..
			"{title_atob:Run up the stairs} {title_btoa:Run down the stairs} {cond:PlayerCompletedQuest(41036)}",
		},



		---------------------------------
		---  DEMON HUNTER ORDER HALL  ---
		---------------------------------
		["Mardum, the Shattered Abyss"] = {
			"Mardum, the Shattered Abyss/2 68.66,67.24 <radius:10> -x- Mardum, the Shattered Abyss/3 65.39,53.64 <radius:15>"..
			"{title_atob:Follow the path down} {title_btoa:Follow the path up} {cond:PlayerCompletedQuest(42872)}",
		},		



		---------------------------------
		---  DEATH KNIGHT ORDER HALL  ---
		---------------------------------
		["Broken Shore"] = {
			-- Bottom Floor to Top Floor
				"Broken Shore/2 35.41,37.52 -to- Broken Shore/1 36.25,38.55 {mode:PORTAL} {title:Walk onto the Teleport Pad to go Upstairs} {cond:PlayerCompletedQuest(39757)}",

			-- Top Floor to Bottom Floor
				"Broken Shore/1 33.96,36.30 -to- Broken Shore/2 37.77,39.76 {mode:PORTAL} {title:Walk onto the Teleport Pad to go Downstairs} {cond:PlayerCompletedQuest(39757)}",
		},



		-----------------
		---  KROKUUN  ---
		-----------------
		["Krokuun"] = {
			"Krokuun/0 50.22,17.12 <radius:10> -x- Krokuun/7 66.91,86.27 <radius:10>"..				-- Nath'raxas Spire
			"{title_atob:Enter the building}"..
			"{title_btoa:Leave the building}",
			--"{cond:ZGV.IsLegionOn()}",
		},
}


--[[
-- translate the flooring zone-folders from names to numbers
	local TEMP={}
	for zone,zonedata in pairs(data.basenodes.FloorCrossings) do
		if type(zone)~="number" then
			local id=data.MapIDsByName[zone]
			if type(id)=="table" then id=id[1] end
			if not id then error("Map "..zone.." has no ID!") end
			zone=id
		end
		TEMP[zone]=zonedata
	end
	data.basenodes.FloorCrossings=TEMP
--]]