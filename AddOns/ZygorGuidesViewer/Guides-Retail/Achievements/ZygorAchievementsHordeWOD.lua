local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("AchievementsHWOD") then return end
ZygorGuidesViewer.GuideMenuTier = "WOD"
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Collections\\Awake the Drakes",{
achieveid={9713},
patch='60002',
description="\nCollect the drake mounts.",
},[[
step
_Collect the following drake mounts_ listed below:
_Click here_ for Azure Drake |achieve 9713/5 |confirm |next "Pets & Mounts Guide\\Mounts\\Flying Mounts\\Raid Mounts\\Azure Drake"
_Click here_ for Bronze Drake |achieve 9713/1 |confirm |next "Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dungeon Mounts\\Bronze Drake"
_Click here_ for Black Drake |achieve 9713/4 |confirm |next "Pets & Mounts Guide\\Mounts\\Flying Mounts\\Raid Mounts\\Black Drake"
_Click here_ for Blazing Drake |achieve 9713/6 |confirm |next "Pets & Mounts Guide\\Mounts\\Flying Mounts\\Raid Mounts\\Blazing Drake"
_Click here_ for Blue Drake |achieve 9713/2 |confirm |next "Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dungeon Mounts\\Blue Drake"
_Click here_ for Onyxian Drake |achieve 9713/9 |confirm |next "Pets & Mounts Guide\\Mounts\\Flying Mounts\\Raid Mounts\\Onyxian Drake"
_Click here_ for Purple Netherwing Drake |achieve 9713/7 |confirm |next "Pets & Mounts Guide\\Mounts\\Flying Mounts\\Reputation Mounts\\Netherwing Drakes\\Quests & Dailies"
_Click here_ for Red Drake |achieve 9713/3 |confirm |next "Pets & Mounts Guide\\Mounts\\Flying Mounts\\Reputation Mounts\\Red Drake"
_Click here_ for Twilight Drake |achieve 9713/8 |confirm |next "Pets & Mounts Guide\\Mounts\\Flying Mounts\\Raid Mounts\\Twilight Drake"
step
.' Congratulations, you have earned the _Awake the Drakes_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Collections\\Mountacular",{
achieveid={9599},
patch='60001',
description="\nObtain 250 mounts.",
},[[
step
_Please refer to our individual mount guides_ to earn this achievement.
Obtain 250 mounts. |achieve 9599
step
Congratulations, you have earned the _Mountacular_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Collections\\Lord of Reins",{
achieveid={10355},
patch='60202',
description="\nObtain 300 mounts.",
},[[
step
Please _refer_ to our individual mount guides to earn this achievement
_Obtain_ 300 mounts |achieve 10355
|tip You can select any mount from the Mounts panel by pressing "Shift+P" and searching our database.
step
Congratulations, you have _earned_ the Lord of Reins Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Collections\\What A Strange, Interdimensional Trip It's Been",{
achieveid={9838},
patch='60100',
description="\nThis guide will help you earn the What A Strange, Interdimensional Trip It's Been achievement.",
},[[
stickystart "pepe"
step
This achievement will require you to kill the final bosses of all dungeons and raids up to Blackrock Foundry
|tip Set aside a considerable amount of time to earn this achievement.
confirm
step
Enter the _Heroic Bloodmaul Slag Mines_ dungeon |goto Bloodmaul Slag Mines/1 51.5,83.3 < 100 |c |noway |or
|' |confirm |or
step
map Bloodmaul Slag Mines/1
path follow smart; loop off; ants curved; dist 15
path	52.2,84.5	49.1,78.7	48.5,69.5
path	45.4,64.5	43.8,56.3	44.0,48.8
path	48.9,40.7	49.2,24.7	56.4,23.3
path	67.9,22.8
kill Gug'rokk##74790
|tip Stay out of magma pools and kill Unstable Slag Elementals before they reach their kiln.
|tip Your primary concern is surviving. If you die, you will lose the Pepe buff and will need to kill the boss again.
Defeat Gug'rokk with Pepe |achieve 9838/1
step
Enter the _Heroic Iron Docks_ dungeon. |goto Iron Docks/1 30.6,44.5 |c |noway |or
|' |confirm |or
step
map Iron Docks/1
path follow smart; loop off; ants curved; dist 15
path	30.8,44.1	35.3,38.6	39.8,36.3
path	48.5,38.3	48.6,47.1	38.5,49.8
path	33.7,59.7	34.3,69.8	41.3,70.6
path	50.4,70.7	54.0,80.8	66.4,76.6
path	68.5,81.6	72.1,81.3	72.8,75.5
path	85.7,76.1	85.8,58.9	87.3,47.8
path	85.7,33.9	86.3,22.6	78.6,20.8
path	77.3,26.6	71.8,27.7	69.4,34.9
path	68.7,45.8
kill Skulloc##83612
|tip Be very careful during cannon barrage.
|tip Your primary concern is surviving. If you die, you will lose the Pepe buff and will need to kill the boss again.
Defeat Skulloc with Pepe |achieve 9838/2
step
Enter the _Upper Blackrock Spire_ dungeon |goto Upper Blackrock Spire 2/1 37.3,29.1 < 100 |c |noway |or
|' |confirm |or
step
map Upper Blackrock Spire 2/1
path follow smart; loop off; ants curved; dist 15
path	37.2,31.1	36.8,20.1	33.4,14.5
path	30.4,13.4	Upper Blackrock Spire 2/2 30.4,20.7
path	Upper Blackrock Spire 2/3 30.4,32.2	Upper Blackrock Spire 2/2 30.7,41.2
path	Upper Blackrock Spire 2/3 28.0,39.3	Upper Blackrock Spire 2/3 28.4,34.0
path	Upper Blackrock Spire 2/3 36.5,34.0	Upper Blackrock Spire 2/3 36.5,28.1
path	Upper Blackrock Spire 2/3 47.0,28.2	Upper Blackrock Spire 2/3 49.1,35.8
path	Upper Blackrock Spire 2/3 54.6,35.8	Upper Blackrock Spire 2/3 54.6,45.6
path	Upper Blackrock Spire 2/3 41.4,45.9	Upper Blackrock Spire 2/3 37.6,51.1
path	Upper Blackrock Spire 2/3 28.2,51.4	Upper Blackrock Spire 2/3 21.1,49.4
path	Upper Blackrock Spire 2/3 17.0,47.4	Upper Blackrock Spire 2/3 12.8,47.8
kill Warlord Zaela##77120
|tip Stay spread out and avoid Black Iron Cyclone.
|tip Your primary concern is surviving. If you die, you will lose the Pepe buff and will need to kill the boss again.
Defeat Warlord Zaela with Pepe |achieve 9838/3
step
Enter _The Everbloom_ dungeon |goto The Everbloom/1 72.4,55.7 < 20 |c |or
|' |confirm |or
step
map The Everbloom/1
path follow smart; loop off; ants curved; dist 15
path	72.4,55.6	67.0,49.7	64.7,54.6
path	60.5,59.8	56.2,60.1	53.7,51.6
path	56.6,46.4	63.5,48.2	68.5,45.0
path	70.5,35.1	70.9,25.4	67.3,21.6
path	62.0,27.9	57.3,23.5	56.4,33.3
path	52.0,34.3	44.0,35.2
path	The Everbloom/2 44.5,89.8	The Everbloom/2 45.3,66.5
kill Yalnu##83846
|tip Your primary concern is surviving. If you die, you will lose the Pepe buff and will need to kill the boss again.
|tip Fight your way through the instance and go through the portal.
Defeat Yalnu with Pepe |achieve 9838/4
step
Enter the _Grimrail Depot_ dungeon |goto Grimrail Depot/1 32.4,31.9 < 20 |c |noway |or
|' |confirm |or
step
kill Skylord Tovra##80005
|tip Dodge Spinning Spear and avoid standing in Diffused Energy.
|tip Your primary concern is surviving. If you die, you will lose the Pepe buff and will need to kill the boss again.
Defeat Skylord Tovra with Pepe |achieve 9838/5 |goto Grimrail Depot/4 8.6,51.0
step
Enter the _Skyreach_ dungeon |goto Skyreach/1 60.6,25.1 < 20 |c |noway |or
|' |confirm |or
step
map Skyreach/1
path follow smart; loop off; ants curved; dist 15
path	61.1,26.3	58.5,18.5	65.1,13.1
path	68.4,22.8	64.8,28.1	63.0,38.3
path	59.0,46.7	54.1,50.6	52.2,58.7
path	45.9,63.8	48.5,69.3	44.8,77.4
path	41.1,76.6	39.4,71.7	36.2,70.8
path	36.0,64.9	38.9,63.5	42.1,69.2
path	Skyreach/2 26.1,79.7	Skyreach/2 33.4,74.4
path	Skyreach/2 44.9,74.1	Skyreach/2 53.3,55.0
path	Skyreach/2 45.2,42.2	Skyreach/2 49.7,32.0
kill High Sage Viryx##76266
|tip Interrupt Solar Burst and kill the mob summoned by Cast Down.
|tip Your primary concern is surviving. If you die, you will lose the Pepe buff and will need to kill the boss again.
Defeat High Sage Viryx with Pepe |achieve 9838/6
step
Enter the _Shadowmoon Burial Grounds_ dungeon |goto Shadowmoon Burial Grounds/1 12.0,68.4 < 20 |c |noway |or
|' |confirm |or
step
map Shadowmoon Burial Grounds/1
path follow smart; loop off; ants curved; dist 15
path	12.2,68.4	16.7,54.5	23.9,50.8
path	36.9,51.0	38.2,63.0	43.2,73.5
path	52.5,79.5	52.6,66.2	42.9,65.7
path	44.2,50.9	59.3,51.0	70.5,51.1
path	77.5,55.0	78.9,68.8	85.5,67.8
path	Shadowmoon Burial Grounds/2 7.2,61.3	Shadowmoon Burial Grounds/2 16.6,58.1
path	Shadowmoon Burial Grounds/2 22.1,63.5	Shadowmoon Burial Grounds/2 21.2,70.7
path	Shadowmoon Burial Grounds/2 17.3,70.4	Shadowmoon Burial Grounds/2 17.7,63.8
path	Shadowmoon Burial Grounds/2 25.2,59.9	Shadowmoon Burial Grounds/2 39.1,51.2
path	Shadowmoon Burial Grounds/2 49.9,57.9	Shadowmoon Burial Grounds/2 57.5,62.6
path	Shadowmoon Burial Grounds/2 65.2,67.3	Shadowmoon Burial Grounds/3 37.6,36.8
kill Ner'zhul##76407
|tip Move away from Omen of Death and kill a target quickly during Ritual of Bones.
|tip Your primary concern is surviving. If you die, you will lose the Pepe buff and will need to kill the boss again.
Defeat Ner'zhul with Pepe |achieve 9838/7
step
Enter the _Heroic Auchindoun_ dungeon |goto Auchindoun/1 49.7,90.2 |c |noway |or
|' |confirm |or
step
map Auchindoun/1
path follow smart; loop off; ants curved; dist 15
path	49.7,89.8	49.7,80.0	49.7,66.6
path	55.8,65.8	62.1,61.4	66.5,56.0
path	70.5,46.3	68.3,38.7	63.8,32.4
path	49.7,41.6	49.7,32.4
kill Teron'gor##77734
|tip You will have to kill the first boss on the left side, then follow the path and use the transporters to reach Teron'gor.
|tip Interrupt Chaos Bolt and Drain Life. Don't stand near players targeted with Seed of Malevolence.
|tip Your primary concern is surviving. If you die, you will lose the Pepe buff and will need to kill the boss again.
Defeat Teron'gor with Pepe |achieve 9838/8
step
Press _I_ and queue for Highmaul - Walled City |goto Highmaul/2 36.5,35.5 |noway |c |or
'| confirm |or
step
kill Kargath Bladefist##78714
|tip Avoid standing in front of Kargath during Berserker Rush.
|tip Your primary concern is surviving. If you die, you will lose the Pepe buff and will need to kill the boss again.
Defeat Kargath Bladefist with Pepe |achieve 9838/9 |goto Highmaul/3 54.70,57.60
step
map Highmaul/3
path follow smart; loop off; ants curved; dist 15
path	49.2,51.3	Highmaul/1 55.2,74.4
path	Highmaul/1 55.4,67.1	Highmaul/1 56.3,62.3
kill The Butcher##77404
|tip Move out if your Gushing Wounds starts dealing too much damage.
|tip Your primary concern is surviving. If you die, you will lose the Pepe buff and will need to kill the boss again.
Defeat The Butcher with Pepe |achieve 9838/10
step
map Highmaul/1
path follow smart; loop off; ants curved; dist 15
path	55.2,53.3	49.4,48.4	49.1,41.6
path	52.0,35.0	51.6,26.1
kill Brackenspore##78491
|tip Interrupt Decay cast by Fungal Flesh-Eaters.
|tip Your primary concern is surviving. If you die, you will lose the Pepe buff and will need to kill the boss again.
Defeat Brackenspore with Pepe |achieve 9838/11
step
Press _I_ and queue for Highmaul - Arcane Sanctum |goto Highmaul/3 38.9,38.7 |noway |c |or
'| confirm |or
step
map Highmaul/1
path follow smart; loop off; ants curved; dist 20
path	54.8,74.3	49.1,86.8	44.2,86.0
path	40.0,81.5	37.00,74.80
kill Tectus##78948
|tip Avoid standing in targeted AoE areas to minimize incoming damage.
|tip Your primary concern is surviving. If you die, you will lose the Pepe buff and will need to kill the boss again.
Defeat Tectus with Pepe |achieve 9838/12
step
map Highmaul/1
path follow smart; loop off; ants curved; dist 20
path	36.0,73.7	35.0,67.1	36.4,60.7
path	30.5,60.5
_Follow_ the path and enter the portal |goto Highmaul/4 82.9,90.3 |noway |c
step
map Highmaul/4
path follow smart; loop off; ants curved; dist 20
path	82.9,90.3	87.0,75.2	83.6,62.3
path	68.0,42.6	55.10,36.30
kill Pol##78238
kill Phemos##78237
|tip Avoid standing in Shield Charge and Whirlwind.
|tip Your primary concern is surviving. If you die, you will lose the Pepe buff and will need to kill the boss again.
Defeat the Twin Ogron with Pepe |achieve 9838/13
step
map Highmaul/4
path follow smart; loop off; ants curved; dist 20
path	56.0,34.5	51.4,41.7	40.4,37.2
path	40.0,43.3	46.3,50.7	43.9,55.0
path	37.80,65.4
kill Ko'ragh##79015
|tip Be very wary of other players during this encounter. It is easy to take fatal damage quickly by other people ignoring the fight mechanics.
|tip Your primary concern is surviving. If you die, you will lose the Pepe buff and will need to kill the boss again.
Defeat Ko'ragh with Pepe |achieve 9838/14
step
Press _I_ and queue for Highmaul - Imperator's Rise |goto Highmaul/6 47.1,29.5 |noway |c |or
'| confirm |or
step
_Go through_ the doors |goto Highmaul/6 45.8,60.6 < 12 |noway |c
step
kill Imperator Mar'gok##77428
|tip Be sure a tank has threat on the Gorian Reaver before attacking it.
|tip Stay spread out to minimize collateral damage.
|tip Your primary concern is surviving. If you die, you will lose the Pepe buff and will need to kill the boss again.
Defeat Imperator Mar'gok with Pepe |achieve 9838/15 |goto Highmaul/6 45.3,75.0
step
Press _I_ and queue for Blackrock Foundry - Slagworks |goto Blackrock Foundry/3 40.9,86.4 |noway |c |or
'| confirm |or
step
map Blackrock Foundry/3
path follow smart; loop off; ants curved; dist 15
path	40.9,86.4	40.9,63.4	44.8,54.9
path	51.8,54.6	56.8,60.2	54.1,68.4
path	47.4,68.4
_Follow_ the path |goto Blackrock Foundry/3 47.4,68.4 < 8 |noway |c
step
map Blackrock Foundry/2
path follow smart; loop off; ants curved; dist 15
path	62.3,53.7	54.9,53.7	55.5,64.4
path	56.0,79.3	52.4,83.5	47.5,83.9
path	37.10,82.30
kill Oregorger##77182
|tip Interrupt Blackrock Barrage. Avoid Oregorger during the rolling phase.
|tip Your primary concern is surviving. If you die, you will lose the Pepe buff and will need to kill the boss again.
Defeat Oregorger with Pepe |achieve 9838/16
step
map Blackrock Foundry/2
path follow smart; loop off; ants curved; dist 15
path	46.5,84.0	51.7,83.9	55.5,79.6
path	55.0,62.0	55.0,47.6	56.5,28.6
path	49.9,24.3	39.3,20.5
kill Gruul##76877
|tip Stay away from others when affected by Petrifying Slam.
|tip Do not stand in Cave-In spots.
|tip Your primary concern is surviving. If you die, you will lose the Pepe buff and will need to kill the boss again.
Defeat Gruul with Pepe |achieve 9838/17
step
map Blackrock Foundry/2
path follow smart; loop off; ants curved; dist 15
path	44.5,23.6	56.0,28.1	55.4,44.1
path	55.1,53.5	60.1,53.7	61.1,64.1
path	67.0,63.8	67.5,54.8	60.7,53.4
path	46.1,53.7
kill Heart of the Mountain##76806
|tip Delay attacking adds until they are picked up and avoid the AoE mechanics.
|tip Your primary concern is surviving. If you die, you will lose the Pepe buff and will need to kill the boss again.
Defeat The Blast Furnace with Pepe |achieve 9838/22
step
Press _I_ and queue for Blackrock Foundry - The Black Forge |goto Blackrock Foundry/3 40.9,86.4 |noway |c |or
'| confirm |or
step
map Blackrock Foundry/3
path follow smart; loop off; ants curved; dist 15
path	40.9,86.4	40.9,62.9	32.9,53.8
path	28.6,53.7
_Follow_ the path, riding the elevator to the bottom floor |goto Blackrock Foundry/1 46.9,57.2 < 8 |noway |c
step
_Go through_ the door |goto Blackrock Foundry/1 47.5,67.1 < 8 |noway |c
step
kill Hans'gar##76973
kill Franzok##76974
|tip Avoid Searing Plates and Stamping Presses, these can lead to a quick death.
|tip Your primary concern is surviving. If you die, you will lose the Pepe buff and will need to kill the boss again.
Defeat Hans'gar and Franzok with Pepe |achieve 9838/18 |goto Blackrock Foundry/1 47.5,76.4
step
map Blackrock Foundry/1
path follow smart; loop off; ants curved; dist 15
path	47.6,66.0	46.7,61.4	44.2,57.5
path	40.7,58.7	40.5,73.8	35.1,76.7
path	31.0,76.8	25.0,76.8	18.8,76.8
kill Flamebender Ka'graz##76814
|tip Kill Cinder Wolves quickly and avoid their fire attacks.
|tip Your primary concern is surviving. If you die, you will lose the Pepe buff and will need to kill the boss again.
Defeat Flamebender Ka'graz with Pepe |achieve 9838/19
step
map Blackrock Foundry/1
path follow smart; loop off; ants curved; dist 15
path	21.6,76.7	31.1,76.6	31.1,71.1
path	33.1,66.4	33.1,52.2	33.1,41.3
kill Kromog##77692
|tip Get gripped by a rune to avoid the heavy damage from Tundering Blows.
|tip Your primary concern is surviving. If you die, you will lose the Pepe buff and will need to kill the boss again.
Defeat Kromog with Pepe |achieve 9838/23
step
Press _I_ and queue for Blackrock Foundry - Iron Assembly |goto Blackrock Foundry/3 40.9,86.4 |noway |c |or
'| confirm |or
step
map Blackrock Foundry/3
path follow smart; loop off; ants curved; dist 15
path	40.9,86.4	41.0,62.4	53.0,42.6
path	57.0,42.2
_Follow_ the path |goto Blackrock Foundry/3 57.0,42.2 < 15 |noway |c
step
map Blackrock Foundry/4
path follow smart; loop off; ants curved; dist 15
path	42.8,84.0	45.7,83.9	45.7,71.7
path	52.3,71.8	62.8,71.8
kill Beastlord Darmac##76865
|tip Ensure a tank has picked up pack beasts before using AoE.
|tip Your primary concern is surviving. If you die, you will lose the Pepe buff and will need to kill the boss again.
Defeat Beastlord Darmac with Pepe |achieve 9838/20
step
map Blackrock Foundry/4
path follow smart; loop off; ants curved; dist 15
path	56.3,71.8	46.4,71.5	45.7,55.6
path	45.7,19.4
kill Operator Thogar##76906
|tip Always be watching for moving trains and move out of their path if neccessary.
|tip Avoid bombs on the ground.
|tip Your primary concern is surviving. If you die, you will lose the Pepe buff and will need to kill the boss again.
Defeat Operator Thogar with Pepe |achieve 9838/21
step
map Blackrock Foundry/4
path follow smart; loop off; ants curved; dist 15
path	45.7,24.2	45.7,43.7	52.1,49.0
path	56.4,49.0
_Follow_ the path and jump down the hole |goto Blackrock Foundry/1 74.9,24.5 |noway |c
step
kill Admiral Gar'an##77557
kill Enforcer Sorka##77231
kill Marak the Blooded##77477
|tip The Flame Turret in the later phase of this encounter can kill you very quickly. Do not get close to it.
|tip Pay close attention to the mine pattern on the ground.
|tip Your primary concern is surviving. If you die, you will lose the Pepe buff and will need to kill the boss again.
Defeat The Iron Maidens with Pepe |achieve 9838/24 |goto Blackrock Foundry/1 85.6,28.1
step
Press _I_ and queue for Blackrock Foundry - Blackhand's Crucible |goto Blackrock Foundry/3 40.9,86.4 |noway |c |or
'| confirm |or
step
map Blackrock Foundry/3
path follow smart; loop off; ants curved; dist 15
path	40.9,86.4	40.9,15.9	33.6,15.3
_Follow_ the path |goto Blackrock Foundry/3 33.6,15.3 < 10 |noway |c
step
map Blackrock Foundry/5
path follow smart; loop off; ants curved; dist 15
path	53.2,92.2	48.5,92.4	48.6,76.4
path	48.6,69.2
_Follow_ the path and ride the lift |goto Blackrock Foundry/5 48.6,69.2 < 5 |noway |c
step
kill Blackhand##77325
|tip Avoid ground AoE during the first phase.
|tip Stay clear of the path of Siege Engines during phase 2.
|tip During phase 3, avoid standing with your back towards the edge of the platform.
|tip Your primary concern is surviving. If you die, you will lose the Pepe buff and will need to kill the boss again.
Defeat Blackhand with Pepe |achieve 9838/25 |goto Blackrock Foundry/5 48.8,34.4
step
kill Tarlna the Ageless##81535
|tip Trample lashers before they sprout.
|tip Stay away from players caught in Savage Vines.
|tip Your primary concern is surviving. If you die, you will lose the Pepe buff and will need to kill the boss again.
Defeat Tarlna the Ageless with Pepe |achieve 9838/26 |goto Gorgrond 47.0,85.9
step
kill Drov the Ruiner##81252
|tip Pay close attention to the areas targeted by Colossal Slam.
|tip Avoid the paths of Frenzied Rumblers.
|tip Your primary concern is surviving. If you die, you will lose the Pepe buff and will need to kill the boss again.
Defeat Drov the Ruiner with Pepe |achieve 9838/27 |goto Gorgrond 44.1,39.9
step
kill Rukhmar##83746
|tip Avoid standing near piles of ash and feathers.
|tip Your primary concern is surviving. If you die, you will lose the Pepe buff and will need to kill the boss again.
Defeat Rukhmar with Pepe |achieve 9838/28 |goto Spires of Arak 35.6,38.0
step
label "pepe"
clicknpc Pepe##86470
|tip Pepe is in the small tree next to the flight master and monument in your garrison. You will have to jump to click on him.
Acquire the Pepe buff |havebuff spell:172762
step
Congratulations, you have earned the _What A Strange, Interdimensional Trip It's Been_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Buildings\\Finding Your Waystones",{
achieveid={9497},
patch='60001',
description="\nThis guide will walk you through looting 500 Ogre Waystones.",
},[[
step
kill Grimfrost Drudge##72955+, Grimfrost Wolfslayer##72953+, Grimfrost Lavaslinger##72987+ |goto Frostfire Ridge/0 67.5,46.7
collect 500 Ogre Waystone##117491 |achieve 9497
step
Congratulations, you have earned the Finding Your Waystones Achievement! |only if hasbuilding(37,1) or hasbuilding(38,2) or hasbuilding(39,3)
You must have a Spirit Lodge to gain this achievement! |only if default
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Buildings\\Garrison Architect",{
achieveid={9094},
patch='60001',
description="\nThis guide will walk you through completing the garrison building achievements resulting in the Architect title.",
},[[
step
_Click here_ to complete Draftsman |confirm |next "Achievement Guides\\Draenor Garrison\\Draftsman" |only if not achieved(9094,1)
_Click here_ to complete Master Draftsman |confirm |next "Achievement Guides\\Draenor Garrison\\Master Draftsman" |only if not achieved(9094,3)
_Click here_ to complete Grand Master Draftsman |confirm |next "Achievement Guides\\Draenor Garrison\\Grand Master Draftsman" |only if not achieved(9094,2)
_Click here_ to complete Keepin' Busy |confirm |next "Achievement Guides\\Draenor Garrison\\Buildings\\Keepin' Busy" |only if not achieved(9094,4)
_Click here_ to complete Master Builder |confirm |next "Achievement Guides\\Draenor Garrison\\Master Builder" |only if not achieved(9094,5)
step
Congratulations, you have earned the Garrison Architect Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Buildings\\Intro to Husbandry",{
achieveid={9538},
patch='60001',
author="support@zygorguides.com",
keywords={"Garrison"},
description="\nThis guide will walk you through completing the \"Intro to Husbandry\" achievement.",
},[[
step
To earn this achievement, you will need to complete 6 daily quests that appear once you have built the Stables in your garrison
#include "Garrison_ArchitectTable"
|tip Select the Large tab at the top.
|tip Drag Stables to a Large Plot.
|tip It takes an hour for the stables to be built.
Build your Stables |havebuilding Stables
step
#include "Garrison_Finalize_Large", building="Stables"
Finalize the Level 2 Stables |havebuilding Stables,2,active
step
label "Loop"
#include "Garrison_Large_Building", action="talk Sage Paluna##87242", building="Stables"
|tip She walks around this area.
accept Taming a Talbuk##36917
step
clicknpc Young Silverpelt##86801
|tip You will need to be mounted and follow the Young Silverpet as it tries to run away.
Use the Talbuk Lasso |use Talbuk Lasso##118179
Tame a Silverpelt |q 36917/1 |goto Shadowmoon Valley D/0 50.9,29.8
step
#include "Garrison_Large_Building", action="talk Sage Paluna##87242", building="Stables"
|tip She walks around this area.
turnin Taming a Talbuk##36917
step
#include "Garrison_Large_Building", action="talk Sage Paluna##87242", building="Stables"
accept Talbuk Training: Great Tusk##37093
step
Use the Silverpelt-In-Training Whistle |use Silverpelt-In-Training Whistle##118352
kill Great-Tusk##87083
|tip You must be mounted for credit.
Kill the Great-Tusk |q 37093/1 |goto Shadowmoon Valley D/0 62.92,39.38
step
#include "Garrison_Large_Building", action="talk Sage Paluna##87242", building="Stables"
turnin Talbuk Training: Great Tusk##37093
step
#include "Garrison_Large_Building", action="talk Tormak the Scarred##86979", building="Stables"
|tip He walks around this area.
|tip You may need to relog for this to appear.
accept Capturing a Clefthoof##36912
step
clicknpc Young Icehoof##86847
|tip You will need to be mounted and follow the Young Icehoof as it tries to run away.
Use the Clefthoof Lasso |use Clefthoof Lasso##118181
Tame an Icehoof |q 36912/1 |goto Frostfire Ridge/0 53.5,20.0
step
#include "Garrison_Large_Building", action="talk Tormak the Scarred##86979", building="Stables"
|tip He walks around this area.
turnin Taming a Clefthoof##36912
step
#include "Garrison_Large_Building", action="talk Tormak the Scarred##86979", building="Stables"
|tip He walks around this area.
|tip You may need to relog for this to appear.
accept Besting a Boar##36944
step
clicknpc Young Rocktusk##86850
|tip You will need to be mounted and follow the Young Rocktusk as it tries to run away.
Use the Boar Lasso |use Boar Lasso##118185
Tame a Rocktusk |q 36944/1 |goto Gorgrond/0 43.1,37.2
step
#include "Garrison_Large_Building", action="talk Tormak the Scarred##86979", building="Stables"
|tip He walks around this area.
turnin Besting a Boar##36944
step
#include "Garrison_Large_Building", action="talk Sage Paluna##87242", building="Stables"
|tip She walks around this area.
|tip You may need to relog for this to appear.
accept Requisition a Riverbeast##36945
step
clicknpc Shadow Lily##77271
|tip They look like white glowing flowers on the ground right next to the water.
|tip This buff will allow you to walk on water for 10 minutes, and will not be cancelled when you take damage.
Obtain the _Glowstep_ Buff |havebuff Path of Frost##237528 |goto Talador/0 64.4,56.3 |q 36945
step
clicknpc Young Riverwallow##86848
|tip Be sure you still have the Glowstep buff that allows you to walk on water.
|tip You will need to be mounted and follow the Young Riverwallow as it tries to run away.
Use the Riverbeast Lasso |use Riverbeast Lasso##118183
Tame a Riverwallow |q 36945/1 |goto 64.4,56.3
step
#include "Garrison_Large_Building", action="talk Sage Paluna##87242", building="Stables"
|tip She walks around this area.
turnin Requisition a Riverbeast##36945
step
#include "Garrison_Large_Building", action="talk Tormak the Scarred##86979", building="Stables"
|tip He walks around this area.
|tip You may need to relog for this to appear.
accept Entangling an Elekk##36946
step
Follow the path |goto Nagrand D/0 80.3,42.8 < 20 |only if walking
|tip Be careful to stay a good distance away from the nearby Horde town.
Follow the path |goto 82.8,41.7 < 20 |only if walking
Follow the path |goto 84.3,40.2 < 20 |only if walking
clicknpc Young Meadowstomper##86852
|tip You will need to be mounted and follow the Young Meadowstomper as it tries to run away.
|tip During the chase, the Young Meadowstomper jumps across a long gap.
|tip Run on the path to the left when this happens.
Use the Elekk Lasso |use Elekk Lasso##118184
Tame a Meadowstomper |q 36946/1 |goto 85.1,40.7
step
#include "Garrison_Large_Building", action="talk Tormak the Scarred##86979", building="Stables"
|tip He walks around this area.
turnin Entangling an Elekk##36946
step
#include "Garrison_Large_Building", action="talk Sage Paluna##87242", building="Stables"
|tip She walks around this area.
|tip You may need to relog for this to appear.
accept Wrangling a Wolf##36950
step
Follow the path |goto Nagrand D/0 58.9,60.0 < 15 |only if walking
clicknpc Young Snarler##86851
|tip You will need to be mounted and follow the Young Snarler as it tries to run away.
Use the Wolf Lasso |use Wolf Lasso##118182
Tame a Snarler |q 36950/1 |goto 57.2,60.3
step
#include "Garrison_Large_Building", action="talk Sage Paluna##87242", building="Stables"
|tip She walks around this area.
turnin Wrangling a Wolf##36950
step
label "End"
_Congratulations!_
You have earned the _Intro to Husbandry_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Buildings\\Keepin' Busy",{
achieveid={9097},
patch='60001',
description="\nThis guide will walk you through constructing all the preset buildings in your garrison.",
},[[
step
label "BuildMenu"
Select a building to begin: |only if not garrisonlvl(1)
Fishing Shack |next "FishShack" |confirm |only if not garrisonlvl(1)
Frostwall Mine |next "Excavation" |confirm |only if not garrisonlvl(1)
Herb Garden |next "HerbGarden" |confirm |only if not garrisonlvl(1)
Menagerie |next "Menagerie" |confirm |only if not garrisonlvl(1)
You must have at least a level 2 garrison to proceed |only if garrisonlvl(1)
step
label "FishShack"
Redirecting to Fishing Shack, Level 1 |next "FishShack1" |only if default
Redirecting to Fishing Shack, Level 2 |next "FishShack2" |only if hasbuilding(64)
Redirecting to Fishing Shack, Level 3 |next "FishShack3" |only if hasbuilding(134)
Redirecting to Fishing Shack end |next "FishShack_End" |only if hasbuilding(135)
step
label "FishShack1"
In order to build the Fishing Shack, you must first reach level 20 and possess a level 2 garrison
Reach level 20 |ding 20
And
Upgrade your garrison to level 2 |complete garrisonlvl(2) or garrisonlvl(3)
step
talk Mak'jin##79892
accept Looking For Help##34758 |goto Frostwall/0 38.10,72.53 |tip You must be at least level 20 to accept this quest.
step
talk Mokugg Lagerpounder##79896
Find a local fisherman and inquire for help |q 34758/1 |goto Frostfire Ridge/0 55.7,75.2
step
talk Mokugg Lagerpounder##79896
turnin Looking For Help##34758 |goto Frostfire Ridge/0 55.70,75.24
accept Icespine Stingers##36141 |goto Frostfire Ridge/0 55.70,75.24
step
_Follow the hill_ back up |goto Frostfire Ridge/0 55.7,74.0 < 10
kill 1 Icespine Stinger##80782+
Collect Icespine Stinger |q 36141/1 |goto Frostfire Ridge/0 54.72,70.43
step
talk Mokugg Lagerpounder##79896
turnin Icespine Stingers##36141 |goto Frostfire Ridge/0 55.71,75.28
accept Proving Your Worth##36131 |goto Frostfire Ridge/0 55.71,75.28
step
use Icespine Stinger Bait##114628
Fish with the Icespine Stinger Bait |cast Fishing##131474 |goto Frostfire Ridge/0 56.0,75.1
Catch 5 Zangar Eels |q 36131/1 |goto Frostfire Ridge/0 56.0,75.1
step
talk Mokugg Lagerpounder##79896
turnin Proving Your Worth##36131 |goto Frostfire Ridge/0 55.71,75.26
accept Anglin' In Our Garrison##36132 |goto Frostfire Ridge/0 55.71,75.26
step
talk Mak'jin##79892
turnin Anglin' In Our Garrison##36132 |goto Frostwall/0 38.16,72.42
step
label "FishShack2"
You can now upgrade your Fishing Shack to _level 2_
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Fishing Shack, Level 2##111927
|only if hasbuilding(64,1)
step
#include "Garrison_ArchitectTable"
use Garrison Blueprint: Fishing Shack, Level 2##111927
Click on your Fishing Shack and click _Upgrade_ |complete hasbuilding(134,2)
step
label "FishShack3"
Proceeding to Fishing Shack level 3
stickystart "Fish3"
step
#include "Garrison_Large_Building"
Catch 100 of each _Enormous fish_ |achieve 9462
And
Reach Level 35 |ding 35
|next "FishB3"
step
label "Fish3"
In order to get the blueprint for the Fishing Shack Level 3, you must be level 35 and complete the _Draenor Angler_ achievement
This requires you to catch 100 of each the following _Enormous_ fish: Sea Scorpion, Jawless Skulker, Fat Sleeper, Blind Lake Sturgeon, Blackwater Whiptail, Abyssal Gulper Eel, and Fire Ammonite
_Note_ that unlocking a level 3 building _on any character_ unlocks that building for the _entire account_
_
Click here if you would like to return to the _Building Menu_ |confirm |next "BuildMenu"
|only if not achieved(9462)
step
label "FishB3"
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Fishing Shack, Level 3##111928
|only if not hasbuilding(135)
step
#include "Garrison_ArchitectTable"
use Garrison Blueprint: Fishing Shack, Level 3##111928
Click on your Fishing Shack and click _Upgrade_ |complete hasbuilding(135)
step
label "FishShack_End"
You already have a level 3 Fishing Shack!
Click here to return to the building menu |next "BuildMenu" |confirm
step
label "Excavation"
Redirecting to Frostwall Mine, Level 1 |next "Excavation1" |only if default
Redirecting to Frostwall Mine, Level 2 |next "Excavation2" |only if hasbuilding(61)
Redirecting to Frostwall Mine, Level 3 |next "Excavation3" |only if hasbuilding(62)
Redirecting to Frostwall Mine end |next "Excavation_End" |only if hasbuilding(63)
step
label "Excavation1"
In order to build the Frostwall Mine, you must first reach level 20 and possess a level 2 garrison
Reach level 20 |ding 20
And
Upgrade your garrison to level 2 |complete garrisonlvl(2) or garrisonlvl(3)
step
talk Gorsol##81688
accept Things Are Not Goren Our Way##35154 |goto 62.03,73.74 |tip You must be at least level 20 to accept this quest.
step
Enter the mine |goto Frostwall/0 62.7,72.3 < 10
kill 1 Frostwall Goren##81362+
kill 1 Frostwall Goren Hatchling##81398+
Frostwall Goren slain |q 35154/2 |goto Frostwall/26 60.4,48.3
kill 1 Stonetooth##81396
Stonetooth slain |q 35154/1 |goto 57.5,83.8
step
talk Gorsol##81688
turnin Things Are Not Goren Our Way##35154 |goto 62.03,73.74
step
label "Excavation2"
Proceeding to Mine level 2
step
You can now upgrade your Frostwall Mine to _level 2_
_You must be at least level 20_ or have _completed the Talador Outpost questline_ to buy this blueprint
Reach level 20 |ding 20 |or
Or
Complete the Talador outpost questline |complete completedq(34981) or completedq(34711) |or
step
label "ExcavB2"
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Frostwall Mines, Level 2##116248
|only if hasbuilding(61,1)
step
#include "Garrison_ArchitectTable"
use Garrison Blueprint: Frostwall Mines, Level 2##116248
Click on your Frostwall Mine and click _Upgrade_ |complete hasbuilding(62,2)
step
label "Excavation3"
Proceeding to Mine level 3
stickystart "Excav3"
step
#include "Garrison_Large_Building"
Loot 500 Draenic Stone from True Iron and Blackrock deposits |achieve 9453
And
Reach Level 35 |ding 35
|next "ExcavL3"
step
label "Excav3"
In order to get the blueprint for the Frostwall Mines Level 3, you must be level 35 and complete the _Draenic Stone Collector_ achievement
This requires you to loot 500 Draenic Stone from True Iron and Blackrock deposits
_Note_ that unlocking a level 3 building _on any character_ unlocks that building for the _entire account_
_
Click here if you would like to return to the _Building Menu_ |confirm |next "BuildMenu"
|only if not achieved(9453)
step
label "ExcavL3"
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Frostwall Mines, Level 3##116249
|only if not hasbuilding(63)
step
#include "Garrison_ArchitectTable"
use Garrison Blueprint: Frostwall Mines, Level 3##116249
Click on your Frostwall Mine and click _Upgrade_ |complete hasbuilding(63,3)
step
label "Excavation_End"
You already have a level 3 Frostwall Mine
Click here to return to the building menu |next "BuildMenu" |confirm
step
label "HerbGarden"
Redirecting to Herb Garden, Level 1 |next "HerbGarden1" |only if default
Redirecting to Herb Garden, Level 2 |next "HerbGarden2" |only if hasbuilding(29)
Redirecting to Herb Garden, Level 3 |next "HerbGarden3" |only if hasbuilding(136)
Redirecting to Herb Garden end |next "HerbGarden_End" |only if hasbuilding(137)
step
label "HerbGarden1"
In order to build the Herb Garden, you must first reach level 20 and possess a level 2 garrison
Reach level 20 |ding 20
And
Upgrade your garrison to level 2 |complete garrisonlvl(2) or garrisonlvl(3)
step
talk Tarnon##81981
accept Clearing the Garden##34193 |goto Frostwall/0 43.67,82.75
step
kill 1 Frostwall Nibbler##81967
Frostwall Nibbler Slain |q 34193/1 |goto 47.92,85.59 |tip You must be at least level 20 to accept this quest.
step
talk Tarnon##81981
turnin Clearing the Garden##34193 |goto 43.57,82.97
step
label "HerbGarden2"
You can now upgrade your Herb Garden to _level 2_
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Herb Garden, Level 2##109577
|only if hasbuilding(29,1)
step
#include "Garrison_ArchitectTable"
use Garrison Blueprint: Herb Garden, Level 2##109577
Click on your Herb Garden and click _Upgrade_ |complete hasbuilding(136,2)
step
label "HerbGarden3"
Proceeding to Herb Garden level 3
stickystart "Herb3"
step
#include "Garrison_Large_Building"
Loot 500 Draenic Seeds from herbs in Draenor |achieve 9454
And
Reach Level 35 |ding 35
|next "HerbB3"
step
label "Herb3"
In order to get the blueprint for the Herb Garden Level 3, you must be level 35 and complete the _Draenic Seed Collector_ achievement
This requires you to loot 500 Draenic Seeds herbs in Draenor
_Note_ that unlocking a level 3 building _on any character_ unlocks that building for the _entire account_
_
Click here if you would like to return to the _Building Menu_ |confirm |next "BuildMenu"
|only if not achieved(9454)
step
label "HerbB3"
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Herb Garden, Level 3##111997
|only if not hasbuilding(137,3)
step
#include "Garrison_ArchitectTable"
use Garrison Blueprint: Herb Garden, Level 3##111997
Click on your Herb Garden and click _Upgrade_ |complete hasbuilding(137,3)
step
label "HerbGarden_End"
You already have a level 3 Herb Garden!
Click here to return to the building menu |next "BuildMenu" |confirm
step
label "Menagerie"
Redirecting to Menagerie, Level 1 |next "Menagerie1" |only if default
Redirecting to Menagerie, Level 2 |next "Menagerie2" |only if hasbuilding(42)
Redirecting to Menagerie, Level 3 |next "Menagerie3" |only if hasbuilding(167)
Redirecting to Menagerie end |next "Menagerie_End" |only if hasbuilding(168)
step
label "Menagerie1"
In order to build the Menagerie, you must first reach level 35 and possess a level 3 garrison
Reach level 35 |ding 35
And
Upgrade your garrison to level 3 |complete garrisonlvl(3)
step
talk Serr'ah##79858
accept Pets Versus Pests##36469 |goto 31.54,42.14 |tip You must be at least level 35 to accept this quest.
step
Enter your Garrison's cave |goto Frostwall/0 45.1,64.9 < 10
clicknpc Gorefu##89130
Defeat Gorefu in a pet battle
Gorefu defeated |q 36469/2 |goto 36.9,75.4
step
clicknpc Carrotus Maximus##89129
Defeat Carrotus Maximus in a pet battle
Carrotus Maximus defeated |q 36469/1 |goto Frostwall/0 49.9,84.3
step
clicknpc Gnawface##89131
Defeat Gnawface in a pet battle
Gnawface defeated |q 36469/3 |goto Frostwall/0 62.1,27.7
step
talk Serr'ah##79858
turnin Pets Versus Pests##36469 |goto 31.54,42.14
step
label "Menagerie2"
You can now upgrade your Menagerie to _level 2_
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Menagerie, Level 2##111998
|only if hasbuilding(42,1)
step
#include "Garrison_ArchitectTable"
use Garrison Blueprint: Menagerie, Level 2##111998
Click on your Menagerie and click _Upgrade_ |complete hasbuilding(167,2)
step
label "Menagerie3"
Proceeding to Menagerie level 3
stickystart "Menag3"
step
#include "Garrison_Large_Building"
Win 500 pet battles in Draenor |achieve 9463
And
Reach level 35 |ding 35
|next "MenagB3"
step
label "Menag3"
In order to get the blueprint for the Menagerie Level 3, you must be level 35 and complete the _Draenic Pet Battler_ achievement
This requires you to win 500 pet battles in Draenor
_Note_ that unlocking a level 3 building _on any character_ unlocks that building for the _entire account_
_
Click here if you would like to return to the _Building Menu_ |confirm |next "BuildMenu"
|only if not achieved(9463)
step
label "MenagB3"
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Menagerie, Level 3##111999
|only if not hasbuilding(168,3)
step
#include "Garrison_ArchitectTable"
use Garrison Blueprint: Menagerie, Level 3##111999
Click on your Menagerie and click _Upgrade_ |complete hasbuilding(168,3)
step
label "Menagerie_End"
You already have a level 3 Menagerie!
Click here to return to the building menu |next "BuildMenu" |confirm
step
Congratulations, you have earned the Keepin' Busy Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Buildings\\More Plots",{
achieveid={9545},
patch='60001',
author="support@zygorguides.com",
keywords={"More","Plots","Garrison"},
description="\nThis guide will walk you through completing the \"More Plots\" Achievement.",
},[[
step
Complete the Tanaan Jungle (90) Storyline |complete completedq(34446)
Click here to load the Tanaan Jungle Leveling gudie |confirm |next "Leveling Guides\\Draenor (10-50)\\Tanaan Jungle (90)"
step
Be sure to save up _200 Garrison Resources_
|tip You will need 200 Garrison Resources to upgrade your Garrison to Level 2.
confirm |q 36567 |future
step
talk Farseer Drek'Thar##76411
turnin The Home of the Frostwolves##33868 |goto Frostfire Ridge/0 40.8,67.1
accept A Song of Frost and Fire##33815 |goto 40.8,67.1
step
Follow the path |goto 41.6,66.8 < 20 |only if walking
Get Introduced to Durotan |q 33815/1 |goto 41.8,69.7
step
talk Durotan##78272
turnin A Song of Frost and Fire##33815 |goto 41.8,69.7
accept Of Wolves and Warriors##34402 |goto 41.8,69.7
step
Follow the path |goto 42.9,69.0 < 20 |only if walking
Follow the path |goto 44.7,68.9 < 20 |only if walking
talk Thrall##70859
turnin Of Wolves and Warriors##34402 |goto 48.7,65.3
accept For the Horde!##34364 |goto 48.7,65.3
step
clicknpc Horde Banner##120955
|tip It looks like a large wooden T-shape banner illuminated in a yellowish tone with a Horde logo in the center.
Plant the Horde Banner |q 34364/1 |goto 48.7,64.9
step
talk Gazlowe##78466
turnin For the Horde!##34364 |goto 48.7,64.9
accept Back to Work##34375 |goto 48.7,64.9
accept A Gronnling Problem##34592 |goto 48.7,64.9
stickystart "frostfiregronnlings"
step
click Tree Marking##230527
|tip They look like wooden poles with white flags on them planted in the ground around this area.
Mark #6# Trees For Peons |q 34375/1 |goto 48.3,65.8
step
label "frostfiregronnlings"
kill 8 Frostfire Gronnling##79529 |q 34592/1 |goto 48.3,65.8
step
talk Gazlowe##78466
turnin Back to Work##34375 |goto 48.7,64.9
turnin A Gronnling Problem##34592 |goto 48.7,64.9
accept The Den of Skog##34765 |goto 48.8,64.9
step
Follow the path |goto 48.8,66.8 < 20 |walk
kill Skog##79903 |q 34765/1 |goto 48.5,70.1
step
talk Gazlowe##78466
turnin The Den of Skog##34765 |goto 48.8,64.9
accept Establish Your Garrison##34378 |goto 48.8,64.9
step
Use the Master Surveyor to Watch Your Garrison be Constructed |q 34378/1 |goto 46.9,66.4
step
Go through the doorway |goto Frostwall/0 44.0,48.7 < 10 |walk
talk Bron Skyhorn##79407
fpath Frostwall Garrison |goto 45.8,50.9
step
talk Gazlowe##78466
turnin Establish Your Garrison##34378 |goto 52.4,53.2
accept What We Got##34824 |goto 52.4,53.2
accept What We Need##34822 |goto 52.4,53.2
step
talk Rokhan##78487
accept The Ogron Live?##34823 |goto 51.3,51.4
step
click Garrison Cache##237191
|tip It looks like a wooden crate bearing a Horde logo sitting next to a small pile of logs.
Investigate Your Garrison Cache |q 34824/2 |goto 54.8,52.3
step
Go through the doorway |goto 51.7,32.0 < 10 |walk
talk Senior Peon II##86775
Tell him _"Gazlowe needs you."_
Speak With Senior Peon II |q 34824/3 |goto 49.4,16.4
step
Follow the path |goto 41.6,31.4 < 20 |only if walking
talk Skaggit##80225
Tell him _"Get the peons back to work."_
Instruct Skaggit to Release the Peons |q 34824/1 |goto 41.1,50.9
step
Go through the doorway |goto 44.0,48.7 < 10 |walk
talk Gazlowe##78466
turnin What We Got##34824 |goto 52.4,53.4
step
Go through the doorway |goto Frostwall 51.7,32.0 < 10 |walk
Follow the path |goto Frostfire Ridge 49.2,59.6 < 20 |walk
kill Pack Boar##80174+
click Drudgeboat Salvage##231851
|tip The wooden boxes scattered throughout the area.
collect 10 Drudgeboat Salvage##111907 |q 34822/1 |goto 42.7,62.2
step
Enter the cave |goto 40.2,60.1 < 20 |walk
Follow the path |goto 40.4,58.8 < 10 |walk
kill Groog##80167 |q 34823/1 |goto 41.9,59.0
step
talk Rokhan##78487
turnin The Ogron Live?##34823 |goto 51.3,51.3
step
talk Gazlowe##78466
turnin What We Need##34822 |goto 52.5,53.3
accept Build Your Barracks##34461 |goto 52.5,53.3
step
click Garrison Blueprint: Barracks##231012
|tip It looks like a big white unrolled scroll sitting on a table.
Find Gazlowe's Missing Blueprints |q 34461/1 |goto 59.8,50.0
step
Use the Garrison Blueprint: Barracks |use Garrison Blueprint: Barracks, Level 1##111956
Learn the Garrison Blueprints: Barracks 1 |q 34461/2
step
#include "Garrison_ArchitectTable"
Use the Architect Table
|tip It looks like a wooden artist workstation.
While using the table, drag the Barracks to the _"Large Empty Plot"_
Build Your Barracks |q 34461/3 |goto 52.2,53.3
step
#include "Garrison_Finalize_Large", building="Barracks"
Finalize Your Plot |q 34461/5
step
talk Gazlowe##78466
turnin Build Your Barracks##34461 |goto 57.4,48.4
accept We Need An Army##34861 |goto 57.4,48.4
step
talk Warmaster Zog##79740
|tip He's inside the building.
turnin We Need An Army##34861 |goto 53.9,55.0
accept Winds of Change##34462 |goto 53.9,55.0
step
Follow the path |goto Frostfire Ridge/0 54.1,64.8 < 20 |only if walking
Follow the path |goto 56.1,62.4 < 10 |only if walking
Enter the cave |goto 56.6,62.5 < 10 |walk
clicknpc Olin Umberhide##80577
|tip He is hanging upside down in the cave.
Rescue Olin Umberhide |q 34462/1 |goto 57.3,62.9
step
Leave the cave |goto 56.7,62.6 < 10 |walk
Follow the path |goto 53.2,63.4 < 20 |only if walking
Follow the path |goto 49.9,60.5 < 20 |only if walking
Enter the Garrison |goto Frostwall/0 51.7,32.3 < 20 |walk
talk Warmaster Zog##79740
turnin Winds of Change##34462 |goto 53.9,54.9
accept Mission Probable##34775 |goto 53.9,54.9
step
clicknpc Command Table##80432
|tip It looks like a round table with a map laying on it, and a dagger stabbed through the map into the table.
Click the Gronnlings Abound mission
Assign Olin Umberhide to the mission and start it
Use the Command Table to Send Olin Umberhide on a Mission |q 34775/1 |goto 53.7,54.4
step
talk Warmaster Zog##79740
turnin Mission Probable##34775 |goto 53.9,54.9
step
talk Farseer Drek'Thar##76411
accept Den of Wolves##34379 |goto 49.7,49.7
step
clicknpc Frostwolf Rylak##78320
|tip It looks like a winged creature with 2 heads.
Ride the Frostwolf Rylak to Wor'gol |q 34379/1 |goto 46.9,49.8 < 5
step
talk Pul Windcarver##76782
fpath Wor'gol |goto Frostfire Ridge/0 21.6,56.1
step
talk Durotan##70860
turnin Den of Wolves##34379 |goto 20.7,58.0
accept Rally the Frostwolves##34380 |goto 20.7,58.0
step
talk Farseer Drek'Thar##80456
|tip You may have to wait for him to run here.
accept Honor Has Its Rewards##33816 |goto 21.0,57.9
step
Follow the path |goto 20.5,56.9 < 25 |only if walking
Follow the path |goto 19.4,57.6 < 25 |only if walking
click Frostwolf Shamanstone##226468
|tip The Shamanstone is a huge jagged stone behind the campfire.
Choose Spirit of the wolf
|tip The quest will complete without clicking the stone, but make sure you do this, since you'll get a passive buff that increases your run speed.
Receive the Blessing From the Shamanstone |q 33816/1 |goto 17.5,56.7
step
talk Farseer Drek'Thar##76616
turnin Honor Has Its Rewards##33816 |goto 17.68,56.70
step
Follow the path |goto 19.7,60.2 < 20 |only if walking
talk Draka##78971
Ask Draka to Sound the War Horn |q 34380/1 |goto 19.4,60.1
step
talk Durotan##76557
turnin Rally the Frostwolves##34380 |goto 20.9,57.9
accept Gormaul Tower##33784 |goto 20.9,57.9
step
Follow the path |goto 21.6,58.0 < 20 |only if walking
Go through the gate |goto 23.5,56.2 < 20 |only if walking
Follow the path |goto 23.9,52.3 < 20 |only if walking
Follow the path |goto 24.1,48.3 < 20 |only if walking
Follow the path |goto 22.6,46.0 < 20 |only if walking
Meet Durotan at Gormaul Tower |q 33784/1 |goto 21.3,44.1
step
kill Bladespire Mauler##73373+, Bladespire Boarbuster##75240+
|tip Start attacking ogres on your own, then follow Durotan to kill all the ogres around this area.
Overrun the Ruin |q 33784/3 |goto 20.8,43.7
|tip Use your Garrison Call to Arms ability to complete and optional objective.
step
kill Bladespire Ogron##78173+
Defeat the Counter-Attack |q 33784/4 |goto 19.5,44.4
step
kill Razortusk the Untamed##76208 |q 33784/5 |goto 19.5,44.4
|tip He is a giant boar that will appear once you've cleared the area of enemies.
step
talk Durotan##76240
turnin Gormaul Tower##33784 |goto 19.7,44.8
accept These Colors Don't Run##33526 |goto 19.7,44.8
step
Follow the path |goto 20.9,41.8 < 20 |walk
Follow the path |goto Frostfire Ridge/1 5.5,64.2 < 20 |walk
kill Bladespire Mauler##73373+, Bladespire Brute##73371+
Use the Frostwolf Banner |use Frostwolf Banner##107279
|tip Use the Frostwolf Banner on their corpses.
Plant #8# Frostwolf Banners |q 33526/1 |goto 26.0,52.1
step
Go through the doorway |goto 31.9,48.1 < 20 |walk
talk Durotan##75177
turnin These Colors Don't Run##33526 |goto 43.5,23.2
accept Deeds Left Undone##33546 |goto 43.5,23.2
step
click Barrel of Frostwolf Oil##225681
|tip They look like wooden barrels on the ground around this area.
collect 5 Frostwolf Oil##107361 |q 33546/1 |goto 40.6,53.4 < 20
step
Enter the doorway |goto 53.1,49.4 < 10 |walk
talk Gol'kosh the Axe##75167
Take the Oil to Gol'kosh |q 33546/2 |goto 56.0,43.8
step
Go through the doorway |goto 52.8,49.4 < 10 |walk
Leave the building |goto 38.0,44.1 < 20 |walk
Follow the path |goto 29.3,61.4 < 20 |only if walking
talk Durotan##75177
turnin Deeds Left Undone##33546 |goto 34.3,73.0
accept Great Balls of Fire!##33408 |goto 34.3,73.0
step
Follow the path |goto 34.2,76.6 < 15 |only if walking
|tip Avoid the lava boulders as they roll down the ramp.
Ascend the Ramp |q 33408/1 |goto 50.8,88.0
step
Enter the building |goto Frostfire Ridge/2 67.4,79.9 < 10 |walk
talk Thrall##75186
turnin Great Balls of Fire!##33408 |goto 70.6,78.6
accept The Butcher of Bladespire##33410 |goto 70.7,78.6
step
Leave the building |goto 67.4,79.9 < 10 |walk
kill Dorogg the Ruthless##74254 |q 33410/1 |goto 54.1,73.0
|tip He can drop an item for each crafting profession you have that will start a quest for that profession. Gathering and Secondary professions do not get a quest item.
step
Enter the building |goto 67.4,79.9 < 10 |walk
talk Thrall##75186
turnin The Butcher of Bladespire##33410 |goto 70.6,78.6
accept Armed and Dangerous##33344 |goto 70.5,78.6
accept To the Slaughter##33622 |goto 70.5,78.6
stickystart "spireogres"
step
Leave the building |goto 67.4,79.9 < 10 |walk
Enter the building |goto 63.5,65.0 < 20 |walk
Follow the path |goto 59.4,45.4 < 20 |walk
talk Frostwolf Slave##76543+
|tip They look like brown orcs all around on the inside of this building.
Arm #10# Frostwolf Slaves |q 33344/1 |goto 51.7,39.0
step
label "spireogres"
kill Bladespire Mauler##73470+, Bladespire Brute##73469+, Bladespire Chef##73555+, Bladespire Boarbuster##75057+
Slay #10# Bladespire Ogres |q 33622/1 |goto 51.7,39.0
step
talk Durotan##75177
turnin To the Slaughter##33622 |goto 50.3,32.7
turnin Armed and Dangerous##33344 |goto 50.3,32.7
accept Last Steps##33527 |goto 50.3,32.7
step
click Ladder##268797
|tip It looks like a wooden ladder laying on a huge metal chain.
Climb the Chain |q 33527/1 |goto 50.1,31.8
step
kill Gorr'thog##74105 |q 33527/2 |goto Frostfire Ridge/3 51.3,69.0
step
talk Durotan##75188
turnin Last Steps##33527 |goto 66.4,56.5
accept Moving In##33657 |goto 66.4,56.5
step
clicknpc Frost Wolf Howler##78894
Ride the Frost Wolf |q 33657/1 |goto 66.6,55.6
step
talk Durotan##70860
turnin Moving In##33657 |goto Frostfire Ridge/1 43.2,41.3
accept Save Wolf Home##33468 |goto 43.2,41.3
step
kill Giantslayer Zhakta##74702 |q 33468/4 |goto 22.02,57.28
step
stickystart "free"
talk Wor'gol Defender##74507
accept Free Our Brothers and Sisters##33807 |goto Frostfire Ridge/0 19.1,58.3
step
kill Gronnstalker Korhol##74700 |q 33468/2 |goto 19.25,58.21
step
_Go up_ the hill |goto Frostfire Ridge/0 19.7,60.0 < 15 |only if walking
kill Beastmaster Trokar##74708 |q 33468/3 |goto 19.8,61.4
step
label "thunderlords"
kill Thunderlord Ranger##76289+, Thunderlord Invader##74329+, Thunderlord Handler##74514+, Thunderlord Seer##78073+
Slay #15# Thunderlords |q 33468/5 |goto 20.0,59.0
step
label "free"
click Wor'gol Villager##84781+, Frost Wolf##74544+
Free #6# Villagers and Frostwolves |q 33807/1 |goto 20.0,59.0
step
talk Draka##74651
turnin Save Wolf Home##33468 |goto 20.8,57.9
turnin Free Our Brothers and Sisters##33807 |goto 20.8,57.9
accept The Farseer##33469 |goto 20.8,57.9
step
Follow the path |goto 18.3,56.0 < 20 |walk
kill Warleader Gargrak##74653 |q 33469/1 |goto 16.8,57.6
step
talk Farseer Drek'Thar##74272
turnin The Farseer##33469 |goto 16.8,57.8
accept Pool of Visions##33470 |goto 16.8,57.8
step
talk Farseer Drek'Thar##74272
Tell him _"I am ready for the ritual, farseer."_
Witness the Ritual of Vision |q 33470/1 |goto 16.8,57.8
step
talk Farseer Drek'Thar##74272
turnin Pool of Visions##33470 |goto 16.8,57.8
accept Back to Bladespire Citadel##33473 |goto 16.8,57.8
step
Leave the cave |goto 18.3,56.1 < 20 |walk
talk Pul Windcarver##76782
Tell him _"Pul, I need to quickly return to Bladespire Citadel."_
Fly Back to Bladespire Citadel |q 33473/1 |goto 21.6,56.1
step
Enter the building |goto Frostfire Ridge/1 32.9,46.9 < 20 |walk
talk Durotan##70860
turnin Back to Bladespire Citadel##33473 |goto 43.1,41.3
accept Ga'nar's Vengeance##32783 |goto 43.1,41.3
step
Leave the building |goto 35.5,45.6 < 20 |walk
Follow the path |goto 20.8,36.8 < 20 |only if walking
Follow the path |goto 15.6,32.6 < 15 |only if walking
Follow the path |goto Frostfire Ridge/0 25.7,29.5 < 20 |only if walking
talk Ga'nar##70909
turnin Ga'nar's Vengeance##32783 |goto 30.9,25.8
accept Let the Hunt Begin!##32791 |goto 30.9,25.8
step
talk Ga'nar##70878
Tell him _"I am ready!"_
Tell Ga'nar You Are Ready |q 32791/1 |goto 30.9,25.8
step
Watch the dialogue
Confront Grotan |q 32791/2 |goto 34.4,26.4
step
Kill the enemies that attack in waves
Wait For Kal'gor's Reinforcements |q 32791/3 |goto 36.2,25.9
Wait For Ligra's Reinforcements |q 32791/4 |goto 35.7,26.1
step
talk Ga'nar##74000
turnin Let the Hunt Begin!##32791 |goto 36.0,25.8
accept Leave Nothing Behind!##32792 |goto 36.0,25.8
step
talk Ligra the Unyielding##74222
accept They Rely on Numbers##32929 |goto 35.9,25.7
stickystart "thunderorcs"
step
kill Kur'ak the Binder##71669 |q 32792/2 |goto 37.9,28.9
step
click Thunderlord Ballista##220568
|tip They are large four wheeled carts with spears loaded.
Destroy the Thunderlord Ballistae |q 32792/1 |goto 38.8,30.2
step
Follow the path |goto 39.5,29.4 < 20 |only if walking
Follow the path |goto 41.8,32.2 < 20 |walk
click Thunderlord Supplies##220578
|tip The barrels and supplies are stacked against the wall.
Destroy the Thunderlord Supplies |q 32792/3 |goto 42.3,34.3
step
label "thunderorcs"
kill Thunderlord Spearhand##71647+, Thunderlord Beastmaster##74205+, Kur'ak the Binder##71669+
Slay #15# Thunderlord Orcs |q 32929/1 |goto 39.1,29.2
step
Follow the path |goto 42.3,30.4 |only if walking
Follow the path |goto 43.8,31.3 |only if walking
talk Kal'gor the Honorable##74223
turnin They Rely on Numbers##32929 |goto 46.4,32.0
step
talk Ga'nar##70910
turnin Leave Nothing Behind!##32792 |goto 46.4,32.1
accept Wrath of Gronn##32794 |goto 46.4,32.1
step
kill Thunderlord Beastwrangler##74160+
Release #3# Captive Gronns |q 32794/1 |goto 47.6,33.8
|tip They look like big Gronns chained to the ground around this area.
step
Follow the path |goto Frostfire Ridge/7 36.5,23.8 < 20 |walk
Follow the path |goto Frostfire Ridge/8 41.3,52.3 < 20 |walk
talk Ga'nar##70941
turnin Wrath of Gronn##32794 |goto 50.6,54.4
accept The Eldest##32795 |goto 50.6,54.4
step
talk Ga'nar##70941
Select _<Assist Ga'nar in battle.>_
Watch the dialogue
Confront Hatock |q 32795/1 |goto 50.6,54.4
step
kill Grulloc##70863 |q 32795/2 |goto 51.7,64.2
kill Hatock the Gronnmaster##74006 |q 32795/3 |goto 51.7,64.2
|tip He will die once Grulloc is beaten.
step
talk Ga'nar##70941
turnin The Eldest##32795 |goto 49.7,52.0
accept To the Garrison##32796 |goto 49.7,52.0
step
talk Durotan##74163
turnin To the Garrison##32796 |goto Frostwall/0 50.2,37.9
step
talk Gazlowe##78466
accept Bigger is Better##36567 |goto 52.5,53.4
step
clicknpc Architect Table##86017
|tip It looks like a stone table with a slanted top and a blueprint laying on it.
Select your _Great Hall_ from the center Garrison map
Click _Upgrade_
Upgrade your Garrison to Level 2 |q 36567/1 |goto 52.3,53.5
step
_Congratulations!_
You have earned the _More Plots_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Buildings\\Set Sail!",{
achieveid={10177},
patch='60200',
author="support@zygorguides.com",
keywords={"Set","Sail!","Garrison","Shipyard"},
description="\nThis guide will walk you through completing the \"Set Sail!\" Achievement.",
},[[
step
Reach Level 35 |ding 35
|tip Use the Leveling guide to accomplish this.
step
Upgrade your Garrison to Level 3 |complete garrisonlvl(3)
Click here to load the Garrison guide |confirm |next "Leveling Guides\\Draenor (10-50)\\Garrisons\\Garrison Leveling Guide"
step
accept Garrison Campaign: War Council##38567 |goto Frostwall/0 40.1,54.0
|tip You will automatically accept this quest.
step
talk Vol'jin##92400
turnin Garrison Campaign: War Council##38567 |goto 39.1,54.8
accept We Need a Shipwright##38568 |goto 39.1,54.8
step
talk Bron Skyhorn##79407 |goto 45.8,50.9
Tell him _"I am needed urgently at the Iron Docks."_
Travel to the Iron Docks |goto Gorgrond/0 56.0,6.7 < 100 |noway |c |q 38568
step
accept Clearing the Docks##38569
|tip You will accept this quest automatically when you arrive at the Iron Docks.
step
talk Sammy Fivefingers##89937
turnin We Need a Shipwright##38568 |goto 56.1,6.7
accept Derailment##38570 |goto 56.1,6.7
stickystart "clearing_the_docks"
step
Follow the path |goto 56.3,8.2 < 20 |only if walking
Follow the path |goto 56.8,10.3 < 30 |only if walking
Follow the path |goto 56.7,11.5 < 20 |only if walking
click Detonator##240518
|tip It's a wooden box with a handle on top of it on the ground next to a wall.
collect Detonator##122516 |q 38570/2 |goto 56.5,11.6
step
Follow the path |goto 56.9,14.1 < 30 |only if walking
click Explosive Charges##240517
|tip It looks like a big basket full of metal bombs on the ground between 2 huge metal loops.
collect Explosive Charges##122515 |q 38570/1 |goto 56.4,15.1
step
label "clearing_the_docks"
kill Iron Grunt##91599+, Iron Rearguard##89952+, Ogron Lifter##89951+
|tip Kill any mobs you see.
clicknpc Iron Siege Ram##93174+
|tip Destroy siege weapons.
clicknpc Iron Horde Transport##93147+
|tip Sink transports. They are boats floating next to walls in the water.
kill Felsworn Prophet##91596+
Disrupt the Iron Horde Evacuation |q 38569/1 |goto 52.3,11.0
|tip You will see a progress bar in your quest tracking area.
step
Follow the path |goto 52.9,17.8 < 30 |only if walking
talk Durotan##92401
turnin Derailment##38570 |goto 56.8,17.2
accept The Train Gang##38571 |goto 56.8,17.2
step
clicknpc Explosive Charge##93209
|tip It looks like a yellow spiked bomb sitting up on the train.
Plant the First Explosive |q 38571/1 |goto 56.9,16.9
step
clicknpc Explosive Charge##93209
|tip It looks like a yellow spiked bomb sitting up on the train.
Plant the Second Explosive |q 38571/2 |goto 56.9,17.2
step
clicknpc Explosive Charge##93209
|tip It looks like a yellow spiked bomb sitting up on the train.
Plant the Third Explosive |q 38571/3 |goto 56.9,17.4
step
click Detonator##240518
|tip It's a wooden box with a handle on top of it, on the ground.
Blow Open the Train |q 38571/4 |goto 56.8,17.2
step
Watch the dialogue
Recruit Solog Roark |q 38571/5 |goto 56.8,17.2
step
talk Solog Roark##91242
turnin The Train Gang##38571 |goto 56.8,17.2
accept Hook, Line, and... Sink Him!##38572 |goto 56.8,17.2
step
Follow the path |goto 52.9,17.8 < 30 |only if walking
click Blackrock Grapple##241130
|tip It looks like a metal cannon pointing upward.
Grapple to Knar's Bunker |q 38572/1 |goto 50.7,16.1
step
Enter the building |goto 50.6,17.0 < 20 |walk
kill Admiral Knar##92191
collect Roark's Shipyard Blueprints##123867 |q 38572/2 |goto 50.6,17.6
step
talk Solog Roark##91242
turnin Hook, Line, and... Sink Him!##38572 |goto 50.6,16.7
accept Nothing Remains##38573 |goto 50.6,16.7
step
talk Vol'jin##92400
turnin Nothing Remains##38573 |goto Frostwall/0 39.1,54.8
accept All Hands on Deck##38574 |goto 39.1,54.8
step
Follow the path |goto 36.5,40.9 < 30 |only if walking
Go through the doorway |goto 27.0,55.4 < 20 |only if walking
talk Solog Roark##91242
turnin All Hands on Deck##38574 |goto Frostfire Ridge/0 41.5,69.9
step
_Congratulations!_
You have earned the _Set Sail!_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Buildings\\Terrific Technology",{
achieveid={9527},
patch='60001',
description="\nThis guide will walk you through using at least 6 of the inventions available at the Workshop specified below.",
},[[
step
You need a _Goblin Workshop Level 2_ in order to earn this achievement
If certain items aren't available, you will have to wait and try for them again
Clear the table and inventions at the end of the day
confirm
step
label "rooster"
#include "Garrison_Large_Building"
click Robo-Rooster##235078
collect Robo-Rooster##119158
_Click here_ if the Robo-Rooster is not available |confirm |next "grenades"
only if not achieved(9527,1)
step
talk Warmaster Zog##79740
Enter the Proving Grounds at your command table in order to avoid the duration of Robo-Rooster
Exit the Proving Groudns and use the Rooster again
use Robo-Rooster##119158
|tip It has ten charges so you'll need to pick this up this twice.
Summon a Robo-Rooster #20# times |achieve 9527/1 |goto Frostwall 40.9,54.6
_Click here_ if there isn't another Robo-Rooster available |confirm |next "grenades"
only if not achieved(9527,1)
step
label "grenades"
#include "Garrison_Large_Building"
click Sticky Grenades##234146
collect Sticky Grenade Launcher##114983
_Click here_ if the Sticky Grenades are not available |confirm |next "gauntlet"
only if not achieved(9527,2)
step
Target the training dummy in your Garrison
use Sticky Grenade Launcher##114983
|tip It has twenty-five charges so you'll need to pick this up twice.
Blast enemies #50# times with the Sticky Grenade Launcher |achieve 9527/2 |goto Frostwall 72.6,44.8
_Click here_ if there isn't another Sticky Grenade available |confirm |next "gauntlet"
only if not achieved(9527,2)
step
label "gauntlet"
#include "Garrison_Large_Building"
collect Pneumatic Power Gauntlet##114975
|tip It looks like the skeletal arm from Terminator 2.
_Click here_ if the Pneumatic Power Gauntlet is not available |confirm |next "skypds"
only if not achieved(9527,3)
step
Target the training dummy in your Garrison
use Pneumatic Power Gauntlet##114975
|tip It has fifteen charges so you'll need to pick this up four times.
Punch #50# enemies in the face! |achieve 9527/3 |goto Frostwall 72.6,44.8
_Click here_ if there isn't another Pneumatic Power Gauntlet available |confirm |next "skypds"
only if not achieved(9527,3)
step
label "skypds"
#include "Garrison_Large_Building"
click "Skyterror" Personal Delivery System##233900
collect "Skyterror" Personal Delivery System##114246
_Click here_ if the "Skyterror" Personal Delivery System is not available |confirm |next "painter"
only if not achieved(9527,4)
step
#include "Garrison_Small_Building"
Stand inside one of your profession buildings and use the Skyterror PDS |use "Skyterror" Personal Delivery System##114246
|tip This item has three charges so you'll need to pick this up four times.
Take flight #10# times |achieve 9527/5
_Click here_ if there isn't another "Skyterror" Personal Delivery System available |confirm |next "painter"
only if not achieved(9527,4)
step
#include "Garrison_Large_Building"
click N.U.K.U.L.A.R. Target Painter##235126
collect N.U.K.U.L.A.R. Target Painter##115530
_Click here_ if the N.U.K.U.L.A.R. Target Painter is not available |confirm |next "jetpack"
only if not achieved(9527,7)
step
This item can be used anywhere, but it has a one hour cooldown so doing this one will be time consuming
use N.U.K.U.L.A.R. Target Painter##115530
|tip This item has two charges so you'll need to pick this up three times.
Nuclear fallout caused #5# times |achieve 9527/9 |goto Frostwall 49.8,38.0
_Click here_ if there isn't another N.U.K.U.L.A.R. Target Painter available |confirm |next "jetpack"
only if not achieved(9527,7)
step
label "jetpack"
#include "Garrison_Large_Building"
click GG-117 Micro-Jetpack##233901
|tip It looks like two large rockets tied together with rope.
collect GG-117 Micro-Jetpack##114244
_Click here_ if the GG-117 Micro-Jetpack is not available |confirm |next "rooster"
only if not achieved(9527,5)
step
This item can be used anywhere so for the sake of the acheivement just use it in your garrison
Equip your GG-117 Micro-Jetpack #10# times |use GG-117 Micro-Jetpack##114244 |achieve 9527/6 |goto Frostwall 49.8,38.0
|tip This item has three charges so you'll need to pick this up four times.
_Click here_ if there isn't another GG-117 Micro-Jetpack |confirm |next "rooster"
only if not achieved(9527,5)
step
Congratulations, you have earned the Terrific Technology Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Buildings\\Time for an Upgrade",{
achieveid={9099},
patch='60001',
author="support@zygorguides.com",
keywords={"Garrison"},
description="\nThis guide will walk you through completing the \"Time for an Upgrade\" Achievement.",
},[[
step
Upgrade your garrison to level 2
|tip To accomplish this, refer to the Garrison Leveling Guide.
Click here to load the Garrison Leveling Guide |confirm |next "Leveling Guides\\Draenor (10-50)\\Garrisons\\Garrison Leveling Guide"
Earn the _Time for an Upgrade_ achievement |achieve 9099
step
_Congratulations!_
You have earned the _Time for an Upgrade_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Buildings\\Upgrading the Mill",{
achieveid={9429},
patch='60001',
description="\nThis guide will walk you through placing 75 Work Orders at the Lumber Mill and completing the quests Legacy of the Ancients and Reduction in Force.",
},[[
step
You must have at least a _level 2 Lumber Mill_ to obtain this achievement
map Gorgrond
path follow loose; loop off; dist 40
path	43.6,92.6	41.4,76.4	53.0,65.4
path	49.0,50.0	50.4,42.2	41.6,37.6
path	57.6,43.2	61.8,32.2	70.6,25.6
path	73.6,39.4
Search for the Petrified Ancient
kill Petrified Ancient##85199
collect Barkskin Tome##115467
only if not completedq(36385)
step
use Barkskin Tome##115467
accept Legacy of the Ancients##36385
step
map Gorgrond
path follow loose; loop on; ants curved; dist 40
path	71.0,30.8	72.8,35.6	73.6,41.2
path	71.2,42.8	69.0,42.4	72.2,39.6
Harvest Medium Timber along the path to spawn Loruk
Comat will automatically initiate so be ready
kill Loruk the Ancient##85272
collect Twig of Loruk##115478 |q 36385/3
step
map Shadowmoon Valley D
path follow loose; loop on; ants curved; dist 40
path	44.8,72.0	44.2,76.2	44.4,79.0
path	45.8,81.6	46.8,77.0	49.2,78.0
path	49.4,83.6	50.4,74.8	49.2,72.8
path	47.4,72.8
Harvest Medium Timber along the path to spawn Kuruk
Comat will automatically initiate so be ready
kill Kuruk the Ancient##85271
collect Heart of Kuruk##115476 |q 36385/1
step
map Spires of Arak
path follow loose; loop on; ants curved; dist 40
path	54.4,40.6	54.2,35.8	59.6,39.2
path	60.2,36.6	59.0,28.8	54.6,27.0
path	54.6,22.0	49.4,22.0	48.6,28.4
path	49.6,38.0	46.6,37.0	41.8,25.8
path	39.2,27.6	35.6,24.2	34.4,37.6
path	37.6,45.4	37.0,49.0	42.8,49.2
path	43.0,53.8	47.6,63.6	50.6,68.0
path	52.4,75.0	57.4,70.6	62.0,68.0
path	59.0,63.0	58.2,58.4	52.8,55.6
path	56.4,51.6
Harvest Medium Timber along the path to spawn Hanuk
Comat will automatically initiate so be ready
kill Hanuk the Ancient##85273
collect Roots of Hanuk##115480 |q 36385/4
step
map Nagrand D
path follow loose; loop on; ants curved; dist 40
path	80.6,51.4	84.0,57.0	81.0,57.4
path	83.8,62.8	87.6,63.8	84.4,68.4
path	82.8,71.2	76.8,69.6	76.8,66.2
path	71.2,70.4	71.8,63.6	66.6,58.4
path	63.0,54.8	56.6,65.4	53.8,70.0
path	49.2,74.4	44.8,73.4	42.2,69.4
path	41.2,61.4	42.2,56.8	44.6,61.2
path	47.8,55.4	52.2,54.0	55.6,48.8
path	59.4,50.2	61.2,48.0	62.8,43.0
path	66.6,41.6	68.8,36.8	72.4,39.2
path	75.4,35.8	76.6,43.2
Harvest Medium Timber along the path to spawn Hanuk
Comat will automatically initiate so be ready
kill Autuk the Ancient##85274
collect Trunk of Autuk##115477 |q 36385/2
step
#include "Garrison_Medium_Building"
talk Lumber Lord Oktron##84247
turnin Legacy of the Ancients##36385
step
#include "Garrison_Medium_Building"
talk Alexi Barov##85414
accept Reduction in Force##36449
step
map Gorgrond
path follow loose; loop on; ants curved; dist 40
path	46.5,70.5	46.4,73.5	43.4,74.6
path	41.1,76.6	44.0,80.4	44.7,82.9
path	43.8,85.9	46.0,87.1	48.5,83.8
path	48.8,80.3	47.8,77.2
Approach any Small Timber you see along this path watching out for Weldon and his crew
They will spawn under Small Timber anywhere in the area
kill Weldon Barov##11023
collect Head of Weldon Barov##116153 |q 36449/1
step
#include "Garrison_Medium_Building"
talk Alexi Barov##85414
turnin Reduction in Force##36449
step
Place #75# work orders at the Lumber Mill |achieve 9429
step
Congratulations, you have earned the Upgrading the Mill Achievement! |only if hasbuilding(41,2) or hasbuilding(138,3)
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Invasions\\Ogre Invasion",{
achieveid={9204},
patch='60001',
description="\nThis guide will walk you through successfully completing an Ogre garrison invasion.",
},[[
step
map Nagrand D
path follow loose; loop on; ants curved; dist 5
path	58.9,23.8	56.8,24.4	56.0,25.1
path	55.8,23.8	56.3,21.2	56.8,18.6
path	55.8,17.4	56.1,16.7	57.9,17.6
path	59.0,18.5	59.5,17.7	59.4,16.6
path	58.7,15.7	58.6,13.5	58.9,14.0
path	59.2,15.7	59.9,16.5	59.1,18.9
path	57.6,18.8	56.9,20.7	57.7,23.2
Kill Ogres at the Ring of Blood until you receive a warning to return to your Garrison.
|tip It can take up to 500 kills to accomplish this. It can be done in a group.
kill Drunken Scrapper##87310+, Brawler Outcast##87309+, Nascent Brawler##84760+, Bloodring Slaver##88207+, Rampant Gladiator##84764
confirm
step
talk Sergeant Grimjaw##79774
accept Ogre Invasion!##36623 |goto Frostwall 45.0,48.0
step
talk Sergeant Grimjaw##79774
Tell him "_Prepare to battle!_"
Kill invaders to successfully repel the invasion |q 36623/1
step
talk Sergeant Grimjaw##79774
turnin Ogre Invasion!##36623 |goto Frostwall 45.0,48.0
step
Congratulations, you have earned the Ogre Invsaion Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Missions\\Exploration Mission Master",{
achieveid={9900},
patch='60100',
description="\nThis guide will walk you through completing all of the garrison exploration missions.",
},[[
step
label "start"
Aquiring the missions for this achievement requires you to purchase Explorer's Notebooks at a cost of 5 Restored Artifacts each
_Click here_ to purchase the Explorer's Notebooks with Restored Artifacts you have earned through Archaeology |confirm |next "notebooks"
step
label "notebooks"
talk Srikka##88253 |goto Warspear 74.6,31.8
buy Explorer's Notebook##122606 |n
|tip Buy as many as you are comfortable with.
|tip The Missions are random so you may get repeats while finishing this achievement.
use Explorer's Notebook##122606
After using your Notebooks you'll need to return to your Command Table and run the missions you have gained |confirm
step
#include "Garrison_CommandTable"
Start any missions you have earned from your Notebooks and wait for the missions to complete |confirm
step
Congratulations, you have earned the Exploration Mission Master Achievement! |only if achieved(9900)
Still more missions required. Routing to the guide start |next "start" |only if not achieved(9900)
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\A Rare Friend",{
achieveid={9130},
patch='60001',
description="\nRecruit a Rare follower.",
},[[
step
Followers who are recruited have a chance to be _upgraded_ upon recruiting
If none of your current followers have upgraded on their own _you can recruit one a week_ from your Garrison Inn
You can also _refer to_ our individual follower guides
_Recruit_ a Rare follower |achieve 9130
step
Congratulations, you have _earned_ the A Rare Friend Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\A Rare Mission",{
achieveid={9141},
patch='60001',
description="\nComplete a Rare garrison mission.",
},[[
step
#include "Garrison_CommandTable"
_Select_ a mission labeled "Rare" and complete it |achieve 9141
|tip Rare missions are blue shaded and say RARE! under the level requirement.
step
Congratulations, you have _earned_ the A Rare Mission Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\An Epic Buddy",{
achieveid={9131},
patch='60001',
description="\nRecruit an Epic follower.",
},[[
step
Followers who are recruited have a chance to be _upgraded_ upon recruiting
If none of your current followers have upgraded on their own _you can recruit one a week_ from your Garrison Inn
You can also _refer to_ our individual follower guides
_Recruit_ an Epic follower |achieve 9131
step
Congratulations, you have _earned_ the An Epic Buddy Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Azeroth's Top Twenty Tunes",{
achieveid={9914},
patch='60100',
description="\nThis guide will walk you through collecting twenty Music Rolls for your garrison's jukebox.",
},[[
step
Routing to Guide |next |only if garrisonlvl(3) and completedq(37961)
This achievement requires a Jukebox and a level 3 Garrison. Please acquire both of these items and come back! |only if garrisonlvl(1) or garrisonlvl(2)
confirm |only if garrisonlvl(1) or garrisonlvl(2)
step
Your first seven are gifted upon completing the jukebox questine:
use Stash of Dusty Music Rolls##122613
use Music Roll: Orgrimmar##122210 |achieve 9914/18
use Music Roll: Rescue the Warchief##122218 |achieve 9914/28
use Music Roll: Silvermoon##122217 |achieve 9914/26
use Music Roll: Thunder Bluff##122213 |achieve 9914/20
use Music Roll: Undercity##122212 |achieve 9914/22
use Music Roll: Way of the Monk##122219 |achieve 9914/12
use Music Roll: The Zandalari##122216 |achieve 9914/24
step
click Frozen Supplies##240616 |goto Winterspring/0 68.0,73.9
|tip It's an average size cloth bag tied at the top. It should be outlined in purple like a Draenor treasure.
use Music Roll: Mountains##122224 |achieve 9914/31
step
Land here so you can see inside the tree. |goto Ashenvale/0 57.0,50.2<0.5
click Lost Sentinel's Pouch##240617 |goto Ashenvale/0 56.4,49.3
|tip It's a small pouch made of wrapped leaves sitting in front of the spirit stone inside the tree trunk. It should be outlined in purple like a Draenor treasure.
use Music Roll: Magic##122226 |achieve 9914/1
step
Use your Fishing skill anywhere at the Pools of Vision. |cast Fishing##131474 |goto Thunder Bluff/0 22.2,16.9
use Music Roll: Mulgore Plains##122214 |achieve 9914/21
step
Head to the Royal Quarter. |goto Undercity/0 52.4,64.2<5
click Sylvanas' Strongbox##240623 |goto Undercity/0 58.6,93.8
use Music Roll: Lament of the Highborne##122233 |achieve 9914/6
step
Fly out to the Faerie Dragon ring and wait for the event to start. It starts every 15 minutes and lasts for 3 minutes. The nest is only available during the event.
click Faerie Dragon Nest##240624 |goto Tirisfal Glades/0 17.6,67.6
|tip It's a small dirt pile with two eggs nested in it right in the center of the Faerie ring. It should be outlined in purple like a Draenor treasure.
use Music Roll: Faerie Dragon##122234 |achieve 9914/7
step
Go to this spot in the Raven Hill Cemetery, fly straight up, dismount, and die. |goto Duskwood/0 24.9,33.6
Release and make your way back to your corpse but _DON'T resurrect until this step is finished_!
talk Forlorn Composer##91592
|tip Wait here for him to walk past if you can't find him on his patrol route around this seciton of the cemetery.
Tell him "_I wish to hear your music._"
use Music Roll: Ghost##122223 |achieve 9914/30
step
map Karazhan/3
path loop off; follow strict; ants curved; dist 5
path	66.7,46.7	Karazhan/4 71.3,45.3	Karazhan/4 41.4,38.4
path	Karazhan/4 26.4,22.7	Karazhan/4 24.8,18.3	Karazhan/4 19.3,42.7
path	Karazhan/4 11.2,41.4	Karazhan/4 12.3,24.0	Karazhan/4 21.3,27.1
talk Barnes##16812
Tell him "_I'm not an actor._"
Then tell him "_Ok. I'll give it a try then._"
Complete the opera event and loot the boss for a chance to drop the Music Roll.
If it doesn't drop you'll have to try again next week.
_Click here_ if it didn't drop to do go the next step. |confirm |next |only if not achieved(9914,22)
use Music Roll: Karazhan Opera House##122231 |achieve 9914/4
step
map Zul'Gurub
path loop off; follow strict; ants curved; dist 5
path	33.0,48.8	34.4,46.6	37.5,46.8
path	39.4,49.2	43.3,50.5	43.5,46.5
path	42.3,39.7	41.4,36.1	42.8,29.9
path	39.7,27.3	35.2,27.3	31.5,24.3
path	47.4,27.7	47.5,20.8	47.7,18.9
path	48.5,19.8	48.2,21.5	46.4,20.9
path	46.5,19.8	47.0,18.8	48.4,18.1
path	46.8,18.5	47.9,20.6	46.9,18.3
path	48.4,18.8	46.3,19.8	46.5,21.3
path	48.4,21.1	48.4,18.9	47.5,21.2
path	46.8,27.9	42.8,30.2	41.3,36.9
path	42.3,39.8	46.2,39.9	46.7,42.8
path	50.9,42.6	50.8,39.8	48.9,39.8
kill Zanzil##52053
kill High Priestess Kilnara##52059
kill Jin'do the Godbreaker##52148
If it doesn't drop you'll have to try again tomorrow
_Click here_ if it didn't drop to do go the next step |confirm |next |only if not achieved(9914,12)
use Music Roll: Zul'Gurub Voodoo##122215 |achieve 9914/23
step
The Arena Chest spawns every three hours starting with 12 A.M. daily. Standing in the Areana does flag you for PVP.
click Arena Treasure Chest##179697 |goto The Cape of Stranglethorn 46.5,36.1
use Music Roll: Angelic##122222 |achieve 9914/29
step
Enter the prison here. |goto Shadowmoon Valley/0 57.4,49.6<0.5
Make your way past the portcullis into the prison cell.
click Warden's Scroll Case##240622 |goto Shadowmoon Valley/0 57.3,47.1
use Music Roll: The Black Temple##122228 |achieve 9914/2
step
map Halls of Lightning/1
path loop off; follow strict; dist 15
path	31.1,54.3	35.2,71.9	53.5,71.9
path	57.2,53.9	Halls of Lightning/2 57.5,22.0	Halls of Lightning/2 42.1,21.8
path	Halls of Lightning/2 47.1,40.1	Halls of Lightning/2 47.9,52.2	Halls of Lightning/2 60.0,54.9
path	Halls of Lightning/2 60.9,76.0	Halls of Lightning/2 28.8,75.8	Halls of Lightning/2 19.6,82.8
path	Halls of Lightning/2 19.1,55.9
kill Loken##28923
If it doesn't drop you'll have to try again by resetting the instance.
use Music Roll: Mountains of Thunder##122237 |achieve 9914/9
step
map Grizzly Hills
path loop off; follow strict; ants curved; dist 20
path	34.8,54.6	32.4,53.4	30.6,50.8
path	27.4,50.8	24.6,53.2	21.4,52.4
path	18.6,53.8	16.2,57.4	16.2,59.6
path	16.4,61.4	17.6,68.4	26.0,69.4
path	27.6,69.2	34.6,70.8	35.8,66.8
path	39.6,62.2	39.0,56.8	45.0,52.4
path	44.2,46.6	45.0,39.4	48.0,32.6
path	51.2,32.2	55.0,29.8	61.2,37.8
path	61.8,43.4	64.2,44.0	61.4,46.0
path	60.2,52.0
Find Remington Brode along this path.
talk Remington Brode##91632
Tell him "_<Breathe deeply.>_"
Then tell him "_I'm looking for a song._"
Then "_A song about the wilderness._"
FInally "_Yes!_"
use Music Roll: Totems of the Grizzlemaw##122236 |achieve 9914/8
step
talk Tan Shin Tiao##64605
buy 1 Music Roll: Song of Liu Lang##122221 |n |goto Vale of Eternal Blossoms 82.2,29.4
use Music Roll: Song of Liu Lang##122221 |achieve 9914/13
step
Congratulations, you have earned the Azeroth's Top Twenty Tunes Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Builder",{
achieveid={9095},
patch='60001',
description="\nUpgrade all the buildings on your garrison plots to level 2.",
},[[
step
#include "Garrison_ArchitectTable"
_Upgrade_ all the buildings on your garrison plots listed below
_Upgrade_ #2# small buildings |achieve 9095/3
|tip Profession Buildings, Salvage Yard, Storehouse.
_Upgrade_ #2# medium buildings |achieve 9095/1
|tip Barn, Frostfire Tavern, Gladiator's Sanctum, Lumber Mill, Trading Post.
_Upgrade_ #1# large building |achieve 9095/2
|tip Barracks, Stables, War Mill, Goblin Gearworks, Spirit Lodge.
step
Congratulations, you have _earned_ the Builder Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Choppin' Even More Logs", {
achieveid={9080},
patch='60001',
description="\nPlace 100 Work Orders at the Lumber Mill.",
},[[
step
This achievement _requires_ a level 1 Lumber Mill
Work Orders can be completed for the Mill by chopping down trees in Draenor and collecting Timber
|tip Ten timber equals one work order.
#include "Garrison_Medium_Building"
_Place_ #100# work orders the Lumber Mill |achieve 9080
step
Congratulations, you have _earned_ the Choppin' Even More Logs Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Choppin' Some Logs",{
achieveid={9076},
patch='60001',
description="\nPlace 10 Work Orders at the Lumber Mill.",
},[[
step
_This achievement requires a level 1 Lumber Mill_
Work Orders can be completed for the Mill by chopping down trees in Draenor and collecting Timber
|tip Ten timber equals one work order.
#include "Garrison_Medium_Building"
_Place_ #10# work orders the Lumber Mill |achieve 9076
step
Congratulations, you have _earned_ the Choppin' Some Logs Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Choppin' Some More Logs",{
achieveid={9077},
patch='60001',
description="\nPlace 50 Work Orders at the Lumber Mill.",
},[[
step
_This achievement requires a level 1 Lumber Mill_
Work Orders can be completed for the Mill by chopping down trees in Draenor and collecting Timber
|tip Ten timber equals one work order.
#include "Garrison_Medium_Building"
_Place_ #50# work orders the Lumber Mill |achieve 9077
step
Congratulations, you have _earned_ the Choppin' Some More Logs Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Commander",{
achieveid={9494},
patch='60001',
description="\nRecruit 40 followers.",
},[[
step
Please _refer to_ our individual follower guides to track down the more elusive followers on the list
_You can also recruit one a week_ from your Garrison Inn
_Recruit_ #40# followers |achieve 9494
step
Congratulations, you have _earned_ the Commander Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Draenor Pet Brawler",{
achieveid={9264},
patch='60001',
description="\nWin 2000 pet battles in Draenor.",
},[[
step
_Win_ #2000# pet battles in Draenor |achieve 9264 |goto Frostfire Ridge 54,20
|tip A good place to grind is near the neutral flight master at Bloodmaul Slag Mines in Frostfire Ridge.
step
Congratulations, you have _earned_ the Draenor Pet Brawler Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Draftsman",{
achieveid={9125},
patch='60001',
description="\nLearn 20 garrison blueprints.",
},[[
step
#include "Garrison_BlueprintVendor"
_Buy_ #20# different blueprints for updating your Garrison plots |achieve 9125
step
Congratulations, you have _earned_ the Draftsman Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Even More Plots",{
achieveid={9546},
patch='60001',
description="\nThis guide will walk you through upgrading your garrison to level 3.",
},[[
step
_You need to at least have a Level 2 Garrison_
To unlock access to a level 2 Garrison you must have completed the first 5 Frostfire Ridge questlines
|achieve 8671/1
|achieve 8671/2
|achieve 8671/3
|achieve 8671/4
|achieve 8671/5
Follow the Frostfire Ridge Leveling guide for a walkthrough for this achievement
|only if not completedq(36567)
step
talk Gazlowe##78466
accept Bigger is Better##36567 |goto Frostwall/0 52.5,53.4
step
#include "Garrison_ArchitectTable"
Upgrade your garrison to Tier 2 |q 36567/1
step
_Enter_ your Town Hall |goto Frostwall/0 43.4,50.4 < 10
talk Gazlowe##78466
turnin Bigger is Better##36567 |goto 42.1,55.5
step
You will be able to upgrade your Garrison to level 3 after reaching level 100
It costs 5000 gold and 2000 Garrison Resources
|confirm |only if not completedq(36614)
step
talk Gazlowe##78466
accept My Very Own Fortress##36614 |goto 42.1,55.5
step
Gather 2000 Garrison Resources |q 36614/1
step
#include "Garrison_ArchitectTable"
Select your _Great Hall_ and click _Upgrade_
Upgrade Your Garrison to Tier 3 |q 36614/2
step
talk Gazlowe##78466
turnin My Very Own Fortress##36614 |goto Frostwall/0 37.9,50.7
step
Congratulations, you have earned the Even More Plots Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Exploration Mission Specialist",{
achieveid={9150},
patch='60001',
description="\nComplete a garrison exploration mission.",
},[[
step
#include "Garrison_CommandTable"
_Select a mission with the Exploration icon_ and complete it. |achieve 9150
|tip The icon looks like a spyglass.
step
Congratulations, you have earned the _Exploration Mission Specialist_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Fearless Leader",{
achieveid={9109},
patch='60001',
description="\nRecruit 25 followers.",
},[[
step
Use our follower guide to obtain more followers
You can recruit a follower per week from your _Garrison Inn_
_Recruit_ #25# followers |achieve 9109
step
Congratulations, you have _earned_ the Fearless Leader Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Filling the Ranks",{
achieveid={9129},
patch='60001',
description="\nRaise 20 garrison followers to level 100.",
},[[
step
Complete _Garrison Missions_ to raise followers level
#include "Garrison_CommandTable"
_Raise_ #20# followers to level 100 |achieve 9129
step
Congratulations, you have _earned_ the Filling the Ranks Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Follow the Leader",{
achieveid={9107},
patch='60001',
description="\nRecruit 5 followers.",
},[[
step
Use our follower guide to obtain more followers
You can recruit a follower per week from your _Garrison Inn_
_Recruit_ #5# followers |achieve 9107
step
Congratulations, you have _earned_ the Follow the Leader Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Following Up",{
achieveid={9110},
patch='60001',
description="\nRaise a follower to level 100.",
},[[
step
Complete _Garrison Missions_ to raise followers level
#include "Garrison_CommandTable"
_Raise_ #1# follower to level 100 |achieve 9110
step
Congratulations, you have _earned_ the Filling the Ranks Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Garrison Buddies",{
achieveid={9132},
patch='60001',
description="\nThis guide will walk you through visiting a friend's garrison and waving.",
},[[
step
Create a group with a friend
Right Click your portrait and select _"View Leader's Garrison"_
|tip You must be in your garrison first.
Click on your friend and perform a /wave emote |achieve 9132
step
Congratulations, you have earned the Garrison Buddies Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Grand Master Draftsman",{
achieveid={9128},
patch='60001',
description="\nLearn 60 garrison blueprints.",
},[[
step
#include "Garrison_BlueprintVendor"
_Buy_ #60# different blueprints for updating your Garrison plots |achieve 9128
step
Congratulations, you have _earned_ the Grand Master Draftsman Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\In Pursuit of Gul'dan",{
achieveid={10074},
patch='60200',
description="\nComplete the Garrison Campaign chapters listed below.",
},[[
step
Enter Your Garrison:
accept Garrison Campaign: War Council##38567 |goto Frostwall/0 40.1,54.0
|tip You will automatically accept this quest.
step
talk Vol'jin##92400
turnin Garrison Campaign: War Council##38567 |goto Frostwall/0 39.1,54.8
accept We Need a Shipwright##38568 |goto Frostwall/0 39.1,54.8
step
talk Bron Skyhorn##79407 |goto Frostwall/0 45.8,50.9
Tell him _"I am needed urgently at the Iron Docks."_
Travel to the Iron Docks |goto Gorgrond/0 56.0,6.7 < 100 |noway |c |q 38568
accept Clearing the Docks##38569
|tip You will accept this quest automatically when you arrive at the Iron Docks.
step
talk Sammy Fivefingers##89937
turnin We Need a Shipwright##38568 |goto Gorgrond/0 56.1,6.7
accept Derailment##38570 |goto Gorgrond/0 56.1,6.7
stickystart "clearing_the_docks"
step
_Go through_ the doorway |goto Gorgrond/0 56.3,8.2 < 20 |only if walking
_Follow_ the path |goto Gorgrond/0 56.8,10.3 < 30 |only if walking
_Run up_ the ramp |goto Gorgrond/0 56.7,11.5 < 20 |only if walking
click Detonator##240518
|tip It's a wooden box with a handle on top of it, on the ground next to a wall.
collect Detonator##122516 |q 38570/2 |goto Gorgrond/0 56.5,11.6
step
_Run up_ the ramp |goto Gorgrond/0 56.9,14.1 < 30 |only if walking
click Explosive Charges##240517
|tip It looks like a big basket full of metal bombs, on the ground between 2 huge metal loops.
collect Explosive Charges##122515 |q 38570/1 |goto Gorgrond/0 56.4,15.1
step
label "clearing_the_docks"
kill Iron Grunt##91599+, Iron Rearguard##89952+, Ogron Lifter##89951+
|tip Kill any mobs you see.
clicknpc Iron Siege Ram##93174+
|tip Destroy siege weapons.
clicknpc Iron Horde Transport##93147+
|tip Sink transports. They are boats floating next to walls in the water.
kill Felsworn Prophet##91596+
Disrupt the Iron Horde Evacuation |q 38569/1 |goto Gorgrond/0 56.9,12.0
|tip You will see a progress bar in your quest tracking area.
step
talk Durotan##92401
turnin Derailment##38570 |goto Gorgrond/0 56.8,17.2
accept The Train Gang##38571 |goto Gorgrond/0 56.8,17.2
step
clicknpc Explosive Charge##93209
|tip It looks like a yellow spiked bomb sitting up on the train.
Plant the First Explosive |q 38571/1 |goto Gorgrond/0 56.9,16.9
step
clicknpc Explosive Charge##93209
|tip It looks like a yellow spiked bomb sitting up on the train.
Plant the Second Explosive |q 38571/2 |goto Gorgrond/0 56.9,17.2
step
clicknpc Explosive Charge##93209
|tip It looks like a yellow spiked bomb sitting up on the train.
Plant the Third Explosive |q 38571/3 |goto Gorgrond/0 56.9,17.4
step
click Detonator##240518
|tip It's a wooden box with a handle on top of it, on the ground.
Blow Open the Train |q 38571/4 |goto Gorgrond/0 56.8,17.2
Watch the dialogue
Recruit Solog Roark |q 38571/5 |goto Gorgrond/0 56.8,17.2
step
talk Solog Roark##91242
turnin The Train Gang##38571 |goto Gorgrond/0 56.8,17.2
accept Hook, Line, and... Sink Him!##38572 |goto Gorgrond/0 56.8,17.2
step
_Follow_ the path |goto Gorgrond/0 52.9,17.8 < 30 |only if walking
click Blackrock Grapple##241130
|tip It looks like a metal cannon pointing upward.
Grapple to Knar's Bunker |q 38572/1 |goto Gorgrond/0 50.7,16.1
step
_Enter_ the building |goto Gorgrond/0 50.6,17.0 < 20 |walk
kill Admiral Knar##92191
collect Roark's Shipyard Blueprints##123867 |q 38572/2 |goto Gorgrond/0 50.6,17.6
step
talk Solog Roark##91242
turnin Hook, Line, and... Sink Him!##38572 |goto Gorgrond/0 50.6,16.7
accept Nothing Remains##38573 |goto Gorgrond/0 50.6,16.7
step
talk Vol'jin##92400
turnin Nothing Remains##38573 |goto Frostwall/0 39.1,54.8
accept All Hands on Deck##38574 |goto Frostwall/0 39.1,54.8
step
_Follow_ the path |goto Frostwall/0 36.5,40.9 < 30 |only if walking
Go through the doorway |goto Frostwall/0 27.0,55.4 < 20 |only if walking
talk Solog Roark##91242
turnin All Hands on Deck##38574 |goto Frostfire Ridge/0 41.5,69.9
step
talk Rolosh Wavechaser##94789
accept Let's Get To Work##39236 |goto Frostfire Ridge/0 41.6,72.3
step
talk Solog Roark##94429
turnin Let's Get To Work##39236 |goto Frostfire Ridge/0 40.7,70.3
accept Shipbuilding##39241 |goto Frostfire Ridge/0 40.7,70.3
step
use Ship Blueprint: Transport##127268
Learn the Ship Blueprint: Transport |q 39241/1
step
talk Solog Roark##94429
turnin Shipbuilding##39241 |goto Frostfire Ridge/0 40.7,70.3
accept Ship Shape##39242 |goto Frostfire Ridge/0 40.7,70.3
step
talk Solog Roark##94429
Tell him _"Start construction on our first transport."_
Click _Start Work Order_ in the window
Start Construction on a Transport Ship |q 39242/1 |goto Frostfire Ridge/0 40.7,70.3
step
click Transport Ship##243699
|tip It looks like a huge wooden ship sitting on the beach.
Interact with the Transport once Construction is Complete |q 39242/2 |goto Frostfire Ridge/0 40.4,70.0
|tip It takes 1 minute to build after you begin the work order.
step
talk Solog Roark##94429
turnin Ship Shape##39242 |goto Frostfire Ridge/0 40.7,70.3
accept The Invasion of Tanaan##37889 |goto Frostfire Ridge/0 40.7,70.3
step
_Follow_ the path |goto Frostfire Ridge/0 41.5,72.1 < 30 |only if walking
Meet With Khadgar |q 37889/1 |goto Frostfire Ridge/0 40.8,73.3
step
talk Draka##90481
Tell her _"Let us begin the invasion."_
Speak With Draka |q 37889/2 |goto Frostfire Ridge/0 40.7,73.3
step
talk Draka##89822
turnin The Invasion of Tanaan##37889 |goto Tanaan Jungle/0 73.4,71.1
accept Obstacle Course##37890 |goto Tanaan Jungle/0 73.4,71.1
step
_Follow_ the road |goto Tanaan Jungle/0 72.3,64.8 < 30 |only if walking
_Enter_ the building |goto Tanaan Jungle/0 69.3,64.2 < 20 |walk
click Letter from Kilrogg##240888
|tip It looks like a tan rolled up scroll laying on the floor inside this building.
Find Information on the Bleeding Hollow |q 37890/1 |goto Tanaan Jungle/0 68.9,64.9
step
_Follow_ the dirt path |goto Tanaan Jungle/0 71.3,57.6 < 30 |only if walking
_Enter_ the building |goto Tanaan Jungle/0 73.5,56.6 < 20 |walk
click Magril's Journal##240889
|tip It looks like a big purple book laying on a bed inside this building.
Find Information on the Cultists |q 37890/2 |goto Tanaan Jungle/0 74.0,56.1
step
_Follow_ the road |goto Tanaan Jungle/0 71.1,57.5 < 40 |only if walking
talk Shadow Hunter Mutumba##90238
turnin Obstacle Course##37890 |goto Tanaan Jungle/0 69.5,54.2
accept In, Through, and Beyond!##37934 |goto Tanaan Jungle/0 69.5,54.2
step
_Follow_ the path up |goto Tanaan Jungle/0 63.6,52.7 < 20 |only if walking
Reach the Fel Defense Cannon |q 37934/1 |goto Tanaan Jungle/0 63.6,52.1
step
click Ammunition Pile##240914
|tip It looks like a pile of huge metal spiked bombs.
Destroy the Fel Defense Cannon |q 37934/2 |goto Tanaan Jungle/0 64.3,51.6
step
_Run down_ the path |goto Tanaan Jungle/0 63.4,51.6 < 20 |only if walking
Meet up with Shadow Hunter Mutumba |q 37934/3 |goto Tanaan Jungle/0 62.6,50.9
step
talk Shadow Hunter Mutumba##90238
turnin In, Through, and Beyond!##37934 |goto Tanaan Jungle/0 62.6,50.9
accept The Assault Base##37935 |goto Tanaan Jungle/0 62.6,50.9
step
_Follow_ the path |goto Tanaan Jungle/0 61.7,51.2 < 20 |only if walking
_Run up_ the path |goto Tanaan Jungle/0 60.3,49.9 < 20 |only if walking
Follow Mutumba |q 37935/1 |goto Tanaan Jungle/0 60.9,47.1
step
clicknpc Horde Banner##120955
|tip It looks like a yellow hanging flag with the Horde logo on it.
Plant the Flag to Build the Base |q 37935/2 |goto Tanaan Jungle/0 60.9,47.0
step
talk Gargash the Diver##90550
fpath Vol'mar |goto Tanaan Jungle/0 60.4,46.4
step
_Enter_ the building |goto Tanaan Jungle/0 61.2,46.1 < 10 |walk
talk Draka##90481
turnin The Assault Base##37935 |goto Tanaan Jungle/0 61.5,45.8
step
Complete the following guide before continuing:
_Tanaan Jungle (100)_
confirm |only if not completedq(38578)
step
talk Draka##90481
accept Garrison Campaign: The Bane of the Bleeding Hollow##38453 |goto Tanaan Jungle/0 61.5,45.8
|tip If this quest is not available to you, try relogging or find and use the guide to find a quest that is available to you. A new random Garrison Campaign quest will be available each week until you complete the campaign.
step
_Follow_ the path |goto Tanaan Jungle/0 27.9,58.9 < 30 |only if walking
_Run up_ the dirt path |goto Tanaan Jungle/0 21.3,59.0 < 30 |only if walking
kill Bleeding Hollow Hunter##89699+, Bleeding Hollow Impaler##89705+, Bleeding Hollow Cabalist##90851+
collect 8 Bleeding Hollow Hunting Map##127006 |q 38453/1 |goto Tanaan Jungle/0 22.7,53.5
step
Click the _Quest Complete_ Box:
turnin Garrison Campaign: The Bane of the Bleeding Hollow##38453
accept Finding the Killer##38270
step
_Follow_ the path |goto Tanaan Jungle/0 23.1,50.2 < 30 |only if walking
_Go down_ the path |goto Tanaan Jungle/0 24.0,48.6 < 30 |only if walking
_Run up_ the dirt path |goto Tanaan Jungle/0 27.6,47.2 < 30 |only if walking
talk Ariok##91299
turnin Finding the Killer##38270 |goto Tanaan Jungle/0 27.1,44.4
accept Following the Bloody Path##38271 |goto Tanaan Jungle/0 27.1,44.4
step
_Run up_ the path |goto Tanaan Jungle/0 27.8,44.2 < 30 |only if walking
|tip Avoid the traps on the ground.
_Follow_ the path down |goto Tanaan Jungle/0 30.5,40.1 < 30 |only if walking
talk Ariok##91351
turnin Following the Bloody Path##38271 |goto Tanaan Jungle/0 32.6,37.5
accept The Bleeding Hollow##38272 |goto Tanaan Jungle/0 32.6,37.5
step
click Orc Skull##240547
|tip It looks like a tall wooden totem stuck vertically in the ground, with a skull at the top of it.
accept Spirits of the Bleeding Hollow##38273 |goto Tanaan Jungle/0 32.4,37.4
stickystart "6enraged_blood_spirits"
step
_Run down_ the spiral ramp and _follow_ the path |goto Tanaan Jungle/0 32.1,37.2 < 20 |walk
_Continue_ following the path down |goto Tanaan Jungle/0 32.3,38.6 < 20 |walk
_Follow_ the path down |goto Tanaan Jungle/0 33.0,37.3 < 30 |walk
_Keep going_ down |goto Tanaan Jungle/0 32.6,35.3 < 30 |walk
_Follow_ the path |goto Tanaan Jungle/0 31.9,37.6 < 20 |walk
_Continue_ through the tunnel |goto Tanaan Jungle/0 32.9,38.1 < 20 |walk
Reach the Bottom of the Bleeding Hollow |q 38272/1 |goto Tanaan Jungle/0 33.1,36.8
step
label "6enraged_blood_spirits"
kill 6 Enraged Blood Spirit##91313+ |q 38273/1 |goto Tanaan Jungle/0 33.1,36.8
step
Click the _Quest Complete_ Box:
turnin Spirits of the Bleeding Hollow##38273
step
talk Braknoth##91324
turnin The Bleeding Hollow##38272 |goto Tanaan Jungle/0 33.4,37.3
accept The Eye of Kilrogg##38274 |goto Tanaan Jungle/0 33.4,37.3
step
click Eye Holder##240570
|tip They look like skulls stuck in the wall around this area.
kill Enraged Blood Spirit##91313+
collect Eye of Kilrogg##122574 |q 38274/1 |goto Tanaan Jungle/0 34.3,35.7
step
_Follow_ the path |goto Tanaan Jungle/0 33.0,36.8 < 20 |only if walking
click Ritual of the Bleeding Hollow##241611
|tip It looks like a skull on the ground.
Watch the dialogue
kill Eye of Kilrogg##91475
Complete the Eye Ritual |q 38274/2 |goto Tanaan Jungle/0 32.6,36.8
step
talk Ariok##92317
turnin The Eye of Kilrogg##38274 |goto Tanaan Jungle/0 32.8,37.5
step
talk Draka##90481
accept Garrison Campaign: Onslaught at Auchindoun##38415 |goto Tanaan Jungle/0 61.5,45.8
|tip If this quest is not available to you, try relogging or find and use the guide to find a quest that is available to you. A new random Garrison Campaign quest will be available each week until you complete the campaign.
step
_Follow_ the path |goto Talador/0 42.8,74.5 < 30 |only if walking
talk Lady Liadrin##91750
turnin Garrison Campaign: Onslaught at Auchindoun##38415 |goto Talador/0 44.2,65.2
accept Secrets of the Sargerei##38416 |goto Talador/0 44.3,65.4
accept The Sargerei Menace##38417 |goto Talador/0 44.3,65.4
step
kill Burning Hound##91707+, Sargerei Punisher##91685+, Sargerei Souldrainer##91686+
kill 12 Sargerei |q 38417/1 |goto Talador/0 46.0,63.2
step
Click the _Quest Complete_ Box:
turnin The Sargerei Menace##38417
step
_Jump down_ into the hole |goto Talador/0 46.8,63.4 < 20 |walk
_Go down_ the path and _jump down_ here |goto Talador/30 41.9,29.3 < 20 |walk
Enter the Breached Ossuary |q 38416/1 |goto Talador/30 44.0,29.5
step
_Follow_ the path |goto Talador/30 47.6,28.4 < 20 |walk
click Fel Soul Drainer##240685
|tip It's a big green floating crystal.
Destroy the East Fel Soul Drainer |q 38416/3 |goto Talador/30 63.5,17.4
step
_Go through_ the doorway |goto Talador/30 47.5,28.6 < 20 |walk
_Follow_ the path |goto Talador/30 40.0,33.5 < 20 |walk
click Fel Soul Drainer##240685
|tip It's a big green floating crystal.
Destroy the West Fel Soul Drainer |q 38416/2 |goto Talador/30 24.2,44.5
step
_Go through_ the doorway |goto Talador/30 40.1,33.5 < 20 |walk
_Follow_ the path down |goto Talador/30 46.2,38.8 < 20 |walk
Investigate the Lower Chamber |q 38416/4 |goto Talador/30 49.7,50.3
step
click Corrupted Soul Focus##240688
|tip It looks like a big floating stone slab.
Destroy #1# Corrupted Soul Focus |q 38416/5 |goto Talador/30 56.0,70.7
step
click Corrupted Soul Focus##240688
|tip It looks like a big floating stone slab.
Destroy #2# Corrupted Soul Focus |q 38416/5 |goto Talador/30 53.8,85.1
step
click Corrupted Soul Focus##240688
|tip It looks like a big floating stone slab.
Destroy #3# Corrupted Soul Focus |q 38416/5 |goto Talador/30 64.8,77.2
Watch the dialogue
Defeat Gorefiend |q 38416/6
step
talk Lady Liadrin##91750
turnin Secrets of the Sargerei##38416 |goto Talador/30 53.5,68.9
step
talk Reshad##91292
accept Garrison Campaign: In the Shadows##37688 |goto Tanaan Jungle/0 60.5,46.3
|tip If this quest is not available to you, try relogging or find and use the guide to find a quest that is available to you. A new random Garrison Campaign quest will be available each week until you complete the campaign.
step
use Reshad's Volatile Concoction##122463
|tip Walk around camp until blue smoking balls of light appear. Use Reshad's Volatile Concoction on it when you find one.
kill 3 Council Nightblade##91230 |q 37688/1 |goto Tanaan Jungle/0 60.3,45.5
step
talk Reshad##91292
turnin Garrison Campaign: In the Shadows##37688 |goto Tanaan Jungle/0 60.5,46.3
accept Friends Above##38269 |goto Tanaan Jungle/0 60.5,46.3
step
talk Gargash the Diver##90550 |goto Tanaan Jungle/0 60.4,46.4
Tell him _"Take me to Aktar's Post."_
Meet With Reshad at Aktar's Post |q 38269/1
step
talk Reshad##91291
turnin Friends Above##38269 |goto Tanaan Jungle/0 25.8,38.9
accept Get a Clue##38213 |goto Tanaan Jungle/0 25.8,38.9
step
_Follow_ the path |goto Tanaan Jungle/0 24.6,39.9 < 30 |only if walking
click Message to Iskar##240347
|tip It looks like a tan scroll, laying flat on a small round table.
Find Clue #1 |q 38213/1 |goto Tanaan Jungle/0 22.1,39.3
step
_Run down_ the path |goto Tanaan Jungle/0 22.3,38.9 < 20 |only if walking
click Shrine of Terokk##240348
|tip It looks like a small bird totem laying in a small fire.
Find Clue #2 |q 38213/2 |goto Tanaan Jungle/0 20.4,35.9
step
_Run down_ the dirt path |goto Tanaan Jungle/0 20.7,38.5 < 30 |only if walking
_Continue_ following the path |goto Tanaan Jungle/0 19.7,40.1 < 30 |only if walking
click Inscribed Ruin##240345
|tip It looks like a partly broken circular stone leaning next to the wall.
Find Clue #3 |q 38213/3 |goto Tanaan Jungle/0 18.8,39.8
step
_Follow_ the path |goto Tanaan Jungle/0 18.2,41.1 < 30 |only if walking
_Run around_ the corner |goto Tanaan Jungle/0 16.4,44.6 < 30 |only if walking
Find the Final Clue |q 38213/4 |goto Tanaan Jungle/0 16.1,44.3
step
click Iskar's Tome of Shadows##240317
|tip It looks like a small black book, partly torn in half, sitting on a small round table.
turnin Get a Clue##38213 |goto Tanaan Jungle/0 16.1,44.3
accept Dark Ascension##38223 |goto Tanaan Jungle/0 16.1,44.3
step
talk Reshad##89400
Tell him _"I'm ready to begin."_
Speak to Reshad |q 38223/1 |goto Tanaan Jungle/0 16.1,44.4
step
Kill the enemies that attack in waves
Protect Reshad |q 38223/2 |goto Tanaan Jungle/0 15.9,44.7
step
talk Reshad##89400
turnin Dark Ascension##38223 |goto Tanaan Jungle/0 16.1,44.3
step
talk Draka##90481
accept Garrison Campaign: The Warlock##38458 |goto Tanaan Jungle/0 61.5,45.8
|tip If this quest is not available to you, try relogging or find and use the guide to find a quest that is available to you. A new random Garrison Campaign quest will be available each week until you complete the campaign.
step
talk Oronok Torn-heart##91994
|tip He looks like an armored orc, kneeling down inside this building near the fire.
Tell him _"Speak quickly warlock."_
Speak with the Warlock |q 38458/1 |goto Tanaan Jungle/0 60.6,46.6
step
Go to the Vault of the Earth |q 38458/2 |goto Tanaan Jungle/0 47.1,70.2
step
_Enter_ the cave |goto Tanaan Jungle/0 47.3,70.7 < 30 |walk
_Follow_ the path |goto Tanaan Jungle/0 47.4,71.7 < 30 |walk
Stop Gul'dan |q 38458/3 |goto Tanaan Jungle/0 46.7,73.1
|tip Watch the dialogue.
step
_Follow_ the path |goto Tanaan Jungle/0 47.4,71.7 < 30 |walk
_Leave_ the cave |goto Tanaan Jungle/0 47.3,70.7 < 30 |walk
talk Oronok Torn-heart##92055
turnin Garrison Campaign: The Warlock##38458 |goto Tanaan Jungle/0 47.4,70.4
accept Breaching the Barrier##38462 |goto Tanaan Jungle/0 47.4,70.4
step
_Follow_ the path |goto Tanaan Jungle/0 45.0,42.2 < 30 |only if walking
click The Tome of Protection##241118
|tip It looks like a big book floating above a stone pedastal, next to a pool of green liquid.
Steal the Tome of Protection |q 38462/2 |goto Tanaan Jungle/0 46.4,41.6
step
_Cross_ the bridge |goto Tanaan Jungle/0 47.5,42.7 < 30 |only if walking
_Run up_ the path |goto Tanaan Jungle/0 48.2,43.9 < 30 |only if walking
click The Black Candle##241117
|tip It looks like a white and gray skinny candle with a green flame, sitting on a stone table next to a pile of spikey bombs.
Steal the Black Candle |q 38462/1 |goto Tanaan Jungle/0 49.2,43.2
step
_Run through_ the narrow passage here |goto Tanaan Jungle/0 49.4,42.7 < 20 |only if walking
_Follow_ the path |goto Tanaan Jungle/0 50.2,42.9 < 30 |only if walking
click The Shadowblade##241119
|tip It looks like a big floating dagger with a purple glowing blade.
Steal the Shadowblade |q 38462/3 |goto Tanaan Jungle/0 50.3,41.8
step
_Run up_ the path |goto Tanaan Jungle/0 54.5,40.7 < 30 |only if walking
_Follow_ the path up |goto Tanaan Jungle/0 62.2,33.5 < 30 |only if walking
talk Oronok Torn-heart##92120
turnin Breaching the Barrier##38462 |goto Tanaan Jungle/0 62.6,31.1
accept The Cipher of Damnation##38463 |goto Tanaan Jungle/0 62.6,31.1
step
talk Farseer Drek'Thar##93633
Tell him _"Begin the ritual please."_
Watch the dialogue
Speak With Your Allies and Break the Barrier |q 38463/1 |goto Tanaan Jungle/0 62.7,31.1
step
_Run up_ the path |goto Tanaan Jungle/0 62.2,29.6 < 30 |only if walking
Enter the Corrupt Refuge |q 38463/2 |goto Tanaan Jungle/0 62.3,28.0
step
kill Cyrukh##92010
|tip He looks like a big fire elemental.
Destroy Cyrukh |q 38463/3 |goto Tanaan Jungle/0 62.8,27.6
step
talk Farseer Drek'Thar##93659
turnin The Cipher of Damnation##38463 |goto Tanaan Jungle/0 62.90,27.88
step
Congratulations, you have earned the In Pursuit of Gul'dan achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Item Level Army",{
achieveid={9213},
patch='60001',
description="\nRaise 10 followers' item level to 650.",
},[[
step
Your followers' item level _can be raised past 600_ once they hit level 100
_Applying_ weapon and armor enchancements to them at the command table helps keep track of their current item levels
The enhancements can be _earned through_ missions or work orders at the War Mill
|confirm
step
#include "Garrison_CommandTable"
Use the following items to _Increase your followers weapon and armor levels_
use Weapon Enhancement Token##120302
use War Ravaged Weaponry##114616
use Blackrock Weaponry##114081
use Goredrenched Weaponry##114622
use Balanced Weapon Enhancement##114128
use Striking Weapon Enhancement##114129
use Power Overrun Weapon Enhancement##114131
use Armor Enhancement Token##120301
use War Ravaged Armor Set##114807
use Blackrock Armor Set##114806
use Goredrenched Armor Set##114746
use Braced Armor Enhancement##114745
use Fortified Armor Enhancement##114808
use Heavily Reinforced Armor Enhancement##114822
|achieve 9213
step
Congratulations, you have _earned_ the Item Level Army Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Item Level Force",{
achieveid={9243},
patch='60001',
description="\nRaise 20 followers' item level to 650.",
},[[
step
Your followers' item level _can be raised past 600_ once they hit level 100
_Applying_ weapon and armor enchancements to them at the command table helps keep track of their current item levels
The enhancements can be _earned through_ missions or work orders at the War Mill
|confirm
step
#include "Garrison_CommandTable"
Use the following items to _Increase your followers weapon and armor levels_
use Weapon Enhancement Token##120302
use War Ravaged Weaponry##114616
use Blackrock Weaponry##114081
use Goredrenched Weaponry##114622
use Balanced Weapon Enhancement##114128
use Striking Weapon Enhancement##114129
use Power Overrun Weapon Enhancement##114131
use Armor Enhancement Token##120301
use War Ravaged Armor Set##114807
use Blackrock Armor Set##114806
use Goredrenched Armor Set##114746
use Braced Armor Enhancement##114745
use Fortified Armor Enhancement##114808
use Heavily Reinforced Armor Enhancement##114822
_Raise_ 20 followers' item level to 650 |achieve 9243
step
Congratulations, you have _earned_ the Item Level Force Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Keeping It Rare",{
achieveid={9142},
patch='60001',
description="\nComplete 50 Rare garrison missions.",
},[[
step
#include "Garrison_CommandTable"
_Select_ #50# missions labeled "Rare" and complete them |achieve 9142
|tip Rare missions are blue shaded and say RARE! under the level requirement.
step
Congratulations, you have _earned_ the Keeping It Rare Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Master Builder",{
achieveid={9096},
patch='60001',
description="\nUpgrade all the buildings on your garrison plots to level 3.",
},[[
step
#include "Garrison_ArchitectTable"
_Upgrade_ all the buildings on your garrison plots listed below
_Upgrade_ #3# small buildings |achieve 9096/1
|tip Profession Buildings, Salvage Yard, Storehouse.
_Upgrade_ #2# medium buildings |achieve 9096/2
|tip Barn, Frostfire Tavern, Gladiator's Sanctum, Lumber Mill, Trading Post.
_Upgrade_ #2# large building |achieve 9096/3
|tip Barracks, Stables, War Mill, Goblin Gearworks, Spirit Lodge.
step
Congratulations, you have _earned_ the Master Builder Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Master Draenor Crafter",{
achieveid={9246},
patch='60001',
description="\nCraft 50 Epic items with an item level of at least 600.",
},[[
step
_Refer to our individual profession guides_ to help with this achievement
_Craft 50 Epic items_ with an item level of at least 600 |achieve 9246
step
Congratulations, you have earned the _Master Draenor Crafter_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Master Draftsman",{
achieveid={9126},
patch='60001',
description="\nLearn 40 garrison blueprints.",
},[[
step
#include "Garrison_BlueprintVendor"
_Buy_ #40# different blueprints for updating your Garrison plots |achieve 9126
step
Congratulations, you have _earned_ the Master Draftsman Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Master of Apexis",{
achieveid={9265},
patch='60001',
description="\nCollect 100,000 Apexis Crystals.",
},[[
step
_Apexis Crystals can be earned_ by completing dailes, weeklies, work orders, and dungeon bosses.
_Collect 100,000_ Apexis Crystals. |achieve 9265
step
Congratulations, you have earned the _Master of Apexis_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Master of Mounts",{
condition_end=function() return achieved(9526) end,
achieveid={9538,9526},
patch='60001',
description="\nFully train all six mounts at your Stables.",
},[[
step
_The minimum level to complete this guide is 99_
This guide _will assist you with earning the achievements_ Intro to Husbandry and Master of Mounts
After you have completed the Intro to Husbandry portion of this guide _you should build your level 2 Stables ASAP_ to gain access to the Black Claw of Sethe
_Carrying the Black Claw of Sethe as early on as possible_ helps gain progress towards the Avanced Husbandry achievement covered in another guide
If you don't want to carry the Black Claw for this guide that's up to you as _it will be fully covered in the Advanced Husbandry and Stable Master achievement guides_
confirm |next
step
#include "Garrison_Large_Building", npc="Tormak the Scarred##86979"
accept Capturing a Clefthoof##36912
This NPC can also be around [Frostwall/0 62.6,35.4] |tip It depends on which Large plot you built this building. |only if garrisonlvl(3)
step
The _beast will move around erratically_ attempting to break free so be on your toes!
_Use_ your Clefthoof Lasso on the Young Icehoof in the area |use Clefthoof Lasso##118181 |q 36916/1 |goto Frostfire Ridge/0 54.0,20.5
step
#include "Garrison_Large_Building"
talk Tormak the Scarred##86979
turnin Capturing a Clefthoof##36912 |achieve 9538/2
step
#include "Garrison_Large_Building",action="talk Sage Paluna##87242",building="Stables"
accept Taming a Talbuk##36917
|tip If you cannot see this quest (it will show up as a daily) you should log out and log back in. This is a Blizzard bug we cannot account for at this time.
step
The _beast will move around erratically_ attempting to break free so be on your toes!
_Use_ your Talbuk Lasso on Young Silverpelts in the area |use Talbuk Lasso##118179 |q 36911/1 |goto Shadowmoon Valley D/0 50.3,30.1
step
#include "Garrison_Large_Building"
talk Sage Paluna##87242
turnin Taming a Talbuk##36917 |achieve 9538/3
step
#include "Garrison_Large_Building"
talk Tormak the Scarred##86979
accept Besting a Boar##36944
|tip If you cannot see this quest (it will show up as a daily) you should log out and log back in. This is a Blizzard bug we cannot account for at this time.
step
The _beast will move around erratically_ attempting to break free so be on your toes!
_Use_ your Boar Lasso on Young Rocktusks in the area |use Boar Lasso##118185 |q 36913/1 |goto Gorgrond/0 43.9,37.3
step
#include "Garrison_Large_Building"
talk Tormak the Scarred##86979
turnin Besting a Boar##36944 |achieve 9538/4
step
#include "Garrison_Large_Building"
talk Sage Paluna##87242
accept Requisition a Riverbeast##36945
|tip If you cannot see this quest (it will show up as a daily) you should log out and log back in. This is a Blizzard bug we cannot account for at this time.
step
The _beast can be captured by following the riverbank_, but can be done much easier with water walking potions or a Water Strider mount
_Use_ your Riverbeast Lasso on the Young Riverwallow in the area. |use Riverbeast Lasso##118183 |q 36918/1 |goto Talador/0 63.8,54.9
step
#include "Garrison_Large_Building"
talk Sage Paluna##87242
turnin Requisition a Riverbeast##36945 |achieve 9538/5
step
#include "Garrison_Large_Building"
talk Tormak the Scarred##86979
accept Entangling an Elekk##36946
|tip If you cannot see this quest (it will show up as a daily) you should log out and log back in. This is a Blizzard bug we cannot account for at this time.
step
The _beast will move around erratically and jump to nearby ledges_ attempting to break free so be on your toes!
_Use_ your Elekk Lasso on the Young Meadowstomper in the area. |use Elekk Lasso##118184 |q 36915/1 |goto Nagrand D/0 84.8,39.6
step
#include "Garrison_Large_Building"
talk Tormak the Scarred##86979
turnin Entangling an Elekk##36946 |achieve 9538/6
step
#include "Garrison_Large_Building"
talk Sage Paluna##87242
accept Wrangling a Wolf##36950
|tip If you cannot see this quest (it will show up as a daily) you should log out and log back in. This is a Blizzard bug we cannot account for at this time.
step
The _beast will move around erratically and jump to nearby ledges_ attempting to break free so be on your toes!
_Use_ your Wolf Lasso on the Young Snarler in the area |use Wolf Lasso##118182 |q 36914/1 |goto Nagrand D/0 55.6,60.9
step
label "captures"
#include "Garrison_Large_Building"
talk Sage Paluna##87242
turnin Wrangling a Wolf##36950 |achieve 9538/1
step
label "start"
#include "Garrison_Large_Building"
talk Tormak the Scarred##86979
You will only be able to _complete 1 of the following quests_ per day
accept Clefthoof Training: Riplash##37050 |or |only if not completedq(37050)
accept Clefthoof Training: Gezz'ran##37051 |or |only if not completedq(37051)
accept Clefthoof Training: Bulbapore##37052 |or |only if not completedq(37052)
accept Clefthoof Training: Cruel Ogres##37053 |or |only if not completedq(37053)
accept Clefthoof Training: Darkwing Roc##37054 |or |only if not completedq(37054)
accept Clefthoof Training: Ironbore##37057 |or |only if not completedq(37057)
accept Clefthoof Training: Moth of Wrath##37055 |or |only if not completedq(37055)
accept Clefthoof Training: Orc Hunters##37058 |or |only if not completedq(37058)
accept Clefthoof Training: The Garn##37059 |or |only if not completedq(37059)
accept Clefthoof Training: Thundercall##37056 |or |only if not completedq(37056)
accept Clefthoof Training: Great-Tusk##37048 |or |only if not completedq(37048)
accept Clefthoof Training: Rakkiri##37049 |or |only if not completedq(37049)
step
#include "Garrison_Large_Building"
talk Tormak the Scarred##86979
You will only be able to _complete 1 of the following quests_ per day
accept Boar Training: Riplash##37032 |or |only if not completedq(37032)
accept Boar Training: Gezz'ran##37033 |or |only if not completedq(37033)
accept Boar Training: Bulbapore##37034 |or |only if not completedq(37034)
accept Boar Training: Cruel Ogres##37035 |or |only if not completedq(37035)
accept Boar Training: Darkwing Roc##37036 |or |only if not completedq(37036)
accept Boar Training: Ironbore##37039 |or |only if not completedq(37039)
accept Boar Training: Moth of Wrath##37037 |or |only if not completedq(37037)
accept Boar Training: Orc Hunters##37040 |or |only if not completedq(37040)
accept Boar Training: The Garn##37041 |or |only if not completedq(37041)
accept Boar Training: Thundercall##37038 |or |only if not completedq(37038)
step
#include "Garrison_Large_Building"
talk Tormak the Scarred##86979
You will only be able to _complete 1 of the following quests_ per day
accept Elekk Training: Cruel Ogres##37063 |or |only if not completedq(37063)
accept Elekk Training: Darkwing Roc##37064 |or |only if not completedq(37064)
accept Elekk Training: Ironbore##37067 |or |only if not completedq(37067)
accept Elekk Training: Moth of Wrath##37065 |or |only if not completedq(37065)
accept Elekk Training: Orc Hunters##37068 |or |only if not completedq(37068)
accept Elekk Training: The Garn##37069 |or |only if not completedq(37069)
accept Elekk Training: Thundercall##37066 |or |only if not completedq(37066)
step
#include "Garrison_Large_Building"
talk Sage Paluna##87242
You will only be able to _complete 1 of the following quests_ per day
accept Wolf Training: Cruel Ogres##37105 |or |only if not completedq(37105)
accept Wolf Training: Darkwing Roc##37106 |or |only if not completedq(37106)
accept Wolf Training: Ironbore##37109 |or |only if not completedq(37109)
accept Wolf Training: Moth of Wrath##37107 |or |only if not completedq(37107)
accept Wolf Training: Orc Hunters##37110 |or |only if not completedq(37110)
accept Wolf Training: The Garn##37111 |or |only if not completedq(37111)
accept Wolf Training: Thundercall##37108 |or |only if not completedq(37108)
step
#include "Garrison_Large_Building"
talk Sage Paluna##87242
You will only be able to _complete 1 of the following quests_ per day
accept Talbuk Training: Riplash##37095 |or |only if not completedq(37095)
accept Talbuk Training: Gezz'ran##37096 |or |only if not completedq(37096)
accept Talbuk Training: Bulbapore##37097 |or |only if not completedq(37097)
accept Talbuk Training: Cruel Ogres##37098 |or |only if not completedq(37098)
accept Talbuk Training: Darkwing Roc##37099 |or |only if not completedq(37099)
accept Talbuk Training: Ironbore##37102 |or |only if not completedq(37102)
accept Talbuk Training: Moth of Wrath##37100 |or |only if not completedq(37100)
accept Talbuk Training: Orc Hunters##37103 |or |only if not completedq(37103)
accept Talbuk Training: The Garn##37104 |or |only if not completedq(37104)
accept Talbuk Training: Thundercall##37101 |or |only if not completedq(37101)
accept Talbuk Training: Great-Tusk##37093 |or |only if not completedq(37093)
accept Talbuk Training: Rakkiri##37094 |or |only if not completedq(37094)
step
#include "Garrison_Large_Building"
talk Sage Paluna##87242
You will only be able to _complete 1 of the following quests_ per day
accept Riverbeast Training: Gezz'ran##37071 |or |only if not completedq(37071)
accept Riverbeast Training: Bulbapore##37072 |or |only if not completedq(37072)
accept Riverbeast Training: Cruel Ogres##37073 |or |only if not completedq(37073)
accept Riverbeast Training: Darkwing Roc##37074 |or |only if not completedq(37074)
accept Riverbeast Training: Ironbore##37077 |or |only if not completedq(37077)
accept Riverbeast Training: Moth of Wrath##37075 |or |only if not completedq(37075)
accept Riverbeast Training: Orc Hunters##37078 |or |only if not completedq(37078)
accept Riverbeast Training: The Garn##37079 |or |only if not completedq(37079)
accept Riverbeast Training: Thundercall##37076 |or |only if not completedq(37076)
step
_Use_ your Silverpelt-In-Training Whistle |use Silverpelt-In-Training Whistle##118352
kill Great-Tusk##87083 |q 37093/1 |goto Shadowmoon Valley D/0 62.7,39.1
only if haveq(37093)
step
_Use_ your Icehoof-In-Training Whistle |use Icehoof-In-Training Whistle##118348
kill Great-Tusk##87083 |q 37048/1 |goto Shadowmoon Valley D/0 62.7,39.1
only if haveq(37048)
step
_Use_ your Silverpelt-In-Training Whistle |use Silverpelt-In-Training Whistle##118352
kill Gezz'ran##87086 |q 37096/1 |goto Talador/0 31.5,54.9
only if haveq(37096)
step
_Use_ your Icehoof-In-Training Whistle |use Icehoof-In-Training Whistle##118348
kill Gezz'ran##87086 |q 37051/1 |goto Talador/0 31.5,54.9
only if haveq(37051)
step
_Use_ your Rocktusk-In-Training Whistle |use Rocktusk-In-Training Whistle##118351
kill Gezz'ran##87086 |q 37033/1 |goto Talador/0 31.5,54.9
only if haveq(37033)
step
_Use_ your Riverwallow-In-Training Whistle |use Riverwallow-In-Training Whistle##118350
kill Gezz'ran##87086 |q 37071/1 |goto Talador/0 31.5,54.9
only if haveq(37071)
step
_Use_ your Silverpelt-In-Training Whistle |use Silverpelt-In-Training Whistle##118352
kill Bulbapore##87087 |q 37097/1 |goto Spires of Arak/0 66.3,75.3
only if haveq(37097)
step
_Use_ your Icehoof-In-Training Whistle |use Icehoof-In-Training Whistle##118348
kill Bulbapore##87087 |q 37052/1 |goto Spires of Arak/0 66.3,75.3
only if haveq(37052)
step
_Use_ your Rocktusk-In-Training Whistle |use Rocktusk-In-Training Whistle##118351
kill Bulbapore##87087 |q 37034/1 |goto Spires of Arak/0 66.3,75.3
only if haveq(37034)
step
_Use_ your Riverwallow-In-Training Whistle |use Riverwallow-In-Training Whistle##118350
kill Bulbapore##87087 |q 37072/1 |goto Spires of Arak/0 66.3,75.3
only if haveq(37072)
step
_Use_ your Silverpelt-In-Training Whistle |use Silverpelt-In-Training Whistle##118352
kill Riplash##87084 |q 37095/1 |goto Gorgrond/0 50.2,38.4
only if haveq(37095)
step
_Use_ your Icehoof-In-Training Whistle |use Icehoof-In-Training Whistle##118348
kill Riplash##87084 |q 37050/1 |goto Gorgrond/0 50.2,38.4
only if haveq(37050)
step
_Use_ your Rocktusk-In-Training Whistle |use Rocktusk-In-Training Whistle##118351
kill Riplash##87084 |q 37032/1 |goto Gorgrond/0 50.2,38.4
only if haveq(37032)
step
_Use_ your Silverpelt-In-Training Whistle |use Silverpelt-In-Training Whistle##118352
kill Rakkiri##87085 |q 37094/1 |goto Frostfire Ridge/0 72.7,70.0
only if haveq(37094)
step
_Use_ your Icehoof-In-Training Whistle |use Icehoof-In-Training Whistle##118348
kill Rakkiri##87085 |q 37049/1 |goto Frostfire Ridge/0 72.7,70.0
only if haveq(37049)
step
_Use_ your Snarler-In-Training Whistle |use Snarler-In-Training Whistle##118353
kill Darkwing Roc##87088 |q 37106/1 |goto Nagrand D/0 68.4,20.3
only if haveq(37106)
step
_Use_ your Silverpelt-In-Training Whistle |use Silverpelt-In-Training Whistle##118352
kill Darkwing Roc##87088 |q 37099/1 |goto Nagrand D/0 68.4,20.3
only if haveq(37099)
step
_Use_ your Icehoof-In-Training Whistle |use Icehoof-In-Training Whistle##118348
kill Darkwing Roc##87088 |q 37054/1 |goto Nagrand D/0 68.4,20.3
only if haveq(37054)
step
_Use_ your Rocktusk-In-Training Whistle |use Rocktusk-In-Training Whistle##118351
kill Darkwing Roc##87088 |q 37036/1 |goto Nagrand D/0 68.4,20.3
only if haveq(37036)
step
_Use_ your Riverwallow-In-Training Whistle |use Riverwallow-In-Training Whistle##118350
kill Darkwing Roc##87088 |q 37074/1 |goto Nagrand D/0 68.4,20.3
only if haveq(37074)
step
_Use_ your Meadowstomper-In-Training Whistle |use Meadowstomper-In-Training Whistle##118349
kill Darkwing Roc##87088 |q 37064/1 |goto Nagrand D/0 68.4,20.3
only if haveq(37064)
step
_Use_ your Snarler-In-Training Whistle |use Snarler-In-Training Whistle##118353
kill Thundercall##87102 |q 37108/1 |goto Nagrand D/0 90.6,23.6
only if haveq(37108)
step
_Use_ your Silverpelt-In-Training Whistle |use Silverpelt-In-Training Whistle##118352
kill Thundercall##87102 |q 37101/1 |goto Nagrand D/0 90.6,23.6
only if haveq(37101)
step
_Use_ your Rocktusk-In-Training Whistle |use Rocktusk-In-Training Whistle##118351
kill Thundercall##87102 |q 37038/1 |goto Nagrand D/0 90.6,23.6
only if haveq(37038)
step
_Use_ your Riverwallow-In-Training Whistle |use Riverwallow-In-Training Whistle##118350
kill Thundercall##87102 |q 37076/1 |goto Nagrand D/0 90.6,23.6
only if haveq(37076)
step
_Use_ your Icehoof-In-Training Whistle |use Icehoof-In-Training Whistle##118348
kill Thundercall##87102 |q 37056/1 |goto Nagrand D/0 90.6,23.6
only if haveq(37056)
step
_Use_ your Meadowstomper-In-Training Whistle |use Meadowstomper-In-Training Whistle##118349
kill Thundercall##87102 |q 37066/1 |goto Nagrand D/0 90.6,23.6
only if haveq(37066)
step
_Use_ your Snarler-In-Training Whistle |use Snarler-In-Training Whistle##118353
kill Karak the Great Hunter##87105 |q 37110/1 |goto Nagrand D/0 69.6,34.6
only if haveq(37110)
step
_Use_ your Silverpelt-In-Training Whistle |use Silverpelt-In-Training Whistle##118352
kill Karak the Great Hunter##87105 |q 37103/1 |goto Nagrand D/0 69.6,34.6
only if haveq(37103)
step
_Use_ your Icehoof-In-Training Whistle |use Icehoof-In-Training Whistle##118348
kill Karak the Great Hunter##87105 |q 37058/1 |goto Nagrand D/0 69.6,34.6
only if haveq(37058)
step
_Use_ your Rocktusk-In-Training Whistle |use Rocktusk-In-Training Whistle##118351
kill Karak the Great Hunter##87105 |q 37040/1 |goto Nagrand D/0 69.6,34.6
only if haveq(37040)
step
_Use_ your Riverwallow-In-Training Whistle |use Riverwallow-In-Training Whistle##118350
kill Karak the Great Hunter##87105 |q 37078/1 |goto Nagrand D/0 69.6,34.6
only if haveq(37078)
step
_Use_ your Meadowstomper-In-Training Whistle |use Meadowstomper-In-Training Whistle##118349
kill Karak the Great Hunter##87105 |q 37068/1 |goto Nagrand D/0 69.6,34.6
only if haveq(37068)
step
_Use_ your Snarler-In-Training Whistle |use Snarler-In-Training Whistle##118353
kill Gorian Beast-Lasher##87095 |q 37105/1 |goto Nagrand D/0 79.2,71.3
only if haveq(37105)
step
_Use_ your Silverpelt-In-Training Whistle |use Silverpelt-In-Training Whistle##118352
kill Gorian Beast-Lasher##87095 |q 37098/1 |goto Nagrand D/0 79.2,71.3
only if haveq(37098)
step
_Use_ your Icehoof-In-Training Whistle |use Icehoof-In-Training Whistle##118348
kill Gorian Beast-Lasher##87095 |q 37053/1 |goto Nagrand D/0 79.2,71.3
only if haveq(37053)
step
_Use_ your Rocktusk-In-Training Whistle |use Rocktusk-In-Training Whistle##118351
kill Gorian Beast-Lasher##87095 |q 37035/1 |goto Nagrand D/0 79.2,71.3
only if haveq(37035)
step
_Use_ your Riverwallow-In-Training Whistle |use Riverwallow-In-Training Whistle##118350
kill Gorian Beast-Lasher##87095 |q 37073/1 |goto Nagrand D/0 79.2,71.3
only if haveq(37073)
step
_Use_ your Meadowstomper-In-Training Whistle |use Meadowstomper-In-Training Whistle##118349
kill Gorian Beast-Lasher##87095 |q 37063/1 |goto Nagrand D/0 79.2,71.3
only if haveq(37063)
step
_Use_ your Snarler-In-Training Whistle |use Snarler-In-Training Whistle##118353
kill Maimclaw##87107 |q 37111/1 |goto Nagrand D/0 63.8,80.9
only if haveq(37111)
step
_Use_ your Silverpelt-In-Training Whistle |use Silverpelt-In-Training Whistle##118352
kill Maimclaw##87107 |q 37104/1 |goto Nagrand D/0 63.8,80.9
only if haveq(37104)
step
_Use_ your Icehoof-In-Training Whistle |use Icehoof-In-Training Whistle##118348
kill Maimclaw##87107 |q 37059/1 |goto Nagrand D/0 63.8,80.9
only if haveq(37059)
step
_Use_ your Rocktusk-In-Training Whistle |use Rocktusk-In-Training Whistle##118351
kill Maimclaw##87107 |q 37041/1 |goto Nagrand D/0 63.8,80.9
only if haveq(37041)
step
_Use_ your Riverwallow-In-Training Whistle |use Riverwallow-In-Training Whistle##118350
kill Maimclaw##87107 |q 37079/1 |goto Nagrand D/0 63.8,80.9
only if haveq(37079)
step
_Use_ your Meadowstomper-In-Training Whistle |use Meadowstomper-In-Training Whistle##118349
kill Maimclaw##87107 |q 37069/1 |goto Nagrand D/0 63.8,80.9
only if haveq(37069)
step
_Use_ your Snarler-In-Training Whistle |use Snarler-In-Training Whistle##118353
kill Ironbore##87090 |q 37109/1 |goto Nagrand D/0 53.1,77.4
only if haveq(37109)
step
_Use_ your Silverpelt-In-Training Whistle |use Silverpelt-In-Training Whistle##118352
kill Ironbore##87090 |q 37102/1 |goto Nagrand D/0 53.1,77.4
only if haveq(37102)
step
_Use_ your Icehoof-In-Training Whistle |use Icehoof-In-Training Whistle##118348
kill Ironbore##87090 |q 37057/1 |goto Nagrand D/0 53.1,77.4
only if haveq(37057)
step
_Use_ your Rocktusk-In-Training Whistle |use Rocktusk-In-Training Whistle##118351
kill Ironbore##87090 |q 37039/1 |goto Nagrand D/0 53.1,77.4
only if haveq(37039)
step
_Use_ your Riverwallow-In-Training Whistle |use Riverwallow-In-Training Whistle##118350
kill Ironbore##87090 |q 37077/1 |goto Nagrand D/0 53.1,77.4
only if haveq(37077)
step
_Use_ your Meadowstomper-In-Training Whistle |use Meadowstomper-In-Training Whistle##118349
kill Ironbore##87090 |q 37067/1 |goto Nagrand D/0 53.1,77.4
only if haveq(37067)
step
_Use_ your Snarler-In-Training Whistle |use Snarler-In-Training Whistle##118353
kill Moth of Wrath##87089 |q 37107/1 |goto Nagrand D/0 43.6,69.3
only if haveq(37107)
step
_Use_ your Silverpelt-In-Training Whistle |use Silverpelt-In-Training Whistle##118352
kill Moth of Wrath##87089 |q 37100/1 |goto Nagrand D/0 43.6,69.3
only if haveq(37100)
step
_Use_ your Icehoof-In-Training Whistle |use Icehoof-In-Training Whistle##118348
kill Moth of Wrath##87089 |q 37055/1 |goto Nagrand D/0 43.6,69.3
only if haveq(37055)
step
_Use_ your Rocktusk-In-Training Whistle |use Rocktusk-In-Training Whistle##118351
kill Moth of Wrath##87089 |q 37037/1 |goto Nagrand D/0 43.6,69.3
only if haveq(37037)
step
_Use_ your Riverwallow-In-Training Whistle |use Riverwallow-In-Training Whistle##118350
kill Moth of Wrath##87089 |q 37075/1 |goto Nagrand D/0 43.6,69.3
only if haveq(37075)
step
_Use_ your Meadowstomper-In-Training Whistle |use Meadowstomper-In-Training Whistle##118349
kill Moth of Wrath##87089 |q 37065/1 |goto Nagrand D/0 43.6,69.3
only if haveq(37065)
step
#include "Garrison_Large_Building"
talk Tormak the Scarred##86979
turnin Clefthoof Training: Riplash##37050 |only if haveq(37050)
turnin Clefthoof Training: Gezz'ran##37051 |only if haveq(37051)
turnin Clefthoof Training: Bulbapore##37052 |only if haveq(37052)
turnin Clefthoof Training: Cruel Ogres##37053 |only if haveq(37053)
turnin Clefthoof Training: Darkwing Roc##37054 |only if haveq(37054)
turnin Clefthoof Training: Ironbore##37057 |only if haveq(37057)
turnin Clefthoof Training: Moth of Wrath##37055 |only if haveq(37055)
turnin Clefthoof Training: Orc Hunters##37058 |only if haveq(37058)
turnin Clefthoof Training: The Garn##37059 |only if haveq(37059)
turnin Clefthoof Training: Thundercall##37056 |only if haveq(37056)
turnin Clefthoof Training: Great-Tusk##37048 |only if haveq(37048)
turnin Clefthoof Training: Rakkiri##37049 |only if haveq(37049)
turnin Boar Training: Riplash##37032 |only if haveq(37032)
turnin Boar Training: Gezz'ran##37033 |only if haveq(37033)
turnin Boar Training: Bulbapore##37034 |only if haveq(37034)
turnin Boar Training: Cruel Ogres##37035 |only if haveq(37035)
turnin Boar Training: Darkwing Roc##37036 |only if haveq(37036)
turnin Boar Training: Ironbore##37039 |only if haveq(37039)
turnin Boar Training: Moth of Wrath##37037 |only if haveq(37037)
turnin Boar Training: Orc Hunters##37040 |only if haveq(37040)
turnin Boar Training: The Garn##37041 |only if haveq(37041)
turnin Boar Training: Thundercall##37038 |only if haveq(37038)
turnin Elekk Training: Cruel Ogres##37063 |only if haveq(37063)
turnin Elekk Training: Darkwing Roc##37064 |only if haveq(37064)
turnin Elekk Training: Ironbore##37067 |only if haveq(37067)
turnin Elekk Training: Moth of Wrath##37065 |only if haveq(37065)
turnin Elekk Training: Orc Hunters##37068 |only if haveq(37068)
turnin Elekk Training: The Garn##37069 |only if haveq(37069)
turnin Elekk Training: Thundercall##37066 |only if haveq(37066)
step
#include "Garrison_Large_Building"
talk Sage Paluna##87242
turnin Wolf Training: Cruel Ogres##37105 |only if haveq(37105)
turnin Wolf Training: Darkwing Roc##37106 |only if haveq(37106)
turnin Wolf Training: Ironbore##37109 |only if haveq(37109)
turnin Wolf Training: Moth of Wrath##37107 |only if haveq(37107)
turnin Wolf Training: Orc Hunters##37110 |only if haveq(37110)
turnin Wolf Training: The Garn##37111 |only if haveq(37111)
turnin Wolf Training: Thundercall##37108 |only if haveq(37108)
turnin Talbuk Training: Riplash##37095 |only if haveq(37095)
turnin Talbuk Training: Gezz'ran##37096 |only if haveq(37096)
turnin Talbuk Training: Bulbapore##37097 |only if haveq(37097)
turnin Talbuk Training: Cruel Ogres##37098 |only if haveq(37098)
turnin Talbuk Training: Darkwing Roc##37099 |only if haveq(37099)
turnin Talbuk Training: Ironbore##37102 |only if haveq(37102)
turnin Talbuk Training: Moth of Wrath##37100 |only if haveq(37100)
turnin Talbuk Training: Orc Hunters##37103 |only if haveq(37103)
turnin Talbuk Training: The Garn##37104 |only if haveq(37104)
turnin Talbuk Training: Thundercall##37101 |only if haveq(37101)
turnin Talbuk Training: Great-Tusk##37093 |only if haveq(37093)
turnin Talbuk Training: Rakkiri##37094 |only if haveq(37094)
turnin Riverbeast Training: Gezz'ran##37071 |only if haveq(37071)
turnin Riverbeast Training: Bulbapore##37072 |only if haveq(37072)
turnin Riverbeast Training: Cruel Ogres##37073 |only if haveq(37073)
turnin Riverbeast Training: Darkwing Roc##37074 |only if haveq(37074)
turnin Riverbeast Training: Ironbore##37077 |only if haveq(37077)
turnin Riverbeast Training: Moth of Wrath##37075 |only if haveq(37075)
turnin Riverbeast Training: Orc Hunters##37078 |only if haveq(37078)
turnin Riverbeast Training: The Garn##37079 |only if haveq(37079)
turnin Riverbeast Training: Thundercall##37076 |only if haveq(37076)
|next "start" |only if not achieved(9705)
|next |only if default
step
label "end"
Congratulations, you have _earned_ the Intro to Husbandry Achievement! |only if achieved(9538)
Congratulations, you have _earned_ the _Master of Mounts_ Achievement! |only if achieved(9526)
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Mission Specialist",{
condition_end=function() return achieved(9147) end,
achieveid={9145,9146,9147},
patch='60001',
description="\nComplete the Mission Specialist achievements.",
},[[
step
Patrol Missions _require_ a level 1 Barracks
#include "Garrison_CommandTable"
_Select_ a patrol mission with the Patrol icon and _complete_ it |achieve 9146
|tip The icon looks like a sword and shield.
step
Treasure Missions _require_ a level 3 Inn
#include "Garrison_CommandTable"
_Select_ a mission with the Treasure icon and _complete_ it |achieve 9145
|tip The icon looks like a stone tablet.
step
label "end"
Congratulations, you have _earned_ the Mission Specialist Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Master Trapper",{
achieveid={9565},
patch='60001',
description="\nPlace 125 Work Orders at the Barn by trapping creatures in the world.",
},[[
step
This achievement _requires_ a level 1 Barn
Use the trap that is provided in order to complete Barn Work orders
#include "Garrison_Medium_Building"
_Place_ #125# work orders at the Barn |achieve 9565
step
Congratulations, you have _earned_ the Master Trapper Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Movin' On Up",{
achieveid={9098},
patch='60001',
description="\nUpgrade any garrison building to level 3.",
},[[
step
#include "Garrison_ArchitectTable"
_Upgrade_ any garrison building to level 3 |achieve 9098
step
Congratulations, you have _earned_ the Movin' On Up Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\My Item Level Is Higher than Yours",{
achieveid={9211},
patch='60001',
description="\nRaise a follower's item level to 625.",
},[[
step
Your followers' item level _can be raised past 600_ once they hit level 100
_Applying_ weapon and armor enchancements to them at the command table helps keep track of their current item levels
The enhancements can be _earned through_ missions or work orders at the War Mill
|confirm
step
Use the following items to _Increase your followers weapon and armor levels_
#include "Garrison_CommandTable"
use Weapon Enhancement Token##120302
use War Ravaged Weaponry##114616
use Blackrock Weaponry##114081
use Goredrenched Weaponry##114622
use Balanced Weapon Enhancement##114128
use Striking Weapon Enhancement##114129
use Power Overrun Weapon Enhancement##114131
use Armor Enhancement Token##120301
use War Ravaged Armor Set##114807
use Blackrock Armor Set##114806
use Goredrenched Armor Set##114746
use Braced Armor Enhancement##114745
use Fortified Armor Enhancement##114808
use Heavily Reinforced Armor Enhancement##114822
|achieve 9211
step
Congratulations, you have _earned_ the My Item Level Is Higher than Yours Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\My Item Level Is Way Higher than Yours",{
achieveid={9212},
patch='60001',
description="\nRaise a follower's item level to 650.",
},[[
step
Your followers' item level _can be raised past 600_ once they hit level 100
_Applying_ weapon and armor enchancements to them at the command table helps keep track of their current item levels
The enhancements can be _earned through_ missions or work orders at the War Mill
|confirm
step
Use the following items to _Increase your followers weapon and armor levels_
#include "Garrison_CommandTable"
use Weapon Enhancement Token##120302
use War Ravaged Weaponry##114616
use Blackrock Weaponry##114081
use Goredrenched Weaponry##114622
use Balanced Weapon Enhancement##114128
use Striking Weapon Enhancement##114129
use Power Overrun Weapon Enhancement##114131
use Armor Enhancement Token##120301
use War Ravaged Armor Set##114807
use Blackrock Armor Set##114806
use Goredrenched Armor Set##114746
use Braced Armor Enhancement##114745
use Fortified Armor Enhancement##114808
use Heavily Reinforced Armor Enhancement##114822
|achieve 9212
step
Congratulations, you have _earned_ the My Item Level Is Way Higher than Yours Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\On a Few Missions",{
achieveid={9134},
patch='60001',
description="\nComplete 50 garrison missions.",
},[[
step
#include "Garrison_CommandTable"
_Start and complete 50_ garrison missions. |achieve 9134
step
Congratulations, you have earned the _On a Few Missions_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\On a Lot of Missions",{
achieveid={9138},
patch='60001',
description="\nComplete 100 garrison missions.",
},[[
step
#include "Garrison_CommandTable"
_Start and complete 100_ garrison missions. |achieve 9138
step
Congratulations, you have earned the _On a Lot of Missions_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\On a Massive Number of Missions",{
achieveid={9139},
patch='60001',
description="\nComplete 500 garrison missions.",
},[[
step
#include "Garrison_CommandTable"
_Start and complete 500_ garrison missions. |achieve 9139
step
Congratulations, you have earned the _On a Massive Number of Missions_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\On a Metric Ton of Missions",{
achieveid={9140},
patch='60001',
description="\nComplete 1000 garrison missions.",
},[[
step
#include "Garrison_CommandTable"
_Start and complete 1000_ garrison missions. |achieve 9140
step
Congratulations, you have earned the _On a Metric Ton of Missions_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\On a Mission",{
achieveid={9133},
patch='60001',
description="\nComplete 10 garrison missions.",
},[[
step
#include "Garrison_CommandTable"
_Start and complete 10_ garrison missions. |achieve 9133
step
Congratulations, you have earned the _On a Mission_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Patrol Mission Specialist",{
achieveid={9146},
patch='60001',
description="\nComplete a garrison patrol mission.",
},[[
step
Patrol Missions require a _Level 1 Barracks_
#include "Garrison_CommandTable"
_Select a mission with the Patrol icon_ and complete it. |achieve 9146
|tip The icon looks like a sword and shield.
step
Congratulations, you have earned the _Patrol Mission Specialist_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Patrolling Draenor",{
achieveid={9523},
patch='60001',
description="\nComplete 50 garrison patrol missions.",
},[[
step
Patrol Missions require a _Level 1 Barracks_
#include "Garrison_CommandTable"
_Select 50 missions with the Patrol icon_ and complete them. |achieve 9523
|tip The icon looks like a sword and shield.
step
Congratulations, you have earned the _Patrolling Draenor_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Raising the Bar",{
achieveid={9111},
patch='60001',
description="\nRaise 10 garrison followers to level 100.",
},[[
step
Follower levels are earned by _completing_ garrison missions
#include "Garrison_CommandTable"
_Raise_ #10# followers to level 100 |achieve 9111
step
Congratulations, you have _earned_ the Raising the Bar Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Salvaging Pays Off",{
achieveid={9468},
patch='60001',
description="\nOpen 100 pieces of Salvage from missions.",
},[[
step
This achievement _requires_ a level 1 Salvage Yard
#include "Garrison_Small_Building"
_Open_ #100# pieces of salvage |achieve 9468
|tip Salvage is earned by having a Salvage Yard built and completing Garrison Missions.
step
Congratulations, you have _earned_ the Salvaging Pays Off Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Stay Awhile and Listen",{
achieveid={9703},
patch='60002',
description="\nComplete all of the Inn quests.",
},[[
step
Use the Garrison Inn building guide to accomplish this
confirm
step
Congratulations, you have _earned_ the Stay Awhile and Listen Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\The Rarer the Better",{
achieveid={9143},
patch='60001',
description="\nComplete 300 Rare garrison missions.",
},[[
step
#include "Garrison_CommandTable"
_Select 300 missions labeled "Rare"_ and complete them |achieve 9143
step
Congratulations, you have earned the _The Rarer the Better_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\The Stable Master",{
condition_end=function() return achieved(9706) end,
achieveid={9705,9706},
patch='60002',
description="\nDefeat all mount-in-training targets in Nagrand while carrying the Garn-Tooth Necklace.",
},[[
step
First thing's first you need to gather the Garn-Tooth Necklace from your Stables
If you haven't finished the Advanced Husbandry achievement also pick up the Black Claw of Sethe |only if not achieved(9705)
collect Garn-Tooth Necklace##118470
|tip The necklace is laying on the ground in front of a wooden barrel at the Stables entrance.
collect Black Claw of Sethe##118469 |only if not achieved(9705)
|tip The claw is laying on the ground in front of a pile of lumber at the Stables entrance.
step
#include "Garrison_Large_Building"
talk Keegan Firebeard##86973
_Tell him_ "I'd like the talbuk-in-training."
collect Silverpelt-In-Training Whistle##119443
_Tell him_ "I'd like the clefthoof-in-training."
collect Icehoof-In-Training Whistle##119441
_Tell him_ "I'd like the boar-in-training."
collect Rocktusk-In-Training Whistle##119444
_Tell him_ "I'd like the riverbeast-in-training."
collect Riverwallow-In-Training Whistle##119445
_Tell him_ "I'd like the elekk-in-training."
collect Meadowstomper-In-Training Whistle##119446
_Tell him_ "I'd like the wolf-in-training."
collect Snarler-In-Training Whistle##119442
step
Each of these whistles can be _used three times per day_ and have a 24 hour cooldown so _make sure you're ready and have the right mount selected!_
_Use_ your Silverpelt-In-Training Whistle |use Silverpelt-In-Training Whistle##119443
_Use_ your Icehoof-In-Training Whistle |use Icehoof-In-Training Whistle##119441
_Use_ your Rocktusk-In-Training Whistle |use Rocktusk-In-Training Whistle##119444
_Use_ your Riverwallow-In-Training Whistle |use Riverwallow-In-Training Whistle##119445
_Use_ your Meadowstomper-In-Training Whistle |use Meadowstomper-In-Training Whistle##119446
_Use_ your Snarler-In-Training Whistle |use Snarler-In-Training Whistle##119442
kill 6 Gorian Beast-Lasher##87095 |achieve 9706/3 |goto Nagrand D/0 79.2,71.3
step
Each of these whistles can be _used three times per day_ and have a 24 hour cooldown so _make sure you're ready and have the right mount selected!_
_Use_ your Silverpelt-In-Training Whistle |use Silverpelt-In-Training Whistle##119443
_Use_ your Icehoof-In-Training Whistle |use Icehoof-In-Training Whistle##119441
_Use_ your Rocktusk-In-Training Whistle |use Rocktusk-In-Training Whistle##119444
_Use_ your Riverwallow-In-Training Whistle |use Riverwallow-In-Training Whistle##119445
_Use_ your Meadowstomper-In-Training Whistle |use Meadowstomper-In-Training Whistle##119446
_Use_ your Snarler-In-Training Whistle |use Snarler-In-Training Whistle##119442
kill 6 Karak the Great Hunter##87105 |achieve 9706/1 |goto Nagrand D/0 69.6,34.6
step
Each of these whistles can be _used three times per day_ and have a 24 hour cooldown so _make sure you're ready and have the right mount selected!_
_Use_ your Silverpelt-In-Training Whistle |use Silverpelt-In-Training Whistle##119443
_Use_ your Icehoof-In-Training Whistle |use Icehoof-In-Training Whistle##119441
_Use_ your Rocktusk-In-Training Whistle |use Rocktusk-In-Training Whistle##119444
_Use_ your Riverwallow-In-Training Whistle |use Riverwallow-In-Training Whistle##119445
_Use_ your Meadowstomper-In-Training Whistle |use Meadowstomper-In-Training Whistle##119446
_Use_ your Snarler-In-Training Whistle |use Snarler-In-Training Whistle##119442
kill 6 Thundercall##87102 |achieve 9706/5 |goto Nagrand D/0 90.6,23.6
step
Each of these whistles can be _used three times per day_ and have a 24 hour cooldown so _make sure you're ready and have the right mount selected!_
_Use_ your Silverpelt-In-Training Whistle |use Silverpelt-In-Training Whistle##119443
_Use_ your Icehoof-In-Training Whistle |use Icehoof-In-Training Whistle##119441
_Use_ your Rocktusk-In-Training Whistle |use Rocktusk-In-Training Whistle##119444
_Use_ your Riverwallow-In-Training Whistle |use Riverwallow-In-Training Whistle##119445
_Use_ your Meadowstomper-In-Training Whistle |use Meadowstomper-In-Training Whistle##119446
_Use_ your Snarler-In-Training Whistle |use Snarler-In-Training Whistle##119442
kill 6 Maimclaw##87107 |achieve 9706/2 |goto Nagrand D/0 63.8,80.9
step
Each of these whistles can be _used three times per day_ and have a 24 hour cooldown so _make sure you're ready and have the right mount selected!_
_Use_ your Silverpelt-In-Training Whistle |use Silverpelt-In-Training Whistle##119443
_Use_ your Icehoof-In-Training Whistle |use Icehoof-In-Training Whistle##119441
_Use_ your Rocktusk-In-Training Whistle |use Rocktusk-In-Training Whistle##119444
_Use_ your Riverwallow-In-Training Whistle |use Riverwallow-In-Training Whistle##119445
_Use_ your Meadowstomper-In-Training Whistle |use Meadowstomper-In-Training Whistle##119446
_Use_ your Snarler-In-Training Whistle |use Snarler-In-Training Whistle##119442
kill 6 Ironbore##87090 |achieve 9706/6 |goto Nagrand D/0 53.1,77.4
step
Each of these whistles can be _used three times per day_ and have a 24 hour cooldown so _make sure you're ready and have the right mount selected!_
_Use_ your Silverpelt-In-Training Whistle |use Silverpelt-In-Training Whistle##119443
_Use_ your Icehoof-In-Training Whistle |use Icehoof-In-Training Whistle##119441
_Use_ your Rocktusk-In-Training Whistle |use Rocktusk-In-Training Whistle##119444
_Use_ your Riverwallow-In-Training Whistle |use Riverwallow-In-Training Whistle##119445
_Use_ your Meadowstomper-In-Training Whistle |use Meadowstomper-In-Training Whistle##119446
_Use_ your Snarler-In-Training Whistle |use Snarler-In-Training Whistle##119442
kill 6 Moth of Wrath##87089 |achieve 9706/4 |goto Nagrand D/0 43.6,69.3
step
Congratulations, you have _earned_ the _Advanced Husbandry_ Achievement! |only if achieved(9705)
Congratulations, you have _earned_ the _The Stable Master_ Achievement! |only if achieved(9706)
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\The Trap Game",{
achieveid={9450},
patch='60001',
description="\nPlace 50 Work Orders at the Barn by trapping creatures in the world.",
},[[
step
This achievement _requires_ a level 1 Barn
Barn work orders _require you to trap_ Clefthooves, Elekks, Talbuks, Wolves, Riverbeasts, or Boars using the provided Iron Trap
#include "Garrison_Medium_Building"
_Place_ #50# work orders at the Barn |achieve 9450
step
Congratulations, you have _earned_ the The Trap Game Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Trap Superstar",{
achieveid={9452},
patch='60001',
description="\nPlace 500 Work Orders at the Barn by trapping creatures in the world.",
},[[
step
This achievement _requires_ a level 1 Barn
Barn work orders _require you to trap_ Clefthooves, Elekks, Talbuks, Wolves, Riverbeasts, or Boars using the provided Iron Trap
#include "Garrison_Medium_Building"
_Place_ #500# work orders at the Barn |achieve 9452
step
Congratulations, you have _earned_ the Trap Superstar Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Trapper's Delight",{
achieveid={9451},
patch='60001',
description="\nPlace 250 Work Orders at the Barn by trapping creatures in the world.",
},[[
step
This achievement _requires_ a level 1 Barn
Barn work orders _require you to trap_ Clefthooves, Elekks, Talbuks, Wolves, Riverbeasts, or Boars using the provided Iron Trap
#include "Garrison_Medium_Building"
_Place_ #250# work orders at the Barn |achieve 9451
step
Congratulations, you have _earned_ the Trapper's Delight Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Treasure Master",{
achieveid={9524},
patch='60001',
description="\nComplete 50 garrison treasure missions.",
},[[
step
Treasure Missions require a _level 3 Inn_.
confirm
step
#include "Garrison_CommandTable"
_Select 50 missions with the Treasure icon_ and complete them. |achieve 9524
|tip The icon looks like a stone tablet.
step
Congratulations, you have earned the _Treasure Master_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Treasure Mission Specialist",{
achieveid={9145},
patch='60001',
description="\nComplete a garrison treasure mission.",
},[[
step
Treasure Missions require a _level 3 Inn_.
confirm
step
#include "Garrison_CommandTable"
_Select a mission with the Treasure icon_ and complete it. |achieve 9145
|tip The icon looks like a stone tablet.
step
Congratulations, you have earned the _Treasure Mission Specialist_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Defender of Draenor",{
achieveid={9248},
patch='60001',
description="\nGet 5000 honorable kills in Draenor.",
},[[
step
_Get 5000 honorable kills_ in Draenor. |achieve 9248
step
Congratulations, you have earned the _Defender of Draenor_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Where You Go, They Will Follow",{
achieveid={9108},
patch='60001',
description="\nRecruit 10 followers.",
},[[
step
Please _refer to_ our individual follower guides to track down the more elusive followers on the list
_You can also recruit one a week_ from your Garrison Inn
_Recruit_ #10# followers |achieve 9108
step
Congratulations, you have _earned_ the Where You Go, They Will Follow Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Wingman",{
achieveid={9498},
patch='60001',
description="\nBecome a Personal Wingman with one of your Barracks Bodyguards.",
},[[
step
This achievement _requires_ a level 2 Garrison and a level 2 Barracks
You also _need one of the five_ followers that can be bodyguards assigned to your Barracks
|tip Search within our guides for the Bodyguard trait to find one.
confirm
stickystart "bodyguards"
step
#include "Garrison_Medium_Building"
_Ask_ your Barracks Bodyguard to follow you in Draenor
|tip The follower assigned to the Barracks will be waiting right outside the Barracks door.
confirm
step
Any _kill that grants XP_ will give 10 reputation for your chosen bodyguard
You _must complete all three tiers_ of reputation with your chosen bodyguard to earn this achievement
You can _farm reputation easily_ by traveling to this location and killing the Stingtail Workers |goto Spires of Arak/0 58.5,46.0 |achieve 9498
|tip They are weak and repawn quickly.
step
label "bodyguards"
_Become a Personal Wingman_ with one of your Barracks Bodyguards listed below
|tip Use our follower guides to find each of these.
Leorajh |achieve 9498
Talonpriest Ishaal |achieve 9498
Tormmok |achieve 9498
Aeda Brightdawn |achieve 9498
Vivianne |achieve 9498
step
Congratulations, you have _earned_ the Wingman Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Wingmen",{
achieveid={9499},
patch='60001',
description="\nBecome a Personal Wingman with all of your Barracks Bodyguards.",
},[[
step
This achievement _requires_ a level 2 Garrison and a level 2 Barracks
You also _need one of the five_ followers that can be bodyguards assigned to your Barracks
|tip Search within our guides for the Bodyguard trait to find one.
|confirm
stickystart "bodyguards"
step
#include "Garrison_Medium_Building"
_Ask_ your Barracks Bodyguard to follow you in Draenor
|tip The follower assigned to the Barracks will be waiting right outside the Barracks door.
|confirm
step
Any _kill that grants XP_ will give 10 reputation for your chosen bodyguard
You _must complete all three tiers_ of reputation with your chosen bodyguard to earn this achievement
You can _farm reputation easily_ by traveling to this location and killing the Stingtail Workers |goto Spires of Arak/0 58.5,46.0 |achieve 9499
|tip They are weak and repawn quickly.
step
label "bodyguards"
_Become a Personal Wingman_ with all of your Barracks Bodyguards listed below
|tip Use our follower guides to find each of these.
Leorajh |achieve 9499/5
Talonpriest Ishaal |achieve 9499/3
Tormmok |achieve 9499/4
Aeda Brightdawn |achieve 9499/1
Vivianne |achieve 9499/2
step
Congratulations, you have _earned_ the Wingmen Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Working Many Orders",{
achieveid={9407},
patch='60001',
description="\nComplete 750 Work Orders at your garrison.",
},[[
step
#include "Garrison_Medium_Building"
_Complete_ #750# work orders around your Garrison |achieve 9407
step
Congratulations, you have _earned_ the Working Many Orders Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Working More Orders",{
achieveid={9406},
patch='60001',
description="\nComplete 250 Work Orders at your garrison.",
},[[
step
#include "Garrison_Medium_Building"
_Complete_ #250# work orders around your Garrison |achieve 9406
step
Congratulations, you have _earned_ the Working More Orders Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Working Some Orders",{
achieveid={9405},
patch='60001',
description="\nComplete 125 Work Orders at your garrison.",
},[[
step
#include "Garrison_Medium_Building"
_Complete_ #125# work orders around your Garrison |achieve 9405
step
Congratulations, you have _earned_ the Working Some Orders Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Shipyard\\Naval Fleet",{
achieveid={10169},
patch='60200',
description="\nUpgrade your shipyard to level 2.",
},[[
step
Refer to our Shipyard guides
Upgrade your Shipyard to Level 2 |achieve 10169
|tip Use the "Frostwall Shipyard" guide to accomplish this.
step
Congratulations, you earned the _Naval Fleet_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Shipyard\\Naval Armada",{
achieveid={10168},
patch='60200',
description="\nUpgrade your shipyard to level 3.",
},[[
step
Refer to our Shipyard guides
Upgrade your Shipyard to Level 3 |achieve 10168
|tip Use the "Frostwall Shipyard" guide to accomplish this.
step
Congratulations, you earned the _Naval Fleet_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Shipyard\\Seaman",{
achieveid={10170},
patch='60200',
description="\nComplete 50 Naval Missions.",
},[[
step
clicknpc Fleet Command Table##94399
|tip It looks like a round wooden table with a map on it.
Complete #50# Naval Missions |achieve 10170 |goto Frostfire Ridge/0 42.1,70.9
|tip All naval missions count toward this achievement.
step
Congratulations! You earned the _Seaman_ Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Shipyard\\Petty Officer",{
achieveid={10255},
patch='60200',
description="\nComplete 100 Naval Missions.",
},[[
step
clicknpc Fleet Command Table##94399
|tip It looks like a round wooden table with a map on it.
Complete #100# Naval Missions |achieve 10255 |goto Frostfire Ridge/0 42.1,70.9
|tip All naval missions count toward this achievement.
step
Congratulations! You earned the _Petty Officer_ Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Shipyard\\Fleet Commander",{
achieveid={10275},
patch='60200',
description="\nComplete 500 Naval Missions.",
},[[
step
clicknpc Fleet Command Table##94399
|tip It looks like a round wooden table with a map on it.
Complete #500# Naval Missions |achieve 10275 |goto Frostfire Ridge/0 42.1,70.9
|tip All naval missions count toward this achievement.
step
Congratulations! You earned the _Fleet Commander_ Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Shipyard\\Admiral",{
achieveid={10276},
patch='60200',
description="\nComplete 1,000 Naval Missions.",
},[[
step
clicknpc Fleet Command Table##94399
|tip It looks like a round wooden table with a map on it.
Complete #1000# Naval Missions |achieve 10276 |goto Frostfire Ridge/0 42.1,70.9
|tip All naval missions count toward this achievement.
step
Congratulations! You earned the _Admiral_ Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Shipyard\\Naval Training Specialist/Expert",{
condition_end=function() return achieved(10163) end,
achieveid={10162, 10163},
patch='60200',
description="\nComplete 25 Naval Training Missions.",
},[[
step
clicknpc Fleet Command Table##94399
|tip It looks like a round wooden table with a map on it.
Complete #25# Naval Training Missions |achieve 10163 |goto Frostfire Ridge/0 42.1,70.9
|tip Training missions are represented on the naval missions map by a ship anchor icon.
step
Congratulations! You earned the:
_Naval Training Specialist_ Achievement
_Naval Training Expert_ Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Shipyard\\Naval Combat Specialist/Expert",{
condition_end=function() return achieved(10154) end,
achieveid={10156, 10154},
patch='60200',
description="\nComplete 25 Naval Combat Missions.",
},[[
step
clicknpc Fleet Command Table##94399
|tip It looks like a round wooden table with a map on it.
Complete #25# Naval Combat Missions |achieve 10154 |goto Frostfire Ridge/0 42.1,70.9
|tip Combat missions are represented on the naval missions map by a crossed swords icon.
step
Congratulations! You earned the:
_Naval Combat Specialist_ Achievement
_Naval Combat Expert_ Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Shipyard\\Naval Treasure Specialist/Expert",{
condition_end=function() return achieved(10160) end,
achieveid={10159, 10160},
patch='60200',
description="\nComplete 25 Naval Treasure Missions.",
},[[
step
clicknpc Fleet Command Table##94399
|tip It looks like a round wooden table with a map on it.
Complete #25# Naval Treasure Missions |achieve 10160 |goto Frostfire Ridge/0 42.1,70.9
|tip Treasure missions are represented on the naval missions map by a treasure chest icon.
step
Congratulations! You earned the:
_Naval Treasure Specialist_ Achievement
_Naval Treasure Expert_ Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Shipyard\\Naval Siege Specialist/Expert",{
condition_end=function() return achieved(10155) end,
achieveid={10161, 10155},
patch='60200',
description="\nComplete 25 Naval Siege Missions.",
},[[
step
clicknpc Fleet Command Table##94399
|tip It looks like a round wooden table with a map on it.
Complete #25# Naval Siege Missions |achieve 10155 |goto Frostfire Ridge/0 42.1,70.9
|tip Siege missions are labeled as "Blockade" missions and are represented on the naval missions map by a banner on a wooden post icon.
step
Congratulations! You earned the:
_Naval Siege Specialist_ Achievement
_Naval Siege Expert_ Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Shipyard\\Naval Bonus Specialist/Expert",{
condition_end=function() return achieved(10036) end,
achieveid={10017, 10036},
patch='60200',
description="\nComplete 25 Naval Bonus Missions.",
},[[
step
clicknpc Fleet Command Table##94399
|tip It looks like a round wooden table with a map on it.
Complete #25# Naval Bonus Missions |achieve 10036 |goto Frostfire Ridge/0 42.1,70.9
|tip Bonus missions are represented on the naval missions map by a star icon.
step
Congratulations! You earned the:
_Naval Bonus Specialist_ Achievement
_Naval Bonus Expert_ Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Shipyard\\Master of the Seas",{
achieveid={10164},
patch='60200',
description="\nThis guide will walk you through completing the Master of the Seas achievement.",
},[[
step
clicknpc Fleet Command Table##94399
|tip It looks like a round wooden table with a map on it.
Complete #25# Naval Combat Missions |achieve 10154 |goto Frostfire Ridge/0 42.1,70.9
|tip Combat missions are represented on the naval missions map by a crossed swords icon.
Complete #25# Naval Treasure Missions |achieve 10160 |goto Frostfire Ridge/0 42.1,70.9
|tip Treasure missions are represented on the naval missions map by a treasure chest icon.
Complete #25# Naval Training Missions |achieve 10163 |goto Frostfire Ridge/0 42.1,70.9
|tip Training missions are represented on the naval missions map by a ship anchor icon.
Complete #25# Naval Bonus Missions |achieve 10036 |goto Frostfire Ridge/0 42.1,70.9
|tip Bonus missions are represented on the naval missions map by a star icon.
Complete #25# Naval Siege Missions |achieve 10155 |goto Frostfire Ridge/0 42.1,70.9
|tip Siege missions are labeled as "Blockade" missions and are represented on the naval missions map by a banner on a wooden post icon.
step
Congratulations, you earned the _Master of the Seas_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Shipyard\\Ironsides",{
achieveid={10165},
patch='60200',
description="\nUpgrade a ship of every type to Epic quality.",
},[[
step
clicknpc Fleet Command Table##94399
|tip It looks like a round wooden table with a map on it.
Upgrade these Ships to Epic Quality:
|tip A ship is Epic quality when it's name is purple.
Destroyer |achieve 10165/1 |goto Frostfire Ridge/0 42.1,70.9
Submarine |achieve 10165/2 |goto Frostfire Ridge/0 42.1,70.9
Carrier |achieve 10165/3 |goto Frostfire Ridge/0 42.1,70.9
Transport |achieve 10165/4 |goto Frostfire Ridge/0 42.1,70.9
Battleship |achieve 10165/5 |goto Frostfire Ridge/0 42.1,70.9
_
Build ships with _Solog Roark_ at [Frostfire Ridge/0 40.7,70.3]
|tip You can upgrade ships by sending them on missions to gain experience, or by building ships repeatedly, since they have a chance to autoupgrade upon completion. Use the "Frostwall Shipyard" guide to obtain all of the ship blueprints for the ships you need to build.
step
Congratulations, you earned the _Ironsides_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Shipyard\\Naval Mechanics",{
achieveid={10256},
patch='60200',
description="\nThis guide will walk you through completing the Naval Mechanics achievement.",
},[[
step
label "naval_mechanics_start"
_Run up_ the path |goto Tanaan Jungle/0 45.2,44.3 < 30 |only if walking
kill Felsmith Damorka##92647|goto Tanaan Jungle/0 45.9,47.2
|tip She looks like a tall orc wearing a gas mask, standing in front of a table with chemistry equipment on it. She's a rare mob, so you may have to wait for her to spawn if someone else killed her recently.
collect Equipment Blueprint: Felsmoke Launchers##128258 |n
use Equipment Blueprint: Felsmoke Launchers##128258
accept Equipment Blueprint: Felsmoke Launchers##39366
step
_Enter_ the cave |goto Tanaan Jungle/0 37.3,76.0 < 30 |walk
_Run down_ the path |goto Tanaan Jungle/0 36.4,76.9 < 20 |walk
_Continue_ into the open room |goto Tanaan Jungle/0 36.7,78.9 < 20 |walk
kill Captain Ironbeard##93076 |goto Tanaan Jungle/0 36.4,79.5
|tip He looks like a skeleton that walks around this room, so he may not be in this exact spot. He's a rare mob, so you may have to wait for him to spawn if someone else killed him recently.
collect Equipment Blueprint: Ghostly Spyglass##128257 |n
use Equipment Blueprint: Ghostly Spyglass##128257
accept Equipment Blueprint: Ghostly Spyglass##39365
step
Enter the Hellfire Citadel Raid
|tip Use the Group Finder for Raids, and select "Hellbreach" in the dropdown menu.
Fight through the raid
kill Iron Reaver##90284
|tip It's the second boss in the raid.
collect Equipment Blueprint: Gyroscopic Internal Stabilizer##128256 |n
use Equipment Blueprint: Gyroscopic Internal Stabilizer##128256
accept Equipment Blueprint: Gyroscopic Internal Stabilizer##39364
step
_Follow_ the path |goto Tanaan Jungle/0 44.0,40.0 < 30 |only if walking
_Enter_ the building |goto Tanaan Jungle/0 43.9,37.1 < 20 |walk
_Go through_ the doorway |goto Tanaan Jungle/0 44.3,37.0 < 20 |walk
kill Remnant of Cindral##90522+
|tip They look like orange blobs on the floor inside this building. It's a rare mob, so you may have to wait for it to spawn if someone else killed it recently.
kill Cindral the Wildfire##90519 |goto Tanaan Jungle/0 44.7,37.7
|tip He looks like a fire lava elemental that appears once you kill enough Remnants of Cindral inside this building. The Remnants of Cindral move around in this room, so you may need to search for them.
collect Equipment Blueprint: Ice Cutter##128255 |n
use Equipment Blueprint: Ice Cutter##128255
accept Equipment Blueprint: Ice Cutter##39363
step
_Run on_ the big dirt road |goto Tanaan Jungle/0 41.6,41.4 < 40 |only if walking
_Go up_ the wooden ramp |goto Tanaan Jungle/0 37.9,35.2 < 30 |only if walking
kill Zoug the Heavy##90122 |goto Tanaan Jungle/0 37.0,33.0
|tip He looks like a big orange-red Ogron standing on this dock. He's a rare mob, so you may have to wait for him to spawn if someone else killed him recently.
collect Equipment Blueprint: True Iron Rudder##128252 |n
use Equipment Blueprint: True Iron Rudder##128252
accept Equipment Blueprint: True Iron Rudder##39360
step
talk Shadow Hunter Denjai##96014 |goto Tanaan Jungle/0 61.7,45.7
buy Equipment Blueprint: Tuskarr Fishing Net##128251 |n
|tip You must be Honored with the Vol'jin's Headhunters faction in order to be able to purchase this item. Use the "Vol'jin's Headhunters" dailies guide to accomplish this.
use Equipment Blueprint: Tuskarr Fishing Net##128251
accept Equipment Blueprint: Tuskarr Fishing Net##39359
step
talk Shadow Hunter Denjai##96014 |goto Tanaan Jungle/0 61.7,45.7
buy Equipment Blueprint: Unsinkable##128489 |n
|tip You must be Revered with the Vol'jin's Headhunters faction in order to be able to purchase this item. Use the "Vol'jin's Headhunters" dailies guide to accomplish this.
use Equipment Blueprint: Unsinkable##128489
accept Equipment Blueprint: Unsinkable##39358
step
_Follow_ the path up |goto Tanaan Jungle/0 58.8,35.3 < 30 |only if walking
_Continue_ up the path |goto Tanaan Jungle/0 58.0,30.9 < 30 |only if walking
_Turn_ and _keep running_ up the path |goto Tanaan Jungle/0 53.8,31.7 < 30 |only if walking
_Turn again_ and _run up_ the path |goto Tanaan Jungle/0 55.7,29.5 < 30 |only if walking
_Keep running_ up the path |goto Tanaan Jungle/0 54.5,29.1 < 30 |only if walking
_Follow_ the path |goto Tanaan Jungle/0 55.0,26.5 < 20 |only if walking
_Follow_ the dirt path |goto Tanaan Jungle/0 55.7,25.4 < 30 |only if walking
_Continue_ following the path |goto Tanaan Jungle/0 58.3,26.2 < 30 |only if walking
kill Xanzith the Everlasting##92408 |achieve 10070/57 |goto Tanaan Jungle/0 60.2,21.0
|tip It looks like a giant peach colored demon blob with tentacles hanging from its body, floating above this pool of green liquid. It's a rare mob, so you may have to wait for it to spawn if someone else killed it recently.
collect Equipment Blueprint: High Intensity Fog Lights##128232 |n
use Equipment Blueprint: High Intensity Fog Lights##128232
accept Equipment Blueprint: High Intensity Fog Lights##39356
step
_Enter_ the building |goto Tanaan Jungle/0 38.5,44.3 < 30 |walk
_Go through_ the doorway |goto Tanaan Jungle/0 37.5,44.5 < 20 |walk
_Run up_ the stairs |goto Tanaan Jungle/0 36.9,45.8 < 30 |walk
_Continue_ up the stairs |goto Tanaan Jungle/0 35.9,47.4 < 30 |walk
_Follow_ the path |goto Tanaan Jungle/0 35.2,47.8 < 20 |walk
kill Belgork##92552 |achieve 10070/35 |goto Tanaan Jungle/0 35.6,46.8
|tip He looks like an armored orc holding an axe with spikes on it, standing up on this platform inside this building. He's a rare mob, so you may have to wait for him to spawn if someone else killed him recently.
collect Equipment Blueprint: Bilge Pump##126950 |n
use Equipment Blueprint: Bilge Pump##126950
accept Equipment Blueprint: Bilge Pump##38932
step
_Run on_ the big dirt road |goto Tanaan Jungle/0 41.6,41.4 < 40 |only if walking
kill Savage Whale Shark##94472
|tip It looks like a huge whale in the water. It's a rare mob, so you may have to wait for it to spawn if someone else killed it recently.
|tip This is a very tough fight, and will likely require a group of at least 10 people to kill it. Make a custom group with the Group Finder and also try to recruit players in General chat to help you during peak playing times.
collect Equipment Blueprint: Trained Shark Tank##128231 |n
use Equipment Blueprint: Trained Shark Tank##128231
accept Equipment Blueprint: Trained Shark Tank##39355
step
clicknpc Fleet Command Table##94399 |goto Frostfire Ridge/0 42.1,70.9
|tip It looks like a round wooden table with a map on it.
Complete the _"Jungle Supplies"_ Naval Mission
|tip This naval mission is available at random, so you may have to complete other missions to clear them out so this mission can become available.
collect Equipment Blueprint: Blast Furnace##128260 |n
use Equipment Blueprint: Blast Furnace##128260
accept Equipment Blueprint: Blast Furnace##39368
step
clicknpc Fleet Command Table##94399 |goto Frostfire Ridge/0 42.1,70.9
|tip It looks like a round wooden table with a map on it.
Complete Naval Missions
|tip Try to use at least one ship per mission that has the "Troll Crew" ability. This ability gives a chance for naval equipment loot when successfully completing a naval mission.
collect Equipment Blueprint: Ammo Reserves##128262 |n
|tip It may take a while to get this blueprint, since it's based on pure luck, so try to be patient.
use Equipment Blueprint: Ammo Reserves##128262
accept Equipment Blueprint: Ammo Reserves##39370
step
clicknpc Fleet Command Table##94399 |goto Frostfire Ridge/0 42.1,70.9
|tip It looks like a round wooden table with a map on it.
Complete Naval Missions
|tip Try to use at least one ship per mission that has the "Troll Crew" ability. This ability gives a chance for naval equipment loot when successfully completing a naval mission.
collect Equipment Blueprint: Automated Sky Scanner##128261 |n
|tip It may take a while to get this blueprint, since it's based on pure luck, so try to be patient.
use Equipment Blueprint: Automated Sky Scanner##128261
accept Equipment Blueprint: Automated Sky Scanner##39369
step
clicknpc Fleet Command Table##94399 |goto Frostfire Ridge/0 42.1,70.9
|tip It looks like a round wooden table with a map on it.
Complete Naval Missions
|tip Try to use at least one ship per mission that has the "Troll Crew" ability. This ability gives a chance for naval equipment loot when successfully completing a naval mission.
collect Equipment Blueprint: Extra Quarters##128259 |n
|tip It may take a while to get this blueprint, since it's based on pure luck, so try to be patient.
use Equipment Blueprint: Extra Quarters##128259
accept Equipment Blueprint: Extra Quarters##39367
step
clicknpc Fleet Command Table##94399 |goto Frostfire Ridge/0 42.1,70.9
|tip It looks like a round wooden table with a map on it.
Complete Naval Missions
|tip Try to use at least one ship per mission that has the "Troll Crew" ability. This ability gives a chance for naval equipment loot when successfully completing a naval mission.
collect Equipment Blueprint: Q-43 Noisemaker Mines##128254 |n
|tip It may take a while to get this blueprint, since it's based on pure luck, so try to be patient.
use Equipment Blueprint: Q-43 Noisemaker Mines##128254
accept Equipment Blueprint: Q-43 Noisemaker Mines##39362
step
clicknpc Fleet Command Table##94399 |goto Frostfire Ridge/0 42.1,70.9
|tip It looks like a round wooden table with a map on it.
Complete Naval Missions
|tip Try to use at least one ship per mission that has the "Troll Crew" ability. This ability gives a chance for naval equipment loot when successfully completing a naval mission.
collect Equipment Blueprint: Sonic Amplification Field##128253 |n
|tip It may take a while to get this blueprint, since it's based on pure luck, so try to be patient.
use Equipment Blueprint: Sonic Amplification Field##128253
accept Equipment Blueprint: Sonic Amplification Field##39361
step
_Follow_ the path on the dock |goto Frostfire Ridge/0 41.1,72.5 < 30 |only if walking
talk Kronk Rustspark##94801 |goto Frostfire Ridge/0 40.0,72.2
turnin Equipment Blueprint: Felsmoke Launchers##39366
turnin Equipment Blueprint: Ghostly Spyglass##39365
turnin Equipment Blueprint: Gyroscopic Internal Stabilizer##39364
turnin Equipment Blueprint: Ice Cutter##39363
turnin Equipment Blueprint: True Iron Rudder##39360
turnin Equipment Blueprint: Tuskarr Fishing Net##39359
turnin Equipment Blueprint: Unsinkable##39358
turnin Equipment Blueprint: High Intensity Fog Lights##39356
turnin Equipment Blueprint: Bilge Pump##38932
turnin Equipment Blueprint: Trained Shark Tank##39355
turnin Equipment Blueprint: Blast Furnace##39368
turnin Equipment Blueprint: Ammo Reserves##39370
turnin Equipment Blueprint: Automated Sky Scanner##39369
turnin Equipment Blueprint: Extra Quarters##39367
turnin Equipment Blueprint: Q-43 Noisemaker Mines##39362
turnin Equipment Blueprint: Sonic Amplification Field##39361
step
You still need more blueprints: |only if not achieved(10256)
Click to restart this guide |confirm |next "naval_mechanics_start" |only if not achieved(10256)
|tip This will help you go back and get any blueprints you missed. |only if not achieved(10256)
Congratulations, you earned the _Naval Mechanics_ achievement! |only if achieved(10256)
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Shipyard\\Charting a Course",{
achieveid={10258},
patch='60200',
description="\nThis guide will walk you through completing the Charting a Course achievement.",
},[[
step
clicknpc Fleet Command Table##94399 |goto Frostfire Ridge/0 42.1,70.9
|tip It looks like a round wooden table with a map on it.
Complete 3 of these Rare Naval Missions:
The House Always Wins |achieve 10258/1 |complete achieved(10258)
For Hate's Sake |achieve 10258/3 |complete achieved(10258)
Black Market Journal |achieve 10258/6 |complete achieved(10258)
Orphaned Aquatic Animal Rescue |achieve 10258/2 |complete achieved(10258)
The Wave Mistress |achieve 10258/5 |complete achieved(10258)
It's a boat, it's a plane, it's... just a riverbeast. |achieve 10258/4 |complete achieved(10258)
step
Congratulations, you earned the _Charting a Course_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Shipyard\\Exploring the High Seas",{
achieveid={10307},
patch='60200',
description="\nThis guide will walk you through completing the Exploring the High Seas achievement.",
},[[
step
clicknpc Fleet Command Table##94399 |goto Frostfire Ridge/0 42.1,70.9
|tip It looks like a round wooden table with a map on it.
Complete all of these Rare Naval Missions:
The House Always Wins |achieve 10307/5
For Hate's Sake |achieve 10307/2
Black Market Journal |achieve 10307/1
Orphaned Aquatic Animal Rescue |achieve 10307/4
The Wave Mistress |achieve 10307/3
It's a boat, it's a plane, it's... just a riverbeast. |achieve 10307/6
step
Congratulations, you earned the _Exploring the High Seas_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Draenor Dungeons\\A Gift of Earth and Fire",{
achieveid={8993},
patch='60001',
description="\nDefeat Magmolatus while Calamity and Ruination are still alive in Bloodmaul Slag Mines on Heroic difficulty.",
},[[
step
_Enter_ the _Bloodmaul Slag Mines_ dungeon on Heroic
map Bloodmaul Slag Mines/1
path follow loose;loop off;ants straight
path	51.5,83.3	49.0,77.0	49.9,68.7
path	52.6,62.0	56.3,59.8
_Follow_ the path |goto Bloodmaul Slag Mines/1 56.3,59.8 < 20 |noway |c
step
map Bloodmaul Slag Mines/1
path follow loose;loop off;ants straight
path	55.7,59.7	53.3,56.9	55.0,46.4
path	53.1,42.1	48.2,41.7	43.7,54.0
path	35.9,55.8	29.1,55.9
_Follow_ the path |goto Bloodmaul Slag Mines/1 29.1,55.9 < 20 |noway |c
step
When you engage Magmolatus he'll _spawn two elemental adds_
|tip One fire and one earth.
In order to get the achievement _you must kill the boss with the two adds alive_
Popular strategy suggests the use of _two tanks_
|tip Having one dps dual spec tank helps.
_Concentrate DPS_ on the boss and the small adds that spawn while the _off tank keeps the elementals_ far enough away to avoid cleave effects and AOE spells
Be sure to _avoid the flame circles and spikes_ on the ground as you DPS Magmolatus down
kill Magmolatus##74475
|achieve 8993
step
Congratulations, you have _earned_ the A Gift of Earth and Fire Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Draenor Dungeons\\Auchindoun",{
achieveid={9039},
patch='60001',
description="\nDefeat Teron'gor in Auchindoun.",
},[[
step
map Auchindoun/1
path follow loose;loop off;ants straight
path	49.8,68.8	43.5,65.6	27.4,40.2
Go down the hallway to the first boss, _Vigilant Kaathar_ |goto Auchindoun/1 27.4,40.2 < 10 |c |noway
step
kill Vigilant Kaathar##75839
Defeat Vigilant Kaathar |goto Auchindoun/1 29.5,32.4 |scenariogoal 25102
step
map Auchindoun/1
path follow loose;loop off;ants straight
path	27.4,40.2	30.6,51.3	35.0,58.9
path	44.2,66.0
Follow the path, clearing trash as you make your way to the second boss, _Soulbinder Nyami_ |goto Auchindoun/1 44.2,66.0 < 10 |c |noway
step
kill Soulbinder Nyami##76177
Defeat Soulbinder Nyami |goto Auchindoun/1 49.2,66.5 |scenariogoal 25103
step
map Auchindoun/1
path follow loose;loop off;ants straight
path	49.7,66.6	55.0,66.1
path	65.0,59.5	70.0,48.5	70.7,38.2
Follow the path, clearing trash as you make your way to the third boss, _Azzakel_ |goto Auchindoun/1 70.7,38.2 < 10 |c |noway
step
kill Azzakel##75927
Defeat Azzakel |goto Auchindoun/1 70.7,29.9 |scenariogoal 25104
step
click Soul Transporter |goto Auchindoun/1 63.7,32.4 < 5
_Activate_ the Soul Transporter |goto 58.7,18.9 |c |noway
step
click Soul Transporter
_Activate_ the Soul Transporter |goto Auchindoun 57.0,21.5
Fly to the next location |goto Auchindoun/1 40.8,18.9 |c |noway
step
click Soul Transporter
_Activate_ the Soul Transporter |goto Auchindoun 42.4,21.4
Fly to the next location |goto Auchindoun/1 41.1,45.4 |c |noway
step
click Soul Transporter
_Activate_ the Soul Transporter |goto Auchindoun 42.4,43.5
Fly to the next location |goto Auchindoun/1 49.7,41.6 |c |noway
step
kill Teron'gor##86220 |goto Auchindoun/1 49.6,33.5
|achieve 9039
step
Congratulations, you have _earned_ the Auchindoun Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Draenor Dungeons\\Bloodmaul Slag Mines",{
achieveid={9037},
patch='60001',
description="\nDefeat Gug'rokk in the Bloodmaul Slag Mines.",
},[[
step
map Bloodmaul Slag Mines/1
path follow loose;loop off;ants straight
path	51.5,83.3	49.0,77.0	49.9,68.7
path	52.6,62.0	53.3,56.9	55.0,46.4
path	53.1,42.1	49.1,33.6	49.4,24.5
path	58.8,23.3
_Follow_ the path |goto Bloodmaul Slag Mines/1 58.8,23.3 < 10 |noway |c
kill Gug'rokk##86224
|achieve 9037
step
Congratulations, you have _earned_ the Bloodmaul Slag Mines Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Draenor Dungeons\\Bridge Over Troubled Fire",{
achieveid={9056},
patch='60001',
description="\nKill 20 Ragewing Whelps in 10 seconds while fighting Ragewing the Untamed in Upper Blackrock Spire on Heroic difficulty.",
},[[
step
map Upper Blackrock Spire 2/1
path follow loose;loop off;ants straight
path	37.2,30.0	36.6,18.3	33.5,15.8
path	32.9,13.2	30.6,13.3	Upper Blackrock Spire 2/2 30.4,19.6
_Clear the rooms_ to break the seals
_Follow_ the path |goto Upper Blackrock Spire 2/2 30.4,19.6 < 5|c |noway
step
map Upper Blackrock Spire 2/2
path follow loose;loop off;ants straight
path	30.3,27.0	30.6,36.4	32.0,37.8
_Follow_ the path |goto Upper Blackrock Spire 2/2 32.0,37.8 |c |noway
step
map Upper Blackrock Spire 2/2
path follow loose;loop off;ants straight
path	36.2,37.6	30.3,39.5
_Follow_ the path |goto Upper Blackrock Spire 2/2 30.3,39.5 |c |noway
step
map Upper Blackrock Spire 2/3
path follow loose;loop off;ants straight
path	28.6,41.1	28.4,34.1	36.4,34.0
path	36.4,27.8	42.2,28.3	45.8,28.0
_Follow_ the path |goto Upper Blackrock Spire 2/3 45.8,28.0 < 8 |c |noway |or
_Enter_ the next floor |confirm |or
step
map Upper Blackrock Spire 2/3
path follow loose;loop off;ants straight
path	48.5,27.3	48.7,35.8	54.7,35.8
path	54.7,45.7
_Follow_ the path |goto Upper Blackrock Spire 2/3 54.7,45.7 < 20 |c |noway
step
map Upper Blackrock Spire 2/3
path follow loose;loop off;ants straight
path	61.8,45.6	58.1,47.0	50.6,45.7
_Follow_ the path |goto Upper Blackrock Spire 2/3 50.6,45.7 |c |noway
step
When Ragewing takes flight the first time _do not kill_ the spawned adds
|tip Kite and CC them.
When Ragewing takes flight the second time another wave will appear that _need to be gathered_ on top of the first group
After all the drakes are gathered on top of each other _AOE them all down quickly_
|tip Try not to push Ragewing to his final phase before the second wave.
kill Ragewing##76585 |goto Upper Blackrock Spire 2/3 46.7,45.6
|achieve 9056
step
Congratulations, you have _earned_ the Bridge Over Troubled Fire Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Draenor Dungeons\\Come With Me If You Want to Live",{
achieveid={9005},
patch='60001',
description="\nDefeat Gug'rokk alongside Croman the Barbarian after finding his sword in Bloodmaul Slag Mines on Heroic difficulty.",
},[[
step
_Clear all the trash_ on the way to Magmolatus but _don't_ attack him yet
|tip You don't have to clear all the adds but it helps plan for messy mistakes.
map Bloodmaul Slag Mines/1
path follow loose;loop off;ants straight
path	51.5,83.3	43.7,54.0	35.9,55.8
path	29.1,55.9
_Follow_ the path |goto Bloodmaul Slag Mines/1 29.1,55.9 < 20 |noway |c
step
After that _clear the adds_ to Slave Watcher Crushto and _kill_ him
|tip After the fight talk to Croman.
Croman seems to follow the person who freed him so _make sure it's someone_ who will not be likely to die as he despawns if they do
Croman _can be healed_ as well so make sure your healer is aware to watch his health
map Bloodmaul Slag Mines/1
path follow loose;loop off;ants straight
path	29.1,55.9	35.9,55.8	43.7,54.0
path	48.2,41.7	53.1,42.1	55.0,46.4
path	53.3,56.9	55.7,59.7
_Follow_ the path |goto Bloodmaul Slag Mines/1 57.1,60.0 < 20 |noway |c
step
_Kill_ Magmolatus and Croman will grab up his sword
map Bloodmaul Slag Mines/1
path follow loose;loop off;ants straight
path	55.7,59.7	53.3,56.9	55.0,46.4
path	53.1,42.1	48.2,41.7	43.7,54.0
path	35.9,55.8	29.1,55.9
_Follow_ the path |goto Bloodmaul Slag Mines/1 29.1,55.9 < 20 |noway |c
step
_Kill_ Roltall and then Gog'rokk
map Bloodmaul Slag Mines/1
path follow loose;loop off;ants straight
path	29.1,55.9	34.9,56.0	41.9,55.5
path	43.7,52.2	45.4,45.4	49.1,40.2
path	49.1,33.6	49.1,33.7	49.4,24.5
path	58.8,23.3
_Follow_ the path |goto Bloodmaul Slag Mines/1 58.8,23.3 < 10 |noway |c
step
There will be a bit of dialogue before you gain the achievement
|achieve 9005
step
Congratulations, you have _earned_ the Come With Me If You Want to Live Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Draenor Dungeons\\Demon's Souls",{
achieveid={9551},
patch='60001',
description="\nDefeat Azzakel in Auchindoun on Heroic difficulty without killing any other demons during the encounter.",
},[[
step
map Auchindoun/1
path follow loose;loop off;ants straight
path	49.8,68.8	43.5,65.6	Auchindoun/1 27.4,40.2
Go down the hallway to the first boss, _Vigilant Kaathar_ |goto Auchindoun/1 27.4,40.2 < 10 |c |noway
step
kill Vigilant Kaathar##75839
Defeat Vigilant Kaathar |goto Auchindoun/1 29.5,32.4 |scenariogoal 25102
step
map Auchindoun/1
path follow loose;loop off;ants straight
path	27.4,40.2	30.6,51.3	35.0,58.9
path	44.2,66.0
Follow the path, clearing trash as you make your way to the second boss, _Soulbinder Nyami_ |goto Auchindoun/1 44.2,66.0 < 10 |c |noway
step
kill Soulbinder Nyami##76177
Defeat Soulbinder Nyami |goto Auchindoun/1 49.2,66.5 |scenariogoal 25103
step
map Auchindoun/1
path follow loose;loop off;ants straight
path	49.7,66.6	55.0,66.1
path	65.0,59.5	70.0,48.5	70.7,38.2
Follow the path, clearing trash as you make your way to the third boss, _Azzakel_ |goto Auchindoun/1 70.7,38.2 < 10 |c |noway
step
kill Azzakel##75927
Defeat Azzakel |goto Auchindoun/1 70.7,29.9 |scenariogoal 25104
step
click Soul Transporter |goto Auchindoun/1 63.7,32.4 < 5
_Activate_ the Soul Transporter |goto 58.7,18.9 |c |noway
step
click Soul Transporter
_Activate_ the Soul Transporter |goto Auchindoun 57.0,21.5
Fly to the next location |goto Auchindoun/1 40.8,18.9 |c |noway
step
click Soul Transporter
_Activate_ the Soul Transporter |goto Auchindoun 42.4,21.4
Fly to the next location |goto Auchindoun/1 41.1,45.4 |c |noway
step
click Soul Transporter
_Activate_ the Soul Transporter |goto Auchindoun 42.4,43.5
Fly to the next location |goto Auchindoun/1 49.7,41.6 |c |noway
step
The entire group should _focus fire the boss_ 100% of the time when they can
The _tank should hold_ the Felguards |tip In the off chance your tank cannot handle the extra damage of the adds you can attempt with an off tank but it will put a heavy damper on your DPS.
Make sure _no one burns any demon adds down_ during the encounter and you'll earn yourself this achievement
kill Azzakel##86219 |goto Auchindoun/1 49.6,33.5
|achieve 9551
step
Congratulations, you have _earned_ the Demon's Souls Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Draenor Dungeons\\Dragonmaw? More Like Dragonfall",{
achieveid={9057},
patch='60001',
description="\nKill 5 Emberscale Ironflight before defeating Warlord Zaela in Upper Blackrock Spire on Heroic difficulty.",
},[[
step
_Enter_ the Upper Blackrock Spire dungeon on heroic |goto Upper Blackrock Spire 2/1 37.3,29.1 < 100 |c |noway |or
|confirm |or
step
map Upper Blackrock Spire 2/1
path follow loose;loop off;ants straight
path	37.2,30.0	36.6,18.3	33.5,15.8
path	32.9,13.2	30.6,13.3	Upper Blackrock Spire 2/2 30.4,19.6
_Clear the rooms_ to break the seals
_Follow_ the path |goto Upper Blackrock Spire 2/2 30.4,19.6 < 5|c |noway
step
map Upper Blackrock Spire 2/2
path follow loose;loop off;ants straight
path	30.3,27.0	30.6,36.4	32.0,37.8
_Follow_ the path |goto Upper Blackrock Spire 2/2 32.0,37.8
step
map Upper Blackrock Spire 2/2
path follow loose;loop off;ants straight
path	36.2,37.6	30.3,39.5
_Follow_ the path |goto Upper Blackrock Spire 2/2 30.3,39.5 |c |noway
step
map Upper Blackrock Spire 2/3
path follow loose;loop off;ants straight
path	28.6,41.1	28.4,34.1	36.4,34.0
path	36.4,27.8	42.2,28.3	45.8,28.0
_Follow_ the path |goto Upper Blackrock Spire 2/3 45.8,28.0 < 8 |c |noway |or
_Enter_ the next floor |confirm |or
step
map Upper Blackrock Spire 2/3
path follow loose;loop off;ants straight
path	48.5,27.3	48.7,35.8	54.7,35.8
path	54.7,45.7
_Follow_ the path |goto Upper Blackrock Spire 2/3 54.7,45.7 < 20 |c |noway
step
map Upper Blackrock Spire 2/3
path follow loose;loop off;ants straight
path	61.8,45.6	58.1,47.0	50.6,45.7
_Follow_ the path |goto Upper Blackrock Spire 2/3 50.6,45.7 |c |noway
step
map Upper Blackrock Spire 2/3
path follow loose;loop off;ants straight
path	46.7,45.6	39.8,45.9	36.3,51.4
path	28.9,51.5	21.4,49.6	18.8,47.6
path	16.7,47.4
_Follow_ the path |goto Upper Blackrock Spire 2/3 16.7,47.4 < 8 |c |noway
step
_Team communication is crucial to earn this achievement!_
There are _eight cycles of drakes in this encounter_ that cycle through so if you don't kill one it will come back after 7 other cycles come through |tip They do heal during their flight time but not usually to full.
_There is no enrage timer_ for the boss so it's possible to wait if needed
The boss spawns _three adds at 60%_ |tip The tank should focus on the boss while the DPS burn every second drake down.
Focus on _every second drake in each cycle_ during the encounter to get them down to around 30% health so that when the come down a second time after the 7 drake cycle they can be killed
kill Warlord Zaela##77120 |goto Upper Blackrock Spire 2/3 14.4,47.7
|achieve 9057
step
Congratulations, you have _earned_ the Dragonmaw? More Like Dragonfall Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Draenor Dungeons\\Draenor Dungeon Hero",{
achieveid={9391},
patch='60001',
description="\nThis guide will walk you through how to get the Draenor Dungeon Hero achievement.",
},[[
step
Complete the following Heroic Draenor dungeons:
|tip Use the dungeon guides to accomplish this.
Heroic: Bloodmaul Slag Mines |achieve 9391/1
Heroic: Iron Docks |achieve 9391/2
Heroic: Auchindoun |achieve 9391/3
Heroic: Skyreach |achieve 9391/4
Heroic: The Everbloom |achieve 9391/5
Heroic: Grimrail Depot |achieve 9391/6
Heroic: Shadowmoon Burial Grounds |achieve 9391/7
Heroic: Upper Blackrock Spire |achieve 9391/8
step
Congratulations, you have earned the Draenor Dungeon Hero achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Draenor Dungeons\\Expert Timing",{
achieveid={9081},
patch='60001',
description="\nSlay 4 Ogron Laborers that are not in combat using a single Iron Star in Iron Docks on Heroic Difficulty.",
},[[
step
_Enter_ the _Iron Docks_ dungeon on Heroic |goto Iron Docks/1 30.6,44.5 |c |noway |or
|confirm |or
step
map Iron Docks/1
path follow loose;loop off;ants straight
path	33.6,40.7	37.8,35.5	42.0,34.4
path	46.4,34.2	49.2,47.6	39.6,48.6
path	37.9,55.5	31.2,61.7
_Follow_ the path |goto Iron Docks/1 31.2,61.7 |c |noway
step
The four Ogron Laborers you need are in the area _after the first boss_ |tip The 3 big Iron Stars are at the west wall.
_Get inside_ the Southernmost Iron Star and _wait_ for all four Laborers to line up |tip Three of the mobs patrol but one stands still.
The Laborers _cannot be taunted_ or CCed but they _can be distracted_ by a rogue to save time
Once all four of them line up _use the new vehicle action bar_ to rush through them and earn the achievement
|achieve 9081
step
Congratulations, you have _earned_ the Expert Timing Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Draenor Dungeons\\Grimrail Depot",{
achieveid={9043},
patch='60001',
description="\nDefeat Skylord Tovra in Grimrail Depot.",
},[[
step
Enter the _Grimrail Depot_ dungeon |goto Grimrail Depot/1 32.4,31.9 < 20 |c |noway |or
|confirm |or
step
map Grimrail Depot/1
path follow loose;loop off;ants straight
path	30.9,51.7	43.9,56.8	path	56.6,42.8
Follow the path |goto Grimrail Depot/1 56.6,42.8 |c |noway
step
map Grimrail Depot/1
path follow loose;loop off;ants straight
path	69.5,19.6	75.4,25.0	Grimrail Depot/2 63.6,25.8
path	Grimrail Depot/2 71.8,13.7	Grimrail Depot/2 70.3,29.3
Follow the path |goto Grimrail Depot/3 85.3,51.8 |c |noway |or
Enter the Train Car |confirm |or
step
map Grimrail Depot/3
path follow loose;loop off;ants straight
path	85.3,51.8	67.6,52.1	38.6,51.8
path	9.7,51.7
Follow the path |goto Grimrail Depot/3 9.7,51.7 |c |noway
step
map Grimrail Depot/4
path follow loose;loop off;ants straight
path	70.3,51.5	54.0,51.6	30.9,51.6
Follow the path |goto Grimrail Depot/4 30.9,51.6 |c |noway
step
kill Skylord Tovra##86228 |goto Grimrail Depot/4 8.6,51.0
|achieve 9043
step
Congratulations, you have _earned_ the Grimrail Depot Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Draenor Dungeons\\Heroic: Auchindoun",{
achieveid={9049},
patch='60001',
description="\nDefeat Teron'gor in Auchindoun on Heroic difficulty.",
},[[
step
_Enter_ the _Auchindoun_ dungeon on Heroic |goto Auchindoun/1 49.7,90.2 < 30 |c |noway |or
|confirm |or
step
map Auchindoun/1
path follow loose;loop off;ants straight
path	49.8,68.8	43.5,65.6	Auchindoun/1 27.4,40.2
Go down the hallway to the first boss, _Vigilant Kaathar_ |goto Auchindoun/1 27.4,40.2 < 10 |c |noway
step
kill Vigilant Kaathar##75839
Defeat Vigilant Kaathar |goto Auchindoun/1 29.5,32.4 |scenariogoal 25102
step
map Auchindoun/1
path follow loose;loop off;ants straight
path	27.4,40.2	30.6,51.3	35.0,58.9
path	44.2,66.0
Follow the path, clearing trash as you make your way to the second boss, _Soulbinder Nyami_ |goto Auchindoun/1 44.2,66.0 < 10 |c |noway
step
kill Soulbinder Nyami##76177
Defeat Soulbinder Nyami |goto Auchindoun/1 49.2,66.5 |scenariogoal 25103
step
map Auchindoun/1
path follow loose;loop off;ants straight
path	49.7,66.6	55.0,66.1
path	65.0,59.5	70.0,48.5	70.7,38.2
Follow the path, clearing trash as you make your way to the third boss, _Azzakel_ |goto Auchindoun/1 70.7,38.2 < 10 |c |noway
step
kill Azzakel##75927
Defeat Azzakel |goto Auchindoun/1 70.7,29.9 |scenariogoal 25104
step
click Soul Transporter |goto Auchindoun/1 63.7,32.4 < 5
_Activate_ the Soul Transporter |goto 58.7,18.9 |c |noway
step
click Soul Transporter
_Activate_ the Soul Transporter |goto Auchindoun 57.0,21.5
Fly to the next location |goto Auchindoun/1 40.8,18.9 |c |noway
step
click Soul Transporter
_Activate_ the Soul Transporter |goto Auchindoun 42.4,21.4
Fly to the next location |goto Auchindoun/1 41.1,45.4 |c |noway
step
click Soul Transporter
_Activate_ the Soul Transporter |goto Auchindoun 42.4,43.5
Fly to the next location |goto Auchindoun/1 49.7,41.6 |c |noway
step
kill Teron'gor##86220 |goto Auchindoun/1 49.6,33.5
|achieve 9049
step
Congratulations, you have _earned_ the Heroic: Auchindoun Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Draenor Dungeons\\Heroic: Bloodmaul Slag Mines", {
achieveid={9046},
patch='60001',
description="\nDefeat Gug'rokk in the Bloodmaul Slag Mines on Heroic difficulty.",
},[[
step
_Enter_ the _Bloodmaul Slag Mines_ dungeon on Heroic |goto Bloodmaul Slag Mines/1 51.5,83.3 < 100 |c |noway |or
|confirm |or
step
map Bloodmaul Slag Mines/1
path follow loose;loop off;ants straight
path	51.5,83.3	49.0,77.0	49.9,68.7
path	52.6,62.0	52.6,62.0	53.3,56.9
path	55.0,46.4	53.1,42.1	49.1,33.6
path	49.1,33.7	49.4,24.5	58.8,23.3
_Follow_ the path |goto Bloodmaul Slag Mines/1 58.8,23.3 < 10 |noway |c
step
kill Gug'rokk##86224
|achieve 9046
step
Congratulations, you have _earned_ the Heroic: Bloodmaul Slag Mines Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Draenor Dungeons\\Heroic: Grimrail Depot",{
achieveid={9052},
patch='60001',
description="\nDefeat Skylord Tovra in Grimrail Depot on Heroic difficulty.",
},[[
step
Enter the _Grimrail Depot_ dungeon on Heroic |goto Grimrail Depot/1 32.4,31.9 < 20 |c |noway |or
|confirm |or
step
map Grimrail Depot/1
path follow loose;loop off;ants straight
path	30.9,51.7	43.9,56.8	path	56.6,42.8
Follow the path |goto Grimrail Depot/1 56.6,42.8 |c |noway
step
map Grimrail Depot/1
path follow loose;loop off;ants straight
path	69.5,19.6	75.4,25.0	Grimrail Depot/2 63.6,25.8
path	Grimrail Depot/2 71.8,13.7	Grimrail Depot/2 70.3,29.3
Follow the path |goto Grimrail Depot/3 85.3,51.8 |c |noway |or
Enter the Train Car |confirm |or
step
map Grimrail Depot/3
path follow loose;loop off;ants straight
path	85.3,51.8	67.6,52.1	38.6,51.8
path	9.7,51.7
Follow the path |goto Grimrail Depot/3 9.7,51.7 |c |noway
step
map Grimrail Depot/4
path follow loose;loop off;ants straight
path	70.3,51.5	54.0,51.6	30.9,51.6
Follow the path |goto Grimrail Depot/4 30.9,51.6 |c |noway
step
kill Skylord Tovra##86228 |goto Grimrail Depot/4 8.6,51.0
|achieve 9052
step
Congratulations, you have _earned_ the Heroic: Grimrail Depot Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Draenor Dungeons\\Heroic: Iron Docks",{
achieveid={9047},
patch='60001',
description="\nDefeat Skulloc in the Iron Docks on Heroic difficulty.",
},[[
step
_Enter_ the _Iron Docks_ dungeon on Heroic |goto Iron Docks/1 30.6,44.5 |c |noway |or
|confirm |or
step
map Iron Docks/1
path follow loose;loop off;ants straight
path	33.6,40.7	37.8,35.5	42.0,34.4
path	46.4,34.2	49.2,47.6	39.6,48.6
path	37.9,55.5	49.5,67.6	64.3,76.3
path	76.4,76.6	83.5,76.2	86.4,68.9
path	86.5,24.8	79.3,19.6	71.9,28.0
path	69.4,34.2
_Follow_ the path |goto Iron Docks/1 69.4,34.2 |c |noway
step
kill Skulloc##83612
|achieve 9047
step
Congratulations, you have _earned_ the Heroic: Iron Docks Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Draenor Dungeons\\Heroic: Shadowmoon Burial Grounds",{
achieveid={9054},
patch='60001',
description="\nDefeat Ner'zhul in Shadowmoon Burial Grounds on Heroic difficulty.",
},[[
step
_Enter_ the Shadowmoon Burial Grounds dungeon on heroic |goto Shadowmoon Burial Grounds/1 12.0,68.4 < 20 |c |noway |or
|confirm |or
step
map Shadowmoon Burial Grounds/1
path follow loose;loop off;ants straight
path	12.0,68.4	13.8,65.6	16.2,55.5
path	23.4,50.8	37.6,50.9	38.4,37.6
path	45.6,28.9	52.6,24.1	52.6,21.7
_Drop down_ at the end of the path |goto Shadowmoon Burial Grounds/1 46.9,51.0 |c |noway
step
map Shadowmoon Burial Grounds/1
path follow loose;loop off;ants straight
path	52.6,21.7	52.6,34.8	42.3,36.1
path	42.5,50.8	47.9,50.9
_Follow_ the path |goto Shadowmoon Burial Grounds/1 47.9,50.9 < 8 |c |noway
step
map Shadowmoon Burial Grounds/1
path follow loose;loop off;ants straight
path	52.6,51.0	65.3,50.9	72.7,51.7
path	77.9,55.9	78.2,62.4
_Follow_ the path |goto Shadowmoon Burial Grounds/1 78.2,62.4 < 8 |c |noway
step
map Shadowmoon Burial Grounds/1
path follow loose;loop off;ants straight
path	79.0,72.9	84.4,72.5	87.6,60.4
_Follow_ the path |goto Shadowmoon Burial Grounds/1 87.6,60.4 |c |noway
step
map Shadowmoon Burial Grounds/2
path follow loose;loop off;ants straight
path	7.0,65.5	7.3,60.9	10.6,58.9
path	15.5,58.1	21.3,61.7	22.2,66.8
path	20.2,71.5	17.3,70.9	16.9,66.9
path	18.8,62.2	25.7,59.5
_Follow_ the path |goto Shadowmoon Burial Grounds/2 25.7,59.5 |c |noway
step
map Shadowmoon Burial Grounds/2
path follow loose;loop off;ants straight
path	39.1,50.9	49.4,57.6	56.9,62.3
path	64.8,67.1
_Follow_ the path |goto Shadowmoon Burial Grounds/3 38.5,36.9 < 20 |c |noway
step
kill Ner'zhul##76268 |goto Shadowmoon Burial Grounds/3 48.1,47.1
|achieve 9054
step
Congratulations, you have _earned_ the Heroic: Shadowmoon Burial Grounds Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Draenor Dungeons\\Heroic: Skyreach",{
achieveid={8844},
patch='60001',
description="\nDefeat High Sage Viryx in Skyreach on Heroic difficulty.",
},[[
step
_Enter_ the _Skyreach_ dungeon on Heroic |goto Skyreach/1 60.6,25.1 < 20 |c |noway |or
|confirm |or
step
map Skyreach/1
path follow loose;loop off;ants straight
path	60.6,25.1	60.5,15.7	65.5,13.7
path	66.5,25.9	64.1,32.2	62.6,39.2
path	59.2,46.2	54.1,50.3	53.3,53.7
path	52.3,61.1	47.0,62.3	45.7,64.7
path	47.1,67.8	47.8,70.9	45.3,76.3
_Follow_ the path |goto Skyreach/1 45.3,76.3 |c |noway
step
map Skyreach/1
path follow loose;loop off;ants straight
path	41.4,77.1	39.5,72.0	39.9,64.2
path	37.0,63.6	35.5,68.1	42.4,69.3
_Follow_ the path |goto Skyreach/1 42.4,69.3 < 5 |c |noway
step
map Skyreach/2
path follow loose;loop off;ants straight
path	18.1,73.8	27.2,80.8	30.9,72.5
path	24.8,58.1	27.8,41.3	35.4,35.4
path	44.0,43.4
_Follow_ the path |goto Skyreach/2 44.0,43.4 < 5 |c |noway
step
kill High Sage Viryx##86241 |goto Skyreach/2 51.1,27.4
|achieve 8844
step
Congratulations, you have _earned_ the Heroic: Skyreach Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Draenor Dungeons\\Heroic: The Everbloom",{
achieveid={9053},
patch='60001',
description="\nDefeat Yalnu in The Everbloom on Heroic difficulty.",
},[[
step
_Enter The Everbloom_ dungeon on Heroic |goto The Everbloom/1 72.4,55.7 < 20 |c |noway |or
|confirm |or
step
map The Everbloom/1
path follow loose;loop off;ants straight
path	72.4,55.7	69.4,50.4	67.4,48.0
path	63.4,56.9	59.0,59.9	56.0,59.7
Follow the path |goto The Everbloom/1 56.0,59.7 |c |noway
step
Defeat Witherbark |scenariogoal 25278 |goto The Everbloom/1 52.5,56.9
step
map The Everbloom/1
path follow loose;loop off;ants straight
path	53.3,56.3	54.2,49.4	58.2,46.1
path	63.5,48.5	67.7,47.4	69.5,42.1
path	71.0,29.6	70.6,24.4	67.8,21.6
Follow the path |goto The Everbloom/1 67.8,21.6 |c |noway
step
Defeat the Ancient Protectors |scenariogoal 25112 |goto The Everbloom/1 64.0,22.4
step
map The Everbloom/1
path follow loose;loop off;ants straight
path	64.5,25.3	62.0,28.2	59.8,25.5
path	57.8,20.6	58.8,13.4	62.1,5.9
Follow the path |goto The Everbloom/1 62.1,5.9 |c |noway
step
Defeat  Xeri'tac |scenariogoal 25277 |goto The Everbloom/1 64.5,2.7
step
map The Everbloom/1
path follow loose;loop off;ants straight
path	61.4,7.3	58.8,12.8	57.4,20.4
path	57.2,29.6
Follow the path |goto The Everbloom/1 57.2,29.6 |c |noway
step
Defeat Archmage Sol |scenariogoal 25275 |goto The Everbloom/1 55.9,35.8
step
map The Everbloom/1
path follow loose;loop off;ants straight
path	55.2,33.1	44.2,35.1
Follow the path |goto The Everbloom/2 44.2,35.1 |c |noway
step
Defeat Yalnu |achieve 9053 |goto The Everbloom/2 45.0,72.0
step
Congratulations, you have _earned_ the Heroic: Everbloom Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Draenor Dungeons\\Heroic: Upper Blackrock Spire",{
achieveid={9055},
patch='60001',
description="\nDefeat Warlord Zaela in Upper Blackrock Spire on Heroic difficulty.",
},[[
step
_Enter_ the Upper Blackrock Spire dungeon on heroic |goto Upper Blackrock Spire 2/1 37.3,29.1 < 100 |c |noway |or
|confirm |or
step
map Upper Blackrock Spire 2/1
path follow loose;loop off;ants straight
path	37.2,30.0	36.6,18.3	33.5,15.8
path	32.9,13.2	30.6,13.3	Upper Blackrock Spire 2/2 30.4,19.6
_Clear the rooms_ to break the seals
_Follow_ the path |goto Upper Blackrock Spire 2/2 30.4,19.6 < 5|c |noway
step
map Upper Blackrock Spire 2/2
path follow loose;loop off;ants straight
path	30.3,27.0	30.6,36.4	32.0,37.8
_Follow_ the path |goto Upper Blackrock Spire 2/2 32.0,37.8
step
map Upper Blackrock Spire 2/2
path follow loose;loop off;ants straight
path	36.2,37.6	30.3,39.5
_Follow_ the path |goto Upper Blackrock Spire 2/2 30.3,39.5 |c |noway
step
map Upper Blackrock Spire 2/3
path follow loose;loop off;ants straight
path	28.6,41.1	28.4,34.1	36.4,34.0
path	36.4,27.8	42.2,28.3	45.8,28.0
_Follow_ the path |goto Upper Blackrock Spire 2/3 45.8,28.0 < 8 |c |noway |or
_Enter_ the next floor |confirm |or
step
map Upper Blackrock Spire 2/3
path follow loose;loop off;ants straight
path	48.5,27.3	48.7,35.8	54.7,35.8
path	54.7,45.7
_Follow_ the path |goto Upper Blackrock Spire 2/3 54.7,45.7 < 20 |c |noway
step
map Upper Blackrock Spire 2/3
path follow loose;loop off;ants straight
path	61.8,45.6	58.1,47.0	50.6,45.7
_Follow_ the path |goto Upper Blackrock Spire 2/3 50.6,45.7 |c |noway
step
map Upper Blackrock Spire 2/3
path follow loose;loop off;ants straight
path	46.7,45.6	39.8,45.9	36.3,51.4
path	28.9,51.5	21.4,49.6	18.8,47.6
path	16.7,47.4
_Follow_ the path |goto Upper Blackrock Spire 2/3 16.7,47.4 < 8 |c |noway
step
kill Warlord Zaela##77120 |goto Upper Blackrock Spire 2/3 14.4,47.7
|achieve 9055
step
Congratulations, you have _earned_ the Heroic: Upper Blackrock Spire Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Draenor Dungeons\\I Saw Soils",{
achieveid={9035},
patch='60001',
description="\nCause three Piles of Ash to form Solar Flares at the same time during the Rukhran encounter in Skyreach on Heroic difficulty.",
},[[
step
_Enter_ the _Skyreach_ dungeon on Heroic |goto Skyreach/1 60.6,25.1 < 20 |c |noway |or
|confirm |or
step
map Skyreach/1
path follow loose;loop off;ants straight
path	60.6,25.1	60.5,15.7	65.5,13.7
path	66.5,25.9	64.1,32.2	62.6,39.2
path	59.2,46.2	54.1,50.3	53.3,53.7
path	52.3,61.1	47.0,62.3	45.7,64.7
path	47.1,67.8	47.8,70.9	45.3,76.3
_Follow_ the path |goto Skyreach/1 45.3,76.3 |c |noway
step
This achievement was buggy at launch, but _seems to be working now_ |tip The stratgy below works with a well coordinated group.
The _tank in the group should just focus on tanking the boss_ while the other four start _kiting the birds around the main pillar_ in the room |tip They can be slowed and kited.
Try to _activate some ashes_ while doing this to save time
_Don't DPS the boss_ because at 75% he will cast Quills and ruin the strategy
When you have the _vast majority of birds kited_ and somewhat damaged _they can be AOE'd down_
|tip Using an AOE stun will keep them from exploding at 0 health until the stun wears off.
You have now _created a nice group of ashes_ for the boss to cast Summon Solar Flare on them
_Wait patiently_ until the risen ash cause more to rise and then kill the boss
kill Rukhran##76379 |goto Skyreach/1 42.7,81.9
|achieve 9035
step
Congratulations, you have _earned_ the I Saw Soils Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Draenor Dungeons\\Icky Ichors",{
achieveid={9025},
patch='60001',
description="\nDefeat Bonemaw after having fed him 25 Corpse Skitterlings in Shadowmoon Burial Grounds on Heroic difficulty.",
},[[
step
_Enter_ the Shadowmoon Burial Grounds dungeon on heroic |goto Shadowmoon Burial Grounds/1 12.0,68.4 < 20 |c |noway |or
|confirm |or
step
map Shadowmoon Burial Grounds/1
path follow loose;loop off;ants straight
path	12.0,68.4	13.8,65.6	16.2,55.5
path	23.4,50.8	37.6,50.9	38.4,37.6
path	45.6,28.9	52.6,24.1	52.6,21.7
_Drop down_ at the end of the path |goto Shadowmoon Burial Grounds/1 46.9,51.0 |c |noway
step
map Shadowmoon Burial Grounds/1
path follow loose;loop off;ants straight
path	52.6,21.7	52.6,34.8	42.3,36.1
path	42.5,50.8	47.9,50.9
_Follow_ the path |goto Shadowmoon Burial Grounds/1 47.9,50.9 < 8 |c |noway
step
map Shadowmoon Burial Grounds/1
path follow loose;loop off;ants straight
path	52.6,51.0	65.3,50.9	72.7,51.7
path	77.9,55.9	78.2,62.4
_Follow_ the path |goto Shadowmoon Burial Grounds/1 78.2,62.4 < 8 |c |noway
step
map Shadowmoon Burial Grounds/1
path follow loose;loop off;ants straight
path	79.0,72.9	84.4,72.5	87.6,60.4
_Follow_ the path |goto Shadowmoon Burial Grounds/1 87.6,60.4 |c |noway
step
map Shadowmoon Burial Grounds/2
path follow loose;loop off;ants straight
path	7.0,65.5	7.3,60.9	10.6,58.9
path	15.5,58.1	21.3,61.7	22.2,66.8
path	20.2,71.5	17.3,70.9	16.9,66.9
path	18.8,62.2	25.7,59.5
_Follow_ the path |goto Shadowmoon Burial Grounds/2 25.7,59.5 |c |noway
step
_Kill Nhallish_ and _move down_ until you see the first pack of spiders
Make sure _not to kill_ any of the spiders as you kite the packs down towards the boss |tip You can use a Monk's Keg Smash here to kite efficiently and another tank for the elite mobs.
_Kite the spiders to Bonemaw_ and make sure you have a pool on the ground to avoid being sucked in
_Wait_ for all the spiders to get sucked into Bonemaw |tip Sometimes it bugs just wait until they finish and the achievement pops.
kill Bonemaw##86236 |goto Shadowmoon Burial Grounds/2 39.8,51.4
|achieve 9025
step
Congratulations, you have _earned_ the Icky Ichors Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Draenor Dungeons\\Iron Docks",{
achieveid={9038},
patch='60001',
description="\nDefeat Skulloc in the Iron Docks.",
},[[
step
_Enter_ the _Iron Docks_ dungeon |goto Iron Docks/1 30.6,44.5 |c |noway |or
|confirm |or
step
map Iron Docks/1
path follow loose;loop off;ants straight
path	33.6,40.7	37.8,35.5	42.0,34.4
path	46.4,34.2	49.2,47.6	39.6,48.6
path	37.9,55.5	49.5,67.6	64.3,76.3
path	76.4,76.6	83.5,76.2	86.4,68.9
path	86.5,24.8	79.3,19.6	71.9,28.0
path	69.4,34.2
_Follow_ the path |goto Iron Docks/1 69.4,34.2 |c |noway
step
kill Skulloc##83612
|achieve 9038
step
Congratulations, you have _earned_ the Iron Docks Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Draenor Dungeons\\Is Draenor on Fire?",{
achieveid={9008},
patch='60001',
description="\nDefeat Gug'rokk without killing any Unstable Slag in Bloodmaul Slag Mines on Heroic difficulty.",
},[[
step
_Enter_ the _Bloodmaul Slag Mines_ dungeon on Heroic |goto Bloodmaul Slag Mines/1 51.5,83.3 < 100 |c |noway |or
|confirm |or
step
map Bloodmaul Slag Mines/1
path follow loose;loop off;ants straight
path	51.5,83.3	49.0,77.0	49.9,68.7
path	52.6,62.0	52.6,62.0	53.3,56.9
path	55.0,46.4	53.1,42.1	49.1,33.6
path	49.1,33.7	49.4,24.5	58.8,23.3
_Follow_ the path |goto Bloodmaul Slag Mines/1 58.8,23.3 < 10 |noway |c
step
Have the tank _drag the boss_ towards the entrance
|tip Be careful not to evade bug him.
With decent DPS the _boss should be around 40% to 60% health_ before the first add spawns
_Slow the adds down with rooting effects_ like Ice Trap or Earthgrab Totem to slow its progress
|tip If the DPS and heals are on point the add can be free to roam about the group.
kill Gug'rokk##86224
|achieve 9008
step
Congratulations, you have _earned_ the Is Draenor on Fire? Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Draenor Dungeons\\Magnets, How Do They Work?",{
achieveid={9045},
patch='60001',
description="\nDefeat Orebender Gor'ashan without allowing him to cast Thundering Cacophony 4 times in Upper Blackrock Spire on Heroic difficulty.",
},[[
step
_Enter_ the Upper Blackrock Spire dungeon on heroic |goto Upper Blackrock Spire 2/1 37.3,29.1 < 100 |c |noway |or
|confirm |or
step
map Upper Blackrock Spire 2/1
path follow loose;loop off;ants straight
path	37.2,30.0	36.6,18.3	33.5,15.8
path	32.9,13.2	30.6,13.3	Upper Blackrock Spire 2/2 30.4,19.6
_Clear the rooms_ to break the seals
_Follow_ the path |goto Upper Blackrock Spire 2/2 30.4,19.6 < 5|c |noway
step
_Assign two conduits to each player_ covering all seven
|tip One conduit gets double coverage using the tank and all three DPS.
Have each player _stand in the corner of the platform nearest their conduits_
The _boss will activate the conduits_ at 75%, 50%, and 25% so get ready a few percent early
Make sure to _activate the conduits fast enough_ that he only gets one or no casts off each time
_This is not a DPS race!_
|tip It is wise to take time prior to the cast phase to have the heals top off all players.
kill Orebender Gor'ashan##86249 |goto Upper Blackrock Spire 2/2 30.3,27.0
|achieve 9045
step
Congratulations, you have _earned_ the Magnets, How Do They Work? Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Draenor Dungeons\\Magnify... Enhance",{
achieveid={9034},
patch='60001',
description="\nDefeat the Empowered Construct in Skyreach on Heroic difficulty.",
},[[
step
_Enter_ the _Skyreach_ dungeon on Heroic |goto Skyreach/1 60.6,25.1 < 20 |c |noway |or
|confirm |or
step
map Skyreach/1
path follow loose;loop off;ants straight
path	60.6,25.1	60.5,15.7	65.5,13.7
path	66.5,25.9	64.1,32.2	62.6,39.2
path	59.2,46.2	54.1,50.3	53.3,53.7
path	52.3,61.1	47.0,62.3	45.7,64.7
path	47.1,67.8	47.8,70.9	45.3,76.3
_Follow_ the path |goto Skyreach/1 45.3,76.3 |c |noway
step
map Skyreach/1
path follow loose;loop off;ants straight
path	41.4,77.1	39.5,72.0	39.9,64.2
path	37.0,63.6	35.5,68.1	42.4,69.3
_Follow_ the path |goto Skyreach/1 42.4,69.3 < 5 |c |noway
step
map Skyreach/2
path follow loose;loop off;ants straight
path	18.1,73.8	27.2,80.8	30.9,72.5
path	24.8,58.1	27.8,41.3	35.4,35.4
path	44.0,43.4
_Follow_ the path |goto Skyreach/2 44.0,43.4 < 5 |c |noway
step
Before pulling the last boss have one member of the party _drop down to a small ledge_ under the right side of the boss platform
|tip The right side as you are facing the boss.
That member should _stay near the Inactive Construct_ while the other four party members engage the boss
|tip Since this player will be stuck it's a good idea to have a DPS do this part.
While fighting the boss wait for the _player on the platform to be targeted by Lens Flare_
|tip Once targeted they need to be on the Construct so the Lens Flare can activate it.
Once the Construct is active _it will possibly kill the player_
|tip They can be rezzed after the boss is dead.
After the four party members above defeat Viryx _everyone needs to drop down to the same platform with the construct_ and defeat it
|tip If your party wipes after activating the construct it will still be there for another attempt.
kill High Sage Viryx##86241 |goto Skyreach/2 51.1,27.4
|achieve 9034
step
Congratulations, you have _earned_ the Magnify... Enhance Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Draenor Dungeons\\Militaristic, Expansionist",{
achieveid={9083},
patch='60001',
description="\nDefeat Fleshrender Nok'gar in Iron Docks on Heroic difficulty, while Siegemaster Olugar, Pitwarden Gwarnok, and Champion Druna remain alive and in the fight.",
},[[
step
_Enter_ the _Iron Docks_ dungeon on Heroic |goto Iron Docks/1 30.6,44.5 |c |noway |or
|confirm |or
step
map Iron Docks/1
path follow loose;loop off;ants straight
path	33.6,40.7	37.8,35.5	42.0,34.4
_Follow_ the path |goto Iron Docks/1 42.0,34.4 |c |noway
step
In order to copmlete this achievement _you must kill_ Fleshrender Nok'gar while Olugar, Gwarnok, and Druna _are alive and fighting_
In order to do this the easiest way _clear all the trash_ around the masters and _run out_
Get to Fleshrender Nok'gar and _beat him down_ to somewhere between 2-5%
Then have a player _pull all three masters_ into the fight and _down the boss_ without killing the masters
|tip High speed moving classes {ex: Rogue Sprint) work great for this.
kill Fleshrender Nok'gar##87451
|achieve 9083
step
Congratulations, you have _earned_ the Militaristic, Expansionist Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Draenor Dungeons\\Monomania",{
achieveid={9036},
patch='60001',
description="\nDefeat High Sage Viryx without killing any of the Shield Constructs in Skyreach on Heroic difficulty.",
},[[
step
_Enter_ the _Skyreach_ dungeon on Heroic |goto Skyreach/1 60.6,25.1 < 20 |c |noway |or
|confirm |or
step
map Skyreach/1
path follow loose;loop off;ants straight
path	60.6,25.1	60.5,15.7	65.5,13.7
path	66.5,25.9	64.1,32.2	62.6,39.2
path	59.2,46.2	54.1,50.3	53.3,53.7
path	52.3,61.1	47.0,62.3	45.7,64.7
path	47.1,67.8	47.8,70.9	45.3,76.3
_Follow_ the path |goto Skyreach/1 45.3,76.3 |c |noway
step
map Skyreach/1
path follow loose;loop off;ants straight
path	41.4,77.1	39.5,72.0	39.9,64.2
path	37.0,63.6	35.5,68.1	42.4,69.3
_Follow_ the path |goto Skyreach/1 42.4,69.3 < 5 |c |noway
step
map Skyreach/2
path follow loose;loop off;ants straight
path	18.1,73.8	27.2,80.8	30.9,72.5
path	24.8,58.1	27.8,41.3	35.4,35.4
path	44.0,43.4
_Follow_ the path |goto Skyreach/2 44.0,43.4 < 5 |c |noway
step
This one is actually not terrible to earn _with the right amount_ of CC
Just make sure to _interrupt the shields_ and keep the Shield Constructs CC'd
kill High Sage Viryx##86241 |goto Skyreach/2 51.1,27.4
|achieve 9036
step
Congratulations, you have _earned_ the Monomania Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Draenor Dungeons\\No Tag-backs!",{
achieveid={9552},
patch='60001',
description="\nDefeat Teron'gor in Auchindoun on Heroic difficulty while under the effects of Curtain of Flame.",
},[[
step
_Enter_ the _Auchindoun_ dungeon on Heroic |goto Auchindoun/1 49.7,90.2 |c |noway |or
|confirm |or
step
In order to complete this achievement _you must still have the debuff Curtain of Flame_ from the previous boss Azzakel so don't let it drop!
|tip The debuff will spread between closeby players when it ticks damage.
|confirm
step
map Auchindoun/1
path follow loose;loop off;ants straight
path	49.7,90.2	49.8,68.8	44.4,65.9
path	37.8,61.6	32.2,54.5	27.4,40.2
path	27.4,40.2	30.6,51.3	35.0,58.9
path	44.2,66.0	49.7,66.6	55.0,66.1
path	65.0,59.5	70.0,48.5	70.7,38.2
path	67.8,38.6	63.7,32.4
_Activate_ the Soul Transporter |goto 58.7,18.9 |c |noway
step
click Soul Transporter
_Activate_ the Soul Transporter |goto Auchindoun 57.0,21.5
_Next_ |goto Auchindoun/1 40.8,18.9 |c |noway
step
click Soul Transporter
_Activate_ the Soul Transporter |goto Auchindoun 42.4,21.4
_Next_ |goto Auchindoun/1 41.1,45.4 |c |noway
step
click Soul Transporter
_Activate_ the Soul Transporter |goto Auchindoun 42.4,43.5
_Next_ |goto Auchindoun/1 49.7,41.6 |c |noway
step
In order to complete this achievement _you must still have the debuff Curtain of Flame_ from the previous boss Azzakel
The _debuff spreads to nearby players when it ticks damage_ so you need to _bounce it between two people_ until you reach Teron'gor
This achievement is _only earned by the people who actually have the debuff_ when Teron'gor is defeated
|tip Make sure it spreads to anyone who needs it prior to the boss hitting 10 percent.
kill Teron'gor##86220 |goto Auchindoun/1 49.6,33.5
|achieve 9552
step
Congratulations, you have _earned_ the No Tag-backs! Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Draenor Dungeons\\No Ticket",{
achieveid={9007},
patch='60001',
description="\nDefeat Nitrogg Thundertower after abruptly removing 20 enemies from the Grimrail in Grimrail Depot on Heroic difficulty.",
},[[
step
Enter the _Grimrail Depot_ dungeon on Heroic |goto Grimrail Depot/1 32.4,31.9 < 20 |c |noway |or
|confirm |or
step
map Grimrail Depot/1
path follow loose;loop off;ants straight
path	30.9,51.7	43.9,56.8	path	56.6,42.8
Follow the path |goto Grimrail Depot/1 56.6,42.8 |c |noway
step
map Grimrail Depot/1
path follow loose;loop off;ants straight
path	69.5,19.6	75.4,25.0	Grimrail Depot/2 63.6,25.8
path	Grimrail Depot/2 71.8,13.7	Grimrail Depot/2 70.3,29.3
Follow the path |goto Grimrail Depot/3 85.3,51.8 |c |noway |or
Enter the Train Car |confirm |or
step
map Grimrail Depot/3
path follow loose;loop off;ants straight
path	85.3,51.8	67.6,52.1	38.6,51.8
path	9.7,51.7
Follow the path |goto Grimrail Depot/3 9.7,51.7 |c |noway
step
This achievement is done by _knocking 20 mobs off the side_ of the train during the encounter with Nitrogg Thundertower
Having a knockback in your group _is needed_
|tip Elemental Shaman's Thunderstorm, Druid specced into Typhoon, and Mage's Supernova all work well.
This counts _both elite and non-elite mobs_ during the encounter
|tip So send them all packin'!
kill Nitrogg Thundertower##86227 |goto Grimrail Depot/3 9.7,51.7 |c |noway
|achieve 9007
step
Congratulations, you have _earned_ the No Ticket Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Draenor Dungeons\\Ready for Raiding IV",{
achieveid={9033},
patch='60001',
description="\nDefeat Ranjit without taking damage from any of the following abilities in Skyreach on Heroic difficulty: Spinning Blade, Windwall, Four Winds, Lens Flare.",
},[[
step
_Enter_ the _Skyreach_ dungeon on Heroic |goto Skyreach/1 60.6,25.1 < 20 |c |noway |or
|confirm |or
step
map Skyreach/1
path follow loose;loop off;ants straight
path	60.6,25.1	60.5,15.7	65.5,13.7
path	66.5,25.9	64.1,32.2
Follow the path |goto Skyreach/1 64.1,32.2 |c |noway
step
To earn this achievement you must _avoid four mechanics_ that deal damage on this boss fight
|tip This achievement is personal so don't get frustrated if your group members faceplant on any given mechanic.
_Spinning Blade_ Don't stand in it's path or you suffer physical damage
_Windwall_ Avoid the area it's cast in and move to avoid it's path
_Four Winds_ Avoid standing in the wind trails as they cause nature damage
_Lens Flare_ Calls a beam of light down on a party member and follows them
|tip Move away and don't lead it through the group.
kill Ranjit##86238 |goto Skyreach/1 63.3,38.5
|achieve 9033
step
Congratulations, you have _earned_ the Ready for Raiding IV Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Draenor Dungeons\\Savage Hero",{
achieveid={9619},
patch='60001',
description="\nThis guide will list the bosses necessary to kill for this achievement.",
},[[
step
This achievement is gained by defeating the following dungeon and raid bosses:
|tip Use the dungeon and raid guides to accomplish this.
Gug'rokk (Bloodmaul Slag Mines) |achieve 9619/1
Skulloc, Son of Gruul (Iron Docks) |achieve 9619/2
Teron'gor (Auchindoun) |achieve 9619/3
High Sage Viryx (Skyreach) |achieve 9619/4
Yainu (The Everbloom) |achieve 9619/5
Skylord Tovra (Grimrail Depot) |achieve 9619/6
Ner'zhul (Shadowmoon Burial Grounds) |achieve 9619/7
Warlord Zaela (Upper Blackrock Spire) |achieve 9619/8
Imperator Mar'gok (Highmaul) |achieve 9619/9
Warlord Blackhand (Blackrock Foundry) |achieve 9619/10
step
Congratulations, you have earned the Savage Hero achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Draenor Dungeons\\Shadowmoon Burial Grounds",{
achieveid={9041},
patch='60001',
description="\nDefeat Ner'zhul in Shadowmoon Burial Grounds.",
},[[
step
_Enter_ the Shadowmoon Burial Grounds dungeon |goto Shadowmoon Burial Grounds/1 12.0,68.4 < 20 |c |noway |or
|confirm |or
step
map Shadowmoon Burial Grounds/1
path follow loose;loop off;ants straight
path	12.0,68.4	13.8,65.6	16.2,55.5
path	23.4,50.8	37.6,50.9	38.4,37.6
path	45.6,28.9	52.6,24.1	52.6,21.7
_Drop down_ at the end of the path |goto Shadowmoon Burial Grounds/1 46.9,51.0 |c |noway
step
map Shadowmoon Burial Grounds/1
path follow loose;loop off;ants straight
path	52.6,21.7	52.6,34.8	42.3,36.1
path	42.5,50.8	47.9,50.9
_Follow_ the path |goto Shadowmoon Burial Grounds/1 47.9,50.9 < 8 |c |noway
step
map Shadowmoon Burial Grounds/1
path follow loose;loop off;ants straight
path	52.6,51.0	65.3,50.9	72.7,51.7
path	77.9,55.9	78.2,62.4
_Follow_ the path |goto Shadowmoon Burial Grounds/1 78.2,62.4 < 8 |c |noway
step
map Shadowmoon Burial Grounds/1
path follow loose;loop off;ants straight
path	79.0,72.9	84.4,72.5	87.6,60.4
_Follow_ the path |goto Shadowmoon Burial Grounds/1 87.6,60.4 |c |noway
step
map Shadowmoon Burial Grounds/2
path follow loose;loop off;ants straight
path	7.0,65.5	7.3,60.9	10.6,58.9
path	15.5,58.1	21.3,61.7	22.2,66.8
path	20.2,71.5	17.3,70.9	16.9,66.9
path	18.8,62.2	25.7,59.5
_Follow_ the path |goto Shadowmoon Burial Grounds/2 25.7,59.5 |c |noway
step
map Shadowmoon Burial Grounds/2
path follow loose;loop off;ants straight
path	39.1,50.9	49.4,57.6	56.9,62.3
path	64.8,67.1
_Follow_ the path |goto Shadowmoon Burial Grounds/3 38.5,36.9 < 20 |c |noway
step
kill Ner'zhul##76268 |goto Shadowmoon Burial Grounds/3 48.1,47.1
|achieve 9041
step
Congratulations, you have _earned_ the Shadowmoon Burial Grounds Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Draenor Dungeons\\Skyreach",{
achieveid={8843},
patch='60001',
description="\nDefeat High Sage Viryx in Skyreach.",
},[[
step
_Enter_ the _Skyreach_ dungeon |goto Skyreach/1 60.6,25.1 < 20 |c |noway |or
|confirm |or
step
map Skyreach/1
path follow loose;loop off;ants straight
path	60.6,25.1	60.5,15.7	65.5,13.7
path	66.5,25.9	64.1,32.2	62.6,39.2
path	59.2,46.2	54.1,50.3	53.3,53.7
path	52.3,61.1	47.0,62.3	45.7,64.7
path	47.1,67.8	47.8,70.9	45.3,76.3
_Follow_ the path |goto Skyreach/1 45.3,76.3 |c |noway
step
map Skyreach/1
path follow loose;loop off;ants straight
path	41.4,77.1	39.5,72.0	39.9,64.2
path	37.0,63.6	35.5,68.1	42.4,69.3
_Follow_ the path |goto Skyreach/1 42.4,69.3 < 5 |c |noway
step
map Skyreach/2
path follow loose;loop off;ants straight
path	18.1,73.8	27.2,80.8	30.9,72.5
path	24.8,58.1	27.8,41.3	35.4,35.4
path	44.0,43.4
_Follow_ the path |goto Skyreach/2 44.0,43.4 < 5 |c |noway
step
kill High Sage Viryx##86241 |goto Skyreach/2 51.1,27.4
|achieve 8843
step
Congratulations, you have _earned_ the Skyreach Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Draenor Dungeons\\Souls of the Lost",{
achieveid={9026},
patch='60001',
description="\nDefeat Ner'zhul after slaying 2 Ritual of Bones skeletons within 5 seconds of each other in Shadowmoon Burial Grounds on Heroic difficulty.",
},[[
step
_Enter_ the Shadowmoon Burial Grounds dungeon on heroic |goto Shadowmoon Burial Grounds/1 12.0,68.4 < 20 |c |noway |or
|confirm |or
step
map Shadowmoon Burial Grounds/1
path follow loose;loop off;ants straight
path	12.0,68.4	13.8,65.6	16.2,55.5
path	23.4,50.8	37.6,50.9	38.4,37.6
path	45.6,28.9	52.6,24.1	52.6,21.7
_Drop down_ at the end of the path |goto Shadowmoon Burial Grounds/1 46.9,51.0 |c |noway
step
map Shadowmoon Burial Grounds/1
path follow loose;loop off;ants straight
path	52.6,21.7	52.6,34.8	42.3,36.1
path	42.5,50.8	47.9,50.9
_Follow_ the path |goto Shadowmoon Burial Grounds/1 47.9,50.9 < 8 |c |noway
step
map Shadowmoon Burial Grounds/1
path follow loose;loop off;ants straight
path	52.6,51.0	65.3,50.9	72.7,51.7
path	77.9,55.9	78.2,62.4
_Follow_ the path |goto Shadowmoon Burial Grounds/1 78.2,62.4 < 8 |c |noway
step
map Shadowmoon Burial Grounds/1
path follow loose;loop off;ants straight
path	79.0,72.9	84.4,72.5	87.6,60.4
_Follow_ the path |goto Shadowmoon Burial Grounds/1 87.6,60.4 |c |noway
step
map Shadowmoon Burial Grounds/2
path follow loose;loop off;ants straight
path	7.0,65.5	7.3,60.9	10.6,58.9
path	15.5,58.1	21.3,61.7	22.2,66.8
path	20.2,71.5	17.3,70.9	16.9,66.9
path	18.8,62.2	25.7,59.5
_Follow_ the path |goto Shadowmoon Burial Grounds/2 25.7,59.5 |c |noway
step
map Shadowmoon Burial Grounds/2
path follow loose;loop off;ants straight
path	39.1,50.9	49.4,57.6	56.9,62.3
path	64.8,67.1
_Follow_ the path |goto Shadowmoon Burial Grounds/3 38.5,36.9 < 20 |c |noway
step
When the Ritual of Bones cast spawns adds you must _kill two of them within 5 seconds_ of each other
|tip Picking mobs closest to the center is best.
This _must be done every phase_ that Ritual of Bones is cast or you will not get the achievement
kill Ner'zhul##76268 |goto Shadowmoon Burial Grounds/3 48.1,47.1
|achieve 9026
step
Congratulations, you have _earned_ the Souls of the Lost Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Draenor Dungeons\\Take Cover!",{
achieveid={9082},
patch='60001',
description="\nDefeat Skulloc in Iron Docks on Heroic difficulty without any players getting hit by Cannon Barrage or Backdraft.",
},[[
step
_Enter_ the _Iron Docks_ dungeon on Heroic |goto Iron Docks/1 30.6,44.5 |c |noway |or
|confirm |or
step
map Iron Docks/1
path follow loose;loop off;ants straight
path	33.6,40.7	37.8,35.5	42.0,34.4
path	46.4,34.2	49.2,47.6	39.6,48.6
path	37.9,55.5	49.5,67.6	64.3,76.3
path	76.4,76.6	83.5,76.2	86.4,68.9
path	86.5,24.8	79.3,19.6	71.9,28.0
path	69.4,34.2
_Follow_ the path |goto Iron Docks/1 69.4,34.2 |c |noway
step
This achievement is fairly straightforward and _requires a bit of mobility_ and good timing
Make sure to _take cover_ behind crates during Cannon Barrage _moving foreward_ between shots
|tip Warlock gates will be very helpful here.
_Avoid the rear_ of the ship during Cannon Barrage or Backdraft will kill you
_No one can get hit_ by either ability or the achievement will fail
kill Skulloc##83612
|achieve 9082
step
Congratulations, you have _earned_ the Take Cover! Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Draenor Dungeons\\The Everbloom",{
achieveid={9044},
patch='60001',
description="\nDefeat Yalnu in The Everbloom.",
},[[
step
_Enter The Everbloom_ dungeon |goto The Everbloom/1 72.4,55.7 < 20 |c |noway |or
|confirm |or
step
map The Everbloom/1
path follow loose;loop off;ants straight
path	72.4,55.7	69.4,50.4	67.4,48.0
path	63.4,56.9	59.0,59.9	56.0,59.7
path	53.3,56.3	54.2,49.4	58.2,46.1
path	63.5,48.5	67.7,47.4	69.5,42.1
path	71.0,29.6	70.6,24.4	67.8,21.6
path	64.5,25.3	62.0,28.2	59.8,25.5
path	57.8,20.6	58.8,13.4	62.1,5.9
path	61.4,7.3	58.8,12.8	57.4,20.4
path	57.2,29.6	55.2,33.1	44.2,35.1
_Follow_ the path |goto The Everbloom/2 44.2,35.1 |c |noway
confirm
step
kill Yalnu##86248
|achieve 9044
step
Congratulations, you have _earned_ the Everbloom Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Draenor Dungeons\\They Burn, Burn, Burn",{
achieveid={9493},
patch='60001',
description="\nSuccessfully jump over 5 of Archmage Sol's Firebloom explosion rings within 5 seconds in The Everbloom on Heroic difficulty.",
},[[
step
_Enter The Everbloom_ dungeon on Heroic |goto The Everbloom/1 72.4,55.7 < 20 |c |noway |or
|confirm |or
step
map The Everbloom/1
path follow loose;loop off;ants straight
path	72.4,55.7	69.4,50.4	67.4,48.0
path	63.4,56.9	59.0,59.9	56.0,59.7
path	53.3,56.3	54.2,49.4	58.2,46.1
path	63.5,48.5	67.7,47.4	69.5,42.1
path	71.0,29.6	70.6,24.4	67.8,21.6
path	64.5,25.3	62.0,28.2	59.8,25.5
path	57.8,20.6	58.8,13.4	62.1,5.9
path	61.4,7.3	58.8,12.8	57.4,20.4
path	57.2,29.6
_Follow_ the path |goto The Everbloom/1 57.2,29.6 |c |noway
confirm
step
Fairly easy personal achievement here _if you time it right_
|tip Make sure the boss doesn't go under 35% or it'll change phases and make the achievement unobtainable.
Sol will cast the fire flowers on everyone except for the tank so a little communication is needed to make sure _everyone lines up in a good order_
Once that's done just simply _jump over them_
|tip Remember you need 5 of them.
kill Archmage Sol##86246
|achieve 9493
step
Congratulations, you have _earned_ the They Burn, Burn, Burn Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Draenor Dungeons\\This is Why We Can't Have Nice Things",{
achieveid={9024},
patch='60001',
description="\nDefeat Railmaster Rocketspark and Borka the Brute after destroying all of the Priceless Paraphernalia in Grimrail Depot on Heroic difficulty.",
},[[
step
Enter the _Grimrail Depot_ dungeon on Heroic |goto Grimrail Depot/1 32.4,31.9 < 20 |c |noway |or
|confirm |or
step
map Grimrail Depot/1
path follow loose;loop off;ants straight
path	30.9,51.7	43.9,56.8	path	56.6,42.8
Follow the path |goto Grimrail Depot/1 56.6,42.8 |c |noway
step
There are _four Priceless Paraphernalia_ boxes throughout the boss's room
To achieve this _you must have Borka Mad Dash_ in the direction towards the objects
|tip They break one at a time and all four are required.
kill Railmaster Rocketspark##77803 |goto Grimrail Depot/1 56.6,42.8
kill Borka the Brute##77816
|achieve 9024
step
Congratulations, you have _earned_ the This is Why We Can't Have Nice Things Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Draenor Dungeons\\Upper Blackrock Spire",{
achieveid={9042},
patch='60001',
description="\nDefeat Warlord Zaela in Upper Blackrock Spire.",
},[[
step
_Enter_ the Upper Blackrock Spire dungeon |goto Upper Blackrock Spire 2/1 37.3,29.1 < 100 |c |noway |or
|confirm |or
step
map Upper Blackrock Spire 2/1
path follow loose;loop off;ants straight
path	37.2,30.0	36.6,18.3	33.5,15.8
path	32.9,13.2	30.6,13.3	Upper Blackrock Spire 2/2 30.4,19.6
_Clear the rooms_ to break the seals
_Follow_ the path |goto Upper Blackrock Spire 2/2 30.4,19.6 < 5|c |noway
step
map Upper Blackrock Spire 2/2
path follow loose;loop off;ants straight
path	30.3,27.0	30.6,36.4	32.0,37.8
_Follow_ the path |goto Upper Blackrock Spire 2/2 32.0,37.8
step
map Upper Blackrock Spire 2/2
path follow loose;loop off;ants straight
path	36.2,37.6	30.3,39.5
_Follow_ the path |goto Upper Blackrock Spire 2/2 30.3,39.5 |c |noway
step
map Upper Blackrock Spire 2/3
path follow loose;loop off;ants straight
path	28.6,41.1	28.4,34.1	36.4,34.0
path	36.4,27.8	42.2,28.3	45.8,28.0
_Follow_ the path |goto Upper Blackrock Spire 2/3 45.8,28.0 < 8 |c |noway |or
_Enter_ the next floor |confirm |or
step
map Upper Blackrock Spire 2/3
path follow loose;loop off;ants straight
path	48.5,27.3	48.7,35.8	54.7,35.8
path	54.7,45.7
_Follow_ the path |goto Upper Blackrock Spire 2/3 54.7,45.7 < 20 |c |noway
step
map Upper Blackrock Spire 2/3
path follow loose;loop off;ants straight
path	61.8,45.6	58.1,47.0	50.6,45.7
_Follow_ the path |goto Upper Blackrock Spire 2/3 50.6,45.7 |c |noway
step
map Upper Blackrock Spire 2/3
path follow loose;loop off;ants straight
path	46.7,45.6	39.8,45.9	36.3,51.4
path	28.9,51.5	21.4,49.6	18.8,47.6
path	16.7,47.4
_Follow_ the path |goto Upper Blackrock Spire 2/3 16.7,47.4 < 8 |c |noway
step
kill Warlord Zaela##77120 |goto Upper Blackrock Spire 2/3 14.4,47.7
|achieve 9042
step
Congratulations, you have _earned_ the Upper Blackrock Spire Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Draenor Dungeons\\Water Management",{
achieveid={9017},
patch='60001',
description="\nDefeat Witherbark without allowing him to replenish any of his Aqueous Energy in The Everbloom on Heroic difficulty.",
},[[
step
_Enter The Everbloom_ dungeon on Heroic |goto The Everbloom/1 72.4,55.7 < 20 |c |noway |or
|confirm |or
step
map The Everbloom/1
path follow loose;loop off;ants straight
path	72.4,55.7	69.4,50.4	67.4,48.0
path	63.4,56.9	59.0,59.9	56.0,59.7
_Follow_ the path |goto The Everbloom/1 56.0,59.7 |c |noway
|confirm
step
There are a _couple of different_ strategies for this achievement
The first strategy is pretty direct. If you have a player with a _spammable knockback_ they can be placed on duty to _knock the orbs of water away_ from the boss as DPS kill them
The second strategy is to _pull the boss away from the water_ as far as possible
_Place Unchecked Growth_ between the boss and the water
_Focus fire the boss_ and DPS any globes of water that break though
kill Witherbark##86242 |goto The Everbloom/1 52.5,56.9
|achieve 9017
step
Congratulations, you have _earned_ the Water Management Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Draenor Dungeons\\Weed Whacker",{
achieveid={9223},
patch='60001',
description="\nDefeat Yalnu without any Kirin Tor Battle-Mages dying in The Everbloom on Heroic difficulty.",
},[[
step
_Enter The Everbloom_ dungeon on Heroic |goto The Everbloom/1 72.4,55.7 < 20 |c |noway |or
|confirm |or
step
map The Everbloom/1
path follow loose;loop off;ants straight
path	72.4,55.7	69.4,50.4	67.4,48.0
path	63.4,56.9	59.0,59.9	56.0,59.7
path	53.3,56.3	54.2,49.4	58.2,46.1
path	63.5,48.5	67.7,47.4	69.5,42.1
path	71.0,29.6	70.6,24.4	67.8,21.6
path	64.5,25.3	62.0,28.2	59.8,25.5
path	57.8,20.6	58.8,13.4	62.1,5.9
path	61.4,7.3	58.8,12.8	57.4,20.4
path	57.2,29.6	55.2,33.1	44.2,35.1
_Follow_ the path |goto The Everbloom/2 44.2,35.1 |c |noway
confirm
step
To maximize your efforts _always ensure that the tank is grabbing up_ the spawned mobs during the fight
Also _be sure to trample any blossoms_ that spawn to cut down on the adds
kill Yalnu##86248 |goto The Everbloom/2 45.0,72.0
|achieve 9223
step
Congratulations, you have _earned_ the Weed Whacker Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Draenor Dungeons\\What's Your Sign?",{
achieveid={9018},
patch='60001',
description="\nDefeat Sadana Bloodfury while only having the runes that correspond to her active lunar cycle lit in Shadowmoon Burial Grounds on Heroic difficulty.",
},[[
step
Enter the _Shadowmoon Burial Grounds_ dungeon on heroic |goto Shadowmoon Burial Grounds/1 12.0,68.4 < 20 |c |noway |or
|confirm |or
step
map Shadowmoon Burial Grounds/1
path follow loose;loop off;ants straight
path	12.0,68.4	13.8,65.6	16.2,55.5
path	23.4,50.8	37.6,50.9	38.4,37.6
path	45.6,28.9	52.6,24.1	52.6,21.7
Drop down at the end of the path |goto Shadowmoon Burial Grounds/1 46.9,51.0 |c |noway
step
map Shadowmoon Burial Grounds/1
path follow loose;loop off;ants straight
path	52.6,21.7	52.6,34.8	42.3,36.1
path	42.5,50.8	47.9,50.9
Follow the path |goto Shadowmoon Burial Grounds/1 47.9,50.9 < 8 |c |noway
step
_Fight_ as usual for the first Dark Eclipse
|tip Bring her to low health and wait for the second Dark Eclipse.
After the second Dark Eclipse goes off grab the buff by _standing on the inner ring's white moon runes_ on the ground
|tip All of them will be the same type and spaced evenly apart.
Then the eight white outer runes _turn back to purple_
|tip Run over the remaining 16 that didn't light up without touching the runes that were white.
kill Sadana Bloodfury##86234 |goto Shadowmoon Burial Grounds/1 52.2,51.0
|achieve 9018
step
Congratulations, you have _earned_ the What's Your Sign? Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Draenor Dungeons\\...They All Fall Down",{
achieveid={9023},
patch='60001',
description="\nDefeat Soulbinder Nyami after defeating 12 fallen Auchenai protectors within 3 seconds in Auchindoun on Heroic difficulty.",
},[[
step
_Enter_ the _Auchindoun_ dungeon on Heroic |goto Auchindoun/1 49.7,90.2 |c |noway |or
|confirm |or
step
map Auchindoun/1
path follow loose;loop off;ants straight
path	49.7,90.2	49.8,68.8	44.4,65.9
path	37.8,61.6	32.2,54.5	27.4,40.2
path	27.4,40.2	30.6,51.3	35.0,58.9
path	44.2,66.0
_Follow_ the path |goto Auchindoun/1 44.2,66.0 < 20 |c |noway
step
Make sure to _finish off_ the Arbiter's and Magus's adds |tip They have different health pools.
_Wait_ for Nyami to spawn adds and kill everything except the Defenders
_Continue_ doing this until you have 12 Defenders collected |tip You can get a couple more to be safe.
Once there is enough Defenders for the achievement _everyone should burst AOE_
kill Soulbinder Nyami##86218 |goto Auchindoun/1 49.7,66.6
|achieve 9023
step
Congratulations, you have _earned_ the ...They All Fall Down Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Draenor\\Draenor Explorer",{
condition_end=function() return achieved(8935) end,
achieveid={8935},
patch='60001',
description="\nEarn the following Draenor exploration achievements:\n\nExplore Frostfire Ridge\nExplore Gorgrond\n"..
"Explore Spires of Arak\nExplore Shadowmoon Valley\nExplore Talador\nExplore Nagrand",
},[[
leechsteps "Achievement Guides\\Exploration\\Draenor\\Explore Shadowmoon Valley" 1-11
leechsteps "Achievement Guides\\Exploration\\Draenor\\Explore Talador" 1-15
leechsteps "Achievement Guides\\Exploration\\Draenor\\Explore Gorgrond" 1-14
leechsteps "Achievement Guides\\Exploration\\Draenor\\Explore Frostfire Ridge" 1-15
leechsteps "Achievement Guides\\Exploration\\Draenor\\Explore Spires of Arak" 1-17
leechsteps "Achievement Guides\\Exploration\\Draenor\\Explore Nagrand" 1-15
step
_Congratulations!_
You Earned the "Draenor Explorer" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Draenor\\Explore Shadowmoon Valley",{
condition_end=function() return achieved(8938) end,
achieveid={8938},
patch='60001',
description="\nExplore Shadowmoon Valley, revealing the following covered areas of the world map:\n\n Anguish Fortress\n"..
"Elodor\nGloomshade Grove\nKarabor\nThe Shimmer Moor\nIsle of Shadows\nDarktide Roost\nEmbaari Village\n"..
"Gul'var\nShaz'gul\nSocrethar's Rise",
},[[
step
Explore Socrethar's Rise |achieve 8938/10 |goto Shadowmoon Valley D 42.9,69.9
step
Explore Shaz'gul |achieve 8938/8 |goto 40.0,66.0
step
Explore Isle of Shadows |achieve 8938/11 |goto 40.1,79.2
step
Explore Darktide Roost |achieve 8938/2 |goto 61.1,78.1
step
Explore The Shimmer Moor |achieve 8938/9 |goto 58.7,58.3
step
Explore Karabor |achieve 8938/7 |goto 61.2,45.3
step
Explore Elodor |achieve 8938/3 |goto 52.3,26.7
step
Explore Gloomshade Grove |achieve 8938/5 |goto 40.3,26.5
step
Explore Embaari Village |achieve 8938/4 |goto 38.6,33.4
step
Explore Anguish Fortress |achieve 8938/1 |goto 32.2,23.6
step
Explore Gul'var |achieve 8938/6 |goto 20.5,13.6
step
|achieve 8938
step
_Congratulations!_
You Earned the "Explore Shadowmoon Valley" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Draenor\\Explore Talador",{
condition_end=function() return achieved(8940) end,
achieveid={8940},
patch='60001',
description="\nExplore Talador, revealing the following covered areas of the world map:\n\n Duskfall Island\n"..
"Aruuna\nFort Wrynn\nGul'rok\nOrunai Coast\nShattrath City\nTomb of Lights\nAnchorite's Sojourn\n"..
"Zangarra\nAuchindoun\nCourt of Souls\nGordal Fortress\nThe Path of Glory\nTelmor\nTuurem",
},[[
step
Explore Anchorite's Sojourn |achieve 8940/10 |goto Talador 76.7,56.6
step
Explore Duskfall Island |achieve 8940/3 |goto 71.6,57.7
step
Explore Tomb of Lights |achieve 8940/13 |goto 58.9,64.8
step
Explore Auchindoun |achieve 8940/2 |goto 54.6,69.6
step
Explore Gordal Fortress |achieve 8940/6 |goto 67.7,68.8
step
Explore Telmor |achieve 8940/12 |goto 50.6,86.7
step
Explore Gul'rok |achieve 8940/7 |goto 38.5,79.3
step
Explore Court of Souls |achieve 8940/4 |goto 40.0,60.1
step
Explore Shattrath City |achieve 8940/11 |goto 41.4,43.0
step
Explore Orunai Coast |achieve 8940/9 |goto 51.8,26.8
step
Explore Tuurem |achieve 8940/14 |goto 59.6,32.6
step
Explore Aruuna |achieve 8940/1 |goto 75.4,40.6
step
Explore Zangarra |achieve 8940/15 |goto 78.6,27.9
step
Explore Fort Wrynn |achieve 8940/5 |goto 68.0,20.3
step
Explore The Path of Glory |achieve 8940/8 |goto 66,10
step
|achieve 8940
step
_Congratulations!_
You Earned the "Explore Talador" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Draenor\\Explore Gorgrond",{
condition_end=function() return achieved(8939) end,
achieveid={8939},
patch='60001',
description="\nExplore Gorgrond, revealing the following covered areas of the world map:\n\n Evermorn Springs\n"..
"Bastion Rise\nGrimrail Depot\nDeadgrin\nHighpass\nStonemaul Arena\nThe Iron Approach\nThe Pit\n"..
"Beastwatch\nCrimson Fen\nEverbloom Wilds\nGronn Canyon\nIyun Weald\nTangleheart",
},[[
step
Explore Bastion Rise |achieve 8939/1 |goto Gorgrond 48.6,79.3
step
Explore Tangleheart |achieve 8939/12 |goto 50.3,70.7
step
Explore Crimson Fen |achieve 8939/4 |goto 53.9,65.0
step
Explore Highpass |achieve 8939/9 |goto 52.9,60.7
step
Explore Iyun Weald |achieve 8939/10 |goto 61.0,51.7
step
Explore Everbloom Wilds |achieve 8939/6 |goto 54.4,44.5
step
Explore Grimrail Depot |achieve 8939/3 |goto 54.4,33.3
step
Explore The Pit |achieve 8939/14 |goto 47.6,38.7
step
Explore The Iron Approach |achieve 8939/13 |goto 43.3,20.9
step
Explore Gronn Canyon |achieve 8939/8 |goto 46.4,45.2
step
Explore Stonemaul Arena |achieve 8939/11 |goto 42.5,64.5
step
Explore Beastwatch |achieve 8939/2 |goto 45.4,71.1
step
Explore Evermorn Springs |achieve 8939/7 |goto 42.2,77.5
step
Explore Deadgrin |achieve 8939/5 |goto 41.4,74.1
step
|achieve 8939
step
_Congratulations!_
You Earned the "Explore Gorgrond" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Draenor\\Explore Frostfire Ridge",{
condition_end=function() return achieved(8937) end,
achieveid={8937},
patch='60001',
description="\nExplore Frostfire Ridge, revealing the following covered areas of the world map:\n\n Bladespire Citadel\n"..
"Bones of Agurak\nDaggermaw Ravine\nGrimfrost Hill\nIron Siegeworks\nMagnarok\nThe Boneslag\nWor'gol\n"..
"Bloodmaul Stronghold\nColossal's Fall\nFrostwind Crag\nGrom'gar\nIron Waystation\nStonefang Outpost\n"..
"The Cracking Plains",
},[[
step
Explore Bones of Agurak |achieve 8937/3 |goto Frostfire Ridge 86.2,71.2
step
Explore Iron Siegeworks |achieve 8937/9 |goto 83.7,59.4
step
Explore Iron Waystation |achieve 8937/10 |goto 74.7,62.7
step
Explore Grom'gar |achieve 8937/8 |goto 65.7,58.0
step
Explore Grimfrost Hill |achieve 8937/7 |goto 68.3,50.3
step
Explore The Cracking Plains |achieve 8937/14 |goto 54.6,44.1
step
Explore Magnarok |achieve 8937/11 |goto 68.1,32.0
step
Explore Colossal's Fall |achieve 8937/4 |goto 62.4,29.8
step
Explore Stonefang Outpost |achieve 8937/12 |goto 46.9,52.3
step
Explore The Boneslag |achieve 8937/13 |goto 46.5,47.4
step
Explore Wor'gol |achieve 8937/15 |goto 23.8,54.9
step
Explore Bladespire Citadel |achieve 8937/1 |goto 27.4,32.1
step
Explore Frostwind Crag |achieve 8937/6 |goto 36.1,19.3
step
Explore Bloodmaul Stronghold |achieve 8937/2 |goto 36.9,13.0
step
Explore Daggermaw Ravine |achieve 8937/5 |goto 44.8,31.2
step
|achieve 8937
step
_Congratulations!_
You Earned the "Explore Frostfire Ridge" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Draenor\\Explore Spires of Arak",{
condition_end=function() return achieved(8941) end,
achieveid={8941},
patch='60001',
description="\nExplore Spires of Arak, revealing the following covered areas of the world map:\n\n The Writhing Mire\n"..
"Skettis\nVeil Zekk\nSouthport\nTerrace of Dawn\nBladefist Hold\nLost Veil Anzu\nRavenskar\nAxefall\n"..
"The Howling Crag\nPinchwhistle Point\nVeil Akraz\nWindswept Terrace\nSethekk Hollow\nAdmiral Taylor's\n"..
" Garrison\nPinchwhistle Gearworks\nBloodmane Valley",
},[[
step
Explore Skettis |achieve 8941/1 |goto Spires of Arak 45.3,18.9
step
Explore The Howling Crag |achieve 8941/2 |goto 61.1,25.4
step
Explore Lost Veil Anzu |achieve 8941/13 |goto 73.4,37.9
step
Explore Sethekk Hollow |achieve 8941/10 |goto 61.9,37.3
step
Explore Terrace of Dawn |achieve 8941/9 |goto 53.8,46.7
step
Explore Windswept Terrace |achieve 8941/8 |goto 47.48,52.29
step
Explore Ravenskar |achieve 8941/15 |goto 55,55
step
Explore Veil Zekk |achieve 8941/5 |goto 61.2,55.2
step
Explore Pinchwhistle Gearworks |achieve 8941/14 |goto 61.3,70.0
step
Explore Pinchwhistle Point |achieve 8941/4 |goto 57.8,85.6
step
Explore Bloodmane Valley |achieve 8941/16 |goto 51.0,67.2
step
Explore Southport |achieve 8941/7 |goto 41.7,59.9
step
Explore Admiral Taylor's Garrison |achieve 8941/12 |goto 39.8,49.4
step
Explore Axefall |achieve 8941/17 |goto 41.2,46.8
step
Explore The Writhing Mire |achieve 8941/3 |goto 36.8,44.0
step
Explore Bladefist Hold |achieve 8941/11 |goto 31.3,28.9
step
Explore Veil Akraz |achieve 8941/6 |goto 41.5,23.7
step
|achieve 8941
step
_Congratulations!_
You Earned the "Explore Spires of Arak" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Draenor\\Explore Nagrand",{
condition_end=function() return achieved(8942) end,
achieveid={8942},
patch='60001',
description="\nExplore Nagrand, revealing the following covered areas of the world map:\n\n Ancestral Grounds\n"..
"Gates of Grommashar\nHighmaul Harbor\nLok-rath\nMok'gol Watchpost\nTelaar\nThe Ring of Trials\n"..
"Zangar Shore\nBroken Precipice\nHallvalor\nIronfist Harbor\nMar'gok's Overwatch\nOshu'gun\n"..
"The Ring of Blood\nThrone of the Elements",
},[[
step
Explore The Ring of Trials |achieve 8942/13 |goto Nagrand D 79.7,49.8
step
Explore Telaar |achieve 8942/11 |goto 69.0,64.2
step
Explore Gates of Grommashar |achieve 8942/3 |goto 75.0,68.1
step
Explore Mar'gok's Overwatch |achieve 8942/8 |goto 80.5,67.1
step
Explore Hallvalor |achieve 8942/4 |goto 84.4,56.4
step
Explore Zangar Shore |achieve 8942/15 |goto 86.3,27.6
step
Explore Throne of the Elements |achieve 8942/14 |goto 73.2,20.8
step
Explore The Ring of Blood |achieve 8942/12 |goto 57.0,19.0
step
Explore Broken Precipice |achieve 8942/2 |goto 50.4,19.3
step
Explore Highmaul Harbor |achieve 8942/5 |goto 37.4,32.4
step
Explore Mok'gol Watchpost |achieve 8942/9 |goto 42.7,33.2
step
Explore Lok-rath |achieve 8942/7 |goto 53.4,43.3
step
Explore Ancestral Grounds |achieve 8942/1 |goto 41.2,56.4
step
Explore Oshu'gun |achieve 8942/10 |goto 47.2,61.0
step
Explore Ironfist Harbor |achieve 8942/6 |goto 43.9,76.3
step
|achieve 8942
step
_Congratulations!_
You Earned the "Explore Nagrand" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Draenor\\Draenor Explorer",{
condition_end=function() return achieved(8935) end,
achieveid={8935},
patch='60001',
description="\nEarn the following Draenor exploration achievements:\n\nExplore Frostfire Ridge\nExplore Gorgrond\n"..
"Explore Spires of Arak\nExplore Shadowmoon Valley\nExplore Talador\nExplore Nagrand",
},[[
leechsteps "Achievement Guides\\Exploration\\Draenor\\Explore Shadowmoon Valley" 1-11
leechsteps "Achievement Guides\\Exploration\\Draenor\\Explore Talador" 1-15
leechsteps "Achievement Guides\\Exploration\\Draenor\\Explore Gorgrond" 1-14
leechsteps "Achievement Guides\\Exploration\\Draenor\\Explore Frostfire Ridge" 1-15
leechsteps "Achievement Guides\\Exploration\\Draenor\\Explore Spires of Arak" 1-17
leechsteps "Achievement Guides\\Exploration\\Draenor\\Explore Nagrand" 1-15
step
_Congratulations!_
You Earned the "Draenor Explorer" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Field Photographer",{
achieveid={9924},
patch='60100',
description="\nTake a picture with the S.E.L.F.I.E. camera in various locations.",
},[[
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. in Moonglade |achieve 9924/29 |goto Moonglade/0 32.2,66.4
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. in Nordrassil |achieve 9924/17 |goto Mount Hyjal/0 62.2,21.6
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. in Orgrimmar |achieve 9924/43 |goto Orgrimmar/1 49.6,59.0
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. in the Echo Isles |achieve 9924/35 |goto Echo Isles/0 38.6,46.5
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. in Onyxia's Lair |achieve 9924/1 |goto Dustwallow Marsh/0 52.88,77.34
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. in The Shaper's Terrace |achieve 9924/21 |goto Un'Goro Crater/0 48.2,8.2
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. in the Caverns of Time |achieve 9924/31 |goto Tanaris/0 64.1,50.2
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. in the Halls of Origination |achieve 9924/42 |goto Uldum/0 72.05,52.17
step
talk Zidormi##128607
|tip She is at the top of the ramp leading from Un'Goro Crater to Silithus.
Ask her _"Can you show me what Silithus was like before the Wound in the World?"_
Travel to the Past |complete ZGV.InPhase('Old Silithus') |goto Silithus/0 78.93,21.97
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. at the Scarab Dais |achieve 9924/33 |goto 33.3,81.2
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. at The Twin Colossals |achieve 9924/27 |goto Feralas/0 46.4,16.8
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. at Light's Hope Chapel |achieve 9924/18 |goto Eastern Plaguelands/0 75.3,52.8
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. at Hearthglen |achieve 9924/9 |goto Western Plaguelands/0 44.7,16.9
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. at Uther's Tomb |achieve 9924/36 |goto Western Plaguelands/0 52.1,83.2
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. at Ravenholdt Manor |achieve 9924/34 |goto Hillsbrad Foothills/0 71.0,45.0
step
talk Zidormi##141649
Ask her _"Can you show me what Arathi Highlands was like before the war broke out?"_
Travel to the Past |complete ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. at Thandol Span |achieve 9924/10 |goto Wetlands/0 50.9,8.8
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. at the Valley of Kings |achieve 9924/24 |goto Loch Modan/0 21.1,76.2
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. at Blackrock Mountain |achieve 9924/32 |goto Searing Gorge/0 34.8,84.3
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. at the Deeprun Tram |achieve 9924/8 |goto Deeprun Tram/1 42.5,13.3
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. at the Westfall Lighthouse |achieve 9924/25 |goto Westfall/0 29.9,85.8
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. in The Deadmines |achieve 9924/13 |goto The Deadmines/1 26.5,13.4
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. in Darkshire |achieve 9924/20 |goto Duskwood/0 74.7,46.9
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. in Karazhan |achieve 9924/11 |goto Karazhan/1 58.8,76.1
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. at The Dark Portal |achieve 9924/3 |goto Blasted Lands/0 54.6,50.6
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. in the Battle Ring, Gurubashi Arena |achieve 9924/12 |goto The Cape of Stranglethorn/0 46.5,26.2
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. at Janeiro's Point |achieve 9924/5 |goto The Cape of Stranglethorn/0 35.7,63.8
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. at the Throne of Kil'jaeden |achieve 9924/38 |goto Hellfire Peninsula/0 63.3,16.6
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. at the Stormspire |achieve 9924/30 |goto Netherstorm/0 45.1,36.0
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. at the Throne of the Elements |achieve 9924/26 |goto Nagrand/0 60.7,22.4
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. in Shattrath City |achieve 9924/16 |goto Shattrath City/0 60.1,40.1
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. in Dalaran |achieve 9924/4 |goto Dalaran/1 49.0,48.6
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
|tip You must fight through the Icecrown Citadel raid in order to access the Lich King's Frozen Throne.
Take a S.E.L.F.I.E. on The Frozen Throne |achieve 9924/2 |goto Icecrown Citadel/7 49.8,52.2
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. in Wintergrasp Fortress |achieve 9924/22 |goto Wintergrasp/0 50.0,19.4
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. at Wyrmrest Temple |achieve 9924/15 |goto Dragonblight/0 59.8,54.2
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. in Naxxramas |achieve 9924/14 |goto Naxxramas/5 54.3,49.7
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. at Daggercap Bay |achieve 9924/37 |goto Howling Fjord/0 60.1,56.3
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
|tip You can take this shot anywhere in Vashj'ir.
Take a S.E.L.F.I.E. in Vashj'ir |achieve 9924/23 |goto Vashj'ir/0 60.1,56.3
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. at Deathwing's Fall |achieve 9924/19 |goto Deepholm/0 59.5,61.1
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. at Turtle Beach |achieve 9924/40 |goto Krasarang Wilds/0 72.3,31.4
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. at Sunsong Ranch |achieve 9924/39 |goto Valley of the Four Winds/0 52.2,48.5
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. in Vale of Eternal Blossoms |achieve 9924/6 |goto Vale of Eternal Blossoms/0 61.7,36.7
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. at Mount Neverest |achieve 9924/28 |goto Kun-Lai Summit/0 41.0,50.1
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. in Auchindoun |achieve 9924/41 |goto Auchindoun/1 49.7,90.2
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. at the Temple of Karabor |achieve 9924/7 |goto Shadowmoon Valley D/0 71.2,46.6
step
_Congratulations!_
You Earned the "Field Photographer" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Master/Grand Treasure Hunter",{
condition_end=function() return achieved(9728) end,
achieveid={9726, 9727, 9728,9728},
patch='60002',
keywords={"Master","Treasure","Hunter"},
description="\nDiscover 200 treasures of Draenor.",
},[[
step
Learn the _Archaeology_ profession |complete skill("Archaeology") >= 1
|tip In order to loot some of the treasures, you will need the Archaeology skill. It doesn't matter what level your skill is, you only need to have the skill.
step
Upgrade your Garrison to Level 2 |complete garrisonlvl() > 1
|tip Use the Garrison Leveling guide to accomplish this.
step
_Enter_ the tower |goto Frostfire Ridge/0 37.5,59.8 < 20 |walk
click Raided Loot##231103 |q 34967 |future |goto Frostfire Ridge 37.2,59.2
|tip It's up the ramp at the top of the tower.
step
_Go up_ the hill |goto Frostfire Ridge/0 44.2,58.7 < 20 |only if walking
_Go up_ the ramp into the _small tower_ |goto Frostfire Ridge 43.66,55.62 < 20 |only if walking
click Forgotten Supplies##230909 |q 34841 |future |goto Frostfire Ridge 43.66,55.62
|tip It looks like a rolled up blanket.
step
_Go up_ the hill |goto Frostfire Ridge/0 47.2,52.4 < 30 |only if walking
_Turn right_ at the top |goto Frostfire Ridge/0 46.2,51.9 < 20 |only if walking
_Turn left_ and go between the stones |goto Frostfire Ridge 45.36,50.34 < 20 |only if walking
talk Grizzled Frostwolf Veteran##74585
Tell him: "_Stand and fight! Victory or death!_"
Defend against the waves of enemies that attack
kill Thunderlord Crag-Leaper##72378+ |tip These will spawn in 3 waves of 3.
click Dusty Chest##224217 |q 33011 |future |goto Frostfire Ridge 45.4,50.8
|tip The chest is a medium sized wood crate in the back of the hut.
step
_Jump onto_ the small building here |goto Frostfire Ridge/0 27.4,42.4 < 20 |only if walking
_Walk across_ the small wood plank and jump onto the far small building |goto Frostfire Ridge 27.65,42.80 < 20 |only if walking
click Slave's Stash##224392 |q 33500 |future |goto Frostfire Ridge 27.65,42.80
|tip The stash is on the corner of the awning.
step
_Go up_ the ramp |goto Frostfire Ridge 25.2,47.9 < 20 |only if walking
_Enter_ the cave |goto Frostfire Ridge/0 25.3,51.6 < 20 |walk
click Frozen Frostwolf Axe##229640 |q 34507 |future |goto Frostfire Ridge 24.18,48.60
|tip It's in the back left portion of the cave, clutched by an orc frozen in ice.
step
_Leave_ the cave |goto Frostfire Ridge/0 25.2,51.4 < 20 |walk
_Enter_ the cave |goto Frostfire Ridge/0 19.5,50.6 < 20 |walk
|tip Be careful, there are stealthed mobs throughout the cave.
_Continue around_ to the right and to the back of the cave |goto Frostfire Ridge/0 20.7,49.0 < 20 |walk
_Go up_ the ramp |goto Frostfire Ridge/0 21.1,50.4 < 20 |walk
click Pale Loot Sack##230611 |q 34931 |future |goto Frostfire Ridge 21.68,50.76
|tip The sack is at the end of the spine.
step
_Leave_ the cave |goto Frostfire Ridge/0 19.4,50.0 < 20 |walk
_Follow_ the snowy ledge up |goto Frostfire Ridge/0 16.5,52.6 < 30 |only if walking
_Climb up_ the rock formation |goto 15.2,50.8 < 15 |only if walking
_Climb_ on this rock and use it to jump to the next one |goto Frostfire Ridge/0 15.2,50.7 |only if walking
click Supply Dump##226990 |q 33942 |future |goto Frostfire Ridge 16.12,49.72
|tip It looks like a tiny treasure chest.
step
_Pass through_ the forest |goto Frostfire Ridge/0 13.4,47.4 < 35 |only if walking
|tip Be sure to avoid the level 100 elites, they have a low aggro radius.
_Go down_ the path along the water's edge |goto Frostfire Ridge/0 10.8,48.5 < 20 |only if walking
click Sealed Jug##230401 |q 34641 |future |goto Frostfire Ridge 09.83,45.33
step
_Follow_ the ledge up |goto Frostfire Ridge/0 10.9,48.5 < 35 |only if walking
_Cross_ the large field |goto Frostfire Ridge/0 23.3,34.7 < 40 |only if walking
_Enter_ the tower |goto Frostfire Ridge/0 24.5,29.4 < 10 |walk
_Go up_ the ramp |goto 24.2,28.8 < 10 |walk
_Mount up_ and _jump across_ to the stone platform |goto Frostfire Ridge/0 24.3,27.7 < 20
click Spectator's Chest##224613 |q 33501 |future |goto Frostfire Ridge/0 24.3,27.1
step
_Jump down_ the ledge here |goto Frostfire Ridge/0 24.3,25.8 < 20 |only if walking
_Go up_ the stairs |goto Frostfire Ridge/0 22.0,26.2 < 25 |only if walking
_Pass through_ the doorway |goto 23.3,24.3 < 15 |only if walking
click Arena Master's War Horn##226955 |q 33916 |future |goto Frostfire Ridge 23.17,24.95
|tip It's on the seat of the throne.
step
_Go up_ the hill |goto Frostfire Ridge/0 24.7,22.9 < 20 |only if walking
_Jump down_ the ledge here |goto Frostfire Ridge/0 24.1,21.7 |tip It might take a bit to jump at the right angle. |only if walking
click Gnawed Bone##230425 |q 34648 |future |goto Frostfire Ridge 25.52,20.50
|tip It's a very small bone sticking out of the side.
step
_Go down_ the ramp |goto Frostfire Ridge/0 25.7,14.2 < 20 |only if walking
_Enter_ the cave |goto Frostfire Ridge/0 23.4,12.0 < 25 |walk
click Snow-Covered Strongbox##230424 |q 34647 |future |goto Frostfire Ridge 23.97,12.91
|tip It's in the left side of the cave, half buried in a snow mound.
step
_Go through_ the narrow pass |goto Frostfire Ridge 20.0,12.9 < 20 |walk
click Lucky Coin##230402 |q 34642 |future |goto Frostfire Ridge 19.21,12.02
|tip A tiny coin is laying on the ground just past the well.
step
_Go up_ the ramp and leave the cave |goto Frostfire Ridge/0 23.4,12.1 < 20 |walk
_Go down_ the ramp |goto 22.6,9.4 < 20 |only if walking
Fish from the Giant Clam Pool |cast Fishing##7620 |q 34907 |future |goto Frostfire Ridge/0 21.9,9.5
step
Start here at the bottom of the rocks. |goto Frostfire Ridge 35.5,23.9 |only if walking
Follow the path up the rocks. |goto Frostfire Ridge 34.2,23.4 |only if walking
click Thunderlord Cache##220641
collect Thunderlord Longspear##107658 |goto Frostfire Ridge 34.2,23.4
|tip It's a small chest on the top of the rock.
step
_Go up_ the ramp |goto Frostfire Ridge/0 39.0,41.3 < 20 |only if walking
_Continue up_ the small ramp |goto 39.0,38.3 < 20 |only if walking
click Obsidian Petroglyph##224616 |q 33502 |future |goto Frostfire Ridge 38.30,37.82
|tip It's a large stone.
step
_Go down_ the hill |goto Frostfire Ridge/0 39.0,39.7 < 25 |only if walking
_Cross_ the field |goto 44.4,41.9 < 25 |only if walking
_Follow_ the hidden path up |goto Frostfire Ridge/0 43.4,37.1 < 25 |only if walking
_Jump down_ the ledge here |goto 42.3,32.7 < 20 |only if walking
_Jump on top_ of the spears lodged into the walls |goto Frostfire Ridge/0 42.8,31.4 < 10 |only if walking
click Crag-Leaper's Cache##226983 |q 33940 |future |goto Frostfire Ridge 42.66,31.75
step
_Go up_ the path |goto Frostfire Ridge/0 43.7,31.3 < 25 |only if walking
_Jump down_ |goto 46.5,32.5 < 25 |only if walking
_Go down_ the hill |goto Frostfire Ridge/0 51.3,35.9 < 25 |only if walking
clicknpc Young Orc Traveler##75072
Choose _<Take the scroll.>_
use Bound Traveler's Scroll##107270
collect Snow Hare's Foot##107273 |q 33525 |future |goto Frostfire Ridge/0 54.9,35.5
step
_Go up_ the hill |goto Frostfire Ridge/0 63.3,15.9 < 25 |only if walking
talk Young Orc Woman##75081
Choose _<Take the letter.>_
use Frozen Envelope##107271
use Frostwolf First-Fang##107272 |q 33525 |future |goto Frostfire Ridge 63.40,14.70
step
_Follow_ the path through the plains |goto Frostfire Ridge/0 59.9,18.8 < 45 |only if walking
_Continue_ along the path |goto 58.3,28.3 < 45 |only if walking
_Go up_ the hill here |goto Frostfire Ridge/0 64.1,31.4 < 25 |only if walking
_Cross_ the giant boulders |goto Frostfire Ridge/0 64.3,27.9 < 25 |only if walking
click Survivalist's Cache##226993 |q 33946 |future |goto Frostfire Ridge 64.72,25.73
|tip It's a small chest surrounded by loose rocks.
step
kill Frozen Fury##78631+
|tip Kill the Frozen Fury mobs around the block of ice to reveal the skeleton.
click Frozen Orc Skeleton##229367 |q 34476 |future |goto Frostfire Ridge 57.17,52.16
step
_Cross_ the large open field |goto Frostfire Ridge/0 57.5,63.7 < 35 |only if walking
click Iron Horde Munitions##236693 |q 36863 |future |goto Frostfire Ridge 56.72,71.86
|tip It's a rectangular box on the ground between a siege cannon and ammunition.
step
_Follow_ the path around your garrison |goto Frostfire Ridge/0 62.4,78.0 < 35 |walk
_Continue_ around the path |goto 66.2,80.3 < 25 |walk
click Iron Horde Supplies##224633 |q 33017 |future |goto Frostfire Ridge 68.90,69.10
|tip The supplies are in the back of the wagon.
step
_Go up_ the snowy hill, starting here |goto Frostfire Ridge/0 65.9,62.8 |only if walking
_Go to_ the peak between these two bones |goto Frostfire Ridge/0 65.0,65.7 |only if walking
_Jump down_ onto the snow-covered roof |goto Frostfire Ridge/0 64.5,65.6 |only if walking
click Wiggling Egg##224623 |q 33505 |future |goto Frostfire Ridge 64.40,65.86
|tip Jump down to the floor from the roof. It's inside of the building.
step
_Enter_ the building |goto Frostfire Ridge/0 67.9,46.0 |walk
click Grimfrost Treasure##226994 |q 33947 |future |goto Frostfire Ridge 68.1,45.9
|tip It's at the top of the tower.
step
_Warning_ These next treasures are in Frostfire are in a level 100 area.
click here if you wish to continue. |next "100 frostfire"
click here if you wish to skip to the next area. |next "gorgrond"
step
label "100 frostfire"
Follow the path |goto Frostfire Ridge 47.0,32.6 |only if walking
Follow the path up |goto Frostfire Ridge 45.7,31.2 |only if walking
Follow the path down |goto Frostfire Ridge 43.6,24.6 |only if walking
Get through the fire as fast as possible |goto Frostfire Ridge 42.9,19.3 |only if walking
click Burning Pearl##230252
collect Burning Pearl##120341 |goto Frostfire Ridge 42.1,19.4
step
Follow the path to the tower |goto Frostfire Ridge 41.5,19.3 |only if walking
Go into the tower |goto Frostfire Ridge 40.0,18.1 |only if walking
|tip The cache is under the stairs on the bottom of the tower.
click Cragmaul Cache##224713 |goto Frostfire Ridge 39.7,17.1
confirm
step
label "gorgrond"
_Enter_ Deadgrin |goto Gorgrond/0 38.8,73.5 < 20 |only if walking
_Go to_ the right |goto Gorgrond/0 39.9,72.2 < 20 |only if walking
click Femur of Improbability##233917 |q 36170 |future |goto Gorgrond 40.04,72.23
|tip It's a bone holding up a giant boulder.
step
_Leave_ Deadgrin |goto Gorgrond/0 41.3,73.9 |only if walking
click Explorer Canister##236139 |q 36621 |future |goto Gorgrond 40.36,76.60
|tip It's at the bottom of the pond in the middle of the rocks in the center.
step
_Climb up_ on the tree trunk |goto Gorgrond/0 44.3,73.6 < 8 |only if walking
click Laughing Skull Cache##233149 |q 35709 |future |goto Gorgrond 44.20,74.27
|tip it's a round brown bag on the ground.
step
_Enter_ Evermorn Springs |goto Gorgrond/0 44.1,79.6 |only if walking
_Follow_ the path around to the right |goto Gorgrond/0 42.3,78.8 |only if walking
_Enter_ the hut and jump through the small opening on the right |goto Gorgrond/0 41.7,78.5 < 8 |walk
click Evermorn Supply Cache##236178 |q 36658 |future |goto Gorgrond 41.82,78.02
|tip It looks like a giant pot with a lid.
step
_Enter_ Evermorn Springs |goto Gorgrond/0 44.1,79.6 |only if walking
_Go right_, following the path |goto Gorgrond/0 42.6,81.7 |only if walking
_Go up_ the hill to the left of the hut |goto Gorgrond/0 42.5,83.4 |only if walking
click Discarded Pack##236141 |q 36625 |future |goto Gorgrond/0 42.36,83.41
|tip It's behind the roots just underneath the hut.
step
_Leave_ through the small passage |goto Gorgrond/0 44.2,79.5 < 30 |only if walking
_Follow_ the path down |goto 44.5,82.6 < 35 |only if walking
_Jump_ up the rocks here |goto Gorgrond/0 45.8,88.4 < 35 |only if walking
_Go up_ the hill |goto Gorgrond/0 44.3,91.5 < 35 |only if walking
kill Intimidating Baby Adder##77872
click Ockbar's Pack##227998 |q 34241 |future |goto Gorgrond/0 43.1,92.9
|tip It's a backpack that appears when you kill the Intimidating Baby Adder.
step
_Jump_ onto the wooden platform |goto Gorgrond/0 48.1,93.4 < 25 |only if walking
click Stashed Emergency Rucksack##236092 |q 36604 |future |goto Gorgrond 48.12,93.37
|tip It's hanging on the cable to the crane.
step
_Follow_ the path down |goto Gorgrond/0 48.3,85.7 < 35 |only if walking
_Continue along_ the path |goto Gorgrond/0 48.6,78.4 < 35 |only if walking
_Enter_ the cave |goto Gorgrond/0 51.4,77.6 < 35 |walk
_Follow_ the path back |goto Gorgrond/0 51.7,79.6 < 35 |walk
_Continue along_ the path |goto 52.9,80.6 < 35 |walk
click Strange Looking Dagger##231069 |q 34940 |future |goto Gorgrond/0 52.97,79.95
|tip It looks like a dagger sticking out of the ground.
step
_Leave_ the cave |goto Gorgrond/0 51.4,77.6 < 25 |walk
_Jump_ into the hole in the ground |goto Gorgrond/0 53.0,74.6 < 20 |walk
click Remains of Balik Orecrusher##236170 |q 36654 |future |goto Gorgrond 53.12,74.49
|tip The remains are behind the left steaming geyser vent.
step
_Leave_ the cave |goto Gorgrond/0 51.6,74.4 < 35 |walk
click Pile of Rubble##233792 |q 36118 |future |goto Gorgrond 43.95,70.55
|tip It's located between the stones and the ogre statue head.
step
_Go up_ the hill |goto Gorgrond/0 43.0,68.2 < 25 |only if walking
_Jump down_ the ledge here |goto 40.8,68.0 < 25 |only if walking
_Follow_ the ramp up |goto Gorgrond/0 39.2,65.7 < 25 |only if walking
_Go up_ the ramp inside of the tower |goto 39.1,68.5 < 25 |only if walking
click Sasha's Secret Stash##236149 |q 36631 |future |goto Gorgrond 39.03,68.05
|tip It's hanging from a woodem beam hanging from the tower, you may have to jump down to reach it.
step
click Odd Skull##236715 |q 36509 |future |goto Gorgrond/0 52.5,67.0
|tip It looks like a giant skull.
step
_Follow_ the path down |goto Gorgrond/0 55.0,65.1 < 35 |only if walking
_Jump onto_ the mushroom formation here |goto Gorgrond/0 57.3,65.4 < 15 |only if walking
|tip It's in a nest on top of the mushroom.
click Vindicator's Hammer##236147
collect Huurand's Huge Hammer##118712 |goto Gorgrond/0 59.3,63.8
step
click Strange Spore##232621 |q 37249 |future |goto Gorgrond 57.08,65.30
|tip It looks like a giant orb with orange bulbs in it.
step
_Go up_ the large hill here |goto Gorgrond/0 59.6,57.5 < 20 |only if walking
_Head up_ the small ramp |goto 59.5,53.7 < 25 |only if walking
_Cross_ the bridge |goto 58.0,54.5 < 25 |only if walking
click Remains of Balldir Deeprock##236096 |q 36605 |future |goto Gorgrond 57.84,55.97
|tip They're in the middle of the pond at the bottom.
step
_Go up_ the mountain and follow the path along the ledge |goto Gorgrond/0 59.8,53.5 < 35 |only if walking
_Jump on top of_ the red mushroom here |goto Gorgrond/0 62.0,60.5 < 15 |only if walking
_Jump across_ to the next mushroom |goto Gorgrond/0 60.7,60.8 < 15 |only if walking
click Strange Spore##232621 |q 37249 |future |goto Gorgrond 57.08,65.30
|tip It's a hammer laying inside of a nest.
|tip If you chose the shredder, you can simply fly up to the mushroom with this treasure.
step
_Go up_ the large hill here |goto Gorgrond/0 59.6,57.5 < 20 |only if walking
_Enter_ the cave |goto Gorgrond/0 48.6,47.2 < 15 |walk
click Warm Goren Egg##234054 |q 36203 |future |goto Gorgrond 48.94,47.31
|tip It's a giant egg at the back of the cave.
step
Go up the small hill here |goto Gorgrond/0 46.0,49.8 < 25 |only if walking
click Suntouched Spear##236099 |q 36610 |future |goto Gorgrond 45.69,49.72
|tip It looks like a big spear sticking out of the ground.
step
_Enter_ the cave |goto Gorgrond/0 44.6,50.7 < 25 |walk
click Harvestable Precious Crystal##236169 |q 36651 |future |goto Gorgrond/0 46.1,50.0
|tip It's a big purple-white crystal on the left side of the cave.
step
_Leave_ the cave |goto Gorgrond/0 44.6,50.7 < 25 |walk
_Go up_ the hill |goto Gorgrond/0 42.2,49.4 < 30 |only if walking
_Continue_ along the path |goto 42.2,51.6 < 25 |only if walking
click Brokor's Sack##235859 |q 36506 |future |goto Gorgrond/0 41.73,52.97
|tip It's a small sack by the stones.
step
_Enter_ the cave |goto 43.5,48 < 25 |walk
_Go down_ the path |goto Gorgrond/18 42.1,48.9 < 25 |walk
_Continue_ along the path |goto Gorgrond/19 46.7,77.8 < 25 |walk
_Pass through_ the opening |goto Gorgrond/19 44.4,56.7 < 25 |walk
click Horned Skull##231644 |q 35056 |future |goto Gorgrond/19 47.4,67.6
step
_Go up_ the hill |goto Gorgrond/19 63.2,72.5 < 25 |walk
_Leave_ the cave |goto Gorgrond/18 64.5,82.8 < 25 |only if walking
_Go up_ the rocky passage |goto Gorgrond/0 41.5,47.8 < 25 |only if walking
_Enter_ the cave |goto Gorgrond/0 42.8,44.4 < 25 |walk
click Iron Supply Chest##236138 |q 36618 |future |goto Gorgrond/0 43.69,42.48
|tip It's by the crates in the southeastern part of the cave.
step
_Leave_ the cave |goto Gorgrond/0 42.9,44.1 < 25 |walk
click Sniper's Crossbow##236158 |q 36634 |future |goto Gorgrond 44.95,42.62
|tip It's a weapon that is leaning against a spyglass.
step
click Petrified Rylak Egg##235881 |q 36521 |future |goto Gorgrond 46.24,42.95
|tip It's an egg between three nests.
step
_Go up_ the hill |goto Gorgrond/0 49.0,41.0 < 25 |only if walking
click Weapons Cache##235869 |q 36596 |future |goto Gorgrond 49.28,43.63
|tip It's a circular object located to the left of the War Machine on the platform.
step
Enter the cave |goto Talador/0 75.3,22.4 < 20 |walk
_Go down_ the ramp |goto Talador/0 76.3,19.5 < 20 |walk
_Go up_ the ramp |goto 78.0,18.7 < 20 |walk
_Follow_ the path |goto 79.8,17.4 < 20 |walk
click Pure Crystal Dust##228026 |q 34263 |future |goto Talador 78.21,14.71
|tip It looks like a giant purple pile on the ground.
step
_Leave_ the cave |goto Talador/0 75.1,22.5 < 35 |walk
_Cross_ the path |goto Talador/0 71.1,20.1 < 35 |only if walking
_Go up_ the hill |goto 69.0,15.9 < 35 |only if walking
click Rook's Tacklebox##227951 |q 34232 |future |goto Talador 64.90,13.30
|tip It looks like an open box with fishing lures.
step
_Cross_ the bridge |goto Talador/0 65.0,10.9 < 35 |only if walking
_Carefully_ make your way down the steep ledge |goto Talador 65.2,8.8 < 35 |only if walking
_Enter_ the cave |goto Talador 64.8,9.4 < 35 |walk
click Jug of Aged Ironwine##227953 |q 34233 |future |goto Talador 65.47,11.37
|tip It looks like a bag on the ground.
step
_Leave_ the cave |goto Talador 64.8,9.2 < 25 |walk
_Follow_ the mountain side |goto Talador/0 61.6,7.9 < 25 |only if walking
_Continue_ along the mountain side |goto 59.0,5.6 < 25 |only if walking
_Go up_ the hill |goto 56.8,6.0 < 30 |only if walking
click Deceptia's Smoldering Boots##226976 |q 33933 |future |goto Talador 58.90,12.00
|tip It looks like a pair of smoking boots.
step
_Go up_ the path |goto Talador 60.9,19.2 < 35 |only if walking
_Jump_ onto the platform  here |goto Talador 57.6,28.2 < 35 |only if walking
|tip Climb to the top of it and jump to the square platforms along the wall
click Foreman's Lunchbox##227956 |q 34238 |future |goto Talador 57.36,28.66
|tip It's a small box sitting on the ledge. It is easier to reach the lunchbox if you are not mounted.
step
click Amethyl Crystal##227955 |q 34236 |future |goto Talador 62.08,32.38
|tip It's a pink crystal at the bottom of the water.
step
_Cross_ the river |goto Talador/0 55.0,31.9 < 25 |only if walking
_Go down_ the ramp |goto 52.1,33.4 < 25 |only if walking
click Luminous Shell##227954 |q 34235 |future |goto Talador 52.56,29.54
|tip It's a tiny sea shell on the ground.
step
_Enter_ the cave |goto 53.3,26.2 < 15 |walk
click Ketya's Stash##228570 |q 34290 |future |goto Talador 53.97,27.69
|tip It's a big chest sitting on the ledge of a rock formation.
|tip Avoid_ the red circles and the lasers.
step
_Leave_ the cave |goto Talador/0 53.3,26.2 |walk
_Climb_ up the boat to land |goto Talador 36.2,13.6 < 35 |only if walking
|tip This will go a lot faster using the Water Strider mount.
click Light of the Sea##228022 |q 34258 |future |goto Talador 38.19,12.42
|tip It looks like a giant yellow orb.
step
Make your way back to the shore |goto Talador 51.3,23.2 < 35 |only if walking
_Follow_ the hill up |goto Talador/0 51.4,33.1 < 30 |only if walking
_Cross_ the bridge |goto Talador/0 56.6,42.4 < 25 |only if walking
click Barrel of Fish##228016 |q 34252 |future |goto Talador 62.41,47.97
|tip It's a barrel sitting at the ledge of a dock.
step
click Lightbearer##227527 |q 34101 |future |goto Talador 68.80,56.20
|tip It looks like a hammer leaning against a tree.
step
_Enter_ the mine |goto Talador/0 78.5,35.5 < 20 |walk
_Continue right_ into the mine |goto Talador/0 80.4,34.8 < 20 |walk
_Go left_ in the main cave |goto Talador/0 81.2,35.4 < 20 |walk
_Drop down_ here |goto Talador/0 81.8,35.6 < 10 |walk
click Aruuna Mining Cart##228024 |q 34260 |future |goto Talador 81.84,34.94
|tip It's a mine cart full of purple crystals.
step
_Go up_ the ramp |goto Talador/0 81.4,36.0 < 15 |walk
_Leave_ the cave |goto 78.3,35.5 < 15 |walk
click Keluu's Belongings##228025 |q 34261 |future |goto Talador 75.68,41.40
|tip It's under the bridge next to the stream.
step
_Go up_ the hill |goto Talador/0 75.8,39.6 < 30 |only if walking
_Cross_ the bridge |goto 75.4,40.6 < 25 |only if walking
_Enter_ the building |goto Talador/0 76.1,44.4 < 15 |only if walking
click Relic of Aruuna##228014 |q 34250 |future |goto Talador 75.78,44.72
|tip It's a small lockbox sitting on the balcony.
step
click Charred Sword##228012 |q 34248 |future |goto Talador 77.04,49.96
|tip It's a large sword lodged into the ground.
step
click Bright Coin##229354 |q 34471 |future |goto Talador 73.52,51.37
|tip It's a golden coin that is underwater.
step
_Cross_ the water |goto Talador/0 72.3,56.3 < 20 |only if walking
_Cross_ the platform |goto 64.4,57.1 < 30 |only if walking
_Follow_ the path up |goto Talador/0 60.9,67.0 < 30 |only if walking
click Draenei Weapons##228017 |q 34253 |future |goto Talador 55.25,66.71
|tip It's the weapon rack near the anvil.
step
_Follow_ the path up |goto Talador/0 64.6,69.9 < 35 |only if walking
_Continue_ up the path |goto Talador/0 67.4,68.6 < 35 |only if walking
click Grappling Hook Rope |goto Talador/0 69.0,69.1 < 5
_Cross_ the bridge |goto Talador/0 69.0,75.2 < 35 |only if walking
_Go up_ the stairs |goto Talador/0 68.5,79.0 < 35 |only if walking
_Continue up_ the stairs |goto 67.5,78.7 < 35 |only if walking
_Enter_ the building |goto Talador/0 65.1,79.1 < 35 |walk
click Iron Box##228015 |q 34251 |future |goto Talador 64.58,79.20
|tip It's a small lockbox on the ground.
step
_Jump down_ here |goto Talador/0 65.3,77.7 < 10 |only if walking
_Continue_ down the water fall |goto 64.1,77.2 < 10
|tip Aim for the center of the water to prevent fall damage.
_Jump_ to the center of the river |goto Talador/0 61.9,77.2 < 10 |only if walking
_Go up_ the hill |goto Talador/0 61.1,78.0 < 10 |only if walking
_Enter_ the cave |goto Talador 61.2,84.1 < 15 |walk
click Curious Deathweb Egg##227996 |q 34239 |future |goto Talador 66.50,86.94
|tip It looks like a giant websack swinging back and forth.
step
_Go up_ the ramp |goto Talador 64.5,86.7 < 15 |walk
click Webbed Sac##228019 |q 34255 |future |goto Talador 65.44,88.60
|tip It's hanging from the giant crystal.
step
_Jump down_ into the pool of water |goto Talador 66.3,85.2 < 15 |walk
click Rusted Lockbox##228483 |q 34276 |future |goto Talador 65.96,85.13
|tip It's a tiny lockbox at the bottom of the pool of water.
step
_Exit_ the cave |goto Talador 61.2,84.0 < 15 |walk
_Pass_ through the Deathweb Hollow |goto Talador/0 59.8,83.6 < 35 |only if walking
_Jump down the ledge_ |goto 56.3,83.9 < 30 |only if walking
_Enter_ the building |goto Talador/0 47.9,90.7 < 30 |walk
click Relic of Telmor##228020 |q 34256 |future |goto Talador 46.96,91.74
|tip It's a mid-sized chest.
step
_Follow_ the path back |goto Talador/0 45.1,91.8 < 30 |walk
_Jump_ down the ledge |goto 42.8,92.1 < 30 |only if walking
_Go down_ the path |goto 39.0,93.6 < 30 |only if walking
talk Aarko##77664
Ask him: "_Do you need help?_"
kill Shadow Raider##77673+, Shadow Pillager##88039+, Shadow Felcaster##88040+
kill Surok Darkstorm##77677
click Aarko's Family Treasure##227793 |q 34182 |future |goto Talador 36.50,96.10
|tip It's a mid-sized chest.
step
click Farmer's Bounty##228013 |q 34249 |future |goto Talador 35.41,96.56
|tip It's the barrel at the end of the pier.
step
_Go up_ the hill |goto Talador/0 35.2,93.3 < 30 |only if walking
_Make your way_ up the side of the mountain |goto 37.2,89.3 < 30 |only if walking
click Treasure of Ango'rosh##228021 |q 34257 |future |goto Talador 38.33,84.50
|tip It's a tiny box sitting atop a rock.
step
_Follow_ the path down |goto Talador/0 34.9,78.4 < 15 |only if walking
_Enter_ the building |goto 33.6,76.3 < 15 |walk
click Bonechewer Remnants##228023 |q 34259 |future |goto Talador 33.29,76.80
|tip It's a chest at the back of the building.
step
_Enter_ the cave |goto Talador/0 36.7,75.3 |walk
kill Viperlash##77564
click Bonechewer Spear##227654 |q 34148 |future |goto Talador 37.60,74.90
|tip It's a large spear sticking out of Viperlash's back. The spear will drop after Viperlash dies.
step
_Leave_ the cave |goto Talador/0 36.7,75.3 < 15 |walk
_Go down_ the ledge here |goto Talador/0 34.2,69.9 < 35 |only if walking
_Go down_ the hill |goto Talador/0 27.4,68.5 < 30 |only if walking
_Cross_ the water |goto Talador/0 26.8,74.7 < 30 |only if walking
_Go up_ the hill |goto Talador/0 27.7,76.5 < 30 |only if walking
_Enter_ the cave |goto 28.0,75.3 < 15 |walk
clicknpc Statue##89976
|tip Click the statues to make all three face inward. Then click them again to make them all face outward.
click Gift of the Ancients##236483 |q 36829 |future |goto Talador 28.39,74.19
step
_Swim_ to the shoreline |goto Talador/0 25.9,72.9 < 35 |only if walking
_Go up_ the hill |goto 27.7,68.4 < 30 |only if walking
_Enter_ the Tomb of Souls |goto Talador/14 49.1,89.4 < 15 |walk
_Go down_ the ramp |goto Talador/14 36.5,67.3 < 20 |walk
click Soulbinder's Reliquary##228018 |q 34254 |future |goto Talador/14 28.2,34.9
step
_Follow_ the path back |goto Spires of Arak/0 37.0,18.2 < 15 |walk
_Go up_ the hidden ramp |goto 36.2,17.9 < 10 |walk
click Outcast's Belongings 1##235172 |q 36243 |future |goto Spires of Arak 36.82,17.16
|tip It's a small jar lying next to a corpse.
step
_Follow_ the path down |goto Spires of Arak 39.7,19.1 < 35 |only if walking
click Misplaced Scrolls##234154 |q 36244 |future |goto Spires of Arak 42.69,18.32
|tip It's a tiny scroll sitting by some rubble.
step
_Go up_ the hill |goto Spires of Arak/0 43.4,15.1 < 10 |only if walking
_Jump onto_ the wall from this point |goto Spires of Arak/0 43.4,15.3 < 4 |only if walking
_Drop down_ onto the rope and carefully walk to the far wall |goto Spires of Arak/0 43.4,15.8 |only if walking
click Relics of the Outcasts 1##234454 |q 36245 |future |goto Spires of Arak 42.96,16.37
step
click Elixir of Shadow Sight 1##234735 |q 36395 |future |goto Spires of Arak 43.90,15.00
|tip It's a small potion inside of an open container.
step
clicknpc Rukhmar's Image##85206 |q 36377 |future |goto Spires of Arak 44.33,12.04
|tip It looks like a bird with it's wings spread.
step
_Go down_ the narrow path |goto 42.3,19.5 < 35 |only if walking
_Go up_ the semi hidden ramp here |goto Spires of Arak 41.6,22.0 < 10 |only if walking
click Outcast's Belongings 2##235172 |q 36447 |future |goto Spires of Arak 42.17,21.68
|tip It's a small jar lying next to a corpse.
step
_Enter_ the burning building |walk
click Elixir of Shadow Sight 1##234735 |q 36395 |future |goto Spires of Arak 43.90,15.00
|tip It's a large potion vial sitting in a basket.
step
_Jump onto_ the tree trunk here |goto Spires of Arak/0 44.5,27.6 < 10 |only if walking
_Cross_ the ropes |goto Spires of Arak/0 43.1,26.2 < 10 |only if walking
click Relics of the Outcasts 3##234454 |q 36355 |future |goto Spires of Arak 43.16,27.26
|tip At the end of the rope, it's on the tree trunk to your right.
step
use Elixir of Shadow Sight##115463
|tip Be careful not to use more than one.
click Gift of Anzu##234618 |q 36388 |future |goto Spires of Arak/0 42.4,26.7
|tip It's a giant floating wand.
step
_Go up_ the hill |goto Spires of Arak 33.9,25.3 < 35 |only if walking
_Jump_ on top of the wood shelf using the hill
click Sun-Touched Cache 1##235105 |q 36421 |future |goto Spires of Arak 34.14,27.51
step
_Go up_ the hill |goto Spires of Arak/0 33.3,25.9 < 15 |only if walking
Walk up to the platform underneath the chest
click Sun-Touched Cache 2##235105 |q 36422 |future |goto Spires of Arak 33.29,27.27
|tip It's a chest sitting on top of a platform. You can loot it from the middle level.
step
_Follow_ the path back |goto Spires of Arak 34.4,32.3 < 35 |only if walking
click Orcish Signaling Horn##234740 |q 36402 |future |goto Spires of Arak 36.28,39.34
|tip It's between the busted wagon debris.
step
_Go down_ the path down |goto Spires of Arak 37.5,42.8 < 10 |only if walking
_Follow_ the path back |goto 38.0,46.7 |only if walking
click Garrison Supplies##235103 |q 36420 |future |goto Spires of Arak 37.15,47.50
|tip It's a small box in a wagon next to a sleeping Lazy Spectral Laborer.
step
_Enter_ the building |goto Spires of Arak 38.8,50.2 < 20 |walk
_Go down_ the stairs |goto Spires of Arak 37.7,51.3 < 10 |walk
talk Miril Dumonde##82432
buy 3 Rooby Reat##114835 |q 36657 |future |goto Spires of Arak/0 37.4,50.8 < 10
step
talk Rooby Roo##84332 |goto Spires of Arak 37.4,50.8
Follow Rooby Roo
|tip Click Rooby Roo to give another Rooby Reat when it stops walking.
click Rooby's Roo##233975 |q 36657 |future
step
_Leave_ the area |goto Spires of Arak 38.7,50.2 < 30 |only if walking
click Garrison Workman's Hammer##235289 |q 36451 |future |goto Spires of Arak 41.85,50.42
|tip It's in the wagon on the side of the road.
step
_Follow_ the hidden path up |goto Spires of Arak 41.0,56.0 < 20 |only if walking
_Go up_ the ramp |goto Spires of Arak 39.9,56.0 < 20 |only if walking
click Abandoned Mining Pick##235313 |q 36458 |future |goto Spires of Arak 40.59,54.97
step
click An Old Key##235366
collect An Old Key##116020 |q 36462 |future |goto Spires of Arak 37.70,56.40
|tip It's sitting on top of a rock, with a skeleton leaning against it. |only if itemcount(116020) < 1
step
_Enter_ the Town Hall |goto Spires of Arak/0 36.4,53.6 < 10 |walk
click Admiral Taylor's Coffer##235365 |q 36462 |future |goto Spires of Arak 36.19,54.46
step
_Leave_ the building |goto Spires of Arak/0 36.3,53.7 < 15 |walk
click Ephial's Dark Grimoire##235097 |q 36418 |future |goto Spires of Arak/0 36.4,57.8
|tip It is on a small crate on the right side of the house.
step
_Follow_ the path back |goto Spires of Arak 38.4,55.7 < 25 |only if walking
_Continue_ along the hidden path |goto 40.7,56.8 < 25 |only if walking
_Go up_ the small hill |goto Spires of Arak 48.4,61.3 < 25 |only if walking
click Elixir of Shadow Sight 4##234735 |q 36399 |future |goto Spires of Arak 49.0,62.6
|tip It's at the edge of the straw on the ground.
step
_Go up_ the hill |goto Spires of Arak 48.8,56.4 < 25 |only if walking
click Offering to the Raven Mother 3##235090 |q 36406 |future |goto Spires of Arak 48.90,54.70
|tip It's sitting at the center of a nest here.
step
click Offering to the Raven Mother 2##235090 |q 36405 |future |goto Spires of Arak 48.35,52.61
|tip It's being held by a Cultist Statue.
step
_Follow_ the path |goto Spires of Arak 51.3,58.1 < 35 |only if walking
_Jump down_ the ledge |goto 51.9,61.3 < 25 |only if walking
_Go up_ the hill |goto Spires of Arak 51.4,63.6 < 25 |only if walking
click Offering to the Raven Mother 4##235090 |q 36407 |future |goto Spires of Arak 51.88,64.65
|tip It's sitting at the center of a nest.
step
_Follow_ the path |goto Spires of Arak 50.9,67.0 < 30 |only if walking
_Continue_ along the path |goto 52.9,76.2 < 30 |only if walking
click Elixir of Shadow Sight 6##234735 |q 36401 |future |goto Spires of Arak 53.10,84.50
|tip It's a vial that's underwater resting against a broken passage.
step
_Follow_ the path back |goto Spires of Arak 54.1,85.8 < 15 |only if walking
_Go up_ the small ramp |goto Spires of Arak 55.1,89.9 < 15 |only if walking
_Enter_ the building |goto Spires of Arak 55.7,91.0 < 10 |walk
_Go up_ the stairs |goto 55.4,90.9 < 10 |walk
click Campaign Contributions##234473 |q 36367 |future |goto Spires of Arak 55.53,90.86
|tip You must jump onto the headboard of the bed, then onto the shelves. The treasure is above the doorway.
step
_Jump out_ of the window |goto Spires of Arak 55.7,91.0 < 15 |walk
click Sailor Zazzuk's 180-Proof Rum##234472 |q 36366 |future |goto Spires of Arak 59.17,90.64
|tip It's sitting inside of a small hut.
step
click Nizzix's Chest##232458 |q 35481 |future |goto Spires of Arak 60.80,87.80
|tip The pod is at the edge of the water. This will free Nizzix who will walk ashore and drop the chest.
step
_Swim_ out to this location, then dive below for the treasure
click Coinbender's Payment##235299 |q 36453 |future |goto Spires of Arak 68.42,88.98
|tip After you swim out to the spot, swim down to the ocean floor and claim your treasure.
step
click Shredder Parts##235310 |q 36456 |future |goto Spires of Arak 60.86,84.61
|tip In the back of the wagon on the open crate.
step
click Spray-O-Matic 5000 XT##234471 |q 36365 |future |goto Spires of Arak 59.63,81.34
|tip It's inside of the wrecked ship, leaning against a red box.
step
use Elixir of Shadow Sight##115463
|tip Be careful not to use more than one.
click Gift of Anzu##234618 |q 36390 |future |goto Spires of Arak 57.00,79.00
|tip It will be a sword that appears before you.
step
_Follow_ the path |goto 60.0,73.6 < 35 |only if walking
_Go up_ the hidden path |goto Spires of Arak 62.1,64.1 < 35 |only if walking
click Offering to the Raven Mother 5##235090 |q 36410 |future |goto Spires of Arak 60.97,63.87
|tip It's sitting at the center of a nest.
step
_Follow_ the path |goto Spires of Arak/0 62.9,66.0 < 15 |only if walking
_Go up_ the hidden ramp |goto 63.1,66.3 < 15 |only if walking
click Mysterious Mushrooms##235300 |q 36454 |future |goto Spires of Arak 63.58,67.37
|tip It's a white thorny plant.
step
_Follow_ the path back |goto Spires of Arak 66.2,58.1 < 10 |only if walking
click Waterlogged Satchel##235307 |q 36455 |future |goto Spires of Arak 66.47,56.53
|tip The Sachel is under water, trapped by a rock.
step
_Follow_ the mountainside |goto Spires of Arak 70.5,52.7 < 15 |only if walking
Go up the hill |goto Spires of Arak 71.6,49.8 < 15 |only if walking
click Sethekk Ritual Brew##235282 |q 36450 |future |goto Spires of Arak 71.64,48.59
|tip It's a bowl sitting on top of an altar.
step
_Go up_ the hill |goto Spires of Arak 70.4,48.9 < 15 |only if walking
_Follow_ the path |goto 68.4,46.7 < 25 |only if walking
click Elixir of Shadow Sight 3##234735 |q 36398 |future |goto Spires of Arak 69.20,43.30
|tip It's in the corner of the tree and the wall.
step
_Go up_ the hill |goto Spires of Arak/0 68.6,40.6 < 15 |only if walking
_Jump up_ the broken wall here |goto Spires of Arak/0 67.8,39.9 < 10 |only if walking
click Relics of the Outcasts 4##234454 |q 36356 |future |goto Spires of Arak 67.37,39.83
|tip It's a mid sized chest on the edge of the broken wall.
step
clicknpc Sethekk Idol##85190 |q 36375 |future |goto Spires of Arak 68.33,38.93
|tip It's a skeletal serpent on the altar.
step
use Elixir of Shadow Sight##115463 |goto Spires of Arak/0 61.1,55.3
|tip Be careful not to use more than one.
click Gift of Anzu##234618 |q 36381 |future |goto Spires of Arak/0 61.1,55.3
|tip It's a weapon that floats in front of you.
step
_Climb_ the rope |goto Spires of Arak/0 60.2,53.2 < 5 |only if walking
click Relics of the Outcasts 5##234454 |q 36359 |future |goto Spires of Arak 60.21,53.91
|tip If you keep falling off, try jumping up the rope.
step
_Go up_ the ramp |goto Spires of Arak 53.5,54.8 < 20 |only if walking
click Offering to the Raven Mother 1##235090 |q 36403 |future |goto Spires of Arak 53.31,55.52
|tip It's in a nest in the tree on the left of the hill.
step
_Jump up_ the ledge here |goto Spires of Arak/0 52.1,49.0 < 5 |only if walking
_Cross_ the rope carefully |goto Spires of Arak/0 52.4,49.4 < 5 |only if walking
click Relics of the Outcasts 6##234454 |q 36360 |future |goto Spires of Arak 51.89,48.92
step
Climb the hill here, and jump onto the rope |goto Spires of Arak/0 47.0,43.6 |only if walking
click Relics of the Outcasts 2##234454 |q 36354 |future |goto Spires of Arak 45.96,44.15
step
_Go up_ the hill |goto Spires of Arak 49.2,38.6 < 20 |only if walking
click Assassin's Spear##235143 |q 36445 |future |goto Spires of Arak 49.20,37.21
|tip It's lodged in the back of a dead arakkoa.
step
_Go up_ the formation |goto Spires of Arak 49.2,35.9 < 20 |only if walking
click Lost Ring##235091 |q 36411 |future |goto Spires of Arak 47.77,36.12
|tip It's very small, resting at the bottom of the stream.
step
_Climb_ the chain |goto Spires of Arak 47.2,33.9 < 20 |only if walking
click Outcast's Pouch##235168 |q 36446 |future |goto Spires of Arak 46.90,34.06
|tip It's a bag hanging underneath the chain holding the dead arakkoa.
step
click Shattered Hand Lockbox##234456 |q 36361 |future |goto Spires of Arak 47.92,30.65
step
_Jump down_ the waterfall |goto Spires of Arak 50.0,32.7 < 20 |only if walking
click Toxicfang Venom##234461 |q 36364 |future |goto Spires of Arak 54.35,32.55
|tip It's a green vial behind the barrel that is laying on its side.
step
click Lost Herb Satchel##234159 |q 36247 |future |goto Spires of Arak 50.78,28.74
|tip Underneath the bridge.
step
click Shattered Hand Cache##234458 |q 36362 |future |goto Spires of Arak 56.23,28.81
|tip It's inside of the tent, behind 3 barrels.
step
_Go up_ the ramp |goto Spires of Arak 53.5,27.9 < 25 |only if walking
_Follow_ the path |goto Spires of Arak 51.2,28.8 < 25 |only if walking
_Go up_ the hill |goto 50.4,26.5 < 15 |only if walking
_Follow_ the path up |goto 50.7,26.1 < 15 |only if walking
click Iron Horde Explosives##225731 |q 36444 |future |goto Spires of Arak 50.33,25.79
|tip It helps to drag the lookout away from the explosives so they are easier to loot.
step
_Follow_ the path |goto Spires of Arak 51.2,23.8 < 20 |only if walking
click Fractured Sunstone##234157 |q 36246 |future |goto Spires of Arak 50.50,22.10
|tip It's a tiny crystal at the base of the stone on the water side.
step
_Go up_ the hill |goto Spires of Arak 50.8,22.9 < 15 |only if walking
_Follow_ the path down |goto 53.4,23.2 < 15 |only if walking
click Elixir of Shadow Sight 5##234735 |q 36400 |future |goto Spires of Arak 55.60,22.00
|tip It's near the hand of the dead arakkoa.
step
_Climb up_ the mountain |goto Spires of Arak/0 53.8,47.4 < 15 |only if walking
click Misplaced Scroll##235095 |q 36416 |future |goto Spires of Arak 52.47,42.80
|tip The scroll is on the left side of the path up against the peak.
step
_Follow_ the side of the boat |goto Shadowmoon Valley D/0 27.3,8.1 |only if walking
click Sunken Treasure##220832 |q 35279 |future |goto Shadowmoon Valley D 28.82,07.20
|tip It's an iron-bound chest at the bottom of the water.
step
click Fantastic Fish##227743 |q 34174 |future |goto Shadowmoon Valley D 26.53,05.68
|tip The fish is on top of the small barrel.
step
Enter the cave |goto Shadowmoon Valley D/0 27.7,4.4 < 15 |walk
click Stolen Treasure##232067 |q 35280 |future |goto Shadowmoon Valley D 27.05,02.48
|tip It's a large brown chest.
step
_Follow_ the path down |goto Shadowmoon Valley D/0 24.9,16.7 < 35 |only if walking
_Go up_ the ramp to Gul'var |goto 23.0,29.2 < 35 |only if walking
_Go up_ the ramp here |goto Shadowmoon Valley D/0 19.8,29.7 < 15 |only if walking
click Demonic Cache##224785 |q 33575 |future |goto Shadowmoon Valley D 20.38,30.65
|tip It is an ornate chest located directly in front of the stone pillar.
step
_Go down_ the ramp |goto Shadowmoon Valley D/0 22.0,30.8 < 25 |only if walking
_Continue down_ the hill |goto 25.5,29.1 < 25 |only if walking
_Go up_ the ramp |goto Shadowmoon Valley D/0 25.0,33.1 < 25 |only if walking
_Enter_ the cave |goto Shadowmoon Valley D/15 73.1,30.9 < 15 |walk
_Jump_ down the ledge here |goto Shadowmoon Valley D/15 50.6,46.6 < 10 |walk
click Rotting Basket##224781 |q 33572 |future |goto Shadowmoon Valley D/15 56.2,49.3
|tip It's a small wicker chest located in front of the pile of bones.
step
_Leave_ the cave |goto Shadowmoon Valley D/15 73.6,32.5 < 15 |walk
_Go down_ way down the hillside |goto Shadowmoon Valley D/0 28.0,33.6 < 15 |only if walking
_Go through_ the gate |goto Shadowmoon Valley D/0 28.8,37.0 < 15 |only if walking
_Jump_ to the stone platform |goto Shadowmoon Valley D/0 27.9,40.3 < 10 |only if walking
click Dusty Lockbox##236755 |q 36879 |future |goto Shadowmoon Valley D 29.85,37.48
|tip It's a small chest on top of a stone pillar.
step
_Jump down_ here |goto Shadowmoon Valley D/0 28.3,38.6 < 15 |only if walking
_Enter_ the building |goto Shadowmoon Valley D/0 28.7,39.5 < 15 |walk
click Shadowmoon Treasure##233126 |q 33883 |future |goto Shadowmoon Valley D 28.23,39.24
|tip It's a medium metal chest.
step
_Go up_ the hill |goto Shadowmoon Valley D/0 29.3,41.4 < 25 |only if walking
_Go up_ the stairs |goto Shadowmoon Valley D/0 30.6,44.5 < 15 |only if walking
click Shadowmoon Sacrificial Dagger##224780 |q 35919 |future |goto Shadowmoon Valley D 29.99,45.36
|tip It's a small dagger impaled in the skeleton on the ground.
step
_Follow_ the path down |goto Shadowmoon Valley D/0 31.9,45.0 < 15 |only if walking
_Follow the mountainside trail_ |goto 34.0,44.2 < 15 |only if walking
_Continue up_ the hill |goto Shadowmoon Valley D/0 37.6,44.3 |only if walking
click Giant Moonwillow Cone##226862 |q 33891 |future |goto Shadowmoon Valley D/0 34.4,46.2
|tip It's a giant cone on the ground.
step
_Jump down_ the pit here |goto Shadowmoon Valley D/0 31.3,39.3 < 20 |only if walking
click Ronokk's Belongings##226861 |q 33886 |future |goto Shadowmoon Valley D 31.22,39.05
|tip It's a small chest in the alcove.
step
_Leave_ the room |goto Shadowmoon Valley D/0 31.8,40.1 < 15 |walk
_Enter_ the room |goto 33.5,40.1 < 15 |walk
click Carved Drinking Horn##232583 |q 33569 |future |goto Shadowmoon Valley D 33.45,39.61
|tip It looks like a giant tooth.
step
_Go up_ the stairs |goto Shadowmoon Valley D/0 33.6,40.6 < 15 |walk
_Enter_ the room |goto 33.6,42.8 < 15 |walk
click Veema's Herb Bag##232589 |q 33866 |future |goto Shadowmoon Valley D 34.21,43.53
|tip It's a small brown satchel.
step
_Go up_ the stairs |goto Shadowmoon Valley D/0 32.1,43.5 < 15 |walk
_Pass through_ |goto 35.0,42.2 < 15 |only if walking
click Uzko's Knickknacks##232587 |q 33540 |future |goto Shadowmoon Valley D 35.85,40.87
|tip It's a brown chest inside the alcove.
step
click Beloved's Offering##232591 |q 33046 |future |goto Shadowmoon Valley D 36.77,41.42
|tip It's a bundle of flowers next to the stone in the alcove.
step
click Greka's Urn##232588 |q 33614 |future |goto Shadowmoon Valley D 38.48,43.08
|tip It's a small urn behind the stone in the alcove.
step
click Ashes of A'kumbo##232582 |q 33584 |future |goto Shadowmoon Valley D 37.78,44.35
|tip It is a vase located behind the stone in the alcove.
step
click Rovo's Dagger##232586 |q 33573 |future |goto Shadowmoon Valley D 36.68,44.55
|tip It's a dagger leaning against a stone in the alcove.
step
_Go down_ the hill |goto Shadowmoon Valley D/0 38.1,41.0 < 25 |only if walking
_Go up_ the hill here |goto 53.06,53.18 < 35 |only if walking
_Cross_ the rock bridge |goto Shadowmoon Valley D/0 50.8,51.8 < 15 |only if walking
click Ancestral Greataxe##232596 |q 35584 |future |goto Shadowmoon Valley D 52.83,48.37
|tip It's an axe embedded in the ground at the base of the stones.
step
_Go up_ the ramp |goto Shadowmoon Valley D/0 52.6,48.7 < 15 |only if walking
_Follow_ the narrow path |goto 49.3,48.3 < 15 |only if walking
_Go up_ the rock formation |goto 48.5,46.5 < 15 |only if walking
_Jump_ down to the rocks below |goto Shadowmoon Valley D/0 47.8,45.5 < 10 |only if walking
click Hanging Satchel##224750 |q 33564 |future |goto Shadowmoon Valley D 47.15,46.03
|tip It's a brown bag hanging from a branch over the cave.
step
_Jump_ into the hole in the ground |goto Shadowmoon Valley D/0 47.3,46.0 < 15 |walk
_Use_ the rocks to reach to top platform back in this corner |goto 48.9,47.6 < 15 |walk
click Glowing Cave Mushroom##233241 |q 35798 |future |goto Shadowmoon Valley D/0 48.74,47.44
|tip It's a blue-white mushroom with a concave top.
step
_Leave_ the cave |goto Shadowmoon Valley D/0 46.5,45.3 < 15 |walk
_Cross_ the marsh |goto Shadowmoon Valley D/0 43.3,50.3 < 30 |only if walking
_Go up_ the hill |goto Shadowmoon Valley D/0 40.7,56.9 < 30 |only if walking
_Enter_ the building |goto Shadowmoon Valley D/0 38.6,60.2 < 10 |walk
click Iron Horde Tribute##224755 |q 33567 |future |goto Shadowmoon Valley D 37.51,59.25
|tip It's a large padlocked chest.
step
click Iron Horde Cargo Shipment##227134 |q 33041 |future |goto Shadowmoon Valley D 42.10,61.30
|tip It's a metal-bound chest in the back of the Iron Horde wagon.
step
click Peaceful Offering 1##225503 |q 33611 |future |goto Shadowmoon Valley D 43.75,60.62
|tip It's a small wicker chest at the base of the pillar.
step
click Peaceful Offering 4##225503 |q 33612 |future |goto Shadowmoon Valley D 44.49,59.14
|tip It's a small wicker chest at the base of the pillar.
step
click Peaceful Offering 2##225503 |q 33610 |future |goto Shadowmoon Valley D 45.22,60.49
|tip It's a small wicker chest at the base of the pillar.
step
click Peaceful Offering 3##225503 |q 33384 |future |goto Shadowmoon Valley D 44.48,63.57
|tip It's a small wicker chest at the base of the pillar.
step
click Waterlogged Chest##2734 |q 33566 |future |goto Shadowmoon Valley D 39.20,83.91
|tip It's a medium metal chest on the beach.
step
click Swamplighter Hive##232592 |q 35580 |future |goto Shadowmoon Valley D 55.29,74.87
|tip It's a yellow beehive located up in the tree. All of the wasps will attack you when you click it.
step
_Follow_ this path |goto Shadowmoon Valley D/0 58.3,60.5 |only if walking
_Continue along_ the path |goto Shadowmoon Valley D/0 58.8,63.9 |only if walking
_Enter_ the clearing |goto Shadowmoon Valley D/0 60.7,67.1 |only if walking
_Go to_ the boulder |goto Shadowmoon Valley D 61.70,67.90 |only if walking
click The Crystal Blade of Torvath##230663 |q 34743 |future |goto Shadowmoon Valley D 61.70,67.90
kill Silverleaf Ancient##79694
|tip When you click the Blade, you will have to fight the three Ancients (one at a time).
step
_Go down_ the hill |goto Shadowmoon Valley D/0 60.5,59.4 < 35 |only if walking
_Continue_ along the path |goto Shadowmoon Valley D/0 59.4,53.5 < 25 |only if walking
click Kaliri Egg##232579 |q 33568 |future |goto Shadowmoon Valley D 57.92,45.31
|tip It's a large white egg in the center of a nest.
step
click Alchemist's Satchel##224756 |q 35581 |future |goto Shadowmoon Valley D 54.92,45.01
|tip The Alchemist's Satchel is a small brown bag sitting on a small island in the lake.
step
click False-Bottomed Jar##224783 |q 33037 |future |goto Shadowmoon Valley D 51.75,35.49
|tip It's a large jar near several smaller ones.
step
click Armored Elekk Tusk##226854 |q 33869 |future |goto Shadowmoon Valley D 41.42,27.98
|tip It is a large bone sticking up from the ground.
step
click Sunken Fishing boat##233101 |q 35677 |future |goto Shadowmoon Valley D 37.19,26.01
|tip It looks like the wooden frame of a partial boat.
step
_Enter_ the cave |goto Shadowmoon Valley D/0 37.9,22.3 |walk
click Bubbling Cauldron##2076 |q 33613 |future |goto Shadowmoon Valley D 37.18,23.13
|tip It is a small dark cauldron.
step
_Enter_ the cave |goto Shadowmoon Valley D/0 46.3,27.2 < 15 |walk
click Shadowmoon Exile Treasure##224770 |q 33570 |future |goto Shadowmoon Valley D 45.82,24.58
|tip It's a brown chest half-covered with water next to the rock.
step
_Leave_ the cave |goto Shadowmoon Valley D/0 46.3,27.2 < 15 |walk
click Mushroom-Covered Chest##232494 |q 37254 |future |goto Shadowmoon Valley D 52.88,24.86
|tip It's a large brown chest.
step
_WARNING_: You will need to carefully avoid Alliance guards
_Go to_ the steps |goto Shadowmoon Valley D/0 60.0,26.6 < 30 |only if walking
_Climb_ the three flights of stairs |goto Shadowmoon Valley D/0 62.0,26.2 < 30 |only if walking
_Go up_ the next set of stairs |goto Shadowmoon Valley D/0 63.7,25.0 < 30 |only if walking
_Follow_ the path to the top of Exarch's Rise |goto Shadowmoon Valley D/0 60.5,20.6 < 20 |only if walking
Use this rock to _jump up_ |goto Shadowmoon Valley D/0 59.8,18.9 < 10 |only if walking
_Run up_ the hill here |goto Shadowmoon Valley D/0 59.9,17.6 < 5 |only if walking
_Continue up_ and onto the hill |goto Shadowmoon Valley D/0 59.3,17.9 < 20 |only if walking
_Continue around_ to the small grove of trees |goto Shadowmoon Valley D/0 56.5,17.9 < 20 |only if walking
_Jump onto_ the giant mushroom top |goto Shadowmoon Valley D 55.82,19.97 < 20 |only if walking
click Strange Spore##232621 |q 35600 |future |goto Shadowmoon Valley D 55.82,19.97
|tip It looks like a giant orange and brown spore.
step
_WARNING_: You will need to carefully avoid Alliance guards
_Go to_ the top of the waterfall in Elodor |goto Shadowmoon Valley D/0 59.7,24.3 |only if walking
_Cross_ the water and go to the top of the hill |goto Shadowmoon Valley D 58.88,21.93 |only if walking
click Mikkal's Chest##232624 |q 35603 |future |goto Shadowmoon Valley D 58.88,21.93
|tip It's a small brown chest located next to Painter Mikkal.
step
_Go through_ the gates |goto Shadowmoon Valley D/0 58.0,27.3 < 20 |only if walking
_Make your way_ to the open field |goto 58.2,33.1 < 35 |only if walking
click Orc Skeleton##235860 |q 36507 |future |goto Shadowmoon Valley D 66.96,33.49
|tip It's a tiny half-buried chest next to the Draenei Children.
step
_Follow_ the hill up |goto Talador/0 28.8,65.8 < 20 |only if walking
_Take_ the path towards Nagrand |goto 31.0,58.8 < 20 |only if walking
_Follow_ the path into Nagrand |goto Nagrand D/0 90.7,71.8 < 20 |only if walking
kill Lazy Warsong Scout##83791
click Warsong Supplies##233521 |q 35976 |future |goto Nagrand D 89.40,65.88
step
_Follow_ the path here |goto Nagrand D/0 85.7,66.3 < 25 |only if walking
_Go up_ the hill |goto 82.0,68.8 < 25 |only if walking
_Follow_ the narrow path here |goto 85.2,70.2 < 15 |only if walking
click Grizzlemaw's Bonepile##233626
Collect the Discarded Bones |goto Nagrand D/0 87.1,72.9
confirm
step
_Cross_ the lake |goto Nagrand D/0 86.3,68.2 < 25 |only if walking
_Go up_ the hill |goto Nagrand D 83.5,68.6 < 30 |only if walking
_Go up_ the stairs |goto Nagrand D 81.1,74.2 < 20 |only if walking
_Continue up_ the stairs |goto Nagrand D 83.9,77.1 < 20 |only if walking
_Follow_ the rocky hill up |goto Nagrand D 81.6,79.5 < 20 |only if walking
click Ogre Beads##233618
Collect the Trophy Ring of Gordal |goto 80.9,79.8
confirm
step
_Make your way_ down the rocky steps |goto Nagrand D 79.7,78.1 < 20 |only if walking
_Go up_ the path here |goto Nagrand D 77.5,72.5 < 15 |only if walking
click Steamwheedle Exploration Glider##232567 |goto Nagrand D 76.1,73.0 < 10 |only if walking
Once on the Glider, fly to this location  |goto 76.1,70.0 |only if walking
click Warsong Spear##233113
|tip It's a spear hanging from the rock ledge.
Collect the Ceremonial Warsong Spear |goto 76.1,70.0
confirm
step
_Make your way_ around the mountain |goto Nagrand D 78.3,68.5 < 15 |only if walking
_Go up_ the hill |goto 77.7,72.3 < 10 |only if walking
click Steamwheedle Exploration Glider##232567 |goto Nagrand D 76.1,73.0 < 10 |only if walking
click Warsong Lockbox##233103 |tip It's a chest with spikes inside of the tower here.
Collect the garrison resources |goto Nagrand D 73.1,70.4
confirm
step
_Make your way_ around the mountain |goto Nagrand D 78.3,68.5 < 15 |only if walking
_Go up_ the hill |goto 77.7,72.3 < 15 |only if walking
click Steamwheedle Exploration Glider##232567 |goto Nagrand D 76.1,73.0 < 10 |only if walking
click Appropriated Warsong Supplies##233079
|tip It's a small box near a goblin.
Collect the garrison resources |goto Nagrand D 73.1,75.5 < 5
confirm
step
_Jump_ up the ledge |goto Nagrand D 72.3,73.7 |only if walking
_Make you way_ down the ledge |goto 72.0,71.6 |only if walking
_Jump_ down the ledge here  |goto 72.0,69.5|only if walking
_Make your way_ around the mountain |goto Nagrand D 78.3,68.5 < 15 |only if walking
_Go up_ the hill |goto 77.7,72.3 < 15 |only if walking
_Go up_ the ledge here |goto Nagrand D 75.9,65.9 < 15 |only if walking
_Carefully_ drop down the ledge here |goto 75.0,65.8 < 10 |only if walking
click Important Exploration Supplies##233696
|tip It's a green barrel sitting inside of a cart.
Collect the Tol Barad Coconut Rum |goto Nagrand D 75.2,65.7
confirm
step
_Go up_ the hill |goto 77.7,72.3 < 15 |only if walking
_Cross_ the bridge |goto Nagrand D 76.0,69.5 < 15 |only if walking
_Go up_ the ledge here |goto Nagrand D 75.9,65.9 < 15 |only if walking
click Steamwheedle Exploration Glider##232567 |goto Nagrand D 75.7,64.5 < 10 |only if walking
Fly to this spot here |goto Nagrand D 75.2,64.9 < 10 |only if walking
|tip It will be a little tricky to reach this. There is a small landing spot so it is easy to miss.
click Saberon Stash##234474
Collect the gold and random green item |goto Nagrand D 75.2,64.9
confirm
step
_Jump_ down to the area below |goto Nagrand D 74.7,65.2 < 10 |only if walking
click Polished Saberon Skull##233593
|tip It's a skull at the ledge of the platform.
Collect the Trophy Signet of the Sabermaw |goto Nagrand D 72.7,61.0 < 6
confirm
step
_Jump_ down here. Stay as close to the wall as possible |goto Nagrand D 75.8,62.0 < 10 |only if walking
click Adventurer's Mace##233650
Collect the random green item |goto Nagrand D 75.8,62.0
confirm
step
_Go up_ the path |goto Nagrand D 75.4,62.6 < 10 |only if walking
_Continue up_ the large ramp |goto Nagrand D 74.8,65.1 < 10 |only if walking
_Jump down_ the ledge here |goto 76.3,64.9 < 10 |only if walking
_Follow_ the path up to the Glider |goto 75.7,66.1 < 10 |only if walking
click Steamwheedle Exploration Glider##232567 |goto Nagrand D/0 75.7,64.6
|tip Fly down underneath the large formation. Once you reach the rock, flying against it can help guide you downward.
click Goblin Pack##232597 |tip It's a tiny pack on the ledge here.
Collect the garrison resources |goto Nagrand D 73.0,62.1
confirm
step
_Follow_ the path here |goto Nagrand D/0 85.7,66.3 < 25 |only if walking
_Go up_ the hill |goto 82.0,68.8 < 25 |only if walking
_Follow_ the narrow path here |goto 85.2,70.2 < 15 |only if walking
click Grizzlemaw's Bonepile##233626 |q 36051 |future |goto Nagrand D 87.10,72.88
|tip It's behind the tree on the ground.
step
_Cross_ the lake |goto Nagrand D/0 86.3,68.2 < 25 |only if walking
_Go up_ the hill |goto Nagrand D 83.5,68.6 < 30 |only if walking
_Go up_ the stairs |goto Nagrand D 81.1,74.2 < 20 |only if walking
_Continue up_ the stairs |goto Nagrand D 83.9,77.1 < 20 |only if walking
_Follow_ the rocky hill up |goto Nagrand D 81.6,79.5 < 20 |only if walking
click Ogre Beads##233618 |q 36049 |future |goto Nagrand D 80.96,79.79
step
_Jump_ up the ledge |goto Nagrand D 72.3,73.7 |only if walking
_Make you way_ down the ledge |goto 72.0,71.6 |only if walking
_Jump_ down the ledge here  |goto 72.0,69.5 |only if walking
_Make your way_ around the mountain |goto Nagrand D 78.3,68.5 < 15 |only if walking
_Go up_ the hill |goto 77.7,72.3 < 15 |only if walking
_Go up_ the ledge here |goto Nagrand D 75.9,65.9 < 15 |only if walking
_Carefully_ drop down the ledge here |goto 75.0,65.8 < 10 |only if walking
click Important Exploration Supplies##233696 |q 36099 |future |goto Nagrand D 75.23,65.63
|tip it's a green barrel sitting inside of a cart.
step
_Jump_ down to the area below |goto Nagrand D 74.7,65.2 < 10 |only if walking
click Polished Saberon Skull##233593 |q 36035 |future |goto Nagrand D 72.71,60.92
|tip It's a skull at the ledge of the platform.
step
_Jump_ down here. Stay as close to the wall as possible |goto Nagrand D 75.8,62.0 < 10 |only if walking
click Adventurer's Mace##233650 |q 36077 |future |goto Nagrand D 75.81,62.03
|tip It's on a bloody corpse underneath the planks.
step
_Climb_ the boxes here |goto Nagrand D/0 77.8,51.6 |only if walking
_Go down_ the hill |goto Nagrand D 71.2,50.4 < 30 |only if walking
_Continue down_ the path |goto 68.1,52.7 < 30 |only if walking
_Go up_ the hill |goto Nagrand D/0 66.8,48.7 < 30 |only if walking
click Highmaul Sledge##233611 |tip It's a hammer sitting atop a stone.
Collect the Trophy Loop of the Highmaul |goto Nagrand D/0 67.4,49.0
confirm |sticky saved
step
_Go up_ the hill |goto Nagrand D/0 69.2,50.4 |only if walking
Carefully, _climb onto_ the tree and walk out on the limb |goto Nagrand D/0 69.7,52.2 < 3 |only if walking
click Adventurer's Pack##233218 |q 35597 |future |goto Nagrand D 69.95,52.44
|tip Toggling run/walk to the walk setting helps.
step
_Go up_ the hill |goto Nagrand D/0 61.3,54.3 < 35 |only if walking
click Abandoned Cargo##233206 |q 35759 |future |goto Nagrand D 67.65,59.71
|tip Among the broken wagon rubble.
step
click Lost Pendant##233651 |q 36082 |future |goto Nagrand D 61.76,57.47
|tip It's a tiny gold pendant hanging in the tree.
step
click Golden Kaliri Egg##233134 |q 35694 |future |goto Nagrand D 58.28,52.49
|tip Climb the tree branch. It looks like 3 purple eggs, one of which is broken inside of a nest.
step
_Go to_ this platform |goto Nagrand D/0 58.0,57.8 |only if walking
_Jump down_ onto the tree below |goto Nagrand D/0 58.1,59.2 |only if walking
click Pokkar's Thirteenth Axe##233561 |q 36021 |future |goto Nagrand D 58.29,59.31
|tip The axe is on a small tree limb just below the trunk.
step
_Go up_ the hill |goto Nagrand D/0 59.2,57.4 < 20 |only if walking
_Jump_ across the gap |goto Nagrand D/0 57.7,59.9 < 20 |only if walking
_Jump down_ here |goto Nagrand D/0 57.2,61.9 < 20 |only if walking
_Continue down_ the ledge |goto 57.6,62.3 < 20 |only if walking
click Pale Elixir##233768 |q 36115 |future |goto Nagrand D 57.79,62.05
|tip It's on a small rock cradled in the tree trunk.
step
_Enter_ the cave | goto Nagrand D/0 56.3,61.8 < 10 |walk
|tip It is located below.
_Follow_ the path down |goto Nagrand D/12 76.1,42.0 < 10 |walk
_Go up_ the hill |goto Nagrand D/12 62.1,40.1 < 10 |walk
click Adventurer's Pouch##233623 |q 36088 |future |goto Nagrand D/12 66.0,57.5
|tip It's the small pouch on the belt of the impaled adventurer.
step
_Go through_ the passage |goto Nagrand D/12 64.8,31.4 < 10 |only if walking
_Go up_ the stairs |goto 50.4,32.0 < 10 |only if walking
_Traverse_ the tunnel |goto 36.6,49.9 < 10 |only if walking
_Go up_ the ramp |goto Nagrand D/12 22.6,66.5 < 10 |only if walking
Make your way into the narrow tunnel up |goto Nagrand D/0 47.2,64.3 < 10
_Jump down_ here |goto Nagrand D/0 47.0,62.0 < 10 |only if walking
click Genedar Debris##233539 |q 35999 |future |goto Nagrand D 48.06,60.11
|tip It's on the side of the hill. Look for the little blue gem.
step
click Warsong Cache##233135 |q 35695 |future |goto Nagrand D 51.72,60.29
|tip Inside the hut on the right.
step
click Genedar Debris##233539 |q 36011 |future |goto Nagrand D 55.35,68.28
|tip It's a purple object in the middle of the small grove of trees.
step
_Follow_ the path up |goto Nagrand D/0 57.4,67.0 < 30 |only if walking
_Jump_ behind the tree |goto 62.1,66.8 < 30 |only if walking
click Bag of Herbs##233773 |q 36116 |future |goto Nagrand D 62.54,67.08
step
_Follow_ the path |goto Nagrand D/0 61.0,59.5 < 35 |only if walking
_Follow_ the path up to Telaar |goto Nagrand D/0 69.7,59.4 < 35 |only if walking
_Enter_ Telaar |goto 68.2,64.2 < 35 |only if walking
Go into the water behind the hill and to climb up to the treasure
click Telaar Defender Shield##233613 |q 36046 |future |goto Nagrand D 64.71,65.83
step
_Carefully_ jump down the ledge here |goto Nagrand D/0 65.8,61.4 < 10 |only if walking
click Abu'gar's Vitality##233157 |q 36711 |future |goto Nagrand D 65.90,61.20
|tip By the tackle box.
confirm
step
_Go up_ the hill |goto Nagrand D/0 67.6,58.9 < 30 |only if walking
_Enter_ Telaar |goto 68.4,64.3 < 25 |only if walking
_Jump down_ the waterfall |goto Nagrand D/0 62.8,67.5 < 25 |only if walking
_Go up_ the path |goto Nagrand D/0 60.7,73.1 < 25 |only if walking
click Adventurer's Pouch##233623 |q 36050 |future |goto Nagrand D 56.56,72.94
|tip It's waist-level with the bloody corpse.
step
_Carefully_ make your way down the side of Oshu'gun |goto Nagrand D/0 50.5,66.4 < 25 |only if walking
_Follow_ the path around Oshu'gun |goto Nagrand D/0 49.8,69.1 < 25 |only if walking
click Fragment of Oshu'gun##233560 |q 36020 |future |goto Nagrand D 45.86,66.29
|tip It's a small white crystal next to the large Oshu'gun crystal.
step
_Follow_ the path up |goto Nagrand D/0 45.1,68.3 < 25 |only if walking
click Genedar Debris##233539 |q 36002 |future |goto Nagrand D 44.69,67.57
|tip It's pink-purple and hidden just under the tree foliage.
step
click Genedar Debris##233539 |q 36008 |future |goto Nagrand D 48.58,72.79
|tip It's wedged between the tree and rock.
step
_Enter_ the cave |goto 41.6,68.3 |walk
click Spirit Coffer##237946 |q 37435 |future |goto Nagrand D 40.34,68.64
step
_Leave_ the cave |goto Nagrand D/0 41.7,68.3 |walk
click Genedar Debris##233539 |q 35987 |future |goto Nagrand D 43.22,57.55
|tip It's a purple object in the middle of the trees.
step
_Climb over_ the rocks and wait here for the parrot |goto Nagrand D/0 38.5,58.8 < 10 |only if walking
clicknpc Rusty Keys##84068
click Goldtoe's Plunder##233715 |q 36109 |future |goto Nagrand D 38.34,58.72
|tip Click the keys in the green and yellow parrot's mouth.
step
_Follow_ the path up |goto Nagrand D/0 38.9,58.3 < 10 |only if walking
_Go up_ the hill |goto Nagrand D/0 36.4,55.8 < 10 |only if walking
click Forgotten Brazier##236604
click Spirit's Gift##236610 |q 36846 |future |goto Nagrand D 35.47,57.25
|tip After lighting the Baziers, the treasure will appear.
step
_Go down_ the ramp |goto Nagrand D/0 36.1,55.7 < 20 |only if walking
_Follow_ the path back |goto 41.8,53.1 < 20 |only if walking
click Abu'Gar's Favorite Lure##233642 |q 36711 |future |goto Nagrand D 38.40,49.40
|tip It's next to the small bridge by the weeds.
confirm
step
_Cross_ the bridge |goto Nagrand D/0 41.5,52.3 |only if walking
click Adventurer's Pack##233218 |q 35969 |future |goto Nagrand D 45.63,52.00
|tip It's in the remains of the bloody corpse at the base of the tree.
step
_Follow_ the path |goto Nagrand D/0 50.1,49.8 < 35 |only if walking
click Warsong Helm##233645 |q 36073 |future |goto Nagrand D 52.41,44.38
|tip On the left side of the waterfall against the rocks.
step
Congratulations! You earned the _Grand Treasure Hunter_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Gorgrond Monster Hunter",{
achieveid={9400},
patch='60001',
description="\nSlay the rare elites in Gorgrond.",
},[[
step
_Slay_ the following rare elite in Gorgrond
|tip You can use your shredder to make the fights easier if you build the lumber mill.
kill Erosian the Violent##81540	|achieve 9400/6 |goto Gorgrond 51.8,41.6
step
_Slay_ the following rare elite in Gorgrond
|tip You can use your shredder to make the fights easier if you build the lumber mill.
kill Charl Doomwing##81548 |achieve 9400/7 |goto Gorgrond 46.0,46.8
step
_Slay_ the following rare elite in Gorgrond
|tip You can use your shredder to make the fights easier if you build the lumber mill.
kill Dessicus of the Dead Pools##81529 |achieve 9400/4 |goto Gorgrond 40.0,52.2
step
_Slay_ the following rare elite in Gorgrond
|tip You can use your shredder to make the fights easier if you build the lumber mill.
kill Crater Lord Igneous##81528 |achieve 9400/3 |goto Gorgrond 43.8,59.6
step
_Slay_ the following rare elite in Gorgrond
|tip You can use your shredder to make the fights easier if you build the lumber mill.
kill Khargax the Devourer##81537 |achieve 9400/5 |goto Gorgrond 52.4,65.8
step
_Slay_ the following rare elite in Gorgrond
|tip You can use your shredder to make the fights easier if you build the lumber mill.
kill Fungal Praetorian##80785 |achieve 9400/8 |goto Gorgrond 58.0,63.6
step
_Slay_ the following rare elite in Gorgrond
|tip You can use your shredder to make the fights easier if you build the lumber mill.
kill Roardan the Sky Terror##77093 |achieve 9400/2 |goto Gorgrond 61.6,61.6
step
_Slay_ the following rare elite in Gorgrond
|tip You can use your shredder to make the fights easier if you build the lumber mill.
kill Biolante##75207 |achieve 9400/1 |goto Gorgrond 63.0,54.6
step
Congratulations, you have _earned_ the Gorgrond Monster Hunter Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Prove Your Strength",{
achieveid={9402},
patch='60001',
description="\nComplete the following Proofs of Strength in Gorgrond.",
},[[
step
_This achievement requires the Sparring Arena in Gorgrond_
|tip You can swap out your building if you wish, or do this on an alt as the achievement is account wide.
kill Ogron Spinecrusher##81240+
collect Worn Ogron Horn##114019 |goto Gorgrond 43.6,48.2
use Worn Ogron Horn##114019
accept Proof of Strength: Ogron Horn##36076
step
kill Turbulent Steamfury##81685+
collect Elemental Crystal##114038 |goto Gorgrond 43.8,57.8
use Elemental Crystal##114038
accept Proof of Strength: Elemental Crystal##36106
step
kill Goren Gouger##80690+
collect Acid-Stained Goren Tooth##113590 |goto Gorgrond 46.0,64.2
use Acid-Stained Goren Tooth##113590
accept Proof of Strength: Goren Tooth##35948
step
kill Gronn Rockthrower##80689+
collect Gronn Eye##114023 |goto Gorgrond 45.6,64.6
use Gronn Eye##114023
accept Proof of Strength: Gronn Eye##36083
step
kill Infested Orc##81617+
collect Orc Thorn##114027 |goto Gorgrond 47.4,72.6
use Orc Thorn##114027
accept Proof of Strength: Orc Thorn##36091
step
kill Thicket Ravager##81561+
collect Ravager Claw##114032 |goto Gorgrond 45.6,80.6
use Ravager Claw##114032
accept Proof of Strength: Ravager Claw##36097
step
kill Bloom Weaver##81575+
collect Botani Bloom##114025 |goto Gorgrond 44.0,81.6
use Botani Bloom##114025
accept Proof of Strength: Botani Bloom##36086
step
kill Gronnling Bonebreaker##80685+
collect Gronnling Scale##114021 |goto Gorgrond 47.0,85.0
use Gronnling Scale##114021
accept Proof of Strength: Gronnling Scale##36080
step
kill Mistcreep Stinger##85695+
collect Wasp Stinger##114034 |goto Gorgrond 52.4,67.0
use Wasp Stinger##114034
accept Proof of Strength: Wasp Stinger##36101
step
kill Mire Basilisk##85694+
collect Basilisk Scale##114036 |goto Gorgrond 53.6,66.8
use Basilisk Scale##114036
accept Proof of Strength: Basilisk Scale##36104
step
kill Silent Watcher##81005+
collect Ancient Branch##114030 |goto Gorgrond 56.8,56.0
use Ancient Branch##114030
accept Proof of Strength: Ancient Branch##36094
step
talk Limbflayer##76688
turnin Proof of Strength: Ogron Horn##36076 |goto Gorgrond 46.2,69.6 |achieve 9402/8
turnin Proof of Strength: Elemental Crystal##36106 |goto Gorgrond 46.2,69.6 |achieve 9402/4
turnin Proof of Strength: Goren Tooth##35948 |goto Gorgrond 46.2,69.6 |achieve 9402/5
turnin Proof of Strength: Gronn Eye##36083 |goto Gorgrond 46.2,69.6 |achieve 9402/6
turnin Proof of Strength: Orc Thorn##36091 |goto Gorgrond 46.2,69.6 |achieve 9402/9
turnin Proof of Strength: Ravager Claw##36097 |goto Gorgrond 46.2,69.6 |achieve 9402/10
turnin Proof of Strength: Botani Bloom##36086 |goto Gorgrond 46.2,69.6 |achieve 9402/3
turnin Proof of Strength: Gronnling Scale##36080 |goto Gorgrond 46.2,69.6 |achieve 9402/7
turnin Proof of Strength: Wasp Stinger##36101 |goto Gorgrond 46.2,69.6 |achieve 9402/11
turnin Proof of Strength: Basilisk Scale##36104 |goto Gorgrond 46.2,69.6 |achieve 9402/2
turnin Proof of Strength: Ancient Branch##36094 |goto Gorgrond 46.2,69.6 |achieve 9402/1
step
Congratulations, you have _earned_ the Prove Your Strength Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Shredder Maniac",{
achieveid={9401},
patch='60001',
description="\nCollect 12 or more Hardened Thornvines in Gorgrond.",
},[[
step
You will need a _Logging Camp_ in Gorgrond to ear this achievement
Follow the provided in search of Hardened Thornvines
map Gorgrond
path loop off
path	42.92,43.48	47.53,43.60	49.04,48.47
path	47.23,51.83	42.35,54.78	39.31,56.25
path	40.92,67.32	41.12,77.28	41.96,81.60
path	45.34,81.98	45.79,89.30	45.97,93.60
achieve 9401
step
Congratulations, you have _earned_ the Shredder Maniac Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Draenor Pathfinder",{
achieveid={10018},
patch='60200',
description="\nThis guide will walk you through completing the Draenor Pathfinder Achievement.",
condition_suggested=function() return level >= 90 and level <= 100 and not achieved(10018) end,
},[[
step
Complete these achievements:
Explore Draenor |achieve 10018/1
|tip Use the "Explore Draenor" guide to accomplish this.
Loremaster of Draenor |achieve 10018/2
|tip Use the Draenor Leveling guides to accomplish this.
Securing Draenor |achieve 10018/3
|tip Use the "Garrison Assault Daily Quests" guide to accomplish this.
Master Treasure Hunter |achieve 10018/4
|tip Use the "Master/Grand Treasure Hunter" guide to accomplish this.
Tanaan Diplomat |achieve 10018/5
|tip Use the "Vol'Jin's Headhunters Dailies", "Order of the Awakened Dailies", and "The Saberstalkers" guides to accomplish this.
step
Congratulations, you earned the _Draenor Pathfinder_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Jungle Treasure Hunter/Master",{
condition_end=function() return achieved(10262) end,
achieveid={10261, 10262,10262},
patch='60200',
description="\nThis guide will walk you through discovering all of the treasures in Tanaan Jungle.",
},[[
step
label "tanaan_treasure_start"
_Follow_ the path |goto Tanaan Jungle/0 55.0,64.3 < 20 |only if walking
_Run up_ the path |goto Tanaan Jungle/0 56.6,66.5 < 20 |only if walking
click Forgotten Sack##241433 |quest 38591 |goto Tanaan Jungle 57.0,65.1 |future
|tip It looks like a tan sack sitting on the ground in the middle of a bunch of bones.
step
_Follow_ the path |goto Tanaan Jungle/0 54.8,64.6 < 20 |only if walking
_Run up_ the path behind the big rock |goto Tanaan Jungle/0 54.4,70.3 < 20 |only if walking
Run on the _green log_ |goto Tanaan Jungle/0 55.3,70.0 < 20 |only if walking
_Carefully jump down_ to the green vine _from this spot_ |goto Tanaan Jungle/0 55.1,69.6 < 10 |only if walking
click Lodged Hunting Spear##241434 |quest 38593 |goto Tanaan Jungle/0 54.8,69.3 |future
|tip It looks like a brown wooden pole sticking out of this huge green thorny vine.
step
_Follow_ the path |goto Tanaan Jungle/0 54.0,70.8 < 30 |only if walking
_Run down_ the path |goto Tanaan Jungle/0 54.9,77.8 < 30 |only if walking
_Follow_ the path up |goto Tanaan Jungle/0 52.4,78.9 < 20 |only if walking
_Enter_ the cave |goto Tanaan Jungle/0 51.2,79.6 < 20 |walk
click Discarded Helm##241600 |quest 38702 |goto Tanaan Jungle/0 49.9,81.2 |future
|tip It looks like a small horned helmet on a skeleton sitting on the ground in the back of the cave.
|tip You will likely need to get a group to help you get to this treasure.
step
_Leave_ the cave |goto Tanaan Jungle/0 51.2,79.6 < 20 |walk
_Run up_ the path |goto Tanaan Jungle/0 51.5,80.5 < 20 |only if walking
_Follow_ the path on the ledge |goto Tanaan Jungle/0 51.5,81.7 < 20 |only if walking
_Run up_ the path |goto Tanaan Jungle/0 50.3,80.8 < 20 |only if walking
click Scout's Belongings##241601 |quest 38703 |goto Tanaan Jungle/0 50.0,79.6 |future
|tip It looks like a small brown backpack sitting on a wooden crate.
|tip You will likely need to get a group to help you get to this treasure.
step
_Run on_ the dirt path |goto Tanaan Jungle/0 55.5,78.6 < 30 |only if walking
click Blackfang Island Cache##241449 |quest 38601 |goto Tanaan Jungle/0 61.2,75.8 |future
|tip It looks like a big leather covered object sitting on the ground on this small island, between a bunch of trees.
|tip You will likely need to get a group to help you get to this treasure.
step
_Jump onto_ the flat stone |goto Tanaan Jungle/0 62.1,71.8 < 20 |only if walking
_Jump on_ the stones to this spot |goto Tanaan Jungle/0 62.0,70.8 < 20 |only if walking
click Crystallized Fel Spike##241450 |quest 38602 |goto Tanaan Jungle/0 62.0,70.8 |future
|tip It's a big spikey green crystal sticking out of the side of the wall. Carefully walk to the edge of the stone in order to reach it.
|tip You will likely need to get a group to help you get to this treasure.
step
_Swim out_ to the small island |goto Tanaan Jungle/0 61.2,75.8 < 40 |only if walking
_Follow_ the path |goto Tanaan Jungle/0 55.3,79.0 < 30 |only if walking
_Run down_ the path |goto Tanaan Jungle/0 54.3,85.0 < 30 |only if walking
click Dead Man's Chest##243693 |quest 39470 |goto Tanaan Jungle/0 54.9,90.7 |future
|tip It looks like a brown treasure chest sitting on the ground next to some trees, halfway hidden in a leafy bush.
|tip You will likely need to get a group to help you get to this treasure.
step
_Follow_ the path |goto Tanaan Jungle/0 59.2,90.8 < 40 |only if walking
_Run up_ the rock here |goto Tanaan Jungle/0 65.9,84.8 < 10 |only if walking
click Bejeweled Egg##243690 |quest 39469 |goto Tanaan Jungle/0 65.9,85.0 |future
|tip It looks like a diamond encrusted egg sitting in a yellow straw bird nest up on this rocky cliffside.
|tip You will likely need to get a group to help you get to this treasure.
step
_Enter_ the cave |goto Tanaan Jungle/0 47.3,70.7 < 20 |walk
|tip If the fire is blocking your way into the cave, you must wait and complete the Garrison Campaign quest "The Warlock", which only has a chance to be available each week. Use "The Warlock" Garrison Campaign guide to accomplish this.
click Mysterious Corrupted Obelisk##241666 |quest 38739 |goto Tanaan Jungle 46.20,72.80 |future
|tip It looks like a stone pillar, overgrown with vines, with a glowing orb of light at the top of it, near the wall in the back of the cave.
step
_Leave_ the cave |goto Tanaan Jungle/0 47.3,70.7 < 20 |walk
_Run up_ the path |goto Tanaan Jungle/0 47.7,70.6 < 20 |only if walking
_Walk onto_ the flat rock |goto Tanaan Jungle/0 48.5,70.5 < 30 |only if walking
click Crystalized Essence of the Elements##241605 |quest 38705 |goto Tanaan Jungle/0 47.9,70.4 |future
|tip It looks like a small cluster of big blue crystals on the ground on top of this huge rock.
step
click Overgrown Relic##241656 |quest 38731 |goto Tanaan Jungle/0 50.8,65.0 |future
|tip It looks like a stone pillar, overgrown with vines, with a glowing orb of light at the top of it, in the middle of a bunch of trees on this small island.
step
_Follow_ the path |goto Tanaan Jungle/0 48.2,66.5 < 30 |only if walking
_Continue_ following the path |goto Tanaan Jungle/0 46.4,66.2 < 30 |only if walking
click Forgotten Champion's Blade##241533 |quest 38657 |goto Tanaan Jungle/0 41.6,73.3 |future
|tip It looks like a sword stuck in the ground in the swamp water next to a big tree branch.
step
click The Perfect Blossom##241522 |quest 38639 |goto Tanaan Jungle/0 40.8,75.6 |future
|tip It looks like a plant with two white petals, in the hollow beneath a huge tree, surrounded by purple fog on the ground. Try to stand on the perimeter of the fog, or else you won't be able to loot it.
step
_Follow_ the path |goto Tanaan Jungle/0 41.5,75.6 < 30 |only if walking
click Snake Charmer's Flute##241521 |quest 38638 |goto Tanaan Jungle/0 40.6,79.8 |future
|tip It looks like a small wooden stick laying on the ground next to a skeleton, on a rock hill next to a waterfall.
step
_Follow_ the path |goto Tanaan Jungle/0 42.4,77.8 < 30 |only if walking
_Enter_ the cave |goto Tanaan Jungle/0 44.6,77.5 < 30 |walk
_Go through_ the tunnel opening |goto Tanaan Jungle/0 46.7,76.3 < 20 |walk
_Run up_ the path |goto Tanaan Jungle/0 48.0,77.3 < 20 |walk
_Follow_ the path around |goto Tanaan Jungle/0 49.4,79.0 < 20 |walk
_Run up_ here |goto Tanaan Jungle/0 51.1,75.9 < 20 |walk
_Carefully_ walk onto the vine here |goto Tanaan Jungle/0 50.7,76.3 < 10 |walk
_Carefully_ drop down onto the vine here |goto Tanaan Jungle/0 50.1,75.7 < 10 |walk
_Jump down_ to the lower level carefully here |goto Tanaan Jungle/0 49.3,74.9 < 10 |walk
_Jump up_ here |goto Tanaan Jungle/0 48.9,75.3 < 20 |walk
click Looted Mystical Staff##241841 |quest 38814 |goto Tanaan Jungle/0 48.6,75.2 |future
|tip It looks like a huge purple electrified shaman staff leaning up against the wall.
step
_Jump on_ the rocks here |goto Tanaan Jungle/0 49.3,76.7 < 20 |only if walking
_Run up_ the green vine |goto Tanaan Jungle/0 49.4,77.1 < 10 |only if walking
_Jump up_ the rocks |goto Tanaan Jungle/0 49.8,77.5 < 10 |only if walking
_Carefully_ jump down to the _lower platform_ |goto Tanaan Jungle/0 50.0,77.2 < 10 |only if walking
click Bleeding Hollow Mushroom Stash##241835 |quest 38809 |goto Tanaan Jungle/0 50.0,76.8 |future
|tip It looks like a wooden barrel filled with bright green mushrooms, up on the stone pillar formation.
step
_Go through_ the tunnel opening |goto Tanaan Jungle/0 46.7,76.3 < 20 |walk
_Leave_ the cave |goto Tanaan Jungle/0 44.6,77.5 < 30 |walk
_Follow_ the path down |goto Tanaan Jungle/0 38.5,79.8 < 30 |only if walking
click Brazier of Awakening##241775 |quest 38788 |goto Tanaan Jungle/0 37.7,80.8 |future
|tip It's a small bowl with purple fire in it, inside this smaller hut building on the beach.
step
_Follow_ the path up |goto Tanaan Jungle/0 38.5,80.1 < 30 |only if walking
_Enter_ the cave |goto Tanaan Jungle/0 37.4,75.9 < 30 |walk
_Follow_ the path |goto Tanaan Jungle/0 35.3,76.3 < 30 |walk
_Jump over_ to the rock here |goto Tanaan Jungle/0 35.0,77.0 < 10 |walk
click Stashed Iron Sea Booty##241715 |quest 38761 |goto Tanaan Jungle/0 35.0,77.3 |future
|tip It looks like a wooden chest sitting up on a rock platform in the water inside the cave.
step
_Jump over_ to the big log here |goto Tanaan Jungle/0 34.9,77.4 < 10 |only if walking
click Stashed Iron Sea Booty##241716 |quest 38762 |goto Tanaan Jungle/0 34.4,78.3 |future
|tip It looks like a small wooden chest sitting up on a rock platform in the water inside the cave, behind a rock.
step
_Jump over_ to the rock platform here |goto Tanaan Jungle/0 34.3,77.8 < 10 |only if walking
_Jump up and over_ to the rock path here |goto Tanaan Jungle/0 33.9,77.7 < 10 |only if walking
click Stashed Iron Sea Booty##241714 |quest 38760 |goto Tanaan Jungle/0 33.9,78.1 |future
|tip It looks like a small wooden chest, sitting up on a rock platform on the wall inside the cave.
step
_Jump down_ and _swim underwater_ through here |goto Tanaan Jungle/0 35.1,78.3 < 20 |only if walking
_Jump onto_ the rock here |goto Tanaan Jungle/0 35.4,78.3 < 10 |only if walking
_Jump over_ to the rock platform |goto Tanaan Jungle/0 35.7,78.5 < 10 |only if walking
_Jump up onto_ the splintered board |goto Tanaan Jungle/0 35.7,78.8 < 10 |only if walking
click Ironbeard's Treasure##241712 |quest 38758 |goto Tanaan Jungle/0 35.9,78.6 |future
|tip It looks like a big metal chest sitting up on this rock platform inside the cave.
step
_Follow_ the path up |goto Tanaan Jungle/0 31.0,63.3 < 30 |only if walking
_Run up_ the stairs |goto Tanaan Jungle/0 28.8,66.8 < 30 |only if walking
_Continue_ up the stairs |goto Tanaan Jungle/0 29.2,68.4 < 30 |only if walking
_Follow_ the stairs up |goto Tanaan Jungle/0 30.3,70.3 < 30 |only if walking
click Polished Crystal##225774 |quest 38629 |goto Tanaan Jungle/0 30.4,72.0 |future
|tip It looks like a small dark blue crystal sitting in an opened chest on a wooden table.
step
_Enter_ the building |goto Tanaan Jungle/0 32.0,70.8 < 20 |walk
click Tome of Secrets##240855 |quest 38426 |goto Tanaan Jungle/0 32.4,70.4 |future
|tip It looks like a big open book laying on a pedastal inside this small building.
step
_Run down_ the stairs |goto Tanaan Jungle/0 30.7,71.2 < 30 |only if walking
_Continue_ down the stairs |goto Tanaan Jungle/0 29.5,68.7 < 30 |only if walking
_Follow_ the stairs down |goto Tanaan Jungle/0 28.7,67.3 < 30 |only if walking
_Follow_ the road |goto Tanaan Jungle/0 29.6,61.6 < 30 |only if walking
_Run on_ the dirt path |goto Tanaan Jungle/0 28.3,60.8 < 30 |only if walking
_Follow_ the path up |goto Tanaan Jungle/0 25.9,61.4 < 20 |only if walking
click Grappling Hook and Rope##230950 |goto Tanaan Jungle/0 26.4,62.0 < 10
|tip It looks like a coiled up rope on the ground.
click Looted Bleeding Hollow Treasure##241565 |quest 38741 |goto Tanaan Jungle/0 26.5,62.9 |future
|tip It looks like a metal and wooden treasure chest, sitting on the ground at the top of this tower.
step
_Follow_ the road |goto Tanaan Jungle/0 24.2,59.8 < 30 |only if walking
_Enter_ the tower |goto Tanaan Jungle/0 16.4,58.6 < 20 |walk
click The Eye of Grannok##241713 |quest 38757 |goto Tanaan Jungle/0 16.0,59.4 |future
|tip It looks like a white orb sitting in a spiked pedastal on the middle level of this tower.
step
_Leave_ the tower |goto Tanaan Jungle/0 16.4,58.5 < 20 |walk
click Spoils of War##241699 |quest 38755 |goto Tanaan Jungle/0 17.4,56.9 |future
|tip It looks like a big wooden chest sitting on the ground inside this small hut.
step
_Enter_ the tower |goto Tanaan Jungle/0 15.3,54.7 < 20 |walk
click Axe of the Weeping Wolf##241692 |quest 38754 |goto Tanaan Jungle/0 15.0,54.4 |future
|tip It looks like a big axe, hanging in the hand of a dead orc hanging from a chain, under the stairs on the bottom level of this tower.
step
_Leave_ the tower |goto Tanaan Jungle/0 15.4,55.0 < 20 |walk
click Stolen Captain's Chest##240543 |quest 38283 |goto Tanaan Jungle/0 17.0,52.9 |future
|tip It looks like a small wooden chest sitting on the ground next to a dead orc at the base of this big tree.
step
_Enter_ the cave |goto Tanaan Jungle/0 17.0,50.3 < 20 |walk
_Follow_ the path left | goto Tanaan Jungle/0 16.4,48.7 < 20 |walk
_Run up_ the path |goto Tanaan Jungle/0 15.9,49.2 < 20 |walk
click Weathered Axe##240289 |quest 38208 |goto Tanaan Jungle/0 15.9,49.7 |future
|tip It looks like an axe lodged into the head of a tombstone, behind a dirt grave in this cave.
step
_Leave_ the cave |goto Tanaan Jungle/0 17.0,50.3 < 30 |walk
_Run up_ the path |goto Tanaan Jungle/0 19.4,52.4 < 30 |only if walking
_Continue_ following the path up |goto Tanaan Jungle/0 21.3,49.5 < 30 |only if walking
_Enter_ the building |goto Tanaan Jungle/0 22.0,48.1 < 20 |walk
click Bleeding Hollow Warchest##241560 |quest 38678 |goto Tanaan Jungle/0 22.0,47.8 |future
|tip It looks like a large wooden chest inside this small building.
step
_Follow_ the path |goto Tanaan Jungle/0 23.5,49.7 < 30 |only if walking
click Grappling Hook and Rope##241659 |goto Tanaan Jungle/0 24.7,49.8 < 10
|tip It looks like a coiled up rope on the ground.
click Borrowed Enchanted Spyglass##241664 |quest 38735 |goto Tanaan Jungle/0 25.3,50.2 |future
|tip It looks like a big metal telescope mounted on a wooden tripod at the top of this tower.
step
_Follow_ the path |goto Tanaan Jungle/0 24.4,48.5 < 30 |only if walking
_Run up_ the dirt path |goto Tanaan Jungle/0 27.6,47.2 < 30 |only if walking
_Continue_ up the path |goto Tanaan Jungle/0 27.8,44.2 < 30 |only if walking
_Follow_ the dirt road |goto Tanaan Jungle/0 30.4,43.0 < 30 |only if walking
_Run down_ the path |goto Tanaan Jungle/0 30.7,39.7 < 30 |only if walking
_Go down_ the spiral path into the cave |goto Tanaan Jungle/0 32.6,37.2 < 20 |only if walking
_Follow_ the path |goto Tanaan Jungle/0 32.3,37.0 < 20 |only if walking
_Continue_ through the tunnel |goto Tanaan Jungle/0 32.1,38.6 < 30 |only if walking
_Jump down_ here |goto Tanaan Jungle/0 32.6,37.4 < 20 |only if walking
_Follow_ the path |goto Tanaan Jungle/0 33.0,36.8 < 20 |only if walking
click Skull of the Mad Chief##241674 |quest 38742 |goto Tanaan Jungle 34.70,34.60 |future
|tip It looks like a big skull with a glowing eye stuck in the wall in the very bottom room of this cave.
step
_Follow_ the path up and out of the cave |goto Tanaan Jungle/0 32.3,37.9 < 20 |only if walking
_Run up_ the green log |goto Tanaan Jungle/0 31.7,39.4 < 20 |only if walking
_Follow_ the dirt path up |goto Tanaan Jungle/0 29.1,40.2 < 30 |only if walking
_Continue_ following the path |goto Tanaan Jungle/0 27.4,40.8 < 30 |only if walking
_Keep following_ the path |goto Tanaan Jungle/0 24.2,39.7 < 30 |only if walking
_Run down_ the path |goto Tanaan Jungle/0 21.9,40.6 < 30 |only if walking
click The Blade of Kra'nak##240577 |quest 38320 |goto Tanaan Jungle/0 19.3,40.9 |future
|tip it looks like a large dagger in the hand of a stone statue underwater.
step
_Follow_ the path up |goto Tanaan Jungle/0 20.1,40.9 < 30 |only if walking
_Continue_ following the path |goto Tanaan Jungle/0 22.0,40.5 < 30 |only if walking
_Follow_ the path |goto Tanaan Jungle/0 23.8,36.9 < 30 |only if walking
_Run up_ the dirt path |goto Tanaan Jungle/0 25.0,33.8 < 30 |only if walking
_Jump across_ to the ledge while mounted |goto Tanaan Jungle/0 30.2,32.1 < 20 |only if walking
_Jump across_ again while mounted |goto Tanaan Jungle/0 30.6,31.8 < 20 |only if walking
_Run up_ the path |goto Tanaan Jungle/0 30.9,31.3 < 30 |only if walking
click Jeweled Arakkoa Effigy##241657 |quest 38732 |goto Tanaan Jungle/0 31.4,31.1 |future
|tip It looks like a stone bird statue sittion on a small round table up on this cliff ledge.
step
_Enter_ the cave |goto Tanaan Jungle/0 29.2,31.3 < 20 |walk
_Jump up_ on the rocks |goto Tanaan Jungle/0 28.9,34.4 < 20 |walk
click Partially Mined Apexis Crystal##242249 |quest 38863 |goto Tanaan Jungle/0 28.9,34.6 |future
|tip It looks like a big dark yellow crystal sticking out of the wall in the back of this cave.
step
_Leave_ the cave |goto Tanaan Jungle/0 29.2,31.3 < 30 |walk
_Carefully_ jump down the cliff |goto Tanaan Jungle/0 28.6,27.1 < 30 |only if walking
click Jewel of Hellfire##240580 |quest 38334 |goto Tanaan Jungle/0 28.7,23.3 |future
|tip It looks like a red crystal lodged into the skull of this skeleton laying on the ground in the middle of a bunch of trees on the beach.
step
_Follow_ the path |goto Tanaan Jungle/0 41.3,43.3 < 30 |only if walking
_Enter_ the building |goto Tanaan Jungle/0 38.0,44.7 < 30 |walk
_Follow_ the path |goto Tanaan Jungle/0 37.4,44.4 < 20 |walk
click Pale Removal Equipment##241524 |quest 38640 |goto Tanaan Jungle/0 37.1,46.2 |future
|tip It looks like a wooden chest sitting on the ground next to the wall and some dead orcs.
step
_Follow_ the road |goto Tanaan Jungle/0 41.7,42.6 < 30 |only if walking
_Run up_ the path |goto Tanaan Jungle/0 38.6,39.4 < 30 |only if walking
_Follow_ the path up |goto Tanaan Jungle/0 38.8,42.1 < 30 |only if walking
_Run up_ the ladder |goto Tanaan Jungle/0 37.8,43.5 < 20 |only if walking
click Strange Sapphire##240003 |quest 37956 |goto Tanaan Jungle/0 36.4,43.4 |future
|tip It looks like a big floating blue heart shaped gem inside a cage up on a hill.
step
_Follow_ the path |goto Tanaan Jungle/0 38.5,39.4 < 30 |only if walking
_Run up_ the path |goto Tanaan Jungle/0 40.9,37.7 < 30 |only if walking
_Enter_ the building |goto Tanaan Jungle/0 42.5,37.8 < 20 |only if walking
click The Commander's Shield##241847 |quest 38821 |goto Tanaan Jungle/0 43.2,38.3 |future
|tip It looks like a round metal shield leaning on the wall inside this building.
step
_Leave_ the building |goto Tanaan Jungle/0 42.5,37.8 < 20 |walk
_Enter_ the tower |goto Tanaan Jungle/0 43.0,35.8 < 20 |walk
click Dazzling Rod##241848 |quest 38822 |goto Tanaan Jungle/0 42.9,35.4 |future
|tip It looks like a staff with a purple glowing crystal at the top of it, leaning on a pillar at the top of this tower.
step
_Follow_ the path |goto Tanaan Jungle/0 43.6,37.7 < 30 |only if walking
_Continue_ following the path |goto Tanaan Jungle/0 44.1,41.9 < 30 |only if walking
click Fel-Drenched Satchel##241745 |quest 38773 |goto Tanaan Jungle/0 46.9,44.4 |future
|tip It looks like a tan leather box sitting in the huge half-submerged wooden wagon in a stream of green liquid.
step
_Follow_ the path |goto Tanaan Jungle/0 47.9,43.9 < 30 |only if walking
click Sacrificial Blade##241760 |quest 38776 |goto Tanaan Jungle/0 46.8,42.2 |future
|tip It looks like a dagger stabbed into a stone next to a pool of green liquid.
step
_Follow_ the path up |goto Tanaan Jungle/0 47.3,42.8 < 30 |only if walking
_Follow_ the path left |goto Tanaan Jungle/0 47.5,37.2 < 30 |only if walking
click Book of Zyzzix##241742 |quest 38771 |goto Tanaan Jungle/0 46.9,36.7 |future
|tip It looks like a big open book, floating above a small table.
step
_Follow_ the path up |goto Tanaan Jungle/0 58.8,35.3 < 30 |only if walking
_Continue_ up the path |goto Tanaan Jungle/0 58.0,30.9 < 30 |only if walking
_Turn_ and _keep running_ up the path |goto Tanaan Jungle/0 53.8,31.7 < 30 |only if walking
_Turn again_ and _run up_ the path |goto Tanaan Jungle/0 55.7,29.5 < 30 |only if walking
_Keep running_ up the path |goto Tanaan Jungle/0 54.5,29.1 < 30 |only if walking
_Turn left_ and _follow_ the green liquid river |goto Tanaan Jungle/0 55.0,26.5 < 20 |only if walking
_Jump across_ onto the rocks here |goto Tanaan Jungle/0 53.5,27.2 < 20 |only if walking
_Jump across_ the green river from here |goto Tanaan Jungle/0 52.5,28.9 < 10 |only if walking
_Jump_ to the other big rock here |goto Tanaan Jungle/0 52.4,30.0 < 20 |only if walking
_Jump down_ carefully to the flat ledge below here |goto Tanaan Jungle/0 51.7,31.1 < 20
click Fel-Tainted Apexis Formation##242649 |quest 39075 |goto Tanaan Jungle/0 51.6,32.6 |future
|tip It looks like a dark colored crystal growing out of the side of the edge of this ledge.
|tip You may need a group to help you get to this spot.
step
_Run up_ the path |goto Tanaan Jungle/0 53.8,31.7 < 30 |only if walking
_Turn_ and _run up_ the path |goto Tanaan Jungle/0 55.7,29.5 < 30 |only if walking
_Keep running_ up the path |goto Tanaan Jungle/0 54.5,29.1 < 30 |only if walking
_Follow_ the path |goto Tanaan Jungle/0 55.0,26.5 < 20 |only if walking
click Rune Etched Femur##241566 |quest 38686 |goto Tanaan Jungle/0 51.7,24.3 |future
|tip It looks like a bone sticking out of a small pool of green liquid.
|tip You may need a group to help you get to this spot.
step
_Follow_ the path |goto Tanaan Jungle/0 56.2,25.5 < 30 |only if walking
click Jewel of the Fallen Star##241561 |quest 38679 |goto Tanaan Jungle/0 58.5,25.3 |future
|tip It looks like a huge blue and green crystal sitting on the ground.
|tip You may need a group to help you get to this spot.
step
_Follow_ the path |goto Tanaan Jungle/0 59.1,25.1 < 30 |only if walking
_Run up_ the path |goto Tanaan Jungle/0 60.3,23.3 < 30 |only if walking
_Run up_ here |goto Tanaan Jungle/0 63.2,20.9 < 20 |only if walking
click Censer of Torment##241563 |quest 38682 |goto Tanaan Jungle/0 62.6,20.5 |future
|tip It's a large skull sitting on a stone blod-stained table.
|tip You may need a group to help you get to this spot.
step
_Follow_ the path down |goto Tanaan Jungle/0 62.2,22.7 < 30 |only if walking
_Run up_ the path |goto Tanaan Jungle/0 59.3,24.1 < 30 |only if walking
_Follow_ the path |goto Tanaan Jungle/0 55.5,25.5 < 30 |only if walking
_Run down_ the path |goto Tanaan Jungle/0 55.5,27.2 < 30 |only if walking
_Jump down_ here |goto Tanaan Jungle/0 55.5,28.4 < 20 |only if walking
_Carefully_ jump down here |goto Tanaan Jungle/0 55.5,31.0 < 20 |only if walking
_Run down_ the path |goto Tanaan Jungle/0 58.5,31.3 < 30 |only if walking
_Follow_ the path |goto Tanaan Jungle/0 59.2,35.6 < 30 |only if walking
_Run up_ the path |goto Tanaan Jungle/0 62.4,32.9 < 30 |only if walking
_Follow_ the path up |goto Tanaan Jungle/0 62.2,30.3 < 30 |only if walking
|tip If the green fire is blocking your way into the cave, you must wait and complete the Garrison Campaign quest "The Warlock", which only has a chance to be available each week. Use "The Warlock" Garrison Campaign guide to accomplish this.
click Forgotten Shard of the Cipher##241671 |quest 38740 |goto Tanaan Jungle 63.3,28.1 |future
|tip It looks like a small white object on the ground next to a huge vertical bone.
step
_Follow_ the path |goto Tanaan Jungle/0 62.2,30.3 < 30 |only if walking
_Continue_ following the path |goto Tanaan Jungle/0 62.9,38.1 < 30 |only if walking
click Loose Soil##241606
|tip It looks like a pile of dirt on the ground. You will get thrown up into a nearby tree.
click Strange Fruit##241599 |quest 38701 |goto Tanaan Jungle/0 64.6,42.1 |future
|tip It looks like a huge roundish yellow fruit sitting at the end of a branch. Walk carefully on the branch to get to it.
step
_Follow_ the path |goto Tanaan Jungle/0 59.4,42.0 < 30 |only if walking
_Run on_ the road |goto Tanaan Jungle/0 58.5,52.6 < 30 |only if walking
_Follow_ the path |goto Tanaan Jungle/0 69.5,53.4 < 30 |only if walking
click Forgotten Iron Horde Supplies##241602 |quest 38704 |goto Tanaan Jungle/0 69.8,56.0 |future
|tip It looks like a wooden crate sitting on a table inside this small hut.
step
_Follow_ the path |goto Tanaan Jungle/0 71.5,49.3 < 30 |only if walking
_Run up_ the rocks here |goto Tanaan Jungle/0 73.0,44.1 < 20 |only if walking
click Stashed Bleeding Hollow Loot##241764 |goto Tanaan Jungle/0 73.6,43.2 |quest 38779 |future
|tip It looks like a wooden chest sitting on the ground next to the building at the top of these rocks.
step
You still need more treasures: |only if not achieved(10262)
Click to restart this guide |confirm |next "tanaan_treasure_start" |only if not achieved(10262)
|tip This will help you go back and get any treasures you missed. |only if not achieved(10262)
Congratulations! You earned the: |only if achieved(10262)
_Jungle Treasure Hunter_ Achievement |only if achieved(10262)
_Jungle Treasure Master_ Achievement |only if achieved(10262)
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Jungle Hunter/Stalker",{
condition_end=function() return achieved(10070) end,
achieveid={10259, 10070,10070},
patch='60200',
description="\nThis guide will walk you through defeating all of the rare creatures in Tanaan Jungle.",
},[[
step
_WARNING:_ This achievement will take a while
|tip These creatures are rare and have long respawn times, so you will have to either camp them and wait patiently for them to spawn, or keep visiting the locations repeatedly each day until you get them.
|tip You will likely not get these in the order they're listed in the guide.
|confirm |complete achieved(10070)
step
label "tanaan_rares_start"
_Follow_ the path |goto Tanaan Jungle/0 55.0,64.4 < 30 |only if walking
_Follow_ the dirt path up |goto Tanaan Jungle/0 56.9,67.5 < 30 |only if walking
kill Broodlord Ixkor##92429 |achieve 10070/29 |goto Tanaan Jungle/0 57.6,67.2
|tip It's a big blue reaver bug.
step
_Follow_ the dirt path |goto Tanaan Jungle/0 54.0,69.5 < 30 |only if walking
_Run on_ this path |goto Tanaan Jungle/0 55.5,78.6 < 30 |only if walking
kill Soulslicer##92495 |achieve 10070/30 |goto Tanaan Jungle/0 62.6,72.2
|tip It looks like a Blackfang wolf mob casting a green spell up on this rock hill.
|tip You will likely need a group to help you.
step
_Follow_ the path up |goto Tanaan Jungle/0 61.3,78.5 < 30 |only if walking
_Enter_ the cave |goto Tanaan Jungle/0 62.6,80.1 < 20 |walk
kill Gloomtalon##92508 |achieve 10070/31 |goto Tanaan Jungle/0 63.6,81.1
|tip It looks like a Blackfang wolf mob casting spell next to the burned out bonfire inside this cave.
|tip You will likely need a group to help you.
step
_Follow_ the path |goto Tanaan Jungle/0 58.0,78.1 < 30 |only if walking
_Run down_ the path |goto Tanaan Jungle/0 54.8,77.9 < 30 |only if walking
_Run up_ the dirt path |goto Tanaan Jungle/0 52.7,78.8 < 30 |only if walking
_Follow_ the path up |goto Tanaan Jungle/0 51.6,78.9 < 30 |only if walking
kill Krell the Serene##92517 |achieve 10070/32 |goto Tanaan Jungle/0 52.0,83.6
|tip It looks like a big Blackfang mob kneeling down with a sword in its hand.
|tip You will likely need a group to help you.
step
_Follow_ the path |goto Tanaan Jungle/0 51.6,78.7 < 30 |only if walking
_Follow_ the path up |goto Tanaan Jungle/0 51.3,77.9 < 30 |only if walking
_Continue_ following the path |goto Tanaan Jungle/0 50.0,76.9 < 30 |only if walking
_Enter_ the cave |goto Tanaan Jungle/0 49.9,74.4 < 20 |walk
kill The Blackfang##92465 |achieve 10070/33 |goto Tanaan Jungle/0 48.8,73.2
|tip It looks like a big armored Blackfang mob standing inside this cave.
|tip You will likely need a group to help you.
step
_Follow_ the path |goto Tanaan Jungle/0 54.0,69.3 < 30 |only if walking
kill Magwia##93002 |achieve 10070/17 |goto Tanaan Jungle/0 52.2,65.0
|tip It looks like a huge grey riverbeast standing on the edge of the water.
step
_Follow_ the path up |goto Tanaan Jungle/0 49.0,63.5 < 30 |only if walking
_Run on_ this dirt road |goto Tanaan Jungle/0 47.7,63.2 < 30 |only if walking
kill Shadowthrash##93236 |achieve 10070/54 |goto Tanaan Jungle/0 49.6,61.0
|tip It looks like a big purple demon lizard in the grass next to some trees.
step
kill Captain Grok'mar##93264 |achieve 10070/59 |goto Tanaan Jungle/0 48.6,57.2
|tip He looks like an armored orc sitting on the ground near the wall in this orc camp.
step
_Follow_ the path |goto Tanaan Jungle/0 46.8,65.7 < 30 |only if walking
kill Direwing Predator##89788+
|tip They are big gray bats flying in the sky all around this swampy area. You may need help, if you don't have any ranged abilities to pull them down.
collect 10 Smelly Musk Gland##124045 |n
use Smelly Musk Gland##124045
kill Rendrak##92627 |achieve 10070/37 |goto Tanaan Jungle/0 43.5,73.2
|tip It looks like a big bat that attacks you after you use the Smelly Musk Glands.
step
clicknpc Mutilated Corpse##92651+
|tip They look like dead orcs laying on the ground all around this swampy area. They are a little hard to see, so keep an eye out for sparkling things on the ground. They tend to be near the raptors.
Receive the _"Marked by the Night Hunter"_ Buff _10_ Times
|tip You can also get a charge of the buff by approaching, but not attacking, the decoy Night Hunters that appear around this whole area. They look like shadowy big ogres.
kill The Night Haunter##92636 |achieve 10070/37 |goto Tanaan Jungle/0 38.0,72.1
|tip It looks like a big ogre that attacks you after you receive the "Marked by the Night Hunter" buff 10 times.
step
_Enter_ the cave |goto Tanaan Jungle/0 44.6,77.6 < 30 |walk
_Follow_ the path |goto Tanaan Jungle/0 46.8,76.3 < 30 |only if walking
_Run up_ the path |goto Tanaan Jungle/0 48.0,77.3 < 30 |only if walking
_Follow_ the path |goto Tanaan Jungle/0 49.6,79.3 < 30 |only if walking
_Continue_ following the path |goto Tanaan Jungle/0 50.9,78.2 < 30 |only if walking
kill Bleeding Hollow Horror##92657 |achieve 10070/48 |goto Tanaan Jungle/0 50.8,74.6
|tip It looks like a big green ogre with green fog around him.
step
_Leave_ the cave |goto Tanaan Jungle/0 44.6,77.6 < 30 |walk
kill Sylissa##92606 |achieve 10070/36 |goto Tanaan Jungle/0 40.8,78.8
|tip It looks like a big snake in the water.
step
_Enter_ the cave |goto Tanaan Jungle/0 37.3,76.0 < 30 |walk
_Run down_ the path |goto Tanaan Jungle/0 36.4,76.9 < 20 |walk
_Continue_ into the open room |goto Tanaan Jungle/0 36.7,78.9 < 20 |walk
kill Captain Ironbeard##93076 |achieve 10070/42 |goto Tanaan Jungle/0 36.4,79.5
|tip He looks like a skeleton that walks around this room, so he may not be in this exact spot.
step
_Enter_ the cave |goto Tanaan Jungle/0 37.3,76.0 < 30 |walk
_Jump down_ here |goto Tanaan Jungle/0 35.0,76.6 < 20 |walk
_Jump up_ here |goto Tanaan Jungle/0 34.9,77.2 < 10 |walk
_Jump over_ onto the big brown vine |goto Tanaan Jungle/0 34.8,77.5 < 20 |walk
click Ironbeard's Treasure##241712
|tip It looks like a big metal chest sitting up on this island inside this cave.
kill Glub'glok##93125 |achieve 10070/43 |goto Tanaan Jungle/0 34.5,77.9
|tip He looks like a big red lobster that spawns after you click the chest.
step
_Leave_ the cave |goto Tanaan Jungle/0 37.3,76.0 < 30 |walk
_Enter_ the hole in the ground |goto Tanaan Jungle/0 36.2,72.4 < 20 |walk
kill The Goreclaw##92694 |achieve 10070/39 |goto Tanaan Jungle/0 34.6,72.6
|tip It looks like a big green-blue raptor at the back of this cave.
step
_Leave_ the hole in the ground |goto Tanaan Jungle/0 36.2,72.4 < 20 |walk
_Enter_ the hole in the ground |goto Tanaan Jungle/0 42.4,68.9 < 20 |walk
_Follow_ the path |goto Tanaan Jungle/0 40.5,69.3 < 30 |walk
kill Kris'kar the Unredeemed##93279 |achieve 10070/49 |goto Tanaan Jungle/0 39.6,68.1
|tip He looks like a big yellow bird in this room inside this cave.
step
_Leave_ the hole in the ground |goto Tanaan Jungle/0 42.4,68.9 < 20 |walk
kill Bramblefell##91093 |achieve 10070/2 |goto Tanaan Jungle/0 39.9,69.9
|tip He looks like a huge tree that walks around this area in the north part of the swamp. You may need to search for him.
step
_Follow_ the path up |goto Tanaan Jungle/0 31.1,63.1 < 30 |only if walking
_Run up_ the stairs |goto Tanaan Jungle/0 28.8,67.0 < 30 |only if walking
_Continue_ up the stairs |goto Tanaan Jungle/0 29.2,68.5 < 30 |only if walking
_Run up_ the stairs again |goto Tanaan Jungle/0 30.4,68.6 < 30 |only if walking
kill Ceraxas##90434 |achieve 10070/8 |goto Tanaan Jungle/0 31.4,68.0
|tip It looks like a huge green wolf.
step
_Run up_ the stairs |goto Tanaan Jungle/0 30.3,70.3 < 30 |only if walking
kill Imp-Master Valessa##90429 |achieve 10070/5 |goto Tanaan Jungle/0 31.6,72.6
|tip She looks like a draenei with a bunch of imps on the ground around her. She walks around this area, so you may need to search for her.
step
_Enter_ the cave |goto Tanaan Jungle/0 29.5,70.8 < 30 |walk
_Follow_ the path |goto Tanaan Jungle/0 28.9,72.8 < 30 |walk
kill Lady Oran##90438 |achieve 10070/6 |goto Tanaan Jungle/0 29.6,70.6
|tip She looks like a brownish colored draenei inside this cave. She may not spawn at this spot, so you may need to search for her between her 2 spawn points.
She can also spawn outside the cave at [Tanaan Jungle/0 32.5,74.0]
step
_Enter_ the cave |goto Tanaan Jungle/0 29.5,70.8 < 30 |walk
_Follow_ the path |goto Tanaan Jungle/0 28.9,72.8 < 30 |walk
kill Jax'zor##90437 |achieve 10070/7 |goto Tanaan Jungle/0 26.6,75.0
|tip He looks like a felguard with a big flaming battle axe inside this cave.
step
_Enter_ the cave |goto Tanaan Jungle/0 29.5,70.8 < 30 |walk
_Follow_ the path |goto Tanaan Jungle/0 28.9,72.8 < 30 |walk
_Run up_ the ramp |goto Tanaan Jungle/0 26.8,74.5 < 30 |walk
_Follow_ the path |goto Tanaan Jungle/0 25.2,74.6 < 30 |walk
_Continue_ following the path |goto Tanaan Jungle/0 24.2,75.7 < 30 |walk
_Keep following_ the path around |goto Tanaan Jungle/0 24.9,78.6 < 30 |walk
kill Mistress Thavra##90442 |achieve 10070/9 |goto Tanaan Jungle/0 25.8,79.0
|tip She looks like a tall demon with six arms, wearing red armor, and holding four green swords inside this cave.
step
clicknpc Strongpoint##92969
|tip It looks like 2 yellow banners hanging from a wooden cross. They may not be there if someone already did it recently.
Kill the enemies that attack in waves.
|tip You may need help with this.
kill The Iron Houndmaster##92977 |achieve 10070/22 |goto Tanaan Jungle/0 12.6,56.9
|tip He looks like an armored orc that appears with the third wave of enemies.
step
kill Tho'gar Gorefist##91243 |achieve 10070/19 |goto Tanaan Jungle/0 13.6,57.6
|tip He's a heavily armored orc with bladed fist weapons that walks around this area. You may need to search for him.
step
clicknpc Strongpoint##92969
|tip It looks like 2 yellow banners hanging from a wooden cross. They may not be there if someone already did it recently.
Kill the enemies that attack in waves.
|tip You may need help with this. You will also be bombarded with mortar attacks.
kill Szirek the Twisted##93001 |achieve 10070/21 |goto Tanaan Jungle/0 15.8,57.5
|tip He looks like a big orc warlock that jumps down from a huge nearby cannon after the big wave of mortar attacks.
step
_Enter_ the tower |goto Tanaan Jungle/0 16.3,58.8 < 20 |walk
kill Grannok##93057 |achieve 10070/20 |goto Tanaan Jungle/0 16.0,59.2
|tip He looks like a big orc warlock casting a green spell at the top of this tower.
step
_Enter_ the tower |goto Tanaan Jungle/0 15.3,54.7 < 20 |walk
kill Commander Krag'goth##91232 |achieve 10070/18 |goto Tanaan Jungle/0 15.0,54.2
|tip He looks like a brown orc with a big spiked mace in his hand at the top of this tower.
step
_Enter_ the cave |goto Tanaan Jungle/0 17.0,50.2 < 30 |walk
kill Podlord Wakkawam##91374 |achieve 10070/1 |goto Tanaan Jungle/0 16.8,49.2
|tip He is a big podling with yellow leaves surrounding his head that walks around inside this cave.
step
_Enter_ the small building |goto Tanaan Jungle/0 20.5,49.9 < 20 |walk
kill Rogond the Tracker##90885 |achieve 10070/24 |goto Tanaan Jungle/0 20.4,49.6
|tip He looks like a big warpainted orc with a big battle axe inside this small hut.
step
_Follow_ the path |goto Tanaan Jungle/0 23.4,48.4 < 30 |only if walking
kill Drivnul##90888 |achieve 10070/26 |goto Tanaan Jungle/0 25.6,46.2
|tip He looks like an orc casting a red spell next to a red pool on the ground.
step
kill Dorg the Bloody##90887 |achieve 10070/25 |goto Tanaan Jungle/0 22.0,50.2
|tip He looks like shadowy purple ogre that walks all around this area. You may need to search for him.
step
_Run up_ the path |goto Tanaan Jungle/0 21.0,52.7 < 30 |only if walking
click Grappling Hook and Rope##241659
|tip It looks like a rope coiled up on the ground.
kill Driss Vile##93028 |achieve 10070/41 |goto Tanaan Jungle/0 20.2,53.4
|tip He looks like an orc aiming a big metal rifle at the top of this tower.
step
kill Bloodhunter Zulk##90936 |achieve 10070/27 |goto Tanaan Jungle/0 24.5,50.0
|tip He looks like an orc wearing armor and a red robe that spawns in front of the door of this tower. He walks around this whole area, so you may need to search for him.
step
_Enter_ the small building |goto Tanaan Jungle/0 23.6,52.0 < 20 |walk
kill Bilkor the Thrower##90884 |achieve 10070/23 |goto Tanaan Jungle/0 23.6,52.0
|tip He looks like an orc with a yellow mask over his mouth and a huge spear in his hand inside this small hut.
step
kill Relgor##92197 |achieve 10070/28 |goto Tanaan Jungle/0 26.2,54.4
|tip He looks like an orc with a huge spear on his back in this small camp next to a campfire.
step
_Follow_ the path down |goto Tanaan Jungle/0 29.1,55.8 < 30 |only if walking
_Follow_ the path |goto Tanaan Jungle/0 31.3,54.8 < 30 |only if walking
_Enter_ the cave |goto Tanaan Jungle/0 30.9,53.2 < 30 |walk
kill Felbore##93168 |achieve 10070/44 |goto Tanaan Jungle/0 28.8,50.8
|tip He looks like a big rock monster with green cracks all in him inside this cave.
step
_Follow_ the path down |goto Tanaan Jungle/0 30.7,39.7 < 30 |only if walking
_Run up_ the path |goto Tanaan Jungle/0 31.3,37.2 < 30 |only if walking
_Follow_ the dirt path |goto Tanaan Jungle/0 32.6,35.5 < 30 |only if walking
kill Gorabosh##92941 |achieve 10070/40 |goto Tanaan Jungle/0 33.3,35.9
|tip He looks like a big orc wearing a brown robe with a crystal-tipped spear in his hand. He walks up and down this dirt path, so you may need to search for him.
step
_Follow_ the path down |goto Tanaan Jungle/0 22.0,40.6 < 30 |only if walking
_Follow_ the path |goto Tanaan Jungle/0 19.9,40.5 < 30 |only if walking
_Go through_ the doorway |goto Tanaan Jungle/0 18.2,41.2 < 30 |walk
kill Rasthe##90782 |achieve 10070/13 |goto Tanaan Jungle/0 16.8,44.7
|tip He looks like a big bid skeleton flying in place low to the ground in a green aura.
step
_Follow_ the path |goto Tanaan Jungle/0 24.5,39.8 < 30 |only if walking
_Continue_ following the path |goto Tanaan Jungle/0 23.5,38.0 < 30 |only if walking
_Run on_ the dirt path |goto Tanaan Jungle/0 24.2,34.3 < 30 |only if walking
_Follow_ the path up |goto Tanaan Jungle/0 25.2,34.0 < 30 |only if walking
kill Varyx the Damned##92451 |achieve 10070/12 |goto Tanaan Jungle/0 27.7,32.8
|tip He's a big green feathered arakkoa standing up on this huge yellow platform. There are 5 green beams of light shooting into him from the ground. You will need a group of 5 people, with each person standing in a beam of light to free him, so you can kill him.
step
_Enter_ the building |goto Tanaan Jungle/0 38.5,44.3 < 30 |walk
_Go through_ the doorway |goto Tanaan Jungle/0 37.5,44.5 < 20 |walk
_Run up_ the stairs |goto Tanaan Jungle/0 36.9,45.8 < 30 |walk
_Continue_ up the stairs |goto Tanaan Jungle/0 35.9,47.4 < 30 |walk
_Follow_ the path |goto Tanaan Jungle/0 35.2,47.8 < 20	|walk
kill Belgork##92552 |achieve 10070/35 |goto Tanaan Jungle/0 35.6,46.8
|tip He looks like an armored orc holding an axe with spikes on it, standing up on this platform inside this building.
step
_Enter_ the building |goto Tanaan Jungle/0 38.5,44.3 < 30 |walk
_Go through_ the doorway |goto Tanaan Jungle/0 37.5,44.5 < 20 |walk
_Run up_ the stairs |goto Tanaan Jungle/0 36.9,45.8 < 30 |walk
_Follow_ the path |goto Tanaan Jungle/0 35.6,44.9 < 30 |walk
_Continue_ through the tunnel |goto Tanaan Jungle/0 34.5,43.9 < 30 |walk
kill Thromma the Gutslicer##92574 |achieve 10070/34 |goto Tanaan Jungle/0 34.0,44.6
|tip He looks like a big pale skinny orc crouched on the ground with a big dagger in his hand at the end of this tunnel inside this building.
step
_Run on_ the big dirt road |goto Tanaan Jungle/0 41.6,41.4 < 40 |only if walking
_Follow_ the path |goto Tanaan Jungle/0 39.6,37.2 < 30 |only if walking
kill Harbormaster Korak##90094 |achieve 10070/53 |goto Tanaan Jungle/0 39.5,32.6
|tip He looks like an armored orc standing on the edge of this dock.
step
_Run on_ the big dirt road |goto Tanaan Jungle/0 41.6,41.4 < 40 |only if walking
_Go up_ the wooden ramp |goto Tanaan Jungle/0 37.9,35.2 < 30 |only if walking
kill Zoug the Heavy##90122 |achieve 10070/52 |goto Tanaan Jungle/0 37.0,33.0
|tip He looks like a big orange-red Ogron standing on this dock.
step
_Follow_ the path |goto Tanaan Jungle/0 44.0,40.0 < 30 |only if walking
_Enter_ the building |goto Tanaan Jungle/0 43.9,37.1 < 20 |walk
_Go through_ the doorway |goto Tanaan Jungle/0 44.3,37.0 < 20 |walk
kill Remnant of Cindral##90522+
|tip They look like orange blobs on the floor inside this building.
kill Cindral the Wildfire##90519 |achieve 10070/10 |goto Tanaan Jungle/0 44.7,37.7
|tip He looks like a fire lava elemental that appears once you kill enough Remnants of Cindral inside this building. The Remnants of Cindral move around in this room, so you may need to search for them.
step
_Follow_ the path |goto Tanaan Jungle/0 44.0,40.0 < 30 |only if walking
_Run down_ the path |goto Tanaan Jungle/0 43.6,37.4 < 30 |only if walking
kill Sergeant Mor'grak##90024 |achieve 10070/11 |goto Tanaan Jungle/0 42.6,37.2
|tip He looks like an armored orc that walks up and down this path, so you may need to search for him.
step
_Run up_ the path |goto Tanaan Jungle/0 45.2,44.3 < 30 |only if walking
kill Felsmith Damorka##92647 |achieve 10070/55 |goto Tanaan Jungle/0 45.9,47.2
|tip She looks like a tall orc wearing a gas mask, standing in front of a table with chemistry equipment on it.
step
kill Commander Org'mok##89675 |achieve 10070/60 |goto Tanaan Jungle/0 48.8,44.8
|tip He looks like an armored orc holding a huge sword in his hand, riding a green wolf. He rides the wolf walking slowly all around this whole camp, so you may need to search for him.
step
kill Grand Warlock Nethekurse##91695 |achieve 10070/15 |goto Tanaan Jungle/0 47.0,42.6
|tip He looks like an armored orc with bright green hands wearing a brown robe, holding a sword. He walks slowly in a circle around this path where orcs are casting spells, so you may need to search for him.
step
_Run up_ the path |goto Tanaan Jungle/0 47.5,42.4 < 30 |only if walking
_Continue_ up the path |goto Tanaan Jungle/0 47.7,37.7 < 30 |only if walking
_Cross_ the bridge |goto Tanaan Jungle/0 48.4,36.6 < 30	|only if walking
kill Executor Riloth##91727 |achieve 10070/50 |goto Tanaan Jungle/0 49.8,36.2
step
kill Argosh the Destroyer##91871 |achieve 10070/51 |goto Tanaan Jungle/0 52.6,40.2
|tip He looks like a big elemental made of stone with parts of green fire in his body, standing on this island surrounded by green liquid. You have to kill the orc warlocks casting a spell on him before you can attack him.
step
_Follow_ the path up |goto Tanaan Jungle/0 58.8,35.3 < 30 |only if walking
_Continue_ up the path |goto Tanaan Jungle/0 58.0,30.9 < 30 |only if walking
_Jump across_ on the stones |goto Tanaan Jungle/0 51.5,32.5 < 20 |only if walking
_Run down_ the path |goto Tanaan Jungle/0 50.8,32.0 < 30 |only if walking
_Jump across_ on the stones |goto Tanaan Jungle/0 49.5,33.0 < 20 |only if walking
_Run up_ the path |goto Tanaan Jungle/0 48.5,33.7 < 30 |only if walking
_Continue_ up the path |goto Tanaan Jungle/0 47.3,33.5 < 30 |only if walking
_Enter_ the cave |goto Tanaan Jungle/0 48.1,32.7 < 30 |walk
kill Zeter'el##91087 |achieve 10070/3 |goto Tanaan Jungle/0 48.4,28.6
|tip It looks like a big green armored demon with wings inside this cave.
step
_Follow_ the path up |goto Tanaan Jungle/0 58.8,35.3 < 30 |only if walking
_Continue_ up the path |goto Tanaan Jungle/0 58.0,30.9 < 30 |only if walking
_Turn_ and _keep running_ up the path |goto Tanaan Jungle/0 53.8,31.7 < 30 |only if walking
_Turn again_ and _run up_ the path |goto Tanaan Jungle/0 55.7,29.5 < 30 |only if walking
_Keep running_ up the path |goto Tanaan Jungle/0 54.5,29.1 < 30 |only if walking
_Turn left_ and _follow_ the green liquid river |goto Tanaan Jungle/0 55.0,26.5 < 20 |only if walking
kill Felspark##91098 |achieve 10070/4 |goto Tanaan Jungle/0 52.8,25.6
|tip He looks like a big green fire elemental in this pool of green liquid.
step
_Follow_ the path up |goto Tanaan Jungle/0 58.8,35.3 < 30 |only if walking
_Continue_ up the path |goto Tanaan Jungle/0 58.0,30.9 < 30 |only if walking
_Turn_ and _keep running_ up the path |goto Tanaan Jungle/0 53.8,31.7 < 30 |only if walking
_Turn again_ and _run up_ the path |goto Tanaan Jungle/0 55.7,29.5 < 30 |only if walking
_Keep running_ up the path |goto Tanaan Jungle/0 54.5,29.1 < 30 |only if walking
_Follow_ the path |goto Tanaan Jungle/0 55.0,26.5 < 20 |only if walking
_Run up_ the path |goto Tanaan Jungle/0 55.4,23.6 < 30 |only if walking
_Follow_ the path |goto Tanaan Jungle/0 54.5,21.2 < 30 |only if walking
kill Painmistress Selora##92274 |achieve 10070/14 |goto Tanaan Jungle/0 53.6,21.6
|tip She looks like a succubus with spikes on her ankles and tails. You have to kill the enemies in front of the big green orb to summon her.
step
_Follow_ the path up |goto Tanaan Jungle/0 58.8,35.3 < 30 |only if walking
_Continue_ up the path |goto Tanaan Jungle/0 58.0,30.9 < 30 |only if walking
_Turn_ and _keep running_ up the path |goto Tanaan Jungle/0 53.8,31.7 < 30 |only if walking
_Turn again_ and _run up_ the path |goto Tanaan Jungle/0 55.7,29.5 < 30 |only if walking
_Keep running_ up the path |goto Tanaan Jungle/0 54.5,29.1 < 30 |only if walking
_Follow_ the path |goto Tanaan Jungle/0 55.0,26.5 < 20 |only if walking
_Run up_ the path |goto Tanaan Jungle/0 55.4,23.6 < 30 |only if walking
_Follow_ the path |goto Tanaan Jungle/0 54.5,21.2 < 30 |only if walking
_Run up_ the path |goto Tanaan Jungle/0 53.2,19.7 < 30 |only if walking
kill Overlord Ma'gruth##92411 |achieve 10070/58 |goto Tanaan Jungle/0 53.0,20.0
|tip He is a heavily armored orc with a skull on his belt that walks around this area.
|tip Kill orcs around this area to trigger this rare spawn.
step
_Follow_ the path up |goto Tanaan Jungle/0 58.8,35.3 < 30 |only if walking
_Continue_ up the path |goto Tanaan Jungle/0 58.0,30.9 < 30 |only if walking
_Turn_ and _keep running_ up the path |goto Tanaan Jungle/0 53.8,31.7 < 30 |only if walking
_Turn again_ and _run up_ the path |goto Tanaan Jungle/0 55.7,29.5 < 30 |only if walking
_Keep running_ up the path |goto Tanaan Jungle/0 54.5,29.1 < 30 |only if walking
_Follow_ the path |goto Tanaan Jungle/0 55.0,26.5 < 20 |only if walking
_Follow_ the dirt path |goto Tanaan Jungle/0 55.7,25.4 < 30 |only if walking
_Jump down_ here |goto Tanaan Jungle/0 56.6,25.2 < 30 |only if walking
kill Putre'thar##91009 |achieve 10070/56 |goto Tanaan Jungle/0 53.0,20.0
|tip It looks like two-headed demon dog with eyes sprouting from its back, standing in this pool of green liquid.
step
_Follow_ the path up |goto Tanaan Jungle/0 58.8,35.3 < 30 |only if walking
_Continue_ up the path |goto Tanaan Jungle/0 58.0,30.9 < 30 |only if walking
_Turn_ and _keep running_ up the path |goto Tanaan Jungle/0 53.8,31.7 < 30 |only if walking
_Turn again_ and _run up_ the path |goto Tanaan Jungle/0 55.7,29.5 < 30 |only if walking
_Keep running_ up the path |goto Tanaan Jungle/0 54.5,29.1 < 30 |only if walking
_Follow_ the path |goto Tanaan Jungle/0 55.0,26.5 < 20 |only if walking
_Follow_ the dirt path |goto Tanaan Jungle/0 55.7,25.4 < 30 |only if walking
_Continue_ following the path |goto Tanaan Jungle/0 58.3,26.2 < 30 |only if walking
kill Xanzith the Everlasting##92408 |achieve 10070/57 |goto Tanaan Jungle/0 60.2,21.0
|tip It looks like a giant peach colored demon blob with tentacles hanging from its body, floating above this pool of green liquid.
step
_Follow_ the path |goto Tanaan Jungle/0 59.6,37.4 < 40 |only if walking
kill Steelsnout##92887 |achieve 10070/16 |goto Tanaan Jungle/0 65.6,36.8
|tip He looks like a giant red boar with spikes on his body.
step
_Follow_ the path |goto Tanaan Jungle/0 54.7,76.7 < 30 |only if walking
kill Blackfang Prowler##89746+, Blackfang Shaman##92481+, Blackfang Savage##89695+, Blackfang Hunter##89747+
|tip They are all around this area. You can use the Group Finder and select Premade Groups -> Custom, then search for "Fang'rila" or "Blackfang". Being in a group will make this go much faster.
collect 40 Blackfang Claw##124099 |goto Tanaan Jungle/0 55.8,78.6 |complete achieved(10070,45) and achieved(10070,46) and achieved(10070,47)
step
_Follow_ the path |goto Tanaan Jungle/0 54.9,77.4 < 30 |only if walking
talk Z'tenga the Walker##92805
buy Minor Blackfang Challenge Totem##124093 |goto Tanaan Jungle/0 55.25,74.76 |complete achieved(10070,45)
buy Major Blackfang Challenge Totem##124094 |goto Tanaan Jungle/0 55.25,74.76 |complete achieved(10070,46)
buy Prime Blackfang Challenge Totem##124095 |goto Tanaan Jungle/0 55.25,74.76 |complete achieved(10070,47)
step
_Follow_ the path |goto Tanaan Jungle/0 54.7,75.9 < 30 |only if walking
_Enter_ the Challenge Arena |goto Tanaan Jungle/0 54.8,80.9 < 20 |only if walking
use Minor Blackfang Challenge Totem##124093
kill Akrrilo##92766 |achieve 10070/45 |goto Tanaan Jungle/0 54.4,81.0
|tip Other people can help you, or you can help other people who summon him. Everyone will get credit.
step
use Major Blackfang Challenge Totem##124094
kill Rendarr##92817 |achieve 10070/46 |goto Tanaan Jungle/0 54.4,81.0
|tip Other people can help you, or you can help other people who summon him. Everyone will get credit.
step
use Prime Blackfang Challenge Totem##124095
kill Eyepiercer##92819 |achieve 10070/47 |goto Tanaan Jungle/0 54.4,81.0
|tip Other people can help you, or you can help other people who summon him. Everyone will get credit.
step
You still need to kill more rare creatures: |only if not achieved(10070)
Click to restart this guide |confirm |next "tanaan_rares_start" |only if not achieved(10070)
|tip This will help you go back and get any rare creatures you missed. |only if not achieved(10070)
step
Congratulations! You earned the: |only if achieved(10070)
_Jungle Hunter_ Achievement |only if achieved(10070)
_Jungle Stalker_ Achievement |only if achieved(10070)
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Explore Tanaan Jungle",{
achieveid={10260},
patch='60200',
description="\nExplore Tanaan Jungle, revealing the covered areas of the world map.",
},[[
step
Complete the _Tanaan Jungle (100) Main Questline_ before finishing this guide
Explore Vol'mar |achieve 10260/13 |goto Tanaan Jungle/0 60.6,46.5
step
_Run up_ the path |goto Tanaan Jungle/0 56.9,55.0 < 30 |only if walking
Explore Lion's Watch |achieve 10260/10 |goto Tanaan Jungle/0 57.6,57.1
|tip Be careful, you're entering an Alliance camp. Run in quickly, discover the area, and run out.
step
_Follow_ the path |goto Tanaan Jungle/0 54.9,64.0 < 30 |only if walking
_Run up_ the path |goto Tanaan Jungle/0 54.0,70.1 < 30 |only if walking
Explore Fang'rila |achieve 10260/3 |goto Tanaan Jungle/0 54.8,76.2
step
_Follow_ the path |goto Tanaan Jungle/0 46.8,65.7 < 30 |only if walking
Explore Zorammarsh |achieve 10260/11 |goto Tanaan Jungle/0 44.7,68.8
step
_Follow_ the path up |goto Tanaan Jungle/0 31.0,63.2 < 30 |only if walking
Explore the Temple of Sha'naar |achieve 10260/12 |goto Tanaan Jungle/0 30.5,64.9
step
_Follow_ the dirt road |goto Tanaan Jungle/0 27.9,58.9 < 30 |only if walking
_Follow_ the path |goto Tanaan Jungle/0 21.3,58.8 < 30 |only if walking
Explore Zeth'Gol |achieve 10260/14 |goto Tanaan Jungle/0 21.9,56.0
step
Explore the Iron Front |achieve 10260/6 |goto Tanaan Jungle/0 9.9,53.2
step
_Run up_ the path |goto Tanaan Jungle/0 13.4,59.7 < 30 |only if walking
_Follow_ the path |goto Tanaan Jungle/0 15.0,63.6 < 30 |only if walking
Explore Rangari Refuge |achieve 10260/2 |goto Tanaan Jungle/0 17.3,64.0
step
Explore the Ruins of Kra'nak |achieve 10260/9 |goto Tanaan Jungle/0 23.8,39.6
step
Explore Ironhold Harbor |achieve 10260/7 |goto Tanaan Jungle/0 40.6,39.8
step
Explore the Fel Forge |achieve 10260/4 |goto Tanaan Jungle/0 45.3,43.3
step
_Follow_ the path |goto Tanaan Jungle/0 43.6,44.9 < 30 |only if walking
_Cross_ the bridge |goto Tanaan Jungle/0 44.0,47.7 < 30 |only if walking
_Run on_ the big road |goto Tanaan Jungle/0 47.8,51.8 < 30 |only if walking
Explore Hellfire Citadel |achieve 10260/5 |goto Tanaan Jungle/0 45.3,53.8
step
_Follow_ the road |goto Tanaan Jungle/0 54.9,47.2 < 30 |only if walking
_Follow_ the path up |goto Tanaan Jungle/0 58.8,35.3 < 30 |only if walking
_Continue_ up the path |goto Tanaan Jungle/0 58.0,30.9 < 30 |only if walking
_Turn_ and _keep running_ up the path |goto Tanaan Jungle/0 53.8,31.7 < 30 |only if walking
_Turn again_ and _run up_ the path |goto Tanaan Jungle/0 55.7,29.5 < 30 |only if walking
_Keep running_ up the path |goto Tanaan Jungle/0 54.5,29.1 < 30 |only if walking
Explore the Throne of Kil'jaeden |achieve 10260/8 |goto Tanaan Jungle/0 55.0,26.5 < 20
step
Explore Zeth'Kur |achieve 10260/1 |goto Tanaan Jungle/0 73.1,69.0
step
Congratulations, you earned the _Explore Tanaan Jungle_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\I Came, I Clawed, I Conquered",{
achieveid={10069},
patch='60200',
description="\nLoot 5,000 Blackfang Claws from saberon at Fang'rila in Tanaan Jungle.",
},[[
step
_Follow_ the path |goto Tanaan Jungle/0 54.7,76.7 < 30 |only if walking
kill Blackfang Prowler##89746+, Blackfang Shaman##92481+, Blackfang Savage##89695+, Blackfang Hunter##89747+
|tip They are all around this area. You can use the Group Finder and select Premade Groups -> Custom, then search for "Fang'rila" or "Blackfang". Being in a group will make this go much faster.
collect 5000 Blackfang Claw##124099 |achieve 10069
step
Congratulations, you earned the _I Came, I Clawed, I Conquered_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Hellbane",{
achieveid={10061},
patch='60200',
description="\nDefeat all of the champions of Tanaan Jungle.",
},[[
step
This achievement requires that you kill all 4 of the champions of Tanaan Jungle.
These champions require a group to kill.
|tip The loot from these monsters are personal and have a chance to drop mounts, reputation items, and will always drop oil.
confirm
step
kill Doomroller##95056 |goto Tanaan Jungle 46.9,52.6 |achieve 10061/4
step
kill Deathtalon##95053 |goto Tanaan Jungle 23.2,40.0 |achieve 10061/2
step
kill Terrorfist##95044 |goto Tanaan Jungle 14.9,63.4 |achieve 10061/1
step
kill Vengeance##95054 |goto Tanaan Jungle 32.5,74.0 |achieve 10061/3
step
Congratulations, you earned the _Hellbane_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\General\\Savagely Superior",{
achieveid={9707},
patch='60002',
description="\nWear an item with a minimal level of 608 or greater in each slot.",
},[[
step
For this achievement you will need to simply equip a Superior (blue) item of at least _item level 608_ in all your Armor and Weapon slots
For rings and trinkets you can just equip one ring or trinket in both slots seperately
You can either purchase these items from the AH, but it is recommended farming _Tanaan Jungle Daily Quests_ for items
confirm
step
Your progress with be tracked per slot below:
Neck |achieve 9707/1
Shoulders |achieve 9707/2
Chest |achieve 9707/3
Waist |achieve 9707/4
Legs |achieve 9707/5
Feet |achieve 9707/6
Wrist |achieve 9707/7
Hands |achieve 9707/8
Left Ring |achieve 9707/9
Right Ring |achieve 9707/10
First Trinket |achieve 9707/11
Second Trinket |achieve 9707/12
Cloak |achieve 9707/13
Weapon |achieve 9707/14
Head |achieve 9707/15
step
Congratulations, you have earned the _Savagely Superior_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\General\\Savagely Epic",{
achieveid={9708},
patch='60002',
description="\nWear an item with a minimal level of 640 or greater in each slot.",
},[[
step
For this achievement you will need to equip epic items of 640 or higher in every slot
You can acquire items from _Tanaan Jungle Daily Quests_ via drops or by using Apexis Crystals
You can also acquire these items doing _Raids_
Note that rings and trinkets can be used for both of their slots simply by switching
confirm
step
Your progress with be tracked per slot below:
Head |achieve 9708/1
Neck |achieve 9708/2
Shoulder |achieve 9708/3
Chest |achieve 9708/4
Waist |achieve 9708/5
Legs |achieve 9708/6
Feet |achieve 9708/7
Wrist |achieve 9708/8
Hands |achieve 9708/9
Left Ring|achieve 9708/10
Right Ring |achieve 9708/11
First Trinket |achieve 9708/12
Second Trinket |achieve 9708/13
Cloak |achieve 9708/14
Weapon |achieve 9708/15
step
Congratulations, you have earned the _Savagely Epic_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\General\\Draenor Cuisine",{
achieveid={9502},
patch='60001',
description="\nSample various Draenor foods.",
},[[
step
In order to earn this achievement, you will need to have the following buildings in your Garrison:
_Tradepost available_
_Herb Garden_
_Fishing Shack_
|tip It is highly recommened that you use what resources you have to buy fish, as all the fishing spots are random chance of any fish in Draenor.
confirm
step
talk Fayla Fairfeather##87116
accept Tricks of the Trade##37062 |goto Frostwall/0 51.18,59.06
only if not completedq(37062)
step
clicknpc Pyxni Pennypocket##87263
Use the Mug of Rousing Coffeee |use Mug of Rousing Coffee##118418
Trader Roused |q 37062/1 |goto 44.78,14.64
only if not completedq(37062)
step
talk Fayla Fairfeather##87116
turnin Tricks of the Trade##37062 |goto 51.16,59.11
only if not completedq(37062)
step
This step is here for the purpose of checking your progress with the achievement
Blackrock Barbeque |achieve 9502/1
Blackrock Ham |achieve 9502/2
Braised Riverbeast |achieve 9502/3
Calamari Crepes |achieve 9502/4
Clefthoof Sausages |achieve 9502/5
Fat Sleeper Cakes |achieve 9502/6
Fiery Calamari |achieve 9502/7
Frosty Stew |achieve 9502/8
Gorground Chowder |achieve 9502/9
Grilled Gulper |achieve 9502/10
Grilled Saberfish |achieve 9502/11
Hearty Elekk Steak |achieve 9502/12
Pan-Seared Talbuk |achieve 9502/13
Rylak Crepes |achieve 9502/14
Saberfish Broth |achieve 9502/15
Skulker Chowder |achieve 9502/16
Sleeper Surprise |achieve 9502/17
Steamed Scorpion |achieve 9502/18
Sturgeon Stew |achieve 9502/19
Talador Surf and Turf |achieve 9502/20
_
If you don't have Cooking, Fishing, a Trade Post and a Herb Garden Available in your Garrion, click here |confirm |next "buyah"
_
If you would like to gather your own materials using Garrison resources and cook yourself, click here |confirm |next "cook"
step
label "cook"
talk Pyxni Pennypocket##86778
You will need a trading post in your garrison to collect the following items:
_Meat_:
buy 30 Raw Boar Meat##109136
buy 30 Raw Clefthoof Meat##109131
buy 30 Raw Elekk Meat##109134
buy 30 Raw Riverbeast Meat##109135
buy 30 Raw Talbuk Meat##109132
buy 30 Rylak Egg##109133
Roughly 1440 Garrison Resources will be required to purchase all of these items
step
talk Pyxni Pennypocket##86778
_Fish_:
buy 60 Abyssal Gulper Eel Flesh##109143
buy 60 Blind Lake Sturgeon Flesh##109140
buy 10 Crescent Saberfish Flesh##109137
buy 60 Fat Sleeper Flesh##109139
buy 60 Fire Ammonite Tentacle##109141
buy 60 Jawless Skulker Flesh##109138
buy 60 Sea Scorpion Segment##109142
Rough 2960 Garrison Resources will be required to purchase all of these items
step
talk Pyxni Pennypocket##86778
_Herbalism_:
buy 1 Fireweed##109125
buy 1 Frostweed##109124
buy 1 Gorgrond Flytrap##109126
buy 1 Nagrand Arrowbloom##109128
buy 1 Starflower##109127
buy 1 Talador Orchid##109129
Roughly 60 Garrison Resources will be required to purchase all of these items
step
Make a Cooking Fire |cast Cooking Fire##818
create Blackrock Barbecue##160986,Cooking,1 total
step
Make a Cooking Fire |cast Cooking Fire##818
create Blackrock Ham##160962,Cooking,1 total
step
Make a Cooking Fire |cast Cooking Fire##818
create Braised Riverbeast##160968,Cooking,1 total
step
Make a Cooking Fire |cast Cooking Fire##818
create Calamari Crepes##160999,Cooking,1 total
step
Make a Cooking Fire |cast Cooking Fire##818
create Clefthoof Sausages##160971,Cooking,1 total
step
Make a Cooking Fire |cast Cooking Fire##818
create Fat Sleeper Cakes##160981,Cooking,1 total
step
Make a Cooking Fire |cast Cooking Fire##818
create Fiery Calamari##160982,Cooking,1 total
step
Make a Cooking Fire |cast Cooking Fire##818
create Frosty Stew##160987,Cooking,1 total
step
Make a Cooking Fire |cast Cooking Fire##818
create Gorgrond Chowder##161000,Cooking,1 total
step
Make a Cooking Fire |cast Cooking Fire##818
create Grilled Gulper##160978,Cooking,1 total
step
Make a Cooking Fire |cast Cooking Fire##818
create Grilled Saberfish##161002,Cooking,1 total
step
Make a Cooking Fire |cast Cooking Fire##818
create Hearty Elekk Steak##160958,Cooking,1 total
step
Make a Cooking Fire |cast Cooking Fire##818
create Pan-Seared Talbuk##160966,Cooking,1 total
step
Make a Cooking Fire |cast Cooking Fire##818
create Rylak Crepes##160969,Cooking,1 total
step
Make a Cooking Fire |cast Cooking Fire##818
create Saberfish Broth##161001,Cooking,1 total
step
Make a Cooking Fire |cast Cooking Fire##818
create Skulker Chowder##160983,Cooking,1 total
step
Make a Cooking Fire |cast Cooking Fire##818
create Sleeper Surprise##160989,Cooking,1 total
step
Make a Cooking Fire |cast Cooking Fire##818
create Steamed Scorpion##160973,Cooking,1 total
step
Make a Cooking Fire |cast Cooking Fire##818
create Sturgeon Stew##160979,Cooking,1 total
step
Make a Cooking Fire |cast Cooking Fire##818
create Talador Surf and Turf##160984,Cooking,1 total
step
label "buyah"
If you have an Auction Building in your Garrison, you can use that. Otherwise:
#include "auctioneer"
buy 1 Blackrock Barbeque##111449
buy 1 Blackrock Ham##111433
buy 1 Braised Riverbeast##111436
buy 1 Calamari Crepes##111453
buy 1 Clefthoof Sausages##111438
buy 1 Fat Sleeper Cakes##111444
buy 1 Fiery Calamari##111445
buy 1 Frosty Stew##111450
buy 1 Gorground Chowder##111454
buy 1 Grilled Gulper##111441
buy 1 Grilled Saberfish##111456
buy 1 Hearty Elekk Steak##111431
buy 1 Pan-Seared Talbuk##111434
buy 1 Rylak Crepes##111437
buy 1 Saberfish Broth##111455
buy 1 Skulker Chowder##111446
buy 1 Sleeper Surprise##111452
buy 1 Steamed Scorpion##111439
buy 1 Sturgeon Stew##111442
buy 1 Talador Surf and Turf##111447
step
label "NOMS"
Sample the Blackrock Barbeque |achieve 9502/1 |use Blackrock Barbeque##111449
step
Sample the Blackrock Ham |achieve 9502/2 |use Blackrock Ham##111433
step
Sample the Braised Riverbeast |achieve 9502/3 |use Braised Riverbeast##111436
step
Sample the Calamari Crepes |achieve 9502/4 |use Calamari Crepes##111453
step
Sample the Clefthoof Sausages |achieve 9502/5 |use Clefthoof Sausages##111438
step
Sample the Fat Sleeper Cakes |achieve 9502/6 |use Fat Sleeper Cakes##111444
step
Sample the Fiery Calamari |achieve 9502/7 |use Fiery Calamari##111445
step
Sample the Frosty Stew |achieve 9502/8 |use Frosty Stew##111450
step
Sample the Gorground Chowder |achieve 9502/9 |use Gorground Chowder##111454
step
Sample the Grilled Gulper |achieve 9502/10 |use Grilled Gulper##111441
step
Sample the Grilled Saberfish |achieve 9502/11 |use Grilled Saberfish##111456
step
Sample the Hearty Elekk Steak |achieve 9502/12 |use Hearty Elekk Steak##111431
step
Sample the Pan-Seared Talbuk |achieve 9502/13 |use Pan-Seared Talbuk##111434
step
Sample the Rylak Crepes |achieve 9502/14 |use Rylak Crepes##111437
step
Sample the Saberfish Broth |achieve 9502/15 |use Saberfish Broth##111455
step
Sample the Skulker Chowder |achieve 9502/16 |use Skulker Chowder##111446
step
Sample the Sleeper Surprise |achieve 9502/17 |use Sleeper Surprise##111452
step
Sample the Steamed Scorpion |achieve 9502/18 |use Steamed Scorpion##111439
step
Sample the Sturgeon Stew |achieve 9502/19 |use Sturgeon Stew##111442
step
Sample the Talador Surf and Turf |achieve 9502/20 |use Talador Surf and Turf##111447
step
Congratulations, you have earned the _Draenor Cuisine_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\General\\Everything Is Awesome",{
achieveid={9547},
patch='60001',
description="\nThrow Twenty Awesomefish.",
},[[
step
For this achievement, you will either need to buy _20 Awesomefish_ or gather them yourself
Click here to buy from the Auction |confirm
Click here to fish them up |confirm |next "fish"
step
#include "auctioneer"
collect 20 Awesome Fish##118414 |next "toss"
step
label "fish"
Fish in the water here |cast Fishing##7620 |goto Frostfire Ridge/0 41.0,65.4
collect 20 Awesome Fish##118414
step
Fish in the water here |cast Fishing##7620 |goto Shadowmoon Valley D 27.5,7.0
collect 20 Awesome Fish##118414
only Alliance
step
label "toss"
Throw 20 fish at random NPC's in your Garrison |goto Frostwall/0 40.5,52.9
|tip Since the cooldown is 1 minute, It may be in your best interest to do this while you are doing something else.
20 fish thrown at other players |achieve 9547/1
step
Congratulations, you have earned the _Everything Is Awesome_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\General\\Got My Mind On My Draenor Money",{
achieveid={9487},
patch='60001',
description="\nLoot 10,000 gold in Draenor.",
},[[
step
Loot _10,000_ gold in Draenor |achieve 9487/1
|tip The achievemnet is measured in copper
step
Congratulations, you have earned the _Got My Mind On My Draenor Money_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Legacy\\Professions\\Draenor Medic",{
achieveid={9505},
patch='60001',
description="\nThis achievement was earned prior to patch 8.0 and can no longer be obtained.",
},[[
step
This achievement can no longer be obtained!
|tip It was earned prior to patch 8.0,
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\Battle\\Tiny Terrors in Tanaan",{
achieveid={10052},
patch='60200',
description="\nThis guide will help you earn the Tiny Terrors in Tanaan achievement.",
},[[
step
_Go through_ the pass |goto Tanaan Jungle/0 9.8,48.8 |only if walking
_Follow_ the ridge |goto Tanaan Jungle/0 13.2,45.5 |only if walking
Challenge _Bleakclaw_ to a pet battle
|tip Bleakclaw is a level 25 elite Flying pet.
Defeat Bleakclaw |achieve 10052/10 |goto Tanaan Jungle/0 15.7,44.4
step
_Enter_ Farlight Terrace |goto Tanaan Jungle/0 23.7,36.9 |only if walking
Challenge _Felsworn Sentry_ to a pet battle
|tip Felsworn Sentry is a level 25 elite Mechanical pet.
Defeat Felsworn Sentry |achieve 10052/1 |goto Tanaan Jungle/0 26.2,31.6
step
_Go through_ the pass |goto Tanaan Jungle/0 30.8,39.7 |only if walking
Challenge _Cursed Spirit_ to a pet battle
|tip Cursed Spirit is a level 25 elite Undead pet.
Defeat Cursed Spirit |achieve 10052/4 |goto Tanaan Jungle/0 31.4,38.1
step
_Enter_ the Temple of Sha'naar |goto Tanaan Jungle/0 28.7,67.1 |walk
_Enter_ the cave |goto Tanaan Jungle/0 29.5,70.8 |walk
_Cross_ the cavern |goto Tanaan Jungle/0 26.2,76.1 |walk
Challenge _Chaos Pup_ to a pet battle
|tip Chaos Pup is a level 25 elite Beast pet.
Defeat Chaos Pup |achieve 10052/3 |goto Tanaan Jungle/0 25.0,76.2
step
Challenge _Mirecroak_ to a pet battle
|tip Mirecroak is a level 25 elite Aquatic pet.
Defeat Mirecroak |achieve 10052/8 |goto Tanaan Jungle/0 42.2,71.8
step
_Go to_ the shore |goto Tanaan Jungle/0 43.6,80.1 |only if walking
Challenge _Tainted Maulclaw_ to a pet battle
|tip Tainted Maulclaw is a level 25 elite Aquatic pet.
Defeat Tainted Maulclaw |achieve 10052/6 |goto Tanaan Jungle/0 43.4,84.4
step
_Enter_ Fang'rila |goto Tanaan Jungle/0 54.8,74.9 |only if walking
Challenge _Felfly_ to a pet battle
|tip Felfly is a level 25 elite Flying pet.
Defeat Felfly |achieve 10052/5 |goto Tanaan Jungle/0 55.9,80.8
|tip Be very careful, there are level 100 elites around this area.
step
Challenge _Corrupted Thundertail_ to a pet battle
|tip Corrupted Thundertail is a level 25 elite Beast pet.
Defeat Corrupted Thundertail |achieve 10052/2 |goto Tanaan Jungle/0 53.0,65.2
step
Challenge _Dreadwalker_ to a pet battle
|tip Dreadwalker is a level 25 elite Mechanical pet.
Defeat Dreadwalker |achieve 10052/12 |goto Tanaan Jungle/0 47.3,52.8
step
Challenge _Vile Blood of Draenor_ to a pet battle
|tip Vile Blood of Draenor is a level 25 elite Magic pet.
Defeat Vile Blood of Draenor |achieve 10052/11 |goto Tanaan Jungle/0 44.0,45.7
step
_Go up_ the hill |goto Tanaan Jungle/0 47.4,39.0 |only if walking
Challenge _Netherfist_ to a pet battle
|tip Netherfist is a level 25 elite Humanoid pet.
Defeat Netherfist |achieve 10052/13 |goto Tanaan Jungle/0 48.4,35.5
step
Challenge _Direflame_ to a pet battle
|tip Direflame is a level 25 elite Elemental pet.
Defeat Direflame |achieve 10052/7 |goto Tanaan Jungle/0 57.7,37.4
step
_Go up_ the path |goto Tanaan Jungle/0 59.1,32.7 |only if walking
_Continue up_ the path |goto Tanaan Jungle/0 53.7,31.8 |only if walking
Challenge _Dark Gazer_ to a pet battle
|tip Dark Gazer is a level 25 elite Humanoid pet.
Defeat Dark Gazer |achieve 10052/9 |goto Tanaan Jungle/0 54.1,29.8
step
_Cross_ the fel waterfall |goto Tanaan Jungle/0 51.1,32.2 |only if walking
_Continue along_ the ridge |goto Tanaan Jungle/0 48.6,33.6 |only if walking
_Enter_ the cave |goto Tanaan Jungle/0 48.1,32.7 |walk
Challenge _Skrillix_ to a pet battle
|tip Skrillix is a level 25 elite Humanoid pet.
Defeat Skrillix |achieve 10052/14 |goto Tanaan Jungle/0 48.6,31.3
step
_Follow_ the road |goto Tanaan Jungle/0 71.3,45.9 |only if walking
_Cross_ the water |goto Tanaan Jungle/0 73.1,38.0 |only if walking
Challenge _Defiled Earth_ to a pet battle
|tip Defiled Earth is a level 25 elite Elemental pet.
Defeat Defiled Earth |achieve 10052/15 |goto Tanaan Jungle/0 75.4,37.4
step
Congratulations, you have earned the _Tiny Terrors in Tanaan_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\An Awfully Big Adventure",{
achieveid={9069},
patch='60001',
description="\nDefeat trainers with an Elekk Plushie on your team.",
},[[
stickystart "tip"
step
_Defeat_ Brok |achieve 9069/7 |goto Mount Hyjal 61.4,32.8
step
_Defeat_ Obalis |achieve 9069/29 |goto Uldum 56.6,41.8
step
_Defeat_ Stone Cold Trixxy |achieve 9069/34 |goto Winterspring 65.6,64.6
step
_Defeat_ Goz Banefury |achieve 9069/17 |goto Twilight Highlands 56.6,56.8
step
_Defeat_ Lydia Accoste |achieve 9069/22 |goto Deadwind Pass 40.2,76.6
step
_Defeat_ Nicki Tinytech |achieve 9069/28 |goto Hellfire Peninsula 64.4,49.2
step
_Defeat_ Ras'an |achieve 9069/31 |goto Zangarmarsh 17.2,50.6
step
_Defeat_ Morulu the Elder |achieve 9069/25 |goto Shattrath City 59.0,70.0
step
_Defeat_ Bloodknight Antari |achieve 9069/5 |goto Shadowmoon Valley 30.6,41.8
step
_Defeat_ Narrok |achieve 9069/26 |goto Nagrand 61.0,49.4
step
_Defeat_ Beegle Blastfuse |achieve 9069/3 |goto Howling Fjord 28.6,33.8
step
_Defeat_ Okrut Dragonwaste |achieve 9069/30 |goto Dragonblight 59.0,77.0
step
_Defeat_ Nearly Headless Jacob |achieve 9069/27 |goto Crystalsong Forest 50.2,59.0
step
_Defeat_ Gutretch |achieve 9069/18 |goto Zul'Drak 13.2,66.8
step
_Defeat_ Major Payne |achieve 9069/23 |goto Icecrown 77.4,19.6
step
_Defeat_ Hyuna of the Shrines |achieve 9069/19 |goto The Jade Forest 48.0,54.0
step
_Defeat_ Whispering Pandaren Spirit |achieve 9069/42 |goto The Jade Forest 28.8,36.0
step
_Defeat_ Thundering Pandaren Spirit |achieve 9069/39 |goto Kun-Lai Summit 64.8,93.6
step
_Defeat_ Courageous Yon |achieve 9069/10 |goto Kun-Lai Summit 35.8,73.6
step
_Defeat_ Aki the Chosen |achieve 9069/1 |goto Vale of Eternal Blossoms 31.2,74.2
step
_Defeat_ Farmer Nishi |achieve 9069/14 |goto Valley of the Four Winds 46.0,43.6
step
_Defeat_ Mo'ruk |achieve 9069/24 |goto Krasarang Wilds 62.2,45.8
step
_Defeat_ Flowing Pandaren Spirit |achieve 9069/15 |goto Dread Wastes 61.2,87.6
step
_Defeat_ Wastewalker Shu |achieve 9069/41 |goto Dread Wastes 55.0,37.6
step
_Defeat_ Burning Pandaren Spirit |achieve 9069/8 |goto Townlong Steppes 57.0,42.2
step
_Defeat_ Seeker Zusshi |achieve 9069/32 |goto Townlong Steppes 36.2,52.2
step
_Defeat_ Blingtron 4000 |achieve 9069/4 |goto Timeless Isle 40.2,56.4
step
_Defeat_ Sully "The Pickle" McLeary |achieve 9069/35 |goto Timeless Isle 37.8,57.2
step
_Defeat_ Shademaster Kiryn |achieve 9069/33 |goto Timeless Isle 37.8,57.2
step
_Defeat_ Dr. Ion Goldbloom |achieve 9069/13 |goto Timeless Isle 40.2,56.2
step
_Defeat_ Chen Stormstout |achieve 9069/9 |goto Timeless Isle 37.2,47.2
step
_Defeat_ Taran Zhu |achieve 9069/37 |goto Timeless Isle 40.0,52.6
step
_Defeat_ Lorewalker Cho |achieve 9069/21 |goto Timeless Isle 40.0,52.6
step
_Defeat_ Wise Mari |achieve 9069/43 |goto Timeless Isle 40.0,52.6
step
_Defeat_ Wrathion |achieve 9069/44 |goto Timeless Isle 37.8,57.2
step
_Defeat_ Taralune |achieve 9069/36 |goto Talador 49.0,80.6
step
_Defeat_ Cymre Brightblade |achieve 9069/12 |goto Gorgrond 51.0,70.6
step
_Defeat_ Ashlei |achieve 9069/2 |goto Shadowmoon Valley D 50.0,31.2
step
_Defeat_ Vesharr |achieve 9069/40 |goto Spires of Arak 46.2,45.4
step
_Defeat_ Tarr the Terrible |achieve 9069/38 |goto Nagrand D 56.2,9.8
step
_Defeat_ Gargra |achieve 9069/16 |goto Frostfire Ridge 68.6,64.6
step
_Defeat_ Bordin Steadyfist |achieve 9069/6 |goto Deepholm 49.8,57.0
step
_Defeat_ Christoph VonFeasel |achieve 9069/11 |goto Darkmoon Island 47.4,62.2
step
_Defeat_ Jeremy Feasel |achieve 9069/20 |goto Darkmoon Island 47.8,62.6
step
label "tip"
You will need level 25 pets
Two of the trainers can only be defeated when the _Darkmoon Faire_ is in town
step
Congratulations, you have _earned_ the An Awfully Big Adventure Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\Draenic Pet Battler",{
achieveid={9463},
patch='60001',
description="\nWin 500 pet battles in Draenor.",
},[[
step
_Win_ #500# pet battles in Draenor |achieve 9463 |goto Frostfire Ridge 54,20
|tip A good place to grind is near the neutral flight master at Bloodmaul Slag Mines in Frostfire Ridge.
step
Congratulations, you have _earned_ the Draenic Pet Battler Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\Draenor Safari",{
achieveid={9685},
patch='60002',
description="\nCatch every battle pet in Draenor.",
},[[
stickystart "tip"
step
_Capture_ Mossbite Skitterer |achieve 9685/5 |goto Shadowmoon Valley D 48.2,82.0
learnpet Mossbite Skitterer##85005
step
_Capture_ Waterfly |achieve 9685/22 |goto Shadowmoon Valley D 53.8,66.8
learnpet Waterfly##88355
step
_Capture_ Moonshell Crab |achieve 9685/4 |goto Shadowmoon Valley D 67.6,32.4
learnpet Moonshell Crab##82045
step
_Capture_ Royal Moth |achieve 9685/20 |goto Shadowmoon Valley D 39.2,39.4
learnpet Royal Moth##88417
step
_Capture_ Zangar Crawler |achieve 9685/18 |goto Shadowmoon Valley D/0 52.9,18.9
learnpet Zangar Crawler##88466
step
_Capture_ Swamplighter Firefly |achieve 9685/21 |goto Spires of Arak 54.5,87.3
learnpet Swamplighter Firefly##88359
step
_Capture_ Golden Dawnfeather |achieve 9685/15 |goto Spires of Arak 41.2,57.2
learnpet Golden Dawnfeather##85798
step
_Capture_ Bloodsting Wasp |achieve 9685/8 |goto Spires of Arak 44.2,49.6
learnpet Bloodsting Wasp##85255
step
_Capture_ Thicket Skitterer |achieve 9685/6 |goto Spires of Arak 45.0,47.3
learnpet Thicket Skitterer##85007
step
_Capture_ Leatherhide Runt |achieve 9685/2 |goto Nagrand D 80.0,56.4
learnpet Leatherhide Runt##89198
step
_Capture_ Mud Jumper |achieve 9685/3 |goto Nagrand D 69.4,20.8
learnpet Mud Jumper##83642
step
_Capture_ Frostfur Rat |achieve 9685/1 |goto Frostfire Ridge 51.8,20.7
learnpet Frostfur Rat##82715
step
_Capture_ Twilight Wasp |achieve 9685/10 |goto Frostfire Ridge 56.4,17.6
learnpet Twilight Wasp##85253
step
_Capture_ Icespine Hatchling |achieve 9685/7 |goto Frostfire Ridge 54.8,37.6
learnpet Icespine Hatchling##85003
step
_Capture_ Ironclaw Scuttler |achieve 9685/17 |goto Frostfire Ridge 54.0,37.0
learnpet Ironclaw Scuttler##88474
step
_Capture_ Frostshell Pincher |achieve 9685/16 |goto Frostfire Ridge 54.2,59.2
learnpet Frostshell Pincher##88480
step
_Capture_ Junglebeak |achieve 9685/12 |goto Gorgrond 42.4,73.6
learnpet Junglebeak##85192
step
_Capture_ Axebeak Hatchling |achieve 9685/13 |goto Gorgrond 59.2,52.8
learnpet Axebeak Hatchling##85389
step
_Capture_ Amberbarb Wasp |achieve 9685/11 |goto Gorgrond 51.6,70.8
learnpet Amberbarb Wasp##85257
step
_Capture_ Wood Wasp |achieve 9685/9 |goto Gorgrond 49.2,80.9
learnpet Wood Wasp##85254
step
_Capture_ Mudback Calf |achieve 9685/23 |goto Gorgrond 47.6,88.2
learnpet Mudback Calf##88571
step
_Capture_ Kelp Scuttler |achieve 9685/19 |goto Talador 54.0,16.1
learnpet Kelp Scuttler##88465
step
_Capture_ Brilliant Bloodfeather |achieve 9685/14 |goto Talador 65.6,31.2
learnpet Brilliant Bloodfeather##88385
step
_Capture_ Shadow Sporebat |achieve 9685/25 |goto Talador 84.9,29.8
learnpet Shadow Sporebat##88576
step
_Capture_ Flat-Tooth Calf |achieve 9685/24 |goto Talador 70.8,53.4
learnpet Flat-Tooth Calf##88572
step
label "tip"
Make sure you train up level 25 Pets
step
Congratulations, you have _earned_ the Draenor Safari Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\Overstuffed",{
achieveid={9070},
patch='60001',
description="\nRaise an Elekk Plushie to level 25.",
},[[
step
_Click here_ to obtain an Elekk Plushie |confirm |next "Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Elekk Plushie"
_Raise an Elekk Plushie_ to level 25 |achieve 9070
step
Congratulations, you have earned the _Overstuffed_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\Pet Charmer",{
achieveid={9712},
patch='60002',
description="\nEarn 500 Pet Charms.",
},[[
step
You need to complete the _Battle Pet Questline_ for these dailies to show up
talk Cymre Brightblade##83837
accept Cymre Brightblade##37201 |goto Gorgrond 51.1,70.6
stickystart "tip"
step
Use a _Mechanical Pandaren Dragonling_ and an _Anubisath Idol_ if you have them available
Challenge Gargra to a pet battle
_Defeat_ Gargra |q 37201/1
step
turnin Cymre Brightblade##37201 |goto Gorgrond 51.1,70.6
step
talk Ashlei##87124
accept Ashlei##37203 |goto Shadowmoon Valley D 50.0,31.3
step
Use _Yu'la Broodling of Yu'lon_ if you have it available\
Challenge Ashlei to a pet battle
_Defeat_ Ashlei |q 37203/1
step
turnin Ashlei##37203 |goto Shadowmoon Valley D 50.0,31.3
step
talk Vesharr##87123
accept Vesharr##37207 |goto Spires of Arak 46.3,45.3
step
Use a _Mechanical Pandaren Dragonling_ as well as _Chrominius_ if you have them available
Challenge Vesharr to a pet battle
_Defeat_ Vesharr |q 37207/1
step
turnin Vesharr##37207 |goto Spires of Arak 46.3,45.3
step
talk Gargra##87122
accept Gargra##37205 |goto Frostfire Ridge 68.6,64.8
|tip Defeat him in pet combat!
step
Use _Lil'XT_ if you  have it
If not, use a _Darkmoon Zepplin_ and a _Menagerie Custiodian_ if you have them avaialable
Challenge Gargra to a pet battle
_Defeat_ Gargra |q 37205/1
step
turnin Gargra##37205 |goto Frostfire Ridge 68.6,64.8
step
talk Taralune##87125
accept Taralune##37208 |goto Talador 49.1,80.3
step
Use _Chrominius_ and _Nether Faerie Dragon_
Challenge Taralune to a pet battle
_Defeat_ Taralune |q 37208/1
step
turnin Taralune##37208 |goto Talador 49.1,80.3
step
talk Tarr the Terrible##87110
accept Tarr the Terrible##37206 |goto Nagrand D 56.2,9.8
|tip Defeat him in pet combat!
step
turnin Tarr the Terrible##37206 |goto Nagrand D 56.2,9.8
step
label "tip"
You need to complete the _Battle Pet Questline_ for these dailies to show up
step
Congratulations, you have _earned_ the Pet Charmer Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\So. Many. Pets.",{
achieveid={9643},
patch='60001',
description="\nCollect 600 unique pets.",
},[[
step
_Collect_ #600# unique pets |achieve 9643
|tip You can select any pet from the Pet Journal by pressing "Shift+P" and clicking the Zygor icon next to the pet you want.
step
Congratulations, you have _earned_ the So. Many. Pets. Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\Taming Draenor",{
achieveid={9724},
patch='60002',
description="\nDefeat all of the Pet Tamers in Draenor.",
},[[
step
You need to complete the _Battle Pet Questline_ for these dailies to show up
talk Cymre Brightblade##83837
accept Cymre Brightblade##37201 |goto Gorgrond 51.1,70.6
stickystart "tip"
step
Use a _Mechanical Pandaren Dragonling_ and an _Anubisath Idol_ if you have them available
Challenge Gargra to a pet battle
_Defeat_ Gargra |q 37201/1
step
turnin Cymre Brightblade##37201 |goto Gorgrond 51.1,70.6
step
talk Ashlei##87124
accept Ashlei##37203 |goto Shadowmoon Valley D 50.0,31.3
step
Use _Yu'la Broodling of Yu'lon_ if you have it available\
Challenge Ashlei to a pet battle
_Defeat_ Ashlei |q 37203/1
step
turnin Ashlei##37203 |goto Shadowmoon Valley D 50.0,31.3
step
talk Vesharr##87123
accept Vesharr##37207 |goto Spires of Arak 46.3,45.3
step
Use a _Mechanical Pandaren Dragonling_ as well as _Chrominius_ if you have them available
Challenge Vesharr to a pet battle
_Defeat_ Vesharr |q 37207/1
step
turnin Vesharr##37207 |goto Spires of Arak 46.3,45.3
step
talk Gargra##87122
accept Gargra##37205 |goto Frostfire Ridge 68.6,64.8
|tip Defeat him in pet combat!
step
Use _Lil'XT_ if you  have it
If not, use a _Darkmoon Zepplin_ and a _Menagerie Custiodian_ if you have them avaialable
Challenge Gargra to a pet battle
_Defeat_ Gargra |q 37205/1
step
turnin Gargra##37205 |goto Frostfire Ridge 68.6,64.8
step
talk Taralune##87125
accept Taralune##37208 |goto Talador 49.1,80.3
step
Use _Chrominius_ and _Nether Faerie Dragon_
Challenge Taralune to a pet battle
_Defeat_ Taralune |q 37208/1
step
turnin Taralune##37208 |goto Talador 49.1,80.3
step
talk Tarr the Terrible##87110
accept Tarr the Terrible##37206 |goto Nagrand D 56.2,9.8
|tip Defeat him in pet combat!
step
turnin Tarr the Terrible##37206 |goto Nagrand D 56.2,9.8
step
label "tip"
You need to complete the _Battle Pet Questline_ for these dailies to show up
step
Congratulations, you have earned the _Taming Draenor_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Professions\\Draenor Fisherman",{
achieveid={9503},
patch='60001',
description="\nObtain 700 skill points in fishing.",
},[[
step
To obtain 700 skill points in Fishing _click here_. |confirm |next "Profession Guides\\Fishing\\Leveling Guides\\Fishing 600-700 Leveling Guide"
achieve 9503
step
Congratulations, you have earned the _Draenor Fisherman_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Professions\\Arakkoa Archivist",{
achieveid={9412},
patch='60001',
description="\nRestore and display pristine versions of all Arakkoa artifacts.",
},[[
step
This achievement requires
_Restore and display pristine versions of all Arakkoa artifacts_ listed below:
Pristine Dreamcatcher |achieve 9412/1
Pristine Burial Urn |achieve 9412/2
Pristine Decree Scrolls |achieve 9412/3
Pristine Solar Orb |achieve 9412/4
Pristine Sundial |achieve 9412/5
Pristine Talonpriest Mask |achieve 9412/6
Pristine Outcast Dreamcatcher |achieve 9412/7
Pristine Apexis Crystal |achieve 9412/8
Pristine Apexis Heiroglyph |achieve 9412/9
Pristine Apexis Scroll |achieve 9412/10
step
Congratulations, you have earned the _Arakkoa Archivist_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Professions\\Draenor Angler",{
condition_end=function() return achieved(9462) end,
achieveid={9455,9456,9457,9458,9459,9460,9461,9462},
patch='60001',
description="\nComplete the Angler achievements.",
},[[
step
use Blind Lake Sturgeon Bait##110290
|tip Use bait on cooldown.
_Catch_ 100 Enormous Blind Lake Sturgeon fish in Draenor
_Fish here_ until you earn the achievement |achieve 9462/4 |goto Shadowmoon Valley D 48.5,34.1
step
use Blackwater Whiptail Bait##110294
|tip Use bait on cooldown.
_Catch_ 100 Enormous Blackwater Whiptail fish in Draenor
_Fish here_ until you earn the achievement |achieve 9462/5 |goto Talador 78.9,54.6
step
use Abyssal Gulper Eel Bait##110293
|tip Use bait on cooldown.
_Catch_ 100 Enormous Abyssal Gulper Eel in Draenor
_Fish here_ until you earn the achievement |achieve 9462/6 |goto Spires of Arak 51.5,32.9
step
use Fat Sleeper Bait##110289
|tip Use bait on cooldown.
_Catch_ 100 Enormous Fat Sleeper fish in Draenor
_Fish here_ until you earn the achievement |achieve 9462/3 |goto Nagrand D 84.5,43.7
step
use Fire Ammonite Bait##110291
|tip Use bait on cooldown.
_Catch_ 100 Enormous Fire Ammonite fish in Draenor
_Fish here_ until you earn the achievement |achieve 9462/7 |goto Frostfire Ridge 51.0,59.1
step
use Jawless Skulker Bait##110274
|tip Use bait on cooldown.
_Catch_ 100 Enormous Jawless Skulker fish in Draenor
_Fish here_ until you earn the achievement |achieve 9462/2 |goto Gorgrond 40.4,76.5
step
use Sea Scorpion Bait##110292
|tip Use bait on cooldown.
_Catch_ 100 Enormous Sea Scorpion fish in Draenor
_Fish here_ until you earn the achievement |achieve 9462/1 |goto Frostfire Ridge 56.2,75.4
step
Congratulations, you have _earned_ the Draenor Angler Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Professions\\Draenor Archaeologist",{
achieveid={9409},
patch='60001',
description="\nObtain 700 skill points in archaeology.",
},[[
step
To obtain 700 skill points in Archaeology _click here_. |confirm |next "Profession Guides\\Archaeology\\Leveling Guides\\Archaeology 600-700 Leveling Guide"
achieve 9409
step
Congratulations, you have earned the _Draenor Archaeologist_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Professions\\Draenor Cook",{
achieveid={9500},
patch='60001',
description="\nObtain 700 skill points in cooking.",
},[[
step
To obtain 700 skill points in Cooking _click here_. |confirm |next "Profession Guides\\Cooking\\Leveling Guides\\Cooking 600-700 Leveling Guide"
|achieve 9500
step
Congratulations, you have earned the _Draenor Cook_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Professions\\Draenor Curator",{
achieveid={9419},
patch='60001',
description="\nRestore and display pristine versions of all Draenor artifacts.",
},[[
step
_Restore and display_ pristine versions of all Draenor artifacts listed below
Use any Draenor zone
|tip These are randomly solved with Archaeology so don't give up!
Pristine Dreamcatcher |achieve 9419/1
Pristine Burial Urn |achieve 9419/2
Pristine Decree Scrolls |achieve 9419/3
Pristine Solar Orb |achieve 9419/4
Pristine Sundial |achieve 9419/5
Pristine Talonpriest Mask |achieve 9419/6
Pristine Outcast Dreamcatcher |achieve 9419/7
Pristine Apexis Crystal |achieve 9419/8
Pristine Apexis Heiroglyph |achieve 9419/9
Pristine Apexis Scroll |achieve 9419/10
Pristine Dreamcatcher |achieve 9419/11
Pristine Burial Urn |achieve 9419/12
Pristine Decree Scrolls |achieve 9419/13
Pristine Solar Orb |achieve 9419/14
Pristine Sundial |achieve 9419/15
Pristine Talonpriest Mask |achieve 9419/16
Pristine Outcast Dreamcatcher |achieve 9419/17
_Click here_ for page 2 |confirm |next
step
Pristine Apexis Crystal |achieve 9419/18
Pristine Apexis Heiroglyph |achieve 9419/19
Pristine Apexis Scroll |achieve 9419/20
Pristine Fang-Scarred Frostwolf Axe |achieve 9419/21
Pristine Frostwolf Ancestry Scrimshaw |achieve 9419/22
Pristine Wolfskin Snowshoes |achieve 9419/23
Pristine Warsinger's Drums |achieve 9419/24
Pristine Screaming Bullroarer |achieve 9419/25
Pristine Warsong Ceremonial Pike |achieve 9419/26
Pristine Metalworker's Hammer |achieve 9419/27
Pristine Elemental Bellows |achieve 9419/28
Pristine Blackrock Razor |achieve 9419/29
Pristine Weighted Chopping Axe |achieve 9419/30
Pristine Hooked Dagger |achieve 9419/31
Pristine Barbed Fishing Hook |achieve 9419/32
Pristine Calcified Eye In a Jar |achieve 9419/33
Pristine Ceremonial Tattoo Needles |achieve 9419/34
_Click here_ for page 3 |confirm |next
step
Pristine Ancestral Talisman |achieve 9419/35
Pristine Cracked Ivory Idol |achieve 9419/36
Pristine Flask of Blazegrease |achieve 9419/37
Pristine Gronn-Tooth Necklace |achieve 9419/38
Pristine Doomsday Prophecy |achieve 9419/39
Pristine Stonemaul Succession Stone |achieve 9419/40
Pristine Stone Manacles |achieve 9419/41
Pristine Ogre Figurine |achieve 9419/42
Pristine Pictogram Carving |achieve 9419/43
Pristine Gladiator's Shield |achieve 9419/44
Pristine Mortar and Pestle |achieve 9419/45
Pristine Eye of Har'guun the Blind |achieve 9419/46
Pristine Stone Dentures |achieve 9419/47
Pristine Rylak Riding Harness |achieve 9419/48
Pristine Imperial Decree Stele |achieve 9419/49
step
Congratulations, you have _earned_ the Draenor Curator Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Professions\\Draenor Fisherman",{
achieveid={9503},
patch='60001',
description="\nObtain 700 skill points in fishing.",
},[[
step
To obtain 700 skill points in Fishing _click here_. |confirm |next "Profession Guides\\Fishing\\Leveling Guides\\Fishing 600-700 Leveling Guide"
achieve 9503
step
Congratulations, you have earned the _Draenor Fisherman_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Professions\\Draenor Master",{
achieveid={9464},
patch='60001',
description="\nObtain 700 skill points in a profession.",
},[[
step
_Obtain 700 skill points_ in any profession below:
_Click here_ for Alchemy |confirm |next "Profession Guides\\Alchemy\\Leveling Guides\\Alchemy 600-700 Leveling Guide"
_Click here_ for Blacksmithing |confirm |next "Profession Guides\\Blacksmithing\\Leveling Guides\\Blacksmithing 600-700 Leveling Guide"
_Click here_ for Enchanting |confirm |next "Profession Guides\\Enchanting\\Leveling Guides\\Enchanting 600-700 Leveling Guide"
_Click here_ for Engineering |confirm |next "Profession Guides\\Engineering\\Leveling Guides\\Engineering 600-700 Leveling Guide"
_Click here_ for Herbalism |confirm |next "Profession Guides\\Herbalism\\Leveling Guides\\Herbalism 600-700 Leveling Guide"
_Click here_ for Inscription |confirm |next "Profession Guides\\Inscription\\Leveling Guides\\Inscription 600-700 Leveling Guide"
_Click here_ for Jewelcrafting |confirm |next "Profession Guides\\Jewelcrafting\\Leveling Guides\\Jewelcrafting 600-700 Leveling Guide"
_Click here_ for Leatherworking |confirm |next "Profession Guides\\Leatherworking\\Leveling Guides\\Leatherworking 600-700 Leveling Guide"
_Click here_ for Minin |confirm |next "Profession Guides\\Mining\\Leveling Guides\\Mining 600-700 Leveling Guide"
_Click here_ for Skinning |confirm |next "Profession Guides\\Skinning\\Leveling Guides\\Skinning 600-700 Leveling Guide"
_Click here_ for Tailoring |confirm |next "Profession Guides\\Tailoring\\Leveling Guides\\Tailoring 600-700 Leveling Guide"
|achieve 9464
step
Congratulations, you have earned the _Draenor Master_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Professions\\Draenic Seed Collector",{
achieveid={9454},
patch='60001',
description="\nCollect 500 Draenic Seeds.",
},[[
step
Draenic Seeds can be _acquired_ through garrison herb picking slowly every day
|tip Having the herbalism profession allows you to gain the seed through regular herb nodes in Draenor.
Collecting 500 is _required_ for level 3 garrison herb farm
|tip The achievemnt is account wide so you can do this on an alt instead of dropping a profession if you please.
_Collect_ #500# Draenic Seeds |achieve 9454
step
Congratulations, you have _earned_ the Draenic Seed Collector Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Professions\\Grand Master of All",{
achieveid={9087},
patch='60001',
description="\nRaise all primary professions to 700 skill points.",
},[[
step
_Raise all primary professions_ to 700 skill points.
_Click here_ for Alchemy |achieve 9087/1 |confirm |next "Profession Guides\\Alchemy\\Leveling Guides\\Alchemy 600-700 Leveling Guide"
_Click here_ for Blacksmithing |achieve 9087/2 |confirm |next "Profession Guides\\Blacksmithing\\Leveling Guides\\Blacksmithing 600-700 Leveling Guide"
_Click here_ for Enchanting |achieve 9087/3 |confirm |next "Profession Guides\\Enchanting\\Leveling Guides\\Enchanting 600-700 Leveling Guide"
_Click here_ for Engineering |achieve 9087/4 |confirm |next "Profession Guides\\Engineering\\Leveling Guides\\Engineering 600-700 Leveling Guide"
_Click here_ for Herbalism |achieve 9087/5 |confirm |next "Profession Guides\\Herbalism\\Leveling Guides\\Herbalism 600-700 Leveling Guide"
_Click here_ for Inscription |achieve 9087/6 |confirm |next "Profession Guides\\Inscription\\Leveling Guides\\Inscription 600-700 Leveling Guide"
_Click here_ for Jewelcrafting |achieve 9087/7 |confirm |next "Profession Guides\\Jewelcrafting\\Leveling Guides\\Jewelcrafting 600-700 Leveling Guide"
_Click here_ for Leatherworking |achieve 9087/8 |confirm |next "Profession Guides\\Leatherworking\\Leveling Guides\\Leatherworking 600-700 Leveling Guide"
_Click here_ for Mining |achieve 9087/9 |confirm |next "Profession Guides\\Mining\\Leveling Guides\\Mining 600-700 Leveling Guide"
_Click here_ for Skinning |achieve 9087/10 |confirm |next "Profession Guides\\Skinning\\Leveling Guides\\Skinning 600-700 Leveling Guide"
_Click here_ for Tailoring |achieve 9087/11 |confirm |next "Profession Guides\\Tailoring\\Leveling Guides\\Tailoring 600-700 Leveling Guide"
step
Congratulations, you have earned the _Grand Master of All_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Professions\\Highmaul Historian",{
achieveid={9411},
patch='60001',
description="\nRestore and display pristine versions of all Ogre artifacts.",
},[[
step
_Restore and display_ pristine versions of all Ogre artifacts listed below
|tip These are randomly solved with Archaeology so don't give up!
Pristine Stonemaul Succession Stone |achieve 9411/1
Pristine Stone Manacles |achieve 9411/2
Pristine Ogre Figurine |achieve 9411/3
Pristine Pictogram Carving |achieve 9411/4
Pristine Gladiator's Shield |achieve 9411/5
Pristine Mortar and Pestle |achieve 9411/6
Pristine Eye of Har'guun |achieve 9411/7
Pristine Stone Dentures |achieve 9411/8
Pristine Rylak Riding Harness |achieve 9411/9
Pristine Imperial Decree Stele |achieve 9411/10
step
Congratulations, you have _earned_ the Highmaul Historian Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Professions\\Inspector Gadgetzan",{
achieveid={9071},
patch='60001',
description="\nAcquire decoded messages from Blingtron 5000.",
},[[
step
_Acquire_ the decoded messages from Blingtron 5000 listed below
|tip Blingtron 5000 offers a daily from which these messages are gained
The Blingtron 5000 can be _constructed through Engineering_ or _used by another player_
Decoded Message 001-003 |achieve 9071/1
Decoded Message 001-014 |achieve 9071/2
Decoded Message 001-107 |achieve 9071/3
Decoded Message 001-111 |achieve 9071/4
Decoded Message 001-119 |achieve 9071/5
Decoded Message 001-150 |achieve 9071/6
Decoded Message 001-159 |achieve 9071/7
Decoded Message 001-168 |achieve 9071/8
step
Congratulations, you have _earned_ the Inspector Gadgetzan Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Professions\\Ogre Observer",{
achieveid={9414},
patch='60001',
description="\nDiscover the Ogre artifacts.",
},[[
step
_Click here_ to level Archaeology |confirm |next "Profession Guides\\Archaeology\\Leveling Guides\\Archaeology 600-700 Leveling Guide"
_OR_
_Click here_ to continue |confirm |next
step
_Discover_ the following Ogre artifacts listed below
|tip These are randomly solved with Archaeology so don't give up!
Eye of Har'gunn the Blind |achieve 9414/1
Gladiator's Shield |achieve 9414/2
Imperial Decree Stele |achieve 9414/3
Mortar and Pestle |achieve 9414/4
Ogre Figurine |achieve 9414/5
Pictogram Carving |achieve 9414/6
Rylak Riding Harness |achieve 9414/7
Stone Dentures |achieve 9414/8
Stone Manacles |achieve 9414/9
Stonemaul Succession Stone |achieve 9414/10
step
Congratulations, you have _earned_ the Ogre Observer Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Professions\\Savage Skills to Pay the Bills",{
achieveid={9506},
patch='60001',
description="\nObtain 700 skill points in Fishing, First Aid, Cooking, and Archaeology.",
},[[
step
_Obtain 700 skill points_ in Fishing, First Aid, Cooking, and Archaeology
_Click here_ for Archaeology |achieve 9506/1 |confirm |next "Profession Guides\\Archaeology\\Leveling Guides\\Archaeology 600-700 Leveling Guide"
_Click here_ for Cooking |achieve 9506/2 |confirm |next "Profession Guides\\Cooking\\Leveling Guides\\Cooking 600-700 Leveling Guide"
_Click here_ for First Aid |achieve 9506/3 |confirm |next "Profession Guides\\First Aid\\Leveling Guides\\First Aid 600-700 Leveling Guide"
_Click here_ for Fishing |achieve 9506/4 |confirm |next "Profession Guides\\Fishing\\Leveling Guides\\Fishing 600-700 Leveling Guide"
step
Congratulations, you have earned the _Savage Skills to Pay the Bills_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Professions\\Secrets of Skettis",{
achieveid={9415},
patch='60001',
description="\nDiscover the Arakkoa artifacts.",
},[[
step
_Discover_ the following Arakkoa artifacts listed below
|tip These are randomly solved with Archaeology so don't give up!
Dreamcatcher |achieve 9415/1
Burial Urn |achieve 9415/2
Decree Scrolls |achieve 9415/3
Solar Orb |achieve 9415/4
Sundial |achieve 9415/5
Talonpriest Mask |achieve 9415/6
Outcast Dreamcatcher |achieve 9415/7
Apexis Crystal |achieve 9415/8
Apexis Heiroglyph |achieve 9415/9
Apexis Scroll |achieve 9415/10
step
Congratulations, you have _earned_ the Secrets of Skettis Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Professions\\Strength and Honor",{
achieveid={9413},
patch='60001',
description="\nDiscover the Draenor Clans artifacts.",
},[[
step
_Discover_ the following Draenor Clans artifacts listed below
|tip These are randomly solved with Archaeology so don't give up!
Quilen Statuette |achieve 9413/1
Barbed Fishing Hook |achieve 9413/2
Blackrock Razor |achieve 9413/3
Calcified Eye In a Jar |achieve 9413/4
Ceremonial Tattoo Needles |achieve 9413/5
Cracked Ivory Idol |achieve 9413/6
Doomsday Prophecy |achieve 9413/7
Elemental Bellows |achieve 9413/8
Fang-Scarred Frostwolf Axe |achieve 9413/9
Flask of Blazegrease |achieve 9413/10
Frostwolf Ancestry Scrimshaw |achieve 9413/11
Gronn-Tooth Necklace |achieve 9413/12
Hooked Dagger |achieve 9413/13
Metalworker's Hammer |achieve 9413/14
Screaming Bullroarer |achieve 9413/15
Warsinger's Drums |achieve 9413/16
Warsong Ceremonial Pike |achieve 9413/17
Weighted Chopping Axe |achieve 9413/18
Wolfskin Snowshoes |achieve 9413/19
step
Congratulations, you have _earned_ the Strength and Honor Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Professions\\The Draenor Gourmet",{
achieveid={9501},
patch='60001',
description="\nCook 20 of the Draenor recipes listed below.",
},[[
step
map Shadowmoon Valley D/0
path	60.0,82.1	60.8,83.4	62.2,84.7
path	63.6,87.0	63.2,89.6	60.8,90.1
path	58.1,90.5	56.9,88.6	57.8,86.0
path	58.6,84.2
kill Darkwing Adolescent##85357+, Darkwing Matron##75280+
collect 10 Rylak Egg##109133 |complete achieved(9501/4)
|tip You can buy these from the Auction House as well as a Trading Post in your garrison alternatively.
step
kill Bloodmaul Dire Boar##77994
collect 5 Raw Boar Meat##109136 |complete achieved(9501/12) |goto Frostfire Ridge/0 37.9,18.3
|tip You can buy these from the Auction House as well as a Trading Post in your garrison alternatively.
step
map Shadowmoon Valley D/0
path	60.2,42.9	59.1,40.5	57.3,39.0
path	57.2,36.8	58.6,35.3	60.5,35.1
path	62.4,34.6	64.4,32.8	64.8,35.2
path	63.0,37.2	62.7,40.4	62.4,42.6
Follow the provided path, killing the Rockhide Elekk
kill Rockhide Grazer##87700+, Rockhide Calf##87699+, Rockhide Bull##87698+
collect 5 Raw Elekk Meat##109134 |complete achieved(9501/2)
|tip You can buy these from the Auction House as well as a Trading Post in your garrison alternatively.
step
kill Tamed Clefthoof##79034
collect 5 Raw Clefthoof Meat##109131 |complete achieved(9501/15) or acheived(9501/21) |goto Nagrand D/0 78.60,72.50
|tip You can buy these from the Auction House as well as a Trading Post in your garrison alternatively.
step
map Nagrand D/0
path	80.9,46.0	80.6,43.8	80.4,42.0
path	79.7,40.2	79.8,38.5	80.4,36.0
path	78.7,35.3	77.2,36.5	77.3,39.3
path	78.3,40.2	77.8,42.8	79.0,43.7
kill Breezestrider Talbuk##78278+, Breezestrider Colt##78277+
Follow the provided path killing Talbuks for their meat
collect 5 Raw Talbuk Meat##109132 |complete achieved(9501/3)
|tip You can buy these from the Auction House as well as a Trading Post in your garrison alternatively.
step
kill Young Riverwallow##86848
collect 5 Raw Riverbeast Meat##109135 |complete achieved(9501/13) |goto Talador/0 62.8,54.3
|tip You can buy these from the Auction House as well as a Trading Post in your garrison alternatively.
step
collect 10 Abyssal Gulper Eel Flesh##109143 |complete achieved(9501/22) |goto Spires of Arak/0 50.6,32.3
You can find another Abyssal Gulper Eel pool here |goto Spires of Arak/0 50.5,34.5
Check the bodies of water around the area for pools
|tip You can buy these from the Auction House as well as a Trading Post in your garrison alternatively.
step
collect 10 Blind Lake Sturgeon Flesh##109140 |complete achieved(9501/9) |goto Shadowmoon Valley D/0 36.3,49.5
|tip You can buy these from the Auction House as well as a Trading Post in your garrison alternatively.
step
collect 10 Crescent Saberfish Flesh##109137 |complete achieved(9501/1) and achieved(9501/5)
You can find _Crescent Saberfish Pools_ along the streams within Shadowmoon
|tip You can buy these from the Auction House as well as a Trading Post in your garrison alternatively.
step
map Nagrand D/0
path loop off
path	69.7,65.6	65.3,67.4	61.5,68.8
path	62.1,70.8	64.5,72.3
Follow the provided path, looking for _Fat Sleeper Flesh_
collect 10 Fat Sleeper Flesh##109139 |complete achieved(9501/16)
|tip You can buy these from the Auction House as well as a Trading Post in your garrison alternatively.
step
collect 10 Fire Ammonite Tentacle##109141 |complete achieved(9501/19) |goto Frostfire Ridge/0 41.0,47.8
You can find _Fire Ammonite Schools_ in lava anywhere in lava as long as you're in Frostfire Ridge
|tip You can buy these from the Auction House as well as a Trading Post in your garrison alternatively.
step
collect 10 Jawless Skulker Flesh##109138 |complete achieved(9501/6) |goto Gorgrond/0 51.2,60.5
Look for _Jawless Skulker Schools_ in the waters of Gorgrond
|tip You can buy these from the Auction House as well as a Trading Post in your garrison alternatively.
step
collect 10 Sea Scorpion Segment##109142 |complete achieved(9501/8) |goto Gorgrond/0 63.7,61.5
You can obtain these by fishing at sea anywhere in draenor
|tip You can buy these from the Auction House as well as a Trading Post in your garrison alternatively.
step
talk Tradesman Portanuus##87204
_Herbalism_
buy 1 Fireweed##109125
buy 1 Frostweed##109124
buy 1 Gorgrond Flytrap##109126
buy 1 Nagrand Arrowbloom##109128
buy 1 Starflower##109127
buy 1 Talador Orchid##109129
Roughly 60 Garrison Resources _will be required_ to purchase all of these items
|tip You can buy these from the Auction House as well as a Trading Post in your garrison alternatively.
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Blackrock Barbecue##160986,Cooking,1 total |complete achieved(9501/11)
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Blackrock Ham##160962,Cooking,1 total |complete achieved(9501/12)
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Braised Riverbeast##160968,Cooking,1 total |complete achieved(9501/13)
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Calamari Crepes##160999,Cooking,1 total |complete achieved(9501/14)
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Clefthoof Sausages##160971,Cooking,1 total |complete achieved(9501/15)
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Fat Sleeper Cakes##160981,Cooking,1 total |complete achieved(9501/16)
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Feast of Blood##173978,Cooking,1 total |complete achieved(9501/17)
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Feast of the Waters##173979,Cooking,1 total |complete achieved(9501/18)
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Fiery Calamari##160982,Cooking,1 total |complete achieved(9501/19)
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Frosty Stew##160987,Cooking,1 total |complete achieved(9501/20)
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Gorgrond Chowder##161000,Cooking,1 total |complete achieved(9501/21)
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Grilled Gulper##160978,Cooking,1 total |complete achieved(9501/22)
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Grilled Saberfish##161002,Cooking,1 total |complete achieved(9501/1)
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Hearty Elekk Steak##160958,Cooking,1 total |complete achieved(9501/2)
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Pan-Seared Talbuk##160966,Cooking,1 total |complete achieved(9501/3)
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Rylak Crepes##160969,Cooking,1 total |complete achieved(9501/4)
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Saberfish Broth##161001,Cooking,1 total |complete achieved(9501/5)
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Skulker Chowder##160983,Cooking,1 total |complete achieved(9501/6)
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Sleeper Surprise##160989,Cooking,1 total |complete achieved(9501/7)
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Steamed Scorpion##160973,Cooking,1 total |complete achieved(9501/8)
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Sturgeon Stew##160979,Cooking,1 total |complete achieved(9501/9)
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Talador Surf and Turf##160984,Cooking,1 total |complete achieved(9501/10)
step
Congratulations, you have _earned_ the The Draenor Gourmet Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Professions\\The Search For Fact, Not Truth",{
achieveid={9422},
patch='60001',
description="\nFind 30 rare artifacts.",
},[[
step
_Click here_ to level Archaeology |confirm |next "Profession Guides\\Archaeology\\Leveling Guides\\Archaeology 600-700 Leveling Guide"
_OR_
_Click here_ to continue |confirm |next
step
_Find_ #30# rare artifacts |achieve 9422 |tip These are randomly solved with Archaeology so don't give up!
step
Congratulations, you have _earned_ the The Search For Fact, Not Truth Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Professions\\Unite the Clans",{
achieveid={9410},
patch='60001',
description="\nRestore and display pristine versions of all Draenor Clans artifacts.",
},[[
step
_Click here_ to level Archaeology |confirm |next "Profession Guides\\Archaeology\\Leveling Guides\\Archaeology 600-700 Leveling Guide"
_OR_
_Click here_ to continue |confirm |next
step
_Restore and display_ pristine versions of all Draenor Clans artifacts listed below
|tip These are randomly solved with Archaeology so don't give up!
Pristine Fang-Scarred Frostwolf Axe |achieve 9410/1
Pristine Frostwolf Ancestry Scrimshaw |achieve 9410/2
Pristine Wolfskin Snowshoes |achieve 9410/3
Pristine Warsinger's Drums |achieve 9410/4
Pristine Screaming Bullroarer |achieve 9410/5
Pristine Warsong Ceremonial Pike |achieve 9410/6
Pristine Metalworker's Hammer |achieve 9410/7
Pristine Elemental Bellows |achieve 9410/8
Pristine Blackrock Razor |achieve 9410/9
Pristine Weighted Chopping Axe |achieve 9410/10
Pristine Hooked Dagger |achieve 9410/11
Pristine Barbed Fishing Hook |achieve 9410/12
Pristine Calcified Eye In A Jar |achieve 9410/13
Pristine Ceremonial Tattoo Needles |achieve 9410/14
Pristine Ancestral Talisman |achieve 9410/15
Pristine Cracked Ivory Idol |achieve 9410/16
Pristine Flask of Blazegrease |achieve 9410/17
Pristine Gronn-Tooth Necklace |achieve 9410/18
Pristine Doomsday Prophecy |achieve 9410/19
step
Congratulations, you have _earned_ the Unite the Clans Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Professions\\Working in Draenor",{
achieveid={9507},
patch='60001',
description="\nObtain 700 skill points in two primary professions.",
},[[
step
_Obtain 700 skill points_ in two primary professions listed below:
_Click here_ for Alchemy |confirm |next "Profession Guides\\Alchemy\\Leveling Guides\\Alchemy 600-700 Leveling Guide"
_Click here_ for Blacksmithing |confirm |next "Profession Guides\\Blacksmithing\\Leveling Guides\\Blacksmithing 600-700 Leveling Guide"
_Click here_ for Enchanting |confirm |next "Profession Guides\\Enchanting\\Leveling Guides\\Enchanting 600-700 Leveling Guide"
_Click here_ for Engineering |confirm |next "Profession Guides\\Engineering\\Leveling Guides\\Engineering 600-700 Leveling Guide"
_Click here_ for Herbalism |confirm |next "Profession Guides\\Herbalism\\Leveling Guides\\Herbalism 600-700 Leveling Guide"
_Click here_ for Inscription |confirm |next "Profession Guides\\Inscription\\Leveling Guides\\Inscription 600-700 Leveling Guide"
_Click here_ for Jewelcrafting |confirm |next "Profession Guides\\Jewelcrafting\\Leveling Guides\\Jewelcrafting 600-700 Leveling Guide"
_Click here_ for Leatherworking |confirm |next "Profession Guides\\Leatherworking\\Leveling Guides\\Leatherworking 600-700 Leveling Guide"
_Click here_ for Mining |confirm |next "Profession Guides\\Mining\\Leveling Guides\\Mining 600-700 Leveling Guide"
_Click here_ for Skinning |confirm |next "Profession Guides\\Skinning\\Leveling Guides\\Skinning 600-700 Leveling Guide"
_Click here_ for Tailoring |confirm |next "Profession Guides\\Tailoring\\Leveling Guides\\Tailoring 600-700 Leveling Guide"
step
Congratulations, you have earned the _Working in Draenor_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Loremaster of Draenor",{
achieveid={9923},
patch='60100',
description="\nComplete the Draenor quest achievements.",
},[[
step
Use these Draenor Leveling Guides to complete Loremaster:
|tip The Leveling guides cover all required questlines for Loremaster.
|tip Click one of the lines below to load the Leveling guide for that zone.
condition achieved(9923) |next
Frostfire Ridge |complete achieved(9923,4) |confirm always |next "Leveling Guides\\Draenor (10-50)\\Frostfire Ridge (10-50)"
Gorgrond |complete achieved(9923,5) |confirm always |next "Leveling Guides\\Draenor (10-50)\\Gorgrond (15-50)"
Talador |complete achieved(9923,1) |confirm always |next "Leveling Guides\\Draenor (10-50)\\Talador (20-50)"
Spires of Arak |complete achieved(9923,2) |confirm always |next "Leveling Guides\\Draenor (10-50)\\Spires of Arak (30-50)"
Nagrand |complete achieved(9923,3) |confirm always |next "Leveling Guides\\Draenor (10-50)\\Nagrand (35-50)"
step
Congratulations, you earned the _Loremaster of Draenor_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\A Demidos of Reality",{
achieveid={9437},
patch='60001',
description="\nDefeat Demidos, Devourer of Lights in Socrethar's Rise.",
},[[
step
This achievement _can only be completed_ during the Assault on Socrethar's Rise
accept Assault on Socrethar's Rise##36691 |goto Frostwall 40.8,51.8
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in
|tip You should join or create a raid group so you don't get credit towards the quest while attempting to earn this achievement.
confirm
step
_Climb_ up the rocks here |goto Shadowmoon Valley D 47.19,73.36
_Defeat_ Demidos, Devourer of Lights in Socrethar's Rise
kill Demidos##84911 |achieve 9437 |goto Shadowmoon Valley D 46.0,71.7
step
Congratulations, you have _earned_ the A Demidos of Reality Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\A-VOID-ance",{
achieveid={9433},
patch='60001',
description="\nDefeat Kenos without using Void Implosion to slay any Coalesced Void Fragments in the Shadowmoon Enclave.",
},[[
step
This achievement _can only be completed_ during the Assault on Pillars of Fate daily
accept Assault on Pillars of Fate##36689 |goto Frostwall 40.8,51.8
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in
|tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you.
|confirm
step
_Defeat_ Kenos without using Void Implosion to slay any Coalesced Void Fragments in the Shadowmoon Enclave
He will spawn _Voidlings_ during the encounter
When someone has a purple indicator over their head, they need to stay away from the voidlings
_Note_: that if you stand close to the voidling and kill them while you have the debuff, you will fail the achievement
kill Kenos the Unraveler##85037 |achieve 9433 |goto Spires of Arak 70.4,24.2
step
Congratulations, you have _earned_ the A-VOID-ance Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Ancient No More",{
achieveid={9678},
patch='60002',
description="\nDefeat all of the rare creatures in the Everbloom Wilds.",
},[[
step
_Go up_ the hill here |goto Gorgrond/0 62.4,35.0 |only if walking
_Enter_ the cave |goto Gorgrond/0 60.0,32.6 |walk
_Slay_ the following rare elite in the Everbloom Wilds
|tip The will more than likely require some help from friends.
kill Swift Onyx Flayer##88582 |achieve 9678/1 |goto Gorgrond/0 59.5,32.0
step
_Slay_ the following rare elite in the Everbloom Wilds
|tip The will more than likely require some help from friends.
kill Basten##86257 |achieve 9678/3 |goto Gorgrond 69.2,44.6
step
_Slay_ the following rare elite in the Everbloom Wilds
|tip The will more than likely require some help from friends.
kill Alkali##86268 |achieve 9678/5 |goto Gorgrond 71.0,39.0
step
_Slay_ the following rare elite in the Everbloom Wilds
|tip The will more than likely require some help from friends.
kill Firestarter Grash##88580 |achieve 9678/7 |goto Gorgrond 72.8,35.8
step
_Slay_ the following rare elite in the Everbloom Wilds
|tip The will more than likely require some help from friends.
kill Hunter Bal'ra##88672 |achieve 9678/9 |goto Gorgrond 55.0,46.6
step
_Slay_ the following rare elite in the Everbloom Wilds
|tip The will more than likely require some help from friends.
kill Mogamago##88586 |achieve 9678/2 |goto Gorgrond 61.8,39.3
step
_Slay_ the following rare elite in the Everbloom Wilds
|tip The will more than likely require some help from friends.
kill Venolasix##86266 |achieve 9678/4 |goto Gorgrond 63.8,31.6
step
_Slay_ the following rare elite in the Everbloom Wilds
|tip The will more than likely require some help from friends.
kill Depthroot##82058 |achieve 9678/6 |goto Gorgrond 57.6,35.8
step
_Slay_ the following rare elite in the Everbloom Wilds
|tip The will more than likely require some help from friends.
kill Grove Warden Yal##88583 |achieve 9678/8 |goto Gorgrond 59.6,43.0
step
Congratulations, you have _earned_ the Ancient No More Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Arak Star",{
achieveid={9605},
patch='60001',
description="\nComplete the Spires of Arak bonus objectives listed below.",
},[[
step
label "hcrag"
_Follow_ the path |goto Spires of Arak 60.6,38.2 < 10 |only if walking
_Run through_ the hills avoiding mobs |goto Spires of Arak 60.0,37.9 < 10 |only if walking
_Follow_ the path |goto Spires of Arak 58.6,32.5 < 20 |only if walking
_Run on_ the road |goto Spires of Arak 59.0,27.4 < 20 |only if walking
accept Bonus Objective: The Howling Crag##36590 |goto 61.5,25.1
stickystart "Crag_Kill"
step
accept Bonus Objective: The Howling Crag##36590
_Go down_ the ramp |goto Spires of Arak/0 63.8,25.3 < 20 |only if walking
_Follow_ the path |goto Spires of Arak 65.0,25.1 < 20 |only if walking
_Enter_ the cave |goto 64.8,24.1 < 20 |walk
kill Insane Nullifier##85902
_Distrupt_ the Ritual of the Void |q 36590/4 |goto Spires of Arak/0 63.0,23.2
step
accept Bonus Objective: The Howling Crag##36590
_Leave_ the cave |goto Spires of Arak 65.0,24.2 < 20 |walk
_Enter_ the cave |goto Spires of Arak/0 64.8,25.8 |walk
_Follow_ the path in the cave |goto Spires of Arak 63.8,25.8 < 10 |walk
kill Apexis Assault Construct##77767+
|tip There are 3 of them in the corners of this room in the cave.
collect 3 Apexis Keystone##116766 |n
_Click_ 3 Apexis Pylons |goto Spires of Arak/0 63.9,27.8
|tip They look like huge rotating floating crystals with yellow light beams shooting from them.
kill Stored Projection##85887 |q 36590/6 |goto 64.0,27.6
step
accept Bonus Objective: The Howling Crag##36590
_Follow_ the path in the cave |goto Spires of Arak 63.8,25.8 < 10 |walk
_Leave_ the cave |goto Spires of Arak/0 64.8,25.8 < 20 |walk
_Enter_ the cave |goto Spires of Arak/0 66.7,26.5 < 20 |walk
kill Vile Siphonmaster##77767
_Disrupt_ the Ritual of Siphoning |q 36590/3 |goto Spires of Arak/0 68.5,26.3
step
accept Bonus Objective: The Howling Crag##36590
_Leave_ the cave |goto Spires of Arak/0 66.7,26.5 < 20 |walk
_Enter_ the cave |goto 65.2,27.0 < 20 |walk
kill Crazed Obliterator##85901
_Disrupt_ the Ritual of Destruction |q 36590/5 |goto Spires of Arak/0 63.7,26.2
step
accept Bonus Objective: The Howling Crag##36590
_Leave_ the cave |goto Spires of Arak 65.5,27.2 < 20 |walk
_Follow_ the path up |goto Spires of Arak 66.8,30.8 < 10 |only if walking
click Rylak Egg##236010
|tip They look like a big gray eggs in nests on the ground around this area.
_Destroy_ #5# Rylak Eggs |q 36590/2 |goto Spires of Arak 67.2,28.0
More eggs can be _found_ on this cliff [64.2,26.9]
Even more eggs can be _found_ on this cliff [63.2,23.6]
step
label "Crag_Kill"
accept Bonus Objective: The Howling Crag##36590
kill Irradiated Jawbreaker##86044, Raving Venomslasher##85893, Twisted Bilecaster##85894
kill 15 Pale Orcs |q 36590/1
|achieve 9605/1
step
label "blands"
_Run_ on the sand along the edge of the water |goto Spires of Arak 38.4,63.0 < 10 |only if walking
_Keep following_ the path and _go over_ this hill |goto Spires of Arak 42.3,65.5 < 10 |only if walking
accept Bonus Objective: Bloodmane Pridelands##36660 |goto Spires of Arak 44.0,66.2
stickystart "bmb1"
stickystart "prisonerposts"
step
accept Bonus Objective: Bloodmane Pridelands##36660
kill Brokenfang##86076 |q 36660/3 |goto Spires of Arak/0 45.1,65.0
step
accept Bonus Objective: Bloodmane Pridelands##36660
_Follow_ the path |goto Spires of Arak 46.6,68.5 < 20 |only if walking
kill Ralshira##86135 |q 36660/4 |goto Spires of Arak/0 49.4,70.2
step
accept Bonus Objective: Bloodmane Pridelands##36660
_Follow_ the path |goto Spires of Arak 48.7,71.3 < 10 |only if walking
_Jump down_ these rocky hills |goto Spires of Arak 49.2,74.0 < 10 |only if walking
kill Shadowclaw##86138 |q 36660/5 |goto Spires of Arak/0 50.5,77.1
step
label "bmb1"
accept Bonus Objective: Bloodmane Pridelands##36660
kill Bloodmane Bonereaver##85896+, Bloodmane Shortfang##85892+, Bloodmane Earthbinder##85897+, Bloodmane Longclaw##85900+
kill 15 Bloodmane Saberon |q 36660/1 |goto Spires of Arak/0 46.4,68.5
step
label "prisonerposts"
accept Bonus Objective: Bloodmane Pridelands##36660
clicknpc Prisoner Post##86159
|tip They look like tan wooden pillars with arrakoas tied to them all around this area. They can be in the caves also, so be sure to check those as well.
_Free_ #6# Captured Ravenspeakers |q 36660/2 |goto Spires of Arak/0 48.3,70.0
|achieve 9605/2
step
label "wmire"
_Go through_ the doorway |goto Spires of Arak 37.0,55.2 < 10 |only if walking
_Follow_ the road |goto Spires of Arak 37.4,52.3 < 10 |only if walking
_Go through_ the doorway |goto Spires of Arak 38.9,50.0 < 10 |only if walking
_Follow_ the road |goto Spires of Arak 39.0,48.0 < 20 |only if walking
_Run around_ the hills |goto Spires of Arak 38.0,45.3 < 10 |only if walking
accept Bonus Objective: The Writhing Mire##35649 |goto 36.70,45.36
stickystart "bonusmire"
stickystart "toxinbarrels"
step
accept Bonus Objective: The Writhing Mire##35649
kill Taskmaster Banegore##85219 |q 35649/1 |goto Spires of Arak/0 32.3,47.4
step
accept Bonus Objective: The Writhing Mire##35649
kill 5 Varashian Vilefang##85429+ |q 35649/3 |goto Spires of Arak/0 32.1,43.9
step
label "toxinbarrels"
accept Bonus Objective: The Writhing Mire##35649
click Barrel of Harvested Toxin##233035
|tip They look like wooden barrels with an orange ring in the middle.
_Destroy_ #3# Barrels of Harvested Toxin |q 35649/2 |goto Spires of Arak/0 33.3,43.3
step
label "bonusmire"
accept Bonus Objective: The Writhing Mire##35649
kill Shattered Hand Blade##82130+, Shattered Hand Flesh-Sculpter##85214+, Shattered Hand Grunt##85461+
kill 20 Shattered Hand |q 35649/4 |goto Spires of Arak/0 32.1,43.9
|achieve 9605/3
step
label "bhold"
_Run up_ the path |goto Spires of Arak 30.9,38.0 < 20 |only if walking
accept Bonus Objective: Bladefist Hold##36792 |goto 31.17,34.04
|tip There are Elite kills here if you find you cannot handle them you may need to ask for help.
stickystart "bonusbladefist1"
stickystart "bonusbladefist2"
stickystart "iron grenades"
step
accept Bonus Objective: Bladefist Hold##36792
_Enter_ the cave |goto Spires of Arak/0 30.0,31.6 < 10 |walk
kill Brood Mother Xylax##86455 |q 36792/4 |goto Spires of Arak/0 30.7,29.7
|tip She's Elite so you may need a group.
step
label "bonusbladefist1"
accept Bonus Objective: Bladefist Hold##36792
_Leave_ the cave |goto Spires of Arak/0 30.0,31.6 < 10 |walk
kill 12 Bladefist Skitterer##86294 |q 36792/2 |goto Spires of Arak/0 30.1,32.9
step
accept Bonus Objective: Bladefist Hold##36792
_Follow the path_ up the mountain |goto Spires of Arak 30.3,31.7 < 10 |only if walking
_Turn left_ to the arena |goto Spires of Arak/0 31.6,29.4 < 20 |only if walking
kill Bagdoth Goredrinker##86461 |q 36792/5 |goto Spires of Arak/0 30.5,27.4
|tip He's Elite so you may need a group.
step
label "iron grenades"
accept Bonus Objective: Bladefist Hold##36792
clicknpc Iron Grenade##86524
|tip They look like spiked metal balls laying on the ground all around this area.
_Detonate_ #6# Iron Grenades |q 36792/3 |goto Spires of Arak/0 30.5,28.9
|tip Click the button that appears in the center of your screen and THROW IT FAST! before it explodes.
You can _find_ more around [Spires of Arak 29.1,27.5]
step
accept Bonus Objective: Bladefist Hold##36792
_Follow_ the path |goto Spires of Arak 29.2,27.4 < 20 |only if walking
_Enter_ the building |goto Spires of Arak 28.0,27.3 < 10 |only if walking
_Run up_ the stairs all the way to the top |goto Spires of Arak 27.7,27.1 < 10 |only if walking
kill Val'dune Fleshcrafter##86482 |q 36792/6 |goto Spires of Arak/0 27.9,26.9
|tip He's Elite so you may need a group.
step
label "bonusbladefist2"
accept Bonus Objective: Bladefist Hold##36792
kill Shattered Hand Brawler##86285+, Shattered Hand Cutter##86296+, Bladefist Ravager##86286+, Shattered Hand Blood-Twister##86295+, Shattered Hand Dominator##86416+, Shattered Hand Orc##86399+
kill 25 Shattered Hand Orc |q 36792/1 |goto Spires of Arak/0 30.5,27.4
|achieve 9605/4
step
Congratulations, you have _earned_ the Arak Star Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Frostfire Fridge",{
achieveid={9606},
patch='60001',
description="\nComplete the 3 Bonus Objectives in Frostfire Ridge.",
},[[
step
_Go down_ the icy ramp |goto Frostfire Ridge/0 21.3,44.4 < 20 |only if walking
accept Bonus Objective: Forbidden Glacier##34505 |goto Frostfire Ridge/0 26.1,52.3
click Frost Wolf Howler##78910, Frostwolf Grunt##78870
12 Frostwolves thawed  |q 34505/2 |goto Frostfire Ridge 26.1,51.5
kill 1 Malevolent Breath##78791
kill 10 Malevolent Breath##78791 |q 34505/1
step
Complete the Bonus Objective: Forbidden Glacier |achieve 9606/1
step
accept Bonus Objective: Grimfrost Hill##33145 |goto Frostfire Ridge/0 65.91,47.46
stickystart "1"
step
clicknpc Captured Frost Wolf##73284
Captured Frostwolves Freed |q 33145/2 |count 1 |goto Frostfire Ridge/0 68.3,47.9
step
clicknpc Captured Frost Wolf##73284
Captured Frostwolves Freed |q 33145/2 |count 2 |goto Frostfire Ridge/0 67.2,46.7
step
clicknpc Captured Frost Wolf##73284
Captured Frostwolves Freed |q 33145/2 |goto Frostfire Ridge/0 67.2,45.4
step
label "1"
accept Bonus Objective: Grimfrost Hill##33145 |goto 67.75,47.01
kill 8 Grimfrost Drudge##72955, Grimfrost Wolfslayer##72953, Grimfrost Lavaslinger##72987 |q 33145/1 |goto 67.75,47.01
step
Complete the Bonus Objective: Grimfrost Hill |achieve 9606/3
step
_Follow_ the open path back |goto Frostfire Ridge/0 61.5,17.7
accept Bonus Objective: Frostbite Hollow##34501 |goto 65.68,18.13
stickystart "2"
step
_Enter_ the cave |goto 65.7,18.1 |walk
kill Maggle##78896 |q 34501/1
step
_Follow the path back |goto Frostfire Ridge/9 40.2,41.9 |walk
_Jump down_ the ledge |goto 51.1,48.8 |walk
kill Feagel the Biter##78893 |q 34501/2 |goto 66.58,19.07
step
_Go through_ the tunnel |goto Frostfire Ridge/9 55.1,56.1 < 10 |walk
kill Frostscreamer Raeger##78764 |q 34501/3 |goto 68.51,57.03
step
label "2"
kill 10 Shiverblood Slasher##78758, Shiverblood Frostbinder##78869 |q 34501/4 |goto 47.36,28.94
step
Complete the Bonus Objective: Frostbite Hollow |achieve 9606/2
step
Congratulations, you have earned the _Frostfire Fridge_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Between Arak and a Hard Place",{
achieveid={8926},
patch='60001',
description="\nComplete the Spires of Arak storylines.",
},[[
step
_Complete the Spires of Arak storylines_ listed below:
|tip Refer to the Spires of Arak Leveling Guide in order to Earn this Achievement.
When the Raven Swallows the Day |achieve 8926/1
Pinchwhistle Gearworks |achieve 8926/2
Establishing Axefall |achieve 8926/3
Shadows Gather |achieve 8926/4
Secrets of the Talonpriests |achieve 8926/5
The Gods of Arak |achieve 8926/6
Admiral Taylor's Garrison |achieve 8926/7
Legacy of the Apexis |achieve 8926/8
Terokk's Legend |achieve 8926/9
_Please refer to our Spires of Arak leveling guide_ to earn this achievement.
step
Congratulations, you have earned the _Between Arak and a Hard Place_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Bobbing for Orcs",{
achieveid={9635},
patch='60001',
description="\nDispose of 40 floating orcs in Shattrath City.",
},[[
step
This achievement _can only be completed_ during the Assault on Shattrath Harbor daily
accept Assault on Shattrath Harbor##36667 |goto Frostwall 40.8,51.8
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in
|tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you.
confirm
step
_Drag_ the floating orc corpses to dry land and _set them on fire_
|tip You can use the Anglers Fishing Raft to burn the corpses in the water.
_Dispose_ of #40# floating orcs in Shattrath City |achieve 9635 |goto Talador 45.8,22.9
step
Congratulations, you have _earned_ the Bobbing for Orcs Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Breaker of Chains",{
achieveid={9533},
patch='60001',
description="\nFree 50 slaves from captivity in the Bloodmaul Stronghold.",
},[[
step
This achievement _can only be completed_ during the Assault on Stonefury Cliffs daily
accept Assault on Stonefury Cliffs##36669 |goto Frostwall 40.8,51.8
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in
|tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you.
confirm
step
_Free_ #50# slaves from captivity in the Bloodmaul Stronghold |achieve 9533 |goto Frostfire Ridge/0 40.9,20.5
|tip They must be the slaves in cages or in ice and not the slaves that are working.
|tip You can hop between premade custom groups to force new Slaves to spawn.
step
Congratulations, you have _earned_ the Breaker of Chains Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Broke Back Precipice",{
achieveid={9571},
patch='60001',
description="\nDefeat the powerful foes within Broken Precipice.",
},[[
step
This achievement _can only be completed_ during the Assault on the Broken Precipice daily
accept Assault on the Broken Precipice##36694 |goto Frostwall 40.8,51.8
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in
|tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you.
|tip You can hop between premade custom groups to find people hosting their Garrison for the spawns.
confirm
step
_Defeat_ the foes within Broken Precipice listed below
kill Durg Spinecrusher##87788 |achieve 9571/1 |goto Nagrand D 36.0,23.6
|tip Seems to be on a 30 minute respawn timer.
kill Bonebreaker##87837 |achieve 9571/2 |goto Nagrand D 38,15
|tip Seems to be on a 30 minute respawn timer.
kill Pit Slayer##87846 |achieve 9571/3 |goto Nagrand D 38.8,13.8
|tip Summoned by smashing the head on the pike that is located in the arena styled area of the precipice.
step
Congratulations, you have _earned_ the Broke Back Precipice Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Buried Treasures",{
achieveid={9548},
patch='60001',
description="\nFind all of the Warsong objects within Mok'gol Watchpost.",
},[[
step
This achievement _can be completed_ during the Assault on Assault on Mok'gol Watchpost daily
accept Assault on Mok'gol Watchpost##36693 |goto Frostwall/0 41.8,51.0
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in
|tip You should join or create a raid group so you don't get credit towards the quest while attempting to earn this achievement.
confirm
step
Find all of the Warsong objects_ within Mok'gol Watchpost
clicknpc Garrosh's Shackles##87522 |achieve 9548/1 |goto Nagrand D 41.6,37.4
|tip Inside the hut.
clicknpc Warsong Relics##87524 |achieve 9548/2 |goto Nagrand D/0 45.5,36.8
|tip Leaning against the fence.
|tip It can also be found here |goto Nagrand D/0 42.7,38.5
clicknpc Stolen Draenei Tome##87526 |achieve 9548/4 |goto Nagrand D/0 45.1,38.2
|tip If it's not in this tower it will be in another one.
step
The last three require you to _assume_ a spectral wolf form and _click_ dirt mounds
|tip Be sure to dismiss any summoned pets as they will cancel the effect.
kill Mok'gol Wolfsong##86659+
|tip They will drop Wolf Totems on the ground.
clicknpc Wolf totem##87280
clicknpc Dirt Mound##87530
clicknpc Warsong Remains##87525 |achieve 9548/3
|tip Click dirt mounds around the area.
clicknpc Wolf Pup Remains##87527 |achieve 9548/5
|tip Click dirt mounds around the area.
clicknpc Gnarled Bone##87528 |achieve 9548/6
|tip Click dirt mounds around the area.
step
Congratulations, you have _earned_ the Buried Treasures Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Burn it to the Ground",{
achieveid={9667},
patch='60001',
description="\nBurn 100 trees in the Everbloom Wilds.",
},[[
step
This achievement _can be completed_ during the Assault on Assault on the Everbloom Wilds daily
accept Assault on the Everbloom Wilds##36695 |goto Frostwall/0 41.8,51.0
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in
|tip You should join or create a raid group so you don't get credit towards the quest while attempting to earn this achievement.
confirm
step
There are Iron Pyrotech corpses scattered around Everbloom Wilds which grant you a Blackrock Flamethrower when you _interact_ with them
clicknpc Iron Pyrotech##88828
_Use_ the Blackrock Flamethrower button in the middle of the screen
_Burn_ #100# trees in the Everbloom Wilds |achieve 9667 |goto Gorgrond 72.4,38.6
step
Congratulations, you have _earned_ the Burn it to the Ground Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\By Fire Be... Merged?",{
achieveid={9537},
patch='60001',
description="\nComplete the quest 'Rekindling an Old Flame' without using a Kindling Flame to rekindle the essence in Magnarok.",
},[[
step
This achievement _can only be completed_ during the Assault on Magnarok daily
accept Assault on Magnarok##36697 |goto Frostwall/0 41.8,51.0
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in
|tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you.
confirm
step
_Complete_ the quest "Rekindling an Old Flame" without using a Kindling Flame to rekindle the essence in Magnarok
talk Firaga##87971
accept Rekindling an Old Flame##37204 |goto Frostfire Ridge 74.9,29.9
step
_Make your way_ back down the steps wihout using a Kindling Flame to keep the flame lit
You can use _Aviana's Feather, Goblin Glider Kit and/or Skull of the Mad Chief_ to reach your destination easier
|tip If you drop the flame you can pick it back up.
clicknpc The Essence of Flame##87966 |goto Frostfire Ridge 69.8,37.9
turnin Rekindling an Old Flame##37204 |goto Frostfire Ridge 74.8,30.0
|achieve 9537
step
Congratulations, you have _earned_ the By Fire Be... Merged? Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Chapter I: Call of the Archmage",{
achieveid={9640},
patch='60001',
description="\nThis achievement was part of a legendary quest line that has been removed from the game.",
},[[
step
This achievement was part of a legendary quest line that has been removed from the game
|tip You can no longer earn it.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Chapter II: Gul'dan Strikes Back",{
achieveid={9641},
patch='60001',
description="\nThis achievement was part of a legendary quest line that has been removed from the game.",
},[[
step
This achievement was part of a legendary quest line that has been removed from the game
|tip You can no longer earn it.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Chapter III: The Foundry Falls",{
achieveid={9642},
patch='60001',
description="\nThis achievement was part of a legendary quest line that has been removed from the game.",
},[[
step
This achievement was part of a legendary quest line that has been removed from the game
|tip You can no longer earn it.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Chapter IV: Darkness Incarnate",{
achieveid={10148},
patch='60200',
description="\nThis achievement was part of a legendary quest line that has been removed from the game.",
},[[
step
This achievement was part of a legendary quest line that has been removed from the game
|tip You can no longer earn it.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Charged Up",{
achieveid={9634},
patch='60001',
description="\nDefeat 30 Shadow Council members while under the effects of Arkonite Empowerment in Shattrath City.",
},[[
step
This achievement _can only be completed_ during the Assault on Shattrath Harbor daily
accept Assault on Shattrath Harbor##36667 |goto Frostwall/0 41.8,51.0
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in
|tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you.
confirm
step
_Stand_ near a Tainted Arkonite Crystal to get Arkonite Empowerment buff
|tip Do NOT break the crystal!
map Talador
path	41.5,21.3	 41,21	40,17.7
path	37.8,19
Use the provided coordinates to locate Arkonite Crystals
_Defeat_ #30# Shadow Council members while under the effects of Arkonite Empowerment in Shattrath City |achieve 9634
step
Congratulations, you have _earned_ the Charged Up Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Cut off the Head",{
achieveid={9633},
patch='60001',
description="\nDefeat all of the rare creatures in Shattrath City.",
},[[
step
_Slay_ the following rare elite in Shattrath City
|tip This will more than likely require some help from friends.
kill Bombardier Gu'gok##87597 |achieve 9633/1 |goto Talador 44.0,38.0
step
_Slay_ the following rare elite in Shattrath City
|tip This will more than likely require some help from friends.
kill Gug'tol##83019 |achieve 9633/2 |goto Talador 47.6,39.0
step
_Slay_ the following rare elite in Shattrath City
|tip This will more than likely require some help from friends.
kill Haakun the All-Consuming##83008 |achieve 9633/3 |goto Talador 48.0,25.4
step
_Slay_ the following rare elite in Shattrath City
|tip This will more than likely require some help from friends.
kill Felfire Consort##82992 |achieve 9633/4 |goto Talador 50.2,35.2
step
_Slay_ the following rare elite in Shattrath City
|tip This will more than likely require some help from friends.
kill Avatar of Socrethar##88043 |achieve 9633/5 |goto Talador 46.6,35.2
step
_Slay_ the following rare elite in Shattrath City
|tip This will more than likely require some help from friends.
kill Sargerei War Council##88071 |achieve 9633/6 |goto Talador 46.0,27.4
step
_Slay_ the following rare elite in Shattrath City
|tip This will more than likely require some help from friends.
kill Legion Vanguard##88494 |achieve 9633/7 |goto Talador 37.8,21.4
step
_Slay_ the following rare elite in Shattrath City
|tip This will more than likely require some help from friends.
kill Xothear, the Destroyer##82922 |achieve 9633/8 |goto Talador 38.0,14.6
step
Congratulations, you have _earned_ the Cut off the Head Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Delectable Ogre Delicacies",{
achieveid={9534},
patch='60001',
description="\nGain the well fed effects from Toasted Roach Crunchies, Pickled Rat Skewers, and Charred Boar Chops at the same time in Bloodmaul Stronghold.",
},[[
step
This achievement _can only be completed_ during the Assault on Stonefury Cliffs daily
accept Assault on Stonefury Cliffs##36669 |goto Frostwall/0 41.8,51.0
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in
|tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you.
confirm
step
Inside the building you'll find two spawn points inside by the fire pit
You'll find a third spawn directly across from the building at a stone table
|tip The spawns are random.
clicknpc Toasted Roach Crunchies##82801
|tip Grants increased movement speed for 5 minutes.
clicknpc Pickled Rat Skewers##
|tip Grants 25% haste for 2 minutes.
clicknpc Charred Boar Chops##82823
|tip Reduces damage taken by 50% for 2 minutes.
achieve 9534 |goto Frostfire Ridge 48,15
step
Congratulations, you have _earned_ the Delectable Ogre Delicacies Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Don't Let the Tala-door Hit You on the Way Out",{
achieveid={8919},
patch='60001',
description="\nComplete the Talador storylines.",
},[[
step
_Complete the Talador storylines_ listed below:
The Battle for Shattrath |achieve 8919/1
Establishing your Outpost |achieve 8919/2
The Plight of the Arakkoa |achieve 8919/3
In the Shadows of Auchidoun |achieve 8919/4
_Please refer to our Talador leveling guide_ to earn this achievement.
step
Congratulations, you have earned the _Don't Let the Tala-door Hit You on the Way Out_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Eggs in One Basket",{
achieveid={9612},
patch='60001',
description="\nEscort Arakkoa Outcasts to Outcast Darkscryer with 100 morale during Operation: Skettis Ruins.",
},[[
step
This achievement _can only be completed_ during the Assault on Skettis daily
accept Assault on Skettis##36688 |goto Frostwall/0 41.8,51.0
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in
|tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you.
confirm
step
_Escort_ Arakkoa Outcasts to Outcast Darkscryer with 100 morale during Operation: Skettis Ruins
kill Skyreach Labormaster##85542+, Skyreach Dreadtalon##84303+
collect 4 Talon Key##118701
_Free_ 4 Arakkoa Outcasts at once
_Kill_ any hostile Skyreach mobs in the area to gain morale
|tip Get 100 morale and then escort them to quest turnin.
achieve 9612 |goto Spires of Arak 59.6,11.4
step
Congratulations, you have _earned_ the Eggs in One Basket Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Fight the Power",{
achieveid={9655},
patch='60001',
description="\nDefeat all of the rare creatures in The Pit.",
},[[
step
_Slay_ the following rare elite in The Pit
|tip This will more than likely require some help from friends.
kill Maniacal Madgard##86562 |achieve 9655/1 |goto Gorgrond 49.0,33.8
step
_Slay_ the following rare elite in The Pit
|tip This will more than likely require some help from friends.
kill Defector Dazgo##86566 |achieve 9655/2 |goto Gorgrond 48.2,21.0
step
_Slay_ the following rare elite in The Pit
|tip This will more than likely require some help from friends.
kill Durp the Hated##86571 |achieve 9655/3 |goto Gorgrond 50.0,23.8
step
_Slay_ the following rare elite in The Pit
|tip This will more than likely require some help from friends.
kill Inventor Blammo##86574 |achieve 9655/4 |goto Gorgrond 47.6,30.6
step
_Slay_ the following rare elite in The Pit
|tip This will more than likely require some help from friends.
kill Horgg##86577 |achieve 9655/5 |goto Gorgrond 48.6,32.6
step
_Slay_ the following rare elite in The Pit
|tip This will more than likely require some help from friends.
kill Blademaster Ro'gor##86579 |achieve 9655/6 |goto Gorgrond 46.0,33.6
step
_Slay_ the following rare elite in The Pit
|tip This will more than likely require some help from friends.
kill Morgo Kain##86582 |achieve 9655/7 |goto Gorgrond 49.0,22.6
step
Congratulations, you have _earned_ the Fight the Power Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\King of the Monsters",{
achieveid={9601},
patch='60001',
description="\nDefeat each of the following creatures while evolved in the Lost Veil Anzu",
},[[
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100%
|tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you.
confirm
step
Once you enter the Lost Veil Anzu while on the assault quest you will receive a parasite that sticks to your head.
When killing mobs, consuming there corpses and progressing the assault bar the parasite will evolve and will eventually transform you.
|tip You are required to be in this Evolotion form while trying to complete this achievement.
step
Defeat the following creature while evolved in the Lost Veil Anzu
|tip Before killing this creature be sure you are evolved!
kill Giga Sentinal##86562 |achieve 9601/2 |goto Spires of Arak 71.6,44.9
step
Defeat the following creature while evolved in the Lost Veil Anzu
|tip Before killing this creature be sure you are evolved!
kill Gluttonous Giant##87019 |achieve 9601/5 |goto Spires of Arak 74.6,43.3
step
Defeat the following creature while evolved in the Lost Veil Anzu
|tip Before killing this creature be sure you are evolved!
kill Morphed Sentient##86621 |achieve 9601/1 |goto Gorgrond 50.0,23.8
step
Defeat the following creature while evolved in the Lost Veil Anzu
|tip Before killing this creature be sure you are evolved!
kill Shadow Hulk##87027 |achieve 9601/3 |goto Spires of Arak 71.2,33.8
step
Defeat the following creature while evolved in the Lost Veil Anzu
|tip Before killing this creature be sure you are evolved!
kill Mecha Plunderer##87026 |achieve 9601/4 |goto Spires of Arak 74.4,38.6
step
Congratulations, you have _earned_ the King of the Monsters Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Monster Mash",{
achieveid={9600},
patch='60001',
description="\nComplete both of the following Evolutions in the Lost Veil Anzu",
},[[
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100%
|tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you.
confirm
step
Once you enter the Lost Veil Anzu while on the assault quest you will receive a parasite that sticks to your head.
When killing mobs, consuming there corpses and progressing the assault bar the parasite will evolve and will eventually transform you.
|tip These are 2 tips of Evolution that is needed to complete this achievement!
step
kill Infected Plunderer##86215+, Infected Mechanic##89144+
kill 5 Infected Goblins |goto Spires of Arak 73.3,41.1
click Infected Plunderer##86215+, Infected Mechanic##89144+ |goto Spires of Arak 73.3,41.1
Once 5 Infected Goblins are dead and consumed you should evolve into the Shadow Hulk! |achieve 9600/1
step
kill Highmaul Skullcrusher##89127+, Highmaul Relic-Seeker##86155+
kill 5 Ogres |goto Spires of Arak 74.3,44.7
click Highmaul Skullcrusher##89127+, Highmaul Relic-Seeker##86155+ |goto Spires of Arak 74.3,44.7
Once 5 Ogres are dead and consumed you should evolve into the Gluttonous Giant! |achieve 9600/2
step
Congratulations, you have _earned_ the Monster Mash Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Rumble in the Jungle",{
achieveid={10265},
patch='60200',
description="\nComplete all of the Tanaan Jungle Achievements below",
},[[
step
To complete these 8 individual achievements go to our achievements guides.
|tip Completing this achievement also rewards the title "of the jungle"!
confirm
step
Defeat all of the rare creatures in Tanaan Jungle.
Jungle Stalker |achieve 10265/1
step
Complete the Garrison Campaign Chapter Listed.
In Pursuit of Gul'dan |achieve 10265/3
step
Complete the Tanaan Jungle Daily Objectives.
Draenor's Last Stand |achieve 10265/5
step
Defeat all of the champions of Tanaan Jungle.
Hellbane |achieve 10265/7
step
Explore Tanaan Jungle revealing all of the covered areas on the map.
Explore Tanaan Jungle |achieve 10265/2
step
Defeat Supreme Lord Kazzak in Tanaan Jungle.
The Legion will NOT Conquer all |achieve 10265/4
step
Loot 5000 Blackfang Claws from Saberon in Tanaan Jungle.
I Came, I Clawed, I Conquered |achieve 10265/6
step
Discover all of the treasures in Tanaan Jungle.
Jungle Treasure Master |achieve 10265/8
step
Congratulations, you have _earned_ the Rumble in the Jungle Achievement and the "of the jungle" Title!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Writing in the Snow",{
achieveid={9531},
patch='60001',
description="\nFind Shadow Hunter Bwu'ja's tattered journal page in the Bloodmaul Stronghold",
},[[
step
This achievement requires you to find, accept, and turnin a journal.
|tip An explanation mark will appear on your mini map when new the journal.
step
_Find_ Bodrick Grey's tattered journal page in the Bloodmaul Stronghold at one of the locations below
|tip The journal spawn tends to be random.
_Click here_ for this location [Frostfire Ridge 46.01,17.01]
_Click here_ for this location [Frostfire Ridge 46.64,15.65]
_Click here_ for this location [Frostfire Ridge 48.54,14.59]
_Click here_ for this location [Frostfire Ridge 40.01,11.02]
_Click here_ for this location [Frostfire Ridge 44.84,14.02]
_Click here_ for this location [Frostfire Ridge 46.62,15.64]
clicknpc Tattered Journal Page##82833
accept Writing in the Snow##35736
step
talk Rokhan##78487
turnin Writing in the Snow##35736 |achieve 9531 |goto Frostwall 45.7,43.2
step
Congratulations, you have _earned_ the Writing in the Snow Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Fish Gotta Swim, Birds Gotta Eat",{
achieveid={9613},
patch='60001',
description="\nSteal a fish from a Kaliri before it successfully eats it then consume it in Skettis Ruins.",
},[[
step
This achievement _can only be completed_ during the Assault on Skettis daily
accept Assault on Skettis##36688 |goto Frostwall/0 41.8,51.0
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in
|tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you.
confirm
step
_Kill_ the Kaliri that has dove into the water before it goes out of range or eats the fish
|tip If it becomes an Energized Swift Feather, you will need to try again.
kill Darting Swift Feather##84013+
Spiced Barbed Trout _will drop_ and become a lootable object
click Spiced Barbed Trout##233805
|achieve 9613 |goto Spires of Arak 54.0,10.4
step
Congratulations, you have _earned_ the Fish Gotta Swim, Birds Gotta Eat Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Goodness Gracious",{
achieveid={9486},
patch='60001',
description="\nActivate 12 different Fel Runes within 6 seconds and live to tell the tale in Shattrath City.",
},[[
step
This achievement _can only be completed_ during the Assault on the Heart of Shattrath daily
accept Assault on the Heart of Shattrath##36699 |goto Frostwall/0 41.8,51.0
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in
|tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you.
confirm
step
_Head_ inland from the flightmaster |goto Talador/0 49.9,48.1 < 20 |n |only if walking
_Make your way_ to the elevator and take it down |goto Talador/0 47.5,44.1 < 10 |n |only if walking
_Go_ down the stairs |goto Talador/0 45.3,41.3 < 20 |n |only if walking
_Cross the bridge_ |goto 42.7,40.4 < 20 |n |only if walking
_Take_ the elevator up |goto 35.9,45.5 < 5 |c |only if walking
The runes you use to complete this are in a house _located_ in the southwest side of Shattrath City on the upper level
_Use_ any class skills, gear, or potions that you have to boost your speed as you only have six seconds to complete this!
|tip The runes do quite a bit of damage each time you hit one so having potions or a healer nearby is almost required.
Activate #12# Runes within six seconds |achieve 9486 |goto Talador 34.6,46.2
|tip A speed boost is very helpful for completion.
step
Congratulations, you have _earned_ the Goodness Gracious Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Heralds of the Legion",{
achieveid={9638},
patch='60001',
description="\nDefeat all the rare creatures in Shattrath City.",
},[[
step
_Slay_ the following rare elite in Shattrath City
|tip This will more than likely require some help from friends.
kill Orumo the Observer##87668 |achieve 9638/1 |goto Talador 31.4,47.5
step
_Slay_ the following rare elite in Shattrath City
|tip This will more than likely require some help from friends.
kill Lord Korinak##82920 |achieve 9638/2 |goto Talador 30.5,26.4
step
_Slay_ the following rare elite in Shattrath City
|tip This will more than likely require some help from friends.
kill Lady Demlash##82942 |achieve 9638/3 |goto Talador 33.8,37.8
step
_Slay_ the following rare elite in Shattrath City
|tip This will more than likely require some help from friends.
kill Shadowflame Terrorwalker##82930 |achieve 9638/4 |goto Talador 32.8,38.8
step
_Slay_ the following rare elite in Shattrath City
|tip This will more than likely require some help from friends.
kill Kurlosh Doomfang##82988 |achieve 9638/5 |goto Talador 37.2,37.6
step
_Slay_ the following rare elite in Shattrath City
|tip This will more than likely require some help from friends.
kill Matron of Sin##82998 |achieve 9638/6 |goto Talador 39.0,49.6
step
_Slay_ the following rare elite in Shattrath City
|tip This will more than likely require some help from friends.
kill Vigilant Paarthos##88436 |achieve 9638/7 |goto Talador 37.4,43.0
step
Congratulations, you have _earned_ the Heralds of the Legion Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\History of Violence",{
achieveid={9610},
patch='60001',
description="\nUnearth the ancient ogre relics in Broken Precipice.",
},[[
step
This achievement _can only be completed_ during the Assault on the Broken Precipice daily
accept Assault on the Broken Precipice##36694 |goto Frostwall/0 41.8,51.0
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in
|tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you.
confirm
step
_Unearth_ the ancient ogre relic listed below
clicknpc Thak the Conqueror's Bust##88085
achieve 9610/2 |goto Nagrand D 41.2,12.2
step
The next 3 items require you to _interact_ with a Jewel of Transformation to _break_ boulder piles in the area
clicknpc Jewel of Transformation##88064 |goto Nagrand D 36.2,17.2
clicknpc Boulder Pile##88068
|tip Smash them until you find the remaining three.
clicknpc Krog the Dominator's Hammer##88082
achieve 9610/1
clicknpc Thurg the Slave Lord's Necklace##88092
achieve 9610/3
clicknpc Gorg the Subjugator's Idol##88088
achieve 9610/4
step
Congratulations, you have _earned_ the History of Violence Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\I Want More Talador",{
achieveid={9674},
patch='60002',
description="\nComplete the Talador bonus objectives.",
},[[
step
accept Bonus Objective: Aruuna's Desolation##34639
kill Frenzied Ancient##79409 |q 34639/1 |goto Talador 76.18,48.67
|tip He's a burning tree that walks around this area so you may have to search for him.
clicknpc Panicked Young Prowler##79432
Calm #7# Young Prowlers |q 34639/2 |goto 75.80,49.12
achieve 9674/1
step
Run through_ the tall gateway |goto Talador 45.3,71.9 < 20 |only if walking
_Continue_ along the stone path |goto 46.3,68.1 < 20 |only if walking
_Follow_ the stairs up |goto 47.6,63.8 < 20 |only if walking
_Go down_ the steps |goto Talador 45.9,61.0 < 20 |only if walking
accept Bonus Objective: Court of Souls##34667 |goto 43.95,58.16
stickystart "bonuscourt"
step
accept Bonus Objective: Court of Souls##34667
clicknpc Auchenai Ballista##79523
|tip They look like machines made of wood and stone aimed at the sky.
_Left-click_ to target Shadowgaze Batriders
|tip They are flying around in the sky.
_Use_ the ballista's abilities to shoot them down
_Shoot down_ #4# Shadowgaze Batriders |q 34667/3 |goto Talador 43.8,59.2
step
accept Bonus Objective: Court of Souls##34667
_Click_ the yellow arrow to release from the ballista
kill Warlock Soulstealer##79482+
_Release_ #8# Draenei spirits |q 34667/1 |goto Talador 43.2,60.9
step
label "bonuscourt"
kill 10 Demons |q 34667/2 |goto Talador/0 43.2,60.9
achieve 9674/2
step
_Follow_ the path out of Fort Wrynn |goto Talador 70.1,21.4 < 20 |only if walking
accept Bonus Objective: Kuuro's Claim##37421 |goto Talador 74.0,23.6
step
accept Bonus Objective: Kuuro's Claim##37421
_Enter_ the cave |goto Talador 75.3,22.4 < 10 |walk
_Follow_ the path in the cave |goto Talador 76.3,19.5 < 10 |walk
kill Glowgullet Shardshedder##80013+, Glowgullet Devourer##79190+
kill 8 Goren |q 37421/1 |goto Talador 77.5,18.2
kill 6 Iridium Geode##80072 |q 37421/2 |goto Talador 78.4,18.6
You can find more Iridium Geodes if you run up the path at [Talador 77.5,19]
achieve 9674/5
step
accept Bonus Objective: Mor'gran Logworks##35237
kill 6 Iron Shredder##75815+ |q 35237/1 |goto Talador 56.8,16.4
collect 20 Lumber##112994 |q 35237/2 |goto Talador 56.8,16.4
step
accept Bonus Objective: Orunai Coast##35236
kill 6 Iron Shredder##75815 |q 35236/1 |goto Talador/0 59.7,13.3
click Lumber##231962
|tip They look like cut logs on the ground in stacks of three around this area.
collect 20 Lumber##112994 |q 35236/2  |goto Talador/0 59.7,13.3
achieve 9674/3
step
accept Bonus Objective: Zorkra's Fall##34660
clicknpc Zorka's Void Gate##79520
|tip They look like big blue and pink swirling portals around this area.
_Seal_ #4# of Zorka's Void Gates |q 34660/1 |goto Talador/0 53.9,87.5
kill 6 Shattered Hand Grunt##79544 |q 34660/2
achieve 9674/4
step
Congratulations, you have _earned_ the I Want More Talador Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\I Was Framed!",{
achieveid={9483},
patch='60001',
description="\nBait a Darkwing Matron into ambushing a Darktide Rylakinator-3000 while in Darktide Roost.",
},[[
step
This achievement _can only be completed_ during the Assault on Darktide Roost daily
accept Assault on Darktide Roost##36692 |goto Frostwall/0 41.8,51.0
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in
|tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you.
confirm
step
_Pull_ a Darktide Rylakinator-3000 next to a Darkwing Whelpling and let the flamethrower damage it until it calls its mother down
|tip Do not damage the Rylakinator-3000 (No bodyguards or pets, pull with a non damage dealing ability or by proximity).
_Don't touch the Whelpling_
The _matron will attack_ the Rylakinator instead of you |achieve 9483 |goto Shadowmoon Valley D 59.8,87.8
step
Congratulations, you have _earned_ the I Was Framed! Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\In Plain Sight",{
achieveid={9656},
patch='60001',
description="\nFind the Iron Horde Attack Plans in The Pit.",
},[[
step
This achievement _can only be completed_ during the Assault on the Pit daily
accept Assault on the Pit##36701 |goto Frostwall/0 41.8,51.0
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in
|tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you.
confirm
step
The book you're looking for _spawns_ in different areas. _Launching yourself_ to one of the areas below should yield a fruitful discovery.
clicknpc Iron Troop Launcher##85211 |goto Gorgrond 46.0,31.0
_Launch yourself_ on top of the crane here to check for the book |goto Gorgrond/0 45.8,27.2
_Launch yourself_ atop the tower in the middle of the pit to check for the book |goto Gorgrond 48,27
_Launch yourself_ atop a section of broken track at one end of the track to check for the book |goto Gorgrond/0 45.3,25.2
click Iron Horde Attack Orders##237751
|tip A brown book with a metal binding surrounding it.
achieve 9656
step
Congratulations, you have _earned_ the In Plain Sight Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Iron Wings",{
achieveid={9659},
patch='60001',
description="\nUse the Iron Troop Launcher in The Pit to get launched through four rings in 3 minutes.",
},[[
step
This achievement _can only be completed_ during the Assault on the Pit daily
accept Assault on the Pit##36701 |goto Frostwall/0 41.8,51.0
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in
|tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you.
|tip This achievement is known to be bugged, the fix for it is when you are in the air be sure to hold down right click and move your camera back and forth.
confirm
step
clicknpc Iron Troop Launcher##85211 |goto Gorgrond 46.0,31.0
When inside the Launcher _you will see two rings_ in front of you
_Aim_ the Launcher so the line goes through the rings
You will _land on the other side_ close to another Launcher
clicknpc Iron Troop Launcher##85211 |goto Gorgrond 46.7,22.3
_Aim_ the Launcher through the same ring \
|tip Repeat untill you get the achievement
achieve 9659
step
Congratulations, you have _earned_ the Iron Wings Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\It's the Stones!",{
achieveid={9436},
patch='60001',
description="\nDestroy 5 Draenic Darkstones in Socrethar's Rise.",
},[[
step
This achievement _can only be completed_ during the Assault on Socrethar's Rise
accept Assault on Socrethar's Rise##36691 |goto Frostwall/0 41.8,51.0
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in
|tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you.
confirm
step
_Destroy_ #5# Draenic Darkstones in Socrethar's Rise |achieve 9436
The Darkstones have up to a 1.5 hour _respawn_ time
_Click_ the stone here [Shadowmoon Valley D 46,71]
|tip On Demidos' Hill behind a tree.
_Click_ the stone here [Shadowmoon Valley D 49,71]
|tip Behind a pumpkin farm building next to a tree.
_Click_ the stone here [Shadowmoon Valley D 47,78]
|tip At the very top of a rock pile.
_Click_ the stone here [Shadowmoon Valley D 47,76]
|tip At the very top of a rock pile.
_Click_ the stone here [Shadowmoon Valley D 44.8,82.5]
|tip On the ledge of the mountain.
step
Congratulations, you have _earned_ the It's the Stones! Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Make It a Bonus",{
achieveid={9607},
patch='60001',
description="\nComplete the Gorgrond bonus objectives.",
},[[
stickystart "lesserbrimfury"
step
_Go up_ the hill |goto Gorgrond/0 44.0,55.9 < 20 |only if walking
accept Bonus Objective: Brimstone Springs##36603 |goto Gorgrond/0 40.4,57.5
step
kill 15 Sulfuric Ooze##85960 |q 36603/2 |goto Gorgrond/0 40.4,57.5
|tip They are found in the pools of water around the area.
Additionally, you can find more around this area |goto Gorgrond 40.3,60.7
step
kill 3 Grievous Depthworm##85942 |q 36603/3 |goto Gorgrond/0 40.3,53.4
step
label "lesserbrimfury"
kill 8 Lesser Brimfury##85924 |q 36603/1 |goto Gorgrond 42.5,55.2
step
achieve 9607/1
step
accept Bonus Objective: Iyun Weald##36571 |goto Gorgrond/0 62.73,53.46
|tip Avoid Biolante as you do this quest.
step
clicknpc Thorny Leafling##85809
|tip They are small enemies on the ground around this area.
_Punt_ #20# Thorny Leafling |q 36571/2 |goto 62.73,53.46
kill 6 Weald Stinger##85807+ |q 36571/3 |goto 63.08,52.74
kill 12 Thorny Stabber##80744+ |q 36571/1 |goto 62.73,53.46
achieve 9607/2
step
accept Bonus Objective: Mistcreep Mire##36563 |goto Gorgrond/0 52.42,67.57
step
kill 5 Lernaea Vilescale##85693 |q 36563/1 |goto 52.42,67.57
clicknpc Hydra Egg##85786+
|tip They look like big white eggs on the ground around this area.
_Break+ #25# Hydra Eggs |q 36563/2 |goto 52.42,67.57
achieve 9607/3
step
accept Bonus Objective: Valley of Destruction##36480 |goto Gorgrond/0 44.7,48.2 < 15
step
kill 5 Canyon Boulderbreaker##81246 |q 36480/1 |goto 44.69,47.82
kill 20 Goren Nibbler##81775 |q 36480/2 |goto 46.07,47.61
_Break_ #15# Goren Eggs  |q 36480/3 |goto 46.22,47.20
|tip They look like clusters of gray-ish eggs on the ground around this area - walk on them to break them.
achieve 9607/4
stickystart "podlingsjars"
step
_Leave_ the cave |goto Gorgrond 51.4,77.6 < 10 |walk
_Follow_ the path into the valley |goto Gorgrond 50.5,77.9 < 10 |only if walking
_Go up_ and _follow_ the path |goto Gorgrond 50.7,80.0 < 20 |only if walking
accept Bonus Objective: Ruins of the First Bastion##35881
kill Malkor##83452 |q 35881/3 |goto Gorgrond 52.1,81.3
step
label "podlingsjars"
kill Frenzied Spitter##83450+, Frenzied Forager##83449+
kill 20 Frenzied Podlings |q 35881/1 |goto Gorgrond 50.4,80.0
click Ancient Ogre Hoard Jar##233296
|tip They look like brown and white containers that look like vases on the ground around this area.
_Loot_ #8# Ancient Jars |q 35881/2 |goto Gorgrond 50.4,80.0
achieve 9607/5
stickystart "bonuscaves"
step
_Run up_ the path |goto Gorgrond 50.2,71.2 < 30 |only if walking
_Go up_ the hill |goto Gorgrond 49.6,74.2 < 20 |only if walking
_Follow_ the path up the hill |goto Gorgrond 51.0,77.0 < 20 |only if walking
_Enter_ the cave |goto Gorgrond 51.4,77.6 < 10 |walk
accept Bonus Objective: The Forgotten Caves##34724 |goto 51.35,77.72
step
_Take the left path_ in the cave |goto Gorgrond 52.0,78.7 < 10 |walk
_Run or jump_ up the path next to the cave pillar |goto Gorgrond 53.4,79.5 < 10 |walk
kill Gorg the Host##76496 |q 34724/3 |goto Gorgrond/0 53.7,79.5
step
label "bonuscaves"
_All_ around in the cave
kill 15 Spider Egg Sac##76548 |q 34724/2 |goto Gorgrond/0 51.5,78.8
|tip They looks like big white wriggling cocoons.
kill Pale Spiderwalker##76534+, Pale Flinger##76465+
kill 12 Pale |q 34724/1 |goto Gorgrond/0 51.5,78.8
achieve 9607/6
step
accept Bonus Objective: South Gronn Canyon##36476
kill 15 Goren or Gronnling |q 36476/1 |goto Gorgrond 47.4,53.8
kill 10 Grom'kar Grunt##75091 |q 36476/2 |goto Gorgrond 47.4,53.8
talk Grom'kar Peon##85540 |tip They look like orcs laying on the ground around this area.
_Execute_ #8# Dying Grom'kar Peons |q 36476/3 |goto Gorgrond 47.4,53.8
achieve 9607/7
stickystart "bloomweavers"
step
_Go around_ the huge rocks |goto Gorgrond 46.8,88.6 < 20 |only if walking
_Follow_ the path |goto Gorgrond 45.1,84.9 < 20 |only if walking
_Jump up_ into the opening of this tree house |goto Gorgrond 43.8,84.2 < 10 |walk
accept Bonus Objective: Evermorn Springs##36504
step
kill Infested Ogron##82062 |q 36504/2 |goto Gorgrond 42.8,80.6
step
_Run up_ the path |goto Gorgrond 42.5,81.9 < 20 |only if walking
_Follow_ the green path |goto Gorgrond 40.9,84.0 < 20 |only if walking
kill 3 Dew Master##81553 |q 36504/3 |goto Gorgrond 39.6,81.7
step
label "bloomweavers"
kill 10 Bloom Weaver##81575 |q 36504/1 |goto Gorgrond 43.5,80.0
achieve 9607/7
stickystart "bonusstonemaul"
step
_Cross_ this bridge and _follow_ the road |goto Gorgrond 44.6,71.8 < 20 |only if walking
_Enter_ the Stonemaul Arena area |goto Gorgrond 42.0,65.4 < 30
accept Bonus Objective: Stonemaul Arena##36566
step
_Run up_ the wooden ramp |goto Gorgrond 41.0,66.2 < 10 |only if walking
kill Slave Hunter Krag##79623 |q 36566/3 |goto Gorgrond/0 41.1,66.2
step
kill Slave Hunter Brol##79621 |q 36566/4 |goto Gorgrond/0 40.5,66.7
step
_Run up_ the rocks |goto Gorgrond 39.7,68.1 < 10 |only if walking
_Enter_ the building |goto Gorgrond 39.0,68.2 < 10 |walk
kill Slave Hunter Mol##79626 |q 36566/5 |goto Gorgrond/0 39.0,68.8
step
label "bonusstonemaul"
click Keg of Grog##266054
|tip They look like large wooden barrels laying on the ground around this area (They can be in buildings, so be sure to check those).
_Destroy_ #15# Grog Kegs |q 36566/2 |goto Gorgrond/0 40.2,66.0
_Slay_ #20# Stonemaul Ogres |q 36566/1 |goto Gorgrond/0 40.2,66.0
achieve 9607/8
stickystart "tangle1"
step
_Follow_ the path |goto Gorgrond 52.2,68.4 < 20 |only if walking
_Go through_ the path of huge thorny vines |goto Gorgrond 56.1,71.5 < 10 |walk
accept Bonus Objective: Tangleheart##36564
step
kill Ontogen the Harvester##82372 |q 36564/3 |goto Gorgrond 59.9,71.1
step
label "tangle1"
accept Bonus Objective: Tangleheart##36564 |goto Gorgrond/0 60.6,67.0
click Pollen Pod##235903
|tip They are yellow-orange spiky looking plant blulbs on the ground around this area.
_Destroy_ #10# Pollen Pods |q 36564/2 |goto Gorgrond/0 60.6,67.0
kill 15 Tangleheart Cultivator##82322 |q 36564/1 |goto Gorgrond/0 61.7,64.5
|tip They aren't heavily packed together so just run around this whole area and kill them when you find them.
achieve 9607/8
step
_Leave_ the Stonemaul Arena area |goto Gorgrond 42.0,65.4 < 30 |only if walking
accept Bonus Objective: Affliction Ridge##36473
kill 25 |q 36473/1 |goto Gorgrond 43.6,64.4
step
clicknpc Ancient Seedbearer##82392+
|tip They look like big tree ents with leafy green plants as hair laying on the ground around this area.
_Burn_ #5# Ancient Seedbearers |q 36473/2 |goto Gorgrond 43.6,64.4
achieve 9607/9
stickystart "infestedtoxic"
step
accept Bonus Objective: The Razorbloom##36500
_Follow_ the path up |goto Gorgrond 50.4,70.8 < 20 |only if walking
_Go up_ the small hill |goto Gorgrond 49.2,73.0 < 20 |only if walking
_Enter_ the small house |goto Gorgrond 49.3,71.4 < 10 |walk
kill Voice of Iyu##81634 |q 36500/2 |goto 49.43,71.66
step
label "infestedtoxic"
accept Bonus Objective: The Razorbloom##36500
kill 12 Infested |q 36500/1 |goto Gorgrond 48.3,71.4
_Squish_ #25# Toxic Slimemold |q 36500/3 |goto Gorgrond 48.3,71.4
|tip They are small green slimes all over the area in groups (Walk on them to squish them).
achieve 9607/9
step
Congratulations, you have earned the _Make It a Bonus_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Making the Cut",{
achieveid={9617},
patch='60001',
description="\nDefeat Krud the Eviscerator in the Gorian Proving Grounds.",
},[[
step
In order to fight Krud you will need to _defeat 15 enemies_ that spawn near him
kill Krud the Eviscerator##88210 |achieve 9617/1 |goto Nagrand D 58.2,12.0
step
Congratulations, you have earned the _Making the Cut_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Master Relic Hunter",{
condition_end=function() return achieved(9836) end,
achieveid={9901,9836},
patch='60100',
description="\nThis guide will walk you through completing all 6 Relic Hunter quests offered by Harrison Jones in your garrison.",
endlevel=100
},[[
step
label "Start"
ding 100
Proceeding to guide |only if garrisonlvl(3) |next "Dailies"
Proceeding to alternate |only if garrisonlvl(1) or garrisonlvl(2) |next "Alternate"
stickystart "NPC1"
step
label "Alternate"
You currently have a level 1 Town Hall. Harrison Jones will only appear in a level 3 garrison |only if garrisonlvl(1)
You currently have a level 2 Town Hall. Harrison Jones will only appear in a level 3 garrison |only if garrisonlvl(2)
To access Harrison Jones, you will need to join another player's level 3 garrison
|tip To join a player's garrison, they will need to be group leader. You can right-click your player frame and select "View Leader's Garrison".
Accept the daily quest Harrison Jones offers |complete haveq(37848) or haveq(37849) or haveq(37850) or haveq(37851) or haveq(37993) or haveq(37973) or haveq(37976) or haveq(37977) or haveq(37978) or haveq(37997) or haveq(37881) or haveq(37882) or haveq(37883) or haveq(37884) or haveq(37994) or haveq(37914) or haveq(37916) or haveq(37917) or haveq(37918) or haveq(37995) or haveq(37788) or haveq(37797) or haveq(37798) or haveq(37799) or haveq(37992) or haveq(37941) or haveq(37942) or haveq(37943) or haveq(37944) or haveq(37996) |repeatable |next "Quests"
#include "Garrison_Harrison"
accept Treasure Contract: Amulet of Rukhmar##37848 |repeatable |only if garrisonlvl(4)
accept Treasure Contract: The Artificer##37973 |repeatable |only if garrisonlvl(4)
accept Treasure Contract: Explosive Discoveries##37881 |repeatable |only if garrisonlvl(4)
accept Treasure Contract: The Thunderlord Sage##37914 |repeatable |only if garrisonlvl(4)
accept Treasure Contract: Gutrek's Cleaver##37788 |repeatable |only if garrisonlvl(4)
accept Treasure Contract: The Infected Orc##37941 |repeatable |only if garrisonlvl(4)
step
label "NPC1"
Harrison Jones is one of 4 random NPCs that can spawn in a garrison
If he is not available in your garrison, you may join a friend's garrison who has him available
stickystart "NPC2"
step
label "Dailies"
#include "Garrison_Harrison"
Accept the daily quest Harrison Jones offers |complete haveq(37848) or haveq(37849) or haveq(37850) or haveq(37851) or haveq(37993) or haveq(37973) or haveq(37976) or haveq(37977) or haveq(37978) or haveq(37997) or haveq(37881) or haveq(37882) or haveq(37883) or haveq(37884) or haveq(37994) or haveq(37914) or haveq(37916) or haveq(37917) or haveq(37918) or haveq(37995) or haveq(37788) or haveq(37797) or haveq(37798) or haveq(37799) or haveq(37992) or haveq(37941) or haveq(37942) or haveq(37943) or haveq(37944) or haveq(37996) |repeatable |next "Quests"
accept Treasure Contract: Amulet of Rukhmar##37848 |repeatable |only if garrisonlvl(4)
accept Treasure Contract: The Artificer##37973 |repeatable |only if garrisonlvl(4)
accept Treasure Contract: Explosive Discoveries##37881 |repeatable |only if garrisonlvl(4)
accept Treasure Contract: The Thunderlord Sage##37914 |repeatable |only if garrisonlvl(4)
accept Treasure Contract: Gutrek's Cleaver##37788 |repeatable |only if garrisonlvl(4)
accept Treasure Contract: The Infected Orc##37941 |repeatable |only if garrisonlvl(4)
step
label "NPC2"
Harrison Jones randomly spawns in a garrison
If unavailable, you will need to find someone who currently has him
|tip To join a player's garrison, they will need to be group leader. You can right-click your player frame and select "View Leader's Garrison".
step
label "Quests"
Proceeding |next "Rukhmar" |only if haveq(37848) or haveq(37849) or haveq(37850) or haveq(37851) or haveq(37993)
Proceeding |next "Artificer" |only if haveq(37973) or haveq(37976) or haveq(37977) or haveq(37978) or haveq(37997)
Proceeding |next "Explosive" |only if haveq(37881) or haveq(37882) or haveq(37883) or haveq(37884) or haveq(37994)
Proceeding |next "Thunderlord" |only if haveq(37914) or haveq(37916) or haveq(37917) or haveq(37918) or haveq(37995)
Proceeding |next "Cleaver" |only if haveq(37788) or haveq(37797) or haveq(37798) or haveq(37799) or haveq(37992)
Proceeding |next "Infected" |only if haveq(37941) or haveq(37942) or haveq(37943) or haveq(37944) or haveq(37996)
step
label "Rukhmar"
The Research Notes look like small scroll cases on the ground
Gather 5 Research Notes |q 37848/1 |goto Spires of Arak/0 48.8,8.4
|tip These are usually found inside or around the small cauldrons in this area.
step
Click the _Quest Complete_ Box:
turnin Treasure Contract: Amulet of Rukhmar##37848
accept Amulet of Rukhmar: The First Key##37849
step
Click on the yellowish Mysterious Device
Activate the first key |q 37849/1 |goto Spires of Arak/0 53.0,14.8
step
Click the _Quest Complete_ Box:
turnin Amulet of Rukhmar: The First Key##37849
accept Amulet of Rukhmar: The Second Key##37850
step
Click on the yellowish Mysterious Device |tip It is located underwater at the base of the waterfall.
Activate the second key |q 37850/1 |goto Spires of Arak/0 60.5,12.3
step
Click the _Quest Complete_ Box:
turnin Amulet of Rukhmar: The Second Key##37850
accept Amulet of Rukhmar: The Final Key##37851
step
Follow the river and enter the cave here |goto Spires of Arak/0 73.4,34.9
Click on the yellowish Mysterious Device
Activate the final key |q 37851/1 |goto Spires of Arak/0 71.8,34.6
step
Click the _Quest Complete_ Box:
turnin Amulet of Rukhmar: The Final Key##37851
accept Amulet of Rukhmar: The Apexis Device##37993
step
Locate the Apexis device |q 37993/1 |goto Spires of Arak/0 73.5,43.1
step
Click the each statue until they face the center portal device
Activate and enter the portal |q 37993/2 |goto Spires of Arak/0 73.5,43.1
step
kill 1 Aspect of Rukhmar##89990
Face Rukhmar |q 37993/3 |goto Spires of Arak/0 70.0,34.2
|next "Turnin"
step
label "Artificer"
Locate the missing artificer |q 37973/1 |goto Spires of Arak/0 67.4,21.8
step
Read Artificer Maatun's Journal |q 37973/2 |goto Spires of Arak/0 67.4,21.8
step
Click the _Quest Complete_ Box:
turnin Treasure Contract: The Artificer##37973
accept Dream of Argus: The First Fragment##37976
step
Enter the cave |goto Spires of Arak/0 69.2,22.4 < 10 |walk
kill Lor Stonefist##90603
Retrieve the first Rough Crystal Shard |q 37976/1 |goto Spires of Arak/0 70.4,22.0
step
Click the _Quest Complete_ Box:
turnin Dream of Argus: The First Fragment##37976
accept Dream of Argus: The Second Fragment##37977
step
kill Vok Blacktongue##90602
Retrieve the Cracked Crystal Shard |q 37977/1 |goto Spires of Arak/0 72.9,32.0
step
Click the _Quest Complete_ Box:
turnin Dream of Argus: The Second Fragment##37977
accept Dream of Argus: The Final Fragment##37978
step
kill Jagganath##90458, Koros Soulsplinter##90404
Retrieve the Cracked Crystal Shard |q 37978/1 |goto Spires of Arak/0 75.0,26.1
step
Click the _Quest Complete_ Box:
turnin Dream of Argus: The Final Fragment##37978
accept Dream of Argus: The Crystal Reborn##37997
step
_Enter_ the cave |goto Shadowmoon Valley D/0 32.7,45.3 < 10 |walk
Find the Reconstruction device |q 37997/1 |goto Shadowmoon Valley D/0 32.3,46.6
step
Click the altar to place the crystal shards. After, click the Inner, Middle, and Outer Rings until the purple crystals on the rings line up with the purple crystals on the altar
Place the shards on the altar |q 37997/2 |goto Shadowmoon Valley D/0 32.3,46.6
Retrieve the Dream of Argus |q 37997/3 |goto Shadowmoon Valley D/0 32.3,46.6
|next "Turnin"
step
label "Explosive"
kill Demolitionist Megacharge##90107
Retrieve Megacharge's Cookbook |q 37881/1 |goto Shadowmoon Valley D/0 56.6,92.0
step
Click the _Quest Complete_ Box:
turnin Treasure Contract: Explosive Discoveries##37881
accept Dark Grimoire: The First Ingredient##37882
step
Jump on the cart
Retrieve the Blasting Powder |q 37882/1 |goto Shadowmoon Valley D/0 63.7,94.0
step
Click the _Quest Complete_ Box:
turnin Dark Grimoire: The First Ingredient##37882
accept Dark Grimoire: The Second Ingredient##37883
step
The crate is located floating underwater
Retrieve the Detonator |q 37883/1 |goto Shadowmoon Valley D/0 50.4,89.6
step
Click the _Quest Complete_ Box:
turnin Dark Grimoire: The Second Ingredient##37883
accept Dark Grimoire: The Final Ingredient##37884
step
kill Fel Imp##88264+, Nightshade Consort##84908+, Imp Servant##84999+, Sargerei Demonlord##81543+, Succubus##85478+, Obedient Felhound##86269+
Gather 5 Demon's Blood |q 37884/1 |goto Shadowmoon Valley D/0 48.9,76.2
step
Click the _Quest Complete_ Box:
turnin Dark Grimoire: The Final Ingredient##37884
accept Dark Grimoire: Breaching the Barrier##37994
step
_Carefully jump_ down and _enter the cave_ here |goto Shadowmoon Valley D/0 42.7,74.2 |walk
Jump over the runes and beams to reach the Grimoire
|tip You cannot touch any of the pink areas. Try jumping along the left or right side for easier access.
Bypass the Ancient Barrier |q 37885/1 |goto Shadowmoon Valley D/0 43.3,74.5
Retrieve the Grimoire of the Nameless Void |q 37885/2 |goto Shadowmoon Valley D/0 43.7,75.0
|next "Turnin"
step
label "Thunderlord"
You will need at least 1 Raw Clefthoof Meat to complete this Treasure Contract
collect 1 Raw Clefthoof Meat##109131 |next "thunderlordstart"
_
_Click here_ to farm one of these instead |confirm |next "cleftfarm"
step
label "cleftfarm"
kill Tamed Clefthoof##79034+ |goto Nagrand D 79.6,72.8
collect 1 Raw Clefthoof Meat##109131
stickystart "Meat"
step
label "thunderlordstart"
Find Argoram |q 37914/1 |goto Frostfire Ridge/0 70.1,26.8
talk Windreader Argoram##90176
Select "_Search the orc for clues_"
Searh Argoram for Clues |q 37914/2 |goto Frostfire Ridge/0 70.1,26.8
step
Click the _Quest Complete_ Box:
turnin Treasure Contract: The Thunderlord Sage##37914
accept Gronnsbane: The Broken Spear##37916
step
Gather Gronnsbane's Weight |q 37916/3 |goto Frostfire Ridge/0 72.45,26.87
step
Gather Gronnsbane's Haft |q 37916/2 |goto Frostfire Ridge/0 70.82,23.69
step
Gather Gronnsbane's Blade |q 37916/1 |goto Frostfire Ridge/0 71.87,33.34
step
Click the _Quest Complete_ Box:
turnin Gronnsbane: The Broken Spear##37916
accept Gronnsbane: The Blessing of Fire##37917
step
_Continue west_ on the path |goto Frostfire Ridge/0 50.1,27.2 < 10 |walk
Click the Molten Shamanstone
Receive the Blessing of Fire |q 37917/1 |goto Frostfire Ridge/0 42.44,13.03
step
Click the _Quest Complete_ Box:
turnin Gronnsbane: The Blessing of Fire##37917
accept Gronnsbane: The Blessing of Frost##37918
step
Follow the rocky path up |goto Frostfire Ridge 47.5,19.3 < 30 |only if walking
Go up the short snowy ramp |goto Frostfire Ridge 49.9,19.6 < 30 |only if walking
Enter the large circular building |goto 49.5,21.3 < 10 |only if walking
Go up the wooden walkway  |goto 49.4,22.0 < 5 |only if walking
Click the Frozen Shamanstone located at the top of the tower
Receive the Blessing of Frost |q 37918/1 |goto Frostfire Ridge/0 49.15,21.39
step
Click the _Quest Complete_ Box:
turnin Gronnsbane: The Blessing of Frost##37918
accept Gronnsbane: The Blessing of Beasts##37995
step
label "Meat"
You will need at least 1 Raw Clefthoof Meat to complete this Treasure Contract!
collect 1 Raw Clefthoof Meat##109131
step
Pass through the rocky ridge |goto Frostfire Ridge 43.5,23.5 < 20
Click the altar and select "_Place offering of raw clefthoof meat_"
kill Gok'tal##90598
Lure and kill Gok'tal |q 37995/1 |goto Frostfire Ridge/0 45.57,28.15
step
clicknpc Gok'tal##90598
Loot the Empowered Gronnsbane |q 37995/2 |goto Frostfire Ridge/0 45.57,28.15
|next "Turnin"
step
label "Cleaver"
kill Arcanist Earthsmasher##83577+, Slave-Grinder##88187+, Sledgebasher##83575+
Collect 5 Journal Pages |q 37788/1 |goto Nagrand D/0 37.0,17.8
step
Click the _Quest Complete_ Box:
turnin Treasure Contract: Gutrek's Cleaver##37788
accept Gutrek's Cleaver: The First Piece##37797
step
Gutrek's Pommel is located inside the eye socket of a skull in the pit
Retrieve Gutrek's Pommel |q 37797/1 |goto Nagrand D/0 39.7,14.9
step
Click the _Quest Complete_ Box:
turnin Gutrek's Cleaver: The First Piece##37797
accept Gutrek's Cleaver: The Second Piece##37798
step
The Hilt is located just under the water next to the bones
Retrieve Gutrek's Hilt |q 37798/1 |goto Nagrand D/0 38.5,39.5
step
Click the _Quest Complete_ Box:
turnin Gutrek's Cleaver: The Second Piece##37798
accept Gutrek's Cleaver: The Final Piece##37799
step
_Jump up_ onto the wall here and follow it |goto Nagrand D/0 55.7,10.9 < 10 |only if walking
Retrieve Gutrek's Blade |q 37799/1 |goto Nagrand D/0 55.0,12.3
step
Click the _Quest Complete_ Box:
turnin Gutrek's Cleaver: The Final Piece##37799
accept Gutrek's Cleaver: The Spirit Forge##37992
step
Enter the cave
Find the Spirit Forge |q 37992/1 |goto Nagrand D/0 51.54,27.03
step
Click the Furnace followed by the Anvil and finally the Trough on the other side of the room
Reforge Gutrek's Cleaver |q 37992/2 |goto Nagrand D/0 52.8,27.0
step
kill Gutrek##89824
Click the cleaver and kill Gutrek when he appears
Claim Gutrek's Cleaver |q 37992/3 |goto Nagrand D/0 52.8,26.6
|next "Turnin"
step
label "Infected"
kill Enthralled Mutant##88394+, Twisted Guardian##88279+
Retrieve Grinning Tolg's Journal |q 37941/1 |goto Gorgrond/0 70.4,30.2
step
Click the _Quest Complete_ Box:
turnin Treasure Contract: The Infected Orc##37941
accept The Silent Skull: The First Reagent##37942
step
Retrieve the Shadethistle Leaves |q 37942/1 |goto Gorgrond/0 57.0,35.9
step
Click the _Quest Complete_ Box:
turnin The Silent Skull: The First Reagent##37942
accept The Silent Skull: The Second Reagent##37943
step
Retrieve the Bonethorn Vine |q 37943/1 |goto Gorgrond/0 68.6,34.2
step
Click the _Quest Complete_ Box:
turnin The Silent Skull: The Second Reagent##37943
accept The Silent Skull: The Third Reagent##37944
step
Retrieve the Steamcap Mushrooms |q 37944/1 |goto Gorgrond/0 59.6,33.3
step
Click the _Quest Complete_ Box:
turnin The Silent Skull: The Third Reagent##37944
accept The Silent Skull: Taking from the Taker##37996
step
_Enter_ the cave |goto Gorgrond/0 60.0,32.6 < 10 |walk
Brew the Laughing Skull Elixir |q 37996/1 |goto Gorgrond/0 59.9,31.6
step
talk Brightscale Ravager##90266
Ask it: "_Can you take me to Skulltaker?"_
As you follow, _avoid the skulls_ along the route
Follow the Ravager and ride the big bug to Gu'rakh |q 37996/2 |goto Gorgrond/0 62.2,32.0
step
kill Gu'rakh##90285
Retrieve the Silent Skull |q 37996/3 |goto Gorgrond/0 57.2,26.9
|next "Turnin"
step
label "Turnin"
#include "Garrison_Rokhan"
You can safely delete the "Compiled Research" item in your inventory |only if haveq(37993)
turnin Amulet of Rukhmar: The Apexis Device##37993 |only if haveq(37993) |or
You can safely delete "Artificer Maatun's Journal" from your inventory |only if haveq(37997)
turnin Dream of Argus: The Crystal Reborn##37997 |only if haveq(37997) |or
turnin Dark Grimoire: Breaching the Barrier##37994 |only if haveq(37994) |or
turnin Gronnsbane: The Blessing of Beasts##37995 |only if haveq(37995) |or
turnin Gutrek's Cleaver: The Spirit Forge##37992 |only if haveq(37992) |or
turnin The Silent Skull: Taking from the Taker##37996 |only if haveq(37996) |or
step
You have finished today's daily Treasure Contract! Check back tomorrow |only if not achieved(9836)
Congratulations, you now have the Master Relic Hunter achivement! |achieve 9836 |only if achieved(9836)
Click here to return to the menu |confirm |next "Start"
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Mean and Green",{
achieveid={9654},
patch='60001',
description="\nReach 10 stacks of Mutagen in the Everbloom Wilds.",
},[[
step
_Fly_ to Everbloom Outlook |goto Gorgrond/0 68.8,28.8 < 5 |only if walking
_Head South_ through the forest |goto Gorgrond/0 70.6,33.5 < 20 |only if walking
_Continue South_ through the marsh |goto Gorgrond/0 71.7,38.2 < 20 |only if walking
_Gain_ the Mutagen debuff from killing mobs in the Everbloom Wilds
_Stand_ in the green pool that will appear under their corpse to gain 1 stack of Mutagen
|tip Leaving Everbloom Wilds will remove all stacks.
kill Twisted Guardian##88279+, Enthralled Mutant##88394+
_Gain_ 10 stacks of Mutagen
|achieve 9654 |goto Gorgrond/0 71.6,41.8
step
Congratulations, you have _earned_ the Mean and Green Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Nagrandeur",{
achieveid={8928},
patch='60001',
description="\nComplete the Nagrand storylines.",
},[[
step
_Complete the Nagrand storylines_ listed below:
The Might of Steel and Blood |achieve 8928/1
The Taking of Lok-rath |achieve 8928/2
Remains of Telaar |achieve 8928/3
The Ring of Trials |achieve 8928/4
The Shadow of the Void |achieve 8928/5
The Dark Heart of Oshu'gun |achieve 8928/6
The Legacy of Garrosh Hellscream |achieve 8928/7
Trouble at the Overwatch |achieve 8928/8
Please refer to our _Nagrand Leveling Guide_ to earn this achievement
step
Congratulations, you have earned the _Nagrandeur_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\On the Shadow's Trail",{
achieveid={9529},
patch='60001',
description="\nComplete the Shadowmoon Valley storyline 'To Catch a Shadow'.",
},[[
step
_Complete the Frostfire Ridge storylines_ listed below:
You must be _Level 94_ in order to unlock the quest
To Capture Gul'dan |achieve 9529/1
_Please refer to our Frostfire Ridge leveling guide_ to earn this achievement
step
Congratulations, you have earned the _On the Shadow's Trail_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\One of Us! One of Us!",{
achieveid={9434},
patch='60001',
description="\nGain Power Overwhelming while inside the realm of the void in the Shadowmoon Enclave.",
},[[
step
This achievement _can only be completed_ during the Assault on Pillars of Fate daily
accept Assault on Pillars of Fate##36689 |goto Frostwall/0 41.8,51.0
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in
|tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you.
confirm
step
_Click_ the Void Portal |goto Spires of Arak 72.2,23.6
|tip When you enter the portal you will enter the Twisting Nether.
Kill the Void Enemies in the area
|tip Killing these mobs will fill up your Void Attunement bar.
_Gain_ the Power Overwhelming buff |achieve 9434
step
Congratulations, you have _earned_ the One of Us! One of Us! Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Picky Palate", {
achieveid={9663},
patch='60001',
description="\nBenefit from the effects of a Prickly Guava, a Lovely Coconut, and Gorgraberries at once in Everbloom Wilds.",
},[[
step
This achievement _can only be completed_ during the Assault on the Everbloom Wilds daily
accept Assault on the Everbloom Wilds##36695 |goto Frostwall/0 41.8,51.0
step
_NOTE_: You need to be on the quest _Assault on the Everblood Wilds_ to earn this achievement
|tip Create a raid group to prevent progress of the quest.
confirm
step
map Gorgrond
path loop off
path	70.90,42.20	72.21,41.53	73.16,37.94
Move along the provided path
click Gorgraberry##237772
|tip The buff lasts for ten minutes so searching for the next isn't a total rush.
click Lovely Coconut##237590
|tip The buff lasts for ten minutes so searching for the next isn't a total rush.
click Prickly Guava##237765
|tip The buff lasts for ten minutes so searching for the next isn't a total rush.
achieve 9663
step
Congratulations, you have _earned_ the Picky Palate Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Pillars of Draenor",{
achieveid={9658},
patch='60001',
description="\nHold the power of all 3 pillars of power in the Everbloom Wilds simultaneously.",
},[[
step
_NOTE_: You need to be on the quest _Assault on the Everblood Wilds_ to earn this achievement
accept Assault on the Everbloom Wilds##36695 |goto Frostwall/0 41.8,51.0
|tip Create a raid group to prevent progress of the quest.
step
All 3 Pillars have a 5 minute duration buff and once you get all three buffs _you get the Pillar of Power buff_
click Pillar of Creation##237728 |goto Gorgrond 69.8,43.9
click Pillar of Rejuvenation##237730 |goto Gorgrond 70.7,36.5
click Pillar of Life##237729 |goto Gorgrond 73.6,42.8
achieve 9658
step
Congratulations, you have _earned_ the Pillars of Draenor Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Planned to Fail", {
achieveid={9711},
patch='60002',
description="\nDestroy 10 Secret Warplans in Iron Siegeworks.",
},[[
step
_NOTE_: You need to be on the quest _Assault on the Iron Siegeworks_ to earn this achievement
accept Assault on the Iron Siegeworks##36696 |goto Frostfire Ridge 85.1,59.7
|tip Create a raid group to prevent progress of the quest.
step
click Secret Warplans##234685
Destroy #10# Secret Warplans in Iron Siegeworks |achieve 9711/1 |goto Frostfire Ridge 85.8,55.4
|tip The warplans are large maps laying around with daggers stabbed into them.
step
Congratulations, you have _earned_ the Planned to Fail Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Poisoning the Well",{
achieveid={9710},
patch='60002',
description="\nPoison 10 Kegs of Impaler Ale in Iron Siegeworks.",
},[[
step
_NOTE_: You need to be on the quest _Assault on the Iron Siegeworks_ to earn this achievement
accept Assault on the Iron Siegeworks##36696 |goto Frostfire Ridge 85.1,59.7
|tip Create a raid group to prevent progress of the quest.
step
_Poison_ #10# Kegs of Impaler Ale scattered throughout the area |achieve 9710/1 |goto Frostfire Ridge 85.8,55.4
|tip These seem to be places mostly inside buildings and might be campable and used multiple times.
step
Congratulations, you have _earned_ the Poisoning the Well Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Poor Communication",{
achieveid={9637},
patch='60001',
description="\nBurn 30 Sargerei Missives in Shattrath City.",
},[[
step
_NOTE_: You need to be on the quest _Assault on the Heart of Shattrath_ to earn this achievement
accept Assault on the Heart of Shattrath##36699 |goto Frostfire Ridge 85.1,59.7
|tip Create a raid group to prevent progress of the quest.
step
map Talador
path loop off
path	33.62,39.75	33.78,40.69	33.78,40.69
path	34.34,39.90	35.79,40.46	37.48,41.04
path	37.08,42.92	Talador 37.88,43.90
_Burn_ #30# Sargerei Missives in Shattrath City |achieve 9637/1
|tip They are sheets of paper pinned to a wall or laying on a flat surface.
These spots should be enough to go back and farm them repeatedly
|tip Join other players realms using group finder. New realms will mean new missive spawns
step
Congratulations, you have _earned_ the Poor Communication Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Putting the Gore in Gorgrond", {
achieveid={8924},
patch='60001',
description="\nComplete the Gorgrond storylines.",
},[[
step
_Complete the Gorgrond storylines_ listed below:
Your Base, Your Choice |achieve 8924/1
Supporting Your Garrison |achieve 8924/2
In the Land of Giants |achieve 8924/3
The Iron Approach |achieve 8924/4
_Please refer to our Gorgrond leveling guide_ to earn this achievement.
step
Congratulations, you have earned the _Putting the Gore in Gorgrond_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Securing Draenor",{
achieveid={9562},
patch='60001',
description="\nComplete the Draenor bonus objectives.",
},[[
step
Complete these quests:
|tip Use the Garrison Assault Daily Quests guide to accomplish this.
Assault on the Iron Siegeworks |achieve 9562/1
Assault on Stonefury Cliffs |achieve 9562/2
Assault on Magnarok |achieve 9562/3
Assault on the Pit |achieve 9562/4
Assault on the Everbloom Wilds |achieve 9562/5
Assault on the Broken Precipice |achieve 9562/6
Assault on Shattrath Harbor  |achieve 9562/7
Assault on Mok'gol Watchpost |achieve 9562/8
Assault on Socrethar's Rise |achieve 9562/9
Assault on Darktide Roost |achieve 9562/10
Assault on PIllars of Fate |achieve 9562/11
Assault on Skettis |achieve 9562/12
step
Congratulations, you earned the _Securing Draenor_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Slagnarok",{
achieveid={9536},
patch='60001',
description="\nDefeat 20 creatures after slagging them with goren acid in Magnarok.",
},[[
step
_NOTE_: You need to be on the quest _Assault on Magnarok_ to earn this achievement
accept Assault on Magnarok##36697 |goto Frostwall 40.8,51.8
|tip Create a raid group to prevent progress of the quest.
step
Make your way _across_ The Cracking Plains |goto Frostfire Ridge/0 61.7,32.9 < 20 |only if walking
Head _through_ Magnarok |goto Frostfire Ridge/0 68.1,32.5 < 20 |only if walking
clicknpc Vicious Acidmaw##76905
|tip They're the ones rolling around the area.
While riding the Acidnaw _aim it_ towards groups of mobs
|tip Kill the mobs while they have the acid debuff.
_Defeat_ #20# creatures |achieve 9536/1 |goto Frostfire Ridge 70.8,28.6
step
Congratulations, you have _earned_ the Slagnarok Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Take From Them Everything",{
achieveid={9435},
patch='60001',
description="\nMaintain one of the beneficial effects from destroying Sargerei supplies for 10 minutes in Socrethar's Rise.",
},[[
step
Maintain a buff from the fruit for 10 minutes
Use the _/timer_ function to track how long a buff is active for
|tip You should only need six total uses.
_Don't mix_ the buffs, you won't get credit
We recommend using the NorthEast Corner of this area |goto Shadowmoon Valley D 48.0,72.7
_Click_ a fruit basket in the area to gain the Draenic Pear buff
|tip They are small wooden bowls filled with colorful fruits.
_Kill mobs in the area_ or _wait patiently_ for the buff to almost expire before using another fruit basket
|tip You should spend your two minutes finding your next source for the buff.
achieve 9435
step
Congratulations, you have _earned_ the Take From Them Everything Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\That Was Entirely Unnecessary",{
achieveid={9535},
patch='60001',
description="\nPunt 100 Goren Eggs in Magnarok.",
},[[
step
_NOTE_: You need to be on the quest _Assault on Magnarok_ to earn this achievement
accept Assault on Magnarok##36697 |goto Frostwall 40.8,51.8
|tip Create a raid group to prevent progress of the quest.
step
Make your way _across_ The Cracking Plains |goto Frostfire Ridge/0 61.7,32.9 < 20 |only if walking
Head _through_ Magnarok |goto Frostfire Ridge/0 68.1,32.5 < 20 |only if walking
_Punt_ #100# Goren Eggs in Magnarok |achieve 9535/1 |goto Frostfire Ridge 70.8,28.6
|tip In the lava and on the rocks in the lava little grey eggs spawn that you must kick.
step
Congratulations, you have _earned_ the That Was Entirely Unnecessary Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\The Garrison Campaign",{
achieveid={9492},
patch='60001',
description="\nThis guide will walk you through the Garrison Campaign questlines.",
},[[
#include "Garrison_Campaign"
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\The Power Is Yours",{
achieveid={9632},
patch='60001',
description="\nCombine the effects of all three types of Rune Crystals in Shattrath City.",
},[[
step
_NOTE_: You need to be on the quest _Assault on the Heart of Shattrath_ to earn this achievement
accept Assault on the Heart of Shattrath##36699 |goto Frostfire Ridge 85.1,59.7
|tip Create a raid group to prevent progress of the quest.
step
_Go down_ the elevator |goto Talador/0 47.5,44.1 < 10 |only if walking
You will _need 3 people_ for this achievement
In order to complete this each person must _click on a different crystal_ and then _focus fire_ on the same mobs
The best area to have access to all three crystals at once is _around the Sha'tari Rest and Recovery_ |goto Talador 33.4,40.3
|achieve 9632
step
Congratulations, you have _earned_ the The Power Is Yours Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\The Song of Silence",{
achieveid={9541},
patch='60001',
description="\nDefeat the elite Warsong of Mok'gol Watchpost.",
},[[
step
_Defeat_ the elite Warsong of Mok'gol Watchpost listed below
kill Karosh Blackwind##86959 |achieve 9541/1 |goto Nagrand D 46.0,36.0
|tip Find a friend or wait for the daily to defeat him easily
step
kill Brutag Grimblade##87234 |achieve 9541/2 |goto Nagrand D 43.0,36.4
|tip Find a friend or wait for the daily to defeat him easily
step
_Kill_ ogres in Mok'gol to get the Secret Meeting Details and use it to summon Krahl and Gortag |goto Nagrand D 41.6,37.4
collect Secret Meeting Details##120290
clicknpc Signal Horn##87361 |goto Nagrand D 42.0,36.8
kill Krahl Deadeye##87239 |achieve 9541/3
kill Gortag Steelgrip##87344 |achieve 9541/4
|tip Krahl and Gortag spawn together and must be defeated together.
step
Congratulations, you have _earned_ the The Song of Silence Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\United We Stand",{
achieveid={9636},
patch='60001',
description="\nFree 10 captured guards in Shattrath City.",
},[[
step
_NOTE_: You need to be on the quest _Assault on Shattrath Harbor_ to earn this achievement
accept Assault on Shattrath Harbor##36667 |goto Frostfire Ridge 85.1,59.7
|tip Create a raid group to prevent progress of the quest.
step
_Following_ the route displayed on your map should net a majority of the spawn locations for the prisoners
map Talador
path loose; loop; curved
path	45.6,36.8	46.8,32.2	49.2,31.2
path	48.4,29.8	46.8,27.6	47.2,23.6
path	46.8,20.8	43.6,22.6	41.2,20.4
path	37.8,18.8	37.0,14.4	35.2,16.6
path	37.6,21.0	44.4,27.8	43.4,29.8
clicknpc Captive Sha'tari Peacekeeper##86448
clicknpc Captive Sunsworn Honor Guard##85103
_Free_ #10# captured guards in Shattrath City |achieve 9636 |goto Talador 41.5,21.3
step
Congratulations, you have _earned_ the United We Stand Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Welcome to Draenor",{
achieveid={8922},
patch='60001',
description="\nComplete the quest 'The Dark Portal'",
},[[
step
accept Warlords of Draenor: The Dark Portal##34398 |goto Orgrimmar/1 49.9,77.3
step
talk Archmage Khadgar##78423
Speak with Archmage Khadgar at the foot of the Dark Portal in Blasted Lands. |q 34398 |goto Blasted Lands/0 54.95,50.38
step
talk Archmage Khadgar##78558
turnin Warlords of Draenor: The Dark Portal##34398 |goto 54.74,48.21
achieve 8922
step
Congratulations, you have the _Welcome to Draenor_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\With a Nagrand Cherry On Top",{
achieveid={9615},
patch='60001',
description="\nComplete the Nagrand bonus objectives.",
},[[
step
_Follow_ the path |goto Nagrand D 82.8,48.6 < 20 |only if walking
_Run up_ the path |goto Nagrand D 85.2,48.2 < 20 |only if walking
accept Bonus Objective: Hemet's Happy Hunting Grounds##35379 |goto Nagrand D 85.8,48.2
stickystart "nagrandprowlers"
step
accept Bonus Objective: Hemet's Happy Hunting Grounds##35379
_Run up_ the path |goto Nagrand D 87.8,48.5 < 10 |only if walking
_Cross_ the bridge |goto Nagrand D 88.0,46.9 < 10 |only if walking
kill Lupe##82205 |q 35379/2 |goto 87.46,45.94
kill Loup##82209 |q 35379/3 |goto 87.46,45.94
step
kill Big Pete##82202 |q 35379/4 |goto 88.72,43.75
step
label "nagrandprowlers"
kill 15 Nagrand Prowler##81902 |q 35379/1 |goto 88.49,47.46
achieve 9615/1
step
label "harbor"
_Jump down_ the ledge here |goto Nagrand D/0 44.4,74.6 < 20 |only if walking
accept Bonus Objective: Ironfist Harbor##34723 |goto Nagrand D/0 43.2,74.8
stickystart "oss"
step
_Enter_ the building |goto Nagrand D/0 38.1,71.2 < 20 |walk
_Go up_ the stairs |goto Nagrand D/0 37.4,70.3 < 15 |walk
kill General Kull'krosh##79588 |q 34723/4 |goto Nagrand D/0 37.5,71.6
step
_Jump down_ here |goto Nagrand D/0 37.3,71.9 < 10 |only if walking
_Follow_ the coast along the water |goto Nagrand D/0 37.4,72.9 < 10 |only if walking
kill Rezlorg##79651 |q 34723/3 |goto Nagrand D/0 38.2,73.4
step
_Go onto_ the docks |goto Nagrand D/0 39.1,74.8 < 20 |only if walking
click Iron Supply Crate##230653
|tip They look like wooden boxes with metal trimmings on the ground around this area.
_Destroy_ #12# Dock Suppy Crates |q 34723/2 |goto Nagrand D/0 37.5,77.6
step
label "oss"
kill Warsong Initiate##79754+, Iron Arbalester##79584+, Iron Guard##79581+
kill 30 Orc Soldiers |q 34723/1 |goto Nagrand D/0 39.6,74.0
achieve 9615/2
stickystart "frightenedspirits"
step
label "ledge"
_Go down_ the large slanted rock |goto Nagrand D/0 78.5,27.9 < 20 |only if walking
_Jump down_ here |goto Nagrand D 77.6,29.3 < 10 |only if walking
_Jump down_ again |goto Nagrand D 77.7,28.4 < 10 |only if walking
accept Bonus Objective: Snarlpaw Ledge##37280
kill Boneseer Cold-Eye##88361 |q 37280/3 |goto 79.88,30.08
step
kill Snarlpaw Shadowfang##88363+, Snarlpaw Razortooth##88358+, Snarlpaw Bloodtracker##88365+
kill 15 Snarlpaw saberon |q 37280/2 |goto 79.11,30.96
step
label "frightenedspirits"
talk Frightened Spirit##88811
|tip You will have to kill the ghost attacking them to release some of them.
_Tell them_ "The saberon attack is over. Go now, and rest in peace."
_Release_ #6# Frightened spirits |q 37280/1 |goto 78.92,30.10
achieve 9615/3
step
label "end"
Congratulations, you have _earned_ the With a Nagrand Cherry On Top Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Would You Like a Pamphlet?",{
achieveid={9432},
patch='60001',
description="\nHave all three incantations found in Forbidden Tomes active at once in the Shadowmoon Enclave.",
},[[
step
_NOTE_: You need to be on the quest _Assault on Pillars of Fate_ to earn this achievement
accept Assault on Pillars of Fate##36689 |goto Frostwall 40.8,51.8
|tip Create a raid group to prevent progress of the quest.
step
map Spires of Arak
path loop off
path	69.7,20.0	70.5,24.1	71.7,27.9
path	72.7,32.5	74.2,27.7	74.6,31.2
_Click_ the tomes at the locations below to gain 1 of 3 random buffs
|tip The tomes are books with a metal spiked spine.
|tip The buffs last five minutes so you need to act quickly when moving from one to the next.
_Gain_ all three buffs at once |achieve 9432
step
Congratulations, you have _earned_ the Would You Like a Pamphlet? Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\You Can't Make a Giant Omelette",{
achieveid={9479},
patch='60001',
description="\nBreak the Giant Rylak Egg in Darktide Roost.",
},[[
step
_NOTE_: You need to be on the quest _Assault on Darktide Roost_ to earn this achievement
accept Assault on Darktide Roost##36692 |goto Frostwall 40.8,51.8
|tip Create a raid group to prevent progress of the quest.
step
kill Darktide Engineer##78339+, Darktide Engineer##78999+ |goto Shadowmoon Valley D 58.8,85.9
collect Goblin Rocket Pack##115020
_Click here_ when you have found a Goblin Rocket Pack |confirm
step
_Make your way_ to the south eastern point of the island |goto Shadowmoon Valley D/0 63.0,95.4 < 20 |only if walking
_Follow_ the trail up the hill | goto Shadowmoon Valley D/0 63.0,93.0 < 20 |only if walking
_Use_ the Goblin Rocket Pack here |use Goblin Rocket Pack##115020 |goto Shadowmoon Valley D 60.6,89.2 < 5 |only if walking
|tip Click the button in the center of your screen and aim for the shelf above you.
_Click_ the button again and aim for the shelf above you |goto Shadowmoon Valley D 60.8,89.0 < 5
_Click_ the Giant Rylak Egg in the nest |achieve 9479 |goto Shadowmoon Valley D 61.2,88.8
step
Congratulations, you have _earned_ the You Can't Make a Giant Omelette... Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\You Have Been Rylakinated!",{
achieveid={9481},
patch='60001',
description="\nDefeat 10 Darkwing Adolescents within 3 minutes while driving a Rylakinator-3000 in Darktide Roost.",
},[[
step
In order to complete this achievement _you must have_ the Garrison Campaign quest for Darktide Roost and _have completed_ the quest Dirty Rats in this quest line |only if not completedq(34355)
kill Darktide Engineer##78339+, Darktide Engineer##78999+ |goto Shadowmoon Valley D 58.8,85.9
collect Rylakinator-3000 Power Cell##116978
_Click here_ when you have found a Rylakinator-3000 Power Cell |confirm
step
clicknpc Unmanned Darktide Rylakinator-3000##86085
|tip The achievement timer instantly starts as you enter the vehicle so make sure you are ready before you jump in.
kill 10 Darkwing Adolescents##85357 |achieve 9481 |goto Shadowmoon Valley D 57.6,89.4
|tip The injured ones and the whelps do NOT count towards the achievement.
step
Congratulations, you have _earned_ the You Have Been Rylakinated! Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\You'll Get Caught Up In The... Frostfire!",{
achieveid={8671},
patch='60001',
description="\nComplete the Frostfire Ridge storylines.",
},[[
step
_Complete the Frostfire Ridge storylines_ listed below:
Foothold in a Savage Land |achieve 8671/1
Siege of Bladespire Citadel |achieve 8671/2
Defense of Wor'gol |achieve 8671/3
Ga'nar's Vengeance |achieve 8671/4
Thunder's Fall |achieve 8671/5
The Battle of Thunder Pass |achieve 8671/6
_Please refer to our Frostfire Ridge leveling guide_ to earn this achievement.
step
Congratulations, you have earned the _You'll Get Caught Up In The... Frostfire!_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Draenor's Last Stand",{
achieveid={10075},
patch='60200',
description="\nThis guide will walk you through completing the Draenor's Last Stand achievement.",
},[[
step
click Tanaan Planning Map##241725 |goto Tanaan Jungle/0 61.5,45.9
|tip It looks like a round table with a map laying on it.
Complete the daily objectives for these areas:
|tip You will be given a choice each day between two areas to do a daily objective for. Pick whichever one you need, if it's available. Use the "Vol'jin's Headhunters" dailies guide to accomplish this.
Ironhold Harbor |achieve 10075/1
The Iron Front |achieve 10075/2
The Fel Forge |achieve 10075/3
Ruins of Kra'nak |achieve 10075/4
Zeth'gol |achieve 10075/5
Throne of Kil'jaeden |achieve 10075/6
Temple of Sha'naar |achieve 10075/7
step
Congratulations, you earned the _Draenor's Last Stand_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Loremaster of Draenor",{
achieveid={9923},
patch='60100',
description="\nComplete all the storyline achievements in all the zones of the game.",
},[[
step
Use the Draenor Leveling Guides to complete Loremaster:
|tip The Leveling guides cover all required questlines for Loremaster.
|tip Click one of the lines below to load the Leveling guide for that zone.
Frostfire Ridge Quests |achieve 8671 |loadguide "Leveling Guides\\Draenor (10-50)\\Frostfire Ridge (10-50)"
Gorgrond Quests |achieve 8924 |loadguide "Leveling Guides\\Draenor (10-50)\\Gorgrond (15-50)"
Talador Quests |achieve 8919 |loadguide "Leveling Guides\\Draenor (10-50)\\Talador (20-50)"
Spires of Arak Quests |achieve 8926 |loadguide "Leveling Guides\\Draenor (10-50)\\Spires of Arak (30-50)"
Nagrand Quests |achieve 8928 |loadguide "Leveling Guides\\Draenor (10-50)\\Nagrand (35-50)"
step
Congratulations, you have _earned_ the _Loremaster of Draenor_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Reputations\\Arakkoa Outcasts",{
achieveid={9469},
patch='60001',
description="\nEarn Exalted status with the Arakkoa Outcasts.",
},[[
step
This achievement _can be completed_ with the Arakkoa Outcasts Reputation Guide
|confirm |next "Reputations Guides\\Warlords of Draenor\\Arakkoa Outcasts"
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Reputations\\Frostwolf Orcs",{
achieveid={9471},
patch='60001',
description="\nEarn Exalted status with the Frostwolf Orcs.",
},[[
step
This achievement _can be completed_ with the Frostwolf Orcs Reputation Guide
|confirm |next "Reputations Guides\\Warlords of Draenor\\Frostwolf Orcs"
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Reputations\\Laughing Skull Orcs",{
achieveid={9475},
patch='60001',
description="\nEarn Exalted status with the Laughing Skull Orcs.",
},[[
step
This achievement _can be completed_ with the Laughing Skull Orcs Reputation Guide
|confirm |next "Reputations Guides\\Warlords of Draenor\\Laughing Skull Orcs"
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Reputations\\Mantle of the Talon King",{
achieveid={9072},
patch='60001',
description="\nComplete the Terokk's Legacy storyline and earn Exalted status with the Arakkoa Outcasts.",
},[[
step
label "start"
_Click here_ to complete the Terokk's Legacy storyline |confirm |next "terokk" |only if not completedq(35896)
You have _completed_ the required Terokk's Legacy storyline |only if completedq(35896)
_Click here_ to proceed to the reputation guide |confirm |next "Reputations Guides\\Warlords of Draenor\\Arakkoa Outcasts"
You have _reached_ Exalted with the Arakkoa Outcasts |only if rep('Arakkoa Outcasts')==Exalted
step
label "terokk"
talk Reshad##81770
accept Rites of the Talonpriests##35733 |goto Spires of Arak 46.49,46.65
step
talk Effigy of Terokk##82813
turnin Rites of the Talonpriests##35733 |goto 46.62,46.74
accept The Talon King##35734 |goto 46.62,46.74
step
talk Effigy of Terokk##82813
_Touch_ the wingblades to witness one of Terokk's legends
_Take Control_ of the Talon King |invehicle |q 35734
stickystart "20bloodmane"
stickystart "30bloodmane"
step
_Follow_ the beach |goto Spires of Arak 49.5,75.6 < 20 |only if walking
kill Pridelord Karash##82950 |q 35734/3 |goto 45.86,66.48
step
label "20bloodmane"
kill 20 Bloodmane Hunter##82938 |q 35734/2 |goto 45.86,66.48
step
label "30bloodmane"
kill 30 Bloodmane Shortfang##82946 |q 35734/1 |goto 45.86,66.48
step
talk Reshad##81770
turnin The Talon King##35734 |goto 46.50,46.66
accept The Missing Piece##35897 |goto 46.49,46.66
step
talk Effigy of Terokk##82813
turnin The Missing Piece##35897 |goto 46.62,46.73
accept Terokk's Fall##35895 |goto 46.62,46.73
step
talk Effigy of Terokk##82813 |goto Spires of Arak 46.6,46.7
_Touch_ the bangle to witness Terokk's fall
_Enter_ the memory |invehicle |q 35895
step
_Find_ Lithic |q 35895/1 |goto 64.00,40.47
step
_Use_ the abilities on your hotbar to
kill 20 Crazed Outcast##83600 |q 35895/3 |goto 64.14,41.97
clicknpc Outcast Talon Guard##83716
_Use_ the Talon Kings Command ability on your hotbar to
_Rally_ #5# Talon Guards |q 35895/2 |goto 64.07,42.12
step
click The Eye of Anzu##233382
|tip It looks like an orb sitting on a small golden stand on the ground.
_Use_ the Eye of Anzu |q 35895/4 |goto 66.92,45.25
step
talk Reshad##81770
turnin Terokk's Fall##35895 |goto 46.49,46.67
step
talk Shade of Terokk##84122
turnin A Worthy Vessel##36059 |goto 46.64,46.80
accept The Avatar of Terokk##35896 |goto 46.64,46.80
step
talk Shade of Terokk##84122 |goto 46.64,46.80
_Accept_ Terokk's power
_Enter_ the memory |invehicle |q 35896
step
kill 25 Shattered Hand Gladiator##84032+ |q 35896/1 |goto 30.69,27.86
kill 4 Shattered Hand Pit-Master##84052+ |q 35896/2 |goto 30.69,27.86
kill Kargath Bladefist##84053 |q 35896/3 |goto 30.69,27.86
|tip You will be able to confront him once you kill the Gladiators and Pit-Masters.
step
talk Reshad##81770
turnin The Avatar of Terokk##35896 |goto 46.49,46.67
|next "start"
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Reputations\\Savage Friends",{
achieveid={9477},
patch='60001',
description="\nEarn Exalted with 3 Draenor reputations.",
},[[
step
_Earn Exalted_ with 3 Draenor reputations.
To earn exalted with the Arakkoa Outcasts _click here_. |confirm |next "Reputations Guides\\Warlords of Draenor\\Arakkoa Outcasts"
To earn exalted with the Frostwolf Orcs _click here_. |confirm |next "Reputations Guides\\Warlords of Draenor\\Frostwolf Orcs"
To earn exalted with the Laughing Skull Orcs _click here_. |confirm |next "Reputations Guides\\Warlords of Draenor\\Laughing Skull Orcs"
To earn exalted with the Steamwheedle Preservation Society _click here_. |confirm |next "Reputations Guides\\Warlords of Draenor\\Steamwheedle Preservation Society"
achieve 9477
step
Congratulations, you have earned the _Savage Friends_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Reputations\\Steamwheedle Perservation Society",{
achieveid={9472},
patch='60001',
description="\nEarn Exalted status with the Steamwheedle Perservation Society.",
},[[
step
This achievement _can be completed_ with the Steamwheedle Perservation Society Reputation Guide
confirm |next "Reputations Guides\\Warlords of Draenor\\Steamwheedle Preservation Society"
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Scenarios\\Proving Grounds\\Proving Yourself: Bronze Damage",{
achieveid={9572},
patch='60001',
author="support@zygorguides.com",
keywords={"Scenario"},
description="\nThis guide will walk you through completing the \"Proving Yourself: Bronze Damage\" achievement.",
},[[
step
talk Trial Master Rotun##72536
Tell him: _"Enter the Proving Grounds"_ |goto Kun-Lai Summit/0 69.02,44.83
Enter the Proving Grounds |goto Proving Grounds/1 51.51,78.73 |noway |c
step
talk Trial Master Rotun##61636
Choose _"Start Basic Damage (Bronze)"_
Start the Proving Ground trial |scenariogoal Speak to Rotun##1/23899 |goto 50.33,82.47
step
Kill enemies around this area
|tip There will be five waves of enemies in which you need to kill.
|tip There are no special mechanics for the bronze tier to look out for.
Earn the Proving Yourself: Bronze Damage achievement |achieve 9572 |goto 45.95,51.41
step
_Congratulations!_
You have earned the _Proving Yourself: Bronze Damage_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Scenarios\\Proving Grounds\\Proving Yourself: Bronze Tank",{
achieveid={9578},
patch='60001',
author="support@zygorguides.com",
keywords={"Scenario"},
description="\nThis guide will walk you through completing the \"Proving Yourself: Bronze Tank\" achievement.",
},[[
step
talk Trial Master Rotun##72536
Tell him: _"Enter the Proving Grounds"_ |goto Kun-Lai Summit/0 69.02,44.83
Enter the Proving Grounds |goto Proving Grounds/1 51.51,78.73 |noway |c
step
talk Trial Master Rotun##61636
Choose _"Start Basic Tank (Bronze)"_
Start the Proving Ground trial |scenariogoal Speak to Rotun##1/23899 |goto 50.33,82.47
step
Kill enemies around this area
|tip There will be five waves of enemies in which you will need to defend Sikari the Mistweaver.
|tip Each wave completes when the timer runs out, causing the next wave of enemies to appear.
|tip You will complete the trial so long as Sikari the Mistweaver survives.
Earn the Proving Yourself: Bronze Tank achievement |achieve 9578 |goto 45.95,51.41
step
_Congratulations!_
You have earned the _Proving Yourself: Bronze Tank_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Scenarios\\Proving Grounds\\Proving Yourself: Gold Damage",{
achieveid={9574},
patch='60001',
author="support@zygorguides.com",
keywords={"Scenario"},
description="\nThis guide will walk you through completing the \"Proving Yourself: Gold Damage\" achievement.",
},[[
step
talk Trial Master Rotun##72536
Tell him: _"Enter the Proving Grounds"_ |goto Kun-Lai Summit/0 69.02,44.83
Enter the Proving Grounds |goto Proving Grounds/1 51.51,78.73 |noway |c
step
talk Trial Master Rotun##61636
Choose _"Start Basic Damage (Gold)"_
Start the Proving Ground trial |scenariogoal Speak to Rotun##1/23899 |goto 50.33,82.47
step
Kill enemies around this area
|tip There will be five waves of enemies in which you need to kill.
|tip Illusionary Amber-Weavers will spawn an orb that will cause you to be frozen for 5 seconds.
|tip They move slowly and follow your movements.
|tip If guided correctly, you can freeze other enemies with the orb, which will also cause them to take 50% more damage.
|tip Illusionary Mystics will heal enemies who have taken damage.
|tip Interrupt their heal to prevent this.
|tip Illusionary Guardians will put up a barrier that blocks all damage.
|tip Hit them from behind in order to kill them.
|tip Illusionary Banana-Tossers should be killed immediately.
|tip They will run away pretty far if ignored, which may drain time trying to reach them.
Earn the Proving Yourself: Gold Damage achievement |achieve 9574 |goto 45.95,51.41
step
_Congratulations!_
You have earned the _Proving Yourself: Gold Damage_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Scenarios\\Proving Grounds\\Proving Yourself: Gold Tank",{
achieveid={9580},
patch='60001',
author="support@zygorguides.com",
keywords={"Scenario"},
description="\nThis guide will walk you through completing the \"Proving Yourself: Gold Tank\" achievement.",
},[[
step
talk Trial Master Rotun##72536
Tell him: _"Enter the Proving Grounds"_ |goto Kun-Lai Summit/0 69.02,44.83
Enter the Proving Grounds |goto Proving Grounds/1 51.51,78.73 |noway |c
step
talk Trial Master Rotun##61636
Choose _"Start Basic Tank (Gold)"_
Start the Proving Ground trial |scenariogoal Speak to Rotun##1/23899 |goto 50.33,82.47
step
Kill enemies around this area
|tip There will be ten waves of enemies in which you will need to defend Sikari the Mistweaver.
|tip Each wave completes when the timer runs out, causing the next wave of enemies to appear.
|tip Kill Small Illusionary Flamecallers and Large Illusionary Flamecaller before anything else.
|tip On wave 8, two Large Illusionary Conquerors will spawn.
|tip It is recommended that you save any damage mitigation cooldowns for this round.
|tip You should also be mindful of and high damage abilities.
|tip Interrupt their spells when possible.
|tip You will complete the trial as long as Sikari the Mistweaver survives.
Earn the Proving Yourself: Gold Tank achievement |achieve 9580 |goto 45.95,51.41
step
_Congratulations!_
You have earned the _Proving Yourself: Gold Tank_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Scenarios\\Proving Grounds\\Proving Yourself: Siliver Damage",{
achieveid={9573},
patch='60001',
author="support@zygorguides.com",
keywords={"Scenario"},
description="\nThis guide will walk you through completing the \"Proving Yourself: Siliver Damage\" achievement.",
},[[
step
talk Trial Master Rotun##72536
Tell him: _"Enter the Proving Grounds"_ |goto Kun-Lai Summit/0 69.02,44.83
Enter the Proving Grounds |goto Proving Grounds/1 51.51,78.73 |noway |c
step
talk Trial Master Rotun##61636
Choose _"Start Basic Damage (Siliver)"_
Start the Proving Ground trial |scenariogoal Speak to Rotun##1/23899 |goto 50.33,82.47
step
Kill enemies around this area
|tip There will be five waves of enemies in which you need to kill.
|tip Illusionary Amber-Weavers will spawn an orb that will cause you to be frozen for 5 seconds.
|tip They move slowly and follow your movements.
|tip If guided correctly, you can freeze other enemies with the orb, which will also cause them to take 50% more damage.
|tip Illusionary Mystics will heal enemies who have taken damage.
|tip Interrupt their heal to prevent this.
|tip Illusionary Guardians will put up a barrier that blocks all damage.
|tip Hit them from behind in order to kill them.
Earn the Proving Yourself: Siliver Damage achievement |achieve 9573 |goto 45.95,51.41
step
_Congratulations!_
You have earned the _Proving Yourself: Siliver Damage_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Scenarios\\Proving Grounds\\Proving Yourself: Silver Tank",{
achieveid={9579},
patch='60001',
author="support@zygorguides.com",
keywords={"Scenario"},
description="\nThis guide will walk you through completing the \"Proving Yourself: Silver Tank\" achievement.",
},[[
step
talk Trial Master Rotun##72536
Tell him: _"Enter the Proving Grounds"_ |goto Kun-Lai Summit/0 69.02,44.83
Enter the Proving Grounds |goto Proving Grounds/1 51.51,78.73 |noway |c
step
talk Trial Master Rotun##61636
Choose _"Start Basic Tank (Silver)"_
Start the Proving Ground trial |scenariogoal Speak to Rotun##1/23899 |goto 50.33,82.47
step
Kill enemies around this area
|tip There will be eight waves of enemies in which you will need to defend Sikari the Mistweaver.
|tip Each wave completes when the timer runs out, causing the next wave of enemies to appear.
|tip Kill Small Illusionary Flamecallers and Large Illusionary Flamecaller before anything else.
|tip Interrupt their spells when possible.
|tip You will complete the trial so long as Sikari the Mistweaver survives.
Earn the Proving Yourself: Silver Tank achievement |achieve 9579 |goto 45.95,51.41
step
_Congratulations!_
You have earned the _Proving Yourself: Silver Tank_ achievement
]])
