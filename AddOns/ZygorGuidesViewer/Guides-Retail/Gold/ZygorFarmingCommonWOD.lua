local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
ZygorGuidesViewer.Gold.guides_loaded=true

ZygorGuidesViewer.GuideMenuTier = "WOD"

--@@ONLYDEVSTART
ZGV.DevStart()
ZGV.DevEnd()
--@@ONLYDEVEND

-----------------------
-----    CLOTH    -----
-----------------------

--  Classic  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Linen Cloth/Wool Cloth",{
	meta={goldtype="route",levelreq={10},itemtype="cloth"},
	items={{2592,450},{2589,628}},
	maps={"Shadowfang Keep","Wetlands","Silverpine Forest"},
	},[[
	step
		Click Here to Farm in Shadowfang Keep |confirm |next "Shadowfang_Keep_1"
		Click Here to Farm in Wetlands |confirm |next
	step
		Kill enemies around this area
		|goldcollect 450 Wool Cloth##2592 |goto Wetlands/0 67.31,47.30
		|goldcollect 628 Linen Cloth##2589 |goto Wetlands/0 67.31,47.30
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm |next "Sell_Items"
	step
	label "Shadowfang_Keep_1"
		map Shadowfang Keep/1
		path loop off; follow loose; distance 10
		path	72.2,49.9	62.0,44.8	60.5,57.0	63.7,71.0	56.5,66.6
		path	37.8,39.2	Shadowfang Keep/2 56.3,13.7	44.7,38.2	34.4,74.6
		path	26.8,89.5	Shadowfang Keep/1 21.0,91.1	28.0,61.4	34.7,69.8
		path	24.3,75.2	51.4,83.1	56.6,95.0	59.0,82.7
		Follow the Path |goto Shadowfang Keep/7 59.0,82.7 < 10 |noway |c |next "Shadowfang_Keep_2"
		|tip Kill and loot any mobs you see.
		|goldcollect 450 Wool Cloth##2592 |n
		|goldcollect 628 Linen Cloth##2589 |n
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm |next "Sell_Items"
	step
	label "Shadowfang_Keep_2"
		map Shadowfang Keep/7
		path loop off; follow loose; distance 10
		path	66.8,88.3	73.6,62.3	46.2,47.6	47.4,32.3	45.9,18.7
		path	43.8,29.0	Shadowfang Keep/3 44.8,62.1	58.7,11.2
		Follow the Path |goto Shadowfang Keep/3 58.7,11.2 < 10 |noway |c |next "Shadowfang_Keep_3"
		|tip Kill and loot any mobs you see.
		|goldcollect 450 Wool Cloth##2592 |n
		|goldcollect 628 Linen Cloth##2589 |n
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm |next "Sell_Items"
	step
	label "Shadowfang_Keep_3"
		map Shadowfang Keep/3
		path loop off; follow loose; distance 10
		path	62.7,15.1	65.3,35.2	54.9,74.4	47.6,96.2	Shadowfang Keep/4 50.7,68.9
		path	60.9,30.8	38.4,36.9	37.0,64.0
		Follow the Path |goto Shadowfang Keep/4 37.0,64.0 < 10 |noway |c |next "Shadowfang_Keep_4"
		|tip Kill and loot any mobs you see.
		|goldcollect 450 Wool Cloth##2592 |n
		|goldcollect 628 Linen Cloth##2589 |n
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm |next "Sell_Items"
	step
	label "Shadowfang_Keep_4"
		map Shadowfang Keep/5
		path loop off; follow loose; distance 10
		path	37.9,66.5	48.0,77.5	64.0,61.1	61.0,30.9	35.1,54.7
		Follow the Path |goto Shadowfang Keep/5 35.1,54.7 < 10 |noway |c |next "Shadowfang_Keep_5"
		|tip Kill and loot any mobs you see.
		|goldcollect 450 Wool Cloth##2592 |n
		|goldcollect 628 Linen Cloth##2589 |n
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm |next "Sell_Items"
	step
	label "Shadowfang_Keep_5"
		map Shadowfang Keep/6
		path loop off; follow loose; distance 10
		path	49.5,87.3	58.7,53.3	62.8,20.8
		Follow the Path |goto Shadowfang Keep/6 62.8,20.8 < 10 |noway |c |next "Reset_Shadowfang_Keep"
		|tip Kill and loot any mobs you see.
		|goldcollect 450 Wool Cloth##2592 |n
		|goldcollect 628 Linen Cloth##2589 |n
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm |next "Sell_Items"
	step
	label "Reset_Shadowfang_Keep"
		Exit Shadowfang Keep |goto Silverpine Forest/0 44.8,67.8 < 1000 |c |noway
	step
		Reset the dungeon
		|tip Right-click your player unit frame and select "Reset all instances."
		|tip Do this if you wish to continue farming.
		Click Here to Continue Farming |confirm |next "Shadowfang_Keep_1"
		|tip
		Click Here to Sell Items |confirm |next "Sell_Items"
	step
	label "Sell_Items"
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Silk Cloth",{
	meta={goldtype="route",levelreq={15},itemtype="cloth"},
	items={{4306,500},{2592,8,'crap'},{4338,36,'crap'}},
	maps={"Dustwallow Marsh","Eastern Plaguelands"},
	},[[
	step
		Click Here to Farm in Eastern Plaguelands |confirm |next "Eastern_Plaguelands"
		Click Here to Farm in Dustwallow Marsh |confirm |next
	step
		map Dustwallow Marsh/0
		path follow loose; loop on; ants curved
		path	42.0,11.0	42.6,12.8	44.8,16.4	54.6,20.8	55.8,20.6
		path	57.6,20.2	59.0,23.6	58.6,26.2	57.2,30.2	53.4,28.0
		path	52.2,26.0	44.8,17.6	40.8,13.2	40.8,12.2
		Kill enemies around this area
		|goldcollect 500 Silk Cloth##4306
		|meta crap_items_follow=1
		|goldcollect 8 Wool Cloth##2592
		|goldcollect 36 Mageweave Cloth##4338
		|goldtracker
		Click Here to Sell Items |confirm |next "Sell_Items"
	step
	label "Eastern_Plaguelands"
		map Eastern Plaguelands/0
		path	follow smart; loop on; ants curved
		path	16.0,78.0	16.9,79.4	19.0,82.0	19.4,77.5	18.6,76.3
		Kill Death's Step enemies around this area
		|goldcollect 500 Silk Cloth##4306
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm |next "Sell_Items"
	step
	label "Sell_Items"
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Runecloth",{
	meta={goldtype="route",levelreq={15},itemtype="cloth"},
	items={{14047,372},{20404,120,'crap'}},
	maps={"Hellfire Ramparts","Silithus"},
	},[[
	step
		Click Here to Farm in Hellfire Ramparts |confirm |next "Hellfire_Ramparts"
		Click Here to Farm in Silithus |confirm |next
	step
		talk Zidormi##128607
		|tip She is at the top of the ramp leading from Un'Goro Crater to Silithus.
		Ask her _"Can you show me what Silithus was like before the Wound in the World?"_
		Travel to the Past |complete ZGV.InPhase('Old Silithus') |goto Silithus/0 78.93,21.97
	step
		map Silithus/0
		path follow smart; loop on; ants curved
		path	44.5,38.0	46.5,40.4	44.9,44.7	42.9,41.4	34.2,33.7
		path	31.6,32.1	32.9,30.1	35.2,29.9
		Kill Twilight enemies around this area
		|goldcollect 372 Runecloth##14047
		|meta crap_items_follow=1
		|goldcollect 120 Encrypted Twilight Text##20404
		|goldtracker
		Click Here to Sell Items |confirm |next "Sell_Items"
	step
	label "Hellfire_Ramparts"
		map Hellfire Ramparts/1
		path follow smart; loop off; ants curved; dist 1
		path	46.9,64.1	45.9,55.0	53.1,48.8	66.6,54.9	76.1,36.6
		path	70.8,32.5	65.4,39.3	65.2,44.4	57.0,50.9	50.6,61.8
		Kill enemies around this area
		|tip Kill and loot any humanoid mobs you see.
		|tip Run out and reset the instance to continue farming.
		|goldcollect 372 Runecloth##14047
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm |next "Sell_Items"
	step
	label "Sell_Items"
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Felcloth",{
	meta={goldtype="route",levelreq={15},itemtype="cloth"},
	items={{14256,12}},
	maps={"Blasted Lands"},
	},[[
	step
		talk Zidormi##88206
		Tell her _"Show me the Blasted Lands before the invasion."_
		Travel to the Past |complete ZGV.InPhase('Old Blasted Lands') |goto Blasted Lands/0 48.16,7.28
	step
		map Blasted Lands/0
		path follow smart; loop on; ants curved
		path	40.8,66.0	38.8,65.7	35.6,65.6	32.8,64.3	31.0,68.0
		path	34.3,70.7	35.9,70.0	36.6,72.4	32.7,75.0	36.5,75.4
		path	39.8,75.3	40.7,71.0
		Kill Demon enemies around this area
		|goldcollect 12 Felcloth##14256
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Righteous Orb, Mageweave Cloth",{
	meta={goldtype="route",levelreq={20},elitemobs=1,itemtype="cloth"},
	items={{14047,32},{4338,845},{12811,5,'crap'}},
	maps={"Stratholme"},
	},[[
	step
		Kill Risen enemies around this area
		|goldcollect 32 Runecloth##14047 |goto Stratholme/1 33.4,33.0
		|goldcollect 845 Mageweave Cloth##4338 |goto 33.4,33.0
		|meta crap_items_follow=1
		|goldcollect 5 Righteous Orb##12811
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Mageweave Cloth",{
	meta={goldtype="route",levelreq={15},elitemobs=1,itemtype="cloth"},
	items={{4338,448}},
	maps={"Tanaris","Badlands"},
	},[[
	step
		Click Here to Farm in Tanaris |confirm |next "Tanaris"
		Click Here to Farm in Badlands |confirm |next
	step
		map Badlands/0
		path follow smart; loop on; ants curved; dist 15
		path	12.3,45.1	14.8,47.2	17.0,47.5	19.0,49.2	20.5,50.0
		path	22.6,48.5	23.2,46.0	21.1,43.9	18.8,45.7	17.1,46.2
		path	15.7,46.2	14.5,45.9	13.2,44.5
		Kill Darkflight enemies around this area
		|goldcollect 448 Mageweave Cloth##4338
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm |next "Sell_Items"
	step
	label "Tanaris"
		Kill Sandfury enemies around this area
		|goldcollect 448 Mageweave Cloth##4338 |goto Tanaris/0 33.8,7.1
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm |next "Sell_Items"
	step
	label "Sell_Items"
		#include "auctioneer"
]])

--  Outland  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Netherweave Cloth",{
	meta={goldtype="route",levelreq={25},itemtype="cloth"},
	items={{21877,928},{30810,392,'crap'},{29739,24,'crap'},{30809,220,'crap'},{29740,24,'crap'}},
	maps={"Shadowmoon Valley"},
	},[[
	step
		Click Here to Farm in Legion Hold |confirm |next "Legion_Hold"
		|tip This is also a good location to farm Aldor rep items.
		Click Here to Farm in Eclipse Point |confirm |next
		|tip This is also a good location to farm Scryer rep items.
	step
		map Shadowmoon Valley/0
		path follow smart; loop on; ants curved; dist 20
		path	51.1,58.8	53.0,59.3	53.2,60.5	52.8,63.2	52.8,65.4
		path	52.9,69.0	52.5,71.8	47.3,71.1	45.8,71.3	45.2,69.2
		path	45.6,66.1	48.0,67.2
		Kill enemies around this area
		|goldcollect 928 Netherweave Cloth##21877
		|meta crap_items_follow=1
		|goldcollect 392 Sunfury Signet##30810 |n
		|goldcollect 24 Arcane Tome##29739 |n
		|goldtracker
		Click Here to Sell Items |confirm |next "Sell_Items"
	step
	label "Legion_Hold"
		map Shadowmoon Valley/0
		path follow smart; loop on; ants curved; dist 20
		path	23.9,41.3	22.6,40.1	22.3,38.4	22.1,37.1	20.7,38.0
		path	20.8,36.2	21.8,34.2	22.7,31.2	23.7,31.1	24.9,32.3
		path	26.0,33.3	25.1,34.6	26.2,36.1	25.1,38.1	24.9,39.8
		Kill enemies around this area
		|goldcollect 928 Netherweave Cloth##21877
		|meta crap_items_follow=1
		|goldcollect 220 Mark of Sargeras##30809 |n
		|goldcollect 24 Fel Armament##29740 |n
		|goldtracker
		Click Here to Sell Items |confirm |next "Sell_Items"
	step
	label "Sell_Items"
		#include "auctioneer"
]])

--  Northrend  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Frostweave Cloth",{
	meta={goldtype="route",levelreq=25,itemtype="cloth"},
	items={{33470,428}},
	maps={"Icecrown"},
	},[[
	step
		Click Here to Farm in Argent Tournament Grounds |confirm |next "Argent_Tournament_Grounds"
		Click Here to Farm in Corp'Rethar |confirm |next
	step
		kill Chosen Zealot##32175+
		|goldcollect 428 Frostweave Cloth##33470 |goto Icecrown/0 43.3,78.4
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm |next "Sell_Items"
	step
	label "Argent_Tournament_Grounds"
		map Icecrown/0
		path follow smart; loop on; ants curved; dist 20
		path	65.6,22.2	64.6,22.6	63.0,21.6	60.8,23.0	60.8,20.6
		path	61.4,20.0	64.0,21.2	64.6,21.0
		Kill Dark enemies around this area
		|goldcollect 428 Frostweave Cloth##33470
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm |next "Sell_Items"
	step
	label "Sell_Items"
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Iceweb Spider Silk",{
	meta={goldtype="route",levelreq={20},itemtype="cloth"},
	items={{42253,84}},
	maps={"Zul'Drak"},
	},[[
	step
		map Zul'Drak/0
		path follow smart; loop on; ants curved
		path	36.2,57.9	35.8,50.8	35.1,47.9	36.4,47.6	38.2,53.6
		path	38.9,57.8
		kill Trapdoor Crawler##28221+
		|goldcollect 84 Iceweb Spider Silk##42253
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

--  Cataclysm  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Embersilk Cloth",{
	meta={goldtype="route",levelreq=30,itemtype="cloth"},
	items={{53010,248}},
	maps={"Tol Barad Peninsula","Deepholm"},
	},[[
	step
		Click Here to Farm in Tol Barad |confirm |next "Tol_Barad"
		Click Here to Farm in Deepholm |confirm |next
	step
		map Deepholm/0
		path follow smart; loop on; ants curved
		path	68.2,25.6	67.2,32.0	68.6,35.8	69.0,42.6	73.0,45.0
		path	77.2,42.8	76.8,35.6	74.6,32.8	74.8,28.4	72.2,26.6
		Kill Verlok enemies around this area
		|tip Above on the platforms.
		|goldcollect 248 Embersilk Cloth##53010
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm |next "Sell_Items"
	step
	label "Tol_Barad"
		map Tol Barad Peninsula/0
		path follow smart; loop on; ants curved; dist 10
		path	48.0,71.6	47.4,69.8	45.6,67.0	45.6,62.0	44.6,59.4
		path	42.6,59.0	41.8,57.4	38.6,58.2	36.6,59.4	36.0,60.6
		path	37.8,62.6	40.4,62.0	41.6,62.6	44.4,64.8	45.6,68.6
		Kill Restless enemies around this area
		|goldcollect 248 Embersilk Cloth##53010
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm |next "Sell_Items"
	step
	label "Sell_Items"
		#include "auctioneer"
]])

--  Pandaria  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Windwool Cloth",{
	meta={goldtype="route",levelreq=25,itemtype="cloth"},
	items={{72988,308}},
	maps={"Townlong Steppes"},
	},[[
	step
		map Townlong Steppes/0
		path follow loose; loop on; ants curved; dist 20
		path	25.8,55.3	23.7,55.5	22.1,56.6	21.0,57.7	20.8,55.9
		path	20.7,54.4	19.8,52.3	18.4,51.0	17.8,50.0	19.1,48.9
		path	19.7,47.8	21.0,50.3	22.3,50.9	23.6,49.9	24.6,52.1
		path	25.8,53.5
		Kill Sra'thik enemies around this area
		|goldcollect 308 Windwool Cloth##72988
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

--  Draenor  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Sumptuous Fur",{
	meta={goldtype="route",levelreq={15},itemtype="cloth"},
	items={{111557,364}},
	maps={"Gorgrond"},
	},[[
	step
		map Gorgrond/0
		path follow loose; loop on; ants curved; dist 20
		path	46.8,89.8	46.4,91.4	45.3,93.0	43.2,91.8	42.8,89.4
		path	44.5,90.7	44.6,89.2
		Kill Tailthrasher enemies around this area
		|goldcollect 364 Sumptuous Fur##111557
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])


--------------------------
-----    COOKING    ------
--------------------------

--  Classic  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Zesty Clam Meat, Black Pearl, Iridescent Pearl, Golden Pearl",{
	meta={goldtype="route",levelreq={15},itemtype="misc"},
	items={{7974,324},{7971,4},{5500,8},{13926,4},{14047,552,'crap'}},
	maps={"Blasted Lands"},
	},[[
	step
		talk Zidormi##88206
		Tell her _"Show me the Blasted Lands before the invasion."_
		Travel to the Past |complete ZGV.InPhase('Old Blasted Lands') |goto Blasted Lands/0 48.16,7.28
	step
		map Blasted Lands/0
		path follow smart; loop on; ants curved
		path	72.9,61.3	71.3,63.2	70.1,71.3	67.5,75.2	63.2,75.9
		path	60.3,77.9	58.5,76.6	59.0,73.2	60.4,70.0	61.4,63.2
		path	65.7,69.0	68.6,63.2	70.9,60.6
		Kill Bloodwash enemies around this area
		|goldcollect 324 Zesty Clam Meat##7974
		|goldcollect 4 Black Pearl##7971
		|goldcollect 8 Iridescent Pearl##5500
		|goldcollect 4 Golden Pearl##13926
		|meta crap_items_follow=1
		|goldcollect 552 Runecloth##14047
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Small Egg",{
	meta={goldtype="route",levelreq={5},itemtype="food"},
	items={{6889,272}},
	maps={"Westfall"},
	},[[
	step
		kill Greater Fleshripper##154+
		|goldcollect 272 Small Egg##6889 |goto Westfall 26.9,42.5
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Stringy Wolf Meat",{
	meta={goldtype="route",levelreq={1},itemtype="food"},
	items={{2672,404}},
	maps={"Tirisfal Glades"},
	},[[
	step
		talk Zidormi##141488
		Ask her _"Can you show me what Tirisfal Glades was like before the Battle for Lordaeron?"_
		Travel to the Past |complete ZGV.InPhase('Old Undercity') |goto Tirisfal Glades/0 69.46,62.80
	step
		map Tirisfal Glades/0
		path follow smart; loop on; ants curved
		path	86.0,39.2	88.2,41.8	88.0,46.2	87.6,47.6	82.8,51.0
		path	81.4,51.6	82.0,48.6	80.6,42.8	83.2,40.8
		kill Ravenous Darkhound##1549+
		|goldcollect 404 Stringy Wolf Meat##2672
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Chunk Of Boar Meat",{
	meta={goldtype="route",levelreq={5},itemtype="food"},
	items={{769,296}},
	maps={"Westfall"},
	},[[
	step
		map Westfall/0
		path follow smart; loop on; ants curved
		path	60.8,36.6	59.2,31.4	53.8,25.6	47.6,30.8	46.8,27.4
		path	46.8,19.2	49.0,16.6	53.0,17.8	55.6,16.2	58.8,13.6
		path	59.8,17.6	63.0,24.6	61.6,27.6	61.0,32.6
		Kill Goretusk enemies around this area
		|goldcollect 296 Chunk of Boar Meat##769
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Raptor Egg, Raptor Hide, Raptor Flesh, Large Fang",{
	meta={goldtype="route",levelreq={10},itemtype="food"},
	items={{3685,284},{4461,108},{12184,248},{5637,8}},
	maps={"Arathi Highlands"},
	},[[
	step
		talk Zidormi##141649
		Ask her _"Can you show me what Arathi Highlands was like before the war broke out?"_
		Travel to the Past |complete ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09
	step
		map Arathi Highlands/0
		path follow smart; loop on; ants curved
		path	42.8,83.6	40.2,82.2	37.6,75.1	45.4,66.2	48.8,66.8
		path	49.6,67.8	48.6,69.6	42.0,76.2
		kill Highland Fleshstalker##2561+
		|goldcollect 284 Raptor Egg##3685
		|goldcollect 108 Raptor Hide##4461
		|goldcollect 248 Raptor Flesh##12184
		|goldcollect 8 Large Fang##5637
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

--  Outland  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Buzzard Meat",{
	meta={goldtype="route",levelreq={15},itemtype="food"},
	items={{27671,176}},
	maps={"Terokkar Forest"},
	},[[
	step
		map Terokkar Forest/0
		path follow loose; loop on; ants curved
		path	33.6,51.6	34.8,56.4	39.6,53.0	45.0,56.6	47.2,62.6
		path	47.4,70.0	49.4,64.4	46.8,53.2	42.8,49.4	39.0,48.8
		kill Bonelasher##18470+
		|goldcollect 176 Buzzard Meat##27671
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Jaggal Clam Meat, Jaggal Pearl, Shadow Pearl",{
	meta={goldtype="route",levelreq={25},itemtype="food"},
	items={{24477,88},{24479,8},{24478,12}},
	maps={"Shadowmoon Valley"},
	},[[
	step
		Kill Coilskar enemies around this area
		|tip Kill them inside and outside the cave.
		use the Jaggal Clam##24476+
		|goldcollect 88 Jaggal Clam Meat##24477 |goto Shadowmoon Valley/0 52.9,26.1
		|goldcollect 8 Shadow Pearl##24479
		|goldcollect 12 Jaggal Pearl##24478
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

--  Northrend  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Siren's Tear, Northsea Pearl",{
	meta={goldtype="route",levelreq={10},itemtype="gem"},
	items={{36784,4},{36783,8}},
	maps={"Borean Tundra"},
	},[[
	step
		map Borean Tundra/0
		path follow smart; loop on; ants curved
		path	41.5,18.7	41.0,16.1	39.1,15.4	37.3,15.5	38.4,17.0
		path	40.0,19.6
		Kill Winterfin enemies around this area
		|goldcollect 4 Siren's Tear##36784
		|goldcollect 8 Northsea Pearl##36783
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

--  Cataclysm  --

--  Pandaria  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Viseclaw Meat, Raw Crab Meat",{
	meta={goldtype="route",levelreq={15},itemtype="food"},
	items={{85506,116},{74838,164},{89112,56,'crap'}},
	maps={"Krasarang Wilds"},
	},[[
	step
		map Krasarang Wilds/0
		path follow smart; loop on; ants curved
		path	52.3,47.5	56.4,49.8	57.4,43.9	60.1,40.7	54.3,44.5
		Kill enemies around this area
		|goldcollect 116 Viseclaw Meat##85506
		|goldcollect 164 Raw Crab Meat##74838
		|meta crap_items_follow=1
		|goldcollect 56 Mote of Harmony##89112
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Raw Tiger Steak",{
	meta={goldtype="route",levelreq={10},itemtype="food"},
	items={{74833,220},{89112,20,'crap'}},
	maps={"The Jade Forest"},
	},[[
	step
		map The Jade Forest/0
		path follow smart; loop on; ants curved
		path	61.8,21.0	63.0,24.0	64.4,27.6	61.2,26.6	60.8,26.0
		path	61.6,23.2
		Kill Windward enemies around this area
		|goldcollect 220 Raw Tiger Steak##74833
		|meta crap_items_follow=1
		|goldcollect 20 Mote of Harmony##89112
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Mushan Ribs",{
	meta={goldtype="route",levelreq=30,itemtype="food"},
	items={{74834,132},{89112,16,'crap'}},
	maps={"Dread Wastes"},
	},[[
	step
		map Dread Wastes/0
		path follow smart; loop on; ants curved
		path	48.8,21.4	46.8,20.4	48.4,18.6	49.6,16.6	51.6,14.8
		path	54.0,16.0	51.2,16.8
		kill Frightened Mushan##62760+
		|goldcollect 132 Mushan Ribs##74834
		|meta crap_items_follow=1
		|goldcollect 16 Mote of Harmony##89112
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Raw Turtle Meat",{
	meta={goldtype="route",levelreq={10},itemtype="food"},
	items={{74837,176},{89112,20,'crap'}},
	maps={"The Jade Forest"},
	},[[
	step
		map The Jade Forest/0
		path follow smart; loop on; ants curved
		path	65.4,34.2	65.7,28.1	66.8,27.0	69.3,26.4	69.3,30.7
		path	68.4,32.5
		Kill Saltback enemies around this area
		|goldcollect 176 Raw Turtle Meat##74837
		|meta crap_items_follow=1
		|goldcollect 20 Mote of Harmony##89112
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Wildfowl Breast",{
	meta={goldtype="route",levelreq=87,itemtype="food"},
	items={{74839,304},{89112,16,'crap'}},
	maps={"Valley of the Four Winds"},
	},[[
	step
		kill Whitefisher Crane##56752+
		|goldcollect 304 Wildfowl Breast##74839 |goto Valley of the Four Winds/0 25.4,43.8
		|meta crap_items_follow=1
		|goldcollect 16 Mote of Harmony##89112
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Raw Crocolisk Belly",{
	meta={goldtype="route",levelreq=15,itemtype="food"},
	items={{75014,128},{89112,4,'crap'}},
	maps={"Dread Wastes"},
	},[[
	step
		kill Coldbite Crocolisk##62023+
		|goldcollect 128 Raw Crocolisk Belly##75014 |goto Dread Wastes/0 64.7,59.0
		|meta crap_items_follow=1
		|goldcollect 4 Mote of Harmony##89112
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

--  Draenor  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Raw Boar Meat, Rylak Egg",{
	meta={goldtype="route",levelreq={10},itemtype="food"},
	items={{109136,104},{109133,52},{111557,272,'crap'}},
	maps={"Frostfire Ridge"},
	},[[
	step
		map Frostfire Ridge/0
		path follow smart; loop on; ants curved; dist 20
		path	50.6,55.0	48.2,56.3	47.6,59.6	40.6,63.4	36.7,56.6
		path	41.0,58.6	42.9,57.0	45.6,59.2	47.6,54.0
		Kill enemies around this area
		|goldcollect 104 Raw Boar Meat##109136
		|goldcollect 52 Rylak Egg##109133
		|meta crap_items_follow=1
		|goldcollect 272 Sumptuous Fur##111557
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Raw Talbuk Meat",{
	meta={goldtype="route",levelreq={35},itemtype="food"},
	items={{109132,132},{111557,156,'crap'}},
	maps={"Nagrand D"},
	},[[
	step
		map Nagrand D/0
		path follow smart; loop on; ants curved; dist 30
		path	62.2,37.4	53.8,37.6	59.8,28.4	63.6,20.0	63.6,32.6
		path	69.6,35.2	74.8,40.2	79.8,40.6	83.2,48.4	82.0,54.6
		path	72.8,57.2	66.6,58.0	60.6,50.6	66.6,45.8
		Kill Talbuk enemies around this area
		|goldcollect 132 Raw Talbuk Meat##109132
		|meta crap_items_follow=1
		|goldcollect 156 Sumptuous Fur##111557 |n
		collect 150 Hearty Soup Bone##113578 |n
		|goldtracker
		Click Here to Sell Items |confirm
	step
	label "Meatgut_Needs_Bones"
		talk Meatgut##82727
		|tip Sell your soup bones before going to the Auctioneer.
		accept Meatgut Needs Bones##35928 |goto 78.34,52.45
		|only if itemcount(113578) >= 20
	step
		Proceedint to Bone turn in |next "Meatgut_Needs_Bones" |only if itemcount(113578) >= 20
		Proceeding to Auctioneer |next |only if default
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Raw Riverbeast Meat",{
	meta={goldtype="route",levelreq={20},itemtype="food"},
	items={{109135,76}},
	maps={"Talador"},
	},[[
	step
		map Talador/0
		path follow smart; loop on; ants curved
		path	67.4,49.2	64.6,46.8	61.8,49.6	64.0,55.2	64.8,61.4
		path	69.6,64.6	68.4,60.0
		Kill Riverbeast enemies around this area
		|goldcollect 76 Raw Riverbeast Meat##109135
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Raw Clefthoof Meat",{
	meta={goldtype="route",levelreq={35},itemtype="food"},
	items={{109131,168},{111557,328,'crap'}},
	maps={"Nagrand D"},
	},[[
	step
		kill Tamed Clefthoof##79034+
		|goldcollect 168 Raw Clefthoof Meat##109131 |goto Nagrand D/0 79.6,72.8
		|meta crap_items_follow=1
		|goldcollect 328 Sumptuous Fur##111557
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])


-------------------------------------
-----    ELEMENTAL REAGENTS    ------
-------------------------------------

--  Classic  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Globe Of Water, Essence Of Water, Elemental Water",{
	meta={goldtype="route",levelreq={15},itemtype="elemental"},
	items={{7079,24},{7080,16},{7070,40}},
	maps={"Swamp of Sorrows"},
	},[[
	step
		map Swamp of Sorrows/0
		path follow loose; loop on; ants curved
		path	17.2,55.7	16.7,60.5	16.5,66.1	20.0,65.8	21.0,59.3
		path	21.0,55.1
		kill Purespring Elemental##46953+
		|goldcollect 24 Globe of Water##7079
		|goldcollect 16 Essence of Water##7080
		|goldcollect 40 Elemental Water##7070
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Breath Of Wind, Essence Of Air, Elemental Air",{
	meta={goldtype="route",levelreq={15},itemtype="elemental"},
	items={{7069,40},{7081,32},{7082,24}},
	maps={"Silithus"},
	},[[
	step
		talk Zidormi##128607
		|tip She is at the top of the ramp leading from Un'Goro Crater to Silithus.
		Ask her _"Can you show me what Silithus was like before the Wound in the World?"_
		Travel to the Past |complete ZGV.InPhase('Old Silithus') |goto Silithus/0 78.93,21.97
	step
		map Silithus/0
		path follow loose; loop on; ants curved
		path	40.8,14.0	38.6,17.6	35.6,22.8	31.6,26.6	29.6,28.6
		path	28.0,30.8	26.4,29.0	25.2,27.0	26.6,24.4	28.2,18.4
		path	29.6,21.6	34.8,19.0	36.4,15.2	39.6,14.0
		kill Dust Stormer##11744+
		|goldcollect 40 Elemental Air##7069
		|goldcollect 32 Breath of Wind##7081
		|goldcollect 24 Essence of Air##7082
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Core Of Earth, Essence Of Earth, Elemental Earth",{
	meta={goldtype="route",levelreq={15},itemtype="elemental"},
	items={{7075,40},{7067,16},{7076,8}},
	maps={"Winterspring"},
	},[[
	step
		map Winterspring/0
		path follow loose; loop on; ants curved
		path	57.8,56.2	60.6,56.6	61.6,58.6	60.4,60.2	58.8,60.0
		path	57.6,58.4
		kill Frostshard Rumbler##48960+
		|goldcollect 40 Core of Earth##7075
		|goldcollect 16 Elemental Earth##7067
		|goldcollect 8 Essence of Earth##7076
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Essence Of Fire, Elemental Fire, Heart of Fire",{
	meta={goldtype="route",levelreq={15},itemtype="elemental"},
	items={{7078,24},{7068,48},{7077,16}},
	maps={"Un'Goro Crater"},
	},[[
	step
		map Un'Goro Crater/0
		path follow loose; loop on; ants curved
		path	54.4,56.2	53.4,51.0	55.1,48.7	54.5,44.0	52.7,42.5
		path	52.2,45.5	49.3,48.4	48.6,43.9	46.3,46.5	45.5,51.3
		path	47.5,53.6	50.2,54.3
		Kill enemies around this area
		|goldcollect 24 Essence of Fire##7078
		|goldcollect 48 Elemental Fire##7068
		|goldcollect 16 Heart of Fire##7077
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Essence Of Undeath",{
	meta={goldtype="route",levelreq={15},itemtype="elemental"},
	items={{12808,12},{4338,188,'crap'},{4306,128,'crap'}},
	maps={"Winterspring"},
	},[[
	step
		map Winterspring/0
		path follow smart; loop on; ants curved
		path	48.6,53.4	52.6,52.6	54.4,54.6	53.8,57.6	50.8,57.2
		path	48.6,57.8	46.8,53.8
		Kill Undead enemies around this area
		|tip Enter the buildings and kill the mobs inside as well.
		|goldcollect 12 Essence of Undeath##12808
		|meta crap_items_follow=1
		|goldcollect 188 Mageweave Cloth##4338
		|goldcollect 128 Runecloth##4306
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Ichor Of Undeath",{
	meta={goldtype="route",levelreq={15},elitemobs=1,itemtype="elemental"},
	items={{7972,6},{4338,324,'crap'},{4306,150,'crap'}},
	maps={"Scholomance"},
	},[[
	step
		Kill Undead enemies around this area
		|goldcollect 6 Ichor of Undeath##7972 |goto Scholomance/2 59.6,19.1
		|meta crap_items_follow=1
		|goldcollect 324 Mageweave Cloth##4338
		|goldcollect 150 Silk Cloth##4306
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

--  Outland  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Mote Of Air",{
	meta={goldtype="route",levelreq={25},itemtype="elemental"},
	items={{22572,36}},
	maps={"Shadowmoon Valley"},
	},[[
	step
		map Shadowmoon Valley/0
		path follow loose; loop on; ants curved
		path	58.8,59.8	60.8,59.8	63.0,61.0	64.8,61.6	66.0,63.6
		path	62.2,64.2	61.2,67.6	59.6,71.6	57.0,73.6	55.4,72.0
		path	58.2,70.6	59.2,65.4	62.0,61.8
		kill Enraged Air Spirit##21060+
		|goldcollect 36 Mote of Air##22572
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Mote Of Earth",{
	meta={goldtype="route",levelreq={15},itemtype="elemental"},
	items={{22573,64}},
	maps={"Nagrand"},
	},[[
	step
		map Nagrand/0
		path follow loose; loop on; ants curved
		path	25.3,71.8	27.4,77.0	28.4,81.6	31.8,81.9	36.4,83.4
		path	41.0,84.7	38.1,80.9	30.5,74.9
		kill Shattered Rumbler##17157+
		|goldcollect 64 Mote of Earth##22573
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Mote Of Fire",{
	meta={goldtype="route",levelreq={10},itemtype="elemental"},
	items={{22574,108}},
	maps={"Hellfire Peninsula"},
	},[[
	step
		map Hellfire Peninsula/0
		path follow loose; loop on; ants curved
		path	57.8,17.8	60.8,18.8	63.6,18.2	66.2,17.6	67.0,17.8
		path	67.8,20.2	65.6,19.8	63.2,20.6	60.6,23.4	57.4,22.8
		path	58.2,19.6
		kill Incandescent Fel Spark##22323+
		|goldcollect 108 Mote of Fire##22574
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Mote Of Mana",{
	meta={goldtype="route",levelreq={25},itemtype="elemental"},
	items={{22576,168}},
	maps={"Netherstorm"},
	},[[
	step
		map Netherstorm/0
		path follow loose; loop on; ants curved
		path	54.7,88.0	56.8,85.6	57.4,87.1	55.3,89.7	54.5,90.2
		Kill enemies around this area
		|goldcollect 168 Mote of Mana##22576
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Mote Of Life",{
	meta={goldtype="route",levelreq={10},itemtype="elemental"},
	items={{22575,160}},
	maps={"Zangarmarsh"},
	},[[
	step
		map Zangarmarsh/0
		path follow loose; loop on; ants curved
		path	85.4,38.2	85.1,41.0	83.2,44.1	81.0,43.4	79.3,41.1
		path	78.7,38.3	79.4,33.7	82.0,32.3
		Kill Withered enemies around this area
		|goldcollect 160 Mote of Life##22575
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Mote Of Shadow",{
	meta={goldtype="route",levelreq={15},itemtype="elemental"},
	items={{22577,124},{21877,412,'crap'}},
	maps={"Nagrand"},
	},[[
	step
		map Nagrand/0
		path follow loose; loop on; ants curved
		path	43.6,69.6	43.2,71.4	41.2,75.0	38.2,79.0	35.6,77.6
		path	31.6,77.4	30.8,74.0	31.2,69.4	29.6,67.6	31.0,65.8
		path	34.0,66.6	36.6,65.4	38.8,62.2	41.6,62.2	42.0,66.6
		kill Voidspawn##17981+
		|goldcollect 124 Mote of Shadow##22577
		|meta crap_items_follow=1
		|goldcollect 412 Netherweave Cloth##21877
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Mote Of Water",{
	meta={goldtype="route",levelreq={15},itemtype="elemental"},
	items={{22578,92}},
	maps={"Nagrand"},
	},[[
	step
		map Nagrand/0
		path follow loose; loop on; ants curved
		path	44.5,46.5	40.6,46.1	41.6,40.4	43.3,40.4	44.4,42.3
		kill Muck Spawn##17154
		|goldcollect 92 Mote of Water##22578
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

--  Northrend  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Frozen Orb",{
	meta={goldtype="route",levelreq={10},elitemobs=1,itemtype="gem"},
	items={{43102,1}},
	maps={"The Nexus","The Oculus","Old Hillsbrad Foothills","The Storm Peaks","Zul'Drak","Howling Fjord","Grizzly Hills","Burning Steppes","Icecrown"},
	},[[
	step
		|goldcollect 1 Frozen Orb##43102
		|tip Kill the final boss of any Northrend Dungeon.
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Eternal Air, Crystallized Air",{
	meta={goldtype="route",levelreq={10},itemtype="elemental"},
	items={{37700,180}},
	maps={"Borean Tundra"},
	},[[
	step
		map Borean Tundra/0
		path follow smart; loop on; ants curved
		path	45.4,6.8	46.0,7.4	46.0,10.6	44.4,11.6	42.8,10.6
		path	42.2,9.4	44.4,8.0
		kill Enraged Tempest##25415+
		|goldcollect 180 Crystallized Air##37700
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Eternal Earth, Crystallized Earth",{
	meta={goldtype="route",levelreq={20},itemtype="elemental"},
	items={{37701,164}},
	maps={"Sholazar Basin"},
	},[[
	step
		map Sholazar Basin/0
		path follow smart; loop on; ants curved
		path	68.6,54.0	71.2,55.0	73.4,55.0	75.0,56.0	73.6,59.8
		path	71.4,61.2	66.6,63.6	64.8,59.8
		kill Lifeblood Elemental##29124+
		|goldcollect 164 Crystallized Earth##37701
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Eternal Fire, Crystallized Fire",{
	meta={goldtype="route",levelreq={25},itemtype="elemental"},
	items={{37702,124}},
	maps={"The Storm Peaks"},
	},[[
	step
		map The Storm Peaks/0
		path follow loose; loop on; ants curved
		path	76.0,63.4	72.3,64.4	68.2,63.4	69.2,58.0	71.0,56.0
		kill Seething Revenant##29504+
		|goldcollect 124 Crystallized Fire##37702
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Eternal Life, Crystallized Life",{
	meta={goldtype="route",levelreq={25},itemtype="elemental"},
	items={{37704,164}},
	maps={"Wintergrasp"},
	},[[
	step
		map Wintergrasp/0
		path follow smart; loop on; ants curved
		path	11.6,60.0	13.1,63.7	10.4,64.7	6.3,65.0	5.2,59.0
		path	6.9,57.9
		Kill Lasher enemies around this area
		|goldcollect 164 Crystallized Life##37704
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Eternal Shadow, Crystallized Shadow",{
	meta={goldtype="route",levelreq={15},itemtype="elemental"},
	items={{37703,256}},
	maps={"Dragonblight"},
	},[[
	step
		Enter the cave |goto Dragonblight/0 74.3,23.6 < 20
		kill Deathbringer Revenant##27382+
		|goldcollect 256 Crystallized Shadow##37703 |goto 75.0,20.8
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Eternal Water, Crystallized Water",{
	meta={goldtype="route",levelreq={15},itemtype="elemental"},
	items={{37705,112}},
	maps={"Dragonblight"},
	},[[
	step
		map Dragonblight/0
		path follow smart; loop on; ants curved
		path	68.6,50.8	68.6,52.0	67.8,55.8	66.4,55.0	66.2,53.0
		path	66.6,51.4
		kill Ice Revenant##26283+
		|goldcollect 112 Crystallized Water##37705
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

--  Cataclysm  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Chaos Orb",{
	meta={goldtype="route",levelreq={10},elitemobs=1,itemtype="gem"},
	items={{52078,1}},
	maps={"Dalaran","Borean Tundra","Deepholm","Tanaris","Vashj'ir","Dragonblight","Pit of Saron","The Storm Peaks","Zul'Drak","Uldum","Ghostlands","Northern Stranglethorn","Howling Fjord","Grizzly Hills","Burning Steppes","Icecrown"},
	},[[
	step
		|goldcollect 1 Chaos Orb##52078
		|tip Kill the final boss of any Cataclysm Dungeon.
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Volatile Fire",{
	meta={goldtype="route",levelreq={30},itemtype="elemental"},
	items={{52325,140}},
	maps={"Mount Hyjal"},
	},[[
	step
		map Mount Hyjal/0
		path follow loose; loop on; ants curved
		path	15.9,46.2	18.0,55.5	20.5,59.4	23.3,59.9	24.8,60.5
		path	32.5,63.6	32.6,58.7	34.7,57.0	39.7,53.2	38.1,51.0
		path	35.9,51.7
		Kill enemies around this area
		|goldcollect 140 Volatile Fire##52325
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Volatile Water",{
	meta={goldtype="route",levelreq={30},itemtype="elemental"},
	items={{52326,88}},
	maps={"Twilight Highlands"},
	},[[
	step
		map Twilight Highlands/0
		path follow loose; loop on; ants curved
		path	70.9,50.3	69.8,47.8	67.7,44.7	65.2,41.5	63.1,41.5
		path	63.5,44.1	65.8,46.9	67.1,51.2
		kill Muddied Water Elemental##44011+
		|goldcollect 88 Volatile Water##52326
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Volatile Air",{
	meta={goldtype="route",levelreq={30},itemtype="elemental"},
	items={{52328,76}},
	maps={"Uldum"},
	},[[
	step
		map Uldum/0
		path follow smart; loop on; ants curved
		path	39.6,36.2	44.4,36.8	42.8,42.2	38.6,47.0	37.0,43.2
		kill Scion of Al'Akir##45755+
		|goldcollect 76 Volatile Air##52328
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Volatile Earth",{
	meta={goldtype="route",levelreq={30},itemtype="elemental"},
	items={{52327,92}},
	maps={"Twilight Highlands"},
	},[[
	step
		map Twilight Highlands/0
		path follow smart; loop on; ants curved
		path	61.4,31.0	60.6,34.6	57.4,33.6	54.8,30.6	55.8,27.4
		path	58.6,28.2	59.6,29.4
		kill Obsidian Stoneslave##47226+
		|goldcollect 92 Volatile Earth##52327
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

--  Pandaria  --

--  Draenor  --
