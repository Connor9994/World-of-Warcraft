local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("PoiTreasureWOD") then return end
ZGV.Poi.Sets.PoiTreasureWOD={
{
level=90,
treasure=[[Doorog's Secret Stash]],
spot="Frostfire Ridge/2 37.1,69.8",
currency="GL",
item=113189,
quest=35370,
condition=[[only if completedq(33527)]],
steps=[[
step
_Go up_ the road to Bladespire Citadel |goto Frostfire Ridge/0 20.9,43.5
_Follow_ the bridge and go to the ramp |goto Frostfire Ridge/1 33.0,73.8
_Go to_ the top of the ramp |goto Frostfire Ridge/2 59.9,77.7
click Doorog's Secret Stash##232218 |q 35370 |future |goto Frostfire Ridge/2 37.1,69.8
|tip The stash is past the lava pit and boulders, hidden behind the supplies on the ground.
]],
},
{
level=90,
treasure=[[Gorr'thogg's Personal Reserve]],
spot="Frostfire Ridge/3 31.3,66.6",
item=113108,
quest=35367,
condition=[[only if completedq(33527)]],
steps=[[
step
_Warning_: You may have to contend with 99 elite Horde wolves to get this treasure |only if Alliance
_Go up_ the road to Bladespire Citadel |goto Frostfire Ridge/0 20.9,43.5
_Follow_ the bridge and go to the ramp |goto Frostfire Ridge/1 33.0,73.8
_Go to_ the top of the ramp |goto Frostfire Ridge/2 59.9,77.7
_Enter_ the citadel here |goto Frostfire Ridge/2 45.9,59.7
_Go up_ the ramp just inside on the left |goto Frostfire Ridge/2 36.2,46.8
_Follow_ the ramp all the way around and up into the Bladespire Throne |goto Frostfire Ridge/3 67.4,56.5
click Gorr'thogg's Personal Reserve##232215 |q 35367 |future |goto Frostfire Ridge/3 31.3,66.6
|tip It's located to the left of the giant throne.
]],
},
{
level=90,
treasure=[[Ogre Booty]],
spot="Frostfire Ridge/2 52.1,52.0",
currency="GL",
quest=35373,
condition=[[only if completedq(33527)]],
steps=[[
step
_Go up_ the road to Bladespire Citadel |goto Frostfire Ridge/0 20.9,43.5
_Follow_ the bridge and enter the main room of the Citadel |goto Frostfire Ridge/1 36.9,45.0
_Go up_ the ramp |goto Frostfire Ridge/1 45.3,22.8 < 8
_Follow the ramp_ all the way to the top |goto Frostfire Ridge/2 59.8,29.3 < 10
_Go to_ this room |goto Frostfire Ridge/2 52.0,48.8 < 12
click Ogre Booty##232214 |q 35373 |future |goto Frostfire Ridge/2 52.6,52.9
|tip Jump onto the crates. The treasure is hanging from a beam.
]],
},
{
level=90,
treasure=[[Ogre Booty]],
spot="Frostfire Ridge/2 46.2,15.6",
currency="GL",
quest=35371,
condition=[[only if completedq(33527)]],
steps=[[
step
_Go up_ the road to Bladespire Citadel |goto Frostfire Ridge/0 20.9,43.5
_Follow_ the bridge and enter the main room of the Citadel |goto Frostfire Ridge/1 36.9,45.0
_Go up_ the ramp |goto Frostfire Ridge/1 45.3,22.8 < 8
_Follow the ramp_ all the way to the top |goto Frostfire Ridge/2 59.8,29.3 < 10
_Go to_ this room |goto Frostfire Ridge/2 46.4,19.9 < 12
click Ogre Booty##232214 |q 35371 |future |goto Frostfire Ridge/2 46.2,15.6
]],
},
{
level=90,
treasure=[[Ogre Booty]],
spot="Frostfire Ridge/1 45.5,67.2",
currency="GR",
quest=35570,
steps=[[
step
_Warning_: You may have to contend with 99 elite Horde wolves to get this treasure
_Go up_ the road to Bladespire Citadel |goto Frostfire Ridge/0 20.9,43.5
_Follow_ the bridge and enter the main room of the Citadel |goto Frostfire Ridge/1 36.9,45.0
_Continue right_ through the Citadel |goto Frostfire Ridge/1 47.7,58.8
click Ogre Booty##232214 |q 35570 |future |goto Frostfire Ridge/1 45.5,67.2
|tip It's located on a stack of crates inside the room on the right.
]],
},
{
level=90,
treasure=[[Ogre Booty]],
spot="Frostfire Ridge/1 53.2,28.3",
currency="GL",
quest=35368,
condition=[[only if completedq(33527)]],
steps=[[
step
_Go up_ the road to Bladespire Citadel |goto Frostfire Ridge/0 20.9,43.5
_Follow_ the bridge and enter the main room of the Citadel |goto Frostfire Ridge/1 36.9,45.0
_Go left_ around the bonfire and enter this room |goto Frostfire Ridge/1 51.2,29.9
click Ogre Booty##232214 |q 35368 |future |goto Frostfire Ridge/1 53.2,28.3
|tip The treasure is hanging from a wooden beam above you. Climb the crates to reach it.
]],
},
{
level=90,
treasure=[[Ogre Booty]],
spot="Frostfire Ridge/1 48.6,67.1",
currency="GL",
quest=35369,
condition=[[only if completedq(33527)]],
steps=[[
step
_Go up_ the road to Bladespire Citadel |goto Frostfire Ridge/0 20.9,43.5
_Follow_ the bridge and enter the main room of the Citadel |goto Frostfire Ridge/1 36.9,45.0
_Continue right_ through the Citadel |goto Frostfire Ridge/1 47.7,58.8
click Ogre Booty##232214 |q 35369 |future |goto Frostfire Ridge/1 48.6,67.1
|tip Climb up the pile of crates and sacks to reach the chest on top of the scaffolding.
]],
},
{
level=90,
treasure=[[Ogre Booty]],
spot="Frostfire Ridge/2 76.7,62.1",
currency="GR",
quest=35568,
condition=[[only if completedq(33527)]],
steps=[[
step
_Go up_ the road to Bladespire Citadel |goto Frostfire Ridge/0 20.9,43.5
_Follow_ the bridge and enter the main room of the Citadel |goto Frostfire Ridge/1 36.9,45.0
_Go up_ the ramp |goto Frostfire Ridge/1 45.3,22.8 < 8
_Follow the ramp_ all the way to the top |goto Frostfire Ridge/2 59.8,29.3 < 10
_Enter_ this room |goto Frostfire Ridge/2 60.0,46.0 < 12
_Open_ the vault gate and enter the room |goto Frostfire Ridge/2 70.1,61.4 < 10
click Ogre Booty##232214 |q 35568 |future |goto Frostfire Ridge/2 76.7,62.1
|tip It's located behind a pile of supplies.
]],
},
{
level=90,
treasure=[[Ogre Booty]],
spot="Frostfire Ridge/2 70.5,67.7",
currency="GR",
quest=35569,
condition=[[only if completedq(33527)]],
steps=[[
step
_Go up_ the road to Bladespire Citadel |goto Frostfire Ridge/0 20.9,43.5
_Follow_ the bridge and enter the main room of the Citadel |goto Frostfire Ridge/1 36.9,45.0
_Go up_ the ramp |goto Frostfire Ridge/1 45.3,22.8 < 8
_Follow the ramp_ all the way to the top |goto Frostfire Ridge/2 59.8,29.3 < 10
_Enter_ this room |goto Frostfire Ridge/2 60.0,46.0 < 12
_Open_ the vault gate and enter the room |goto Frostfire Ridge/2 70.1,61.4 < 10
click Ogre Booty##232214 |q 35569 |future |goto Frostfire Ridge/2 70.5,67.7
|tip It's located behind a pile of supplies.
]],
},
{
level=90,
treasure=[[Ogre Booty]],
spot="Frostfire Ridge/2 51.3,17.9",
currency="GR",
quest=35567,
condition=[[only if completedq(33527)]],
steps=[[
step
_Go up_ the road to Bladespire Citadel |goto Frostfire Ridge/0 20.9,43.5
_Follow_ the bridge and enter the main room of the Citadel |goto Frostfire Ridge/1 36.9,45.0
_Go up_ the ramp |goto Frostfire Ridge/1 45.3,22.8 < 8
_Follow the ramp_ all the way to the top |goto Frostfire Ridge/2 59.8,29.3 < 10
_Go to_ this room |goto Frostfire Ridge/2 49.8,21.3 < 12
click Ogre Booty##232214 |q 35567 |future |goto Frostfire Ridge/2 51.3,17.9
]],
},
{
level=90,
treasure=[[Ogre Booty]],
spot="Frostfire Ridge/2 36.4,28.8",
currency="GR",
quest=35347,
condition=[[only if completedq(33527)]],
steps=[[
step
_Go up_ the road to Bladespire Citadel |goto Frostfire Ridge/0 20.9,43.5
_Follow_ the bridge and enter the main room of the Citadel |goto Frostfire Ridge/1 36.9,45.0
_Go up_ the ramp |goto Frostfire Ridge/1 45.3,22.8 < 8
_Follow the ramp_ all the way to the top |goto Frostfire Ridge/2 59.8,29.3 < 10
_Go to_ this room |goto Frostfire Ridge/2 38.2,30.8 < 12
click Ogre Booty##232214 |q 35347 |future |goto Frostfire Ridge/2 36.4,28.8
]],
},
{
level=90,
treasure=[[Sealed Jug]],
spot="Frostfire Ridge 09.83,45.33",
item=111407,
quest=34641,
steps=[[
step
_Go down_ the path along the water's edge |goto Frostfire Ridge/0 10.8,48.5
click Sealed Jug##230401 |q 34641 |future |goto Frostfire Ridge 09.83,45.33
]],
},
{
level=90,
treasure=[[Supply Dump]],
spot="Frostfire Ridge 16.12,49.72",
currency="GR",
quest=33942,
steps=[[
step
_Climb_ on this rock and use it to jump to the next one |goto Frostfire Ridge/0 15.2,50.7
click Supply Dump##226990 |q 33942 |future |goto Frostfire Ridge 16.12,49.72
]],
},
{
level=90,
treasure=[[Lucky Coin]],
spot="Frostfire Ridge 19.21,12.02",
item=111408,
quest=34642,
steps=[[
step
_Go through_ the narrow pass |goto Frostfire Ridge 20.0,12.9 < 10
click Lucky Coin##230402 |q 34642 |future |goto Frostfire Ridge 19.21,12.02
|tip A tiny coin is laying on the ground just past the well.
]],
},
{
level=90,
treasure=[[Pale Loot Sack]],
spot="Frostfire Ridge 21.68,50.76",
currency="GR",
quest=34931,
steps=[[
step
_Enter_ the cave |goto Frostfire Ridge/0 19.5,50.6
|tip Be careful, there are stealthed mobs throughout the cave.
_Continue around_ to the right and to the back of the cave |goto Frostfire Ridge/0 20.7,49.0
_Go up_ the ramp |goto Frostfire Ridge/0 21.1,50.4
click Pale Loot Sack##230611 |q 34931 |future |goto Frostfire Ridge 21.68,50.76
|tip The sack is at the end of the spine.
]],
},
{
level=90,
treasure=[[Lagoon Pool]],
spot="Frostfire Ridge 21.89,09.63",
item=108739,
quest=33926,
steps=[[
step
_Go through_ the narrow pass |goto Frostfire Ridge/0 23.0,9.3
_Fish_ from the Lagoon Pool |cast Fishing##131474
Fish up the _Giant Draenor Clam_ |q 33926 |future |goto Frostfire Ridge 21.89,09.63
|tip Try zooming your camera in if you have issues with clicking your bobber.
use Giant Draenor Clam##108738 |only if itemcount(108738) > 0
use Pretty Draenor Pearl##108739 |only if itemcount(108739) > 0
]],
},
{
level=90,
treasure=[[Arena Master's War Horn]],
spot="Frostfire Ridge 23.17,24.95",
item=108735,
quest=33916,
steps=[[
step
_Enter_ the building here |goto Frostfire Ridge/0 23.3,24.1
click Arena Master's War Horn##226955 |q 33916 |future |goto Frostfire Ridge 23.17,24.95
|tip It's on the seat of the throne.
]],
},
{
level=90,
treasure=[[Snow-Covered Strongbox]],
spot="Frostfire Ridge 23.97,12.91",
currency="GR",
quest=34647,
steps=[[
step
_Enter_ the cave |goto Frostfire Ridge/0 23.4,12.0
click Snow-Covered Strongbox##230424 |q 34647 |future |goto Frostfire Ridge 23.97,12.91
|tip It's in the left side of the cave, half buried in a snow mound.
]],
},
{
level=90,
treasure=[[Frozen Frostwolf Axe]],
spot="Frostfire Ridge 24.18,48.60",
item=110689,
quest=34507,
steps=[[
step
_Enter_ the cave here |goto Frostfire Ridge/0 25.3,51.4
click Frozen Frostwolf Axe##229640 |q 34507 |future |goto Frostfire Ridge 24.18,48.60
|tip It's in the back left portion of the cave, clutched by an orc frozen in ice.
]],
},
{
level=90,
treasure=[[Spectator's Chest]],
spot="Frostfire Ridge 24.24,27.12",
currency="GL",
item=117439,
quest=33501,
steps=[[
step
_Enter the tower_ here |goto Frostfire Ridge/0 24.5,29.4
_Go up_ the ramp to the top of the tower |goto Frostfire Ridge/0 24.5,28.3
_Mount up_ and _Jump down_ to the stone with the spectator's chair on it |goto Frostfire Ridge 24.24,27.12
click Spectator's Chest##224613 |q 33501 |future
]],
},
{
level=90,
treasure=[[Gnawed Bone]],
spot="Frostfire Ridge 25.52,20.50",
item=111415,
quest=34648,
steps=[[
step
click Gnawed Bone##230425 |q 34648 |future |goto Frostfire Ridge 25.52,20.50
|tip It's a very small bone sticking out of the side.
]],
},
{
level=90,
treasure=[[Slave's Stash]],
spot="Frostfire Ridge 27.65,42.80",
item=43696,
quest=33500,
steps=[[
step
_Jump onto_ the small building here |goto Frostfire Ridge/0 27.4,42.4
_Walk across_ the small wood plank and jump onto the far small building |goto Frostfire Ridge 27.65,42.80
click Slave's Stash##224392 |q 33500 |future |goto Frostfire Ridge 27.65,42.80
|tip The stash is on the corner of the awning.
]],
},
{
level=90,
treasure=[[Thunderlord Cache]],
spot="Frostfire Ridge 34.19,23.48",
item=107658,
quest=32803,
steps=[[
step
_Jump onto_ the rocks |goto Frostfire Ridge/0 35.4,24.3
_Jump to_ the higher ridge on the rocks |goto Frostfire Ridge/0 35.1,24.0
_Cross_ the rock "bridge" and proceed to the treasure |goto Frostfire Ridge 34.19,23.48
click Thunderlord Cache##220641 |q 32803 |future |goto Frostfire Ridge 34.19,23.48
]],
},
{
level=90,
treasure=[[Raided Loot]],
spot="Frostfire Ridge 37.26,59.14",
currency="GR",
quest=34967,
steps=[[
step
_Enter_ the tower |goto Frostfire Ridge/0 37.5,59.8 < 10
_Follow the ramp_ to the top of the tower | goto Frostfire Ridge 37.1,59.9 < 10
click Raided Loot##231103 |q 34967 |future |goto Frostfire Ridge 37.2,59.2
|tip It's up the ramp at the top of the tower.
]],
},
{
level=90,
treasure=[[Obsidian Petroglyph]],
spot="Frostfire Ridge 38.30,37.82",
item=112087,
quest=33502,
steps=[[
step
_Enter_ the canyon |goto Frostfire Ridge/0 39.1,41.2 < 10
_Follow_ the ramp up |goto Frostfire Ridge/0 39.1,38.2 < 10
click Obsidian Petroglyph##224616 |q 33502 |future |goto Frostfire Ridge 38.30,37.82
]],
},
{
level=90,
treasure=[[Cragmaul Cache]],
spot="Frostfire Ridge 39.66,17.18",
currency="AC",
item=120945,
quest=33532,
steps=[[
step
_Enter_ this building |goto Frostfire Ridge/0 40.0,18.1
_Go to_ the Cragmaul Cache underneath the ramp |goto Frostfire Ridge 39.66,17.18
click Cragmaul Cache##224713 |q 33532 |future |goto Frostfire Ridge 39.66,17.18
]],
},
{
level=90,
treasure=[[Envoy's Satchel]],
spot="Frostfire Ridge 40.90,20.10",
item=110536,
quest=34473,
steps=[[
step
click Envoy's Satchel##229328 |q 34473 |future |goto Frostfire Ridge 40.90,20.10
]],
},
{
level=90,
treasure=[[Burning Pearl]],
spot="Frostfire Ridge 42.16,19.30",
currency="GL",
item=120341,
quest=34520,
steps=[[
step
_Go to_ the lava |goto Frostfire Ridge/0 42.8,19.3
_Move quickly_ and jump over the lava to the treasure |goto Frostfire Ridge 42.16,19.30
click Burning Pearl##230252 |q 34520 |future |goto Frostfire Ridge 42.16,19.30
]],
},
{
level=90,
treasure=[[Crag-Leaper's Cache]],
spot="Frostfire Ridge 42.66,31.75",
item=112187,
quest=33940,
steps=[[
step
_Go to_ this spot |goto Frostfire Ridge/0 43.0,31.2
Use the spears stuck in the stone as steps to _climb up_ |goto Frostfire Ridge 42.66,31.75
click Crag-Leaper's Cache##226983 |q 33940 |future |goto Frostfire Ridge 42.66,31.75
]],
},
{
level=90,
treasure=[[Forgotten Supplies]],
spot="Frostfire Ridge 43.66,55.62",
currency="GR",
quest=34841,
steps=[[
step
_Go up_ the hill |goto Frostfire Ridge/0 44.2,58.7
_Go up_ the ramp into the _small tower_ |goto Frostfire Ridge 43.66,55.62
click Forgotten Supplies##230909 |q 34841 |future |goto Frostfire Ridge 43.66,55.62
|tip It looks like a rolled up blanket.
]],
},
{
currency="GR",
level=90,
treasure=[[Grizzled Frostwolf Veteran]],
spot="Frostfire Ridge 45.4,50.8",
access="Completionist",
item=106899,
quest=33011,
steps=[[
step
_Go up_ the hill |goto Frostfire Ridge/0 47.2,52.4
_Turn right_ at the top |goto Frostfire Ridge/0 46.2,51.9
_Turn left_ and go between the stones |goto Frostfire Ridge 45.36,50.34
talk Grizzled Frostwolf Veteran##74585
Tell him: "_Stand and fight! Victory or death!_"
Defend against the waves of enemies that attack
kill Thunderlord Crag-Leaper##72378+
|tip These will spawn in 3 waves of 3.
click Dusty Chest##224217 |q 33011 |future |goto Frostfire Ridge 45.4,50.8
|tip The chest is a medium sized wood crate in the back of the hut.
]],
},
{
level=90,
treasure=[[Clumsy Cragmaul Brute]],
spot="Frostfire Ridge 50.16,18.70",
item=112096,
quest=33531,
steps=[[
step
_Follow_ the narrow path to the Clumsy Brute corpse |goto Frostfire Ridge/0 50.8,20.0
clicknpc Clumsy Cragmaul Brute##75120 |q 33531 |future |goto Frostfire Ridge 50.16,18.70
]],
},
{
level=90,
treasure=[[Iron Horde Munitions]],
spot="Frostfire Ridge 56.72,71.86",
currency="GR",
quest=36863,
steps=[[
step
click Iron Horde Munitions##236693 |q 36863 |future |goto Frostfire Ridge 56.72,71.86
|tip It's a rectangular box on the ground between a siege cannon and ammunition.
]],
},
{
level=90,
treasure=[[Frozen Orc Skeleton]],
spot="Frostfire Ridge 57.17,52.16",
item=111554,
quest=34476,
steps=[[
step
kill Frozen Fury##78631+
|tip Kill the Frozen Fury mobs around the block of ice to reveal the skeleton.
click Frozen Orc Skeleton##229367 |q 34476 |future |goto Frostfire Ridge 57.17,52.16
]],
},
{
level=90,
treasure=[[Borrok the Devourer]],
spot="Frostfire Ridge 61.90,42.54",
currency="GR",
item=112110,
quest=33511,
steps=[[
step
kill Grimfrost Drudge##75010
|tip Kill the Drudges and click them to pick them up. Walk them in front of Borrok to feed him until he is satisfied and spits out the boulder.
click Devourer's Gutstone##224686 |q 33511 |future |goto Frostfire Ridge 61.90,42.54
]],
},
{
level=90,
treasure=[[Young Orc Woman]],
spot="Frostfire Ridge 63.40,14.70",
item=112206,
quest=33525,
steps=[[
step
_Please Note_: The Frostwolf First-Fang aquired from the Young Orc Woman is only half of the treasure. Be sure not to destroy it
_Follow_ the path up the hill |goto Frostfire Ridge/0 63.3,16.0
clicknpc Young Orc Woman##75081 |goto Frostfire Ridge 63.40,14.70
Select: "_Take the letter_" |only if itemcount(107271) < 1 and itemcount(107272) < 1
use Frozen Envelope##107271 |only if itemcount(107271) > 0
collect 1 Frostwolf First-Fang##107272 |only if not completedq(33525)
Assemble the treasure |q 33525 |future |goto Frostfire Ridge 63.40,14.70 |use Snow Hare's Foot##107273 |only if itemcount(107272) > 0 and itemcount(107273) > 0
]],
},
{
level=90,
treasure=[[Wiggling Egg]],
spot="Frostfire Ridge 64.40,65.86",
item=112107,
quest=33505,
steps=[[
step
_Go up_ the snowy hill, starting here |goto Frostfire Ridge/0 65.9,62.8
_Go to_ the peak between these two bones |goto Frostfire Ridge/0 65.0,65.7
_Jump down_ onto the snow-covered roof |goto Frostfire Ridge/0 64.5,65.6
click Wiggling Egg##224623 |q 33505 |future |goto Frostfire Ridge 64.40,65.86
|tip Jump down to the floor from the roof. It's inside of the building.
]],
},
{
level=90,
treasure=[[Survivalist's Cache]],
spot="Frostfire Ridge 64.72,25.73",
currency="GR",
quest=33946,
steps=[[
step
_Go up_ the hill next to the cave entrance |goto Frostfire Ridge/0 64.1,31.2
_Go to_ this spot |goto Frostfire Ridge/0 65.0,31.3
_Follow_ the narrow path higher up the mountain |goto Frostfire Ridge/0 64.3,28.7
_Continue around_ the rocks |goto Frostfire Ridge/0 64.4,26.5
_Drop down_ and collect the treasure |goto Frostfire Ridge 64.72,25.73
click Survivalist's Cache##226993 |q 33946 |future |goto Frostfire Ridge 64.72,25.73
|tip It's a small chest surrounded by loose rocks.
]],
},
{
level=90,
treasure=[[Goren Leftovers]],
spot="Frostfire Ridge 66.71,26.40",
item=111543,
quest=33948,
steps=[[
step
_Enter_ Magnarok |goto Frostfire Ridge/0 68.0,32.4
_Go to_ the canyon |goto Frostfire Ridge/0 69.7,23.1
_Start up_ the path |goto Frostfire Ridge/0 68.7,23.7
_Turn left_ when you go through the arch |goto Frostfire Ridge/0 65.8,23.2
_Continue up_ the path and enter the cave here |goto Frostfire Ridge/0 67.0,25.1
click Goren Leftovers##226996 |q 33948 |future |goto Frostfire Ridge 66.71,26.40
|tip It's in the back left section of the cave.
]],
},
{
level=90,
treasure=[[Grimfrost Treasure]],
spot="Frostfire Ridge 68.12,45.86",
currency="GR",
quest=33947,
steps=[[
step
_Enter_ the building |goto Frostfire Ridge/0 67.9,46.0
click Grimfrost Treasure##226994 |q 33947 |future |goto Frostfire Ridge 68.1,45.9
|tip It's at the top of the tower.
]],
},
{
level=90,
treasure=[[Iron Horde Supplies]],
spot="Frostfire Ridge 68.90,69.10",
currency="GR",
quest=33017,
steps=[[
step
click Iron Horde Supplies##224633 |q 33017 |future |goto Frostfire Ridge 68.90,69.10
|tip The supplies are in the back of the wagon.
]],
},
{
level=90,
treasure=[[Lady Sena's Other Materials Stash]],
spot="Frostwall/0 74.50,56.20",
currency="GR",
quest=34937,
steps=[[
step
click Lady Sena's Other Materials Stash##231064 |q 34937 |future |goto Frostwall/0 74.7,56.8
]],
},
{
level=92,
treasure=[[Aged Stone Container]],
spot="Gorgrond/19 60.5,43.1",
currency="GR",
quest=36723,
condition=[[only if garrisonability("TrainingPit")]],
steps=[[
step
_Enter_ the cave |goto Gorgrond/0 43.5,48.0 < 15
_Go down_ the spiraling ramp to the bottom |goto Gorgrond/19 61.4,77.1 < 15
_Continue clockwise_ around the outside |goto Gorgrond/19 45.9,48.1 < 15
|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
click Aged Stone Container##233455 |q 36723 |future |goto Gorgrond/19 60.5,43.1
]],
},
{
level=92,
treasure=[[Ancient Titan Chest]],
spot="Gorgrond/19 36.8,50.5",
currency="GR",
quest=36720,
condition=[[only if garrisonability("LumberMill")]],
steps=[[
step
_Enter_ the cave |goto Gorgrond/0 43.3,47.8
_Go down_ to the bottom |goto Gorgrond/18 41.1,64.2
_Go around_ and enter the left chamber |goto Gorgrond/19 48.0,37.9
|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
click Ancient Titan Chest##233139 |q 36720 |future |goto Gorgrond/19 37.1,51.5
]],
},
{
level=92,
treasure=[[Sasha's Secret Stash]],
spot="Gorgrond 39.03,68.05",
currency="GL",
item="RANDOM",
quest=36631,
steps=[[
step
_Enter_ the tower |goto Gorgrond/0 39.0,68.0
_Go to_ the top of the spiraling ramp |goto Gorgrond/0 39.0,68.9
Carefully drop off the edge and land on the wood sticking out of the tower |goto Gorgrond 39.03,68.05
click Sasha's Secret Stash##236149 |q 36631 |future |goto Gorgrond 39.03,68.05
|tip It's a bag hanging from the end of the wooden beam.
]],
},
{
level=92,
treasure=[[Forgotten Skull Cache]],
spot="Gorgrond 39.33,56.27",
currency="GR",
quest=36716,
condition=[[only if garrisonability("LumberMill")]],
steps=[[
step
|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
click Forgotten Skull Cache##233513 |q 36716 |future |goto Gorgrond 39.33,56.27
]],
},
{
level=92,
treasure=[[Femur of Improbability]],
spot="Gorgrond 40.04,72.23",
item=118715,
quest=36170,
steps=[[
step
_Enter_ Deadgrin |goto Gorgrond/0 38.8,73.5
_Go to_ the right |goto Gorgrond/0 39.9,72.2
click Femur of Improbability##233917 |q 36170 |future |goto Gorgrond 40.04,72.23
]],
},
{
level=92,
treasure=[[Explorer Canister]],
spot="Gorgrond 40.36,76.60",
currency="GR",
item=118710,
quest=36621,
steps=[[
step
_Cross_ The Fertile Ground |goto Gorgrond/0 42.2,75.7
click Explorer Canister##236139 |q 36621 |future |goto Gorgrond 40.36,76.60
|tip It's at the bottom of the pond in the middle of the rocks in the center.
]],
},
{
level=92,
treasure=[[Obsidian Crystal Formation]],
spot="Gorgrond 40.95,67.32",
currency="GR",
quest=35979,
condition=[[only if garrisonability("LumberMill")]],
steps=[[
step
_Enter_ the Stonemaul Arena |goto Gorgrond/0 41.9,65.3
_Go left_ at the fork |goto Gorgrond/0 40.3,66.4
|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
click Obsidian Crystal Formation##233522 |q 35979 |future |goto Gorgrond 40.95,67.32
]],
},
{
level=92,
treasure=[[Mysterious Petrified Pod]],
spot="Gorgrond 41.14,77.26",
currency="GR",
quest=35980,
condition=[[only if garrisonability("LumberMill")]],
steps=[[
step
_Follow_ the outside wall of Evermorn Springs |goto Gorgrond/0 42.6,76.7
|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
click Mysterious Petrified Pod##233501 |q 35980 |future |goto Gorgrond 41.14,77.26
|tip It is located around the tree next to the pond.
]],
},
{
level=92,
treasure=[[Ancient Ogre Cache]],
spot="Gorgrond 41.52,86.52",
currency="GR",
quest=36789,
condition=[[only if garrisonability("TrainingPit")]],
steps=[[
step
|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
click Ancient Ogre Cache##236284 |q 36789 |future |goto Gorgrond 41.52,86.52
|tip It's next to the big tree.
]],
},
{
level=92,
treasure=[[Brokor's Sack]],
spot="Gorgrond 41.73,52.97",
currency="GL",
item=118702,
quest=36506,
steps=[[
step
_Go through_ the two stone pillars and turn right |goto Gorgrond/0 41.7,53.5
click Brokor's Sack##235859 |q 36506 |future |goto Gorgrond/0 41.73,52.97
|tip It's a small sack by the stones.
]],
},
{
level=92,
treasure=[[Aged Stone Container]],
spot="Gorgrond 41.76,45.27",
currency="GR",
quest=36726,
condition=[[only if garrisonability("TrainingPit")]],
steps=[[
step
_Go up_ the road |goto Gorgrond/0 41.6,46.9
|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
click Aged Stone Container##233455 |q 36726 |future |goto Gorgrond 41.76,45.27
|tip Up the small hill in front of the pile of stones.
]],
},
{
level=92,
treasure=[[Evermorn Supply Cache]],
spot="Gorgrond 41.82,78.02",
currency="GL",
item="RANDOM",
quest=36658,
steps=[[
step
_Enter_ Evermorn Springs |goto Gorgrond/0 44.1,79.6
_Follow_ the path around to the right |goto Gorgrond/0 42.3,78.8
_Enter_ the hut and jump through the small opening on the right |goto Gorgrond/0 41.7,78.5 < 8
click Evermorn Supply Cache##236178 |q 36658 |future |goto Gorgrond 41.82,78.02
]],
},
{
level=92,
treasure=[[Obsidian Crystal Formation]],
spot="Gorgrond 41.85,58.89",
currency="GR",
quest=36728,
condition=[[only if garrisonability("TrainingPit")]],
steps=[[
step
|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
click Obsidian Crystal Formation##233522 |q 36728 |future |goto Gorgrond 41.85,58.89
|tip It's in the pile of stones.
]],
},
{
level=92,
treasure=[[Botani Essence Seed]],
spot="Gorgrond 41.98,81.55",
currency="GR",
quest=35982,
condition=[[only if garrisonability("LumberMill")]],
steps=[[
step
_Enter_ the Evermoon Springs |goto Gorgrond/0 44.1,79.5
|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
click Botani Essence Seed##233525 |q 35982 |future |goto Gorgrond 41.98,81.55
]],
},
{
level=92,
treasure=[[Obsidian Crystal Formation]],
spot="Gorgrond 42.05,64.29",
currency="GR",
quest=36729,
condition=[[only if garrisonability("TrainingPit")]],
steps=[[
step
|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
click Obsidian Crystal Formation##233522 |q 36729 |future |goto Gorgrond 42.05,64.29
]],
},
{
level=92,
treasure=[[Ancient Ogre Cache]],
spot="Gorgrond 42.17,93.08",
currency="GR",
quest=36787,
condition=[[only if garrisonability("TrainingPit")]],
steps=[[
step
_Go up_ the trail |goto Gorgrond/0 42.5,91.0
|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
click Ancient Ogre Cache##236284 |q 36787 |future |goto Gorgrond 42.17,93.08
]],
},
{
level=92,
treasure=[[Ancient Titan Chest]],
spot="Gorgrond 42.19,52.03",
currency="GR",
quest=36727,
condition=[[only if garrisonability("TrainingPit")]],
steps=[[
step
_Follow_ the road |goto Gorgrond/0 42.6,53.6
|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
click Ancient Titan Chest##233139 |q 36727 |future |goto Gorgrond 42.19,52.03
|tip In the pile of rubble.
]],
},
{
level=92,
treasure=[[Aged Stone Container]],
spot="Gorgrond 42.34,54.77",
currency="GR",
quest=36003,
condition=[[only if garrisonability("LumberMill")]],
steps=[[
step
|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
click Aged Stone Container##233455 |q 36003 |future |goto Gorgrond 42.34,54.77
]],
},
{
level=92,
treasure=[[Discarded Pack]],
spot="Gorgrond 42.36,83.41",
currency="GL",
item="RANDOM",
quest=36625,
steps=[[
step
_Enter_ Evermorn Springs |goto Gorgrond/0 44.1,79.6
_Go right_, following the path |goto Gorgrond/0 42.6,81.7
_Go up_ the hill to the left of the hut |goto Gorgrond/0 42.5,83.4
click Discarded Pack##236141 |q 36625 |future |goto Gorgrond/0 42.36,83.41
|tip It's behind the roots just underneath the hut.
]],
},
{
level=92,
treasure=[[Horned Skull]],
spot="Gorgrond 42.58,46.85",
currency="GR",
quest=35056,
steps=[[
step
_Enter_ the cave |goto Gorgrond/0 43.4,47.9
_Follow_ the spiraling path and jump down at this spot |goto Gorgrond/19 62.3,62.9
click Horned Skull##231644 |q 35056 |future |goto Gorgrond/19 47.4,67.6
]],
},
{
level=92,
treasure=[[Unknown Petrified Egg]],
spot="Gorgrond 42.91,43.50",
currency="GR",
quest=36001,
condition=[[only if garrisonability("LumberMill")]],
steps=[[
step
_Ascend_ the hill |goto Gorgrond/0 43.9,43.9
|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
click Unknown Petrified Egg##233505 |q 36001 |future |goto Gorgrond 42.91,43.50
]],
},
{
level=92,
treasure=[[Ockbar's Pack]],
spot="Gorgrond 43.10,92.90",
item=118227,
quest=34241,
steps=[[
step
click Ockbar's Pack##227998 |q 34241 |future |goto Gorgrond/0 43.1,92.9
|tip It's a small bag behind Ockbar's right hoof.
]],
},
{
level=92,
treasure=[[Ancient Titan Chest]],
spot="Gorgrond 43.36,51.69",
currency="GR",
quest=36731,
condition=[[only if garrisonability("TrainingPit")]],
steps=[[
step
|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
click Ancient Titan Chest##233139 |q 36731 |future |goto Gorgrond 43.36,51.69
|tip Next to the stacked stone pillar.
]],
},
{
level=92,
treasure=[[Iron Supply Chest]],
spot="Gorgrond 43.69,42.48",
currency="GL",
quest=36618,
steps=[[
step
_Enter_ the cave |goto Gorgrond/0 42.8,44.4
click Iron Supply Chest##236138 |q 36618 |future |goto Gorgrond/0 43.69,42.48
|tip It's by the crates in the southeastern part of the cave.
]],
},
{
level=92,
treasure=[[Pile of Rubble]],
spot="Gorgrond 43.95,70.55",
currency="GL",
item="RANDOM",
quest=36118,
steps=[[
step
_Get up_ on the small hill |goto Gorgrond/0 44.0,71.1
click Pile of Rubble##233792 |q 36118 |future |goto Gorgrond 43.95,70.55
|tip It's located between the stones and the ogre statue head.
]],
},
{
level=92,
treasure=[[Obsidian Crystal Formation]],
spot="Gorgrond 44.18,46.65",
currency="GR",
quest=36732,
condition=[[only if garrisonability("TrainingPit")]],
steps=[[
step
|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
click Obsidian Crystal Formation##233522 |q 36732 |future |goto Gorgrond 44.18,46.65
]],
},
{
level=92,
treasure=[[Laughing Skull Cache]],
spot="Gorgrond 44.20,74.27",
currency="GR",
quest=35709,
steps=[[
step
_Climb up_ on the tree trunk |goto Gorgrond/0 44.3,73.6 < 8
click Laughing Skull Cache##233149 |q 35709 |future |goto Gorgrond 44.20,74.27
]],
},
{
level=92,
treasure=[[Sniper's Crossbow]],
spot="Gorgrond 44.95,42.62",
item=118713,
quest=36634,
steps=[[
step
_Climb up_ the hill here |goto Gorgrond/0 44.6,42.3 < 10
click Sniper's Crossbow##236158 |q 36634 |future |goto Gorgrond 44.95,42.62
|tip It's a purple crossbow propped up against a telescope.
]],
},
{
level=92,
treasure=[[Ancient Ogre Cache]],
spot="Gorgrond 45.07,69.93",
currency="GR",
quest=36737,
condition=[[only if garrisonability("TrainingPit")]],
steps=[[
step
_Walk across_ the stone |goto Gorgrond/0 44.7,70.3
|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
click Ancient Ogre Cache##236284 |q 36737 |future |goto Gorgrond 45.07,69.93
]],
},
{
level=92,
treasure=[[Unknown Petrified Egg]],
spot="Gorgrond 45.31,81.95",
currency="GR",
quest=35981,
condition=[[only if garrisonability("LumberMill")]],
steps=[[
step
|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
click Unknown Petrified Egg##233505 |q 35981 |future |goto Gorgrond 45.31,81.95
|tip Between the two tree roots.
]],
},
{
level=92,
treasure=[[Ancient Ogre Cache]],
spot="Gorgrond 45.54,42.98",
currency="GR",
quest=36733,
condition=[[only if garrisonability("TrainingPit")]],
steps=[[
step
_Go up_ the hill |goto Gorgrond/0 45.4,44.2 < 20
|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
click Ancient Ogre Cache##236284 |q 36733 |future |goto Gorgrond 45.54,42.98
]],
},
{
level=92,
treasure=[[Aged Stone Container]],
spot="Gorgrond 45.63,49.31",
currency="GR",
quest=36722,
condition=[[only if garrisonability("TrainingPit")]],
steps=[[
step
|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
click Aged Stone Container##233455 |q 36722 |future |goto Gorgrond 45.63,49.31
|tip It's the behind the pillar of stacked stones.
]],
},
{
level=92,
treasure=[[Suntouched Spear]],
spot="Gorgrond 45.69,49.72",
item=118708,
quest=36610,
steps=[[
step
click Suntouched Spear##236099 |q 36610 |future |goto Gorgrond 45.69,49.72
|tip It's sticking out of the narrow ridge.
]],
},
{
level=92,
treasure=[[Aged Stone Container]],
spot="Gorgrond 45.74,88.21",
currency="GR",
quest=36784,
condition=[[only if garrisonability("TrainingPit")]],
steps=[[
step
_Go up_ here |goto Gorgrond/0 46.3,88.3
|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
click Aged Stone Container##233455 |q 36784 |future |goto Gorgrond 45.74,88.21
]],
},
{
level=92,
treasure=[[Forgotten Skull Cache]],
spot="Gorgrond 45.80,89.31",
currency="GR",
quest=36019,
condition=[[only if garrisonability("LumberMill")]],
steps=[[
step
|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
click Forgotten Skull Cache##233513 |q 36019 |future |goto Gorgrond 45.80,89.31
|tip Against the wall behind the tree.
]],
},
{
level=92,
treasure=[[Remains of Explorer Engineer Toldirk Ashlamp]],
spot="Gorgrond 45.96,93.57",
currency="GR",
quest=35975,
condition=[[only if garrisonability("LumberMill")]],
steps=[[
step
|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
click Remains of Explorer Engineer Toldirk Ashlamp##233520 |q 35975 |future |goto Gorgrond 45.96,93.57
]],
},
{
level=92,
treasure=[[Aged Stone Container]],
spot="Gorgrond 46.05,63.05",
currency="GR",
quest=36736,
condition=[[only if garrisonability("TrainingPit")]],
steps=[[
step
|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
click Aged Stone Container##233455 |q 36736 |future |goto Gorgrond 46.05,63.05
|tip Next to the mountain.
]],
},
{
level=92,
treasure=[[Harvestable Precious Crystal]],
spot="Gorgrond 46.10,49.99",
currency="GR",
quest=36651,
steps=[[
step
_Enter_ the cave |goto Gorgrond/0 44.7,50.7
click Harvestable Precious Crystal##236169 |q 36651 |future |goto Gorgrond/0 46.1,50.0
|tip It's a big purple-white crystal on the left side of the cave.
]],
},
{
level=92,
treasure=[[Petrified Rylak Egg]],
spot="Gorgrond 46.24,42.95",
currency="GL",
item=118707,
quest=36521,
steps=[[
step
_Jump up_ on this plateau |goto Gorgrond/0 48.2,40.7
_Cross_ the plateau |goto Gorgrond/0 46.6,42.1
click Petrified Rylak Egg##235881 |q 36521 |future |goto Gorgrond 46.24,42.95
|tip It's sitting on the ground between the two smallest nests.
]],
},
{
level=92,
treasure=[[Forgotten Skull Cache]],
spot="Gorgrond 47.01,69.05",
currency="GR",
quest=35971,
condition=[[only if garrisonability("LumberMill")]],
steps=[[
step
|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
click Forgotten Skull Cache##233513 |q 35971 |future |goto Gorgrond 47.01,69.05
|tip It's located behind the tree at the top of the hill.
]],
},
{
level=92,
treasure=[[Unknown Petrified Egg]],
spot="Gorgrond 47.24,51.80",
currency="GR",
quest=36718,
condition=[[only if garrisonability("LumberMill")]],
steps=[[
step
|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
click Unknown Petrified Egg##233505 |q 36718 |future |goto Gorgrond 47.24,51.80
|tip It's behind a small outcropping of stones near the edge of the plateau.
]],
},
{
level=92,
treasure=[[Aged Stone Container]],
spot="Gorgrond 47.51,43.63",
currency="GR",
quest=36717,
condition=[[only if garrisonability("LumberMill")]],
steps=[[
step
|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
click Aged Stone Container##233455 |q 36717 |future |goto Gorgrond 47.51,43.63
]],
},
{
level=92,
treasure=[[Mysterious Petrified Pod]],
spot="Gorgrond 47.64,76.79",
currency="GR",
quest=36714,
condition=[[only if garrisonability("LumberMill")]],
steps=[[
step
|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
click Mysterious Petrified Pod##233501 |q 36714 |future |goto Gorgrond 47.64,76.79
]],
},
{
level=92,
treasure=[[Ancient Titan Chest]],
spot="Gorgrond 47.92,39.98",
currency="GR",
quest=36735,
condition=[[only if garrisonability("TrainingPit")]],
steps=[[
step
|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
click Ancient Titan Chest##233139 |q 36735 |future |goto Gorgrond 47.92,39.98
|tip Next to the big boulder.
]],
},
{
level=92,
treasure=[[Obsidian Crystal Formation]],
spot="Gorgrond 48.11,46.38",
currency="GR",
quest=36721,
condition=[[only if garrisonability("TrainingPit")]],
steps=[[
step
_Follow_ the top ridge |goto Gorgrond/0 48.8,48.1
|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
click Obsidian Crystal Formation##233522 |q 36721 |future |goto Gorgrond 48.11,46.38
]],
},
{
level=92,
treasure=[[Aged Stone Container]],
spot="Gorgrond 48.11,55.16",
currency="GR",
quest=36730,
condition=[[only if garrisonability("TrainingPit")]],
steps=[[
step
|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
click Aged Stone Container##233455 |q 36730 |future |goto Gorgrond 48.11,55.16
|tip Behind the pile of stones next to the stone pillar.
]],
},
{
currency="GL",
level=92,
treasure=[[Stashed Emergency Rucksack]],
spot="Gorgrond 48.12,93.37",
access="Completionist",
item="RANDOM",
quest=36604,
steps=[[
step
_Enter_ the digsite |goto Gorgrond/0 47.7,93.4 < 15
_Go left_ and jump onto this stone |goto Gorgrond/0 48.0,93.3 < 5
_Jump onto_ this stone |goto Gorgrond/0 48.0,93.4 < 5
_Jump over_ to the platform |goto Gorgrond/0 48.1,93.4 < 5
click Stashed Emergency Rucksack##236092 |q 36604 |future |goto Gorgrond 48.12,93.37
|tip It's hanging on the cable to the crane.
]],
},
{
level=92,
treasure=[[Warm Goren Egg]],
spot="Gorgrond 48.94,47.31",
currency="GL",
item=118705,
quest=36203,
steps=[[
step
_Enter_ the cave |goto Gorgrond/0 48.6,47.2 < 15
click Warm Goren Egg##234054 |q 36203 |future |goto Gorgrond 48.94,47.31
|tip It's a glowing red egg sitting against the wall on the back side of the cave.
]],
},
{
level=92,
treasure=[[Ancient Titan Chest]],
spot="Gorgrond 49.12,82.48",
currency="GR",
quest=36783,
condition=[[only if garrisonability("TrainingPit")]],
steps=[[
step
|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
click Ancient Titan Chest##233139 |q 36783 |future |goto Gorgrond 49.12,82.48
]],
},
{
level=92,
treasure=[[Weapons Cache]],
spot="Gorgrond 49.28,43.63",
currency="GL",
item=107645,
quest=36596,
steps=[[
step
click Weapons Cache##235869 |q 36596 |future |goto Gorgrond 49.28,43.63
|tip It's located to the left of the War Machine on the platform.
]],
},
{
level=92,
treasure=[[Ancient Titan Chest]],
spot="Gorgrond 49.42,50.84",
currency="GR",
quest=36710,
condition=[[only if garrisonability("TrainingPit")]],
steps=[[
step
_Go up_ the trail |goto Gorgrond/0 50.3,49.8 < 10
|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
click Ancient Titan Chest##233139 |q 36710 |future |goto Gorgrond 49.42,50.84
]],
},
{
level=92,
treasure=[[Forgotten Ogre Cache]],
spot="Gorgrond 49.65,78.83",
currency="GR",
quest=35968,
condition=[[only if garrisonability("LumberMill")]],
steps=[[
step
_Enter_ the ruins |goto Gorgrond/0 49.6,80.5
_Cross_ the pond |goto Gorgrond/0 50.1,79.2
|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
click Forgotten Ogre Cache##233507 |q 35968 |future |goto Gorgrond 49.65,78.83
]],
},
{
level=92,
treasure=[[Ancient Titan Chest]],
spot="Gorgrond 50.15,53.76",
currency="GR",
quest=35984,
condition=[[only if garrisonability("LumberMill")]],
steps=[[
step
_Enter_ the cave |goto Gorgrond/0 49.5,53.4
|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
click Ancient Titan Chest##233139 |q 35984 |future |goto Gorgrond 50.15,53.76
]],
},
{
level=92,
treasure=[[Ancient Titan Chest]],
spot="Gorgrond 50.32,66.58",
currency="GR",
quest=36738,
condition=[[only if garrisonability("TrainingPit")]],
steps=[[
step
|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
click Ancient Titan Chest##233139 |q 36738 |future |goto Gorgrond 50.32,66.58
]],
},
{
level=92,
treasure=[[Aged Stone Container]],
spot="Gorgrond 51.33,40.55",
currency="GR",
quest=36734,
condition=[[only if garrisonability("TrainingPit")]],
steps=[[
step
_Go up_ the hill |goto Gorgrond/0 50.9,41.1 < 20
|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
click Aged Stone Container##233455 |q 36734 |future |goto Gorgrond 51.33,40.55
|tip It's in the crevice between the two peaks.
]],
},
{
level=92,
treasure=[[Unknown Petrified Egg]],
spot="Gorgrond 51.64,72.26",
currency="GR",
quest=35967,
condition=[[only if garrisonability("LumberMill")]],
steps=[[
step
_Enter_ Overlook Ruins |goto Gorgrond/0 50.4,73.0
|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
click Unknown Petrified Egg##233505 |q 35967 |future |goto Gorgrond 51.64,72.26
|tip It's just behind the root by the small hill.
]],
},
{
level=92,
treasure=[[Mysterious Petrified Pod]],
spot="Gorgrond 51.75,69.09",
currency="GR",
quest=36715,
condition=[[only if garrisonability("LumberMill")]],
steps=[[
step
|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
click Mysterious Petrified Pod##233501 |q 36715 |future |goto Gorgrond 51.75,69.09
|tip Next to the rubble and sapling tree.
]],
},
{
level=92,
treasure=[[Remains of Grimnir Ashpick]],
spot="Gorgrond 51.80,61.48",
currency="GR",
quest=35966,
condition=[[only if garrisonability("LumberMill")]],
steps=[[
step
|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
click Remains of Grimnir Ashpick##233504 |q 35966 |future |goto Gorgrond 51.80,61.48
|tip At the edge of the pond.
]],
},
{
level=92,
treasure=[[Odd Skull]],
spot="Gorgrond 52.51,66.96",
currency="GL",
item=118717,
quest=36509,
steps=[[
step
click Odd Skull##236715 |q 36509 |future |goto Gorgrond/0 52.5,67.0
|tip It's on the rock just behind the pile of bones.
]],
},
{
level=92,
treasure=[[Strange Looking Dagger]],
spot="Gorgrond 52.97,79.95",
currency="GL",
item=118718,
quest=34940,
steps=[[
step
_Enter_ the cave |goto Gorgrond/0 51.3,77.6 < 15
_Go right_ at the intersection |goto Gorgrond/0 51.7,79.4 < 15
_Continue right_ along the wall |goto Gorgrond/0 52.4,80.4 < 15
_Follow_ right to the room with steam vents |goto Gorgrond/0 52.9,80.6 < 15
click Strange Looking Dagger##231069 |q 34940 |future |goto Gorgrond/0 52.97,79.95
]],
},
{
level=92,
treasure=[[Unknown Petrified Egg]],
spot="Gorgrond 53.00,79.06",
currency="GR",
quest=36713,
condition=[[only if garrisonability("LumberMill")]],
steps=[[
step
_Enter_ the cave |goto Gorgrond/0 51.4,77.6 < 10
_Go left_ down the side passage |goto Gorgrond/0 52.0,78.6 < 10
_Continue down_ the passage |goto Gorgrond/0 52.8,78.5 < 10
|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
click Unknown Petrified Egg##233505 |q 36713 |future |goto Gorgrond/0 53.00,79.06
|tip It's between the two pillars on the right, next to the water.
]],
},
{
level=92,
treasure=[[Remains of Balik Orecrusher]],
spot="Gorgrond 53.12,74.49",
item=118714,
quest=36654,
steps=[[
step
_Enter_ the cave |goto Gorgrond/0 51.5,74.4
click Remains of Balik Orecrusher##236170 |q 36654 |future |goto Gorgrond 53.12,74.49
|tip The remains are behind the left steaming geyser vent.
]],
},
{
level=92,
treasure=[[Ancient Titan Chest]],
spot="Gorgrond 53.35,46.79",
currency="GR",
quest=35701,
condition=[[only if garrisonability("LumberMill")]],
steps=[[
step
|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
click Ancient Titan Chest##233139 |q 35701 |future |goto Gorgrond 53.35,46.79
]],
},
{
level=92,
treasure=[[Ancient Ogre Cache]],
spot="Gorgrond 54.25,73.13",
currency="GR",
quest=36782,
condition=[[only if garrisonability("TrainingPit")]],
steps=[[
step
_Go up_ the hill |goto Gorgrond/0 54.4,71.2
|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
click Ancient Ogre Cache##236284 |q 36782 |future |goto Gorgrond 54.25,73.13
]],
},
{
level=92,
treasure=[[Mysterious Petrified Pod]],
spot="Gorgrond 56.74,57.27",
currency="GR",
quest=35965,
condition=[[only if garrisonability("LumberMill")]],
steps=[[
step
|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
click Mysterious Petrified Pod##233501 |q 35965 |future |goto Gorgrond 56.74,57.27
]],
},
{
level=92,
treasure=[[Strange Spore]],
spot="Gorgrond 57.08,65.30",
item=118106,
quest=37249,
steps=[[
step
_Go up_ this hill towards the mushroom caps |goto Gorgrond/0 57.6,64.7 < 10
_Climb up_ onto this mushroom |goto Gorgrond/0 57.3,65.4 < 5
_Jump over_ to the mushroom with the strange spore |goto Gorgrond 57.08,65.30 < 5
click Strange Spore##232621 |q 37249 |future |goto Gorgrond 57.08,65.30
|tip It is a purple and orange sack growing on top of the mushrooom.
]],
},
{
level=92,
treasure=[[Remains of Balldir Deeprock]],
spot="Gorgrond 57.84,55.97",
item=118703,
quest=36605,
steps=[[
step
click Remains of Balldir Deeprock##236096 |q 36605 |future |goto Gorgrond 57.84,55.97
|tip They're in the middle of the pond at the bottom.
]],
},
{
level=92,
treasure=[[Aged Stone Container]],
spot="Gorgrond 58.12,51.46",
currency="GR",
quest=36739,
condition=[[only if garrisonability("TrainingPit")]],
steps=[[
step
_Go up_ the hill and hug the wall |goto Gorgrond/0 57.8,52.3
|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
click Aged Stone Container##233455 |q 36739 |future |goto Gorgrond 58.12,51.46
]],
},
{
level=92,
treasure=[[Vindicator's Hammer]],
spot="Gorgrond 59.4,63.7",
access="Completionist",
item=118712,
quest=36628,
steps=[[
step
Use your Mechashredder ability to reach the top of the mushroom |cast Summon Mechashredder 5000##164050 |only if garrisonability("LumberMill")
Use your rocket boost ability to reach the top of the mushroom |cast Rocket Boost##165445 |only if garrisonability("LumberMill")
Use Aviana's Feather to reach the top of the mushroom |use Aviana's Feather##119093 |only if itemcount(119093) > 0
click Vindicator's Hammer##236147 |q 36628 |future |goto Gorgrond 59.4,63.7
|tip You cannot reach this treasure without a temporary flying ability such as Aviana's Feather or the Shredder from the War Mill outpost garrison ability |only if itemcount(119093) < 1 and not garrisonability("LumberMill")
]],
},
{
level=92,
treasure=[[Aged Stone Container]],
spot="Gorgrond 59.56,72.75",
currency="GR",
quest=36781,
condition=[[only if garrisonability("TrainingPit")]],
steps=[[
step
_Enter_ Tangleheart |goto Gorgrond/0 56.6,72.0
_Go right_ |goto Gorgrond/0 59.4,71.8
|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
click Aged Stone Container##233455 |q 36781 |future |goto Gorgrond 59.56,72.75
|tip It's behind the tree root.
]],
},
{
level=92,
treasure=[[Mysterious Petrified Pod]],
spot="Gorgrond 60.50,72.76",
currency="GR",
quest=36015,
condition=[[only if garrisonability("LumberMill")]],
steps=[[
step
_Enter_ Tangleheart |goto Gorgrond/0 56.3,71.8
|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
click Mysterious Petrified Pod##233501 |q 36015 |future |goto Gorgrond 60.50,72.76
|tip Against the bramble wall.
]],
},
{
level=92,
treasure=[[Ancient Ogre Cache]],
spot="Gorgrond 61.55,58.55",
currency="GR",
quest=36740,
condition=[[only if garrisonability("TrainingPit")]],
steps=[[
step
_Follow_ the uppper ridge |goto Gorgrond/0 61.2,56.5
|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
click Ancient Ogre Cache##236284 |q 36740 |future |goto Gorgrond 61.55,58.55
]],
},
{
level=92,
treasure=[[Mysterious Petrified Pod]],
spot="Gorgrond 63.28,57.19",
currency="GR",
quest=36430,
condition=[[only if garrisonability("LumberMill")]],
steps=[[
step
|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
click Mysterious Petrified Pod##233501 |q 36430 |future |goto Gorgrond 63.28,57.19
|tip Southeast of the pond against the rock wall.
]],
},
{
level=98,
treasure=[[Adventurer's Pouch]],
spot="Nagrand D/12 66.0,57.5",
currency="GL",
item="RANDOM",
quest=36088,
steps=[[
step
_Enter_ the Underpale cave |goto Nagrand D/12 93.5,34.2 < 10
_Go to_ the bottom of the tunnel |goto Nagrand D/12 72.3,46.1 < 10
_Go up_ the ramp |goto Nagrand D/12 62.0,39.8 < 10
click Adventurer's Pouch##233623 |q 36088 |future |goto Nagrand D/12 66.0,57.5
|tip It's the small pouch on the belt of the impaled adventurer.
]],
},
{
level=98,
treasure=[[Spirit's Gift]],
spot="Nagrand D 35.47,57.25",
currency="GR",
quest=36846,
steps=[[
step
_Go up_ the path beneath the skull |goto Nagrand D/0 36.7,55.7 < 10
click Forgotten Brazier##236604
click Spirit's Gift##236610 |q 36846 |future |goto Nagrand D 35.47,57.25
|tip After lighting the Baziers, the treasure will appear.
]],
},
{
level=98,
treasure=[[Treasure of Kull'krosh]],
spot="Nagrand D 37.71,70.65",
currency="GR, GL",
quest=34760,
steps=[[
step
_Go up_ the ramp |goto Nagrand D/0 38.8,72.1 < 20
_Enter_ the building |goto Nagrand D/0 37.8,70.8 < 10
_Go towards_ the steps |goto Nagrand D/0 37.7,69.8 < 8
_Go down_ the steps |goto Nagrand D/0 37.2,70.0 < 8
_Enter_ the vault |goto Nagrand D/0 37.6,70.1 < 10
click Treasure of Kull'krosh##230725 |q 34760 |future |goto Nagrand D 37.71,70.65
]],
},
{
level=98,
treasure=[[Goldtoe's Plunder]],
spot="Nagrand D 38.34,58.72",
currency="GL",
quest=36109,
steps=[[
step
_Climb over_ the rocks and wait here for the parrot |goto Nagrand D/0 38.5,58.8 < 10
clicknpc Rusty Keys##84068
click Goldtoe's Plunder##233715 |q 36109 |future |goto Nagrand D 38.34,58.72
|tip Click the keys in the green and yellow parrot's mouth.
]],
},
{
level=98,
treasure=[[Spirit Coffer]],
spot="Nagrand D 40.34,68.64",
currency="GR",
quest=37435,
steps=[[
step
_Enter_ the cave |goto Nagrand D/0 41.8,68.2 < 10
click Spirit Coffer##237946 |q 37435 |future |goto Nagrand D 40.34,68.64
]],
},
{
level=98,
treasure=[[Genedar Debris 1]],
spot="Nagrand D 43.22,57.55",
currency="GR",
quest=35987,
steps=[[
step
click Genedar Debris##233539 |q 35987 |future |goto Nagrand D 43.22,57.55
|tip It's a purple object in the middle of the trees.
]],
},
{
level=98,
treasure=[[Genedar Debris 4]],
spot="Nagrand D 44.69,67.57",
currency="GR",
quest=36002,
steps=[[
step
click Genedar Debris##233539 |q 36002 |future |goto Nagrand D 44.69,67.57
|tip It's pink-purple and hidden just under the tree foliage.
]],
},
{
level=98,
treasure=[[Adventurer's Pack 2]],
spot="Nagrand D 45.63,52.00",
currency="GL",
item="1 RANDOM",
quest=35969,
steps=[[
step
click Adventurer's Pack##233218 |q 35969 |future |goto Nagrand D 45.63,52.00
|tip It's in the remains of the bloody corpse at the base of the tree.
]],
},
{
level=98,
treasure=[[Fragment of Oshu'gun]],
spot="Nagrand D 45.86,66.29",
item=117981,
quest=36020,
steps=[[
step
click Fragment of Oshu'gun##233560 |q 36020 |future |goto Nagrand D 45.86,66.29
|tip It's a small white crystal next to the large Oshu'gun crystal.
]],
},
{
level=98,
treasure=[[Goblin Pack 2]],
spot="Nagrand D 47.20,74.25",
access="Completionist",
currency="GR",
quest=35576,
steps=[[
step
_Click_ the goblin rocket |goto Nagrand D/0 58.5,76.3 < 5
_Click_ the Steamwheedle Exploration Glider |goto Nagrand D/0 53.4,73.3 < 5
click Goblin Pack##232571 |q 35576 |future |goto Nagrand D 47.20,74.25
|tip You will need to pay close attention and land on the horizontal section of the tree trunk.
]],
},
{
level=98,
treasure=[[Genedar Debris 2]],
spot="Nagrand D 48.06,60.11",
currency="GR",
quest=35999,
steps=[[
step
click Genedar Debris##233539 |q 35999 |future |goto Nagrand D 48.06,60.11
|tip It's on the side of the hill. Look for the little blue gem.
]],
},
{
level=98,
treasure=[[Genedar Debris 3]],
spot="Nagrand D 48.58,72.79",
currency="GR",
quest=36008,
steps=[[
step
click Genedar Debris##233539 |q 36008 |future |goto Nagrand D 48.58,72.79
|tip It's wedged between the tree and rock.
]],
},
{
level=98,
treasure=[[Void-Infused Crystal]],
spot="Nagrand D 49.97,66.51",
access="Completionist",
item=118264,
quest=35579,
steps=[[
step
_Click_ the goblin rocket |goto Nagrand D/0 58.5,76.3 < 5
_Click_ the Steamwheedle Exploration Glider |goto Nagrand D/0 53.4,73.3 < 5
click Void-Infused Crystal##232590 |q 35579 |future |goto Nagrand D 49.97,66.51
]],
},
{
level=98,
treasure=[[Steamwheedle Supplies 1]],
spot="Nagrand D 50.12,82.28",
access="Completionist",
currency="GR",
quest=35577,
steps=[[
step
_Click_ the goblin rocket |goto Nagrand D/0 58.5,76.3 < 5
_Click_ the Steamwheedle Exploration Glider |goto Nagrand D/0 53.4,73.3 < 5
click Steamwheedle Supplies##232584 |q 35577 |future |goto Nagrand D 50.12,82.28
]],
},
{
level=98,
treasure=[[Warsong Cache]],
spot="Nagrand D 51.72,60.29",
currency="GR",
quest=35695,
steps=[[
step
click Warsong Cache##233135 |q 35695 |future |goto Nagrand D 51.72,60.29
|tip Inside the hut on the right.
]],
},
{
level=98,
treasure=[[Warsong Helm]],
spot="Nagrand D 52.41,44.38",
item=118250,
quest=36073,
steps=[[
step
click Warsong Helm##233645 |q 36073 |future |goto Nagrand D 52.41,44.38
|tip On the left side of the waterfall against the rocks.
]],
},
{
level=98,
treasure=[[Steamwheedle Supplies 2]],
spot="Nagrand D 52.67,80.08",
access="Completionist",
currency="GR",
quest=35583,
steps=[[
step
_Click_ the goblin rocket |goto Nagrand D/0 58.5,76.3 < 5
_Click_ the Steamwheedle Exploration Glider |goto Nagrand D/0 53.4,73.3 < 5
click Steamwheedle Supplies##232584 |q 35583 |future |goto Nagrand D 52.67,80.08
]],
},
{
level=98,
treasure=[[Genedar Debris 5]],
spot="Nagrand D 55.35,68.28",
currency="GR",
quest=36011,
steps=[[
step
click Genedar Debris##233539 |q 36011 |future |goto Nagrand D 55.35,68.28
|tip It's a purple object in the middle of the small grove of trees.
]],
},
{
level=98,
treasure=[[Adventurer's Pouch]],
spot="Nagrand D 56.56,72.94",
currency="GL",
item="1 RANDOM",
quest=36050,
steps=[[
step
_Cross_ the field |goto Nagrand D/0 59.1,74.6
_Drop down_ |goto Nagrand D/0 57.0,73.3 < 8
click Adventurer's Pouch##233623 |q 36050 |future |goto Nagrand D 56.56,72.94
|tip It's waist-level with the bloody corpse.
]],
},
{
level=98,
treasure=[[Pale Elixir]],
spot="Nagrand D 57.79,62.05",
item=118278,
quest=36115,
steps=[[
step
_Jump across_ the gap |goto Nagrand D/0 58.9,60.0 < 15
_Jump across_ the second gap |goto Nagrand D/0 58.3,60.9 < 15
_Jump down_ to the lower platform |goto Nagrand D/0 57.7,62.1 < 15
click Pale Elixir##233768 |q 36115 |future |goto Nagrand D 57.79,62.05
|tip It's on a small rock cradled in the tree trunk.
]],
},
{
level=98,
treasure=[[Golden Kaliri Egg]],
spot="Nagrand D 58.28,52.49",
item=118266,
quest=35694,
steps=[[
step
_Jump from_ the rock onto the tree |goto Nagrand D/0 57.7,52.8 < 8
click Golden Kaliri Egg##233134 |q 35694 |future |goto Nagrand D 58.28,52.49
]],
},
{
level=98,
treasure=[[Pokkar's Thirteenth Axe]],
spot="Nagrand D 58.29,59.31",
item=116688,
quest=36021,
steps=[[
step
_Go to_ this platform |goto Nagrand D/0 58.0,57.8 < 10
_Jump down_ onto the tree below |goto Nagrand D/0 58.1,59.2 < 5
click Pokkar's Thirteenth Axe##233561 |q 36021 |future |goto Nagrand D 58.29,59.31
|tip The axe is on a small tree limb just below the trunk.
]],
},
{
level=98,
treasure=[[Lost Pendant]],
spot="Nagrand D 61.76,57.47",
item=116687,
quest=36082,
steps=[[
step
click Lost Pendant##233651 |q 36082 |future |goto Nagrand D 61.76,57.47
|tip It's hanging from a branch overhead.
]],
},
{
level=98,
treasure=[[Bag of Herbs]],
spot="Nagrand D 62.54,67.08",
item=109125,
quest=36116,
steps=[[
step
_Go up_ the hill |goto Nagrand D/0 61.4,65.8 < 20
Hug the mountain and _jump over_ the tree |goto Nagrand D/0 62.1,66.8 < 10
click Bag of Herbs##233773 |q 36116 |future |goto Nagrand D 62.54,67.08
]],
},
{
level=98,
treasure=[[Steamwheedle Supplies 4]],
spot="Nagrand D 64.59,17.62",
access="Completionist",
currency="GR",
quest=35648,
steps=[[
step
_Follow_ this path around to the right |goto Nagrand D/0 72.3,12.5 < 10
_Jump across_ the first gap |goto Nagrand D/0 71.5,13.2 < 15
_Jump across_ the second gap |goto Nagrand D/0 70.2,13.4 < 15
_Click_ the Steamwheedle Exploration Glider |goto Nagrand D/0 67.5,14.3 < 10
click Steamwheedle Supplies##232584 |q 35648 |future |goto Nagrand D 64.59,17.62
]],
},
{
level=98,
treasure=[[Telaar Defender Shield]],
spot="Nagrand D 64.71,65.83",
item=118253,
quest=36046,
steps=[[
step
_Cross_ the waterfall here |goto Nagrand D/0 64.4,67.5 < 15
click Telaar Defender Shield##233613 |q 36046 |future |goto Nagrand D 64.71,65.83
]],
},
{
level=98,
treasure=[[Watertight Bag]],
spot="Nagrand D 64.76,35.73",
item=118235,
quest=36071,
steps=[[
step
click Watertight Bag##233641 |q 36071 |future |goto Nagrand D 64.76,35.73
|tip It's next to a skeleton under the south side of the bridge.
]],
},
{
level=98,
treasure=[[Abu'gar's Vitality]],
spot="Nagrand D 65.83,61.14",
item=114242,
quest=35711,
condition=[[only if not completedq(36711)]],
steps=[[
step
_Enter_ the warsong area |goto Nagrand D/0 69.0,64.3 < 20
_Continue_ through |goto Nagrand D/0 66.7,63.5 < 10
_Drop down_ carefully onto the lower ledge |goto Nagrand D/0 65.9,61.5 < 15
click Abu'gar's Vitality##233157 |q 35711 |or |future |goto Nagrand D 65.83,61.14
'| click Abu'gar's Vitality##233157 |complete itemcount(114242)>0 |or
|tip By the tackle box.
]],
},
{
level=98,
treasure=[[Elemental Offering]],
spot="Nagrand D 66.96,19.49",
currency="GL",
item=118234,
quest=35954,
steps=[[
step
_Go up_ the hill |goto Nagrand D/0 66.4,16.3 < 10
_Drop down_ carefully to the ledge below |goto Nagrand D 66.96,19.49 < 7
click Elemental Offering##233492 |q 35954 |future |goto Nagrand D 66.96,19.49
]],
},
{
level=98,
treasure=[[Highmaul Sledge]],
spot="Nagrand D 67.38,49.06",
item=118252,
quest=36039,
steps=[[
step
_Follow_ the canyon wall |goto Nagrand D/0 67.7,47.9
click Highmaul Sledge##233611 |q 36039 |future |goto Nagrand D 67.38,49.06
|tip It's just past the tree on a hill.
]],
},
{
level=98,
treasure=[[Abandoned Cargo]],
spot="Nagrand D 67.65,59.71",
item="3 RANDOM",
quest=35759,
steps=[[
step
click Abandoned Cargo##233206 |q 35759 |future |goto Nagrand D 67.65,59.71
|tip Among the broken wagon rubble.
]],
},
{
level=98,
treasure=[[Adventurer's Pack 3]],
spot="Nagrand D 69.95,52.44",
currency="GL",
item="1 RANDOM",
quest=35597,
steps=[[
step
_Go up_ the hill |goto Nagrand D/0 69.2,50.4 < 20
Carefully, _climb onto_ the tree and walk out on the limb |goto Nagrand D/0 69.7,52.2 < 5
click Adventurer's Pack##233218 |q 35597 |future |goto Nagrand D 69.95,52.44
|tip Toggling run/walk to the walk setting helps.
]],
},
{
level=98,
treasure=[[Mountain Climber's Pack]],
spot="Nagrand D 70.53,13.85",
access="Completionist",
currency="GR",
quest=35643,
steps=[[
step
_Follow_ this path around to the right |goto Nagrand D/0 72.3,12.5 < 10
_Jump across_ the first gap |goto Nagrand D/0 71.5,13.2 < 15
_Jump across_ the second gap |goto Nagrand D/0 70.2,13.4 < 15
_Click_ the Steamwheedle Exploration Glider |goto Nagrand D/0 67.5,14.3 < 10
click Mountain Climber's Pack##233032 |q 35643 |future |goto Nagrand D 70.53,13.85
|tip The pack is on the little skeleton.
]],
},
{
level=98,
treasure=[[Steamwheedle Supplies 5]],
spot="Nagrand D 70.60,18.60",
access="Completionist",
currency="GR",
quest=35646,
steps=[[
step
_Follow_ this path around to the right |goto Nagrand D/0 72.3,12.5 < 10
_Jump across_ the first gap |goto Nagrand D/0 71.5,13.2 < 15
_Jump across_ the second gap |goto Nagrand D/0 70.2,13.4 < 15
_Click_ the Steamwheedle Exploration Glider |goto Nagrand D/0 67.5,14.3 < 10
click Steamwheedle Supplies##232584 |q 35646 |future |goto Nagrand D 70.60,18.60
|tip You need to land on top of the stone pillar with the purple flag waiving.
]],
},
{
level=98,
treasure=[[Polished Saberon Skull]],
spot="Nagrand D 72.71,60.92",
item=118254,
quest=36035,
steps=[[
step
_Climb over_ the rocks |goto Nagrand D/0 77.0,61.4 < 15
_Follow_ the ridge |goto Nagrand D/0 75.2,63.0 < 10
_Go out_ onto the outcropping |goto Nagrand D/0 73.5,63.2 < 10
click Polished Saberon Skull##233593 |q 36035 |future |goto Nagrand D 72.71,60.92
]],
},
{
level=98,
treasure=[[Goblin Pack 1]],
spot="Nagrand D 72.97,62.12",
access="Completionist",
currency="GR",
quest=35590,
steps=[[
step
_Go up_ the hill |goto Nagrand D/0 77.3,72.7
_Climb over_ the rocks |goto Nagrand D/0 76.1,70.6
_Cross_ the bridge |goto Nagrand D/0 75.8,67.2
_Click_ the Steamwheedle Exploration Glider and use it to reach the treasure |goto Nagrand D/0 75.7,64.5
click Goblin Pack##232571 |q 35590 |future |goto Nagrand D 72.97,62.12
|tip The pack is on the side of the stone pillar. It's on a small ledge.
]],
},
{
level=98,
treasure=[[Warsong Lockbox]],
spot="Nagrand D 73.04,70.36",
access="Completionist",
currency="GR",
quest=35678,
steps=[[
step
_Go up_ the path |goto Nagrand D/0 78.1,72.0 < 10
click Steamwheedle Exploration Glider##232567 |goto Nagrand D/0 76.1,73.0 < 5
click Warsong Lockbox##233103 |q 35678 |future |goto Nagrand D 73.04,70.36
|tip You need to fly under the canopy of the watchtower.
]],
},
{
level=98,
treasure=[[Freshwater Clam]],
spot="Nagrand D 73.05,21.53",
item=118233,
quest=35692,
steps=[[
step
click Freshwater Clam##233132 |q 35692 |future |goto Nagrand D 73.05,21.53
|tip Under the water next to Throne of the Elements.
]],
},
{
level=98,
treasure=[[Appropriated Warsong Supplies]],
spot="Nagrand D 73.05,75.54",
access="Completionist",
currency="GR",
quest=35673,
steps=[[
step
_Go up_ the path |goto Nagrand D/0 78.1,72.0 < 20
click Steamwheedle Exploration Glider##232567 |goto Nagrand D/0 76.1,73.0 < 5
click Appropriated Warsong Supplies##233079 |q 35673 |future |goto Nagrand D 73.05,75.54
|tip Use the glider to fly to the treasure.
]],
},
{
level=98,
treasure=[[A Pile of Dirt]],
spot="Nagrand D 73.07,10.80",
currency="GR",
quest=35951,
steps=[[
step
_Go up_ the path |goto Nagrand D/0 74.9,8.7
Very carefully, _drop down_ |goto Nagrand D/0 73.0,10.6 < 3
click A Pile of Dirt##233452 |q 35951 |future |goto Nagrand D 73.07,10.80
]],
},
{
level=98,
treasure=[[Adventurer's Sack]],
spot="Nagrand D 73.93,14.05",
currency="GL",
item="1 RANDOM",
quest=35955,
steps=[[
step
_Swim to_ the waterfall |goto Nagrand D/0 73.5,14.4
click Adventurer's Sack##233499 |q 35955 |future |goto Nagrand D 73.93,14.05
|tip Swim underwater to claim the treasure.
]],
},
{
level=98,
treasure=[[Saberon Stash]],
spot="Nagrand D 75.18,64.94",
currency="GL",
item="1 RANDOM",
quest=36102,
steps=[[
step
_Go up_ the hill |goto Nagrand D/0 77.3,72.7 < 15
_Climb over_ the rocks |goto Nagrand D/0 76.1,70.6 < 10
_Cross_ the bridge |goto Nagrand D/0 75.8,67.2 < 10
_Drop down_ carefully by jumping and moving forward while in the air |goto Nagrand D/0 75.3,65.0 < 8
click Saberon Stash##232311 |q 36102 |future |goto Nagrand D 75.18,64.94
|tip It's between the wall and rock.
]],
},
{
level=98,
treasure=[[Important Exploration Supplies]],
spot="Nagrand D 75.23,65.63",
currency="GL",
item=61986,
quest=36099,
steps=[[
step
_Go up_ the hill |goto Nagrand D/0 77.3,72.7 < 15
_Climb over_ the rocks |goto Nagrand D/0 76.1,70.6 < 15
_Cross_ the bridge |goto Nagrand D/0 75.8,67.2 < 15
_Drop down_ to the cave below |goto Nagrand D/0 75.1,65.8 < 10
click Important Exploration Supplies##233696 |q 36099 |future |goto Nagrand D 75.23,65.63
]],
},
{
level=98,
treasure=[[Gambler's Purse]],
spot="Nagrand D 75.37,47.11",
item=118236,
quest=36074,
steps=[[
step
click Gambler's Purse##233649 |q 36074 |future |goto Nagrand D 75.37,47.11
|tip It's hidden in the weeds.
]],
},
{
level=98,
treasure=[[Adventurer's Mace]],
spot="Nagrand D 75.81,62.03",
currency="GL",
item="1 RANDOM",
quest=36077,
steps=[[
step
_Cross_ the tree bridge |goto Nagrand D/0 74.0,62.2 < 20
_Follow_ the path around |goto Nagrand D/0 74.0,62.8 < 10
_Climb_ up the rocks |goto Nagrand D/0 75.0,62.2 < 10
click Adventurer's Mace##233650 |q 36077 |future |goto Nagrand D 75.81,62.03
|tip It's on a bloody corpse underneath the planks.
]],
},
{
level=98,
treasure=[[Warsong Spear]],
spot="Nagrand D 76.06,69.90",
access="Completionist",
item=118678,
quest=35682,
steps=[[
step
_Go up_ the path |goto Nagrand D/0 78.1,72.0 < 10
click Steamwheedle Exploration Glider##232567 |goto Nagrand D/0 76.1,73.0 < 5
click Warsong Spear##233113 |q 35682 |future |goto Nagrand D 76.06,69.90
|tip Fly right and under the long earthen bridge. There is a skeleton hanting from the rock, you need to land on the rock just below it.
]],
},
{
level=98,
treasure=[[Bounty of the Elements]],
spot="Nagrand D 77.08,16.62",
currency="GR",
quest=36174,
steps=[[
step
_Go up_ the narrow trail carefully |goto Nagrand D/0 75.9,15.2 < 5
_Enter_ the cave |goto Nagrand D/0 77.1,17.2 < 10
click Bounty of the Elements##233973 |q 36174 |future |goto Nagrand D 77.08,16.62
|tip Click the air totem first, then earth, then water, then fire. Finally, click the chest.
]],
},
{
level=98,
treasure=[[Bone-Carved Dagger]],
spot="Nagrand D 77.31,28.07",
item=116760,
quest=35986,
steps=[[
step
_Go to_ the earthen bridge |goto Nagrand D/0 78.8,26.4 < 20
_Cross_ the bridge and drop down here |goto Nagrand D/0 77.6,29.3 < 15
click Bone-Carved Dagger##233532 |q 35986 |future |goto Nagrand D 77.31,28.07
|tip It's up against the unidentifiable remains.
]],
},
{
level=98,
treasure=[[Steamwheedle Supplies 3]],
spot="Nagrand D 77.83,51.95",
access="Completionist",
currency="GR",
quest=35591,
steps=[[
step
_Go up_ the hill |goto Nagrand D/0 77.3,72.7 < 15
_Climb over_ the rocks |goto Nagrand D/0 76.1,70.6 < 10
_Cross_ the bridge |goto Nagrand D/0 75.8,67.2 < 10
_Click_ the Steamwheedle Exploration Glider |goto Nagrand D/0 75.7,64.5 < 10
click Steamwheedle Supplies##232584 |q 35591 |future |goto Nagrand D 77.83,51.95
|tip You will need to land on the watchtower.
]],
},
{
level=98,
treasure=[[Elemental Shackles]],
spot="Nagrand D 78.90,15.56",
item=118251,
quest=36036,
steps=[[
step
_Go up_ the hill |goto Nagrand D/0 77.4,12.0 < 10
_Jump from_ this spot to the next rock |goto Nagrand D/0 78.2,14.2 < 10
click Elemental Shackles##233598 |q 36036 |future |goto Nagrand D 78.90,15.56
]],
},
{
level=98,
treasure=[[Warsong Spoils]],
spot="Nagrand D 80.65,60.54",
access="Completionist",
currency="GR",
quest=35593,
steps=[[
step
_Go up_ the path |goto Nagrand D/0 78.1,72.0 < 20
_Go over_ the hills |goto Nagrand D/0 76.4,71.3 < 15
_Cross_ the bridge |goto Nagrand D/0 75.8,67.4 < 15
click Steamwheedle Exploration Glider##232567 |goto Nagrand D/0 75.7,64.5 < 5
click Warsong Spoils##232599 |q 35593 |future |goto Nagrand D 80.65,60.54
|tip You need to land under the canopy of the watchtower.
]],
},
{
level=98,
treasure=[[Ogre Beads]],
spot="Nagrand D 80.96,79.79",
item=118255,
quest=36049,
steps=[[
step
_Go up_ the hill |goto Nagrand D/0 81.7,79.9 < 15
_Jump over_ onto the wall from here |goto Nagrand D/0 80.9,80.3 < 10
click Ogre Beads##233618 |q 36049 |future |goto Nagrand D 80.96,79.79
]],
},
{
level=98,
treasure=[[Brilliant Dreampetal]],
spot="Nagrand D 81.08,37.25",
access="Completionist",
item=118262,
quest=35661,
steps=[[
step
_Follow the path_ up |goto Nagrand D/0 83.4,33.1 < 10
_Continue up_ the mountain |goto 85.0,34.7 < 10
Proceed _along the mountain_ |goto 87.1,38.6 < 10
Continue _around_ |goto 88.4,36.7 < 10
Use the glider to reach the treasure |goto Nagrand D/0 83.7,33.7 < 5
click Brilliant Dreampetal##233048 |q 35661 |future |goto Nagrand D 81.08,37.25
|tip Immediately turn left towards the treasure to clear the distance.
]],
},
{
level=98,
treasure=[[Adventurer's Staff]],
spot="Nagrand D 81.46,13.07",
currency="GL",
item=116640,
quest=35953,
steps=[[
step
_Drop down_ carefully here |goto Nagrand D/0 81.5,13.6 < 5
click Adventurer's Staff##233457 |q 35953 |future |goto Nagrand D 81.46,13.07
]],
},
{
level=98,
treasure=[[Adventurer's Pack 1]],
spot="Nagrand D 82.27,56.60",
currency="GL",
item="1 RANDOM",
quest=35765,
steps=[[
step
click Adventurer's Pack##233218 |q 35765 |future |goto Nagrand D 82.27,56.60
|tip Next to the rock underneath the body impaled to the tree.
]],
},
{
level=98,
treasure=[[Abu'gar's Missing Reel]],
spot="Nagrand D 85.40,38.70",
item=114243,
quest=36711,
condition=[[only if not completedq(36711)]],
steps=[[
step
click Abu'gar's Missing Reel##233506 |q 36089 |future |or |goto Nagrand D 85.40,38.70
'| click Abu'gar's Missing Reel##233506 |complete itemcount(114243)>0 |or
|tip Next to a little box at the edge of the water by the tree.
]],
},
{
level=98,
treasure=[[Burning Blade Cache]],
spot="Nagrand D 85.41,53.47",
item="1 RANDOM",
quest=35696,
steps=[[
step
_Go up_ the hill |goto Nagrand D/0 83.1,52.5 < 10
_Cross_ the bridge |goto Nagrand D/0 84.0,52.1 < 10
_Jump over_ to the top of the building from here |goto Nagrand D/0 84.9,53.1 < 5
click Burning Blade Cache##233137 |q 35696 |future |goto Nagrand D/0 85.4,53.5
|tip You will need to be mounted for this jump.
]],
},
{
level=98,
treasure=[[Grizzlemaw's Bonepile]],
spot="Nagrand D 87.10,72.88",
item=118054,
quest=36051,
steps=[[
step
_Go up_ the hill |goto Nagrand D/0 83.5,68.8 < 8
_Follow_ the ridge and cross the waterfall |goto Nagrand D/0 85.2,70.1 < 5
click Grizzlemaw's Bonepile##233626 |q 36051 |future |goto Nagrand D 87.10,72.88
|tip It's behind the tree on the ground.
]],
},
{
level=98,
treasure=[[Steamwheedle Supplies 6]],
spot="Nagrand D 87.60,20.28",
access="Completionist",
currency="GR",
quest=35662,
steps=[[
step
_Follow_ the path around towards the glider |goto Nagrand D/0 88.3,37.9 < 20
_Continue_ towards the glider |goto Nagrand D/0 86.5,34.5 < 20
Click the Steamwheedle Exploration Glider |goto Nagrand D/0 83.7,33.7 < 10
click Steamwheedle Supplies##232584 |q 35662 |future |goto Nagrand D 87.60,20.28
|tip You need to land on the smaller mushroom just under the huge one.
]],
},
{
level=98,
treasure=[[Hidden Stash]],
spot="Nagrand D 87.62,44.98",
access="Completionist",
currency="GR",
quest=35622,
steps=[[
step
_Cross_ the gap |goto Nagrand D/0 87.0,38.7 < 10
_Go up_ the hill |goto Nagrand D/0 86.3,41.3 < 10
_Click_ the Steamwheedle Exploration Glider |goto Nagrand D/0 87.3,41.1 < 5
click Hidden Stash##232986 |q 35622 |future |goto Nagrand D 87.62,44.98
|tip The stash is hidden in a tree. You will need to land on it carefully.
]],
},
{
level=98,
treasure=[[Steamwheedle Supplies 7]],
spot="Nagrand D 88.27,42.62",
access="Completionist",
currency="GR",
quest=35616,
steps=[[
step
_Cross_ the bridge |goto Nagrand D/0 87.1,39.4 < 10
_Go up_ the hill |goto Nagrand D/0 86.3,41.3 < 15
_Click_ the Steamwheedle Exploration Glider |goto Nagrand D/0 87.3,41.1 < 10
click Steamwheedle Supplies##232584 |q 35616 |future |goto Nagrand D 88.27,42.62
]],
},
{
level=98,
treasure=[[Fungus-Covered Chest]],
spot="Nagrand D 88.90,18.24",
access="Completionist",
currency="GR",
quest=35660,
steps=[[
step
_Follow_ the path around towards the glider |goto Nagrand D/0 88.3,37.9 < 15
_Continue_ towards the glider |goto Nagrand D/0 86.5,34.5 < 15
Click the Steamwheedle Exploration Glider |goto Nagrand D/0 83.7,33.7 < 5
click Fungus-Covered Chest##233044 |q 35660 |future |goto Nagrand D 88.90,18.24
|tip Hang a right immediately after clicking the glider to clear the distance to the treasure.
]],
},
{
level=98,
treasure=[[Smuggler's Cache]],
spot="Nagrand D 89.07,33.13",
currency="GR, GL",
quest=36857,
steps=[[
step
_Go down_ the hill |goto Nagrand D/0 88.5,33.4 < 20
_Enter_ the cave |goto Nagrand D/0 89.0,32.5 < 10
click Smuggler's Cache##236633 |q 36857 |future |goto Nagrand D 89.07,33.13
|tip Avoid the tripwires at the entrance of the cave. They are hooked to a gun that will shoot you out of the cave.
]],
},
{
level=98,
treasure=[[Warsong Supplies]],
spot="Nagrand D 89.40,65.88",
currency="GR",
quest=35976,
steps=[[
step
_Go up_ the hidden path |goto Nagrand D/0 88.9,65.8 < 10
kill Lazy Warsong Scout##83791
click Warsong Supplies##233521 |q 35976 |future |goto Nagrand D 89.40,65.88
]],
},
{
level=90,
treasure=[[Rotting Basket]],
spot="Shadowmoon Valley D/15 56.2,49.2",
item=113373,
quest=33572,
steps=[[
step
_Take the path_ through Bloodthorn Hill |goto Shadowmoon Valley D/0 25.8,32.6
_Enter_ Bloodthorn Cave |goto Shadowmoon Valley D/15 73.8,31.9
_Go through_ the side entrance |goto Shadowmoon Valley D/15 54.9,37.8
_Drop down_ and turn to the left |goto Shadowmoon Valley D/15 56.2,49.3
click Rotting Basket##224781 |q 33572 |future |goto Shadowmoon Valley D/15 56.2,49.3
|tip It's a small wicker chest located in front of the pile of bones.
]],
},
{
level=90,
treasure=[[Demonic Cache]],
spot="Shadowmoon Valley D 20.38,30.65",
item=108904,
quest=33575,
steps=[[
step
_Enter_ Gul'var |goto Shadowmoon Valley D/0 22.1,30.7
_Go up_ this path and take the first left |goto Shadowmoon Valley D/0 20.4,29.2
_Enter_ the hut |goto Shadowmoon Valley D 20.38,30.65
click Demonic Cache##224785 |q 33575 |future |goto Shadowmoon Valley D 20.38,30.65
|tip It is an ornate chest located directly in front of the stone pillar.
]],
},
{
level=90,
treasure=[[Fantastic Fish]],
spot="Shadowmoon Valley D 26.53,05.68",
currency="GR",
quest=34174,
steps=[[
step
_Follow_ the road |goto Shadowmoon Valley D/0 24.9,9.7
_Enter_ the village |goto Shadowmoon Valley D/0 25.4,6.3
_Go to_ the small island |goto Shadowmoon Valley D 26.53,05.68
click Fantastic Fish##227743 |q 34174 |future |goto Shadowmoon Valley D 26.53,05.68
|tip The fish is on top of the small barrel.
]],
},
{
level=90,
treasure=[[Stolen Treasure]],
spot="Shadowmoon Valley D 27.05,02.48",
currency="GR",
quest=35280,
steps=[[
step
_Cross_ the water |goto Shadowmoon Valley D/0 27.4,5.8
_Enter_ the cave |goto Shadowmoon Valley D/0 27.7,4.3
_Go to_ the back of the cave |goto Shadowmoon Valley D 27.05,02.48
click Stolen Treasure##232067 |q 35280 |future |goto Shadowmoon Valley D 27.05,02.48
|tip It's a large brown chest.
]],
},
{
level=90,
treasure=[[Shadowmoon Treasure]],
spot="Shadowmoon Valley D 28.23,39.24",
currency="GR",
quest=33883,
steps=[[
step
_Enter_ Anguish Fortress here |goto Shadowmoon Valley D/0 34.9,38.1
_Turn right_ at the bottom of the stairs |goto Shadowmoon Valley D/0 34.0,39.6
_Continue along_ the path |goto Shadowmoon Valley D/0 32.3,38.9
_Go up_ the hill |goto Shadowmoon Valley D/0 30.3,39.0
_Enter_ the hut |goto Shadowmoon Valley D/0 28.8,39.5
_Go to_ the back room |goto Shadowmoon Valley D 28.23,39.24
click Shadowmoon Treasure##233126 |q 33883 |future |goto Shadowmoon Valley D 28.23,39.24
|tip It's a medium metal chest.
]],
},
{
level=90,
treasure=[[Sunken Treasure]],
spot="Shadowmoon Valley D 28.82,07.20",
currency="GR",
quest=35279,
steps=[[
step
_Follow_ the side of the boat |goto Shadowmoon Valley D/0 27.3,8.1
click Sunken Treasure##220832 |q 35279 |future |goto Shadowmoon Valley D 28.82,07.20
|tip It's an iron-bound chest at the bottom of the water.
]],
},
{
level=90,
treasure=[[Dusty Lockbox]],
spot="Shadowmoon Valley D 29.85,37.48",
currency="GL",
item="3 RANDOM",
quest=36879,
steps=[[
step
_Enter_ Anguish Fortress here |goto Shadowmoon Valley D/0 34.9,38.1
_Turn right_ at the bottom of the stairs |goto Shadowmoon Valley D/0 34.0,39.6
_Continue along_ the path |goto Shadowmoon Valley D/0 32.3,38.9
_Go up_ the hill |goto Shadowmoon Valley D/0 30.3,39.0
_Go up_ this path |goto Shadowmoon Valley D/0 28.2,38.6
_Jump onto_ the stone pillar here |goto Shadowmoon Valley D/0 27.9,40.5
_Follow_ the pillar tops left towards the guard towers until you reach the treasure |goto Shadowmoon Valley D 29.85,37.48
click Dusty Lockbox##236755 |q 36879 |future |goto Shadowmoon Valley D 29.85,37.48
|tip It's a small chest on top of a stone pillar.
]],
},
{
level=90,
treasure=[[Shadowmoon Sacrificial Dagger]],
spot="Shadowmoon Valley D 29.99,45.36",
item=113563,
quest=35919,
steps=[[
step
_Enter_ Anguish Fortress here |goto Shadowmoon Valley D/0 34.9,38.1
_Turn right_ at the bottom of the stairs |goto Shadowmoon Valley D/0 34.0,39.6
_Continue along_ the path |goto Shadowmoon Valley D/0 32.3,38.9
_Go up_ the hill |goto Shadowmoon Valley D/0 30.3,39.0
_Go up_ this path |goto Shadowmoon Valley D/0 29.4,41.4
_Continue_ to the stairs |goto Shadowmoon Valley D/0 30.6,44.4
_Go up_ the stairs |goto Shadowmoon Valley D 29.99,45.36
click Shadowmoon Sacrificial Dagger##224780 |q 35919 |future |goto Shadowmoon Valley D 29.99,45.36
|tip It's a small dagger impaled in the skeleton on the ground.
]],
},
{
level=90,
treasure=[[Ronokk's Belongings]],
spot="Shadowmoon Valley D 31.22,39.05",
item=109081,
quest=33886,
steps=[[
step
_Enter_ Anguish Fortress here |goto Shadowmoon Valley D/0 34.9,38.1
_Jump down_ here |goto Shadowmoon Valley D/0 33.5,40.1
_Go right_ |goto Shadowmoon Valley D/0 32.7,39.2
_Enter_ this room |goto Shadowmoon Valley D/0 31.8,40.1
_Go to_ the right alcove on the far wall |goto Shadowmoon Valley D 31.22,39.05
click Ronokk's Belongings##226861 |q 33886 |future |goto Shadowmoon Valley D 31.22,39.05
|tip It's a small chest in the alcove.
]],
},
{
level=90,
treasure=[[Carved Drinking Horn]],
spot="Shadowmoon Valley D 33.45,39.61",
item=113545,
quest=33569,
steps=[[
step
_Enter_ Anguish Fortress here |goto Shadowmoon Valley D/0 34.9,38.1
_Jump down_ here |goto Shadowmoon Valley D/0 33.5,40.1
_Go inside_ the room and to the first alcove on the left |goto Shadowmoon Valley D 33.45,39.61
click Carved Drinking Horn##232583 |q 33569 |future |goto Shadowmoon Valley D 33.45,39.61
|tip It looks like a giant tooth.
]],
},
{
level=90,
treasure=[[Veema's Herb Bag]],
spot="Shadowmoon Valley D 34.21,43.53",
item=109124,
quest=33866,
steps=[[
step
_Enter_ Anguish Fortress here |goto Shadowmoon Valley D/0 34.9,38.1
_Jump down_ here |goto Shadowmoon Valley D/0 33.5,40.1
_Go left_ |goto Shadowmoon Valley D/0 34.1,41.4
_Enter_ this room |goto Shadowmoon Valley D/0 33.5,42.6
_Go to_ the left alcove on the back wall |goto Shadowmoon Valley D 34.21,43.53
click Veema's Herb Bag##232589 |q 33866 |future |goto Shadowmoon Valley D 34.21,43.53
|tip It's a small brown satchel.
]],
},
{
level=90,
treasure=[[Giant Moonwillow Cone]],
spot="Shadowmoon Valley D 34.39,46.23",
item=108901,
quest=33891,
steps=[[
step
_Follow_ the path up the hill |goto Shadowmoon Valley D/0 39.5,53.6
_Continue right_ along the path |goto Shadowmoon Valley D/0 37.7,54.9
_Cross_ both bridges |goto Shadowmoon Valley D/0 36.1,50.6
_Go around_ the right side of the tree |goto Shadowmoon Valley D/0 35.6,47.6
_Cross_ the water to the shore and continue to the giant cone |goto Shadowmoon Valley D/0 34.4,46.2
click Giant Moonwillow Cone##226862 |q 33891 |future |goto Shadowmoon Valley D/0 34.4,46.2
|tip It's a giant cone on the ground.
]],
},
{
level=90,
treasure=[[Uzko's Knickknacks]],
spot="Shadowmoon Valley D 35.85,40.87",
item=113546,
quest=33540,
steps=[[
step
_Enter_ Anguish Fortress here |goto Shadowmoon Valley D/0 34.9,38.1
_Turn left_ at the bottom of the stairs |goto Shadowmoon Valley D/0 34.0,39.6
_Proceed through_ the stone arch |goto Shadowmoon Valley D/0 34.9,42.3
_Enter_ this room |goto Shadowmoon Valley D/0 36.1,41.9
_Go to_ the second alcove on left |goto Shadowmoon Valley D 35.85,40.87
click Uzko's Knickknacks##232587 |q 33540 |future |goto Shadowmoon Valley D 35.85,40.87
|tip It's a brown chest inside the alcove.
]],
},
{
level=90,
treasure=[[Rovo's Dagger]],
spot="Shadowmoon Valley D 36.68,44.55",
item=113378,
quest=33573,
steps=[[
step
_Enter_ Anguish Fortress here |goto Shadowmoon Valley D/0 34.9,38.1
_Turn left_ at the bottom of the stairs |goto Shadowmoon Valley D/0 34.0,39.6
_Proceed through_ the stone arch |goto Shadowmoon Valley D/0 34.9,42.3
_Enter_ the room |goto Shadowmoon Valley D/0 36.5,43.4
_Go to_ the left alcove on the back wall |goto Shadowmoon Valley D 36.68,44.55
click Rovo's Dagger##232586 |q 33573 |future
|tip It's a dagger leaning against a stone in the alcove.
]],
},
{
level=90,
treasure=[[Beloved's Offering]],
spot="Shadowmoon Valley D 36.77,41.42",
currency="GL",
item=113547,
quest=33046,
steps=[[
step
_Enter_ Anguish Fortress here |goto Shadowmoon Valley D/0 34.9,38.1
_Turn left_ at the bottom of the stairs |goto Shadowmoon Valley D/0 34.0,39.6
_Proceed through_ the stone arch |goto Shadowmoon Valley D/0 34.9,42.3
_Enter_ this room |goto Shadowmoon Valley D/0 37.1,41.6
_Go to_ the first alcove on the left |goto Shadowmoon Valley D 36.77,41.42
click Beloved's Offering##232591 |q 33046 |future |goto Shadowmoon Valley D 36.77,41.42
|tip It's a bundle of flowers next to the stone in the alcove.
]],
},
{
level=90,
treasure=[[Bubbling Cauldron]],
spot="Shadowmoon Valley D 37.18,23.13",
item=108945,
quest=33613,
steps=[[
step
_Enter_ the cave here |goto Shadowmoon Valley D/0 37.8,22.3 < 5
_Go left_ inside the cave |goto Shadowmoon Valley D/0 37.2,22.5
_Go to_ the far cave wall |goto Shadowmoon Valley D 37.18,23.13
click Bubbling Cauldron##2076 |q 33613 |future |goto Shadowmoon Valley D 37.18,23.13
|tip It is a small dark cauldron.
]],
},
{
level=90,
treasure=[[Sunken Fishing Boat]],
spot="Shadowmoon Valley D 37.19,26.01",
item=118414,
quest=35677,
steps=[[
step
_Go to_ the bottom of the pond |goto Shadowmoon Valley D 37.19,26.01
click Sunken Fishing boat##233101 |q 35677 |future |goto Shadowmoon Valley D 37.19,26.01
|tip It looks like the wooden frame of a partial boat.
]],
},
{
level=90,
treasure=[[Iron Horde Tribute]],
spot="Shadowmoon Valley D 37.51,59.25",
item=108903,
quest=33567,
steps=[[
step
_Go up_ the path |goto Shadowmoon Valley D/0 38.9,58.4
_Turn right_ at the top of the trail |goto Shadowmoon Valley D/0 38.2,60.6
_Enter_ this hut |goto Shadowmoon Valley D/0 37.1,59.6
_Go to_ the rear of the hut |goto Shadowmoon Valley D 37.51,59.25
click Iron Horde Tribute##224755 |q 33567 |future |goto Shadowmoon Valley D 37.51,59.25
|tip It's a large padlocked chest.
]],
},
{
level=90,
treasure=[[Ashes of A'kumbo]],
spot="Shadowmoon Valley D 37.78,44.35",
item=113531,
quest=33584,
steps=[[
step
_Enter_ Anguish Fortress here |goto Shadowmoon Valley D/0 34.9,38.1
_Turn left_ at the bottom of the stairs |goto Shadowmoon Valley D/0 34.0,39.6
_Proceed_ through the stone arch |goto Shadowmoon Valley D/0 34.9,42.3
_Enter_ this room |goto Shadowmoon Valley D/0 37.5,43.2
_Go to_ the right alcove on the back wall |goto Shadowmoon Valley D 37.78,44.35
click Ashes of A'kumbo##232582 |q 33584 |future |goto Shadowmoon Valley D 37.78,44.35
|tip It is a vase located behind the stone in the alcove.
]],
},
{
level=90,
treasure=[[Greka's Urn]],
spot="Shadowmoon Valley D 38.48,43.08",
item=113408,
quest=33614,
steps=[[
step
_Enter_ Anguish Fortress here |goto Shadowmoon Valley D/0 34.9,38.1
_Turn left_ at the bottom of the stairs |goto Shadowmoon Valley D/0 34.0,39.6
_Proceed through_ the stone arch |goto Shadowmoon Valley D/0 34.9,42.3
_Enter_ this room |goto Shadowmoon Valley D/0 38.1,42.3
_Go to_ the second alcove on the right |goto Shadowmoon Valley D 38.48,43.08
click Greka's Urn##232588 |q 33614 |future
|tip It's a small urn behind the stone in the alcove.
]],
},
{
level=90,
treasure=[[Waterlogged Chest]],
spot="Shadowmoon Valley D 39.20,83.91",
currency="GL",
item=113372,
quest=33566,
steps=[[
step
_Travel to_ the Forgotten Shore |goto Shadowmoon Valley D/0 40.5,75.5
_Go to_ the Isle of Shadows |goto Shadowmoon Valley D/0 39.9,79.8
_Go to_ the far shore |goto Shadowmoon Valley D 39.20,83.91
click Waterlogged Chest##224754 |q 33566 |future |goto Shadowmoon Valley D 39.20,83.91
|tip It's a medium metal chest on the beach.
]],
},
{
level=90,
treasure=[[Armored Elekk Tusk]],
spot="Shadowmoon Valley D 41.42,27.98",
item=108902,
quest=33869,
steps=[[
step
_Go to_ the remains of the dead elekk |goto Shadowmoon Valley D 41.42,27.98
click Armored Elekk Tusk##226854 |q 33869 |future |goto Shadowmoon Valley D 41.42,27.98
|tip It is a large bone sticking up from the ground.
]],
},
{
level=90,
treasure=[[Iron Horde Cargo Shipment]],
spot="Shadowmoon Valley D 42.10,61.30",
currency="GR",
quest=33041,
steps=[[
step
_Go to_ the rear of the wagon |goto Shadowmoon Valley D 42.10,61.30
click Iron Horde Cargo Shipment##227134 |q 33041 |future |goto Shadowmoon Valley D 42.10,61.30
|tip It's a metal-bound chest in the back of the Iron Horde wagon.
]],
},
{
level=90,
treasure=[[Peaceful Offering 1]],
spot="Shadowmoon Valley D 43.75,60.62",
item=107650,
quest=33611,
steps=[[
step
_Go to_ the Western Pillar |goto Shadowmoon Valley D 43.75,60.62
click Peaceful Offering 1##225503 |q 33611 |future |goto Shadowmoon Valley D 43.75,60.62
|tip It's a small wicker chest at the base of the pillar.
]],
},
{
level=90,
treasure=[[Peaceful Offering 3]],
spot="Shadowmoon Valley D 44.48,63.57",
item=107650,
quest=33384,
steps=[[
step
_Go to_ the Southern Pillar |goto Shadowmoon Valley D 44.48,63.57
click Peaceful Offering 3##225503 |q 33384 |future |goto Shadowmoon Valley D 44.48,63.57
|tip It's a small wicker chest at the base of the pillar.
]],
},
{
level=90,
treasure=[[Peaceful Offering 4]],
spot="Shadowmoon Valley D 44.49,59.14",
item=107650,
quest=33612,
steps=[[
step
_Go to_ the Northern Pillar |goto Shadowmoon Valley D 44.49,59.14
click Peaceful Offering 4##225503 |q 33612 |future |goto Shadowmoon Valley D 44.49,59.14
|tip It's a small wicker chest at the base of the pillar.
]],
},
{
level=90,
treasure=[[Peaceful Offering 2]],
spot="Shadowmoon Valley D 45.22,60.49",
item=107650,
quest=33610,
steps=[[
step
_Go to_ the Eastern Pillar |goto Shadowmoon Valley D 45.22,60.49
click Peaceful Offering 2##225503 |q 33610 |future |goto Shadowmoon Valley D 45.22,60.49
|tip It's a small wicker chest at the base of the pillar.
]],
},
{
level=90,
treasure=[[Shadowmoon Exile Treasure]],
spot="Shadowmoon Valley D 45.82,24.58",
item=113388,
quest=33570,
steps=[[
step
_Enter_ the cave at the base of Exile's Rise |goto Shadowmoon Valley D/0 46.2,27.0
_Swim to_ the rock inside the cave |goto Shadowmoon Valley D 45.82,24.58
click Shadowmoon Exile Treasure##224770 |q 33570 |future |goto Shadowmoon Valley D 45.82,24.58
|tip It's a brown chest half-covered with water next to the rock.
]],
},
{
level=90,
treasure=[[Hanging Satchel]],
spot="Shadowmoon Valley D 47.15,46.03",
currency="GL",
item=107640,
quest=33564,
steps=[[
step
_Cross_ the water and climb the rock |goto Shadowmoon Valley D/0 53.5,47.7
_Go up_ this path |goto Shadowmoon Valley D/0 50.9,48.0
_Turn right_ at the top |goto Shadowmoon Valley D/0 49.3,47.3
_Scale_ the rocks to reach the upper plateau |goto Shadowmoon Valley D/0 48.9,45.5
_Scale_ the rocks to reach to highest plateau |goto Shadowmoon Valley D/0 48.4,46.5
_Drop down_ |goto Shadowmoon Valley D/0 47.5,45.4
|tip Be careful not to fall in the hole.
Carefully _walk onto_ the branch |goto Shadowmoon Valley D 47.15,46.03
click Hanging Satchel##224750 |q 33564 |future |goto Shadowmoon Valley D 47.15,46.03
|tip It's a brown bag hanging from a branch over the cave.
]],
},
{
level=90,
treasure=[[Glowing Cave Mushroom]],
spot="Shadowmoon Valley D 48.72,47.53",
item=109127,
quest=35798,
steps=[[
step
_Enter_ the cave |goto Shadowmoon Valley D/0 46.4,45.0
_Go right_ at the fork |goto Shadowmoon Valley D/0 48.2,46.6
_Stand on_ this rock to loot the mushroom above you |goto Shadowmoon Valley D/0 48.74,47.44
click Glowing Cave Mushroom##233241 |q 35798 |future |goto Shadowmoon Valley D/0 48.74,47.44
|tip It's a blue-white mushroom with a concave top.
]],
},
{
level=90,
treasure=[[Astrologer's Box]],
spot="Shadowmoon Valley D 49.31,37.60",
item=109739,
quest=33867,
steps=[[
step
_Cross_ the bridge |goto Shadowmoon Valley D/0 51.9,38.5 < 8
_Go to_ the road |goto Shadowmoon Valley D/0 50.5,39.5 < 12
_Enter_ the pavillion |goto Shadowmoon Valley D/0 49.2,38.1 < 10
_Go up_ the winding ramp |goto Shadowmoon Valley D/0 49.9,37.0 < 10
_Reach the top_ of the ramp |goto Shadowmoon Valley D/0 49.1,36.6 < 10
_Open_ the Astrologer's Box |goto Shadowmoon Valley D/0 49.4,37.6
click Astrologer's Box##226831 |q 33867 |future |goto Shadowmoon Valley D/0 49.4,37.6
|tip It is a small brown chest in front of the bookcase at the top of a winding ramp.
]],
},
{
level=90,
treasure=[[Vindicator's Cache]],
spot="Shadowmoon Valley D 51.14,79.12",
item=113375,
quest=33574,
steps=[[
step
_Go to_ the pond |goto Shadowmoon Valley D/0 50.4,78.9
_Swim down_ to the bottom |goto Shadowmoon Valley D 51.14,79.12
click Vindicator's Cache##224784 |q 33574 |future |goto Shadowmoon Valley D 51.14,79.12
|tip It's a small half-buried chest under the water.
]],
},
{
level=90,
treasure=[[False-Bottomed Jar]],
spot="Shadowmoon Valley D 51.75,35.49",
currency="GL",
quest=33037,
steps=[[
step
_Follow_ the road |goto Shadowmoon Valley D/0 49.1,32.2
_Turn right_ here |goto Shadowmoon Valley D/0 52.1,33.9
click False-Bottomed Jar##224783 |q 33037 |future |goto Shadowmoon Valley D 51.75,35.49
|tip It's a large jar near several smaller ones.
]],
},
{
level=90,
treasure=[[Ancestral Greataxe]],
spot="Shadowmoon Valley D 52.83,48.37",
item=113560,
quest=35584,
steps=[[
step
_Go up_ the path here |goto Shadowmoon Valley D/0 51.0,47.9
_Turn left_ at the top of the path |goto Shadowmoon Valley D/0 49.9,47.5
_Continue_ along the path |goto Shadowmoon Valley D/0 51.9,49.5
_Go to_ the small collection of stones |goto Shadowmoon Valley D 52.83,48.37
click Ancestral Greataxe##232596 |q 35584 |future |goto Shadowmoon Valley D 52.83,48.37
|tip It's an axe embedded in the ground at the base of the stones.
]],
},
{
level=90,
treasure=[[Mushroom-Covered Chest]],
spot="Shadowmoon Valley D 52.88,24.86",
currency="GR",
quest=37254,
steps=[[
step
_Go to_ the Umbrafen Lake |goto Shadowmoon Valley D/0 52.2,26.1
_Swim under_ the mushrooms to the very bottom of the lake |goto Shadowmoon Valley D 52.88,24.86
click Mushroom-Covered Chest##232494 |q 37254 |future |goto Shadowmoon Valley D 52.88,24.86
|tip It's a large brown chest.
]],
},
{
level=90,
treasure=[[Alchemist's Satchel]],
spot="Shadowmoon Valley D 54.92,45.01",
item=109124,
quest=35581,
steps=[[
step
click Alchemist's Satchel##224756 |q 35581 |future |goto Shadowmoon Valley D 54.92,45.01
|tip The Alchemist's Satchel is a small brown bag sitting on a small island in the lake.
]],
},
{
level=90,
treasure=[[Swamplighter Hive]],
spot="Shadowmoon Valley D 55.29,74.87",
item=117550,
quest=35580,
steps=[[
step
_Go to_ the river |goto Shadowmoon Valley D/0 52.0,69.0
_Continue_ following the river southeast |goto Shadowmoon Valley D/0 53.5,73.0
_Go to_ the base of the tree |goto Shadowmoon Valley D 55.29,74.87
click Swamplighter Hive##232592 |q 35580 |future |goto Shadowmoon Valley D 55.29,74.87
|tip It's a yellow beehive located up in the tree. All of the wasps will attack you when you click it.
]],
},
{
level=90,
treasure=[[Strange Spore]],
spot="Shadowmoon Valley D 55.82,19.97",
item=118104,
quest=35600,
steps=[[
step
_WARNING_: You will need to carefully avoid Alliance guards
_Go to_ the steps |goto Shadowmoon Valley D/0 60.0,26.6 < 30
_Climb_ the three flights of stairs |goto Shadowmoon Valley D/0 62.0,26.2 < 30
_Go up_ the next set of stairs |goto Shadowmoon Valley D/0 63.7,25.0 < 30
_Follow_ the path to the top of Exarch's Rise |goto Shadowmoon Valley D/0 60.5,20.6 < 20
Use this rock to _jump up_ |goto Shadowmoon Valley D/0 59.8,18.9 < 10
_Run up_ the hill here |goto Shadowmoon Valley D/0 59.9,17.6 < 5
_Continue up_ and onto the hill |goto Shadowmoon Valley D/0 59.3,17.9 < 20
_Continue around_ to the small grove of trees |goto Shadowmoon Valley D/0 56.5,17.9 < 20
_Jump onto_ the giant mushroom top |goto Shadowmoon Valley D 55.82,19.97
click Strange Spore##232621 |q 35600 |future
|tip It looks like a giant orange and brown spore.
]],
},
{
level=90,
treasure=[[Kaliri Egg]],
spot="Shadowmoon Valley D 57.92,45.31",
item=113271,
quest=33568,
steps=[[
step
_Go to_ the Kaliri nest behind the tree |goto Shadowmoon Valley D 57.92,45.31
click Kaliri Egg##232579 |q 33568 |future |goto Shadowmoon Valley D 57.92,45.31
|tip It's a large white egg in the center of a nest.
]],
},
{
level=90,
treasure=[[Mikkal's Chest]],
spot="Shadowmoon Valley D 58.88,21.93",
item=113215,
quest=35603,
steps=[[
step
_WARNING_: You will need to carefully avoid Alliance guards
_Go to_ the top of the waterfall in Elodor |goto Shadowmoon Valley D/0 59.7,24.3
_Cross_ the water and go to the top of the hill |goto Shadowmoon Valley D 58.88,21.93
click Mikkal's Chest##232624 |q 35603 |future |goto Shadowmoon Valley D 58.88,21.93
|tip It's a small brown chest located next to Painter Mikkal.
]],
},
{
level=90,
treasure=[[The Crystal Blade of Torvath]],
spot="Shadowmoon Valley D 61.70,67.90",
currency="GR",
item=111636,
quest=34743,
steps=[[
step
_Follow_ this path |goto Shadowmoon Valley D/0 58.3,60.5
_Continue along_ the path |goto Shadowmoon Valley D/0 58.8,63.9
_Enter_ the clearing |goto Shadowmoon Valley D/0 60.7,67.1
_Go to_ the boulder |goto Shadowmoon Valley D 61.70,67.90
click The Crystal Blade of Torvath##230663 |q 34743 |future |goto Shadowmoon Valley D 61.70,67.90
kill Silverleaf Ancient##79694
|tip When you click the Blade, you will have to fight the three Ancients (one at a time).
]],
},
{
level=90,
treasure=[[Orc Skeleton]],
spot="Shadowmoon Valley D 66.96,33.49",
item=116875,
quest=36507,
steps=[[
step
_Go to_ the Moonlit Shore |goto Shadowmoon Valley D 66.96,33.49
click Orc Skeleton##235860 |q 36507 |future |goto Shadowmoon Valley D 66.96,33.49
|tip It's a tiny half-buried chest next to the Draenei Children.
]],
},
{
level=90,
treasure=[[Scaly Rylak Egg]],
spot="Shadowmoon Valley D 67.05,84.18",
item=44722,
quest=33565,
steps=[[
step
modelnpc 85568
_Warning_: This treasure is protected by Avalanche, a level 100 rare elemental
_Cross_ the water to the Island here |goto Shadowmoon Valley D/0 64.3,84.8
_Follow_ this path around |goto Shadowmoon Valley D/0 66.1,84.4
_Enter_ the cave here |goto Shadowmoon Valley D/0 66.9,86.5
_Go to_ the back-left of the cave |goto Shadowmoon Valley D 67.05,84.18
click Scaly Rylak Egg##224753 |q 33565 |future |goto Shadowmoon Valley D 67.05,84.18
|tip It's a stone-like egg in a nest.
]],
},
{
level=90,
treasure=[[Cargo of the Raven Queen]],
spot="Shadowmoon Valley D 84.56,44.78",
currency="GR",
quest=33885,
steps=[[
step
map Shadowmoon Valley D/0
path follow loose; loop off; ants curved; dist 15
path	62.5,46.5	69.7,46.5	69.7,42.6
path	70.3,40.0	72.1,37.5	74.8,39.9
path	77.0,41.3	77.5,42.4	78.0,42.9
path	78.3,44.3	78.1,45.4	79.4,45.3
path	79.9,44.6	80.7,44.9	81.7,43.7
path	82.4,42.6	83.8,42.8	84.56,44.78
_Follow_ the path to the Raven Queen's cargo
|tip Running through this area may flag you for PvP
click Cargo of the Raven Queen##226865 |q 33885 |future
|tip It is a medium sized brown chest.
]],
},
{
level=96,
treasure=[[Sun-Touched Cache 2]],
spot="Spires of Arak 33.29,27.27",
currency="GL",
quest=36422,
condition=[[only if skill("Archaeology") >= 1]],
steps=[[
step
_Jump up_ here to get on the scaffolding |goto Spires of Arak/0 33.4,27.6
click Sun-Touched Cache 2##235105 |q 36422 |future |goto Spires of Arak 33.29,27.27
|tip You can loot it from the middle.
]],
},
{
level=96,
treasure=[[Sun-Touched Cache 1]],
spot="Spires of Arak 34.14,27.51",
currency="GL",
quest=36421,
condition=[[only if skill("Archaeology") >= 1]],
steps=[[
step
_Jump up_ here to get on the scaffolding |goto Spires of Arak/0 33.9,27.2
click Sun-Touched Cache 1##235105 |q 36421 |future |goto Spires of Arak 34.14,27.51
]],
},
{
level=96,
treasure=[[Admiral Taylor's Coffer]],
spot="Spires of Arak 36.19,54.46",
currency="GR",
quest=36462,
steps=[[
step
click An Old Key##235366 |goto Spires of Arak 37.70,56.40 |only if itemcount(116020) < 1
Get An Old Key |complete itemcount(116020) > 0 |only if itemcount(116020) < 1 and not completedq(36462)
|tip It's on the rock behind the tree. |only if itemcount(116020) < 1
_Enter_ the Town Hall |goto Spires of Arak/0 36.4,53.6 < 10
click Admiral Taylor's Coffer##235365 |q 36462 |future |goto Spires of Arak 36.19,54.46
|tip It's found inside the Town Hall after looting the Old Key.
]],
},
{
level=96,
treasure=[[Orcish Signaling Horn]],
spot="Spires of Arak 36.28,39.34",
item=120337,
quest=36402,
steps=[[
step
click Orcish Signaling Horn##234740 |q 36402 |future |goto Spires of Arak 36.28,39.34
|tip It's next to the broken cart.
]],
},
{
level=96,
treasure=[[Ephial's Dark Grimoire]],
spot="Spires of Arak 36.58,57.91",
item=116914,
quest=36418,
steps=[[
step
_Enter_ the house |goto Spires of Arak/0 36.6,57.6 < 10
click Ephial's Dark Grimoire##235097 |q 36418 |future |goto Spires of Arak/0 36.4,57.8
|tip It is on a small crate on the right side of the house.
]],
},
{
level=96,
treasure=[[Outcast's Belongings 1]],
spot="Spires of Arak 36.82,17.16",
currency="GL",
item="RANDOM",
quest=36243,
steps=[[
step
_Climb up_ the crevice |goto Spires of Arak/0 36.4,17.6
click Outcast's Belongings 1##234147 |q 36243 |future |goto Spires of Arak 36.82,17.16
]],
},
{
level=96,
treasure=[[Garrison Supplies]],
spot="Spires of Arak 37.15,47.50",
currency="GR",
quest=36420,
steps=[[
step
_Enter_ the small canyon |goto Spires of Arak/0 38.1,46.7
click Garrison Supplies##235103 |q 36420 |future |goto Spires of Arak 37.15,47.50
|tip It's in a little wagon in the canyon.
]],
},
{
level=96,
treasure=[[Rooby's Roo]],
spot="Spires of Arak 37.37,50.56",
item=116887,
quest=36657,
steps=[[
step
_Enter_ the inn |goto Spires of Arak/0 37.6,51.2 < 5 |only if itemcount(114835) < 3 and not completedq(36657)
_Go downstairs_ |goto Spires of Arak/0 37.4,50.7 < 5 |only if itemcount(114835) < 3 and not completedq(36657)
talk Miril Dumonde##82432 |only if itemcount(114835) < 3 and not completedq(36657)
buy 3 Rooby Treat##114835 |goto Spires of Arak/0 37.6,50.9 < 10 |only if itemcount(114835) < 1 and not completedq(36657)
clicknpc Rooby Roo##84332 |goto Spires of Arak/0 37.5,50.8 < 10 |use Rooby Treat##114835 |only if itemcount(114835) > 0
click Rooby's Roo##233975 |q 36657 |future |goto Spires of Arak 37.37,50.56 < 7
|tip You must feed Rooby treats and follow her to the treasure. It's in a big surprise! |only if itemcount(114835) > 0
]],
},
{
level=96,
treasure=[[Abandoned Mining Pick]],
spot="Spires of Arak 40.59,54.97",
item=116913,
quest=36458,
steps=[[
step
_Go up_ the hidden path |goto Spires of Arak/0 40.2,55.9
click Abandoned Mining Pick##235313 |q 36458 |future |goto Spires of Arak 40.59,54.97
|tip It's a pickaxe wedged between a rock and the mountain.
]],
},
{
level=96,
treasure=[[Garrison Workman's Hammer]],
spot="Spires of Arak 41.85,50.42",
item=116918,
quest=36451,
steps=[[
step
click Garrison Workman's Hammer##235289 |q 36451 |future |goto Spires of Arak 41.85,50.42
|tip It's in the wagon on the side of the road.
]],
},
{
level=96,
treasure=[[Outcast's Belongings 2]],
spot="Spires of Arak 42.17,21.68",
currency="GL",
item="RANDOM",
quest=36447,
steps=[[
step
_Go up_ the ravine |goto Spires of Arak/0 41.6,22.1
click Outcast's Belongings 2##235172 |q 36447 |future |goto Spires of Arak 42.17,21.68
]],
},
{
level=96,
treasure=[[Gift of Anzu]],
spot="Spires of Arak 42.40,26.70",
item=118242,
quest=36388,
steps=[[
step
use Elixir of Shadow Sight##115463 |only if itemcount(115463) > 0
click Gift of Anzu##234618 |q 36388 |future |goto Spires of Arak 42.40,26.70 |only if itemcount(115463) > 0
You must have an Elixir of Shadow Sight to get this treasure. You currently have none |confirm |only if itemcount(115463) < 1
]],
},
{
level=96,
treasure=[[Misplaced Scrolls]],
spot="Spires of Arak 42.69,18.32",
currency="AA",
quest=36244,
condition=[[only if skill("Archaeology") >= 1]],
steps=[[
step
|tip This treasure grants +1-4 to Archaeology skill level.
_Go up_ the path |goto Spires of Arak/0 41.6,21.2
click Misplaced Scrolls##234154 |q 36244 |future |goto Spires of Arak 42.69,18.32
|tip It's behind the small broken wall.
]],
},
{
level=96,
treasure=[[Relics of the Outcasts 1]],
spot="Spires of Arak 42.96,16.37",
currency="AA",
quest=36245,
condition=[[only if skill("Archaeology") >= 1]],
steps=[[
step
_Jump onto_ the wall from this point |goto Spires of Arak/0 43.4,15.3 < 8
_Drop down_ onto the rope and carefully walk to the far wall |goto Spires of Arak/0 43.4,15.8 < 5
click Relics of the Outcasts 1##234454 |q 36245 |future |goto Spires of Arak 42.96,16.37
]],
},
{
level=96,
treasure=[[Relics of the Outcasts 3]],
spot="Spires of Arak 43.16,27.26",
currency="AA",
quest=36355,
condition=[[only if skill("Archaeology") >= 1]],
steps=[[
step
_Jump onto_ the stump and walk the rope around to the treasure |goto Spires of Arak/0 44.6,27.6 < 10
click Relics of the Outcasts 3##234454 |q 36355 |future |goto Spires of Arak 43.16,27.26
|tip At the end of the rope, it's on the tree trunk to your right.
]],
},
{
level=96,
treasure=[[Elixir of Shadow Sight 2]],
spot="Spires of Arak 43.83,24.64",
item=115463,
quest=36397,
steps=[[
step
_Enter_ the burning hut |goto Spires of Arak/0 43.8,25.1 < 8
click Elixir of Shadow Sight 2##234704 |q 36397 |future |goto Spires of Arak 43.83,24.64
|tip Inside a little basket in the upper-right corner.
]],
},
{
level=96,
treasure=[[Elixir of Shadow Sight 1]],
spot="Spires of Arak 43.90,15.00",
item=115463,
quest=36395,
steps=[[
step
click Elixir of Shadow Sight 1##234703 |q 36395 |future |goto Spires of Arak 43.90,15.00
|tip Inside the little hanging basket.
]],
},
{
level=96,
treasure=[[Rukhmar's Image]],
spot="Spires of Arak 44.33,12.04",
item=118693,
quest=36377,
steps=[[
step
_Enter_ the hovel |goto Spires of Arak/0 44.4,12.3
clicknpc Rukhmar's Image##85206 |q 36377 |future |goto Spires of Arak 44.33,12.04
]],
},
{
level=96,
treasure=[[Relics of the Outcasts 2]],
spot="Spires of Arak 45.96,44.15",
currency="AA",
quest=36354,
condition=[[only if skill("Archaeology") >= 1]],
steps=[[
step
_Jump_ from this point on the rock to the rope tethered to the tree |goto Spires of Arak/0 46.9,43.6 < 7
_Walk across_ the rope to the treasure |goto Spires of Arak/0 46.4,43.8 < 8
click Relics of the Outcasts 2##234454 |q 36354 |future |goto Spires of Arak 45.96,44.15
]],
},
{
level=96,
treasure=[[Outcast's Pouch]],
spot="Spires of Arak 46.90,34.06",
currency="GL",
item="RANDOM",
quest=36446,
steps=[[
step
_Climb up_ onto the chain and walk across to the tree |goto Spires of Arak/0 47.2,33.9
click Outcast's Pouch##235168 |q 36446 |future |goto Spires of Arak 46.90,34.06
|tip It's on the captive outcast's belt.
]],
},
{
level=96,
treasure=[[Gift of Anzu]],
spot="Spires of Arak 46.95,40.44",
item=118238,
quest=36389,
steps=[[
step
use Elixir of Shadow Sight##115463 |only if itemcount(115463) > 0
click Gift of Anzu##234618 |q 36389 |future |goto Spires of Arak 46.95,40.44 |only if itemcount(115463) > 0
You must have an Elixir of Shadow Sight to get this treasure. You currently have none |confirm |only if itemcount(115463) < 1
]],
},
{
level=96,
treasure=[[Lost Ring]],
spot="Spires of Arak 47.77,36.12",
item=116911,
quest=36411,
steps=[[
step
_Follow_ the path |goto Spires of Arak/0 47.1,37.8
click Lost Ring##235091 |q 36411 |future |goto Spires of Arak 47.77,36.12
|tip It's a tiny ring in the middle of the water.
]],
},
{
level=96,
treasure=[[Shattered Hand Lockbox]],
spot="Spires of Arak 47.92,30.65",
item=116920,
quest=36361,
steps=[[
step
click Shattered Hand Lockbox##234456 |q 36361 |future |goto Spires of Arak 47.92,30.65
]],
},
{
level=96,
treasure=[[Offering to the Raven Mother 2]],
spot="Spires of Arak 48.35,52.61",
item=118267,
quest=36405,
steps=[[
step
_Go up_ the hill past Stonescale |goto Spires of Arak/0 49.1,52.3 < 15
click Offering to the Raven Mother 2##234746 |q 36405 |future |goto Spires of Arak 48.35,52.61
|tip It's being held by a Cultist Statue.
]],
},
{
level=96,
treasure=[[Gift of Anzu]],
spot="Spires of Arak 48.60,44.50",
item=118237,
quest=36386,
steps=[[
step
use Elixir of Shadow Sight##115463 |only if itemcount(115463) > 0
click Gift of Anzu##234618 |q 36386 |future |goto Spires of Arak 48.60,44.50 |only if itemcount(115463) > 0
You must have an Elixir of Shadow Sight to get this treasure. You currently have none |confirm |only if itemcount(115463) < 1
]],
},
{
level=96,
treasure=[[Offering to the Raven Mother 3]],
spot="Spires of Arak 48.90,54.70",
item=118267,
quest=36406,
steps=[[
step
_Go up_ the path here |goto Spires of Arak/0 48.9,55.9 < 15
click Offering to the Raven Mother 3##234748 |q 36406 |future |goto Spires of Arak 48.90,54.70
|tip It's in the nest.
]],
},
{
level=96,
treasure=[[Elixir of Shadow Sight 4]],
spot="Spires of Arak 49.0,62.6",
item=115463,
quest=36399,
steps=[[
step
_Enter_ the hovel |goto Spires of Arak/0 48.8,62.0 < 10
click Elixir of Shadow Sight 4##234734 |q 36399 |future |goto Spires of Arak 49.0,62.6
|tip It's at the edge of the straw on the ground.
]],
},
{
level=96,
treasure=[[Assassin's Spear]],
spot="Spires of Arak 49.20,37.21",
item=116835,
quest=36445,
steps=[[
step
_Go up_ the path |goto Spires of Arak 49.2,38.2
click Assassin's Spear##235143 |q 36445 |future |goto Spires of Arak 49.20,37.21
|tip It's a large spear sticking out of a corpse on the ground.
]],
},
{
level=96,
treasure=[[Iron Horde Explosives]],
spot="Spires of Arak 50.33,25.79",
currency="GR",
item=118691,
quest=36444,
steps=[[
step
_Go up_ between these ridges |goto Spires of Arak/0 50.3,24.4 < 10
_Go right_ and follow the ridge |goto Spires of Arak/0 50.6,25.1 < 10
kill Shattered Hand Lookout##85428
click Iron Horde Explosives##225731 |q 36444 |future |goto Spires of Arak 50.33,25.79
|tip It helps to drag the lookout away from the explosives so they are easier to loot.
]],
},
{
level=96,
treasure=[[Fractured Sunstone]],
spot="Spires of Arak 50.50,22.10",
item=116919,
quest=36246,
steps=[[
step
click Fractured Sunstone##234157 |q 36246 |future |goto Spires of Arak 50.50,22.10
|tip It's a tiny crystal at the base of the stone on the water side.
]],
},
{
level=96,
treasure=[[Lost Herb Satchel]],
spot="Spires of Arak 50.78,28.74",
item=109127,
quest=36247,
steps=[[
step
click Lost Herb Satchel##234159 |q 36247 |future |goto Spires of Arak 50.78,28.74
|tip Underneath the bridge.
]],
},
{
level=96,
treasure=[[Offering to the Raven Mother 4]],
spot="Spires of Arak 51.88,64.65",
item=118267,
quest=36407,
steps=[[
step
_Go up_ the hidden path |goto Spires of Arak/0 51.5,63.8 < 10
click Offering to the Raven Mother 4##235073 |q 36407 |future |goto Spires of Arak 51.88,64.65
]],
},
{
level=96,
treasure=[[Relics of the Outcasts 6]],
spot="Spires of Arak 51.89,48.92",
currency="AA",
quest=36360,
condition=[[only if skill("Archaeology") >= 1]],
steps=[[
step
_Jump onto_ the wall here |goto Spires of Arak/0 52.1,49.0 < 5
_Jump down_ onto the rope from this point |goto Spires of Arak/0 52.4,49.4 < 5
_Jump onto_ the wall at the end of the rope |goto Spires of Arak/0 51.6,49.1 < 5
click Relics of the Outcasts 6##234454 |q 36360 |future |goto Spires of Arak 51.89,48.92
]],
},
{
level=96,
treasure=[[Gift of Anzu]],
spot="Spires of Arak 52.03,19.58",
item=118239,
quest=36392,
steps=[[
step
_Go up_ the hill |goto Spires of Arak/0 51.2,20.7 < 15 |only if itemcount(115463) > 0
use Elixir of Shadow Sight##115463 |only if itemcount(115463) > 0
click Gift of Anzu##234618 |q 36392 |future |goto Spires of Arak 52.03,19.58 |only if itemcount(115463) > 0
You must have an Elixir of Shadow Sight to get this treasure. You currently have none |confirm |only if itemcount(115463) < 1
]],
},
{
level=96,
treasure=[[Misplaced Scroll]],
spot="Spires of Arak 52.47,42.80",
currency="AA",
quest=36416,
condition=[[only if skill("Archaeology") >= 1]],
steps=[[
step
|tip This treasure grants +1-4 to Archaeology skill level.
_Go up_ the ridge |goto Spires of Arak/0 54.0,47.8 < 5
_Continue up_ the path |goto Spires of Arak/0 53.8,43.9 < 5
click Misplaced Scroll##235095 |q 36416 |future |goto Spires of Arak 52.47,42.80
|tip The scroll is on the left side of the path up against the peak.
]],
},
{
level=96,
treasure=[[Elixir of Shadow Sight 6]],
spot="Spires of Arak 53.10,84.50",
item=115463,
quest=36401,
steps=[[
step
_Go to_ the edge of the water |goto Spires of Arak/0 53.6,84.1 < 20
_Swim to_ the end of the sunken wall |goto Spires of Arak 53.10,84.50 < 10
click Elixir of Shadow Sight 6##234735 |q 36401 |future |goto Spires of Arak 53.10,84.50
]],
},
{
level=96,
treasure=[[Offering to the Raven Mother 1]],
spot="Spires of Arak 53.31,55.52",
item=118267,
quest=36403,
steps=[[
step
_Go through_ the small opening |goto Spires of Arak/0 52.7,55.4 < 10
_Go up_ the hill |goto Spires of Arak/0 53.3,55.7 < 5
click Offering to the Raven Mother 1##234744 |q 36403 |future |goto Spires of Arak 53.31,55.52
|tip It's in a nest in the tree on the left of the hill.
]],
},
{
level=96,
treasure=[[Toxicfang Venom]],
spot="Spires of Arak 54.35,32.55",
item=118695,
quest=36364,
steps=[[
step
click Toxicfang Venom##234461 |q 36364 |future |goto Spires of Arak 54.35,32.55
|tip It's a green vial behind the barrel that is laying on its side.
]],
},
{
level=96,
treasure=[[Campaign Contributions]],
spot="Spires of Arak 55.53,90.86",
currency="GL",
quest=36367,
steps=[[
step
_Go up_ the hill |goto Spires of Arak 56.9,90.9
_Enter_ the building |goto Spires of Arak/0 55.7,91.0 < 15
_Go up_ the steps |goto Spires of Arak/0 55.4,91.0 < 10
click Campaign Contributions##234473 |q 36367 |future |goto Spires of Arak 55.53,90.86
|tip You must jump onto the headboard of the bed, then onto the shelves. The treasure is above the doorway.
]],
},
{
level=96,
treasure=[[Elixir of Shadow Sight 5]],
spot="Spires of Arak 55.60,22.00",
item=115463,
quest=36400,
steps=[[
step
_Go around_ the small hills towards the tree |goto Spires of Arak/0 55.4,21.7 < 10
click Elixir of Shadow Sight 5##234735 |q 36400 |future |goto Spires of Arak 55.60,22.00
|tip It's near the hand of the dead arakkoa.
]],
},
{
level=96,
treasure=[[Shattered Hand Cache]],
spot="Spires of Arak 56.23,28.81",
currency="GR",
quest=36362,
steps=[[
step
_Enter_ the hut |goto Spires of Arak/0 56.1,28.7 < 10
click Shattered Hand Cache##234458 |q 36362 |future |goto Spires of Arak 56.23,28.81
|tip It's behind the barrels and crates.
]],
},
{
level=96,
treasure=[[Smuggled Apexis Artifacts]],
spot="Spires of Arak 56.29,45.31",
currency="AA",
quest=36433,
condition=[[only if skill("Archaeology") >= 1]],
steps=[[
step
click Smuggled Apexis Artifacts##235135 |q 36433 |future |goto Spires of Arak 56.29,45.31
|tip Jump up the mushrooms growing out of the tree to reach it. You need at least 600 Archaelogy to be able to get this treasure.
]],
},
{
level=96,
treasure=[[Gift of Anzu]],
spot="Spires of Arak 57.00,79.00",
item=118241,
quest=36390,
steps=[[
step
Take the _side path_ to the altar |goto Spires of Arak/0 57.5,77.6 < 20 |only if itemcount(115463) > 0
use Elixir of Shadow Sight##115463 |only if itemcount(115463) > 0
click Gift of Anzu##234618 |q 36390 |future |goto Spires of Arak 57.00,79.00 |only if itemcount(115463) > 0
You must have an Elixir of Shadow Sight to get this treasure. You currently have none |confirm |only if itemcount(115463) < 1
]],
},
{
level=96,
treasure=[[Statue of Anzu]],
spot="Spires of Arak 57.80,22.20",
item=118694,
quest=36374,
steps=[[
step
_Go up_ the narrow trail |goto Spires of Arak/0 56.8,25.4
_Continue_ going up |goto Spires of Arak/0 58.6,23.9
clicknpc Statue of Anzu##85165 |q 36374 |future |goto Spires of Arak/0 58.0,22.3
]],
},
{
level=96,
treasure=[[Ogron Plunder]],
spot="Spires of Arak 58.70,60.24",
item=116922,
quest=36340,
steps=[[
step
click Ogron Plunder##234432 |q 36340 |future |goto Spires of Arak 58.70,60.24
|tip Bort, Wullim, and Toom will aggro when clicking the chest.
]],
},
{
level=96,
treasure=[[Sailor Zazzuk's 180-Proof Rum]],
spot="Spires of Arak 59.17,90.64",
item=116917,
quest=36366,
steps=[[
step
_Enter_ the little shack |goto Spires of Arak/0 59.1,90.6 < 5
click Sailor Zazzuk's 180-Proof Rum##234472 |q 36366 |future |goto Spires of Arak 59.17,90.64
|tip It's on the console.
]],
},
{
level=96,
treasure=[[Spray-O-Matic 5000 XT]],
spot="Spires of Arak 59.63,81.34",
currency="GR",
quest=36365,
steps=[[
step
click Spray-O-Matic 5000 XT##234471 |q 36365 |future |goto Spires of Arak 59.63,81.34
|tip In the wrecked hull of the boat.
]],
},
{
level=96,
treasure=[[Relics of the Outcasts 5]],
spot="Spires of Arak 60.21,53.91",
currency="AA",
quest=36359,
condition=[[only if skill("Archaeology") >= 1]],
steps=[[
step
_Jump onto_ the rope |goto Spires of Arak/0 60.2,53.2
click Relics of the Outcasts 5##234454 |q 36359 |future |goto Spires of Arak 60.21,53.91
|tip If you keep falling off, try jumping up the rope.
]],
},
{
level=96,
treasure=[[Nizzix's Chest]],
spot="Spires of Arak 60.80,87.80",
currency="GR",
quest=35481,
steps=[[
step
click Escape Pod##232403 |goto Spires of Arak/0 60.9,88.0 < 8
click Nizzix's Chest##232458 |q 35481 |future |goto Spires of Arak 60.80,87.80
|tip The pod is at the edge of the water. This will free Nizzix who will walk ashore and drop the chest.
]],
},
{
level=96,
treasure=[[Shredder Parts]],
spot="Spires of Arak 60.86,84.61",
currency="GR",
quest=36456,
steps=[[
step
click Shredder Parts##235310 |q 36456 |future |goto Spires of Arak 60.86,84.61
|tip In the back of the wagon on the open crate.
]],
},
{
level=96,
treasure=[[Offering to the Raven Mother 5]],
spot="Spires of Arak 60.97,63.87",
item=118267,
quest=36410,
steps=[[
step
_Go up_ the hidden path |goto Spires of Arak/0 61.9,64.0 < 10
click Offering to the Raven Mother 5##235090 |q 36410 |future |goto Spires of Arak 60.97,63.87
]],
},
{
level=96,
treasure=[[Gift of Anzu]],
spot="Spires of Arak 61.10,55.37",
item=118240,
quest=36381,
steps=[[
step
use Elixir of Shadow Sight##115463 |only if itemcount(115463) > 0
click Gift of Anzu##234618 |q 36381 |future |goto Spires of Arak 61.10,55.37 |only if itemcount(115463) > 0
You must have an Elixir of Shadow Sight to get this treasure. You currently have none |confirm |only if itemcount(115463) < 1
]],
},
{
level=96,
treasure=[[Mysterious Mushrooms]],
spot="Spires of Arak 63.58,67.37",
item=109127,
quest=36454,
steps=[[
step
_Go between_ these two ridges and continue up |goto Spires of Arak/0 63.2,66.5
click Mysterious Mushrooms##235300 |q 36454 |future |goto Spires of Arak 63.58,67.37
]],
},
{
level=96,
treasure=[[Waterlogged Satchel]],
spot="Spires of Arak 66.47,56.53",
currency="GL",
item="RANDOM",
quest=36455,
steps=[[
step
_Swim through_ the channel |goto Spires of Arak/0 66.1,58.1
click Waterlogged Satchel##235307 |q 36455 |future |goto Spires of Arak 66.47,56.53
|tip It's at the bottom of the water.
]],
},
{
level=96,
treasure=[[Relics of the Outcasts 4]],
spot="Spires of Arak 67.37,39.83",
currency="AA",
quest=36356,
condition=[[only if skill("Archaeology") >= 1]],
steps=[[
step
_Mount up_ and jump from this point onto the wall |goto Spires of Arak/0 68.0,39.6 < 5
_Follow_ the wall to the treasure |goto Spires of Arak/0 67.8,40.0 < 3
click Relics of the Outcasts 4##234454 |q 36356 |future |goto Spires of Arak 67.37,39.83
]],
},
{
level=96,
treasure=[[Sethekk Idol]],
spot="Spires of Arak 68.33,38.93",
item=118692,
quest=36375,
steps=[[
step
_Go up_ the path |goto Spires of Arak/0 67.3,38.6
clicknpc Sethekk Idol##85190 |q 36375 |future |goto Spires of Arak 68.33,38.93
|tip It's a skeletal serpent on the altar.
]],
},
{
level=96,
treasure=[[Coinbender's Payment]],
spot="Spires of Arak 68.42,88.98",
currency="GL",
quest=36453,
steps=[[
step
click Coinbender's Payment##235299 |q 36453 |future |goto Spires of Arak 68.42,88.98
|tip After you swim out to the spot, swim down to the ocean floor and claim your treasure.
]],
},
{
level=96,
treasure=[[Elixir of Shadow Sight 3]],
spot="Spires of Arak 69.20,43.30",
item=115463,
quest=36398,
steps=[[
step
_Go up_ the wall and drop down |goto Spires of Arak/0 68.9,43.4 < 10
click Elixir of Shadow Sight 3##234705 |q 36398 |future |goto Spires of Arak 69.20,43.30
|tip It's in the corner of the tree and the wall.
]],
},
{
level=96,
treasure=[[Sethekk Ritual Brew]],
spot="Spires of Arak 71.64,48.59",
item=117437,
quest=36450,
steps=[[
step
_Go up_ the path |goto Spires of Arak/0 71.2,48.9
click Sethekk Ritual Brew##235282 |q 36450 |future |goto Spires of Arak 71.64,48.59
]],
},
{
level=94,
treasure=[[Soulbinder's Reliquary]],
spot="Talador/14 28.2,34.9",
currency="GL",
item=117570,
quest=34254,
steps=[[
step
_Enter_ the crypt |goto Talador/14 47.4,86.7 < 15
_Go left_ into the room |goto Talador/14 38.7,51.6 < 15
click Soulbinder's Reliquary##228018 |q 34254 |future |goto Talador/14 28.2,34.9
|tip It's a stone chest with symbols written on it.
]],
},
{
level=94,
treasure=[[Gift of the Ancients]],
spot="Talador 28.39,74.19",
item=118686,
quest=36829,
steps=[[
step
_Go up_ the trail |goto Talador/0 27.3,75.9 < 20
_Enter_ the cave |goto Talador/0 27.9,75.4 < 15
clicknpc Statue##86486
click Gift of the Ancients##236483 |q 36829 |future |goto Talador 28.39,74.19
|tip Click the statues to make all three face inward.
]],
},
{
level=94,
treasure=[[Bonechewer Remnants]],
spot="Talador 33.29,76.80",
currency="GL",
quest=34259,
steps=[[
step
_Enter_ the hut |goto Talador/0 33.6,76.2
click Bonechewer Remnants##228023 |q 34259 |future |goto Talador 33.29,76.80
|tip It's a small brown chest found inside the back of the hut.
]],
},
{
level=94,
treasure=[[Farmer's Bounty]],
spot="Talador 35.41,96.56",
currency="GL",
quest=34249,
steps=[[
step
_Follow_ the road |goto Talador/0 37.8,95.9
_Go around_ the building |goto Talador/0 35.9,96.8
click Farmer's Bounty##228013 |q 34249 |future |goto Talador 35.41,96.56
|tip It's the barrel at the end of the pier.
]],
},
{
level=94,
treasure=[[Aarko's Family Treasure]],
spot="Talador 36.53,95.98",
currency="GR",
item=117567,
quest=34182,
steps=[[
step
_Follow_ the road |goto Talador/0 36.5,96.0
talk Aarko##77664
Ask him: "_Do you need help?_"
from Shadow Raider##77673+, Shadow Pillager##88039+, Shadow Felcaster##88040+
kill Surok Darkstorm##77677
click Aarko's Family Treasure##227793 |q 34182 |future |goto Talador 36.53,95.98
|tip It's a purple chest that spawns next to Aarko after defeating the waves of enemies.
]],
},
{
level=94,
treasure=[[Bonechewer Spear]],
spot="Talador 37.60,74.90",
currency="GR",
item=112371,
quest=34148,
steps=[[
step
_Enter_ the cave |goto Talador/0 36.8,75.3
kill Viperlash##77564
click Bonechewer Spear##227654 |q 34148 |future |goto Talador 37.60,74.90
|tip The spear will drop after Viperlash dies. Viperlash is a 95 elite.
]],
},
{
level=94,
treasure=[[Light of the Sea]],
spot="Talador 38.19,12.42",
access="Completionist",
currency="GL",
quest=34258,
steps=[[
step
_Follow_ the pier |goto Talador/0 35.4,17.1
click Light of the Sea##228022 |q 34258 |future |goto Talador 38.19,12.42
|tip It's a bright white sphere.
]],
},
{
level=94,
treasure=[[Treasure of Ango'rosh]],
spot="Talador 38.33,84.50",
item=116119,
quest=34257,
steps=[[
step
_Go to_ the ruins |goto Talador/0 38.8,83.6
click Treasure of Ango'rosh##228021 |q 34257 |future |goto Talador 38.33,84.50
|tip It is a small gold chest sitting atop a rock.
]],
},
{
level=94,
treasure=[[Sparkling Pool]],
spot="Talador 39.30,41.72",
currency="GR",
item=112623,
quest=34207,
steps=[[
step
Fish from the Sparkling Pool |q 34207 |future |goto Talador 39.30,41.72 |cast Fishing##131474
]],
},
{
level=94,
treasure=[[Teroclaw Nest 9]],
spot="Talador 39.80,76.70",
item=112699,
quest=35162,
steps=[[
step
If the nest is not here, click here to try _another location_ |confirm
click Teroclaw Nest 9##230643 |q 35162 |future |goto Talador 39.80,76.70
|tip It's a nest of small purple and pink eggs sitting on the ground.
]],
},
{
level=94,
treasure=[[Yuuri's Gift]],
spot="Talador 40.60,89.50",
currency="GR",
quest=34140,
condition=[[only if completedq(33530)]],
steps=[[
step
click Yuuri's Gift##227587 |q 34140 |future |goto Talador 40.60,89.50
|tip In the back of the small wagon.
]],
},
{
level=94,
treasure=[[Relic of Telmor]],
spot="Talador 46.96,91.74",
currency="GL",
item=116128,
quest=34256,
steps=[[
step
_Enter_ the building |goto Talador/0 47.9,90.7 < 20
click Relic of Telmor##228020 |q 34256 |future |goto Talador 46.96,91.74
|tip It's a purple chest sitting on the ground inside the building.
]],
},
{
level=94,
treasure=[[Luminous Shell]],
spot="Talador 52.56,29.54",
currency="GL",
item=116132,
quest=34235,
steps=[[
step
click Luminous Shell##227954 |q 34235 |future |goto Talador 52.56,29.54
|tip On the far shore across the small stream.
]],
},
{
level=94,
treasure=[[Ketya's Stash]],
spot="Talador 53.97,27.69",
currency="GR",
item=116121,
quest=34290,
steps=[[
step
_Enter_ the cave |goto Talador/0 53.3,26.1
Avoid the beams of light and totem circles
click Ketya's Stash##228570 |q 34290 |future |goto Talador 53.97,27.69
|tip It's a large silver chest found on a platform at the back of the cave.
]],
},
{
level=94,
treasure=[[Draenei Weapons]],
spot="Talador 55.25,66.71",
currency="GL",
item=116118,
quest=34253,
steps=[[
step
click Draenei Weapons##228017 |q 34253 |future |goto Talador 55.25,66.71
|tip It's the weapon rack near the anvil.
]],
},
{
level=94,
treasure=[[Isaari's Cache]],
spot="Talador 57.20,75.40",
currency="GR",
item=117563,
quest=34134,
steps=[[
step
Collecting this Treasure may flag you for PvP
click Isaari's Cache##239198 |q 34134 |future |goto Talador 57.20,75.40
|tip It's a purple chest sitting at the foot of a bench.
]],
},
{
level=94,
treasure=[[Foreman's Lunchbox]],
spot="Talador 57.36,28.66",
item=116120,
quest=34238,
steps=[[
step
_Enter_ Archenon Siegeyard |goto Talador/0 57.2,29.7
_Jump up_ onto this scaffolding |goto Talador/0 57.6,28.2 < 3
_Jump up_ onto the right board and then the back of the scaffold, then over to the first pillar |goto Talador/0 57.6,28.4 < 2
_Jump to_ the second pillar |goto Talador/0 57.5,28.5 < 2
_Jump onto_ the last scaffold |goto Talador 57.36,28.66 < 3
click Foreman's Lunchbox##227956 |q 34238 |future |goto Talador 57.36,28.66
|tip It's a small brown box found sitting on the upper level of a group of scaffolding.
]],
},
{
level=94,
treasure=[[Deceptia's Smoldering Boots]],
spot="Talador 58.90,12.00",
item=108743,
quest=33933,
steps=[[
step
click Deceptia's Smoldering Boots##226976 |q 33933 |future |goto Talador 58.90,12.00
|tip A small pair of boots in the ruined camp.
]],
},
{
currency="GR",
level=94,
treasure=[[Norana's Cache]],
spot="Talador 61.10,71.70",
access="Completionist",
item=117563,
quest=34116,
steps=[[
step
Norana's Cache treasure requires you to save 4 people from Cocoons. Once saved, you must go back to Sunsworn Camp to loot the treasure, even though it will be marked as completed
The treasure can be found _here_ at [61.1,71.7]
confirm |q 34116 |future
step
Open Cocoons and Save 4 Friends |goto Talador 61.2,84.4
|tip As you find friendly NPC's, they will tell you how many more of their friends you need to save from the cocoons.
click Norana's Cache##239194 |q 34116 |future |goto Talador 61.10,71.70
|tip It's a brown and silver chest found after saving 4 NPC's from cocoons.
Don't forget to loot the treasure _found here_ |goto Talador 61.10,71.70
]],
},
{
level=94,
treasure=[[Amethyl Crystal]],
spot="Talador 62.08,32.38",
currency="GR, GL",
item=116131,
quest=34236,
steps=[[
step
click Amethyl Crystal##227955 |q 34236 |future |goto Talador 62.08,32.38
|tip It's a pink crystal at the bottom of the water.
]],
},
{
level=94,
treasure=[[Barrel of Fish]],
spot="Talador 62.41,47.97",
currency="GR",
quest=34252,
steps=[[
step
click Barrel of Fish##228016 |q 34252 |future |goto Talador 62.41,47.97
|tip On the dock with two small boats.
]],
},
{
level=94,
treasure=[[Iron Box]],
spot="Talador 64.58,79.20",
currency="GL",
item=117571,
quest=34251,
steps=[[
step
_Enter_ the building |goto Talador/0 65.2,79.1
click Iron Box##228015 |q 34251 |future |goto Talador 64.58,79.20
|tip It's a small gray lockbox found against the wall.
]],
},
{
level=94,
treasure=[[Rook's Tacklebox]],
spot="Talador 64.90,13.30",
currency="GL",
item=116117,
quest=34232,
steps=[[
step
_Cross_ the waterfall |goto Talador/0 65.6,14.3 < 15
click Rook's Tacklebox##227951 |q 34232 |future |goto Talador 64.90,13.30
|tip It's an open brown box with lures and bobbers found near the water.
]],
},
{
level=94,
treasure=[[Webbed Sac]],
spot="Talador 65.44,88.60",
currency="GL",
quest=34255,
steps=[[
step
_Enter_ the cave |goto Talador/0 61.3,84.2 < 15
_Go up_ the ramp |goto Talador/0 64.5,86.9 < 15
click Webbed Sac##228019 |q 34255 |future |goto Talador 65.44,88.60
|tip It's hanging from a crystal suspended by webbing.
]],
},
{
level=94,
treasure=[[Jug of Aged Ironwine]],
spot="Talador 65.47,11.37",
item=117568,
quest=34233,
steps=[[
step
_Drop down_ at the waterfall |goto Talador/0 65.47,11.37 < 15
_Drop down_ and enter the cave |goto Talador/0 64.8,9.3 < 10
click Jug of Aged Ironwine##227953 |q 34233 |future |goto Talador 65.47,11.37
|tip It's a light-brown jug sitting in shallow water at the back of the cave.
]],
},
{
level=94,
treasure=[[Rusted Lockbox]],
spot="Talador 65.96,85.13",
currency="GL",
item="RANDOM",
quest=34276,
steps=[[
step
_Enter_ the cave |goto Talador/0 61.4,84.2 < 15
_Enter_ the main cavern |goto Talador/0 63.6,84.8 < 15
_Swim down_ until you see the treasure |goto Talador 65.96,85.13 < 20
click Rusted Lockbox##228483 |q 34276 |future |goto Talador 65.96,85.13
|tip It's all the way at the bottom.
]],
},
{
level=94,
treasure=[[Curious Deathweb Egg]],
spot="Talador 66.50,86.94",
item=117569,
quest=34239,
steps=[[
step
_Enter_ the cave |goto Talador/0 61.3,84.2
_Go to_ the main cavern |goto Talador/0 65.4,86.2
click Curious Deathweb Egg##227996 |q 34239 |future |goto Talador 66.50,86.94
|tip It is a purple, motionless egg sack found behind the large crystal formation towards the back of the cave.
]],
},
{
level=94,
treasure=[[Lightbearer]],
spot="Talador 68.80,56.20",
item=109192,
quest=34101,
steps=[[
step
click Lightbearer##227527 |q 34101 |future |goto Talador 68.80,56.20
|tip It's by the tree next to the wall.
]],
},
{
currency="AC",
level=94,
treasure=[[Burning Blade Cache]],
spot="Talador 70.10,07.00",
access="Completionist",
item=120945,
quest=36937,
steps=[[
step
_Enter_ Bladefury's Command |goto Talador/0 68.3,5.6
_Follow_ the road right |goto Talador/0 69.5,4.5
_Enter_ the building |goto Talador/0 69.9,6.5
click Burning Blade Cache##236935 |q 36937 |future |goto Talador 70.10,07.00
|tip It's a locked brown chest sitting against the wall.
]],
},
{
level=94,
treasure=[[Bright Coin]],
spot="Talador 73.52,51.37",
currency="GL",
item=116127,
quest=34471,
steps=[[
step
click Bright Coin##229354 |q 34471 |future |goto Talador 73.52,51.37
|tip It's underwater beneath the bridge.
]],
},
{
level=94,
treasure=[[Iron Scout]],
spot="Talador 75.00,36.00",
currency="GR",
quest=33649,
steps=[[
step
clicknpc Iron Scout##75644
Choose: "_Search the body._" |q 33649 |future |goto Talador 75.00,36.00
|tip It's an orc corpse laying on the ground.
]],
},
{
level=94,
treasure=[[Keluu's Belongings]],
spot="Talador 75.68,41.40",
currency="GL",
quest=34261,
steps=[[
step
click Keluu's Belongings##228025 |q 34261 |future |goto Talador 75.68,41.40
|tip It's under the bridge next to the stream.
]],
},
{
level=94,
treasure=[[Relic of Aruuna]],
spot="Talador 75.78,44.72",
currency="GL",
item=116128,
quest=34250,
steps=[[
step
_Enter_ the building |goto Talador/0 76.1,44.4 < 10
click Relic of Aruuna##228014 |q 34250 |future |goto Talador 75.78,44.72
|tip It's a small chest found on the upper platform of the building.
]],
},
{
level=94,
treasure=[[Charred Sword]],
spot="Talador 77.04,49.96",
item=116116,
quest=34248,
steps=[[
step
click Charred Sword##228012 |q 34248 |future |goto Talador 77.04,49.96
|tip It's a large sword stuck in the ground.
]],
},
{
level=94,
treasure=[[Pure Crystal Dust]],
spot="Talador 78.21,14.71",
currency="GL",
item=117572,
quest=34263,
steps=[[
step
_Enter_ the cave |goto Talador/0 75.6,22.0
_Go up_ the ramp |goto Talador/0 77.9,18.7
_Continue up and around_ the top level |goto Talador/0 79.3,16.0
click Pure Crystal Dust##228026 |q 34263 |future |goto Talador 78.21,14.71
|tip It's a purple pile next to the broken cart.
]],
},
{
level=94,
treasure=[[Aruuna Mining Cart]],
spot="Talador 81.84,34.94",
item=109118,
quest=34260,
steps=[[
step
_Enter_ the mine |goto Talador/0 78.5,35.5
_Continue right_ into the mine |goto Talador/0 80.4,34.8
_Go left_ in the main cave |goto Talador/0 81.2,35.4
_Drop down_ here |goto Talador/0 81.8,35.6
click Aruuna Mining Cart##228024 |q 34260 |future |goto Talador 81.84,34.94
|tip It's a wooden cart full of purple crystals.
]],
},
{
level=100,
treasure=[[Sacrificial Blade]],
spot="Tanaan Jungle/0 46.9,42.2",
item=127328,
quest=38776,
steps=[[
step
click Sacrificial Blade##241760 |quest 38776 |goto Tanaan Jungle/0 46.9,42.2 |future
|tip It's on the right-hand side of the fel pool.
]],
},
{
level=100,
treasure=[[Axe of Weeping Wolf]],
spot="Tanaan Jungle 15.00,54.40",
item=127325,
quest=38754,
steps=[[
step
_Enter_ the building |goto Tanaan Jungle/0 15.4,54.9 < 10
click Axe of Weeping Wolf##241692 |quest 38754 |goto Tanaan Jungle 15.00,54.40 |future
|tip The axe is hanging from a dead orc under the steps.
]],
},
{
level=100,
treasure=[[Weathered Axe]],
spot="Tanaan Jungle 15.90,49.80",
item=127324,
quest=38208,
steps=[[
step
_Enter_ the cave |goto Tanaan Jungle/0 17.1,50.6 < 10
_Go through_ the left passage |goto Tanaan Jungle/0 16.4,48.8 < 8
click Weathered Axe##240289 |quest 38208 |goto Tanaan Jungle 15.90,49.80 |future
]],
},
{
level=100,
treasure=[[The Eye of Grannok]],
spot="Tanaan Jungle 15.90,59.30",
item=128220,
quest=38757,
steps=[[
step
_Enter_ the building |goto Tanaan Jungle/0 16.4,58.6 < 10
_Go up_ the first flight of steps |goto Tanaan Jungle 15.90,59.30
click The Eye of Grannok##241713 |quest 38757 |goto Tanaan Jungle 15.90,59.30 |future
|tip It's located next to the second flight of steps.
]],
},
{
level=100,
treasure=[[Stolen Captain's Chest]],
spot="Tanaan Jungle 17.00,53.00",
currency="GL",
item=128219,
quest=38283,
steps=[[
step
click Stolen Captain's Chest##240543 |quest 38283 |goto Tanaan Jungle 17.00,53.00 |future
|tip The chest is left of the Felsworn Deserter corpse by the big tree.
]],
},
{
level=100,
treasure=[[Spoils of War]],
spot="Tanaan Jungle 17.30,56.90",
currency="250 GR",
quest=38755,
steps=[[
step
click Spoils of War##241699 |quest 38755 |goto Tanaan Jungle 17.30,56.90 |future
|tip The chest is inside the small hut.
]],
},
{
level=100,
treasure=[[The Blade of Kra'nak]],
spot="Tanaan Jungle 19.30,40.90",
item=127338,
quest=38320,
steps=[[
step
_Enter_ the Ruins of Kra'nak |goto Tanaan Jungle/0 24.9,39.8 < 8
_Go through_ the left passage |goto Tanaan Jungle/0 22.0,40.5 < 8
_Go to_ the water's edge |goto Tanaan Jungle/0 19.8,40.8
click The Blade of Kra'nak##240577 |quest 38320 |goto Tanaan Jungle 19.30,40.90 |future
|tip It's underwater in the pond.
]],
},
{
level=100,
treasure=[[Bleeding Hollow Warchest]],
spot="Tanaan Jungle 22.00,47.80",
currency="50 GR",
quest=38678,
steps=[[
step
_Go up_ the path |goto Tanaan Jungle/0 26.4,48.0 < 15
_Go to_ the crossroads |goto Tanaan Jungle/0 23.3,48.7 < 15
_Enter_ the hut |goto Tanaan Jungle/0 22.1,48.4 < 8
click Bleeding Hollow Warchest##241560 |quest 38678 |goto Tanaan Jungle 22.00,47.80 |future
]],
},
{
level=100,
treasure=[[Borrowed Enchanted Spyglass]],
spot="Tanaan Jungle 25.30,50.20",
access="Completionist",
item=128222,
quest=38735,
steps=[[
step
_Go up_ the path |goto Tanaan Jungle/0 26.4,48.0 < 15
_Go around_ the tree stump |goto Tanaan Jungle/0 24.8,49.3 < 8
click Grappling Hook and Rope##241659 |goto Tanaan Jungle/0 24.7,49.8 < 5
click Borrowed Enchanted Spyglass##241664 |quest 38735 |goto Tanaan Jungle 25.30,50.20 |future
|tip It's at the top of the watchtower.
]],
},
{
level=100,
treasure=[[Looted Bleeding Hollow Treasure]],
spot="Tanaan Jungle 26.50,63.00",
currency="150 AC, GR",
quest=38741,
steps=[[
step
_Follow_ the path towards the tower |goto Tanaan Jungle/0 25.9,60.6 < 20
click Grappling Hook and Rope##241659 |goto Tanaan Jungle/0 26.4,62.0 < 5
click Looted Bleeding Hollow Treasure##241565 |quest 38741 |goto Tanaan Jungle 26.50,63.00 |future
]],
},
{
level=100,
treasure=[[Looted Bleeding Hollow Treasure]],
spot="Tanaan Jungle 26.80,44.10",
item=127709,
quest=38683,
condition=[[only if haveq(38453) or haveq(38560)]],
steps=[[
step
_Go up_ the path |goto Tanaan Jungle/0 27.6,47.4
_Follow_ the right path to the fork |goto Tanaan Jungle/0 27.6,44.7
click Looted Bleeding Hollow Treasure##241565 |quest 38683 |goto Tanaan Jungle 26.80,44.10 |future
]],
},
{
level=100,
treasure=[[Jewel of Hellfire]],
spot="Tanaan Jungle 28.70,23.30",
access="Completionist",
item=127668,
quest=38334,
steps=[[
step
click Jewel of Hellfire##240580 |quest 38334 |goto Tanaan Jungle 28.70,23.30 |future
|tip This treasure is on the shore. You will need to swim from Ironhold Harbor to reach it.
]],
},
{
level=100,
treasure=[[Partially Mined Apexis Crystal]],
spot="Tanaan Jungle 28.80,34.60",
currency="150 AC",
quest=38863,
steps=[[
step
_Enter_ the cave |goto Tanaan Jungle/0 29.2,31.1 < 8
click Partially Mined Apexis Crystal##242249 |quest 38863 |goto Tanaan Jungle 28.80,34.60 |future
|tip Climb the rocks to access the treasure on the side of the cave.
]],
},
{
level=100,
treasure=[[Polished Crystal]],
spot="Tanaan Jungle 30.40,72.00",
item=127389,
quest=38629,
steps=[[
step
_Go up_ the steps |goto Tanaan Jungle/0 30.6,71.0 < 8
click Polished Crystal##225774 |quest 38629 |goto Tanaan Jungle 30.40,72.00 |future
]],
},
{
level=100,
treasure=[[Jeweled Arakkoa Effigy]],
spot="Tanaan Jungle 31.40,31.10",
access="Completionist",
item=127413,
quest=38732,
steps=[[
step
_Go up_ the hill |goto Tanaan Jungle/0 26.0,33.8 < 8
_Cross_ the platform |goto Tanaan Jungle/0 28.7,32.7 < 15
_Jump_ from this point to the first small ledge on the side of the mountain |goto Tanaan Jungle/0 30.2,32.1 < 5
_Jump again_ to the next point |goto Tanaan Jungle/0 30.6,31.8 < 5
_Climb_ the small hill |goto Tanaan Jungle/0 30.9,31.3 < 10
click Jeweled Arakkoa Effigy##241657 |quest 38732 |goto Tanaan Jungle 31.40,31.10 |future
|tip It's on an altar.
]],
},
{
level=100,
treasure=[[Tome of Secrets]],
spot="Tanaan Jungle 32.40,70.40",
item=127670,
quest=38426,
steps=[[
step
_Go up_ the steps |goto Tanaan Jungle/0 30.6,71.0 < 8
_Enter_ the small building |goto Tanaan Jungle/0 32.1,70.8 < 5
click Tome of Secrets##240855 |quest 38426 |goto Tanaan Jungle 32.40,70.40 |future
]],
},
{
level=100,
treasure=[[Stashed Iron Sea Booty #1]],
spot="Tanaan Jungle 33.90,78.10",
access="Completionist",
currency="25 GR, GL",
quest=38760,
steps=[[
step
_Enter_ the cave |goto Tanaan Jungle/0 37.4,75.9 < 10
_Go through_ the left passage |goto Tanaan Jungle/0 36.8,78.8 < 10
_Continue around_ the passage |goto Tanaan Jungle/0 34.6,80.3 < 10
_Jump across_ the rocks |goto Tanaan Jungle/0 35.0,78.0 < 5
_Jump over_ the gap |goto Tanaan Jungle/0 34.7,78.0 < 8
click Stashed Iron Sea Booty #1##241714 |quest 38760 |goto Tanaan Jungle 33.90,78.10 |future
]],
},
{
level=100,
treasure=[[Stashed Iron Sea Booty #3]],
spot="Tanaan Jungle 34.40,78.30",
access="Completionist",
currency="25 GR, GL",
quest=38762,
steps=[[
step
_Enter_ the cave |goto Tanaan Jungle/0 37.4,75.9 < 10
_Go through_ the left passage |goto Tanaan Jungle/0 36.8,78.8 < 10
_Continue around_ the passage |goto Tanaan Jungle/0 34.6,80.3 < 10
_Jump across_ the rocks |goto Tanaan Jungle/0 35.0,78.0 < 5
_Jump over_ the gap |goto Tanaan Jungle/0 34.7,78.0 < 8
click Stashed Iron Sea Booty #3##241716 |quest 38762 |goto Tanaan Jungle 34.40,78.30 |future
]],
},
{
level=100,
treasure=[[Skull of the Mad Chief]],
spot="Tanaan Jungle 34.70,34.60",
access="Completionist",
item=127669,
quest=38742,
steps=[[
step
_Enter_ the cave |goto Tanaan Jungle/0 32.5,37.3 < 8
_Go down_ the spiraling path and into the cave |goto Tanaan Jungle/0 32.1,37.3 < 8
_Continue along_ the path |goto Tanaan Jungle/0 32.5,38.4 < 10
_Follow_ the path down to the next level |goto Tanaan Jungle/0 32.7,37.3 < 8
_Go through_ the side passage |goto Tanaan Jungle/0 33.8,36.3 < 10
click Skull of the Mad Chief##241674 |quest 38742 |goto Tanaan Jungle 34.70,34.60 |future
]],
},
{
level=100,
treasure=[[Stashed Iron Sea Booty #2]],
spot="Tanaan Jungle 35.00,77.30",
access="Completionist",
currency="25 GR, GL",
quest=38761,
steps=[[
step
_Enter_ the cave |goto Tanaan Jungle/0 37.4,75.9 < 10
_Go through_ the left passage |goto Tanaan Jungle/0 36.8,78.8 < 10
_Continue around_ the passage |goto Tanaan Jungle/0 34.6,80.3 < 10
_Jump across_ the rocks |goto Tanaan Jungle/0 35.0,78.0 < 5
_Jump over_ the gap |goto Tanaan Jungle/0 34.7,78.0 < 8
_Jump across_ to the small boulder |goto Tanaan Jungle/0 34.8,77.5 < 5
click Stashed Iron Sea Booty #2##241715 |quest 38761 |goto Tanaan Jungle 35.00,77.30 |future
]],
},
{
level=100,
treasure=[[Ironbeard's Treasure]],
spot="Tanaan Jungle 35.90,78.60",
access="Completionist",
currency="GL, 100 GR",
quest=38758,
steps=[[
step
_Enter_ the cave |goto Tanaan Jungle/0 37.4,75.9 < 10
_Go through_ the right passage |goto Tanaan Jungle/0 35.4,76.4 < 10
_Jump into_ the water |goto Tanaan Jungle/0 34.8,77.0 < 12
_Swim underwater_ to the barrels |goto Tanaan Jungle/0 35.1,78.4 < 12
_Jump up_ the rocks |goto Tanaan Jungle/0 35.4,78.4 < 5
_Jump onto_ the broken stairs |goto Tanaan Jungle/0 35.9,78.9 < 5
click Ironbeard's Treasure##241712 |quest 38758 |goto Tanaan Jungle 35.90,78.60 |future
]],
},
{
level=100,
treasure=[[Strange Sapphire]],
spot="Tanaan Jungle 36.30,43.50",
item=127397,
quest=37956,
steps=[[
step
_Go through_ the barricade |goto Tanaan Jungle/0 38.4,39.5 < 15
_Go up_ the little hill |goto Tanaan Jungle/0 36.6,43.1 < 10
click Strange Sapphire##240003 |quest 37956 |goto Tanaan Jungle 36.30,43.50 |future
|tip It's in the far right cage.
]],
},
{
level=100,
treasure=[[Pale Removal Equipment]],
spot="Tanaan Jungle 37.05,46.30",
currency="75 GR",
quest=38640,
steps=[[
step
_Enter_ Ironmonger's Hold |goto Tanaan Jungle/0 38.7,44.2 < 15
_Go between_ the crates |goto Tanaan Jungle/0 37.2,46.0 < 10
click Pale Removal Equipment##241524 |quest 38640 |goto Tanaan Jungle 37.05,46.30 |future
]],
},
{
level=100,
treasure=[[Brazier of Awakening]],
spot="Tanaan Jungle 37.70,80.70",
item=127770,
quest=38788,
steps=[[
step
_Go down_ the short path |goto Tanaan Jungle/0 38.6,79.6 < 12
click Brazier of Awakening##241775 |quest 38788 |goto Tanaan Jungle 37.70,80.70 |future
|tip It's inside the hut.
]],
},
{
level=100,
treasure=[[Snake Charmer's Flute]],
spot="Tanaan Jungle 40.60,79.80",
item=127333,
quest=38638,
steps=[[
step
click Snake Charmer's Flute##241521 |quest 38638 |goto Tanaan Jungle 40.60,79.80 |future
|tip It's located next to the skeleton and baskets at the edge of the cliff.
]],
},
{
level=100,
treasure=[[The Perfect Blossom]],
spot="Tanaan Jungle 40.80,75.50",
access="Completionist",
item=127766,
quest=38639,
steps=[[
step
Get the Pollen Protection buff |havebuff 136074 |only if not completedq(38639)
|tip Click Mysterious Fruit around the area until you receive the buff.
click The Perfect Blossom##241522 |quest 38639 |goto Tanaan Jungle 40.80,75.50 |future
|tip It's hidden under the giant tree.
]],
},
{
level=100,
treasure=[[Forgotten Champion's Blade]],
spot="Tanaan Jungle 41.60,73.30",
item=127339,
quest=38657,
steps=[[
step
click Forgotten Champion's Blade##241533 |quest 38657 |goto Tanaan Jungle 41.60,73.30 |future
|tip It's sticking out of the dead tree.
]],
},
{
level=100,
treasure=[[Dazzling Rod]],
spot="Tanaan Jungle 42.80,35.40",
item=127859,
quest=38822,
steps=[[
step
_Enter_ the building |goto Tanaan Jungle/0 43.0,35.8 < 10
_Take the stairs_ all the way up |goto Tanaan Jungle/0 42.9,35.0 < 5
click Dazzling Rod##241848 |quest 38822 |goto Tanaan Jungle 42.80,35.40 |future
|tip It is found at the very top of the tower.
]],
},
{
level=100,
treasure=[[The Commander's Shield]],
spot="Tanaan Jungle 43.20,38.30",
item=127348,
quest=38821,
steps=[[
step
_Enter_ the building |goto Tanaan Jungle/0 42.5,37.8 < 5
click The Commander's Shield##241847 |quest 38821 |goto Tanaan Jungle 43.20,38.30 |future
|tip It's on the back wall next to the right side torch.
]],
},
{
level=100,
treasure=[[Mysterious Corrupted Obelisk]],
spot="Tanaan Jungle 46.20,72.80",
item=128320,
quest=38739,
condition=[[only if completedq(38463) or completedq(39394)]],
steps=[[
step
_Enter_ the cave |goto Tanaan Jungle/0 47.3,70.6 < 10 |walk
click Mysterious Corrupted Obelisk##241666 |quest 38739 |goto Tanaan Jungle 46.20,72.80 |future
]],
},
{
level=100,
treasure=[[Book of Zyzzix]],
spot="Tanaan Jungle 46.90,36.60",
item=127347,
quest=38771,
steps=[[
step
_Go up_ the path |goto Tanaan Jungle/0 46.9,42.2 < 15
click Book of Zyzzix##241742 |quest 38771 |goto Tanaan Jungle 46.90,36.60 |future
]],
},
{
level=100,
treasure=[[Fel-Drenched Satchel]],
spot="Tanaan Jungle 46.90,44.40",
item=128218,
quest=38773,
steps=[[
step
click Fel-Drenched Satchel##241745 |quest 38773 |goto Tanaan Jungle 46.90,44.40 |future
|tip It's in the back of the partially submerged broken wagon.
]],
},
{
level=100,
treasure=[[Crystalized Essence of Elements]],
spot="Tanaan Jungle 47.90,70.40",
item=127329,
quest=38705,
steps=[[
step
_Go up_ the path and onto the big rock |goto Tanaan Jungle/0 47.8,70.8 < 10
click Crystalized Essence of Elements##241605 |quest 38705 |goto Tanaan Jungle 47.90,70.40 |future
]],
},
{
level=100,
treasure=[[Looted Mystical Staff]],
spot="Tanaan Jungle 48.50,75.20",
access="Completionist",
item=127337,
quest=38814,
steps=[[
step
_Enter_ the cave |goto Tanaan Jungle/0 44.6,77.6 < 5
_Follow_ the tunnel |goto Tanaan Jungle/0 46.8,76.3 < 5
_Go up_ the ramp on the right |goto Tanaan Jungle/0 49.1,78.8 < 8
_Go down_ the passage and jump onto the rocks |goto Tanaan Jungle/0 51.0,75.7 < 5
Carefully _walk across_ the first vine |goto Tanaan Jungle/0 50.2,75.7 < 5
_Walk across_ the second vine |goto Tanaan Jungle/0 49.5,74.9 < 5
_Jump over_ the gap to the platform |goto Tanaan Jungle/0 49.1,75.2 < 5
click Looted Mystical Staff##241841 |quest 38814 |goto Tanaan Jungle 48.50,75.20 |future
]],
},
{
level=100,
treasure=[[Bleeding Hollow Mushroom Stash]],
spot="Tanaan Jungle 49.90,76.80",
access="Completionist",
item=128223,
quest=38809,
steps=[[
step
_Enter_ the cavern |goto Tanaan Jungle/0 44.6,77.5 < 8
_Follow_ the tunnel |goto Tanaan Jungle/0 46.8,76.3 < 8
_Go up_ the vine |goto Tanaan Jungle/0 49.3,77.1 < 5
_Jump down_ to the platform with the barrel |goto Tanaan Jungle/0 50.0,77.2 < 5
click Bleeding Hollow Mushroom Stash##241835 |quest 38809 |goto Tanaan Jungle 49.90,76.80 |future
]],
},
{
level=100,
treasure=[[Scout's Belongings]],
spot="Tanaan Jungle 49.90,79.60",
access="Completionist",
item=127354,
quest=38703,
steps=[[
step
_Go up_ the hill |goto Tanaan Jungle/0 51.5,79.4 < 8
_Go up_ the hidden path |goto Tanaan Jungle/0 50.8,81.3 < 8
click Scout's Belongings##241601 |quest 38703 |goto Tanaan Jungle 49.90,79.60 |future
]],
},
{
level=100,
treasure=[[Discarded Helm]],
spot="Tanaan Jungle 49.90,81.20",
access="Completionist",
item=127312,
quest=38702,
steps=[[
step
_Enter_ the cave |goto Tanaan Jungle/0 51.2,79.6 < 8
click Discarded Helm##241600 |quest 38702 |goto Tanaan Jungle 49.90,81.20 |future
]],
},
{
level=100,
treasure=[[Overgrown Relic]],
spot="Tanaan Jungle 50.80,64.90",
item=127412,
quest=38731,
steps=[[
step
click Overgrown Relic##241656 |quest 38731 |goto Tanaan Jungle 50.80,64.90 |future
|tip It's on the little island in the thicket.
]],
},
{
level=100,
treasure=[[Fel-Tainted Apexis Formation]],
spot="Tanaan Jungle 51.60,32.70",
access="Completionist",
currency="500 AC",
quest=39075,
steps=[[
step
_Follow_ the fel river |goto Tanaan Jungle/0 53.2,28.8 < 12
_Scale_ the rocks on the left side of the river |goto Tanaan Jungle/0 52.2,30.4 < 10
_Jump down_ carefully at the first waterfall towards the end |goto Tanaan Jungle/0 51.6,31.2 < 5
click Fel-Tainted Apexis Formation##242649 |quest 39075 |goto Tanaan Jungle 51.60,32.70 |future
]],
},
{
level=100,
treasure=[[Rune Etched Femur]],
spot="Tanaan Jungle 51.70,24.30",
item=127341,
quest=38686,
steps=[[
step
click Rune Etched Femur##241566 |quest 38686 |goto Tanaan Jungle 51.70,24.30 |future
]],
},
{
level=100,
treasure=[[Lodged Hunting Spear]],
spot="Tanaan Jungle 54.80,69.30",
item=127334,
quest=38593,
steps=[[
step
_Climb up_ onto the rocks |goto Tanaan Jungle/0 55.0,67.1 < 8
_Cross_ the tree and drop down to the spear |goto Tanaan Jungle/0 55.0,69.1 < 5
click Lodged Hunting Spear##241434 |quest 38593 |goto Tanaan Jungle 54.80,69.30 |future
]],
},
{
level=100,
treasure=[[Dead Man's Chest]],
spot="Tanaan Jungle 54.90,90.70",
currency="100 GR",
quest=39470,
steps=[[
step
_Go through_ the narrow pass |goto Tanaan Jungle/0 54.6,83.2 < 8
_Drop down_ over the rocks |goto Tanaan Jungle/0 54.6,88.3 < 15
click Dead Man's Chest##243693 |quest 39470 |goto Tanaan Jungle 54.90,90.70 |future
|tip If the chest isn't there try logging out and back in. It's found on the far side of the tree next to a bush and skeleton.
]],
},
{
level=100,
treasure=[[Forgotten Sack]],
spot="Tanaan Jungle 57.00,65.00",
item=110609,
quest=38591,
steps=[[
step
_Follow_ the mountain |goto Tanaan Jungle/0 56.6,63.9
_Go under_ the canopy of vines |goto Tanaan Jungle/0 56.7,65.9 < 15
click Forgotten Sack##241433 |quest 38591 |goto Tanaan Jungle 57.00,65.00 |future
]],
},
{
level=100,
treasure=[[Jewel of the Fallen Star]],
spot="Tanaan Jungle 58.50,25.20",
item=115805,
quest=38679,
steps=[[
step
click Jewel of the Fallen Star##241561 |quest 38679 |goto Tanaan Jungle 58.50,25.20 |future
]],
},
{
level=100,
treasure=[[Blackfang Island Cache]],
spot="Tanaan Jungle 61.20,75.80",
currency="GR",
quest=38601,
steps=[[
step
click Blackfang Island Cache##241449 |quest 38601 |goto Tanaan Jungle 61.20,75.80 |future
]],
},
{
level=100,
treasure=[[Crystallized Fel Spike]],
spot="Tanaan Jungle 62.10,70.70",
access="Completionist",
item=128217,
quest=38602,
steps=[[
step
_Follow_ the shore |goto Tanaan Jungle/0 59.9,74.0 < 8
_Go to_ the fel pool |goto Tanaan Jungle/0 61.9,72.2 < 8
_Stand on_ this rock |goto Tanaan Jungle/0 62.0,70.8 < 5
click Crystallized Fel Spike##241450 |quest 38602 |goto Tanaan Jungle 62.10,70.70 |future
|tip This treasure is surrounded by level 100 elites.
]],
},
{
level=100,
treasure=[[Censer of Torment]],
spot="Tanaan Jungle 62.60,20.50",
access="Completionist",
item=127401,
quest=38682,
steps=[[
step
_Go up_ the path |goto Tanaan Jungle/0 61.3,22.8 < 12
click Censer of Torment##241563 |quest 38682 |goto Tanaan Jungle 62.60,20.50 |future
|tip It's on an altar surrounded by torches.
]],
},
{
level=100,
treasure=[[Forgotten Shard of the Cipher]],
spot="Tanaan Jungle 63.40,28.10",
item=128309,
quest=38740,
condition=[[only if haveq(39394) or haveq(38463) or completedq(39394) or completedq(38463)]],
steps=[[
step
click Forgotten Shard of the Cipher##241671 |quest 38740 |goto Tanaan Jungle 63.40,28.10 |future
]],
},
{
level=100,
treasure=[[Strange Fruit]],
spot="Tanaan Jungle 64.6,42.1",
item=127396,
quest=38701,
steps=[[
step
click Loose Soil##241606 |goto Tanaan Jungle 64.70,42.80 < 8
click Strange Fruit##241599 |quest 38701 |goto Tanaan Jungle 64.6,42.1 |future
|tip Clicking the loose soil will cause a vine to throw you up into the tree. The fruit is on the branch you land on.
]],
},
{
level=100,
treasure=[[Bejeweled Egg]],
spot="Tanaan Jungle 65.90,85.00",
item=128386,
quest=39469,
steps=[[
step
_Go through_ the narrow pass |goto Tanaan Jungle/0 54.6,83.2 < 8
_Drop down_ over the rocks |goto Tanaan Jungle/0 54.6,88.3 < 15
_Follow_ the shore |goto Tanaan Jungle/0 62.2,87.9
click Bejeweled Egg##243690 |quest 39469 |goto Tanaan Jungle 65.90,85.00 |future
]],
},
{
level=100,
treasure=[[Forgotten Iron Horde Supplies]],
spot="Tanaan Jungle 69.70,56.00",
currency="25 GR",
quest=38704,
steps=[[
step
_Go through_ the gates |goto Tanaan Jungle/0 69.3,53.4 < 8
_Enter_ the hut |goto Tanaan Jungle/0 69.9,55.9 < 5
click Forgotten Iron Horde Supplies##241602 |quest 38704 |goto Tanaan Jungle 69.70,56.00 |future
]],
},
{
level=100,
treasure=[[Stashed Bleeding Hollow Loot]],
spot="Tanaan Jungle 73.60,43.20",
currency="GL",
item=27729,
quest=38779,
steps=[[
step
_Cross_ the Bleeding Hollow grounds |goto Tanaan Jungle/0 70.8,53.6
_Climb up_ the rocks |goto Tanaan Jungle/0 73.4,43.8 < 10
click Stashed Bleeding Hollow Loot##241764 |goto Tanaan Jungle 73.60,43.20 |quest 38779 |future
]],
},
}
