local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("PoiTreasureBFA") then return end
ZGV.Poi.Sets.PoiTreasureBFA={
{
treasure=[[Secret of the Depths]],
spot="Boralus/0 55.73,91.06",
access="Completionist",
currency="WR",
quest=52195,
steps=[[
step
Click the Damp Scroll at each location:
In the basement |goto Boralus/0 61.52,77.72
In the second basement |goto Boralus/0 70.32,85.76
Second floor |goto Boralus/0 63.07,81.86
Near candles under the wooden platform |goto Boralus/0 67.14,79.82
Swim underwater here |goto Boralus/0 61.31,84.03 < 5 |walk
Inside the underwater cave |goto Boralus/0 55.97,91.26
click Ominous Altar |goto Boralus/0 55.73,91.06
|tip Inside the underwater cave.
Select "_Drink deep the shimmering tide..._"
click Gem of Acquiescence##292843 |q 52195 |future |goto 73.10,39.50
]],
},
{
treasure=[[Cache of Secrets]],
spot="Dazar'alor/0 56.12,38.06",
currency="WR",
quest=51338,
steps=[[
step
Enter the cave |goto Dazar'alor/0 46.56,26.61 < 10 |walk
|tip Behind the waterfall.
click Cache of Secrets##288596 |q 51338 |future |goto 44.47,26.92
|tip Inside the cave.
]],
},
{
treasure=[[Da White Shark's Bounty]],
spot="Dazar'alor/0 59.29,88.67",
currency="WR",
quest=50947,
steps=[[
step
Watch the dialogue
Kill the enemies that attack
click Da White Shark's Bounty##284454 |q 50947 |future |goto Dazar'alor/0 59.29,88.67
]],
},
{
treasure=[[Offerings of the Chosen]],
spot="Dazar'alor/0 38.29,7.16",
currency="WR",
quest=48938,
steps=[[
step
Enter the building |goto Dazar'alor/0 41.16,10.96 < 5 |only if walking
Run up the stairs |goto Dazar'alor/4 37.70,26.96 < 5 |only if walking
Follow the path |goto Dazar'alor/4 44.76,15.73 < 5 |only if walking
Continue up the stairs |goto Dazar'alor/3 39.16,27.81 < 5 |only if walking
Continue following the path |goto 64.28,66.09 < 5 |only if walking
Leave the building |goto 77.40,87.34 < 5 |only if walking
Follow the path |goto Dazar'alor/0 42.45,13.21 < 5 |only if walking
Continue following the path |goto 40.78,10.64 < 5 |only if walking
click Offerings of the Chosen##276735 |q 48938 |future |goto 38.29,7.16
]],
},
{
treasure=[[Bespelled Chest]],
spot="Drustvar/0 55.59,51.83",
currency="WR",
quest=53472,
steps=[[
step
Follow the path |goto Drustvar/0 56.88,52.91 < 10 |only if walking
Follow the path up |goto 55.94,51.93 < 10 |only if walking
clicknpc Witch Torch##143608+
click Bespelled Chest##297879 |q 53472 |future |goto 55.59,51.83
]],
},
{
treasure=[[Enchanted Chest]],
spot="Drustvar/0 25.45,24.17",
currency="WR",
quest=53474,
steps=[[
step
Enter the cave |goto Drustvar/0 25.40,23.56 < 5 |walk
clicknpc Witch Torch##143608+
click Enchanted Chest##297881 |q 53474 |future |goto 25.45,24.17
|tip Inside the cave.
]],
},
{
treasure=[[Ensorcelled Chest]],
spot="Drustvar/0 67.77,73.67",
currency="WR",
quest=53473,
steps=[[
step
Follow the path |goto Drustvar/0 69.58,66.59 < 10 |only if walking
Continue following the path |goto 68.49,68.61 < 10 |only if walking
Follow the path up |goto 68.38,69.28 < 5 |only if walking
Continue up the path |goto 67.36,71.23 < 10 |only if walking
Continue up the path |goto 67.21,73.00 < 10 |only if walking
clicknpc Witch Torch##143608+
click Ensorcelled Chest##297880 |q 53473 |future |goto 67.77,73.67
]],
},
{
treasure=[[Hexed Chest]],
spot="Drustvar/0 18.53,51.32",
currency="WR",
quest=53471,
steps=[[
step
Follow the path |goto Drustvar/0 18.85,50.14 < 10 |only if walking
Follow the path up |goto 18.59,50.83 < 5 |only if walking
clicknpc Witch Torch##143608+
click Hexed Chest##297878 |q 53471 |future |goto 18.53,51.32
]],
},
{
treasure=[[Merchant's Chest]],
spot="Drustvar/0 25.75,19.94",
currency="WR",
quest=53357,
steps=[[
step
kill Gorging Raven##137468
|tip They fly around the chest and one of them has the Merchant's Key in its claws.
collect Merchant's Key##163710 |only if not completedq(53357)
click Merchant's Chest##297828 |q 53357 |future |goto Drustvar/0 25.75,19.94
]],
},
{
treasure=[[Runebound Cache]],
spot="Drustvar/0 63.30,65.85",
currency="WR",
quest=53385,
steps=[[
step
Enter the cave |goto Drustvar/0 63.05,65.29 < 5 |walk
click Runic Ward##143687+
|tip Click the Runic Wards in the following order: left, down, up, right.
click Runebound Cache##297891 |q 53385 |future |goto 63.30,65.85
|tip Inside the cave.
]],
},
{
treasure=[[Runebound Chest]],
spot="Drustvar/0 44.22,27.71",
currency="WR",
quest=53386,
steps=[[
step
click Runic Ward##143689+
|tip Click the Runic Wards in the following order: left, right, down, up.
click Runebound Chest##297892 |q 53386 |future |goto Drustvar/0 44.22,27.71
]],
},
{
treasure=[[Stolen Thornspeaker Cache]],
spot="Drustvar/0 24.27,48.32",
currency="WR",
quest=53475,
steps=[[
step
Enter the cave |goto Drustvar/0 24.69,48.94 < 5 |walk
click Stolen Thornspeaker Cache##298920 |q 53475 |future |goto 24.27,48.32
|tip Inside the cave.
]],
},
{
treasure=[[Web-Covered Chest]],
spot="Drustvar/0 33.71,30.08",
currency="WR",
quest=53356,
steps=[[
step
click Web-Covered Chest##297825 |q 53356 |future |goto Drustvar/0 33.71,30.08
]],
},
{
treasure=[[Runebound Coffer]],
spot="Drustvar 33.68,71.73",
currency="WR",
quest=53387,
steps=[[
step
click Runic Ward##143687+
|tip Click the Runic Wards in the following order: right, up, left, down.
click Runebound Coffer##297893 |q 53387 |future |goto Drustvar 33.68,71.73
]],
},
{
treasure=[[Cleverly Disguised Chest]],
spot="Nazmir/0 35.64,85.61",
currency="WR",
quest=49885,
steps=[[
step
Enter the cave |goto Nazmir/0 35.87,85.41 < 5 |walk
click "Cleverly" Disguised Chest##279260 |q 49885 |future |goto 35.64,85.61
|tip Inside the cave.
]],
},
{
treasure=[[Cursed Nazmani Chest]],
spot="Nazmir/0 43.06,50.79",
currency="WR",
quest=49979,
steps=[[
step
Enter the cave |goto Nazmir/0 42.33,50.53 < 5 |walk
click Cursed Nazmani Chest##277715 |q 49979 |future |goto 43.06,50.79
|tip Inside the cave.
]],
},
{
treasure=[[Lost Nazmani Treasure]],
spot="Nazmir/0 62.10,34.87",
currency="WR",
quest=49891,
steps=[[
step
Enter the underwater cave |goto Nazmir/0 62.31,36.06 < 5 |walk
click Lost Nazmani Treasure##279689 |q 49891 |future |goto 62.10,34.87
]],
},
{
treasure=[[Lucky Horace's Lucky Chest]],
spot="Nazmir/0 77.68,36.14",
currency="WR",
quest=49867,
steps=[[
step
click Lucky Horace's Lucky Chest##279253 |q 49867 |future |goto Nazmir/0 77.68,36.14
]],
},
{
treasure=[[Offering to Bwonsamdi]],
spot="Nazmir/0 42.77,26.20",
currency="WR",
quest=49484,
steps=[[
step
Follow the path |goto Nazmir/0 42.36,26.19 < 10 |only if walking
Follow the path up |goto 42.64,25.85 < 5 |only if walking
Jump onto the building |goto 42.70,26.00 < 5 |only if walking
Jump down here |goto 42.97,26.01 < 5 |only if walking
click Offering to Bwonsamdi##278437 |q 49484 |future |goto 42.77,26.20
|tip Inside the building.
]],
},
{
treasure=[[Partially-Digested Treasure]],
spot="Nazmir/0 77.90,46.36",
currency="WR",
quest=50061,
steps=[[
step
click Partially-Digested Treasure##280522 |q 50061 |future |goto Nazmir/0 77.90,46.36
]],
},
{
treasure=[[Shipwrecked Chest]],
spot="Nazmir/0 66.79,17.34",
currency="WR",
quest=49483,
steps=[[
step
Follow the path |goto Nazmir/0 67.91,16.79 < 10 |only if walking
Follow the path up |goto 67.38,17.09 < 5 |only if walking
Jump across to the ship |goto 66.98,16.83 < 5 |only if walking
Run up the vine |goto 66.76,17.03 < 5 |only if walking
click Shipwrecked Chest##278436 |q 49483 |future |goto 66.79,17.34
|tip On the deck of the ship.
]],
},
{
treasure=[[Swallowed Naga Chest]],
spot="Nazmir/0 76.88,62.15",
currency="WR",
quest=50045,
steps=[[
step
Follow the path |goto Nazmir/0 73.92,61.06 < 15 |only if walking
click Swallowed Chest##280504|q 50045 |future |goto 76.88,62.15
]],
},
{
treasure=[[Venomous Seal]],
spot="Nazmir/0 46.23,82.96",
currency="WR",
quest=49889,
steps=[[
step
Enter the building |goto Nazmir/0 45.97,82.73 < 5 |only if walking
click Venomous Seal##279299 |q 49889 |future |goto 46.23,82.96
|tip Inside the building.
]],
},
{
treasure=[[Wunja's Trove]],
spot="Nazmir/0 35.45,54.99",
currency="WR",
quest=49313,
steps=[[
step
Enter the cave |goto Nazmir/0 34.71,54.92 < 5 |walk
click Wunja's Trove##277885 |q 49313 |future |goto 35.45,54.99
|tip Inside the cave.
]],
},
{
treasure=[[Carved Wooden Chest]],
spot="Stormsong Valley/0 44.44,73.53",
currency="WR",
quest=52429,
steps=[[
step
Follow the path |goto Stormsong Valley/0 42.44,67.44 < 10 |only if walking
Continue following the path |goto 42.98,69.46 < 10 |only if walking
Continue following the path |goto 43.32,73.02 < 10 |only if walking
Follow the path up |goto 44.11,73.95 < 10 |only if walking
Jump down carefully here |goto Stormsong Valley/3 61.36,40.84 < 5 |only if walking
|tip Land on the small ledge below, don't jump all the way down.
Enter the cave |goto Stormsong Valley/0 44.35,75.30 < 5 |walk
click Carved Wooden Chest##293350 |q 52429 |future |goto 44.44,73.53
|tip Inside the cave.
]],
},
{
treasure=[[Discarded Lunchbox]],
spot="Stormsong Valley/0 58.21,63.67",
currency="WR",
quest=52326,
steps=[[
step
Enter the building |goto Stormsong Valley/0 58.34,63.99 < 5 |walk
Jump onto the boxes and shelves |goto 58.35,63.60 < 5 |only if walking
click Discarded Lunchbox##293349 |q 52326 |future |goto 58.21,63.67
|tip Inside the building.
]],
},
{
treasure=[[Forgotten Chest]],
spot="Stormsong Valley/0 46.00,30.69",
currency="WR",
quest=52980,
steps=[[
step
Follow the road up |goto Stormsong Valley/0 48.08,45.01 < 10 |only if walking
Follow the path up |goto 47.17,35.27 < 10 |only if walking
Continue up the path |goto 45.44,38.05 < 10 |only if walking
click Forgotten Chest##294174 |q 52980 |future |goto 46.00,30.69
]],
},
{
treasure=[[Frosty Treasure Chest]],
spot="Stormsong Valley/0 48.97,84.10",
access="Completionist",
currency="WR",
quest=50526,
steps=[[
step
Follow the path |goto Stormsong Valley/0 49.41,75.07 < 10 |only if walking
Follow the path up |goto 48.25,76.45 < 10 |only if walking
Continue up the path |goto 48.70,80.12 < 10 |only if walking
Continue up the path |goto 47.54,79.76 < 5 |only if walking
Continue up the path |goto 47.56,82.03 < 5 |only if walking
click Frosty Treasure Chest##281494 |q 50526 |future |goto 48.97,84.10
]],
},
{
treasure=[[Hidden Scholar's Chest]],
spot="Stormsong Valley/0 59.91,39.06",
currency="WR",
quest=50937,
steps=[[
step
Follow the path |goto Stormsong Valley/0 59.27,41.24 < 5 |only if walking
Run up the stairs |goto 58.94,41.56 < 10 |only if walking
Continue following the path |goto 59.06,39.87 < 10 |only if walking
click Hidden Scholar's Chest##284448 |q 50937 |future |goto 59.91,39.06
|tip On the roof of the building.
]],
},
{
treasure=[[Old Ironbound Chest]],
spot="Stormsong Valley/0 42.86,47.22",
currency="WR",
quest=50089,
steps=[[
step
Enter the cave |goto Stormsong Valley/0 43.61,48.26 < 5 |walk
click Old Ironbound Chest##280619 |q 50089 |future |goto 42.86,47.22
|tip Inside the cave.
]],
},
{
treasure=[[Smuggler's Stash]],
spot="Stormsong Valley/0 58.60,83.88",
currency="WR",
quest=49811,
steps=[[
step
click Smuggler's Stash##279042 |q 49811 |future |goto Stormsong Valley/0 58.60,83.88
|tip Underwater.
]],
},
{
treasure=[[Sunken Strongbox]],
spot="Stormsong Valley/0 67.22,43.21",
currency="WR",
quest=50734,
steps=[[
step
click Sunken Strongbox##282153 |q 50734 |future |goto Stormsong Valley/0 67.22,43.21
|tip Underwater.
]],
},
{
treasure=[[Venture Co. Supply Chest]],
spot="Stormsong Valley/0 36.69,23.23",
currency="WR",
quest=52976,
steps=[[
step
click Rope Ladder##302780 |goto Stormsong Valley/0 36.54,23.50 < 5 |only if walking
click Venture Co. Supply Chest##294173 |q 52976 |future |goto 36.69,23.23
|tip On the deck of the ship.
]],
},
{
treasure=[[Weathered Treasure Chest]],
spot="Stormsong Valley/0 66.93,12.06",
access="Completionist",
currency="WR",
quest=51449,
steps=[[
step
Follow the path |goto Stormsong Valley/0 65.88,10.80 < 10 |only if walking
Follow the path up |goto 65.56,11.14 < 5 |only if walking
Continue up the path |goto 65.30,11.70 < 5 |only if walking
Enter the cave |goto 65.50,11.89 < 5 |walk
|tip The cave entrance is hidden behind a large tree.
click Weathered Treasure Chest##289647 |q 51449 |future |goto 66.93,12.06
|tip Inside the cave.
]],
},
{
treasure=[[Cutwater Treasure Chest]],
spot="Tiragarde Sound/0 72.49,58.14",
currency="AZ",
quest=50442,
steps=[[
step
Enter the cave |goto Tiragarde Sound/0 73.20,58.06 < 5 |walk
click Cutwater Treasure Chest##281397 |q 50442 |future |goto 72.49,58.14
|tip Inside the cave.
]],
},
{
treasure=[[Fading Treasure Map Treasure]],
spot="Tiragarde Sound/0 29.23,25.34",
access="Completionist",
currency="WR",
quest=52833,
steps=[[
step
Kill enemies around this area |only if not completedq(52833)
collect Fading Treasure Map##162580 |goto Tiragarde Sound/0 74.95,84.02 |only if not completedq(52833)
click Buried Treasure Chest##293880 |q 52833 |future |goto 29.23,25.34
]],
},
{
treasure=[[Forgotten Smuggler's Stash]],
spot="Tiragarde Sound/0 61.78,62.75",
currency="WR",
quest=52867,
steps=[[
step
Enter the cave |goto Tiragarde Sound/0 61.55,61.67 < 5 |walk
click Forgotten Smuggler's Stash##293964 |q 52867 |future |goto 61.78,62.75
|tip Inside the cave.
]],
},
{
treasure=[[Hay Covered Chest]],
spot="Tiragarde Sound/0 61.41,51.28",
access="Completionist",
currency="AZ",
quest=49963,
steps=[[
step
clicknpc Guardian of the Spring##130350 |goto Tiragarde Sound/0 61.41,51.28 < 5 |walk
|tip It walks around this small pond.
talk Roan Berthold##131453
|tip Ride it back to Roan Berthold.
click Hay Covered Chest##279750 |q 49963 |future |goto 67.36,51.65
]],
},
{
treasure=[[Precarious Noble Cache]],
spot="Tiragarde Sound/0 56.03,33.19",
access="Completionist",
currency="WR",
quest=52866,
steps=[[
step
Follow the path |goto Tiragarde Sound/0 54.32,30.45 < 10 |only if walking
Jump across the rocks |goto 55.30,31.26 < 10 |only if walking
Continue across the rocks |goto 55.54,31.71 < 5 |only if walking
|tip Running through this area may flag you for PvP.
click Precarious Noble Cache##293962 |q 52866 |future |goto 56.03,33.19
]],
},
{
treasure=[[Scrimshaw Cache]],
spot="Tiragarde Sound/0 72.65,21.33",
currency="WR",
quest=52870,
steps=[[
step
Enter the cave |goto Boralus/0 61.70,10.29 < 5 |walk
click Scrimshaw Cache##293965 |q 52870 |future |goto Tiragarde Sound/0 72.65,21.33
|tip Inside the cave.
]],
},
{
treasure=[[Singed Treasure Map Treasure]],
spot="Tiragarde Sound/0 48.98,37.59",
access="Completionist",
currency="WR",
quest=52845,
steps=[[
step
Kill enemies around this area |only if not completedq(52845)
collect Singed Treasure Map##162584 |goto Tiragarde Sound/0 74.95,84.02 |only if not completedq(52845)
click Buried Treasure Chest##293884 |q 52845 |future |goto 48.98,37.59
]],
},
{
treasure=[[Soggy Treasure Map Treasure]],
spot="Tiragarde Sound/0 54.99,46.07",
access="Completionist",
currency="WR",
quest=52807,
steps=[[
step
Kill enemies around this area |only if not completedq(52807)
collect Soggy Treasure Map##162571 |goto Tiragarde Sound/0 74.95,84.02 |only if not completedq(52807)
click Buried Treasure Chest##293852 |q 52807 |future |goto Tiragarde Sound/0 54.99,46.07
|tip Underwater.
]],
},
{
treasure=[[Yellowed Treasure Map Treasure]],
spot="Tiragarde Sound/0 90.50,75.50",
access="Completionist",
currency="WR",
quest=52836,
steps=[[
step
Kill enemies around this area |only if not completedq(52836)
collect Yellowed Treasure Map##162581 |goto Tiragarde Sound/0 74.95,84.02 |only if not completedq(52836)
click Buried Treasure Chest##293881 |q 52836 |future |goto Tiragarde Sound/0 90.50,75.50
]],
},
{
treasure=[[Ashvane Spoils]],
spot="Vol'dun/0 46.59,88.02",
access="Completionist",
currency="WR",
quest=50237,
steps=[[
step
clicknpc Mine Cart##132662 |goto Vol'dun/0 46.59,88.02 < 5 |only if walking
click Ashvane Spoils##280951 |q 50237 |future |goto 44.33,92.21
]],
},
{
treasure=[[Deadwood Chest]],
spot="Vol'dun/0 40.57,85.74",
currency="WR",
quest=52994,
steps=[[
step
Follow the path |goto Vol'dun/0 38.68,82.62 < 10 |only if walking
Follow the path up |goto 39.15,83.17 < 5 |only if walking
Continue following the path |goto 40.52,84.04 < 10 |only if walking
Cross the bridge |goto 40.60,84.88 < 10 |only if walking
click Deadwood Chest##294317 |q 52994 |future |goto 40.57,85.74
]],
},
{
treasure=[[Excavator's Greed]],
spot="Vol'dun/0 57.74,64.64",
currency="WR",
quest=51136,
steps=[[
step
Follow the path |goto Vol'dun/0 56.28,64.71 < 15 |only if walking
Enter the cave |goto 56.96,64.68 < 10 |walk
click Excavator's Greed##287324 |q 51136 |future |goto 57.74,64.64
|tip Inside the cave.
]],
},
{
treasure=[[Grayal's Last Offering]],
spot="Vol'dun/0 48.18,64.69",
access="Completionist",
currency="WR",
quest=51093,
condition=[[only if completedq(50703)]],
steps=[[
step
Enter the crypt |goto Vol'dun/0 49.13,64.69 < 5 |walk
click Ancient Altar##287238
|tip Inside the crypt.
click Grayal's Last Offering##287239 |q 51093 |future |goto 48.18,64.69
]],
},
{
treasure=[[Lost Explorer's Bounty]],
spot="Vol'dun/0 49.78,79.41",
currency="WR",
quest=51132,
steps=[[
step
Follow the path |goto Vol'dun/0 49.91,77.48 < 10 |only if walking
Follow the path up |goto 50.92,79.54 < 10 |only if walking
Continue following the path |goto 51.15,78.84 < 5 |only if walking
Continue following the path |goto 50.81,78.54 < 5 |only if walking
Enter the cave |goto 49.93,79.08 < 5 |walk
click Lost Explorer's Bounty##287304 |q 51132 |future |goto 49.78,79.41
|tip Inside the cave.
]],
},
{
treasure=[[Lost Offerings of Kimbul]],
spot="Vol'dun/0 57.05,11.20",
currency="WR",
quest=52992,
steps=[[
step
Follow the path |goto Vol'dun/0 58.06,11.41 < 10 |only if walking
Follow the path up |goto 58.22,10.52 < 5 |only if walking
Continue up the path |goto 57.75,10.22 < 5 |only if walking
Continue up the path |goto 56.71,10.05 < 10 |only if walking
click Lost Offerings of Kimbul##294316 |q 52992 |future |goto 57.05,11.20
|tip At the very top of the temple.
]],
},
{
treasure=[[Sandfury Reserve]],
spot="Vol'dun/0 47.19,58.46",
currency="WR",
quest=51133,
steps=[[
step
Follow the path |goto Vol'dun/0 47.44,59.96 < 10 |only if walking
Jump onto the building |goto 47.43,59.59 < 5 |only if walking
Jump down carefully here |goto 47.43,58.49 < 5 |only if walking
click Sandfury Reserve##287318 |q 51133 |future |goto 47.19,58.46
|tip At the top of the large stone pillar.
]],
},
{
treasure=[[Sandsunken Treasure]],
spot="Vol'dun/0 26.48,45.35",
currency="WR",
quest=53004,
steps=[[
step
click Abandoned Bobber##294318
click Sandsunken Treasure##294319 |q 53004 |future |goto Vol'dun/0 26.48,45.35
]],
},
{
treasure=[[Stranded Cache]],
spot="Vol'dun/0 44.50,26.16",
currency="WR",
quest=51135,
steps=[[
step
Follow the path |goto Vol'dun/0 44.89,26.67 < 10 |only if walking
Continue following the path |goto 44.74,24.78 < 5 |only if walking
Run up the log |goto 44.51,25.80 < 5 |only if walking
click Stranded Cache##287320 |q 51135 |future |goto 44.50,26.16
]],
},
{
treasure=[[Zem'lan's Buried Treasure]],
spot="Vol'dun/0 29.38,87.42",
currency="WR",
quest=51137,
steps=[[
step
click Disturbed Sand##287314
click Zem'lan's Buried Treasure##287326 |q 51137 |future |goto Vol'dun/0 29.38,87.42
]],
},
{
treasure=[[Dazar's Forgotten Chest]],
spot="Zuldazar/0 38.79,34.44",
access="Completionist",
currency="WR",
quest=50707,
steps=[[
step
Follow the road |goto Zuldazar/0 44.0,38.0 < 10 |only if walking
Follow the path |goto 43.59,36.76 < 10 |only if walking
Continue following the path |goto 41.85,35.30 < 10 |only if walking
Continue following the path |goto 41.02,33.28 < 5 |only if walking
Continue following the path |goto 40.07,32.63 < 5 |only if walking
click Dazar's Forgotten Chest##281898 |q 50707 |future |goto 38.79,34.44
]],
},
{
treasure=[[Gift of the Brokenhearted]],
spot="Zuldazar/0 51.44,26.62",
currency="WR",
quest=50582,
steps=[[
step
Follow the path |goto Zuldazar/0 49.90,27.00 < 10 |only if walking
Continue following the path |goto 50.85,27.56 < 10 |only if walking
Follow the path up |goto 51.74,27.08 < 10 |only if walking
click Incense##284456
click Gift of the Brokenhearted##281655 |q 50582 |future |goto 51.44,26.62
]],
},
{
treasure=[[Riches of Tor'nowa]],
spot="Zuldazar/0 52.96,47.20",
currency="WR",
quest=51624,
steps=[[
step
Follow the path |goto Zuldazar/0 52.50,46.97 < 10 |only if walking
Jump down here |goto 52.80,47.15 < 5 |only if walking
click Riches of Tor'nowa##290725 |q 51624 |future |goto 52.96,47.20
]],
},
{
treasure=[[Spoils of Pandaria]],
spot="Zuldazar/4 23.04,23.67",
access="Completionist",
currency="WR",
quest=49936,
steps=[[
step
Follow the path |goto Zuldazar/0 52.34,86.69 < 10 |only if walking
Enter the ship |goto 51.99,87.03 < 5 |walk
Run down the stairs |goto Zuldazar/3 28.83,32.06 < 5 |walk
Follow the path |goto 62.85,43.85 < 5 |walk
Run down the stairs |goto Zuldazar/4 72.15,67.31 < 5 |walk
Follow the path |goto 33.27,44.58 < 5 |walk
click Spoils of Pandaria##279609 |q 49936 |future |goto 23.04,23.67
|tip Downstairs inside the ship.
]],
},
{
treasure=[[The Exile's Lament]],
spot="Zuldazar/0 71.83,16.78",
currency="WR",
quest=50949,
steps=[[
step
Enter the cave |goto Zuldazar/0 71.25,17.52 < 5 |walk
click The Exile's Lament##284455 |q 50949 |future |goto 71.83,16.78
|tip Inside the cave.
]],
},
{
treasure=[[Warlord's Cache]],
spot="Zuldazar/0 49.50,65.27",
currency="WR",
quest=49257,
steps=[[
step
Follow the path |goto Zuldazar/0 49.00,64.47 < 15 |only if walking
Run up the ramp |goto 50.17,64.99 < 10 |only if walking
Run up the stairs |goto 49.90,65.10 < 5 |only if walking
Continue up the stairs |goto 49.63,65.37 < 5 |only if walking
click Warlord's Cache##277561 |q 49257 |future |goto 49.50,65.27
|tip At the top of the ship.
]],
},
{
treasure=[[Witch Doctor's Hoard]],
spot="Zuldazar/0 64.71,21.67",
currency="WR",
quest=50259,
steps=[[
step
Follow the path |goto Zuldazar/0 66.18,22.82 < 10 |only if walking
Continue following the path |goto 65.62,22.77 < 10 |only if walking
Follow the path up |goto 65.46,21.89 < 10 |only if walking
click Witch Doctor's Hoard##281092 |q 50259 |future |goto 64.71,21.67
]],
},
{
treasure=[[Amathet Spoils]],
spot="Uldum New/0 66.89,24.14",
currency="WR",
quest=55692,
condition=[[only if ZGV.InPhase("UldumInvasionRight")]],
steps=[[
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 55692 |future
step
click Amathet Spoils |q 55692 |future |goto Uldum New/0 66.89,24.14
]],
},
{
treasure=[[Amathet Coffer]],
spot="Uldum New/0 68.22,20.52",
currency="WR",
quest=55700,
condition=[[only if ZGV.InPhase("UldumInvasionRight")]],
steps=[[
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 55700 |future
step
click Amathet Coffer |q 55700 |future |goto Uldum New/0 68.22,20.52
]],
},
{
treasure=[[Amathet Coffer]],
spot="Uldum New/0 72.76,44.69",
currency="WR",
quest=55698,
condition=[[only if ZGV.InPhase("UldumInvasionRight")]],
steps=[[
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 55698 |future
step
click Amathet Coffer |q 55698 |future |goto Uldum New/0 72.76,44.69
]],
},
{
treasure=[[Amathet Coffer]],
spot="Uldum New/0 72.48,48.57",
currency="WR",
quest=55691,
condition=[[only if ZGV.InPhase("UldumInvasionRight")]],
steps=[[
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 55691 |future
step
click Amathet Coffer |q 55691 |future |goto Uldum New/0 72.48,48.57
]],
},
{
treasure=[[Amathet Coffer]],
spot="Uldum New/0 85.27,51.38",
currency="WR",
quest=55689,
condition=[[only if ZGV.InPhase("UldumInvasionRight")]],
steps=[[
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 55689 |future
step
click Amathet Coffer |q 55689 |future |goto Uldum New/0 85.27,51.38
]],
},
{
treasure=[[Amathet Coffer]],
spot="Uldum New/0 73.71,73.94",
currency="WR",
quest=55690,
condition=[[only if ZGV.InPhase("UldumInvasionRight")]],
steps=[[
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 55690 |future
step
click Amathet Coffer |q 55690 |future |goto Uldum New/0 73.71,73.94
]],
},
{
treasure=[[Black Empire Cache]],
spot="Uldum New/0 50.79,31.43",
currency="WR",
quest=57624,
condition=[[only if ZGV.InPhase("UldumInvasionCenter")]],
steps=[[
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 57624 |future
step
click Black Empire Cache |q 57624 |future |goto Uldum New/0 50.79,31.43
]],
},
{
treasure=[[Black Empire Cache]],
spot="Uldum New/0 57.88,82.63",
currency="WR",
quest=57626,
condition=[[only if ZGV.InPhase("UldumInvasionCenter")]],
steps=[[
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 57626 |future
step
click Black Empire Cache |q 57626 |future |goto Uldum New/0 57.88,82.63
|tip In the wagon.
]],
},
{
treasure=[[Black Empire Cache]],
spot="Uldum New/0 58.36,15.36",
currency="WR",
quest=57623,
condition=[[only if ZGV.InPhase("UldumInvasionCenter")]],
steps=[[
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 57623 |future
step
click Black Empire Cache |q 57623 |future |goto Uldum New/0 58.36,15.36
]],
},
{
treasure=[[Black Empire Cache]],
spot="Uldum New/0 51.67,71.22",
currency="WR",
quest=57635,
condition=[[only if ZGV.InPhase("UldumInvasionCenter")]],
steps=[[
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 57635 |future
step
click Black Empire Cache |q 57635 |future |goto Uldum New/0 51.67,71.22
]],
},
{
treasure=[[Black Empire Cache]],
spot="Uldum New/0 67.17,73.95",
currency="WR",
quest=57627,
condition=[[only if ZGV.InPhase("UldumInvasionCenter")]],
steps=[[
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 57627 |future
step
Enter the building |goto Uldum New/0 66.56,73.95 < 15 |walk
click Black Empire Cache |q 57627 |future |goto 67.17,73.95
|tip Inside the building.
]],
},
{
treasure=[[Black Empire Coffer]],
spot="Uldum New/0 71.65,73.34",
currency="WR",
quest=57628,
condition=[[only if ZGV.InPhase("UldumInvasionCenter")]],
steps=[[
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 57628 |future
step
Kill enemies around this area
collect 6 Voidwarped Relic Fragment##174758 |goto Uldum New/0 61.92,74.34 |q 57628 |future
step
use the Voidwarped Relic Fragment##174758
collect 1 Cursed Relic##174768 |q 57628 |future
step
click Black Empire Coffer |q 57628 |future |goto 71.65,73.34
]],
},
{
treasure=[[Infested Cache]],
spot="Uldum New/0 33.37,62.10",
currency="WR",
quest=58139,
condition=[[only if ZGV.InPhase("UldumInvasionLeft")]],
steps=[[
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 58139 |future
step
click Infested Cache |q 58139 |future |goto Uldum New/0 33.37,62.10
]],
},
{
treasure=[[Infested Cache]],
spot="Uldum New/0 19.84,65.12",
currency="WR",
quest=58140,
condition=[[only if ZGV.InPhase("UldumInvasionLeft")]],
steps=[[
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 58140 |future
step
click Infested Cache |q 58140 |future |goto Uldum New/0 19.84,65.12
|tip Inside the tent.
]],
},
{
treasure=[[Ambered Coffer]],
spot="Vale of Eternal Blossoms New/0 21.58,62.46",
currency="WR",
quest=58770,
condition=[[only if ZGV.InPhase("ValeInvasionLeft")]],
steps=[[
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 58770 |future
step
collect 1 Mantid Relic##82867 |q 58770 |future
|tip Collect and combine six Mantid Relic Fragments from various Mantid mobs around the assault area.
step
click Ambered Coffer |q 58770 |future |goto Vale of Eternal Blossoms New/0 21.58,62.46
]],
},
{
treasure=[[Ambered Cache]],
spot="Vale of Eternal Blossoms New/0 29.95,45.81",
currency="WR",
quest=51035,
condition=[[only if ZGV.InPhase("ValeInvasionLeft")]],
steps=[[
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 51035 |future
step
click Ambered Cache |q 51035 |future |goto Vale of Eternal Blossoms New/0 29.95,45.81
]],
},
{
treasure=[[Ambered Cache]],
spot="Vale of Eternal Blossoms New/0 24.14,35.20",
currency="WR",
quest=58227,
condition=[[only if ZGV.InPhase("ValeInvasionLeft")]],
steps=[[
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 58227 |future
step
click Ambered Cache |q 58227 |future |goto Vale of Eternal Blossoms New/0 24.14,35.20
]],
},
{
treasure=[[Ambered Cache]],
spot="Vale of Eternal Blossoms New/0 15.80,71.67",
currency="WR",
quest=58224,
condition=[[only if ZGV.InPhase("ValeInvasionLeft")]],
steps=[[
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 58224 |future
step
click Ambered Cache |q 58224 |future |goto Vale of Eternal Blossoms New/0 15.80,71.67
|tip Way up on the ledge of the building near the top.
]],
},
{
treasure=[[Ambered Cache]],
spot="Vale of Eternal Blossoms New/0 7.44,65.80",
currency="WR",
quest=58228,
condition=[[only if ZGV.InPhase("ValeInvasionLeft")]],
steps=[[
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 58228 |future
step
click Ambered Cache |q 58228 |future |goto Vale of Eternal Blossoms New/0 7.44,65.80
]],
},
{
treasure=[[Ambered Cache]],
spot="Vale of Eternal Blossoms New/0 7.69,36.83",
currency="WR",
quest=58226,
condition=[[only if ZGV.InPhase("ValeInvasionLeft")]],
steps=[[
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 58226 |future
step
click Ambered Cache |q 58226 |future |goto Vale of Eternal Blossoms New/0 7.69,36.83
]],
},
{
treasure=[[Ambered Cache]],
spot="Vale of Eternal Blossoms New/0 26.34,11.13",
currency="WR",
quest=58225,
condition=[[only if ZGV.InPhase("ValeInvasionLeft")]],
steps=[[
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 58225 |future
step
Enter the cave |goto Vale of Eternal Blossoms New/0 27.25,12.18 < 15 |walk
click Ambered Cache |q 58225 |future |goto 26.34,11.13
|tip Inside the cave.
]],
},
{
treasure=[[Small Treasure Chest]],
spot="Vale of Eternal Blossoms New/0 62.58,57.23",
currency="WR",
quest=57200,
condition=[[only if ZGV.InPhase("ValeInvasionRight")]],
steps=[[
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 57200 |future
step
click Small Treasure Chest |q 57200 |future |goto Vale of Eternal Blossoms New/0 62.58,57.23
]],
},
{
treasure=[[Large Treasure Chest]],
spot="Vale of Eternal Blossoms New/0 69.51,60.98",
currency="WR",
quest=57196,
condition=[[only if ZGV.InPhase("ValeInvasionRight")]],
steps=[[
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 57196 |future
step
click Large Treasure Chest |q 57196 |future |goto Vale of Eternal Blossoms New/0 69.51,60.98
]],
},
{
treasure=[[Small Treasure Chest]],
spot="Vale of Eternal Blossoms New/0 77.07,63.63",
currency="WR",
quest=57201,
condition=[[only if ZGV.InPhase("ValeInvasionRight")]],
steps=[[
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 57201 |future
step
click Small Treasure Chest |q 57201 |future |goto Vale of Eternal Blossoms New/0 77.07,63.63
]],
},
{
treasure=[[Small Treasure Chest]],
spot="Vale of Eternal Blossoms New/0 51.13,63.23",
currency="WR",
quest=57203,
condition=[[only if ZGV.InPhase("ValeInvasionRight")]],
steps=[[
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 57203 |future
step
click Small Treasure Chest |q 57203 |future |goto Vale of Eternal Blossoms New/0 51.13,63.23
]],
},
{
treasure=[[Small Treasure Chest]],
spot="Vale of Eternal Blossoms New/0 60.73,63.46",
currency="WR",
quest=57202,
condition=[[only if ZGV.InPhase("ValeInvasionRight")]],
steps=[[
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 57202 |future
step
Enter the mine |goto Vale of Eternal Blossoms New/0 69.91,58.50 < 15 |walk
Follow the path |goto 70.41,64.42 < 15 |walk
Continue following the path |goto 64.14,67.89 < 20 |walk
click Small Treasure Chest |q 57202 |future |goto 60.73,63.46
]],
},
{
treasure=[[Small Treasure Chest]],
spot="Vale of Eternal Blossoms New/0 67.22,27.81",
currency="WR",
quest=57199,
condition=[[only if ZGV.InPhase("ValeInvasionRight")]],
steps=[[
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 57199 |future
step
Enter the cave |goto Vale of Eternal Blossoms New/0 57.42,37.86 < 30 |walk
click Small Treasure Chest |q 57199 |future |goto 67.22,27.81
|tip Inside the cave.
]],
},
{
treasure=[[Small Treasure Chest]],
spot="Vale of Eternal Blossoms New/0 50.68,34.44",
currency="WR",
quest=57197,
steps=[[
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 57197 |future
step
click Small Treasure Chest |q 57197 |future |goto Vale of Eternal Blossoms New/0 50.68,34.44
]],
},
{
treasure=[[Mogu Plunder]],
spot="Vale of Eternal Blossoms New/0 27.97,18.21",
currency="WR",
quest=57209,
condition=[[only if ZGV.InPhase("ValeInvasionCenterLeft")]],
steps=[[
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 57209 |future
step
click Mogu Plunder |q 57209 |future |goto Vale of Eternal Blossoms New/0 27.97,18.21
]],
},
{
treasure=[[Mogu Plunder]],
spot="Vale of Eternal Blossoms New/0 18.79,73.98",
currency="WR",
quest=57211,
condition=[[only if ZGV.InPhase("ValeInvasionCenterLeft")]],
steps=[[
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 57211 |future
step
click Mogu Plunder |q 57211 |future |goto Vale of Eternal Blossoms New/0 18.79,73.98
]],
},
{
treasure=[[Mogu Plunder]],
spot="Vale of Eternal Blossoms New/0 20.48,28.33",
currency="WR",
quest=57208,
condition=[[only if ZGV.InPhase("ValeInvasionCenterLeft")]],
steps=[[
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 57208 |future
step
click Mogu Plunder |q 57208 |future |goto Vale of Eternal Blossoms New/0 20.48,28.33
]],
},
{
treasure=[[Mogu Plunder]],
spot="Vale of Eternal Blossoms New/0 48.47,65.80",
currency="WR",
quest=57212,
condition=[[only if ZGV.InPhase("ValeInvasionLeftCenter")]],
steps=[[
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 57212 |future
step
click Mogu Plunder |q 57212 |future |goto Vale of Eternal Blossoms New/0 48.47,65.80
]],
},
{
treasure=[[Mogu Plunder]],
spot="Vale of Eternal Blossoms New/0 20.45,14.77",
currency="WR",
quest=57206,
condition=[[only if ZGV.InPhase("ValeInvasionLeftCenter")]],
steps=[[
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 57206 |future
step
Enter the building |goto Vale of Eternal Blossoms New/0 22.07,24.17 < 20 |walk
Follow the path |goto 21.88,12.41 < 20 |only if walking
Run down the stairs |goto 23.95,4.52 < 20 |only if walking
click Mogu Plunder |q 57206 |future |goto 20.45,14.77
|tip Inside the building.
]],
},
{
treasure=[[Mogu Strongbox]],
spot="Vale of Eternal Blossoms New/0 24.43,2.70",
currency="WR",
quest=57214,
condition=[[only if ZGV.InPhase("ValeInvasionLeftCenter")]],
steps=[[
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 57214 |future
step
Kill Baruk enemies around this area
collect 6 Mogu Relic Fragment##174759 |goto Vale of Eternal Blossoms New/0 23.83,37.54 |q 57214 |future
step
use the Mogu Relic Fragment##174759
collect 1 Mogu Relic##174767 |q 57214 |future
step
Enter the building |goto Vale of Eternal Blossoms New/0 22.07,24.17 < 20 |walk
Follow the path |goto 21.88,12.41 < 20 |walk
Run down the stairs |goto 25.08,6.07 < 20 |walk
click Mogu Strongbox |q 57214 |future |goto 24.43,2.70
|tip Inside the building.
]],
},
}
