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

--@@ONLYDEVSTART
ZGV.DevStart()
ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Tattered Wildercloth/Wildercloth (No Tailoring)",{
	meta={goldtype="route",levelreq={60},itemtype="cloth"},
	items={{193050,1},{193922,1}},
	maps={"The Azure Span"},
	},[[
	step
	label "Start"
		Kill Brinetooth enemies around this area
		|goldcollect 1 Tattered Wildercloth##193050 |goto The Azure Span/0 10.08,43.41 |n
		|goldcollect 1 Wildercloth##193922 |goto The Azure Span/0 10.08,43.41 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Antiqdormi##197911 |goto Valdrakken/0 42.39,59.99
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Cloth |confirm |next "Start"
]])

--------------------------
-----    COOKING    ------
--------------------------

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Maybe Meat",{
	meta={goldtype="route",levelreq={60},itemtype="food"},
	items={{197741,1}},
	maps={"Ohn'ahran Plains"},
	},[[
	step
	label "Start"
		map Ohn'ahran Plains/0
		path follow smart; loop on; ants curved; dist 35
		path	52.74,47.58	53.89,48.74	55.34,49.75	54.56,50.46	53.31,50.98
		path	52.68,51.27	51.57,49.66	50.25,49.15	51.34,47.16
		Kill Thunderspine enemies around this area
		|tip Follow the path, killing and looting along the way.
		|goldcollect 1 Maybe Meat##197741 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Antiqdormi##197911 |goto Valdrakken/0 42.39,59.99
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Maybe Meat |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Basilisk Eggs",{
	meta={goldtype="route",levelreq={60},itemtype="food"},
	items={{197745,1}},
	maps={"The Waking Shores"},
	},[[
	step
	label "Start"
		map The Waking Shores/0
		path follow smart; loop on; ants curved; dist 35
		path	68.87,52.63	69.43,49.88	68.26,49.94	67.65,51.68
		Follow the path
		Kill Basilisk enemies around this area
		|tip Follow the path, killing and looting along the way.
		|goldcollect 1 Basilisk Eggs##197745 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Antiqdormi##197911 |goto Valdrakken/0 42.39,59.99
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Basilisk Eggs |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Bruffalon Flank",{
	meta={goldtype="route",levelreq={60},itemtype="food"},
	items={{197746,1}},
	maps={"Ohn'ahran Plains"},
	},[[
	step
	label "Start"
		map Ohn'ahran Plains/0
		path follow smart; loop on; ants curved; dist 20
		path	49.19,28.29	49.75,26.91	50.73,27.09	51.23,28.08	50.78,29.19
		path	50.84,30.69	50.38,31.76	49.32,32.24	48.74,31.32	48.75,30.02
		Kill Bruffalon enemies around this area
		|tip Follow the path, killing and looting along the way.
		|goldcollect 1 Bruffalon Flank##197746 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Antiqdormi##197911 |goto Valdrakken/0 42.39,59.99
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Bruffalon Flank |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Burly Bear Haunch (The Azure Span)",{
	meta={goldtype="route",levelreq={60},itemtype="food"},
	items={{197748,1}},
	maps={"The Azure Span"},
	},[[
	step
	label "Start"
		map The Azure Span/0
		path follow smart; loop on; ants curved; dist 25
		path	46.62,44.15	46.58,45.08	47.30,46.55	47.18,47.50	48.04,47.61
		path	50.21,47.11	51.78,46.21	53.22,45.54	54.27,45.63	55.31,43.59
		path	55.19,41.31	56.21,39.90	56.29,39.19	57.14,37.90	53.30,39.30
		path	51.27,40.30	50.10,40.44	49.59,40.59
		kill Time-Charged Bear##195635
		|tip Follow the path, killing and looting along the way.
		|goldcollect Burly Bear Haunch##197748 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Antiqdormi##197911 |goto Valdrakken/0 42.39,59.99
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Burly Bear Haunch |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Burly Bear Haunch (Thaldraszus)",{
	meta={goldtype="route",levelreq={60},itemtype="food"},
	items={{197748,1}},
	maps={"Thaldraszus"},
	},[[
	step
	label "Start"
		Kill enemies around these areas
		|goldcollect 1 Burly Bear Haunch##197748 |n
		|goldtracker
		[Thaldraszus/0 53.49,76.61]
		[Thaldraszus/0 53.29,77.50]
		[Thaldraszus/0 55.02,79.07]
		[Thaldraszus/0 57.02,74.85]
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Antiqdormi##197911 |goto Valdrakken/0 42.39,59.99
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Burly Bear Haunch |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Hornswog Hunk",{
	meta={goldtype="route",levelreq={60},itemtype="food"},
	items={{197744,1}},
	maps={"The Azure Span"},
	},[[
	step
	label "Start"
		map The Azure Span/0
		path follow smart; loop on; ants curved; dist 25
		map The Azure Span
		path	38.75,64.45	39.20,64.72	39.62,64.02	40.46,62.99	41.27,63.47
		path	41.79,62.93	41.21,61.04	40.79,61.36	40.10,59.66	39.64,59.27
		path	39.67,60.98	38.84,61.16	37.82,60.92	38.17,62.18	38.75,62.30
		path	39.49,62.33
		Follow the path
		Kill Hornswog enemies around this area
		|tip Follow the path, killing and looting along the way.
		|tip They look like blue frogs with black horns.
		|tip There are a few near the base of the giant crystal.
		|goldcollect 1 Hornswog Hunk##197744 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Antiqdormi##197911 |goto Valdrakken/0 42.39,59.99
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Hornswog Hunk |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Mighty Mammoth Ribs",{
	meta={goldtype="route",levelreq={60},itemtype="food"},
	items={{197747,1}},
	maps={"Ohn'ahran Plains"},
	},[[
	step
	label "Start"
		map Ohn'ahran Plains/0
		path follow smart; loop on; ants curved; dist 20
		path	70.49,51.94	71.40,53.89	73.09,52.32	73.80,54.24	75.48,52.43 
		path	73.61,51.25	74.67,50.39	75.63,49.32	74.34,48.90	72.99,45.89
		path	70.73,45.81	70.67,48.49	70.03,49.53
		Kill mammoth enemies around this area
		|tip Follow the path, killing and looting Bloodskin Tauraluss and Furious Alphahoof enemies along the way.
		|goldcollect 1 Mighty Mammoth Ribs##197747 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Antiqdormi##197911 |goto Valdrakken/0 42.39,59.99
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Mighty Mammoth Ribs |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Waterfowl Filet",{
	meta={goldtype="route",levelreq={60},itemtype="food"},
	items={{197743,1}},
	maps={"Ohn'ahran Plains"},
	},[[
	step
	label "Start"
		map Ohn'ahran Plains/0
		path follow smart; loop on; ants curved; dist 20
		path	69.38,35.87	69.40,36.96	69.42,37.88	69.89,38.54	70.45,39.28
		path	70.63,38.13	70.51,36.59	70.35,35.43
		kill Jadethroat Mallard##190708+
		|tip Follow the path, killing and looting Bloodskin Tauraluss and Furious Alphahoof enemies along the way.
		|goldcollect 1 Waterfowl Filet##197743 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Antiqdormi##197911 |goto Valdrakken/0 42.39,59.99
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Waterfowl Filet |confirm |next "Start"
]])

-------------------------------------
-----    ELEMENTAL REAGENTS    ------
-------------------------------------

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Rousing Air",{
	meta={goldtype="route",levelreq={60},itemtype="elemental"},
	items={{190326,1}},
	maps={"The Azure Span"},
	},[[
	step
	label "Start"
		map The Azure Span/0
		path follow smart; loop on; ants curved; dist 20
		path	45.78,57.35	46.18,56.13	46.66,55.42	47.13,54.48	47.01,55.77	
		path	47.22,56.47	46.80,57.01	46.88,57.82	47.45,58.16	47.64,58.70
		path	47.22,58.92	46.98,59.34	46.57,59.35	46.34,57.62 
		Follow the path
		kill Restless Wind##186397+
		|goldcollect 1 Rousing Air##190326 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Antiqdormi##197911 |goto Valdrakken/0 42.39,59.99
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Rousing Air |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Rousing Earth",{
	meta={goldtype="route",levelreq={60},itemtype="elemental"},
	items={{190315,1}},
	maps={"The Waking Shores"},
	},[[
	step
	label "Start"
		map The Waking Shores/0
		path follow smart; loop on; ants curved; dist 20
		path	52.19,32.87	50.73,33.22	49.95,33.73	49.29,33.52	49.63,31.58
		path	50.23,30.93	50.98,31.30	52.49,30.87	53.65,31.43	53.34,32.31
		path	52.55,32.60	51.81,33.07
		Kill Elemental enemies around this area
		|goldcollect 1 Rousing Earth##190315 |n
		|tip These also have a chance to be gathered from "Hardened" and "Primal" Mining nodes.
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Antiqdormi##197911 |goto Valdrakken/0 42.39,59.99
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Rousing Earth |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Rousing Fire",{
	meta={goldtype="route",levelreq={60},itemtype="elemental"},
	items={{190320,1}},
	maps={"The Waking Shores"},
	},[[
	step
	label "Start"
		map The Waking Shores/0
		path follow smart; loop on; ants curved; dist 20
		path	37.99,69.37	37.76,71.40	36.96,72.21	35.90,72.27	36.61,73.66
		path	37.17,73.87	37.94,76.03	38.65,74.48	38.52,72.73	38.76,70.86
		kill Blazing Manifestation##186336+
		|goldcollect 1 Rousing Fire##190320 |n
		|tip These also have a chance to be gathered from "Molten" and "Primal" Mining nodes.
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Antiqdormi##197911 |goto Valdrakken/0 42.39,59.99
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Rousing Fire |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Rousing Frost",{
	meta={goldtype="route",levelreq={60},itemtype="elemental"},
	items={{190328,1}},
	maps={"The Waking Shores"},
	},[[
	step
	label "Start"
		map The Waking Shores/0
		path follow smart; loop on; ants curved; dist 20
		path	47.57,59.13	48.18,61.09	49.82,61.61	50.26,59.59	48.84,59.09
		kill Angered Steam##190694+
		kill Steam Reaver##190700+
		|goldcollect 1 Rousing Frost##190328 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Antiqdormi##197911 |goto Valdrakken/0 42.39,59.99
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Rousing Frost |confirm |next "Start"
]])
ZGV.DevEnd()
--@@ONLYDEVEND

--@@ONLYDEVSTART
ZGV.DevStart()
ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Rousing Decay",{
	meta={goldtype="route",levelreq={60},itemtype="elemental"},
	items={{190330,1}},
	maps={"The Waking Shores"},
	},[[
	step
	label "Start"
		--The fishing trick from the wowhead comments seems to be the best method of farming.
		--Rotting tuna from ice fishing
		|goldcollect 1 Rousing Decay##190330 |n
		|tip These are gathered from the "Decayed" nodes from Hochenblume, Bubble Poppy, Saxifrage and Writherbark.
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Antiqdormi##197911 |goto Valdrakken/0 42.39,59.99
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Rousing Decay |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Rousing Order",{
	meta={goldtype="route",levelreq={60},itemtype="elemental"},
	items={{190322,1}},
	maps={"The Waking Shores"},
	},[[
	step
	label "Start"
		|goldcollect 1 Rousing Order##190322 |n
		|tip These have a chance to be gathered from "Titan-Touched" nodes.
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Antiqdormi##197911 |goto Valdrakken/0 42.39,59.99
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Rousing Order |confirm |next "Start"
]])
ZGV.DevEnd()
--@@ONLYDEVEND