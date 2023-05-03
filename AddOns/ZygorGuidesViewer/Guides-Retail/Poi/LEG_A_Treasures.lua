local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("PoiTreasureLEG") then return end
ZGV.Poi.Sets.PoiTreasureLEG={
{
comment="Notice: This treasure requires the Light's Judgement ability to access.",
treasure=[[Ancient Legion War Cache]],
spot="Antoran Wastes/0 65.97,39.77",
currency="35 CC",
quest=49018,
steps=[[
step
Follow the path up |goto Antoran Wastes/0 72.28,48.00 < 10 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
Follow the path |goto 70.83,46.66 < 15 |only if ditto
Follow the path |goto 71.25,39.77 < 15 |only if ditto
Follow the path up |goto 69.76,38.57 < 15 |only if ditto
Follow the path up |goto 69.27,36.20 < 15 |only if ditto
Follow the path |goto 69.07,25.29 < 15 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
Follow the path |goto 67.72,28.51 < 15 |only if ditto
Follow the path |goto 68.08,33.08 < 15 |only if ditto
Follow the path |goto 68.33,36.21 < 15 |only if walking
Follow the path |goto 68.31,39.58 < 7 |only if walking
Follow the path |goto 67.25,41.82 < 15 |only if walking
Carefully jump forward to the ledge down below |goto 65.87,41.52 < 7 |only if walking
|tip Dismount before jumping down.
Cast Light's Judgement on the rubble |cast Light's Judgement##247427
click Ancient Legion War Cache##277205 |q 49018 |goto 65.97,39.77 |future
]],
},
{
comment="Notice: This treasure requires the Light's Judgement ability to access.",
treasure=[[Fel-Bound Chest]],
spot="Antoran Wastes/0 52.18,27.07",
currency="43 CC",
quest=49019,
steps=[[
step
Follow the path up |goto Antoran Wastes/0 72.28,48.00 < 10 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
Follow the path |goto 70.83,46.66 < 15 |only if ditto
Follow the path |goto 71.25,39.77 < 15 |only if ditto
Follow the path up |goto 69.76,38.57 < 15 |only if ditto
Follow the path up |goto 69.27,36.20 < 15 |only if ditto
Follow the path |goto 68.00,34.07 < 15 |only if ditto
Follow the path |goto 67.72,32.12 < 15 |only if ditto
Follow the path |goto 69.07,25.29 < 15 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
Follow the path |goto 67.72,28.51 < 15 |only if ditto
Follow the path |goto 66.00,29.09 < 15 |only if ditto
Follow the path |goto 65.91,29.42 < 20 |only if walking
Follow the path |goto 61.69,26.87 < 15 |only if walking
Follow the path up |goto 59.83,27.89 < 15 |only if walking
Follow the path |goto 57.21,28.44 < 20 |only if walking
Follow the path |goto 55.38,30.66 < 15 |only if walking
Follow the path down |goto 53.98,30.94 < 15 |only if walking
Follow the cliff |goto 53.36,29.42 < 7 |only if walking
Follow the cliff |goto 51.98,28.42 < 7 |only if walking
Cast Light's Judgement on the rubble |cast Light's Judgement##247427
click Fel-Bound Chest##277206 |q 49019 |goto 52.18,27.07 |future
]],
},
{
comment="Notice: This treasure requires the Lightforged Warframe ability to access.",
treasure=[[Forgotten Legion Supplies]],
spot="Antoran Wastes/0 58.77,58.96",
currency="40 VA",
quest=49017,
steps=[[
step
Follow the path |goto Antoran Wastes/0 70.62,72.03 < 20 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
Follow the path |goto 68.52,68.81 < 20 |only if ditto
Follow the path |goto 64.68,65.89 < 15 |only if ditto
Follow the path |goto Antoran Wastes/0 71.97,47.26 < 15 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
Follow the path |goto 70.43,47.66 < 15 |only if ditto
Follow the path |goto 70.74,52.81 < 20 |only if ditto
Follow the path |goto 68.29,54.23 < 15 |only if ditto
Follow the path |goto 65.71,51.84 < 15 |only if ditto
Follow the path up |goto 64.52,55.00 < 15 |only if ditto
Follow the path |goto 62.88,60.46 < 20 |only if ditto
Follow the path |goto 61.49,64.42 < 15 |only if walking
Follow the path |goto 59.71,62.40 < 7 |only if walking
Summon your Lightforged Warframe |cast Summon Lightforged Warframe##250436
|tip Use the Crusader Leap ability to smash the rubble.
click Forgotten Legion Supplies##277204 |q 49017 |goto 58.77,58.96 |future
]],
},
{
treasure=[[Legion Treasure Hoard]],
spot="Antoran Wastes/0 49.14,59.40",
currency="47 VA",
quest=49020,
steps=[[
step
Follow the path |goto Antoran Wastes/0 69.07,25.29 < 15 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
Follow the path |goto 67.72,28.51 < 15 |only if ditto
Follow the path |goto 66.07,29.09 < 15 |only if ditto
Follow the path |goto 62.92,30.20 < 15 |only if ditto
Follow the path |goto 62.86,37.25 < 15 |only if ditto
Follow the path |goto 60.72,38.81 < 20 |only if ditto
Follow the path |goto 61.98,42.12 < 15 |only if ditto
Follow the path |goto 61.81,44.07 < 15 |only if ditto
Cross the bridge |goto 57.42,44.54 < 15 |only if ditto
Follow the path |goto 52.09,48.31 < 20 |only if ditto
Follow the path |goto 51.82,53.70 < 20 |only if ditto
Follow the path |goto Antoran Wastes/0 68.26,68.59 < 20 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
Follow the path |goto 65.28,65.44 < 20 |only if ditto
Follow the path |goto 63.31,63.05 < 20 |only if ditto
Follow the path |goto 62.50,57.79 < 20 |only if ditto
Follow the path down |goto 60.19,55.96 < 20 |only if ditto
Cross the lava |goto 59.38,55.46 < 15 |only if ditto
Cross the lava |goto 58.51,55.36 < 15 |only if ditto
Cross the lava |goto 57.69,54.53 < 15 |only if ditto
Follow the path up |goto 55.70,52.15 < 15 |only if ditto
Follow the path |goto 54.15,55.00 < 20 |only if ditto
Follow the path |goto 51.71,54.01 < 20 |only if ditto
Follow the path |goto 49.24,56.62 < 10 |only if walking
Cross the lava |goto 49.13,58.39 < 7 |only if walking
click Legion Treasure Hoard##277207 |q 49020 |goto 49.14,59.40 |future
|tip It's behind the fel waterfall.
]],
},
{
comment="Notice: This treasure requires the Shroud of Arcane Echoes ability to access.",
treasure=[[Missing Augari Chest]],
spot="Antoran Wastes/0 57.42,63.65",
currency="46 VA",
quest=49159,
steps=[[
step
Follow the path |goto Antoran Wastes/0 70.62,72.03 < 20 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
Follow the path |goto 68.52,68.81 < 20 |only if ditto
Follow the path |goto 64.68,65.89 < 15 |only if ditto
Follow the path |goto 62.78,61.77 < 20 |only if ditto
Follow the path |goto Antoran Wastes/0 71.97,47.26 < 15 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
Follow the path |goto 70.43,47.66 < 15 |only if ditto
Follow the path |goto 70.74,52.81 < 20 |only if ditto
Follow the path |goto 68.29,54.23 < 15 |only if ditto
Follow the path |goto 65.71,51.84 < 15 |only if ditto
Follow the path up |goto 64.52,55.00 < 15 |only if ditto
Follow the path |goto 62.62,57.92 < 15 |only if walking
Follow the path down |goto 60.13,55.88 < 15 |only if walking
Cross the fel lava |goto 59.36,55.38 < 7 |only if walking
Cross the fel lava |goto 58.42,55.43 < 7 |only if walking
Cross the fel lava |goto 57.90,57.19 < 7 |only if walking
Follow the path |goto 57.35,59.75 < 10 |only if walking
Cast Shroud of Arcane Echoes |cast Shroud of Arcane Echoes##248779
|tip The duration is only ten seconds, so click the chest quickly.
click Missing Augari Chest##277346 |q 49159 |goto 57.42,63.65 |future
]],
},
{
treasure=[[Timeworn Fel Chest]],
spot="Antoran Wastes/0 75.60,52.67",
currency="34 VA",
quest=49021,
steps=[[
step
Follow the path up |goto Antoran Wastes/0 71.97,47.26 < 15 |only if walking
Follow the path |goto 70.43,47.66 < 15 |only if walking
Follow the path |goto 70.73,52.45 < 20 |only if walking
Follow the path up |goto 72.95,54.41 < 15 |only if walking
Follow the path up |goto 73.22,56.47 < 15 |only if walking
Follow the path |goto 73.46,59.50 < 20 |only if walking
Follow the path |goto 75.58,61.24 < 15 |only if walking
Follow the path |goto 77.82,59.85 < 10 |only if walking
Follow the cliff |goto 78.47,56.36 < 10 |only if walking
Follow the cliff |goto 77.88,52.69 < 15 |only if walking
Follow the path |goto 76.55,52.28 < 10 |only if walking
click Timeworn Fel Chest##277208 |q 49021 |goto 75.60,52.67 |future
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Azsuna 26.25,47.13",
currency="OR",
quest=44105,
steps=[[
step
Enter the cave |goto Azsuna/0 26.60,47.07 < 10 |walk
click Small Treasure Chest##233107 |q 44105 |future |goto Azsuna 26.25,47.13
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Azsuna 34.58,35.56",
currency="OR",
quest=44102,
steps=[[
step
Enter the cave |goto Azsuna/0 34.37,36.06 < 10 |walk
click Small Treasure Chest##233107 |q 44102 |future |goto Azsuna 34.58,35.56
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Azsuna 40.57,57.67",
item=138783,
quest=38316,
steps=[[
step
click Treasure Chest##251751 |q 38316 |future |goto Azsuna 40.57,57.67
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Azsuna 41.39,30.75",
item=138783,
quest=42292,
steps=[[
step
Enter the cave |goto Azsuna/0 41.56,31.24 < 10 |walk
click Treasure Chest##251751 |q 42292 |future |goto Azsuna 41.39,30.75
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Azsuna 42.60,08.10",
item=138783,
quest=38367,
steps=[[
step
click Treasure Chest##251751 |q 38367 |future |goto Azsuna 42.60,08.10
]],
},
{
item=138783,
treasure=[[Glimmering Treasure Chest]],
spot="Azsuna 43.39,22.42",
access="Completionist",
currency="OR",
quest=42297,
steps=[[
step
Follow the path |goto Azsuna 39.24,32.65 < 10 |only if walking
Continue up the mountain |goto Azsuna/0 37.21,30.67 < 10 |only if walking
Follow the path up the mountain |goto Azsuna/0 41.70,23.76 < 10 |only if walking
kill Felguard Sentinel##107168+
click Glimmering Treasure Chest##240637 |q 42297 |future |goto Azsuna 43.39,22.42
|tip The chest is guarded by two level 50 Elite Felguards.
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Azsuna 44.47,39.46",
currency="OR",
quest=37713,
steps=[[
step
click Small Treasure Chest##233107 |q 37713 |future |goto Azsuna 44.47,39.46
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Azsuna 47.86,07.73",
currency="OR",
quest=42295,
steps=[[
step
Enter the building |goto Azsuna/0 47.86,8.17 < 5 |walk
click Small Treasure Chest##233107 |q 42295 |future |goto Azsuna 47.86,07.73
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Azsuna 49.38,45.36",
item=122681,
quest=37828,
steps=[[
step
click Treasure Chest##251751 |q 37828 |future |goto Azsuna 49.38,45.36
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Azsuna 49.41,58.00",
item=141882,
quest=38370,
steps=[[
step
click Treasure Chest##251751 |q 38370 |future |goto Azsuna 49.41,58.00
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Azsuna 49.65,34.48",
currency="OR",
quest=37831,
steps=[[
step
click Small Treasure Chest##233107 |q 37831 |future |goto Azsuna 49.65,34.48
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Azsuna 50.21,50.29",
currency="OR",
quest=42290,
steps=[[
step
Enter the cave |goto Azsuna/0 50.12,48.84 < 10 |walk
click Small Treasure Chest##233107 |q 42290 |future |goto Azsuna 50.21,50.29
]],
},
{
currency="OR",
treasure=[[Trecherous Stallions]],
spot="Azsuna 50.46,52.11",
item=140685,
quest=44081,
steps=[[
step
Enter the cave |goto Azsuna/0 60.49,46.52 < 10 |walk
click Ley Portal |goto Azsuna 60.28,46.18 < 5 |walk
kill Devious Sunrunner##112637, Sinister Leyrunner##112636
click Treasure Chest##251668 |q 44081 |future |goto Azsuna 50.46,52.11
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Azsuna 51.50,24.35",
item=138885,
quest=42289,
steps=[[
step
Enter the cave |goto Azsuna 47.8,23.7 < 10 |walk
click Treasure Chest##251751 |q 42289 |future |goto Azsuna 51.50,24.35
|tip It is all the way in the back of the cave.
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Azsuna 52.00,42.10",
currency="OR",
quest=42281,
steps=[[
step
click Small Treasure Chest##233107 |q 42281 |future |goto Azsuna 52.00,42.10
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Azsuna 52.84,20.59",
item=138783,
quest=42339,
steps=[[
step
Follow the path up |goto Azsuna/0 51.91,17.58 < 20 |only if walking
Enter the cave |goto Azsuna 53.95,22.43 < 10 |walk
|tip Move carefully between the sleeping bears so you don't wake them up.
click Treasure Chest##251751 |q 42339 |future |goto Azsuna 52.84,20.59
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Azsuna 53.03,37.26",
currency="OR",
quest=37596,
steps=[[
step
click Small Treasure Chest##233107 |q 37596 |future |goto Azsuna 53.03,37.26
]],
},
{
treasure=[[Treasure Chest]],
spot="Azsuna 53.17,64.44",
item=138783,
quest=37829,
steps=[[
step
click Treasure Chest##251751 |q 37829 |future |goto Azsuna 53.17,64.44
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Azsuna 53.50,45.45",
currency="OR",
quest=42283,
steps=[[
step
Go up the stairs |goto Azsuna/0 51.60,44.63 < 10 |only if walking
click Small Treasure Chest##233107 |q 42283 |future |goto Azsuna 53.50,45.45
]],
},
{
item=131795,
treasure=[[Small Treasure Chest]],
spot="Azsuna 53.54,39.82",
currency="OR",
quest=42284,
steps=[[
step
Enter the Academy |goto Azsuna/0 53.76,40.29 < 10 |walk
Jump into the water below |goto Azsuna/17 61.77,81.69 < 8 |walk
click Small Treasure Chest##233107 |q 42284 |future |goto Azsuna/17 62.06,84.00
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Azsuna 53.61,18.13",
currency="OR",
quest=44104,
steps=[[
step
Enter the cave |goto Azsuna/0 53.95,17.90 < 5 |walk
click Small Treasure Chest##233107 |q 44104 |future |goto Azsuna 53.61,18.13
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Azsuna 53.62,44.14",
currency="OR",
quest=42282,
steps=[[
step
Enter the broken building |goto Azsuna/0 52.53,44.26 < 10 |walk
click Small Treasure Chest##233107 |q 42282 |future |goto Azsuna 53.62,44.14
]],
},
{
item=140310,
treasure=[[Small Treasure Chest]],
spot="Azsuna 53.88,40.35",
currency="OR",
quest=42285,
steps=[[
step
_NOTE:_ You must quest through Azsuna until you accept the quest "The Tidestone: Shattered" |only if not haveq(37469) or not completedq(37469)
Enter the Academy |goto Azsuna/0 53.76,40.29 < 10 |walk
Jump into the water below |goto Azsuna/17 61.77,81.69 < 8 |walk
Go down the stairs |goto Azsuna/17 57.98,67.46 < 8 |walk
click Tidestone Vault Door |goto Azsuna/17 56.29,46.80 < 6 |walk
click Small Treasure Chest##233107 |q 42285 |future |goto Azsuna/17 71.62,21.74
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Azsuna 54.40,36.35",
currency="OR",
quest=42287,
steps=[[
step
click Small Treasure Chest##233107 |q 42287 |future |goto Azsuna 54.40,36.35
|tip It's underwater.
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Azsuna 54.87,52.14",
currency="OR",
quest=44405,
steps=[[
step
Enter the cave |goto Azsuna/0 54.61,52.52 < 5 |walk
click Small Treasure Chest##233107 |q 44405 |future |goto Azsuna 54.87,52.14
|tip All the NPC's in this small camp will become aggressive.
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Azsuna 55.36,27.74",
currency="OR",
quest=42288,
steps=[[
step
click Small Treasure Chest##233107 |q 42288 |future |goto Azsuna 55.36,27.74
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Azsuna 55.63,18.50",
item=138783,
quest=40711,
steps=[[
step
Enter the tower |goto Azsuna/0 55.67,18.22 < 10 |walk
click Ley Portal |goto Azsuna/0 55.54,18.63 < 5 |walk
click Treasure Chest##251751 |q 40711 |future |goto Azsuna 55.63,18.50
]],
},
{
item=138783,
treasure=[[Disputed Treasure]],
spot="Azsuna 55.90,56.90",
currency="OR",
quest=38365,
steps=[[
step
kill Gilblin Looter##101532+
click Disputed Treasure##240638 |q 38365 |future |goto Azsuna 55.90,56.90
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Azsuna 56.44,34.81",
item=132950,
quest=38251,
steps=[[
step
kill Lagoon Basilisk##91128+
click Treasure Chest##251751 |q 38251 |future |goto Azsuna 56.44,34.81
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Azsuna 57.15,31.06",
item=138783,
quest=38419,
steps=[[
step
click Treasure Chest##251751 |q 38419 |future |goto Azsuna 57.15,31.06
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Azsuna 57.18,25.23",
currency="OR",
quest=42338,
steps=[[
step
Enter the cave |goto Azsuna 55.7,25.4 < 10 |walk
click Small Treasure Chest##233107 |q 42338 |future |goto Azsuna 57.18,25.23
]],
},
{
treasure=[[Treasure Chest]],
spot="Azsuna 57.88,12.23",
item=138783,
quest=37958,
steps=[[
step
Enter the building |goto Azsuna/0 57.29,12.97 < 10 |walk
click Treasure Chest##251751 |q 37958 |future |goto Azsuna 57.88,12.23
]],
},
{
item=131795,
treasure=[[Glimmering Treasure Chest]],
spot="Azsuna 58.36,43.78",
currency="OR",
quest=37830,
steps=[[
step
click Glimmering Treasure Chest##240637 |q 37830 |future |goto Azsuna 58.36,43.78
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Azsuna 58.38,12.29",
item=131751,
quest=37980,
steps=[[
step
Go up the stairs |goto Azsuna/0 58.24,16.06 < 8 |only if walking
Cross the bridge |goto 58.35,15.28 < 8 |only if walking
click Ley Portal |goto 58.69,14.13 < 5 |only if walking
click Treasure Chest##251751 |q 37980 |future |goto Azsuna 58.38,12.29
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Azsuna 58.64,53.40",
currency="OR",
quest=40752,
steps=[[
step
click Small Treasure Chest##233107 |q 40752 |future |goto Azsuna 58.64,53.40
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Azsuna 59.87,63.16",
currency="OR",
quest=42272,
steps=[[
step
Go up the path |goto Azsuna/0 59.42,61.98 < 10 |only if walking
click Small Treasure Chest##233107 |q 42272 |future |goto Azsuna 59.87,63.16
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Azsuna 62.38,58.41",
currency="OR",
quest=42273,
steps=[[
step
click Small Treasure Chest##233107 |q 42273 |future |goto Azsuna 62.38,58.41
|tip It's in the eye socket of the fish skeleton.
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Azsuna 62.81,44.79",
currency="OR",
quest=42294,
steps=[[
step
click Small Treasure Chest##233107 |q 42294 |future |goto Azsuna 62.81,44.79
|tip It is inside the small tent.
]],
},
{
item=140310,
treasure=[[Small Treasure Chest]],
spot="Azsuna 63.00,54.20",
currency="OR",
quest=42278,
steps=[[
step
Enter the cave |goto Azsuna 64.0,52.9 < 10 |walk
click Small Treasure Chest##233107 |q 42278 |future |goto Azsuna 63.00,54.20
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Azsuna 63.23,15.21",
item=138783,
quest=37832,
steps=[[
step
click Treasure Chest##251751 |q 37832 |future |goto Azsuna 63.23,15.21
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Azsuna 63.65,39.19",
currency="OR",
quest=42293,
steps=[[
step
click Small Treasure Chest##233107 |q 42293 |future |goto Azsuna 63.65,39.19
]],
},
{
currency="OR",
treasure=[[Seemingly Unguarded Treasure]],
spot="Azsuna 65.06,69.78",
item=129070,
quest=38239,
steps=[[
step
click Seemingly Unguarded Treasure##240353
kill Bitterbrine Raider##91194+
click Seemingly Unguarded Treasure##240353 |q 38239 |future |goto Azsuna 65.06,69.78
]],
},
{
item=140310,
treasure=[[Small Treasure Chest]],
spot="Azsuna 65.47,29.55",
currency="OR",
quest=42958,
steps=[[
step
click Small Treasure Chest##233107 |q 42958 |future |goto Azsuna 65.47,29.55
|tip It is underneath the trunk of the fallen tree.
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Azsuna 66.06,43.45",
currency="OR",
quest=40751,
steps=[[
step
click Small Treasure Chest##233107 |q 40751 |future |goto Azsuna 66.06,43.45
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Azsuna 68.87,29.73",
currency="OR",
quest=44103,
steps=[[
step
Enter the underwater cave |goto Azsuna/0 69.70,29.52 < 10 |walk
click Small Treasure Chest##233107 |q 44103 |future |goto Azsuna 68.87,29.73
]],
},
{
treasure=[[Treasure Chest]],
spot="Helheim 19.63,46.98",
item=138783,
quest=38516,
steps=[[
step
Follow the path |goto Helheim/0 55.41,32.04 < 25 |only if walking
Follow the path |goto 46.43,32.51 < 25 |only if walking
Follow the path |goto 35.04,48.90 < 25 |only if walking
Follow the path |goto 25.21,52.15 < 20 |only if walking
click Treasure Chest##251751 |q 38516 |future |goto Helheim/0 19.63,46.98
]],
},
{
treasure=[[Treasure Chest]],
spot="Helheim 60.84,53.32",
item=138783,
quest=38383,
steps=[[
step
click Treasure Chest##251751 |q 38383 |future |goto Helheim 60.84,53.32
]],
},
{
treasure=[[Treasure Chest]],
spot="Helheim 79.84,24.71",
item=138783,
quest=38510,
steps=[[
step
click Treasure Chest##251751 |q 38510 |future |goto Helheim 79.84,24.71
|tip It's on the deck of the ship.
]],
},
{
treasure=[[Treasure Chest]],
spot="Helheim 83.32,24.56",
item=138783,
quest=38503,
steps=[[
step
Follow the path |goto Helheim/0 82.15,20.33 < 5 |only if walking
click Treasure Chest##251751 |q 38503 |future |goto Helheim 83.32,24.56
|tip It's inside the sunken ship.
]],
},
{
treasure=[[A Steamy Jewelry Box]],
spot="Thunder Totem/0 63.45,59.34",
item=141322,
quest=39531,
steps=[[
step
Enter the tent |goto Thunder Totem/0 61.88,62.06 < 5 |walk
click A Steamy Jewelry Box##243798 |q 39531 |future |goto Thunder Totem/0 63.45,59.34
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Thunder Totem/0 13.68,55.41",
currency="OR",
quest=40491,
steps=[[
step
click Small Treasure Chest##233107 |q 40491 |future |goto Thunder Totem/0 13.68,55.41
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Thunder Totem/0 32.03,38.27",
item=138783,
quest=44352,
steps=[[
step
Enter the underwater cave |goto Thunder Totem/0 32.01,45.25 < 5 |walk
click Treasure Chest##251751 |q 44352 |future |goto Thunder Totem/0 32.03,38.27
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Thunder Totem/0 50.66,75.30",
currency="OR",
quest=40472,
steps=[[
step
Cross the bridge |goto Thunder Totem/0 57.77,67.65 < 10 |only if walking
click Small Treasure Chest##233107 |q 40472 |future |goto Thunder Totem/0 50.66,75.30
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Thunder Totem/0 32.18,41.74",
item=138783,
quest=40475,
steps=[[
step
click Treasure Chest##251751 |q 40475 |future |goto Thunder Totem/0 32.18,41.74
|tip It's in the canoe.
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Thunder Totem/6 62.88,67.89",
item=138783,
quest=40471,
steps=[[
step
click Treasure Chest##251751 |q 40471 |future |goto Thunder Totem/6 62.88,67.89
|tip Underwater in front of the giant totem.
]],
},
{
item=138783,
treasure=[[Neltharion's Vault Small Treasure Chest]],
spot="Highmountain/29 60.45,54.53",
currency="OR",
quest=40508,
steps=[[
step
Go to the Path of Huln |goto Highmountain/0 47.59,84.22 < 10
Enter Neltharion's Vault |goto Highmountain/30 45.59,15.89 < 10
click Small Treasure Chest##233107 |q 40508 |future |goto Highmountain/29 60.45,54.53
]],
},
{
currency="OR",
treasure=[[Neltharion's Vault Treasure Chest]],
spot="Highmountain/29 40.22,50.08",
item=138783,
quest=40509,
steps=[[
step
Go to the Path of Huln |goto Highmountain/0 47.59,84.22 < 10
Enter Neltharion's Vault |goto Highmountain/30 45.59,15.89 < 10
click Treasure Chest##251751 |q 40509 |future |goto Highmountain/29 40.22,50.08
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Highmountain/31 36.08,72.53",
item=138783,
quest=40478,
steps=[[
step
Enter the cave |goto Highmountain/0 42.58,25.30 < 10 |walk
Follow the path around |goto Highmountain/31 56.89,41.12 < 10 |walk
click Treasure Chest##251751 |q 40478 |future |goto Highmountain/31 36.08,72.53
]],
},
{
currency="OR",
treasure=[[Treasures of Deathwing]],
spot="Highmountain/29 51.99,28.72",
item=138783,
quest=39606,
steps=[[
step
Go to the Path of Huln |goto Highmountain/0 47.59,84.22 < 10 |walk
Enter Neltharion's Vault |goto Highmountain/30 45.59,15.89 < 10 |walk
Stand on the Titan Waygate |goto Highmountain/29 51.99,28.72 < 5 |walk
|tip It will teleport you.
click Highmountain Brazier##251031 |goto Highmountain/29 63.74,37.49 < 5 |walk
kill Titan Defender##96300+ |goto Highmountain/29 60.20,37.64 < 10 |walk
|tip Kill the Titan Defenders that spawn.
click Glimmering Treasure Chest##251754 |q 39606 |future |goto Highmountain/29 59.25,41.53
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Highmountain 36.61,62.13",
item=138783,
quest=40488,
steps=[[
step
click Treasure Chest##251751 |q 40488 |future |goto Highmountain 36.61,62.13
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Highmountain 37.35,33.81",
currency="OR",
quest=40477,
steps=[[
step
Follow the path through the camp |goto Highmountain/0 39.46,35.03 < 10 |only if walking
click Small Treasure Chest##233107 |q 40477 |future |goto Highmountain 37.35,33.81
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Highmountain 39.30,76.21",
item=138783,
quest=40473,
steps=[[
step
click Treasure Chest##251751 |q 40473 |future |goto Highmountain 39.30,76.21
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Highmountain 39.37,62.29",
item=138783,
quest=40474,
steps=[[
step
click Treasure Chest##251751 |q 40474 |future |goto Highmountain 39.37,62.29
]],
},
{
currency="OR",
treasure=[[Whitewater Wash Treasure]],
spot="Highmountain 39.55,57.44",
item=138783,
quest=39812,
steps=[[
step
Enter the cave |goto Highmountain/0 39.99,57.89 < 5 |walk
click Treasure Chest##251668 |q 39812 |future |goto Highmountain 39.55,57.44
]],
},
{
currency="OR",
treasure=[[Floating Treasure]],
spot="Highmountain 40.10,48.91",
item=131763,
quest=39494,
steps=[[
step
clicknpc Floating Treasure##95958 |q 39494 |future |goto Highmountain 40.10,48.91
|tip It floats down the river. You may have to wait for it to appear.
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Highmountain 41.57,46.86",
item=138783,
quest=40494,
steps=[[
step
Enter Mucksnout Den |goto Highmountain/0 41.57,46.86 < 10
Cross the bridge |goto Highmountain/16 47.93,50.60 < 10
Go down the path here |goto 50.70,28.81 < 10
click Treasure Chest##251751 |q 40494 |future |goto 60.67,25.00
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Highmountain 42.21,27.30",
item=138783,
quest=40479,
steps=[[
step
click Treasure Chest##251751 |q 40479 |future |goto Highmountain 42.21,27.30
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Highmountain 42.49,35.03",
currency="OR",
quest=40480,
steps=[[
step
Run across the tree trunk |goto Highmountain/0 42.01,34.69 < 10 |only if walking
click Small Treasure Chest##233107 |q 40480 |future |goto Highmountain 42.49,35.03
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Highmountain 43.75,72.75",
currency="OR",
quest=40510,
steps=[[
step
Go up the path |goto Highmountain/0 41.94,70.97 < 10 |only if walking
click Small Treasure Chest##233107 |q 40510 |future |goto Highmountain 43.75,72.75
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Highmountain 45.19,27.46",
currency="OR",
quest=44279,
steps=[[
step
Enter the underwater cave |goto Highmountain/0 45.84,27.37 < 10 |walk
click Small Treasure Chest##233107 |q 44279 |future |goto Highmountain 45.19,27.46
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Highmountain 45.57,34.62",
currency="OR",
quest=40481,
steps=[[
step
click Small Treasure Chest##233107 |q 40481 |future |goto Highmountain 45.57,34.62
]],
},
{
item=138783,
treasure=[[Glimmering Treasure Chest]],
spot="Highmountain 46.68,28.10",
currency="OR",
quest=40482,
steps=[[
step
Go up the path |goto Highmountain/0 46.34,24.98 < 10 |only if walking
Cross the bridge |goto 47.21,25.09 < 10 |only if walking
Jump up the rocks |goto 47.59,27.47 < 5 |only if walking
click Glimmering Treasure Chest##240637 |q 40482 |future |goto Highmountain 46.68,28.10
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Highmountain 46.81,40.13",
currency="OR",
quest=40507,
steps=[[
step
Follow the path |goto Highmountain/0 46.63,39.53 < 10 |only if walking
click Small Treasure Chest##233107 |q 40507 |future |goto Highmountain 46.81,40.13
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Highmountain 47.64,44.06",
item=131926,
quest=39503,
steps=[[
step
Go up the path |goto Highmountain/0 47.38,44.59 < 10 |only if walking
click Treasure Chest##251751 |q 39503 |future |goto Highmountain 47.64,44.06
]],
},
{
item=138783,
treasure=[[Thunder Totem Stolen Goods]],
spot="Highmountain 49.20,49.78",
currency="OR",
quest=40475,
condition=[[only if haveq(39784) or completedq(39784)]],
steps=[[
step
Follow the road north |goto Highmountain/0 47.86,52.92 < 10 |only if walking
Enter the cave |goto Highmountain/0 48.66,50.01 < 10 |walk
click Thunder Totem Stolen Goods##244473 |q 40475 |future |goto Highmountain 49.20,49.78
|tip You must have the BeastMaster Pao'lek quest in your log or have already completed it to get this treasure.
]],
},
{
treasure=[[Treasure Chest]],
spot="Highmountain 49.63,37.75",
item=131927,
quest=39466,
steps=[[
step
Follow the path |goto Highmountain/0 49.49,36.84 < 10 |only if walking
click Treasure Chest##251751 |q 39466 |future |goto Highmountain 49.63,37.75
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Highmountain 50.24,38.61",
currency="OR",
quest=40497,
steps=[[
step
Enter Rockcrawler Chasm |goto Highmountain/0 51.54,37.41 < 10
Cross the first bridge |goto Highmountain/0 50.33,35.70 < 10
Cross the next bridge |goto 49.39,37.97 < 10
Go up the pathway |goto 49.93,40.15 < 5
click Small Treasure Chest##233107 |q 40497 |future |goto Highmountain 50.24,38.61
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Highmountain 50.81,35.04",
currency="OR",
quest=40506,
steps=[[
step
Follow the path up |goto Highmountain/0 51.94,34.09 < 10 |only if walking
Reach the top |goto 49.66,35.55 < 5 |only if walking
click Small Treasure Chest##233107 |q 40506 |future |goto Highmountain 50.81,35.04
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Highmountain 50.98,36.47",
item=138783,
quest=40496,
steps=[[
step
Enter Rockcrawler Chasm |goto Highmountain/0 51.54,37.41 < 10
Cross the bridge |goto Highmountain/0 50.28,35.63 < 10
click Treasure Chest##251751 |q 40496 |future |goto Highmountain 50.98,36.47
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Highmountain 50.98,38.80",
item=138783,
quest=40498,
steps=[[
step
click Treasure Chest##251751 |q 40498 |future |goto Highmountain 50.98,38.80
|tip It is inside the tent.
]],
},
{
currency="OR",
treasure=[[Phoenix Peak Treasure]],
spot="Highmountain 51.17,53.05",
item=138783,
quest=39471,
steps=[[
step
Go up the hill |goto Highmountain/0 53.11,48.14 < 10 |only if walking
Follow the narrow path along the mountain |goto 50.62,51.71 < 5 |only if walking
click Glimmering Treasure Chest##251754 |q 39471 |future |goto Highmountain 51.17,53.05
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Highmountain 52.02,32.41",
item=138783,
quest=40505,
steps=[[
step
click Treasure Chest##251751 |q 40505 |future |goto Highmountain 52.02,32.41
]],
},
{
currency="OR",
treasure=[[Totally Safe Treasure Chest]],
spot="Highmountain 52.30,51.41",
access="Completionist",
item=131802,
quest=39766,
steps=[[
step
Follow the path |goto Highmountain/0 53.13,55.78 < 10 |only if walking
Continue up the narrow path |goto Highmountain/0 53.56,53.39 < 5 |only if walking
click Totally Safe Treasure Chest##244429
kill Ram'Pag##97102
click Actually Safe Treasure Chest##244446 |q 39766 |future |goto Highmountain 52.30,51.41
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Highmountain 53.06,39.46",
currency="OR",
quest=40499,
steps=[[
step
click Small Treasure Chest##233107 |q 40499 |future |goto Highmountain 53.06,39.46
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Highmountain 53.41,48.68",
currency="OR",
quest=40500,
steps=[[
step
click Small Treasure Chest##233107 |q 40500 |future |goto Highmountain 53.41,48.68
|tip It is inside the small tent.
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Highmountain 53.45,43.52",
currency="OR",
quest=40484,
steps=[[
step
Follow the path |goto Highmountain/0 55.10,44.21 < 20 |only if walking
Follow the path |goto 54.50,42.35 < 20 |only if walking
click Small Treasure Chest##233107 |q 40484 |future |goto Highmountain 53.45,43.52
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Highmountain 53.61,51.03",
access="Completionist",
item=131810,
quest=39824,
steps=[[
step
Follow the path along the mountain |goto Highmountain/0 55.34,52.70 < 10 |only if walking
Jump onto the rock and branch below |goto Highmountain 53.48,51.38 < 5 |only if walking
click Treasure Chest##251751 |q 39824 |future |goto Highmountain 53.61,51.03
]],
},
{
item=138783,
treasure=[[Glimmering Treasure Chest]],
spot="Highmountain 54.17,41.59",
currency="OR",
quest=40483,
steps=[[
step
Enter the cave |goto Highmountain 55.14,44.25 < 5 |walk
Follow the path around |goto Highmountain/0 55.12,41.95 < 10 |walk
click Glimmering Treasure Chest##240637 |q 40483 |future |goto Highmountain 54.17,41.59
|tip It is at the very top of the cave.
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Highmountain 55.13,49.64",
currency="OR",
quest=40487,
steps=[[
step
click Small Treasure Chest##233107 |q 40487 |future |goto Highmountain 55.13,49.64
]],
},
{
comment="Notice: This treasure requires the Lightforged Warframe ability to access.",
treasure=[[Krokul Emergency Cache]],
spot="Krokuun/0 51.41,76.22",
currency="32 VA",
quest=48884,
steps=[[
step
Enter the cave |goto Krokuun/0 55.47,68.24 < 7 |only if walking
Follow the path |goto 54.97,69.55 < 7 |only if walking
Follow the path |goto 54.43,68.38 < 7 |only if walking
Leave the cave |goto 53.71,68.21 < 10 |only if walking
Follow the path |goto 50.98,71.05 < 15 |only if walking
Follow the path |goto 50.32,73.48 < 15 |only if walking
Follow the path up |goto 50.66,75.34 < 10 |walk
Summon your Lightforged Warframe |cast Summon Lightforged Warframe##250436
|tip Use the Crusader Leap ability to smash the rubble.
click Krokul Emergency Cache##276490 |q 48884 |goto 51.41,76.22 |future
]],
},
{
comment="Notice: This treasure requires the Light's Judgement ability to access.",
treasure=[[Legion Tower Chest]],
spot="Krokuun/0 62.78,37.53",
currency="45 VA",
quest=48885,
steps=[[
step
Follow the path |goto Krokuun/0 61.71,46.63 < 15 |only if walking
Follow the path |goto 62.49,45.21 < 15 |only if walking
Follow the path up |goto 63.78,42.72 < 15 |only if walking
Follow the path up |goto 64.77,39.61 < 15 |only if walking
Cast Light's Judgement on the rubble |cast Light's Judgement##247427 |goto 64.17,39.12 < 5
click Legion Tower Chest##276489 |q 48885 |goto 62.78,37.53 |future
]],
},
{
comment="Notice: This treasure requires the Shroud of Arcane Echoes ability to access.",
treasure=[[Long-Lost Augari Treasure]],
spot="Krokuun/0 75.17,69.75",
currency="38 VA",
quest=49154,
steps=[[
step
Follow the path |goto Krokuun/0 58.93,68.33 < 20 |only if walking
Follow the path |goto 59.76,67.66 < 15 |only if walking
Follow the path |goto 59.71,64.79 < 15 |only if walking
Follow the path |goto 61.50,62.27 < 15 |only if walking
Go down the stairs |goto 63.05,62.20 < 15 |only if walking
Follow the path |goto 65.54,63.36 < 15 |only if walking
Follow the path |goto 67.37,66.02 < 20 |only if walking
Follow the path |goto 70.02,68.95 < 20 |only if walking
Follow the path |goto 72.26,70.14 < 15 |only if walking
Cast Shroud of Arcane Echoes |cast Shroud of Arcane Echoes##248779
|tip The duration is only ten seconds, so click the chest quickly.
click Long-Lost Augari Treasure##277343 |q 49154 |goto 75.17,69.75 |future
]],
},
{
comment="Notice: This treasure requires the Light's Judgement ability to access.",
treasure=[[Lost Krokul Chest]],
spot="Krokuun/0 48.54,58.95",
currency="36 CC",
quest=48886,
steps=[[
step
Follow the path |goto Krokuun/0 41.65,61.99 < 15 |only if walking
Follow the path |goto 42.24,59.98 < 15 |only if walking
Follow the path |goto 43.03,56.19 < 15 |only if walking
Follow the path up |goto 45.41,56.22 < 15 |only if walking
Follow the path up |goto 46.89,58.63 < 15 |only if walking
Follow the path |goto 47.76,59.35 < 10 |walk
Cast Light's Judgement on the rubble |cast Light's Judgement##247427
click Lost Krokul Chest##276491 |q 48886 |goto 48.54,58.95 |future
]],
},
{
comment="Notice: This treasure requires the Shroud of Arcane Echoes ability to access.",
treasure=[[Precious Augari Keepsakes]],
spot="Krokuun/0 55.93,74.27",
currency="48 VA",
quest=49156,
steps=[[
step
Follow the path |goto Krokuun/0 59.09,68.33 < 15 |only if walking
Follow the path |goto 60.08,70.32 < 15 |only if walking
Follow the path |goto 59.33,71.89 < 10 |only if walking
Follow the path |goto 57.30,74.42 < 20 |only if walking
Enter the building |goto 56.37,74.15 < 7
Cast Shroud of Arcane Echoes |cast Shroud of Arcane Echoes##248779
|tip The duration is only ten seconds, so click the chest quickly.
click Precious Augari Keepsakes##277344 |q 49156 |goto 55.93,74.27 |future
]],
},
{
comment="Notice: This treasure requires the Shroud of Arcane Echoes ability to access.",
treasure=[[Augari Goods]],
spot="Eredath/0 40.86,69.77",
currency="31 VA",
quest=49153,
steps=[[
step
Follow the path |goto Eredath/0 44.93,56.71 < 15 |only if walking
Go down the stairs |goto 44.42,58.13 < 15 |only if walking
Follow the path |goto 44.04,63.26 < 15 |only if walking
Go down the hill |goto 44.06,65.99 < 15 |only if walking
Follow the path |goto 42.59,67.56 < 15 |only if walking
Enter the building |goto 41.37,69.88 < 7 |only if walking
Cast Shroud of Arcane Echoes |cast Shroud of Arcane Echoes##248779
|tip The duration is only ten seconds, so click the chest quickly.
click Augari Goods##277342 |q 49153 |goto 40.86,69.77 |future
]],
},
{
treasure=[[Augari Secret Stash]],
spot="Eredath/0 70.29,59.74",
currency="40 CC",
quest=48748,
steps=[[
step
Go up the hill |goto Eredath/0 64.48,42.20 < 15 |only if walking
Follow the path |goto 66.60,44.69 < 15 |only if walking
Follow the path |goto 71.02,48.46 < 15 |only if walking
Follow the path |goto 70.38,52.59 < 10 |only if walking
Follow the path |goto 68.98,56.64 < 10 |only if walking
Jump to the small island |goto 69.55,57.91 < 7 |only if walking
Jump to the large island |goto 69.89,59.16 < 7 |only if walking
click Augari Secret Stash##276227 |q 48748 |goto 70.29,59.74 |future
]],
},
{
comment="Notice: This treasure requires the Shroud of Arcane Echoes ability to access.",
treasure=[[Augari-Runed Chest]],
spot="Eredath/0 70.62,27.41",
currency="47 VA",
quest=49129,
steps=[[
step
Go up the hill |goto Eredath/0 64.29,41.88 < 15 |only if walking
Go up the hill |goto 65.14,40.85 < 10 |only if walking
Follow the path |goto 63.21,35.03 < 20 |only if walking
Follow the path |goto 63.40,29.55 < 15 |only if walking
Follow the path |goto 65.11,26.23 < 15 |only if walking
Follow the path |goto 69.35,27.92 < 15 |only if walking
Cast Shroud of Arcane Echoes |cast Shroud of Arcane Echoes##248779
|tip The duration is only ten seconds, so click the chest quickly.
click Augari-Runed Chest##277327 |q 49129 |goto 70.62,27.41 |future
]],
},
{
comment="Notice: This treasure requires the Light's Judgement ability to access.",
treasure=[[Chest of Ill-Gotten Gains]],
spot="Eredath/0 50.58,38.40",
currency="42 VA",
quest=48744,
steps=[[
step
Follow the path |goto Eredath/0 59.71,39.09 < 20 |only if walking
Follow the path |goto 56.04,40.03 < 20 |only if walking
Go up the stairs |goto 54.55,39.95 < 15 |only if walking
Follow the path |goto 52.00,39.86 < 20 |only if walking
Cast Light's Judgement on the rubble |cast Light's Judgement##247427 |goto 50.77,38.80 < 5
click Chest of Ill-Gotten Gains##276224 |q 48744 |goto 50.58,38.40 |future
]],
},
{
treasure=[[Desperate Eredar's Cache]],
spot="Eredath/0 57.04,76.84",
currency="42 VA",
quest=48749,
steps=[[
step
Follow the path |goto Eredath/0 55.38,71.80 < 15 |only if walking
Follow the path |goto 56.59,74.08 < 10 |only if walking
Go up the rubble |goto 57.07,74.60 < 5 |only if walking
Go up the rubble |goto 57.07,75.18 < 5 |only if walking
Jump across |goto 57.59,76.03 < 5 |only if walking
click Desperate Eredar's Cache##276228 |q 48749 |goto 57.04,76.84 |future
|tip For the final jump, make sure you are mounted.
]],
},
{
treasure=[[Doomseeker's Treasure]],
spot="Eredath/0 43.36,54.47",
currency="31 VA",
quest=48751,
steps=[[
step
Follow the path |goto Eredath/0 44.18,54.64 < 15 |only if walking
Follow the path |goto 44.45,52.81 < 5 |only if walking
Carefully land on the floating rock |goto 44.90,54.08 < 5 |only if walking
|tip Mount up and run forward, facing the rock. You will land on it.
Jump to the ledge |goto 44.08,53.91 < 5 |only if walking
click Doomseeker's Treasure##276230 |q 48751 |goto 43.36,54.47 |future
]],
},
{
comment="Notice: This treasure requires the Lightforged Warframe ability to access.",
treasure=[[Eredar Treasure Cache]],
spot="Eredath/0 42.91,5.49",
currency="36 VA",
quest=48743,
steps=[[
step
Go up the hill |goto Eredath/0 44.77,12.22 < 10 |only if walking
Follow the path |goto 44.99,9.17 < 15 |only if walking
Follow the path |goto 44.86,6.49 < 10 |only if walking
Follow the path |goto 44.31,5.30 < 7 |only if walking
Summon your Lightforged Warframe |cast Summon Lightforged Warframe##250436 |goto 43.44,4.45 < 5
|tip Use the Crusader Leap ability to smash the rubble.
click Eredar Treasure Cache##276223 |q 48743 |goto 42.91,5.49 |future
]],
},
{
comment="Notice: This treasure requires the Shroud of Arcane Echoes ability to access.",
treasure=[[Secret Augari Chest]],
spot="Eredath/0 62.14,22.47",
currency="35 VA",
quest=49151,
steps=[[
step
Follow the path |goto Eredath/0 59.66,35.92 < 15 |only if walking
Follow the path |goto 58.76,33.23 < 15 |only if walking
Follow the path |goto 59.86,29.61 < 15 |only if walking
Follow the path |goto 59.79,26.20 < 15 |only if walking
Follow the path |goto 60.60,23.43 < 15 |only if walking
Follow the path |goto 61.76,21.80 < 10 |only if walking
Enter the building |goto 62.21,22.18 < 7 |only if walking
Cast Shroud of Arcane Echoes |cast Shroud of Arcane Echoes##248779
|tip The duration is only ten seconds, so click the chest quickly.
click Secret Augari Chest##277340 |q 49151 |goto 62.14,22.47 |future
]],
},
{
comment="Notice: You will need a Goblin Glider Kit to reach this treasure. (if not Demon Hunter)",
treasure=[[Shattered House Chest]],
spot="Eredath/0 27.28,40.14",
currency="35 VA",
quest=48750,
steps=[[
step
collect 1 Goblin Glider Kit##109076
|tip You can purchase these from the Auction House or make them with Engineering. |only if not DemonHunter
|only if not DemonHunter
step
Follow the path |goto Eredath/0 28.59,43.66 < 10 |only if walking
Jump down |goto 29.31,42.94 < 10 |only if walking
Follow the path |goto 34.09,41.95 < 15 |only if walking
Follow the path |goto 33.48,44.75 < 15 |only if walking
Jump down |goto 32.78,45.15 < 15 |only if walking
Use your Goblin Glider |use Goblin Glider Kit##109076 |goto 31.78,45.15 < 7 |only if not DemonHunter
Glide from this point |goto 32.32,44.54 < 5 |only DemonHunter
|tip You will need to double-jump to clear the distance. |only DemonHunter
Glide to the ledge with the building entrance |goto 28.14,41.97 < 10 |only if walking
Follow the path |goto 27.64,40.41 < 7 |walk
click Shattered House Chest##276229 |q 48750 |goto 27.28,40.14 |future
]],
},
{
comment="Notice: This treasure requires the Light's Judgement ability to access.",
treasure=[[Student's Surprising Surplus]],
spot="Eredath/0 61.12,72.56",
currency="50 VA",
quest=48745,
steps=[[
step
Follow the path |goto Eredath/0 56.14,70.91 < 15
Go down the stairs |goto 57.10,69.87 < 15 |only if walking
Follow the path |goto 59.28,67.83 < 15 |only if walking
Follow the path |goto 61.42,68.84 < 10 |only if walking
Follow the path |goto 62.22,70.80 < 7 |only if walking
Cast Light's Judgement on the rubble |cast Light's Judgement##247427 |goto 62.13,72.26
click Student's Surprising Surplus##276225 |q 48745 |goto 61.12,72.56 |future
]],
},
{
comment="Notice: This treasure requires the Lightforged Warframe ability to access.",
treasure=[[Void-Tinged Chest]],
spot="Eredath/0 40.28,51.45",
currency="45 VA",
quest=48747,
steps=[[
step
Follow the path |goto Eredath/0 44.21,54.06 < 15 |only if walking
Follow the path |goto 43.32,52.38 < 15 |only if walking
Follow the path |goto 41.40,51.14 < 10 |only if walking
Follow the path |goto 40.58,49.30 < 10 |only if walking
Follow the path |goto 39.76,48.52 < 10 |only if walking
Follow the path |goto 39.05,49.75 < 10 |only if walking
Summon your Lightforged Warframe |cast Summon Lightforged Warframe##250436 |goto 39.64,50.59 < 7 |only if walking
|tip Use the Crusader Leap ability to smash the rubble.
click Void-Tinged Chest##276226 |q 48747 |goto 40.28,51.45 |future
]],
},
{
item=129210,
treasure=[[Small Treasure Chest]],
spot="Mardum, the Shattered Abyss 74.28,54.53",
currency="OR",
quest=39977,
steps=[[
step
Enter the cave |goto Mardum, the Shattered Abyss C/0 70.97,54.13 < 10 |walk
click Small Treasure Chest##233107 |q 39977 |future |goto Mardum, the Shattered Abyss C/0 74.28,54.53
]],
},
{
item=129210,
treasure=[[Small Treasure Chest]],
spot="Mardum, the Shattered Abyss C/0 23.06,53.89",
currency="OR",
quest=40797,
steps=[[
step
Enter the cave |goto Mardum, the Shattered Abyss C/0 23.58,54.23 < 10 |walk
click Small Treasure Chest##233107 |q 40797 |future |goto Mardum, the Shattered Abyss C/0 23.06,53.89
]],
},
{
treasure=[[Small Treasure Chest]],
spot="Mardum, the Shattered Abyss C/0 51.13,50.79",
item=129210,
quest=40743,
steps=[[
step
click Small Treasure Chest##233107 |q 40743 |future |goto Mardum, the Shattered Abyss C/0 51.13,50.79
|tip Avoid the Fel bombardment.
]],
},
{
item=129196,
treasure=[[Small Treasure Chest]],
spot="Mardum, the Shattered Abyss C/1 48.75,15.68",
currency="OR",
quest=39972,
steps=[[
step
Enter the cave |goto Mardum, the Shattered Abyss C/0 63.77,53.62 < 10 |walk
click Small Treasure Chest##233107 |q 39972 |future |goto Mardum, the Shattered Abyss C/1 48.75,15.68
|tip This cave is only accessible after you have completed the Give Me Sight Beyond Sight quest.
]],
},
{
treasure=[[Small Treasure Chest]],
spot="Mardum, the Shattered Abyss C/0 34.85,70.20",
item=129210,
quest=39970,
steps=[[
step
Enter the house |goto Mardum, the Shattered Abyss C/0 34.03,70.06 < 5 |walk
click Small Treasure Chest##233107 |q 39970 |future |goto Mardum, the Shattered Abyss C/0 34.85,70.20
]],
},
{
item=128946,
treasure=[[Small Treasure Chest]],
spot="Mardum, the Shattered Abyss C/1 54.91,58.28",
currency="OR",
quest=39973,
steps=[[
step
Enter the cave |goto Mardum, the Shattered Abyss C/0 63.77,53.62 < 10 |walk
Follow the path up |goto Mardum, the Shattered Abyss C/1 31.57,62.60 < 10 |walk
click Small Treasure Chest##233107 |q 39973 |future |goto Mardum, the Shattered Abyss C/1 54.91,58.28
|tip This cave is only accessible after you have completed the Give Me Sight Beyond Sight quest.
]],
},
{
treasure=[[Small Treasure Chest]],
spot="Mardum, the Shattered Abyss C/0 73.49,48.92",
item=129195,
quest=39975,
steps=[[
step
click Small Treasure Chest##233107 |q 39975 |future |goto Mardum, the Shattered Abyss C/0 73.49,48.92
]],
},
{
item=129210,
treasure=[[Small Treasure Chest]],
spot="Mardum, the Shattered Abyss C/0 69.70,42.40",
currency="OR",
quest=39976,
steps=[[
step
Enter the cave |goto Mardum, the Shattered Abyss C/0 70.69, 53.97 < 10 |walk
click Small Treasure Chest##233107 |q 39976 |future |goto Mardum, the Shattered Abyss C/0 69.70,42.40
]],
},
{
treasure=[[Small Treasure Chest]],
spot="Mardum, the Shattered Abyss C/0 66.92,27.67",
item=129210,
quest=39974,
steps=[[
step
Enter the cave |goto Mardum, the Shattered Abyss C/0 66.98,24.87 < 10 |walk
click Small Treasure Chest##233107 |q 39974 |future |goto Mardum, the Shattered Abyss C/0 68.08,23.68
]],
},
{
treasure=[[Small Treasure Chest]],
spot="Mardum, the Shattered Abyss C/0 82.07,50.43",
item=129196,
quest=40820,
steps=[[
step
Enter the cave |goto Mardum, the Shattered Abyss C/0 80.32,48.16 < 10 |walk
click Small Treasure Chest##233107 |q 40820 |future |goto Mardum, the Shattered Abyss C/0 82.07,50.43
]],
},
{
treasure=[[Small Treasure Chest]],
spot="Mardum, the Shattered Abyss C/0 78.75,50.47",
item=129210,
quest=40274,
steps=[[
step
Enter the cave |goto Mardum, the Shattered Abyss C/0 78.30,49.99 < 10 |walk
click Small Treasure Chest##233107 |q 40274 |future |goto Mardum, the Shattered Abyss C/0 78.75,50.47
]],
},
{
item=129196,
treasure=[[Small Treasure Chest]],
spot="Mardum, the Shattered Abyss C/0 41.76,37.61",
currency="OR",
quest=40759,
steps=[[
step
click Small Treasure Chest##233107 |q 40759 |future |goto Mardum, the Shattered Abyss C/0 41.76,37.61
]],
},
{
treasure=[[Small Treasure Chest]],
spot="Mardum, the Shattered Abyss C/0 45.01,77.85",
item=129192,
quest=39971,
steps=[[
step
click Small Treasure Chest##233107 |q 39971 |future |goto Mardum, the Shattered Abyss C/0 45.01,77.85
]],
},
{
item=129196,
treasure=[[Small Treasure Chest]],
spot="Mardum, the Shattered Abyss C/0 76.24,38.99",
currency="OR",
quest=40338,
steps=[[
step
Enter the cave |goto Mardum, the Shattered Abyss C/0 77.0,41.4 < 10 |walk
click Small Treasure Chest##233107 |q 40338 |future |goto Mardum, the Shattered Abyss C/0 76.24,38.99
]],
},
{
treasure=[[Small Treasure Chest]],
spot="Mardum, the Shattered Abyss C/0 42.19,49.16",
item=129210,
quest=40223,
steps=[[
step
Enter the cave |goto Mardum, the Shattered Abyss C/0 41.59,48.61 < 10 |walk
click Small Treasure Chest##233107 |q 40223 |future |goto Mardum, the Shattered Abyss C/0 42.19,49.16
]],
},
{
item=129210,
treasure=[[Small Treasure Chest]],
spot="Mardum, the Shattered Abyss C/3 50.19,49.31",
currency="OR",
quest=40772,
steps=[[
step
Go up the path here |goto Mardum, the Shattered Abyss C/2 55.50,76.33 < 10
Go up the stairs in the tower |goto Mardum, the Shattered Abyss C/2 49.49,41.45 < 10 |walk
click Small Treasure Chest##233107 |q 40772 |future |goto Mardum, the Shattered Abyss C/3 50.19,49.31
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Stormheim 27.33,57.49",
item=138783,
quest=38529,
steps=[[
step
Cross the bridge and up the crashed ship |goto Stormheim/0 31.74,54.65 < 10 |only if walking
Enter the cave |goto Stormheim 31.4,57.1 < 10 |walk
Follow the path around |goto Stormheim/9 28.79,33.52 < 10 |walk
click Treasure Chest##251751 |q 38529 |future |goto Stormheim/9 20.04,41.07
]],
},
{
currency="OR",
treasure=[[Small Treasure Chest]],
spot="Stormheim 31.10,56.00",
item=138783,
quest=38676,
steps=[[
step
Cross the bridge |goto Stormheim/0 31.72,54.78 < 10 |only if walking
click Small Treasure Chest##233107 |q 38676 |future |goto Stormheim 31.10,56.00
|tip It is on the first floor of the wrecked ship.
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Stormheim 32.05,47.19",
item=138783,
quest=43196,
steps=[[
step
Go up the hill |goto Stormheim/0 34.72,45.74 < 10 |only if walking
Continue up the path |goto 33.31,47.62 < 10 |only if walking
Enter the cave |goto 32.75,47.96 < 10 |walk
click Treasure Chest##251751 |q 43196 |future |goto Stormheim 32.05,47.19
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Stormheim 32.74,27.91",
item=138783,
quest=38490,
steps=[[
step
Enter the cave |goto Stormheim 33.65,27.35 < 10 |walk
click Treasure Chest##251751 |q 38490 |future |goto Stormheim 32.74,27.91
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Stormheim 33.14,36.07",
item=138783,
quest=38495,
steps=[[
step
Follow the path |goto Stormheim/0 35.52,38.40 < 25 |only if walking
click Treasure Chest##251751 |q 38495 |future |goto Stormheim 33.14,36.07
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Stormheim 35.03,36.60",
item=138783,
quest=38487,
steps=[[
step
Follow the path |goto Stormheim/0 36.29,34.58 < 10 |only if walking
Enter the cave |goto Stormheim/0 34.81,34.29 < 10 |walk
click Treasure Chest##251751 |q 38487 |future |goto Stormheim 35.03,36.60
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Stormheim 35.17,68.98",
currency="OR",
quest=38478,
steps=[[
step
Enter the tower |goto Stormheim/0 35.08,68.95 < 10 |walk
Go up the ramps |goto Stormheim/0 34.84,68.94 < 5 |walk
click Small Treasure Chest##233107 |q 38478 |future |goto Stormheim 35.17,68.98
|tip It is at the top of the tower.
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Stormheim 35.72,54.07",
item=138783,
quest=38677,
steps=[[
step
click Treasure Chest##251751 |q 38677 |future |goto Stormheim 35.72,54.07
|tip It on the rail of the wrecked ship.
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Stormheim 35.92,47.92",
currency="OR",
quest=38680,
steps=[[
step
click Small Treasure Chest##233107 |q 38680 |future |goto Stormheim 35.92,47.92
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Stormheim 37.18,38.65",
currency="OR",
quest=43208,
steps=[[
step
click Small Treasure Chest##233107 |q 43208 |future |goto Stormheim 37.18,38.65
|tip The chest is between the rocks.
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Stormheim 39.48,65.18",
item=138783,
quest=38486,
steps=[[
step
click Treasure Chest##251751 |q 38486 |future |goto Stormheim 39.48,65.18
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Stormheim 39.57,19.34",
currency="OR",
quest=38498,
steps=[[
step
click Small Treasure Chest##233107 |q 38498 |future |goto Stormheim 39.57,19.34
|tip It is under the stairs on the deck of the ship.
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Stormheim 40.65,68.52",
currency="OR",
quest=38475,
steps=[[
step
clicknpc Grapple Point##110334 |goto Stormheim/0 39.73,67.42 < 5 |only if walking
clicknpc Grapple Point##110334 |goto 40.32,67.84 < 5 |only if walking
click Small Treasure Chest##233107 |q 38475 |future |goto Stormheim 40.65,68.52
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Stormheim 41.74,46.04",
currency="OR",
quest=38488,
steps=[[
step
click Small Treasure Chest##233107 |q 38488 |future |goto Stormheim 41.74,46.04
|tip It is inside the tent.
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Stormheim 42.33,61.12",
currency="OR",
quest=38477,
steps=[[
step
Follow the path |goto Stormheim/0 43.19,60.04 < 20 |only if walking
click Small Treasure Chest##233107 |q 38477 |future |goto Stormheim 42.33,61.12
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Stormheim 42.47,34.07",
item=141896,
quest=43189,
steps=[[
step
Jump up the rocks |goto Stormheim/0 42.13,35.66 < 10 |only if walking
Enter the statue |goto Stormheim 42.24,34.87 < 5 |walk
Go up the tower |goto Stormheim/0 42.65,33.66 < 5 |walk
click Glimmering Treasure Chest##251754 |q 43189 |future |goto Stormheim 42.47,34.07
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Stormheim 42.61,65.79",
item=138783,
quest=38474,
steps=[[
step
click Treasure Chest##251751 |q 38474 |future |goto Stormheim 42.61,65.79
|tip It is inside the building here.
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Stormheim 43.16,40.49",
currency="OR",
quest=43238,
steps=[[
step
Follow the path up and around |goto Stormheim/0 42.03,39.67 < 10 |only if walking
Jump down to the rock below |goto 43.34,39.11 < 5 |only if walking
clicknpc Grapple Point##110334 |only if walking
Grapple to the rock ledge |goto 43.23,40.51 < 5 |only if walking
click Small Treasure Chest##233107 |q 43238 |future |goto Stormheim 43.16,40.49
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Stormheim 43.70,80.09",
currency="OR",
quest=43239,
steps=[[
step
clicknpc Grapple Point##110334 |goto Stormheim/0 43.77,80.58 < 5 |only if walking
clicknpc Grapple Point##110334 |goto 43.14,80.46 < 5 |only if walking
clicknpc Grapple Point##110334 |goto 43.54,80.20 < 5 |only if walking
click Small Treasure Chest##233107 |q 43239 |future |goto Stormheim 43.70,80.09
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Stormheim 44.16,69.97",
currency="OR",
quest=38489,
steps=[[
step
clicknpc Grapple Point##110334 |goto Stormheim/0 44.00,70.12 < 5 |only if walking
|tip It is on top of this building. |only if walking
click Small Treasure Chest##233107 |q 38489 |future |goto Stormheim 44.16,69.97
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Stormheim 44.98,38.23",
currency="OR",
quest=43240,
steps=[[
step
clicknpc Grapple Points##110334 |only if walking
Grapple to the first rock |goto Stormheim/0 44.26,37.94 < 5 |only if walking
Grapple up to the second rock |goto 44.80,37.91 < 5 |only if walking
click Small Treasure Chest##233107 |q 43240 |future |goto Stormheim 44.98,38.23
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Stormheim 46.60,64.96",
currency="OR",
quest=38681,
steps=[[
step
Enter the cave |goto Stormheim 48.16,65.24 < 10 |walk
click Small Treasure Chest##233107 |q 38681 |future |goto Stormheim 46.60,64.96
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Stormheim 46.76,80.40",
item=138783,
quest=38481,
steps=[[
step
Reach the bridge |goto Stormheim/0 44.84,77.82 < 5 |only if walking
clicknpc Grapple Points##110334
|tip It's across the chasm.
Grapple across the Broken Bridge |goto 45.21,78.82 < 5 |only if walking
Grapple up the first rock |goto Stormheim/0 46.54,79.35 < 5 |only if walking
Grapple to the second rock |goto 46.91,80.39 < 5 |only if walking
click Treasure Chest##251751 |q 38481 |future |goto Stormheim 46.76,80.40
|tip It is up on a high rock ledge.
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Stormheim 47.46,34.12",
access="Completionist",
currency="OR",
quest=43255,
steps=[[
step
Go up the path |goto Stormheim/0 44.18,31.39 < 10 |only if walking
clicknpc Grapple Points##110334 |only if walking
Grapple up the ledge |goto 45.68,32.90 < 5 |only if walking
Grapple to the second rock |goto 46.29,33.12 < 5 |only if walking
Grapple up the third rock |goto 46.49,34.09 < 5 |only if walking
Grapple across |goto 47.40,34.08 < 5 |only if walking
click Treasure Chest##251668 |q 43255 |future |goto Stormheim 47.46,34.12
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Stormheim 47.98,62.37",
item=138783,
quest=38738,
steps=[[
step
click Treasure Chest##251751 |q 38738 |future |goto Stormheim 47.98,62.37
|tip It is at the bottom of the large waterfall.
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Stormheim 48.13,74.21",
currency="OR",
quest=38476,
steps=[[
step
click Small Treasure Chest##233107 |q 38476 |future |goto Stormheim 48.13,74.21
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Stormheim 49.08,59.99",
currency="OR",
quest=43207,
steps=[[
step
click Small Treasure Chest##233107 |q 43207 |future |goto Stormheim 49.08,59.99
]],
},
{
item=132897,
treasure=[[Glimmering Treasure Chest]],
spot="Stormheim 49.69,47.31",
currency="OR",
quest=38763,
steps=[[
step
Enter the cave |goto Stormheim/0 49.73,49.40 < 10 |walk
|tip Avoid the lasers on the ground.
click Glimmering Treasure Chest##240637
kill Vault Keeper##93110+
click Glimmering Treasure Chest##240637 |q 38763 |future |goto Stormheim 49.69,47.31
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Stormheim 49.77,78.01",
currency="OR",
quest=38485,
steps=[[
step
Walk to the edge of the cliff |goto Stormheim/0 49.28,77.09 < 5 |only if walking
clicknpc Grapple Point##110334 |only if walking
Grapple to the ledge |goto Stormheim/0 49.78,77.85 < 5 |only if walking
click Small Treasure Chest##233107 |q 38485 |future |goto Stormheim 49.77,78.01
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Stormheim 50.06,18.16",
item=138783,
quest=43195,
steps=[[
step
click Treasure Chest##251751 |q 43195 |future |goto Stormheim 50.06,18.16
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Stormheim 50.31,41.00",
currency="OR",
quest=38483,
steps=[[
step
Enter the cave |goto Stormheim/0 50.10,42.26 < 10 |walk
click Small Treasure Chest##233107 |q 38483 |future |goto Stormheim 50.31,41.00
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Stormheim 50.55,41.25",
currency="OR",
quest=43246,
steps=[[
step
clicknpc Grapple Point##110334 |goto Stormheim/0 48.89,40.92 < 5 |only if walking
clicknpc Grapple Point##110334 |goto 49.52,40.96 < 5 |only if walking
clicknpc Grapple Point##110334 |goto 50.14,40.77 < 5 |only if walking
clicknpc Grapple Point##110334 |goto 50.43,41.25 < 5 |only if walking
click Small Treasure Chest##233107 |q 43246 |future |goto Stormheim 50.55,41.25
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Stormheim 52.01,80.58",
currency="OR",
quest=38480,
steps=[[
step
Go up the hill |goto Stormheim/0 54.08,85.59 < 10 |only if walking
Follow the rock path |goto 53.54,83.37 < 10 |only if walking
Pass through the gap here |goto 53.01,82.18 < 10 |only if walking
click Small Treasure Chest##233107 |q 38480 |future |goto Stormheim 52.01,80.58
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Stormheim 53.22,93.14",
currency="OR",
quest=43190,
steps=[[
step
Follow the path down |goto Stormheim/0 55.67,85.89 < 25 |only if walking
Follow the path down |goto 59.36,86.81 < 15 |only if walking
Follow the path |goto 57.83,89.36 < 25 |only if walking
Follow the path |goto 52.74,90.48 < 25 |only if walking
click Small Treasure Chest##233107 |q 43190 |future |goto 53.22,93.14
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Stormheim 55.00,47.16",
item=138783,
quest=40095,
steps=[[
step
click Treasure Chest##251751 |q 40095 |future |goto Stormheim 55.00,47.16
|tip It's under the water in the ship wreckage.
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Stormheim 57.94,63.34",
currency="OR",
quest=40090,
steps=[[
step
click Small Treasure Chest##233107 |q 40090 |future |goto Stormheim 57.94,63.34
|tip It is under the table.
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Stormheim 58.04,47.51",
currency="OR",
quest=40082,
steps=[[
step
Enter the tower |goto Stormheim/0 58.16,47.55 < 5 |walk
click Small Treasure Chest##233107 |q 40082 |future |goto Stormheim 58.04,47.51
|tip It is at the top of the tower.
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Stormheim 59.30,58.46",
item=138783,
quest=40088,
steps=[[
step
Enter the tower |goto Stormheim/0 59.46,58.77 < 10 |walk
click Treasure Chest##251751 |q 40088 |future |goto Stormheim 59.30,58.46
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Stormheim 60.83,42.73",
currency="OR",
quest=40094,
steps=[[
step
clicknpc Grapple Point##110334
click Small Treasure Chest##233107 |q 40094 |future |goto Stormheim 60.83,42.73
|tip It's on the beam just behind the hook.
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Stormheim 61.40,44.40",
currency="OR",
quest=40093,
steps=[[
step
click Small Treasure Chest##233107 |q 40093 |future |goto Stormheim 61.40,44.40
|tip It is behind the house.
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Stormheim 61.83,62.89",
item=138783,
quest=40089,
steps=[[
step
click Treasure Chest##251751 |q 40089 |future |goto Stormheim 61.83,62.89
|tip It's inside the building.
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Stormheim 61.95,32.25",
currency="OR",
quest=38744,
steps=[[
step
click Small Treasure Chest##233107 |q 38744 |future |goto Stormheim 61.95,32.25
|tip It's against the rocks next to the wrecked ship.
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Stormheim 62.66,73.62",
currency="OR",
quest=40091,
steps=[[
step
Follow the path up |goto Stormheim/0 60.93,71.99 < 15 |only if walking
Enter the tower |goto 62.36,73.59 < 5 |walk
click Small Treasure Chest##233107 |q 40091 |future |goto Stormheim 62.66,73.62
|tip It is at the very top of the tower.
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Stormheim 64.29,39.56",
currency="OR",
quest=43302,
steps=[[
step
Follow the narrow path |goto Stormheim/0 64.22,41.63 < 5 |only if walking
click Small Treasure Chest##233107 |q 43302 |future |goto Stormheim 64.29,39.56
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Stormheim 65.36,43.10",
currency="OR",
quest=43205,
steps=[[
step
click Small Treasure Chest##233107 |q 43205 |future |goto Stormheim 65.36,43.10
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Stormheim 65.58,57.37",
currency="OR",
quest=43187,
steps=[[
step
click Small Treasure Chest##233107 |q 43187 |future |goto Stormheim 65.58,57.37
|tip It is on the table inside the tent.
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Stormheim 67.93,57.74",
currency="OR",
quest=40083,
steps=[[
step
click Small Treasure Chest##233107 |q 40083 |future |goto Stormheim 67.93,57.74
|tip It's inside the building
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Stormheim 68.46,29.59",
access="Completionist",
item=138783,
quest=40108,
steps=[[
step
clicknpc Grapple Point##110334 |goto Stormheim/0 68.67,20.17 < 5 |only if walking
Reach the top of the hill |goto 69.81,21.17 < 10 |only if walking
Grapple across |goto Stormheim/0 69.96,22.38 < 5 |only if walking
Grapple up the first rock |goto 69.78,23.08 < 5 |only if walking
Grapple to the second rock |goto 69.43,23.08 < 5 |only if walking
Carefully cross the small bridge |goto Stormheim/0 68.72,29.24 < 5 |only if walking
click Glimmering Treasure Chest##251754 |q 40108 |future |goto Stormheim 68.46,29.59
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Stormheim 68.97,41.83",
currency="OR",
quest=40086,
steps=[[
step
Enter the crypt |goto Stormheim/0 69.96,42.66 < 5 |walk
click Small Treasure Chest##233107 |q 40086 |future |goto Stormheim 68.97,41.83
|tip It's behind the pillar in the corner of the room.
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Stormheim 69.14,44.78",
currency="OR",
quest=38637,
steps=[[
step
clicknpc Grapple Point##110334
Grapple up the rock |goto Stormheim/0 69.34,44.96 < 5 |only if walking
click Small Treasure Chest##233107 |q 38637 |future |goto Stormheim 69.14,44.78
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Stormheim 69.98,67.19",
currency="OR",
quest=43188,
steps=[[
step
Cross the bridge |goto Stormheim/0 64.34,60.37 < 10 |only if walking
click Small Treasure Chest##233107 |q 43188 |future |goto Stormheim 69.98,67.19
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Stormheim 71.92,44.25",
currency="OR",
quest=43305,
steps=[[
step
clicknpc Grapple Point##110334 |goto Stormheim/0 72.24,43.75 < 5 |only if walking
Grapple to the second point |goto 71.91,44.07 < 5 |only if walking
click Small Treasure Chest##233107 |q 43305 |future |goto Stormheim 71.92,44.25
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Stormheim 72.13,54.89",
currency="OR",
quest=42628,
steps=[[
step
click Small Treasure Chest##233107 |q 42628 |future |goto Stormheim 72.13,54.89
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Stormheim 73.15,45.70",
currency="OR",
quest=43194,
steps=[[
step
click Small Treasure Chest##233107 |q 43194 |future |goto Stormheim 73.15,45.70
|tip It is inside the house.
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Stormheim 73.33,41.50",
currency="OR",
quest=40085,
steps=[[
step
click Small Treasure Chest##233107 |q 40085 |future |goto Stormheim 73.33,41.50
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Stormheim 73.96,52.23",
currency="OR",
quest=42632,
steps=[[
step
clicknpc Grapple Point##110334 |goto Stormheim/0 74.47,52.76 < 5 |only if walking
|tip It is up on the rock. |only if walking
Grapple to the next rock |goto 73.97,52.17 < 5 |only if walking
click Small Treasure Chest##233107 |q 42632 |future |goto Stormheim 73.96,52.23
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Stormheim 73.97,58.58",
currency="OR",
quest=43237,
steps=[[
step
click Small Treasure Chest##233107 |q 43237 |future |goto Stormheim 73.97,58.58
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Stormheim 74.41,41.82",
currency="OR",
quest=43306,
steps=[[
step
clicknpc Grapple Point##110334 |goto Stormheim/0 74.12,42.43 < 5 |only if walking
click Small Treasure Chest##233107 |q 43306 |future |goto Stormheim 74.41,41.82
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Stormheim 75.16,49.49",
item=138783,
quest=42629,
steps=[[
step
clicknpc Grapple Point##110334 |goto Stormheim/0 75.15,49.78 < 5 |only if walking
Grapple to the top of the mast |goto Stormheim/0 75.18,49.52 < 5 |only if walking
|tip It is all the way at the top of the sail. |only if walking
click Treasure Chest##251751 |q 42629 |future |goto Stormheim 75.16,49.49
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Stormheim 75.67,60.60",
currency="OR",
quest=43304,
steps=[[
step
clicknpc Grapple Point##110334 |goto Stormheim/0 75.59,60.56 < 5 |only if walking
click Small Treasure Chest##233107 |q 43304 |future |goto Stormheim 75.67,60.60
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Stormheim 78.42,71.38",
access="Completionist",
item=138783,
quest=43307,
steps=[[
step
clicknpc Grapple Point##110334 |goto Stormheim/0 75.83,64.23 < 5 |only if walking
clicknpc Grapple Point##110334 |goto 76.05,65.05 < 5 |only if walking
clicknpc Grapple Point##110334 |goto 76.91,66.17 < 5 |only if walking
clicknpc Grapple Point##110334 |goto 77.25,67.18 < 5 |only if walking
Jump down to the lower rock |goto 77.33,68.16 < 5 |only if walking
clicknpc Grapple Point##110334 |goto 77.12,69.29 < 5 |only if walking
Run up the rocks |goto 77.75,69.86 < 5 |only if walking
clicknpc Grapple Point##110334 |goto 78.57,70.33 < 5 |only if walking
click Treasure Chest##251751 |q 43307 |future |goto Stormheim 78.42,71.38
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Stormheim 81.87,67.50",
item=138783,
quest=40099,
steps=[[
step
Follow the path |goto Stormheim/0 80.98,63.92 < 25 |only if walking
Follow the path |goto 80.30,66.79 < 25 |only if walking
click Treasure Chest##251751 |q 40099 |future |goto Stormheim 81.87,67.50
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Stormheim 82.40,54.51",
currency="OR",
quest=43191,
steps=[[
step
click Small Treasure Chest##233107 |q 43191 |future |goto Stormheim 82.40,54.51
]],
},
{
item=138783,
treasure=[[Protected Treasure Chest]],
spot="Suramar/24 38.15,42.41",
currency="OR",
quest=43835,
steps=[[
step
Enter the Arcway Vaults |goto Suramar/0 34.58,84.31 < 10 |walk
Follow the path |goto Suramar/24 55.69,21.66 < 10 |walk
Go down the stars |goto Suramar/24 68.81,40.34 < 10 |walk
Squeeze through the gap |goto 62.75,70.75 < 5 |walk
|tip It will knock you back but if you hit the wall instead you can run through.
Squeeze through the second gap |goto 41.06,57.00 < 5 |walk
click Protected Treasure Chest##258034 |q 43835 |future |goto Suramar/24 38.15,42.41
]],
},
{
treasure=[[Shimmering Ancient Mana Cluster]],
spot="Suramar/33 35.49,32.40",
item=141655,
quest=43747,
steps=[[
step
Enter Falanaar Tunnels |goto Suramar/0 20.70,50.49 < 10 |walk
Go down the stairs |goto Suramar/33 56.74,91.44 < 10 |walk
Keep following the path |goto 42.08,65.32 < 10 |walk
Go down the stairs |goto 43.32,49.82 < 10 |walk
click Shimmering Ancient Mana Cluster##252449 |q 43747 |future |goto Suramar/33 35.49,32.40
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Suramar/23 40.52,28.99",
currency="AM",
quest=40902,
steps=[[
step
click Small Treasure Chest##233107 |q 40902 |future |goto Suramar/23 40.52,28.99
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Suramar/33 48.63,42.65",
currency="OR",
quest=43839,
steps=[[
step
Jump onto the big spiderweb |goto Suramar/33 49.16,46.99 < 10 |walk
Follow the web and jump onto the top of the stone legde |goto 50.56,41.70 < 5 |walk
click Small Treasure Chest##233107 |q 43839 |future |goto Suramar/33 48.63,42.65
]],
},
{
treasure=[[Volatile Leyline Crystal]],
spot="Suramar/32 35.32,52.73",
item=140328,
quest=43988,
steps=[[
step
Enter the Temple of Fal'adora |goto Suramar/0 22.87,35.72 < 10 |walk
Go down the path |goto Suramar/32 44.33,32.61 < 10 |walk
click Volatile Leyline Crystal##254009 |goto Suramar/32 35.32,52.73 < 5 |walk
|tip It is on the bottom of this building.
use Volatile Leyline Crystal##140328 |q 43988 |future |goto Suramar/32 35.32,52.73
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Suramar 16.60,29.74",
currency="OR",
quest=43846,
steps=[[
step
click Small Treasure Chest##233107 |q 43846 |future |goto Suramar 16.60,29.74
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Suramar 17.27,54.62",
item=138783,
quest=43844,
steps=[[
step
Go up the stairs |goto Suramar/0 16.94,54.44 < 5 |only if walking
click Treasure Chest##251751 |q 43844 |future |goto Suramar 17.27,54.62
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Suramar 19.79,16.04",
currency="OR",
quest=43845,
steps=[[
step
Enter the cave |goto Suramar 19.4,19.4 < 10 |walk
Jump up the rocks |goto Suramar/0 19.70,16.26 < 5 |walk
click Small Treasure Chest##233107 |q 43845 |future |goto Suramar 19.79,16.04
]],
},
{
treasure=[[Kel'danath's Manaflask]],
spot="Suramar 21.42,54.46",
item=136269,
quest=42842,
steps=[[
step
click Kel'danath's Manaflask##248407
use Kel'danath's Manaflask##136269 |q 42842 |future |goto Suramar 21.42,54.46
]],
},
{
currency="OR",
treasure=[[Small Treasure Chest]],
spot="Suramar 23.09,36.09",
item=138783,
quest=43838,
steps=[[
step
Enter the Temple of Fal'adora |goto Suramar 22.9,35.8 < 10 |walk
Follow the path |goto Suramar/32 54.6,40.4 < 10 |walk
Go down the stairs |goto Suramar/32 45.8,32.1 < 10 |walk
click Small Treasure Chest##252807 |q 43838 |future |goto Suramar/32 38.65,54.05
|tip It is on the bottom floor, underneath the stairs.
]],
},
{
treasure=[[Treasure Chest]],
spot="Suramar 23.35,48.15",
item=138783,
quest=43840,
steps=[[
step
click Treasure Chest##251751 |q 43840 |future |goto Suramar 23.35,48.15
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Suramar 23.41,48.80",
currency="OR",
quest=43842,
steps=[[
step
click Small Treasure Chest##233107 |q 43842 |future |goto Suramar 23.41,48.80
]],
},
{
item=139890,
treasure=[[Ancient Mana Chunk]],
spot="Suramar 26.35,41.27",
currency="AM",
quest=42827,
steps=[[
step
click Ancient Mana Chunk##251416 |q 42827 |future |goto Suramar 26.35,41.27
|tip Inside the building behind the rare spawn Shal'an.
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Suramar 26.83,16.96",
currency="OR",
quest=43847,
steps=[[
step
Enter the Lower Gardens |goto Suramar/0 27.84,20.51 < 10
click Small Treasure Chest##233107 |q 43847 |future |goto Suramar 26.83,16.96
]],
},
{
treasure=[[Kyrtos's Research Notes]],
spot="Suramar 26.87,70.73",
item=140327,
quest=43987,
steps=[[
step
Follow the path |goto Suramar/0 28.97,72.16 < 10 |only if walking
Enter the cave |goto Suramar 27.29,72.87 < 10 |walk
click Kyrtos's Research Notes##254008
use Kyrtos's Research Notes##140327 |q 43987 |future |goto Suramar 26.87,70.73
]],
},
{
currency="AM",
treasure=[[Treasure Chest]],
spot="Suramar 29.27,16.22",
access="Completionist",
item=138783,
quest=43848,
steps=[[
step
Go up the stairs |goto Suramar/0 31.31,18.80 < 10 |only if walking
Go up the stairs |goto 32.16,21.86 < 10 |only if walking
Cross the bridge |goto 32.82,17.97 < 10 |only if walking
Enter the tower |goto 30.48,15.94 < 10 |walk
click Treasure Chest##251751 |q 43848 |future |goto Suramar 29.27,16.22
]],
},
{
treasure=[[Shimmering Ancient Mana Cluster]],
spot="Suramar 29.74,88.00",
item=141655,
quest=43748,
steps=[[
step
Enter the Halls of the Eclipse |goto Suramar/0 29.01,84.85 < 10 |walk
Go down the stairs |goto 27.07,87.23 < 10 |walk
click Shimmering Ancient Mana Cluster##252432 |q 43748 |future |goto Suramar 29.74,88.00
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Suramar 31.95,62.49",
currency="OR",
quest=43831,
steps=[[
step
click Small Treasure Chest##233107 |q 43831 |future |goto Suramar 31.95,62.49
|tip It's on the far side of the fel pool.
]],
},
{
treasure=[[Treasure Chest]],
spot="Suramar 32.27,77.08",
item=138783,
quest=43834,
condition=[[only if completedq(40412)]],
steps=[[
step
Go up the ramp |goto Suramar/0 31.38,83.79 < 10 |only if walking
click Legion Portal##267226 |goto Suramar 31.0,85.1 < 5 |walk
click Treasure Chest##251751 |q 43834 |future |goto Suramar 32.27,77.08
]],
},
{
treasure=[[Arcane Power Unit]],
spot="Suramar 35.56,12.09",
access="Completionist",
item=140329,
quest=43989,
steps=[[
step
Go up the stairs |goto Suramar/0 31.11,9.12 < 10 |only if walking
click Arcane Power Unit##254023
use Infinite Stone##140329 |q 43989 |future |goto Suramar 35.56,12.09
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Suramar 38.13,87.12",
currency="OR",
quest=43830,
steps=[[
step
Follow the path |goto Suramar/0 40.77,78.85 < 25 |only if walking
click Small Treasure Chest##233107 |q 43830 |future |goto Suramar 38.13,87.12
]],
},
{
treasure=[[Shimmering Ancient Mana Cluster]],
spot="Suramar 41.96,19.19",
access="Completionist",
item=139786,
quest=43746,
steps=[[
step
Go up the stairs |goto Suramar/0 31.11,9.12 < 10 |only if walking
Cross the bridge |goto Suramar/0 36.70,12.59 < 10 |only if walking
click Shimmering Ancient Mana Cluster##252432 |q 43746 |future |goto Suramar 41.96,19.19
]],
},
{
item=139786,
treasure=[[Glimmering Treasure Chest]],
spot="Suramar 42.48,20.48",
access="Completionist",
currency="OR",
quest=43849,
steps=[[
step
Go up the stairs |goto Suramar/0 31.11,9.12 < 10 |only if walking
Cross the bridge |goto Suramar/0 36.70,12.59 < 10 |only if walking
Jump up the rocks |goto Suramar/0 41.24,21.37 < 5 |only if walking
Go up the path |goto 41.57,21.22 < 5 |only if walking
Jump up here |goto 42.35,20.93 < 5 |only if walking
click Glimmering Treasure Chest##240637 |q 43849 |future |goto Suramar 42.48,20.48
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Suramar 42.57,76.68",
currency="OR",
quest=43870,
steps=[[
step
Follow the path |goto Suramar/0 39.75,69.76 < 10 |only if walking
Enter the building |goto 42.45,76.48 < 5 |walk
Go up the stairs |goto 42.64,76.92 < 5 |walk
click Small Treasure Chest##233107 |q 43870 |future |goto Suramar 42.57,76.68
]],
},
{
item=139786,
treasure=[[Glimmering Treasure Chest]],
spot="Suramar 44.05,31.94",
currency="OR",
quest=43856,
steps=[[
step
Enter the cave |goto Suramar/0 42.25,29.97 < 10 |walk
|tip It is behind the waterfall.
click Glimmering Treasure Chest##240637 |q 43856 |future |goto Suramar 44.05,31.94
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Suramar 44.30,22.89",
item=138783,
quest=43850,
steps=[[
step
Go up the path |goto Suramar/0 45.40,26.69 < 10 |only if walking
click Treasure Chest##251751 |q 43850 |future |goto Suramar 44.30,22.89
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Suramar 44.38,75.87",
currency="OR",
quest=43869,
steps=[[
step
click Small Treasure Chest##233107 |q 43869 |future |goto Suramar 44.38,75.87
|tip It has multiple Elite enemies around it.
]],
},
{
currency="AM",
treasure=[[Shimmering Ancient Mana Cluster]],
spot="Suramar 46.55,25.99",
item=141655,
quest=43744,
steps=[[
step
click Shimmering Ancient Mana Cluster##252432 |q 43744 |future |goto Suramar 46.55,25.99
|tip It is underwater at the bottom of the waterfall.
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Suramar 48.11,73.21",
currency="OR",
quest=43865,
steps=[[
step
clicknpc Grapple Point##110334 |goto Suramar/0 48.50,73.27 < 5 |only if walking
|tip It is up on top of the building.
click Small Treasure Chest##233107 |q 43865 |future |goto Suramar 48.11,73.21
]],
},
{
treasure=[[Small Treasure Chest]],
spot="Suramar 48.14,33.99",
currency="OR",
quest=43853,
steps=[[
step
Enter the building |goto Suramar/0 48.20,34.67 < 10 |walk
click Small Treasure Chest##233107 |q 43853 |future |goto Suramar 48.14,33.99
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Suramar 48.28,82.61",
currency="AM",
quest=43866,
steps=[[
step
clicknpc Grapple Point##110334 |goto Suramar 48.39,82.23 < 5 |only if walking
|tip It is up on top of the building.
click Small Treasure Chest##233107 |q 43866 |future |goto Suramar 48.28,82.61
]],
},
{
currency="AM",
treasure=[[Treasure Chest]],
spot="Suramar 48.29,71.21",
item=138783,
quest=44324,
steps=[[
step
Enter the building |goto Suramar/0 48.23,71.38 < 5 |walk
click Treasure Chest##251751 |q 44324 |future |goto 48.53,71.61
|tip Go up the steps on the right side.
]],
},
{
currency="AM",
treasure=[[Treasure Chest]],
spot="Suramar 48.58,72.17",
item=138783,
quest=44323,
steps=[[
step
Enter the building |goto Suramar/0 48.22,72.19 < 5 |walk
Go upstairs |goto 48.42,71.97 < 5 |walk
click Treasure Chest##251751 |q 44323 |future |goto Suramar 48.58,72.17
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Suramar 48.95,73.79",
item=138783,
quest=43867,
steps=[[
step
Enter the building |goto Suramar/0 48.72,73.92 < 5 |walk
Go up the right staircase |goto 48.88,74.08 < 5 |walk
click Treasure Chest##251751 |q 43867 |future |goto Suramar 48.95,73.79
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Suramar 49.98,84.93",
currency="OR",
quest=43864,
steps=[[
step
Reach this spot |goto Suramar/0 50.23,83.98 < 10 |only if walking
clicknpc Grapple Point##110334 |goto Suramar 50.06,84.46 < 5 |only if walking
|tip It is up on top of the building.
click Small Treasure Chest##233107 |q 43864 |future |goto Suramar 49.98,84.93
]],
},
{
currency="AM",
treasure=[[Treasure Chest]],
spot="Suramar 50.06,80.61",
item=138783,
quest=44325,
steps=[[
step
Enter the building |goto Suramar/0 50.29,80.28 < 5 |walk
Go upstairs |goto 50.32,80.57 < 5 |walk
click Treasure Chest##251751 |q 44325 |future |goto Suramar 50.06,80.61
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Suramar 51.50,38.59",
currency="OR",
quest=43855,
steps=[[
step
click Small Treasure Chest##233107 |q 43855 |future |goto Suramar 51.50,38.59
]],
},
{
currency="AM",
treasure=[[Treasure Chest]],
spot="Suramar 51.90,82.14",
item=138783,
quest=43868,
steps=[[
step
click Treasure Chest##251751 |q 43868 |future |goto Suramar 51.90,82.14
|tip It's on the boat.
]],
},
{
currency="OR",
treasure=[[Dusty Coffer]],
spot="Suramar 52.73,31.30",
item=138783,
quest=40767,
steps=[[
step
Enter the cave |goto Suramar/0 49.55,33.86 < 10 |walk
Follow the path |goto Suramar/0 51.66,32.82 < 5 |walk
Go up the path |goto 50.98,30.60 < 5 |walk
Go up the path |goto 51.04,29.83 < 5 |walk
Cross the bridge |goto 52.20,32.68 < 5 |walk
click Dusty Coffer##246254 |q 40767 |future |goto Suramar 52.73,31.30
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Suramar 54.32,60.33",
item=138783,
quest=43875,
steps=[[
step
click Treasure Chest##251751 |q 43875 |future |goto Suramar 54.32,60.33
|tip It is by the canal behind the buildings.
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Suramar 55.68,54.80",
access="Completionist",
currency="OR",
quest=43871,
steps=[[
step
Go up the stairs |goto Suramar/0 53.77,52.13 < 5 |only if walking
Cross the bridges |goto 49.97,53.78 < 10 |only if walking
click Small Treasure Chest##233107 |q 43871 |future |goto Suramar 55.68,54.80
]],
},
{
treasure=[[Treasure Chest]],
spot="Suramar 57.32,60.39",
item=138783,
quest=43873,
steps=[[
step
Go up the stairs |goto Suramar/0 56.86,57.85 < 10 |only if walking
click Treasure Chest##251751 |q 43873 |future |goto Suramar 57.32,60.39
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Suramar 57.68,61.97",
item=138783,
quest=43874,
steps=[[
step
Enter the building |goto Suramar/0 57.76,62.40 < 10 |walk
click Treasure Chest##251751 |q 43874 |future |goto Suramar 57.68,61.97
]],
},
{
item=139786,
treasure=[[Glimmering Treasure Chest]],
spot="Suramar 60.35,68.51",
currency="AM",
quest=43876,
steps=[[
step
kill Imperial Arcbinder##108188
|tip The chest is guarded by a level 100 Elite.
click Glimmering Treasure Chest##240637 |q 43876 |future |goto Suramar 60.35,68.51
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Suramar 61.36,55.50",
item=138783,
quest=43872,
steps=[[
step
Enter the building |goto Suramar/0 61.16,55.50 < 5 |walk
click Treasure Chest##251751 |q 43872 |future |goto Suramar 61.36,55.50
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Suramar 63.65,49.11",
currency="OR",
quest=43857,
steps=[[
step
Enter the cave |goto Suramar/0 63.52,49.08 < 5 |walk
click Small Treasure Chest##233107 |q 43857 |future |goto 63.03,49.12
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Suramar 67.31,55.11",
item=138783,
quest=43858,
steps=[[
step
click Treasure Chest##251751 |q 43858 |future |goto Suramar 67.31,55.11
|tip It's inside the little building.
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Suramar 71.46,49.75",
currency="OR",
quest=43859,
steps=[[
step
Enter the tower |goto Suramar/0 71.54,49.76 < 10 |walk
Go up the stairs |goto 71.82,49.69 < 5 |walk
click Small Treasure Chest##233107 |q 43859 |future |goto Suramar 71.46,49.75
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Suramar 76.87,61.50",
currency="OR",
quest=43860,
steps=[[
step
click Small Treasure Chest##233107 |q 43860 |future |goto Suramar 76.87,61.50
|tip It is on the seafloor in a wrecked ship.
]],
},
{
treasure=[[Shimmering Ancient Mana Cluster]],
spot="Suramar 79.64,72.89",
item=141655,
quest=43741,
steps=[[
step
click Shimmering Ancient Mana Cluster##252432 |q 43741 |future |goto Suramar 79.64,72.89
|tip It's underwater on the ocean floor.
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Suramar 81.96,57.45",
currency="OR",
quest=43861,
steps=[[
step
Enter the underwater cave |goto Suramar 79.3,57.4 < 10 |walk
click Small Treasure Chest##233107 |q 43861 |future |goto Suramar 81.96,57.45
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Suramar 83.12,69.33",
item=138783,
quest=43863,
steps=[[
step
Enter the cave |goto Suramar/0 82.85,67.85 < 10 |walk
click Treasure Chest##251751 |q 43863 |future |goto Suramar 83.12,69.33
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Suramar 83.97,57.64",
item=138783,
quest=43862,
steps=[[
step
click Treasure Chest##251751 |q 43862 |future |goto Suramar 83.97,57.64
]],
},
{
treasure=[[Treasure Chest]],
spot="Val'sharah 33.81,58.26",
item=138783,
quest=39081,
steps=[[
step
Enter the building |goto Val'sharah/0 34.11,58.19 < 10 |walk
click Treasure Chest##251751 |q 39081 |future |goto Val'sharah 33.81,58.26
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Val'sharah 38.45,65.30",
currency="OR",
quest=39080,
steps=[[
step
click Small Treasure Chest##233107 |q 39080 |future |goto Val'sharah 38.45,65.30
|tip It is down inside the cellar. You must have the quest "The Farmsteads" to access it.
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Val'sharah 38.62,67.18",
currency="OR",
quest=39079,
steps=[[
step
click Small Treasure Chest##233107 |q 39079 |future |goto Val'sharah 38.62,67.18
|tip It is up on the cliff, next to the big water wheel.
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Val'sharah 39.94,54.60",
currency="OR",
quest=38369,
steps=[[
step
Go up the stairs |goto Val'sharah/0 39.74,53.03 < 10 |only if walking
click Small Treasure Chest##233107 |q 38369 |future |goto Val'sharah 39.94,54.60
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Val'sharah 42.01,88.49",
currency="OR",
quest=39085,
steps=[[
step
click Small Treasure Chest##233107 |q 39085 |future |goto Val'sharah 42.01,88.49
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Val'sharah 42.66,58.01",
currency="OR",
quest=39077,
steps=[[
step
Enter the small house |goto Val'sharah/0 42.76,58.45 < 5 |walk
click Small Treasure Chest##233107 |q 39077 |future |goto Val'sharah 42.66,58.01
]],
},
{
treasure=[[Treasure Chest]],
spot="Val'sharah 43.06,88.22",
item=138783,
quest=44138,
steps=[[
step
Enter the cave |goto Val'sharah 43.7,89.9 < 10 |walk
click Treasure Chest##251751 |q 44138 |future |goto Val'sharah 43.06,88.22
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Val'sharah 43.22,54.88",
access="Completionist",
item=138783,
quest=39084,
steps=[[
step
Cross the bridge to Black Rook Hold |goto Val'sharah/0 46.69,50.26 < 10 |only if walking
Follow the path |goto 44.29,50.67 < 6 |only if walking
click Treasure Chest##251751 |q 39084 |future |goto Val'sharah 43.22,54.88
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Val'sharah 43.39,75.89",
currency="OR",
quest=38363,
steps=[[
step
click Small Treasure Chest##233107 |q 38363 |future |goto Val'sharah 43.39,75.89
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Val'sharah 44.35,82.57",
item=141892,
quest=38387,
steps=[[
step
Enter the cave |goto Val'sharah/0 44.37,83.28 < 10 |walk
click Treasure Chest##251751 |q 38387 |future |goto Val'sharah 44.35,82.57
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Val'sharah 45.10,61.14",
currency="OR",
quest=39083,
steps=[[
step
Jump to the tree from here |goto Val'sharah/0 44.81,61.49 < 5
click Small Treasure Chest##233107 |q 39083 |future |goto Val'sharah 45.10,61.14
|tip It is up on the tree.
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Val'sharah 46.44,86.30",
currency="OR",
quest=38277,
steps=[[
step
click Small Treasure Chest##233107 |q 38277 |future |goto Val'sharah 46.44,86.30
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Val'sharah 48.68,73.79",
currency="OR",
quest=38366,
steps=[[
step
click Small Treasure Chest##233107 |q 38366 |future |goto Val'sharah 48.68,73.79
|tip It's behind the tree roots.
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Val'sharah 48.99,86.15",
currency="OR",
quest=38886,
steps=[[
step
Enter the cave |goto Val'sharah/0 49.30,85.59 < 10 |walk
click Small Treasure Chest##233107 |q 38886 |future |goto Val'sharah 48.99,86.15
]],
},
{
item=138783,
treasure=[[Glimmering Treasure Chest]],
spot="Val'sharah 50.90,51.68",
currency="OR",
quest=39086,
steps=[[
step
click Glimmering Treasure Chest##240637 |q 39086 |future |goto Val'sharah 50.90,51.68
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Val'sharah 51.49,77.76",
currency="OR",
quest=38388,
steps=[[
step
Enter the cave |goto Val'sharah 50.9,77.0 < 10 |walk
click Small Treasure Chest##233107 |q 38388 |future |goto Val'sharah 51.49,77.76
]],
},
{
item=141891,
treasure=[[Glimmering Treasure Chest]],
spot="Val'sharah 54.00,34.89",
access="Completionist",
currency="OR",
quest=38390,
steps=[[
step
Enter the cave |goto Val'sharah 53.2,38.0 < 10 |walk
|tip Avoid the red spots on the ground that are dropped by the elite mobs. Standing in them will teleport you from the cave.
click Glimmering Treasure Chest##240637 |q 38390 |future |goto Val'sharah 54.00,34.89
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Val'sharah 54.18,70.61",
currency="OR",
quest=39093,
steps=[[
step
Enter the cave |goto Val'sharah/0 54.03,70.00 < 10 |walk
click Small Treasure Chest##233107 |q 39093 |future |goto Val'sharah 54.18,70.61
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Val'sharah 54.41,74.19",
currency="OR",
quest=38359,
steps=[[
step
Enter the house |goto Val'sharah/0 54.53,73.68 < 10 |walk
click Small Treasure Chest##233107 |q 38359 |future |goto Val'sharah 54.41,74.19
|tip It is inside the house, behind the wooden curtain.
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Val'sharah 54.50,60.48",
item=130152,
quest=39097,
steps=[[
step
Enter the cave |goto Val'sharah/0 54.11,61.03 < 10 |walk
click Treasure Chest##251751 |q 39097 |future |goto Val'sharah 54.50,60.48
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Val'sharah 54.95,80.54",
currency="OR",
quest=38861,
steps=[[
step
Swim down into the water here |goto Val'sharah/0 54.02,82.18 < 10 |walk
click Small Treasure Chest##233107 |q 38861 |future |goto Val'sharah 54.95,80.54
]],
},
{
currency="OR",
treasure=[[Unguarded Thistlemaw Treasure]],
spot="Val'sharah 55.55,77.62",
item=130147,
quest=38466,
steps=[[
step
click Unguarded Thistleleaf Treasure##241128
kill Thistleleaf Rascal##92104+
click Unguarded Thistleleaf Treasure##241128 |q 38466 |future |goto Val'sharah 55.55,77.62
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Val'sharah 56.22,57.30",
currency="OR",
quest=39072,
steps=[[
step
click Small Treasure Chest##233107 |q 39072 |future |goto Val'sharah 56.22,57.30
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Val'sharah 59.88,72.28",
currency="OR",
quest=38943,
steps=[[
step
Enter the building |goto Val'sharah/0 60.33,71.38 < 5 |walk
Go up the stairs |goto Val'sharah 60.00,71.73 < 5 |walk
click Small Treasure Chest##233107 |q 38943 |future |goto Val'sharah 59.88,72.28
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Val'sharah 60.49,82.16",
currency="OR",
quest=38893,
steps=[[
step
Enter the cave |goto Val'sharah/0 61.13,85.17 < 5 |walk
click Small Treasure Chest##233107 |q 38893 |future |goto Val'sharah 60.49,82.16
]],
},
{
item=138783,
treasure=[[Glimmering Treasure Chest]],
spot="Val'sharah 61.01,79.17",
currency="OR",
quest=39089,
steps=[[
step
click Glimmering Treasure Chest##240637 |q 39089 |future |goto Val'sharah 61.01,79.17
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Val'sharah 61.07,34.21",
item=138783,
quest=39088,
steps=[[
step
click Treasure Chest##251751 |q 39088 |future |goto Val'sharah 61.07,34.21
|tip It is under the water.
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Val'sharah 61.65,73.72",
currency="OR",
quest=39087,
steps=[[
step
click Small Treasure Chest##233107 |q 39087 |future |goto Val'sharah 61.65,73.72
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Val'sharah 62.07,67.37",
item=138783,
quest=39071,
steps=[[
step
Follow the path |goto Val'sharah/0 59.66,70.99 < 10 |only if walking
Go through the waterfall and into the cave |goto Val'sharah/0 62.00,68.10 < 10 |walk
click Treasure Chest##251751 |q 39071 |future |goto Val'sharah 62.07,67.37
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Val'sharah 62.70,85.26",
currency="OR",
quest=44136,
steps=[[
step
Enter the cave |goto Val'sharah/0 62.49,85.98 < 10 |walk
click Small Treasure Chest##233107 |q 44136 |future |goto Val'sharah 62.70,85.26
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Val'sharah 62.79,70.32",
currency="OR",
quest=39069,
steps=[[
step
Enter the house |goto Val'sharah/0 62.78,71.24 < 5 |walk
Go upstairs |goto Val'sharah/0 62.95,70.65 < 5 |walk
click Small Treasure Chest##233107 |q 39069 |future |goto Val'sharah 62.79,70.32
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Val'sharah 63.03,76.96",
currency="OR",
quest=39070,
steps=[[
step
Enter the Den of Claws |goto Val'sharah/0 62.35,76.36 < 10 |walk
click Small Treasure Chest##233107 |q 39070 |future |goto Val'sharah 63.03,76.96
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Val'sharah 63.27,74.01",
item=138783,
quest=39102,
steps=[[
step
Enter the house |goto Val'sharah/0 63.04,73.55 < 5 |walk
click Treasure Chest##251751 |q 39102 |future |goto Val'sharah 63.27,74.01
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Val'sharah 63.37,88.41",
currency="OR",
quest=38389,
steps=[[
step
click Small Treasure Chest##233107 |q 38389 |future |goto Val'sharah 63.37,88.41
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Val'sharah 63.90,45.56",
currency="OR",
quest=44139,
steps=[[
step
Enter the house |goto Val'sharah/0 64.14,45.39 < 5 |walk
click Small Treasure Chest##233107 |q 44139 |future |goto Val'sharah 63.90,45.56
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Val'sharah 64.60,85.46",
item=138783,
quest=38900,
steps=[[
step
Enter the building |goto Val'sharah/0 64.35,84.38 < 10 |walk
click Treasure Chest##251751 |q 38900 |future |goto Val'sharah 64.60,85.46
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Val'sharah 64.71,51.26",
currency="OR",
quest=38355,
steps=[[
step
Enter the house |goto Val'sharah/0 65.12,51.28 < 5 |walk
click Small Treasure Chest##233107 |q 38355 |future |goto Val'sharah 64.71,51.26
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Val'sharah 65.39,86.29",
item=138783,
quest=39074,
steps=[[
step
Enter the cave |goto Val'sharah/0 65.94,86.21 < 10 |walk
click Treasure Chest##251751 |q 39074 |future |goto Val'sharah 65.39,86.29
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Val'sharah 65.86,79.18",
currency="OR",
quest=38391,
steps=[[
step
click Small Treasure Chest##233107 |q 38391 |future |goto Val'sharah 65.86,79.18
|tip Between the two trees.
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Val'sharah 66.55,40.90",
item=138783,
quest=39108,
steps=[[
step
Follow the path |goto Val'sharah/0 67.51,40.52 < 15 |only if walking
click Treasure Chest##251751 |q 39108 |future |goto Val'sharah 66.55,40.90
|tip It is on an outcropping at the top of the hill, next to the base of a tree.
]],
},
{
currency="OR",
treasure=[[Treasure Chest]],
spot="Val'sharah 67.21,59.28",
item=138783,
quest=38782,
steps=[[
step
Enter the cave |goto Val'sharah 65.9,56.3 < 10 |walk
click Treasure Chest##251751 |q 38782 |future |goto Val'sharah 67.21,59.28
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Val'sharah 67.39,53.42",
currency="OR",
quest=38386,
steps=[[
step
Enter the building |goto Val'sharah/0 66.98,52.71 < 10 |walk
Go upstairs |goto 67.06,53.36 < 5 |walk
click Small Treasure Chest##233107 |q 38386 |future |goto Val'sharah 67.39,53.42
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Val'sharah 68.33,40.60",
currency="OR",
quest=39073,
steps=[[
step
Enter the house |goto Val'sharah/0 68.20,40.11 < 10 |walk
click Small Treasure Chest##233107 |q 39073 |future |goto Val'sharah 68.33,40.60
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Val'sharah 69.47,59.99",
currency="OR",
quest=38781,
steps=[[
step
Follow the path |goto Val'sharah/0 68.88,60.66 < 10 |only if walking
Enter the cave |goto Val'sharah/0 69.82,60.44 < 10 |walk
click Small Treasure Chest##233107 |q 38781 |future |goto Val'sharah 69.47,59.99
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Val'sharah 70.22,57.04",
currency="OR",
quest=38783,
steps=[[
step
click Small Treasure Chest##233107 |q 38783 |future |goto Val'sharah 70.22,57.04
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Val'sharah 73.80,32.27",
currency="OR",
quest=38371,
steps=[[
step
click Small Treasure Chest##233107 |q 38371 |future |goto Val'sharah 73.80,32.27
]],
},
{
item=138783,
treasure=[[Small Treasure Chest]],
spot="Val'sharah 73.83,54.37",
currency="OR",
quest=44135,
steps=[[
step
Enter the cave |goto Val'sharah/0 73.20,53.85 < 5 |walk
click Small Treasure Chest##233107 |q 44135 |future |goto Val'sharah 73.83,54.37
]],
},
{
item=129210,
treasure=[[Small Treasure Chest]],
spot="Vault of the Wardens/3 23.30,81.43",
currency="OR",
quest=40916,
steps=[[
step
click Small Treasure Chest##233107 |q 40916 |future |goto Vault of the Wardens/3 23.30,81.43
|tip This treasure is only available after completing the All The Way Up quest.
]],
},
{
item=129196,
treasure=[[Small Treasure Chest]],
spot="Vault of the Wardens/2 41.67,63.57",
currency="OR",
quest=40914,
steps=[[
step
Go through the doorway |goto Vault of the Wardens/2 45.41,63.55 < 5
click Small Treasure Chest##233107 |q 40914 |future |goto Vault of the Wardens/2 41.67,63.57
|tip This treasure is only available after completing the Grand Theft Felbat quest.
]],
},
{
item=129196,
treasure=[[Small Treasure Chest]],
spot="Vault of the Wardens/2 32.10,48.19",
currency="OR",
quest=40911,
steps=[[
step
click Small Treasure Chest##233107 |q 40911 |future |goto Vault of the Wardens/2 32.10,48.19
|tip This treasure is only available after completing the Grand Theft Felbat quest.
]],
},
{
item=129210,
treasure=[[Small Treasure Chest]],
spot="Vault of the Wardens/1 47.38,54.80",
currency="OR",
quest=38690,
steps=[[
step
click Small Treasure Chest##233107 |q 38690 |future |goto Vault of the Wardens/1 47.38,54.80
|tip This treasure is only available after the Return to the Black Temple quest.
]],
},
{
item=129210,
treasure=[[Small Treasure Chest]],
spot="Vault of the Wardens/2 57.02,40.25",
currency="OR",
quest=40913,
steps=[[
step
Go through the doorway |goto Vault of the Wardens/2 57.03,46.39 < 5
click Small Treasure Chest##233107 |q 40913 |future |goto Vault of the Wardens/2 57.02,40.25
|tip This treasure is only available after completing the Grand Theft Felbat quest.
]],
},
{
item=129210,
treasure=[[Small Treasure Chest]],
spot="Vault of the Wardens/1 58.70,34.88",
currency="OR",
quest=40909,
steps=[[
step
click Small Treasure Chest##233107 |q 40909 |future |goto Vault of the Wardens/1 58.70,34.88
|tip This treasure is only available after the Return to the Black Temple quest.
]],
},
{
item=129210,
treasure=[[Small Treasure Chest]],
spot="Vault of the Wardens/3 24.45,10.16",
currency="OR",
quest=40915,
steps=[[
step
click Small Treasure Chest##233107 |q 40915 |future |goto Vault of the Wardens/3 24.45,10.16
|tip This treasure is only available after you have the All The Way Up quest.
]],
},
{
item=129210,
treasure=[[Small Treasure Chest]],
spot="Vault of the Wardens/2 41.42,32.84",
currency="OR",
quest=40912,
steps=[[
step
Go through the doorway |goto Vault of the Wardens/2 45.16,32.86 < 5
click Small Treasure Chest##233107 |q 40912 |future |goto Vault of the Wardens/2 41.42,32.84
|tip This treasure is only available after completing the Grand Theft Felbat quest.
]],
},
}
