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


-------------------------
-----    FISHING    -----
-------------------------

--@@ONLYDEVSTART
ZGV.DevStart()
ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Ribbed Mollusk Meat",{
	meta={goldtype="route",skillreq={dragon_isles_fishing=1},levelreq={60}},
	items={{197742,1}},
	maps={"The Waking Shores"},
	},[[
	step
	label "Start"
		cast Fishing##131474
		|tip Click the Fishing Bobber when it bounces in the water.
		|tip Keep repeating this process.
		|tip Don't fish from pools.
		collect Dull Spined Clam##198395 |n
		use Dull Spined Clam##198395
		|goldcollect 1 Ribbed Mollusk Meat##197742 |goto The Waking Shores/0 63.13,77.21 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Antiqdormi##197911 |goto Valdrakken/0 42.39,59.99
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm  |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Aileron Seamoth/Thousandbite Piranha",{
	meta={goldtype="route",skillreq={dragon_isles_fishing=1},levelreq={60}},
	items={{194967,1},{194966,1}},
	maps={"The Waking Shores"},
	},[[
	step
	label "Start"
		map The Waking Shores/0
		path follow strictbounce; loop on; ants curved; dist 30
		path	66.39,74.10	64.76,74.42	63.35,77.00	63.41,80.03	62.94,82.80
		cast Fishing##131474
		|tip Click the Fishing Bobber when it bounces in the water.
		|tip Keep repeating this process.
		|tip Schools share a spawn with Thousandbite Piranhas.
		|tip You can also catch them in the open water.
		|goldcollect 1 Aileron Seamoth##194967 |n
		|goldcollect 1 Thousandbite Piranha##194966 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Antiqdormi##197911 |goto Valdrakken/0 42.39,59.99
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Fish |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Cerulean Spinefish/Scalebelly Mackerel",{
	meta={goldtype="route",skillreq={dragon_isles_fishing=1},levelreq={60}},
	items={{194968,1},{194730,1}},
	maps={"The Waking Shores"},
	},[[
	step
	label "Start"
		cast Fishing##131474
		|tip Click the Fishing Bobber when it bounces in the water.
		|tip Keep repeating this process.
		|tip Don't fish from pools.
		|goldcollect 1 Cerulean Spinefish##194968 |goto The Waking Shores/0 63.13,77.21 |n
		|goldcollect 1 Scalebelly Mackerel##194730 |goto The Waking Shores/0 63.13,77.21 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Antiqdormi##197911 |goto Valdrakken/0 42.39,59.99
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Fish |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Islefin Dorado",{
	meta={goldtype="route",skillreq={dragon_isles_fishing=1},levelreq={60}},
	items={{194970,1}},
	maps={"The Azure Span"},
	},[[
	step
	label "Start"
		collect Islefin Dorado Lure##198403 |n
		|tip These are made by Dragon Isles Skinning: Harvesting - Lure Crafters.
		|tip They require 2 "Exceptional Morsel", which are gathered by Lure Crafters as well.
		|tip It also requires 1 "Flawless Proto Dragon Scale".
		Click Here to Continue |confirm
	step
		use the Islefin Dorado Lure##198403
		cast Fishing##131474
		|tip Click the Fishing Bobber when it bounces in the water.
		|tip Keep repeating this process.
		|goldcollect 1 Islefin Dorado##194970 |goto The Azure Span/0 12.40,50.11 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Antiqdormi##197911 |goto Valdrakken/0 42.39,59.99
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Islefin Dorado |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Lava Beetle",{
	meta={goldtype="route",skillreq={dragon_isles_fishing=1},levelreq={60}},
	items={{197755,1}},
	maps={"The Waking Shores"},
	},[[
	step
	label "Start"
		cast Fishing##131474
		|tip Click the Fishing Bobber when it bounces in the lava.
		|tip Keep repeating this process.
		|goldcollect 1 Lava Beetle##197755 |goto The Waking Shores/0 37.34,67.75 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Antiqdormi##197911 |goto Valdrakken/0 42.39,59.99
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Lava Beetle |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Magma Thresher",{
	meta={goldtype="route",skillreq={dragon_isles_fishing=1},levelreq={60}},
	items={{199344,1}},
	maps={"The Waking Shores"},
	},[[
	step
		talk Elder Poa##186448 |goto The Azure Span/0 12.41,49.34
		|tip Inside the building.
		|tip Turn in Stolen Totems from treasures in The Azure Span for rep.
		'|turnin More Stolen Totems##70927 |repeatable |n
		'|turnin Stolen Totems##70926 |repeatable |n
		'|turnin Story of a Memorable Victory##72291 |n
		Reach Renown Level 15 with the Iskaara Tuskarr |complete factionrenown(2511) >= 15
		|tip Complete daily quests, weekly quests, and zone quests in The Azure Span to gain renown.
	step
		cast Fishing##131474
		|tip Fish in any water in the Dragon Isles to gain skill points.
		Reach Skill Level 50 in Dragon Isles Fishing |skill Dragon Isles Fishing,50
	step
		click Sea-Polished Basalt+
		|tip They look like small rocks near the waterline around the fishing trainer.
		collect 3 Sea-Polished Basalt##200079 |goto The Waking Shores/0 81.26,31.32 |q 67140 |future
	step
		talk Tavio##195935
		|tip Choose the "Fishing Spots" category and then the "Polished Basalt Bracelet" entry.
		|tip Click the "Create" button.
		Create a Polished Basalt Bracelet |q 67140 |goto The Azure Span/0 12.82,49.18 |future
	step
	label "Start"
		map The Waking Shores/0
		path follow strictbounce; loop off; ants curved; dist 25
		path	55,24	62,25	67,30	68,26
		cast Fishing##131474
		|tip Click the Fishing Bobber when it bounces in the water.
		|tip Keep repeating this process.
		Another School can spawn here [33,63]
		|goldcollect 1 Magma Thresher##199344 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Antiqdormi##197911 |goto Valdrakken/0 42.39,59.99
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Magma Thresher |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Temporal Dragonhead",{
	meta={goldtype="route",skillreq={dragon_isles_fishing=1},levelreq={60}},
	items={{194969,1}},
	maps={"|goldcollect"},
	},[[
	step
	label "Start"
		map The Waking Shores/0
		path follow strictbounce; loop off; ants curved; dist 25
		path	52.81,35.05	50.11,38.80	49.39,42.93	50.88,47.58	52.53,51.10
		path	54.40,55.92	55.83,60.49	54.18,62.21	54.46,66.63
		cast Fishing##131474
		|tip Click the Fishing Bobber when it bounces in the water.
		|tip Keep repeating this process.
		|tip Schools share a spawn with Thousandbite Piranha.
		|goldcollect Temporal Dragonhead##194969 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Antiqdormi##197911 |goto Valdrakken/0 42.39,59.99
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Temporal Dragonhead |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Prismatic Leaper (Ohn'ahran Plains)",{
	meta={goldtype="route",skillreq={dragon_isles_fishing=1},levelreq={60}},
	items={{200061,1}},
	maps={"Ohn'ahran Plains"},
	},[[
	step
		talk Elder Poa##186448 |goto The Azure Span/0 12.41,49.34
		|tip Inside the building.
		|tip Turn in Stolen Totems from treasures in The Azure Span for rep.
		'|turnin More Stolen Totems##70927 |repeatable |n
		'|turnin Stolen Totems##70926 |repeatable |n
		'|turnin Story of a Memorable Victory##72291 |n
		Reach Renown Level 7 with the Iskaara Tuskarr |complete factionrenown(2511) >= 7
		|tip Complete daily quests, weekly quests, and zone quests in The Azure Span to gain renown.
	step
		click Flying Fish Bones
		collect Flying Fish Bones##200075 |goto The Azure Span/0 12.50,49.94 |q 67139 |future
	step
		talk Tavio##195935
		|tip Choose the "Fishing Spots" category and then the "Flying Fish Bone Charm" entry.
		|tip Click the "Create" button.
		Create a Flying Fish Bone Charm |q 67139 |goto The Azure Span/0 12.82,49.18 |future
	step
	label "Start"
		map Ohn'ahran Plains/0
		path follow smart; loop off; ants curved; dist 25
		path	58.4,31.4	64.6,38.7	86.2,51.9	56.7,80.5
		cast Fishing##131474
		|tip Click the Fishing Bobber when it bounces in the water.
		|tip Keep repeating this process.
		|goldcollect 1 Prismatic Leaper##200061 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Antiqdormi##197911 |goto Valdrakken/0 42.39,59.99
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Prismatic Leaper |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Prismatic Leaper (The Azure Span)",{
	meta={goldtype="route",skillreq={dragon_isles_fishing=1},levelreq={60}},
	items={{200061,1}},
	maps={"The Azure Span"},
	},[[
	step
		talk Elder Poa##186448 |goto The Azure Span/0 12.41,49.34
		|tip Inside the building.
		|tip Turn in Stolen Totems from treasures in The Azure Span for rep.
		'|turnin More Stolen Totems##70927 |repeatable |n
		'|turnin Stolen Totems##70926 |repeatable |n
		'|turnin Story of a Memorable Victory##72291 |n
		Reach Renown Level 7 with the Iskaara Tuskarr |complete factionrenown(2511) >= 7
		|tip Complete daily quests, weekly quests, and zone quests in The Azure Span to gain renown.
	step
		click Flying Fish Bones
		collect Flying Fish Bones##200075 |goto The Azure Span/0 12.50,49.94 |q 67139 |future
	step
		talk Tavio##195935
		|tip Choose the "Fishing Spots" category and then the "Flying Fish Bone Charm" entry.
		|tip Click the "Create" button.
		Create a Flying Fish Bone Charm |q 67139 |goto The Azure Span/0 12.82,49.18 |future
	step
	label "Start"
		cast Fishing##131474
		|tip Click the Fishing Bobber when it bounces in the water.
		|tip Keep repeating this process.
		|tip Fish from the schools.
		|goldcollect 1 Prismatic Leaper##200061 |goto The Azure Span/0 30.5,24.9 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Antiqdormi##197911 |goto Valdrakken/0 42.39,59.99
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Prismatic Leaper |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Prismatic Leaper (Thaldraszus)",{
	meta={goldtype="route",skillreq={dragon_isles_fishing=1},levelreq={60}},
	items={{200061,1}},
	maps={"Thaldraszus"},
	},[[
	step
		talk Elder Poa##186448 |goto The Azure Span/0 12.41,49.34
		|tip Inside the building.
		|tip Turn in Stolen Totems from treasures in The Azure Span for rep.
		'|turnin More Stolen Totems##70927 |repeatable |n
		'|turnin Stolen Totems##70926 |repeatable |n
		'|turnin Story of a Memorable Victory##72291 |n
		Reach Renown Level 7 with the Iskaara Tuskarr |complete factionrenown(2511) >= 7
		|tip Complete daily quests, weekly quests, and zone quests in The Azure Span to gain renown.
	step
		click Flying Fish Bones
		collect Flying Fish Bones##200075 |goto The Azure Span/0 12.50,49.94 |q 67139 |future
	step
		talk Tavio##195935
		|tip Choose the "Fishing Spots" category and then the "Flying Fish Bone Charm" entry.
		|tip Click the "Create" button.
		Create a Flying Fish Bone Charm |q 67139 |goto The Azure Span/0 12.82,49.18 |future
	step
	label "Start"
		cast Fishing##131474
		|tip Click the Fishing Bobber when it bounces in the water.
		|tip Keep repeating this process.
		|tip Fish from the schools.
		|goldcollect 1 Prismatic Leaper##200061 |goto Thaldraszus/0 64.3,59.8 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Antiqdormi##197911 |goto Valdrakken/0 42.39,59.99
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Prismatic Leaper |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Rimefin Tuna",{
	meta={goldtype="route",skillreq={dragon_isles_fishing=1},levelreq={60}},
	items={{199345,1}},
	maps={"The Azure Span"},
	},[[
	step
		talk Elder Poa##186448 |goto The Azure Span/0 12.41,49.34
		|tip Inside the building.
		|tip Turn in Stolen Totems from treasures in The Azure Span for rep.
		'|turnin More Stolen Totems##70927 |repeatable |n
		'|turnin Stolen Totems##70926 |repeatable |n
		'|turnin Story of a Memorable Victory##72291 |n
		Reach Renown Level 10 with the Iskaara Tuskarr |complete factionrenown(2511) >= 10
		|tip Complete daily quests, weekly quests, and zone quests in The Azure Span to gain renown.
	step
		cast Fishing##131474
		|tip Fish in any water in the Dragon Isles to gain skill points.
		Reach Skill Level 50 in Dragon Isles Fishing |skill Dragon Isles Fishing,50
	step
		talk Tavio##195935
		accept Ice Fishing##70944 |goto The Azure Span/0 12.82,49.18
	step
		click Old Pickaxe
		collect Pickaxe Blade##200078 |goto 18.88,24.29 |q 67141 |future
	step
		talk Tavio##195935
		|tip Choose the "Fishing Spots" category and then the "Iskaaran Ice Axe" entry.
		|tip Click the "Create" button.
		Create an Iskaaran Ice Axe |q 67141 |goto The Azure Span/0 12.82,49.18 |future
	step
	label "Start"
		cast Fishing##131474
		|tip Use the Iskaaran Ice Axe to reveal Rimefin Tuna Pools around this area.
		|tip Click the Fishing Bobber when it bounces in the water.
		|tip Keep repeating this process.
		|goldcollect Rimefin Tuna##199345 |goto The Azure Span/0 72.81,45.78 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Antiqdormi##197911 |goto Valdrakken/0 42.39,59.99
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Rimefin Tuna |confirm |next "Start"
]])

---------------------------
-----    HERBALISM    -----
---------------------------

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Hochenblume",{
	meta={goldtype="route",skillreq={dragon_isles_herbalism=1},levelreq={60}},
	items={{191460,1},{191461,1},{191462,1}},
	maps={"The Azure Span"},
	},[[
	step
	label "Start"
		map The Azure Span/0
		path	15.75,46.71	17.58,41.19	16.46,39.23	18.69,29.45	17.11,26.36
		path	21.19,25.67	25.00,30.93	31.47,36.84	37.16,29.24	42.99,36.12
		path	46.49,32.25	49.87,29.25	52.99,26.54	55.46,24.84	58.80,24.19
		path	61.63,22.73	63.67,22.82	65.40,19.81	68.93,23.31	72.46,26.81
		path	66.18,31.47	62.44,37.47	63.50,40.89	58.10,49.22	58.80,55.63
		path	49.27,61.93	45.62,56.80	45.00,53.05	35.88,49.80	34.69,47.15
		path	29.79,46.25	24.62,47.46	17.61,48.43
		click Hochenblume##381209+
		|tip They look like green and purple flowers that grow over all terrain types.
		|goldcollect 1 Hochenblume##191460 |n
		|goldcollect 1 Hochenblume##191461 |n
		|goldcollect 1 Hochenblume##191462 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Antiqdormi##197911 |goto Valdrakken/0 42.39,59.99
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Hochenblume |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Bubble Poppy/Saxifrage",{
	meta={goldtype="route",skillreq={dragon_isles_herbalism=1},levelreq={60}},
	items={{191467,1},{191468,1},{191469,1},{191464,1},{191465,1},{191466,1}},
	maps={"The Waking Shores"},
	},[[
	step
	label "Start"
		map The Waking Shores/0
		path follow smart; loop off; ants curved; dist 20
		path	36.92,89.27	37.93,84.73	38.97,77.03	42.45,76.05	47.14,76.93
		path	50.08,68.71	53.04,61.02	58.64,62.85	64.08,69.87	69.45,72.53
		path	74.07,67.94	76.06,62.90	78.51,57.95	78.12,52.67	75.69,47.78
		path	70.28,42.66	67.21,47.71	68.79,55.52	66.42,60.25	61.47,55.31
		path	60.03,47.41	59.98,39.24	55.17,35.69	50.97,36.67	49.38,41.87
		path	51.32,48.73	54.07,55.64
		Follow the path
		click Bubble Poppy##375241+
		|tip They look like white and green flowers that grow in damp areas.
		click Saxifrage##381207+
		|tip They look like bushy plants that grown on rocks and cliffs.
		|goldcollect 1 Bubble Poppy##191467 |n
		|goldcollect 1 Bubble Poppy##191468 |n
		|goldcollect 1 Bubble Poppy##191469 |n
		|goldcollect 1 Saxifrage##191464 |n
		|goldcollect 1 Saxifrage##191465 |n
		|goldcollect 1 Saxifrage##191466 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Antiqdormi##197911 |goto Valdrakken/0 42.39,59.99
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Bubble Poppy and Saxifrage |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Writhebark",{
	meta={goldtype="route",skillreq={dragon_isles_herbalism=1},levelreq={60}},
	items={{191470,1},{191471,1},{191472,1}},
	maps={"Bastion"},
	},[[
	step
	label "Start"
		map The Azure Span/0
		path follow smart; loop on; ants curved; dist 20
		path	23.67,48.05	22.43,48.08	19.37,46.87	17.35,42.24	19.66,38.24
		path	19.97,33.96	21.71,28.38	25.63,32.27	25.90,41.19	28.80,36.28
		path	29.86,34.48	33.69,35.89	34.56,33.74	37.99,33.57	39.06,38.48
		path	40.53,44.13	35.55,42.66	32.68,42.15	30.07,45.87	27.81,46.14
		click Writhebark##381154+
		|tip They look like twisted roots in areas of dense foliage.
		|goldcollect 1 Writhebark##191470 |n
		|goldcollect 1 Writhebark##191471 |n
		|goldcollect 1 Writhebark##191472 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Antiqdormi##197911 |goto Valdrakken/0 42.39,59.99
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Writhebark |confirm |next "Start"
]])

-----------------------------
-----    INSCRIPTION    -----
-----------------------------


--------------------------------
-----    JEWELCRAFTING    ------
--------------------------------


------------------------
-----    MINING    -----
------------------------

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Serevite/Draconium/Khaz'gorite Ore",{
	meta={goldtype="route",skillreq={dragon_isles_mining=1},levelreq={60}},
	items={{190395,1},{190396,1},{190394,1},{189143,1},{188658,1},{190311,1},{190312,1},{190313,1},{190314,1}},
	maps={"Khaz'gorite"},
	},[[
	step
	label "Start"
		map The Waking Shores/0
		path follow smart; loop on; ants curved; dist 20
		path	66.99,56.32	72.07,57.48	76.01,51.77	77.00,48.25	78.52,39.32
		path	76.25,38.51	77.05,29.45	67.70,30.98	64.98,38.14	62.93,41.23
		path	50.62,39.10	45.45,41.52	40.65,48.92	34.18,51.79	30.72,51.38
		path	28.48,64.72	28.12,69.86	30.23,75.73	33.29,80.37	36.68,80.94
		path	37.23,84.57	37.03,90.38	40.06,92.50	43.83,87.39	50.72,77.14
		path	55.12,78.57	56.50,71.05	60.66,63.30	64.02,60.01
		click Serevite Deposit##381102+
		click Draconium Deposit##379248+
		|tip These share spawns with each other.
		|tip Khaz'gorite is a rare drop from both.
		|goldcollect 1 Serevite Ore##190395 |n
		|goldcollect 1 Serevite Ore##190396 |n
		|goldcollect 1 Serevite Ore##190394 |n
		|goldcollect 1 Draconium Ore##189143 |n
		|goldcollect 1 Draconium Ore##188658 |n
		|goldcollect 1 Draconium Ore##190311 |n
		|goldcollect 16 Khaz'gorite Ore##190312 |n
		|goldcollect 16 Khaz'gorite Ore##190313 |n
		|goldcollect 16 Khaz'gorite Ore##190314 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Antiqdormi##197911 |goto Valdrakken/0 42.39,59.99
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Ore |confirm |next "Start"
]])

--------------------------
-----    SKINNING    -----
--------------------------

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Resilient Leather/Dense Hide",{
	meta={goldtype="route",skillreq={dragon_isles_skinning=1},levelreq={60}},
	items={{193208,1},{193210,1},{193211,1},{193216,1},{193217,1},{193218,1}},
	maps={"Ohn'ahran Plains"},
	},[[
	step
	label "Start"
		map Ohn'ahran Plains/0
		path follow smart; loop on; ants curved; dist 20
		path	48.35,34.04	48.35,36.35	50.16,38.65	52.36,38.77	52.28,35.91
		path	53.50,34.79	53.10,32.32	51.74,31.27	50.41,30.72	49.13,28.85
		Kill enemies along the path
		|tip Make sure you loot them so you can skin them after.
		|goldcollect 1 Resilient Leather##193208 |n
		|goldcollect 1 Resilient Leather##193210 |n
		|goldcollect 1 Resilient Leather##193211 |n
		|goldcollect 1 Dense Hide##193216 |n
		|goldcollect 1 Dense Hide##193217 |n
		|goldcollect 1 Dense Hide##193218 |n		
		|tip These have a low drop rate.
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Antiqdormi##197911 |goto Valdrakken/0 42.39,59.99
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Adamant Scales",{
	meta={goldtype="route",skillreq={dragon_isles_skinning=1},levelreq={60}},
	items={{193213,1},{193214,1},{193215,1}},
	maps={"Thaldraszus"},
	},[[
	step
	label "Start"
		map Thaldraszus/0
		path follow smart; loop on; ants curved; dist 20
		path	56.64,77.91	55.56,78.52	54.53,77.51	54.36,76.16	56.13,75.27
		path	57.16,76.41	57.20,77.57
		Kill enemies along the path
		|tip Make sure you loot them so you can skin them after.
		|goldcollect 1 Adamant Scales##193213 |n
		|goldcollect 1 Adamant Scales##193214 |n
		|goldcollect 1 Adamant Scales##193215 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Antiqdormi##197911 |goto Valdrakken/0 42.39,59.99
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Adamant Scales |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Lustrous Scaled Hide",{
	meta={goldtype="route",skillreq={dragon_isles_skinning=1},levelreq={60}},
	items={{193222,1},{193223,1},{193224,1}},
	maps={"The Waking Shores"},
	},[[
	step
	label "Start"
		map The Waking Shores/0
		path follow smart; loop on; ants curved; dist 20
		path	78.03,30.28	78.81,28.96	79.59,29.70	79.84,28.19	79.25,25.76
		path	78.42,24.63	77.85,26.26	77.58,28.05	77.61,29.20
		Kill enemies along the path
		|tip Make sure you loot them so you can skin them after.
		|goldcollect 1 Lustrous Scaled Hide##193222 |n
		|goldcollect 1 Lustrous Scaled Hide##193223 |n
		|goldcollect 1 Lustrous Scaled Hide##193224 |n
		|tip These have a low drop rate.
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Antiqdormi##197911 |goto Valdrakken/0 42.39,59.99
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Lustrous Scaled Hide |confirm |next "Start"
]])

---------------------------
-----    TAILORING    -----
---------------------------

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Tattered Wildercloth/Wildercloth (Tailoring)",{
	meta={goldtype="route",levelreq={60},itemtype="cloth"},
	items={{193050,1},{193922,1}},
	maps={"The Azure Span"},
	},[[
	step
		talk Threadfinder Pax##195850
		Train Tailoring |skillmax Tailoring,300 |goto Valdrakken/0 32.13,66.24
	step
		talk Threadfinder Pax##195850
		Train Dragon Isles Tailoring |skillmax Dragon Isles Tailoring,100 |goto Valdrakken/0 32.13,66.24
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
ZGV.DevEnd()
--@@ONLYDEVEND