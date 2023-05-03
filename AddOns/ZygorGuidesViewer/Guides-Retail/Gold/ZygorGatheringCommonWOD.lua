local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
ZygorGuidesViewer.Gold.guides_loaded=true

ZygorGuidesViewer.GuideMenuTier = "WOD"

--@@ONLYDEVSTART
ZGV.DevStart()
ZGV.DevEnd()
--@@ONLYDEVEND

-----------------------------
-----    ENCHANTING    ------
-----------------------------

--  Classic  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Strange Dust",{
	meta={goldtype="route",levelreq={5},skillreq={enchanting=1}},
	items={{10940,92},{10938,18,'crap'},{10939,2,'crap'},{10998,1,'crap'},{11082,1,'crap'},{2589,108,'crap'},{2592,60,'crap'}},
	maps={"Northern Barrens"},
	},[[
	step
		Enter the Wailing Caverns |goto Northern Barrens/20 55.0,66.0
		|goldcollect 92 Strange Dust##10940
		|tip Strange Dust can be Disenchanted from Uncommon items with an item level of 1 to 25.
		|tip The Wailing Caverns dungeon offers the best yield of Strange Dust.
		|meta crap_items_follow=1
		|goldcollect 18 Lesser Magic Essence##10938
		|goldcollect 2 Greater Magic Essence##10939
		|goldcollect 1 Lesser Astral Essence##10998
		|goldcollect 1 Greater Astral Essence##11082
		|goldcollect 108 Linen Cloth##2589
		|goldcollect 60 Wool Cloth##2592
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Illusion Dust",{
	meta={goldtype="route",levelreq={15},skillreq={enchanting=1}},
	items={{16204,33},{16202,15,'crap'},{16203,10,'crap'},{14047,630,'crap'}},
	maps={"Burning Steppes"},
	},[[
	step
		Enter Lower Blackrock Spire |goto Burning Steppes/14 80.3,40.7
		|goldcollect 33 Illusion Dust##16204
		|tip Illusion Dust can be Disenchanted from Uncommon items with an item level of 27 to 58.
		|tip The Lower Blackrock Spire dungeon offers the best yield of Illusion Dust.
		|meta crap_items_follow=1
		|goldcollect 15 Lesser Eternal Essence##16202
		|goldcollect 10 Greater Eternal Essence##16203
		|goldcollect 630 Runecloth##14047
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

--  Outland  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Arcane Dust",{
	meta={goldtype="route",levelreq={25},skillreq={outland_enchanting=1}},
	items={{22445,68},{22447,12,'crap'},{22446,4,'crap'},{21877,1424,'crap'}},
	maps={"Shadowmoon Valley"},
	},[[
	step
		map Shadowmoon Valley/0
		path follow loose; loop on; ants curved
		path	51.1,58.8	53.0,59.3	53.2,60.5	52.8,63.2	52.8,65.4
		path	52.9,69.0	52.5,71.8	47.3,71.1	45.8,71.3	45.2,69.2
		path	45.6,66.1	48.0,67.2
		Kill enemies around this area
		|tip Arcane Dust can be Disenchanted from Uncommon items with an item level of 69 to 80.
		|goldcollect 68 Arcane Dust##22445
		|meta crap_items_follow=1
		|goldcollect 12 Lesser Planar Essence##22447
		|goldcollect 4 Greater Planar Essence##22446
		|goldcollect 1424 Netherweave Cloth##21877
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

--  Northrend  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Infinite Dust",{
	meta={goldtype="route",levelreq={25},skillreq={northrend_enchanting=1}},
	items={{34054,92},{33470,180,'crap'},{34056,6,'crap'},{34055,2,'crap'}},
	maps={"Icecrown"},
	},[[
	step
		kill Mjordin Combatant##30037+
		|tip Infinite Dust can be Disenchanted from Uncommon items with an item level of 80 to 100.
		|goldcollect 92 Infinite Dust##34054 |goto Icecrown/0 37.6,22.8
		|meta crap_items_follow=1
		|goldcollect 180 Frostweave Cloth##33470
		|goldcollect 6 Lesser Cosmic Essence##34056
		|goldcollect 2 Greater Cosmic Essence##34055
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

--  Cataclysm  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Hypnotic Dust",{
	meta={goldtype="route",levelreq={30},skillreq={cataclysm_enchanting=1}},
	items={{52555,27},{52718,6,'crap'},{52719,5,'crap'},{53010,232,'crap'}},
	maps={"Deepholm"},
	},[[
	step
		map Deepholm/0
		path follow loose; loop on; ants curved; dist 20
		path	68.2,25.6	67.2,32.0	68.6,35.8	69.0,42.6	73.0,45.0
		path	77.2,42.8	76.8,35.6	74.6,32.8	74.8,28.4	72.2,26.6
		Kill Verlok enemies around this area
		|tip Hypnotic Dust can be Disenchanted from Uncommon items with an item level of 102 to 108.
		|tip Up on the platforms.
		|goldcollect 27 Hypnotic Dust##52555
		|meta crap_items_follow=1
		|goldcollect 6 Lesser Celestial Essence##52718
		|goldcollect 5 Greater Celestial Essence##52719
		|goldcollect 232 Embersilk Cloth##53010
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

--  Pandaria  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Spirit Dust",{
	meta={goldtype="route",levelreq={25},skillreq={pandaria_enchanting=1}},
	items={{74249,126},{72988,308,'crap'},{89112,64,'crap'}},
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
		|tip Spirit Dust can be Disenchanted from Uncommon items with an item level of 108 to 115.
		|goldcollect 126 Spirit Dust##74249
		|meta crap_items_follow=1
		|goldcollect 308 Windwool Cloth##72988
		|goldcollect 64 Mote of Harmony##89112 |n
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

--  Draenor  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Draenic Dust",{
	meta={goldtype="route",levelreq={15},skillreq={draenor_enchanting=1}},
	items={{109693,105},{111557,364}},
	maps={"Gorgrond"},
	},[[
	step
		map Gorgrond/0
		path follow loose; loop on; ants curved; dist 20
		path	46.8,89.8	46.4,91.4	45.3,93.0	43.2,91.8	42.8,89.4
		path	44.5,90.7	44.6,89.2
		Kill Tailthrasher enemies around this area
		|tip Draenic Dust can be Disenchanted from Uncommon items with an item level of 116 to 136.
		|goldcollect 105 Draenic Dust##109693
		|goldcollect 364 Sumptuous Fur##111557 |n
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])


-------------------------
-----    FISHING    -----
-------------------------

--  Classic  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Deviate Fish",{
	meta={goldtype="route",skillreq={fishing=1},levelreq=5},
	items={{6522,184}},
	maps={"Northern Barrens"},
	},[[
	step
		Use your Fishing skill to fish from the School of Deviate Fish |cast Fishing##131474
		|goldcollect 184 Deviate Fish##6522 |goto Northern Barrens/0 39.6,76.1
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Oily Blackmouth/Firefin Snapper/Stonescale Eel",{
	meta={goldtype="route",skillreq={fishing=1},levelreq=15},
	items={{6358,52},{6359,44},{13422,64}},
	maps={"Swamp of Sorrows"},
	},[[
	step
	label "route_1"
		Follow the path, fishing at any pools |goto Swamp of Sorrows/0 77.5,10.0 < 20 |noway |c |or |next "route_2"
		Use your Fishing skill to fish in the water |cast Fishing##131474
		map Swamp of Sorrows
		path follow smart; loop off; ants curved; dist 20
		path	80.1,91.0	83.5,88.1	84.8,82.9
		path	86.2,77.6	88.8,71.2	90.8,65.2
		path	89.5,58.4	79.5,56.6	74.0,61.9
		path	68.2,62.9	63.6,58.8	63.6,47.7
		path	72.7,42.3	77.9,44.2	85.6,46.0
		path	90.0,43.4	90.4,37.2	89.3,31.8
		path	87.3,26.0	85.8,21.9	84.0,18.8
		path	81.8,16.1	77.5,10.0
		|goldcollect 52 Oily Blackmouth##6358 |or
		|goldcollect 44 Firefin Snapper##6359 |n
		|goldcollect 64 Stonescale Eel##13422 |n
		|goldtracker
		Click here to sell items |confirm |next "Sell"
	step
	label "route_2"
		Follow the path, fishing at any pools |goto Swamp of Sorrows/0 80.1,91.0 < 20 |noway |c |or |next "route_1"
		Use your Fishing skill to fish in the water |cast Fishing##131474
		map Swamp of Sorrows
		path follow smart; loop off; ants curved; dist 20
		path	77.5,10.0	81.8,16.1	84.0,18.8
		path	85.8,21.9	87.3,26.0	89.3,31.8
		path	90.4,37.2	90.0,43.4	85.6,46.0
		path	77.9,44.2	72.7,42.3	63.6,47.7
		path	63.6,58.8	68.2,62.9	74.0,61.9
		path	79.5,56.6	89.5,58.4	90.8,65.2
		path	88.8,71.2	86.2,77.6	84.8,82.9
		path	83.5,88.1	80.1,91.0
		|goldcollect 52 Oily Blackmouth##6358 |or
		|goldcollect 44 Firefin Snapper##6359 |n
		|goldcollect 64 Stonescale Eel##13422 |n
		|goldtracker
		Click here to sell items |confirm |next "Sell"
	step
	label "Sell"
		#include "auctioneer"
]])

--  Outland  --

--  Northrend  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Glassfin Minnow/Pygmy Suckerfish",{
	meta={goldtype="route",skillreq={northrend_fishing=1},levelreq=25},
	items={{41814,156},{40199,48}},
	maps={"Crystalsong Forest"},
	},[[
	step
	label "route_1"
		Fish in any Glassfin Minnow Schools you find |cast Fishing##131474
		Follow the path, fishing at each pool |goto Crystalsong Forest 49.4,56.6 < 20 |noway |c |or |next "route_2"
		map Crystalsong Forest
		path follow smart; loop off; ants curved; dist 20
		path	17.7,21.3	21.4,30.5	24.6,42.1
		path	33.0,45.5	35.6,49.4	40.2,54.9
		path	49.4,56.6
		|goldcollect 156 Glassfin Minnow##41814 |or
		|goldcollect 48 Pygmy Suckerfish##40199 |n
		|goldtracker
		Click here to sell items |confirm |next "Sell"
	step
	label "route_2"
		Fish in any Glassfin Minnow Schools you find |cast Fishing##131474
		Follow the path, fishing at each pool |goto Crystalsong Forest 17.7,21.3 < 20 |noway |c |or |next "route_1"
		map Crystalsong Forest
		path follow smart; loop off; ants curved; dist 20
		path	49.4,56.6	40.2,54.9	35.6,49.4
		path	33.0,45.5	24.6,42.1	21.4,30.5
		path	17.7,21.3
		|goldcollect 156 Glassfin Minnow##41814 |or
		|goldcollect 48 Pygmy Suckerfish##40199 |n
		|goldtracker
		Click here to sell items |confirm |next "Sell"
	step
	label "Sell"
		#include "auctioneer"
]])

--  Cataclysm  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Albino Cavefish",{
	meta={goldtype="route",skillreq={cataclysm_fishing=1},levelreq=30},
	items={{53065,148},{52326,24}},
	maps={"Deepholm"},
	},[[
	step
	label "route_1"
		Fish in any Albino Cavefish Schools you find |cast Fishing##131474
		Follow the path, fishing at each pool |goto Deepholm 73.8,32.1 < 20 |noway |c |or |next "route_2"
		map Deepholm
		path follow smart; loop off; ants curved; dist 20
		path	69.9,41.9	70.5,45.6	71.1,48.8
		path	73.9,50.9	76.5,52.7	77.5,49.1
		path	77.4,44.0	74.2,42.5	76.0,39.7
		path	75.7,35.8	73.8,32.1
		|goldcollect 148 Albino Cavefish##53065 |or
		|goldcollect 24 Volatile Water##52326 |n
		|goldtracker
		Click here to sell items |confirm |next "Sell"
	step
	label "route_2"
		Fish in any Albino Cavefish Schools you find |cast Fishing##131474
		Follow the path, fishing at each pool |goto Deepholm 69.9,41.9 < 20 |noway |c |or |next "route_1"
		map Deepholm
		path follow smart; loop off; ants curved; dist 20
		path	73.8,32.1	75.7,35.8	76.0,39.7
		path	74.2,42.5	77.4,44.0	77.5,49.1
		path	76.5,52.7	73.9,50.9	71.1,48.8
		path	70.5,45.6	69.9,41.9
		|goldcollect 148 Albino Cavefish##53065 |or
		|goldcollect 24 Volatile Water##52326 |n
		|goldtracker
		Click here to sell items |confirm |next "Sell"
	step
	label "Sell"
		#include "auctioneer"
]])

--  Pandaria  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Emperor Salmon/Krasarang Paddlefish",{
	meta={goldtype="route",skillreq={pandaria_fishing=1},levelreq=15},
	items={{74859,96},{74865,96}},
	maps={"Valley of the Four Winds"},
	},[[
	step
	label "route_1"
		Use your fishing ability to fish from Emperor Salmon and Krasarang Paddlefish pools |cast Fishing##131474
		Follow the path, fishing at each pool |goto Valley of the Four Winds 42.5,30.0 < 20 |noway |c |or |next "route_2"
		map Valley of the Four Winds
		path follow smart; loop off; ants curved; dist 25
		path	87.6,22.1	86.9,32.2	83.7,35.3
		path	76.8,40.9	74.1,46.7	72.6,52.7
		path	69.1,59.3	65.8,64.8	63.9,67.0
		path	61.5,69.9	59.2,64.8	59.2,59.7
		path	57.3,55.2	59.4,49.8	59.1,43.1
		path	56.8,41.1	56.7,29.1	55.9,25.0
		path	51.8,26.4	49.1,25.2	45.6,27.4
		path	42.5,30.0
		|goldcollect 96 Emperor Salmon##74859 |or
		|goldcollect 96 Krasarang Paddlefish##74865 |n
		|goldtracker
		Click here to sell items |confirm |next "Sell"
	step
	label "route_2"
		Use your fishing ability to fish from Emperor Salmon and Krasarang Paddlefish pools |cast Fishing##131474
		Follow the path, fishing at each pool |goto Valley of the Four Winds 87.6,22.1 < 20 |noway |c |or |next "route_1"
		map Valley of the Four Winds
		path follow smart; loop off; ants curved; dist 25
		path	42.5,30.0	45.6,27.4	49.1,25.2
		path	51.8,26.4	55.9,25.0	56.7,29.1
		path	56.8,41.1	59.1,43.1	59.4,49.8
		path	57.3,55.2	59.2,59.7	59.2,64.8
		path	61.5,69.9	63.9,67.0	65.8,64.8
		path	69.1,59.3	72.6,52.7	74.1,46.7
		path	76.8,40.9	83.7,35.3	86.9,32.2
		path	87.6,22.1
		|goldcollect 96 Emperor Salmon##74859 |or
		|goldcollect 96 Krasarang Paddlefish##74865 |n
		|goldtracker
		Click here to sell items |confirm |next "Sell"
	step
	label "Sell"
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Giant Mantis Shrimp/Reef Octopus",{
	meta={goldtype="route",skillreq={pandaria_fishing=1},levelreq=15},
	items={{74857,90},{74864,90}},
	maps={"Krasarang Wilds"},
	},[[
	step
	label "route_1"
		Use your Fishing skill to fish in any pools you find |cast Fishing##131474
		Follow the path, fishing at each pool |goto Krasarang Wilds 19.8,72.3 < 20 |noway |c |or |next "route_2"
		map Krasarang Wilds
		path follow smart; loop off; ants curved; dist 25
		path	87.1,11.8	86.1,17.7	88.3,28.7
		path	83.1,28.8	80.5,28.1	77.9,36.8
		path	74.5,34.9	69.2,36.3	70.2,42.4
		path	65.2,44.8	60.5,42.1	57.8,46.0
		path	57.6,51.3	52.5,48.1	50.5,50.3
		path	44.3,62.6	51.3,69.4	48.8,73.0
		path	44.9,73.5	42.0,75.0	40.6,71.3
		path	37.8,73.5	37.8,78.1	37.3,83.4
		path	34.0,84.4	29.9,80.0	28.0,72.5
		path	27.0,67.0	24.3,63.1	22.2,66.3
		path	19.8,72.3
		|goldcollect 90 Giant Mantis Shrimp##74857 |or
		|goldcollect 90 Reef Octopus##74864 |n
		|goldtracker
		Click here to sell items |confirm |next "Sell"
	step
	label "route_2"
		Use your Fishing skill to fish in any pools you find |cast Fishing##131474
		Follow the path, fishing at each pool |goto Krasarang Wilds 87.1,11.8 |noway |c |or |next "route_1"
		map Krasarang Wilds
		path follow smart; loop off; ants curved; dist 25
		path	19.8,72.3	22.2,66.3	24.3,63.1
		path	27.0,67.0	28.0,72.5	29.9,80.0
		path	34.0,84.4	37.3,83.4	37.8,78.1
		path	37.8,73.5	40.6,71.3	42.0,75.0
		path	44.9,73.5	48.8,73.0	51.3,69.4
		path	44.3,62.6	50.5,50.3	52.5,48.1
		path	57.6,51.3	57.8,46.0	60.5,42.1
		path	65.2,44.8	70.2,42.4	69.2,36.3
		path	74.5,34.9	77.9,36.8	80.5,28.1
		path	83.1,28.8	88.3,28.7	86.1,17.7
		path	87.1,11.8
		|goldcollect 90 Giant Mantis Shrimp##74857 |or
		|goldcollect 90 Reef Octopus##74864 |n
		|goldtracker
		Click here to sell items |confirm |next "Sell"
	step
	label "Sell"
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Golden Carp",{
	meta={goldtype="route",skillreq={pandaria_fishing=1},levelreq=10},
	items={{74866,160},{74856,56},{74860,48},{88496,8}},
	maps={"The Jade Forest"},
	},[[
	step
		Use your Fishing skill to fish in the water |cast Fishing##131474 |goto The Jade Forest/0 56.8,43.5
		|goldcollect 160 Golden Carp##74866
		|goldcollect 56 Jade Lungfish##74856
		|goldcollect 48 Redbelly Mandarin##74860
		|goldcollect 8 Sealed Crate##88496
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Jade Lungfish",{
	meta={goldtype="route",skillreq={pandaria_fishing=1},levelreq=10},
	items={{74856,208},{88496,8}},
	maps={"The Jade Forest"},
	},[[
	step
	label "route_1"
		Use your Fishing skill to fish in any pools you find |cast Fishing##131474
		Follow the path, fishing at each pool |goto The Jade Forest 25.3,43.1 < 20 |noway |c |or |next "route_2"
		map The Jade Forest
		path follow smart; loop off; ants curved; dist 20
		path	57.6,84.8	59.5,80.0	55.9,77.8
		path	52.3,77.8	47.7,76.1	46.2,72.8
		path	46.7,64.4	49.0,61.7	47.8,56.6
		path	42.8,61.9	42.0,57.2	39.5,53.0
		path	36.0,48.3	32.1,45.6	28.4,45.2
		path	25.3,43.1
		|goldcollect 208 Jade Lungfish##74856 |or
		|goldcollect 8 Sealed Crate##88496 |n
		|goldtracker
		Click here to sell items |confirm |next "Sell"
	step
	label "route_2"
		Use your Fishing skill to fish in any pools you find |cast Fishing##131474
		Follow the path, fishing at each pool |goto The Jade Forest 57.6,84.8 < 20 |noway |c |or |next "route_1"
		map The Jade Forest
		path follow smart; loop off; ants curved; dist 20
		path	25.3,43.1	28.4,45.2	32.1,45.6
		path	36.0,48.3	39.5,53.0	42.0,57.2
		path	42.8,61.9	47.8,56.6	49.0,61.7
		path	46.7,64.4	46.2,72.8	47.7,76.1
		path	52.3,77.8	55.9,77.8	59.5,80.0
		path	57.6,84.8
		|goldcollect 208 Jade Lungfish##74856 |or
		|goldcollect 8 Sealed Crate##88496 |n
		|goldtracker
		Click here to sell items |confirm |next "Sell"
	step
	label "Sell"
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Jewel Danio",{
	meta={goldtype="route",skillreq={pandaria_fishing=1},levelreq=30},
	items={{74863,212},{88496,4}},
	maps={"Timeless Isle"},
	},[[
	step
		Use your Fishing skill to fish in any pools you find |cast Fishing##131474
		Fish from the various Jewel Danio Schools around this pond |goto Timeless Isle/0 47.4,55.0
		|goldcollect 212 Jewel Danio##74863
		|goldcollect 4 Sealed Crate##88496
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Redbelly Mandarin/Emperor Salmon",{
	meta={goldtype="route",skillreq={pandaria_fishing=1},levelreq=25},
	items={{74860,74},{74859,74}},
	maps={"Townlong Steppes"},
	},[[
	step
	label "route_1"
		Use your Fishing skill to fish in any pools you find |cast Fishing##131474
		Follow the path, fishing at each pool |goto Townlong Steppes 50.7,93.3 < 25 |noway |c |or |next "route_2"
		map Townlong Steppes
		path follow smart; loop off; ants curved; dist 25
		path	59.2,87.0	56.8,85.7	55.2,86.4
		path	54.4,88.7	52.3,89.2	50.7,93.3
		|goldcollect 74 Redbelly Mandarin##74860 |or
		|goldcollect 74 Emperor Salmon##74859 |n
		|goldtracker
		Click here to sell items |confirm |next "Sell"
	step
	label "route_2"
		Use your Fishing skill to fish in any pools you find |cast Fishing##131474
		Follow the path, fishing at each pool |goto Townlong Steppes 59.2,87.0 < 25 |noway |c |or |next "route_1"
		map Townlong Steppes
		path follow smart; loop off; ants curved; dist 25
		path	50.7,93.3	52.3,89.2	54.4,88.7
		path	55.2,86.4	56.8,85.7	59.2,87.0
		|goldcollect 74 Redbelly Mandarin##74860 |or
		|goldcollect 74 Emperor Salmon##74859 |n
		|goldtracker
		Click here to sell items |confirm |next "Sell"
	step
	label "Sell"
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Spinefish",{
	meta={goldtype="route",skillreq={pandaria_fishing=1},levelreq=20},
	items={{83064,172}},
	maps={"Kun-Lai Summit"},
	},[[
	step
		Follow the path, fishing at any pools
		Use your Fishing skill to fish in the water |cast Fishing##131474
		map Kun-Lai Summit
		path	follow smart; loop on; ants curved; dist 20
		path	76.5,86.0	75.0,80.7	71.1,80.1
		path	69.9,82.7	76.5,86.0
		|goldcollect 172 Spinefish##83064
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Tiger Gourami/Golden Carp",{
	meta={goldtype="route",skillreq={pandaria_fishing=1},levelreq=20},
	items={{74861,184},{88496,16}},
	maps={"Kun-Lai Summit"},
	},[[
	step
	label "route_1"
		Follow the path, fishing at any pools |goto Kun-Lai Summit 72.2,33.5 < 20 |noway |c |or |next "route_2"
		Use your Fishing skill to fish in the water |cast Fishing##131474
		map Kun-Lai Summit
		path	follow smart; loop off; ants curved; dist 20
		path	67.4,53.3	64.4,48.1	65.6,45.0
		path	67.2,48.7	69.9,48.7	72.7,48.7
		path	72.6,41.7	72.2,33.5
		|goldcollect 184 Tiger Gourami##74861 |or
		|goldcollect 16 Sealed Crate##88496 |n
		|goldtracker
		Click here to sell items |confirm |next "Sell"
	step
	label "route_2"
		Follow the path, fishing at any pools |goto Kun-Lai Summit 67.4,53.3 < 20 |noway |c |or |next "route_1"
		Use your Fishing skill to fish in the water |cast Fishing##131474
		map Kun-Lai Summit
		path	follow smart; loop off; ants curved; dist 20
		path	72.2,33.5	72.6,41.7	72.7,48.7
		path	69.9,48.7	67.2,48.7	65.6,45.0
		path	64.4,48.1	67.4,53.3
		|goldcollect 184 Tiger Gourami##74861 |or
		|goldcollect 16 Sealed Crate##88496 |n
		|goldtracker
		Click here to sell items |confirm |next "Sell"
	step
	label "Sell"
		#include "auctioneer"
]])

--  Draenor  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Abyssal Gulper Eel Flesh/Crescent Saberfish Flesh",{
	meta={goldtype="route",skillreq={draenor_fishing=1},levelreq=30},
	description="\nThis guide will walk you through fishing Abyssal Gulper Eel Flesh and Crescent Saberfish Flesh from open water.",
	items={{109143,824},{109137,216}},
	maps={"Spires of Arak"},
	},[[
	step
		Use your Worm Supreme lure |use Worm Supreme##118391
		|tip You can buy this cheap from the auction house or get it randomly fishing in Draenor.
		Fish from the shore here |goto Spires of Arak/0 60.9,17.8
		Use your Fishing skill to fish in the water |cast Fishing##131474
		Fillet your fish by right-clicking the fish in your inventory
		|goldcollect 824 Abyssal Gulper Eel Flesh##109143
		|goldcollect 216 Crescent Saberfish Flesh##109137
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Abyssal Gulper Eel Flesh",{
	meta={goldtype="route",skillreq={draenor_fishing=1},levelreq=30},
	description="\nThis guide will walk you through fishing Abyssal Gulper Eel Flesh from Abyssal Gulper Schools.",
	items={{109143,396}},
	maps={"Spires of Arak"},
	},[[
	step
	label "route_1"
		Use your Worm Supreme lure |use Worm Supreme##118391
		|tip You can buy this cheap from the auction house or get it randomly fishing in Draenor.
		Follow the path, fishing at any pools |goto Spires of Arak/0 47.1,34.1 < 20 |noway |c |or |next "route_2"
		Use your Fishing skill to fish in the water |cast Fishing##131474
		map Spires of Arak/0
		path follow smart; loop off; ants curved; dist 20
		path	56.8,47.9	55.1,41.7	55.5,38.4
		path	54.5,36.1	53.5,33.9	52.6,33.2
		path	51.6,34.1	50.2,33.1	49.0,32.2
		path	47.1,34.1
		|goldcollect 396 Abyssal Gulper Eel Flesh##109143 |or
		|goldtracker
		Click here to sell items |confirm |next "Sell"
	step
	label "route_2"
		Use your Worm Supreme lure |use Worm Supreme##118391
		|tip You can buy this cheap from the auction house or get it randomly fishing in Draenor.
		Follow the path, fishing at any pools |goto Spires of Arak/0 56.8,47.9 < 20 |noway |or |next "route_1"
		Use your Fishing skill to fish in the water |cast Fishing##131474
		map Spires of Arak/0
		path follow smart; loop off; ants curved; dist 20
		path	47.1,34.1	49.0,32.2	50.2,33.1
		path	51.6,34.1	52.6,33.2	53.5,33.9
		path	54.5,36.1	55.5,38.4	55.1,41.7
		path	56.8,47.9
		|goldcollect 396 Abyssal Gulper Eel Flesh##109143 |or
		|goldtracker
		Click here to sell items |confirm |next "Sell"
	step
	label "Sell"
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Blackwater Whiptail Flesh/Crescent Saberfish Flesh",{
	meta={goldtype="route",skillreq={draenor_fishing=1},levelreq=20},
	description="\nThis guide will walk you through fishing Blackwater Whiptail Flesh and Crescent Saberfish Flesh from open water.",
	items={{109144,568},{109137,120}},
	maps={"Talador"},
	},[[
	step
		Use your Worm Supreme lure |use Worm Supreme##118391
		|tip You can buy this cheap from the auction house or get it randomly fishing in Draenor.
		Fish from the shore here |goto Talador/0 72.1,54.7
		Use your Fishing skill to fish in the water |cast Fishing##131474
		Fillet your fish by right-clicking the fish in your inventory
		|goldcollect 568 Blackwater Whiptail Flesh##109144
		|goldcollect 120 Crescent Saberfish Flesh##109137
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Blackwater Whiptail Flesh",{
	meta={goldtype="route",skillreq={draenor_fishing=1},levelreq=20},
	description="\nThis guide will walk you through fishing Blackwater Whiptail Flesh from Blackwater Whiptail Schools.",
	items={{109144,704}},
	maps={"Talador"},
	},[[
	step
		Use your Worm Supreme lure |use Worm Supreme##118391
		|tip You can buy this cheap from the auction house or get it randomly fishing in Draenor.
		Follow the path, fishing at any pools
		Use your Fishing skill to fish in the water |cast Fishing##131474
		map Talador/0
		path follow smart; loop on; ants curved; dist 20
		path	73.6,59.3	76.1,58.9	77.8,59.2
		path	79.5,58.4	79.5,56.1	79.8,54.2
		path	77.6,54.5	76.6,56.3	75.3,57.0
		path	73.8,56.4	72.5,53.4	71.3,52.0
		path	70.3,50.2	68.1,48.7	66.2,46.9
		path	65.3,43.5	65.8,40.6	63.9,36.3
		path	62.3,32.5	60.7,31.2	59.3,32.0
		path	58.4,34.7	57.8,38.2	58.1,41.9
		path	59.7,42.3	62.6,45.0	61.8,46.7
		path	60.6,49.0	61.9,52.1	63.6,56.0
		path	65.8,62.5	67.4,58.3	70.5,60.5
		|goldcollect 704 Blackwater Whiptail Flesh##109144
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Blind Lake Sturgeon Flesh/Crescent Saberfish Flesh",{
	meta={goldtype="route",skillreq={draenor_fishing=1},levelreq=10},
	description="\nThis guide will walk you through fishing Blind Lake Sturgeon Flesh and Crescent Saberfish Flesh from open water.",
	items={{109140,828},{109137,248}},
	maps={"Shadowmoon Valley D"},
	},[[
	step
		Use your Worm Supreme lure |use Worm Supreme##118391
		|tip You can buy this cheap from the auction house or get it randomly fishing in Draenor.
		Fish from the shore here |goto Shadowmoon Valley D/0 40.6,49.8
		Use your Fishing skill to fish in the water |cast Fishing##131474
		Fillet your fish by right-clicking the fish in your inventory
		|goldcollect 828 Blind Lake Sturgeon Flesh##109140
		|goldcollect 248 Crescent Saberfish Flesh##109137
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Blind Lake Sturgeon Flesh",{
	meta={goldtype="route",skillreq={draenor_fishing=1},levelreq=10},
	description="\nThis guide will walk you through fishing Blind Lake Sturgeon Flesh from Blind Lake Sturgeon Schools.",
	items={{109140,464}},
	maps={"Shadowmoon Valley D"},
	},[[
	step
	label "route_1"
		Use your Worm Supreme lure |use Worm Supreme##118391
		|tip You can buy this cheap from the auction house or get it randomly fishing in Draenor.
		Follow the path, fishing at any pools |goto Shadowmoon Valley D/0 53.1,41.3 < 20 |noway |c |next "route_2"
		Use your Fishing skill to fish in the water |cast Fishing##131474
		map Shadowmoon Valley D/0
		path follow smart; loop off; ants curved; dist 20
		path	39.2,49.1	41.6,47.9	43.1,49.6
		path	45.2,49.4	46.9,49.5	49.8,52.6
		path	51.0,52.3	52.2,51.3	53.0,51.0
		path	53.9,48.8	54.4,45.3	53.1,41.3
		|goldcollect 464 Blind Lake Sturgeon Flesh##109140 |or
		|goldtracker
		Click here to sell items |confirm |next "Sell"
	step
	label "route_2"
		Use your Worm Supreme lure |use Worm Supreme##118391
		|tip You can buy this cheap from the auction house or get it randomly fishing in Draenor.
		Follow the path, fishing at any pools |goto Shadowmoon Valley D/0 52.8,70.7 < 20 |noway |c |or |next "route_3"
		Use your Fishing skill to fish in the water |cast Fishing##131474
		map Shadowmoon Valley D/0
		path follow smart; loop off; ants curved; dist 20
		path	53.1,41.3	54.4,45.3	53.9,48.8
		path	53.0,51.0	52.2,51.3	51.0,52.3
		path	49.8,52.6	49.0,53.7	48.8,56.6
		path	50.0,60.0	51.7,61.6	52.5,63.7
		path	52.3,68.3	52.8,70.7
		|goldcollect 464 Blind Lake Sturgeon Flesh##109140 |or
		|goldtracker
		Click here to sell items |confirm |next "Sell"
	step
	label "route_3"
		Use your Worm Supreme lure |use Worm Supreme##118391
		|tip You can buy this cheap from the auction house or get it randomly fishing in Draenor.
		Follow the path, fishing at any pools |goto Shadowmoon Valley D/0 39.2,49.1 < 20 |noway |c |or |next "route_1"
		Use your Fishing skill to fish in the water |cast Fishing##131474
		map Shadowmoon Valley D/0
		path follow smart; loop off; ants curved; dist 20
		path	52.8,70.7	52.3,68.3	52.5,63.7
		path	51.7,61.6	50.0,60.0	48.8,56.6
		path	49.0,53.7	46.9,49.5	45.2,49.4
		path	43.1,49.6	41.6,47.9	39.2,49.1
		|goldcollect 464 Blind Lake Sturgeon Flesh##109140 |or
		|goldtracker
		Click here to sell items |confirm |next "Sell"
	step
	label "Sell"
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Fat Sleeper Flesh/Crescent Saberfish Flesh",{
	meta={goldtype="route",skillreq={draenor_fishing=1},levelreq=35},
	description="\nThis guide will walk you through fishing Fat Sleeper Flesh and Crescent Saberfish Flesh from open water.",
	items={{109139,624},{109137,172}},
	maps={"Nagrand D"},
	},[[
	step
		Use your Worm Supreme lure |use Worm Supreme##118391
		|tip You can buy this cheap from the auction house or get it randomly fishing in Draenor.
		Fish from the shore here |goto Nagrand D/0 72.8,27.2
		Use your Fishing skill to fish in the water |cast Fishing##131474
		Fillet your fish by right-clicking the fish in your inventory
		|goldcollect 624 Fat Sleeper Flesh##109139
		|goldcollect 172 Crescent Saberfish Flesh##109137
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Fat Sleeper Flesh",{
	meta={goldtype="route",skillreq={draenor_fishing=1},levelreq=35},
	description="\nThis guide will walk you through fishing Fat Sleeper Flesh fromFat Sleeper Schools.",
	items={{109139,776}},
	maps={"Nagrand D"},
	},[[
	step
		Use your Worm Supreme lure |use Worm Supreme##118391
		|tip You can buy this cheap from the auction house or get it randomly fishing in Draenor.
		Follow the path, fishing at any pools
		Use your Fishing skill to fish in the water |cast Fishing##131474
		map Nagrand D/0
		path follow smart; loop on; ants curved; dist 20
		path	73.6,25.0	73.5,21.4	74.2,19.3
		path	73.0,14.9	71.7,15.0	70.0,16.7
		path	68.3,15.4	67.5,16.8	67.8,19.3
		path	66.3,20.2	67.0,24.9	68.7,24.0
		path	70.2,26.2	71.3,27.7	73.4,27.6
		|goldcollect 776 Fat Sleeper Flesh##109139
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Fire Ammonite Tentacle/Crescent Saberfish Flesh",{
	meta={goldtype="route",skillreq={draenor_fishing=1},levelreq=10},
	description="\nThis guide will walk you through fishing Fire Ammonite Tentacle and Crescent Saberfish Flesh from open water.",
	items={{109141,784},{109137,192}},
	maps={"Frostfire Ridge"},
	},[[
	step
		Use your Worm Supreme lure |use Worm Supreme##118391
		|tip You can buy this cheap from the auction house or get it randomly fishing in Draenor.
		Fish from the shore here |goto Frostfire Ridge/0 50.0,59.2
		Use your Fishing skill to fish in the water |cast Fishing##131474
		Fillet your fish by right-clicking the fish in your inventory
		|goldcollect 784 Fire Ammonite Tentacle##109141
		|goldcollect 192 Crescent Saberfish Flesh##109137
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Jawless Skulker Flesh/Crescent Saberfish Flesh",{
	meta={goldtype="route",skillreq={draenor_fishing=1},levelreq=15},
	description="\nThis guide will walk you through fishing Jawless Skulker Flesh and Crescent Saberfish Flesh from open water.",
	items={{109138,844},{109137,192}},
	maps={"Gorgrond"},
	},[[
	step
		Use your Worm Supreme lure |use Worm Supreme##118391
		|tip You can buy this cheap from the auction house or get it randomly fishing in Draenor.
		Fish from the shore here |goto Gorgrond/0 64.1,53.6
		Use your Fishing skill to fish in the water |cast Fishing##131474
		Fillet your fish by right-clicking the fish in your inventory
		|goldcollect 844 Jawless Skulker Flesh##109138
		|goldcollect 192 Crescent Saberfish Flesh##109137
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Sea Scorpion Segment/Crescent Saberfish Flesh",{
	meta={goldtype="route",skillreq={draenor_fishing=1},levelreq=10},
	description="\nThis guide will walk you through fishing Sea Scorpion Segment and Crescent Saberfish Flesh from open water.",
	items={{109142,856},{109137,96}},
	maps={"Shadowmoon Valley D"},
	},[[
	step
		Use your Worm Supreme lure |use Worm Supreme##118391
		|tip You can buy this cheap from the auction house or get it randomly fishing in Draenor.
		Fish from atop this mushroom |goto Shadowmoon Valley D/0 34.1,75.6
		Use your Fishing skill to fish in the water |cast Fishing##131474
		Fillet your fish by right-clicking the fish in your inventory
		|goldcollect 856 Sea Scorpion Segment##109142
		|goldcollect 96 Crescent Saberfish Flesh##109137
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Sea Scorpion Segment",{
	meta={goldtype="route",skillreq={draenor_fishing=1},levelreq=30},
	description="\nThis guide will walk you through fishing Sea Scorpion Segment from Sea Scorpion Schools.",
	items={{109142,932}},
	maps={"Spires of Arak"},
	},[[
	step
	label "route_1"
		Use your Worm Supreme lure |use Worm Supreme##118391
		|tip You can buy this cheap from the auction house or get it randomly fishing in Draenor.
		Follow the path, fishing at any pools |goto Spires of Arak/0 56.2,93.5 < 20 |noway |c |next "route_2" |or
		Use your Fishing skill to fish in the water |cast Fishing##131474
		map Spires of Arak/0
		path follow smart; loop off; ants curved; dist 20
		path	30.5,38.4	32.6,41.7	29.9,44.8
		path	32.9,46.6	32.1,52.5	32.4,56.3
		path	34.5,56.1	36.0,62.9	38.7,59.8
		path	38.4,63.8	41.7,64.6	46.5,73.0
		path	48.7,77.4	50.5,80.6	52.4,81.5
		path	52.8,84.6	53.7,90.2	56.2,93.5
		|goldcollect 932 Sea Scorpion Segment##109142 |next "Sell" |or
		|goldtracker
		Click here to sell items |confirm |next "Sell"
	step
	label "route_2"
		Use your Worm Supreme lure |use Worm Supreme##118391
		|tip You can buy this cheap from the auction house or get it randomly fishing in Draenor.
		Follow the path, fishing at any pools |goto Spires of Arak/0 30.5,38.4 < 20 |noway |c |next "route_1" |or
		Use your Fishing skill to fish in the water |cast Fishing##131474
		map Spires of Arak/0
		path follow smart; loop off; ants curved; dist 20
		path	56.2,93.5	53.7,90.2	52.8,84.6
		path	52.4,81.5	50.5,80.6	48.7,77.4
		path	46.5,73.0	41.7,64.6	38.4,63.8
		path	38.7,59.8	36.0,62.9	34.5,56.1
		path	32.4,56.3	32.1,52.5	32.9,46.6
		path	29.9,44.8	32.6,41.7	30.5,38.4
		|goldcollect 932 Sea Scorpion Segment##109142 |next "Sell" |or
		|goldtracker
		Click here to sell items |confirm |next "Sell"
	step
	label "Sell"
		#include "auctioneer"
]])


---------------------------
-----    HERBALISM    -----
---------------------------

--  Classic  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Blindweed",{
	meta={goldtype="route",skillreq={herbalism=1},levelreq=15},
	items={{3818,68},{8839,332},{3358,56}},
	maps={"Feralas"},
	},[[
	step
		map Feralas
		path	follow loose; loop on; ants curved; dist 25
		path	52.9,15.4	53.9,7.3	49.7,4.9
		path	48.5,6.8	50.1,9.9	47.7,11.9
		path	44.0,12.7	47.9,15.5	46.5,20.1
		path	49.4,23.9	49.3,24.9	51.5,13.5
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 68 Fadeleaf##3818
		|goldcollect 332 Blindweed##8839
		|goldcollect 56 Khadgar's Whisker##3358
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Bruiseweed",{
	meta={goldtype="route",skillreq={herbalism=1},levelreq=10},
	items={{3356,270},{2453,204},{3355,84}},
	maps={"Northern Stranglethorn"},
	},[[
	step
		map Northern Stranglethorn
		path	follow loose; loop on; ants curved; dist 10
		path	29.2,25.0	27.5,22.1	25.7,22.0
		path	23.8,25.0	34.2,35.9	41.3,30.1
		path	43.6,43.1	46.3,54.1	53.7,60.8
		path	58.0,67.1	62.9,72.9	62.4,67.1
		path	60.5,56.0	58.9,19.5
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 270 Kingsblood##3356
		|goldcollect 204 Bruiseweed##2453
		|goldcollect 84 Wild Steelbloom##3355
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Dragon's Teeth",{
	meta={goldtype="route",skillreq={herbalism=1},levelreq=15},
	items={{3819,84},{8838,16},{13464,12},{4625,4}},
	maps={"Badlands"},
	},[[
	step
		map Badlands
		path	follow loose; loop on; ants curved; dist 10
		path	27.0,61.3	29.8,51.7	42.0,42.5
		path	38.8,49.7	36.1,54.7	32.1,57.1
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 84 Dragon's Teeth##3819
		|goldcollect 16 Sungrass##8838
		|goldcollect 12 Golden Sansam##13464
		|goldcollect 4 Firebloom##4625
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Dreamfoil/Black Lotus (15-30)",{
	meta={goldtype="route",skillreq={herbalism=1},levelreq=15},
	items={{13463,280},{13464,24},{13465,20}},
	maps={"Blasted Lands"},
	},[[
	step
		talk Zidormi##88206
		Tell her: "_Show me the Blasted Lands before the Invasion._" |complete ZGV.InPhase('Old Blasted Lands') |goto Blasted Lands 48.2,7.3
	step
		map Blasted Lands
		path	follow loose; loop on; ants curved; dist 30
		path	66.7,28.0	71.4,35.8	66.5,35.8
		path	69.5,41.8	72.3,60.8	65.6,79.9
		path	62.9,69.4	59.9,70.0	58.2,79.8
		path	45.0,82.0	37.3,73.9	32.3,79.5
		path	32.5,64.8	37.0,54.9	33.8,48.5
		path	43.2,43.9	43.2,32.4	44.3,16.4
		path	51.8,36.1	59.5,41.6	61.1,31.5
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 280 Dreamfoil##13463
		|goldcollect 24 Golden Sansam##13464
		|goldcollect 20 Mountain Silversage##13465
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Dreamfoil/Black Lotus (15-30)",{
	meta={goldtype="route",skillreq={herbalism=1},levelreq=15},
	items={{13463,280},{13464,24},{13465,20}},
	maps={"Blasted Lands"},
	},[[
	step
		map Blasted Lands
		path	follow loose; loop on; ants curved; dist 30
		path	66.7,28.0	71.4,35.8	66.5,35.8
		path	69.5,41.8	72.3,60.8	65.6,79.9
		path	62.9,69.4	59.9,70.0	58.2,79.8
		path	45.0,82.0	37.3,73.9	32.3,79.5
		path	32.5,64.8	37.0,54.9	33.8,48.5
		path	43.2,43.9	43.2,32.4	44.3,16.4
		path	51.8,36.1	59.5,41.6	61.1,31.5
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 280 Dreamfoil##13463
		|goldcollect 24 Golden Sansam##13464
		|goldcollect 20 Mountain Silversage##13465
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Fadeleaf",{
	meta={goldtype="route",skillreq={herbalism=1},levelreq=15},
	items={{3818,236},{3821,32},{8839,100},{3358,160}},
	maps={"Feralas"},
	},[[
	step
		map Feralas
		path	follow loose; loop on; ants curved; dist 25
		path	58.9,50.2	58.3,62.1	55.2,70.9
		path	56.0,74.3	60.7,61.5	62.0,55.3
		path	69.0,54.1	68.9,61.7	76.2,59.4
		path	71.3,47.1	77.8,44.9	83.3,44.1
		path	84.8,39.3	75.5,37.2	70.0,41.5
		path	67.0,47.1
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 236 Fadeleaf##3818
		|goldcollect 32 Goldthorn##3821
		|goldcollect 100 Blindweed##8839
		|goldcollect 160 Khadgar's Whisker##3358
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Firebloom",{
	meta={goldtype="route",skillreq={herbalism=1},levelreq=15},
	items={{4625,224},{8838,172}},
	maps={"Searing Gorge"},
	},[[
	step
		map Searing Gorge
		path	follow smart; loop on; ants curved; dist 10
		path	35.2,39.5	39.9,43.8	43.9,39.7
		path	61.6,34.5	72.3,18.6	76.6,21.9
		path	73.1,30.0	68.1,37.6	66.5,45.2
		path	55.7,52.1	60.6,68.1	50.2,66.5
		path	46.5,58.8	42.5,72.5	29.6,71.7
		path	31.7,59.8	28.6,43.2
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 224 Firebloom##4625
		|goldcollect 172 Sungrass##8838
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Ghost Mushroom (Un'Goro Crater)",{
	meta={goldtype="route",skillreq={herbalism=1},levelreq=15},
	items={{8845,152}},
	maps={"Un'Goro Crater"},
	},[[
	step
		map Un'Goro Crater
		path follow loose; loop on; ants curved; dist 10
		path	64.7,16.9	69.5,17.5	68.8,11.9
		path	65.8,13.8
		_Follow_ the path, collecting any nodes you come across
		Enter the cave and collect any Ghost Mushrooms you see
		|goldcollect 152 Ghost Mushroom##8845
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Ghost Mushroom (Zangarmarsh - Outland)",{
	meta={goldtype="route",skillreq={herbalism=1},levelreq=10},
	items={{8845,108}},
	maps={"Zangarmarsh"},
	},[[
	step
	label "Farm 1"
		Enter the cave and collect any Ghost Mushrooms you see
		|goldcollect 108 Ghost Mushroom##8845 |goto Zangarmarsh/0 17.3,9.5
		|goldtracker
		When you have finished collecting Ghost Mushrooms from this area, click here |confirm |next "Farm 2"
		Click here to sell items |confirm |next "Sell"
		|next "Sell"
	step
	label "Farm 2"
		Enter the cave and collect any Ghost Mushrooms you find
		|goldcollect 108 Ghost Mushroom##8845 |goto Zangarmarsh/0 74.6,91.7
		|goldtracker
		When you have finished collecting Ghost Mushrooms from this area, click here |confirm |next "Farm 1"
		Click here to sell items |confirm |next "Sell"
		|next "Sell"
	step
	label "Sell"
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Golden Sansam",{
	meta={goldtype="route",skillreq={herbalism=1},levelreq=15},
	items={{13464,476},{13466,348}},
	maps={"Swamp of Sorrows"},
	},[[
	step
		map Swamp of Sorrows
		path	follow loose; loop on; ants curved; dist 15
		path	29.2,42.0	22.3,39.5	15.5,32.5
		path	14.1,37.7	18.5,41.8	18.4,48.5
		path	21.5,54.1	29.5,61.5	37.5,54.5
		path	28.5,49.2	31.5,45.1	45.3,42.9
		path	53.5,41.5	58.5,59.3	73.5,80.1
		path	88.6,63.4	83.8,59.5	76.2,66.8
		path	74.3,58.1	78.0,42.5	85.8,44.6
		path	87.6,38.6	78.5,24.6	75.1,19.5
		path	71.7,25.4	69.6,19.5	63.5,22.5
		path	62.5,28.4	53.5,31.7	41.0,34.5
		path	32.5,35.7
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 476 Golden Sansam##13464
		|goldcollect 348 Sorrowmoss##13466
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Grave Moss",{
	meta={goldtype="route",skillreq={herbalism=1},levelreq=10},
	items={{3369,32}},
	maps={"Duskwood"},
	},[[
	step
	label "Farm 1"
		map Duskwood
		path	follow loose; loop on; ants curved; dist 15
		path	16.5,48.5	14.9,43.5	18.0,39.6
		path	22.5,35.0	24.5,37.8	22.5,47.0
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 32 Grave Moss##3369
		|goldtracker
		Click here when you have finished farming this spot |confirm |next "Farm 2"
		Click here to sell items |confirm
		|next "Sell"
	step
	label "Farm 2"
		map Duskwood
		path	follow loose; loop on; ants curved; dist 15
		path	78.8,68.6	81.5,68.1	81.8,70.7
		path	79.7,73.5	78.2,70.7
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 32 Grave Moss##3369
		|goldtracker
		Click here when you have finished farming this spot |confirm |next "Farm 1"
		Click here to sell items |confirm
	step
	label "Sell"
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Gromsblood",{
	meta={goldtype="route",skillreq={herbalism=1},levelreq=15},
	items={{8846,368},{8831,48},{13464,184},{13463,64}},
	maps={"Felwood"},
	},[[
	step
		map Felwood
		path	follow loose; loop on; ants curved; dist 25
		path	51.9,81.9	56.3,88.1	50.7,84.4
		path	42.4,80.5	41.8,73.0	38.3,71.8
		path	40.8,67.0	36.5,60.3	38.9,56.3
		path	38.7,42.4	41.1,37.5	43.4,34.8
		path	40.8,30.8	41.3,21.8	45.8,16.5
		path	46.9,26.1	52.7,21.0	63.7,20.7
		path	53.2,29.6	49.7,34.8	44.7,35.9
		path	43.1,43.1	42.7,50.1	41.1,59.5
		path	45.5,67.5	46.6,74.8
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 368 Gromsblood##8846
		|goldcollect 48 Purple Lotus##8831
		|goldcollect 184 Golden Sansam##13464
		|goldcollect 64 Dreamfoil##13463
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Icecap",{
	meta={goldtype="route",skillreq={herbalism=1},levelreq=15},
	items={{13467,404},{13465,44}},
	maps={"Winterspring"},
	},[[
	step
		map Winterspring/0
		path	follow loose; loop on; ants curved; dist 25
		path	62.4,51.3	63.9,54.3	66.4,57.1
		path	65.9,65.4	64.2,69.0	60.6,73.0
		path	64.3,77.5	61.2,79.7	63.9,80.0
		path	60.5,85.9	57.1,82.0	58.1,69.5
		path	53.8,64.7	56.3,62.3	58.6,64.3
		path	62.2,61.5	59.2,55.1	54.2,59.7
		path	47.4,58.2	44.5,58.5	43.7,55.3
		path	39.0,55.8	34.2,57.1	27.5,55.9
		path	24.2,58.0	24.0,49.8	27.7,49.5
		path	45.0,51.3	48.3,53.0	51.6,54.3
		path	54.3,51.5	50.0,48.1	52.5,42.6
		path	57.1,39.3	56.0,34.9	54.8,29.6
		path	52.0,33.5	46.7,30.2	46.3,19.5
		path	45.2,14.8	50.2,19.2	52.8,23.0
		path	55.4,23.7	58.9,22.5	57.0,29.3
		path	61.2,31.9	65.4,30.6	65.3,38.6
		path	66.7,45.0	57.0,45.7
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 404 Icecap##13467
		|goldcollect 44 Mountain Silversage##13465
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Khadgar's Whisker",{
	meta={goldtype="route",skillreq={herbalism=1},levelreq=15},
	items={{8838,300},{3357,52},{3358,380}},
	maps={"Eastern Plaguelands"},
	},[[
	step
		map Eastern Plaguelands
		path	follow loose; loop on; ants curved; dist 25
		path	72.7,56.6	72.0,65.5	61.8,63.8
		path	60.5,67.5	68.3,74.8	62.7,74.5
		path	56.5,79.7	50.5,68.2	40.7,72.8
		path	35.5,76.8	26.1,76.7	22.8,75.5
		path	19.9,78.9	17.2,71.9	10.2,71.7
		path	16.5,61.5	19.5,64.7	26.5,63.2
		path	37.1,64.5	41.5,61.8	43.9,55.5
		path	51.7,45.6	44.0,34.3	46.3,21.3
		path	52.9,14.8	62.6,24.0	70.0,31.0
		path	60.0,35.0	65.8,37.8	66.2,44.8
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 300 Sungrass##8838
		|goldcollect 52 Liferoot####3357
		|goldcollect 380 Khadgar's Whisker##3358
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Kingsblood",{
	meta={goldtype="route",skillreq={herbalism=1},levelreq=10},
	items={{3356,448},{2453,28},{3355,28}},
	maps={"Northern Stranglethorn"},
	},[[
	step
		map Northern Stranglethorn
		path	follow loose; loop on; ants curved; dist 25
		path	39.9,23.0	34.2,20.7	29.8,30.5
		path	37.7,27.5	38.5,36.6	35.3,43.5
		path	42.1,47.0	41.1,51.5	46.1,50.0
		path	48.5,44.1	53.8,47.5	50.1,55.9
		path	55.8,56.5	56.5,63.8	63.2,61.5
		path	60.9,51.5	61.3,40.2	63.5,34.9
		path	61.5,27.3	55.9,31.1	52.7,22.1
		path	48.1,33.6
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 448 Kingsblood##3356
		|goldcollect 28 Bruiseweed##2453
		|goldcollect 28 Wild Steelbloom##3355
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Liferoot",{
	meta={goldtype="route",skillreq={herbalism=1},levelreq=15},
	items={{3357,336},{8838,184},{3358,92}},
	maps={"Eastern Plaguelands"},
	},[[
	step
		map Eastern Plaguelands/0
		path	follow loose; loop on; ants curved; dist 25
		path	65.9,45.5	71.0,51.7	66.3,61.6
		path	60.7,75.6	54.0,69.7	52.9,59.2
		path	45.7,64.1	45.5,43.1	58.5,46.7
		path	65.4,26.4	67.5,31.5
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 336 Liferoot##3357
		|goldcollect 184 Sungrass##8838
		|goldcollect 92 Khadgar's Whisker##3358
		|goldtracker
		Click here to sell items |confirm always
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Mageroyal",{
	meta={goldtype="route",skillreq={herbalism=1},levelreq=7},
	items={{785,452},{2452,140},{2450,388},{2453,20}},
	maps={"Hillsbrad Foothills"},
	},[[
	step
		map Hillsbrad Foothills
		path	follow loose; loop on; ants curved; dist 10
		path	56.5,34.5	56.2,38.4	61.7,49.2
		path	61.1,60.8	65.6,52.2	73.8,59.2
		path	67.8,66.8	61.5,65.9	66.1,72.1
		path	63.7,76.3	56.1,70.6	48.8,61.8
		path	41.9,70.5	35.5,74.0	34.9,69.5
		path	30.3,69.5	31.6,62.5	34.7,54.4
		path	31.1,46.7	37.5,39.8	39.3,48.3
		path	44.5,50.3	49.2,47.6	50.1,42.5
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 452 Mageroyal##785
		|goldcollect 140 Swiftthistle##2452
		|goldcollect 388 Briarthorn##2450
		|goldcollect 20 Bruiseweed##2453
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Mountain Silversage",{
	meta={goldtype="route",skillreq={herbalism=1},levelreq=15},
	items={{13467,112},{13465,280}},
	maps={"Winterspring"},
	},[[
	step
		map Winterspring/0
		path	follow loose; loop on; ants curved; dist 10
		path	63.2,48.8	66.9,52.7	67.7,69.7
		path	64.3,70.7	66.0,73.1	66.7,84.0
		path	63.9,83.1	62.2,80.2	56.0,78.8
		path	55.2,73.2	60.3,70.3	61.1,67.0
		path	54.0,69.3	52.0,64.1	47.2,61.5
		path	43.0,53.2	42.2,57.1	34.1,59.8
		path	26.9,58.3	24.6,62.8	22.0,62.8
		path	22.9,58.7	24.8,45.7	27.6,47.7
		path	35.6,47.1	40.7,46.5	43.8,47.1
		path	48.8,44.3	55.3,44.7	46.2,33.2
		path	44.5,24.3	44.8,19.5	44.9,13.5
		path	48.5,14.5	50.4,18.3	55.3,19.5
		path	57.6,17.8	60.5,22.9	60.9,28.0
		path	65.9,25.6	67.5,35.4	69.2,44.9
		path	60.6,39.1	58.9,45.5
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 112 Icecap##13467
		|goldcollect 280 Mountain Silversage##13465
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Purple Lotus/Wildvine",{
	meta={goldtype="route",skillreq={herbalism=1},levelreq=15},
	items={{8153,12},{8831,144},{13463,36},{8846,256},{13464,220}},
	maps={"Felwood"},
	},[[
	step
		map Felwood
		path	follow loose; loop on; ants curved; dist 10
		path	58.1,86.5	38.0,68.0	40.5,66.3
		path	41.8,62.5	39.7,45.1	42.6,36.2
		path	49.6,31.6	46.1,44.9	43.8,61.7
		path	45.4,69.0
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 12 Wildvine##8153
		|goldcollect 144 Purple Lotus##8831
		|goldcollect 36 Dreamfoil##13463
		|goldcollect 256 Gromsblood##8846
		|goldcollect 220 Golden Sansam##13464
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Sorrowmoss",{
	meta={goldtype="route",skillreq={herbalism=1},levelreq=15},
	items={{13466,440},{13464,300}},
	maps={"Swamp of Sorrows"},
	},[[
	step
		map Swamp of Sorrows/0
		path	follow loose; loop on; ants curved; dist 25
		path	26.6,38.1	27.6,45.2	30.8,54.6
		path	34.6,47.5	35.9,53.5	41.3,51.1
		path	47.3,44.5	53.3,43.5	56.0,58.4
		path	59.5,56.5	59.1,45.6	61.2,37.9
		path	71.6,29.7	76.5,35.6	85.0,43.5
		path	85.9,38.0	81.2,31.0	76.8,16.5
		path	67.8,21.8	61.6,25.7	55.0,33.5
		path	48.9,33.1	37.2,33.8	29.6,38.1
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 440 Sorrowmoss##13466
		|goldcollect 300 Golden Sansam##13464
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Stranglekelp",{
	meta={goldtype="route",skillreq={herbalism=1},levelreq=15},
	items={{3820,360}},
	maps={"Thousand Needles"},
	},[[
	step
		map Thousand Needles/0
		path	follow loose; loop on; ants curved; dist 25
		path	75.3,78.9	70.7,75.6	69.8,65.3
		path	61.9,60.6	59.5,55.0	51.6,55.8
		path	43.9,59.4	32.9,51.5	16.9,36.7
		path	9.0,19.2	8.8,12.0	13.5,16.0
		path	15.8,23.5	23.1,32.4	23.1,22.2
		path	32.5,25.5	30.8,39.3	36.6,44.6
		path	37.0,36.5	36.4,28.2	41.2,35.9
		path	45.6,43.5	48.1,47.6	53.2,44.6
		path	56.6,48.8	63.6,47.2	72.1,56.1
		path	83.9,59.4	88.0,66.2	81.2,68.0
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 360 Stranglekelp##3820
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Stranglekelp (Speedbarge Diving Helm)",{
	meta={goldtype="route",skillreq={herbalism=1},levelreq=15},
	items={{3820,460}},
	maps={"Thousand Needles"},
	},[[
	step
		map Thousand Needles/0
		path	follow loose; loop on; ants curved; dist 25
		path	75.3,78.9	70.7,75.6	69.8,65.3
		path	61.9,60.6	59.5,55.0	51.6,55.8
		path	43.9,59.4	32.9,51.5	16.9,36.7
		path	9.0,19.2	8.8,12.0	13.5,16.0
		path	15.8,23.5	23.1,32.4	23.1,22.2
		path	32.5,25.5	30.8,39.3	36.6,44.6
		path	37.0,36.5	36.4,28.2	41.2,35.9
		path	45.6,43.5	48.1,47.6	53.2,44.6
		path	56.6,48.8	63.6,47.2	72.1,56.1
		path	83.9,59.4	88.0,66.2	81.2,68.0
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 460 Stranglekelp##3820
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Sungrass",{
	meta={goldtype="route",skillreq={herbalism=1},levelreq=15},
	items={{8838,398},{3357,54},{3358,317}},
	maps={"Eastern Plaguelands"},
	},[[
	step
		map Eastern Plaguelands
		path	follow loose; loop on; ants curved; dist 25
		path	73.7,57.1	65.0,73.7	61.8,63.0
		path	54.8,67.0	50.6,72.6	45.5,71.3
		path	39.5,70.6	26.7,75.5	15.5,71.1
		path	14.5,62.5	19.8,63.9	33.6,62.1
		path	37.5,62.8	44.6,57.5	44.8,54.5
		path	50.8,46.3	42.8,32.8	44.8,24.0
		path	51.3,28.6	58.6,29.5	63.5,28.2
		path	64.9,36.6	64.8,45.0	58.9,50.7
		path	62.6,56.0	70.3,47.1
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 398 Sungrass##8838
		|goldcollect 54 Liferoot####3357
		|goldcollect 317 Khadgar's Whisker##3358
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Swiftthistle/Briarthorn",{
	meta={goldtype="route",skillreq={herbalism=1},levelreq=7},
	items={{785,264},{2452,160},{2450,320},{2453,64}},
	maps={"Hillsbrad Foothills"},
	},[[
	step
		map Hillsbrad Foothills
		path	follow loose; loop on; ants curved; dist 10
		path	62.3,45.5	69.1,55.8	74.9,59.1
		path	65.5,75.5	57.7,69.5	63.0,59.9
		path	58.4,57.8	51.4,62.9	42.5,68.5
		path	30.6,68.7	32.5,60.5	45.2,50.6
		path	37.5,44.8	35.6,29.5	48.2,11.1
		path	53.9,17.0	57.5,25.0	54.7,39.8
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 264 Mageroyal##785
		|goldcollect 160 Swiftthistle##2452
		|goldcollect 320 Briarthorn##2450
		|goldcollect 64 Bruiseweed##2453
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Wildvine (Kill Only)",{
	meta={goldtype="route",levelreq=10},
	items={{8153,3},{4306,656},{2592,180},{4338,8}},
	maps={"Northern Stranglethorn"},
	},[[
	step
		map Northern Stranglethorn
		path	follow loose; loop on; ants curved; dist 10
		path	55.8,66.6	57.4,71.0	59.8,72.6
		path	63.8,69.4	62.0,67.4	58.4,68.4
		kill Skullsplitter Witch Doctor##670+, Skullsplitter Hunter##669+, Skullsplitter Scout##782+, Skullsplitter Berserker##783+, Skullsplitter Spiritchaser##672+, Skullsplitter Headhunter##781+
		|goldcollect 3 Wildvine##8153
		|goldcollect 656 Silk Cloth##4306
		|goldcollect 180 Wool Cloth##2592
		|goldcollect 8 Mageweave Cloth##4338
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

--  Outland  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Ancient Lichen",{
	meta={goldtype="route",skillreq={outland_herbalism=1},levelreq=15},
	items={{22790,122}},
	maps={"Mana-Tombs"},
	},[[
	step
		map Mana-Tombs
		path	follow loose; loop off; ants curved; dist 20
		path	41.1,34.8	46.6,33.4	61.0,18.8
		path	57.6,36.6	63.5,35.5	60.6,57.5
		path	52.5,63.6	58.5,69.7	62.6,85.1
		path	55.5,81.6	54.7,89.7	50.1,83.7
		path	39.0,85.1	30.5,56.9
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 122 Ancient Lichen##22790
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Dreaming Glory",{
	meta={goldtype="route",skillreq={outland_herbalism=1},levelreq=15},
	items={{22786,168},{22785,80},{22575,76},{22793,12},{22794,4}},
	maps={"Nagrand"},
	},[[
	step
		map Nagrand/0
		path	follow loose; loop on; ants curved; dist 20
		path	74.8,72.1	75.2,62.5	68.7,65.3
		path	71.8,55.0	67.8,51.5	59.7,62.2
		path	58.7,57.8	54.4,60.0	55.3,53.8
		path	65.6,40.0	66.8,35.5	62.4,34.2
		path	52.9,20.0	49.3,19.5	40.5,34.5
		path	35.8,18.3	29.3,31.3	15.0,33.9
		path	11.6,39.6	7.1,43.6	18.9,53.6
		path	24.8,48.8	30.1,47.7	25.6,59.0
		path	29.1,66.3	31.0,72.1	26.6,73.7
		path	30.3,81.0	40.3,83.5	41.9,80.2
		path	42.7,73.2	37.1,61.0	34.3,55.7
		path	39.1,45.9	42.8,51.5	40.5,59.6
		path	50.5,77.0	60.4,81.6	62.7,72.6
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 168 Dreaming Glory##22786
		|goldcollect 80 Felweed##22785
		|goldcollect 76 Mote of Life##22575
		|goldcollect 12 Mana Thistle##22793
		|goldcollect 4 Fel Lotus##22794
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Felweed",{
	meta={goldtype="route",skillreq={outland_herbalism=1},levelreq=10},
	items={{22785,260},{13464,60},{13463,64},{13465,32},{22786,8},{22575,12}},
	maps={"Hellfire Peninsula"},
	},[[
	step
		map Hellfire Peninsula/0
		path	follow loose; loop on; ants curved; dist 25
		path	47.7,46.5	51.6,52.5	48.8,59.1
		path	45.2,65.6	56.1,71.6	61.5,69.3
		path	66.7,77.1	69.2,65.9	66.9,51.3
		path	72.1,53.5	73.4,37.8	63.1,37.9
		path	65.0,31.8	55.8,31.0	53.7,29.4
		path	38.6,35.1	29.5,41.0	17.3,44.6
		path	13.5,38.7	13.1,46.0	13.5,57.1
		path	23.6,55.0	22.9,67.5	32.1,60.8
		path	40.0,65.0	42.2,51.2
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 260 Felweed##22785
		|goldcollect 60 Golden Sansam##13464
		|goldcollect 64 Dreamfoil##13463
		|goldcollect 32 Mountain Silversage##13465
		|goldcollect 8 Dreaming Glory##22786
		|goldcollect 12 Mote of Life##22575
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Mana Thistle",{
	meta={goldtype="route",skillreq={outland_herbalism=1},levelreq=15},
	items={{22793,76},{22786,104},{22575,20}},
	maps={"Shadowmoon Valley","Terokkar Forest"},
	},[[
	step
	label "Path 1"
		map Terokkar Forest/0
		path	follow loose; loop on; ants curved; dist 20
		path	27.1,10.5	22.1,6.5	20.2,14.2
		path	23.9,10.5
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 76 Mana Thistle##22793
		|goldcollect 104 Dreaming Glory##22786
		|goldcollect 20 Mote of Life##22575
		|goldtracker
		When you have finished with this area, click here to proceed to another |confirm |next "Path 2"
		Click here to sell items |confirm |next "Sell"
	step
	label "Path 2"
		map Terokkar Forest/0
		path	follow loose; loop on; ants curved; dist 20
		path	62.4,73.6	65.7,79.2	68.7,85.7
		path	72.2,88.5	74.9,87.5	72.3,82.0
		path	69.3,74.6	62.4,73.6
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 76 Mana Thistle##22793
		|goldcollect 104 Dreaming Glory##22786
		|goldcollect 20 Mote of Life##22575
		|goldtracker
		When you have finished with this area, click here to proceed to another |confirm |next "Path 3"
		Click here to sell items |confirm |next "Sell"
	step
	label "Path 3"
		map Shadowmoon Valley
		path	follow loose; loop on; ants curved; dist 20
		path	65.8,80.6	70.2,79.1	74.3,80.8
		path	79.2,87.5	77.5,88.4	74.3,88.9
		path	71.1,88.3	68.3,87.5	70.2,83.9
		path	72.0,85.9	74.6,86.4
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 76 Mana Thistle##22793
		|goldcollect 104 Dreaming Glory##22786
		|goldcollect 20 Mote of Life##22575
		|goldtracker
		When you have finished with this area, click here to proceed to another |confirm |next "Path 1"
		Click here to sell items |confirm |next "Sell"
	step
	label "Sell"
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Netherbloom",{
	meta={goldtype="route",skillreq={outland_herbalism=1},levelreq=25},
	items={{22791,212},{22786,84},{22576,24},{22794,8},{22575,10}},
	maps={"Netherstorm"},
	},[[
	step
		map Netherstorm
		path	follow loose; loop on; ants curved; dist 20
		path	31.5,51.4	25.6,63.5	19.5,67.7
		path	20.3,77.1	40.2,77.2	46.2,82.6
		path	48.0,86.9	58.9,88.8	61.4,79.4
		path	51.6,75.7	46.0,72.1	34.5,55.8
		path	40.1,52.9	50.2,69.0	67.1,60.7
		path	50.8,54.8	46.5,47.1	55.0,39.9
		path	58.5,47.2	62.7,50.3	73.4,40.5
		path	73.2,35.2	62.1,30.5	55.6,31.6
		path	49.8,35.9	48.8,25.5	57.1,24.3
		path	55.5,17.3	49.7,17.4	48.9,12.5
		path	44.9,19.8	42.5,16.2	39.5,15.7
		path	35.7,19.8	32.1,29.2	38.5,42.4
		path	31.1,38.1	23.5,35.4	22.9,44.1
		path	30.2,43.3
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 212 Netherbloom##22791
		|goldcollect 84 Dreaming Glory##22786
		|goldcollect 24 Mote of Mana##22576
		|goldcollect 8 Fel Lotus##22794
		|goldcollect 10 Mote of Life##22575
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Nightmare Vine",{
	meta={goldtype="route",skillreq={outland_herbalism=1},levelreq=25},
	items={{22792,168},{22794,4},{22785,116},{22789,52},{22786,32}},
	maps={"Shadowmoon Valley"},
	},[[
	step
		map Shadowmoon Valley
		path	follow smart; loop on; ants curved; dist 20
		path	42.5,59.0	43.4,65.1	43.3,72.4
		path	47.7,69.6	47.3,51.7	51.5,59.0
		path	51.4,66.4	56.9,73.9	61.2,68.1
		path	57.8,57.2	62.0,56.2	65.2,61.5
		path	70.6,60.7	68.5,58.0	67.9,47.2
		path	72.1,47.5	71.5,40.8	66.3,39.3
		path	58.5,45.3	49.9,33.9	53.1,33.5
		path	59.6,37.3	67.1,28.9	66.0,21.8
		path	58.0,23.6	55.6,16.8	52.5,15.6
		path	52.5,21.6	45.5,15.1	42.3,38.2
		path	38.3,32.1	31.2,34.6	24.9,29.6
		path	22.0,34.7	22.0,40.8	29.7,47.8
		path	27.2,52.6	31.6,53.8
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 168 Nightmare Vine##22792
		|goldcollect 4 Fel Lotus##22794
		|goldcollect 116 Felweed##22785
		|goldcollect 52 Terocone##22789
		|goldcollect 32 Dreaming Glory##22786
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Ragveil",{
	meta={goldtype="route",skillreq={outland_herbalism=1},levelreq=10},
	items={{22787,180},{22785,44},{22786,16},{24401,48},{13464,60},{13463,44},{22575,48},{8839,20}},
	maps={"Zangarmarsh"},
	},[[
	step
		map Zangarmarsh
		path	follow loose; loop on; ants curved; dist 20
		path	78.8,68.0	82.4,70.4	83.3,76.5
		path	83.1,80.7	85.1,83.8	86.1,86.3
		path	83.7,89.7	79.8,84.9	73.3,84.8
		path	68.7,80.3	70.5,79.4	70.9,72.4
		path	69.2,66.2	64.6,61.8	61.0,68.8
		path	57.2,69.1	54.4,69.0	50.0,63.3
		path	43.6,60.1	37.9,56.6	31.4,61.5
		path	25.7,56.9	20.1,60.8	17.4,63.3
		path	13.0,65.0	13.3,61.5	9.8,61.3
		path	12.8,57.2	17.1,54.6	22.7,52.3
		path	25.7,49.0	26.1,41.2	28.1,40.8
		path	27.0,32.1	24.2,28.6	24.1,22.7
		path	29.1,24.4	37.7,28.4	41.7,33.8
		path	46.9,33.5	57.4,35.4	59.0,36.0
		path	61.2,35.4	69.9,39.5	73.9,33.5
		path	75.0,30.7	80.9,32.4	84.7,36.4
		path	85.6,42.3	81.7,47.7	80.2,58.5
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 180 Ragveil##22787
		|goldcollect 44 Felweed##22785
		|goldcollect 16 Dreaming Glory##22786
		|goldcollect 48 Unidentified Plant Parts##24401
		|goldcollect 60 Golden Sansam##13464
		|goldcollect 44 Dreamfoil##13463
		|goldcollect 48 Mote of Life##22575
		|goldcollect 20 Blindweed##8839
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Terocone",{
	meta={goldtype="route",skillreq={outland_herbalism=1},levelreq=15},
	items={{22789,200},{22785,100},{22786,28},{22575,52}},
	maps={"Terokkar Forest"},
	},[[
	step
		map Terokkar Forest
		path	follow loose; loop on; ants curved; dist 20
		path	37.1,29.2	38.7,39.1	31.9,43.8
		path	25.2,55.5	18.0,69.4	18.9,77.6
		path	23.1,67.5	25.6,79.2	30.9,80.4
		path	49.6,83.5	53.9,69.6	56.5,58.3
		path	61.3,59.5	55.3,33.8	66.6,47.5
		path	66.9,39.8	71.3,30.1	65.9,30.9
		path	61.2,23.6	56.3,29.5	48.0,24.5
		path	40.7,23.5	42.7,32.2
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 200 Terocone##22789
		|goldcollect 100 Felweed##22785
		|goldcollect 28 Dreaming Glory##22786
		|goldcollect 52 Mote of Life##22575
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

--  Northrend  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Adder's Tongue",{
	meta={goldtype="route",skillreq={northrend_herbalism=1},levelreq=20},
	items={{37704,232},{36903,416},{36904,136},{36901,112},{37921,96},{36908,20}},
	maps={"Sholazar Basin"},
	},[[
	step
		map Sholazar Basin
		path	follow loose; loop on; ants curved; dist 20
		path	22.6,59.1	21.6,55.1	25.7,55.9
		path	27.6,49.5	30.0,53.1	28.5,60.1
		path	29.8,66.8	31.9,70.1	34.7,70.1
		path	34.6,66.7	35.5,58.7	41.2,58.8
		path	43.5,59.5	46.7,55.5	46.5,49.2
		path	51.3,53.3	53.5,44.0	56.5,31.5
		path	62.7,33.9	58.8,38.0	57.0,45.6
		path	55.6,49.9	56.6,54.5	52.3,56.8
		path	46.3,66.5	41.9,65.1	41.8,77.0
		path	41.9,86.5	39.6,87.1	37.5,83.3
		path	35.2,83.4	35.2,87.1	28.8,84.8
		path	28.5,79.5	26.6,77.6	30.4,75.7
		path	26.3,69.1
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 232 Crystallized Life##37704
		|goldcollect 416 Adder's Tongue##36903
		|goldcollect 136 Tiger Lily##36904
		|goldcollect 112 Goldclover##36901
		|goldcollect 96 Deadnettle##37921
		|goldcollect 20 Frost Lotus##36908
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Fire Leaf",{
	meta={goldtype="route",skillreq={northrend_herbalism=1},levelreq=10},
	items={{39970,330},{37702,72},{36908,12},{36901,30},{37921,12}},
	maps={"Borean Tundra"},
	},[[
	step
		map Borean Tundra
		path	follow smart; loop on; ants curved; dist 15
		path	58.7,28.6	59.2,20.3	58.2,15.8
		path	60.8,14.0	66.2,19.0	67.3,15.4
		path	68.3,23.7	73.7,24.2	69.8,29.7
		path	73.3,30.8	71.8,34.2	75.0,39.9
		path	72.3,41.2	68.7,38.4	67.5,34.7
		path	65.6,36.7	62.1,40.6	59.5,41.9
		path	58.5,39.0	60.3,30.8
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 330 Fire Leaf##39970
		|goldcollect 72 Crystallized Fire##37702
		|goldcollect 12 Frost Lotus##36908
		|goldcollect 30 Goldclover##36901
		|goldcollect 12 Deadnettle##37921
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Goldclover/Deadnettle",{
	meta={goldtype="route",skillreq={northrend_herbalism=1},levelreq=10},
	items={{36901,344},{36904,16},{37921,68},{37704,108},{36908,12}},
	maps={"Howling Fjord"},
	},[[
	step
		map Howling Fjord/0
		path	follow loose; loop on; ants curved; dist 20
		path	54.9,19.7	50.2,16.6	48.2,18.1
		path	48.7,21.2	48.6,30.0	44.6,29.7
		path	40.9,31.2	29.2,12.0	26.5,8.0
		path	25.2,11.8	26.9,14.6	29.0,22.3
		path	27.1,29.6	34.8,34.1	37.0,39.9
		path	37.0,44.9	34.9,46.2	35.7,53.6
		path	38.9,54.3	40.9,40.2	43.4,44.1
		path	51.1,41.8	51.0,48.3	45.9,50.1
		path	46.4,54.3	45.0,59.5	52.5,60.5
		path	48.7,62.7	46.8,71.6	49.2,72.1
		path	53.4,76.5	60.0,76.8	60.5,81.3
		path	62.6,80.5	65.8,72.5	67.1,74.9
		path	69.5,74.5	70.6,66.0	76.4,67.9
		path	76.7,63.9	69.9,51.1	70.1,47.3
		path	72.5,47.1	75.5,50.8	79.2,49.7
		path	80.5,46.2	76.3,42.8	72.8,42.3
		path	70.3,40.6	66.5,33.5	70.5,32.5
		path	69.8,19.2	65.8,26.8	61.8,28.5
		path	56.5,21.3
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 344 Goldclover##36901
		|goldcollect 16 Tiger Lily##36904
		|goldcollect 68 Deadnettle##37921
		|goldcollect 108 Crystallized Life##37704
		|goldcollect 12 Frost Lotus##36908
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Icethorn/Lichbloom",{
	meta={goldtype="route",skillreq={northrend_herbalism=1},levelreq=25},
	items={{36905,336},{36906,280},{37704,128},{36908,12}},
	maps={"The Storm Peaks"},
	},[[
	step
		map The Storm Peaks
		path	follow loose; loop on; ants curved; dist 20
		path	39.5,88.9	33.5,89.5	32.5,86.9
		path	31.4,83.1	35.7,82.2	37.3,74.3
		path	32.8,74.5	29.1,68.0	27.0,72.4
		path	24.6,72.5	26.7,67.6	27.8,60.0
		path	25.4,58.6	22.6,62.8	21.6,55.7
		path	23.9,55.4	30.4,50.5	34.6,40.4
		path	40.9,38.0	44.8,40.5	39.6,44.8
		path	35.5,43.0	35.7,47.1	38.8,48.5
		path	36.8,64.3	41.2,62.5	45.2,55.0
		path	48.6,60.9	47.0,66.7	56.8,63.1
		path	56.5,56.6	56.0,50.9	59.7,47.8
		path	59.9,45.0	65.6,40.6	65.9,43.8
		path	64.1,54.1	68.6,47.7	72.9,49.8
		path	70.3,54.9	72.5,65.0	65.3,59.3
		path	61.3,61.9	58.6,63.5	56.7,66.0
		path	56.9,71.0	52.2,69.5	48.3,77.4
		path	43.6,77.0	41.5,79.2	39.9,76.3
		path	38.4,80.8
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 336 Lichbloom##36905
		|goldcollect 280 Icethorn##36906
		|goldcollect 128 Crystallized Life##37704
		|goldcollect 12 Frost Lotus##36908
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Talandra's Rose",{
	meta={goldtype="route",skillreq={northrend_herbalism=1},levelreq=20},
	items={{36907,344},{37921,120},{36908,12},{37704,80}},
	maps={"Zul'Drak"},
	},[[
	step
		map Zul'Drak
		path	follow loose; loop on; ants curved; dist 20
		path	20.3,85.1	22.6,78.8	27.1,76.8
		path	31.6,87.2	39.3,86.2	38.6,80.2
		path	35.2,69.5	28.7,68.8	29.4,64.3
		path	37.1,62.4	40.2,69.8	44.3,74.9
		path	45.0,82.0	52.9,82.6	58.2,81.5
		path	56.7,71.3	50.7,62.4	44.4,65.0
		path	42.6,54.0	44.6,51.0	44.3,43.0
		path	37.5,42.0	29.8,41.5	29.7,57.1
		path	22.4,50.5
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 344 Talandra's Rose##36907
		|goldcollect 120 Deadnettle##37921
		|goldcollect 12 Frost Lotus##36908
		|goldcollect 80 Crystallized Life##37704
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Tiger Lily/Deadnettle",{
	meta={goldtype="route",skillreq={northrend_herbalism=1},levelreq=20},
	items={{36904,388},{36903,128},{36908,20},{37921,152},{37704,208},{36901,24}},
	maps={"Sholazar Basin"},
	},[[
	step
		map Sholazar Basin
		path	follow loose; loop on; ants curved; dist 20
		path	25.3,59.0	22.7,61.5	29.1,63.7
		path	32.7,64.5	46.2,63.1	48.5,68.8
		path	46.2,72.8	43.6,75.5	47.2,75.5
		path	51.6,86.5	54.5,85.6	59.7,86.5
		path	57.7,83.3	69.4,68.5	69.6,57.4
		path	63.9,48.9	44.6,49.1	48.5,51.6
		path	50.2,55.9	50.1,65.0	47.9,60.1
		path	32.4,60.4
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 388 Tiger Lily##36904
		|goldcollect 128 Adder's Tongue##36903
		|goldcollect 20 Frost Lotus##36908
		|goldcollect 152 Deadnettle##37921
		|goldcollect 208 Crystallized Life##37704
		|goldcollect 24 Goldclover##36901
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

--  Cataclysm  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Azshara's Veil",{
	meta={goldtype="route",skillreq={cataclysm_herbalism=1},levelreq=30},
	items={{52985,332},{52984,112},{52329,152},{63122,12}},
	maps={"Shimmering Expanse"},
	},[[
	step
		map Shimmering Expanse
		path	follow smart; loop off; ants curved; dist 10
		path	61.2,87.5	60.8,82.8	58.1,81.8
		path	53.2,79.7	50.2,78.2	48.1,80.9
		path	38.9,73.5	39.2,69.1	37.5,64.0
		path	37.6,59.5	32.9,54.4	41.0,53.7
		path	47.4,60.9	53.8,66.1	58.0,69.5
		path	61.6,69.0	64.0,67.2	67.3,51.2
		path	64.5,44.6	61.8,38.9	52.6,44.9
		path	46.0,34.5	42.8,32.1	40.6,31.4
		path	40.4,36.5	41.6,39.6
		Completing the quest "Sea Legs" will allow you to move 60% faster and grant Underwater Breathing while in Vashj'ir.
		Completing the quest "The Abyssal Ride" will grant you the _Vashj'ir Seahorse_ mount, increasing underwater speed while mounted by 450%
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 332 Azshara's Veil##52985
		|goldcollect 112 Stormvine##52984
		|goldcollect 152 Volatile Life##52329
		|goldcollect 12 Lifegiving Seed##63122
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Heartblossom/Cinderbloom",{
	meta={goldtype="route",skillreq={cataclysm_herbalism=1},levelreq=30},
	items={{52986,168},{52983,180},{52329,88},{63122,8}},
	maps={"Deepholm"},
	},[[
	step
		map Deepholm
		path	follow smart; loop on; ants curved; dist 10
		path	45.5,28.5	42.0,29.4	39.5,33.5
		path	37.6,30.9	32.4,30.1	29.8,34.8
		path	26.9,39.0	24.5,35.1	26.3,29.8
		path	28.8,30.9	27.8,26.4	30.5,21.9
		path	32.4,24.5	33.5,17.1	36.8,21.8
		path	37.8,15.4	41.3,20.7	42.3,16.0
		path	42.2,11.9	44.6,11.7	45.7,15.1
		path	47.9,12.6	50.0,13.1	48.4,16.0
		path	46.7,20.6	48.2,25.8
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 168 Heartblossom##52986
		|goldcollect 180 Cinderbloom##52983
		|goldcollect 88 Volatile Life##52329
		|goldcollect 8 Lifegiving Seed##63122
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Stormvine",{
	meta={goldtype="route",skillreq={cataclysm_herbalism=1},levelreq=30},
	items={{52984,200},{52329,76},{52983,52}},
	maps={"Mount Hyjal"},
	},[[
	step
		map Mount Hyjal
		path	follow loose; loop on; ants curved; dist 15
		path	61.8,28.3	59.2,31.6	55.7,30.6
		path	50.9,32.3	57.0,39.0	43.5,42.6
		path	36.2,44.9	33.1,65.2	27.9,51.5
		path	16.9,46.6	14.3,47.1	11.5,36.3
		path	11.8,31.6	13.5,34.0	25.5,33.4
		path	26.5,30.0	33.1,27.4	35.7,19.5
		path	51.5,16.9	50.5,22.5	52.7,23.2
		To harvest the maximum amount of Stormvine, you will need to quest through Hyjal and unlock each phase
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 200 Stormvine##52984
		|goldcollect 76 Volatile Life##52329
		|goldcollect 52 Cinderbloom##52983
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Twilight Jasmine",{
	meta={goldtype="route",skillreq={cataclysm_herbalism=1},levelreq=30},
	items={{52987,352},{52329,116},{52983,48},{63122,8}},
	maps={"Twilight Highlands"},
	},[[
	step
		map Twilight Highlands
		path	follow loose; loop on; ants curved; dist 15
		path	32.8,51.0	39.9,52.6	46.2,44.4
		path	48.7,54.5	42.2,58.5	44.0,75.2
		path	54.1,77.8	58.2,73.7	47.5,70.2
		path	46.9,64.6	53.4,67.6	56.5,62.2
		path	58.7,67.2	60.8,62.9	66.6,63.6
		path	73.7,72.2	74.3,66.2	66.6,56.3
		path	65.1,52.5	61.0,58.7	51.3,53.0
		path	53.0,45.2	62.4,45.6	59.2,41.6
		path	61.5,33.5	71.7,48.9	69.3,36.7
		path	72.1,30.9	68.5,22.7	68.1,30.9
		path	63.7,27.5	60.2,6.5	58.2,11.5
		path	50.1,8.9	53.2,16.8	57.5,27.2
		path	51.5,35.0	51.6,24.8	47.0,24.2
		path	45.5,27.9	49.5,33.6	44.8,34.6
		path	47.4,38.3	39.5,43.1
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 352 Twilight Jasmine##52987
		|goldcollect 116 Volatile Life##52329
		|goldcollect 48 Cinderbloom##52983
		|goldcollect 8 Lifegiving Seed##63122
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Whiptail",{
	meta={goldtype="route",skillreq={cataclysm_herbalism=1},levelreq=30},
	items={{52988,640},{52329,208},{63122,12}},
	maps={"Uldum"},
	},[[
	step
		map Uldum
		path	follow loose; loop on; ants curved; dist 15
		path	59.0,30.5	57.0,20.9	59.3,14.9
		path	61.5,14.0	61.2,25.6	62.3,35.4
		path	57.1,44.7	60.5,58.3	67.9,72.9
		path	69.8,76.5	64.3,77.6	61.2,82.1
		path	59.4,64.5	56.2,50.0	54.3,45.9
		path	51.5,44.6	45.9,29.0	53.4,35.9
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 640 Whiptail##52988
		|goldcollect 208 Volatile Life##52329
		|goldcollect 12 Lifegiving Seed##63122
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

--  Pandaria  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Fool's Cap",{
	meta={goldtype="route",skillreq={pandaria_herbalism=1},levelreq=30},
	items={{72234,68},{79011,172},{89640,8},{89641,4}},
	maps={"Dread Wastes"},
	},[[
	step
		map Dread Wastes
		path	follow loose; loop on; ants curved; dist 15
		path	36.3,54.8	29.8,54.5	31.6,61.8
		path	33.8,57.8	39.5,60.1	33.1,64.4
		path	37.9,65.9	41.0,71.3	41.4,63.8
		path	45.9,61.6	55.6,63.2	64.9,62.8
		path	66.7,66.2	67.9,59.3	65.6,54.1
		path	62.6,59.4	54.3,54.6	42.4,57.1
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 68 Green Tea Leaf##72234
		|goldcollect 172 Fool's Cap##79011
		|goldcollect 8 Life Spirit##89640
		|goldcollect 4 Water Spirit##89641
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Green Tea Leaf",{
	meta={goldtype="route",skillreq={pandaria_herbalism=1},levelreq=10},
	items={{72234,740},{72237,60},{89640,80},{72238,12}},
	maps={"The Jade Forest"},
	},[[
	step
		map The Jade Forest
		path	follow loose; loop on; ants curved; dist 20
		path	42.7,82.5	39.5,74.2	45.3,71.4
		path	46.0,78.7	48.9,81.5	50.5,75.0
		path	48.4,66.7	34.3,61.6	37.5,56.9
		path	37.8,53.2	29.8,52.5	32.1,51.0
		path	30.3,46.9	31.0,41.6	31.7,35.3
		path	35.0,34.9	37.6,36.7	34.3,43.7
		path	38.2,44.7	42.5,36.5	37.9,27.1
		path	29.7,30.6	25.6,27.7	31.3,21.2
		path	30.5,16.5	34.6,12.3	40.5,10.0
		path	44.6,17.1	49.8,18.0	47.8,28.0
		path	48.0,38.3	55.2,30.4	53.5,38.5
		path	53.3,47.4	51.8,54.0	52.5,65.0
		path	60.6,71.0	64.2,78.9	66.4,84.6
		path	62.8,92.3	56.7,91.8	59.6,88.6
		path	55.5,85.1	54.5,79.4	51.6,86.7
		path	45.1,92.6	43.7,90.4
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 740 Green Tea Leaf##72234
		|goldcollect 60 Rain Poppy##72237
		|goldcollect 80 Life Spirit##89640
		|goldcollect 12 Golden Lotus##72238
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Silkweed",{
	meta={goldtype="route",skillreq={pandaria_herbalism=1},levelreq=15},
	items={{72235,520},{72234,204},{89640,52}},
	maps={"Valley of the Four Winds"},
	},[[
	step
		map Valley of the Four Winds
		path	follow smart; loop on; ants curved; dist 10
		path	76.8,24.5	83.7,18.3	81.7,24.7
		path	88.5,25.7	88.4,31.4	84.8,37.5
		path	79.9,40.3	75.7,46.5	74.2,54.4
		path	70.4,52.2	70.2,57.5	66.9,60.3
		path	68.1,64.2	65.0,64.5	62.5,67.5
		path	61.0,71.8	58.6,70.6	55.4,73.5
		path	55.1,69.5	55.5,68.6	47.1,68.2
		path	47.2,70.6	43.6,69.1	41.2,66.7
		path	42.0,73.5	35.6,75.7	32.0,76.8
		path	23.5,43.5	27.3,46.6	32.7,52.5
		path	36.2,41.9	35.7,33.5	38.6,30.5
		path	42.5,38.1	47.1,28.8	52.2,27.6
		path	55.5,39.7	58.5,44.1	60.4,37.5
		path	58.5,35.6	58.0,29.8	62.6,28.2
		path	63.7,32.5	68.3,29.5
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 520 Silkweed##72235
		|goldcollect 204 Green Tea Leaf##72234
		|goldcollect 52 Life Spirit##89640
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Snow Lily",{
	meta={goldtype="route",skillreq={pandaria_herbalism=1},levelreq=20},
	items={{79010,736},{89640,20},{89641,40}},
	maps={"Kun-Lai Summit"},
	},[[
	step
		map Kun-Lai Summit
		path	follow loose; loop on; ants curved; dist 20
		path	48.7,72.7	41.1,72.0	46.9,68.5
		path	53.2,62.3	49.1,58.0	40.8,59.8
		path	33.8,57.8	34.9,53.1	40.8,46.7
		path	37.9,37.2	45.0,38.0	44.2,44.3
		path	46.9,45.5	54.7,42.2	59.7,47.8
		path	50.5,51.6	55.0,57.5	60.7,54.2
		path	56.8,63.5	55.0,69.5
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 736 Snow Lily##79010
		|goldcollect 20 Life Spirit##89640
		|goldcollect 40 Water Spirit##89641
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

--  Draenor  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Frostweed",{
	meta={goldtype="route",skillreq={draenor_herbalism=1},levelreq=10},
	items={{109124,302},{109127,236}},
	maps={"Shadowmoon Valley D"},
	},[[
	step
		map Shadowmoon Valley D
		path	follow loose; loop on; ants curved; dist 20
		path	26.6,8.0	27.4,12.7	27.4,15.6
		path	26.2,17.1	26.8,19.8	27.5,22.1
		path	29.3,27.4	31.4,26.3	32.3,23.8
		path	34.6,27.2	36.0,24.1	37.2,21.6
		path	39.5,19.9	40.6,23.3	40.6,24.9
		path	41.5,26.7	42.8,28.1	45.0,28.8
		path	47.5,28.1	48.7,26.8	50.7,28.8
		path	53.3,31.1	54.5,32.7	56.0,35.5
		path	58.6,36.0	62.3,32.0	63.5,31.0
		path	65.9,31.7	66.3,34.2	65.0,36.0
		path	63.1,36.6	62.3,39.4	60.2,42.4
		path	59.1,45.2	58.0,47.7	58.8,50.8
		path	62.5,53.0	64.7,55.5	65.9,56.7
		path	65.7,57.4	64.7,59.4	61.4,57.7
		path	59.6,58.0	58.8,58.6	59.9,61.4
		path	60.5,63.9	62.0,62.2	62.7,64.2
		path	61.6,65.3	61.9,67.4	61.4,69.3
		path	59.8,67.0	58.1,64.1	57.9,63.4
		path	57.4,59.5	55.3,59.0	54.5,61.8
		path	53.3,63.7	53.0,65.6	52.2,67.0
		path	54.0,69.9	56.0,70.2	56.0,72.4
		path	55.0,74.4	54.0,74.3	52.7,72.9
		path	51.7,70.8	51.1,68.7	49.1,68.3
		path	45.6,68.3	42.9,73.0	41.6,74.7
		path	38.2,73.4	37.0,71.5	38.3,67.7
		path	38.1,66.4	37.4,60.8	36.4,59.6
		path	36.9,56.8	40.7,57.6	42.9,57.0
		path	43.2,54.8	41.7,53.6	41.2,50.1
		path	42.0,48.6	43.1,46.7	42.6,43.6
		path	40.2,43.4	39.0,39.8	37.0,35.7
		path	34.7,32.4	32.9,31.0	31.1,32.4
		path	28.3,32.9	26.4,31.7	25.4,28.8
		path	24.1,26.7	22.7,26.1	21.4,24.8
		path	22.3,24.2	23.7,23.1	25.1,20.8
		path	24.3,19.0	23.4,18.1	23.4,16.3
		path	22.8,14.5	23.7,10.2
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 302 Frostweed##109124
		|goldcollect 236 Starflower##109127
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Starflower",{
	meta={goldtype="route",skillreq={draenor_herbalism=1},levelreq=10},
	items={{109124,302},{109127,236}},
	maps={"Shadowmoon Valley D"},
	},[[
	step
		map Shadowmoon Valley D
		path	follow smart; loop on; ants curved; dist 10
		path	26.6,8.0	27.4,12.7	27.4,15.6
		path	26.2,17.1	26.8,19.8	27.5,22.1
		path	29.3,27.4	31.4,26.3	32.3,23.8
		path	34.6,27.2	36.0,24.1	37.2,21.6
		path	39.5,19.9	40.6,23.3	40.6,24.9
		path	41.5,26.7	42.8,28.1	45.0,28.8
		path	47.5,28.1	48.7,26.8	50.7,28.8
		path	53.3,31.1	54.5,32.7	56.0,35.5
		path	58.6,36.0	62.3,32.0	63.5,31.0
		path	65.9,31.7	66.3,34.2	65.0,36.0
		path	63.1,36.6	62.3,39.4	60.2,42.4
		path	59.1,45.2	58.0,47.7	58.8,50.8
		path	62.5,53.0	64.7,55.5	65.9,56.7
		path	65.7,57.4	64.7,59.4	61.4,57.7
		path	59.6,58.0	58.8,58.6	59.9,61.4
		path	60.5,63.9	62.0,62.2	62.7,64.2
		path	61.6,65.3	61.9,67.4	61.4,69.3
		path	59.8,67.0	58.1,64.1	57.9,63.4
		path	57.4,59.5	55.3,59.0	54.5,61.8
		path	53.3,63.7	53.0,65.6	52.2,67.0
		path	54.0,69.9	56.0,70.2	56.0,72.4
		path	55.0,74.4	54.0,74.3	52.7,72.9
		path	51.7,70.8	51.1,68.7	49.1,68.3
		path	45.6,68.3	42.9,73.0	41.6,74.7
		path	38.2,73.4	37.0,71.5	38.3,67.7
		path	38.1,66.4	37.4,60.8	36.4,59.6
		path	36.9,56.8	40.7,57.6	42.9,57.0
		path	43.2,54.8	41.7,53.6	41.2,50.1
		path	42.0,48.6	43.1,46.7	42.6,43.6
		path	40.2,43.4	39.0,39.8	37.0,35.7
		path	34.7,32.4	32.9,31.0	31.1,32.4
		path	28.3,32.9	26.4,31.7	25.4,28.8
		path	24.1,26.7	22.7,26.1	21.4,24.8
		path	22.3,24.2	23.7,23.1	25.1,20.8
		path	24.3,19.0	23.4,18.1	23.4,16.3
		path	22.8,14.5	23.7,10.2
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 302 Frostweed##109124
		|goldcollect 236 Starflower##109127
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Fireweed",{
	meta={goldtype="route",skillreq={draenor_herbalism=1},levelreq=10},
	items={{109125,24},{109124,124}},
	maps={"Frostfire Ridge"},
	},[[
	step
		map Frostfire Ridge
		path	follow smart; loop on; ants curved; dist 20
		path	31.1,53.3	26.1,53.7	24.2,49.0
		path	23.2,45.2	20.7,39.5	22.2,33.9
		path	21.8,29.7	20.9,25.4	23.1,23.6
		path	25.1,24.6	27.2,22.3	29.7,21.4
		path	31.2,22.0	32.8,21.7	35.1,19.5
		path	36.9,24.3	38.1,26.8	40.8,28.9
		path	41.6,30.6	42.8,29.9	42.9,31.1
		path	44.4,31.1	46.2,31.7	48.9,34.4
		path	51.6,36.9	53.7,35.1	54.5,30.3
		path	56.5,26.1	59.1,28.4	60.0,31.9
		path	61.2,34.9	63.1,40.9	63.4,45.0
		path	60.9,46.9	62.2,52.4	60.3,55.3
		path	57.9,57.5	53.8,55.8	50.6,54.7
		path	47.7,55.6	45.9,58.9	43.1,60.8
		path	40.3,62.1	37.7,58.7	36.5,56.5
		path	35.5,53.3	33.6,49.2	31.1,51.2
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 24 Fireweed##109125
		|goldcollect 124 Frostweed##109124
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Gorgrond Flytrap",{
	meta={goldtype="route",skillreq={draenor_herbalism=1},levelreq=15},
	items={{109126,240}},
	maps={"Gorgrond"},
	},[[
	step
		map Gorgrond
		path	follow smart; loop on; ants curved; dist 10
		path	50.5,76.1	52.7,75.6	54.1,72.5
		path	53.7,68.1	55.1,65.2	56.3,64.1
		path	59.3,64.1	61.1,62.6	60.4,59.2
		path	59.2,57.6	57.5,57.8	56.2,60.2
		path	55.9,62.5	54.0,62.6	52.4,62.4
		path	52.1,64.4	50.8,64.8	50.5,67.3
		path	49.4,68.9	48.3,70.6	47.2,70.4
		path	45.4,71.2	44.5,72.2	44.7,74.2
		path	45.0,75.9	45.6,77.0	47.7,76.0
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 240 Gorgrond Flytrap##109126
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Nagrand Arrowbloom",{
	meta={goldtype="route",skillreq={draenor_herbalism=1},levelreq=35},
	items={{109128,404}},
	maps={"Nagrand D"},
	},[[
	step
		map Nagrand D
		path	follow smart; loop on; ants curved; dist 20
		path	87.8,65.2	87.4,63.1	86.4,61.4
		path	84.7,60.5	84.3,60.1	84.4,58.1
		path	83.9,57.8	83.7,56.6	83.3,53.8
		path	84.0,51.9	84.6,50.1	82.5,47.7
		path	81.3,46.1	80.8,43.4	80.2,38.6
		path	77.6,35.9	76.1,35.0	76.5,32.1
		path	76.4,30.3	75.7,29.8	74.2,29.7
		path	73.5,29.7	73.0,28.5	73.2,27.0
		path	74.2,25.1	74.3,22.7	73.9,21.6
		path	73.2,20.8	71.6,19.0	70.8,19.3
		path	69.5,21.1	69.2,22.1	66.4,23.4
		path	66.4,26.1	65.7,29.5	65.0,32.5
		path	64.1,35.1	64.3,35.6	65.3,36.4
		path	65.2,37.2	64.0,40.0	64.3,38.9
		path	63.3,41.8	62.7,42.5	60.4,43.0
		path	58.9,42.7	58.7,44.5	58.1,47.0
		path	56.5,48.7	54.1,49.1	51.8,46.6
		path	50.8,47.0	50.8,48.7	49.5,50.2
		path	47.8,49.4	46.7,48.4	45.9,49.0
		path	44.3,50.0	43.0,51.4	43.6,54.0
		path	44.5,54.4	46.0,55.3	47.2,54.8
		path	49.2,54.2	50.8,53.7	53.0,55.0
		path	53.8,58.1	53.3,60.3	53.3,63.0
		path	53.3,66.5	53.3,67.5	53.8,68.2
		path	55.9,69.6	56.7,69.1	57.3,67.1
		path	59.8,66.3	60.8,64.1	60.7,60.8
		path	60.3,56.8	59.1,53.1	59.1,50.8
		path	60.2,50.3	61.1,50.3	62.0,52.2
		path	62.8,51.8	63.8,49.7	63.6,47.6
		path	63.4,46.2	65.8,44.4	68.5,45.3
		path	68.5,46.7	71.5,48.5	72.8,49.5
		path	71.3,53.7	71.0,56.5	72.4,57.6
		path	75.4,57.5	77.2,58.6	78.2,63.4
		path	80.4,66.2	84.1,68.1	86.3,67.5
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 404 Nagrand Arrowbloom##109128
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Talador Orchid",{
	meta={goldtype="route",skillreq={draenor_herbalism=1},levelreq=20},
	items={{109129,576}},
	maps={"Talador"},
	},[[
	step
		map Talador
		path	follow smart; loop on; ants curved; dist 20
		path	57.7,46.9	56.3,49.8	54.2,52.0
		path	52.7,50.3	51.2,51.5	49.4,54.8
		path	46.7,52.6	44.5,53.2	41.5,54.4
		path	39.6,53.6	40.7,57.4	40.5,61.5
		path	39.7,63.2	39.2,67.9	39.4,72.9
		path	41.0,76.8	39.4,81.7	40.3,86.7
		path	42.5,88.4	46.0,87.5	48.1,85.9
		path	52.4,85.1	56.0,84.4	57.9,78.8
		path	59.3,77.5	58.8,74.0	60.3,65.7
		path	63.3,64.9	62.8,59.1	61.3,56.6
		path	59.5,53.0	59.1,48.6
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 576 Talador Orchid##109129
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])


-----------------------------
-----    INSCRIPTION    -----
-----------------------------

--  Classic  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Dusky Pigment/Verdant Pigment",{
	meta={goldtype="route",skillreq={herbalism=1,inscription=1},levelreq=7},
	items={{785,452},{2452,140},{2450,388},{2453,20},{39334,532},{43103,52}},
	maps={"Hillsbrad Foothills"},
	},[[
	step
		map Hillsbrad Foothills
		path	follow loose; loop on; ants curved; dist 10
		path	56.5,34.5	56.2,38.4	61.7,49.2
		path	61.1,60.8	65.6,52.2	73.8,59.2
		path	67.8,66.8	61.5,65.9	66.1,72.1
		path	63.7,76.3	56.1,70.6	48.8,61.8
		path	41.9,70.5	35.5,74.0	34.9,69.5
		path	30.3,69.5	31.6,62.5	34.7,54.4
		path	31.1,46.7	37.5,39.8	39.3,48.3
		path	44.5,50.3	49.2,47.6	50.1,42.5
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 452 Mageroyal##785 |n
		|goldcollect 140 Swiftthistle##2452 |n
		|goldcollect 388 Briarthorn##2450 |n
		|goldcollect 20 Bruiseweed##2453 |n
		Mill the herbs you've gathered into Dusky Pigment and Verdant Pigment |cast Milling##51005
		|goldcollect 532 Dusky Pigment##39334
		|goldcollect 52 Verdant Pigment##43103
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Golden Pigment/Burnt Pigment",{
	meta={goldtype="route",skillreq={herbalism=1,inscription=1},levelreq=10},
	items={{3356,448},{2453,28},{3355,28},{39338,296},{43104,80}},
	maps={"Northern Stranglethorn"},
	},[[
	step
		map Northern Stranglethorn
		path	follow loose; loop on; ants curved; dist 25
		path	39.9,23.0	34.2,20.7	29.8,30.5
		path	37.7,27.5	38.5,36.6	35.3,43.5
		path	42.1,47.0	41.1,51.5	46.1,50.0
		path	48.5,44.1	53.8,47.5	50.1,55.9
		path	55.8,56.5	56.5,63.8	63.2,61.5
		path	60.9,51.5	61.3,40.2	63.5,34.9
		path	61.5,27.3	55.9,31.1	52.7,22.1
		path	48.1,33.6
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 448 Kingsblood##3356 |n
		|goldcollect 28 Bruiseweed##2453 |n
		|goldcollect 28 Wild Steelbloom##3355 |n
		Mill the herbs you've gathered into Golden Pigment and Burnt Pigment |cast Milling##51005
		|goldcollect 296 Golden Pigment##39338
		|goldcollect 80 Burnt Pigment##43104
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Emerald Pigment/Indigo Pigment",{
	meta={goldtype="route",skillreq={herbalism=1,inscription=1},levelreq=15},
	items={{8838,300},{3357,52},{3358,380},{39339,280},{43105,80},{39340,120,'crap'},{29338,48,'crap'},{43106,12,'crap'},{43104,8,'crap'}},
	maps={"Eastern Plaguelands"},
	},[[
	step
		map Eastern Plaguelands
		path	follow loose; loop on; ants curved; dist 25
		path	72.7,56.6	72.0,65.5	61.8,63.8
		path	60.5,67.5	68.3,74.8	62.7,74.5
		path	56.5,79.7	50.5,68.2	40.7,72.8
		path	35.5,76.8	26.1,76.7	22.8,75.5
		path	19.9,78.9	17.2,71.9	10.2,71.7
		path	16.5,61.5	19.5,64.7	26.5,63.2
		path	37.1,64.5	41.5,61.8	43.9,55.5
		path	51.7,45.6	44.0,34.3	46.3,21.3
		path	52.9,14.8	62.6,24.0	70.0,31.0
		path	60.0,35.0	65.8,37.8	66.2,44.8
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 300 Sungrass##8838 |n
		|goldcollect 52 Liferoot####3357 |n
		|goldcollect 380 Khadgar's Whisker##3358 |n
		Mill the herbs you've gathered into Emerald Pigment and Indigo Pigment |cast Milling##51005
		|goldcollect 280 Emerald Pigment##39339
		|goldcollect 80 Indigo Pigment##43105
		meta crap_items_follow=1
		|goldcollect 120 Violet Pigment##39340
		|goldcollect 48 Golden Pigment##29338
		|goldcollect 12 Ruby Pigment##43106
		|goldcollect 8 Burnt Pigment##43104
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Violet Pigment/Ruby Pigment",{
	meta={goldtype="route",skillreq={herbalism=1,inscription=1},levelreq=15},
	items={{3818,68},{8839,332},{3358,56},{39340,200},{43106,60},{39339,72,'crap'},{43105,4,'crap'}},
	maps={"Feralas"},
	},[[
	step
		map Feralas
		path	follow loose; loop on; ants curved; dist 25
		path	52.9,15.4	53.9,7.3	49.7,4.9
		path	48.5,6.8	50.1,9.9	47.7,11.9
		path	44.0,12.7	47.9,15.5	46.5,20.1
		path	49.4,23.9	49.3,24.9	51.5,13.5
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 68 Fadeleaf##3818 |n --15
		|goldcollect 332 Blindweed##8839 |n --85
		|goldcollect 56 Khadgar's Whisker##3358 |n --15
		Mill the herbs you've gathered into Violet Pigment and Ruby Pigment |cast Milling##51005
		|goldcollect 200 Violet Pigment##39340
		|goldcollect 60 Ruby Pigment##43106
		meta crap_items_follow=1
		|goldcollect 72 Emerald Pigment##39339
		|goldcollect 4 Indigo Pigment##43105
		|goldcollect 40 Ruby Pigment##43106
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Silvery Pigment/Sapphire Pigment",{
	meta={goldtype="route",skillreq={herbalism=1,inscription=1},levelreq=15},
	items={{13467,404},{13465,44},{39341,284},{43107,60}},
	maps={"Winterspring"},
	},[[
	step
		map Winterspring/0
		path	follow loose; loop on; ants curved; dist 25
		path	62.4,51.3	63.9,54.3	66.4,57.1
		path	65.9,65.4	64.2,69.0	60.6,73.0
		path	64.3,77.5	61.2,79.7	63.9,80.0
		path	60.5,85.9	57.1,82.0	58.1,69.5
		path	53.8,64.7	56.3,62.3	58.6,64.3
		path	62.2,61.5	59.2,55.1	54.2,59.7
		path	47.4,58.2	44.5,58.5	43.7,55.3
		path	39.0,55.8	34.2,57.1	27.5,55.9
		path	24.2,58.0	24.0,49.8	27.7,49.5
		path	45.0,51.3	48.3,53.0	51.6,54.3
		path	54.3,51.5	50.0,48.1	52.5,42.6
		path	57.1,39.3	56.0,34.9	54.8,29.6
		path	52.0,33.5	46.7,30.2	46.3,19.5
		path	45.2,14.8	50.2,19.2	52.8,23.0
		path	55.4,23.7	58.9,22.5	57.0,29.3
		path	61.2,31.9	65.4,30.6	65.3,38.6
		path	66.7,45.0	57.0,45.7
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 404 Icecap##13467 |n
		|goldcollect 44 Mountain Silversage##13465 |n
		Mill the herbs you've gathered into Silvery Pigment and Sapphire Pigment |cast Milling##51005
		|goldcollect 284 Silvery Pigment##39341
		|goldcollect 60 Sapphire Pigment##43107
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

--  Outland  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Nether Pigment/Ebon Pigment",{
	meta={goldtype="route",skillreq={outland_herbalism=1,outland_inscription=1},levelreq=25},
	items={{22792,168},{22785,116},{22789,52},{22786,32},{22794,4,'crap'},{39342,228,'crap'},{43108,32,'crap'}},
	maps={"Shadowmoon Valley"},
	},[[
	step
		map Shadowmoon Valley
		path	follow smart; loop on; ants curved; dist 20
		path	42.5,59.0	43.4,65.1	43.3,72.4
		path	47.7,69.6	47.3,51.7	51.5,59.0
		path	51.4,66.4	56.9,73.9	61.2,68.1
		path	57.8,57.2	62.0,56.2	65.2,61.5
		path	70.6,60.7	68.5,58.0	67.9,47.2
		path	72.1,47.5	71.5,40.8	66.3,39.3
		path	58.5,45.3	49.9,33.9	53.1,33.5
		path	59.6,37.3	67.1,28.9	66.0,21.8
		path	58.0,23.6	55.6,16.8	52.5,15.6
		path	52.5,21.6	45.5,15.1	42.3,38.2
		path	38.3,32.1	31.2,34.6	24.9,29.6
		path	22.0,34.7	22.0,40.8	29.7,47.8
		path	27.2,52.6	31.6,53.8
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 168 Nightmare Vine##22792 |n --45
		|goldcollect 116 Felweed##22785 |n --30
		|goldcollect 52 Terocone##22789 |n --15
		|goldcollect 32 Dreaming Glory##22786 |n --10
		meta crap_items_follow=1
		|goldcollect 4 Fel Lotus##22794 |n
		Mill the herbs you've gathered into Nether Pigment and Ebon Pigment |cast Milling##51005
		|goldcollect 228 Nether Pigment##39342
		|goldcollect 32 Ebon Pigment##43108
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

--  Northrend  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Azure Pigment/Icy Pigment",{
	meta={goldtype="route",skillreq={northrend_herbalism=1,northrend_inscription=1},levelreq=25},
	items={{36905,336},{36906,280},{37704,128,'crap'},{36908,12,'crap'},{39343,396,'crap'},{43109,88,'crap'}},
	maps={"The Storm Peaks"},
	},[[
	step
		map The Storm Peaks
		path	follow loose; loop on; ants curved; dist 20
		path	39.5,88.9	33.5,89.5	32.5,86.9
		path	31.4,83.1	35.7,82.2	37.3,74.3
		path	32.8,74.5	29.1,68.0	27.0,72.4
		path	24.6,72.5	26.7,67.6	27.8,60.0
		path	25.4,58.6	22.6,62.8	21.6,55.7
		path	23.9,55.4	30.4,50.5	34.6,40.4
		path	40.9,38.0	44.8,40.5	39.6,44.8
		path	35.5,43.0	35.7,47.1	38.8,48.5
		path	36.8,64.3	41.2,62.5	45.2,55.0
		path	48.6,60.9	47.0,66.7	56.8,63.1
		path	56.5,56.6	56.0,50.9	59.7,47.8
		path	59.9,45.0	65.6,40.6	65.9,43.8
		path	64.1,54.1	68.6,47.7	72.9,49.8
		path	70.3,54.9	72.5,65.0	65.3,59.3
		path	61.3,61.9	58.6,63.5	56.7,66.0
		path	56.9,71.0	52.2,69.5	48.3,77.4
		path	43.6,77.0	41.5,79.2	39.9,76.3
		path	38.4,80.8
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 336 Lichbloom##36905 |n
		|goldcollect 280 Icethorn##36906 |n
		meta crap_items_follow=1
		|goldcollect 128 Crystallized Life##37704
		|goldcollect 12 Frost Lotus##36908
		Mill the herbs you've gathered into Azure Pigment and Icy Pigment |cast Milling##51005
		|goldcollect 396 Azure Pigment##39343
		|goldcollect 88 Icy Pigment##43109
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

--  Cataclysm  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Ashen Pigment/Burning Embers",{
	meta={goldtype="route",skillreq={cataclysm_herbalism=1,cataclysm_inscription=1},levelreq=30},
	items={{52988,640},{52329,208,'crap'},{63122,12,'crap'},{61979,404,'crap'},{61980,60,'crap'}},
	maps={"Uldum"},
	},[[
	step
		map Uldum
		path	follow loose; loop on; ants curved; dist 15
		path	59.0,30.5	57.0,20.9	59.3,14.9
		path	61.5,14.0	61.2,25.6	62.3,35.4
		path	57.1,44.7	60.5,58.3	67.9,72.9
		path	69.8,76.5	64.3,77.6	61.2,82.1
		path	59.4,64.5	56.2,50.0	54.3,45.9
		path	51.5,44.6	45.9,29.0	53.4,35.9
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 640 Whiptail##52988 |n
		meta crap_items_follow=1
		|goldcollect 208 Volatile Life##52329
		|goldcollect 12 Lifegiving Seed##63122
		Mill the herbs you've gathered into Ashen Pigment and Burning Embers |cast Milling##51005
		|goldcollect 404 Ashen Pigment##61979
		|goldcollect 60 Burning Embers##61980
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

--  Pandaria  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Misty Pigment/Shadow Pigment",{
	meta={goldtype="route",skillreq={pandaria_herbalism=1,pandaria_inscription=1},levelreq=10},
	items={{72234,740},{72237,60},{89640,80,'crap'},{72238,12,'crap'},{79251,408,'crap'},{79253,36,'crap'}},
	maps={"The Jade Forest"},
	},[[
	step
		map The Jade Forest
		path	follow loose; loop on; ants curved; dist 20
		path	42.7,82.5	39.5,74.2	45.3,71.4
		path	46.0,78.7	48.9,81.5	50.5,75.0
		path	48.4,66.7	34.3,61.6	37.5,56.9
		path	37.8,53.2	29.8,52.5	32.1,51.0
		path	30.3,46.9	31.0,41.6	31.7,35.3
		path	35.0,34.9	37.6,36.7	34.3,43.7
		path	38.2,44.7	42.5,36.5	37.9,27.1
		path	29.7,30.6	25.6,27.7	31.3,21.2
		path	30.5,16.5	34.6,12.3	40.5,10.0
		path	44.6,17.1	49.8,18.0	47.8,28.0
		path	48.0,38.3	55.2,30.4	53.5,38.5
		path	53.3,47.4	51.8,54.0	52.5,65.0
		path	60.6,71.0	64.2,78.9	66.4,84.6
		path	62.8,92.3	56.7,91.8	59.6,88.6
		path	55.5,85.1	54.5,79.4	51.6,86.7
		path	45.1,92.6	43.7,90.4
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 740 Green Tea Leaf##72234 |n --185
		|goldcollect 60 Rain Poppy##72237 |n --15
		meta crap_items_follow=1
		|goldcollect 80 Life Spirit##89640
		|goldcollect 12 Golden Lotus##72238
		Mill the herbs you've gathered into Shadow Pigment and Misty Pigment |cast Milling##51005
		|goldcollect 408 Shadow Pigment##79251
		|goldcollect 36 Misty Pigment##79253
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

--  Draenor  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Cerulean Pigment",{
	meta={goldtype="route",skillreq={draenor_herbalism=1,draenor_inscription=1},levelreq=20},
	items={{109129,576},{114931,248}},
	maps={"Talador"},
	},[[
	step
		map Talador
		path	follow smart; loop on; ants curved; dist 20
		path	57.7,46.9	56.3,49.8	54.2,52.0
		path	52.7,50.3	51.2,51.5	49.4,54.8
		path	46.7,52.6	44.5,53.2	41.5,54.4
		path	39.6,53.6	40.7,57.4	40.5,61.5
		path	39.7,63.2	39.2,67.9	39.4,72.9
		path	41.0,76.8	39.4,81.7	40.3,86.7
		path	42.5,88.4	46.0,87.5	48.1,85.9
		path	52.4,85.1	56.0,84.4	57.9,78.8
		path	59.3,77.5	58.8,74.0	60.3,65.7
		path	63.3,64.9	62.8,59.1	61.3,56.6
		path	59.5,53.0	59.1,48.6
		_Follow_ the path, collecting any nodes you come across
		|goldcollect 576 Talador Orchid##109129 |n
		Mill the herbs you've gathered into Cerulean Pigment |cast Milling##51005
		|goldcollect 248 Cerulean Pigment##114931
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])


--------------------------------
-----    JEWELCRAFTING    ------
--------------------------------

--  Classic  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Tigerseye, Malachite",{
	meta={goldtype="route",skillreq={mining=1,jewelcrafting=1},levelreq=5},
	items={{2770,1},{2835,1},{774,96},{818,72},{1210,76}},
	maps={"Durotar","Darkshore"},
	},[[
	step
		Click Here to Farm in Durotar |confirm |next "Durotar"
		Click Here to Farm in Darkshore |confirm |next
	step
		talk Zidormi##141489
		Ask her _"Can you show me what Darkshore was like before the battle?"_
		Travel to the Past |complete ZGV.InPhase('Old Darnassus') |goto Darkshore/0 48.86,24.46
	step
		map Darkshore/0
		path follow smart; loop on; ants curved; dist 20
		path	56.3,17.4	59.4,9.3	65.6,4.4	63.3,16.2	60.2,25.3
		path	54.4,33.6	50.6,27.7	48.9,38.7	47.3,50.9	45.5,59.2
		path	46.2,71.4	46.6,79.1	40.0,86.4	35.3,88.9	32.5,83.5
		path	36.8,72.4	40.1,59.0	39.7,44.8	37.9,32.4	42.7,31.9
		path	44.6,20.0	54.7,20.7
		Use the Prospecting ability |cast Prospecting##31252
		|tip Use it on the Ore in your bags.
		|goldcollect Copper Ore##2770 |n
		|goldcollect Rough Stone##2835 |n
		|goldcollect 96 Malachite##774
		|goldcollect 72 Tigerseye##818
		|goldcollect 76 Shadowgem##1210 |n
		|goldtracker
		Click Here to Sell Items |confirm |next "Sell_Items"
	step
	label "Durotar"
		map Durotar/0
		path follow smart; loop on; ants curved; dist 20
		path	55.1,10.2	53.8,18.5	56.3,24.6	52.7,29.3	54.0,39.8
		path	58.7,41.5	59.5,54.3	55.7,56.0	56.1,69.4	50.8,74.2
		path	52.3,66.7	49.8,49.2	39.4,51.8	37.9,30.4	39.6,17.6
		path	42.8,19.7	44.6,24.6	48.0,36.6	49.6,32.1	50.5,27.3
		path	50.0,22.6	49.8,16.8
		Use the Prospecting ability |cast Prospecting##31252
		|tip Use it on the Ore in your bags.
		|goldcollect Copper Ore##2770 |n
		|goldcollect Rough Stone##2835 |n
		|goldcollect 80 Malachite##774
		|goldcollect 56 Tigerseye##818
		|goldcollect 36 Shadowgem##1210 |n
		|goldtracker
		Click Here to Sell Items |confirm |next "Sell_Items"
	step
	label "Sell_Items"
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Shadowgem, Moss Agate, Lesser Moonstone, Jade",{
	meta={goldtype="route",skillreq={mining=1,jewelcrafting=1},levelreq=10},
	items={{2771,1},{2836,1},{1210,36},{1206,28},{1705,48},{1529,4},{3864,4},{7909,4},{2775,40}},
	maps={"Northern Stranglethorn","Ashenvale"},
	},[[
	step
		Click Here to Farm in Northern Stranglethorn |confirm |next "Northern_Stranglethorn"
		Click Here to Farm in Ashenvale |confirm |next
	step
		map Ashenvale/0
		path follow loose; loop on; ants curved
		path	41.8,40.3	41.6,32.5	31.3,38.3	33.7,21.5	24.9,30.0
		path	26.0,18.0	15.0,14.1	17.3,28.2	20.9,42.2	20.9,55.5
		path	29.7,50.8	33.7,69.8	42.3,62.6	45.3,71.6	59.6,77.8
		path	56.5,64.8	67.0,69.1	76.7,73.7	87.5,79.7	79.5,47.1
		path	66.0,56.5	61.9,42.6	54.3,36.7	50.9,54.5
		Use the Prospecting ability |cast Prospecting##31252
		|tip Use it on the Ore in your bags.
		|goldcollect Tin Ore##2771 |n
		|goldcollect Coarse Stone##2836 |n
		|goldcollect 36 Shadowgem##1210
		|goldcollect 28 Moss Agate##1206
		|goldcollect 48 Lesser Moonstone##1705
		|goldcollect 4 Jade##1529
		|goldcollect 4 Citrine##3864
		|goldcollect 4 Aquamarine##7909
		|goldtracker
		Click Here to Sell Items |confirm |next "Sell_Items"
	step
	label "Northern_Stranglethorn"
		map Northern Stranglethorn/0
		path follow loose; loop on; ants curved
		path	40.4,45.0	36.3,44.1	34.0,38.8	31.1,34.1	27.0,31.8
		path	21.4,25.2	21.8,18.7	26.6,21.9	31.1,22.4	34.6,20.9
		path	33.8,17.2	38.5,17.9	46.3,19.1	52.5,20.5	58.6,16.8
		path	63.5,17.5	63.2,22.1	60.3,24.3	57.2,28.2	60.8,34.6
		path	66.1,40.9	62.9,47.1	56.2,50.4	48.0,55.2	44.3,55.5
		path	48.7,47.2	47.7,39.2	50.2,28.6	44.6,28.2	42.9,34.7
		path	41.4,41.2
		Use the Prospecting ability |cast Prospecting##31252
		|tip Use it on the Ore in your bags.
		|goldcollect 40 Silver Ore##2775
		|goldcollect Tin Ore##2771 |n
		|goldcollect Coarse Stone##2836 |n
		|goldcollect 40 Shadowgem##1210
		|goldcollect 36 Moss Agate##1206
		|goldcollect 60 Lesser Moonstone##1705
		|goldcollect 4 Jade##1529
		|goldcollect 4 Citrine##3864
		|goldcollect 4 Aquamarine##7909
		|goldtracker
		Click Here to Sell Items |confirm
	step
	label "Sell_Items"
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Citrine, Aquamarine",{
	meta={goldtype="route",skillreq={mining=1,jewelcrafting=1},levelreq={15}},
	items={{7911,52},{3858,1},{2776,1},{7912,1},{7909,84},{3864,64},{7910,72},{12361,12},{12799,8}},
	maps={"Burning Steppes","Badlands"},
	},[[
	step
		Click Here to Farm in Badlands |confirm |next "Badlands"
		Click Here to Farm in Burning Steppes |confirm |next
	step
		map Burning Steppes/0
		path follow loose; loop on; ants curved
		path	31.3,59.8	21.5,62.0	15.6,62.1	7.8,56.4	9.3,45.8
		path	21.6,47.0	31.2,43.6	39.2,33.4	46.4,28.1	52.8,29.0
		path	50.3,44.6	59.2,38.8	59.9,27.5	68.2,25.2	74.6,27.1
		path	81.6,30.4	71.2,36.0	65.5,42.1	66.9,49.5	72.2,50.1
		path	73.7,43.5	80.1,41.0	81.7,54.6	81.6,62.6	76.2,58.4
		path	72.6,67.5	68.6,61.9	61.5,60.5	56.2,49.0	51.5,60.0
		path	44.2,65.5	37.5,60.0
		Use the Prospecting ability |cast Prospecting##31252
		|tip Use it on the Ore in your bags.
		|goldcollect 52 Truesilver Ore##7911
		|goldcollect Mithril Ore##3858 |n
		|goldcollect Gold Ore##2776 |n
		|goldcollect Solid Stone##7912 |n
		|goldcollect 84 Aquamarine##7909
		|goldcollect 64 Citrine##3864
		|goldcollect 72 Star Ruby##7910
		|goldcollect 12 Blue Sapphire##12361
		|goldcollect 8 Large Opal##12799
		|goldtracker
		Click Here to Sell Items |confirm |next "Sell_Items"
	step
	label "Badlands"
		map Badlands/0
		path follow smart; loop on; ants curved
		path	70.2,28.8	72.0,25.6	73.5,31.0	72.6,38.1	73.7,43.2
		path	75.0,48.5	69.5,53.7	66.5,57.2	62.5,46.5	59.0,42.5
		path	56.5,47.2	57.5,59.8	50.1,65.3	44.6,57.2	41.2,66.6
		path	32.7,62.6	26.3,63.6	14.0,69.9	13.6,77.3	11.4,78.5
		path	12.7,58.2	11.7,49.4	10.7,38.7	15.2,35.9	25.0,38.6
		path	35.9,32.2	45.0,24.5	50.0,12.2	52.8,21.8	59.8,29.7
		Use the Prospecting ability |cast Prospecting##31252
		|tip Use it on the Ore in your bags.
		|goldcollect 36 Truesilver Ore##7911
		|goldcollect Mithril Ore##3858 |n
		|goldcollect Gold Ore##2776 |n
		|goldcollect Solid Stone##7912 |n
		|goldcollect 56 Aquamarine##7909
		|goldcollect 48 Citrine##3864
		|goldcollect 52 Star Ruby##7910
		|goldcollect 8 Blue Sapphire##12361
		|goldcollect 4 Large Opal##12799
		|goldtracker
		Click Here to Sell Items |confirm
	step
	label "Sell_Items"
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Huge Emerald, Large Opal, Azerothian Diamond, Blue Sapphire, Star Ruby",{
	meta={goldtype="route",skillreq={jewelcrafting=1,mining=1},levelreq={15}},
	items={{7911,28},{10620,1},{12365,1},{12363,16},{12800,24},{7910,24},{12364,32},{12799,60},{12361,56},{7909,8},{3864,4}},
	maps={"Winterspring","Silithus"},
	},[[
	step
		Click Here to Farm in Winterspring |confirm |next "Winterspring"
		Click Here to Farm in Silithus |confirm |next
	step
		talk Zidormi##128607
		|tip She is at the top of the ramp leading from Un'Goro Crater to Silithus.
		Ask her _"Can you show me what Silithus was like before the Wound in the World?"_
		Travel to the Past |complete ZGV.InPhase('Old Silithus') |goto Silithus/0 78.93,21.97
	step
		map Silithus/0
		path follow loose; loop on; ants curved
		path	47.9,18.4	58.6,11.1	67.5,15.4	68.7,23.6	71.9,28.5
		path	72.5,39.5	66.7,44.7	62.3,35.4	53.4,45.0	66.9,54.1
		path	67.3,63.0	68.9,71.5	66.3,83.0	56.4,83.0	48.5,79.1
		path	40.5,80.9	24.5,78.8	28.3,68.0	34.0,65.1	25.6,57.1
		path	27.8,43.5	27.2,32.6	28.5,16.2	28.8,10.2	35.0,12.0
		path	35.5,24.0	43.9,15.2
		Use the Prospecting ability |cast Prospecting##31252
		|tip Use it on the Ore in your bags.
		|goldcollect 28 Truesilver Ore##7911
		|goldcollect Thorium Ore##10620 |n
		|goldcollect Dense Stone##12365 |n
		|goldcollect 16 Arcane Crystal##12363
		|goldcollect 24 Azerothian Diamond##12800
		|goldcollect 24 Star Ruby##7910
		|goldcollect 32 Huge Emerald##12364
		|goldcollect 60 Large Opal##12799
		|goldcollect 56 Blue Sapphire##12361
		|goldcollect 8 Aquamarine##7909
		|goldcollect 4 Citrine##3864
		|goldtracker
		Click Here to Sell Items |confirm |next "Sell_Items"
	step
	label "Winterspring"
		map Winterspring
		path follow smart; loop on; ants curved
		path	58.1,44.2	60.1,36.2	59.6,28.5	58.8,19.8	54.5,21.2
		path	49.9,18.3	44.9,14.0	46.0,24.6	48.3,37.1	49.8,44.5
		path	42.0,48.3	33.5,47.2	29.1,52.2	23.5,46.1	22.3,62.4
		path	28.0,58.4	37.1,58.4	45.3,57.4	48.9,60.7	53.7,63.6
		path	55.6,74.4	56.6,80.1	62.6,80.9	63.2,72.1	67.5,62.3
		path	60.5,61.5
		Use the Prospecting ability |cast Prospecting##31252
		|tip Use it on the Ore in your bags.
		|goldcollect 56 Truesilver Ore##7911
		|goldcollect Thorium Ore##10620 |n
		|goldcollect Dense Stone##12365 |n
		|goldcollect 20 Arcane Crystal##12363
		|goldcollect 28 Azerothian Diamond##12800
		|goldcollect 24 Star Ruby##7910
		|goldcollect 40 Huge Emerald##12364
		|goldcollect 64 Large Opal##12799
		|goldcollect 68 Blue Sapphire##12361
		|goldcollect 8 Aquamarine##7909
		|goldcollect 4 Citrine##3864
		|goldtracker
		Click Here to Sell Items |confirm
	step
	label "Sell_Items"
		#include "auctioneer"
]])

--  Outland  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Golden Draenite, Azure Moonstone, Blood Garnet, Deep Peridot, Flame Spessarite, Shadow Draenite",{
	meta={goldtype="route",skillreq={outland_jewelcrafting=1,outland_mining=1},levelreq={10}},
	items={{23427,16},{23424,1},{23425,1},{22573,1},{22574,1},{23112,12},{23077,4},{23079,8},{23117,28},{21929,16},{23107,12}},
	maps={"Zangarmarsh","Hellfire Peninsula"},
	},[[
	step
		Click Here to Farm in Hellfire Peninsula |confirm |next "Hellfire_Peninsula"
		Click Here to Farm in Zangarmarsh |confirm |next
	step
		map Zangarmarsh/0
		path follow loose; loop on; ants curved
		path	49.5,66.9	58.8,70.5	66.6,74.9	69.1,87.0	72.2,87.3
		path	74.8,91.8	86.3,90.7	85.7,79.0	82.2,69.5	81.8,62.0
		path	83.5,58.9	87.4,55.7	87.0,46.2	88.5,36.9	86.3,27.8
		path	77.6,29.5	72.1,32.7	70.2,36.5	63.9,33.1	54.7,32.8
		path	46.2,29.5	41.0,30.2	34.6,14.8	31.5,20.9	20.7,16.6
		path	20.2,8.9	20.8,4.0	16.5,5.8	16.2,14.7	14.8,30.6
		path	10.0,44.8	7.1,49.8	10.5,63.9	15.9,64.4	17.6,70.0
		path	25.5,69.1	27.7,60.2	36.8,67.0
		Use the Prospecting ability |cast Prospecting##31252
		|tip Use it on the Ore in your bags.
		|goldcollect 16 Eternium Ore##23427
		|goldcollect Fel Iron Ore##23424 |n
		|goldcollect Adamantite Ore##23425 |n
		|goldcollect Mote of Earth##22573 |n
		|goldcollect Mote of Fire##22574
		|goldcollect 12 Golden Draenite##23112
		|goldcollect 4 Blood Garnet##23077
		|goldcollect 8 Deep Peridot##23079
		|goldcollect 28 Azure Moonstone##23117
		|goldcollect 16 Flame Spessarite##21929
		|goldcollect 12 Shadow Draenite##23107
		|goldtracker
		Click Here to Sell Items |confirm |next "Sell_Items"
	step
	label "Hellfire_Peninsula"
		map Hellfire Peninsula/0
		path follow smart; loop on; ants curved; dist 20
		path	69.3,47.5	74.5,38.7	68.2,37.7	62.0,31.0	58.0,32.8
		path	54.0,26.7	46.0,29.3	34.1,29.1	32.0,34.5	38.5,38.2
		path	35.7,40.7	33.4,49.8	30.3,48.6	32.5,43.3	28.5,39.3
		path	26.5,45.5	22.6,45.1	18.0,38.3	12.5,36.1	17.9,46.3
		path	11.8,41.9	12.0,47.0	06.2,49.5	15.4,62.4	20.3,52.9
		path	24.0,61.1	21.2,62.7	28.1,80.8	27.7,69.5	30.5,72.8
		path	30.3,59.9	34.8,66.6	37.7,53.3	46.9,46.3	49.3,49.5
		path	60.3,48.6	60.8,52.8	52.1,52.7	47.2,57.7	45.9,75.5
		path	33.5,89.6	33.1,92.6	49.1,77.5	44.6,86.2	55.5,82.8
		path	58.7,78.8	56.5,72.3	65.8,63.6	67.1,71.7	63.0,73.3
		path	65.8,77.9	68.7,77.6	71.0,71.7	70.1,68.6	65.0,59.8
		path	65.6,56.0	75.0,63.9	78.4,80.2	80.7,77.5	77.3,63.7
		path	72.7,60.2	71.5,53.1	68.3,52.0
		Use the Prospecting ability |cast Prospecting##31252
		|tip Use it on the Ore in your bags.
		|goldcollect 16 Eternium Ore##23427
		|goldcollect Fel Iron Ore##23424 |n
		|goldcollect Mote of Earth##22573 |n
		|goldcollect Mote of Fire##22574
		|goldcollect 8 Golden Draenite##23112
		|goldcollect 12 Blood Garnet##23077
		|goldcollect 4 Deep Peridot##23079
		|goldcollect 32 Azure Moonstone##23117
		|goldcollect 12 Flame Spessarite##21929
		|goldcollect 20 Shadow Draenite##23107
		|goldtracker
		Click Here to Sell Items |confirm
	step
	label "Sell_Items"
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Adamantite Powder, Living Ruby, Talasite, Nightseye, Star Of Elune, Dawnstone, Noble Topaz",{
	meta={goldtype="route",skillreq={outland_jewelcrafting=1,outland_mining=1},levelreq={15}},
	items={{23426,12},{23427,64},{23424,1},{23425,1},{22573,1},{22574,1},{24243,88},{23436,8},{23441,4},{23437,4},{23438,12},{23440,12},{23439,4}},
	maps={"Nagrand"},
	},[[
	step
		map Nagrand/0
		path follow smart; loop on; ants curved; dist 20
		path	44.5,66.0	43.5,78.5	38.5,83.3	31.9,81.9	27.8,76.5
		path	28.3,71.7	25.2,61.1	32.2,60.3	34.1,44.3	24.3,48.5
		path	18.2,39.3	10.5,43.7	7.1,39.9	17.7,31.7	25.6,39.5
		path 	26.8,23.6	25.7,16.5	38.8,37.0	39.1,27.5	42.8,19.5
		path	49.3,24.1	57.0,24.5	60.5,31.6	67.5,35.5	73.5,44.8
		path	66.1,51.9	76.3,62.2	69.8,72.5	70.1,83.3	63.0,73.1
		path	59.8,62.0	56.0,54.7	48.0,57.5
		Use the Prospecting ability |cast Prospecting##31252
		|tip Use it on the Ore in your bags.
		|goldcollect 12 Khorium Ore##23426
		|goldcollect 64 Eternium Ore##23427
		|goldcollect Fel Iron Ore##23424 |n
		|goldcollect Adamantite Ore##23425 |n
		|goldcollect Mote of Earth##22573 |n
		|goldcollect Mote of Fire##22574 |n
		|goldcollect 88 Adamantite Powder##24243
		|goldcollect 8 Living Ruby##23436
		|goldcollect 4 Nightseye##23441
		|goldcollect 4 Talasite##23437
		|goldcollect 12 Star of Elune##23438
		|goldcollect 12 Dawnstone##23440
		|goldcollect 4 Noble Topaz##23439
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

--  Northrend  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Huge Citrine, Shadow Crystal, Chalcedony, Bloodstone, Sun Crystal, Dark Jade",{
	meta={goldtype="route",skillreq={northrend_jewelcrafting=1,northrend_mining=1},levelreq={20}},
	items={{36909,1},{36912,1},{37701,28},{37705,32},{36929,12},{36926,4},{36923,12},{36917,8},{36920,8},{36932,24}},
	maps={"Zul'Drak"},
	},[[
	step
		map Zul'Drak/0
		path follow smart; loop on; ants curved; dist 20
		path	31.2,76.2	20.0,76.5	11.6,78.1	14.0,68.3	23.7,69.5
		path	25.2,63.2	16.1,57.6	20.9,47.5	24.3,54.8	36.0,62.4
		path	34.3,55.0	35.7,46.2	31.9,39.2	41.5,41.6	44.0,51.6
		path	47.6,40.1	54.0,33.0	53.5,50.5	69.2,32.7	70.7,24.6
		path	78.9,22.5	78.5,41.9	75.0,50.9	69.9,49.1	61.5,58.8
		path	78.8,70.6	74.1,73.9	60.1,84.3	55.1,72.5	49.1,66.9
		path	44.5,75.4	45.0,84.9	37.2,84.2
		Use the Prospecting ability |cast Prospecting##31252
		|tip Use it on the Ore in your bags.
		|goldcollect Cobalt Ore##36909 |n
		|goldcollect Saronite Ore##36912 |n
		|goldcollect 28 Crystallized Earth##37701
		|goldcollect 32 Crystallized Water##37705
		|goldcollect 12 Huge Citrine##36929
		|goldcollect 4 Shadow Crystal##36926
		|goldcollect 12 Chalcedony##36923
		|goldcollect 8 Bloodstone##36917
		|goldcollect 8 Sun Crystal##36920
		|goldcollect 24 Dark Jade##36932
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

--  Cataclysm  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Hessonite, Alicite, Carnelian, Nightstone, Jasper, Zephyrite",{
	meta={goldtype="route",skillreq={cataclysm_jewelcrafting=1,cataclysm_mining=1},levelreq={30}},
	items={{53038,1},{52327,12},{52181,8},{52179,4},{52177,12},{52180,16},{52182,4},{52178,8},{52185,1},{52326,4}},
	maps={"Deepholm ","Mount Hyjal"},
	},[[
	step
		Click Here to Farm in Deepholm |confirm |next "Deepholm"
		Click Here to Farm in Mount Hyjal |confirm |next
	step
		map Mount Hyjal/0
		path follow loose; loop on; ants curved
		path	57.8,14.5	50.5,17.0	44.9,25.5	40.5,33.6	33.5,23.7
		path	27.8,38.6	13.9,34.8	15.5,52.5	25.4,60.7	36.0,51.0
		path	38.5,61.6	32.9,66.0	31.5,82.3	36.6,95.5	51.5,80.5
		path	60.6,82.5	56.7,66.5	50.5,56.5	59.7,56.3	72.7,65.0
		path	84.3,64.9	85.9,48.5	76.8,57.5	67.5,50.6	65.5,32.5
		path	65.7,18.5
		Use the Prospecting ability |cast Prospecting##31252
		|tip Use it on the Ore in your bags.
		|goldcollect Obsidium Ore##53038 |n
		|goldcollect 12 Volatile Earth##52327
		|goldcollect 8 Hessonite##52181
		|goldcollect 4 Alicite##52179
		|goldcollect 12 Carnelian##52177
		|goldcollect 16 Nightstone##52180
		|goldcollect 4 Jasper##52182
		|goldcollect 8 Zephyrite##52178
		|goldtracker
		Click Here to Sell Items |confirm |next "Sell_Items"
	step
	label "Deepholm"
		map Deepholm/0
		path follow loose; loop on; ants curved
		path	54.7,53.6	57.9,40.5	59.8,31.5	62.5,23.7	64.3,17.1
		path	68.1,27.5	65.2,36.1	69.7,35.3	77.1,37.2	78.6,49.8
		path	63.3,46.1	61.0,56.3	64.6,61.6	69.9,55.6	74.7,60.7
		path	75.3,68.4	65.6,65.0	61.3,72.4	70.9,71.8	67.7,79.6
		path	62.0,85.5	53.2,75.1	53.3,85.7	47.9,89.8	37.5,87.4
		path	30.1,81.5	33.1,74.6	25.2,73.1	20.8,62.0	19.6,49.1
		path	24.5,38.3	26.0,28.8	31.3,27.8	28.9,20.5	36.6,14.8
		path	46.5,10.5	44.1,23.2	50.0,20.1	47.7,32.9	39.9,38.9
		path	34.6,32.5	30.2,44.6	29.7,57.4	34.4,64.3	37.8,54.7
		path	43.5,67.4	36.5,69.2	40.6,74.9	42.4,80.8	47.1,71.5
		path	48.7,68.8	47.7,62.0
		Use the Prospecting ability |cast Prospecting##31252
		|tip Use it on the Ore in your bags.
		|goldcollect Obsidium Ore##53038 |n
		|goldcollect Elementium Ore##52185 |n
		|goldcollect 16 Volatile Earth##52327
		|goldcollect 4 Volatile Water##52326
		|goldcollect 8 Hessonite##52181
		|goldcollect 4 Alicite##52179
		|goldcollect 12 Carnelian##52177
		|goldcollect 24 Nightstone##52180
		|goldcollect 8 Jasper##52182
		|goldcollect 12 Zephyrite##52178
		|goldtracker
		Click Here to Sell Items |confirm
	step
	label "Sell_Items"
		#include "auctioneer"
]])

--  Pandaria  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Alexandrite, Sparkling Shard, Pandarian Garnet, Roguestone, Sunstone, Lapis Lazuli, Tiger Opal, Imperial Amethyst, Primordial Ruby, River's Heart, Wild Jade, Sun's Raidance, Vermilion Onyx",{
	meta={goldtype="route",skillreq={pandaria_mining=1,pandaria_jewelcrafting=1},levelreq={10}},
	items={{72092,1},{90407,160},{76137,32},{76136,36},{76135,36},{76134,40},{76133,32},{76130,32},{76141,4},{76131,8},{76138,4},{76139,4},{76142,8},{76140,12}},
	maps={"The Jade Forest"},
	},[[
	step
		map The Jade Forest/0
		path follow smart; loop on; ants curved
		path	29.3,8.5	34.9,17.8	38.5,8.0	56.3,29.3	51.3,51.7
		path	69.1,85.8	54.0,81.0	44.9,94.5	38.9,62.7	33.6,42.5
		path	42.8,39.8	25.0,26.0
		Use the Prospecting ability |cast Prospecting##31252
		|tip Use it on the Ore in your bags.
		|goldcollect Ghost Iron Ore##72092 |n
		|goldcollect 160 Sparkling Shard##90407
		|goldcollect 32 Alexandrite##76137
		|goldcollect 36 Pandarian Garnet##76136
		|goldcollect 36 Roguestone##76135
		|goldcollect 40 Sunstone##76134
		|goldcollect 32 Lapis Lazuli##76133
		|goldcollect 32 Tiger Opal##76130
		|goldcollect 4 Imperial Amethyst##76141
		|goldcollect 8 Primordial Ruby##76131
		|goldcollect 4 River's Heart##76138
		|goldcollect 4 Wild Jade##76139
		|goldcollect 8 Sun's Radiance##76142
		|goldcollect 12 Vermilion Onyx##76140
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

--  Draenor  --


------------------------
-----    MINING    -----
------------------------

--  Classic  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Gold Ore",{
	meta={goldtype="route",skillreq={mining=1},levelreq=15},
	items={{2776,116},{3858,640},{7912,600},{7909,12},{3864,12}},
	maps={"Felwood"},
	},[[
	step
		map Felwood
		path	follow loose; loop on; ants curved; dist 20
		path	50.5,86.5	48.1,92.8	43.2,82.3
		path	40.3,77.5	40.7,72.9	37.8,73.4
		path	37.4,69.3	36.3,67.7	36.6,65.3
		path	41.8,62.6	40.7,59.7	35.3,60.6
		path	35.5,58.1	39.0,57.5	37.6,47.9
		path	38.6,37.4	41.0,27.5	42.0,24.1
		path	40.5,22.0	42.5,17.1	44.7,18.2
		path	45.1,14.9	52.7,12.7	54.6,12.8
		path	56.6,8.4	57.5,14.4	59.8,16.9
		path	62.1,8.7	63.0,17.7	63.5,24.4
		path	56.6,18.8	57.4,23.2	59.3,26.9
		path	51.9,34.3	49.7,37.5	46.0,43.7
		path	44.5,48.6	43.1,53.1	43.1,59.4
		path	44.2,63.2	48.0,72.5	49.6,76.5
		path	55.0,80.9
		_Follow_ the path, mining any nodes you come across
		|goldcollect 116 Gold Ore##2776
		|goldcollect 640 Mithril Ore##3858
		|goldcollect 600 Solid Stone##7912
		|goldcollect 12 Aquamarine##7909
		|goldcollect 12 Citrine##3864
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Iron Ore/Heavy Stone",{
	meta={goldtype="route",skillreq={mining=1},levelreq=35},
	items={{2775,16},{2838,860},{2772,728},{3858,20},{7912,20},{1529,8},{3864,8}},
	maps={"Feralas"},
	},[[
	step
		map Feralas
		path	follow loose; loop on; ants curved; dist 20
		path	 84.9,39.9	81.8,39.3	79.2,37.2
		path	75.3,35.5	71.5,34.7	68.4,39.7
		path	68.1,46.1	70.0,48.6	68.7,52.0
		path	65.5,52.5	63.8,54.9	61.5,50.5
		path	58.2,51.4	53.8,49.4	48.6,44.0
		path	48.6,38.8	49.7,34.9	51.6,33.8
		path	49.5,26.1	51.7,25.5	51.3,19.0
		path	52.7,16.5	54.9,8.1	53.4,5.5
		path	51.6,4.8	48.5,11.5	46.1,7.2
		path	42.0,8.2	40.0,7.7	37.1,12.1
		path	38.2,18.6	37.0,25.6	41.2,25.5
		path	41.5,17.2	45.2,21.1	46.0,15.7
		path	47.7,22.1	46.2,26.6	47.2,34.7
		path	46.7,44.9	50.3,52.7	54.8,53.9
		path	55.0,59.8	54.6,64.0	52.9,66.2
		path	53.6,73.7	55.5,75.7	61.5,75.0
		path	61.6,68.9	64.0,68.9	61.9,66.2
		path	61.0,59.1	64.1,58.7	63.7,61.0
		path	65.8,63.5	68.1,61.5	71.6,65.1
		path	77.2,62.1	75.9,53.5	76.2,49.6
		path	79.5,46.2	84.0,45.6	82.5,43.1
		_Follow_ the path, mining any nodes you come across
		|goldcollect 16 Silver Ore##2775
		|goldcollect 860 Heavy Stone##2838
		|goldcollect 728 Iron Ore##2772
		|goldcollect 20 Mithril Ore##3858
		|goldcollect 20 Solid Stone##7912
		|goldcollect 8 Jade##1529
		|goldcollect 8 Citrine##3864
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Mithril Ore/Solid Stone",{
	meta={goldtype="route",skillreq={mining=1},levelreq=15},
	items={{7912,620},{3858,604},{7911,40},{2776,40},{3864,16},{7910,8}},
	maps={"Badlands"},
	},[[
	step
		map Badlands
		path	follow loose; loop on; ants curved; dist 20
		path	25.7,52.5	21.9,51.4	23.1,60.5
		path	26.1,64.9	22.7,66.0	17.6,62.0
		path	14.0,69.9	11.1,68.7	13.6,59.7
		path	9.8,52.0	14.5,48.0	10.7,38.7
		path	13.2,35.8	21.5,36.5	29.5,37.8
		path	37.7,31.9	46.9,21.8	47.8,13.0
		path	50.8,13.2	51.3,22.0	58.2,23.2
		path	72.8,28.0	72.6,38.1	75.0,48.5
		path	66.5,57.2	60.6,43.7	57.0,37.7
		path	58.2,33.1	48.1,34.3	47.5,39.5
		path	52.2,46.9	56.5,47.2	57.5,59.8
		path	50.9,63.7	43.9,64.6	38.1,64.9
		path	34.3,62.7	38.7,55.6	44.6,57.2
		path	45.9,47.2
		_Follow_ the path, mining any nodes you come across
		|goldcollect 620 Solid Stone##7912
		|goldcollect 604 Mithril Ore##3858
		|goldcollect 40 Truesilver Ore##7911
		|goldcollect 40 Gold Ore##2776
		|goldcollect 16 Citrine##3864
		|goldcollect 8 Star Ruby##7910
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Thorium Ore/Dense Stone/Truesilver Ore",{
	meta={goldtype="route",skillreq={mining=1},levelreq=15},
	items={{7910,16},{12365,944},{10620,744},{12363,24},{12800,8},{12361,4},{12364,4},{12799,8},{7911,44},{2776,24}},
	maps={"Winterspring"},
	},[[
	step
		map Winterspring
		path	follow loose; loop on; ants curved; dist 20
		path	68.0,54.3
		path	65.0,63.1	67.9,64.2	67.0,68.5
		path	62.6,73.7	65.3,75.5	62.6,80.9
		path	63.3,87.4	58.4,83.2	58.9,81.5
		path	56.5,78.5	55.2,68.9	51.2,69.6
		path	53.3,64.3	46.6,60.1	42.2,54.3
		path	40.2,57.9	31.8,57.9	26.6,57.6
		path	23.2,61.9	24.0,46.7	27.3,48.0
		path	30.0,53.3	31.5,53.5	31.3,48.0
		path	36.0,48.9	36.0,52.4	37.8,48.3
		path	39.9,49.9	42.8,48.5	45.4,45.8
		path	47.6,52.7	49.8,42.8	45.2,29.5
		path	45.6,13.8	49.3,15.5	54.5,21.2
		path	58.3,18.4	60.6,21.5	60.8,37.2
		path	60.0,42.8	54.3,46.0
		_Follow_ the path, mining any nodes you come across
		|goldcollect 16 Star Ruby##7910
		|goldcollect 944 Dense Stone##12365
		|goldcollect 744 Thorium Ore##10620
		|goldcollect 24 Arcane Crystal##12363
		|goldcollect 8 Azerothian Diamond##12800
		|goldcollect 4 Blue Sapphire##12361
		|goldcollect 4 Huge Emerald##12364
		|goldcollect 8 Large Opal##12799
		|goldcollect 44 Truesilver Ore##7911
		|goldcollect 24 Gold Ore##2776
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Tin Ore/Silver Ore/Coarse Stone",{
	meta={goldtype="route",skillreq={mining=1},levelreq=10},
	items={{2836,312},{2838,116},{2771,340},{2775,100},{2772,108},{1210,8},{1705,4},{1206,8}},
	maps={"Northern Stranglethorn"},
	},[[
	step
		map Northern Stranglethorn
		path	follow loose; loop on; ants curved; dist 20
		path	47.2,18.2	44.5,18.5	43.2,15.6
		path	34.6,15.5	30.6,20.6	30.6,25.9
		path	28.7,29.4	23.0,24.3	21.7,20.1
		path	19.3,21.6	23.9,35.6	33.6,33.1
		path	34.9,24.5	42.0,30.2	38.5,33.5
		path	39.5,44.6	42.8,38.6	43.8,50.1
		path	44.6,55.7	55.7,55.4	53.1,62.6
		path	52.9,71.1	56.5,71.8	56.4,66.4
		path	60.3,65.6	61.6,74.7	63.8,71.4
		path	63.5,64.5	58.8,61.3	62.0,58.5
		path	58.6,52.4	56.2,48.6	57.9,44.3
		path	66.1,52.8	68.9,48.1	67.3,41.5
		path	61.9,39.7	62.6,35.6	58.0,30.2
		path	53.7,27.5	59.6,24.5	64.1,23.5
		path	65.5,12.2	63.0,18.6	60.3,15.7
		path	59.5,18.0	57.2,16.0	55.6,21.7
		path	53.2,17.0	51.4,16.8	51.1,22.5
		_Follow_ the path, mining any nodes you come across
		|goldcollect 312 Coarse Stone##2836
		|goldcollect 116 Heavy Stone##2838
		|goldcollect 340 Tin Ore##2771
		|goldcollect 100 Silver Ore##2775
		|goldcollect 108 Iron Ore##2772
		|goldcollect 8 Shadowgem##1210
		|goldcollect 4 Lesser Moonstone##1705
		|goldcollect 8 Moss Agate##1206
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

--  Outland  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Adamantite Ore/Eternium Ore/Khorium Ore",{
	meta={goldtype="route",skillreq={outland_mining=1},levelreq=15},
	items={{23427,20},{23425,252},{22573,160},{23424,76},{22574,40},{23426,32}},
	maps={"Nagrand"},
	},[[
	step
		map Nagrand
		path	follow smart; loop on; ants curved; dist 10
		path	48.4,72.2	49.7,66.2	56.3,59.4
		path	56.0,54.8	49.6,57.5	45.0,54.7
		path	43.1,58.9	46.4,75.5	41.9,77.0
		path	35.7,79.3	31.1,75.3	27.3,63.0
		path	33.4,57.5	33.7,49.4	24.0,47.4
		path	19.7,46.7	11.4,43.0	11.3,36.6
		path	19.9,32.1	25.0,32.8	28.2,31.8
		path	26.5,20.5	30.0,18.1	36.3,23.0
		path	40.5,35.4	43.1,22.8	50.8,23.5
		path	57.0,29.0	65.0,37.6	70.3,42.6
		path	68.8,51.1	72.3,58.1	73.8,67.9
		path	69.8,78.1	57.9,75.5	49.0,79.0
		_Follow_ the path, mining any nodes you come across
		|goldcollect 20 Eternium Ore##23427
		|goldcollect 252 Adamantite Ore##23425
		|goldcollect 160 Mote of Earth##22573
		|goldcollect 76 Fel Iron Ore##23424
		|goldcollect 40 Mote of Fire##22574
		|goldcollect 32 Khorium Ore##23426
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Fel Iron Ore",{
	meta={goldtype="route",skillreq={outland_mining=1},levelreq=10},
	items={{23424,320},{22573,64},{22574,56},{23427,4}},
	maps={"Hellfire Peninsula"},
	},[[
	step
		map Hellfire Peninsula
		path	follow loose; loop on; ants curved; dist 15
		path	69.3,47.5	74.5,38.7	68.2,37.7
		path	62.0,31.0	58.0,32.8	54.0,26.7
		path	46.0,29.3	34.1,29.1	32.0,34.5
		path	38.5,38.2	35.7,40.7	33.4,49.8
		path	30.3,48.6	32.5,43.3	28.5,39.3
		path	26.5,45.5	22.6,45.1	18.0,38.3
		path	12.5,36.1	17.9,46.3	11.8,41.9
		path	12.0,47.0	06.2,49.5	15.4,62.4
		path	20.3,52.9	24.0,61.1	21.2,62.7
		path	28.1,80.8	27.7,69.5	30.5,72.8
		path	30.3,59.9	34.8,66.6	37.7,53.3
		path	46.9,46.3	49.3,49.5	60.3,48.6
		path	60.8,52.8	52.1,52.7	47.2,57.7
		path	45.9,75.5	33.5,89.6	33.1,92.6
		path	49.1,77.5	44.6,86.2	55.5,82.8
		path	58.7,78.8	56.5,72.3	65.8,63.6
		path	67.1,71.7	63.0,73.3	65.8,77.9
		path	68.7,77.6	71.0,71.7	69.3,64.0
		path	65.0,59.8	65.6,56.0	75.0,63.9
		path	78.4,80.2	80.7,77.5	77.3,63.7
		path	74.7,58.7	68.3,52.0
		_Follow_ the path, mining any nodes you come across
		|goldcollect 320 Fel Iron Ore##23424
		|goldcollect 64 Mote of Earth##22573
		|goldcollect 56 Mote of Fire##22574
		|goldcollect 4 Eternium Ore##23427
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

--  Northrend  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Cobalt Ore",{
	meta={goldtype="route",skillreq={northrend_mining=1},levelreq=20},
	items={{37701,20},{36909,320},{37705,56}},
	maps={"Zul'Drak"},
	},[[
	step
		map Zul'Drak
		path	follow loose; loop on; ants curved; dist 20
		path	46.1,82.3	45.0,84.9	37.2,84.2
		path	37.2,78.8	35.3,72.6	31.9,83.1
		path	31.2,76.2	33.4,68.1	29.8,71.5
		path	26.0,68.1	20.4,72.0	20.0,76.4
		path	14.8,76.7	11.1,77.5	11.2,74.9
		path	12.1,70.7	14.1,70.0	13.5,64.6
		path	16.1,57.6	19.8,55.0	24.4,54.7
		path	22.5,63.7	24.2,65.7	25.3,63.2
		path	30.1,64.6	36.0,62.4	32.0,56.1
		path	37.0,55.5	34.5,41.8	34.1,40.1
		path	35.6,45.1	39.3,43.3	42.9,41.8
		path	41.5,47.9	44.0,51.6	45.5,51.0
		path	47.6,40.1	54.0,33.0	54.8,37.0
		path	52.9,43.0	52.8,51.0	53.9,53.4
		path	55.4,51.0	56.1,47.9	55.4,44.9
		path	57.8,34.7	70.1,26.8	70.9,34.0
		path	73.2,34.7	73.9,27.0	78.9,22.5
		path	80.6,25.5	78.6,27.3	78.5,41.9
		path	76.6,46.9	69.8,49.1	71.4,51.9
		path	75.0,50.9	78.8,70.6	74.9,74.9
		path	60.2,74.8	49.1,66.9	52.2,73.3
		path	54.9,74.4	59.0,80.5	54.8,79.7
		path	50.3,79.1	49.0,73.4	47.8,76.6
		path	45.3,76.5
		_Follow_ the path, mining any nodes you come across
		|goldcollect 20 Crystallized Earth##37701
		|goldcollect 320 Cobalt Ore##36909
		|goldcollect 56 Crystallized Water##37705
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Saronite Ore",{
	meta={goldtype="route",skillreq={northrend_mining=1},levelreq=20},
	items={{36912,440},{36910,12},{37701,104},{37703,100},{37705,16}},
	maps={"Sholazar Basin"},
	},[[
	step
		map Sholazar Basin
		path	follow loose; loop on; ants curved; dist 20
		path	35.9,40.2	33.7,35.5	31.1,36.5
		path	28.5,42.8	26.8,43.6	25.0,46.2
		path	23.9,47.3	22.2,53.2	20.8,56.3
		path	20.8,64.7	20.7,72.2	20.7,78.6
		path	23.8,85.7	26.7,84.1	29.0,86.0
		path	34.6,88.9	35.4,85.2	35.7,79.3
		path	34.2,78.3	33.5,75.9	34.2,72.0
		path	35.8,67.6	40.9,70.2	39.3,75.5
		path	38.1,88.5	40.0,88.5	46.5,88.5
		path	53.5,87.6	59.0,87.0	60.2,85.0
		path	59.7,81.4	63.1,78.9	62.3,74.3
		path	57.7,76.8	55.8,81.4	54.1,83.5
		path	51.5,82.1	51.3,78.1	48.5,76.8
		path	47.2,73.0	55.5,66.5	57.9,67.3
		path	60.0,60.2	58.9,53.9	56.5,57.1
		path	53.3,62.2	51.6,60.6	51.6,63.1
		path	47.4,67.0	46.3,65.5	46.0,60.9
		path	40.0,50.8	38.1,55.0	35.1,59.5
		path	35.2,54.7	30.6,55.5	30.9,50.8
		path	33.6,45.7	35.8,49.9
		_Follow_ the path, mining any nodes you come across
		|goldcollect 440 Saronite Ore##36912
		|goldcollect 12 Titanium Ore##36910
		|goldcollect 104 Crystallized Earth##37701
		|goldcollect 100 Crystallized Shadow##37703
		|goldcollect 16 Crystallized Water##37705
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Titanium Ore",{
	meta={goldtype="route",skillreq={northrend_mining=1},levelreq=25},
	items={{36912,312},{36910,96},{37701,176},{37703,80},{37705,48},{37700,24},{37702,24}},
	maps={"Icecrown"},
	},[[
	step
		map Icecrown
		path	follow loose; loop on; ants curved; dist 20
		path	82.1,70.3	81.6,64.0	75.7,68.5
		path	70.8,68.1	67.6,69.1	66.1,62.7
		path	72.1,63.3	77.6,56.3	77.8,49.8
		path	74.1,39.6	70.2,39.2	67.5,46.7
		path	65.5,57.1	63.8,55.5	62.7,47.7
		path	64.7,41.6	63.0,37.9	60.6,32.3
		path	57.9,38.2	58.9,43.6	52.5,45.1
		path	49.1,30.6	46.6,37.6	43.5,39.7
		path	41.9,34.1	39.9,34.5	36.6,43.5
		path	33.8,47.2	30.9,56.3	28.0,65.7
		path	31.2,71.3	35.1,70.0	33.4,66.6
		path	42.9,61.5	36.7,55.3	39.6,48.9
		path	43.8,45.5	46.9,46.8	48.5,52.2
		path	49.5,63.8	47.5,70.4	47.8,81.2
		path	51.5,86.9	56.5,90.0	54.8,77.9
		path	60.1,74.0	67.5,72.9
		_Follow_ the path, mining any nodes you come across
		|goldcollect 312 Saronite Ore##36912
		|goldcollect 96 Titanium Ore##36910
		|goldcollect 176 Crystallized Earth##37701
		|goldcollect 80 Crystallized Shadow##37703
		|goldcollect 48 Crystallized Water##37705
		|goldcollect 24 Crystallized Air##37700
		|goldcollect 24 Crystallized Fire##37702
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

--  Cataclysm  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Elementium Ore/Pyrite Ore",{
	meta={goldtype="route",skillreq={cataclysm_mining=1},levelreq=30},
	items={{52185,444},{52327,52},{52183,84},{52325,8}},
	maps={"Twilight Highlands"},
	},[[
	step
		map Twilight Highlands
		path	follow loose; loop on; ants curved; dist 20
		path	59.3,76.6	55.5,79.5	55.9,84.8
		path	52.1,81.2	48.6,77.8	43.3,87.6
		path	39.9,88.9	34.9,87.3	37.6,81.6
		path	37.1,76.2	33.2,71.1	28.9,68.4
		path	26.6,69.5	25.9,62.9	39.7,70.5
		path	38.2,62.9	38.0,57.4	35.9,52.4
		path	29.8,54.6	21.9,58.5	19.7,57.6
		path	29.2,49.5	31.4,47.1	29.7,40.0
		path	25.5,39.1	29.6,35.1	32.2,30.5
		path	31.9,37.5	33.1,38.8	34.6,48.0
		path	37.8,43.3	37.5,40.3	36.6,34.5
		path	37.9,32.5	37.6,26.2	35.5,22.4
		path	37.5,18.1	39.3,21.5	49.0,20.5
		path	52.0,19.7	57.5,25.5	58.3,21.6
		path	57.9,15.6	60.7,11.5	67.2,18.3
		path	62.0,28.1	64.7,35.2	69.5,35.6
		path	75.0,46.3	70.8,48.8	69.4,45.0
		path	66.1,39.8	63.5,39.0	58.0,34.9
		path	53.5,35.4	47.6,40.2	46.5,44.3
		path	40.7,45.3	40.6,47.8	46.3,51.1
		path	49.4,48.2	52.0,42.8	54.8,39.7
		path	58.5,39.8	63.0,44.5	65.5,48.4
		path	67.0,54.1	59.1,49.1	56.7,49.2
		path	51.8,50.9	50.5,56.1	48.9,62.0
		path	53.8,59.7	57.9,55.2
		_Follow_ the path, mining any nodes you come across
		|goldcollect 444 Elementium Ore##52185
		|goldcollect 52 Volatile Earth##52327
		|goldcollect 84 Pyrite Ore##52183
		|goldcollect 8 Volatile Fire##52325
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Obsidium Ore",{
	meta={goldtype="route",skillreq={cataclysm_mining=1},levelreq=30},
	items={{53038,488},{52327,58}},
	maps={"Deepholm"},
	},[[
	step
		map Deepholm
		path	follow smart; loop on; ants curved; dist 10
		path	47.6,58.9	48.3,64.6	52.1,63.3
		path	53.4,58.1	57.7,53.5	57.7,47.9
		path	55.8,46.7	56.6,44.6	55.2,39.6
		path	57.5,39.7	59.8,46.1	63.4,45.2
		path	63.6,49.6	61.6,49.6	60.3,55.3
		path	62.1,57.6	63.7,54.4	64.7,57.0
		path	64.6,61.6	62.9,64.9	65.6,65.0
		path	66.0,71.2	65.4,74.6	65.5,77.5
		path	65.3,83.2	64.0,85.3	60.1,85.2
		path	58.8,88.1	56.4,90.1	54.3,86.3
		path	57.3,79.4	54.6,77.8	53.6,80.9
		path	51.9,78.5	51.4,79.8	46.2,72.2
		path	44.4,75.9	43.3,80.1	41.5,80.2
		path	41.5,75.6	38.3,73.4	37.9,70.6
		path	35.2,68.2	34.4,64.3	31.8,60.2
		path	29.2,56.7	28.0,53.7	29.5,53.1
		path	32.1,56.9	36.9,55.4	37.1,52.5
		path	29.4,45.5	29.6,42.5	31.6,38.5
		path	33.9,36.4	34.9,31.9	35.4,30.1
		path	37.8,35.1	38.9,39.0	42.7,36.6
		path	44.7,33.9	46.6,38.0	42.7,42.8
		path	43.0,54.0
		_Follow_ the path, mining any nodes you come across
		|goldcollect 488 Obsidium Ore##53038
		|goldcollect 58 Volatile Earth##52327
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

--  Pandaria  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Black Trillium Ore/White Trillium Ore",{
	meta={goldtype="route",skillreq={pandaria_mining=1},levelreq=25},
	items={{72092,552},{72093,40},{72094,44},{72103,44}},
	maps={"Townlong Steppes"},
	},[[
	step
		map Townlong Steppes
		path	follow smart; loop on; ants curved; dist 20
		path	64.6,36.1	66.5,36.8	66.4,41.1
		path	69.1,42.0	72.2,47.0	72.6,49.8
		path	72.4,58.5	73.0,61.2	77.6,64.9
		path	81.5,67.6	83.6,71.2	85.4,72.1
		path	84.4,75.2	79.9,75.2	75.8,72.8
		path	75.3,75.2	79.0,81.0	83.7,80.5
		path	81.6,87.3	81.0,89.2	79.4,90.8
		path	76.0,87.5	71.8,84.7	70.9,78.1
		path	70.9,73.7	67.2,70.6	64.7,71.4
		path	61.2,72.7	61.5,70.2	64.5,66.3
		path	66.7,64.4	67.6,60.3	69.5,54.8
		path	69.9,48.4	67.7,43.7	65.0,41.0
		path	63.1,44.1	67.4,52.3	65.7,56.5
		path	64.1,53.7	62.4,46.1	58.4,50.1
		path	59.3,56.3	58.8,63.4	52.4,61.9
		path	51.0,56.5	53.4,53.6	55.4,49.0
		path	57.7,46.3	57.6,43.4	60.4,43.7
		path	62.5,36.7
		_Follow_ the path, mining any nodes you come across
		|goldcollect 552 Ghost Iron Ore##72092
		|goldcollect 40 Kyparite##72093
		|goldcollect 44 Black Trillium Ore##72094
		|goldcollect 44 White Trillium Ore##72103
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Ghost Iron Ore",{
	meta={goldtype="route",skillreq={pandaria_mining=1},levelreq=10},
	items={{72092,724}},
	maps={"The Jade Forest"},
	},[[
	step
		map The Jade Forest
		path	follow smart; loop on; ants curved; dist 20
		path	54.9,93.5	58.5,93.9	60.6,91.6
		path	62.2,91.5	64.7,88.9	60.9,86.5
		path	61.9,83.1	64.0,82.2	67.7,85.4
		path	65.8,78.5	64.8,76.1	62.1,76.6
		path	62.9,71.7	60.0,70.1	59.7,78.8
		path	57.9,79.5	57.5,76.1	54.5,71.2
		path	58.6,63.5	60.5,61.8	61.7,57.9
		path	59.1,52.9	56.7,53.9	50.5,52.5
		path	47.9,51.6	49.9,49.4	52.0,43.8
		path	54.5,39.2	55.0,35.1	56.2,30.0
		path	52.9,26.7	52.8,21.2	50.6,19.1
		path	48.3,24.7	45.6,27.7	43.5,28.6
		path	45.2,33.8	43.3,35.7	41.5,43.2
		path	39.1,51.4	37.7,54.0	37.8,57.4
		path	38.0,63.5	37.6,68.7	39.0,72.0
		path	40.3,70.4	42.6,72.9	39.9,78.8
		path	41.3,84.8	42.5,90.0	44.2,94.4
		path	49.5,94.0	50.7,88.8	53.3,89.6
		_Follow_ the path, mining any nodes you come across
		|goldcollect 724 Ghost Iron Ore##72092
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Kyparite",{
	meta={goldtype="route",skillreq={pandaria_mining=1},levelreq=30},
	items={{72092,92},{72093,212}},
	maps={"Dread Wastes"},
	},[[
	step
		map Dread Wastes
		path	follow smart; loop on; ants curved; dist 20
		path	65.0,46.1	61.1,44.1	55.3,42.2
		path	50.3,41.2	49.2,35.9	54.2,36.0
		path	56.3,35.5	56.3,32.3	53.8,31.7
		path	48.9,32.3	49.7,26.5	53.2,21.4
		path	57.6,18.7	63.6,16.1	68.2,14.9
		path	67.1,11.2	63.2,12.3	59.0,11.2
		path	54.5,14.9	50.5,18.3	48.4,22.9
		path	46.3,25.3	46.6,31.8	47.1,36.6
		path	46.8,46.1	51.2,46.3	51.2,51.7
		path	54.2,50.5	57.6,49.2	63.4,51.2
		path	67.2,51.9
		_Follow_ the path, mining any nodes you come across
		|goldcollect 92 Ghost Iron Ore##72092
		|goldcollect 212 Kyparite##72093
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

--  Draenor  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Blackrock/True Iron Ore",{
	meta={goldtype="route",skillreq={draenor_mining=1},levelreq=10},
	items={{109119,212},{109118,216}},
	maps={"Shadowmoon Valley D"},
	},[[
	step
		map Shadowmoon Valley D
		path	follow loose; loop on; ants curved; dist 20
		path	36.8,39.6	38.7,39.1	40.2,43.1
		path	39.2,47.3	43.2,49.6	43.5,53.9
		path	47.3,54.9	49.9,59.1	50.1,61.9
		path	53.4,60.8	52.2,56.9	53.9,54.6
		path	58.5,53.4	57.2,48.8	52.3,50.2
		path	53.9,48.0	54.1,45.0	57.2,40.9
		path	60.2,44.3	64.1,36.6	66.3,35.5
		path	65.8,30.3	60.7,32.6	51.9,40.0
		path	48.8,40.7	44.3,44.4	42.5,40.0
		path	43.9,34.8	45.7,31.2	49.7,29.7
		path	54.1,28.9	52.9,26.9	50.4,26.9
		path	50.4,23.0	48.5,25.7	45.2,29.0
		path	41.3,25.1	41.2,22.9	43.9,20.0
		path	40.9,18.3	38.3,19.9	38.3,22.5
		path	39.4,25.2	38.7,27.4	36.1,26.7
		path	33.3,26.7	24.1,24.8	24.1,29.3
		path	26.0,29.3	29.3,33.6	34.7,33.9
		path	36.1,30.3	38.7,31.0
		_Follow_ the path, mining any nodes you come across
		|goldcollect 212 True Iron Ore##109119
		|goldcollect 216 Blackrock Ore##109118
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])


--------------------------
-----    SKINNING    -----
--------------------------

--  Classic  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Deviate Scale/Perfect Deviate Scale",{
	meta={goldtype="route",skillreq={skinning=1},levelreq=5},
	items={{6470,40},{6471,16},{2319,24},{4232,4},{2318,280},{783,12}},
	maps={"Northern Barrens"},
	},[[
	step
	label "route_1"
		map Northern Barrens/20
		path	follow smart; loop off; ants curved; dist 15
		path	22.7,88.9	22.4,79.8	28.5,68.9
		path	25.8,58.2	25.3,49.5	21.2,39.3
		path	24.5,25.1	36.1,23.6	44.0,31.2
		path	55.6,25.4	62.2,23.9	71.7,20.4
		path	78.0,34.9	76.8,45.6	67.8,52.3
		path	52.7,59.7	50.0,40.2
		kill Deviate Creeper##3632+, Deviate Stalker##3634+, Deviate Slayer##3633+, Deviate Lurker##3641+
		Follow the path, killing any Deviate mobs you see |goto Northern Barrens/20 50.0,40.2 < 20 |noway |c |next "route_2" |or
		|goldcollect 40 Deviate Scale##6470 |next "Sell" |or
		|goldcollect 16 Perfect Deviate Scale##6471
		|goldcollect 24 Medium Leather##2319
		|goldcollect 4 Medium Hide##4232
		|goldcollect 280 Light Leather##2318
		|goldcollect 12 Light Hide##783
		|goldtracker
		Click here to sell items |confirm |next "Sell"
	step
	label "route_2"
		map Northern Barrens/20
		path	follow smart; loop off; ants curved; dist 15
		path	50.0,40.2	48.8,28.7	44.0,31.2
		path	36.1,23.6	24.5,25.1	21.2,39.3
		path	25.3,49.5	25.3,54.8	18.5,52.1
		kill Deviate Creeper##3632+, Deviate Stalker##3634+, Deviate Slayer##3633+, Deviate Lurker##3641+
		Follow the path, killing any Deviate mobs you see |goto Northern Barrens/20 18.5,52.1 < 20 |noway |c |next "route_3" |or
		|goldcollect 40 Deviate Scale##6470 |next "Sell" |or
		|goldcollect 16 Perfect Deviate Scale##6471
		|goldcollect 24 Medium Leather##2319
		|goldcollect 4 Medium Hide##4232
		|goldcollect 280 Light Leather##2318
		|goldcollect 12 Light Hide##783
		|goldtracker
		Click here to sell items |confirm |next "Sell"
	step
	label "route_3"
		map Northern Barrens/20
		path	follow smart; loop off; ants curved; dist 15
		path	18.5,52.1	23.2,55.2	28.5,68.3
		path	21.8,81.4
		kill Deviate Creeper##3632+, Deviate Stalker##3634+, Deviate Slayer##3633+, Deviate Lurker##3641+
		Follow the path, killing any Deviate mobs you see |goto Northern Barrens/20 21.8,81.4 |noway |c |next "route_1" |or
		|goldcollect 40 Deviate Scale##6470 |next "Sell" |or
		|goldcollect 16 Perfect Deviate Scale##6471
		|goldcollect 24 Medium Leather##2319
		|goldcollect 4 Medium Hide##4232
		|goldcollect 280 Light Leather##2318
		|goldcollect 12 Light Hide##783
		|goldtracker
		Click here to sell items |confirm |next "Sell"
	step
	label "Sell"
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Heavy Leather/Heavy Hide",{
	meta={goldtype="route",skillreq={skinning=1},levelreq=15},
	items={{4235,12},{4234,288},{4304,80},{4306,208},{4338,28}},
	maps={"Feralas"},
	},[[
	step
	label "route_1"
		map Feralas/0
		path	follow loose; loop off; ants curved; dist 8
		path	50.9,32.9	51.8,32.1	52.3,31.2
		path	52.9,30.1
		kill Rage Scar Yeti##40224+, Feral Scar Yeti##39896+
		Follow the path, killing any yetis you see |goto Feralas/0 52.9,30.1 |noway |c |next "route_2" |or
		|goldcollect 12 Heavy Hide##4235 |next "Sell" |or
		|goldcollect 288 Heavy Leather##4234
		|goldcollect 80 Thick Leather##4304
		|goldcollect 208 Silk Cloth##4306
		|goldcollect 28 Mageweave Cloth##4338
		|goldtracker
		Click here to sell items |confirm |next "Sell"
	step
	label "route_2"
		map Feralas/0
		path	follow loose; loop off; ants curved; dist 8
		path	52.9,30.1	52.1,31.6	53.1,31.8
		path	53.6,32.0	54.1,32.6	55.0,32.4
		path	54.6,32.0
		kill Rage Scar Yeti##40224+, Feral Scar Yeti##39896+
		Follow the path, killing any yetis you see |goto Feralas/0 54.6,32.0 < 7 |noway |c |next "route_3" |or
		|goldcollect 12 Heavy Hide##4235 |next "Sell" |or
		|goldcollect 288 Heavy Leather##4234
		|goldcollect 80 Thick Leather##4304
		|goldcollect 208 Silk Cloth##4306
		|goldcollect 28 Mageweave Cloth##4338
		|goldtracker
		Click here to sell items |confirm |next "Sell"
	step
	label "route_3"
		map Feralas/0
		path	follow loose; loop off; ants curved; dist 8
		path	54.6,32.0	55.0,32.3	55.3,33.5
		path	55.8,33.3	55.5,32.9	54.8,33.1
		path	54.4,33.1	54.5,33.4	54.9,33.6
		path	54.6,33.9
		kill Rage Scar Yeti##40224+, Feral Scar Yeti##39896+
		Follow the path, killing any yetis you see |goto Feralas/0 54.6,33.9 < 7 |noway |c |next "route_4" |or
		|goldcollect 12 Heavy Hide##4235 |next "Sell" |or
		|goldcollect 288 Heavy Leather##4234
		|goldcollect 80 Thick Leather##4304
		|goldcollect 208 Silk Cloth##4306
		|goldcollect 28 Mageweave Cloth##4338
		|goldtracker
		Click here to sell items |confirm |next "Sell"
	step
	label "route_4"
		map Feralas/0
		path	follow loose; loop off; ants curved; dist 8
		path	54.6,33.9	54.9,33.6	54.4,33.3
		path	54.5,33.0	54.9,33.0	55.5,32.9
		path	55.8,33.3	55.5,33.5	55.2,33.2
		path	55.0,32.5	54.1,32.5	53.7,32.0
		path	53.1,31.8	52.2,31.8	51.8,32.1
		path	50.9,32.9
		kill Rage Scar Yeti##40224+, Feral Scar Yeti##39896+
		Follow the path, killing any yetis you see |goto Feralas/0 50.9,32.9 < 15 |noway |c |next "route_1" |or
		|goldcollect 12 Heavy Hide##4235 |next "Sell" |or
		|goldcollect 288 Heavy Leather##4234
		|goldcollect 80 Thick Leather##4304
		|goldcollect 208 Silk Cloth##4306
		|goldcollect 28 Mageweave Cloth##4338
		|goldtracker
		Click here to sell items |confirm |next "Sell"
	step
	label "Sell"
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Thick Leather",{
	meta={goldtype="route",skillreq={skinning=1},levelreq=15},
	items={{4304,420},{8170,104},{8169,8}},
	maps={"Badlands"},
	},[[
	step
		map Badlands
		path	follow smart; loop on; ants curved; dist 15
		path	9.4,45.5	8.6,42.5	9.0,38.3
		path	10.8,36.4	12.3,39.0	10.7,40.1
		path	10.4,43.7
		kill Nyxondra's Broodling##46916+, Nyxondra##46861
		|goldcollect 420 Thick Leather##4304
		|goldcollect 104 Rugged Leather##8170
		|goldcollect 8 Thick Hide##8169
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Rugged Leather/Rugged Hide (Onyxia's Lair)",{
	meta={goldtype="route",skillreq={skinning=1},levelreq=30,elitemobs=1},
	items={{8170,244},{8171,158},{33470,10}},
	maps={"Onyxia's Lair","Dustwallow Marsh"},
	},[[
	step
	label "route_1"
		map Onyxia's Lair/1
		path follow smart; loop off; ants curved; dist 15
		path	34.3,20.9	40.1,31.6	43.2,37.0
		path	43.6,56.6	54.0,76.8	63.5,85.4
		kill Onyxian Warder##12129+
		Follow the path and kill the 4 Onyxian Warders. DO NOT KILL ONYXIA |goto Onyxia's Lair/1 63.5,85.4 |noway |c |next "route_2" |or
		|goldcollect 244 Rugged Leather##8170 |next "Sell" |or
		|goldcollect 158 Rugged Hide##8171 |n
		|goldcollect 10 Frostweave Cloth##33470 |n
		|goldtracker
		Click here to sell items |confirm |next "Sell"
	step
	label "route_2"
		map Onyxia's Lair/1
		path follow smart; loop off; ants curved; dist 15
		path	63.5,85.4	54.0,76.8	43.6,56.6
		path	43.2,37.0	37.9,29.7	39.5,15.9
		path	45.2,14.5	45.8,21.7	33.1,20.6
		Leave Onyxia's Lair. DO NOT KILL ONYXIA |goto Dustwallow Marsh/0 52.9,77.6 |noway |c |next "route_3" |or
		|goldcollect 288 Rugged Leather##8170 |next "Sell" |or
		|goldcollect 12 Rugged Hide##8171
		|goldtracker
		Click here to sell items |confirm |next "Sell"
	step
	label "route_3"
		Right-click your player's unit frame and select "_Reset all instances_"
		After resetting Onyxia's Lair, re-enter the instance |goto Onyxia's Lair/1 34.3,20.9 |noway |c |next "route_1" |or
		|goldcollect 288 Rugged Leather##8170 |next "Sell" |goto Onyxia's Lair/1 34.3,20.9 |or
		|goldcollect 12 Rugged Hide##8171 |goto Onyxia's Lair/1 34.3,20.9
		|goldtracker
		Click here to sell items |confirm |next "Sell"
	step
	label "Sell"
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Rugged Leather",{
	meta={goldtype="route",skillreq={skinning=1},levelreq=15},
	items={{4304,28},{8170,416}},
	maps={"Blasted Lands"},
	},[[
	step
	label "route_1"
		talk Zidormi##88206
		Tell her: "_Show me the Blasted Lands before the Invasion._" |complete ZGV.InPhase('Old Blasted Lands') |goto Blasted Lands 48.2,7.3
	step
	label "route_2"
		map Blasted Lands/0
		path	follow smart; loop on; ants curved; dist 15
		path	55.2,24.0	52.5,28.1	58.9,35.3
		path	58.3,40.4	55.5,46.2	51.8,46.2
		path	52.2,41.1	48.6,35.3	44.3,33.7
		path	48.7,32.1	48.8,28.2	47.5,23.3
		path	44.0,20.3	42.5,22.9	41.4,20.7
		path	43.5,16.9	44.9,14.7	47.1,12.4
		path	48.7,12.4	48.1,17.0	48.3,21.0
		path	52.3,24.3
		kill Ashmane Boar##5992+, Snickerfang Hyena##5985+, Felhound##6010+, Redstone Basilisk##5990+
		Follow the path, killing and skinning beasts |nobuff Interface\Icons\spell_mage_altertime |next "route_1" |or
		|goldcollect 28 Thick Leather##4304 |or
		|goldcollect 416 Rugged Leather##8170
		|goldtracker
		Click here to sell items |confirm |next "Sell"
	step
	label "route_3"
		use Imperfect Draenethyst Fragment##10593 |only if itemcount(10593) > 0 |repeatable
		accept One Draenei's Junk##25771 |only if itemcount(10593) > 0 |repeatable
		|next "route_4"
	step
	label "route_4"
		talk Kum'isha the Collector##7363
		turnin One Draenei's Junk...##25771 |goto 48.76,31.88 |repeatable |only if haveq(25771)
		|next "route_5" |only if itemcount(10593) < 1
		|next "route_3"
	step
	label "route_5"
		use Flawless Draenethyst Sphere##8244 |only if itemcount(8244) > 0
		accept Kum'isha's Endeavors##25772 |repeatable |only if itemcount(8244) > 0
		|next "route_6"
	step
	label "route_6"
		talk Kum'isha the Collector##7363
		turnin Kum'isha's Endeavors##25772 |goto 48.76,31.88 |repeatable |only if haveq(25772)
		|next "Sell" |only if itemcount(8244) < 1
		|next "route_5"
	step
	label "Sell"
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Turtle Scale/Thick Leather",{
	meta={goldtype="route",skillreq={skinning=1},levelreq=15},
	items={{8167,192},{4304,148},{8170,44},{8169,6}},
	maps={"Swamp of Sorrows"},
	},[[
	step
	label "Path 1"
		map Swamp of Sorrows/0
		path	follow smart; loop on; ants curved; dist 20
		path	71.1,73.1	73.3,70.1	75.7,72.5
		path	78.2,69.0	79.0,63.6	83.3,63.7
		path	83.0,68.8	78.9,71.9	77.4,75.7
		path	76.0,79.8
		kill Sorrowmurk Snapjaw##45950+
		Follow the path, killing and skinning any turtles you see
		|goldcollect 192 Turtle Scale##8167
		|goldcollect 148 Thick Leather##4304
		|goldcollect 44 Rugged Leather##8170
		|goldcollect 6 Thick Hide##8169 |n
		|goldtracker
		Click here to sell items |confirm |next
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Black Whelp Scale",{
	meta={goldtype="route",skillreq={skinning=1},levelreq=10},
	items={{7286,148},{2318,108,'crap'},{2319,144,'crap'},{783,8,'crap'},{4232,16,'crap'}},
	maps={"Wetlands"},
	},[[
	step
		map Wetlands
		path	follow loose; loop on; ants curved; dist 10
		path	63.9,37.9	65.4,40.5	67.4,43.2
		path	68.7,43.7	70.2,43.9	71.3,46.3
		path	71.9,48.6	69.9,49.8	68.2,51.0
		path	67.7,53.4	66.5,54.4	65.0,54.1
		path	64.1,52.7	64.3,50.4	63.4,48.8
		path	62.1,48.3	62.7,44.9	62.4,43.1
		path	60.6,41.5	61.4,39.6	61.7,37.4
		kill Ebon Whelp##42042+
		|goldcollect 148 Black Whelp Scale##7286
		|meta crap_items_follow=1
		|goldcollect 108 Light Leather##2318
		|goldcollect 144 Medium Leather##2319
		|goldcollect 8 Light Hide##783
		|goldcollect 16 Medium Hide##4232
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Warbear Leather",{
	meta={goldtype="route",skillreq={skinning=1},levelreq=15},
	items={{15419,40},{8170,192,'crap'},{8171,24,'crap'}},
	maps={"Blasted Lands"},
	},[[
	step
		talk Zidormi##88206
		Tell her: "_Show me the Blasted Lands before the Invasion._" |complete ZGV.InPhase('Old Blasted Lands') |goto Blasted Lands 48.2,7.3
	step
		map Blasted Lands
		path	follow loose; loop on; ants curved; dist 10
		path	38.2,62.3	36.2,58.9	35.2,55.4
		path	36.1,52.8	38.1,53.5	39.9,53.2
		path	40.6,56.0	41.2,58.1	39.7,59.0
		kill Tainted Black Bear##42336+
		|goldcollect 40 Warbear Leather##15419
		|meta crap_items_follow=1
		|goldcollect 192 Rugged Leather##8170
		|goldcollect 24 Rugged Hide##8171
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Scorpid Scale",{
	meta={goldtype="route",skillreq={skinning=1},levelreq=15},
	items={{8154,112},{4234,24,'crap'},{4304,100,'crap'},{8170,4,'crap'}},
	maps={"Tanaris"},
	},[[
	step
		map Tanaris
		path	follow smart; loop on; ants curved; dist 20
		path	41.2,22.6	44.0,24.2	46.2,24.6
		path	44.6,29.6	49.8,34.0	51.8,34.6
		path	51.2,39.6	53.6,43.2	58.0,50.6
		path	61.4,54.4	60.8,60.6	55.6,53.6
		path	52.4,56.6	51.6,60.6	49.4,56.6
		path	50.2,45.2	46.8,42.6	46.8,38.6
		path	43.2,33.4	39.0,23.0
		kill Dune Rattler##44568+, Duneclaw Stalker##44587+, Basking Cobra##40657+, Duneclaw Burrower##44546+, Duneclaw Matriarch##40656+, Duneclaw Lasher##40717+
		|goldcollect 112 Scorpid Scale##8154
		|meta crap_items_follow=1
		|goldcollect 24 Heavy Leather##4234
		|goldcollect 100 Thick Leather##4304
		|goldcollect 4 Rugged Leather##8170
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Devilsaur Leather",{
	meta={goldtype="route",skillreq={skinning=1},levelreq=15,elitemobs=1},
	items={{15417,240}},
	maps={"Un'Goro Crater"},
	},[[
	step
		kill Devilsaur Queen##38346+ |goto Un'Goro Crater 35.0,81.5
		|tip It spawns once every 32 seconds
		|goldcollect 240 Devilsaur Leather##15417
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Heavy Scorpid Scale/Thick Leather/Rugged Leather/Rugged Hide",{
	meta={goldtype="route",skillreq={skinning=1},levelreq=15},
	items={{15408,52},{4304,76,'crap'},{8170,48,'crap'},{8171,8,'crap'}},
	maps={"Silithus"},
	},[[
	step
		map Silithus
		path	follow smart; loop on; ants curved; dist 10
		path	39.4,33.5	40.5,37.1	40.9,42.6
		path	40.2,53.0	39.2,59.0	38.6,65.8
		path	40.7,72.1	46.1,66.5	50.4,65.7
		path	52.3,63.5	53.7,59.8	55.6,58.0
		path	60.4,57.8	64.7,59.7	65.3,55.0
		path	58.1,50.8	53.7,49.3	50.2,46.2
		path	47.5,44.5
		kill Stonelash Scorpid##11735+,Stonelash Pincer##11736+,Stonelash Flayer##11737+
		|goldcollect 52 Heavy Scorpid Scale##15408
		|meta crap_items_follow=1
		|goldcollect 76 Thick Leather##4304
		|goldcollect 48 Rugged Leather##8170
		|goldcollect 8 Rugged Hide##8171
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Deepsea Scale/Savage Leather",{
	meta={goldtype="route",skillreq={skinning=1},levelreq=15},
	items={{52982,116},{52976,220,'crap'}},
	maps={"Feralas"},
	},[[
	step
		map Feralas
		path	follow loose; loop on; ants curved
		path	75.8,68.2	75.8,74.0	71.6,75.6
		path	68.4,75.6	66.0,71.6	66.6,69.0
		path	72.0,69.0
		kill King Crawler##51714
		|goldcollect 116 Deepsea Scale##52982
		|meta crap_items_follow=1
		|goldcollect 220 Savage Leather##52976
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

--  Outland  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Knothide Leather (Karazhan)",{
	meta={goldtype="route",skillreq={outland_skinning=1},levelreq=30},
	items={{21887,1204},{25649,420},{25707,60},{31952,8,'crap'}},
	maps={"Deadwind Pass","Karazhan"},
	},[[
	step
		Enter Karazhan |goto Karazhan/1 58.8,76.1 |c
	step
	label "Start"
		map Karazhan/1
		path	follow smart; loop off; ants curved; dist 8
		path	58.8,76.1	57.4,72.4	60.9,67.7
		path	57.8,60.3	58.1,55.4	54.1,50.0
		path	54.1,44.4	51.2,39.6	51.4,28.5
		path	60.2,29.5	60.8,17.3	73.3,20.5
		kill Vampiric Shadowbat##16175+, Shadowbat##16173+, Greater Shadowbat##16174+, Phase Hound##16178+, Dreadbeast##16177+, Shadowbeast##16176+
		Follow the path avoiding the spiders, killing and skinning any bats and hounds you see |goto Karazhan/1 73.3,20.5 < 10 |noway |c |next "Return" |or
		|goldcollect 1204 Knothide Leather##21887 |next "Sell" |or
		|goldcollect 420 Knothide Leather Scraps##25649
		|goldcollect 60 Fel Hide##25707
		|meta crap_items_follow=1
		|goldcollect 8 Khorium Lockbox##31952 |n
		|goldtracker
		Click here to sell items |confirm |next "Sell"
	step
	label "Return"
		map Karazhan/1
		path	follow smart; loop off; ants curved; dist 8
		path	73.3,20.5	60.4,20.4	59.6,29.6
		path	59.1,37.0	56.1,49.5	57.9,56.9
		path	60.5,67.9	57.3,73.6	59.8,78.3
		kill Vampiric Shadowbat##16175+, Shadowbat##16173+, Greater Shadowbat##16174+, Phase Hound##16178+, Dreadbeast##16177+, Shadowbeast##16176+
		Follow the path and leave Karazhan |goto Deadwind Pass/0 46.9,74.8 |noway |c |next "Reset" |or
		|goldcollect 1204 Knothide Leather##21887 |next "Sell" |or
		|goldcollect 420 Knothide Leather Scraps##25649
		|goldcollect 60 Fel Hide##25707
		|meta crap_items_follow=1
		|goldcollect 8 Khorium Lockbox##31952 |n
		|goldtracker
		Click here to sell items |confirm |next "Sell"
	step
	label "Reset"
		Right-click your player's unit frame and select "_Reset all instances_"
		After resetting Karazhan, re-enter the instance |goto Karazhan/1 58.8,76.1 |noway |c |next "Start"
	step
	label "Sell"
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Knothide Leather",{
	meta={goldtype="route",skillreq={outland_skinning=1},levelreq=15},
	items={{21887,484},{31952,4,'crap'},{27674,244,'crap'},{21877,56,'crap'}},
	maps={"Terokkar Forest"},
	},[[
	step
	label "Start"
		map Terokkar Forest/0
		path	follow smart; loop off; ants curved; dist 20
		path	45.9,4.7	48.1,7.4	50.2,10.1
		path	52.7,12.5	54.8,13.0	56.9,13.1
		path	58.4,13.1	60.8,10.4
		kill Razorthorn Ravager##24922+
		Follow the path killing and skinning any Ravagers you see |goto Terokkar Forest/0 60.8,10.4 < 10 |noway |c |next "Return" |or
		|goldcollect 484 Knothide Leather##21887 |next "Sell" |or
		|meta crap_items_follow=1
		|goldcollect 4 Khorium Lockbox##31952 |n
		|goldcollect 244 Ravager Flesh##27674 |n
		|goldcollect 56 Netherweave Cloth##21877 |n
		|goldtracker
		Click here to sell items |confirm |next "Sell"
	step
	label "Return"
		map Terokkar Forest/0
		path	follow smart; loop off; ants curved; dist 20
		path	60.8,10.4	58.4,13.1	56.9,13.1
		path	54.8,13.0	52.7,12.5	50.2,10.1
		path	48.1,7.4	45.9,4.7
		kill Razorthorn Ravager##24922
		Follow the path killing and skinning any Ravagers you see |goto Terokkar Forest/0 45.9,4.7 |noway |c |next "Start" |or
		|goldcollect 484 Knothide Leather##21887 |next "Sell" |or
		|meta crap_items_follow=1
		|goldcollect 4 Khorium Lockbox##31952 |n
		|goldcollect 244 Ravager Flesh##27674 |n
		|goldcollect 56 Netherweave Cloth##21877 |n
		|goldtracker
		Click here to sell items |confirm |next "Sell"
	step
	label "Sell"
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Wind Scale/Knothide Leather",{
	meta={goldtype="route",skillreq={outland_skinning=1},levelreq=20},
	items={{29547,72},{21887,116,'crap'}},
	maps={"Blade's Edge Mountains"},
	},[[
	step
		map Blade's Edge Mountains
		path	follow loose; loop on; ants curved; dist 10
		path	61.6,54.6	65.0,50.6	67.2,52.8
		path	68.2,61.6	68.6,74.6	67.4,70.0
		path	67.0,60.6
		kill Scalewing Serpent##20749+
		|goldcollect 72 Wind Scales##29547
		|meta crap_items_follow=1
		|goldcollect 116 Knothide Leather##21887
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Nether Dragonscales",{
	meta={goldtype="route",skillreq={outland_skinning=1},levelreq=25},
	items={{29548,64},{21887,148,'crap'}},
	maps={"Netherstorm"},
	},[[
	step
		map Netherstorm
		path	follow smart; loop on; ants curved; dist 10
		path	71.4,35.4	71.5,38.5	71.9,43.1
		path	73.5,42.4	74.2,39.5	73.2,38.3
		path	73.7,35.8	72.6,34.5
		kill Nether Drake##18877+, Nether Dragon##20332+
		|goldcollect 64 Nether Dragonscales##29548
		|meta crap_items_follow=1
		|goldcollect 148 Knothide Leather##21887
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Thick Clefthoof Leather",{
	meta={goldtype="route",skillreq={outland_skinning=1},levelreq=15},
	items={{25708,56},{21887,104,'crap'}},
	maps={"Nagrand"},
	},[[
	step
		map Nagrand
		path	follow smart; loop on; ants curved; dist 10
		path	40.0,24.2	44.2,24.8	50.8,28.2
		path	53.6,31.6	50.6,36.0	51.8,39.2
		path	56.6,43.6	60.0,41.4	69.6,45.0
		path	72.6,40.6	71.6,47.6	70.0,53.0
		path	62.6,50.4	60.6,47.6	57.6,46.8
		path	53.6,51.6	48.8,40.4	46.6,31.2
		kill Clefthoof Bull##17132+, Clefthoof##18205+
		|goldcollect 56 Thick Clefthoof Leather##25708
		|meta crap_items_follow=1
		|goldcollect 104 Knothide Leather##21887
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Fel Scales/Crystal Infused Leather",{
	meta={goldtype="route",skillreq={outland_skinning=1},levelreq=10},
	items={{25700,36},{25699,30},{21887,66,'crap'}},
	maps={"Zangarmarsh"},
	},[[
	step
		map Zangarmarsh
		path	follow smart; loop on; ants curved; dist 10
		path	87.8,37.6	88.8,33.4	88.2,27.8
		path	83.0,27.2	79.0,28.8	74.6,29.6
		path	82.0,31.4	86.8,30.6
		kill Marshrock Stomper##20283+, Marshrock Threshalisk##19706+
		|goldcollect 36 Fel Scales##25700
		|goldcollect 30 Crystal Infused Leather##25699
		|meta crap_items_follow=1
		|goldcollect 66 Knothide Leather##21887
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Cobra Scale",{
	meta={goldtype="route",skillreq={outland_skinning=1},levelreq={25}},
	items={{29539,12},{21887,68,'crap'}},
	maps={"Shadowmoon Valley"},
	},[[
	step
		map Shadowmoon Valley
		path	follow smart; loop on; ants curved; dist 10
		path	60.4,21.0	68.2,22.2	68.6,29.4
		path	73.4,28.6	73.6,31.2	65.0,29.6
		path	65.4,24.8	62.6,22.8
		kill Shadow Serpent##23020+
		|goldcollect 12 Cobra Scales##29539
		|meta crap_items_follow=1
		|goldcollect 68 Knothide Leather##21887
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Fel Hide",{
	meta={goldtype="route",skillreq={outland_skinning=1},levelreq=25},
	items={{25707,56},{21887,188,'crap'}},
	maps={"Netherstorm"},
	},[[
	step
		map Netherstorm
		path	follow loose; loop on; ants curved
		path	68.0,65.4	68.6,63.0	68.0,60.2
		path	67.0,58.8	63.2,58.4	59.8,58.4
		path	56.8,56.6	54.2,60.2	61.2,61.6
		path	62.2,62.6	63.2,65.6	65.0,68.6
		kill Warp Chaser##18884+
		|tip Kill Warp Chasers along and in the center of the path
		|goldcollect 56 Fel Hide##25707
		|meta crap_items_follow=1
		|goldcollect 188 Knothide Leather##21887
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

--  Northrend  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Borean Leather (Gundrak)",{
	meta={goldtype="route",skillreq={northrend_skinning=1},levelreq=20},
	items={{33568,450}},
	maps={"Zul'Drak","Gundrak"},
	},[[
	step
		Enter Gundrak |goto Gundrak/1 59.0,30.9 |c
	step
	label "Start"
		map Gundrak/0
		path	follow smart; loop off; ants curved; dist 20
		path	59.0,30.9	57.8,35.2	58.8,40.7
		path	58.8,58.9	58.1,67.5	53.1,73.5
		kill Unyielding Constrictor##29768+, Spitting Cobra##29774+,
		Follow the path killing and skinning any snakes you see |goto Gundrak/1 53.1,73.5 < 10 |noway |c |next "Return" |or
		|goldcollect 450 Borean Leather##33568 |next "Sell" |or
		|goldtracker
		Click here to sell items |confirm |next "Sell"
	step
	label "Return"
		map Gundrak/0
		path	follow smart; loop off; ants curved; dist 20
		path	53.1,73.5	58.1,67.5	58.8,58.9
		path	58.8,40.7	57.6,36.1	59.8,36.0
		path	59.9,39.7	57.8,39.8	57.8,34.9
		path	59.0,30.3	56.2,28.4
		Follow the path and leave Gundrak |goto Zul'Drak/0 76.4,21.4 |noway |c |next "Reset" |or
		|goldcollect 450 Borean Leather##33568 |next "Sell" |or
		|goldtracker
		Click here to sell items |confirm |next "Sell"
	step
	label "Reset"
		Right-click your player's unit frame and select "_Reset all instances_"
		After resetting Gundrak, re-enter the instance |goto Gundrak/1 59.0,30.9 |noway |c |next "Start"
	step
	label "Sell"
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Borean Leather",{
	meta={goldtype="route",skillreq={northrend_skinning=1},levelreq=20},
	items={{33568,596},{44128,4}},
	maps={"Zul'Drak"},
	},[[
	step
		map Zul'Drak/0
		path	follow smart; loop on; ants curved; dist 25
		path	77.9,21.3	77.0,18.0	73.2,19.6
		path	71.6,25.0	71.2,29.8	71.3,32.9
		path	75.2,37.3	77.8,42.4	79.2,38.0
		path	81.0,32.5	85.2,27.9	81.8,26.9
		path	75.5,30.3
		kill Gundrak Raptor##29334+
		Follow the path killing and skinning any raptors you see
		|goldcollect 596 Borean Leather##33568
		|goldcollect 4 Arctic Fur##44128
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Savage Leather/Pristine Hide (Tol Barad)",{
	meta={goldtype="route",skillreq={northrend_skinning=1},levelreq=30},
	items={{52976,532},{52980,4}},
	maps={"Tol Barad Peninsula"},
	},[[
	step
		map Tol Barad Peninsula
		path	follow smart; loop on; ants curved; dist 10
		path	60.5,52.7	56.9,50.1	54.1,48.1
		path	52.3,50.1	54.1,56.0	57.8,60.1
		path	61.0,57.2
		kill Darkwood Lurker##46508+, Darkwood Broodmother##46507+
		|goldcollect 532 Savage Leather##52976
		|goldcollect 4 Pristine Hide##52980
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Icy Dragonscale/Arctic Fur",{
	meta={goldtype="route",skillreq={northrend_skinning=1},levelreq=20},
	items={{44128,4},{33568,200,'crap'},{38557,76,'crap'},{43013,144,'crap'}},
	maps={"Sholazar Basin"},
	},[[
	step
		map Sholazar Basin
		path	follow loose; loop on; ants curved
		path	42.4,28.6	45.8,31.2	48.2,30.6
		path	48.8,27.4	49.0,23.2	46.8,23.2
		path	45.2,23.6
		kill Primordial Drake##28378+
		|goldcollect 4 Arctic Fur##44128  //Note: All world farming locations have been nerfed.
		|meta crap_items_follow=1
		|goldcollect 200 Borean Leather##33568
		|goldcollect 76 Icy Dragonscale##38557
		|goldcollect 144 Chilled Meat##43013
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Nerubian Chitin",{
	meta={goldtype="route",skillreq={northrend_skinning=1},levelreq=20},
	items={{38558,44},{33568,140,'crap'},{33470,8,'crap'}},
	maps={"Zul'Drak"},
	},[[
	step
		map Zul'Drak
		path	follow loose; loop on; ants curved
		path	58.6,74.4	56.8,78.6	54.4,81.8
		path	56.4,85.4	59.2,81.6	60.8,80.2
		path	61.6,79.2
		kill Hath'ar Skimmer##28258+, Hath'ar Necromagus##28257+
		|goldcollect 44 Nerubian Chitin##38558
		|meta crap_items_follow=1
		|goldcollect 140 Borean Leather##33568
		|goldcollect 8 Frostweave Cloth##33470
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Jormungar Scale",{
	meta={goldtype="route",skillreq={northrend_skinning=1},levelreq=25},
	items={{38561,20},{33568,80,'crap'},{43013,40,'crap'}},
	maps={"The Storm Peaks"},
	},[[
	step
		Enter the cave here |goto The Storm Peaks 56.0,64.2 < 20 |c
	step
		map The Storm Peaks
		path	follow loose; loop on; ants curved
		path	55.1,63.4	53.8,62.9	53.5,62.1
		path	54.6,60.7	55.4,60.6	55.7,62.0
		path	55.6,63.0
		kill Ravenous Jormungar##29605+
		|goldcollect 20 Jormungar Scale##38561
		|meta crap_items_follow=1
		|goldcollect 80 Borean Leather##33568
		|goldcollect 40 Chilled Meat##43013
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

--  Cataclysm  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Savage Leather/Pristine Hide (Twilight Highlands)",{
	meta={goldtype="route",skillreq={cataclysm_skinning=1},levelreq=30},
	items={{52976,390},{52980,4}},
	maps={"Twilight Highlands"},
	},[[
	step
		map Twilight Highlands/0
		path	follow smart; loop on; ants curved; dist 10
		path	52.5,26.7	54.2,28.6	58.0,27.1
		path	61.3,30.8	62.1,37.5	66.3,42.1
		path	69.1,41.1	68.1,31.7	71.6,30.5
		path	67.1,21.6	65.7,14.6	62.3,9.3
		path	57.3,10.0	52.0,10.2	53.4,18.9
		kill Highland Worg##46153+, Highland Elk##46970+, Tawny Owl##46162+, Untamed Gryphon##46158+
		|goldcollect 390 Savage Leather##52976
		|goldcollect 4 Pristine Hide##52980
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Blackened Dragonscale",{
	meta={goldtype="route",skillreq={cataclysm_skinning=1},levelreq=30},
	items={{52979,96},{52976,216,'crap'}},
	maps={"Twilight Highlands"},
	},[[
	step
		map Twilight Highlands
		path	follow smart; loop on; ants curved; dist 10
		path	66.3,69.0	68.4,73.0	67.4,77.5
		path	64.4,81.8	61.9,83.2	60.2,84.6
		path	58.1,85.1	58.7,82.0	59.9,79.7
		path	61.3,76.3	61.5,72.5	63.4,69.3
		path	65.8,72.1
		kill Obsidian Charscale##47797+, Obsidian Viletongue##47796+
		|goldcollect 96 Blackened Dragonscale##52979
		|meta crap_items_follow=1
		|goldcollect 216 Savage Leather##52976
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

--  Pandaria  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Exotic Leather",{
	meta={goldtype="route",skillreq={pandaria_skinning=1},levelreq=15},
	items={{72120,824},{79101,24},{72201,68,'crap'},{89112,64,'crap'}},
	maps={"Valley of the Four Winds"},
	},[[
	step
		map Valley of the Four Winds
		path	follow smart; loop on; ants curved; dist 15
		path	28.7,30.9	27.4,32.3	27.8,37.4
		path	29.4,41.7	30.0,44.9	31.6,32.6
		kill Stout Shaghorn##59139+, Skyrange Mushan##64309+
		|goldcollect 824 Exotic Leather##72120
		|goldcollect 24 Prismatic Scale##79101
		|meta crap_items_follow=1
		|goldcollect 68 Plump Intestines##72201
		|goldcollect 64 Mote of Harmony##89112
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Prismatic Scale",{
	meta={goldtype="route",skillreq={pandaria_skinning=1},levelreq={10}},
	items={{79101,84},{72120,252,'crap'}},
	maps={"The Jade Forest"},
	},[[
	step
		map The Jade Forest
		path	follow smart; loop on; ants curved; dist 10
		path	63.8,33.2	68.2,33.0	69.0,30.0
		path	69.0,26.2	66.6,26.0	65.6,28.0
		kill Saltback Yearling##58219+
		|goldcollect 84 Prismatic Scale##79101
		|meta crap_items_follow=1
		|goldcollect 252 Exotic Leather##72120
		|goldtracker
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])

--  Draenor  --

ZygorGuidesViewer:RegisterGuide("GOLD\\Gathering\\Raw Beast Hide",{
	meta={goldtype="route",skillreq={draenor_skinning=1},levelreq=35},
	items={{110609,254},{111557,264},{109131,132}},
	maps={"Nagrand D"},
	},[[
	step
		kill Tamed Clefthoof##79034+
		These Clefthoof mobs will respawn instantly when you kill them
		|goldcollect 254 Raw Beast Hide##110609 |goto Nagrand D/0 78.6,72.2
		|goldcollect 264 Sumptuous Fur##111557 |goto Nagrand D/0 78.6,72.2
		|goldcollect 132 Raw Clefthoof Meat##109131 |goto Nagrand D/0 78.6,72.2
		Click here to sell items |confirm
	step
		#include "auctioneer"
]])
