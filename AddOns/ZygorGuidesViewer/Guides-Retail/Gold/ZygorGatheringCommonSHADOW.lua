local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
ZygorGuidesViewer.Gold.guides_loaded=true

ZygorGuidesViewer.GuideMenuTier = "SHA"

--@@ONLYDEVSTART
ZGV.DevStart()
ZGV.DevEnd()
--@@ONLYDEVEND

-----------------------------
-----    ENCHANTING    ------
-----------------------------

--  Shadowlands  --


-------------------------
-----    FISHING    -----
-------------------------

--  Shadowlands  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Iridescent Amberjack",{
	meta={goldtype="route",skillreq={shadowlands_fishing=1},levelreq={50}},
	items={{173033,80}},
	maps={"Ardenweald"},
	},[[
	step
	label "Start"
		cast Fishing##131474
		use Iridescent Amberjack Bait##173039
		|tip These have a chance to drop while fishing in Ardenweald.
		|tip Use them to inscrease the chances of catching Iridescent Amberjacks.
		|goldcollect 80 Iridescent Amberjack##173033 |n |goto Ardenweald/0 49.36,52.98
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
		Click Here to Farm Iridescent Amberjack |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Lost Sole",{
	meta={goldtype="route",skillreq={shadowlands_fishing=1},levelreq={50}},
	items={{173032,80}},
	maps={"Ardenweald"},
	},[[
	step
	label "Start"
		cast Fishing##131474
		use Lost Sole Bait##173038
		|tip These have a chance to drop while fishing in Ardenweald.
		|tip Use them to inscrease the chances of catching Lost Soles.
		|goldcollect 80 Lost Sole##173032 |n |goto Ardenweald/0 49.36,52.98
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
		Click Here to Farm Lost Sole |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Pocked Bonefish",{
	meta={goldtype="route",skillreq={shadowlands_fishing=1},levelreq={50}},
	items={{173035,120}},
	maps={"Maldraxxus"},
	},[[
	step
	label "Start"
		cast Fishing##131474
		use Pocked Bonefish Bait##173041
		|tip These have a chance to drop while fishing in Maldraxxus.
		|tip Use them to inscrease the chances of catching Pocked Bonefish.
		|goldcollect 120 Pocked Bonefish##173035 |n |goto Maldraxxus/0 49.57,54.10
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
		Click Here to Farm Pocked Bonefish |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Silvergill Pike",{
	meta={goldtype="route",skillreq={shadowlands_fishing=1},levelreq={50}},
	items={{173034,96}},
	maps={"Bastion"},
	},[[
	step
	label "Start"
		cast Fishing##131474
		use Silvergill Pike Bait##173040
		|tip These have a chance to drop while fishing in Bastion.
		|tip Use them to inscrease the chances of catching Silvergill Pikes.
		|goldcollect 96 Silvergill Pike##173034 |n |goto Bastion/0 49.29,64.34
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
		Click Here to Farm Silvergill Pike |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Spinefin Piranha",{
	meta={goldtype="route",skillreq={shadowlands_fishing=1},levelreq={50}},
	items={{173036,96}},
	maps={"Revendreth"},
	},[[
	step
	label "Start"
		cast Fishing##131474
		use Spinefin Piranha Bait##173042
		|tip These have a chance to drop while fishing in Revendreth.
		|tip Use them to inscrease the chances of catching Spinefin Piranhas.
		|goldcollect 96 Spinefin Piranha##173036 |n |goto Revendreth/0 51.31,63.83
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
		Click Here to Farm Spinefin Piranha |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Elysian Thade",{
	meta={goldtype="route",skillreq={shadowlands_fishing=1},levelreq={50}},
	items={{173037,12}},
	maps={"Ardenweald"},
	},[[
	step
	label "Start"
		cast Fishing##131474
		use Elysian Thade Bait##173043
		|tip These have a chance to drop while fishing in Ardenweald.
		|tip Use them to inscrease the chances of catching Elysian Thades.
		|goldcollect 12 Elysian Thade##173037 |n |goto Ardenweald/0 49.36,52.98
		|tip These are a rare drop.
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
		Click Here to Farm Elysian Thade |confirm |next "Start"
]])


---------------------------
-----    HERBALISM    -----
---------------------------

--  Shadowlands  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Death Blossom",{
	meta={goldtype="route",skillreq={shadowlands_herbalism=1},levelreq={50}},
	items={{169701,64}},
	maps={"Bastion"},
	},[[
	step
	label "Start"
		map Bastion/0
		path follow smart; loop on; ants curved; dist 30
		path	55.76,52.18	56.37,50.66	58.19,49.85	57.78,45.05	56.63,42.52
		path	55.64,39.59	54.54,37.01	52.41,36.67	51.22,34.53	52.02,31.33
		path	51.75,29.16	50.55,28.03	49.98,29.63	50.16,25.77	49.12,24.12
		path	48.83,22.06	48.47,18.71	49.28,18.26	51.48,16.92	53.88,14.72
		path	53.05,13.19	51.89,12.89	53.55,11.14	54.21,9.93	54.85,10.31
		path	56.00,11.44	56.73,11.35	58.27,13.14	56.33,15.19	55.38,15.72
		path	54.30,17.56	54.79,20.14	55.19,22.23	55.56,24.22	55.10,26.13
		path	54.38,28.12	55.63,31.15	56.81,33.39	57.09,35.98	58.47,36.94
		path	60.84,35.65	62.19,34.95	61.92,32.24	63.91,32.28	65.06,30.61
		path	65.60,33.10	65.44,35.35	65.72,39.31	67.99,39.77	69.21,38.68
		path	70.35,39.31	71.09,40.48	70.07,43.56	69.06,45.07	67.76,46.09
		path	66.15,45.81	65.35,46.11	63.70,44.87	63.04,45.97	63.07,43.75
		path	61.41,43.73	60.58,45.51	61.13,47.45	61.43,50.62	61.24,52.27
		path	59.92,53.74	59.24,54.60	57.93,55.23
		click Death Blossom##336686+
		|tip Track them on your minimap with "Find Herbs".
		|tip Bastion has a lot of cliffs, but this path has no fatal fall damage areas.
		|tip Just keep track of your health when you jump down.
		|goldcollect 64 Death Blossom##169701 |n
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
		Click Here to Farm Death Blossom |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Marrowroot",{
	meta={goldtype="route",skillreq={shadowlands_herbalism=1},levelreq={50}},
	items={{168589,180}},
	maps={"Maldraxxus"},
	},[[
	step
	label "Start"
		map Maldraxxus/0
		path follow smart; loop on; ants curved; dist 30
		path	51.75,59.20	54.32,58.72	54.29,60.31	54.99,61.54	56.59,62.37
		path	57.70,62.15	58.66,61.88	59.39,61.36	60.16,62.04	61.26,61.63
		path	61.76,58.74	63.57,55.87	65.13,54.42	66.05,54.24	67.19,54.96
		path	67.84,53.88	68.46,53.31	69.63,53.71	70.61,54.23	70.52,53.89
		path	70.88,52.77	72.05,51.98	72.64,52.42	73.78,52.13	74.60,51.56
		path	74.56,48.57	75.20,47.19	76.00,45.71	76.30,44.17	75.47,43.73
		path	74.85,44.27	74.24,44.11	73.59,43.10	73.40,44.96	71.07,45.13
		path	70.34,46.20	69.08,48.85	67.66,50.46	66.61,51.62	65.54,52.20
		path	64.47,49.32	63.74,49.51	62.31,50.34	61.92,49.01	62.06,47.07
		path	61.90,46.52	60.28,42.26	58.57,43.00	55.68,42.74	54.62,41.87
		path	53.03,40.06	51.19,39.37	50.71,37.72	51.81,35.97	52.85,33.90
		path	53.63,33.83	54.25,34.40	54.36,35.70	54.36,36.82	55.88,35.28	
		path	56.31,36.68	56.47,37.04	56.36,38.16	55.92,39.72	56.69,40.44
		path	57.29,40.45	57.82,38.55	58.11,36.42	58.81,35.41	59.82,36.22
		path	59.69,33.40	59.01,32.58	57.10,31.54	56.03,30.25	54.37,26.98
		path	53.95,23.90	52.74,22.26	53.67,20.67	54.73,20.37	55.71,19.62
		path	55.56,16.36	54.46,14.68	52.92,15.79	51.84,18.11	49.75,19.53
		path	49.90,20.70	51.12,24.86	48.48,24.64	46.02,24.44	45.16,25.00
		path	46.09,27.33	47.42,27.78	47.02,29.96	46.17,30.19	45.48,30.26
		path	44.88,27.50	44.61,26.75	42.40,27.99	41.57,29.14	42.10,31.92
		path	42.43,32.97	43.55,33.91	42.68,35.62	42.31,37.68	42.01,40.87	
		path	41.03,41.74	39.89,43.04	39.42,44.53	39.59,45.72	37.92,45.14
		path	36.83,46.11	36.50,47.17	36.73,49.58	36.53,51.32	35.58,52.69
		path	35.39,54.87	36.69,54.50	37.76,52.98	38.59,51.80	39.69,52.19
		path	39.97,50.86	39.54,48.82	40.35,49.13	41.11,50.82	42.05,50.64	
		path	42.70,51.11	43.49,49.98	43.51,48.23	44.03,46.35	44.85,47.50
		path	45.22,50.09	44.27,51.35	44.67,53.53	44.00,55.55	45.28,57.07
		path	45.86,58.26	48.26,58.32	49.86,58.34	50.63,59.32
		click Marrowroot##336689+
		|tip Track them on your minimap with "Find Herbs".
		|goldcollect 180 Marrowroot##168589 |n
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
		Click Here to Farm Marrowroot |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Vigil's Torch",{
	meta={goldtype="route",skillreq={shadowlands_herbalism=1},levelreq={50}},
	items={{170554,120}},
	maps={"Ardenweald"},
	},[[
	step
	label "Start"
		map Ardenweald/0
		path follow smart; loop on; ants curved; dist 30
		path	37.04,51.70	37.28,49.78	37.51,47.91	37.57,46.73	38.10,45.56
		path	38.69,42.99	37.45,43.44	35.88,44.17	35.01,44.83	33.66,45.61
		path	32.79,43.88	32.85,42.28	32.87,40.15	32.58,39.27	32.49,38.16
		path	31.61,38.65	29.82,38.59	29.29,37.50	28.95,35.72	29.21,34.58
		path	30.09,33.58	31.03,33.43	31.76,33.19	32.47,34.02	33.16,33.49
		path	33.31,32.09	34.18,32.10	34.69,30.95	35.39,29.98	35.66,28.39
		path	36.06,27.42	37.93,27.25	38.11,28.79	39.01,29.30	40.20,29.75
		path	40.79,29.42	42.02,28.41	43.54,26.93	43.91,25.04	44.08,23.18
		path	46.22,22.42	46.63,26.38	47.06,27.67	48.20,28.79	49.53,28.43
		path	49.81,27.25	50.74,26.71	51.96,26.97	53.32,26.74	54.54,26.07
		path	55.30,27.32	54.53,28.43	54.51,30.36	54.19,31.73	54.74,34.61
		path	56.63,34.61	57.87,35.09	58.36,34.56	59.35,33.77	59.44,32.43
		path	60.12,29.30	61.15,30.44	61.33,31.52	61.69,32.84	62.79,30.81
		path	63.20,28.13	64.18,26.11	64.45,25.34	64.49,23.62	66.29,23.81
		path	67.94,23.06	69.55,23.56	69.58,24.32	68.64,25.17	68.48,26.16
		path	68.50,27.13	70.02,28.25	70.42,28.81	71.45,28.09	72.35,26.85
		path	73.10,28.00	75.10,30.60	75.01,32.08	74.01,32.76	73.45,33.91
		path	73.63,35.04	73.21,35.91	72.02,35.87	71.28,36.70	70.25,37.16
		path	69.44,38.07	67.90,38.46	66.14,40.76	65.43,41.92	64.42,43.24
		path	63.48,44.33	64.03,46.18	63.94,47.26	64.75,48.95	65.12,49.30
		path	65.45,50.28	66.14,52.37	66.24,53.34	65.65,54.71	66.94,54.99
		path	67.63,54.60	68.19,53.75	69.08,54.55	69.60,54.84	69.93,53.81
		path	70.59,55.02	70.58,56.84	69.49,57.72	68.59,57.78	67.50,59.68
		path	66.83,60.28	66.13,59.93	65.60,57.77	65.04,56.01	63.28,56.21
		path	61.94,55.99	60.67,57.18	60.26,58.24	59.43,58.65	58.01,58.79
		path	57.91,60.30	57.69,62.05	57.25,63.59	56.45,64.93	55.71,66.75
		path	55.13,67.67	54.46,68.00	53.98,70.55	53.49,71.28	53.60,73.31
		path	52.94,74.38	52.08,75.10	52.20,76.89	51.19,76.86	50.68,76.26
		path	50.60,74.55	48.75,75.16	47.43,74.63	46.28,74.89	44.99,74.31
		path	44.12,74.09	43.11,72.21	42.62,70.18	41.81,69.39	40.55,66.98
		path	40.02,67.25	39.47,67.93	39.03,68.60	38.14,69.34	36.57,69.07
		path	36.06,68.60	35.58,67.53	35.38,66.06	35.26,64.23	35.08,62.20
		path	34.75,59.78	35.37,58.23	35.33,56.38	35.88,56.38	36.65,57.00
		path	37.22,56.80	38.65,55.56	39.10,55.12	40.14,54.94	40.75,54.18
		path	39.78,51.99	40.21,51.24	39.77,50.07	38.62,51.06	38.24,51.17
		click Vigil's Torch##336688+
		|tip Track them on your minimap with "Find Herbs".
		|goldcollect 120 Vigil's Torch##170554 |n
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
		Click Here to Farm Vigil's Torch |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Rising Glory",{
	meta={goldtype="route",skillreq={shadowlands_herbalism=1},levelreq={50}},
	items={{168586,200}},
	maps={"Bastion"},
	},[[
	step
	label "Start"
		map Bastion/0
		path follow smart; loop on; ants curved; dist 30
		path	55.76,52.18	56.37,50.66	58.19,49.85	57.78,45.05	56.63,42.52
		path	55.64,39.59	54.54,37.01	52.41,36.67	51.22,34.53	52.02,31.33
		path	51.75,29.16	50.55,28.03	49.98,29.63	50.16,25.77	49.12,24.12
		path	48.83,22.06	48.47,18.71	49.28,18.26	51.48,16.92	53.88,14.72
		path	53.05,13.19	51.89,12.89	53.55,11.14	54.21,9.93	54.85,10.31
		path	56.00,11.44	56.73,11.35	58.27,13.14	56.33,15.19	55.38,15.72
		path	54.30,17.56	54.79,20.14	55.19,22.23	55.56,24.22	55.10,26.13
		path	54.38,28.12	55.63,31.15	56.81,33.39	57.09,35.98	58.47,36.94
		path	60.84,35.65	62.19,34.95	61.92,32.24	63.91,32.28	65.06,30.61
		path	65.60,33.10	65.44,35.35	65.72,39.31	67.99,39.77	69.21,38.68
		path	70.35,39.31	71.09,40.48	70.07,43.56	69.06,45.07	67.76,46.09
		path	66.15,45.81	65.35,46.11	63.70,44.87	63.04,45.97	63.07,43.75
		path	61.41,43.73	60.58,45.51	61.13,47.45	61.43,50.62	61.24,52.27
		path	59.92,53.74	59.24,54.60	57.93,55.23
		click Rising Glory##336690+
		|tip Track them on your minimap with "Find Herbs".
		|goldcollect 200 Rising Glory##168586 |n
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
		Click Here to Farm Rising Glory |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Widowbloom",{
	meta={goldtype="route",skillreq={shadowlands_herbalism=1},levelreq={50}},
	items={{168583,88}},
	maps={"Revendreth"},
	},[[
	step
	label "Start"
		map Revendreth/0
		path follow smart; loop on; ants curved; dist 30
		path	58.15,57.97	57.89,58.73	57.37,59.59	56.55,59.11	54.80,58.99
		path	54.05,60.60	52.49,61.57	50.77,64.36	49.51,64.50	48.77,65.26
		path	48.13,61.69	46.70,63.95	45.37,64.69	44.11,63.51	42.91,63.46
		path	42.81,65.41	40.94,68.67	40.08,70.05	39.75,72.21	39.25,74.19
		path	38.97,75.36	39.13,76.45	40.10,76.12	41.43,75.64	43.15,74.08
		path	44.82,72.66	45.87,73.47	47.83,72.23	48.81,70.89	48.74,72.33
		path	48.10,73.85	48.10,76.85	49.73,76.04	49.87,75.10	50.36,73.36
		path	50.50,71.47	51.39,70.26	52.46,72.64	53.90,75.16	54.38,76.14
		path	55.38,74.96	56.47,73.34	58.65,72.04	59.82,71.85	60.44,71.15
		path	59.90,69.68	59.49,67.51	58.95,65.64	59.72,65.48	61.34,66.44
		path	62.49,67.09	63.48,66.90	64.58,66.64	65.95,64.60	66.18,63.15
		path	66.30,61.44	68.08,62.84	69.13,63.22	69.99,63.19	70.67,65.46
		path	70.47,68.60	68.71,69.55	69.31,70.45	70.03,72.12	73.63,74.33
		path	74.89,74.91	72.97,71.82	72.23,70.40	71.99,68.72	73.87,68.48
		path	74.93,68.48	75.35,67.14	76.06,66.36	76.98,66.95	78.20,67.22
		path	78.19,66.45	79.10,66.47	79.58,65.05	80.36,61.75	81.06,60.03
		path	80.52,57.99	79.30,57.84	78.36,58.79	77.81,61.41	77.47,63.43
		path	76.43,62.98	75.01,63.06	74.32,63.69	72.83,62.49	72.77,61.51
		path	71.22,60.07	70.62,58.72	68.58,57.65	67.01,58.64	66.59,57.84
		path	66.08,56.51	64.46,56.06	63.35,55.49	62.71,53.16	61.51,53.41
		path	60.81,54.00	60.23,54.86
		click Widowbloom##336433+
		|tip Track them on your minimap with "Find Herbs".
		|goldcollect 88 Widowbloom##168583 |n
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
		Click Here to Farm Widowbloom |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Nightshade",{
	meta={goldtype="route",skillreq={shadowlands_herbalism=1},levelreq={50}},
	items={{171315,20}},
	maps={"The Maw"},
	},[[
	step
	label "Start"
		map The Maw/0
		path follow smart; loop on; ants curved; dist 30
		path	43.78,41.74	42.90,40.34	41.67,39.92	40.71,39.08	38.80,38.32
		path	36.42,36.49	35.38,36.23	35.18,37.40	34.98,39.92	34.58,40.49
		path	33.68,40.33	32.94,38.68	31.78,38.54	30.93,37.03	28.94,36.06
		path	27.57,34.58	26.88,34.29	27.79,33.51	29.34,33.08	31.15,32.05
		path	32.12,32.30	32.90,32.07	32.44,29.66	32.24,28.92	32.59,27.02
		path	33.31,25.49	33.75,23.78	34.26,20.34	33.55,18.92	30.96,19.30
		path	29.31,20.65	30.28,21.36	31.25,26.77	30.75,30.27	29.78,31.38
		path	28.89,32.34	26.89,32.26	24.73,28.78	22.65,27.24	22.58,28.96
		path	22.08,30.84	21.14,35.57	22.05,39.01	21.75,40.37	22.92,42.69
		path	24.15,43.62	27.44,42.16	30.34,42.67	31.52,44.53	32.31,45.81
		path	33.50,48.75	34.40,49.03	36.11,49.32	36.83,47.54	38.41,46.67
		path	39.10,46.82	39.71,48.27	40.59,48.60	41.01,49.88	42.60,48.95
		path	42.24,47.06	42.65,44.29	43.51,43.06
		click Nightshade##336691+
		|tip Track them on your minimap with "Find Herbs".
		|tip These are a rare spawn.
		|goldcollect 20 Nightshade##171315 |n
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
		Click Here to Farm Nightshade |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\First Flower",{
	meta={goldtype="route",skillreq={shadowlands_herbalism=1},levelreq={60}},
	items={{187699,288},{171315,124},{187707,4}},
	maps={"Zereth Mortis"},
	},[[
	step
	label "Start"
		You can find Echoed Jiro Genesii at:
		[Zereth Mortis/0 52.48,28.99]
		[63.13,19.49]
		|tip Echoed Jiro Genesii grant "Gift of the Genesii" which increases Progenitor Essentia drop rate.
		You can find Echoed Jiro Nascii at:
		[59.72,37.36]
		[69.75,33.55]
		|tip Echoed Jiro Nascii grant "Gift of the Nascii" which reduces your chance to be seen by enemies, stacking two times.
		|tip It is helpful to mark these Jiro with raid markers before beginning.
		|tip Maintain one stack of "Gift of the Genesii" and two stacks of "Gift of the Nascii" when possible.
		|tip You can only interact with them and gain the buff with Pocopoc summoned.
		Click Here to Continue |confirm
		|only if specialtalent(1971)
	step
	label "Start_No_Jiro"
		map Zereth Mortis/0
		path follow smart; loop on; ants curved; dist 30
		path	64.26,46.08	65.05,42.15	67.23,37.37	68.59,32.93	68.69,31.01
		path	67.34,27.90	66.53,24.65	64.90,22.31	61.70,19.53	61.12,22.99
		path	58.91,24.76	57.22,27.65	56.21,29.20	53.51,26.37	51.62,24.66
		path	49.67,25.28	49.59,28.69	50.75,30.44	53.18,30.45	55.52,31.15
		path	58.17,34.12	61.30,36.46	63.05,38.15	63.88,41.66
		click First Flower##370398+
		click Lush First Flower##370397+
		click Elusive First Flower##375337+ |only if specialtalent(1971)
		click Lush Elusive First Flower##375340+ |only if specialtalent(1971)
		|tip Track them on your minimap with "Find Herbs".
		|tip Occasionally clear the center of the path if spawns become less common.
		|goldcollect 288 First Flower##187699 |n
		|goldcollect 124 Nightshade##171315 |n
		|goldcollect 4 Progenitor Essentia##187707 |n
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
		Click Here to Farm First Flower |confirm |next "Start" |only if specialtalent(1971)
		Click Here to Farm First Flower |confirm |next "Start_No_Jiro" |only if default
]])


-----------------------------
-----    INSCRIPTION    -----
-----------------------------

--  Shadowlands  --


--------------------------------
-----    JEWELCRAFTING    ------
--------------------------------

--  Shadowlands  --


------------------------
-----    MINING    -----
------------------------

--  Shadowlands  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Elethium Ore",{
	meta={goldtype="route",skillreq={shadowlands_mining=1},levelreq={50}},
	items={{171833,16}},
	maps={"The Maw"},
	},[[
	step
	label "Start"
		map The Maw/0
		path follow smart; loop on; ants curved; dist 30
		path	43.44,40.73	41.61,39.96	40.47,39.04	38.99,38.94	38.65,37.64
		path	37.53,39.00	36.37,39.46	35.42,39.62	35.09,37.75	34.90,36.15
		path	35.13,34.75	35.98,32.22	36.57,30.62	35.51,27.56	34.19,25.20
		path	33.43,24.34	32.77,23.79	32.30,22.43	31.00,20.68	30.34,19.84
		path	29.36,20.45	30.25,21.33	30.72,22.91	31.15,24.43	31.47,26.14
		path	31.63,28.68	31.74,30.94	30.06,32.03	28.38,32.69	27.48,30.62
		path	26.68,30.14	25.58,30.09	24.79,28.01	24.20,27.28	23.57,28.60
		path	22.77,30.32	21.69,32.12	21.87,33.28	21.32,35.34	21.74,37.16
		path	23.90,37.33	25.30,37.13	26.08,36.69	26.91,37.98	27.13,41.11
		path	27.43,43.67	28.01,42.72	29.11,42.45	29.95,42.90	31.17,43.92
		path	32.13,45.54	35.46,47.33	36.43,48.31	37.43,47.18	38.48,46.58
		path	39.18,47.46	39.20,50.43	40.18,51.47	41.54,51.78	42.32,51.19
		path	41.85,50.03	42.32,48.36	42.43,46.74	42.54,44.68	43.45,43.21
		click Elethium Deposit##349900+
		|tip Track them on your minimap with "Find Minerals".
		|tip Enter caves along the path for additional nodes.
		|tip These are rare spawn nodes, so you likely won't find them in bulk.
		|goldcollect 16 Elethium Ore##171833 |n
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
		Click Here to Farm Elethium Ore |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Laestrite Ore",{
	meta={goldtype="route",skillreq={shadowlands_mining=1},levelreq={50}},
	items={{171828,210}},
	maps={"Bastion"},
	},[[
	step
	label "Start"
		map Bastion/0
		path follow smart; loop on; ants curved; dist 30
		path	56.08,53.96	55.17,55.25	54.87,56.40	54.34,56.90	53.78,56.55
		path	53.12,57.13	53.00,56.53	54.02,53.97	53.41,52.70	52.78,52.63
		path	51.80,53.32	51.21,54.94	50.79,55.47	50.26,54.92	50.14,54.27
		path	50.34,52.67	50.57,50.95	51.53,50.65	52.52,50.45	53.08,50.47
		path	53.84,50.37	54.61,49.15	54.41,47.06	54.19,45.67	53.52,43.25
		path	52.76,41.50	51.84,39.73	50.56,38.10	50.31,37.07	50.74,36.22
		path	51.54,35.18	50.98,33.24	51.92,32.65	51.98,30.49	51.02,28.30
		path	50.27,28.12	50.45,29.69	49.72,28.95	49.65,27.39	49.05,24.66
		path	48.88,22.41	48.81,21.27	49.30,19.17	49.69,18.03	49.95,16.54
		path	51.25,16.04	53.15,14.23	53.39,13.63	54.36,11.94	56.29,10.37
		path	57.76,10.03	57.77,11.28	58.30,13.27	57.45,14.41	56.37,15.34
		path	55.53,15.72	55.24,16.82	55.12,17.68	54.67,19.66	54.07,21.59
		path	53.59,22.51	53.72,23.41	56.00,22.90	55.28,25.16	54.77,27.49
		path	54.49,28.85	55.28,29.97	56.18,31.71	57.06,33.15	57.65,34.12
		path	58.32,34.73	58.98,35.98	60.03,33.66	60.85,33.75	61.50,34.41
		path	61.56,35.33	61.45,37.00	61.18,38.10	62.64,38.47	63.32,38.58
		path	63.79,35.99	64.15,34.01	63.89,32.56	63.59,31.71	64.39,31.18
		path	65.16,30.33	66.53,31.33	67.16,31.72	67.73,30.85	68.42,30.83
		path	68.81,31.88	68.73,32.59	67.81,33.15	67.55,33.80	67.71,34.71
		path	66.74,35.51	65.80,37.08	65.67,38.48	66.16,39.29	66.57,40.21
		path	66.91,41.18	68.26,40.86	70.21,40.52	71.02,40.37	71.25,41.96
		path	70.75,42.64	70.00,43.70	69.51,44.82	68.51,45.36	67.50,46.38
		path	66.79,46.62	65.73,46.85	64.83,46.32	64.08,45.30	63.23,44.47
		path	62.67,43.68	61.82,43.68	61.15,43.27	60.46,43.95	60.58,45.43
		path	61.53,46.80	62.54,48.22	62.90,49.19	63.16,49.94	63.24,51.26
		path	63.06,52.32	62.32,52.80	61.68,52.77	61.09,53.83	60.08,54.13
		path	60.06,53.52	60.45,51.64	60.28,50.07	59.71,48.95	58.86,49.13
		path	58.72,50.57	58.33,54.04	57.51,55.41
		click Laestrite Deposit##349898+
		|tip Track them on your minimap with "Find Minerals".
		|tip Enter caves along the path for additional nodes.
		|goldcollect 210 Laestrite Ore##171828 |n
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
		Click Here to Farm Laestrite Ore |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Oxxein Ore",{
	meta={goldtype="route",skillreq={shadowlands_mining=1},levelreq={50}},
	items={{171830,120}},
	maps={"Maldraxxus"},
	},[[
	step
	label "Start"
		map Maldraxxus/0
		path follow smart; loop on; ants curved; dist 30
		path	50.42,54.38	52.45,54.31	52.96,54.05	53.99,53.77	55.63,53.64
		path	54.99,54.64	54.06,55.93	53.96,56.83	54.46,58.90	54.88,59.96
		path	54.95,61.14	55.77,61.43	56.56,61.77	57.24,62.46	57.97,62.35
		path	59.48,60.56	60.13,60.21	61.16,61.52	61.81,61.06	61.49,59.37
		path	62.09,57.76	63.52,56.65	64.78,55.09	65.04,54.45	67.02,54.05
		path	68.28,51.37	69.26,51.26	70.00,52.13	70.61,53.15	70.50,54.94
		path	71.44,55.95	72.38,55.58	73.55,55.00	74.48,54.07	74.52,52.67
		path	75.20,52.36	74.39,51.56	73.58,51.29	72.51,49.98	72.06,48.83
		path	73.62,48.14	74.38,47.33	74.79,46.07	75.54,44.67	74.50,43.38
		path	72.94,43.62	71.24,42.55	70.65,41.94	71.05,44.73	70.63,45.85
		path	70.01,46.73	69.13,48.55	68.24,49.33	67.64,50.26	66.93,49.45
		path	65.92,48.67	64.05,47.38	63.23,48.19	61.96,46.83	61.56,44.84
		path	60.79,44.26	60.75,45.32	60.50,45.90	60.07,46.44	59.24,47.15
		path	58.09,48.23	55.99,45.89	56.42,44.58	57.35,43.27	59.53,42.68
		path	59.98,42.47	60.99,41.75	62.40,40.54	62.96,38.77	63.37,37.09
		path	64.39,36.41	63.25,34.33	62.37,32.92	60.88,32.59	59.93,32.32
		path	58.89,32.41	57.69,31.79	56.14,30.52	55.24,28.12	54.45,27.12
		path	54.19,25.05	53.75,22.99	54.64,21.58	55.14,20.09	55.87,19.30
		path	55.74,17.01	54.41,14.99	53.90,14.27	53.14,15.69	52.26,17.39
		path	50.65,18.43	49.94,19.43	49.93,20.69	49.04,22.74	49.66,24.58
		path	48.74,24.48	47.06,24.58	45.72,24.60	44.33,24.72	42.69,25.53
		path	41.73,26.21	41.78,28.41	41.43,30.15	41.44,31.58	42.15,32.30
		path	44.80,32.50	45.18,34.37	44.16,34.13	42.88,35.58	42.34,36.31
		path	42.36,38.71	42.21,40.49	43.02,42.37	43.47,43.96	45.02,45.83
		path	43.51,48.04	44.07,48.75	45.01,49.29	45.43,50.22	46.42,51.58
		path	45.03,51.77	42.78,52.82	43.46,53.68	43.90,55.46	44.12,57.16
		path	44.59,58.92	45.33,60.66	46.32,61.68	47.31,61.64	47.86,60.08
		path	47.69,58.06	48.45,56.58	49.12,55.49	49.92,55.47
		click Oxxein Deposit##349981+
		|tip Track them on your minimap with "Find Minerals".
		|tip Enter caves along the path for additional nodes.
		|tip These are uncommon spawn nodes, so you likely won't find them in bulk.
		|goldcollect 120 Oxxein Ore##171830 |n
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
		Click Here to Farm Oxxein Ore |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Phaedrum Ore",{
	meta={goldtype="route",skillreq={shadowlands_mining=1},levelreq={50}},
	items={{171831,160}},
	maps={"Ardenweald"},
	},[[
	step
	label "Start"
		map Ardenweald/0
		path follow smart; loop on; ants curved; dist 30
		path	38.02,51.38	38.00,49.56	38.27,48.00	38.87,47.42	38.64,46.13
		path	38.33,45.23	38.72,43.25	37.57,40.96	37.87,40.04	38.41,39.39
		path	39.22,39.36	39.98,40.61	40.94,40.90	41.93,40.30	42.47,40.64
		path	42.41,41.38	43.35,42.04	43.67,42.52	44.68,42.72	44.73,41.95
		path	45.93,41.24	47.43,41.94	48.31,42.02	49.56,41.99	50.16,42.14
		path	50.85,42.53	51.06,43.15	51.58,44.48	52.53,44.91	51.74,45.87
		path	51.51,46.55	50.99,47.35	51.05,48.91	51.39,49.82	51.62,50.34
		path	51.70,52.35	52.25,51.79	53.08,50.69	53.69,49.84	54.75,50.02
		path	55.60,50.05	56.10,49.06	56.57,48.01	57.69,47.76	58.22,47.17
		path	58.82,45.41	60.54,43.41	60.94,44.05	60.98,45.63	61.17,46.92
		path	60.39,48.21	59.31,48.71	58.82,49.47	59.58,50.14	60.00,49.39
		path	60.82,49.76	61.22,49.01	61.61,49.35	62.02,50.62	62.72,49.86
		path	63.01,49.32	63.41,49.38	63.97,49.11	64.65,47.33	65.88,48.28
		path	65.95,49.60	65.71,51.00	66.10,52.19	66.26,52.75	67.46,52.97
		path	68.09,53.68	68.28,54.37	68.31,55.47	67.87,56.29	68.02,57.92
		path	67.70,58.81	66.72,59.61	66.12,59.82	65.71,58.89	65.95,57.38
		path	65.73,55.97	64.46,55.94	63.36,56.00	62.57,55.98	62.32,55.19
		path	61.63,55.42	61.50,56.38	60.75,56.85	60.39,58.19	59.53,58.70
		path	58.87,58.56	58.52,57.47	58.15,56.57	58.02,55.52	57.82,54.78
		path	56.74,55.56	57.47,56.95	57.26,58.01	58.04,59.86	57.92,59.73
		path	57.97,60.74	57.79,61.86	57.12,62.64	56.47,63.41	55.74,62.68
		path	54.85,63.75	53.91,63.71	52.96,64.54	51.90,65.03	51.09,65.36
		path	50.73,66.49	50.34,65.38	50.01,64.36	49.59,63.97	48.87,64.79
		path	48.82,65.60	49.15,66.91	49.19,68.38	49.09,69.36	48.76,70.80
		path	47.69,70.89	47.99,72.47	47.48,72.03	46.11,72.11	46.20,74.91
		path	45.33,74.31	44.67,74.33	44.07,75.63	43.77,73.83	43.94,72.13
		path	43.88,70.60	44.12,69.39	43.72,67.74	43.83,66.22	44.32,65.44
		path	44.36,64.81	44.10,63.32	43.70,63.81	43.07,63.32	42.34,63.85
		path	41.24,62.92	40.44,62.71	39.91,62.72	39.88,63.63	40.66,64.71
		path	40.71,66.32	40.81,67.61	40.50,68.11	40.06,68.10	39.96,67.69
		path	40.04,66.65	40.01,65.29	39.66,64.11	38.90,63.85	37.82,63.25
		path	37.12,62.31	36.55,61.35	35.66,60.62	35.38,58.59	35.57,56.93
		path	35.82,55.85	36.49,55.01	36.68,54.08	37.21,53.45	37.29,52.33
		path	37.53,51.62
		click Phaedrum Deposit##349982+
		|tip Track them on your minimap with "Find Minerals".
		|tip Enter caves along the path for additional nodes.
		|tip These are uncommon spawn nodes, so you likely won't find them in bulk.
		|goldcollect 160 Phaedrum Ore##171831 |n
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
		Click Here to Farm Phaedrum Ore |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Sinvyr Ore",{
	meta={goldtype="route",skillreq={shadowlands_mining=1},levelreq={50}},
	items={{171832,120}},
	maps={"Revendreth"},
	},[[
	step
	label "Start"
		map Revendreth/0
		path follow smart; loop on; ants curved; dist 30
		path	49.02,72.05	49.47,74.07	49.05,74.69	48.02,75.52	47.84,76.40
		path	46.70,75.15	45.72,74.99	45.36,73.38	44.86,72.13	43.72,72.92
		path	43.06,74.13	42.52,74.83	41.75,75.14	41.62,76.40	40.39,77.99
		path	39.56,77.44	38.89,76.67	39.37,75.73	39.25,74.06	39.51,73.31
		path	40.02,72.18	39.99,70.35	40.13,69.50	39.55,69.00	39.72,67.57
		path	40.63,67.87	41.99,67.64	42.45,67.96	43.14,68.52	43.57,68.22
		path	43.11,66.29	42.46,66.34	42.10,64.88	42.48,63.56	42.81,61.85
		path	43.70,63.35	44.38,62.03	45.27,61.43	45.60,62.19	46.74,63.75
		path	47.40,64.57	47.88,64.13	48.52,62.45	49.39,62.61	49.72,64.30
		path	49.42,65.09	49.74,65.71	50.79,66.99	51.15,67.57	52.40,67.62
		path	52.90,66.46	52.59,65.14	52.59,63.91	52.27,63.02	52.53,60.16
		path	53.71,60.30	54.22,60.17	54.93,59.28	56.10,58.78	56.46,58.82
		path	57.22,59.62	58.82,58.50	59.78,58.66	60.07,57.24	60.13,55.65
		path	61.36,55.20	61.95,54.39	62.75,55.01	63.08,54.85	63.67,54.88
		path	64.47,56.15	65.05,57.26	65.62,58.88	66.23,58.49	66.87,58.80
		path	67.98,60.21	68.78,59.90	69.28,59.35	69.44,58.48	70.04,58.59
		path	70.80,58.53	71.51,58.22	72.99,58.18	74.14,58.57	74.77,59.44
		path	74.25,60.09	73.04,60.62	72.07,60.90	72.94,62.26	73.36,63.42
		path	72.84,63.69	72.03,64.32	72.72,65.51	72.58,66.16	70.90,66.75
		path	71.22,68.00	71.23,68.68	72.22,70.12	73.04,71.00	74.12,71.61
		path	74.72,73.24	74.94,74.07	74.99,75.42	74.57,76.57	73.71,76.60
		path	73.15,75.89	72.61,75.00	72.02,73.62	71.07,73.03	70.12,72.54
		path	69.52,70.95	68.95,69.49	68.00,69.42	67.29,68.96	66.71,67.64
		path	65.92,67.56	65.27,67.76	64.48,68.54	64.11,68.91	63.80,68.76
		path	63.55,67.70	62.60,67.42	62.15,66.92	61.50,66.16	60.80,66.37
		path	59.82,65.26	59.01,65.76	59.49,66.74	59.79,69.50	60.14,70.14
		path	60.81,70.60	61.31,71.49	60.53,71.65	59.75,72.11	59.65,73.40
		path	59.56,74.74	58.77,73.99	58.18,73.13	57.03,73.11	55.38,73.27
		path	54.63,74.30	53.72,74.78	53.00,73.64	53.00,72.69	53.40,71.46
		path	54.38,70.84	54.82,70.48	54.28,69.08	53.62,68.97	52.31,69.08
		path	51.82,69.20	50.96,68.87	50.49,69.41
		click Sinvyr Deposit##349983+
		|tip Track them on your minimap with "Find Minerals".
		|tip Enter caves along the path for additional nodes.
		|tip These are uncommon spawn nodes, so you likely won't find them in bulk.
		|goldcollect 120 Sinvyr Ore##171832 |n
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
		Click Here to Farm Sinvyr Ore |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Solenium Ore",{
	meta={goldtype="route",skillreq={shadowlands_mining=1},levelreq={50}},
	items={{171829,112}},
	maps={"Bastion"},
	},[[
	step
	label "Start"
		map Bastion/0
		path follow smart; loop on; ants curved; dist 30
		path	56.08,53.96	55.17,55.25	54.87,56.40	54.34,56.90	53.78,56.55
		path	53.12,57.13	53.00,56.53	54.02,53.97	53.41,52.70	52.78,52.63
		path	51.80,53.32	51.21,54.94	50.79,55.47	50.26,54.92	50.14,54.27
		path	50.34,52.67	50.57,50.95	51.53,50.65	52.52,50.45	53.08,50.47
		path	53.84,50.37	54.61,49.15	54.41,47.06	54.19,45.67	53.52,43.25
		path	52.76,41.50	51.84,39.73	50.56,38.10	50.31,37.07	50.74,36.22
		path	51.54,35.18	50.98,33.24	51.92,32.65	51.98,30.49	51.02,28.30
		path	50.27,28.12	50.45,29.69	49.72,28.95	49.65,27.39	49.05,24.66
		path	48.88,22.41	48.81,21.27	49.30,19.17	49.69,18.03	49.95,16.54
		path	51.25,16.04	53.15,14.23	53.39,13.63	54.36,11.94	56.29,10.37
		path	57.76,10.03	57.77,11.28	58.30,13.27	57.45,14.41	56.37,15.34
		path	55.53,15.72	55.24,16.82	55.12,17.68	54.67,19.66	54.07,21.59
		path	53.59,22.51	53.72,23.41	56.00,22.90	55.28,25.16	54.77,27.49
		path	54.49,28.85	55.28,29.97	56.18,31.71	57.06,33.15	57.65,34.12
		path	58.32,34.73	58.98,35.98	60.03,33.66	60.85,33.75	61.50,34.41
		path	61.56,35.33	61.45,37.00	61.18,38.10	62.64,38.47	63.32,38.58
		path	63.79,35.99	64.15,34.01	63.89,32.56	63.59,31.71	64.39,31.18
		path	65.16,30.33	66.53,31.33	67.16,31.72	67.73,30.85	68.42,30.83
		path	68.81,31.88	68.73,32.59	67.81,33.15	67.55,33.80	67.71,34.71
		path	66.74,35.51	65.80,37.08	65.67,38.48	66.16,39.29	66.57,40.21
		path	66.91,41.18	68.26,40.86	70.21,40.52	71.02,40.37	71.25,41.96
		path	70.75,42.64	70.00,43.70	69.51,44.82	68.51,45.36	67.50,46.38
		path	66.79,46.62	65.73,46.85	64.83,46.32	64.08,45.30	63.23,44.47
		path	62.67,43.68	61.82,43.68	61.15,43.27	60.46,43.95	60.58,45.43
		path	61.53,46.80	62.54,48.22	62.90,49.19	63.16,49.94	63.24,51.26
		path	63.06,52.32	62.32,52.80	61.68,52.77	61.09,53.83	60.08,54.13
		path	60.06,53.52	60.45,51.64	60.28,50.07	59.71,48.95	58.86,49.13
		path	58.72,50.57	58.33,54.04	57.51,55.41
		click Solenium Deposit##349980+
		|tip Track them on your minimap with "Find Minerals".
		|tip Enter caves along the path for additional nodes.
		|tip These are uncommon spawn nodes, so you likely won't find them in bulk.
		|goldcollect 112 Solenium Ore##171829 |n
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
		Click Here to Farm Solenium Ore |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Progenium Ore",{
	meta={goldtype="route",skillreq={shadowlands_mining=1},levelreq={60}},
	items={{187700,488},{171833,116},{171841,308},{187707,12}},
	maps={"Zereth Mortis"},
	},[[
	step
	label "Start"
		You can find Echoed Jiro Genesii at:
		[Zereth Mortis/0 52.48,28.99]
		[63.13,19.49]
		|tip Echoed Jiro Genesii grant "Gift of the Genesii" which increases Progenitor Essentia drop rate.
		You can find Echoed Jiro Nascii at:
		[59.72,37.36]
		[69.75,33.55]
		|tip Echoed Jiro Nascii grant "Gift of the Nascii" which reduces your chance to be seen by enemies, stacking two times.
		|tip It is helpful to mark these Jiro with raid markers before beginning.
		|tip Maintain one stack of "Gift of the Genesii" and two stacks of "Gift of the Nascii" when possible.
		|tip You can only interact with them and gain the buff with Pocopoc summoned.
		Click Here to Continue |confirm
		|only if specialtalent(1971)
	step
	label "Start_No_Jiro"
		map Zereth Mortis/0
		path follow smart; loop on; ants curved; dist 30
		path	64.26,46.08	65.05,42.15	67.23,37.37	68.59,32.93	68.69,31.01
		path	67.34,27.90	66.53,24.65	64.90,22.31	61.70,19.53	61.12,22.99
		path	58.91,24.76	57.22,27.65	56.21,29.20	53.51,26.37	51.62,24.66
		path	49.67,25.28	49.59,28.69	50.75,30.44	53.18,30.45	55.52,31.15
		path	58.17,34.12	61.30,36.46	63.05,38.15	63.88,41.66
		click Progenium Deposit##370400+
		click Rich Progenium Deposit##370399+
		click Elusive Progenium Deposit##375331+ |only if specialtalent(1971)
		click Rich Elusive Progenium Deposit##375332+ |only if specialtalent(1971)
		|tip Track them on your minimap with "Find Minerals".
		|tip Occasionally clear the center of the path if spawns become less common.
		|goldcollect 488 Progenium Ore##187700 |n
		|goldcollect 116 Elethium Ore##171833 |n
		|goldcollect 308 Shaded Stone##171841 |n
		|goldcollect 12 Progenitor Essentia##187707 |n
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
		Click Here to Farm Progenium Ore |confirm |next "Start" |only if specialtalent(1971)
		Click Here to Farm Progenium Ore |confirm |next "Start_No_Jiro" |only if default
]])



--------------------------
-----    SKINNING    -----
--------------------------

--  Shadowlands  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Callous Hide (Bastion)",{
	meta={goldtype="route",skillreq={shadowlands_skinning=1},levelreq={50}},
	items={{172094,54}},
	maps={"Bastion"},
	},[[
	step
	label "Start"
		map Bastion/0
		path follow smart; loop on; ants curved; dist 30
		path	59.20,45.79	59.36,44.21	59.39,42.90	58.77,42.46	58.17,43.36
		path	57.88,44.32	57.63,44.46	56.72,44.34	56.08,44.33	55.69,43.48
		path	54.89,43.15	54.58,43.82	55.06,44.40	55.66,45.39	56.20,45.79
		path	56.70,45.79	57.13,45.51	57.49,45.95
		kill Gilded Cloudstrider##159298+
		|tip Follow the path, killing and skinning along the way.
		|goldcollect 54 Callous Hide##172094 |n
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
		Click Here to Farm Callous Hide |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Callous Hide (Ardenweald)",{
	meta={goldtype="route",skillreq={shadowlands_skinning=1},levelreq={50}},
	items={{172094,80}},
	maps={"Ardenweald"},
	},[[
	step
	label "Start"
		Kill Gorm enemies around this area
		|tip Kill and skin the enemies around this area.
		|goldcollect 80 Callous Hide##172094 |n |goto Ardenweald/0 60.71,31.69
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
		Click Here to Farm Callous Hide |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Callous Hide (Maldraxxus)",{
	meta={goldtype="route",skillreq={shadowlands_skinning=1},levelreq={50}},
	items={{172094,132}},
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
		|tip Follow the path, killing and skinning Bloodskin Tauraluss, Neonate Bonetooth, and Furious Alphahoof enemies along the way.
		|goldcollect 132 Callous Hide##172094 |n
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
		Click Here to Farm Callous Hide |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Desolate Leather (Bastion)",{
	meta={goldtype="route",skillreq={shadowlands_skinning=1},levelreq={50}},
	items={{172089,756}},
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
		|tip Follow the path, killing and skinning along the way.
		|goldcollect 756 Desolate Leather##172089 |n
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
		Click Here to Farm Desolate Leather |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Desolate Leather (Ardenweald)",{
	meta={goldtype="route",skillreq={shadowlands_skinning=1},levelreq={50}},
	items={{172089,1024}},
	maps={"Ardenweald"},
	},[[
	step
	label "Start"
		map Ardenweald/0
		path follow smart; loop on; ants curved; dist 30
		path	39.97,49.65	38.99,49.01	38.25,48.71	37.83,50.55	36.91,50.45
		path	37.22,52.87	35.96,59.58	39.83,62.83	42.98,61.06	47.69,60.96
		path	48.63,62.05	50.55,61.64	50.97,58.27	46.78,57.26	45.31,58.24
		kill Wild Mistrunner##172966+
		|tip Follow the path, killing and skinning along the way.
		|goldcollect 1024 Desolate Leather##172089 |n
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
		Click Here to Farm Desolate Leather |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Desolate Leather (Maldraxxus)",{
	meta={goldtype="route",skillreq={shadowlands_skinning=1},levelreq={50}},
	items={{172089,1004}},
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
		|tip Follow the path, killing and skinning Bloodskin Tauraluss, Neonate Bonetooth, and Furious Alphahoof enemies along the way.
		|goldcollect 1004 Desolate Leather##172089 |n
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
		Click Here to Farm Desolate Leather |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Heavy Callous Hide (Bastion)",{
	meta={goldtype="route",skillreq={shadowlands_skinning=1},levelreq={50}},
	items={{172097,4}},
	maps={"Bastion"},
	},[[
	step
	label "Start"
		map Bastion/0
		path follow smart; loop on; ants curved; dist 30
		path	59.20,45.79	59.36,44.21	59.39,42.90	58.77,42.46	58.17,43.36
		path	57.88,44.32	57.63,44.46	56.72,44.34	56.08,44.33	55.69,43.48
		path	54.89,43.15	54.58,43.82	55.06,44.40	55.66,45.39	56.20,45.79
		path	56.70,45.79	57.13,45.51	57.49,45.95
		kill Gilded Cloudstrider##159298+
		|tip Follow the path, killing and skinning along the way.
		|goldcollect 4 Heavy Callous Hide##172097 |n
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
		Click Here to Farm Heavy Callous Hide |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Heavy Callous Hide (Maldraxxus)",{
	meta={goldtype="route",skillreq={shadowlands_skinning=1},levelreq={50}},
	items={{172097,8}},
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
		|tip Follow the path, killing and skinning Bloodskin Tauraluss, Neonate Bonetooth, and Furious Alphahoof enemies along the way.
		|goldcollect 8 Heavy Callous Hide##172097 |n
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
		Click Here to Farm Heavy Callous Hide |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Heavy Desolate Leather (Bastion)",{
	meta={goldtype="route",skillreq={shadowlands_skinning=1},levelreq={50}},
	items={{172096,12}},
	maps={"Bastion"},
	},[[
	step
	label "Start"
		map Bastion/0
		path follow smart; loop on; ants curved; dist 30
		path	59.20,45.79	59.36,44.21	59.39,42.90	58.77,42.46	58.17,43.36
		path	57.88,44.32	57.63,44.46	56.72,44.34	56.08,44.33	55.69,43.48
		path	54.89,43.15	54.58,43.82	55.06,44.40	55.66,45.39	56.20,45.79
		path	56.70,45.79	57.13,45.51	57.49,45.95
		kill Gilded Cloudstrider##159298+
		|tip Follow the path, killing and skinning along the way.
		|goldcollect 12 Heavy Desolate Leather##172096 |n
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
		Click Here to Farm Heavy Desolate Leather |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Heavy Desolate Leather (Maldraxxus)",{
	meta={goldtype="route",skillreq={shadowlands_skinning=1},levelreq={50}},
	items={{172096,28}},
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
		|tip Follow the path, killing and skinning Bloodskin Tauraluss, Neonate Bonetooth, and Furious Alphahoof enemies along the way.
		|goldcollect 28 Heavy Desolate Leather##172096 |n
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
		Click Here to Farm Heavy Desolate Leather |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Pallid Bone (Bastion)",{
	meta={goldtype="route",skillreq={shadowlands_skinning=1},levelreq={50}},
	items={{172092,180}},
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
		|tip Follow the path, killing and skinning along the way.
		|goldcollect 180 Pallid Bone##172092 |n
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
		Click Here to Farm Pallid Bone |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Pallid Bone (Ardenweald)",{
	meta={goldtype="route",skillreq={shadowlands_skinning=1},levelreq={50}},
	items={{172092,196}},
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
		|tip Follow the path, killing and skinning along the way.
		|goldcollect 196 Pallid Bone##172092 |n
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
		Click Here to Farm Pallid Bone |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Pallid Bone (Maldraxxus)",{
	meta={goldtype="route",skillreq={shadowlands_skinning=1},levelreq={50}},
	items={{172092,244}},
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
		|tip Follow the path, killing and skinning Bloodskin Tauraluss, Neonate Bonetooth, and Furious Alphahoof enemies along the way.
		|goldcollect 244 Pallid Bone##172092 |n
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
		Click Here to Farm Pallid Bone |confirm |next "Start"
]])