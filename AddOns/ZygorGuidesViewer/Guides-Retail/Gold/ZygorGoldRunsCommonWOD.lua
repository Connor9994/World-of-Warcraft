ZygorGuidesViewer.GuideMenuTier = "WOD"

ZygorGuidesViewer:RegisterInclude("goldg_farm",[[
	step
		Start each day out by harvesting the crops from the previous day. |goto Valley of the Four Winds 51.9,48.3
		confirm
	step
		talk Merchant Greenfield##58718
		buy 4 %seed% |goto Valley of the Four Winds/0 52.9,52.1 |only if completedq(30257) and not completedq(31936)
		buy 8 %seed% |goto Valley of the Four Winds/0 52.9,52.1 |only if completedq(31936) and not completedq(31937)
		buy 12 %seed% |goto Valley of the Four Winds/0 52.9,52.1 |only if completedq(31937) and not completedq(32682)
		buy 16 %seed% |goto Valley of the Four Winds/0 52.9,52.1 |only if completedq(32682)
	step
		goto Valley of the Four Winds 51.9,48.3
		Plant the seeds in your farm. You will have to wait until the next say to harvest them.
		confirm
	step
		Next day, harvest:
		collect 20 %veggie% |only if completedq(30257) and not completedq(31936)
		collect 40 %veggie% |only if completedq(31936) and not completedq(31937)
		collect 60 %veggie% |only if completedq(31937) and not completedq(32682)
		collect 80 %veggie% |only if completedq(32682)
]])
--PLATE XMOG
ZygorGuidesViewer:RegisterGuide("GOLD\\Daily Runs\\Jade Plate Set Transmog",{
	meta={goldtype="xmog",levelreq=15,gold=100,time=15,icon="Interface\\ICONS\\inv_chest_plate07"},
	description="\nThis guide will put you on the path to obtaining the Jade Plate Set",
	items={{14920,1},{14913,1},{34535,1},{4304,1},{8170,1},{14918,1},{14914,1},{14917,1},{14915,1},{20404,1},{14047,1}},
	maps={"Winterspring","Un'Goro Crater","Zul'Farrak","Silithus"},
	},[[
		step
		label "begin"
			This guide will point you in the direction to each piece of the Jade Plate armor.
			Since they have a very low drop rate, do expect to farm for a bit for these items
			confirm always
		step
		label "Jade1"
			Follow the path into the cave, killing all Yeti as you come across them |goto Winterspring/0 71.7,51.7 |noway |c |next "Jade2"
			You will be able to skin _Thick and Rugged Leathers_ from the yetis |only if skill("Skinning")>=250
			map Winterspring/0 -- WINTERSPRING FARMING
			path follow smart; loop off; ants curved; dist 20
			path	63.0,53.4	65.1,54.5	66.3,56.3
			path	67.3,54.4	68.5,54.2	69.3,52.4
			path	69.7,53.7	69.5,55.0	70.1,53.7
			path	70.8,53.3	71.6,52.9	71.7,51.7
			goldcollect Jade Legplate##14920 |n
			goldcollect Jade Greaves##14913 |n
			|tip It's possible to get this from the path, but it has a significantly lower drop rate
			goldcollect Azure Whelpling##34535 |n
			goldcollect Thick Leather##4304 |n
			goldcollect Rugged Leather##8170 |n
			--goldcollect
			Click here to sell the items you have collected |confirm |next "sell"
			_
			Click here to continue farming more parts to the Jade Plate Set |confirm |next "Jade3"
		step
		label "Jade2"
			Follow the path out of the cave, killing all Yeti as you come across them |goto 63.0,53.4 |noway |c |next "Jade1"
			You will be able to skin _Thick and Rugged Leathers_ from the yetis |only if skill("Skinning")>=250
			map Winterspring/0 -- WINTERSPRING FARMING
			path follow smart; loop off; ants curved; dist 20
			path	71.7,51.7	71.6,52.9	70.8,53.3
			path	70.1,53.7	69.5,55.0	69.7,53.7
			path	69.3,52.4	68.5,54.2	67.3,54.4
			path	66.3,56.3	65.1,54.5	63.0,53.4
			goldcollect Jade Legplate##14920 |n
			--goldcollect
			Click here to sell the items you have collected |confirm |next "sell"
			_
			Click here to continue farming more parts to the Jade Plate Set |confirm
		step
		label "Jade3"
			Kill everything inside of Zul'Farrak
			Follow the path through Zul'Farrak until you reach the temple area |goto Zul'Farrak/0 24.4,17.6 < 15 |noway |c
			map Zul'Farrak/0
			path follow smart; loop off; ants curved; dist 20
			path	57.3,80.8	59.0,67.8	57.3,55.9
			path	53.8,47.4	50.7,42.4	46.6,49.2
			path	41.2,52.0	36.1,47.2	33.9,44.2
			path	30.8,45.1	27.5,39.6	30.6,37.2
			path	33.1,38.0	34.8,35.3	34.8,28.5
			path	31.9,24.1	28.6,17.8	24.4,17.6
			goldcollect Jade Belt##14918 |n
			goldcollect Jade Bracers##14914 |n
			goldcollect Jade Gauntlets##14917 |n
			Click here to sell the items you have collected |confirm |next "sell"
			_
			Click here to continue farming more parts to the Jade Plate Set |confirm |next "Jade5"
		step
		label "Jade4"
			Kill everything inside of Zul'Farrak.
			Once you have, you will be able to reset the instance.
			This step will take you back to the start of the dungeon. _Reset_ if you wish to continue |goto Zul'Farrak/0 57.6,78.9 < 15 |noway |c
			map Zul'Farrak/0
			path follow smart; loop off; ants curved; dist 20
			path	32.1,16.6	39.8,20.8	46.7,20.3
			path	55.4,30.9	59.4,40.8	54.8,39.9
			path	52.9,44.7	57.6,57.6	58.9,67.2
			path	57.6,78.9
			goldcollect Jade Belt##14918 |n
			goldcollect Jade Bracers##14914 |n
			goldcollect Jade Gauntlets##14917 |n
			Click here to sell the items you have collected |confirm |next "sell"
			_
			Click here to continue farming more parts to the Jade Plate Set |confirm
		step
		label "Jade5"
			Follow the path and kill anything along the way.
			Do note that you can _kill anything in Un'Goro_ to have a chance for this to drop.
			|tip You can just fly in a giant circle killing everything if you wish.
			map Un'Goro Crater/0
			path follow smart; loop on; ants curved; dist 20
			path	68.5,75.3	66.7,70.0	68.2,64.0
			path	71.1,59.3	67.0,59.2	64.6,63.0
			path	60.7,62.4	58.0,61.5	57.4,68.2
			path	58.0,74.6	58.3,80.3	62.3,79.7
			path	66.6,77.8
			goldcollect Jade Breastplate##14915 |n
			goldcollect Jade Gauntlets##14917 |n
			|tip The gloves are more likely to drop from Ravensaurs in the area.
			Click here to sell the items you have collected |confirm |next "sell"
			_
			To try your hand at farming for these items in _Silithus_, click here |confirm
		step
		label "Jade6"
			Kill Twilight's Hammer enemies at the provided locations:
			_Staghelm Point_ located here |goto Silithus/0 69.7,16.6
			_Twilight Base Camp_ located here |goto Silithus/0 45.4,41.5
			_Twilight Post_ located here |goto Silithus/0 34.0,31.8
			_Twilight Outpost_ located here |goto Silithus/0 27.7,75.1
			goldcollect Jade Breastplate##14915 |n
			goldcollect Encrypted Twilight Text##20404 |n
			goldcollect Runecloth##14047 |n
			Click here to sell the items you have collected |confirm |next "sell"
			_
			To go back to farming in _Un'Goro_, click here |confirm |next "Jade5"
		step
		label "sell"
			#include "auctioneer"
			Click here to go back to the start |confirm |next "Jade1"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Daily Runs\\Saltstone Plate Set Transmog",{
	meta={goldtype="xmog",levelreq=15,gold=100,time=15,icon="Interface\\ICONS\\inv_chest_plate07"},
	description="\nThis guide will put you on the path to obtaining the Saltstone Plate Set",
	items={{14901,1},{14895,1},{14897,1},{14903,1},{14898,1},{14900,1},{14896,1}},
	maps={"Dire Maul","Thousand Needles","Feralas"},
	},[[
		step
		label "begin"
			This guide will point you in the direction to each piece of the Saltstone Plate armor.
			Since they have a very low drop rate, do expect to farm for a bit for these items
			confirm always
		step
		label "DM1"
			map Dire Maul/5
			path loop off; ants straight; dist 30
			path	12.6,39.6	12.4,66.3	12.7,77.9
			path	22.9,76.6	31.4,75.4	34.1,26.1
			You will now be directed to the next portion of the dungeon |goto 34.1,26.1 < 20 |noway |c
			goldcollect Saltstone Shoulder Pads##14901 |n
			goldcollect Saltstone Surcoat##14895 |n
			goldcollect Saltstone Gauntlets##14897 |n
			goldcollect Saltstone Armsplints##14903 |n
			goldcollect Saltstone Girdle##14898 |n
			Click here to sell the items you have collected |confirm |next "sell"
			_
			Click here for an alternative farming route |confirm |next "pvph"
		step
		label "DM2"
			_Enter_ the hallway |goto Dire Maul/5 46.0,26.2 < 20
			_Go through_ the hallway |goto 54.8,26.8 < 20
			_Continue_ through the passage |goto 56.4,35.5 < 20
			_Exit_ the passage |goto 60.8,37.8 < 20
			_Go to_ the end of the hallway |goto Dire Maul/5 84.5,37.6 < 20
			You will now be directed to the next portion of the dungeon |goto Dire Maul/5 84.5,37.6 < 20 |c
			goldcollect Saltstone Shoulder Pads##14901 |n
			goldcollect Saltstone Surcoat##14895 |n
			goldcollect Saltstone Gauntlets##14897 |n
			goldcollect Saltstone Armsplints##14903 |n
			goldcollect Saltstone Girdle##14898 |n
			Click here to sell the items you have collected |confirm |next "sell"
			_
			Click here for an alternative farming route |confirm |next "pvph"
		step
		label "DM3"
			_Enter_ the hallway |goto Dire Maul/5 58.7,37.7 < 20
			_Go up_ the ramp |goto 54.0,26.2 < 20
			_Go through_ the doorway |goto Dire Maul/5 43.8,29.4 < 20
			_Clear all_ the enemies through the room as you go through it |goto Dire Maul/5 38.8,40.9 < 20
			Continue through the room |goto 38.4,56.4 < 20
			_Go up_ the ramp |goto 43.9,66.5 < 20
			Defeat Lethtendris |goto 44.8,52.3
			You will now be directed to the next portion of the dungeon  |goto 44.8,52.3 < 10 |noway |c
			goldcollect Saltstone Shoulder Pads##14901 |n
			goldcollect Saltstone Surcoat##14895 |n
			goldcollect Saltstone Gauntlets##14897 |n
			goldcollect Saltstone Armsplints##14903 |n
			goldcollect Saltstone Girdle##14898 |n
			Click here to sell the items you have collected |confirm |next "sell"
			_
			Click here for an alternative farming route |confirm |next "pvph"
		step
		label "DM4"
			_Go down_ the ramp |goto Dire Maul/5 46.6,63.5 < 15
			_Follow_ the ramp into the room |goto Dire Maul/6 57.5,87.5 < 15
			Defeat the _Hydrospawn_ |goto Dire Maul/6 54.3,72.9 |scenariogoal 25059
			_Go up_ the ramp |goto Dire Maul/6 57.7,55.5 < 10
			_Follow_ the tunnel |goto Dire Maul/6 62.1,59.6 < 5
			Defeat _Zevrim Thornhoof_ |goto 58.8,72.6 < 4
			You will now be directed to the next portion of the dungeon |scenariogoal 25060
			goldcollect Saltstone Shoulder Pads##14901 |n
			goldcollect Saltstone Surcoat##14895 |n
			goldcollect Saltstone Gauntlets##14897 |n
			goldcollect Saltstone Armsplints##14903 |n
			goldcollect Saltstone Girdle##14898 |n
			Click here to sell the items you have collected |confirm |next "sell"
			_
			Click here for an alternative farming route |confirm |next "pvph"
		step
		label "DM5"
			_Jump down_ the ledge |goto Dire Maul/6 54.6,72.5 < 10
			_Go through_ the doorway |goto Dire Maul/6 52.9,87.9 < 15
			talk Ironbark the Redeemed##11491
			Tell him: _Thank you, Ironbark. We are ready for you to open the door._ |goto 41.2,81.0 < 15
			_Go through_ the door once Ironbark opens it |goto Dire Maul/6 40.1,49.5
			_Leave_ the tunnel |goto Dire Maul/6 45.1,28.9
			_Go down_ the ramp |goto Dire Maul/6 50.8,21.9
			_Continue_ down the ramp |goto 62.4,17.1
			_Go down_ the second ramp |goto 65.8,28.2
			Defeat Alzzin the Wildshaper |goto Dire Maul/6 55.5,28.1
			You will now be directed to the next portion of the dungeon |goto 55.5,28.1 < 10 |noway |c
			goldcollect Saltstone Shoulder Pads##14901 |n
			goldcollect Saltstone Surcoat##14895 |n
			goldcollect Saltstone Gauntlets##14897 |n
			goldcollect Saltstone Armsplints##14903 |n
			goldcollect Saltstone Girdle##14898 |n
			Click here to sell the items you have collected |confirm |next "sell"
			_
			Click here for an alternative farming route |confirm |next "pvph"
		step
		label "DME1"
			Go up the ramp |goto Dire Maul/6 67.2,28.1 < 20
			Make your way towards the exit |goto 58.8,16.4 < 20
			_Enter_ the tunnel |goto 45.2,28.9 < 15
			_Leave_ the tunnel |goto Dire Maul/6 40.1,49.2 < 15
			Go through the open room |goto 40.6,67.3 < 30
			_Enter_ the doorway |goto 49.1,91.2 < 15
			You will now be directed to the next portion of the dungeon |goto 49.1,91.2 |noway |c
			_
			Click here to sell the items you have collected |confirm |next "sell"
		step
		label "DME2"
			_Enter_ the room |goto Dire Maul/6 54.1,74.8 < 15
			_Go around_ the wall |goto 57.9,75.2 < 15
			_Go up_ the ramp |goto 57.8,89.0 < 15
			_Enter_ the open room |goto Dire Maul/5 46.8,63.1 < 15
			_Go through_ the door |goto Dire Maul/5 43.7,27.8 < 15
			_Turn left_ here |goto Dire Maul/5 32.6,26.0 < 15
			_Enter_ the tunnel |goto Dire Maul/5 30.1,81.7 < 15
			_Leave_ the dungeon |goto Dire Maul/5 27.6,85.2
			Click here to continue farming _Dire Maul_ |confirm |next "DM1"
			Click here to sell the items you have collected |confirm |next "sell"
			_
			Click here to move on to farming in Feralas |confirm
		step
		label "pvph"
			Farming here _WILL FLAG YOU_ for PvP! |only Horde
			Defeat Grimtotem Marauders around the area |goto Feralas/0 86.5,45.1
			goldcollect Saltstone Shoulder Pads##14901 |n
			goldcollect Saltstone Armsplints##14903 |n
			goldcollect Saltstone Girdle##14898 |n
			goldcollect Saltstone Legplates##14900 |n
			goldcollect Saltstone Sabatons##14896 |n
			Click here to sell the items you have collected |confirm |next "sell"
			_
			Click here to continue farming more parts to the Saltstone Plate Set |confirm
		step
		label "1k1"
			map Thousand Needles/0
			--path loop off; ants straight; dist 30
			path follow strict; loop off; ants curved; dist 20
			path	32.1,32.7	33.2,35.4	33.9,38.4
			path	36.7,39.8	39.1,41.4	42.3,43.8
			path	42.2,49.4	45.3,50.0
			Farm _Grimtotem_ enemies along this path
			goldcollect Saltstone Shoulder Pads##14901 |n
			goldcollect Saltstone Surcoat##14895 |n
			Click here to sell the items you have collected |confirm |next "sell"
			_
			Click here to farm at a different location |confirm
		step
		label "1k2"
			map Thousand Needles/0
			path follow strict; loop off; ants straight; dist 20
			path	88.7,87.8	90.8,83.0	91.5,77.2
			path	93.5,74.6	94.2,71.6
			Farm _Southsea Pirates_ along this path
			goldcollect Saltstone Shoulder Pads##14901 |n
			goldcollect Saltstone Surcoat##14895 |n
			goldcollect Saltstone Gauntlets##14897 |n
			goldcollect Saltstone Armsplints##14903 |n
			goldcollect Saltstone Girdle##14898 |n
			goldcollect Saltstone Legplates##14900 |n
			goldcollect Saltstone Sabatons##14896 |n
			Click here to sell the items you have collected |confirm |next "sell"
			_
			Click here to farm at a different location |confirm
		step
		label "1k3"
			Kill the _Ogres_ inside of the cave |goto Thousand Needles/0 92.2,83.3
			goldcollect Saltstone Legplates##14900 |n
			goldcollect Saltstone Sabatons##14896 |n
			Click here to sell the items you have collected |confirm |next "sell"
			_
			Click here to continue farming the locations of Thousand Needles |confirm |next "1k1"
		step
		label "sell"
			#include "auctioneer"
			Click here to go back to the start |confirm |next "DM1"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Daily Runs\\Tyrant Plate Set Transmog",{
	meta={goldtype="xmog",levelreq=15,gold=100,time=15,icon="Interface\\ICONS\\inv_chest_plate08"},
	description="\nThis guide will put you on the path to obtaining the Tyrant Plate Set",
	items={{14835,1},{14840,1},{14839,1},{14833,1},{14838,1},{14834,1}},
	maps={"Dire Maul","Tanaris","Zul'Farrak"},
	},[[
	step
		This guide will point you in the direction to each piece of the Tyrant Plate armors.
		Since they have a very low drop rate, do expect to farm for a bit for these items
		confirm always
	step
	label "ZF1"
		Kill everything inside of Zul'Farrak
		Follow the path through Zul'Farrak until you reach the temple area |goto Zul'Farrak/0 24.4,17.6 < 15 |noway |c
		map Zul'Farrak/0
		path follow smart; loop off; ants curved; dist 20
		path	57.3,80.8	59.0,67.8	57.3,55.9
		path	53.8,47.4	50.7,42.4	46.6,49.2
		path	41.2,52.0	36.1,47.2	33.9,44.2
		path	30.8,45.1	27.5,39.6	30.6,37.2
		path	33.1,38.0	34.8,35.3	34.8,28.5
		path	31.9,24.1	28.6,17.8	24.4,17.6
		goldcollect Tyrant's Chestpiece##14835 |n
		goldcollect Tyrant's Legplates##14840 |n
		goldcollect Tyrant's Greaves##14839 |n
		Click here to sell the items you have collected |confirm |next "sell"
		_
		Click here to continue farming more parts to the Tyrant Plate Set |confirm |next "OGRE1"
	step
	label "ZF2"
		Kill everything inside of Zul'Farrak.
		Once you have, you will be able to reset the instance.
		This step will take you back to the start of the dungeon. _Reset_ if you wish to continue |goto Zul'Farrak/0 57.6,78.9 < 15 |noway |c
		map Zul'Farrak/0
		path follow smart; loop off; ants curved; dist 20
		path	32.1,16.6	39.8,20.8	46.7,20.3
		path	55.4,30.9	59.4,40.8	54.8,39.9
		path	52.9,44.7	57.6,57.6	58.9,67.2
		path	57.6,78.9
		goldcollect Tyrant's Chestpiece##14835 |n
		goldcollect Tyrant's Legplates##14840 |n
		goldcollect Tyrant's Greaves##14839 |n
		Click here to sell the items you have collected |confirm |next "sell"
		_
		Click here to continue farming more parts to the Tyrant Plate Set |confirm
	step
	label "OGRE1"
		Be sure to kill everything in the dungeon as you go through; Also _reset_ if need be
		_Go down_ the ramp|goto Dire Maul/1 69.3,86.8 < 15
		_Cross_ through the open area |goto 69.3,80.3 < 20
		_Go up_ the ramp |goto 69.3,69.7 < 15
		_Walk around_ the ledge here |goto 64.7,68.2 < 20
		_Go up_ the ramp |goto 58.8,71.2 < 15
		_Continue_ up the ramp |goto 56.0,78.0 < 20
		_Go through_ the doorway |goto Dire Maul/1 40.7,78.1 < 20
		_Follow_ the path through the hallway |goto Dire Maul/1 30.1,77.5 < 20
		_Go through_ the doorway |goto Dire Maul/1 27.0,68.8 < 20
		_Walk around_ the wall |goto Dire Maul/1 25.1,57.1 < 20
		_Go up_ the ramp |goto 23.3,66.7 < 20
		_
		You will now be directed to the next part of Dire Maul |goto 23.3,66.7 < 20 |noway |c
		goldcollect Tyrant's Gauntlets##14833 |n
		goldcollect Tyrant's Belt##14838 |n
		goldcollect Tyrant's Greaves##14839 |n
	step
		_Go up_ the ramp |goto Dire Maul/1 25.4,54.4 < 15
		_Go through_ the door |goto 28.9,65.7 < 15
		_Follow_ the path into the open room |goto 31.8,48.9 < 20
		Defeat King Gordok |goto Dire Maul/1 31.9,26.9
		_
		goldcollect Tyrant's Gauntlets##14833 |n
		goldcollect Tyrant's Belt##14838 |n
		goldcollect Tyrant's Greaves##14839 |n
		Click here to continue farming in Dire Maul |confirm |next "OGRE1"
		_
		Click here to continue farming more pieces of the Tyrant Plate Set |confirm
	step
	label "DM1"
		map Dire Maul/5
		path loop off; ants straight; dist 30
		path	12.6,39.6	12.4,66.3	12.7,77.9
		path	22.9,76.6	31.4,75.4	34.1,26.1
		You will now be directed to the next portion of the dungeon |goto 34.1,26.1 < 20 |noway |c
		goldcollect Tyrants Armguard##14834 |n
		goldcollect Tyrant's Belt##14838 |n
		goldcollect Tyrant's Greaves##14839 |n
		Click here to sell the items you have collected |confirm |next "sell"
	step
	label "DM2"
		_Enter_ the hallway |goto Dire Maul/5 46.0,26.2 < 20
		_Go through_ the hallway |goto 54.8,26.8 < 20
		_Continue_ through the passage |goto 56.4,35.5 < 20
		_Exit_ the passage |goto 60.8,37.8 < 20
		_Go to_ the end of the hallway |goto Dire Maul/5 84.5,37.6 < 20
		You will now be directed to the next portion of the dungeon |goto Dire Maul/5 84.5,37.6 < 20 |c
		goldcollect Tyrants Armguard##14834 |n
		goldcollect Tyrant's Belt##14838 |n
		goldcollect Tyrant's Greaves##14839 |n
		Click here to sell the items you have collected |confirm |next "sell"
	step
	label "DM3"
		_Enter_ the hallway |goto Dire Maul/5 58.7,37.7 < 20
		_Go up_ the ramp |goto 54.0,26.2 < 20
		_Go through_ the doorway |goto Dire Maul/5 43.8,29.4 < 20
		_Clear all_ the enemies through the room as you go through it |goto Dire Maul/5 38.8,40.9 < 20
		Continue through the room |goto 38.4,56.4 < 20
		_Go up_ the ramp |goto 43.9,66.5 < 20
		Defeat Lethtendris |goto 44.8,52.3
		You will now be directed to the next portion of the dungeon  |goto 44.8,52.3 < 10 |noway |c
		goldcollect Tyrants Armguard##14834 |n
		goldcollect Tyrant's Belt##14838 |n
		goldcollect Tyrant's Greaves##14839 |n
		Click here to sell the items you have collected |confirm |next "sell"
	step
	label "DM4"
		_Go down_ the ramp |goto Dire Maul/5 46.6,63.5 < 15
		_Follow_ the ramp into the room |goto Dire Maul/6 57.5,87.5 < 15
		Defeat the _Hydrospawn_ |goto Dire Maul/6 54.3,72.9 |scenariogoal 25059
		_Go up_ the ramp |goto Dire Maul/6 57.7,55.5 < 10
		_Follow_ the tunnel |goto Dire Maul/6 62.1,59.6 < 5
		Defeat _Zevrim Thornhoof_ |goto 58.8,72.6 < 4
		You will now be directed to the next portion of the dungeon |scenariogoal 25060
		goldcollect Tyrants Armguard##14834 |n
		goldcollect Tyrant's Belt##14838 |n
		goldcollect Tyrant's Greaves##14839 |n
		Click here to sell the items you have collected |confirm |next "sell"
	step
	label "DM5"
		_Jump down_ the ledge |goto Dire Maul/6 54.6,72.5 < 10
		_Go through_ the doorway |goto Dire Maul/6 52.9,87.9 < 15
		talk Ironbark the Redeemed##11491
		Tell him: _Thank you, Ironbark. We are ready for you to open the door._ |goto 41.2,81.0 < 15
		_Go through_ the door once Ironbark opens it |goto Dire Maul/6 40.1,49.5
		_Leave_ the tunnel |goto Dire Maul/6 45.1,28.9
		_Go down_ the ramp |goto Dire Maul/6 50.8,21.9
		_Continue_ down the ramp |goto 62.4,17.1
		_Go down_ the second ramp |goto 65.8,28.2
		Defeat Alzzin the Wildshaper |goto Dire Maul/6 55.5,28.1
		goldcollect Tyrants Armguard##14834 |n
		goldcollect Tyrant's Belt##14838 |n
		goldcollect Tyrant's Greaves##14839 |n
		Click here to sell the items you have collected |confirm |next "sell"
		_
		Click here for an alternative farming route |confirm |next "DME1"
	step
	label "DME1"
		Go up the ramp |goto Dire Maul/6 67.2,28.1 < 20
		Make your way towards the exit |goto 58.8,16.4 < 20
		_Enter_ the tunnel |goto 45.2,28.9 < 15
		_Leave_ the tunnel |goto Dire Maul/6 40.1,49.2 < 15
		Go through the open room |goto 40.6,67.3 < 30
		_Enter_ the doorway |goto 49.1,91.2 < 15
		You will now be directed to the next portion of the dungeon  |goto 49.1,91.2 |noway |c
		_
		Click here to sell the items you have collected |confirm |next "sell"
	step
	label "DME2"
		_Enter_ the room |goto Dire Maul/6 54.1,74.8 < 15
		_Go around_ the wall |goto 57.9,75.2 < 15
		_Go up_ the ramp |goto 57.8,89.0 < 15
		_Enter_ the open room |goto Dire Maul/5 46.8,63.1 < 15
		_Go through_ the door |goto Dire Maul/5 43.7,27.8 < 15
		_Turn left_ here |goto Dire Maul/5 32.6,26.0 < 15
		_Enter_ the tunnel |goto Dire Maul/5 30.1,81.7 < 15
		_Leave_ the dungeon |goto Dire Maul/5 27.6,85.2
		Click here to continue farming _Dire Maul_ |confirm |next "DM1"
		Click here to sell the items you have collected |confirm |next "sell"
		_
		Click here to move on to farming in Tanaris |confirm
	step
	label "SSP1"
		map Tanaris/0
		path follow smart; loop off; ants curved; dist 20
		path	68.4,42.3	69.9,43.3	71.2,44.6
		path	72.2,45.8	72.7,48.5	72.0,49.8
		path	69.9,50.7	69.6,52.7	69.1,54.5
		path	69.5,57.0
		goldcollect Tyrant's Gauntlets##14833 |n
		You will be routed back to the cave entrance of Southbreak Shore |goto Tanaris/0 69.5,57.0 < 30 |noway |c
		_
		Click here to move onto farming Zul'Farrak |confirm |next "ZF1"
	step
	label "SSP2"
		map Tanaris/0
		path follow smart; loop off; ants curved; dist 20
		path	69.5,57.0	69.1,54.5	69.6,52.7
		path	69.9,50.7	72.0,49.8	72.7,48.5
		path	72.2,45.8	71.2,44.6	69.9,43.3
		path	68.4,42.3
		goldcollect Tyrant's Gauntlets##14833 |n
		Click here to farm Southsea Pirates more |confirm |next "SSP1"
		_
		Click here to sell the items you have collected |confirm
	step
	label "sell"
		#include "auctioneer"
		Click here to go back to the start of the guide |next "ZF1" |confirm
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Daily Runs\\Bloodscale Plate Set Transmog",{
	meta={goldtype="xmog",levelreq=10,gold=100,time=15,icon="Interface\\ICONS\\inv_chest_chain_07"},
	description="\nThis guide will put you on the path to obtaining the Bloodscale Breastplate Set",
	items={{24944,1},{24942,1},{24943,1},{24945,1},{24947,1},{24949,1},{14047,1},{21877,1}},
	maps={"Hellfire Ramparts","The Blood Furnace"},
	},[[
	step
		--This could use more farming areas
		This guide will point you in the direction to each piece of the Bloodscale Plate armors.
		Since they have a very low drop rate, do expect to farm for a bit for these items
		confirm always
	step
	label "HR1"
		Be sure to set the dungeon difficulty to normal
		_Cross_ the bridge |goto Hellfire Ramparts/1 47.1,64.8 < 25
		_Go around_ the wall |goto 46.8,52.1 < 25
		_Continue_ around the wall |goto 60.6,51.1 < 20
		_Enter_ the open room |goto Hellfire Ramparts/1 74.0,48.4 < 25
		Defeat Watchkeeper Gargolmar |goto Hellfire Ramparts/1 71.0,30.8
		goldcollect Bloodscale Breastplate##24944 |n
		goldcollect Bloodscale Belt##24942 |n
		goldcollect Bloodscale Sabatons##24943 |n
		goldcollect Bloodscale Gauntlets##24945 |n
		goldcollect Bloodscale Legguards##24947 |n
		goldcollect Bloodscale Bracers##24949 |n
		_Secondary Items:_
		goldcollect Runecloth##14047 |n
		goldcollect Netherweave Cloth##21877 |n
		Once you reach the ogre room, you will be directed to the next section of farming |goto Hellfire Ramparts/1 71.0,30.8 < 10 |noway |c
		_
		Click here if you want to sell what you have |confirm |next "sell"
	step
		--Couldn't do individual coordinates, too close together
		map Hellfire Ramparts/1
		path follow strict; loop off; ants curved; dist 20
		path	64.9,40.2	69.2,41.6	63.9,44.8
		path	50.0,52.2	40.1,22.8
		Defeat Omor the Unscarred |goto 40.1,22.8 < 20
		goldcollect Bloodscale Breastplate##24944 |n
		goldcollect Bloodscale Belt##24942 |n
		goldcollect Bloodscale Sabatons##24943 |n
		goldcollect Bloodscale Gauntlets##24945 |n
		goldcollect Bloodscale Legguards##24947 |n
		goldcollect Bloodscale Bracers##24949 |n
		_Secondary Items:_
		goldcollect Runecloth##14047 |n
		goldcollect Netherweave Cloth##21877 |n
		Once you reach the ogre room, you will be directed to the next section of farming |goto 40.1,22.8 < 20 |noway |c
		_
		Click here if you want to sell what you have |confirm |next "sell"
	step
		_Go through_ the doorway |goto Hellfire Ramparts/1 45.1,37.4 < 30
		_Go down_ the bridge |goto 48.4,62.4 < 30
		_Enter_ the empty room |goto 37.1,78.8
		Defeat Nazan and Vazruden
		goldcollect Bloodscale Breastplate##24944 |n
		goldcollect Bloodscale Belt##24942 |n
		goldcollect Bloodscale Sabatons##24943 |n
		goldcollect Bloodscale Breastplate##24944 |n
		goldcollect Bloodscale Gauntlets##24945 |n
		goldcollect Bloodscale Legguards##24947 |n
		goldcollect Bloodscale Bracers##24949 |n
		_Secondary Items:_
		goldcollect Runecloth##14047 |n
		goldcollect Netherweave Cloth##21877 |n
		Once you reach the ogre room, you will be directed to the next section of farming |goto 37.1,78.8 < 20 |noway |c
		_
		Click here if you want to sell what you have |confirm |next "sell"
	step
	label "BF1"
		_Go up_ the stairs |goto The Blood Furnace/1 58.3,82.5 < 30
		_Go into_ the doorway |goto 58.2,60.1 < 20
		_Follow_ the path to the left |goto The Blood Furnace/1 55.5,53.9 < 20
		_Enter_ the open room |goto The Blood Furnace/1 46.1,41.2 < 20
		Defeat The Maker |goto The Blood Furnace/1 37.1,41.2
		goldcollect Bloodscale Breastplate##24944 |n
		goldcollect Bloodscale Belt##24942 |n
		goldcollect Bloodscale Sabatons##24943 |n
		goldcollect Bloodscale Breastplate##24944 |n
		goldcollect Bloodscale Gauntlets##24945 |n
		goldcollect Bloodscale Legguards##24947 |n
		goldcollect Bloodscale Bracers##24949 |n
		_Secondary Items:_
		goldcollect Netherweave Cloth##21877 |n
		Once you reach the ogre room, you will be directed to the next section of farming |goto The Blood Furnace/1 37.1,41.2 < 20 |noway |c
		_
		Click here if you want to sell what you have |confirm |next "sell"
	step
		_Enter_ the path |goto The Blood Furnace/1 31.8,42.3 < 20
		_Leave_ the tunnel |goto 32.1,21.6 < 20
		Click the Cell Door Lever |goto The Blood Furnace/1 43.3,22.0 < 15
		Defeat Broggok
		goldcollect Bloodscale Breastplate##24944 |n
		goldcollect Bloodscale Belt##24942 |n
		goldcollect Bloodscale Sabatons##24943 |n
		goldcollect Bloodscale Breastplate##24944 |n
		goldcollect Bloodscale Gauntlets##24945 |n
		goldcollect Bloodscale Legguards##24947 |n
		goldcollect Bloodscale Bracers##24949 |n
		_Secondary Items:_
		goldcollect Netherweave Cloth##21877 |n
		Once you reach the ogre room, you will be directed to the next section of farming |goto The Blood Furnace/1 43.3,22.0 < 15 |noway |c
		_
		Click here if you want to sell what you have |confirm |next "sell"
	step
		_Enter_ the doorway |goto The Blood Furnace/1 47.5,22.0 < 20
		_Go through_ the doorway on the right |goto The Blood Furnace/1 58.1,22.2 < 20
		_Go down_ the ramp |goto The Blood Furnace/1 62.0,28.7 < 20
		_Enter_ the room |goto The Blood Furnace/1 65.8,41.3 < 20
		Defeat Keli'dan the Breaker |goto The Blood Furnace/1 58.2,42.0
		goldcollect Bloodscale Breastplate##24944 |n
		goldcollect Bloodscale Belt##24942 |n
		goldcollect Bloodscale Sabatons##24943 |n
		goldcollect Bloodscale Breastplate##24944 |n
		goldcollect Bloodscale Gauntlets##24945 |n
		goldcollect Bloodscale Legguards##24947 |n
		goldcollect Bloodscale Bracers##24949 |n
		_Secondary Items:_
		goldcollect Netherweave Cloth##21877 |n
		Once you reach the ogre room, you will be directed to the next section of farming |goto The Blood Furnace/1 58.2,42.0  < 15 |noway |c
		_
		Click here if you want to sell what you have |confirm |next "sell"
	step
		_Enter_ the tunnel |goto The Blood Furnace/1 62.5,50.6 < 20
		_Exit_ the tunnel |goto 61.1,90.6 < 20
		_Leave_ the dungeon |goto The Blood Furnace/1 47.8,90.6 < 20
		Click here to continue farming the Hellfire Ramparts |confirm |next "HR1"
		Click here to continue farming the Blood Furnace |confirm |next "BF1"
		_
		Click here if you wish to sell |confirm |next "sell"
	step
	label "sell"
		#include "auctioneer"
		Click here to go back to the start |confirm |next "HR1"
]])
--MAIL XMOG
ZygorGuidesViewer:RegisterGuide("GOLD\\Daily Runs\\Ebonhold Mail Set Transmog",{
	meta={goldtype="xmog",levelreq=20,gold=100,time=15,icon="Interface\\ICONS\\inv_chest_chain_17"},
	inv_chest_plate0="inv_chest_plate08",
	description="\nThis guide will put you on the path to obtaining the Ebonhold Mail Set",
	items={{8269,1},{8264,1},{8267,1},{8268,1},{14047,1},{14227,1},{10285,1},{4337,1},{8265,1},{8271,1},{13466,1}},
	maps={"Swamp of Sorrows","Blackrock Spire","Burning Steppes","Blasted Lands","The Temple of Atal'Hakkar"},
	},[[
		step
			This guide will point you in the direction to each piece of the Ebonhold Mail armors.
			Since they have a very low drop rate, do expect to farm for a bit for these items
			confirm always
		step
		label "boots1"
			The _Ebonhold Boots_ can be looted from _Mithril Lockboxes_, so if you get them, have a rogue open them or send them to a rogue alt.
			Be sure to _kill everything_ along your path
			_
			_Go through_ the passage |goto Blackrock Spire/4 40.7,45.8 < 20
			_Go down_ the ramp |goto Blackrock Spire/3 49.6,39.9 < 20
			_Cross_ the bridge |goto 59.5,42.8 < 20
			_Cross_ the second bridge |goto 66.6,44.7 < 20
			_Go around_ the opening in the ground |goto 66.0,58.2 < 20
			_Enter_ the hallway |goto 57.0,57.8 < 20
			_Enter_ the room |goto 46.1,57.7 < 20
			Defeat Highlord Omokk |goto 35.7,55.5
			Once you reach the ogre room, you will be directed to the next section of farming |goto 35.7,55.5 < 20 |noway |c
			goldcollect Ebonhold Boots##8269 |n
			goldcollect Ebonhold Wristguards##8264 |n
			goldcollect Ebonhold Gauntlets##8267 |n
			goldcollect Ebonhold Girdle##8268 |n
			_Secondary Items:_
			goldcollect Runecloth##14047 |n
			collect ##5758 |n
		step
		label "boots2"
			_Cross_ the bridge |goto Blackrock Spire/3 47.8,57.7 < 20
			_Exit_ the hallway |goto Blackrock Spire/3 56.7,57.7 < 15
			_Go down_ the ramp |goto 57.0,51.1 < 10
			_Enter_ the doorway |goto Blackrock Spire/2 53.2,52.6 < 5
			_Go up_ the ramp and kill the enemies there |goto Blackrock Spire/2 55.3,61.5 < 10
			|tip Come back down after you kill the enemies
			_Go down_ the ramp |goto Blackrock Spire/2 56.9,58.3 < 15
			_Enter_ the doorway |goto Blackrock Spire/1 54.2,61.6 < 15
			Defeat _War Master Voone_ |goto Blackrock Spire/1 52.9,54.4
			Once you reach War Master Voone, you will be directed to the next section of farming |goto Blackrock Spire/1 52.9,54.4 < 10 |noway |c
			goldcollect Ebonhold Boots##8269 |n
			goldcollect Ebonhold Wristguards##8264 |n
			goldcollect Ebonhold Gauntlets##8267 |n
			goldcollect Ebonhold Girdle##8268 |n
			_Secondary Items:_
			goldcollect Runecloth##14047 |n
			collect ##5758 |n
		step
		label "boots3"
			_Leave_ the room |goto Blackrock Spire/1 53.8,61.6 < 15
			_Enter_ the doorway |goto 66.0,50.7 < 15
			_Pass_ through the rocks |goto Blackrock Spire/3 61.9,46.2 < 15
			_Follow_ the path through Hordemar City |goto Blackrock Spire/1 50.4,51.6 < 15
			_Continue_ through the area |goto Blackrock Spire/1 49.1,63.9 < 20
			_Go up_ the ramp |goto 57.1,70.4 < 20
			_Continue_ up the ramp |goto Blackrock Spire/2 56.3,73.5 < 20
			_Follow_ the path up |goto Blackrock Spire/3 46.9,68.6 < 20
			_Continue_ along the path |goto Blackrock Spire/4 42.6,60.9 < 20
			Once you reach this point, you willbe directed to the next section of farming |goto Blackrock Spire/4 42.6,60.9 < 20 |noway |c
			goldcollect Ebonhold Boots##8269 |n
			goldcollect Ebonhold Wristguards##8264 |n
			goldcollect Ebonhold Gauntlets##8267 |n
			goldcollect Ebonhold Girdle##8268 |n
			_Secondary Items:_
			goldcollect Runecloth##14047 |n
			goldcollect Ironweb Spider Silk##14227 |n
			goldcollect Shadow Silk##10285 |n
			goldcollect Thick Spider's Silk##4337 |n
			collect ##5758 |n
		step
		label "boots4"
			_Enter_ the doorway |goto Blackrock Spire/4 42.8,74.0
			_Go up_ the ramp |goto Blackrock Spire/5 47.4,79.9
			_Enter_ the Storehouse |goto 53.8,84.6
			Once you reach this point, you willbe directed to the next section of farming |goto 53.8,84.6  < 20 |noway |c
			goldcollect Ebonhold Boots##8269 |n
			goldcollect Ebonhold Wristguards##8264 |n
			goldcollect Ebonhold Gauntlets##8267 |n
			goldcollect Ebonhold Girdle##8268 |n
			_Secondary Items:_
			goldcollect Runecloth##14047 |n
			collect ##5758 |n
			collect Worg Carrier##12264 |n
		step
		label "boots5"
			_Go down_ the ramp |goto Blackrock Spire/5 51.4,79.9 < 15
			_Enter_ the room |goto 37.6,84.0 < 15
			_Go up_ the ramp |goto 40.0,77.1 < 15
			_Walk around_ the gap in the ground |goto Blackrock Spire/5 35.9,71.4 < 15
			_Cross_ the bridge |goto 37.4,63.7 < 15
			_Go through_ the doorway |goto Blackrock Spire/5 40.1,60.4 < 10
			_Enter_ the Battle Chamber |goto Blackrock Spire/6 50.8,60.5 < 15
			_Follow_ the path up |goto 59.0,65.3 < 15
			Defeat Overlord Wyrmthalak |goto 56.1,57.0
			Once you reach this point, you willbe directed to the next section of farming |goto 56.1,57.0 |noway |c
			goldcollect Ebonhold Boots##8269 |n
			goldcollect Ebonhold Wristguards##8264 |n
			goldcollect Ebonhold Gauntlets##8267 |n
			goldcollect Ebonhold Girdle##8268 |n
			_Secondary Items:_
			goldcollect Runecloth##14047 |n
			collect ##5758 |n
		step
		label "boots6"
			Pass through the hallway |goto Blackrock Spire/6 44.8,60.5 < 15
			Go through the second doorway |goto Blackrock Spire/6 40.8,60.4 < 8
			Jump down the ledge |goto Blackrock Spire/5 40.0,62.4 < 10
			Jump down to the bridge below |goto Blackrock Spire/4 46.6,57.8 < 15
			_Go through_ the doorway |goto Blackrock Spire/3 56.6,57.7 < 15
			_Enter_ the room |goto Blackrock Spire/3 66.1,58.7 < 15
			_Cross_ the bridge |goto 66.2,50.3 < 15
			_Cross_ the second bridge |goto 63.7,42.9 < 15
			_Go up_ the ramp |goto Blackrock Spire/3 54.5,37.4 < 15
			_Go through_ the passage |goto Blackrock Spire/4 40.3,47.0 < 15
			_Leave_ the instance |goto 37.8,41.4 < 15
			You can now reset the instance if you wish to |goto Burning Steppes/14 80.3,40.3
			_
			To continue farming here, click here to move back to the start. |confirm |next "boots1"
			_
			Click here to farm other parts of the Ebonhold set |confirm
		step
			talk Zidormi##88206
			Tell her: _Show me the Blasted Lands before the invasion._ |goto Blasted Lands/0 48.2,7.3
			|confirm
		step
		label "chest1"
			Follow this path, killing Ashmane Boars, Dreadmaul Ogres, Snickerfang Hyena, Redstone Basilisk and Enthralled Cultists.
			map Blasted Lands/0
			path follow smart; loop off; ants curved; dist 20
			path	58.4,25.0	54.9,23.9	52.1,26.5
			path	54.2,31.0	56.7,37.0	53.7,38.8
			path	50.6,36.3	46.9,33.9
			goldcollect Ebonhold Armor##8265
			goldcollect Ebonhold Leggings##8271
			goldcollect Ebonhold Boots##8269
			_Secondary Items:_
			goldcollect Runecloth##14047
			To continue farming at another location, click here |confirm
			_
			Click here to farm other parts of the Ebonhold set |confirm |next "wrist1"
		step
		label "chest2"
			map Swamp of Sorrows/0
			path follow smart; loop on; ants curved; dist 20
			path	37.4,51.9	33.8,55.5	30.6,54.7
			path	27.6,50.9	27.4,44.7	28.6,39.8
			path	32.0,38.8	34.4,35.7	37.3,34.8
			path	38.2,39.1	38.1,42.9	37.2,47.5
			path	33.9,47.9
			Kill the slimes in the area
			goldcollect Ebonhold Armor##8265 |n
			_Secondary Items:_
			goldcollect Sorrowmoss##13466 |n
			To continue farming here, click here to move back to the start. |confirm |next "chest1"
			_
			Click here to farm other parts of the Ebonhold set |confirm
		step
		label "wrist1"
			Go _down the stairs_, following the path _into the Sunken Temple_ |goto Swamp of Sorrows/0 69.7,53.6 < 10 |c
			map The Temple of Atal'Hakkar/1
			path follow smart; loop off; ants curved; dist 20
			path	50.0,42.8	39.0,36.3	28.0,26.6
			path	23.8,63.0	31.0,61.2	42.8,52.4
			path	50.4,59.9	57.7,53.3	75.7,64.3
			path	76.1,38.7
			You will be guided to the next section once you reach this area. |goto 76.1,38.7 < 20 |noway |c
			goldcollect Ebonhold Wristguards##8264 |n
			goldcollect Ebonhold Gauntlets##8267 |n
			goldcollect Ebonhold Girdle##8268 |n
			_Secondary Items:_
			goldcollect Runecloth##14047 |n
		step
			map The Temple of Atal'Hakkar/1
			path follow smart; loop off; ants curved; dist 20
			path	75.0,63.5	69.7,62.1	57.0,51.5
			path	50.0,59.7	49.6,86.8	65.7,87.6
			goldcollect Ebonhold Wristguards##8264 |n
			goldcollect Ebonhold Gauntlets##8267 |n
			goldcollect Ebonhold Girdle##8268 |n
			_Secondary Items:_
			goldcollect Runecloth##14047 |n
			Click here to return to the start of the guide |confirm |next "boots1"
			_
			Click here to farm other parts of the Ebonhold set |confirm
		step
			label "sell"
			#include "auctioneer"
			Click here to go back to the start |confirm |next "boots1"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Daily Runs\\Ironhide Mail Set Transmog",{
	meta={goldtype="xmog",levelreq=15,gold=100,time=15,icon="Interface\\ICONS\\inv_chest_plate08"},
	description="\nThis guide will put you on the path to obtaining the Ironhide Mail Set",
	items={{15639,1},{15642,1},{15641,1},{15644,1},{15647,1},{15640,1},{15646,1},{20404,1},{14047,1}},
	maps={"Winterspring","Zul'Farrak","Silithus"},
	},[[
	step
	label "begin"
		This guide will point you in the direction to each piece of the Ironhide Mail armor.
		Since they have a very low drop rate, do expect to farm for a bit for these items
		confirm always
	step
	label "IH1"
		Kill everything inside of Zul'Farrak
		Follow the path through Zul'Farrak until you reach the temple area |goto Zul'Farrak/0 24.4,17.6 < 15 |noway |c
		map Zul'Farrak/0
		path follow smart; loop off; ants curved; dist 20
		path	57.3,80.8	59.0,67.8	57.3,55.9
		path	53.8,47.4	50.7,42.4	46.6,49.2
		path	41.2,52.0	36.1,47.2	33.9,44.2
		path	30.8,45.1	27.5,39.6	30.6,37.2
		path	33.1,38.0	34.8,35.3	34.8,28.5
		path	31.9,24.1	28.6,17.8	24.4,17.6
		goldcollect Ironhide Bracers##15639 |n
		Click here to sell the items you have collected |confirm |next "sell"
		_
		Click here to continue farming more parts to the Ironhide Mail Set |confirm |next "WS1"
	step
	label "IH2"
		Kill everything inside of Zul'Farrak.
		Once you have, you will be able to reset the instance.
		This step will take you back to the start of the dungeon. _Reset_ if you wish to continue |goto Zul'Farrak/0 57.6,78.9 < 15 |noway |c
		map Zul'Farrak/0
		path follow smart; loop off; ants curved; dist 20
		path	32.1,16.6	39.8,20.8	46.7,20.3
		path	55.4,30.9	59.4,40.8	54.8,39.9
		path	52.9,44.7	57.6,57.6	58.9,67.2
		path	57.6,78.9
		goldcollect Ironhide Bracers##15639 |n
		Click here to sell the items you have collected |confirm |next "sell"
		_
		Click here to continue farming more parts to the Ironhide Mail Set |confirm
	step
	label "WS1"
		Shardtooth Bears spawn in a small area
		You will be provided with 2 locations to farm between
		map Winterspring/0
		path follow strict; loop; ants curved; dist 20
		path	59.6,33.6	58.2,28.8	55.2,30.6
		path	53.0,28.4	51.0,30.6	51.6,33.6
		goldcollect Ironhide Greaves##15642 |n
		You will be directed to the next area to farm the _Ironhide Greaves_ |goto Winterspring/0 51.6,33.6 < 20 |noway |c |next "WS2"
		_
		Click here to sell |confirm |next "sell"
	step
	label "WS2"
		map Winterspring/0
		path follow strict; loop; ants curved; dist 30
		path	33.2,57.6	27.0,57.2
		This is a rather small path, be sure to search the area for bears
		goldcollect Ironhide Greaves##15642 |n
		_
		Click here to return to farming the _Ironhide Greaves_ at the previous location |confirm |next "WS1"
		_
		_Click here to move on_ to farming Imposing Leather pieces from Southsea Pirates |confirm
		_Click here to sell_ any items you've collected  |confirm |next "sell"
	step
	label "YETI1"
		Follow the path into the cave, killing all Yeti as you come across them |goto Winterspring/0 71.7,51.7 |noway |c |next "YETI2"
		You will be able to skin _Thick and Rugged Leathers_ from the yetis |only if skill("Skinning")>=250
		map Winterspring/0 -- WINTERSPRING FARMING
		path follow loose; loop off; ants curved; dist 20
		path	63.0,53.4	65.1,54.5	66.3,56.3
		path	67.3,54.4	68.5,54.2	69.3,52.4
		path	69.7,53.7	69.5,55.0	70.1,53.7
		path	70.8,53.3	71.6,52.9	71.7,51.7
		goldcollect Ironhide Belt##15641 |n
		goldcollect Ironhide Gauntlets##15644 |n
		goldcollect Ironhide Bracers##15639 |n
		goldcollect Thick Leather |n |only if skill("Skinning")>=250
		goldcollect Rugged Leather |n |only if skill("Skinning")>=250
		_Click here to sell_ the items you have collected |confirm |next "sell"
		_
		_Click here to continue farming_ more parts to the Ironhide Mail Set |confirm  |next "gaunt1"
	step
	label "YETI2"
		You will be able to skin _Thick and Rugged Leathers_ from the yetis |only if skill("Skinning")>=250
		map Winterspring/0 -- WINTERSPRING FARMING
		path follow loose; loop off; ants curved; dist 20
		path	71.7,51.7	71.6,52.9	70.8,53.3
		path	70.1,53.7	69.5,55.0	69.7,53.7
		path	69.3,52.4	68.5,54.2	67.3,54.4
		path	66.3,56.3	65.1,54.5	63.0,53.4
		goldcollect Ironhide Belt##15641 |n
		goldcollect Ironhide Gauntlets##15644 |n
		goldcollect Ironhide Bracers##15639 |n
		goldcollect Thick Leather |n |only if skill("Skinning")>=250
		goldcollect Rugged Leather |n |only if skill("Skinning")>=250
		_Click here to sell_ the items you have collected |confirm |next "sell"
		_
		_Click here to continue farming_ more parts to the Ironhide Mail Set |confirm
		_Click here to farm_ more of the Ice Thisle Yetis |confirm |next "YETI1"
	step
	label "gaunt1"
		map Winterspring/0
		path follow smart; loop off; ants curved; dist 25
		path	66.2,46.5	66.8,48.4	67.8,50.1
		path	69.1,50.6
		Defeat the Winterfall enemies in the area
		goldcollect Ironhide Gauntlets##15644 |n
		Click here to sell the items you have collected |confirm |next "sell"
		_
		_Click here to continue farming_ more parts to the Ironhide Mail Set |confirm
		_Click here_ to continue farming in Winterspring |confirm |next "WS1"
	step
	label "Twilight1"
		Kill Twilight's Hammer enemies at the provided locations:
		_Staghelm Point_ located here |goto Silithus/0 69.7,16.6
		_Twilight Base Camp_ located here |goto Silithus/0 45.4,41.5
		_Twilight Post_ located here |goto Silithus/0 34.0,31.8
		_Twilight Outpost_ located here |goto Silithus/0 27.7,75.1
		Click the provided locations to toggle between them.
		goldcollect Ironhide Pauldrons##15647 |n
		goldcollect Ironhide Breastplate##15640 |n
		goldcollect Ironhide Legguards##15646 |n
		goldcollect Encrypted Twilight Text##20404 |n
		goldcollect Runecloth##14047 |n
		_Click here to sell_ the items you have collected |confirm |next "sell"
		_
		_Click here_ to move back to the start of the guide |confirm |next "IH1"
	step
	label "sell"
		#include "auctioneer"
		Click here to go back to the start |confirm |next "IH1"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Daily Runs\\Bloodlust Mail Set Transmog",{
	meta={goldtype="xmog",levelreq=15,gold=100,time=15,icon="Interface\\ICONS\\inv_chest_chain_07"},
	description="\nThis guide will put you on the path to obtaining the Bloodlust Mail Set",
	items={{14804,1},{14805,1},{14799,1},{14806,1},{14798,1},{14807,1},{14802,1}},
	maps={"Winterspring","Dire Maul","Silithus"},
	},[[
	step
		--This could use more farming areas
		This guide will point you in the direction to each piece of the Bloodlust Mail armors.
		Since they have a very low drop rate, do expect to farm for a bit for these items
		confirm always
	step
	label "OGRE1"
		Be sure to kill everything in the dungeon as you go through; Also _reset_ if need be
		_Go down_ the ramp|goto Dire Maul/1 69.3,86.8 < 15
		_Cross_ through the open area |goto 69.3,80.3 < 20
		_Go up_ the ramp |goto 69.3,69.7 < 15
		_Walk around_ the ledge here |goto 64.7,68.2 < 20
		_Go up_ the ramp |goto 58.8,71.2 < 15
		_Continue_ up the ramp |goto 56.0,78.0 < 20
		_Go through_ the doorway |goto Dire Maul/1 40.7,78.1 < 20
		_Follow_ the path through the hallway |goto Dire Maul/1 30.1,77.5 < 20
		_Go through_ the doorway |goto Dire Maul/1 27.0,68.8 < 20
		_Walk around_ the wall |goto Dire Maul/1 25.1,57.1 < 20
		_Go up_ the ramp |goto 23.3,66.7 < 20
		goldcollect Bloodlust Helm##14804 |n
		goldcollect Bloodlust Britches##14805 |n
		goldcollect Bloodlust Boots##14799 |n
		You will now be directed to the next part of Dire Maul |goto 23.3,66.7 < 20 |noway |c
		_
		Click here to sell what you have gathered |confirm |next "sell"
	step
		_Go up_ the ramp |goto Dire Maul/1 25.4,54.4 < 15
		_Go through_ the door |goto 28.9,65.7 < 15
		_Follow_ the path into the open room |goto 31.8,48.9 < 20
		Defeat King Gordok |goto Dire Maul/1 31.9,26.9
		_
		goldcollect Bloodlust Helm##14804 |n
		goldcollect Bloodlust Britches##14805 |n
		goldcollect Bloodlust Boots##14799 |n
		Click here to continue farming in Dire Maul |confirm |next "OGRE1"
		_
		Click here to continue farming more pieces of the Bloodlust Mail Set |confirm
		Click here to sell what you have gathered |confirm |next "sell"
	step
	label "Twilight1"
		Kill Twilight's Hammer enemies at the provided locations:
		_Staghelm Point_ located here |goto Silithus/0 69.7,16.6
		_Twilight Base Camp_ located here |goto Silithus/0 45.4,41.5
		_Twilight Post_ located here |goto Silithus/0 34.0,31.8
		_Twilight Outpost_ located here |goto Silithus/0 27.7,75.1
		Click the provided locations to toggle between them.
		goldcollect Bloodlust Epaulets##14806 |n
		goldcollect Bloodlust Breastplate##14798 |n
		goldcollect Bloodlust Bracelets##14807 |n
		goldcollect Bloodlust Boots##14799 |n
		_Click here to sell_ the items you have collected |confirm |next "sell"
		_
		Click here to move on to farming Yetis |confirm
	step
	label "YETI1"
		Follow the path into the cave, killing all Yeti as you come across them |goto Winterspring/0 71.7,51.7 |noway |c |next "YETI2"
		You will be able to skin _Thick and Rugged Leathers_ from the yetis |only if skill("Skinning")>=250
		map Winterspring/0 -- WINTERSPRING FARMING
		path follow loose; loop off; ants curved; dist 20
		path	63.0,53.4	65.1,54.5	66.3,56.3
		path	67.3,54.4	68.5,54.2	69.3,52.4
		path	69.7,53.7	69.5,55.0	70.1,53.7
		path	70.8,53.3	71.6,52.9	71.7,51.7
		goldcollect Bloodlust Gauntlets##14802 |n
		goldcollect Bloodlust Bracelets##14807 |n
		goldcollect Thick Leather |n |only if skill("Skinning")>=250
		goldcollect Rugged Leather |n |only if skill("Skinning")>=250
		_
		_Click here to sell_ the items you have collected |confirm |next "sell"
	step
	label "YETI2"
		Follow the path into the cave, killing all Yeti as you come across them |goto 63.0,53.4 |noway |c |next "YETI1"
		You will be able to skin _Thick and Rugged Leathers_ from the yetis |only if skill("Skinning")>=250
		map Winterspring/0 -- WINTERSPRING FARMING
		path follow loose; loop off; ants curved; dist 20
		path	71.7,51.7	71.6,52.9	70.8,53.3
		path	70.1,53.7	69.5,55.0	69.7,53.7
		path	69.3,52.4	68.5,54.2	67.3,54.4
		path	66.3,56.3	65.1,54.5	63.0,53.4
		goldcollect Bloodlust Gauntlets##14802 |n
		goldcollect Bloodlust Bracelets##14807 |n
		goldcollect Thick Leather |n |only if skill("Skinning")>=250
		goldcollect Rugged Leather |n |only if skill("Skinning")>=250
		_
		_Click here to sell_ the items you have collected |confirm |next "sell"
	step
	label "sell"
		#include "auctioneer"
		Click here to go back to the start |confirm |next "OGRE1"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Daily Runs\\Ancient Mail Set Transmog",{
	meta={goldtype="xmog",levelreq=15,gold=100,time=15,icon="Interface\\ICONS\\inv_chest_chain_10"},
	description="\nThis guide will put you on the path to obtaining the Ancient Mail Set",
	items={{15599,1},{15607,1},{15601,1},{15605,1},{15600,1}},
	maps={"Zul'Farrak","Dire Maul","Tanaris"},
	},[[
	step
		This guide will point you in the direction to each piece of the Ancient Mail armors.
		Since they have a very low drop rate, do expect to farm for a bit for these items
		confirm always
	step
	label "SSP1"
		map Tanaris/0
		path follow smart; loop off; ants curved; dist 20
		path	68.4,42.3	69.9,43.3	71.2,44.6
		path	72.2,45.8	72.7,48.5	72.0,49.8
		path	69.9,50.7	69.6,52.7	69.1,54.5
		path	69.5,57.0
		goldcollect Ancient Greaves##15599 |n
		goldcollect Ancient Legguards##15607 |n
		goldcollect Ancient Chest##15601 |n
		You will be routed back to the cave entrance of Southbreak Shore |goto Tanaris/0 69.5,57.0 < 30 |noway |c |or
		_
		Click here to move onto farming Zul'Farrak |confirm |next "ZF1"
		Click here to sell what you have gathered |confirm |next "sell"
	step
	label "SSP2"
		map Tanaris/0
		path follow smart; loop off; ants curved; dist 20
		path	69.5,57.0	69.1,54.5	69.6,52.7
		path	69.9,50.7	72.0,49.8	72.7,48.5
		path	72.2,45.8	71.2,44.6	69.9,43.3
		path	68.4,42.3
		goldcollect Ancient Greaves##15599 |n
		goldcollect Ancient Legguards##15607 |n
		goldcollect Ancient Chest##15601 |n
		Click here to farm Southsea Pirates more |confirm |next "SSP1"
		_
		Click here to move on to farming Zul'Farrak |confirm
		Click here to sell what you have gathered |confirm |next "sell"
	step
	label "ZF1"
		Kill everything inside of Zul'Farrak
		Follow the path through Zul'Farrak until you reach the temple area |goto Zul'Farrak/0 24.4,17.6 < 15 |noway |c |or
		map Zul'Farrak/0
		path follow smart; loop off; ants curved; dist 20
		path	57.3,80.8	59.0,67.8	57.3,55.9
		path	53.8,47.4	50.7,42.4	46.6,49.2
		path	41.2,52.0	36.1,47.2	33.9,44.2
		path	30.8,45.1	27.5,39.6	30.6,37.2
		path	33.1,38.0	34.8,35.3	34.8,28.5
		path	31.9,24.1	28.6,17.8	24.4,17.6
		goldcollect Ancient Chest##15601 |n
		Click here to sell the items you have collected |confirm |next "sell"
		_
		Click here to continue farming more parts to the Ancient Mail Set |confirm |next "DM1"
	step
		Kill everything inside of Zul'Farrak.
		Once you have, you will be able to reset the instance.
		This step will take you back to the start of the dungeon. _Reset_ if you wish to continue |goto Zul'Farrak/0 57.6,78.9 < 15 |noway |c |or |next "ZF1"
		map Zul'Farrak/0
		path follow smart; loop off; ants curved; dist 20
		path	32.1,16.6	39.8,20.8	46.7,20.3
		path	55.4,30.9	59.4,40.8	54.8,39.9
		path	52.9,44.7	57.6,57.6	58.9,67.2
		path	57.6,78.9
		goldcollect Ancient Chest##15601 |n
		Click here to sell the items you have collected |confirm |next "sell"
		_
		Click here to continue farming more parts to the Jade Plate Set |confirm
	step
	label "DM1"
		Be sure to kill everything in the dungeon as you go through; Also reset if need be
		_Go down_ the ramp |goto Dire Maul/1 69.3,86.8 < 15
		_Cross_ through the open area |goto 69.3,80.3 < 20
		_Go up_ the ramp |goto 69.3,69.7 < 15
		_Walk around_ the ledge here |goto 64.7,68.2 < 20
		_Go up_ the ramp |goto 58.8,71.2 < 15
		_Continue_ up the ramp |goto 56.0,78.0 < 20
		_Go through_ the doorway |goto Dire Maul/1 40.7,78.1 < 20
		_Follow_ the path through the hallway |goto Dire Maul/1 30.1,77.5 < 20
		_Go through_ the doorway |goto Dire Maul/1 27.0,68.8 < 20
		_Walk around_ the wall |goto Dire Maul/1 25.1,57.1 < 20
		_Go up_ the ramp |goto 23.3,66.7 < 20
		goldcollect Ancient Greaves##15599 |n
		goldcollect Ancient Legguards##15607 |n
		You will now be directed to the next part of Dire Maul |goto 23.3,66.7 < 20 |noway |c
		_
		Click here to sell what you have gathered |confirm |next "sell"
	step
		_Go up_ the ramp |goto Dire Maul/1 25.4,54.4 < 15
		_Go through_ the door |goto 28.9,65.7 < 15
		_Follow_ the path into the open room |goto 31.8,48.9 < 20
		Defeat King Gordok |goto Dire Maul/1 31.9,26.9
		goldcollect Ancient Greaves##15599 |n
		goldcollect Ancient Legguards##15607 |n
		Click here to continue farming in Dire Maul |confirm |next "DM1"
		_
		Click here to continue farming more pieces of the Imposing Leather Set |confirm
	step
	label "DM01"
		map Dire Maul/5
		path loop off; ants straight; dist 30
		path	12.6,39.6	12.4,66.3	12.7,77.9
		path	22.9,76.6	31.4,75.4	34.1,26.1
		You will now be directed to the next portion of the dungeon |goto 34.1,26.1 < 20 |noway |c |or
		goldcollect Ancient Gauntlets##15605 |n
		goldcollect Ancient Vambraces##15600 |n
		Click here to sell the items you have collected |confirm |next "sell"
		_
		Click here for an alternative farming route |confirm |next "DME1"
	step
	label "DM02"
		_Enter_ the hallway |goto Dire Maul/5 46.0,26.2 < 20
		_Go through_ the hallway |goto 54.8,26.8 < 20
		_Continue_ through the passage |goto 56.4,35.5 < 20
		_Exit_ the passage |goto 60.8,37.8 < 20
		_Go to_ the end of the hallway |goto Dire Maul/5 84.5,37.6 < 20
		You will now be directed to the next portion of the dungeon |goto Dire Maul/5 84.5,37.6 < 20 |c |or
		goldcollect Ancient Gauntlets##15605 |n
		goldcollect Ancient Vambraces##15600 |n
		Click here to sell the items you have collected |confirm |next "sell"
		_
		Click here for an alternative farming route |confirm |next "DME1"
	step
	label "DM03"
		_Enter_ the hallway |goto Dire Maul/5 58.7,37.7 < 20
		_Go up_ the ramp |goto 54.0,26.2 < 20
		_Go through_ the doorway |goto Dire Maul/5 43.8,29.4 < 20
		_Clear all_ the enemies through the room as you go through it |goto Dire Maul/5 38.8,40.9 < 20
		Continue through the room |goto 38.4,56.4 < 20
		_Go up_ the ramp |goto 43.9,66.5 < 20
		Defeat Lethtendris |goto 44.8,52.3
		You will now be directed to the next portion of the dungeon  |goto 44.8,52.3 < 10 |noway |c |or
		goldcollect Ancient Gauntlets##15605 |n
		goldcollect Ancient Vambraces##15600 |n
		Click here to sell the items you have collected |confirm |next "sell"
		_
		Click here for an alternative farming route |confirm |next "DME1"
	step
	label "DM04"
		_Go down_ the ramp |goto Dire Maul/5 46.6,63.5 < 15
		_Follow_ the ramp into the room |goto Dire Maul/6 57.5,87.5 < 15
		Defeat the _Hydrospawn_ |goto Dire Maul/6 54.3,72.9 |scenariogoal 25059
		_Go up_ the ramp |goto Dire Maul/6 57.7,55.5 < 10
		_Follow_ the tunnel |goto Dire Maul/6 62.1,59.6 < 5
		Defeat _Zevrim Thornhoof_ |goto 58.8,72.6 < 4
		You will now be directed to the next portion of the dungeon |scenariogoal 25060 |or
		goldcollect Ancient Gauntlets##15605 |n
		goldcollect Ancient Vambraces##15600 |n
		Click here to sell the items you have collected |confirm |next "sell"
		_
		Click here for an alternative farming route |confirm |next "DME1"
	step
	label "DM05"
		_Jump down_ the ledge |goto Dire Maul/6 54.6,72.5 < 10
		_Go through_ the doorway |goto Dire Maul/6 52.9,87.9 < 15
		talk Ironbark the Redeemed##11491
		Tell him: _Thank you, Ironbark. We are ready for you to open the door._ |goto 41.2,81.0 < 15
		_Go through_ the door once Ironbark opens it |goto Dire Maul/6 40.1,49.5
		_Leave_ the tunnel |goto Dire Maul/6 45.1,28.9
		_Go down_ the ramp |goto Dire Maul/6 50.8,21.9
		_Continue_ down the ramp |goto 62.4,17.1
		_Go down_ the second ramp |goto 65.8,28.2
		Defeat Alzzin the Wildshaper |goto Dire Maul/6 55.5,28.1
		You will now be directed to the next portion of the dungeon |goto 55.5,28.1 < 10 |noway |c |or |next "DM01"
		goldcollect Ancient Gauntlets##15605 |n
		goldcollect Ancient Vambraces##15600 |n
		Click here to sell the items you have collected |confirm |next "sell"
		_
		Click here for an alternative farming route |confirm |next "DME1"
	step
	label "DME1"
		Go up the ramp |goto Dire Maul/6 67.2,28.1 < 20
		Make your way towards the exit |goto 58.8,16.4 < 20
		_Enter_ the tunnel |goto 45.2,28.9 < 15
		_Leave_ the tunnel |goto Dire Maul/6 40.1,49.2 < 15
		Go through the open room |goto 40.6,67.3 < 30
		_Enter_ the doorway |goto 49.1,91.2 < 15
		You will now be directed to the next portion of the dungeon |goto 49.1,91.2 |noway |c
		_
		Click here to sell the items you have collected |confirm |next "sell"
	step
	label "DME2"
		_Enter_ the room |goto Dire Maul/6 54.1,74.8 < 15
		_Go around_ the wall |goto 57.9,75.2 < 15
		_Go up_ the ramp |goto 57.8,89.0 < 15
		_Enter_ the open room |goto Dire Maul/5 46.8,63.1 < 15
		_Go through_ the door |goto Dire Maul/5 43.7,27.8 < 15
		_Turn left_ here |goto Dire Maul/5 32.6,26.0 < 15
		_Enter_ the tunnel |goto Dire Maul/5 30.1,81.7 < 15
		_Leave_ the dungeon |goto Dire Maul/5 27.6,85.2
		Click here to continue farming _Dire Maul_ |confirm |next "DME1"
		_
		Click here to sell the items you have collected |confirm |next "sell"
	step
	label "sell"
		#include "auctioneer"
		Click here to go back to the start |confirm |next "SSP1"
]])
--LEATHER XMOG
ZygorGuidesViewer:RegisterGuide("GOLD\\Daily Runs\\Imposing Leather Set Transmog",{
	meta={goldtype="xmog",levelreq=15,gold=100,time=15,icon="Interface\\ICONS\\inv_chest_leather_05"},
	description="\nThis guide will put you on the path to obtaining the Imposing Leather Set",
	items={{15167,1},{15164,1},{15166,1},{15168,1},{15162,1}},
	maps={"Zul'Farrak","Dire Maul","Winterspring","Tanaris"},
	},[[
	step
		This guide will point you in the direction to each piece of the Imposing armors.
		Since they have a very low drop rate, do expect to farm for a bit for these items
		confirm always
	step
	label "WS1"
		Shardtooth Bears spawn in a small area
		You will be provided with 2 locations to farm between
		map Winterspring/0
		path follow strict; loop; ants curved; dist 20
		path	59.6,33.6	58.2,28.8	55.2,30.6
		path	53.0,28.4	51.0,30.6	51.6,33.6
		goldcollect Imposing Bandana##15167 |n
		You will be directed to the next area to farm the _Imposing Bandana_ |goto Winterspring/0 51.6,33.6 < 20 |noway |c |next "WS2"
		_
		Click here to sell |confirm |next "sell"
	step
	label "WS2"
		map Winterspring/0
		path follow strict; loop; ants curved; dist 30
		path	33.2,57.6	27.0,57.2
		This is a rather small path, be sure to search the area for bears
		goldcollect Imposing Bandana##15167 |n
		_
		Click here to return to farming the Imposing Bandana at the previous location |confirm |next "WS1"
		_
		_Click here to move on_ to farming Imposing Leather pieces from Southsea Pirates |confirm
		_Click here to sell_ any items you've collected  |confirm |next "sell"
	step
	label "DM1"
		Be sure to kill everything in the dungeon as you go through; Also reset if need be
		_Go down_ the ramp|goto Dire Maul/1 69.3,86.8 < 15
		_Cross_ through the open area |goto 69.3,80.3 < 20
		_Go up_ the ramp |goto 69.3,69.7 < 15
		_Walk around_ the ledge here |goto 64.7,68.2 < 20
		_Go up_ the ramp |goto 58.8,71.2 < 15
		_Continue_ up the ramp |goto 56.0,78.0 < 20
		_Go through_ the doorway |goto Dire Maul/1 40.7,78.1 < 20
		_Follow_ the path through the hallway |goto Dire Maul/1 30.1,77.5 < 20
		_Go through_ the doorway |goto Dire Maul/1 27.0,68.8 < 20
		_Walk around_ the wall |goto Dire Maul/1 25.1,57.1 < 20
		_Go up_ the ramp |goto 23.3,66.7 < 20
		_
		You will now be directed to the next part of Dire Maul |goto 23.3,66.7 < 20 |noway |c
		goldcollect Imposing Vest##15164 |n
		goldcollect Imposing Gloves##15166 |n
		goldcollect Imposing Pants##15168 |n
		goldcollect Imposing Boots##15162 |n
	step
		_Go up_ the ramp |goto Dire Maul/1 25.4,54.4 < 15
		_Go through_ the door |goto 28.9,65.7 < 15
		_Follow_ the path into the open room |goto 31.8,48.9 < 20
		Defeat King Gordok |goto Dire Maul/1 31.9,26.9
		_
		goldcollect Imposing Vest##15164 |n
		goldcollect Imposing Gloves##15166 |n
		goldcollect Imposing Pants##15168 |n
		goldcollect Imposing Boots##15162 |n
		Click here to continue farming in Dire Maul |confirm |next "DM1"
		_
		Click here to continue farming more pieces of the Imposing Leather Set |confirm
	step
	label "SSP1"
		map Tanaris/0
		path follow smart; loop off; ants curved; dist 20
		path	68.4,42.3	69.9,43.3	71.2,44.6
		path	72.2,45.8	72.7,48.5	72.0,49.8
		path	69.9,50.7	69.6,52.7	69.1,54.5
		path	69.5,57.0
		goldcollect Imposing Pants##15168 |n
		goldcollect Imposing Gloves##15166 |n
		goldcollect Imposing Boots##15162 |n
		You will be routed back to the cave entrance of Southbreak Shore |goto Tanaris/0 69.5,57.0 < 30 |noway |c
		_
		Click here to move onto farming Zul'Farrak |confirm |next "ZF1"
	step
	label "SSP2"
		map Tanaris/0
		path follow smart; loop off; ants curved; dist 20
		path	69.5,57.0	69.1,54.5	69.6,52.7
		path	69.9,50.7	72.0,49.8	72.7,48.5
		path	72.2,45.8	71.2,44.6	69.9,43.3
		path	68.4,42.3
		goldcollect Imposing Pants##15168 |n
		goldcollect Imposing Gloves##15166 |n
		goldcollect Imposing Boots##15162 |n
		Click here to farm Southsea Pirates more |confirm |next "SSP1"
		_
		Click here to move on to farming Zul'Farrak |confirm
	step
	label "ZF1"
		Kill everything inside of Zul'Farrak
		Follow the path through Zul'Farrak until you reach the temple area |goto Zul'Farrak/0 24.4,17.6 < 15 |noway |c
		map Zul'Farrak/0
		path follow smart; loop off; ants curved; dist 20
		path	57.3,80.8	59.0,67.8	57.3,55.9
		path	53.8,47.4	50.7,42.4	46.6,49.2
		path	41.2,52.0	36.1,47.2	33.9,44.2
		path	30.8,45.1	27.5,39.6	30.6,37.2
		path	33.1,38.0	34.8,35.3	34.8,28.5
		path	31.9,24.1	28.6,17.8	24.4,17.6
		goldcollect Imposing Vest##15164 |n
		goldcollect Imposing Bandana##15167 |n
		Click here to sell the items you have collected |confirm |next "sell"
		_
		Click here to continue farming more parts to the Jade Plate Set |confirm |next
	step
		Kill everything inside of Zul'Farrak.
		Once you have, you will be able to reset the instance.
		This step will take you back to the start of the dungeon. _Reset_ if you wish to continue |goto Zul'Farrak/0 57.6,78.9 < 15 |noway |c
		map Zul'Farrak/0
		path follow smart; loop off; ants curved; dist 20
		path	32.1,16.6	39.8,20.8	46.7,20.3
		path	55.4,30.9	59.4,40.8	54.8,39.9
		path	52.9,44.7	57.6,57.6	58.9,67.2
		path	57.6,78.9
		goldcollect Imposing Vest##15164 |n
		goldcollect Imposing Bandana##15167 |n
		Click here to sell the items you have collected |confirm |next "sell"
		_
		Click here to continue farming more parts to the Jade Plate Set |confirm
	step
	label "sell"
		#include "auctioneer"
		Click here to go back to the start |confirm |next "WS1"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Daily Runs\\Imperial Leather Set Transmog",{
	meta={goldtype="xmog",levelreq=20,gold=100,time=15,icon="Interface\\ICONS\\inv_chest_leather_07"},
	description="\nThis guide will put you on the path to obtaining the Imperial Leather Set",
	items={{6433,1},{4737,1},{6430,1},{4063,1},{4062,1},{6431,1},{14047,1},{4338,1},{12811,1},{4738,1}},
	maps={"Stratholme","Eastern Plaguelands"},
	},[[
	step
	label "begin"
		This guide will point you in the direction to each piece of the Imperial Leather armor.
		Since they have a very low drop rate, do expect to farm for a bit for these items
		confirm always
	step
	label "Strath1"
		_Follow_ the path through King's Square |goto Stratholme/1 66.3,75.6 < 20
		_Continue_ along the streets of King's Square |goto 67.3,59.3 < 20
		_Turn left_ here |goto 60.0,55.0 < 20
		_Defeat_ the enemies in the area |goto 57.1,66.1 < 20
		goldcollect Imperial Leather Helm##6433	|n
		goldcollect Imperial Leather Spaulder##4737 |n
		goldcollect Imperial Leather Breastplate##6430 |n
		goldcollect Imperial Leather Glove##4063 |n
		goldcollect Imperial Leather Pants##4062 |n
		goldcollect Imperial Leather Boots##6431 |n
		_Secondary Items:_
		goldcollect Runecloth##14047 |n
		goldcollect Mageweave Cloth##4338 |n
		goldcollect Righteous Orb##12811 |n
		You will now be directed to the next section of the guide |goto 57.1,66.1 < 20 |noway |c
		_
		Click here if you are ready to sell |confirm |next "sell"
	step
		_Make your way_ through the gate to Market Row |goto Stratholme/1 60.0,41.9 < 15
		|tip You will be trapped. Defeat the enemies who come
		_Continue through_ Market Row |goto Stratholme/1 59.4,31.1 < 20
		_Go through_ the large gates into Crusaders' Square |goto Stratholme/1 46.6,25.1 < 20
		_Enter_ the Scarlet Bastion |goto Stratholme/1 32.0,34.7 < 20
		_Go through_ the door to The Hoard |goto Stratholme/1 19.8,51.2 < 10
		goldcollect Imperial Leather Helm##6433	|n
		goldcollect Imperial Leather Spaulder##4737 |n
		goldcollect Imperial Leather Breastplate##6430 |n
		goldcollect Imperial Leather Glove##4063 |n
		goldcollect Imperial Leather Pants##4062 |n
		goldcollect Imperial Leather Boots##6431 |n
		_Secondary Items:_
		goldcollect Runecloth##14047 |n
		goldcollect Mageweave Cloth##4338 |n
		goldcollect Righteous Orb##12811 |n
		You will now be directed to the next section of the guide |goto Stratholme/1 19.8,51.2 < 10 |noway |c
		_
		Click here if you are ready to sell |confirm |next "sell"
	step
		_Make your way_ through the Hoard and defeat Willey Hopebreaker |goto Stratholme/1 4.1,50.8
		goldcollect Imperial Leather Helm##6433	|n
		goldcollect Imperial Leather Spaulder##4737 |n
		goldcollect Imperial Leather Breastplate##6430 |n
		goldcollect Imperial Leather Glove##4063 |n
		goldcollect Imperial Leather Pants##4062 |n
		goldcollect Imperial Leather Boots##6431 |n
		_Secondary Items:_
		goldcollect Runecloth##14047 |n
		goldcollect Mageweave Cloth##4338 |n
		goldcollect Righteous Orb##12811 |n
		You will now be directed to the next section of the guide |goto Stratholme/1 4.1,50.8 < 10 |noway |c
		_
		Click here if you are ready to sell |confirm |next "sell"
	step
		_Leave_ The Hoard |goto Stratholme/1 19.1,52.1 < 20
		_Go through_ the doors |goto Stratholme/1 19.1,52.1 < 20
		_Defeat_ Balnazzar |goto Stratholme/1 20.3,82.0 < 20
		goldcollect Imperial Leather Helm##6433	|n
		goldcollect Imperial Leather Spaulder##4737 |n
		goldcollect Imperial Leather Breastplate##6430 |n
		goldcollect Imperial Leather Glove##4063 |n
		goldcollect Imperial Leather Pants##4062 |n
		goldcollect Imperial Leather Boots##6431 |n
		_Secondary Items:_
		goldcollect Runecloth##14047 |n
		goldcollect Mageweave Cloth##4338 |n
		goldcollect Righteous Orb##12811 |n
		You will now be directed to the next section of the guide |goto Stratholme/1 20.3,82.0 < 20 |noway |c
		_
		Click here if you are ready to sell |confirm |next "sell"
	step
		_Leave_ the Scarlet Bastion |goto Stratholme/1 32.2,34.4 < 20
		_Go through_ the gate and travel through Market Row |goto Stratholme/1 50.6,23.7 < 20
		_Continue through_ Market Row |goto 61.3,29.7 < 20
		_Cross under_ the bridge |goto Stratholme/1 77.3,18.8 < 20
		_Go through_ Festival Lane |goto 82.2,24.7 < 20
		_Continue through_ the area |goto 81.6,42.8 < 20
		_Go through_ the Stratholme Gates |goto Stratholme/1 77.2,49.4 < 20
		_Continue through_ the gates |goto 73.1,55.2 < 20
		_Leave_ Stratholme |goto Eastern Plaguelands/0 27.8,11.6
		goldcollect Imperial Leather Helm##6433	|n
		goldcollect Imperial Leather Spaulder##4737 |n
		goldcollect Imperial Leather Breastplate##6430 |n
		goldcollect Imperial Leather Glove##4063 |n
		goldcollect Imperial Leather Pants##4062 |n
		goldcollect Imperial Leather Boots##6431 |n
		_Secondary Items:_
		goldcollect Runecloth##14047 |n
		goldcollect Mageweave Cloth##4338 |n
		goldcollect Righteous Orb##12811 |n
		You will now be directed to the next section of the guide |goto Eastern Plaguelands/0 27.8,11.6 < 10 |noway |c
		_
		Click here if you are ready to sell |confirm |next "sell"
	step
		_Go through_ the gate |goto Eastern Plaguelands/0 43.5,19.2 < 20
		_Go through_ the Service Entrance Gate |goto Stratholme/2 67.5,80.8 < 20
		_Make your way_ through the gates |goto Stratholme/2 61.4,58.3 < 20
		_Turn left_ when you reach this area |goto Stratholme/2 67.4,51.8 < 20
		_Defeat_ Nerub'enkan |goto Stratholme/2 56.5,46.8 < 20
		_Defeat_ the Thuzadin Acolytes inside the building |goto Stratholme/2 53.5,49.2 < 20
		goldcollect Imperial Leather Helm##6433	|n
		goldcollect Imperial Leather Spaulder##4737 |n
		goldcollect Imperial Leather Breastplate##6430 |n
		goldcollect Imperial Leather Glove##4063 |n
		goldcollect Imperial Leather Pants##4062 |n
		goldcollect Imperial Leather Boots##6431 |n
		_Secondary Items:_
		goldcollect Runecloth##14047 |n
		goldcollect Mageweave Cloth##4338 |n
		goldcollect Righteous Orb##12811 |n
		You will now be directed to the next section of the guide |goto Stratholme/2 53.5,49.2 < 5 |noway |c
		_
		Click here if you are ready to sell |confirm |next "sell"
	step
		_Back track_ to the fork in the road here |goto Stratholme/2 66.0,51.4 < 20
		_Defeat_ Baroness Anastari |goto Stratholme/2 74.8,46.8
		_Defeat_ the Thuzadin Acolytes inside the building |goto Stratholme/2 78.0,48.0
		goldcollect Imperial Leather Helm##6433	|n
		goldcollect Imperial Leather Spaulder##4737 |n
		goldcollect Imperial Leather Breastplate##6430 |n
		goldcollect Imperial Leather Glove##4063 |n
		goldcollect Imperial Leather Pants##4062 |n
		goldcollect Imperial Leather Boots##6431 |n
		_Secondary Items:_
		goldcollect Runecloth##14047 |n
		goldcollect Mageweave Cloth##4338 |n
		goldcollect Righteous Orb##12811 |n
		You will now be directed to the next section of the guide |goto Stratholme/2 78.0,48.0 < 10 |noway |c
		_
		Click here if you are ready to sell |confirm |next "sell"
	step
		_Pass through_ the alleyway |goto Stratholme/2 68.6,34.6 < 20
		_Defeat_ Maleki the Pallid |goto 67.9,20.4 < 20
		_Defeat_ the Thuzadin Acolytes inside the building |goto Stratholme/2 70.0,16.8 < 20
		goldcollect Imperial Leather Helm##6433	|n
		goldcollect Imperial Leather Spaulder##4737 |n
		goldcollect Imperial Leather Breastplate##6430 |n
		goldcollect Imperial Leather Glove##4063 |n
		goldcollect Imperial Leather Pants##4062 |n
		goldcollect Imperial Leather Boots##6431 |n
		_Secondary Items:_
		goldcollect Runecloth##14047 |n
		goldcollect Mageweave Cloth##4338 |n
		goldcollect Righteous Orb##12811 |n
		You will now be directed to the next section of the guide |goto Stratholme/2 70.0,16.8 < 10 |noway |c
		_
		Click here if you are ready to sell |confirm |next "sell"
	step
		_Make your way_ through |goto Stratholme/2 62.1,25.1
		_Defeat_ Magistrate Barthilas |goto 57.1,14.6
		_Pass through_ the gates to Slaughter Square |goto Stratholme/2 51.4,19.5 < 20
		_Defeat_ the Venom Belchers, Bile Spewers, Ramstein the Gorger, the horde of zombies that flood the room and finally the Black Guard |goto Stratholme/2 45.5,19.6
		_Defeat_ Lord Aurius Rivendare |goto Stratholme/2 38.3,20.2 |noway |c
		goldcollect Imperial Leather Helm##6433	|n
		goldcollect Imperial Leather Spaulder##4737 |n
		goldcollect Imperial Leather Breastplate##6430 |n
		goldcollect Imperial Leather Glove##4063 |n
		goldcollect Imperial Leather Pants##4062 |n
		goldcollect Imperial Leather Boots##6431 |n
		_Secondary Items:_
		goldcollect Runecloth##14047 |n
		goldcollect Mageweave Cloth##4338 |n
		goldcollect Righteous Orb##12811 |n
		_
		Click here if you are ready to sell |confirm |next "sell"
	step
		_Leave_ the Slaughter House |goto Stratholme/2 42.9,20.4 < 20
		_Leave_ the Slaughter Square |goto Stratholme/2 53.1,19.1 < 20
		_Make your way_ through the gauntlet |goto Stratholme/2 59.5,29.3 < 20
		_Go through_ the gate |goto 58.0,37.3 < 20
		_Head towards_ the gates |goto Stratholme/2 66.5,53.3 < 20
		_Pass through_ the gates |goto 61.5,58.4 < 20
		_Leave_ Stratholme |goto 67.3,86.6 < 20
		goldcollect Imperial Leather Helm##6433	|n
		goldcollect Imperial Leather Spaulder##4737 |n
		goldcollect Imperial Leather Breastplate##6430 |n
		goldcollect Imperial Leather Glove##4063 |n
		goldcollect Imperial Leather Pants##4062 |n
		goldcollect Imperial Leather Boots##6431 |n
		_Secondary Items:_
		goldcollect Runecloth##14047 |n
		goldcollect Mageweave Cloth##4338 |n
		goldcollect Righteous Orb##12811 |n
		_
		If you wish to return to farming Stratholme, _reset the instance, then click here_ |confirm |next "Strath1"
		_Click here to sell_ any items you have |confirm |next "sell"
		_Click here_ if you want _to continue farming for more_ Imperial Leather Armor |confirm
	step
	label "bleh"
		map Eastern Plaguelands/0
		path	59.7,63.2	63.7,67.9	66.3,69.3
		path	69.8,67.8	72.4,66.0	73.2,61.9
		path	70.5,59.7	68.8,63.0	66.0,63.0
		path	62.7,63.1	59.6,59.7
		Kill the Carrion Grub around and inside of the provide path
		Eastern Plaguelands; Carrion Grub, Infected Mossflayer, Scarlet Warder
		goldcollect Imperial Leather Belt##4738
		_Click here to sell_ any items you have |confirm |next "sell"
	step
	label "sell"
		#include "auctioneer"
		Click here to go back to the start of the guide |confirm |next "Strath1"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Daily Runs\\Bonechewer Leather Set Transmog",{
	meta={goldtype="xmog",levelreq=10,gold=100,time=15,icon="Interface\\ICONS\\inv_chest_leather_07"},
	description="\nThis guide will put you on the path to obtaining the Bonechewer Leather Set",
	items={{24697,1},{24695,1},{24700,1},{24696,1},{24693,1},{24698,1},{24694,1},{14047,1},{21877,1},{24944,1},{24942,1},{24943,1},{24945,1},{24947,1},{24949,1}},
	maps={"Hellfire Ramparts","The Blood Furnace"},
	},[[
	step
		--This could use more farming areas
		This guide will point you in the direction to each piece of the Bonechewer Leather armors.
		Since they have a very low drop rate, do expect to farm for a bit for these items
		confirm always
	step
	label "HR1"
		|tip Be sure to set the dungeon difficulty to normal
		_Cross_ the bridge |goto Hellfire Ramparts/1 47.1,64.8 < 25
		_Go around_ the wall |goto 46.8,52.1 < 25
		_Continue_ around the wall |goto 60.6,51.1 < 20
		_Enter_ the open room |goto Hellfire Ramparts/1 74.0,48.4 < 25
		Defeat Watchkeeper Gargolmar |goto Hellfire Ramparts/1 71.0,30.8
		goldcollect Bonechewer Skincloak##24697 |n
		goldcollect Bonechewer Chestpiece##24695 |n
		goldcollect Bonechewer Bands##24700 |n
		goldcollect Bonechewer Spikegloves##24696 |n
		goldcollect Bonechewer Pelt-Girdle##24693 |n
		goldcollect Bonechewer Ripleggings##24698 |n
		goldcollect Bonechewer Shredboots##24694 |n
		_Secondary Items:_
		goldcollect Runecloth##14047 |n
		goldcollect Netherweave Cloth##21877 |n
		Once you reach the ogre room, you will be directed to the next section of farming |goto Hellfire Ramparts/1 71.0,30.8 < 10 |noway |c
		_
		Click here if you want to sell what you have |confirm |next "sell"
	step
		--Couldn't do individual coordinates, too close together
		map Hellfire Ramparts/1
		path follow strict; loop off; ants curved; dist 20
		path	64.9,40.2	69.2,41.6	63.9,44.8
		path	50.0,52.2	40.1,22.8
		Defeat Omor the Unscarred |goto 40.1,22.8 < 20
		goldcollect Bloodscale Breastplate##24944 |n
		goldcollect Bloodscale Belt##24942 |n
		goldcollect Bloodscale Sabatons##24943 |n
		goldcollect Bloodscale Breastplate##24944 |n
		goldcollect Bloodscale Gauntlets##24945 |n
		goldcollect Bloodscale Legguards##24947 |n
		goldcollect Bloodscale Bracers##24949 |n
		_Secondary Items:_
		goldcollect Runecloth##14047 |n
		goldcollect Netherweave Cloth##21877 |n
		Once you reach the ogre room, you will be directed to the next section of farming |goto 40.1,22.8 < 20 |noway |c
		_
		Click here if you want to sell what you have |confirm |next "sell"
	step
		_Go through_ the doorway |goto Hellfire Ramparts/1 45.1,37.4 < 30
		_Go down_ the bridge |goto 48.4,62.4 < 30
		_Enter_ the empty room |goto 37.1,78.8
		Defeat Nazan and Vazruden
		goldcollect Bloodscale Breastplate##24944 |n
		goldcollect Bloodscale Belt##24942 |n
		goldcollect Bloodscale Sabatons##24943 |n
		goldcollect Bloodscale Breastplate##24944 |n
		goldcollect Bloodscale Gauntlets##24945 |n
		goldcollect Bloodscale Legguards##24947 |n
		goldcollect Bloodscale Bracers##24949 |n
		_Secondary Items:_
		goldcollect Runecloth##14047 |n
		goldcollect Netherweave Cloth##21877 |n
		Once you reach the ogre room, you will be directed to the next section of farming |goto 37.1,78.8 < 20
		_
		Click here if you want to sell what you have |confirm |next "sell"
	step
	label "BF1"
		_Go up_ the stairs |goto The Blood Furnace/1 58.3,82.5 < 30
		_Go into_ the doorway |goto 58.2,60.1 < 20
		_Follow_ the path to the left |goto The Blood Furnace/1 55.5,53.9 < 20
		_Enter_ the open room |goto The Blood Furnace/1 46.1,41.2 < 20
		Defeat The Maker |goto The Blood Furnace/1 37.1,41.2
		goldcollect Bloodscale Breastplate##24944 |n
		goldcollect Bloodscale Belt##24942 |n
		goldcollect Bloodscale Sabatons##24943 |n
		goldcollect Bloodscale Breastplate##24944 |n
		goldcollect Bloodscale Gauntlets##24945 |n
		goldcollect Bloodscale Legguards##24947 |n
		goldcollect Bloodscale Bracers##24949 |n
		_Secondary Items:_
		goldcollect Netherweave Cloth##21877
		Once you reach the ogre room, you will be directed to the next section of farming |goto The Blood Furnace/1 37.1,41.2 < 20 |noway |c
		_
		Click here if you want to sell what you have |confirm |next "sell"
	step
		_Enter_ the path |goto The Blood Furnace/1 31.8,42.3 < 20
		_Leave_ the tunnel |goto 32.1,21.6 < 20
		Click the Cell Door Lever |goto The Blood Furnace/1 43.3,22.0 < 15
		Defeat Broggok
		goldcollect Bloodscale Breastplate##24944 |n
		goldcollect Bloodscale Belt##24942 |n
		goldcollect Bloodscale Sabatons##24943 |n
		goldcollect Bloodscale Breastplate##24944 |n
		goldcollect Bloodscale Gauntlets##24945 |n
		goldcollect Bloodscale Legguards##24947 |n
		goldcollect Bloodscale Bracers##24949 |n
		_Secondary Items:_
		goldcollect Netherweave Cloth##21877
		Once you reach the ogre room, you will be directed to the next section of farming |goto The Blood Furnace/1 43.3,22.0 < 15 |noway |c
		_
		Click here if you want to sell what you have |confirm |next "sell"
	step
		_Enter_ the doorway |goto The Blood Furnace/1 47.5,22.0 < 20
		_Go through_ the doorway on the right |goto The Blood Furnace/1 58.1,22.2 < 20
		_Go down_ the ramp |goto The Blood Furnace/1 62.0,28.7 < 20
		_Enter_ the room |goto The Blood Furnace/1 65.8,41.3 < 20
		Defeat Keli'dan the Breaker |goto The Blood Furnace/1 58.2,42.0
		goldcollect Bloodscale Breastplate##24944 |n
		goldcollect Bloodscale Belt##24942 |n
		goldcollect Bloodscale Sabatons##24943 |n
		goldcollect Bloodscale Breastplate##24944 |n
		goldcollect Bloodscale Gauntlets##24945 |n
		goldcollect Bloodscale Legguards##24947 |n
		goldcollect Bloodscale Bracers##24949 |n
		_Secondary Items:_
		goldcollect Netherweave Cloth##21877
		Once you reach the ogre room, you will be directed to the next section of farming |goto The Blood Furnace/1 58.2,42.0  < 15 |noway |c
		_
		Click here if you want to sell what you have |confirm |next "sell"
	step
		_Enter_ the tunnel |goto The Blood Furnace/1 62.5,50.6 < 20
		_Exit_ the tunnel |goto 61.1,90.6 < 20
		_Leave_ the dungeon |goto The Blood Furnace/1 47.8,90.6 < 20
		_
		Click here to continue farming the Hellfire Ramparts |confirm |next "HR1"
		Click here to continue farming the Blood Furnace |confirm |next "BF1"
		_
		Click here if you wish to sell |confirm
	step
	label "sell"
		#include "auctioneer"
		Click here to go back to the start |confirm |next "HR1"
]])
--CLOTH XMOG
ZygorGuidesViewer:RegisterGuide("GOLD\\Daily Runs\\Arachnidian Cloth Set Transmog",{
	meta={goldtype="xmog",levelreq=15,gold=100,time=15,icon="Interface\\ICONS\\inv_chest_cloth_35"},
	description="\nThis guide will put you on the path to obtaining the Arachnidian Cloth Set",
	items={{14296,1},{14289,1},{14290,1},{4304,1},{8170,1},{14288,1},{14295,1},{20404,1},{14047,1},{14291,1},{14294,1}},
	maps={"Zul'Farrak","Winterspring","Silithus"},
	},[[
	step
		This guide will point you in the direction to each piece of the Arachnidian Cloth armors.
		Since they have a very low drop rate, do expect to farm for a bit for these items
		confirm always
	step
	label "Pauldron1"
		Follow the path into the cave, killing all Yeti as you come across them |goto Winterspring/0 71.7,51.7 |noway |c |next "Pauldron2"
		You will be able to skin _Thick and Rugged Leathers_ from the yetis |only if skill("Skinning")>=250
		map Winterspring/0 -- WINTERSPRING FARMING
		path follow loose; loop off; ants curved; dist 20
		path	63.0,53.4	65.1,54.5	66.3,56.3
		path	67.3,54.4	68.5,54.2	69.3,52.4
		path	69.7,53.7	69.5,55.0	70.1,53.7
		path	70.8,53.3	71.6,52.9	71.7,51.7
		goldcollect Arachnidian Pauldrons##14296 |n
		goldcollect Arachnidian Girdle##14289 |n
		goldcollect Arachnidian Footpads##14290 |n
		goldcollect Thick Leather##4304 |n |only if skill("Skinning")>=250
		goldcollect Rugged Leather##8170 |n |only if skill("Skinning")>=250
		_Click here to sell_ the items you have collected |confirm |next "sell"
		_
		_Click here to continue farming_ more parts to the Arachnidian Cloth Set |confirm |next "BEAR1"
	step
	label "Pauldron2"
		Follow the path into the cave, killing all Yeti as you come across them |goto 63.0,53.4 |noway |c |next "Pauldron3"
		You will be able to skin _Thick and Rugged Leathers_ from the yetis |only if skill("Skinning")>=250
		map Winterspring/0 -- WINTERSPRING FARMING
		path follow loose; loop off; ants curved; dist 20
		path	71.7,51.7	71.6,52.9	70.8,53.3
		path	70.1,53.7	69.5,55.0	69.7,53.7
		path	69.3,52.4	68.5,54.2	67.3,54.4
		path	66.3,56.3	65.1,54.5	63.0,53.4
		goldcollect Arachnidian Pauldrons##14296|n
		goldcollect Arachnidian Girdle##14289 |n
		goldcollect Arachnidian Footpads##14290 |n
		goldcollect Thick Leather##4304 |n |only if skill("Skinning")>=250
		goldcollect Rugged Leather##8170 |n |only if skill("Skinning")>=250
		_Click here to sell_ the items you have collected |confirm |next "sell"
		_
		_Click here to continue farming_ more parts to the Arachnidian Cloth Set |confirm |next "BEAR1"
	step
	label "Pauldron3"
		map Winterspring/0
		path follow smart; loop; ants curved; dist 30
		path	46.5,28.7	46.4,24.1	45.9,14.9
		path	48.7,16.4	49.3,19.5	51.4,19.8
		path	51.0,24.0
		Defeat Frostsabers along the path
		goldcollect Arachnidian Pauldrons##14296|n
		goldcollect Thick Leather##4304 |n |only if skill("Skinning")>=250
		goldcollect Rugged Leather##8170 |n |only if skill("Skinning")>=250
		_Click here to sell_ the items you have collected |confirm |next "sell"
		_
		_Click here to continue farming_ more parts to the Arachnidian Cloth Set |confirm
		_Click here_ to go back to _Yeti Farming_ |confirm |next "Pauldron1"
	step
	label "BEAR1"
		Shardtooth Bears spawn in a small area
		You will be provided with 2 locations to farm between
		map Winterspring/0
		path follow loose; loop off; ants curved; dist 30
		path	59.6,33.6	58.2,28.8	55.2,30.6
		path	53.0,28.4	51.0,30.6	51.6,33.6
		goldcollect Arachnidian Girdle##14289 |n
		goldcollect Arachnidian Footpads##14290 |n
		You will be directed to the next area to farm the Arachnidian Girdle and Footpads |goto Winterspring/0 51.6,33.6 < 20 |noway |c
		_
		Click here to sell |confirm |next "sell"
	step
	label "BEAR2"
		map Winterspring/0
		path follow loose; loop; ants curved; dist 50
		path	33.2,57.6	27.0,57.2
		This is a rather small path, be sure to search the area for bears
		goldcollect Arachnidian Girdle##14289 |n
		goldcollect Arachnidian Footpads##14290 |n
		_Click here to return to farming_ the Arachnidian Girdle and Footpads at the previous location |confirm |next "BEAR1"
		_
		_Click here to move on_ to farming Arachnidian Cloth pieces from Twilight enemies |confirm
		Click here to sell |confirm |next "sell"
	step
	label "Twilight1"
		Kill Twilight's Hammer enemies at the provided locations:
		_Staghelm Point_ located here |goto Silithus/0 69.7,16.6
		_Twilight Base Camp_ located here |goto Silithus/0 45.4,41.5
		_Twilight Post_ located here |goto Silithus/0 34.0,31.8
		_Twilight Outpost_ located here |goto Silithus/0 27.7,75.1
		Click the provided locations to toggle between them.
		goldcollect Arachnidian Armor##14288 |n
		goldcollect Arachnidian Legguards##14295 |n
		goldcollect Encrypted Twilight Text##20404 |n
		goldcollect Runecloth##14047 |n
		_Click here to sell_ the items you have collected |confirm |next "sell"
		_
		_Click here to move on_ to farming Arachnidian Cloth pieces from the Zul'Farrak dungeon |confirm
	step
	label "ZF1"
		Kill everything inside of Zul'Farrak
		Follow the path through Zul'Farrak until you reach the temple area |goto Zul'Farrak/0 24.4,17.6 < 15 |noway |c
		map Zul'Farrak/0
		path follow smart; loop off; ants curved; dist 20
		path	57.3,80.8	59.0,67.8	57.3,55.9
		path	53.8,47.4	50.7,42.4	46.6,49.2
		path	41.2,52.0	36.1,47.2	33.9,44.2
		path	30.8,45.1	27.5,39.6	30.6,37.2
		path	33.1,38.0	34.8,35.3	34.8,28.5
		path	31.9,24.1	28.6,17.8	24.4,17.6
		goldcollect Arachnidian Bracelets##14291 |n
		goldcollect Arachnidian Gloves##14294 |n
		_Click here to sell_ the items you have collected |confirm |next "sell"
		_
		_Click here to continue farming_ more parts to the Arachnidian Cloth Set |confirm |next "WF1e"
	step
	label "ZF2"
		Kill everything inside of Zul'Farrak.
		Once you have, you will be able to reset the instance.
		This step will take you back to the start of the dungeon. _Reset_ if you wish to continue |goto Zul'Farrak/0 57.6,78.9 < 15 |noway |c
		map Zul'Farrak/0
		path follow smart; loop off; ants curved; dist 20
		path	32.1,16.6	39.8,20.8	46.7,20.3
		path	55.4,30.9	59.4,40.8	54.8,39.9
		path	52.9,44.7	57.6,57.6	58.9,67.2
		path	57.6,78.9
		goldcollect Arachnidian Bracelets##14291 |n
		goldcollect Arachnidian Gloves##14294 |n
		Click here to sell the items you have collected |confirm |next "sell"
	step
	label "WF1e"
		map Winterspring/0
		path follow smart; loop off; ants curved; dist 25
		path	66.2,46.5	66.8,48.4	67.8,50.1
		path	69.1,50.6
		Defeat the Winterfall enemies in the area
		goldcollect Arachnidian Girdle##14289 |n
		goldcollect Arachnidian Footpads##14290 |n
		Click here to sell the items you have collected |confirm |next "sell"
	step
	label "sell"
		#include "auctioneer"
		Click here to go back to the start |confirm |next "Pauldron1"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Daily Runs\\Hibernal Cloth Set Transmog",{
	meta={goldtype="xmog",levelreq=20,gold=100,time=15,icon="Interface\\ICONS\\inv_shirt_06"},
	description="\nThis guide will put you on the path to obtaining the Hibernal Cloth Set",
	items={{8115,1},{8111,1},{8108,1},{8110,1},{8114,1},{8112,1},{8107,1},{14047,1},{4338,1},{12811,1},{8106,1},{12208,1},{12203,1}},
	maps={"Stratholme","Burning Steppes","Eastern Plaguelands","Blackrock Depths"},
	},[[
	step
		This guide will point you in the direction to each piece of the Hibernal Cloth armors.
		Since they have a very low drop rate, do expect to farm for a bit for these items
		confirm always
	step
	label "Strath1"
		_Follow_ the path through King's Square |goto Stratholme/1 66.3,75.6 < 20
		_Continue_ along the streets of King's Square |goto 67.3,59.3 < 20
		_Turn left_ here |goto 60.0,55.0 < 20
		_Defeat_ the enemies in the area |goto 57.1,66.1 < 20
		goldcollect Hibernal Cowl##8115 |n
		goldcollect Hibernal Mantle##8111 |n
		goldcollect Hibernal Bracers##8108 |n
		goldcollect Hibernal Gloves##8110 |n
		goldcollect Hibernal Sash##8114 |n
		goldcollect Hibernal Pants##8112 |n
		goldcollect Hibernal Boots##8107 |n
		_Secondary Items:_
		goldcollect Runecloth##14047 |n
		goldcollect Mageweave Cloth##4338 |n
		goldcollect Righteous Orb##12811 |n
		You will now be directed to the next section of the guide |goto 57.1,66.1 < 20 |noway |c
		_
		Click here if you are ready to sell |confirm |next "sell"
	step
		_Make your way_ through the gate to Market Row |goto Stratholme/1 60.0,41.9 < 15
		|tip You will be trapped. Defeat the enemies who come
		_Continue through_ Market Row |goto Stratholme/1 59.4,31.1 < 20
		_Go through_ the large gates into Crusaders' Square |goto Stratholme/1 46.6,25.1 < 20
		_Enter_ the Scarlet Bastion |goto Stratholme/1 32.0,34.7 < 20
		_Go through_ the door to The Hoard |goto Stratholme/1 19.8,51.2 < 10
		goldcollect Hibernal Cowl##8115 |n
		goldcollect Hibernal Mantle##8111 |n
		goldcollect Hibernal Bracers##8108 |n
		goldcollect Hibernal Gloves##8110 |n
		goldcollect Hibernal Sash##8114 |n
		goldcollect Hibernal Pants##8112 |n
		goldcollect Hibernal Boots##8107 |n
		_Secondary Items:_
		goldcollect Runecloth##14047 |n
		goldcollect Mageweave Cloth##4338 |n
		goldcollect Righteous Orb##12811 |n
		You will now be directed to the next section of the guide |goto Stratholme/1 19.8,51.2 < 10 |noway |c
		_
		Click here if you are ready to sell |confirm |next "sell"
	step
		_Make your way_ through the Hoard and defeat Willey Hopebreaker |goto Stratholme/1 4.1,50.8
		goldcollect Runecloth##14047 |n
		goldcollect Hibernal Cowl##8115 |n
		goldcollect Hibernal Mantle##8111 |n
		goldcollect Hibernal Bracers##8108 |n
		goldcollect Hibernal Gloves##8110 |n
		goldcollect Hibernal Sash##8114 |n
		goldcollect Hibernal Pants##8112 |n
		goldcollect Hibernal Boots##8107 |n
		_Secondary Items:_
		goldcollect Runecloth##14047 |n
		goldcollect Mageweave Cloth##4338 |n
		goldcollect Righteous Orb##12811 |n
		You will now be directed to the next section of the guide |goto Stratholme/1 4.1,50.8 < 10 |noway |c
		_
		Click here if you are ready to sell |confirm |next "sell"
	step
		_Leave_ The Hoard |goto Stratholme/1 19.1,52.1 < 20
		_Go through_ the doors |goto Stratholme/1 19.1,52.1 < 20
		_Defeat_ Balnazzar |goto Stratholme/1 20.3,82.0 < 20
		goldcollect Hibernal Cowl##8115 |n
		goldcollect Hibernal Mantle##8111 |n
		goldcollect Hibernal Bracers##8108 |n
		goldcollect Hibernal Gloves##8110 |n
		goldcollect Hibernal Sash##8114 |n
		goldcollect Hibernal Pants##8112 |n
		goldcollect Hibernal Boots##8107 |n
		_Secondary Items:_
		goldcollect Runecloth##14047 |n
		goldcollect Mageweave Cloth##4338 |n
		goldcollect Righteous Orb##12811 |n
		You will now be directed to the next section of the guide |goto Stratholme/1 20.3,82.0 < 20 |noway |c
		_
		Click here if you are ready to sell |confirm |next "sell"
	step
		_Leave_ the Scarlet Bastion |goto Stratholme/1 32.2,34.4 < 20
		_Go through_ the gate and travel through Market Row |goto Stratholme/1 50.6,23.7 < 20
		_Continue through_ Market Row |goto 61.3,29.7 < 20
		_Cross under_ the bridge |goto Stratholme/1 77.3,18.8 < 20
		_Go through_ Festival Lane |goto 82.2,24.7 < 20
		_Continue through_ the area |goto 81.6,42.8 < 20
		_Go through_ the Stratholme Gates |goto Stratholme/1 77.2,49.4 < 20
		_Continue through_ the gates |goto 73.1,55.2 < 20
		_Leave_ Stratholme |goto Eastern Plaguelands/0 27.8,11.6
		goldcollect Hibernal Cowl##8115 |n
		goldcollect Hibernal Mantle##8111 |n
		goldcollect Hibernal Bracers##8108 |n
		goldcollect Hibernal Gloves##8110 |n
		goldcollect Hibernal Sash##8114 |n
		goldcollect Hibernal Pants##8112 |n
		goldcollect Hibernal Boots##8107 |n
		_Secondary Items:_
		goldcollect Runecloth##14047 |n
		goldcollect Mageweave Cloth##4338 |n
		goldcollect Righteous Orb##12811 |n
		You will now be directed to the next section of the guide |goto Eastern Plaguelands/0 27.8,11.6 < 10 |noway |c
		_
		Click here if you are ready to sell |confirm |next "sell"
	step
		_Go through_ the gate |goto Eastern Plaguelands/0 43.5,19.2 < 20
		_Go through_ the Service Entrance Gate |goto Stratholme/2 67.5,80.8 < 20
		_Make your way_ through the gates |goto Stratholme/2 61.4,58.3 < 20
		_Turn left_ when you reach this area |goto Stratholme/2 67.4,51.8 < 20
		_Defeat_ Nerub'enkan |goto Stratholme/2 56.5,46.8 < 20
		_Defeat_ the Thuzadin Acolytes inside the building |goto Stratholme/2 53.5,49.2 < 20
		goldcollect Hibernal Cowl##8115 |n
		goldcollect Hibernal Mantle##8111 |n
		goldcollect Hibernal Bracers##8108 |n
		goldcollect Hibernal Gloves##8110 |n
		goldcollect Hibernal Sash##8114 |n
		goldcollect Hibernal Pants##8112 |n
		goldcollect Hibernal Boots##8107 |n
		_Secondary Items:_
		goldcollect Runecloth##14047 |n
		goldcollect Mageweave Cloth##4338 |n
		goldcollect Righteous Orb##12811 |n
		You will now be directed to the next section of the guide |goto Stratholme/2 53.5,49.2 < 5 |noway |c
		_
		Click here if you are ready to sell |confirm |next "sell"
	step
		_Back track_ to the fork in the road here |goto Stratholme/2 66.0,51.4 < 20
		_Defeat_ Baroness Anastari |goto Stratholme/2 74.8,46.8
		_Defeat_ the Thuzadin Acolytes inside the building |goto Stratholme/2 78.0,48.0
		goldcollect Hibernal Cowl##8115 |n
		goldcollect Hibernal Mantle##8111 |n
		goldcollect Hibernal Bracers##8108 |n
		goldcollect Hibernal Gloves##8110 |n
		goldcollect Hibernal Sash##8114 |n
		goldcollect Hibernal Pants##8112 |n
		goldcollect Hibernal Boots##8107 |n
		_Secondary Items:_
		goldcollect Runecloth##14047 |n
		goldcollect Mageweave Cloth##4338 |n
		goldcollect Righteous Orb##12811 |n
		You will now be directed to the next section of the guide |goto Stratholme/2 78.0,48.0 < 10 |noway |c
		_
		Click here if you are ready to sell |confirm |next "sell"
	step
		_Pass through_ the alleyway |goto Stratholme/2 68.6,34.6 < 20
		_Defeat_ Maleki the Pallid |goto 67.9,20.4 < 20
		_Defeat_ the Thuzadin Acolytes inside the building |goto Stratholme/2 70.0,16.8 < 20
		goldcollect Hibernal Cowl##8115 |n
		goldcollect Hibernal Mantle##8111 |n
		goldcollect Hibernal Bracers##8108 |n
		goldcollect Hibernal Gloves##8110 |n
		goldcollect Hibernal Sash##8114 |n
		goldcollect Hibernal Pants##8112 |n
		goldcollect Hibernal Boots##8107 |n
		_Secondary Items:_
		goldcollect Runecloth##14047 |n
		goldcollect Mageweave Cloth##4338 |n
		goldcollect Righteous Orb##12811 |n
		You will now be directed to the next section of the guide |goto Stratholme/2 70.0,16.8 < 10 |noway |c
		_
		Click here if you are ready to sell |confirm |next "sell"
	step
		_Make your way_ through |goto Stratholme/2 62.1,25.1
		_Defeat_ Magistrate Barthilas |goto 57.1,14.6
		_Pass through_ the gates to Slaughter Square |goto Stratholme/2 51.4,19.5 < 20
		_Defeat_ the Venom Belchers, Bile Spewers, Ramstein the Gorger, the horde of zombies that flood the room and finally the Black Guard |goto Stratholme/2 45.5,19.6
		_Defeat_ Lord Aurius Rivendare |goto Stratholme/2 38.3,20.2 |noway |c
		goldcollect Hibernal Cowl##8115 |n
		goldcollect Hibernal Mantle##8111 |n
		goldcollect Hibernal Bracers##8108 |n
		goldcollect Hibernal Gloves##8110 |n
		goldcollect Hibernal Sash##8114 |n
		goldcollect Hibernal Pants##8112 |n
		goldcollect Hibernal Boots##8107 |n
		_Secondary Items:_
		goldcollect Runecloth##14047 |n
		goldcollect Mageweave Cloth##4338 |n
		goldcollect Righteous Orb##12811 |n
		_
		Click here if you are ready to sell |confirm |next "sell"
	step
		_Leave_ the Slaughter House |goto Stratholme/2 42.9,20.4 < 20
		_Leave_ the Slaughter Square |goto Stratholme/2 53.1,19.1 < 20
		_Make your way_ through the gauntlet |goto Stratholme/2 59.5,29.3 < 20
		_Go through_ the gate |goto 58.0,37.3 < 20
		_Head towards_ the gates |goto Stratholme/2 66.5,53.3 < 20
		_Pass through_ the gates |goto 61.5,58.4 < 20
		_Leave_ Stratholme |goto 67.3,86.6 < 20
		goldcollect Hibernal Cowl##8115 |n
		goldcollect Hibernal Mantle##8111 |n
		goldcollect Hibernal Bracers##8108 |n
		goldcollect Hibernal Gloves##8110 |n
		goldcollect Hibernal Sash##8114 |n
		goldcollect Hibernal Pants##8112 |n
		goldcollect Hibernal Boots##8107 |n
		_Secondary Items:_
		goldcollect Runecloth##14047 |n
		goldcollect Mageweave Cloth##4338 |n
		goldcollect Righteous Orb##12811 |n
		_
		If you wish to return to farming Stratholme, _reset the instance, then click here_ |confirm |next "Strath1"
		_Click here to sell_ any items you have |confirm |next "sell"
		_Click here_ if you want _to continue farming for more_ Hibernal Armor |confirm
	step
	label "BRD1"
		_Follow_ the path into the open area |goto Blackrock Depths/1 39.2,75.6
		_Enter_ the stone tunnel |goto 45.0,78.8
		_Go down_ the path |goto 46.7,88.8 |tip Clear the side rooms
		_Defeat_ High Interrogator Gerstahn |goto 47.5,93.1
		goldcollect Hibernal Armor##8106 |n
		goldcollect Runecloth##14047 |n
		goldcollect Tender Wolf Meat##12208 |n
		goldcollect Red Wolf Meat##12203 |n
		You will now be directed to the next section of the guide |goto 47.5,93.1 < 20 |noway |c
		_
		Click here if you are ready to sell |confirm |next "sell"
	step
		_Make your way_ through the door |goto Blackrock Depths/1 48.3,97.8 < 20
		_Follow_ the curved path |goto 51.7,92.0 < 20
		_Continue_ along the path |goto 51.4,84.9 < 20
		_Move into_ the open room |goto 47.1,77.5 < 20
		_Make your way_ into the corridor |goto 45.6,67.3 < 20
		_Follow_ the path down |goto 47.6,58.6 < 20
		_Turn right_ into the room here |goto 54.4,59.0 < 20
		_Defeat_ Houndmaster Grebmar |goto Blackrock Depths/1 51.5,62.2 < 20
		goldcollect Hibernal Armor##8106 |n
		goldcollect Runecloth##14047 |n
		goldcollect Tender Wolf Meat##12208 |n
		goldcollect Red Wolf Meat##12203 |n
		You will now be directed to the next section of the guide |goto Blackrock Depths/1 51.5,62.2 < 10 |noway |c
		_
		Click here if you are ready to sell |confirm |next "sell"
	step
		_Leave_ the room |goto Blackrock Depths/1 54.8,59.3
		_Make your way_ through the tunnel |goto 55.7,68.0
		_Exit_ the tunnel into the open room |goto 48.1,72.5
		_Go through_ the door |goto Blackrock Depths/1 37.8,66.0
		_Go down_ to the path |goto 34.9,60.3
		_Defeat_ Bael'Gar |goto 25.0,52.7
		goldcollect Hibernal Armor##8106 |n
		goldcollect Runecloth##14047 |n
		goldcollect Tender Wolf Meat##12208 |n
		goldcollect Red Wolf Meat##12203 |n
		You will now be directed to the next section of the guide |goto 25.0,52.7 < 10 |noway |c
		_
		Click here if you are ready to sell |confirm |next "sell"
	step
		_Follow_ the path |goto Blackrock Depths/1 28.4,56.2
		_Make your way_ towards the giant gates |goto 36.8,59.6
		_Go through_ the gate |goto Blackrock Depths/1 44.4,50.0
		_Defeat_ Lord Incendius |goto Blackrock Depths/1 56.5,31.4
		goldcollect Hibernal Armor##8106 |n
		goldcollect Runecloth##14047 |n
		goldcollect Tender Wolf Meat##12208 |n
		goldcollect Red Wolf Meat##12203 |n
		You will now be directed to the next section of the guide |goto 56.5,31.4 < 10 |noway |c
		_
		Click here if you are ready to sell |confirm |next "sell"
	step
		_Go up_ the ramp |goto Blackrock Depths/1 61.2,24.3 < 15
		_Continue_ up the ramp |goto Blackrock Depths/1 66.5,25.7 < 15
		_Go through_ the door |goto Blackrock Depths/2 60.4,60.0 < 15
		_Enter_ the Black Vault |goto Blackrock Depths/1 59.0,35.0 < 15
		Defeat Warder Stilgiss |goto Blackrock Depths/2 60.9,68.2 < 10
		goldcollect Hibernal Armor##8106 |n
		goldcollect Runecloth##14047 |n
		goldcollect Tender Wolf Meat##12208 |n
		goldcollect Red Wolf Meat##12203 |n
		You will now be directed to the next section of the guide |goto Blackrock Depths/2 60.9,68.2 < 10 |noway |c
		_
		Click here if you are ready to sell |confirm |next "sell"
	step
		_Leave_ the room |goto Blackrock Depths/2 58.5,64.1 < 15
		_Enter_ the doorway |goto Blackrock Depths/2 54.4,65.0 < 15
		_Go up_ the stairs |goto Blackrock Depths/2 53.3,68.1 <15
		_Enter_ the pathway |goto 56.3,76.0 < 20
		_Follow_ the path back |goto Blackrock Depths/2 56.3,93.4 < 15
		Defeat Pyromancer Loregrain |goto 54.2,96.3
		goldcollect Hibernal Armor##8106 |n
		goldcollect Runecloth##14047 |n
		goldcollect Tender Wolf Meat##12208 |n
		goldcollect Red Wolf Meat##12203 |n
		You will now be directed to the next section of the guide |goto 54.2,96.3 < 10 |noway |c
		_
		Click here if you are ready to sell |confirm |next "sell"
	step
		_Go up_ the ramp |goto Blackrock Depths/2 55.7,90.0 < 20
		_Go down_ the ramp |goto Blackrock Depths/1 45.9,63.1 < 15
		_Jump down_ here |goto Blackrock Depths/2 42.1,89.7 < 15
		_Click_ the switch |goto 41.2,88.3
		goldcollect Hibernal Armor##8106 |n
		goldcollect Runecloth##14047 |n
		goldcollect Tender Wolf Meat##12208 |n
		goldcollect Red Wolf Meat##12203 |n
		You will now be directed to the next section of the guide |goto 41.2,88.3 < 10 |noway |c
		_
		Click here if you are ready to sell |confirm |next "sell"
	step
		_Go up_ the ramp |goto Blackrock Depths/2 42.2,90.4 < 20
		Make your way _into the hallway_ |goto Blackrock Depths/2 46.0,86.3 < 20
		_Go down_ the hallway |goto Blackrock Depths/2 47.4,81.7 < 20
		_Go through_ the door |goto Blackrock Depths/1 43.1,47.3 < 20
		_Go into_ the open room |goto Blackrock Depths/2 38.6,77.3 < 20
		_Go down_ the ramp |goto 36.4,80.6< 20
		Deafeat General Angerforge |goto 36.6,84.4
		goldcollect Hibernal Armor##8106 |n
		goldcollect Runecloth##14047 |n
		goldcollect Tender Wolf Meat##12208 |n
		goldcollect Red Wolf Meat##12203 |n
		You will now be directed to the next section of the guide |goto 36.6,84.4 < 10 |noway |c
		_
		Click here if you are ready to sell |confirm |next "sell"
	step
		_Go up_ the stairs |goto Blackrock Depths/2 36.5,80.1 < 15
		_Go down_ the ramp |goto 36.5,76.5 < 15
		Defeat Golem Lord Argelmach |goto Blackrock Depths/2 36.7,65.5
		goldcollect Hibernal Armor##8106 |n
		goldcollect Runecloth##14047 |n
		goldcollect Tender Wolf Meat##12208 |n
		goldcollect Red Wolf Meat##12203 |n
		You will now be directed to the next section of the guide |goto Blackrock Depths/2 36.7,65.5  < 10 |noway |c
		_
		Click here if you are ready to sell |confirm |next "sell"
	step
		_Go down_ the hallway |goto Blackrock Depths/2 40.8,68.3 < 15
		_Go up_ the stairs |goto Blackrock Depths/2 46.9,65.0 < 15
		_Continue up_ the stairs |goto Blackrock Depths/2 51.8,65.4 < 15
		talk Plugger Spazzring##9499
		buy 2 Dark Iron Ale Mug##11325 |goto Blackrock Depths/2 49.8,61.2 < 15
		goldcollect Hibernal Armor##8106 |n
		goldcollect Runecloth##14047 |n
		goldcollect Tender Wolf Meat##12208 |n
		goldcollect Red Wolf Meat##12203 |n
		_
		Click here if you are ready to sell |confirm |next "sell"
	step
		talk Private Rocknot##9503
		accept Rocknot's Ale##4295 |goto 51.03,60.67 |instant
		Attack the Bar Patrons, it will force the Fireguard Destroyer out
		Defeat Fireguard Destroyer |goto Blackrock Depths/2 52.4,63.3 < 15
		_Go down_ the ramp |goto Blackrock Depths/1 53.0,32.0 < 15
		_Enter_ the doorway then go down the stairs |goto Blackrock Depths/2 53.4,56.1 < 15
		Defeat Ambassador Flamelash |goto Blackrock Depths/2 53.6,49.1
		goldcollect Hibernal Armor##8106 |n
		goldcollect Runecloth##14047 |n
		goldcollect Tender Wolf Meat##12208 |n
		goldcollect Red Wolf Meat##12203 |n
		You will now be directed to the next section of the guide |goto Blackrock Depths/2 53.6,49.1 < 10 |noway |c
		_
		Click here if you are ready to sell |confirm |next "sell"
	step
		_Go through_ the doorway |goto Blackrock Depths/2 49.4,41.9
		_Clear the room_ as you pass through |goto Blackrock Depths/2 48.5,34.4 < 20 |tip Clear the entire room
		_Go down_ the ramp |goto 50.1,29.1 < 15
		talk Doom'rel##9039 |goto Blackrock Depths/2 56.5,21.9
		Tell him: _Your bondage is at an end, Doom'rel. I challenge you!_
		goldcollect Hibernal Armor##8106 |n
		goldcollect Runecloth##14047 |n
		goldcollect Tender Wolf Meat##12208 |n
		goldcollect Red Wolf Meat##12203 |n
		After you complete the event, click here to continue |confirm
		_
		Click here if you are ready to sell |confirm |next "sell"
	step
		_Go through_ the door |goto Blackrock Depths/2 57.5,23.6 < 15
		_Continue_ through the giant doors |goto Blackrock Depths/2 60.8,18.6 < 15
		kill Shadowforge Flame Keeper##9956 |n
		collect Shadowforge Torch##11885 |n
		click Shadowforge Brazier
		Light the Shadowforge Brazier |goto Blackrock Depths/2 71.5,16.9
		goldcollect Hibernal Armor##8106 |n
		goldcollect Runecloth##14047 |n
		goldcollect Tender Wolf Meat##12208 |n
		goldcollect Red Wolf Meat##12203 |n
		After you light this torch, click here to continue |confirm
		_
		Click here if you are ready to sell |confirm |next "sell"
	step
		kill Shadowforge Flame Keeper##9956 |n
		collect Shadowforge Torch##11885 |n
		click Shadowforge Brazier
		Light the Shadowforge Brazier |goto Blackrock Depths/2 71.9,6.9 < 15
		_Go through_ the doorway |goto Blackrock Depths/2 75.1,11.1 < 15
		Defeat Magmus |goto Blackrock Depths/2 81.5,11.9
		goldcollect Hibernal Armor##8106 |n
		goldcollect Runecloth##14047 |n
		goldcollect Tender Wolf Meat##12208 |n
		goldcollect Red Wolf Meat##12203 |n
		You will now be directed to the next section of the guide |goto Blackrock Depths/2 81.5,11.9 < 10 |noway |c
		_
		Click here if you are ready to sell |confirm |next "sell"
	step
		_Go through_ the giant doors |goto Blackrock Depths/2 85.8,11.9 < 15
		Clear out the room as you go through it
		Defeat Emperor Dagran Thaurissan |goto 93.1,11.9
		goldcollect Hibernal Armor##8106 |n
		goldcollect Runecloth##14047 |n
		goldcollect Tender Wolf Meat##12208 |n
		goldcollect Red Wolf Meat##12203 |n
		After you defeat Emperor Dagran, click here to continue |confirm
		_
		Click here if you are ready to sell |confirm |next "sell"
	step
		_Go through_ the big doors |goto Blackrock Depths/2 85.4,12.0 < 20
		_Continue_ through the big doors |goto 74.9,12.9 < 20
		_Go up_ the ramp |goto Blackrock Depths/2 59.8,20.0 < 20
		_Go down_ the ramp |goto 59.0,23.7 < 20
		_Enter_ the molten core |goto Blackrock Depths/2 68.4,38.3 < 10
		goldcollect Hibernal Armor##8106 |n
		goldcollect Runecloth##14047 |n
		goldcollect Tender Wolf Meat##12208 |n
		goldcollect Red Wolf Meat##12203 |n
		You will now be directed to the next section of the guide |goto Blackrock Depths/2 68.4,38.3 < 10 |noway |c
		_
		Click here if you are ready to sell |confirm  |goto Blackrock Depths/2 68.4,38.3 < 10 |next "sell"
	step
		_Leave_ the Molten Core |goto Burning Steppes/16 54.4,83.5 < 20
		This step will take you back to the start of the dungeon. _Reset_ if you wish to continue |confirm |next "BRD1"
		_
		_Click here_ if you wish _to return to farming Stratholme_ |confirm |next "Strath1"
		_
		_Click here to sell_ the items you have |confirm  |goto Blackrock Depths/2 68.4,38.3 < 10 |next "sell"
	step
	label "sell"
		#include "auctioneer"
		Click here to go back to the start |confirm |next "Strath1"
		Click here to go back to farming Blackrock Depths |confirm |next "BRD1"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Daily Runs\\Master's Cloth Set Transmog",{
	meta={goldtype="xmog",levelreq=30,gold=100,time=15,icon="Interface\\ICONS\\inv_shirt_06"},
	description="\nThis guide will put you on the path to obtaining the Master's Cloth Set",
	items={{10250,1},{10253,1},{10246,1},{10248,1},{10251,1},{10255,1},{10247,1},{10252,1},{17011,1},{7076,1},{7078,1},{7077,1},{7068,1},{7075,1},{17203,1}},
	maps={"Molten Core"},
	},[[
	step
		This guide will point you in the direction to each piece of the Master's Cloth Armor.
		Since they have a very low drop rate, do expect to farm for a bit for these items
		confirm always
	step
	label "start"
		_Follow_ the path |goto Molten Core/1 32.4,20.7 < 20
		_Go around_ the path |goto 43.2,15.1 < 20
		_Cross_ the bridge |goto Molten Core/1 49.4,30.0 < 20
		_Go through_ the cave |goto Molten Core/1 54.8,31.7 < 20
		_Enter_ the passageway |goto Molten Core/1 62.3,40.1 < 20
		Defeat Magmadar |goto Molten Core/1 70.0,20.8
		goldcollect Master's Hat##10250 |n
		goldcollect Master's Mantle##10253 |n
		goldcollect Master's Vest##10246 |n
		goldcollect Master's Bracers##10248 |n
		goldcollect Master's Gloves##10251 |n
		goldcollect Master's Belt##10255 |n
		goldcollect Master's Boots##10247 |n
		goldcollect Master's Leggings##10252 |n
		_Secondary Items:_
		goldcollect Lava Core##17011 |n
		goldcollect Essence of Earth##7076 |n
		goldcollect  Essence of Fire##7078 |n
		goldcollect  Heart of Fire##7077 |n
		goldcollect  Elemental Fire##7068 |n
		You will now be directed to the next section of the guide |goto Molten Core/1 70.0,20.8 < 20 |noway |c
		_
		Click here if you are ready to sell |confirm |next "sell"
	step
		_Enter_ the doorway |goto Molten Core/1 62.3,40.1 < 20
		_Cross_ the bridge |goto Molten Core/1 54.7,31.5 < 20
		_Go down_ the hill |goto Molten Core/1 45.9,26.9 < 20
		Defeat Gehennas |goto Molten Core/1 33.0,48.2
		goldcollect Master's Hat##10250 |n
		goldcollect Master's Mantle##10253 |n
		goldcollect Master's Vest##10246 |n
		goldcollect Master's Bracers##10248 |n
		goldcollect Master's Gloves##10251 |n
		goldcollect Master's Belt##10255 |n
		goldcollect Master's Boots##10247 |n
		goldcollect Master's Leggings##10252 |n
		_Secondary Items:_
		goldcollect Lava Core##17011 |n
		goldcollect Essence of Earth##7076 |n
		goldcollect  Essence of Fire##7078 |n
		goldcollect  Heart of Fire##7077 |n
		goldcollect  Elemental Fire##7068 |n
		goldcollect Core of Earth##7075 |n
		goldcollect Essence of Earth##7076 |n
		You will now be directed to the next section of the guide |goto Molten Core/1 33.0,48.2 < 20 |noway |c
		_
		Click here if you are ready to sell |confirm |next "sell"
	step
		Defeat Garr |goto Molten Core/1 29.4,72.2
		goldcollect Master's Hat##10250 |n
		goldcollect Master's Mantle##10253 |n
		goldcollect Master's Vest##10246 |n
		goldcollect Master's Bracers##10248 |n
		goldcollect Master's Gloves##10251 |n
		goldcollect Master's Belt##10255 |n
		goldcollect Master's Boots##10247 |n
		goldcollect Master's Leggings##10252 |n
		_Secondary Items:_
		goldcollect Lava Core##17011 |n
		goldcollect Essence of Earth##7076 |n
		goldcollect  Essence of Fire##7078 |n
		goldcollect  Heart of Fire##7077 |n
		goldcollect  Elemental Fire##7068 |n
		goldcollect Core of Earth##7075 |n
		goldcollect Essence of Earth##7076 |n
		You will now be directed to the next section of the guide  |goto Molten Core/1 29.4,72.2 < 20 |noway |c
		_
		Click here if you are ready to sell |confirm |next "sell"
	step
		_Enter_ the tunnel |goto Molten Core/1 36.9,70.2 < 20
		_Continue_ along the tunnel |goto 42.2,72.4 < 20
		Defeat Shazzrah |goto 53.9,84.1
		goldcollect Master's Hat##10250 |n
		goldcollect Master's Mantle##10253 |n
		goldcollect Master's Vest##10246 |n
		goldcollect Master's Bracers##10248 |n
		goldcollect Master's Gloves##10251 |n
		goldcollect Master's Belt##10255 |n
		goldcollect Master's Boots##10247 |n
		goldcollect Master's Leggings##10252 |n
		_Secondary Items:_
		goldcollect Lava Core##17011 |n
		goldcollect Essence of Earth##7076 |n
		goldcollect  Essence of Fire##7078 |n
		goldcollect  Heart of Fire##7077 |n
		goldcollect  Elemental Fire##7068 |n
		goldcollect Core of Earth##7075 |n
		goldcollect Essence of Earth##7076 |n
		You will now be directed to the next section of the guide  |goto 53.9,84.1 < 20 |noway |c
		_
		Click here if you are ready to sell |confirm |next "sell"
	step
		_Go up_ the hill |goto Molten Core/1 57.8,74.3 < 20
		_Cross_ the platform |goto 68.3,65.9 < 20
		Defeat Sulfuron Harbinger|goto Molten Core/1 83.4,82.7
		goldcollect Master's Hat##10250 |n
		goldcollect Master's Mantle##10253 |n
		goldcollect Master's Vest##10246 |n
		goldcollect Master's Bracers##10248 |n
		goldcollect Master's Gloves##10251 |n
		goldcollect Master's Belt##10255 |n
		goldcollect Master's Boots##10247 |n
		goldcollect Master's Leggings##10252 |n
		_Secondary Items:_
		goldcollect Lava Core##17011 |n
		goldcollect Essence of Earth##7076 |n
		goldcollect  Essence of Fire##7078 |n
		goldcollect  Heart of Fire##7077 |n
		goldcollect  Elemental Fire##7068 |n
		goldcollect Core of Earth##7075 |n
		goldcollect Essence of Earth##7076 |n
		goldcollect Sulfuron Ingot##17203 |n
		You will now be directed to the next section of the guide |goto Molten Core/1 68.6,61.2 < 20 |noway |c
		_
		Click here if you are ready to sell |confirm |next "sell"
	step
		_Jump down_ the ledge here |goto Molten Core/1 67.8,64.9 < 20
		Defeat Golemagg the Incinerator |goto Molten Core/1 68.5,61.1
		goldcollect Master's Hat##10250 |n
		goldcollect Master's Mantle##10253 |n
		goldcollect Master's Vest##10246 |n
		goldcollect Master's Bracers##10248 |n
		goldcollect Master's Gloves##10251 |n
		goldcollect Master's Belt##10255 |n
		goldcollect Master's Boots##10247 |n
		goldcollect Master's Leggings##10252 |n
		_Secondary Items:_
		goldcollect Lava Core##17011 |n
		goldcollect Essence of Earth##7076 |n
		goldcollect  Essence of Fire##7078 |n
		goldcollect  Heart of Fire##7077 |n
		goldcollect  Elemental Fire##7068 |n
		goldcollect Core of Earth##7075 |n
		goldcollect Essence of Earth##7076 |n
		goldcollect Sulfuron Ingot##17203 |n
		You will now be directed to the next section of the guide |goto Molten Core/1 68.6,61.2 < 20 |noway |c
		_
		Click here if you are ready to sell |confirm |next "sell"
	step
		_Go up_ the ramp |goto Molten Core/1 73.1,50.5 < 30
		_Continue up_ the ramp |goto 78.2,64.3 < 20
		Defeat Majordomo Executus |goto Molten Core/1 83.2,65.9
		goldcollect Master's Hat##10250 |n
		goldcollect Master's Mantle##10253 |n
		goldcollect Master's Vest##10246 |n
		goldcollect Master's Bracers##10248 |n
		goldcollect Master's Gloves##10251 |n
		goldcollect Master's Belt##10255 |n
		goldcollect Master's Boots##10247 |n
		goldcollect Master's Leggings##10252 |n
		_Secondary Items:_
		goldcollect Lava Core##17011 |n
		goldcollect Essence of Earth##7076 |n
		goldcollect  Essence of Fire##7078 |n
		goldcollect  Heart of Fire##7077 |n
		goldcollect  Elemental Fire##7068 |n
		goldcollect Core of Earth##7075 |n
		goldcollect Essence of Earth##7076 |n
		goldcollect Sulfuron Ingot##17203 |n
		You will now be directed to the next section of the guide |goto Molten Core/1 68.6,61.2 < 20 |noway |c
		_
		Click here if you are ready to sell |confirm |next "sell"
	step
		_Jump_ down the ledge here |goto Molten Core/1 78.0,73.1 < 20
		_Follow_ the narrow path |goto Molten Core/1 71.7,68.0 < 20
		_Continue_ along the path |goto Molten Core/1 52.7,75.4 < 30
 		_Go up_ the hill |goto Molten Core/1 43.6,71.0 < 20
		_Go around_ the wall |goto Molten Core/1 34.4,66.0 < 20
		_Follow_ the path back |goto 39.3,56.4 < 20
		talk Majordomo Executus##54404 |goto Molten Core/1 54.3,54.3
		--Need actual dialogue
		goldcollect Master's Hat##10250 |n
		goldcollect Master's Mantle##10253 |n
		goldcollect Master's Vest##10246 |n
		goldcollect Master's Bracers##10248 |n
		goldcollect Master's Gloves##10251 |n
		goldcollect Master's Belt##10255 |n
		goldcollect Master's Boots##10247 |n
		goldcollect Master's Leggings##10252 |n
		_Secondary Items:_
		goldcollect Lava Core##17011 |n
		goldcollect Essence of Earth##7076 |n
		goldcollect  Essence of Fire##7078 |n
		goldcollect  Heart of Fire##7077 |n
		goldcollect  Elemental Fire##7068 |n
		goldcollect Core of Earth##7075 |n
		goldcollect Essence of Earth##7076 |n
		goldcollect Sulfuron Ingot##17203 |n
		You will now be directed to the next section of the guide |goto Molten Core/1 68.6,61.2 < 20 |noway |c
		_
		Click here if you are ready to sell |confirm |next "sell"
		Defeat Ragnaros
	step
	label "sell"
		#include "auctioneer"
		Click here to go back to the start |confirm |next "start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Daily Runs\\Resilient Cloth Set Transmog",{
	meta={goldtype="xmog",levelreq=10,gold=100,time=15,icon="Interface\\ICONS\\inv_shirt_09"},
	description="\nThis guide will put you on the path to obtaining the Resilient Cloth Set",
	items={{14403,1},{14402,1},{14406,1},{14399,1},{14398,1},{14404,1},{4338,1}},
	maps={"Southern Barrens","Desolace","Maraudon"},
	},[[
	step
		This guide will point you in the direction to each piece of the Resilient Cloth Armor.
		Since they have a very low drop rate, do expect to farm for a bit for these items
		confirm always
	step
	label "SB1"
		map Southern Barrens/0
		path follow smart; loop on; ants curved; dist 20
		path	40.8,15.6	42.2,22.0	40.6,24.0
		path	43.4,27.0	39.6,34.2	42.6,37.6
		path	43.6,42.6	53.6,49.6	55.0,47.8
		path	52.8,46.9	55.8,44.2
		Kill Hecklefang Scavengers, Terrortooth Runners and Bristleback enemies along this path
		goldcollect Resilient Handgrips##14403 |n
		goldcollect Resilient Bands##14402 |n
		confirm
	step
		map Desolace/0
		path	73.7,16.4	77.5,15.4	79.7,18.1
		path	76.8,22.2	76.4,25.5	72.9,26.2
		path	70.7,25.0	67.0,24.4	64.0,24.4
		path	59.7,23.6	58.4,18.9	60.2,16.5
		path	63.3,15.9	68.3,19.8	70.5,17.9
		goldcollect Resilient Handgrips##14403 |n
		goldcollect Resilient Cord##14406 |n
		goldcollect Resilient Boots##14399 |n
		Click here to sell |confirm |next "sell"
		_
		Click here to move onto the next farming path |confirm
	step
	label "MSr"
		|tip Make sure you reset the dungeon if required
		_Enter_ the dungeon |goto Maraudon/1 76.4,62.7 < 20
		_Follow_ the ledge |goto 72.3,68.4 < 25
		_Confinue_ around the path here |goto 66.5,71.4 < 20
		_Cross_ the bridge|goto Maraudon/1 63.2,69.9 < 20
		_Go down_ the ramp |goto Maraudon/1 68.9,65.4 < 25
		goldcollect Resilient Tunic###14398 |n
		goldcollect Resilient Leggings##14404 |n
		goldcollect Mageweave Cloth##4338 |n
		You will be guided to the next portion of the guide |goto Maraudon/1 68.9,65.4 < 25 |noway |c
		_
		Click here if you wish to sell |confirm |next "sell"
	step
		_Go up_ the stairs |goto Maraudon/1 59.9,54.0 < 20
		_Follow_ the path along the right wall |goto Maraudon/1 55.9,48.0 < 25
		_Continue_ along the path |goto 50.2,51.7
		_Go through_ the doorway|goto 49.6,71.9 < 20
		_Pass_ through the room |goto 50.8,78.9 < 20
		_Clear_ the enemies in the back room here |goto 54.8,92.4 < 20
		goldcollect Resilient Tunic###14398 |n
		goldcollect Resilient Leggings##14404 |n
		goldcollect Mageweave Cloth##4338 |n
		You will be directed out of the dungeon now |goto 54.8,92.4 < 20 |noway |c
		_
		Click here if you wish to sell |confirm |next "sell"
	step
		_Go through_ the doorway |goto Maraudon/1 49.5,72.0 < 20
		_Jump_ down the ledge |goto 51.5,66.4 < 20
		_Follow_ the path up |goto Maraudon/1 57.1,61.0 < 20
		_Take_ the path to the right |goto 62.0,58.2 < 20
		_Go up_ the ramp |goto Maraudon/1 69.0,65.2 < 20
		_Follow_ the path |goto 63.2,67.2 < 20
		Leave Maraudon |goto Maraudon/1 79.1,68.2 < 10
		Click here to go back to the start of the guide |confirm |next "SB1"
		_
		Click here if you wish to reset the instance and continue farming Maraudon |confirm |next "MSr"
		Click here to sell |confirm
	step
	label "sell"
		#include "auctioneer"
		Click here to go back to the start |confirm |next "SB1"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Green Cabbage",{
	condition_valid="completedq(30257)",
	meta={goldtype="till",levelreq=15,time=1440,icon="Interface\\ICONS\\INV_Misc_Food_Vendor_GreenCabbage"},
	items={{74840,20}},
	},[[
	#include "goldg_farm",seed="Green Cabbage Seeds##79102",veggie="Green Cabbage##74840"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Mogu Pumpkin",{
	condition_valid="completedq(30257)",
	meta={goldtype="till",levelreq=15,time=1440,icon="Interface\\ICONS\\INV_Misc_Food_Vendor_MoguPumpkin"},
	items={{74842,20}},
	},[[
	#include "goldg_farm",seed="Mogu Pumpkin Seeds##80592",veggie="Mogu Pumpkin##74842"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Juicycrunch Carrot",{
	condition_valid="completedq(30257)",
	meta={goldtype="till",levelreq=15,time=1440,icon="Interface\\ICONS\\INV_Misc_Food_Vendor_Carrot"},
	items={{74841,20}},
	},[[
	#include "goldg_farm",seed="Juicycrunch Carrot Seeds##80590",veggie="Juicycrunch Carrot##74841"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Scallion",{
	condition_valid="completedq(30257)",
	meta={goldtype="till",levelreq=15,time=1440,icon="Interface\\ICONS\\INV_Misc_Food_Vendor_Scallions"},
	items={{74843,20}},
	},[[
	#include "goldg_farm",seed="Scallion Seeds##80591",veggie="Scallions##74843"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Red Blossom Leek",{
	condition_valid="completedq(30257)",
	meta={goldtype="till",levelreq=15,time=1440,icon="Interface\\ICONS\\INV_Misc_Food_Vendor_RedBlossomLeek"},
	items={{74844,20}},
	},[[
	#include "goldg_farm",seed="Red Blossom Leek Seeds##80593",veggie="Red Blossom Leek##74844"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Witchberries",{
	condition_valid="completedq(30257)",
	meta={goldtype="till",levelreq=15,time=1440,icon="Interface\\ICONS\\INV_Misc_Food_Vendor_Witchberries"},
	items={{74846,20}},
	},[[
	#include "goldg_farm",seed="Witchberry Seeds##89326",veggie="Witchberries##74846"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Jade Squash",{
	condition_valid="completedq(30257)",
	meta={goldtype="till",levelreq=15,time=1440,icon="Interface\\ICONS\\INV_Misc_Food_Vendor_JadeSquash"},
	items={{74847,20}},
	},[[
	#include "goldg_farm",seed="Jade Squash Seeds##89328",veggie="Jade Squash##74847"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Striped Melon",{
	condition_valid="completedq(30257)",
	meta={goldtype="till",levelreq=15,time=1440,icon="Interface\\ICONS\\INV_Misc_Food_Vendor_StripedMelon"},
	items={{74848,20}},
	},[[
	#include "goldg_farm",seed="Striped Melon Seeds##89329",veggie="Striped Melon##74848"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Pink Turnips",{
	condition_valid="completedq(30257)",
	meta={goldtype="till",levelreq=15,time=1440,icon="Interface\\ICONS\\INV_Misc_Food_Vendor_PinkTurnip"},
	items={{74849,20}},
	},[[
	#include "goldg_farm",seed="Pink Turnip Seeds##80594",veggie="Pink Turnip##74849"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\White Turnips",{
	condition_valid="completedq(30257)",
	meta={goldtype="till",levelreq=15,time=1440,icon="Interface\\ICONS\\INV_Misc_Food_Vendor_WhiteTurnip"},
	items={{74850,20}},
	},[[
	#include "goldg_farm",seed="White Turnip Seeds##80595",veggie="White Turnip##74850"
]])