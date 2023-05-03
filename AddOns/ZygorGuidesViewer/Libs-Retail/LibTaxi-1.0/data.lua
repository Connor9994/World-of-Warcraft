local name,addon = ...

local data={}
local ZGV=addon
addon.LibTaxiData = data
local IsQuestFlaggedCompleted = C_QuestLog.IsQuestFlaggedCompleted

data.taxipoints = {

-------------------------------
-----     DRAGON ISLES    -----
-------------------------------
[1978]={
	['The Waking Shores']={

		-- NEUTRAL --
		{name="Wingrest Embassy",faction="B",npc="Tixxa Mixxa",npcid=192490,x=76.03,y=35.05},
		{name="Uktulut Pier",faction="B",npc="Pana",npcid=192472,x=45.84,y=27.48},
		-- {name="Uktulut Backwater",faction="B",npc="Janatak",npcid=192472,x=54.32,y=36.97},			-- Can't learn this fpath in beta, for some reason
		{name="Skytop Observatory",taxinodeID=2817,faction="B",npc="Azerastrasz",npcid=193477,x=72.77,y=51.91},
		{name="Life Vault Ruins",faction="B",npc="Tallevia Mistsong",npcid=192484,x=65.03,y=57.36},
		{name="Ruby Life Pools",faction="B",npc="Vaknai",npcid=192491,x=57.80,y=68.12},
		{name="Dragonscale Basecamp",faction="B",npc="Art Raskins",npcid=192843,x=47.91,y=83.32},
		{name="Obsidian Bulwark",faction="B",npc="Do-Yeon Shadowrider",npcid=188444,x=42.26,y=66.25},
		{name="Obsidian Throne",faction="B",npc="Foehn Breezeskimmer",npcid=188336,x=25.27,y=56.83},
		{name="Apex Observatory",faction="B",npc="Hjorik",npcid=192493,x=23.79,y=83.14},
		{name="Uktulut Outpost",faction="B",npc="Nulia",npcid=192494,x=17.51,y=88.70},
		{name="Skytop Observatory",taxinodeID=2841,faction="B",npc="Ancient Waygate",npcid="aw",x=75.28,y=57.02,taxioperator="ancientwaygate",cond_fun=function() local c=ZGV.Parser.ConditionEnv return (c.readyq(71157) or c.completedq(71157)) and not c.hasbuff("spell:392960") end},
		{name="Rubyscale Outpost",taxinodeID=2842,faction="B",npc="Ancient Waygate",npcid="aw",x=47.28,y=90.30,taxioperator="ancientwaygate",cond_fun=function() local c=ZGV.Parser.ConditionEnv return (c.readyq(70156) or c.completedq(70156)) and not c.hasbuff("spell:392960") end},
	},

	['Ohn\'ahran Plains']={

		-- NEUTRAL --
		{name="Timberstep Outpost",faction="B",npc="Baqir",npcid=184630,x=85.28,y=24.10},
		{name="Rusza'thar Reach",taxinodeID=2799,faction="B",npc="Malakesh",npcid=196259,x=84.66,y=36.89},
		{name="Maruukai",faction="B",npc="Salukan",npcid=191263,x=62.96,y=42.13},
		{name="Emberwatch",faction="B",npc="Volebel",npcid=190049,x=66.78,y=25.17},
		{name="Broadhoof Outpost",faction="B",npc="Washengtu",npcid=191814,x=46.57,y=41.29},
		{name="Shady Sanctuary",taxinodeID=2796,faction="B",npc="Sariosa",npcid=186487,x=29.82,y=57.65},
		{name="Teerakai",faction="B",npc="Carseng",npcid=192865,x=39.98,y=61.14},
		{name="Ohn'iri Springs",faction="B",npc="Huraq",npcid=195235,x=56.68,y=76.59},
		{name="Forkriver Crossing",faction="B",npc="Rynaam",npcid=192838,x=71.65,y=79.07},
		{name="Pinewood Post",faction="B",npc="Nakeena",npcid=191622,x=80.44,y=57.89},
		{name="Rusza'thar Reach",taxinodeID=2839,faction="B",npc="Ancient Waygate",npcid="aw",x=81.31,y=38.98,taxioperator="ancientwaygate",cond_fun=function() local c=ZGV.Parser.ConditionEnv return (c.readyq(71138) or c.completedq(71138)) and not c.hasbuff("spell:392960") end},
		{name="Shady Sanctuary",taxinodeID=2840,faction="B",npc="Ancient Waygate",npcid="aw",x=30.66,y=55.48,taxioperator="ancientwaygate",cond_fun=function() local c=ZGV.Parser.ConditionEnv return (c.readyq(71178) or c.completedq(71178)) and not c.hasbuff("spell:392960") end},
	},

	['The Azure Span']={

		-- NEUTRAL --
		{name="Cobalt Assembly",taxinodeID=2787,faction="B",npc="Kruthix",npcid=191999,x=49.10,y=22.67},
		{name="Camp Antonidas",faction="B",npc="Steward Argalos",npcid=189116,x=46.71,y=39.56},
		{name="Three-Falls Lookout",faction="B",npc="Bergede Broadchin",npcid=190332,x=19.15,y=23.78},
		{name="Iskaara",faction="B",npc="Skygazer Paatu",npcid=186443,x=13.29,y=48.77},
		{name="Azure Archives",faction="B",npc="Arc Tel XVII",npcid=189459,x=37.06,y=60.82},
		{name="Camp Nowhere",faction="B",npc="Camilla Highwind",npcid=186782,x=63.45,y=58.67},
		{name="Rhonin's Shield",faction="B",npc="Portia Striat",npcid=191976,x=66.00,y=25.39},
		{name="Theron's Watch",faction="B",npc="Taelmyr Blazewing",npcid=186742,x=65.37,y=16.39},
		{name="Cobalt Assembly",taxinodeID=2838,faction="B",npc="Ancient Waygate",npcid="aw",x=48.33,y=30.13,taxioperator="ancientwaygate",cond_fun=function() local c=ZGV.Parser.ConditionEnv return (c.readyq(70156) or c.completedq(70156)) and not c.hasbuff("spell:392960") end},
		{name="Vakthros",taxinodeID=2837,faction="B",npc="Ancient Waygate",npcid="aw",x=77.59,y=30.79,taxioperator="ancientwaygate",cond_fun=function() local c=ZGV.Parser.ConditionEnv return (c.readyq(71161) or c.completedq(71161)) and not c.hasbuff("spell:392960") end},
	},

	['Thaldraszus']={

		-- NEUTRAL --
		{name="Garden Shrine",faction="B",npc="Valdren",npcid=193454,x=35.62,y=78.86},
		{name="Gelikyr Post",faction="B",npc="Talon Smoht",npcid=189018,x=51.16,y=67.08},
		{name="Shifting Sands",faction="B",npc="Azim",npcid=193458,x=57.63,y=79.02},
		{name="Temporal Conflux",faction="B",npc="Warden Dialash",npcid=187013,x=59.91,y=81.34,quest=65938},
		{name="Vault of the Incarnates",faction="B",npc="Nirazal",npcid=193508,x=72.14,y=56.45},
		{name="Veiled Ossuary",faction="B",npc="Officer Obernax",npcid=189237,x=62.07,y=18.93},
		{name="Algeth'era",taxinodeID=2813,faction="B",npc="Vesri",npcid=189339,x=49.47,y=41.95},
		{name="Algeth'era",taxinodeID=2836,faction="B",npc="Ancient Waygate",npcid="aw",x=62.42,y=40.47,taxioperator="ancientwaygate",cond_fun=function() local c=ZGV.Parser.ConditionEnv return (c.readyq(71162) or c.completedq(71162)) and not c.hasbuff("spell:392960") end},
		{name="Eon's Fringe",taxinodeID=2834,faction="B",npc="Ancient Waygate",npcid="aw",x=52.34,y=78.54,taxioperator="ancientwaygate",cond_fun=function() local c=ZGV.Parser.ConditionEnv return (c.readyq(71165) or c.completedq(71165)) and not c.hasbuff("spell:392960") end},
	},

	['Valdrakken']={

		-- NEUTRAL --
		{name="Valdrakken",faction="B",npc="Aluri",npcid=193321,x=44.04,y=67.97},
	},
},

-------------------------------
-----     SHADOWLANDS     -----
-------------------------------
[1550]={
	['The Gilded Landing']={

		-- NEUTRAL --
		{name="Tazavesh",faction="B",npc="Ta'resarra",npcid=178796,x=91.96,y=41.71,quest=63985},
	},

	['Oribos']={

		-- NEUTRAL --
		{name="Oribos",faction="B",npc="Pathscribe Roh-Avonavi",npcid=162666,x=60.83,y=68.60,f=1},
	},


	['Bastion']={
		
		-- NEUTRAL --
		{name="Terrace of the Collectors",faction="B",npc="Adrina",npcid=175457,x=35.80,y=21.07,taxinodeID=2680},
		{name="Sagehaven",faction="B",npc="Klassia",npcid=159125,x=44.07,y=32.45,taxinodeID=2520},
		{name="Hero's Rest",faction="B",npc="Navarros",npcid=159423,x=51.37,y=46.80,region="heros_rest",taxinodeID=2529},
		{name="Aspirant's Rest",faction="B",npc="Rheus",npcid=159127,x=48.10,y=74.25,taxinodeID=2519},
		
		
			-- TRANSPORT NETWORK FPATHS --
				{name="Hero's Rest",faction="B",npc="Eternal Gateway",npcid="eg",x=51.75,y=46.81,region="heros_rest",taxioperator="eternalgateway",taxinodeID=2626,quest=63052,known_fun=function() local c=ZGV.Parser.ConditionEnv return c.Kyrian and c.covenantnetwork() >= 1 end},
				{name="Aspirant's Rest",faction="B",npc="Eternal Gateway",npcid="eg",x=48.33,y=72.85,taxioperator="eternalgateway",taxinodeID=2630,quest=63052,known_fun=function() local c=ZGV.Parser.ConditionEnv return c.Kyrian and c.covenantnetwork() >= 1 end},
				{name="Xandria's Vigil",faction="B",npc="Eternal Gateway",npcid="eg",x=40.71,y=55.21,taxioperator="eternalgateway",taxinodeID=2631,quest=63052,known_fun=function() local c=ZGV.Parser.ConditionEnv return c.Kyrian and c.covenantnetwork() >= 1 end},
				{name="Sagehaven",faction="B",npc="Eternal Gateway",npcid="eg",x=44.16,y=33.02,taxioperator="eternalgateway",taxinodeID=2632,quest=63052,known_fun=function() local c=ZGV.Parser.ConditionEnv return c.Kyrian and c.covenantnetwork() >= 2 end},
				{name="Temple of Purity",faction="B",npc="Eternal Gateway",npcid="eg",x=59.42,y=77.12,taxioperator="eternalgateway",taxinodeID=2633,quest=63052,known_fun=function() local c=ZGV.Parser.ConditionEnv return c.Kyrian and c.covenantnetwork() >= 2 end},
				{name="Seat of Eternal Hymns",faction="B",npc="Eternal Gateway",npcid="eg",x=58.37,y=30.97,taxioperator="eternalgateway",taxinodeID=2634,quest=63052,known_fun=function() local c=ZGV.Parser.ConditionEnv return c.Kyrian and c.covenantnetwork() >= 2 end},
				{name="Temple of Humility",faction="B",npc="Eternal Gateway",npcid="eg",x=66.59,y=47.90,taxioperator="eternalgateway",taxinodeID=2635,quest=63052,known_fun=function() local c=ZGV.Parser.ConditionEnv return c.Kyrian and c.covenantnetwork() == 3 end},
				{name="Terrace of the Collectors",faction="B",npc="Eternal Gateway",npcid="eg",x=35.40,y=21.93,taxioperator="eternalgateway",taxinodeID=2636,quest=63052,known_fun=function() local c=ZGV.Parser.ConditionEnv return c.Kyrian and c.covenantnetwork() == 3 end},
		-- taxinodeID needed everywhere as the names are duplicated
	},

	['Elysian Hold']={

		-- NEUTRAL --
		{name="Elysian Hold",faction="B",npc="Cassius",npcid=159421,x=50.94,y=49.03,taxinodeID=2528,known_fun=function() local c=ZGV.Parser.ConditionEnv return c.Kyrian or not (c.Kyrian or c.NightFae or c.Venthyr) end},
		{name="Elysian Hold",faction="B",npc="Eternal Gateway",npcid="eg",x=48.67,y=61.68,taxioperator="eternalgateway",taxinodeID=2625,quest=63052,known_fun=function() local c=ZGV.Parser.ConditionEnv return c.Kyrian and c.covenantnetwork() >= 1 end},
	},


	['Maldraxxus']={

		-- NEUTRAL --
		{name="Theater of Pain",faction="B",npc="Wing Guard Alamar",npcid=157540,x=49.91,y=53.40},
		{name="Plague Watch",faction="B",npc="Vradira Livid",npcid=157515,x=58.14,y=72.45},
		{name="Renounced Bastille",faction="B",npc="Felsen Wingclip",npcid=157516,x=67.93,y=45.84},
		{name="Keres' Rest",faction="B",npc="Fly-eyed Eliera",npcid=157517,x=53.82,y=30.69},
		{name="Spider's Watch",faction="B",npc="Flight Master Nudolva",npcid=157518,x=37.51,y=29.22},
		{name="The Spearhead",faction="B",npc="Wing Guard Aela",npcid=157519,x=39.03,y=55.24},
		{name="Bleak Redoubt",faction="B",npc="Wing Guard Buurkin",npcid=157514,x=52.47,y=67.65,recheck=true,cond_fun=function() local c=ZGV.Parser.ConditionEnv return c.Necrolord or not (c.Kyrian or c.NightFae or c.Venthyr) or c.level < 60 end},--Usable by all below 60
	},


	['Ardenweald']={

		-- NEUTRAL --
		{name="Tirna Vaal",faction="B",npc="Lanra",npcid=165164,x=63.46,y=37.56},
		{name="Hibernal Hollow",faction="B",npc="Na'lor",npcid=165166,x=60.35,y=53.49},
		{name="Claw's Edge",faction="B",npc="V'kerra",npcid=167247,x=51.30,y=71.31},
		{name="Refugee Camp",faction="B",npc="Derwynnthlmn",npcid=167255,x=49.35,y=51.82,recheck=true,cond_fun=function() local c=ZGV.Parser.ConditionEnv return not c.NightFae end},
		{name="Glitterfall Basin",faction="B",npc="Dwyl'ir",npcid=167243,x=51.42,y=34.52},
		{name="Root-Home",faction="B",npc="Tishereenelee",npcid=167265,x=35.14,y=51.71},
		{name="Heart of the Forest",faction="B",npc="Ceridwyn",npcid=165701,x=46.26,y=50.81,recheck=true,cond_fun=function() local c=ZGV.Parser.ConditionEnv return c.NightFae end},
	},


	['Revendreth']={

		-- NEUTRAL --
		{name="Pridefall Hamlet",faction="B",npc="Courier Gevoraal",npcid=158526,x=70.35,y=81.16},
		{name="Darkhaven",faction="B",npc="Courier Rokalai",npcid=156295,x=60.50,y=60.62},
		{name="Halls of Atonement",faction="B",npc="Courier Rehkaash",npcid=158417,x=71.58,y=40.06},
		{name="Old Gate",faction="B",npc="Courier Tarehaar",npcid=158517,x=61.22,y=38.79},
		{name="Menagerie of the Master",faction="B",npc="Courier Skraal",npcid=158564,x=54.22,y=25.68},
		{name="Wanecrypt Hill",faction="B",npc="Courier Rabatur",npcid=156196,x=47.88,y=69.40},
		{name="Charred Ramparts",faction="B",npc="Courier Chip",npcid=160202,x=38.95,y=49.33},
		{name="Sanctuary of the Mad",faction="B",npc="Courier Shaal",npcid=158416,x=30.56,y=48.88},
		{name="Dominance Keep",faction="B",npc="Courier Dreadcarrier",npcid=158533,x=25.96,y=28.88},
	},


	['Sinfall']={

		-- NEUTRAL --
		{name="Sinfall",faction="B",npc="Courier Snaggle",npcid=162702,x=67.31,y=21.42,recheck=true,cond_fun=function() local c=ZGV.Parser.ConditionEnv return c.Venthyr end},
	},

	['Korthia']={

		-- NEUTRAL --
		{name="Keeper's Respite",faction="B",npc="Animaflow Teleporter",x=64.97,y=23.67,taxioperator="animaflow",taxinodeID=2698,unlocked_fun=function() local c=ZGV.Parser.ConditionEnv return c.haveq(63855) or c.completedq(999999) end},

	},

	['The Maw']={

		-- NEUTRAL --
		{name="Ve'nari's Refuge",faction="B",npc="Animaflow Teleporter",x=47.29,y=43.67,taxioperator="animaflow",taxinodeID=2700,unlocked_fun=function() local c=ZGV.Parser.ConditionEnv return c.haveq(63855) or c.completedq(999999) end},

	},
},
[1970] = {
	['Zereth Mortis']={
		-- NEUTRAL --
		{name="Haven",faction="B",npc="Ancient Translocator",npcid=183963,x=35.75,y=65.11,taxioperator="zerethportal"},
		{name="Faith's Repose",faction="B",npc="Ancient Translocator",npcid=183966,x=35.62,y=44.33,taxioperator="zerethportal"},
		{name="Pilgrim's Grace",faction="B",npc="Ancient Translocator",npcid=183969,x=61.61,y=50.21,taxioperator="zerethportal"},
		{name="Zovaal's Grasp",faction="B",npc="Ancient Translocator",npcid=183968,x=46.09,y=21.62,taxioperator="zerethportal2"},
		{name="Antecedent Isle",faction="B",npc="Ancient Translocator",npcid=184337,x=47.36,y=13.29,taxioperator="zerethportal2"},
		{name="Sepulcher Overlook",faction="B",npc="Ancient Translocator",npcid=183970,x=64.89,y=53.55,taxioperator="zerethportal3"},
		{name="Sepulcher of the First Ones",faction="B",npc="Ancient Translocator",npcid=184332,x=73.00,y=53.39,taxioperator="zerethportal3"},
		{name="Primus Locus",faction="B",npc="Locus Shift",npcid=184386,x=48.43,y=26.35,taxioperator="zerethlocus",recheck=true,cond_fun=function() local c=ZGV.Parser.ConditionEnv return (c.completedq(64889,3) and c.haveq(64889)) or (c.specialtalent(1907) and c.completedq(64889) and not c.achieved(15514)) end},
		{name="Secundus Locus",faction="B",npc="Locus Shift",npcid=184387,x=47.96,y=27.91,taxioperator="zerethlocus",recheck=true,cond_fun=function() local c=ZGV.Parser.ConditionEnv return (c.completedq(64889,5) and c.haveq(64889)) or (c.specialtalent(1907) and c.completedq(64889) and not c.achieved(15514)) end},
		{name="Quartus Locus",faction="B",npc="Locus Shift",npcid=184385,x=48.52,y=29.70,taxioperator="zerethlocus",recheck=true,cond_fun=function() local c=ZGV.Parser.ConditionEnv return (c.completedq(64889,9) and c.haveq(64889)) or (c.specialtalent(1907) and c.completedq(64889) and not c.achieved(15514)) end},
		{name="Ultimus Locus",faction="B",npc="Locus Shift",npcid=184364,x=48.89,y=31.43,taxioperator="zerethlocus",recheck=true,cond_fun=function() local c=ZGV.Parser.ConditionEnv return (c.completedq(64889,13) and c.haveq(64889)) or (c.specialtalent(1907) and c.completedq(64889) and not c.achieved(15514)) end},
		{name="Tertius Locus",faction="B",npc="Locus Shift",npcid=184388,x=51.91,y=27.11,taxioperator="zerethlocus",recheck=true,cond_fun=function() local c=ZGV.Parser.ConditionEnv return (c.completedq(64889,7) and c.haveq(64889)) or (c.specialtalent(1907) and c.completedq(64889) and not c.achieved(15514)) end},
		{name="Quintus Locus",faction="B",npc="Locus Shift",npcid=184384,x=50.67,y=32.60,taxioperator="zerethlocus",recheck=true,cond_fun=function() local c=ZGV.Parser.ConditionEnv return (c.completedq(64889,11) and c.haveq(64889)) or (c.specialtalent(1907) and c.completedq(64889) and not c.achieved(15514)) end},
	},
	['Gravid Repose']={
		{name="Gravid Repose Locus",faction="B",npc="Locus Shift",npcid=184329,x=59.35,y=41.51,taxioperator="zerethlocus",recheck=true,cond_fun=function() local c=ZGV.Parser.ConditionEnv return c.haveq(64889) or (c.specialtalent(1907) and c.completedq(64889)) end}, -- known_fun=function() local c=ZGV.Parser.ConditionEnv return c.haveq(123456) or c.completedq(123456) end
		{name="Interior Locus",faction="B",npc="Locus Shift",npcid=184356,x=40.33,y=34.34,taxioperator="zerethlocus",recheck=true,cond_fun=function() local c=ZGV.Parser.ConditionEnv return (c.completedq(64889,1) and c.haveq(64889)) or (c.specialtalent(1907) and c.completedq(64889)) end},
	},
},
----------------------------
-----     Zandalar     -----
----------------------------

[875]={
	['Vol\'dun']={
		-- Horde --
		{name="Vorrik's Sanctum",faction="H",npc="Lugo the Windrider",npcid=135385,x=47.30,y=35.23},
		{name="Vulpera Hideaway",faction="H",npc="Narishi",npcid=124107,x=56.96,y=49.25},
		{name="Goldtusk Inn",faction="H",npc="Volni",npcid=129365,x=42.74,y=61.08,quest=48320},
		{name="Scorched Sands Outpost",faction="H",npc="Makaanji",npcid=135654,x=43.90,y=75.92},
		{name="Temple of Akunda",faction="H",npc="Sejiju",npcid=128334,x=53.72,y=89.18},

		-- Alliance --
		{name="Shatterstone Harbor",faction="A",npc="Barnard \"the Smasherr\" Baysworth",npcid=135383,x=36.68,y=34.28,quest=51229},
		{name="Deadwood Cove",faction="A",npc="Explosioneer Zoidfuse",npcid=135388,x=39.79,y=83.82,quest=52041},
		{name="Vulture's Nest",faction="A",npc="Buzz Crankchug",npcid=138256,x=53.60,y=37.67,quest=53044},


		-- Neutral --
		{name="Tortaka Refuge",faction="B",npc="Scroll of Flight",npcid=135387,x=61.90,y=21.66},
		{name="Sanctuary of the Devoted",faction="B",npc="Vethiss",npcid=128695,x=27.65,y=50.33},
	},


	['Nazmir']={
		-- Horde --
		{name="Zo'bal Ruins",faction="H",npc="Du'ba",npcid=122191,x=40.17,y=42.83},
		{name="Gloom Hollow",faction="H",npc="Cuja",npcid=121207,x=66.98,y=43.76},
		{name="Zul'jan",faction="H",npc="Zabar",npcid=121828,x=38.85,y=78.14},
		{name="Forlorn Ruins",faction="H",npc="Zibir the Wingmaster",npcid=122198,x=82.15,y=26.69},

		-- Alliance --
		{name="Redfield's Watch",faction="A",npc="Joseph Redfield",npcid=139995,x=50.82,y=20.77},
		{name="Fort Victory",faction="A",npc="Selina Duskraven",npcid=134451,x=62.35,y=41.38},
		{name="Grimwatt's Crash",faction="A",npc="Noella Davenport",npcid=142478,x=34.31,y=63.21,quest=53007},
	},

	['Zuldazar']={
		-- Horde --
		{name="Zeb'ahari",faction="H",npc="Paku'ai Jasi",npcid=124456,x=77.36,y=15.35},
		{name="Warbeast Kraal",faction="H",npc="Paku'ai Verraki",npcid=123060,x=67.26,y=43.03},
		{name="Garden of the Loa",faction="H",npc="Paku'ai Rip'nata",npcid=130787,x=49.72,y=26.27},
		{name="Atal'dazar",faction="H",npc="Loz the Paku'ai",npcid=130790,x=46.17,y=35.81},
		{name="Temple of the Prophet",faction="H",npc="Kaza the Skyblade",npcid=129483,x=49.81,y=44.59},
		{name="Warport Rastari",faction="H",npc="Paku'ai Ja'nessa",npcid=127818,x=48.22,y=60.34},
		{name="Xibala",faction="H",npc="Eliara Duskwing",npcid=123817,x=44.84,y=72.25},
		{name="Isle of Fangs",faction="H",npc="Paku'ai Leti",npcid=140650,x=54.45,y=87.06},
		{name="Tusk Isle",faction="H",npc="Paku'ai Jetar",npcid=140653,x=59.39,y=77.94},
		{name="The Mugambala",faction="H",npc="Paku'ai Chal",npcid=148157,x=53.34,y=57.33},

		-- Alliance --
		{name="Xibala",faction="A",npc="Paula Waverunner",npcid=128041,x=40.58,y=71.45},
		{name="Castaway Encampment",faction="A",npc="Kaolin",npcid=138128,x=77.66,y=54.45},
		{name="Veiled Grotto",faction="A",npc="Isaac \"Lefteye\" Bentham",npcid=139181,x=44.42,y=36.83,quest=52802},
		{name="Mistvine Ledge",faction="A",npc="Sornoth Slagmane",npcid=139180,x=64.33,y=47.33,quest=52963},
		{name="Mugamba Overlook",faction="A",npc="Drager Smokewing",npcid=139179,x=44.84,y=27.07,quest=52852},
		{name="Verdant Hollow",faction="A",npc="Kina Cobbleflame",npcid=136074,x=55.65,y=24.85},

		-- Neutral --
		{name="Nesingwary's Gameland",faction="B",npc="Lasa the Galerider",npcid=123006,x=66.19,y=17.60},
		{name="Scaletrader Post",faction="B",npc="Scroll of Flight",npcid=136331,x=70.78,y=29.60},
		{name="Atal'Gral",faction="B",npc="Scroll of Flight",npcid=134011,x=79.97,y=41.39,taxinodeID=2076},
		{name="Seeker's Outpost",faction="B",npc="Scroll of Flight",npcid=134008,x=70.45,y=65.31},
	},

	['Dazar\'alor']={
		-- Horde --
		{name="The Great Seal",faction="H",npc="Paku'ai Rokota",npcid=122689,x=51.91,y=41.21,quest=46931},
		{name="Port of Zandalar",faction="H",npc="Ripa the Wind Ripper",npcid=121252,x=52.09,y=90.11},
		{name="The Sliver",faction="H",npc="Zena the Feeder",npcid=133242,x=53.15,y=19.35},
	},
},
	
-- Kul'Tiras --
[876]={
	['Boralus']={
		-- Alliance --
		{name="Tradewinds Market",faction="A",npc="Joan Weber",npcid=124725,x=66.97,y=15.01},
		{name="Proudmoore Keep",faction="A",npc="Jessica Clarke",npcid=143535,x=47.76,y=65.44},
		{name="Mariner's Row",faction="A",npc="Nicolas Araujo",npcid=143547,x=76.64,y=72.62},

		-- Alliance Ferries --
		{name="Tradewinds Market Harbor",faction="A",npc="Will Melborne",npcid=135064,x=74.17,y=24.78,taxioperator="ferry",quest=52128},

	},

	['Tiragarde Sound']={
		-- Alliance --
		{name="Bridgeport",faction="A",npc="Jeb Johnson",npcid=134226,x=75.79,y=48.59},
		{name="Kennings Lodge",faction="A",npc="Finnia Hawkshot",npcid=134465,x=76.67,y=65.42},
		{name="Vigil Hill",faction="A",npc="Sky Marshal Sanders",npcid=130599,x=57.74,y=61.54},
		{name="Hatherford",faction="A",npc="Mariah McKee",npcid=133210,x=66.93,y=23.06},
		{name="Norwington Estate",faction="A",npc="Hestia Strongbolt",npcid=134685,x=52.91,y=28.80},
		{name="Roughneck Camp",faction="A",npc="Dagin",npcid=129163,x=42.48,y=23.02},
		{name="Outrigger Post",faction="A",npc="Gregory Mussler",npcid=134749,x=35.55,y=24.90,cond_fun=function() return not (IsQuestFlaggedCompleted(53888) and not IsQuestFlaggedCompleted(53887)) end}, -- unavailable during part of questline

		-- Neutral --
		{name="Castaway Point",faction="B",npc="Skinny Tim",npcid=128224,x=86.42,y=80.81},
		{name="Freehold",faction="B",npc="Rodrigo",npcid=129098,x=77.03,y=82.89},


		-- Alliance Ferries --
		{name="Eastpoint Station",faction="A",npc="Rosha Carrol",npcid=135056,x=74.23,y=44.34,taxioperator="ferry",quest=52128},
		{name="Southwind Ferry Dock",faction="A",npc="Bindy Bracklesprig",npcid=132116,x=66.74,y=49.76,taxioperator="ferry",quest=52128},
		{name="Old Drust Road",faction="A",npc="Theresa Norman",npcid=132044,x=54.01,y=53.21,taxioperator="ferry",quest=52128},
		{name="Anglepoint Wharf",faction="A",npc="Barry Oliver",npcid=132039,x=42.15,y=30.67,taxioperator="ferry",quest=52128},
		{name="Firebreaker Expedition",faction="A",npc="Joshua Neeman",npcid=132105,x=63.84,y=30.38,taxioperator="ferry",quest=52128},

		-- Horde --
		{name="Plunder Harbor",faction="H",npc="Skrash",npcid=138265,x=87.28,y=50.66,quest=51438},
		{name="Timberfell Outpost",faction="H",npc="Michaela Reed",npcid=133861,x=72.18,y=51.91,quest=51591},
		{name="Waning Glacier",faction="H",npc="Kip Wingnut",npcid=142740,x=39.68,y=18.54},
		{name="Wolf's Den",faction="H",npc="Narkalt",npcid=133331,x=62.11,y=13.57,quest=52127},
		{name="Stonefist Watch",faction="H",npc="Munovuth Boldcleaver",npcid=140533,x=53.14,y=63.16,quest=52222},
	},

	['Drustvar']={
		-- Alliance --
		{name="Hangman's Point",faction="A",npc="Aaron Ridgeley",npcid=128576,x=71.06,y=40.88},
		{name="Fletcher's Hollow",faction="A",npc="Bridget Bran",npcid=126724,x=70.21,y=60.45},
		{name="Falconhurst",faction="A",npc="Viviana Swailes",npcid=134866,x=26.98,y=72.38},
		{name="Arom's Stand",faction="A",npc="Jess Albury",npcid=135023,x=38.14,y=52.53},
		{name="Watchman's Rise",faction="A",npc="Ensign Wallace",npcid=135024,x=31.87,y=30.45,quest=50003},
		{name="Fallhaven",faction="A",npc="Clarence Page",npcid=124466,x=55.13,y=34.70,quest=47982},
		{name="Barbthorn Ridge",faction="A",npc="Anna Ridgeley",npcid=129984,x=62.61,y=23.99},
		{name="Deadwood Cove",faction="A",npc="Explosioneer Zoidfuse",npcid=135388,x=39.79,y=83.81},

		-- Horde --
		{name="Krazzlefrazz Outpost",faction="H",npc="Rixi Rocketboom",npcid=138022,x=37.37,y=24.04,quest=51234},
		{name="Swiftwind Post",faction="H",npc="Windtamer Loka",npcid=140772,x=66.46,y=59.32,quest=52276},
		{name="Mudfisher Cove",faction="H",npc="Drasha Windspear",npcid=140939,x=62.03,y=16.88,quest=52314},

		-- Neutral --
		{name="Anyport",faction="B",npc="Tan Lotuswind",npcid=135988,x=19.14,y=43.31,cond_fun=function() return IsQuestFlaggedCompleted(50978) or IsQuestFlaggedCompleted(51340) end},
		{name="Whitegrove Chapel",faction="B",npc="Bertram",npcid=135025,x=25.74,y=16.56},

		-- Alliance Ferries --
		{name="Fletcher's Hollow",faction="A",npc="Ian Glassel",npcid=132166,x=69.38,y=57.29,taxioperator="ferry",quest=52128},
		{name="Fallhaven",faction="A",npc="Helen Waterview",npcid=132146,x=61.70,y=36.56,taxioperator="ferry",quest=52128},
	},

	['Stormsong Valley']={
		-- Alliance --
		{name="Millstone Hamlet",faction="A",npc="Alexa Davenport",npcid=138180,x=30.75,y=66.57},
		{name="Fort Daelin",faction="A",npc="Misty Koret",npcid=138193,x=34.28,y=47.23},
		{name="Deadwash",faction="A",npc="Malorian Tailwind",npcid=134832,x=42.77,y=57.54},
		{name="The Amber Waves",faction="A",npc="Karla Fairweather",npcid=134963,x=50.75,y=70.21},
		{name="Brennadam",faction="A",npc="Anna Skyspirit",npcid=134704,x=59.73,y=70.56},
		{name="Mildenhall Meadery",faction="A",npc="Colony Caretaker",npcid=142060,x=68.53,y=64.99},
		{name="Tidecross",faction="A",npc="Marla Featherfoot",npcid=134696,x=65.56,y=48.00},
		{name="Shrine of the Storm",faction="A",npc="Galeheart",npcid=137693,taxinodeID=2133, x=78.32,y=29.00},
		
		-- Neutral --
		{name="Seekers Vista",faction="B",npc="Scroll of Flight",npcid=137318,x=40.03,y=37.32},
		
		-- Horde --
		{name="Warfang Hold",faction="H",npc="Muka Stormbreaker",npcid=138097,x=51.42,y=33.74,quest=51986},
		{name="Hillcrest Pasture",faction="H",npc="Hosan Cloudhoof",npcid=134842,x=52.76,y=80.13,quest=52479},
		{name="Ironmaul Overlook",faction="H",npc="Chulani Cloudbreath",npcid=134850,x=75.88,y=64.14},
		{name="Shrine of the Storm",faction="H",npc="Dark Ranger Allanah",npcid=134853,taxinodeID=2095,x=77.90,y=24.07},
		{name="Diretusk Hollow",faction="H",npc="Kudra Windblade",npcid=134848,x=54.27,y=49.35},
		{name="Windfall Cavern",faction="H",npc="Allabas",npcid=138251,x=60.84,y=27.12,quest=52320},
		{name="Stonetusk Watch",faction="H",npc="Wyna Breezehorn",npcid=134844,x=38.84,y=66.64,quest=52777},
	},

	['Mechagon Island']={
		-- Alliance --
		{name="Overspark Expedition Camp",faction="A",npc="Cog Captain Winklespring",npcid=150639,x=77.83,y=40.94},
		-- Horde --
		{name="Prospectus Bay",faction="H",npc="Lazz of Leisure",npcid=150634,x=73.48,y=25.80},
	},

	['Tol Dagor']={
		{name="Tol Dagor",faction="A",npc="Jorum Hayes",npcid=130593,x=38,y=92,taxinodeID=2096},
	}
},

-- Kalimdor --
[12]={
	['Ashenvale']={
		{name="Astranaar",faction="A",npc="Daelyshia",npcid=4267,x=34.41,y=47.99,quest=52062},
		{name="Blackfathom Camp",faction="A",npc="Solais",npcid=34374,x=18.14,y=20.59},
		{name="Forest Song",faction="A",npc="Suralais Farwind",npcid=22935,x=85.09,y=43.45},
		{name="Stardust Spire",faction="A",npc="Myre Moonglide",npcid=34378,x=35.02,y=72.07},
		{name="Hellscream's Watch",faction="H",npc="Thraka",npcid=34429,x=38.08,y=42.22},
		{name="Silverwind Refuge",faction="H",npc="Wind Tamer Shoshok",npcid=34943,x=49.29,y=65.25},
		{name="Splintertree Post",faction="H",npc="Vhulgra",npcid=12616,x=73.18,y=61.59},
		{name="Zoram'gar Outpost",faction="H",npc="Andruk",npcid=11901,x=11.17,y=34.43},
	},

	['Azshara']={
		{name="Bilgewater Harbor",faction="H",npc="Kroum",npcid=8610,x=52.92,y=49.86},
		{name="Northern Rocketway",faction="H",npc="Blitz Blastospazz",npcid=43328,x=66.50,y=21.01},
		{name="Southern Rocketway",faction="H",npc="Friz Groundspin",npcid=37005,x=51.49,y=74.29},
		{name="Valormok",faction="H",npc="Kroum",npcid=36728,x=14.35,y=65.02},
	},

	['Azuremyst Isle']={
		{name="Azure Watch",faction="A",npc="Zaldaan",npcid=43991,x=49.71,y=49.10},
	},

	['Bloodmyst Isle']={
		{name="Blood Watch",faction="A",npc="Laando",npcid=17554,x=57.68,y=53.88},
	},

	['Darkshore']={
		{name="Grove of the Ancients",faction="A",npc="Delanea",npcid=33253,x=44.41,y=75.47},
		{name="Lor'danel",faction="A",npc="Teldira Moonfeather",npcid=3841,x=51.72,y=17.65,cond_fun=function() return ZGV.InPhase("Old Darnassus") end},
		{name="Lor'danel",faction="A",npc="Nightsaber Rider",npcid=33359,x=52.22,y=22.27,taxioperator="blackcat",cond_fun=function() return ZGV.InPhase("Old Darnassus") end},
		{name="Lor'danel",faction="A",npc="Nightsaber Rider",npcid=33359,x=51.03,y=22.75,taxioperator="blackcat",cond_fun=function() return ZGV.InPhase("Old Darnassus") end},
		{name="Ruins of Mathystra",faction="A",npc="Nightsaber Rider",npcid=33359,x=58.57,y=19.99,taxioperator="blackcat",cond_fun=function() return ZGV.InPhase("Old Darnassus") end},
		{name="Shatterspear Vale",faction="A",npc="Nightsaber Rider",npcid=33359,x=69.11,y=18.87,taxioperator="blackcat",cond_fun=function() return ZGV.InPhase("Old Darnassus") end},
		{name="Bashal'Aran",faction="A",npc="Nightsaber Rider",npcid=33359,x=46.85,y=33.18,taxioperator="blackcat",cond_fun=function() return ZGV.InPhase("Old Darnassus") end},
	},

	['Darnassus']={
		{name="Darnassus",faction="A",npc="Leora",npcid=40552,x=36.61,y=47.83,cond_fun=function() return ZGV.InPhase("Old Darnassus") end},
	},

	['Desolace']={
		{name="Nijel's Point",faction="A",npc="Baritanas Skyriver",npcid=6706,x=64.66,y=10.54},
		{name="Thargad's Camp",faction="A",npc="Moira Steelwing",npcid=35481,x=36.76,y=71.68},
		{name="Furien's Post",faction="H",npc="Narimar",npcid=35315,x=44.28,y=29.68},
		{name="Shadowprey Village",faction="H",npc="Thalon",npcid=6726,x=21.60,y=74.13},
		{name="Ethel Rethor",faction="B",npc="Korrah's Hippogryph",npcid=35562,x=39.07,y=26.93},
		{name="Karnum's Glade",faction="B",npc="Lastrea Greengale",npcid=35478,x=57.72,y=49.75},
		{name="Thunk's Abode",faction="B",npc="Thunk's Wyvern",npcid=35556,x=70.67,y=32.89},
	},

	['Durotar']={
		{name="Razor Hill",faction="H",npc="Burok",npcid=41140,x=53.09,y=43.58},
		{name="Sen'jin Village",faction="H",npc="Handler Marnlek",npcid=41142,x=55.38,y=73.31},
	},

	['Dustwallow Marsh']={
		{name="Theramore",faction="A",npc="Baldruc",npcid=4321,x=67.48,y=51.30,cond_fun=function() return ZGV.InPhase("Old Dustwallow") end},
		{name="Brackenwall Village",faction="H",npc="Shardi",npcid=11899,x=35.57,y=31.88},
		{name="Mudsprocket",faction="B",npc="Dyslix Silvergrub",npcid=40358,x=42.82,y=72.43},
	},

	['Felwood']={
		{name="Talonbranch Glade",faction="A",npc="Mishellena",npcid=12578,x=60.52,y=25.29},
		{name="Irontree Clearing",faction="H",npc="Dirzak Pryocrank",npcid=43085,x=56.36,y=8.64},
		{name="Emerald Sanctuary",faction="B",npc="Gorrim",npcid=22931,x=51.53,y=80.87},
		{name="Whisperwind Grove",faction="B",npc="Hanah Southsong",npcid=43073,x=43.59,y=28.70},
		{name="Wildheart Point",faction="B",npc="Chyella Hushglade",npcid=43079,x=44.29,y=61.87},
	},

	['Feralas']={
		{name="Dreamer's Rest",faction="A",npc="Selor",npcid=40966,x=50.21,y=16.72},
		{name="Feathermoon",faction="A",npc="Irela Moonfeather",npcid=41383,x=46.77,y=45.35},
		{name="Shadebough",faction="A",npc="Seyala Nightwisp",npcid=40367,x=77.31,y=56.79},
		{name="Tower of Estulan",faction="A",npc=" Aryenda",npcid=41580,x=57.08,y=53.95},
		{name="Camp Ataya",faction="H",npc="Tono",npcid=40473,x=41.54,y=15.46},
		{name="Camp Mojache",faction="H",npc="Shyn",npcid=39898,x=75.45,y=44.36},
		{name="Stonemaul Hold",faction="H",npc="Mergek",npcid=41605,x=51.00,y=48.42},
	},
	['Moonglade']={
		{name="Moonglade",faction="A",npc="Sindrayl",npcid=10897,x=48.10,y=67.34},
		{name="Nighthaven",faction="A",class="DRUID",npc="Silva Fil'naveth",npcid=11800,x=44.15,y=45.22},
		{name="Moonglade",faction="H",npc="Faustron",npcid=12740,x=32.10,y=66.61},
		{name="Nighthaven",faction="H",class="DRUID",npc="Bunthen Plainswind",npcid=11798,x=44.29,y=45.87},
	},

	['Mount Hyjal']={
		{name="Gates of Sothann",faction="B",quest=25608,npc="Althera",npcid=43549,x=71.61,y=75.34},
		{name="Grove of Aessina",faction="B",npc="Elizil Wintermoth",npcid=41860,x=19.59,y=36.38},
		{name="Nordrassil",faction="B",npc="Fayran Elthas",npcid=41861,x=62.13,y=21.59},
		{name="Sanctuary of Malorne",faction="B",quest=25372,npc="Ranela Featherglen",npcid=54393,x=27.75,y=63.64},
		{name="Shrine of Aviana",faction="B",npc="Dinorae Swiftfeather",npcid=50084,x=41.18,y=42.59},
	},

	['Mulgore']={
		{name="Bloodhoof Village",faction="H",npc="Tak",npcid=40809,x=47.44,y=58.64},
	},

	['Northern Barrens']={
		{name="Nozzlepot's Outpost",faction="H",npc="Gazrix",npcid=40558,x=62.31,y=17.12},
		{name="The Crossroads",faction="H",npc="Devrak",npcid=3615,x=48.70,y=58.67},
		{name="The Mor'Shan Ramparts",faction="H",npc="Gort Goreflight",npcid=34927,x=41.98,y=15.87},
		{name="Ratchet",faction="B",npc="Bragok",npcid=16227,x=69.12,y=70.70,factionid=470,factionstanding=3},
	},

	['Orgrimmar']={
		{name="Orgrimmar",faction="H",npc="Doras",npcid=3310,x=49.65,y=59.21},
	},

	['Silithus']={
		{name="Cenarion Hold",faction="A",npc="Cloud Skydancer",npcid=15177,x=54.40,y=32.72,cond_fun=function() return ZGV.InPhase("Old Silithius") end},
		{name="Cenarion Hold",faction="H",npc="Runk Windtamer",npcid=15178,x=52.78,y=34.64,cond_fun=function() return ZGV.InPhase("Old Silithius") end},
	},

	['Southern Barrens']={
		{name="Fort Triumph",faction="A",npc="Steve Stevenson",npcid=39211,x=49.20,y=67.80},
		{name="Honor's Stand",faction="A",npc="John Johnson",npcid=39210,x=38.93,y=10.88},
		{name="Northwatch Hold",faction="A",npc="Bill Williamson",npcid=39212,x=66.38,y=47.13},
		{name="Vendetta Point",faction="H",npc="Lognah",npcid=52060,x=41.55,y=47.60},
		{name="Desolation Hold",faction="H",npc="Crador",npcid=39330,x=41.24,y=70.76},
		{name="Hunter's Hill",faction="H",npc="Unega",npcid=39340,x=39.79,y=20.26},
	},

	['Stonetalon Mountains']={
		{name="Farwatcher's Glen",faction="A",npc="Ceyora",npcid=35138,x=32.02,y=61.84},
		{name="Mirkfallon Post",faction="A",npc="Fiora Moonsoar",npcid=41240,x=48.64,y=51.52},
		{name="Northwatch Expedition Base Camp",faction="A",npc="Kaluna Songflight",npcid=35136,x=70.92,y=80.58},
		{name="Thal'darah Overlook",faction="A",npc="Teloren",npcid=4407,x=40.12,y=31.96},
		{name="Windshear Hold",faction="A",npc="Allana Swiftglide",npcid=35137,x=58.80,y=54.28},
		{name="Cliffwalker Post",faction="H",npc="Orna Skywatcher",npcid=35141,x=45.11,y=30.87},
		{name="Krom'gar Fortress",faction="H",npc="Kormal the Swift",npcid=35140,x=66.52,y=62.75},
		{name="Sun Rock Retreat",faction="H",npc="Tharm",npcid=4312,x=48.48,y=61.95},
		{name="The Sludgewerks",faction="H",npc="Flok",npcid=41246,x=53.87,y=40.12},
		{name="Malaka'jin",faction="H",npc="Zillane",npcid=35139,x=70.61,y=89.46},
	},

	['Tanaris']={
		{name="Gunstan's Dig",faction="A",npc="Thurda",npcid=40827,x=40.05,y=77.54},
		{name="Gadgetzan",faction="A",npc="Bera Stonehammer",npcid=7823,x=51.35,y=29.49,factionid=369,factionstanding=3},
		{name="Dawnrise Expedition",faction="H",npc="Raina Sunglide",npcid=41215,x=33.30,y=77.36},
		{name="Gadgetzan",faction="H",npc="Bulkrek Ragefist",npcid=7824,x=52.04,y=27.61,factionid=369,factionstanding=3},
		{name="Bootlegger Outpost",faction="B",npc="Slick Dropdip",npcid=41214,x=55.88,y=60.60},
	},

	['Teldrassil']={
		{name="Dolanaar",faction="A",npc="Fidelio",npcid=40553,x=55.47,y=50.42,cond_fun=function() return ZGV.InPhase("Old Darnassus") end},
		{name="Rut'theran Village",faction="A",npc="Vesprystus",npcid=3838,x=55.41,y=88.40,cond_fun=function() return ZGV.InPhase("Old Darnassus") end},
	},

	['The Exodar']={
		{name="The Exodar",faction="A",npc="Stephanos",npcid=17555,x=54.49,y=36.27},
	},

	['Thousand Needles']={
		{name="Fizzle & Pozzik's Speedbarge",faction="A",npc="Tilly Topspin",npcid=40768,x=79.15,y=71.95},
		{name="Fizzle & Pozzik's Speedbarge",faction="H",npc="Zazzix Boomride",npcid=40769,x=79.19,y=71.89},
		{name="Westreach Summit",faction="H",npc="Nah'te",npcid=44399,x=11.21,y=11.58},
	},

	['Thunder Bluff']={
		{name="Thunder Bluff",faction="H",npc="Tal",npcid=2995,x=47.02,y=49.60},
	},

	['Uldum']={
		{name="Oasis of Vir'sar",faction="B",npc="Jock Lindsey",npcid=48274,x=26.61,y=8.38},
		{name="Ramkahen",faction="B",npc="Kurzel",npcid=48275,x=56.19,y=33.60},
		{name="Schnottz's Landing",faction="B",npc="Evax Oilspark",npcid=48273,x=22.29,y=64.93},
	},

	['Uldum New']={
		{name="Oasis of Vir'sar",faction="B",npc="Jock Lindsey",npcid=163253,x=26.61,y=8.38},
		{name="Ramkahen",faction="B",npc="Kurzel",npcid=48275,x=56.19,y=33.60},
	},

	['Un\'Goro Crater']={
		{name="Marshal's Stand",faction="B",npc="Gryfe",npcid=10583,x=55.98,y=64.17},
		{name="Mossy Pile",faction="B",npc="Flizzy Coilspanner",npcid=39175,x=44.11,y=40.28},
	},

	['Winterspring']={
		{name="Everlook",faction="A",npc="Maethrya",npcid=11138,x=60.99,y=48.62,factionid=577,factionstanding=3},
		{name="Everlook",faction="H",npc="Yugrek",npcid=11139,x=58.84,y=48.26,factionid=577,factionstanding=3},
	},
},

-- Eastern Kingdoms --
[13]={
	['Abyssal Depths']={
		{name="Darkbreak Cove",faction="A",npc="Swift Seahorse",npcid=40866,x=56.90,y=75.53,taxioperator="seahorse"},
		{name="Tenebrous Cavern",faction="H",npc="Swift Seahorse",npcid=40873,x=53.88,y=59.62,taxioperator="seahorse"},
	},

	['Arathi Highlands']={
		{name="Refuge Pointe",faction="A",npc="Cedrik Prose",npcid=2835,x=39.89,y=47.35},
		{name="Galen's Fall",faction="H",npc="Rhoda Bowers",npcid=43104,x=13.31,y=34.82},
		{name="Hammerfall",faction="H",npc="Urda",npcid=2851,x=68.16,y=33.39},
	},

	['Badlands']={
		{name="Dragon's Mouth",faction="A",npc="Jake Badlands",npcid=44410,x=21.57,y=57.80},
		{name="Dustwind Dig",faction="A",npc="Nancy Skybrew",npcid=44409,x=48.99,y=36.20},
		{name="Bloodwatcher Point",faction="H",npc="Selara",npcid=44408,x=52.40,y=50.74},
		{name="New Kargath",faction="H",npc="Gorrik",npcid=2861,x=17.18,y=40.01},
		{name="Fuselight",faction="B",npc="Mixi Sweetride",npcid=44407,x=64.33,y=35.03},
	},

	['Blasted Lands']={
		{name="Nethergarde Keep",faction="A",npc="Alexandra Constantine",npcid=8609,x=61.25,y=21.58,cond_fun=function() return ZGV.InPhase("Old Blasted Lands") end},
		{name="Surwich",faction="A",npc="Graham McAllister",npcid=43107,x=47.13,y=89.36,cond_fun=function() return ZGV.InPhase("Old Blasted Lands") end},
		{name="Shattered Beachhead",faction="A",npc="Araazi",npcid=85731,x=67.64,y=27.97,cond_fun=function() return ZGV.InPhase("New Blasted Lands") end},
		{name="Sunveil Excursion",faction="H",npc="Salena",npcid=43114,x=50.92,y=72.88,cond_fun=function() return ZGV.InPhase("Old Blasted Lands") end},
		{name="Dreadmaul Hold",faction="H",npc="Preda",npcid=43121,x=43.71,y=14.25,cond_fun=function() return ZGV.InPhase("Old Blasted Lands") end},
		{name="Shattered Landing",faction="H",npc="Ameri Windblade",npcid=85734,x=72.95,y=48.63,cond_fun=function() return ZGV.InPhase("New Blasted Lands") end},
	},

	['Burning Steppes']={
		{name="Morgan's Vigil",faction="A",npc="Borgus Stoutarm",npcid=2299,x=72.09,y=65.70},
		{name="Flame Crest",faction="H",npc="Vahgruk",npcid=13177,x=54.17,y=24.23},
		{name="Chiselgrip",faction="B",npc="Grimly Singefeather",npcid=48321,x=46.15,y=41.79},
		{name="Flamestar Post",faction="B",npc="Hans Oreflight",npcid=48318,x=17.79,y=52.75},
	},

	['Dun Morogh']={
		{name="Gol'Bolar Quarry",faction="A",npc="Dominic Galebeard",npcid=43702,x=75.87,y=54.44},
		{name="Kharanos",faction="A",npc="Brolan Galebeard",npcid=43701,x=53.80,y=52.76},
	},

	['Duskwood']={
		{name="Darkshire",faction="A",npc="Felicia Maline",npcid=2409,x=77.48,y=44.28},
		{name="Raven Hill",faction="A",npc="John Shelby",npcid=43697,x=21.08,y=56.44},
	},

	['Eastern Plaguelands']={
		{name="Light's Hope Chapel",faction="A",npc="Khaelyn Steelwing",npcid=12617,x=75.85,y=53.41},
		{name="Acherus: The Ebon Hold",faction="A",class="DEATHKNIGHT", npc="Grimwing",npcid=29480,x=83.89,y=50.43,quest=13188,namestrict=true},
		{name="Light's Hope Chapel",faction="H",npc="Georgia",npcid=12636,x=75.81,y=53.29},
		{name="Acherus: The Ebon Hold",faction="H",class="DEATHKNIGHT", npc="Grimwing",npcid=29480,x=83.89,y=50.43,quest=13189,namestrict=true},
		{name="Eastwall Tower",faction="B",npc="Richard Trueflight",npcid=44230,x=61.64,y=43.84},
		{name="Northpass Tower",faction="B",npc="Grayson Ironwing",npcid=28621,x=51.35,y=21.31},
		{name="Light's Shield Tower",faction="B",npc="Devon Manning",npcid=44231,x=52.77,y=53.57},
		{name="Crown Guard Tower",faction="B",npc="Janice Myers",npcid=44232,x=34.90,y=67.89},
		{name="Plaguewood Tower",faction="B",npc="William Kielar Jr.",npcid=44233,x=18.46,y=27.37},
		{name="Thondroril River",faction="B",npc="Frax Bucketdrop",npcid=37888,x=10.09,y=65.66},
	},

	['Elwynn Forest']={
		{name="Goldshire",faction="A",npc="Bartlett the Brave",npcid=42983,x=41.71,y=64.64},
		{name="Eastvale Logging Camp",faction="A",npc="Goss the Swift",npcid=43000,x=81.83,y=66.56},
	},

	['Eversong Woods']={
		{name="Fairbreeze Village",faction="H",npc="Skymaster Brightdawn",npcid=44036,x=43.94,y=69.98},
		{name="Silvermoon City",faction="H",npc="Skymistress Gloaming",npcid=16192,x=54.37,y=50.73},
		{name="Falconwing Square",faction="H",npc="Skymaster Skyles",npcid=44244,x=46.25,y=46.79},
	},

	['Ghostlands']={
		{name="Tranquillien",faction="H",npc="Skymaster Sunwing",npcid=16189,x=45.42,y=30.52},
		{name="Zul'Aman",faction="B",npc="Kiz Coilspanner",npcid=24851,x=74.76,y=67.15},
	},

	['Hillsbrad Foothills']={
		{name="Eastpoint Tower",faction="H",npc="Darren Longfellow",npcid=47661,x=59.61,y=63.25},
		{name="Ruins of Southshore",faction="H",npc="Darla Harris",npcid=47644,x=49.02,y=66.21},
		{name="Southpoint Gate",faction="H",npc="Pamela Stutzka",npcid=47655,x=29.14,y=64.41},
		{name="Strahnbrad",faction="H",npc="Phillip Harding",npcid=47665,x=58.23,y=26.48},
		{name="Tarren Mill",faction="H",npc="Zarise",npcid=2389,x=56.06,y=46.08},
	},

	['Ironforge']={
		{name="Ironforge",faction="A",npc="Gryth Thurden",npcid=1573,x=55.51,y=47.74},
	},

	['Isle of Quel\'Danas']={
		{name="Shattered Sun Staging Area",faction="B",npc="Ohura",npcid=26560,x=48.36,y=25.07},
	},

	['Kelp\'thar Forest']={
		{name="Sandy Beach",faction="A",npc="Swift Seahorse",npcid=43287,x=42.43,y=66.13,taxioperator="seahorse"},
		{name="Sandy Beach",faction="H",npc="Swift Seahorse",npcid=43216,x=49.30,y=87.89,taxioperator="seahorse"},
		{name="Smuggler's Scar",faction="B",npc="Swift Seahorse",npcid=40852,x=56.12,y=31.13,quest=25587,taxioperator="seahorse"},
	},

	['Loch Modan']={
		{name="Farstrider Lodge",faction="A",npc="Eeryven Grayer",npcid=41332,x=81.88,y=64.07},
		{name="Thelsamar",faction="A",npc="Thorgrum Borrelson",npcid=1572,x=33.94,y=50.95},
	},

	['Northern Stranglethorn']={
		{name="Fort Livingston",faction="A",npc="Robert Rhodes",npcid=43042,x=52.64,y=66.10},
		{name="Rebel Camp",faction="A",npc="James Stillair",npcid=43045,x=47.86,y=11.85},
		{name="Bambala",faction="H",npc="Raskha",npcid=43052,x=62.40,y=39.24},
		{name="Grom'gol",faction="H",npc="Thysta",npcid=1387,x=39.01,y=51.25},
	},

	['Redridge Mountains']={
		{name="Camp Everstill",faction="A",npc="Arlen Marsters",npcid=43371,x=52.92,y=54.64},
		{name="Lakeshire",faction="A",npc="Ariena Stormfeather",npcid=931,x=29.42,y=53.76},
		{name="Shalewind Canyon",faction="A",npc="Nora Baldwin",npcid=43072,x=77.97,y=65.91},
	},

	['Searing Gorge']={
		{name="Thorium Point",faction="A",npc="Lanie Reed",npcid=2941,x=37.94,y=30.86},
		{name="Thorium Point",faction="H",npc="Grisha",npcid=3305,x=34.84,y=30.88},
		{name="Iron Summit",faction="B",npc="Doug Deepdown",npcid=47927,x=41.06,y=68.78},
	},

	['Shimmering Expanse']={
		{name="Sandy Beach",faction="A",npc="Francis Greene",npcid=43290,x=57.04,y=17.05},
		{name="Tranquil Wash",faction="A",npc="Swift Seahorse",npcid=40867,x=48.55,y=57.43,taxioperator="seahorse"},
		{name="Voldrin's Hold",faction="A",quest=25626,npc="Salty McTavish",npcid=43295,x=56.77,y=75.87},
		{name="Voldrin's Hold",faction="A",quest=25626,npc="Swift Seahorse",npcid=43289,x=57.10,y=75.17,taxioperator="seahorse"},
		{name="Stygian Bounty",faction="H",quest=26006,npc="Brogdul",npcid=43225,x=50.23,y=65.49},
		{name="Stygian Bounty",faction="H",quest=26006,npc="Swift Seahorse",npcid=40871,x=49.47,y=65.56,taxioperator="seahorse"},
		{name="Sandy Beach",faction="H",npc="Briglar",npcid=43220,x=61.02,y=28.43},
		{name="Legion's Rest",faction="H",npc="Swift Seahorse",npcid=40871,x=50.74,y=63.47,taxioperator="seahorse"},
		{name="Silver Tide Hollow",faction="B",npc="Swift Seahorse",npcid=40851,x=49.52,y=41.21,quest=25222,taxioperator="seahorse"},
	},

	['Silverpine Forest']={
		{name="The Forsaken Front",faction="H",npc="Steven Stutzka",npcid=46552,x=50.87,y=63.62},
		{name="The Sepulcher",faction="H",npc="Karos Razok",npcid=2226,x=45.41,y=42.48},
		{name="Forsaken Rear Guard",faction="H",npc="Franny Mertz",npcid=50463,x=45.93,y=21.88},
		{name="Forsaken High Command",quest=26965,faction="H",npc="Bat Handler Maggotbreath",npcid=44825,x=57.91,y=8.70},
	},

	['Stormwind City']={
		{name="Stormwind",faction="A",npc="Dungar Longdrink",npcid=352,x=70.94,y=72.46},
	},

	['Swamp of Sorrows']={
		{name="Marshtide Watch",faction="A",npc="Paola Baldwin",npcid=43087,x=70.05,y=38.57},
		{name="The Harborage",faction="A",npc="Yedrin",npcid=43088,x=30.78,y=34.60},
		{name="Stonard",faction="H",npc="Breyk",npcid=6026,x=47.78,y=55.22},
		{name="Bogpaddle",faction="B",npc="Skeezie",npcid=43086,x=72.02,y=12.04},
	},

	['The Cape of Stranglethorn']={
		{name="Booty Bay",faction="A",npc="Gyll",npcid=2859,x=41.67,y=74.53,factionid=21,factionstanding=3},
		{name="Explorers' League Digsite",faction="A",npc="Colin Swifthammer",npcid=43043,x=55.74,y=41.22},
		{name="Booty Bay",faction="H",npc="Gringer",npcid=2858,x=40.61,y=73.42,factionid=21,factionstanding=3},
		{name="Hardwrench Hideaway",faction="H",npc="Hizzle",npcid=43053,x=35.14,y=29.39},
	},

	['The Hinterlands']={
		{name="Aerie Peak",faction="A",npc="Guthrum Thunderfist",npcid=8018,x=11.07,y=46.15},
		{name="Stormfeather Outpost",faction="A",npc="Brock Rockbeard",npcid=43570,x=65.77,y=44.87},
		{name="Hiri'watha Research Station",faction="H",npc="Kellen Kuhn",npcid=43573,x=32.45,y=58.08},
		{name="Revantusk Village",faction="H",npc="Gorkas",npcid=4314,x=81.71,y=81.75},
	},

	['Ruins of Gilneas']={
		{name="Forsaken Forward Command",faction="H",npc="Bat Handler Doomair",npcid=45479,x=57.28,y=17.75,cond_fun=function() return ZGV.Parser.ConditionEnv.completedq(27290) and not ZGV.Parser.ConditionEnv.completedq(27405) end},
	},

	['Tirisfal Glades']={
		{name="Brill",faction="H",npc="Anette Williams",npcid=43124,x=58.84,y=51.94,cond_fun=function() return ZGV.InPhase("Old Undercity") or ZGV.InPhase("UndercityOoze") end},
		{name="The Bulwark",faction="H",npc="Timothy Cunningham",npcid=37915,x=83.58,y=69.95,cond_fun=function() return ZGV.InPhase("Old Undercity") end},
	},

	['Tirisfal Glades L']={
		{name="Brill",faction="H",npc="Anette Williams",npcid=185948,x=58.76,y=51.88,cond_fun=function() return ZGV.InPhase("UndercityCharred") end},
	},

	['Undercity']={
		{name="Undercity",faction="H",npc="Michael Garrett",npcid=4551,x=63.26,y=48.55,cond_fun=function() return ZGV.InPhase("Old Undercity") end},
	},

	['Twilight Highlands']={
		{name="Firebeard's Patrol",faction="A",npc="Farstad Stonegrip",npcid=47147,x=60.42,y=57.65},
		{name="Highbank",faction="A",quest=28598,npc="Glenn Arbuckle",npcid=47119,x=81.66,y=77.12},
		{name="Kirthaven",faction="A",npc="Shaina Talonheart",npcid=47155,x=56.78,y=15.11},
		{name="Thundermar",faction="A",npc="Doran Talonheart",npcid=47154,x=48.54,y=28.10},
		{name="Victor's Point",faction="A",npc="Desmond Chadsworth",npcid=47118,x=43.89,y=57.27},
		{name="Bloodgulch",faction="H",npc="Bramok Gorewing",npcid=47156,x=54.15,y=42.22},
		{name="Crushblow",faction="H",npc="Tokrog",npcid=47116,x=45.76,y=76.19},
		{name="Dragonmaw Port",quest=26840,faction="H",npc="Gorthul",npcid=47174,x=73.79,y=52.80},
		{name="The Gullet",faction="H",npc="San'shigo",npcid=47133,x=36.90,y=37.99},
		{name="The Krazzworks",faction="H",npc="Harpo Boltknuckle",npcid=47061,x=75.33,y=17.79},
		{name="Vermillion Redoubt",faction="B",quest=27504,npc="Aquinastrasz",npcid=47121,x=28.55,y=24.86},
	},

	['Western Plaguelands']={
		{name="Andorhal",faction="A",npc="Ginny Goodwin",npcid=46006,x=39.43,y=69.55},
		{name="Chillwind Camp",faction="A",npc="Bibilfaz Featherwhistle",npcid=12596,x=42.92,y=85.06},
		{name="Andorhal",faction="H",npc="Rhonda Molver",npcid=46004,x=46.52,y=64.71},
		{name="Hearthglen",faction="B",npc="William Henderson",npcid=47875,x=44.66,y=18.47},
		{name="The Menders' Stead",faction="B",npc="Marge Heffman",npcid=46011,x=50.50,y=52.23},
	},

	['Westfall']={
		{name="Sentinel Hill",faction="A",npc="Thor",npcid=523,x=56.64,y=49.44},
		{name="Moonbrook",faction="A",npc="Tina Skyden",npcid=42426,x=42.08,y=63.28},
		{name="Furlbrow's Pumpkin Farm",faction="A",npc="Hoboair",npcid=42406,x=49.79,y=18.69},
	},

	['Wetlands']={
		{name="Dun Modr",faction="A",npc="Caleb Baelor",npcid=41325,x=49.90,y=18.56},
		{name="Greenwarden's Grove",faction="A",npc="Halana",npcid=41322,x=56.31,y=41.85},
		{name="Menethil Harbor",faction="A",npc="Shellei Brondir",npcid=1571,x=9.45,y=59.58},
		{name="Slabchisel's Survey",faction="A",npc="Elgin Baelor",npcid=41321,x=56.87,y=71.10},
		{name="Whelgar's Retreat",faction="A",npc="Damon Baelor",npcid=41323,x=38.78,y=39.04},
	},
},

-- Outland --
[101]={
	['Blade\'s Edge Mountains']={
		{name="Sylvanaar",faction="A",npc="Amerun Leafshade",npcid=18937,x=37.82,y=61.39},
		{name="Toshley's Station",faction="A",npc="Rip Pedalslam",npcid=21107,x=61.15,y=70.44},
		{name="Thunderlord Stronghold",faction="H",npc="Unoke Tenderhoof",npcid=18953,x=52.05,y=54.13},
		{name="Mok'Nathal Village",faction="H",npc="Sky-Master Maxxor",npcid=22455,x=76.37,y=65.93},
		{name="Evergrove",faction="B",npc="Fhyn Leafshadow",npcid=22216,x=61.68,y=39.61},
		{name="Skyguard Outpost",faction="B",factionid=1031,factionstanding=6,npc="Skyguard Handler Irena",npcid=23413,x=28.28,y=52.10,taxioperator="skyguard"},
	},

	['Hellfire Peninsula']={
		{name="Honor Hold",faction="A",npc="Krill Bitterhue",npcid=16822,x=54.68,y=62.35},
		{name="Shatter Point",faction="A",npc="Runetog Wildhammer",npcid=20234,x=78.42,y=34.90},
		{name="Temple of Telhamat",faction="A",npc="Kuma",npcid=18785,x=25.19,y=37.23},
		{name="Hellfire Peninsula, The Dark Portal",faction="A",npc="Amish Wildhammer",npcid=18931,x=87.36,y=52.42},
		{name="Falcon Watch",faction="H",npc="Innalia",npcid=18942,x=27.79,y=59.98},
		{name="Spinebreaker Ridge",faction="H",npc="Amilya Airheart",npcid=19558,x=61.65,y=81.19},
		{name="Hellfire Peninsula, The Dark Portal",faction="H",npc="Vlagga Freyfeather",npcid=18930,x=87.35,y=48.14},
		{name="Thrallmar",faction="H",npc="Barley",npcid=16587,x=56.29,y=36.25},
	},

	['Nagrand']={
		{name="Telaar",faction="A",npc="Furgu",npcid=18789,x=54.17,y=75.06},
		{name="Garadar",faction="H",npc="Gursha",npcid=18808,x=57.19,y=35.25},
	},

	['Netherstorm']={
		{name="Area 52",faction="B",npc="Krexcil",npcid=18938,x=33.74,y=63.99},
		{name="Cosmowrench",faction="B",npc="Harpax",npcid=20515,x=65.20,y=66.81},
		{name="The Stormspire",faction="B",npc="Grennik",npcid=19583,x=45.31,y=34.87},
	},

	['Shadowmoon Valley']={
		{name="Wildhammer Stronghold",faction="A",npc="Brubeck Stormfoot",npcid=18939,x=37.61,y=55.45},
		{name="Shadowmoon Village",faction="H",npc="Drek'Gol",npcid=19317,x=30.34,y=29.19},
		{name="Altar of Sha'tar",faction="B",factionid=932,factionstanding=3,npc="Maddix",npcid=19581,x=63.33,y=30.40},
		{name="Sanctum of the Stars",faction="B",factionid=934,factionstanding=3,npc="Alieshor",npcid=21766,x=56.32,y=57.80},
	},

	['Shattrath City']={
		{name="Shattrath",faction="B",npc="Nutral",npcid=18940,x=64.07,y=41.12},
	},

	['Terokkar Forest']={
		{name="Allerian Stronghold",faction="A",npc="Furnan Skysoar",npcid=18809,x=59.45,y=55.43},
		{name="Stonebreaker Hold",faction="H",npc="Kerna",npcid=18807,x=49.19,y=43.42},
		{name="Blackwing Landing",faction="B",factionid=1031,factionstanding=6,npc="Skyguard Handler Deesak",npcid=23415,x=63.50,y=65.81,taxioperator="skyguard"},
	},

	['Zangarmarsh']={
		{name="Orebor Harborage",faction="A",npc="Halu",npcid=22485,x=41.28,y=29.00},
		{name="Telredor",faction="A",npc="Munci",npcid=18788,x=67.83,y=51.46},
		{name="Swamprat Post",faction="H",npc="Gur'zil",npcid=20762,x=84.76,y=55.11},
		{name="Zabra'jin",faction="H",npc="Du'ga",npcid=18791,x=33.07,y=51.07},
	},
},

-- Northrend --
[113]={
	['Borean Tundra']={
		{name="Fizzcrank Airstrip",faction="A",npc="Kara Thricestar",npcid=26602,x=56.57,y=20.06},
		{name="Valiance Keep",faction="A",npc="Tomas Riverwell",npcid=26879,x=58.96,y=68.29},
		{name="Warsong Hold",faction="H",npc="Turida Coldwind",npcid=25288,x=40.36,y=51.40},
		{name="Bor'gorok Outpost",faction="H",npc="Kimbiza",npcid=26848,x=49.65,y=11.05},
		{name="Taunka'le Village",faction="H",npc="Omu Spiritbreeze",npcid=26847,x=77.76,y=37.77},
		{name="Transitus Shield",faction="B",npc="Warmage Adami",npcid=27046,x=33.13,y=34.44},
		{name="Amber Ledge",faction="B",npc="Surristrasz",npcid=24795,x=45.32,y=34.49},
		{name="Unu'pe",faction="B",npc="Bilko Driftspark",npcid=28195,x=78.54,y=51.53},
	},

	['Crystalsong Forest']={
		{name="Windrunner's Overlook",faction="A",npc="Galendror Whitewing",npcid=30271,x=72.17,y=80.97},
		{name="Sunreaver's Command",faction="H",npc="Skymaster Baeric",npcid=30269,x=78.54,y=50.41},
	},

	['Dalaran']={
		{name="Dalaran",faction="B",npc="Aludane Whitecloud",npcid=28674,x=72.18,y=45.77},
	},

	['Dragonblight']={
		{name="Stars' Rest",faction="A",npc="Palena Silvercloud",npcid=26881,x=29.18,y=55.32},
		{name="Fordragon Hold",faction="A",npc="Derek Rammel",npcid=26877,x=39.52,y=25.91},
		{name="Wintergarde Keep",faction="A",npc="Rodney Wells",npcid=26878,x=77.00,y=49.79},
		{name="Agmar's Hammer",faction="H",npc="Narzun Skybreaker",npcid=26566,x=37.51,y=45.76},
		{name="Kor'kron Vanguard",faction="H",npc="Numo Spiritbreeze",npcid=26850,x=43.85,y=16.94},
		{name="Venomspite",faction="H",npc="Junter Weiss",npcid=26845,x=76.48,y=62.21},
		{name="Wyrmrest Temple",faction="B",npc="Nethestrasz",npcid=26851,x=60.32,y=51.55},
		{name="Moa'ki",faction="B",npc="Cid Flounderfix",npcid=28196,x=48.51,y=74.39},
	},

	['Grizzly Hills']={
		{name="Amberpine Lodge",faction="A",npc="Vana Grey",npcid=26880,x=31.31,y=59.11},
		{name="Westfall Brigade",faction="A",npc="Samuel Clearbook",npcid=26876,x=59.89,y=26.68},
		{name="Conquest Hold",faction="H",npc="Kragh",npcid=26852,x=21.99,y=64.43},
		{name="Camp Oneqwah",faction="H",npc="Makki Wintergale",npcid=26853,x=64.96,y=46.93},
	},

	['Howling Fjord']={
		{name="Fort Wildervar",faction="A",npc="James Ormsby",npcid=24061,x=60.06,y=16.11},
		{name="Valgarde Port",faction="A",npc="Pricilla Winterwind",npcid=23736,x=59.79,y=63.24},
		{name="Westguard Keep",faction="A",npc="Greer Orehammer",npcid=23859,x=31.26,y=43.98},
		{name="Camp Winterhoof",faction="H",npc="Celea Frozenmane",npcid=24032,x=49.56,y=11.59},
		{name="Vengeance Landing",faction="H",npc="Adeline Chambers",npcid=27344,x=79.04,y=29.71},
		{name="New Agamand",faction="H",npc="Tobias Sarkhoff",npcid=24155,x=52.01,y=67.38},
		{name="Apothecary Camp",faction="H",npc="Lilleth Radescu",npcid=26844,x=25.98,y=25.07},
		{name="Kamagua",faction="B",npc="Kip Trawlskip",npcid=28197,x=24.66,y=57.77},
	},

	['Icecrown']={
		{name="The Shadow Vault",faction="A",quest=12896,npc="Morlia Doomwing",npcid=30314,x=43.74,y=24.38},
		{name="The Shadow Vault",faction="H",quest=12897,npc="Morlia Doomwing",npcid=30314,x=43.74,y=24.38},
		{name="Argent Tournament Grounds",faction="B",npc="Helidan Lightwing",npcid=33849,x=72.59,y=22.61},
		{name="Death's Rise",faction="B",npc="Dreadwind",npcid=31078,x=19.34,y=47.78},
		{name="Crusaders' Pinnacle",faction="B",quest=13141,npc="Penumbrius",npcid=31069,x=79.41,y=72.36},
		{name="The Argent Vanguard",faction="B",npc="Aedan Moran",npcid=30433,x=87.80,y=78.07},
	},

	['Sholazar Basin']={
		{name="River's Heart",faction="B",npc="Marvin Wobblesprocket",npcid=28574,x=50.13,y=61.36},
		{name="Nesingwary Base Camp",faction="B",quest=12523,npc="The Spirit of Gnomeregan",npcid=28037,x=25.27,y=58.44},
	},

	['The Storm Peaks']={
		{name="Frosthold",faction="A",npc="Faldorf Bitterchill",npcid=29750,x=29.50,y=74.33},
		{name="Grom'arsh Crash-Site",faction="H",npc="Kabarg Windtamer",npcid=29757,x=36.19,y=49.39},
		{name="Camp Tunka'lo",faction="H",npc="Hyeyoung Parka",npcid=29762,x=65.41,y=50.60},
		{name="K3",faction="B",npc="Skizzle Slickslide",npcid=29721,x=40.75,y=84.55},
		{name="Dun Niffelem",faction="B",quest=12956,npc="Halvdan",npcid=32571,x=62.63,y=60.93},
		{name="Ulduar",faction="B",npc="Shavalius the Fancy",npcid=29951,x=44.49,y=28.19},
		{name="Bouldercrag's Refuge",faction="B",npc="Breck Rockbrow",npcid=29950,x=30.65,y=36.32},
	},

	['Wintergrasp']={
		{name="Valiance Landing Camp",faction="A",npc="Arzo Safeflight",npcid=30869,x=71.98,y=30.95},
		{name="Warsong Camp",faction="H",npc="Herzo Safeflight",npcid=30870,x=21.62,y=34.95},
	},

	['Zul\'Drak']={
		{name="Light's Breach",faction="B",npc="Danica Saint",npcid=28618,x=32.18,y=74.39},
		{name="Ebon Watch",faction="B",npc="Baneflight",npcid=28615,x=14.01,y=73.58},
		{name="The Argent Stand",faction="B",npc=" Gurric",npcid=28623,x=41.55,y=64.43},
		{name="Zim'Torga",faction="B",npc="Maaka",npcid=28624,x=60.04,y=56.71},
		{name="Gundrak",faction="B",npc="Rafae",npcid=30569,x=70.46,y=23.28},
	},
},

-- Pandaria --
[424]={
	['The Jade Forest']={
		{name="Paw'Don Village",faction="A",npc="Wing Kyo",npcid=66023,x=46.04,y=85.15},
		{name="Pearlfin Village",faction="A",npc="Ut-Nam",npcid=56737,x=57.95,y=82.51},
		{name="Honeydew Village",faction="H",npc="Wing Hya",npcid=66227,x=28.11,y=15.62},
		{name="Grookin Hill",faction="H",npc="Grookin Flapmaster",npcid=60952,x=27.81,y=47.91,quest=29935},
		{name="Serpent's Overlook",faction="B",npc="Sky Dancer Ji",npcid=64310,x=43.10,y=68.49},
		{name="Sri-La Village",faction="B",npc="Gingo Alebottom",npcid=59733,x=55.38,y=23.73},
		{name="Emperor's Omen",faction="B",npc="Supplier Towsa",npcid=59735,x=50.82,y=26.80},
		{name="Tian Monastery",faction="B",npc="Studious Chu",npcid=59736,x=43.57,y=24.53},
		{name="Dawn's Blossom",faction="B",npc="Keg Runner Lee",npcid=59186,x=47.05,y=46.24},
		{name="The Arboretum",faction="B",npc="Injar'i Lakebloom",npcid=59732,x=57.01,y=44.03},
		{name="Jade Temple Grounds",faction="B",npc="Ginsa Arroweye",npcid=59727,x=54.57,y=61.76},
	},

	['Krasarang Wilds']={
		{name="Sentinel Basecamp",faction="A",npc="Maylen Moonfeather",npcid=59048,x=25.14,y=33.46},
		{name="Lion's Landing",faction="A",npc="Daggin Windbeard",npcid=68226,x=88.33,y=34.69,quest=32109},
		{name="The Incursion",faction="A",npc="Tylen Moonfeather",npcid=59049,x=67.77,y=32.49,quest=30274},
		{name="Thunder Cleft",faction="H",npc="Lira Skysplitter",npcid=59046,x=59.20,y=24.67},
		{name="Dawnchaser Retreat",faction="H",npc="Munch Windhoof",npcid=59047,x=29.00,y=50.32},
		{name="Domination Point",faction="H",npc="Kromthar",npcid=67785,x=9.69,y=52.51,quest=32108},
		{name="Marista",faction="B",npc="Nan-Po",npcid=60441,x=52.48,y=76.60},
		{name="Cradle of Chi-Ji",faction="B",npc="Feather Keeper Li",npcid=65189,x=31.14,y=63.16},
		{name="Zhu's Watch",faction="B",npc="Gee Hung",npcid=60232,x=76.74,y=8.38},
	},

	['Valley of the Four Winds']={
		{name="Pang's Stead",faction="B",npc="Princeton",npcid=60230,x=84.50,y=21.06},
		{name="Grassy Cline",faction="B",npc="Kim of the Mountain Winds",npcid=62658,x=70.82,y=24.10},
		{name="Halfhill",faction="B",npc="Wing Nga",npcid=60231,x=56.50,y=50.36},
		{name="Stoneplow",faction="B",npc="\"Dragonwing\" Dan",npcid=58843,x=20.30,y=58.68},
	},

	['Vale of Eternal Blossoms']={
		{name="Shrine of Seven Stars",faction="A",npc="Sharinga Springrunner",npcid=61121,x=84.61,y=62.41},
		{name="The Lion's Redoubt",faction="A",npc="Tiper Windman",npcid=65865,x=11.11,y=101.67,region="topofthewallVFW"},
		{name="Shrine of Two Moons",faction="H",npc="Tania Summerbreeze",npcid=61122,x=62.86,y=21.80},
		{name="Serpent's Spine",faction="B",npc="Mai of the Wall",npcid=63497,x=14.22,y=79.28,region="topofthewallVEB",taxinodeID=1073},
	},

	['Vale of Eternal Blossoms New']={
		{name="The Summer Terrace",faction="A",npc="Sharinga Springrunner",npcid=61121,x=85.17,y=60.31},
		{name="The Golden Terrace",faction="H",npc="Tania Summerbreeze",npcid=61122,x=63.11,y=19.19},
		{name="Mistfall Village",faction="B",npc="Ryuxi",npcid=154805,x=38.91,y=72.80,quest=56539},
	},

	['The Veiled Stair']={
		{name="Tavern in the Mists",faction="B",npc="Shin the Weightless",npcid=61759,x=56.74,y=75.75},
	},

	['Kun-Lai Summit']={
		{name="Westwind Rest",faction="A",npc="Tabo the Flyer",npcid=61744,x=53.98,y=84.27,quest=30514},
		{name="Eastwind Rest",faction="H",npc="Soaring Paw",npcid=61745,x=62.43,y=80.72,quest=30515},
		{name="Serpent's Spine",faction="H",npc="Morla Skyblade",npcid=65863,x=35.97,y=83.71,region="topofthewallKLS",taxinodeID=1117},
		{name="Binan Village",faction="B",npc="Jo the Wind Watcher",npcid=61474,x=72.55,y=94.17},
		{name="Temple of the White Tiger",faction="B",npc="Big Greenfeather",npcid=61118,x=66.31,y=50.67},
		{name="Zouchin Village",faction="B",npc="Bo the Wind Claimer",npcid=61511,x=62.42,y=30.12},
		{name="One Keg",faction="B",npc="Little Cleankite",npcid=61504,x=57.73,y=59.69},
		{name="Kota Basecamp",faction="B",npc="Uncle Eastwind",npcid=60416,x=42.81,y=69.64},
		{name="Shado-Pan Fallback",faction="B",npc="Kite Master Ni",npcid=61473,x=43.91,y=89.54,region="topofthewallKLS"},
		{name="Winter's Blossom",faction="B",npc="Kite Master Len",npcid=61512,x=34.54,y=59.12},
	},

	['Townlong Steppes']={
		{name="Longying Outpost",faction="B",npc="Kite Master Wong",npcid=62901,x=71.08,y=57.32},
		{name="Gao-Ran Battlefront",faction="B",npc="Kite Master Nenshi",npcid=62903,x=74.39,y=81.46},
		{name="Rensai's Watchpost",faction="B",npc="Kite Master Li-Sen",npcid=62898,x=54.29,y=79.05},
		{name="Shado-Pan Garrison",faction="B",npc="Kite Master Yao-Li",npcid=62909,x=50.08,y=71.98},
	},

	['Dread Wastes']={
		{name="The Sunset Brewgarden",faction="B",npc="Jin the Flying Keg",npcid=63500,x=50.20,y=12.24},
		{name="Klaxxi'vess",faction="B",npc="Kik'tik",npcid=63501,x=55.83,y=34.88},
		{name="Soggy's Gamble",faction="B",npc="Min the Breeze Rider",npcid=63498,x=56.10,y=70.18},
		{name="The Briny Muck",faction="B",npc="Infiltrator Ik'thal",npcid=65511,x=42.53,y=55.75},
	},

	['Isle of Giants']={
		{name="Beeble's Wreck",faction="A",npc="Beeble Sockwrench",npcid=69359,x=41.75,y=79.31},
		{name="Bozzle's Wreck",faction="H",npc="Bozzle Blastinfuse",npcid=69360,x=52.02,y=75.50},
	},

	['Timeless Isle']={
		{name="Tushui Landing",faction="A",npc="Michi Windblossom",npcid=71940,x=23.08,y=71.05},
		{name="Huojin Landing",faction="H",npc="Chi-Ro the Skytamer",npcid=71939,x=21.92,y=39.75},
	},
},

-- Draenor --
[572]={
	['Shadowmoon Valley D']={
		{name="Elodor",faction="A",npc="Vamuun",npcid=81289,x=58.68,y=31.92},
		{name="Path of Light",faction="A",npc="Paaya",npcid=76851,x=59.37,y=45.98},
		{name="Tranquil Court",faction="A",npc="Itara",npcid=86685,x=70.42,y=50.42},
		{name="The Draakorium",faction="A",npc="Morfax",npcid=81284,x=57.03,y=56.63},
		{name="Twilight Glade",faction="A",npc="Gotuun",npcid=76839,x=40.73,y=55.28},
		{name="Embaari Village",faction="A",npc="Eonor",npcid=76840,x=45.68,y=38.86},
		{name="Exile's Rise",faction="B",npc="Wargra",npcid=76850,x=45.57,y=25.40},
		{name="Socrethar's Rise",faction="B",npc="Azara Goldenwing",npcid=81285,x=43.89,y=77.53},
		{name="Darktide Roost",faction="B",npc="Beasttamer Ladaak",npcid=83427,x=59.85,y=81.38},
	},

	['Gorgrond']={
		{name="Deeproot",faction="A",npc="Rangari Nogo",npcid=81888,x=46.47,y=76.60},
		{name="Highpass",faction="A",npc="Rangari Rajess",npcid=81074,x=52.83,y=59.33,quest=35063},
		{name="Wildwood Wash",faction="A",npc="Rangari Thewe",npcid=81884,x=64.16,y=57.50},
		{name="Bastion Rise",faction="A",npc="Rangari Yaval",npcid=84507,x=46.40,y=92.41},
		{name="Evermorn Springs",faction="H",npc="Chucklespine",npcid=84495,x=41.31,y=87.17},
		{name="Bastion Rise",faction="H",npc="Windscreamer",npcid=84508,x=47.43,y=90.79},
		{name="Beastwatch",faction="H",npc="Grinslicer",npcid=81055,x=45.98,y=69.22},
		{name="Breaker's Crown",faction="B",npc="Nisha",npcid=86492,x=45.87,y=54.94,quest=35026},
		{name="Everbloom Wilds",faction="B",npc="Arcanist Windlebop",npcid=84714,x=57.01,y=45.88},
		{name="Skysea Ridge",faction="B",npc="Faronn Dustwalker",npcid=85829,x=39.55,y=36.58},
		{name="Iron Docks",faction="B",npc="Nisha",npcid=84700,x=43.04,y=20.21},
		{name="Everbloom Overlook",faction="B",npc="Researcher Sarix",npcid=88757,x=68.72,y=28.75},
	},

	['Nagrand D']={
		{name="Telaari Station",faction="A",npc="John Shelby",npcid=82309,x=63.64,y=61.56},
		{name="Yrel's Watch",faction="A",npc="Felicia Maline",npcid=81250,x=62.66,y=40.65},
		{name="Wor'var",faction="H",npc="Tal",npcid=82346,x=83.31,y=44.68},
		{name="Riverside Post",faction="H",npc="Omu Spiritbreeze",npcid=82340,x=49.56,y=48.06},
		{name="The Ring of Trials",faction="B",npc="Biggy Warprofits",npcid=83924,x=79.82,y=49.72},
		{name="Nivek's Overlook",faction="B",npc="Nivek Lee",npcid=88653,x=49.38,y=75.91},
		{name="Joz's Rylaks",faction="B",npc="Joz Navarix",npcid=88668,x=62.24,y=32.90},
		{name="Rilzit's Holdfast",faction="B",npc="Rilzit Mugshot",npcid=87395,x=50.75,y=30.64},
		{name="Throne of the Elements",faction="B",npc="Gixmo Moneycash",npcid=82844,x=73.70,y=26.65},
	},

	['Spires of Arak']={
		{name="Southport",faction="A",npc="Fim Swiftbreeze",npcid=83567,x=39.08,y=61.80},
		{name="Axefall",faction="H",npc="Hutou Featherwind",npcid=82612,x=39.51,y=43.37},
		{name="Apexis Excavation",faction="B",npc="Skytalon Kuris",npcid=84509,x=36.99,y=24.62},
		{name="Crow's Crook",faction="B",npc="Darkscreech",npcid=84515,x=51.82,y=31.05},
		{name="Akeeta's Hovel",faction="B",npc="Duskclaw",npcid=88584,x=65.67,y=17.51},
		{name="Talon Watch",faction="B",npc="Skytalon Karaz",npcid=84504,x=61.90,y=42.62},
		{name="Pinchwhistle Gearworks",faction="B",npc="Kwiven Quickcog",npcid=82511,x=60.88,y=73.30},
		{name="Veil Terokk",faction="B",npc="Skytalon Meshaal",npcid=84498,x=46.17,y=44.12},
	},

	['Tanaan Jungle']={
		{name="Lion's Watch",faction="A",npc="Skyguard Thann",npcid=90960,x=57.51,y=58.76,quest=38445},
		{name="The Iron Front",faction="A",npc="Skyguard Blann",npcid=91940,x=10.03,y=53.07},
		{name="The Iron Front",faction="H",npc="Nasher",npcid=90552,x=9.27,y=55.86},
		{name="Vol'mar",faction="H",npc="Gargash the Diver",npcid=90550,x=60.43,y=46.44,quest=37935},
		{name="Aktar's Post",faction="B",npc="Skytalon Kariz",npcid=90560,x=26.14,y=38.88},
		{name="Sha'naari Refuge",faction="B",npc="Rangari Sha'ana",npcid=92809,x=29.55,y=63.14},
		{name="Malo's Lookout",faction="B",npc="Rocketmaster Malo",npcid=92808,x=43.40,y=42.24},
		{name="Vault of the Earth",faction="B",npc="Urtol Skyshear",npcid=90562,x=47.00,y=70.26},
	},

	['Talador']={
		{name="Exarch's Refuge",faction="A",npc="Niaa",npcid=81077,x=54.79,y=68.79},
		{name="Anchorite's Sojourn",faction="A",npc="Zaari",npcid=81067,x=80.08,y=56.68},
		{name="Fort Wrynn",faction="A",npc="Skyguard Amelia",npcid=81060,x=69.86,y=21.49},
		{name="Redemption Rise",faction="A",npc="Nomaeaa",npcid=81061,x=63.29,y=25.72},
		{name="Frostwolf Overlook",faction="H",npc="Mok'ra",npcid=81053,x=61.41,y=10.51},
		{name="Vol'jin's Pride",faction="H",npc="Mo'jimba",npcid=81057,x=70.74,y=29.40},
		{name="Durotan's Grasp",faction="H",npc="Tega Skyblade",npcid=81058,x=55.42,y=40.82},
		{name="Exarch's Refuge",faction="H",npc="Roka",npcid=81078,x=54.54,y=67.82},
		{name="Retribution Point",faction="B",npc="Beldos",npcid=81068,x=42.11,y=76.79},
		{name="Shattrath City",faction="B",npc="Zamara",npcid=81064,x=51.27,y=42.66},
		{name="Terokkar Refuge",faction="B",npc="Skytalon Inuz",npcid=81354,x=70.34,y=57.10},
		{name="Zangarra",faction="B",npc="Dominic Arlington",npcid=80932,x=80.42,y=25.32},
	},

	--Ashran removed for an unspecified amount of time.
	['Stormshield']={
		{name="Stormshield",faction="A",npc="Ernst ten Bosch",npcid=85959,x=30.57,y=48.47},
	},

	['Warspear']={
		{name="Warspear",faction="H",npc="Ilalu",npcid=86049,x=44.15,y=33.87},
	},

	['Frostfire Ridge']={
		{name="Iron Siegeworks",faction="A",npc="Rangari Veera",npcid=84993,x=87.42,y=62.60},
		{name="Stonefang Outpost",faction="H",npc="Skyhunter Donmor'gan",npcid=76879,x=40.11,y=51.84},
		{name="Wor'gol",faction="H",npc="Pul Windcarver",npcid=76782,x=21.57,y=56.15},
		{name="Throm'Var",faction="H",npc="Jonnock Hewndawn",npcid=76783,x=31.83,y=9.56},
		{name="Darkspear's Edge",faction="H",npc="Ja'kana",npcid=78699,x=51.70,y=41.12},
		{name="Wolf's Stand",faction="H",npc="Windhunter",npcid=87707,x=73.63,y=60.03},
		{name="Thunder Pass",faction="H",npc="Bile Warneck",npcid=76784,x=83.62,y=60.88},
		{name="Bladespire Citadel",faction="H",npc="Roark the Airwolf",npcid=76781,x=19.95,y=51.78,f=1},
		{name="Bloodmaul Slag Mines",faction="B",npc="Brenna Skymoor",npcid=76787,x=51.45,y=21.45},
	},

	['Lunarfall']={
		{name="Lunarfall Garrison",faction="A",npc="Dungar Longdrink",npcid=81103,x=47.99,y=49.81,taxinodeID=1476},
	},

	['Frostwall']={
		{name="Frostwall Garrison",faction="H",npc="Bron Skyhorn",npcid=79407,x=45.79,y=50.92,taxinodeID=1432},
	},
},

-- Broken Isles --
[619]={
	['Azsuna']={
		{name="Azurewing Repose",faction="B",npc="Dagrona",npcid=90556,x=48.45,y=28.07},
		{name="Challiane's Terrace",faction="B",npc="Stagtamer Maliana",npcid=90639,x=40.81,y=9.02},
		{name="Felblaze Ingress",faction="B",npc="Adept Sunwing",npcid=111624,x=63.84,y=28.47},
		{name="Illidari Perch",faction="B",npc="Adept Jena Moonrath",npcid=110971,x=31.81,y=46.29},
		{name="Illidari Stand",faction="B",npc="Izal Whitemoon",npcid=88110,x=44.60,y=43.85},
		{name="Shackle's Den",faction="B",npc="Avaya Farwind",npcid=112866,x=56.19,y=58.92},
		{name="Wardens' Redoubt",faction="B",npc="Trainee Sylwindial",npcid=108888,x=48.19,y=72.95},
		{name="Watchers' Aerie",faction="B",npc="Trainee Starwhisper",npcid=111418,x=51.75,y=82.11},
	},

	['Broken Shore']={
		{name="Vengeance Point",faction="B",npc="Izal Whitemoon",npcid=111323,x=49.67,y=21.02},
		{name="Aalgen Point",faction="B",npc="Heidirk the Scalekeeper",npcid=120118,x=70.76,y=47.62},
		{name="Deliverance Point",faction="B",npc="Illidari Calia",npcid=120272,x=45.16,y=64.12},
		{name="Acherus: The Ebon Hold, Broken Shore",faction="B",class="DEATHKNIGHT", npc="Grimwing",npcid=93465,x=25.51,y=28.79,f=2,namestrict=true},
	},

	['Dalaran L']={
		{name="Dalaran",faction="B",npc="Aludane Whitecloud",npcid=96813,x=69.83,y=51.11},
	},

	['Eye of Azshara Map']={
		{name="Eye of Azshara",faction="B",npc="Razen Swingblade",npdid=112926,x=38.28,y=46.07},
	},

	['Highmountain']={
		{name="Felbane Camp",faction="B",npc="Kimben Wingheart",npcid=97870,x=29.93,y=39.32},
		{name="Ironhorn Enclave",faction="B",npc="Poca Firemantle",npcid=98966,x=56.82,y=83.85},
		{name="Nesingwary",faction="B",npc="Tamara Sigmund",npcid=94973,x=40.23,y=52.70},
		{name="Obsidian Overlook",faction="B",npc="Chofa Nighthoof",npcid=96565,x=47.26,y=84.64},
		{name="Prepfoot",faction="B",npc="Brun Prepfoot",npcid=98972,x=57.98,y=28.62},
		{name="Shipwreck Cove",faction="B",npc="Steven Nelson",npcid=98066,x=41.90,y=10.42},
		{name="Skyhorn",faction="B",npc="Farah Skybeak",npcid=97860,x=52.60,y=45.32},
		{name="Stonehoof Watch",faction="B",npc="Lassa Skymane",npcid=100559,x=59.23,y=65.05},
		{name="Sylvan Falls",faction="B",npc="Roren Longshadow",npcid=100550,x=35.86,y=65.92},
		{name="The Witchwood",faction="B",npc="Rafat Smokehoof",npcid=97868,x=38.35,y=39.29},
	},

	['Trueshot Lodge']={
		{name="Trueshot Lodge",faction="B",npc="Odan Battlebow",npcid=98968,x=35.80,y=27.58, class="HUNTER"},
	},

	['Thunder Totem']={
		{name="Thunder Totem",faction="B",npc="Windtamer Nalt",npcid=95688,x=44.75,y=38.55},
	},

	['Stormheim']={
		{name="Greywatch",faction="A",npc="Gryphon-Master Clifford",npcid=98108,x=72.15,y=59.82},
		{name="Lorna's Watch",faction="A",npc="Donovan",npcid=98113,x=37.41,y=63.99},
		{name="Skyfire Triage Camp",faction="A",npc="Donovan",npcid=98114,x=33.59,y=50.65},
		{name="Cullen's Post",faction="H",npc="Duchess",npcid=92560,x=44.89,y=59.14},
		{name="Dreadwake's Landing",faction="H",npc="Dread-Rider Barnes",npcid=98105,x=54.52,y=73.03},
		{name="Forsaken Foothold",faction="H",npc="Dread-Rider Roth",npcid=98124,x=36.49,y=30.62},
		{name="Hafr Fjall",faction="B",npc="Fluga the Scalekeeper",npcid=111420,x=55.63,y=87.43},
		{name="Shield's Rest",faction="B",npc="Visser the Scalekeeper",npcid=111314,x=89.87,y=10.68},
		{name="Valdisdall",faction="B",npc="Garhal the Scalekeeper",npcid=98161,x=60.73,y=50.88},
		{name="Stormtorn Foothills",faction="B",npc="Hillevi the Scalekeeper",npcid=111327,x=51.97,y=34.81},
	},

	['Suramar']={
		{name="Meredil",faction="B",npc="Ancient Cloudwing",npcid=111675,x=34.38,y=49.41},
		{name="Irongrove Retreat",faction="B",npc="Alyndra Stormgazer",npcid=114666,x=25.46,y=31.73},
		{name="Crimson Thicket",faction="B",npc="Ancient Cloudwing",npcid=114718,x=64.27,y=41.98},
	},

	['Val\'sharah']={
		{name="Bradensbrook",faction="B",npc="Douglas Carrington",npcid=93940,x=42.23,y=58.48},
		{name="Garden of the Moon",faction="B",npc="Brinlanya Moonstone",npcid=100459,x=56.74,y=57.72},
		{name="Lorlathil",faction="B",npc="Elyssia Winterdusk",npcid=93447,x=54.98,y=72.47},
		{name="Starsong Refuge",faction="B",npc="Landrius Ravenfall",npcid=100468,x=69.02,y=50.83},
		{name="Gloaming Reef",faction="B",npc="Gyrdaen Windreef",npcid=114837,x=25.91,y=66.52},
	},

	['The Dreamgrove']={
		{name="The Dreamgrove",faction="B",npc="Danise Stargazer",npcid=107457,x=61.73,y=33.99, class="DRUID"},
	},
},

-- Argus --
[994]={ -- was 905
	['Krokuun']={
		{name="Vindicaar, Krokuun",faction="B",x=42.58,y=22.78,f=1,taxioperator="argusportal",argushub=true},
		{name="Krokul Hovel, Krokuun",faction="B",x=55.48,y=67.35,taxioperator="argusportal"},
		{name="Shattered Fields, Krokuun",faction="B",x=40.30,y=63.50,taxioperator="argusportal"},
		{name="Destiny Point, Krokuun",faction="B",x=62.69,y=49.12,taxioperator="argusportal"},
	},

	['Eredath']={
		{name="Vindicaar, Eredath",faction="B",x=48.98,y=23.13,f=3,taxioperator="argusportal",argushub=true},
		{name="Triumvirate's End, Eredath",faction="B",x=52.86,y=75.46,taxioperator="argusportal"},
		{name="Conservatory of the Arcane, Eredath",faction="B",x=62.98,y=39.49,taxioperator="argusportal"},
		{name="Prophet's Reflection, Eredath",faction="B",x=43.87,y=14.53,taxioperator="argusportal"},
		{name="Shadowguard Incursion, Eredath",faction="B",x=30.16,y=49.56,taxioperator="argusportal"},
		{name="City Center, Eredath",faction="B",x=47.03,y=55.50,taxioperator="argusportal"},
	},

	['Antoran Wastes']={
		{name="Vindicaar, Antoran Wastes",faction="B",x=32.32,y=56.57,f=5,taxioperator="argusportal",argushub=true},
		{name="Hope's Landing, Antoran Wastes",faction="B",x=72.96,y=50.52,taxioperator="argusportal"},
		{name="The Veiled Den, Antoran Wastes",faction="B",x=70.59,y=25.48,taxioperator="argusportal"},
		{name="Light's Purchase, Antoran Wastes",faction="B",x=72.64,y=76.17,taxioperator="argusportal"},
	},
},

-- Nazjatar
[1355] = {
	['Nazjatar']={
		-- Alliance --
		{name="Mezzamere",faction="A",npc="Ray Tamer Enaka",npcid=151772,x=39.92,y=54.12,quest=54972},
		{name="Wreck of the Old Blanchy",faction="A",npc="Mandos Fogwing",npcid=151829,x=44.48,y=85.51,quest=56156},
		{name="Ashen Strand",faction="A",npc="Azuku",npcid=153778,x=31.85,y=38.09,quest=56156},
		{name="Utama's Stand",faction="A",npc="Hirano",npcid=152889,x=61.68,y=36.51,quest=56156},
		{name="Elun'alor Temple",faction="A",npc="Orise",npcid=152888,x=73.98,y=40.03,quest=56156},
		{name="The Tidal Conflux",faction="A",npc="Nobu",npcid=154737,x=49.81,y=23.62,quest=56325},
		-- Horde --
		{name="Newhome",faction="H",npc="Iina Bluegill",npcid=153772,x=47.48,y=63.26,quest=55053},
		{name="Wreck of the Hungry Riverbeast",faction="H",npc="Markona",npcid=153850,x=36.14,y=82.31,quest=55500},
		{name="Ashen Strand",faction="H",npc="Dren Nautilin",npcid=153762,x=34.45,y=37.33,quest=55500},
		{name="Ekka's Hideaway",faction="H",npc="Ekka Crimsonscale",npcid=153863,x=63.98,y=51.81,quest=55500},
		{name="Zin'Azshari",faction="H",npc="Gizzik Kelpears",npcid=153864,x=79.52,y=37.92,quest=55500},
		{name="The Tidal Conflux",faction="H",npc="Kobo Rayfriend",npcid=154738,x=51.11,y=23.63,quest=55799},
		-- Neutral --
		{name="Kelya's Grave",faction="B",npc="Kelya Moonfall",npcid=154574,x=74.16,y=24.92,quest=56422},
	},
},

}

-- NOTE: If two taxis have the same name but different factions then a factions field must be added in here. See Serpent's Spine.
-- If not then one of the taxis will be marked with the wrong faction so will not properly get neighbors that it should.

-- This data is regenerated when performing a Taxi Connections Dump. Any weird data edits may be lost. Comments containing neighbor location names ("-- Darkshore Cat 3, ....") will be regenerated. Any custom comments must be placed in comment="..." fields.

data.flightcost = {
[12]={
	{
		tag = "001:001",
		nodeID = -1,
		name = "Lor'danel",
		taxioperator = "blackcat",
		comment = "black cat ride",
		neighbors = {
			[-3] = 50, -- Ruins of Mathystra
		},
	},
	{
		tag = "002:002",
		nodeID = -2,
		name = "Lor'danel",
		taxioperator = "blackcat",
		neighbors = {
			[-5] = 53, -- Bashal'Aran
		},
	},
	{
		tag = "003:003",
		nodeID = -3,
		name = "Ruins of Mathystra",
		taxioperator = "blackcat",
		neighbors = {
			[-4] = 75, -- Shatterspear Vale
			[-1] = 50, -- Lor'danel
		},
	},
	{
		tag = "004:004",
		nodeID = -4,
		name = "Shatterspear Vale",
		taxioperator = "blackcat",
		neighbors = {
			[-1] = 115, -- Lor'danel
		},
	},
	{
		tag = "005:005",
		nodeID = -5,
		name = "Bashal'Aran",
		taxioperator = "blackcat",
		neighbors = {
			[-2] = 53, -- Lor'danel
		},
	},
	{
		tag = "205:745",
		nodeID = 94,
		name = "The Exodar",
		neighbors = {
			[26] = 0, -- Lor'danel, Darkshore
			[27] = 101, -- Rut'theran Village, Teldrassil
			[93] = 89, -- Blood Watch, Bloodmyst Isle
			[624] = 40, -- Azure Watch, Azuremyst Isle
		},
	},
	{
		tag = "218:824",
		nodeID = 93,
		name = "Blood Watch, Bloodmyst Isle",
		neighbors = {
			[94] = 101, -- The Exodar
		},
	},
	{
		tag = "242:734",
		nodeID = 624,
		name = "Azure Watch, Azuremyst Isle",
		neighbors = {
			[94] = 41, -- The Exodar
		},
	},
	{
		tag = "316:415",
		nodeID = 38,
		name = "Shadowprey Village, Desolace",
		neighbors = {
			[22] = 178, -- Thunder Bluff, Mulgore
			[29] = 199, -- Sun Rock Retreat, Stonetalon Mountains
			[42] = 196, -- Camp Mojache, Feralas
			[363] = 172, -- Malaka'jin, Stonetalon Mountains
			[366] = 77, -- Furien's Post, Desolace
			[368] = 83, -- Karnum's Glade, Desolace
			[370] = 91, -- Ethel Rethor, Desolace
			[568] = 71, -- Camp Ataya, Feralas
		},
	},
	{
		tag = "342:897",
		nodeID = 457,
		name = "Darnassus, Teldrassil",
		neighbors = {
			[27] = 109, -- Rut'theran Village, Teldrassil
			[456] = 62, -- Dolanaar, Teldrassil
		},
	},
	{
		tag = "344:418",
		nodeID = 367,
		name = "Thargad's Camp, Desolace",
		neighbors = {
			[33] = 158, -- Thal'darah Overlook, Stonetalon Mountains
			[37] = 102, -- Nijel's Point, Desolace
			[41] = 126, -- Feathermoon, Feralas
			[368] = 56, -- Karnum's Glade, Desolace
			[370] = 63, -- Ethel Rethor, Desolace
			[565] = 54, -- Dreamer's Rest, Feralas
		},
	},
	{
		tag = "345:361",
		nodeID = 568,
		name = "Camp Ataya, Feralas",
		neighbors = {
			[38] = 68, -- Shadowprey Village, Desolace
			[569] = 78, -- Stonemaul Hold, Feralas
		},
	},
	{
		tag = "348:473",
		nodeID = 370,
		name = "Ethel Rethor, Desolace",
		neighbors = {
			[37] = 66, -- Nijel's Point, Desolace
			[38] = 80, -- Shadowprey Village, Desolace
			[366] = 17, -- Furien's Post, Desolace
			[367] = 52, -- Thargad's Camp, Desolace
			[368] = 39, -- Karnum's Glade, Desolace
			[369] = 52, -- Thunk's Abode, Desolace
		},
	},
	{
		tag = "358:469",
		nodeID = 366,
		name = "Furien's Post, Desolace",
		neighbors = {
			[29] = 107, -- Sun Rock Retreat, Stonetalon Mountains
			[38] = 68, -- Shadowprey Village, Desolace
			[42] = 249, -- Camp Mojache, Feralas
			[368] = 38, -- Karnum's Glade, Desolace
			[370] = 10, -- Ethel Rethor, Desolace
		},
	},
	{
		tag = "360:304",
		nodeID = 41,
		name = "Feathermoon, Feralas",
		neighbors = {
			[26] = 495, -- Lor'danel, Darkshore
			[31] = 92, -- Shadebough, Feralas
			[37] = 227, -- Nijel's Point, Desolace
			[73] = 118, -- Cenarion Hold, Silithus
			[365] = 204, -- Farwatcher's Glen, Stonetalon Mountains
			[367] = 147, -- Thargad's Camp, Desolace
			[565] = 55, -- Dreamer's Rest, Feralas
			[567] = 31, -- Tower of Estulan, Feralas
		},
	},
	{
		tag = "367:527",
		nodeID = 365,
		name = "Farwatcher's Glen, Stonetalon Mountains",
		neighbors = {
			[33] = 53, -- Thal'darah Overlook, Stonetalon Mountains
			[37] = 63, -- Nijel's Point, Desolace
			[41] = 219, -- Feathermoon, Feralas
			[361] = 76, -- Windshear Hold, Stonetalon Mountains
			[364] = 115, -- Northwatch Expedition Base Camp, Stonetalon Mountains
			[541] = 44, -- Mirkfallon Post, Stonetalon Mountains
		},
	},
	{
		tag = "370:358",
		nodeID = 565,
		name = "Dreamer's Rest, Feralas",
		neighbors = {
			[41] = 56, -- Feathermoon, Feralas
			[367] = 68, -- Thargad's Camp, Desolace
		},
	},
	{
		tag = "372:298",
		nodeID = 569,
		name = "Stonemaul Hold, Feralas",
		neighbors = {
			[42] = 70, -- Camp Mojache, Feralas
			[72] = 106, -- Cenarion Hold, Silithus
			[568] = 66, -- Camp Ataya, Feralas
		},
	},
	{
		tag = "383:445",
		nodeID = 368,
		name = "Karnum's Glade, Desolace",
		neighbors = {
			[29] = 91, -- Sun Rock Retreat, Stonetalon Mountains
			[33] = 121, -- Thal'darah Overlook, Stonetalon Mountains
			[37] = 56, -- Nijel's Point, Desolace
			[38] = 83, -- Shadowprey Village, Desolace
			[366] = 39, -- Furien's Post, Desolace
			[367] = 49, -- Thargad's Camp, Desolace
			[369] = 29, -- Thunk's Abode, Desolace
			[370] = 40, -- Ethel Rethor, Desolace
		},
	},
	{
		tag = "387:575",
		nodeID = 33,
		name = "Thal'darah Overlook, Stonetalon Mountains",
		neighbors = {
			[26] = 253, -- Lor'danel, Darkshore
			[28] = 171, -- Astranaar, Ashenvale
			[37] = 109, -- Nijel's Point, Desolace
			[338] = 127, -- Blackfathom Camp, Ashenvale
			[339] = 168, -- Grove of the Ancients, Darkshore
			[351] = 87, -- Stardust Spire, Ashenvale
			[361] = 83, -- Windshear Hold, Stonetalon Mountains
			[364] = 101, -- Northwatch Expedition Base Camp, Stonetalon Mountains
			[365] = 63, -- Farwatcher's Glen, Stonetalon Mountains
			[367] = 143, -- Thargad's Camp, Desolace
			[368] = 121, -- Karnum's Glade, Desolace
			[541] = 41, -- Mirkfallon Post, Stonetalon Mountains
		},
	},
	{
		tag = "389:287",
		nodeID = 567,
		name = "Tower of Estulan, Feralas",
		neighbors = {
			[31] = 61, -- Shadebough, Feralas
			[41] = 34, -- Feathermoon, Feralas
		},
	},
	{
		tag = "396:493",
		nodeID = 37,
		name = "Nijel's Point, Desolace",
		neighbors = {
			[26] = 337, -- Lor'danel, Darkshore
			[32] = 308, -- Theramore, Dustwallow Marsh
			[33] = 101, -- Thal'darah Overlook, Stonetalon Mountains
			[41] = 232, -- Feathermoon, Feralas
			[351] = 105, -- Stardust Spire, Ashenvale
			[361] = 73, -- Windshear Hold, Stonetalon Mountains
			[364] = 81, -- Northwatch Expedition Base Camp, Stonetalon Mountains
			[365] = 52, -- Farwatcher's Glen, Stonetalon Mountains
			[367] = 81, -- Thargad's Camp, Desolace
			[368] = 50, -- Karnum's Glade, Desolace
			[369] = 31, -- Thunk's Abode, Desolace
			[370] = 49, -- Ethel Rethor, Desolace
		},
	},
	{
		tag = "399:577",
		nodeID = 360,
		name = "Cliffwalker Post, Stonetalon Mountains",
		neighbors = {
			[29] = 43, -- Sun Rock Retreat, Stonetalon Mountains
			[58] = 50, -- Zoram'gar Outpost, Ashenvale
			[350] = 62, -- Hellscream's Watch, Ashenvale
			[362] = 44, -- Krom'gar Fortress, Stonetalon Mountains
			[363] = 63, -- Malaka'jin, Stonetalon Mountains
			[540] = 21, -- The Sludgewerks, Stonetalon Mountains
		},
	},
	{
		tag = "407:047",
		nodeID = 674,
		name = "Schnottz's Landing, Uldum",
		neighbors = {
			[652] = 89, -- Ramkahen, Uldum
			[653] = 88, -- Oasis of Vir'sar, Uldum
		},
	},
	{
		tag = "407:465",
		nodeID = 369,
		name = "Thunk's Abode, Desolace",
		neighbors = {
			[22] = 46, -- Thunder Bluff, Mulgore
			[37] = 33, -- Nijel's Point, Desolace
			[368] = 56, -- Karnum's Glade, Desolace
			[370] = 63, -- Ethel Rethor, Desolace
		},
	},
	{
		tag = "407:527",
		nodeID = 29,
		name = "Sun Rock Retreat, Stonetalon Mountains",
		neighbors = {
			[22] = 175, -- Thunder Bluff, Mulgore
			[25] = 150, -- The Crossroads, Northern Barrens
			[38] = 143, -- Shadowprey Village, Desolace
			[58] = 121, -- Zoram'gar Outpost, Ashenvale
			[350] = 110, -- Hellscream's Watch, Ashenvale
			[360] = 49, -- Cliffwalker Post, Stonetalon Mountains
			[362] = 43, -- Krom'gar Fortress, Stonetalon Mountains
			[363] = 67, -- Malaka'jin, Stonetalon Mountains
			[366] = 102, -- Furien's Post, Desolace
			[368] = 108, -- Karnum's Glade, Desolace
			[540] = 42, -- The Sludgewerks, Stonetalon Mountains
		},
	},
	{
		tag = "407:625",
		nodeID = 58,
		name = "Zoram'gar Outpost, Ashenvale",
		neighbors = {
			[22] = 247, -- Thunder Bluff, Mulgore
			[25] = 235, -- The Crossroads, Northern Barrens
			[29] = 121, -- Sun Rock Retreat, Stonetalon Mountains
			[61] = 172, -- Splintertree Post, Ashenvale
			[166] = 122, -- Emerald Sanctuary, Felwood
			[350] = 82, -- Hellscream's Watch, Ashenvale
			[360] = 73, -- Cliffwalker Post, Stonetalon Mountains
		},
	},
	{
		tag = "408:544",
		nodeID = 541,
		name = "Mirkfallon Post, Stonetalon Mountains",
		neighbors = {
			[33] = 39, -- Thal'darah Overlook, Stonetalon Mountains
			[361] = 28, -- Windshear Hold, Stonetalon Mountains
			[365] = 53, -- Farwatcher's Glen, Stonetalon Mountains
		},
	},
	{
		tag = "410:832",
		nodeID = 27,
		name = "Rut'theran Village, Teldrassil",
		neighbors = {
			[26] = 61, -- Lor'danel, Darkshore
			[94] = 100, -- The Exodar
			[457] = 111, -- Darnassus, Teldrassil
		},
	},
	{
		tag = "410:893",
		nodeID = 456,
		name = "Dolanaar, Teldrassil",
		neighbors = {
			[457] = 61, -- Darnassus, Teldrassil
		},
	},
	{
		tag = "416:207",
		nodeID = 72,
		name = "Cenarion Hold, Silithus",
		faction = "H",
		neighbors = {
			[40] = 241, -- Gadgetzan, Tanaris
			[42] = 130, -- Camp Mojache, Feralas
			[79] = 120, -- Marshal's Stand, Un'Goro Crater
			[386] = 77, -- Mossy Pile, Un'Goro Crater
			[569] = 106, -- Stonemaul Hold, Feralas
			[653] = 64, -- Oasis of Vir'sar, Uldum
		},
	},
	{
		tag = "418:143",
		nodeID = 653,
		name = "Oasis of Vir'sar, Uldum",
		neighbors = {
			[72] = 108, -- Cenarion Hold, Silithus
			[73] = 102, -- Cenarion Hold, Silithus
			[652] = 122, -- Ramkahen, Uldum
			[674] = 128, -- Schnottz's Landing, Uldum
		},
	},
	{
		tag = "418:209",
		nodeID = 73,
		name = "Cenarion Hold, Silithus",
		faction = "A",
		neighbors = {
			[39] = 188, -- Gadgetzan, Tanaris
			[41] = 120, -- Feathermoon, Feralas
			[79] = 113, -- Marshal's Stand, Un'Goro Crater
			[386] = 72, -- Mossy Pile, Un'Goro Crater
			[653] = 65, -- Oasis of Vir'sar, Uldum
		},
	},
	{
		tag = "420:562",
		nodeID = 540,
		name = "The Sludgewerks, Stonetalon Mountains",
		neighbors = {
			[29] = 37, -- Sun Rock Retreat, Stonetalon Mountains
			[360] = 31, -- Cliffwalker Post, Stonetalon Mountains
			[362] = 44, -- Krom'gar Fortress, Stonetalon Mountains
		},
	},
	{
		tag = "423:647",
		nodeID = 338,
		name = "Blackfathom Camp, Ashenvale",
		neighbors = {
			[28] = 60, -- Astranaar, Ashenvale
			[33] = 137, -- Thal'darah Overlook, Stonetalon Mountains
			[166] = 110, -- Emerald Sanctuary, Felwood
			[339] = 69, -- Grove of the Ancients, Darkshore
		},
	},
	{
		tag = "432:539",
		nodeID = 361,
		name = "Windshear Hold, Stonetalon Mountains",
		neighbors = {
			[33] = 65, -- Thal'darah Overlook, Stonetalon Mountains
			[37] = 62, -- Nijel's Point, Desolace
			[351] = 57, -- Stardust Spire, Ashenvale
			[364] = 58, -- Northwatch Expedition Base Camp, Stonetalon Mountains
			[365] = 92, -- Farwatcher's Glen, Stonetalon Mountains
			[541] = 31, -- Mirkfallon Post, Stonetalon Mountains
		},
	},
	{
		tag = "442:306",
		nodeID = 42,
		name = "Camp Mojache, Feralas",
		neighbors = {
			[22] = 259, -- Thunder Bluff, Mulgore
			[25] = 264, -- The Crossroads, Northern Barrens
			[30] = 43, -- Westreach Summit, Thousand Needles
			[38] = 200, -- Shadowprey Village, Desolace
			[40] = 201, -- Gadgetzan, Tanaris
			[72] = 130, -- Cenarion Hold, Silithus
			[366] = 256, -- Furien's Post, Desolace
			[391] = 104, -- Desolation Hold, Southern Barrens
			[569] = 66, -- Stonemaul Hold, Feralas
		},
	},
	{
		tag = "444:691",
		nodeID = 339,
		name = "Grove of the Ancients, Darkshore",
		neighbors = {
			[26] = 92, -- Lor'danel, Darkshore
			[28] = 85, -- Astranaar, Ashenvale
			[33] = 162, -- Thal'darah Overlook, Stonetalon Mountains
			[65] = 136, -- Talonbranch Glade, Felwood
			[166] = 82, -- Emerald Sanctuary, Felwood
			[338] = 65, -- Blackfathom Camp, Ashenvale
			[595] = 58, -- Wildheart Point, Felwood
		},
	},
	{
		tag = "447:282",
		nodeID = 31,
		name = "Shadebough, Feralas",
		neighbors = {
			[32] = 207, -- Theramore, Dustwallow Marsh
			[39] = 215, -- Gadgetzan, Tanaris
			[41] = 84, -- Feathermoon, Feralas
			[179] = 134, -- Mudsprocket, Dustwallow Marsh
			[513] = 177, -- Fizzle & Pozzik's Speedbarge, Thousand Needles
			[567] = 60, -- Tower of Estulan, Feralas
		},
	},
	{
		tag = "449:438",
		nodeID = 22,
		name = "Thunder Bluff, Mulgore",
		neighbors = {
			[23] = 208, -- Orgrimmar, Durotar
			[25] = 103, -- The Crossroads, Northern Barrens
			[29] = 181, -- Sun Rock Retreat, Stonetalon Mountains
			[30] = 210, -- Westreach Summit, Thousand Needles
			[38] = 159, -- Shadowprey Village, Desolace
			[40] = 290, -- Gadgetzan, Tanaris
			[42] = 252, -- Camp Mojache, Feralas
			[44] = 316, -- Bilgewater Harbor, Azshara
			[55] = 238, -- Brackenwall Village, Dustwallow Marsh
			[58] = 264, -- Zoram'gar Outpost, Ashenvale
			[77] = 85, -- Vendetta Point, Southern Barrens
			[363] = 54, -- Malaka'jin, Stonetalon Mountains
			[369] = 66, -- Thunk's Abode, Desolace
			[390] = 66, -- Hunter's Hill, Southern Barrens
			[402] = 51, -- Bloodhoof Village, Mulgore
		},
	},
	{
		tag = "451:525",
		nodeID = 362,
		name = "Krom'gar Fortress, Stonetalon Mountains",
		neighbors = {
			[29] = 46, -- Sun Rock Retreat, Stonetalon Mountains
			[354] = 137, -- The Mor'Shan Ramparts, Ashenvale
			[356] = 77, -- Silverwind Refuge, Ashenvale
			[360] = 70, -- Cliffwalker Post, Stonetalon Mountains
			[363] = 68, -- Malaka'jin, Stonetalon Mountains
			[540] = 47, -- The Sludgewerks, Stonetalon Mountains
		},
	},
	{
		tag = "461:483",
		nodeID = 363,
		name = "Malaka'jin, Stonetalon Mountains",
		neighbors = {
			[22] = 47, -- Thunder Bluff, Mulgore
			[25] = 86, -- The Crossroads, Northern Barrens
			[29] = 74, -- Sun Rock Retreat, Stonetalon Mountains
			[38] = 164, -- Shadowprey Village, Desolace
			[360] = 111, -- Cliffwalker Post, Stonetalon Mountains
			[362] = 69, -- Krom'gar Fortress, Stonetalon Mountains
		},
	},
	{
		tag = "462:497",
		nodeID = 364,
		name = "Northwatch Expedition Base Camp, Stonetalon Mountains",
		neighbors = {
			[33] = 114, -- Thal'darah Overlook, Stonetalon Mountains
			[37] = 67, -- Nijel's Point, Desolace
			[351] = 83, -- Stardust Spire, Ashenvale
			[361] = 61, -- Windshear Hold, Stonetalon Mountains
			[365] = 121, -- Farwatcher's Glen, Stonetalon Mountains
			[387] = 51, -- Honor's Stand, Southern Barrens
		},
	},
	{
		tag = "462:603",
		nodeID = 28,
		name = "Astranaar, Ashenvale",
		neighbors = {
			[26] = 205, -- Lor'danel, Darkshore
			[32] = 388, -- Theramore, Dustwallow Marsh
			[33] = 176, -- Thal'darah Overlook, Stonetalon Mountains
			[80] = 193, -- Ratchet, Northern Barrens
			[166] = 78, -- Emerald Sanctuary, Felwood
			[167] = 135, -- Forest Song, Ashenvale
			[338] = 52, -- Blackfathom Camp, Ashenvale
			[339] = 88, -- Grove of the Ancients, Darkshore
			[351] = 43, -- Stardust Spire, Ashenvale
		},
	},
	{
		tag = "463:565",
		nodeID = 351,
		name = "Stardust Spire, Ashenvale",
		neighbors = {
			[28] = 39, -- Astranaar, Ashenvale
			[33] = 95, -- Thal'darah Overlook, Stonetalon Mountains
			[37] = 94, -- Nijel's Point, Desolace
			[361] = 64, -- Windshear Hold, Stonetalon Mountains
			[364] = 65, -- Northwatch Expedition Base Camp, Stonetalon Mountains
			[387] = 103, -- Honor's Stand, Southern Barrens
		},
	},
	{
		tag = "464:794",
		nodeID = 26,
		name = "Lor'danel, Darkshore",
		neighbors = {
			[27] = 61, -- Rut'theran Village, Teldrassil
			[28] = 225, -- Astranaar, Ashenvale
			[32] = 502, -- Theramore, Dustwallow Marsh
			[33] = 267, -- Thal'darah Overlook, Stonetalon Mountains
			[37] = 348, -- Nijel's Point, Desolace
			[41] = 495, -- Feathermoon, Feralas
			[49] = 92, -- Moonglade
			[65] = 96, -- Talonbranch Glade, Felwood
			[94] = 0, -- The Exodar
			[339] = 93, -- Grove of the Ancients, Darkshore
		},
	},
	{
		tag = "466:393",
		nodeID = 402,
		name = "Bloodhoof Village, Mulgore",
		neighbors = {
			[22] = 50, -- Thunder Bluff, Mulgore
		},
	},
	{
		tag = "471:612",
		nodeID = 350,
		name = "Hellscream's Watch, Ashenvale",
		neighbors = {
			[29] = 113, -- Sun Rock Retreat, Stonetalon Mountains
			[58] = 60, -- Zoram'gar Outpost, Ashenvale
			[61] = 106, -- Splintertree Post, Ashenvale
			[166] = 91, -- Emerald Sanctuary, Felwood
			[354] = 120, -- The Mor'Shan Ramparts, Ashenvale
			[356] = 47, -- Silverwind Refuge, Ashenvale
			[360] = 85, -- Cliffwalker Post, Stonetalon Mountains
		},
	},
	{
		tag = "485:737",
		nodeID = 594,
		name = "Whisperwind Grove, Felwood",
		neighbors = {
			[65] = 59, -- Talonbranch Glade, Felwood
			[166] = 90, -- Emerald Sanctuary, Felwood
			[595] = 60, -- Wildheart Point, Felwood
			[597] = 41, -- Irontree Clearing, Felwood
		},
	},
	{
		tag = "487:682",
		nodeID = 595,
		name = "Wildheart Point, Felwood",
		neighbors = {
			[166] = 35, -- Emerald Sanctuary, Felwood
			[339] = 52, -- Grove of the Ancients, Darkshore
			[594] = 68, -- Whisperwind Grove, Felwood
		},
	},
	{
		tag = "488:310",
		nodeID = 30,
		name = "Westreach Summit, Thousand Needles",
		neighbors = {
			[22] = 215, -- Thunder Bluff, Mulgore
			[25] = 186, -- The Crossroads, Northern Barrens
			[40] = 153, -- Gadgetzan, Tanaris
			[42] = 50, -- Camp Mojache, Feralas
			[55] = 97, -- Brackenwall Village, Dustwallow Marsh
			[77] = 122, -- Vendetta Point, Southern Barrens
			[179] = 83, -- Mudsprocket, Dustwallow Marsh
			[391] = 100, -- Desolation Hold, Southern Barrens
			[513] = 118, -- Fizzle & Pozzik's Speedbarge, Thousand Needles
		},
	},
	{
		tag = "493:100",
		nodeID = 652,
		name = "Ramkahen, Uldum",
		neighbors = {
			[531] = 68, -- Dawnrise Expedition, Tanaris
			[532] = 80, -- Gunstan's Dig, Tanaris
			[653] = 83, -- Oasis of Vir'sar, Uldum
			[674] = 94, -- Schnottz's Landing, Uldum
		},
	},
	{
		tag = "495:201",
		nodeID = 386,
		name = "Mossy Pile, Un'Goro Crater",
		neighbors = {
			[39] = 97, -- Gadgetzan, Tanaris
			[40] = 98, -- Gadgetzan, Tanaris
			[72] = 84, -- Cenarion Hold, Silithus
			[73] = 83, -- Cenarion Hold, Silithus
			[79] = 29, -- Marshal's Stand, Un'Goro Crater
		},
	},
	{
		tag = "497:576",
		nodeID = 356,
		name = "Silverwind Refuge, Ashenvale",
		neighbors = {
			[61] = 64, -- Splintertree Post, Ashenvale
			[350] = 43, -- Hellscream's Watch, Ashenvale
			[354] = 70, -- The Mor'Shan Ramparts, Ashenvale
			[362] = 77, -- Krom'gar Fortress, Stonetalon Mountains
		},
	},
	{
		tag = "505:650",
		nodeID = 166,
		name = "Emerald Sanctuary, Felwood",
		neighbors = {
			[28] = 80, -- Astranaar, Ashenvale
			[58] = 114, -- Zoram'gar Outpost, Ashenvale
			[61] = 83, -- Splintertree Post, Ashenvale
			[65] = 128, -- Talonbranch Glade, Felwood
			[167] = 103, -- Forest Song, Ashenvale
			[338] = 96, -- Blackfathom Camp, Ashenvale
			[339] = 77, -- Grove of the Ancients, Darkshore
			[350] = 70, -- Hellscream's Watch, Ashenvale
			[594] = 97, -- Whisperwind Grove, Felwood
			[595] = 43, -- Wildheart Point, Felwood
		},
	},
	{
		tag = "513:473",
		nodeID = 387,
		name = "Honor's Stand, Southern Barrens",
		neighbors = {
			[80] = 85, -- Ratchet, Northern Barrens
			[351] = 112, -- Stardust Spire, Ashenvale
			[364] = 58, -- Northwatch Expedition Base Camp, Stonetalon Mountains
			[388] = 100, -- Northwatch Hold, Southern Barrens
			[389] = 103, -- Fort Triumph, Southern Barrens
		},
	},
	{
		tag = "514:177",
		nodeID = 79,
		name = "Marshal's Stand, Un'Goro Crater",
		neighbors = {
			[39] = 91, -- Gadgetzan, Tanaris
			[40] = 93, -- Gadgetzan, Tanaris
			[72] = 126, -- Cenarion Hold, Silithus
			[73] = 121, -- Cenarion Hold, Silithus
			[386] = 38, -- Mossy Pile, Un'Goro Crater
		},
	},
	{
		tag = "516:454",
		nodeID = 390,
		name = "Hunter's Hill, Southern Barrens",
		neighbors = {
			[22] = 66, -- Thunder Bluff, Mulgore
			[25] = 43, -- The Crossroads, Northern Barrens
			[77] = 49, -- Vendetta Point, Southern Barrens
			[391] = 93, -- Desolation Hold, Southern Barrens
		},
	},
	{
		tag = "517:770",
		nodeID = 597,
		name = "Irontree Clearing, Felwood",
		neighbors = {
			[53] = 123, -- Everlook, Winterspring
			[69] = 76, -- Moonglade
			[594] = 41, -- Whisperwind Grove, Felwood
		},
	},
	{
		tag = "520:352",
		nodeID = 391,
		name = "Desolation Hold, Southern Barrens",
		neighbors = {
			[30] = 101, -- Westreach Summit, Thousand Needles
			[42] = 97, -- Camp Mojache, Feralas
			[55] = 47, -- Brackenwall Village, Dustwallow Marsh
			[77] = 48, -- Vendetta Point, Southern Barrens
			[179] = 76, -- Mudsprocket, Dustwallow Marsh
			[390] = 98, -- Hunter's Hill, Southern Barrens
		},
	},
	{
		tag = "521:399",
		nodeID = 77,
		name = "Vendetta Point, Southern Barrens",
		neighbors = {
			[22] = 117, -- Thunder Bluff, Mulgore
			[25] = 77, -- The Crossroads, Northern Barrens
			[30] = 128, -- Westreach Summit, Thousand Needles
			[55] = 62, -- Brackenwall Village, Dustwallow Marsh
			[390] = 56, -- Hunter's Hill, Southern Barrens
			[391] = 45, -- Desolation Hold, Southern Barrens
		},
	},
	{
		tag = "523:699",
		nodeID = 558,
		name = "Grove of Aessina, Hyjal",
		neighbors = {
			[557] = 45, -- Shrine of Aviana, Hyjal
			[559] = 81, -- Nordrassil, Hyjal
		},
	},
	{
		tag = "527:742",
		nodeID = 65,
		name = "Talonbranch Glade, Felwood",
		neighbors = {
			[26] = 115, -- Lor'danel, Darkshore
			[49] = 67, -- Moonglade
			[52] = 107, -- Everlook, Winterspring
			[166] = 129, -- Emerald Sanctuary, Felwood
			[339] = 121, -- Grove of the Ancients, Darkshore
			[594] = 51, -- Whisperwind Grove, Felwood
		},
	},
	{
		tag = "537:668",
		nodeID = 781,
		name = "Sanctuary of Malorne, Hyjal",
		neighbors = {
			[557] = 31, -- Shrine of Aviana, Hyjal
		},
	},
	{
		tag = "537:794",
		nodeID = 69,
		name = "Moonglade",
		faction = "H",
		neighbors = {
			[53] = 141, -- Everlook, Winterspring
			[559] = 135, -- Nordrassil, Hyjal
			[597] = 73, -- Irontree Clearing, Felwood
		},
	},
	{
		tag = "541:537",
		nodeID = 354,
		name = "The Mor'Shan Ramparts, Ashenvale",
		neighbors = {
			[23] = 102, -- Orgrimmar, Durotar
			[25] = 65, -- The Crossroads, Northern Barrens
			[61] = 46, -- Splintertree Post, Ashenvale
			[350] = 93, -- Hellscream's Watch, Ashenvale
			[356] = 70, -- Silverwind Refuge, Ashenvale
			[362] = 143, -- Krom'gar Fortress, Stonetalon Mountains
			[458] = 58, -- Nozzlepot's Outpost, Northern Barrens
		},
	},
	{
		tag = "544:358",
		nodeID = 389,
		name = "Fort Triumph, Southern Barrens",
		neighbors = {
			[179] = 66, -- Mudsprocket, Dustwallow Marsh
			[387] = 103, -- Honor's Stand, Southern Barrens
			[388] = 76, -- Northwatch Hold, Southern Barrens
		},
	},
	{
		tag = "549:807",
		nodeID = -7,
		name = "Nighthaven",
		faction = "H",
		comment = "no ', Moonglade' because it screws up matching",
		neighbors = {
			[22] = 400, -- Thunder Bluff, Mulgore
		},
	},
	{
		tag = "549:808",
		nodeID = -8,
		name = "Nighthaven",
		faction = "A",
		comment = "no ', Moonglade' because it screws up matching",
		neighbors = {
			[27] = 151, -- Rut'theran Village, Teldrassil
		},
	},
	{
		tag = "552:097",
		nodeID = 531,
		name = "Dawnrise Expedition, Tanaris",
		neighbors = {
			[40] = 94, -- Gadgetzan, Tanaris
			[539] = 62, -- Bootlegger Outpost, Tanaris
			[652] = 72, -- Ramkahen, Uldum
		},
	},
	{
		tag = "552:794",
		nodeID = 49,
		name = "Moonglade",
		faction = "A",
		neighbors = {
			[26] = 86, -- Lor'danel, Darkshore
			[52] = 119, -- Everlook, Winterspring
			[65] = 61, -- Talonbranch Glade, Felwood
			[559] = 140, -- Nordrassil, Hyjal
		},
	},
	{
		tag = "554:582",
		nodeID = 61,
		name = "Splintertree Post, Ashenvale",
		neighbors = {
			[23] = 96, -- Orgrimmar, Durotar
			[25] = 160, -- The Crossroads, Northern Barrens
			[44] = 158, -- Bilgewater Harbor, Azshara
			[58] = 167, -- Zoram'gar Outpost, Ashenvale
			[166] = 85, -- Emerald Sanctuary, Felwood
			[350] = 82, -- Hellscream's Watch, Ashenvale
			[354] = 54, -- The Mor'Shan Ramparts, Ashenvale
			[356] = 58, -- Silverwind Refuge, Ashenvale
			[683] = 71, -- Valormok, Azshara
		},
	},
	{
		tag = "557:469",
		nodeID = 25,
		name = "The Crossroads, Northern Barrens",
		neighbors = {
			[22] = 107, -- Thunder Bluff, Mulgore
			[23] = 117, -- Orgrimmar, Durotar
			[29] = 151, -- Sun Rock Retreat, Stonetalon Mountains
			[30] = 188, -- Westreach Summit, Thousand Needles
			[40] = 303, -- Gadgetzan, Tanaris
			[42] = 252, -- Camp Mojache, Feralas
			[44] = 228, -- Bilgewater Harbor, Azshara
			[55] = 163, -- Brackenwall Village, Dustwallow Marsh
			[58] = 231, -- Zoram'gar Outpost, Ashenvale
			[61] = 162, -- Splintertree Post, Ashenvale
			[77] = 70, -- Vendetta Point, Southern Barrens
			[80] = 52, -- Ratchet, Northern Barrens
			[354] = 63, -- The Mor'Shan Ramparts, Ashenvale
			[363] = 115, -- Malaka'jin, Stonetalon Mountains
			[390] = 49, -- Hunter's Hill, Southern Barrens
			[458] = 67, -- Nozzlepot's Outpost, Northern Barrens
		},
	},
	{
		tag = "560:692",
		nodeID = 557,
		name = "Shrine of Aviana, Hyjal",
		neighbors = {
			[558] = 37, -- Grove of Aessina, Hyjal
			[559] = 46, -- Nordrassil, Hyjal
			[616] = 61, -- Gates of Sothann, Hyjal
			[781] = 65, -- Sanctuary of Malorne, Hyjal
		},
	},
	{
		tag = "567:358",
		nodeID = 55,
		name = "Brackenwall Village, Dustwallow Marsh",
		neighbors = {
			[22] = 224, -- Thunder Bluff, Mulgore
			[23] = 217, -- Orgrimmar, Durotar
			[25] = 162, -- The Crossroads, Northern Barrens
			[30] = 111, -- Westreach Summit, Thousand Needles
			[40] = 205, -- Gadgetzan, Tanaris
			[77] = 60, -- Vendetta Point, Southern Barrens
			[80] = 90, -- Ratchet, Northern Barrens
			[179] = 62, -- Mudsprocket, Dustwallow Marsh
			[391] = 56, -- Desolation Hold, Southern Barrens
		},
	},
	{
		tag = "572:097",
		nodeID = 532,
		name = "Gunstan's Dig, Tanaris",
		neighbors = {
			[39] = 87, -- Gadgetzan, Tanaris
			[539] = 50, -- Bootlegger Outpost, Tanaris
			[652] = 86, -- Ramkahen, Uldum
		},
	},
	{
		tag = "582:610",
		nodeID = 167,
		name = "Forest Song, Ashenvale",
		neighbors = {
			[28] = 142, -- Astranaar, Ashenvale
			[166] = 110, -- Emerald Sanctuary, Felwood
			[616] = 82, -- Gates of Sothann, Hyjal
		},
	},
	{
		tag = "583:300",
		nodeID = 179,
		name = "Mudsprocket, Dustwallow Marsh",
		neighbors = {
			[30] = 100, -- Westreach Summit, Thousand Needles
			[31] = 144, -- Shadebough, Feralas
			[32] = 53, -- Theramore, Dustwallow Marsh
			[55] = 63, -- Brackenwall Village, Dustwallow Marsh
			[389] = 66, -- Fort Triumph, Southern Barrens
			[391] = 88, -- Desolation Hold, Southern Barrens
			[513] = 60, -- Fizzle & Pozzik's Speedbarge, Thousand Needles
		},
	},
	{
		tag = "589:535",
		nodeID = 458,
		name = "Nozzlepot's Outpost, Northern Barrens",
		neighbors = {
			[23] = 0, -- Orgrimmar, Durotar
			[25] = 65, -- The Crossroads, Northern Barrens
			[354] = 58, -- The Mor'Shan Ramparts, Ashenvale
		},
	},
	{
		tag = "597:400",
		nodeID = 388,
		name = "Northwatch Hold, Southern Barrens",
		neighbors = {
			[32] = 73, -- Theramore, Dustwallow Marsh
			[80] = 46, -- Ratchet, Northern Barrens
			[387] = 104, -- Honor's Stand, Southern Barrens
			[389] = 78, -- Fort Triumph, Southern Barrens
		},
	},
	{
		tag = "597:717",
		nodeID = 559,
		name = "Nordrassil, Hyjal",
		neighbors = {
			[49] = 116, -- Moonglade
			[52] = 128, -- Everlook, Winterspring
			[53] = 123, -- Everlook, Winterspring
			[69] = 132, -- Moonglade
			[557] = 47, -- Shrine of Aviana, Hyjal
			[558] = 77, -- Grove of Aessina, Hyjal
		},
	},
	{
		tag = "605:192",
		nodeID = 39,
		name = "Gadgetzan, Tanaris",
		faction = "A",
		neighbors = {
			[31] = 214, -- Shadebough, Feralas
			[32] = 154, -- Theramore, Dustwallow Marsh
			[73] = 198, -- Cenarion Hold, Silithus
			[79] = 96, -- Marshal's Stand, Un'Goro Crater
			[80] = 247, -- Ratchet, Northern Barrens
			[386] = 105, -- Mossy Pile, Un'Goro Crater
			[513] = 49, -- Fizzle & Pozzik's Speedbarge, Thousand Needles
			[532] = 89, -- Gunstan's Dig, Tanaris
			[539] = 54, -- Bootlegger Outpost, Tanaris
		},
	},
	{
		tag = "605:450",
		nodeID = 80,
		name = "Ratchet, Northern Barrens",
		neighbors = {
			[23] = 104, -- Orgrimmar, Durotar
			[25] = 68, -- The Crossroads, Northern Barrens
			[28] = 197, -- Astranaar, Ashenvale
			[32] = 105, -- Theramore, Dustwallow Marsh
			[39] = 245, -- Gadgetzan, Tanaris
			[40] = 241, -- Gadgetzan, Tanaris
			[55] = 101, -- Brackenwall Village, Dustwallow Marsh
			[387] = 90, -- Honor's Stand, Southern Barrens
			[388] = 55, -- Northwatch Hold, Southern Barrens
		},
	},
	{
		tag = "607:196",
		nodeID = 40,
		name = "Gadgetzan, Tanaris",
		faction = "H",
		neighbors = {
			[22] = 308, -- Thunder Bluff, Mulgore
			[23] = 350, -- Orgrimmar, Durotar
			[25] = 300, -- The Crossroads, Northern Barrens
			[30] = 167, -- Westreach Summit, Thousand Needles
			[42] = 199, -- Camp Mojache, Feralas
			[55] = 194, -- Brackenwall Village, Dustwallow Marsh
			[72] = 233, -- Cenarion Hold, Silithus
			[79] = 100, -- Marshal's Stand, Un'Goro Crater
			[80] = 243, -- Ratchet, Northern Barrens
			[386] = 102, -- Mossy Pile, Un'Goro Crater
			[513] = 50, -- Fizzle & Pozzik's Speedbarge, Thousand Needles
			[531] = 98, -- Dawnrise Expedition, Tanaris
			[539] = 57, -- Bootlegger Outpost, Tanaris
		},
	},
	{
		tag = "611:238",
		nodeID = 513,
		name = "Fizzle & Pozzik's Speedbarge, Thousand Needles",
		faction = "H",
		neighbors = {
			[30] = 132, -- Westreach Summit, Thousand Needles
			[40] = 39, -- Gadgetzan, Tanaris
			[179] = 72, -- Mudsprocket, Dustwallow Marsh
		},
	},
	{
		tag = "611:238",
		nodeID = 513,
		name = "Fizzle & Pozzik's Speedbarge, Thousand Needles",
		faction = "A",
		comment = "originally 611:238, moved this y coord by 1 to seperate horde and alliance",
		neighbors = {
			[31] = 180, -- Shadebough, Feralas
			[39] = 43, -- Gadgetzan, Tanaris
			[179] = 72, -- Mudsprocket, Dustwallow Marsh
		},
	},
	{
		tag = "613:654",
		nodeID = 616,
		name = "Gates of Sothann, Hyjal",
		neighbors = {
			[23] = 74, -- Orgrimmar, Durotar
			[167] = 42, -- Forest Song, Ashenvale
			[557] = 45, -- Shrine of Aviana, Hyjal
			[683] = 37, -- Valormok, Azshara
		},
	},
	{
		tag = "618:130",
		nodeID = 539,
		name = "Bootlegger Outpost, Tanaris",
		neighbors = {
			[39] = 60, -- Gadgetzan, Tanaris
			[40] = 61, -- Gadgetzan, Tanaris
			[531] = 64, -- Dawnrise Expedition, Tanaris
			[532] = 51, -- Gunstan's Dig, Tanaris
		},
	},
	{
		tag = "621:610",
		nodeID = 683,
		name = "Valormok, Azshara",
		neighbors = {
			[23] = 76, -- Orgrimmar, Durotar
			[44] = 86, -- Bilgewater Harbor, Azshara
			[61] = 80, -- Splintertree Post, Ashenvale
			[616] = 72, -- Gates of Sothann, Hyjal
		},
	},
	{
		tag = "629:561",
		nodeID = 23,
		name = "Orgrimmar, Durotar",
		neighbors = {
			[22] = 225, -- Thunder Bluff, Mulgore
			[25] = 108, -- The Crossroads, Northern Barrens
			[40] = 417, -- Gadgetzan, Tanaris
			[44] = 114, -- Bilgewater Harbor, Azshara
			[53] = 240, -- Everlook, Winterspring
			[55] = 228, -- Brackenwall Village, Dustwallow Marsh
			[61] = 93, -- Splintertree Post, Ashenvale
			[80] = 108, -- Ratchet, Northern Barrens
			[354] = 99, -- The Mor'Shan Ramparts, Ashenvale
			[458] = 0, -- Nozzlepot's Outpost, Northern Barrens
			[537] = 55, -- Razor Hill, Durotar
			[613] = 93, -- Southern Rocketway, Azshara
			[616] = 117, -- Gates of Sothann, Hyjal
			[683] = 82, -- Valormok, Azshara
		},
	},
	{
		tag = "636:330",
		nodeID = 32,
		name = "Theramore, Dustwallow Marsh",
		neighbors = {
			[26] = 500, -- Lor'danel, Darkshore
			[28] = 369, -- Astranaar, Ashenvale
			[31] = 201, -- Shadebough, Feralas
			[37] = 334, -- Nijel's Point, Desolace
			[39] = 157, -- Gadgetzan, Tanaris
			[80] = 116, -- Ratchet, Northern Barrens
			[179] = 63, -- Mudsprocket, Dustwallow Marsh
			[388] = 81, -- Northwatch Hold, Southern Barrens
		},
	},
	{
		tag = "640:767",
		nodeID = 53,
		name = "Everlook, Winterspring",
		faction = "H",
		neighbors = {
			[23] = 243, -- Orgrimmar, Durotar
			[44] = 148, -- Bilgewater Harbor, Azshara
			[69] = 134, -- Moonglade
			[559] = 126, -- Nordrassil, Hyjal
			[597] = 122, -- Irontree Clearing, Felwood
		},
	},
	{
		tag = "645:766",
		nodeID = 52,
		name = "Everlook, Winterspring",
		faction = "A",
		neighbors = {
			[49] = 110, -- Moonglade
			[65] = 107, -- Talonbranch Glade, Felwood
			[559] = 130, -- Nordrassil, Hyjal
		},
	},
	{
		tag = "646:498",
		nodeID = 537,
		name = "Razor Hill, Durotar",
		neighbors = {
			[23] = 60, -- Orgrimmar, Durotar
			[536] = 36, -- Sen'jin Village, Durotar
		},
	},
	{
		tag = "651:455",
		nodeID = 536,
		name = "Sen'jin Village, Durotar",
		neighbors = {
			[537] = 36, -- Razor Hill, Durotar
		},
	},
	{
		tag = "706:596",
		nodeID = 613,
		name = "Southern Rocketway, Azshara",
		neighbors = {
			[23] = 88, -- Orgrimmar, Durotar
			[44] = 39, -- Bilgewater Harbor, Azshara
		},
	},
	{
		tag = "709:633",
		nodeID = 44,
		name = "Bilgewater Harbor, Azshara",
		neighbors = {
			[22] = 304, -- Thunder Bluff, Mulgore
			[23] = 98, -- Orgrimmar, Durotar
			[25] = 234, -- The Crossroads, Northern Barrens
			[53] = 150, -- Everlook, Winterspring
			[61] = 149, -- Splintertree Post, Ashenvale
			[613] = 33, -- Southern Rocketway, Azshara
			[614] = 53, -- Northern Rocketway, Azshara
			[683] = 83, -- Valormok, Azshara
		},
	},
	{
		tag = "740:677",
		nodeID = 614,
		name = "Northern Rocketway, Azshara",
		neighbors = {
			[44] = 50, -- Bilgewater Harbor, Azshara
		},
	},
},
[13]={
	{
		tag = "560:165",
		nodeID = 1537,
		name = "Shattered Landing",
		neighbors = {
			[56] = 0, -- Stonard, Swamp of Sorrows
			[593] = 0, -- Bambala, Stranglethorn
		},
	},
	{
		tag = "409:266",
		nodeID = 2,
		name = "Stormwind, Elwynn",
		neighbors = {
			[4] = 78, -- Sentinel Hill, Westfall
			[5] = 113, -- Lakeshire, Redridge
			[6] = 216, -- Ironforge, Dun Morogh
			[12] = 117, -- Darkshire, Duskwood
			[19] = 199, -- Booty Bay, Stranglethorn
			[45] = 176, -- Nethergarde Keep, Blasted Lands
			[71] = 150, -- Morgan's Vigil, Burning Steppes
			[74] = 133, -- Thorium Point, Searing Gorge
			[195] = 93, -- Rebel Camp, Stranglethorn Vale
			[582] = 32, -- Goldshire, Elwynn
			[584] = 50, -- Furlbrow's Pumpkin Farm, Westfall
		},
	},
	{
		tag = "390:207",
		nodeID = 4,
		name = "Sentinel Hill, Westfall",
		neighbors = {
			[2] = 86, -- Stormwind, Elwynn
			[5] = 130, -- Lakeshire, Redridge
			[12] = 97, -- Darkshire, Duskwood
			[19] = 186, -- Booty Bay, Stranglethorn
			[195] = 62, -- Rebel Camp, Stranglethorn Vale
			[583] = 25, -- Moonbrook, Westfall
			[584] = 33, -- Furlbrow's Pumpkin Farm, Westfall
			[622] = 31, -- Raven Hill, Duskwood
		},
	},
	{
		tag = "503:246",
		nodeID = 5,
		name = "Lakeshire, Redridge",
		neighbors = {
			[2] = 113, -- Stormwind, Elwynn
			[4] = 134, -- Sentinel Hill, Westfall
			[12] = 61, -- Darkshire, Duskwood
			[71] = 61, -- Morgan's Vigil, Burning Steppes
			[589] = 39, -- Eastvale Logging Camp, Elwynn
			[600] = 47, -- The Harborage, Swamp of Sorrows
			[615] = 21, -- Camp Everstill, Redridge
		},
	},
	{
		tag = "466:406",
		nodeID = 6,
		name = "Ironforge, Dun Morogh",
		neighbors = {
			[2] = 211, -- Stormwind, Elwynn
			[7] = 115, -- Menethil Harbor, Wetlands
			[8] = 102, -- Thelsamar, Loch Modan
			[16] = 204, -- Refuge Pointe, Arathi
			[43] = 240, -- Aerie Peak, The Hinterlands
			[66] = 257, -- Chillwind Camp, Western Plaguelands
			[67] = 349, -- Light's Hope Chapel, Eastern Plaguelands
			[74] = 85, -- Thorium Point, Searing Gorge
			[213] = 675, -- Shattered Sun Staging Area
			[606] = 189, -- Sandy Beach, Vashj'ir
			[607] = 187, -- Sandy Beach, Vashj'ir
			[619] = 46, -- Kharanos, Dun Morogh
			[620] = 56, -- Gol'Bolar Quarry, Dun Morogh
			[658] = 228, -- Vermillion Redoubt, Twilight Highlands
		},
	},
	{
		tag = "453:442",
		nodeID = 7,
		name = "Menethil Harbor, Wetlands",
		neighbors = {
			[6] = 90, -- Ironforge, Dun Morogh
			[8] = 163, -- Thelsamar, Loch Modan
			[16] = 113, -- Refuge Pointe, Arathi
			[551] = 47, -- Whelgar's Retreat, Wetlands
		},
	},
	{
		tag = "527:385",
		nodeID = 8,
		name = "Thelsamar, Loch Modan",
		neighbors = {
			[6] = 110, -- Ironforge, Dun Morogh
			[7] = 152, -- Menethil Harbor, Wetlands
			[16] = 163, -- Refuge Pointe, Arathi
			[74] = 81, -- Thorium Point, Searing Gorge
			[554] = 60, -- Slabchisel's Survey, Wetlands
			[555] = 46, -- Farstrider Lodge, Loch Modan
			[620] = 54, -- Gol'Bolar Quarry, Dun Morogh
			[633] = 46, -- Dustwind Dig, Badlands
			[662] = 181, -- Highbank, Twilight Highlands
		},
	},
	{
		tag = "372:590",
		nodeID = 10,
		name = "The Sepulcher, Silverpine Forest",
		neighbors = {
			[11] = 122, -- Undercity, Tirisfal
			[13] = 97, -- Tarren Mill, Hillsbrad
			[645] = 54, --  Forsaken High Command, Silverpine Forest
			[654] = 25, -- The Forsaken Front, Silverpine Forest
			[681] = 51, -- Forsaken Rear Guard, Silverpine Forest
		},
	},
	{
		tag = "416:628",
		nodeID = 11,
		name = "Undercity, Tirisfal",
		neighbors = {
			[10] = 100, -- The Sepulcher, Silverpine Forest
			[13] = 145, -- Tarren Mill, Hillsbrad
			[17] = 301, -- Hammerfall, Arathi
			[21] = 476, -- New Kargath, Badlands
			[68] = 262, -- Light's Hope Chapel, Eastern Plaguelands
			[76] = 272, -- Revantusk Village, The Hinterlands
			[383] = 157, -- Thondroril River, Eastern Plaguelands
			[384] = 89, -- The Bulwark, Tirisfal
			[460] = 62, -- Brill, Tirisfal Glades
			[601] = 248, -- Galen's Fall, Arathi
			[608] = 345, -- Sandy Beach, Vashj'ir
			[645] = 67, --  Forsaken High Command, Silverpine Forest
		},
	},
	{
		tag = "469:208",
		nodeID = 12,
		name = "Darkshire, Duskwood",
		neighbors = {
			[2] = 88, -- Stormwind, Elwynn
			[4] = 93, -- Sentinel Hill, Westfall
			[5] = 60, -- Lakeshire, Redridge
			[19] = 171, -- Booty Bay, Stranglethorn
			[45] = 97, -- Nethergarde Keep, Blasted Lands
			[195] = 47, -- Rebel Camp, Stranglethorn Vale
			[582] = 68, -- Goldshire, Elwynn
			[622] = 63, -- Raven Hill, Duskwood
			[1538] = 0, -- Shattered Beachhead, Blasted Lands
		},
	},
	{
		tag = "456:573",
		nodeID = 13,
		name = "Tarren Mill, Hillsbrad",
		neighbors = {
			[10] = 104, -- The Sepulcher, Silverpine Forest
			[11] = 139, -- Undercity, Tirisfal
			[17] = 118, -- Hammerfall, Arathi
			[76] = 162, -- Revantusk Village, The Hinterlands
			[383] = 108, -- Thondroril River, Eastern Plaguelands
			[384] = 69, -- The Bulwark, Tirisfal
			[601] = 0, -- Galen's Fall, Arathi
			[617] = 104, -- Hiri'watha Research Station, The Hinterlands
			[667] = 30, -- Ruins of Southshore, Hillsbrad
			[669] = 25, -- Eastpoint Tower, Hillsbrad
			[670] = 28, -- Strahnbrad, Alterac Mountains
		},
	},
	{
		tag = "513:530",
		nodeID = 16,
		name = "Refuge Pointe, Arathi",
		neighbors = {
			[6] = 271, -- Ironforge, Dun Morogh
			[7] = 126, -- Menethil Harbor, Wetlands
			[8] = 170, -- Thelsamar, Loch Modan
			[43] = 72, -- Aerie Peak, The Hinterlands
			[553] = 59, -- Dun Modr, Wetlands
			[618] = 85, -- Stormfeather Outpost, The Hinterlands
			[658] = 146, -- Vermillion Redoubt, Twilight Highlands
		},
	},
	{
		tag = "547:542",
		nodeID = 17,
		name = "Hammerfall, Arathi",
		neighbors = {
			[11] = 259, -- Undercity, Tirisfal
			[13] = 117, -- Tarren Mill, Hillsbrad
			[21] = 249, -- New Kargath, Badlands
			[76] = 88, -- Revantusk Village, The Hinterlands
			[601] = 68, -- Galen's Fall, Arathi
			[617] = 53, -- Hiri'watha Research Station, The Hinterlands
			[658] = 167, -- Vermillion Redoubt, Twilight Highlands
			[661] = 251, -- Dragonmaw Port, Twilight Highlands
		},
	},
	{
		tag = "408:072",
		nodeID = 18,
		name = "Booty Bay, Stranglethorn",
		faction = "H",
		neighbors = {
			[20] = 76, -- Grom'gol, Stranglethorn
			[21] = 309, -- New Kargath, Badlands
			[56] = 238, -- Stonard, Swamp of Sorrows
			[592] = 41, -- Hardwrench Hideaway, Stranglethorn
			[603] = 170, -- Sunveil Excursion, Blasted Lands
		},
	},
	{
		tag = "409:071",
		nodeID = 19,
		name = "Booty Bay, Stranglethorn",
		faction = "A",
		neighbors = {
			[2] = 199, -- Stormwind, Elwynn
			[4] = 148, -- Sentinel Hill, Westfall
			[12] = 166, -- Darkshire, Duskwood
			[195] = 118, -- Rebel Camp, Stranglethorn Vale
			[591] = 50, -- Explorers' League Digsite, Stranglethorn
			[602] = 144, -- Surwich, Blasted Lands
		},
	},
	{
		tag = "420:142",
		nodeID = 20,
		name = "Grom'gol, Stranglethorn",
		neighbors = {
			[18] = 78, -- Booty Bay, Stranglethorn
			[21] = 243, -- New Kargath, Badlands
			[56] = 173, -- Stonard, Swamp of Sorrows
			[70] = 198, -- Flame Crest, Burning Steppes
			[592] = 39, -- Hardwrench Hideaway, Stranglethorn
			[593] = 57, -- Bambala, Stranglethorn
		},
	},
	{
		tag = "510:342",
		nodeID = 21,
		name = "New Kargath, Badlands",
		neighbors = {
			[11] = 470, -- Undercity, Tirisfal
			[17] = 252, -- Hammerfall, Arathi
			[18] = 301, -- Booty Bay, Stranglethorn
			[20] = 243, -- Grom'gol, Stranglethorn
			[56] = 228, -- Stonard, Swamp of Sorrows
			[70] = 73, -- Flame Crest, Burning Steppes
			[75] = 63, -- Thorium Point, Searing Gorge
			[632] = 45, -- Bloodwatcher Point, Badlands
			[635] = 57, -- Fuselight, Badlands
			[658] = 189, -- Vermillion Redoubt, Twilight Highlands
			[661] = 251, -- Dragonmaw Port, Twilight Highlands
		},
	},
	{
		tag = "495:583",
		nodeID = 43,
		name = "Aerie Peak, The Hinterlands",
		neighbors = {
			[6] = 256, -- Ironforge, Dun Morogh
			[16] = 75, -- Refuge Pointe, Arathi
			[66] = 57, -- Chillwind Camp, Western Plaguelands
			[67] = 164, -- Light's Hope Chapel, Eastern Plaguelands
			[618] = 80, -- Stormfeather Outpost, The Hinterlands
			[650] = 70, -- Andorhal, Western Plaguelands
		},
	},
	{
		tag = "545:188",
		nodeID = 45,
		name = "Nethergarde Keep, Blasted Lands",
		neighbors = {
			[2] = 189, -- Stormwind, Elwynn
			[12] = 92, -- Darkshire, Duskwood
			[71] = 209, -- Morgan's Vigil, Burning Steppes
			[598] = 39, -- Marshtide Watch, Swamp of Sorrows
			[602] = 92, -- Surwich, Blasted Lands
		},
	},
	{
		tag = "539:210",
		nodeID = 56,
		name = "Stonard, Swamp of Sorrows",
		neighbors = {
			[1537] = 0, -- Shattered Landing
			[18] = 230, -- Booty Bay, Stranglethorn
			[20] = 178, -- Grom'gol, Stranglethorn
			[21] = 228, -- New Kargath, Badlands
			[70] = 176, -- Flame Crest, Burning Steppes
			[599] = 45, -- Bogpaddle, Swamp of Sorrows
			[604] = 27, -- Dreadmaul Hold, Blasted Lands
		},
	},
	{
		tag = "475:606",
		nodeID = 66,
		name = "Chillwind Camp, Western Plaguelands",
		neighbors = {
			[6] = 260, -- Ironforge, Dun Morogh
			[43] = 65, -- Aerie Peak, The Hinterlands
			[67] = 146, -- Light's Hope Chapel, Eastern Plaguelands
			[383] = 59, -- Thondroril River, Eastern Plaguelands
			[650] = 18, -- Andorhal, Western Plaguelands
			[651] = 42, -- The Menders' Stead, Western Plaguelands
		},
	},
	{
		tag = "611:652",
		nodeID = 67,
		name = "Light's Hope Chapel, Eastern Plaguelands",
		faction = "A",
		neighbors = {
			[6] = 369, -- Ironforge, Dun Morogh
			[43] = 162, -- Aerie Peak, The Hinterlands
			[66] = 149, -- Chillwind Camp, Western Plaguelands
			[83] = 0, -- Tranquillien, Ghostlands
			[86] = 24, -- Eastwall Tower, Eastern Plaguelands
			[205] = 223, -- Zul'Aman, Ghostlands
			[213] = 0, -- Shattered Sun Staging Area
			[315] = 65, -- Acherus: The Ebon Hold
			[383] = 96, -- Thondroril River, Eastern Plaguelands
			[618] = 96, -- Stormfeather Outpost, The Hinterlands
			[630] = 35, -- Light's Shield Tower, Eastern Plaguelands
			[635] = 175, -- Fuselight, Badlands
		},
	},
	{
		tag = "611:652",
		nodeID = 68,
		name = "Light's Hope Chapel, Eastern Plaguelands",
		faction = "H",
		neighbors = {
			[11] = 261, -- Undercity, Tirisfal
			[76] = 144, -- Revantusk Village, The Hinterlands
			[83] = 123, -- Tranquillien, Ghostlands
			[86] = 24, -- Eastwall Tower, Eastern Plaguelands
			[205] = 223, -- Zul'Aman, Ghostlands
			[315] = 65, -- Acherus: The Ebon Hold
			[383] = 96, -- Thondroril River, Eastern Plaguelands
			[630] = 35, -- Light's Shield Tower, Eastern Plaguelands
			[635] = 175, -- Fuselight, Badlands
		},
	},
	{
		tag = "501:313",
		nodeID = 70,
		name = "Flame Crest, Burning Steppes",
		neighbors = {
			[20] = 206, -- Grom'gol, Stranglethorn
			[21] = 82, -- New Kargath, Badlands
			[56] = 192, -- Stonard, Swamp of Sorrows
			[75] = 61, -- Thorium Point, Searing Gorge
			[599] = 108, -- Bogpaddle, Swamp of Sorrows
			[676] = 17, -- Chiselgrip, Burning Steppes
		},
	},
	{
		tag = "521:283",
		nodeID = 71,
		name = "Morgan's Vigil, Burning Steppes",
		neighbors = {
			[2] = 151, -- Stormwind, Elwynn
			[5] = 63, -- Lakeshire, Redridge
			[45] = 197, -- Nethergarde Keep, Blasted Lands
			[74] = 91, -- Thorium Point, Searing Gorge
			[599] = 77, -- Bogpaddle, Swamp of Sorrows
			[634] = 55, -- Dragon's Mouth, Badlands
			[676] = 43, -- Chiselgrip, Burning Steppes
		},
	},
	{
		tag = "466:346",
		nodeID = 74,
		name = "Thorium Point, Searing Gorge",
		faction = "A",
		neighbors = {
			[2] = 126, -- Stormwind, Elwynn
			[6] = 89, -- Ironforge, Dun Morogh
			[8] = 88, -- Thelsamar, Loch Modan
			[71] = 90, -- Morgan's Vigil, Burning Steppes
			[673] = 25, -- Iron Summit, Searing Gorge
		},
	},
	{
		tag = "464:346",
		nodeID = 75,
		name = "Thorium Point, Searing Gorge",
		faction = "H",
		neighbors = {
			[21] = 67, -- New Kargath, Badlands
			[70] = 61, -- Flame Crest, Burning Steppes
			[673] = 24, -- Iron Summit, Searing Gorge
		},
	},
	{
		tag = "589:551",
		nodeID = 76,
		name = "Revantusk Village, The Hinterlands",
		neighbors = {
			[11] = 269, -- Undercity, Tirisfal
			[13] = 156, -- Tarren Mill, Hillsbrad
			[17] = 94, -- Hammerfall, Arathi
			[68] = 134, -- Light's Hope Chapel, Eastern Plaguelands
			[617] = 76, -- Hiri'watha Research Station, The Hinterlands
		},
	},
	{
		tag = "591:816",
		nodeID = 82,
		name = "Silvermoon City",
		neighbors = {
			[83] = 65, -- Tranquillien, Ghostlands
			[213] = 185, -- Shattered Sun Staging Area
			[625] = 31, -- Fairbreeze Village, Eversong Woods
			[631] = 24, -- Falconwing Square, Eversong Woods
		},
	},
	{
		tag = "578:754",
		nodeID = 83,
		name = "Tranquillien, Ghostlands",
		neighbors = {
			[68] = 128, -- Light's Hope Chapel, Eastern Plaguelands
			[82] = 74, -- Silvermoon City
			[205] = 53, -- Zul'Aman, Ghostlands
			[625] = 53, -- Fairbreeze Village, Eversong Woods
		},
	},
	{
		tag = "531:676",
		nodeID = 84,
		name = "Plaguewood Tower, Eastern Plaguelands",
		neighbors = {
			[85] = 57, -- Northpass Tower, Eastern Plaguelands
			[86] = 67, -- Eastwall Tower, Eastern Plaguelands
			[87] = 53, -- Crown Guard Tower, Eastern Plaguelands
			[630] = 61, -- Light's Shield Tower, Eastern Plaguelands
			[672] = 62, -- Hearthglen, Western Plaguelands
		},
	},
	{
		tag = "577:682",
		nodeID = 85,
		name = "Northpass Tower, Eastern Plaguelands",
		neighbors = {
			[84] = 50, -- Plaguewood Tower, Eastern Plaguelands
			[86] = 30, -- Eastwall Tower, Eastern Plaguelands
			[87] = 52, -- Crown Guard Tower, Eastern Plaguelands
		},
	},
	{
		tag = "591:661",
		nodeID = 86,
		name = "Eastwall Tower, Eastern Plaguelands",
		neighbors = {
			[67] = 30, -- Light's Hope Chapel, Eastern Plaguelands
			[68] = 30, -- Light's Hope Chapel, Eastern Plaguelands
			[84] = 66, -- Plaguewood Tower, Eastern Plaguelands
			[85] = 31, -- Northpass Tower, Eastern Plaguelands
			[630] = 18, -- Light's Shield Tower, Eastern Plaguelands
		},
	},
	{
		tag = "554:639",
		nodeID = 87,
		name = "Crown Guard Tower, Eastern Plaguelands",
		neighbors = {
			[84] = 53, -- Plaguewood Tower, Eastern Plaguelands
			[85] = 62, -- Northpass Tower, Eastern Plaguelands
			[383] = 39, -- Thondroril River, Eastern Plaguelands
			[630] = 35, -- Light's Shield Tower, Eastern Plaguelands
		},
	},
	{
		tag = "433:180",
		nodeID = 195,
		name = "Rebel Camp, Stranglethorn Vale",
		neighbors = {
			[2] = 98, -- Stormwind, Elwynn
			[4] = 66, -- Sentinel Hill, Westfall
			[12] = 48, -- Darkshire, Duskwood
			[19] = 116, -- Booty Bay, Stranglethorn
			[590] = 54, -- Fort Livingston, Stranglethorn
			[622] = 39, -- Raven Hill, Duskwood
		},
	},
	{
		tag = "611:726",
		nodeID = 205,
		name = "Zul'Aman, Ghostlands",
		neighbors = {
			[67] = 227, -- Light's Hope Chapel, Eastern Plaguelands
			[68] = 227, -- Light's Hope Chapel, Eastern Plaguelands
			[83] = 52, -- Tranquillien, Ghostlands
			[213] = 251, -- Shattered Sun Staging Area
		},
	},
	{
		tag = "582:942",
		nodeID = 213,
		name = "Shattered Sun Staging Area",
		neighbors = {
			[6] = 0, -- Ironforge, Dun Morogh
			[67] = 0, -- Light's Hope Chapel, Eastern Plaguelands
			[68] = 0, -- Light's Hope Chapel, Eastern Plaguelands
			[82] = 166, -- Silvermoon City
			[205] = 232, -- Zul'Aman, Ghostlands
		},
	},
	{
		tag = "622:344",
		nodeID = 315,
		name = "Acherus: The Ebon Hold",
		neighbors = {
			[67] = 10, -- Light's Hope Chapel, Eastern Plaguelands
			[68] = 10, -- Light's Hope Chapel, Eastern Plaguelands
		},
	},
	{
		tag = "519:641",
		nodeID = 383,
		name = "Thondroril River, Eastern Plaguelands",
		neighbors = {
			[11] = 161, -- Undercity, Tirisfal
			[13] = 100, -- Tarren Mill, Hillsbrad
			[66] = 58, -- Chillwind Camp, Western Plaguelands
			[68] = 101, -- Light's Hope Chapel, Eastern Plaguelands
			[87] = 45, -- Crown Guard Tower, Eastern Plaguelands
			[384] = 77, -- The Bulwark, Tirisfal
			[617] = 86, -- Hiri'watha Research Station, The Hinterlands
			[618] = 109, -- Stormfeather Outpost, The Hinterlands
			[651] = 39, -- The Menders' Stead, Western Plaguelands
		},
	},
	{
		tag = "451:633",
		nodeID = 384,
		name = "The Bulwark, Tirisfal",
		neighbors = {
			[11] = 89, -- Undercity, Tirisfal
			[13] = 74, -- Tarren Mill, Hillsbrad
			[383] = 73, -- Thondroril River, Eastern Plaguelands
			[460] = 48, -- Brill, Tirisfal Glades
			[649] = 35, -- Andorhal, Western Plaguelands
			[670] = 45, -- Strahnbrad, Alterac Mountains
		},
	},
	{
		tag = "413:652",
		nodeID = 460,
		name = "Brill, Tirisfal Glades",
		neighbors = {
			[11] = 59, -- Undercity, Tirisfal
			[384] = 45, -- The Bulwark, Tirisfal
			[645] = 45, --  Forsaken High Command, Silverpine Forest
		},
	},
	{
		tag = "305:414",
		nodeID = 521,
		name = "Smuggler's Scar, Vashj'ir",
		taxioperator = "seahorse",
		neighbors = {
			[522] = 84, -- Silver Tide Hollow, Vashj'ir
			[609] = 43, -- Sandy Beach, Vashj'ir
		},
	},
	{
		tag = "277:361",
		nodeID = 522,
		name = "Silver Tide Hollow, Vashj'ir",
		taxioperator = "seahorse",
		neighbors = {
			[521] = 72, -- Smuggler's Scar, Vashj'ir
			[523] = 44, -- Tranquil Wash, Vashj'ir
			[525] = 49, -- Legion's Rest, Vashj'ir
			[607] = 58, -- Sandy Beach, Vashj'ir
			[609] = 36, -- Sandy Beach, Vashj'ir
		},
	},
	{
		tag = "276:344",
		nodeID = 523,
		name = "Tranquil Wash, Vashj'ir",
		taxioperator = "seahorse",
		neighbors = {
			[522] = 44, -- Silver Tide Hollow, Vashj'ir
			[524] = 69, -- Darkbreak Cove, Vashj'ir
			[611] = 60, -- Voldrin's Hold, Vashj'ir
		},
	},
	{
		tag = "219:334",
		nodeID = 524,
		name = "Darkbreak Cove, Vashj'ir",
		taxioperator = "seahorse",
		neighbors = {
			[523] = 63, -- Tranquil Wash, Vashj'ir
			[611] = 80, -- Voldrin's Hold, Vashj'ir
		},
	},
	{
		tag = "280:337",
		nodeID = 525,
		name = "Legion's Rest, Vashj'ir",
		taxioperator = "seahorse",
		neighbors = {
			[522] = 50, -- Silver Tide Hollow, Vashj'ir
			[526] = 72, -- Tenebrous Cavern, Vashj'ir
			[612] = 28, -- Stygian Bounty, Vashj'ir seahorse
		},
	},
	{
		tag = "215:347",
		nodeID = 526,
		name = "Tenebrous Cavern, Vashj'ir",
		taxioperator = "seahorse",
		neighbors = {
			[525] = 78, -- Legion's Rest, Vashj'ir
			[612] = 73, -- Stygian Bounty, Vashj'ir seahorse
		},
	},
	{
		tag = "495:462",
		nodeID = 551,
		name = "Whelgar's Retreat, Wetlands",
		neighbors = {
			[7] = 53, -- Menethil Harbor, Wetlands
			[552] = 30, -- Greenwarden's Grove, Wetlands
			[553] = 29, -- Dun Modr, Wetlands
		},
	},
	{
		tag = "520:459",
		nodeID = 552,
		name = "Greenwarden's Grove, Wetlands",
		neighbors = {
			[551] = 26, -- Whelgar's Retreat, Wetlands
			[553] = 28, -- Dun Modr, Wetlands
			[554] = 33, -- Slabchisel's Survey, Wetlands
			[658] = 68, -- Vermillion Redoubt, Twilight Highlands
		},
	},
	{
		tag = "511:481",
		nodeID = 553,
		name = "Dun Modr, Wetlands",
		neighbors = {
			[16] = 52, -- Refuge Pointe, Arathi
			[551] = 33, -- Whelgar's Retreat, Wetlands
			[552] = 36, -- Greenwarden's Grove, Wetlands
		},
	},
	{
		tag = "521:431",
		nodeID = 554,
		name = "Slabchisel's Survey, Wetlands",
		neighbors = {
			[8] = 60, -- Thelsamar, Loch Modan
			[552] = 33, -- Greenwarden's Grove, Wetlands
		},
	},
	{
		tag = "573:377",
		nodeID = 555,
		name = "Farstrider Lodge, Loch Modan",
		neighbors = {
			[8] = 46, -- Thelsamar, Loch Modan
			[635] = 47, -- Fuselight, Badlands
		},
	},
	{
		tag = "423:246",
		nodeID = 582,
		name = "Goldshire, Elwynn",
		neighbors = {
			[2] = 26, -- Stormwind, Elwynn
			[12] = 68, -- Darkshire, Duskwood
			[589] = 57, -- Eastvale Logging Camp, Elwynn
		},
	},
	{
		tag = "372:196",
		nodeID = 583,
		name = "Moonbrook, Westfall",
		neighbors = {
			[4] = 27, -- Sentinel Hill, Westfall
		},
	},
	{
		tag = "381:232",
		nodeID = 584,
		name = "Furlbrow's Pumpkin Farm, Westfall",
		neighbors = {
			[2] = 59, -- Stormwind, Elwynn
			[4] = 28, -- Sentinel Hill, Westfall
		},
	},
	{
		tag = "471:244",
		nodeID = 589,
		name = "Eastvale Logging Camp, Elwynn",
		neighbors = {
			[5] = 41, -- Lakeshire, Redridge
			[582] = 53, -- Goldshire, Elwynn
		},
	},
	{
		tag = "440:128",
		nodeID = 590,
		name = "Fort Livingston, Stranglethorn",
		neighbors = {
			[195] = 55, -- Rebel Camp, Stranglethorn Vale
			[591] = 44, -- Explorers' League Digsite, Stranglethorn
		},
	},
	{
		tag = "429:101",
		nodeID = 591,
		name = "Explorers' League Digsite, Stranglethorn",
		neighbors = {
			[19] = 53, -- Booty Bay, Stranglethorn
			[590] = 46, -- Fort Livingston, Stranglethorn
		},
	},
	{
		tag = "400:112",
		nodeID = 592,
		name = "Hardwrench Hideaway, Stranglethorn",
		neighbors = {
			[18] = 48, -- Booty Bay, Stranglethorn
			[20] = 39, -- Grom'gol, Stranglethorn
			[593] = 73, -- Bambala, Stranglethorn
		},
	},
	{
		tag = "454:154",
		nodeID = 593,
		name = "Bambala, Stranglethorn",
		neighbors = {
			[1537] = 0, -- Shattered Landing
			[20] = 48, -- Grom'gol, Stranglethorn
			[592] = 70, -- Hardwrench Hideaway, Stranglethorn
		},
	},
	{
		tag = "546:239",
		nodeID = 596,
		name = "Shalewind Canyon, Redridge",
		neighbors = {
			[599] = 34, -- Bogpaddle, Swamp of Sorrows
			[615] = 24, -- Camp Everstill, Redridge
		},
	},
	{
		tag = "559:220",
		nodeID = 598,
		name = "Marshtide Watch, Swamp of Sorrows",
		neighbors = {
			[45] = 44, -- Nethergarde Keep, Blasted Lands
			[599] = 30, -- Bogpaddle, Swamp of Sorrows
			[600] = 41, -- The Harborage, Swamp of Sorrows
			[1538] = 0, -- Shattered Beachhead, Blasted Lands
		},
	},
	{
		tag = "561:235",
		nodeID = 599,
		name = "Bogpaddle, Swamp of Sorrows",
		neighbors = {
			[56] = 42, -- Stonard, Swamp of Sorrows
			[70] = 109, -- Flame Crest, Burning Steppes
			[71] = 81, -- Morgan's Vigil, Burning Steppes
			[596] = 33, -- Shalewind Canyon, Redridge
			[598] = 25, -- Marshtide Watch, Swamp of Sorrows
		},
	},
	{
		tag = "525:222",
		nodeID = 600,
		name = "The Harborage, Swamp of Sorrows",
		neighbors = {
			[5] = 46, -- Lakeshire, Redridge
			[598] = 38, -- Marshtide Watch, Swamp of Sorrows
		},
	},
	{
		tag = "481:540",
		nodeID = 601,
		name = "Galen's Fall, Arathi",
		neighbors = {
			[11] = 199, -- Undercity, Tirisfal
			[13] = 0, -- Tarren Mill, Hillsbrad
			[17] = 74, -- Hammerfall, Arathi
			[669] = 34, -- Eastpoint Tower, Hillsbrad
		},
	},
	{
		tag = "527:130",
		nodeID = 602,
		name = "Surwich, Blasted Lands",
		neighbors = {
			[19] = 152, -- Booty Bay, Stranglethorn
			[45] = 73, -- Nethergarde Keep, Blasted Lands
		},
	},
	{
		tag = "532:855",
		nodeID = 603,
		name = "Sunveil Excursion, Blasted Lands",
		neighbors = {
			[18] = 172, -- Booty Bay, Stranglethorn
			[604] = 60, -- Dreadmaul Hold, Blasted Lands
		},
	},
	{
		tag = "522:805",
		nodeID = 604,
		name = "Dreadmaul Hold, Blasted Lands",
		neighbors = {
			[56] = 44, -- Stonard, Swamp of Sorrows
			[603] = 56, -- Sunveil Excursion, Blasted Lands
		},
	},
	{
		tag = "289:323",
		nodeID = 605,
		name = "Voldrin's Hold, Vashj'ir",
		comment = "id 605 and 611 may be switched around",
		neighbors = {
			[606] = 70, -- Sandy Beach, Vashj'ir
		},
	},
	{
		tag = "290:389",
		nodeID = 606,
		name = "Sandy Beach, Vashj'ir",
		faction = "A",
		comment = "id 606 and 607 may be switched around",
		neighbors = {
			[6] = 189, -- Ironforge, Dun Morogh
			[605] = 68, -- Voldrin's Hold, Vashj'ir
		},
	},
	{
		tag = "290:391",
		nodeID = 607,
		name = "Sandy Beach, Vashj'ir",
		taxioperator = "seahorse",
		faction = "A",
		comment = "id 606 and 607 may be switched around",
		neighbors = {
			[521] = 31, -- Smuggler's Scar, Vashj'ir
			[522] = 61, -- Silver Tide Hollow, Vashj'ir
		},
	},
	{
		tag = "296:377",
		nodeID = 608,
		name = "Sandy Beach, Vashj'ir",
		faction = "H",
		comment = "id 608 and 609 may be switched around",
		neighbors = {
			[11] = 358, -- Undercity, Tirisfal
			[610] = 46, -- Stygian Bounty, Vashj'ir
		},
	},
	{
		tag = "297:377",
		nodeID = 609,
		name = "Sandy Beach, Vashj'ir",
		taxioperator = "seahorse",
		faction = "H",
		comment = "id 608 and 609 may be switched around",
		neighbors = {
			[521] = 40, -- Smuggler's Scar, Vashj'ir
			[522] = 44, -- Silver Tide Hollow, Vashj'ir
		},
	},
	{
		tag = "277:335",
		nodeID = 612,
		name = "Stygian Bounty, Vashj'ir",
		taxioperator = "seahorse",
		neighbors = {
			[525] = 33, -- Legion's Rest, Vashj'ir
			[526] = 77, -- Tenebrous Cavern, Vashj'ir
		},
	},
	{
		tag = "290:323",
		nodeID = 611,
		name = "Voldrin's Hold, Vashj'ir",
		taxioperator = "seahorse",
		comment = "id 605 and 611 may be switched around",
		neighbors = {
			[523] = 46, -- Tranquil Wash, Vashj'ir
			[524] = 81, -- Darkbreak Cove, Vashj'ir
		},
	},
	{
		tag = "278:335",
		nodeID = 610,
		name = "Stygian Bounty, Vashj'ir",
		faction = "H",
		neighbors = {
			[608] = 50, -- Sandy Beach, Vashj'ir
		},
	},
	{
		tag = "524:245",
		nodeID = 615,
		name = "Camp Everstill, Redridge",
		neighbors = {
			[5] = 24, -- Lakeshire, Redridge
			[596] = 33, -- Shalewind Canyon, Redridge
		},
	},
	{
		tag = "524:573",
		nodeID = 617,
		name = "Hiri'watha Research Station, The Hinterlands",
		neighbors = {
			[13] = 81, -- Tarren Mill, Hillsbrad
			[17] = 70, -- Hammerfall, Arathi
			[76] = 85, -- Revantusk Village, The Hinterlands
			[383] = 82, -- Thondroril River, Eastern Plaguelands
			[649] = 74, -- Andorhal, Western Plaguelands
		},
	},
	{
		tag = "568:584",
		nodeID = 618,
		name = "Stormfeather Outpost, The Hinterlands",
		neighbors = {
			[16] = 99, -- Refuge Pointe, Arathi
			[43] = 83, -- Aerie Peak, The Hinterlands
			[67] = 88, -- Light's Hope Chapel, Eastern Plaguelands
			[383] = 120, -- Thondroril River, Eastern Plaguelands
		},
	},
	{
		tag = "443:377",
		nodeID = 619,
		name = "Kharanos, Dun Morogh",
		neighbors = {
			[6] = 46, -- Ironforge, Dun Morogh
			[620] = 47, -- Gol'Bolar Quarry, Dun Morogh
		},
	},
	{
		tag = "480:375",
		nodeID = 620,
		name = "Gol'Bolar Quarry, Dun Morogh",
		neighbors = {
			[6] = 69, -- Ironforge, Dun Morogh
			[8] = 52, -- Thelsamar, Loch Modan
			[619] = 44, -- Kharanos, Dun Morogh
		},
	},
	{
		tag = "416:201",
		nodeID = 622,
		name = "Raven Hill, Duskwood",
		neighbors = {
			[4] = 43, -- Sentinel Hill, Westfall
			[12] = 63, -- Darkshire, Duskwood
			[195] = 40, -- Rebel Camp, Stranglethorn Vale
		},
	},
	{
		tag = "573:794",
		nodeID = 625,
		name = "Fairbreeze Village, Eversong Woods",
		neighbors = {
			[82] = 29, -- Silvermoon City
			[83] = 46, -- Tranquillien, Ghostlands
		},
	},
	{
		tag = "579:652",
		nodeID = 630,
		name = "Light's Shield Tower, Eastern Plaguelands",
		neighbors = {
			[67] = 39, -- Light's Hope Chapel, Eastern Plaguelands
			[68] = 39, -- Light's Hope Chapel, Eastern Plaguelands
			[84] = 61, -- Plaguewood Tower, Eastern Plaguelands
			[86] = 20, -- Eastwall Tower, Eastern Plaguelands
			[87] = 30, -- Crown Guard Tower, Eastern Plaguelands
		},
	},
	{
		tag = "577:820",
		nodeID = 631,
		name = "Falconwing Square, Eversong Woods",
		neighbors = {
			[82] = 19, -- Silvermoon City
		},
	},
	{
		tag = "548:334",
		nodeID = 632,
		name = "Bloodwatcher Point, Badlands",
		neighbors = {
			[21] = 39, -- New Kargath, Badlands
			[635] = 25, -- Fuselight, Badlands
		},
	},
	{
		tag = "544:344",
		nodeID = 633,
		name = "Dustwind Dig, Badlands",
		neighbors = {
			[8] = 53, -- Thelsamar, Loch Modan
			[634] = 37, -- Dragon's Mouth, Badlands
			[635] = 29, -- Fuselight, Badlands
		},
	},
	{
		tag = "515:329",
		nodeID = 634,
		name = "Dragon's Mouth, Badlands",
		neighbors = {
			[71] = 55, -- Morgan's Vigil, Burning Steppes
			[633] = 35, -- Dustwind Dig, Badlands
			[635] = 54, -- Fuselight, Badlands
		},
	},
	{
		tag = "560:345",
		nodeID = 635,
		name = "Fuselight, Badlands",
		neighbors = {
			[21] = 51, -- New Kargath, Badlands
			[67] = 358, -- Light's Hope Chapel, Eastern Plaguelands
			[68] = 358, -- Light's Hope Chapel, Eastern Plaguelands
			[555] = 49, -- Farstrider Lodge, Loch Modan
			[632] = 18, -- Bloodwatcher Point, Badlands
			[633] = 19, -- Dustwind Dig, Badlands
			[634] = 51, -- Dragon's Mouth, Badlands
		},
	},
	{
		tag = "390:376",
		nodeID = 645,
		name = " Forsaken High Command, Silverpine Forest",
		neighbors = {
			[10] = 40, -- The Sepulcher, Silverpine Forest
			[11] = 75, -- Undercity, Tirisfal
			[460] = 50, -- Brill, Tirisfal Glades
			[681] = 28, -- Forsaken Rear Guard, Silverpine Forest
		},
	},
	{
		tag = "369:542",
		nodeID = 646,
		name = "Forsaken Forward Command, Gilneas",
		neighbors = {
			[654] = 0, -- The Forsaken Front, Silverpine Forest
		},
	},
	{
		tag = "481:626",
		nodeID = 649,
		name = "Andorhal, Western Plaguelands",
		faction = "H",
		neighbors = {
			[384] = 37, -- The Bulwark, Tirisfal
			[617] = 90, -- Hiri'watha Research Station, The Hinterlands
			[651] = 16, -- The Menders' Stead, Western Plaguelands
		},
	},
	{
		tag = "470:621",
		nodeID = 650,
		name = "Andorhal, Western Plaguelands",
		faction = "A",
		neighbors = {
			[43] = 80, -- Aerie Peak, The Hinterlands
			[66] = 19, -- Chillwind Camp, Western Plaguelands
			[651] = 25, -- The Menders' Stead, Western Plaguelands
		},
	},
	{
		tag = "487:638",
		nodeID = 651,
		name = "The Menders' Stead, Western Plaguelands",
		neighbors = {
			[66] = 43, -- Chillwind Camp, Western Plaguelands
			[383] = 37, -- Thondroril River, Eastern Plaguelands
			[649] = 26, -- Andorhal, Western Plaguelands
			[650] = 29, -- Andorhal, Western Plaguelands
			[672] = 44, -- Hearthglen, Western Plaguelands
		},
	},
	{
		tag = "380:569",
		nodeID = 654,
		name = "The Forsaken Front, Silverpine Forest",
		neighbors = {
			[10] = 36, -- The Sepulcher, Silverpine Forest
			[646] = 0, -- Forsaken Forward Command, Gilneas
			[668] = 38, -- Southpoint Gate, Hillsbrad
		},
	},
	{
		tag = "594:406",
		nodeID = 656,
		name = "Crushblow, Twilight Highlands",
		neighbors = {
			[657] = 54, -- The Gullet, Twilight Highlands
			[659] = 48, -- Bloodgulch, Twilight Highlands
			[661] = 80, -- Dragonmaw Port, Twilight Highlands
		},
	},
	{
		tag = "578:452",
		nodeID = 657,
		name = "The Gullet, Twilight Highlands",
		neighbors = {
			[656] = 58, -- Crushblow, Twilight Highlands
			[658] = 31, -- Vermillion Redoubt, Twilight Highlands
			[659] = 55, -- Bloodgulch, Twilight Highlands
		},
	},
	{
		tag = "562:531",
		nodeID = 658,
		name = "Vermillion Redoubt, Twilight Highlands",
		neighbors = {
			[6] = 152, -- Ironforge, Dun Morogh
			[16] = 92, -- Refuge Pointe, Arathi
			[17] = 109, -- Hammerfall, Arathi
			[21] = 124, -- New Kargath, Badlands
			[552] = 44, -- Greenwarden's Grove, Wetlands
			[657] = 19, -- The Gullet, Twilight Highlands
			[665] = 29, -- Thundermar, Twilight Highlands
		},
	},
	{
		tag = "609:447",
		nodeID = 659,
		name = "Bloodgulch, Twilight Highlands",
		neighbors = {
			[656] = 59, -- Crushblow, Twilight Highlands
			[657] = 50, -- The Gullet, Twilight Highlands
			[660] = 50, -- The Krazzworks, Twilight Highlands
			[661] = 57, -- Dragonmaw Port, Twilight Highlands
		},
	},
	{
		tag = "648:477",
		nodeID = 660,
		name = "The Krazzworks, Twilight Highlands",
		neighbors = {
			[659] = 55, -- Bloodgulch, Twilight Highlands
			[661] = 48, -- Dragonmaw Port, Twilight Highlands
		},
	},
	{
		tag = "645:434",
		nodeID = 661,
		name = "Dragonmaw Port, Twilight Highlands",
		neighbors = {
			[17] = 237, -- Hammerfall, Arathi
			[21] = 217, -- New Kargath, Badlands
			[656] = 66, -- Crushblow, Twilight Highlands
			[659] = 44, -- Bloodgulch, Twilight Highlands
			[660] = 53, -- The Krazzworks, Twilight Highlands
		},
	},
	{
		tag = "660:405",
		nodeID = 662,
		name = "Highbank, Twilight Highlands",
		neighbors = {
			[8] = 171, -- Thelsamar, Loch Modan
			[664] = 51, -- Firebeard's Patrol, Twilight Highlands
			[666] = 93, -- Kirthaven, Twilight Highlands
		},
	},
	{
		tag = "590:429",
		nodeID = 663,
		name = "Victor's Point, Twilight Highlands",
		neighbors = {
			[664] = 41, -- Firebeard's Patrol, Twilight Highlands
			[665] = 43, -- Thundermar, Twilight Highlands
		},
	},
	{
		tag = "621:428",
		nodeID = 664,
		name = "Firebeard's Patrol, Twilight Highlands",
		neighbors = {
			[662] = 53, -- Highbank, Twilight Highlands
			[663] = 42, -- Victor's Point, Twilight Highlands
			[665] = 57, -- Thundermar, Twilight Highlands
			[666] = 73, -- Kirthaven, Twilight Highlands
		},
	},
	{
		tag = "599:464",
		nodeID = 665,
		name = "Thundermar, Twilight Highlands",
		neighbors = {
			[658] = 43, -- Vermillion Redoubt, Twilight Highlands
			[663] = 52, -- Victor's Point, Twilight Highlands
			[664] = 58, -- Firebeard's Patrol, Twilight Highlands
			[666] = 24, -- Kirthaven, Twilight Highlands
		},
	},
	{
		tag = "614:480",
		nodeID = 666,
		name = "Kirthaven, Twilight Highlands",
		neighbors = {
			[662] = 99, -- Highbank, Twilight Highlands
			[664] = 68, -- Firebeard's Patrol, Twilight Highlands
			[665] = 29, -- Thundermar, Twilight Highlands
		},
	},
	{
		tag = "444:550",
		nodeID = 667,
		name = "Ruins of Southshore, Hillsbrad",
		neighbors = {
			[13] = 28, -- Tarren Mill, Hillsbrad
			[668] = 45, -- Southpoint Gate, Hillsbrad
			[669] = 19, -- Eastpoint Tower, Hillsbrad
		},
	},
	{
		tag = "410:552",
		nodeID = 668,
		name = "Southpoint Gate, Hillsbrad",
		neighbors = {
			[654] = 39, -- The Forsaken Front, Silverpine Forest
			[667] = 37, -- Ruins of Southshore, Hillsbrad
		},
	},
	{
		tag = "462:554",
		nodeID = 669,
		name = "Eastpoint Tower, Hillsbrad",
		neighbors = {
			[13] = 22, -- Tarren Mill, Hillsbrad
			[601] = 32, -- Galen's Fall, Arathi
			[667] = 25, -- Ruins of Southshore, Hillsbrad
		},
	},
	{
		tag = "460:595",
		nodeID = 670,
		name = "Strahnbrad, Alterac Mountains",
		neighbors = {
			[13] = 32, -- Tarren Mill, Hillsbrad
			[384] = 49, -- The Bulwark, Tirisfal
		},
	},
	{
		tag = "478:672",
		nodeID = 672,
		name = "Hearthglen, Western Plaguelands",
		neighbors = {
			[84] = 61, -- Plaguewood Tower, Eastern Plaguelands
			[651] = 45, -- The Menders' Stead, Western Plaguelands
		},
	},
	{
		tag = "468:326",
		nodeID = 673,
		name = "Iron Summit, Searing Gorge",
		neighbors = {
			[74] = 25, -- Thorium Point, Searing Gorge
			[75] = 25, -- Thorium Point, Searing Gorge
			[675] = 47, -- Flamestar Post, Burning Steppes
		},
	},
	{
		tag = "461:292",
		nodeID = 675,
		name = "Flamestar Post, Burning Steppes",
		neighbors = {
			[673] = 45, -- Iron Summit, Searing Gorge
			[676] = 36, -- Chiselgrip, Burning Steppes
		},
	},
	{
		tag = "492:300",
		nodeID = 676,
		name = "Chiselgrip, Burning Steppes",
		neighbors = {
			[70] = 17, -- Flame Crest, Burning Steppes
			[71] = 39, -- Morgan's Vigil, Burning Steppes
			[675] = 35, -- Flamestar Post, Burning Steppes
		},
	},
	{
		tag = "373:610",
		nodeID = 681,
		name = "Forsaken Rear Guard, Silverpine Forest",
		neighbors = {
			[10] = 31, -- The Sepulcher, Silverpine Forest
			[645] = 25, --  Forsaken High Command, Silverpine Forest
		},
	},
	{
		tag = "553:183",
		nodeID = 1538,
		name = "Shattered Beachhead, Blasted Lands",
		neighbors = {
			[12] = 0, -- Darkshire, Duskwood
			[195] = 0, -- Rebel Camp, Stranglethorn Vale
			[598] = 0, -- Marshtide Watch, Swamp of Sorrows
		},
	},
},
[101]={
	{
		tag = "001:001",
		nodeID = -6,
		name = "Skyguard Outpost, Blade's Edge Mountains",
		taxioperator = "skyguard",
		neighbors = {
			[-7] = 245, -- Blackwing Landing, Terokkar Forest
		},
	},
	{
		tag = "002:002",
		nodeID = -7,
		name = "Blackwing Landing, Terokkar Forest",
		taxioperator = "skyguard",
		neighbors = {
			[-6] = 245, -- Skyguard Outpost, Blade's Edge Mountains
		},
	},
	{
		tag = "232:496",
		nodeID = 118,
		name = "Zabra'jin, Zangarmarsh",
		neighbors = {
			[102] = 147, -- Falcon Watch, Hellfire Peninsula
			[120] = 82, -- Garadar, Nagrand
			[126] = 112, -- Thunderlord Stronghold, Blade's Edge Mountains
			[128] = 151, -- Shattrath, Terokkar Forest
			[151] = 112, -- Swamprat Post, Zangarmarsh
		},
	},
	{
		tag = "266:556",
		nodeID = 164,
		name = "Orebor Harborage, Zangarmarsh",
		neighbors = {
			[117] = 52, -- Telredor, Zangarmarsh
			[125] = 64, -- Sylvanaar, Blade's Edge Mountains
		},
	},
	{
		tag = "274:255",
		nodeID = 119,
		name = "Telaar, Nagrand",
		neighbors = {
			[117] = 126, -- Telredor, Zangarmarsh
			[121] = 121, -- Allerian Stronghold, Terokkar Forest
			[128] = 87, -- Shattrath, Terokkar Forest
		},
	},
	{
		tag = "288:375",
		nodeID = 120,
		name = "Garadar, Nagrand",
		neighbors = {
			[102] = 127, -- Falcon Watch, Hellfire Peninsula
			[118] = 67, -- Zabra'jin, Zangarmarsh
			[128] = 77, -- Shattrath, Terokkar Forest
		},
	},
	{
		tag = "315:656",
		nodeID = 125,
		name = "Sylvanaar, Blade's Edge Mountains",
		neighbors = {
			[117] = 81, -- Telredor, Zangarmarsh
			[122] = 119, -- Area 52, Netherstorm
			[139] = 154, -- The Stormspire, Netherstorm
			[156] = 57, -- Toshley's Station, Blade's Edge Mountains
			[160] = 51, -- Evergrove, Blade's Edge Mountains
			[164] = 76, -- Orebor Harborage, Zangarmarsh
		},
	},
	{
		tag = "375:495",
		nodeID = 117,
		name = "Telredor, Zangarmarsh",
		neighbors = {
			[101] = 81, -- Temple of Telhamat, Hellfire Peninsula
			[119] = 124, -- Telaar, Nagrand
			[125] = 91, -- Sylvanaar, Blade's Edge Mountains
			[128] = 97, -- Shattrath, Terokkar Forest
			[156] = 68, -- Toshley's Station, Blade's Edge Mountains
			[164] = 62, -- Orebor Harborage, Zangarmarsh
		},
	},
	{
		tag = "378:677",
		nodeID = 126,
		name = "Thunderlord Stronghold, Blade's Edge Mountains",
		neighbors = {
			[118] = 148, -- Zabra'jin, Zangarmarsh
			[122] = 96, -- Area 52, Netherstorm
			[139] = 158, -- The Stormspire, Netherstorm
			[151] = 116, -- Swamprat Post, Zangarmarsh
			[160] = 26, -- Evergrove, Blade's Edge Mountains
			[163] = 55, -- Mok'Nathal Village, Blade's Edge Mountains
		},
	},
	{
		tag = "418:629",
		nodeID = 156,
		name = "Toshley's Station, Blade's Edge Mountains",
		neighbors = {
			[117] = 72, -- Telredor, Zangarmarsh
			[122] = 83, -- Area 52, Netherstorm
			[125] = 59, -- Sylvanaar, Blade's Edge Mountains
			[160] = 53, -- Evergrove, Blade's Edge Mountains
		},
	},
	{
		tag = "421:720",
		nodeID = 160,
		name = "Evergrove, Blade's Edge Mountains",
		neighbors = {
			[122] = 77, -- Area 52, Netherstorm
			[125] = 55, -- Sylvanaar, Blade's Edge Mountains
			[126] = 36, -- Thunderlord Stronghold, Blade's Edge Mountains
			[156] = 44, -- Toshley's Station, Blade's Edge Mountains
		},
	},
	{
		tag = "437:328",
		nodeID = 128,
		name = "Shattrath, Terokkar Forest",
		neighbors = {
			[99] = 131, -- Thrallmar, Hellfire Peninsula
			[100] = 111, -- Honor Hold, Hellfire Peninsula
			[102] = 76, -- Falcon Watch, Hellfire Peninsula
			[117] = 83, -- Telredor, Zangarmarsh
			[118] = 136, -- Zabra'jin, Zangarmarsh
			[119] = 88, -- Telaar, Nagrand
			[120] = 81, -- Garadar, Nagrand
			[121] = 75, -- Allerian Stronghold, Terokkar Forest
			[127] = 68, -- Stonebreaker Hold, Terokkar Forest
			[151] = 79, -- Swamprat Post, Zangarmarsh
		},
	},
	{
		tag = "444:485",
		nodeID = 151,
		name = "Swamprat Post, Zangarmarsh",
		neighbors = {
			[102] = 62, -- Falcon Watch, Hellfire Peninsula
			[118] = 111, -- Zabra'jin, Zangarmarsh
			[126] = 106, -- Thunderlord Stronghold, Blade's Edge Mountains
			[128] = 87, -- Shattrath, Terokkar Forest
			[163] = 70, -- Mok'Nathal Village, Blade's Edge Mountains
		},
	},
	{
		tag = "486:643",
		nodeID = 163,
		name = "Mok'Nathal Village, Blade's Edge Mountains",
		neighbors = {
			[122] = 56, -- Area 52, Netherstorm
			[126] = 63, -- Thunderlord Stronghold, Blade's Edge Mountains
			[151] = 73, -- Swamprat Post, Zangarmarsh
		},
	},
	{
		tag = "509:268",
		nodeID = 127,
		name = "Stonebreaker Hold, Terokkar Forest",
		neighbors = {
			[99] = 125, -- Thrallmar, Hellfire Peninsula
			[123] = 67, -- Shadowmoon Village, Shadowmoon Valley
			[128] = 56, -- Shattrath, Terokkar Forest
		},
	},
	{
		tag = "524:494",
		nodeID = 101,
		name = "Temple of Telhamat, Hellfire Peninsula",
		neighbors = {
			[100] = 87, -- Honor Hold, Hellfire Peninsula
			[117] = 80, -- Telredor, Zangarmarsh
		},
	},
	{
		tag = "535:430",
		nodeID = 102,
		name = "Falcon Watch, Hellfire Peninsula",
		neighbors = {
			[99] = 73, -- Thrallmar, Hellfire Peninsula
			[118] = 149, -- Zabra'jin, Zangarmarsh
			[120] = 132, -- Garadar, Nagrand
			[128] = 71, -- Shattrath, Terokkar Forest
			[151] = 68, -- Swamprat Post, Zangarmarsh
		},
	},
	{
		tag = "554:234",
		nodeID = 121,
		name = "Allerian Stronghold, Terokkar Forest",
		neighbors = {
			[100] = 96, -- Honor Hold, Hellfire Peninsula
			[119] = 149, -- Telaar, Nagrand
			[124] = 79, -- Wildhammer Stronghold, Shadowmoon Valley
			[128] = 74, -- Shattrath, Terokkar Forest
		},
	},
	{
		tag = "576:729",
		nodeID = 122,
		name = "Area 52, Netherstorm",
		neighbors = {
			[125] = 126, -- Sylvanaar, Blade's Edge Mountains
			[126] = 108, -- Thunderlord Stronghold, Blade's Edge Mountains
			[139] = 48, -- The Stormspire, Netherstorm
			[150] = 66, -- Cosmowrench, Netherstorm
			[156] = 93, -- Toshley's Station, Blade's Edge Mountains
			[160] = 80, -- Evergrove, Blade's Edge Mountains
			[163] = 64, -- Mok'Nathal Village, Blade's Edge Mountains
		},
	},
	{
		tag = "628:816",
		nodeID = 139,
		name = "The Stormspire, Netherstorm",
		neighbors = {
			[122] = 53, -- Area 52, Netherstorm
			[125] = 154, -- Sylvanaar, Blade's Edge Mountains
			[126] = 146, -- Thunderlord Stronghold, Blade's Edge Mountains
			[150] = 68, -- Cosmowrench, Netherstorm
		},
	},
	{
		tag = "648:423",
		nodeID = 100,
		name = "Honor Hold, Hellfire Peninsula",
		neighbors = {
			[101] = 75, -- Temple of Telhamat, Hellfire Peninsula
			[121] = 118, -- Allerian Stronghold, Terokkar Forest
			[128] = 119, -- Shattrath, Terokkar Forest
			[129] = 64, -- Hellfire Peninsula, The Dark Portal
			["748:499"] = 56, -- Shatter Point, Hellfire Peninsula
		},
	},
	{
		tag = "655:496",
		nodeID = 99,
		name = "Thrallmar, Hellfire Peninsula",
		neighbors = {
			[102] = 67, -- Falcon Watch, Hellfire Peninsula
			[127] = 128, -- Stonebreaker Hold, Terokkar Forest
			[128] = 123, -- Shattrath, Terokkar Forest
			[130] = 70, -- Hellfire Peninsula, The Dark Portal
			[141] = 66, -- Spinebreaker Ridge, Hellfire Peninsula
		},
	},
	{
		tag = "661:232",
		nodeID = 123,
		name = "Shadowmoon Village, Shadowmoon Valley",
		neighbors = {
			[127] = 73, -- Stonebreaker Hold, Terokkar Forest
			[159] = 65, -- Sanctum of the Stars, Shadowmoon Valley
			[140] = 84, -- Altar of Sha'tar, Shadowmoon Valley
		},
	},
	{
		tag = "677:370",
		nodeID = 141,
		name = "Spinebreaker Ridge, Hellfire Peninsula",
		neighbors = {
			[99] = 63, -- Thrallmar, Hellfire Peninsula
		},
	},
	{
		tag = "694:153",
		nodeID = 124,
		name = "Wildhammer Stronghold, Shadowmoon Valley",
		neighbors = {
			[121] = 100, -- Allerian Stronghold, Terokkar Forest
			[140] = 0, -- Altar of Sha'tar, Shadowmoon Valley
			[159] = 42, -- Sanctum of the Stars, Shadowmoon Valley
			[140] = 83, -- Altar of Sha'tar, Shadowmoon Valley
		},
	},
	{
		tag = "719:720",
		nodeID = 150,
		name = "Cosmowrench, Netherstorm",
		neighbors = {
			[122] = 64, -- Area 52, Netherstorm
			[139] = 60, -- The Stormspire, Netherstorm
		},
	},
	{
		tag = "748:499",
		name = "Shatter Point, Hellfire Peninsula",
		neighbors = {
			[100] = 57, -- Honor Hold, Hellfire Peninsula
			[129] = 32, -- Hellfire Peninsula, The Dark Portal
		},
	},
	{
		tag = "778:146",
		nodeID = 159,
		name = "Sanctum of the Stars, Shadowmoon Valley",
		neighbors = {
			[123] = 61, -- Shadowmoon Village, Shadowmoon Valley
			[124] = 41, -- Wildhammer Stronghold, Shadowmoon Valley
		},
	},
	{
		tag = "786:451",
		nodeID = 129,
		name = "Hellfire Peninsula, The Dark Portal",
		faction = "A",
		neighbors = {
			[100] = 73, -- Honor Hold, Hellfire Peninsula
			[101] = 115, -- Temple of Telhamat, Hellfire Peninsula
			["748:499"] = 27, -- Shatter Point, Hellfire Peninsula
		},
	},
	{
		tag = "786:463",
		nodeID = 130,
		name = "Hellfire Peninsula, The Dark Portal",
		faction = "H",
		neighbors = {
			[99] = 60, -- Thrallmar, Hellfire Peninsula
			[102] = 122, -- Falcon Watch, Hellfire Peninsula
		},
	},
	{
		tag = "808:771",
		nodeID = 140,
		name = "Altar of Sha'tar, Shadowmoon Valley",
		neighbors = {
			[123] = 66, -- Shadowmoon Village, Shadowmoon Valley
			[124] = 0, -- Wildhammer Stronghold, Shadowmoon Valley
		},
	},
},
[113]={
	{
		tag = "121:472",
		nodeID = 226,
		name = "Transitus Shield, Coldarra",
		neighbors = {
			[289] = 45, -- Amber Ledge, Borean Tundra
		},
	},
	{
		tag = "148:430",
		nodeID = 257,
		name = "Warsong Hold, Borean Tundra",
		neighbors = {
			[258] = 87, -- Taunka'le Village, Borean Tundra
			[259] = 68, -- Bor'gorok Outpost, Borean Tundra
			[289] = 35, -- Amber Ledge, Borean Tundra
			[296] = 92, -- Unu'pe, Borean Tundra
			[310] = 0, -- Dalaran
		},
	},
	{
		tag = "165:473",
		nodeID = 289,
		name = "Amber Ledge, Borean Tundra",
		neighbors = {
			[226] = 37, -- Transitus Shield, Coldarra
			[245] = 66, -- Valiance Keep, Borean Tundra
			[246] = 35, -- Fizzcrank Airstrip, Borean Tundra
			[257] = 41, -- Warsong Hold, Borean Tundra
			[258] = 71, -- Taunka'le Village, Borean Tundra
			[259] = 34, -- Bor'gorok Outpost, Borean Tundra
		},
	},
	{
		tag = "175:396",
		nodeID = 309,
		name = "Nesingwary Base Camp, Sholazar Basin",
		neighbors = {
			[246] = 77, -- Fizzcrank Airstrip, Borean Tundra
			[259] = 60, -- Bor'gorok Outpost, Borean Tundra
			[308] = 51, -- River's Heart, Sholazar Basin
			[325] = 91, -- Death's Rise, Icecrown
		},
	},
	{
		tag = "182:530",
		nodeID = 259,
		name = "Bor'gorok Outpost, Borean Tundra",
		neighbors = {
			[257] = 72, -- Warsong Hold, Borean Tundra
			[258] = 77, -- Taunka'le Village, Borean Tundra
			[289] = 58, -- Amber Ledge, Borean Tundra
			[308] = 56, -- River's Heart, Sholazar Basin
			[309] = 47, -- Nesingwary Base Camp, Sholazar Basin
		},
	},
	{
		tag = "208:508",
		nodeID = 246,
		name = "Fizzcrank Airstrip, Borean Tundra",
		neighbors = {
			[245] = 70, -- Valiance Keep, Borean Tundra
			[247] = 133, -- Stars' Rest, Dragonblight
			[289] = 44, -- Amber Ledge, Borean Tundra
			[296] = 64, -- Unu'pe, Borean Tundra
			[308] = 63, -- River's Heart, Sholazar Basin
			[309] = 76, -- Nesingwary Base Camp, Sholazar Basin
		},
	},
	{
		tag = "217:388",
		nodeID = 245,
		name = "Valiance Keep, Borean Tundra",
		neighbors = {
			[246] = 75, -- Fizzcrank Airstrip, Borean Tundra
			[247] = 145, -- Stars' Rest, Dragonblight
			[289] = 63, -- Amber Ledge, Borean Tundra
			[296] = 63, -- Unu'pe, Borean Tundra
			[310] = 262, -- Dalaran
		},
	},
	{
		tag = "244:597",
		nodeID = 308,
		name = "River's Heart, Sholazar Basin",
		neighbors = {
			[246] = 69, -- Fizzcrank Airstrip, Borean Tundra
			[259] = 61, -- Bor'gorok Outpost, Borean Tundra
			[303] = 150, -- Valiance Landing Camp, Wintergrasp
			[309] = 42, -- Nesingwary Base Camp, Sholazar Basin
			[310] = 301, -- Dalaran
			[325] = 93, -- Death's Rise, Icecrown
			[332] = 86, -- Warsong Camp, Wintergrasp
		},
	},
	{
		tag = "278:721",
		nodeID = 325,
		name = "Death's Rise, Icecrown",
		neighbors = {
			[303] = 173, -- Valiance Landing Camp, Wintergrasp
			[308] = 116, -- River's Heart, Sholazar Basin
			[309] = 117, -- Nesingwary Base Camp, Sholazar Basin
			[332] = 114, -- Warsong Camp, Wintergrasp
			[333] = 93, -- The Shadow Vault, Icecrown
			[335] = 175, -- Crusaders' Pinnacle, Icecrown
		},
	},
	{
		tag = "287:464",
		nodeID = 258,
		name = "Taunka'le Village, Borean Tundra",
		neighbors = {
			[256] = 91, -- Agmar's Hammer, Dragonblight
			[257] = 84, -- Warsong Hold, Borean Tundra
			[259] = 72, -- Bor'gorok Outpost, Borean Tundra
			[289] = 76, -- Amber Ledge, Borean Tundra
			[296] = 30, -- Unu'pe, Borean Tundra
			[332] = 80, -- Warsong Camp, Wintergrasp
		},
	},
	{
		tag = "290:430",
		nodeID = 296,
		name = "Unu'pe, Borean Tundra",
		neighbors = {
			[245] = 59, -- Valiance Keep, Borean Tundra
			[246] = 79, -- Fizzcrank Airstrip, Borean Tundra
			[247] = 97, -- Stars' Rest, Dragonblight
			[257] = 87, -- Warsong Hold, Borean Tundra
			[258] = 21, -- Taunka'le Village, Borean Tundra
			[294] = 118, -- Moa'ki, Dragonblight
		},
	},
	{
		tag = "313:566",
		nodeID = 332,
		name = "Warsong Camp, Wintergrasp",
		neighbors = {
			[256] = 100, -- Agmar's Hammer, Dragonblight
			[258] = 79, -- Taunka'le Village, Borean Tundra
			[308] = 76, -- River's Heart, Sholazar Basin
			[310] = 141, -- Dalaran
			[325] = 113, -- Death's Rise, Icecrown
			[333] = 164, -- The Shadow Vault, Icecrown
			[335] = 159, -- Crusaders' Pinnacle, Icecrown
		},
	},
	{
		tag = "377:785",
		nodeID = 333,
		name = "The Shadow Vault, Icecrown",
		neighbors = {
			[303] = 141, -- Valiance Landing Camp, Wintergrasp
			[325] = 77, -- Death's Rise, Icecrown
			[327] = 121, -- Bouldercrag's Refuge, The Storm Peaks
			[332] = 138, -- Warsong Camp, Wintergrasp
			[334] = 134, -- The Argent Vanguard, Icecrown
			[335] = 120, -- Crusaders' Pinnacle, Icecrown
			[340] = 78, -- Argent Tournament Grounds, Icecrown
		},
	},
	{
		tag = "410:571",
		nodeID = 303,
		name = "Valiance Landing Camp, Wintergrasp",
		neighbors = {
			[247] = 80, -- Stars' Rest, Dragonblight
			[251] = 49, -- Fordragon Hold, Dragonblight
			[308] = 136, -- River's Heart, Sholazar Basin
			[310] = 91, -- Dalaran
			[325] = 166, -- Death's Rise, Icecrown
			[333] = 162, -- The Shadow Vault, Icecrown
			[335] = 109, -- Crusaders' Pinnacle, Icecrown
		},
	},
	{
		tag = "423:467",
		nodeID = 247,
		name = "Stars' Rest, Dragonblight",
		neighbors = {
			[244] = 123, -- Wintergarde Keep, Dragonblight
			[245] = 132, -- Valiance Keep, Borean Tundra
			[246] = 129, -- Fizzcrank Airstrip, Borean Tundra
			[251] = 80, -- Fordragon Hold, Dragonblight
			[252] = 89, -- Wyrmrest Temple, Dragonblight
			[294] = 70, -- Moa'ki, Dragonblight
			[296] = 100, -- Unu'pe, Borean Tundra
			[303] = 67, -- Valiance Landing Camp, Wintergrasp
		},
	},
	{
		tag = "453:491",
		nodeID = 256,
		name = "Agmar's Hammer, Dragonblight",
		neighbors = {
			[252] = 51, -- Wyrmrest Temple, Dragonblight
			[254] = 88, -- Venomspite, Dragonblight
			[258] = 113, -- Taunka'le Village, Borean Tundra
			[260] = 65, -- Kor'kron Vanguard, Dragonblight
			[294] = 63, -- Moa'ki, Dragonblight
			[332] = 117, -- Warsong Camp, Wintergrasp
		},
	},
	{
		tag = "460:539",
		nodeID = 251,
		name = "Fordragon Hold, Dragonblight",
		neighbors = {
			[244] = 86, -- Wintergarde Keep, Dragonblight
			[247] = 73, -- Stars' Rest, Dragonblight
			[252] = 65, -- Wyrmrest Temple, Dragonblight
			[303] = 60, -- Valiance Landing Camp, Wintergrasp
			[305] = 118, -- Ebon Watch, Zul'Drak
			[310] = 65, -- Dalaran
		},
	},
	{
		tag = "476:561",
		nodeID = 260,
		name = "Kor'kron Vanguard, Dragonblight",
		neighbors = {
			[252] = 67, -- Wyrmrest Temple, Dragonblight
			[254] = 90, -- Venomspite, Dragonblight
			[256] = 52, -- Agmar's Hammer, Dragonblight
			[305] = 106, -- Ebon Watch, Zul'Drak
			[310] = 56, -- Dalaran
		},
	},
	{
		tag = "493:421",
		nodeID = 294,
		name = "Moa'ki, Dragonblight",
		neighbors = {
			[244] = 85, -- Wintergarde Keep, Dragonblight
			[247] = 54, -- Stars' Rest, Dragonblight
			[252] = 48, -- Wyrmrest Temple, Dragonblight
			[254] = 61, -- Venomspite, Dragonblight
			[256] = 64, -- Agmar's Hammer, Dragonblight
			[295] = 184, -- Kamagua, Howling Fjord
			[296] = 132, -- Unu'pe, Borean Tundra
			[310] = 122, -- Dalaran
		},
	},
	{
		tag = "494:789",
		nodeID = 340,
		name = "Argent Tournament Grounds, Icecrown",
		neighbors = {
			[310] = 140, -- Dalaran
			[327] = 52, -- Bouldercrag's Refuge, The Storm Peaks
			[333] = 89, -- The Shadow Vault, Icecrown
			[335] = 73, -- Crusaders' Pinnacle, Icecrown
		},
	},
	{
		tag = "521:655",
		nodeID = 335,
		name = "Crusaders' Pinnacle, Icecrown",
		neighbors = {
			[310] = 70, -- Dalaran
			[325] = 168, -- Death's Rise, Icecrown
			[332] = 159, -- Warsong Camp, Wintergrasp
			[333] = 123, -- The Shadow Vault, Icecrown
			[334] = 32, -- The Argent Vanguard, Icecrown
			[340] = 97, -- Argent Tournament Grounds, Icecrown
		},
	},
	{
		tag = "522:617",
		nodeID = 310,
		name = "Dalaran",
		neighbors = {
			[183] = 281, -- Valgarde Port, Howling Fjord
			[191] = 303, -- Vengeance Landing, Howling Fjord
			[245] = 261, -- Valiance Keep, Borean Tundra
			[251] = 100, -- Fordragon Hold, Dragonblight
			[252] = 122, -- Wyrmrest Temple, Dragonblight
			[257] = 0, -- Warsong Hold, Borean Tundra
			[260] = 73, -- Kor'kron Vanguard, Dragonblight
			[294] = 159, -- Moa'ki, Dragonblight
			[303] = 116, -- Valiance Landing Camp, Wintergrasp
			[305] = 81, -- Ebon Watch, Zul'Drak
			[308] = 212, -- River's Heart, Sholazar Basin
			[320] = 54, -- K3, The Storm Peaks
			[332] = 161, -- Warsong Camp, Wintergrasp
			[334] = 32, -- The Argent Vanguard, Icecrown
			[335] = 39, -- Crusaders' Pinnacle, Icecrown
			[336] = 52, -- Windrunner's Overlook, Crystalsong Forest
			[337] = 57, -- Sunreaver's Command, Crystalsong Forest
			[340] = 123, -- Argent Tournament Grounds, Icecrown
		},
	},
	{
		tag = "535:477",
		nodeID = 252,
		name = "Wyrmrest Temple, Dragonblight",
		neighbors = {
			[244] = 50, -- Wintergarde Keep, Dragonblight
			[247] = 66, -- Stars' Rest, Dragonblight
			[251] = 58, -- Fordragon Hold, Dragonblight
			[254] = 50, -- Venomspite, Dragonblight
			[256] = 69, -- Agmar's Hammer, Dragonblight
			[260] = 66, -- Kor'kron Vanguard, Dragonblight
			[294] = 53, -- Moa'ki, Dragonblight
			[305] = 105, -- Ebon Watch, Zul'Drak
			[310] = 65, -- Dalaran
		},
	},
	{
		tag = "555:639",
		nodeID = 334,
		name = "The Argent Vanguard, Icecrown",
		neighbors = {
			[310] = 31, -- Dalaran
			[321] = 40, -- Frosthold, The Storm Peaks
			[323] = 103, -- Grom'arsh Crash-Site, The Storm Peaks
			[333] = 147, -- The Shadow Vault, Icecrown
			[335] = 27, -- Crusaders' Pinnacle, Icecrown
		},
	},
	{
		tag = "568:672",
		nodeID = 321,
		name = "Frosthold, The Storm Peaks",
		neighbors = {
			[320] = 48, -- K3, The Storm Peaks
			[326] = 97, -- Ulduar, The Storm Peaks
			[327] = 65, -- Bouldercrag's Refuge, The Storm Peaks
			[334] = 33, -- The Argent Vanguard, Icecrown
		},
	},
	{
		tag = "573:789",
		nodeID = 327,
		name = "Bouldercrag's Refuge, The Storm Peaks",
		neighbors = {
			[321] = 78, -- Frosthold, The Storm Peaks
			[323] = 40, -- Grom'arsh Crash-Site, The Storm Peaks
			[326] = 44, -- Ulduar, The Storm Peaks
			[333] = 112, -- The Shadow Vault, Icecrown
			[340] = 61, -- Argent Tournament Grounds, Icecrown
		},
	},
	{
		tag = "585:566",
		nodeID = 336,
		name = "Windrunner's Overlook, Crystalsong Forest",
		neighbors = {
			[244] = 75, -- Wintergarde Keep, Dragonblight
			[305] = 46, -- Ebon Watch, Zul'Drak
			[310] = 47, -- Dalaran
			[320] = 46, -- K3, The Storm Peaks
		},
	},
	{
		tag = "594:451",
		nodeID = 254,
		name = "Venomspite, Dragonblight",
		neighbors = {
			[190] = 186, -- New Agamand, Howling Fjord
			[248] = 98, -- Apothecary Camp, Howling Fjord
			[250] = 59, -- Conquest Hold, Grizzly Hills
			[252] = 52, -- Wyrmrest Temple, Dragonblight
			[256] = 133, -- Agmar's Hammer, Dragonblight
			[260] = 120, -- Kor'kron Vanguard, Dragonblight
			[294] = 82, -- Moa'ki, Dragonblight
			[305] = 83, -- Ebon Watch, Zul'Drak
			[306] = 106, -- Light's Breach, Zul'Drak
		},
	},
	{
		tag = "596:481",
		nodeID = 244,
		name = "Wintergarde Keep, Dragonblight",
		neighbors = {
			[185] = 125, -- Westguard Keep, Howling Fjord
			[247] = 114, -- Stars' Rest, Dragonblight
			[251] = 96, -- Fordragon Hold, Dragonblight
			[252] = 54, -- Wyrmrest Temple, Dragonblight
			[253] = 77, -- Amberpine Lodge, Grizzly Hills
			[294] = 98, -- Moa'ki, Dragonblight
			[305] = 64, -- Ebon Watch, Zul'Drak
			[306] = 88, -- Light's Breach, Zul'Drak
			[336] = 71, -- Windrunner's Overlook, Crystalsong Forest
		},
	},
	{
		tag = "596:602",
		nodeID = 337,
		name = "Sunreaver's Command, Crystalsong Forest",
		neighbors = {
			[305] = 37, -- Ebon Watch, Zul'Drak
			[310] = 55, -- Dalaran
			[320] = 33, -- K3, The Storm Peaks
		},
	},
	{
		tag = "599:749",
		nodeID = 323,
		name = "Grom'arsh Crash-Site, The Storm Peaks",
		neighbors = {
			[320] = 87, -- K3, The Storm Peaks
			[324] = 96, -- Camp Tunka'lo, The Storm Peaks
			[326] = 51, -- Ulduar, The Storm Peaks
			[327] = 37, -- Bouldercrag's Refuge, The Storm Peaks
			[334] = 79, -- The Argent Vanguard, Icecrown
		},
	},
	{
		tag = "619:641",
		nodeID = 320,
		name = "K3, The Storm Peaks",
		neighbors = {
			[305] = 43, -- Ebon Watch, Zul'Drak
			[310] = 72, -- Dalaran
			[321] = 43, -- Frosthold, The Storm Peaks
			[322] = 100, -- Dun Niffelem, The Storm Peaks
			[323] = 75, -- Grom'arsh Crash-Site, The Storm Peaks
			[324] = 90, -- Camp Tunka'lo, The Storm Peaks
			[336] = 53, -- Windrunner's Overlook, Crystalsong Forest
			[337] = 37, -- Sunreaver's Command, Crystalsong Forest
		},
	},
	{
		tag = "636:578",
		nodeID = 305,
		name = "Ebon Watch, Zul'Drak",
		neighbors = {
			[244] = 61, -- Wintergarde Keep, Dragonblight
			[251] = 111, -- Fordragon Hold, Dragonblight
			[252] = 91, -- Wyrmrest Temple, Dragonblight
			[254] = 98, -- Venomspite, Dragonblight
			[260] = 108, -- Kor'kron Vanguard, Dragonblight
			[304] = 63, -- The Argent Stand, Zul'Drak
			[306] = 44, -- Light's Breach, Zul'Drak
			[310] = 67, -- Dalaran
			[320] = 40, -- K3, The Storm Peaks
			[336] = 33, -- Windrunner's Overlook, Crystalsong Forest
			[337] = 26, -- Sunreaver's Command, Crystalsong Forest
		},
	},
	{
		tag = "637:814",
		nodeID = 326,
		name = "Ulduar, The Storm Peaks",
		neighbors = {
			[307] = 153, -- Zim'Torga, Zul'Drak
			[321] = 102, -- Frosthold, The Storm Peaks
			[322] = 103, -- Dun Niffelem, The Storm Peaks
			[323] = 43, -- Grom'arsh Crash-Site, The Storm Peaks
			[324] = 87, -- Camp Tunka'lo, The Storm Peaks
			[327] = 48, -- Bouldercrag's Refuge, The Storm Peaks
		},
	},
	{
		tag = "694:576",
		nodeID = 306,
		name = "Light's Breach, Zul'Drak",
		neighbors = {
			[244] = 83, -- Wintergarde Keep, Dragonblight
			[249] = 105, -- Camp Oneqwah, Grizzly Hills
			[250] = 74, -- Conquest Hold, Grizzly Hills
			[253] = 83, -- Amberpine Lodge, Grizzly Hills
			[254] = 121, -- Venomspite, Dragonblight
			[304] = 43, -- The Argent Stand, Zul'Drak
			[305] = 39, -- Ebon Watch, Zul'Drak
		},
	},
	{
		tag = "698:452",
		nodeID = 250,
		name = "Conquest Hold, Grizzly Hills",
		neighbors = {
			[192] = 85, -- Camp Winterhoof, Howling Fjord
			[248] = 57, -- Apothecary Camp, Howling Fjord
			[249] = 102, -- Camp Oneqwah, Grizzly Hills
			[254] = 87, -- Venomspite, Dragonblight
			[306] = 79, -- Light's Breach, Zul'Drak
		},
	},
	{
		tag = "720:713",
		nodeID = 322,
		name = "Dun Niffelem, The Storm Peaks",
		neighbors = {
			[307] = 88, -- Zim'Torga, Zul'Drak
			[320] = 87, -- K3, The Storm Peaks
			[324] = 32, -- Camp Tunka'lo, The Storm Peaks
			[326] = 84, -- Ulduar, The Storm Peaks
		},
	},
	{
		tag = "724:598",
		nodeID = 304,
		name = "The Argent Stand, Zul'Drak",
		neighbors = {
			[249] = 99, -- Camp Oneqwah, Grizzly Hills
			[255] = 71, -- Westfall Brigade, Grizzly Hills
			[305] = 52, -- Ebon Watch, Zul'Drak
			[306] = 24, -- Light's Breach, Zul'Drak
			[307] = 41, -- Zim'Torga, Zul'Drak
		},
	},
	{
		tag = "729:464",
		nodeID = 253,
		name = "Amberpine Lodge, Grizzly Hills",
		neighbors = {
			[184] = 116, -- Fort Wildervar, Howling Fjord
			[185] = 83, -- Westguard Keep, Howling Fjord
			[244] = 81, -- Wintergarde Keep, Dragonblight
			[255] = 83, -- Westfall Brigade, Grizzly Hills
			[306] = 66, -- Light's Breach, Zul'Drak
		},
	},
	{
		tag = "733:745",
		nodeID = 324,
		name = "Camp Tunka'lo, The Storm Peaks",
		neighbors = {
			[307] = 98, -- Zim'Torga, Zul'Drak
			[320] = 114, -- K3, The Storm Peaks
			[322] = 45, -- Dun Niffelem, The Storm Peaks
			[323] = 101, -- Grom'arsh Crash-Site, The Storm Peaks
			[326] = 73, -- Ulduar, The Storm Peaks
		},
	},
	{
		tag = "738:292",
		nodeID = 295,
		name = "Kamagua, Howling Fjord",
		neighbors = {
			[183] = 80, -- Valgarde Port, Howling Fjord
			[185] = 36, -- Westguard Keep, Howling Fjord
			[190] = 63, -- New Agamand, Howling Fjord
			[248] = 55, -- Apothecary Camp, Howling Fjord
			[294] = 194, -- Moa'ki, Dragonblight
		},
	},
	{
		tag = "743:377",
		nodeID = 248,
		name = "Apothecary Camp, Howling Fjord",
		neighbors = {
			[190] = 92, -- New Agamand, Howling Fjord
			[192] = 60, -- Camp Winterhoof, Howling Fjord
			[250] = 47, -- Conquest Hold, Grizzly Hills
			[254] = 117, -- Venomspite, Dragonblight
			[295] = 54, -- Kamagua, Howling Fjord
		},
	},
	{
		tag = "764:328",
		nodeID = 185,
		name = "Westguard Keep, Howling Fjord",
		neighbors = {
			[183] = 69, -- Valgarde Port, Howling Fjord
			[184] = 85, -- Fort Wildervar, Howling Fjord
			[244] = 151, -- Wintergarde Keep, Dragonblight
			[253] = 76, -- Amberpine Lodge, Grizzly Hills
			[295] = 51, -- Kamagua, Howling Fjord
		},
	},
	{
		tag = "784:614",
		nodeID = 307,
		name = "Zim'Torga, Zul'Drak",
		neighbors = {
			[249] = 82, -- Camp Oneqwah, Grizzly Hills
			[255] = 56, -- Westfall Brigade, Grizzly Hills
			[304] = 52, -- The Argent Stand, Zul'Drak
			[322] = 85, -- Dun Niffelem, The Storm Peaks
			[324] = 86, -- Camp Tunka'lo, The Storm Peaks
			[326] = 154, -- Ulduar, The Storm Peaks
			[331] = 53, -- Gundrak, Zul'Drak
		},
	},
	{
		tag = "818:687",
		nodeID = 331,
		name = "Gundrak, Zul'Drak",
		neighbors = {
			[307] = 55, -- Zim'Torga, Zul'Drak
		},
	},
	{
		tag = "826:537",
		nodeID = 255,
		name = "Westfall Brigade, Grizzly Hills",
		neighbors = {
			[184] = 85, -- Fort Wildervar, Howling Fjord
			[253] = 78, -- Amberpine Lodge, Grizzly Hills
			[304] = 81, -- The Argent Stand, Zul'Drak
			[307] = 72, -- Zim'Torga, Zul'Drak
		},
	},
	{
		tag = "835:412",
		nodeID = 192,
		name = "Camp Winterhoof, Howling Fjord",
		neighbors = {
			[190] = 79, -- New Agamand, Howling Fjord
			[191] = 73, -- Vengeance Landing, Howling Fjord
			[248] = 57, -- Apothecary Camp, Howling Fjord
			[249] = 58, -- Camp Oneqwah, Grizzly Hills
			[250] = 93, -- Conquest Hold, Grizzly Hills
		},
	},
	{
		tag = "844:492",
		nodeID = 249,
		name = "Camp Oneqwah, Grizzly Hills",
		neighbors = {
			[191] = 105, -- Vengeance Landing, Howling Fjord
			[192] = 49, -- Camp Winterhoof, Howling Fjord
			[250] = 97, -- Conquest Hold, Grizzly Hills
			[304] = 99, -- The Argent Stand, Zul'Drak
			[306] = 92, -- Light's Breach, Zul'Drak
			[307] = 92, -- Zim'Torga, Zul'Drak
		},
	},
	{
		tag = "845:267",
		nodeID = 190,
		name = "New Agamand, Howling Fjord",
		neighbors = {
			[191] = 80, -- Vengeance Landing, Howling Fjord
			[192] = 80, -- Camp Winterhoof, Howling Fjord
			[248] = 103, -- Apothecary Camp, Howling Fjord
			[254] = 191, -- Venomspite, Dragonblight
			[295] = 76, -- Kamagua, Howling Fjord
		},
	},
	{
		tag = "875:278",
		nodeID = 183,
		name = "Valgarde Port, Howling Fjord",
		neighbors = {
			[184] = 70, -- Fort Wildervar, Howling Fjord
			[185] = 69, -- Westguard Keep, Howling Fjord
			[295] = 95, -- Kamagua, Howling Fjord
			[310] = 281, -- Dalaran
		},
	},
	{
		tag = "877:400",
		nodeID = 184,
		name = "Fort Wildervar, Howling Fjord",
		neighbors = {
			[183] = 73, -- Valgarde Port, Howling Fjord
			[185] = 80, -- Westguard Keep, Howling Fjord
			[253] = 96, -- Amberpine Lodge, Grizzly Hills
			[255] = 97, -- Westfall Brigade, Grizzly Hills
		},
	},
	{
		tag = "951:365",
		nodeID = 191,
		name = "Vengeance Landing, Howling Fjord",
		neighbors = {
			[190] = 88, -- New Agamand, Howling Fjord
			[192] = 73, -- Camp Winterhoof, Howling Fjord
			[249] = 104, -- Camp Oneqwah, Grizzly Hills
			[310] = 303, -- Dalaran
		},
	},
	{
		tag = "999:999",
		name = "Forsaken Forward Command, Gilneas",
		comment = "Does not go anywhere and is only available between two quest. Ignore it",
		neighbors = {
			["000:000"] = 999, -- ?
		},
	},
},
[424]={
	{
		tag = "215:524",
		nodeID = 1056,
		name = "Shado-Pan Garrison, Townlong Steppes",
		neighbors = {
			[1055] = 14, -- Rensai's Watchpost, Townlong Steppes
		},
	},
	{
		tag = "235:501",
		nodeID = 1055,
		name = "Rensai's Watchpost, Townlong Steppes",
		neighbors = {
			[1053] = 49, -- Longying Outpost, Townlong Steppes
			[1054] = 44, -- Gao-Ran Battlefront, Townlong Steppes
			[1056] = 22, -- Shado-Pan Garrison, Townlong Steppes
		},
	},
	{
		tag = "244:324",
		nodeID = 1090,
		name = "The Briny Muck, Dread Wastes",
		neighbors = {
			[1070] = 49, -- Klaxxi'vess, Dread Wastes
			[1071] = 33, -- Soggy's Gamble, Dread Wastes
		},
	},
	{
		tag = "279:455",
		nodeID = 1072,
		name = "The Sunset Brewgarden, Dread Wastes",
		neighbors = {
			[1054] = 34, -- Gao-Ran Battlefront, Townlong Steppes
			[1057] = 118, -- Shrine of Seven Stars, Vale of Eternal Blossoms
			[1058] = 106, -- Shrine of Two Moons, Vale of Eternal Blossoms
			[1070] = 33, -- Klaxxi'vess, Dread Wastes
			[1073] = 52, -- Serpent's Spine, Vale of Eternal Blossoms
		},
	},
	{
		tag = "304:387",
		nodeID = 1070,
		name = "Klaxxi'vess, Dread Wastes",
		neighbors = {
			[989] = 50, -- Stoneplow, Valley of the Four Winds
			[990] = 100, -- Dawnchaser Retreat, Krasarang Wilds
			[991] = 71, -- Sentinel Basecamp, Krasarang Wilds
			[1057] = 110, -- Shrine of Seven Stars, Vale of Eternal Blossoms
			[1058] = 97, -- Shrine of Two Moons, Vale of Eternal Blossoms
			[1071] = 48, -- Soggy's Gamble, Dread Wastes
			[1072] = 39, -- The Sunset Brewgarden, Dread Wastes
			[1073] = 42, -- Serpent's Spine, Vale of Eternal Blossoms
			[1090] = 43, -- The Briny Muck, Dread Wastes
		},
	},
	{
		tag = "305:281",
		nodeID = 1071,
		name = "Soggy's Gamble, Dread Wastes",
		neighbors = {
			[1070] = 49, -- Klaxxi'vess, Dread Wastes
			[1073] = 81, -- Serpent's Spine, Vale of Eternal Blossoms
			[1090] = 44, -- The Briny Muck, Dread Wastes
		},
	},
	{
		tag = "317:571",
		nodeID = 1053,
		name = "Longying Outpost, Townlong Steppes",
		neighbors = {
			[1024] = 41, -- Shado-Pan Fallback, Kun-Lai Summit
			[1025] = 34, -- Winter's Blossom, Kun-Lai Summit
			[1054] = 40, -- Gao-Ran Battlefront, Townlong Steppes
			[1055] = 49, -- Rensai's Watchpost, Townlong Steppes
			[1117] = 30, -- Serpent's Spine, Kun-Lai Summit
		},
	},
	{
		tag = "333:493",
		nodeID = 1054,
		name = "Gao-Ran Battlefront, Townlong Steppes",
		neighbors = {
			[1024] = 39, -- Shado-Pan Fallback, Kun-Lai Summit
			[1053] = 46, -- Longying Outpost, Townlong Steppes
			[1055] = 51, -- Rensai's Watchpost, Townlong Steppes
			[1072] = 33, -- The Sunset Brewgarden, Dread Wastes
			[1117] = 33, -- Serpent's Spine, Kun-Lai Summit
		},
	},
	{
		tag = "344:637",
		nodeID = 1025,
		name = "Winter's Blossom, Kun-Lai Summit",
		neighbors = {
			[1023] = 27, -- Kota Basecamp, Kun-Lai Summit
			[1053] = 34, -- Longying Outpost, Townlong Steppes
			[1073] = 0, -- Serpent's Spine, Vale of Eternal Blossoms
		},
	},
	{
		tag = "351:551",
		nodeID = 1117,
		name = "Serpent's Spine, Kun-Lai Summit",
		faction = "H",
		neighbors = {
			[1053] = 22, -- Longying Outpost, Townlong Steppes
			[1054] = 28, -- Gao-Ran Battlefront, Townlong Steppes
			[1058] = 77, -- Shrine of Two Moons, Vale of Eternal Blossoms
		},
	},
	{
		tag = "359:225",
		nodeID = 1195,
		name = "Domination Point, Krasarang Wilds",
		neighbors = {
			[989] = 64, -- Stoneplow, Valley of the Four Winds
			[990] = 61, -- Dawnchaser Retreat, Krasarang Wilds
		},
	},
	{
		tag = "384:392",
		nodeID = 1115,
		name = "The Lion's Redoubt, Dread Wastes",
		neighbors = {
			[1057] = 81, -- Shrine of Seven Stars, Vale of Eternal Blossoms
		},
	},
	{
		tag = "387:601",
		nodeID = 1023,
		name = "Kota Basecamp, Kun-Lai Summit",
		neighbors = {
			[1019] = 59, -- Eastwind Rest, Kun-Lai Summit
			[1020] = 37, -- Westwind Rest, Kun-Lai Summit
			[1022] = 41, -- One Keg, Kun-Lai Summit
			[1024] = 30, -- Shado-Pan Fallback, Kun-Lai Summit
			[1025] = 29, -- Winter's Blossom, Kun-Lai Summit
		},
	},
	{
		tag = "390:424",
		nodeID = 1073,
		name = "Serpent's Spine, Vale of Eternal Blossoms",
		faction = "B",
		neighbors = {
			[1025] = 0, -- Winter's Blossom, Kun-Lai Summit
			[1057] = 71, -- Shrine of Seven Stars, Vale of Eternal Blossoms
			[1058] = 59, -- Shrine of Two Moons, Vale of Eternal Blossoms
			[1070] = 52, -- Klaxxi'vess, Dread Wastes
			[1071] = 73, -- Soggy's Gamble, Dread Wastes
			[1072] = 54, -- The Sunset Brewgarden, Dread Wastes
		},
	},
	{
		tag = "393:530",
		nodeID = 1024,
		name = "Shado-Pan Fallback, Kun-Lai Summit",
		neighbors = {
			[1019] = 45, -- Eastwind Rest, Kun-Lai Summit
			[1020] = 26, -- Westwind Rest, Kun-Lai Summit
			[1023] = 31, -- Kota Basecamp, Kun-Lai Summit
			[1053] = 52, -- Longying Outpost, Townlong Steppes
			[1054] = 38, -- Gao-Ran Battlefront, Townlong Steppes
		},
	},
	{
		tag = "410:335",
		nodeID = 989,
		name = "Stoneplow, Valley of the Four Winds",
		neighbors = {
			[985] = 46, -- Halfhill, Valley of the Four Winds
			[988] = 61, -- The Incursion, Krasarang Wilds
			[990] = 45, -- Dawnchaser Retreat, Krasarang Wilds
			[991] = 27, -- Sentinel Basecamp, Krasarang Wilds
			[992] = 62, -- Cradle of Chi-Ji, Krasarang Wilds
			[1070] = 64, -- Klaxxi'vess, Dread Wastes
			[1195] = 64, -- Domination Point, Krasarang Wilds
		},
	},
	{
		tag = "420:275",
		nodeID = 991,
		name = "Sentinel Basecamp, Krasarang Wilds",
		neighbors = {
			[985] = 65, -- Halfhill, Valley of the Four Winds
			[988] = 75, -- The Incursion, Krasarang Wilds
			[989] = 43, -- Stoneplow, Valley of the Four Winds
			[992] = 0, -- Cradle of Chi-Ji, Krasarang Wilds
			[993] = 75, -- Marista, Krasarang Wilds
			[1070] = 74, -- Klaxxi'vess, Dread Wastes
		},
	},
	{
		tag = "435:230",
		nodeID = 990,
		name = "Dawnchaser Retreat, Krasarang Wilds",
		neighbors = {
			[987] = 67, -- Thunder Cleft, Krasarang Wilds
			[989] = 50, -- Stoneplow, Valley of the Four Winds
			[992] = 19, -- Cradle of Chi-Ji, Krasarang Wilds
			[993] = 50, -- Marista, Krasarang Wilds
			[1070] = 104, -- Klaxxi'vess, Dread Wastes
			[1195] = 73, -- Domination Point, Krasarang Wilds
		},
	},
	{
		tag = "444:197",
		nodeID = 992,
		name = "Cradle of Chi-Ji, Krasarang Wilds",
		neighbors = {
			[985] = 80, -- Halfhill, Valley of the Four Winds
			[988] = 80, -- The Incursion, Krasarang Wilds
			[989] = 61, -- Stoneplow, Valley of the Four Winds
			[990] = 15, -- Dawnchaser Retreat, Krasarang Wilds
			[991] = 0, -- Sentinel Basecamp, Krasarang Wilds
			[993] = 43, -- Marista, Krasarang Wilds
		},
	},
	{
		tag = "446:549",
		nodeID = 1020,
		name = "Westwind Rest, Kun-Lai Summit",
		neighbors = {
			[1017] = 45, -- Binan Village, Kun-Lai Summit
			[1018] = 63, -- Temple of the White Tiger, Kun-Lai Summit
			[1021] = 97, -- Zouchin Village, Kun-Lai Summit
			[1022] = 47, -- One Keg, Kun-Lai Summit
			[1023] = 38, -- Kota Basecamp, Kun-Lai Summit
			[1024] = 27, -- Shado-Pan Fallback, Kun-Lai Summit
			[1057] = 65, -- Shrine of Seven Stars, Vale of Eternal Blossoms
		},
	},
	{
		tag = "463:856",
		nodeID = 1221,
		name = "Beeble's Wreck, Isle Of Giants",
		comment = "Isle of Giants/Dinosa --Need these coords at some point. Broke atm",
		neighbors = {
			[1021] = 54, -- Zouchin Village, Kun-Lai Summit
			[1057] = 203, -- Shrine of Seven Stars, Vale of Eternal Blossoms
		},
	},
	{
		tag = "466:635",
		nodeID = 1022,
		name = "One Keg, Kun-Lai Summit",
		neighbors = {
			[1017] = 67, -- Binan Village, Kun-Lai Summit
			[1018] = 24, -- Temple of the White Tiger, Kun-Lai Summit
			[1019] = 47, -- Eastwind Rest, Kun-Lai Summit
			[1020] = 56, -- Westwind Rest, Kun-Lai Summit
			[1021] = 59, -- Zouchin Village, Kun-Lai Summit
			[1023] = 52, -- Kota Basecamp, Kun-Lai Summit
		},
	},
	{
		tag = "467:579",
		nodeID = 2544,
		name = "Mistfall Village, Vale of Eternal Blossoms",
		neighbors = {
			[1057] = 0, -- Shrine of Seven Stars, Vale of Eternal Blossoms
			[1058] = 0, -- Shrine of Two Moons, Vale of Eternal Blossoms
		},
	},
	{
		tag = "478:860",
		nodeID = 1222,
		name = "Bozzle's Wreck, Isle Of Giants",
		neighbors = {
			[1021] = 50, -- Zouchin Village, Kun-Lai Summit
			[1058] = 185, -- Shrine of Two Moons, Vale of Eternal Blossoms
		},
	},
	{
		tag = "490:561",
		nodeID = 1019,
		name = "Eastwind Rest, Kun-Lai Summit",
		neighbors = {
			[1017] = 30, -- Binan Village, Kun-Lai Summit
			[1018] = 59, -- Temple of the White Tiger, Kun-Lai Summit
			[1021] = 88, -- Zouchin Village, Kun-Lai Summit
			[1022] = 48, -- One Keg, Kun-Lai Summit
			[1023] = 62, -- Kota Basecamp, Kun-Lai Summit
			[1024] = 50, -- Shado-Pan Fallback, Kun-Lai Summit
			[1058] = 61, -- Shrine of Two Moons, Vale of Eternal Blossoms
		},
	},
	{
		tag = "490:739",
		nodeID = 1021,
		name = "Zouchin Village, Kun-Lai Summit",
		neighbors = {
			[1018] = 44, -- Temple of the White Tiger, Kun-Lai Summit
			[1019] = 82, -- Eastwind Rest, Kun-Lai Summit
			[1020] = 93, -- Westwind Rest, Kun-Lai Summit
			[1022] = 62, -- One Keg, Kun-Lai Summit
			[1221] = 50, -- Beeble's Wreck, Isle Of Giants
			[1222] = 52, -- Bozzle's Wreck, Isle Of Giants
		},
	},
	{
		tag = "494:505",
		nodeID = 1058,
		name = "Shrine of Two Moons, Vale of Eternal Blossoms",
		neighbors = {
			[895] = 163, -- Dawn's Blossom, Jade Forest
			[973] = 133, -- Honeydew Village, Jade Forest
			[984] = 92, -- Pang's Stead, Valley of the Four Winds
			[985] = 74, -- Halfhill, Valley of the Four Winds
			[1017] = 84, -- Binan Village, Kun-Lai Summit
			[1019] = 67, -- Eastwind Rest, Kun-Lai Summit
			[1052] = 74, -- Grassy Cline, Valley of the Four Winds
			[1070] = 108, -- Klaxxi'vess, Dread Wastes
			[1072] = 107, -- The Sunset Brewgarden, Dread Wastes
			[1073] = 63, -- Serpent's Spine, Vale of Eternal Blossoms
			[1117] = 84, -- Serpent's Spine, Kun-Lai Summit
			[1222] = 193, -- Bozzle's Wreck, Isle Of Giants
			[2544] = 0, -- Mistfall Village, Vale of Eternal Blossoms
		},
	},
	{
		tag = "511:667",
		nodeID = 1018,
		name = "Temple of the White Tiger, Kun-Lai Summit",
		neighbors = {
			[1017] = 75, -- Binan Village, Kun-Lai Summit
			[1019] = 52, -- Eastwind Rest, Kun-Lai Summit
			[1020] = 61, -- Westwind Rest, Kun-Lai Summit
			[1021] = 40, -- Zouchin Village, Kun-Lai Summit
			[1022] = 32, -- One Keg, Kun-Lai Summit
		},
	},
	{
		tag = "527:162",
		nodeID = 993,
		name = "Marista, Krasarang Wilds",
		neighbors = {
			[987] = 61, -- Thunder Cleft, Krasarang Wilds
			[988] = 62, -- The Incursion, Krasarang Wilds
			[990] = 64, -- Dawnchaser Retreat, Krasarang Wilds
			[991] = 86, -- Sentinel Basecamp, Krasarang Wilds
			[992] = 51, -- Cradle of Chi-Ji, Krasarang Wilds
		},
	},
	{
		tag = "530:353",
		nodeID = 985,
		name = "Halfhill, Valley of the Four Winds",
		neighbors = {
			[984] = 51, -- Pang's Stead, Valley of the Four Winds
			[986] = 43, -- Zhu's Watch, Krasarang Wilds
			[987] = 35, -- Thunder Cleft, Krasarang Wilds
			[988] = 44, -- The Incursion, Krasarang Wilds
			[989] = 49, -- Stoneplow, Valley of the Four Winds
			[991] = 66, -- Sentinel Basecamp, Krasarang Wilds
			[992] = 77, -- Cradle of Chi-Ji, Krasarang Wilds
			[1052] = 37, -- Grassy Cline, Valley of the Four Winds
			[1057] = 73, -- Shrine of Seven Stars, Vale of Eternal Blossoms
			[1058] = 76, -- Shrine of Two Moons, Vale of Eternal Blossoms
		},
	},
	{
		tag = "541:447",
		nodeID = 1057,
		name = "Shrine of Seven Stars, Vale of Eternal Blossoms",
		neighbors = {
			[895] = 170, -- Dawn's Blossom, Jade Forest
			[966] = 124, -- Paw'Don Village, Jade Forest
			[984] = 80, -- Pang's Stead, Valley of the Four Winds
			[985] = 67, -- Halfhill, Valley of the Four Winds
			[1017] = 91, -- Binan Village, Kun-Lai Summit
			[1020] = 64, -- Westwind Rest, Kun-Lai Summit
			[1052] = 63, -- Grassy Cline, Valley of the Four Winds
			[1070] = 114, -- Klaxxi'vess, Dread Wastes
			[1072] = 113, -- The Sunset Brewgarden, Dread Wastes
			[1073] = 69, -- Serpent's Spine, Vale of Eternal Blossoms
			[1115] = 83, -- The Lion's Redoubt, Dread Wastes
			[1221] = 201, -- Beeble's Wreck, Isle Of Giants
			[2544] = 0, -- Mistfall Village, Vale of Eternal Blossoms
		},
	},
	{
		tag = "543:514",
		nodeID = 1017,
		name = "Binan Village, Kun-Lai Summit",
		neighbors = {
			[966] = 141, -- Paw'Don Village, Jade Forest
			[973] = 58, -- Honeydew Village, Jade Forest
			[986] = 85, -- Zhu's Watch, Krasarang Wilds
			[1018] = 66, -- Temple of the White Tiger, Kun-Lai Summit
			[1019] = 34, -- Eastwind Rest, Kun-Lai Summit
			[1020] = 51, -- Westwind Rest, Kun-Lai Summit
			[1022] = 61, -- One Keg, Kun-Lai Summit
			[1029] = 40, -- Tavern in the Mists, The Veiled Stair
			[1057] = 97, -- Shrine of Seven Stars, Vale of Eternal Blossoms
			[1058] = 84, -- Shrine of Two Moons, Vale of Eternal Blossoms
		},
	},
	{
		tag = "554:298",
		nodeID = 987,
		name = "Thunder Cleft, Krasarang Wilds",
		neighbors = {
			[984] = 61, -- Pang's Stead, Valley of the Four Winds
			[985] = 34, -- Halfhill, Valley of the Four Winds
			[986] = 39, -- Zhu's Watch, Krasarang Wilds
			[990] = 80, -- Dawnchaser Retreat, Krasarang Wilds
			[993] = 71, -- Marista, Krasarang Wilds
		},
	},
	{
		tag = "577:411",
		nodeID = 1052,
		name = "Grassy Cline, Valley of the Four Winds",
		neighbors = {
			[984] = 30, -- Pang's Stead, Valley of the Four Winds
			[985] = 37, -- Halfhill, Valley of the Four Winds
			[1029] = 16, -- Tavern in the Mists, The Veiled Stair
			[1057] = 64, -- Shrine of Seven Stars, Vale of Eternal Blossoms
			[1058] = 69, -- Shrine of Two Moons, Vale of Eternal Blossoms
		},
	},
	{
		tag = "586:438",
		nodeID = 1029,
		name = "Tavern in the Mists, The Veiled Stair",
		neighbors = {
			[984] = 22, -- Pang's Stead, Valley of the Four Winds
			[1017] = 38, -- Binan Village, Kun-Lai Summit
			[1052] = 20, -- Grassy Cline, Valley of the Four Winds
		},
	},
	{
		tag = "588:277",
		nodeID = 988,
		name = "The Incursion, Krasarang Wilds",
		neighbors = {
			["669:272"] = 64, -- Lion's Landing, Krassarang Wilds
			[985] = 44, -- Halfhill, Valley of the Four Winds
			[989] = 60, -- Stoneplow, Valley of the Four Winds
			[991] = 76, -- Sentinel Basecamp, Krasarang Wilds
			[992] = 76, -- Cradle of Chi-Ji, Krasarang Wilds
			[993] = 63, -- Marista, Krasarang Wilds
			[1190] = 0, -- Lion's Landing, Krasarang Wilds
		},
	},
	{
		tag = "610:491",
		nodeID = 894,
		name = "Grookin Hill, Jade Forest",
		neighbors = {
			[895] = 63, -- Dawn's Blossom, Jade Forest
			[971] = 58, -- Tian Monastery, Jade Forest
			[973] = 61, -- Honeydew Village, Jade Forest
			[984] = 40, -- Pang's Stead, Valley of the Four Winds
		},
	},
	{
		tag = "612:618",
		nodeID = 973,
		name = "Honeydew Village, Jade Forest",
		neighbors = {
			[894] = 63, -- Grookin Hill, Jade Forest
			[895] = 77, -- Dawn's Blossom, Jade Forest
			[971] = 43, -- Tian Monastery, Jade Forest
			[1017] = 61, -- Binan Village, Kun-Lai Summit
			[1058] = 126, -- Shrine of Two Moons, Vale of Eternal Blossoms
		},
	},
	{
		tag = "622:418",
		nodeID = 984,
		name = "Pang's Stead, Valley of the Four Winds",
		neighbors = {
			[895] = 56, -- Dawn's Blossom, Jade Forest
			[985] = 56, -- Halfhill, Valley of the Four Winds
			[986] = 37, -- Zhu's Watch, Krasarang Wilds
			[987] = 65, -- Thunder Cleft, Krasarang Wilds
			[1029] = 29, -- Tavern in the Mists, The Veiled Stair
			[1052] = 25, -- Grassy Cline, Valley of the Four Winds
			[1057] = 86, -- Shrine of Seven Stars, Vale of Eternal Blossoms
			[1058] = 94, -- Shrine of Two Moons, Vale of Eternal Blossoms
		},
	},
	{
		tag = "623:341",
		nodeID = 986,
		name = "Zhu's Watch, Krasarang Wilds",
		neighbors = {
			[966] = 40, -- Paw'Don Village, Jade Forest
			[984] = 34, -- Pang's Stead, Valley of the Four Winds
			[985] = 47, -- Halfhill, Valley of the Four Winds
			[987] = 43, -- Thunder Cleft, Krasarang Wilds
			[1017] = 87, -- Binan Village, Kun-Lai Summit
		},
	},
	{
		tag = "641:761",
		nodeID = 1190,
		name = "Lion's Landing, Krasarang Wilds",
		neighbors = {
			[966] = 0, -- Paw'Don Village, Jade Forest
			[988] = 0, -- The Incursion, Krasarang Wilds
		},
	},
	{
		tag = "669:272",
		name = "Lion's Landing, Krassarang Wilds",
		neighbors = {
			[966] = 64, -- Paw'Don Village, Jade Forest
			[988] = 45, -- The Incursion, Krasarang Wilds
		},
	},
	{
		tag = "700:411",
		nodeID = 1080,
		name = "Serpent's Overlook, Jade Forest",
		neighbors = {
			[895] = 56, -- Dawn's Blossom, Jade Forest
			[972] = 44, -- Pearlfin Village, Jade Forest
		},
	},
	{
		tag = "703:583",
		nodeID = 971,
		name = "Tian Monastery, Jade Forest",
		neighbors = {
			[894] = 66, -- Grookin Hill, Jade Forest
			[895] = 43, -- Dawn's Blossom, Jade Forest
			[970] = 22, -- Emperor's Omen, Jade Forest
			[973] = 54, -- Honeydew Village, Jade Forest
		},
	},
	{
		tag = "717:346",
		nodeID = 966,
		name = "Paw'Don Village, Jade Forest",
		neighbors = {
			["669:272"] = 49, -- Lion's Landing, Krassarang Wilds
			[895] = 96, -- Dawn's Blossom, Jade Forest
			[968] = 65, -- Jade Temple Grounds, Jade Forest
			[972] = 38, -- Pearlfin Village, Jade Forest
			[986] = 49, -- Zhu's Watch, Krasarang Wilds
			[1017] = 110, -- Binan Village, Kun-Lai Summit
			[1057] = 131, -- Shrine of Seven Stars, Vale of Eternal Blossoms
			[1190] = 0, -- Lion's Landing, Krasarang Wilds
		},
	},
	{
		tag = "723:499",
		nodeID = 895,
		name = "Dawn's Blossom, Jade Forest",
		neighbors = {
			[894] = 71, -- Grookin Hill, Jade Forest
			[966] = 78, -- Paw'Don Village, Jade Forest
			[967] = 28, -- The Arboretum, Jade Forest
			[968] = 36, -- Jade Temple Grounds, Jade Forest
			[970] = 40, -- Emperor's Omen, Jade Forest
			[971] = 49, -- Tian Monastery, Jade Forest
			[972] = 70, -- Pearlfin Village, Jade Forest
			[973] = 88, -- Honeydew Village, Jade Forest
			[984] = 76, -- Pang's Stead, Valley of the Four Winds
			[1057] = 178, -- Shrine of Seven Stars, Vale of Eternal Blossoms
			[1058] = 167, -- Shrine of Two Moons, Vale of Eternal Blossoms
			[1080] = 48, -- Serpent's Overlook, Jade Forest
			[1293] = 142, -- Tushui Landing, Timeless Isle
			[1294] = 143, -- Huojin Landing, Timeless Isle
		},
	},
	{
		tag = "745:574",
		nodeID = 970,
		name = "Emperor's Omen, Jade Forest",
		neighbors = {
			[895] = 38, -- Dawn's Blossom, Jade Forest
			[969] = 23, -- Sri-La Village, Jade Forest
			[971] = 22, -- Tian Monastery, Jade Forest
		},
	},
	{
		tag = "767:437",
		nodeID = 968,
		name = "Jade Temple Grounds, Jade Forest",
		neighbors = {
			[895] = 46, -- Dawn's Blossom, Jade Forest
			[966] = 57, -- Paw'Don Village, Jade Forest
			[967] = 38, -- The Arboretum, Jade Forest
			[972] = 36, -- Pearlfin Village, Jade Forest
		},
	},
	{
		tag = "772:587",
		nodeID = 969,
		name = "Sri-La Village, Jade Forest",
		neighbors = {
			[967] = 50, -- The Arboretum, Jade Forest
			[970] = 21, -- Emperor's Omen, Jade Forest
		},
	},
	{
		tag = "782:507",
		nodeID = 967,
		name = "The Arboretum, Jade Forest",
		neighbors = {
			[895] = 26, -- Dawn's Blossom, Jade Forest
			[968] = 31, -- Jade Temple Grounds, Jade Forest
			[969] = 50, -- Sri-La Village, Jade Forest
		},
	},
	{
		tag = "787:356",
		nodeID = 972,
		name = "Pearlfin Village, Jade Forest",
		neighbors = {
			[895] = 75, -- Dawn's Blossom, Jade Forest
			[966] = 47, -- Paw'Don Village, Jade Forest
			[968] = 37, -- Jade Temple Grounds, Jade Forest
			[1080] = 44, -- Serpent's Overlook, Jade Forest
		},
	},
	{
		tag = "956:338",
		nodeID = 1294,
		name = "Huojin Landing, Timeless Isle",
		neighbors = {
			[895] = 143, -- Dawn's Blossom, Jade Forest
		},
	},
	{
		tag = "959:296",
		nodeID = 1293,
		name = "Tushui Landing, Timeless Isle",
		neighbors = {
			[895] = 142, -- Dawn's Blossom, Jade Forest
		},
	},
},
[572]={
	{
		tag = "665:346",
		nodeID = 1381,
		name = "Embaari Village, Shadowmoon Valley",
		neighbors = {
			[1382] = 25, -- Twilight Glade, Shadowmoon Valley
			[1383] = 24, -- Path of Light, Shadowmoon Valley
			[1384] = 19, -- Exile's Rise, Shadowmoon Valley
			[1440] = 0, -- Zangarra, Talador
			[1447] = 0, -- Fort Wrynn, Talador
			[1467] = 29, -- The Draakorium, Shadowmoon Valley
			[1468] = 24, -- Elodor, Shadowmoon Valley
			[1476] = 37, -- Lunarfall, Shadowmoon Valley
			[1511] = 0, -- Bastion Rise, Gorgrond
			[1518] = 0, -- Wildwood Wash, Gorgrond
			[1529] = 49, -- Darktide Roost, Shadowmoon Valley
			[1568] = 0, -- Everbloom Wilds, Gorgrond
			[1620] = 0, -- Lion's Watch, Tanaan Jungle
			[1643] = 0, -- Aktar's Post, Tanaan Jungle
			[1645] = 0, -- The Iron Front, Tanaan Jungle
			[1646] = 0, -- Vault of the Earth, Tanaan Jungle
			[1647] = 0, -- Malo's Lookout, Tanaan Jungle
			[1648] = 0, -- Sha'naari Refuge, Tanaan Jungle
		},
	},
	{
		tag = "645:302",
		nodeID = 1382,
		name = "Twilight Glade, Shadowmoon Valley",
		neighbors = {
			[1381] = 25, -- Embaari Village, Shadowmoon Valley
			[1383] = 34, -- Path of Light, Shadowmoon Valley
			[1467] = 32, -- The Draakorium, Shadowmoon Valley
			[1475] = 30, -- Socrethar's Rise, Shadowmoon Valley
			[1476] = 46, -- Lunarfall, Shadowmoon Valley
			[1509] = 40, -- Talon Watch, Spires of Arak
		},
	},
	{
		tag = "721:672",
		nodeID = 1383,
		name = "Path of Light, Shadowmoon Valley",
		neighbors = {
			[1381] = 24, -- Embaari Village, Shadowmoon Valley
			[1382] = 34, -- Twilight Glade, Shadowmoon Valley
			[1467] = 17, -- The Draakorium, Shadowmoon Valley
			[1468] = 25, -- Elodor, Shadowmoon Valley
			[1556] = 22, -- Tranquil Court, Shadowmoon Valley
		},
	},
	{
		tag = "665:384",
		nodeID = 1384,
		name = "Exile's Rise, Shadowmoon Valley",
		neighbors = {
			[1381] = 19, -- Embaari Village, Shadowmoon Valley
			[1408] = 115, -- Warspear, Ashran
			[1440] = 0, -- Zangarra, Talador
			[1441] = 0, -- Frostwolf Overlook, Talador
			[1443] = 0, -- Vol'jin's Pride, Talador
			[1451] = 57, -- Anchorite's Sojourn, Talador
			[1453] = 79, -- Exarch's Refuge, Talador
			[1454] = 85, -- Exarch's Refuge, Talador
			[1462] = 61, -- Terokkar Refuge, Talador
			[1468] = 27, -- Elodor, Shadowmoon Valley
			[1475] = 57, -- Socrethar's Rise, Shadowmoon Valley
			[1476] = 35, -- Lunarfall, Shadowmoon Valley
			[1509] = 65, -- Talon Watch, Spires of Arak
			[1512] = 0, -- Bastion Rise, Gorgrond
			[1529] = 61, -- Darktide Roost, Shadowmoon Valley
			[1568] = 0, -- Everbloom Wilds, Gorgrond
			[1569] = 46, -- Akeeta's Hovel, Shadowmoon Valley
			[1621] = 0, -- Vol'mar, Tanaan Jungle
			[1643] = 0, -- Aktar's Post, Tanaan Jungle
			[1644] = 0, -- The Iron Front, Tanaan Jungle
			[1646] = 58, -- Vault of the Earth, Tanaan Jungle
			[1647] = 0, -- Malo's Lookout, Tanaan Jungle
			[1648] = 80, -- Sha'naari Refuge, Tanaan Jungle
		},
	},
	{
		tag = "240:656",
		nodeID = 1386,
		name = "Wor'gol, Frostfire Ridge",
		neighbors = {
			[1387] = 28, -- Bladespire Citadel, Frostfire Ridge
			[1390] = 38, -- Stonefang Outpost, Frostfire Ridge
			[1432] = 50, -- Frostwall Garrison, Frostfire Ridge
		},
	},
	{
		tag = "250:702",
		nodeID = 1387,
		name = "Bladespire Citadel, Frostfire Ridge",
		neighbors = {
			[1386] = 28, -- Wor'gol, Frostfire Ridge
			[1388] = 40, -- Throm'Var, Frostfire Ridge
			[1389] = 59, -- Bloodmaul Slag Mines, Frostfire Ridge
			[1390] = 35, -- Stonefang Outpost, Frostfire Ridge
			[1432] = 58, -- Frostwall Garrison, Frostfire Ridge
		},
	},
	{
		tag = "278:771",
		nodeID = 1388,
		name = "Throm'Var, Frostfire Ridge",
		neighbors = {
			[1387] = 40, -- Bladespire Citadel, Frostfire Ridge
			[1389] = 40, -- Bloodmaul Slag Mines, Frostfire Ridge
			[1396] = 49, -- Darkspear's Edge, Frostfire Ridge
		},
	},
	{
		tag = "351:742",
		nodeID = 1389,
		name = "Bloodmaul Slag Mines, Frostfire Ridge",
		neighbors = {
			[1387] = 59, -- Bladespire Citadel, Frostfire Ridge
			[1388] = 40, -- Throm'Var, Frostfire Ridge
			[1395] = 62, -- Thunder Pass, Frostfire Ridge
			[1396] = 29, -- Darkspear's Edge, Frostfire Ridge
			[1432] = 47, -- Frostwall Garrison, Frostfire Ridge
			[1450] = 114, -- Shattrath City, Talador
			[1503] = 86, -- Throne of the Elements, Nagrand
			[1528] = 69, -- Iron Siegeworks, Frostfire Ridge
			[1539] = 61, -- Skysea Ridge, Gorgrond
			[1572] = 0, -- Rilzit's Holdfast, Nagrand
		},
	},
	{
		tag = "308:666",
		nodeID = 1390,
		name = "Stonefang Outpost, Frostfire Ridge",
		neighbors = {
			[1386] = 38, -- Wor'gol, Frostfire Ridge
			[1387] = 35, -- Bladespire Citadel, Frostfire Ridge
			[1395] = 71, -- Thunder Pass, Frostfire Ridge
			[1396] = 36, -- Darkspear's Edge, Frostfire Ridge
			[1432] = 31, -- Frostwall Garrison, Frostfire Ridge
		},
	},
	{
		tag = "471:644",
		nodeID = 1395,
		name = "Thunder Pass, Frostfire Ridge",
		neighbors = {
			[1389] = 62, -- Bloodmaul Slag Mines, Frostfire Ridge
			[1390] = 71, -- Stonefang Outpost, Frostfire Ridge
			[1432] = 53, -- Frostwall Garrison, Frostfire Ridge
			[1442] = 35, -- Beastwatch, Gorgrond
			[1443] = 61, -- Vol'jin's Pride, Talador
			[1450] = 68, -- Shattrath City, Talador
			[1514] = 45, -- Evermorn Springs, Gorgrond
			[1520] = 36, -- Breaker's Crown, Gorgrond
			[1539] = 44, -- Skysea Ridge, Gorgrond
			[1559] = 27, -- Wolf's Stand, Frostfire Ridge
		},
	},
	{
		tag = "352:693",
		nodeID = 1396,
		name = "Darkspear's Edge, Frostfire Ridge",
		neighbors = {
			[1388] = 49, -- Throm'Var, Frostfire Ridge
			[1389] = 29, -- Bloodmaul Slag Mines, Frostfire Ridge
			[1390] = 36, -- Stonefang Outpost, Frostfire Ridge
			[1432] = 33, -- Frostwall Garrison, Frostfire Ridge
			[1559] = 37, -- Wolf's Stand, Frostfire Ridge
		},
	},
	{
		tag = "857:617",
		nodeID = 1408,
		name = "Warspear, Ashran",
		neighbors = {
			[1384] = 124, -- Exile's Rise, Shadowmoon Valley
			[1432] = 183, -- Frostwall Garrison, Frostfire Ridge
			[1442] = 119, -- Beastwatch, Gorgrond
			[1443] = 152, -- Vol'jin's Pride, Talador
			[1450] = 171, -- Shattrath City, Talador
			[1475] = 160, -- Socrethar's Rise, Shadowmoon Valley
			[1512] = 116, -- Bastion Rise, Gorgrond
			[1514] = 125, -- Evermorn Springs, Gorgrond
			[1529] = 162, -- Darktide Roost, Shadowmoon Valley
			[1539] = 136, -- Skysea Ridge, Gorgrond
			[1568] = 115, -- Everbloom Wilds, Gorgrond
			[1569] = 158, -- Akeeta's Hovel, Shadowmoon Valley
			[1621] = 0, -- Vol'mar, Tanaan Jungle
		},
	},
	{
		tag = "851:515",
		nodeID = 1420,
		name = "Stormshield, Ashran",
		neighbors = {
			[1450] = 148, -- Shattrath City, Talador
			[1468] = 93, -- Elodor, Shadowmoon Valley
			[1475] = 124, -- Socrethar's Rise, Shadowmoon Valley
			[1476] = 112, -- Lunarfall, Shadowmoon Valley
			[1518] = 106, -- Wildwood Wash, Gorgrond
			[1529] = 114, -- Darktide Roost, Shadowmoon Valley
			[1569] = 129, -- Akeeta's Hovel, Shadowmoon Valley
			[1620] = 0, -- Lion's Watch, Tanaan Jungle
		},
	},
	{
		tag = "338:631",
		nodeID = 1432,
		name = "Frostwall Garrison, Frostfire Ridge",
		neighbors = {
			[1386] = 50, -- Wor'gol, Frostfire Ridge
			[1387] = 58, -- Bladespire Citadel, Frostfire Ridge
			[1389] = 47, -- Bloodmaul Slag Mines, Frostfire Ridge
			[1390] = 31, -- Stonefang Outpost, Frostfire Ridge
			[1395] = 53, -- Thunder Pass, Frostfire Ridge
			[1396] = 33, -- Darkspear's Edge, Frostfire Ridge
			[1408] = 183, -- Warspear, Ashran
			[1441] = 66, -- Frostwolf Overlook, Talador
			[1442] = 76, -- Beastwatch, Gorgrond
			[1443] = 92, -- Vol'jin's Pride, Talador
			[1450] = 78, -- Shattrath City, Talador
			[1487] = 147, -- Axefall, Spires of Arak
			[1503] = 48, -- Throne of the Elements, Nagrand
			[1504] = 60, -- Wor'var, Nagrand
			[1505] = 81, -- Riverside Post, Nagrand
			[1510] = 188, -- Pinchwhistle Gearworks, Spires of Arak
			[1513] = 146, -- Apexis Excavation, Spires of Arak
			[1559] = 42, -- Wolf's Stand, Frostfire Ridge
			[1572] = 0, -- Rilzit's Holdfast, Nagrand
			[1574] = 55, -- Joz's Rylaks, Nagrand
		},
	},
	{
		tag = "553:499",
		nodeID = 1440,
		name = "Zangarra, Talador",
		neighbors = {
			[1381] = 0, -- Embaari Village, Shadowmoon Valley
			[1384] = 0, -- Exile's Rise, Shadowmoon Valley
			[1443] = 27, -- Vol'jin's Pride, Talador
			[1447] = 39, -- Fort Wrynn, Talador
			[1451] = 38, -- Anchorite's Sojourn, Talador
			[1462] = 36, -- Terokkar Refuge, Talador
			[1476] = 11, -- Lunarfall, Shadowmoon Valley
			[1643] = 39, -- Aktar's Post, Tanaan Jungle
			[1644] = 33, -- The Iron Front, Tanaan Jungle
			[1645] = 34, -- The Iron Front, Tanaan Jungle
			[1646] = 51, -- Vault of the Earth, Tanaan Jungle
			[1648] = 33, -- Sha'naari Refuge, Tanaan Jungle
		},
	},
	{
		tag = "484:535",
		nodeID = 1441,
		name = "Frostwolf Overlook, Talador",
		neighbors = {
			[1384] = 0, -- Exile's Rise, Shadowmoon Valley
			[1432] = 66, -- Frostwall Garrison, Frostfire Ridge
			[1443] = 41, -- Vol'jin's Pride, Talador
			[1445] = 32, -- Durotan's Grasp, Talador
			[1504] = 64, -- Wor'var, Nagrand
			[1512] = 30, -- Bastion Rise, Gorgrond
			[1514] = 39, -- Evermorn Springs, Gorgrond
			[1644] = 28, -- The Iron Front, Tanaan Jungle
		},
	},
	{
		tag = "537:645",
		nodeID = 1442,
		name = "Beastwatch, Gorgrond",
		neighbors = {
			[1395] = 35, -- Thunder Pass, Frostfire Ridge
			[1408] = 119, -- Warspear, Ashran
			[1432] = 76, -- Frostwall Garrison, Frostfire Ridge
			[1443] = 67, -- Vol'jin's Pride, Talador
			[1504] = 105, -- Wor'var, Nagrand
			[1512] = 33, -- Bastion Rise, Gorgrond
			[1514] = 39, -- Evermorn Springs, Gorgrond
			[1520] = 31, -- Breaker's Crown, Gorgrond
			[1524] = 72, -- Iron Docks, Gorgrond
			[1539] = 0, -- Skysea Ridge, Gorgrond
			[1568] = 44, -- Everbloom Wilds, Gorgrond
		},
	},
	{
		tag = "518:489",
		nodeID = 1443,
		name = "Vol'jin's Pride, Talador",
		neighbors = {
			[1384] = 0, -- Exile's Rise, Shadowmoon Valley
			[1395] = 61, -- Thunder Pass, Frostfire Ridge
			[1408] = 152, -- Warspear, Ashran
			[1432] = 92, -- Frostwall Garrison, Frostfire Ridge
			[1440] = 27, -- Zangarra, Talador
			[1441] = 41, -- Frostwolf Overlook, Talador
			[1442] = 67, -- Beastwatch, Gorgrond
			[1445] = 53, -- Durotan's Grasp, Talador
			[1450] = 41, -- Shattrath City, Talador
			[1462] = 33, -- Terokkar Refuge, Talador
			[1475] = 111, -- Socrethar's Rise, Shadowmoon Valley
			[1487] = 90, -- Axefall, Spires of Arak
			[1504] = 78, -- Wor'var, Nagrand
			[1512] = 45, -- Bastion Rise, Gorgrond
			[1514] = 42, -- Evermorn Springs, Gorgrond
			[1515] = 78, -- Crow's Crook, Spires of Arak
			[1529] = 119, -- Darktide Roost, Shadowmoon Valley
			[1569] = 70, -- Akeeta's Hovel, Shadowmoon Valley
			[1644] = 33, -- The Iron Front, Tanaan Jungle
		},
	},
	{
		tag = "463:462",
		nodeID = 1445,
		name = "Durotan's Grasp, Talador",
		neighbors = {
			[1441] = 42, -- Frostwolf Overlook, Talador
			[1443] = 53, -- Vol'jin's Pride, Talador
			[1450] = 20, -- Shattrath City, Talador
			[1454] = 38, -- Exarch's Refuge, Talador
			[1462] = 31, -- Terokkar Refuge, Talador
			[1504] = 58, -- Wor'var, Nagrand
		},
	},
	{
		tag = "515:509",
		nodeID = 1447,
		name = "Fort Wrynn, Talador",
		neighbors = {
			[1381] = 0, -- Embaari Village, Shadowmoon Valley
			[1440] = 39, -- Zangarra, Talador
			[1448] = 35, -- Redemption Rise, Talador
			[1450] = 39, -- Shattrath City, Talador
			[1451] = 52, -- Anchorite's Sojourn, Talador
			[1476] = 74, -- Lunarfall, Shadowmoon Valley
			[1493] = 107, -- Southport, Spires of Arak
			[1506] = 114, -- Telaari Station, Nagrand
			[1511] = 33, -- Bastion Rise, Gorgrond
			[1519] = 70, -- Highpass, Gorgrond
			[1523] = 51, -- Deeproot, Gorgrond
			[1528] = 57, -- Iron Siegeworks, Frostfire Ridge
			[1569] = 0, -- Akeeta's Hovel, Shadowmoon Valley
			[1645] = 23, -- The Iron Front, Tanaan Jungle
		},
	},
	{
		tag = "491:498",
		nodeID = 1448,
		name = "Redemption Rise, Talador",
		neighbors = {
			[1447] = 35, -- Fort Wrynn, Talador
			[1450] = 37, -- Shattrath City, Talador
			[1453] = 53, -- Exarch's Refuge, Talador
			[1462] = 35, -- Terokkar Refuge, Talador
		},
	},
	{
		tag = "447:457",
		nodeID = 1450,
		name = "Shattrath City, Talador",
		neighbors = {
			[1389] = 114, -- Bloodmaul Slag Mines, Frostfire Ridge
			[1395] = 68, -- Thunder Pass, Frostfire Ridge
			[1408] = 171, -- Warspear, Ashran
			[1420] = 148, -- Stormshield, Ashran
			[1432] = 78, -- Frostwall Garrison, Frostfire Ridge
			[1443] = 41, -- Vol'jin's Pride, Talador
			[1445] = 20, -- Durotan's Grasp, Talador
			[1447] = 39, -- Fort Wrynn, Talador
			[1448] = 37, -- Redemption Rise, Talador
			[1452] = 44, -- Retribution Point, Talador
			[1453] = 34, -- Exarch's Refuge, Talador
			[1454] = 32, -- Exarch's Refuge, Talador
			[1462] = 49, -- Terokkar Refuge, Talador
			[1476] = 0, -- Lunarfall, Shadowmoon Valley
			[1487] = 81, -- Axefall, Spires of Arak
			[1493] = 94, -- Southport, Spires of Arak
			[1502] = 58, -- The Ring of Trials, Nagrand
			[1504] = 43, -- Wor'var, Nagrand
			[1506] = 75, -- Telaari Station, Nagrand
			[1513] = 64, -- Apexis Excavation, Spires of Arak
			[1528] = 75, -- Iron Siegeworks, Frostfire Ridge
			[1569] = 67, -- Akeeta's Hovel, Shadowmoon Valley
		},
	},
	{
		tag = "552:423",
		nodeID = 1451,
		name = "Anchorite's Sojourn, Talador",
		neighbors = {
			[1384] = 57, -- Exile's Rise, Shadowmoon Valley
			[1440] = 38, -- Zangarra, Talador
			[1447] = 52, -- Fort Wrynn, Talador
			[1453] = 46, -- Exarch's Refuge, Talador
			[1462] = 32, -- Terokkar Refuge, Talador
			[1476] = 0, -- Lunarfall, Shadowmoon Valley
			[1509] = 0, -- Talon Watch, Spires of Arak
		},
	},
	{
		tag = "414:375",
		nodeID = 1452,
		name = "Retribution Point, Talador",
		neighbors = {
			[1450] = 44, -- Shattrath City, Talador
			[1453] = 28, -- Exarch's Refuge, Talador
			[1454] = 29, -- Exarch's Refuge, Talador
			[1502] = 70, -- The Ring of Trials, Nagrand
			[1513] = 42, -- Apexis Excavation, Spires of Arak
		},
	},
	{
		tag = "460:394",
		nodeID = 1453,
		name = "Exarch's Refuge, Talador",
		faction = "A",
		neighbors = {
			[1384] = 79, -- Exile's Rise, Shadowmoon Valley
			[1448] = 53, -- Redemption Rise, Talador
			[1450] = 34, -- Shattrath City, Talador
			[1451] = 46, -- Anchorite's Sojourn, Talador
			[1452] = 28, -- Retribution Point, Talador
			[1462] = 36, -- Terokkar Refuge, Talador
			[1475] = 90, -- Socrethar's Rise, Shadowmoon Valley
			[1513] = 40, -- Apexis Excavation, Spires of Arak
			[1569] = 57, -- Akeeta's Hovel, Shadowmoon Valley
		},
	},
	{
		tag = "459:396",
		nodeID = 1454,
		name = "Exarch's Refuge, Talador",
		faction = "H",
		neighbors = {
			[1384] = 85, -- Exile's Rise, Shadowmoon Valley
			[1445] = 38, -- Durotan's Grasp, Talador
			[1450] = 32, -- Shattrath City, Talador
			[1452] = 29, -- Retribution Point, Talador
			[1462] = 34, -- Terokkar Refuge, Talador
			[1475] = 97, -- Socrethar's Rise, Shadowmoon Valley
			[1513] = 40, -- Apexis Excavation, Spires of Arak
			[1569] = 60, -- Akeeta's Hovel, Shadowmoon Valley
		},
	},
	{
		tag = "517:422",
		nodeID = 1462,
		name = "Terokkar Refuge, Talador",
		neighbors = {
			[1384] = 61, -- Exile's Rise, Shadowmoon Valley
			[1440] = 36, -- Zangarra, Talador
			[1443] = 33, -- Vol'jin's Pride, Talador
			[1445] = 31, -- Durotan's Grasp, Talador
			[1448] = 35, -- Redemption Rise, Talador
			[1450] = 49, -- Shattrath City, Talador
			[1451] = 32, -- Anchorite's Sojourn, Talador
			[1453] = 36, -- Exarch's Refuge, Talador
			[1454] = 34, -- Exarch's Refuge, Talador
			[1515] = 56, -- Crow's Crook, Spires of Arak
			[1569] = 46, -- Akeeta's Hovel, Shadowmoon Valley
		},
	},
	{
		tag = "711:298",
		nodeID = 1467,
		name = "The Draakorium, Shadowmoon Valley",
		neighbors = {
			[1381] = 29, -- Embaari Village, Shadowmoon Valley
			[1382] = 32, -- Twilight Glade, Shadowmoon Valley
			[1383] = 17, -- Path of Light, Shadowmoon Valley
			[1475] = 33, -- Socrethar's Rise, Shadowmoon Valley
			[1529] = 38, -- Darktide Roost, Shadowmoon Valley
			[1556] = 28, -- Tranquil Court, Shadowmoon Valley
		},
	},
	{
		tag = "718:366",
		nodeID = 1468,
		name = "Elodor, Shadowmoon Valley",
		neighbors = {
			[1381] = 24, -- Embaari Village, Shadowmoon Valley
			[1383] = 25, -- Path of Light, Shadowmoon Valley
			[1384] = 27, -- Exile's Rise, Shadowmoon Valley
			[1420] = 93, -- Stormshield, Ashran
			[1476] = 0, -- Lunarfall, Shadowmoon Valley
			[1556] = 31, -- Tranquil Court, Shadowmoon Valley
			[1646] = 61, -- Vault of the Earth, Tanaan Jungle
		},
	},
	{
		tag = "657:242",
		nodeID = 1475,
		name = "Socrethar's Rise, Shadowmoon Valley",
		neighbors = {
			[1382] = 30, -- Twilight Glade, Shadowmoon Valley
			[1384] = 57, -- Exile's Rise, Shadowmoon Valley
			[1408] = 160, -- Warspear, Ashran
			[1420] = 124, -- Stormshield, Ashran
			[1443] = 111, -- Vol'jin's Pride, Talador
			[1453] = 90, -- Exarch's Refuge, Talador
			[1454] = 97, -- Exarch's Refuge, Talador
			[1467] = 33, -- The Draakorium, Shadowmoon Valley
			[1476] = 0, -- Lunarfall, Shadowmoon Valley
			[1487] = 76, -- Axefall, Spires of Arak
			[1493] = 80, -- Southport, Spires of Arak
			[1509] = 51, -- Talon Watch, Spires of Arak
			[1529] = 29, -- Darktide Roost, Shadowmoon Valley
			[1569] = 44, -- Akeeta's Hovel, Shadowmoon Valley
		},
	},
	{
		tag = "603:404",
		nodeID = 1476,
		name = "Lunarfall, Shadowmoon Valley",
		neighbors = {
			[1381] = 37, -- Embaari Village, Shadowmoon Valley
			[1382] = 46, -- Twilight Glade, Shadowmoon Valley
			[1384] = 35, -- Exile's Rise, Shadowmoon Valley
			[1420] = 112, -- Stormshield, Ashran
			[1440] = 50, -- Zangarra, Talador
			[1447] = 74, -- Fort Wrynn, Talador
			[1450] = 0, -- Shattrath City, Talador
			[1451] = 0, -- Anchorite's Sojourn, Talador
			[1468] = 0, -- Elodor, Shadowmoon Valley
			[1475] = 0, -- Socrethar's Rise, Shadowmoon Valley
			[1493] = 102, -- Southport, Spires of Arak
			[1506] = 134, -- Telaari Station, Nagrand
			[1511] = 0, -- Bastion Rise, Gorgrond
			[1515] = 0, -- Crow's Crook, Spires of Arak
			[1518] = 139, -- Wildwood Wash, Gorgrond
			[1519] = 0, -- Highpass, Gorgrond
			[1529] = 0, -- Darktide Roost, Shadowmoon Valley
			[1569] = 0, -- Akeeta's Hovel, Shadowmoon Valley
			[1646] = 0, -- Vault of the Earth, Tanaan Jungle
		},
	},
	{
		tag = "477:268",
		nodeID = 1487,
		name = "Axefall, Spires of Arak",
		neighbors = {
			[1432] = 147, -- Frostwall Garrison, Frostfire Ridge
			[1443] = 90, -- Vol'jin's Pride, Talador
			[1450] = 81, -- Shattrath City, Talador
			[1475] = 76, -- Socrethar's Rise, Shadowmoon Valley
			[1504] = 107, -- Wor'var, Nagrand
			[1505] = 130, -- Riverside Post, Nagrand
			[1508] = 25, -- Veil Terokk, Spires of Arak
			[1513] = 28, -- Apexis Excavation, Spires of Arak
			[1515] = 32, -- Crow's Crook, Spires of Arak
			[1569] = 44, -- Akeeta's Hovel, Shadowmoon Valley
			[1573] = 113, -- Nivek's Overlook, Nagrand
		},
	},
	{
		tag = "475:222",
		nodeID = 1493,
		name = "Southport, Spires of Arak",
		neighbors = {
			[1447] = 107, -- Fort Wrynn, Talador
			[1450] = 94, -- Shattrath City, Talador
			[1475] = 80, -- Socrethar's Rise, Shadowmoon Valley
			[1476] = 102, -- Lunarfall, Shadowmoon Valley
			[1506] = 0, -- Telaari Station, Nagrand
			[1508] = 41, -- Veil Terokk, Spires of Arak
			[1510] = 41, -- Pinchwhistle Gearworks, Spires of Arak
			[1513] = 43, -- Apexis Excavation, Spires of Arak
			[1569] = 0, -- Akeeta's Hovel, Shadowmoon Valley
			[1573] = 120, -- Nivek's Overlook, Nagrand
		},
	},
	{
		tag = "325:476",
		nodeID = 1502,
		name = "The Ring of Trials, Nagrand",
		neighbors = {
			[1450] = 58, -- Shattrath City, Talador
			[1452] = 70, -- Retribution Point, Talador
			[1503] = 27, -- Throne of the Elements, Nagrand
			[1504] = 21, -- Wor'var, Nagrand
			[1505] = 58, -- Riverside Post, Nagrand
			[1506] = 30, -- Telaari Station, Nagrand
			[1507] = 33, -- Yrel's Watch, Nagrand
			[1573] = 53, -- Nivek's Overlook, Nagrand
			[1574] = 0, -- Joz's Rylaks, Nagrand
		},
	},
	{
		tag = "304:529",
		nodeID = 1503,
		name = "Throne of the Elements, Nagrand",
		neighbors = {
			[1389] = 86, -- Bloodmaul Slag Mines, Frostfire Ridge
			[1432] = 48, -- Frostwall Garrison, Frostfire Ridge
			[1502] = 27, -- The Ring of Trials, Nagrand
			[1504] = 31, -- Wor'var, Nagrand
			[1505] = 42, -- Riverside Post, Nagrand
			[1506] = 38, -- Telaari Station, Nagrand
			[1507] = 25, -- Yrel's Watch, Nagrand
			[1528] = 0, -- Iron Siegeworks, Frostfire Ridge
			[1574] = 22, -- Joz's Rylaks, Nagrand
		},
	},
	{
		tag = "337:488",
		nodeID = 1504,
		name = "Wor'var, Nagrand",
		neighbors = {
			[1432] = 56, -- Frostwall Garrison, Frostfire Ridge
			[1441] = 64, -- Frostwolf Overlook, Talador
			[1442] = 105, -- Beastwatch, Gorgrond
			[1443] = 78, -- Vol'jin's Pride, Talador
			[1445] = 58, -- Durotan's Grasp, Talador
			[1450] = 43, -- Shattrath City, Talador
			[1487] = 107, -- Axefall, Spires of Arak
			[1502] = 21, -- The Ring of Trials, Nagrand
			[1503] = 31, -- Throne of the Elements, Nagrand
			[1505] = 50, -- Riverside Post, Nagrand
		},
	},
	{
		tag = "220:480",
		nodeID = 1505,
		name = "Riverside Post, Nagrand",
		neighbors = {
			[1432] = 77, -- Frostwall Garrison, Frostfire Ridge
			[1487] = 130, -- Axefall, Spires of Arak
			[1502] = 58, -- The Ring of Trials, Nagrand
			[1503] = 42, -- Throne of the Elements, Nagrand
			[1504] = 60, -- Wor'var, Nagrand
			[1572] = 26, -- Rilzit's Holdfast, Nagrand
			[1573] = 33, -- Nivek's Overlook, Nagrand
			[1574] = 28, -- Joz's Rylaks, Nagrand
		},
	},
	{
		tag = "269:449",
		nodeID = 1506,
		name = "Telaari Station, Nagrand",
		neighbors = {
			[1447] = 114, -- Fort Wrynn, Talador
			[1450] = 75, -- Shattrath City, Talador
			[1476] = 134, -- Lunarfall, Shadowmoon Valley
			[1493] = 0, -- Southport, Spires of Arak
			[1502] = 30, -- The Ring of Trials, Nagrand
			[1503] = 38, -- Throne of the Elements, Nagrand
			[1507] = 26, -- Yrel's Watch, Nagrand
			[1519] = 155, -- Highpass, Gorgrond
			[1572] = 0, -- Rilzit's Holdfast, Nagrand
			[1573] = 27, -- Nivek's Overlook, Nagrand
		},
	},
	{
		tag = "266:497",
		nodeID = 1507,
		name = "Yrel's Watch, Nagrand",
		neighbors = {
			[1502] = 33, -- The Ring of Trials, Nagrand
			[1503] = 25, -- Throne of the Elements, Nagrand
			[1506] = 26, -- Telaari Station, Nagrand
			[1572] = 0, -- Rilzit's Holdfast, Nagrand
			[1574] = 15, -- Joz's Rylaks, Nagrand
		},
	},
	{
		tag = "502:266",
		nodeID = 1508,
		name = "Veil Terokk, Spires of Arak",
		neighbors = {
			[1487] = 21, -- Axefall, Spires of Arak
			[1493] = 24, -- Southport, Spires of Arak
			[1509] = 32, -- Talon Watch, Spires of Arak
			[1510] = 41, -- Pinchwhistle Gearworks, Spires of Arak
			[1513] = 37, -- Apexis Excavation, Spires of Arak
			[1515] = 46, -- Crow's Crook, Spires of Arak
		},
	},
	{
		tag = "560:270",
		nodeID = 1509,
		name = "Talon Watch, Spires of Arak",
		neighbors = {
			[1382] = 40, -- Twilight Glade, Shadowmoon Valley
			[1384] = 65, -- Exile's Rise, Shadowmoon Valley
			[1451] = 0, -- Anchorite's Sojourn, Talador
			[1475] = 51, -- Socrethar's Rise, Shadowmoon Valley
			[1508] = 30, -- Veil Terokk, Spires of Arak
			[1510] = 37, -- Pinchwhistle Gearworks, Spires of Arak
			[1515] = 27, -- Crow's Crook, Spires of Arak
			[1569] = 37, -- Akeeta's Hovel, Shadowmoon Valley
		},
	},
	{
		tag = "556:194",
		nodeID = 1510,
		name = "Pinchwhistle Gearworks, Spires of Arak",
		neighbors = {
			[1432] = 188, -- Frostwall Garrison, Frostfire Ridge
			[1493] = 41, -- Southport, Spires of Arak
			[1508] = 41, -- Veil Terokk, Spires of Arak
			[1509] = 37, -- Talon Watch, Spires of Arak
			[1515] = 0, -- Crow's Crook, Spires of Arak
			[1569] = 71, -- Akeeta's Hovel, Shadowmoon Valley
		},
	},
	{
		tag = "539:568",
		nodeID = 1511,
		name = "Bastion Rise, Gorgrond",
		faction = "A",
		neighbors = {
			[1381] = 0, -- Embaari Village, Shadowmoon Valley
			[1447] = 33, -- Fort Wrynn, Talador
			[1476] = 0, -- Lunarfall, Shadowmoon Valley
			[1518] = 55, -- Wildwood Wash, Gorgrond
			[1523] = 25, -- Deeproot, Gorgrond
			[1528] = 0, -- Iron Siegeworks, Frostfire Ridge
			[1643] = 0, -- Aktar's Post, Tanaan Jungle
			[1645] = 22, -- The Iron Front, Tanaan Jungle
		},
	},
	{
		tag = "544:574",
		nodeID = 1512,
		name = "Bastion Rise, Gorgrond",
		faction = "H",
		neighbors = {
			[1384] = 0, -- Exile's Rise, Shadowmoon Valley
			[1408] = 116, -- Warspear, Ashran
			[1441] = 30, -- Frostwolf Overlook, Talador
			[1442] = 33, -- Beastwatch, Gorgrond
			[1443] = 45, -- Vol'jin's Pride, Talador
			[1514] = 17, -- Evermorn Springs, Gorgrond
			[1643] = 26, -- Aktar's Post, Tanaan Jungle
			[1644] = 34, -- The Iron Front, Tanaan Jungle
		},
	},
	{
		tag = "468:314",
		nodeID = 1513,
		name = "Apexis Excavation, Spires of Arak",
		neighbors = {
			[1432] = 146, -- Frostwall Garrison, Frostfire Ridge
			[1450] = 64, -- Shattrath City, Talador
			[1452] = 42, -- Retribution Point, Talador
			[1453] = 40, -- Exarch's Refuge, Talador
			[1454] = 40, -- Exarch's Refuge, Talador
			[1487] = 28, -- Axefall, Spires of Arak
			[1493] = 43, -- Southport, Spires of Arak
			[1508] = 27, -- Veil Terokk, Spires of Arak
			[1515] = 25, -- Crow's Crook, Spires of Arak
		},
	},
	{
		tag = "514:586",
		nodeID = 1514,
		name = "Evermorn Springs, Gorgrond",
		neighbors = {
			[1395] = 45, -- Thunder Pass, Frostfire Ridge
			[1408] = 125, -- Warspear, Ashran
			[1441] = 39, -- Frostwolf Overlook, Talador
			[1442] = 39, -- Beastwatch, Gorgrond
			[1443] = 47, -- Vol'jin's Pride, Talador
			[1512] = 21, -- Bastion Rise, Gorgrond
			[1539] = 64, -- Skysea Ridge, Gorgrond
		},
	},
	{
		tag = "522:298",
		nodeID = 1515,
		name = "Crow's Crook, Spires of Arak",
		neighbors = {
			[1443] = 78, -- Vol'jin's Pride, Talador
			[1462] = 56, -- Terokkar Refuge, Talador
			[1476] = 0, -- Lunarfall, Shadowmoon Valley
			[1487] = 32, -- Axefall, Spires of Arak
			[1508] = 19, -- Veil Terokk, Spires of Arak
			[1509] = 27, -- Talon Watch, Spires of Arak
			[1510] = 0, -- Pinchwhistle Gearworks, Spires of Arak
			[1513] = 25, -- Apexis Excavation, Spires of Arak
			[1569] = 41, -- Akeeta's Hovel, Shadowmoon Valley
		},
	},
	{
		tag = "627:684",
		nodeID = 1518,
		name = "Wildwood Wash, Gorgrond",
		neighbors = {
			[1381] = 0, -- Embaari Village, Shadowmoon Valley
			[1420] = 106, -- Stormshield, Ashran
			[1476] = 139, -- Lunarfall, Shadowmoon Valley
			[1511] = 55, -- Bastion Rise, Gorgrond
			[1519] = 33, -- Highpass, Gorgrond
			[1523] = 53, -- Deeproot, Gorgrond
			[1524] = 61, -- Iron Docks, Gorgrond
			[1539] = 57, -- Skysea Ridge, Gorgrond
			[1568] = 28, -- Everbloom Wilds, Gorgrond
			[1620] = 0, -- Lion's Watch, Tanaan Jungle
			[1643] = 0, -- Aktar's Post, Tanaan Jungle
		},
	},
	{
		tag = "571:678",
		nodeID = 1519,
		name = "Highpass, Gorgrond",
		neighbors = {
			[1447] = 70, -- Fort Wrynn, Talador
			[1476] = 0, -- Lunarfall, Shadowmoon Valley
			[1506] = 155, -- Telaari Station, Nagrand
			[1518] = 33, -- Wildwood Wash, Gorgrond
			[1520] = 0, -- Breaker's Crown, Gorgrond
			[1523] = 0, -- Deeproot, Gorgrond
			[1524] = 55, -- Iron Docks, Gorgrond
			[1528] = 42, -- Iron Siegeworks, Frostfire Ridge
			[1539] = 0, -- Skysea Ridge, Gorgrond
			[1568] = 0, -- Everbloom Wilds, Gorgrond
		},
	},
	{
		tag = "536:693",
		nodeID = 1520,
		name = "Breaker's Crown, Gorgrond",
		neighbors = {
			[1395] = 36, -- Thunder Pass, Frostfire Ridge
			[1442] = 31, -- Beastwatch, Gorgrond
			[1519] = 0, -- Highpass, Gorgrond
			[1523] = 0, -- Deeproot, Gorgrond
			[1524] = 49, -- Iron Docks, Gorgrond
			[1528] = 0, -- Iron Siegeworks, Frostfire Ridge
			[1539] = 33, -- Skysea Ridge, Gorgrond
			[1568] = 28, -- Everbloom Wilds, Gorgrond
		},
	},
	{
		tag = "539:621",
		nodeID = 1523,
		name = "Deeproot, Gorgrond",
		neighbors = {
			[1447] = 51, -- Fort Wrynn, Talador
			[1511] = 25, -- Bastion Rise, Gorgrond
			[1518] = 53, -- Wildwood Wash, Gorgrond
			[1519] = 0, -- Highpass, Gorgrond
			[1520] = 0, -- Breaker's Crown, Gorgrond
			[1528] = 36, -- Iron Siegeworks, Frostfire Ridge
			[1568] = 49, -- Everbloom Wilds, Gorgrond
		},
	},
	{
		tag = "522:808",
		nodeID = 1524,
		name = "Iron Docks, Gorgrond",
		neighbors = {
			[1442] = 72, -- Beastwatch, Gorgrond
			[1518] = 61, -- Wildwood Wash, Gorgrond
			[1519] = 55, -- Highpass, Gorgrond
			[1520] = 49, -- Breaker's Crown, Gorgrond
			[1539] = 29, -- Skysea Ridge, Gorgrond
			[1568] = 44, -- Everbloom Wilds, Gorgrond
		},
	},
	{
		tag = "485:640",
		nodeID = 1528,
		name = "Iron Siegeworks, Frostfire Ridge",
		neighbors = {
			[1389] = 69, -- Bloodmaul Slag Mines, Frostfire Ridge
			[1447] = 57, -- Fort Wrynn, Talador
			[1450] = 75, -- Shattrath City, Talador
			[1503] = 0, -- Throne of the Elements, Nagrand
			[1511] = 0, -- Bastion Rise, Gorgrond
			[1519] = 42, -- Highpass, Gorgrond
			[1520] = 0, -- Breaker's Crown, Gorgrond
			[1523] = 36, -- Deeproot, Gorgrond
			[1539] = 0, -- Skysea Ridge, Gorgrond
		},
	},
	{
		tag = "723:231",
		nodeID = 1529,
		name = "Darktide Roost, Shadowmoon Valley",
		neighbors = {
			[1381] = 49, -- Embaari Village, Shadowmoon Valley
			[1384] = 61, -- Exile's Rise, Shadowmoon Valley
			[1408] = 162, -- Warspear, Ashran
			[1420] = 114, -- Stormshield, Ashran
			[1443] = 119, -- Vol'jin's Pride, Talador
			[1467] = 38, -- The Draakorium, Shadowmoon Valley
			[1475] = 29, -- Socrethar's Rise, Shadowmoon Valley
			[1476] = 0, -- Lunarfall, Shadowmoon Valley
		},
	},
	{
		tag = "505:754",
		nodeID = 1539,
		name = "Skysea Ridge, Gorgrond",
		neighbors = {
			[1389] = 61, -- Bloodmaul Slag Mines, Frostfire Ridge
			[1395] = 44, -- Thunder Pass, Frostfire Ridge
			[1408] = 136, -- Warspear, Ashran
			[1442] = 0, -- Beastwatch, Gorgrond
			[1514] = 64, -- Evermorn Springs, Gorgrond
			[1518] = 57, -- Wildwood Wash, Gorgrond
			[1519] = 0, -- Highpass, Gorgrond
			[1520] = 33, -- Breaker's Crown, Gorgrond
			[1524] = 30, -- Iron Docks, Gorgrond
			[1528] = 0, -- Iron Siegeworks, Frostfire Ridge
			[1568] = 37, -- Everbloom Wilds, Gorgrond
		},
	},
	{
		tag = "766:315",
		nodeID = 1556,
		name = "Tranquil Court, Shadowmoon Valley",
		neighbors = {
			[1383] = 23, -- Path of Light, Shadowmoon Valley
			[1467] = 28, -- The Draakorium, Shadowmoon Valley
			[1468] = 31, -- Elodor, Shadowmoon Valley
		},
	},
	{
		tag = "433:646",
		nodeID = 1559,
		name = "Wolf's Stand, Frostfire Ridge",
		neighbors = {
			[1395] = 27, -- Thunder Pass, Frostfire Ridge
			[1396] = 37, -- Darkspear's Edge, Frostfire Ridge
			[1432] = 43, -- Frostwall Garrison, Frostfire Ridge
		},
	},
	{
		tag = "646:711",
		nodeID = 1567,
		name = "Temple of Karabor",
	},
	{
		tag = "592:723",
		nodeID = 1568,
		name = "Everbloom Wilds, Gorgrond",
		neighbors = {
			[1381] = 0, -- Embaari Village, Shadowmoon Valley
			[1384] = 0, -- Exile's Rise, Shadowmoon Valley
			[1408] = 115, -- Warspear, Ashran
			[1442] = 44, -- Beastwatch, Gorgrond
			[1518] = 28, -- Wildwood Wash, Gorgrond
			[1519] = 0, -- Highpass, Gorgrond
			[1520] = 28, -- Breaker's Crown, Gorgrond
			[1523] = 49, -- Deeproot, Gorgrond
			[1524] = 44, -- Iron Docks, Gorgrond
			[1539] = 37, -- Skysea Ridge, Gorgrond
			[1580] = 34, -- Everbloom Overlook, Gorgrond
			[1647] = 65, -- Malo's Lookout, Tanaan Jungle
		},
	},
	{
		tag = "574:332",
		nodeID = 1569,
		name = "Akeeta's Hovel, Shadowmoon Valley",
		neighbors = {
			[1384] = 46, -- Exile's Rise, Shadowmoon Valley
			[1408] = 158, -- Warspear, Ashran
			[1420] = 129, -- Stormshield, Ashran
			[1443] = 70, -- Vol'jin's Pride, Talador
			[1447] = 0, -- Fort Wrynn, Talador
			[1450] = 67, -- Shattrath City, Talador
			[1453] = 57, -- Exarch's Refuge, Talador
			[1454] = 60, -- Exarch's Refuge, Talador
			[1462] = 46, -- Terokkar Refuge, Talador
			[1475] = 44, -- Socrethar's Rise, Shadowmoon Valley
			[1476] = 0, -- Lunarfall, Shadowmoon Valley
			[1487] = 44, -- Axefall, Spires of Arak
			[1493] = 0, -- Southport, Spires of Arak
			[1509] = 37, -- Talon Watch, Spires of Arak
			[1510] = 71, -- Pinchwhistle Gearworks, Spires of Arak
			[1515] = 41, -- Crow's Crook, Spires of Arak
		},
	},
	{
		tag = "224:520",
		nodeID = 1572,
		name = "Rilzit's Holdfast, Nagrand",
		neighbors = {
			[1389] = 0, -- Bloodmaul Slag Mines, Frostfire Ridge
			[1432] = 0, -- Frostwall Garrison, Frostfire Ridge
			[1505] = 26, -- Riverside Post, Nagrand
			[1506] = 0, -- Telaari Station, Nagrand
			[1507] = 0, -- Yrel's Watch, Nagrand
			[1573] = 44, -- Nivek's Overlook, Nagrand
			[1574] = 33, -- Joz's Rylaks, Nagrand
		},
	},
	{
		tag = "220:416",
		nodeID = 1573,
		name = "Nivek's Overlook, Nagrand",
		neighbors = {
			[1487] = 113, -- Axefall, Spires of Arak
			[1493] = 120, -- Southport, Spires of Arak
			[1502] = 53, -- The Ring of Trials, Nagrand
			[1505] = 31, -- Riverside Post, Nagrand
			[1506] = 32, -- Telaari Station, Nagrand
			[1572] = 47, -- Rilzit's Holdfast, Nagrand
			[1574] = 45, -- Joz's Rylaks, Nagrand
		},
	},
	{
		tag = "264:515",
		nodeID = 1574,
		name = "Joz's Rylaks, Nagrand",
		neighbors = {
			[1432] = 55, -- Frostwall Garrison, Frostfire Ridge
			[1502] = 0, -- The Ring of Trials, Nagrand
			[1503] = 22, -- Throne of the Elements, Nagrand
			[1505] = 27, -- Riverside Post, Nagrand
			[1507] = 15, -- Yrel's Watch, Nagrand
			[1572] = 33, -- Rilzit's Holdfast, Nagrand
			[1573] = 45, -- Nivek's Overlook, Nagrand
		},
	},
	{
		tag = "651:780",
		nodeID = 1580,
		name = "Everbloom Overlook, Gorgrond",
		neighbors = {
			[1568] = 41, -- Everbloom Wilds, Gorgrond
		},
	},
	{
		nodeID = 1620,
		name = "Lion's Watch, Tanaan Jungle",
		neighbors = {
			[1381] = 0, -- Embaari Village, Shadowmoon Valley
			[1420] = 0, -- Stormshield, Ashran
			[1518] = 0, -- Wildwood Wash, Gorgrond
			[1643] = 0, -- Aktar's Post, Tanaan Jungle
			[1645] = 0, -- The Iron Front, Tanaan Jungle
			[1646] = 0, -- Vault of the Earth, Tanaan Jungle
			[1647] = 0, -- Malo's Lookout, Tanaan Jungle
		},
	},
	{
		nodeID = 1621,
		name = "Vol'mar, Tanaan Jungle",
		neighbors = {
			[1384] = 0, -- Exile's Rise, Shadowmoon Valley
			[1408] = 0, -- Warspear, Ashran
			[1643] = 0, -- Aktar's Post, Tanaan Jungle
			[1644] = 0, -- The Iron Front, Tanaan Jungle
			[1646] = 0, -- Vault of the Earth, Tanaan Jungle
			[1647] = 0, -- Malo's Lookout, Tanaan Jungle
		},
	},
	{
		tag = "596:569",
		nodeID = 1643,
		name = "Aktar's Post, Tanaan Jungle",
		neighbors = {
			[1381] = 0, -- Embaari Village, Shadowmoon Valley
			[1384] = 0, -- Exile's Rise, Shadowmoon Valley
			[1440] = 39, -- Zangarra, Talador
			[1511] = 0, -- Bastion Rise, Gorgrond
			[1512] = 26, -- Bastion Rise, Gorgrond
			[1518] = 0, -- Wildwood Wash, Gorgrond
			[1620] = 0, -- Lion's Watch, Tanaan Jungle
			[1621] = 0, -- Vol'mar, Tanaan Jungle
			[1644] = 36, -- The Iron Front, Tanaan Jungle
			[1645] = 0, -- The Iron Front, Tanaan Jungle
			[1646] = 52, -- Vault of the Earth, Tanaan Jungle
			[1647] = 32, -- Malo's Lookout, Tanaan Jungle
			[1648] = 23, -- Sha'naari Refuge, Tanaan Jungle
		},
	},
	{
		tag = "542:533",
		nodeID = 1644,
		name = "The Iron Front, Tanaan Jungle",
		faction = "H",
		neighbors = {
			[1384] = 0, -- Exile's Rise, Shadowmoon Valley
			[1440] = 33, -- Zangarra, Talador
			[1441] = 28, -- Frostwolf Overlook, Talador
			[1443] = 33, -- Vol'jin's Pride, Talador
			[1512] = 34, -- Bastion Rise, Gorgrond
			[1621] = 0, -- Vol'mar, Tanaan Jungle
			[1643] = 36, -- Aktar's Post, Tanaan Jungle
			[1646] = 0, -- Vault of the Earth, Tanaan Jungle
			[1648] = 0, -- Sha'naari Refuge, Tanaan Jungle
		},
	},
	{
		tag = "544:539",
		nodeID = 1645,
		name = "The Iron Front, Tanaan Jungle",
		faction = "A",
		neighbors = {
			[1381] = 0, -- Embaari Village, Shadowmoon Valley
			[1440] = 32, -- Zangarra, Talador
			[1447] = 23, -- Fort Wrynn, Talador
			[1511] = 22, -- Bastion Rise, Gorgrond
			[1620] = 0, -- Lion's Watch, Tanaan Jungle
			[1643] = 0, -- Aktar's Post, Tanaan Jungle
			[1646] = 0, -- Vault of the Earth, Tanaan Jungle
			[1648] = 32, -- Sha'naari Refuge, Tanaan Jungle
		},
	},
	{
		tag = "663:502",
		nodeID = 1646,
		name = "Vault of the Earth, Tanaan Jungle",
		neighbors = {
			[1381] = 0, -- Embaari Village, Shadowmoon Valley
			[1384] = 58, -- Exile's Rise, Shadowmoon Valley
			[1440] = 51, -- Zangarra, Talador
			[1468] = 61, -- Elodor, Shadowmoon Valley
			[1476] = 0, -- Lunarfall, Shadowmoon Valley
			[1620] = 0, -- Lion's Watch, Tanaan Jungle
			[1621] = 0, -- Vol'mar, Tanaan Jungle
			[1643] = 52, -- Aktar's Post, Tanaan Jungle
			[1644] = 0, -- The Iron Front, Tanaan Jungle
			[1645] = 0, -- The Iron Front, Tanaan Jungle
			[1647] = 31, -- Malo's Lookout, Tanaan Jungle
			[1648] = 28, -- Sha'naari Refuge, Tanaan Jungle
		},
	},
	{
		tag = "652:562",
		nodeID = 1647,
		name = "Malo's Lookout, Tanaan Jungle",
		neighbors = {
			[1381] = 0, -- Embaari Village, Shadowmoon Valley
			[1384] = 0, -- Exile's Rise, Shadowmoon Valley
			[1568] = 65, -- Everbloom Wilds, Gorgrond
			[1620] = 0, -- Lion's Watch, Tanaan Jungle
			[1621] = 0, -- Vol'mar, Tanaan Jungle
			[1643] = 32, -- Aktar's Post, Tanaan Jungle
			[1646] = 31, -- Vault of the Earth, Tanaan Jungle
			[1648] = 31, -- Sha'naari Refuge, Tanaan Jungle
		},
	},
	{
		tag = "607:518",
		nodeID = 1648,
		name = "Sha'naari Refuge, Tanaan Jungle",
		neighbors = {
			[1381] = 0, -- Embaari Village, Shadowmoon Valley
			[1384] = 80, -- Exile's Rise, Shadowmoon Valley
			[1440] = 33, -- Zangarra, Talador
			[1643] = 23, -- Aktar's Post, Tanaan Jungle
			[1644] = 0, -- The Iron Front, Tanaan Jungle
			[1645] = 32, -- The Iron Front, Tanaan Jungle
			[1646] = 28, -- Vault of the Earth, Tanaan Jungle
			[1647] = 31, -- Malo's Lookout, Tanaan Jungle
		},
	},
},
[619]={
	{
		tag = "033:010",
		nodeID = 1613,
		name = "Azurewing Repose, Azsuna",
		neighbors = {
			[1615] = 34, -- Challiane's Terrace, Azsuna
			[1622] = 24, -- Illidari Stand, Azsuna
			[1633] = 36, -- Shackle's Den, Azsuna
			[1673] = 51, -- Lorlathil, Val'sharah
			[1858] = 59, -- Meredil, Suramar
			[1859] = 27, -- Felblaze Ingress, Azsuna
			[1880] = 55, -- Irongrove Retreat, Suramar
		},
	},
	{
		tag = "-24:204",
		nodeID = 1615,
		name = "Challiane's Terrace, Azsuna",
		neighbors = {
			[1613] = 34, -- Azurewing Repose, Azsuna
			[1673] = 44, -- Lorlathil, Val'sharah
			[1713] = 38, -- Bradensbrook, Val'sharah
			[1858] = 57, -- Meredil, Suramar
			[1859] = 43, -- Felblaze Ingress, Azsuna
			[1861] = 44, -- Illidari Perch, Azsuna
			[1880] = 60, -- Irongrove Retreat, Suramar
			[1885] = 37, -- Gloaming Reef, Val'sharah
		},
	},
	{
		tag = "004:-152",
		nodeID = 1622,
		name = "Illidari Stand, Azsuna",
		neighbors = {
			[1613] = 24, -- Azurewing Repose, Azsuna
			[1633] = 29, -- Shackle's Den, Azsuna
			[1837] = 33, -- Wardens' Redoubt, Azsuna
			[1861] = 23, -- Illidari Perch, Azsuna
		},
	},
	{
		tag = "093:-308",
		nodeID = 1633,
		name = "Shackle's Den, Azsuna",
		neighbors = {
			[1613] = 36, -- Azurewing Repose, Azsuna
			[1622] = 29, -- Illidari Stand, Azsuna
			[1774] = 60, -- Dalaran
			[1837] = 23, -- Wardens' Redoubt, Azsuna
			[1859] = 35, -- Felblaze Ingress, Azsuna
			[1870] = 0, -- Eye of Azshara, Azsuna
		},
	},
	{
		tag = "041:414",
		nodeID = 1673,
		name = "Lorlathil, Val'sharah",
		neighbors = {
			[1613] = 51, -- Azurewing Repose, Azsuna
			[1615] = 44, -- Challiane's Terrace, Azsuna
			[1713] = 32, -- Bradensbrook, Val'sharah
			[1766] = 24, -- Garden of the Moon, Val'sharah
			[1859] = 51, -- Felblaze Ingress, Azsuna
			[1880] = 51, -- Irongrove Retreat, Suramar
		},
	},
	{
		tag = "-40:535",
		nodeID = 1713,
		name = "Bradensbrook, Val'sharah",
		neighbors = {
			[1615] = 38, -- Challiane's Terrace, Azsuna
			[1673] = 32, -- Lorlathil, Val'sharah
			[1766] = 27, -- Garden of the Moon, Val'sharah
			[1815] = 51, -- The Dreamgrove, Val'sharah (Druids Only)
			[1885] = 27, -- Gloaming Reef, Val'sharah
		},
	},
	{
		tag = "299:849",
		nodeID = 1719,
		name = "Thunder Totem, Highmountain",
		neighbors = {
			[1753] = 31, -- Skyhorn, Highmountain
			[1754] = 43, -- The Witchwood, Highmountain
			[1755] = 56, -- Felbane Camp, Highmountain
			[1758] = 49, -- Obsidian Overlook, Highmountain
			[1759] = 44, -- Ironhorn Enclave, Highmountain
			[1760] = 35, -- Trueshot Lodge, Highmountain
			[1767] = 21, -- Nesingwary, Highmountain
			[1777] = 27, -- Sylvan Falls, Highmountain
			[1778] = 30, -- Stonehoof Watch, Highmountain
		},
	},
	{
		tag = "528:551",
		nodeID = 1738,
		name = "Cullen's Post, Stormheim",
		neighbors = {
			[1739] = 29, -- Dreadwake's Landing, Stormheim
			[1741] = 34, -- Forsaken Foothold, Stormheim
			[1742] = 28, -- Valdisdall, Stormheim
			[1759] = 49, -- Ironhorn Enclave, Highmountain
			[1778] = 45, -- Stonehoof Watch, Highmountain
			[1857] = 36, -- Stormtorn Foothills, Stormheim
			[1879] = 38, -- Crimson Thicket, Suramar
		},
	},
	{
		tag = "593:427",
		nodeID = 1739,
		name = "Dreadwake's Landing, Stormheim",
		neighbors = {
			[1738] = 29, -- Cullen's Post, Stormheim
			[1742] = 28, -- Valdisdall, Stormheim
			[1863] = 22, -- Hafr Fjall, Stormheim
		},
	},
	{
		tag = "470:810",
		nodeID = 1741,
		name = "Forsaken Foothold, Stormheim",
		neighbors = {
			[1738] = 34, -- Cullen's Post, Stormheim
			[1753] = 47, -- Skyhorn, Highmountain
			[1759] = 56, -- Ironhorn Enclave, Highmountain
			[1761] = 49, -- Prepfoot, Highmountain
			[1778] = 38, -- Stonehoof Watch, Highmountain
			[1857] = 29, -- Stormtorn Foothills, Stormheim
		},
	},
	{
		tag = "634:626",
		nodeID = 1742,
		name = "Valdisdall, Stormheim",
		neighbors = {
			[1738] = 28, -- Cullen's Post, Stormheim
			[1739] = 28, -- Dreadwake's Landing, Stormheim
			[1744] = 24, -- Greywatch, Stormheim
			[1745] = 39, -- Lorna's Watch, Stormheim
			[1747] = 42, -- Skyfire Triage Camp, Stormheim
			[1855] = 62, -- Shield's Rest, Stormheim
			[1857] = 26, -- Stormtorn Foothills, Stormheim
			[1863] = 38, -- Hafr Fjall, Stormheim
		},
	},
	{
		tag = "712:546",
		nodeID = 1744,
		name = "Greywatch, Stormheim",
		neighbors = {
			[1742] = 24, -- Valdisdall, Stormheim
			[1855] = 51, -- Shield's Rest, Stormheim
			[1863] = 41, -- Hafr Fjall, Stormheim
		},
	},
	{
		tag = "477:509",
		nodeID = 1745,
		name = "Lorna's Watch, Stormheim",
		neighbors = {
			[1742] = 39, -- Valdisdall, Stormheim
			[1747] = 20, -- Skyfire Triage Camp, Stormheim
			[1759] = 51, -- Ironhorn Enclave, Highmountain
			[1857] = 40, -- Stormtorn Foothills, Stormheim
			[1863] = 46, -- Hafr Fjall, Stormheim
			[1879] = 45, -- Crimson Thicket, Suramar
		},
	},
	{
		tag = "451:629",
		nodeID = 1747,
		name = "Skyfire Triage Camp, Stormheim",
		neighbors = {
			[1742] = 42, -- Valdisdall, Stormheim
			[1745] = 20, -- Lorna's Watch, Stormheim
			[1759] = 42, -- Ironhorn Enclave, Highmountain
			[1778] = 31, -- Stonehoof Watch, Highmountain
			[1857] = 36, -- Stormtorn Foothills, Stormheim
		},
	},
	{
		tag = "347:1008",
		nodeID = 1753,
		name = "Skyhorn, Highmountain",
		neighbors = {
			[1719] = 31, -- Thunder Totem, Highmountain
			[1741] = 47, -- Forsaken Foothold, Stormheim
			[1754] = 45, -- The Witchwood, Highmountain
			[1756] = 63, -- Shipwreck Cove, Highmountain
			[1759] = 51, -- Ironhorn Enclave, Highmountain
			[1760] = 40, -- Trueshot Lodge, Highmountain
			[1761] = 36, -- Prepfoot, Highmountain
			[1767] = 33, -- Nesingwary, Highmountain
			[1778] = 34, -- Stonehoof Watch, Highmountain
			[1855] = 101, -- Shield's Rest, Stormheim
		},
	},
	{
		tag = "228:1074",
		nodeID = 1754,
		name = "The Witchwood, Highmountain",
		neighbors = {
			[1719] = 43, -- Thunder Totem, Highmountain
			[1753] = 45, -- Skyhorn, Highmountain
			[1755] = 40, -- Felbane Camp, Highmountain
			[1756] = 49, -- Shipwreck Cove, Highmountain
			[1760] = 21, -- Trueshot Lodge, Highmountain
			[1761] = 42, -- Prepfoot, Highmountain
			[1767] = 35, -- Nesingwary, Highmountain
		},
	},
	{
		tag = "159:1073",
		nodeID = 1755,
		name = "Felbane Camp, Highmountain",
		neighbors = {
			[1719] = 56, -- Thunder Totem, Highmountain
			[1754] = 40, -- The Witchwood, Highmountain
			[1756] = 43, -- Shipwreck Cove, Highmountain
			[1767] = 41, -- Nesingwary, Highmountain
			[1777] = 44, -- Sylvan Falls, Highmountain
			[1815] = 84, -- The Dreamgrove, Val'sharah (Druids Only)
		},
	},
	{
		tag = "258:1391",
		nodeID = 1756,
		name = "Shipwreck Cove, Highmountain",
		neighbors = {
			[1753] = 63, -- Skyhorn, Highmountain
			[1754] = 49, -- The Witchwood, Highmountain
			[1755] = 43, -- Felbane Camp, Highmountain
			[1761] = 47, -- Prepfoot, Highmountain
		},
	},
	{
		tag = "303:571",
		nodeID = 1758,
		name = "Obsidian Overlook, Highmountain",
		neighbors = {
			[1719] = 49, -- Thunder Totem, Highmountain
			[1759] = 39, -- Ironhorn Enclave, Highmountain
			[1764] = 59, -- Starsong Refuge, Val'sharah
			[1777] = 47, -- Sylvan Falls, Highmountain
			[1858] = 51, -- Meredil, Suramar
			[1879] = 55, -- Crimson Thicket, Suramar
			[1880] = 50, -- Irongrove Retreat, Suramar
		},
	},
	{
		tag = "382:579",
		nodeID = 1759,
		name = "Ironhorn Enclave, Highmountain",
		neighbors = {
			[1719] = 44, -- Thunder Totem, Highmountain
			[1738] = 49, -- Cullen's Post, Stormheim
			[1741] = 56, -- Forsaken Foothold, Stormheim
			[1745] = 51, -- Lorna's Watch, Stormheim
			[1747] = 42, -- Skyfire Triage Camp, Stormheim
			[1753] = 51, -- Skyhorn, Highmountain
			[1758] = 39, -- Obsidian Overlook, Highmountain
			[1778] = 32, -- Stonehoof Watch, Highmountain
			[1857] = 59, -- Stormtorn Foothills, Stormheim
			[1858] = 58, -- Meredil, Suramar
			[1879] = 77, -- Crimson Thicket, Suramar
		},
	},
	{
		tag = "186:961",
		nodeID = 1760,
		name = "Trueshot Lodge, Highmountain",
		neighbors = {
			[1719] = 35, -- Thunder Totem, Highmountain
			[1753] = 40, -- Skyhorn, Highmountain
			[1754] = 21, -- The Witchwood, Highmountain
			[1767] = 26, -- Nesingwary, Highmountain
			[1777] = 31, -- Sylvan Falls, Highmountain
		},
	},
	{
		tag = "392:1191",
		nodeID = 1761,
		name = "Prepfoot, Highmountain",
		neighbors = {
			[1741] = 49, -- Forsaken Foothold, Stormheim
			[1753] = 36, -- Skyhorn, Highmountain
			[1754] = 42, -- The Witchwood, Highmountain
			[1756] = 47, -- Shipwreck Cove, Highmountain
			[1855] = 91, -- Shield's Rest, Stormheim
			[1857] = 60, -- Stormtorn Foothills, Stormheim
		},
	},
	{
		tag = "131:600",
		nodeID = 1764,
		name = "Starsong Refuge, Val'sharah",
		neighbors = {
			[1758] = 59, -- Obsidian Overlook, Highmountain
			[1766] = 37, -- Garden of the Moon, Val'sharah
			[1777] = 51, -- Sylvan Falls, Highmountain
			[1880] = 48, -- Irongrove Retreat, Suramar
		},
	},
	{
		tag = "052:541",
		nodeID = 1766,
		name = "Garden of the Moon, Val'sharah",
		neighbors = {
			[1673] = 24, -- Lorlathil, Val'sharah
			[1713] = 27, -- Bradensbrook, Val'sharah
			[1764] = 37, -- Starsong Refuge, Val'sharah
			[1815] = 43, -- The Dreamgrove, Val'sharah (Druids Only)
			[1880] = 61, -- Irongrove Retreat, Suramar
		},
	},
	{
		tag = "244:926",
		nodeID = 1767,
		name = "Nesingwary, Highmountain",
		neighbors = {
			[1719] = 21, -- Thunder Totem, Highmountain
			[1753] = 33, -- Skyhorn, Highmountain
			[1754] = 35, -- The Witchwood, Highmountain
			[1755] = 41, -- Felbane Camp, Highmountain
			[1760] = 26, -- Trueshot Lodge, Highmountain
			[1777] = 28, -- Sylvan Falls, Highmountain
		},
	},
	{
		tag = "308:-326",
		nodeID = 1774,
		name = "Dalaran",
		neighbors = {
			[1633] = 60, -- Shackle's Den, Azsuna
			[1856] = 50, -- Vengeance Point, Broken Shore
			[1858] = 64, -- Meredil, Suramar
			[1859] = 52, -- Felblaze Ingress, Azsuna
			[1860] = 68, -- Watchers' Aerie, Azsuna
			[1863] = 96, -- Hafr Fjall, Stormheim
			[1870] = 69, -- Eye of Azshara, Azsuna
			[1879] = 77, -- Crimson Thicket, Suramar
			[1941] = 57, -- Deliverance Point, Broken Shore
		},
	},
	{
		tag = "208:778",
		nodeID = 1777,
		name = "Sylvan Falls, Highmountain",
		neighbors = {
			[1719] = 27, -- Thunder Totem, Highmountain
			[1755] = 44, -- Felbane Camp, Highmountain
			[1758] = 47, -- Obsidian Overlook, Highmountain
			[1760] = 31, -- Trueshot Lodge, Highmountain
			[1764] = 51, -- Starsong Refuge, Val'sharah
			[1767] = 28, -- Nesingwary, Highmountain
			[1880] = 46, -- Irongrove Retreat, Suramar
		},
	},
	{
		tag = "402:787",
		nodeID = 1778,
		name = "Stonehoof Watch, Highmountain",
		neighbors = {
			[1719] = 30, -- Thunder Totem, Highmountain
			[1738] = 45, -- Cullen's Post, Stormheim
			[1741] = 38, -- Forsaken Foothold, Stormheim
			[1747] = 31, -- Skyfire Triage Camp, Stormheim
			[1753] = 34, -- Skyhorn, Highmountain
			[1759] = 32, -- Ironhorn Enclave, Highmountain
			[1857] = 50, -- Stormtorn Foothills, Stormheim
		},
	},
	{
		tag = "311:253",
		nodeID = 1815,
		name = "The Dreamgrove, Val'sharah (Druids Only)",
		neighbors = {
			[1713] = 51, -- Bradensbrook, Val'sharah
			[1755] = 84, -- Felbane Camp, Highmountain
			[1766] = 43, -- Garden of the Moon, Val'sharah
		},
	},
	{
		tag = "031:-454",
		nodeID = 1837,
		name = "Wardens' Redoubt, Azsuna",
		neighbors = {
			[1622] = 33, -- Illidari Stand, Azsuna
			[1633] = 23, -- Shackle's Den, Azsuna
			[1860] = 18, -- Watchers' Aerie, Azsuna
			[1861] = 41, -- Illidari Perch, Azsuna
		},
	},
	{
		tag = "834:992",
		nodeID = 1855,
		name = "Shield's Rest, Stormheim",
		neighbors = {
			[1742] = 62, -- Valdisdall, Stormheim
			[1744] = 51, -- Greywatch, Stormheim
			[1753] = 101, -- Skyhorn, Highmountain
			[1761] = 91, -- Prepfoot, Highmountain
			[1857] = 61, -- Stormtorn Foothills, Stormheim
		},
	},
	{
		tag = "460:-252",
		nodeID = 1856,
		name = "Vengeance Point, Broken Shore",
		neighbors = {
			[1774] = 50, -- Dalaran
			[1858] = 72, -- Meredil, Suramar
			[1862] = 0, -- Acherus: The Ebon Hold, Broken Shore
			[1863] = 68, -- Hafr Fjall, Stormheim
			[1870] = 0, -- Eye of Azshara, Azsuna
			[1879] = 76, -- Crimson Thicket, Suramar
			[1941] = 31, -- Deliverance Point, Broken Shore
			[1942] = 30, -- Aalgen Point, Broken Shore
		},
	},
	{
		tag = "576:774",
		nodeID = 1857,
		name = "Stormtorn Foothills, Stormheim",
		neighbors = {
			[1738] = 36, -- Cullen's Post, Stormheim
			[1741] = 29, -- Forsaken Foothold, Stormheim
			[1742] = 26, -- Valdisdall, Stormheim
			[1745] = 40, -- Lorna's Watch, Stormheim
			[1747] = 36, -- Skyfire Triage Camp, Stormheim
			[1759] = 59, -- Ironhorn Enclave, Highmountain
			[1761] = 60, -- Prepfoot, Highmountain
			[1778] = 50, -- Stonehoof Watch, Highmountain
			[1855] = 61, -- Shield's Rest, Stormheim
		},
	},
	{
		tag = "254:253",
		nodeID = 1858,
		name = "Meredil, Suramar",
		neighbors = {
			[1613] = 59, -- Azurewing Repose, Azsuna
			[1615] = 57, -- Challiane's Terrace, Azsuna
			[1758] = 51, -- Obsidian Overlook, Highmountain
			[1759] = 58, -- Ironhorn Enclave, Highmountain
			[1774] = 64, -- Dalaran
			[1856] = 96, -- Vengeance Point, Broken Shore
			[1859] = 45, -- Felblaze Ingress, Azsuna
			[1879] = 49, -- Crimson Thicket, Suramar
			[1880] = 29, -- Irongrove Retreat, Suramar
		},
	},
	{
		tag = "152:004",
		nodeID = 1859,
		name = "Felblaze Ingress, Azsuna",
		neighbors = {
			[1613] = 27, -- Azurewing Repose, Azsuna
			[1615] = 43, -- Challiane's Terrace, Azsuna
			[1633] = 35, -- Shackle's Den, Azsuna
			[1673] = 51, -- Lorlathil, Val'sharah
			[1774] = 52, -- Dalaran
			[1858] = 45, -- Meredil, Suramar
			[1880] = 48, -- Irongrove Retreat, Suramar
		},
	},
	{
		tag = "059:-548",
		nodeID = 1860,
		name = "Watchers' Aerie, Azsuna",
		neighbors = {
			[1774] = 68, -- Dalaran
			[1837] = 18, -- Wardens' Redoubt, Azsuna
			[1870] = 0, -- Eye of Azshara, Azsuna
		},
	},
	{
		tag = "-94:-178",
		nodeID = 1861,
		name = "Illidari Perch, Azsuna",
		neighbors = {
			[1615] = 44, -- Challiane's Terrace, Azsuna
			[1622] = 23, -- Illidari Stand, Azsuna
			[1837] = 41, -- Wardens' Redoubt, Azsuna
		},
	},
	{
		tag = "633:692",
		nodeID = 1862,
		name = "Acherus: The Ebon Hold, Broken Shore",
		neighbors = {
			[1856] = 0, -- Vengeance Point, Broken Shore
			[1863] = 0, -- Hafr Fjall, Stormheim
			[1879] = 0, -- Crimson Thicket, Suramar
			[1942] = 0, -- Aalgen Point, Broken Shore
		},
	},
	{
		tag = "599:296",
		nodeID = 1863,
		name = "Hafr Fjall, Stormheim",
		neighbors = {
			[1739] = 22, -- Dreadwake's Landing, Stormheim
			[1742] = 38, -- Valdisdall, Stormheim
			[1744] = 41, -- Greywatch, Stormheim
			[1745] = 46, -- Lorna's Watch, Stormheim
			[1774] = 96, -- Dalaran
			[1856] = 68, -- Vengeance Point, Broken Shore
			[1862] = 0, -- Acherus: The Ebon Hold, Broken Shore
			[1879] = 48, -- Crimson Thicket, Suramar
		},
	},
	{
		tag = "246:-913",
		nodeID = 1870,
		name = "Eye of Azshara, Azsuna",
		neighbors = {
			[1633] = 0, -- Shackle's Den, Azsuna
			[1774] = 69, -- Dalaran
			[1856] = 0, -- Vengeance Point, Broken Shore
			[1860] = 0, -- Watchers' Aerie, Azsuna
		},
	},
	{
		tag = "449:319",
		nodeID = 1879,
		name = "Crimson Thicket, Suramar",
		neighbors = {
			[1738] = 38, -- Cullen's Post, Stormheim
			[1745] = 45, -- Lorna's Watch, Stormheim
			[1758] = 55, -- Obsidian Overlook, Highmountain
			[1759] = 77, -- Ironhorn Enclave, Highmountain
			[1774] = 77, -- Dalaran
			[1856] = 76, -- Vengeance Point, Broken Shore
			[1858] = 53, -- Meredil, Suramar
			[1862] = 0, -- Acherus: The Ebon Hold, Broken Shore
			[1863] = 43, -- Hafr Fjall, Stormheim
		},
	},
	{
		tag = "197:407",
		nodeID = 1880,
		name = "Irongrove Retreat, Suramar",
		neighbors = {
			[1613] = 55, -- Azurewing Repose, Azsuna
			[1615] = 60, -- Challiane's Terrace, Azsuna
			[1673] = 51, -- Lorlathil, Val'sharah
			[1758] = 50, -- Obsidian Overlook, Highmountain
			[1764] = 48, -- Starsong Refuge, Val'sharah
			[1766] = 61, -- Garden of the Moon, Val'sharah
			[1777] = 46, -- Sylvan Falls, Highmountain
			[1858] = 29, -- Meredil, Suramar
			[1859] = 48, -- Felblaze Ingress, Azsuna
		},
	},
	{
		tag = "-146:466",
		nodeID = 1885,
		name = "Gloaming Reef, Val'sharah",
		neighbors = {
			[1615] = 49, -- Challiane's Terrace, Azsuna
			[1713] = 27, -- Bradensbrook, Val'sharah
		},
	},
	{
		tag = "439:-511",
		nodeID = 1941,
		name = "Deliverance Point, Broken Shore",
		neighbors = {
			[1774] = 57, -- Dalaran
			[1856] = 30, -- Vengeance Point, Broken Shore
			[1942] = 42, -- Aalgen Point, Broken Shore
		},
	},
	{
		tag = "555:-412",
		nodeID = 1942,
		name = "Aalgen Point, Broken Shore",
		neighbors = {
			[1856] = 30, -- Vengeance Point, Broken Shore
			[1862] = 0, -- Acherus: The Ebon Hold, Broken Shore
			[1941] = 42, -- Deliverance Point, Broken Shore
		},
	},
},
[994]={ -- was 905
	{
		tag = "069:726",
		nodeID = 1981,
		name = "Shadowguard Incursion, Eredath",
		taxioperator = "argusportal",
		neighbors = {
			[1928] = 1, -- Krokul Hovel, Krokuun
			[1967] = 1, -- Shattered Fields, Krokuun
			[1976] = 1, -- Destiny Point, Krokuun
			[1977] = 1, -- Vindicaar, Eredath
			[1978] = 1, -- Conservatory of the Arcane, Eredath
			[1982] = 1, -- Triumvirate's End, Eredath
			[1988] = 1, -- Hope's Landing, Antoran Wastes
			[1991] = 1, -- Prophet's Reflection, Eredath
			[1992] = 1, -- Light's Purchase, Antoran Wastes
			[1993] = 1, -- The Veiled Den, Antoran Wastes
			[2003] = 1, -- City Center, Eredath
		},
	},
	{
		tag = "087:757",
		nodeID = 1991,
		name = "Prophet's Reflection, Eredath",
		taxioperator = "argusportal",
		neighbors = {
			[1928] = 1, -- Krokul Hovel, Krokuun
			[1967] = 1, -- Shattered Fields, Krokuun
			[1976] = 1, -- Destiny Point, Krokuun
			[1977] = 1, -- Vindicaar, Eredath
			[1978] = 1, -- Conservatory of the Arcane, Eredath
			[1981] = 1, -- Shadowguard Incursion, Eredath
			[1982] = 1, -- Triumvirate's End, Eredath
			[1988] = 1, -- Hope's Landing, Antoran Wastes
			[1992] = 1, -- Light's Purchase, Antoran Wastes
			[1993] = 1, -- The Veiled Den, Antoran Wastes
			[2003] = 1, -- City Center, Eredath
		},
	},
	{
		tag = "091:720",
		nodeID = 2003,
		name = "City Center, Eredath",
		taxioperator = "argusportal",
		neighbors = {
			[1928] = 1, -- Krokul Hovel, Krokuun
			[1967] = 1, -- Shattered Fields, Krokuun
			[1976] = 1, -- Destiny Point, Krokuun
			[1977] = 1, -- Vindicaar, Eredath
			[1978] = 1, -- Conservatory of the Arcane, Eredath
			[1981] = 1, -- Shadowguard Incursion, Eredath
			[1982] = 1, -- Triumvirate's End, Eredath
			[1988] = 1, -- Hope's Landing, Antoran Wastes
			[1991] = 1, -- Prophet's Reflection, Eredath
			[1992] = 1, -- Light's Purchase, Antoran Wastes
			[1993] = 1, -- The Veiled Den, Antoran Wastes
		},
	},
	{
		tag = "097:692",
		nodeID = 1977,
		name = "Vindicaar, Eredath",
		taxioperator = "argusportal",
		neighbors = {
			[1928] = 1, -- Krokul Hovel, Krokuun
			[1944] = 1, -- Vindicaar, Krokuun
			[1967] = 1, -- Shattered Fields, Krokuun
			[1976] = 1, -- Destiny Point, Krokuun
			[1978] = 1, -- Conservatory of the Arcane, Eredath
			[1981] = 1, -- Shadowguard Incursion, Eredath
			[1982] = 1, -- Triumvirate's End, Eredath
			[1988] = 1, -- Hope's Landing, Antoran Wastes
			[1991] = 1, -- Prophet's Reflection, Eredath
			[1992] = 1, -- Light's Purchase, Antoran Wastes
			[1993] = 1, -- The Veiled Den, Antoran Wastes
			[1994] = 1, -- Vindicaar, Antoran Wastes
			[2003] = 1, -- City Center, Eredath
		},
	},
	{
		tag = "099:703",
		nodeID = 1982,
		name = "Triumvirate's End, Eredath",
		taxioperator = "argusportal",
		neighbors = {
			[1928] = 1, -- Krokul Hovel, Krokuun
			[1967] = 1, -- Shattered Fields, Krokuun
			[1976] = 1, -- Destiny Point, Krokuun
			[1977] = 1, -- Vindicaar, Eredath
			[1978] = 1, -- Conservatory of the Arcane, Eredath
			[1981] = 1, -- Shadowguard Incursion, Eredath
			[1988] = 1, -- Hope's Landing, Antoran Wastes
			[1991] = 1, -- Prophet's Reflection, Eredath
			[1992] = 1, -- Light's Purchase, Antoran Wastes
			[1993] = 1, -- The Veiled Den, Antoran Wastes
			[2003] = 1, -- City Center, Eredath
		},
	},
	{
		tag = "113:734",
		nodeID = 1978,
		name = "Conservatory of the Arcane, Eredath",
		taxioperator = "argusportal",
		neighbors = {
			[1928] = 1, -- Krokul Hovel, Krokuun
			[1967] = 1, -- Shattered Fields, Krokuun
			[1976] = 1, -- Destiny Point, Krokuun
			[1977] = 1, -- Vindicaar, Eredath
			[1981] = 1, -- Shadowguard Incursion, Eredath
			[1982] = 1, -- Triumvirate's End, Eredath
			[1988] = 1, -- Hope's Landing, Antoran Wastes
			[1991] = 1, -- Prophet's Reflection, Eredath
			[1992] = 1, -- Light's Purchase, Antoran Wastes
			[1993] = 1, -- The Veiled Den, Antoran Wastes
			[2003] = 1, -- City Center, Eredath
		},
	},
	{
		tag = "138:403",
		nodeID = 1993,
		name = "The Veiled Den, Antoran Wastes",
		taxioperator = "argusportal",
		neighbors = {
			[1928] = 1, -- Krokul Hovel, Krokuun
			[1967] = 1, -- Shattered Fields, Krokuun
			[1976] = 1, -- Destiny Point, Krokuun
			[1978] = 1, -- Conservatory of the Arcane, Eredath
			[1981] = 1, -- Shadowguard Incursion, Eredath
			[1982] = 1, -- Triumvirate's End, Eredath
			[1988] = 1, -- Hope's Landing, Antoran Wastes
			[1991] = 1, -- Prophet's Reflection, Eredath
			[1994] = 1, -- Vindicaar, Antoran Wastes
			[2003] = 1, -- City Center, Eredath
		},
	},
	{
		tag = "140:356",
		nodeID = 1992,
		name = "Light's Purchase, Antoran Wastes",
		taxioperator = "argusportal",
		neighbors = {
			[1928] = 1, -- Krokul Hovel, Krokuun
			[1967] = 1, -- Shattered Fields, Krokuun
			[1976] = 1, -- Destiny Point, Krokuun
			[1978] = 1, -- Conservatory of the Arcane, Eredath
			[1981] = 1, -- Shadowguard Incursion, Eredath
			[1982] = 1, -- Triumvirate's End, Eredath
			[1988] = 1, -- Hope's Landing, Antoran Wastes
			[1991] = 1, -- Prophet's Reflection, Eredath
			[1993] = 1, -- The Veiled Den, Antoran Wastes
			[1994] = 1, -- Vindicaar, Antoran Wastes
			[2003] = 1, -- City Center, Eredath
		},
	},
	{
		tag = "141:380",
		nodeID = 1988,
		name = "Hope's Landing, Antoran Wastes",
		taxioperator = "argusportal",
		neighbors = {
			[1928] = 1, -- Krokul Hovel, Krokuun
			[1967] = 1, -- Shattered Fields, Krokuun
			[1976] = 1, -- Destiny Point, Krokuun
			[1978] = 1, -- Conservatory of the Arcane, Eredath
			[1981] = 1, -- Shadowguard Incursion, Eredath
			[1982] = 1, -- Triumvirate's End, Eredath
			[1991] = 1, -- Prophet's Reflection, Eredath
			[1992] = 1, -- Light's Purchase, Antoran Wastes
			[1993] = 1, -- The Veiled Den, Antoran Wastes
			[1994] = 1, -- Vindicaar, Antoran Wastes
			[2003] = 1, -- City Center, Eredath
		},
	},
	{
		tag = "145:392",
		nodeID = 1994,
		name = "Vindicaar, Antoran Wastes",
		taxioperator = "argusportal",
		neighbors = {
			[1928] = 1, -- Krokul Hovel, Krokuun
			[1944] = 1, -- Vindicaar, Krokuun
			[1967] = 1, -- Shattered Fields, Krokuun
			[1976] = 1, -- Destiny Point, Krokuun
			[1977] = 1, -- Vindicaar, Eredath
			[1978] = 1, -- Conservatory of the Arcane, Eredath
			[1981] = 1, -- Shadowguard Incursion, Eredath
			[1982] = 1, -- Triumvirate's End, Eredath
			[1988] = 1, -- Hope's Landing, Antoran Wastes
			[1991] = 1, -- Prophet's Reflection, Eredath
			[1992] = 1, -- Light's Purchase, Antoran Wastes
			[1993] = 1, -- The Veiled Den, Antoran Wastes
			[2003] = 1, -- City Center, Eredath
		},
	},
	{
		tag = "407:544",
		nodeID = 1967,
		name = "Shattered Fields, Krokuun",
		taxioperator = "argusportal",
		neighbors = {
			[1928] = 1, -- Krokul Hovel, Krokuun
			[1944] = 1, -- Vindicaar, Krokuun
			[1976] = 1, -- Destiny Point, Krokuun
			[1978] = 1, -- Conservatory of the Arcane, Eredath
			[1981] = 1, -- Shadowguard Incursion, Eredath
			[1982] = 1, -- Triumvirate's End, Eredath
			[1988] = 1, -- Hope's Landing, Antoran Wastes
			[1991] = 1, -- Prophet's Reflection, Eredath
			[1992] = 1, -- Light's Purchase, Antoran Wastes
			[1993] = 1, -- The Veiled Den, Antoran Wastes
			[2003] = 1, -- City Center, Eredath
		},
	},
	{
		tag = "430:540",
		nodeID = 1928,
		name = "Krokul Hovel, Krokuun",
		taxioperator = "argusportal",
		neighbors = {
			[1944] = 1, -- Vindicaar, Krokuun
			[1967] = 1, -- Shattered Fields, Krokuun
			[1976] = 1, -- Destiny Point, Krokuun
			[1978] = 1, -- Conservatory of the Arcane, Eredath
			[1981] = 1, -- Shadowguard Incursion, Eredath
			[1982] = 1, -- Triumvirate's End, Eredath
			[1988] = 1, -- Hope's Landing, Antoran Wastes
			[1991] = 1, -- Prophet's Reflection, Eredath
			[1992] = 1, -- Light's Purchase, Antoran Wastes
			[1993] = 1, -- The Veiled Den, Antoran Wastes
			[2003] = 1, -- City Center, Eredath
		},
	},
	{
		tag = "440:520",
		nodeID = 1944,
		name = "Vindicaar, Krokuun",
		taxioperator = "argusportal",
		neighbors = {
			[1928] = 1, -- Krokul Hovel, Krokuun
			[1967] = 1, -- Shattered Fields, Krokuun
			[1976] = 1, -- Destiny Point, Krokuun
			[1977] = 1, -- Vindicaar, Eredath
			[1978] = 1, -- Conservatory of the Arcane, Eredath
			[1981] = 1, -- Shadowguard Incursion, Eredath
			[1982] = 1, -- Triumvirate's End, Eredath
			[1988] = 1, -- Hope's Landing, Antoran Wastes
			[1991] = 1, -- Prophet's Reflection, Eredath
			[1992] = 1, -- Light's Purchase, Antoran Wastes
			[1993] = 1, -- The Veiled Den, Antoran Wastes
			[1994] = 1, -- Vindicaar, Antoran Wastes
			[2003] = 1, -- City Center, Eredath
		},
	},
	{
		tag = "441:558",
		nodeID = 1976,
		name = "Destiny Point, Krokuun",
		taxioperator = "argusportal",
		neighbors = {
			[1928] = 1, -- Krokul Hovel, Krokuun
			[1944] = 1, -- Vindicaar, Krokuun
			[1967] = 1, -- Shattered Fields, Krokuun
			[1978] = 1, -- Conservatory of the Arcane, Eredath
			[1981] = 1, -- Shadowguard Incursion, Eredath
			[1982] = 1, -- Triumvirate's End, Eredath
			[1988] = 1, -- Hope's Landing, Antoran Wastes
			[1991] = 1, -- Prophet's Reflection, Eredath
			[1992] = 1, -- Light's Purchase, Antoran Wastes
			[1993] = 1, -- The Veiled Den, Antoran Wastes
			[2003] = 1, -- City Center, Eredath
		},
	},
},
[875]={
	{
		tag = "286:272",
		nodeID = 2119,
		name = "Sanctuary of the Devoted, Vol'dun",
		neighbors = {
			[2110] = 46, -- Shatterstone Harbor, Vol'dun
			[2111] = 49, -- Vorrik's Sanctum, Vol'dun
			[2114] = 57, -- Deadwood Cove, Vol'dun
			[2144] = 39, -- Goldtusk Inn, Vol'dun
		},
	},
	{
		tag = "332:192",
		nodeID = 2110,
		name = "Shatterstone Harbor, Vol'dun",
		neighbors = {
			[2112] = 41, -- Vulture's Nest, Vol'dun
			[2114] = 70, -- Deadwood Cove, Vol'dun
			[2119] = 46, -- Sanctuary of the Devoted, Vol'dun
		},
	},
	{
		tag = "347:439",
		nodeID = 2114,
		name = "Deadwood Cove, Vol'dun",
		neighbors = {
			[2080] = 83, -- Grimwatt's Crash, Nazmir
			[2110] = 70, -- Shatterstone Harbor, Vol'dun
			[2112] = 69, -- Vulture's Nest, Vol'dun
			[2119] = 57, -- Sanctuary of the Devoted, Vol'dun
			[2148] = 77, -- Mugamba Overlook, Zuldazar
		},
	},
	{
		tag = "362:326",
		nodeID = 2144,
		name = "Goldtusk Inn, Vol'dun",
		neighbors = {
			[2111] = 48, -- Vorrik's Sanctum, Vol'dun
			[2117] = 39, -- Vulpera Hideaway, Vol'dun
			[2119] = 39, -- Sanctuary of the Devoted, Vol'dun
			[2143] = 30, -- Scorched Sands Outpost, Vol'dun
		},
	},
	{
		tag = "367:400",
		nodeID = 2143,
		name = "Scorched Sands Outpost, Vol'dun",
		neighbors = {
			[2118] = 34, -- Temple of Akunda, Vol'dun
			[2144] = 30, -- Goldtusk Inn, Vol'dun
		},
	},
	{
		tag = "384:196",
		nodeID = 2111,
		name = "Vorrik's Sanctum, Vol'dun",
		neighbors = {
			[2117] = 34, -- Vulpera Hideaway, Vol'dun
			[2119] = 51, -- Sanctuary of the Devoted, Vol'dun
			[2120] = 46, -- Tortaka Refuge, Vol'dun
			[2144] = 48, -- Goldtusk Inn, Vol'dun
		},
	},
	{
		tag = "416:209",
		nodeID = 2112,
		name = "Vulture's Nest, Vol'dun",
		neighbors = {
			[2080] = 60, -- Grimwatt's Crash, Nazmir
			[2110] = 41, -- Shatterstone Harbor, Vol'dun
			[2114] = 69, -- Deadwood Cove, Vol'dun
			[2120] = 33, -- Tortaka Refuge, Vol'dun
		},
	},
	{
		tag = "416:466",
		nodeID = 2118,
		name = "Temple of Akunda, Vol'dun",
		neighbors = {
			[2045] = 64, -- Garden of the Loa, Zuldazar
			[2117] = 56, -- Vulpera Hideaway, Vol'dun
			[2143] = 34, -- Scorched Sands Outpost, Vol'dun
		},
	},
	{
		tag = "433:267",
		nodeID = 2117,
		name = "Vulpera Hideaway, Vol'dun",
		neighbors = {
			[1953] = 57, -- Zul'jan, Nazmir
			[1954] = 48, -- Zo'bal Ruins, Nazmir
			[2111] = 35, -- Vorrik's Sanctum, Vol'dun
			[2118] = 56, -- Temple of Akunda, Vol'dun
			[2120] = 42, -- Tortaka Refuge, Vol'dun
			[2144] = 39, -- Goldtusk Inn, Vol'dun
		},
	},
	{
		tag = "457:129",
		nodeID = 2120,
		name = "Tortaka Refuge, Vol'dun",
		neighbors = {
			[1954] = 0, -- Zo'bal Ruins, Nazmir
			[2111] = 46, -- Vorrik's Sanctum, Vol'dun
			[2112] = 33, -- Vulture's Nest, Vol'dun
			[2117] = 42, -- Vulpera Hideaway, Vol'dun
			[2161] = 59, -- Redfield's Watch, Nazmir
		},
	},
	{
		tag = "472:788",
		nodeID = 2012,
		name = "Xibala, Zuldazar",
		faction = "A",
		neighbors = {
			[2075] = 78, -- Seeker's Outpost, Zuldazar
			[2126] = 0, -- Scaletrader Post, Zuldazar
			[2153] = 80, -- Mistvine Ledge, Zuldazar
			[2157] = 75, -- Veiled Grotto, Zuldazar
			["498:513"] = 0, -- Mugamba Overlook, Zuldazar
		},
	},
	{
		tag = "496:573",
		nodeID = 2157,
		name = "Veiled Grotto, Zuldazar",
		neighbors = {
			[2012] = 75, -- Xibala, Zuldazar
			[2075] = 99, -- Seeker's Outpost, Zuldazar
			[2145] = 53, -- Verdant Hollow, Zuldazar
			[2148] = 36, -- Mugamba Overlook, Zuldazar
			[2153] = 69, -- Mistvine Ledge, Zuldazar
		},
	},
	{
		tag = "498:513",
		nodeID = 2148,
		name = "Mugamba Overlook, Zuldazar",
		neighbors = {
			[2012] = 0, -- Xibala, Zuldazar
			[2080] = 49, -- Grimwatt's Crash, Nazmir
			[2114] = 77, -- Deadwood Cove, Vol'dun
			[2145] = 35, -- Verdant Hollow, Zuldazar
			[2157] = 36, -- Veiled Grotto, Zuldazar
		},
	},
	{
		tag = "498:792",
		nodeID = 1974,
		name = "Xibala, Zuldazar",
		faction = "H",
		neighbors = {
			[2009] = 29, -- Warport Rastari, Zuldazar
			[2164] = 36, -- Isle of Fangs, Zuldazar
		},
	},
	{
		tag = "506:567",
		nodeID = 2046,
		name = "Atal'dazar, Zuldazar",
		neighbors = {
			[1959] = 41, -- The Great Seal
			[2027] = 41, -- Temple of the Prophet, Zuldazar
			[2045] = 36, -- Garden of the Loa, Zuldazar
		},
	},
	{
		tag = "518:353",
		nodeID = 2080,
		name = "Grimwatt's Crash, Nazmir",
		neighbors = {
			[2078] = 56, -- Fort Victory - Nazmir (Alliance)
			[2112] = 60, -- Vulture's Nest, Vol'dun
			[2114] = 83, -- Deadwood Cove, Vol'dun
			[2145] = 44, -- Verdant Hollow, Zuldazar
			[2148] = 49, -- Mugamba Overlook, Zuldazar
			[2161] = 51, -- Redfield's Watch, Nazmir
		},
	},
	{
		tag = "519:719",
		nodeID = 2009,
		name = "Warport Rastari, Zuldazar",
		neighbors = {
			[1957] = 34, -- Port of Zandalar, Zuldazar
			[1959] = 53, -- The Great Seal
			[1974] = 29, -- Xibala, Zuldazar
			[2381] = 18, -- The Mugambala, Zuldazar
		},
	},
	{
		tag = "528:508",
		nodeID = 2045,
		name = "Garden of the Loa, Zuldazar",
		neighbors = {
			[1953] = 34, -- Zul'jan, Nazmir
			[1959] = 39, -- The Great Seal
			[1965] = 44, -- Nesingwary's Gameland, Zuldazar
			[2027] = 25, -- Temple of the Prophet, Zuldazar
			[2046] = 36, -- Atal'dazar, Zuldazar
			[2061] = 39, -- The Sliver, Zuldazar
			[2118] = 64, -- Temple of Akunda, Vol'dun
		},
	},
	{
		tag = "528:621",
		nodeID = 2027,
		name = "Temple of the Prophet, Zuldazar",
		neighbors = {
			[1957] = 41, -- Port of Zandalar, Zuldazar
			[1959] = 39, -- The Great Seal
			[2045] = 25, -- Garden of the Loa, Zuldazar
			[2046] = 41, -- Atal'dazar, Zuldazar
			[2061] = 29, -- The Sliver, Zuldazar
			[2381] = 34, -- The Mugambala, Zuldazar
		},
	},
	{
		tag = "536:410",
		nodeID = 1953,
		name = "Zul'jan, Nazmir",
		neighbors = {
			[1954] = 42, -- Zo'bal Ruins, Nazmir
			[1955] = 62, -- Gloom Hollow, Nazmir
			[1965] = 42, -- Nesingwary's Gameland, Zuldazar
			[2045] = 36, -- Garden of the Loa, Zuldazar
			[2061] = 60, -- The Sliver, Zuldazar
			[2117] = 57, -- Vulpera Hideaway, Vol'dun
		},
	},
	{
		tag = "540:274",
		nodeID = 1954,
		name = "Zo'bal Ruins, Nazmir",
		neighbors = {
			[1953] = 40, -- Zul'jan, Nazmir
			[1955] = 47, -- Gloom Hollow, Nazmir
			[2117] = 48, -- Vulpera Hideaway, Vol'dun
			[2120] = 0, -- Tortaka Refuge, Vol'dun
		},
	},
	{
		tag = "551:700",
		nodeID = 2381,
		name = "The Mugambala, Zuldazar",
		neighbors = {
			[1957] = 20, -- Port of Zandalar, Zuldazar
			[1959] = 36, -- The Great Seal
			[2009] = 18, -- Warport Rastari, Zuldazar
			[2027] = 34, -- Temple of the Prophet, Zuldazar
		},
	},
	{
		tag = "557:884",
		nodeID = 2164,
		name = "Isle of Fangs, Zuldazar",
		neighbors = {
			[1974] = 36, -- Xibala, Zuldazar
			[2165] = 23, -- Tusk Isle, Zuldazar
		},
	},
	{
		tag = "565:499",
		nodeID = 2145,
		name = "Verdant Hollow, Zuldazar",
		neighbors = {
			[1965] = 38, -- Nesingwary's Gameland, Zuldazar
			[2078] = 68, -- Fort Victory - Nazmir (Alliance)
			[2080] = 44, -- Grimwatt's Crash, Nazmir
			[2126] = 47, -- Scaletrader Post, Zuldazar
			[2148] = 35, -- Mugamba Overlook, Zuldazar
			[2153] = 56, -- Mistvine Ledge, Zuldazar
			[2157] = 53, -- Veiled Grotto, Zuldazar
		},
	},
	{
		tag = "583:610",
		nodeID = 1959,
		name = "The Great Seal",
		neighbors = {
			[1957] = 46, -- Port of Zandalar, Zuldazar
			[1966] = 24, -- Warbeast Kraal, Zuldazar
			[2009] = 53, -- Warport Rastari, Zuldazar
			[2027] = 39, -- Temple of the Prophet, Zuldazar
			[2045] = 39, -- Garden of the Loa, Zuldazar
			[2046] = 41, -- Atal'dazar, Zuldazar
			[2061] = 21, -- The Sliver, Zuldazar
			[2381] = 36, -- The Mugambala, Zuldazar
		},
	},
	{
		tag = "584:711",
		nodeID = 1957,
		name = "Port of Zandalar, Zuldazar",
		neighbors = {
			[1959] = 46, -- The Great Seal
			[1966] = 50, -- Warbeast Kraal, Zuldazar
			[2009] = 34, -- Warport Rastari, Zuldazar
			[2027] = 41, -- Temple of the Prophet, Zuldazar
			[2075] = 50, -- Seeker's Outpost, Zuldazar
			[2126] = 62, -- Scaletrader Post, Zuldazar
			[2165] = 34, -- Tusk Isle, Zuldazar
			[2381] = 20, -- The Mugambala, Zuldazar
		},
	},
	{
		tag = "586:565",
		nodeID = 2061,
		name = "The Sliver, Zuldazar",
		neighbors = {
			[1953] = 60, -- Zul'jan, Nazmir
			[1959] = 21, -- The Great Seal
			[1965] = 36, -- Nesingwary's Gameland, Zuldazar
			[1966] = 31, -- Warbeast Kraal, Zuldazar
			[2027] = 29, -- Temple of the Prophet, Zuldazar
			[2045] = 39, -- Garden of the Loa, Zuldazar
			[2126] = 38, -- Scaletrader Post, Zuldazar
		},
	},
	{
		tag = "588:828",
		nodeID = 2165,
		name = "Tusk Isle, Zuldazar",
		neighbors = {
			[1957] = 38, -- Port of Zandalar, Zuldazar
			[2075] = 49, -- Seeker's Outpost, Zuldazar
			[2164] = 23, -- Isle of Fangs, Zuldazar
		},
	},
	{
		tag = "619:639",
		nodeID = 2153,
		name = "Mistvine Ledge, Zuldazar",
		neighbors = {
			[2012] = 80, -- Xibala, Zuldazar
			[2075] = 69, -- Seeker's Outpost, Zuldazar
			[2076] = 52, -- Atal'Gral, Zuldazar
			[2126] = 49, -- Scaletrader Post, Zuldazar
			[2145] = 56, -- Verdant Hollow, Zuldazar
			[2157] = 69, -- Veiled Grotto, Zuldazar
			["701:682"] = 0, -- Talanji's Rebuke, Zuldazar
		},
	},
	{
		tag = "625:269",
		nodeID = 2078,
		name = "Fort Victory - Nazmir (Alliance)",
		neighbors = {
			[1965] = 66, -- Nesingwary's Gameland, Zuldazar
			[2080] = 56, -- Grimwatt's Crash, Nazmir
			[2145] = 68, -- Verdant Hollow, Zuldazar
			[2161] = 31, -- Redfield's Watch, Nazmir
		},
	},
	{
		tag = "631:455",
		nodeID = 1965,
		name = "Nesingwary's Gameland, Zuldazar",
		neighbors = {
			[1953] = 42, -- Zul'jan, Nazmir
			[1955] = 61, -- Gloom Hollow, Nazmir
			[1975] = 46, -- Zeb'ahari, Zuldazar
			[2045] = 44, -- Garden of the Loa, Zuldazar
			[2061] = 36, -- The Sliver, Zuldazar
			[2078] = 66, -- Fort Victory - Nazmir (Alliance)
			[2126] = 32, -- Scaletrader Post, Zuldazar
			[2145] = 38, -- Verdant Hollow, Zuldazar
		},
	},
	{
		tag = "637:612",
		nodeID = 1966,
		name = "Warbeast Kraal, Zuldazar",
		neighbors = {
			[1957] = 50, -- Port of Zandalar, Zuldazar
			[1959] = 24, -- The Great Seal
			[2061] = 31, -- The Sliver, Zuldazar
			[2066] = 0, -- Atal'Gral, Zuldazar
			[2076] = 42, -- Atal'Gral, Zuldazar
			[2126] = 28, -- Scaletrader Post, Zuldazar
		},
	},
	{
		tag = "644:276",
		nodeID = 1955,
		name = "Gloom Hollow, Nazmir",
		neighbors = {
			[1953] = 62, -- Zul'jan, Nazmir
			[1954] = 47, -- Zo'bal Ruins, Nazmir
			[1956] = 0, -- Forlorn Ruins, Nazmir
			[1965] = 61, -- Nesingwary's Gameland, Zuldazar
			[1975] = 57, -- Zeb'ahari, Zuldazar
		},
	},
	{
		tag = "657:750",
		nodeID = 2075,
		name = "Seeker's Outpost, Zuldazar",
		neighbors = {
			[1957] = 50, -- Port of Zandalar, Zuldazar
			[2012] = 78, -- Xibala, Zuldazar
			[2066] = 0, -- Atal'Gral, Zuldazar
			[2076] = 66, -- Atal'Gral, Zuldazar
			[2147] = 40, -- Castaway Encampment, Zuldazar
			[2153] = 69, -- Mistvine Ledge, Zuldazar
			[2157] = 99, -- Veiled Grotto, Zuldazar
			[2165] = 49, -- Tusk Isle, Zuldazar
		},
	},
	{
		tag = "659:529",
		nodeID = 2126,
		name = "Scaletrader Post, Zuldazar",
		neighbors = {
			[1957] = 62, -- Port of Zandalar, Zuldazar
			[1965] = 32, -- Nesingwary's Gameland, Zuldazar
			[1966] = 28, -- Warbeast Kraal, Zuldazar
			[1975] = 41, -- Zeb'ahari, Zuldazar
			[2012] = 0, -- Xibala, Zuldazar
			[2061] = 38, -- The Sliver, Zuldazar
			[2066] = 0, -- Atal'Gral, Zuldazar
			[2076] = 42, -- Atal'Gral, Zuldazar
			[2145] = 47, -- Verdant Hollow, Zuldazar
			[2153] = 49, -- Mistvine Ledge, Zuldazar
		},
	},
	{
		tag = "666:777",
		nodeID = 2147,
		name = "Castaway Encampment, Zuldazar",
		neighbors = {
			[2075] = 40, -- Seeker's Outpost, Zuldazar
			[2076] = 27, -- Atal'Gral, Zuldazar
		},
	},
	{
		tag = "666:778",
		nodeID = 2161,
		name = "Redfield's Watch, Nazmir",
		neighbors = {
		},
	},
	{
		tag = "666:779",
		nodeID = 2161,
		name = "Redfield's Watch, Nazmir",
		neighbors = {
			[2078] = 31, -- Fort Victory - Nazmir (Alliance)
			[2080] = 51, -- Grimwatt's Crash, Nazmir
			[2120] = 59, -- Tortaka Refuge, Vol'dun
		},
	},
	{
		tag = "699:441",
		nodeID = 1975,
		name = "Zeb'ahari, Zuldazar",
		neighbors = {
			[1955] = 57, -- Gloom Hollow, Nazmir
			[1965] = 46, -- Nesingwary's Gameland, Zuldazar
			[2066] = 0, -- Atal'Gral, Zuldazar
			[2076] = 52, -- Atal'Gral, Zuldazar
			[2126] = 41, -- Scaletrader Post, Zuldazar
		},
	},
	{
		tag = "700:212",
		nodeID = 1956,
		name = "Forlorn Ruins, Nazmir",
		neighbors = {
			[1955] = 0, -- Gloom Hollow, Nazmir
		},
	},
	{
		tag = "701:682",
		name = "Talanji's Rebuke, Zuldazar",
		neighbors = {
			["619:639"] = 0, -- Mistvine Ledge, Zuldazar
		},
	},
	{
		tag = "716:601",
		nodeID = 2066,
		name = "Atal'Gral, Zuldazar",
		neighbors = {
			[1966] = 0, -- Warbeast Kraal, Zuldazar
			[1975] = 0, -- Zeb'ahari, Zuldazar
			[2075] = 0, -- Seeker's Outpost, Zuldazar
			[2126] = 0, -- Scaletrader Post, Zuldazar
		},
	},
	{
		tag = "716:602",
		nodeID = 2076,
		name = "Atal'Gral, Zuldazar",
		neighbors = {
			[1966] = 42, -- Warbeast Kraal, Zuldazar
			[1975] = 52, -- Zeb'ahari, Zuldazar
			[2075] = 66, -- Seeker's Outpost, Zuldazar
			[2126] = 42, -- Scaletrader Post, Zuldazar
			[2147] = 27, -- Castaway Encampment, Zuldazar
			[2153] = 57, -- Mistvine Ledge, Zuldazar
		},
	},
},
[876]={
	{
		tag = "199:250",
		nodeID = 2441,
		name = "Prospectus Bay, Mechagon",
		neighbors = {
			[2089] = 0, -- Seekers Vista, Stormsong Valley
			[2094] = 0, -- Warfang Hold, Stormsong Valley
			[2109] = 0, -- Whitegrove Chapel, Drustvar
		},
	},
	{
		tag = "207:278",
		nodeID = 2442,
		name = "Overspark Expedition Camp, Mechagon",
		neighbors = {
			[2089] = 0, -- Seekers Vista, Stormsong Valley
			[2109] = 62, -- Whitegrove Chapel, Drustvar
			[2137] = 68, -- Millstone Hamlet, Stormsong Valley
		},
	},
	{
		tag = "254:654",
		nodeID = 2127,
		name = "Anyport, Drustvar",
		neighbors = {
			[2106] = 41, -- Arom's Stand, Drustvar
			[2107] = 33, -- Watchman's Rise, Drustvar
			[2108] = 40, -- Falconhurst, Drustvar
			[2109] = 34, -- Whitegrove Chapel, Drustvar
			[2135] = 0, -- Krazzlefrazz Outpost, Drustvar
			[2274] = 0, -- Swiftwind Post, Drustvar
		},
	},
	{
		tag = "283:536",
		nodeID = 2109,
		name = "Whitegrove Chapel, Drustvar",
		neighbors = {
			[2087] = 55, -- Outrigger Post, Tiragarde Sound
			[2107] = 25, -- Watchman's Rise, Drustvar
			[2127] = 34, -- Anyport, Drustvar
			[2135] = 0, -- Krazzlefrazz Outpost, Drustvar
			[2273] = 0, -- Waning Glacier, Tiragarde Sound
			[2441] = 0, -- Prospectus Bay, Mechagon
			[2442] = 62, -- Overspark Expedition Camp, Mechagon
		},
	},
	{
		tag = "289:783",
		nodeID = 2108,
		name = "Falconhurst, Drustvar",
		neighbors = {
			[2035] = 76, -- Fletcher's Hollow, Drustvar
			[2106] = 36, -- Arom's Stand, Drustvar
			[2107] = 48, -- Watchman's Rise, Drustvar
			[2127] = 40, -- Anyport, Drustvar
		},
	},
	{
		tag = "311:598",
		nodeID = 2107,
		name = "Watchman's Rise, Drustvar",
		neighbors = {
			[2033] = 43, -- Fallhaven, Drustvar
			[2037] = 55, -- Barbthorn Ridge, Drustvar
			[2106] = 33, -- Arom's Stand, Drustvar
			[2108] = 48, -- Falconhurst, Drustvar
			[2109] = 25, -- Whitegrove Chapel, Drustvar
			[2127] = 33, -- Anyport, Drustvar
		},
	},
	{
		tag = "336:570",
		nodeID = 2135,
		name = "Krazzlefrazz Outpost, Drustvar",
		neighbors = {
			[2109] = 0, -- Whitegrove Chapel, Drustvar
			[2127] = 0, -- Anyport, Drustvar
			[2274] = 0, -- Swiftwind Post, Drustvar
			[2275] = 0, -- Mudfisher Cove, Drustvar
		},
	},
	{
		tag = "339:695",
		nodeID = 2106,
		name = "Arom's Stand, Drustvar",
		neighbors = {
			[2033] = 39, -- Fallhaven, Drustvar
			[2035] = 58, -- Fletcher's Hollow, Drustvar
			[2107] = 33, -- Watchman's Rise, Drustvar
			[2108] = 36, -- Falconhurst, Drustvar
			[2127] = 41, -- Anyport, Drustvar
		},
	},
	{
		tag = "400:484",
		nodeID = 2087,
		name = "Outrigger Post, Tiragarde Sound",
		neighbors = {
			[2102] = 23, -- Roughneck Camp, Tiragarde Sound
			[2109] = 55, -- Whitegrove Chapel, Drustvar
		},
	},
	{
		tag = "416:617",
		nodeID = 2033,
		name = "Fallhaven, Drustvar",
		neighbors = {
			[2034] = 31, -- Hangman's Point, Drustvar
			[2037] = 31, -- Barbthorn Ridge, Drustvar
			[2106] = 40, -- Arom's Stand, Drustvar
			[2107] = 43, -- Watchman's Rise, Drustvar
		},
	},
	{
		tag = "424:448",
		nodeID = 2273,
		name = "Waning Glacier, Tiragarde Sound",
		neighbors = {
			[2062] = 0, -- Wolf's Den, Tiragarde Sound
			[2091] = 0, -- Stonetusk Watch, Stormsong Valley
			[2109] = 0, -- Whitegrove Chapel, Drustvar
			[2275] = 0, -- Mudfisher Cove, Drustvar
		},
	},
	{
		tag = "438:518",
		nodeID = 2052,
		name = "Anglepoint Wharf, Tiragarde Sound",
		taxioperator = "ferry",
		neighbors = {
			[2054] = 73, -- Firebreaker Expedition, Tiragarde Sound
			[2056] = 50, -- Fallhaven, Drustvar
		},
	},
	{
		tag = "440:473",
		nodeID = 2102,
		name = "Roughneck Camp, Tiragarde Sound",
		neighbors = {
			[2037] = 34, -- Barbthorn Ridge, Drustvar
			[2084] = 28, -- Norwington Estate, Tiragarde Sound
			[2087] = 24, -- Outrigger Post, Tiragarde Sound
			[2137] = 56, -- Millstone Hamlet, Stormsong Valley
		},
	},
	{
		tag = "446:625",
		nodeID = 2056,
		name = "Fallhaven, Drustvar",
		taxioperator = "ferry",
		neighbors = {
			[2052] = 51, -- Anglepoint Wharf, Tiragarde Sound
			[2053] = 36, -- Old Drust Road, Tiragarde Sound
			[2057] = 59, -- Fletcher's Hollow, Drustvar
		},
	},
	{
		tag = "447:538",
		nodeID = 2275,
		name = "Mudfisher Cove, Drustvar",
		neighbors = {
			[2062] = 0, -- Wolf's Den, Tiragarde Sound
			[2067] = 0, -- Timberfell Outpost, Tiragarde Sound
			[2135] = 0, -- Krazzlefrazz Outpost, Drustvar
			[2273] = 0, -- Waning Glacier, Tiragarde Sound
			[2274] = 0, -- Swiftwind Post, Drustvar
		},
	},
	{
		tag = "450:569",
		nodeID = 2037,
		name = "Barbthorn Ridge, Drustvar",
		neighbors = {
			[2033] = 35, -- Fallhaven, Drustvar
			[2034] = 28, -- Hangman's Point, Drustvar
			[2084] = 27, -- Norwington Estate, Tiragarde Sound
			[2102] = 34, -- Roughneck Camp, Tiragarde Sound
			[2107] = 55, -- Watchman's Rise, Drustvar
		},
	},
	{
		tag = "459:304",
		nodeID = 2137,
		name = "Millstone Hamlet, Stormsong Valley",
		neighbors = {
			[2097] = 35, -- Deadwash, Stormsong Valley
			[2101] = 50, -- The Amber Waves, Stormsong Valley
			[2102] = 56, -- Roughneck Camp, Tiragarde Sound
			[2138] = 27, -- Fort Daelin, Stormsong Valley
			[2442] = 68, -- Overspark Expedition Camp, Mechagon
		},
	},
	{
		tag = "467:725",
		nodeID = 2274,
		name = "Swiftwind Post, Drustvar",
		neighbors = {
			[2062] = 0, -- Wolf's Den, Tiragarde Sound
			[2127] = 0, -- Anyport, Drustvar
			[2135] = 0, -- Krazzlefrazz Outpost, Drustvar
			[2275] = 0, -- Mudfisher Cove, Drustvar
			[2279] = 0, -- Stonefist Watch, Tiragarde Sound
		},
	},
	{
		tag = "474:220",
		nodeID = 2138,
		name = "Fort Daelin, Stormsong Valley",
		neighbors = {
			[2089] = 22, -- Seekers Vista, Stormsong Valley
			[2097] = 26, -- Deadwash, Stormsong Valley
			[2137] = 27, -- Millstone Hamlet, Stormsong Valley
		},
	},
	{
		tag = "480:718",
		nodeID = 2057,
		name = "Fletcher's Hollow, Drustvar",
		taxioperator = "ferry",
		neighbors = {
			[2053] = 34, -- Old Drust Road, Tiragarde Sound
			[2056] = 59, -- Fallhaven, Drustvar
		},
	},
	{
		tag = "484:730",
		nodeID = 2035,
		name = "Fletcher's Hollow, Drustvar",
		neighbors = {
			[2034] = 25, -- Hangman's Point, Drustvar
			[2042] = 26, -- Vigil Hill, Tiragarde Sound
			[2106] = 58, -- Arom's Stand, Drustvar
			[2108] = 76, -- Falconhurst, Drustvar
		},
	},
	{
		tag = "488:643",
		nodeID = 2034,
		name = "Hangman's Point, Drustvar",
		neighbors = {
			[2033] = 31, -- Fallhaven, Drustvar
			[2035] = 30, -- Fletcher's Hollow, Drustvar
			[2037] = 28, -- Barbthorn Ridge, Drustvar
			[2042] = 28, -- Vigil Hill, Tiragarde Sound
			[2060] = 58, -- Hatherford, Tiragarde Sound
			[2084] = 0, -- Norwington Estate, Tiragarde Sound
			[2277] = 58, -- Proudmoore Keep, Tiragarde Sound
		},
	},
	{
		tag = "495:305",
		nodeID = 2091,
		name = "Stonetusk Watch, Stormsong Valley",
		neighbors = {
			[2089] = 0, -- Seekers Vista, Stormsong Valley
			[2090] = 0, -- Hillcrest Pasture, Stormsong Valley
			[2092] = 0, -- Diretusk Hollow, Stormsong Valley
			[2273] = 0, -- Waning Glacier, Tiragarde Sound
		},
	},
	{
		tag = "500:176",
		nodeID = 2089,
		name = "Seekers Vista, Stormsong Valley",
		neighbors = {
			[2085] = 53, -- Tidecross, Stormsong Valley
			[2091] = 0, -- Stonetusk Watch, Stormsong Valley
			[2094] = 0, -- Warfang Hold, Stormsong Valley
			[2138] = 19, -- Fort Daelin, Stormsong Valley
			[2441] = 0, -- Prospectus Bay, Mechagon
			[2442] = 0, -- Overspark Expedition Camp, Mechagon
		},
	},
	{
		tag = "501:506",
		nodeID = 2084,
		name = "Norwington Estate, Tiragarde Sound",
		neighbors = {
			[2034] = 0, -- Hangman's Point, Drustvar
			[2037] = 27, -- Barbthorn Ridge, Drustvar
			[2060] = 40, -- Hatherford, Tiragarde Sound
			[2074] = 58, -- Bridgeport, Tiragarde Sound
			[2102] = 28, -- Roughneck Camp, Tiragarde Sound
			[2277] = 39, -- Proudmoore Keep, Tiragarde Sound
		},
	},
	{
		tag = "502:703",
		nodeID = 2279,
		name = "Stonefist Watch, Tiragarde Sound",
		neighbors = {
			[2023] = 0, -- Freehold, Tiragarde Sound
			[2062] = 0, -- Wolf's Den, Tiragarde Sound
			[2067] = 0, -- Timberfell Outpost, Tiragarde Sound
			[2274] = 0, -- Swiftwind Post, Drustvar
		},
	},
	{
		tag = "507:646",
		nodeID = 2053,
		name = "Old Drust Road, Tiragarde Sound",
		taxioperator = "ferry",
		neighbors = {
			[2055] = 55, -- Southwind Ferry Dock, Tiragarde Sound
			[2056] = 35, -- Fallhaven, Drustvar
			[2057] = 35, -- Fletcher's Hollow, Drustvar
		},
	},
	{
		tag = "513:264",
		nodeID = 2097,
		name = "Deadwash, Stormsong Valley",
		neighbors = {
			[2085] = 45, -- Tidecross, Stormsong Valley
			[2101] = 23, -- The Amber Waves, Stormsong Valley
			[2137] = 25, -- Millstone Hamlet, Stormsong Valley
			[2138] = 26, -- Fort Daelin, Stormsong Valley
		},
	},
	{
		tag = "529:694",
		nodeID = 2042,
		name = "Vigil Hill, Tiragarde Sound",
		neighbors = {
			[2023] = 62, -- Freehold, Tiragarde Sound
			[2034] = 28, -- Hangman's Point, Drustvar
			[2035] = 26, -- Fletcher's Hollow, Drustvar
			[2060] = 69, -- Hatherford, Tiragarde Sound
			[2074] = 53, -- Bridgeport, Tiragarde Sound
			[2079] = 41, -- Kennings Lodge, Tiragarde Sound
			[2277] = 51, -- Proudmoore Keep, Tiragarde Sound
		},
	},
	{
		tag = "548:320",
		nodeID = 2101,
		name = "The Amber Waves, Stormsong Valley",
		neighbors = {
			[2086] = 20, -- Brennadam, Stormsong Valley
			[2097] = 23, -- Deadwash, Stormsong Valley
			[2137] = 50, -- Millstone Hamlet, Stormsong Valley
		},
	},
	{
		tag = "551:160",
		nodeID = 2094,
		name = "Warfang Hold, Stormsong Valley",
		neighbors = {
			[2089] = 0, -- Seekers Vista, Stormsong Valley
			[2092] = 0, -- Diretusk Hollow, Stormsong Valley
			[2139] = 0, -- Windfall Cavern, Stormsong Valley
			[2441] = 0, -- Prospectus Bay, Mechagon
		},
	},
	{
		tag = "554:420",
		nodeID = 2062,
		name = "Wolf's Den, Tiragarde Sound",
		neighbors = {
			[2067] = 0, -- Timberfell Outpost, Tiragarde Sound
			[2090] = 0, -- Hillcrest Pasture, Stormsong Valley
			[2273] = 0, -- Waning Glacier, Tiragarde Sound
			[2274] = 0, -- Swiftwind Post, Drustvar
			[2275] = 0, -- Mudfisher Cove, Drustvar
			[2279] = 0, -- Stonefist Watch, Tiragarde Sound
		},
	},
	{
		tag = "557:364",
		nodeID = 2090,
		name = "Hillcrest Pasture, Stormsong Valley",
		neighbors = {
			[2062] = 0, -- Wolf's Den, Tiragarde Sound
			[2091] = 0, -- Stonetusk Watch, Stormsong Valley
			[2092] = 0, -- Diretusk Hollow, Stormsong Valley
			[2093] = 0, -- Ironmaul Overlook, Stormsong Valley
		},
	},
	{
		tag = "564:228",
		nodeID = 2092,
		name = "Diretusk Hollow, Stormsong Valley",
		neighbors = {
			[2090] = 0, -- Hillcrest Pasture, Stormsong Valley
			[2091] = 0, -- Stonetusk Watch, Stormsong Valley
			[2093] = 0, -- Ironmaul Overlook, Stormsong Valley
			[2094] = 0, -- Warfang Hold, Stormsong Valley
		},
	},
	{
		tag = "564:517",
		nodeID = 2054,
		name = "Firebreaker Expedition, Tiragarde Sound",
		taxioperator = "ferry",
		neighbors = {
			[2052] = 73, -- Anglepoint Wharf, Tiragarde Sound
			[2105] = 41, -- Tradewinds Market Harbor, Tiragarde Sound
		},
	},
	{
		tag = "581:626",
		nodeID = 2055,
		name = "Southwind Ferry Dock, Tiragarde Sound",
		taxioperator = "ferry",
		neighbors = {
			[2053] = 55, -- Old Drust Road, Tiragarde Sound
			[2104] = 27, -- Eastpoint Station, Tiragarde Sound
		},
	},
	{
		tag = "582:474",
		nodeID = 2060,
		name = "Hatherford, Tiragarde Sound",
		neighbors = {
			[2034] = 56, -- Hangman's Point, Drustvar
			[2042] = 69, -- Vigil Hill, Tiragarde Sound
			[2083] = 18, -- Tradewinds Market, Tiragarde Sound
			[2084] = 40, -- Norwington Estate, Tiragarde Sound
			[2086] = 48, -- Brennadam, Stormsong Valley
			[2277] = 24, -- Proudmoore Keep, Tiragarde Sound
		},
	},
	{
		tag = "588:321",
		nodeID = 2086,
		name = "Brennadam, Stormsong Valley",
		neighbors = {
			[2060] = 48, -- Hatherford, Tiragarde Sound
			[2085] = 36, -- Tidecross, Stormsong Valley
			[2088] = 22, -- Mildenhall Meadery, Stormsong Valley
			[2101] = 20, -- The Amber Waves, Stormsong Valley
		},
	},
	{
		tag = "593:132",
		nodeID = 2139,
		name = "Windfall Cavern, Stormsong Valley",
		neighbors = {
			[2094] = 0, -- Warfang Hold, Stormsong Valley
			[2095] = 0, -- Shrine of the Storm, Stormsong Valley
		},
	},
	{
		tag = "594:545",
		nodeID = 2277,
		name = "Proudmoore Keep, Tiragarde Sound",
		neighbors = {
			[2034] = 56, -- Hangman's Point, Drustvar
			[2042] = 51, -- Vigil Hill, Tiragarde Sound
			[2060] = 25, -- Hatherford, Tiragarde Sound
			[2074] = 27, -- Bridgeport, Tiragarde Sound
			[2083] = 23, -- Tradewinds Market, Tiragarde Sound
			[2084] = 39, -- Norwington Estate, Tiragarde Sound
			[2278] = 17, -- Mariner's Row, Tiragarde Sound
		},
	},
	{
		tag = "613:639",
		nodeID = 2067,
		name = "Timberfell Outpost, Tiragarde Sound",
		neighbors = {
			[2023] = 0, -- Freehold, Tiragarde Sound
			[2062] = 0, -- Wolf's Den, Tiragarde Sound
			[2077] = 0, -- Castaway Point, Tiragarde Sound
			[2140] = 36, -- Plunder Harbor, Tiragarde Sound
			[2275] = 0, -- Mudfisher Cove, Drustvar
			[2279] = 0, -- Stonefist Watch, Tiragarde Sound
		},
	},
	{
		tag = "614:223",
		nodeID = 2085,
		name = "Tidecross, Stormsong Valley",
		neighbors = {
			[2086] = 36, -- Brennadam, Stormsong Valley
			[2088] = 31, -- Mildenhall Meadery, Stormsong Valley
			[2089] = 53, -- Seekers Vista, Stormsong Valley
			[2097] = 45, -- Deadwash, Stormsong Valley
			[2133] = 33, -- Shrine of the Storm, Stormsong Valley
		},
	},
	{
		tag = "621:476",
		nodeID = 2083,
		name = "Tradewinds Market, Tiragarde Sound",
		neighbors = {
			[2060] = 18, -- Hatherford, Tiragarde Sound
			[2074] = 39, -- Bridgeport, Tiragarde Sound
			[2096] = 68, -- Tol Dagor, Tiragarde Sound
			[2277] = 23, -- Proudmoore Keep, Tiragarde Sound
			[2278] = 28, -- Mariner's Row, Tiragarde Sound
		},
	},
	{
		tag = "624:595",
		nodeID = 2104,
		name = "Eastpoint Station, Tiragarde Sound",
		taxioperator = "ferry",
		neighbors = {
			[2055] = 27, -- Southwind Ferry Dock, Tiragarde Sound
			[2105] = 67, -- Tradewinds Market Harbor, Tiragarde Sound
		},
	},
	{
		tag = "627:297",
		nodeID = 2088,
		name = "Mildenhall Meadery, Stormsong Valley",
		neighbors = {
			[2085] = 31, -- Tidecross, Stormsong Valley
			[2086] = 22, -- Brennadam, Stormsong Valley
		},
	},
	{
		tag = "630:489",
		nodeID = 2105,
		name = "Tradewinds Market Harbor, Tiragarde Sound",
		taxioperator = "ferry",
		neighbors = {
			[2054] = 45, -- Firebreaker Expedition, Tiragarde Sound
			[2104] = 67, -- Eastpoint Station, Tiragarde Sound
		},
	},
	{
		tag = "634:620",
		nodeID = 2074,
		name = "Bridgeport, Tiragarde Sound",
		neighbors = {
			[2042] = 53, -- Vigil Hill, Tiragarde Sound
			[2079] = 28, -- Kennings Lodge, Tiragarde Sound
			[2083] = 39, -- Tradewinds Market, Tiragarde Sound
			[2084] = 58, -- Norwington Estate, Tiragarde Sound
			[2096] = 64, -- Tol Dagor, Tiragarde Sound
			[2277] = 27, -- Proudmoore Keep, Tiragarde Sound
			[2278] = 22, -- Mariner's Row, Tiragarde Sound
		},
	},
	{
		tag = "635:555",
		nodeID = 2278,
		name = "Mariner's Row, Tiragarde Sound",
		neighbors = {
			[2074] = 22, -- Bridgeport, Tiragarde Sound
			[2083] = 28, -- Tradewinds Market, Tiragarde Sound
			[2096] = 0, -- Tol Dagor, Tiragarde Sound
			[2277] = 17, -- Proudmoore Keep, Tiragarde Sound
		},
	},
	{
		tag = "639:716",
		nodeID = 2079,
		name = "Kennings Lodge, Tiragarde Sound",
		neighbors = {
			[2023] = 31, -- Freehold, Tiragarde Sound
			[2042] = 41, -- Vigil Hill, Tiragarde Sound
			[2074] = 30, -- Bridgeport, Tiragarde Sound
			[2077] = 32, -- Castaway Point, Tiragarde Sound
		},
	},
	{
		tag = "642:815",
		nodeID = 2023,
		name = "Freehold, Tiragarde Sound",
		neighbors = {
			[2042] = 62, -- Vigil Hill, Tiragarde Sound
			[2067] = 0, -- Timberfell Outpost, Tiragarde Sound
			[2077] = 34, -- Castaway Point, Tiragarde Sound
			[2079] = 31, -- Kennings Lodge, Tiragarde Sound
			[2279] = 0, -- Stonefist Watch, Tiragarde Sound
		},
	},
	{
		tag = "660:293",
		nodeID = 2093,
		name = "Ironmaul Overlook, Stormsong Valley",
		neighbors = {
			[2090] = 0, -- Hillcrest Pasture, Stormsong Valley
			[2092] = 0, -- Diretusk Hollow, Stormsong Valley
			[2095] = 0, -- Shrine of the Storm, Stormsong Valley
		},
	},
	{
		tag = "669:118",
		nodeID = 2095,
		name = "Shrine of the Storm, Stormsong Valley",
		neighbors = {
			[2093] = 0, -- Ironmaul Overlook, Stormsong Valley
			[2139] = 0, -- Windfall Cavern, Stormsong Valley
		},
	},
	{
		tag = "670:139",
		nodeID = 2133,
		name = "Shrine of the Storm, Stormsong Valley",
		neighbors = {
			[2085] = 33, -- Tidecross, Stormsong Valley
		},
	},
	{
		tag = "696:804",
		nodeID = 2077,
		name = "Castaway Point, Tiragarde Sound",
		neighbors = {
			[2023] = 34, -- Freehold, Tiragarde Sound
			[2067] = 0, -- Timberfell Outpost, Tiragarde Sound
			[2079] = 32, -- Kennings Lodge, Tiragarde Sound
			[2096] = 59, -- Tol Dagor, Tiragarde Sound
			[2140] = 48, -- Plunder Harbor, Tiragarde Sound
		},
	},
	{
		tag = "701:631",
		nodeID = 2140,
		name = "Plunder Harbor, Tiragarde Sound",
		neighbors = {
			[2067] = 36, -- Timberfell Outpost, Tiragarde Sound
			[2077] = 48, -- Castaway Point, Tiragarde Sound
		},
	},
	{
		tag = "784:593",
		nodeID = 2276,
		name = "Tol Dagor, Tiragarde Sound",
	},
	{
		tag = "793:618",
		nodeID = 2096,
		name = "Tol Dagor, Tiragarde Sound",
		neighbors = {
			[2074] = 64, -- Bridgeport, Tiragarde Sound
			[2077] = 59, -- Castaway Point, Tiragarde Sound
			[2083] = 68, -- Tradewinds Market, Tiragarde Sound
			[2278] = 67, -- Mariner's Row, Tiragarde Sound
		},
	},
},

-- Nazjatar
[1355]={
	{
		tag = "319:379",
		nodeID = 2410,
		name = "Ashen Strand, Nazjatar",
		faction = "A",
		neighbors = {
			[2407] = 0, -- Utama's Stand, Nazjatar
			[2408] = 16, -- Mezzamere, Nazjatar
			[2483] = 20, -- The Tidal Conflux, Nazjatar
		},
	},
	{
		tag = "344:374",
		nodeID = 2411,
		name = "Ashen Strand, Nazjatar",
		faction = "H",
		neighbors = {
			[2403] = 0, -- Kelya's Grave, Nazjatar
			[2404] = 21, -- Newhome, Nazjatar
			[2405] = 0, -- Zin'Azshari, Nazjatar
			[2412] = 0, -- Wreck of the Hungry Riverbeast, Nazjatar
			[2437] = 0, -- Ekka's Hideaway, Nazjatar
			[2482] = 0, -- The Tidal Conflux, Nazjatar
		},
	},
	{
		tag = "362:822",
		nodeID = 2412,
		name = "Wreck of the Hungry Riverbeast, Nazjatar",
		neighbors = {
			[2404] = 20, -- Newhome, Nazjatar
			[2411] = 0, -- Ashen Strand, Nazjatar
		},
	},
	{
		tag = "398:540",
		nodeID = 2408,
		name = "Mezzamere, Nazjatar",
		neighbors = {
			[2407] = 0, -- Utama's Stand, Nazjatar
			[2409] = 0, -- Wreck of the Old Blanchy, Nazjatar
			[2410] = 16, -- Ashen Strand, Nazjatar
			[2483] = 0, -- The Tidal Conflux, Nazjatar
		},
	},
	{
		tag = "445:853",
		nodeID = 2409,
		name = "Wreck of the Old Blanchy, Nazjatar",
		neighbors = {
			[2408] = 0, -- Mezzamere, Nazjatar
		},
	},
	{
		tag = "474:632",
		nodeID = 2404,
		name = "Newhome, Nazjatar",
		neighbors = {
			[2411] = 21, -- Ashen Strand, Nazjatar
			[2412] = 20, -- Wreck of the Hungry Riverbeast, Nazjatar
			[2437] = 0, -- Ekka's Hideaway, Nazjatar
			[2482] = 0, -- The Tidal Conflux, Nazjatar
		},
	},
	{
		tag = "497:237",
		nodeID = 2483,
		name = "The Tidal Conflux, Nazjatar",
		faction = "A",
		neighbors = {
			[2403] = 0, -- Kelya's Grave, Nazjatar
			[2407] = 19, -- Utama's Stand, Nazjatar
			[2408] = 0, -- Mezzamere, Nazjatar
			[2410] = 20, -- Ashen Strand, Nazjatar
		},
	},
	{
		tag = "511:237",
		nodeID = 2482,
		name = "The Tidal Conflux, Nazjatar",
		faction = "H",
		neighbors = {
			[2403] = 0, -- Kelya's Grave, Nazjatar
			[2404] = 0, -- Newhome, Nazjatar
			[2411] = 0, -- Ashen Strand, Nazjatar
			[2437] = 0, -- Ekka's Hideaway, Nazjatar
		},
	},
	{
		tag = "617:365",
		nodeID = 2407,
		name = "Utama's Stand, Nazjatar",
		neighbors = {
			[2403] = 17, -- Kelya's Grave, Nazjatar
			[2406] = 0, -- Elun'alor Temple, Nazjatar
			[2408] = 0, -- Mezzamere, Nazjatar
			[2410] = 0, -- Ashen Strand, Nazjatar
			[2483] = 19, -- The Tidal Conflux, Nazjatar
		},
	},
	{
		tag = "639:517",
		nodeID = 2437,
		name = "Ekka's Hideaway, Nazjatar",
		neighbors = {
			[2403] = 0, -- Kelya's Grave, Nazjatar
			[2404] = 0, -- Newhome, Nazjatar
			[2405] = 0, -- Zin'Azshari, Nazjatar
			[2411] = 0, -- Ashen Strand, Nazjatar
			[2482] = 0, -- The Tidal Conflux, Nazjatar
		},
	},
	{
		tag = "740:399",
		nodeID = 2406,
		name = "Elun'alor Temple, Nazjatar",
		neighbors = {
			[2403] = 0, -- Kelya's Grave, Nazjatar
			[2407] = 0, -- Utama's Stand, Nazjatar
		},
	},
	{
		tag = "741:249",
		nodeID = 2403,
		name = "Kelya's Grave, Nazjatar",
		neighbors = {
			[2405] = 0, -- Zin'Azshari, Nazjatar
			[2406] = 0, -- Elun'alor Temple, Nazjatar
			[2407] = 17, -- Utama's Stand, Nazjatar
			[2411] = 0, -- Ashen Strand, Nazjatar
			[2437] = 0, -- Ekka's Hideaway, Nazjatar
			[2482] = 0, -- The Tidal Conflux, Nazjatar
			[2483] = 0, -- The Tidal Conflux, Nazjatar
		},
	},
	{
		tag = "795:379",
		nodeID = 2405,
		name = "Zin'Azshari, Nazjatar",
		neighbors = {
			[2403] = 0, -- Kelya's Grave, Nazjatar
			[2411] = 0, -- Ashen Strand, Nazjatar
			[2437] = 0, -- Ekka's Hideaway, Nazjatar
		},
	},
},

-- Shadowlands
[1550]={
	{
		tag = "470:511",
		nodeID = 2395,
		name = "Oribos",
		neighbors = {
			[2398] = 69, -- Bleak Redoubt, Maldraxxus
			[2514] = 48, -- Pridefall Hamlet, Revendreth
			[2519] = 60, -- Aspirant's Rest, Bastion
			[2564] = 77, -- Theater of Pain, Maldraxxus
			[2565] = 49, -- Starlit Overlook, Ardenweald
			[2585] = 71, -- Tirna Vaal, Ardenweald
			[2703] = 13, -- Tazavesh
		},
	},
	{
		tag = "631:270",
		nodeID = 2398,
		name = "Bleak Redoubt, Maldraxxus",
		neighbors = {
			[2395] = 69, -- Oribos
			[2558] = 32, -- The Spearhead, Maldraxxus
			[2559] = 0, -- Spider's Watch, Maldraxxus
			[2561] = 41, -- Renounced Bastille, Maldraxxus
			[2564] = 26, -- Theater of Pain, Maldraxxus
			[2569] = 21, -- Plague Watch, Maldraxxus
		},
	},
	{
		tag = "271:556",
		nodeID = 2488,
		name = "Darkhaven, Revendreth",
		neighbors = {
			[2512] = 26, -- Halls of Atonement, Revendreth
			[2513] = 28, -- Old Gate, Revendreth
			[2514] = 33, -- Pridefall Hamlet, Revendreth
			[2518] = 27, -- Wanecrypt Hill, Revendreth
			[2537] = 43, -- Charred Ramparts, Revendreth
		},
	},
	{
		tag = "201:527",
		nodeID = 2511,
		name = "Sanctuary of the Mad, Revendreth",
		neighbors = {
			[2515] = 30, -- Dominance Keep, Revendreth
			[2517] = 44, -- Menagerie of the Master, Revendreth
			[2518] = 43, -- Wanecrypt Hill, Revendreth
			[2537] = 17, -- Charred Ramparts, Revendreth
			[2548] = 0, -- Sinfall, Revendreth
		},
	},
	{
		tag = "297:507",
		nodeID = 2512,
		name = "Halls of Atonement, Revendreth",
		neighbors = {
			[2488] = 26, -- Darkhaven, Revendreth
			[2513] = 17, -- Old Gate, Revendreth
			[2514] = 51, -- Pridefall Hamlet, Revendreth
		},
	},
	{
		tag = "272:504",
		nodeID = 2513,
		name = "Old Gate, Revendreth",
		neighbors = {
			[2488] = 28, -- Darkhaven, Revendreth
			[2512] = 17, -- Halls of Atonement, Revendreth
			[2517] = 25, -- Menagerie of the Master, Revendreth
			[2518] = 44, -- Wanecrypt Hill, Revendreth
			[2537] = 54, -- Charred Ramparts, Revendreth
		},
	},
	{
		tag = "294:603",
		nodeID = 2514,
		name = "Pridefall Hamlet, Revendreth",
		neighbors = {
			[2395] = 48, -- Oribos
			[2488] = 33, -- Darkhaven, Revendreth
			[2512] = 51, -- Halls of Atonement, Revendreth
			[2518] = 37, -- Wanecrypt Hill, Revendreth
		},
	},
	{
		tag = "191:480",
		nodeID = 2515,
		name = "Dominance Keep, Revendreth",
		neighbors = {
			[2511] = 30, -- Sanctuary of the Mad, Revendreth
			[2517] = 54, -- Menagerie of the Master, Revendreth
		},
	},
	{
		tag = "256:474",
		nodeID = 2517,
		name = "Menagerie of the Master, Revendreth",
		neighbors = {
			[2511] = 44, -- Sanctuary of the Mad, Revendreth
			[2513] = 31, -- Old Gate, Revendreth
			[2515] = 54, -- Dominance Keep, Revendreth
			[2537] = 48, -- Charred Ramparts, Revendreth
		},
	},
	{
		tag = "242:576",
		nodeID = 2518,
		name = "Wanecrypt Hill, Revendreth",
		neighbors = {
			[2488] = 27, -- Darkhaven, Revendreth
			[2511] = 43, -- Sanctuary of the Mad, Revendreth
			[2513] = 44, -- Old Gate, Revendreth
			[2514] = 37, -- Pridefall Hamlet, Revendreth
			[2537] = 31, -- Charred Ramparts, Revendreth
		},
	},
	{
		tag = "711:651",
		nodeID = 2519,
		name = "Aspirant's Rest, Bastion",
		neighbors = {
			[2395] = 60, -- Oribos
			[2529] = 31, -- Hero's Rest, Bastion
		},
	},
	{
		tag = "700:536",
		nodeID = 2520,
		name = "Sagehaven",
		neighbors = {
			[2529] = 42, -- Hero's Rest, Bastion
			[2680] = 23, -- Terrace of the Collectors
		},
	},
	{
		tag = "761:494",
		nodeID = 2528,
		name = "Elysian Hold, Bastion",
		neighbors = {
			[2529] = 37, -- Hero's Rest, Bastion
		},
	},
	{
		tag = "721:575",
		nodeID = 2529,
		name = "Hero's Rest, Bastion",
		neighbors = {
			[2519] = 31, -- Aspirant's Rest, Bastion
			[2520] = 42, -- Sagehaven
			[2528] = 37, -- Elysian Hold, Bastion
		},
	},
	{
		tag = "450:772",
		nodeID = 2530,
		name = "Dreamsong Fenn, Ardenweald",
		neighbors = {
			[2584] = 43, -- Glitterfall Basin, Ardenweald
			[2587] = 0, -- Heart of the Forest, Ardenweald
			[2588] = 27, -- Root-Home, Ardenweald
			[2590] = 0, -- Refugee Camp, Ardenweald
		},
	},
	{
		tag = "221:529",
		nodeID = 2537,
		name = "Charred Ramparts, Revendreth",
		neighbors = {
			[2488] = 43, -- Darkhaven, Revendreth
			[2511] = 17, -- Sanctuary of the Mad, Revendreth
			[2513] = 54, -- Old Gate, Revendreth
			[2517] = 48, -- Menagerie of the Master, Revendreth
			[2518] = 31, -- Wanecrypt Hill, Revendreth
		},
	},
	{
		tag = "205:509",
		nodeID = 2548,
		name = "Sinfall, Revendreth",
		neighbors = {
			[2511] = 0, -- Sanctuary of the Mad, Revendreth
		},
	},
	{
		tag = "596:238",
		nodeID = 2558,
		name = "The Spearhead, Maldraxxus",
		neighbors = {
			[2398] = 32, -- Bleak Redoubt, Maldraxxus
			[2559] = 37, -- Spider's Watch, Maldraxxus
			[2560] = 46, -- Keres' Rest, Maldraxxus
			[2564] = 29, -- Theater of Pain, Maldraxxus
			[2569] = 49, -- Plague Watch, Maldraxxus
		},
	},
	{
		tag = "592:170",
		nodeID = 2559,
		name = "Spider's Watch, Maldraxxus",
		neighbors = {
			[2398] = 0, -- Bleak Redoubt, Maldraxxus
			[2558] = 37, -- The Spearhead, Maldraxxus
			[2560] = 38, -- Keres' Rest, Maldraxxus
			[2561] = 67, -- Renounced Bastille, Maldraxxus
			[2564] = 44, -- Theater of Pain, Maldraxxus
		},
	},
	{
		tag = "634:173",
		nodeID = 2560,
		name = "Keres' Rest, Maldraxxus",
		neighbors = {
			[2558] = 46, -- The Spearhead, Maldraxxus
			[2559] = 38, -- Spider's Watch, Maldraxxus
			[2561] = 36, -- Renounced Bastille, Maldraxxus
			[2564] = 38, -- Theater of Pain, Maldraxxus
		},
	},
	{
		tag = "671:213",
		nodeID = 2561,
		name = "Renounced Bastille, Maldraxxus",
		neighbors = {
			[2398] = 41, -- Bleak Redoubt, Maldraxxus
			[2559] = 67, -- Spider's Watch, Maldraxxus
			[2560] = 35, -- Keres' Rest, Maldraxxus
			[2564] = 45, -- Theater of Pain, Maldraxxus
			[2569] = 44, -- Plague Watch, Maldraxxus
		},
	},
	{
		tag = "624:232",
		nodeID = 2564,
		name = "Theater of Pain, Maldraxxus",
		neighbors = {
			[2395] = 77, -- Oribos
			[2398] = 26, -- Bleak Redoubt, Maldraxxus
			[2558] = 29, -- The Spearhead, Maldraxxus
			[2559] = 44, -- Spider's Watch, Maldraxxus
			[2560] = 38, -- Keres' Rest, Maldraxxus
			[2561] = 45, -- Renounced Bastille, Maldraxxus
			[2569] = 35, -- Plague Watch, Maldraxxus
		},
	},
	{
		tag = "533:722",
		nodeID = 2565,
		name = "Starlit Overlook, Ardenweald",
		neighbors = {
			[2395] = 49, -- Oribos
			[2584] = 42, -- Glitterfall Basin, Ardenweald
			[2585] = 28, -- Tirna Vaal, Ardenweald
		},
	},
	{
		tag = "646:282",
		nodeID = 2569,
		name = "Plague Watch, Maldraxxus",
		neighbors = {
			[2398] = 21, -- Bleak Redoubt, Maldraxxus
			[2558] = 49, -- The Spearhead, Maldraxxus
			[2561] = 44, -- Renounced Bastille, Maldraxxus
			[2564] = 35, -- Theater of Pain, Maldraxxus
		},
	},
	{
		tag = "493:765",
		nodeID = 2584,
		name = "Glitterfall Basin, Ardenweald",
		neighbors = {
			[2530] = 43, -- Dreamsong Fenn, Ardenweald
			[2565] = 42, -- Starlit Overlook, Ardenweald
			[2585] = 29, -- Tirna Vaal, Ardenweald
			[2586] = 37, -- Hibernal Hollow, Ardenweald
			[2587] = 31, -- Heart of the Forest, Ardenweald
			[2588] = 48, -- Root-Home, Ardenweald
			[2590] = 31, -- Refugee Camp, Ardenweald
		},
	},
	{
		tag = "528:774",
		nodeID = 2585,
		name = "Tirna Vaal, Ardenweald",
		neighbors = {
			[2395] = 71, -- Oribos
			[2565] = 28, -- Starlit Overlook, Ardenweald
			[2584] = 29, -- Glitterfall Basin, Ardenweald
			[2586] = 26, -- Hibernal Hollow, Ardenweald
			[2587] = 42, -- Heart of the Forest, Ardenweald
			[2590] = 41, -- Refugee Camp, Ardenweald
		},
	},
	{
		tag = "519:821",
		nodeID = 2586,
		name = "Hibernal Hollow, Ardenweald",
		neighbors = {
			[2584] = 37, -- Glitterfall Basin, Ardenweald
			[2585] = 26, -- Tirna Vaal, Ardenweald
			[2587] = 39, -- Heart of the Forest, Ardenweald
			[2589] = 39, -- Claw's Edge, Ardenweald
			[2590] = 33, -- Refugee Camp, Ardenweald
		},
	},
	{
		tag = "478:814",
		nodeID = 2587,
		name = "Heart of the Forest, Ardenweald",
		neighbors = {
			[2530] = 0, -- Dreamsong Fenn, Ardenweald
			[2584] = 31, -- Glitterfall Basin, Ardenweald
			[2585] = 42, -- Tirna Vaal, Ardenweald
			[2586] = 39, -- Hibernal Hollow, Ardenweald
			[2588] = 27, -- Root-Home, Ardenweald
			[2589] = 37, -- Claw's Edge, Ardenweald
			[2590] = 5, -- Refugee Camp, Ardenweald
		},
	},
	{
		tag = "445:816",
		nodeID = 2588,
		name = "Root-Home, Ardenweald",
		neighbors = {
			[2530] = 27, -- Dreamsong Fenn, Ardenweald
			[2584] = 48, -- Glitterfall Basin, Ardenweald
			[2587] = 27, -- Heart of the Forest, Ardenweald
			[2589] = 49, -- Claw's Edge, Ardenweald
			[2590] = 32, -- Refugee Camp, Ardenweald
		},
	},
	{
		tag = "493:874",
		nodeID = 2589,
		name = "Claw's Edge, Ardenweald",
		neighbors = {
			[2586] = 39, -- Hibernal Hollow, Ardenweald
			[2587] = 37, -- Heart of the Forest, Ardenweald
			[2588] = 49, -- Root-Home, Ardenweald
			[2590] = 31, -- Refugee Camp, Ardenweald
		},
	},
	{
		tag = "487:817",
		nodeID = 2590,
		name = "Refugee Camp, Ardenweald",
		neighbors = {
			[2530] = 0, -- Dreamsong Fenn, Ardenweald
			[2584] = 31, -- Glitterfall Basin, Ardenweald
			[2585] = 41, -- Tirna Vaal, Ardenweald
			[2586] = 33, -- Hibernal Hollow, Ardenweald
			[2587] = 5, -- Heart of the Forest, Ardenweald
			[2588] = 32, -- Root-Home, Ardenweald
			[2589] = 31, -- Claw's Edge, Ardenweald
		},
	},
	{
		tag = "759:499",
		nodeID = 2625,
		name = "Elysian Hold",
		taxioperator = "eternalgateway",
		neighbors = {
			[2626] = 13, -- Hero's Rest
			[2630] = 13, -- Aspirant's Rest
			[2631] = 13, -- Xandria's Vigil
			[2632] = 13, -- Sagehaven
			[2633] = 13, -- Temple of Purity
			[2634] = 13, -- Seat of Eternal Hymns
			[2635] = 12, -- Temple of Humility
			[2636] = 13, -- Sagehaven
		},
	},
	{
		tag = "721:575",
		nodeID = 2626,
		name = "Hero's Rest",
		taxioperator = "eternalgateway",
		neighbors = {
			[2625] = 13, -- Elysian Hold
			[2630] = 5, -- Aspirant's Rest
			[2631] = 5, -- Xandria's Vigil
			[2632] = 5, -- Sagehaven
			[2633] = 5, -- Temple of Purity
			[2634] = 5, -- Seat of Eternal Hymns
			[2635] = 4, -- Temple of Humility
			[2636] = 5, -- Sagehaven
		},
	},
	{
		tag = "712:647",
		nodeID = 2630,
		name = "Aspirant's Rest",
		taxioperator = "eternalgateway",
		neighbors = {
			[2625] = 13, -- Elysian Hold
			[2626] = 5, -- Hero's Rest
			[2631] = 5, -- Xandria's Vigil
			[2632] = 5, -- Sagehaven
			[2633] = 5, -- Temple of Purity
			[2634] = 5, -- Seat of Eternal Hymns
			[2635] = 5, -- Temple of Humility
			[2636] = 5, -- Sagehaven
		},
	},
	{
		tag = "691:599",
		nodeID = 2631,
		name = "Xandria's Vigil",
		taxioperator = "eternalgateway",
		neighbors = {
			[2625] = 13, -- Elysian Hold
			[2626] = 5, -- Hero's Rest
			[2630] = 5, -- Aspirant's Rest
			[2632] = 4, -- Sagehaven
			[2633] = 5, -- Temple of Purity
			[2634] = 5, -- Seat of Eternal Hymns
			[2635] = 5, -- Temple of Humility
			[2636] = 4, -- Sagehaven
		},
	},
	{
		tag = "701:537",
		nodeID = 2632,
		name = "Sagehaven",
		taxioperator = "eternalgateway",
		neighbors = {
			[2625] = 13, -- Elysian Hold
			[2626] = 5, -- Hero's Rest
			[2630] = 5, -- Aspirant's Rest
			[2631] = 5, -- Xandria's Vigil
			[2633] = 5, -- Temple of Purity
			[2634] = 5, -- Seat of Eternal Hymns
			[2635] = 5, -- Temple of Humility
			[2636] = 5, -- Sagehaven
		},
	},
	{
		tag = "743:659",
		nodeID = 2633,
		name = "Temple of Purity",
		taxioperator = "eternalgateway",
		neighbors = {
			[2625] = 13, -- Elysian Hold
			[2626] = 5, -- Hero's Rest
			[2630] = 5, -- Aspirant's Rest
			[2631] = 4, -- Xandria's Vigil
			[2632] = 5, -- Sagehaven
			[2634] = 5, -- Seat of Eternal Hymns
			[2635] = 5, -- Temple of Humility
			[2636] = 5, -- Sagehaven
		},
	},
	{
		tag = "740:532",
		nodeID = 2634,
		name = "Seat of Eternal Hymns",
		taxioperator = "eternalgateway",
		neighbors = {
			[2625] = 13, -- Elysian Hold
			[2626] = 5, -- Hero's Rest
			[2630] = 5, -- Aspirant's Rest
			[2631] = 5, -- Xandria's Vigil
			[2632] = 5, -- Sagehaven
			[2633] = 5, -- Temple of Purity
			[2635] = 5, -- Temple of Humility
			[2636] = 5, -- Sagehaven
		},
	},
	{
		tag = "762:578",
		nodeID = 2635,
		name = "Temple of Humility",
		taxioperator = "eternalgateway",
		neighbors = {
			[2625] = 12, -- Elysian Hold
			[2626] = 4, -- Hero's Rest
			[2630] = 5, -- Aspirant's Rest
			[2631] = 5, -- Xandria's Vigil
			[2632] = 5, -- Sagehaven
			[2633] = 5, -- Temple of Purity
			[2634] = 5, -- Seat of Eternal Hymns
			[2636] = 5, -- Sagehaven
		},
	},
	{
		tag = "676:507",
		nodeID = 2636,
		name = "Sagehaven",
		taxioperator = "eternalgateway",
		neighbors = {
			[2625] = 13, -- Elysian Hold
			[2626] = 5, -- Hero's Rest
			[2630] = 5, -- Aspirant's Rest
			[2631] = 4, -- Xandria's Vigil
			[2632] = 5, -- Sagehaven
			[2633] = 5, -- Temple of Purity
			[2634] = 5, -- Seat of Eternal Hymns
			[2635] = 5, -- Temple of Humility
		},
	},
	{
		tag = "677:505",
		nodeID = 2680,
		name = "Terrace of the Collectors",
		neighbors = {
			[2520] = 23, -- Sagehaven
		},
	},
	{
		tag = "282:189",
		nodeID = 2698,
		name = "Keeper's Respite",
		taxioperator = "animaflow",
		neighbors = {
			[2700] = 40, -- Ve'nari's Refuge
		},
	},
	{
		tag = "242:112",
		nodeID = 2700,
		name = "Ve'nari's Refuge",
		taxioperator = "animaflow",
		neighbors = {
			[2698] = 40, -- Keeper's Respite
		},
	},
	{
		tag = "321:759",
		nodeID = 2703,
		name = "Tazavesh",
		neighbors = {
			[2395] = 13, -- Oribos
		},
	},
},

[1970]={
	{
		tag = "356:650",
		nodeID = 2724,
		name = "Haven",
		taxioperator = "zerethportal",
		neighbors = {
			[2725] = 20, -- Faith's Repose
			[2728] = 43, -- Pilgrim's Grace
		},
	},
	{
		tag = "357:446",
		nodeID = 2725,
		name = "Faith's Repose",
		taxioperator = "zerethportal",
		neighbors = {
			[2724] = 21, -- Haven
			[2728] = 0, -- Pilgrim's Grace
		},
	},
	{
		tag = "615:502",
		nodeID = 2728,
		name = "Pilgrim's Grace",
		taxioperator = "zerethportal",
		neighbors = {
			[2724] = 38, -- Haven
			[2725] = 0, -- Faith's Repose
		},
	},
	{
		tag = "459:225",
		nodeID = 2733,
		name = "Zovaal's Grasp",
		taxioperator = "zerethportal2",
		neighbors = {
			[2734] = 0, -- Antecedent Isle
		},
	},
	{
		tag = "474:127",
		nodeID = 2734,
		name = "Antecedent Isle",
		taxioperator = "zerethportal2",
		neighbors = {
			[2733] = 0, -- Zovaal's Grasp
		},
	},
	{
		tag = "646:535",
		nodeID = 2736,
		name = "Sepulcher Overlook",
		taxioperator = "zerethportal3",
		neighbors = {
			[2737] = 0, -- Sepulcher Of The First Ones
		},
	},
	{
		tag = "731:533",
		nodeID = 2737,
		name = "Sepulcher of the First Ones",
		taxioperator = "zerethportal3",
		neighbors = {
			[2736] = 0, -- Sepulcher Overlook
		},
	},
	{
		tag = "497:347",
		nodeID = 2729,
		name = "Gravid Repose Locus",
		taxioperator = "zerethlocus",
		neighbors = {
			[2730] = 1, -- Interior Locus
			[2738] = 1, -- Ultimus Locus
			[2742] = 1, -- Quintus Locus
			[2743] = 1, -- Quartus Locus
			[2744] = 1, -- Tertius Locus
			[2745] = 1, -- Secundus Locus
			[2746] = 1, -- Primus Locus
		},
	},
	{
		tag = "484:344",
		nodeID = 2730,
		name = "Interior Locus",
		taxioperator = "zerethlocus",
		neighbors = {
			[2729] = 1, -- Gravid Repose Locus
		},
	},
	{
		tag = "489:312",
		nodeID = 2738,
		name = "Ultimus Locus",
		taxioperator = "zerethlocus",
		neighbors = {
			[2729] = 1, -- Gravid Repose Locus
		},
	},
	{
		tag = "507:326",
		nodeID = 2742,
		name = "Quintus Locus",
		taxioperator = "zerethlocus",
		neighbors = {
			[2729] = 1, -- Gravid Repose Locus
		},
	},
	{
		tag = "485:296",
		nodeID = 2743,
		name = "Quartus Locus",
		taxioperator = "zerethlocus",
		neighbors = {
			[2729] = 1, -- Gravid Repose Locus
		},
	},
	{
		tag = "519:271",
		nodeID = 2744,
		name = "Tertius Locus",
		taxioperator = "zerethlocus",
		neighbors = {
			[2729] = 1, -- Gravid Repose Locus
		},
	},
	{
		tag = "478:279",
		nodeID = 2745,
		name = "Secundus Locus",
		taxioperator = "zerethlocus",
		neighbors = {
			[2729] = 1, -- Gravid Repose Locus
		},
	},
	{
		tag = "485:263",
		nodeID = 2746,
		name = "Primus Locus",
		taxioperator = "zerethlocus",
		neighbors = {
			[2729] = 1, -- Gravid Repose Locus
		},
	},
},









-- Dragon Isles
[1978]={
	{
		tag = "466:811",
		nodeID = 2773,
		name = "Azure Archives",
		neighbors = {
			[2774] = 43, -- Camp Antonidas
			[2775] = 67, -- Iskaara
			[2784] = 83, -- Camp Nowhere
			[2789] = 0, -- Three-Falls Lookout
		},
	},
	{
		tag = "507:720",
		nodeID = 2774,
		name = "Camp Antonidas",
		neighbors = {
			[2773] = 43, -- Azure Archives
			[2775] = 0, -- Iskaara
			[2784] = 0, -- Camp Nowhere
			[2786] = 0, -- Rhonin's Shield
			[2787] = 34, -- Cobalt Assembly
			[2789] = 94, -- Three-Falls Lookout
		},
	},
	{
		tag = "364:759",
		nodeID = 2775,
		name = "Iskaara",
		neighbors = {
			[2773] = 67, -- Azure Archives
			[2774] = 0, -- Camp Antonidas
			[2789] = 54, -- Three-Falls Lookout
			[2796] = 0, -- Shady Sanctuary
		},
	},
	{
		tag = "579:801",
		nodeID = 2784,
		name = "Camp Nowhere",
		neighbors = {
			[2773] = 83, -- Azure Archives
			[2774] = 0, -- Camp Antonidas
			[2786] = 64, -- Rhonin's Shield
		},
	},
	{
		tag = "590:659",
		nodeID = 2786,
		name = "Rhonin's Shield",
		neighbors = {
			[2774] = 0, -- Camp Antonidas
			[2784] = 64, -- Camp Nowhere
			[2787] = 0, -- Cobalt Assembly
			[2788] = 18, -- Theron's Watch
		},
	},
	{
		tag = "517:648",
		nodeID = 2787,
		name = "Cobalt Assembly",
		neighbors = {
			[2774] = 34, -- Camp Antonidas
			[2786] = 0, -- Rhonin's Shield
			[2788] = 0, -- Theron's Watch
			[2789] = 0, -- Three-Falls Lookout
			[2793] = 0, -- Forkriver Crossing
			[2798] = 0, -- Pinewood Post
			[2815] = 0, -- Garden Shrine
		},
	},
	{
		tag = "587:621",
		nodeID = 2788,
		name = "Theron's Watch",
		neighbors = {
			[2786] = 18, -- Rhonin's Shield
			[2787] = 0, -- Cobalt Assembly
			[2815] = 37, -- Garden Shrine
			[2816] = 0, -- Shifting Sands
		},
	},
	{
		tag = "389:652",
		nodeID = 2789,
		name = "Three-Falls Lookout",
		neighbors = {
			[2773] = 0, -- Azure Archives
			[2774] = 94, -- Camp Antonidas
			[2775] = 54, -- Iskaara
			[2787] = 0, -- Cobalt Assembly
			[2792] = 0, -- Maruukai
			[2793] = 0, -- Forkriver Crossing
			[2794] = 0, -- Teerakai
		},
	},
	{
		tag = "509:484",
		nodeID = 2790,
		name = "Timberstep Outpost",
		neighbors = {
			[2792] = 0, -- Maruukai
			[2797] = 0, -- Emberwatch
			[2799] = 17, -- Rusza'thar Reach
			[2807] = 0, -- Ruby Life Pools
			[2809] = 0, -- Dragonscale Basecamp
			[2810] = 0, -- Valdrakken
		},
	},
	{
		tag = "443:538",
		nodeID = 2792,
		name = "Maruukai",
		neighbors = {
			[2789] = 0, -- Three-Falls Lookout
			[2790] = 0, -- Timberstep Outpost
			[2793] = 0, -- Forkriver Crossing
			[2794] = 0, -- Teerakai
			[2795] = 30, -- Broadhoof Outpost
			[2797] = 23, -- Emberwatch
			[2798] = 0, -- Pinewood Post
			[2799] = 0, -- Rusza'thar Reach
			[2825] = 42, -- Ohn'iri Springs
		},
	},
	{
		tag = "468:648",
		nodeID = 2793,
		name = "Forkriver Crossing",
		neighbors = {
			[2787] = 0, -- Cobalt Assembly
			[2789] = 0, -- Three-Falls Lookout
			[2792] = 0, -- Maruukai
			[2794] = 0, -- Teerakai
			[2798] = 31, -- Pinewood Post
			[2825] = 28, -- Ohn'iri Springs
		},
	},
	{
		tag = "374:595",
		nodeID = 2794,
		name = "Teerakai",
		neighbors = {
			[2789] = 0, -- Three-Falls Lookout
			[2792] = 0, -- Maruukai
			[2793] = 0, -- Forkriver Crossing
			[2795] = 0, -- Broadhoof Outpost
			[2796] = 21, -- Shady Sanctuary
			[2825] = 34, -- Ohn'iri Springs
		},
	},
	{
		tag = "394:535",
		nodeID = 2795,
		name = "Broadhoof Outpost",
		neighbors = {
			[2792] = 30, -- Maruukai
			[2794] = 0, -- Teerakai
			[2796] = 36, -- Shady Sanctuary
			[2800] = 0, -- Uktulut Outpost
		},
	},
	{
		tag = "344:584",
		nodeID = 2796,
		name = "Shady Sanctuary",
		neighbors = {
			[2775] = 0, -- Iskaara
			[2794] = 21, -- Teerakai
			[2795] = 36, -- Broadhoof Outpost
		},
	},
	{
		tag = "454:487",
		nodeID = 2797,
		name = "Emberwatch",
		neighbors = {
			[2790] = 0, -- Timberstep Outpost
			[2792] = 23, -- Maruukai
			[2801] = 0, -- Apex Observatory
			[2808] = 0, -- Obsidian Bulwark
			[2809] = 0, -- Dragonscale Basecamp
		},
	},
	{
		tag = "495:585",
		nodeID = 2798,
		name = "Pinewood Post",
		neighbors = {
			[2787] = 0, -- Cobalt Assembly
			[2792] = 0, -- Maruukai
			[2793] = 31, -- Forkriver Crossing
			[2799] = 25, -- Rusza'thar Reach
			[2815] = 0, -- Garden Shrine
		},
	},
	{
		tag = "507:522",
		nodeID = 2799,
		name = "Rusza'thar Reach",
		neighbors = {
			[2790] = 17, -- Timberstep Outpost
			[2792] = 0, -- Maruukai
			[2798] = 25, -- Pinewood Post
			[2810] = 0, -- Valdrakken
			[2815] = 0, -- Garden Shrine
		},
	},
	{
		tag = "395:458",
		nodeID = 2800,
		name = "Uktulut Outpost",
		neighbors = {
			[2795] = 0, -- Broadhoof Outpost
			[2801] = 18, -- Apex Observatory
		},
	},
	{
		tag = "415:440",
		nodeID = 2801,
		name = "Apex Observatory",
		neighbors = {
			[2797] = 0, -- Emberwatch
			[2800] = 18, -- Uktulut Outpost
			[2802] = 45, -- Obsidian Throne
			[2808] = 0, -- Obsidian Bulwark
		},
	},
	{
		tag = "420:359",
		nodeID = 2802,
		name = "Obsidian Throne",
		neighbors = {
			[2801] = 45, -- Apex Observatory
			[2804] = 0, -- Uktulut Backwater
			[2808] = 0, -- Obsidian Bulwark
		},
	},
	{
		tag = "484:266",
		nodeID = 2803,
		name = "Uktulut Pier",
		neighbors = {
			[2804] = 0, -- Uktulut Backwater
		},
	},
	{
		tag = "510:296",
		nodeID = 2804,
		name = "Uktulut Backwater",
		neighbors = {
			[2802] = 0, -- Obsidian Throne
			[2803] = 0, -- Uktulut Pier
			[2805] = 0, -- Wingrest Embassy
			[2806] = 0, -- Life Vault Ruins
			[2808] = 0, -- Obsidian Bulwark
		},
	},
	{
		tag = "579:290",
		nodeID = 2805,
		name = "Wingrest Embassy",
		neighbors = {
			[2804] = 0, -- Uktulut Backwater
			[2806] = 0, -- Life Vault Ruins
			[2814] = 0, -- Veiled Ossuary
			[2817] = 25, -- Skytop Observatory
		},
	},
	{
		tag = "544:360",
		nodeID = 2806,
		name = "Life Vault Ruins",
		neighbors = {
			[2804] = 0, -- Uktulut Backwater
			[2805] = 0, -- Wingrest Embassy
			[2807] = 25, -- Ruby Life Pools
			[2813] = 0, -- Algeth'era
			[2817] = 22, -- Skytop Observatory
		},
	},
	{
		tag = "521:393",
		nodeID = 2807,
		name = "Ruby Life Pools",
		neighbors = {
			[2790] = 0, -- Timberstep Outpost
			[2806] = 25, -- Life Vault Ruins
			[2808] = 0, -- Obsidian Bulwark
			[2809] = 32, -- Dragonscale Basecamp
			[2810] = 0, -- Valdrakken
			[2813] = 0, -- Algeth'era
		},
	},
	{
		tag = "473:387",
		nodeID = 2808,
		name = "Obsidian Bulwark",
		neighbors = {
			[2797] = 0, -- Emberwatch
			[2801] = 0, -- Apex Observatory
			[2802] = 0, -- Obsidian Throne
			[2804] = 0, -- Uktulut Backwater
			[2807] = 0, -- Ruby Life Pools
			[2809] = 27, -- Dragonscale Basecamp
		},
	},
	{
		tag = "490:441",
		nodeID = 2809,
		name = "Dragonscale Basecamp",
		neighbors = {
			[2790] = 0, -- Timberstep Outpost
			[2797] = 0, -- Emberwatch
			[2807] = 32, -- Ruby Life Pools
			[2808] = 27, -- Obsidian Bulwark
		},
	},
	{
		tag = "556:497",
		nodeID = 2810,
		name = "Valdrakken",
		neighbors = {
			[2790] = 0, -- Timberstep Outpost
			[2799] = 0, -- Rusza'thar Reach
			[2807] = 0, -- Ruby Life Pools
			[2811] = 0, -- Gelikyr Post
			[2813] = 45, -- Algeth'era
			[2815] = 30, -- Garden Shrine
		},
	},
	{
		tag = "604:515",
		nodeID = 2811,
		name = "Gelikyr Post",
		neighbors = {
			[2810] = 0, -- Valdrakken
			[2813] = 0, -- Algeth'era
			[2815] = 0, -- Garden Shrine
			[2816] = 0, -- Shifting Sands
			[2818] = 0, -- Vault of the Incarnates
		},
	},
	{
		tag = "639:572",
		nodeID = 2812,
		name = "Temporal Conflux",
		neighbors = {
			[2816] = 0, -- Shifting Sands
		},
	},
	{
		tag = "597:415",
		nodeID = 2813,
		name = "Algeth'era",
		neighbors = {
			[2806] = 0, -- Life Vault Ruins
			[2807] = 0, -- Ruby Life Pools
			[2810] = 45, -- Valdrakken
			[2811] = 0, -- Gelikyr Post
			[2814] = 47, -- Veiled Ossuary
			[2817] = 0, -- Skytop Observatory
			[2818] = 0, -- Vault of the Incarnates
		},
	},
	{
		tag = "648:324",
		nodeID = 2814,
		name = "Veiled Ossuary",
		neighbors = {
			[2805] = 0, -- Wingrest Embassy
			[2813] = 47, -- Algeth'era
			[2817] = 0, -- Skytop Observatory
			[2818] = 0, -- Vault of the Incarnates
		},
	},
	{
		tag = "542:562",
		nodeID = 2815,
		name = "Garden Shrine",
		neighbors = {
			[2787] = 0, -- Cobalt Assembly
			[2788] = 37, -- Theron's Watch
			[2798] = 0, -- Pinewood Post
			[2799] = 0, -- Rusza'thar Reach
			[2810] = 30, -- Valdrakken
			[2811] = 0, -- Gelikyr Post
			[2816] = 0, -- Shifting Sands
		},
	},
	{
		tag = "629:562",
		nodeID = 2816,
		name = "Shifting Sands",
		neighbors = {
			[2788] = 0, -- Theron's Watch
			[2811] = 0, -- Gelikyr Post
			[2812] = 0, -- Temporal Conflux
			[2815] = 0, -- Garden Shrine
		},
	},
	{
		tag = "568:343",
		nodeID = 2817,
		name = "Skytop Observatory",
		neighbors = {
			[2805] = 25, -- Wingrest Embassy
			[2806] = 22, -- Life Vault Ruins
			[2813] = 0, -- Algeth'era
			[2814] = 0, -- Veiled Ossuary
		},
	},
	{
		tag = "687:473",
		nodeID = 2818,
		name = "Vault of the Incarnates",
		neighbors = {
			[2811] = 0, -- Gelikyr Post
			[2813] = 0, -- Algeth'era
			[2814] = 0, -- Veiled Ossuary
		},
	},
	{
		tag = "424:640",
		nodeID = 2825,
		name = "Ohn'iri Springs",
		neighbors = {
			[2792] = 42, -- Maruukai
			[2793] = 28, -- Forkriver Crossing
			[2794] = 34, -- Teerakai
		},
	},


	{
		taxioperator="ancientwaygate",
		tag = "609:561",
		nodeID = 2834,
		name = "Eon's Fringe",
		neighbors = {
			[2838] = 0.1, -- Cobalt Assembly
			[2840] = 0.1, -- Shady Sanctuary
			[2842] = 0.1, -- Rubyscale Outpost
		},
	},
	{
		taxioperator="ancientwaygate",
		tag = "514:680",
		nodeID = 2838,
		name = "Cobalt Assembly",
		neighbors = {
			[2834] = 0.1, -- Eon's Fringe
		},
	},
	{
		taxioperator="ancientwaygate",
		tag = "347:577",
		nodeID = 2840,
		name = "Shady Sanctuary",
		neighbors = {
			[2834] = 0.1, -- Eon's Fringe
		},
	},
	{
		taxioperator="ancientwaygate",
		tag = "488:463",
		nodeID = 2842,
		name = "Rubyscale Outpost",
		neighbors = {
			[2834] = 0.1, -- Eon's Fringe
		},
	},


},










}-- Closing "data.flightcost"