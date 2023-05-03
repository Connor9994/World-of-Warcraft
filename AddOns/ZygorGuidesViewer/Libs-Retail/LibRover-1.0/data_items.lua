local name,addon = ...

addon.LibRoverData = addon.LibRoverData or {}
local ZGV=addon
local data=addon.LibRoverData

local IsQuestFlaggedCompleted = C_QuestLog.IsQuestFlaggedCompleted

-- "_HEARTH" or "_G_HEARTH" destinations are not parsed immediately; they get assigned at calculation time.

local hearthcost = 30
local otheritem = 30
data.portkeys = { -- smile if you're a muggle
	{item=6948,   destination="_HEARTH", cost=hearthcost, mode="hearth"}, -- Hearthstone!!!

	{item=64488,  destination="_HEARTH", cost=hearthcost, toy=true, mode="hearth"}, -- The Innkeeper's Daughter
	{item=142542, destination="_HEARTH", cost=hearthcost, toy=true, mode="hearth"}, -- Tome of Town Portal

	{item=162973, destination="_HEARTH", cost=hearthcost, toy=true, mode="hearth"}, -- Greatfather Winter's Hearthstone
	{item=163045, destination="_HEARTH", cost=hearthcost, toy=true, mode="hearth"}, -- Headless Horseman's Hearthstone
	{item=165669, destination="_HEARTH", cost=hearthcost, toy=true, mode="hearth"}, -- Lunar Elder's Hearthstone
	{item=165670, destination="_HEARTH", cost=hearthcost, toy=true, mode="hearth"}, -- Peddlefeet's Lovely Hearthstone
	{item=165802, destination="_HEARTH", cost=hearthcost, toy=true, mode="hearth"}, -- Noble Gardeners Hearthstone
	{item=166746, destination="_HEARTH", cost=hearthcost, toy=true, mode="hearth"}, -- Fire Eater's Hearthstone
	{item=166747, destination="_HEARTH", cost=hearthcost, toy=true, mode="hearth"}, -- Brewfest Revelers Hearthstone
	{item=168907, destination="_HEARTH", cost=hearthcost, toy=true, mode="hearth"}, -- Holographic Digitalization Hearthstone
	{item=172179, destination="_HEARTH", cost=hearthcost, toy=true, mode="hearth"}, -- Eternal Traveler's Hearthstone
	{item=193588, destination="_HEARTH", cost=hearthcost, toy=true, mode="hearth"}, -- Timewalker's Hearthstone

	{item=182773, destination="_HEARTH", cost=hearthcost, toy=true, mode="hearth", cond=function() return ZGV.Parser.ConditionEnv.Necrolord end}, -- Necrolord Hearthstone
	{item=184353, destination="_HEARTH", cost=hearthcost, toy=true, mode="hearth", cond=function() return ZGV.Parser.ConditionEnv.Kyrian end}, -- Kyrian Hearthstone
	{item=183716, destination="_HEARTH", cost=hearthcost, toy=true, mode="hearth", cond=function() return ZGV.Parser.ConditionEnv.Venthyr end}, -- Venthyr Hearthstone
	{item=180290, destination="_HEARTH", cost=hearthcost, toy=true, mode="hearth", cond=function() return ZGV.Parser.ConditionEnv.NightFae end}, -- Night Fae Hearthstone

	{item=28585,  destination="_HEARTH", cost=hearthcost, mode="hearth"}, -- Ruby Slippers
	{item=37118,  destination="_HEARTH", cost=hearthcost, maxlevel=49}, -- Scroll of Recall 1 DIFFERENT HEARTHSTONE CD level <= 40	--Cost a little different so that lower level ones get priority if usable.
	{item=44314,  destination="_HEARTH", cost=hearthcost, maxlevel=49}, -- Scroll of Recall 2 DIFFERENT HEARTHSTONE CD level >=35 <= 70
	{item=44315,  destination="_HEARTH", cost=hearthcost, maxlevel=49}, -- Scroll of Recall 3 DIFFERENT HEARTHSTONE CD level >=65 <= 90

	{spell=556,   destination="_HEARTH", cost=hearthcost, is_astral=1 }, -- Astral Recall

	{item=110560, destination="_G_HEARTH", cost=hearthcost, mode="ghearth", type="garrison_inn"}, -- Garri Hstone

	{item=63352,  destination="@!sw_tp_dst", cost=otheritem, cooldown=28800}, -- Shroud of Cooperation
	{item=63206,  destination="@!sw_tp_dst", cost=otheritem, cooldown=14400}, -- Wrap of Unity
	{item=65360,  destination="@!sw_tp_dst", cost=otheritem, cooldown=7200}, -- Cloak of Cooperation

	{item=63353,  destination="@!org_tp_dst", cost=otheritem, cooldown=28800}, -- Shroud of Cooperation
	{item=63207,  destination="@!org_tp_dst", cost=otheritem, cooldown=14400}, -- Wrap of Unity
	{item=65274,  destination="@!org_tp_dst", cost=otheritem, cooldown=7200}, -- Cloak of Cooperation

	{item=40585,  destination="@!dala_tp_dst", cost=otheritem, cooldown=1800}, -- Signet of the Kirin Tor
	{item=40586,  destination="@!dala_tp_dst", cost=otheritem, cooldown=1800}, -- Band of the Kirin Tor
	{item=44934,  destination="@!dala_tp_dst", cost=otheritem, cooldown=1800}, -- Loop of the Kirin Tor
	{item=44935,  destination="@!dala_tp_dst", cost=otheritem, cooldown=1800}, -- Ring of the Kirin Tor
	{item=45688,  destination="@!dala_tp_dst", cost=otheritem, cooldown=1800}, -- Inscribed Band of the Kirin Tor
	{item=45689,  destination="@!dala_tp_dst", cost=otheritem, cooldown=1800}, -- Inscribed Loop of the Kirin Tor
	{item=45690,  destination="@!dala_tp_dst", cost=otheritem, cooldown=1800}, -- Inscribed Ring of the Kirin Tor
	{item=45691,  destination="@!dala_tp_dst", cost=otheritem, cooldown=1800}, -- Inscribed Signet of the Kirin Tor
	{item=48954,  destination="@!dala_tp_dst", cost=otheritem, cooldown=1800}, -- Etched Band of the Kirin Tor
	{item=48955,  destination="@!dala_tp_dst", cost=otheritem, cooldown=1800}, -- Etched Loop of the Kirin Tor
	{item=48956,  destination="@!dala_tp_dst", cost=otheritem, cooldown=1800}, -- Etched Ring of the Kirin Tor
	{item=48957,  destination="@!dala_tp_dst", cost=otheritem, cooldown=1800}, -- Etched Signet of the Kirin Tor
	{item=51557,  destination="@!dala_tp_dst", cost=otheritem, cooldown=1800}, -- Runed Signet of the Kirin Tor
	{item=51558,  destination="@!dala_tp_dst", cost=otheritem, cooldown=1800}, -- Runed Loop of the Kirin Tor
	{item=51559,  destination="@!dala_tp_dst", cost=otheritem, cooldown=1800}, -- Runed Ring of the Kirin Tor
	{item=51560,  destination="@!dala_tp_dst", cost=otheritem, cooldown=1800}, -- Runed Band of the Kirin Tor
	{item=52251,  destination="@!dala_tp_dst", cost=otheritem, cooldown=3600}, -- Jaina's Locket

	{item=32757,  destination="Shadowmoon Valley 63,44", cost=otheritem, cooldown=900}, -- APPROXIMATE. Blessed Medallion of Karabor
	{item=37863,  destination="Blackrock Depths/2 46,54", cost=otheritem, cooldown=3600}, -- APPROX. Direbrew's Remote
	{item=46874,  destination="Icecrown 69.38,22.64", cost=otheritem, cooldown=1800}, -- Argent Crusader's Tabard
	{item=50287,  destination="The Cape of Stranglethorn 40.8,73.8", cost=120, cooldown=86400}, -- Boots of the Bay 24h
	{item=58587,  destination="Deepholm,48.7,53.6", cost=90, cooldown=1800}, -- Potion of Deepholm --CD is modified because it is a consumable potion. Don't use it like candy
	{item=22631,  destination="Deadwind Pass 55,78", cost=otheritem, cooldown=60}, -- Atiesh, Greatstaff of the Guardian


	{item=95567,  destination="Isle of Thunder 64.6,73.5", cost=45, cooldown=600, cond=function() return ZGV.CurrentMapID==928 and IsQuestFlaggedCompleted(32644) end}, -- Kirin Tor Beacon --only usable on Thunder Isle
	{item=95567,  destination="Isle of Thunder 34.8,89.3", cost=45, cooldown=600, cond=function() return ZGV.CurrentMapID==928 and not IsQuestFlaggedCompleted(32644) end}, -- Kirin Tor Beacon --only usable on Thunder Isle

	{item=95568,  destination="Isle of Thunder 33.3,32.6", cost=45, cooldown=600, cond=function() return ZGV.CurrentMapID==928 and IsQuestFlaggedCompleted(32212) end}, -- Sunreaver Beacon --only usable on Thunder Isle
	{item=95568,  destination="Isle of Thunder 28.5,51.7", cost=45, cooldown=600, cond=function() return ZGV.CurrentMapID==928 and not IsQuestFlaggedCompleted(32212) end}, -- Sunreaver Beacon --only usable on Thunder Isle

	{item=104113, destination="Timeless Isle/0 23.28,70.83", cost=300, cooldown=0 }, -- Ally. Curious Bronze Timepiece, 1 time use only.
	{item=104110, destination="Timeless Isle/0 21.32,39.52", cost=300, cooldown=0 }, -- Horde. Curious Bronze Timepiece, 1 time use only.

	{item=128353,  destA="Shadowmoon Valley D/0 27.94,11.16", destH="Frostfire Ridge/0 42.68,69.58", cost=otheritem, cooldown=14400}, -- Admiral's Compass

	{item=30542, destination="Netherstorm 32,63", cost=120, cooldown=14400}, -- Dimensional Ripper - Area 52 Engineering >=350 Goblin -- TODO only approx coords
	{item=18984, destination="Winterspring 59,50", cost=120, cooldown=14400}, -- Dimensional Ripper - Everlook Engineering >=260 Goblin -- TODO only approx coords
	{item=30544, destination="Blade's Edge Mountains 60.4,65.1", cost=120, cooldown=14400}, -- Ultrasafe Transporter: Toshley's Station Engineering >=350 Gnomish
	{item=18986, destination="Tanaris 51.6,28.0", cost=120, cooldown=14400}, -- APPROX. Ultrasafe Transporter: Gadgetzan Engineering >=260 Gnomish

	{item=63378, destination="Tol Barad Peninsula 73.7,60.9", cost=otheritem, cooldown=14400}, -- Baradin's Wardens Tabard  Alliance -- TODO only approx coords
	{item=63379, destination="Tol Barad Peninsula 55.8,80.1", cost=otheritem, cooldown=14400}, -- Hellscream's Reach Tabard  Horde

	--Wormhole Generator: Northrend
	{item=48933, toy=true, destination="Borean Tundra 51.78,45.03", cost=15, cooldown=4*60*60, title="Use Wormhole Generator: Northrend and select Borean Tundra", cond=function() return ZGV.Parser.ConditionEnv.skill('Northrend Engineering')>=40 end}, 
	{item=48933, toy=true, destination="Howling Fjord 58.53,48.63", cost=15, cooldown=4*60*60, title="Use Wormhole Generator: Northrend and select Howling Fjord", cond=function() return ZGV.Parser.ConditionEnv.skill('Northrend Engineering')>=40 end},  
	{item=48933, toy=true, destination="Sholazar Basin 49.21,39.62", cost=15, cooldown=4*60*60, title="Use Wormhole Generator: Northrend and select Sholazar Basin", cond=function() return ZGV.Parser.ConditionEnv.skill('Northrend Engineering')>=40 end},  
	{item=48933, toy=true, destination="Icecrown 62.87,26.92", cost=15, cooldown=4*60*60, title="Use Wormhole Generator: Northrend and select Icecrown", cond=function() return ZGV.Parser.ConditionEnv.skill('Northrend Engineering')>=40 end}, 
	{item=48933, toy=true, destination="The Storm Peaks 43.90,25.80", cost=15, cooldown=4*60*60, title="Use Wormhole Generator: Northrend and select Storm Peaks", cond=function() return ZGV.Parser.ConditionEnv.skill('Northrend Engineering')>=40 end}, 

	--------------
	--- LEGION ---
	--------------
	{item=140192, destination="Dalaran L/10 60.92,44.72", cost=30, cooldown=1200, mode="dhearth", cond=function() local m=ZGV.CurrentMapID return m~=625 and m~=626 and m~=627 and m~=628 and m~=629 and m~=695 and m~=717 and m~=718 and m~=715 and m~=734 and m~=735 and m~=672 and m~=673 and m~=674 and m~=675 and m~=719 and m~=720 and m~=721 and m~=702 and m~=747 and m~=739 and m~=725 and m~=726 and m~=709 and m~=24 end}, -- Dalaran Hearthstone: never use from Dala or class halls
	{item=141605, destination="_TAXIWHISTLE", cost=15, cooldown=60, mode="whistle", cond=function() return ZGV.LibRover.TaxiWhistlePredictor:IsOnValidMap() end }, -- Flight Master's Whistle



	--------------
	--- BFA ---
	--------------
	-- Mole Machine, Throne of Flame
	{spell=265225, destination="Mount Hyjal/0 57.18,77.11", cost=90, cooldown=1800, cond=function() return IsQuestFlaggedCompleted(53601) end, title="Use your Mole Machine and select Kalimdor, then Throne of Flame."},

	-- Mole Machine, The Great Divide
	{spell=265225, destination="Southern Barrens/0 39.11,9.30", cost=90, cooldown=1800, cond=function() return IsQuestFlaggedCompleted(53600) end, title="Use your Mole Machine and select Kalimdor, then The Great Divide."},
	
	-- Mole Machine, Fire Plume Ridge
	{spell=265225, destination="Un'Goro Crater/0 52.88,55.76", cost=90, cooldown=1800, cond=function() return IsQuestFlaggedCompleted(53591) end, title="Use your Mole Machine and select Kalimdor, then Fire Plume Ridge."},
	
	-- Mole Machine, Stormwind City
	{spell=265225, destination="Stormwind City/0 63.33,37.34", cost=90, cooldown=1800, title="Use your Mole Machine and select Eastern Kingdoms, then Stormwind City."},
	
	-- Mole Machine, Ironforge
	{spell=265225, destination="Dun Morogh/0 61.29,37.18", cost=90, cooldown=1800, title="Use your Mole Machine and select Eastern Kingdoms, then Ironforge."},
	
	-- Mole Machine, Shadowforge City
	{spell=265225, destination="Shadowforge City/0 61.44,24.35", cost=90, cooldown=1800, title="Use your Mole Machine and select Eastern Kingdoms, then Shadowforge City."},
	
	-- Mole Machine, Nethergarde Keep
	{spell=265225, destination="Blasted Lands/0 61.97,12.80", cost=90, cooldown=1800, cond=function() return IsQuestFlaggedCompleted(53594) end, title="Use your Mole Machine and select Eastern Kingdoms, then Nethergarde Keep."},
	
	-- Mole Machine, Aerie Peak
	{spell=265225, destination="The Hinterlands/0 13.53,46.80", cost=90, cooldown=1800, cond=function() return IsQuestFlaggedCompleted(53585) end, title="Use your Mole Machine and select Eastern Kingdoms, then Aerie Peak."},
	
	-- Mole Machine, The Masonary
	{spell=265225, destination="Burning Steppes/16 33.30,24.80", cost=90, cooldown=1800, cond=function() return IsQuestFlaggedCompleted(53587) end, title="Use your Mole Machine and select Eastern Kingdoms, then The Masonary."},
	
	-- Mole Machine, Fel Pits
	{spell=265225, destination="Shadowmoon Valley/0 50.77,35.30", cost=90, cooldown=1800, cond=function() return IsQuestFlaggedCompleted(53599) end, title="Use your Mole Machine and select Outland, then Fel Pits."},
	
	-- Mole Machine, Skald
	{spell=265225, destination="Blade's Edge Mountains/0 72.42,17.64", cost=90, cooldown=1800, cond=function() return IsQuestFlaggedCompleted(53597) end, title="Use your Mole Machine and select Outland, then Skald."},
	
	-- Mole Machine, Ruby Dragonshrine
	{spell=265225, destination="Dragonblight/0 45.35,49.92", cost=90, cooldown=1800, cond=function() return IsQuestFlaggedCompleted(53596) end, title="Use your Mole Machine and select Northrend, then Ruby Dragonshrine."},
	
	-- Mole Machine, Argent Tournament Grounds
	{spell=265225, destination="Icecrown/0 76.97,18.66", cost=90, cooldown=1800, cond=function() return IsQuestFlaggedCompleted(53586) end, title="Use your Mole Machine and select Northrend, then Argent Tournament Grounds."},
	
	-- Mole Machine, Stormstout Brewery
	{spell=265225, destination="Valley of the Four Winds/0 31.51,73.59", cost=90, cooldown=1800, cond=function() return IsQuestFlaggedCompleted(53598) end, title="Use your Mole Machine and select Pandaria, then Stormstout Brewery."},
	
	-- Mole Machine, One Keg
	{spell=265225, destination="Kun-Lai Summit/0 57.68,62.81", cost=90, cooldown=1800, cond=function() return IsQuestFlaggedCompleted(53595) end, title="Use your Mole Machine and select Pandaria, then One Keg."},
	
	-- Mole Machine, Blackrock Foundry Overlook
	{spell=265225, destination="Gorgrond/0 46.69,38.76", cost=90, cooldown=1800, cond=function() return IsQuestFlaggedCompleted(53588) end, title="Use your Mole Machine and select Draenor, then Blackrock Foundry Overlook."},
	
	-- Mole Machine, Elemental Plateau
	{spell=265225, destination="Nagrand D/0 65.75,8.25", cost=90, cooldown=1800, cond=function() return IsQuestFlaggedCompleted(53590) end, title="Use your Mole Machine and select Draenor, then Elemental Plateau."},
	
	-- Mole Machine, Neltharion's Vault
	{spell=265225, destination="Highmountain/0 44.66,72.90", cost=90, cooldown=1800, cond=function() return IsQuestFlaggedCompleted(53593) end, title="Use your Mole Machine and select Broken Isles, then Neltharion's Vault."},
	
	-- Mole Machine, Broken Shore
	{spell=265225, destination="Broken Shore/0 71.69,47.99", cost=90, cooldown=1800, cond=function() return IsQuestFlaggedCompleted(53589) end, title="Use your Mole Machine and select Broken Isles, then Broken Shore."},
	
	-- Alluring Bloom
	{item=169862, destination="Stormsong Valley/0 62.89,26.52", cost=15, cooldown=60, cond=function() local m=ZGV.CurrentMapID return m==942 end},



	-------------------
	--- SHADOWLANDS ---
	-------------------
	-- Cypher of Relocation
		{item=180817, destination="The Maw/0 46.22,41.25", cost=30, cooldown=1200, cond=function() local m=ZGV.CurrentMapID return m==1543 or m==1823 or m==1822 or m==1821 or m==1820 end},

	-- Wormhole Generator: Shadowlands
	{item=172924, toy=true, destination="Oribos 52.08,26.13", cost=15, cooldown=900, title="Use Wormhole Generator: Shadowlands and select Oribos", cond=function() return ZGV.Parser.ConditionEnv.skill('Shadowlands Engineering')>0 end},
	{item=172924, toy=true, destination="Bastion 51.85,87.76", cost=15, cooldown=900, title="Use Wormhole Generator: Shadowlands and select Bastion", cond=function() return ZGV.Parser.ConditionEnv.skill('Shadowlands Engineering')>0 end},
	{item=172924, toy=true, destination="Maldraxxus 42.44,43.99", cost=15, cooldown=900, title="Use Wormhole Generator: Shadowlands and select Maldraxxus", cond=function() return ZGV.Parser.ConditionEnv.skill('Shadowlands Engineering')>0 end},
	{item=172924, toy=true, destination="Ardenweald 54.42,60.32", cost=15, cooldown=900, title="Use Wormhole Generator: Shadowlands and select Ardenweald", cond=function() return ZGV.Parser.ConditionEnv.skill('Shadowlands Engineering')>0 end},
	{item=172924, toy=true, destination="Revendreth 37.50,76.55", cost=15, cooldown=900, title="Use Wormhole Generator: Shadowlands and select Revendreth", cond=function() return ZGV.Parser.ConditionEnv.skill('Shadowlands Engineering')>0 end},
	{item=172924, toy=true, destination="The Maw 22.45,28.15", cost=15, cooldown=900, title="Use Wormhole Generator: Shadowlands and select The Maw", cond=function() return ZGV.Parser.ConditionEnv.skill('Shadowlands Engineering')>0 end},
	{item=172924, toy=true, destination="Korthia 62.80,24.80", cost=15, cooldown=900, title="Use Wormhole Generator: Shadowlands and select Korthia", cond=function() return ZGV.Parser.ConditionEnv.skill('Shadowlands Engineering')>0 end},



	--------------------
	--- DRAGONFLIGHT ---
	--------------------
	-- Lucky Tortollan Charm
	{item=202046, destination="Stormsong Valley/0 40.28,36.53", cost=15, cooldown=60},
	-- Aylaag Windstone Fragment
	--{item=200613, destination="Ohn'ahran Plains/0 71.33,31.48", cost=15, cooldown=15 , cond=function() return ZGV.Parser.ConditionEnv.areapoitime(7102)>0 end}, --Rusza'thar Reach location
	--{item=200613, destination="Ohn'ahran Plains/0 70.58,63.34", cost=15, cooldown=15, cond=function() return ZGV.Parser.ConditionEnv.areapoitime(7101)>0 end}, --Pinewood Post location
	--{item=200613, destination="Ohn'ahran Plains/0 55.54,52.26", cost=15, cooldown=15, cond=function() return ZGV.Parser.ConditionEnv.areapoitime(7103)>0 end}, --Eaglewatch Outpost location
}
