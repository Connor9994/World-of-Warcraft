local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if ZGV:DoMutex("PetsCWOD") then return end
if ZGV:DoMutex("PetsCommonWOD") then return end
ZygorGuidesViewer.GuideMenuTier = "WOD"
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Blorp",{
patch='62000',
source='Vendor',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Aquatic pet: Blorp",
pet=1666,
},[[
step
talk Galissa Sundew##55103
buy Blorp's Bubble##126925 |goto Darkmoon Island/0 52.6,88.4
|tip This item costs 50 Darkmoon Daggermaw, which is a fish you can catch by fishing on the Darkmoon Faire's shores.
step
use Blorp's Bubble##126925
learnpet Blorp##1666
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Fen Crab",{
patch='60100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Aquatic pet: Fen Crab",
pet=1581,
},[[
step
Challenge _any Battle Pet_ to a pet battle
|tip The Fen Crab has a chance to join any pet battle in Tanaan Jungle. Just run around battling and you will come across one soon. They don't seem to be very rare.
Use the _Capture_ ability
|tip Battle it until it's low health, then capture it.
learnpet Fen Crab##1581 |goto Tanaan Jungle/0 62.3,41.7
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Ghostshell Crab",{
patch='62000',
source='Vendor',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Aquatic pet: Ghostshell Crab",
pet=1665,
},[[
step
talk Galissa Sundew##55103
buy Translucent Shell##126926 |goto Darkmoon Island/0 52.6,88.4
|tip This item costs 100 Darkmoon Daggermaw, which is a fish you can catch by fishing on the Darkmoon Faire's shores.
step
use Translucent Shell##126926
learnpet Ghostshell Crab##1665
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Bloodthorn Hatchling",{
patch='60100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Beast pet: Bloodthorn Hatchling",
pet=1577,
},[[
step
talk Tiffy Trapspring##94512 |goto Lunarfall/0 30.2,39.8 |only Alliance
talk Giada Goldleash##94516 |goto Frostwall/0 33.0,40.0 |only Horde
|tip She walks around.
buy Bloodthorn Hatchling##127704 |complete itemcount(127704) > 0 or haspet(1577)
|tip This item costs 50 Pet Charms. Use the "Battle Pet Dailies" guide to earn these.
step
use Bloodthorn Hatchling##127704
learnpet Bloodthorn Hatchling##1577
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Fel Pup",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Beast pet: Fel Pup",
pet=1660,
},[[
step
_Run up_ the dirt path |goto Tanaan Jungle/0 31.0,63.5 < 30 |only if walking
_Go up_ the stairs |goto Tanaan Jungle/0 28.8,66.8 < 30 |only if walking
_Continue up_ the stairs |goto Tanaan Jungle/0 29.1,68.4 < 20 |only if walking
_Run up_ the stairs |goto Tanaan Jungle/0 30.4,68.6 < 20 |only if walking
kill Ceraxas##90434 |goto Tanaan Jungle/0 31.4,68.0
|tip After killing Ceraxas, an Abandoned Fel Pup spawns nearby.
talk Abandoned Fel Pup##90426
|tip It's a tiny green wolf puppy that appears nearby after killing Ceraxas.
accept A Fel Puppy Of My Own##38428
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Lost Netherpup",{
patch='62000',
source='Vendor',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Beast pet: Lost Netherpup",
pet=1661,
},[[
step
talk Tiffy Trapspring##94512 |goto Lunarfall/0 30.2,39.8 |only Alliance
talk Giada Goldleash##94516 |goto Frostwall/0 33.0,40.0 |only Horde
|tip She walks around.
buy Lost Netherpup##127705 |complete itemcount(127705) > 0 or haspet(1661)
|tip This item costs 200 Pet Charms. Use the "Battle Pet Dailies" guide to earn these.
step
use Lost Netherpup##127705
learnpet Lost Netherpup##1661
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Periwinkle Calf",{
patch='62000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Beast pet: Periwinkle Calf",
pet=1663,
},[[
step
There are 15 legendary Tanaan Jungle pet battles that can be completed each day.
|tip These can only be completed once per day per account, not per character.
|tip These are legendary pets, and will be difficult fights.
Challenge _Dreadwalker_ to a pet battle |goto Tanaan Jungle/0 47.3,52.8
Challenge _DIreflame_ to a pet battle |goto Tanaan Jungle/0 57.7,37.3
Challenge _Vile Blood of Draenor_ to a pet battle |goto Tanaan Jungle/0 44.0,45.7
Challenge _Mirecroak_ to a pet battle |goto Tanaan Jungle/0 42.2,71.8
Challenge _Corrupted Thundertail_ to a pet battle |goto Tanaan Jungle/0 53.0,65.2
Challenge _Cursed Spirit_ to a pet battle |goto Tanaan Jungle/0 31.4,38.1
Challenge _Felsworn Sentry_ to a pet battle |goto Tanaan Jungle/0 26.2,31.6
Challenge _Breakclaw_ to a pet battle |goto Tanaan Jungle/0 15.7,44.4
|tip These 8 are the easiest to get to.
|tip For the most part all of the legendary pet battles are the same difficulty.
step
Defeat any of these Legendary pets
use Fel-Touched Pet Supplies##127751
|tip You will get one of these for each legendary pet battle you win in Tanaan Jungle.
use Periwinkle Calf##127754
|tip There is only a chance to get this item in the Fel-Touched Pet Supplies.
learnpet Periwinkle Calf##1663 |goto Tanaan Jungle/0 47.3,52.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Savage Cub",{
patch='62000',
source='Vendor',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Beast pet: Savage Cub",
pet=1692,
},[[
step
talk Z'tenga the Walker##92805 |goto Tanaan Jungle/0 55.3,74.7
buy Savage Cub##128477 |complete itemcount(128477) > 0 or haspet(1692)
|tip You need to be Revered with the Saberstalkers faction, as well as 1,500 Blackfang Claws, in order to be able to purchase this item. Use the Saberstalkers dailies guide to accomplish this.
step
use Savage Cub##128477
learnpet Savage Cub##1692
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Nibbles",{
patch='62200',
source='Promotion',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Critter pet: Nibbles",
pet=1691,
},[[
step
This pet is a reward from ordering the Legion Collector's Edition.
learnpet Nibbles##1691
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Shard of Cyrukh",{
patch='62000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Elemental pet: Shard of Cyrukh",
pet=1690,
},[[
step
Complete the Garrison Campaign Quest:
_"The Cipher of Damnation"_ |complete completedq(39394) |only Alliance
_"The Cipher of Damnation"_ |complete completedq(38463) |only Horde
|tip Use the "Warlock" Garrison Campaign quest guide to accomplish this.
step
click Forgotten Shard of the Cipher##241671
use Shard of Cyrukh##128309
learnpet Shard of Cyrukh##1690 |goto Tanaan Jungle/0 63.3,28.1
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Blazing Firehawk",{
patch='62000',
source='Vendor',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Blazing Firehawk",
pet=1693,
},[[
step
talk Dawn-Seeker Krisek##95424 |goto Tanaan Jungle/0 58.0,59.4 |only Alliance
talk Dawn-Seeker Krisek##95424 |goto Tanaan Jungle/0 60.4,46.7 |only Horde
buy Blazing Firehawk##128478 |complete itemcount(128478) > 0 or haspet(1693)
|tip You must be Exalted with the Order of the Awakened faction in order to be able to purchase this. Use the Order of the Awakened dailies guide to accomplish this.
step
use Blazing Firehawk##128478
learnpet Blazing Firehawk##1693
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Bloodbeak",{
patch='60100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Bloodbeak",
pet=1468,
},[[
step
Challenge a _Bloodbeak_ to a pet battle
|tip They are level 25, small red birds flying low to the ground around this area.
Use the _Capture_ ability
|tip Battle it until it's low health, then capture it.
learnpet Bloodbeak##1468 |goto Tanaan Jungle/0 62.3,41.7
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Cerulean Moth",{
patch='60100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Cerulean Moth",
pet=1586,
},[[
step
_Follow_ the path |goto Tanaan Jungle/0 55.0,64.2 < 30 |only if walking
Challenge a _Cerulean Moth_ to a pet battle
|tip They are level 25, small blue and white moths flying low to the ground around this area.
Use the _Capture_ ability
|tip Battle it until it's low health, then capture it.
learnpet Cerulean Moth##1586 |goto Tanaan Jungle/0 56.0,66.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Crimsonwing Moth",{
patch='60100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Crimsonwing Moth",
pet=1589,
},[[
step
Challenge a _Crimsonwing Moth_ to a pet battle
|tip They are level 25, small red and white moths flying low to the ground. There can only be 1 of these spawned at a time in the entire zone, and they spawn in place of other pets in the zone, so finding one will require some searching and patience. Turn on "Track Pets" on your minimap tracking, and keep an eye out for one as you walk around.
Use the _Capture_ ability
|tip Battle it until it's low health, then capture it.
learnpet Crimsonwing Moth##1589
Possible Spawn Points:
Point 1: [Talador/0 67.2,22.8]
Point 2: [Talador/0 74.0,32.2]
Point 3: [Talador/0 71.8,41.2]
Point 4: [Talador/0 57.2,46.4]
Point 5: [Talador/0 37.0,63.8]
Point 6: [Talador/0 38.8,79.2]
Point 7: [Talador/0 49.4,85.8]
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Dusty Sporewing",{
patch='60100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Dusty Sporewing",
pet=1588,
},[[
step
talk Tiffy Trapspring##94512 |goto Lunarfall/0 30.2,39.8 |only Alliance
talk Giada Goldleash##94516 |goto Frostwall/0 33.0,40.0 |only Horde
|tip She walks around.
buy Dusty Sporewing##127703 |complete itemcount(127703) > 0 or haspet(1588)
|tip This item costs 50 Pet Charms. Use the "Battle Pet Dailies" guide to earn these.
step
use Dusty Sporewing##127703
learnpet Dusty Sporewing##1588
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Glowing Sporebat",{
patch='60200',
source='Vendor',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Glowing Sporebat",
pet=1598,
},[[
step
talk Tiffy Trapspring##94512 |goto Lunarfall/0 30.2,39.8 |only Alliance
talk Giada Goldleash##94516 |goto Frostwall/0 33.0,40.0 |only Horde
|tip She walks around.
buy Glowing Sporewing##127701 |complete itemcount(127701) > 0 or haspet(1598)
|tip This item costs 100 Pet Charms. Use the "Battle Pet Dailies" guide to earn these.
step
Glowing Sporewing##127701
learnpet Glowing Sporebat##1598
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Sapphire Firefly",{
patch='60100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Sapphire Firefly",
pet=1592,
},[[
step
Challenge a _Sapphire Firefly_ to a pet battle
|tip They are level 25, and look like small blue wasps flying low to the ground. There can only be 1 of these spawned at a time in the entire zone, and they spawn in place of other pets in the zone, so finding one will require some searching and patience. Turn on "Track Pets" on your minimap tracking, and keep an eye out for one as you walk around.
Use the _Capture_ ability
|tip Battle it until it's low health, then capture it.
learnpet Sapphire Firefly##1592
Possible Spawn Points:
Point 1: [Spires of Arak/0 45.0,35.2]
Point 2: [Spires of Arak/0 45.6,61.8]
Point 3: [Spires of Arak/0 59.0,68.6]
Point 4: [Spires of Arak/0 58.0,51.0]
Point 5: [Spires of Arak/0 55.4,32.4]
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Seaborne Spore",{
patch='60100',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Seaborne Spore",
pet=1539,
},[[
step
There are 15 legendary Tanaan Jungle pet battles that can be completed each day.
|tip These can only be completed once per day per account, not per character.
|tip These are legendary pets, and will be difficult fights.
Challenge _Dreadwalker_ to a pet battle |goto Tanaan Jungle/0 47.3,52.8
Challenge _DIreflame_ to a pet battle |goto Tanaan Jungle/0 57.7,37.3
Challenge _Vile Blood of Draenor_ to a pet battle |goto Tanaan Jungle/0 44.0,45.7
Challenge _Mirecroak_ to a pet battle |goto Tanaan Jungle/0 42.2,71.8
Challenge _Corrupted Thundertail_ to a pet battle |goto Tanaan Jungle/0 53.0,65.2
Challenge _Cursed Spirit_ to a pet battle |goto Tanaan Jungle/0 31.4,38.1
Challenge _Felsworn Sentry_ to a pet battle |goto Tanaan Jungle/0 26.2,31.6
Challenge _Breakclaw_ to a pet battle |goto Tanaan Jungle/0 15.7,44.4
|tip These 8 are the easiest to get to.
|tip For the most part all of the legendary pet battles are the same difficulty..
step
Defeat any of these Legendary pets
use Fel-Touched Pet Supplies##127751
|tip You will get one of these for each legendary pet battle you win in Tanaan Jungle.
use Seaborne Spore##118105
|tip There is only a chance to get this item in the Fel-Touched Pet Supplies.
learnpet Seaborne Spore##1539
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Violet Firefly",{
patch='60100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Violet Firefly",
pet=1591,
},[[
step
Challenge a _Violet Firefly_ to a pet battle
|tip They are level 25, and look like small purple wasps flying low to the ground around this area. If you are having trouble finding one, they also have a chance to appear as secondary opponents when you battle other pets in Tanaan Jungle.
Use the _Capture_ ability
|tip Battle it until it's low health, then capture it.
learnpet Violet Firefly##1591 |goto Tanaan Jungle/0 26.6,55.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Zangar Spore",{
patch='60100',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Zangar Spore",
pet=1536,
},[[
step
There are 15 legendary Tanaan Jungle pet battles that can be completed each day.
|tip These can only be completed once per day per account, not per character.
|tip These are legendary pets, and will be difficult fights.
Challenge _Dreadwalker_ to a pet battle |goto Tanaan Jungle/0 47.3,52.8
Challenge _DIreflame_ to a pet battle |goto Tanaan Jungle/0 57.7,37.3
Challenge _Vile Blood of Draenor_ to a pet battle |goto Tanaan Jungle/0 44.0,45.7
Challenge _Mirecroak_ to a pet battle |goto Tanaan Jungle/0 42.2,71.8
Challenge _Corrupted Thundertail_ to a pet battle |goto Tanaan Jungle/0 53.0,65.2
Challenge _Cursed Spirit_ to a pet battle |goto Tanaan Jungle/0 31.4,38.1
Challenge _Felsworn Sentry_ to a pet battle |goto Tanaan Jungle/0 26.2,31.6
Challenge _Breakclaw_ to a pet battle |goto Tanaan Jungle/0 15.7,44.4
|tip These 8 are the easiest to get to.
|tip For the most part all of the legendary pet battles are the same difficulty.
step
Defeat any of these Legendary pets
use Fel-Touched Pet Supplies##127751
|tip You will get one of these for each legendary pet battle you win in Tanaan Jungle.
use Zangar Spore##118101
|tip There is only a chance to get this item in the Fel-Touched Pet Supplies.
learnpet Zangar Spore##1536 |goto Tanaan Jungle/0 47.3,52.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Baby Winston",{
patch='62300',
source='Promotion',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Humaniod pet: Baby Winston",
pet=1828,
},[[
step
This pet is a reward from ordering the Overwatch Collector's Edition.
learnpet Baby Winston##1828
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Crusher",{
patch='62000',
source='Vendor',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Humanoid pet: Crusher",
pet=1688,
},[[
step
talk Trader Araanda##95470 |goto Lunarfall/0 30.0,34.6 |only Alliance
talk Trader Darakk##95471 |goto Frostwall/0 40.8,55.8 |only Horde
buy Crusher##127868 |complete itemcount(127868) > 1
|tip This pet costs 1,000 gold.
step
use Crusher##127868
learnpet Crusher##1688
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Grumpling",{
patch='62200',
source='WorldEvent',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Humaniod pet: Grumpling",
pet=1725,
},[[
step
This pet will be part of the 2015 Feast of Winter Vale event.
learnpet Grumpling##1725
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Hogs",{
patch='60100',
source='Achievement',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Humanoid pet: Hogs",
pet=1384,
},[[
step
talk Mola##54601 |goto Darkmoon Island/0 53.6,55.0
Start the Whack-a-Gnoll game
Whack the _Hoggers_ in the Barrels
|tip They pop out of the barrels. The Hoggers are darker brown in color, with brown hair manes. They give more points each, so focus on whacking them.
Score 45 Points in One Session of Whack-a-Gnoll |achieve 9983
|tip This can only be completed while the Darkmoon Faire is available.
step
use Hogs' Studded Collar##123862
learnpet Hogs##1384
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Murkidan",{
patch='60100',
source='Promotion',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Humaniod pet: Murkidan",
pet=1454,
},[[
step
This pet is a reward from ordering a blizzcon 2015 virtual ticket.
learnpet Murkidan##1454
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Terky",{
patch='24000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Humanoid pet: Terky",
pet=1073,
},[[
step
This pet WAS only available during the iCoke promotion in Taiwan.
But was inserted into the game so everyone can get it now in patch 6.2.2.
|tip This pet can be found in a cave that might be a little difficult to find.
|tip The cave is located under water and is bascially just a crack in the wall, once in the cave the egg can be found behind the alter in a pile of bones.
click White Murloc Egg##244447
collect White Murloc Egg##22780 |goto Borean Tundra/0 54.6,89.3
use White Murloc Egg##22780
learnpet Terky##1073
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Brightpaw",{
patch='60100',
source='In-GameShop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Magic pet: Brightpaw",
pet=1466,
},[[
step
This pet will be a blizzard in-store pet.
learnpet Brightpaw##1466
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Energized Manafiend",{
patch='62100',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Magic pet: Energized Manafiend",
pet=1764,
},[[
step
kill Rukdug##98198 |goto Nagrand D 26.2,34.3
|tip This is a rare elite mob released in patch 6.2.2.
|tip This may require a group to kill.
|tip To get to this mob you will need to have flying in draenor.
use Vibrating Arcane Crystal##129216
|tip This has a small chance to drop, it is not 100 percent.
learnpet Energized Manafiend##1764
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Empowered Manafiend",{
patch='62100',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Magic pet: Empowered Manafiend",
pet=1766,
},[[
step
kill Pugg##98199 |goto Nagrand D 28.2,29.6
|tip This is a rare elite mob released in patch 6.2.2.
|tip This may require a group to kill.
|tip To get to this mob you will need to have flying in draenor.
use Warm Arcane Crystal##129217
|tip This has a small chance to drop, it is not 100 percent.
learnpet Empowered Manafiend##1766
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Empyreal Manafiend",{
patch='62100',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Magic pet: Empyreal Manafiend",
pet=1765,
},[[
step
kill Guk##98200 |goto Nagrand D 23.8,38.2
|tip This is a rare elite mob released in patch 6.2.2.
|tip This may require a group to kill.
|tip To get to this mob you will need to have flying in draenor.
use Glittering Arcane Crystal##129218
|tip This has a small chance to drop, it is not 100 percent.
learnpet Empyreal Manafiend##1765
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Nethaera's Light",{
patch='60200',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Magic pet: Nethaera's Light",
pet=1604,
},[[
step
Find _Nethaera's Light_
|tip It looks like an orange floating candle that can be at this location. It can also be at many other locations all around Dalaran, though not in the sewer. Make a macro for "/tar Nethaera" and spam it as you fly around Dalaran. It has a short respawn time of 5-10 minutes, so you should find it relatively quickly.
Target _Nethaera's Light_ and _cheer_ at it |script DoEmote("CHEER")
|tip Cheer at it repeatedly until you get the pet. The amount of times you need to cheer at it seems to be random.
|tip This pet is a non combat pet, It can not fight and has no level.
learnpet Nethaera's Light##1604 |goto Dalaran/1 45.3,23.1
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Nightmare Bell",{
patch='62000',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Magic pet: Nightmare Bell",
pet=1664,
},[[
step
There are 15 legendary Tanaan Jungle pet battles that can be completed each day.
|tip These can only be completed once per day per account, not per character.
|tip These are legendary pets, and will be difficult fights.
Challenge _Dreadwalker_ to a pet battle |goto Tanaan Jungle/0 47.3,52.8
Challenge _DIreflame_ to a pet battle |goto Tanaan Jungle/0 57.7,37.3
Challenge _Vile Blood of Draenor_ to a pet battle |goto Tanaan Jungle/0 44.0,45.7
Challenge _Mirecroak_ to a pet battle |goto Tanaan Jungle/0 42.2,71.8
Challenge _Corrupted Thundertail_ to a pet battle |goto Tanaan Jungle/0 53.0,65.2
Challenge _Cursed Spirit_ to a pet battle |goto Tanaan Jungle/0 31.4,38.1
Challenge _Felsworn Sentry_ to a pet battle |goto Tanaan Jungle/0 26.2,31.6
Challenge _Breakclaw_ to a pet battle |goto Tanaan Jungle/0 15.7,44.4
|tip These 8 are the easiest to get to.
|tip For the most part all of the legendary pet battles are the same difficulty.
step
Defeat any of these Legendary pets
use Fel-Touched Pet Supplies##127751
|tip You will get one of these for each legendary pet battle you win in Tanaan Jungle.
use Nightmare Bell##127753
|tip There is only a chance to get this item in the Fel-Touched Pet Supplies.
learnpet Nightmare Bell##1664 |goto Tanaan Jungle/0 47.3,52.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Zeradar",{
patch='54000',
source='Promotion',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Magic pet: Zeradar",
pet=1255,
},[[
step
This pet is a reward for ordering the Starcraft 2: Legacy of the Void Collector's Edition.
learnpet Zeradar##1255
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Corrupted Nest Guardian",{
patch='62000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Mechanical pet: Corrupted Nest Guardian",
pet=1672,
},[[
step
Enter the _Hellfire Citadel_ Raid |goto Tanaan Jungle/0 45.6,53.6
kill Shadow-Lord Iskar##95067
use Corrupted Nest Guardian##127749
|tip Only one per kill can drop.
learnpet Corrupted Nest Guardian##1672
]])
