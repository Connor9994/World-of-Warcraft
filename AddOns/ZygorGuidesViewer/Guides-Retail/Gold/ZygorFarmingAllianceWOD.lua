local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
ZygorGuidesViewer.Gold.guides_loaded=true

if UnitFactionGroup("player")~="Alliance" then return end

ZygorGuidesViewer.GuideMenuTier = "WOD"

--@@ONLYDEVSTART
ZGV.DevStart()
ZGV.DevEnd()
--@@ONLYDEVEND

--------------------------
-----    COOKING    ------
--------------------------

--  Classic  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Clam Meat, Small Lustrous Pearl",{
	meta={goldtype="route",levelreq={7},itemtype="misc"},
	items={{5503,196},{5498,4},{2592,216,'crap'},{2589,292,'crap'}},
	maps={"Redridge Mountains"},
	},[[
	step
		kill Murloc Nightcrawler##544+
		|tip When you kill all six, two more will spawn instantly.
		use the Small Barnacled Clam##5523+
		|goldcollect 196 Clam Meat##5503 |goto Redridge Mountains/0 71.8,56.1
		|goldcollect 4 Small Lustrous Pearl##5498
		|meta crap_items_follow=1
		|goldcollect 216 Wool Cloth##2592
		|goldcollect 292 Linen Cloth##2589
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

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Raw Elekk Meat",{
	meta={goldtype="route",levelreq=10,itemtype="food"},
	items={{109134,232},{111557,656,'crap'}},
	maps={"Shadowmoon Valley D"},
	},[[
	step
		map Shadowmoon Valley D/0
		path follow smart; loop on; ants curved
		path	42.0,26.2	43.0,31.6	47.8,30.6	55.6,37.6	58.6,40.6
		path	63.0,41.6	64.8,34.8	59.2,34.0	48.6,28.2	47.4,26.0
		path	44.2,28.4
		Kill enemies around this area
		|goldcollect 232 Raw Elekk Meat##109134
		|meta crap_items_follow=1
		|goldcollect 656 Sumptuous Fur##111557
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

-----------------------
-----    CLOTH    -----
-----------------------

--  Classic  --

--  Outland  --

--  Northrend  --

--  Cataclysm  --

--  Pandaria  --

--  Draenor  --


-------------------------------------
-----    ELEMENTAL REAGENTS    ------
-------------------------------------

--  Classic  --

--  Outland  --

--  Northrend  --

--  Cataclysm  --

--  Pandaria  --

--  Draenor  --
