local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
ZygorGuidesViewer.Gold.guides_loaded=true

if UnitFactionGroup("player")~="Alliance" then return end

ZygorGuidesViewer.GuideMenuTier = "BFA"

--@@ONLYDEVSTART
ZGV.DevStart()
ZGV.DevEnd()
--@@ONLYDEVEND

-----------------------------
-----    ENCHANTING    ------
-----------------------------

--  Kul Tiran/Zandalari  --


-------------------------
-----    FISHING    -----
-------------------------

--  Kul Tiran/Zandalari  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Aromatic Fish Oil",{
	author="support@zygorguides.com",
	description="\nThis guide will walk you through farming Aromatic Fish Oil for various Cooking recipes.",
	meta={goldtype="route",skillreq={kul_tiran_fishing=1},levelreq=10},
	items={{160711,200}},
	maps={"Boralus"},
	startlevel=10.0,
	},[[
	step
	label "Start"
		Fish in the open water
		use the Lane Snapper##152546
		use the Frenzied Fangtooth##152545
		|goldcollect 200 Aromatic Fish Oil##160711 |goto Boralus/0 73.64,23.12
		|goldtracker
		|tip
		Click Here to Sell Items |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Aromatic Fish Oil |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Frenzied Fangtooth",{
	meta={goldtype="route",skillreq={kul_tiran_fishing=1},levelreq=25},
	items={{152545,140},{152546,120}},
	maps={"Stormsong Valley"},
	},[[
	step
	label "Start"
		Fish in the open water
		|tip You will occasionally catch Lane Snappers as well.
		|goldcollect 140 Frenzied Fangtooth##152545 |goto Stormsong Valley/0 52.51,25.97
		|goldtracker
		|tip
		Click Here to Sell Items |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Frenzied Fangtooth |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Great Sea Catfish",{
	meta={goldtype="route",skillreq={kul_tiran_fishing=1},levelreq=25},
	items={{152547,140}},
	maps={"Nazmir"},
	},[[
	step
	label "Start"
		map Nazmir/0
		path follow smart; loop off; ants curved; dist 30
		path	39.12,84.85	40.75,87.50	44.45,87.52	46.38,86.58	47.92,82.26
		path	52.34,80.48	55.22,81.01	55.99,77.68	58.95,74.33	60.40,71.18
		path	60.81,70.35	64.07,68.70	65.11,63.06 	65.93,60.32
		Fish in Great Sea Catfish Schools
		|tip They share spawn points with Redtail Loach School.
		|tip You will need fishing to gather from this path.
		|tip You may need water walking in order to farm from some of the pools.
		|tip They look like small circular swirling spots in the water along the coast.
		|goldcollect 140 Great Sea Catfish##152547
		|goldtracker
		'|goto Nazmir/0 65.93,60.32 < 30 |c |noway |next "Farming_Path_Two"
		|tip
		Click Here to Sell Items |confirm |next "Sell_Items"
	step
	label "Farming_Path_Two"
		map Nazmir/0
		path follow smart; loop off; ants curved; dist 30
		path	65.93,60.32	65.11,63.06	64.07,68.70	60.81,70.35	60.40,71.18
		path	58.95,74.33	55.99,77.68	55.22,81.01	52.34,80.48	47.92,82.26
		path	46.38,86.58	44.45,87.52	40.75,87.50	39.12,84.85
		Fish in Great Sea Catfish Schools
		|tip They share spawn points with Redtail Loach Schools.
		|tip You will need fishing to gather from this path.
		|tip You may need water walking in order to farm from some of the pools.
		|tip They look like small circular swirling spots in the water along the coast.
		|goldcollect 140 Great Sea Catfish##152547
		|goldtracker
		'|goto Nazmir/0 39.12,84.85 < 30 |c |noway |next "Start"
		|tip
		Click Here to Sell Items |confirm |next "Sell_Items"
	step
	label "Sell_Items"
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Great Sea Catfish |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Lane Snapper",{
	meta={goldtype="route",skillreq={kul_tiran_fishing=1},levelreq=25},
	items={{152546,120},{152545,140}},
	maps={"Stormsong Valley"},
	},[[
	step
	label "Start"
		Fish in the open water
		|tip You will occassionally catch Frenzied Fangtooth as well.
		|goldcollect 120 Lane Snapper##152546 |goto Stormsong Valley/0 52.51,25.97
		|goldtracker
		|tip
		Click Here to Sell Items |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Lane Snapper |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Mauve Stinger",{
	meta={goldtype="route",skillreq={kul_tiran_fishing=1},levelreq=50},
	items={{168646,164},{168302,96}},
	maps={"Nazjatar"},
	},[[
	step
	label "Farm_Mauve_Stinger"
		cast Fishing##131474
		|tip You will catch Viper Fish as well as Mauve Stinger.
		|goldcollect 164 Mauve Stinger##168646 |n |goto Nazjatar/0 72.86,24.71
		|goldcollect 96 Viper Fish##168302 |n |goto 72.86,24.71
		|goldtracker
		Click Here to Sell Items |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62
		|tip List the items you want to sell on the Auction House.
		|tip
		Click Here After Selling Items |confirm |next "Farm_Mauve_Stinger"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Midnight Salmon",{
	author="support@zygorguides.com",
	description="\nThis guide will walk you through farming Midnight Salmon for various Cooking recipes.",
	meta={goldtype="route",skillreq={kul_tiran_fishing=1},levelreq=25},
	items={{162515,8},{152545,140},{152546,120}},
	maps={"Stormsong Valley"},
	startlevel=35.0,
	},[[
	step
	label "Start"
		map Stormsong Valley/0
		path follow smart; loop off; ants curved; dist 20
		path	56.42,19.69	58.70,17.84	61.38,15.17	63.06,14.62	64.28,16.06
		path	66.47,18.99	69.95,34.95	69.56,36.85	69.24,40.52	66.68,48.49
		path	68.08,50.14	70.34,48.58	72.69,48.96	73.83,52.22	73.82,53.81
		path	72.18,57.68	73.81,59.71	75.43,60.95	77.58,61.04	78.25,61.57
		path	79.24,61.77	80.76,61.45
		Fish in pools found in Stormsong Valley
		|tip You can also fish in one spot for these.
		|tip Midnight Salmon are rare, so it will take a while to collect them.
		|tip They look like small circular swirling spots in the water along the coast.
		|tip These can be found along the coasts of Stormsong Valley.
		|goldcollect 8 Midnight Salmon##162515
		|goldtracker
		'|goto Stormsong Valley/0 80.76,61.45 < 20 |c |noway
		|tip
		Click Here to Sell Items |confirm |next "Sell_Items"
	step
		map Stormsong Valley/0
		path follow smart; loop off; ants curved; dist 20
		path	80.76,61.45	79.24,61.77	78.25,61.57	77.58,61.04	75.43,60.95
		path	73.81,59.71	72.18,57.68	73.82,53.81	73.83,52.22	72.69,48.96
		path	70.34,48.58	68.08,50.14	66.68,48.49	69.24,40.52	69.56,36.85
		path	69.95,34.95	66.47,18.99	64.28,16.06	63.06,14.62	61.38,15.17
		path	58.70,17.84	56.42,19.69
		Fish in pools found in Stormsong Valley
		|tip You can also fish in one spot for these.
		|tip Midnight Salmon are rare, so it will take a while to collect them.
		|tip They look like small circular swirling spots in the water along the coast.
		|tip These can be found along the coasts of Stormsong Valley.
		|goldcollect 8 Midnight Salmon##162515
		|goldtracker
		'|goto Stormsong Valley/0 56.42,19.69 < 20 |c |noway |next "Start"
		|tip
		Click Here to Sell Items |confirm |next "Sell_Items"
	step
	label "Sell_Items"
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Midnight Salmon |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Redtail Loach",{
	author="support@zygorguides.com",
	description="\nThis guide will walk you through farming Redtail Loach for various Cooking recipes.",
	meta={goldtype="route",skillreq={kul_tiran_fishing=1},levelreq=25},
	items={{152549,120}},
	maps={"Nazmir"},
	startlevel=25.0,
	},[[
	step
	label "Start"
		map Nazmir/0
		path follow smart; loop off; ants curved; dist 20
		path	39.12,84.85	40.75,87.50	44.45,87.52	46.38,86.58	47.92,82.26
		path	52.34,80.48	55.22,81.01	55.99,77.68	55.27,75.45	57.93,76.83
		path	57.99,75.50	58.95,74.33	60.40,71.18	60.81,70.35	64.07,68.70
		path	65.11,63.06 	65.93,60.32	67.41,57.61	65.46,55.63
		Fish in Redtail Loach Schools
		|tip They share spawn points with Great Sea Catfish School.
		|tip You will need fishing to gather from this path.
		|tip You may need water walking in order to farm from some of the pools.
		|tip They look like small circular swirling spots in the water along the river.
		|goldcollect 120 Redtail Loach##152549
		|goldtracker
		'|goto Nazmir/0 65.46,55.63 < 20 |c |noway |next "Farming_Path_Two"
		|tip
		Click Here to Sell Items |confirm |next "Sell_Items"
	step
	label "Farming_Path_Two"
		map Nazmir/0
		path follow smart; loop off; ants curved; dist 20
		path	65.46,55.63	67.41,57.61	65.93,60.32	65.11,63.06	64.07,68.70
		path	60.81,70.35	60.40,71.18	58.95,74.33	57.99,75.50	57.93,76.83
		path	55.27,75.45	55.99,77.68	55.22,81.01	52.34,80.48	47.92,82.26
		path	46.38,86.58	44.45,87.52	40.75,87.50	39.12,84.85
		Fish in Redtail Loach Schools
		|tip They share spawn points with Great Sea Catfish School.
		|tip You will need fishing to gather from this path.
		|tip You may need water walking in order to farm from some of the pools.
		|tip They look like small circular swirling spots in the water along the river.
		|goldcollect 120 Redtail Loach##152549
		|goldtracker
		'|goto Nazmir/0 39.12,84.85 < 20 |c |noway |next "Start"
		|tip
		Click Here to Sell Items |confirm |next "Sell_Items"
	step
	label "Sell_Items"
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Redtail Loach |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Sand Shifter",{
	meta={goldtype="route",skillreq={kul_tiran_fishing=1},levelreq=25},
	items={{152543,140},{152544,100}},
	maps={"Nazmir"},
	},[[
	step
	label "Start"
		Fish in the open water
		|tip You will occassionally catch Slimy Mackerel as well.
		|goldcollect 140 Sand Shifter##152543 |goto Nazmir/0 40.78,81.97
		|goldtracker
		|tip
		Click Here to Sell Items |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Sand Shifter |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Slimy Mackerel",{
	meta={goldtype="route",skillreq={kul_tiran_fishing=1},levelreq=25},
	items={{152544,100},{152543,140}},
	maps={"Nazmir"},
	},[[
	step
	label "Start"
		Fish in the open water
		|tip You will occassionally catch Sand Shifters as well.
		|goldcollect 100 Slimy Mackerel##152544 |goto Nazmir/0 40.78,81.97
		|goldtracker
		|tip
		Click Here to Sell Items |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Slimy Mackerel |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Tiragarde Perch",{
	meta={goldtype="route",skillreq={kul_tiran_fishing=1},levelreq=10},
	items={{152548,140},{152547,120}},
	maps={"Tiragarde Sound"},
	},[[
	step
	label "Start"
		Fish in the small pond
		|tip You will occassionally catch Great Sea Catfish as well.
		|goldcollect 140 Tiragarde Perch##152548 |goto Tiragarde Sound/0 77.67,67.30
		|goldtracker
		|tip
		Click Here to Sell Items |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Tiragarde Perch |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Viper Fish",{
	meta={goldtype="route",skillreq={kul_tiran_fishing=1},levelreq=50},
	items={{168302,96},{168646,164}},
	maps={"Nazjatar"},
	},[[
	step
	label "Farm_Viper_Fish"
		cast Fishing##131474
		|tip You will catch Mauve Stinger as well as Viper Fish.
		|goldcollect 96 Viper Fish##168302 |n |goto Nazjatar/0 72.86,24.71
		|goldcollect 164 Mauve Stinger##168646 |n |goto 72.86,24.71
		|goldtracker
		Click Here to Sell Items |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62
		|tip List the items you want to sell on the Auction House.
		|tip
		Click Here After Selling Items |confirm |next "Farm_Viper_Fish"
]])


---------------------------
-----    HERBALISM    -----
---------------------------

--  Kul Tiran/Zandalari  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Akunda's Bite",{
	meta={goldtype="route",skillreq={kul_tiran_herbalism=1},levelreq=35},
	items={{152507,160}},
	maps={"Vol'dun"},
	},[[
	step
	label "Start"
		map Vol'dun/0
		path follow smart; loop on; ants curved; dist 20
		path	49.82,41.45	48.88,41.67	48.29,41.13	47.67,41.21	48.23,39.70
		path	48.42,38.67	48.15,37.58	48.47,36.49	49.41,35.76	49.67,34.73
		path	48.70,34.35	47.76,34.60	47.19,34.79	46.70,34.51	46.16,33.27
		path	46.45,33.23	47.21,33.88	48.03,33.12	48.41,32.77	48.21,30.92
		path	49.83,32.93	51.34,33.27	52.31,33.74	54.00,33.67	55.22,34.82
		path	56.00,35.16	55.54,37.65	55.22,39.94	54.38,41.84	51.56,41.24
		click Akunda's Bite+
		|tip Track them on your minimap with "Find Herbs".
		|goldcollect 160 Akunda's Bite##152507
		|goldtracker
		|tip
		Click Here to Sell Items |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Akunda's Bite |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Anchor Weed",{
	meta={goldtype="route",skillreq={kul_tiran_herbalism=1},levelreq=25},
	items={{152510,32}},
	maps={"Nazmir"},
	},[[
	step
	label "Start"
		map Nazmir/0
		path follow smart; loop on; ants curved; dist 20
		path	41.31,79.88	42.35,78.69	44.42,78.71	47.60,78.67	48.60,80.32
		path	50.17,82.02	51.84,81.36	53.57,76.46	54.89,74.29	55.29,74.00
		path	57.19,72.89	58.20,71.35	59.37,69.45	60.23,67.62	61.67,63.67
		path	63.04,62.18	64.06,60.53	64.90,59.48	64.39,56.65	63.79,55.18
		path	63.28,54.08	63.15,52.14	64.06,51.01	64.03,48.68	64.45,46.84
		path	64.42,44.37	61.01,42.16	59.45,39.19	57.75,38.05	55.70,36.87
		path	54.24,35.95	54.06,35.01	52.74,34.09	50.38,31.37	49.29,29.24
		path	47.90,25.91	46.44,24.92	45.39,28.74	44.84,31.93	44.00,33.91
		path	43.70,35.47	43.63,37.42	43.59,39.81	42.54,41.42	41.33,42.08
		path	40.15,41.19	37.77,41.65
		click Anchor Weed+
		|tip Track them on your minimap with "Find Herbs".
		|goldcollect 32 Anchor Weed##152510
		|goldtracker
		|tip
		Click Here to Sell Items |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Anchor Weed |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Riverbud",{
	meta={goldtype="route",skillreq={kul_tiran_herbalism=1},levelreq=10},
	items={{152505,360}},
	maps={"Tiragarde Sound"},
	},[[
	step
	label "Start"
		map Tiragarde Sound/0
		path	follow smart; loop off; ants curved; dist 20
		path	51.69,31.84	51.12,31.38	50.21,30.71	49.57,29.61	49.35,28.68
		path	48.77,27.41	48.81,26.17	48.23,23.45	49.07,22.58	50.57,22.86
		path	52.15,23.99	53.14,22.64	55.43,22.49	56.43,21.70	58.85,20.89
		path	60.12,18.40	61.27,18.03	62.73,18.29	64.03,19.48	64.51,20.95
		path	65.38,21.75
		click Riverbud+
		|tip Track them on your minimap with "Find Herbs".
		|goldcollect 360 Riverbud##152505
		|goldtracker
		Click here to continue farming |confirm |next "Farming_Part_Two"
		|tip
		Click Here to Sell Items |confirm |next "Sell_Items"
	step
	label "Farming_Part_Two"
		map Tiragarde Sound/0
		path	follow smart; loop off; ants curved; dist 20
		path	63.87,19.66	63.23,17.77	62.39,17.21	61.78,16.40	60.28,17.20
		path	60.43,18.49	60.10,19.18	59.27,19.94	58.35,21.16	57.25,21.04
		path	55.87,22.00	54.73,22.97	53.14,22.66	53.25,24.12	52.35,25.02
		path	53.29,26.07	53.54,26.64	54.02,27.35	54.71,28.75	54.96,29.30
		path	55.40,30.20	55.60,30.76	54.75,31.73	53.65,32.78	52.72,32.47
		click Riverbud+
		|tip Track them on your minimap with "Find Herbs".
		|goldcollect 360 Riverbud##152505+
		|goldtracker
		Click here to continue farming |confirm |next "Start"
		|tip
		Click Here to Sell Items |confirm |next "Sell_Items"
	step
	label "Sell_Items"
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Riverbud |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Sea Stalk",{
	meta={goldtype="route",skillreq={kul_tiran_herbalism=1},levelreq=10},
	items={{152511,340}},
	maps={"Zuldazar"},
	},[[
	step
	label "Start"
		map Zuldazar/0
		path	follow smart; loop on; ants curved; dist 20
		path	70.56,64.15	71.41,65.42	72.20,65.36	73.23,66.61	73.80,65.36
		path	74.88,66.24	76.25,66.34	77.44,66.50	77.35,63.75	75.76,64.34
		path	74.96,63.20	73.08,63.26	72.06,62.91
		click Sea Stalk+
		|tip Track them on your minimap with "Find Herbs".
		|goldcollect 340 Sea Stalk##152511
		|goldtracker
		|tip
		Click Here to Sell Items |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Sea Stalk |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Siren's Pollen",{
	meta={goldtype="route",skillreq={kul_tiran_herbalism=1},levelreq=10},
	items={{152509,240}},
	maps={"Zuldazar"},
	},[[
	step
	label "Start"
		map Zuldazar/0
		path follow smart; loop on; ants curved; dist 20
		path	53.29,29.09	53.90,28.49	54.76,28.21	55.94,27.53	57.14,26.19
		path	58.55,25.49	59.14,24.60	58.52,23.26	58.62,21.68	58.95,21.21
		path	59.48,20.31	60.41,20.27	61.04,20.56	61.05,21.94	61.03,24.10
		path	61.58,24.56	62.36,24.45	62.99,23.80	63.49,23.68	64.05,23.77
		path	64.54,24.42	65.70,25.12	66.63,25.18	67.37,23.75	67.83,23.40
		path	68.54,23.34	68.82,21.99	68.24,20.37	68.12,19.31	67.49,18.36
		path	66.46,18.11	65.94,17.30	65.11,18.00	64.25,18.18	63.40,18.49
		path	62.76,18.29	62.50,17.18	62.44,15.74	61.50,16.16	60.83,17.04
		path	60.82,17.52	60.50,18.43	59.90,19.26	58.91,18.81	57.67,19.79
		path	56.80,19.71	56.11,19.16	55.91,19.37	55.51,19.52	55.33,19.92
		path	54.74,20.13	54.36,20.47	54.08,19.83	53.78,19.57	53.53,19.83
		path	52.65,20.71	51.19,21.06	51.25,21.74	51.87,22.12	52.53,22.27
		path	52.89,22.81	53.57,23.70	54.35,25.18	54.43,26.35
		click Siren's Sting+
		|tip Track them on your minimap with "Find Herbs".
		|tip They grow on trees.
		|goldcollect 240 Siren's Pollen##152509
		|goldtracker
		|tip
		Click Here to Sell Items |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Siren's Pollen |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Star Moss",{
	meta={goldtype="route",skillreq={kul_tiran_herbalism=1},levelreq=35},
	items={{152506,200}},
	maps={"Vol'dun"},
	},[[
	step
	label "Start"
		map Vol'dun/0
		path follow smart; loop on; ants curved; dist 20
		path	50.34,43.91	48.49,43.69	47.64,43.44	47.64,42.48	47.20,42.14
		path	46.93,42.62	46.80,43.24	46.41,44.28	45.64,44.84	45.27,45.78
		path	45.13,46.85	46.60,47.72	48.10,47.80	49.58,47.00	50.07,45.22
		click Star Moss+
		|tip Track them on your minimap with "Find Herbs".
		|goldcollect 200 Star Moss##152506
		|goldtracker
		|tip
		Click Here to Sell Items |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Star Moss |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Winter's Kiss",{
	meta={goldtype="route",skillreq={kul_tiran_herbalism=1},levelreq=25},
	items={{152508,320}},
	maps={"Drustvar"},
	},[[
	step
	label "Start"
		map Drustvar/0
		path follow smart; loop on; ants curved; dist 20
		path	60.97,63.86	61.78,65.57	60.96,67.00	60.65,68.53	58.93,67.74
		path	58.69,66.13	58.89,63.16	58.74,62.51	59.45,61.83
		click Winter's Kiss+
		|tip Track them on your minimap with "Find Herbs".
		|goldcollect 320 Winter's Kiss##152508
		|goldtracker
		|tip
		Click Here to Sell Items |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Winter's Kiss |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Zin'anthid",{
	meta={goldtype="route",skillreq={kul_tiran_herbalism=1},levelreq=50},
	items={{168487,172}},
	maps={"Nazjatar"},
	},[[
	step
	label "Farm_Zin'anthid"
		map Nazjatar/0
		path follow smart; loop on; ants curved; dist 30
		path	62.39,49.58	61.06,45.00	62.27,43.98	63.79,45.02	65.59,44.96
		path	68.40,43.76	70.65,43.43	71.77,43.85	73.39,45.10	75.78,45.87
		path	77.60,45.99	78.45,43.36	79.40,42.50	80.38,40.48	81.28,38.00
		path	83.32,37.55	84.99,37.21	85.06,35.40	83.82,34.11	82.49,34.33
		path	80.19,34.48	79.04,33.97	77.98,31.77	75.92,30.67	74.81,27.65
		path	74.02,27.17	73.13,30.50	71.67,37.02	70.78,37.48	69.55,37.27
		path	68.95,35.58	69.38,31.81	69.79,29.10	66.20,29.74	67.20,27.05
		path	67.75,24.98	66.11,20.90	65.62,17.59	65.00,14.73	63.75,16.57
		path	62.60,18.17	62.11,21.89	62.28,26.89	62.12,28.42	58.93,30.01
		path	60.52,33.30	59.83,38.93	59.26,44.77	56.89,49.64	58.31,50.90
		path	55.98,52.57	57.64,54.84	59.17,56.89	59.89,58.74	62.72,58.70
		path	63.73,54.64	62.29,52.13
		click Zin'anthid##326598+
		|tip Track them on your minimap with "Find Herbs".
		|goldcollect 172 Zin'anthid##168487 |n
		|goldtracker
		Click Here to Sell Items |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62
		|tip List the items you want to sell on the Auction House.
		|tip
		Click Here After Selling Items |confirm |next "Farm_Zin'anthid"
]])


-----------------------------
-----    INSCRIPTION    -----
-----------------------------

--  Kul Tiran/Zandalari  --


--------------------------------
-----    JEWELCRAFTING    ------
--------------------------------

--  Kul Tiran/Zandalari  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Monelite Ore",{
	author="support@zygorguides.com",
	description="\nThis guide will walk you through farming Monelite for various Blacksmithing recipes.",
	meta={goldtype="route",skillreq={kul_tiran_mining=1},levelreq=25},
	items={{152512,240}},
	maps={"Stormsong Valley"},
	startlevel=35.0,
	},[[
	step
	label "Start"
		map Stormsong Valley/0
		path follow smart; loop on; ants curved; dist 20
		path	72.75,65.64	73.49,68.74	72.43,73.58	71.16,72.66	70.21,71.78
		path	69.66,72.11	69.75,73.46	68.77,75.11	68.48,76.96	67.36,77.43
		path	66.41,76.44	65.18,76.96	63.64,75.77	61.94,76.88	60.41,76.91
		path	60.24,75.35	58.68,75.55	58.05,76.22	56.49,76.79	54.78,74.97
		path	53.32,75.77	52.49,76.26	51.06,76.57	50.27,75.41	49.45,74.99
		path	48.73,74.57	48.12,72.12	47.90,70.35	47.34,71.31	46.53,72.85
		path	45.84,72.58	44.89,72.13	43.94,72.32	42.48,73.73	41.20,73.06
		path	41.97,72.57	42.36,72.30	42.96,71.84	43.50,71.07	42.74,68.93
		path	42.35,66.92	41.35,66.51	40.15,66.30	39.35,66.18	38.57,66.93
		path	37.42,66.90	35.83,66.96	34.02,67.76	33.28,69.58	32.69,70.87
		path	31.54,71.48	31.43,73.40	30.50,75.11	29.26,75.62	27.97,76.40
		path	26.84,76.46	26.09,75.71	25.83,75.24	25.33,73.64	26.73,73.24
		path	27.07,72.29	26.83,70.19	28.31,68.70	28.87,67.37	29.39,65.53
		path	29.28,63.58	30.37,61.43	32.41,60.80	34.59,60.11	36.20,60.50
		path	38.05,59.37	39.72,60.59	40.73,61.84	42.38,62.04	43.94,62.33
		path	45.05,61.34	46.43,60.93	47.56,61.92	47.66,63.27	47.20,63.94
		path	46.79,64.36	47.42,65.26	48.20,65.35	49.07,65.49	49.76,65.51
		path	50.85,65.76	51.99,66.56	53.42,69.29	55.17,71.38	56.73,73.48
		path	58.19,72.11	58.93,72.79	60.41,72.63	61.92,73.01	62.80,71.42
		path	63.75,70.57	65.44,69.22	66.17,69.37	67.28,70.41	67.83,70.27
		path	69.27,67.37	70.71,67.08
		click Monelite Seam##276619+
		|tip Track them on your minimap with "Find Minerals".
		|tip Enter caves along the path for additional nodes.
		|goldcollect 240 Monelite Ore##152512
		|goldtracker
		|tip
		Click Here to Sell Items |confirm |next "Sell_Items"
	step
	label "Sell_Items"
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Monelite |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Osmenite Ore",{
	meta={goldtype="route",skillreq={kul_tiran_mining=1},levelreq=50},
	items={{168185,260}},
	maps={"Nazjatar"},
	},[[
	step
	label "Farm_Osmenite_Ore"
		map Nazjatar/0
		path follow smart; loop on; ants curved; dist 30
		path	28.83,39.87	31.51,43.22	29.32,45.41	29.55,47.18	31.92,48.81
		path	33.70,48.29	34.82,47.79	37.36,47.10	37.81,45.15	36.82,42.03
		path	36.63,38.28	35.96,34.45	35.69,33.11	37.23,33.20	37.60,35.48
		path	37.92,38.06	39.01,40.23	38.83,41.72	39.71,43.92	41.15,45.25
		path	42.13,43.71	42.23,39.91	43.01,38.07	44.32,37.34	44.75,34.35
		path	45.00,31.47	44.62,28.04	45.72,26.65	44.26,22.47	43.50,19.61
		path	41.56,13.40	40.57,12.20	39.30,14.85	39.56,17.37	39.51,21.66
		path	38.09,22.88	39.11,25.13	36.66,30.97	34.90,32.15	34.79,29.16
		path	33.41,28.70	31.62,30.47	30.07,30.61	29.06,31.10	27.79,29.29
		path	25.92,30.83	26.63,32.10	27.99,33.03	28.34,35.43
		click Osmenite Deposit##325875+
		click Rich Osmenite Deposit##325873+
		click Osmenite Seam##325874+
		|tip Track them on your minimap with "Find Minerals".
		|tip Enter caves along the path for additional nodes.
		|goldcollect 260 Osmenite Ore##168185 |n
		|goldtracker
		Click Here to Sell Items |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62
		|tip List the items you want to sell on the Auction House.
		|tip
		Click Here After Selling Items |confirm |next "Farm_Osmenite_Ore"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Platinum Ore",{
	meta={goldtype="route",skillreq={kul_tiran_mining=1},levelreq=25},
	items={{152513,60}},
	maps={"Stormsong Valley"},
	},[[
	step
	label "Start"
		map Stormsong Valley/0
		path follow smart; loop on; ants curved; dist 20
		path	72.75,65.64	73.49,68.74	72.43,73.58	71.16,72.66	70.21,71.78
		path	69.66,72.11	69.75,73.46	68.77,75.11	68.48,76.96	67.36,77.43
		path	66.41,76.44	65.18,76.96	63.64,75.77	61.94,76.88	60.41,76.91
		path	60.24,75.35	58.68,75.55	58.05,76.22	56.49,76.79	55.25,78.18
		path	54.30,77.70	51.72,77.92	51.06,76.57	50.27,75.41	49.45,74.99
		path	48.73,74.57	48.12,72.12	47.90,70.35	47.34,71.31	46.53,72.85
		path	45.84,72.58	44.89,72.13	43.94,72.32	42.48,73.73	41.20,73.06
		path	41.97,72.57	42.36,72.30	42.96,71.84	43.50,71.07	42.74,68.93
		path	42.35,66.92	41.35,66.51	40.15,66.30	39.35,66.18	38.57,66.93
		path	37.42,66.90	35.83,66.96	34.02,67.76	33.28,69.58	32.69,70.87
		path	31.54,71.48	31.43,73.40	30.50,75.11	29.26,75.62	27.97,76.40
		path	26.84,76.46	26.09,75.71	25.83,75.24	25.33,73.64	26.73,73.24
		path	27.07,72.29	26.83,70.19	28.31,68.70	28.87,67.37	29.39,65.53
		path	29.28,63.58	30.37,61.43	32.41,60.80	34.59,60.11	36.20,60.50
		path	38.05,59.37	39.72,60.59	40.73,61.84	42.38,62.04	43.94,62.33
		path	45.05,61.34	46.43,60.93	47.56,61.92	47.66,63.27	47.20,63.94
		path	46.79,64.36	47.42,65.26	48.20,65.35	49.07,65.49	49.76,65.51
		path	50.85,65.76	51.99,66.56	53.42,69.29	55.17,71.38	56.73,73.48
		path	58.19,72.11	58.93,72.79	60.41,72.63	61.92,73.01	62.80,71.42
		path	63.75,70.57	65.44,69.22	66.17,69.37	67.28,70.41	67.83,70.27
		path	69.27,67.37	70.71,67.08
		click Platinum Deposit##276618+
		|tip Track them on your minimap with "Find Minerals".
		|tip Enter caves along the path for additional nodes.
		|tip These are rare spawn nodes, so you likely won't find them in bulk.
		|goldcollect 60 Platinum Ore##152513
		|goldtracker
		|tip
		Click Here to Sell Items |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Platinum |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Storm Silver Ore",{
	meta={goldtype="route",skillreq={kul_tiran_mining=1},levelreq=25},
	items={{152579,240}},
	maps={"Stormsong Valley"},
	},[[
	step
	label "Start"
		map Stormsong Valley/0
		path follow smart; loop on; ants curved; dist 20
		path	72.75,65.64	73.49,68.74	72.43,73.58	71.16,72.66	70.21,71.78
		path	69.66,72.11	69.75,73.46	68.77,75.11	68.48,76.96	67.36,77.43
		path	66.41,76.44	65.18,76.96	63.64,75.77	61.94,76.88	60.41,76.91
		path	60.24,75.35	58.68,75.55	58.05,76.22	56.49,76.79	55.25,78.18
		path	54.30,77.70	51.72,77.92	51.06,76.57	50.27,75.41	49.45,74.99
		path	48.73,74.57	48.12,72.12	47.90,70.35	47.34,71.31	46.53,72.85
		path	45.84,72.58	44.89,72.13	43.94,72.32	42.48,73.73	41.20,73.06
		path	41.97,72.57	42.36,72.30	42.96,71.84	43.50,71.07	42.74,68.93
		path	42.35,66.92	41.35,66.51	40.15,66.30	39.35,66.18	38.57,66.93
		path	37.42,66.90	35.83,66.96	34.02,67.76	33.28,69.58	32.69,70.87
		path	31.54,71.48	31.43,73.40	30.50,75.11	29.26,75.62	27.97,76.40
		path	26.84,76.46	26.09,75.71	25.83,75.24	25.33,73.64	26.73,73.24
		path	27.07,72.29	26.83,70.19	28.31,68.70	28.87,67.37	29.39,65.53
		path	29.28,63.58	30.37,61.43	32.41,60.80	34.59,60.11	36.20,60.50
		path	38.05,59.37	39.72,60.59	40.73,61.84	42.38,62.04	43.94,62.33
		path	45.05,61.34	46.43,60.93	47.56,61.92	47.66,63.27	47.20,63.94
		path	46.79,64.36	47.42,65.26	48.20,65.35	49.07,65.49	49.76,65.51
		path	50.85,65.76	51.99,66.56	53.42,69.29	55.17,71.38	56.73,73.48
		path	58.19,72.11	58.93,72.79	60.41,72.63	61.92,73.01	62.80,71.42
		path	63.75,70.57	65.44,69.22	66.17,69.37	67.28,70.41	67.83,70.27
		path	69.27,67.37	70.71,67.08
		click Storm Silver Deposit##276617+
		|tip Track them on your minimap with "Find Minerals".
		|tip Enter caves along the path for additional nodes.
		|goldcollect 240 Storm Silver Ore##152579
		|goldtracker
		|tip
		Click Here to Sell Items |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Storm Silver |confirm |next "Start"
]])


------------------------
-----    MINING    -----
------------------------

--  Kul Tiran/Zandalari  --


--------------------------
-----    SKINNING    -----
--------------------------

--  Kul Tiran/Zandalari  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Blood-Stained Bone",{
	meta={goldtype="route",skillreq={kul_tiran_skinning=1},levelreq=25},
	items={{154164,140}},
	maps={"Nazmir"},
	startlevel=25.0,
	},[[
	step
	label "Start"
		map Nazmir/0
		path	follow smart; loop on; ants curved; dist 20
		path	37.83,75.77	38.34,73.13	37.42,70.76	36.12,70.02	34.90,71.78
		path	34.14,74.34	32.61,75.16	32.44,77.12	34.80,79.08	36.71,79.39
		Kill enemies around this area
		|tip Make sure you loot them so you can skin them after.
		|goldcollect 140 Blood-Stained Bone##154164
		|goldtracker
		|tip
		Click Here to Sell Items |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Blood-Stained Bone |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Calcified Bone",{
	meta={goldtype="route",skillreq={kul_tiran_skinning=1},levelreq=25},
	items={{154165,100}},
	maps={"Nazmir"},
	},[[
	step
	label "Start"
		map Nazmir/0
		path	follow smart; loop on; ants curved; dist 20
		path	37.83,75.77	38.34,73.13	37.42,70.76	36.12,70.02	34.90,71.78
		path	34.14,74.34	32.61,75.16	32.44,77.12	34.80,79.08	36.71,79.39
		Kill enemies around this area
		|tip Make sure you loot them so you can skin them after.
		|goldcollect 100 Calcified Bone##154165
		|goldtracker
		|tip
		Click Here to Sell Items |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Calcified Bone |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Coarse Leather",{
	meta={goldtype="route",skillreq={kul_tiran_skinning=1},levelreq=25},
	items={{152541,200}},
	maps={"Stormsong Valley"},
	},[[
	step
	label "Start"
		map Stormsong Valley/0
		path	follow smart; loop on; ants curved; dist 20
		path	54.55,52.05	54.53,54.26	55.37,55.61	56.52,55.94	57.73,57.66
		path	58.45,58.57	59.24,56.75	59.23,54.33	59.03,52.62	56.67,51.10
		Kill Coldtooth enemies around this area
		|tip Make sure you loot them so you can skin them after.
		|goldcollect 200 Coarse Leather##152541
		|goldtracker
		|tip
		Click Here to Sell Items |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Coarse Leather |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Dredged Leather",{
	meta={goldtype="route",skillreq={kul_tiran_skinning=1},levelreq=50},
	items={{168649,348},{168303,224}},
	maps={"Nazjatar"},
	},[[
	step
	label "Farm_Dredged_Leather"
		map Nazjatar/0
		path follow smart; loop on; ants curved; dist 30
		path	62.96,50.71	66.11,47.80	69.29,49.53	68.62,52.14	70.82,54.52
		path	72.14,51.63	71.10,48.28	69.29,46.42	66.92,46.06	65.14,44.42
		path	63.47,45.03	62.50,43.95	61.42,44.30	61.26,46.34
		Kill enemies around this area
		|tip Make sure you loot them so you can skin them after.
		|goldcollect 348 Dredged Leather##168649 |n
		|goldcollect 224 Rubbery Flank##168303 |n
		|goldtracker
		Click Here to Sell Items |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62
		|tip List the items you want to sell on the Auction House.
		|tip
		Click Here After Selling Items |confirm |next "Farm_Dredged_Leather"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Mistscale",{
	meta={goldtype="route",skillreq={kul_tiran_skinning=1},levelreq=25},
	items={{153051,100}},
	maps={"Nazmir"},
	},[[
	step
	label "Start"
		map Nazmir/0
		path	follow smart; loop on; ants curved; dist 20
		path	37.83,75.77	38.34,73.13	37.42,70.76	36.12,70.02	34.90,71.78
		path	34.14,74.34	32.61,75.16	32.44,77.12	34.80,79.08	36.71,79.39
		Kill enemies around this area
		|tip Make sure you loot them so you can skin them after.
		|goldcollect 100 Mistscale##153051
		|goldtracker
		|tip
		Click Here to Sell Items |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Mistscale |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Shimmerscale",{
	meta={goldtype="route",skillreq={kul_tiran_skinning=1},levelreq=25},
	items={{153050,400}},
	maps={"Nazmir"},
	},[[
	step
	label "Start"
		map Nazmir/0
		path follow smart; loop on; ants curved; dist 20
		path	37.83,75.77	38.34,73.13	37.42,70.76	36.12,70.02	34.90,71.78
		path	34.14,74.34	32.61,75.16	32.44,77.12	34.80,79.08	36.71,79.39
		Kill enemies around this area
		|tip Make sure you loot them so you can skin them after.
		|goldcollect 400 Shimmerscale##153050
		|goldtracker
		|tip
		Click Here to Sell Items |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Shimmerscale |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Stringy Loins",{
	meta={goldtype="route",skillreq={kul_tiran_skinning=1},levelreq=25},
	items={{154897,160}},
	maps={"Drustvar"},
	},[[
	step
	label "Start"
		kill Shallows Saurolisk##125452
		|tip You will need the "Skinning" skill in order to gather these.
		|goldcollect 160 Stringy Loins##154897 |n |goto Drustvar/0 68.37,40.53
		You can find more around [65.33,40.57]
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Stringy Loins |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Tempest Hide",{
	meta={goldtype="route",skillreq={kul_tiran_skinning=1},levelreq=25},
	items={{154722,0}},
	maps={"Stormsong Valley"},
	},[[
	step
	label "Start"
		map Stormsong Valley/0
		path	follow smart; loop on; ants curved; dist 20
		path	54.55,52.05	54.53,54.26	55.37,55.61	56.52,55.94	57.73,57.66
		path	58.45,58.57	59.24,56.75	59.23,54.33	59.03,52.62	56.67,51.10
		Kill Coldtooth enemies around this area
		|tip Make sure you loot them so you can skin them after.
		|goldcollect Tempest Hide##154722
		|goldtracker
		|tip
		Click Here to Sell Items |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Tempest Hide |confirm |next "Start"
]])
