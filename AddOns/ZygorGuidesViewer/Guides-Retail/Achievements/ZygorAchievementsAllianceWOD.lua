local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("AchievementsAWOD") then return end
ZygorGuidesViewer.GuideMenuTier = "WOD"
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Collections\\Alt-ernative Lifestyle",{
achieveid={9906},
patch='60100',
description="\nThis guide will help you earn the Alt-ernative Lifestyle achievement.",
},[[
step
You will need at least 2,500 gold to complete this achievement
confirm
step
talk Krom Stoutarm##6294
Buy any 5 heirlooms |achieve 9906 |goto Ironforge/0 74.3,9.6
step
Congratulations, you have completed the "_Alt-ernative Lifestyle_" achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Collections\\Heirloom Hoarder",{
achieveid={9909},
patch='60100',
description="\nThis guide will help you earn the Heirloom Hoarder achievement.",
},[[
step
You will need at least 21,800 gold to complete this achievement
confirm
step
talk Krom Stoutarm##6294
Buy any 35 heirlooms |achieve 9909 |goto Ironforge/0 74.3,9.6
step
Congratulations, you have completed the "_Heirloom Hoarder_" achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Collections\\I Found Pepe!",{
achieveid={10053},
patch='60200',
description="\nThis guide will help you earn the I Found Pepe! achievement.",
},[[
step
You will need to find the 4 hidden pepes around Draenor for this achievement.
confirm
step
The first Pepe is the Pirate Pepe.
click Pirate Pepe##243280 |goto Spires of Arak 54.1,83.6
|tip The first part of the achievement will complete right after you click the Pepe.
|tip Clicking the pepe will also give you an item that allows you to dress your pepe in a pirate costume once more.
|achieve 10053/1
step
The second Pepe is the Viking Pepe.
click Viking Pepe##243282 |goto Nagrand D 80.1,50.3
|tip The second part of the achievement will complete right after you click the Pepe.
|tip Clicking the pepe will also give you an item that allows you to dress your pepe in a viking costume once more.
|achieve 10053/2
step
The third Pepe is the Knight Pepe.
click Knight Pepe##243283 |goto Talador 51.0,63.3
|tip The Third part of the achievement will complete right after you click the Pepe.
|tip Clicking the pepe will also give you an item that allows you to dress your pepe in a Knight costume once more.
|achieve 10053/3
step
The fourth Pepe is the Ninja Pepe.
click Ninja Pepe##243281 |goto Gorgrond 47.5,41.3
|tip The fourth part of the achievement will complete right after you click the Pepe.
|tip Clicking the pepe will also give you an item that allows you to dress your pepe in a Ninja costume once more.
|achieve 10053/4
step
Congratulations you found Pepe!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Collections\\Ready for Powerleveling",{
achieveid={9908},
patch='60100',
description="\nThis guide will help you earn the Ready for Powerleveling achievement.",
},[[
step
You will need at least 8,450 gold to complete this achievement
confirm
step
talk Krom Stoutarm##6294
Buy any 15 heirlooms |achieve 9908 |goto Ironforge/0 74.3,9.6
step
Congratulations, you have completed the "_Ready for Powerleveling_" achievement!
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
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Collections\\Where's the Mailbox?",{
achieveid={9911},
patch='60100',
description="\nThis guide will help you earn the Where's the Mailbox? achievement.",
},[[
step
You will need at least 500 gold to complete this achievement
confirm
step
talk Krom Stoutarm##6294
Buy any heirloom |achieve 9911 |goto Ironforge/0 74.3,9.6
step
Congratulations, you have completed the "_Where's the Mailbox?_" achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Collections\\Mounts\\Awake the Drakes",{
achieveid={9713},
patch='60002',
description="\nCollect the drake mounts.",
},[[
step
_Collect_ the following drake mounts listed below to earn them
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
Congratulations, you have _earned_ the Awake the Drakes Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Collections\\Mounts\\Mountacular", {
achieveid={9598},
patch='60001',
description="\nObtain 250 mounts.",
},[[
step
Please _refer_ to our individual mount guides to earn this achievement
_Obtain_ #250# mounts |achieve 9598
|tip You can select any mount from the Mounts panel by pressing "Shift+P" and searching our database.
step
Congratulations, you have _earned_ the Mountacular Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Collections\\Mounts\\Lord of Reins", {
achieveid={10356},
patch='60202',
description="\nObtain 300 mounts.",
},[[
step
Please _refer_ to our individual mount guides to earn this achievement
_Obtain_ #300# mounts |achieve 10356
|tip You can select any mount from the Mounts panel by pressing "Shift+P" and searching our database.
step
Congratulations, you have _earned_ the Lord of Reins Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Collections\\Mounts\\Lord of the Reins", {
achieveid={10356},
patch='60202',
description="\nObtain 300 mounts.",
},[[
step
Please _refer_ to our individual mount guides to earn this achievement
_Obtain_ #300# mounts |achieve 10356
|tip You can select any mount from the Mounts panel by pressing "Shift+P" and searching our database.
step
Congratulations, you have _earned_ the Lord of the Reins Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Azeroth's Top Twenty Tunes",{
condition_end=function() return achieved(9912) end,
achieveid={9828,9912},
patch='60100',
description="\nThis guide will walk you through collecting twenty Music Rolls for your garrison's jukebox.",
},[[
step
Routing to Guide. |next |only if garrisonlvl(3) and completedq(38356)
This achievement requires a Jukebox and a level 3 Garrison. Please acquire both of these items and come back! |only if garrisonlvl(1) or garrisonlvl(2)
confirm |only if garrisonlvl(1) or garrisonlvl(2)
step
Your first seven are gifted upon completing the jukebox questine:
use Stash of Dusty Music Rolls##122613
use Music Roll: Curse of the Worgen##122209 |achieve 9912/15
use Music Roll: Exodar##122208 |achieve 9912/14
use Music Roll: Gnomeregan##122206 |achieve 9912/12
use Music Roll: Ironforge##122203 |achieve 9912/9
use Music Roll: Night Song##122205 |achieve 9912/11
use Music Roll: Stormwind##122201 |achieve 9912/7
use Music Roll: Way of the Monk##122219 |achieve 9912/30
step
Go upstairs |goto Darnassus/0 43.6,85.7 < 5
click High Priestess' Reliquary##240625 |goto Darnassus/0 43.0,75.8
|tip It's a large wooden chest with a metal latch on the front. It should be outlined in purple like a Draenor treasure.
use Music Roll: Shalandis Isle##122239 |achieve 9912/29
step
click Frozen Supplies##240616 |goto Winterspring/0 68.0,73.9
|tip It's an average-sized cloth bag tied at the top. It should be outlined in purple like a Draenor treasure.
use Music Roll: Mountains##122224 |achieve 9912/18
step
Land here so you can see inside the tree |goto Ashenvale/0 57.0,50.2 < 5
click Lost Sentinel's Pouch##240617 |goto Ashenvale/0 56.4,49.3
|tip It's a small pouch made of wrapped leaves sitting in front of the spirit stone inside the tree trunk. It should be outlined in purple like a Draenor treasure.
use Music Roll: Magic##122226 |achieve 9912/19
step
Fly out to the Faerie Dragon ring and wait for the event to start. It starts every 15 minutes and lasts for 3 minutes. The nest is only available during the event
click Faerie Dragon Nest##240624 |goto Tirisfal Glades/0 17.6,67.6
|tip It's a small dirt pile with two eggs nested in it right in the center of the Faerie ring. It should be outlined in purple like a Draenor treasure.
use Music Roll: Faerie Dragon##122234 |achieve 9912/25
step
Use your Fishing skill anywhere at the Forlorn Cavern lake |cast Fishing##131474 |goto Ironforge/0 46.9,15.0
use Music Roll: Cold Mountain##122204 |achieve 9912/10
step
map Gnomeregan/1
path loop off; follow strict; ants curved; dist 5
path	57.6,42.1	58.9,55.5	53.2,63.8
path	43.1,60.5	39.1,61.8	34.1,61.8
path	Gnomeregan/2 63.2,67.8
Get Grime-Encrusted Objects by killing troggs and gnomes in Gnomeregan while making your way to the Sparklematic 5200
collect Grime-Encrusted Object##9308 |n
click The Sparklematic 5200##142487
turnin More Sparklematic Action##4603 |n |repeatable
use Sparklematic-Wrapped Box##9363
use Music Roll: Tinkertown##122207 |achieve 9912/13
step
Go to this spot in the Raven Hill Cemetery, fly straight up, dismount, and die |goto Duskwood/0 24.9,33.6
Release and make your way back to your corpse but _DON'T resurrect until this step is finished_!
talk Forlorn Composer##91592
|tip Wait here for him to walk past if you can't find him on his patrol route around this seciton of the cemetery.
Tell him "_I wish to hear your music._"
use Music Roll: Ghost##122223 |achieve 9912/17
step
map Karazhan/1
path loop off; follow strict; ants curved; dist 5
path	53.1,63.6	Karazhan/3 54.5,64.6	Karazhan/3 42.9,57.2
path	Karazhan/3 30.1,64.3
Kill Moroes to unlock the Opera event |goto Karazhan/3 30.1,64.3 |noway |c |next
step
map Karazhan/3
path loop off; follow strict; ants curved; dist 5
path	66.7,46.7	Karazhan/4 71.3,45.3	Karazhan/4 41.4,38.4
path	Karazhan/4 26.4,22.7	Karazhan/4 24.8,18.3	Karazhan/4 19.3,42.7
path	Karazhan/4 11.2,41.4	Karazhan/4 12.3,24.0	Karazhan/4 21.3,27.1
talk Barnes##16812
Tell him "_I'm not an actor._"
Then tell him "_Ok. I'll give it a try then._"
Complete the opera event and loot the boss for a chance to drop the Music Roll
If it doesn't drop you'll have to try again next week
_Click here_ if it didn't drop to do go the next step |confirm |next |only if not achieved(9912,22)
use Music Roll: Karazhan Opera House##122231 |achieve 9912/22
step
The Arena Chest spawns every three hours starting with 12 A.M. daily. Standing in the Arena does flag you for PVP
click Arena Treasure Chest##179697 |goto The Cape of Stranglethorn/0 46.5,26.2
use Music Roll: Angelic##122222 |achieve 9912/16
step
Enter the prison here |goto Shadowmoon Valley/0 57.4,49.6 < 5 |walk
Make your way past the portcullis into the prison cell
click Warden's Scroll Case##240622 |goto Shadowmoon Valley/0 57.2,47.2
|tip It's on the left side of the room at the base of some rocks.
use Music Roll: The Black Temple##122228 |achieve 9912/20
step
map Halls of Lightning/1
path loop off; follow strict; dist 5
path	31.1,54.3	35.2,71.9	53.5,71.9
path	57.2,53.9	Halls of Lightning/2 57.5,22.0	Halls of Lightning/2 42.1,21.8
path	Halls of Lightning/2 47.1,40.1	Halls of Lightning/2 47.9,52.2	Halls of Lightning/2 60.0,54.9
path	Halls of Lightning/2 60.9,76.0	Halls of Lightning/2 28.8,75.8	Halls of Lightning/2 19.6,82.8
path	Halls of Lightning/2 19.1,55.9
kill Loken##28923
If it doesn't drop you'll have to try again by resetting the instance
use Music Roll: Mountains of Thunder##122237 |achieve 9912/27
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
Find Remington Brode along this path
talk Remington Brode##91632
Tell him "_<Breathe deeply.>_"
Then tell him "_I'm looking for a song._"
Then "_A song about the wilderness._"
Finally "_Yes!_"
use Music Roll: Totems of the Grizzlemaw##122236 |achieve 9912/26
step
talk Tan Shin Tiao##64605
buy 1 Music Roll: Song of Liu Lang##122221 |n |goto Vale of Eternal Blossoms 82.2,29.4
|tip This Music Roll requires you to be Revered with The Lorewalkers.
use Music Roll: Song of Liu Lang##122221 |achieve 9912/31
step
Congratulations, you have earned the Azeroth's Top Twenty Tunes Achievement! |only if achieved(9912)
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Even More Plots",{
achieveid={9101},
patch='60001',
description="\nThis guide will walk you through upgrading your garrison to level 3.",
},[[
step
label "Level"
Proceeding to garrison leveling guide level 1 |next "Level1" |only if default
Proceeding to garrison leveling guide level 2 |next "Level1" |only if garrisonlvl(2) and not completedq(34586)
Proceeding to garrison leveling guide level 2 |next "Level2" |only if garrisonlvl(1) and completedq(34586)
Proceeding to garrison leveling guide level 2 |next "Level2" |only if garrisonlvl(3) and not completedq(36592)
Proceeding to garrison leveling guide level 3 |next "Level3" |only if garrisonlvl(2) and completedq(36592)
Proceedint to garrison max |next "GarrisonMax" |only if garrisonlvl(3) and completedq(36615)
step
label "Level1"
To create your garrison, you must first quest through Tanaan Jungle and complete the quest "Step Three: Prophet!"
Complete Tanaan Jungle |complete completedq(34575)
step
talk Prophet Velen##79206
accept Finding a Foothold##34582 |goto Shadowmoon Valley D/0 26.98,8.09
step
_Go up_ the path |goto Shadowmoon Valley D 27.4,13.5 < 10
Accompany Prophet Velen to Lunarfall Ruins |q 34582/1 |goto Shadowmoon Valley D 28.9,16.3
step
talk Vindicator Maraad##79470
turnin Finding a Foothold##34582 |goto 28.80,16.22
accept For the Alliance!##34583 |goto 28.80,16.22
step
clicknpc Alliance Banner##120954
|tip It's a large wooden T-shape banner illuminated in a yellowish tone with an Alliance logo in the center.
Plant the Alliance Banner |q 34583/1 |goto 29.04,16.15
step
talk Baros Alexston##79243
turnin For the Alliance!##34583 |goto 29.05,16.22
|tip You will not be able to turn this quest in until he walks around and says his dalogue for a few moments.
accept Looking for Lumber##34584 |goto 29.05,16.22
accept Ravenous Ravens##34616 |goto 29.05,16.22
step
click Tree Marking##230527
|tip They look like wooden poles with white flags on them planted in the ground around this area.
Mark #8# trees for lumberjacks |q 34584/1 |goto 29.87,18.87
kill 6 Lunarfall Raven##82037+ |q 34616/1 |goto 29.78,18.86
step
talk Baros Alexston##79243
turnin Looking for Lumber##34584 |goto 29.04,16.21
turnin Ravenous Ravens##34616 |goto 29.04,16.21
step
talk Yrel##79567
accept Quakefist##34585 |goto 28.92,16.39
step
_Go down_ into the tree stump |goto Shadowmoon Valley D 30.0,21.0 < 10 |walk
kill Quakefist##81360 |q 34585/1 |goto 30.14,21.80
step
_Leave_ the tree stump |goto Shadowmoon Valley D 29.9,20.9 < 10 |walk
talk Yrel##79567
turnin Quakefist##34585 |goto 28.91,16.38
step
talk Baros Alexston##79243
accept Establish Your Garrison##34586 |goto 29.05,16.20
step
talk Baros Alexston##79243
Tell him _"We have everything we need. It's time to build the garrison."_
Speak with Baros to build your garrison |q 34586/1 |goto 29.05,16.22
step
_Enter_ the doorway |goto Lunarfall 40.8,45.4 < 10 |walk
#include "Garrison_BAlexston"
turnin Establish Your Garrison##34586 |goto 41.31,49.25
step
label "Level2"
Proceeding to garrison level 2
stickystart "Resource"
step
#include "Garrison_BAlexston"
accept Keeping it Together##35176 |goto 41.31,49.25
accept Ship Salvage##35166 |goto 41.31,49.25
step
#include "Garrison_Brightstone"
Tell her _"Time to get back to work."_
Speak with Assistant Brightstone about her work ethic |q 35176/1 |goto 44.81,53.43
step
click Garrison Cache##237191
|tip The cache is a wooden crate bearing an Alliance logo sitting next to a small pile of logs.
Check the Garrison Cache |q 35176/3 |goto 49.19,43.59
step
_Enter_ the doorway |goto Lunarfall 40.9,45.5 < 10 |walk
#include "Garrison_Shelly"
Tell her _"Gather Shelly's report."_
Gather Shelly's Report |q 35176/2 |goto 32.53,34.43
step
_Enter_ the doorway |goto Lunarfall 40.8,45.4 < 10 |walk
#include "Garrison_BAlexston"
turnin Keeping it Together##35176 |goto 41.31,49.22
step
#include "Garrison_Maraad"
accept Pale Moonlight##35174 |goto 44.06,53.40
stickystart "paledevourers"
step
_Enter_ the doorway |goto Lunarfall 40.9,45.5 < 10 |walk
_Follow_ the road towards the beach |goto Lunarfall 21.4,38.4 < 20 |only if walking
kill Gnaw Bloodseeker##81670 |q 35174/1 |goto Shadowmoon Valley D 25.7,5.7
step
label "paledevourers"
kill Pale Devourer##79205+
Slay 8 Pale Devourers |q 35174/2 |goto Shadowmoon Valley D 26.55,8.76
click Drudgeboat Salvage##231851
|tip They look like half-buried wooden barrels on the ground around this area.
collect 15 Drudgeboat Salvage##111907 |q 35166/1 |goto Shadowmoon Valley D 28.19,6.80
You can find more around [Shadowmoon Valley D 27.1,6.4]
step
Take the _road back_ to your Garrison |goto Shadowmoon Valley D 27.2,14.5 < 20 |only if walking
_Enter_ the doorway |goto Lunarfall 40.8,45.4 < 20 |walk
#include "Garrison_BAlexston"
turnin Ship Salvage##35166 |goto Lunarfall 41.20,49.29
step
#include "Garrison_Maraad"
turnin Pale Moonlight##35174 |goto 44.09,53.44
step
#include "Garrison_BAlexston"
accept Build Your Barracks##34587 |goto 41.20,49.39
step
click Garrison Blueprint: Barracks##231855
|tip It looks like a white unrolled scroll laying flat on the ground.
Find the Blueprints |q 34587/1 |goto 45.42,40.59
step
use Garrison Blueprint: Barracks, Level 1##111956
Learn the Blueprints |q 34587/2 |goto 45.56,41.08
step
#include "Garrison_ArchitectTable"
Use the Architect Table |q 34587/3 |goto 41.22,48.96
While using the table, _drag the Barracks_ to the _"Large Empty Plot"_
step
click Finalize Garrison Plot##236190
|tip It looks like a huge floating white scroll.
Finalize your Plot |q 34587/4 |goto 44.62,44.11
step
#include "Garrison_Maraad"
turnin Build Your Barracks##34587 |goto 44.12,53.25
accept Qiana Moonshadow##34646 |goto 44.12,53.25
step
_Follow_ the road out of the Garrison |goto Lunarfall 61.0,85.0 < 30 |only if walking
talk Qiana Moonshadow##79446
Speak with Qiana Moonshadow |q 34646/1 |goto Shadowmoon Valley D 29.94,29.21
step
_Run back_ towards your garrison |goto Lunarfall 62.4,89.4 < 20 |only if walking
_Enter_ the doorway |goto Lunarfall 49.6,63.9 < 10 |walk
_Enter_ the small house |goto Lunarfall 42.2,53.1 < 10 |walk
#include "Garrison_QMoonshadow"
turnin Qiana Moonshadow##34646 |goto 40.48,53.99
step
#include "Garrison_LtThorn"
accept Delegating on Draenor##34692 |goto Lunarfall 40.29,53.76
step
#include "Garrison_CommandTable"
Click the _Killing the Corrupted_ mission
Assign _Qiana Moonshadow_ to the mission and start it
Use the Command Table |q 34692/1 |goto 40.47,53.53
step
#include "Garrison_LtThorn"
turnin Delegating on Draenor##34692 |goto 40.23,53.58
step
#include "Garrison_Yrel"
accept A Hero's Welcome##33075 |goto 47.11,51.05
step
Find Samaara at Embaari Village |q 33075/1 |goto Shadowmoon Valley D 45.67,38.84
step
talk Samaara##75005
turnin A Hero's Welcome##33075 |goto 46.04,38.92
accept Dark Enemies##33765 |goto 46.04,38.92
step
talk Efee##80196
accept Think of the Children!##33070 |goto 46.64,37.74
step
talk Vindicator Tenuum##74343
accept Closing the Door##33905 |goto 46.65,37.29
stickystart "voidmancers"
step
kill Shadowmoon Portalmaster##80181+
Close 3 Void Portals |q 33905/1 |goto 47.53,34.45
You can find another portal here [Shadowmoon Valley D 48.4,33.4]
You can find another portal here [Shadowmoon Valley D 48.9,31.8]
step
talk Hakaam##62769
Save Hakaam |q 33070/1 |goto 48.98,30.89
step
_Follow_ the path around the cliff |goto Shadowmoon Valley D 49.4,32.0 < 20  |only if walking
_Run into_ the small village |goto Shadowmoon Valley D 51.2,31.7 < 20 |only if walking
talk Ariaana##71502
accept In Need of a Hero##33813 |goto 52.04,32.68
step
click Draenei Bucket##230883
|tip They look like small buckets of water on the ground around a fountain.
Get a Draenei Bucket |goto Shadowmoon Valley D 51.8,32.5 < 10
use Draenei Bucket##111908 |tip Use the bucket on the blue fires.
Douse the Bookshelf fire |q 33813/1 |goto 52.04,32.83
Douse the Floor fire |q 33813/2 |goto 52.04,32.83
Douse the Table fire |q 33813/3 |goto 52.04,32.83
Get more Draenei Buckets at [Shadowmoon Valley D 51.8,32.5]
step
talk Ariaana##71502
turnin In Need of a Hero##33813 |goto 52.04,32.68
Save Ariaana |q 33070/3 |goto 52.04,32.68
step
talk Rastaak##64224
Save Rastaak |q 33070/2 |goto 51.94,35.99
step
label "voidmancers"
kill Shadowmoon Voidmancer##80162+
Slay 8 Shadowmoon Voidmancers |q 33765/1 |goto 52.48,34.20
step
_Swim_ across and go up the hill |goto Shadowmoon Valley D 47.6,35.8 < 20 |only if walking
_Continue_ running up the hill and to the left |goto 47.5,39.7 < 20 |only if walking
talk Prophet Velen##74043
turnin Dark Enemies##33765 |goto 49.12,38.51
turnin Think of the Children!##33070 |goto 49.12,38.51
turnin Closing the Door##33905 |goto 49.12,38.51
accept Shadows Awaken##34019 |goto 49.12,38.51
step
Confront Ner'zhul |q 34019/1
kill Karnoth##75043 |q 34019/2 |goto 49.43,36.87
|tip He will drop an item for each crafting profession you have that will start a quest for that profession.  Gathering and Secondary professions do not get a quest item.  You will do the quest(s) for your item(s) later in the guide.
step
talk Prophet Velen##74043
turnin Shadows Awaken##34019 |goto 49.30,37.40
accept Into Twilight##33072 |goto 49.30,37.40
step
talk Prophet Velen##79043
turnin Into Twilight##33072 |goto Shadowmoon Valley D 40.54,54.92
accept The Clarity Elixir##33076 |goto Shadowmoon Valley D 40.53,54.89
step
talk Rangari Veka##73425
accept Going Undercover##33080 |goto 40.58,54.84
step
talk Sylene##73106
Tell her _"I need a Shadowmoon orc illusion."_
Obtain an orc disguise from Sylene |q 33080/1 |goto 40.65,54.61
step
click Pristine Star Lily##223824
|tip It's a large white flower inside a tree.
collect 1 Pristine Star Lily##111024 |q 33076/3 |goto 47.33,52.09
step
kill Echidnian Hydra##79020+
collect 3 Engorged Heart##105716 |q 33076/2 |goto 45.26,50.96
kill Frenzied Swamplighter##75471+
collect 6 Swamplighter Dust##104350 |q 33076/1 |goto 45.26,50.96
step
_Follow_ the trail up through the cliffs |goto Shadowmoon Valley D 39.3,53.7 < 20 |only if walking
_Follow_ the path to the right |goto Shadowmoon Valley D 38.0,55.3 < 20 |only if walking
_Continue_ over the bridge |goto 37.2,52.4 < 20 |only if walking
talk Prophet Velen##79043
turnin The Clarity Elixir##33076 |goto 35.27,49.12
accept The Fate of Karabor##33059 |goto 35.27,49.12
step
use Clarity Elixir##111591
Drink the Clarity Elixir |q 33059/1 |goto 35.28,49.12
step
Enter the Scenario |goto Shadowmoon Valley D 79.0,46.6 < 20 |c |q 33059
step
Follow Prophet Velen |scenariogoal 24541 |goto Shadowmoon Valley D 79.9,46.6
scenariostage 1
step
kill Krull##77767 |scenariogoal 24539 |goto Shadowmoon Valley D 80.0,46.6
scenariostage 2
step
Witness Commander Vorka's Arrival |scenariogoal 24542
scenariostage 3
step
talk Prophet Velen##79522
Tell him _"Prophet, we're being overrun!"_
Speak to Velen on the Karabor Stairs |scenariogoal 24543 |goto Shadowmoon Valley D 79.2,46.6
scenariostage 4
step
Watch the dialogue
Witness the fate of Karabor |q 33059/2 |goto Shadowmoon Valley D 79.2,46.6
step
_Follow_ the path back down |goto Shadowmoon Valley D 37.5,54.5 < 20 |only if walking
talk Prophet Velen##79043
turnin The Fate of Karabor##33059 |goto Shadowmoon Valley D 40.52,54.91
step
_Enter_ Shaz'gul through the wooden gates |goto Shadowmoon Valley D 38.6,60.5 < 20 |walk
Use Sylene's Amulet of Illusion in your bags |use Sylene's Amulet of Illusion##107076
|tip Use this if you lose your disguise.  Also, Void Wolves can see through your disguise, so be careful around them.
Gain the _Shadowmoon Orc Disguise_ |havebuff 236452 |q 33080
|tip You will only complete this goal if you're a male character. |or
Gain the _Shadowmoon Orc Disguise_ |havebuff 236451 |q 33080
|tip You will only complete this goal if you're a female character. |or
clicknpc Explosives##74811
|tip It looks like a yellow bomb with bumps all over it, sitting on the ground.
Plant Explosives at the Supply Hut |q 33080/2 |goto Shadowmoon Valley D 37.17,59.25
step
_Enter_ the building |goto Shadowmoon Valley D 36.7,61.3 < 10 |walk
Use Sylene's Amulet of Illusion in your bags |use Sylene's Amulet of Illusion##107076
|tip Use this if you lose your disguise.  Also, Void Wolves can see through your disguise, so be careful around them.
Gain the _Shadowmoon Orc Disguise_ |havebuff 236452 |q 33080
|tip You will only complete this goal if you're a male character. |or
Gain the _Shadowmoon Orc Disguise_ |havebuff 236451 |q 33080
|tip You will only complete this goal if you're a female character. |or
clicknpc Explosives##74811
|tip It looks like a yellow bomb with bumps all over it, sitting on the ground.
Plant Explosives at the Main Lodge |q 33080/3 |goto Shadowmoon Valley D 36.37,61.44
step
Use Sylene's Amulet of Illusion in your bags |use Sylene's Amulet of Illusion##107076
|tip Use this if you lose your disguise.  Also, Void Wolves can see through your disguise, so be careful around them.
Gain the _Shadowmoon Orc Disguise_ |havebuff 236452 |q 33080
|tip You will only complete this goal if you're a male character. |or
Gain the _Shadowmoon Orc Disguise_ |havebuff 236451 |q 33080
|tip You will only complete this goal if you're a female character. |or
_Head_ through the gates to the Chieftains' seat |goto Shadowmoon Valley D 37.8,62.6 < 20
clicknpc Explosives##74811
|tip It looks like a yellow bomb with bumps all over it, sitting on the ground behind a huge stone.
Plant Explosives at the Chieftain's Seat |q 33080/4 |goto Shadowmoon Valley D 39.1,62.9
step
Use Sylene's Amulet of Illusion in your bags |use Sylene's Amulet of Illusion##107076
|tip Use this if you lose your disguise.  Also, Void Wolves can see through your disguise, so be careful around them.
Gain the _Shadowmoon Orc Disguise_ |havebuff 236452 |q 33080
|tip You will only complete this goal if you're a male character. |or
Gain the _Shadowmoon Orc Disguise_ |havebuff 236451 |q 33080
|tip You will only complete this goal if you're a female character. |or
clicknpc Explosives##74811
|tip It looks like a yellow bomb with bumps all over it, sitting on the ground.
Plant Explosives at the Training Pit |q 33080/5 |goto Shadowmoon Valley D 36.5,65.5
step
talk Yrel##74877
turnin Going Undercover##33080 |goto 34.22,63.24
accept Escape From Shaz'gul##33081 |goto 34.22,63.24
step
talk Yrel##74877
Choose any of the dialogue options
Inspire Yrel |q 33081/1 |goto 34.22,63.24
Watch the dialogue and wait for Yrel to start running
Follow and protect her as she runs
Escape Shaz'gul with Yrel |q 33081/2
step
talk Yrel##74877
turnin Escape From Shaz'gul##33081 |goto 40.60,54.97
step
talk Scout Valdez##81152
accept Fast Expansion##33814 |goto 40.65,54.88
step
#include "Garrison_BAlexston"
turnin Fast Expansion##33814
accept Bigger is Better##36592
step
label "Resource"
In order to upgrade your garrison to level 2, you must save up 200 garrison resources. Be sure not to spend any.
earn 200 Garrison Resources##824
step
#include "Garrison_ArchitectTable"
Click on your Town Hall and click _Upgrade_ |complete garrisonlvl(2)
step
#include "Garrison_BAlexston"
turnin Bigger is Better##36592
step
label "Level3"
In order to upgrade your garrison to level 3, you must be level 35.
Reach Level 35 |ding 35 |next "Start2"
step
label "Start2"
#include "Garrison_BAlexston"
accept My Very Own Castle##36615
step
You must collect 2,000 Garrison Resources to upgrade your garrison to level 3
Gather 2,000 Garrison Resources |q 36615/1
step
#include "Garrison_ArchitectTable"
Click on your Town Hall and click _Upgrade_ |complete garrisonlvl(3)
step
#include "Garrison_BAlexston"
turnin My Very Own Castle##36615
step
label "GarrisonMax"
Congratulations, you have earned the Even More Plots Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Garrison Buddies",{
achieveid={9210},
patch='60001',
description="\nThis guide will walk you through visiting a friend's garrison and waving.",
},[[
step
This should prove to be a pretty easy achievment to obtain
Simply send a group request to a friend or request one from someone else
Once in a group right click your portrait and select visit members garrison
|tip You must be in your garrison first.
Click on your friend and perform a /wave emote |achieve 9210
step
Congratulations, you have earned the Garrison Buddies Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\In Pursuit of Gul'dan",{
achieveid={10067},
patch='60200',
description="\nComplete the Garrison Campaign chapters listed below.",
},[[
step
Enter Your Garrison:
accept Garrison Campaign: War Council##38253 |goto Lunarfall/0 32.0,31.9
|tip You will automatically accept this quest.
step
talk King Varian Wrynn##92219
turnin Garrison Campaign: War Council##38253 |goto Lunarfall/0 32.0,31.9
accept We Need a Shipwright##38257 |goto Lunarfall/0 32.0,31.9
step
talk Dungar Longdrink##81103 |goto Lunarfall/0 48.0,49.8
Tell him _"I am needed urgently at the Iron Docks."_
Travel to the Iron Docks |goto Gorgrond/0 52.9,9.6 < 100 |noway |c |q 38257
accept Clearing the Docks##37921
|tip You will accept this quest automatically when you arrive at the Iron Docks.
step
talk Exarch Naielle##90180
turnin We Need a Shipwright##38257 |goto Gorgrond/0 52.6,9.8
accept Derailment##38254 |goto Gorgrond/0 52.6,9.8
stickystart "clearing_the_docks"
step
_Run across_ this bridge |goto Gorgrond/0 51.7,13.2 < 30 |only if walking
click Detonator##240518
|tip It's a wooden box with a handle on top of it, on the ground next to a wall.
collect Detonator##122516 |q 38254/2 |goto Gorgrond/0 51.4,14.3
step
_Run across_ this bridge |goto Gorgrond/0 50.1,14.3 < 30 |only if walking
click Explosive Charges##240517
|tip It looks like a big basket full of metal bombs, on the ground next to a small wall.
collect Explosive Charges##122515 |q 38254/1 |goto Gorgrond/0 49.8,12.7
step
label "clearing_the_docks"
kill Iron Grunt##91599+, Iron Rearguard##89952+, Ogron Lifter##89951+
|tip Kill any mobs you see.
clicknpc Iron Siege Ram##93174+
|tip Destroy siege weapons.
clicknpc Iron Horde Transport##93147+
|tip Sink transports. They are boats floating next to walls in the water.
kill Felsworn Prophet##91596+
Disrupt the Iron Horde Evacuation |q 37921/1 |goto Gorgrond/0 52.3,11.0
|tip You will see a progress bar in your quest tracking area.
step
_Follow_ the path |goto Gorgrond/0 52.9,17.8 < 30 |only if walking
talk Exarch Yrel##90177
turnin Derailment##38254 |goto Gorgrond/0 56.8,17.2
accept The Train Gang##38255 |goto Gorgrond/0 56.8,17.2
step
clicknpc Explosive Charge##93209
|tip It looks like a yellow spiked bomb sitting up on the train.
Plant the First Explosive |q 38255/1 |goto Gorgrond/0 56.9,16.9
step
clicknpc Explosive Charge##93209
|tip It looks like a yellow spiked bomb sitting up on the train.
Plant the Second Explosive |q 38255/2 |goto Gorgrond/0 56.9,17.2
step
clicknpc Explosive Charge##93209
|tip It looks like a yellow spiked bomb sitting up on the train.
Plant the Third Explosive |q 38255/3 |goto Gorgrond/0 56.9,17.4
step
click Detonator##240518
|tip It's a wooden box with a handle on top of it, on the ground.
Blow Open the Train |q 38255/4 |goto Gorgrond/0 56.8,17.2
step
Watch the dialogue:
Recruit Solog Roark |q 38255/5 |goto Gorgrond/0 56.8,17.2
step
talk Solog Roark##91242
turnin The Train Gang##38255 |goto Gorgrond/0 56.8,17.2
accept Hook, Line, and... Sink Him!##38256 |goto Gorgrond/0 56.8,17.2
step
_Follow_ the path |goto Gorgrond/0 52.9,17.8 < 30 |only if walking
click Blackrock Grapple##241130
|tip It looks like a metal cannon pointing upward.
Grapple to Knar's Bunker |q 38256/1 |goto Gorgrond/0 50.7,16.1
step
_Enter_ the building |goto Gorgrond/0 50.6,17.0 < 20 |walk
kill Admiral Knar##92191
collect Roark's Shipyard Blueprints##123867 |q 38256/2 |goto Gorgrond/0 50.6,17.6
step
talk Solog Roark##91242
turnin Hook, Line, and... Sink Him!##38256 |goto Gorgrond/0 50.6,16.7
accept Nothing Remains##38258 |goto Gorgrond/0 50.6,16.7
step
talk King Varian Wrynn##92219
turnin Nothing Remains##38258 |goto Lunarfall/0 32.0,31.9
accept All Hands on Deck##38259 |goto Lunarfall/0 32.0,31.9
step
_Go through_ the doorway |goto Lunarfall/0 26.8,48.9 < 20 |walk
talk Solog Roark##91242
turnin All Hands on Deck##38259 |goto Shadowmoon Valley D/0 27.5,11.3
step
talk Merreck Vonder##93822
accept Let's Get To Work##39082 |goto Shadowmoon Valley D/0 28.2,10.6
step
talk Solog Roark##94429
turnin Let's Get To Work##39082 |goto Shadowmoon Valley D/0 29.8,10.6
accept Shipbuilding##39054 |goto Shadowmoon Valley D/0 29.8,10.6
step
use Ship Blueprint: Transport##127268
Learn the Ship Blueprint: Transport |q 39054/1
step
talk Solog Roark##94429
turnin Shipbuilding##39054 |goto Shadowmoon Valley D/0 29.8,10.6
accept Strange Tools##39276 |goto Shadowmoon Valley D/0 29.8,10.6
step
talk Yanas Seastrike##95002
turnin Strange Tools##39276 |goto Shadowmoon Valley D/0 29.8,10.7
accept Ship Shape##39055 |goto Shadowmoon Valley D/0 29.8,10.7
step
talk Yanas Seastrike##95002
Tell him _"Start construction on our first transport."_
Click _Start Work Order_ in the window
Start Construction on a Transport Ship |q 39055/1 |goto Shadowmoon Valley D/0 29.8,10.7
step
click Transport Ship##243699
|tip It looks like a huge wooden ship sitting on the beach.
Interact with the Transport Once Construction is Complete |q 39055/2 |goto Shadowmoon Valley D/0 30.0,10.7
|tip It takes 1 minute to build after you begin the work order.
step
talk Yanas Seastrike##95002
turnin Ship Shape##39055 |goto Shadowmoon Valley D/0 29.8,10.7
accept The Invasion of Tanaan##38435 |goto Shadowmoon Valley D/0 29.8,10.7
step
Meet with Khadgar |q 38435/1 |goto Shadowmoon Valley D/0 27.6,10.3
step
talk Exarch Yrel##90177
Tell her _"Let us begin the invasion."_
Speak With Yrel |q 38435/2 |goto Shadowmoon Valley D/0 27.6,10.2
step
talk Exarch Yrel##91913
turnin The Invasion of Tanaan##38435 |goto Tanaan Jungle/0 73.4,71.1
accept Obstacle Course##38436 |goto Tanaan Jungle/0 73.4,71.1
step
_Follow_ the road |goto Tanaan Jungle/0 72.3,64.8 < 30 |only if walking
_Enter_ the building |goto Tanaan Jungle/0 69.3,64.2 < 20 |walk
click Letter from Kilrogg##240888
|tip It looks like a tan rolled up scroll laying on the floor inside this building.
Find Information on the Bleeding Hollow |q 38436/1 |goto Tanaan Jungle/0 68.9,64.9
step
_Follow_ the dirt path |goto Tanaan Jungle/0 71.3,57.6 < 30 |only if walking
_Enter_ the building |goto Tanaan Jungle/0 73.5,56.6 < 20 |walk
click Magril's Journal##240889
|tip It looks like a big purple book laying on a bed inside this building.
Find Information on the Cultists |q 38436/2 |goto Tanaan Jungle/0 74.0,56.1
step
_Follow_ the road |goto Tanaan Jungle/0 71.1,57.5 < 40 |only if walking
talk Exarch Naielle##91923
turnin Obstacle Course##38436 |goto Tanaan Jungle/0 69.5,53.0
accept In, Through, and Beyond!##38444 |goto Tanaan Jungle/0 69.5,53.0
step
_Follow_ the path up |goto Tanaan Jungle/0 63.6,52.7 < 20 |only if walking
Reach the Fel Defense Cannon |q 38444/1 |goto Tanaan Jungle/0 63.6,52.1
step
click Ammunition Pile##240914
|tip It looks like a pile of huge metal spiked bombs.
Destroy the Fel Defense Cannon |q 38444/2 |goto Tanaan Jungle/0 64.3,51.6
step
Meet Up With Exarch Naielle |q 38444/3 |goto Tanaan Jungle/0 62.5,54.2
step
talk Exarch Naielle##91923
turnin In, Through, and Beyond!##38444 |goto Tanaan Jungle/0 62.5,54.2
accept The Assault Base##38445 |goto Tanaan Jungle/0 62.5,54.2
step
_Follow_ the dirt path up |goto Tanaan Jungle/0 58.0,53.3 < 30 |only if walking
_Continue_ following the path up |goto Tanaan Jungle/0 57.1,55.9 < 20 |only if walking
Follow Naielle |q 38445/1 |goto Tanaan Jungle/0 57.6,59.2
step
clicknpc Alliance Banner##120954
|tip It looks like a yellow hanging flag with the Alliance lion logo on it.
Plant the Flag to Build the Base |q 38445/2 |goto Tanaan Jungle/0 57.5,59.2
step
talk Skyguard Thann##90960
fpath Lion's Watch |goto Tanaan Jungle/0 57.6,58.8
step
_Enter_ the building |goto Tanaan Jungle/0 58.2,60.0 < 20 |walk
talk Exarch Yrel##90309
turnin The Assault Base##38445 |goto Tanaan Jungle/0 58.5,60.3
step
Complete the following guide before continuing:
_Tanaan Jungle (100)_
confirm |only if not completedq(38578)
step
talk Exarch Yrel##90309
accept Garrison Campaign: The Bane of the Bleeding Hollow##38560 |goto Tanaan Jungle/0 58.5,60.3
|tip If this quest is not available to you, try relogging or find and use the guide to find a quest that is available to you. A new random Garrison Campaign quest will be available each week until you complete the campaign.
step
_Follow_ the path |goto Tanaan Jungle/0 27.9,58.9 < 30 |only if walking
_Run up_ the dirt path |goto Tanaan Jungle/0 21.3,59.0 < 30 |only if walking
kill Bleeding Hollow Hunter##89699+, Bleeding Hollow Impaler##89705+, Bleeding Hollow Cabalist##90851+
collect 8 Bleeding Hollow Hunting Map##127006 |q 38560/1 |goto Tanaan Jungle/0 22.7,53.5
step
Click the _Quest Complete_ Box:
turnin Garrison Campaign: The Bane of the Bleeding Hollow##38560
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
step
_Run down_ the spiral ramp and _follow_ the path |goto Tanaan Jungle/0 32.1,37.2 < 20 |only if walking
_Continue_ following the path down |goto Tanaan Jungle/0 32.3,38.6 < 20 |only if walking
_Follow_ the path down |goto Tanaan Jungle/0 33.0,37.3 < 30 |only if walking
_Keep going_ down |goto Tanaan Jungle/0 32.6,35.3 < 30 |only if walking
_Follow_ the path |goto Tanaan Jungle/0 31.9,37.6 < 20 |only if walking
_Continue_ through the tunnel |goto Tanaan Jungle/0 32.9,38.1 < 20 |only if walking
kill 6 Enraged Blood Spirit##91313 |q 38273/1 |goto Tanaan Jungle/0 33.1,36.8
Reach the Bottom of the Bleeding Hollow |q 38272/1 |goto Tanaan Jungle/0 33.1,36.8
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
talk Reshad##91290
accept Garrison Campaign: In the Shadows##37687 |goto Tanaan Jungle/0 57.4,58.8
|tip If this quest is not available to you, try relogging or use the Garrison Campaign guide to find a quest that is available to you. A new random Garrison Campaign quest will be available each week until you complete the campaign.
step
use Reshad's Volatile Concoction##122463
|tip Walk around camp until blue smoking balls of light appear. Use Reshad's Volatile Concoction on it when you find one.
kill 3 Council Nightblade##91230+ |q 37687/1 |goto Tanaan Jungle/0 57.6,59.3
step
talk Reshad##91292
turnin Garrison Campaign: In the Shadows##37687 |goto Tanaan Jungle/0 57.4,58.8
accept Friends Above##38267 |goto Tanaan Jungle/0 57.4,58.8
step
talk Skyguard Thann##90960 |goto Tanaan Jungle/0 57.5,58.8
Tell him _"Take me to Aktar's Post."_
Meet with Reshad at Aktar's Post |q 38267/1
step
talk Reshad##91291
turnin Friends Above##38267 |goto Tanaan Jungle/0 25.8,38.9
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
talk Exarch Yrel##90309
accept Garrison Campaign: Onslaught at Auchindoun##38421 |goto Tanaan Jungle/0 58.5,60.3
|tip If this quest is not available to you, try relogging or use the Garrison Campaign guide to find a quest that is available to you. A new random Garrison Campaign quest will be available each week until you complete the campaign.
step
_Follow_ the path |goto Talador/0 42.8,74.5 < 30 |only if walking
talk Exarch Yrel##91751
turnin Garrison Campaign: Onslaught at Auchindoun##38421 |goto Talador/0 44.3,65.4
accept Secrets of the Sargerei##38562 |goto Talador/0 44.3,65.4
accept The Sargerei Menace##38565 |goto Talador/0 44.3,65.4
step
kill Burning Hound##91707+, Sargerei Punisher##91685+, Sargerei Souldrainer##91686+
kill 12 Sargerei |q 38565/1 |goto Talador/0 46.0,63.2
step
Click the _Quest Complete_ Box:
turnin The Sargerei Menace##38565
step
_Jump down_ into the hole |goto Talador/0 46.8,63.4 < 20 |walk
_Go down_ the path and _jump down_ here |goto Talador/30 41.9,29.3 < 20 |walk
Enter the Breached Ossuary |q 38562/1 |goto Talador/30 44.0,29.5
step
_Follow_ the path |goto Talador/30 47.6,28.4 < 20 |walk
click Fel Soul Drainer##240685
|tip It's a big green floating crystal.
Destroy the East Fel Soul Drainer |q 38562/3 |goto Talador/30 63.5,17.4
step
_Go through_ the doorway |goto Talador/30 47.5,28.6 < 20 |walk
_Follow_ the path |goto Talador/30 40.0,33.5 < 20 |walk
click Fel Soul Drainer##240685
|tip It's a big green floating crystal.
Destroy the West Fel Soul Drainer |q 38562/2 |goto Talador/30 24.2,44.5
step
_Go through_ the doorway |goto Talador/30 40.1,33.5 < 20 |walk
_Follow_ the path down |goto Talador/30 46.2,38.8 < 20 |walk
Investigate the Lower Chamber |q 38562/4 |goto Talador/30 49.7,50.3
step
click Corrupted Soul Focus##240688
|tip It looks like a big floating stone slab.
Destroy #1# Corrupted Soul Focus |q 38562/5 |goto Talador/30 56.0,70.7
step
click Corrupted Soul Focus##240688
|tip It looks like a big floating stone slab.
Destroy #2# Corrupted Soul Focus |q 38562/5 |goto Talador/30 53.8,85.1
step
click Corrupted Soul Focus##240688
|tip It looks like a big floating stone slab.
Destroy #3# Corrupted Soul Focus |q 38562/5 |goto Talador/30 64.8,77.2
Watch the dialogue
Defeat Gorefiend |q 38562/6
step
talk Exarch Yrel##91751
turnin Secrets of the Sargerei##38562 |goto Talador/30 56.8,66.7
step
talk Exarch Yrel##90309
accept Garrison Campaign: The Warlock##38561 |goto Tanaan Jungle/0 58.5,60.3
|tip If this quest is not available to you, try relogging or use the Garrison Campaign guide to find a quest that is available to you. A new random Garrison Campaign quest will be available each week until you complete the campaign.
step
talk Oronok Torn-heart##91994
|tip He looks like an armored orc, kneeling down inside this building near the fire.
Tell him _"Speak quickly warlock."_
Speak With the Warlock |q 38561/1 |goto Tanaan Jungle/0 58.5,60.2
step
Go to the Vault of the Earth |q 38561/2 |goto Tanaan Jungle/0 47.1,70.2
step
_Enter_ the cave |goto Tanaan Jungle/0 47.3,70.7 < 30 |walk
_Follow_ the path |goto Tanaan Jungle/0 47.4,71.7 < 30 |walk
Stop Gul'dan |q 38561/3 |goto Tanaan Jungle/0 46.7,73.1
|tip Watch the dialogue.
step
_Follow_ the path |goto Tanaan Jungle/0 47.4,71.7 < 30 |walk
_Leave_ the cave |goto Tanaan Jungle/0 47.3,70.7 < 30 |walk
talk Oronok Torn-heart##92055
turnin Garrison Campaign: The Warlock##38561 |goto Tanaan Jungle/0 47.4,70.4
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
accept The Cipher of Damnation##39394 |goto Tanaan Jungle/0 62.6,31.1
step
talk Exarch Yrel##93632
Tell her _"Begin the ritual please."_
Watch the dialogue
Speak With Your Allies and Break the Barrier |q 39394/1 |goto Tanaan Jungle/0 62.7,31.1
step
_Run up_ the path |goto Tanaan Jungle/0 62.2,29.6 < 30 |only if walking
Enter the Corrupt Refuge |q 39394/2 |goto Tanaan Jungle/0 62.3,28.0
step
kill Cyrukh##92010 |q 39394/3 |goto Tanaan Jungle/0 62.8,27.6
|tip He looks like a big fire elemental.
step
talk Exarch Yrel##93658
turnin The Cipher of Damnation##39394 |goto Tanaan Jungle/0 62.7,27.7
step
Congratulations, you have earned the In Pursuit of Gul'dan achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Staying Regular",{
achieveid={8933},
patch='60001',
description="\nRelieve yourself in the garrison outhouse.",
},[[
step
Make your way to the outhouses on the outside of your garrison walls |goto Lunarfall/0 63.0,71.4 < 5
Pick a stall and have a seat |achieve 8933
step
Congratulations, you have _earned_ the Staying Regular Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Buildings\\Builder",{
achieveid={9095},
patch='60001',
description="\nUpgrade all the buildings on your garrison plots to level 2.",
},[[
step
#include "Garrison_ArchitectTable"
_Upgrade_ all the buildings on your garrison plots listed below
_Upgrade_ #2# small buildings |achieve 9095/1
|tip Profession Buildings, Salvage Yard, Storehouse.
_Upgrade_ #2# medium buildings |achieve 9095/2
|tip Barn, Lunarfall Inn, Gladiator's Sanctum, Lumber Mill, Trading Post.
_Upgrade_ #1# large building |achieve 9095/3
|tip Barracks, Stables, Dwarven Bunker, Gnomish Gearworks, Mage Tower.
step
Congratulations, you have _earned_ the Builder Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Buildings\\Choppin' Even More Logs", {
achieveid={9078},
patch='60001',
description="\nPlace 100 Work Orders at the Lumber Mill.",
},[[
step
This achievement _requires_ a level 1 Lumber Mill
|confirm
step
map Shadowmoon Valley D
path follow loose; loop on; ants curved
path	27.8,24.4	25.4,26.2	26.4,30.1
path	30.0,32.9	32.7,33.3	36.4,36.7
path	38.9,39.8	40.4,45.1	43.4,48.9
path	43.0,51.3	46.7,51.0	48.2,56.3
path	49.9,57.7	52.1,61.6	53.8,59.2
path	54.3,56.2	56.8,55.6	59.0,51.9
path	61.4,48.2	61.7,43.5	64.9,33.7
path	63.9,30.7	59.8,33.0	55.1,33.0
path	52.4,31.8	50.5,28.0	48.0,26.3
path	45.3,29.2	40.9,28.4	38.7,27.8
path	34.9,28.0	32.6,26.4
Work Orders can be completed for the Mill by _chopping down trees in Draenor_ and collecting Timber
|tip Ten timber equals one work order.
collect 1000 Timber##114781 |c
step
#include "Garrison_Medium_Building"
_Place_ #100# work orders the Lumber Mill |achieve 9078
step
Congratulations, you have _earned_ the Choppin' Even More Logs Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Buildings\\Choppin' Some Logs",{
achieveid={9076},
patch='60001',
description="\nPlace 10 Work Orders at the Lumber Mill.",
},[[
step
This achievement _requires_ a level 1 Lumber Mill
|confirm
step
map Shadowmoon Valley D
path follow loose; loop on; ants curved
path	27.8,24.4	25.4,26.2	26.4,30.1
path	30.0,32.9	32.7,33.3	36.4,36.7
path	38.9,39.8	40.4,45.1	43.4,48.9
path	43.0,51.3	46.7,51.0	48.2,56.3
path	49.9,57.7	52.1,61.6	53.8,59.2
path	54.3,56.2	56.8,55.6	59.0,51.9
path	61.4,48.2	61.7,43.5	64.9,33.7
path	63.9,30.7	59.8,33.0	55.1,33.0
path	52.4,31.8	50.5,28.0	48.0,26.3
path	45.3,29.2	40.9,28.4	38.7,27.8
path	34.9,28.0	32.6,26.4
Work Orders can be completed for the Mill by _chopping down trees in Draenor_ and collecting Timber
|tip Ten timber equals one work order.
collect 100 Timber##114781 |c
step
#include "Garrison_Medium_Building"
_Place_ #10# work orders the Lumber Mill |achieve 9076
step
Congratulations, you have _earned_ the Choppin' Some Logs Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Buildings\\Choppin' Some More Logs",{
achieveid={9077},
patch='60001',
description="\nPlace 50 Work Orders at the Lumber Mill.",
},[[
step
This achievement _requires_ a level 1 Lumber Mill
|confirm
step
map Shadowmoon Valley D
path follow loose; loop on; ants curved
path	27.8,24.4	25.4,26.2	26.4,30.1
path	30.0,32.9	32.7,33.3	36.4,36.7
path	38.9,39.8	40.4,45.1	43.4,48.9
path	43.0,51.3	46.7,51.0	48.2,56.3
path	49.9,57.7	52.1,61.6	53.8,59.2
path	54.3,56.2	56.8,55.6	59.0,51.9
path	61.4,48.2	61.7,43.5	64.9,33.7
path	63.9,30.7	59.8,33.0	55.1,33.0
path	52.4,31.8	50.5,28.0	48.0,26.3
path	45.3,29.2	40.9,28.4	38.7,27.8
path	34.9,28.0	32.6,26.4
Work Orders can be completed for the Mill by _chopping down trees in Draenor_ and collecting Timber
|tip Ten timber equals one work order.
collect 500 Timber##114781 |c
step
#include "Garrison_Medium_Building"
_Place_ #50# work orders the Lumber Mill |achieve 9077
step
Congratulations, you have _earned_ the Choppin' Some More Logs Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Buildings\\Draftsman",{
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
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Buildings\\Fight, Kill, Salute!",{
achieveid={9639},
patch='60001',
description="\nThis guide will help you acquire the Fight, Kill, Salute! achievement.",
},[[
step
Upgrade your Gladiator's Sanctum to level 3 |complete hasbuilding(161) |goto Lunarfall/0 45.4,50.7
|tip You must have a level 3 Gladiator's Sanctum to complete this achievement.
step
talk Gharg##87247
accept Call of the Gladiator##37082 |goto Lunarfall/0 47.3,54.0
|tip If Gharg is not in your garrison, you can exit and re-enter your garrison to get him to appear.
Kharg can also be found at the Highmaul Coliseum |goto Nagrand D 33.0,38.6
step
talk Kharg##87311
turnin Call of the Gladiator##37082 |goto Nagrand D 33.0,38.6
accept Fight, Kill, Salute!##37083 |goto Nagrand D 33.0,38.6
step
label "queue"
talk Kharg##87311 |goto Nagrand D 33.0,38.6
talk Boneslag##88219 |goto Lunarfall/0 47.3,54.0
|tip You may queue for the Highmaul Coliseum by speaking to Kharg at Highmaul in Nagrand or Boneslag in your garrison.
|tip Your first queue of the day is free. Subsequent queues will cost 100 Broken Bones, which can be acquired by killing players in Ashran.
Queue for the Highmaul Coliseum and ride the elevator |scenariostage 1 |or
confirm |or |'
achieve 9639 |or |'
step
Prepare yourself for battle |scenariostage 2 |or
|tip Try to find a place out of sight. Staying out of sight and tagging low health players is the fastest way to earn this achievement.
confirm |or |'
achieve 9639 |or |'
step
Fight to the bitter end |scenariostage 3 |or
|tip The Coliseum event ends with the last man standing.
confirm |or |'
achieve 9639 |or |'
step
Click here to queue again |confirm |next "queue" |or
Turnin |q 37083/1 |' |or
step
talk Kharg##87311
turnin Fight, Kill, Salute!##37083 |goto Nagrand D 33.0,38.6
step
Congratulations, you have earned _Fight, Kill, Salute!_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Buildings\\Finding Your Waystones",{
achieveid={9497},
patch='60001',
description="\nThis guide will walk you through looting 500 Ogre Waystones.",
},[[
step
Routing to Tower |next "tower" |only if hasbuilding(37,1) or hasbuilding(38,2) or hasbuilding(39,3)
Routing to End |next "end" |only if default
step
label "tower"
kill Grimfrost Drudge##72955+, Grimfrost Wolfslayer##72953+, Grimfrost Lavaslinger##72987+ |goto Frostfire Ridge/0 67.5,46.7
collect 500 Ogre Waystone##117491 |achieve 9497
step
label "end"
Congratulations, you have earned the Finding Your Waystones Achievement! |only if hasbuilding(37,1) or hasbuilding(38,2) or hasbuilding(39,3)
You must have a Mage Tower to gain this achievement! |only if default
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Buildings\\Garrison Architect",{
achieveid={9094},
patch='60001',
description="\nThis guide will walk you through completing the garrison building achievements resulting in the Architect title.",
},[[
step
_Click here_ to complete Draftsman |confirm |loadguide "Achievement Guides\\Draenor Garrison\\Buildings\\Draftsman" |only if not achieved(9094,1)
_Click here_ to complete Master Draftsman |confirm |loadguide "Achievement Guides\\Draenor Garrison\\Buildings\\Master Draftsman" |only if not achieved(9094,3)
_Click here_ to complete Grand Master Draftsman |confirm |loadguide "Achievement Guides\\Draenor Garrison\\Buildings\\Grand Master Draftsman" |only if not achieved(9094,2)
_Click here_ to complete Keepin' Busy |confirm |loadguide "Achievement Guides\\Draenor Garrison\\Buildings\\Keepin' Busy" |only if not achieved(9094,4)
_Click here_ to complete Master Builder |confirm |loadguide "Achievement Guides\\Draenor Garrison\\Buildings\\Master Builder" |only if not achieved(9094,5)
step
_Congratulations!_
You earned the "Garrison Architect" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Buildings\\Grand Master Draftsman",{
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
#include "Garrison_Large_Building", action="talk Fanny Firebeard##86974", building="Stables"
|tip She walks around this area.
accept Taming a Talbuk##36911
step
clicknpc Young Silverpelt##86801
|tip You will need to be mounted and follow the Young Silverpet as it tries to run away.
Use the Talbuk Lasso |use Talbuk Lasso##118179
Tame a Silverpelt |q 36911/1 |goto Shadowmoon Valley D/0 50.9,29.8
step
#include "Garrison_Large_Building", action="talk Fanny Firebeard##86974", building="Stables"
|tip She walks around this area.
turnin Taming a Talbuk##36911
step
#include "Garrison_Large_Building", action="talk Keegan Firebeard##86973", building="Stables"
accept Talbuk Training: Great Tusk##36971
step
Use the Silverpelt-In-Training Whistle |use Silverpelt-In-Training Whistle##118352
kill Great-Tusk##87083
|tip You must be mounted for credit.
Kill the Great-Tusk |q 36971/1 |goto Shadowmoon Valley D/0 62.92,39.38
step
#include "Garrison_Large_Building", action="talk Keegan Firebeard##86973", building="Stables"
turnin Talbuk Training: Great Tusk##36971
step
#include "Garrison_Large_Building", action="talk Keegan Firebeard##86973", building="Stables"
|tip He walks around this area.
|tip You may need to relog for this to appear.
accept Capturing a Clefthoof##36916
step
clicknpc Young Icehoof##86847
|tip You will need to be mounted and follow the Young Icehoof as it tries to run away.
Use the Clefthoof Lasso |use Clefthoof Lasso##118181
Tame an Icehoof |q 36916/1 |goto Frostfire Ridge/0 53.5,20.0
step
#include "Garrison_Large_Building", action="talk Keegan Firebeard##86973", building="Stables"
|tip He walks around this area.
turnin Taming a Clefthoof##36916
step
#include "Garrison_Large_Building", action="talk Keegan Firebeard##86973", building="Stables"
|tip He walks around this area.
|tip You may need to relog for this to appear.
accept Besting a Boar##36913
step
clicknpc Young Rocktusk##86850
|tip You will need to be mounted and follow the Young Rocktusk as it tries to run away.
Use the Boar Lasso |use Boar Lasso##118185
Tame a Rocktusk |q 36913/1 |goto Gorgrond/0 43.1,37.2
step
#include "Garrison_Large_Building", action="talk Keegan Firebeard##86973", building="Stables"
|tip He walks around this area.
turnin Besting a Boar##36913
step
#include "Garrison_Large_Building", action="talk Fanny Firebeard##86974", building="Stables"
|tip She walks around this area.
|tip You may need to relog for this to appear.
accept Requisition a Riverbeast##36918
step
clicknpc Shadow Lily##77271
|tip They look like white glowing flowers on the ground right next to the water.
|tip This buff will allow you to walk on water for 10 minutes, and will not be cancelled when you take damage.
Obtain the _Glowstep_ Buff |havebuff Path of Frost##237528 |goto Talador/0 64.4,56.3 |q 36918
step
clicknpc Young Riverwallow##86848
|tip Be sure you still have the Glowstep buff that allows you to walk on water.
|tip You will need to be mounted and follow the Young Riverwallow as it tries to run away.
Use the Riverbeast Lasso |use Riverbeast Lasso##118183
Tame a Riverwallow |q 36918/1 |goto 64.4,56.3
step
#include "Garrison_Large_Building", action="talk Fanny Firebeard##86974", building="Stables"
|tip She walks around this area.
turnin Requisition a Riverbeast##36918
step
#include "Garrison_Large_Building", action="talk Keegan Firebeard##86973", building="Stables"
|tip He walks around this area.
|tip You may need to relog for this to appear.
accept Entangling an Elekk##36915
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
Tame a Meadowstomper |q 36915/1 |goto 85.1,40.7
step
#include "Garrison_Large_Building", action="talk Keegan Firebeard##86973", building="Stables"
|tip He walks around this area.
turnin Entangling an Elekk##36915
step
#include "Garrison_Large_Building", action="talk Fanny Firebeard##86974", building="Stables"
|tip She walks around this area.
|tip You may need to relog for this to appear.
accept Wrangling a Wolf##36914
step
Follow the path |goto Nagrand D/0 58.9,60.0 < 15 |only if walking
clicknpc Young Snarler##86851
|tip You will need to be mounted and follow the Young Snarler as it tries to run away.
Use the Wolf Lasso |use Wolf Lasso##118182
Tame a Snarler |q 36914/1 |goto 57.2,60.3
step
#include "Garrison_Large_Building", action="talk Fanny Firebeard##86974", building="Stables"
|tip She walks around this area.
turnin Wrangling a Wolf##36914
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
Lunarfall Excavation |next "Excavation" |confirm |only if not garrisonlvl(1)
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
Reach Level 20 |ding 20
And
Upgrade your garrison to level 2 |complete garrisonlvl(2) or garrisonlvl(3)
step
talk Ron Ashton##77733
accept Looking For Help##34194 |goto Lunarfall/0 54.4,14.3
step
talk Madari##84372
Speak with Madari and request his assistance |q 34194/1 |goto Shadowmoon Valley D 27.0,7.3
turnin Looking For Help##34194 |goto Shadowmoon Valley D 26.96,7.29
step
talk Madari##84372
accept Moonshell Claws##36199 |goto Shadowmoon Valley D 26.96,7.29
step
kill Moonshell Crawler##84341+
collect 4 Moonshell Claw##114873+ |n
Gather 4 Moonshell Claws |q 36199/1 |goto Shadowmoon Valley D 29.54,10.92
step
talk Madari##84372
turnin Moonshell Claws##36199 |goto Shadowmoon Valley D 26.96,7.28
accept Proving Your Worth##36201 |goto Shadowmoon Valley D 26.96,7.28
step
Equip your Strong Fishing Pole |use Strong Fishing Pole##6365
Attach the Moonshell Claw Bait to your fishing pole |use Moonshell Claw Bait##114874
Stand on the edge of the beach
collect 5 Shadow Sturgeon##114876 |n
Fish up 5 Shadow Sturgeon |q 36201/1 |goto Shadowmoon Valley D 27.54,7.24 |cast Fishing##131474
step
talk Madari##84372
turnin Proving Your Worth##36201 |goto Shadowmoon Valley D 26.96,7.28
accept Anglin' In Our Garrison##36202 |goto Shadowmoon Valley D 26.96,7.28
step
talk Ron Ashton##77733
turnin Anglin' In Our Garrison##36202 |goto Lunarfall/0 54.4,14.3
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
Redirecting to Lunarfall Excavation, Level 1 |next "Excavation1" |only if default
Redirecting to Lunarfall Excavation, Level 2 |next "Excavation2" |only if hasbuilding(61)
Redirecting to Lunarfall Excavation, Level 3 |next "Excavation3" |only if hasbuilding(62)
Redirecting to Lunarfall Excavation end |next "Excavation_End" |only if hasbuilding(63)
step
label "Excavation1"
In order to build the Lunarfall Excavation, you must first reach level 20 and possess a level 2 garrison
Reach Level 20 |ding 20
And
Upgrade your garrison to level 2 |complete garrisonlvl(2) or garrisonlvl(3)
step
talk Timothy Leens##77730
accept Things Are Not Goren Our Way##34192 |goto Lunarfall/0 65.2,41.9
step
kill 8 Lunarfall Goren##83628+, Lunarfall Goren Hatchling##83629+
Kill Goren in the Lunarfall Excavation |q 34192/1 |goto Lunarfall/23 78.5,59.4
step
kill 1 Stonetooth##81396
Deal with Stonetooth in the Lunarfall Excavation |q 34192/2 |goto Lunarfall/23 58.9,80.0
step
talk Timothy Leens##77730
turnin Things Are Not Goren Our Way##34192 |goto Lunarfall/0 65.2,41.9
step
label "Excavation2"
Proceeding to Excavation level 2
step
You can now upgrade your Lunarfall Excavation to _level 2_
_You must be at least level 96_ or have _completed the Talador Outpost questline_ to buy this blueprint
Reach Level 20 |ding 20 |or
Or
Complete the Talador outpost questline |complete completedq(34981) or completedq(34711) |or
step
label "ExcavB2"
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Lunarfall Excavation, Level 2##109576
|only if hasbuilding(61,1)
step
#include "Garrison_ArchitectTable"
use Garrison Blueprint: Lunarfall Excavation, Level 2##109576
Click on your Lunarfall Excavation and click _Upgrade_ |complete hasbuilding(62,2)
step
label "Excavation3"
Proceeding to Excavation level 3
stickystart "Excav3"
step
#include "Garrison_Large_Building"
Loot 500 Draenic Stone from True Iron and Blackrock deposits |achieve 9453
And
Reach Level 35 |ding 35
|next "ExcavL3"
step
label "Excav3"
In order to get the blueprint for the Lunarfall Excavation Level 3, you must be level 35 and complete the _Draenic Stone Collector_ achievement
This requires you to loot 500 Draenic Stone from True Iron and Blackrock deposits
_Note_ that unlocking a level 3 building _on any character_ unlocks that building for the _entire account_
_
Click here if you would like to return to the _Building Menu_ |confirm |next "BuildMenu"
|only if not achieved(9453)
step
label "ExcavL3"
#include "Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Lunarfall Excavation, Level 3##111996
|only if not hasbuilding(63)
step
#include "Garrison_ArchitectTable"
use Garrison Blueprint: Lunarfall Excavation, Level 3##111996
Click on your Lunarfall Excavation and click _Upgrade_ |complete hasbuilding(63,3)
step
label "Excavation_End"
You already have a level 3 Lunarfall Excavation!
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
Reach Level 20 |ding 20
And
Upgrade your garrison to level 2 |complete garrisonlvl(2) or garrisonlvl(3)
step
talk Naron Bloomthistle##85344
accept Clearing the Garden##36404 |goto Lunarfall 58.85,53.49
step
kill 8 Lunarfall Raccoon##85341
Clear the Lunarfall garden of raccoons |q 36404/1 |goto Lunarfall 57.80,59.10
step
talk Naron Bloomthistle##85344
turnin Clearing the Garden##36404 |goto 58.90,53.46
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
Reach Level 35 |ding 35
And
Upgrade your garrison to level 3 |complete garrisonlvl(3)
step
talk Lio the Lioness##85418
accept Pets Versus Pests##36423 |goto 28.55,39.05
step
clicknpc Carrotus Maximus##85420
Defeat Carrotus Maximus in a pet battle |q 36423/1 |goto 57.71,60.13
step
clicknpc Gnawface##85419
Defeat Gnawface in a pet battle |q 36423/3 |goto 60.13,77.82
step
clicknpc Gorefu##85463
Defeat Gorefu in a pet battle |q 36423/2 |goto 57.75,21.80
step
clicknpc Lio the Lioness##85418
turnin Pets Versus Pests##36423 |goto 28.70,38.96
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
Reach Level 35 |ding 35
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
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Buildings\\Master Builder",{
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
|tip Barn, Lunarfall Inn, Gladiator's Sanctum, Lumber Mill, Trading Post.
_Upgrade_ #2# large building |achieve 9096/3
|tip Barracks, Stables, Dwarven Bunker, Gnomish Gearworks, Mage Tower.
step
Congratulations, you have _earned_ the Master Builder Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Buildings\\Master Draftsman",{
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
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Buildings\\Master of Mounts",{
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
_Skipping_ next part of guide |next "start" |only if completedq(36914) and not achieved(9539)
_Proceeding_ to end |only if achieved(9539)
_Proceeding_ next step |next |only if default
step
#include "Garrison_Large_Building"
talk Fanny Firebeard##86974
accept Taming a Talbuk##36911
step
The _beast will move around erratically_ attempting to break free so be on your toes!
_Use_ your Talbuk Lasso on a Young Silverpelt in the area |use Talbuk Lasso##118179 |q 36911/1 |goto Shadowmoon Valley D/0 50.3,30.1
step
#include "Garrison_Large_Building"
talk Fanny Firebeard##86974
turnin Taming a Talbuk##36911
step
#include "Garrison_Large_Building"
talk Keegan Firebeard##86973
accept Capturing a Clefthoof##36916
|tip If you cannot see this quest (it will show up as a daily) you should log out and log back in. This is a Blizzard bug we cannot account for at this time.
step
The _beast will move around erratically_ attempting to break free so be on your toes!
_Use_ your Clefthoof Lasso on a Young Icehoof in the area |use Clefthoof Lasso##118181 |q 36916/1 |goto Frostfire Ridge/0 54.0,20.5
step
#include "Garrison_Large_Building"
talk Keegan Firebeard##86973
turnin Capturing a Clefthoof##36916
step
#include "Garrison_Large_Building"
talk Keegan Firebeard##86973
accept Besting a Boar##36913
|tip If you cannot see this quest (it will show up as a daily) you should log out and log back in. This is a Blizzard bug we cannot account for at this time.
step
The _beast will move around erratically_ attempting to break free so be on your toes!
_Use_ your Boar Lasso on a Young Rocktusk in the area |use Boar Lasso##118185 |q 36913/1 |goto Gorgrond/0 43.9,37.3
step
#include "Garrison_Large_Building"
talk Keegan Firebeard##86973
turnin Besting a Boar##36913
step
#include "Garrison_Large_Building"
talk Fanny Firebeard##86974
accept Requisition a Riverbeast##36918
|tip If you cannot see this quest (it will show up as a daily) you should log out and log back in. This is a Blizzard bug we cannot account for at this time.
step
The _beast can be captured by following the riverbank_, but can be done much easier with water walking potions or a Water Strider mount
_Use_ your Riverbeast Lasso on a Young Riverwallow in the area |use Riverbeast Lasso##118183 |q 36918/1 |goto Talador/0 63.8,54.9
step
#include "Garrison_Large_Building"
talk Fanny Firebeard##86974
turnin Requisition a Riverbeast##36918
step
#include "Garrison_Large_Building"
talk Keegan Firebeard##86973
accept Entangling an Elekk##36915
|tip If you cannot see this quest (it will show up as a daily) you should log out and log back in. This is a Blizzard bug we cannot account for at this time.
step
The _beast will move around erratically and jump to nearby ledges_ attempting to break free so be on your toes!
_Use_ your Elekk Lasso on a Young Meadowstomper in the area |use Elekk Lasso##118184 |q 36915/1 |goto Nagrand D/0 84.8,39.6
step
#include "Garrison_Large_Building"
talk Keegan Firebeard##86973
turnin Entangling an Elekk##36915
step
#include "Garrison_Large_Building"
talk Fanny Firebeard##86974
accept Wrangling a Wolf##36914
|tip If you cannot see this quest (it will show up as a daily) you should log out and log back in. This is a Blizzard bug we cannot account for at this time.
step
The _beast will move around erratically and jump to nearby ledges_ attempting to break free so be on your toes!
_Use_ your Wolf Lasso on a Young Snarler in the area |use Wolf Lasso##118182 |q 36914/1 |goto Nagrand D/0 55.6,60.9
step
label "captures"
#include "Garrison_Large_Building"
talk Fanny Firebeard##86974
turnin Wrangling a Wolf##36914
step
label "start"
#include "Garrison_Large_Building"
talk Keegan Firebeard##86973
You will only be able to _complete 1 of the following quests_ per day
accept Clefthoof Training: Riplash##36985 |or |only if not completedq(36985)
accept Clefthoof Training: Gezz'ran##36986 |or |only if not completedq(36986)
accept Clefthoof Training: Bulbapore##36987 |or |only if not completedq(36987)
accept Clefthoof Training: Cruel Ogres##36988 |or |only if not completedq(36988)
accept Clefthoof Training: Darkwing Roc##36989 |or |only if not completedq(36989)
accept Clefthoof Training: Ironbore##36992 |or |only if not completedq(36992)
accept Clefthoof Training: Moth of Wrath##36990 |or |only if not completedq(36990)
accept Clefthoof Training: Orc Hunters##36993 |or |only if not completedq(36993)
accept Clefthoof Training: The Garn##36994 |or |only if not completedq(36994)
accept Clefthoof Training: Thundercall##36991 |or |only if not completedq(36991)
accept Clefthoof Training: Great-Tusk##36983 |or |only if not completedq(36983)
accept Clefthoof Training: Rakkiri##36984 |or |only if not completedq(36984)
step
#include "Garrison_Large_Building"
talk Keegan Firebeard##86973
You will only be able to _complete 1 of the following quests_ per day
accept Boar Training: Riplash##36995 |or |only if not completedq(36995)
accept Boar Training: Gezz'ran##36996 |or |only if not completedq(36996)
accept Boar Training: Bulbapore##36997 |or |only if not completedq(36997)
accept Boar Training: Cruel Ogres##36998 |or |only if not completedq(36998)
accept Boar Training: Darkwing Roc##36999 |or |only if not completedq(36999)
accept Boar Training: Ironbore##37002 |or |only if not completedq(37002)
accept Boar Training: Moth of Wrath##37000 |or |only if not completedq(37000)
accept Boar Training: Orc Hunters##37003 |or |only if not completedq(37003)
accept Boar Training: The Garn##37004 |or |only if not completedq(37004)
accept Boar Training: Thundercall##37001 |or |only if not completedq(37001)
step
#include "Garrison_Large_Building"
talk Keegan Firebeard##86973
You will only be able to _complete 1 of the following quests_ per day
accept Elekk Training: Cruel Ogres##37015 |or |only if not completedq(37015)
accept Elekk Training: Darkwing Roc##37016 |or |only if not completedq(37016)
accept Elekk Training: Ironbore##37019 |or |only if not completedq(37019)
accept Elekk Training: Moth of Wrath##37017 |or |only if not completedq(37017)
accept Elekk Training: Orc Hunters##37020 |or |only if not completedq(37020)
accept Elekk Training: The Garn##37021 |or |only if not completedq(37021)
accept Elekk Training: Thundercall##37018 |or |only if not completedq(37018)
step
#include "Garrison_Large_Building"
talk Fanny Firebeard##86974
You will only be able to _complete 1 of the following quests_ per day
accept Wolf Training: Cruel Ogres##37022 |or |only if not completedq(37022)
accept Wolf Training: Darkwing Roc##37023 |or |only if not completedq(37023)
accept Wolf Training: Ironbore##37026 |or |only if not completedq(37026)
accept Wolf Training: Moth of Wrath##37024 |or |only if not completedq(37024)
accept Wolf Training: Orc Hunters##37027 |or |only if not completedq(37027)
accept Wolf Training: The Garn##37028 |or |only if not completedq(37028)
accept Wolf Training: Thundercall##37025 |or |only if not completedq(37025)
step
#include "Garrison_Large_Building"
talk Fanny Firebeard##86974
You will only be able to _complete 1 of the following quests_ per day
accept Talbuk Training: Riplash##36973 |or |only if not completedq(36973)
accept Talbuk Training: Gezz'ran##36974 |or |only if not completedq(36974)
accept Talbuk Training: Bulbapore##36975 |or |only if not completedq(36975)
accept Talbuk Training: Cruel Ogres##36976 |or |only if not completedq(36976)
accept Talbuk Training: Darkwing Roc##36977 |or |only if not completedq(36977)
accept Talbuk Training: Ironbore##36980 |or |only if not completedq(36980)
accept Talbuk Training: Moth of Wrath##36978 |or |only if not completedq(36978)
accept Talbuk Training: Orc Hunters##36981 |or |only if not completedq(36981)
accept Talbuk Training: The Garn##36982 |or |only if not completedq(36982)
accept Talbuk Training: Thundercall##36979 |or |only if not completedq(36979)
accept Talbuk Training: Great-Tusk##36971 |or |only if not completedq(36971)
accept Talbuk Training: Rakkiri##36972 |or |only if not completedq(36972)
step
#include "Garrison_Large_Building"
talk Fanny Firebeard##86974
You will only be able to _complete 1 of the following quests_ per day
accept Riverbeast Training: Gezz'ran##37005 |or |only if not completedq(37005)
accept Riverbeast Training: Bulbapore##37006 |or |only if not completedq(37006)
accept Riverbeast Training: Cruel Ogres##37007 |or |only if not completedq(37007)
accept Riverbeast Training: Darkwing Roc##37008 |or |only if not completedq(37008)
accept Riverbeast Training: Ironbore##37011 |or |only if not completedq(37011)
accept Riverbeast Training: Moth of Wrath##37009 |or |only if not completedq(37009)
accept Riverbeast Training: Orc Hunters##37012 |or |only if not completedq(37012)
accept Riverbeast Training: The Garn##37013 |or |only if not completedq(37013)
accept Riverbeast Training: Thundercall##37010 |or |only if not completedq(37010)
step
_Use_ your Silverpelt-In-Training Whistle |use Silverpelt-In-Training Whistle##118352
kill Great-Tusk##87083 |q 36971/1 |goto Shadowmoon Valley D/0 62.7,39.1
only if haveq(36971)
step
_Use_ your Icehoof-In-Training Whistle |use Icehoof-In-Training Whistle##118348
kill Great-Tusk##87083 |q 36983/1 |goto Shadowmoon Valley D/0 62.7,39.1
only if haveq(36983)
step
_Use_ your Silverpelt-In-Training Whistle |use Silverpelt-In-Training Whistle##118352
kill Gezz'ran##87086 |q 36974/1 |goto Talador/0 31.5,54.9
only if haveq(36974)
step
_Use_ your Icehoof-In-Training Whistle |use Icehoof-In-Training Whistle##118348
kill Gezz'ran##87086 |q 36986/1 |goto Talador/0 31.5,54.9
only if haveq(36986)
step
_Use_ your Rocktusk-In-Training Whistle |use Rocktusk-In-Training Whistle##118351
kill Gezz'ran##87086 |q 36996/1 |goto Talador/0 31.5,54.9
only if haveq(36996)
step
_Use_ your Riverwallow-In-Training Whistle |use Riverwallow-In-Training Whistle##118350
kill Gezz'ran##87086 |q 37005/1 |goto Talador/0 31.5,54.9
only if haveq(37005)
step
_Use_ your Silverpelt-In-Training Whistle |use Silverpelt-In-Training Whistle##118352
kill Bulbapore##87087 |q 36975/1 |goto Spires of Arak/0 66.3,75.3
only if haveq(36975)
step
_Use_ your Icehoof-In-Training Whistle |use Icehoof-In-Training Whistle##118348
kill Bulbapore##87087 |q 36987/1 |goto Spires of Arak/0 66.3,75.3
only if haveq(36987)
step
_Use_ your Rocktusk-In-Training Whistle |use Rocktusk-In-Training Whistle##118351
kill Bulbapore##87087 |q 36997/1 |goto Spires of Arak/0 66.3,75.3
only if haveq(36997)
step
_Use_ your Riverwallow-In-Training Whistle |use Riverwallow-In-Training Whistle##118350
kill Bulbapore##87087 |q 37006/1 |goto Spires of Arak/0 66.3,75.3
only if haveq(37006)
step
_Use_ your Silverpelt-In-Training Whistle |use Silverpelt-In-Training Whistle##118352
kill Riplash##87084 |q 36973/1 |goto Gorgrond/0 50.2,38.4
only if haveq(36973)
step
_Use_ your Icehoof-In-Training Whistle |use Icehoof-In-Training Whistle##118348
kill Riplash##87084 |q 36985/1 |goto Gorgrond/0 50.2,38.4
only if haveq(36985)
step
_Use_ your Rocktusk-In-Training Whistle |use Rocktusk-In-Training Whistle##118351
kill Riplash##87084 |q 36995/1 |goto Gorgrond/0 50.2,38.4
only if haveq(36995)
step
_Use_ your Silverpelt-In-Training Whistle |use Silverpelt-In-Training Whistle##118352
kill Rakkiri##87085 |q 36972/1 |goto Frostfire Ridge/0 72.7,70.0
only if haveq(36972)
step
_Use_ your Icehoof-In-Training Whistle |use Icehoof-In-Training Whistle##118348
kill Rakkiri##87085 |q 36984/1 |goto Frostfire Ridge/0 72.7,70.0
only if haveq(36984)
step
_Use_ your Snarler-In-Training Whistle |use Snarler-In-Training Whistle##118353
kill Darkwing Roc##87088 |q 37023/1 |goto Nagrand D/0 68.4,20.3
only if haveq(37023)
step
_Use_ your Silverpelt-In-Training Whistle |use Silverpelt-In-Training Whistle##118352
kill Darkwing Roc##87088 |q 36977/1 |goto Nagrand D/0 68.4,20.3
only if haveq(36977)
step
_Use_ your Icehoof-In-Training Whistle |use Icehoof-In-Training Whistle##118348
kill Darkwing Roc##87088 |q 36989/1 |goto Nagrand D/0 68.4,20.3
only if haveq(36989)
step
_Use_ your Rocktusk-In-Training Whistle |use Rocktusk-In-Training Whistle##118351
kill Darkwing Roc##87088 |q 36999/1 |goto Nagrand D/0 68.4,20.3
only if haveq(36999)
step
_Use_ your Riverwallow-In-Training Whistle |use Riverwallow-In-Training Whistle##118350
kill Darkwing Roc##87088 |q 37008/1 |goto Nagrand D/0 68.4,20.3
only if haveq(37008)
step
_Use_ your Meadowstomper-In-Training Whistle |use Meadowstomper-In-Training Whistle##118349
kill Darkwing Roc##87088 |q 37016/1 |goto Nagrand D/0 68.4,20.3
only if haveq(37016)
step
_Use_ your Snarler-In-Training Whistle |use Snarler-In-Training Whistle##118353
kill Thundercall##87102 |q 37025/1 |goto Nagrand D/0 90.6,23.6
only if haveq(37025)
step
_Use_ your Silverpelt-In-Training Whistle |use Silverpelt-In-Training Whistle##118352
kill Thundercall##87102 |q 36979/1 |goto Nagrand D/0 90.6,23.6
only if haveq(36979)
step
_Use_ your Icehoof-In-Training Whistle |use Icehoof-In-Training Whistle##118348
kill Thundercall##87102 |q 36991/1 |goto Nagrand D/0 90.6,23.6
only if haveq(36991)
step
_Use_ your Rocktusk-In-Training Whistle |use Rocktusk-In-Training Whistle##118351
kill Thundercall##87102 |q 37001/1 |goto Nagrand D/0 90.6,23.6
only if haveq(37001)
step
_Use_ your Riverwallow-In-Training Whistle |use Riverwallow-In-Training Whistle##118350
kill Thundercall##87102 |q 37010/1 |goto Nagrand D/0 90.6,23.6
only if haveq(37010)
step
_Use_ your Meadowstomper-In-Training Whistle |use Meadowstomper-In-Training Whistle##118349
kill Thundercall##87102 |q 37018/1 |goto Nagrand D/0 90.6,23.6
only if haveq(37018)
step
_Use_ your Snarler-In-Training Whistle |use Snarler-In-Training Whistle##118353
kill Karak the Great Hunter##87105 |q 37027/1 |goto Nagrand D/0 69.6,34.6
only if haveq(37027)
step
_Use_ your Silverpelt-In-Training Whistle |use Silverpelt-In-Training Whistle##118352
kill Karak the Great Hunter##87105 |q 36981/1 |goto Nagrand D/0 69.6,34.6
only if haveq(36981)
step
_Use_ your Icehoof-In-Training Whistle |use Icehoof-In-Training Whistle##118348
kill Karak the Great Hunter##87105 |q 36993/1 |goto Nagrand D/0 69.6,34.6
only if haveq(36993)
step
_Use_ your Rocktusk-In-Training Whistle |use Rocktusk-In-Training Whistle##118351
kill Karak the Great Hunter##87105 |q 37003/1 |goto Nagrand D/0 69.6,34.6
only if haveq(37003)
step
_Use_ your Riverwallow-In-Training Whistle |use Riverwallow-In-Training Whistle##118350
kill Karak the Great Hunter##87105 |q 37012/1 |goto Nagrand D/0 69.6,34.6
only if haveq(37012)
step
_Use_ your Meadowstomper-In-Training Whistle |use Meadowstomper-In-Training Whistle##118349
kill Karak the Great Hunter##87105 |q 37020/1 |goto Nagrand D/0 69.6,34.6
only if haveq(37020)
step
_Use_ your Snarler-In-Training Whistle |use Snarler-In-Training Whistle##118353
kill Gorian Beast-Lasher##87095 |q 37022/1 |goto Nagrand D/0 79.2,71.3
only if haveq(37022)
step
_Use_ your Icehoof-In-Training Whistle |use Icehoof-In-Training Whistle##118348
kill Gorian Beast-Lasher##87095 |q 36988/1 |goto Nagrand D/0 79.2,71.3
only if haveq(36988)
step
_Use_ your Silverpelt-In-Training Whistle |use Silverpelt-In-Training Whistle##118352
kill Gorian Beast-Lasher##87095 |q 36976/1 |goto Nagrand D/0 79.2,71.3
only if haveq(36976)
step
_Use_ your Rocktusk-In-Training Whistle |use Rocktusk-In-Training Whistle##118351
kill Gorian Beast-Lasher##87095 |q 36998/1 |goto Nagrand D/0 79.2,71.3
only if haveq(36998)
step
_Use_ your Riverwallow-In-Training Whistle |use Riverwallow-In-Training Whistle##118350
kill Gorian Beast-Lasher##87095 |q 37007/1 |goto Nagrand D/0 79.2,71.3
only if haveq(37007)
step
_Use_ your Meadowstomper-In-Training Whistle |use Meadowstomper-In-Training Whistle##118349
kill Gorian Beast-Lasher##87095 |q 37015/1 |goto Nagrand D/0 79.2,71.3
only if haveq(37015)
step
_Use_ your Snarler-In-Training Whistle |use Snarler-In-Training Whistle##118353
kill Maimclaw##87107 |q 37028/1 |goto Nagrand D/0 63.8,80.9
only if haveq(37028)
step
_Use_ your Silverpelt-In-Training Whistle |use Silverpelt-In-Training Whistle##118352
kill Maimclaw##87107 |q 36982/1 |goto Nagrand D/0 63.8,80.9
only if haveq(36982)
step
_Use_ your Icehoof-In-Training Whistle |use Icehoof-In-Training Whistle##118348
kill Maimclaw##87107 |q 36994/1 |goto Nagrand D/0 63.8,80.9
only if haveq(36994)
step
_Use_ your Rocktusk-In-Training Whistle |use Rocktusk-In-Training Whistle##118351
kill Maimclaw##87107 |q 37004/1 |goto Nagrand D/0 63.8,80.9
only if haveq(37004)
step
_Use_ your Riverwallow-In-Training Whistle |use Riverwallow-In-Training Whistle##118350
kill Maimclaw##87107 |q 37013/1 |goto Nagrand D/0 63.8,80.9
only if haveq(37013)
step
_Use_ your Meadowstomper-In-Training Whistle |use Meadowstomper-In-Training Whistle##118349
kill Maimclaw##87107 |q 37021/1 |goto Nagrand D/0 63.8,80.9
only if haveq(37021)
step
_Use_ your Snarler-In-Training Whistle |use Snarler-In-Training Whistle##118353
kill Ironbore##87090 |q 37026/1 |goto Nagrand D/0 53.1,77.4
only if haveq(37026)
step
_Use_ your Silverpelt-In-Training Whistle |use Silverpelt-In-Training Whistle##118352
kill Ironbore##87090 |q 36980/1 |goto Nagrand D/0 53.1,77.4
only if haveq(36980)
step
_Use_ your Icehoof-In-Training Whistle |use Icehoof-In-Training Whistle##118348
kill Ironbore##87090 |q 36992/1 |goto Nagrand D/0 53.1,77.4
only if haveq(36992)
step
_Use_ your Rocktusk-In-Training Whistle |use Rocktusk-In-Training Whistle##118351
kill Ironbore##87090 |q 37002/1 |goto Nagrand D/0 53.1,77.4
only if haveq(37002)
step
_Use_ your Riverwallow-In-Training Whistle |use Riverwallow-In-Training Whistle##118350
kill Ironbore##87090 |q 37011/1 |goto Nagrand D/0 53.1,77.4
only if haveq(37011)
step
_Use_ your Meadowstomper-In-Training Whistle |use Meadowstomper-In-Training Whistle##118349
kill Ironbore##87090 |q 37019/1 |goto Nagrand D/0 53.1,77.4
only if haveq(37019)
step
_Use_ your Snarler-In-Training Whistle |use Snarler-In-Training Whistle##118353
kill Moth of Wrath##87089 |q 37024/1 |goto Nagrand D/0 43.6,69.3
only if haveq(37024)
step
_Use_ your Silverpelt-In-Training Whistle |use Silverpelt-In-Training Whistle##118352
kill Moth of Wrath##87089 |q 36978/1 |goto Nagrand D/0 43.6,69.3
only if haveq(36978)
step
_Use_ your Icehoof-In-Training Whistle |use Icehoof-In-Training Whistle##118348
kill Moth of Wrath##87089 |q 36990/1 |goto Nagrand D/0 43.6,69.3
only if haveq(36990)
step
_Use_ your Rocktusk-In-Training Whistle |use Rocktusk-In-Training Whistle##118351
kill Moth of Wrath##87089 |q 37000/1 |goto Nagrand D/0 43.6,69.3
only if haveq(37000)
step
_Use_ your Riverwallow-In-Training Whistle |use Riverwallow-In-Training Whistle##118350
kill Moth of Wrath##87089 |q 37009/1 |goto Nagrand D/0 43.6,69.3
only if haveq(37009)
step
_Use_ your Meadowstomper-In-Training Whistle |use Meadowstomper-In-Training Whistle##118349
kill Moth of Wrath##87089 |q 37017/1 |goto Nagrand D/0 43.6,69.3
only if haveq(37017)
step
#include "Garrison_Large_Building"
talk Keegan Firebeard##86973
turnin Clefthoof Training: Riplash##36985 |only if haveq(36985)
turnin Clefthoof Training: Gezz'ran##36986 |only if haveq(36986)
turnin Clefthoof Training: Bulbapore##36987 |only if haveq(36987)
turnin Clefthoof Training: Cruel Ogres##36988 |only if haveq(36988)
turnin Clefthoof Training: Darkwing Roc##36989 |only if haveq(36989)
turnin Clefthoof Training: Ironbore##36992 |only if haveq(36992)
turnin Clefthoof Training: Moth of Wrath##36990 |only if haveq(36990)
turnin Clefthoof Training: Orc Hunters##36993 |only if haveq(36993)
turnin Clefthoof Training: The Garn##36994 |only if haveq(36994)
turnin Clefthoof Training: Thundercall##36991 |only if haveq(36991)
turnin Clefthoof Training: Great-Tusk##36983 |only if haveq(36983)
turnin Clefthoof Training: Rakkiri##36984 |only if haveq(36984)
turnin Boar Training: Riplash##36995 |only if haveq(36995)
turnin Boar Training: Gezz'ran##36996 |only if haveq(36996)
turnin Boar Training: Bulbapore##36997 |only if haveq(36997)
turnin Boar Training: Cruel Ogres##36998 |only if haveq(36998)
turnin Boar Training: Darkwing Roc##36999 |only if haveq(36999)
turnin Boar Training: Ironbore##37002 |only if haveq(37002)
turnin Boar Training: Moth of Wrath##37000 |only if haveq(37000)
turnin Boar Training: Orc Hunters##37003 |only if haveq(37003)
turnin Boar Training: The Garn##37004 |only if haveq(37004)
turnin Boar Training: Thundercall##37001 |only if haveq(37001)
turnin Elekk Training: Cruel Ogres##37015 |only if haveq(37015)
turnin Elekk Training: Darkwing Roc##37016 |only if haveq(37016)
turnin Elekk Training: Ironbore##37019 |only if haveq(37019)
turnin Elekk Training: Moth of Wrath##37017 |only if haveq(37017)
turnin Elekk Training: Orc Hunters##37020 |only if haveq(37020)
turnin Elekk Training: The Garn##37021 |only if haveq(37021)
turnin Elekk Training: Thundercall##37018 |only if haveq(37018)
step
#include "Garrison_Large_Building"
talk Fanny Firebeard##86974
turnin Wolf Training: Cruel Ogres##37022 |only if haveq(37022)
turnin Wolf Training: Darkwing Roc##37023 |only if haveq(37023)
turnin Wolf Training: Ironbore##37026 |only if haveq(37026)
turnin Wolf Training: Moth of Wrath##37024 |only if haveq(37024)
turnin Wolf Training: Orc Hunters##37027 |only if haveq(37027)
turnin Wolf Training: The Garn##37028 |only if haveq(37028)
turnin Wolf Training: Thundercall##37025 |only if haveq(37025)
turnin Talbuk Training: Riplash##36973 |only if haveq(36973)
turnin Talbuk Training: Gezz'ran##36974 |only if haveq(36974)
turnin Talbuk Training: Bulbapore##36975 |only if haveq(36975)
turnin Talbuk Training: Cruel Ogres##36976 |only if haveq(36976)
turnin Talbuk Training: Darkwing Roc##36977 |only if haveq(36977)
turnin Talbuk Training: Ironbore##36980 |only if haveq(36980)
turnin Talbuk Training: Moth of Wrath##36978 |only if haveq(36978)
turnin Talbuk Training: Orc Hunters##36981 |only if haveq(36981)
turnin Talbuk Training: The Garn##36982 |only if haveq(36982)
turnin Talbuk Training: Thundercall##36979 |only if haveq(36979)
turnin Talbuk Training: Great-Tusk##36971 |only if haveq(36971)
turnin Talbuk Training: Rakkiri##36972 |only if haveq(36972)
turnin Riverbeast Training: Gezz'ran##37005 |only if haveq(37005)
turnin Riverbeast Training: Bulbapore##37006 |only if haveq(37006)
turnin Riverbeast Training: Cruel Ogres##37007 |only if haveq(37007)
turnin Riverbeast Training: Darkwing Roc##37008 |only if haveq(37008)
turnin Riverbeast Training: Ironbore##37011 |only if haveq(37011)
turnin Riverbeast Training: Moth of Wrath##37009 |only if haveq(37009)
turnin Riverbeast Training: Orc Hunters##37012 |only if haveq(37012)
turnin Riverbeast Training: The Garn##37013 |only if haveq(37013)
turnin Riverbeast Training: Thundercall##37010 |only if haveq(37010)
|next "start" |only if not achieved(9539)
|next "end"|only if achieved(9539)
step
label "end"
Congratulations, you have _earned_ the Intro to Husbandry Achievement! |only if achieved(9538)
Congratulations, you have _earned_ the _Master of Mounts_ Achievement! |only if achieved(9526)
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Buildings\\Master Trapper",{
achieveid={9565},
patch='60001',
description="\nPlace 125 Work Orders at the Barn by trapping creatures in the world.",
},[[
step
This achievement _requires_ a level 1 Barn
Barn work orders _require you to trap_ Clefthooves, Elekks, Talbuks, Wolves, Riverbeasts, or Boars using the provided Iron Trap
#include "Garrison_Medium_Building"
_Place_ #125# work orders at the Barn |achieve 9565
step
Congratulations, you have _earned_ the Master Trapper Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Buildings\\More Plots",{
achieveid={9545},
patch='60001',
author="support@zygorguides.com",
keywords={"More","Plots","Garrison"},
description="\nThis guide will walk you through completing the \"More Plots\" Achievement.",
},[[
step
Complete the Tanaan Jungle (90) Storyline |complete completedq(34575)
Click here to load the Tanaan Jungle Leveling gudie |confirm |next "Leveling Guides\\Draenor (10-50)\\Tanaan Jungle (40-50)"
step
Be sure to save up _2200 Garrison Resources_
|tip You will need 200 Garrison Resources to upgrade your Garrison to Level 2.
confirm |q 36592 |future
step
talk Prophet Velen##79206
accept Finding a Foothold##34582 |goto Shadowmoon Valley D/0 26.98,8.09
step
Follow the path |goto 27.4,13.5 < 10
Accompany Prophet Velen to Lunarfall Ruins |q 34582/1 |goto 28.9,16.3
step
talk Vindicator Maraad##79470
turnin Finding a Foothold##34582 |goto 28.80,16.22
accept For the Alliance!##34583 |goto 28.80,16.22
step
clicknpc Alliance Banner##120954
|tip It's a large wooden T-shaped banner with an Alliance logo in the center of it.
Plant the Alliance Banner |q 34583/1 |goto 29.04,16.15
step
talk Baros Alexston##79243
turnin For the Alliance!##34583 |goto 29.05,16.22
|tip You will not be able to turn this quest in until he walks around and says his dalogue for a few moments.
accept Looking for Lumber##34584 |goto 29.05,16.22
accept Ravenous Ravens##34616 |goto 29.05,16.22
stickystart "ravenousravens"
step
click Tree Marking##230527
|tip They look like wooden poles with white flags on them planted in the ground around this area.
Mark #8# Trees for Lumberjacks |q 34584/1 |goto 29.87,18.87
step
label "ravenousravens"
kill 6 Lunarfall Raven##82037 |q 34616/1 |goto 29.78,18.86
step
talk Baros Alexston##79243
turnin Looking for Lumber##34584 |goto 29.04,16.21
turnin Ravenous Ravens##34616 |goto 29.04,16.21
step
talk Yrel##79567
accept Quakefist##34585 |goto 28.92,16.39
step
Follow the path |goto 30.0,21.0 < 10 |walk
kill Quakefist##81360 |q 34585/1 |goto 30.14,21.80
step
Follow the path |goto 29.9,20.9 < 10 |walk
talk Yrel##79567
turnin Quakefist##34585 |goto 28.91,16.38
step
talk Baros Alexston##79243
accept Establish Your Garrison##34586 |goto 29.05,16.20
step
talk Baros Alexston##79243
Tell him _"We have everything we need. It's time to build the garrison."_
Speak With Baros to Build Your Garrison |q 34586/1 |goto 29.05,16.22
step
Enter the doorway |goto Lunarfall/0 40.8,45.4 < 10 |walk
#include "Garrison_BAlexston"
turnin Establish Your Garrison##34586 |goto 41.31,49.25
step
#include "Garrison_BAlexston"
accept Keeping it Together##35176 |goto 41.31,49.25
accept Ship Salvage##35166 |goto 41.31,49.25
step
#include "Garrison_Brightstone"
Tell her _"Time to get back to work."_
Speak With Assistant Brightstone About Her Work Ethic |q 35176/1 |goto 44.81,53.43
step
click Garrison Cache##236916
|tip It looks like a wooden crate bearing an Alliance logo sitting next to a small pile of logs.
Check the Garrison Cache |q 35176/3 |goto 49.19,43.59
step
Go through the doorway |goto 40.9,45.5 < 10 |walk
#include "Garrison_Shelly"
Tell her _"Gather Shelly's report."_
Gather Shelly's Report |q 35176/2 |goto 32.53,34.43
step
Go through the doorway |goto 40.8,45.4 < 10 |walk
#include "Garrison_BAlexston"
turnin Keeping it Together##35176 |goto 41.31,49.22
step
#include "Garrison_Maraad"
accept Pale Moonlight##35174 |goto 44.06,53.40
stickystart "paledevourers"
stickystart "drudgeboatsalvage"
step
Go through the doorway |goto 40.9,45.5 < 10 |walk
Follow the path |goto 21.4,38.4 < 20 |only if walking
kill Gnaw Bloodseeker##81670 |q 35174/1 |goto Shadowmoon Valley D/0 25.7,5.7
step
label "paledevourers"
kill 8 Pale Devourer##79205 |q 35174/2 |goto 26.55,8.76
step
label "drudgeboatsalvage"
click Drudgeboat Salvage##231851
|tip They look like half-buried wooden barrels on the ground around this area.
collect 15 Drudgeboat Salvage##112696 |q 35166/1 |goto 28.19,6.80
You can find more around here |goto 27.1,6.4
step
Follow the path |goto 27.2,14.5 < 20 |only if walking
Go through the doorway |goto Lunarfall/0 40.8,45.4 < 20 |walk
#include "Garrison_BAlexston"
turnin Ship Salvage##35166 |goto 41.20,49.29
step
#include "Garrison_Maraad"
turnin Pale Moonlight##35174 |goto 44.09,53.44
step
#include "Garrison_BAlexston"
accept Build Your Barracks##34587 |goto 41.20,49.39
step
click Garrison Blueprint: Barracks##231855
|tip It looks like a white unrolled scroll laying flat on the ground.
Find the Blueprints |q 34587/1 |goto 45.42,40.59
step
Use Garrison Blueprint: Barracks, Level 1 |use Garrison Blueprint: Barracks, Level 1##111956
Learn the Blueprints |q 34587/2 |goto 45.56,41.08
step
#include "Garrison_ArchitectTable"
Use the Architect Table
|tip It looks like a wooden artist workstation.
While using the table, _drag the Barracks_ to the _"Large Empty Plot"_
Build Your Barracks |q 34587/3 |goto 41.22,48.96
step
click Finalize Garrison Plot##236262
|tip It looks like a huge floating white scroll.
Finalize Your Plot |q 34587/4 |goto 44.62,44.11
step
#include "Garrison_Maraad"
turnin Build Your Barracks##34587 |goto 44.12,53.25
accept Qiana Moonshadow##34646 |goto 44.12,53.25
step
Follow the path |goto 61.0,85.0 < 30 |only if walking
talk Qiana Moonshadow##79446
Speak With Qiana Moonshadow |q 34646/1 |goto Shadowmoon Valley D/0 29.94,29.21
step
Follow the path |goto 27.6,31.2 < 30 |only if walking
Follow the path |goto 62.4,89.4 < 20 |only if walking
Go through the doorway |goto 49.6,63.9 < 10 |only if walking
Enter the building |goto 42.2,53.1 < 10 |walk
#include "Garrison_QMoonshadow"
turnin Qiana Moonshadow##34646 |goto 40.48,53.99
step
#include "Garrison_LtThorn"
accept Delegating on Draenor##34692 |goto 40.29,53.76
step
#include "Garrison_CommandTable"
Click the _Killing the Corrupted_ mission
Assign _Qiana Moonshadow_ to the mission and start it
Use the Command Table |q 34692/1 |goto 40.47,53.53
step
#include "Garrison_LtThorn"
turnin Delegating on Draenor##34692 |goto 40.23,53.58
step
#include "Garrison_Yrel"
accept A Hero's Welcome##33075 |goto 47.11,51.05
step
Find Samaara at Embaari Village |q 33075/1 |goto Shadowmoon Valley D/0 45.67,38.84
step
talk Samaara##75005
turnin A Hero's Welcome##33075 |goto 46.04,38.92
accept Dark Enemies##33765 |goto 46.04,38.92
step
talk Efee##80196
accept Think of the Children!##33070 |goto 46.64,37.74
step
talk Vindicator Tenuum##74343
accept Closing the Door##33905 |goto 46.65,37.29
stickystart "voidmancers"
step
kill Shadowmoon Portalmaster##80181+
Close #3# Void Portals |q 33905/1 |goto 47.53,34.45
You can find another portal here |goto 48.4,33.4
You can also find another here |goto 48.9,31.8
step
talk Hakaam##62769
Save Hakaam |q 33070/1 |goto 48.98,30.89
step
Follow the path |goto 49.4,32.0 < 20 |only if walking
Follow the path |goto 51.2,31.7 < 20 |only if walking
talk Ariaana##71502
accept In Need of a Hero##33813 |goto 52.04,32.68
step
click Draenei Bucket##230883 |goto 51.8,32.5 < 10
|tip They look like small buckets of water on the ground around a fountain.
collect Draenei Bucket##111908 |n
Use the Draenei Bucket |use Draenei Bucket##111908
|tip Use the bucket on the blue fires.
Douse the Bookshelf Fire |q 33813/1 |goto 52.04,32.83
Douse the Floor Fire |q 33813/2 |goto 52.04,32.83
Douse the Table Fire |q 33813/3 |goto 52.04,32.83
Get more Draenei Buckets here |goto 51.8,32.5
step
talk Ariaana##71502
turnin In Need of a Hero##33813 |goto 52.04,32.68
step
talk Ariaana##71502
Save Ariaana |q 33070/3 |goto 52.04,32.68
step
talk Rastaak##64224
Save Rastaak |q 33070/2 |goto 51.94,35.99
step
label "voidmancers"
kill 8 Shadowmoon Voidmancer##80162 |q 33765/1 |goto 52.48,34.20
step
Follow the path |goto 47.6,35.8 < 20 |only if walking
Follow the path |goto 47.5,39.7 < 20 |only if walking
talk Prophet Velen##74043
turnin Dark Enemies##33765 |goto 49.12,38.51
turnin Think of the Children!##33070 |goto 49.12,38.51
turnin Closing the Door##33905 |goto 49.12,38.51
accept Shadows Awaken##34019 |goto 49.12,38.51
step
Confront Ner'zhul |q 34019/1
kill Karnoth##75043 |q 34019/2 |goto 49.43,36.87
|tip He will drop an item for each crafting profession you have that will start a quest for that profession. Gathering and Secondary professions do not get a quest item.
step
talk Prophet Velen##74043
turnin Shadows Awaken##34019 |goto 49.30,37.40
accept Into Twilight##33072 |goto 49.30,37.40
step
talk Prophet Velen##79043
turnin Into Twilight##33072 |goto 40.54,54.92
accept The Clarity Elixir##33076 |goto 40.53,54.89
step
talk Rangari Veka##73425
accept Going Undercover##33080 |goto 40.58,54.84
step
talk Sylene##73106
Tell her _"I need a Shadowmoon orc illusion."_
Obtain an Orc Disguise From Sylene |q 33080/1 |goto 40.65,54.61
step
click Pristine Star Lily##223824
|tip It's a large white flower inside a tree.
collect Pristine Star Lily##111024 |q 33076/3 |goto 47.33,52.09
stickystart "clarityelixir"
step
kill Echidnian Hydra##79020+
collect 3 Engorged Heart##105716 |q 33076/2 |goto 45.26,50.96
step
label "clarityelixir"
kill Frenzied Swamplighter##75471+
collect 6 Swamplighter Dust##104350 |q 33076/1 |goto 45.26,50.96
step
Follow the path |goto 39.3,53.7 < 20 |only if walking
Follow the path |goto 38.0,55.3 < 20 |only if walking
Follow the path |goto 37.2,52.4 < 20 |only if walking
talk Prophet Velen##79043
turnin The Clarity Elixir##33076 |goto 35.27,49.12
accept The Fate of Karabor##33059 |goto 35.27,49.12
step
use Clarity Elixir##111591
Drink the Clarity Elixir |q 33059/1 |goto 35.28,49.12
step
Enter the Scenario |goto 79.0,46.6 < 20 |c |q 33059
step
Follow Prophet Velen |scenariogoal 24541 |goto 79.9,46.6 |q 33059
scenariostage 1
step
kill Krull##77767 |scenariogoal 24539 |goto 80.0,46.6 |q 33059
scenariostage 2
step
Witness Commander Vorka's Arrival |scenariogoal 24542 |q 33059
scenariostage 3
step
talk Prophet Velen##79522
Tell him _"Prophet, we're being overrun!"_
Speak to Velen on the Karabor Stairs |scenariogoal 24543 |goto 79.2,46.6 |q 33059
scenariostage 4
step
Watch the dialogue
Witness the Fate of Karabor |q 33059/2 |goto 79.2,46.6 |q 33059
step
Follow the path |goto 37.5,54.5 < 20 |only if walking
talk Prophet Velen##79043
turnin The Fate of Karabor##33059 |goto 40.52,54.91
step
Enter through the gates |goto 38.6,60.5 < 20 |walk
use Sylene's Amulet of Illusion##107076
|tip Use Sylene's Amulet if you lose your disguise. Also, Void Wolves can see through your disguise, so be careful around them.
Gain the _Shadowmoon Orc Disguise_ |havebuff 236452 |q 33080 |or
|tip You will only complete this goal if you're a male character.
Gain the _Shadowmoon Orc Disguise_ |havebuff 236451 |q 33080 |or
|tip You will only complete this goal if you're a female character.
clicknpc Explosives##74811
|tip It looks like a yellow bomb with bumps all over it, sitting on the ground.
Plant Explosives at the Supply Hut |q 33080/2 |goto 37.17,59.25
step
Enter the building |goto 36.7,61.3 < 10 |walk
use Sylene's Amulet of Illusion##107076
|tip Use Sylene's Amulet if you lose your disguise. Also, Void Wolves can see through your disguise, so be careful around them.
Gain the _Shadowmoon Orc Disguise_ |havebuff 236452 |q 33080 |or
|tip You will only complete this goal if you're a male character.
Gain the _Shadowmoon Orc Disguise_ |havebuff 236451 |q 33080 |or
|tip You will only complete this goal if you're a female character.
clicknpc Explosives##74811
|tip It looks like a yellow bomb with bumps all over it, sitting on the ground.
Plant Explosives at the Main Lodge |q 33080/3 |goto 36.37,61.44
step
use Sylene's Amulet of Illusion##107076
|tip Use Sylene's Amulet if you lose your disguise. Also, Void Wolves can see through your disguise, so be careful around them.
Gain the _Shadowmoon Orc Disguise_ |havebuff 236452 |q 33080 |or
|tip You will only complete this goal if you're a male character.
Gain the _Shadowmoon Orc Disguise_ |havebuff 236451 |q 33080 |or
|tip You will only complete this goal if you're a female character.
_Head_ through the gates to the Chieftains' seat |goto 37.8,62.6 < 20 |walk
clicknpc Explosives##74811
|tip It looks like a yellow bomb with bumps all over it, sitting on the ground behind a huge stone.
Plant Explosives at the Chieftain's Seat |q 33080/4 |goto 39.1,62.9
step
use Sylene's Amulet of Illusion##107076
|tip Use Sylene's Amulet if you lose your disguise. Also, Void Wolves can see through your disguise, so be careful around them.
Gain the _Shadowmoon Orc Disguise_ |havebuff 236452 |q 33080 |or
|tip You will only complete this goal if you're a male character.
Gain the _Shadowmoon Orc Disguise_ |havebuff 236451 |q 33080 |or
|tip You will only complete this goal if you're a female character.
clicknpc Explosives##74811
|tip It looks like a yellow bomb with bumps all over it, sitting on the ground.
Plant Explosives at the Training Pit |q 33080/5 |goto 36.5,65.5
step
talk Yrel##74877
turnin Going Undercover##33080 |goto 34.22,63.24
accept Escape From Shaz'gul##33081 |goto 34.22,63.24
step
talk Yrel##74877
|tip Any dialogue option will work.
Inspire Yrel |q 33081/1 |goto 34.22,63.24
step
Watch the dialogue
|tip Follow and protect Yrel as she runs.
Escape Shaz'gul With Yrel |q 33081/2
step
talk Yrel##74877
turnin Escape From Shaz'gul##33081 |goto 40.60,54.97
step
talk Scout Valdez##81152
accept Fast Expansion##33814 |goto 40.65,54.88
step
#include "Garrison_BAlexston"
turnin Fast Expansion##33814
accept Bigger is Better##36592
step
#include "Garrison_ArchitectTable"
Click your Town Hall
Click _Upgrade_
Upgrade your Garrison to Level 2 |complete garrisonlvl() >= 2
step
_Congratulations!_
You have earned the _More Plots_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Buildings\\Movin' On Up",{
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
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Buildings\\Nemesis: Death Stalker",{
achieveid={9517},
patch='60001',
description="\nThis guide will help you acquire the Nemesis: Death Stalker achievement.",
},[[
step
talk Kuros##86677 |tip He is located in your Gladiator's Sanctum.
accept Nemesis: Death Stalker##36960 |goto Lunarfall/0 44.8,50.6
|tip You must have a level 2 or level 3 Gladiator's Sanctum built in your garrison.
|tip You can only accept one Nemesis quest at a time.
step
_Nemesis: Death Stalker_ requires you to kill 500 Undead players in Draenor
|tip Ashran is the most viable place to earn this achievement. Kills in battlegrounds will not give credit.
Queue for Ashran by going to the northern courtyard of Stormshield and accepting the invitation that pops up |goto Ashran/0 44.4,75.8
|tip The queue often takes up to an hour. Be sure to allot at least a couple of hours of time.
|tip Stay with the main group and damage as many Undead enemies as you can.
Kill 500 Undead players |q 36960/1 |goto Ashran/0 49.41,49.89
step
talk Kuros##86677
|tip He is located in your Gladiator's Sanctum.
turnin Nemesis: Death Stalker##36960 |goto Lunarfall/0 44.8,50.6
step
Congratulations, you have earned _Nemesis: Death Stalker_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Buildings\\Nemesis: Huojin's Fall",{
achieveid={9520},
patch='60001',
description="\nThis guide will help you acquire the Nemesis: Huojin's Fall achievement.",
},[[
step
talk Kuros##86677
|tip He is located in your Gladiator's Sanctum.
accept Nemesis: Huojin's Fall##36968 |goto Lunarfall/0 44.8,50.6
|tip You must have a level 2 or level 3 Gladiator's Sanctum built in your garrison.
|tip You can only accept one Nemesis quest at a time.
step
_Nemesis: Huojin's Fall_ requires you to kill 500 Pandaren players in Draenor
|tip Ashran is the most viable place to earn this achievement. Kills in battlegrounds will not give credit.
Queue for Ashran by going to the northern courtyard of Stormshield and accepting the invitation that pops up |goto Ashran/0 44.4,75.8
|tip The queue often takes up to an hour. Be sure to allot at least a couple of hours of time.
|tip Stay with the main group and damage as many Pandaren enemies as you can.
Kill 500 Pandaren players |q 36968/1 |goto Ashran/0 49.41,49.89
step
talk Kuros##86677
|tip He is located in your Gladiator's Sanctum.
turnin Nemesis: Huojin's Fall##36968 |goto Lunarfall/0 44.8,50.6
step
Congratulations, you have earned _Nemesis: Huojin's Fall_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Buildings\\Nemesis: Killer of Kezan",{
achieveid={9518},
patch='60001',
description="\nThis guide will help you acquire the Nemesis: Killer of Kezan achievement.",
},[[
step
talk Kuros##86677
|tip He is located in your Gladiator's Sanctum.
accept Nemesis: Killer of Kezan##36970 |goto Lunarfall/0 44.8,50.6
|tip You must have a level 2 or level 3 Gladiator's Sanctum built in your garrison.
|tip You can only accept one Nemesis quest at a time.
step
_Nemesis: Killer of Kezan_ requires you to kill 500 Goblin players in Draenor
|tip Ashran is the most viable place to earn this achievement. Kills in battlegrounds will not give credit.
Queue for Ashran by going to the northern courtyard of Stormshield and accepting the invitation that pops up |goto Ashran/0 44.4,75.8
|tip The queue often takes up to an hour. Be sure to allot at least a couple of hours of time.
|tip Stay with the main group and damage as many Goblin enemies as you can.
Kill 500 Goblin players |q 36970/1 |goto Ashran/0 49.41,49.89
step
talk Kuros##86677
|tip He is located in your Gladiator's Sanctum.
turnin Nemesis: Killer of Kezan##36970 |goto Lunarfall/0 44.8,50.6
step
Congratulations, you have earned _Nemesis: Killer of Kezan_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Buildings\\Nemesis: Orcslayer",{
achieveid={9519},
patch='60001',
description="\nThis guide will help you acquire the Nemesis: Orcslayer achievement.",
},[[
step
talk Kuros##86677
|tip He is located in your Gladiator's Sanctum.
accept Nemesis: Orcslayer##36964 |goto Lunarfall/0 44.8,50.6
|tip You must have a level 2 or level 3 Gladiator's Sanctum built in your garrison.
|tip You can only accept one Nemesis quest at a time.
step
_Nemesis: Orcslayer_ requires you to kill 500 Orc players in Draenor
|tip Ashran is the most viable place to earn this achievement. Kills in battlegrounds will not give credit.
Queue for Ashran by going to the northern courtyard of Stormshield and accepting the invitation that pops up |goto Ashran/0 44.4,75.8
|tip The queue often takes up to an hour. Be sure to allot at least a couple of hours of time.
|tip Stay with the main group and damage as many Orc enemies as you can.
Kill 500 Orc players |q 36964/1 |goto Ashran/0 49.41,49.89
step
talk Kuros##86677
|tip He is located in your Gladiator's Sanctum.
turnin Nemesis: Orcslayer##36964 |goto Lunarfall/0 44.8,50.6
step
Congratulations, you have earned _Nemesis: Orcslayer_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Buildings\\Nemesis: Slayer of Sin'dorei",{
achieveid={9516},
patch='60001',
description="\nThis guide will help you acquire the Nemesis: Slayer of Sin'dorei achievement.",
},[[
step
talk Kuros##86677
|tip He is located in your Gladiator's Sanctum.
accept Nemesis: Slayer of Sin'dorei##36958 |goto Lunarfall/0 44.8,50.6
|tip You must have a level 2 or level 3 Gladiator's Sanctum built in your garrison.
|tip You can only accept one Nemesis quest at a time.
step
_Nemesis: Slayer of Sin'dorei_ requires you to kill 500 Blood Elf players in Draenor
|tip Ashran is the most viable place to earn this achievement. Kills in battlegrounds will not give credit.
Queue for Ashran by going to the northern courtyard of Stormshield and accepting the invitation that pops up |goto Ashran/0 44.4,75.8
|tip The queue often takes up to an hour. Be sure to allot at least a couple of hours of time.
|tip Stay with the main group and damage as many Blood Elf enemies as you can.
Kill 500 Blood Elf players |q 36958/1 |goto Ashran/0 49.41,49.89
step
talk Kuros##86677
|tip He is located in your Gladiator's Sanctum.
turnin Nemesis: Slayer of Sin'dorei##36958 |goto Lunarfall/0 44.8,50.6
step
Congratulations, you have earned _Nemesis: Slayer of Sin'dorei_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Buildings\\Nemesis: The Butcher",{
achieveid={9521},
patch='60001',
description="\nThis guide will help you acquire the Nemesis: The Butcher achievement.",
},[[
step
talk Kuros##86677
|tip He is located in your Gladiator's Sanctum.
accept Nemesis: The Butcher##36962 |goto Lunarfall/0 44.8,50.6
|tip You must have a level 2 or level 3 Gladiator's Sanctum built in your garrison.
|tip You can only accept one Nemesis quest at a time.
step
_Nemesis: The Butcher_ requires you to kill 500 Tauren players in Draenor
|tip Ashran is the most viable place to earn this achievement. Kills in battlegrounds will not give credit.
Queue for Ashran by going to the northern courtyard of Stormshield and accepting the invitation that pops up |goto Ashran/0 44.4,75.8
|tip The queue often takes up to an hour. Be sure to allot at least a couple of hours of time.
|tip Stay with the main group and damage as many Tauren enemies as you can.
Kill 500 Tauren players |q 36962/1 |goto Ashran/0 49.41,49.89
step
talk Kuros##86677
|tip He is located in your Gladiator's Sanctum.
turnin Nemesis: The Butcher##36962 |goto Lunarfall/0 44.8,50.6
step
Congratulations, you have earned _Nemesis: The Butcher_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Buildings\\Nemesis: Troll Hunter",{
achieveid={9522},
patch='60001',
description="\nThis guide will help you acquire the Nemesis: Troll Hunter achievement.",
},[[
step
talk Kuros##86677
|tip He is located in your Gladiator's Sanctum.
accept Nemesis: Troll Hunter##36966 |goto Lunarfall/0 44.8,50.6
|tip You must have a level 2 or level 3 Gladiator's Sanctum built in your garrison.
|tip You can only accept one Nemesis quest at a time.
step
_Nemesis: Troll Hunter_ requires you to kill 500 Troll players in Draenor
|tip Ashran is the most viable place to earn this achievement. Kills in battlegrounds will not give credit.
Queue for Ashran by going to the northern courtyard of Stormshield and accepting the invitation that pops up |goto Ashran/0 44.4,75.8
|tip The queue often takes up to an hour. Be sure to allot at least a couple of hours of time.
|tip Stay with the main group and damage as many Troll enemies as you can.
Kill 500 Troll players |q 36966/1 |goto Ashran/0 49.41,49.89
step
talk Kuros##86677
|tip He is located in your Gladiator's Sanctum.
turnin Nemesis: Troll Hunter##36966 |goto Lunarfall/0 44.8,50.6
step
Congratulations, you have earned _Nemesis: Troll Hunter_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Buildings\\Salvaging Pays Off",{
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
accept Garrison Campaign: War Council##38253 |goto Lunarfall/0 32.0,31.9
|tip You will automatically accept this quest.
step
talk King Varian Wrynn##92219
turnin Garrison Campaign: War Council##38253 |goto 32.0,31.9
accept We Need a Shipwright##38257 |goto 32.0,31.9
step
talk Dungar Longdrink##81103  |goto 48.0,49.8
Tell him _"I am needed urgently at the Iron Docks."_
Travel to the Iron Docks |goto Gorgrond/0 52.9,9.6 < 100 |noway |c |q 38257
step
accept Clearing the Docks##37921
|tip You will accept this quest automatically when you arrive at the Iron Docks.
step
talk Exarch Naielle##90180
turnin We Need a Shipwright##38257 |goto 52.6,9.8
accept Derailment##38254 |goto 52.6,9.8
stickystart "clearing_the_docks"
step
Follow the path |goto 51.7,13.2 < 30 |only if walking
click Detonator##240518
|tip It's a wooden box with a handle on top of it on the ground next to a wall.
collect Detonator##122516 |q 38254/2 |goto 51.4,14.3
step
Follow the path |goto 50.1,14.3 < 30 |only if walking
click Explosive Charges##240517
|tip It looks like a big basket full of metal bombs on the ground between 2 huge metal loops.
collect Explosive Charges##122515 |q 38254/1 |goto 49.8,12.7
step
label "clearing_the_docks"
kill Iron Grunt##91599+, Iron Rearguard##89952+, Ogron Lifter##89951+
|tip Kill any mobs you see.
clicknpc Iron Siege Ram##93174+
|tip Destroy siege weapons.
clicknpc Iron Horde Transport##93147+
|tip Sink transports. They are boats floating next to walls in the water.
kill Felsworn Prophet##91596+
Disrupt the Iron Horde Evacuation |q 37921/1 |goto 52.3,11.0
|tip You will see a progress bar in your quest tracking area.
step
Follow the path |goto 52.9,17.8 < 30 |only if walking
talk Exarch Yrel##90177
turnin Derailment##38254 |goto 56.8,17.2
accept The Train Gang##38255 |goto 56.8,17.2
step
clicknpc Explosive Charge##93209
|tip It looks like a yellow spiked bomb sitting up on the train.
Plant the First Explosive |q 38255/1 |goto 56.9,16.9
step
clicknpc Explosive Charge##93209
|tip It looks like a yellow spiked bomb sitting up on the train.
Plant the Second Explosive |q 38255/2 |goto 56.9,17.2
step
clicknpc Explosive Charge##93209
|tip It looks like a yellow spiked bomb sitting up on the train.
Plant the Third Explosive |q 38255/3 |goto 56.9,17.4
step
click Detonator##240518
|tip It's a wooden box with a handle on top of it, on the ground.
Blow Open the Train |q 38255/4 |goto 56.8,17.2
step
Watch the dialogue
Recruit Solog Roark |q 38255/5 |goto 56.8,17.2
step
talk Solog Roark##91242
turnin The Train Gang##38255 |goto 56.8,17.2
accept Hook, Line, and... Sink Him!##38256 |goto 56.8,17.2
step
Follow the path |goto 52.9,17.8 < 30 |only if walking
click Blackrock Grapple##241130
|tip It looks like a metal cannon pointing upward.
Grapple to Knar's Bunker |q 38256/1 |goto 50.7,16.1
step
Enter the building |goto 50.6,17.0 < 20 |walk
kill Admiral Knar##92191
collect Roark's Shipyard Blueprints##123867 |q 38256/2 |goto 50.6,17.6
step
talk Solog Roark##91242
turnin Hook, Line, and... Sink Him!##38256 |goto 50.6,16.7
accept Nothing Remains##38258 |goto 50.6,16.7
step
talk King Varian Wrynn##92219
turnin Nothing Remains##38258 |goto Lunarfall/0 32.0,31.9
accept All Hands on Deck##38259 |goto 32.0,31.9
step
Go through the doorway |goto 26.8,48.9 < 20 |walk
talk Solog Roark##91242
turnin All Hands on Deck##38259 |goto Shadowmoon Valley D/0 27.5,11.3
step
_Congratulations!_
You have earned the _Set Sail!_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Buildings\\Stay Awhile and Listen",{
achieveid={9703},
patch='60002',
description="\nComplete all of the Inn quests.",
},[[
step
#include "Garrison_Inn_Quests"
step
Congratulations, you have _earned_ the Stay Awhile and Listen Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Buildings\\Terrific Technology",{
achieveid={9527},
patch='60001',
description="\nThis guide will walk you through using at least 6 of the inventions available at the Workshop specified below.",
},[[
step
This achievement is fun and pretty easy to obtain, but it will take some time to accomplish
It cannot be achuieved without a level 2 Gnomish Gearworks to open up enough inventions to complete it
If certain items are not available to you today you may have to wait until tomorrow to try for them again
Always make sure to take everything off the table at the end of the day to make sure nothing small spawned under other inventions
confirm
step
label "rooster"
#include "Garrison_Large_Building"
click Robo-Rooster##235078
collect Robo-Rooster##119158
_Click here_ if the Robo-Rooster is not available |confirm |next "grenades"
only if not achieved(9527,1)
step
talk Lieutenant Thorn##79953
To avoid the 10 minute duration of the Robo-Rooster simply Queue and enter the Proving Grounds at your command table. Exit the Proving Groudns and use the Rooster again.
use Robo-Rooster##119158 |tip It has ten charges so you'll need to pick this up this twice.
Summon a Robo-Rooster #20# times |achieve 9527/1 |goto Lunarfall/0 28.6,34.7
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
Blast enemies #50# times with the Sticky Grenade Launcher |achieve 9527/2 |goto Lunarfall/0 67.7,33.7
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
Punch #50# enemies in the face! |achieve 9527/3 |goto Lunarfall/0 67.7,33.7
_Click here_ if there isn't another Pneumatic Power Gauntlet available |confirm |next "skypds"
only if not achieved(9527,3)
step
label "skypds"
#include "Garrison_Large_Building"
click "Skyterror" Personal Delivery System##233900
collect "Skyterror" Personal Delivery System##114246
_Click here_ if the "Skyterror" Personal Delivery System is not available |confirm |next "painter"
only if not achieved(9527,5)
step
You can use this anywhere, but to use it quickly and safely for the sake of the achievement we'll do this under a roof to avoid damage
#include "Garrison_Small_Building"
Stand inside one of your profession buildings and use the Skyterror PDS |use "Skyterror" Personal Delivery System##114246
|tip This item has three charges so you'll need to pick this up four times.
Take flight #10# times |achieve 9527/5
_Click here_ if there isn't another "Skyterror" Personal Delivery System available |confirm |next "painter"
only if not achieved(9527,5)
step
label "painter"
#include "Garrison_Large_Building"
click N.U.K.U.L.A.R. Target Painter##235126
collect N.U.K.U.L.A.R. Target Painter##115530
_Click here_ if the N.U.K.U.L.A.R. Target Painter is not available |confirm |next "jetpack"
only if not achieved(9527,9)
step
This item can be used anywhere, but it has a one hour cooldown so doing this one will be time consuming.
use N.U.K.U.L.A.R. Target Painter##115530
|tip This item has two charges so you'll need to pick this up three times.
Nuclear fallout caused #5# times |achieve 9527/9 |goto Lunarfall/0 43.4,51.1
_Click here_ if there isn't another N.U.K.U.L.A.R. Target Painter available |confirm |next "jetpack"
only if not achieved(9527,9)
step
label "jetpack"
#include "Garrison_Large_Building"
click GG-117 Micro-Jetpack##233901
|tip It looks like two large rockets tied together with rope.
collect GG-117 Micro-Jetpack##114244
_Click here_ if the GG-117 Micro-Jetpack is not available |confirm |next "rooster"
only if not achieved(9527,6)
step
This item can be used anywhere so for the sake of the acheivement just use it in your garrison
Equip your GG-117 Micro-Jetpack #10# times |use GG-117 Micro-Jetpack##114244 |achieve 9527/6 |goto Lunarfall/0 42.7,51.2
|tip This item has three charges so you'll need to pick this up four times.
_Click here_ if there isn't another GG-117 Micro-Jetpack |confirm |next "rooster"
only if not achieved(9527,6)
step
Congratulations, you have earned the Terrific Technology Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Buildings\\The Bone Collector",{
achieveid={9495},
patch='60001',
description="\nThis guide will help you acquire the blueprint for Gladiator's Sanctum, Level 3.",
},[[
step
_The Bone Collector_ requires you to kill players in Draenor
|tip You will receive Broken Bones for each player killed.
|tip Ashran is the most viable place to earn this achievement. Kills in battlegrounds will not award Broken Bones.
|tip You must have a level 1 or level 2 Gladiator's Sanctum built in your garrison.
Queue for Ashran by going to the northern courtyard of Stormshield and accepting the invitation that pops up |goto Ashran/0 44.4,75.8
|tip The queue often takes up to an hour. Be sure to allot at least a couple of hours of time.
|tip Stay with the main group and damage as many enemies as you can.
Loot 4,000 Broken Bones |achieve 9495 |goto Ashran/0 49.41,49.89
step
Congratulations, you have earned _The Bone Collector_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Buildings\\The Stable Master",{
condition_end=function() return achieved(9540) end,
achieveid={9539,9540},
patch='60001',
description="\nDefeat all mount-in-training targets in Nagrand while carrying the Garn-Tooth Necklace.",
},[[
step
First thing's first you need to gather the Garn-Tooth Necklace from your Stables
If you haven't finished the Advanced Husbandry achievement also pick up the Black Claw of Sethe |only if not achieved(9539)
collect Garn-Tooth Necklace##118470
|tip The necklace is laying on the ground in front of a wooden barrel at the Stables entrance.
collect Black Claw of Sethe##118469
|tip The claw is laying on the ground in front of a pile of lumber at the Stables entrance. |only if not achieved(9539)
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
kill 6 Gorian Beast-Lasher##87095 |achieve 9540/1 |goto Nagrand D/0 79.2,71.3
step
Each of these whistles can be _used three times per day_ and have a 24 hour cooldown so _make sure you're ready and have the right mount selected!_
_Use_ your Silverpelt-In-Training Whistle |use Silverpelt-In-Training Whistle##119443
_Use_ your Icehoof-In-Training Whistle |use Icehoof-In-Training Whistle##119441
_Use_ your Rocktusk-In-Training Whistle |use Rocktusk-In-Training Whistle##119444
_Use_ your Riverwallow-In-Training Whistle |use Riverwallow-In-Training Whistle##119445
_Use_ your Meadowstomper-In-Training Whistle |use Meadowstomper-In-Training Whistle##119446
_Use_ your Snarler-In-Training Whistle |use Snarler-In-Training Whistle##119442
kill 6 Karak the Great Hunter##87105 |achieve 9540/5 |goto Nagrand D/0 69.6,34.6
step
Each of these whistles can be _used three times per day_ and have a 24 hour cooldown so _make sure you're ready and have the right mount selected!_
_Use_ your Silverpelt-In-Training Whistle |use Silverpelt-In-Training Whistle##119443
_Use_ your Icehoof-In-Training Whistle |use Icehoof-In-Training Whistle##119441
_Use_ your Rocktusk-In-Training Whistle |use Rocktusk-In-Training Whistle##119444
_Use_ your Riverwallow-In-Training Whistle |use Riverwallow-In-Training Whistle##119445
_Use_ your Meadowstomper-In-Training Whistle |use Meadowstomper-In-Training Whistle##119446
_Use_ your Snarler-In-Training Whistle |use Snarler-In-Training Whistle##119442
kill 6 Thundercall##87102 |achieve 9540/3 |goto Nagrand D/0 90.6,23.6
step
Each of these whistles can be _used three times per day_ and have a 24 hour cooldown so _make sure you're ready and have the right mount selected!_
_Use_ your Silverpelt-In-Training Whistle |use Silverpelt-In-Training Whistle##119443
_Use_ your Icehoof-In-Training Whistle |use Icehoof-In-Training Whistle##119441
_Use_ your Rocktusk-In-Training Whistle |use Rocktusk-In-Training Whistle##119444
_Use_ your Riverwallow-In-Training Whistle |use Riverwallow-In-Training Whistle##119445
_Use_ your Meadowstomper-In-Training Whistle |use Meadowstomper-In-Training Whistle##119446
_Use_ your Snarler-In-Training Whistle |use Snarler-In-Training Whistle##119442
kill 6 Maimclaw##87107 |achieve 9540/6 |goto Nagrand D/0 63.8,80.9
step
Each of these whistles can be _used three times per day_ and have a 24 hour cooldown so _make sure you're ready and have the right mount selected!_
_Use_ your Silverpelt-In-Training Whistle |use Silverpelt-In-Training Whistle##119443
_Use_ your Icehoof-In-Training Whistle |use Icehoof-In-Training Whistle##119441
_Use_ your Rocktusk-In-Training Whistle |use Rocktusk-In-Training Whistle##119444
_Use_ your Riverwallow-In-Training Whistle |use Riverwallow-In-Training Whistle##119445
_Use_ your Meadowstomper-In-Training Whistle |use Meadowstomper-In-Training Whistle##119446
_Use_ your Snarler-In-Training Whistle |use Snarler-In-Training Whistle##119442
kill 6 Ironbore##87090 |achieve 9540/4 |goto Nagrand D/0 53.1,77.4
step
Each of these whistles can be _used three times per day_ and have a 24 hour cooldown so _make sure you're ready and have the right mount selected!_
_Use_ your Silverpelt-In-Training Whistle |use Silverpelt-In-Training Whistle##119443
_Use_ your Icehoof-In-Training Whistle |use Icehoof-In-Training Whistle##119441
_Use_ your Rocktusk-In-Training Whistle |use Rocktusk-In-Training Whistle##119444
_Use_ your Riverwallow-In-Training Whistle |use Riverwallow-In-Training Whistle##119445
_Use_ your Meadowstomper-In-Training Whistle |use Meadowstomper-In-Training Whistle##119446
_Use_ your Snarler-In-Training Whistle |use Snarler-In-Training Whistle##119442
kill 6 Moth of Wrath##87089 |achieve 9540/2 |goto Nagrand D/0 43.6,69.3
step
Congratulations, you have _earned_ the _Advanced Husbandry_ Achievement! |only if achieved(9539)
Congratulations, you have _earned_ the _The Stable Master_ Achievement! |only if achieved(9540)
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Buildings\\The Trap Game",{
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
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Buildings\\Trap Superstar",{
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
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Buildings\\Trapper's Delight",{
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
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Buildings\\Upgrading the Mill",{
achieveid={9429},
patch='60001',
description="\nThis guide will walk you through placing 75 Work Orders at the Lumber Mill and completing the quests Legacy of the Ancients and Reduction in Force.",
},[[
step
Routing to Mill |next "first" |only if hasbuilding(41,2) or hasbuilding(138,3)
Routing to End |next "end" |only if default
step
label "first"
kill Petrified Ancient##85199 |goto Gorgrond 43.6,92.6
collect Barkskin Tome##115467 |next "legacy"
_Click here_ if an Ancient is not here. |confirm |next
only if not completedq(36385)
step
kill Petrified Ancient##85199 |goto Gorgrond 41.4,76.4
collect Barkskin Tome##115467 |next "legacy"
_Click here_ if an Ancient is not here. |confirm |next
only if not completedq(36385)
step
kill Petrified Ancient##85199 |goto Gorgrond 53.0,65.4
collect Barkskin Tome##115467 |next "legacy"
_Click here_ if an Ancient is not here. |confirm |next
only if not completedq(36385)
step
kill Petrified Ancient##85199 |goto Gorgrond 49.0,50.0
collect Barkskin Tome##115467 |next "legacy"
_Click here_ if an Ancient is not here. |confirm |next
only if not completedq(36385)
step
kill Petrified Ancient##85199 |goto Gorgrond 50.4,42.2
collect Barkskin Tome##115467 |next "legacy"
_Click here_ if an Ancient is not here. |confirm |next
only if not completedq(36385)
step
kill Petrified Ancient##85199 |goto Gorgrond 41.6,37.6
collect Barkskin Tome##115467 |next "legacy"
_Click here_ if an Ancient is not here. |confirm |next
only if not completedq(36385)
step
kill Petrified Ancient##85199 |goto Gorgrond 57.6,43.2
collect Barkskin Tome##115467 |next "legacy"
_Click here_ if an Ancient is not here. |confirm |next
only if not completedq(36385)
step
kill Petrified Ancient##85199 |goto Gorgrond 61.8,32.2
collect Barkskin Tome##115467 |next "legacy"
_Click here_ if an Ancient is not here. |confirm |next
only if not completedq(36385)
step
kill Petrified Ancient##85199 |goto Gorgrond 70.6,25.6
collect Barkskin Tome##115467 |next "legacy"
_Click here_ if an Ancient is not here. |confirm |next
only if not completedq(36385)
step
kill Petrified Ancient##85199 |goto Gorgrond 73.6,39.4
collect Barkskin Tome##115467 |next "legacy"
_Click here_ if an Ancient is not here. |confirm |next "first"
only if not completedq(36385)
step
label "legacy"
use Barkskin Tome##115467
accept Legacy of the Ancients##36385
step
map Gorgrond
path follow loose; loop on; ants curved; dist 10
path	71.0,30.8	72.8,35.6	73.6,41.2
path	71.2,42.8	69.0,42.4	72.2,39.6
Harvest Medium Timber along the path to spawn Loruk. Comat will automatically initiate so be ready!
kill Loruk the Ancient##85272
collect Twig of Loruk##115478 |q 36385/3
step
map Shadowmoon Valley D
path follow loose; loop on; ants curved; dist 10
path	44.8,72.0	44.2,76.2	44.4,79.0
path	45.8,81.6	46.8,77.0	49.2,78.0
path	49.4,83.6	50.4,74.8	49.2,72.8
path	47.4,72.8
Harvest Medium Timber along the path to spawn Kuruk. Comat will automatically initiate so be ready!
kill Kuruk the Ancient##85271
collect Heart of Kuruk##115476 |q 36385/1
step
map Spires of Arak
path follow loose; loop on; ants curved; dist 10
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
Harvest Medium Timber along the path to spawn Hanuk. Comat will automatically initiate so be ready!
kill Hanuk the Ancient##85273
collect Roots of Hanuk##115480 |q 36385/4
step
map Nagrand D
path follow loose; loop on; ants curved; dist 10
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
Harvest Medium Timber along the path to spawn Hanuk. Comat will automatically initiate so be ready!
kill Autuk the Ancient##85274
collect Trunk of Autuk##115477 |q 36385/2
step
#include "Garrison_Medium_Building"
talk Justin Timberlord##84248
turnin Legacy of the Ancients##36385
step
#include "Garrison_Medium_Building"
talk Weldon Barov##85413
accept Reduction in Force##36448
step
map Shadowmoon Valley D
path follow loose; loop on; ants curved; dist 10
path	33.2,26.0	35.2,22.3	36.1,19.2
path	39.4,19.4	40.3,23.2	41.3,28.9
path	38.6,32.6	32.2,31.7	28.2,30.2
path	31.3,24.7
Approach any Small Timber you see along this path watching out for Alexi and his crew. They will spawn under Small Timber anywhere in the area.
kill Alexi Barov##85446
collect Head of Alexi Barov##116152 |q 36448/1
step
#include "Garrison_Medium_Building"
talk Weldon Barov##85413
turnin Reduction in Force##36448
step
Place #75# work orders at the Lumber Mill |achieve 9429
step
label "end"
Congratulations, you have earned the Upgrading the Mill Achievement! |only if hasbuilding(41,2) or hasbuilding(138,3)
You must have at least a level 2 Lumber Mill to obtain this achievement! |only if default
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Buildings\\Warlord of Draenor",{
achieveid={9738},
patch='60002',
description="\nThis guide will help you acquire the Warlord of Draenor achievement.",
},[[
step
_Warlord of Draenor_ requires you to complete each of the Nemesis quests offered by the Gladiator's Sanctum
|tip You will need a level 2 or level 3 Sanctum built in your garrison.
To Use the Nemesis: Troll Hunter guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Buildings\\Nemesis: Troll Hunter"
To Use the Nemesis: The Butcher  guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Buildings\\Nemesis: The Butcher"
To Use the Nemesis: Orcslayer  guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Buildings\\Nemesis: Orcslayer"
To Use the Nemesis: Death Stalker  guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Buildings\\Nemesis: Death Stalker"
To Use the Nemesis: Huojin's Fall  guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Buildings\\Nemesis: Huojin's Fall"
To Use the Nemesis: Killer of Kezan guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Buildings\\Nemesis: Killer of Kezan"
To Use the Nemesis: Slayer of Sin'dorei  guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Buildings\\Nemesis: Slayer of Sin'dorei"
To Use the Fight, Kill, Salute! guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Buildings\\Fight, Kill, Salute!"
|tip Ashran queue times are often lengthy. Set aside a liberal amount of time to complete each one of these criteria.
Become the Warlord of Draenor |achieve 9738
step
_Congratulations!_
You earned the "Warlord of Draenor" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Buildings\\Wingman",{
achieveid={9498},
patch='60001',
description="\nBecome a Personal Wingman with one of your Barracks Bodyguards.",
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
You can _farm reputation easily_ by traveling to this location and killing the Stingtail Workers |goto Spires of Arak/0 58.5,46.0 |achieve 9498
|tip They are weak and repawn quickly.
step
label "bodyguards"
_Become a Personal Wingman_ with one of your Barracks Bodyguards listed below
|tip Use our follower guides to find each of these.
Leorajh |achieve 9498
Talonpriest Ishaal |achieve 9498
Tormmok |achieve 9498
Defender Illona |achieve 9498
Delvar Ironfist |achieve 9498
step
Congratulations, you have _earned_ the Wingman Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Buildings\\Wingmen",{
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
Leorajh |achieve 9499/1
Talonpriest Ishaal |achieve 9499/2
Tormmok |achieve 9499/3
Defender Illona |achieve 9499/4
Delvar Ironfist |achieve 9499/5
step
Congratulations, you have _earned_ the Wingmen Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Buildings\\Working Many Orders",{
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
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Buildings\\Working More Orders",{
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
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Buildings\\Working Some Orders",{
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
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Followers\\A Rare Friend",{
achieveid={9130},
patch='60001',
description="\nRecruit a Rare follower.",
},[[
step
Any follower recruited has a chance to be _randomly upgraded_ upon recruiting
If none of your current followers have upgraded on their own _you can recruit one a week_ from your Garrison Inn
You can also _refer to_ our individual follower guides
_Recruit_ a Rare follower |achieve 9130
step
Congratulations, you have _earned_ the A Rare Friend Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Followers\\An Epic Buddy",{
achieveid={9131},
patch='60001',
description="\nRecruit an Epic follower.",
},[[
step
Any follower recruited has a chance to be _randomly upgraded_ upon recruiting
If none of your current followers have upgraded on their own _you can recruit one a week_ from your Garrison Inn
You can also _refer to_ our individual follower guides
_Recruit_ an Epic follower |achieve 9131
step
Congratulations, you have _earned_ the An Epic Buddy Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Followers\\Commander",{
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
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Followers\\Fearless Leader",{
achieveid={9109},
patch='60001',
description="\nRecruit 25 followers.",
},[[
step
Please _refer to_ our individual follower guides to track down the more elusive followers on the list
_You can also recruit one a week_ from your Garrison Inn
_Recruit_ #25# followers |achieve 9109
step
Congratulations, you have _earned_ the Fearless Leader Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Followers\\Filling the Ranks",{
achieveid={9129},
patch='60001',
description="\nRaise 20 garrison followers to level 100.",
},[[
step
Follower levels are earned by _completing_ garrison missions
#include "Garrison_CommandTable"
_Raise_ #20# followers to level 100 |achieve 9129
step
Congratulations, you have _earned_ the Filling the Ranks Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Followers\\Follow the Leader",{
achieveid={9107},
patch='60001',
description="\nRecruit 5 followers.",
},[[
step
Please _refer to_ our individual follower guides to track down the more elusive followers on the list
_You can also recruit one a week_ from your Garrison Inn
_Recruit_ #5# followers |achieve 9107
step
Congratulations, you have _earned_ the Follow the Leader Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Followers\\Following Up",{
achieveid={9110},
patch='60001',
description="\nRaise a follower to level 100.",
},[[
step
Follower levels are earned by _completing_ garrison missions
#include "Garrison_CommandTable"
_Raise_ #1# follower to level 100 |achieve 9110
step
Congratulations, you have _earned_ the Filling the Ranks Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Followers\\Item Level Army",{
achieveid={9213},
patch='60001',
description="\nRaise 10 followers' item level to 650.",
},[[
step
Your followers' item level _can be raised past 600_ once they hit level 100
_Applying_ weapon and armor enchancements to them at the command table helps keep track of their current item levels
The enhancements can be _earned through_ missions or work orders at the Dwarven Bunker
|confirm
step
#include "Garrison_CommandTable"
|tip Find the follower you wish to upgrade from here.
use Weapon Enhancement Token##120302
|tip Creates an uncommon, rare, or epic weapon upgrade.
use War Ravaged Weaponry##114616
|tip Makes weapon item level 615.
use Blackrock Weaponry##114081
|tip Makes weapon item level 630.
use Goredrenched Weaponry##114622
|tip Makes weapon item level 645.
use Balanced Weapon Enhancement##114128
|tip Adds 3 weapon item levels.
use Striking Weapon Enhancement##114129
|tip Adds 6 weapon item levels.
use Power Overrun Weapon Enhancement##114131
|tip Adds 9 weapon item levels.
use Armor Enhancement Token##120301
|tip Creates an uncommon, rare, or epic armor upgrade.
use War Ravaged Armor Set##114807
|tip Makes armor item level 615.
use Blackrock Armor Set##114806
|tip Makes armor item level 630.
use Goredrenched Armor Set##114746
|tip Makes armor item level 645.
use Braced Armor Enhancement##114745
|tip Adds 3 armor item levels.
use Fortified Armor Enhancement##114808
|tip Adds 6 armor item levels.
use Heavily Reinforced Armor Enhancement##114822
|tip Adds 9 armor item levels.
_Raise_ 10 followers' item level to 650 |achieve 9213
step
Congratulations, you have _earned_ the Item Level Army Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Followers\\Item Level Force",{
achieveid={9243},
patch='60001',
description="\nRaise 20 followers' item level to 650.",
},[[
step
Your followers' item level _can be raised past 600_ once they hit level 100
_Applying_ weapon and armor enchancements to them at the command table helps keep track of their current item levels
The enhancements can be _earned through_ missions or work orders at the Dwarven Bunker
|confirm
step
#include "Garrison_CommandTable"
|tip Find the follower you wish to upgrade from here.
use Weapon Enhancement Token##120302
|tip Creates an uncommon, rare, or epic weapon upgrade.
use War Ravaged Weaponry##114616
|tip Makes weapon item level 615.
use Blackrock Weaponry##114081
|tip Makes weapon item level 630.
use Goredrenched Weaponry##114622
|tip Makes weapon item level 645.
use Balanced Weapon Enhancement##114128
|tip Adds 3 weapon item levels.
use Striking Weapon Enhancement##114129
|tip Adds 6 weapon item levels.
use Power Overrun Weapon Enhancement##114131
|tip Adds 9 weapon item levels.
use Armor Enhancement Token##120301
|tip Creates an uncommon, rare, or epic armor upgrade.
use War Ravaged Armor Set##114807
|tip Makes armor item level 615.
use Blackrock Armor Set##114806
|tip Makes armor item level 630.
use Goredrenched Armor Set##114746
|tip Makes armor item level 645.
use Braced Armor Enhancement##114745
|tip Adds 3 armor item levels.
use Fortified Armor Enhancement##114808
|tip Adds 6 armor item levels.
use Heavily Reinforced Armor Enhancement##114822
|tip Adds 9 armor item levels.
_Raise_ 20 followers' item level to 650 |achieve 9243
step
Congratulations, you have _earned_ the Item Level Force Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Followers\\My Item Level Is Higher than Yours",{
achieveid={9211},
patch='60001',
description="\nRaise a follower's item level to 625.",
},[[
step
Your followers' item level _can be raised past 600_ once they hit level 100
_Applying_ weapon and armor enchancements to them at the command table helps keep track of their current item levels
The enhancements can be _earned through_ missions or work orders at the Dwarven Bunker
|confirm
step
#include "Garrison_CommandTable"
|tip Find the follower you wish to upgrade from here.
use Weapon Enhancement Token##120302
|tip Creates an uncommon, rare, or epic weapon upgrade.
use War Ravaged Weaponry##114616
|tip Makes weapon item level 615.
use Blackrock Weaponry##114081
|tip Makes weapon item level 630.
use Goredrenched Weaponry##114622
|tip Makes weapon item level 645.
use Balanced Weapon Enhancement##114128
|tip Adds 3 weapon item levels.
use Striking Weapon Enhancement##114129
|tip Adds 6 weapon item levels.
use Power Overrun Weapon Enhancement##114131
|tip Adds 9 weapon item levels.
use Armor Enhancement Token##120301
|tip Creates an uncommon, rare, or epic armor upgrade.
use War Ravaged Armor Set##114807
|tip Makes armor item level 615.
use Blackrock Armor Set##114806
|tip Makes armor item level 630.
use Goredrenched Armor Set##114746
|tip Makes armor item level 645.
use Braced Armor Enhancement##114745
|tip Adds 3 armor item levels.
use Fortified Armor Enhancement##114808
|tip Adds 6 armor item levels.
use Heavily Reinforced Armor Enhancement##114822
|tip Adds 9 armor item levels.
_Raise_ 1 follower's item level to 625 |achieve 9211
step
Congratulations, you have _earned_ the My Item Level Is Higher than Yours Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Followers\\My Item Level Is Way Higher than Yours",{
achieveid={9212},
patch='60001',
description="\nRaise a follower's item level to 650.",
},[[
step
Your followers' item level _can be raised past 600_ once they hit level 100
_Applying_ weapon and armor enchancements to them at the command table helps keep track of their current item levels
The enhancements can be _earned through_ missions or work orders at the Dwarven Bunker
|confirm
step
#include "Garrison_CommandTable"
|tip Find the follower you wish to upgrade from here.
use Weapon Enhancement Token##120302
|tip Creates an uncommon, rare, or epic weapon upgrade.
use War Ravaged Weaponry##114616
|tip Makes weapon item level 615.
use Blackrock Weaponry##114081
|tip Makes weapon item level 630.
use Goredrenched Weaponry##114622
|tip Makes weapon item level 645.
use Balanced Weapon Enhancement##114128
|tip Adds 3 weapon item levels.
use Striking Weapon Enhancement##114129
|tip Adds 6 weapon item levels.
use Power Overrun Weapon Enhancement##114131
|tip Adds 9 weapon item levels.
use Armor Enhancement Token##120301
|tip Creates an uncommon, rare, or epic armor upgrade.
use War Ravaged Armor Set##114807
|tip Makes armor item level 615.
use Blackrock Armor Set##114806
|tip Makes armor item level 630.
use Goredrenched Armor Set##114746
|tip Makes armor item level 645.
use Braced Armor Enhancement##114745
|tip Adds 3 armor item levels.
use Fortified Armor Enhancement##114808
|tip Adds 6 armor item levels.
use Heavily Reinforced Armor Enhancement##114822
|tip Adds 9 armor item levels.
_Raise_ 1 follower's item level to 650 |achieve 9212
step
Congratulations, you have _earned_ the My Item Level Is Way Higher than Yours Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Followers\\Raising the Bar",{
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
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Followers\\Where You Go, They Will Follow",{
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
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Invasions\\Impervious Defender",{
achieveid={9827},
patch='60100',
description="\nComplete every garrison invasion scenario with a platinum rating.",
},[[
step
Impervious Defender requires you to complete each of the invasions with a platinum rating.
|tip This will required a group of at least 3 players with raid equivalent gear to achieve.
|tip Cover the areas of the front gate, archway next to the herb garden, and the main courtyard.
|tip It is critical to focus on keeping NPCs and buildings intact, and killing special enemies such as Rylak, spies, and siege engines.
|tip For platinum, killing enemies quickly will help you earn enough points.
Complete every garrison invasion with a score of at least 1,300 |achieve 9827
To use our _Botani Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Botani Invasion"
To use our _Goren Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Goren Invasion"
To use our _Iron Horde Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Iron Horde Invasion"
To use our _Ogre Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Ogre Invasion"
To use our _Shadow Council Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Shadow Council Invasion"
To use our _Shadowmoon Clan Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Shadowmoon Clan Invasion"
step
Congratulations, you have earned the _Impervious Defender_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Missions\\A Rare Mission",{
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
talk Grakis##87365 |goto Stormshield 49.0,33.8
buy Explorer's Notebook##122606 |n
|tip Buy as many as you are comfortable with. The Missions are random so you may get repeats while finishing this achievement.
use Explorer's Notebook##122606
After using your Notebooks you'll need to return to your Command Table and run the missions you have gained |confirm
step
#include "Garrison_CommandTable"
Start any missions you have earned from your Notebooks and wait for the missions to complete |confirm
step
Congratulations, you have earned the Exploration Mission Master Achievement! |only if achieved(9900)
Still more missions required. Routing to the guide start |next "start" |only if not achieved(9900)
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Missions\\Exploration Mission Specialist",{
achieveid={9150},
patch='60001',
description="\nComplete a garrison exploration mission.",
},[[
step
#include "Garrison_CommandTable"
_Select_ a mission with the Exploration icon and complete it |achieve 9150
|tip The icon looks like a spyglass.
step
Congratulations, you have _earned_ the Exploration Mission Specialist Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Missions\\Keeping It Rare",{
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
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Missions\\Mission Specialist",{
condition_end=function() return achieved(9147) end,
achieveid={9145,9146,9147},
patch='60001',
description="\nComplete the Mission Specialist achievements.",
},[[
step
label "start"
_Click_ the Mission Specialist achievements listed below to complete them
You have _completed_ all of the achievements below
|tip You have this earned on your account, however you can earn it on each character again. |next "end" |only if achieved(9147)
Patrol Mission Specialist |achieve 9147/1 |confirm |next "patrol"
Treasure Mission Specialist |achieve 9147/2 |confirm |next "treasure"
step
label "patrol"
Patrol Missions _require_ a level 1 Barracks
#include "Garrison_CommandTable"
_Select_ a patrol mission with the Patrol icon and _complete_ it |achieve 9146
|tip The icon looks like a sword and shield.
|next "start"
step
label "treasure"
Treasure Missions _require_ a level 3 Inn
#include "Garrison_CommandTable"
_Select_ a mission with the Treasure icon and _complete_ it |achieve 9145
|tip The icon looks like a stone tablet.
step
label "end"
Congratulations, you have _earned_ the Mission Specialist Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Missions\\On a Few Missions",{
achieveid={9134},
patch='60001',
description="\nComplete 50 garrison missions.",
},[[
step
#include "Garrison_CommandTable"
_Start and complete_ #50# garrison missions |achieve 9134
step
Congratulations, you have _earned_ the On a Few Missions Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Missions\\On a Lot of Missions",{
achieveid={9138},
patch='60001',
description="\nComplete 100 garrison missions.",
},[[
step
#include "Garrison_CommandTable"
_Start and complete_ #100# garrison missions |achieve 9138
step
Congratulations, you have _earned_ the On a Lot of Missions Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Missions\\On a Massive Number of Missions",{
achieveid={9139},
patch='60001',
description="\nComplete 500 garrison missions.",
},[[
step
#include "Garrison_CommandTable"
_Start and complete_ #500# garrison missions |achieve 9139
step
Congratulations, you have _earned_ the On a Massive Number of Missions Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Missions\\On a Metric Ton of Missions",{
achieveid={9140},
patch='60001',
description="\nComplete 1000 garrison missions.",
},[[
step
#include "Garrison_CommandTable"
_Start and complete_ #1000# garrison missions |achieve 9140
step
Congratulations, you have _earned_ the On a Metric Ton of Missions Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Missions\\On a Mission",{
achieveid={9133},
patch='60001',
description="\nComplete 10 garrison missions.",
},[[
step
#include "Garrison_CommandTable"
_Start and complete_ #10# garrison missions |achieve 9133
step
Congratulations, you have _earned_ the On a Mission Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Missions\\Patrol Mission Specialist",{
achieveid={9146},
patch='60001',
description="\nComplete a garrison patrol mission.",
},[[
step
Patrol Missions _require_ a level 1 Barracks
#include "Garrison_CommandTable"
_Select_ a mission with the Patrol icon and _complete_ it |achieve 9146
|tip The icon looks like a sword and shield.
step
Congratulations, you have _earned_ the Patrol Mission Specialist achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Missions\\Patrolling Draenor",{
achieveid={9523},
patch='60001',
description="\nComplete 50 garrison patrol missions.",
},[[
step
Patrol Missions _require_ a level 1 Barracks
#include "Garrison_CommandTable"
_Select_ #50# missions with the Patrol icon and _complete_ them |achieve 9523
|tip The icon looks like a sword and shield.
step
Congratulations, you have _earned_ the Patrolling Draenor Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Missions\\The Rarer the Better",{
achieveid={9143},
patch='60001',
description="\nComplete 300 Rare garrison missions.",
},[[
step
#include "Garrison_CommandTable"
_Select_ #300# missions labeled "Rare" and _complete_ them |achieve 9143
|tip Rare missions are blue shaded and say RARE! under the level requirement.
step
Congratulations, you have _earned_ the The Rarer the Better Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Missions\\Treasure Master",{
achieveid={9524},
patch='60001',
description="\nComplete 50 garrison treasure missions.",
},[[
step
Treasure Missions _require_ a level 3 Inn
#include "Garrison_CommandTable"
_Select_ #50# missions with the Treasure icon and _complete_ them |achieve 9524
|tip The icon looks like a stone tablet.
step
Congratulations, you have _earned_ the Treasure Master Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Missions\\Treasure Mission Specialist",{
achieveid={9145},
patch='60001',
description="\nComplete a garrison treasure missions.",
},[[
step
Treasure Missions _require_ a level 3 Inn
#include "Garrison_CommandTable"
_Select_ a mission with the Treasure icon and _complete_ it |achieve 9145
|tip The icon looks like a stone tablet.
step
Congratulations, you have _earned_ the Treasure Mission Specialist achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Monuments\\Defender of Draenor",{
achieveid={9630},
patch='60001',
description="\nThis guide will walk you through completing the Defender of Draenor achievement.",
},[[
step
Click accept when you receive the popup asking "_Would you like to join the Ashran battle?_" |goto Ashran/0 43.7,77.6
|tip Ashran queue times are often lengthy. It is best to set aside a good amount of time for each queue.
Kill 5,000 players in Draenor |achieve 9630
|tip Ashran is the quickest place to earn this achievement.
_Stick to the following popular areas:_
Molten Quarry |goto Ashran/0 56.7,69.3
Ashran Excavation |goto Ashran/0 46.0,63.2
Ashmaul Burial Grounds |goto Ashran/0 37.0,63.0
Amphitheater of Annihilation |goto Ashran/0 38.6,39.3
Warspear Bridge |goto Ashran/0 48.7,32.4
Brute's Rise |goto Ashran/0 56.7,32.5
The Dark Woods |goto Ashran/0 57.9,40.3
Stormshield Bridge |goto Ashran/0 47.0,69.9
|tip Utilize AoE abilities to damage as many players as possible. This will help you rapidly increase your kill count.
step
Congratulations, you earned the _Defender of Draenor_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Monuments\\Draenor Pet Brawler",{
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
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Monuments\\Master Draenor Crafter",{
achieveid={9246},
patch='60001',
description="\nCraft 50 Epic items with an item level of at least 600.",
},[[
step
Please _refer_ to our individual profession guides to help with this achievement
_Craft_ #50# Epic items with an item level of at least 600 |achieve 9246
step
Congratulations, you have _earned_ the Master Draenor Crafter Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Monuments\\Master of Apexis",{
achieveid={9265},
patch='60001',
description="\nCollect 100,000 Apexis Crystals.",
},[[
step
Apexis Crystals can be _earned_ by completing quests, dailes, weeklies, work orders, killing world rares, and dungeon bosses
_Please refer_ to our individual guides for the above for assistance earning Apexis Crystals
_Collect_ #100000# Apexis Crystals |achieve 9265 |goto Lunarfall/0 31.6,31.0
step
Congratulations, you have _earned_ the Master of Apexis Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Shipyard\\Naval Fleet",{
achieveid={10169},
patch='60200',
description="\nUpgrade your shipyard to level 2.",
},[[
step
Upgrade your Shipyard to Level 2 |achieve 10169
|tip Use the "Lunarfall Shipyard" guide to accomplish this.
step
Congratulations, you earned the _Naval Fleet_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Shipyard\\Naval Armada",{
achieveid={10168},
patch='60200',
description="\nUpgrade your shipyard to level 3.",
},[[
step
Upgrade your Shipyard to Level 3 |achieve 10168
|tip Use the "Lunarfall Shipyard" guide to accomplish this.
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
|tip It looks like a rectangle wooden table with a map on it.
Complete #50# Naval Missions |achieve 10170 |goto Shadowmoon Valley D/0 28.2,11.7
|tip All naval missions count toward this achievement.
step
Congratulations! You earned the _Seaman_ Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Shipyard\\Petty Officer",{
achieveid={10172},
patch='60200',
description="\nComplete 100 Naval Missions.",
},[[
step
clicknpc Fleet Command Table##94399
|tip It looks like a rectangle wooden table with a map on it.
Complete #100# Naval Missions |achieve 10172 |goto Shadowmoon Valley D/0 28.2,11.7
|tip All naval missions count toward this achievement.
step
Congratulations! You earned the _Petty Officer_ Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Shipyard\\Fleet Commander",{
achieveid={10173},
patch='60200',
description="\nComplete 500 Naval Missions.",
},[[
step
clicknpc Fleet Command Table##94399
|tip It looks like a rectangle wooden table with a map on it.
Complete #500# Naval Missions |achieve 10173 |goto Shadowmoon Valley D/0 28.2,11.7
|tip All naval missions count toward this achievement.
step
Congratulations! You earned the _Fleet Commander_ Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Shipyard\\Admiral",{
achieveid={10174},
patch='60200',
description="\nComplete 1,000 Naval Missions.",
},[[
step
clicknpc Fleet Command Table##94399
|tip It looks like a rectangle wooden table with a map on it.
Complete #1000# Naval Missions |achieve 10174 |goto Shadowmoon Valley D/0 28.2,11.7
|tip All naval missions count toward this achievement.
step
Congratulations! You earned the _Admiral_ Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Shipyard\\Naval Training Specialist/Expert",{
condition_end=function() return achieved(10163) end,
achieveid={10162, 10163,10163},
patch='60200',
description="\nComplete 25 Naval Training Missions.",
},[[
step
clicknpc Fleet Command Table##94399
|tip It looks like a rectangle wooden table with a map on it.
Complete #25# Naval Training Missions |achieve 10163 |goto Shadowmoon Valley D/0 28.2,11.7
|tip Training missions are represented on the naval missions map by a ship anchor icon.
step
Congratulations! You earned the:
_Naval Training Specialist_ Achievement
_Naval Training Expert_ Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Shipyard\\Naval Combat Specialist/Expert",{
condition_end=function() return achieved(10154) end,
achieveid={10156, 10154,10154},
patch='60200',
description="\nComplete 25 Naval Combat Missions.",
},[[
step
clicknpc Fleet Command Table##94399
|tip It looks like a rectangle wooden table with a map on it.
Complete #25# Naval Combat Missions |achieve 10154 |goto Shadowmoon Valley D/0 28.2,11.7
|tip Combat missions are represented on the naval missions map by a crossed swords icon.
step
Congratulations! You earned the:
_Naval Combat Specialist_ Achievement
_Naval Combat Expert_ Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Shipyard\\Naval Treasure Specialist/Expert",{
condition_end=function() return achieved(10160) end,
achieveid={10159, 10160,10160},
patch='60200',
description="\nComplete 25 Naval Treasure Missions.",
},[[
step
clicknpc Fleet Command Table##94399
|tip It looks like a rectangle wooden table with a map on it.
Complete #25# Naval Treasure Missions |achieve 10160 |goto Shadowmoon Valley D/0 28.2,11.7
|tip Treasure missions are represented on the naval missions map by a treasure chest icon.
step
Congratulations! You earned the:
_Naval Treasure Specialist_ Achievement
_Naval Treasure Expert_ Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Shipyard\\Naval Siege Specialist/Expert",{
condition_end=function() return achieved(10155) end,
achieveid={10161, 10155,10155},
patch='60200',
description="\nComplete 25 Naval Siege Missions.",
},[[
step
clicknpc Fleet Command Table##94399
|tip It looks like a rectangle wooden table with a map on it.
Complete #25# Naval Siege Missions |achieve 10155 |goto Shadowmoon Valley D/0 28.2,11.7
|tip Siege missions are labeled as "Blockade" missions and are represented on the naval missions map by a banner on a wooden post icon.
step
Congratulations! You earned the:
_Naval Siege Specialist_ Achievement
_Naval Siege Expert_ Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Shipyard\\Naval Bonus Specialist/Expert",{
condition_end=function() return achieved(10036) end,
achieveid={10017, 10036,10036},
patch='60200',
description="\nComplete 25 Naval Bonus Missions.",
},[[
step
clicknpc Fleet Command Table##94399
|tip It looks like a rectangle wooden table with a map on it.
Complete #25# Naval Bonus Missions |achieve 10036 |goto Shadowmoon Valley D/0 28.2,11.7
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
|tip It looks like a rectangle wooden table with a map on it.
Complete #25# Naval Combat Missions |achieve 10154 |goto Shadowmoon Valley D/0 28.2,11.7
|tip Combat missions are represented on the naval missions map by a crossed swords icon.
Complete #25# Naval Treasure Missions |achieve 10160 |goto Shadowmoon Valley D/0 28.2,11.7
|tip Treasure missions are represented on the naval missions map by a treasure chest icon.
Complete #25# Naval Training Missions |achieve 10163 |goto Shadowmoon Valley D/0 28.2,11.7
|tip Training missions are represented on the naval missions map by a ship anchor icon.
Complete #25# Naval Bonus Missions |achieve 10036 |goto Shadowmoon Valley D/0 28.2,11.7
|tip Bonus missions are represented on the naval missions map by a star icon.
Complete #25# Naval Siege Missions |achieve 10155 |goto Shadowmoon Valley D/0 28.2,11.7
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
|tip It looks like a rectangle wooden table with a map on it.
Upgrade these Ships to Epic Quality:
|tip A ship is Epic quality when it's name is purple.
Destroyer |achieve 10165/1 |goto Shadowmoon Valley D/0 28.2,11.7
Submarine |achieve 10165/2 |goto Shadowmoon Valley D/0 28.2,11.7
Carrier |achieve 10165/3 |goto Shadowmoon Valley D/0 28.2,11.7
Transport |achieve 10165/4 |goto Shadowmoon Valley D/0 28.2,11.7
Battleship |achieve 10165/5 |goto Shadowmoon Valley D/0 28.2,11.7
_
Build ships with _Yanas Seastrike_ at [Shadowmoon Valley D/0 29.8,10.7]
|tip You can upgrade ships by sending them on missions to gain experience, or by building ships repeatedly, since they have a chance to autoupgrade upon completion. Use the "Lunarfall Shipyard" guide to obtain all of the ship blueprints for the ships you need to build.
step
Congratulations, you earned the _Ironsides_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Shipyard\\Naval Mechanics",{
achieveid={10166},
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
_Go through_ the doorway |goto Tanaan Jungle/0 44.3,37.0 < 20 |only if walking
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
talk Vindicator Krethos##90974 |goto Tanaan Jungle/0 58.4,60.5
buy Equipment Blueprint: Tuskarr Fishing Net##128491 |n
|tip You must be Honored with the Hand of the Prophet faction in order to be able to purchase this item. Use the "Hand of the Prophet" dailies guide to accomplish this.
use Equipment Blueprint: Tuskarr Fishing Net##128491
accept Equipment Blueprint: Tuskarr Fishing Net##39359
step
talk Vindicator Krethos##90974 |goto Tanaan Jungle/0 58.4,60.5
buy Equipment Blueprint: Unsinkable##128250 |n
|tip You must be Revered with the Hand of the Prophet faction in order to be able to purchase this item. Use the "Hand of the Prophet" dailies guide to accomplish this.
use Equipment Blueprint: Unsinkable##128250
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
_Go through_ the doorway |goto Tanaan Jungle/0 37.5,44.5 < 20 |only if walking
_Run up_ the stairs |goto Tanaan Jungle/0 36.9,45.8 < 30 |only if walking
_Continue_ up the stairs |goto Tanaan Jungle/0 35.9,47.4 < 30 |only if walking
_Follow_ the path |goto Tanaan Jungle/0 35.2,47.8 < 20 |only if walking
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
clicknpc Fleet Command Table##94399 |goto Shadowmoon Valley D/0 28.2,11.7
|tip It looks like a rectangle wooden table with a map on it.
Complete the _"Jungle Supplies"_ Naval Mission
|tip This naval mission is available at random, so you may have to complete other missions to clear them out so this mission can become available.
collect Equipment Blueprint: Blast Furnace##128260 |n
use Equipment Blueprint: Blast Furnace##128260
accept Equipment Blueprint: Blast Furnace##39368
step
clicknpc Fleet Command Table##94399 |goto Shadowmoon Valley D/0 28.2,11.7
|tip It looks like a rectangle wooden table with a map on it.
Complete Naval Missions
|tip Try to use at least one ship per mission that has the "Gnomish Crew" ability. This ability gives a chance for naval equipment loot when successfully completing a naval mission.
collect Equipment Blueprint: Ammo Reserves##128262 |n
|tip It may take a while to get this blueprint, since it's based on pure luck, so try to be patient.
use Equipment Blueprint: Ammo Reserves##128262
accept Equipment Blueprint: Ammo Reserves##39370
step
clicknpc Fleet Command Table##94399 |goto Shadowmoon Valley D/0 28.2,11.7
|tip It looks like a rectangle wooden table with a map on it.
Complete Naval Missions
|tip Try to use at least one ship per mission that has the "Gnomish Crew" ability. This ability gives a chance for naval equipment loot when successfully completing a naval mission.
collect Equipment Blueprint: Automated Sky Scanner##128261 |n
|tip It may take a while to get this blueprint, since it's based on pure luck, so try to be patient.
use Equipment Blueprint: Automated Sky Scanner##128261
accept Equipment Blueprint: Automated Sky Scanner##39369
step
clicknpc Fleet Command Table##94399 |goto Shadowmoon Valley D/0 28.2,11.7
|tip It looks like a rectangle wooden table with a map on it.
Complete Naval Missions
|tip Try to use at least one ship per mission that has the "Gnomish Crew" ability. This ability gives a chance for naval equipment loot when successfully completing a naval mission.
collect Equipment Blueprint: Extra Quarters##128259 |n
|tip It may take a while to get this blueprint, since it's based on pure luck, so try to be patient.
use Equipment Blueprint: Extra Quarters##128259
accept Equipment Blueprint: Extra Quarters##39367
step
clicknpc Fleet Command Table##94399 |goto Shadowmoon Valley D/0 28.2,11.7
|tip It looks like a rectangle wooden table with a map on it.
Complete Naval Missions
|tip Try to use at least one ship per mission that has the "Gnomish Crew" ability. This ability gives a chance for naval equipment loot when successfully completing a naval mission.
collect Equipment Blueprint: Q-43 Noisemaker Mines##128254 |n
|tip It may take a while to get this blueprint, since it's based on pure luck, so try to be patient.
use Equipment Blueprint: Q-43 Noisemaker Mines##128254
accept Equipment Blueprint: Q-43 Noisemaker Mines##39362
step
clicknpc Fleet Command Table##94399 |goto Shadowmoon Valley D/0 28.2,11.7
|tip It looks like a rectangle wooden table with a map on it.
Complete Naval Missions
|tip Try to use at least one ship per mission that has the "Gnomish Crew" ability. This ability gives a chance for naval equipment loot when successfully completing a naval mission.
collect Equipment Blueprint: Sonic Amplification Field##128253 |n
|tip It may take a while to get this blueprint, since it's based on pure luck, so try to be patient.
use Equipment Blueprint: Sonic Amplification Field##128253
accept Equipment Blueprint: Sonic Amplification Field##39361
step
_Run down_ the stairs |goto Shadowmoon Valley D/0 27.9,11.2 < 30 |only if walking
talk Salty Jorren##93812 |goto Shadowmoon Valley D/0 28.7,10.9
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
You still need more blueprints: |only if not achieved(10166)
Click to restart this guide |confirm |next "naval_mechanics_start" |only if not achieved(10166)
|tip This will help you go back and get any blueprints you missed. |only if not achieved(10166)
Congratulations, you earned the _Naval Mechanics_ achievement! |only if achieved(10166)
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Shipyard\\Charting a Course",{
achieveid={10256},
patch='60200',
description="\nThis guide will walk you through completing the Charting a Course achievement.",
},[[
step
clicknpc Fleet Command Table##94399 |goto Shadowmoon Valley D/0 28.2,11.7
|tip It looks like a rectangle wooden table with a map on it.
Complete 3 of these Rare Naval Missions:
The House Always Wins |achieve 10256/1 |complete achieved(10256)
For Hate's Sake |achieve 10256/2 |complete achieved(10256)
Black Market Journal |achieve 10256/3 |complete achieved(10256)
Orphaned Aquatic Animal Rescue |achieve 10256/4 |complete achieved(10256)
The Wave Mistress |achieve 10256/5 |complete achieved(10256)
It's a boat, it's a plane, it's... just a riverbeast. |achieve 10256/6 |complete achieved(10256)
step
Congratulations, you earned the _Charting a Course_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Shipyard\\Exploring the High Seas",{
achieveid={10167},
patch='60200',
description="\nThis guide will walk you through completing the Exploring the High Seas achievement.",
},[[
step
clicknpc Fleet Command Table##94399 |goto Shadowmoon Valley D/0 28.2,11.7
|tip It looks like a rectangle wooden table with a map on it.
Complete all of these Rare Naval Missions:
The House Always Wins |achieve 10167/1
For Hate's Sake |achieve 10167/2
Black Market Journal |achieve 10167/3
Orphaned Aquatic Animal Rescue |achieve 10167/4
The Wave Mistress |achieve 10167/5
It's a boat, it's a plane, it's... just a riverbeast. |achieve 10167/6
step
Congratulations, you earned the _Exploring the High Seas_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Invasions\\Botani Invasion",{
achieveid={9208},
patch='60001',
description="\nComplete a Botani garrison invasion.",
},[[
step
label "start"
buy 1 Scouting Missive: Everbloom Wilds##122404 |only if not haveq(38192)
accept Missive: Assault on the Everbloom Wilds##38192 |use Scouting Missive: Everbloom Wilds##122404 |repeatable
step
kill Everbloom Waterspeaker##88261+, Everbloom Shaper##89019+, Everbloom Wasp##86264+
kill Botani Vine-Weaver##86261+, Wild Mandragora##86260+, Twisted Guardian##88279+, Enthralled Mutant##88394+
Kill Botani mobs |q 38192/1 |goto Gorgrond/0 59.7,38.9
|tip To trigger a Botani invasion, you must kill level 100 mobs for the daily quest or Scouting Missive in the Everbloom Wilds.
step
#include "Garrison_ScoutValdez"
turnin Missive: Assault on the Everbloom Wilds##38192
step
#include "Garrison_Crowler"
accept Botani Invasion!##36171
If the first missive didn't trigger an invasion, click here |confirm |next "start"
step
#include "Garrison_Crowler"
Tell him "_Prepare to battle the Primals._"
Follow Sergeant Crowler |scenariostage 1 |goto Lunarfall/0 45.6,50.6 |or
| confirm |or
step
Defeat the lasher ambush |scenariostage 2 |goto Lunarfall/0 45.6,50.6
|tip Several mobs will spawn before the main assault.
| confirm |or
step
Endure the Primals' assault |scenariostage 3 |goto Lunarfall/0 45.6,50.6
|tip Pay particular attention to your front gate, buildings, near the herb garden, and town hall.
| confirm |or
step
Defeat the remaining Botani forces |scenariostage 4 |goto Lunarfall/0 45.6,50.6
|tip Mobs stop spawning at this point. Clean up your garrison courtyard.
| confirm |or
step
Return to the town center |scenariostage 5 |goto Lunarfall/0 45.6,50.6
| confirm |or
step
Defeat the Ancient and its tenders |scenariostage 6 |goto Lunarfall/0 45.6,50.6
|tip This boss is elite. Fear not, your garrison will help you defeat it.
| confirm |or
step
#include "Garrison_Crowler"
turnin Botani Invasion!##36171
step
Congratulations, you have earned the _Botani Invasion_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Invasions\\Bronze Defender",{
achieveid={9162},
patch='60001',
description="\nComplete a garrison invasion with a bronze score or higher.",
},[[
step
A bronze invasion score requires a minimum of 300 points upon completion
|tip Bronze is fairly easy to get solo at any gear level.
Complete a garrison invasion with a score of at least 300 |achieve 9162
To use our _Botani Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Botani Invasion"
To use our _Goren Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Goren Invasion"
To use our _Iron Horde Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Iron Horde Invasion"
To use our _Ogre Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Ogre Invasion"
To use our _Shadow Council Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Shadow Council Invasion"
To use our _Shadowmoon Clan Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Shadowmoon Clan Invasion"
step
Congratulations, you have earned the _Bronze Defender_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Invasions\\Golden Defender",{
achieveid={9162},
patch='60001',
description="\nComplete a garrison invasion with a gold score or higher.",
},[[
step
A gold invasion requires a minimum of 1,000 points upon completion
|tip Golden Defender will required a group of at least 3 players to achieve.
|tip Cover the areas of the front gate, archway next to the herb garden, and the main courtyard.
|tip It is critical to focus on keeping NPCs and buildings intact, and killing special enemies such as Rylak, spies, and siege engines.
Complete a garrison invasion with a score of at least 1,000 |achieve 9162
To use our _Botani Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Botani Invasion"
To use our _Goren Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Goren Invasion"
To use our _Iron Horde Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Iron Horde Invasion"
To use our _Ogre Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Ogre Invasion"
To use our _Shadow Council Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Shadow Council Invasion"
To use our _Shadowmoon Clan Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Shadowmoon Clan Invasion"
step
Congratulations, you have earned the _Golden Defender_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Invasions\\Goren Invasion",{
achieveid={9207},
patch='60001',
description="\nComplete a Goren garrison invasion.",
},[[
step
label "start"
buy 1 Scouting Missive: Magnarok##122399 |only if not haveq(38190)
accept Missive: Assault on Magnarok##38190 |use Scouting Missive: Magnarok##122399 |repeatable
step
kill Vicious Acidmaw##76905+, Burning Slagmaw##72348+, Icecrag Mountainbreaker##87346+, Frostfire Cragstomper##87333+
clicknpc Earthen Spike##87571
Kill Goren mobs |q 38190/1 |goto Frostfire Ridge/0 69.8,30.4 |repeatable
|tip To trigger a Goren invasion, you must kill level 100 mobs for the daily quest or Scouting Missive in the Magnarok.
step
#include "Garrison_ScoutValdez"
turnin Missive: Assault on Magnarok##38190
step
#include "Garrison_Crowler"
accept Goren Invasion!##36376
If the first missive didn't trigger an invasion, click here |confirm |next "start"
step
#include "Garrison_Crowler"
Tell him "_Prepare to battle the Goren._" |q 36376/1 |or 2
Follow Sergeant Crowler |scenariostage 1 |goto Lunarfall/0 45.6,50.6 |or 2
| confirm |or 2
step
Defeat the Goren ambush |scenariostage 2 |goto Lunarfall/0 45.6,50.6
|tip You will have to deal with a few waves
|tip Several mobs will spawn before the main assault.
| confirm |or
step
Endure the Goren assault |scenariostage 3 |goto Lunarfall/0 45.6,50.6
|tip Pay particular attention to your front gate, buildings, near the herb garden, and town hall.
| confirm |or
step
Defeat the remaining Goren forces |scenariostage 4 |goto Lunarfall/0 45.6,50.6
|tip Mobs stop spawning at this point. Clean up your garrison courtyard.
| confirm |or
step
Return to the town center |scenariostage 5 |goto Lunarfall/0 45.6,50.6
| confirm |or
step
Defeat the Gronn |scenariostage 6 |goto Lunarfall/0 45.6,50.6
|tip This boss is elite. Fear not, your garrison will help you defeat it.
| confirm |or
step
#include "Garrison_Crowler"
turnin Goren Invasion!##36376
step
Congratulations, you have earned the _Goren Invasion_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Invasions\\Invasion Specialist",{
achieveid={9167},
patch='60001',
description="\nComplete ten garrison invasions.",
},[[
step
_Invasion Specialist_ requires you to complete ten garrison invasions
|tip This can be done solo or in a group.
Complete ten garrison invasions |achieve 9167
To use our _Botani Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Botani Invasion"
To use our _Goren Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Goren Invasion"
To use our _Iron Horde Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Iron Horde Invasion"
To use our _Ogre Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Ogre Invasion"
To use our _Shadow Council Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Shadow Council Invasion"
To use our _Shadowmoon Clan Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Shadowmoon Clan Invasion"
step
Congratulations, you have earned the _Invasion Specialist_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Invasions\\Invasion? What Invasion?",{
achieveid={9543},
patch='60001',
description="\nComplete 50 garrison invasions.",
},[[
step
_Invasion? What Invasion?_ requires you to complete 50 garrison invasions
|tip This can be done solo or in a group.
Complete 50 garrison invasions |achieve 9543
To use our _Botani Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Botani Invasion"
To use our _Goren Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Goren Invasion"
To use our _Iron Horde Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Iron Horde Invasion"
To use our _Ogre Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Ogre Invasion"
To use our _Shadow Council Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Shadow Council Invasion"
To use our _Shadowmoon Clan Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Shadowmoon Clan Invasion"
step
Congratulations, you have earned the _Invasion? What Invasion?_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Invasions\\Invasions Are Better with Friends",{
achieveid={9244},
patch='60001',
description="\nComplete a garrison invasion while in a group with 3 or more people.",
},[[
step
_Invasions Are Better with Friends_ requires you to complete a garrison invasion with 3 or more people in your group
|tip You may form your own group or search for one using the group finder tool.
|tip To access the group finder, press "I" and select the "Custom" tab.
Complete a garrison invasion while in a group |achieve 9244
To use our _Botani Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Botani Invasion"
To use our _Goren Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Goren Invasion"
To use our _Iron Horde Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Iron Horde Invasion"
To use our _Ogre Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Ogre Invasion"
To use our _Shadow Council Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Shadow Council Invasion"
To use our _Shadowmoon Clan Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Shadowmoon Clan Invasion"
step
Congratulations, you have earned the _Invasions Are Better with Friends_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Invasions\\Iron Horde Invasion",{
achieveid={9205},
patch='60001',
description="\nComplete an Iron Horde garrison invasion.",
},[[
step
label "start"
buy 1 Scouting Missive: Mok'gol Watchpost##122422 |only if not haveq(38195)
accept Missive: Assault on Mok'gol Watchpost##38195 |use Scouting Missive: Mok'gol Watchpost##122422 |repeatable
step
kill Mok'gol Brutalizer##72571+, Mok'gol Wolfsong##86659+, Mok'gol Grunt##86657+, Mok'gol Pack-Leader##86658+
click Stolen Goods##237264
Kill Iron Horde mobs |q 38195/1 |goto Nagrand D/0 45.0,35.8 |repeatable
|tip To trigger an Iron Horde invasion, you must kill level 100 mobs for the daily quest or Scouting Missive in the Mok'gol Watchpost.
step
#include "Garrison_ScoutValdez"
turnin Missive: Assault on Mok'gol Watchpost##38195
step
#include "Garrison_Crowler"
accept Iron Horde Invasion!##36655
If the first missive didn't trigger an invasion, click here |confirm |next "start"
step
#include "Garrison_Crowler"
Tell him "_Prepare to battle the Iron Horde._" |q 36655/1 |or 2
Follow Sergeant Crowler |scenariostage 1 |goto Lunarfall/0 49.9,65.0 |or 2
| confirm |or 2
step
Defeat the Iron Horde scouting parties |scenariostage 2 |goto Lunarfall/0 45.6,50.6
|tip Several mobs will spawn before the main assault.
| confirm |or
step
Endure the Iron Horde assault |scenariostage 3 |goto Lunarfall/0 45.6,50.6
|tip Pay particular attention to your front gate, buildings, near the herb garden, and town hall.
| confirm |or
step
Defeat the remaining Iron Horde forces |scenariostage 4 |goto Lunarfall/0 45.6,50.6
|tip Mobs stop spawning at this point. Clean up your garrison courtyard.
| confirm |or
step
Return to the town center |scenariostage 5 |goto Lunarfall/0 45.6,50.6
| confirm |or
step
Defeat the Iron Horde commander |scenariostage 6 |goto Lunarfall/0 45.6,50.6
|tip This boss is elite. Fear not, your garrison will help you defeat it.
| confirm |or
step
#include "Garrison_Crowler"
turnin Iron Horde Invasion!##36655
step
Congratulations, you have earned the _Iron Horde Invasion_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Invasions\\It's an Invasion!",{
achieveid={9152},
patch='60001',
description="\nComplete a garrison invasion.",
},[[
step
_It's an Invasion!_ requires you to complete a garrison invasion
|tip This can be done solo or in a group.
Complete a garrison invasion |achieve 9152
To use our _Botani Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Botani Invasion"
To use our _Goren Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Goren Invasion"
To use our _Iron Horde Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Iron Horde Invasion"
To use our _Ogre Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Ogre Invasion"
To use our _Shadow Council Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Shadow Council Invasion"
To use our _Shadowmoon Clan Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Shadowmoon Clan Invasion"
step
Congratulations, you have earned the _It's an Invasion!_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Invasions\\Master and Commander",{
achieveid={9858},
patch='60100',
description="\nKill all of the garrison invasion raid bosses.",
},[[
step
label "start"
_Master and Commander_ requires you to kill all of the summonable garrison raid bosses.
|tip Each successful garrison invasion has a chance to reward you with an item used to summon a garrison raid boss.
Click here for Teluur's strategy |confirm |next "teluur"
|tip Heart of Oak summons the boss Teluur.
Click here for Gogg'nathog's strategy |confirm |next "gogg"
|tip Acane Highmaul Relic summons the boss Mage Lord Gogg'nathog.
Click here for Gaur's strategy |confirm |next "gaur"
|tip Runed Greatstone summons the boss Gaur.
Click here for Dro'gan's strategy |confirm |next "dro"
|tip Bloodied Iron Horde Banner summons the boss Commander Dro'gan.
Click here for Fleshsear's strategy |confirm |next "fleshsear"
|tip Legion Beacon summons the boss Lady Fleshsear.
Click here for Annihilon's strategy |confirm |next "anni"
|tip Void Prison summons the boss Annihilon.
Kill Teluur |achieve 9858/1
Kill Mage Lord Gogg'nathog |achieve 9858/4
Kill Gaur |achieve 9858/2
Kill Commander Dro'gan |achieve 9858/3
Kill Lady Fleshsear |achieve 9858/5
Kill Annihilon  |achieve 9858/6
|next "end"
step
label "teluur"
kill Teluur##90946 |goto Lunarfall/0 45.8,51.2
_Entanglement:_
|tip Avoid standing in the targeted area. Kill the vines quickly to free players.
_Podling Swarm:_
|tip A swarm of podlings will deal damage to all players. Heal through this.
_Sleepy Spore:_
|tip The sleepy spore will chase players. If it reaches them, anyone nearby will be put to sleep. Dispel the debuff when applicable.
confirm |next "start"
step
label "gogg"
kill Mage Lord Gogg'nathog##90995 |goto Lunarfall/0 45.8,51.2
_Arcane Orb:_
|tip Avoid standing near this, as it deals heavy arcane damage to anyone it touches.
_Arcane Surge:_
|tip Deals heavy arcane damage and leaves a stacking debuff. Dispel this before it reaches 5 stacks or the player will explode.
_Unleashed Energy:_
|tip If you are debuffed with this, move away from allies. You will periodically deal arcane damage to anyone nearby.
confirm |next "start"
step
label "gaur"
kill Gaur##90943 |goto Lunarfall/0 45.8,51.2
_Summon Acidburst Goren:_
|tip Stay away from these goren, they explode when the come in contact with players.
_Earthen Slam:_
|tip This deals heavy damage to the tank and everyone within 45 yards. Healers should prepare cooldowns for this ability.
_Runic Spike:_
|tip You have 3 seconds to move out of these runes. They explode, dealing heavy damage and knocking players back.
confirm |next "start"
step
label "dro"
kill Commander Dro'gan##90841 |goto Lunarfall/0 45.8,51.2
_Chain Grasp:_
|tip This deals damage every second to the affected player and slows their movement speed. Run at least 35 yards away from Dro'gan to break the chain.
_Iron Leap:_
|tip Move away from others or the affected player. Iron leap deals massive physical damage and knocks players back.
_Whirling Axe:_
|tip This is similar to a warrior's Ravager ability. Move away from the spinning axe.
confirm |next "start"
step
label "fleshsear"
kill Lady Fleshsear##91012 |goto Lunarfall/0 45.8,51.2
_Call of Flame:_
|tip Several fireballs will drop to the ground. Do not stand in the targeted areas or your will take heavy fire damage.
_Overwhelming Flames:_
|tip Run away from players if you are affected by this. It deals fire damage over 15 seconds and detonates upon expiration.
_Rain of Fire:_
|tip Deals fire damage in the targeted area, but very easy to avoid.
confirm |next "start"
step
label "anni"
kill Annihilon##90802 |goto Lunarfall/0 45.8,51.2
_Twist Mind:_
|tip A form of mind control that can be broken when the target reaches 50% health. DPS the MC'd players.
_Void Bomb:_
|tip Deals damage to all players. Move away as the bomb does more damage when you are closer to it.
_Whirling Void:_
|tip Deals massive shadow damage and knocks players back. Don't stand in this.
confirm |next "start"
step
label "end"
Congratulations, you have earned the _Master and Commander_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Invasions\\Master Defender",{
achieveid={9209},
patch='60001',
description="\nComplete every garrison invasion with a gold score or higher.",
},[[
step
_Master Defender_ requires you to complete every garrison invasion with a gold rating or higher
|tip This will required a group of at least 3 players to achieve.
|tip Cover the areas of the front gate, archway next to the herb garden, and the main courtyard.
|tip It is critical to focus on keeping NPCs and buildings intact, and killing special enemies such as Rylak, spies, and siege engines.
Earn a gold rating in each of the garrison invasions |achieve 9209
To use our _Botani Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Botani Invasion"
To use our _Goren Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Goren Invasion"
To use our _Iron Horde Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Iron Horde Invasion"
To use our _Ogre Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Ogre Invasion"
To use our _Shadow Council Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Shadow Council Invasion"
To use our _Shadowmoon Clan Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Shadowmoon Clan Invasion"
step
Congratulations, you have earned the _Master Defender_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Invasions\\Ogre Invasion",{
achieveid={9204},
patch='60001',
description="\nComplete an Ogre garrison invasion.",
},[[
step
label "start"
buy 1 Scouting Missive: Stonefury Cliffs##122401 |only if not haveq(38189)
accept Missive: Assault on Stonefury Cliffs##38189 |use Scouting Missive: Stonefury Cliffs##122401 |repeatable
step
kill Bloodmaul Brute##77991+, Bloodmaul Taskmaster##77993+, Bloodmaul Geomancer##78578+, Bloodmaul Magma Shaper##77992+, Bloodmaul Bonecrusher##77995+, Bloodmaul Frostbender##88437+
click Gem-Encrusted Bloodmaul Jewelry Box##233268
click Bloodmaul Cache##233005
clicknpc Draenei Slave##77980
|tip Tell the slave "Take this key and get to safety!" |only if itemcount(113489) > 0
Kill Ogre mobs |q 38189/1 |goto Frostfire Ridge/0 45.4,19.2 |repeatable
|tip To trigger an Ogre invasion, you must kill level 100 mobs for the daily quest or Scouting Missive in the Stonefury Cliffs.
step
#include "Garrison_ScoutValdez"
turnin Missive: Assault on Stonefury Cliffs##38189
step
#include "Garrison_Crowler"
accept Ogre Invasion!##36650
If the first missive didn't trigger an invasion, click here |confirm |next "start"
step
#include "Garrison_Crowler"
Tell him "_Prepare to battle the ogres._" |q 36650/1 |or 2
Follow Sergeant Crowler |scenariostage 1 |goto Lunarfall/0 49.9,65.0 |or 2
| confirm |or 2
step
Defeat the Goren ambush |scenariostage 2 |goto Lunarfall/0 45.6,50.6
|tip Several mobs will spawn before the main assault.
| confirm |or
step
Endure the Goren assault |scenariostage 3 |goto Lunarfall/0 45.6,50.6
|tip Pay particular attention to your front gate, buildings, near the herb garden, and town hall.
| confirm |or
step
Defeat the remaining Goren forces |scenariostage 4 |goto Lunarfall/0 45.6,50.6
|tip Mobs stop spawning at this point. Clean up your garrison courtyard.
| confirm |or
step
Return to the town center |scenariostage 5 |goto Lunarfall/0 45.6,50.6
| confirm |or
step
Defeat the Gronn |scenariostage 6 |goto Lunarfall/0 45.6,50.6
|tip This boss is elite. Fear not, your garrison will help you defeat it.
| confirm |or
step
#include "Garrison_Crowler"
turnin Ogre Invasion!##36650
step
Congratulations, you have earned the _Ogre Invasion_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Invasions\\Platinum Defender",{
achieveid={9826},
patch='60100',
description="\nComplete a garrison invasion with a platinum score or higher.",
},[[
step
A platinum invasion requires a minimum of 1,300 points upon completion
|tip Platinum Defender will required a group of at least 3 players with raid equivalent gear to achieve.
|tip Cover the areas of the front gate, archway next to the herb garden, and the main courtyard.
|tip It is critical to focus on keeping NPCs and buildings intact, and killing special enemies such as Rylak, spies, and siege engines.
|tip For platinum, killing enemies quickly will help you earn enough points.
Complete a garrison invasion with a score of at least 1,300 |achieve 9826
To use our _Botani Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Botani Invasion"
To use our _Goren Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Goren Invasion"
To use our _Iron Horde Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Iron Horde Invasion"
To use our _Ogre Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Ogre Invasion"
To use our _Shadow Council Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Shadow Council Invasion"
To use our _Shadowmoon Clan Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Shadowmoon Clan Invasion"
step
Congratulations, you have earned the _Platinum Defender_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Invasions\\Save Those Buildings!",{
achieveid={9181},
patch='60001',
description="\nComplete all garrison invasions without any buildings being destroyed.",
},[[
step
_Save Those Buildings!_ requires you to complete every garrison invasion without losing a building
|tip This can be done solo or in a group.
|tip Your score does not matter. Focus on defending your buildings for this achievement.
Complete all garrison invasions without any buildings being destroyed |achieve 9181
To use our _Botani Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Botani Invasion"
To use our _Goren Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Goren Invasion"
To use our _Iron Horde Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Iron Horde Invasion"
To use our _Ogre Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Ogre Invasion"
To use our _Shadow Council Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Shadow Council Invasion"
To use our _Shadowmoon Clan Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Shadowmoon Clan Invasion"
step
Congratulations, you have earned the _Save Those Buildings!_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Invasions\\Shadow Council Invasion",{
achieveid={9203},
patch='60001',
description="\nComplete a Shadow Council garrison invasion.",
},[[
step
label "start"
buy 1 Scouting Missive: Shattrath Harbor##122410 |only if not haveq(38201)
accept Missive: Assault on Shattrath Harbor##38201 |use Scouting Missive: Shattrath Harbor##122410 |repeatable
step
kill Sargerei Summoner##84094+, Sargerei Soul-Twister##83004+, Sargerei Huntsman##84055+
clicknpc Captive Sunsworn Honor Guard##85103
Kill Shadow Council mobs |q 38201/1 |goto Talador/0 45.2,22.8 |repeatable
|tip To trigger an Shadow Council invasion, you must kill level 100 mobs for the daily quest or Scouting Missive in Shattrath Harbor.
step
#include "Garrison_ScoutValdez"
turnin Missive: Assault on Shattrath Harbor##38201
step
#include "Garrison_Crowler"
accept Shadow Council Invasion!##36830
If the first missive didn't trigger an invasion, click here |confirm |next "start"
step
#include "Garrison_Crowler"
Tell him "_Prepare to battle the Shadow Council._" |q 36830/1 |or 2
Follow Sergeant Crowler |scenariostage 1 |goto Lunarfall/0 49.9,65.0 |or 2
| confirm |or 2
step
Defeat the Shadow Council ambush |scenariostage 2 |goto Lunarfall/0 45.6,50.6
|tip Several mobs will spawn before the main assault.
| confirm |or
step
Endure the Shadow Council assault |scenariostage 3 |goto Lunarfall/0 45.6,50.6
|tip Pay particular attention to your front gate, buildings, near the herb garden, and town hall.
| confirm |or
step
Defeat the remaining Shadow Council forces |scenariostage 4 |goto Lunarfall/0 45.6,50.6
|tip Mobs stop spawning at this point. Clean up your garrison courtyard.
| confirm |or
step
Return to the town center |scenariostage 5 |goto Lunarfall/0 45.6,50.6
| confirm |or
step
Defeat the Abyssal Invader |scenariostage 6 |goto Lunarfall/0 45.6,50.6
|tip This boss is elite. Fear not, your garrison will help you defeat it.
| confirm |or
step
#include "Garrison_Crowler"
turnin Shadow Council Invasion!##36830
step
Congratulations, you have earned the _Shadow Council Invasion_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Invasions\\Shadowmoon Clan Invasion",{
achieveid={9206},
patch='60001',
description="\nComplete a Shadowmoon Clan garrison invasion.",
},[[
step
label "start"
buy 1 Scouting Missive: Socrethar's Rise##122415 |only if not haveq(38197)
accept Missive: Assault on Socrethar's Rise##38197 |use Scouting Missive: Socrethar's Rise##122415 |repeatable
step
kill Sargerei Acolyte##85168+, Sargerei Worker##84888+, Sargerei Initiate##81605+, Sargerei Demonlord##81543+, Sargerei Demonspeaker##86024+, Sargerei Binder##81542+, Sargerei Darkblade##84945+
Kill Shadowmoon mobs |q 38197/1 |goto Shadowmoon Valley D/0 47.38,75.83 |repeatable
|tip To trigger an Shadowmoon invasion, you must kill level 100 mobs for the daily quest or Scouting Missive in Socrethar's Rise.
step
#include "Garrison_ScoutValdez"
turnin Missive: Assault on Socrethar's Rise##38197
step
#include "Garrison_Crowler"
accept Shadowmoon Invasion!##36412
If the first missive didn't trigger an invasion, click here |confirm |next "start"
step
#include "Garrison_Crowler"
Tell him "_Prepare to battle the Shadowmoon clan._" |q 36412/1 |or 2
Follow Sergeant Crowler |scenariostage 1 |goto Lunarfall/0 49.9,65.0 |or 2
| confirm |or 2
step
Defeat the Shadowmoon ambush |scenariostage 2 |goto Lunarfall/0 45.6,50.6
|tip Several mobs will spawn before the main assault.
| confirm |or
step
Endure the Shadowmoon assault |scenariostage 3 |goto Lunarfall/0 45.6,50.6
|tip Pay particular attention to your front gate, buildings, near the herb garden, and town hall.
| confirm |or
step
Defeat the remaining Shadowmoon forces |scenariostage 4 |goto Lunarfall/0 45.6,50.6
|tip Mobs stop spawning at this point. Clean up your garrison courtyard.
| confirm |or
step
Return to the town center |scenariostage 5 |goto Lunarfall/0 45.6,50.6
| confirm |or
step
Defeat the Void spawn |scenariostage 6 |goto Lunarfall/0 45.6,50.6
|tip This boss is elite. Fear not, your garrison will help you defeat it.
| confirm |or
step
#include "Garrison_Crowler"
turnin Shadowmoon Invasion!##36412
step
Congratulations, you have earned the _Shadowmoon Clan Invasion_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Draenor Garrison\\Invasions\\Silver Defender",{
achieveid={9164},
patch='60001',
description="\nComplete a garrison invasion with a silver score or higher.",
},[[
step
A silver invasion score requires a minimum of 600 points upon completion
|tip Silver Defender will require an ally or decent pre-raid gear. Melee often have a harder time scoring kill points than ranged classes.
Complete a garrison invasion with a score of at least 600 |achieve 9164
To use our _Botani Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Botani Invasion"
To use our _Goren Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Goren Invasion"
To use our _Iron Horde Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Iron Horde Invasion"
To use our _Ogre Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Ogre Invasion"
To use our _Shadow Council Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Shadow Council Invasion"
To use our _Shadowmoon Clan Invasion_ guide, click here |confirm |next "Achievement Guides\\Draenor Garrison\\Invasions\\Shadowmoon Clan Invasion"
step
Congratulations, you have earned the _Silver Defender_ achievement!
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
Make sure to _finish off_ the Arbiter's and Magus's adds
|tip They have different health pools.
_Wait_ for Nyami to spawn adds and kill everything except the Defenders
_Continue_ doing this until you have 12 Defenders collected
|tip You can get a couple more to be safe.
Once there is enough Defenders for the achievement _everyone should burst AOE_
kill Soulbinder Nyami##86218 |goto Auchindoun/1 49.7,66.6
|achieve 9023
step
Congratulations, you have _earned_ the ...They All Fall Down Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Draenor Dungeons\\A Gift of Earth and Fire",{
achieveid={8993},
patch='60001',
description="\nDefeat Magmolatus while Calamity and Ruination are still alive in Bloodmaul Slag Mines on Heroic difficulty.",
},[[
step
_Enter_ the _Bloodmaul Slag Mines_ dungeon on Heroic |goto Bloodmaul Slag Mines/1 51.5,83.3 < 100 |c |noway |or
|confirm |or
step
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
_Enter_ the _Auchindoun_ dungeon |goto Auchindoun/1 49.7,90.2 < 30 |c |noway |or
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
_Enter_ the _Bloodmaul Slag Mines_ dungeon |goto Bloodmaul Slag Mines/1 51.5,83.3 < 100 |c |noway |or
|confirm |or
step
map Bloodmaul Slag Mines/1
path follow loose;loop off;ants straight
path	51.5,83.3	49.0,77.0	49.9,68.7
path	52.6,62.0	53.3,56.9	55.0,46.4
path	53.1,42.1	49.1,33.6	49.4,24.5
path	58.8,23.3
_Follow_ the path |goto Bloodmaul Slag Mines/1 58.8,23.3 < 10 |noway |c
step
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
When Ragewing takes flight the first time _do not kill_ the spawned adds |tip Kite and CC them.
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
_Enter_ the _Bloodmaul Slag Mines_ dungeon on Heroic |goto Bloodmaul Slag Mines/1 51.5,83.3 < 100 |c |noway |or
|confirm |or
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
Croman _will have some small RP_ and then you gain the achievment
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
The entire group should _focus fire the boss_ 100% of the time when they can
The _tank should hold_ the Felguards
|tip In the off chance your tank cannot handle the extra damage of the adds you can attempt with an off tank but it will put a heavy damper on your DPS.
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
There are _eight cycles of drakes in this encounter_ that cycle through so if you don't kill one it will come back after 7 other cycles come through
|tip They do heal during their flight time but not usually to full.
_There is no enrage timer_ for the boss so it's possible to wait if needed
The boss spawns _three adds at 60%_
|tip The tank should focus on the boss while the DPS burn every second drake down.
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
The four Ogron Laborers you need are in the area _after the first boss_
|tip The 3 big Iron Stars are at the west wall.
_Get inside_ the Southernmost Iron Star and _wait_ for all four Laborers to line up
|tip Three of the mobs patrol but one stands still.
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
This achievement was buggy at launch, but _seems to be working now_
|tip The stratgy below works with a well coordinated group.
The _tank in the group should just focus on tanking the boss_ while the other four start _kiting the birds around the main pillar_ in the room
|tip They can be slowed and kited.
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
Make sure _not to kill_ any of the spiders as you kite the packs down towards the boss
|tip You can use a Monk's Keg Smash here to kite efficiently and another tank for the elite mobs.
_Kite the spiders to Bonemaw_ and make sure you have a pool on the ground to avoid being sucked in
_Wait_ for all the spiders to get sucked into Bonemaw
|tip Sometimes it bugs just wait until they finish and the achievement pops.
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
_Follow_ the path |goto Upper Blackrock Spire 2/2 30.4,19.6 < 5 |c |noway
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
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Draenor\\Draenor Pathfinder",{
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
|tip Use the "Hand of the Prophet Dailies", "Order of the Awakened Dailies", and "The Saberstalkers" guides to accomplish this.
step
Congratulations, you earned the _Draenor Pathfinder_ achievement!
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
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Draenor\\Gorgrond Monster Hunter",{
achieveid={9400},
patch='60001',
description="\nSlay the rare elites in Gorgrond.",
},[[
step
_Slay_ the following rare elite in Gorgrond
|tip You can use your shredder to make the fights easier if you build the lumber mill.
kill Erosian the Violent##81540
|achieve 9400/6 |goto Gorgrond 51.8,41.6
step
_Slay_ the following rare elite in Gorgrond
|tip You can use your shredder to make the fights easier if you build the lumber mill.
kill Charl Doomwing##81548
|achieve 9400/7 |goto Gorgrond 46.0,46.8
step
_Slay_ the following rare elite in Gorgrond
|tip You can use your shredder to make the fights easier if you build the lumber mill.
kill Dessicus of the Dead Pools##81529
|achieve 9400/4 |goto Gorgrond 40.0,52.2
step
_Slay_ the following rare elite in Gorgrond
|tip You can use your shredder to make the fights easier if you build the lumber mill.
kill Crater Lord Igneous##81528
|achieve 9400/3 |goto Gorgrond 43.8,59.6
step
_Slay_ the following rare elite in Gorgrond
|tip You can use your shredder to make the fights easier if you build the lumber mill.
kill Khargax the Devourer##81537
|achieve 9400/5 |goto Gorgrond 52.4,65.8
step
_Slay_ the following rare elite in Gorgrond
|tip You can use your shredder to make the fights easier if you build the lumber mill.
kill Fungal Praetorian##80785
|achieve 9400/8 |goto Gorgrond 58.0,63.6
step
_Slay_ the following rare elite in Gorgrond
|tip You can use your shredder to make the fights easier if you build the lumber mill.
kill Roardan the Sky Terror##77093
|achieve 9400/2 |goto Gorgrond 61.6,61.6
step
_Slay_ the following rare elite in Gorgrond
|tip You can use your shredder to make the fights easier if you build the lumber mill.
kill Biolante##75207
|achieve 9400/1 |goto Gorgrond 63.0,54.6
step
Congratulations, you have _earned_ the Gorgrond Monster Hunter Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Draenor\\Grand Treasure Hunter",{
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
_Go through_ the narrow pass here |goto Shadowmoon Valley D/0 47.5,39.5 |only if walking
_Turn left_ on the road |goto Shadowmoon Valley D/0 48.2,40.5 |only if walking
_Follow_ the path and enter the pavillion |goto Shadowmoon Valley D/0 49.2,37.9 |only if walking
_Go up_ the winding ramp |goto Shadowmoon Valley D/0 49.9,37.0 < 10 |only if walking
_Reach the top_ of the ramp |goto Shadowmoon Valley D/0 49.1,36.6 < 10 |only if walking
_Open_ the Astrologer's Box |goto Shadowmoon Valley D/0 49.4,37.6 |only if walking
click Astrologer's Box##226831 |goto Shadowmoon Valley D/0 49.4,37.6
|tip It is a small brown chest in front of the bookcase at the top of a winding ramp.
collect 1 Star Chart##109739 |use Star Chart##109739 |n
Learn the _Star Chart_ toy |toy Star Chart##109739
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
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Draenor\\Jungle Treasure Hunter/Master",{
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
_Run up_ the path |goto Tanaan Jungle/0 48.0,77.3 < 20 |only if walking
_Follow_ the path around |goto Tanaan Jungle/0 49.4,79.0 < 20 |only if walking
_Run up_ here |goto Tanaan Jungle/0 51.1,75.9 < 20 |only if walking
_Carefully_ walk onto the vine here |goto Tanaan Jungle/0 50.7,76.3 < 10 |only if walking
_Carefully_ drop down onto the vine here |goto Tanaan Jungle/0 50.1,75.7 < 10 |only if walking
_Jump down_ to the lower level carefully here |goto Tanaan Jungle/0 49.3,74.9 < 10 |only if walking
_Jump up_ here |goto Tanaan Jungle/0 48.9,75.3 < 20 |only if walking
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
_Enter_ the building |goto Tanaan Jungle/0 32.0,70.8 < 20 |only if walking
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
_Follow_ the path left | goto Tanaan Jungle/0 16.4,48.7 < 20 |only if walking
_Run up_ the path |goto Tanaan Jungle/0 15.9,49.2 < 20 |only if walking
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
click Grappling Hook and Rope##241659 |goto Tanaan Jungle/0 24.7,49.8 < 10 |only if walking
|tip It looks like a coiled up rope on the ground. |only if walking
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
_Jump up_ on the rocks |goto Tanaan Jungle/0 28.9,34.4 < 20 |only if walking
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
_Follow_ the path |goto Tanaan Jungle/0 37.4,44.4 < 20 |only if walking
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
_Enter_ the building |goto Tanaan Jungle/0 42.5,37.8 < 20 |walk
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
_Jump down_ carefully to the flat ledge below here |goto Tanaan Jungle/0 51.7,31.1 < 20 |only if walking
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
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Draenor\\Prove Your Strength",{
achieveid={9402},
patch='60001',
description="\nComplete the following Proofs of Strength in Gorgrond.",
},[[
step
In order to earn this achievement you will _need to have_ the Sparring Arena bulit in Gorgrond
|tip You can swap out your building if you wish, or do this on an alt as the achievement is account wide.
|confirm
step
kill Ogron Spinecrusher##81240+
collect Worn Ogron Horn##114018 |goto Gorgrond 43.6,48.2
use Worn Ogron Horn##114018
accept Proof of Strength: Ogron Horn##36075
step
kill Turbulent Steamfury##81685+
collect Elemental Crystal##114037 |goto Gorgrond 43.8,57.8
use Elemental Crystal##114037
accept Proof of Strength: Elemental Crystal##36105
step
kill Goren Gouger##80690+
collect Acid-Stained Goren Tooth##113586 |goto Gorgrond 46.0,64.2
use Acid-Stained Goren Tooth##113586
accept Proof of Strength: Goren Tooth##35944
step
kill Gronn Rockthrower##80689+
collect Gronn Eye##114022 |goto Gorgrond 45.6,64.6
use Gronn Eye##114022
accept Proof of Strength: Gronn Eye##36081
step
kill Infested Orc##81617+
collect Orc Thorn##114026 |goto Gorgrond 47.4,72.6
use Orc Thorn##114026
accept Proof of Strength: Orc Thorn##36090
step
kill Thicket Ravager##81561+
collect Ravager Claw##114031 |goto Gorgrond 45.6,80.6
use Ravager Claw##114031
accept Proof of Strength: Ravager Claw##36096
step
kill Bloom Weaver##81575+
collect Botani Bloom##114024 |goto Gorgrond 44.0,81.6
use Botani Bloom##114024
accept Proof of Strength: Botani Bloom##36084
step
kill Gronnling Bonebreaker##80685+
collect Gronnling Scale##114020 |goto Gorgrond 47.0,85.0
use Gronnling Scale##114020
accept Proof of Strength: Gronnling Scale##36078
step
kill Mistcreep Stinger##85695+
collect Wasp Stinger##114033 |goto Gorgrond 52.4,67.0
use Wasp Stinger##114033
accept Proof of Strength: Wasp Stinger##36098
step
kill Mire Basilisk##85694+
collect Basilisk Scale##114035 |goto Gorgrond 53.6,66.8
use Basilisk Scale##114035
accept Proof of Strength: Basilisk Scale##36103
step
kill Silent Watcher##81005+
collect Ancient Branch##114029 |goto Gorgrond 56.8,56.0
use Ancient Branch##114029
accept Proof of Strength: Ancient Branch##36092
step
talk Rangari Jonaa##81076
turnin Proof of Strength: Ogron Horn##36075 |goto Gorgrond 52.8,59.8 |achieve 9402/8
turnin Proof of Strength: Elemental Crystal##36105 |goto Gorgrond 52.8,59.8 |achieve 9402/4
turnin Proof of Strength: Goren Tooth##35944 |goto Gorgrond 52.8,59.8 |achieve 9402/5
turnin Proof of Strength: Gronn Eye##36081 |goto Gorgrond 52.8,59.8 |achieve 9402/6
turnin Proof of Strength: Orc Thorn##36090 |goto Gorgrond 52.8,59.8 |achieve 9402/9
turnin Proof of Strength: Ravager Claw##36096 |goto Gorgrond 52.8,59.8 |achieve 9402/10
turnin Proof of Strength: Botani Bloom##36084 |goto Gorgrond 52.8,59.8 |achieve 9402/3
turnin Proof of Strength: Gronnling Scale##36078 |goto Gorgrond 52.8,59.8 |achieve 9402/7
turnin Proof of Strength: Wasp Stinger##36098 |goto Gorgrond 52.8,59.8 |achieve 9402/11
turnin Proof of Strength: Basilisk Scale##36103 |goto Gorgrond 52.8,59.8 |achieve 9402/2
turnin Proof of Strength: Ancient Branch##36092 |goto Gorgrond 52.8,59.8 |achieve 9402/1
step
Congratulations, you have _earned_ the Prove Your Strength Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Draenor\\Shredder Maniac",{
achieveid={9401},
patch='60001',
description="\nLoot 12 or more Hardened Thornvines in Gorgrond.",
},[[
step
In order to earn this achievement you will _need to have_ the Logging Camp bulit in Gorgrond
|confirm
step
_Click_ the below locations to loot #12# or more Hardened Thornvines in Gorgrond |achieve 9401
Hardened Thornvine at [Gorgrond 47.23,51.83]
Hardened Thornvine at [Gorgrond 49.04,48.47]
Hardened Thornvine at [Gorgrond 47.53,43.60]
Hardened Thornvine at [Gorgrond 42.92,43.48]
Hardened Thornvine at [Gorgrond 42.35,54.78]
Hardened Thornvine at [Gorgrond 39.31,56.25]
Hardened Thornvine at [Gorgrond 40.92,67.32]
Hardened Thornvine at [Gorgrond 41.12,77.28]
Hardened Thornvine at [Gorgrond 41.96,81.60]
Hardened Thornvine at [Gorgrond 45.34,81.98]
Hardened Thornvine at [Gorgrond 45.79,89.30]
Hardened Thornvine at [Gorgrond 45.97,93.60]
Hardened Thornvine at [Gorgrond 49.59,78.86]
Hardened Thornvine at [Gorgrond 47.61,76.81]
Hardened Thornvine at [Gorgrond 47.02,69.07]
Hardened Thornvine at [Gorgrond 51.79,69.10]
Hardened Thornvine at [Gorgrond 51.77,61.51]
Hardened Thornvine at [Gorgrond 56.76,57.23]
Hardened Thornvine at [Gorgrond 63.30,57.20]
step
Congratulations, you have _earned_ the Shredder Maniac Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Field Photographer",{
achieveid={9924},
patch='60100',
description="\nTake a picture with the S.E.L.F.I.E. camera in various locations.",
},[[
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. in Moonglade |achieve 9924/29 |goto Moonglade/0 48.0,67.2
step
use the S.E.L.F.I.E. Camera MKI##122637 |only if default
use the S.E.L.F.I.E. Camera MKII##122674 |only if hastoy(122674)
Take a S.E.L.F.I.E. in Nordrassil |achieve 9924/17 |goto Mount Hyjal/0 62.2,21.6
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
Take a S.E.L.F.I.E. in Stormwind |achieve 9924/43 |goto Stormwind City/0 66.5,34.8
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
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Draenor\\Jungle Hunter/Stalker",{
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
_Run down_ the path |goto Tanaan Jungle/0 36.4,76.9 < 20 |only if walking
_Continue_ into the open room |goto Tanaan Jungle/0 36.7,78.9 < 20 |only if walking
kill Captain Ironbeard##93076 |achieve 10070/42 |goto Tanaan Jungle/0 36.4,79.5
|tip He looks like a skeleton that walks around this room, so he may not be in this exact spot.
step
_Enter_ the cave |goto Tanaan Jungle/0 37.3,76.0 < 30 |walk
_Jump down_ here |goto Tanaan Jungle/0 35.0,76.6 < 20 |only if walking
_Jump up_ here |goto Tanaan Jungle/0 34.9,77.2 < 10 |only if walking
_Jump over_ onto the big brown vine |goto Tanaan Jungle/0 34.8,77.5 < 20 |only if walking
click Ironbeard's Treasure##241712
|tip It looks like a big metal chest sitting up on this island inside this cave.
kill Glub'glok##93125 |achieve 10070/43 |goto Tanaan Jungle/0 34.5,77.9
|tip He looks like a big red lobster that spawns after you click the chest.
step
_Leave_ the cave |goto Tanaan Jungle/0 37.3,76.0 < 30 |walk
_Enter_ the hole in the ground |goto Tanaan Jungle/0 36.2,72.4 < 20 |only if walking
kill The Goreclaw##92694 |achieve 10070/39 |goto Tanaan Jungle/0 34.6,72.6
|tip It looks like a big green-blue raptor at the back of this cave.
step
_Leave_ the hole in the ground |goto Tanaan Jungle/0 36.2,72.4 < 20 |only if walking
_Enter_ the hole in the ground |goto Tanaan Jungle/0 42.4,68.9 < 20 |only if walking
_Follow_ the path |goto Tanaan Jungle/0 40.5,69.3 < 30 |only if walking
kill Kris'kar the Unredeemed##93279 |achieve 10070/49 |goto Tanaan Jungle/0 39.6,68.1
|tip He looks like a big yellow bird in this room inside this cave.
step
_Leave_ the hole in the ground |goto Tanaan Jungle/0 42.4,68.9 < 20 |only if walking
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
_Follow_ the path |goto Tanaan Jungle/0 28.9,72.8 < 30 |only if walking
kill Lady Oran##90438 |achieve 10070/6 |goto Tanaan Jungle/0 29.6,70.6
|tip She looks like a brownish colored draenei inside this cave. She may not spawn at this spot, so you may need to search for her between her 2 spawn points.
She can also spawn outside the cave at [Tanaan Jungle/0 32.5,74.0]
step
_Enter_ the cave |goto Tanaan Jungle/0 29.5,70.8 < 30 |walk
_Follow_ the path |goto Tanaan Jungle/0 28.9,72.8 < 30 |only if walking
kill Jax'zor##90437 |achieve 10070/7 |goto Tanaan Jungle/0 26.6,75.0
|tip He looks like a felguard with a big flaming battle axe inside this cave.
step
_Enter_ the cave |goto Tanaan Jungle/0 29.5,70.8 < 30 |walk
_Follow_ the path |goto Tanaan Jungle/0 28.9,72.8 < 30 |only if walking
_Run up_ the ramp |goto Tanaan Jungle/0 26.8,74.5 < 30 |only if walking
_Follow_ the path |goto Tanaan Jungle/0 25.2,74.6 < 30 |only if walking
_Continue_ following the path |goto Tanaan Jungle/0 24.2,75.7 < 30 |only if walking
_Keep following_ the path around |goto Tanaan Jungle/0 24.9,78.6 < 30 |only if walking
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
_Go through_ the doorway |goto Tanaan Jungle/0 18.2,41.2 < 30 |only if walking
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
_Go through_ the doorway |goto Tanaan Jungle/0 37.5,44.5 < 20 |only if walking
_Run up_ the stairs |goto Tanaan Jungle/0 36.9,45.8 < 30 |only if walking
_Continue_ up the stairs |goto Tanaan Jungle/0 35.9,47.4 < 30 |only if walking
_Follow_ the path |goto Tanaan Jungle/0 35.2,47.8 < 20 |only if walking
kill Belgork##92552 |achieve 10070/35 |goto Tanaan Jungle/0 35.6,46.8
|tip He looks like an armored orc holding an axe with spikes on it, standing up on this platform inside this building.
step
_Enter_ the building |goto Tanaan Jungle/0 38.5,44.3 < 30 |walk
_Go through_ the doorway |goto Tanaan Jungle/0 37.5,44.5 < 20 |only if walking
_Run up_ the stairs |goto Tanaan Jungle/0 36.9,45.8 < 30 |only if walking
_Follow_ the path |goto Tanaan Jungle/0 35.6,44.9 < 30 |only if walking
_Continue_ through the tunnel |goto Tanaan Jungle/0 34.5,43.9 < 30 |only if walking
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
_Go through_ the doorway |goto Tanaan Jungle/0 44.3,37.0 < 20 |only if walking
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
_Cross_ the bridge |goto Tanaan Jungle/0 48.4,36.6 < 30 |only if walking
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
_Enter_ the Challenge Arena |goto Tanaan Jungle/0 54.8,80.9 < 20 |walk
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
Congratulations! You earned the: |only if achieved(10070)
_Jungle Hunter_ Achievement |only if achieved(10070)
_Jungle Stalker_ Achievement |only if achieved(10070)
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Draenor\\Explore Tanaan Jungle",{
achieveid={10260},
patch='60200',
description="\nExplore Tanaan Jungle, revealing the covered areas of the world map.",
},[[
step
Complete the following guide before continuing:
_Tanaan Jungle (100) Main Questline_
|confirm
step
Explore Lion's Watch |achieve 10260/10 |goto Tanaan Jungle/0 57.6,59.3
step
_Follow_ the path |goto Tanaan Jungle/0 54.9,64.0 < 30
_Run up_ the path |goto Tanaan Jungle/0 54.0,70.1 < 30
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
_Run up_ the path |goto Tanaan Jungle/0 60.4,42.5 < 30 |only if walking
Explore Vol'mar |achieve 10260/13 |goto Tanaan Jungle/0 61.0,43.9
|tip Be careful, you're entering a Horde camp. Run in quickly, discover the area, and run out.
step
Explore Zeth'Kur |achieve 10260/1 |goto Tanaan Jungle/0 73.1,69.0
step
Congratulations, you earned the _Explore Tanaan Jungle_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Draenor\\I Came, I Clawed, I Conquered",{
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
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Draenor\\Hellbane",{
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
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\General\\Draenor Cuisine",{
achieveid={9502},
patch='60001',
description="\nSample various Draenor foods.",
},[[
step
In order to earn this achievement you will need to _have the following buildings_ in your Garrison
_Tradepost available_
_Herb Garden_
_Fishing Shack_ |tip It is highly recommened that you use what resources you have to buy fish as all the fishing spots are random chance of any fish in Draenor.
|confirm
step
talk Trader Joseph##87211
accept Tricks of the Trade##37088 |goto Lunarfall/0 52.8,43.9
|only if not completedq(37088)
step
clicknpc Tradesman Portanuus##87287
_Use_ the Mug of Rousing Coffeee |use Mug of Rousing Coffee##118418
Trader _roused_ |q 37088/1 |goto Lunarfall/0 57.9,71.8
|only if not completedq(37088)
step
talk Trader Joseph##87211
turnin Tricks of the Trade##37088 |goto Lunarfall/0 52.8,43.9
|only if not completedq(37088)
step
This step is here for the purpose of _checking your progress_ with the achievement
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
If you don't have the ability to cook as well as Fish, and have access to a Trading Post and Herb Garden, _click here_ |next "buyah" |confirm
If you would like to gather your own materials using Garrison resources and cook yourself, _click here_ |next "cook" |confirm
step
label "cook"
talk Tradesman Portanuus##87204
You will _need_ a trading post in your garrison to collect the following items
_Meat_
buy 30 Raw Boar Meat##109136
buy 30 Raw Clefthoof Meat##109131
buy 30 Raw Elekk Meat##109134
buy 30 Raw Riverbeast Meat##109135
buy 30 Raw Talbuk Meat##109132
buy 30 Rylak Egg##109133
Roughly 1440 Garrison Resources _will be required_ to purchase all of these items
step
talk Tradesman Portanuus##87204
_Fish_
buy 60 Abyssal Gulper Eel Flesh##109143
buy 60 Blind Lake Sturgeon Flesh##109140
buy 10 Crescent Saberfish Flesh##109137
buy 60 Fat Sleeper Flesh##109139
buy 60 Fire Ammonite Tentacle##109141
buy 60 Jawless Skulker Flesh##109138
buy 60 Sea Scorpion Segment##109142
Rough 2960 Garrison Resources _will be required_ to purchase all of these items
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
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Blackrock Barbecue##160986,Cooking,1 total
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Blackrock Ham##160962,Cooking,1 total
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Braised Riverbeast##160968,Cooking,1 total
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Calamari Crepes##160999,Cooking,1 total
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Clefthoof Sausages##160971,Cooking,1 total
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Fat Sleeper Cakes##160981,Cooking,1 total
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Fiery Calamari##160982,Cooking,1 total
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Frosty Stew##160987,Cooking,1 total
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Gorgrond Chowder##161000,Cooking,1 total
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Grilled Gulper##160978,Cooking,1 total
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Grilled Saberfish##161002,Cooking,1 total
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Hearty Elekk Steak##160958,Cooking,1 total
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Pan-Seared Talbuk##160966,Cooking,1 total
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Rylak Crepes##160969,Cooking,1 total
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Saberfish Broth##161001,Cooking,1 total
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Skulker Chowder##160983,Cooking,1 total
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Sleeper Surprise##160989,Cooking,1 total
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Steamed Scorpion##160973,Cooking,1 total
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Sturgeon Stew##160979,Cooking,1 total
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Talador Surf and Turf##160984,Cooking,1 total
step
label "buyah"
_If_ you have an Auction Building in your Garrison you can use that. Otherwise
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
_Sample_ the Blackrock Barbeque |achieve 9502/1 |use Blackrock Barbeque##111449
step
_Sample_ the Blackrock Ham |achieve 9502/2 |use Blackrock Ham##111433
step
_Sample_ the Braised Riverbeast |achieve 9502/3 |use Braised Riverbeast##111436
step
_Sample_ the Calamari Crepes |achieve 9502/4 |use Calamari Crepes##111453
step
_Sample_ the Clefthoof Sausages |achieve 9502/5 |use Clefthoof Sausages##111438
step
_Sample_ the Fat Sleeper Cakes |achieve 9502/6 |use Fat Sleeper Cakes##111444
step
_Sample_ the Fiery Calamari |achieve 9502/7 |use Fiery Calamari##111445
step
_Sample_ the Frosty Stew |achieve 9502/8 |use Frosty Stew##111450
step
_Sample_ the Gorground Chowder |achieve 9502/9 |use Gorground Chowder##111454
step
_Sample_ the Grilled Gulper |achieve 9502/10 |use Grilled Gulper##111441
step
_Sample_ the Grilled Saberfish |achieve 9502/11 |use Grilled Saberfish##111456
step
_Sample_ the Hearty Elekk Steak |achieve 9502/12 |use Hearty Elekk Steak##111431
step
_Sample_ the Pan-Seared Talbuk |achieve 9502/13 |use Pan-Seared Talbuk##111434
step
_Sample_ the Rylak Crepes |achieve 9502/14 |use Rylak Crepes##111437
step
_Sample_ the Saberfish Broth |achieve 9502/15 |use Saberfish Broth##111455
step
_Sample_ the Skulker Chowder |achieve 9502/16 |use Skulker Chowder##111446
step
_Sample_ the Sleeper Surprise |achieve 9502/17 |use Sleeper Surprise##111452
step
_Sample_ the Steamed Scorpion |achieve 9502/18 |use Steamed Scorpion##111439
step
_Sample_ the Sturgeon Stew |achieve 9502/19 |use Sturgeon Stew##111442
step
_Sample_ the Talador Surf and Turf |achieve 9502/20 |use Talador Surf and Turf##111447
step
Congratulations, you have _earned_ the Draenor Cuisine Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\General\\Everything Is Awesome",{
achieveid={9547},
patch='60001',
description="\nThrow Twenty Awesomefish.",
},[[
step
For this achievement, you will either need to _buy_ 20 Awesomefish or _gather_ them yourself
_Click here_ to buy from the Auction |confirm
_Click here_ to fish them up |confirm |next "fish"
step
#include "auctioneer"
collect 20 Awesome Fish##118414 |next "toss"
step
label "fish"
_Fish_ in the water here |cast Fishing##7620 |goto Shadowmoon Valley D 27.5,7.0
collect 20 Awesome Fish##118414
step
label "toss"
_Throw_ 20 fish at random players in Stormwind |goto Stormwind City 50.8,77.5
|tip Since the cooldown is 1 minute, it may be in your best interest to do this while you are doing something else.
#20# fish thrown at other players |achieve 9547/1
step
Congratulations, you have _earned_ the Everything Is Awesome Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\General\\Got My Mind On My Draenor Money",{
achieveid={9487},
patch='60001',
description="\nLoot 10,000 gold in Draenor.",
},[[
step
Loot _10,000_ gold in Draenor
|tip The achievemnet is measured in copper.
|achieve 9487/1
step
Congratulations, you have earned the _Got My Mind On My Draenor Money_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\General\\Savagely Epic",{
achieveid={9708},
patch='60002',
description="\nWear an item with a minimal level of 640 or greater in each slot.",
},[[
step
For this achievement you will need to simply _equip_ an Epic (purple) item of at least item level 640 in all your Armor and Weapon slots
For rings and trinkets you can just _equip_ one ring or trinket in both slots seperately
You can either _purchase_ these items from the Auction House or _run dungeons and quests_ for them
|confirm
step
Your progress will be _tracked_ per slot below
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
Congratulations, you have _earned_ the Savagely Epic achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\General\\Savagely Superior",{
achieveid={9707},
patch='60002',
description="\nWear an item with a minimal level of 608 or greater in each slot.",
},[[
step
For this achievement you will need to simply _equip_ a Superior (blue) item of at least item level 608 in all your Armor and Weapon slots
For rings and trinkets you can just _equip_ one ring or trinket in both slots seperately
You can either _purchase_ these items from the Auction House or _run dungeons and quests_ for them
|confirm
step
Your progress will be _tracked_ per slot below
Head |achieve 9707/1
Neck |achieve 9707/2
Shoulder |achieve 9707/3
Chest |achieve 9707/4
Waist |achieve 9707/5
Legs |achieve 9707/6
Feet |achieve 9707/7
Wrist |achieve 9707/8
Hands |achieve 9707/9
Left Ring|achieve 9707/10
Right Ring |achieve 9707/11
First Trinket |achieve 9707/12
Second Trinket |achieve 9707/13
Cloak |achieve 9707/14
Weapon |achieve 9707/15
step
Congratulations, you have _earned_ the Savagely Superior achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Legacy\\Professions\\Draenor Medic",{
achieveid={9505},
patch='60001',
description="\nObtain 700 skill points in First Aid.",
},[[
step
This achievement can no longer be obtained!
|tip It was earned prior to patch 8.0,
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\Collect\\Draenor Safari",{
achieveid={9685},
patch='60002',
description="\nThis achievement was earned prior to patch 8.0 and can no longer be obtained.",
},[[
step
Capturing pets in Draenor _will require_ level 25 pets so train up!
|confirm
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
_Capture_ Zangar Crawler |achieve 9685/18 |goto Shadowmoon Valley D 41.2,16.0
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
Congratulations, you have _earned_ the Draenor Safari Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\Collect\\So. Many. Pets.",{
achieveid={9643},
patch='60001',
description="\nCollect 600 unique pets.",
},[[
step
_Collect_ #600# unique pets |achieve 9643 |tip You can select any pet from the Pet Journal by pressing "Shift+P" and clicking the Zygor icon next to the pet you want.
step
Congratulations, you have _earned_ the So. Many. Pets. Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\Battle\\An Awfully Big Adventure",{
achieveid={9069},
patch='60001',
description="\nDefeat trainers with an Elekk Plushie on your team.",
},[[
step
Defeating all the following trainers with an Elekk Plushie on your team _will require_ level 25 pets so train up!
Two of the trainers are located on Darkmoon Island, and _will need to be completed_ when the Faire is in town
|confirm
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
_Defeat_ Courageous Yon |achieve 9069/11 |goto Kun-Lai Summit 35.8,73.6
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
_Defeat_ Christoph VonFeasel |achieve 9069/10 |goto Darkmoon Island 47.4,62.2
step
_Defeat_ Jeremy Feasel |achieve 9069/20 |goto Darkmoon Island 47.8,62.6
step
Congratulations, you have _earned_ the An Awfully Big Adventure Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\Battle\\Draenic Pet Battler",{
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
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\Level\\Overstuffed",{
achieveid={9070},
patch='60001',
description="\nRaise an Elekk Plushie to level 25.",
},[[
step
_Click here_ to obtain an Elekk Plushie |confirm |next "Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Elekk Plushie"
_Raise_ an Elekk Plushie to level 25 |achieve 9070
step
Congratulations, you have _earned_ the Overstuffed Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\Pet Charmer",{
achieveid={9712},
patch='60002',
description="\nEarn 500 Pet Charms.",
},[[
step
label "start"
Pet Charms are rewarded by _completing_ pet battle dailies versus the trainers in Draenor below
_Click_ to battle Cymre Brightblade |confirm |next "cymre"
_Click_ to battle Ashlei |confirm |next "ashle"
_Click_ to battle Vesharr |confirm |next "vesha"
_Click_ to battle Gargra |confirm |next "gargr"
_Click_ to battle Taralune |confirm |next "teral"
_Click_ to battle Tarr the Terrible |confirm |next "tarrt"
_Earn_ #500# Pet Charms |achieve 9712 |next "end"
step
label "cymre"
talk Cymre Brightblade##83837
accept Cymre Brightblade##37201 |goto Gorgrond 51.1,70.6
|tip Defeat her in pet combat!
step
turnin Cymre Brightblade##37201 |goto Gorgrond 51.1,70.6
|next "start"
step
label "ashle"
talk Ashlei##87124
accept Ashlei##37203 |goto Shadowmoon Valley D 50.0,31.3
|tip Defeat her in pet combat!
step
turnin Ashlei##37203 |goto Shadowmoon Valley D 50.0,31.3
|next "start"
step
label "vesha"
talk Vesharr##87123
accept Vesharr##37207 |goto Spires of Arak 46.3,45.3
|tip Defeat him in pet combat!
step
turnin Vesharr##37207 |goto Spires of Arak 46.3,45.3
|next "start"
step
label "gargr"
talk Gargra##87122
accept Gargra##37205 |goto Frostfire Ridge 68.6,64.8
|tip Defeat him in pet combat!
step
turnin Gargra##37205 |goto Frostfire Ridge 68.6,64.8
|next "start"
step
label "teral"
talk Taralune##87125
accept Taralune##37208 |goto Talador 49.1,80.3
|tip Defeat her in pet combat!
step
turnin Taralune##37208 |goto Talador 49.1,80.3
|next "start"
step
label "tarrt"
talk Tarr the Terrible##87110
accept Tarr the Terrible##37206 |goto Nagrand D 56.2,9.8
|tip Defeat him in pet combat!
step
turnin Tarr the Terrible##37206 |goto Nagrand D 56.2,9.8
|next "start"
step
label "end"
Congratulations, you have _earned_ the Pet Charmer Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Pet Battles\\Taming Draenor",{
achieveid={9724},
patch='60002',
description="\nDefeat all of the Pet Tamers in Draenor.",
},[[
step
label "start"
_Defeat all_ of the Pet Tamers in Draenor listed below
_Click_ to battle Cymre Brightblade |achieve 9724/5 |confirm |next "cymre"
_Click_ to battle Ashlei |achieve 9724/1 |confirm |next "ashle"
_Click_ to battle Vesharr |achieve 9724/6 |confirm |next "vesha"
_Click_ to battle Gargra |achieve 9724/2 |confirm |next "gargr"
_Click_ to battle Taralune |achieve 9724/4 |confirm |next "teral"
_Click_ to battle Tarr the Terrible |achieve 9724/3 |confirm |next "tarrt"
|next "end" |only if achieved(9724)
step
label "cymre"
talk Cymre Brightblade##83837
accept Cymre Brightblade##37201 |goto Gorgrond 51.1,70.6
|tip Defeat her in pet combat!
step
turnin Cymre Brightblade##37201 |goto Gorgrond 51.1,70.6
|next "start"
step
label "ashle"
talk Ashlei##87124
accept Ashlei##37203 |goto Shadowmoon Valley D 50.0,31.3
|tip Defeat her in pet combat!
step
turnin Ashlei##37203 |goto Shadowmoon Valley D 50.0,31.3
|next "start"
step
label "vesha"
talk Vesharr##87123
accept Vesharr##37207 |goto Spires of Arak 46.3,45.3
|tip Defeat him in pet combat!
step
turnin Vesharr##37207 |goto Spires of Arak 46.3,45.3
|next "start"
step
label "gargr"
talk Gargra##87122
accept Gargra##37205 |goto Frostfire Ridge 68.6,64.8
|tip Defeat him in pet combat!
step
turnin Gargra##37205 |goto Frostfire Ridge 68.6,64.8
|next "start"
step
label "teral"
talk Taralune##87125
accept Taralune##37208 |goto Talador 49.1,80.3
|tip Defeat her in pet combat!
step
turnin Taralune##37208 |goto Talador 49.1,80.3
|next "start"
step
label "tarrt"
talk Tarr the Terrible##87110
accept Tarr the Terrible##37206 |goto Nagrand D 56.2,9.8
|tip Defeat him in pet combat!
step
turnin Tarr the Terrible##37206 |goto Nagrand D 56.2,9.8
|next "start"
step
label "end"
Congratulations, you have _earned_ the _Taming Draenor_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Professions\\Cooking\\Draenor Cook",{
achieveid={9500},
patch='60001',
description="\nObtain 100 skill points in Draenor Cooking.",
},[[
step
Obtain 100 Skill Points in Draenor Cooking |achieve 9500
|tip
Click Here to Load the "Draenor Cooking 1-100" Profession Guide |confirm |loadguide "Profession Guides\\Cooking\\Leveling Guides\\Draenor Cooking 1-100"
step
_Congratulations!_
You earned the "Draenor Cook" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Professions\\Cooking\\The Draenor Gourmet",{
achieveid={9501},
patch='60001',
description="\nCook 20 of the Draenor recipes listed below.",
},[[
step
In order to earn this achievement you will need to _have the following buildings_ in your Garrison
_Tradepost available_
_Herb Garden_
_Fishing Shack_
|tip It is highly recommened that you use what resources you have to buy fish as all the fishing spots are random chance of any fish in Draenor.
|confirm
step
talk Trader Joseph##87211
accept Tricks of the Trade##37088 |goto Lunarfall/0 52.8,43.9
|only if not completedq(37088)
step
clicknpc Tradesman Portanuus##87287
_Use_ the Mug of Rousing Coffeee |use Mug of Rousing Coffee##118418
Trader _roused_ |q 37088/1 |goto Lunarfall/0 57.9,71.8
|only if not completedq(37088)
step
talk Trader Joseph##87211
turnin Tricks of the Trade##37088 |goto Lunarfall/0 52.8,43.9
|only if not completedq(37088)
step
This step is here for the purpose of _checking your progress_ with the achievement
Blackrock Barbeque |achieve 9501/1
Blackrock Ham |achieve 9501/2
Braised Riverbeast |achieve 9501/3
Calamari Crepes |achieve 9501/4
Clefthoof Sausages |achieve 9501/5
Fat Sleeper Cakes |achieve 9501/6
Feast of Blood |achieve 9501/7
Feast of the Waters |achieve 9501/8
Fiery Calamari |achieve 9501/9
Frosty Stew |achieve 9501/10
Gorground Chowder |achieve 9501/11
Grilled Gulper |achieve 9501/12
Grilled Saberfish |achieve 9501/13
Hearty Elekk Steak |achieve 9501/14
Pan-Seared Talbuk |achieve 9501/15
Rylak Crepes |achieve 9501/16
Saberfish Broth |achieve 9501/17
Skulker Chowder |achieve 9501/18
Sleeper Surprise |achieve 9501/19
Steamed Scorpion |achieve 9501/20
Sturgeon Stew |achieve 9501/21
Talador Surf and Turf |achieve 9501/22
_Click_ to continue |confirm
step
talk Tradesman Portanuus##87204
You will _need_ a trading post in your garrison to collect the following items
_Meat_
buy 40 Raw Boar Meat##109136
buy 40 Raw Clefthoof Meat##109131
buy 40 Raw Elekk Meat##109134
buy 40 Raw Riverbeast Meat##109135
buy 40 Raw Talbuk Meat##109132
buy 40 Rylak Egg##109133
Roughly 1680 Garrison Resources _will be required_ to purchase all of these items
step
talk Tradesman Portanuus##87204
_Fish_
buy 70 Abyssal Gulper Eel Flesh##109143
buy 70 Blind Lake Sturgeon Flesh##109140
buy 10 Crescent Saberfish Flesh##109137
buy 70 Fat Sleeper Flesh##109139
buy 70 Fire Ammonite Tentacle##109141
buy 70 Jawless Skulker Flesh##109138
buy 70 Sea Scorpion Segment##109142
Rough 3260 Garrison Resources _will be required_ to purchase all of these items
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
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Blackrock Barbecue##160986,Cooking,1 total
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Blackrock Ham##160962,Cooking,1 total
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Braised Riverbeast##160968,Cooking,1 total
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Calamari Crepes##160999,Cooking,1 total
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Clefthoof Sausages##160971,Cooking,1 total
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Fat Sleeper Cakes##160981,Cooking,1 total
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Feast of Blood##173978,Cooking,1 total
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Feast of the Waters##173979,Cooking,1 total
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Fiery Calamari##160982,Cooking,1 total
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Frosty Stew##160987,Cooking,1 total
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Gorgrond Chowder##161000,Cooking,1 total
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Grilled Gulper##160978,Cooking,1 total
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Grilled Saberfish##161002,Cooking,1 total
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Hearty Elekk Steak##160958,Cooking,1 total
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Pan-Seared Talbuk##160966,Cooking,1 total
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Rylak Crepes##160969,Cooking,1 total
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Saberfish Broth##161001,Cooking,1 total
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Skulker Chowder##160983,Cooking,1 total
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Sleeper Surprise##160989,Cooking,1 total
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Steamed Scorpion##160973,Cooking,1 total
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Sturgeon Stew##160979,Cooking,1 total
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Talador Surf and Turf##160984,Cooking,1 total
step
Congratulations, you have _earned_ the The Draenor Gourmet Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Professions\\Fishing\\Draenor Angler",{
condition_end=function() return achieved(9462) end,
achieveid={9455,9456,9457,9458,9459,9460,9461,9462},
patch='60001',
description="\nComplete the Angler achievements.",
},[[
step
label "start"
_Click_ the Angler achievements listed below to complete them
You have _completed_ all of the achievements below
|tip You have this earned on your account, however you can earn it on each character again. |next "end" |only if achieved(9462)
Sea Scorpion Angler |achieve 9462/1 |confirm |next "scorp"
Jawless Skulker Angler |achieve 9462/2 |confirm |next "skulk"
Fat Sleeper Angler |achieve 9462/3 |confirm |next "sleep"
Blind Lake Sturgeon Angler |achieve 9462/4 |confirm |next "blake"
Blackwater Whiptail Angler |achieve 9462/5 |confirm |next "bwhip"
Abyssal Gulper Eel Angler |achieve 9462/6 |confirm |next "agulp"
Fire Ammonite Angler |achieve 9462/7 |confirm |next "firea"
step
label "blake"
use Blind Lake Sturgeon Bait##110290
|tip Use bait on cooldown.
_Catch_ 100 Enormous Blind Lake Sturgeon fish in Draenor
_Fish here_ until you earn the achievement |achieve 9458 |goto Shadowmoon Valley D 48.5,34.1
|next "start"
step
label "bwhip"
use Blackwater Whiptail Bait##110294
|tip Use bait on cooldown.
_Catch_ 100 Enormous Blackwater Whiptail fish in Draenor
_Fish here_ until you earn the achievement |achieve 9457 |goto Talador 78.9,54.6
|next "start"
step
label "agulp"
use Abyssal Gulper Eel Bait##110293
|tip Use bait on cooldown.
_Catch_ 100 Enormous Abyssal Gulper Eel in Draenor
_Fish here_ until you earn the achievement |achieve 9456 |goto Spires of Arak 51.5,32.9
step
label "sleep"
use Fat Sleeper Bait##110289
|tip Use bait on cooldown.
_Catch_ 100 Enormous Fat Sleeper fish in Draenor
_Fish here_ until you earn the achievement |achieve 9459 |goto Nagrand D 84.5,43.7
step
label "firea"
use Fire Ammonite Bait##110291
|tip Use bait on cooldown.
_Catch_ 100 Enormous Fire Ammonite fish in Draenor
_Fish here_ until you earn the achievement |achieve 9455 |goto Frostfire Ridge 51.0,59.1
step
label "skulk"
use Jawless Skulker Bait##110274
|tip Use bait on cooldown.
_Catch_ 100 Enormous Jawless Skulker fish in Draenor
_Fish here_ until you earn the achievement |achieve 9460 |goto Gorgrond 40.4,76.5
step
label "scorp"
use Sea Scorpion Bait##110292
|tip Use bait on cooldown.
_Catch_ 100 Enormous Sea Scorpion fish in Draenor
_Fish here_ until you earn the achievement |achieve 9461 |goto Frostfire Ridge 56.2,75.4
step
label "end"
Congratulations, you have _earned_ the Draenor Angler Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Professions\\Fishing\\Draenor Fisherman",{
achieveid={9503},
patch='60001',
description="\nObtain 700 skill points in fishing.",
},[[
step
To obtain 700 skill points in Fishing _click here_ |confirm |next "Profession Guides\\Fishing\\Leveling Guides\\Fishing 600-700 Leveling Guide"
|achieve 9503
step
Congratulations, you have _earned_ the Draenor Fisherman Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Professions\\Archaeology\\Arakkoa Archivist",{
achieveid={9412},
patch='60001',
description="\nRestore and display pristine versions of all Arakkoa artifacts.",
},[[
step
_Restore and display_ pristine versions of all Arakkoa artifacts listed below
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
Congratulations, you have _earned_ the Arakkoa Archivist Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Professions\\Archaeology\\Draenor Archaeologist",{
achieveid={9409},
patch='60001',
description="\nObtain 700 skill points in archaeology.",
},[[
step
Obtain 700 Skill Points in Archaeology |achieve 9409 |or
|tip
Click Here to Load the "Archaeology 600-700" Profession Guide |confirm |loadguide "Profession Guides\\Archaeology\\Leveling Guides\\Archaeology 600-700" |or
step
_Congratulations!_
You earned the "Draenor Archaeologist" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Professions\\Archaeology\\Draenor Curator",{
achieveid={9419},
patch='60001',
description="\nRestore and display pristine versions of all Draenor artifacts.",
},[[
step
Click Here to Load the "Archaeology 600-700" Profession Guide |confirm |loadguide "Profession Guides\\Archaeology\\Leveling Guides\\Archaeology 600-700"
_OR_
_Click here_ to continue |confirm |next
step
_Restore and display_ pristine versions of all Draenor artifacts listed below
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
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Professions\\Archaeology\\Highmaul Historian",{
achieveid={9411},
patch='60001',
description="\nRestore and display pristine versions of all Ogre artifacts.",
},[[
step
Click Here to Load the "Archaeology 600-700" Profession Guide |confirm |loadguide "Profession Guides\\Archaeology\\Leveling Guides\\Archaeology 600-700"
_OR_
_Click here_ to continue |confirm |next
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
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Professions\\Archaeology\\Ogre Observer",{
achieveid={9414},
patch='60001',
description="\nDiscover the Ogre artifacts.",
},[[
step
Click Here to Load the "Archaeology 600-700" Profession Guide |confirm |loadguide "Profession Guides\\Archaeology\\Leveling Guides\\Archaeology 600-700"
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
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Professions\\Archaeology\\Secrets of Skettis",{
achieveid={9415},
patch='60001',
description="\nDiscover the Arakkoa artifacts.",
},[[
step
Click Here to Load the "Archaeology 600-700" Profession Guide |confirm |loadguide "Profession Guides\\Archaeology\\Leveling Guides\\Archaeology 600-700"
_OR_
_Click here_ to continue |confirm |next
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
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Professions\\Archaeology\\Strength and Honor",{
achieveid={9413},
patch='60001',
description="\nDiscover the Draenor Clans artifacts.",
},[[
step
Click Here to Load the "Archaeology 600-700" Profession Guide |confirm |loadguide "Profession Guides\\Archaeology\\Leveling Guides\\Archaeology 600-700"
_OR_
_Click here_ to continue |confirm |next
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
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Professions\\Archaeology\\The Search For Fact, Not Truth",{
achieveid={9422},
patch='60001',
description="\nFind 30 rare artifacts.",
},[[
step
Click Here to Load the "Archaeology 600-700" Profession Guide |confirm |loadguide "Profession Guides\\Archaeology\\Leveling Guides\\Archaeology 600-700"
_OR_
_Click here_ to continue |confirm |next
step
_Find_ #30# rare artifacts |achieve 9422
|tip These are randomly solved with Archaeology so don't give up!
step
Congratulations, you have _earned_ the The Search For Fact, Not Truth Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Professions\\Archaeology\\Unite the Clans",{
achieveid={9410},
patch='60001',
description="\nRestore and display pristine versions of all Draenor Clans artifacts.",
},[[
step
Click Here to Load the "Archaeology 600-700" Profession Guide |confirm |loadguide "Profession Guides\\Archaeology\\Leveling Guides\\Archaeology 600-700"
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
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Professions\\Draenic Stone Collector",{
achieveid={9453},
patch='60001',
description="\nCollect 500 Draenic Stones.",
},[[
step
Draenic Stone can be _acquired_ through garrison mining slowly every day
|tip Having the mining profession allows you to gain the stone through regular mining nodes in Draenor.
Collecting 500 is _required_ for level 3 garrison mine
|tip The achievemnt is account wide so you can do this on an alt instead of dropping a profession if you please.
_Collect_ #500# Draenic Stones |achieve 9453
step
Congratulations, you have _earned_ the Draenic Stone Collector Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Professions\\Professional Draenor Master",{
achieveid={9464},
patch='60001',
description="\nObtain 100 skill points in a Draenor primary profession.",
},[[
step
Earn 100 Skill Points in Any Draenor Primary Profession |achieve 9464
|tip
Click Here to Load the "Alchemy 1-100" Profession Guide |confirm |next "Profession Guides\\Alchemy\\Leveling Guides\\Draenor Alchemy 1-100"
Click Here to Load the "Blacksmithing 1-100" Profession Guide |confirm |next "Profession Guides\\Blacksmithing\\Leveling Guides\\Draenor Blacksmithing 1-100"
Click Here to Load the "Enchanting 1-100" Profession Guide |confirm |next "Profession Guides\\Enchanting\\Leveling Guides\\Draenor Enchanting 1-100"
Click Here to Load the "Engineering 1-100" Profession Guide |confirm |next "Profession Guides\\Engineering\\Leveling Guides\\Draenor Engineering 1-100"
Click Here to Load the "Herbalism 1-100" Profession Guide |confirm |next "Profession Guides\\Herbalism\\Leveling Guides\\Draenor Herbalism 1-100"
Click Here to Load the "Inscription 1-100" Profession Guide |confirm |next "Profession Guides\\Inscription\\Leveling Guides\\Draenor Inscription 1-100"
Click Here to Load the "Jewelcrafting 1-100" Profession Guide |confirm |next "Profession Guides\\Jewelcrafting\\Leveling Guides\\Draenor Jewelcrafting 1-100"
Click Here to Load the "Leatherworking 1-100" Profession Guide |confirm |next "Profession Guides\\Leatherworking\\Leveling Guides\\Draenor Leatherworking 1-100"
Click Here to Load the "Mining 1-100" Profession Guide |confirm |next "Profession Guides\\Mining\\Leveling Guides\\Draenor Mining 1-100"
Click Here to Load the "Skinning 1-100" Profession Guide |confirm |next "Profession Guides\\Skinning\\Leveling Guides\\Draenor Skinning 1-100"
Click Here to Load the "Tailoring 1-100" Profession Guide |confirm |next "Profession Guides\\Tailoring\\Leveling Guides\\Draenor Tailoring 1-100"
step
_Congratulations!_
You earned the "Professional Draenor Master" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Professions\\Grand Master of All",{
achieveid={9087},
patch='60001',
description="\nRaise all Draenor primary professions to 100 skill points.",
},[[
step
_Raise_ all primary professions to 700 skill points |achieve 9087
|tip
Click Here to Load the "Alchemy 1-100" Profession Guide |achieve 9087/1 |confirm |next "Profession Guides\\Alchemy\\Leveling Guides\\Draenor Alchemy 1-100"
Click Here to Load the "Blacksmithing 1-100" Profession Guide |achieve 9087/2 |confirm |next "Profession Guides\\Blacksmithing\\Leveling Guides\\Draenor Blacksmithing 1-100"
Click Here to Load the "Enchanting 1-100" Profession Guide |achieve 9087/3 |confirm |next "Profession Guides\\Enchanting\\Leveling Guides\\Draenor Enchanting 1-100"
Click Here to Load the "Engineering 1-100" Profession Guide |achieve 9087/4 |confirm |next "Profession Guides\\Engineering\\Leveling Guides\\Draenor Engineering 1-100"
Click Here to Load the "Herbalism 1-100" Profession Guide |achieve 9087/5 |confirm |next "Profession Guides\\Herbalism\\Leveling Guides\\Draenor Herbalism 1-100"
Click Here to Load the "Inscription 1-100" Profession Guide |achieve 9087/6 |confirm |next "Profession Guides\\Inscription\\Leveling Guides\\Draenor Inscription 1-100"
Click Here to Load the "Jewelcrafting 1-100" Profession Guide |achieve 9087/7 |confirm |next "Profession Guides\\Jewelcrafting\\Leveling Guides\\Draenor Jewelcrafting 1-100"
Click Here to Load the "Leatherworking 1-100" Profession Guide |achieve 9087/8 |confirm |next "Profession Guides\\Leatherworking\\Leveling Guides\\Draenor Leatherworking 1-100"
Click Here to Load the "Mining 1-100" Profession Guide |achieve 9087/9 |confirm |next "Profession Guides\\Mining\\Leveling Guides\\Draenor Mining 1-100"
Click Here to Load the "Skinning 1-100" Profession Guide |achieve 9087/10 |confirm |next "Profession Guides\\Skinning\\Leveling Guides\\Draenor Skinning 1-100"
Click Here to Load the "Tailoring 1-100" Profession Guide |achieve 9087/11 |confirm |next "Profession Guides\\Tailoring\\Leveling Guides\\Draenor Tailoring 1-100"
step
Congratulations, you have _earned_ the Grand Master of All Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Professions\\Inspector Gadgetzan",{
achieveid={9071},
patch='60001',
description="\nAcquire decoded messages from Blingtron 5000.",
},[[
step
_Acquire_ the decoded messages from Blingtron 5000 listed below
|tip Blingtron 5000 offers a daily from which these messages are gained.
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
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Professions\\Working in Draenor",{
achieveid={9507},
patch='60001',
description="\nObtain 100 skill points in two Draenor primary professions.",
},[[
step
Earn 100 Skill Points in Two Draenor Primary Professions |achieve 9507
|tip
Click Here to Load the "Alchemy 1-100" Profession Guide |confirm |next "Profession Guides\\Alchemy\\Leveling Guides\\Draenor Alchemy 1-100"
Click Here to Load the "Blacksmithing 1-100" Profession Guide |confirm |next "Profession Guides\\Blacksmithing\\Leveling Guides\\Draenor Blacksmithing 1-100"
Click Here to Load the "Enchanting 1-100" Profession Guide |confirm |next "Profession Guides\\Enchanting\\Leveling Guides\\Draenor Enchanting 1-100"
Click Here to Load the "Engineering 1-100" Profession Guide |confirm |next "Profession Guides\\Engineering\\Leveling Guides\\Draenor Engineering 1-100"
Click Here to Load the "Herbalism 1-100" Profession Guide |confirm |next "Profession Guides\\Herbalism\\Leveling Guides\\Draenor Herbalism 1-100"
Click Here to Load the "Inscription 1-100" Profession Guide |confirm |next "Profession Guides\\Inscription\\Leveling Guides\\Draenor Inscription 1-100"
Click Here to Load the "Jewelcrafting 1-100" Profession Guide |confirm |next "Profession Guides\\Jewelcrafting\\Leveling Guides\\Draenor Jewelcrafting 1-100"
Click Here to Load the "Leatherworking 1-100" Profession Guide |confirm |next "Profession Guides\\Leatherworking\\Leveling Guides\\Draenor Leatherworking 1-100"
Click Here to Load the "Mining 1-100" Profession Guide |confirm |next "Profession Guides\\Mining\\Leveling Guides\\Draenor Mining 1-100"
Click Here to Load the "Skinning 1-100" Profession Guide |confirm |next "Profession Guides\\Skinning\\Leveling Guides\\Draenor Skinning 1-100"
Click Here to Load the "Tailoring 1-100" Profession Guide |confirm |next "Profession Guides\\Tailoring\\Leveling Guides\\Draenor Tailoring 1-100"
step
_Congratulations!_
You earned the "Working in Draenor" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\A Demidos of Reality",{
achieveid={9437},
patch='60001',
description="\nDefeat Demidos, Devourer of Lights in Socrethar's Rise.",
},[[
step
This achievement _can only be completed_ during the Assault on Socrethar's Rise
accept Assault on Socrethar's Rise##37631 |goto Shadowmoon Valley D 43.88,77.46
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in
|tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you.
|confirm
step
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
accept Assault on Pillars of Fate##36682 |goto Lunarfall/0 31.51,31.18
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in
|tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you.
|confirm
step
_Defeat_ Kenos without using Void Implosion to slay any Coalesced Void Fragments in the Shadowmoon Enclave
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
|tip This will more than likely require some help from friends.
kill Swift Onyx Flayer##88582
|achieve 9678/1 |goto Gorgrond/0 59.5,32.0
step
_Slay_ the following rare elite in the Everbloom Wilds
|tip This will more than likely require some help from friends.
kill Basten##86257
|achieve 9678/3 |goto Gorgrond 69.2,44.6
step
_Slay_ the following rare elite in the Everbloom Wilds
|tip This will more than likely require some help from friends.
kill Alkali##86268
|achieve 9678/5 |goto Gorgrond 71.0,39.0
step
_Slay_ the following rare elite in the Everbloom Wilds
|tip This will more than likely require some help from friends.
kill Firestarter Grash##88580
|achieve 9678/7 |goto Gorgrond 72.8,35.8
step
_Slay_ the following rare elite in the Everbloom Wilds
|tip This will more than likely require some help from friends.
kill Hunter Bal'ra##88672
|achieve 9678/9 |goto Gorgrond 55.0,46.6
step
_Slay_ the following rare elite in the Everbloom Wilds
|tip This will more than likely require some help from friends.
kill Mogamago##88586
|achieve 9678/2 |goto Gorgrond 61.8,39.3
step
_Slay_ the following rare elite in the Everbloom Wilds
|tip This will more than likely require some help from friends.
kill Venolasix##86266
|achieve 9678/4 |goto Gorgrond 63.8,31.6
step
_Slay_ the following rare elite in the Everbloom Wilds
|tip This will more than likely require some help from friends.
kill Depthroot##82058
|achieve 9678/6 |goto Gorgrond 57.6,35.8
step
_Slay_ the following rare elite in the Everbloom Wilds
|tip This will more than likely require some help from friends.
kill Grove Warden Yal##88583
|achieve 9678/8 |goto Gorgrond 59.6,43.0
step
Congratulations, you have _earned_ the Ancient No More Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Arak Star",{
achieveid={9605},
patch='60001',
description="\nComplete the Spires of Arak bonus objectives.",
},[[
step
label "start"
_Click_ the Spires of Arak bonus objectives listed below to complete them |only if not achieved(9605)
You have _completed_ all of the achievements below
|tip You have this earned on your account, however you can earn it on each character again. |next "end" |only if achieved(9605)
The Howling Crag |achieve 9605/1 |confirm |next "hcrag"
Bloodmane Pridelands |achieve 9605/2 |confirm |next "blands"
The Writhing Mire |achieve 9605/3 |confirm |next "wmire"
Bladefist Hold |achieve 9605/4 |confirm |next "bhold"
step
label "hcrag"
_Follow_ the path |goto Spires of Arak 60.6,38.2 < 10 |only if walking
_Run through_ the hills avoiding mobs |goto Spires of Arak 60.0,37.9 < 10 |only if walking
_Follow_ the path |goto Spires of Arak 58.6,32.5 < 20 |only if walking
_Run on_ the road |goto Spires of Arak 59.0,27.4 < 20 |only if walking
accept Bonus Objective: The Howling Crag##36590 |goto 61.5,25.1
stickystart "thc1"
step
accept Bonus Objective: The Howling Crag##36590
_Go down_ the ramp |goto Spires of Arak/0 63.8,25.3 < 20 |only if walking
_Follow_ the path |goto Spires of Arak 65.0,25.1 < 20 |only if walking
_Enter_ the cave |goto 64.8,24.1 < 20 |walk
kill Insane Nullifier##85902
_Distrupt_ the Ritual of the Void |q 36590/4 |goto Spires of Arak/0 63.0,23.2
step
accept Bonus Objective: The Howling Crag##36590
_Leave_ the cave | goto Spires of Arak 65.0,24.2 < 20 |walk
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
_Leave_ the cave |goto Spires of Arak/0 64.8,25.8 |walk
_Enter_ the cave |goto Spires of Arak/0 66.7,26.5 < 20 |walk
from Vile Siphonmaster##77767
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
_Follow_ the path up |goto Spires of Arak 66.8,30.8 < 10  |only if walking
click Rylak Egg##236010
|tip They look like a big gray eggs in nests on the ground around this area.
_Destroy_ #5# Rylak Eggs |q 36590/2 |goto Spires of Arak 67.2,28.0
More eggs can be _found_ on this cliff [64.2,26.9]
Even more eggs can be _found_ on this cliff [63.2,23.6]
step
label "thc1"
accept Bonus Objective: The Howling Crag##36590
kill Irradiated Jawbreaker##86044, Raving Venomslasher##85893, Twisted Bilecaster##85894
kill 15 Pale Orcs |q 36590/1
|achieve 9605/1
_Click_ here to return to the menu |confirm always |next "start"
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
_Click_ here to return to the menu |confirm always |next "start"
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
_Click_ here to return to the menu |confirm always |next "start"
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
_Enter_ the building |goto Spires of Arak 28.0,27.3 < 10 |walk
_Run up_ the stairs all the way to the top |goto Spires of Arak 27.7,27.1 < 10 |walk
kill Val'dune Fleshcrafter##86482 |q 36792/6 |goto Spires of Arak/0 27.9,26.9
|tip He's Elite so you may need a group.
step
label "bonusbladefist2"
accept Bonus Objective: Bladefist Hold##36792
kill Shattered Hand Brawler##86285+, Shattered Hand Cutter##86296+, Bladefist Ravager##86286+, Shattered Hand Blood-Twister##86295+, Shattered Hand Dominator##86416+, Shattered Hand Orc##86399+
kill 25 Shattered Hand Orc |q 36792/1 |goto Spires of Arak/0 30.5,27.4
|achieve 9605/4
_Click_ here to return to the menu |confirm always |next "start"
step
label "end"
Congratulations, you have _earned_ the Arak Star Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\As I Walk Through the Valley of the Shadow of Moon", {
achieveid={8845},
patch='60001',
description="\nComplete the Shadowmoon Valley storylines.",
},[[
step
_Complete_ the Shadowmoon Valley storylines listed below
Establishing a Foothold |achieve 8845/1
Dark Side of the Moon |achieve 8845/2
Gloomshade Grove |achieve 8845/3
Purifying the Gene Pool |achieve 8845/7
Shadows Awaken |achieve 8845/4
The Light Prevails |achieve 8845/5
The Pursuit of Justice |achieve 8845/6
_Please refer to our Shadowmoon Valley leveling guide_ to earn this achievement
step
Congratulations, you have _earned_ the As I Walk Through the Valley of the Shadow of Moon Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Between Arak and a Hard Place", {
achieveid={8925},
patch='60001',
description="\nComplete the Spires of Arak storylines.",
},[[
step
_Complete_ the Spires of Arak storylines listed below
Shadows Gather |achieve 8925/2
Admiral Taylor's Garrison |achieve 8925/1
Secrets of the Talonpriests |achieve 8925/3
The Gods of Arak |achieve 8925/4
Legacy of the Apexis |achieve 8925/5
Terokk's Legend |achieve 8925/6
Securing Southport |achieve 8925/9
Pinchwhistle Gearworks |achieve 8925/8
When the Raven Swallows the Day |achieve 8925/7
_Please refer to our Spires of Arak leveling guide_ to earn this achievement
step
Congratulations, you have _earned_ the Between Arak and a Hard Place Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Bobbing for Orcs",{
achieveid={9635},
patch='60001',
description="\nDispose of 40 floating orcs in Shattrath City.",
},[[
step
This achievement _can only be completed_ during the Assault on Shattrath Harbor daily
accept Assault on Shattrath Harbor##36649 |goto Lunarfall/0 31.51,31.18
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in
|tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you.
|confirm
step
_Drag_ the floating orc corpses to dry land and _set them on fire_
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
accept Assault on Stonefury Cliffs##36648 |goto Lunarfall/0 31.51,31.18
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in
|tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you.
|confirm
step
_Free_ #50# slaves from captivity in the Bloodmaul Stronghold |achieve 9533 |goto Frostfire Ridge 43.0,15.6
|tip They must be the slaves in cages and not the slaves that are working.
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
accept Assault on the Broken Precipice##36677 |goto Lunarfall/0 31.51,31.18
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in
|tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you.
|confirm
step
_Defeat_ the foes within Broken Precipice listed below
kill Durg Spinecrusher##87788
|tip Seems to be on a 30 minute respawn timer.
|achieve 9571/1 |goto Nagrand D 36.0,23.6
kill Bonebreaker##87837
|tip Seems to be on a 30 minute respawn timer.
|achieve 9571/2 |goto Nagrand D 38,15
kill Pit Slayer##87846
|tip Summoned by smashing the head on the pike that is located in the arena styled area of the precipice.
|achieve 9571/3 |goto Nagrand D 38.8,13.8
step
Congratulations, you have _earned_ the Broke Back Precipice Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Buried Treasures",{
achieveid={9548},
patch='60001',
description="\nFind all of the Warsong objects within Mok'gol Watchpost.",
},[[
step
This achievement _can only be completed_ during the Assault on Mok'gol Watchpost daily
accept Assault on Mok'gol Watchpost##36678 |goto Lunarfall/0 31.51,31.18
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in
|tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you.
|confirm
step
Find all of the Warsong objects_ within Mok'gol Watchpost
clicknpc Garrosh's Shackles##87522 |achieve 9548/1 |goto Nagrand D 41.6,37.4
|tip Inside the hut.
clicknpc Warsong Relics##87524 |achieve 9548/2 |goto Nagrand D/0 45.5,36.8
|tip Leaning against the fence (may have other locations).
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
This achievement _can only be completed_ during the Assault on the Everbloom Wilds daily
accept Assault on the Everbloom Wilds##36676 |goto Lunarfall/0 31.51,31.18
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in
|tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you.
|confirm
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
accept Assault on Magnarok##36675 |goto Lunarfall/0 31.51,31.18
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in
|tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you.
|confirm
step
_Complete_ the quest "Rekindling an Old Flame" without using a Kindling Flame to rekindle the essence in Magnarok
talk Firaga##87971
accept Rekindling an Old Flame##37204
step
_Make your way_ back down the steps wihout using a Kindling Flame to keep the flame lit
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
achieveid={10021},
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
accept Assault on Shattrath Harbor##36649 |goto Lunarfall/0 31.51,31.18
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in
|tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you.
|confirm
step
_Stand_ near a Tainted Arkonite Crystal to get Arkonite Empowerment buff
|tip Do NOT break the crystal!
_Defeat_ #30# Shadow Council members while under the effects of Arkonite Empowerment in Shattrath City |achieve 9634 |goto Talador 41.5,21.3
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
|tip The will more than likely require some help from friends.
kill Bombardier Gu'gok##87597
|achieve 9633/1 |goto Talador 44.0,38.0
step
_Slay_ the following rare elite in Shattrath City
|tip The will more than likely require some help from friends.
kill Gug'tol##83019
|achieve 9633/2 |goto Talador 47.6,39.0
step
_Slay_ the following rare elite in Shattrath City
|tip The will more than likely require some help from friends.
kill Haakun the All-Consuming##83008
|achieve 9633/3 |goto Talador 48.0,25.4
step
_Slay_ the following rare elite in Shattrath City
|tip The will more than likely require some help from friends.
kill Felfire Consort##82992
|achieve 9633/4 |goto Talador 50.2,35.2
step
_Slay_ the following rare elite in Shattrath City
|tip The will more than likely require some help from friends.
kill Avatar of Socrethar##88043
|achieve 9633/5 |goto Talador 46.6,35.2
step
_Slay_ the following rare elite in Shattrath City
|tip The will more than likely require some help from friends.
kill Sargerei War Council##88071
|achieve 9633/6 |goto Talador 46.0,27.4
step
_Slay_ the following rare elite in Shattrath City
|tip The will more than likely require some help from friends.
kill Legion Vanguard##88494
|achieve 9633/7 |goto Talador 37.8,21.4
step
_Slay_ the following rare elite in Shattrath City
|tip The will more than likely require some help from friends.
kill Xothear, the Destroyer##82922
|achieve 9633/8 |goto Talador 38.0,14.6
step
Congratulations, you have _earned_ the Cut off the Head Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Delectable Ogre Delicacies", {
achieveid={9534},
patch='60001',
description="\nGain the well fed effects from Toasted Roach Crunchies, Pickled Rat Skewers, and Charred Boar Chops at the same time in Bloodmaul Stronghold.",
},[[
step
This achievement _can only be completed_ during the Assault on Stonefury Cliffs daily
accept Assault on Stonefury Cliffs##36648 |goto Lunarfall/0 31.51,31.18
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in
|tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you.
|confirm
step
Inside the building you'll find two spawn points inside by the fire pit
You'll find a third spawn directly across from the building at a stone table |tip The spawns are random.
clicknpc Toasted Roach Crunchies##82801
|tip Grants increased movement speed for 5 minutes.
clicknpc Pickled Rat Skewers##
|tip Grants 25% haste for 2 minutes.
clicknpc Charred Boar Chops##82823
|tip Reduces damage taken by 50% for 2 minutes.
|achieve 9534 |goto Frostfire Ridge 48,15
step
Congratulations, you have _earned_ the Delectable Ogre Delicacies Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Don't Let the Tala-door Hit You on the Way Out", {
achieveid={8920},
patch='60001',
description="\nComplete the Talador storylines.",
},[[
step
_Complete_ the Talador storylines listed below
Establishing your Outpost |achieve 8920/1
The Battle for Shattrath |achieve 8920/2
The Plight of the Arakkoa |achieve 8920/3
In the Shadows of Auchidoun |achieve 8920/4
_Please refer to our Talador leveling guide_ to earn this achievement
step
Congratulations, you have _earned_ the Don't Let the Tala-door Hit You on the Way Out Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Draenor's Last Stand",{
achieveid={10068},
patch='60200',
description="\nThis guide will walk you through completing the Draenor's Last Stand achievement.",
},[[
step
click Tanaan Planning Map##241725 |goto Tanaan Jungle/0 58.5,60.4
|tip It looks like a rectangle table with a map laying on it.
Complete the daily objectives for these areas:
|tip You will be given a choice each day between two areas to do a daily objective for. Pick whichever one you need, if it's available. Use the "Hand of the Prophet" dailies guide to accomplish this.
Ironhold Harbor |achieve 10068/1
Ruins of Kra'nak |achieve 10068/2
Temple of Sha'naar |achieve 10068/3
The Fel Forge |achieve 10068/4
The Iron Front |achieve 10068/5
Throne of Kil'jaeden |achieve 10068/6
Zeth'gol |achieve 10068/7
step
Congratulations, you earned the _Draenor's Last Stand_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Eggs in One Basket",{
achieveid={9612},
patch='60001',
description="\nEscort Arakkoa Outcasts to Outcast Darkscryer with 100 morale during Operation: Skettis Ruins.",
},[[
step
This achievement _can only be completed_ during the Assault on Skettis daily
accept Assault on Skettis##36683 |goto Lunarfall/0 31.51,31.18
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in
|tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you.
|confirm
step
_Escort_ Arakkoa Outcasts to Outcast Darkscryer with 100 morale during Operation: Skettis Ruins
kill Skyreach Labormaster##85542+, Skyreach Dreadtalon##84303+
collect 4 Talon Key##118701
_Free_ 4 Arakkoa Outcasts at once
_Kill_ any hostile Skyreach mobs in the area to gain morale
|tip Get 100 morale and then escort them to quest turnin.
|achieve 9612 |goto Spires of Arak 59.6,11.4
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
|tip The will more than likely require some help from friends.
kill Maniacal Madgard##86562
|achieve 9655/1 |goto Gorgrond 49.0,33.8
step
_Slay_ the following rare elite in The Pit
|tip The will more than likely require some help from friends.
kill Defector Dazgo##86566
|achieve 9655/2 |goto Gorgrond 48.2,21.0
step
_Slay_ the following rare elite in The Pit
|tip The will more than likely require some help from friends.
kill Durp the Hated##86571
|achieve 9655/3 |goto Gorgrond 50.0,23.8
step
_Slay_ the following rare elite in The Pit
|tip The will more than likely require some help from friends.
kill Inventor Blammo##86574
|achieve 9655/4 |goto Gorgrond 47.6,30.6
step
_Slay_ the following rare elite in The Pit
|tip The will more than likely require some help from friends.
kill Horgg##86577
|achieve 9655/5 |goto Gorgrond 48.6,32.6
step
_Slay_ the following rare elite in The Pit
|tip The will more than likely require some help from friends.
kill Blademaster Ro'gor##86579
|achieve 9655/6 |goto Gorgrond 46.0,33.6
step
_Slay_ the following rare elite in The Pit
|tip The will more than likely require some help from friends.
kill Morgo Kain##86582
|achieve 9655/7 |goto Gorgrond 49.0,22.6
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
achieveid={10072},
patch='60200',
description="\nComplete all of the Tanaan Jungle Achievements below",
},[[
step
To complete these 8 individual achievements go to our achievements guides.
|tip Completing this achievement also rewards the title "of the jungle"!
confirm
step
Defeat all of the rare creatures in Tanaan Jungle.
Jungle Stalker |achieve 10072/3
step
Complete the Garrison Campaign Chapter Listed.
In Pursuit of Gul'dan |achieve 10072/1
step
Complete the Tanaan Jungle Daily Objectives.
Draenor's Last Stand |achieve 10072/2
step
Defeat all of the champions of Tanaan Jungle.
Hellbane |achieve 10072/7
step
Explore Tanaan Jungle revealing all of the covered areas on the map.
Explore Tanaan Jungle |achieve 10072/8
step
Defeat Supreme Lord Kazzak in Tanaan Jungle.
The Legion will NOT Conquer all |achieve 10072/5
step
Loot 5000 Blackfang Claws from Saberon in Tanaan Jungle.
I Came, I Clawed, I Conquered |achieve 10072/4
step
Discover all of the treasures in Tanaan Jungle.
Jungle Treasure Master |achieve 10072/6
step
Congratulations, you have _earned_ the Rumble in the Jungle Achievement and the "of the jungle" Title!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Writing in the Snow",{
achieveid={9530},
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
accept Writing in the Snow##35737
step
talk Bodrick Grey##81492
turnin Writing in the Snow##35737 |achieve 9531 |goto Lunarfall 38.1,37.0
step
Congratulations, you have _earned_ the Writing in the Snow Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Fish Gotta Swim, Birds Gotta Eat",{
achieveid={9613},
patch='60001',
description="\nSteal a fish from a Kaliri before it successfully eats it then consume it in Skettis Ruins.",
},[[
step
This achievement _can only be completed_ during the Assault on Skettis daily
accept Assault on Skettis##36683 |goto Lunarfall/0 31.51,31.18
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in
|tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you.
|confirm
step
_Kill_ the Kaliri that has dove into the water before it goes out of range or eats the fish
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
accept Assault on the Heart of Shattrath##36685 |goto Lunarfall/0 31.51,31.18
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in
|tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you.
|confirm
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
|tip The will more than likely require some help from friends.
kill Orumo the Observer##87668
|achieve 9638/1 |goto Talador 31.4,47.5
step
_Slay_ the following rare elite in Shattrath City
|tip The will more than likely require some help from friends.
kill Lord Korinak##82920
|achieve 9638/2 |goto Talador 30.5,26.4
step
_Slay_ the following rare elite in Shattrath City
|tip The will more than likely require some help from friends.
kill Lady Demlash##82942
|achieve 9638/3 |goto Talador 33.8,37.8
step
_Slay_ the following rare elite in Shattrath City
|tip The will more than likely require some help from friends.
kill Shadowflame Terrorwalker##82930
|achieve 9638/4 |goto Talador 32.8,38.8
step
_Slay_ the following rare elite in Shattrath City
|tip The will more than likely require some help from friends.
kill Kurlosh Doomfang##82988
|achieve 9638/5 |goto Talador 37.2,37.6
step
_Slay_ the following rare elite in Shattrath City
|tip The will more than likely require some help from friends.
kill Matron of Sin##82998
|achieve 9638/6 |goto Talador 39.0,49.6
step
_Slay_ the following rare elite in Shattrath City
|tip The will more than likely require some help from friends.
kill Vigilant Paarthos##88436
|achieve 9638/7 |goto Talador 37.4,43.0
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
accept Assault on the Broken Precipice##36677 |goto Lunarfall/0 31.51,31.18
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in
|tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you.
|confirm
step
_Unearth_ the ancient ogre relic listed below
clicknpc Thak the Conqueror's Bust##88085
|achieve 9610/2 |goto Nagrand D 41.2,12.2
step
The next 3 items require you to _interact_ with a Jewel of Transformation to _break_ boulder piles in the area
clicknpc Jewel of Transformation##88064 |goto Nagrand D 36.2,17.2
clicknpc Boulder Pile##88068
|tip Smash them until you find the remaining three.
clicknpc Krog the Dominator's Hammer##88082
|achieve 9610/1
clicknpc Thurg the Slave Lord's Necklace##88092
|achieve 9610/3
clicknpc Gorg the Subjugator's Idol##88088
|achieve 9610/4
step
Congratulations, you have _earned_ the History of Violence Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\I Want More Talador",{
achieveid={9674},
patch='60002',
description="\nComplete the Talador bonus objectives.",
},[[
step
label "start"
_Click_ the Talador bonus objectives listed below to complete them |only if not achieved(9674)
You have _completed_ all of the achievements below
|tip You have this earned on your account, however you can earn it on each character again. |next "end" |only if achieved(9674)
Aruuna's Desolation |achieve 9674/1 |confirm |next "adeso"
Court of Souls |achieve 9674/2 |confirm |next "csouls"
Kuuro's Claim _or_ Zangarra |achieve 9674/5 |confirm |next "kuzag"
Mor'gran Logworks _or_ Orunai Coast |achieve 9674/3 |confirm |next "morcoa"
Zorkra's Fall |achieve 9674/4 |confirm |next "zfall"
step
label "adeso"
accept Bonus Objective: Aruuna's Desolation##34639
kill Frenzied Ancient##79409 |q 34639/1 |goto Talador 76.18,48.67
|tip He's a burning tree that walks around this area so you may have to search for him.
clicknpc Panicked Young Prowler##79432
Calm #7# Young Prowlers |q 34639/2 |goto 75.80,49.12
|achieve 9674/1
_Click_ here to return to the menu |confirm always |next "start"
step
label "csouls"
_Run through_ the tall gateway |goto Talador 45.3,71.9 < 20 |only if walking
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
|achieve 9674/2
step
accept Bonus Objective: Court of Souls##34667
_Click_ the yellow arrow to release from the ballista
kill Warlock Soulstealer##79482+
_Release_ #8# Draenei spirits |q 34667/1 |goto Talador 43.2,60.9
|achieve 9674/2
step
label "bonuscourt"
kill 10 Doombringer##79503+, Searing Ravager##79506+, Tormenting Concubine##79540+
kill 10 Demons |q 34667/2 |goto Talador/0 43.2,60.9
|achieve 9674/2
_Click_ here to return to the menu |confirm always |next "start"
step
label "kuzag"
Proceeding to Artillery Quest |next "artillery1" |only if completedq(34563)
Proceeding to Arcane Sanctum Quest |next "arcane1"|only if completedq(34631)
step
label "artillery1"
accept Bonus Objective: Zangarra##37422
kill 6 Invasive Shambler##79335 |q 37422/1 |goto Talador 81.1,29.2
kill Encroaching Giant##79333 |q 37422/2 |goto Talador 81.1,29.2
|tip They are rare so just walk around until you find one.
|achieve 9674/5
_Click_ here to return to the menu |confirm always |next "start"
step
label "arcane1"
_Follow_ the path out of Fort Wrynn |goto Talador 70.1,21.4 < 20 |only if walking
accept Bonus Objective: Kuuro's Claim##37421 |goto Talador 74.0,23.6
step
accept Bonus Objective: Kuuro's Claim##37421
_Enter_ the cave |goto Talador 75.3,22.4 < 10 |walk
_Follow_ the path in the cave |goto Talador 76.3,19.5 < 10 |only if walking
kill Glowgullet Shardshedder##80013+, Glowgullet Devourer##79190+
kill 8 Goren |q 37421/1 |goto Talador 77.5,18.2
kill 6 Iridium Geode##80072 |q 37421/2 |goto Talador 78.4,18.6
You can find more Iridium Geodes if you run up the path at [Talador 77.5,19]
|achieve 9674/5
_Click_ here to return to the menu |confirm always |next "start"
step
label "morcoa"
Proceeding to Artillery Quest |next "artillery2" |only if completedq(34563)
Proceeding to Arcane Sanctum Quest |next "arcane"|only if completedq(34631)
step
label "artillery2"
accept Bonus Objective: Mor'gran Logworks##35237
kill 6 Iron Shredder##75815+ |q 35237/1 |goto Talador 56.8,16.4
collect 20 Lumber##112994 |q 35237/2 |goto Talador 56.8,16.4
|achieve 9674/3
_Click_ here to return to the menu |confirm always |next "start"
step
label "arcane"
accept Bonus Objective: Orunai Coast##35236
kill 6 Iron Shredder##75815 |q 35236/1 |goto Talador/0 59.7,13.3
click Lumber##231962
|tip They look like cut logs on the ground in stacks of three around this area.
collect 20 Lumber##112994 |q 35236/2  |goto Talador/0 59.7,13.3
|achieve 9674/3
_Click_ here to return to the menu |confirm always |next "start"
step
label "zfall"
accept Bonus Objective: Zorkra's Fall##34660
clicknpc Zorka's Void Gate##79520
|tip They look like big blue and pink swirling portals around this area.
_Seal_ #4# of Zorka's Void Gates |q 34660/1 |goto Talador/0 53.9,87.5
kill 6 Shattered Hand Grunt##79544 |q 34660/2
|achieve 9674/4
_Click_ here to return to the menu |confirm always |next "start"
step
label "end"
Congratulations, you have _earned_ the I Want More Talador Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\I Was Framed!",{
achieveid={9483},
patch='60001',
description="\nBait a Darkwing Matron into ambushing a Darktide Rylakinator-3000 while in Darktide Roost.",
},[[
step
This achievement _can only be completed_ during the Assault on Darktide Roost daily
accept Assault on Darktide Roost##36679 |goto Lunarfall/0 31.51,31.18
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in
|tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you.
|confirm
step
_Pull_ a Darktide Rylakinator-3000 next to a Darkwing Whelpling and let the flamethrower damage it until it calls its mother down
|tip Do not damage the Rylakinator-3000 (No bodyguards or pets, pull with a non damage dealing ability or by proximity).
_You shouldn't touch the Whelpling!_
The _matron will attack_ the Rylakinator instead of you! |achieve 9483 |goto Shadowmoon Valley D 59.8,87.8
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
accept Assault on the Pit##36686 |goto Lunarfall/0 31.51,31.18
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in
|tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you.
|confirm
step
The book you're looking for _spawns_ in different areas. _Launching yourself_ to one of the areas below should yield a fruitful discovery.
clicknpc Iron Troop Launcher##85211 |goto Gorgrond 46.0,31.0
_Launch yourself_ on top of the crane here to check for the book |goto Gorgrond/0 45.8,27.2
_Launch yourself_ atop the tower in the middle of the pit to check for the book |goto Gorgrond 48,27
_Launch yourself_ atop a section of broken track at one end of the track to check for the book |goto Gorgrond/0 45.3,25.2
click Iron Horde Attack Orders##237751
|tip A brown book with a metal binding surrounding it.
|achieve 9656
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
accept Assault on the Pit##36686 |goto Lunarfall/0 31.51,31.18
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in
|tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you.
|confirm
step
clicknpc Iron Troop Launcher##85211 |goto Gorgrond 46.0,31.0
When inside the Launcher _you will see two rings_ in front of you
_Aim_ the Launcher so the line goes through the rings
You will _land on the other side_ close to another Launcher
clicknpc Iron Troop Launcher##85211 |goto Gorgrond 46.7,22.3
_Aim_ the Launcher through the same ring
|tip Repeat untill you get the achievement.
|achieve 9659
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
accept Assault on Socrethar's Rise##37631 |goto Shadowmoon Valley D 43.88,77.46
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in
|tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you.
|confirm
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
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Loremaster of Draenor",{
achieveid={9833},
patch='60100',
description="\nComplete the Draenor quest achievements.",
},[[
step
Use these Draenor Leveling Guides to complete Loremaster:
|tip The Leveling guides cover all required questlines for Loremaster.
|tip Click one of the lines below to load the Leveling guide for that zone.
condition achieved(9833) |next
Shadowmoon Valley |complete achieved(9833,1) |confirm always |next "Leveling Guides\\Draenor (10-50)\\Shadowmoon Valley (10-50)"
Gorgrond |confirm |complete achieved(9833,2) |confirm always |next "Leveling Guides\\Draenor (10-50)\\Gorgrond (15-50)"
Talador |complete achieved(9833,3) |confirm always |next "Leveling Guides\\Draenor (10-50)\\Talador (20-50)"
Spires of Arak |complete achieved(9833,4) |confirm always |next "Leveling Guides\\Draenor (10-50)\\Spires of Arak (30-50)"
Nagrand |complete achieved(9833,5) |confirm always |next "Leveling Guides\\Draenor (10-50)\\Nagrand (35-50)"
step
Congratulations, you earned the _Loremaster of Draenor_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Make It a Bonus",{
achieveid={9607},
patch='60001',
description="\nComplete the Gorgrond bonus objectives.",
},[[
step
label "start"
_Click_ the Gorgrond bonus objectives listed below to complete them |only if not achieved(9607)
You have _completed_ all of the achievements below
|tip You have this earned on your account, however you can earn it on each character again. |next "end" |only if achieved(9607)
Brimstone Springs |achieve 9607/1 |confirm |next "bspring"
Iyun Weald |achieve 9607/2 |confirm |next "iweld"
Mistcreep Mire |achieve 9607/3 |confirm |next "mmire"
Valley of Destruction |achieve 9607/4 |confirm |next "destro"
Ruins of the First Bastion |achieve 9607/5 |confirm |next "bastion"
The Forgotten Caves |achieve 9607/6 |confirm |next "fcaves"
South Gronn Canyon or Evermorn Springs |achieve 9607/7 |confirm |next "gronn"
Stonemaul Arena or Tangleheart |achieve 9607/8 |confirm |next "arena"
Affliction Ridge or The Razorbloom |achieve 9607/9 |confirm |next "razorbl"
stickystart "lesserbrimfury"
step
label "bspring"
_Go up_ the hill |goto Gorgrond/0 44.0,55.9 < 20 |only if walking
accept Bonus Objective: Brimstone Springs##36603 |goto Gorgrond/0 40.4,57.5
step
kill 15 Sulfuric Ooze##85960 |q 36603/2 |goto Gorgrond/0 40.4,57.5
|tip They are found in the pools of water around the area.
You can find more around [Gorgrond 40.3,60.7]
step
kill 3 Grievous Depthworm##85942 |q 36603/3 |goto Gorgrond/0 40.3,53.4
step
label "lesserbrimfury"
kill 8 Lesser Brimfury##85924 |q 36603/1 |goto Gorgrond 42.5,55.2
|achieve 9607/1
_Click_ here to return to the menu |confirm always |next "start"
step
label "iweld"
accept Bonus Objective: Iyun Weald##36571 |goto Gorgrond/0 62.73,53.46
|tip Avoid Biolante as you do this quest.
step
clicknpc Thorny Leafling##85809
|tip They are small enemies on the ground around this area.
_Punt_ #20# Thorny Leafling |q 36571/2 |goto 62.73,53.46
kill 6 Weald Stinger##85807+ |q 36571/3 |goto 63.08,52.74
kill 12 Thorny Stabber##80744+ |q 36571/1 |goto 62.73,53.46
|achieve 9607/2
_Click_ here to return to the menu |confirm always |next "start"
step
label "mmire"
accept Bonus Objective: Mistcreep Mire##36563 |goto Gorgrond/0 52.42,67.57
step
kill 5 Lernaea Vilescale##85693 |q 36563/1 |goto 52.42,67.57
clicknpc Hydra Egg##85786+
|tip They look like big white eggs on the ground around this area.
_Break+ #25# Hydra Eggs |q 36563/2 |goto 52.42,67.57
|achieve 9607/3
_Click_ here to return to the menu |confirm always |next "start"
step
label "destro"
accept Bonus Objective: Valley of Destruction##36480 |goto Gorgrond/0 44.7,48.2 < 15
step
kill 5 Canyon Boulderbreaker##81246 |q 36480/1 |goto 44.69,47.82
kill 20 Goren Nibbler##81775 |q 36480/2 |goto 46.07,47.61
_Break_ #15# Goren Eggs  |q 36480/3 |goto 46.22,47.20
|tip They look like clusters of gray-ish eggs on the ground around this area - walk on them to break them.
|achieve 9607/4
_Click_ here to return to the menu |confirm always |next "start"
stickystart "podlingsjars"
step
label "bastion"
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
|achieve 9607/5
_Click_ here to return to the menu |confirm always |next "start"
stickystart "bonuscaves"
step
label "fcaves"
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
|achieve 9607/6
_Click_ here to return to the menu |confirm always |next "start"
step
label "gronn"
Proceeding to Highpass Logging Camp |next "logging1" |only if completedq(35212)
Proceeding to Highpass Sparring Ring |next "sparring1" |only if completedq(35686)
step
label "logging1"
accept Bonus Objective: South Gronn Canyon##36476
kill Drywind Bonepicker##81207+, Boneyard Tunneler##81518+
kill 15 Goren or Gronnling |q 36476/1 |goto Gorgrond 47.4,53.8
kill 10 Grom'kar Grunt##75091 |q 36476/2 |goto Gorgrond 47.4,53.8
talk Grom'kar Peon##85540 |tip They look like orcs laying on the ground around this area.
_Execute_ #8# Dying Grom'kar Peons |q 36476/3 |goto Gorgrond 47.4,53.8
|achieve 9607/7
_Click_ here to return to the menu |confirm always |next "start"
stickystart "bloomweavers"
step
label "sparring1"
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
|achieve 9607/7
_Click_ here to return to the menu |confirm always |next "start"
step
label "arena"
Proceeding to Highpass Logging Camp |next "logging2" |only if completedq(35212)
Proceeding to Highpass Sparring Ring |next "sparring2" |only if completedq(35686)
stickystart "bonusstonemaul"
step
label "logging2"
_Cross_ this bridge and _follow_ the road |goto Gorgrond 44.6,71.8 < 20 |only if walking
_Enter_ the Stonemaul Arena area |goto Gorgrond 42.0,65.4 < 30 |only if walking
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
kill Stonemaul Guard##75819+, Stonemaul Slaver##75835+
_Slay_ #20# Stonemaul Ogres |q 36566/1 |goto Gorgrond/0 40.2,66.0
|achieve 9607/8
_Click_ here to return to the menu |confirm always |next "start"
stickystart "tangle1"
step
label "sparring2"
_Follow_ the path |goto Gorgrond 52.2,68.4 < 20 |only if walking
_Go through_ the path of huge thorny vines |goto Gorgrond 56.1,71.5 < 10 |only if walking
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
|achieve 9607/8
_Click_ here to return to the menu |confirm always |next "start"
step
label "razorbl"
Proceeding to Highpass Logging Camp |next "logging3" |only if completedq(35212)
Proceeding to Highpass Sparring Ring |next "sparring3" |only if completedq(35686)
step
label "logging3"
_Leave_ the Stonemaul Arena area |goto Gorgrond 42.0,65.4 < 30 |only if walking
accept Bonus Objective: Affliction Ridge##36473
kill 25 Goren Gouger##80690+, Botani Greensworn##80696+, Gronnling Bonebreaker##80685+, Goren Gouger##80690+, Gronn Rockthrower##80689+, Mandragora Lifedrinker##80699+, Creeping Vine##85538+ |q 36473/1 |goto Gorgrond 43.6,64.4
step
clicknpc Ancient Seedbearer##82392+
|tip They look like big tree ents with leafy green plants as hair laying on the ground around this area.
_Burn_ #5# Ancient Seedbearers |q 36473/2 |goto Gorgrond 43.6,64.4
|achieve 9607/9
_Click_ here to return to the menu |confirm always |next "start"
stickystart "infestedtoxic"
step
label "sparring3"
accept Bonus Objective: The Razorbloom##36500
_Follow_ the path up |goto Gorgrond 50.4,70.8 < 20 |only if walking
_Go up_ the small hill |goto Gorgrond 49.2,73.0 < 20 |only if walking
_Enter_ the small house |goto Gorgrond 49.3,71.4 < 10 |walk
kill Voice of Iyu##81634 |q 36500/2 |goto 49.43,71.66
step
label "infestedtoxic"
accept Bonus Objective: The Razorbloom##36500
kill Infested Orc##81617+, Infested Behemoth##82841+
kill 12 Infested |q 36500/1 |goto Gorgrond 48.3,71.4
_Squish_ #25# Toxic Slimemold |q 36500/3 |goto Gorgrond 48.3,71.4
|tip They are small green slimes all over the area in groups (Walk on them to squish them).
|achieve 9607/9
_Click_ here to return to the menu |confirm always |next "start"
step
label "end"
Congratulations, you have _earned_ the Make It a Bonus Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Making the Cut",{
achieveid={9617},
patch='60001',
description="\nDefeat Krud the Eviscerator in the Gorian Proving Grounds.",
},[[
step
In order to do this achievement _you must be on the Garrison daily quest "Assault on the Gorian Proving Grounds"_
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in
|tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you.
confirm
step
kill Krud the Eviscerator##88210
|achieve 9617 |goto Nagrand D 58.2,12.0
step
Congratulations, you have earned the _Making the Cut_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Master Relic Hunter",{
condition_end=function() return achieved(9825) end,
achieveid={9928,9825},
patch='60100',
description="\nThis guide will walk you through completing all 6 Relic Hunter quests offered by Harrison Jones in your garrison.",
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
#include "Garrison_Harrison"
Accept the daily quest Harrison Jones offers |complete haveq(37848) or haveq(37849) or haveq(37850) or haveq(37851) or haveq(37852) or haveq(37973) or haveq(37976) or haveq(37977) or haveq(37978) or haveq(37979) or haveq(37881) or haveq(37882) or haveq(37883) or haveq(37884) or haveq(37885) or haveq(37914) or haveq(37916) or haveq(37917) or haveq(37918) or haveq(37919) or haveq(37788) or haveq(37797) or haveq(37798) or haveq(37799) or haveq(37811) or haveq(37941) or haveq(37942) or haveq(37943) or haveq(37944) or haveq(37945) |repeatable |next "Quests"
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
Accept the daily quest Harrison Jones offers |complete haveq(37848) or haveq(37849) or haveq(37850) or haveq(37851) or haveq(37852) or haveq(37973) or haveq(37976) or haveq(37977) or haveq(37978) or haveq(37979) or haveq(37881) or haveq(37882) or haveq(37883) or haveq(37884) or haveq(37885) or haveq(37914) or haveq(37916) or haveq(37917) or haveq(37918) or haveq(37919) or haveq(37788) or haveq(37797) or haveq(37798) or haveq(37799) or haveq(37811) or haveq(37941) or haveq(37942) or haveq(37943) or haveq(37944) or haveq(37945) |repeatable |next "Quests"
accept Treasure Contract: Amulet of Rukhmar##37848 |repeatable |only if garrisonlvl(4)
accept Treasure Contract: The Artificer##37973 |repeatable |only if garrisonlvl(4)
accept Treasure Contract: Explosive Discoveries##37881 |repeatable |only if garrisonlvl(4)
accept Treasure Contract: The Thunderlord Sage##37914 |repeatable |only if garrisonlvl(4)
accept Treasure Contract: Gutrek's Cleaver##37788 |repeatable |only if garrisonlvl(4)
accept Treasure Contract: The Infected Orc##37941 |repeatable |only if garrisonlvl(4)
step
label "NPC2"
Harrison Jones is one of 4 random NPCs that can spawn in a garrison
If he is not available in your garrison, you may join a friend's garrison who has him available
|tip To join a player's garrison, they will need to be group leader. You can right-click your player frame and select "View Leader's Garrison".
step
label "Quests"
Proceeding |next "Rukhmar" |only if haveq(37848) or haveq(37849) or haveq(37850) or haveq(37851) or haveq(37852)
Proceeding |next "Artificer" |only if haveq(37973) or haveq(37976) or haveq(37977) or haveq(37978) or haveq(37979)
Proceeding |next "Explosive" |only if haveq(37881) or haveq(37882) or haveq(37883) or haveq(37884) or haveq(37885)
Proceeding |next "Thunderlord" |only if haveq(37914) or haveq(37916) or haveq(37917) or haveq(37918) or haveq(37919)
Proceeding |next "Cleaver" |only if haveq(37788) or haveq(37797) or haveq(37798) or haveq(37799) or haveq(37811)
Proceeding |next "Infected" |only if haveq(37941) or haveq(37942) or haveq(37943) or haveq(37944) or haveq(37945)
step
label "Rukhmar"
The Research Notes look like small scroll cases on the ground
Gather 5 Research Notes |q 37848/1 |goto Spires of Arak/0 48.8,8.4
|tip These are usually found inside or around the small cauldrons in this area.
step
Click the quest completion dialogue box that pops up
turnin Treasure Contract: Amulet of Rukhmar##37848
accept Amulet of Rukhmar: The First Key##37849
step
Click on the yellowish Mysterious Device
Activate the first key |q 37849/1 |goto Spires of Arak/0 53.0,14.8
step
Click the quest completion dialogue box that pops up
turnin Amulet of Rukhmar: The First Key##37849
accept Amulet of Rukhmar: The Second Key##37850
step
Click on the yellowish Mysterious Device
|tip It is located underwater at the base of the waterfall.
Activate the second key |q 37850/1 |goto Spires of Arak/0 60.5,12.3
step
Click the quest completion dialogue box that pops up
turnin Amulet of Rukhmar: The Second Key##37850
accept Amulet of Rukhmar: The Final Key##37851
step
Follow the river and enter the cave here |goto Spires of Arak/0 73.4,34.9
Click on the yellowish Mysterious Device
Activate the final key |q 37851/1 |goto Spires of Arak/0 71.8,34.6
step
Click the quest completion dialogue box that pops up
turnin Amulet of Rukhmar: The Final Key##37851
accept Amulet of Rukhmar: The Apexis Device##37852
step
Locate the Apexis device |q 37852/1 |goto Spires of Arak/0 73.5,43.1
step
Click the each statue until they face the center portal device
Activate and enter the portal |q 37852/2 |goto Spires of Arak/0 73.5,43.1
step
kill 1 Aspect of Rukhmar##89990
Face Rukhmar |q 37852/3 |goto Spires of Arak/0 70.0,34.2
|next "Turnin"
step
label "Artificer"
Locate the missing artificer |q 37973/1 |goto Spires of Arak/0 67.4,21.8
step
Read Artificer Maatun's Journal |q 37973/2 |goto Spires of Arak/0 67.4,21.8
step
Click the quest completion dialogue box that pops up
turnin Treasure Contract: The Artificer##37973
accept Dream of Argus: The First Fragment##37976
step
Enter the cave |goto Spires of Arak/0 69.2,22.4 < 10 |walk
kill Lor Stonefist##90603
Retrieve the first Rough Crystal Shard |q 37976/1 |goto Spires of Arak/0 70.4,22.0
step
Click the quest completion dialogue box that pops up
turnin Dream of Argus: The First Fragment##37976
accept Dream of Argus: The Second Fragment##37977
step
kill Vok Blacktongue##90602
Retrieve the Cracked Crystal Shard |q 37977/1 |goto Spires of Arak/0 72.9,32.0
step
Click the quest completion dialogue box that pops up
turnin Dream of Argus: The Second Fragment##37977
accept Dream of Argus: The Final Fragment##37978
step
kill Jagganath##90458, Koros Soulsplinter##90404
Retrieve the Cracked Crystal Shard |q 37978/1 |goto Spires of Arak/0 75.0,26.1
step
Click the quest completion dialogue box that pops up
turnin Dream of Argus: The Final Fragment##37978
accept Dream of Argus: The Crystal Reborn##37979
step
_Enter_ the cave |goto Shadowmoon Valley D/0 32.7,45.3 < 10 |walk
Find the Reconstruction device |q 37979/1 |goto Shadowmoon Valley D/0 32.3,46.6
step
Click the altar to place the crystal shards. After, click the Inner, Middle, and Outer Rings until the purple crystals on the rings line up with the purple crystals on the altar
Place the shards on the altar |q 37979/2 |goto Shadowmoon Valley D/0 32.3,46.6
Retrieve the Dream of Argus |q 37979/3 |goto Shadowmoon Valley D/0 32.3,46.6
|next "Turnin"
step
label "Explosive"
kill Demolitionist Megacharge##90107
Retrieve Megacharge's Cookbook |q 37881/1 |goto Shadowmoon Valley D/0 56.6,92.0
step
Click the quest completion dialogue box that pops up
turnin Treasure Contract: Explosive Discoveries##37881
accept Dark Grimoire: The First Ingredient##37882
step
Jump on the cart
Retrieve the Blasting Powder |q 37882/1 |goto Shadowmoon Valley D/0 63.7,94.0
step
Click the quest completion dialogue box that pops up
turnin Dark Grimoire: The First Ingredient##37882
accept Dark Grimoire: The Second Ingredient##37883
step
The crate is located floating underwater
Retrieve the Detonator |q 37883/1 |goto Shadowmoon Valley D/0 50.4,89.6
step
Click the quest completion dialogue box that pops up
turnin Dark Grimoire: The Second Ingredient##37883
accept Dark Grimoire: The Final Ingredient##37884
step
kill Fel Imp##88264+, Nightshade Consort##84908+, Imp Servant##84999+, Sargerei Demonlord##81543+, Succubus##85478+, Obedient Felhound##86269+
Gather 5 Demon's Blood |q 37884/1 |goto Shadowmoon Valley D/0 48.9,76.2
step
Click the quest completion dialogue box that pops up
turnin Dark Grimoire: The Final Ingredient##37884
accept Dark Grimoire: Breaching the Barrier##37885
step
_Carefully jump_ down and _enter the cave_ here |goto Shadowmoon Valley D/0 42.7,74.2
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
Click the quest completion dialogue box that pops up
turnin Treasure Contract: The Thunderlord Sage##37914
accept Gronnsbane: The Broken Spear##37916
step
Gather Gronnsbane's Weight |q 37916/3 |goto Frostfire Ridge/0 72.45,26.87
step
Gather Gronnsbane's Haft |q 37916/2 |goto Frostfire Ridge/0 70.82,23.69
step
Gather Gronnsbane's Blade |q 37916/1 |goto Frostfire Ridge/0 71.87,33.34
step
Click the quest completion dialogue box that pops up
turnin Gronnsbane: The Broken Spear##37916
accept Gronnsbane: The Blessing of Fire##37917
step
_Continue west_ on the path |goto Frostfire Ridge/0 50.1,27.2 < 10 |only if walking
Click the Molten Shamanstone
Receive the Blessing of Fire |q 37917/1 |goto Frostfire Ridge/0 42.44,13.03
step
Click the quest completion dialogue box that pops up
turnin Gronnsbane: The Blessing of Fire##37917
accept Gronnsbane: The Blessing of Frost##37918
step
Follow the rocky path up |goto Frostfire Ridge 47.5,19.3 < 30 |only if walking
Go up the short snowy ramp |goto Frostfire Ridge 49.9,19.6 < 30 |only if walking
Enter the large circular building |goto 49.5,21.3 < 10 |walk
Go up the wooden walkway  |goto 49.4,22.0 < 5 |walk
Click the Frozen Shamanstone located at the top of the tower
Receive the Blessing of Frost |q 37918/1 |goto Frostfire Ridge/0 49.15,21.39
step
Click the quest completion dialogue box that pops up
turnin Gronnsbane: The Blessing of Frost##37918
accept Gronnsbane: The Blessing of Beasts##37919
step
label "Meat"
You will need at least 1 Raw Clefthoof Meat to complete this Treasure Contract
collect 1 Raw Clefthoof Meat##109131
step
Pass through the rocky ridge |goto Frostfire Ridge 43.5,23.5 < 20 |only if walking
Click the altar and select "_Place offering of raw clefthoof meat_"
kill Gok'tal##90598
Lure and kill Gok'tal |q 37919/1 |goto Frostfire Ridge/0 45.57,28.15
step
clicknpc Gok'tal##90598
Loot the Empowered Gronnsbane |q 37919/2 |goto Frostfire Ridge/0 45.57,28.15
|next "Turnin"
step
label "Cleaver"
kill Arcanist Earthsmasher##83577+, Slave-Grinder##88187+, Sledgebasher##83575+
Collect 5 Journal Pages |q 37788/1 |goto Nagrand D/0 37.0,17.8
step
Click the quest completion dialogue box that pops up
turnin Treasure Contract: Gutrek's Cleaver##37788
accept Gutrek's Cleaver: The First Piece##37797
step
Gutrek's Pommel is located inside the eye socket of a skull in the pit
Retrieve Gutrek's Pommel |q 37797/1 |goto Nagrand D/0 39.7,14.9
step
Click the quest completion dialogue box that pops up
turnin Gutrek's Cleaver: The First Piece##37797
accept Gutrek's Cleaver: The Second Piece##37798
step
The Hilt is located just under the water next to the bones
Retrieve Gutrek's Hilt |q 37798/1 |goto Nagrand D/0 38.5,39.5
step
Click the quest completion dialogue box that pops up
turnin Gutrek's Cleaver: The Second Piece##37798
accept Gutrek's Cleaver: The Final Piece##37799
step
_Jump up_ onto the wall here and follow it |goto Nagrand D/0 55.7,10.9 < 10 |only if walking
Retrieve Gutrek's Blade |q 37799/1 |goto Nagrand D/0 55.0,12.3
step
Click the quest completion dialogue box that pops up
turnin Gutrek's Cleaver: The Final Piece##37799
accept Gutrek's Cleaver: The Spirit Forge##37811
step
Enter the cave
Find the Spirit Forge |q 37811/1 |goto Nagrand D/0 51.54,27.03
step
Click the Furnace followed by the Anvil and finally the Trough on the other side of the room
Reforge Gutrek's Cleaver |q 37811/2 |goto Nagrand D/0 52.8,27.0
step
kill Gutrek##89824
Click the cleaver and kill Gutrek when he appears
Claim Gutrek's Cleaver |q 37811/3 |goto Nagrand D/0 52.8,26.6
|next "Turnin"
step
label "Infected"
kill Enthralled Mutant##88394+, Twisted Guardian##88279+
Retrieve Grinning Tolg's Journal |q 37941/1 |goto Gorgrond/0 70.4,30.2
step
Click the quest completion dialogue box that pops up
turnin Treasure Contract: The Infected Orc##37941
accept The Silent Skull: The First Reagent##37942
step
Retrieve the Shadethistle Leaves |q 37942/1 |goto Gorgrond/0 57.0,35.9
step
Click the quest completion dialogue box that pops up
turnin The Silent Skull: The First Reagent##37942
accept The Silent Skull: The Second Reagent##37943
step
Retrieve the Bonethorn Vine |q 37943/1 |goto Gorgrond/0 68.6,34.2
step
Click the quest completion dialogue box that pops up
turnin The Silent Skull: The Second Reagent##37943
accept The Silent Skull: The Third Reagent##37944
step
Retrieve the Steamcap Mushrooms |q 37944/1 |goto Gorgrond/0 59.6,33.3
step
Click the quest completion dialogue box that pops up
turnin The Silent Skull: The Third Reagent##37944
accept The Silent Skull: Taking from the Taker##37945
step
_Enter_ the cave |goto Gorgrond/0 60.0,32.6 < 10 |walk
Brew the Laughing Skull Elixir |q 37945/1 |goto Gorgrond/0 59.9,31.6
step
talk Brightscale Ravager##90266
Ask it: "_Can you take me to Skulltaker?"_
As you follow, _avoid the skulls_ along the route
Follow the Ravager and ride the big bug to Gu'rakh |q 37945/2 |goto Gorgrond/0 62.2,32.0
step
kill Gu'rakh##90285
Retrieve the Silent Skull |q 37945/3 |goto Gorgrond/0 57.2,26.9
|next "Turnin"
step
label "Turnin"
#include "Garrison_BGrey"
You can safely delete the "Compiled Research" item in your inventory |only if haveq(37852)
turnin Amulet of Rukhmar: The Apexis Device##37852 |only if haveq(37852) |or
You can safely delete "Artificer Maatun's Journal" from your inventory |only if haveq(37979)
turnin Dream of Argus: The Crystal Reborn##37979 |only if haveq(37979) |or
turnin Dark Grimoire: Breaching the Barrier##37885 |only if haveq(37885) |or
turnin Gronnsbane: The Blessing of Beasts##37919 |only if haveq(37919) |or
turnin Gutrek's Cleaver: The Spirit Forge##37811 |only if haveq(37811) |or
turnin The Silent Skull: Taking from the Taker##37945 |only if haveq(37945) |or
step
You have finished today's daily Treasure Contract! Check back tomorrow |only if not achieved(9825)
Congratulations, you now have the Master Relic Hunter achivement! |achieve 9825 |only if achieved(9825)
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
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Nagrandeur", {
achieveid={8927},
patch='60001',
description="\nComplete the Nagrand storylines.",
},[[
step
_Complete_ the Nagrand storylines listed below
The Might of Steel and Blood |achieve 8927/6
The Ring of Trials |achieve 8927/2
The Shadow of the Void |achieve 8927/3
The Dark Heart of Oshu'gun |achieve 8927/1
A Blademaster's Honor |achieve 8927/5
Trouble at the Overwatch |achieve 8927/8
The Taking of Lok-rath |achieve 8927/4
The Legacy of Garrosh Hellscream |achieve 8927/7
_Please refer to our Nagrand leveling guide_ to earn this achievement
step
Congratulations, you have _earned_ the Nagrandeur Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\On the Shadow's Trail", {
achieveid={9528},
patch='60001',
description="\nComplete the Shadowmoon Valley storyline 'To Catch a Shadow'.",
},[[
step
_Complete_ the Shadowmoon Valley storylines listed below
The Might of Steel and Blood |achieve 9528/1
_Please refer to our Shadowmoon Valley leveling guide_ to earn this achievement
step
Congratulations, you have _earned_ the On the Shadow's Trail Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\One of Us! One of Us!",{
achieveid={9434},
patch='60001',
description="\nGain Power Overwhelming while inside the realm of the void in the Shadowmoon Enclave.",
},[[
step
This achievement _can only be completed_ during the Assault on Pillars of Fate daily
accept Assault on Pillars of Fate##36682 |goto Lunarfall/0 31.51,31.18
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in
|tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you.
|confirm
step
_Click_ the Void Portal |goto Spires of Arak 72.2,23.6 |walk
|tip When you enter the portal you will enter the Twisting Nether.
kill Void Fragment##86179+, Void Remnant##86550+, Void Horror##85392+, Void Spawn##85303+, Void Beast##85304+
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
accept Assault on the Everbloom Wilds##36676 |goto Lunarfall/0 31.51,31.18
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in
|tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you.
|confirm
step
All three fruits are _scattered around_ the Everbloom Wilds area
|tip They are small and difficult to see.
click Gorgraberry##237772
|tip The buff lasts for ten minutes so searching for the next isn't a total rush.
click Lovely Coconut##237590
|tip The buff lasts for ten minutes so searching for the next isn't a total rush.
click Prickly Guava##237765
|tip The buff lasts for ten minutes so searching for the next isn't a total rush.
|achieve 9663 |goto Gorgrond 72.4,38.6
step
Congratulations, you have _earned_ the Picky Palate Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Pillars of Draenor",{
achieveid={9658},
patch='60001',
description="\nHold the power of all 3 pillars of power in the Everbloom Wilds simultaneously.",
},[[
step
This achievement _can only be completed_ during the Assault on the Everbloom Wilds daily
accept Assault on the Everbloom Wilds##36676 |goto Lunarfall/0 31.51,31.18
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in
|tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you.
|confirm
step
All 3 Pillars have a 5 minute duration buff and once you get all three buffs _you get the Pillar of Power buff_
click Pillar of Creation##237728 |goto Gorgrond 69.8,43.9
click Pillar of Rejuvenation##237730 |goto Gorgrond 70.7,36.5
click Pillar of Life##237729 |goto Gorgrond 73.6,42.8
|achieve 9658
step
Congratulations, you have _earned_ the Pillars of Draenor Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Planned to Fail", {
achieveid={9711},
patch='60002',
description="\nDestroy 10 Secret Warplans in Iron Siegeworks.",
},[[
step
_NOTE_: This achievement _can only be completed_ during the Assault on the Iron Siegeworks daily
_NOTE_: You cannot progress on this achievement if your progress bar for this quest reached 100% or if the daily has already been turned in today
|tip If still have the quest, and your progress bar for this quest is at 100%, you can abandon the quest and take it again.
accept Assault on the Iron Siegeworks##37585 |goto Frostfire Ridge 87.37,62.56
|tip You will auto-accept this daily quest when you go to this location.
step
click Secret Warplans##234685
|tip They look like paper maps on the ground with daggers stabbed into them, mostly inside buildings.
_Destroy_ #10# Secret Warplans |achieve 9711/1 |goto Frostfire Ridge 85.8,55.4
|tip Once you find a warplan, click it, but move to cancel the casting bar before it completes.  Keep doing this to get the achievement without having to find 10 warplans.
step
Congratulations, you have _earned_ the Planned to Fail Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Poisoning the Well",{
achieveid={9710},
patch='60002',
description="\nPoison 10 Kegs of Impaler Ale in Iron Siegeworks.",
},[[
step
_NOTE_: This achievement _can only be completed_ during the Assault on the Iron Siegeworks daily
_NOTE_: You cannot progress on this achievement if your progress bar for this quest reached 100% or if the daily has already been turned in today
|tip If still have the quest, and your progress bar for this quest is at 100%, you can abandon the quest and take it again.
accept Assault on the Iron Siegeworks##37585 |goto Frostfire Ridge 87.37,62.56
|tip You will auto-accept this daily quest when you go to this location.
step
click Kegs of Impaler Ale
|tip They look like brown wooden barrels layed on their side, mostly inside buildings.
_Poison_ #10# Kegs of Impaler Ale |achieve 9710/1 |goto Frostfire Ridge 85.8,55.4
|tip Once you find a keg, click it, but move to cancel the casting bar before it completes.  Keep doing this to get the achievement without having to find 10 kegs.
step
Congratulations, you have _earned_ the Poisoning the Well Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Poor Communication",{
achieveid={9637},
patch='60001',
description="\nBurn 30 Sargerei Missives in Shattrath City.",
},[[
step
This achievement _can only be completed_ during the Assault on the Heart of Shattrath daily
accept Assault on the Heart of Shattrath##36685 |goto Lunarfall/0 31.51,31.18
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in
|tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you.
|confirm
step
_Head_ inland from the flightmaster |goto Talador/0 49.9,48.1 < 20 |n |only if walking
_Make your way_ to the elevator and take it down |goto Talador/0 47.5,44.1 < 10 |n |only if walking
_Go_ down the stairs |goto Talador/0 45.3,41.3 < 20 |n |only if walking
_Cross the bridge_ |goto 42.7,40.4 < 20 |c |only if walking
_Burn_ #30# Sargerei Missives in Shattrath City |achieve 9637/1
|tip They are sheets of paper pinned to a wall or laying on a flat surface.
These spots should be enough to go back and farm them repeatedly
|tip Made easier when there's a group farming this area because most of the mobs will be dead.
_Click_ for missive on the wall [Talador 37.88,43.90]
_Click_ for missive near the stairs [Talador 37.08,42.92]
_Click_ for missive on the sign [Talador 37.48,41.04]
_Click_ for missive on the wall near stairs [Talador 35.79,40.46]
_Click_ for missive pinned to the tree [Talador 34.34,39.90]
_Click_ for missive in a house on the wall [Talador 33.78,40.69]
_Click_ for missive same house on the diagonal wall above [Talador 33.78,40.69]
_Click_ for missive in a house on the bookshelf to the right [Talador 33.62,39.75]
step
Congratulations, you have _earned_ the Poor Communication Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Putting the Gore in Gorgrond", {
achieveid={8923},
patch='60001',
description="\nComplete the Gorgrond storylines.",
},[[
step
_Complete_ the Gorgrond storylines listed below
We Need An Outpost |achieve 8923/1
The Sparring Arena |achieve 8923/2
Power of the Genesaur (or Chains of Iron) |achieve 8923/3
Chains of Iron (or Power of the Genesaur) |achieve 8923/3
The Iron Approach |achieve 8923/4
_Please refer to our Gorgrond leveling guide_ to earn this achievement
step
Congratulations, you have _earned_ the Putting the Gore in Gorgrond Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Securing Draenor", {
achieveid={9564},
patch='60001',
description="\nComplete the Draenor bonus objectives.",
},[[
step
Complete these quests:
|tip Use the Garrison Assault Daily Quests guide to accomplish this.
Assault on the Iron Siegeworks |achieve 9564/1
Assault on Stonefury Cliffs |achieve 9564/2
Assault on Magnarok |achieve 9564/3
Assault on the Pit |achieve 9564/4
Assault on the Everbloom Wilds |achieve 9564/5
Assault on the Broken Precipice |achieve 9564/6
Assault on Mok'gol Watchpost |achieve 9564/7
Assault on Socrethar's Rise |achieve 9564/8
Assault on Darktide Roost |achieve 9564/9
Assault on Skettis |achieve 9564/10
Assault on Pillars of Fate |achieve 9564/11
Assault on Shattrath Harbor |achieve 9564/12
step
Congratulations, you earned the _Securing Draenor_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\Slagnarok",{
achieveid={9536},
patch='60001',
description="\nDefeat 20 creatures after slagging them with goren acid in Magnarok.",
},[[
step
This achievement _can only be completed_ during the Assault on Magnarok daily
accept Assault on Magnarok##36675 |goto Lunarfall/0 31.51,31.18
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in
|tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you.
|confirm
step
Make your way _across_ The Cracking Plains |goto Frostfire Ridge/0 61.7,32.9 < 20 |only if walking
Head _through_ Magnarok |goto Frostfire Ridge/0 68.1,32.5 < 20 |only if walking
clicknpc Vicious Acidmaw##76905 |tip They're the ones rolling around the area.
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
This achievement is _completed_ in Socrethar's Rise but _does not need_ to be done during the daily
It is best to _do this_ when it isn't the daily to reduce the number of people around to almost none
|confirm
step
In order to gain this achievement you must _maintain_ one of three buffs attainable in Socrethar's Rise
The buffs last for 2 minutes and _cannot_ be extended past 2 minutes so only use the next buff object at around 15 seconds
|tip You should only need six total uses.
You _cannot_ use a mix of the three it has to be the same buff for 10 consecutive minutes
It's _recommended_ that you head to the small herb garden _here_ |goto Shadowmoon Valley D 48.0,72.7
_Click_ a fruit basket in the area to gain the Draenic Pear buff
|tip They are small wooden bowls filled with colorful fruits.
_Kill mobs in the area_ or _wait patiently_ for the buff to almost expire before using another fruit basket
|tip You should spend your two minutes finding your next source for the buff.
|achieve 9435
step
Congratulations, you have _earned_ the Take From Them Everything Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\That Was Entirely Unnecessary",{
achieveid={9535},
patch='60001',
description="\nPunt 100 Goren Eggs in Magnarok.",
},[[
step
This achievement _can only be completed_ during the Assault on Magnarok daily
accept Assault on Magnarok##36675 |goto Lunarfall/0 31.51,31.18
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in
|tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you.
|confirm
step
Make your way _across_ The Cracking Plains |goto Frostfire Ridge/0 61.7,32.9 < 20 |only if walking
Head _through_ Magnarok |goto Frostfire Ridge/0 68.1,32.5 < 20 |only if walking
_Punt_ #100# Goren Eggs in Magnarok |achieve 9535/1 |goto Frostfire Ridge 70.8,28.6
|tip In the lava and on the rocks in the lava little grey eggs spawn that you must kick.
step
Congratulations, you have _earned_ the That Was Entirely Unnecessary Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\The Garrison Campaign",{
achieveid={9491},
patch='60001',
description="\nComplete the Garrison Campaign chapters.",
},[[
#include "Garrison_Campaign"
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\The Power Is Yours",{
achieveid={9632},
patch='60001',
description="\nCombine the effects of all three types of Rune Crystals in Shattrath City.",
},[[
step
This achievement _can only be completed_ during the Assault on the Heart of Shattrath daily
|tip This also requires a group of at least three!
accept Assault on the Heart of Shattrath##36685 |goto Lunarfall/0 31.51,31.18
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in
|tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you.
|confirm
step
_Head_ inland from the flightmaster |goto Talador/0 49.9,48.1 < 20 |n |only if walking
_Make your way_ to the elevator and take it down |goto Talador/0 47.5,44.1 < 10 |n |only if walking
_Go_ down the stairs |goto Talador/0 45.3,41.3 < 20 |n |only if walking
_Cross the bridge_ |goto 42.7,40.4 < 20 |c |only if walking
This achievement _requires_ at least three people because you can only have one buff active at a time
|tip So group up!
In order to complete this each person must _click on a different crystal_ and then _focus fire_ on the same mobs
Once a mob _has been debuffed by all three_ simultaneously you will complete the achievement
The best area to have access to all three crystals at once is _around the Sha'tari Rest and Recovery_ |goto Talador 33.4,40.3 |achieve 9632
|tip The furthest west building in the Residential District.
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
kill Karosh Blackwind##86959
|tip Find a friend or wait for the daily to defeat him easily
|achieve 9541/1 |goto Nagrand D 46.0,36.0
kill Brutag Grimblade##87234
|tip Find a friend or wait for the daily to defeat him easily.
|achieve 9541/2 |goto Nagrand D 43.0,36.4
step
_Kill_ ogres in Mok'gol to get the Secret Meeting Details and use it to summon Krahl and Gortag
kill Mok'gol Brutalizer##72571+, Mok'gol Grunt##86657+, Mok'gol Raider##87385+ |goto Nagrand D 41.6,37.4
collect Secret Meeting Details##120290
clicknpc Signal Horn##87361 |goto Nagrand D 42.0,36.8
kill Krahl Deadeye##87239
|tip Krahl and Gortag spawn together and must be defeated together.
|achieve 9541/3
kill Gortag Steelgrip##87344
|tip Krahl and Gortag spawn together and must be defeated together.
|achieve 9541/4
step
Congratulations, you have _earned_ the The Song of Silence Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\United We Stand",{
achieveid={9636},
patch='60001',
description="\nFree 10 captured guards in Shattrath City.",
},[[
step
This achievement _can only be completed_ during the Assault on Shattrath Harbor daily
accept Assault on Shattrath Harbor##36649 |goto Lunarfall/0 31.51,31.18
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in
|tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you.
|confirm
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
achieveid={8921},
patch='60001',
description="\nComplete the Assault on the Dark Portal.",
},[[
step
_Please refer_ to our Tanaan Jungle leveling guide to earn this achievement
|achieve 8921
step
Congratulations, you have _earned_ the Welcome to Draenor Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Draenor\\With a Nagrand Cherry On Top",{
achieveid={9615},
patch='60001',
description="\nComplete the Nagrand bonus objectives.",
},[[
step
label "start"
_Click_ the Nagrand bonus objectives listed below to complete them |only if not achieved(9615)
You have _completed_ all of the achievements below
|tip You have this earned on your account, however you can earn it on each character again. |next "end" |only if achieved(9615)
Hemet's Happy Hunting Grounds |achieve 9615/1 |confirm |next "hunt"
Ironfist Harbor |achieve 9615/2 |confirm |next "harbor"
Snarlpaw Ledge |achieve 9615/3 |confirm |next "ledge"
step
label "hunt"
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
|achieve 9615/1
_Click_ here to return to the menu |confirm always |next "start"
step
label "harbor"
_Jump down_ the ledge here |goto Nagrand D/0 44.4,74.6 < 20 |only if walking
accept Bonus Objective: Ironfist Harbor##34723 |goto Nagrand D/0 43.2,74.8
stickystart "oss"
step
_Enter_ the building |goto Nagrand D/0 38.1,71.2 < 20 |walk
_Go up_ the stairs |goto Nagrand D/0 37.4,70.3 < 15 |walk
kill General Kull'krosh##79588 |goto Nagrand D/0 37.5,71.6 |q 34723/4
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
|achieve 9615/2
_Click_ here to return to the menu |confirm always |next "start"
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
|achieve 9615/3
_Click_ here to return to the menu |confirm always |next "start"
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
This achievement _can only be completed_ during the Assault on Pillars of Fate daily
accept Assault on Pillars of Fate##36682 |goto Lunarfall/0 31.51,31.18
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in
|tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you.
|confirm
step
_Click_ the tomes at the locations below to gain 1 of 3 random buffs
|tip The tomes are books with a metal spiked spine.
|tip The buffs last five minutes so you need to act quickly when moving from one to the next.
_Click here_ for this tome location [Spires of Arak 74.6,31.2]
_Click here_ for this tome location [Spires of Arak 74.2,27.7]
_Click here_ for this tome location [Spires of Arak 72.7,32.5]
_Click here_ for this tome location [Spires of Arak 71.7,27.9]
_Click here_ for this tome location [Spires of Arak 70.5,24.1]
_Click here_ for this tome location [Spires of Arak 69.7,20.0]
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
This achievement _can only be completed_ during the Assault on Darktide Roost daily
accept Assault on Darktide Roost##36679 |goto Lunarfall/0 31.51,31.18
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in
|tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you.
|confirm
step
kill Darktide Engineer##78339+, Darktide Engineer##78999+ |goto Shadowmoon Valley D 58.8,85.9
collect Goblin Rocket Pack##115020
_Click here_ when you have found a Goblin Rocket Pack |confirm
step
_Make your way_ to the south eastern point of the island |goto Shadowmoon Valley D/0 63.0,95.4 < 20 |only if walking
_Follow_ the trail up the hill | goto Shadowmoon Valley D/0 63.0,93.0 < 20 |only if walking
_Use_ the Goblin Rocket Pack here |use Goblin Rocket Pack##115020 |goto Shadowmoon Valley D 60.6,89.2 < 5 |only if walking
|tip Click the button in the center of your screen and aim for the shelf above you.
_Click_ the button again and aim for the shelf above you |goto Shadowmoon Valley D 60.8,89.0<5
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
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Reputation\\Draenor\\Arakkoa Outcasts",{
achieveid={9469},
patch='60001',
description="\nEarn Exalted status with the Arakkoa Outcasts.",
},[[
step
This achievement _can be completed_ with the Arakkoa Outcasts Reputation Guide
|confirm |next "Reputations Guides\\Warlords of Draenor\\Arakkoa Outcasts"
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Reputation\\Draenor\\Council of Exarchs", {
achieveid={9470},
patch='60001',
description="\nEarn Exalted status with the Council of Exarchs.",
},[[
step
This achievement _can be completed_ with the Council of Exarchs Reputation Guide
|confirm |next "Reputations Guides\\Warlords of Draenor\\Council of Exarchs"
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Reputation\\Draenor\\Mantle of the Talon King",{
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
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Reputation\\Draenor\\Savage Friends",{
achieveid={9478},
patch='60001',
description="\nEarn Exalted with 3 Draenor reputations.",
},[[
step
_Earn_ Exalted with 3 Draenor reputations
To earn exalted with the Arakkoa Outcasts _click here_ |confirm |next "Reputations Guides\\Warlords of Draenor\\Arakkoa Outcasts"
To earn exalted with the Council of Exarchs _click here_ |confirm |next "Reputations Guides\\Warlords of Draenor\\Council of Exarchs"
To earn exalted with the Sha'tari Defense _click here_ |confirm |next "Reputations Guides\\Warlords of Draenor\\Sha'tari Defense"
To earn exalted with the Steamwheedle Preservation Society _click here_ |confirm |next "Reputations Guides\\Warlords of Draenor\\Steamwheedle Preservation Society"
To earn exalted with the Wrynn's Vanguard _click here_ |confirm |next "Reputations Guides\\Warlords of Draenor\\Wrynn's Vanguard"
|achieve 9478
step
Congratulations, you have _earned_ the Savage Friends Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Reputation\\Draenor\\Sha'tari Defense", {
achieveid={9476},
patch='60001',
description="\nEarn Exalted status with Sha'tari Defense.",
},[[
step
This achievement _can be completed_ with the Sha'tari Defense Reputation Guide
|confirm |next "Reputations Guides\\Warlords of Draenor\\Sha'tari Defense"
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Reputation\\Draenor\\Steamwheedle Perservation Society",{
achieveid={9472},
patch='60001',
description="\nEarn Exalted status with the Steamwheedle Perservation Society.",
},[[
step
This achievement _can be completed_ with the Steamwheedle Perservation Society Reputation Guide
|confirm |next "Reputations Guides\\Warlords of Draenor\\Steamwheedle Preservation Society"
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Reputation\\Draenor\\Wrynn's Vanguard", {
achieveid={9474},
patch='60001',
description="\nEarn Exalted status with the Wrynn's Vanguard.",
},[[
step
This achievement _can be completed_ with the Wrynn's Vanguard Reputation Guide
|confirm |next "Reputations Guides\\Warlords of Draenor\\Wrynn's Vanguard"
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
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Scenarios\\Proving Grounds\\Proving Yourself: Silver Damage",{
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
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Collections\\Toy Box\\The Toymaster",{
achieveid={9673},
patch='60002',
description="\nThis guide will help you earn The Toymaster achievement.",
},[[
step
talk Craggle Wobbletop##52358
|tip Craggle patrols the curved stone path just outside of the Trade District.
buy 1 Blue Crashin' Thrashin' Racer Controller##54343 |use Blue Crashin' Thrashin' Racer##54343 |n
|tip 40 gold, discounts with Gnomeregan reputation.
Learn the _Blue Crashin' Thrashin' Racer_ toy |toy Blue Crashin' Thrashin' Racer##54343 |goto Stormwind City/0 58.9,64.0
buy 1 Toy Train Set##44606 |use Toy Train Set##44606 |n
|tip 250 gold, discounts with Gnomeregan reputation.
Learn the _Toy Train Set_ toy |toy Toy Train Set##44606 |goto Stormwind City/0 58.9,64.0
buy 1 Wind-Up Train Wrecker##45057 |use Wind-Up Train Wrecker##45057 |n
|tip 250 gold, discounts with Gnomeregan reputation.
Learn the _Wind-Up Train Wrecker_ toy |toy Wind-Up Train Wrecker##45057 |goto Stormwind City/0 58.9,64.0
buy 1 Tiny Green Ragdoll##54437 |use Tiny Green Ragdoll##54437 |n
|tip 10 gold, discounts with Gnomeregan reputation.
Learn the _Tiny Green Ragdoll_ toy |toy Tiny Green Ragdoll##54437 |goto Stormwind City/0 58.9,64.0
buy 1 Tiny Blue Ragdoll##54438 |use Tiny Blue Ragdoll##54438 |n
|tip 10 gold, discounts with Gnomeregan reputation.
Learn the _Tiny Blue Ragdoll_ toy |toy Tiny Blue Ragdoll##54438 |goto Stormwind City/0 58.9,64.0
buy 1 The Pigskin##104323 |use The Pigskin##104323 |n
|tip 40 gold, discounts with Gnomeregan reputation.
Learn the _Pigskin_ toy |toy Pigskin##104323 |goto Stormwind City/0 58.9,64.0
buy 1 Foot Ball##104324 |use Foot Ball##104324 |n
|tip 40 gold, discounts with Gnomeregan reputation.
Learn the _Foot Ball_ toy |toy Foot Ball##104324 |goto Stormwind City/0 58.9,64.0
buy 1 Soft Foam Sword##137663 |use Soft Foam Sword##137663 |n
|tip This costs 40 gold, discounts with Gnomeregan reputation.
Learn the _Soft Foam Sword_ toy |toy Soft Foam Sword##137663 |goto Stormwind City/0 58.9,64.0
step
_Enter_ the tower |goto Azshara/0 25.1,38.6 |walk
talk Tex Vortacoil##36375
buy 1 Kalytha's Haunted Locket##68806 |use Kalytha's Haunted Locket##68806 |n
|tip This toy costs 5,000 gold.
Learn the _Kalytha's Haunted Locket_ toy |toy Kalytha's Haunted Locket##68806 |goto Azshara/0 25.6,38.0
step
_Go through_ the narrow pass here |goto Shadowmoon Valley D/0 47.5,39.5 |only if walking
_Turn left_ on the road |goto Shadowmoon Valley D/0 48.2,40.5 |only if walking
_Follow_ the path and enter the pavillion |goto Shadowmoon Valley D/0 49.2,37.9 |only if walking
_Go up_ the winding ramp |goto Shadowmoon Valley D/0 49.9,37.0 < 10 |only if walking
_Reach the top_ of the ramp |goto Shadowmoon Valley D/0 49.1,36.6 < 10 |only if walking
_Open_ the Astrologer's Box |goto Shadowmoon Valley D/0 49.4,37.6 |only if walking
click Astrologer's Box##226831 |goto Shadowmoon Valley D/0 49.4,37.6
|tip It is a small brown chest in front of the bookcase at the top of a winding ramp.
collect 1 Star Chart##109739 |use Star Chart##109739 |n
Learn the _Star Chart_ toy |toy Star Chart##109739
only Alliance
step
kill Yggdrel##75435
collect 1 Ancient's Bloom##113570 |use Ancient's Bloom##113570 |n
Learn the _Ancient's Bloom_ toy |toy Ancient's Bloom##113570 |goto Shadowmoon Valley D/0 48.6,66.2
confirm
step
_Go to_ the river |goto Shadowmoon Valley D/0 52.0,69.0 |only if walking
_Continue_ following the river southeast |goto Shadowmoon Valley D/0 53.5,73.0 |only if walking
_Go to_ the base of the tree |goto Shadowmoon Valley D 55.29,74.87 |only if walking
click Swamplighter Hive##232592 |q 35580 |future |goto Shadowmoon Valley D 55.29,74.87
|tip It's a yellow beehive located up in the tree. All of the wasps will attack you when you click it.
collect 1 Angry Beehive##117550 |use Angry Beehive##117550 |n
Learn the _Angry Beehive_ toy |toy Angry Beehive##117550
step
_Go through_ the stone arch |goto Spires of Arak/0 72.3,25.6 |only if walking
_Go up_ the hill |goto Spires of Arak/0 71.3,20.7 |only if walking
kill Soul-Twister Torek##85026
collect 1 Black Whirlwind##119178 |use Black Whirlwind##119178 |n
|tip Not a guaranteed drop.
Learn the _Black Whirlwind_ toy |toy Black Whirlwind##119178 |goto Spires of Arak/0 72.6,19.3
confirm
step
_Climb up_ the rocks |goto Shadowmoon Valley D/0 38.7,49.3 < 5
|tip Notice the "stepping stones" that lead up. You must be mounted to make the long jump. |only if walking
kill Hypnocroak##79524
collect 1 Hypnosis Goggles##113631 |use Hypnosis Goggles##113631 |n
Learn the _Hypnosis Goggles_ toy |toy Hypnosis Goggles##113631 |goto Shadowmoon Valley D/0 37.6,49.0
confirm
step
_Go to_ the pond |goto Shadowmoon Valley D/0 50.4,78.9 |only if walking
_Swim down_ to the bottom |goto Shadowmoon Valley D 51.14,79.12 |only if walking
click Vindicator's Cache##224784 |q 33574 |future |goto Shadowmoon Valley D 51.14,79.12
|tip It's a small half-buried chest under the water.
collect 1 Vindicator's Armor Polish Kit##113375 |use Vindicator's Armor Polish Kit##113375 |n
Learn the _Vindicator's Armor Polish Kit_ toy |toy Vindicator's Armor Polish Kit##113375
step
_Go down_ the path |goto Frostfire Ridge/0 44.7,12.5 |only if walking
kill Tor'goroth##82618
collect 1 Soul Inhaler##119163 |use Soul Inhaler##119163 |n
Learn the _Soul Inhaler_ toy |toy Soul Inhaler##119163 |goto Frostfire Ridge/0 43.5,8.9
confirm
step
_Enter_ the building here |goto Frostfire Ridge/0 23.3,24.1 |walk
click Arena Master's War Horn##226955 |goto Frostfire Ridge 23.17,24.95
|tip It's on the seat of the throne.
collect 1 Arena Master's War Horn##108735 |use Arena Master's War Horn##108735 |n
Learn the _Arena Master's War Horn_ toy |toy Arena Master's War Horn##108735
step
kill Breathless##78867
|tip Breathless is in the small canyon surrounded by large rocks.
collect 1 Stolen Breath##111476 |use Stolen Breath##111476 |n
Learn the _Stolen Breath_ toy |toy Stolen Breath##111476 |goto Frostfire Ridge/0 27.6,50.0
confirm
step
_Go through_ the narrow pass |goto Frostfire Ridge/0 23.0,9.3 |only if walking
_Fish_ from the Lagoon Pool |cast Fishing##131474
Fish up the _Giant Draenor Clam_ |goto Frostfire Ridge 21.89,09.63
|tip Try zooming your camera in if you have issues with clicking your bobber.
use Giant Draenor Clam##108738 |only if itemcount(108738) > 0
use Pretty Draenor Pearl##108739 |only if itemcount(108739) > 0
collect 1 Pretty Draenor Pearl##108739 |use Pretty Draenor Pearl##108739 |n
Learn the _Pretty Draenor Pearl_ toy |toy Pretty Draenor Pearl##108739
step
kill Basten##86257
kill Valstil##86259
|tip Kill Vastil first, he is the healer of the group. Be sure to interrupt Revitalizing Waters.
kill Nultra##86258
|tip This trio is pretty tough, you may want to bring a friend.
collect 1 Botani Camouflage##119432 |use Botani Camouflage##119432 |n
|tip This toy is not a guaranteed drop.
Learn the _Botani Camouflage_ toy |toy Botani Camouflage##119432 |goto Gorgrond/0 69.2,44.6
confirm
step
kill Sulfurious##80725
collect 1 Bubble Wand##114227 |use Bubble Wand##114227 |n
|tip This toy is a guaranteed drop.
Learn the _Bubble Wand_ toy |toy Bubble Wand##114227 |goto Gorgrond/0 41.0,60.4
confirm
step
_Go through_ the opening in the thorns |goto Gorgrond/0 58.1,69.0 < 10 |only if walking
kill Fossilwood the Petrified##85250
collect 1 Petrification Stone##118221 |use Petrification Stone##118221 |n
Learn the _Petrification Stone_ toy |toy Petrification Stone##118221 |goto Gorgrond/0 57.4,68.6
confirm
step
_Enter_ the glade |goto Gorgrond/0 40.0,83.0 |only if walking
_Go up_ the hill |goto Gorgrond/0 39.6,79.9 |only if walking
kill Bashiok##82085
collect 1 Spirit of Bashiok##118222 |use Spirit of Bashiok##118222 |n
Learn the _Spirit of Bashiok_ toy |toy Spirit of Bashiok##118222 |goto Gorgrond/0 40.1,78.9
confirm
step
_Enter_ the cave |goto Gorgrond/0 48.6,47.2 < 15 |walk
click Warm Goren Egg##234054 |goto Gorgrond 48.94,47.31
|tip It's a glowing red egg sitting against the wall on the back side of the cave.
collect 1 Warm Goren Egg##118705 |use Cracked Goren Egg##118706 |n
|tip It takes 7 days for this egg to crack, allowing you to loot the toy.
collect 1 Goren Garb##118716 |use Goren Garb##118716 |n
Learn the _Goren Garb_ toy |toy Goren Garb##118716
step
kill Kharazos the Triumphant##78710 |goto Talador/0 56.6,62.6
kill Sikthiss, Maiden of Slaughter##78715 |goto Talador/0 56.6,62.6
|tip Both of these rares wander around the same small area.
collect 1 Burning Legion Missive##116122 |use Burning Legion Missive##116122 |n
Learn the _Burning Legion Missive_ toy |toy Burning Legion Missive##116122
confirm
step
_Enter_ the cave |goto Talador/0 61.3,84.2 < 15 |walk
_Go up_ the right ramp |goto Talador/0 64.4,86.6 < 15 |only if walking
_Continue_ going down the side passage with spider eggs |goto Talador/0 66.4,87.9 < 15 |only if walking
kill Klikixx##78872
collect 1 Klikixx's Webspinner##116125 |use Klikixx's Webspinner##116125 |n
|tip This toy is a guaranteed drop.
Learn the _Klikixx's Webspinner_ toy |toy Klikixx's Webspinner##116125 |goto Talador/0 66.8,85.4
step
_Go right_ at the fork in the road |goto Talador/0 33.8,60.2
kill Shadow Council Summoner##77794
|tip Kill the summoners to free Echo of Murmur.
kill Echo of Murmur##77828
collect 1 Mournful Moan of Murmur##113670 |use Mournful Moan of Murmur##113670 |n
Learn the _Mournful Moan of Murmur_ toy |toy Mournful Moan of Murmur##113670 |goto Talador/0 34.0,57.2
step
click Deceptia's Smoldering Boots##226976 |goto Talador 58.90,12.00
|tip A small pair of boots in the ruined camp.
collect 1 Deceptia's Smoldering Boots##108743 |use Deceptia's Smoldering Boots##108743 |n
Learn the _Deceptia's Smolerding Boots_ toy |toy Deceptia's Smoldering Boots##108743
step
_Enter_ the cave |goto Talador/0 61.3,84.2 |walk
_Go to_ the main cavern |goto Talador/0 65.4,86.2 |only if walking
click Curious Deathweb Egg##227996 |goto Talador 66.50,86.94
|tip It is a purple, motionless egg sack found behind the large crystal formation towards the back of the cave.
collect 1 Giant Deathweb Egg##117569 |use Giant Deathweb Egg##117569 |n
Learn the _Giant Deathweb Egg_ toy |toy Giant Deathweb Egg##117569
step
map Nagrand D
path follow smart; loop on; ants curved; dist 40
path	52.8,51.6	57.4,54.0	60.6,58.6
path	59.8,65.2	60.4,70.2	63.6,72.4
path	66.4,73.4	73.2,67.2	76.2,68.6
path	79.8,65.6	82.0,60.8	81.6,49.8
path	77.8,43.6	72.2,39.0	67.4,39.2
path	63.2,34.6	62.4,29.2	64.6,26.2
path	63.2,21.2	57.4,25.2	52.6,19.2
path	47.2,17.8	45.0,24.8	43.8,32.0
path	40.8,38.8	43.6,43.0	49.2,41.2
path	51.6,46.6
kill Warleader Tome##81330
|tip Follow the path, searching for Tome. You will need a group to defeat him.
collect 1 Outrider's Bridle Chain##120276 |use Outrider's Bridle Chain##120276 |n
Learn the _Outrider's Bridle Chain_ toy |toy Outrider's Bridle Chain##120276
step
kill Bramblefell##91093 |tip Bramblefell wanders around the marsh in a small area.
collect 1 Felflame Campfire##127652 |use Felflame Campfire##127652 |n
|tip This toy is roughly a 35% drop.
Learn the _Felflame Campfire_ toy |toy Felflame Campfire##127652 |goto Tanaan Jungle/0 41.0,68.8
confirm
step
_Enter_ the cave |goto Tanaan Jungle/0 37.3,75.9 < 10 |walk
_Go down_ the left passage |goto Tanaan Jungle/0 36.9,77.8 < 10 |only if walking
kill Captain Ironbeard##93076
collect 1 Ghostly Iron Buccaneer's Hat##127659 |use Ghostly Iron Buccaneer's Hat##127659 |n
|tip This toy is roughly a 35% drop.
Learn the _Ghostly Iron Buccaneer's Hat_ toy |toy Ghostly Iron Buccaneer's Hat##127659 |goto Tanaan Jungle 36.20,79.70
confirm
step
kill Remnant of the Blood Moon##91227
collect 1 Vial of Red Goo##127666 |use Vial of Red Goo##127666 |n
|tip This toy is roughly a 35% drop.
Learn the _Vial of Red Goo_ toy |toy Vial of Red Goo##127666 |goto Tanaan Jungle/0 22.2,50.6
|tip Drained Blood Crystals are found all over the area.
|tip This rare will require you and your allies to collect 125 Drained Blood Crystals and use them at this altar. You will see a progress bar at the top of the screen.
|tip This rare will require a group to defeat.
confirm
step
_Go up_ the steps |goto Tanaan Jungle/0 30.6,71.0 < 8 |only if walking
_Enter_ the small building |goto Tanaan Jungle/0 32.1,70.8 < 5 |walk
click Tome of Secrets##240855 |goto Tanaan Jungle 32.40,70.40
collect 1 Accursed Tome of the Sargerei##127670 |use Accursed Tome of the Sargerei##127670 |n
Learn the _Accursed Tome_ of the Sargerei toy |toy Accursed Tome of the Sargerei##127670
step
_Enter_ the building |goto Tanaan Jungle/0 43.0,35.8 < 10 |walk
_Take the stairs_ all the way up |goto Tanaan Jungle/0 42.9,35.0 < 5 |only if walking
click Dazzling Rod##241848 |goto Tanaan Jungle 42.80,35.40 |tip It is found at the very top of the tower.
collect 1 Dazzling Rod##127859 |use Dazzling Rod##127859 |n
Learn the _Dazzling Rod_ toy |toy Dazzling Rod##127859
step
click Jewel of Hellfire##240580 |goto Tanaan Jungle 28.70,23.30
|tip This treasure is on the shore. You will need to swim from Ironhold Harbor to reach it.
collect 1 Jewel of Hellfire##127668 |use Jewel of Hellfire##127668 |n
Learn the _Jewel of Hellfire_ toy |toy Jewel of Hellfire##127668
step
click Loose Soil##241606 |goto Tanaan Jungle 64.70,42.80 < 8
|tip Clicking the loose soil will cause a vine to throw you up into the tree. The fruit is on the branch you land on.
click Strange Fruit##241599 |goto Tanaan Jungle 64.6,42.1
collect 1 Strange Green Fruit##127396 |use Ripened Strange Fruit##127395 |n
collect 1 Podling Camouflage##127394 |use Podling Camouflage##127394 |n
|tip After 14 days, the Strange Fruit will ripen. You can then loot this toy.
Learn the _Podling Camouflage_ toy |toy Podling Camouflage##127394
confirm
step
Get the Pollen Protection buff |havebuff 136074 |only if not completedq(38639)
|tip Click Mysterious Fruit around the area until you receive the buff.
click The Perfect Blossom##241522 |goto Tanaan Jungle 40.80,75.50
|tip It's hidden under the giant tree.
collect 1 The Perfect Blossom##127766 |use The Perfect Blossom##127766 |n
Learn The _Perfect Blossom_ toy |toy The Perfect Blossom##127766
step
kill Urgolax##50359
collect 1 Chalice of Secrets##86575 |use Chalice of Secrets##86575 |n
Learn the _Chalice of Secrets_ toy |toy Chalice of Secrets##86575 |goto Vale of Eternal Blossoms/0 39.8,25.0
confirm
step
kill Kang the Soul Thief##50349
collect 1 Kang's Bindstone##86571 |use Kang's Bindstone##86571 |n
Learn the _Kang's Bindstone_ toy |toy Kang's Bindstone##86571 |goto Vale of Eternal Blossoms/0 15.0,35.6
confirm
step
kill Yorik Sharpeye##50336
collect 1 Mr. Smite's Brass Compass##86568 |use Mr. Smite's Brass Compass##86568 |n
Learn the _Mr. Smite's Brass Compass_ toy |toy Mr. Smite's Brass Compass##86568 |goto Vale of Eternal Blossoms/0 87.8,44.6
confirm
step
kill Moldo One-Eye##50806
collect 1 Panflute of Pandaria##86586 |use Panflute of Pandaria##86586 |n
Learn the _Panflute of Pandaria_ toy |toy Panflute of Pandaria##86586 |goto Vale of Eternal Blossoms/0 39.8,53.2
confirm
step
kill Zai the Outcast##50769
collect 1 Farwater Conch##86581 |use Farwater Conch##86581 |n
Learn the _Farwater Conch_ toy |toy Farwater Conch##86581 |goto Kun-Lai Summit/0 73.8,77.4
confirm
step
kill Ahone the Wanderer##50817 |tip She is located in the gazebo.
collect 1 Pandaren Firework Launcher##86588 |use Pandaren Firework Launcher##86588 |n |tip This toy is roughly a 10% drop.
Learn the _Pandaren Firework Launcher_ toy |toy Pandaren Firework Launcher##86588 |goto Kun-Lai Summit/0 40.8,42.6
confirm
step
kill Ai-Li Skymirror##50821
collect 1 Ai-Li's Skymirror##86589 |use Ai-Li's Skymirror##86589 |n
Learn the _Ai-Li's Skymirror_ toy |toy Ai-Li's Skymirror##86589 |goto Dread Wastes/0 34.8,23.2
confirm
step
_Enter_ the burrow |goto Dread Wastes/0 54.9,65.8 |walk
kill Ik-Ik the Nimble##50836
collect 1 Hozen Beach Ball##86593 |use Hozen Beach Ball##86593 |n
Learn the _Hozen Beach Ball_ toy |toy Hozen Beach Ball##86593 |goto Dread Wastes/0 55.4,63.4
confirm
step
kill Champion of the Black Flame##73171
collect 1 Blackflame Daggers##104302 |use Blackflame Daggers##104302 |n
Learn the _Blackflame Daggers_ toy |toy Blackflame Daggers##104302 |goto Timeless Isle/0 69.4,43.8
confirm
step
kill Eternal Kilnmaster##72896
collect 1 Eternal Kiln##104309 |use Eternal Kiln##104309 |n
Learn the _Eternal Kiln_ toy |toy Eternal Kiln##104309 |goto Timeless Isle/0 35.6,36.2
You can also find the Kilnmasters at one of these other locations:
Here [41.6,28.8]
Here [47.4,36.0]
Here [56.6,38.6]
Here [54.0,24.0]
Here [68.8,34.4]
Here [56.0,59.6]
confirm
step
kill Golganarr##72970
collect 1 Odd Polished Stone##104262 |use Odd Polished Stone##104262 |n
Learn the _Odd Polished Stone_ toy |toy Odd Polished Stone##104262 |goto Timeless Isle/0 61.6,63.6
confirm
step
click Cursed Gravestone##223139 |goto Timeless Isle/0 26.4,28.0
|tip It's on a swirling purple obelisk. You will need the Mist-Filled Spirit Lantern which drops from Evermaw, who swims around the island.
kill Dread Ship Vazuvius##73281
collect 1 Rime of the Time-Lost Mariner##104294 |use Rime of the Time-Lost Mariner##104294 |n
Learn the _Rime of the Time-Lost Mariner_ toy |toy Rime of the Time-Lost Mariner##104294 |goto Timeless Isle/0 25.8,23.2
confirm
step
kill Jakur of Ordon##73169
collect 1 Warning Sign##104331 |use Warning Sign##104331 |n
Learn the _Warning Sign_ toy |toy Warning Sign##104331 |goto Timeless Isle/0 53.6,83.0
confirm
step
map Throne of Thunder/4
path follow smart; loop off; ants curved; dist 15
path	22.0,35.3	15.6,55.5	23.5,64.4
path	31.6,65.8	40.4,74.6	42.8,76.6
path	43.4,84.5	54.3,90.0	65.9,86.1
path	72.0,81.5	74.9,67.3	62.7,57.5
path	53.8,52.0
Follow the path, killing and looting any Gastropods you see
kill Gastropod##68220 |tip Don't get close to these.
collect 1 Gastropod Shell##98136 |use Gastropod Shell##98136 |n
Learn the _Gastropod Shell_ toy |toy Gastropod Shell##98136
|tip You will need a group to farm this toy.
confirm
step
kill Moonfang##71992 |tip Look for the bright white pillar of light.
collect 1 Moonfang's Paw##105898 |use Moonfang's Paw##105898 |n
Learn the _Moonfang's Paw_ toy |toy Moonfang's Paw##105898 |goto Darkmoon Island/0 39.8,44.4
collect 1 Moonfang Shroud##101571 |use Moonfang Shroud##101571 |n
Learn the _Moonfang Shroud_ toy |toy Moonfang Shroud##101571 |goto Darkmoon Island/0 39.8,44.4
confirm
step
Earn _Revered_ status with the Sha'tari Defense faction |complete rep("Sha'tari Defense")>=Revered
talk Maaria##85427
|tip She inside located in your garrison trading post.
buy 1 Sha'tari Defender's Medallion##119421 |use Sha'tari Defender's Medallion##119421 |n
|tip This toy costs 250 gold, modified by reputation status.
Learn the _Sha'tari Defender's Medallion_ toy |toy Sha'tari Defender's Medallion##119421
confirm
step
Earn _Honored_ status with the Sha'tari Defense faction |complete rep("Sha'tari Defense")>=Honored
talk Maaria##85427
|tip She inside located in your garrison trading post.
buy 1 Soul Evacuation Crystal##119182 |use Soul Evacuation Crystal##119182 |n
|tip This toy costs 250 gold, modified by reputation status.
Learn the _Soul Evacuation Crystal_ toy |toy Soul Evacuation Crystal##119182
confirm
step
Earn _Revered_ status with the Hand of the Prophet faction |complete rep("Hand of the Prophet")>=Revered
talk Vindicator Krethos ##90974
|tip He is inside the bunker.
buy 1 Karabor Councilor's Attire##128462 |use Karabor Councilor's Attire##128462 |n
|tip This toy costs 300 gold, modified by reputation status.
Learn the _Karabor Councilor's Attire_ toy |toy Karabor Councilor's Attire##128462 |goto Tanaan Jungle/0 58.4,60.5
confirm
step
Earn _Revered_ status with the Order of the Awakened faction |complete rep("Order of the Awakened")>=Revered
talk Dawn-Seeker Krisek##95424
buy 1 Rukhmar's Sacred Memory##122283 |use Rukhmar's Sacred Memory##122283 |n
|tip This toy costs 50,000 Apexis Crystals.
Learn the _Rukhmar's Sacred Memory_ toy |toy Rukhmar's Sacred Memory##122283 |goto Tanaan Jungle/0 58.0,59.4
confirm
step
Earn _Revered_ status with the Emperor Shaohao faction |complete rep("Emperor Shaohao")>=Revered
talk Mistweaver Ku##73306
buy 1 Celestial Defender's Medallion##103685 |use Celestial Defender's Medallion##103685 |n
|tip This toy costs 1,000 Timeless Coins.
Learn the _Celestial Defender's Medallion_ toy |toy Celestial Defender's Medallion##103685 |goto Timeless Isle/0 42.8,54.8
confirm
step
Earn _Revered_ status with the Order of the Cloud Serpent faction |complete rep("Order of the Cloud Serpent")>=Revered
talk San Redscale##58414
buy 1 Cloud Ring##89222 |use Cloud Ring##89222 |n
|tip This toy costs 1,000 gold.
Learn the _Cloud Ring_ toy |toy Cloud Ring##89222 |goto The Jade Forest/0 56.6,44.4
confirm
step
Earn _Exalted_ status with the The Tillers faction |complete rep("The Tillers")>=Exalted
talk Gina Mudclaw##58706
buy 1 Gin-Ji Knife Set##90175 |use Gin-Ji Knife Set##90175 |n
|tip This toy costs 250 gold, modified by reputation status.
Learn the _Gin-Ji Knife Set_ toy |toy Gin-Ji Knife Set##90175 |goto Valley of the Four Winds/0 53.2,51.6
confirm
step
Earn _Exalted_ status with the Kirin Tor Offensive faction |complete rep("Kirin Tor Offensive")==Exalted
talk Lady Jaina Proudmoore##67992
accept Securing A Future##32599 |goto Isle of Thunder/0 63.2,72.2
kill Lei Shen##68397
Charge the staff |q 32599/1 |use Staff of Antonidas##94155 |future
turnin Securing A Future##32599 |goto Isle of Thunder/0 63.2,72.2 |only if itemcount(94153) > 0
collect 1 Glorious Standard of the Kirin Tor Offensive##95589 |use Glorious Standard of the Kirin Tor Offensive##95589 |n
|tip This toy is the reward for completing "Securing A Future."
Learn the _Glorious Standard of the Kirin Tor Offensive_ toy |toy Glorious Standard of the Kirin Tor Offensive##95589
confirm
step
Earn _Best Friends_ status with the Nat Pagle faction |complete rep("Nat Pagle")==BestFriend
talk Nat Pagle##63721
buy 1 Nat's Fishing Chair##86596 |use Nat's Fishing Chair##86596 |n
Learn the _Nat's Fishing Chair_ toy |toy Nat's Fishing Chair##86596 |goto Krasarang Wilds/0 68.4,43.4
confirm
step
Earn _Revered_ status with the The Tillers faction |complete rep("The Tillers")>=Revered
talk Gina Mudclaw##58706
buy 1 Pandaren Scarecrow##89869 |use Pandaren Scarecrow##89869 |n
|tip This toy costs 200 gold, modified by reputation status.
Learn the _Pandaren Scarecrow_ toy |toy Pandaren Scarecrow##89869 |goto Valley of the Four Winds/0 53.2,51.6
confirm
step
#include "Garrison_CommandTable"
|tip Click your garrison command table and start the mission "Hearthstone Tournament" if it is available.
Complete the "Hearthstone Tournament" garrison mission |collect 1 Autographed Hearthstone Card##118427 |or
Learn the _Autographed Hearthstone Card_ toy |toy Autographed Hearthstone Card##118427 |or
confirm
step
#include "Garrison_CommandTable"
|tip Click your garrison command table and start the mission "Burning Blademasters" if it is available.
Complete the "Burning Blademasters" garrison mission |collect 1 Burning Blade##128310 |or
Learn the _Burning Blade_ toy |toy Burning Blade##128310 |or
|tip Note: This mission requires you to have an item level of at least 675 and several followers with a 675 item level before it will appear.
confirm
step
Fly to Southport |goto Spires of Arak/0 39.9,60.8
You currently have the Brewery built as your Spires of Arak outpost |tip You must have the Smuggler's Den to purchase this toy |only if garrisonability("Inn")
talk Lieutenant Willem##81929 |only if garrisonability("Inn")
Tell him: "_I want to build a new structure._" |goto Spires of Arak/0 39.9,60.9 |tip This will cost you 5,000 gold. |only if garrisonability("Inn")
Click the Drafting Table and select the Smuggler's Den |complete garrisonability("TradingPost") |goto Spires of Arak/0 39.7,60.9 |only if garrisonability("Inn")
Use your garrison ability |cast Smuggling Run!##170097 |only if garrisonability("TradingPost")
talk Honest Jim##82459 |only if garrisonability("TradingPost")
buy 1 Bloodmane Charm##113096 |use Bloodmane Charm##113096 |tip This toy costs 500 gold. |only if garrisonability("TradingPost")
Learn the _Bloodmane Charm_ toy |toy Bloodmane Charm##113096 |use |only if garrisonability("TradingPost")
confirm
step
You must build a Lunarfall Inn to get the quest associated with this toy |only if not hasbuilding(34) or not hasbuilding(35) or not hasbuilding(36)
Check your inn each day for the quest "Cleaving Time" offered by Gamon |only if hasbuilding(34) or hasbuilding(35) or hasbuilding(36)
talk Gamon##88007 |only if hasbuilding(34) or hasbuilding(35) or hasbuilding(36)
accept Cleaving Time##37160 |goto Lunarfall/0 45.1,50.3 |only if hasbuilding(34) or hasbuilding(35) or hasbuilding(36)
Collect the Iron Limbcleaver |q 37160/1 |goto Grimrail Depot/4 53.8,51.9 |only if hasbuilding(34) or hasbuilding(35) or hasbuilding(36)
kill Skylord Tovra##80005 |q 37160/2 |goto Grimrail Depot/4 8.6,51.0 |only if hasbuilding(34) or hasbuilding(35) or hasbuilding(36)
|tip These objectives are completed in the Grimrail Depot on Heroic difficulty. |only if hasbuilding(34) or hasbuilding(35) or hasbuilding(36)
turnin Cleaving Time##37160 |goto Lunarfall/0 45.1,50.3 |only if hasbuilding(34) or hasbuilding(35) or hasbuilding(36)
Learn the _Gamon's Braid_ toy |toy Gamon's Braid##118937 |use Gamon's Braid##118937
confirm
step
You must build a Lunarfall Inn to get the quest associated with this toy |only if not hasbuilding(34) or not hasbuilding(35) or not hasbuilding(36)
Check your inn each day for the quest "The Soulcutter" offered by Lilian Voss |only if hasbuilding(34) or hasbuilding(35) or hasbuilding(36)
talk Lilian Voss##87996 |only if hasbuilding(34) or hasbuilding(35) or hasbuilding(36)
accept The Soulcutter##37156 |goto Lunarfall/0 45.1,50.3 |only if hasbuilding(34) or hasbuilding(35) or hasbuilding(36)
Collect the Soulsever Blade |q 37156/1 |goto Auchindoun/1 53.3,63.4 |only if hasbuilding(34) or hasbuilding(35) or hasbuilding(36)
kill Teron'gor##77734 |q 37156/2 |goto Auchindoun/1 49.6,33.5 |only if hasbuilding(34) or hasbuilding(35) or hasbuilding(36)
|tip These objectives are completed in the Auchindoun on Heroic difficulty. |only if hasbuilding(34) or hasbuilding(35) or hasbuilding(36)
turnin The Soulcutter##37156 |goto Lunarfall/0 45.1,50.3 |only if hasbuilding(34) or hasbuilding(35) or hasbuilding(36)
Learn the _Lilian's Warning Sign_ toy |toy Lilian's Warning Sign##119039 |use Lilian's Warning Sign##119039
confirm
step
You must build a Lunarfall Inn to get the quest associated with this toy |only if not hasbuilding(34) or not hasbuilding(35) or not hasbuilding(36)
Check your inn each day for the quest "For The Children!" offered by Millhouse Manastorm |only if hasbuilding(34) or hasbuilding(35) or hasbuilding(36)
talk Millhouse Manastorm##88009 |only if hasbuilding(34) or hasbuilding(35) or hasbuilding(36)
accept For The Children!##37179 |goto Lunarfall/0 45.1,50.3 |only if hasbuilding(34) or hasbuilding(35) or hasbuilding(36)
Collect the Miniature Iron Star |q 37179/1 |goto Upper Blackrock Spire 2/3 34.5,54.5 |only if hasbuilding(34) or hasbuilding(35) or hasbuilding(36)
kill Warlord Zaela##77120 |q 37179/2 |goto Upper Blackrock Spire 2/3 14.4,47.7 |only if hasbuilding(34) or hasbuilding(35) or hasbuilding(36)
|tip These objectives are completed in the Upper Blackrock Spire on Heroic difficulty. |only if hasbuilding(34) or hasbuilding(35) or hasbuilding(36)
turnin For The Children!##37179 |goto Lunarfall/0 45.1,50.3 |only if hasbuilding(34) or hasbuilding(35) or hasbuilding(36)
Learn the _Manastorm's Duplicator_ toy |toy Manastorm's Duplicator##118938 |use Manastorm's Duplicator##118938
confirm
step
You must build a Lunarfall Inn to get the quest associated with this toy |only if not hasbuilding(34) or not hasbuilding(35) or not hasbuilding(36)
Check your inn each day for the quest "Feeling A Bit Morose" offered by Moroes |only if hasbuilding(34) or hasbuilding(35) or hasbuilding(36)
talk Moroes##87994 |only if hasbuilding(34) or hasbuilding(35) or hasbuilding(36)
accept Feeling A Bit Morose##37157 |goto Lunarfall/0 45.1,50.3 |only if hasbuilding(34) or hasbuilding(35) or hasbuilding(36)
Collect the Horribly Acidic Solution |q 37157/1 |goto Iron Docks/1 50.4,52.4 |only if hasbuilding(34) or hasbuilding(35) or hasbuilding(36)
kill Skulloc##83612 |q 37157/2 |goto Iron Docks/1 68.4,43.6 |only if hasbuilding(34) or hasbuilding(35) or hasbuilding(36)
|tip These objectives are completed in the Upper Blackrock Spire on Heroic difficulty. |only if hasbuilding(34) or hasbuilding(35) or hasbuilding(36)
turnin Feeling A Bit Morose##37157 |goto Lunarfall/0 45.1,50.3 |only if hasbuilding(34) or hasbuilding(35) or hasbuilding(36)
Learn the _Moroes' Famous Polish_ toy |toy Moroes' Famous Polish##119092 |use Moroes' Famous Polish##119092
confirm
step
You must build a Lunarfall Inn to get the quest associated with this toy |only if not hasbuilding(34) or not hasbuilding(35) or not hasbuilding(36)
Check your inn each day for the quest "Shadowy Secrets" offered by Highlord Darion Mograine |only if hasbuilding(34) or hasbuilding(35) or hasbuilding(36)
talk Highlord Darion Mograine##88002 |only if hasbuilding(34) or hasbuilding(35) or hasbuilding(36)
accept Shadowy Secrets##37163 |goto Lunarfall/0 45.1,50.3 |only if hasbuilding(34) or hasbuilding(35) or hasbuilding(36)
Collect the Dark Parchment |q 37163/1 |goto Shadowmoon Burial Grounds/1 29.4,43.4 |only if hasbuilding(34) or hasbuilding(35) or hasbuilding(36)
kill Ner'zhul##76407 |q 37163/2 |goto Shadowmoon Burial Grounds/3 48.1,47.1 |only if hasbuilding(34) or hasbuilding(35) or hasbuilding(36)
|tip These objectives are completed in the Shadowmoon Burial Grounds on Heroic difficulty. |only if hasbuilding(34) or hasbuilding(35) or hasbuilding(36)
turnin Shadowy Secrets##37163 |goto Lunarfall/0 45.1,50.3 |only if hasbuilding(34) or hasbuilding(35) or hasbuilding(36)
Learn the _Void Totem_ toy |toy Void Totem##119003 |use Void Totem##119003
confirm
step
You must first upgrade your garrison to level 3 before purchasing this toy! |only if garrisonlvl(1) or garrisonlvl(2)
talk Trader Araanda##95470
buy 1 Personal Spotlight##127864 |use Personal Spotlight##127864 |n
Learn the _Personal Spotlight_ toy |toy Personal Spotlight##127864 |goto Lunarfall/0 30.1,34.9
step
talk Benjamin Brode##88779
buy 1 Hearthstone Board##119210 |use Hearthstone Board##119210 |n
|tip This toy costs 1,000 gold.
Learn the _Hearthstone Board_ toy |toy Hearthstone Board##119210 |goto Lunarfall/0 45.1,50.3
buy 1 Winning Hand##119212 |use Winning Hand##119212 |n
|tip This toy costs 100 gold.
Learn the _Winning Hand_ toy |toy Winning Hand##119212 |goto Lunarfall/0 45.1,50.3
confirm
step
You must first upgrade you garrison to level 3 before Tiffy will be available |only if garrisonlvl(1) or garrisonlvl(2)
talk Tiffy Trapspring##94512
buy 1 Indestructible Bone##127707 |use Indestructible Bone##127707 |n
Learn the _Indestructible Bone_ toy |toy Indestructible Bone##127707 |goto Lunarfall/0 29.1,38.6
|tip This toy costs 50 Pet Charms.
buy 1 Spirit Wand##127695 |use Spirit Wand##127695 |n
Learn the _Spirit Wand_ toy |toy Spirit Wand##127695 |goto Lunarfall/0 29.1,38.6
|tip This toy costs 100 Pet Charms.
buy 1 Magic Pet Mirror##127696 |use Magic Pet Mirror##127696 |n
Learn the _Magic Pet Mirror_ toy |toy Magic Pet Mirror##127696 |goto Lunarfall/0 29.1,38.6
|tip This toy costs 500 Pet Charms.
confirm
step
Earn the _Azeroth's Top Twenty Tunes_ achievement |achieve 9912
|tip This achievement requires you to collect 20 music rolls from around the world. The reward is the Portable Audiophone toy.
Click here to load the guide for Azeroth's Top Twenty Tunes |confirm |next "Achievement Guides\\Draenor Garrison\\Azeroth's Top Twenty Tunes" |or
collect 1 Portable Audiophone##122700 |use Portable Audiophone##122700 |n
Learn the _Portable Audiophone_ toy |toy Portable Audiophone##122700 |next |or
confirm |next
step
Complete the _Socrethar's Fury_ quest from _Garrison Campaign: The Sargerei_ |q 35195 |future
Click here to load the Garrison Campaign guide |confirm |next "Leveling Guides\\Draenor (10-50)\\Garrisons\\Garrison Campaign" |or
collect 1 Sargerei Disguise##119134 |use Sargerei Disguise##119134 |n
Learn the _Sargerei Disguise_ toy |toy Sargerei Disguise##119134 |or
confirm
step
Complete the _The Trial of Champions_ quest from _Garrison Campaign: The Exarch's Call_ |q 36169 |future
Click here to load the Garrison Campaign guide |confirm |next "Leveling Guides\\Draenor (10-50)\\Garrisons\\Garrison Campaign" |or
collect 1 Touch of the Naaru##119144 |use Touch of the Naaru##119144 |n
Learn the _Touch of the Naaru_ toy |toy Touch of the Naaru##119144 |or
confirm
step
#include "Garrison_CommandTable"
|tip Click your garrison command table and start the mission "Lens Some Hands" if it is available.
|tip Please note, you must complete the mission "Field Photography" first.
Complete the "Lens Some Hands" garrison mission |collect 1 S.E.L.F.I.E. Lens Upgrade Kit##122661 |use S.E.L.F.I.E. Lens Upgrade Kit##122661 |or
Learn the _S.E.L.F.I.E. Camera MkII_ toy |toy S.E.L.F.I.E. Camera MkII##122674 |use S.E.L.F.I.E. Camera MkII##122674 |or
confirm
step
#include "Garrison_CommandTable"
|tip Click your garrison command table and start the mission "Finding Farahlon" if it is available.
Complete the "Finding Farahlon" garrison mission |collect 1 Mysterious Shining Lockbox##118193 |use Mysterious Shining Lockbox##118193 |or
Learn the _Archmage Vargoth's Spare Staff_ toy |toy Archmage Vargoth's Spare Staff##118191 |use Archmage Vargoth's Spare Staff##118191 |or
confirm
step
talk Sally Fizzlefury##55143
buy 1 Foxicopter Controller##88802 |use Foxicopter Controller##88802 |n
|tip This toy costs 1,000 gold.
Learn the _Foxicopter Controller_ toy |toy Foxicopter Controller##88802 |goto Valley of the Four Winds/0 16.0,83.0
step
talk Sally Fizzlefury##55143
buy 1 Stackable Stag##91904 |use Stackable Stag##91904 |n
|tip This toy costs 1,000 gold.
Learn the _Stackable Stag_ toy |toy Stackable Stag##91904 |goto Valley of the Four Winds/0 16.0,83.0
step
talk Rork Sharpchin##29744
buy 1 Iron Boot Flask##43499 |use Iron Boot Flask##43499 |n
|tip This toy costs 10 Relics of Ulduar
Learn the _Iron Boot Flask_ toy |toy Iron Boot Flask##43499 |goto The Storm Peaks/0 28.8,74.0
step
kill Doctor Theolen Krastinov##59369
|tip Krastinov is a rare spawn in Heroic Scholomance.
collect 1 Krastinov's Bag of Horrors##88566 |use Krastinov's Bag of Horrors##88566 |n
|tip This toy is a guaranteed drop
Learn the _Krastinov's Bag of Horrors_ toy |toy Krastinov's Bag of Horrors##88566 |goto Scholomance 37.8,36.4
step
#include "auctioneer"
buy 1 Loaded Gnomish Dice##63269 |use Loaded Gnomish Dice##63269 |n
Learn the _Loaded Gnomish Dice_ toy |toy Loaded Gnomish Dice##63269
step
#include "auctioneer"
buy 1 Decahedral Dwarven Dice##36863 |use Decahedral Dwarven Dice##36863 |n
Learn the _Decahedral Dwarven Dice_ toy |toy Decahedral Dwarven Dice##36863
step
#include "auctioneer"
buy 1 Orb of Deception##1973 |use Orb of Deception##1973 |n
Learn the _Orb of Deception_ toy |toy Orb of Deception##1973
step
#include "auctioneer"
buy 1 Worn Troll Dice##36862 |use Worn Troll Dice##36862 |n
Learn the _Worn Troll Dice_ toy |toy Worn Troll Dice##36862
step
#include "auctioneer"
buy 1 Muradin's Favor##52201 |use Muradin's Favor##52201 |n
Learn the _Muradin's Favor_ toy |toy Muradin's Favor##52201
step
#include "auctioneer"
buy 1 Sylvanas' Music Box##52253 |use Sylvanas' Music Box##52253 |n
Learn the _Sylvanas' Music Box_ toy |toy Sylvanas' Music Box##52253
step
kill Selin Fireheart##24723 |goto Magisters' Terrace/2 42.6,23.6
kill Vexallus##24744 |goto 81.6,26.8
kill Priestess Delrissa##24560 |goto Magisters' Terrace/1 39.2,56.2
kill Kael'thas Sunstrider##24664 |goto Magisters' Terrace/1 7.4,50.1
collect 1 Orb of the Sin'dorei##35275 |use Orb of the Sin'dorei##35275 |n
|tip This toy has a small chance to drop from these 4 bosses on Heroic difficulty.
Learn the _Orb of the Sin'dorei_ toy |toy Orb of the Sin'dorei##35275
step
kill Hearthsinger Forresten##10558
collect 1 Piccolo of the Flaming Fire##13379 |use Piccolo of the Flaming Fire##13379 |n
Learn the _Piccolo of the Flaming Fire_ toy |toy Piccolo of the Flaming Fire##13379 |goto Stratholme/1 59.8,26.7
step
kill Majordomo Staghelm##52571
collect 1 Fandral's Seed Pouch##122304 |use Fandral's Seed Pouch##122304 |n
|tip This toy can only drop for Druids.
Learn the _Fandral's Seed Pouch_ toy |toy Fandral's Seed Pouch##122304 |goto Firelands/3 50.9,72.4
step
label "goldenBanana"
kill Unga Fish-Getter##60299
|tip You can find them dragging fish to the shore from the water.
collect 1 Confusing Treasure Map##80827 |use Confusing Treasure Map##80827 |n
accept Buried Hozen Treasure##30675 |goto Krasarang Wilds/0 50.0,85.5
step
click Lump of Sand##211420
|tip you can find these all over the island.
Find the buried Hozen treasure |q 30675/1 |goto Krasarang Wilds/0 46.8,89.1
step
Click the quest completion box that pops up in your quest tracker
turnin Buried Hozen Treasure##30675
Learn the Golden Banana toy |toy The Golden Banana##80822 |use The Golden Banana##80822
step
talk Smokey Sootassle##59597
accept Traffic Issues##30616 |goto 64.88,60.49
step
kill Ruqin Outrider##59538
kill Ruqin Elder##59826
kill Ruqin Infantry##59790
Deal with the Ruqin Yaungols |q 30616/1 |goto Kun-Lai Summit/0 62.8,67.4
step
talk Smokey Sootassle##59597
turnin Traffic Issues##30616 |goto 64.88,60.49
step
talk Brother Lintpocket##59701
accept The Burlap Trail: To Burlap Waystation##30592 |goto 58.09,61.46
step
map Kun-Lai Summit/0
path follow smart; loop off; ants curved; dist 20
path	58.5,64.8	56.9,64.7	55.9,65.7
path	54.8,65.8	54.2,67.1	53.0,66.6
Escort the Grummie caravan |q 30592/1
|tip Follow the path, killing any attackers that threaten the caravan.
step
talk Brother Trailscenter##59703
turnin The Burlap Trail: To Burlap Waystation##30592 |goto Kun-Lai Summit/0 51.7,67.8
step
talk Brother Trailscenter##59703
accept The Rabbitsfoot##30602 |goto 51.66,67.83
step
talk Brother Rabbitsfoot##59806
Rescue Rabbitsfoot |q 30602/1 |goto Kun-Lai Summit/0 49.1,70.4
accept The Broketooth Ravage##30603 |goto 49.10,70.44
step
kill 1 Mo Mo##59805
collect Rabbitsfoot's Luckydo##81137 |n
Retrieve Rabbitsfoot's Luckydo |q 30603/1 |goto Kun-Lai Summit/0 48.0,73.3
step
talk Brother Rabbitsfoot##59452
turnin The Rabbitsfoot##30602 |goto 51.97,67.22
turnin The Broketooth Ravage##30603 |goto 51.97,67.22
accept A Monkey Idol##30599 |goto 51.97,67.22
step
kill Hateful Ko Ko##59430
collect Corpse of Ko Ko##80429 |n
click Ko Ko's Altar##211275
|tip It's a little blade on the stone.
Destroy Ko Ko's Altar |q 30599/2 |goto Kun-Lai Summit/0 52.3,71.4
step
_Enter_ the cave |goto Kun-Lai Summit/0 52.8,71.4
kill Dak Dak##59424
|tip Dak Dak patrols up and down the ledge.
collect Corpse of Dak Dak##80428 |goto Kun-Lai Summit/11 39.1,40.1 |n
click Dak Dak's Altar##210931
Destroy Dak Dak's Altar |q 30599/1 |goto Kun-Lai Summit/12 49.8,39.5
step
kill Tak Tak##59958
collect Corpse of Tak Tak##80430 |n
click Tak Tak's Altar##211276
|tip It's a little blade on the stone.
Destroy Tak Tak's Altar |q 30599/3 |goto Kun-Lai Summit/0 56.8,71.0
step
talk Brother Rabbitsfoot##59452
turnin A Monkey Idol##30599 |goto 51.97,67.22
Learn the Hozen Idol toy |toy Hozen Idol##88385 |use Hozen Idol##88385
step
label "shell"
kill Gokk'lok##62767
|tip Gokk'lok is a level 91 elite clam.
accept Promises of Gold##31083 |goto Dread Wastes/0 27.4,16.2
step
talk Chief Rikkitun##62771
turnin Promises of Gold##31083 |goto Dread Wastes/0 38.6,17.3
Learn the Gokk'lok's Shell toy |toy Gokk'lok's Shell##88417 |use Gokk'lok's Shell##88417 |goto Dread Wastes/0 38.6,17.3
step
talk Sya Zhong##60178
|tip She is inside the building.
accept Holed Up##30682 |goto Kun-Lai Summit/0 42.9,88.3
confirm
step
talk Ya Firebough##60189
|tip He is inside the building.
Tell him: "_...That's enough. Let's go._" |q 30682/2 |goto Kun-Lai Summit/0 41.0,87.0
step
talk Old Lady Fung##60190
|tip She is inside the building.
Tell her: "_Yes... why don't you 'escort' me out of here._" |q 30682/3 |goto Kun-Lai Summit/0 42.8,85.7
step
talk Jin Warmkeg##60187
|tip He is inside the building.
Tell him: "_Let's get out of here._" |q 30682/1 |goto Kun-Lai Summit/0 43.9,86.2
step
talk Shado-Master Chong##60161
|tip He is inside the building. You will need to click the doors to open them.
turnin Holed Up##30682 |goto Kun-Lai Summit/0 44.5,89.9
Learn the Jin Warmkeg's Brew toy |toy Jin Warmkeg's Brew##88579 |use Jin Warmkeg's Brew##88579 |goto Kun-Lai Summit/0 44.5,89.9
step
talk Ken-Ken##56115
accept What's Eating Zhu's Watch?##30079 |goto 76.21,7.06
step
talk Despondent Warden of Zhu##57457
Speak with Despondent Warden of Zhu |q 30079/1 |goto Krasarang Wilds/0 76.5,8.2
step
talk Sunni##57830
Speak with Sunni |q 30079/2 |goto Krasarang Wilds/0 77.5,8.5
step
talk Yun##57825
Speak with Yun |q 30079/3 |goto Krasarang Wilds/0 75.5,9.4
step
talk Mei Barrelbottom##57744
Speak with Mei |q 30079/4 |goto Krasarang Wilds/0 75.8,7.6
accept Finding Yi-Mo##30080 |goto Krasarang Wilds/0 75.84,7.60
step
talk Ken-Ken##56115
turnin What's Eating Zhu's Watch?##30079 |goto Krasarang Wilds/0 76.21,7.06
step
talk Yi-Mo Longbrow##58376
Find Yi-Mo |q 30080/1 |goto Krasarang Wilds/0 81.3,6.9
turnin Finding Yi-Mo##30080 |goto Krasarang Wilds/0 81.3,6.9
accept Cheer Up, Yi-Mo##30082 |goto Krasarang Wilds/0 81.3,6.9
step
talk Yi-Mo Longbrow##58376
Tell him: "_Please, Yi-Mo: your aunt's worried wick about you._"
Then, tell him: "_I don't have time for this. Move your ass or I'll move it for you._"
clicknpc Yi-Mo Longbrow##57310 |tip Keep clicking him to roll him towards Zhu's Watch
kill Thunderbird##58111 |tip These will randomly attack you while you return Yi-Mo.
Bring Yi-Mo to Zhu's Watch |q 30082/1 |goto Krasarang Wilds/0 76.7,7.7
step
talk Mei Barrelbottom##57744
turnin Cheer Up, Yi-Mo##30082 |goto Krasarang Wilds/0 75.84,7.60
step
talk Ken-Ken##56115
accept Materia Medica##30081 |goto 76.22,7.06
step
kill 1 Weeping Horror##57649
Gather Salty Cores |q 30081/1 |goto Krasarang Wilds/0 75.4,10.8
click Slick Mudfish##210186
|tip These are tiny green or purple fish on the ground around sha-touched areas. They are difficult to see, so look closely
Gather Slick Mudfish |q 30081/2 |goto Krasarang Wilds/0 75.4,10.8
click Rain-Slick Honeycomb##210188
|tip These are found attached to stumps and trees in the area.
Gather Chunks of Honeycomb |q 30081/3 |goto Krasarang Wilds/0 73.6,9.7
step
talk Ken-Ken##56115
turnin Materia Medica##30081 |goto Krasarang Wilds/0 76.22,7.06
accept Why So Serious?##30088 |goto Krasarang Wilds/0 76.22,7.06
step
kill Krasari Stalker##58221
collect Huge Panther Fang##78941 |n
Gather Huge Panther Fangs |q 30088/1 |goto Krasarang Wilds/0 71.6,16.4
step
_Enter_ the cave |goto Valley of the Four Winds/0 77.1,57.3 |walk
_Go up_ the ramp |goto Valley of the Four Winds/0 75.9,56.3 |only if walking
click Jar of Pigment##210228
Gather a Jar of Pigment |q 30088/2 |goto Valley of the Four Winds/0 73.9,56.4
step
talk Ken-Ken##56115
turnin Why So Serious?##30088 |goto Krasarang Wilds/0 76.22,7.06
accept Apply Directly to the Forehead##30089 |goto Krasarang Wilds/0 76.22,7.06
step
clicknpc Despondent Warden of Zhu##57457
use Ken-Ken's Mask##79021
kill Manifestation of Despair##58312
Cure 8 Despondent Wardens of Zhu |q 30089/1 |goto Krasarang Wilds/0 76.4,8.6
step
talk Ken-Ken##56115
turnin Apply Directly to the Forehead##30089 |goto Krasarang Wilds/0 76.22,7.06
accept Zhu's Despair##30090 |goto Krasarang Wilds/0 76.22,7.06
step
kill Essence of Despair##58409
Destroy 8 Essences of Despair |q 30090/1 |goto Krasarang Wilds/0 76.5,8.4
clicknpc Yi-Mo Longbrow##58410
use Ken-Ken's Mask##79057
kill Quintessence of Despair##58360
Cure Yi-Mo |q 30090/2 |goto Krasarang Wilds/0 76.5,8.8
step
talk Ken-Ken##56115
turnin Zhu's Despair##30090 |goto Krasarang Wilds/0 76.22,7.06
Learn the Ken-Ken's Mask toy |toy Ken-Ken's Mask##88580 |use Ken-Ken's Mask##88580
step
talk Mayor Bramblestaff##59073 |goto Kun-Lai Summit/0 72.2,91.8
accept Call Out Their Leader##30457 |goto Kun-Lai Summit/0 72.2,91.8
step
kill Bataari Yaungol##59147
kill Bataari Flamecaller##59148
Slay 10 Bataari tribe members |q 30457/1 |goto Kun-Lai Summit/0 69.8,90.5
step
kill Bataari Fire-Warrior##59083
Defeat the Bataari Fire-Warrior |q 30457/2 |goto Kun-Lai Summit/0 68.2,88.6
step
talk Mayor Bramblestaff##59073 |goto Kun-Lai Summit/0 72.2,91.8
turnin Call Out Their Leader##30457 |goto Kun-Lai Summit/0 72.2,91.8
step
talk Shado-Master Chong##60161
accept Turnabout##30670 |goto Kun-Lai Summit/0 44.48,89.92
step
kill 1 Blind Rage##61224
collect Blind Rage Essence##81713 |n
Destroy 5 Blind Rage Essences |q 30670/1 |goto Kun-Lai Summit/0 43.0,87.1
step
talk Shado-Master Chong##60161
turnin Turnabout##30670 |goto Kun-Lai Summit/0 44.48,89.92
accept Unmasking the Yaungol##30690 |goto Kun-Lai Summit/0 44.48,89.92
step
use Blinding Rage Trap##81741
Pull Kobai into the trap |q 30690/1 |goto Kun-Lai Summit/0 45.2,86.2
|tip Click your special action button to spawn the Malevolent Fury.
kill Malevolent Fury##61333
Slay the Malevolent Fury |q 30690/2 |goto Kun-Lai Summit/0 45.2,86.2
step
talk Shado-Master Chong##60161
turnin Unmasking the Yaungol##30690 |goto Kun-Lai Summit/0 44.48,89.92
accept To Winter's Blossom##30699 |goto Kun-Lai Summit/0 44.48,89.92
step
talk Lin Silentstrike##61816
turnin To Winter's Blossom##30699 |goto Kun-Lai Summit/0 35.0,59.4
accept Honor, Even in Death##30723 |goto Kun-Lai Summit/0 35.0,59.4
step
talk Ban Bearheart##61819
accept A Line Unbroken##30715 |goto Kun-Lai Summit/0 35.12,59.66
step
clicknpc Shado-Master Zhiyao##61808
Release Shado-Master Zhiyao from his oath |q 30715/1 |goto Kun-Lai Summit/0 30.4,60.0
step
clicknpc Liu of the Thousand Blows##61806
Release Liu of the Thousand Blows from his oath |q 30715/2 |goto Kun-Lai Summit/0 30.2,62.5
step
clicknpc Shiya Boldblade##61810
Release Shiya Boldblade from his oath |q 30715/3 |goto Kun-Lai Summit/0 30.0,64.4
step
kill 1 Kun-Lai Corpsepicker##61843
Slay 12 Kun-Lai Corpsepickers |q 30723/1 |goto Kun-Lai Summit/0 31.1,61.8
step
talk Ban Bearheart##61819
turnin A Line Unbroken##30715 |goto Kun-Lai Summit/0 35.12,59.66
step
talk Lin Silentstrike##61816
turnin Honor, Even in Death##30723 |goto Kun-Lai Summit/0 35.0,59.4
step
talk Lin Silentstrike##61816
accept To the Wall!##30724 |goto Kun-Lai Summit/0 34.95,59.30
step
talk Kite Master Len##61512
Tell him: "_I need a kite to get up to the wall!_" |q 30724/1 |goto Kun-Lai Summit/0 34.5,59.1
step
talk Suna Silentstrike##61454
turnin To the Wall!##30724 |goto Kun-Lai Summit/0 29.30,62.29
accept Off the Wall!##30750 |goto Kun-Lai Summit/0 29.30,62.29
step
talk Lao-Chin the Iron Belly##61820
accept A Terrible Sacrifice##30751 |goto Kun-Lai Summit/0 29.24,62.30
step
click Yaungol Oil Barrel##212003
collect Yaungol Oil Barrel##82799 |n
Gather 6 Yaungol Oil Barrels |q 30751/1  |goto Kun-Lai Summit/0 27.5,60.6
step
kill 1 Osul Veteran Archer##61886
kill 1 Osul Fire-Warrior##63576
Kill 12 Yaungol on the wall |q 30750/1 |goto Kun-Lai Summit/0 27.5,60.6
step
talk Lao-Chin the Iron Belly##61820
turnin A Terrible Sacrifice##30751 |goto Kun-Lai Summit/0 29.24,62.30
step
talk Suna Silentstrike##61454
turnin Off the Wall!##30750 |goto Kun-Lai Summit/0 29.30,62.29
accept Lao-Chin's Gambit##30994 |goto Kun-Lai Summit/0 29.30,62.29
step
talk Suna Silentstrike##61454
Tell her: "_Alright, I'm ready to get back to the front._" |q 30994/1 |goto Kun-Lai Summit/0 29.30,62.29
step
talk Lao-Chin the Iron Belly##61820
turnin Lao-Chin's Gambit##30994 |goto Kun-Lai Summit/0 31.8,60.1
accept Do a Barrel Roll!##30991 |goto Kun-Lai Summit/0 31.8,60.1
step
clicknpc Keg Bomb##60553 |goto Kun-Lai Summit/0 32.1,60.6
|tip Click a keg bomb to jump on. Then, roll it down the hill into your enemies.
|tip Press "1" to ignite the barrel. It will explode within a few seconds.
Slay 50 Osul Invaders |q 30991/1
Slay 4 Osul Treelaunchers |q 30991/2
step
talk Lao-Chin the Iron Belly##61820
turnin Do a Barrel Roll!##30991 |goto Kun-Lai Summit/0 31.8,60.1
Learn the Lao Chin's Last Mug toy |toy Lao Chin's Last Mug##88531 |use Lao Chin's Last Mug##88531
step
talk Toshley##21691
accept Picking Up Some Power Converters##10584 |goto Blade's Edge Mountains/0 60.6,69.0
step
click Power Converter##184906
|tip An Electromental will spawn. Power converters are on the ground around the area.
clicknpc Electromental##21729
use Protovoltaic Magneto Collector##30656
|tip the Collector on Electromentals, then kill them.
kill Electromental##21729
Gather 5 Electromentals |q 10584/1 |goto Blade's Edge Mountains/0 57.5,57.8
step
talk Toshley##21691
turnin Picking Up Some Power Converters##10584 |goto Blade's Edge Mountains/0 60.6,69.0
accept Ride the Lightning##10657 |goto Blade's Edge Mountains/0 60.6,69.0
step
clicknpc Scalewing Serpent##20749
use Repolarized Magneto Sphere##30818
|tip While the buff is active, let the Serpents use their Lightning Strike attack on you.
Absorb 25 Lightning Strikes |q 10657/1 |goto Blade's Edge Mountains/0 68.3,68.6
kill 1 Scalewing Serpent##20749
collect Scalewing Lightning Gland##30849 |q 10657/2 |goto Blade's Edge Mountains/0 68.3,68.6
step
talk Toshley##21691
turnin Ride the Lightning##10657 |goto Blade's Edge Mountains/0 60.6,69.0
accept Trapping the Light Fantastic##10674 |goto Blade's Edge Mountains/0 60.6,69.0
step
use Multi-Spectrum Light Trap##30852
|tip The light orbs are little purple-white globes floating around the area.
Trap 15 Razzani light orbs |q 10674/1 |goto Blade's Edge Mountains/0 67.1,44.6
step
talk Toshley##21691
turnin Trapping the Light Fantastic##10674 |goto Blade's Edge Mountains/0 60.6,69.0
accept Show Them Gnome Mercy!##10675 |goto Blade's Edge Mountains/0 60.6,69.0
step
kill Nexus-Prince Razaan##21057
|tip You will need to kill the mobs in the area to force him to show himself.
click Collection of Souls##185033
collect Collection of Souls##30890 |q 10675/1 |goto Blade's Edge Mountains/0 66.4,44.0
step
talk Toshley##21691
turnin Show Them Gnome Mercy!##10675 |goto Blade's Edge Mountains/0 60.6,69.0
Learn the Power Converter toy |toy Power Converter##30690 |use Power Converter##30690
step
talk Chen Stormstout##56133
accept Chen and Li Li##29907 |goto Valley of the Four Winds/0 85.94,22.10
step
Follow Chen to Pang's Stead |q 29907/1 |goto Valley of the Four Winds/0 83.8,21.1
step
talk Pang Thunderfoot##56204
turnin Chen and Li Li##29907 |goto Valley of the Four Winds/0 83.7,21.0
accept A Seemingly Endless Nuisance##29908 |goto Valley of the Four Winds/0 83.7,21.0
step
talk Muno the Farmhand##56440
accept A Poor Grasp of the Basics##29877 |goto Valley of the Four Winds/0 82.71,21.24
step
kill Snagtooth Virmen##56184
kill Snagtooth Troublemaker##55873
kill Snagtooth Tool-Grabber##56185
Slay 8 large virmen |q 29908/1 |goto Valley of the Four Winds/0 81.3,21.9
kill Snagtooth Pesterling##65504
Slay 18 virmen Pesterer |q 29908/2 |goto Valley of the Four Winds/0 81.3,21.9
Find 7 pieces of buried farm equpment |q 29877/1 |goto Valley of the Four Winds/0 81.3,21.9
|tip These are tools scattered about the area.
step
talk Muno the Farmhand##56440
turnin A Poor Grasp of the Basics##29877 |goto Valley of the Four Winds/0 82.71,21.24
step
talk Pang Thunderfoot##56204
turnin A Seemingly Endless Nuisance##29908 |goto Valley of the Four Winds/0 83.7,21.0
accept Low Turnip Turnout##29909 |goto Valley of the Four Winds/0 83.7,21.0
step
talk Ang Thunderfoot##56207
turnin Low Turnip Turnout##29909 |goto Valley of the Four Winds/0 81.6,25.2
step
talk Ana Thunderfoot##56465
accept Rampaging Rodents##29910 |goto Valley of the Four Winds/0 81.88,25.89
step
click Marmot Hole##209835
|tip You must stand still until the cast completes to fill the hole.
Fill 6 marmot holes |q 29910/2 |goto Valley of the Four Winds/0 82.3,25.9
clicknpc Plump Marmot##56203
Punt 6 marmots |q 29910/1 |goto Valley of the Four Winds/0 82.3,25.9
step
talk Ana Thunderfoot##56465
turnin Rampaging Rodents##29910 |goto Valley of the Four Winds/0 81.88,25.89
Learn the Puntable Marmot toy |toy Puntable Marmot##88370 |use Puntable Marmot##88370
step
talk Tai Ho##61482
accept The Motives of the Mantid##30921 |goto Townlong Steppes/0 49.1,71.2
accept Set the Mantid Back##30923 |goto Townlong Steppes/0 49.1,71.2
step
kill 1 Kri'thik Screamer##61377
kill 1 Kri'thik Boneslicer##61376
Find the first clue |q 30921/1 |goto Townlong Steppes/0 56.2,53.3
Find the second clue |q 30921/2 |goto Townlong Steppes/0 56.2,53.3
Find the third clue |q 30921/3 |goto Townlong Steppes/0 56.2,53.3
Find the fourth clue |q 30921/4 |goto Townlong Steppes/0 56.2,53.3
use Gunpowder Casks##81891
Blow up the Kri'thik Weapons |q 30923/1 |goto Townlong Steppes/0 55.4,53.1
Blow up the Kri'thik Supplies |q 30923/2 |goto Townlong Steppes/0 56.6,54.0
step
talk Tai Ho##61482
turnin The Motives of the Mantid##30921 |goto Townlong Steppes/0 49.1,71.2
turnin Set the Mantid Back##30923 |goto Townlong Steppes/0 49.1,71.2
accept The Wisdom of Niuzao##30924 |goto Townlong Steppes/0 49.1,71.2
step
talk Ogo the Younger##61581
turnin The Wisdom of Niuzao##30924 |goto Townlong Steppes/0 39.34,62.20
step
talk Bluesaddle##61161
accept Bad Yak##30929 |goto Townlong Steppes/0 39.21,62.01
step
clicknpc Ruthers##61163
|tip Wait for each channel to finish.
Pet Ruthers |q 30929/1 |goto Townlong Steppes/0 39.3,61.9
Offer Ruthers an apple |q 30929/2 |goto Townlong Steppes/0 39.3,61.9
Nudge Ruthers |q 30929/3 |goto Townlong Steppes/0 39.3,61.9
Attempt to mount Ruthers |q 30929/4 |goto Townlong Steppes/0 39.3,61.9
step
talk Bluesaddle##61161
turnin Bad Yak##30929 |goto Townlong Steppes/0 39.21,62.01
step
talk Bluesaddle##61161
accept Pick a Yak##30930 |goto Townlong Steppes/0 35.4,56.6
step
clicknpc Wild Townlong Yak##61635
|tip You will need to lasso several yaks, after which each will attack you.
Use the lasso on Townlong Yaks |use Yak Lasso##82468
Find a suitable yak |q 30930/1 |goto Townlong Steppes/0 35.8,50.9
step
talk Bluesaddle##61161
turnin Pick a Yak##30930 |goto Townlong Steppes/0 35.4,56.6
Learn the _Ruthers' Harness_ toy |toy Ruthers' Harness##82467 |use Ruthers' Harness##82467
step
talk Tired Shushen##58278
accept Raid Leader Slovan##30169 |goto Krasarang Wilds/0 29.6,39.0
step
kill Slovan##58285 |tip He is behind the waterfall.
Slay Slovan |q 30169/1 |goto Krasarang Wilds/0 31.8,29.0
step
talk Tired Shushen##58278
turnin Raid Leader Slovan##30169 |goto Krasarang Wilds/0 29.6,39.0
Learn the _Shushen's Spittoon_ toy |toy Shushen's Spittoon##88387 |use Shushen's Spittoon##88387
step
talk Smokey Sootassle##59597
accept Traffic Issues##30616 |goto 64.88,60.49
step
talk Slimy Inkstain##59402
accept Oil Stop##30614 |goto Kun-Lai Summit/0 65.49,60.82
step
talk Lucky Eightcoins##59371
accept A Grummle's Luck##30808 |goto Kun-Lai Summit/0 64.71,61.76
stickystart "luck"
step
kill Ruqin Outrider##59538
kill Ruqin Elder##59826
kill Ruqin Infantry##59790
Deal with the Ruqin Yaungols |q 30616/1 |goto Kun-Lai Summit/0 62.8,67.4
step
use Empty Oil Vial##80312
Fill the oil vial |q 30614/1 |goto Kun-Lai Summit/0 63.3,68.5
step
label "luck"
click Stolen Bag of Luckydos##211538 |tip These are small bags spread around the camp.
Collect 8 stolen Luckydos |q 30808/1 |goto Kun-Lai Summit/0 62.8,67.5
step
talk Slimy Inkstain##59402
turnin Oil Stop##30614 |goto Kun-Lai Summit/0 65.49,60.82
step
talk Lucky Eightcoins##59371
turnin A Grummle's Luck##30808 |goto Kun-Lai Summit/0 64.71,61.76
step
talk Smokey Sootassle##59597
turnin Traffic Issues##30616 |goto Kun-Lai Summit/0 64.88,60.49
accept Roadside Assistance##30617 |goto Kun-Lai Summit/0 64.88,60.48
step
click Lucky Burlap Incense##211539 |tip This are found along the path.
Light the incense |q 30617/1 |goto Kun-Lai Summit/0 61.2,65.5
step
talk Brother Lintpocket##59701
turnin Roadside Assistance##30617 |goto Kun-Lai Summit/0 58.1,61.5
Learn the _Silversage Incense_ toy |toy Silversage Incense##88381 |use Silversage Incense##88381
step
talk Taran Zhu##60688
accept A Foot in the Door##30814 |goto Townlong Steppes/0 71.2,56.7
step
kill 8 Osul Charger##60713+ |q 30814/1 |goto Townlong Steppes/0 71.6,52.9
step
talk Taran Zhu##60688
turnin A Foot in the Door##30814 |goto Townlong Steppes/0 71.2,56.7
accept First Assault##30769 |goto Townlong Steppes/0 71.2,56.7
accept Running Rampant##30770 |goto Townlong Steppes/0 71.2,56.7
accept Perfect Pitch##30771 |goto Townlong Steppes/0 71.2,56.7
step
kill 6 Osul Sharphorn##60647+ |q 30769/1 |goto Townlong Steppes/0 67.3,54.4
clicknpc Long-Haired Yak##60669+
clicknpc Steppebeast##60739+
Free 8 Yaks or Mushan |q 30770/1 |goto Townlong Steppes/0 67.3,54.4
click Pitch Pot##211507
get 8 Dark Pitch##81174 |q 30771/1 |goto Townlong Steppes/0 67.3,54.4
step
talk Suna Silentstrike##60684
turnin First Assault##30769 |goto Townlong Steppes/0 67.2,52.2
step
talk Ban Bearheart##60687
turnin Running Rampant##30770 |goto Townlong Steppes/0 67.2,52.3
turnin Perfect Pitch##30771 |goto Townlong Steppes/0 67.2,52.3
accept Pitching In##30773 |goto Townlong Steppes/0 67.2,52.3
step
talk Suna Silentstrike##60684
accept Seeing Red##30772 |goto Townlong Steppes/0 67.2,52.2
accept Ranger Rescue##30774 |goto Townlong Steppes/0 67.2,52.2
step
talk Katak the Defeated##60735
accept The Exile##30775 |goto Townlong Steppes/0 67.0,51.4
step
kill Battat##60728 |q 30775/1 |goto Townlong Steppes/0 65.7,51.7 |tip When he casts Raging Flurry step behind him to avoid the damage.
step
kill Urang##60725 |q 30775/2 |goto Townlong Steppes/0 64.8,50.2
step
talk Lin Silentstrike##60899
Examine the body
Free Lin Silentstrike |q 30774/2 |goto Townlong Steppes/0 66.6,49.1
step
kill Ku-Tong##60726 |q 30775/3 |goto Townlong Steppes/0 67.0,48.2 |tip When he casts Stalwart Defender hit him in the back.
step
Use Ban's Explosives on Osul Ballistas |use Ban's Explosives##81193
Destroy 6 Osul Ballistas |q 30773/1 |goto Townlong Steppes/0 66.9,44.1
step
from 8 Osul Marauder##60692+ |q 30772/1 |goto Townlong Steppes/0 67.3,49.6
collect 4 Stone Key##81178+ |n
click Drywood Cage
Rescue 4 Longying Rangers |q 30774/1 |goto Townlong Steppes/0 67.3,49.6
step
talk Katak the Defeated##60735
turnin The Exile##30775 |goto Townlong Steppes/0 67.0,51.4
step
talk Ban Bearheart##60687
turnin Pitching In##30773 |goto Townlong Steppes/0 67.2,52.3
turnin Seeing Red##30772 |goto Townlong Steppes/0 67.2,52.3
turnin Ranger Rescue##30774 |goto Townlong Steppes/0 67.2,52.3
step
talk Suna Silentstrike##60684
accept Jung Duk##30776 |goto Townlong Steppes/0 67.3,52.2
step
click Ceremonial Pile##211524
kill Jung Duk##60801 |q 30776/1 |goto Townlong Steppes/0 66.7,51.0
step
talk Ban Bearheart##60687
turnin Jung Duk##30776 |goto Townlong Steppes/0 71.0,56.6
accept In Search of Suna##30777 |goto Townlong Steppes/0 71.0,56.6
step
talk Ban Bearheart##61261
turnin In Search of Suna##30777 |goto Townlong Steppes/0 82.7,73.0
accept Dust to Dust##30778 |goto Townlong Steppes/0 82.7,73.0
accept Slaying the Scavengers##30779 |goto Townlong Steppes/0 82.7,73.0
step
talk Xiao Tu##60903
accept Last Toll of the Yaungol##30781 |goto Townlong Steppes/0 82.7,73.2
step
talk Yalia Sagewhisper##60864
accept Totemic Research##30780 |goto Townlong Steppes/0 82.6,73.0
stickystart "palewindvillage"
step
Wait for Xiao Tu to investigate.
Examine the Southern Smoke Trail |q 30781/3 |goto Townlong Steppes/0 83.5,78.5
If you lose Xiao head back to [Townlong Steppes 82.7,73.2] to retrieve him
step
Wait for Xiao Tu to investigate.
Examine the Eastern Smoke Trail |q 30781/1 |goto Townlong Steppes/0 84.9,71.4
If you lose Xiao head back to [Townlong Steppes 82.7,73.2] to retrieve him
step
Wait for Xiao Tu to investigate.
Examine the Northwestern Smoke Trail |q 30781/4 |goto Townlong Steppes/0 84.0,70.9
If you lose Xiao head back to [Townlong Steppes 82.7,73.2] to retrieve him
step
Wait for Xiao Tu to investigate.
Examine the Western Smoke Trail |q 30781/2 |goto Townlong Steppes/0 81.1,72.0
If you lose Xiao head back to [Townlong Steppes 82.7,73.2] to retrieve him
step
label "palewindvillage"
kill 12 Ashfang Hyena##60932+ |q 30779/1 |goto Townlong Steppes/0 81.1,71.8
click Palewind Totem##211566
get 9 Palewind Totem##81355 |q 30780/1 |goto Townlong Steppes/0 81.1,71.8
Use your Shado-Pan Torch to burn Palewind Villagers |use Shado-Pan Torch##81356
Burn 20 Palewind Villagers |q 30778/1 |goto Townlong Steppes/0 81.1,71.8
step
talk Yalia Sagewhisper##60864
turnin Totemic Research##30780 |goto Townlong Steppes/0 82.6,73.0
step
talk Ban Bearheart##61261
turnin Dust to Dust##30778 |goto Townlong Steppes/0 82.7,73.0
turnin Slaying the Scavengers##30779 |goto Townlong Steppes/0 82.7,73.0
turnin Last Toll of the Yaungol##30781 |goto Townlong Steppes/0 82.7,73.0
step
talk Yalia Sagewhisper##60864
accept What Lies Beneath##30827 |goto Townlong Steppes/0 82.6,73.0
step
talk Yalia Sagewhisper##60864
Tell her you are ready to begin the ritual |q 30827/1 |goto Townlong Steppes/0 82.6,73.0
clicknpc Totem of Tranquility##60990 |q 30827/3 |goto Townlong Steppes/0 82.6,73.0
clicknpc Totem of Serenity##60991 |q 30827/4 |goto Townlong Steppes/0 82.6,73.0
clicknpc Totem of Kindness##60933 |q 30827/2 |goto Townlong Steppes/0 82.6,73.0
Complete the Ritual |q 30827/5 |goto Townlong Steppes/0 82.6,73.0
step
talk Yalia Sagewhisper##60864
turnin What Lies Beneath##30827 |goto Townlong Steppes/0 82.6,73.0
accept Hatred Becomes Us##30783 |goto Townlong Steppes/0 82.6,73.0
step
While doing the following quests do not allow your Hatred bar to reach 100. You can lower it by standing in Pools of Harmony.
confirm
step
Use your Totem of Harmony on Crazed Shado-Pan Rangers |use Totem of Harmony##81417
kill Seething Hatred##61054+
Purify 8 Crazed Shado-Pan Rangers |q 30783/1 |goto Townlong Steppes/0 82.0,71.0
You can find more of these at [Townlong Steppes,83.4,73.8]
step
talk Yalia Sagewhisper##60864
turnin Hatred Becomes Us##30783 |goto Townlong Steppes/0 82.6,73.0
Learn the _Totem of Harmony_ toy |toy Totem of Harmony##88584 |use Totem of Harmony##88584
step
talk Skoller##95650
Choose his dialogue option
Learn the _Skoller's Bag of Squirrel Treats_ toy |toy Skoller's Bag of Squirrel Treats##128328 |use Skoller's Bag of Squirrel Treats##128328 |goto Tanaan Jungle/0 55.3,75.0
step
This toy requires a minimum of 75 skill points in Archaeology
|tip All Fossil dig sites are marked on your map. You can find them in Eastern Kingdoms and Kalimdor.
|tip Collect Fossil fragments and solve their artifacts until you attain the Ancient Amber toy.
Vul'Gol Fossil Bank |goto Duskwood/0 35.75,71.96 |'
Greenwarden's Fossil Bank |goto Wetlands/0 64.61,50.85 |'
Savage Coast Raptor Fields |goto Northern Stranglethorn/0 36.75,42.23 |'
Felstone Field |goto Western Plaguelands/0 37.33,56.66 |'
Northridge Fossil Field |goto Western Plaguelands/0 46.96,35.33 |'
Andorhal Fossil Bank |goto Western Plaguelands/0 33.46,73.45 |'
Infectis Scar Fossil Field |goto Eastern Plaguelands/0 48.97,61.6 |'
Terror Wing Fossil Field |goto Burning Steppes/0 77.97,53.2 |'
Southshore Fossil Field |goto Hillsbrad Foothills/0 56.72,61.17 |'
Misty Reed Fossil Bank |goto Swamp of Sorrows/0 83.72,80.99 |'
Lakeridge Highway Fossil Bank |goto Redridge Mountains/0 37.34,67.85 |'
Dreadmaul Fossil Field |goto Blasted Lands/0 44.08,34.46 |'
Red Reaches Fossil Bank |goto Blasted Lands/0 65.48,78.84 |'
Fields of Blood Fossil Bank |goto Southern Barrens/0 44.95,44.16 |'
Kodo Graveyard |goto Desolace/0 52.99,58.37 |'
Valley of Bones |goto Desolace/0 64.04,89.39 |'
Dunemaul Fossil Ridge |goto Tanaris/0 39.92,65.48 |'
Abyssal Sands Fossil Ridge |goto Tanaris/0 46.53,41.79 |'
Lower Lakkari Tar Pits |goto Un'Goro Crater/0 52.13,28.86 |'
Upper Lakkari Tar Pits |goto Un'Goro Crater/0 48.97,20.46 |'
Marshlands Fossil Bank |goto Un'Goro Crater/0 67.63,65.7 |'
Screaming Reaches Fossil Field |goto Un'Goro Crater/0 33.6,32.74 |'
Terror Run Fossil Field |goto Un'Goro Crater/0 34.03,75.17 |'
Quagmire Fossil Field |goto Dustwallow Marsh/0 48.54,54.5 |'
Wyrmbog Fossil Field |goto Dustwallow Marsh/0 48.11,73.67 |'
Unearthed Grounds |goto Stonetalon Mountains/0 76.11,76.25 |'
Learn the _Ancient Amber_ toy |toy Ancient Amber##69776 |use Ancient Amber##69776
step
This toy requires a minimum of 300 skill points in Archaeology
|tip All Draenei dig sites are marked on your map. You can find them in Outland.
|tip Collect Draenei fragments and solve their artifacts until you attain the Arrival of the Naaru toy.
Sha�naar Digsite |goto Hellfire Peninsula/0 13.79,58.59 |'
Twin Spire Ruins Digsite |goto Zangarmarsh/0 46.96,49.97 |'
Boha�mu Ruins Digsite |goto Zangarmarsh/0 43.8,66.77 |'
Tuurem Digsite |goto Terokkar Forest/0 52.84,29.94 |'
Bone Wastes Digsite |goto Terokkar Forest/0 47.1,60.31 |'
East Auchindoun Digsite |goto Terokkar Forest/0 42.65,64.83 |'
West Auchindoun Digsite |goto Terokkar Forest/0 37.62,63.97 |'
Halaa Digsite |goto Nagrand/0 42.65,43.94 |'
Illidari Point Digsite |goto Shadowmoon Valley/0 30.44,53.63 |'
Eclipse Point Digsite |goto Shadowmoon Valley/0 46.09,68.07 |'
Coilskar Point Digsite |goto Shadowmoon Valley/0 45.52,27.57 |'
Ruins of Baa�ri Digsite |goto Shadowmoon Valley/0 56.86,36.19 |'
Ruins of Enkaat Digsite |goto Netherstorm/0 33.03,53.63 |'
Ruins of Farahlon Digsite |goto Netherstorm/0 53.56,21.11 |'
Arklon Ruins Digsite |goto Netherstorm/0 39.49,72.8 |'
Learn the _Arrival of the Naaru_ toy |toy Arrival of the Naaru##64456 |use Arrival of the Naaru##64456
step
This toy requires a minimum of 350 skill points in Archaeology
|tip All Nerubian dig sites are marked on your map. You can find them in Northrend and Eastern Plaguelands.
|tip Collect Nerubian fragments and solve their artifacts until you attain the Blessing of the Old God toy.
Terrorweb Tunnel Digsite |goto Eastern Plaguelands/0 20.68,23.05 |'
Plaguewood Digsite |goto Eastern Plaguelands/0 35.47,22.19 |'
Talramas Digsite |goto Borean Tundra/0 68.93,15.08 |'
En�kilah Digsite |goto Borean Tundra/0 86.16,23.91 |'
Sands of Nasam |goto Borean Tundra/0 52.41,67.63 |'
Pit of Narjun Digsite |goto Dragonblight/0 26.57,50.19 |'
Kolramas Digsite |goto Zul'Drak/0 59.88,77.33 |'
Scourgeholme Digsite |goto Icecrown/0 77.11,63.97 |'
Pit of Fiends Digsite |goto Icecrown/0 76.25,53.42 |'
Learn the _Blessing of the Old God_ toy |toy Blessing of the Old God##64481 |use Blessing of the Old God##64481
step
This toy requires a minimum of 75 skill points in Archaeology
|tip All Night Elf dig sites are marked on your map. You can find them in Eastern Kingdoms, Kalimdor, and Northrend.
|tip Collect Night Elf fragments and solve their artifacts until you attain the Bones of Transformation toy.
Twilight Grove Digsite |goto Duskwood/0 47.1,42.86 |'
Quel�Lithien Lodge Digsite |goto Eastern Plaguelands/0 47.24,12.06 |'
Ruins of Arkkoran |goto Azshara/0 70.94,32.52 |'
Ruins of Eldarath |goto Azshara/0 32.74,51.48 |'
Nazj�vel Digsite |goto Darkshore/0 32.31,84.0 |'
Nightmare Scar Digsite |goto Southern Barrens/0 47.96,37.69 |'
Sargeron Digsite |goto Desolace/0 75.1,21.76 |'
Slitherblade Shore Digsite |goto Desolace/0 30.3,28.86 |'
Ethel Rethor Digsite |goto Desolace/0 38.91,25.42 |'
Mannoroc Coven Digsite |goto Desolace/0 51.7,76.9 |'
Darkmist Digsite |goto Feralas/0 64.91,58.8 |'
Ravenwind Digsite |goto Feralas/0 39.63,11.63 |'
North Isildien Digsite |goto Feralas/0 60.89,56.22 |'
South Isildien Digsite |goto Feralas/0 59.31,66.34 |'
Dire Maul Digsite |goto Feralas/0 59.16,47.39 |'
Broken Commons Digsite |goto Feralas/0 62.03,30.37 |'
Solarsal Digsite |goto Feralas/0 27.43,52.56 |'
Oneiros Digsite |goto Feralas/0 52.56,17.23 |'
Constellas Digsite |goto Felwood/0 37.62,65.48 |'
Ironwood Digsite |goto Felwood/0 49.54,29.51 |'
Jaedenar Digsite |goto Felwood/0 38.48,59.23 |'
Morlos�Aran Digsite |goto Felwood/0 56.0,84.44 |'
Southwind Village Digsite |goto Silithus/0 64.19,46.96 |'
Shrine of Goldrinn Digsite |goto Mount Hyjal/0 28.86,30.59 |'
Sanctuary of Malorne Digsite |goto Mount Hyjal/0 26.13,61.6 |'
Grove of Aessina Digsite |goto Mount Hyjal/0 18.81,39.42 |'
Scorched Plain Digsite |goto Mount Hyjal/0 55.43,54.28 |'
Ruins of Lar�donir Digsite |goto Mount Hyjal/0 49.25,19.39 |'
Frostwhisper Gorge Digsite |goto Winterspring/0 60.89,84.44 |'
Lake Kel�Theril Digsite |goto Winterspring/0 50.26,55.79 |'
Owl Wing Thicket Digsite |goto Winterspring/0 64.33,76.47 |'
Forest Song Digsite |goto Ashenvale/0 84.0,44.37 |'
Ruins of Ordil�Aran |goto Ashenvale/0 28.58,29.29 |'
Ruins of Stardust |goto Ashenvale/0 33.46,66.99 |'
Zoram Strand Digsite |goto Ashenvale/0 15.08,19.17 |'
Stonetalon Peak |goto Stonetalon Mountains/0 41.64,21.76 |'
Ruins of Eldre�thar |goto Stonetalon Mountains/0 48.11,73.88 |'
Riplash Ruins Digsite |goto Borean Tundra/0 49.97,90.25 |'
Moonrest Gardens Digsite |goto Dragonblight/0 21.97,59.23 |' |'
Violet Stand Digsite |goto Crystalsong Forest/0 15.36,42.43 |'
Ruins of Shandaral Digsite |goto Crystalsong Forest/0 80.99,60.96 |'
Learn the _Bones of Transformation_ toy |toy Bones of Transformation##64646 |use Bones of Transformation##64646
step
This toy requires a minimum of 75 skill points in Archaeology
|tip All Dwarf dig sites are marked on your map. You can find them in Eastern Kingdoms and Kalimdor.
|tip Collect Dwarf fragments and solve their artifacts until you attain the Chalice of the Mountain Kings toy.
Thandol Span |goto Wetlands/0 49.97,11.85 |'
Ironbeard�s Tomb |goto Wetlands/0 43.94,24.77 |'
Whelgar�s Excavation Site |goto Wetlands/0 35.33,48.25 |'
Thoradin�s Wall |goto Arathi Highlands/0 18.09,23.26 |'
Aerie Peak Digsite |goto The Hinterlands/0 34.89,69.36 |'
Uldaman Entrance Digsite |goto Badlands/0 44.08,10.55 |'
Hammertoe�s Digsite |goto Badlands/0 48.68,26.49 |'
Tomb of the Watchers Digsite |goto Badlands/0 48.39,48.9 |'
Grim Batol Digsite |goto Twilight Highlands/0 25.85,54.06 |'
Humboldt Conflagration Digsite |goto Twilight Highlands/0 41.36,23.26 |'
Dunwald Ruins Digsite |goto Twilight Highlands/0 49.11,72.16 |'
Thundermar Ruins Digsite |goto Twilight Highlands/0 50.26,34.03 |'
Eastern Ruins of Thaurissan |goto Burning Steppes/0 53.27,37.91 |'
Western Ruins of Thaurissan |goto Burning Steppes/0 45.09,35.97 |'
Dun Garok Digsite |goto Hillsbrad Foothills/0 61.32,85.51 |'
Pyrox Flats Digsite |goto Searing Gorge/0 39.49,46.09 |'
Grimesilt Digsite |goto Searing Gorge/0 64.48,62.46 |'
Ironband�s Excavation Site |goto Loch Modan/0 68.93,63.11 |'
Bael Modan Digsite |goto Southern Barrens/0 48.25,86.8 |'
Learn the _Chalice of the Mountain Kings_ toy |toy Chalice of the Mountain Kings##64373 |use Chalice of the Mountain Kings##64373
step
This toy requires a minimum of 75 skill points in Archaeology
|tip All Night Elf dig sites are marked on your map. You can find them in Eastern Kingdoms and Kalimdor.
|tip Collect Night Elf fragments and solve their artifacts until you attain the Druid and Priest Statue Set toy.
Twilight Grove Digsite |goto Duskwood/0 47.1,42.86 |'
Quel�Lithien Lodge Digsite |goto Eastern Plaguelands/0 47.24,12.06 |'
Ruins of Arkkoran |goto Azshara/0 70.94,32.52 |'
Ruins of Eldarath |goto Azshara/0 32.74,51.48 |'
Nazj�vel Digsite |goto Darkshore/0 32.31,84.0 |'
Nightmare Scar Digsite |goto Southern Barrens/0 47.96,37.69 |'
Sargeron Digsite |goto Desolace/0 75.1,21.76 |'
Slitherblade Shore Digsite |goto Desolace/0 30.3,28.86 |'
Ethel Rethor Digsite |goto Desolace/0 38.91,25.42 |'
Mannoroc Coven Digsite |goto Desolace/0 51.7,76.9 |'
Darkmist Digsite |goto Feralas/0 64.91,58.8 |'
Ravenwind Digsite |goto Feralas/0 39.63,11.63 |'
North Isildien Digsite |goto Feralas/0 60.89,56.22 |'
South Isildien Digsite |goto Feralas/0 59.31,66.34 |'
Dire Maul Digsite |goto Feralas/0 59.16,47.39 |'
Broken Commons Digsite |goto Feralas/0 62.03,30.37 |'
Solarsal Digsite |goto Feralas/0 27.43,52.56 |'
Oneiros Digsite |goto Feralas/0 52.56,17.23 |'
Constellas Digsite |goto Felwood/0 37.62,65.48 |'
Ironwood Digsite |goto Felwood/0 49.54,29.51 |'
Jaedenar Digsite |goto Felwood/0 38.48,59.23 |'
Morlos�Aran Digsite |goto Felwood/0 56.0,84.44 |'
Southwind Village Digsite |goto Silithus/0 64.19,46.96 |'
Shrine of Goldrinn Digsite |goto Mount Hyjal/0 28.86,30.59 |'
Sanctuary of Malorne Digsite |goto Mount Hyjal/0 26.13,61.6 |'
Grove of Aessina Digsite |goto Mount Hyjal/0 18.81,39.42 |'
Scorched Plain Digsite |goto Mount Hyjal/0 55.43,54.28 |'
Ruins of Lar�donir Digsite |goto Mount Hyjal/0 49.25,19.39 |'
Frostwhisper Gorge Digsite |goto Winterspring/0 60.89,84.44 |'
Lake Kel�Theril Digsite |goto Winterspring/0 50.26,55.79 |'
Owl Wing Thicket Digsite |goto Winterspring/0 64.33,76.47 |'
Forest Song Digsite |goto Ashenvale/0 84.0,44.37 |'
Ruins of Ordil�Aran |goto Ashenvale/0 28.58,29.29 |'
Ruins of Stardust |goto Ashenvale/0 33.46,66.99 |'
Zoram Strand Digsite |goto Ashenvale/0 15.08,19.17 |'
Stonetalon Peak |goto Stonetalon Mountains/0 41.64,21.76 |'
Ruins of Eldre�thar |goto Stonetalon Mountains/0 48.11,73.88 |'
Riplash Ruins Digsite |goto Borean Tundra/0 49.97,90.25 |'
Moonrest Gardens Digsite |goto Dragonblight/0 21.97,59.23 |'
Violet Stand Digsite |goto Crystalsong Forest/0 15.36,42.43 |'
Ruins of Shandaral Digsite |goto Crystalsong Forest/0 80.99,60.96 |'
Learn the _Druid and Priest Statue Set_ toy |toy Druid and Priest Statue Set##64361 |use Druid and Priest Statue Set##64361
step
This toy requires a minimum of 75 skill points in Archaeology
|tip All Troll dig sites are marked on your map. You can find them in Eastern Kingdoms and Kalimdor.
|tip Collect Troll fragments and solve their artifacts until you attain the Haunted War Drum toy.
Eastern Zul�Mamwe Digsite |goto Northern Stranglethorn/0 62.47,70.0 |'
Western Zul�Mamwe Digsite |goto Northern Stranglethorn/0 61.17,71.51 |'
Bal�lal Ruins Digsite |goto Northern Stranglethorn/0 32.74,36.4 |'
Balia�mah Ruins Digsite |goto Northern Stranglethorn/0 60.17,55.14 |'
Western Zul�Kunda Digsite |goto Northern Stranglethorn/0 25.7,21.32 |'
Eastern Zul�Kunda Digsite |goto Northern Stranglethorn/0 28.15,21.11 |'
Ziata�jai Digsite |goto Northern Stranglethorn/0 53.56,60.53 |'
Nek�mani Wellspring Digsite |goto The Cape of Stranglethorn/0 40.49,49.33 |'
Ruins of Jubuwal |goto The Cape of Stranglethorn/0 52.7,31.23 |'
Ruins of Aboraz |goto The Cape of Stranglethorn/0 41.79,53.42 |'
Gurubashi Arena Digsite |goto The Cape of Stranglethorn/0 46.38,22.83 |'
Witherbark Digsite |goto Arathi Highlands/0 60.89,71.08 |'
Zul�Mashar Digsite |goto Eastern Plaguelands/0 65.05,12.71 |'
Shadra�Alor Digsite |goto The Hinterlands/0 34.89,69.57 |'
Altar of Zul Digsite |goto The Hinterlands/0 47.82,65.27 |'
Agol�watha Digsite |goto The Hinterlands/0 46.24,41.14 |'
Jintha�Alor Upper City Digsite |goto The Hinterlands/0 60.6,77.33 |'
Jintha�Alor Lower City Digsite |goto The Hinterlands/0 66.05,68.93 |'
Sunken Temple Digsite |goto Swamp of Sorrows/0 71.8,60.31 |'
Zul�Farrak Digsite |goto Tanaris/0 39.63,21.97 |'
Eastmoon Ruins Digsite |goto Tanaris/0 46.38,63.97 |'
Southmoon Ruins Digsite |goto Tanaris/0 40.35,71.3 |'
Broken Pillar Digsite |goto Tanaris/0 52.56,45.66 |'
Drakil�jin Ruins Digsite |goto Grizzly Hills/0 71.66,25.42 |'
Zol�Heb Digsite |goto Zul'Drak/0 77.97,36.19 |'
Zim�Rhuk Digsite |goto Zul'Drak/0 59.16,43.29 |'
Altar of Quetz�lun Digsite |goto Zul'Drak/0 73.23,58.37 |'
Altar of Sseratus Digsite |goto Zul'Drak/0 40.21,44.37 |'
Learn the _Haunted War Drum_ toy |toy Haunted War Drum##69777 |use Haunted War Drum##69777
step
This toy requires a minimum of 75 skill points in Archaeology
|tip All Night Elf dig sites are marked on your map. You can find them in Eastern Kingdoms and Kalimdor.
|tip Collect Night Elf fragments and solve their artifacts until you attain the Highborne Soul Mirror toy.
Twilight Grove Digsite |goto Duskwood/0 47.1,42.86 |'
Quel�Lithien Lodge Digsite |goto Eastern Plaguelands/0 47.24,12.06 |'
Ruins of Arkkoran |goto Azshara/0 70.94,32.52 |'
Ruins of Eldarath |goto Azshara/0 32.74,51.48 |'
Nazj�vel Digsite |goto Darkshore/0 32.31,84.0 |'
Nightmare Scar Digsite |goto Southern Barrens/0 47.96,37.69 |'
Sargeron Digsite |goto Desolace/0 75.1,21.76 |'
Slitherblade Shore Digsite |goto Desolace/0 30.3,28.86 |'
Ethel Rethor Digsite |goto Desolace/0 38.91,25.42 |'
Mannoroc Coven Digsite |goto Desolace/0 51.7,76.9 |'
Darkmist Digsite |goto Feralas/0 64.91,58.8 |'
Ravenwind Digsite |goto Feralas/0 39.63,11.63 |'
North Isildien Digsite |goto Feralas/0 60.89,56.22 |'
South Isildien Digsite |goto Feralas/0 59.31,66.34 |'
Dire Maul Digsite |goto Feralas/0 59.16,47.39 |'
Broken Commons Digsite |goto Feralas/0 62.03,30.37 |'
Solarsal Digsite |goto Feralas/0 27.43,52.56 |'
Oneiros Digsite |goto Feralas/0 52.56,17.23 |'
Constellas Digsite |goto Felwood/0 37.62,65.48 |'
Ironwood Digsite |goto Felwood/0 49.54,29.51 |'
Jaedenar Digsite |goto Felwood/0 38.48,59.23 |'
Morlos�Aran Digsite |goto Felwood/0 56.0,84.44 |'
Southwind Village Digsite |goto Silithus/0 64.19,46.96 |'
Shrine of Goldrinn Digsite |goto Mount Hyjal/0 28.86,30.59 |'
Sanctuary of Malorne Digsite |goto Mount Hyjal/0 26.13,61.6 |'
Grove of Aessina Digsite |goto Mount Hyjal/0 18.81,39.42 |'
Scorched Plain Digsite |goto Mount Hyjal/0 55.43,54.28 |'
Ruins of Lar�donir Digsite |goto Mount Hyjal/0 49.25,19.39 |'
Frostwhisper Gorge Digsite |goto Winterspring/0 60.89,84.44 |'
Lake Kel�Theril Digsite |goto Winterspring/0 50.26,55.79 |'
Owl Wing Thicket Digsite |goto Winterspring/0 64.33,76.47 |'
Forest Song Digsite |goto Ashenvale/0 84.0,44.37 |'
Ruins of Ordil�Aran |goto Ashenvale/0 28.58,29.29 |'
Ruins of Stardust |goto Ashenvale/0 33.46,66.99 |'
Zoram Strand Digsite |goto Ashenvale/0 15.08,19.17 |'
Stonetalon Peak |goto Stonetalon Mountains/0 41.64,21.76 |'
Ruins of Eldre�thar |goto Stonetalon Mountains/0 48.11,73.88 |'
Riplash Ruins Digsite |goto Borean Tundra/0 49.97,90.25 |'
Moonrest Gardens Digsite |goto Dragonblight/0 21.97,59.23 |'
Violet Stand Digsite |goto Crystalsong Forest/0 15.36,42.43 |'
Ruins of Shandaral Digsite |goto Crystalsong Forest/0 80.99,60.96 |'
Learn the _Highborne Soul Mirror_ toy |toy Highborne Soul Mirror##64358 |use Highborne Soul Mirror##64358
step
This toy requires a minimum of 75 skill points in Archaeology
|tip All Night Elf dig sites are marked on your map. You can find them in Eastern Kingdoms and Kalimdor.
|tip Collect Night Elf fragments and solve their artifacts until you attain the Kaldorei Wind Chimes toy.
Twilight Grove Digsite |goto Duskwood/0 47.1,42.86 |'
Quel�Lithien Lodge Digsite |goto Eastern Plaguelands/0 47.24,12.06 |'
Ruins of Arkkoran |goto Azshara/0 70.94,32.52 |'
Ruins of Eldarath |goto Azshara/0 32.74,51.48 |'
Nazj�vel Digsite |goto Darkshore/0 32.31,84.0 |'
Nightmare Scar Digsite |goto Southern Barrens/0 47.96,37.69 |'
Sargeron Digsite |goto Desolace/0 75.1,21.76 |'
Slitherblade Shore Digsite |goto Desolace/0 30.3,28.86 |'
Ethel Rethor Digsite |goto Desolace/0 38.91,25.42 |'
Mannoroc Coven Digsite |goto Desolace/0 51.7,76.9 |'
Darkmist Digsite |goto Feralas/0 64.91,58.8 |'
Ravenwind Digsite |goto Feralas/0 39.63,11.63 |'
North Isildien Digsite |goto Feralas/0 60.89,56.22 |'
South Isildien Digsite |goto Feralas/0 59.31,66.34 |'
Dire Maul Digsite |goto Feralas/0 59.16,47.39 |'
Broken Commons Digsite |goto Feralas/0 62.03,30.37 |'
Solarsal Digsite |goto Feralas/0 27.43,52.56 |'
Oneiros Digsite |goto Feralas/0 52.56,17.23 |'
Constellas Digsite |goto Felwood/0 37.62,65.48 |'
Ironwood Digsite |goto Felwood/0 49.54,29.51 |'
Jaedenar Digsite |goto Felwood/0 38.48,59.23 |'
Morlos�Aran Digsite |goto Felwood/0 56.0,84.44 |'
Southwind Village Digsite |goto Silithus/0 64.19,46.96 |'
Shrine of Goldrinn Digsite |goto Mount Hyjal/0 28.86,30.59 |'
Sanctuary of Malorne Digsite |goto Mount Hyjal/0 26.13,61.6 |'
Grove of Aessina Digsite |goto Mount Hyjal/0 18.81,39.42 |'
Scorched Plain Digsite |goto Mount Hyjal/0 55.43,54.28 |'
Ruins of Lar�donir Digsite |goto Mount Hyjal/0 49.25,19.39 |'
Frostwhisper Gorge Digsite |goto Winterspring/0 60.89,84.44 |'
Lake Kel�Theril Digsite |goto Winterspring/0 50.26,55.79 |'
Owl Wing Thicket Digsite |goto Winterspring/0 64.33,76.47 |'
Forest Song Digsite |goto Ashenvale/0 84.0,44.37 |'
Ruins of Ordil�Aran |goto Ashenvale/0 28.58,29.29 |'
Ruins of Stardust |goto Ashenvale/0 33.46,66.99 |'
Zoram Strand Digsite |goto Ashenvale/0 15.08,19.17 |'
Stonetalon Peak |goto Stonetalon Mountains/0 41.64,21.76 |'
Ruins of Eldre�thar |goto Stonetalon Mountains/0 48.11,73.88 |'
Riplash Ruins Digsite |goto Borean Tundra/0 49.97,90.25 |'
Moonrest Gardens Digsite |goto Dragonblight/0 21.97,59.23 |'
Violet Stand Digsite |goto Crystalsong Forest/0 15.36,42.43 |'
Ruins of Shandaral Digsite |goto Crystalsong Forest/0 80.99,60.96 |'
Learn the _Kaldorei Wind Chimes_ toy |toy Kaldorei Wind Chimes##64383 |use Kaldorei Wind Chimes##64383
step
This toy requires a minimum of 450 skill points in Archaeology
|tip All Tol'vir dig sites are marked on your map. You can find them in Kalimdor.
|tip Collect Tol'vir fragments and solve their artifacts until you attain the Pendant of the Scarab Storm toy.
Tombs of the Precursors Digsite |goto Uldum/0 74.53,44.37 |'
Ruins of Ammon Digsite |goto Uldum/0 32.02,64.19 |'
Ruins of Ahmtul Digsite |goto Uldum/0 45.81,14.22 |'
Ruins of Khintaset Digsite |goto Uldum/0 35.04,17.45 |'
Khartut�s Tomb Digsite |goto Uldum/0 64.62,22.83 |'
Neferset Digsite |goto Uldum/0 48.82,80.77 |'
Steps of Fate Digsite |goto Uldum/0 74.1,52.34 |'
Temple of Uldum Digsite |goto Uldum/0 33.6,29.94 |'
Orsis Digsite |goto Uldum/0 40.49,40.93 |'
Cursed Landing Digsite |goto Uldum/0 84.0,55.79 |'
Keset Pass Digsite |goto Uldum/0 78.4,57.73 |'
Akhenet Fields Digsite |goto Uldum/0 54.14,52.99 |'
Obelisk of the Stars Digsite |goto Uldum/0 64.62,31.88 |'
Sahket Wastes Digsite |goto Uldum/0 50.12,20.89 |'
Schnottz�s Landing |goto Uldum/0 21.4,60.96 |'
Learn the _Pendant of the Scarab Storm_ toy |toy Pendant of the Scarab Storm##64881 |use Pendant of the Scarab Storm##64881
step
This toy requires a minimum of 350 skill points in Archaeology
|tip All Nerubian dig sites are marked on your map. You can find them in Eastern Kingdoms and Northrend.
|tip Collect Nerubian fragments and solve their artifacts until you attain the Puzzle Box of Yogg-Saron toy.
Terrorweb Tunnel Digsite |goto Eastern Plaguelands/0 12.06,24.77 |'
Plaguewood Digsite |goto Eastern Plaguelands/0 35.47,21.76 |'
Talramas Digsite |goto Borean Tundra/0 69.07,15.08 |'
En�kilah Digsite |goto Borean Tundra/0 85.87,24.12 |'
Sands of Nasam |goto Borean Tundra/0 52.27,68.07 |'
Pit of Narjun Digsite |goto Dragonblight/0 26.71,49.76 |'
Kolramas Digsite |goto Zul'Drak/0 60.31,77.54 |'
Scourgeholme Digsite |goto Icecrown/0 77.26,63.33 |'
Pit of Fiends Digsite |goto Icecrown/0 75.53,53.2 |'
Learn the _Puzzle Box of Yogg-Saron_ toy |toy Puzzle Box of Yogg-Saron##64482 |use Puzzle Box of Yogg-Saron##64482
step
This toy requires a minimum of 350 skill points in Archaeology
|tip All Vrykul dig sites are marked on your map. You can find them in Northrend.
|tip Collect Vrykul fragments and solve their artifacts until you attain the Vrykul Drinking Horn toy.
Voldrune Digsite |goto Grizzly Hills/0 28.43,75.39 |'
Baleheim Digsite |goto Howling Fjord/0 64.19,40.06 |'
Wyrmskull Digsite |goto Howling Fjord/0 58.16,52.13 |'
Gjalerbron Digsite |goto Howling Fjord/0 35.9,10.55 |'
Halgrind Digsite |goto Howling Fjord/0 50.12,53.85 |'
Nifflevar Digsite |goto Howling Fjord/0 67.78,52.56 |'
Skorn Digsite |goto Howling Fjord/0 44.52,29.72 |'
Shield Hill Digsite |goto Howling Fjord/0 58.73,77.97 |'
Njorndar Village Digsite |goto Icecrown/0 20.53,57.73 |'
Ymirheim Digsite |goto Icecrown/0 57.44,55.57 |'
Brunnhildar Village Digsite |goto The Storm Peaks/0 49.11,68.07 |'
Valkyrion Digsite |goto The Storm Peaks/0 24.41,59.45 |'
Sifreldar Village Digsite |goto The Storm Peaks/0 40.78,70.87 |'
Learn the _Vrykul Drinking Horn_ toy |toy Vrykul Drinking Horn##69775 |use Vrykul Drinking Horn##69775
step
This toy requires a minimum of 75 skill points in Archaeology
|tip All Night Elf dig sites are marked on your map. You can find them in Eastern Kingdoms and Kalimdor.
|tip Collect Night Elf fragments and solve their artifacts until you attain the Wisp Amulet toy.
Twilight Grove Digsite |goto Duskwood/0 47.1,42.86 |'
Quel�Lithien Lodge Digsite |goto Eastern Plaguelands/0 47.24,12.06 |'
Ruins of Arkkoran |goto Azshara/0 70.94,32.52 |'
Ruins of Eldarath |goto Azshara/0 32.74,51.48 |'
Nazj�vel Digsite |goto Darkshore/0 32.31,84.0 |'
Nightmare Scar Digsite |goto Southern Barrens/0 47.96,37.69 |'
Sargeron Digsite |goto Desolace/0 75.1,21.76 |'
Slitherblade Shore Digsite |goto Desolace/0 30.3,28.86 |'
Ethel Rethor Digsite |goto Desolace/0 38.91,25.42 |'
Mannoroc Coven Digsite |goto Desolace/0 51.7,76.9 |'
Darkmist Digsite |goto Feralas/0 64.91,58.8 |'
Ravenwind Digsite |goto Feralas/0 39.63,11.63 |'
North Isildien Digsite |goto Feralas/0 60.89,56.22 |'
South Isildien Digsite |goto Feralas/0 59.31,66.34 |'
Dire Maul Digsite |goto Feralas/0 59.16,47.39 |'
Broken Commons Digsite |goto Feralas/0 62.03,30.37 |'
Solarsal Digsite |goto Feralas/0 27.43,52.56 |'
Oneiros Digsite |goto Feralas/0 52.56,17.23 |'
Constellas Digsite |goto Felwood/0 37.62,65.48 |'
Ironwood Digsite |goto Felwood/0 49.54,29.51 |'
Jaedenar Digsite |goto Felwood/0 38.48,59.23 |'
Morlos�Aran Digsite |goto Felwood/0 56.0,84.44 |'
Southwind Village Digsite |goto Silithus/0 64.19,46.96 |'
Shrine of Goldrinn Digsite |goto Mount Hyjal/0 28.86,30.59 |'
Sanctuary of Malorne Digsite |goto Mount Hyjal/0 26.13,61.6 |'
Grove of Aessina Digsite |goto Mount Hyjal/0 18.81,39.42 |'
Scorched Plain Digsite |goto Mount Hyjal/0 55.43,54.28 |'
Ruins of Lar�donir Digsite |goto Mount Hyjal/0 49.25,19.39 |'
Frostwhisper Gorge Digsite |goto Winterspring/0 60.89,84.44 |'
Lake Kel�Theril Digsite |goto Winterspring/0 50.26,55.79 |'
Owl Wing Thicket Digsite |goto Winterspring/0 64.33,76.47 |'
Forest Song Digsite |goto Ashenvale/0 84.0,44.37 |'
Ruins of Ordil�Aran |goto Ashenvale/0 28.58,29.29 |'
Ruins of Stardust |goto Ashenvale/0 33.46,66.99 |'
Zoram Strand Digsite |goto Ashenvale/0 15.08,19.17 |'
Stonetalon Peak |goto Stonetalon Mountains/0 41.64,21.76 |'
Ruins of Eldre�thar |goto Stonetalon Mountains/0 48.11,73.88 |'
Riplash Ruins Digsite |goto Borean Tundra/0 49.97,90.25 |'
Moonrest Gardens Digsite |goto Dragonblight/0 21.97,59.23 |'
Violet Stand Digsite |goto Crystalsong Forest/0 15.36,42.43 |'
Ruins of Shandaral Digsite |goto Crystalsong Forest/0 80.99,60.96 |'
Learn the _Wisp Amulet_ toy |toy Wisp Amulet##64651 |use Wisp Amulet##64651
step
talk Nam Ironpaw##64395
buy 1 Flippable Table##88801 |use Flippable Table##88801 |n
Learn the _Flippable Table_ toy |toy Flippable Table##88801 |goto Valley of the Four Winds/0 53.6,51.2
step
talk Haris Pilton##18756
buy 1 Eternal Black Diamond Ring##134007 |use Eternal Black Diamond Ring##134007 |n
|tip This costs 5,000 gold.
Learn the _Eternal Black Diamond Ring_ toy |toy Eternal Black Diamond Ring##134007 |goto Shattrath City/0 75.5,30.5
buy 1 Noble's Eternal Elementium Signet##134004 |use Noble's Eternal Elementium Signet##134004 |n
Learn the _Noble's Eternal Elementium Signet_ toy |toy Noble's Eternal Elementium Signet##134004 |goto Shattrath City/0 75.5,30.5
step
talk Breanni##28951
buy 1 Red Ribbon Pet Leash##44820 |use Red Ribbon Pet Leash##44820 |n
Learn the _Red Ribbon Pet Leash_ toy |toy Red Ribbon Pet Leash##44820 |goto Dalaran/1 58.7,39.2
buy 1 Rope Pet Leash##37460 |use Rope Pet Leash##37460 |n
Learn the _Rope Pet Leash_ toy |toy Rope Pet Leash##37460 |goto Dalaran/1 58.7,39.2
step
talk Irisee##33657
buy 1 Exodar Banner##45020 |use Exodar Banner##45020 |n
|tip This costs 15 Champion's Seals, these can be obtained through completing dailies in the Argent Tournament.
Learn the _Exodar Banner_ toy |toy Exodar Banner##45020 |goto Icecrown/0 76.2,19.3
step
talk Rook Hawkfist##33653
buy 1 Darnassus Banner##45021 |use Darnassus Banner##45021 |n
|tip This costs 15 Champion's Seals, these can be obtained through completing dailies in the Argent Tournament.
Learn the _Darnassus Banner_ toy |toy Darnassus Banner##45021 |goto Icecrown/0 76.3,19.2
step
talk Corporal Arthur Flew##33307
buy 1 Stormwind Banner##45011 |use Stormwind Banner##45011 |n
|tip This costs 15 Champion's Seals, these can be obtained through completing dailies in the Argent Tournament.
Learn the _Stormwind Banner_ toy |toy Stormwind Banner##45011 |goto Icecrown/0 76.4,19.2
step
talk Derrick Brindlebeard##33310
buy 1 Ironforge Banner##45018 |use Ironforge Banner##45018 |n
|tip This costs 15 Champion's Seals, these can be obtained through completing dailies in the Argent Tournament.
Learn the _Ironforge Banner_ toy |toy Ironforge Banner##45018 |goto Icecrown/0 76.5,19.4
step
talk Rillie Spindlenut##33650
buy 1 Gnomeregan Banner##45019 |use Gnomeregan Banner##45019 |n
|tip This costs 15 Champion's Seals, these can be obtained through completing dailies in the Argent Tournament.
Learn the _Gnomeregan Banner_ toy |toy Gnomeregan Banner##45019 |goto Icecrown/0 76.5,19.6
step
talk Dame Evniki Kapsalis##34885
buy 1 Argent Crusader's Banner##46843 |use Argent Crusader's Banner##46843 |n
|tip This costs 15 Champion's Seals, these can be obtained through completing dailies in the Argent Tournament.
Learn the _Argent Crusader's Banner_ toy |toy Argent Crusader's Banner##46843 |goto 69.4,23.2
step
kill Drakum##98283
|tip This is a rare spawn and does not have a 100 percent chance to drop.
collect Crashin' Thrashin' Roller Controller##108631 |use Crashin' Thrashin' Roller Controller##108631 |n
Learn the _Crashin' Thrashin' Roller Controller_ toy |toy Crashin' Thrashin' Roller Controller##108631 |goto Tanaan Jungle/0 83.5,43.7
step
kill Smashum Grabb##98285
|tip This is a rare spawn and does not have a 100 percent chance to drop.
collect Crashin' Thrashin' Mortar Controller##108634 |use Crashin' Thrashin' Mortar Controller##108634 |n
Learn the _Crashin' Thrashin' Mortar Controller_ toy |toy Crashin' Thrashin' Mortar Controller##108634 |goto Tanaan Jungle/0 88.1,55.8
step
kill Gondar##98284
|tip This is a rare spawn and does not have a 100 percent chance to drop.
collect Crashin' Thrashin' Cannon Controller##108633 |use Crashin' Thrashin' Cannon Controller##108633 |n
Learn the _Crashin' Thrashin' Cannon Controller_ toy |toy Crashin' Thrashin' Cannon Controller##108633 |goto Tanaan Jungle/0 80.4,56.9
step
kill Bramblefell##91093
|tip This is a rare spawn and does not have a 100 percent chance to drop.
collect Felflame Campfire##127652 |use Felflame Campfire##127652 |n
Learn the _Felflame Campfire_ toy |toy Felflame Campfire##127652 |goto Tanaan Jungle/0 40.9,69.5
step
kill Imp-Master Valessa##90429
|tip This is a rare spawn and does not have a 100 percent chance to drop.
collect Sassy Imp##127655 |use Sassy Imp##127655 |n
Learn the _Sassy Imp_ toy |toy Sassy Imp##127655 |goto Tanaan Jungle/0 31.4,72.6
step
Enter the cave |goto Tanaan Jungle/0 37.4,75.9 < 5 |walk
kill Captain Ironbeard##93076
|tip This is a rare spawn and does not have a 100 percent chance to drop.
collect Ghostly Iron Buccaneer's Hat##127659 |use Ghostly Iron Buccaneer's Hat##127659 |n
Learn the _Ghostly Iron Buccaneer's Hat_ toy |toy Ghostly Iron Buccaneer's Hat##127659 |goto Tanaan Jungle/0 36.2,79.8
step
kill Remnant of the Blood Moon##91227
|tip This is a rare spawn and does not have a 100 percent chance to drop.
collect Vial of Red Goo##127666 |use Vial of Red Goo##127666 |n
Learn the _Vial of Red Goo_ toy |toy Vial of Red Goo##127666 |goto Tanaan Jungle/0 22.2,50.5
step
kill High Priest Ikzan##90777
|tip This is a rare spawn and does not have a 100 percent chance to drop.
|tip He pats around this area.
collect Cursed Feather of Ikzan##122117 |use Cursed Feather of Ikzan##122117 |n
Learn the _Cursed Feather of Ikzan_ toy |toy Cursed Feather of Ikzan##122117 |goto Tanaan Jungle/0 20.7,39.9
step
kill Sahn Tidehunter##50780
|tip This is a rare spawn and does not have a 100 percent chance to drop.
collect Aqua Jewel##86582 |use Aqua Jewel##86582 |n
Learn the _Aqua Jewel_ toy |toy Aqua Jewel##86582 |goto Vale of Eternal Blossoms/0 69.6,30.8
step
kill Ba'ruun##82326
|tip This is a rare spawn.
collect Ba'ruun's Bountiful Bloom##113540 |use Ba'ruun's Bountiful Bloom##113540 |n
Learn the _Ba'ruun's Bountiful Bloom_ toy |toy Ba'ruun's Bountiful Bloom##113540 |goto Shadowmoon Valley D/0 52.8,16.6
step
kill Gibblette the Cowardly##87352
|tip This is a rare spawn and does not have a 100 percent chance to drop.
collect Goren "Log" Roller##119180 |use Goren "Log" Roller##119180 |n
Learn the _Goren "Log" Roller_ toy |toy Goren "Log" Roller##119180 |goto Frostfire Ridge/0 66.6,25.4
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Collections\\Toy Box\\All Toys",{
achieveid={9673},
patch='60002',
description="\nThis guide will help you through attaining all of the toys.",
},[[
step
talk Chapman##34382
buy 1 "Blooming Rose" Contender's Costume##116856 |n
use the "Blooming Rose" Contender's Costume##116856
|tip This toy is only available while the Day of the Dead event is active.
|tip This costs 100 gold.
Learn the "Blooming Rose" Contender's Costume Toy |toy "Blooming Rose" Contender's Costume##116856
step
talk Chapman##34382
buy 1 "Night Demon" Contender's Costume##116888 |n
use the "Night Demon" Contender's Costume##116888
|tip This toy is only available while the Day of the Dead event is active.
|tip This costs 100 gold.
Learn the "Night Demon" Contender's Costume Toy |toy "Night Demon" Contender's Costume##116888
step
talk Chapman##34382
buy 1 "Purple Phantom" Contender's Costume##116889 |n
use the "Purple Phantom" Contender's Costume##116889
|tip This toy is only available while the Day of the Dead event is active.
|tip This costs 100 gold.
Learn the "Purple Phantom" Contender's Costume Toy |toy "Purple Phantom" Contender's Costume##116889
step
talk Chapman##34382
buy 1 "Santo's Sun" Contender's Costume##116890 |n
use the "Santo's Sun" Contender's Costume##116890
|tip This toy is only available while the Day of the Dead event is active.
|tip This costs 100 gold.
Learn the "Santo's Sun" Contender's Costume Toy |toy "Santo's Sun" Contender's Costume##116890
step
talk Chapman##34382
buy 1 "Snowy Owl" Contender's Costume##116891 |n
use the "Snowy Owl" Contender's Costume##116891
|tip This toy is only available while the Day of the Dead event is active.
|tip This costs 100 gold.
Learn the "Snowy Owl" Contender's Costume Toy |toy "Snowy Owl" Contender's Costume##116891
step
Go up the steps |goto Tanaan Jungle/0 30.6,71.0 < 8 |only if walking
Enter the small building |goto Tanaan Jungle/0 32.1,70.8 < 5 |walk
click Tome of Secrets##240855 |goto Tanaan Jungle 32.40,70.40
collect 1 Accursed Tome of the Sargerei##127670 |use Accursed Tome of the Sargerei##127670 |n
Learn the _Accursed Tome_ of the Sargerei Toy |toy Accursed Tome of the Sargerei##127670
step
kill Ai-Li Skymirror##50821
collect 1 Ai-Li's Skymirror##86589 |use Ai-Li's Skymirror##86589 |n
Learn the _Ai-Li's Skymirror_ Toy |toy Ai-Li's Skymirror##86589 |goto Dread Wastes/0 34.8,23.2
step
placeholder
step
placeholder
step
This toy requires a minimum of 75 skill points in Archaeology
|tip All Fossil dig sites are marked on your map. You can find them in Eastern Kingdoms and Kalimdor.
|tip Collect Fossil fragments and solve their artifacts until you attain the Ancient Amber toy.
Vul'Gol Fossil Bank |goto Duskwood/0 35.75,71.96 |'
Greenwarden's Fossil Bank |goto Wetlands/0 64.61,50.85 |'
Savage Coast Raptor Fields |goto Northern Stranglethorn/0 36.75,42.23 |'
Felstone Field |goto Western Plaguelands/0 37.33,56.66 |'
Northridge Fossil Field |goto Western Plaguelands/0 46.96,35.33 |'
Andorhal Fossil Bank |goto Western Plaguelands/0 33.46,73.45 |'
Infectis Scar Fossil Field |goto Eastern Plaguelands/0 48.97,61.6 |'
Terror Wing Fossil Field |goto Burning Steppes/0 77.97,53.2 |'
Southshore Fossil Field |goto Hillsbrad Foothills/0 56.72,61.17 |'
Misty Reed Fossil Bank |goto Swamp of Sorrows/0 83.72,80.99 |'
Lakeridge Highway Fossil Bank |goto Redridge Mountains/0 37.34,67.85 |'
Dreadmaul Fossil Field |goto Blasted Lands/0 44.08,34.46 |'
Red Reaches Fossil Bank |goto Blasted Lands/0 65.48,78.84 |'
Fields of Blood Fossil Bank |goto Southern Barrens/0 44.95,44.16 |'
Kodo Graveyard |goto Desolace/0 52.99,58.37 |'
Valley of Bones |goto Desolace/0 64.04,89.39 |'
Dunemaul Fossil Ridge |goto Tanaris/0 39.92,65.48 |'
Abyssal Sands Fossil Ridge |goto Tanaris/0 46.53,41.79 |'
Lower Lakkari Tar Pits |goto Un'Goro Crater/0 52.13,28.86 |'
Upper Lakkari Tar Pits |goto Un'Goro Crater/0 48.97,20.46 |'
Marshlands Fossil Bank |goto Un'Goro Crater/0 67.63,65.7 |'
Screaming Reaches Fossil Field |goto Un'Goro Crater/0 33.6,32.74 |'
Terror Run Fossil Field |goto Un'Goro Crater/0 34.03,75.17 |'
Quagmire Fossil Field |goto Dustwallow Marsh/0 48.54,54.5 |'
Wyrmbog Fossil Field |goto Dustwallow Marsh/0 48.11,73.67 |'
Unearthed Grounds |goto Stonetalon Mountains/0 76.11,76.25 |'
Learn the _Ancient Amber_ toy |toy Ancient Amber##69776 |use Ancient Amber##69776
step
Legion
step
placeholder
step
kill Yggdrel##75435
collect 1 Ancient's Bloom##113570 |use Ancient's Bloom##113570 |n
Learn the _Ancient's Bloom_ toy |toy Ancient's Bloom##113570 |goto Shadowmoon Valley D/0 48.6,66.2
step
placeholder
step
_Go to_ the river |goto Shadowmoon Valley D/0 52.0,69.0 |only if walking
_Continue_ following the river southeast |goto Shadowmoon Valley D/0 53.5,73.0 |only if walking
_Go to_ the base of the tree |goto Shadowmoon Valley D 55.29,74.87 |only if walking
click Swamplighter Hive##232592 |q 35580 |future |goto Shadowmoon Valley D 55.29,74.87
|tip It's a yellow beehive located up in the tree. All of the wasps will attack you when you click it.
collect 1 Angry Beehive##117550 |use Angry Beehive##117550 |n
Learn the _Angry Beehive_ toy |toy Angry Beehive##117550
step
kill Sahn Tidehunter##50780
|tip This is a rare spawn and does not have a 100 percent chance to drop.
collect Aqua Jewel##86582 |use Aqua Jewel##86582 |n
Learn the _Aqua Jewel_ toy |toy Aqua Jewel##86582 |goto Vale of Eternal Blossoms/0 69.6,30.8
step
Legion
step
#include "Garrison_CommandTable"
|tip Click your garrison command table and start the mission "Finding Farahlon" if it is available.
Complete the "Finding Farahlon" garrison mission |collect 1 Mysterious Shining Lockbox##118193 |use Mysterious Shining Lockbox##118193 |or
Learn the _Archmage Vargoth's Spare Staff_ toy |toy Archmage Vargoth's Spare Staff##118191 |use Archmage Vargoth's Spare Staff##118191 |or
step
_Jump down_ the ledge here |goto Frostfire Ridge/0 24.3,25.8 < 20 |only if walking
_Go up_ the stairs |goto Frostfire Ridge/0 22.0,26.2 < 25 |only if walking
_Pass through_ the doorway |goto 23.3,24.3 < 15 |only if walking
click Arena Master's War Horn##226955 |q 33916 |future |goto Frostfire Ridge 23.17,24.95
|tip It's on the seat of the throne.
step
talk Dame Evniki Kapsalis##34885
buy 1 Argent Crusader's Banner##46843 |use Argent Crusader's Banner##46843 |n
|tip This costs 15 Champion's Seals, these can be obtained through completing dailies in the Argent Tournament.
Learn the _Argent Crusader's Banner_ toy |toy Argent Crusader's Banner##46843 |goto Icecrown/0 69.4,23.2
step
This toy requires a minimum of 300 skill points in Archaeology
|tip All Draenei dig sites are marked on your map. You can find them in Outland.
|tip Collect Draenei fragments and solve their artifacts until you attain the Arrival of the Naaru toy.
Sha�naar Digsite |goto Hellfire Peninsula/0 13.79,58.59 |'
Twin Spire Ruins Digsite |goto Zangarmarsh/0 46.96,49.97 |'
Boha�mu Ruins Digsite |goto Zangarmarsh/0 43.8,66.77 |'
Tuurem Digsite |goto Terokkar Forest/0 52.84,29.94 |'
Bone Wastes Digsite |goto Terokkar Forest/0 47.1,60.31 |'
East Auchindoun Digsite |goto Terokkar Forest/0 42.65,64.83 |'
West Auchindoun Digsite |goto Terokkar Forest/0 37.62,63.97 |'
Halaa Digsite |goto Nagrand/0 42.65,43.94 |'
Illidari Point Digsite |goto Shadowmoon Valley/0 30.44,53.63 |'
Eclipse Point Digsite |goto Shadowmoon Valley/0 46.09,68.07 |'
Coilskar Point Digsite |goto Shadowmoon Valley/0 45.52,27.57 |'
Ruins of Baa�ri Digsite |goto Shadowmoon Valley/0 56.86,36.19 |'
Ruins of Enkaat Digsite |goto Netherstorm/0 33.03,53.63 |'
Ruins of Farahlon Digsite |goto Netherstorm/0 53.56,21.11 |'
Arklon Ruins Digsite |goto Netherstorm/0 39.49,72.8 |'
Learn the _Arrival of the Naaru_ toy |toy Arrival of the Naaru##64456 |use Arrival of the Naaru##64456
step
kill High Priest of Ordos##72898+
collect Ash-Covered Horn##104329 |use Ash-Covered Horn##104329 |n
Learn the _Ash-Covered Horn_ toy |toy Ash-Covered Horn##104329
step
Complete the achievement Wanderluster: Gold |achieve 9792
Check you mail once this achievement is completed
collect Attraction Sign##122126 |use Attraction Sign##122126 |n
Learn the _Attraction Sign_ toy |toy Attraction Sign##122126
step
#include "Garrison_CommandTable"
|tip Click your garrison command table and start the mission "Hearthstone Tournament" if it is available.
Complete the "Hearthstone Tournament" garrison mission |collect 1 Autographed Hearthstone Card##118427 |or
Learn the _Autographed Hearthstone Card_ toy |toy Autographed Hearthstone Card##118427 |or
step
placeholder
step
Enter the cave |goto Townlong Steppes/0 32.9,61.8 < 5 |walk
kill Huggalon the Heart Watcher##66900
collect B. F. F. Necklace##90067 |use B. F. F. Necklace##90067 |n
Learn the _B. F. F. Necklace_ toy |toy B. F. F. Necklace##90067 |goto Townlong Steppes/13 64.5,22.4
step
kill Ba'ruun##82326
|tip This is a rare spawn.
collect Ba'ruun's Bountiful Bloom##113540 |use Ba'ruun's Bountiful Bloom##113540 |n
Learn the _Ba'ruun's Bountiful Bloom_ toy |toy Ba'ruun's Bountiful Bloom##113540 |goto Shadowmoon Valley D/0 52.8,16.6
step
Legion
step
kill Blackhoof##51059
|tip This is a rare spawn and does not have a 100 percent chance to drop.
|tip He pats around this area.
collect Battle Horn##86565 |use Battle Horn##86565 |n
Learn the _Battle Horn_ toy |toy Battle Horn##86565 |goto Valley of the Four Winds/0 35.7,61.3
step
Legion
step
Complete the quest Booty Bay's Interests in Zul'Gurub on Heroic Difficulty
collect Black Ice##133997 |use Black Ice##133997 |n
Learn the _Black Ice_ toy |toy Black Ice##133997
step
_Go through_ the stone arch |goto Spires of Arak/0 72.3,25.6 |only if walking
_Go up_ the hill |goto Spires of Arak/0 71.3,20.7 |only if walking
kill Soul-Twister Torek##85026
collect 1 Black Whirlwind##119178 |use Black Whirlwind##119178 |n
|tip This is a rare spawn and does not have a 100 percent chance to drop.
Learn the _Black Whirlwind_ toy |toy Black Whirlwind##119178 |goto Spires of Arak/0 72.6,19.3
step
kill Champion of the Black Flame##73171
|tip This is a rare spawn and does not have a 100 percent chance to drop.
collect 1 Blackflame Daggers##104302 |use Blackflame Daggers##104302 |n
Learn the _Blackflame Daggers_ toy |toy Blackflame Daggers##104302 |goto Timeless Isle/0 69.4,43.8
step
This is a toy obtainable by Horde only
Complete the quest Diamonds are Forever, this can only be done if you have Jewelcrafting
collect Blazing Diamond Pendant##115503 |use Blazing Diamond Pendant##115503 |n
Learn the _Blazing Diamond Pendant_ toy |toy Blazing Diamond Pendant##115503
step
Complete the achievement "Brood of Alysrazor" at the Darkmoon Faire
Check your mail box once this achievement is completed
collect Blazing Wings##116115 |use Blazing Wings##116115 |n
Learn the _Blazing Wings_ toy |toy Blazing Wings##116115
step
This toy requires a minimum of 350 skill points in Archaeology
|tip All Nerubian dig sites are marked on your map. You can find them in Northrend and Eastern Plaguelands.
|tip Collect Nerubian fragments and solve their artifacts until you attain the Blessing of the Old God toy.
Terrorweb Tunnel Digsite |goto Eastern Plaguelands/0 20.68,23.05 |'
Plaguewood Digsite |goto Eastern Plaguelands/0 35.47,22.19 |'
Talramas Digsite |goto Borean Tundra/0 68.93,15.08 |'
En�kilah Digsite |goto Borean Tundra/0 86.16,23.91 |'
Sands of Nasam |goto Borean Tundra/0 52.41,67.63 |'
Pit of Narjun Digsite |goto Dragonblight/0 26.57,50.19 |'
Kolramas Digsite |goto Zul'Drak/0 59.88,77.33 |'
Scourgeholme Digsite |goto Icecrown/0 77.11,63.97 |'
Pit of Fiends Digsite |goto Icecrown/0 76.25,53.42 |'
Learn the _Blessing of the Old God_ toy |toy Blessing of the Old God##64481 |use Blessing of the Old God##64481
step
This toy requires the Engineering Profession to make, learn, and use
|tip You must be at least level 600 Engineering to create this.
collect Blingtron 4000##87214 |use Blingtron 4000##87214 |n
Learn the _Blingtron 4000_ toy |toy Blingtron 4000##87214
step
This toy requires the Engineering Profession to make, learn, and use
|tip You must be at least level 600 Engineering to create this.
collect Blingtron 5000##111821 |use Blingtron 5000##111821 |n
Learn the _Blingtron 5000_ toy |toy Blingtron 5000##111821
step
Legion Engineering
step
Fly to Southport |goto Spires of Arak/0 39.9,60.8
You currently have the Brewery built as your Spires of Arak outpost
|tip You must have the Smuggler's Den to purchase this toy |only if garrisonability("Inn")
talk Lieutenant Willem##81929 |only if garrisonability("Inn")
Tell him: "_I want to build a new structure._" |goto Spires of Arak/0 39.9,60.9 |tip This will cost you 5,000 gold. |only if garrisonability("Inn")
Click the Drafting Table and select the Smuggler's Den |complete garrisonability("TradingPost") |goto Spires of Arak/0 39.7,60.9 |only if garrisonability("Inn")
Use your garrison ability |cast Smuggling Run!##170097 |only if garrisonability("TradingPost")
talk Honest Jim##82459 |only if garrisonability("TradingPost")
buy 1 Bloodmane Charm##113096 |use Bloodmane Charm##113096 |tip This toy costs 500 gold. |only if garrisonability("TradingPost")
Learn the _Bloodmane Charm_ toy |toy Bloodmane Charm##113096 |use |only if garrisonability("TradingPost")
confirm
step
talk Craggle Wobbletop##52358
|tip Craggle patrols the curved stone path just outside of the Trade District.
buy 1 Blue Crashin' Thrashin' Racer Controller##54343 |use Blue Crashin' Thrashin' Racer##54343 |n
|tip 40 gold, discounts with Gnomeregan reputation.
Learn the _Blue Crashin' Thrashin' Racer_ toy |toy Blue Crashin' Thrashin' Racer##54343 |goto Stormwind City/0 58.9,64.0
buy 1 Toy Train Set##44606 |use Toy Train Set##44606 |n
|tip 250 gold, discounts with Gnomeregan reputation.
Learn the _Toy Train Set_ toy |toy Toy Train Set##44606 |goto Stormwind City/0 58.9,64.0
buy 1 Wind-Up Train Wrecker##45057 |use Wind-Up Train Wrecker##45057 |n
|tip 250 gold, discounts with Gnomeregan reputation.
Learn the _Wind-Up Train Wrecker_ toy |toy Wind-Up Train Wrecker##45057 |goto Stormwind City/0 58.9,64.0
buy 1 Tiny Green Ragdoll##54437 |use Tiny Green Ragdoll##54437 |n
|tip 10 gold, discounts with Gnomeregan reputation.
Learn the _Tiny Green Ragdoll_ toy |toy Tiny Green Ragdoll##54437 |goto Stormwind City/0 58.9,64.0
buy 1 Tiny Blue Ragdoll##54438 |use Tiny Blue Ragdoll##54438 |n
|tip 10 gold, discounts with Gnomeregan reputation.
Learn the _Tiny Blue Ragdoll_ toy |toy Tiny Blue Ragdoll##54438 |goto Stormwind City/0 58.9,64.0
buy 1 The Pigskin##104323 |use The Pigskin##104323 |n
|tip 40 gold, discounts with Gnomeregan reputation.
Learn the _Pigskin_ toy |toy Pigskin##104323 |goto Stormwind City/0 58.9,64.0
buy 1 Foot Ball##104324 |use Foot Ball##104324 |n
|tip 40 gold, discounts with Gnomeregan reputation.
Learn the _Foot Ball_ toy |toy Foot Ball##104324 |goto Stormwind City/0 58.9,64.0
buy 1 Soft Foam Sword##137663 |use Soft Foam Sword##137663 |n
|tip This costs 40 gold, discounts with Gnomeregan reputation.
Learn the _Soft Foam Sword_ toy |toy Soft Foam Sword##137663 |goto Stormwind City/0 58.9,64.0
step
placeholder
step
This toy requires a minimum of 75 skill points in Archaeology
|tip All Night Elf dig sites are marked on your map. You can find them in Eastern Kingdoms, Kalimdor, and Northrend.
|tip Collect Night Elf fragments and solve their artifacts until you attain the Bones of Transformation toy.
Twilight Grove Digsite |goto Duskwood/0 47.1,42.86 |'
Quel�Lithien Lodge Digsite |goto Eastern Plaguelands/0 47.24,12.06 |'
Ruins of Arkkoran |goto Azshara/0 70.94,32.52 |'
Ruins of Eldarath |goto Azshara/0 32.74,51.48 |'
Nazj�vel Digsite |goto Darkshore/0 32.31,84.0 |'
Nightmare Scar Digsite |goto Southern Barrens/0 47.96,37.69 |'
Sargeron Digsite |goto Desolace/0 75.1,21.76 |'
Slitherblade Shore Digsite |goto Desolace/0 30.3,28.86 |'
Ethel Rethor Digsite |goto Desolace/0 38.91,25.42 |'
Mannoroc Coven Digsite |goto Desolace/0 51.7,76.9 |'
Darkmist Digsite |goto Feralas/0 64.91,58.8 |'
Ravenwind Digsite |goto Feralas/0 39.63,11.63 |'
North Isildien Digsite |goto Feralas/0 60.89,56.22 |'
South Isildien Digsite |goto Feralas/0 59.31,66.34 |'
Dire Maul Digsite |goto Feralas/0 59.16,47.39 |'
Broken Commons Digsite |goto Feralas/0 62.03,30.37 |'
Solarsal Digsite |goto Feralas/0 27.43,52.56 |'
Oneiros Digsite |goto Feralas/0 52.56,17.23 |'
Constellas Digsite |goto Felwood/0 37.62,65.48 |'
Ironwood Digsite |goto Felwood/0 49.54,29.51 |'
Jaedenar Digsite |goto Felwood/0 38.48,59.23 |'
Morlos�Aran Digsite |goto Felwood/0 56.0,84.44 |'
Southwind Village Digsite |goto Silithus/0 64.19,46.96 |'
Shrine of Goldrinn Digsite |goto Mount Hyjal/0 28.86,30.59 |'
Sanctuary of Malorne Digsite |goto Mount Hyjal/0 26.13,61.6 |'
Grove of Aessina Digsite |goto Mount Hyjal/0 18.81,39.42 |'
Scorched Plain Digsite |goto Mount Hyjal/0 55.43,54.28 |'
Ruins of Lar�donir Digsite |goto Mount Hyjal/0 49.25,19.39 |'
Frostwhisper Gorge Digsite |goto Winterspring/0 60.89,84.44 |'
Lake Kel�Theril Digsite |goto Winterspring/0 50.26,55.79 |'
Owl Wing Thicket Digsite |goto Winterspring/0 64.33,76.47 |'
Forest Song Digsite |goto Ashenvale/0 84.0,44.37 |'
Ruins of Ordil�Aran |goto Ashenvale/0 28.58,29.29 |'
Ruins of Stardust |goto Ashenvale/0 33.46,66.99 |'
Zoram Strand Digsite |goto Ashenvale/0 15.08,19.17 |'
Stonetalon Peak |goto Stonetalon Mountains/0 41.64,21.76 |'
Ruins of Eldre�thar |goto Stonetalon Mountains/0 48.11,73.88 |'
Riplash Ruins Digsite |goto Borean Tundra/0 49.97,90.25 |'
Moonrest Gardens Digsite |goto Dragonblight/0 21.97,59.23 |' |'
Violet Stand Digsite |goto Crystalsong Forest/0 15.36,42.43 |'
Ruins of Shandaral Digsite |goto Crystalsong Forest/0 80.99,60.96 |'
Learn the _Bones of Transformation_ toy |toy Bones of Transformation##64646 |use Bones of Transformation##64646
step
kill Basten##86257
kill Valstil##86259
|tip Kill Vastil first, he is the healer of the group. Be sure to interrupt Revitalizing Waters.
kill Nultra##86258
|tip This trio is pretty tough, you may want to bring a friend.
collect 1 Botani Camouflage##119432 |use Botani Camouflage##119432 |n
|tip This is a rare spawn and does not have a 100 percent chance to drop.
Learn the _Botani Camouflage_ toy |toy Botani Camouflage##119432 |goto Gorgrond/0 69.2,44.6
step
kill Kal'tik the Blight##50749
|tip This is a rare spawn and does not have a 100 percent chance to drop.
collect Bottled Tornado##134023 |use Bottled Tornado##134023 |n
Learn the _Bottled Tornado_ toy |toy Bottled Tornado##134023 |goto Vale of Eternal Blossoms/0 14.0,58.6
step
click Bleeding Hollow Mushroom Stash##241835
collect Bottomless Stygana Mushroom Brew##128223 |use Bottomless Stygana Mushroom Brew##128223 |n
Learn the _Bottomless Stygana Mushroom Brew_ toy |toy Bottomless Stygana Mushroom Brew##128223 |goto Tanaan Jungle/0 49.9,76.8
step
This toy is only available when the Midsummer event is active
talk Midsummer Supplier##26123
buy 1 Brazier of Dancing Flames##34686 |use Brazier of Dancing Flames##34686
|tip This toy costs 350 Burning Blossoms, these can be obtained through doing dailies during this event.
Learn the _Brazier of Dancing Flames_ toy |toy Brazier of Dancing Flames##34686 |goto Ironforge/0 64.6,26.2
buy 1 Cozy Bonfire##116435 |use Cozy Bonfire##116435
|tip This toy costs 350 Burning Blossoms, these can be obtained through doing dailies during this event.
Learn the _Cozy Bonfire_ toy |toy Cozy Bonfire##116435 |goto Ironforge/0 64.6,26.2
buy 1 Burning Defender's Medallion##116440 |use Burning Defender's Medallion##116440
|tip This toy costs 500 Burning Blossoms, these can be obtained through doing dailies during this event.
Learn the _Burning Defender's Medallion_ toy |toy Burning Defender's Medallion##116440 |goto Ironforge/0 64.6,26.2
step
kill Glimmerwing##77719
|tip This is a rare spawn.
collect Breath of Talador##116113 |use Breath of Talador##116113 |n
Learn the _Breath of Talador_ toy |toy Breath of Talador##116113 |goto Talador/0 33.2, 64.2
step
These toys are only available during the Brewfest Event
talk Belbi Quikswitch##23710
buy 1 Brewfest Pony Keg##33927 |use Brewfest Pony Keg##33927 |n
|tip This toy costs 100 Brewfest Prize Tokens, these can be obtained by doing the dailies during this event.
Learn the _Brewfest Pony Keg_ toy |toy Brewfest Pony Keg##33927 |goto Dun Morogh/0 56.2,37.8
buy 1 Brewfest Keg Pony##71137 |use Brewfest Keg Pony##71137
|tip This toy costs 200 Brewfest Prize Tokens, these can be obtained by doing the dailies during this event.
Learn the _Brewfest Keg Pony_ toy |toy Brewfest Keg Pony##71137 |goto Dun Morogh/0 56.2,37.8
buy 1 Pandaren Brewpack##90427 |use Pandaren Brewpack##90427 |n
|tip This toy costs 100 Brewfest Prize Tokens, these can be obtained by doing the dailies during this event.
Learn the _Pandaren Brewpack_ toy |toy Pandaren Brewpack##90427 |goto Dun Morogh/0 56.2,37.8
buy 1 Steamworks Sausage Grill##116757 |use Steamworks Sausage Grill##116757 |n
|tip This toy costs 200 Brewfest Prize Tokens, these can be obtained by doing the dailies during this event.
Learn the _Steamworks Sausage Grill_ toy |toy Steamworks Sausage Grill##116757 |goto Dun Morogh/0 56.2,37.8
buy 1 Brewfest Banner##116758 |use Brewfest Banner##116758 |n
|tip This toy costs 100 Brewfest Prize Tokens, these can be obtained by doing the dailies during this event.
Learn the _Brewfest Banner_ toy |toy Brewfest Banner##116758 |goto Dun Morogh/0 56.2,37.8
step
Legion
step
kill Sulfurious##80725
collect 1 Bubble Wand##114227 |use Bubble Wand##114227 |n
|tip This toy is a guaranteed drop.
Learn the _Bubble Wand_ toy |toy Bubble Wand##114227 |goto Gorgrond/0 41.0,60.4
step
kill Burgy Blackheart##50052
collect Burgy Blackheart's Handsome Hat##134022 |use Burgy Blackheart's Handsome Hat##134022 |n
Learn the _Burgy Blackheart's Handsome Hat_ toy |toy Burgy Blackheart's Handsome Hat##134022 |goto Shimmering Expanse/0 56.9,70.1
step
#include "Garrison_CommandTable"
|tip Click your garrison command table and start the mission "Burning Blademasters" if it is available.
Complete the "Burning Blademasters" garrison mission |collect 1 Burning Blade##128310 |or
Learn the _Burning Blade_ toy |toy Burning Blade##128310 |or
|tip Note: This mission requires you to have an item level of at least 675 and several followers with a 675 item level before it will appear.
step
kill Sikthiss, Maiden of Slaughter##78715 |or
kill Galzomar##78713 |or
kill Kharazos the Triumphant##78710 |or
collect Burning Legion Missive##116122 |use Burning Legion Missive##116122 |n
Learn the _Burning Legion Missive_ toy |toy Burning Legion Missive##116122 |goto Talador/0 56.5,63.7
step
Earn _Revered_ status with the Emperor Shaohao faction |complete rep("Emperor Shaohao")>=Revered
talk Mistweaver Ku##73306
buy 1 Celestial Defender's Medallion##103685 |use Celestial Defender's Medallion##103685 |n
|tip This toy costs 1,000 Timeless Coins.
Learn the _Celestial Defender's Medallion_ toy |toy Celestial Defender's Medallion##103685 |goto Timeless Isle/0 42.8,54.8
step
talk Speaker Gulan##73307
buy 1 Censer of Eternal Agony##102467 |use Censer of Eternal Agony##102467 |n
|tip This toy costs 1,000 Timeless Coins.
Learn the _Censer of Eternal Agony_ toy |toy Censer of Eternal Agony##102467 |goto Timeless Isle/0 75.0,44.8
step
This has a chance to drop from any bag received from completing pet battle daily/weekly quests
collect Chain Pet Leash##89139 |use Chain Pet Leash##89139 |n
Learn the _Chain Pet Leash_ toy |toy Chain Pet Leash##89139
step
kill Urgolax##50359
|tip This is a rare spawn and does not have a 100 percent chance to drop.
collect 1 Chalice of Secrets##86575 |use Chalice of Secrets##86575 |n
Learn the _Chalice of Secrets_ toy |toy Chalice of Secrets##86575 |goto Vale of Eternal Blossoms/0 39.8,25.0
step
This toy requires a minimum of 75 skill points in Archaeology
|tip All Dwarf dig sites are marked on your map. You can find them in Eastern Kingdoms and Kalimdor.
|tip Collect Dwarf fragments and solve their artifacts until you attain the Chalice of the Mountain Kings toy.
Thandol Span |goto Wetlands/0 49.97,11.85 |'
Ironbeard�s Tomb |goto Wetlands/0 43.94,24.77 |'
Whelgar�s Excavation Site |goto Wetlands/0 35.33,48.25 |'
Thoradin�s Wall |goto Arathi Highlands/0 18.09,23.26 |'
Aerie Peak Digsite |goto The Hinterlands/0 34.89,69.36 |'
Uldaman Entrance Digsite |goto Badlands/0 44.08,10.55 |'
Hammertoe�s Digsite |goto Badlands/0 48.68,26.49 |'
Tomb of the Watchers Digsite |goto Badlands/0 48.39,48.9 |'
Grim Batol Digsite |goto Twilight Highlands/0 25.85,54.06 |'
Humboldt Conflagration Digsite |goto Twilight Highlands/0 41.36,23.26 |'
Dunwald Ruins Digsite |goto Twilight Highlands/0 49.11,72.16 |'
Thundermar Ruins Digsite |goto Twilight Highlands/0 50.26,34.03 |'
Eastern Ruins of Thaurissan |goto Burning Steppes/0 53.27,37.91 |'
Western Ruins of Thaurissan |goto Burning Steppes/0 45.09,35.97 |'
Dun Garok Digsite |goto Hillsbrad Foothills/0 61.32,85.51 |'
Pyrox Flats Digsite |goto Searing Gorge/0 39.49,46.09 |'
Grimesilt Digsite |goto Searing Gorge/0 64.48,62.46 |'
Ironband�s Excavation Site |goto Loch Modan/0 68.93,63.11 |'
Bael Modan Digsite |goto Southern Barrens/0 48.25,86.8 |'
Learn the _Chalice of the Mountain Kings_ toy |toy Chalice of the Mountain Kings##64373 |use Chalice of the Mountain Kings##64373
step
Legion
step
talk Derek Odds##31032
buy 1 Chef's Hat##134020 |use Chef's Hat##134020 |n
|tip This toy costs 100 Epicurean's Awards these can be obtained by completing cooking dailies.
Learn the _Chef's Hat_ toy |toy Chef's Hat##134020 |goto Dalaran/1 41.6,64.8
step
This toy requires Revered reputation with the Order of the Cloud Serpent |complete rep("Order of the Cloud Serpent")>=Revered
talk San Redscale##58414
buy 1 Cloud Ring##89222 |use Cloud Ring##89222 |n
|tip This toy costs 1,000 gold.
Learn the _Cloud Ring_ toy |toy Cloud Ring##89222 |goto The Jade Forest/0 56.6,44.4
step
This toy has a small chance to drop from enemies during the Halloween Event
kill Captain Bonerender##96535+, Salty Dreg##96536+, Brackish Cultivator##96538+, Boneship Reveler##96637+
collect Coin of Many Faces##128807 |use Coin of Many Faces##128807 |n
Learn the _Coin of Many Faces_ toy |toy Coin of Many Faces##128807 |goto Shadowmoon Valley D/0 39.9,81.2
step
Legion
step
Legion
step
kill Gondar##98284
|tip This is a rare spawn and does not have a 100 percent chance to drop.
collect Crashin' Thrashin' Cannon Controller##108633 |use Crashin' Thrashin' Cannon Controller##108633 |n
Learn the _Crashin' Thrashin' Cannon Controller_ toy |toy Crashin' Thrashin' Cannon Controller##108633 |goto Tanaan Jungle/0 80.4,56.9
step
This toy is from the 2015 Christmas Event and was lootable under the tree
collect Crashin' Thrashin' Flamer Controller##108632 |use Crashin' Thrashin' Flamer Controller##108632 |n
Learn the _Crashin' Thrashin' Flamer Controller_ toy |toy Crashin' Thrashin' Flamer Controller##108632
step
This toy is from the 2013 Christmas Event and was lootable under the tree
|tip This toy can also be obtained by completing the daily quest "You're a Mean One..." during the Christmas Event.
collect Crashin' Thrashin' Flyer Controller##104318 |use Crashin' Thrashin' Flyer Controller##104318 |n
Learn the _Crashin' Thrashin' Flyer Controller_ toy |toy Crashin' Thrashin' Flyer Controller##104318
step
This toy can only be bought during the Christmas Events
|tip This toy can be Purchased from Izzy Hollyfizzle in a level 3 Warlords of Draenor garrison for 5 Merry Supplies.
|tip You can obtain these from level 100 Winter Veil dailies
talk Izzy Hollyfizzle##96362
buy 1 Crashin' Thrashin' Killdozer Controller##108635 |use Crashin' Thrashin' Killdozer Controller##108635 |n
Learn the _Crashin' Thrashin' Killdozer Controller_ toy |toy Crashin' Thrashin' Killdozer Controller##108635
step
kill Smashum Grabb##98285
|tip This is a rare spawn and does not have a 100 percent chance to drop.
collect Crashin' Thrashin' Mortar Controller##108634 |use Crashin' Thrashin' Mortar Controller##108634 |n
Learn the _Crashin' Thrashin' Mortar Controller_ toy |toy Crashin' Thrashin' Mortar Controller##108634 |goto Tanaan Jungle/0 88.1,55.8
step
This toy is from the 2008 Christmas Event and was lootable under the tree
|tip This toy can also be obtained by completing the daily quest "You're a Mean One..." during the Christmas Event.
collect Crashin' Thrashin' Racer Controller##37710 |use Crashin' Thrashin' Racer Controller##37710 |n
Learn the _Crashin' Thrashin' Racer Controller_ toy |toy Crashin' Thrashin' Racer Controller##37710
step
This toy can either be bought from the AH or can be made through the Engineering Profession
collect Crashin' Thrashin' Robot##23767 |use Crashin' Thrashin' Robot##23767 |n
Learn the _Crashin' Thrashin' Robot_ toy |toy Crashin' Thrashin' Robot##23767
step
kill Drakum##98283
|tip This is a rare spawn and does not have a 100 percent chance to drop.
collect Crashin' Thrashin' Roller Controller##108631 |use Crashin' Thrashin' Roller Controller##108631 |n
Learn the _Crashin' Thrashin' Roller Controller_ toy |toy Crashin' Thrashin' Roller Controller##108631 |goto Tanaan Jungle/0 83.5,43.7
step
This toy is from the 2014 Christmas Event and was lootable under the tree
|tip This toy can also be obtained by completing the daily quest "You're a Mean One..." during the Christmas Event.
collect Crashin' Thrashin' Shredder Controller##116763 |use Crashin' Thrashin' Shredder Controller##116763 |n
Learn the _Crashin' Thrashin' Shredder Controller_ toy |toy Crashin' Thrashin' Shredder Controller##116763
step
This toy requires you to complete the quest "Choking the Skies"
|tip To get to this quest look at our Townlong Steppes leveling guide.
collect Cremating Torch##88589 |use Cremating Torch##88589 |n
Learn the _Cremating Torch_ toy |toy Cremating Torch##88589
step
Legion
step
Legion
step
kill High Priest Ikzan##90777
|tip This is a rare spawn and does not have a 100 percent chance to drop.
|tip He pats around this area.
collect Cursed Feather of Ikzan##122117 |use Cursed Feather of Ikzan##122117 |n
Learn the _Cursed Feather of Ikzan_ toy |toy Cursed Feather of Ikzan##122117 |goto Tanaan Jungle/0 20.7,39.9
step
Legion
step
placeholder
step
This toy was originaly obtained through the Trading Card Game
It can also be bought from the Black Market AH
collect D.I.S.C.O##38301 |use D.I.S.C.O##38301 |n
Learn the _D.I.S.C.O_ toy |toy D.I.S.C.O##38301
step
Legion
step
Complete the Achievement "Big Wanderluster: Gold" |achieve 9811
|tip This achievement can only be completed while the Darkmoon Faire is active.
Check your mail box once you have completed this achievement
collect Darkmoon Gazer##122121 |use Darkmoon Gazer##122121 |n
Learn the _Darkmoon Gazer_ toy |toy Darkmoon Gazer##122121
step
Complete the Achievement "Triumphant Turtle Tossing" |achieve 9894
|tip This achievement can only be completed while the Darkmoon Faire is active.
Check your mail box once you have completed this achievement
collect Darkmoon Ring-Flinger##122123 |use Darkmoon Ring-Flinger##122123 |n
Learn the _Darkmoon Ring-Flinger_ toy |toy Darkmoon Ring-Flinger##122123
step
This toy can only be obtained when the Darkmoon Event is active
talk Gelvas Grimegate##14828
buy 1 Darkmoon Seesaw##97994 |use Darkmoon Seesaw##97994 |n
|tip This toy costs 50 Darkmoon tickets, these can be obtained through completing the Darkmoon daily quests.
Learn the _Darkmoon Seesaw_ toy |toy Darkmoon Seesaw##97994 |goto Darkmoon Island 48.0,64.8
step
Complete the Achievement "Ace Tonk Commander" |achieve 9885
|tip This achievement can only be completed while the Darkmoon Faire is active.
Check your mail box once you have completed this achievement
collect Darkmoon Tonk Controller##122122 |use Darkmoon Tonk Controller##122122 |n
Learn the _Darkmoon Tonk Controller_ toy |toy Darkmoon Tonk Controller##122122
step
This toy can only be obtained when the Darkmoon Event is active
talk Gelvas Grimegate##14828
buy 1 Darkmoon Whistle##90899 |use Darkmoon Whistle##90899 |n
|tip This toy costs 90 Darkmoon tickets, these can be obtained through completing the Darkmoon daily quests.
Learn the _Darkmoon Whistle_ toy |toy Darkmoon Whistle##90899 |goto Darkmoon Island 48.0,64.8
step
Legion
step
This toy was is only obtainable by Horde during the Zalazane's Fall Event and is no longer available
collect Darkspear Pride##54653 |use Darkspear Pride##54653 |n
Learn the _Darkspear Pride_ toy |toy Darkspear Pride##54653
step
talk Rook Hawkfist##33653
buy 1 Darnassus Banner##45021 |use Darnassus Banner##45021 |n
|tip This costs 15 Champion's Seals, these can be obtained through completing dailies in the Argent Tournament.
Learn the _Darnassus Banner_ toy |toy Darnassus Banner##45021 |goto Icecrown/0 76.3,19.2
step
click Dazzling Rod##241848
collect Dazzling Rod##127859 |use Dazzling Rod##127859 |n
Learn the _Dazzling Rod_ toy |toy Dazzling Rod##127859 |goto Tanaan Jungle/0 42.8,35.5
step
Legion
step
You can either buy this from the AH or if you are a rogue with a high level of pickpocketing you can pickpocket the Onslaught mobs in Dragonblight
collect Decahedral Dwarven Dice##36863 |use Decahedral Dwarven Dice##36863 |n
Learn the _Decahedral Dwarven Dice_ toy |toy Decahedral Dwarven Dice##36863
step
click Deceptia's Smoldering Boots##226976 |goto Talador 58.90,12.00
|tip A small pair of boots in the ruined camp.
collect 1 Deceptia's Smoldering Boots##108743 |use Deceptia's Smoldering Boots##108743 |n
Learn the _Deceptia's Smolerding Boots_ toy |toy Deceptia's Smoldering Boots##108743
step
This toy was originaly obtained through the Trading Card Game
It can also be bought from the Black Market AH
collect Demon Hunter's Aspect##79769 |use Demon Hunter's Aspect##79769 |n
Learn the _Demon Hunter's Aspect_ toy |toy Demon Hunter's Aspect##79769
step
Legion
step
This toy will be available during the 2016 Christmas Event
collect Disposable Winter Veil Suits##139337 |use Disposable Winter Veil Suits##139337 |n
Learn the _Disposable Winter Veil Suits_ toy |toy Disposable Winter Veil Suits##139337
step
This toy drops from a rare spawn found in the dungeon Old Hillsbrad Foothills on Heroic Difficulty
kill Don Carlos##28132
|tip He pats along this road.
collect Don Carlos' Famous Hat##134019 |use Don Carlos' Famous Hat##134019 |n
Learn the _Don Carlos' Famous Hat_ toy |toy Don Carlos' Famous Hat##134019 |goto Old Hillsbrad Foothills/0 44.4,54.8
step
This toy requires a minimum of 75 skill points in Archaeology
|tip All Night Elf dig sites are marked on your map. You can find them in Eastern Kingdoms and Kalimdor.
|tip Collect Night Elf fragments and solve their artifacts until you attain the Druid and Priest Statue Set toy.
Twilight Grove Digsite |goto Duskwood/0 47.1,42.86 |'
Quel�Lithien Lodge Digsite |goto Eastern Plaguelands/0 47.24,12.06 |'
Ruins of Arkkoran |goto Azshara/0 70.94,32.52 |'
Ruins of Eldarath |goto Azshara/0 32.74,51.48 |'
Nazj�vel Digsite |goto Darkshore/0 32.31,84.0 |'
Nightmare Scar Digsite |goto Southern Barrens/0 47.96,37.69 |'
Sargeron Digsite |goto Desolace/0 75.1,21.76 |'
Slitherblade Shore Digsite |goto Desolace/0 30.3,28.86 |'
Ethel Rethor Digsite |goto Desolace/0 38.91,25.42 |'
Mannoroc Coven Digsite |goto Desolace/0 51.7,76.9 |'
Darkmist Digsite |goto Feralas/0 64.91,58.8 |'
Ravenwind Digsite |goto Feralas/0 39.63,11.63 |'
North Isildien Digsite |goto Feralas/0 60.89,56.22 |'
South Isildien Digsite |goto Feralas/0 59.31,66.34 |'
Dire Maul Digsite |goto Feralas/0 59.16,47.39 |'
Broken Commons Digsite |goto Feralas/0 62.03,30.37 |'
Solarsal Digsite |goto Feralas/0 27.43,52.56 |'
Oneiros Digsite |goto Feralas/0 52.56,17.23 |'
Constellas Digsite |goto Felwood/0 37.62,65.48 |'
Ironwood Digsite |goto Felwood/0 49.54,29.51 |'
Jaedenar Digsite |goto Felwood/0 38.48,59.23 |'
Morlos�Aran Digsite |goto Felwood/0 56.0,84.44 |'
Southwind Village Digsite |goto Silithus/0 64.19,46.96 |'
Shrine of Goldrinn Digsite |goto Mount Hyjal/0 28.86,30.59 |'
Sanctuary of Malorne Digsite |goto Mount Hyjal/0 26.13,61.6 |'
Grove of Aessina Digsite |goto Mount Hyjal/0 18.81,39.42 |'
Scorched Plain Digsite |goto Mount Hyjal/0 55.43,54.28 |'
Ruins of Lar�donir Digsite |goto Mount Hyjal/0 49.25,19.39 |'
Frostwhisper Gorge Digsite |goto Winterspring/0 60.89,84.44 |'
Lake Kel�Theril Digsite |goto Winterspring/0 50.26,55.79 |'
Owl Wing Thicket Digsite |goto Winterspring/0 64.33,76.47 |'
Forest Song Digsite |goto Ashenvale/0 84.0,44.37 |'
Ruins of Ordil�Aran |goto Ashenvale/0 28.58,29.29 |'
Ruins of Stardust |goto Ashenvale/0 33.46,66.99 |'
Zoram Strand Digsite |goto Ashenvale/0 15.08,19.17 |'
Stonetalon Peak |goto Stonetalon Mountains/0 41.64,21.76 |'
Ruins of Eldre�thar |goto Stonetalon Mountains/0 48.11,73.88 |'
Riplash Ruins Digsite |goto Borean Tundra/0 49.97,90.25 |'
Moonrest Gardens Digsite |goto Dragonblight/0 21.97,59.23 |'
Violet Stand Digsite |goto Crystalsong Forest/0 15.36,42.43 |'
Ruins of Shandaral Digsite |goto Crystalsong Forest/0 80.99,60.96 |'
Learn the _Druid and Priest Statue Set_ toy |toy Druid and Priest Statue Set##64361 |use Druid and Priest Statue Set##64361
step
This toy is only available by completing the quest "Elune's Blessing" during the Lunar Festival Event
|tip You can accomplish this by going to our Lunar Festival Event guide.
collect Elune's Lantern##21540 |use Elune's Lantern##21540 |n
Learn the _Elune's Lantern_ toy |toy Elune's Lantern##21540
step
Legion
step
Legion
step
This toy will be available during the 2016 Christmas Event
collect Endothermic Blaster##128636 |use Endothermic Blaster##128636 |n
Learn the _Endothermic Blaster_ toy |toy Endothermic Blaster##128636
step
kill Ai-Ran the Shifting Cloud##50822
collect Essence of the Breeze##86590 |use Essence of the Breeze##86590 |n
|tip This is a rare spawn and does not have a 100 percent chance to drop.
Learn the _Essence of the Breeze_ toy |toy Essence of the Breeze##86590 |goto Vale of Eternal Blossoms/0 42.6,69.0
step
talk Haris Pilton##18756
buy 1 Eternal Black Diamond Ring##134007 |use Eternal Black Diamond Ring##134007 |n
|tip This costs 5,000 gold.
Learn the _Eternal Black Diamond Ring_ toy |toy Eternal Black Diamond Ring##134007 |goto Shattrath City/0 75.5,30.5
buy 1 Noble's Eternal Elementium Signet##134004 |use Noble's Eternal Elementium Signet##134004 |n
Learn the _Noble's Eternal Elementium Signet_ toy |toy Noble's Eternal Elementium Signet##134004 |goto Shattrath City/0 75.5,30.5
step
kill Eternal Kilnmaster##72896
collect 1 Eternal Kiln##104309 |use Eternal Kiln##104309 |n
Learn the _Eternal Kiln_ toy |toy Eternal Kiln##104309 |goto Timeless Isle/0 35.6,36.2
You can also find the Kilnmasters at one of these other locations:
Here [41.6,28.8]
Here [47.4,36.0]
Here [56.6,38.6]
Here [54.0,24.0]
Here [68.8,34.4]
Here [56.0,59.6]
step
kill Gar'lok##50739
collect Eternal Warrior's Sigil##86578 |use Eternal Warrior's Sigil##86578 |n
|tip This is a rare spawn and does not have a 100 percent chance to drop.
Learn the _Eternal Warrior's Sigil_ toy |toy Eternal Warrior's Sigil##86578 |goto Dread Wastes/0 39.2,41.8
You can also find Gar'lok in these locations:
Here [37.8,29.6]
Here [35.6,30.8]
step
Placeholder
step
This toy can only be obtained during the Burning Crusade Timewalking Event
talk Cupri##98685
buy 1 Ever-Shifting Mirror##129929 |use Ever-Shifting Mirror##129929
|tip This will cost 500 Timewarped Badges, these can be obtained by completing any timewalking dungeon during any timewalking event.
Learn the _Ever-Shifting Mirror_ toy |toy Ever-Shifting Mirror##129929 |goto Shattrath City/0 54.6,39.6
step
This toy is only obtainable when the Lunar Festival Event is active
|tip If you go to a horde character this item becomes "Everylasting Horde Firework".
talk Fariel Starsong##15909
buy 1 Everlasting Alliance Firework##89999 |use Everlasting Alliance Firework##89999 |n
|tip This toy costs 25 Coins of Ancestry, these can be obtained by completing quests associated with the Lunar Festival Event, check out our Lunar Festival Event guide to complete this.
Learn the _Everlasting Alliance Firework_ toy |toy Everlasting Alliance Firework##89999 |goto Moonglade/0 54.0,35.0
step
Complete the Achievement "Rocketeer: Gold" |achieve 9764
|tip This achievement can only be completed while the Darkmoon Faire is active.
Check your mail box once you have completed this achievement
collect Everlasting Darkmoon Firework##122119 |use Everlasting Darkmoon Firework##122119 |n
Learn the _Everlasting Darkmoon Firework_ toy |toy Everlasting Darkmoon Firework##122119
step
This toy is only obtainable when the Lunar Festival Event is active
|tip If you go to an Alliance character this item becomes "Everylasting Alliance Firework".
talk Fariel Starsong##15909
buy 1 Everlasting Horde Firework##90000 |use Everlasting Horde Firework##90000 |n
|tip This toy costs 25 Coins of Ancestry, these can be obtained by completing quests associated with the Lunar Festival Event, check out our Lunar Festival Event guide to complete this.
Learn the _Everlasting Horde Firework_ toy |toy Everlasting Horde Firework##90000 |goto Moonglade/0 54.0,35.0
step
talk Irisee##33657
buy 1 Exodar Banner##45020 |use Exodar Banner##45020 |n
|tip This costs 15 Champion's Seals, these can be obtained through completing dailies in the Argent Tournament.
Learn the _Exodar Banner_ toy |toy Exodar Banner##45020 |goto Icecrown/0 76.2,19.3
step
This toy is only obtainable by the Horde nad requires the completion of the quest "Farewell, Minnow"
|tip This toy requires the completion of a long quest line in Azshara a level 15+ zone, follow our Azshara leveling guide.
collect Faded Wizard Hat##53057 |use Faded Wizard Hat##53057 |n
Learn the _Faded Wizard Hat_ toy |toy Faded Wizard Hat##53057
step
Legion
step
Legion
step
kill Majordomo Staghelm##52571
collect 1 Fandral's Seed Pouch##122304 |use Fandral's Seed Pouch##122304 |n
|tip This toy can only drop for Druids.
Learn the _Fandral's Seed Pouch_ toy |toy Fandral's Seed Pouch##122304 |goto Firelands/3 50.9,72.4
step
kill Zai the Outcast##50769
collect 1 Farwater Conch##86581 |use Farwater Conch##86581 |n
|tip This is a rare spawn and does not have a 100 percent chance to drop.
Learn the _Farwater Conch_ toy |toy Farwater Conch##86581 |goto Kun-Lai Summit/0 73.8,77.4
step
kill Bramblefell##91093
|tip Bramblefell wanders around the marsh in a small area.
collect 1 Felflame Campfire##127652 |use Felflame Campfire##127652 |n
|tip This toy is roughly a 35% drop.
Learn the _Felflame Campfire_ toy |toy Felflame Campfire##127652 |goto Tanaan Jungle/0 41.0,68.8
step
This toy can either be bought on the Ah or can be made through the Engineering Profession
collect Findle's Loot-A-Rang##109167 |use Findle's Loot-A-Rang##109167 |n
Learn the _Findle's Loot-A-Rang_ toy |toy Findle's Loot-A-Rang##109167
step
Complete the Achievement "Darkmoon Racer Roadhog" |achieve 9761
|tip This achievement can only be completed while the Darkmoon Faire is active.
Check your mail box once you have completed this achievement
collect Fire-Eater's Vial##122129 |use Fire-Eater's Vial##122129 |n
Learn the _Fire-Eater's Vial_ toy |toy Fire-Eater's Vial##122129
step
This toy is only obtainable by horde by completing the quest "Fury of Frostfire"
|tip This is one of the random quests given to players through the garrison on a weekly basis.
collect Firefury Totem##119145 |use Firefury Totem##119145 |n
Learn the _Firefury Totem_ toy |toy Firefury Totem##119145
step
This toy was originaly obtained through the Trading Card Game
It can also be bought from the Black Market AH
collect Fishing Chair##33223 |use Fishing Chair##33223 |n
Learn the _Fishing Chair_ toy |toy Fishing Chair##33223
step
Legion
step
This toy can only be obtained when the Darkmoon Event is active
talk Carl Goodup##55305
|tip He pats along this road.
buy 1 Flimsy Yellow Balloon##75042 |use Flimsy Yellow Balloon##75042 |n
Learn the _Flimsy Yellow Balloon_ toy |toy Flimsy Yellow Balloon##75042 |goto Darkmoon Island 49.6,80.4
step
placeholder
step
This toy was originaly obtained through the Trading Card Game
It can also be bought from the Black Market AH
collect Foam Sword Rack##45063 |use Foam Sword Rack##45063 |n
Learn the _Foam Sword Rack_ toy |toy Foam Sword Rack##45063
step
This toy was originaly obtained through the Trading Card Game
It can also be bought from the Black Market AH
collect Fool's Gold##69227 |use Fool's Gold##69227 |n
Learn the _Fool's Gold_ toy |toy Fool's Gold##69227
step
This toy is from the 2012 Christmas Event and was lootable under the tree
|tip This toy can also be obtained by completing the daily quest "You're a Mean One..." during the Christmas Event.
collect Foot Ball##90888 |use Foot Ball##90888 |n
Learn the _Foot Ball_ toy |toy Foot Ball##90888
step
talk Sally Fizzlefury##55143
buy 1 Foxicopter Controller##88802 |use Foxicopter Controller##88802 |n
|tip This toy costs 1,000 gold.
Learn the _Foxicopter Controller_ toy |toy Foxicopter Controller##88802 |goto Valley of the Four Winds/0 16.0,83.0
buy 1 Stackable Stag##91904 |use Stackable Stag##91904 |n
|tip This toy costs 1,000 gold.
Learn the _Stackable Stag_ toy |toy Stackable Stag##91904 |goto Valley of the Four Winds/0 16.0,83.0
step
This toy can only be obtained if you are revered with the Frenzyheart Tribe |complete rep("Frenzyheart Tribe")>=Revered
talk Tanak##31911
buy 1 Ripe Disgusting Jar##44718 |use Ripe Disgusting Jar##44718 |n
collect Frenzyheart Brew##44719 |use Frenzyheart Brew##44719 |n
Learn the _Frenzyheart Brew_ toy |toy Frenzyheart Brew##44719 |goto Sholazar Basin/0 55.0,69.0
step
This toy requires Revered reputation with the Vol'jin Headhunters |complete rep("Vol'jin's Headhunters")>=Revered
|tip This is a Horde only toy.
talk Shadow Hunter Denjai##96014
buy 1 Frostwolf Grunt's Battlegear##128471 |use Frostwolf Grunt's Battlegear##128471 |n
|tip This toy costs 300 gold.
Learn the _Frostwolf Grunt's Battlegear_ toy |toy Frostwolf Grunt's Battlegear##128471
step
Placeholder
step
This toy is from the 2014 Christmas Event and was lootable under the tree
|tip This toy can also be obtained by completing the daily quest "You're a Mean One..." during the Christmas Event.
collect Fuzzy Green Lounge Cushion##116692 |use Fuzzy Green Lounge Cushion##116692 |n
Learn the _Fuzzy Green Lounge Cushion_ toy |toy Fuzzy Green Lounge Cushion##116692
step
Placeholder
step
kill Gastropod##68220+
|tip These snails can be found all throughout this path before Ji'kun.
collect Gastropod Shell##98136 |use Gastropod Shell##98136 |n
|tip This toy has a very small chance to drop from these mobs in Throne of Thunder, there are about 5 of these snails up at a time.
Learn the _Gastropod Shell_ toy |toy Gastropod Shell##98136 |goto Throne of Thunder/3 45.2,79.6
step
Complete the Achievement "Powermonger: Gold" |achieve 9785
|tip This achievement can only be completed while the Darkmoon Faire is active.
Check your mail box once you have completed this achievement
collect Gaze of the Darkmoon##122120 |use Gaze of the Darkmoon##122120 |n
Learn the _Gaze of the Darkmoon_ toy |toy Gaze of the Darkmoon##122120
step
_Enter_ the cave |goto Tanaan Jungle/0 37.3,75.9 < 10 |walk
_Go down_ the left passage |goto Tanaan Jungle/0 36.9,77.8 < 10 |only if walking
kill Captain Ironbeard##93076
collect 1 Ghostly Iron Buccaneer's Hat##127659 |use Ghostly Iron Buccaneer's Hat##127659 |n
|tip This toy is roughly a 35% drop.
Learn the _Ghostly Iron Buccaneer's Hat_ toy |toy Ghostly Iron Buccaneer's Hat##127659 |goto Tanaan Jungle 36.20,79.70
step
_Enter_ the cave |goto Talador/0 61.3,84.2 |walk
_Go to_ the main cavern |goto Talador/0 65.4,86.2 |only if walking
click Curious Deathweb Egg##227996 |goto Talador 66.50,86.94
|tip It is a purple, motionless egg sack found behind the large crystal formation towards the back of the cave.
collect 1 Giant Deathweb Egg##117569 |use Giant Deathweb Egg##117569 |n
Learn the _Giant Deathweb Egg_ toy |toy Giant Deathweb Egg##117569
step
This toy requires Exalted reputation with the Tillers |complete rep("The Tillers")>=Exalted
talk Gina Mudclaw##58706
buy 1 Gin-Ji Knife Set##90175 |use Gin-Ji Knife Set##90175 |n
|tip This toy costs 200 gold
Learn the _Gin-Ji Knife Set_ toy |toy Gin-Ji Knife Set##90175 |goto Valley of the Four Winds/0 52.2,48.6
step
Earn _Exalted_ status with the Kirin Tor Offensive faction |complete rep("Kirin Tor Offensive")==Exalted
|tip This is an Alliance only toy.
talk Lady Jaina Proudmoore##67992
accept Securing A Future##32599 |goto Isle of Thunder/0 63.2,72.2
kill Lei Shen##68397
Charge the staff |q 32599/1 |use Staff of Antonidas##94155 |future
turnin Securing A Future##32599 |goto Isle of Thunder/0 63.2,72.2 |only if itemcount(94153) > 0
collect 1 Glorious Standard of the Kirin Tor Offensive##95589 |use Glorious Standard of the Kirin Tor Offensive##95589 |n
|tip This toy is the reward for completing "Securing A Future."
Learn the _Glorious Standard of the Kirin Tor Offensive_ toy |toy Glorious Standard of the Kirin Tor Offensive##95589
confirm
step
Placeholder
step
talk Rillie Spindlenut##33650
buy 1 Gnomeregan Banner##45019 |use Gnomeregan Banner##45019 |n
|tip This costs 15 Champion's Seals, these can be obtained through completing dailies in the Argent Tournament.
Learn the _Gnomeregan Banner_ toy |toy Gnomeregan Banner##45019 |goto Icecrown/0 76.5,19.6
step
This toy was is only obtainable by Alliance during the Operation: Gnomereegan Event and is no longer available
collect Gnomeregan Pride##54651 |use Gnomeregan Pride##54651 |n
Learn the _Gnomeregan Pride_ toy |toy Gnomeregan Pride##54651
step
This toy can either be bought in the AH or made by players with the profession Engineering.
|tip Players must be at least level 500 Engineering to craft this item.
collect Gnomish Gravity Well##40727 |use Gnomish Gravity Well##40727 |n
Learn the _Gnomish Gravity Well_ toy |toy Gnomish Gravity Well##40727
step
This toy is only obtainable by crafting it through Engineering
|tip Players must be at least level 425 to craft this item.
collect Gnomish X-Ray Specs##40895 |use Gnomish X-Ray Specs##40895 |n
Learn the _Gnomish X-Ray Specs_ toy |toy Gnomish X-Ray Specs##40895
step
This toy was originaly obtained through the Trading Card Game
It can also be bought from the Black Market AH
collect Goblin Gumbo Kettle##33219 |use Goblin Gumbo Kettle##33219 |n
Learn the _Goblin Gumbo Kettle_ toy |toy Goblin Gumbo Kettle##33219
step
This toy was originaly obtained through the Trading Card Game
It can also be bought from the Black Market AH
collect Goblin Weather Machine - Prototype 01-B##35227 |use Goblin Weather Machine - Prototype 01-B##35227 |n
Learn the _Goblin Weather Machine - Prototype 01-B_ toy |toy Goblin Weather Machine - Prototype 01-B##35227
step
label "shell"
kill Gokk'lok##62767
|tip Gokk'lok is a level 91 elite clam.
accept Promises of Gold##31083 |goto Dread Wastes/0 27.4,16.2
step
talk Chief Rikkitun##62771
turnin Promises of Gold##31083 |goto Dread Wastes/0 38.6,17.3
collect Gokk'lok's Shell##88417 |use Gokk'lok's Shell##88417 |n
Learn the _Gokk'lok's Shell_ toy |toy Gokk'lok's Shell##88417 |goto Dread Wastes/0 38.6,17.3
step
kill Gibblette the Cowardly##87352
|tip This is a rare spawn and does not have a 100 percent chance to drop.
collect Goren "Log" Roller##119180 |use Goren "Log" Roller##119180 |n
Learn the _Goren "Log" Roller_ toy |toy Goren "Log" Roller##119180 |goto Frostfire Ridge/0 66.6,25.4
step
_Enter_ the cave |goto Gorgrond/0 48.6,47.2 < 15 |walk
click Warm Goren Egg##234054 |goto Gorgrond 48.94,47.31
|tip It's a glowing red egg sitting against the wall on the back side of the cave.
collect 1 Warm Goren Egg##118705 |use Cracked Goren Egg##118706 |n
|tip It takes 7 days for this egg to crack, allowing you to loot the toy.
collect 1 Goren Garb##118716 |use Goren Garb##118716 |n
Learn the _Goren Garb_ toy |toy Goren Garb##118716
step
This toy is only obtainable during the Brewfest Event
talk Keiran Donoghue##23481
buy 1 Gravil Goldbraid's Famous Sausage Hat##138900 |use Gravil Goldbraid's Famous Sausage Hat##138900 |n
Learn the _Gravil Goldbraid's Famous Sausage Hat_ toy |toy Gravil Goldbraid's Famous Sausage Hat##138900 |goto Dun Morogh/0 56.0,36.6
step
These toys are only obtainable during the Children's Week Event and cost 10 silver each
talk Craggle Wobbletop##52358
|tip He pats up and down this road.
buy 1 Green Balloon##69895 |use Green Balloon##69895 |n
Learn the _Green Balloon_ toy |toy Green Balloon##69895 |goto Stormwind City/0 57.6,73.4
buy 1 Yellow Balloon##69896 |use Yellow Balloon##69896 |n
Learn the _Yellow Balloon_ toy |toy Yellow Balloon##69896 |goto Stormwind City/0 57.6,73.4
step
This toy was originaly obtained through the Trading Card Game
It can also be bought from the Black Market AH
collect Grim Campfire##67097 |use Grim Campfire##67097 |n
Learn the _Grim Campfire_ toy |toy Grim Campfire##67097
step
This toy can only be obtained during the Cataclysm Timewalking Event
talk Kiatke##101759
buy 1 Gurboggle's Gleaming Bauble##133511 |use Gurboggle's Gleaming Bauble##133511 |n
|tip This will cost 1,500 Timewarped Badges, these can be obtained by completing any timewalking dungeon during any timewalking event.
Learn the _Gurboggle's Gleaming Bauble_ toy |toy Gurboggle's Gleaming Bauble##133511 |goto Orgrimmar/1 52.0,41.6
step
kill Great Turtle Furyshell##73161+
|tip These turtles can be found all along the western coast.
|tip This toy has about a 1 percent chance to drop from these turtles.
collect Hardened Shell##86584 |use Hardened Shell##86584 |n
Learn the _Hardened Shell_ toy |toy Hardened Shell##86584 |goto Timeless Isle/0 26.0,50.0
step
This toy requires a minimum of 75 skill points in Archaeology
|tip All Troll dig sites are marked on your map. You can find them in Eastern Kingdoms and Kalimdor.
|tip Collect Troll fragments and solve their artifacts until you attain the Haunted War Drum toy.
Eastern Zul�Mamwe Digsite |goto Northern Stranglethorn/0 62.47,70.0 |'
Western Zul�Mamwe Digsite |goto Northern Stranglethorn/0 61.17,71.51 |'
Bal�lal Ruins Digsite |goto Northern Stranglethorn/0 32.74,36.4 |'
Balia�mah Ruins Digsite |goto Northern Stranglethorn/0 60.17,55.14 |'
Western Zul�Kunda Digsite |goto Northern Stranglethorn/0 25.7,21.32 |'
Eastern Zul�Kunda Digsite |goto Northern Stranglethorn/0 28.15,21.11 |'
Ziata�jai Digsite |goto Northern Stranglethorn/0 53.56,60.53 |'
Nek�mani Wellspring Digsite |goto The Cape of Stranglethorn/0 40.49,49.33 |'
Ruins of Jubuwal |goto The Cape of Stranglethorn/0 52.7,31.23 |'
Ruins of Aboraz |goto The Cape of Stranglethorn/0 41.79,53.42 |'
Gurubashi Arena Digsite |goto The Cape of Stranglethorn/0 46.38,22.83 |'
Witherbark Digsite |goto Arathi Highlands/0 60.89,71.08 |'
Zul�Mashar Digsite |goto Eastern Plaguelands/0 65.05,12.71 |'
Shadra�Alor Digsite |goto The Hinterlands/0 34.89,69.57 |'
Altar of Zul Digsite |goto The Hinterlands/0 47.82,65.27 |'
Agol�watha Digsite |goto The Hinterlands/0 46.24,41.14 |'
Jintha�Alor Upper City Digsite |goto The Hinterlands/0 60.6,77.33 |'
Jintha�Alor Lower City Digsite |goto The Hinterlands/0 66.05,68.93 |'
Sunken Temple Digsite |goto Swamp of Sorrows/0 71.8,60.31 |'
Zul�Farrak Digsite |goto Tanaris/0 39.63,21.97 |'
Eastmoon Ruins Digsite |goto Tanaris/0 46.38,63.97 |'
Southmoon Ruins Digsite |goto Tanaris/0 40.35,71.3 |'
Broken Pillar Digsite |goto Tanaris/0 52.56,45.66 |'
Drakil�jin Ruins Digsite |goto Grizzly Hills/0 71.66,25.42 |'
Zol�Heb Digsite |goto Zul'Drak/0 77.97,36.19 |'
Zim�Rhuk Digsite |goto Zul'Drak/0 59.16,43.29 |'
Altar of Quetz�lun Digsite |goto Zul'Drak/0 73.23,58.37 |'
Altar of Sseratus Digsite |goto Zul'Drak/0 40.21,44.37 |'
Learn the _Haunted War Drum_ toy |toy Haunted War Drum##69777 |use Haunted War Drum##69777
step
This toy is only able to buy when the Darkmoon Faire event is active
talk Chester##85484
buy 1 Haunting Memento##116139 |use Haunting Memento##116139 |n
Learn the _Haunting Memento_ toy |toy Haunting Memento##116139 |goto Darkmoon Island 51.2,75.0
step
talk Benjamin Brode##88779
buy 1 Hearthstone Board##119210 |use Hearthstone Board##119210 |n
|tip This toy costs 1,000 gold.
Learn the _Hearthstone Board_ toy |toy Hearthstone Board##119210 |goto Lunarfall/0 45.1,50.3
buy 1 Winning Hand##119212 |use Winning Hand##119212 |n
|tip This toy costs 100 gold.
Learn the _Winning Hand_ toy |toy Winning Hand##119212 |goto Lunarfall/0 45.1,50.3
step
kill Major Nanners##50840
collect Helpful Wikky's Whistle##86594 |use Helpful Wikky's Whistle##86594 |n
|tip This is a rare spawn and does not have a 100 percent chance to drop.
Learn the _Helpful Wikky's Whistle_ toy |toy Helpful Wikky's Whistle##86594 |goto Vale of Eternal Blossoms/0 30.8,91.4
step
placeholder
step
Legion
step
This toy requires a minimum of 75 skill points in Archaeology
|tip All Night Elf dig sites are marked on your map. You can find them in Eastern Kingdoms and Kalimdor.
|tip Collect Night Elf fragments and solve their artifacts until you attain the Highborne Soul Mirror toy.
Twilight Grove Digsite |goto Duskwood/0 47.1,42.86 |'
Quel�Lithien Lodge Digsite |goto Eastern Plaguelands/0 47.24,12.06 |'
Ruins of Arkkoran |goto Azshara/0 70.94,32.52 |'
Ruins of Eldarath |goto Azshara/0 32.74,51.48 |'
Nazj�vel Digsite |goto Darkshore/0 32.31,84.0 |'
Nightmare Scar Digsite |goto Southern Barrens/0 47.96,37.69 |'
Sargeron Digsite |goto Desolace/0 75.1,21.76 |'
Slitherblade Shore Digsite |goto Desolace/0 30.3,28.86 |'
Ethel Rethor Digsite |goto Desolace/0 38.91,25.42 |'
Mannoroc Coven Digsite |goto Desolace/0 51.7,76.9 |'
Darkmist Digsite |goto Feralas/0 64.91,58.8 |'
Ravenwind Digsite |goto Feralas/0 39.63,11.63 |'
North Isildien Digsite |goto Feralas/0 60.89,56.22 |'
South Isildien Digsite |goto Feralas/0 59.31,66.34 |'
Dire Maul Digsite |goto Feralas/0 59.16,47.39 |'
Broken Commons Digsite |goto Feralas/0 62.03,30.37 |'
Solarsal Digsite |goto Feralas/0 27.43,52.56 |'
Oneiros Digsite |goto Feralas/0 52.56,17.23 |'
Constellas Digsite |goto Felwood/0 37.62,65.48 |'
Ironwood Digsite |goto Felwood/0 49.54,29.51 |'
Jaedenar Digsite |goto Felwood/0 38.48,59.23 |'
Morlos�Aran Digsite |goto Felwood/0 56.0,84.44 |'
Southwind Village Digsite |goto Silithus/0 64.19,46.96 |'
Shrine of Goldrinn Digsite |goto Mount Hyjal/0 28.86,30.59 |'
Sanctuary of Malorne Digsite |goto Mount Hyjal/0 26.13,61.6 |'
Grove of Aessina Digsite |goto Mount Hyjal/0 18.81,39.42 |'
Scorched Plain Digsite |goto Mount Hyjal/0 55.43,54.28 |'
Ruins of Lar�donir Digsite |goto Mount Hyjal/0 49.25,19.39 |'
Frostwhisper Gorge Digsite |goto Winterspring/0 60.89,84.44 |'
Lake Kel�Theril Digsite |goto Winterspring/0 50.26,55.79 |'
Owl Wing Thicket Digsite |goto Winterspring/0 64.33,76.47 |'
Forest Song Digsite |goto Ashenvale/0 84.0,44.37 |'
Ruins of Ordil�Aran |goto Ashenvale/0 28.58,29.29 |'
Ruins of Stardust |goto Ashenvale/0 33.46,66.99 |'
Zoram Strand Digsite |goto Ashenvale/0 15.08,19.17 |'
Stonetalon Peak |goto Stonetalon Mountains/0 41.64,21.76 |'
Ruins of Eldre�thar |goto Stonetalon Mountains/0 48.11,73.88 |'
Riplash Ruins Digsite |goto Borean Tundra/0 49.97,90.25 |'
Moonrest Gardens Digsite |goto Dragonblight/0 21.97,59.23 |'
Violet Stand Digsite |goto Crystalsong Forest/0 15.36,42.43 |'
Ruins of Shandaral Digsite |goto Crystalsong Forest/0 80.99,60.96 |'
Learn the _Highborne Soul Mirror_ toy |toy Highborne Soul Mirror##64358 |use Highborne Soul Mirror##64358
step
To get this toy you must complete the achievement "Pub Crawl"
|tip Check out our achievement guides to complete this.
Check your mail box once this acheivement is completed
collect Honorary Brewmaster Keg##87528 |use Honorary Brewmaster Keg##87528 |n
Learn the _Honorary Brewmaster Keg_ toy |toy Honorary Brewmaster Keg##87528
step
placeholder
step
This toy can only be obtained during the Wrath of the Lich King Timewalking Event
talk Auzin##98690
buy 1 Hourglass of Eternity##129952 |use Hourglass of Eternity##129952 |n
tip This will cost 2,000 Timewarped Badges, these can be obtained by completing any timewalking dungeon during any timewalking event.
Learn the _Hourglass of Eternity_ toy |toy Hourglass of Eternity##129952 |goto Dalaran/1 50.6,46.6
step
kill Ik-Ik the Nimble##50836
collect Hozen Beach Ball##86593 |use Hozen Beach Ball##86593 |n
|tip This is a rare spawn and does not have a 100 percent chance to drop.
Learn the _Hozen Beach Ball_ toy |toy Hozen Beach Ball##86593 |goto Dread Wastes/0 55.4,63.4
step
talk Smokey Sootassle##59597
accept Traffic Issues##30616 |goto 64.88,60.49
step
kill Ruqin Outrider##59538
kill Ruqin Elder##59826
kill Ruqin Infantry##59790
Deal with the Ruqin Yaungols |q 30616/1 |goto Kun-Lai Summit/0 62.8,67.4
step
talk Smokey Sootassle##59597
turnin Traffic Issues##30616 |goto 64.88,60.49
step
talk Brother Lintpocket##59701
accept The Burlap Trail: To Burlap Waystation##30592 |goto 58.09,61.46
step
map Kun-Lai Summit/0
path follow smart; loop off; ants curved; dist 20
path	58.5,64.8	56.9,64.7	55.9,65.7
path	54.8,65.8	54.2,67.1	53.0,66.6
Escort the Grummie caravan |q 30592/1
|tip Follow the path, killing any attackers that threaten the caravan.
step
talk Brother Trailscenter##59703
turnin The Burlap Trail: To Burlap Waystation##30592 |goto Kun-Lai Summit/0 51.7,67.8
step
talk Brother Trailscenter##59703
accept The Rabbitsfoot##30602 |goto 51.66,67.83
step
talk Brother Rabbitsfoot##59806
Rescue Rabbitsfoot |q 30602/1 |goto Kun-Lai Summit/0 49.1,70.4
accept The Broketooth Ravage##30603 |goto 49.10,70.44
step
kill 1 Mo Mo##59805
collect Rabbitsfoot's Luckydo##81137 |n
Retrieve Rabbitsfoot's Luckydo |q 30603/1 |goto Kun-Lai Summit/0 48.0,73.3
step
talk Brother Rabbitsfoot##59452
turnin The Rabbitsfoot##30602 |goto 51.97,67.22
turnin The Broketooth Ravage##30603 |goto 51.97,67.22
accept A Monkey Idol##30599 |goto 51.97,67.22
step
kill Hateful Ko Ko##59430
collect Corpse of Ko Ko##80429 |n
click Ko Ko's Altar##211275
|tip It's a little blade on the stone.
Destroy Ko Ko's Altar |q 30599/2 |goto Kun-Lai Summit/0 52.3,71.4
step
_Enter_ the cave |goto Kun-Lai Summit/0 52.8,71.4
kill Dak Dak##59424
|tip Dak Dak patrols up and down the ledge.
collect Corpse of Dak Dak##80428 |goto Kun-Lai Summit/11 39.1,40.1 |n
click Dak Dak's Altar##210931
Destroy Dak Dak's Altar |q 30599/1 |goto Kun-Lai Summit/12 49.8,39.5
step
kill Tak Tak##59958
collect Corpse of Tak Tak##80430 |n
click Tak Tak's Altar##211276
|tip It's a little blade on the stone.
Destroy Tak Tak's Altar |q 30599/3 |goto Kun-Lai Summit/0 56.8,71.0
step
talk Brother Rabbitsfoot##59452
turnin A Monkey Idol##30599 |goto 51.97,67.22
Learn the Hozen Idol toy |toy Hozen Idol##88385 |use Hozen Idol##88385
step
kill Hypnocroak##79524
collect Hypnosis Goggles##113631 |use Hypnosis Goggles##113631 |n
Learn the _Hypnosis Goggles_ toy |toy Hypnosis Goggles##113631 |goto Shadowmoon Valley D/0 37.6,49.0
step
This toy was originaly obtained through the Trading Card Game
It can also be bought from the Black Market AH
collect Imp in a Ball##32542 |use Imp in a Ball##32542 |n
Learn the _Imp in a Ball_ toy |toy Imp in a Ball##32542
step
You must first upgrade you garrison to level 3 before Tiffy will be available |only if garrisonlvl(1) or garrisonlvl(2)
talk Tiffy Trapspring##94512
buy 1 Indestructible Bone##127707 |use Indestructible Bone##127707 |n
Learn the _Indestructible Bone_ toy |toy Indestructible Bone##127707 |goto Lunarfall/0 29.1,38.6
|tip This toy costs 50 Pet Charms.
buy 1 Spirit Wand##127695 |use Spirit Wand##127695 |n
Learn the _Spirit Wand_ toy |toy Spirit Wand##127695 |goto Lunarfall/0 29.1,38.6
|tip This toy costs 100 Pet Charms.
buy 1 Magic Pet Mirror##127696 |use Magic Pet Mirror##127696 |n
Learn the _Magic Pet Mirror_ toy |toy Magic Pet Mirror##127696 |goto Lunarfall/0 29.1,38.6
|tip This toy costs 500 Pet Charms.
step
This toy was originaly obtained through the Trading Card Game
It can also be bought from the Black Market AH
collect Instant Statue Pedestal##54212 |use Instant Statue Pedestal##54212 |n
Learn the _Instant Statue Pedestal_ toy |toy Instant Statue Pedestal##54212
step
talk Rork Sharpchin##29744
buy 1 Iron Boot Flask##43499 |use Iron Boot Flask##43499 |n
|tip This toy costs 10 Relics of Ulduar
Learn the _Iron Boot Flask_ toy |toy Iron Boot Flask##43499 |goto The Storm Peaks/0 28.8,74.0
step
kill Captain Ironbeard##79725
|tip This is a rare spawn.
collect Iron Buccaneer's Hat##118244 |use Iron Buccaneer's Hat##118244 |n
Learn the _Iron Buccaneer's Hat_ toy |toy Iron Buccaneer's Hat##118244 |goto Nagrand D/0 34.6,77.0
step
talk Derrick Brindlebeard##33310
buy 1 Ironforge Banner##45018 |use Ironforge Banner##45018 |n
|tip This costs 15 Champion's Seals, these can be obtained through completing dailies in the Argent Tournament.
Learn the _Ironforge Banner_ toy |toy Ironforge Banner##45018 |goto Icecrown/0 76.5,19.4
step
click Jewel of Hellfire##240580 |quest 38334 |goto Tanaan Jungle/0 28.7,23.3 |future
|tip It looks like a red crystal lodged into the skull of this skeleton laying on the ground in the middle of a bunch of trees on the beach.
collect Jewel of Hellfire##127668 |use Jewel of Hellfire##127668 |n
Learn the _Jewel of Hellfire_ toy |toy Jewel of Hellfire##127668 |goto Tanaan Jungle/0 28.7,23.3
step
Legion
step
talk Sya Zhong##60178
|tip She is inside the building.
accept Holed Up##30682 |goto Kun-Lai Summit/0 42.9,88.3
confirm
step
talk Ya Firebough##60189
|tip He is inside the building.
Tell him: "_...That's enough. Let's go._" |q 30682/2 |goto Kun-Lai Summit/0 41.0,87.0
step
talk Old Lady Fung##60190
|tip She is inside the building.
Tell her: "_Yes... why don't you 'escort' me out of here._" |q 30682/3 |goto Kun-Lai Summit/0 42.8,85.7
step
talk Jin Warmkeg##60187
|tip He is inside the building.
Tell him: "_Let's get out of here._" |q 30682/1 |goto Kun-Lai Summit/0 43.9,86.2
step
talk Shado-Master Chong##60161
|tip He is inside the building. You will need to click the doors to open them.
turnin Holed Up##30682 |goto Kun-Lai Summit/0 44.5,89.9
Learn the Jin Warmkeg's Brew toy |toy Jin Warmkeg's Brew##88579 |use Jin Warmkeg's Brew##88579 |goto Kun-Lai Summit/0 44.5,89.9
step
Legion
step
This toy requires a minimum of 75 skill points in Archaeology
|tip All Night Elf dig sites are marked on your map. You can find them in Eastern Kingdoms and Kalimdor.
|tip Collect Night Elf fragments and solve their artifacts until you attain the Kaldorei Wind Chimes toy.
Twilight Grove Digsite |goto Duskwood/0 47.1,42.86 |'
Quel�Lithien Lodge Digsite |goto Eastern Plaguelands/0 47.24,12.06 |'
Ruins of Arkkoran |goto Azshara/0 70.94,32.52 |'
Ruins of Eldarath |goto Azshara/0 32.74,51.48 |'
Nazj�vel Digsite |goto Darkshore/0 32.31,84.0 |'
Nightmare Scar Digsite |goto Southern Barrens/0 47.96,37.69 |'
Sargeron Digsite |goto Desolace/0 75.1,21.76 |'
Slitherblade Shore Digsite |goto Desolace/0 30.3,28.86 |'
Ethel Rethor Digsite |goto Desolace/0 38.91,25.42 |'
Mannoroc Coven Digsite |goto Desolace/0 51.7,76.9 |'
Darkmist Digsite |goto Feralas/0 64.91,58.8 |'
Ravenwind Digsite |goto Feralas/0 39.63,11.63 |'
North Isildien Digsite |goto Feralas/0 60.89,56.22 |'
South Isildien Digsite |goto Feralas/0 59.31,66.34 |'
Dire Maul Digsite |goto Feralas/0 59.16,47.39 |'
Broken Commons Digsite |goto Feralas/0 62.03,30.37 |'
Solarsal Digsite |goto Feralas/0 27.43,52.56 |'
Oneiros Digsite |goto Feralas/0 52.56,17.23 |'
Constellas Digsite |goto Felwood/0 37.62,65.48 |'
Ironwood Digsite |goto Felwood/0 49.54,29.51 |'
Jaedenar Digsite |goto Felwood/0 38.48,59.23 |'
Morlos�Aran Digsite |goto Felwood/0 56.0,84.44 |'
Southwind Village Digsite |goto Silithus/0 64.19,46.96 |'
Shrine of Goldrinn Digsite |goto Mount Hyjal/0 28.86,30.59 |'
Sanctuary of Malorne Digsite |goto Mount Hyjal/0 26.13,61.6 |'
Grove of Aessina Digsite |goto Mount Hyjal/0 18.81,39.42 |'
Scorched Plain Digsite |goto Mount Hyjal/0 55.43,54.28 |'
Ruins of Lar�donir Digsite |goto Mount Hyjal/0 49.25,19.39 |'
Frostwhisper Gorge Digsite |goto Winterspring/0 60.89,84.44 |'
Lake Kel�Theril Digsite |goto Winterspring/0 50.26,55.79 |'
Owl Wing Thicket Digsite |goto Winterspring/0 64.33,76.47 |'
Forest Song Digsite |goto Ashenvale/0 84.0,44.37 |'
Ruins of Ordil�Aran |goto Ashenvale/0 28.58,29.29 |'
Ruins of Stardust |goto Ashenvale/0 33.46,66.99 |'
Zoram Strand Digsite |goto Ashenvale/0 15.08,19.17 |'
Stonetalon Peak |goto Stonetalon Mountains/0 41.64,21.76 |'
Ruins of Eldre�thar |goto Stonetalon Mountains/0 48.11,73.88 |'
Riplash Ruins Digsite |goto Borean Tundra/0 49.97,90.25 |'
Moonrest Gardens Digsite |goto Dragonblight/0 21.97,59.23 |'
Violet Stand Digsite |goto Crystalsong Forest/0 15.36,42.43 |'
Ruins of Shandaral Digsite |goto Crystalsong Forest/0 80.99,60.96 |'
Learn the _Kaldorei Wind Chimes_ toy |toy Kaldorei Wind Chimes##64383 |use Kaldorei Wind Chimes##64383
step
talk Tex Vortacoil##36375
buy 1 Kalytha's Haunted Locket##68806 |use Kalytha's Haunted Locket##68806 |n
|tip This toy costs 5,000 gold.
Learn the _Kalytha's Haunted Locket_ toy |toy Kalytha's Haunted Locket##68806 |goto Azshara/0 25.6,38.0
step
kill Kang the Soul Thief##50349
collect Kang's Bindstone##86571 |use Kang's Bindstone##86571 |n
|tip This is a rare spawn and does not have a 100 percent chance to drop.
Learn the _Kang's Bindstone_ toy |toy Kang's Bindstone##86571 |goto Vale of Eternal Blossoms/0 15.0,35.6
step
Earn _Revered_ status with the Hand of the Prophet faction |complete rep("Hand of the Prophet")>=Revered
talk Vindicator Krethos ##90974
|tip He is inside the bunker.
buy 1 Karabor Councilor's Attire##128462 |use Karabor Councilor's Attire##128462 |n
|tip This toy costs 300 gold, modified by reputation status.
Learn the _Karabor Councilor's Attire_ toy |toy Karabor Councilor's Attire##128462 |goto Tanaan Jungle/0 58.4,60.5
step
talk Ken-Ken##56115
accept What's Eating Zhu's Watch?##30079 |goto Krasarang Wilds/0 76.21,7.06
step
talk Despondent Warden of Zhu##57457
Speak with Despondent Warden of Zhu |q 30079/1 |goto Krasarang Wilds/0 76.5,8.2
step
talk Sunni##57830
Speak with Sunni |q 30079/2 |goto Krasarang Wilds/0 77.5,8.5
step
talk Yun##57825
Speak with Yun |q 30079/3 |goto Krasarang Wilds/0 75.5,9.4
step
talk Mei Barrelbottom##57744
Speak with Mei |q 30079/4 |goto Krasarang Wilds/0 75.8,7.6
accept Finding Yi-Mo##30080 |goto Krasarang Wilds/0 75.84,7.60
step
talk Ken-Ken##56115
turnin What's Eating Zhu's Watch?##30079 |goto Krasarang Wilds/0 76.21,7.06
step
talk Yi-Mo Longbrow##58376
Find Yi-Mo |q 30080/1 |goto Krasarang Wilds/0 81.3,6.9
turnin Finding Yi-Mo##30080 |goto Krasarang Wilds/0 81.3,6.9
accept Cheer Up, Yi-Mo##30082 |goto Krasarang Wilds/0 81.3,6.9
step
talk Yi-Mo Longbrow##58376
Tell him: "_Please, Yi-Mo: your aunt's worried wick about you._"
Then, tell him: "_I don't have time for this. Move your ass or I'll move it for you._"
clicknpc Yi-Mo Longbrow##57310 |tip Keep clicking him to roll him towards Zhu's Watch
kill Thunderbird##58111 |tip These will randomly attack you while you return Yi-Mo.
Bring Yi-Mo to Zhu's Watch |q 30082/1 |goto Krasarang Wilds/0 76.7,7.7
step
talk Mei Barrelbottom##57744
turnin Cheer Up, Yi-Mo##30082 |goto Krasarang Wilds/0 75.84,7.60
step
talk Ken-Ken##56115
accept Materia Medica##30081 |goto 76.22,7.06
step
kill 1 Weeping Horror##57649
Gather Salty Cores |q 30081/1 |goto Krasarang Wilds/0 75.4,10.8
click Slick Mudfish##210186
|tip These are tiny green or purple fish on the ground around sha-touched areas. They are difficult to see, so look closely
Gather Slick Mudfish |q 30081/2 |goto Krasarang Wilds/0 75.4,10.8
click Rain-Slick Honeycomb##210188
|tip These are found attached to stumps and trees in the area.
Gather Chunks of Honeycomb |q 30081/3 |goto Krasarang Wilds/0 73.6,9.7
step
talk Ken-Ken##56115
turnin Materia Medica##30081 |goto Krasarang Wilds/0 76.22,7.06
accept Why So Serious?##30088 |goto Krasarang Wilds/0 76.22,7.06
step
kill Krasari Stalker##58221
collect Huge Panther Fang##78941 |n
Gather Huge Panther Fangs |q 30088/1 |goto Krasarang Wilds/0 71.6,16.4
step
_Enter_ the cave |goto Valley of the Four Winds/0 77.1,57.3 |walk
_Go up_ the ramp |goto Valley of the Four Winds/0 75.9,56.3 |only if walking
click Jar of Pigment##210228
Gather a Jar of Pigment |q 30088/2 |goto Valley of the Four Winds/0 73.9,56.4
step
talk Ken-Ken##56115
turnin Why So Serious?##30088 |goto Krasarang Wilds/0 76.22,7.06
accept Apply Directly to the Forehead##30089 |goto Krasarang Wilds/0 76.22,7.06
step
clicknpc Despondent Warden of Zhu##57457
use Ken-Ken's Mask##79021
kill Manifestation of Despair##58312
Cure 8 Despondent Wardens of Zhu |q 30089/1 |goto Krasarang Wilds/0 76.4,8.6
step
talk Ken-Ken##56115
turnin Apply Directly to the Forehead##30089 |goto Krasarang Wilds/0 76.22,7.06
accept Zhu's Despair##30090 |goto Krasarang Wilds/0 76.22,7.06
step
kill Essence of Despair##58409
Destroy 8 Essences of Despair |q 30090/1 |goto Krasarang Wilds/0 76.5,8.4
clicknpc Yi-Mo Longbrow##58410
use Ken-Ken's Mask##79057
kill Quintessence of Despair##58360
Cure Yi-Mo |q 30090/2 |goto Krasarang Wilds/0 76.5,8.8
step
talk Ken-Ken##56115
turnin Zhu's Despair##30090 |goto Krasarang Wilds/0 76.22,7.06
Learn the Ken-Ken's Mask toy |toy Ken-Ken's Mask##88580 |use Ken-Ken's Mask##88580
step
placeholder
step
Enter the cave |goto Talador/0 61.0,83.9 < 5 |walk
Follow the path up |goto 64.1,86.0 |walk
kill Klikixx##78872
collect Klikixx's Webspinner##116125 |use Klikixx's Webspinner##116125 |n
Learn the _Klikixx's Webspinner_ toy |toy Klikixx's Webspinner##116125 |goto 66.8,85.4
step
This toy can be found in the dungeon "Scholomance" on heroic difficulty
kill Doctor Theolen Krastinov##59369
|tip This is a rare spawn.
collect Krastinov's Bag of Horrors##88566 |use Krastinov's Bag of Horrors##88566 |n
Learn the _Krastinov's Bag of Horrors_ toy |toy Krastinov's Bag of Horrors##88566 |goto Scholomance/2 36.6,24.4
step
Legion?
step
talk Mayor Bramblestaff##59073 |goto Kun-Lai Summit/0 72.2,91.8
accept Call Out Their Leader##30457 |goto Kun-Lai Summit/0 72.2,91.8
step
kill Bataari Yaungol##59147
kill Bataari Flamecaller##59148
Slay 10 Bataari tribe members |q 30457/1 |goto Kun-Lai Summit/0 69.8,90.5
step
kill Bataari Fire-Warrior##59083
Defeat the Bataari Fire-Warrior |q 30457/2 |goto Kun-Lai Summit/0 68.2,88.6
step
talk Mayor Bramblestaff##59073 |goto Kun-Lai Summit/0 72.2,91.8
turnin Call Out Their Leader##30457 |goto Kun-Lai Summit/0 72.2,91.8
step
talk Shado-Master Chong##60161
accept Turnabout##30670 |goto Kun-Lai Summit/0 44.48,89.92
step
kill 1 Blind Rage##61224
collect Blind Rage Essence##81713 |n
Destroy 5 Blind Rage Essences |q 30670/1 |goto Kun-Lai Summit/0 43.0,87.1
step
talk Shado-Master Chong##60161
turnin Turnabout##30670 |goto Kun-Lai Summit/0 44.48,89.92
accept Unmasking the Yaungol##30690 |goto Kun-Lai Summit/0 44.48,89.92
step
use Blinding Rage Trap##81741
Pull Kobai into the trap |q 30690/1 |goto Kun-Lai Summit/0 45.2,86.2
|tip Click your special action button to spawn the Malevolent Fury.
kill Malevolent Fury##61333
Slay the Malevolent Fury |q 30690/2 |goto Kun-Lai Summit/0 45.2,86.2
step
talk Shado-Master Chong##60161
turnin Unmasking the Yaungol##30690 |goto Kun-Lai Summit/0 44.48,89.92
accept To Winter's Blossom##30699 |goto Kun-Lai Summit/0 44.48,89.92
step
talk Lin Silentstrike##61816
turnin To Winter's Blossom##30699 |goto Kun-Lai Summit/0 35.0,59.4
accept Honor, Even in Death##30723 |goto Kun-Lai Summit/0 35.0,59.4
step
talk Ban Bearheart##61819
accept A Line Unbroken##30715 |goto Kun-Lai Summit/0 35.12,59.66
step
clicknpc Shado-Master Zhiyao##61808
Release Shado-Master Zhiyao from his oath |q 30715/1 |goto Kun-Lai Summit/0 30.4,60.0
step
clicknpc Liu of the Thousand Blows##61806
Release Liu of the Thousand Blows from his oath |q 30715/2 |goto Kun-Lai Summit/0 30.2,62.5
step
clicknpc Shiya Boldblade##61810
Release Shiya Boldblade from his oath |q 30715/3 |goto Kun-Lai Summit/0 30.0,64.4
step
kill 1 Kun-Lai Corpsepicker##61843
Slay 12 Kun-Lai Corpsepickers |q 30723/1 |goto Kun-Lai Summit/0 31.1,61.8
step
talk Ban Bearheart##61819
turnin A Line Unbroken##30715 |goto Kun-Lai Summit/0 35.12,59.66
step
talk Lin Silentstrike##61816
turnin Honor, Even in Death##30723 |goto Kun-Lai Summit/0 35.0,59.4
step
talk Lin Silentstrike##61816
accept To the Wall!##30724 |goto Kun-Lai Summit/0 34.95,59.30
step
talk Kite Master Len##61512
Tell him: "_I need a kite to get up to the wall!_" |q 30724/1 |goto Kun-Lai Summit/0 34.5,59.1
step
talk Suna Silentstrike##61454
turnin To the Wall!##30724 |goto Kun-Lai Summit/0 29.30,62.29
accept Off the Wall!##30750 |goto Kun-Lai Summit/0 29.30,62.29
step
talk Lao-Chin the Iron Belly##61820
accept A Terrible Sacrifice##30751 |goto Kun-Lai Summit/0 29.24,62.30
step
click Yaungol Oil Barrel##212003
collect Yaungol Oil Barrel##82799 |n
Gather 6 Yaungol Oil Barrels |q 30751/1  |goto Kun-Lai Summit/0 27.5,60.6
step
kill 1 Osul Veteran Archer##61886
kill 1 Osul Fire-Warrior##63576
Kill 12 Yaungol on the wall |q 30750/1 |goto Kun-Lai Summit/0 27.5,60.6
step
talk Lao-Chin the Iron Belly##61820
turnin A Terrible Sacrifice##30751 |goto Kun-Lai Summit/0 29.24,62.30
step
talk Suna Silentstrike##61454
turnin Off the Wall!##30750 |goto Kun-Lai Summit/0 29.30,62.29
accept Lao-Chin's Gambit##30994 |goto Kun-Lai Summit/0 29.30,62.29
step
talk Suna Silentstrike##61454
Tell her: "_Alright, I'm ready to get back to the front._" |q 30994/1 |goto Kun-Lai Summit/0 29.30,62.29
step
talk Lao-Chin the Iron Belly##61820
turnin Lao-Chin's Gambit##30994 |goto Kun-Lai Summit/0 31.8,60.1
accept Do a Barrel Roll!##30991 |goto Kun-Lai Summit/0 31.8,60.1
step
clicknpc Keg Bomb##60553 |goto Kun-Lai Summit/0 32.1,60.6
|tip Click a keg bomb to jump on. Then, roll it down the hill into your enemies.
|tip Press "1" to ignite the barrel. It will explode within a few seconds.
Slay 50 Osul Invaders |q 30991/1
Slay 4 Osul Treelaunchers |q 30991/2
step
talk Lao-Chin the Iron Belly##61820
turnin Do a Barrel Roll!##30991 |goto Kun-Lai Summit/0 31.8,60.1
Learn the Lao Chin's Last Mug toy |toy Lao Chin's Last Mug##88531 |use Lao Chin's Last Mug##88531
step
Legion
step
Legion
step
Legion
step
Legion
step
Legion
step
placeholder
step
Legion
step
You must build a Lunarfall Inn to get the quest associated with this toy |only if not hasbuilding(34) or not hasbuilding(35) or not hasbuilding(36)
Check your inn each day for the quest "The Soulcutter" offered by Lilian Voss |only if hasbuilding(34) or hasbuilding(35) or hasbuilding(36)
talk Lilian Voss##87996 |only if hasbuilding(34) or hasbuilding(35) or hasbuilding(36)
accept The Soulcutter##37156 |goto Lunarfall/0 45.1,50.3 |only if hasbuilding(34) or hasbuilding(35) or hasbuilding(36)
Collect the Soulsever Blade |q 37156/1 |goto Auchindoun/1 53.3,63.4 |only if hasbuilding(34) or hasbuilding(35) or hasbuilding(36)
kill Teron'gor##77734 |q 37156/2 |goto Auchindoun/1 49.6,33.5 |only if hasbuilding(34) or hasbuilding(35) or hasbuilding(36)
|tip These objectives are completed in the Auchindoun on Heroic difficulty. |only if hasbuilding(34) or hasbuilding(35) or hasbuilding(36)
turnin The Soulcutter##37156 |goto Lunarfall/0 45.1,50.3 |only if hasbuilding(34) or hasbuilding(35) or hasbuilding(36)
Learn the _Lilian's Warning Sign_ toy |toy Lilian's Warning Sign##119039 |use Lilian's Warning Sign##119039
step
This toy can only be obtained during the Halloween Event
talk Dorothy##53728
buy 1 Little Wickerman##70722 |use Little Wickerman##70722 |n
|tip This toy costs 150 Tricky Treats, these can be obtained by completing the Halloween dailies and completing the Halloween Dungeon.
Learn the _Little Wickerman_ toy |toy Little Wickerman##70722 |goto Elwynn Forest/0 31.8,50.0
step
You can either buy this from the AH or if you are a rogue with a high level of pickpocketing you can pickpocket the Onslaught mobs in Dragonblight
collect Loaded Gnomish Dice##63269 |use Loaded Gnomish Dice##63269 |n
Learn the _Loaded Gnomish Dice_ toy |toy Loaded Gnomish Dicee##63269
step
This toy can be either made if you have the profession Engineering or can be bought from the AH
collect Loot-A-Rang##60854 |use Loot-A-Rang##60854 |n
Learn the _Loot-A-Rang_ toy |toy Loot-A-Rang##60854
step
This toy can be either made if you have the profession Engineering or can be bought from the AH
collect MOLL-E##40768 |use MOLL-E##40768 |n
Learn the _MOLL-E_ toy |toy MOLL-E##40768
step
This toy was originaly obtained through the Trading Card Game
It can also be bought from the Black Market AH
collect Magical Ogre Idol##72159 |use Magical Ogre Idol##72159 |n
Learn the _Magical Ogre Idol_ toy |toy Magical Ogre Idol##72159
step
Legion
step
You must build a Lunarfall Inn to get the quest associated with this toy |only if not hasbuilding(34) or not hasbuilding(35) or not hasbuilding(36)
Check your inn each day for the quest "For The Children!" offered by Millhouse Manastorm |only if hasbuilding(34) or hasbuilding(35) or hasbuilding(36)
talk Millhouse Manastorm##88009 |only if hasbuilding(34) or hasbuilding(35) or hasbuilding(36)
accept For The Children!##37179 |goto Lunarfall/0 45.1,50.3 |only if hasbuilding(34) or hasbuilding(35) or hasbuilding(36)
Collect the Miniature Iron Star |q 37179/1 |goto Upper Blackrock Spire 2/3 34.5,54.5 |only if hasbuilding(34) or hasbuilding(35) or hasbuilding(36)
kill Warlord Zaela##77120 |q 37179/2 |goto Upper Blackrock Spire 2/3 14.4,47.7 |only if hasbuilding(34) or hasbuilding(35) or hasbuilding(36)
|tip These objectives are completed in the Upper Blackrock Spire on Heroic difficulty. |only if hasbuilding(34) or hasbuilding(35) or hasbuilding(36)
turnin For The Children!##37179 |goto Lunarfall/0 45.1,50.3 |only if hasbuilding(34) or hasbuilding(35) or hasbuilding(36)
Learn the _Manastorm's Duplicator_ toy |toy Manastorm's Duplicator##118938 |use Manastorm's Duplicator##118938
step
This toy can only be obtained during the Burning Crusade Timewalking Event
talk Cupri##98685
buy 1 Mark of the Ashtongue##129926 |use Mark of the Ashtongue##129926 |n
|tip This will cost 1,250 Timewarped Badges, these can be obtained by completing any timewalking dungeon during any timewalking event.
Learn the _Mark of the Ashtongue_ toy |toy Mark of the Ashtongue##129926 |goto Shattrath City/0 54.6,39.6
step
This toy was only available to Horde by completing the achievement "Theramore's Fall"
|tip This toy is no longer obtainable, as the event for this achievement is no longer in the game.
|tip If you have completed this achievement you may go back to this npc to buy this toy at any time.
talk Zidormi##63546
buy 1 Mini Mana Bomb##89205 |use Mini Mana Bomb##89205 |n
Learn the _Mini Mana Bomb_ toy |toy Mini Mana Bomb##89205 |goto Dustwallow Marsh/0 55.9,49.6
step
This toy is from the 2010 Christmas Event and was lootable under the tree
|tip This toy can also be obtained by completing the daily quest "You're a Mean One..." during the Christmas Event.
collect MiniZep Controller##46709 |use MiniZep Controller##46709 |n
Learn the _MiniZep Controller_ toy |toy MiniZep Controller##46709
step
Legion
step
This toy is only available during the Darkmoon Faire Event
kill Moonfang##71992
collect Moonfang Shroud##101571 |use Moonfang Shroud##101571 |n
|tip This is a rare spawn and does not have a 100 percent chance to drop.
Learn the _Moonfang Shroud_ toy |toy Moonfang Shroud##101571 |goto Darkmoon Island 39.8,44.4
step
Legion
step
You must build a Lunarfall Inn to get the quest associated with this toy |only if not hasbuilding(34) or not hasbuilding(35) or not hasbuilding(36)
Check your inn each day for the quest "Feeling A Bit Morose" offered by Moroes |only if hasbuilding(34) or hasbuilding(35) or hasbuilding(36)
talk Moroes##87994 |only if hasbuilding(34) or hasbuilding(35) or hasbuilding(36)
accept Feeling A Bit Morose##37157 |goto Lunarfall/0 45.1,50.3 |only if hasbuilding(34) or hasbuilding(35) or hasbuilding(36)
Collect the Horribly Acidic Solution |q 37157/1 |goto Iron Docks/1 50.4,52.4 |only if hasbuilding(34) or hasbuilding(35) or hasbuilding(36)
kill Skulloc##83612 |q 37157/2 |goto Iron Docks/1 68.4,43.6 |only if hasbuilding(34) or hasbuilding(35) or hasbuilding(36)
|tip These objectives are completed in the Upper Blackrock Spire on Heroic difficulty. |only if hasbuilding(34) or hasbuilding(35) or hasbuilding(36)
turnin Feeling A Bit Morose##37157 |goto Lunarfall/0 45.1,50.3 |only if hasbuilding(34) or hasbuilding(35) or hasbuilding(36)
Learn the _Moroes' Famous Polish_ toy |toy Moroes' Famous Polish##119092 |use Moroes' Famous Polish##119092
step
kill Echo of Murmur##77828
collect Mournful Moan of Murmur##113670 |use Mournful Moan of Murmur##113670 |n
|tip This is a rare spawn and does not have a 100 percent chance to drop.
Learn the _Mournful Moan of Murmur_ toy |toy Mournful Moan of Murmur##113670 |goto Talador/0 34.1,57.2
step
kill Yorik Sharpeye##50336
collect Mr. Smite's Brass Compass##86568 |use Mr. Smite's Brass Compass##86568 |n
|tip This is a rare spawn and does not have a 100 percent chance to drop.
Learn the _Mr. Smite's Brass Compass_ toy |toy Mr. Smite's Brass Compass##86568 |goto Vale of Eternal Blossoms/0 88.1,44.3
step
This toy can either be bought from the AH or can be obtained through completing the Shadowmourne quest line, doing this gives a bag containing this toy and a few other goodies
|tip This quest line is only available to classes able to wield Shadowmourne, a 2 handed axe.
collect Muradin's Favor##52201 |use Muradin's Favor##52201 |n
Learn the _Muradin's Favor_ toy |toy Muradin's Favor##52201
step
This toy can be bought from a vendor in the Molten Front
talk Ayla Shadowstorm##53881
buy 1 Mushroom Chair##70161 |use Mushroom Chair##70161 |n
|tip This toy costs 500 gold.
Learn the _Mushroom Chair_ toy |toy Mushroom Chair##70161 |goto Molten Front/0 44.2,86.3
step
This toy can be bought from a vendor in the Molten Front
talk Varlan Highbough##53882
buy 1 Mylune's Call##70159 |use Mylune's Call##70159 |n
|tip This toy costs 3,500 gold.
Learn the _Mylune's Call_ toy |toy Mylune's Call##70159 |goto Molten Front/0 44.5,88.5
step
placeholder
step
Legion
step
Legion
step
This toy is obtained by gaining Best Friend reputation with Nat Pagle |complete rep("Nat Pagle")==BestFriend
|tip To gain Best Friend statue with Nat Pagle complete his dailies and catch rare fish, check out our reputations guides.
Once you gain Best Friend status with Nat Pagle check your mail
collect Nat's Fishing Chair##86596 |use Nat's Fishing Chair##86596 |n
Learn the _Nat's Fishing Chair_ toy |toy Nat's Fishing Chair##86596
step
Legion
step
This toy is given to players that purchase the Warforged Nightmare mount from the Blizzard store
|tip This mount costs 25 US dollars.
Check your mail once this is purchased
collect Nightmarish Hitching Post##112324 |use Nightmarish Hitching Post##112324 |n
Learn the _Nightmarish Hitching Post_ toy |toy Nightmarish Hitching Post##112324
step
kill Golganarr##72970
collect Odd Polished Stone##104262 |use Odd Polished Stone##104262 |n
|tip This is a rare spawn and does not have a 100 percent chance to drop.
Learn the _Odd Polished Stone_ toy |toy Odd Polished Stone##104262 |goto Timeless Isle/0 61.0,64.2
step
kill Stomper Kreego##79629
|tip This is a rare spawn.
collect Ogre Brewing Kit##118224 |use Ogre Brewing Kit##118224 |n
Learn the _Ogre Brewing Kit_ toy |toy Ogre Brewing Kit##118224 |goto Gorgrond/0 38.2,66.2
step
This toy was originaly obtained through the Trading Card Game
It can also be bought from the Black Market AH
collect Ogre Pinata##46780 |use Ogre Pinata##46780 |n
Learn the _Ogre Pinata_ toy |toy Ogre Pinata##46780
step
This toy is a Rare World Drop that can come from any mob within pre Burning Crusade instances
|tip This toy can also be bought from the AH.
collect Orb of Deception##1973 |use Orb of Deception##1973 |n
Learn the _Orb of Deception_ toy |toy Orb of Deception##1973
step
This toy has a small chance to drop from any of the bosses in the instance "Magisters' Terrace"
kill Kael'thas Sunstrider##24664, Vexallus##24744, Selin Fireheart##24723, Priestess Delrissa##24560
collect Orb of the Sin'dorei##35275 |use Orb of the Sin'dorei##35275 |n
Learn the _Orb of the Sin'dorei_ toy |toy Orb of the Sin'dorei##35275
step
placeholder
step
kill Warleader Tome##81330
|tip This Rare spawn pats clock wise around this area.
collect Outrider's Bridle Chain##120276 |use Outrider's Bridle Chain##120276 |n
|tip This is a rare spawn and does not have a 100 percent chance to drop.
Learn the _Outrider's Bridle Chain_ toy |toy Outrider's Bridle Chain##120276 |goto Nagrand D/0 55.0,52.6
step
kill Ahone the Wanderer##50817
collect Pandaren Firework Launcher##86588 |use Pandaren Firework Launcher##86588 |n
|tip This is a rare spawn and does not have a 100 percent chance to drop.
Learn the _Pandaren Firework Launcher_ toy |toy Pandaren Firework Launcher##86588 |goto Kun-Lai Summit/0 40.8,42.4
step
This toy requires you to be Revered with "The Tillers" |complete rep("The Tillers")>=Revered
talk Gina Mudclaw##58706
buy 1 Pandaren Scarecrow##89869 |use Pandaren Scarecrow##89869 |n
|tip This toy costs 200 gold.
Learn the _Pandaren Scarecrow_ toy |toy Pandaren Scarecrow##89869 |goto Valley of the Four Winds/0 52.2,48.6
step
kill Moldo One-Eye##50806
|tip He pats around this area.
collect Panflute of Pandaria##86586 |use Panflute of Pandaria##86586 |n
|tip This is a rare spawn and does not have a 100 percent chance to drop.
Learn the _Panflute of Pandaria_ toy |toy Panflute of Pandaria##86586 |goto Vale of Eternal Blossoms/0 43.0,53.6
step
This toy was originaly obtained through the Trading Card Game
It can also be bought from the Black Market AH
collect Paper Flying Machine Kit##34499 |use Paper Flying Machine Kit##34499 |n
Learn the _Paper Flying Machine Kit_ toy |toy Paper Flying Machine Kit##34499
step
Legion
step
This toy requires a minimum of 450 skill points in Archaeology
|tip All Tol'vir dig sites are marked on your map. You can find them in Kalimdor.
|tip Collect Tol'vir fragments and solve their artifacts until you attain the Pendant of the Scarab Storm toy.
Tombs of the Precursors Digsite |goto Uldum/0 74.53,44.37 |'
Ruins of Ammon Digsite |goto Uldum/0 32.02,64.19 |'
Ruins of Ahmtul Digsite |goto Uldum/0 45.81,14.22 |'
Ruins of Khintaset Digsite |goto Uldum/0 35.04,17.45 |'
Khartut�s Tomb Digsite |goto Uldum/0 64.62,22.83 |'
Neferset Digsite |goto Uldum/0 48.82,80.77 |'
Steps of Fate Digsite |goto Uldum/0 74.1,52.34 |'
Temple of Uldum Digsite |goto Uldum/0 33.6,29.94 |'
Orsis Digsite |goto Uldum/0 40.49,40.93 |'
Cursed Landing Digsite |goto Uldum/0 84.0,55.79 |'
Keset Pass Digsite |goto Uldum/0 78.4,57.73 |'
Akhenet Fields Digsite |goto Uldum/0 54.14,52.99 |'
Obelisk of the Stars Digsite |goto Uldum/0 64.62,31.88 |'
Sahket Wastes Digsite |goto Uldum/0 50.12,20.89 |'
Schnottz�s Landing |goto Uldum/0 21.4,60.96 |'
Learn the _Pendant of the Scarab Storm_ toy |toy Pendant of the Scarab Storm##64881 |use Pendant of the Scarab Storm##64881
step
placeholder
step
placeholder
step
This toy was originaly obtained through the Trading Card Game
It can also be bought from the Black Market AH
collect Perpetual Purple Firework##49703 |use Perpetual Purple Firework##49703 |n
Learn the _Perpetual Purple Firework_ toy |toy Perpetual Purple Firework##49703
step
This can either be made through the Engineering profession or bought on the AH
collect Personal Hologram##108745 |use Personal Hologram##108745 |n
Learn the _Personal Hologram_ toy |toy Personal Hologram##108745
step
talk Trader Araanda##95470
buy 1 Personal Spotlight##127864 |use Personal Spotlight##127864 |n
|tip This toy costs 100 gold.
Learn the _Personal Spotlight_ toy |toy Personal Spotlight##127864 |goto Lunarfall/0 30.1,34.6
step
kill Fossilwood the Petrified##85250
|tip This is a rare spawn.
collect Petrification Stone##118221 |use Petrification Stone##118221 |n
Learn the _Petrification Stone_ toy |toy Petrification Stone##118221 |goto Gorgrond/0 57.4,68.5
step
This toy is obtained through talking to a Blingtron 5000 and receiving it's gift
clicknpc Blingtron 5000##79967
|tip Engineers can place these down, you can usually find them in major cities next to the AH.
collect Blingtron 5000 Gift Package##113258 |use Blingtron 5000 Gift Package##113258 |n
collect Photo B.O.M.B.##123851 |use Photo B.O.M.B.##123851 |n
Learn the _Photo B.O.M.B._ toy |toy Photo B.O.M.B.##123851
step
This toy can be obtained by killing a rare spawn in the dungeon "Stratholme"
kill Hearthsinger Forresten##10558
collect Piccolo of the Flaming Fire##13379 |use Piccolo of the Flaming Fire##13379 |n
|tip This is a rare spawn and does not have a 100 percent chance to drop.
Learn the _Piccolo of the Flaming Fire_ toy |toy Piccolo of the Flaming Fire##13379 |goto Stratholme/1 60.5,31.3
step
This toy was originaly obtained through the Trading Card Game
It can also be bought from the Black Market AH
collect Picnic Basket##32566 |use Picnic Basket##32566 |n
Learn the _Picnic Basket_ toy |toy Picnic Basket##32566
step
This toy is from the 2014 Christmas Event and was lootable under the tree
|tip This toy can also be obtained by completing the daily quest "You're a Mean One..." during the Christmas Event.
collect Pineapple Lounge Cushion##116689 |use Pineapple Lounge Cushion##116689 |n
Learn the _Pineapple Lounge Cushion_ toy |toy Pineapple Lounge Cushion##116689
step
This toy is only obtainable during the pre Legion launch event
kill Dread Infiltrator##112315
collect Pocket Fel Spreader##140363 |use Pocket Fel Spreader##140363 |n
Learn the _Pocket Fel Spreader_ toy |toy Pocket Fel Spreader##140363
step
click Ripened Strange Fruit##127395
|tip This takes 14 days to open.
collect Podling Camouflage##127394 |use Podling Camouflage##127394 |n
Learn the _Podling Camouflage_ toy |toy Podling Camouflage##127394 |goto Tanaan Jungle/0 64.5, 42.1
step
This toy requires you to complete the achievement "Azeroth's Top Twenty Tunes"
|tip To complete this achievement check out our achievement guides.
Check your mail once you have completed this achievement
collect Portable Audiophone##122700 |use Portable Audiophone##122700 |n
Learn the _Portable Audiophone_ toy |toy Portable Audiophone##122700
step
talk Toshley##21691
accept Picking Up Some Power Converters##10584 |goto Blade's Edge Mountains/0 60.6,69.0
step
click Power Converter##184906
|tip An Electromental will spawn. Power converters are on the ground around the area.
clicknpc Electromental##21729
use Protovoltaic Magneto Collector##30656
|tip the Collector on Electromentals, then kill them.
kill Electromental##21729
Gather 5 Electromentals |q 10584/1 |goto Blade's Edge Mountains/0 57.5,57.8
step
talk Toshley##21691
turnin Picking Up Some Power Converters##10584 |goto Blade's Edge Mountains/0 60.6,69.0
accept Ride the Lightning##10657 |goto Blade's Edge Mountains/0 60.6,69.0
step
clicknpc Scalewing Serpent##20749
use Repolarized Magneto Sphere##30818
|tip While the buff is active, let the Serpents use their Lightning Strike attack on you.
Absorb 25 Lightning Strikes |q 10657/1 |goto Blade's Edge Mountains/0 68.3,68.6
kill 1 Scalewing Serpent##20749
collect Scalewing Lightning Gland##30849 |q 10657/2 |goto Blade's Edge Mountains/0 68.3,68.6
step
talk Toshley##21691
turnin Ride the Lightning##10657 |goto Blade's Edge Mountains/0 60.6,69.0
accept Trapping the Light Fantastic##10674 |goto Blade's Edge Mountains/0 60.6,69.0
step
use Multi-Spectrum Light Trap##30852
|tip The light orbs are little purple-white globes floating around the area.
Trap 15 Razzani light orbs |q 10674/1 |goto Blade's Edge Mountains/0 67.1,44.6
step
talk Toshley##21691
turnin Trapping the Light Fantastic##10674 |goto Blade's Edge Mountains/0 60.6,69.0
accept Show Them Gnome Mercy!##10675 |goto Blade's Edge Mountains/0 60.6,69.0
step
kill Nexus-Prince Razaan##21057
|tip You will need to kill the mobs in the area to force him to show himself.
click Collection of Souls##185033
collect Collection of Souls##30890 |q 10675/1 |goto Blade's Edge Mountains/0 66.4,44.0
step
talk Toshley##21691
turnin Show Them Gnome Mercy!##10675 |goto Blade's Edge Mountains/0 60.6,69.0
Learn the Power Converter toy |toy Power Converter##30690 |use Power Converter##30690
step
This toy requires the Fishing skill
Go down the hill |goto Frostfire Ridge/0 22.7,9.3 < 5 |walk
Fish from the clam in the water |cast Fishing##131474 |goto 21.9,9.6
collect Giant Draenor Clam##108738 |use  Giant Draenor Clam##108738 |n
collect Pretty Draenor Pearl##108739 |use Pretty Draenor Pearl##108739 |n
Learn the _Pretty Draenor Pearl_toy |toy Pretty Draenor Pearl##108739 |goto 21.9,9.6
step
Legion
step
talk Chen Stormstout##56133
accept Chen and Li Li##29907 |goto Valley of the Four Winds/0 85.94,22.10
step
Follow Chen to Pang's Stead |q 29907/1 |goto Valley of the Four Winds/0 83.8,21.1
step
talk Pang Thunderfoot##56204
turnin Chen and Li Li##29907 |goto Valley of the Four Winds/0 83.7,21.0
accept A Seemingly Endless Nuisance##29908 |goto Valley of the Four Winds/0 83.7,21.0
step
talk Muno the Farmhand##56440
accept A Poor Grasp of the Basics##29877 |goto Valley of the Four Winds/0 82.71,21.24
step
kill Snagtooth Virmen##56184
kill Snagtooth Troublemaker##55873
kill Snagtooth Tool-Grabber##56185
Slay 8 large virmen |q 29908/1 |goto Valley of the Four Winds/0 81.3,21.9
kill Snagtooth Pesterling##65504
Slay 18 virmen Pesterer |q 29908/2 |goto Valley of the Four Winds/0 81.3,21.9
Find 7 pieces of buried farm equpment |q 29877/1 |goto Valley of the Four Winds/0 81.3,21.9
|tip These are tools scattered about the area.
step
talk Muno the Farmhand##56440
turnin A Poor Grasp of the Basics##29877 |goto Valley of the Four Winds/0 82.71,21.24
step
talk Pang Thunderfoot##56204
turnin A Seemingly Endless Nuisance##29908 |goto Valley of the Four Winds/0 83.7,21.0
accept Low Turnip Turnout##29909 |goto Valley of the Four Winds/0 83.7,21.0
step
talk Ang Thunderfoot##56207
turnin Low Turnip Turnout##29909 |goto Valley of the Four Winds/0 81.6,25.2
step
talk Ana Thunderfoot##56465
accept Rampaging Rodents##29910 |goto Valley of the Four Winds/0 81.88,25.89
step
click Marmot Hole##209835
|tip You must stand still until the cast completes to fill the hole.
Fill 6 marmot holes |q 29910/2 |goto Valley of the Four Winds/0 82.3,25.9
clicknpc Plump Marmot##56203
Punt 6 marmots |q 29910/1 |goto Valley of the Four Winds/0 82.3,25.9
step
talk Ana Thunderfoot##56465
turnin Rampaging Rodents##29910 |goto Valley of the Four Winds/0 81.88,25.89
Learn the Puntable Marmot toy |toy Puntable Marmot##88370 |use Puntable Marmot##88370
step
This toy requires a minimum of 350 skill points in Archaeology
|tip All Nerubian dig sites are marked on your map. You can find them in Eastern Kingdoms and Northrend.
|tip Collect Nerubian fragments and solve their artifacts until you attain the Puzzle Box of Yogg-Saron toy.
Terrorweb Tunnel Digsite |goto Eastern Plaguelands/0 12.06,24.77 |'
Plaguewood Digsite |goto Eastern Plaguelands/0 35.47,21.76 |'
Talramas Digsite |goto Borean Tundra/0 69.07,15.08 |'
En�kilah Digsite |goto Borean Tundra/0 85.87,24.12 |'
Sands of Nasam |goto Borean Tundra/0 52.27,68.07 |'
Pit of Narjun Digsite |goto Dragonblight/0 26.71,49.76 |'
Kolramas Digsite |goto Zul'Drak/0 60.31,77.54 |'
Scourgeholme Digsite |goto Icecrown/0 77.26,63.33 |'
Pit of Fiends Digsite |goto Icecrown/0 75.53,53.2 |'
Learn the _Puzzle Box of Yogg-Saron_ toy |toy Puzzle Box of Yogg-Saron##64482 |use Puzzle Box of Yogg-Saron##64482
step
placeholder
step
Legion
step
talk Breanni##28951
buy 1 Red Ribbon Pet Leash##44820 |use Red Ribbon Pet Leash##44820 |n
Learn the _Red Ribbon Pet Leash_ toy |toy Red Ribbon Pet Leash##44820 |goto Dalaran/1 58.6,39.6
buy 1 Rope Pet Leash##37460 |use Rope Pet Leash##37460 |n
Learn the _Rope Pet Leash_ toy |toy Rope Pet Leash##37460 |goto Dalaran/1 58.6,39.6
step
This toy is from the 2015 Christmas Event and was lootable under the tree
collect Red Wooden Sled##128776 |use Red Wooden Sled##128776 |n
Learn the _Red Wooden Sled_ toy |toy Red Wooden Sled##128776
step
kill Dread Ship Vazuvius##73281
collect Rime of the Time-Lost Mariner##73281 |use Rime of the Time-Lost Mariner##73281 |n
|tip This is a rare spawn and does not have a 100 percent chance to drop.
Learn the _Rime of the Time-Lost Mariner_ toy |toy Rime of the Time-Lost Mariner##73281 |goto Timeless Isle/0 25.8,23.2
step
This toy is only available during the Darkmoon Faire Event
kill Erinys##85531
|tip He is in an underwater cave.
collect Ring of Promises##116068 |goto Darkmoon Island/0 75.6,43.8
accept Broken Promises##36477
step
talk Chester##85484
turnin Broken Promises##36477 |goto Darkmoon Island/0 51.2,75.0
collect Ring of Broken Promises##116067 |use Ring of Broken Promises##116067 |n
Learn the _Ring of Broken Promises_ toy |toy Ring of Broken Promises##116067
step
This toy is the reward for completing the achievement "The Toymaster", which is obtaining 150 toys
Check your mail once this achievement is completed
collect Robo-Gnomebulator##119215 |use Robo-Gnomebulator##119215 |n
Learn the _Robo-Gnomebulator_ toy |toy Robo-Gnomebulator##119215
step
Legion
step
This toy is only available during the "Love is in the Air" Event
talk Lovely Merchant##37674
buy 1 Romantic Picnic Basket##34480 |use Romantic Picnic Basket##34480
|tip This toy costs 10 Love Tokens, these can be obtained by completing the dailies during this event.
Learn the _Romantic Picnic Basket_ toy |toy Romantic Picnic Basket##34480 |goto Ironforge/0 33.8,66.6
]])
