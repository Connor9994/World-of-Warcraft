local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
ZygorGuidesViewer.Gold.guides_loaded=true

ZygorGuidesViewer.GuideMenuTier = "SHA"

--@@ONLYDEVSTART
ZGV.DevStart()
ZGV.DevEnd()
--@@ONLYDEVEND

-----------------------
-----    CLOTH    -----
-----------------------

--  Shadowlands  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Lightless Silk (Ardenweald)",{
	meta={goldtype="route",levelreq={50},itemtype="cloth"},
	items={{173204,12}},
	maps={"Ardenweald"},
	},[[
	step
	label "Start"
		map Ardenweald/0
		path follow smart; loop on; ants curved; dist 20
		path	67.55,34.11	67.83,33.40	68.17,33.90	68.58,34.21	68.70,34.95
		path	68.45,36.14	68.17,35.88	67.93,35.92	67.62,35.50
		Kill Spriggan enemies around this area
		|tip Follow the path, killing and looting along the way.
		|goldcollect 12 Lightless Silk##173204 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62 |n |only Alliance
		talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |n |only Horde
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Lightless Silk |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Lightless Silk (Revendreth)",{
	meta={goldtype="route",levelreq={50},itemtype="cloth"},
	items={{173204,10}},
	maps={"Revendreth"},
	},[[
	step
	label "Start"
		map Revendreth/0
		path follow smart; loop on; ants curved; dist 20
		path	76.37,38.76	76.92,38.41	77.48,37.23	77.70,36.43	78.31,36.50
		path	78.89,36.39	79.20,35.80	79.12,34.92	78.18,34.90	77.47,34.75
		path	77.41,33.46	77.97,33.31	78.52,33.53	79.18,33.91	79.51,34.32
		path	80.28,35.51	80.59,36.37	80.70,37.58	80.56,38.54	79.75,39.01
		path	79.57,40.01	80.06,40.79	79.64,41.02	79.42,40.74	78.98,40.61
		path	78.32,40.63	77.61,40.35	76.87,39.58
		Kill enemies around this area
		|tip Follow the path, killing and looting along the way.
		|goldcollect 28 Lightless Silk##173204 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62 |n |only Alliance
		talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |n |only Horde
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Lightless Silk |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Shrouded Cloth (Ardenweald)",{
	meta={goldtype="route",levelreq={50},itemtype="cloth"},
	items={{173202,172}},
	maps={"Ardenweald"},
	},[[
	step
	label "Start"
		map Ardenweald/0
		path follow smart; loop on; ants curved; dist 20
		path	67.55,34.11	67.83,33.40	68.17,33.90	68.58,34.21	68.70,34.95
		path	68.45,36.14	68.17,35.88	67.93,35.92	67.62,35.50
		Kill Spriggan enemies around this area
		|tip Follow the path, killing and looting along the way.
		|goldcollect 172 Shrouded Cloth##173202 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62 |n |only Alliance
		talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |n |only Horde
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Shrouded Cloth |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Shrouded Cloth (Revendreth)",{
	meta={goldtype="route",levelreq={50},itemtype="cloth"},
	items={{173202,272}},
	maps={"Revendreth"},
	},[[
	step
	label "Start"
		map Revendreth/0
		path follow smart; loop on; ants curved; dist 20
		path	76.37,38.76	76.92,38.41	77.48,37.23	77.70,36.43	78.31,36.50
		path	78.89,36.39	79.20,35.80	79.12,34.92	78.18,34.90	77.47,34.75
		path	77.41,33.46	77.97,33.31	78.52,33.53	79.18,33.91	79.51,34.32
		path	80.28,35.51	80.59,36.37	80.70,37.58	80.56,38.54	79.75,39.01
		path	79.57,40.01	80.06,40.79	79.64,41.02	79.42,40.74	78.98,40.61
		path	78.32,40.63	77.61,40.35	76.87,39.58
		Kill enemies around this area
		|tip Follow the path, killing and looting along the way.
		|goldcollect 272 Shrouded Cloth##173202 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62 |n |only Alliance
		talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |n |only Horde
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Shrouded Cloth |confirm |next "Start"
]])



--------------------------
-----    COOKING    ------
--------------------------

--  Shadowlands  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Aethereal Meat (Bastion)",{
	meta={goldtype="route",levelreq={50},itemtype="food"},
	items={{172052,92}},
	maps={"Bastion"},
	},[[
	step
	label "Start"
		map Bastion/0
		path follow smart; loop on; ants curved; dist 30
		path	59.20,45.79	59.36,44.21	59.39,42.90	58.77,42.46
		path	58.17,43.36	57.88,44.32	57.63,44.46	56.72,44.34	56.08,44.33
		path	55.69,43.48	54.89,43.15	54.58,43.82	55.06,44.40	55.66,45.39
		path	56.20,45.79	56.70,45.79	57.13,45.51	57.49,45.95
		kill Gilded Cloudstrider##159298+
		|tip Follow the path, killing and looting along the way.
		|goldcollect 92 Aethereal Meat##172052 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62 |n |only Alliance
		talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |n |only Horde
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Aethereal Meat |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Aethereal Meat (Revendreth)",{
	meta={goldtype="route",levelreq={50},itemtype="food"},
	items={{172052,100}},
	maps={"Revendreth"},
	},[[
	step
	label "Start"
		map Revendreth/0
		path follow smart; loop on; ants curved; dist 30
		path	70.11,72.82	69.88,71.57	69.14,71.05	68.52,71.42	67.80,70.62
		path	67.28,71.04	66.73,71.69	66.39,72.03	66.50,72.50	66.69,72.84
		path	66.52,73.35	66.57,74.27	66.47,74.98	66.54,75.63	66.04,77.18
		path	65.80,76.87	65.46,75.66	65.15,74.45	65.15,73.11	65.08,71.99
		path	65.16,70.90	65.70,70.21	66.69,69.57	67.57,68.95	68.09,68.02
		path	68.73,68.49	69.48,69.00	70.38,69.11	71.32,69.81	72.36,70.30
		path	72.89,70.87	73.70,71.32	74.34,71.99	74.74,73.32	74.95,74.00
		path	74.95,75.12	74.72,76.41	74.37,76.80	73.75,76.58	73.09,75.86
		path	72.77,75.30	72.34,74.20	71.75,73.33	70.82,73.04
		Kill Bonemauler enemies around this area
		|tip Follow the path, killing and looting along the way.
		|goldcollect 100 Aethereal Meat##172052 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62 |n |only Alliance
		talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |n |only Horde
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Aethereal Meat |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Creeping Crawler Meat (Maldraxxus)",{
	meta={goldtype="route",levelreq={50},itemtype="food"},
	items={{179314,124}},
	maps={"Maldraxxus"},
	},[[
	step
	label "Start"
		map Maldraxxus/0
		path follow smart; loop on; ants curved; dist 20
		path	30.39,59.77	29.94,59.51	29.57,59.67	29.19,60.44	28.63,60.77
		path	28.32,60.83	28.01,60.34	27.76,60.03	27.52,60.22	27.28,60.54
		path	26.83,60.45	26.50,60.35	26.11,60.29	25.73,60.08	25.43,60.00
		path	25.62,58.95	25.52,58.49	25.46,57.71	25.70,57.02	26.09,56.65
		path	26.68,56.74	27.13,57.31	27.49,57.53	28.15,57.59	28.49,57.88
		path	28.93,57.96	29.42,58.14	29.67,59.06	30.22,58.79
		Kill enemies around this area
		|tip Follow the path, killing and looting along the way.
		|goldcollect 124 Creeping Crawler Meat##179314 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62 |n |only Alliance
		talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |n |only Horde
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Creeping Crawler Meat |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Creeping Crawler Meat (Ardenweald)",{
	meta={goldtype="route",levelreq={50},itemtype="food"},
	items={{179314,76}},
	maps={"Ardenweald"},
	},[[
	step
	label "Start"
		map Ardenweald/0
		path follow smart; loop on; ants curved; dist 20
		path	47.77,27.91	47.33,27.73	47.12,26.92	47.30,26.28	47.18,25.61
		path	47.23,25.11	47.31,24.45	47.05,23.89	47.34,23.27	47.47,22.68
		path	47.37,22.40	47.01,22.11	47.24,21.39	47.68,21.23	48.34,21.71
		path	48.91,22.28	48.96,23.04	48.46,23.32	47.98,23.88	47.92,24.37
		path	48.27,25.03	48.50,25.62	48.31,26.60	48.06,27.31
		Kill enemies around this area
		|tip Follow the path, killing and looting Gorm Harriers and Mature Stellarwasps along the way.
		|goldcollect 76 Creeping Crawler Meat##179314 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62 |n |only Alliance
		talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |n |only Horde
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Creeping Crawler Meat |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Phantasmal Haunch (Ardenweald)",{
	meta={goldtype="route",levelreq={50},itemtype="food"},
	items={{172055,124}},
	maps={"Ardenweald"},
	},[[
	step
	label "Start"
		map Ardenweald/0
		path follow smart; loop on; ants curved; dist 20
		path	46.76,27.09	45.90,26.54	45.66,26.19	45.35,26.01	44.98,24.74
		path	44.95,24.15	45.12,23.61	45.11,22.91	45.87,21.56	46.69,21.80
		path	46.39,23.29	46.12,24.29	45.97,24.65	46.06,25.52	46.37,25.87
		path	46.67,26.37
		kill Gorm Ravener##158364+
		|tip Follow the path, killing and looting along the way.
		|goldcollect 124 Phantasmal Haunch##172055 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62 |n |only Alliance
		talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |n |only Horde
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Phantasmal Haunch |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Phantasmal Haunch (Maldraxxus)",{
	meta={goldtype="route",levelreq={50},itemtype="food"},
	items={{172055,108}},
	maps={"Maldraxxus"},
	},[[
	step
	label "Start"
		map Maldraxxus/0
		path follow smart; loop on; ants curved; dist 30
		path	46.02,53.42	44.86,54.59	44.01,54.73	43.64,53.36	44.11,52.12
		path	43.57,50.85	43.80,49.83	43.27,48.48	43.68,47.70	43.82,46.65
		path	44.18,45.15	44.71,46.59	44.87,47.76	45.35,48.56	45.53,49.51
		path	45.26,50.15	45.35,51.55	45.74,52.59
		Kill enemies around this area
		|tip Follow the path, killing and looting Bloodskin Tauraluss and Furious Alphahoof enemies along the way.
		|goldcollect 108 Phantasmal Haunch##172055 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62 |n |only Alliance
		talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |n |only Horde
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Phantasmal Haunch |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Raw Seraphic Wing",{
	meta={goldtype="route",levelreq={50},itemtype="food"},
	items={{172054,88}},
	maps={"Bastion"},
	},[[
	step
	label "Start"
		map Bastion/0
		path follow smart; loop on; ants curved; dist 30
		path	52.91,79.69	53.60,79.16	54.14,78.74	54.58,78.68	55.10,78.40
		path	55.42,77.18	55.82,76.46	56.11,75.86	55.76,75.40	55.24,75.08
		path	54.72,75.55	54.38,76.44	53.90,77.03	53.44,77.27	52.91,77.20
		path	52.62,77.81	52.13,78.90	52.08,79.77	52.14,80.69	52.05,81.51
		path	52.62,81.55	52.86,80.83	52.84,80.06
		Kill Etherwyrm enemies around this area
		|tip Follow the path, killing and looting along the way.
		|goldcollect 88 Raw Seraphic Wing##172054 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62 |n |only Alliance
		talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |n |only Horde
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Raw Seraphic Wing |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Shadowy Shank (Ardenweald)",{
	meta={goldtype="route",levelreq={50},itemtype="food"},
	items={{179315,88}},
	maps={"Ardenweald"},
	},[[
	step
	label "Start"
		map Ardenweald/0
		path follow smart; loop on; ants curved; dist 30
		path	46.76,27.09	45.90,26.54	45.66,26.19	45.35,26.01	44.98,24.74
		path	44.95,24.15	45.12,23.61	45.11,22.91	45.87,21.56	46.69,21.80
		path	46.39,23.29	46.12,24.29	45.97,24.65	46.06,25.52	46.37,25.87
		path	46.67,26.37
		kill Gorm Ravener##158364+
		|tip Follow the path, killing and looting along the way.
		|goldcollect 88 Shadowy Shank##179315 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62 |n |only Alliance
		talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |n |only Horde
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Shadowy Shank |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Shadowy Shank (Maldraxxus)",{
	meta={goldtype="route",levelreq={50},itemtype="food"},
	items={{179315,56}},
	maps={"Maldraxxus"},
	},[[
	step
	label "Start"
		map Maldraxxus/0
		path follow smart; loop on; ants curved; dist 30
		path	46.02,53.42	44.86,54.59	44.01,54.73	43.64,53.36	44.11,52.12
		path	43.57,50.85	43.80,49.83	43.27,48.48	43.68,47.70	43.82,46.65
		path	44.18,45.15	44.71,46.59	44.87,47.76	45.35,48.56	45.53,49.51
		path	45.26,50.15	45.35,51.55	45.74,52.59
		Kill enemies around this area
		|tip Follow the path, killing and looting Bloodskin Tauraluss and Furious Alphahoof enemies along the way.
		|goldcollect 56 Shadowy Shank##179315 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62 |n |only Alliance
		talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |n |only Horde
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Shadowy Shank |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Tenebrous Ribs (Maldraxxus)",{
	meta={goldtype="route",levelreq={50},itemtype="food"},
	items={{172053,88}},
	maps={"Maldraxxus"},
	},[[
	step
	label "Start"
		map Maldraxxus/0
		path follow smart; loop on; ants curved; dist 30
		path	55.27,53.15	56.13,50.85	56.74,49.70	57.18,48.66	57.10,47.30
		path	56.49,46.24	56.83,44.87	56.80,43.31	56.13,42.44	56.04,41.67
		path	55.21,40.47	54.23,39.66	53.88,38.73	53.55,37.19	53.96,35.45
		path	53.97,34.11	54.52,33.48	55.11,33.80	56.32,33.76	57.24,34.28
		path	57.57,34.78	57.65,35.64	57.27,36.60	56.71,37.25	56.95,37.92
		path	57.61,38.59	57.74,39.65	58.20,40.16	58.74,40.36	58.68,42.44
		path	58.61,44.04	58.51,45.71	58.62,47.09	58.07,48.20	57.71,49.22
		path	57.40,50.74	57.04,52.08	56.48,53.13	55.67,53.73
		Kill Bloodtusk enemies around this area
		|goldcollect 92 Tenebrous Ribs##172053 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62 |n |only Alliance
		talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |n |only Horde
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Tenebrous Ribs |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Tenebrous Ribs (Ardenweald)",{
	meta={goldtype="route",levelreq={50},itemtype="food"},
	items={{172053,84}},
	maps={"Ardenweald"},
	},[[
	step
	label "Start"
		map Ardenweald/0
		path follow smart; loop on; ants curved; dist 25
		path	50.01,48.77	50.10,47.59	50.31,46.48	50.92,45.91	50.58,44.94
		path	50.68,44.22	51.26,44.09	51.69,44.58	52.07,44.55	52.17,43.61
		path	52.47,43.19	52.95,43.50	53.25,43.90	53.80,43.82	54.36,42.68
		path	54.11,41.83	54.22,41.27	54.58,41.35	54.96,41.37	55.70,41.24
		path	56.18,41.41	56.26,41.96	55.71,43.09	55.77,44.23	56.63,44.46
		path	57.10,44.56	57.31,43.63	57.08,42.56	56.91,42.08	57.37,41.44
		path	57.36,40.69	57.34,39.81	57.49,38.85	57.79,38.43	57.84,37.46
		path	57.99,36.82	58.52,36.64	58.95,37.57	59.05,38.75	58.95,39.79
		path	58.92,40.98	58.62,42.03	58.28,42.53	58.14,43.32	58.39,43.88
		path	58.81,44.17	59.63,44.33	60.23,44.39	60.82,44.70	60.45,45.68
		path	59.82,45.55	59.22,45.32	58.57,45.55	58.14,46.26	57.28,46.25
		path	56.63,45.66	55.94,45.83	55.22,45.47	54.41,45.78	53.60,45.96
		path	53.05,45.39	52.47,45.27	52.04,45.45	51.69,45.97	51.46,46.71
		path	51.13,47.20	50.99,47.94	51.01,49.20	50.52,50.03	50.07,49.36
		Kill Runestag and Runedeer enemies around this area
		|goldcollect 92 Tenebrous Ribs##172053 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62 |n |only Alliance
		talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |n |only Horde
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Tenebrous Ribs |confirm |next "Start"
]])



-------------------------------------
-----    ELEMENTAL REAGENTS    ------
-------------------------------------

--  Shadowlands  --
