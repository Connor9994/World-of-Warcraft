local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
ZygorGuidesViewer.Gold.guides_loaded=true

if UnitFactionGroup("player")~="Alliance" then return end

ZygorGuidesViewer.GuideMenuTier = "WOD"

--@@ONLYDEVSTART
ZGV.DevStart()
ZGV.DevEnd()
--@@ONLYDEVEND

-----------------------------
-----    ENCHANTING    ------
-----------------------------

--  Classic  --

--  Outland  --

--  Northrend  --

--  Cataclysm  --

--  Pandaria  --

--  Draenor  --


-------------------------
-----    FISHING    -----
-------------------------

--  Classic  --

--  Outland  --

--  Northrend  --

--  Cataclysm  --

--  Pandaria  --

--  Draenor  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Abyssal Gulper Eel Flesh/Crescent Saberfish Flesh (Garrison)",{
	meta={goldtype="route",skillreq={draenor_fishing=1},levelreq={10}},
	description="\nThis guide will walk you through fishing Abyssal Gulper Eel Flesh and Crescent Saberfish Flesh from your garrison waters.",
	items={{109143,872},{109137,160}},
	maps={"Lunarfall"},
	},[[
	step
		You do not have a Fishing Shack in your garrison! |complete hasbuilding(64) or hasbuilding(134) or hasbuilding(135) |only if not hasbuilding(64) and not hasbuilding(134) and not hasbuilding(135)
		Proceeding to garrison fishing |next "Fish" |only if hasbuilding(64) or hasbuilding(134) or hasbuilding(135)
	step
	label "Fish"
		use the Abyssal Gulper Eel Bait##110293
		|tip This is fished up. You must re-use new bait every 5 minutes.
		use the Worm Supreme##118391
		|tip You can buy this cheap from the auction house or get it randomly fishing in Draenor.
		Fish from your garrison waters |goto Lunarfall/0 52.1,15.5 |only if garrisonlvl(1)
		Fish from your garrison waters |goto Lunarfall/0 52.1,15.5 |only if garrisonlvl(2)
		Fish from your garrison waters |goto Lunarfall/0 52.1,15.5 |only if garrisonlvl(3)
		Use your Fishing skill to fish in the water |cast Fishing##131474
		Fillet your Crescent Saberfish |use Crescent Saberfish##111595
		Fillet your Abyssal Gulper |use Abyssal Gulper Eel##111664
		|goldcollect 872 Abyssal Gulper Eel Flesh##109143
		|goldcollect 160 Crescent Saberfish Flesh##109137
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Blackwater Whiptail Flesh/Crescent Saberfish Flesh (Garrison)",{
	meta={goldtype="route",skillreq={draenor_fishing=1},levelreq={10}},
	description="\nThis guide will walk you through fishing Blackwater Whiptail Flesh and Crescent Saberfish Flesh from your garrison waters.",
	items={{109144,908},{109137,276}},
	maps={"Lunarfall"},
	},[[
	step
		You do not have a Fishing Shack in your garrison! |complete hasbuilding(64) or hasbuilding(134) or hasbuilding(135) |only if not hasbuilding(64) and not hasbuilding(134) and not hasbuilding(135)
		Proceeding to garrison fishing |next "Fish" |only if hasbuilding(64) or hasbuilding(134) or hasbuilding(135)
	step
	label "Fish"
		Use your Blackwater Whiptail Bait |use Blackwater Whiptail Bait##110294
		|tip This is fished up. You must re-use new bait every 5 minutes.
		Use your Worm Supreme lure |use Worm Supreme##118391 |tip You can buy this cheap from the auction house or get it randomly fishing in Draenor.
		Fish from your garrison waters |goto Lunarfall/0 52.1,15.5 |only if garrisonlvl(1)
		Fish from your garrison waters |goto Lunarfall/0 52.1,15.5 |only if garrisonlvl(2)
		Fish from your garrison waters |goto Lunarfall/0 52.1,15.5 |only if garrisonlvl(3)
		Use your Fishing skill to fish in the water |cast Fishing##131474
		Fillet your fish by right-clicking the fish in your inventory
		|goldcollect 908 Blackwater Whiptail Flesh##109144
		|goldcollect 276 Crescent Saberfish Flesh##109137
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Blind Lake Sturgeon Flesh/Crescent Saberfish Flesh (Garrison)",{
	meta={goldtype="route",skillreq={draenor_fishing=1},levelreq={10}},
	description="\nThis guide will walk you through fishing Blind Lake Sturgeon Flesh and Crescent Saberfish Flesh from your garrison waters.",
	items={{109140,796},{109137,196}},
	maps={"Lunarfall"},
	},[[
	step
		You do not have a Fishing Shack in your garrison! |complete hasbuilding(64) or hasbuilding(134) or hasbuilding(135) |only if not hasbuilding(64) and not hasbuilding(134) and not hasbuilding(135)
		Proceeding to garrison fishing |next "Fish" |only if hasbuilding(64) or hasbuilding(134) or hasbuilding(135)
	step
	label "Fish"
		Use your Blind Lake Sturgeon Bait |use Blind Lake Sturgeon Bait##110290
		|tip This is fished up. You must re-use new bait every 5 minutes.
		Use your Worm Supreme lure |use Worm Supreme##118391 |tip You can buy this cheap from the auction house or get it randomly fishing in Draenor.
		Fish from your garrison waters |goto Lunarfall/0 52.1,15.5 |only if garrisonlvl(1)
		Fish from your garrison waters |goto Lunarfall/0 52.1,15.5 |only if garrisonlvl(2)
		Fish from your garrison waters |goto Lunarfall/0 52.1,15.5 |only if garrisonlvl(3)
		Use your Fishing skill to fish in the water |cast Fishing##131474
		Fillet your fish by right-clicking the fish in your inventory
		|goldcollect 796 Blind Lake Sturgeon Flesh##109140
		|goldcollect 196 Crescent Saberfish Flesh##109137
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Crescent Saberfish Flesh",{
	meta={goldtype="route",skillreq={draenor_fishing=1},levelreq={10}},
	description="\nThis guide will walk you through fishing Crescent Saberfish Flesh from open water.",
	items={{109140,160},{109137,808}},
	maps={"Shadowmoon Valley D"},
	},[[
	step
		Use your Worm Supreme lure |use Worm Supreme##118391
		|tip You can buy this cheap from the auction house or get it randomly fishing in Draenor.
		Fish from the shore here |goto Shadowmoon Valley D/0 40.6,49.8
		Use your Fishing skill to fish in the water |cast Fishing##131474
		Fillet your fish by right-clicking the fish in your inventory
		|goldcollect 160 Blind Lake Sturgeon Flesh##109140
		|goldcollect 808 Crescent Saberfish Flesh##109137
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Crescent Saberfish Flesh (Garrison)",{
	meta={goldtype="route",skillreq={draenor_fishing=1},levelreq={10}},
	description="\nThis guide will walk you through fishing Crescent Saberfish Flesh from your garrison waters.",
	items={{109137,756},{109139,25},{109143,25},{109142,25},{109141,25},{109144,25},{109140,25}},
	maps={"Lunarfall"},
	},[[
	step
		You do not have a Fishing Shack in your garrison! |complete hasbuilding(64) or hasbuilding(134) or hasbuilding(135) |only if not hasbuilding(64) and not hasbuilding(134) and not hasbuilding(135)
		Proceeding to garrison fishing |next "Fish" |only if hasbuilding(64) or hasbuilding(134) or hasbuilding(135)
	step
	label "Fish"
		Use your Worm Supreme lure |use Worm Supreme##118391
		|tip You can buy this cheap from the auction house or get it randomly fishing in Draenor.
		Fish from your garrison waters |goto Lunarfall/0 52.1,15.5 |only if garrisonlvl(1)
		Fish from your garrison waters |goto Lunarfall/0 52.1,15.5 |only if garrisonlvl(2)
		Fish from your garrison waters |goto Lunarfall/0 52.1,15.5 |only if garrisonlvl(3)
		Use your Fishing skill to fish in the water |cast Fishing##131474
		Fillet your fish by right-clicking the fish in your inventory
		|goldcollect 756 Crescent Saberfish Flesh##109137
		|goldcollect 25 Fat Sleeper Flesh##109139
		|goldcollect 25 Abyssal Gulper Eel Flesh##109143
		|goldcollect 25 Sea Scorpion Segment##109142
		|goldcollect 25 Fire Ammonite Tentacle##109141
		|goldcollect 25 Blackwater Whiptail Flesh##109144
		|goldcollect 25 Blind Lake Sturgeon Flesh##109140
		|goldtracker 25 Jawless Skulker Flesh##109138
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Fat Sleeper Flesh/Crescent Saberfish Flesh (Garrison)",{
	meta={goldtype="route",skillreq={draenor_fishing=1},levelreq={10}},
	description="\nThis guide will walk you through fishing Fat Sleeper Flesh and Crescent Saberfish Flesh from your garrison waters.",
	items={{109139,708},{109137,316}},
	maps={"Lunarfall"},
	},[[
	step
		You do not have a Fishing Shack in your garrison! |complete hasbuilding(64) or hasbuilding(134) or hasbuilding(135) |only if not hasbuilding(64) and not hasbuilding(134) and not hasbuilding(135)
		Proceeding to garrison fishing |next "Fish" |only if hasbuilding(64) or hasbuilding(134) or hasbuilding(135)
	step
	label "Fish"
		Use your Fat Sleeper Bait |use Fat Sleeper Bait##110289
		|tip This is fished up. You must re-use new bait every 5 minutes.
		Use your Worm Supreme lure |use Worm Supreme##118391 |tip You can buy this cheap from the auction house or get it randomly fishing in Draenor.
		Fish from your garrison waters |goto Lunarfall/0 52.1,15.5 |only if garrisonlvl(1)
		Fish from your garrison waters |goto Lunarfall/0 52.1,15.5 |only if garrisonlvl(2)
		Fish from your garrison waters |goto Lunarfall/0 52.1,15.5 |only if garrisonlvl(3)
		Use your Fishing skill to fish in the water |cast Fishing##131474
		Fillet your fish by right-clicking the fish in your inventory
		|goldcollect 708 Fat Sleeper Flesh##109139
		|goldcollect 316 Crescent Saberfish Flesh##109137
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Fire Ammonite Tentacle/Crescent Saberfish Flesh (Garrison)",{
	meta={goldtype="route",skillreq={draenor_fishing=1},levelreq={10}},
	description="\nThis guide will walk you through fishing Fire Ammonite Tentacle and Crescent Saberfish Flesh from your garrison waters.",
	items={{109141,556},{109137,552}},
	maps={"Lunarfall"},
	},[[
	step
		You do not have a Fishing Shack in your garrison! |complete hasbuilding(64) or hasbuilding(134) or hasbuilding(135) |only if not hasbuilding(64) and not hasbuilding(134) and not hasbuilding(135)
		Proceeding to garrison fishing |next "Fish" |only if hasbuilding(64) or hasbuilding(134) or hasbuilding(135)
	step
	label "Fish"
		Use your Fire Ammonite Bait |use Fire Ammonite Bait##110291
		|tip This is fished up. You must re-use new bait every 5 minutes.
		Use your Worm Supreme lure |use Worm Supreme##118391 |tip You can buy this cheap from the auction house or get it randomly fishing in Draenor.
		Fish from your garrison waters |goto Lunarfall/0 52.1,15.5 |only if garrisonlvl(1)
		Fish from your garrison waters |goto Lunarfall/0 52.1,15.5 |only if garrisonlvl(2)
		Fish from your garrison waters |goto Lunarfall/0 52.1,15.5 |only if garrisonlvl(3)
		Use your Fishing skill to fish in the water |cast Fishing##131474
		Fillet your fish by right-clicking the fish in your inventory
		|goldcollect 556 Fire Ammonite Tentacle##109141
		|goldcollect 552 Crescent Saberfish Flesh##109137
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Jawless Skulker Flesh/Crescent Saberfish Flesh (Garrison)",{
	meta={goldtype="route",skillreq={draenor_fishing=1},levelreq={10}},
	description="\nThis guide will walk you through fishing Jawless Skulker Flesh and Crescent Saberfish Flesh from your garrison waters.",
	items={{109138,800},{109137,236}},
	maps={"Lunarfall"},
	},[[
	step
		You do not have a Fishing Shack in your garrison! |complete hasbuilding(64) or hasbuilding(134) or hasbuilding(135) |only if not hasbuilding(64) and not hasbuilding(134) and not hasbuilding(135)
		Proceeding to garrison fishing |next "Fish" |only if hasbuilding(64) or hasbuilding(134) or hasbuilding(135)
	step
	label "Fish"
		Use your Jawless Skulker Bait |use Jawless Skulker Bait##110274
		|tip This is fished up. You must re-use new bait every 5 minutes.
		Use your Worm Supreme lure |use Worm Supreme##118391 |tip You can buy this cheap from the auction house or get it randomly fishing in Draenor.
		Fish from your garrison waters |goto Lunarfall/0 52.1,15.5 |only if garrisonlvl(1)
		Fish from your garrison waters |goto Lunarfall/0 52.1,15.5 |only if garrisonlvl(2)
		Fish from your garrison waters |goto Lunarfall/0 52.1,15.5 |only if garrisonlvl(3)
		Use your Fishing skill to fish in the water |cast Fishing##131474
		Fillet your fish by right-clicking the fish in your inventory
		|goldcollect 800 Jawless Skulker Flesh##109138
		|goldcollect 236 Crescent Saberfish Flesh##109137
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Sea Scorpion Segment/Crescent Saberfish Flesh (Garrison)",{
	meta={goldtype="route",skillreq={draenor_fishing=1},levelreq={10}},
	description="\nThis guide will walk you through fishing Sea Scorpion Segment and Crescent Saberfish Flesh from your garrison waters.",
	items={{109142,780},{109137,220}},
	maps={"Lunarfall"},
	},[[
	step
		You do not have a Fishing Shack in your garrison! |complete hasbuilding(64) or hasbuilding(134) or hasbuilding(135) |only if not hasbuilding(64) and not hasbuilding(134) and not hasbuilding(135)
		Proceeding to garrison fishing |next "Fish" |only if hasbuilding(64) or hasbuilding(134) or hasbuilding(135)
	step
	label "Fish"
		Use your Sea Scorpion Bait |use Sea Scorpion Bait##110292
		|tip This is fished up. You must re-use new bait every 5 minutes.
		Use your Worm Supreme lure |use Worm Supreme##118391 |tip You can buy this cheap from the auction house or get it randomly fishing in Draenor.
		Fish from your garrison waters |goto Lunarfall/0 52.1,15.5 |only if garrisonlvl(1)
		Fish from your garrison waters |goto Lunarfall/0 52.1,15.5 |only if garrisonlvl(2)
		Fish from your garrison waters |goto Lunarfall/0 52.1,15.5 |only if garrisonlvl(3)
		Use your Fishing skill to fish in the water |cast Fishing##131474
		Fillet your fish by right-clicking the fish in your inventory
		|goldcollect 780 Sea Scorpion Segment##109142
		|goldcollect 220 Crescent Saberfish Flesh##109137
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])


---------------------------
-----    HERBALISM    -----
---------------------------

--  Classic  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Peacebloom/Silverleaf/Earthroot",{
	meta={goldtype="route",skillreq={herbalism=1},levelreq={1}},
	items={{2447,200},{765,240},{2449,140}},
	maps={"Elwynn Forest"},
	},[[
	step
		map Elwynn Forest/0
		path	follow strict; loop on; ants curved; dist 25
		path	35.1,58.1	27.9,73.9	25.8,88.9
		path	38.8,87.5	39.9,76.5	46.8,74.6
		path	53.5,84.0	62.9,77.8	73.9,83.8
		path	77.0,76.5	84.0,85.1	88.5,77.1
		path	85.9,61.0	74.5,53.9	70.6,61.7
		path	62.1,62.6	62.5,58.1	45.2,63.4
		path	44.7,55.5	40.9,53.7
		|goldcollect 200 Peacebloom##2447
		|goldcollect 240 Silverleaf##765
		|goldcollect 140 Earthroot##2449
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

--  Outland  --

--  Northrend  --

--  Cataclysm  --

--  Pandaria  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Rain Poppy",{
	meta={goldtype="route",skillreq={pandaria_herbalism=1},levelreq={10}},
	items={{72237,384},{89640,18}},
	maps={"The Jade Forest"},
	},[[
	step
		map The Jade Forest
		path	follow smart; loop off; ants curved; dist 10
		path	56.7,80.6	57.6,85.9	61.3,83.7
		path	61.1,80.2	60.3,79.6	59.5,74.6
		path	57.3,70.9	52.7,69.5	46.5,68.4
		path	46.2,63.2	49.0,62.2	48.4,58.6
		path	46.2,59.1	41.6,55.5	38.0,51.6
		path	35.2,47.9	31.9,45.7	27.4,44.5
		path	24.8,41.1	24.9,36.3	26.0,33.1
		|goldcollect 384 Rain Poppy##72237
		|goldcollect 18 Life Spirit##89640
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

--  Draenor  --


-----------------------------
-----    INSCRIPTION    -----
-----------------------------

--  Classic  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Alabaster Pigment",{
	meta={goldtype="route",skillreq={herbalism=1,inscription=1},levelreq={1}},
	items={{2447,200},{765,240},{2449,140},{39151,304}},
	maps={"Elwynn Forest"},
	},[[
	step
		map Elwynn Forest
		path	follow strict; loop on; ants curved; dist 25
		path	35.1,58.1	27.9,73.9	25.8,88.9
		path	38.8,87.5	39.9,76.5	46.8,74.6
		path	53.5,84.0	62.9,77.8	73.9,83.8
		path	77.0,76.5	84.0,85.1	88.5,77.1
		path	85.9,61.0	74.5,53.9	70.6,61.7
		path	62.1,62.6	62.5,58.1	45.2,63.4
		path	44.7,55.5	40.9,53.7
		|goldcollect 200 Peacebloom##2447|n
		|goldcollect 240 Silverleaf##765 |n
		|goldcollect 140 Earthroot##2449 |n
		Mill the herbs you've gathered into Alabaster Pigment |cast Milling##51005
		|goldcollect 304 Alabaster Pigment##39151
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

--  Outland  --

--  Northrend  --

--  Cataclysm  --

--  Pandaria  --

--  Draenor  --


--------------------------------
-----    JEWELCRAFTING    ------
--------------------------------

--  Classic  --

--  Outland  --

--  Northrend  --

--  Cataclysm  --

--  Pandaria  --

--  Draenor  --


------------------------
-----    MINING    -----
------------------------

--  Classic  --

--  Outland  --

--  Northrend  --

--  Cataclysm  --

--  Pandaria  --

--  Draenor  --


--------------------------
-----    SKINNING    -----
--------------------------

--  Classic  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Light Leather/Medium Leather/Light Hide/Medium Hide",{
	meta={goldtype="route",skillreq={skinning=1},levelreq=10},
	items={{4304,8},{2319,420},{4232,44},{2318,384},{783,12},{2592,592},{2589,400},{4306,104}},
	maps={"Wetlands"},
	},[[
	step
		kill Ebon Slavehunter##42043+
		|goldcollect 8 Thick Leather##4304 |goto Wetlands 67.6,47.2
		|goldcollect 420 Medium Leather##2319 |goto 67.6,47.2
		|goldcollect 44 Medium Hide##4232 |goto 67.6,47.2
		|goldcollect 384 Light Leather##2318 |goto 67.6,47.2
		|goldcollect 12 Light Hide##783 |goto 67.6,47.2
		|goldcollect 592 Wool Cloth##2592 |goto 67.6,47.2
		|goldcollect 400 Linen Cloth##2589 |goto 67.6,47.2
		|goldcollect 104 Silk Cloth##4306 |goto 67.6,47.2
		--|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

--  Outland  --

--  Northrend  --

--  Cataclysm  --

--  Pandaria  --

--  Draenor  --
