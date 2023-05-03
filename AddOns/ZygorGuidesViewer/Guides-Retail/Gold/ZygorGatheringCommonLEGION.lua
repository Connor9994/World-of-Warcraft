local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
ZygorGuidesViewer.Gold.guides_loaded=true

ZygorGuidesViewer.GuideMenuTier = "LEG"

--@@ONLYDEVSTART
ZGV.DevStart()
ZGV.DevEnd()
--@@ONLYDEVEND

-----------------------------
-----    ENCHANTING    ------
-----------------------------

--  Legion  --


-------------------------
-----    FISHING    -----
-------------------------

--  Legion  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Black Barracuda",{
	meta={goldtype="route",skillreq={legion_fishing=1},levelreq=45},
	items={{124112,200}},
	maps={"Suramar"},
	},[[
	step
	label "Start_Farming_Black_Barracuda"
		Follow the path down |goto Suramar/0 64.28,43.04 < 30 |only if walking
		Follow the path down |goto Suramar/0 67.43,44.64 < 20 |only if walking
		Continue down the path |goto Suramar/0 68.43,45.91 < 20 |only if walking
		Follow the path down |goto Suramar/0 68.16,48.54 < 30 |only if walking
		Follow the path |goto Suramar/0 69.70,47.92 < 30 |only if walking
		Follow the path down |goto Suramar/0 71.37,47.01 < 30 |only if walking
		Fish in Black Barracuda Schools
		|tip They look like small circular swirling spots in the water along the coast.
		|tip Follow the beach east from this spot.
		|goldcollect 200 Black Barracuda##124112 |n |goto Suramar/0 74.20,49.90
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm |next "Black_Barracuda_Sell"
	step
	label "Black_Barracuda_Sell"
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.1,70.6 |only Alliance
		talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |only Horde
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Black Barracuda |confirm |next "Start_Farming_Black_Barracuda"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Highmountain Salmon",{
	meta={goldtype="route",skillreq={legion_fishing=1},levelreq=10},
	items={{124109,60}},
	maps={"Highmountain"},
	},[[
	step
	label "Start_Farming_Highmountain_Salmon"
		Fish in the Rapid-Moving River
		|tip Highmountain Salmon seems to be pretty rare to catch, so it may take a while.
		|goldcollect 60 Highmountain Salmon##124109 |n |goto Highmountain/0 41.84,51.65
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm |next "Highmountain_Salmon_Sell"
	step
	label "Highmountain_Salmon_Sell"
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.1,70.6 |only Alliance
		talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |only Horde
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Highmountain Salmon |confirm |next "Start_Farming_Highmountain_Salmon"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Silver Mackerel",{
	meta={goldtype="route",skillreq={legion_fishing=1},levelreq=10},
	items={{133607,200}},
	maps={"Azsuna"},
	},[[
	step
	label "Start_Farming_Silver_Mackerel"
		Fish in the water
		|goldcollect 200 Silver Mackerel##133607 |n |goto Azsuna/0 52.47,31.86
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm |next "Silver_Mackerel_Sell"
	step
	label "Silver_Mackerel_Sell"
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.1,70.6 |only Alliance
		talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |only Horde
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Highmountain Salmon |confirm |next "Start_Farming_Silver_Mackerel"
]])


---------------------------
-----    HERBALISM    -----
---------------------------

--  Legion  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Aethril",{
	meta={goldtype="route",skillreq={legion_herbalism=1},levelreq=10},
	items={{124101,420}},
	maps={"Azsuna"},
	},[[
	step
	label "Start_Farming_Aethril"
		map Azsuna/0
		path	follow smart; loop on; ants curved; dist 30
		path	46.38,44.51	47.68,43.75	48.87,42.45
		path	48.36,38.75	48.48,36.05	49.34,33.40
		path	50.26,30.59	51.11,28.89	50.27,25.03
		path	50.96,22.14	50.75,19.79	52.13,16.67
		path	54.63,16.44	56.69,17.17	57.59,18.25
		path	59.67,20.32	60.55,20.91	63.39,25.50
		path	64.63,25.89	63.43,28.43	63.39,31.12
		path	64.02,34.78	65.56,36.66	66.22,38.74
		path	66.49,42.33	66.97,44.07	66.48,46.99
		path	64.05,50.95	62.65,51.41	61.07,50.79
		path	58.62,51.41	56.03,52.81	53.66,54.29
		path	51.42,56.22	48.86,54.98	46.41,51.84
		path	46.19,46.77
		click Aethril##244774
		|tip Track them on your minimap with "Find Herbs".
		kill Withered Hungerer##98232+
		|tip They have a chance to spawn when you gather Aethril.
		|goldcollect 420 Aethril##124101 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.1,70.6 |only Alliance
		talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |only Horde
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Aethril |confirm |next "Start_Farming_Aethril"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Dreamleaf",{
	meta={goldtype="route",skillreq={legion_herbalism=1},levelreq=10},
	items={{124102,420}},
	maps={"Val'sharah"},
	},[[
	step
	label "Start_Farming_Dreamleaf"
		map Val'sharah/0
		path	follow smart; loop on; ants curved; dist 30
		path	54.98,53.49	54.22,50.65	51.66,50.69
		path	50.22,52.58	47.26,54.79	44.78,58.33
		path	43.95,61.83	44.75,62.57	44.88,64.04
		path	45.66,68.39	45.06,72.32	45.09,73.77
		path	45.48,75.42	47.57,77.15	50.39,78.38
		path	51.63,79.73	52.84,78.02	56.17,78.02
		path	57.69,76.37	57.34,72.60	56.14,69.08
		path	57.16,65.53	57.13,63.03	55.91,61.27
		path	56.11,58.44
		click Dreamleaf##244775
		|tip Track them on your minimap with "Find Herbs".
		kill Nightmare Creeper##98234+
		|tip They have a chance to spawn when you gather Dreamleaf.
		|goldcollect 420 Dreamleaf##124102 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.1,70.6 |only Alliance
		talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |only Horde
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Dreamleaf |confirm |next "Start_Farming_Dreamleaf"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Foxflower",{
	meta={goldtype="route",skillreq={legion_herbalism=1},levelreq=10},
	items={{124103,420}},
	maps={"Highmountain"},
	},[[
	step
	label "Start_Farming_Foxflower"
		map Highmountain/0
		path	follow strict; loop off; ants curved; dist 30
		path	57.63,27.24	58.30,25.96	55.60,24.95
		path	56.21,23.48	58.18,21.64	57.72,19.47
		path	56.17,19.67	55.63,16.88	54.89,14.84
		path	52.05,14.24	51.06,11.29	50.19,8.48
		path	49.26,7.56	48.56,10.28	47.34,10.78
		path	46.35,11.99	44.55,12.74	43.93,10.95
		path	43.80,8.25	42.24,10.37	41.25,11.10
		path	40.38,13.11	39.02,14.36	37.46,15.12
		path	37.10,16.77	36.78,18.74	35.72,19.62
		path	36.03,21.65	34.68,23.11	32.27,24.44
		path	31.42,26.25	30.27,28.02	29.28,29.77
		path	27.58,30.22	27.97,33.19	28.64,35.15
		path	25.69,38.69	26.55,40.28	28.36,41.46
		path	29.57,41.07	30.19,40.63	29.94,39.33
		click Foxflower##241641
		|tip Track them on your minimap with "Find Herbs".
		|tip There is a chance to spawn a Frenzied Fox when gathering Foxflower.
		|tip The Frenzied Fox runs away, dropping Foxflowers on the ground.
		|tip Run over the Foxflowers to collect them.
		|goldcollect 420 Foxflower##124103 |n
		|goldtracker
		|tip Fly back to Prepfoot, Highmountain when you finish the route.
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.1,70.6 |only Alliance
		talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |only Horde
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Foxflower |confirm |next "Start_Farming_Foxflower"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Fjarnskaggl",{
	meta={goldtype="route",skillreq={legion_herbalism=1},levelreq=10},
	items={{124104,420}},
	maps={"Stormheim"},
	},[[
	step
	label "Start_Farming_Fjarnskaggl"
		map Stormheim/0
		path	follow smart; loop on; ants curved; dist 30
		path	44.93,54.20	41.34,52.95	40.33,50.92
		path	42.22,48.92	43.08,46.16	43.43,43.85
		path	41.29,41.57	40.49,39.91	38.01,41.13
		path	35.47,40.72	35.03,39.51	35.58,37.35
		path	33.48,34.81	33.71,31.40	35.77,31.89
		path	37.05,32.77	38.83,31.85	40.28,30.50
		path	37.48,28.96	37.30,26.42	38.91,25.85
		path	41.56,23.10	42.49,23.41	43.26,23.57
		path	45.75,23.16	43.74,26.24	46.11,27.11
		path	44.71,30.80	46.90,32.23	48.53,33.05
		path	49.31,31.25	50.93,29.17	52.56,29.94
		path	52.50,31.90	50.07,34.59	48.68,38.47
		path	46.92,40.67	44.58,41.57	44.37,48.21
		path	45.48,50.13	48.34,49.86	50.79,52.76
		path	50.63,54.35	49.29,53.94	47.15,54.68
		click Fjarnskaggl##244777
		|tip Track them on your minimap with "Find Herbs".
		|goldcollect 420 Fjarnskaggl##124104 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.1,70.6 |only Alliance
		talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |only Horde
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Fjarnskaggl |confirm |next "Start_Farming_Fjarnskaggl"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Starlight Rose",{
	meta={goldtype="route",skillreq={legion_herbalism=1},levelreq=45},
	items={{124105,420}},
	maps={"Suramar"},
	},[[
	step
		Reach Level 45 |ding 45
		|tip Use the Leveling guides to accomplish this.
		|tip Suramar is a level 45 zone, and doesn't scale to your level like the other zones in Legion.
	step
	label "Start_Farming_Starlight_Rose"
		map Suramar/0
		path	follow smart; loop on; ants curved; dist 30
		path	25.54,30.05	27.27,29.12	28.67,29.86
		path	29.32,28.85	30.34,28.75	31.01,31.63
		path	32.95,35.75	33.67,38.94	27.80,42.69
		path	27.04,46.43	28.06,49.79	27.40,51.46
		path	27.42,52.84	24.88,52.37	22.97,51.94
		path	23.00,50.04	22.81,46.80	23.38,45.49
		path	22.68,44.71	21.89,45.62	19.88,48.46
		path	18.79,45.88	18.26,44.71	18.14,43.61
		path	16.15,41.98	16.60,39.45	16.16,37.12
		path	19.41,30.97	18.47,28.85	17.56,25.10
		path	16.58,23.72	16.66,22.12	19.53,19.81
		path	20.44,20.19	21.22,22.13	21.61,24.60
		path	23.21,25.75	23.21,28.36	22.84,30.57
		path	24.47,32.06
		click Starlight Rose##244778
		|tip Track them on your minimap with "Find Herbs".
		kill Withered Hungerer##98232+
		|tip They have a chance to spawn when you gather Starlight Rose.
		|goldcollect 420 Starlight Rose##124105 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.1,70.6 |only Alliance
		talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |only Horde
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Starlight Rose |confirm |next "Start_Farming_Starlight_Rose"
]])


-----------------------------
-----    INSCRIPTION    -----
-----------------------------

--  Legion  --


--------------------------------
-----    JEWELCRAFTING    ------
--------------------------------

--  Legion  --


------------------------
-----    MINING    -----
------------------------

--  Legion  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Leystone Ore & Felslate (Mining Route)",{
	meta={goldtype="route",skillreq={legion_mining=1},levelreq=10},
	items={{104877,420}, {123919,50}},
	maps={"Val'sharah"},
	},[[
	step
	label "Start_Farming_Leystone_Ore_&_Felslate"
		map Val'sharah/0
		path	follow smart; loop on; ants curved; dist 30
		path	55.74,56.76	54.98,53.52	53.82,50.33
		path	51.50,50.94	49.04,53.18	47.20,54.90
		path	44.81,58.33	42.84,59.05	40.95,58.71
		path	39.00,58.35	37.22,58.36	34.20,54.81
		path	32.10,56.40	31.81,59.48	33.68,61.81
		path	35.73,62.31	37.16,64.34	38.03,65.36
		path	39.31,64.67	40.07,62.55	42.03,63.65
		path	42.90,64.59	43.51,63.91	44.47,63.50
		path	44.97,64.11	47.08,65.90	47.28,67.56
		path	48.36,68.94	50.04,70.56	48.31,71.48
		path	47.71,72.38	46.81,72.89	46.81,76.90
		path	49.12,78.34	49.31,80.39	49.67,83.57
		path	50.60,84.56	51.82,88.65	52.22,87.49
		path	53.19,88.54	54.64,88.29	56.37,89.53
		path	58.03,89.16	58.13,86.50	59.72,86.38
		path	63.64,89.41	64.92,88.49	66.51,87.67
		path	66.73,84.38	65.28,83.15	64.45,82.25
		path	63.30,83.00	62.00,82.29	60.89,80.01
		path	59.34,79.01	61.10,76.27	63.36,75.12
		path	64.24,73.67	64.69,74.48	65.99,76.79
		path	66.83,75.38	66.83,73.63	66.43,72.56
		path	66.63,70.44	66.53,68.16	65.89,66.89
		path	63.11,65.99	60.87,64.61	59.26,64.27
		path	57.76,64.16	56.07,61.60	56.10,58.30
		click Leystone Deposits##241726
		click Felslate Deposits##241743
		|tip Track them on your minimap with "Find Minerals".
		kill Leystone Basilisk##104877+
		kill Felslate Basilisk##114113+
		|tip The basilisks have a chance to spawn after gathering.
		|goldcollect 420 Leystone Ore##123918 |n
		|goldcollect 50 Felslate##123919 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.1,70.6 |only Alliance
		talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |only Horde
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Leystone Ore & Felslate |confirm |next "Start_Farming_Leystone_Ore_&_Felslate"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Felslate (Killing & Mining Enemies)",{
	meta={goldtype="route",skillreq={legion_mining=1},levelreq=10},
	items={{123919,50}},
	maps={"Stormheim","Suramar"},
	},[[
	step
	label "Start_Farming_Felslate"
		_Where Do You Want to Farm Felslate?_
		Azsuna (Level 10+) |confirm |next "Felslate_Azsuna"
		Suramar (Level 45+) |confirm |next "Felslate_Suramar"
	step
	label "Felslate_Azsuna"
		kill Infernal Brutalizer##93619+
		|tip They're the big rock demon enemies.
		|tip Loot and mine them.
		|goldcollect 50 Felslate##123919 |n |goto Azsuna/0 42.55,44.25
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm |next "Felslate_Sell"
	step
	label "Felslate_Suramar"
		Follow the path |goto Suramar/0 34.96,51.12 < 30 |only if walking
		Follow the path up |goto Suramar/0 34.10,54.37 < 20 |only if walking
		Follow the path |goto Suramar/0 33.10,56.60 < 30 |only if walking
		Follow the path down |goto Suramar/0 32.78,58.75 < 20 |only if walking
		Follow the path |goto Suramar/0 31.95,63.26 < 20 |only if walking
		kill Felslate Basilisk##114113+
		|tip They are all around this area near the green liquid pools.
		|tip Loot and mine them.
		|goldcollect 50 Felslate##123919 |n |goto Suramar/0 28.41,60.77
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm |next "Felslate_Sell"
	step
	label "Felslate_Sell"
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.1,70.6 |only Alliance
		talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |only Horde
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Felslate |confirm |next "Start_Farming_Felslate"
]])


--------------------------
-----    SKINNING    -----
--------------------------

--  Legion  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Stonehide Leather",{
	meta={goldtype="route",skillreq={legion_skinning=1},levelreq=10},
	items={{124113,420}},
	maps={"Stormheim"},
	},[[
	step
	label "Start_Farming_Stonehide_Leather"
		Kill enemies around this area
		|tip There are wolves and deer.
		|tip Loot and skin them.
		|goldcollect 420 Stonehide Leather##124113 |n |goto Stormheim/0 49.36,56.91
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.1,70.6 |only Alliance
		talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |only Horde
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Stonehide Leather |confirm |next "Start_Farming_Stonehide_Leather"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Stormscale",{
	meta={goldtype="route",skillreq={legion_skinning=1},levelreq=10},
	items={{124115,420}},
	maps={"Highmountain"},
	},[[
	step
	label "Start_Farming_Stonehide_Leather"
		kill Coldscale Gazecrawler##108185+
		|tip Interrupt them when they start casting Death Glare, or they will stun you.
		|tip Loot and skin them.
		|goldcollect 420 Stormscale##124115 |n |goto Highmountain/0 51.57,64.13
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.1,70.6 |only Alliance
		talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |only Horde
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Stormscale |confirm |next "Start_Farming_Stonehide_Leather"
]])
