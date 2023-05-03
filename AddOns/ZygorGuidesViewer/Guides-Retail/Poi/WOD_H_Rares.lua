local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("PoiRareWOD") then return end
ZGV.Poi.Sets.PoiRareWOD={
{
rare=[[Yaga the Scarred]],
level=92,
spot="Frostfire Ridge/0 40.6,27.6",
currency="GR",
item=111477,
quest=34559,
steps=[[
step
_Go to_ the top ridge |goto Frostfire Ridge/0 41.3,29.0
kill Yaga the Scarred##79145 |q 34559 |future |goto Frostfire Ridge/0 40.6,27.6
]],
},
{
rare=[[Coldstomp the Griever]],
level=91,
spot="Frostfire Ridge 25.40,55.00",
currency="GR",
item=112066,
quest=34129,
steps=[[
step
kill Coldstomp the Griever##77513 |q 34129 |future |goto Frostfire Ridge 25.40,55.00
|tip He's in the boneyard.
]],
},
{
rare=[[The Beater]],
level=90,
spot="Frostfire Ridge 26.80,31.60",
currency="GR",
item=111475,
quest=34133,
steps=[[
step
_Enter_ the cave here |goto Frostfire Ridge/0 27.2,30.8 < 10
kill The Beater##77527 |q 34133 |future |goto Frostfire Ridge 26.80,31.60
]],
},
{
rare=[[Breathless]],
level=90,
spot="Frostfire Ridge 27.40,50.00",
currency="GR",
item=111476,
quest=34497,
steps=[[
step
Breathless patrols up and down this small ravine |goto Frostfire Ridge 27.40,50.00
kill Breathless##78867 |q 34497 |future |goto Frostfire Ridge 27.40,50.00
]],
},
{
rare=[[Pale Fishmonger]],
level=92,
spot="Frostfire Ridge 28.29,66.63",
currency="GR",
item=109142,
quest=34470,
steps=[[
step
_Follow_ the road down |goto Frostfire Ridge/0 26.0,59.7
_Cross_ the water |goto Frostfire Ridge/0 27.5,63.8
_Enter_ the cave |goto Frostfire Ridge/0 27.8,65.9
kill Pale Fishmonger##78606 |q 34470 |future |goto Frostfire Ridge 28.29,66.63
]],
},
{
rare=[[Canyon Icemother]],
level=91,
spot="Frostfire Ridge 34.00,23.20",
currency="GR",
item=101436,
quest=32941,
steps=[[
step
kill Canyon Icemother##71721 |q 32941 |future |goto Frostfire Ridge 34.00,23.20
|tip She is located next to the lava pool in Daggermaw Ravine.
]],
},
{
rare=[[Primalist Mur'og]],
level=90,
spot="Frostfire Ridge 36.80,34.00",
currency="GR",
item=111576,
quest=33938,
steps=[[
step
_Go up_ this path |goto Frostfire Ridge/0 33.9,30.0
_Cross_ the stone bridge |goto Frostfire Ridge/0 36.2,32.2
_Continue following_ the path up and to the right |goto Frostfire Ridge/0 38.0,33.1
kill Primalist Mur'og##76918 |q 33938 |future |goto Frostfire Ridge 36.80,34.00
]],
},
{
rare=[[Gorivax]],
level=101,
spot="Frostfire Ridge 38.00,14.00",
currency="AC",
item=120945,
quest=37388,
steps=[[
step
kill Minion of Borgal##89164
|tip Kill the Minions to spawn Gorivax.
kill Gorivax##82536 |q 37388 |future |goto Frostfire Ridge 38.00,14.00
]],
},
{
rare=[[Son of Goramal]],
level=101,
spot="Frostfire Ridge 38.20,16.00",
currency="AC",
item=120945,
quest=37383,
steps=[[
step
kill Son of Goramal##82620 |q 37383 |future |goto Frostfire Ridge 38.20,16.00
|tip Goramal will pull with him.
]],
},
{
rare=[[Grutush the Pillager]],
level=90,
spot="Frostfire Ridge 38.60,63.00",
currency="GR",
item=112077,
quest=34865,
steps=[[
step
_Go around_ the small peak |goto Frostfire Ridge/0 39.4,63.5
_Enter_ the cave |goto Frostfire Ridge/0 38.2,63.6
kill Grutush the Pillager##80312 |q 34865 |future |goto Frostfire Ridge 38.60,63.00
]],
},
{
rare=[[Cindermaw]],
level=90,
spot="Frostfire Ridge 40.40,47.00",
currency="GR",
item=111490,
quest=33014,
steps=[[
step
Cindermaw will be here when you first engage him |goto Frostfire Ridge 40.40,47.00
At 60% health, Cindermaw will burrow southeast to this location |goto Frostfire Ridge/0 41.5,48.8
At 30% health, Cindermaw will burrow north to this location |goto Frostfire Ridge/0 41.7,46.3
kill Cindermaw##72294 |q 33014 |future |goto Frostfire Ridge/0 41.7,46.3
]],
},
{
rare=[[Ug'lok the Frozen]],
level=100,
spot="Frostfire Ridge 40.60,12.40",
currency="AC",
item=120945,
quest=34522,
steps=[[
step
kill Frozen Sanctuary##81988
kill Ug'lok the Frozen##79104 |q 34522 |future |goto Frostfire Ridge 40.60,12.40
|tip Ug'lok will use Frozen Sanctuary occasionally. Kill it to free him from the ice barrier and make him attackable.
]],
},
{
rare=[[Chillfang]],
level=90,
spot="Frostfire Ridge 41.20,68.20",
currency="GR",
item=111953,
quest=34843,
steps=[[
step
_Go down_ to the water |goto Frostfire Ridge/0 41.3,64.5
_Cross_ the water |goto Frostfire Ridge/0 40.8,66.6
_Go to_ the cave |goto Frostfire Ridge/0 40.8,67.6
kill Chillfang##80242 |q 34843 |future |goto Frostfire Ridge 41.20,68.20
]],
},
{
rare=[[Moltnoma]],
level=101,
spot="Frostfire Ridge 43.00,21.00",
currency="AC",
item=120945,
quest=37387,
steps=[[
step
_Go down_ to the edge of the lava |goto Frostfire Ridge/0 42.8,19.5
kill Lava Slime##88430
Gain the the Lava Slimed buff |havebuff 135789 |only if not completedq(37387)
kill Moltnoma##82614 |q 37387 |future |goto Frostfire Ridge 43.00,21.00
|tip You must kill a Lava Slime to gain immunity to the lava damage for 30 seconds. Pay close attention to your buff and kill another Lava Slime when the duration gets low.
]],
},
{
rare=[[Tor'goroth]],
level=101,
spot="Frostfire Ridge 43.60,09.40",
currency="AC",
item=120945,
quest=37384,
steps=[[
step
_Follow_ the road down |goto Frostfire Ridge/0 45.8,12.7
_Cross_ the water |goto Frostfire Ridge/0 43.5,10.4
kill Tor'goroth##82618 |q 37384 |future |goto Frostfire Ridge 43.60,09.40
]],
},
{
rare=[[Slogtusk the Corpse-Eater]],
level=101,
spot="Frostfire Ridge 45.00,15.00",
currency="AC",
item=120945,
quest=37385,
steps=[[
step
_Enter_ the cave |goto Frostfire Ridge/0 45.9,14.2
kill Slogtusk the Corpse-Eater##82617 |q 37385 |future |goto Frostfire Ridge 45.00,15.00
]],
},
{
rare=[[Gurun]],
level=90,
spot="Frostfire Ridge 47.00,55.20",
currency="GR",
item=111955,
quest=34839,
steps=[[
step
_Enter_ the cave |goto Frostfire Ridge/0 46.0,57.4
_Continue down_ into the cave |goto Frostfire Ridge/0 45.5,55.5
kill Gurun##80235 |q 34839 |future |goto Frostfire Ridge 47.00,55.20
|tip He's in the back of the cave around the right. Beware of the Gronn.
]],
},
{
rare=[[Jabberjaw]],
level=101,
spot="Frostfire Ridge 48.20,23.40",
currency="AC",
item=120945,
quest=37386,
steps=[[
step
kill Jabberjaw##82616 |q 37386 |future |goto Frostfire Ridge 48.20,23.40
|tip He patrols a small area around this spot.
]],
},
{
rare=[[Gruuk]],
level=90,
spot="Frostfire Ridge 50.30,52.60",
currency="GR",
item=111948,
quest=34825,
steps=[[
step
kill Gruuk##80190 |q 34825 |future |goto Frostfire Ridge 50.30,52.60
|tip He's under the rocky overhang.
]],
},
{
rare=[[Giant-Slayer Kul]],
level=90,
spot="Frostfire Ridge 54.60,22.20",
currency="GR",
item=111530,
quest=32918,
steps=[[
step
_Go to_ the small camp |goto Frostfire Ridge/0 54.3,21.8
kill Giant-Slayer Kul##71665 |q 32918 |future |goto Frostfire Ridge 54.60,22.20
]],
},
{
rare=[[Coldtusk]],
level=90,
spot="Frostfire Ridge 54.60,69.40",
currency="GR",
item=111484,
quest=34131,
steps=[[
step
kill Coldtusk##76914 |q 34131 |future |goto Frostfire Ridge 54.60,69.40
|tip Coltusk runs up and down the ravine.
]],
},
{
rare=[[Huntmaster Kuang]],
level=92,
spot="Frostfire Ridge 58.60,34.20",
currency="GR",
quest=34130,
steps=[[
step
kill Giantslayer Kimla##78144
kill Pathfinder Jalog##78134
kill Cloudspeaker Daber##78169
kill Gronnstalker Dawarn##78128
kill Beastcarver Saramor##78150
kill Giantbane##77519
kill Huntmaster Kuang##78151 |q 34130 |future |goto Frostfire Ridge 58.60,34.20
|tip He patrols around a sizeable area. Look around this field of ice. The other mobs go down fast, having very little health.
]],
},
{
rare=[[Jehil the Climber]],
level=92,
spot="Frostfire Ridge 61.60,26.40",
item=112078,
quest=34708,
steps=[[
step
_Go up_ the ramp |goto Frostfire Ridge/0 61.0,26.7
_Turn left_ at the top |goto Frostfire Ridge/0 62.1,27.1
_Jump onto_ the bones |goto Frostfire Ridge/0 62.0,26.3 < 8
_Climb up_ this rib bone and jump over to Jehil's area |goto Frostfire Ridge/0 61.5,25.8 < 4
kill Jehil the Climber##79678 |q 34708 |future |goto Frostfire Ridge 61.60,26.40
]],
},
{
rare=[[Broodmother Reeg'ak]],
level=92,
spot="Frostfire Ridge 66.40,31.40",
currency="GR",
item=111533,
quest=33843,
steps=[[
step
_Enter_ the cave |goto Frostfire Ridge/0 64.2,32.4
_Run to_ the bottom of the ramp |goto Frostfire Ridge/0 65.3,31.5
kill Broodmother Reeg'ak##74613 |q 33843 |future |goto Frostfire Ridge 66.40,31.40
|tip Reeg'ak patrols around the large central pillar.
]],
},
{
rare=[[Gibblette the Cowardly]],
level=101,
spot="Frostfire Ridge 66.60,25.40",
currency="AC",
item=120945,
quest=37380,
steps=[[
step
_Go up_ the path |goto Frostfire Ridge/0 69.0,23.9 < 10
_Follow_ the path around to the left |goto Frostfire Ridge/0 66.8,22.2 < 10
_Go through_ the stone arch |goto Frostfire Ridge/0 65.8,23.3 < 10
_Enter_ the cave |goto Frostfire Ridge/0 67.1,25.0 < 10
kill Gibblette the Cowardly##87352 |q 37380 |future |goto Frostfire Ridge 66.60,25.40
|tip Interrupt or stun him when he casts Dig or he will escape. Cowardly indeed!
]],
},
{
rare=[[Cyclonic Fury]],
level=93,
spot="Frostfire Ridge 67.40,78.20",
currency="GR",
item=112086,
quest=34477,
steps=[[
step
kill Cyclonic Fury##78621 |q 34477 |future |goto Frostfire Ridge 67.40,78.20
|tip He patrols a very small area.
]],
},
{
rare=[[Hoarfrost]],
level=101,
spot="Frostfire Ridge 68.80,19.40",
currency="AC",
item=120945,
quest=37382,
steps=[[
step
_Go up_ the hill |goto Frostfire Ridge/0 69.7,23.2
_Go through_ the narrow pass |goto Frostfire Ridge/0 68.5,22.6
kill Hoarfrost##87348 |q 37382 |future |goto Frostfire Ridge/0 68.1,19.9
]],
},
{
rare=[[Gorg'ak the Lava Guzzler]],
level=100,
spot="Frostfire Ridge 70.00,36.00",
currency="AC",
item=120945,
quest=33512,
steps=[[
step
kill Gorg'ak the Lava Guzzler##72364 |q 33512 |future |goto Frostfire Ridge 71.00,27.40
|tip He is located down by the lava. Be sure to clear all of the goren before pulling him, he will call for help.
]],
},
{
rare=[[Vrok the Ancient]],
level=103,
spot="Frostfire Ridge 70.60,39.00",
currency="AC",
item=120945,
quest=37379,
steps=[[
step
_Start up_ the hill |goto Frostfire Ridge/0 74.0,29.8
_Continue_ going up the hill |goto Frostfire Ridge/0 73.6,34.9
kill Vrok the Ancient##87356 |q 37379 |future |goto Frostfire Ridge 70.60,39.00
|tip Avoid the boulders, tornados, and mobs on the way up.
|tip Vrok will require a group to defeat.
]],
},
{
rare=[[Firefury Giant]],
level=90,
spot="Frostfire Ridge 71.40,46.80",
currency="GR",
item=107661,
quest=33504,
steps=[[
step
_Climb up_ onto the cooled magma |goto Frostfire Ridge/0 70.2,53.8
_Go up_ the left side of the lava |goto Frostfire Ridge/0 70.9,51.2
_Continue up_ the left side to the stone |goto Frostfire Ridge/0 71.1,48.3
click Firefury Stone##224620 |goto Frostfire Ridge/0 71.0,47.4
kill Firefury Giant##74971 |q 33504 |future |goto Frostfire Ridge 71.40,46.80
|tip Melee must use the little rocks that spawn to stay out of the lava and avoid its damage.
]],
},
{
rare=[[Mother of Goren]],
level=101,
spot="Frostfire Ridge 72.20,22.80",
currency="AC",
item=120945,
quest=37381,
steps=[[
step
kill Mother of Goren##87351 |q 37381 |future |goto Frostfire Ridge 72.20,22.80
|tip An AoE cooldown will healp greatly with little Burning Slagmaws.
|tip When she casts Whirling Lava Breath, she will rotate counter-clockwise. Stay away from the breath.
]],
},
{
rare=[[The Bone Crawler]],
level=101,
spot="Frostfire Ridge 72.20,33.00",
currency="AC",
item=120945,
quest=34361,
steps=[[
step
_Go down_ this hill |goto Frostfire Ridge/0 70.7,32.5
kill The Bone Crawler##78265 |q 34361 |future |goto Frostfire Ridge 72.20,33.00
]],
},
{
rare=[[Valkor]],
level=101,
spot="Frostfire Ridge 72.40,24.20",
currency="AC",
item=120945,
quest=37378,
steps=[[
step
kill Valkor##87357 |q 37378 |future |goto Frostfire Ridge 72.40,24.20
|tip Valkor patrols a small area up and down the road. He is a high health rare elite, you will need a group to defeat him.
]],
},
{
rare=[[Scout Goreseeker]],
level=93,
spot="Frostfire Ridge 76.40,63.40",
currency="GR",
item=112094,
quest=34132,
steps=[[
step
_Go up_ into the camp |goto Frostfire Ridge/0 74.6,62.6
_Enter_ the building and go down the stairs |goto Frostfire Ridge/0 75.9,63.0
kill Scout Goreseeker##77526 |q 34132 |future |goto Frostfire Ridge/0 76.6,63.6
]],
},
{
rare=[[Ogom the Mangler]],
level=100,
spot="Frostfire Ridge 83.60,47.20",
currency="AC",
item=120945,
quest=37402,
steps=[[
step
kill Ogom the Mangler##87622 |q 37402 |future |goto Frostfire Ridge 83.60,47.20
|tip Ogom patrols the road around this area.
]],
},
{
rare=[[Earthshaker Holar]],
level=100,
spot="Frostfire Ridge 84.60,46.80",
currency="AC",
item=120945,
quest=37403,
steps=[[
step
kill Earthshaker Holar##84376 |q 37403 |future |goto Frostfire Ridge 84.60,46.80
|tip He is in the gladiator pit.
]],
},
{
rare=[[Ragore Driftstalker]],
level=100,
spot="Frostfire Ridge 86.60,48.80",
currency="AC",
item=120945,
quest=37401,
steps=[[
step
_Enter_ the cave |goto Frostfire Ridge/0 87.1,49.5
kill Ragore Driftstalker##84392 |q 37401 |future |goto Frostfire Ridge 86.60,48.80
]],
},
{
rare=[[Kaga the Ironbender]],
level=100,
spot="Frostfire Ridge 86.80,45.00",
currency="AC",
item=120945,
quest=37404,
steps=[[
step
_Go up_ the bridge |goto Frostfire Ridge/0 86.1,47.2 < 10
_Go inside_ and _up the steps_ |goto Frostfire Ridge/0 86.9,45.0 < 10
kill Kaga the Ironbender##84374 |q 37404 |future |goto Frostfire Ridge 86.80,45.00
]],
},
{
rare=[[Ak'ox the Slaughterer]],
level=100,
spot="Frostfire Ridge 88.60,57.40",
currency="AC",
item=120945,
quest=37525,
steps=[[
step
_Go up_ the road |goto Frostfire Ridge/0 87.0,56.2
_Enter_ the building |goto Frostfire Ridge/0 88.2,57.5
kill Ak'ox the Slaughterer##84378 |q 37525 |future |goto Frostfire Ridge 88.60,57.40
]],
},
{
rare=[[Gnarljaw]],
level=101,
spot="Gorgrond/21 54.0,31.0",
currency="AC",
item=120945,
quest=37413,
steps=[[
step
_Start up_ the path here |goto Gorgrond/0 56.0,52.2 < 15
_Continue up_ |goto Gorgrond/0 54.4,54.9 < 15
_Enter_ the cave |goto Gorgrond/0 53.8,55.7 < 15
_Go to_ the bottom of the spiraling path |goto Gorgrond/20 64.8,38.5 < 15
_Continue down_ |goto Gorgrond/21 54.4,72.0 < 15
kill Gnarljaw##78269 |q 37413 |future |goto Gorgrond/21 54.0,31.0
]],
},
{
rare=[[King Slime]],
level=100,
spot="Gorgrond/21 42.0,75.1",
currency="AC",
item=120945,
quest=37412,
steps=[[
step
_Start up_ the path here |goto Gorgrond/0 56.0,52.2 < 15
_Continue up_ |goto Gorgrond/0 54.4,54.9 < 15
_Enter_ the cave |goto Gorgrond/0 53.8,55.7 < 15
_Go to_ the bottom of the spiraling path |goto Gorgrond/21 59.2,72.6 < 15
_Continue down_ |goto Gorgrond/21 50.6,41.4 < 15
kill King Slime##78260 |q 37412 |future |goto Gorgrond/21 42.0,75.1
]],
},
{
rare=[[Roardan the Sky Terror (Horde)]],
level=93,
spot="Gorgrond/0 53.0,63.1",
currency="|poicurrency",
item=113459,
quest=35818,
steps=[[
step
kill Roardan the Sky Terror##77093
collect 1 Ebony Feather##113459 |n
accept Trophy of Glory: Roardan the Sky Terror##35818 |use Ebony Feather##113459 |goto Gorgrond/0 53.0,63.1
|tip Roardan flies all around the basin. Wait here and he will come right to you.
]],
},
{
rare=[[Riptar]],
level=92,
spot="Gorgrond 37.60,81.40",
currency="GR",
item=118231,
quest=36600,
steps=[[
step
_Go up_ the hill |goto Gorgrond/0 39.5,79.5 < 30
_Go between_ the stones |goto Gorgrond/0 38.3,79.8
kill Riptar##85970 |q 36600 |future |goto Gorgrond 37.60,81.40
]],
},
{
rare=[[Stomper Kreego]],
level=92,
spot="Gorgrond 38.20,66.20",
currency="GR",
item=118224,
quest=35910,
steps=[[
step
_Go up_ this path |goto Gorgrond/0 39.0,65.7
kill Stomper Kreego##79629 |q 35910 |future |goto Gorgrond 38.20,66.20
]],
},
{
rare=[[Berthora]],
level=92,
spot="Gorgrond 39.40,74.60",
currency="GR",
item=118232,
quest=36597,
steps=[[
step
_Enter_ the cave |goto Gorgrond/0 39.7,76.3 < 20
kill Berthora##85907 |q 36597 |future |goto Gorgrond 39.40,74.60
]],
},
{
rare=[[Bashiok]],
level=92,
spot="Gorgrond 40.00,79.00",
currency="GR",
item=118222,
quest=35335,
steps=[[
step
_Go up_ the hill |goto Gorgrond/0 39.6,79.9
kill Bashiok##82085 |q 35335 |future |goto Gorgrond 40.00,79.00
|tip Cleansing Stream is a heal Bashiok casts. Interrupt this whenever possible.
]],
},
{
rare=[[Sulfurious]],
level=94,
spot="Gorgrond 40.20,59.60",
currency="GR",
item=114227,
quest=36394,
steps=[[
step
kill Sulfurious##80725 |q 36394 |future |goto Gorgrond/0 39.8,60.6
|tip Sulfurious moves around this small pool of water.
]],
},
{
rare=[[Dessicus of the Dead Pools (Horde)]],
level=93,
spot="Gorgrond 40.50,51.00",
currency="|poicurrency",
quest=35810,
item=113447,
steps=[[
step
kill Dessicus of the Dead Pools##81529
collect 1 Globe of Dead Water##113447 |n
accept Trophy of Glory: Dessicus##35810 |use Globe of Dead Water##113447 |goto Gorgrond 40.50,51.00
]],
},
{
rare=[[Gelgor of the Blue Flame]],
level=93,
spot="Gorgrond 41.80,45.40",
currency="GR",
item=118230,
quest=36391,
steps=[[
step
_Enter_ the cave |goto Gorgrond/0 43.3,47.8 < 20
_Go to_ the bottom of the spiraling ramp |goto Gorgrond/18 62.7,74.8 < 15
_Continue clockwise_ around the chamber |goto Gorgrond/18 40.9,61.2 < 10
_Take a left_ at the side passage |goto Gorgrond/19 45.7,37.7 < 10
kill Gelgor of the Blue Flame##81038 |q 36391 |future |goto Gorgrond/19 32.5,38.2
]],
},
{
rare=[[Crater Lord Igneous (Horde)]],
level=93,
spot="Gorgrond 42.80,59.20",
currency="|poicurrency",
quest=35811,
item=113448,
steps=[[
step
kill Crater Lord Igneous##81528
collect 1 Chunk of Crater Lord##113448 |n
accept Trophy of Glory: Crater Lord Igneous##35811 |use Chunk of Crater Lord##113448 |goto Gorgrond 42.80,59.20
]],
},
{
rare=[[Sunclaw]],
level=93,
spot="Gorgrond 44.60,92.20",
currency="GR",
item=118223,
quest=36656,
steps=[[
step
kill Sunclaw##86137 |q 36656 |future |goto Gorgrond 44.60,92.20
|tip Click the climbing ropes to reach to top of the rock.
]],
},
{
currency="AC",
rare=[[Blademaster Ro'gor]],
level=103,
spot="Gorgrond 46.00,33.60",
access="Completionist",
item=120945,
quest=37368,
steps=[[
step
kill Blademaster Ro'gor##86579 |q 37368 |future |goto Gorgrond 46.00,33.60
|tip Ro'gor patrols up and down the hill. You will need a group to kill him.
]],
},
{
rare=[[Charl Doomwing (Horde)]],
level=93,
spot="Gorgrond 46.00,46.80",
currency="|poicurrency",
quest=35815,
item=113456,
steps=[[
step
kill Charl Doomwing##81548
collect 1 Fang of the Doomwing##113456 |n
accept Trophy of Glory: Charl Doomwing##35815 |use Fang of the Doomwing##113456 |goto Gorgrond/0 45.8,50.0
|tip Stand here and Charl will come to you. Be sure to aggro him while he is in flight.
]],
},
{
currency="AC",
rare=[[Horgg]],
level=101,
spot="Gorgrond 46.1,27.2",
access="Completionist",
item=120945,
quest=37365,
steps=[[
step
kill Horgg##86577 |q 37365 |future |goto Gorgrond/0 46.1,27.2
|tip Horgg patrols up and down the road a short distance. You will need a group to defeat him.
]],
},
{
rare=[[Glut]],
level=93,
spot="Gorgrond 46.20,50.80",
currency="GR",
item=118229,
quest=36204,
steps=[[
step
_Enter_ the cave |goto Gorgrond/0 44.7,50.7 < 20
kill Glut##80868 |q 36204 |future |goto Gorgrond 46.20,50.80
]],
},
{
currency="AC",
rare=[[Morgo Kain]],
level=103,
spot="Gorgrond 46.3,23.6",
access="Completionist",
item=120945,
quest=37364,
steps=[[
step
kill Morgo Kain##86582 |q 37364 |future |goto Gorgrond 46.3,23.6
|tip Morgo deals heavy damage and will require a group to defeat. He's the Juggernaut!
]],
},
{
rare=[[Greldrok the Cunning]],
level=93,
spot="Gorgrond 46.80,43.20",
currency="GR",
item=118210,
quest=36186,
steps=[[
step
_Enter_ the cave |goto Gorgrond/0 46.4,45.4
kill Greldrok the Cunning##84431 |q 36186 |future |goto Gorgrond 46.80,43.20
]],
},
{
currency="AC",
rare=[[Inventor Blammo]],
level=101,
spot="Gorgrond 47.60,30.60",
access="Completionist",
item=120945,
quest=37367,
steps=[[
step
kill Inventor Blammo##86574 |q 37367 |future |goto Gorgrond 47.60,30.60
|tip Blammo resides on the south side of The Pit. You will need a group to defeat her.
]],
},
{
rare=[[Rolkor]],
level=93,
spot="Gorgrond 47.80,41.40",
currency="GR",
item=118211,
quest=36393,
steps=[[
step
kill Rolkor##85264 |q 36393 |future |goto Gorgrond 47.80,41.40
]],
},
{
currency="AC",
rare=[[Defector Dazgo]],
level=103,
spot="Gorgrond 48.20,21.00",
access="Completionist",
item=120945,
quest=37362,
steps=[[
step
kill Defector Dazgo##86566 |q 37362 |future |goto Gorgrond 48.20,21.00
|tip He is under the bridge. You will need a group to kill this rare.
]],
},
{
currency="AC",
rare=[[Maniacal Madgard]],
level=103,
spot="Gorgrond 49.00,33.80",
access="Completionist",
item=120945,
quest=37363,
steps=[[
step
kill Maniacal Madgard##86562 |q 37363 |future |goto Gorgrond 49.00,33.80
|tip Madgard will require a group to defeat. He deals extreme physical damage.
]],
},
{
currency="AC",
rare=[[Durp the Hated]],
level=103,
spot="Gorgrond 50.00,23.80",
access="Completionist",
item=120945,
quest=37366,
steps=[[
step
kill Durp the Hated##86571 |q 37366 |future |goto Gorgrond 50.00,23.80
|tip Durp wanders a small area on the northeast side of The Pit. You will need a group to defeat him.
]],
},
{
rare=[[Mandrakor]],
level=93,
spot="Gorgrond 50.60,53.20",
currency="GR",
item=118709,
quest=36178,
steps=[[
step
_Enter_ the cave |goto Gorgrond/0 49.4,53.4 < 20
kill Mandrakor##84406 |q 36178 |future |goto Gorgrond 50.60,53.20
]],
},
{
rare=[[Erosian the Violent (Horde)]],
level=93,
spot="Gorgrond 51.80,41.60",
currency="|poicurrency",
quest=35807,
item=113444,
steps=[[
step
kill Erosian the Violent##81540
collect 1 Crystalized Steam##113444 |n
accept Trophy of Glory: Erosian##35807 |use Crystalized Steam##113444 |goto Gorgrond 51.80,41.60
]],
},
{
rare=[[Khargax the Devourer (Horde)]],
level=93,
spot="Gorgrond 52.40,65.80",
currency="|poicurrency",
quest=35819,
item=113460,
steps=[[
step
kill Khargax the Devourer##81537
collect 1 Shimmering Scale##113460 |n
accept Trophy of Glory: Khargax the Devourer##35819 |use Shimmering Scale##113460 |goto Gorgrond 52.40,65.80
step
talk Durotan##74594
turnin Trophy of Glory: Roardan the Sky Terror##35818 |goto Gorgrond/0 46.00,70.20 |only if itemcount(113459) > 0
turnin Trophy of Glory: Biolante##36503 |goto Gorgrond/0 46.00,70.20 |only if itemcount(116160) > 0
turnin Trophy of Glory: Charl Doomwing##35815 |goto Gorgrond/0 46.00,70.20 |only if itemcount(113456) > 0
turnin Trophy of Glory: Crater Lord Igneous##35811 |goto Gorgrond/0 46.00,70.20 |only if itemcount(113448) > 0
turnin Trophy of Glory: Dessicus##35810 |goto Gorgrond/0 46.00,70.20 |only if itemcount(113447) > 0
turnin Trophy of Glory: Erosian##35807 |goto Gorgrond/0 46.00,70.20 |only if itemcount(113444) > 0
turnin Trophy of Glory: Fungal Praetorian##35814 |goto Gorgrond/0 46.00,70.20 |only if itemcount(113454) > 0
turnin Trophy of Glory: Khargax the Devourer##35819 |goto Gorgrond/0 46.00,70.20 |only if itemcount(113460) > 0
]],
},
{
rare=[[Hive Queen Skrikka]],
level=92,
spot="Gorgrond 52.5,70.1",
currency="GR",
item=118209,
quest=35908,
steps=[[
step
kill Hive Queen Skrikka##83522 |q 35908 |future |goto Gorgrond/0 52.5,70.1
|tip Skrikka is inside the stone building.
]],
},
{
rare=[[Char the Burning]],
level=94,
spot="Gorgrond 53.40,44.60",
currency="GR",
item=118212,
quest=35503,
steps=[[
step
kill Char the Burning##82311 |q 35503 |future |goto Gorgrond 53.40,44.60
|tip He is in the valley between two peaks.
]],
},
{
rare=[[Mother Araneae]],
level=93,
spot="Gorgrond 53.40,78.20",
currency="GR",
item=118208,
quest=34726,
steps=[[
step
_Enter_ the cave |goto Gorgrond/0 52.4,77.0 < 20
kill Mother Araneae##76473 |q 34726 |future |goto Gorgrond 53.40,78.20
]],
},
{
rare=[[Stompalupagus]],
level=92,
spot="Gorgrond 54.20,72.40",
currency="GR",
item=118228,
quest=36837,
steps=[[
step
kill Stompalupagus##86520 |q 36837 |future |goto Gorgrond/0 54.1,72.5
|tip Stompy wanders up and down this ravine.
]],
},
{
rare=[[Hunter Bal'ra]],
level=100,
spot="Gorgrond 55.00,46.20",
currency="AC",
item=120945,
quest=37377,
steps=[[
step
kill Hunter Bal'ra##88672 |q 37377 |future |goto Gorgrond 55.00,46.20
|tip She's next to the pond.
]],
},
{
rare=[[Fossilwood the Petrified]],
level=92,
spot="Gorgrond 57.40,68.60",
currency="GR",
item=118221,
quest=36387,
steps=[[
step
_Go through_ the opening in the thorns |goto Gorgrond/0 58.1,69.0 < 10
kill Fossilwood the Petrified##85250 |q 36387 |future |goto Gorgrond 57.40,68.60
]],
},
{
rare=[[Firestarter Grash]],
level=100,
spot="Gorgrond 58.00,36.40",
currency="AC",
item=120945,
quest=37373,
steps=[[
step
kill Firestarter Grash##88580 |q 37373 |future |goto Gorgrond 58.00,36.40
He can also be found _here_ |goto Gorgrond 72.8,35.8
|tip Grash is easy to spot. He wanders a very small area setting things on fire.
]],
},
{
rare=[[Fungal Praetorian (Horde)]],
level=93,
spot="Gorgrond 58.00,63.60",
currency="|poicurrency",
quest=35814,
item=113454,
steps=[[
step
kill Fungal Praetorian##80785
collect 1 Precious Mushroom##113454 |n
accept Trophy of Glory: Fungal Praetorian##35814 |use Precious Mushroom##113454 |goto Gorgrond 58.00,63.60
]],
},
{
rare=[[Alkali]],
level=100,
spot="Gorgrond 58.60,41.20",
currency="AC",
item=120945,
quest=37371,
steps=[[
step
kill Alkali##86268 |q 37371 |future |goto Gorgrond 58.60,41.20
Alkali can also spawn _here_ |goto Gorgrond 56.2,40.8
Or _here_ |goto Gorgrond 71.3,40.4
|tip Alkali is a lasher located in the pool. Save an interrupt for his Rejuvinate ability.
]],
},
{
rare=[[Swift Onyx Flayer]],
level=100,
spot="Gorgrond 59.6,32.0",
currency="AC",
item=120945,
quest=37374,
steps=[[
step
_Go up_ the hill |goto Gorgrond/0 62.1,34.7 < 15
_Continue up_ the hill |goto Gorgrond/0 61.1,33.5 < 15
_Enter_ the cave |goto Gorgrond/0 60.0,32.6 < 15
kill Swift Onyx Flayer##88582 |q 37374 |future |goto Gorgrond 59.6,32.0
]],
},
{
rare=[[Grove Warden Yal]],
level=100,
spot="Gorgrond 59.7,42.9",
currency="AC",
item=120945,
quest=37375,
steps=[[
step
kill Grove Warden Yal##88583 |q 37375 |future |goto Gorgrond 59.7,42.9
|tip Yal is inside the hut.
]],
},
{
rare=[[Biolante (Horde)]],
level=93,
spot="Gorgrond 60.80,54.00",
currency="|poicurrency",
quest=36503,
item=116160,
steps=[[
step
kill Biolante##75207
collect 1 Writhing Green Tendril##116160 |n
accept Trophy of Glory: Biolante##36503 |use Writhing Green Tendril##116160 |goto Gorgrond 60.80,54.00
|tip Biolante walks around the perimeter of the lake.
]],
},
{
rare=[[Mogamago]],
level=100,
spot="Gorgrond 61.80,39.30",
currency="AC",
item=120945,
quest=37376,
steps=[[
step
kill Mogamago##88586 |q 37376 |future |goto Gorgrond 61.80,39.30
|tip Mogamago is in the middle of the pond.
]],
},
{
currency="AC",
rare=[[Venolasix]],
level=100,
spot="Gorgrond 63.4,30.7",
access="Completionist",
item=120945,
quest=37372,
steps=[[
step
_Go towards_ the large pool of water |goto Gorgrond/0 63.8,33.6
kill Venolasix##86266 |q 37372 |future |goto Gorgrond 63.4,30.7
|tip Venolasix is elite and does significant physical damage.
]],
},
{
rare=[[Sylldross]],
level=93,
spot="Gorgrond 64.00,61.80",
currency="GR",
item=118213,
quest=36794,
steps=[[
step
_Go through_ the narrow channel in the Cimson Fen |goto Gorgrond/0 62.1,61.8
kill Sylldross##86410 |q 36794 |future |goto Gorgrond 64.00,61.80
|tip He swims around the group of large mushrooms.
]],
},
{
currency="GR",
rare=[[Basten + Nultra + Valstil]],
level=103,
spot="Gorgrond 69.20,44.60",
access="Completionist",
item=120945,
quest=37369,
steps=[[
step
kill Basten##86257
kill Nultra##86258
kill Valstil##86259 |q 37369 |future |goto Gorgrond 69.20,44.60
|tip Valstil is the healer of the group and should be dealt with first. You will most likely need a group for this rare.
]],
},
{
rare=[[Depthroot]],
level=100,
spot="Gorgrond 72.6,40.9",
currency="AC",
item=120945,
quest=37370,
steps=[[
step
kill Depthroot##82058 |q 37370 |future |goto Gorgrond 72.6,40.9
|tip Depthroot is an Ancient who wanders a small area.
]],
},
{
rare=[[Typhon]],
level=103,
spot="Gorgrond 76.00,42.00",
access="Completionist",
currency="GR",
quest=37405,
steps=[[
step
kill Typhon##80371 |q 37405 |future |goto Gorgrond 76.00,42.00
|tip Typhon will require a group to kill. He has 5 million health.
]],
},
{
currency="GR",
rare=[[Mu'gra]],
level=103,
spot="Nagrand D 34.00,51.00",
access="Completionist",
item=118659,
quest=37224,
steps=[[
step
kill Mu'gra##87666 |q 37224 |future |goto Nagrand D 34.00,51.00
|tip Mu'gra will require a group to defeat.
]],
},
{
rare=[[Captain Ironbeard]],
level=99,
spot="Nagrand D 34.3,76.9",
currency="GR",
item=116809,
quest=34727,
steps=[[
step
_Swim towards_ the ship |goto Nagrand D/0 35.8,76.4 < 10
kill Captain Ironbeard##79725 |q 34727 |future |goto Nagrand D 34.3,76.9
|tip Avoid the mines in the water, they go boom.
|tip Click the ladder to get on the ship.
]],
},
{
currency="GR",
rare=[[Vileclaw]],
level=103,
spot="Nagrand D 37.00,38.00",
access="Completionist",
item=120172,
quest=37520,
steps=[[
step
kill Vileclaw##88951 |q 37520 |future |goto Nagrand D 37.00,38.00
|tip Vileclaw will require a group to defeat.
]],
},
{
currency="AC",
rare=[[Pit Slayer]],
level=101,
spot="Nagrand D 38.00,19.60",
access="Completionist",
item=120945,
quest=37397,
condition=[[only if haveq(36677) or haveq(36694) or haveq(38193) or haveq(38180)]],
steps=[[
step
As you travel, look for a blue transformation crystal and click it to transform
_Enter_ the Broken Precipice |goto Nagrand D/0 39.3,24.3 < 10
_Go right_ up the path |goto Nagrand D/0 36.9,19.9 < 10
_Continue_ going right |goto Nagrand D/0 38.3,15.4 < 10
_Click_ the Pit Slayer's Trophy while under the effects of a transformation crystal |goto Nagrand D/0 39.8,14.5 < 5
kill Pit Slayer##87846 |q 37397 |future |goto Nagrand D/0 39.8,14.5
]],
},
{
rare=[[Durg Spinecrusher]],
level=100,
spot="Nagrand D 38.60,22.40",
currency="AC",
item=120945,
quest=37395,
steps=[[
step
_Enter_ the Broken Precipice |goto Nagrand D/0 39.3,24.3 < 10
kill Durg Spinecrusher##87788 |q 37395 |future |goto Nagrand D 38.60,22.40
]],
},
{
rare=[[Bonebreaker]],
level=100,
spot="Nagrand D 40.00,16.00",
currency="AC",
item=120945,
quest=37396,
steps=[[
step
_Go up_ the steps |goto Nagrand D/0 38.2,16.2 < 10
kill Bonebreaker##87837 |q 37396 |future |goto Nagrand D 40.00,16.00
|tip Bonebreaker has a very long respawn timer.
]],
},
{
currency="GR",
rare=[[Xelganak]],
level=103,
spot="Nagrand D 41.00,44.00",
access="Completionist",
item=118661,
quest=37226,
steps=[[
step
kill Xelganak##86835 |q 37226 |future |goto Nagrand D 41.00,44.00
|tip You will need a group to defeat this rare.
]],
},
{
currency="AC",
rare=[[Gortag Steelgrip]],
level=100,
spot="Nagrand D 42.00,36.80",
access="Completionist",
item=120945,
quest=37472,
steps=[[
step
kill Mok'gol Pack-Leader##87584
collect 1 Secret Meeting Details##120290 |n |only if itemcount(120290) < 1
_Click_ the horn hanging from the right post of the building to summon Gortag |goto Nagrand D/0 42.1,36.8 |only if itemcount(120290) > 0
kill Krahl Deadeye##87239
kill Gortag Steelgrip##87344 |q 37472 |future |goto Nagrand D/0 42.4,36.5
|tip Deal with Gortag first, as Krahl uses disengage frequenly and will force you to chase him.
]],
},
{
rare=[[Gaz'orda]],
level=99,
spot="Nagrand D 42.20,78.60",
currency="GR",
item=116798,
quest=34725,
steps=[[
step
_Enter_ the cave |goto Nagrand D 42.20,78.60 < 10
kill Gaz'orda##80122 |q 34725 |future |goto Nagrand D/0 43.8,77.7
]],
},
{
rare=[[Ophiis]],
level=99,
spot="Nagrand D 42.80,49.20",
currency="GR",
item=116765,
quest=35875,
steps=[[
step
kill Ophiis##83409 |q 35875 |future |goto Nagrand D 42.80,49.20
|tip Ophiis swims up and down this section of the river.
|tip Interrupt Ophiis as much as possible, especially Shocking Blast.
]],
},
{
rare=[[Brutag Grimblade]],
level=100,
spot="Nagrand D 43.00,36.40",
currency="AC",
item=120945,
quest=37400,
steps=[[
step
kill Brutag Grimblade##87234 |q 37400 |future |goto Nagrand D 43.00,36.40
|tip He's in front of the big tree.
]],
},
{
rare=[[Krahl Deadeye]],
level=100,
spot="Nagrand D 43.80,34.40",
currency="AC",
item=120945,
quest=37473,
steps=[[
step
kill Mok'gol Pack-Leader##87584
collect 1 Secret Meeting Details##120290 |n |only if itemcount(120290) < 1
_Click_ the horn hanging from the right post of the building to summon Gortag |goto Nagrand D/0 42.1,36.8 < 10 |only if itemcount(120290) > 0
kill Krahl Deadeye##87239 |q 37473 |future |goto Nagrand D/0 42.4,36.5
kill Gortag Steelgrip##87344
|tip Deal with Gortag first, as Krahl uses disengage frequenly and will force you to chase him.
]],
},
{
rare=[[Mr. Pinchy Sr.]],
level=100,
spot="Nagrand D 45.80,15.20",
currency="GR",
item=118690,
quest=36229,
steps=[[
step
_Go to_ the Cerulean Lagoon |goto Nagrand D/0 49.7,18.6 < 15
_Continue along_ the shore |goto Nagrand D/0 46.8,17.9 < 15
kill Mr. Pinchy Sr.##84435 |q 36229 |future |goto Nagrand D 45.80,15.20
]],
},
{
rare=[[Karosh Blackwind]],
level=100,
spot="Nagrand D 45.80,34.80",
currency="AC",
item=120945,
quest=37399,
steps=[[
step
kill Karosh Blackwind##86959 |q 37399 |future |goto Nagrand D 45.80,34.80
|tip Karosh spawns in front of the giant stone pillar in Mok'gol Watchpost.
]],
},
{
rare=[[Netherspawn]],
level=99,
spot="Nagrand D 47.60,70.80",
currency="GR",
item=116815,
quest=35865,
steps=[[
step
kill Netherspawn##83401 |q 35865 |future |goto Nagrand D 47.60,70.80
|tip Netherspawn will summon little slimes, you may need a cooldown for this.
]],
},
{
currency="GR",
rare=[[Gagrog the Brutal]],
level=103,
spot="Nagrand D 48.20,22.20",
access="Completionist",
item=118658,
quest=37223,
steps=[[
step
_Cross_ Earthshaker Gorge |goto Nagrand D/0 49.0,24.9 < 15
kill Gagrog the Brutal##86771 |q 37223 |future |goto Nagrand D 48.20,22.20
|tip Gagrog will require a group to defeat.
]],
},
{
currency="GR",
rare=[[Aogexon]],
level=103,
spot="Nagrand D 51.00,16.00",
access="Completionist",
item=118654,
quest=37210,
steps=[[
step
_Go up_ the path |goto Nagrand D/0 53.4,18.9 < 10
kill Aogexon##86774 |q 37210 |future |goto Nagrand D 51.00,16.00
|tip Aogexon will require a group.
]],
},
{
currency="AC",
rare=[[Lernaea]],
level=103,
spot="Nagrand D 52.00,90.00",
access="Completionist",
item=120945,
quest=37408,
steps=[[
step
kill Lernaea##80370 |q 37408 |future |goto Nagrand D 52.00,90.00
|tip Lernaea resides out in the South Sea and will require a group to defeat.
]],
},
{
rare=[[Gar'lua]],
level=99,
spot="Nagrand D 52.20,55.80",
currency="GR",
item=118246,
quest=35715,
steps=[[
step
kill Gar'lua##82764 |q 35715 |future |goto Nagrand D 52.20,55.80
|tip Gar'lua is inside the hut.
]],
},
{
rare=[[Scout Pokhar]],
level=98,
spot="Nagrand D 54.80,61.20",
currency="GR",
item=116797,
quest=35931,
steps=[[
step
_Jump to_ this platform |goto Nagrand D/0 58.7,60.3 < 10
_Jump_ to the second platform |goto Nagrand D/0 58.0,60.9 < 10
_Go up_ the hill |goto Nagrand D/0 56.1,59.4 < 10
kill Scout Pokhar##83634 |q 35931 |future |goto Nagrand D 54.80,61.20
]],
},
{
rare=[[Ru'klaa]],
level=99,
spot="Nagrand D 58.00,84.00",
currency="GR",
item=118688,
quest=35900,
steps=[[
step
_Follow_ the shore |goto Nagrand D/0 54.0,79.5 < 15
_Continue_ through the canyon |goto Nagrand D/0 56.8,81.6 < 15
kill Ru'klaa##83526 |q 35900 |future |goto Nagrand D 58.00,84.00
]],
},
{
rare=[[Pit Beast]],
level=100,
spot="Nagrand D 58.1,18.6",
currency="AC",
item=120945,
quest=37637,
steps=[[
step
_Enter_ the Gorian Proving Grounds |goto Nagrand D/0 56.9,19.4 < 20
kill Pit Beast##88208 |q 37637 |future |goto Nagrand D 58.1,18.6
]],
},
{
currency="AC",
rare=[[Krud the Eviscerator]],
level=100,
spot="Nagrand D 58.20,12.00",
access="Completionist",
item=120945,
quest=37398,
steps=[[
step
kill Krud the Eviscerator##88210 |q 37398 |future |goto Nagrand D/0 58.2,11.7
|tip If Krud is available, you will see a tribute counter at the top of the screen.
|tip Kill mobs until the counter reaches 0, and Krud will become attackable.
]],
},
{
currency="GR",
rare=[[Thek'talon]],
level=100,
spot="Nagrand D 58.40,35.80",
access="Completionist",
item=118660,
quest=37225,
steps=[[
step
kill Thek'talon##86750 |q 37225 |future |goto Nagrand D 58.40,35.80
|tip Thek'talon patrols around the area and will require a group to kill.
]],
},
{
currency="GR",
rare=[[Direhoof]],
level=103,
spot="Nagrand D 60.00,38.00",
access="Completionist",
item=118657,
quest=37222,
steps=[[
step
kill Direhoof##86729 |q 37222 |future |goto Nagrand D/0 60.2,38.7
|tip Direhoof sits atop the waterfall and will require a group to defeat.
]],
},
{
rare=[[Sean Whitesea]],
level=99,
spot="Nagrand D 60.93,47.75",
currency="GR",
item=116834,
quest=35912,
steps=[[
step
click Abandoned Chest##233356
kill Highwayman##83559
kill Sean Whitesea##83542 |q 35912 |future |goto Nagrand D 60.93,47.75
|tip After clicking the chest, Sean and 2 Highwaymen will spawn.
]],
},
{
rare=[[Outrider Duretha]],
level=98,
spot="Nagrand D 61.80,69.00",
currency="GR",
item=116800,
quest=35943,
steps=[[
step
_Cross_ the waterfall |goto Nagrand D/0 63.9,71.2 < 10
kill Outrider Duretha##83680 |q 35943 |future |goto Nagrand D 61.80,69.00
]],
},
{
currency="GR",
rare=[[Bergruu]],
level=103,
spot="Nagrand D 62.60,16.80",
access="Completionist",
item=118655,
quest=37211,
steps=[[
step
map Nagrand D/0
path follow smart; loop on; ants curved; dist 20
path	62.4,27.4	61.6,18.8	61.2,12.4
path	62.6,14.6	65.8,21.2	65.6,28.0
kill Bergruu##86732 |q 37211 |future
|tip Bergruu wanders a small area. You will need a group to defeat him.
]],
},
{
currency="GR",
rare=[[Dekorhan]],
level=103,
spot="Nagrand D 64.20,30.00",
access="Completionist",
item=118656,
quest=37221,
steps=[[
step
kill Dekorhan##86743 |q 37221 |future |goto Nagrand D 64.20,30.00
|tip Dekorhan sits atop the hill and will require a group to defeat.
]],
},
{
rare=[[Tura'aka]],
level=99,
spot="Nagrand D 65.00,39.00",
currency="GR",
item=116814,
quest=35920,
steps=[[
step
kill Tura'aka##83591 |q 35920 |future |goto Nagrand D 65.00,39.00
]],
},
{
rare=[[Gnarlhoof the Rabid]],
level=98,
spot="Nagrand D 66.60,56.60",
currency="GR",
item=116824,
quest=35717,
steps=[[
step
kill Gnarlhoof the Rabid##82778 |q 35717 |future |goto Nagrand D 66.60,56.60
|tip Gnarlhoof is out on a platform overlooking the canyon.
]],
},
{
rare=[[Greatfeather]],
level=98,
spot="Nagrand D 66.80,51.20",
currency="GR",
item=116795,
quest=35714,
steps=[[
step
_Go out_ onto the isthmus |goto Nagrand D/0 67.9,50.3 < 10
kill Greatfeather##82758 |q 35714 |future |goto Nagrand D 66.80,51.20
]],
},
{
rare=[[Flinthide]],
level=99,
spot="Nagrand D 69.8,42.0",
currency="GR",
item=116807,
quest=35893,
steps=[[
step
kill Flinthide##83483 |q 35893 |future |goto Nagrand D 69.8,42.0
|tip Flinthide resides in the boneyard.
]],
},
{
rare=[[Windcaller Korast]],
level=99,
spot="Nagrand D 70.60,29.40",
currency="GR",
item=116808,
quest=35877,
steps=[[
step
_Go onto_ the ridge |goto Nagrand D/0 77.5,25.2 < 20
_Follow_ the path |goto Nagrand D/0 75.6,28.2 < 15
_Continue down_ |goto Nagrand D/0 72.4,31.3 < 15
kill Windcaller Korast##83428 |q 35877 |future |goto Nagrand D 70.60,29.40
]],
},
{
rare=[[Redclaw the Feral]],
level=98,
spot="Nagrand D 73.60,57.80",
currency="GR",
item=118243,
quest=35712,
steps=[[
step
_Go up_ the hill |goto Nagrand D/0 73.6,56.8 < 10
kill Redclaw the Feral##82755 |q 35712 |future |goto Nagrand D 73.60,57.80
|tip He is inside the cave.
]],
},
{
rare=[[Fangler]],
level=98,
spot="Nagrand D 74.80,11.80",
currency="GR",
item=116836,
quest=35836,
steps=[[
step
_Click_ the abandoned fishing rod |goto Nagrand D/0 75.3,10.9
Select: "_Reel it in!_"
kill Fangler##82975 |q 35836 |future |goto Nagrand D 74.80,11.80
|tip You will be pulled into the water in front of Fangler, be prepared.
]],
},
{
rare=[[Soulfang]],
level=98,
spot="Nagrand D 75.60,65.00",
currency="GR",
item=116806,
quest=36128,
steps=[[
step
_Go up_ the path |goto Nagrand D/0 75.3,61.6 < 10
_Cross_ the fallen tree |goto Nagrand D/0 73.9,62.2 < 5
_Continue_ following the path |goto Nagrand D/0 74.5,62.6 < 10
_Go over_ the rocks and planks |goto Nagrand D/0 75.5,62.0 < 10
_Continue_ following the path |goto Nagrand D/0 76.2,61.5 < 10
_Enter_ the cave |goto Nagrand D/0 74.7,64.0 < 10
kill Soulfang##80057 |q 36128 |future |goto Nagrand D 75.60,65.00
]],
},
{
rare=[[Berserk T-300 Series Mark II]],
level=98,
spot="Nagrand D 76.9,64.4",
currency="GR",
item=116823,
quest=35735,
steps=[[
step
_Climb up_ the hill here |goto Nagrand D/0 77.3,65.1 < 5
kill Berserk T-300 Series Mark II##82826 |q 35735 |future |goto Nagrand D 76.9,64.4
|tip Click the detonator in front of the cave to release T-300 Series Mark II.
]],
},
{
rare=[[Hunter Blacktooth]],
level=98,
spot="Nagrand D 80.60,30.40",
currency="GR",
item=118245,
quest=35923,
steps=[[
step
_Go up_ the hill |goto Nagrand D/0 81.2,27.6 < 10
kill Hunter Blacktooth##83603 |q 35923 |future |goto Nagrand D 80.60,30.40
|tip Blacktooth is sitting by a bloody corpse.
]],
},
{
rare=[[Malroc Stonesunder]],
level=98,
spot="Nagrand D 81.20,60.00",
currency="GR",
item=116796,
quest=35932,
steps=[[
step
kill Lieutenant Bruna##83668
kill Malroc Stonesunder##83643 |q 35932 |future |goto Nagrand D 81.20,60.00
|tip He is located inside the hut at the crossroads.
]],
},
{
rare=[[Warmaster Blugthol]],
level=99,
spot="Nagrand D 82.60,76.20",
currency="GR",
item=116805,
quest=34645,
steps=[[
step
_Enter_ this building |goto Nagrand D/0 82.7,75.6 < 10
kill Warmaster Blugthol##79024 |q 34645 |future |goto Nagrand D 82.60,76.20
]],
},
{
rare=[[Graveltooth]],
level=98,
spot="Nagrand D 84.60,36.60",
currency="GR",
item=118689,
quest=36159,
steps=[[
step
If you see crossed swords on the minimap, Graveltooth can spawn
kill Greedy Stonemuncher##84255
kill Graveltooth##84263 |q 36159 |future |goto Nagrand D/0 84.0,36.9
|tip Killing around 15 Greedy Stonemunchers will spawn Graveltooth.
]],
},
{
rare=[[Ancient Blademaster]],
level=98,
spot="Nagrand D 84.60,53.40",
currency="GR",
item=116832,
quest=35778,
steps=[[
step
_Go up_ the hill |goto Nagrand D/0 83.1,52.5 < 10
_Cross_ the bridge |goto Nagrand D/0 84.0,52.1 < 10
Click Blademaster Sword
kill Ancient Blademaster##82899 |q 35778 |future |goto Nagrand D 84.60,53.40
]],
},
{
rare=[[Hyperious]],
level=98,
spot="Nagrand D 87.00,55.00",
currency="GR",
item=116799,
quest=34862,
steps=[[
step
click Summoning Brazier##230671
Light the first Summoning Brazier |goto Nagrand D/0 86.6,56.4 < 5
Light the second Summoning Brazier |goto Nagrand D/0 86.7,55.4 < 5
Light the third Summoning Brazier |goto Nagrand D/0 87.1,54.2 < 5
kill Hyperious##78161 |q 34862 |future |goto Nagrand D/0 87.2,55.2
|tip Hyperious will spawn from the lava when all 3 braziers are lit.
]],
},
{
rare=[[Explorer Nozzand]],
level=98,
spot="Nagrand D 89.00,41.20",
currency="GR",
item=118679,
quest=35623,
steps=[[
step
_Drop down_ from the top of the waterfall here |goto Nagrand D/0 89.4,43.3 < 5
_Run and jump_ into the cave behind the waterfall |goto Nagrand D/0 88.8,42.7 < 8
kill Explorer Nozzand##82486 |q 35623 |future |goto Nagrand D 89.00,41.20
]],
},
{
rare=[[Grizzlemaw]],
level=98,
spot="Nagrand D 89.5,72.8",
currency="GR",
item=118687,
quest=35784,
steps=[[
step
kill Grizzlemaw##82912 |q 35784 |future |goto Nagrand D/0 89.5,72.8
|tip Around the side of the hut.
]],
},
{
rare=[[Gorepetal]],
level=98,
spot="Nagrand D 93.20,28.20",
currency="GR",
item=116916,
quest=35898,
steps=[[
step
_Follow_ the shore |goto Nagrand D/0 92.3,22.2 < 15
_Enter_ the cave |goto Nagrand D/0 94.1,26.5 < 10
click Pristine Lily##233310
kill Gorepetal##83509 |q 35898 |future |goto Nagrand D 93.20,28.20
]],
},
{
rare=[[Nagidna]],
level=100,
spot="Shadowmoon Valley D/0 60.8,89.9",
currency="AC",
item=120945,
quest=37409,
steps=[[
step
_Climb_ the hill |goto Shadowmoon Valley D/0 59.1,88.1
_Enter_ the cave |goto Shadowmoon Valley D/0 59.2,89.8
kill Nagidna##85555 |q 37409 |future |goto Shadowmoon Valley D/0 60.8,89.9
|tip Nagidna is in the back of the cave.
]],
},
{
rare=[[Veloss]],
level=91,
spot="Shadowmoon Valley D 21.60,21.00",
currency="GR",
item=108906,
quest=33640,
steps=[[
step
_Go up_ the hill here |goto Shadowmoon Valley D/0 23.3,18.7
_Drop down_ here |goto Shadowmoon Valley D/0 22.2,19.4
_Swim to_ the small island |goto Shadowmoon Valley D 21.60,21.00
kill Veloss##75482 |q 33640 |future |goto Shadowmoon Valley D 21.60,21.00
]],
},
{
rare=[[Gorum]],
level=91,
spot="Shadowmoon Valley D 21.60,33.00",
currency="GR",
item=113082,
quest=33664,
steps=[[
step
_Enter_ the cave |goto Shadowmoon Valley D/15 79.6,34.4
_Go straight_ through the cave |goto Shadowmoon Valley D/15 39.0,17.2
_Go around_ the path |goto Shadowmoon Valley D/15 25.3,60.6
kill Gorum##76380 |q 33664 |future |goto Shadowmoon Valley D/15 31.1,34.8
]],
},
{
rare=[[Sneevel]],
level=92,
spot="Shadowmoon Valley D 27.60,43.60",
currency="GR",
item=118734,
quest=36880,
steps=[[
step
_Follow the trail_ along the wall |goto Shadowmoon Valley D/0 28.1,38.5
kill Sneevel##86689 |q 36880 |future |goto Shadowmoon Valley D/0 27.5,43.7
|tip Sneevel is inside the hut.
]],
},
{
rare=[[Bahameye]],
level=90,
spot="Shadowmoon Valley D 29.60,06.20",
currency="GR",
item=111666,
quest=35281,
steps=[[
step
_Swim around_ the boat |goto Shadowmoon Valley D/0 28.6,6.6
kill Bahameye##81406 |q 35281 |future |goto Shadowmoon Valley D 29.60,06.20
|tip He is underwater.
]],
},
{
rare=[[Malgosh Shadowkeeper]],
level=100,
spot="Shadowmoon Valley D 29.60,50.80",
currency="AC",
item=120945,
quest=37357,
steps=[[
step
_Enter_ the Pillars of Fate |goto Spires of Arak/0 70.6,27.2
_Continue up_ the ramp |goto Spires of Arak/0 74.3,30.1
_Enter_ the cave |goto Spires of Arak/0 72.1,27.0
kill Malgosh Shadowkeeper##85451 |q 37357 |future |goto Shadowmoon Valley D 29.60,50.80
]],
},
{
rare=[[Ku'targ the Voidseer]],
level=91,
spot="Shadowmoon Valley D 32.20,35.00",
currency="GR",
item=109061,
quest=33039,
steps=[[
step
_Go through_ the gates |goto Shadowmoon Valley D/0 32.7,34.3
kill Ku'targ the Voidseer##72362 |q 33039 |future |goto Shadowmoon Valley D/0 32.5,35.1
|tip He is located in the first hut on the left.
]],
},
{
rare=[[Voidseer Kalurg]],
level=91,
spot="Shadowmoon Valley D 32.60,41.40",
currency="GR",
item=109074,
quest=35847,
steps=[[
step
_Enter Anguish Fortress_ here |goto Shadowmoon Valley D/0 34.9,38.1
_Jump down_ here |goto Shadowmoon Valley D/0 33.6,40.1
kill Shadowmoon Channeller##78135
|tip Kill the Channellers in each corner to release Kalurg.
kill Voidseer Kalurg##83385 |q 35847 |future |goto Shadowmoon Valley D 32.60,41.40
]],
},
{
rare=[[Amaukwa]],
level=91,
spot="Shadowmoon Valley D 37.20,36.40",
currency="GR",
item=109060,
quest=33061,
steps=[[
step
map Shadowmoon Valley D/0
path follow smart; loop on; ants curved; dist 20
path	31.7,32.7	34.7,34.6	37.5,36.7
path	39.5,36.8	41.0,34.9	41.7,31.4
path	40.0,29.8	36.8,29.6	34.8,28.6
path	32.8,28.1	30.3,29.3	29.1,31.0
path	30.9,32.1
_Follow_ the path, searching for Amaukwa
kill Amaukwa##77140 |q 33061 |future
|tip Amaukwa is a chimera that flies in a set path around a small portion of Shadowmoon Valley.
]],
},
{
rare=[[Hypnocroak]],
level=91,
spot="Shadowmoon Valley D 37.40,48.80",
currency="GR",
item=113631,
quest=35558,
steps=[[
step
_Climb the rocks_ behind the waterfall up to the cave entrance |goto Shadowmoon Valley D/0 38.7,49.0
|tip Notice how the rocks make steps leading up the waterfall. You will need to be mounted for some of the longer jumps.
kill Hypnocroak##79524 |q 35558 |future |goto Shadowmoon Valley D 37.40,48.80
]],
},
{
rare=[[Leaf-Reader Kurri]],
level=91,
spot="Shadowmoon Valley D 37.60,14.60",
currency="GR",
item=108907,
quest=33055,
steps=[[
step
_Go down_ to the shore |goto Shadowmoon Valley D/0 38.8,17.0
_Cross_ the water to the small island |goto Shadowmoon Valley D/0 37.9,16.1
kill Leaf-Reader Kurri##72537 |q 33055 |future |goto Shadowmoon Valley D 37.60,14.60
]],
},
{
rare=[[Morva Soultwister]],
level=90,
spot="Shadowmoon Valley D 38.60,70.20",
currency="GR",
item=113559,
quest=35523,
steps=[[
step
_Go to_ the Black Altar of Xan'tish |goto Shadowmoon Valley D/0 38.5,71.6
kill Morva Soultwister##82362 |q 35523 |future |goto Shadowmoon Valley D/0 38.6,70.5
]],
},
{
rare=[[Darkmaster Go'vid]],
level=90,
spot="Shadowmoon Valley D 38.7,83.6",
currency="GR",
item=113548,
quest=35448,
steps=[[
step
_Travel to_ the Forgotten Shore |goto Shadowmoon Valley D/0 40.5,75.5
_Go to_ the Isle of Shadows |goto Shadowmoon Valley D/0 39.9,79.8
_Go to_ the far shore |goto Shadowmoon Valley D/0 38.7,83.6
kill Darkmaster Go'vid##82268 |q 35448 |future |goto Shadowmoon Valley D/0 38.7,83.6
]],
},
{
rare=[[Killmaw]],
level=91,
spot="Shadowmoon Valley D 40.80,44.40",
currency="GR",
item=109078,
quest=33043,
steps=[[
step
kill Killmaw##74206 |q 33043 |future |goto Shadowmoon Valley D/0 40.8,44.6
|tip Killmaw is located between the big rocks.
]],
},
{
rare=[[Windfang Matriarch]],
level=90,
spot="Shadowmoon Valley D 42.80,41.00",
currency="GR",
item=113553,
quest=33038,
steps=[[
step
To kill this Rare Elite, an Alliance player must start this event
|tip You can have a friend who is Alliance help you with this.
kill Windfang Runner##75431+
kill Windfang Matriarch##75434 |q 33038 |future |goto Shadowmoon Valley D 42.80,41.00
]],
},
{
rare=[[Mother Om'ra]],
level=91,
spot="Shadowmoon Valley D 44.00,57.60",
currency="GR",
item=119449,
quest=33642,
steps=[[
step
kill Shadowmoon Darkcaster##78993
|tip Killing the Darkcasters will release Mother Om'ra.
kill Mother Om'ra##88831 |q 33642 |future |goto Shadowmoon Valley D/0 44.0,57.7
]],
},
{
rare=[[Brambleking Fili]],
level=100,
spot="Shadowmoon Valley D 45.0,77.0",
currency="AC",
item=120945,
quest=33383,
steps=[[
step
kill Brambleking Fili##81639 |q 33383 |future |goto Shadowmoon Valley D/0 45.0,77.0
]],
},
{
rare=[[Mad King Sporeon]],
level=91,
spot="Shadowmoon Valley D 45.00,20.90",
currency="GR",
item=113561,
quest=35906,
steps=[[
step
_Follow_ the path |goto Shadowmoon Valley D/0 44.4,22.9
_Enter_ the cave |goto Shadowmoon Valley D/0 44.5,21.1
kill Mad King Sporeon##77310 |q 35906 |future |goto Shadowmoon Valley D 45.00,20.90
]],
},
{
rare=[[Demidos]],
level=103,
spot="Shadowmoon Valley D 46.00,71.60",
currency="AC",
item=120945,
quest=37351,
steps=[[
step
_Jump up_ the rocks here |goto Shadowmoon Valley D/0 47.2,73.6
_Go to_ the area with blue-purple mist on the ground |goto Shadowmoon Valley D 46.00,71.60
kill Demidos##84911 |q 37351 |future |goto Shadowmoon Valley D 46.00,71.60
|tip Demidos is extremely difficult to solo. A 3+ person group is recommended.
]],
},
{
rare=[[Lady Temptessa]],
level=101,
spot="Shadowmoon Valley D 48.00,77.60",
currency="AC",
item=120945,
quest=37355,
steps=[[
step
kill Lady Temptessa##85121 |q 37355 |future |goto Shadowmoon Valley D 48.00,77.60
|tip This Rare will only spawn if the Daily Apexus Quest is available.
]],
},
{
rare=[[Shadowspeaker Niir]],
level=101,
spot="Shadowmoon Valley D 48.20,81.00",
currency="AC",
item=120945,
quest=37354,
steps=[[
step
|tip Clear the area around Niir before engaging him, as you will have to keep moving him out of toxic clouds.
kill Shadowspeaker Niir##85029 |q 37354 |future |goto Shadowmoon Valley D 48.20,81.00
]],
},
{
rare=[[Rai'vosh]],
level=91,
spot="Shadowmoon Valley D 48.60,22.60",
currency="GR",
item=113542,
quest=35553,
steps=[[
step
_Climb_ the hill |goto Shadowmoon Valley D/0 47.7,23.9
_Cross_ the field |goto Shadowmoon Valley D/0 47.3,23.2
kill Rai'vosh##82374 |q 35553 |future |goto Shadowmoon Valley D/0 48.8,22.7
]],
},
{
rare=[[Dark Emanation]],
level=90,
spot="Shadowmoon Valley D 48.60,43.60",
currency="GR",
item=109075,
quest=33064,
steps=[[
step
_Enter_ the cave |goto Shadowmoon Valley D/0 46.6,45.4
_Go down_ the left passage |goto Shadowmoon Valley D/0 48.7,44.8
_Enter_ the small cavern |goto Shadowmoon Valley D 48.60,43.60
kill Shadowmoon Voidwhisperer##77086
|tip Kill the Voidwhisperers to release the Dark Emanation.
kill Dark Emanation##77085 |q 33064 |future |goto Shadowmoon Valley D 48.60,43.60
]],
},
{
rare=[[Yggdrel]],
level=91,
spot="Shadowmoon Valley D 48.80,66.40",
currency="GR",
item=113570,
quest=33389,
steps=[[
step
kill Yggdrel##75435 |q 33389 |future |goto Shadowmoon Valley D 48.80,66.40
|tip When Yggdrel casts Entangling Vine kill it as fast as possible, or it will deal massive damage every 2 seconds until you are dead.
]],
},
{
rare=[[Darktalon]],
level=91,
spot="Shadowmoon Valley D 49.60,42.00",
currency="GR",
item=113541,
quest=35555,
steps=[[
step
_Go to_ the hill |goto Shadowmoon Valley D/0 47.6,43.8
_Continue up_ the hill |goto Shadowmoon Valley D/0 49.6,41.8
kill Darktalon##82411 |q 35555 |future |goto Shadowmoon Valley D/0 49.6,41.8
|tip The bird is the word!
]],
},
{
rare=[[Quartermaster Hershak]],
level=101,
spot="Shadowmoon Valley D 50.20,72.40",
currency="AC",
item=120945,
quest=37352,
steps=[[
step
_Follow_ the road |goto Shadowmoon Valley D/0 48.9,73.3
kill Quartermaster Hershak##84925 |q 37352 |future |goto Shadowmoon Valley D 50.20,72.40
|tip He is inside the building.
]],
},
{
rare=[[Aqualir]],
level=101,
spot="Shadowmoon Valley D 50.80,78.80",
currency="AC",
item=120945,
quest=37356,
steps=[[
step
kill Sargerei Binder##86364
|tip Defeat the Sargerei Binders that are channeling to make Aqualir attackable.
kill Aqualir##86213 |q 37356 |future |goto Shadowmoon Valley D 50.80,78.80
|tip Aqualir can be difficult for players under 630 item level.
]],
},
{
rare=[[Master Sergeant Milgra]],
level=101,
spot="Shadowmoon Valley D 51.80,79.20",
currency="AC",
item=120945,
quest=37353,
steps=[[
step
|tip Milgra patrols the small ridge, crossing back and forth over the bridge.
kill Master Sergeant Milgra##85001 |q 37353 |future |goto Shadowmoon Valley D 51.80,79.20
]],
},
{
rare=[[Ba'ruun]],
level=91,
spot="Shadowmoon Valley D 52.80,16.80",
currency="GR",
item=113540,
quest=35731,
steps=[[
step
_Go to_ Deadwalker Pass |goto Shadowmoon Valley D/0 51.1,24.2
_Follow_ the shore |goto Shadowmoon Valley D/0 52.2,18.0
_Swim across_ to the island |goto Shadowmoon Valley D 52.80,16.80
kill Ba'ruun##82326 |q 35731 |future |goto Shadowmoon Valley D 52.80,16.80
|tip Ba'ruun is a giant Bog Lord standing at the water's edge.
]],
},
{
rare=[[Rockhoof]],
level=91,
spot="Shadowmoon Valley D 53.00,50.60",
currency="GR",
item=109077,
quest=34068,
steps=[[
step
_Go to_ the Verdant Mire |goto Shadowmoon Valley D/0 54.1,49.0
kill Rockhoof##72606 |q 34068 |future |goto Shadowmoon Valley D 53.00,50.60
]],
},
{
rare=[[Venomshade]],
level=91,
spot="Shadowmoon Valley D 54.60,70.60",
currency="GR",
item=108957,
quest=33643,
steps=[[
step
_Follow_ the path into the Blademoon Bloom |goto Shadowmoon Valley D/0 53.0,67.7
kill Venomshade##75492 |q 33643 |future |goto Shadowmoon Valley D/0 54.8,70.2
]],
},
{
rare=[[Insha'tar]],
level=91,
spot="Shadowmoon Valley D 57.40,48.40",
currency="GR",
item=113571,
quest=35909,
steps=[[
step
_Go to_ the rocky clearing |goto Shadowmoon Valley D 57.40,48.40
kill Insha'tar##83553 |q 35909 |future |goto Shadowmoon Valley D 57.40,48.40
]],
},
{
rare=[[Shinri]],
level=92,
spot="Shadowmoon Valley D 61.00,55.20",
currency="GR",
item=113543,
quest=35732,
steps=[[
step
|tip Shinri wanders around the area. You may have to search a bit.
kill Shinri##82415 |q 35732 |future |goto Shadowmoon Valley D 61.00,55.20
]],
},
{
rare=[[Faebright]],
level=91,
spot="Shadowmoon Valley D 61.60,61.80",
currency="GR",
item=113557,
quest=35725,
steps=[[
step
_Follow_ the small trail |goto Shadowmoon Valley D/0 58.3,60.6
_Go up_ the hill through the small pass |goto Shadowmoon Valley D/0 60.4,62.5
_Approach_ Faebright |goto Shadowmoon Valley D 61.60,61.80
kill Faebright##82207 |q 35725 |future |goto Shadowmoon Valley D 61.60,61.80
]],
},
{
rare=[[Slivermaw]],
level=100,
spot="Shadowmoon Valley D 61.7,89.0",
currency="AC",
item=120945,
quest=37411,
steps=[[
step
_Enter_ the cave |goto Shadowmoon Valley D/0 60.9,87.0
kill Slivermaw##85837 |q 37411 |future |goto Shadowmoon Valley D 61.7,89.0
|tip Slivermaw is located in the back of the cave.
]],
},
{
rare=[[Avalanche]],
level=100,
spot="Shadowmoon Valley D 67.8,84.9",
currency="AC",
item=120945,
quest=37410,
steps=[[
step
_Cross the water_ to the island here |goto Shadowmoon Valley D/0 64.3,84.8
_Follow_ this path around |goto Shadowmoon Valley D/0 66.1,84.4
_Enter_ the cave |goto Shadowmoon Valley D/0 66.9,86.5
kill Avalanche##85568 |q 37410 |future |goto Shadowmoon Valley D 67.8,84.9
|tip Avalanche is a level 100 rare mob with around 950,000 health.
]],
},
{
rare=[[Enavra]],
level=91,
spot="Shadowmoon Valley D 67.80,63.80",
currency="GR",
item=113556,
quest=35688,
steps=[[
step
_Go to_ the small island |goto Shadowmoon Valley D/0 67.5,62.7
_Investigate the corpse_ on the ground |goto Shadowmoon Valley D/0 67.9,63.9
clicknpc Enavra##82742
kill Enavra##82676 |q 35688 |future |goto Shadowmoon Valley D/0 67.9,63.9
]],
},
{
rare=[[Gaze]],
level=97,
spot="Spires of Arak 25.20,24.20",
currency="GR",
item=118696,
quest=36943,
steps=[[
step
_Go up_ the trail |goto Spires of Arak/0 28.1,24.6 < 10
click Fel Grimoire##236961 |goto Spires of Arak/0 24.9,25.6 < 8
kill Gaze##86978 |q 36943 |future |goto Spires of Arak 25.20,24.20
]],
},
{
rare=[[Gobblefin]],
level=97,
spot="Spires of Arak 33.00,59.00",
currency="GR",
item=116836,
quest=36305,
steps=[[
step
_Swim around_ the rocks |goto Spires of Arak/0 32.5,56.4
kill Gobblefin##84951 |q 36305 |future |goto Spires of Arak 33.00,59.00
|tip Gobblefin swims around underwater.
]],
},
{
rare=[[Stonespite]],
level=96,
spot="Spires of Arak 33.40,22.00",
currency="GR",
item=116858,
quest=36265,
steps=[[
step
_Go up_ the hidden path |goto Spires of Arak/0 33.4,23.8 < 5
kill Stonespite##84805 |q 36265 |future |goto Spires of Arak 33.40,22.00
]],
},
{
rare=[[Nas Dunberlin]],
level=96,
spot="Spires of Arak 36.40,52.40",
currency="GR",
item=116837,
quest=36129,
steps=[[
step
kill Nas Dunberlin##82247 |q 36129 |future |goto Spires of Arak 36.40,52.40
|tip He is standing on the gallows platform.
]],
},
{
rare=[[Rotcap]],
level=97,
spot="Spires of Arak 38.40,27.80",
currency="GR",
item=118107,
quest=36470,
steps=[[
step
kill Rotcap##85504 |q 36470 |future |goto Spires of Arak 38.40,27.80
]],
},
{
rare=[[Durkath Steelmaw]],
level=96,
spot="Spires of Arak 46.40,28.60",
currency="GR",
item=118198,
quest=36267,
steps=[[
step
kill Durkath Steelmaw##84807 |q 36267 |future |goto Spires of Arak 46.40,28.60
|tip He is inside the little hut.
]],
},
{
rare=[[Blade-Dancer Aeryx]],
level=96,
spot="Spires of Arak 46.80,23.00",
currency="GR",
item=116839,
quest=35599,
steps=[[
step
kill Blade-Dancer Aeryx##80614 |q 35599 |future |goto Spires of Arak 46.80,23.00
]],
},
{
currency="AC",
rare=[[Solar Magnifier]],
level=100,
spot="Spires of Arak 51.80,07.20",
access="Completionist",
item=120945,
quest=37394,
steps=[[
step
kill Solar Magnifier##83990 |q 37394 |future |goto Spires of Arak 51.80,07.20
|tip Run away when Solar Magnifier casts Excavation.
]],
},
{
rare=[[Shadowbark]],
level=96,
spot="Spires of Arak 52.00,35.40",
currency="GR",
item=118201,
quest=36478,
steps=[[
step
kill Shadowbark##79938 |q 36478 |future |goto Spires of Arak 52.00,35.40
]],
},
{
rare=[[Swarmleaf]],
level=97,
spot="Spires of Arak 52.80,54.80",
currency="GR",
item=116857,
quest=36472,
steps=[[
step
kill Swarmleaf##85520 |q 36472 |future |goto Spires of Arak 52.80,54.80
]],
},
{
rare=[[Mutafen]],
level=96,
spot="Spires of Arak 53.20,89.00",
currency="GR",
item=118206,
quest=36396,
steps=[[
step
_Go to_ Pinchwhistle Point |goto Spires of Arak/0 55.5,87.0
kill Mutafen##84417 |q 36396 |future |goto Spires of Arak 53.20,89.00
]],
},
{
rare=[[Talonbreaker]],
level=96,
spot="Spires of Arak 54.60,63.20",
currency="GR",
item=116838,
quest=36278,
steps=[[
step
_Go up_ the hidden path |goto Spires of Arak/0 54.9,60.0
_Continue up_ the path |goto Spires of Arak/0 53.7,62.0
kill Talonbreaker##84836 |q 36278 |future |goto Spires of Arak 54.60,63.20
|tip He is in the little cave.
]],
},
{
rare=[[Festerbloom]],
level=96,
spot="Spires of Arak 54.80,39.60",
currency="GR",
item=118200,
quest=36297,
steps=[[
step
kill Festerbloom##84890 |q 36297 |future |goto Spires of Arak 54.80,39.60
|tip Be sure to clear an area to engage Festerbloom, adds can be a problem.
]],
},
{
rare=[[Jiasska the Sporegorger]],
level=97,
spot="Spires of Arak 56.60,94.60",
currency="GR",
item=118202,
quest=36306,
steps=[[
step
kill Jiasska the Sporegorger##84955 |q 36306 |future |goto Spires of Arak 56.60,94.60
]],
},
{
rare=[[Tesska the Broken]],
level=97,
spot="Spires of Arak 57.40,74.00",
currency="GR",
item=116852,
quest=36254,
steps=[[
step
kill Tesska the Broken##84775 |q 36254 |future |goto Spires of Arak 57.40,74.00
]],
},
{
rare=[[Betsi Boombasket]],
level=97,
spot="Spires of Arak 58.20,84.60",
currency="GR",
item=116907,
quest=36291,
steps=[[
step
kill Betsi Boombasket##84887 |q 36291 |future |goto Spires of Arak 58.20,84.60
|tip She's in the grove of trees.
]],
},
{
rare=[[Sunderthorn]],
level=96,
spot="Spires of Arak 58.60,45.20",
currency="GR",
item=116855,
quest=36298,
steps=[[
step
from Stingtail Drone##84909+, Stingtail Worker##84905+
kill Sunderthorn##84912 |q 36298 |future |goto Spires of Arak 58.60,45.20
|tip Kill Stingtail mobs to spawn Sunderthorn.
]],
},
{
rare=[[Hermit Palefur]],
level=96,
spot="Spires of Arak 59.20,15.00",
currency="GR",
item=118279,
quest=36887,
steps=[[
step
_Go through_ the pass |goto Spires of Arak/0 60.3,19.8
kill Hermit Palefur##86724 |q 36887 |future |goto Spires of Arak 59.20,15.00
]],
},
{
rare=[[Poisonmaster Bortusk]],
level=96,
spot="Spires of Arak 59.40,37.40",
currency="GR",
item=118199,
quest=36279,
steps=[[
step
_Go around_ the shrine |goto Spires of Arak/0 60.5,38.0
kill Poisonmaster Bortusk##84838 |q 36279 |future |goto Spires of Arak 59.40,37.40
]],
},
{
rare=[[Kalos the Bloodbathed]],
level=96,
spot="Spires of Arak 62.60,37.40",
currency="GR",
item=118735,
quest=36268,
steps=[[
step
kill Kalos the Bloodbathed##84810 |q 36268 |future |goto Spires of Arak 62.60,37.40
|tip Clearing the slimes around Kalos is a good idea.
]],
},
{
rare=[[Blightglow]],
level=97,
spot="Spires of Arak 64.00,64.80",
currency="GR",
item=118205,
quest=36283,
steps=[[
step
_Go to_ the water |goto Spires of Arak/0 63.4,64.0
kill Blightglow##84856 |q 36283 |future |goto Spires of Arak 64.00,64.80
|tip Blightglow flies around the area.
]],
},
{
rare=[[Oskiira the Vengeful]],
level=96,
spot="Spires of Arak 66.00,55.00",
currency="GR",
item=118204,
quest=36288,
steps=[[
step
_Go through_ the pass |goto Spires of Arak/0 64.3,51.6
kill Oskiira the Vengeful##84872 |q 36288 |future |goto Spires of Arak/0 65.0,54.2
]],
},
{
rare=[[Sangrikass]],
level=96,
spot="Spires of Arak 69.00,48.80",
currency="GR",
item=118203,
quest=36276,
steps=[[
step
kill Sethekk Serpent Tender##84820
kill Sangrikass##84833 |q 36276 |future |goto Spires of Arak 69.00,48.80
|tip Sangrikas will appear immediately upon attacking the Serpent Tenders.
]],
},
{
currency="AC",
rare=[[Echidna]],
level=103,
spot="Spires of Arak 69.00,54.00",
access="Completionist",
item=120945,
quest=37406,
steps=[[
step
_Go around_ the shore |goto Spires of Arak/0 68.3,57.3
kill Echidna##80372 |q 37406 |future |goto Spires of Arak 69.00,54.00
|tip Echidna patrols up and down the coast. Some searching may be necessary.
|tip Echidna is a level 100 elite with 3.9 million health. You will need a group.
]],
},
{
currency="AC",
rare=[[Kenos the Unraveler]],
level=103,
spot="Spires of Arak 70.40,23.80",
access="Completionist",
item=120945,
quest=37361,
steps=[[
step
_Click_ the portal to enter the shadow realm |goto Spires of Arak/0 72.3,23.6
kill Kenos the Unraveler##85037 |q 37361 |future |goto Spires of Arak 70.40,23.80
|tip This rare REQUIRES 3 people to summon. While in the shadow realm, each player must close a portal.
]],
},
{
currency="AC",
rare=[[Shadow Hulk]],
level=100,
spot="Spires of Arak 71.20,33.80",
access="Completionist",
item=120945,
quest=37392,
steps=[[
step
_Enter_ the cave |goto Spires of Arak/0 73.4,34.8
_Take the center_ passage |goto Spires of Arak/0 71.8,34.6
kill Shadow Hulk##87027 |q 37392 |future |goto Spires of Arak 71.20,33.80
|tip This rare should be considered elite. The Shadow Hulk has annoying stuns and heavy damage.
]],
},
{
currency="AC",
rare=[[Giga Sentinel]],
level=102,
spot="Spires of Arak 71.40,45.00",
access="Completionist",
item=120945,
quest=37393,
steps=[[
step
kill Giga Sentinel##87029 |q 37393 |future |goto Spires of Arak 71.40,45.00
]],
},
{
currency="AC",
rare=[[Formless Nightmare]],
level=103,
spot="Spires of Arak 71.70,20.10",
access="Completionist",
item=120945,
quest=37360,
steps=[[
step
_Click_ the portal to enter the shadow realm |goto Spires of Arak/0 72.3,23.6
kill Formless Nightmare##85036 |q 37360 |future |goto Spires of Arak 71.70,20.10
|tip When the Void Attunement bar reaches 0, you will return to the normal realm. Formless Nightmare will require a group.
]],
},
{
currency="AC",
rare=[[Soul-Twister Torek]],
level=100,
spot="Spires of Arak 72.40,19.40",
access="Completionist",
item=120945,
quest=37358,
steps=[[
step
kill Soul-Twister Torek##85026 |q 37358 |future |goto Spires of Arak 72.40,19.40
|tip Run out of melee range when he casts Void Tempest.
]],
},
{
currency="AC",
rare=[[Voidreaver Urnae]],
level=101,
spot="Spires of Arak 72.90,30.90",
access="Completionist",
item=120945,
quest=37359,
steps=[[
step
kill Voidreaver Urnae##85078 |q 37359 |future |goto Spires of Arak 72.90,30.90
|tip Clear nearby adds before engaging Urnae.
]],
},
{
currency="AC",
rare=[[Gluttonous Giant]],
level=100,
spot="Spires of Arak 74.40,42.80",
access="Completionist",
item=120945,
quest=37390,
steps=[[
step
kill Gluttonous Giant##87019 |q 37390 |future |goto Spires of Arak 74.40,42.80
|tip The giant is on a long respawn timer.
]],
},
{
currency="AC",
rare=[[Mecha Plunderer]],
level=101,
spot="Spires of Arak 74.41,38.64",
access="Completionist",
item=120945,
quest=37391,
steps=[[
step
kill Mecha Plunderer##87026 |q 37391 |future |goto Spires of Arak 74.41,38.64
]],
},
{
rare=[[Grrbrrgle]],
level=97,
spot="Talador 22.2,74.2",
currency="GR",
item=120436,
quest=36919,
steps=[[
step
_Go through_ the pass |goto Talador/0 27.7,67.8
_Cross_ the water |goto Talador/0 24.1,71.5
click A Restless Crate##235673
kill Grrbrrgle##85572 |q 36919 |future |goto Talador/0 22.2,74.2
|tip Opening the crate will spawn Grrbrrgle.
]],
},
{
currency="AC",
rare=[[Lord Korinak]],
level=103,
spot="Talador 30.50,26.40",
access="Completionist",
item=120945,
quest=37345,
steps=[[
step
_Ride_ the elevator up |goto Talador/0 32.5,33.5
_Cross_ the bridge |goto Talador/0 31.3,28.7
kill Lord Korinak##82920 |q 37345 |future |goto Talador 30.50,26.40
]],
},
{
currency="AC",
rare=[[Orumo the Observer]],
level=103,
spot="Talador 31.40,47.50",
access="Completionist",
item=120945,
quest=37344,
steps=[[
step
_Ride_ the elevator up |goto Talador/0 35.7,45.6
_Go up_ the stairs |goto Talador/0 32.5,47.6
kill Orumo the Observer##87668 |q 37344 |future |goto Talador 31.40,47.50
|tip Orumo can only summoned by activating the 5 runes at the same time. These runes have semi-transparent enemies in them. You will need a full group to kill him.
]],
},
{
rare=[[Glimmerwing]],
level=94,
spot="Talador 31.80,63.80",
currency="GR",
item=116113,
quest=34189,
steps=[[
step
kill Glimmerwing##77719 |q 34189 |future |goto Talador 31.80,63.80
|tip Glimmerwing patrols the small clearing.
]],
},
{
currency="AC",
rare=[[Kurlosh Doomfang]],
level=102,
spot="Talador 33.5,37.8",
access="Completionist",
item=120945,
quest=37348,
steps=[[
step
_Enter_ the Residential District |goto Talador/0 35.7,39.8
_Enter_ the building |goto Talador/0 35.7,38.3 < 8
_Go up_ the stairs |goto Talador/0 37.0,38.0 < 8
kill Kurlosh Doomfang##82988 |q 37348 |future |goto Talador 33.5,37.8
]],
},
{
currency="AC",
rare=[[Lady Demlash]],
level=102,
spot="Talador 33.80,37.80",
access="Completionist",
item=120945,
quest=37346,
steps=[[
step
_Enter_ the Residential District |goto Talador/0 35.7,39.8
_Enter_ the building |goto Talador/0 33.8,38.3 < 10
kill Lady Demlash##82942 |q 37346 |future |goto Talador 33.80,37.80
]],
},
{
rare=[[Echo of Murmur]],
level=95,
spot="Talador 34.20,57.00",
item=113670,
quest=34221,
steps=[[
step
_Go right_ at the fork in the road |goto Talador/0 33.8,60.2
kill Shadow Council Summoner##77794
kill Echo of Murmur##77795 |q 34221 |future |goto Talador/0 34.20,57.00
|tip Kill the summoners to free Echo of Murmur.
]],
},
{
currency="AC",
rare=[[Vigilant Paarthos]],
level=102,
spot="Talador 36.80,41.00",
access="Completionist",
item=120945,
quest=37350,
steps=[[
step
kill Vigilant Paarthos##88436 |q 37350 |future |goto Talador 36.80,41.00
|tip Near the fountain in the middle of the park.
]],
},
{
rare=[[Cro Fleshrender]],
level=95,
spot="Talador 37.3,70.5",
currency="GR",
item=116123,
quest=34165,
steps=[[
step
kill Cro Fleshrender##77620 |q 34165 |future |goto Talador 37.3,70.5
|tip He's in the pit.
]],
},
{
currency="AC",
rare=[[Legion Vanguard]],
level=101,
spot="Talador 38.0,20.8",
access="Completionist",
item=120945,
quest=37342,
steps=[[
step
kill Legion Vanguard##88494 |q 37342 |future |goto Talador 38.0,20.8
|tip You must first kill around 10 channeling Soulspeakers before the event starts. You will then have to deal with 3 waves of enemies before the Vanguard emerges.
]],
},
{
currency="AC",
rare=[[Xothear, the Destroyer]],
level=101,
spot="Talador 38.00,14.60",
access="Completionist",
item=120945,
quest=37343,
steps=[[
step
kill Xothear, the Destroyer##82922 |q 37343 |future |goto Talador 38.00,14.60
|tip He is all the way at the end of Shattrath Port.
]],
},
{
currency="AC",
rare=[[Matron of Sin]],
level=103,
spot="Talador 39.00,49.60",
access="Completionist",
item=120945,
quest=37349,
steps=[[
step
_Go up_ the steps |goto Talador/0 40.8,49.7
kill Matron of Sin##82998 |q 37349 |future |goto Talador 39.00,49.60
]],
},
{
currency="AC",
rare=[[Shadowflame Terrorwalker]],
level=102,
spot="Talador 41.00,42.00",
access="Completionist",
item=120945,
quest=37347,
steps=[[
step
kill Shadowflame Terrorwalker##82930 |q 37347 |future |goto Talador 41.00,42.00
|tip He is at the heart of Shattrath Commons.
]],
},
{
rare=[[Shirzir]],
level=95,
spot="Talador 41.80,59.40",
currency="GR",
item=112370,
quest=34671,
steps=[[
step
_Enter_ the crypt |goto Talador/14 47.6,87.1 < 15
_Go straight_ into the large room |goto Talador/14 51.4,45.8 < 15
kill Shirzir##79543 |q 34671 |future |goto Talador/14 67.4,23.3
]],
},
{
currency="AC",
rare=[[Bombardier Gu'gok]],
level=101,
spot="Talador 44.00,38.00",
access="Completionist",
item=120945,
quest=37339,
steps=[[
step
kill Gronnling Mount##87601
kill Bombardier Gu'gok##87597 |q 37339 |future |goto Talador 44.00,38.00
|tip He patrols a short distance. Killing mobs in the area can cause Gu'gok to spawn.
]],
},
{
currency="GR",
rare=[[Strategist Ankor + Archmagus Tekar + Soulbinder Naylana]],
level=101,
spot="Talador 46.00,27.40",
access="Completionist",
item=119350,
quest=37337,
steps=[[
step
kill Strategist Ankor##88071
kill Soulbinder Naylana##88083
kill Archmagus Tekar##88072
Defeat the trio |q 37337 |future |goto Talador 46.00,27.40
]],
},
{
rare=[[Frenzied Golem]],
level=95,
spot="Talador 46.2,54.8",
currency="GR",
item=113287,
quest=34145,
steps=[[
step
kill Frenzied Golem##77614 |q 34145 |future |goto Talador 46.2,54.8
]],
},
{
currency="AC",
rare=[[Avatar of Socrethar]],
level=101,
spot="Talador 46.60,35.20",
access="Completionist",
item=120945,
quest=37338,
steps=[[
step
_Enter_ Shattrath Commons |goto Talador/0 50.1,35.1 < 20
kill Avatar of Socrethar##88043 |q 37338 |future |goto Talador 46.60,35.20
|tip He patrols a short distance.
]],
},
{
currency="AC",
rare=[[Gug'tol]],
level=101,
spot="Talador 47.60,39.00",
access="Completionist",
item=120945,
quest=37340,
steps=[[
step
_Enter_ Shattrath Commons |goto Talador/0 50.0,35.2 < 20
_Go up_ the steps |goto Talador/0 47.5,36.4 < 15
_Enter_ the building |goto Talador/0 47.6,37.8 < 10
kill Gug'tol##83019 |q 37340 |future |goto Talador 47.60,39.00
]],
},
{
currency="AC",
rare=[[Haakun the All-Consuming]],
level=101,
spot="Talador 48.00,25.00",
access="Completionist",
item=120945,
quest=37312,
steps=[[
step
_Enter_ the building |goto Talador/0 46.9,27.5 < 15
_Go up_ the stairs |goto Talador/0 47.5,25.8 < 7
_Go to_ the balcony |goto Talador/0 47.8,25.7 < 10
kill Haakun the All-Consuming##83008 |q 37312 |future |goto Talador 48.00,25.00
]],
},
{
rare=[[Lo'marg Jawcrusher]],
level=95,
spot="Talador 49.00,92.00",
currency="GR",
item=116070,
quest=34208,
steps=[[
step
_Enter_ Telmor |goto Talador/0 48.7,87.4
_Ride_ the elevator to the top |goto Talador/0 49.1,91.9
kill Lo'marg Jawcrusher##77784 |q 34208 |future |goto Talador/0 49.2,92.3
]],
},
{
currency="AC",
rare=[[Felfire Consort]],
level=101,
spot="Talador 50.20,35.20",
access="Completionist",
item=120945,
quest=37341,
steps=[[
step
kill Felfire Consort##82992 |q 37341 |future |goto Talador 50.20,35.20
|tip Felfire Consort is currently bugged and will most often be found in another location evading.
]],
},
{
rare=[[Felbark]],
level=95,
spot="Talador 50.80,83.80",
currency="GR",
item=112373,
quest=35018,
steps=[[
step
kill Felbark##80204 |q 35018 |future |goto Talador 50.80,83.80
|tip Felbark walks a circle around the big tree.
]],
},
{
rare=[[Talonpriest Zorkra]],
level=95,
spot="Talador 53.8,91.4",
currency="GR",
item=116110,
quest=34668,
steps=[[
step
_Go up_ the road |goto Talador/0 53.2,89.0
kill Talonpriest Zorkra##79485 |q 34668 |future |goto Talador 53.8,91.4
]],
},
{
rare=[[Yazheera the Incinerator]],
level=94,
spot="Talador 53.80,25.80",
currency="GR",
item=112263,
quest=34135,
steps=[[
step
kill Yazheera the Incinerator##77529 |q 34135 |future |goto Talador 53.80,25.80
]],
},
{
rare=[[Kharazos the Triumphant + Galzomar + Sikthiss]],
level=95,
spot="Talador 56.60,63.60",
currency="GR",
item=116122,
quest=35219,
steps=[[
step
kill Galzomar##78713
kill Sikthiss##78715
kill Kharazos the Triumphant##78710 |q 35219 |future |goto Talador 56.60,63.60
|tip One of these three rares can spawn at a time. They all share the same quest and rewards.
]],
},
{
rare=[[Taladorantula]],
level=95,
spot="Talador 59.00,88.00",
currency="GR",
item=116126,
quest=34171,
steps=[[
step
_Go up_ the hill |goto Talador/0 58.2,85.5
kill Taladorantula##77634 |q 34171 |future |goto Talador 59.00,88.00
|tip Run around stomping on little spiders to get Taladorantula to spawn.
]],
},
{
rare=[[Ra'kahn]],
level=95,
spot="Talador 59.50,59.60",
currency="GR",
item=116112,
quest=34196,
steps=[[
step
_Enter_ the cave |goto Talador/0 60.0,57.7 < 20
kill Ra'kahn##77741 |q 34196 |future |goto Talador 59.50,59.60
]],
},
{
rare=[[Hammertooth]],
level=94,
spot="Talador 62.00,46.00",
currency="GR",
item=116124,
quest=34185,
steps=[[
step
kill Hammertooth##77715 |q 34185 |future |goto Talador 62.00,46.00
|tip Hammertooth swims all around this side of the lake.
]],
},
{
rare=[[Underseer Bloodmane]],
level=94,
spot="Talador 63.80,20.70",
currency="GR",
item=112475,
quest=34945,
steps=[[
step
_Go up_ the hill |goto Talador/0 62.2,22.9 < 20
_Enter_ the building |goto Talador/0 63.2,22.1 < 10
kill Underseer Bloodmane##80524 |q 34945 |future |goto Talador 63.80,20.70
]],
},
{
rare=[[Klikixx]],
level=95,
spot="Talador 66.80,85.40",
currency="GR",
item=116125,
quest=34498,
steps=[[
step
_Enter_ the cave |goto Talador/0 61.3,84.2 < 15
_Go up_ the right ramp |goto Talador/0 64.4,86.6 < 15
_Continue_ going down the side passage with spider eggs |goto Talador/0 66.4,87.9 < 15
kill Klikixx##78872 |q 34498 |future |goto Talador 66.80,85.40
]],
},
{
rare=[[Gennadian]],
level=94,
spot="Talador 67.40,80.60",
currency="GR",
item=116075,
quest=34929,
steps=[[
step
_Go through_ the stone passage |goto Talador/0 68.4,80.9
kill Gennadian##80471 |q 34929 |future |goto Talador 67.40,80.60
]],
},
{
rare=[[Steeltusk]],
level=95,
spot="Talador 67.8,35.5",
currency="GR",
item=117562,
quest=36858,
steps=[[
step
kill Steeltusk##86549 |q 36858 |future |goto Talador 67.8,35.5
]],
},
{
rare=[[Dr. Gloom]],
level=94,
spot="Talador 68.4,15.8",
currency="GR",
item=112499,
quest=34142,
steps=[[
step
_Go through_ the pass |goto Talador/0 67.5,17.0 < 20
kill Dr. Gloom##77561 |q 34142 |future |goto Talador/0 68.4,15.8
]],
},
{
rare=[[Wandering Vindicator]],
level=94,
spot="Talador 69.7,33.2",
currency="GR",
item=112261,
quest=34205,
steps=[[
step
kill Wandering Vindicator##77776 |goto Talador 69.60,33.40
click Hope##227859 |q 34205 |future |goto Talador/0 69.7,33.2
|tip Stuck in the ground near a tombstone and shield.
]],
},
{
rare=[[Hen-Mother Hami]],
level=94,
spot="Talador 78.00,50.40",
currency="GR",
item=112369,
quest=34167,
steps=[[
step
kill Hen-Mother Hami##77626 |q 34167 |future |goto Talador 78.00,50.40
|tip Hami flies all around this area.
]],
},
{
rare=[[No'losh]],
level=95,
spot="Talador 86.40,30.40",
currency="GR",
item=116077,
quest=34859,
steps=[[
step
kill No'losh##79334 |q 34859 |future |goto Talador 86.40,30.40
|tip No'losh walks up and down the ravine.
]],
},
{
currency="AC",
rare=[[Argosh the Destroyer]],
level=100,
spot="Tanaan Jungle/0 52.60,40.20",
access="Completionist",
item=127326,
quest=38430,
steps=[[
step
_Cross_ the field |goto Tanaan Jungle/0 53.7,44.2
_Jump across_ the rocks |goto Tanaan Jungle/0 53.3,41.5 < 8
kill Felblood Warlock##89754 |tip Kill the warlocks to release Argosh.
kill Argosh the Destroyer##91871 |quest 38430 |goto Tanaan Jungle/0 52.60,40.20 |future
|tip This rare will require a group to defeat.
]],
},
{
rare=[[Bilkor the Thrower]],
level=100,
spot="Tanaan Jungle/0 23.8,51.9",
currency="AC",
item=120945,
quest=38262,
steps=[[
step
kill Bilkor the Thrower##90884 |quest 38262 |goto Tanaan Jungle/0 23.8,51.9 |future
|tip Bilkor is inside the hut.
]],
},
{
rare=[[Captain Grok'mar]],
level=100,
spot="Tanaan Jungle/0 48.6,57.4",
currency="AC",
item=120945,
quest=38820,
steps=[[
step
kill Captain Grok'mar##93264 |quest 38820 |goto Tanaan Jungle/0 48.6,57.4 |future
|tip He sits on a chair next to the torch.
]],
},
{
currency="AC",
rare=[[Drakum]],
level=102,
spot="Tanaan Jungle/0 83.6,43.6",
access="Completionist",
item=108631,
quest=40105,
steps=[[
step
_Enter_ the building |goto Tanaan Jungle/0 84.4,43.8 < 10 |walk
kill Drakum##98283 |quest 40105 |goto Tanaan Jungle/0 83.6,43.6 |future
|tip You must have Draenor Flying to reach this rare.
|tip This rare will require a group to defeat.
]],
},
{
currency="AC",
rare=[[Gondar]],
level=102,
spot="Tanaan Jungle/0 80.6,56.4",
access="Completionist",
item=108633,
quest=40107,
steps=[[
step
_Jump onto_ the temple grounds |goto Tanaan Jungle/0 75.6,55.4 < 10
_Go up_ the sets of stairs |goto 76.8,55.2 < 15
_Reach_ the top of the temple |goto 78.8,54.3 < 15
_Enter_ the building |goto Tanaan Jungle/0 80.7,56.3 < 10 |walk
kill Gondar##98284 |quest 40106 |goto Tanaan Jungle/0 80.6,56.4 |future
|tip This rare will require a group to defeat.
]],
},
{
rare=[[The Iron Houndmaster]],
level=100,
spot="Tanaan Jungle 12.7,56.9",
currency="AC",
item=120945,
quest=38751,
steps=[[
step
Click the Strongpoint banner |goto Tanaan Jungle/0 12.6,56.9 < 5
|tip Successfully defending the Strongpoint will spawn the Iron Houndmaster.
kill The Iron Houndmaster##92977 |goto Tanaan Jungle 12.7,56.9 |quest 38751 |future
]],
},
{
rare=[[Tho'gar Gorefist]],
level=100,
spot="Tanaan Jungle 13.60,56.80",
currency="AC",
item=120945,
quest=38747,
steps=[[
step
kill Tho'gar Gorefist##91243 |quest 38747 |goto Tanaan Jungle 13.60,56.80 |future
|tip This rare will require a group to defeat.
]],
},
{
rare=[[Commander Krag'goth]],
level=100,
spot="Tanaan Jungle 15.00,54.20",
currency="AC",
item=120945,
quest=38746,
steps=[[
step
_Enter_ the building |goto Tanaan Jungle/0 15.4,54.8 < 8
kill Commander Krag'goth##91232 |quest 38746 |goto Tanaan Jungle 15.00,54.20 |future
|tip This rare will require a group to defeat. He is all the way at the top of the tower.
]],
},
{
currency="OIL",
rare=[[Terrorfist]],
level=100,
spot="Tanaan Jungle 15.40,63.40",
access="Completionist",
item=128025,
quest=39288,
steps=[[
step
_Go up_ the hill |goto Tanaan Jungle/0 13.7,60.2 < 15
kill Terrorfist##95044 |quest 39288 |goto Tanaan Jungle 15.40,63.40 |future
|tip Terrorfist patrols up and down the hill. This rare will require a group to defeat.
]],
},
{
rare=[[Szirek the Twisted]],
level=100,
spot="Tanaan Jungle 16.00,57.20",
currency="AC",
item=120945,
quest=38752,
steps=[[
step
Click the Strongpoint banner |goto Tanaan Jungle/0 15.8,57.5 < 5
|tip Successfully defending the Strongpoint will spawn Szirek.
kill Szirek the Twisted##93001 |quest 38752 |goto Tanaan Jungle 16.00,57.20 |future
|tip This rare will require a group to defeat. He sits atop the massive war machine and jumps down when Strongpoint - East is captured.
]],
},
{
currency="AC",
rare=[[Grannok]],
level=100,
spot="Tanaan Jungle 16.00,59.20",
access="Completionist",
item=120945,
quest=38750,
steps=[[
step
_Enter_ the building |goto Tanaan Jungle/0 16.4,58.7 < 8
kill Grannok##93057 |quest 38750 |goto Tanaan Jungle 16.00,59.20 |future
|tip This rare will require a group to defeat. He is all the way at the top of the tower.
]],
},
{
rare=[[Podlord Wakkawam]],
level=100,
spot="Tanaan Jungle 17.0,48.7",
currency="AC",
item=120945,
quest=38282,
steps=[[
step
_Enter_ the cave |goto Tanaan Jungle/0 17.1,50.5 < 8
kill Podlord Wakkawam##91374 |quest 38282 |goto Tanaan Jungle 17.0,48.7 |future
]],
},
{
currency="AC",
rare=[[Rasthe]],
level=100,
spot="Tanaan Jungle 17.3,42.9",
access="Completionist",
item=120945,
quest=38034,
steps=[[
step
_Proceed_ through the arch |goto Tanaan Jungle/0 18.2,41.1 < 8
kill Rasthe##90782 |quest 38034 |goto Tanaan Jungle 17.3,42.9 |future
|tip This rare will require a group to defeat.
]],
},
{
rare=[[Driss Vile]],
level=100,
spot="Tanaan Jungle 19.80,53.60",
currency="AC",
item=120945,
quest=38736,
steps=[[
step
_Go up_ the path |goto Tanaan Jungle/0 21.0,52.8 < 8
click Grappling Hook and Rope##241659 |goto Tanaan Jungle/0 20.6,53.5 < 5
|tip Use the Grappling Hook to reach the top of the tower.
kill Driss Vile##93028 |quest 38736 |goto Tanaan Jungle 19.80,53.60 |future
]],
},
{
rare=[[High Priest Ikzan]],
level=100,
spot="Tanaan Jungle 20.40,40.00",
currency="AC",
item=120945,
quest=38028,
steps=[[
step
kill High Priest Ikzan##90777 |quest 38028 |goto Tanaan Jungle 20.40,40.00 |future
]],
},
{
rare=[[Rogond the Tracker]],
level=100,
spot="Tanaan Jungle 20.5,49.6",
currency="AC",
item=120945,
quest=38263,
steps=[[
step
_Enter_ the hut |goto Tanaan Jungle/0 20.6,50.0 < 6
kill Rogond the Tracker##90885 |quest 38263 |goto Tanaan Jungle/0 20.5,49.6 |future
]],
},
{
currency="AC",
rare=[[Remnant of the Blood Moon]],
level=100,
spot="Tanaan Jungle 22.20,50.80",
access="Completionist",
item=120945,
quest=39159,
steps=[[
step
kill Remnant of the Blood Moon##91227 |quest 39159 |goto Tanaan Jungle 22.20,50.80 |future
|tip Drained Blood Crystals are found all over the area.
|tip This rare will require you and your allies to collect 125 Drained Blood Crystals and use them at this altar. You will see a progress bar at the top of the screen.
|tip This rare will require a group to defeat.
]],
},
{
currency="OIL",
rare=[[Deathtalon]],
level=100,
spot="Tanaan Jungle 23.0,40.2",
access="Completionist",
item=120945,
quest=39287,
steps=[[
step
kill Deathtalon##95053 |quest 39287 |goto Tanaan Jungle/0 23.0,40.2 |future
|tip Deathtalon sits atop the broken pillar. This rare will require a group to defeat.
]],
},
{
rare=[[Dorg the Bloody]],
level=100,
spot="Tanaan Jungle 23.20,48.40",
currency="AC",
item=120945,
quest=38265,
steps=[[
step
kill Dorg the Bloody##90887 |quest 38265 |goto Tanaan Jungle 23.20,48.40 |future
|tip Dorg wanders around this area.
]],
},
{
rare=[[Bloodhunter Zulk]],
level=100,
spot="Tanaan Jungle 24.7,50.1",
currency="AC",
item=120945,
quest=38266,
steps=[[
step
kill Bloodhunter Zulk##90936 |quest 38266 |goto Tanaan Jungle/0 24.7,50.1 |future
|tip Zulk spawns at the tower and patrolls the paths.
|tip Zulk wanders around this area.
]],
},
{
currency="AC",
rare=[[Lady Oran]],
level=100,
spot="Tanaan Jungle 25.40,77.20",
access="Completionist",
item=120945,
quest=38029,
steps=[[
step
kill Lady Oran##90438 |quest 38029 |goto Tanaan Jungle 25.40,77.20 |future
]],
},
{
rare=[[Drivnul]],
level=100,
spot="Tanaan Jungle 25.50,46.20",
currency="AC",
item=120945,
quest=38264,
steps=[[
step
_Go up_ the road |goto Tanaan Jungle/0 23.8,47.4 < 20
kill Drivnul##90888 |quest 38264 |goto Tanaan Jungle 25.50,46.20 |future
|tip He is in the blood pit.
]],
},
{
currency="AC",
rare=[[Mistress Thavra]],
level=100,
spot="Tanaan Jungle 25.80,79.00",
access="Completionist",
item=120945,
quest=38032,
steps=[[
step
_Enter_ the mine |goto Tanaan Jungle/0 29.3,70.9 < 8
_Go up_ the ramp on the right |goto Tanaan Jungle/0 26.2,74.8 < 10
_Continue around_ the tunnel |goto Tanaan Jungle/0 24.2,75.7 < 12
kill Mistress Thavra##90442 |quest 38032 |goto Tanaan Jungle 25.80,79.00 |future
]],
},
{
rare=[[Relgor]],
level=100,
spot="Tanaan Jungle 26.30,54.20",
currency="AC",
item=120945,
quest=38496,
steps=[[
step
kill Relgor##92197 |quest 38496 |goto Tanaan Jungle 26.30,54.20 |future
]],
},
{
rare=[[Jax'zor]],
level=100,
spot="Tanaan Jungle 26.6,75.3",
currency="AC",
item=120945,
quest=38030,
steps=[[
step
_Enter_ the mine |goto Tanaan Jungle/0 29.3,70.9 < 8
kill Jax'zor##90437 |quest 38030 |goto Tanaan Jungle 26.6,75.3 |future
|tip Jax'zor wanders a small area around the bottom floor of the cavern.
]],
},
{
currency="AC",
rare=[[Varyx the Damned]],
level=100,
spot="Tanaan Jungle 27.60,32.80",
access="Completionist",
item=120945,
quest=37937,
steps=[[
step
_Note:_ This rare currently has phasing issues and often cannot be engaged!
_Go through_ the arch |goto Tanaan Jungle/0 23.8,36.9 < 8
_Go up_ the hill |goto Tanaan Jungle/0 25.6,34.1 < 12
kill Varyx the Damned##92451 |quest 37937 |goto Tanaan Jungle 27.60,32.80 |future
|tip This rare will require a group to defeat. To release him, the five beams binding him must be interrupted by players standing in their path.
]],
},
{
currency="AC",
rare=[[Felbore]],
level=100,
spot="Tanaan Jungle 28.60,50.80",
access="Completionist",
item=120945,
quest=38775,
steps=[[
step
_Enter_ the cave |goto Tanaan Jungle/0 30.9,53.1 < 10
kill Felbore##93168 |quest 38775 |goto Tanaan Jungle 28.60,50.80 |future
|tip This rare will require a group to defeat.
]],
},
{
rare=[[Ceraxas]],
level=100,
spot="Tanaan Jungle 31.40,68.00",
currency="AC",
item=120945,
quest=38031,
steps=[[
step
_Go up_ the steps |goto Tanaan Jungle/0 30.5,68.6 < 10
kill Ceraxas##90434 |quest 38031 |goto Tanaan Jungle 31.40,68.00 |future
]],
},
{
rare=[[Imp-Master Valessa]],
level=100,
spot="Tanaan Jungle 31.60,72.80",
currency="AC",
item=120945,
quest=38026,
steps=[[
step
_Enter_ the Temple of Sha'naar |goto Tanaan Jungle/0 28.7,67.1 < 8
kill Imp-Master Valessa##90429 |quest 38026 |goto Tanaan Jungle 31.60,72.80 |future
]],
},
{
currency="OIL",
rare=[[Vengeance]],
level=100,
spot="Tanaan Jungle 32.40,74.00",
access="Completionist",
item=120945,
quest=39290,
steps=[[
step
kill Vengeance##95054 |quest 39290 |goto Tanaan Jungle 32.40,74.00 |future
|tip This rare will require a group to defeat.
]],
},
{
rare=[[Gorabosh]],
level=100,
spot="Tanaan Jungle 33.00,35.70",
currency="AC",
item=120945,
quest=38709,
steps=[[
step
_Go up_ the path |goto Tanaan Jungle/0 31.4,36.4
kill Gorabosh##92941 |quest 38709 |goto Tanaan Jungle 33.00,35.70 |future
]],
},
{
currency="AC",
rare=[[Thromma the Gutslicer]],
level=100,
spot="Tanaan Jungle 34.00,44.40",
access="Completionist",
item=120945,
quest=38620,
steps=[[
step
_Enter_ Ironmonger's Hold |goto Tanaan Jungle/0 32.4,48.9 < 12
_Go to_ the end of the hallway |goto Tanaan Jungle/0 34.8,47.2 < 12
_Continue along_ the left passage |goto Tanaan Jungle/0 34.5,45.5 < 12
_Drop down_ the hole |goto Tanaan Jungle/0 35.0,44.5 < 5
kill Thromma the Gutslicer##92574 |quest 38620 |goto Tanaan Jungle 34.00,44.40 |future
]],
},
{
rare=[[The Goreclaw]],
level=100,
spot="Tanaan Jungle 34.30,72.50",
currency="AC",
item=120945,
quest=38654,
steps=[[
step
_Enter_ the cave |goto Tanaan Jungle/0 36.1,72.5 < 8
kill The Goreclaw##92694 |quest 38654 |goto Tanaan Jungle 34.30,72.50 |future
|tip The Goreclaw is in the back of the cave on the giant rock.
]],
},
{
currency="AC",
rare=[[Glub'glok]],
level=100,
spot="Tanaan Jungle 34.60,78.20",
access="Completionist",
item=120945,
quest=38764,
steps=[[
step
_Enter_ the cave |goto Tanaan Jungle/0 37.3,75.9 < 10
_Go into_ the big cavern |goto Tanaan Jungle/0 35.4,76.3 < 12
_Swim across_ the pool |goto Tanaan Jungle/0 34.4,79.6
_Follow_ the ledge |goto Tanaan Jungle/0 34.9,78.8 < 8
_Jump across_ the rocks |goto Tanaan Jungle/0 35.1,78.1
click Ironbeard's Treasure##241718
|tip Opening the chest will spawn Glub'glok, be ready.
kill Glub'glok##93125 |quest 38764 |goto Tanaan Jungle 34.60,78.20 |future
]],
},
{
rare=[[Belgork]],
level=100,
spot="Tanaan Jungle 35.40,46.80",
currency="AC",
item=120945,
quest=38609,
steps=[[
step
_Enter_ Ironmonger's Hold |goto Tanaan Jungle/0 32.4,48.9 < 12
_Go to_ the end of the hallway |goto Tanaan Jungle/0 34.8,47.2 < 12
kill Belgork##92552 |quest 38609 |goto Tanaan Jungle 35.40,46.80 |future
]],
},
{
rare=[[Captain Ironbeard]],
level=100,
spot="Tanaan Jungle 36.20,79.70",
currency="AC",
item=120945,
quest=38756,
steps=[[
step
_Enter_ the cave |goto Tanaan Jungle/0 37.3,75.9 < 10
_Go down_ the left passage |goto Tanaan Jungle/0 36.9,77.8 < 10
kill Captain Ironbeard ##93076 |quest 38756 |goto Tanaan Jungle 36.20,79.70 |future
]],
},
{
rare=[[Zoug the Heavy]],
level=100,
spot="Tanaan Jungle 37.00,32.80",
currency="AC",
item=120945,
quest=39045,
steps=[[
step
_Go up_ the ramp |goto Tanaan Jungle/0 37.7,35.2
kill Zoug the Heavy##90122 |quest 39045 |goto Tanaan Jungle 37.00,32.80 |future
]],
},
{
currency="AC",
rare=[[The Night Haunter]],
level=100,
spot="Tanaan Jungle 39.40,73.80",
access="Completionist",
item=120945,
quest=38632,
steps=[[
step
clicknpc Mutilated Corpse##92651
|tip You must click corpses to gain 10 stacks of the night haunter debuff.
kill The Night Haunter##92636 |quest 38632 |goto Tanaan Jungle 39.40,73.80 |future
|tip This rare will require a group to defeat.
]],
},
{
rare=[[Harbormaster Korak]],
level=100,
spot="Tanaan Jungle 39.60,32.60",
currency="AC",
item=120945,
quest=39046,
steps=[[
step
kill Harbormaster Korak##90094 |quest 39046 |goto Tanaan Jungle 39.60,32.60 |future
]],
},
{
currency="AC",
rare=[[Kris'kar the Unredeemed]],
level=100,
spot="Tanaan Jungle 39.60,68.10",
access="Completionist",
item=120945,
quest=38825,
steps=[[
step
_Enter_ the cave |goto Tanaan Jungle/0 42.3,68.9 < 10
_Go through_ the side passage |goto Tanaan Jungle/0 40.5,69.3 < 8
kill Kris'kar the Unredeemed##93279 |quest 38825 |goto Tanaan Jungle 39.60,68.10 |future
]],
},
{
rare=[[Bramblefell]],
level=100,
spot="Tanaan Jungle 40.80,70.00",
currency="AC",
item=120945,
quest=38209,
steps=[[
step
kill Bramblefell##91093 |quest 38209 |goto Tanaan Jungle 40.80,70.00 |future
|tip Bramblefell wanders around the marsh in a small area.
]],
},
{
rare=[[Sylissa]],
level=100,
spot="Tanaan Jungle 41.00,78.80",
currency="AC",
item=120945,
quest=38628,
steps=[[
step
kill Sylissa##92606 |quest 38628 |goto Tanaan Jungle 41.00,78.80 |future
|tip Sylissa is at the end of the river by the waterfall.
]],
},
{
rare=[[Keravnos]],
level=103,
spot="Tanaan Jungle 41.40,79.60",
access="Completionist",
currency="GR",
quest=37407,
steps=[[
step
kill Keravnos##80398 |q 37407 |future |goto Tanaan Jungle 41.40,79.60
|tip Keravnos resides at the mouth of the river flowing out of Tanaan Jungle and will require a group to defeat.
]],
},
{
currency="AC",
rare=[[Rendrak]],
level=100,
spot="Tanaan Jungle 41.80,73.80",
access="Completionist",
item=120945,
quest=38631,
steps=[[
step
kill Direwing Predator##89788
|tip They fly around Zorammarsh.
collect 10 Smelly Musk Gland##124045 |only if not completedq(38631)
Use the Musk Glands to summon Rendrak |use Smelly Musk Gland##124045 |only if itemcount(124045) > 9
kill Rendrak##92627 |quest 38631 |goto Tanaan Jungle 41.80,73.80 |future
|tip Rendrak flies around this area.
]],
},
{
rare=[[Sergeant Mor'grak]],
level=100,
spot="Tanaan Jungle 42.40,37.30",
currency="AC",
item=120945,
quest=37953,
steps=[[
step
kill Sergeant Mor'grak##90024 |quest 37953 |goto Tanaan Jungle 42.40,37.30 |future
|tip He wanders around the training grounds.
]],
},
{
rare=[[Cindral the Wildfire]],
level=100,
spot="Tanaan Jungle 44.60,37.60",
currency="AC",
item=120945,
quest=37990,
steps=[[
step
kill Remnant of Cindral##90522
|tip Killing the Remnant will spawn Cindral.
_Enter_ the building |goto Tanaan Jungle/0 43.9,37.0 < 8
kill Cindral the Wildfire##90519 |quest 37990 |goto Tanaan Jungle 44.60,37.60 |future
]],
},
{
rare=[[Felsmith Damorka]],
level=100,
spot="Tanaan Jungle 45.80,47.00",
currency="AC",
item=120945,
quest=38634,
steps=[[
step
kill Felsmith Damorka##92647 |quest 38634 |goto Tanaan Jungle 45.80,47.00 |future
]],
},
{
rare=[[Grand Warlock Nethekurse]],
level=100,
spot="Tanaan Jungle 46.20,42.40",
currency="AC",
item=120945,
quest=38400,
steps=[[
step
kill Grand Warlock Nethekurse##16807 |quest 38400 |goto Tanaan Jungle 46.20,42.40 |future
]],
},
{
currency="OIL",
rare=[[Doomroller]],
level=100,
spot="Tanaan Jungle 47.00,52.60",
access="Completionist",
item=128025,
quest=39289,
steps=[[
step
kill Doomroller##95056 |quest 39289 |goto Tanaan Jungle 47.00,52.60 |future
|tip This rare will require a group to defeat.
]],
},
{
currency="AC",
rare=[[Zeter'el]],
level=100,
spot="Tanaan Jungle 48.40,28.50",
access="Completionist",
item=120945,
quest=38207,
steps=[[
step
_Cross_ the fel water here |goto Tanaan Jungle/0 51.7,32.5 < 12
_Continue_ along the path |goto Tanaan Jungle/0 49.0,33.0 < 12
_Enter_ the Blighted Hollow |goto Tanaan Jungle/0 48.1,32.7 < 10
kill Zeter'el##91087 |quest 38207 |goto Tanaan Jungle 48.40,28.50 |future
]],
},
{
currency="AC",
rare=[[The Blackfang]],
level=100,
spot="Tanaan Jungle 48.80,72.80",
access="Completionist",
item=120945,
quest=38597,
steps=[[
step
_Enter_ the cave |goto Tanaan Jungle/0 49.8,74.3 < 10
kill The Blackfang##92465 |quest 38597 |goto Tanaan Jungle 48.80,72.80 |future
|tip This rare will require a group to defeat.
]],
},
{
rare=[[Shadowthrash]],
level=100,
spot="Tanaan Jungle 49.70,61.40",
currency="AC",
item=120945,
quest=38812,
steps=[[
step
kill Shadowthrash##93236 |quest 38812 |goto Tanaan Jungle 49.70,61.40 |future
|tip Shadowthrash is next to the broken tree.
]],
},
{
rare=[[Executor Riloth]],
level=100,
spot="Tanaan Jungle 50.00,36.00",
currency="AC",
item=120945,
quest=38411,
steps=[[
step
_Go up_ the hill |goto Tanaan Jungle/0 47.5,38.8
_Cross_ the bridge |goto Tanaan Jungle/0 48.6,36.6 < 10
kill Executor Riloth##91727 |quest 38411 |goto Tanaan Jungle 50.00,36.00 |future
|tip Riloth patrols a large area. You will have to search around for him.
]],
},
{
rare=[[Commander Org'mok]],
level=100,
spot="Tanaan Jungle 51.00,46.00",
currency="AC",
item=120945,
quest=38749,
steps=[[
step
kill Commander Org'mok##89675 |quest 38749 |goto Tanaan Jungle 51.00,46.00 |future
]],
},
{
currency="AC",
rare=[[Bleeding Hollow Horror]],
level=100,
spot="Tanaan Jungle 51.00,74.40",
access="Completionist",
item=120945,
quest=38696,
steps=[[
step
_Enter_ the cave |goto Tanaan Jungle/0 44.7,77.6
_Proceed into_ the cavern |goto Tanaan Jungle/0 46.8,76.3 < 12
_Go up_ the ramp |goto Tanaan Jungle/0 48.8,77.9 < 12
_Continue around_ the path |goto Tanaan Jungle/0 51.1,77.4 < 15
kill Bleeding Hollow Horror##92657 |quest 38696 |goto Tanaan Jungle 51.00,74.40 |future
|tip This rare will require a group to defeat.
]],
},
{
currency="AC",
rare=[[Krell the Serene]],
level=100,
spot="Tanaan Jungle 52.0,83.9",
access="Completionist",
item=120945,
quest=38605,
steps=[[
step
_Go up_ the path |goto Tanaan Jungle/0 51.5,79.8 < 12
kill Krell the Serene##92517 |quest 38605 |goto Tanaan Jungle 52.0,83.9 |future
|tip This rare will require a group to defeat.
]],
},
{
rare=[[Magwia]],
level=100,
spot="Tanaan Jungle 52.20,65.10",
currency="AC",
item=120945,
quest=38726,
steps=[[
step
kill Magwia##93002 |quest 38726 |goto Tanaan Jungle 52.20,65.10 |future
|tip Magwai is in the small clearing next to the pond.
]],
},
{
currency="AC",
rare=[[Felspark]],
level=100,
spot="Tanaan Jungle 52.80,25.60",
access="Completionist",
item=120945,
quest=38211,
steps=[[
step
kill Felspark##91098 |quest 38211 |goto Tanaan Jungle 52.80,25.60 |future
|tip Felspark is in the fel water pool. This rare will require a group to defeat.
]],
},
{
currency="AC",
rare=[[Overlord Ma'gruth]],
level=100,
spot="Tanaan Jungle 53.00,20.00",
access="Completionist",
item=120945,
quest=38580,
steps=[[
step
_Go up_ the path |goto Tanaan Jungle/0 55.2,22.6
kill Overlord Ma'gruth##92411 |quest 38580 |goto Tanaan Jungle 53.00,20.00 |future
|tip He patrols a very small area. This rare will require a group to defeat.
]],
},
{
currency="AC",
rare=[[Painmistress Selora]],
level=100,
spot="Tanaan Jungle 53.60,21.70",
access="Completionist",
item=120945,
quest=38557,
steps=[[
step
|tip In order to start this event, you must kill the corruptors around the glowing portal before new ones spawn.
|tip Immediately after, three waves of elite demons will come out. Kill them and Selora will spawn.
kill Painmistress Selora##92274 |quest 38557 |goto Tanaan Jungle 53.60,21.70 |future
|tip This rare will require a group to defeat.
]],
},
{
currency="AC",
rare=[[Putre'thar]],
level=100,
spot="Tanaan Jungle 57.10,22.80",
access="Completionist",
item=120945,
quest=38457,
steps=[[
step
kill Putre'thar##91009 |quest 38457 |goto Tanaan Jungle 57.10,22.80 |future
|tip Putre'thar patrols around the felhunter pit. This rare will require a group to defeat.
]],
},
{
rare=[[Broodlord Ixkor]],
level=100,
spot="Tanaan Jungle 57.60,67.20",
currency="AC",
item=120945,
quest=38589,
steps=[[
step
_Follow_ the path |goto Tanaan Jungle/0 55.6,65.6 < 15
kill Broodlord Ixkor##92429 |quest 38589 |goto Tanaan Jungle/0 57.8,67.3 |future
]],
},
{
currency="AC",
rare=[[Xanzith the Everlasting]],
level=100,
spot="Tanaan Jungle 60.20,20.90",
access="Completionist",
item=120945,
quest=38579,
steps=[[
step
kill Xanzith the Everlasting##92408 |quest 38579 |goto Tanaan Jungle 60.20,20.90 |future
|tip Xanzith is just in front of the pool of fel water. This rare will require a group to defeat.
]],
},
{
currency="AC",
rare=[[Soulslicer]],
level=100,
spot="Tanaan Jungle 62.60,72.00",
access="Completionist",
item=120945,
quest=38600,
steps=[[
step
_Follow_ the shore |goto Tanaan Jungle/0 59.4,74.7 < 12
kill Soulslicer##92495 |quest 38600 |goto Tanaan Jungle/0 62.7,72.2 |future
|tip This rare will require a group to defeat.
]],
},
{
currency="AC",
rare=[[Gloomtalon]],
level=100,
spot="Tanaan Jungle 63.60,81.10",
access="Completionist",
item=120945,
quest=38604,
steps=[[
step
_Enter_ the cave |goto Tanaan Jungle/0 62.6,80.1 < 10
kill Gloomtalon##92508 |quest 38604 |goto Tanaan Jungle 63.60,81.10 |future
|tip This rare will require a group to defeat.
]],
},
{
rare=[[Steelsnout]],
level=100,
spot="Tanaan Jungle 65.40,36.60",
currency="AC",
item=120945,
quest=38700,
steps=[[
step
_Go up_ the hill |goto Tanaan Jungle/0 64.0,37.4
kill Steelsnout##92887 |quest 38700 |goto Tanaan Jungle 65.40,36.60 |future
]],
},
}
