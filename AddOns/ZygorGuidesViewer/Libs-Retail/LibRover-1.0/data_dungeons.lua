local name,addon = ...

addon.LibRoverData = addon.LibRoverData or {}
local data=addon.LibRoverData

data.basenodes.DungeonEntrances = {
	-- DUNGEON ENTRANCE/EXITS
		-- {autotype:portal_dungeon} gives the nice "enter dungeon"/"exit dungeon" mechanics.

		--Kalimdor
			-- RAGEFIRE CHASM
			"Orgrimmar/2 70.33,48.92 -x- Ragefire Chasm/1 0.00,0.00 {autotype:portal_dungeon}",

			-- WAILING CAVERNS
			"Northern Barrens/20 28.59,69.26 <radius:15> <nofly:1>",
			"@+ -x- Northern Barrens/20 25.41,50.67 <radius:15> <dark:1> <nofly:1>",
			"@+ -x- Northern Barrens/20 24.08,26.47 <radius:15> <dark:1> <nofly:1>",
			"@+ -x- Northern Barrens/20 32.28,22.43 <radius:15> <dark:1> <nofly:1>",
			"@+ -x- Northern Barrens/20 41.54,29.02 <radius:15> <dark:1> <nofly:1>",
			"@+ -x- Northern Barrens/20 49.10,31.95 <radius:15> <dark:1> <nofly:1>",
			"@+ -x- Northern Barrens/20 50.62,48.50 <radius:15> <dark:1> <nofly:1>",
			"@+ -x- Northern Barrens/20 55.03,66.11 <radius:15> <dark:1> <nofly:1>",
			"@+ -x- Wailing Caverns/1 0.00,0.00 {autotype:portal_dungeon}",

			-- BLACKFATHOM DEEPS
			"Ashenvale/0 13.94,13.76 <radius:10> <nofly:1> <title:Enter the underwater cave>",
			"@+ -x- Ashenvale/0 13.16,13.09 <radius:15> <dark:1> <nofly:1>",
			"@+ -x- Ashenvale/0 13.63,11.90 <radius:15> <dark:1> <nofly:1>",
			"@+ -x- Ashenvale/0 13.93,11.14 <radius:15> <dark:1> <nofly:1>",
			"@+ -x- Ashenvale/0 13.68,9.39 <radius:15> <dark:1> <nofly:1>",
			"@+ -x- Ashenvale/0 14.32,9.08 <radius:15> <dark:1> <nofly:1>",
			"@+ -x- Ashenvale/0 14.81,10.39 <radius:15> <dark:1> <nofly:1>",
			"@+ -x- Ashenvale/0 15.69,11.35 <radius:15> <dark:1> <nofly:1>",
			"@+ -x- Ashenvale/0 16.53,11.67 <radius:15> <dark:1> <nofly:1>",
			"@+ -x- Ashenvale/0 16.49,10.99 <radius:15> <dark:1> <nofly:1>",
			"@+ -x- Blackfathom Deeps/1 0.00,0.00 {autotype:portal_dungeon}",

			-- ZUL'FARRAK
			"Tanaris/0 39.21,21.21 -x- Zul'Farrak/0 0.00,0.00 {autotype:portal_dungeon}",

			-- RAZORFEN DOWNS
			"Thousand Needles 47.65,23.65 -x- Razorfen Downs/1 0.00,0.00 {autotype:portal_dungeon}",

			-- RAZORFEN KRAUL
			"Southern Barrens 40.72,94.39 -x- Razorfen Kraul 69.89,82.97 {autotype:portal_dungeon}",

			-- MARAUDON: EARTHSONG FALLS
			"Desolace/22 44.3,76.7 -to- Maraudon 28.1,35.5 {template:cityportal}",

			-- MARAUDON: THE WICKED GROTTO
			"Desolace/22 52.4,23.8 -x- Maraudon 78.48,68.45 {autotype:portal_dungeon}",

			-- MARAUDON: FOULSPORE CAVERN
			"Desolace/21 78.4,55.3 -x- Maraudon 62.16,28.18 {autotype:portal_dungeon}",

			-- DIRE MAUL: WARPWOOD QUARTER
			"Feralas/0 64.8,30.2 -x- Dire Maul/5 6.71,38.29 {autotype:portal_dungeon}",
			"Feralas/0 66.77,34.84 -x- Dire Maul/5 28.22,84.76 {autotype:portal_dungeon}",
			"Feralas/0 76.45,35.90 -x- Dire Maul/5 92.12,45.20 {autotype:portal_dungeon}",
			"Dire Maul/6 36.74,38.45 -to- Feralas/0 66.11,26.31 {template:portalDungeonExit}",
			-- DIRE MAUL: CAPITAL GARDENS
			"Feralas/0 60.31,31.30 -x- Dire Maul/2 93.42,75.90 {autotype:portal_dungeon}",
			"Feralas/0 60.32,30.12 -x- Dire Maul/2 93.53,47.68 {autotype:portal_dungeon}",
			-- DIRE MAUL: GORDOK COMMONS
			"Feralas 62.51,24.89 -x- Dire Maul/1 71.13,93.54 {autotype:portal_dungeon}",

			-- THE BLACK MORASS
			"Tanaris/18 36.3,83.2 -x- The Black Morass 52.06,0.15 {autotype:portal_dungeon}",
			-- CULLING OF STRATHOLME
			"Tanaris/18 57.4,82.6  -x- The Culling of Stratholme 87.51,71.21 {autotype:portal_dungeon}",
			-- END TIME
			"Tanaris/18 57.6,29.6 -x- End Time 80.73,44.20 {autotype:portal_dungeon}",
			-- WELL OF ETERNITY
			"Tanaris/18 22.5,64.4 -x- Well of Eternity 27.82,63.37 {autotype:portal_dungeon}",
			-- HOUR OF TWILIGHT
			"Tanaris/18 67.2,29.4 -x- Hour of Twilight 48.51,19.72 {autotype:portal_dungeon}",

			-- THE VORTEX PINNACLE
			"Uldum 76.81,84.55 -x- The Vortex Pinnacle 54.12,16.81 {autotype:portal_dungeon}",
			"Uldum New/0 76.84,84.61 -x- The Vortex Pinnacle/1 0.00,0.00 {autotype:portal_dungeon} {cond:not ZGV.InPhase('OldUldum')}",
			-- HALLS OF ORIGINATION
			"Uldum 69.09,52.97 -x- Halls of Origination 49.91,93.73 {autotype:portal_dungeon}",
			"Uldum New/0 69.09,53.15 -x- Halls of Origination/1 0.00,0.00 {autotype:portal_dungeon} {cond:not ZGV.InPhase('OldUldum')}",

			-- LOST CITY OF THE TOL'VIR
			"Uldum 60.55,64.32 -x- Lost City of the Tol'vir 31.78,16.78 {autotype:portal_dungeon}",
			"Uldum New/0 60.55,64.32 -x- Lost City of the Tol'vir/0 0.00,0.00 {autotype:portal_dungeon} {cond:not ZGV.InPhase('OldUldum')}",

			--Ny'alotha, The Waking City
			"Uldum New/0 55.17,43.93 -x- Ny'alotha, the Waking City/10 0.00,0.00 {autotype:portal_dungeon} {cond:ZGV.InPhase('UldumInvasionCenter')}",

		--Eastern Kingdom
			--Scholomance
			"Western Plaguelands 69.1,72.9 -x- Scholomance/1 18.1,60.9 {autotype:portal_dungeon}",
			-- STRATHOLME: MAIN GATE
			"Eastern Plaguelands/0 27.61,11.63 -x- Stratholme/1 68.02,88.46 {autotype:portal_dungeon}",
			"Eastern Plaguelands/0 26.51,11.67 -x- Stratholme/1 64.46,88.52 {autotype:portal_dungeon}",
			-- STRATHOLME: SERVICE ENTRACE
			"Eastern Plaguelands/0 43.82,17.42 -x- Stratholme/2 67.74,86.29 {autotype:portal_dungeon}",
			--SUNKEN TEMPLE
			"Swamp of Sorrows/0 69.33,55.62 <title:Enter the building>",
			"@+ -x- Swamp of Sorrows/0 70.10,51.03 <dark:1> <onlyhardwire:1> <title:Run down the stairs>",
			"@+ -x- Swamp of Sorrows/0 70.54,48.47 <radius:15> <dark:1> <onlyhardwire:1> <title:Swim under the water>",
			"@+ -x- Swamp of Sorrows/0 70.94,45.95 <radius:15> <dark:1> <onlyhardwire:1> <title:Continue swimming>",
			"@+ -x- Swamp of Sorrows/0 71.57,43.49 <dark:1> <onlyhardwire:1> <title:Follow the path>",
			"@+ -x- Swamp of Sorrows/0 72.89,43.97 <dark:1> <onlyhardwire:1> <title:Follow the stairs down>",
			"@+ -x- Swamp of Sorrows/0 73.94,44.38 <dark:1> <onlyhardwire:1> <title:Follow the path>",
			"@+ -x- Swamp of Sorrows/0 75.00,45.44 <dark:1> <onlyhardwire:1> <title:Continue following the path>",
			"@+ -x- Swamp of Sorrows/0 76.09,45.25 <dark:1> <onlyhardwire:1> <title:Go through the portal>",
			"@+ -x- The Temple of Atal'Hakkar/1 0.00,0.00 {autotype:portal_dungeon}",

			--Scarlet Halls
			"Tirisfal Glades/13 78.5,58.2 -x- Scarlet Halls/1 34.3,90.1 {autotype:portal_dungeon}",
			--Scarlet Monastery
			"Tirisfal Glades/13 69.4,25.1 -x- Scarlet Monastery/1 75.7,45.8 {autotype:portal_dungeon}",

			-- ZUL'GURUB
			"Northern Stranglethorn 72.18,32.91 -x- Zul'Gurub 30.23,48.85 {autotype:portal_dungeon}",
			-- ZUL'AMAN
			"Ghostlands 82.28,64.3 -x- Zul'Aman 7.32,52.97 {autotype:portal_dungeon}",

			-- DEADMINES
			"Westfall/17 50.94,64.98",
			"@+ -x- Westfall/17 25.8,51.1 <dark:1> <nofly:1> <radius:10> ",
			"@+ -x- The Deadmines/1 26.5,13.4 {autotype:portal_dungeon}",
			"The Deadmines/2 96.17,51.66 -to- Westfall/0 41.15,83.19 <style:portal_dungeon>",
			-- SHADOWFANG KEEP
			"Silverpine Forest 44.75,67.79 -x- Shadowfang Keep 69.46,60.97 {autotype:portal_dungeon}",
			-- THE STOCKADE
			"Stormwind City 50.42,66.31 -x- The Stockade 50.07,68.09 {autotype:portal_dungeon}",

			-- GNOMEREGAN
			"Dun Morogh/10 30.0,74.7 -x- Gnomeregan 64.33,28.96 {autotype:portal_dungeon}",
			-- ULDAMAN
			"Badlands/18 36.7,30.1 -x- Uldaman 67.03,72.71 {autotype:portal_dungeon}",
			-- ULDAMAN: LEGACY OF TYR
			"Badlands/0 40.91,10.27 -x- Uldaman Legacy of Tyr/0 0.00,0.00 {autotype:portal_dungeon}",

			-- BLACKROCK DEPTHS
			"Burning Steppes/16 40,17 -x- Blackrock Depths 34.70,77.80 {autotype:portal_dungeon}",
			-- BLACKROCK CAVERNS
			"Burning Steppes/15 70.0,53.3 -x- Blackrock Caverns 32.02,70.10 {autotype:portal_dungeon}",

			-- LOWER BLACKROCK SPIRE
			"Burning Steppes/14 80.4,41.3 -x- Blackrock Spire/4 37.9,43.3 {autotype:portal_dungeon}",
			-- UPPER BLACKROCK SPIRE
			"Burning Steppes/14 78.78,31.60 -x- Upper Blackrock Spire 2/1 37.2,32.5 {autotype:portal_dungeon}",


			-- MAGISTERS' TERRACE
			"Isle of Quel'Danas 61.28,30.92 -x- Magisters' Terrace/2 42.53,90.01 {autotype:portal_dungeon}",
			"Magisters' Terrace/1 4.63,50.20 -to- Isle of Quel'Danas/0 47.10,30.69 {mode:PORTAL}",
			-- GRIM BATOL
			"Twilight Highlands 19.14,53.84 -x- Grim Batol 12.15,55.67 {autotype:portal_dungeon}",

		--Outlands
			-- HELLFIRE RAMPARTS
			"Hellfire Peninsula 47.59,53.59 -x- Hellfire Ramparts/1 50.06,70.37 {autotype:portal_dungeon}",
			-- THE BLOOD FURNACE
			"Hellfire Peninsula 45.95,51.87 -x- The Blood Furnace/1 47.75,90.56 {autotype:portal_dungeon}",
			-- THE SHATTERED HALLS
			"Hellfire Peninsula 47.48,52.02 -x- The Shattered Halls/1 61.14,92.81 {autotype:portal_dungeon}",
			
			{"REGION",name="coilfangpipe",mapzone="Zangarmarsh",zonematch="Coilfang Reservoir/Coilfang Reservoir//Coilfang Reservoir",nofly=1,in_flight=1,submerged=1},
			{"REGION",name="coilfangcave",center="Zangarmarsh 51.92,33.22",radius=200,mapzone="Zangarmarsh",zonematch="Zangarmarsh/Zangarmarsh/Coilfang Reservoir/Coilfang Reservoir",indoors=1,nofly=1,in_flight=1},
			"Zangarmarsh 50.36,40.85 <radius:10> -x- Zangarmarsh 50.67,40.07 <radius:10> <region:coilfangpipe> {title_atob1:Swim into the Underwater Pipe} {title_atob2:Swim through the Underwater Pipe} {title_btoa1:Swim through the Underwater Pipe} {title_btoa2:Leave the Underwater Pipe}",
			"Zangarmarsh 51.75,38.88 <region:coilfangpipe> <radius:10> -x- Zangarmarsh 51.91,37.93 <region:coilfangcave> <radius:10> {title_atob1:Swim through the Underwater Pipe} {title_atob2:Swim into the Underwater Cave} {title_btoa1:Swim into the Underwater Pipe} {title_btoa2:Swim through the Underwater Pipe}",
			-- THE STEAMVAULT
			"Zangarmarsh 50.29,33.33 <region:coilfangcave> -x- The Steamvault 17.59,29.76 {autotype:portal_dungeon}",
			-- THE SLAVE PENS
			"Zangarmarsh 48.95,35.70 <region:coilfangcave> -x- The Slave Pens 19.95,13.37 {autotype:portal_dungeon}",
			-- THE UNDERBOG
			"Zangarmarsh 54.28,34.40 <region:coilfangcave> -x- The Underbog 29.68,67.88 {autotype:portal_dungeon}",

			-- THE STEAMVAULT
			--"Zangarmarsh/0 50.39,40.85 -to- The Steamvault 17.59,29.76 {title:Swim down through the underwater pipe, then follow the path northwest in the large room you come to, then enter the Steamvault dungeon portal}",

			-- THE SLAVE PENS
			--"Zangarmarsh/0 50.39,40.85 -to- The Slave Pens 19.95,13.37 {title:Swim down through the underwater pipe, then follow the path west in the large room you come to, then enter the Steamvault dungeon portal}",

			-- THE UNDERBOG
			--"Zangarmarsh/0 50.39,40.85 -to- The Underbog 29.68,67.88 {title:Swim down through the underwater pipe, then follow the path west in the large room you come to, then enter the Steamvault dungeon portal}",

			-- MANA-TOMBS
			"Terokkar Forest 39.64,57.63 -x- Mana-Tombs 33.52,17.29 {autotype:portal_dungeon}",
			-- AUCHENAI CRYPTS
			"Terokkar Forest 34.30,65.61 -x- Auchenai Crypts/1 44.12,75.10 {autotype:portal_dungeon}",
			-- SETHEKK HALLS
			"Terokkar Forest 44.95,65.61 -x- Sethekk Halls 73.35,36.47 {autotype:portal_dungeon}",
			-- SHADOW LABYRINTH
			"Terokkar Forest 39.63,73.60 -x- Shadow Labyrinth 22.01,12.45 {autotype:portal_dungeon}",

			-- OLD HILLSBRAD FOOTHILLS
			"Tanaris/18 26.9,35.9 -x- Old Hillsbrad Foothills 23.23,24.80 {autotype:portal_dungeon}",

			-- THE BOTANICA
			"Netherstorm 71.76,54.93 -x- The Botanica/1 89.59,41.09 {autotype:portal_dungeon}",
			-- THE MECHANAR
			"Netherstorm 70.62,69.78 -x- The Mechanar/1 49.41,83.51 {autotype:portal_dungeon}",
			"The Mechanar/2 27.34,73.16 -to- Netherstorm/0 70.54,69.64 <style:portal_dungeon>",
			-- THE ARCATRAZ
			"Netherstorm 74.49,57.68 -x- The Arcatraz/1 41.26,81.70 {autotype:portal_dungeon}",

		--Northrend
			-- UTGARDE KEEP
			"Howling Fjord/0 57.28,46.70 -x- Utgarde Keep/1 69.15,73.98 {autotype:portal_dungeon}",
			-- UTGARDE PINNACLE
			"Howling Fjord/0 57.27,46.69 -x- Utgarde Pinnacle/2 44.33,14.19 {autotype:portal_dungeon}",

			-- THE NEXUS
			"Borean Tundra 27.50,25.98 -x- The Nexus 36.20,88.0 {autotype:portal_dungeon}",
			-- THE OCULUS
			"Borean Tundra 27.50,25.98 -x- The Oculus 61.30,47.58 {autotype:portal_dungeon}",

			-- AZJOL NERUB
			"Dragonblight 25.96,50.90 -x- Azjol-Nerub/3 9.44,93.32 {autotype:portal_dungeon}",
			"Azjol-Nerub/1 88.47,76.32 -to- Dragonblight 28.43,47.00 <style:portal_dungeon>",
			-- THE OLD KINGDOM
			"Dragonblight 28.47,51.72 -x- Ahn'kahet: The Old Kingdom 88.99,79.12 {autotype:portal_dungeon}",

			-- DRAK'THARON KEEP
			"Zul'Drak 28.52,86.93 -x- Drak'Tharon Keep 29.38,80.96 {autotype:portal_dungeon}",
			-- VIOLET HOLD
			"Dalaran 68.60,70.39 -x- The Violet Hold 46.15,98.03 {autotype:portal_dungeon}",
			-- GUNDRAK
			"Zul'Drak/0 76.12,20.92 -x- Gundrak/1 58.99,30.92 {autotype:portal_dungeon}",

			-- HALLS OF STONE
			"The Storm Peaks 39.50,26.92 -x- Halls of Stone 34.4,36.2 {autotype:portal_dungeon}",
			-- HALLS OF LIGHTNING
			"The Storm Peaks 45.38,21.37 -x- Halls of Lightning 7.38,53.81 {autotype:portal_dungeon}",

			-- TRIAL OF THE CHAMPION
			"Icecrown 74.17,20.52 -x- Trial of the Champion 51.18,30.24 {autotype:portal_dungeon}",
			-- FORGE OF SOULS
			"Icecrown 54.92,89.76 -x- The Forge of Souls 66.05,88.89 {autotype:portal_dungeon}",
			-- PIT OF SARON
			"Icecrown 54.78,91.80 -x- Pit of Saron 40.91,80.52 {autotype:portal_dungeon}",
			-- HALLS OF REFLECTION
			"Icecrown 55.46,90.88 -x- Halls of Reflection 47.33,80.81 {autotype:portal_dungeon}",
			"Pit of Saron 32.30,6.81 -x- Halls of Reflection 47.33,80.81 {autotype:portal_dungeon}",
			-- RUBY SANCTUM
			"Dragonblight 61.20,52.76 -x- The Ruby Sanctum 49.01,31.40 {autotype:portal_dungeon}",

		--Maelstrom
			-- THRONE OF THE TIDES
			"Abyssal Depths 69.49,24.99 -x- Throne of the Tides/1 49.85,88.23 {autotype:portal_dungeon}",

			-- THE STONECORE
			"Deepholm 47.70,51.98 -x- The Stonecore 54.27,93.90 {autotype:portal_dungeon}",

		--Pandaria
			-- Siege of Niuzao Temple
			"Townlong Steppes 34.7,81.4 -x- Siege of Niuzao Temple/2 64.9,86.9 {autotype:portal_dungeon}",

			--Shado-Pan Monastery
			"Kun-Lai Summit 36.7,47.5 -x- Shado-Pan Monastery/1 84.9,56.1 {autotype:portal_dungeon}",

			--Stormstout Brewery
			"Valley of the Four Winds 36.0,69.1 -x- Stormstout Brewery 79.4,39.7 {autotype:portal_dungeon}",

			--Mogu'shan Palace
			"Vale of Eternal Blossoms 80.9,32.6 -x- Mogu'shan Palace/1 0.00,0.00 {autotype:portal_dungeon}",
			"Vale of Eternal Blossoms New/0 81.60,29.88 -x- Mogu'shan Palace/1 0.00,0.00 {autotype:portal_dungeon} {cond:not ZGV.InPhase('OldVale')}",

			--Shado-Pan Monastery
			"Kun-Lai Summit 36.7,47.5 -x- Shado-Pan Monastery/1 84.9,56.1 {autotype:portal_dungeon}",

			--Temple of the Jade Serpant
			"The Jade Forest 56.2,57.9 -x- Temple of the Jade Serpent 31.4,45.0 {autotype:portal_dungeon}",

			--Gate of the Setting Sun
			"Vale of Eternal Blossoms 15.9,74.3 <region:topofthewallVEB> -x- Gate of the Setting Sun/1 61.3,87.8 {autotype:portal_dungeon}",

			--Ny'alotha, The Waking City
			"Vale of Eternal Blossoms New/0 40.08,45.52 -x- Ny'alotha, the Waking City/10 0.00,0.00 {autotype:portal_dungeon} {cond:ZGV.InPhase('ValeInvasionRight')}",

		--Draenor
			-- Auchindoun
			"Talador/0 46.4,73.8 -x- Auchindoun/1 49.7,90.2 {autotype:portal_dungeon}",
			-- Bloodmaul Slag Mines
			"Frostfire Ridge/0 49.8,24.7 -x- Bloodmaul Slag Mines/1 51.5,83.3 {autotype:portal_dungeon}",
			-- Everbloom
			"Gorgrond 59.6,45.6 -x- The Everbloom 72.4,55.7 {autotype:portal_dungeon}",
			-- Grimrail Depot
			"Gorgrond 55.0,31.3 -x- Grimrail Depot/1 32.4,31.9 {autotype:portal_dungeon}",
			-- Iron Docks
			"Gorgrond/0 45.4,13.5 -x- Iron Docks/1 30.6,44.5 {autotype:portal_dungeon}",
			-- Shadowmoon Burial Grounds
			"Shadowmoon Valley D/0 31.9,42.5 -x- Shadowmoon Burial Grounds/1 12.0,68.4 {autotype:portal_dungeon}",
			-- Skyreach
			"Spires of Arak/0 35.6,33.7 -x- Skyreach/1 60.5,25.9 {autotype:portal_dungeon}",
			-- Upper Blackrock Spire
			-- Data already exists, from Eastern Kingdoms

		--Legion
			--The Court
			"Suramar/0 50.68,65.49 -x- Court of Stars/1 6.84,68.64 {autotype:portal_dungeon}",
			--Assault on Violet Hold
			"Dalaran L/10 66.94,69.16 -x- Violet Hold/1 50.95,69.91 {autotype:portal_dungeon}",
			--Black Rook Hold
			"Val'sharah/0 37.15,50.20 -x- Black Rook Hold/1 29.63,10.30 {autotype:portal_dungeon}",
			--Arcway
			"Suramar/0 41.08,61.75 -x- The Arcway/1 47.99,21.47 {autotype:portal_dungeon}",
			--Darkheart Thicket
			"Val'sharah/0 59.06,31.21 -x- Darkheart Thicket/0 36.71,14.16 {autotype:portal_dungeon}",
			--Eye of Azshara
			"Azsuna/0 61.12,41.11 -x- Eye of Azshara/1 47.59,87.41 {autotype:portal_dungeon}",
			--Halls of Valor
			"Stormheim/0 72.65,70.52 -x- Halls of Valor/2 47.72,8.68 {autotype:portal_dungeon}",
			--Maw of Souls
			"Stormheim/0 52.49,45.26 -x- Helmouth Cliffs/1 46.77,78.55 {autotype:portal_dungeon}",
			--Neltharion's Lair
			"Highmountain/0 49.56,68.66 -x- Neltharion's Lair/0 96.35,40.19 {autotype:portal_dungeon}",
			--Vault of the Wardens
			"Azsuna/0 48.30,80.23 -x- Vault of the Wardens/1 70.28,77.60 {autotype:portal_dungeon}",
			"Azsuna/0 48.30,80.23 -x- Vault of the Wardens 2/1 70.28,77.60 {autotype:portal_dungeon}",
			--Cathedral of Eternal Night
			"Broken Shore/0 64.70,16.59 -x- Cathedral of Eternal Night/1 46.8,90.2 {autotype:portal_dungeon}",
			--Karazhan
			"Deadwind Pass/0 46.72,70.20 -x- Karazhan L/6 63.9,61.3 {autotype:portal_dungeon}",
			--Seat of the Triumvirate, Argus
			"Eredath/0 22.30,55.89 -x- The Seat of the Triumvirate/0 21.9,86.2 {autotype:portal_dungeon}",

		--BFA
			"Boralus/0 72.10,15.45 -x- Siege of Boralus/0 75.33,20.81 {autotype:portal_dungeon}",
			"Tiragarde Sound/0 84.45,78.88 -x- Freehold/0 0.00,0.00 {autotype:portal_dungeon}",
			"Drustvar/0 33.68,12.33 -x- Waycrest Manor/0 0.00,0.00 {autotype:portal_dungeon}",
			"Stormsong Valley/0 78.97,26.48 -x- Shrine of the Storm/0 45.50,7.97 {autotype:portal_dungeon}",
			"Zuldazar/0 39.24,71.41 -x- The MOTHERLODE!!/0 0.00,0.00 {fac:A} {autotype:portal_dungeon}",
			"Dazar'alor/0 44.25,92.62 -x- The MOTHERLODE!!/0 0.00,0.00 {fac:H} {autotype:portal_dungeon}",
			"Zuldazar/0 43.35,39.48 -x- Atal'Dazar/0 0.00,0.00 {autotype:portal_dungeon}",
			"Zuldazar/0 37.49,39.47 -x- King's Rest/0 87.94,47.17 {autotype:portal_dungeon}",
			"Nazmir/0 51.38,64.83 -x- The Underrot/0 0.00,0.00 {autotype:portal_dungeon}",
			"Vol'dun/0 51.94,24.78 -x- Temple of Sethraliss/0 0.00,0.00 {autotype:portal_dungeon}",
			"Tol Dagor Isle/0 39.43,68.52 -x- Tol Dagor/0 0.00,0.00 {autotype:portal_dungeon}",
			"Mechagon Island/0 73.01,36.46 -x- Mechagon/3 0.00,0.00 {autotype:portal_dungeon}",

		--Shadowlands
			--Theater of Pain--
			"Maldraxxus/0 53.09,52.87 -x- Theater of Pain/4 0.00,0.00 {autotype:portal_dungeon}",
			--Plaguefall--
			"Maldraxxus/0 59.60,65.31 -x- Plaguefall/1 0.00,0.00 {autotype:portal_dungeon}",
			--De Other Side--
			"Ardenweald/0 68.66,66.71 -x- De Other Side/3 0.00,0.00 {autotype:portal_dungeon}",
			--Mists of Tirna Scithe--
			"Ardenweald/0 35.41,54.11 -x- Mists of Tirna Scithe/0 0.00,0.00 {autotype:portal_dungeon}",
			--Halls of Atonement--
			"Revendreth/0 78.58,49.22 -x- Halls of Atonement/0 0.00,0.00 {autotype:portal_dungeon}",
			--Sanguine Depths--
			"Revendreth/0 51.07,30.22 -x- Sanguine Depths/1 0.00,0.00 {autotype:portal_dungeon}",
			--The Necrotic Wake--
			"Bastion/0 40.13,55.20 -x- The Necrotic Wake/0 0.00,0.00 {autotype:portal_dungeon}",
			--Spires of Ascension--
			"Bastion/0 58.60,28.52 -x- Spires of Ascension/1 0.00,0.00 {autotype:portal_dungeon}",
			--Tazavesh, the Veiled Market--
			"The Gilded Landing/0 88.85,43.95 -x- Tazavesh, the Veiled Market/7 0.00,0.00 {autotype:portal_dungeon}",

		--Dragonflight
			--The Nokhud Offensive--
			"Ohn'ahran Plains/0 60.84,38.96 -x- The Nokhud Offensive/0 0.00,0.00 {autotype:portal_dungeon}",
			--Ruby Life Pools--
			"The Waking Shores/0 60.21,75.53 -x- Ruby Life Pools/0 0.00,0.00 {autotype:portal_dungeon}",
			--Neltharus--
			"The Waking Shores/0 25.36,56.75 -x- Neltharus/0 0.00,0.00 {autotype:portal_dungeon}",
			--Brackenhide Hollow--
			"The Azure Span/0 11.48,48.91 -x- Brackenhide Hollow/0 0.00,0.00 {autotype:portal_dungeon}",
			--The Azure Vault--
			"The Azure Span/0 38.86,64.90 -x- The Azure Vault/4 0.00,0.00 {autotype:portal_dungeon}",
			--Halls of Infusion--
			"Thaldraszus/0 59.13,60.44 -x- Halls of Infusion/0 0.00,0.00 {autotype:portal_dungeon}",
			--Brackenhide Hollow--
			"Thaldraszus/0 58.27,42.22 -x- Algeth'ar Academy/0 0.00,0.00 {autotype:portal_dungeon}",

	-- RAID ENTRANCE/EXITS
		--Eastern Kingdom
			--Molten Core
			"Blackrock Depths/2 68.8,38.2 -x- Molten Core/1 26.6,25.0 <subtype:portaldungeon>",
			"Molten Core/1 26.5,24.3 -x- Burning Steppes/16 54.1,83.1 <subtype:portaldungeon>",
			"Burning Steppes/16 54.1,83.1 -x- Molten Core/1 26.5,24.3 {autotype:portal_dungeon}",
			--Blackwing Lair
			--"Blackrock Spire/7 54.7,22.5 -x- Blackwing Lair/1 52.5,83.6 <subtype:portaldungeon>", -- bfa alpha removed?
			"Blackwing Lair/1 52.5,83.6 -x- Burning Steppes/14 65.6,42.2 <subtype:portaldungeon>",
			"Burning Steppes/14 64.3,70.9 -x- Blackwing Lair/1 52.5,83.6 {autotype:portal_dungeon}",

		--Kalimdor
			-- Temple of Ahn'Qiraj
			"Ahn'Qiraj: The Fallen Kingdom/0 46.78,7.45 -x- Ahn'Qiraj/2 52.00,26.92 {autotype:portal_dungeon}",
			-- Ruins of Ahn'Qiraj
			"Ahn'Qiraj: The Fallen Kingdom/0 58.92,14.29 -x- Ruins of Ahn'Qiraj/0 60.51,11.70 {autotype:portal_dungeon}",

		--Outland
			-- Karazhan
			"Deadwind Pass/0 46.81,74.60 -x- Karazhan/1 58.76,76.11 {autotype:portal_dungeon}",
			-- Sunwell Plateau
			"Isle of Quel'Danas/0 44.25,45.75 -x- Sunwell Plateau/1 30.94,36.41 {autotype:portal_dungeon}",
			-- Hyjal Summit
			"Tanaris/18 35.09,15.22 -x- Hyjal Summit/0 108.00,113.50 <subtype:portalDungeon>",
				-- hyjal lobby to first zone
				"Hyjal Summit/0 108.00,118.50 -to- Hyjal Summit/0 10.68,64.74 <subtype:portalDungeon>",
			-- Gruul's Lair
			"Blade's Edge Mountains/0 69.35,23.62 -x- Gruul's Lair/1 81.87,78.11 {autotype:portal_dungeon}",
			-- Magtheridon's Lair
			"Hellfire Peninsula/0 47.54,52.05 -x- Magtheridon's Lair/1 62.72,18.03 {autotype:portal_dungeon}",
			-- Serpentshrine Cavern
			"Zangarmarsh/0 51.90,32.78 -x- Serpentshrine Cavern/1 13.49,61.14 {autotype:portal_dungeon}",
			-- Tempest Keep
			"Netherstorm/0 73.56,63.71 -x- Tempest Keep/1 50.06,91.93 {autotype:portal_dungeon}",
			-- Black Temple
			"Shadowmoon Valley/0 71.03,46.65 -x- Black Temple/2 21.89,59.54 {autotype:portal_dungeon}",

		--Northrend
			--Onyxia's Lair
			"Dustwallow Marsh/0 52.89,77.46 -x- Onyxia's Lair/1 34,21 {autotype:portal_dungeon}",
			--Naxxramas
			"Dragonblight/0 87.44,51.11 -x- Naxxramas/5 54.1,49.8 {autotype:portal_dungeon}",
			--The Obsidian Sanctum
			"Dragonblight/0 60.00,56.85 -x- The Obsidian Sanctum/0 64.0,50.0 {autotype:portal_dungeon}",
			--The Eye of Eternity
			"Borean Tundra/0 27.55,26.65 -x- The Eye of Eternity/1 31.8,59.5 {autotype:portal_dungeon}",
			--Ulduar
			"The Storm Peaks/0 41.56,17.81 -x- Ulduar/1 52.8,94.1 {autotype:portal_dungeon}",
			--Trial of the Crusader
			"Icecrown/0 75.08,21.81 -x- Trial of the Crusader/1 64.5,52.6 {autotype:portal_dungeon}",
			--Icecrown Citadel
			"Icecrown/0 53.83,87.15 -x- Icecrown Citadel/1 39.0,7.8 {autotype:portal_dungeon}",
			--The Ruby Sanctum
			"Dragonblight/0 61.27,52.68 -x- The Ruby Sanctum/0 49.0,30.4 {autotype:portal_dungeon}",

		--Cata
			--Baradin Hold
			"Tol Barad/0 47.66,52.65 -x- Baradin Hold/1 48.0,91.8 {autotype:portal_dungeon}",
			--Blackwing Descent
			"Burning Steppes/0 23.18,26.38 -x- Blackwing Descent/1 46.8,61.0 {autotype:portal_dungeon}",
			--Dragon Soul
			"Tanaris/18 61.97,26.97 -x- Dragon Soul/1 50,84 {autotype:portal_dungeon}",
			--Firelands
			"Mount Hyjal/0 47.43,78.00 -x- Firelands/1 25.5,92.0 {autotype:portal_dungeon}",
			--The Bastion of Twilight
			"Twilight Highlands/0 33.97,77.93 -x- The Bastion of Twilight/1 39.3,53.3 {autotype:portal_dungeon}",
			--Throne of the Four Winds
			"Uldum/0 38.38,80.60 -x- Throne of the Four Winds/1 47.1,76.3 {autotype:portal_dungeon}",
			"Uldum New/0 38.25,80.69 -x- Throne of the Four Winds/1 0.00,0.00 {autotype:portal_dungeon} {cond:not ZGV.InPhase('OldUldum')}",

		--Pandaria
			--Heart of Fear
			"Dread Wastes/0 38.86,35.02 -x- Heart of Fear/1 34.0,87.4 {autotype:portal_dungeon}",
			--Mogu'Shan Vaults
			"Kun-Lai Summit/0 59.58,39.20 -x- Mogu'shan Vaults/1 75.2,73.1 {autotype:portal_dungeon}",
			--Siege of Orgrimmar
			"Vale of Eternal Blossoms/0 73.96,42.15 -x- Siege of Orgrimmar/1 0.00,0.00 {autotype:portal_dungeon}",
			"Vale of Eternal Blossoms New/0 72.86,41.91 -x- Siege of Orgrimmar/1 0.00,0.00 {autotype:portal_dungeon} {cond:not ZGV.InPhase('OldVale')}",
			--Terrace of Endless Spring
			"The Veiled Stair/0 48.45,61.44 -x- Terrace of Endless Spring/0 93.4,49.7 {autotype:portal_dungeon}",
			--Throne of Thunder
			"Isle of Thunder/0 63.64,32.37 -x- Throne of Thunder/1 31.7,25.8 {autotype:portal_dungeon}",

		--Draenor
			--Blackrock Foundry
			"Gorgrond/0 51.55,27.23 -x- Blackrock Foundry/3 41.0,86.9 {autotype:portal_dungeon}",
			--Highmaul
			"Nagrand D/0 32.94,38.36 -x- Highmaul/2 36.6,35.8 {autotype:portal_dungeon}",
			--Hellfire Citadel
			"Tanaan Jungle/0 45.60,53.54 -x- Hellfire Citadel/1 70.2,43.8 {autotype:portal_dungeon}",

		--Legion
			--Emerald Nightmare
			"Val'sharah/0 56.40,37.00 -x- The Emerald Nightmare/1 43.9,58.4 {autotype:portal_dungeon}",
			--Trial of Valor
			"Stormheim/0 71.18,72.73 -x- Trial of Valor/2 51,10 {autotype:portal_dungeon}",
			--The Nighthold
			"Suramar/0 44.13,59.80 -x- The Nighthold/1 24.0,91.2 {autotype:portal_dungeon}",
			--Tomb of Sargeras
			"Broken Shore/0 64.53,20.81 -x- Tomb of Sargeras/1 45.2,90.2 {autotype:portal_dungeon}",
			--Antorus, the Burning Throne
			"Antoran Wastes/0 54.85,62.59 -x- Antorus/1 91,69 {autotype:portal_dungeon}",
			--Invasion Point: Sangua (Krokuun)
			"Krokuun/0 73.44,33.84 -x- Invasion Point Sangua/0 24.18,50.61 <subtype:portalclick> {mode:PORTAL} {cond:ZGV:IsPOIActive(5350)}",
			"Invasion Point Sangua/0 50.91,48.01 -x- Krokuun/0 73.44,33.84 <subtype:portalclick> {mode:PORTAL} {cond:ZGV:IsPOIActive(5350)}",
			--Invasion Point: Sangua (Antoran Wastes)
			"Antoran Wastes/0 67.03,33.31 -x- Invasion Point Sangua/0 24.18,50.61 <subtype:portalclick> {mode:PORTAL} {cond:ZGV:IsPOIActive(5369)}",
			"Invasion Point Sangua/0 50.91,48.01 -x- Antoran Wastes/0 67.03,33.31 <subtype:portalclick> {mode:PORTAL} {cond:ZGV:IsPOIActive(5369)}",
			--Invasion Point: Val (Krokuun)
			"Krokuun/0 38.49,60.97 -x- Invasion Point Val/0 38.78,74.46 <subtype:portalclick> {mode:PORTAL} {cond:ZGV:IsPOIActive(5360)}",
			"Invasion Point Val/0 55.07,35.85 -x- Krokuun/0 38.49,60.97 <subtype:portalclick> {mode:PORTAL} {cond:ZGV:IsPOIActive(5360)}",
			--Invasion Point: Val (Antoran Wastes)
			"Antoran Wastes/0 72.68,65.22 -x- Invasion Point Val/0 38.78,74.46 <subtype:portalclick> {mode:PORTAL} {cond:ZGV:IsPOIActive(5372)}",
			"Invasion Point Val/0 55.07,35.85 -x- Antoran Wastes/0 72.65,65.33 <subtype:portalclick> {mode:PORTAL} {cond:ZGV:IsPOIActive(5372)}",
			--Invasion Point: Naigtal (Eredath)
			"Eredath/0 70.51,38.47 -x- Invasion Point Naigtal/0 25.20,29.85 <subtype:portalclick> {mode:PORTAL} {cond:ZGV:IsPOIActive(5368)}",
			"Invasion Point Naigtal/0 71.95,57.46 -x- Eredath/0 70.51,38.47 <subtype:portalclick> {mode:PORTAL} {cond:ZGV:IsPOIActive(5368)}",
			--Invasion Point: Naigtal (Antoran Wastes)
			"Antoran Wastes/0 55.35,29.53 -x- Invasion Point Naigtal/0 25.20,29.85 <subtype:portalclick> {mode:PORTAL} {cond:ZGV:IsPOIActive(5374)}",
			"Invasion Point Naigtal/0 71.95,57.46 -x- Antoran Wastes/0 55.35,29.53 <subtype:portalclick> {mode:PORTAL} {cond:ZGV:IsPOIActive(5374)}",
			--Invasion Point: Cen'gar (Antoran Wastes)
			"Antoran Wastes/0 60.24,42.98 -x- Invasion Point Cen'gar/0 27.39,28.40 <subtype:portalclick> {mode:PORTAL} {cond:ZGV:IsPOIActive(5370)}",
			"Invasion Point Cen'gar/0 65.76,69.57 -x- Antoran Wastes/0 60.24,42.98 <subtype:portalclick> {mode:PORTAL} {cond:ZGV:IsPOIActive(5370)}",
			--Invasion Point: Cen'gar (Krokuun)
			"Krokuun/0 68.66,81.80 -x- Invasion Point Cen'gar/0 27.39,28.40 <subtype:portalclick> {mode:PORTAL} {cond:ZGV:IsPOIActive(5359)}",
			"Invasion Point Cen'gar/0 65.76,69.57 -x- Krokuun/0 68.66,81.80 <subtype:portalclick> {mode:PORTAL} {cond:ZGV:IsPOIActive(5359)}",
			--Invasion Point: Bonich (Eredath)
			"Eredath/0 61.01,18.74 -x- Invasion Point Bonich/0 69.54,63.16 <subtype:portalclick> {mode:PORTAL} {cond:ZGV:IsPOIActive(5366)}",
			"Invasion Point Bonich/0 45.39,48.18 -x- Eredath/0 61.01,18.74 <subtype:portalclick> {mode:PORTAL} {cond:ZGV:IsPOIActive(5366)}",
			--Invasion Point: Bonich (Antoran Wastes)
			"Antoran Wastes/0 55.75,19.28 -x- Invasion Point Bonich/0 69.54,63.16 <subtype:portalclick> {mode:PORTAL} {cond:ZGV:IsPOIActive(5371)}",
			"Invasion Point Bonich/0 45.39,48.18 -x- Antoran Wastes/0 55.75,19.28 <subtype:portalclick> {mode:PORTAL} {cond:ZGV:IsPOIActive(5371)}",
			--Invasion Point: Aurinor (Antoran Wastes)
			"Antoran Wastes/0 64.59,69.16 -x- Invasion Point Aurinor/0 81.75,39.02 <subtype:portalclick> {mode:PORTAL} {cond:ZGV:IsPOIActive(5373)}",
			"Invasion Point Aurinor/0 20.45,52.72 -x- Antoran Wastes/0 64.59,69.16 <subtype:portalclick> {mode:PORTAL} {cond:ZGV:IsPOIActive(5373)}",
			--Invasion Point: Aurinor (Eredath)
			"Eredath/0 38.82,12.52 -x- Invasion Point Aurinor/0 81.75,39.02 <subtype:portalclick> {mode:PORTAL} {cond:ZGV:IsPOIActive(5367)}",
			"Invasion Point Aurinor/0 20.45,52.72 -x- Eredath/0 38.82,12.52 <subtype:portalclick> {mode:PORTAL} {cond:ZGV:IsPOIActive(5367)}",
			--Greater Invasion Point: Pit Lord Vilemus
			"Antoran Wastes/0 61.96,30.19 -x- Invasion Point Vilemus/0 81.54,39.51 <subtype:portalclick> {mode:PORTAL}",
			"Invasion Point Vilemus/0 81.54,39.51 -x- Antoran Wastes/0 61.96,30.19 <subtype:portalclick> {mode:PORTAL}",
			--Greater Invasion Point: Mistress Alluradel
			"Antoran Wastes/0 67.47,39.85 -x- Invasion Point Alluradel/0 69.96,62.58 <subtype:portalclick> {mode:PORTAL}",
			"Invasion Point Alluradel/0 70.41,66.34 -x- Antoran Wastes/0 61.96,30.19 <subtype:portalclick> {mode:PORTAL}",
			--Greater Invasion Point: Inquisitor Meto
			"Antoran Wastes/0 63.91,63.14 -x- Invasion Point Meto/0 29.35,32.05 <subtype:portalclick> {mode:PORTAL}",
			"Invasion Point Meto/0 24.03,27.66 -x- Antoran Wastes/0 63.91,63.14 <subtype:portalclick> {mode:PORTAL}",
			--Greater Invasion Point: Matron Folnuna
			"Krokuun/0 60.62,25.73 -x- Invasion Point Folnuna/0 28.46,30.09 <subtype:portalclick> {mode:PORTAL}",
			"Invasion Point Folnuna/0 28.31,21.44 -x- Krokuun/0 60.62,25.73 <subtype:portalclick> {mode:PORTAL}",
			--Greater Invasion Point: Occularus
			--"Antoran Wastes/0 67.47,39.85 -x-  <subtype:portalclick> {mode:PORTAL}",
			--" -x- Antoran Wastes/0 61.96,30.19 <subtype:portalclick> {mode:PORTAL}",
			--Greater Invasion Point: Sotanathor
			"Eredath/0 45.24,50.79 -x- Invasion Point Sotanathor/0 24.14,50.49 <subtype:portalclick> {mode:PORTAL}",
			"Invasion Point Sotanathor/0 26.29,46.22 -x- Eredath/0 45.24,50.79 <subtype:portalclick> {mode:PORTAL}",

		--BFA
			"Nazmir/0 53.80,62.62 -x- Uldir/0 52.21,93.83 {autotype:portal_dungeon}",
			"Dazar'alor/0 38.90,2.79 -x- Battle of Dazar'alor/0 49.29,91.20 {autotype:portal_dungeon}",
			"Nazjatar/0 50.38,12.45 -to- The Eternal Palace/8 50.36,4.52 {title:Dive into the whirlpool}",
			"The Eternal Palace/8 47.34,31.90 -x- The Eternal Palace/7 0.00,0.00 {autotype:portal_dungeon}",
			"The Eternal Palace/8 47.38,33.20 -to- Nazjatar/0 50.45,26.40 {title:Click the purple Displacement Pedestal and choose \"Teleport to the Tidal Conflux\"}",

		--Shadowlands
			--Castle Nathria--
			"Revendreth/0 46.37,41.50 -x- Castle Nathria/3 0.00,0.00 {autotype:portal_dungeon}",
			--Sanctum of Domination--
			"The Maw/0 69.79,31.89 -x- Sanctum of Domination/0 0.00,0.00 {autotype:portal_dungeon}",
			--Sepulcher of the First Ones--
			"Zereth Mortis/0 81.02,53.40 -x- Sepulcher of the First Ones/6 0.00,0.00 {autotype:portal_dungeon}",

		--Dragonflight
			--Vault of the Incarnates--
			"Thaldraszus/0 73.15,55.61 -x- Vault of the Incarnates/2 0.00,0.00 {autotype:portal_dungeon}",
}

data.basenodes.DungeonFloors = {
	-- Dungeons

		--Kalimdor
			["Maraudon"] = { --
				"Maraudon/1 15.53,56.75 -x- Maraudon/2 28.99,4.84",
			},
			["Blackfathom Deeps"] = {
				"Blackfathom Deeps/1 61.51,71.88 -x- Blackfathom Deeps/2 39.21,31.65",
				"Blackfathom Deeps/2 47.24,79.12 -x- Blackfathom Deeps/3 43.60,61.06",
			},
			["Dire Maul"] = { -- Can't move between wings so limits the borders.
				"Dire Maul/2 39.22,34.98 -x- Dire Maul/3 56.27,24.42",
				"Dire Maul/2 31.69,72.04 -x- Dire Maul/3 48.30,74.24",
				"Dire Maul/2 20.79,19.09 -x- Dire Maul/3 44.12,13.38",
				"Dire Maul/2 29.47,42.67 -x- Dire Maul/4 75.94,39.95",
				"Dire Maul/5 46.43,63.58 -x- Dire Maul/6 61.27,82.67",
			},
			["End Time"] = { -- End Time
			-- End Time teleporters
				"End Time/1 79.76,45.52		<name:Entryway of Time>		<subtype:teleportnamed>	@et1",
				"End Time/2 41.88,80.19		<name:Azure Dragonshrine>	<subtype:teleportnamed>	@et2",
				"End Time/3 34.34,43.19		<name:Ruby Dragonshrine>	<subtype:teleportnamed>	@et3",
				"End Time/4 75.23,62.82		<name:Obsidium Dragonshrine>	<subtype:teleportnamed>	@et4",
				"End Time/5 46.10,21.40		<name:Emerald Dragonshrine>	<subtype:teleportnamed>	@et5",
				"End Time/6 35.40,79.14		<name:Bronze Dragonshrine>	<subtype:teleportnamed>	@et6",

				"@et1 -x- @et2 {mode:PORTAL}",
				"@et1 -x- @et3 {mode:PORTAL}", "@et2 -x- @et3 {mode:PORTAL}",
				"@et1 -x- @et4 {mode:PORTAL}", "@et2 -x- @et4 {mode:PORTAL}", "@et3 -x- @et4 {mode:PORTAL}",
				"@et1 -x- @et5 {mode:PORTAL}", "@et2 -x- @et5 {mode:PORTAL}", "@et3 -x- @et5 {mode:PORTAL}", "@et4 -x- @et5 {mode:PORTAL}",
				"@et1 -x- @et6 {mode:PORTAL}", "@et2 -x- @et6 {mode:PORTAL}", "@et3 -x- @et6 {mode:PORTAL}", "@et4 -x- @et6 {mode:PORTAL}", "@et5 -x- @et6 {mode:PORTAL}",

			},
			["Halls of Origination"] = {
				"Halls of Origination/1 89.7,49.8 -x- Halls of Origination/2 24.9,49.4",
				"Halls of Origination/1 67.5,52.6 -x- Halls of Origination/2 66.7,48.5",
				"Halls of Origination/1 66.5,48.3 -x- Halls of Origination/3 45.9,47.6",
			},
			["The Culling of Stratholme"] = {
				"The Culling of Stratholme/1 47.47,32.24 -x- The Culling of Stratholme/2 50.63,92.88",
			},
			["Ahn'Qiraj"] = {
				"Ahn'Qiraj/1 34.6,45.0 -x- Ahn'Qiraj/3 66.4,46.3",
				"Ahn'Qiraj/1 33.0,52.4 -x- Ahn'Qiraj/3 50.5,73.0",
				"Ahn'Qiraj/2 49.2,63.3 -x- Ahn'Qiraj/3 47.5,29.3",
			},
			["Dragon Soul"] = {
				"Dragon Soul/1 49.16,59.04 <subtype:dragonrider> -to- Dragon Soul/2 32.66,45.49 {mode:PORTAL}",
				"Dragon Soul/2 22.98,40.36 -to- Dragon Soul/1 50.25,59.76 {mode:PORTAL}",
				"Dragon Soul/1 51.29,59.31 <subtype:dragonrider> -to- Dragon Soul/3 55.38,79.72 {mode:PORTAL}",
				"Dragon Soul/3 57.76,88.77 -to- Dragon Soul/1 50.25,59.76 {mode:PORTAL}",
				"Dragon Soul/1 50.70,60.63 -x- Dragon Soul/4 52.42,14.22 {mode:PORTAL}", --portal from top
				"Dragon Soul/7 31.93,82.91 -to- Dragon Soul/1 50.25,59.76 {mode:PORTAL}",
			},

		--Eastern Kingdom
			["The Deadmines"] = {
				-- TODO there are teleporters in DM that could/should be added. Only useful if you die and need to get back to where you were.
				"The Deadmines/1 65.48,60.02 -x- The Deadmines/2 16.97,88.45",
			},
			["Uldaman"] = {
				"Uldaman/1 46.08,9.57 -x- Uldaman/2 64.77,43.35",
			},
			["Uldaman Legacy of Tyr"] = {
				"Uldaman Legacy of Tyr/0 28.70,14.35 -x- Uldaman Legacy of Tyr/1 45.41,81.22",
			},
			["Shadowfang Keep"] = {
				"Shadowfang Keep/1 38.18,39.14 -x- Shadowfang Keep/2 60.03,13.01",
				"Shadowfang Keep/1 14.78,88.35 -x- Shadowfang Keep/2 27.49,87.84",
				"Shadowfang Keep/1 34.01,70.58 -x- Shadowfang Keep/7 23.69,75.12",
				"Shadowfang Keep/7 45.49,25.23 -to- Shadowfang Keep/3 44.44,61.70",
				"Shadowfang Keep/3 60.72,31.88 -to- Shadowfang Keep/7 47.37,19.47",
				"Shadowfang Keep/3 45.86,92.67 -x- Shadowfang Keep/4 48.93,77.89",
				"Shadowfang Keep/4 34.60,55.37 -x- Shadowfang Keep/5 48.94,77.32",
				"Shadowfang Keep/5 56.86,44.93 -to- Shadowfang Keep/4 54.68,54.74",
				"Shadowfang Keep/5 34.62,57.88 -x- Shadowfang Keep/6 48.75,90.71",
			},
			["Stratholme"] = {
			},
			["Scholomance"] = {
				"Scholomance/1 81.8,23.9 -x- Scholomance/2 76.0,26.5",
				"Scholomance/2 57.5,92.2 -x- Scholomance/3 49.7,19.2",
				"Scholomance/3 49.8,24.0 -x- Scholomance/4 49.6,28.2",
			},
			["Scarlet Monastery"] = {
				"Scarlet Monastery/1 48.4,88.5 -x- Scarlet Monastery/2 49.1,11.2",
			},
			["Scarlet Halls"] = {
				"Scarlet Halls/1 55.5,13.8 -x- Scarlet Halls/2 47.8,91.1",
			},
			["Gnomeregan"] = {
				"Gnomeregan/1 57.67,50.98 -to- Gnomeregan/2 81.36,46.02",
				"Gnomeregan/1 47.05,86.94 -x- Gnomeregan/2 75.38,74.06",
				"Gnomeregan/1 34.33,61.78 -x- Gnomeregan/2 61.73,61.55",
				"Gnomeregan/2 35.21,88.08 -x- Gnomeregan/3 38.60,50.33",
				"Gnomeregan/3 48.26,71.95 -x- Gnomeregan/4 71.25,77.54",
			},
			["Blackrock Spire"]= {
				"Blackrock Spire/1 66.1,51.1 -x- Blackrock Spire/3 66.0,49.2",
				"Blackrock Spire/3 58.4,47.7 -x- Blackrock Spire/1 56.7,48.3",
				"Blackrock Spire/2 64.8,70.9 -x- Blackrock Spire/1 59.8,70.2",
				"Blackrock Spire/2 59.5,59.3 -x- Blackrock Spire/1 59.4,63.9",
				"Blackrock Spire/2 53.2,52.8 -x- Blackrock Spire/3 57.0,51.2",
				"Blackrock Spire/3 49.9,74.1 -x- Blackrock Spire/2 51.1,74.2",
				"Blackrock Spire/3 46.5,65.8 -x- Blackrock Spire/4 45.1,59.5",
				"Blackrock Spire/4 47.2,42.7 -x- Blackrock Spire/3 55.1,37.6",
				"Blackrock Spire/4 37.2,34.2 -x- Blackrock Spire/5 37.1,32.1",
				"Blackrock Spire/5 33.3,13.3 -x- Blackrock Spire/6 30.4,18.7",
				--"Blackrock Spire/6 29.0,41.4 -x- Blackrock Spire/7 28.4,36.1", -- bfa alpha, cannot find map for floor 7, on live it is... somewhere, but not within BRS
				--"Blackrock Spire/7 30.7,42.7 -to- Blackrock Spire/6 30.6,41.6", --cliff
				--"Blackrock Spire/7 36.4,43.3 -to- Blackrock Spire/6 36.1,41.3",
			},
			["Blackrock Caverns"] = {
				"Blackrock Caverns/1 52.05,20.12 -to- Blackrock Caverns/2 29.97,17.32",
				"Blackrock Caverns/1 49.93,12.98 -x- Blackrock Caverns/2 29.37,13.13",
			},

		--Shadowlands
		["De Other Side"] = {
			"De Other Side/2 82.19,48.24 <radius:15> -x- De Other Side/3 27.79,58.18 <radius:15>",
			"De Other Side/3 72.98,58.00 <radius:15> -x- De Other Side/1 9.49,58.64 <radius:15>",
			"De Other Side/3 50.59,88.22 <radius:15> -x- De Other Side/0 49.19,24.75 <radius:15>",
		},

		["Spires of Ascension"] = {
			"Spires of Ascension/1 36.15,62.95 <radius:15> -x- Spires of Ascension/0 72.02,18.19 <radius:15>",
			"Spires of Ascension/1 69.27,41.25 <radius:15> -x- Spires of Ascension/2 37.59,80.06 <radius:15>",
			"Spires of Ascension/2 50.74,45.09 <radius:15> -x- Spires of Ascension/3 42.97,69.58 <radius:15>",
		},

		["Halls of Atonement"] = {
			"Halls of Atonement/0 23.06,53.91 <radius:15> -x- Halls of Atonement/1 83.98,50.22 <radius:15>",
			"Halls of Atonement/1 19.18,37.84 <radius:15> -x- Halls of Atonement/2 71.43,49.21 <radius:15>",
		},
		["Plaguefall"] = {
			"Plaguefall/1 55.40,81.42 <radius:15> -x- Plaguefall/0 55.17,44.55 <radius:15>",
		},

		["Sanguine Depths"] = {
			"Sanguine Depths/1 40.60,89.49 <radius:15> -x- Sanguine Depths/0 50.86,77.79 <radius:15>",
		},

		["The Necrotic Wake"] = {
			"The Necrotic Wake/0 25.27,40.35 <radius:15> -x- The Necrotic Wake/1 51.10,83.75 <radius:15>",
			"The Necrotic Wake/1 50.74,56.31 <radius:15> -x- The Necrotic Wake/2 50.74,55.31 <radius:15>",
		},

		["Theater of Pain"] = {
			"Theater of Pain/4 50.74,47.35 <radius:15> -x- Theater of Pain/3 31.97,34.33 <radius:15>",
			"Theater of Pain/3 32.21,16.39 <radius:15> -x- Theater of Pain/2 71.07,90.39 <radius:15>",
			"Theater of Pain/3 22.05,28.87 <radius:15> -x- Theater of Pain/1 81.47,69.58 <radius:15>",
			"Theater of Pain/1 25.39,22.24 <radius:15> -x- Theater of Pain/0 24.92,23.74 <radius:15>",
		},

		["Tazavesh"] = {
			"Tazavesh, the Veiled Market/7 43.66,63.09 <radius:15> -x- Tazavesh, the Veiled Market/6 36.61,18.28 <radius:15>",
			"Tazavesh, the Veiled Market/7 40.11,43.01 <radius:15> -x- Tazavesh, the Veiled Market/5 78.12,63.74 <radius:15>",
			"Tazavesh, the Veiled Market/7 41.46,28.01 <radius:15> -x- Tazavesh, the Veiled Market/4 62.29,85.27 <radius:15>",
			"Tazavesh, the Veiled Market/7 31.43,54.11 <radius:15> -x- Tazavesh, the Veiled Market/3 22.88,79.99 <radius:15>",
			"Tazavesh, the Veiled Market/3 62.86,52.15 <radius:15> -x- Tazavesh, the Veiled Market/2 19.07,26.04 <radius:15>",
			"Tazavesh, the Veiled Market/2 62.48,53.78 <radius:15> -x- Tazavesh, the Veiled Market/1 75.50,37.73 <radius:15>",
			"Tazavesh, the Veiled Market/1 42.95,61.66 <radius:15> -x- Tazavesh, the Veiled Market/0 81.11,53.08 <radius:15>",
		},

		--Dragonflight
		["Ruby Life Pools"] = {
			"Ruby Life Pools/0 64.57,43.07 <radius:15> -x- Ruby Life Pools/1 51.37,57.57 <radius:15>",
		},

		["Neltharus"] = {
			"Neltharus/0 27.16,52.69 <radius:15> -x- Neltharus/1 33.31,37.52 <radius:15>",
		},

		["Brackenhide Hollow"] = {
			"Brackenhide Hollow/0 71.73,49.43 <radius:15> -x- Brackenhide Hollow/1 25.16,54.77 <radius:15>",
			"Brackenhide Hollow/0 74.24,58.14 <radius:15> -x- Brackenhide Hollow/1 25.16,54.77 <radius:15>",
		},

		["The Azure Vault"] = {
			"The Azure Vault/4 45.46,41.90 <radius:15> -x- The Azure Vault/3 39.10,20.02 <radius:15>",
			"The Azure Vault/3 58.32,65.87 <radius:15> -x- The Azure Vault/2 27.10,55.38 <radius:15>",
			"The Azure Vault/2 84.25,34.93 <radius:15> -x- The Azure Vault/1 81.93,32.17 <radius:15>",
			"The Azure Vault/1 36.51,43.08 <radius:15> -x- The Azure Vault/0 57.56,60.51 <radius:15>",
		},

		["Brackenhide Hollow"] = {
			"Halls of Infusion/0 63.41,79.61 <radius:15> -x- Halls of Infusion/1 57.93,79.08 <radius:15>",
		},

		["Algeth'ar Academy"] = {
			"Algeth'ar Academy/0 57.02,72.26 <radius:15> -x- Algeth'ar Academy/1 16.11,24.29 <radius:15>",
			"Algeth'ar Academy/0 60.02,28.46 <radius:15> -x- Algeth'ar Academy/2 54.09,84.28 <radius:15>",
			"Algeth'ar Academy/0 42.81,7.49 <radius:15> -x- Algeth'ar Academy/2 54.09,84.28 <radius:15>",
		},


	--Raids

		-- Old world
			["Karazhan"] = {
				"Karazhan/1 38.3,78.6 -x- Karazhan/2 29.1,80.8",
				"Karazhan/2 38.6,14.1 -x- Karazhan/3 39.8,81.7",
				"Karazhan/1 53.1,64.1 -x- Karazhan/3 52.5,91.3",
				"Karazhan/3 67.0,42.4 -x- Karazhan/4 67.9,42.9",
				"Karazhan/1 37.6,12.8 -x- Karazhan/4 47.2,29.1",
				"Karazhan/4 23.5,49.2 -x- Karazhan/5 45.4,83.7",
				"Karazhan/5 67.9,26.5 -x- Karazhan/6 41.4,13.3",
				"Karazhan/6 64.9,69.2 -x- Karazhan/7 73.2,65.3",
				"Karazhan/8 51.8,58.3 -x- Karazhan/9 61.5,19.2",
				"Karazhan/9 31.0,66.3 -x- Karazhan/10 30.9,59.9",
				"Karazhan/10 37.1,23.1 -x- Karazhan/11 64.0,26.8",
				"Karazhan/10 58.8,56.0 -x- Karazhan/12 47.0,56.0",
				"Karazhan/12 25.9,61.3 -x- Karazhan/13 53.8,78.5",
				"Karazhan/12 39.6,18.8 -x- Karazhan/14 20.6,81.3",
				"Karazhan/14 83.2,57.1 -x- Karazhan/15 82.3,69.8",
				"Karazhan/15 83.2,75.5 -x- Karazhan/16 71.9,70.5",
				"Karazhan/16 66.2,79.3 -x- Karazhan/17 50.9,91.1",
			},
			["Blackwing Lair"] = {
				"Blackwing Lair/1 45.4,27.7 -x- Blackwing Lair/2 49.7,36.0",
				"Blackwing Lair/1 37.6,11.2 -x- Blackwing Lair/2 44.0,22.9",
				"Blackwing Lair/2 49.4,80.3 -x- Blackwing Lair/3 57.0,87.2",
				"Blackwing Lair/3 31.0,37.5 -x- Blackwing Lair/4 22.0,60.9",
			},
			["Blackrock Depths"] = {
				"Blackrock Depths/1 40.7,67.1 -x- Blackrock Depths/2 41.8,92.4",
				"Blackrock Depths/1 67.0,26.3 -x- Blackrock Depths/2 64.9,57.1",
				"Blackrock Depths/1 59.8,30.9 -x- Blackrock Depths/2 59.9,60.1",
				"Blackrock Depths/1 58.7,34.4 -x- Blackrock Depths/2 58.9,64.7",
				"Blackrock Depths/1 55.0,35.6 -x- Blackrock Depths/2 54.2,65.6",
				"Blackrock Depths/1 56.9,51.3 -x- Blackrock Depths/2 56.4,77.5",
				"Blackrock Depths/1 57.3,57.1 -x- Blackrock Depths/2 56.9,85.7",
				"Blackrock Depths/1 54.8,62.9 -x- Blackrock Depths/2 55.2,89.9",
				"Blackrock Depths/1 45.4,63.1 -x- Blackrock Depths/2 44.6,90.0",
				"Blackrock Depths/1 45.0,64.3 -x- Blackrock Depths/2 44.5,91.1",
				"Blackrock Depths/1 46.6,52.5 -x- Blackrock Depths/2 47.5,81.1",
				"Blackrock Depths/1 42.5,46.3 -x- Blackrock Depths/2 42.3,73.6",
				"Blackrock Depths/1 41.6,39.1 -x- Blackrock Depths/2 41.4,68.1",
				"Blackrock Depths/1 53.0,31.8 -x- Blackrock Depths/2 53.0,61.5",
				"Blackrock Depths/1 54.0,27.0 -x- Blackrock Depths/2 53.2,55.6",
			},
			["Naxxramas"] = {
				"Naxxramas/1 68.6,77.7 -x- Naxxramas/5 51.6,47.1",
				"Naxxramas/2 30.7,77.9 -x- Naxxramas/5 55.0,47.1",
				"Naxxramas/3 66.9,21.9 -x- Naxxramas/5 51.7,52.2",
				"Naxxramas/4 32.9,22.4 -x- Naxxramas/5 55.2,52.5",
				"Naxxramas/5 53.5,50.1 -to- Naxxramas/6 73.6,72.8",
				"Naxxramas/6 74.6,73.2 -to- Naxxramas/5 51.3,49.7",
			},
			["Blackwing Descent"] = {
				"Blackwing Descent/1 46.9,42.1 -x- Blackwing Descent/2 47.4,89.8",
			},
			["The Bastion of Twilight"] = {
				"The Bastion of Twilight/1 53.6,85.1 -x- The Bastion of Twilight/2 55.0,6.2",
			},

		--Outlands
			["The Steamvault"]={
				"The Steamvault/1 49.85,29.26 -x- The Steamvault/2 51.23,28.93",
				"The Steamvault/1 51.38,27.47 -to- The Steamvault/2 51.48,29.20",
				"The Steamvault/1 48.01,77.81 -x- The Steamvault/2 46.24,79.55",
				"The Steamvault/1 36.64,73.70 -to- The Steamvault/2 35.59,72.57",
			},
			["The Mechanar"]={
				"The Mechanar/1 41.73,22.82 -x- The Mechanar/2 41.77,31.54",
			},
			["The Arcatraz"]={
				"The Arcatraz/1 65.11,35.34 -x- The Arcatraz/2 89.26,43.76",
				"The Arcatraz/2 36.51,57.12 -x- The Arcatraz/3 26.97,88.52",
			},
			["Sethekk Halls"]={
				"Sethekk Halls/1 48.71,95.13 -x- Sethekk Halls/2 53.33,94.35",
				"Sethekk Halls/2 44.61,27.42 -to- Sethekk Halls/1 51.57,27.55",
			},
			["Auchenai Crypts"]={
				"Auchenai Crypts/1 44.67,17.68 -x- Auchenai Crypts/2 22.77,12.22",
			},
			["Black Temple"]={
				"Black Temple/2 29.58,19.61 -x- Black Temple/1 28.02,74.29",
				"Black Temple/1 63.09,45.70 -x- Black Temple/3 24.31,50.07",
				"Black Temple/3 58.48,91.11 -x- Black Temple/5 66.89,68.26",
				"Black Temple/3 26.28,21.71 -x- Black Temple/6 8.40,59.62",
				"Black Temple/6 67.17,51.10 -x- Black Temple/7 69.01,16.15",
				"Black Temple/7 46.72,35.00 -x- Black Temple/8 52.69,20.84",
				"Black Temple/3 61.32,34.65 -x- Black Temple/4 64.35,39.46",
			},
			["Magisters' Terrace"]={
				"Magisters' Terrace/2 82.88,44.83 -x- Magisters' Terrace/1 83.15,55.44",
			},

		--Northrend
			["The Oculus"] = {
				"The Oculus/1 38.45,50.96 -x- The Oculus/1 47.89,69.3 <subtype:portalclick> {mode:PORTAL}",
			},
			["Utgarde Keep"] = {
				"Utgarde Keep/1 48.5,84.7 -x- Utgarde Keep/2 34.8,64.5",
				"Utgarde Keep/2 53.5,25.3 -x- Utgarde Keep/3 33.1,40.7",
			},
			["Utgarde Pinnacle"] = {
				"Utgarde Pinnacle/1 31.1,75.0 -x- Utgarde Pinnacle/2 42.3,76.6",
				"Utgarde Pinnacle/1 45.9,82.6 -x- Utgarde Pinnacle/2 54.2,79.1",
				"Utgarde Pinnacle/1 54.7,18.0 -x- Utgarde Pinnacle/2 59.6,34.1",
			},
			["Halls of Lightning"] = {
				"Halls of Lightning/1 89.0,53.8 -x- Halls of Lightning/2 57.0,21.3",
			},
			["Azjol-Nerub"] = {
				"Azjol-Nerub/2 41.0,37.3 -x- Azjol-Nerub/3 70.6,31.6",
				"Azjol-Nerub/2 50.3,60.4 -to- Azjol-Nerub/1 22.0,50.7",
			},
			["Drak'Tharon Keep"] = {
				"Drak'Tharon Keep/1 64.4,71.6 -x- Drak'Tharon Keep/2 50.5,71.5",
			},
			["Ulduar"] = {
				-- floor 6 is part of a boss encounter.
				"Ulduar/2 37.24,1.35 -x- Ulduar/3 54.09,78.14",
				"Ulduar/2 36.72,0.61 -x- Ulduar/3 48.21,77.34",
				"Ulduar/3 30.33,74.84 -x- Ulduar/4 35.36,52.21",

				-- Ulduar teleporters
					"Ulduar/1 50.98,85.54 <name:Expedition Base Camp>	<subtype:teleportnamed>	@uld10",
					"Ulduar/1 49.24,47.34 <name:Formation Grounds>		<subtype:teleportnamed>	@uld11",
					"Ulduar/1 48.54,28.08 <name:Colossal Forge>		<subtype:teleportnamed>	@uld12",
					"Ulduar/1 48.51,11.06 <name:Scrapyard>			<subtype:teleportnamed>	@uld13",
					"Ulduar/2 37.32,00.52 <name:Antechamber of Ulduar>	<subtype:teleportnamed>	@uld20",
					"Ulduar/2 37.10,76.41 <name:Shattered Walkway>		<subtype:teleportnamed>	@uld21",
					"Ulduar/3 51.02,54.02 <name:Conservatory of Life>	<subtype:teleportnamed>	@uld30",
					"Ulduar/4 66.60,59.98 <name:Prison of Yogg-Saron>	<subtype:teleportnamed>	@uld40",
					"Ulduar/5 43.65,62.19 <name:Spark of Imagination>	<subtype:teleportnamed>	@uld50",

				"@uld10 -x- @uld11 {mode:PORTAL}",
				"@uld10 -x- @uld12 {mode:PORTAL}", "@uld11 -x- @uld12 {mode:PORTAL}",
				"@uld10 -x- @uld13 {mode:PORTAL}", "@uld11 -x- @uld13 {mode:PORTAL}", "@uld12 -x- @uld13 {mode:PORTAL}",
				"@uld10 -x- @uld20 {mode:PORTAL}", "@uld11 -x- @uld20 {mode:PORTAL}", "@uld12 -x- @uld20 {mode:PORTAL}", "@uld13 -x- @uld20 {mode:PORTAL}",
				"@uld10 -x- @uld21 {mode:PORTAL}", "@uld11 -x- @uld21 {mode:PORTAL}", "@uld12 -x- @uld21 {mode:PORTAL}", "@uld13 -x- @uld21 {mode:PORTAL}", "@uld20 -x- @uld21 {mode:PORTAL}",
				"@uld10 -x- @uld30 {mode:PORTAL}", "@uld11 -x- @uld30 {mode:PORTAL}", "@uld12 -x- @uld30 {mode:PORTAL}", "@uld13 -x- @uld30 {mode:PORTAL}", "@uld20 -x- @uld30 {mode:PORTAL}", "@uld21 -x- @uld30 {mode:PORTAL}",
				"@uld10 -x- @uld40 {mode:PORTAL}", "@uld11 -x- @uld40 {mode:PORTAL}", "@uld12 -x- @uld40 {mode:PORTAL}", "@uld13 -x- @uld40 {mode:PORTAL}", "@uld20 -x- @uld40 {mode:PORTAL}", "@uld21 -x- @uld40 {mode:PORTAL}", "@uld30 -x- @uld40 {mode:PORTAL}",
				"@uld10 -x- @uld50 {mode:PORTAL}", "@uld11 -x- @uld50 {mode:PORTAL}", "@uld12 -x- @uld50 {mode:PORTAL}", "@uld13 -x- @uld50 {mode:PORTAL}", "@uld20 -x- @uld50 {mode:PORTAL}", "@uld21 -x- @uld50 {mode:PORTAL}", "@uld30 -x- @uld50 {mode:PORTAL}", "@uld40 -x- @uld50 {mode:PORTAL}",
			},
			["Trial of the Crusader"] = {
				"Trial of the Crusader/1 51.4,52.4 -to- Trial of the Crusader/2 52.5,73.5",
			},
			["Icecrown Citadel"] = {
				"Icecrown Citadel/1 39.07,85.75 -x- Icecrown Citadel/2 45.60,84.81",
				"Icecrown Citadel/2 45.62,73.77 -x- Icecrown Citadel/3 51.33,83.92",
				"Icecrown Citadel/3 51.85,19.20 -x- Icecrown Citadel/5 51.85,83.82",
				"Icecrown Citadel/4 36.48,89.98 -x- Icecrown Citadel/5 76.71,91.90",
				"Icecrown Citadel/4 50.50,33.31 -x- Icecrown Citadel/5 85.91,53.55",
				"Icecrown Citadel/5 60.68,17.31 -x- Icecrown Citadel/6 78.82,31.45",
				"Icecrown Citadel/5 43.44,16.66 -x- Icecrown Citadel/6 23.19,30.52",
				"Icecrown Citadel/5 52.35,53.69 -x- Icecrown Citadel/7 49.85,39.13",
				"Icecrown Citadel/6 50.65,69.26 -to- Icecrown Citadel/5 51.82,32.29",

				-- ICC teleporters
					"Icecrown Citadel/1 38.98,17.17   <name:Light's Hammer>		<subtype:teleportnamed>	@icc10",
					"Icecrown Citadel/1 38.98,71.11   <name:Oratory of the Damned>	<subtype:teleportnamed>	@icc11",
					"Icecrown Citadel/2 45.60,80.43   <name:Rampart of Skulls>	<subtype:teleportnamed>	@icc20",
					"Icecrown Citadel/3 51.50,76.26   <name:Deathbringer's Rise>	<subtype:teleportnamed>	@icc30",
					"Icecrown Citadel/4 26.11,33.30   <name:Sindragosa's Lair>	<subtype:teleportnamed>	@icc40",
					"Icecrown Citadel/5 51.87,74.32   <name:Upper Spire>		<subtype:teleportnamed>	@icc50",

				"@icc10 -x- @icc11 {mode:PORTAL}",
				"@icc10 -x- @icc20 {mode:PORTAL}", "@icc11 -x- @icc20 {mode:PORTAL}",
				"@icc10 -x- @icc30 {mode:PORTAL}", "@icc11 -x- @icc30 {mode:PORTAL}", "@icc20 -x- @icc30 {mode:PORTAL}",
				"@icc10 -x- @icc40 {mode:PORTAL}", "@icc11 -x- @icc40 {mode:PORTAL}", "@icc20 -x- @icc40 {mode:PORTAL}", "@icc30 -x- @icc40 {mode:PORTAL}",
				"@icc10 -x- @icc50 {mode:PORTAL}", "@icc11 -x- @icc50 {mode:PORTAL}", "@icc20 -x- @icc50 {mode:PORTAL}", "@icc30 -x- @icc50 {mode:PORTAL}", "@icc40 -x- @icc50 {mode:PORTAL}",
			},

		--Maelstrom
			["Throne of the Tides"] = {
				"Throne of the Tides/1 48.9,82.1 -x- Throne of the Tides/2 51.0,53.0",
				"Throne of the Tides/1 50.0,39.7 -x- Throne of the Tides/2 50.0,90.1",
			},

		--Pandaria
			["Stormstout Brewery"] = {
				"Stormstout Brewery/1 28.1,61.1 -x- Stormstout Brewery/2 32.8,59.2",
				"Stormstout Brewery/2 81.5,58.5 -x- Stormstout Brewery/3 33.8,77.9",
				"Stormstout Brewery/3 75.5,33.5 -x- Stormstout Brewery/4 57.6,31.1",
			},
			["Siege of Niuzao Temple"] = {
				"Siege of Niuzao Temple/1 50.3,73.9 -x- Siege of Niuzao Temple/3 21.6,53.6",
				"Siege of Niuzao Temple/2 53.2,81.9 -x- Siege of Niuzao Temple/3 57.1,80.7",
			},
			["Mogu'shan Palace"] = {
				"Mogu'shan Palace/1 49.0,67.0 -x- Mogu'shan Palace/2 55.8,18.9",
				"Mogu'shan Palace/2 71.5,76.2 -x- Mogu'shan Palace/3 58.8,24.3",
			},
			["Temple of the Jade Serpent"] = {
				"Temple of the Jade Serpent/1 27.4,62.7 -x- Temple of the Jade Serpent/2 39.0,22.0",
				"Temple of the Jade Serpent/1 27.0,68.7 -x- Temple of the Jade Serpent/2 46.6,42.5",
			},
			["Shado-Pan Monastery"] = {
				"Shado-Pan Monastery/1 56.0,88.0 -x- Shado-Pan Monastery/2 21.0,85.6",
				"Shado-Pan Monastery/1 36.5,81.8 -x- Shado-Pan Monastery/3 76.9,81.4",
				"Shado-Pan Monastery/1 22.1,69.1 -x- Shado-Pan Monastery/3 12.3,19.2",
				"Shado-Pan Monastery/1 30.7,35.0 -x- Shado-Pan Monastery/4 17.0,72.6",
				"Shado-Pan Monastery/1 44.7,40.1 -x- Shado-Pan Monastery/4 51.3,83.9",
			},
			["Gate of the Setting Sun"] = {
				"Gate of the Setting Sun/1 46.3,33.1 -x- Gate of the Setting Sun/2 50.0,50.8",
			},
			["Mogu'shan Vaults"] = {
				"Mogu'shan Vaults/1 32.2,13.5 -x- Mogu'shan Vaults/2 77.8,81.1",
				"Mogu'shan Vaults/2 28.7,52.1 -x- Mogu'shan Vaults/3 65.7,10.6",
			},
			["Heart of Fear"] = {
				"Heart of Fear/1 32.1,16.3 -x- Heart of Fear/2 66.3,27.2",
			},
			["Sunwell Plateau"] = {
				"Sunwell Plateau/1 67.2,27.3 -x- Sunwell Plateau/2 52.7,14.1",
			},
			["The Bastion of Twilight"] = {
				"The Bastion of Twilight/1 53.7,85.2 -x- The Bastion of Twilight/2 55.1,5.5",
				"The Bastion of Twilight/2 69.8,74.8 -to- The Bastion of Twilight/3 54.8,65.5",
			},
			["Hour of Twilight"] = {
				"Hour of Twilight/1 49.3,81.7 -x- Hour of Twilight/2 49.3,83.0",
			},
			["Firelands"] = {
				"Firelands/1 49.7,1.0 -x- Firelands/3 52.3,81.9",
			},
			["Throne of Thunder"] = {
				"Throne of Thunder/1 83.4,79.6 -x- Throne of Thunder/2 14.8,78.9",
				"Throne of Thunder/2 72.90,20.01 -x- Throne of Thunder/3 20.70,82.15",
				"Throne of Thunder/3 73.1,53.2 -x- Throne of Thunder/4 21.9,21.1",
				"Throne of Thunder/4 34.0,59.0 -x- Throne of Thunder/5 80.2,7.8",
				"Throne of Thunder/5 46.64,22.87 -x- Throne of Thunder/6 20.44,64.75",
				"Throne of Thunder/6 88.13,74.91 -x- Throne of Thunder/7 45.97,10.54",
			},
			["Siege of Orgrimmar"] = {
				"Siege of Orgrimmar/1 44.7,69.2 -x- Siege of Orgrimmar/3 64.6,12.7",
				"Siege of Orgrimmar/2 11.7,71.9 -x- Siege of Orgrimmar/1 26.4,9.8",
				"Siege of Orgrimmar/1 28.5,9.7 -x- Siege of Orgrimmar/2 11.7,71.8",
				"Siege of Orgrimmar/4 34.8,21.6 -x- Siege of Orgrimmar/5 51.7,76.9",
				"Siege of Orgrimmar/5 56.3,29.1 -x- Siege of Orgrimmar/6 80.7,16.3",
				"Siege of Orgrimmar/6 67.9,50.1 -x- Siege of Orgrimmar/7 31.1,20.3",
				"Siege of Orgrimmar/8 78.6,73.6 -x- Siege of Orgrimmar/9 64.0,17.8",
				"Siege of Orgrimmar/8 89.4,62.3 -x- Siege of Orgrimmar/10 23.7,82.3",
				"Siege of Orgrimmar/8 87.7,76.4 -x- Siege of Orgrimmar/11 32.0,14.8",
				"Siege of Orgrimmar/11 65.2,91.5 -x- Siege of Orgrimmar/12 53.7,13.5",
			},

		--Draenor

			-- Draenor raids go here

		--------------------------------
		---  COURT OF STARS DUNGEON  ---
		--------------------------------
		["Court of Stars"] = {
			"Court of Stars/1 63.36,65.91 <radius:15> -x- Court of Stars/2 38.42,40.67 <radius:15>"..
				"{template:building}",

			"Court of Stars/2 47.80,39.54 <radius:15> -x- Court of Stars/3 54.76,53.74 <radius:15>"..
				"{title_atob:Run up the stairs} {title_btoa:Run down the stairs}",



		},
		---- Scenarios -----
		----------------------------
		---  STORMHEIM INVASION  ---
		----------------------------
		["Stormheim Invasion"] = {
			"Stormheim Invasion/1 40.73,43.58 <radius:10> -x- Stormheim Invasion/2 44.02,34.65 <radius:15>"..
			"{title_atob:Follow the path down} {title_btoa:Follow the path up}",
		},

		-------------------------------
		---  HIGHMOUNTAIN INVASION  ---
		-------------------------------
		["Highmountain Invasion"] = {
			"Highmountain Invasion/1 33.73,36.75 <radius:10> -x- Highmountain Invasion/2 38.80,28.00 <radius:15>"..
			"{title_atob:Follow the path down} {title_btoa:Follow the path up}",
		},

		----------------------------
		--- BATTLE OF DAZAR'ALOR ---
		----------------------------
		["Battle of Dazar'alor"] = {
			"Battle of Dazar'alor/0 49.09,11.84 <radius:15> -x- Battle of Dazar'alor/1 42.14,86.65 <radius:15>",
			"Battle of Dazar'alor/1 33.37,8.70 <radius:15> -x- Battle of Dazar'alor/2 47.44,15.53 <radius:15>",
			"Battle of Dazar'alor/2 64.19,80.61 <radius:15> -x- Battle of Dazar'alor/3 64.82,70.72 <radius:15>",
			"Battle of Dazar'alor/3 36.14,58.85 <radius:15> -x- Battle of Dazar'alor/4 47.44,42.53 <radius:15>",
			"Battle of Dazar'alor/4 47.38,16.42 <radius:15> -x- Battle of Dazar'alor/5 48.93,75.17 <radius:15>",
		},

		----------------------------
		--- THE ETERNAL PALACE ---
		----------------------------
		["The Eternal Palace"] = {
			"The Eternal Palace/7 15.06,48.35 <radius:15> -x- The Eternal Palace/6 66.28,69.94 <radius:15>",
			"The Eternal Palace/6 44.91,90.17 <radius:15> -x- The Eternal Palace/5 56.81,14.35 <radius:15>",
			"The Eternal Palace/6 47.49,68.79 <radius:15> -x- The Eternal Palace/4 42.47,52.30 <radius:15>",
			"The Eternal Palace/4 49.78,71.88 <radius:15> -x- The Eternal Palace/3 85.22,36.73 <radius:15>",
			"The Eternal Palace/3 10.47,62.12 <radius:15> -x- The Eternal Palace/2 67.86,49.07 <radius:15>",
			"The Eternal Palace/2 15.78,48.21 <radius:15> -x- The Eternal Palace/1 89.38,51.15 <radius:15>",
			"The Eternal Palace/1 11.33,46.20 <radius:15> -x- The Eternal Palace/0 67.14,52.51 <radius:15>",
		},

		----------------------------
		--- OPERATION: MECHAGON ---
		----------------------------
		["Mechagon"] = {
			"Mechagon/3 52.08,63.70 <radius:15> -x- Mechagon/2 80.63,16.93 <radius:15>",
			"Mechagon/2 33.86,59.33 <radius:15> -x- Mechagon/1 55.09,80.49 <radius:15>",
			"Mechagon/1 20.37,18.29 <radius:15> -x- Mechagon/0 60.98,77.62 <radius:15>",
		},

		---------------------------------
		--- MOGU'SHAN PALACE SCENARIO ---
		---------------------------------
		["Mogu Palace New"] = {
			"Mogu Palace New/1 48.58,66.20 <radius:7> -x- Mogu Palace New/0 55.27,18.89 <radius:7>",
		},

		---------------------------------
		--- MOGU'SHAN VAULTS SCENARIO ---
		---------------------------------
		["Mogu Vaults New"] = {
			"Mogu Vaults New/1 26.85,51.80 <radius:10> -x- Mogu Vaults New/0 66.22,10.55 <radius:10>",
		},

		----------------------------------
		--- NY'ALOTHA, THE WAKING CITY ---
		----------------------------------
		["Ny'alotha, the Waking City"] = {
			"Ny'alotha, the Waking City/10 52.98,49.54 -to- Ny'alotha, the Waking City/9 51.07,82.36 <radius:15> {title_atob:Kill Wrathion and wait to be teleported}",
			"Ny'alotha, the Waking City/9 51.10,15.40 <radius:15> -x- Ny'alotha, the Waking City/8 52.20,79.44 <radius:15>",
			"Ny'alotha, the Waking City/8 58.63,53.78 <radius:15> -x- Ny'alotha, the Waking City/6 12.64,51.73 <radius:15>",
			"Ny'alotha, the Waking City/6 74.96,43.73 <radius:15> -x- Ny'alotha, the Waking City/7 74.33,45.77 <radius:15>",
			"Ny'alotha, the Waking City/8 44.51,42.24 <radius:15> -x- Ny'alotha, the Waking City/4 75.33,85.00 <radius:15>",
			"Ny'alotha, the Waking City/4 34.77,32.83 <radius:15> -x- Ny'alotha, the Waking City/5 37.44,32.43 <radius:15>",
			"Ny'alotha, the Waking City/8 52.51,16.89 <radius:15> -x- Ny'alotha, the Waking City/3 48.90,81.33 <radius:15>",
			"Ny'alotha, the Waking City/8 48.74,53.15 <radius:15> -x- Ny'alotha, the Waking City/2 59.57,31.65 <radius:15>",
			"Ny'alotha, the Waking City/2 56.12,20.82 <radius:15> -x- Ny'alotha, the Waking City/1 78.72,48.67 <radius:15>",
			"Ny'alotha, the Waking City/1 65.70,66.80 <radius:15> -x- Ny'alotha, the Waking City/0 49.21,84.67 <radius:15>",
		},

		----------------------
		--- CASTLE NATHRIA ---
		----------------------
		["Castle Nathria"] = {
			"Castle Nathria/3 31.73,41.43 <radius:15> -x- Castle Nathria/4 46.68,53.34 <radius:15>",
			"Castle Nathria/3 58.87,90.57 <radius:15> -x- Castle Nathria/1 20.13,38.63 <radius:15>",
			"Castle Nathria/1 52.53,91.10 <radius:15> -x- Castle Nathria/2 15.23,38.09 <radius:15>",
			"Castle Nathria/3 51.82,53.44 <radius:15> -x- Castle Nathria/0 31.37,16.93 <radius:15>",
		},

		-----------------------------
		--- SANCTUM OF DOMINATION ---
		-----------------------------
		["Sanctum of Domination"] = {
			"Sanctum of Domination/0 54.47,59.01 <radius:15> -x- Sanctum of Domination/1 24.19,86.12 <radius:15>",
			"Sanctum of Domination/1 37.48,12.19 <radius:15> -x- Sanctum of Domination/2 21.21,47.60 <radius:15>",
			"Sanctum of Domination/1 46.58,12.60 <radius:15> -x- Sanctum of Domination/2 30.42,47.74 <radius:15>",
			"Sanctum of Domination/2 54.83,36.26 <radius:15> -x- Sanctum of Domination/3 63.12,52.01 <radius:15>",
			"Sanctum of Domination/3 33.90,52.01 <radius:15> -x- Sanctum of Domination/4 43.52,42.48 <radius:15>",
		},

		-----------------------------------
		--- SEPULCHER OF THE FIRST ONES ---
		-----------------------------------
		["Sepulcher of the First Ones"] = {
			"Sepulcher of the First Ones/6 90.72,49.67 <radius:15> -x- Sepulcher of the First Ones/1 66.96,21.00 <radius:15>",
			"Sepulcher of the First Ones/1 67.00,20.97 <radius:15> -x- Sepulcher of the First Ones/2 24.27,82.35 <radius:15>",
			"Sepulcher of the First Ones/6 90.61,54.86 <radius:15> -x- Sepulcher of the First Ones/0 14.65,34.43 <radius:15>",
			"Sepulcher of the First Ones/6 92.52,51.98 <radius:15> -x- Sepulcher of the First Ones/5 10.94,52.02 <radius:15>",
			"Sepulcher of the First Ones/5 87.49,52.36 <radius:15> -x- Sepulcher of the First Ones/4 63.12,52.01 <radius:15>",
			"Sepulcher of the First Ones/4 33.90,52.01 <radius:15> -x- Sepulcher of the First Ones/3 43.52,42.48 <radius:15>",
		},

		-------------------------------
		--- VAULT OF THE INCARNATES ---
		-------------------------------
		["Vault of the Incarnates"] = {
			"Vault of the Incarnates/3 54.34,13.61 <radius:15> -x- Vault of the Incarnates/5 86.13,33.61 <radius:15>",
			"Vault of the Incarnates/5 77.52,53.16 <radius:15> -x- Vault of the Incarnates/6 30.89,55.95 <radius:15>",
			"Vault of the Incarnates/3 56.97,12.52 <radius:15> -x- Vault of the Incarnates/2 73.94,94.58 <radius:15>",
			"Vault of the Incarnates/2 74.18,47.60 <radius:15> -x- Vault of the Incarnates/4 73.34,91.82 <radius:15>",
			"Vault of the Incarnates/3 59.87,13.44 <radius:15> -x- Vault of the Incarnates/2 82.66,90.64 <radius:15>",
			"Vault of the Incarnates/2 70.69,53.37 <radius:15> -x- Vault of the Incarnates/1 64.25,84.65 <radius:15>",
			"Vault of the Incarnates/1 36.04,85.19 <radius:15> -x- Vault of the Incarnates/2 56.48,53.69 <radius:15>",
			"Vault of the Incarnates/1 24.20,51.65 <radius:15> -x- Vault of the Incarnates/2 49.90,35.58 <radius:15>",
			"Vault of the Incarnates/2 31.25,20.80 <radius:15> -x- Vault of the Incarnates/0 58.15,24.64 <radius:15>",
			"Vault of the Incarnates/2 00.00,00.00 <radius:15> -x- Vault of the Incarnates/7 00.00,00.00 <radius:15>",
		},
}

--[[
-- translate the flooring zone-folders from names to numbers
	local TEMP={}
	for zone,zonedata in pairs(data.basenodes.DungeonFloors) do
		if type(zone)~="number" then
			local id=data.MapIDsByName[zone]
			if type(id)=="table" then id=id[1] end
			if not id then error("Map "..zone.." has no ID!") end
			zone=id
		end
		TEMP[zone]=zonedata
	end
	data.basenodes.DungeonFloors=TEMP
--]]