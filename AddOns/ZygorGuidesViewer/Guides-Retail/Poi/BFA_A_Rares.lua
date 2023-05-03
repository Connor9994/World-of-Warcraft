local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("PoiRareBFA") then return end
ZGV.Poi.Sets.PoiRareBFA={
{
rare=[[Beastrider Kama]],
level=120,
spot="Arathi Highlands/0 65.81,68.57",
currency="AZ",
quest=53504,
item=163644,
condition=[[only if ZGV.InPhase("Warfront Arathi Control")]],
steps=[[
step
kill Beastrider Kama##142709 |goto Arathi Highlands/0 65.81,68.57 |c |q 53504 |future
|tip He patrols up and down the road.
]],
},
{
rare=[[Branchlord Aldrus]],
level=120,
spot="Arathi Highlands/0 22.33,21.12",
currency="AZ",
quest=53505,
item=163650,
condition=[[only if ZGV.InPhase("Warfront Arathi Control")]],
steps=[[
step
kill Branchlord Aldrus##142508 |goto Arathi Highlands/0 22.33,21.12 |c |q 53505 |future
|tip It walks around the big stump.
]],
},
{
rare=[[Burning Goliath]],
level=120,
spot="Arathi Highlands/0 30.66,44.78",
currency="AZ",
quest=53506,
item=163691,
condition=[[only if ZGV.InPhase("Warfront Arathi Control")]],
steps=[[
step
kill Burning Goliath##141615 |goto Arathi Highlands/0 30.66,44.78 |c |q 53506 |future
]],
},
{
rare=[[Cresting Goliath]],
level=120,
spot="Arathi Highlands/0 61.98,31.50",
currency="AZ",
quest=53531,
item=163700,
condition=[[only if ZGV.InPhase("Warfront Arathi Control")]],
steps=[[
step
kill Cresting Goliath##141618 |goto Arathi Highlands/0 61.98,31.50 |c |q 53531 |future
]],
},
{
rare=[[Darbel Montrose]],
level=120,
spot="Arathi Highlands/0 50.87,36.57",
currency="AZ",
quest=53084,
item=163652,
condition=[[only if ZGV.InPhase("Warfront Arathi Control")]],
steps=[[
step
kill Darbel Montrose##142688 |goto Arathi Highlands/0 50.87,36.57 |c |q 53084 |future
]],
},
{
rare=[[Doom's Howl]],
level=120,
spot="Arathi Highlands/0 38.62,40.96",
currency="AZ",
quest=53002,
item=163828,
condition=[[only if ZGV.InPhase("Warfront Arathi Control")]],
steps=[[
step
kill Doom's Howl##138122 |goto Arathi Highlands/0 38.62,40.96 |c |q 53002 |future
|tip It patrols around this area.
]],
},
{
rare=[[Doomrider Helgrim]],
level=120,
spot="Arathi Highlands/0 53.56,57.64",
currency="AZ",
quest=53085,
item=163579,
condition=[[only if ZGV.InPhase("Warfront Arathi Control")]],
steps=[[
step
kill Doomrider Helgrim##142741 |goto Arathi Highlands/0 53.56,57.64 |c |q 53085 |future
]],
},
{
rare=[[Echo of Myzrael]],
level=120,
spot="Arathi Highlands/0 57.07,35.06",
currency="AZ",
quest=53508,
item=163677,
condition=[[only if ZGV.InPhase("Warfront Arathi Control")]],
steps=[[
step
kill Echo of Myzrael##141668 |goto Arathi Highlands/0 57.07,35.06 |c |q 53508 |future
|tip Echo of Myzrael spawns after killing the four Goliath elementals in Arathi.
|tip Guardians not present at Myzrael's location indicate which elementals still need to be killed.
Cresting Goliath is here [61.98,31.50]
Thundering Goliath is here [46.32,52.12]
Burning Goliath is here [30.66,44.78]
Rumbling Goliath is here [29.88,59.74]
]],
},
{
rare=[[Foulbelly]],
level=120,
spot="Arathi Highlands/0 22.33,51.25",
currency="AZ",
quest=53509,
item=163735,
condition=[[only if ZGV.InPhase("Warfront Arathi Control")]],
steps=[[
step
Enter the cave |goto Arathi Highlands/0 28.44,45.68 < 10 |walk
Cross the bridge |goto 23.56,46.80 < 10 |walk
kill Foulbelly##142686 |goto 22.33,51.25 |c |q 53509 |future
|tip Inside the cave.
]],
},
{
rare=[[Fozruk]],
level=120,
spot="Arathi Highlands/0 59.31,28.15",
currency="AZ",
quest=53510,
item=163711,
condition=[[only if ZGV.InPhase("Warfront Arathi Control")]],
steps=[[
step
kill Fozruk##142433 |goto Arathi Highlands/0 59.31,28.15 |c |q 53510 |future
]],
},
{
rare=[[Geomancer Flintdagger]],
level=120,
spot="Arathi Highlands/0 79.45,29.39",
currency="AZ",
quest=53511,
item=163713,
condition=[[only if ZGV.InPhase("Warfront Arathi Control")]],
steps=[[
step
Enter the cave |goto Arathi Highlands/0 78.27,36.73 < 15 |walk
Follow the path down |goto 79.53,33.90 < 15 |only if walking
Follow the path up |goto 82.72,31.22 < 10 |only if walking
kill Geomancer Flintdagger##142662 |goto 79.45,29.39 |c |q 53511 |future
|tip Inside the cave.
]],
},
{
rare=[[Horrific Apparition]],
level=120,
spot="Arathi Highlands/0 26.76,32.53",
currency="AZ",
quest=53087,
item=163736,
condition=[[only if ZGV.InPhase("Warfront Arathi Control")]],
steps=[[
step
kill Horrific Apparition##142725 |goto Arathi Highlands/0 26.76,32.53 |c |q 53087 |future
]],
},
{
rare=[[Korgresh Coldrage]],
level=120,
spot="Arathi Highlands/0 49.21,84.15",
currency="AZ",
quest=53513,
item=163744,
condition=[[only if ZGV.InPhase("Warfront Arathi Control")]],
steps=[[
step
Enter the cave |goto Arathi Highlands/0 48.30,79.95 < 10 |walk
Follow the path |goto 49.08,82.49 < 10 |walk
kill Korgresh Coldrage##142112 |goto 49.21,84.15 |c |q 53513 |future
|tip Inside the cave.
]],
},
{
rare=[[Kovork]],
level=120,
spot="Arathi Highlands/0 25.05,48.40",
currency="AZ",
quest=53514,
item=163750,
condition=[[only if ZGV.InPhase("Warfront Arathi Control")]],
steps=[[
step
Enter the cave |goto Arathi Highlands/0 28.44,45.68 < 10 |walk
kill Kovork##142684 |goto 25.05,48.40 |c |q 53514 |future
|tip Inside the cave.
]],
},
{
rare=[[Man Hunter Rog]],
level=120,
spot="Arathi Highlands/0 52.27,76.83",
currency="AZ",
quest=53515,
item=163712,
condition=[[only if ZGV.InPhase("Warfront Arathi Control")]],
steps=[[
step
kill Man Hunter Rog##142716 |goto Arathi Highlands/0 52.27,76.83 |c |q 53515 |future
|tip He walks up and down the path.
]],
},
{
rare=[[Molok The Crusher]],
level=120,
spot="Arathi Highlands/0 47.67,78.04",
currency="AZ",
quest=53516,
item=163775,
condition=[[only if ZGV.InPhase("Warfront Arathi Control")]],
steps=[[
step
kill Molok The Crusher##141942 |goto Arathi Highlands/0 47.67,78.04 |c |q 53516 |future
]],
},
{
rare=[[Nimar The Slayer]],
level=120,
spot="Arathi Highlands/0 67.61,60.86",
currency="AZ",
quest=53517,
item=163706,
condition=[[only if ZGV.InPhase("Warfront Arathi Control")]],
steps=[[
step
kill Nimar The Slayer##142692 |goto Arathi Highlands/0 67.61,60.86 |c |q 53517 |future
]],
},
{
rare=[[Overseer Krix]],
level=120,
spot="Arathi Highlands/0 33.20,38.08",
currency="AZ",
quest=53014,
item=163646,
condition=[[only if ZGV.InPhase("Warfront Arathi Control")]],
steps=[[
step
Enter the mine |goto Arathi Highlands/0 33.86,36.53 < 10 |walk
kill Overseer Krix##142423 |goto 33.20,38.08 |c |q 53014 |future
|tip Inside the mine.
]],
},
{
rare=[[Plaguefeather]],
level=120,
spot="Arathi Highlands/0 35.60,64.35",
currency="AZ",
quest=53519,
item=163690,
condition=[[only if ZGV.InPhase("Warfront Arathi Control")]],
steps=[[
step
kill Plaguefeather##142435 |goto Arathi Highlands/0 35.60,64.35 |c |q 53519 |future
|tip It flies around this area.
]],
},
{
rare=[[Ragebeak]],
level=120,
spot="Arathi Highlands/0 18.41,27.94",
currency="AZ",
quest=53016,
item=163689,
condition=[[only if ZGV.InPhase("Warfront Arathi Control")]],
steps=[[
step
kill Ragebeak##142436 |goto Arathi Highlands/0 18.41,27.94 |c |q 53016 |future
]],
},
{
rare=[[Rumbling Goliath]],
level=120,
spot="Arathi Highlands/0 29.88,59.74",
currency="AZ",
quest=53523,
item=163701,
condition=[[only if ZGV.InPhase("Warfront Arathi Control")]],
steps=[[
step
kill Rumbling Goliath##141620 |goto Arathi Highlands/0 29.88,59.74 |c |q 53523 |future
]],
},
{
rare=[[Ruul Onestone]],
level=120,
spot="Arathi Highlands/0 42.91,56.52",
currency="AZ",
quest=53524,
item=163741,
condition=[[only if ZGV.InPhase("Warfront Arathi Control")]],
steps=[[
step
kill Ruul Onestone##142683 |goto Arathi Highlands/0 42.91,56.52 |c |q 53524 |future
]],
},
{
rare=[[Singer]],
level=120,
spot="Arathi Highlands/0 51.17,39.94",
currency="AZ",
quest=53093,
item=163738,
condition=[[only if ZGV.InPhase("Warfront Arathi Control")]],
steps=[[
step
kill Singer##142690 |goto Arathi Highlands/0 51.17,39.94 |c |q 53093 |future
|tip Inside the building.
]],
},
{
rare=[[Skullripper]],
level=120,
spot="Arathi Highlands/0 56.72,45.20",
currency="AZ",
quest=53526,
item=163645,
condition=[[only if ZGV.InPhase("Warfront Arathi Control")]],
steps=[[
step
kill Skullripper##142437 |goto Arathi Highlands/0 56.72,45.20 |c |q 53526 |future
|tip It runs around the rock.
]],
},
{
rare=[[Thundering Goliath]],
level=120,
spot="Arathi Highlands/0 46.32,52.12",
currency="AZ",
quest=53527,
item=163698,
condition=[[only if ZGV.InPhase("Warfront Arathi Control")]],
steps=[[
step
kill Thundering Goliath##141616 |goto Arathi Highlands/0 46.32,52.12 |c |q 53527 |future
]],
},
{
rare=[[Venomarus]],
level=120,
spot="Arathi Highlands/0 56.99,54.40",
currency="AZ",
quest=53528,
item=163648,
condition=[[only if ZGV.InPhase("Warfront Arathi Control")]],
steps=[[
step
kill Venomarus##142438 |goto Arathi Highlands/0 56.99,54.40 |c |q 53528 |future
|tip It walks around this area.
]],
},
{
rare=[[Yogursa]],
level=120,
spot="Arathi Highlands/0 14.16,37.52",
currency="AZ",
quest=53529,
item=163684,
condition=[[only if ZGV.InPhase("Warfront Arathi Control")]],
steps=[[
step
kill Yogursa##142440 |goto Arathi Highlands/0 14.16,37.52 |c |q 53529 |future
|tip It walks around this area.
]],
},
{
rare=[[Zalas Witherbark]],
level=120,
spot="Arathi Highlands/0 62.86,81.12",
currency="AZ",
quest=53530,
item=163745,
condition=[[only if ZGV.InPhase("Warfront Arathi Control")]],
steps=[[
step
Enter the cave |goto Arathi Highlands/0 63.25,77.53 < 10 |walk
kill Zalas Witherbark##142682 |goto 62.86,81.12 |c |q 53530 |future
|tip Inside the cave.
]],
},
{
rare=[[Sawtooth]],
level=110,
spot="Boralus/0 78.15,46.22",
currency="AZ",
quest=51877,
steps=[[
step
kill Sawtooth##139287 |goto Boralus/0 78.15,46.22 |q 51877 |future
|tip It swims underwater around this area.
]],
},
{
rare=[[Agathe Wyrmwood]],
level=120,
spot="Darkshore/0 49.50,24.84",
currency="AZ",
quest=54883,
item=166438,
condition=[[only if ZGV.InPhase("Warfront Darkshore Control")]],
steps=[[
step
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase("Old Darkshore") |goto Darkshore/0 48.86,24.46 |q 54883 |future
step
kill Agathe Wyrmwood##149652 |goto 49.50,24.84 |c |q 54883 |future
]],
},
{
rare=[[Alash'anir]],
level=120,
spot="Darkshore/0 56.46,30.76",
currency="AZ",
quest=54695,
item=166432,
condition=[[only if ZGV.InPhase("Warfront Darkshore Control")]],
steps=[[
step
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase("Old Darkshore") |goto Darkshore/0 48.86,24.46 |q 54695 |future
step
kill Alash'anir##148787 |goto 56.46,30.76 |c |q 54695 |future
]],
},
{
rare=[[Aman]],
level=120,
spot="Darkshore/0 37.83,84.80",
currency="AZ",
quest=54405,
steps=[[
step
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase("Old Darkshore") |goto Darkshore/0 48.86,24.46 |q 54405 |future
step
kill Aman##147966 |goto 37.83,84.80 |c |q 54405 |future
]],
},
{
rare=[[Amberclaw]],
level=120,
spot="Darkshore/0 57.39,15.66",
currency="AZ",
quest=54285,
condition=[[only if ZGV.InPhase("Warfront Darkshore Control")]],
steps=[[
step
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase("Old Darkshore") |goto Darkshore/0 48.86,24.46 |q 54285 |future
step
kill Amberclaw##147744 |goto 57.39,15.66 |c |q 54285 |future
]],
},
{
rare=[[Athrikus Narassin]],
level=120,
spot="Darkshore/0 58.49,24.33",
currency="AZ",
quest=54278,
item=166784,
condition=[[only if ZGV.InPhase("Warfront Darkshore Control")]],
steps=[[
step
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase("Old Darkshore") |goto Darkshore/0 48.86,24.46 |q 54278 |future
step
kill Athrikus Narassin##147708 |goto 58.49,24.33 |c |q 54278 |future
]],
},
{
rare=[[Burninator Mark V]],
level=120,
spot="Darkshore/0 41.59,76.76",
currency="AZ",
quest=54768,
item="166449,166788",
condition=[[only if ZGV.InPhase("Warfront Darkshore Control")]],
steps=[[
step
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase("Old Darkshore") |goto Darkshore/0 48.86,24.46 |q 54768 |future
step
kill Burninator Mark V##149141 |goto 41.59,76.76 |c |q 54768 |future
]],
},
{
rare=[[Commander Drald]],
level=120,
spot="Darkshore/0 46.47,85.80",
currency="AZ",
quest=54309,
item=166790,
condition=[[only if ZGV.InPhase("Warfront Darkshore Control")]],
steps=[[
step
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase("Old Darkshore") |goto Darkshore/0 48.86,24.46 |q 54309 |future
step
kill Commander Drald##147845 |goto 46.47,85.80 |c |q 54309 |future
]],
},
{
rare=[[Commander Ral'esh]],
level=120,
spot="Darkshore/0 37.92,76.24",
currency="AZ",
quest=54426,
item=166787,
condition=[[only if ZGV.InPhase("Warfront Darkshore Control")]],
steps=[[
step
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase("Old Darkshore") |goto Darkshore/0 48.86,24.46 |q 54426 |future
step
kill Commander Ral'esh##148025 |goto Darkshore/0 37.92,76.24 |c |q 54426 |future
]],
},
{
rare=[[Conflagros]],
level=120,
spot="Darkshore/0 39.28,62.03",
currency="AZ",
quest=54232,
item=166451,
condition=[[only if ZGV.InPhase("Warfront Darkshore Control")]],
steps=[[
step
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase("Old Darkshore") |goto Darkshore/0 48.86,24.46 |q 54232 |future
step
kill Conflagros##147260 |goto 39.28,62.03 |c |q 54232 |future
]],
},
{
rare=[[Croz Bloodrage]],
level=120,
spot="Darkshore/0 50.63,32.41",
currency="AZ",
quest=54886,
item=166437,
condition=[[only if ZGV.InPhase("Warfront Darkshore Control")]],
steps=[[
step
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase("Old Darkshore") |goto Darkshore/0 48.86,24.46 |q 54886 |future
step
kill Croz Bloodrage##149661 |goto 50.63,32.41 |c |q 54886 |future
]],
},
{
rare=[[Cyclarus]],
level=120,
spot="Darkshore/0 43.73,53.53",
currency="AZ",
quest=54229,
item=166448,
condition=[[only if ZGV.InPhase("Warfront Darkshore Control")]],
steps=[[
step
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase("Old Darkshore") |goto Darkshore/0 48.86,24.46 |q 54229 |future
step
kill Cyclarus##147241 |goto 43.73,53.53 |c |q 54229 |future
]],
},
{
rare=[[Glimmerspine]],
level=120,
spot="Darkshore/0 43.51,19.63",
currency="AZ",
quest=54884,
condition=[[only if ZGV.InPhase("Warfront Darkshore Control")]],
steps=[[
step
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase("Old Darkshore") |goto Darkshore/0 48.86,24.46 |q 54884 |future
step
kill Glimmerspine##149654 |goto 43.51,19.63 |c |q 54884 |future
]],
},
{
rare=[[Granokk]],
level=120,
spot="Darkshore/0 48.31,55.61",
currency="AZ",
quest=54234,
condition=[[only if ZGV.InPhase("Warfront Darkshore Control")]],
steps=[[
step
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase("Old Darkshore") |goto Darkshore/0 48.86,24.46 |q 54234 |future
step
kill Granokk##147261 |goto 48.31,55.61 |c |q 54234 |future
|tip Inside the cave.
]],
},
{
rare=[[Gren Tornfur]],
level=120,
spot="Darkshore/0 40.91,56.44",
currency="AZ",
quest=54428,
item=166785,
condition=[[only if ZGV.InPhase("Warfront Darkshore Control")]],
steps=[[
step
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase("Old Darkshore") |goto Darkshore/0 48.86,24.46 |q 54428 |future
step
kill Gren Tornfur##148031 |goto 40.91,56.44 |c |q 54428 |future
]],
},
{
rare=[[Hydrath]],
level=120,
spot="Darkshore/0 52.42,32.18",
currency="AZ",
quest=54227,
item=166452,
condition=[[only if ZGV.InPhase("Warfront Darkshore Control")]],
steps=[[
step
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase("Old Darkshore") |goto Darkshore/0 48.86,24.46 |q 54227 |future
step
kill Hydrath##147240 |goto 52.42,32.18 |c |q 54227 |future
]],
},
{
rare=[[Madfeather]],
level=120,
spot="Darkshore/0 43.95,48.50",
currency="AZ",
quest=54887,
condition=[[only if ZGV.InPhase("Warfront Darkshore Control")]],
steps=[[
step
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase("Old Darkshore") |goto Darkshore/0 48.86,24.46 |q 54887 |future
step
kill Madfeather##149657 |goto 43.95,48.50 |c |q 54887 |future
]],
},
{
rare=[[Moxo the Beheader]],
level=120,
spot="Darkshore/0 67.21,18.68",
currency="AZ",
quest=54277,
item=166434,
condition=[[only if ZGV.InPhase("Warfront Darkshore Control")]],
steps=[[
step
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase("Old Darkshore") |goto Darkshore/0 48.86,24.46 |q 54277 |future
step
kill Moxo the Beheader##147701 |goto 67.21,18.68 |c |q 54277 |future
]],
},
{
rare=[[Mrggr'marr]],
level=120,
spot="Darkshore/0 35.86,81.74",
currency="AZ",
quest=54408,
condition=[[only if ZGV.InPhase("Warfront Darkshore Control")]],
steps=[[
step
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase("Old Darkshore") |goto Darkshore/0 48.86,24.46 |q 54408 |future
step
kill Mrggr'marr##147970 |goto 35.86,81.74 |c |q 54408 |future
]],
},
{
rare=[[Orwell Stevenson]],
level=120,
spot="Darkshore/0 39.13,34.10",
currency="AZ",
quest=54889,
item=166525,
condition=[[only if ZGV.InPhase("Warfront Darkshore Control")]],
steps=[[
step
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase("Old Darkshore") |goto Darkshore/0 48.86,24.46 |q 54889 |future
step
kill Orwell Stevenson##148295 |goto 39.13,34.10 |c |q 54889 |future
]],
},
{
rare=[[Scalefiend]],
level=120,
spot="Darkshore/0 47.64,44.52",
currency="AZ",
quest=54893,
condition=[[only if ZGV.InPhase("Warfront Darkshore Control")]],
steps=[[
step
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase("Old Darkshore") |goto Darkshore/0 48.86,24.46 |q 54893 |future
step
kill Scalefiend##149665 |goto 47.64,44.52 |c |q 54893 |future
]],
},
{
rare=[[Shattershard]],
level=120,
spot="Darkshore/0 43.47,29.41",
currency="AZ",
quest=54289,
condition=[[only if ZGV.InPhase("Warfront Darkshore Control")]],
steps=[[
step
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase("Old Darkshore") |goto Darkshore/0 48.86,24.46 |q 54289 |future
step
kill Shattershard##147751 |goto 43.47,29.41 |c |q 54289 |future
]],
},
{
rare=[[Soggoth the Slitherer]],
level=120,
spot="Darkshore/0 40.61,85.33",
currency="AZ",
quest=54320,
item=166454,
condition=[[only if ZGV.InPhase("Warfront Darkshore Control")]],
steps=[[
step
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase("Old Darkshore") |goto Darkshore/0 48.86,24.46 |q 54320 |future
step
kill Soggoth the Slitherer##147897 |goto 40.61,85.33 |c |q 54320 |future
]],
},
{
rare=[[Stonebinder Ssra'vess]],
level=120,
spot="Darkshore/0 45.50,58.98",
currency="AZ",
quest=54247,
condition=[[only if ZGV.InPhase("Warfront Darkshore Control")]],
steps=[[
step
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase("Old Darkshore") |goto Darkshore/0 48.86,24.46 |q 54247 |future
step
kill Stonebinder Ssra'vess##147332 |goto 45.50,58.98 |c |q 54247 |future
]],
},
{
rare=[[Twilight Prophet Graeme]],
level=120,
spot="Darkshore/0 40.61,82.71",
currency="AZ",
quest=54397,
item=166455,
condition=[[only if ZGV.InPhase("Warfront Darkshore Control")]],
steps=[[
step
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase("Old Darkshore") |goto Darkshore/0 48.86,24.46 |q 54397 |future
step
kill Twilight Prophet Graeme##147942 |goto 40.61,82.71 |c |q 54397 |future
]],
},
{
rare=[[Zim'kaga]],
level=120,
spot="Darkshore/0 62.38,9.86",
currency="AZ",
quest=54274,
item=166453,
condition=[[only if ZGV.InPhase("Warfront Darkshore Control")]],
steps=[[
step
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase("Old Darkshore") |goto Darkshore/0 48.86,24.46 |q 54274 |future
step
kill Zim'kaga##147664 |goto 62.38,9.86 |c |q 54274 |future
]],
},
{
rare=[[Kul'krazahn]],
level=110,
spot="Dazar'alor/0 55.00,82.54",
access="Completionist",
currency="AZ",
quest=48333,
item=160947,
steps=[[
step
kill Kul'krazahn##120899 |goto Dazar'alor/0 55.00,82.54 |q 48333 |future
]],
},
{
rare=[[Arclight]],
level=110,
spot="Drustvar/0 29.21,69.01",
currency="AZ",
quest=51470,
steps=[[
step
kill Arclight##137824 |goto Drustvar/0 29.21,69.01 |q 51470 |future
]],
},
{
rare=[[Arvon the Betrayed]],
level=110,
spot="Drustvar/0 34.88,69.21",
currency="AZ",
quest=51383,
steps=[[
step
Follow the path up |goto Drustvar/0 35.54,68.81 < 15 |only if walking
kill Arvon the Betrayed##137529 |goto 34.88,69.21 |q 51383 |future
]],
},
{
rare=[[Avalanche]],
level=110,
spot="Drustvar/0 43.75,88.02",
currency="AZ",
quest=51471,
steps=[[
step
kill Avalanche##137825 |goto Drustvar/0 43.75,88.02 |q 51471 |future
|tip It flies around this hill and sometimes lands.
]],
},
{
rare=[[Balethorn]],
level=110,
spot="Drustvar/0 56.61,29.16",
currency="AZ",
quest=49602,
steps=[[
step
kill Balethorn##130143 |goto Drustvar/0 56.61,29.16 |q 49602 |future
|tip He walks around the area.
]],
},
{
rare=[[Barbthorn Queen]],
level=110,
spot="Drustvar/0 59.12,16.69",
currency="AZ",
quest=48842,
steps=[[
step
Enter the cave |goto Drustvar/0 58.88,18.40 < 10 |only if walking
kill Barbthorn Queen##127333 |goto 59.12,16.69 |q 48842 |future
|tip Inside the cave.
]],
},
{
rare=[[Beshol]],
level=110,
spot="Drustvar/0 50.54,30.06",
currency="AZ",
quest=49481,
steps=[[
step
Enter the cave |goto Drustvar/0 51.17,29.66 < 10 |walk
click Obviously Safe Chest##278432
|tip Inside the cave.
kill Beshol##129805 |goto 50.54,30.06 |q 49481 |future
]],
},
{
rare=[[Betsy]],
level=110,
spot="Drustvar/0 58.47,33.17",
currency="AZ",
quest=47884,
steps=[[
step
kill Betsy##124548 |goto Drustvar/0 58.47,33.17 |q 47884 |future
]],
},
{
rare=[[Bilefang Mother]],
level=110,
spot="Drustvar/0 35.06,33.25",
currency="AZ",
quest=50163,
steps=[[
step
Enter the mine |goto Drustvar/0 36.00,31.65 < 10 |walk
Run down the stairs |goto 36.36,30.61 < 15 |walk
kill Bilefang Mother##132319 |goto 35.06,33.25 |q 50163 |future
|tip Inside the mine.
]],
},
{
rare=[[Bonesquall]],
level=110,
spot="Drustvar/0 66.77,50.81",
currency="AZ",
quest=48978,
steps=[[
step
kill Bonesquall##126621 |goto Drustvar/0 66.77,50.81 |q 48978 |future
|tip He walks around this area.
]],
},
{
rare=[[Braedan Whitewall]],
level=110,
spot="Drustvar/0 27.64,59.59",
currency="AZ",
quest=51922,
steps=[[
step
kill Braedan Whitewall##139321 |goto Drustvar/0 27.64,59.59 |q 51922 |future
]],
},
{
rare=[[Captain Leadfist]],
level=110,
spot="Drustvar/0 27.68,14.15",
currency="AZ",
quest=50939,
steps=[[
step
kill Captain Leadfist##135796 |goto Drustvar/0 27.68,14.15 |q 50939 |future
|tip He will appear on your minimap as a yellow dot.
]],
},
{
rare=[[Cottontail Matron]],
level=110,
spot="Drustvar/0 52.15,46.92",
currency="AZ",
quest=49216,
steps=[[
step
kill Cottontail Matron##129904 |goto Drustvar/0 52.15,46.92 |q 49216 |future
|tip Inside the cave.
]],
},
{
rare=[[Deathcap]],
level=110,
spot="Drustvar/0 18.71,61.39",
currency="AZ",
quest=50669,
steps=[[
step
Enter the cave |goto Drustvar/0 18.71,59.44 < 10 |walk
kill Deathcap##134706 |goto 18.71,61.39 |q 50669 |future
|tip Inside the cave.
]],
},
{
rare=[[Emily Mayville]],
level=110,
spot="Drustvar/0 63.41,40.10",
currency="AZ",
quest=49530,
steps=[[
step
talk Emily Mayville##129995
Ask her _"Why are you crying?"_
kill Emily Mayville##129995 |goto Drustvar/0 63.41,40.10 |q 49530 |future
]],
},
{
rare=[[Executioner Blackwell]],
level=110,
spot="Drustvar/0 30.88,18.39",
currency="AZ",
quest=50546,
steps=[[
step
kill Executioner Blackwell##134213 |goto Drustvar/0 30.88,18.39 |q 50546 |future
]],
},
{
rare=[[Fungi Trio]],
level=110,
spot="Drustvar/0 24.50,22.02",
currency="AZ",
quest=51749,
item=154217,
steps=[[
step
Enter the cave |goto Drustvar/0 24.18,21.90 < 10 |walk
kill Mack##138866
kill Mick##138870
kill Ernie##138871
|tip Inside the cave.
Kill the Fungi Trio |goto 24.50,22.02 |q 51749 |future
]],
},
{
rare=[[Gluttonous Yeti]],
level=110,
spot="Drustvar/0 63.03,69.65",
currency="AZ",
quest=48979,
steps=[[
step
talk Lost Goat##127979
Tell it _"Dumb goat. Let's go before you get eaten by monsters."_
kill Gluttonous Yeti##127844 |goto Drustvar/0 63.03,69.65 |q 48979 |future
]],
},
{
rare=[[Gorehorn]],
level=110,
spot="Drustvar/0 57.12,44.30",
currency="AZ",
quest=49480,
steps=[[
step
kill Gorehorn##129835 |goto Drustvar/0 57.12,44.30 |q 49480 |future
]],
},
{
rare=[[Gorged Boar]],
level=110,
spot="Drustvar/0 28.00,25.96",
currency="AZ",
quest=51700,
steps=[[
step
kill Gorged Boar##138675 |goto Drustvar/0 28.00,25.96 |q 51700 |future
]],
},
{
rare=[[Grozgore]],
level=110,
spot="Drustvar/0 50.33,20.69",
currency="AZ",
quest=49388,
steps=[[
step
kill Grozgore##127129 |goto Drustvar/0 50.33,20.69 |q 49388 |future
]],
},
{
rare=[[Haywire Golem]],
level=110,
spot="Drustvar/0 23.97,30.48",
currency="AZ",
quest=51698,
steps=[[
step
kill Haywire Golem##138618 |goto Drustvar/0 23.97,30.48 |q 51698 |future
|tip It walks around this area.
]],
},
{
rare=[[Hyo'gi]],
level=110,
spot="Drustvar/0 22.93,49.48",
currency="AZ",
quest=50688,
steps=[[
step
kill Hyo'gi##134754 |goto Drustvar/0 22.93,49.48 |q 50688 |future
]],
},
{
rare=[[Nevermore]],
level=110,
spot="Drustvar/0 59.95,45.48",
currency="AZ",
quest=49601,
steps=[[
step
kill Nevermore##130138 |goto Drustvar/0 59.95,45.48 |q 49601 |future
]],
},
{
rare=[[Quillrat Matriarch]],
level=110,
spot="Drustvar/0 66.58,42.73",
currency="AZ",
quest=48178,
item=158583,
steps=[[
step
kill Quillrat Matriarch##125453 |goto Drustvar/0 66.58,42.73 |q 48178 |future
|tip Inside the tent.
]],
},
{
rare=[[Rimestone]],
level=110,
spot="Drustvar/0 59.62,71.82",
currency="AZ",
quest=49269,
steps=[[
step
kill Rimestone##128707 |goto Drustvar/0 59.62,71.82 |q 49269 |future
|tip Inside the cave.
]],
},
{
rare=[[Sister Martha]],
level=110,
spot="Drustvar/0 33.00,57.16",
currency="AZ",
quest=51748,
steps=[[
step
kill Sister Martha##138863 |goto Drustvar/0 33.00,57.16 |q 51748 |future
|tip Inside the building.
]],
},
{
rare=[[Talon]],
level=110,
spot="Drustvar/0 31.93,40.63",
currency="AZ",
quest=49528,
steps=[[
step
kill Talon##129950 |goto Drustvar/0 31.93,40.63 |q 49528 |future
]],
},
{
rare=[[Vicemaul]],
level=110,
spot="Drustvar/0 72.84,60.49",
currency="AZ",
quest=48928,
steps=[[
step
click Untended Fishing Rod##127652
kill Vicemaul##127651 |goto Drustvar/0 72.84,60.49 |q 48928 |future
]],
},
{
rare=[[Whargarble the Ill-Tempered]],
level=110,
spot="Drustvar/0 64.98,21.37",
currency="AZ",
quest=49311,
steps=[[
step
kill Whargarble the Ill-Tempered##128973 |goto Drustvar/0 64.98,21.37 |q 49311 |future
|tip He walks around this area.
]],
},
{
rare=[[Whitney "Steelclaw" Ramsay]],
level=110,
spot="Drustvar/0 29.50,64.10",
currency="AZ",
quest=51923,
item=154315,
steps=[[
step
kill Whitney "Steelclaw" Ramsay##139322 |goto Drustvar/0 29.50,64.10 |q 51923 |future
]],
},
{
rare=[[Ancient Jawbreaker]],
level=110,
spot="Nazmir/0 67.81,29.51",
currency="AZ",
quest=48063,
steps=[[
step
kill Ancient Jawbreaker##125250 |goto Nazmir/0 67.81,29.51 |q 48063 |future
]],
},
{
rare=[[Azerite-Infused Elemental]],
level=110,
spot="Nazmir/0 54.07,81.09",
currency="AZ",
quest=50569,
steps=[[
step
kill Azerite-Infused Elemental##134298 |goto Nazmir/0 54.07,81.09 |q 50569 |future
|tip He walks around this area.
]],
},
{
rare=[[Azerite-Infused Slag]],
level=110,
spot="Nazmir/0 33.13,26.99",
currency="AZ",
quest=50563,
steps=[[
step
kill Azerite-Infused Slag##134293 |goto Nazmir/0 33.13,26.99 |q 50563 |future
]],
},
{
rare=[[Bajiatha]],
level=110,
spot="Nazmir/0 42.83,60.53",
currency="AZ",
quest=48439,
steps=[[
step
kill Bajiatha##126142 |goto Nazmir/0 42.83,60.53 |q 48439 |future
]],
},
{
rare=[[Chag's Challenge]],
level=110,
spot="Nazmir/0 67.99,19.81",
currency="AZ",
quest=50567,
steps=[[
step
talk Chag##134297
Tell him _"I'll fight your summoned creature."_
Watch the dialogue
kill Lucille##134296 |goto Nazmir/0 67.99,19.81 |q 50567 |future
]],
},
{
rare=[[Corpse Bringer Yal'kar]],
level=110,
spot="Nazmir/0 41.31,53.43",
currency="AZ",
quest=48462,
steps=[[
step
kill Corpse Bringer Yal'kar##126187 |goto Nazmir/0 41.31,53.43 |q 48462 |future
]],
},
{
rare=[[Cursed Chest]],
level=110,
spot="Nazmir/0 81.80,30.54",
currency="AZ",
quest=48057,
steps=[[
step
click Cursed Chest##272631
Choose _<Attempt to open the chest.>_
kill Cursed Chest##125232 |goto Nazmir/0 81.80,30.54 |q 48057 |future
]],
},
{
rare=[[Glompmaw]],
level=110,
spot="Nazmir/0 68.68,57.45",
currency="AZ",
quest=50361,
steps=[[
step
kill Glompmaw##121242 |goto Nazmir/0 68.68,57.45 |q 50361 |future
|tip He swims underwater around this area.
]],
},
{
rare=[[Gutrip]],
level=110,
spot="Nazmir/0 32.80,43.10",
currency="AZ",
quest=49231,
steps=[[
step
kill Gutrip##128426 |goto Nazmir/0 32.80,43.10 |q 49231 |future
|tip It walks around this area.
|tip It will appear on your minimap as a yellow star.
]],
},
{
rare=[[Gwugnug the Cursed]],
level=110,
spot="Nazmir/0 33.80,85.99",
currency="AZ",
quest=48638,
steps=[[
step
Follow the path |goto Nazmir/0 32.94,86.03 < 15 |only if walking
Enter the cave |goto 33.47,87.11 < 10 |only if walking
kill Gwugnug the Cursed##127001 |goto 33.80,85.99 |q 48638 |future
|tip Inside the cave.
]],
},
{
rare=[[Jax'teb the Reanimated]],
level=110,
spot="Nazmir/0 45.18,51.89",
currency="AZ",
quest=50307,
steps=[[
step
kill Jax'teb the Reanimated##133373 |goto Nazmir/0 45.18,51.89 |q 50307 |future
]],
},
{
rare=[[Juba the Scarred]],
level=110,
spot="Nazmir/0 28.12,34.11",
currency="AZ",
quest=50342,
steps=[[
step
kill Juba the Scarred##133527 |goto Nazmir/0 28.12,34.11 |q 50342 |future
|tip He walks around this area.
]],
},
{
rare=[[Kal'draxa]],
level=110,
spot="Nazmir/0 52.90,13.15",
currency="AZ",
quest=47843,
steps=[[
step
kill Kal'draxa##124397 |goto Nazmir/0 52.90,13.15 |q 47843 |future
]],
},
{
rare=[[King Kooba]],
level=110,
spot="Nazmir/0 53.42,42.84",
currency="AZ",
quest=49317,
steps=[[
step
Run up the stairs |goto Nazmir/0 52.62,44.08 < 15 |only if walking
kill King Kooba##129005 |goto 53.42,42.84 |q 49317 |future
]],
},
{
rare=[[Krubbs]],
level=110,
spot="Nazmir/0 75.71,35.95",
currency="AZ",
quest=48052,
steps=[[
step
kill Krubbs##125214 |goto Nazmir/0 75.71,35.95 |q 48052 |future
|tip Inside the building.
]],
},
{
rare=[[Lo'kuno]],
level=110,
spot="Nazmir/0 77.72,45.16",
currency="AZ",
quest=50355,
steps=[[
step
kill Lo'kuno##133539 |goto Nazmir/0 77.72,45.16 |q 50355 |future
]],
},
{
rare=[[Lost Scroll]],
level=110,
spot="Nazmir/0 81.68,61.07",
currency="AZ",
quest=50565,
steps=[[
step
click Lost Scroll##134295
kill Enraged Water Elemental##134294 |goto Nazmir/0 81.68,61.07 |q 50565 |future
]],
},
{
rare=[[Mala'kili and Rohnkor]],
level=110,
spot="Nazmir/0 52.62,53.66",
currency="AZ",
quest=50040,
steps=[[
step
kill Mala'kili##128935 |goto Nazmir/0 52.62,53.66 |q 50040 |future
|tip He runs around this area.
]],
},
{
rare=[[Queen Tzxi'kik]],
level=110,
spot="Nazmir/0 57.72,67.71",
currency="AZ",
quest=49312,
steps=[[
step
kill Queen Tzxi'kik##128974 |goto Nazmir/0 57.72,67.71 |q 49312 |future
]],
},
{
rare=[[Scout Skrasniss]],
level=110,
spot="Nazmir/0 59.14,38.78",
currency="AZ",
quest=48972,
steps=[[
step
kill Scout Skrasniss##127820 |goto Nazmir/0 59.14,38.78 |q 48972 |future
]],
},
{
rare=[[Tainted Guardian]],
level=110,
spot="Nazmir/0 31.51,38.20",
currency="AZ",
quest=48508,
steps=[[
step
kill Tainted Guardian##126460 |goto Nazmir/0 31.51,38.20 |q 48508 |future
]],
},
{
rare=[[Totem Maker Jash'ga]],
level=110,
spot="Nazmir/0 49.42,37.69",
currency="AZ",
quest=48406,
steps=[[
step
kill Totem Maker Jash'ga##126056 |goto Nazmir/0 49.42,37.69 |q 48406 |future
|tip Inside the building.
]],
},
{
rare=[[Uroku the Bound]],
level=110,
spot="Nazmir/0 44.27,48.78",
currency="AZ",
quest=49305,
steps=[[
step
kill Uroku the Bound##128965 |goto Nazmir/0 44.27,48.78 |q 49305 |future
]],
},
{
rare=[[Venomjaw]],
level=110,
spot="Nazmir/0 29.51,50.80",
currency="AZ",
quest=48626,
steps=[[
step
kill Venomjaw##126926 |goto Nazmir/0 29.51,50.80 |q 48626 |future
|tip He walks around this area.
|tip Pull him away, out of the cloud of green spores.
]],
},
{
rare=[[Wardrummer Zurula]],
level=110,
spot="Nazmir/0 48.96,50.77",
currency="AZ",
quest=48623,
steps=[[
step
kill Wardrummer Zurula##126907 |goto Nazmir/0 48.96,50.77 |q 48623 |future
|tip At the top of the tower.
]],
},
{
rare=[[Xu'ba]],
level=110,
spot="Nazmir/0 36.54,50.52",
currency="AZ",
quest=50348,
steps=[[
step
kill Xu'ba##133531 |goto Nazmir/0 36.54,50.52 |q 50348 |future
]],
},
{
rare=[[Za'amar the Queen's Blade]],
level=110,
spot="Nazmir/0 38.79,26.75",
currency="AZ",
quest=49469,
steps=[[
step
Enter the crypt |goto Nazmir/0 38.77,28.79 < 10 |walk
kill Za'amar the Queen's Blade##129657 |goto 38.79,26.75 |q 49469 |future
|tip Inside the crypt.
]],
},
{
rare=[[Zanxib]],
level=110,
spot="Nazmir/0 38.88,71.48",
currency="AZ",
quest=50423,
steps=[[
step
kill Zanxib##133812 |goto Nazmir/0 38.74,71.43 |q 50423 |future
|tip He walks around this area.
]],
},
{
rare=[[Captain Razorspine]],
level=110,
spot="Stormsong Valley/0 47.22,66.01",
currency="AZ",
quest=50170,
item=155287,
steps=[[
step
Follow the path down |goto Stormsong Valley/0 46.40,64.53 < 15 |only if walking
Enter the cave |goto 47.35,65.37 < 10 |walk
kill Captain Razorspine##130897 |goto 47.22,66.01 |q 50170 |future
|tip He walks around this area inside the cave.
]],
},
{
rare=[[Corrupted Tideskipper]],
level=110,
spot="Stormsong Valley/0 67.11,49.71",
currency="AZ",
quest=52121,
item=154183,
steps=[[
step
kill Corrupted Tideskipper##139968 |goto Stormsong Valley/0 67.11,49.71 |q 52121 |future
|tip It swims underwater around this area.
]],
},
{
rare=[[Croaker]],
level=110,
spot="Stormsong Valley/0 62.93,32.83",
currency="AZ",
quest=52303,
item=154460,
steps=[[
step
kill Croaker##140938 |goto Stormsong Valley/0 62.93,32.83 |q 52303 |future
]],
},
{
rare=[[Crushtacean]],
level=110,
spot="Stormsong Valley/0 51.25,55.52",
currency="AZ",
quest=50731,
item=154857,
steps=[[
step
Enter the cave |goto Stormsong Valley/0 51.86,55.29 < 10 |walk
kill Crushtacean##136183 |goto 51.25,55.52 |q 50731 |future
]],
},
{
rare=[[Deepfang]],
level=110,
spot="Stormsong Valley/0 52.84,51.39",
currency="AZ",
quest=50692,
item=160464,
steps=[[
step
kill Deepfang##139385 |goto Stormsong Valley/0 52.84,51.39 |q 50692 |future
|tip It walks around this area.
]],
},
{
rare=[[Foreman Scripps]],
level=110,
spot="Stormsong Valley/0 64.43,65.92",
currency="AZ",
quest=49951,
item=160471,
steps=[[
step
kill Foreman Scripps##131404 |goto Stormsong Valley/0 64.43,65.92 |q 49951 |future
]],
},
{
rare=[[Galestorm]],
level=110,
spot="Stormsong Valley/0 71.45,54.35",
currency="AZ",
quest=50075,
item=155568,
steps=[[
step
kill Galestorm##132007 |goto Stormsong Valley/0 71.45,54.35 |q 50075 |future
|tip At the top of the hill.
]],
},
{
rare=[[Grimscowl the Harebrained]],
level=110,
spot="Stormsong Valley/0 62.07,73.89",
currency="AZ",
quest=52329,
item=155572,
steps=[[
step
kill Grimscowl the Harebrained##141059 |goto Stormsong Valley/0 62.07,73.89 |q 52329 |future
|tip He will appear on your minimap as a yellow dot.
]],
},
{
rare=[[Haegol the Hammer]],
level=110,
spot="Stormsong Valley/0 35.25,77.76",
currency="AZ",
quest=52460,
steps=[[
step
kill Haegol the Hammer##141226 |goto Stormsong Valley/0 35.25,77.76 |q 52460 |future
|tip He walks around this area.
]],
},
{
rare=[[Ice Sickle]],
level=110,
spot="Stormsong Valley/0 63.53,83.56",
currency="AZ",
quest=52327,
steps=[[
step
kill Ice Sickle##141039 |goto Stormsong Valley/0 63.53,83.56 |q 52327 |future
]],
},
{
rare=[[Kickers]],
level=110,
spot="Stormsong Valley/0 31.30,61.70",
currency="AZ",
quest=52318,
item=154475,
steps=[[
step
kill Kickers##141029 |goto Stormsong Valley/0 31.30,61.70 |q 52318 |future
|tip He walks around this area.
]],
},
{
rare=[[Osca the Bloodied]],
level=110,
spot="Stormsong Valley/0 42.26,63.24",
currency="AZ",
quest=52461,
item=159169,
steps=[[
step
kill Osca the Bloodied##141239 |goto Stormsong Valley/0 42.26,63.24 |q 52461 |future
]],
},
{
rare=[[Pinku'shon]],
level=110,
spot="Stormsong Valley/0 38.22,51.09",
currency="AZ",
quest=51959,
item=163678,
steps=[[
step
kill Pinku'shon##139298 |goto Stormsong Valley/0 38.22,51.09 |q 51959 |future
|tip It walks around this area.
]],
},
{
rare=[[Poacher Zane]],
level=110,
spot="Stormsong Valley/0 34.65,67.98",
currency="AZ",
quest=52469,
steps=[[
step
kill Poacher Zane##141286 |goto Stormsong Valley/0 34.65,67.98 |q 52469 |future
]],
},
{
rare=[[Ragna]],
level=110,
spot="Stormsong Valley/0 41.60,74.35",
currency="AZ",
quest=50725,
item=160465,
steps=[[
step
kill Ragna##134884 |goto Stormsong Valley/0 41.60,74.35 |q 50725 |future
|tip He walks around this area.
]],
},
{
rare=[[Sabertron]],
level=110,
spot="Stormsong Valley/0 33.88,31.89",
currency="AZ",
quest=51956,
item=154664,
steps=[[
step
Enter the cave |goto Stormsong Valley/0 34.93,32.60 < 10 |walk
kill Sabertron Technician##139334
|tip He walks around this area inside the cave.
kill Sabertron##139328 |goto 33.88,31.89 |q 51956 |future
|tip One of the nearby metal cats will attack after you kill the Sabertron Technician.
]],
},
{
rare=[[Sandfang]],
level=110,
spot="Stormsong Valley/0 73.52,60.65",
currency="AZ",
quest=52125,
steps=[[
step
kill Sandfang##139988 |goto Stormsong Valley/0 73.52,60.65 |q 52125 |future
]],
},
{
rare=[[Seabreaker Skoloth]],
level=110,
spot="Stormsong Valley/0 33.72,38.21",
currency="AZ",
quest=51757,
item=160477,
steps=[[
step
kill Seabreaker Skoloth##138938 |goto Stormsong Valley/0 33.72,38.21 |q 51757 |future
|tip He walks around this area.
]],
},
{
rare=[[Severus the Outcast]],
level=110,
spot="Stormsong Valley/0 22.58,73.21",
currency="AZ",
quest=50938,
steps=[[
step
Follow the path up |goto Stormsong Valley/0 21.75,71.40 < 20 |only if walking
kill Severus the Outcast##140997 |goto 22.58,73.21 |q 50938 |future
]],
},
{
rare=[[Sister Absinthe]],
level=110,
spot="Stormsong Valley/0 61.57,57.06",
currency="AZ",
quest=52441,
item=155164,
steps=[[
step
kill Sister Absinthe##141143 |goto Stormsong Valley/0 61.57,57.06 |q 52441 |future
]],
},
{
rare=[[Slickspill]],
level=110,
spot="Stormsong Valley/0 41.80,28.47",
currency="AZ",
quest=51958,
item=158216,
steps=[[
step
kill Slickspill##139319 |goto Stormsong Valley/0 41.80,28.47 |q 51958 |future
]],
},
{
rare=[[Song Mistress Dadalea]],
level=110,
spot="Stormsong Valley/0 70.86,32.23",
currency="AZ",
quest=52448,
item=158218,
steps=[[
step
kill Song Mistress Dadalea##141175 |goto Stormsong Valley/0 70.86,32.23 |q 52448 |future
]],
},
{
rare=[[Squall]],
level=110,
spot="Stormsong Valley/0 57.01,75.92",
currency="AZ",
quest=52433,
item=158224,
steps=[[
step
kill Squall##141088 |goto Stormsong Valley/0 57.01,75.92 |q 52433 |future
|tip He walks around this area.
]],
},
{
rare=[[Taja the Tidehowler]],
level=110,
spot="Stormsong Valley/0 59.95,45.87",
currency="AZ",
quest=52123,
item=154449,
steps=[[
step
kill Taja the Tidehowler##139980 |goto Stormsong Valley/0 59.95,45.87 |q 52123 |future
]],
},
{
rare=[[The Lichen King]],
level=110,
spot="Stormsong Valley/0 51.78,79.77",
currency="AZ",
quest=50974,
item=155222,
steps=[[
step
Enter the cave |goto Stormsong Valley/0 51.78,79.23 < 10 |walk
kill The Lichen King##136189 |goto 51.78,79.77 |q 50974 |future
|tip Inside the cave.
]],
},
{
rare=[[Vinespeaker Ratha]],
level=110,
spot="Stormsong Valley/0 49.63,68.07",
currency="AZ",
quest=50037,
item=158299,
steps=[[
step
Enter the cave |goto Stormsong Valley/0 50.99,68.67 < 15 |walk
Enter the cave |goto 50.74,68.22 < 10 |walk
kill Vinespeaker Ratha##135939 |goto 49.63,68.07 |q 50037 |future
|tip Inside the cave.
]],
},
{
rare=[[Wagga Snarltusk]],
level=110,
spot="Stormsong Valley/3 11.77,28.81",
currency="AZ",
quest=50819,
item=154431,
steps=[[
step
Follow the path |goto Stormsong Valley/3 40.98,51.71 < 10 |walk
kill Wagga Snarltusk##130079 |goto 11.77,28.81 |q 50819 |future
|tip Inside the cave.
]],
},
{
rare=[[Whiplash]],
level=110,
spot="Stormsong Valley/0 47.21,65.86",
currency="AZ",
quest=52296,
steps=[[
step
Enter the cave |goto Stormsong Valley/0 47.34,65.35 < 10 |walk
kill Whiplash##129803 |goto 47.21,65.86 |q 52296 |future
|tip Inside the cave.
]],
},
{
rare=[[Whirlwing]],
level=110,
spot="Stormsong Valley/0 46.90,42.14",
currency="AZ",
quest=52457,
item=158215,
steps=[[
step
kill Whirlwing##142088 |goto Stormsong Valley/0 46.90,42.14 |q 52457 |future
|tip He flies in the air around this area.
]],
},
{
rare=[[Auditor Dolp]],
level=110,
spot="Tiragarde Sound/0 74.91,78.95",
currency="AZ",
quest=50156,
steps=[[
step
Follow the path up |goto Tiragarde Sound/0 75.46,78.23 < 15 |only if walking
kill Auditor Dolp##132182 |goto 74.91,78.95 |q 50156 |future
]],
},
{
rare=[[Barman Bill]],
level=110,
spot="Tiragarde Sound/0 76.10,82.88",
currency="AZ",
quest=50233,
item=163717,
steps=[[
step
kill Barman Bill##129181 |goto Tiragarde Sound/0 76.10,82.88 |q 50233 |future
|tip He walks around this area.
]],
},
{
rare=[[Bashmu]],
level=110,
spot="Tiragarde Sound/0 34.51,30.34",
currency="AZ",
quest=50094,
steps=[[
step
kill Bashmu##132068 |goto Tiragarde Sound/0 34.51,30.34 |q 50094 |future
]],
},
{
rare=[[Black-Eyed Bart]],
level=110,
spot="Tiragarde Sound/0 56.27,69.94",
currency="AZ",
quest=50096,
item=163718,
steps=[[
step
kill Black-Eyed Bart##132086 |goto Tiragarde Sound/0 56.27,69.94 |q 50096 |future
|tip He walks around this area inside the crumbled tower.
]],
},
{
rare=[[Blackthorne]],
level=110,
spot="Tiragarde Sound/0 85.27,73.44",
currency="AZ",
quest=51808,
item=154411,
steps=[[
step
Follow the path up |goto Tiragarde Sound/0 84.08,72.38 < 15 |only if walking
kill Blackthorne##139145 |goto 85.27,73.44 |q 51808 |future
]],
},
{
rare=[[Broodmother Razora]],
level=110,
spot="Tiragarde Sound/0 83.54,44.83",
currency="AZ",
quest=49999,
steps=[[
step
kill Broodmother Razora##130508 |goto Tiragarde Sound/0 83.54,44.83 |q 49999 |future
]],
},
{
rare=[[Captain Wintersail]],
level=110,
spot="Tiragarde Sound/0 38.44,20.71",
currency="AZ",
quest=50097,
steps=[[
step
Enter the cave |goto Tiragarde Sound/0 38.73,21.86 < 10 |walk
click Smuggler's Cache##280649
|tip Inside the cave.
Watch the dialogue
kill Captain Wintersail##132088 |goto 38.44,20.71 |q 50097 |future
]],
},
{
rare=[[Carla Smirk]],
level=110,
spot="Tiragarde Sound/0 72.52,81.04",
currency="AZ",
quest=51809,
steps=[[
step
kill Carla Smirk##139152 |goto Tiragarde Sound/0 72.52,81.04 |q 51809 |future
|tip She walks around on the deck of the ship.
]],
},
{
rare=[[Fowlmouth]],
level=110,
spot="Tiragarde Sound/0 90.45,77.11",
currency="AZ",
quest=50155,
steps=[[
step
kill Fowlmouth##132211 |goto Tiragarde Sound/0 90.45,77.11 |q 50155 |future
|tip It looks like a bird that flies around this area.
]],
},
{
rare=[[Foxhollow Skyterror]],
level=110,
spot="Tiragarde Sound/0 60.11,22.18",
currency="AZ",
quest=50137,
steps=[[
step
kill Foxhollow Skyterror##132127 |goto Tiragarde Sound/0 60.11,22.18 |q 50137 |future
]],
},
{
rare=[[Gulliver]],
level=110,
spot="Tiragarde Sound/0 57.84,55.91",
currency="AZ",
quest=53373,
steps=[[
step
kill Gulliver##139233 |goto Tiragarde Sound/0 57.84,55.91 |q 53373 |future
]],
},
{
rare=[[Kulett the Ornery]],
level=110,
spot="Tiragarde Sound/0 47.81,22.28",
currency="AZ",
quest=49984,
steps=[[
step
kill Kulett the Ornery##131520 |goto Tiragarde Sound/0 47.81,22.28 |q 49984 |future
]],
},
{
rare=[[Lumbergrasp Sentinel]],
level=110,
spot="Tiragarde Sound/0 68.31,19.96",
currency="AZ",
quest=50525,
item=155524,
steps=[[
step
kill Lumbergrasp Sentinel##134106 |goto Tiragarde Sound/0 68.31,19.96 |q 50525 |future
]],
},
{
rare=[[Maison the Portable]],
level=110,
spot="Tiragarde Sound/0 58.16,50.09",
currency="AZ",
quest=51880,
item=154458,
steps=[[
step
kill Maison the Portable##139290 |goto Tiragarde Sound/0 58.16,50.09 |q 51880 |future
|tip He walks around this area.
]],
},
{
rare=[[Merianae]],
level=110,
spot="Tiragarde Sound/0 43.04,16.75",
currency="AZ",
quest=49921,
steps=[[
step
Enter the cave |goto Tiragarde Sound/0 43.49,17.23 < 20 |walk
kill Merianae##131252 |goto 43.04,16.75 |q 49921 |future
|tip Inside the cave.
]],
},
{
rare=[[P4-N73R4]],
level=110,
spot="Tiragarde Sound/0 65.21,64.52",
currency="AZ",
quest=51833,
steps=[[
step
kill P4-N73R4##139205 |goto Tiragarde Sound/0 65.21,64.52 |q 51833 |future
]],
},
{
rare=[[Pack Leader Asenya]],
level=110,
spot="Tiragarde Sound/0 38.90,15.30",
currency="AZ",
quest=49923,
item=160263,
steps=[[
step
Enter the cave |goto Tiragarde Sound/0 39.88,14.90 < 10 |walk
kill Pack Leader Asenya##131262 |goto 38.90,15.30 |q 49923 |future
|tip Inside the cave.
]],
},
{
rare=[[Raging Swell]],
level=110,
spot="Tiragarde Sound/0 64.78,58.64",
currency="AZ",
quest=50148,
item=161446,
steps=[[
step
kill Raging Swell##132179 |goto Tiragarde Sound/0 64.78,58.64 |q 50148 |future
]],
},
{
rare=[[Ranja]],
level=110,
spot="Tiragarde Sound/0 68.31,63.54",
currency="AZ",
quest=51872,
steps=[[
step
kill Ranja##139278 |goto Tiragarde Sound/0 68.31,63.54 |q 51872 |future
]],
},
{
rare=[[Saurolisk Tamer Mugg]],
level=110,
spot="Tiragarde Sound/0 58.65,14.80",
currency="AZ",
quest=48806,
item=154416,
steps=[[
step
kill Mugg##127290 |goto Tiragarde Sound/0 58.65,14.80 |q 48806 |future
]],
},
{
rare=[[Shiverscale the Toxic]],
level=110,
spot="Tiragarde Sound/0 55.11,32.40",
currency="AZ",
quest=51876,
steps=[[
step
Follow the path up |goto Tiragarde Sound/0 54.61,33.53 < 15 |only if walking
kill Shiverscale the Toxic##139285 |goto 55.11,32.40 |q 51876 |future
]],
},
{
rare=[[Squacks]],
level=110,
spot="Tiragarde Sound/0 80.91,82.82",
currency="AZ",
quest=50160,
steps=[[
step
kill Squacks##132280 |goto Tiragarde Sound/0 80.91,82.82 |q 50160 |future
]],
},
{
rare=[[Squirgle of the Depths]],
level=110,
spot="Tiragarde Sound/0 48.90,37.02",
currency="AZ",
quest=51807,
steps=[[
step
kill Squirgle of the Depths##139135 |goto Tiragarde Sound/0 48.90,37.02 |q 51807 |future
]],
},
{
rare=[[Sythian the Swift]],
level=110,
spot="Tiragarde Sound/0 66.93,13.43",
currency="AZ",
quest=51873,
steps=[[
step
kill Sythian the Swift##139280 |goto Tiragarde Sound/0 66.93,13.43 |q 51873 |future
|tip He looks like a large white deer that runs around this area.
]],
},
{
rare=[[Tempestria]],
level=110,
spot="Tiragarde Sound/0 60.53,17.54",
currency="AZ",
quest=50301,
steps=[[
step
Follow the path up |goto Tiragarde Sound/0 61.20,17.32 < 20 |only if walking
click Suspicious Pile of Meat##281172
Kill the enemies that attack
kill Tempestria##133356 |goto 60.53,17.54 |q 50301 |future
]],
},
{
rare=[[Tentulos the Drifter]],
level=110,
spot="Tiragarde Sound/0 55.32,51.53",
currency="AZ",
quest=51879,
steps=[[
step
kill Tentulos the Drifter##139289 |goto Tiragarde Sound/0 55.32,51.53 |q 51879 |future
|tip Underwater.
]],
},
{
rare=[[Teres]],
level=110,
spot="Tiragarde Sound/0 63.66,50.36",
currency="AZ",
quest=49942,
item=158556,
steps=[[
step
kill Teres##131389 |goto Tiragarde Sound/0 63.66,50.36 |q 49942 |future
]],
},
{
rare=[[Tort Jaw]],
level=110,
spot="Tiragarde Sound/0 70.40,55.72",
currency="AZ",
quest=51835,
steps=[[
step
kill Tort Jaw##139235 |goto Tiragarde Sound/0 70.40,55.72 |q 51835 |future
]],
},
{
rare=[[Twin-hearted Construct]],
level=110,
spot="Tiragarde Sound/0 70.34,12.49",
currency="AZ",
quest=50073,
item=160473,
steps=[[
step
Enter the cave |goto Tiragarde Sound/0 70.29,12.81 < 10 |walk
click Ritual Effigy##280603
|tip Inside the cave.
kill Twin-hearted Construct##131984 |goto 70.34,12.49 |q 50073 |future
]],
},
{
rare=[[Ak'tar]],
level=110,
spot="Vol'dun/0 50.33,81.63",
currency="AZ",
quest=51105,
steps=[[
step
kill Ak'tar##135852 |goto Vol'dun/0 50.33,81.63 |q 51105 |future
]],
},
{
rare=[[Ashmane]],
level=110,
spot="Vol'dun/0 54.70,15.14",
currency="AZ",
quest=51095,
steps=[[
step
Follow the path up |goto Vol'dun/0 55.77,16.59 < 20 |only if walking
Cross the bridge |goto 54.40,16.81 < 15 |only if walking
kill Ashmane##130439 |goto 54.70,15.14 |q 51095 |future
]],
},
{
rare=[[Azer'tor]],
level=110,
spot="Vol'dun/0 49.03,89.03",
currency="AZ",
quest=51096,
steps=[[
step
Enter the cave |goto Vol'dun/0 47.88,88.15 < 20 |walk
Follow the path down |goto 48.64,89.05 < 10 |walk
kill Azer'tor##128553 |goto 49.03,89.03 |q 51096 |future
|tip Inside the cave.
]],
},
{
rare=[[Bajiani the Slick]],
level=110,
spot="Vol'dun/0 31.00,81.09",
currency="AZ",
quest=51117,
steps=[[
step
kill Bajiani the Slick##128497 |goto Vol'dun/0 31.00,81.09 |q 51117 |future
]],
},
{
rare=[[Bloodwing Bonepicker]],
level=110,
spot="Vol'dun/0 56.06,53.60",
currency="AZ",
quest=51118,
steps=[[
step
Follow the path up |goto Vol'dun/0 57.36,53.54 < 15 |only if walking
clicknpc Enormous Egg##136390
|tip At the top of the mountain.
kill Bloodwing Bonepicker##136393 |goto 56.06,53.60 |q 51118 |future
]],
},
{
rare=[[Captain Stef "Marrow" Quin]],
level=110,
spot="Vol'dun/0 41.32,24.18",
currency="AZ",
quest=51120,
steps=[[
step
kill Captain Stef "Marrow" Quin##136346 |goto Vol'dun/0 41.32,24.18 |q 51120 |future
|tip She walks around this area.
]],
},
{
rare=[[Commodore Calhoun]],
level=110,
spot="Vol'dun/0 42.51,92.08",
currency="AZ",
quest=51098,
steps=[[
step
Follow the path up |goto Vol'dun/0 43.00,92.30 < 15 |only if walking
Cross the bridge |goto 43.47,91.70 < 15 |only if walking
kill Commodore Calhoun##124722 |goto 42.51,92.08 |q 51098 |future
|tip Up on the wooden dock.
]],
},
{
rare=[[Enraged Krolusk]],
level=110,
spot="Vol'dun/0 61.99,37.85",
currency="AZ",
quest=51121,
steps=[[
step
kill Enraged Krolusk##136335 |goto Vol'dun/0 61.99,37.85 |q 51121 |future
]],
},
{
rare=[[Gut-Gut the Glutton]],
level=110,
spot="Vol'dun/0 64.02,47.50",
currency="AZ",
quest=51099,
steps=[[
step
Enter the cave |goto Vol'dun/0 63.97,47.92 < 10 |walk
kill Gut-Gut the Glutton##128674 |goto 64.02,47.50 |q 51099 |future
|tip Inside the cave.
]],
},
{
rare=[[Scaleclaw Broodmother]],
level=110,
spot="Vol'dun/0 44.54,80.20",
currency="AZ",
quest=51107,
steps=[[
step
kill Scaleclaw Broodmother##127776 |goto Vol'dun/0 44.54,80.20 |q 51107 |future
]],
},
{
rare=[[Atal'zul Gotaka]],
level=110,
spot="Zuldazar/0 80.97,21.59",
currency="AZ",
quest=50280,
item=161042,
steps=[[
step
click Rope |goto Zuldazar/0 80.81,20.48
Climb Onto the Ship |goto 80.85,20.30 < 2 |noway |c |q 50280 |future
step
click Rope |goto 80.85,20.29
Board the Ship |goto 80.88,20.39 < 2 |noway |c |q 50280 |future
step
kill Atal'zul Gotaka##129961 |goto 80.97,21.61 |q 50280 |future
|tip On the deck of the ship.
]],
},
{
rare=[[Avatar of Xolotal]],
level=110,
spot="Zuldazar/0 49.83,57.42",
currency="AZ",
quest=49410,
item=161034,
steps=[[
step
Enter the cave |goto Zuldazar/0 49.57,59.00 < 10 |walk
kill Avatar of Xolotal##129343 |goto 49.83,57.42 |q 49410 |future
|tip Inside the cave.
]],
},
{
rare=[[Bloodbulge]],
level=110,
spot="Zuldazar/0 59.84,18.29",
currency="AZ",
quest=49267,
item=161104,
steps=[[
step
kill Bloodbulge##128699 |goto Zuldazar/0 59.84,18.29 |q 49267 |future
]],
},
{
rare=[[Bramblewing]],
level=110,
spot="Zuldazar/0 66.74,32.29",
currency="AZ",
quest=50034,
item=161020,
steps=[[
step
kill Bramblewing##131718 |goto Zuldazar/0 66.74,32.29 |q 50034 |future
]],
},
{
rare=[[Daggerjaw]],
level=110,
spot="Zuldazar/0 74.28,39.44",
currency="AZ",
quest=50269,
steps=[[
step
kill Daggerjaw##133190 |goto Zuldazar/0 74.28,39.44 |q 50269 |future
|tip Underwater.
]],
},
{
rare=[[Dark Chronicler]],
level=110,
spot="Zuldazar/0 44.12,76.51",
currency="AZ",
quest=51083,
item=160979,
steps=[[
step
kill Dark Chronicler##136428 |goto Zuldazar/0 44.12,76.51 |q 51083 |future
|tip Inside the cave.
]],
},
{
rare=[[Darkspeaker Jo'la]],
level=110,
spot="Zuldazar/0 65.38,10.24",
currency="AZ",
quest=50693,
item=160958,
steps=[[
step
kill Darkspeaker Jo'la##134760 |goto Zuldazar/0 65.38,10.24 |q 50693 |future
]],
},
{
rare=[[G'Naat]],
level=110,
spot="Zuldazar/0 79.98,35.96",
currency="AZ",
quest=50260,
steps=[[
step
kill G'Naat##133155 |goto Zuldazar/0 79.98,35.96 |q 50260 |future
]],
},
{
rare=[[Gahz'ralka]],
level=110,
spot="Zuldazar/0 64.25,32.71",
currency="AZ",
quest=50439,
item=161043,
steps=[[
step
kill Gahz'ralka##129954 |q 50439 |future |goto Zuldazar/0 64.25,32.71
|tip In the water under the bridge.
]],
},
{
rare=[[Golrakahn]],
level=110,
spot="Zuldazar/0 74.12,28.49",
currency="AZ",
quest=47792,
item=161035,
steps=[[
step
Run up the stairs |goto Zuldazar/0 73.43,28.20 < 10 |only if walking
kill Golrakahn##124185 |goto Zuldazar/0 74.12,28.49 |q 47792 |future
]],
},
{
rare=[[Hakbi the Risen]],
level=110,
spot="Zuldazar/0 42.04,36.22",
currency="AZ",
quest=50677,
item=160978,
steps=[[
step
kill Hakbi the Risen##134738 |goto Zuldazar/0 42.04,36.22 |q 50677 |future
]],
},
{
rare=[[Kandak]],
level=110,
spot="Zuldazar/0 68.67,48.74",
access="Completionist",
currency="AZ",
quest=48543,
item=160984,
steps=[[
step
Enter the cave |goto Zuldazar/0 68.84,47.14 < 10 |only if walking
kill Kandak##126637 |goto 68.67,48.74 |q 48543 |future
]],
},
{
rare=[[Kiboku]],
level=110,
spot="Zuldazar/0 75.63,35.90",
currency="AZ",
quest=50159,
item=161112,
steps=[[
step
kill Kiboku##132244 |goto Zuldazar/0 75.63,35.90 |q 50159 |future
]],
},
{
rare=[[Lei-zhi]],
level=110,
spot="Zuldazar/0 58.68,74.19",
access="Completionist",
currency="AZ",
quest=49911,
item=161033,
steps=[[
step
kill Lei-zhi##131233 |goto Zuldazar/0 58.68,74.19 |q 49911 |future
]],
},
{
rare=[[Murderbeak]],
level=110,
spot="Zuldazar/0 60.68,66.19",
currency="AZ",
quest=50281,
item=161022,
steps=[[
step
click Chum Bucket##281130
Choose _"Toss the chum into the sea."_
Kill the enemies that attack
kill Murderbeak##134782 |goto Zuldazar/0 60.68,66.19 |q 50281 |future
]],
},
{
rare=[[Syrawon the Dominus]],
level=110,
spot="Zuldazar/0 53.36,44.61",
access="Completionist",
currency="AZ",
quest=51080,
item=161047,
steps=[[
step
Enter the cave |goto Zuldazar/0 53.89,44.88 < 20 |walk
kill Syrawon the Dominus##136413 |goto 53.36,44.61 |q 51080 |future
|tip Inside the cave.
]],
},
{
rare=[[Tambano]],
level=110,
spot="Zuldazar/0 77.71,10.18",
currency="AZ",
quest=50013,
item=161109,
steps=[[
step
kill Tambano##131687 |goto Zuldazar/0 77.71,10.18 |q 50013 |future
|tip It walks around this area.
]],
},
{
rare=[[Torraske the Eternal]],
level=110,
spot="Zuldazar/0 46.66,65.23",
currency="AZ",
quest=49004,
item=161029,
steps=[[
step
kill Torraske the Eternal##127939 |goto Zuldazar/0 46.66,65.23 |q 49004 |future
|tip He walks around this area.
]],
},
{
rare=[[Vukuba]],
level=110,
spot="Zuldazar/0 61.90,46.22",
currency="AZ",
quest=50508,
item=162613,
steps=[[
step
Enter the cave |goto Zuldazar/0 62.01,46.22 < 10 |walk
click Strange Egg##134049
|tip Inside the cave.
Choose _"Investigate the egg."_
kill Vukuba##134048 |goto Zuldazar/0 61.90,46.22 |q 50508 |future
]],
},
{
rare=[[Warcrawler Karkithiss]],
level=110,
spot="Zuldazar/0 43.92,25.48",
currency="AZ",
quest=50438,
item=161040,
steps=[[
step
Enter the cave |goto Zuldazar/0 44.26,25.18 < 10 |walk
kill Warcrawler Karkithiss##133842 |goto 43.92,25.48 |q 50438 |future
|tip Inside the cave.
]],
},
{
rare=[[Zayoos]],
level=110,
spot="Zuldazar/0 47.98,54.24",
currency="AZ",
quest=49972,
item=161125,
steps=[[
step
kill Zayoos##131476 |goto Zuldazar/0 47.98,54.24 |q 49972 |future
]],
},
{
rare=[[Scale Matriarch Vynara]],
level=120,
spot="Nazjatar/0 27.60,36.80",
quest=56293,
item=169370,
steps=[[
step
kill Scale Matriarch Vynara##152545 |goto Nazjatar/0 27.60,36.80 |c |q 56293 |future
|tip It should respawn about every hour.
]]
},
{
rare=[[King Gakula]],
level=120,
spot="Nazjatar/0 29.40,29.00",
quest=55671,
item=169371,
steps=[[
step
clicknpc Bloodfin Tadpole##152275+
|tip They look like small murloc tadpoles around this area.
|tip "Shoo" Bloodfin Tadpoles.
|tip For every 25 tadpoles "Shoo'd," King Gakula will yell.
|tip At 25 tadpoles, he will yell "Mgrlgl? Gmrgurgl?".
|tip At 50 tadpoles, he will yell "Murrrglurg? Murgglugrg!".
|tip At 75 tadpoles, he will yell "Mrrglgl! Murgglagk!".
|tip At 100 tadpoles, he will yell "Gak! Mugllglgll Gak!".
|tip He will spawn after 100 tadpoles have been clicked by players in the area.
kill King Gakula##152323 |goto Nazjatar/0 29.40,29.00 |c |q 55671 |future
]]
},
{
rare=[[Scale Matriarch Gratinax]],
level=120,
spot="Nazjatar/0 35.60,41.20",
quest=56292,
item=169370,
steps=[[
step
kill Scale Matriarch Gratinax##152548 |goto Nazjatar/0 35.60,41.20 |c |q 56292 |future
|tip It should respawn about every hour.
]]
},
{
rare=[[Blindlight]],
level=120,
spot="Nazjatar/0 37.40,82.54",
quest=56269,
item=169372,
steps=[[
step
Enter the cave |goto Nazjatar/0 39.62,77.25 < 10 |walk
Follow the path |goto 38.80,78.34 < 10 |walk
kill Blindlight##152712 |goto 37.40,82.54 |c |q 56269 |future
|tip It walks or swims around this area inside the cave.
]]
},
{
rare=[[Mirecrawler]],
level=120,
spot="Nazjatar/0 37.20,13.20",
quest=56274,
item=169366,
steps=[[
step
kill Mirecrawler##144644 |goto Nazjatar/0 37.20,13.20 |c |q 56274 |future
|tip It spawns inside caves around Nazjatar.
]]
},
{
rare=[[Garnetscale]],
level=120,
spot="Nazjatar/0 37.40,40.20",
quest=56273,
item=170180,
steps=[[
step
kill Garnetscale##152553 |goto Nazjatar/0 37.40,40.20 |c |q 56273 |future
|tip It spawns around this area in the Ashen Strand.
]]
},
{
rare=[[Prince Vortran]],
level=120,
spot="Nazjatar/0 43.00,75.49",
quest=56290,
item=169368,
steps=[[
step
kill Prince Vortran##152682 |goto Nazjatar/0 43.00,75.49 |c |q 56290 |future
|tip This rare won't spawn every day, but on days it is active it should respawn about every 10-15 minutes.
]]
},
{
rare=[[Prince Typhonus]],
level=120,
spot="Nazjatar/0 43.04,87.93",
quest=56289,
item=169367,
steps=[[
step
kill Prince Typhonus##152681 |goto Nazjatar/0 43.04,87.93 |c |q 56289 |future
|tip This rare won't spawn every day, but on days it is active it should respawn about every 10-15 minutes.
]]
},
{
rare=[[Iridescent Glimmershell]],
level=120,
spot="Nazjatar/0 47.20,55.00",
quest=56286,
item=169352,
steps=[[
step
kill Glimmershell Hulk##152426+
|tip Kill Glimmershell Hulks around this area to eventually spawn the Iridescent Glimmershell.
kill Iridescent Glimmershell##152448 |goto Nazjatar/0 47.20,55.00 |c |q 56286 |future
]]
},
{
rare=[[Avarius]],
level=120,
spot="Nazjatar/0 36.90,11.20",
quest=55584,
item=169373,
steps=[[
step
Kill Rares and open chests throughout Nazjatar
|tip You can also get the pickaxe from mining nodes.
collect Brinestone Pickaxe##167012 |q 55531 |future
step
click Brinestone Deposit##325615+
|tip They look like dark colored mineral deposits.
|tip They appear on your minimap as yellow dots.
Collect #5# Brinestone Shards |q 55531/1 |goto Nazjatar/0 35.97,11.84
step
click Violet Brinestone Shard
Place the Violet Brinestone Shard |q 55531/2 |goto 36.79,11.32 |count 1
step
click Fiery Brinestone Shard
Place the Fiery Brinestone Shard |q 55531/2 |goto 36.95,11.46 |count 2
step
click Amber Brinestone Shard
Place the Amber Brinestone Shard |q 55531/2 |goto 37.11,11.25 |count 3
step
click Jade Brinestone Shard
Place the Jade Brinestone Shard |q 55531/2 |goto 37.01,10.99 |count 4
step
click Azure Brinestone Shard
Place the Azure Brinestone Shard |q 55531/2 |goto 36.82,11.01 |count 5
step
kill Brinestone Elemental##150308
collect Brinestone Core##168038 |q 55531/3 |goto 36.92,11.21
step
talk Artisan Okata##153509
|tip Inside the building.
turnin What Will It Mine?##55531 |goto 37.89,55.84
step
Kill Rares and open chests throughout Nazjatar
|tip You can also get the pickaxe from mining nodes.
collect Brinestone Pickaxe##167012 |q 55584 |future
step
click Brinestone Deposit
|tip This deposit will not always be available.
Click Brinestone Shards
|tip Click all five of them.
kill Avarius##150191 |goto 36.93,11.19 |c |q 55584 |future
|tip Inside the cave.
]]
},
{
rare=[[Daggertooth Terror]],
level=120,
spot="Nazjatar/0 39.00,59.30",
quest=56271,
item=169361,
steps=[[
step
kill Daggertooth Terror##152756 |goto Nazjatar/0 39.00,59.30 |c |q 56271 |future
|tip It can spawn in multiple bodies of water throughout Nazjatar.
You can also find it at [27.59,30.56]
And [49.05,19.41]
And [71.84,27.95]
And [45.40,70.64]
And [40.52,81.06]
]]
},
{
rare=[[Scale Matriarch Zodia]],
level=120,
spot="Nazjatar/0 28.70,46.30",
quest=56294,
item=169370,
steps=[[
step
kill Scale Matriarch Zodia##152542 |goto Nazjatar/0 28.70,46.30 |c |q 56294 |future
|tip It should respawn about every hour.
]]
},
{
rare=[[Shassera]],
level=120,
spot="Nazjatar/0 63.08,7.68",
quest=56295,
item=170187,
steps=[[
step
Enter the cave |goto Nazjatar/0 63.29,11.80 < 5 |walk
Follow the path |goto 63.86,10.38 < 10 |walk
kill Shassera##152552 |goto 63.08,7.68 |c |q 56295 |future
|tip Inside the cave.
]]
},
{
rare=[[Needlespine]],
level=120,
spot="Nazjatar/0 52.00,17.20",
quest=56275,
item=169355,
steps=[[
step
kill Needlespine##152465 |goto Nazjatar/0 52.00,17.20 |c |q 56275 |future
|tip It can spawn in shallow bodies of water throughout Nazjatar.
You can also find it at [55.84,20.90]
And [46.86,34.01]
And [56.89,7.85]
]]
},
{
rare=[[Elderspawn Nalaada]],
level=120,
spot="Nazjatar/0 52.02,75.39",
quest=56285,
item=169359,
steps=[[
step
kill Elderspawn Nalaada##152555 |goto Nazjatar/0 52.02,75.39 |c |q 56285 |future
|tip It should respawn about every 45 minutes.
|tip It spawns adds during the fight so clear the area before pulling.
]]
},
{
rare=[[Carnivorous Lasher]],
level=120,
spot="Nazjatar/0 54.70,41.72",
quest=55366,
item=169375,
steps=[[
step
Kill Rares and open chests throughout Nazjatar
collect Germinating Seed##167786 |q 55426 |future
|tip You can also gather this item from Zin'anthid nodes around Nazjatar.
step
click Fertile Soil
Plant the Germinating Seed |q 55426/1 |goto Nazjatar/0 54.71,41.72
step
click Bloated Seafly
Catch a Bloated Seafly |q 55426/2 |goto 54.86,42.03
step
clicknpc Carnivorous Lasher##151769
|tip Use the "Bloated Seafly" ability that appears on-screen.
Feed the Carnivorous Lasher |q 55426/3 |goto 54.70,41.71
step
click Bloated Seafly+
clicknpc Carnivorous Lasher##151769
|tip Use the "Bloated Seafly" ability that appears on-screen.
Keep Feeding #9# Times |q 55426/4 |goto 54.70,41.71
step
kill Carnivorous Lasher##151769
collect Coral Petal##167785 |q 55426/5 |goto 54.72,41.69
step
talk Artisan Okata##153509 |only Alliance
talk Finder Pruc##153512 |only Horde
|tip Inside the building. |only Alliance
turnin What Will It Grow?##55426 |goto 37.89,55.84 |only Alliance
turnin What Will It Grow?##55426 |goto 49.08,62.19 |only Horde
step
Kill Rares and open chests throughout Nazjatar
collect Germinating Seed##166888 |q 55366 |future
|tip You can also gather this item from Zin'anthid nodes around Nazjatar.
step
click Fertile Soil##291206
|tip If the Fertile Soil isn't there you'll have to wait for it to respawn.
|tip It's respawn timer is currently unknown.
Plant the Germinating Seed |complete itemcount(166888) == 0 |goto 54.70,41.72 |q 55366 |future
step
clicknpc Bloated Seafly##149856+
|tip They look like small insects flying around this area.
Feed the Flies to the Carnivorous Lasher
|tip Use the "Bloated Seafly" ability next to the Carnivorous Lasher.
|tip It appears as a button on-screen.
kill Carnivorous Lasher##149653 |goto 54.70,41.72 |c |q 55366 |future
|tip It will become fully grown and attack you after feeding it 10 flies.
]]
},
{
rare=[[Sandclaw Stoneshell]],
level=120,
spot="Nazjatar/0 65.03,40.94",
quest=56277,
item=169350,
steps=[[
step
kill Sandclaw Stoneshell##152795 |goto Nazjatar/0 65.03,40.94 |c |q 56277 |future
|tip It can spawn in multiple locations through Nazjatar.
You can also find it at [62.51,53.47]
And [72.97,45.49]
And [80.23,42.69]
And [82.17,35.87]
And [74.42,30.85]
]]
},
{
rare=[[Toxigore the Alpha]],
level=120,
spot="Nazjatar/0 64.80,46.40",
quest=56278,
item=170178,
steps=[[
step
kill Toxigore the Alpha##152360 |goto Nazjatar/0 64.80,46.40 |c |q 56278 |future
|tip It should respawn about every 30 minutes.
You can also find it at [67.77,46.31]
And [65.30,49.96]
]]
},
{
rare=[[Siltstalker the Packmother]],
level=120,
spot="Nazjatar/0 71.66,54.85",
quest=56297,
item=170179,
steps=[[
step
Follow the path |goto Nazjatar/0 68.92,51.43 < 10 |only if walking
Follow the path up |goto 69.07,52.85 < 10 |only if walking
kill Siltstalker the Packmother##152359 |goto 71.66,54.85 |c |q 56297 |future
|tip It should respawn about every 50 minutes.
]]
},
{
rare=[[Amethyst Spireshell]],
level=120,
spot="Nazjatar/0 72.20,36.20",
quest=56268,
item=169363,
steps=[[
step
kill Amethyst Spireshell##152794 |goto Nazjatar/0 72.20,36.20 |c |q 56268 |future
|tip It can spawn in countless locations throughout Nazjatar.
]]
},
{
rare=[[Tidemistress Leth'sindra]],
level=120,
spot="Nazjatar/0 66.15,23.19",
quest=56106,
item=170196,
steps=[[
step
Click the eggs at the following locations
|tip Clicking all the eggs will spawn Tidemistress Leth'sindra.
click Undisturbed Specimen##327433 |goto Nazjatar/0 66.87,22.22 |walk
|tip It is up on a stone ledge.
click Undisturbed Specimen##327433 |goto 65.68,23.50 |walk
click Undisturbed Specimen##327433 |goto 66.93,24.75 |walk
click Undisturbed Specimen##327433 |goto 67.14,24.61 |walk
click Undisturbed Specimen##327433 |goto 65.92,24.72 |walk
Once you've clicked 5 eggs, click here |confirm |q 56106 |future
step
kill Tidemistress Leth'sindra##154148 |goto 66.15,23.19 |c |q 56106 |future
]]
},
{
rare=[[Sandcastle]],
level=120,
spot="Nazjatar/0 77.38,29.50",
quest=56276,
item=169369,
steps=[[
step
Kill Rares and open chests throughout Nazjatar
collect Scrying Stone##167077 |q 56276 |future
step
use Scrying Stone##167077
Start Detecting Hidden Treasures |goto Nazjatar/0 77.38,29.50 |havebuff spell:300135 |q 56276 |future
step
Find Glimmering Chests throughout Nazjatar
|tip When you are near one, click the button that appears on-screen to reveal it.
click Glimmering Chest##322413+
|tip They spawn all over Nazjatar.
kill Sandcastle##151870 |goto 77.38,29.50 |c |q 56276 |future
|tip He has a small chance to spawn nearby when opening a Glimmering Chest.
]]
},
{
rare=[[Caverndark Terror]],
level=120,
spot="Nazjatar/0 42.75,12.60",
quest=56283,
item=169356,
steps=[[
step
Enter the cave |goto Nazjatar/0 42.49,13.03 < 5 |walk
Follow the path |goto 42.75,12.60 < 10 |walk
kill Caverndark Terror##152464 |goto 42.75,12.60 |c |q 56283 |future
|tip Underwater inside the cave.
]]
},
{
rare=[[Rockweed Shambler]],
level=120,
spot="Nazjatar/0 60.60,49.60",
quest=56291,
item=169374,
steps=[[
step
Kill Algan enemies around this area
|tip They can spawn all over Naztajar.
kill Rockweed Shambler##150583 |goto Nazjatar/0 60.60,49.60 |c |q 56291 |future
|tip It has a small chance to spawn when killing Lost Algans or Wayward Algans.
|tip It can spawn in multiple places in Nazjatar.
]]
},
{
rare=[[Soundless]],
level=120,
spot="Nazjatar/0 57.60,51.70",
quest=56298,
item=169163,
steps=[[
step
kill Soundless##152290 |goto Nazjatar/0 57.60,51.70 |c |q 56298 |future
|tip It spawns on top of the large coral formations around this area.
|tip If you don't have flying, you can use a Deepcoral Pod and a Goblin Glider Kit to reach it.
]]
},
{
rare=[[Elder Unu]],
level=120,
spot="Nazjatar/0 63.45,34.32",
quest=56284,
item=167077,
steps=[[
step
Run up the stairs |goto Nazjatar/0 64.24,37.49 < 15 |only if walking
kill Elder Unu##152414 |goto 63.45,34.32 |c |q 56284 |future
|tip It walks around this area.
]]
},
{
rare=[[Urduu]],
level=120,
spot="Nazjatar/0 31.30,29.37",
quest=56584,
item=170184,
currency="AZ",
steps=[[
step
kill Staghorn Reefwalker##152563 |goto Nazjatar/0 36.32,37.40 < 30 |walk
Kite the Staghorn Reefwalker to Urduu
|tip Go slow, making sure to hit it and let it hit you often to prevent it from resetting.
When it casts "Sedimentary Breath" let it hit Urduu
|tip Once Urduu has been hit with "Sedimentary Breath", kill the Staghorn Reefwalker to awaken him.
kill Urduu##152568 |goto 31.30,29.37 |c |q 56584 |future
]]
},
{
rare=[[Voice in the Deeps]],
level=120,
spot="Nazjatar/0 67.30,34.57",
quest=56583,
currency="AZ",
steps=[[
step
click Molted Shell##325790
collect Molted Shell##168161 |goto Nazjatar/0 68.18,37.37
step
use Molted Shell##168161
|tip Use it to remove the pile of rocks inside the building.
kill Voice in the Deeps##151719 |goto 67.30,34.57 |c |q 56583 |future
]]
},
{
rare=[[Tidelord Dispersius]],
level=120,
spot="Nazjatar/0 57.97,26.49",
quest=56123,
currency="AZ",
steps=[[
step
kill Azsh'ari Invoker##145326+
|tip Kill the three Azsh'ari Invokers channeling in the pool of water.
|tip After killing them Tidelord Dispersius has a low chance to spawn.
|tip If he doesn't spawn you'll have to wait about 7 minutes for the Azsh'ari Invokers to respawn and try again.
kill Tidelord Dispersius##153928 |goto Nazjatar/0 57.97,26.49 |c |q 56123 |future
]]
},
{
rare=[[Kelpwillow]],
level=120,
spot="Nazjatar/0 50.08,69.67",
quest=56287,
item=170184,
currency="AZ",
steps=[[
step
click Prismatic Crystal##330194
|tip They look like small purple crystals near waterfalls around Nazjatar.
collect Prismatic Crystal##167893 |goto Nazjatar/0 44.68,73.01 |complete itemcount(167893) >= 1 or completedq(56287)
step
clicknpc Muck Slug##154725 |goto 44.24,65.73
|tip It looks like a tiny green slug critter that walks around this area.
use Prismatic Crystal##167893
Get a Muck Slug to Follow You
confirm |q 56287 |future
step
Lead the Muck Slug to Kelpwillow
|tip Do not mount or you may lose the Muck Slug.
|tip Bringing the Muck Slug to Kelpwillow will awaken him.
kill Kelpwillow##152567 |goto 50.08,69.67 |c |q 56287 |future
]]
},
{
rare=[[Anemonar]],
level=120,
spot="Nazjatar/0 58.62,53.30",
quest=56281,
item=170184,
currency="AZ",
steps=[[
step
kill Colossal Sky Ray##150467 |goto Nazjatar/0 45.91,58.61 < 30 |walk
|tip It looks like a large ray that flies around to the north of this location.
|tip Stand at this location and wait for it to fly by.
|tip Once it is close by, fly up to it and pull it with a ranged attack, then use a Goblin Glider Kit to glide back to the rock cliff before it resets.
|tip Kite the Clossal Sky Ray to Anemonar.
|tip Go slow, making sure to hit it and let it hit you often to prevent it from resetting.
|tip Try to position the Colossal Sky Ray right in front of or on top of Anemonar, then kill it to awaken him.
|tip You may need help with this.
kill Anemonar##152566 |goto 58.62,53.30 |c |q 56281 |future
]]
},
{
rare=[[Vor'koth]],
level=120,
spot="Nazjatar/0 48.05,24.26",
quest=56886,
item=169376,
currency="AZ",
steps=[[
step
Kill enemies and loot Arcane Chests throughout Nazjatar
collect Chum##167059 |goto Nazjatar/0 50.00,44.72 |complete itemcount(167059) >= 1 or completedq(56886)
step
use Chum##167059
|tip Use it in the Eel Infested Waters.
|tip It looks like a swirling green pool of water.
kill Skittering Eel##150463+
|tip Interrupt their "Electrify" ability.
collect Chum##167060 |n
use Chum##167060
|tip Continue using the Chum in the Eel Infested Waters, eventually Vor'koth will spawn.
|tip Use them slowly and kill the Skittering Eels one at a time so you don't get overwhelmed.
kill Vor'koth##150468 |goto 48.05,24.26 |c |q 56886 |future
]]
},
{
rare=[[Banescale the Packfather]],
level=120,
spot="Nazjatar/0 73.85,53.93",
quest=56282,
item=170179,
steps=[[
step
kill Banescale the Packfather##152361 |goto Nazjatar/0 73.85,53.93 |c |q 56297 |future
|tip It has a very small chance to spawn immediately after killing Siltstalker the Packmother.
|tip Siltstalker the Packmother is 100 yards to the east.
|tip Kill her as often as possible to increase your chance of spawning Banescale.
]]
},
{
rare=[[Boilburn]],
level=120,
spot="Mechagon Island/0 51.19,50.29",
quest=55857,
item=167042,
steps=[[
step
Complete the Drill Rig DR-JD41 project
|tip The rig will only spawn on days when these construction projects are available.
|tip To start the rig, you will need 500 Spare Parts and 2 Energy Cells.
|tip The broadcast text "Drill Rig DR-JD41 has been activated!" will appear one minute before Boilburn is revealed.
kill Boilburn##153200 |goto Mechagon Island/0 50.41,51.51 |c |q 55857 |future
|tip Inside the cave.
]]
},
{
rare=[[Earthbreaker Gulroc]],
level=120,
spot="Mechagon Island/0 63.27,25.39",
quest=55814,
item=167042,
steps=[[
step
Complete the Drill Rig DR-TR35 project
|tip The rig will only spawn on days when these construction projects are available.
|tip To start the rig, you will need 500 Spare Parts and 2 Energy Cells.
|tip The broadcast text "Drill Rig DR-TR35 has been activated!" will appear one minute before Earthbreaker Gulroc is revealed.
kill Earthbreaker Gulroc##150342 |goto Mechagon Island/0 64.15,24.23 |c |q 55814 |future
|tip Inside the cave.
]]
},
{
rare=[[Deepwater Maw]],
level=120,
spot="Mechagon Island/0 34.78,43.36",
quest=55514,
item=167836,
steps=[[
step
click Hundred-Fathom Lure |goto Mechagon Island/0 35.26,42.90
|tip You will need a Hundred-Fathom Lure to summon this rare.
|tip These can be crafted with the schematic at Pascal-K1N6 in Rustbolt for 1 S.P.A.R.E. Crate and 200 Ionized Minnows.
|tip The final portion of the "Mechagon Island" leveling guide details this questline.
|tip You can also wait for someone else to summon it.
kill Deepwater Maw##151569 |goto Mechagon Island/0 34.78,43.36 |c |q 55514 |future
]]
},
{
rare=[[Gorged Gear-Cruncher]],
level=120,
spot="Mechagon Island/0 73.00,54.47",
quest=56367,
item=167846,
steps=[[
step
Complete the Drill Rig DR-CC61 project
|tip The rig will only spawn on days when these construction projects are available.
|tip To start the rig, you will need 500 Spare Parts and 2 Energy Cells.
|tip The broadcast text "Drill Rig DR-CC61 has been activated!" will appear one minute before Gorged Gear-Cruncher is revealed.
kill Gorged Gear-Cruncher##154701 |goto Mechagon Island/0 73.01,54.17 |c |q 56367 |future
|tip Inside the cave.
]]
},
{
rare=[[Gear Checker Cogstar]],
level=120,
spot="Mechagon Island/0 59.80,52.70",
quest=55852,
item=167847,
steps=[[
step
kill Gear Checker Cogstar##153228 |goto Mechagon Island/0 59.80,52.70 |c |q 55852 |future
|tip Cogstar will only spawn when a specific number of Upgraded Sentries die.
|tip He can spawn anywhere on the island with these sentries.
|tip When he spawns, Cogstar will yell "Distress message received! Gear Checker Cogstar reinforcing target area."
Upgraded Sentries can be found here [59.62,55.68]
And here [47.22,40.19]
And here [22.07,76.55]
]]
},
{
rare=[[Foul Manifestation]],
level=120,
spot="Mechagon Island/0 65.62,51.64",
quest=55513,
item=167871,
steps=[[
step
Complete the circuit
|tip Check for an active circuit breaker.
|tip If they are active, you must activate it and drag the wires to nearby pylons.
|tip Match the wires with the appropriate pylons.
|tip When the Alpha, Beta, and Delta pylons are activated, the rare will spawn in a few seconds.
kill Foul Manifestation##151202 |goto Mechagon Island/0 65.62,51.64 |c |q 55513 |future
The Circuit Breaker is here [67.33,55.53]
]]
},
{
rare=[[Killsaw]],
level=120,
spot="Mechagon Island/0 45.28,38.97",
quest=55369,
item=167931,
steps=[[
step
kill Sawblade Clearcutter##151871+
|tip Killsaw will spawn when a specific number of Clearcutters have been killed.
|tip Keep killing them and look for the yellow star icon on your minimap.
|tip He can spawn all over The Fleeting Forest.
kill Killsaw##152007 |goto Mechagon Island/0 45.28,38.97 |c |q 55369 |future
]]
},
{
rare=[[Rumblerocks]],
level=120,
spot="Mechagon Island/0 40.26,53.13",
quest=55368,
item=168001,
steps=[[
step
Enter the cave |goto Mechagon Island/0 38.31,53.35 < 20 |walk
kill Rumblerocks##150575 |goto 40.26,53.13 |c |q 55368 |future
|tip Inside the cave.
]]
},
{
rare=[[Steel Singer Freza]],
level=120,
spot="Mechagon Island/0 25.45,77.38",
quest=55854,
item=168062,
steps=[[
step
kill Steel Singer Freza##153226 |goto Mechagon Island/0 25.45,77.38 |c |q 55854 |future
|tip Freza respawns in 30-60 minutes.
]]
},
{
rare=[[Seaspit]],
level=120,
spot="Mechagon Island/0 19.45,79.90",
quest=55545,
item=168063,
steps=[[
step
kill Seaspit##150937 |goto Mechagon Island/0 19.45,79.90 |c |q 55545 |future
|tip Seaspit respawns in 20-60 minutes.
]]
},
{
rare=[[Mr. Fixthis]],
level=120,
spot="Mechagon Island/0 61.03,61.48",
quest=55859,
item=168248,
steps=[[
step
kill Mr. Fixthis##151627 |goto Mechagon Island/0 61.03,61.48 |c |q 55859 |future
|tip On top of the tower.
]]
},
{
rare=[[Rustfeather]],
level=120,
spot="Mechagon Island/0 65.84,79.14",
quest=55811,
item=168370,
steps=[[
step
kill Rustfeather##152182 |goto Mechagon Island/0 65.84,79.14 |c |q 55811 |future
|tip Rustfeather respawns in 30-60 minutes.
]]
},
{
rare=[[The Scrap King]],
level=120,
spot="Mechagon Island/0 72.35,49.92",
quest=55364,
item=168435,
steps=[[
step
kill The Scrap King##151623 |goto Mechagon Island/0 72.35,49.92 |c |q 55364 |future
|tip He walks around on top of the hill.
]]
},
{
rare=[[Mechagonian Nullifier]],
level=120,
spot="Mechagon Island/0 56.94,52.07",
quest=55207,
item=168490,
steps=[[
step
click Hackable Nullifier Relay
|tip You will need a DNT-Smashed Transport Relay to hack this.
|tip This rarely drops from mobs that spawn during the Boilburn and Gemicide drill rig events.
|tip You can also obtain a Remote Circuit Bypasser from The Scrap King and socket it into your Mechagon trinket.
kill Mechagonian Nullifier##151124 |goto Mechagon Island/0 56.94,52.07 |c |q 55207 |future
]]
},
{
rare=[[Scrapclaw]],
level=120,
spot="Mechagon Island/0 82.30,77.76",
quest=56737,
item=168490,
steps=[[
step
kill Scrapclaw##155583 |goto Mechagon Island/0 82.30,77.76 |c |q 56737 |future
|tip Underwater.
]]
},
{
rare=[[Arachnoid Harvester]],
level=120,
spot="Mechagon Island/0 52.89,40.57",
quest=55512,
item=168823,
steps=[[
step
kill Arachnoid Harvester##151934 |goto Mechagon Island/0 52.89,40.57 |c |q 55512 |future
|tip This rare usually respawns in an hour or longer.
]]
},
{
rare=[[Crazed Trogg]],
level=120,
spot="Mechagon Island/0 82.45,20.94",
quest=55812,
item=169167,
steps=[[
step
kill Crazed Trogg##152570 |goto Mechagon Island/0 82.45,20.94 |c |q 55812 |future
|tip Wait for the Crazed Trogg to call out a color.
|tip Whichever color he doesn't like is the color you need to cover yourself with.
|tip Go to Bondo's Yard and get painted with the appropriate color.
|tip When you go near him while painted with the color he doesn't like, he will attack.
Get the paint here [63.39,41.68]
]]
},
{
rare=[[Fungarian Furor]],
level=120,
spot="Mechagon Island/0 44.78,39.37",
quest=55367,
item=169379,
steps=[[
step
click Mushroom##135497+
|tip These are only clickable when the "Aid from Nordrassil" daily quest is available in Rusbolt from Mylune.
|tip They look like small white mushrooms on the ground all over The Fleeting Forest.
|tip If you have item IDs on tooltips, the mushroom with the ID 135497 will spawn the rare.
|tip If not, keep clicking mushrooms around the area until it spawns.
kill Fungarian Furor##151884 |goto Mechagon Island/0 44.78,39.37 |c |q 55367 |future
]]
},
{
rare=[[Malfunctioning Beastbot]],
level=120,
spot="Mechagon Island/0 60.68,42.12",
quest=55544,
item=169382,
steps=[[
step
clicknpc Malfunctioning Beastbot##151933
|tip To power up the Beastbot, you will need a Beastbot Powerpack.
|tip The schematic is located in front of the Beastbot.
|tip Craft a Powerpack at Pascal-K1N6 in Rustbolt.
|tip It requires 1 S.P.A.R.E. Crate and 1 Energy Cell.
kill Malfunctioning Beastbot##151933 |goto Mechagon Island/0 60.68,42.12 |c |q 55544 |future
]]
},
{
rare=[[Bonepicker]],
level=120,
spot="Mechagon Island/0 65.74,22.82",
quest=55537,
item=169392,
steps=[[
step
Enter the cave |goto Mechagon Island/0 65.90,26.56 < 20 |walk
kill Bonepicker##152001 |goto 65.74,22.82 |c |q 55537 |future
|tip Inside the cave.
]]
},
{
rare=[[Mecharantula]],
level=120,
spot="Mechagon Island/0 88.15,20.56",
quest=55386,
item=169393,
steps=[[
step
kill Mecharantula##151672 |goto Mechagon Island/0 88.15,20.56 |c |q 55386 |future
]]
},
{
rare=[[Ol' Big Tusk]],
level=120,
spot="Mechagon Island/0 56.19,36.41",
quest=55853,
item=169691,
steps=[[
step
Complete the Drill Rig DR-TR28 project
|tip The rig will only spawn on days when these construction projects are available.
|tip To start the rig, you will need 500 Spare Parts and 2 Energy Cells.
|tip The broadcast text "Drill Rig DR-TR28 has been activated!" will appear one minute before Ol' Big Tusk is revealed.
kill Ol' Big Tusk##153206 |goto Mechagon Island/0 55.54,39.53 |c |q 55853 |future
|tip Inside the cave.
]]
},
{
rare=[[The Kleptoboss]],
level=120,
spot="Mechagon Island/0 68.33,48.30",
quest=55858,
item=169886,
steps=[[
step
Complete the Drill Rig DR-CC88 project
|tip The rig will only spawn on days when these construction projects are available.
|tip To start the rig, you will need 500 Spare Parts and 2 Energy Cells.
|tip The broadcast text "Drill Rig DR-CC88 has been activated!" will appear one minute before The Kleptoboss is revealed.
kill The Kleptoboss##152113 |goto Mechagon Island/0 68.40,48.20 |c |q 55858 |future
|tip Inside the cave.
]]
},
{
rare=[[Armored Vaultbot]],
level=120,
spot="Mechagon Island/0 53.93,49.38",
quest=55546,
item=170072,
steps=[[
step
kill Armored Vaultbot##150394 |goto Mechagon Island/0 53.93,49.38 |c |q 55546 |future
|tip It patrols around the road in the area.
|tip The Vaultbot reduces most damage against it.
|tip To kill the Vaultbot, you have to kite it to the electromagnetic pylon in Bondo's Yard.
|tip If you have killed him before and gotten the Vaultbot Key schematic, you can unlock it without kiting.
|tip The Vaultbot Key can be crafted at Pascal-K1N6 in Rustbolt for 2 S.P.A.R.E. Crates.
Kite the Armored Vaultbot here [63.27,38.87]
]]
},
{
rare=[[Enforcer KX-T57]],
level=120,
spot="Mechagon Island/0 52.49,62.92",
quest=56207,
item=170467,
steps=[[
step
kill Enforcer KX-T57##154153 |goto Mechagon Island/0 52.49,62.92 |c |q 56207 |future
]]
},
{
rare=[[Boggac Skullbash]],
level=120,
spot="Mechagon Island/0 53.80,31.20",
quest=55539,
steps=[[
step
kill Boggac Skullbash##151308 |goto Mechagon Island/0 53.80,31.20 |c |q 55539 |future
|tip He stands on the hill.
|tip When he spawns, he will yell "YOU NO KILL BOGGAC FRIENDS!"
]]
},
{
rare=[[Caustic Mechaslime]],
level=120,
spot="Mechagon Island/0 66.60,58.78",
quest=56368,
steps=[[
step
Complete the Drill Rig DR-CC73 project
|tip The rig will only spawn on days when these construction projects are available.
|tip To start the rig, you will need 500 Spare Parts and 2 Energy Cells.
|tip The broadcast text "Drill Rig DR-CC73 has been activated!" will appear one minute before Caustic Mechaslime is revealed.
kill Caustic Mechaslime##154739 |goto Mechagon Island/0 65.80,58.40 |c |q 56368 |future
|tip Inside the cave.
]]
},
{
rare=[[Gemicide]],
level=120,
spot="Mechagon Island/0 59.64,67.29",
quest=55855,
steps=[[
step
Complete the Drill Rig DR-JD99 project
|tip The rig will only spawn on days when these construction projects are available.
|tip To start the rig, you will need 500 Spare Parts and 2 Energy Cells.
|tip The broadcast text "Drill Rig DR-JD99 has been activated!" will appear one minute before Gemicide is revealed.
kill Gemicide##153205 |goto Mechagon Island/0 57.37,69.53 |c |q 55855 |future
|tip Inside the cave.
]]
},
{
rare=[[Jawbreaker]],
level=120,
spot="Mechagon Island/0 77.24,44.74",
quest=55399,
steps=[[
step
kill Jawbreaker##151684 |goto Mechagon Island/0 77.24,44.74 |c |q 55399 |future
|tip On top of the hill.
]]
},
{
rare=[[Paol Pondwader]],
level=120,
spot="Mechagon Island/0 22.57,68.95",
quest=55405,
steps=[[
step
kill Paol Pondwader##151702 |goto Mechagon Island/0 22.57,68.95 |c |q 55405 |future
|tip It spawns next to the water and walks around the shore.
]]
},
{
rare=[[The Rusty Prince]],
level=120,
spot="Mechagon Island/0 57.27,58.43",
quest=56182,
steps=[[
step
use the Personal Time Displacer##169114
|tip These can be crafted at Pascal-K1N6.
|tip They cost 2 S.P.A.R.E. Crates, 2 Energy Cells, and 1 Chain Ignitercoil for 3 Displacers.
|tip The Blueprint for this drops from mobs in the Alternate Timeline.
|tip The Rusty Prince only spawns in the alternate timeline on days that Chromie is not available in Rustbolt.
Enter the Alternate Timeline |havebuff spell:296644 |goto Mechagon Island/0 71.41,32.36
step
kill The Rusty Prince##154225 |goto 57.27,58.43 |c |q 56182 |future
]]
},
{
rare=[[Uncle T'Rog]],
level=120,
spot="Mechagon Island/0 57.95,22.19",
quest=55538,
steps=[[
step
Enter the cave |goto Mechagon Island/0 58.81,24.13 < 20 |walk
kill Uncle T'Rog##151940 |goto Mechagon Island/0 57.95,22.19 |c |q 55538 |future
|tip Inside the cave.
]]
},
{
rare=[[Oxidized Leachbeast]],
level=120,
spot="Mechagon Island/0 57.16,62.58",
quest=55856,
item=170273,
steps=[[
step
click Weather Alteration Machine
|tip You will need an Exothermic Evaporator Coil to activate the machine.
|tip The Coil is dropped by Mr. Fixthis, who spawns next to the coil.
|tip After activating the Coil, kill Oxidized Oozes in Junkwatt Depot until the Leachbeast spawns.
|tip It may take hundreds of kills to spawn it.
kill Oxidized Leachbeast##152764 |goto Mechagon Island/0 57.16,62.58 |c |q 55856 |future
]]
},
{
rare=[[OOX-Avenger/MG]],
level=120,
spot="Mechagon Island/0 56.77,39.89",
quest=55515,
item=168327,
steps=[[
step
Confirm that Oglethorpe Obnoticus is in town
|tip This rare will only spawn when he is in town for the day.
Click Here When He Is |confirm |goto Mechagon Island/0 72.79,37.98
step
kill OOX-Fleetfoot/MG##151159
|tip This is a small mechanical chicken that runs all over the main island.
|tip You will need to search for and kill it.
|tip It will keep running, so keep it snared.
|tip An Anti-Gravity pack is best for this.
Click Here When the Alarm Sounds |confirm |goto 64.21,47.12
|tip OOX will yell "KRAAKAAWW!!"
step
kill OOX-Avenger/MG##151296 |goto 56.77,39.89 |c |q 55515 |future
]]
},
{
rare=[[The Doppel Gang]],
level=120,
spot="Mechagon Island/0 80.97,20.20",
quest=56419,
item=168327,
steps=[[
step
click Strained Exhaust Pipe
|tip They look like thin faintly smoking pipes around the gear.
|tip You will need 3 Pressure Relief Valves to summon this rare.
|tip You get one of these each time you complete the "Cogfrenzy's Construction Frenzy" daily quest.
|tip This rare can only be summoned on days that this daily quest is available.
|tip You can provide all 3 yourself, or group with others and combine your materials.
|tip You can also camp the spawn point and wait for others to summon this rare.
|tip Click the "Big Red Button" to start the encounter after the dialogue.
|tip A dozen or so adds will spawn and must be killed to defeat the gang.
Defeat The Doppel Gang |goto Mechagon Island/0 80.97,20.20 |c |q 56419 |future
]]
},
{
rare=[[Sparkqueen P'Emp]],
level=120,
spot="Mechagon Island/0 83.67,21.85",
quest=55810,
item=168327,
steps=[[
step
kill Sparkqueen P'Emp##153000 |goto Mechagon Island/0 83.67,21.85 |c |q 55810 |future
|tip This rare will only spawn when the daily quest "Bugs, Lots of 'Em!" is active.
|tip It will walk slowly towards Rustbolt.
|tip Kill the Sparkqueen before it reaches Razak Ironsides in Rustbolt.
]]
},
{
rare=[[R'krox the Runt]],
level=120,
spot="Uldum New/0 30.65,9.79",
quest=58864,
currency="AZ",
condition=[[only if ZGV.InPhase("UldumInvasionLeft")]],
steps=[[
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 58864 |future
step
kill R'krox the Runt##162173 |goto Uldum New/0 30.65,9.79 |c |q 58864 |future
|tip It walks up and down the beach.
]]
},
{
rare=[[Aqir Flayer]],
level=120,
spot="Uldum New/0 45.51,54.60",
quest=58612,
currency="AZ",
condition=[[only if ZGV.InPhase("UldumInvasionLeft")]],
steps=[[
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 58612 |future
step
kill Aqir Flayer##154578 |goto Uldum New/0 45.51,54.60 |c |q 58612 |future
]]
},
{
rare=[[Skikx'traz]],
level=120,
spot="Uldum New/0 20.12,62.97",
quest=58697,
currency="AZ",
condition=[[only if ZGV.InPhase("UldumInvasionLeft")]],
steps=[[
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 58697 |future
step
kill Skikx'traz##162140 |goto Uldum New/0 20.12,62.97 |c |q 58697 |future
|tip It flies in the air around this area.
]]
},
{
rare=[[Magus Rehleth]],
level=120,
spot="Uldum New/0 33.30,66.32",
quest=56952,
currency="AZ",
condition=[[only if ZGV.InPhase("UldumInvasionLeft")]],
steps=[[
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 56952 |future
step
kill Magus Rehleth##156078 |goto Uldum New/0 33.30,66.32 |c |q 56952 |future
|tip It walks around this area.
]]
},
{
rare=[[Qho]],
level=120,
spot="Uldum New/0 37.81,60.40",
quest=58693,
currency="AZ",
condition=[[only if ZGV.InPhase("UldumInvasionLeft")]],
steps=[[
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 58693 |future
step
kill Qho##162142 |goto Uldum New/0 37.81,60.40 |c |q 58693 |future
|tip It walks around this area.
]]
},
{
rare=[[Captain Dunewalker]],
level=120,
spot="Uldum New/0 45.60,57.77",
quest=58699,
currency="AZ",
condition=[[only if ZGV.InPhase("UldumInvasionLeft")]],
steps=[[
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 58699 |future
step
Enter the cave |goto Uldum New/0 44.61,54.72 < 30 |walk
kill Captain Dunewalker##162171 |goto 45.60,57.77 |c |q 58699 |future
|tip Inside the cave.
]]
},
{
rare=[[High Priest Ytaessis]],
level=120,
spot="Uldum New/0 45.55,56.13",
quest=58701,
currency="AZ",
condition=[[only if ZGV.InPhase("UldumInvasionLeft")]],
steps=[[
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 58701 |future
step
kill High Priest Ytaessis##162163 |goto Uldum New/0 45.55,56.13 |c |q 58701 |future
|tip It walks around this area.
]]
},
{
rare=[[Warcaster Xeshro]],
level=120,
spot="Uldum New/0 33.58,25.70",
quest=58702,
currency="AZ",
condition=[[only if ZGV.InPhase("UldumInvasionLeft")]],
steps=[[
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 58702 |future
step
kill Warcaster Xeshro##162170 |goto Uldum New/0 33.58,25.70 |c |q 58702 |future
]]
},
{
rare=[[Aqir Titanus]],
level=120,
spot="Uldum New/0 47.18,58.44",
quest=58614,
currency="AZ",
condition=[[only if ZGV.InPhase("UldumInvasionLeft")]],
steps=[[
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 58614 |future
step
kill Aqir Titanus##154576 |goto Uldum New/0 47.18,58.44 |c |q 58614 |future
|tip It walks over a large area.
|tip You may have to search for a while.
]]
},
{
rare=[[Anq'uri the Titanic]],
level=120,
spot="Uldum New/0 32.42,64.48",
quest=58659,
currency="AZ",
condition=[[only if ZGV.InPhase("UldumInvasionLeft")]],
steps=[[
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 58659 |future
step
kill Anq'uri the Titanic##155703 |goto Uldum New/0 32.42,64.48 |c |q 58659 |future
]]
},
{
rare=[[Aqir Warcaster]],
level=120,
spot="Uldum New/0 34.98,18.18",
quest=58694,
currency="AZ",
condition=[[only if ZGV.InPhase("UldumInvasionLeft")]],
steps=[[
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 58694 |future
step
Enter the building |goto Uldum New/0 36.82,20.84 < 20 |walk
kill Aqir Warcaster##162172 |goto 34.98,18.18 |c |q 58694 |future
|tip Inside the building.
]]
},
{
rare=[[Lord Aj'qirai]],
level=120,
spot="Uldum New/0 34.71,18.92",
quest=56340,
item=174475,
currency="AZ",
condition=[[only if ZGV.InPhase("UldumInvasionLeft")]],
steps=[[
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 56340 |future
step
Enter the building |goto Uldum New/0 36.69,20.73 < 20 |walk
Fly down |goto 33.54,17.90 < 20 |walk
kill Lord Aj'qirai##154604 |goto Uldum New/0 34.71,18.92 |c |q 56340 |future
]]
},
{
rare=[[The Grand Executor]],
level=120,
spot="Uldum New/0 49.32,82.35",
quest=57688,
currency="AZ",
condition=[[only if ZGV.InPhase("UldumInvasionCenter")]],
steps=[[
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 57688 |future
step
kill The Grand Executor##158636 |goto Uldum New/0 49.32,82.35 |c |q 57688 |future
|tip Up on the floating platform.
]]
},
{
rare=[[Falconer Amenophis]],
level=120,
spot="Uldum New/0 52.63,68.50",
quest=57662,
currency="AZ",
condition=[[only if ZGV.InPhase("UldumInvasionCenter")]],
steps=[[
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 57662 |future
step
kill Falconer Amenophis##158491 |goto Uldum New/0 52.63,68.50 |c |q 57662 |future
|tip It walks all around the area.
]]
},
{
rare=[[Korzaran the Slaughterer]],
level=120,
spot="Uldum New/0 71.24,73.73",
quest=57433,
currency="AZ",
condition=[[only if ZGV.InPhase("UldumInvasionCenter")]],
steps=[[
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 57433 |future
step
kill Korzaran the Slaughterer##156655 |goto Uldum New/0 71.24,73.73 |c |q 57433 |future
]]
},
{
rare=[[Shadowmaw]],
level=120,
spot="Uldum New/0 52.44,37.90",
quest=58333,
currency="AZ",
condition=[[only if ZGV.InPhase("UldumInvasionCenter")]],
steps=[[
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 58333 |future
step
kill Shadowmaw##161033 |goto Uldum New/0 52.44,37.90 |c |q 58333 |future
|tip It swims around under the water.
]]
},
{
rare=[[Doomsayer Vathiris]],
level=120,
spot="Uldum New/0 49.36,38.22",
quest=57672,
currency="AZ",
condition=[[only if ZGV.InPhase("UldumInvasionCenter")]],
steps=[[
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 57672 |future
step
kill Doomsayer Vathiris##158594 |goto Uldum New/0 49.36,38.22 |c |q 57672 |future
]]
},
{
rare=[[High Executor Yothrim]],
level=120,
spot="Uldum New/0 54.69,43.17",
quest=57675,
currency="AZ",
condition=[[only if ZGV.InPhase("UldumInvasionCenter")]],
steps=[[
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 57675 |future
step
kill High Executor Yothrim##158597 |goto Uldum New/0 54.69,43.17 |c |q 57675 |future
]]
},
{
rare=[[Shol'thoss the Doomspeaker]],
level=120,
spot="Uldum New/0 58.55,82.82",
quest=57432,
currency="AZ",
condition=[[only if ZGV.InPhase("UldumInvasionCenter")]],
steps=[[
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 57432 |future
step
kill Shol'thoss the Doomspeaker##156654 |goto Uldum New/0 58.55,82.82 |c |q 57432 |future
]]
},
{
rare=[[Shoth the Darkened]],
level=120,
spot="Uldum New/0 61.29,74.86",
quest=58169,
currency="AZ",
condition=[[only if ZGV.InPhase("UldumInvasionCenter")]],
steps=[[
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 58169 |future
step
kill Shoth the Darkened##160532 |goto Uldum New/0 61.29,74.86 |c |q 58169 |future
]]
},
{
rare=[[R'khuzj the Unfathomable]],
level=120,
spot="Uldum New/0 56.10,52.22",
quest=57430,
currency="AZ",
condition=[[only if ZGV.InPhase("UldumInvasionCenter")]],
steps=[[
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 57430 |future
step
kill R'khuzj the Unfathomable##156299 |goto Uldum New/0 56.10,52.22 |c |q 57430 |future
|tip It walks around this area.
]]
},
{
rare=[[Actiss the Deceiver]],
level=120,
spot="Uldum New/0 66.79,74.32",
quest=58448,
currency="AZ",
condition=[[only if ZGV.InPhase("UldumInvasionCenter")]],
steps=[[
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 58448 |future
step
Enter the building |goto Uldum New/0 66.52,73.89 < 15 |walk
kill Actiss the Deceiver##158557 |goto 66.79,74.32 |c |q 58448 |future
|tip Inside the building.
]]
},
{
rare=[[Gaze of N'Zoth]],
level=120,
spot="Uldum New/0 55.00,51.08",
quest=57680,
currency="AZ",
condition=[[only if ZGV.InPhase("UldumInvasionRight")]],
steps=[[
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 57680 |future
step
kill Gaze of N'Zoth##158633 |goto Uldum New/0 55.00,51.08 |c |q 57680 |future
]]
},
{
rare=[[Atekhramun]],
level=120,
spot="Uldum New/0 65.04,51.22",
quest=55710,
currency="AZ",
condition=[[only if ZGV.InPhase("UldumInvasionRight")]],
steps=[[
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 55710 |future
step
kill Atekhramun##152757 |goto Uldum New/0 65.04,51.22 |c |q 55710 |future
|tip Run over the scorpions until it spawns.
]]
},
{
rare=[[Sun King Nahkotep]],
level=120,
spot="Uldum New/0 79.01,63.90",
quest=58613,
currency="AZ",
condition=[[only if ZGV.InPhase("UldumInvasionRight")]],
steps=[[
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 58613 |future
step
kill Sun King Nahkotep##151878 |goto Uldum New/0 79.01,63.90 |c |q 58613 |future
|tip This is a boss elite and will require a group to kill.
]]
},
{
rare=[[Hungering Miasma]],
level=120,
spot="Uldum New/0 60.03,39.51",
quest=58206,
currency="AZ",
condition=[[only if ZGV.InPhase("UldumInvasionRight")]],
steps=[[
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 58206 |future
step
kill Hungering Miasma##160623 |goto Uldum New/0 60.03,39.51 |c |q 58206 |future
|tip Lure nearbye oozes to it to feed it.
|tip After it consumes several oozes, it will be freed.
]]
},
{
rare=[[The Tomb Widow]],
level=120,
spot="Uldum New/0 84.32,47.03",
quest=57285,
currency="AZ",
condition=[[only if ZGV.InPhase("UldumInvasionRight")]],
steps=[[
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 57285 |future
step
kill The Tomb Widow##157188 |goto Uldum New/0 84.32,47.03 |c |q 57285 |future
]]
},
{
rare=[[Thoughtstealer Vos]],
level=120,
spot="Uldum New/0 65.52,66.87",
quest=57673,
currency="AZ",
condition=[[only if ZGV.InPhase("UldumInvasionRight")]],
steps=[[
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 57673 |future
step
kill Thoughtstealer Vos##158595 |goto Uldum New/0 65.52,66.87 |c |q 57673 |future
|tip It walks around this area.
]]
},
{
rare=[[Scoutmaster Moswen]],
level=120,
spot="Uldum New/0 69.71,42.17",
quest=55518,
currency="AZ",
condition=[[only if ZGV.InPhase("UldumInvasionRight")]],
steps=[[
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 55518 |future
step
kill Scoutmaster Moswen##152040 |goto Uldum New/0 69.71,42.17 |c |q 55518 |future
]]
},
{
rare=[[Hik-ten the Taskmaster]],
level=120,
spot="Uldum New/0 80.25,46.33",
quest=55502,
currency="AZ",
condition=[[only if ZGV.InPhase("UldumInvasionRight")]],
steps=[[
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 55502 |future
step
kill Hik-ten the Taskmaster##151995 |goto Uldum New/0 80.25,46.33 |c |q 55502 |future
|tip He walks up and down the ravine.
]]
},
{
rare=[[Watcher Rehu]],
level=120,
spot="Uldum New/0 81.24,52.22",
quest=55461,
currency="AZ",
condition=[[only if ZGV.InPhase("UldumInvasionRight")]],
steps=[[
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 55461 |future
step
kill Watcher Rehu##151852 |goto Uldum New/0 81.24,52.22 |c |q 55461 |future
]]
},
{
rare=[[Acolyte Taspu]],
level=120,
spot="Uldum New/0 64.51,25.64",
quest=57281,
currency="AZ",
condition=[[only if ZGV.InPhase("UldumInvasionRight")]],
steps=[[
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 57281 |future
step
kill Acolyte Taspu##157170 |goto Uldum New/0 64.51,25.64 |c |q 57281 |future
|tip Underground inside the Chamber of the Stars.
]]
},
{
rare=[[Nebet the Ascended]],
level=120,
spot="Uldum New/0 61.99,24.64",
quest=55684,
currency="AZ",
condition=[[only if ZGV.InPhase("UldumInvasionRight")]],
steps=[[
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 55684 |future
step
kill Nebet the Ascended##152677 |goto Uldum New/0 61.99,24.64 |c |q 55684 |future
]]
},
{
rare=[[Tat the Bonechewer]],
level=120,
spot="Uldum New/0 66.66,36.70",
quest=55682,
currency="AZ",
condition=[[only if ZGV.InPhase("UldumInvasionRight")]],
steps=[[
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 55682 |future
step
kill Tat the Bonechewer##152657 |goto Uldum New/0 66.66,36.70 |c |q 55682 |future
|tip It runs all over the dunes around this area.
]]
},
{
rare=[[Muminah the Incandescent]],
level=120,
spot="Uldum New/0 66.86,20.34",
quest=57277,
currency="AZ",
condition=[[only if ZGV.InPhase("UldumInvasionRight")]],
steps=[[
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 57277 |future
step
kill Muminah the Incandescent##157157 |goto Uldum New/0 66.86,20.34 |c |q 57277 |future
]]
},
{
rare=[[Sun Priestess Nubitt]],
level=120,
spot="Uldum New/0 84.79,57.04",
quest=55479,
currency="AZ",
condition=[[only if ZGV.InPhase("UldumInvasionRight")]],
steps=[[
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 55479 |future
step
kill Sun Priestess Nubitt##151897 |goto Uldum New/0 84.79,57.04 |c |q 55479 |future
]]
},
{
rare=[[Zealot Tekem]],
level=120,
spot="Uldum New/0 80.15,57.08",
quest=57279,
currency="AZ",
condition=[[only if ZGV.InPhase("UldumInvasionRight")]],
steps=[[
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 57279 |future
step
kill Zealot Tekem##157164 |goto Uldum New/0 80.15,57.08 |c |q 57279 |future
]]
},
{
rare=[[Senbu the Pridefather]],
level=120,
spot="Uldum New/0 73.53,64.58",
quest=55496,
currency="AZ",
condition=[[only if ZGV.InPhase("UldumInvasionRight")]],
steps=[[
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 55496 |future
step
kill Senbu the Pridefather##151948 |goto Uldum New/0 73.53,64.58 |c |q 55496 |future
]]
},
{
rare=[[Fangtaker Orsa]],
level=120,
spot="Uldum New/0 75.05,68.17",
quest=57258,
currency="AZ",
condition=[[only if ZGV.InPhase("UldumInvasionRight")]],
steps=[[
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 57258 |future
step
kill Fangtaker Orsa##157120 |goto Uldum New/0 75.05,68.17 |c |q 57258 |future
]]
},
{
rare=[[Champion Sen-mat]],
level=120,
spot="Uldum New/0 75.41,52.23",
quest=57280,
currency="AZ",
condition=[[only if ZGV.InPhase("UldumInvasionRight")]],
steps=[[
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 57280 |future
step
kill Champion Sen-mat##157167 |goto Uldum New/0 75.41,52.23 |c |q 57280 |future
]]
},
{
rare=[[Anaua]],
level=120,
spot="Uldum New/0 69.82,52.20",
quest=55468,
currency="AZ",
condition=[[only if ZGV.InPhase("UldumInvasionRight")]],
steps=[[
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 55468 |future
step
kill Anaua##151883 |goto Uldum New/0 69.82,52.20 |c |q 55468 |future
|tip It flies around the top of the pyramid.
]]
},
{
rare=[[Sun Prophet Epaphos]],
level=120,
spot="Uldum New/0 73.34,74.47",
quest=55353,
currency="AZ",
condition=[[only if ZGV.InPhase("UldumInvasionRight")]],
steps=[[
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 55353 |future
step
kill Sun Prophet Epaphos##151609 |goto Uldum New/0 73.34,74.47 |c |q 55353 |future
]]
},
{
rare=[[Rotfeaster]],
level=120,
spot="Uldum New/0 68.30,31.88",
quest=57273,
item=174753,
currency="AZ",
condition=[[only if ZGV.InPhase("UldumInvasionRight")]],
steps=[[
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 57273 |future
step
kill Rotfeaster##157146 |goto Uldum New/0 68.30,31.88 |c |q 57273 |future
]]
},
{
rare=[[Enraged Amber Elemental]],
level=120,
spot="Vale of Eternal Blossoms New/0 11.46,40.67",
quest=58306,
currency="AZ",
condition=[[only if ZGV.InPhase("ValeInvasionLeft")]],
steps=[[
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 58306 |future
step
kill Enraged Amber Elemental##160876 |goto Vale of Eternal Blossoms New/0 11.46,40.67 |c |q 58306 |future
]]
},
{
rare=[[Harbinger Il'koxik]],
level=120,
spot="Vale of Eternal Blossoms New/0 28.88,52.72",
quest=58299,
currency="AZ",
condition=[[only if ZGV.InPhase("ValeInvasionLeft")]],
steps=[[
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 58299 |future
step
kill Harbinger Il'koxik##160810 |goto Vale of Eternal Blossoms New/0 28.88,52.72 |c |q 58299 |future
]]
},
{
rare=[[Skiver]],
level=120,
spot="Vale of Eternal Blossoms New/0 25.73,47.34",
quest=58309,
currency="AZ",
condition=[[only if ZGV.InPhase("ValeInvasionLeft")]],
steps=[[
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 58309 |future
step
kill Skiver##160906 |goto Vale of Eternal Blossoms New/0 25.73,47.34 |c |q 58309 |future
|tip It flies around the tree.
]]
},
{
rare=[[Destroyer Krox'tazar]],
level=120,
spot="Vale of Eternal Blossoms New/0 12.76,31.20",
quest=58304,
currency="AZ",
condition=[[only if ZGV.InPhase("ValeInvasionLeft")]],
steps=[[
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 58304 |future
step
kill Destroyer Krox'tazar##160872 |goto Vale of Eternal Blossoms New/0 12.76,31.20 |c |q 58304 |future
]]
},
{
rare=[[Infused Amber Ooze]],
level=120,
spot="Vale of Eternal Blossoms New/0 18.52,65.87",
quest=58312,
currency="AZ",
condition=[[only if ZGV.InPhase("ValeInvasionLeft")]],
steps=[[
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 58312 |future
step
kill Infused Amber Ooze##160930 |goto Vale of Eternal Blossoms New/0 18.52,65.87 |c |q 58312 |future
|tip It moves around the circular path.
]]
},
{
rare=[[Hive-Guard Naz'ruzek]],
level=120,
spot="Vale of Eternal Blossoms New/0 21.27,62.63",
quest=58301,
currency="AZ",
condition=[[only if ZGV.InPhase("ValeInvasionLeft")]],
steps=[[
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 58301 |future
step
kill Hive-Guard Naz'ruzek##160826 |goto Vale of Eternal Blossoms New/0 21.27,62.63 |c |q 58301 |future
]]
},
{
rare=[[Harrier Nir'verash]],
level=120,
spot="Vale of Eternal Blossoms New/0 12.85,51.28",
quest=58303,
currency="AZ",
condition=[[only if ZGV.InPhase("ValeInvasionLeft")]],
steps=[[
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 58303 |future
step
kill Harrier Nir'verash##160868 |goto Vale of Eternal Blossoms New/0 12.85,51.28 |c |q 58303 |future
]]
},
{
rare=[[Drone Keeper Ak'thet]],
level=120,
spot="Vale of Eternal Blossoms New/0 11.57,40.87",
quest=58305,
currency="AZ",
condition=[[only if ZGV.InPhase("ValeInvasionLeft")]],
steps=[[
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 58305 |future
step
kill Drone Keeper Ak'thet##160874 |goto Vale of Eternal Blossoms New/0 11.57,40.87 |c |q 58305 |future
]]
},
{
rare=[[Captain Vor'lek]],
level=120,
spot="Vale of Eternal Blossoms New/0 4.08,48.86",
quest=58308,
currency="AZ",
condition=[[only if ZGV.InPhase("ValeInvasionLeft")]],
steps=[[
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 58308 |future
step
kill Captain Vor'lek##160893 |goto Vale of Eternal Blossoms New/0 4.08,48.86 |c |q 58308 |future
]]
},
{
rare=[[Needler Zhesalla]],
level=120,
spot="Vale of Eternal Blossoms New/0 13.47,35.06",
quest=58311,
currency="AZ",
condition=[[only if ZGV.InPhase("ValeInvasionLeft")]],
steps=[[
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 58311 |future
step
kill Needler Zhesalla##160922 |goto Vale of Eternal Blossoms New/0 13.47,35.06 |c |q 58311 |future
|tip It flies around the area.
]]
},
{
rare=[[Kal'tik the Blight]],
level=120,
spot="Vale of Eternal Blossoms New/0 17.84,9.05",
quest=58310,
currency="AZ",
condition=[[only if ZGV.InPhase("ValeInvasionLeft")]],
steps=[[
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 58310 |future
step
kill Kal'tik the Blight##160920 |goto Vale of Eternal Blossoms New/0 17.84,9.05 |c |q 58310 |future
]]
},
{
rare=[[Kzit'kovok]],
level=120,
spot="Vale of Eternal Blossoms New/0 24.94,39.47",
quest=58302,
currency="AZ",
condition=[[only if ZGV.InPhase("ValeInvasionLeft")]],
steps=[[
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 58302 |future
step
kill Kzit'kovok##160867 |goto Vale of Eternal Blossoms New/0 24.94,39.47 |c |q 58302 |future
]]
},
{
rare=[[Amber-Shaper Esh'ri]],
level=120,
spot="Vale of Eternal Blossoms New/0 20.01,74.61",
quest=58300,
currency="AZ",
condition=[[only if ZGV.InPhase("ValeInvasionLeft")]],
steps=[[
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 58300 |future
step
kill Amber-Shaper Esh'ri##160825 |goto Vale of Eternal Blossoms New/0 20.01,74.61 |c |q 58300 |future
|tip Inside the building.
]]
},
{
rare=[[Buh'gzaki the Blasphemous]],
level=120,
spot="Vale of Eternal Blossoms New/0 6.48,70.69",
quest=58307,
currency="AZ",
condition=[[only if ZGV.InPhase("ValeInvasionLeft")]],
steps=[[
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 58307 |future
step
kill Buh'gzaki the Blasphemous##160878 |goto Vale of Eternal Blossoms New/0 6.48,70.69 |c |q 58307 |future
|tip Inside the building.
]]
},
{
rare=[[Xiln the Mountain]],
level=120,
spot="Vale of Eternal Blossoms New/0 53.80,48.85",
quest=57358,
currency="AZ",
condition=[[only if ZGV.InPhase("ValeInvasionLeftCenter")]],
steps=[[
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 57358 |future
step
kill Xiln the Mountain##157443 |goto Vale of Eternal Blossoms New/0 53.80,48.85 |c |q 57358 |future
]]
},
{
rare=[[Ha-Li]],
level=120,
spot="Vale of Eternal Blossoms New/0 31.77,41.82",
quest=57344,
item=173887,
currency="AZ",
condition=[[only if ZGV.InPhase("ValeInvasionLeftCenter")]],
steps=[[
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 57344 |future
step
kill Ha-Li##157153 |goto Vale of Eternal Blossoms New/0 31.77,41.82 |c |q 57344 |future
|tip It flies in a large circle around the mountain peak.
]]
},
{
rare=[[Dokani Obliterator]],
level=120,
spot="Vale of Eternal Blossoms New/0 39.20,59.64",
quest=57349,
currency="AZ",
condition=[[only if ZGV.InPhase("ValeInvasionLeftCenter")]],
steps=[[
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 57349 |future
step
kill Dokani Obliterator##157287 |goto Vale of Eternal Blossoms New/0 39.20,59.64 |c |q 57349 |future
|tip It walks around this area.
]]
},
{
rare=[[Anh-De the Loyal]],
level=120,
spot="Vale of Eternal Blossoms New/0 33.75,68.53",
quest=57363,
item=174840,
currency="AZ",
condition=[[only if ZGV.InPhase("ValeInvasionLeftCenter")]],
steps=[[
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 57363 |future
step
kill Anh-De the Loyal##157466 |goto Vale of Eternal Blossoms New/0 33.75,68.53 |c |q 57363 |future
]]
},
{
rare=[[Stormhowl]],
level=120,
spot="Vale of Eternal Blossoms New/0 24.68,76.18",
quest=57348,
currency="AZ",
condition=[[only if ZGV.InPhase("ValeInvasionLeftCenter")]],
steps=[[
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 57348 |future
step
kill Stormhowl##157279 |goto Vale of Eternal Blossoms New/0 24.68,76.18 |c |q 57348 |future
|tip It walks around this area.
]]
},
{
rare=[[Coagulated Anima]],
level=120,
spot="Vale of Eternal Blossoms New/0 20.75,62.72",
quest=58296,
currency="AZ",
condition=[[only if ZGV.InPhase("ValeInvasionLeftCenter")]],
steps=[[
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 58296 |future
step
kill Coagulated Anima##157183 |goto Vale of Eternal Blossoms New/0 20.75,62.72 |c |q 58296 |future
]]
},
{
rare=[[Tisiphon]],
level=120,
spot="Vale of Eternal Blossoms New/0 9.52,67.43",
quest=57364,
currency="AZ",
condition=[[only if ZGV.InPhase("ValeInvasionLeftCenter")]],
steps=[[
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 57364 |future
step
click Danielle's Lucky Fishing Rod |goto Vale of Eternal Blossoms New/0 10.44,69.07
|tip This will summon Tisiphon.
kill Tisiphon##157468 |goto 9.52,67.43 |c |q 57364 |future
]]
},
{
rare=[[Spymaster Hul'ach]],
level=120,
spot="Vale of Eternal Blossoms New/0 17.89,37.45",
quest=57351,
currency="AZ",
condition=[[only if ZGV.InPhase("ValeInvasionLeftCenter")]],
steps=[[
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 57351 |future
step
kill Spymaster Hul'ach##157291 |goto Vale of Eternal Blossoms New/0 17.89,37.45 |c |q 57351 |future
]]
},
{
rare=[[Houndlord Ren]],
level=120,
spot="Vale of Eternal Blossoms New/0 10.92,32.51",
quest=57345,
item=174841,
currency="AZ",
condition=[[only if ZGV.InPhase("ValeInvasionLeftCenter")]],
steps=[[
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 57345 |future
step
kill Houndlord Ren##157160 |goto Vale of Eternal Blossoms New/0 10.92,32.51 |c |q 57345 |future
|tip He walks all along the area following the wall.
]]
},
{
rare=[[Jade Colossus]],
level=120,
spot="Vale of Eternal Blossoms New/0 17.20,11.61",
quest=58295,
currency="AZ",
condition=[[only if ZGV.InPhase("ValeInvasionLeftCenter")]],
steps=[[
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 58295 |future
step
Enter the building |goto Vale of Eternal Blossoms New/0 22.12,24.17 < 15 |walk
Run down the stairs |goto 19.79,20.38 < 15 |walk
Follow the path |goto 19.32,14.04 < 15 |walk
click Curious Jade Egg
kill Jade Colossus##160968 |goto 17.11,11.93 |c |q 58295 |future
]]
},
{
rare=[[Rei Lun]],
level=120,
spot="Vale of Eternal Blossoms New/0 21.90,12.31",
quest=57346,
item=174230,
currency="AZ",
condition=[[only if ZGV.InPhase("ValeInvasionLeftCenter") or ZGV.InPhase("ValeInvasionLeft")]],
steps=[[
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 57346 |future
step
Enter the building |goto Vale of Eternal Blossoms New/0 22.12,24.17 < 15 |walk
Run down the stairs |goto 19.79,20.38 < 15 |walk
Follow the path |goto 21.79,12.76 < 15 |walk
|tip Avoid stepping on the yellow, green, and red tiles.
Run down the stairs |goto 25.08,6.11 < 15 |walk
kill Rei Lun##157162 |goto 21.90,12.31 |c |q 57346 |future
|tip Downstairs in The Hall of the Serpent
]]
},
{
rare=[[Jade Watcher]],
level=120,
spot="Vale of Eternal Blossoms New/0 26.74,10.60",
quest=57350,
currency="AZ",
condition=[[only if ZGV.InPhase("ValeInvasionLeftCenter")]],
steps=[[
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 57350 |future
step
Enter the cave |goto Vale of Eternal Blossoms New/0 27.33,12.62 < 15 |walk
kill Jade Watcher##157290 |goto 26.74,10.60 |c |q 57350 |future
|tip Inside the cave.
]]
},
{
rare=[[Heixi the Stonelord]],
level=120,
spot="Vale of Eternal Blossoms New/0 28.23,40.46",
quest=57347,
currency="AZ",
condition=[[only if ZGV.InPhase("ValeInvasionLeftCenter")]],
steps=[[
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 57347 |future
step
kill Heixi the Stonelord##157171 |goto Vale of Eternal Blossoms New/0 28.23,40.46 |c |q 57347 |future
]]
},
{
rare=[[Sanguifang]],
level=120,
spot="Vale of Eternal Blossoms New/0 46.40,57.13",
quest=56954,
currency="AZ",
condition=[[only if ZGV.InPhase("ValeInvasionLeftCenter")]],
steps=[[
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 56954 |future
step
kill Sanguifang##156083 |goto Vale of Eternal Blossoms New/0 46.40,57.13 |c |q 56954 |future
]]
},
{
rare=[[Tashara]],
level=120,
spot="Vale of Eternal Blossoms New/0 29.34,22.22",
quest=58507,
currency="AZ",
condition=[[only if ZGV.InPhase("ValeInvasionLeftCenter")]],
steps=[[
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 58507 |future
step
kill Tashara##155958 |goto Vale of Eternal Blossoms New/0 29.34,22.22 |c |q 58507 |future
]]
},
{
rare=[[Voidtender Malketh]],
level=120,
spot="Vale of Eternal Blossoms New/0 66.74,28.13",
quest=56183,
currency="AZ",
condition=[[only if ZGV.InPhase("ValeInvasionRight")]],
steps=[[
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 56183 |future
step
Enter the cave |goto Vale of Eternal Blossoms New/0 57.42,37.86 < 30 |walk
kill Voidtender Malketh##154332 |goto 66.74,28.13 |c |q 56183 |future
|tip Inside the cave.
]]
},
{
rare=[[The Forgotten]],
level=120,
spot="Vale of Eternal Blossoms New/0 52.05,41.78",
quest=57342,
item=174473,
currency="AZ",
condition=[[only if ZGV.InPhase("ValeInvasionRight")]],
steps=[[
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 57342 |future
step
kill The Forgotten##157176 |goto Vale of Eternal Blossoms New/0 52.05,41.78 |c |q 57342 |future
|tip In the air on the floating platform.
]]
},
{
rare=[[Brother Meller]],
level=120,
spot="Vale of Eternal Blossoms New/0 57.05,40.97",
quest=56237,
currency="AZ",
condition=[[only if ZGV.InPhase("ValeInvasionRight")]],
steps=[[
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 56237 |future
step
kill Brother Meller##154447 |goto Vale of Eternal Blossoms New/0 57.05,40.97 |c |q 56237 |future
]]
},
{
rare=[[Teng the Awakened]],
level=120,
spot="Vale of Eternal Blossoms New/0 47.46,63.74",
quest=56332,
currency="AZ",
condition=[[only if ZGV.InPhase("ValeInvasionLeftCenter")]],
steps=[[
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 56332 |future
step
Enter the cave |goto Vale of Eternal Blossoms New/0 47.51,65.84 < 15 |walk
kill Teng the Awakened##154600 |goto 47.46,63.74 |c |q 56332 |future
|tip Inside the cave.
]]
},
{
rare=[[Escaped Mutation]],
level=120,
spot="Vale of Eternal Blossoms New/0 44.73,45.21",
quest=57343,
currency="AZ",
condition=[[only if ZGV.InPhase("ValeInvasionRight")]],
steps=[[
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 57343 |future
step
kill Escaped Mutation##157267 |goto Vale of Eternal Blossoms New/0 44.73,45.21 |c |q 57343 |future
]]
},
{
rare=[[Quid]],
level=120,
spot="Vale of Eternal Blossoms New/0 90.22,46.01",
quest=56094,
currency="AZ",
condition=[[only if ZGV.InPhase("ValeInvasionRight")]],
steps=[[
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 56094 |future
step
kill Quid##154106 |goto Vale of Eternal Blossoms New/0 90.22,46.01 |c |q 56094 |future
]]
},
{
rare=[[Zror'um the Infinite]],
level=120,
spot="Vale of Eternal Blossoms New/0 70.95,40.54",
quest=56084,
currency="AZ",
condition=[[only if ZGV.InPhase("ValeInvasionRight")]],
steps=[[
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 56084 |future
step
kill Zror'um the Infinite##154087 |goto Vale of Eternal Blossoms New/0 70.95,40.54 |c |q 56084 |future
]]
},
{
rare=[[Rijz'x the Devourer]],
level=120,
spot="Vale of Eternal Blossoms New/0 64.17,51.80",
quest=56302,
currency="AZ",
condition=[[only if ZGV.InPhase("ValeInvasionRight")]],
steps=[[
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 56302 |future
step
kill Rijz'x the Devourer##154490 |goto Vale of Eternal Blossoms New/0 64.17,51.80 |c |q 56302 |future
]]
},
{
rare=[[Chief Mek-mek]],
level=120,
spot="Vale of Eternal Blossoms New/0 81.20,64.49",
quest=56255,
currency="AZ",
condition=[[only if ZGV.InPhase("ValeInvasionRight")]],
steps=[[
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 56255 |future
step
kill Chief Mek-mek##154467 |goto Vale of Eternal Blossoms New/0 81.20,64.49 |c |q 56255 |future
]]
},
{
rare=[[Will of N'Zoth]],
level=120,
spot="Vale of Eternal Blossoms New/0 52.95,62.23",
quest=56303,
item=174474,
currency="AZ",
condition=[[only if ZGV.InPhase("ValeInvasionRight")]],
steps=[[
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 56303 |future
step
kill Will of N'Zoth##154495 |goto Vale of Eternal Blossoms New/0 52.95,62.23 |c |q 56303 |future
]]
},
{
rare=[[Kilxl the Gaping Maw]],
level=120,
spot="Vale of Eternal Blossoms New/0 46.96,62.61",
quest=57341,
currency="AZ",
condition=[[only if ZGV.InPhase("ValeInvasionRight")]],
steps=[[
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 57341 |future
step
kill Kilxl the Gaping Maw##157266 |goto Vale of Eternal Blossoms New/0 46.96,62.61 |c |q 57341 |future
|tip It flies around the spire.
]]
},
{
rare=[[Deeplord Zrihj]],
level=120,
spot="Vale of Eternal Blossoms New/0 66.57,67.95",
quest=56323,
currency="AZ",
condition=[[only if ZGV.InPhase("ValeInvasionRight")]],
steps=[[
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 56323 |future
step
Enter the mine |goto Vale of Eternal Blossoms New/0 69.91,58.50 < 15 |walk
Follow the path |goto 70.41,64.42 < 15 |walk
kill Deeplord Zrihj##154559 |goto 66.57,67.95 |c |q 56323 |future
|tip Inside the mine.
]]
},
{
rare=[[Veskan the Fallen]],
level=120,
spot="Vale of Eternal Blossoms New/0 86.67,41.69",
quest=56213,
currency="AZ",
condition=[[only if ZGV.InPhase("ValeInvasionRight")]],
steps=[[
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 56213 |future
step
kill Veskan the Fallen##154394 |goto Vale of Eternal Blossoms New/0 86.67,41.69 |c |q 56213 |future
]]
},
}
