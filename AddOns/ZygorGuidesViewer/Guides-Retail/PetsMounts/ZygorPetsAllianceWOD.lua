local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("PetsAWOD") then return end
ZygorGuidesViewer.GuideMenuTier = "WOD"
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Frostshell Pincher",{
patch='60100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Aquatic pet: Frostshell Pincher.",
pet=1578,
},[[
step
The _Frostshell Pinchers_ are level 25
|tip This pet is a blueish colored crab.
Challenge one to a pet battle and capture it.
learnpet Frostshell Pincher##1578 |goto Frostfire Ridge/0 22.26,66.07
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Hydraling",{
patch='60100',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Aquatic pet: Hydraling.",
pet=1541,
},[[
step
talk Dungar Longdrink##81103 |goto Lunarfall 47.9,49.7
Fly to _Apexis Excavation, Spires of Arak_. |goto Spires of Arak/0 36.9,24.7<20
click Varasha's Egg##232169 |goto Spires of Arak/0 29.4,41.6
kill Varasha##82050
click Varasha's Egg##232169 |goto Spires of Arak/0 29.4,41.6
collect Hydraling##118207
learnpet Hydraling##1541 |use Hydraling##118207
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Ironclaw Scuttler",{
patch='60100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Aquatic pet: Ironclaw Scuttler.",
pet=1579,
},[[
step
The _Ironclaw Scuttlers_ are level 25
|tip This pet is a red and brown crab.
Challenge one to a pet battle and capture it.
learnpet Ironclaw Scuttler##1579 |goto Frostfire Ridge 54.0,37.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Kelp Scuttler",{
patch='60100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Aquatic pet: Kelp Scuttler.",
pet=1583,
},[[
step
The _Kelp Scuttlers_ are level 25
|tip This pet can be find very frequently on the coastlines of Talador.
Challenge one to a pet battle and capture it.
learnpet Kelp Scuttler##1583 |goto Talador/0 54.0,16.1
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Land Shark",{
patch='60100',
source='Profession',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Aquatic pet: Land Shark.",
pet=115,
},[[
step
talk Nat Pagle##85984 |goto Lunarfall 53.8,13.8
|tip Purchasing this pet requires fishing skill at 700 and "Good Friends" reputation with Nat Pagle.
collect 50 Nat's Lucky Coin##117397
|tip Nat's Lucky Coins can only be obtained by turning in Lunkers or summoning a cavedweller.
buy Land Shark##117404
learnpet Land Shark##115 |use Land Shark##117404
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Left Shark",{
patch='62000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Aquatic pet: Left Shark.",
pet=1687,
},[[
step
clicknpc Fleet Command Table##94399
|tip It looks like a rectangle wooden table with a map on it.
Complete the _Orphaned Aquatic Animal Rescue_ Naval Mission
|tip This pet is a reward for successfully completing the rare Naval Mission: Orphaned Aquatic Animal Rescue. Check your naval mission table often until you have the mission available.
use Left Shark##127856
|tip You can also buy this from the Auction House.
learnpet Left Shark##1687 |goto Shadowmoon Valley D/0 28.2,11.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Leviathan Hatchling",{
patch='61000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Aquatic pet: Leviathan Hatchling.",
pet=1623,
},[[
step
kill High Warlord Naj'entus##22887 |goto Black Temple/2 42.2,19.1
|tip This pet has a small chance to drop from High Warlord Naj'entus in the Black Temple.
collect Leviathan Egg##122104 |n
learnpet Leviathan Hatchling##1623 |use Shard of Supremus##122106
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Moonshell Crab",{
patch='60100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Aquatic pet: Moonshell Crab.",
pet=1447,
},[[
step
The _Moonshell Crabs_ are level 25
|tip This pet is a snow blue crab.
Challenge one to a pet battle and capture it.
learnpet Moonshell Crab##1447 |goto Shadowmoon Valley D 67.6,32.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Mud Jumper",{
patch='60100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Aquatic pet: Mud Jumper.",
pet=1441,
},[[
step
The _Mud Jumpers_ are level 25
|tip It's a brown frog that jumps around the outskirts of the rivers and lakes of Nagrand.
Challenge one to a pet battle and capture it.
learnpet Mud Jumper##1441 |goto Nagrand D 69.4,20.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Puddle Terror",{
patch='60100',
source='Quest',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Aquatic pet: Puddle Terror.",
pet=1568,
},[[
step
Click here to farm the pet yourself. |confirm |next "farmpuddle"
Click here to be taken to the Auctioneer to purchase it. |confirm |next "buy"
|tip This pet can be farmed, or purchased from the Auction House.
step
label "farmpuddle"
|tip This pet requires you complete the Mastering the Menagerie daily after gaining Menagerie Level 3.
|tip The daily reward will be a Big Bag of Pet Supplies from which you have a chance of getting this pet.
confirm
step
talk Lio the Lioness##85418
accept Mastering the Menagerie##37248 |goto Lunarfall/0 28.6,39.2 |or
accept Mastering the Menagerie##37645 |goto Lunarfall/0 28.6,39.2 |or
accept Mastering the Menagerie##37644 |goto Lunarfall/0 28.6,39.2 |or
step
collect Puddle Terror##119467 |use Big Bag of Pet Supplies##118697
|next "done"
step
label "buy"
talk Auctioneer Chilton##8670 |goto Stormwind City 61.0,71.6
buy Puddle Terror##119467
step
label "done"
learnpet Puddle Terror##1568 |use Puddle Terror##119467
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Sea Calf",{
patch='60100',
source='Profession',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Aquatic pet: Sea Calf.",
pet=1448,
},[[
step
talk Nat Pagle##85984 |goto Lunarfall 53.8,13.8
|tip Purchasing this pet requires fishing skill at 700 and "Good Friends" reputation with Nat Pagle.
collect 50 Nat's Lucky Coin##117397
|tip Nat's Lucky Coins can only be obtained by turning in Lunkers or summoning a cavedweller.
buy Sea Calf##114919
learnpet Sea Calf##1448 |use Sea Calf##114919
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Slithershock Elver",{
patch='61000',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Aquatic pet: Slithershock Elver.",
pet=1655,
},[[
step
talk Erris the Collector##91016
accept Critters of Draenor##38299 |goto Lunarfall/0 30.99,40.20
|tip This pet is a random drop for Traveler's Pet Supplies
step
talk Erris the Collector##91016
Say: "_Let's do this!_"
Defeat Erris the Collector |q 38299/1 |goto 30.99,40.20
step
talk Erris the Collector##91016
turnin Critters of Draenor##38299 |goto 30.99,40.20
step
You have no Traveler's Pet Supplies in your inventory, complete the daily quest tomorrow for another chance at this pet |only if itemcount(122535) < 1
use Traveler's Pet Supplies##122535 |only if itemcount(122535) > 0
collect Slithershock Elver##122534
learnpet Slithershock Elver##1655 |use Slithershock Elver##122534
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Zangar Crawler",{
patch='60100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Aquatic pet: Zangar Crawler.",
pet=1582,
},[[
step
The _Zangar Crawlers_ are level 25
|tip This pet is a dark green colored crab.
Challenge one to a pet battle and capture it.
learnpet Zangar Crawler##1582 |goto Shadowmoon Valley D 41.2,16.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Albino River Calf",{
patch='60100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Beast pet: Albino River Calf.",
pet=1571,
},[[
step
This pet requires you to be Revered with Steamwheedle "Preservation Society"
|tip To gain reputation with this faction you will need to collect turn in items.
|tip These items can be found by killing level 35-40 mobs in Nagrand, from chests, or from rare spawns in Nagrand.
confirm
step
talk Gazrix Gearlock##88482 |goto Stormshield 43.2,77.4
buy Indentured Albino River Calf##119148
learnpet Albino River Calf##1571 |use Indentured Albino River Calf##119148
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Argi",{
patch='60200',
source='In-GameShop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Beast pet: Argi.",
pet=1603,
},[[
step
This pet can only be purchased in the official Blizzard Store
|tip This pet costs 10 US dollars.
|tip After purchasing, check your in-game mailbox.
collect Argi##118516
learnpet Argi##1603 |use Argi##118516
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Cinder Pup",{
patch='62000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Beast pet: Cinder Pup.",
pet=1662,
},[[
step
#include "Garrison_CommandTable"
Complete the _Fiery Friends_ Garrison Mission
|tip This pet is a reward for successfully completing the rare Garrison Mission: Fiery Friends. Check your garrison mission table often until you have the mission available.
use Cinder Pup##127748
|tip You can also buy this from the Auction House, but it's very expensive.
learnpet Cinder Pup##1662
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Deathwatch Hatchling",{
patch='60100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Beast pet: Deathwatch Hatchling.",
pet=1449,
},[[
step
Your guild needs have the achievement "Challenge Warlords: Gold - Guild Edition".
|tip Complete the Challenge Warlords: Gold - Guild Edition achievement. |achieve 9651
step
talk Shay Pressler##46602 |goto Stormwind City 64.6,76.8
buy 1 Deathwatch Hatchling##114968
learnpet Deathwatch Hatchling##1449 |use Deathwatch Hatchling##114968
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Flat-Tooth Calf",{
patch='60200',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Beast pet: Flat-Tooth Calf.",
pet=1595,
},[[
step
The _Flat-Tooth Calves_ are level 25
|tip This pet is somewhat rare and has the same model as other river calfs and mudbacks.
Challenge one to a pet battle and capture it.
learnpet Flat-Tooth Calf##1595 |goto Talador 70.8,53.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Frostwolf Pup",{
patch='60100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Beast pet: Frostwolf Pup.",
pet=1542,
},[[
step
This pet can only be earned as a Horde character, but it can be bought in the auction house
confirm
step
talk Auctioneer Chilton##8670 |goto Stormwind City 61.0,71.6
buy 1 Frostwolf Pup##119141
learnpet Frostwolf Pup##1542 |use Frostwolf Pup##119141
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Icespine Hatchling",{
patch='60100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Beast pet: Icespine Hatchling.",
pet=1457,
},[[
step
The _Icespine Hatchlings_ are level 25
|tip This pet spawns in large groups and is a snowy blue color.
Challenge one to a pet battle and capture it.
learnpet Icespine Hatchling##1457 |goto Frostfire Ridge 54.8,37.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Leatherhide Runt",{
patch='60200',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Beast pet: Leatherhide Runt.",
pet=1435,
},[[
step
The _Leatherhide Runts_ are level 25
|tip These pets can be found inside cages in huts in Hallvalor.
Challenge one to a pet battle and capture it.
learnpet Leatherhide Runt##1435 |goto Nagrand D 80.0,56.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Meadowstomper Calf",{
patch='60100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Beast pet: Meadowstomper Calf.",
pet=1446,
},[[
step
talk Digrem Orebar##81955
accept Tastes Like Chicken##34869 |goto Nagrand D 79.20,52.63
step
kill 10 Ravenous Windroc##79851 |q 34869/1 |goto 73.99,59.26
step
talk Digrem Orebar##81955
turnin Tastes Like Chicken##34869 |goto 79.22,52.66
accept Fruitful Ventures##34819 |goto 79.22,52.66
step
click Nagrand Cherry##232100
collect 15 Nagrand Cherry##113083 |q 34819/1 |goto Nagrand D 69.8,54.4
|tip These can be found all around this area, mostly around trees.
step
talk Digrem Orebar##81955
turnin Fruitful Ventures##34819 |goto Nagrand D/0 79.2,52.6
accept New Babies##34900 |goto 79.21,52.66
step
clicknpc Tenderhoof Meadowstomper##78459
Coax Tenderhoof Meadowstompers |q 34900/1 |goto 69.90,65.77
step
talk Digrem Orebar##81955
turnin New Babies##34900 |goto 79.22,52.66
learnpet Meadowstomper Calf##1446
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Mossbite Skitterer",{
patch='60100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Beast pet: Mossbite Skitterer.",
pet=1455,
},[[
step
The _Mossbite Skitterers_ are level 25
|tip This pet as a little bit more detailed model then most other wild pets, it's green and black colored.
Challenge one to a pet battle and capture it.
learnpet Mossbite Skitterer##1455 |goto Shadowmoon Valley D 48.2,82.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Mudback Calf",{
patch='60200',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Beast pet: Mudback Calf.",
pet=1594,
},[[
step
The _Mudback Calves_ are level 25
|tip This pet is a pinkish color and may be hard to battle, try to find one that out of the water or in shallow water.
Challenge one to a pet battle and capture it.
learnpet Mudback Calf##1594 |goto Gorgrond 47.6,88.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Parched Lizard",{
patch='60200',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Beast pet: Parched Lizard.",
pet=1615,
},[[
step
The Parched Lizards are level 25
|tip This pet is a yellow spotted lizard with a red tail.
Challenge one to a pet battle and capture it.
learnpet Parched Lizard##1615 |goto Gorgrond 41.2,37.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Thicket Skitterer",{
patch='60100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Beast pet: Thicket Skitterer.",
pet=1456,
},[[
step
The _Thicket Skitterers_ are level 25
|tip This pet can come in different colors, a light tan, and a bright yellow color.
Challenge one to a pet battle and capture it.
learnpet Thicket Skitterer##1456 |goto Spires of Arak/0 45.0,47.3
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Young Talbuk",{
patch='61000',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Beast pet: Young Talbuk.",
pet=1656,
},[[
step
talk Erris the Collector##91016
accept Critters of Draenor##38299 |goto Lunarfall/0 30.99,40.20
|tip This pet is a random drop for Traveler's Pet Supplies.
step
talk Erris the Collector##91016
Say: "_Let's do this!_"
Defeat Erris the Collector |q 38299/1 |goto 30.99,40.20
step
talk Erris the Collector##91016
turnin Critters of Draenor##38299 |goto 30.99,40.20
step
You have no Traveler's Pet Supplies in your inventory, complete the daily quest tomorrow for another chance at this pet |only if itemcount(122535) < 1
use Traveler's Pet Supplies##122535 |only if itemcount(122535) > 0
collect Young Talbuk##122533
learnpet Young Talbuk##1656 |use Young Talbuk##122533
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Bush Chicken",{
patch='60100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Critter pet: Bush Chicken.",
pet=1516,
},[[
step
This pet requires the completion of the world event "Pilgrim's Bounty"
|tip Complete the Pilgrim's Bounty world event. |achieve 3478
step
|tip After completing, check your in-game mailbox.
collect Frightened Bush Chicken##116403
learnpet Bush Chicken##1516 |use Frightened Bush Chicken##116403
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Frostfur Rat",{
patch='60100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Critter pet: Frostfur Rat.",
pet=1427,
},[[
step
The Frostfur Rats are level 25
|tip This is a very common rat and can very in size.
Challenge one to a pet battle and capture it.
learnpet Frostfur Rat##1427 |goto Frostfire Ridge 51.8,20.7
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Lovebird Hatchling",{
patch='60100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Critter pet: Lovebird Hatchling",
pet=1511,
},[[
step
This pet is sold by Lovely Merchants during the Love is in the Air Holiday
|tip The merchants are in the captial cities.
To earn tokens, _click here_. |next "Events Guides\\Love is in the Air\\Love is in the Air Dailies" |confirm |only if ZGV.guidesets["DailiesACATA"]
collect 40 Love Token##49927
confirm
step
talk Lovely Merchant##37674
buy 1 Lovebird Hatchling##116155
learnpet Lovebird Hatchling##1511 |use Lovebird Hatchling##116155
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Pygmy Cow",{
patch='60100',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Critter pet: Pygmy Cow.",
pet=1543,
},[[
step
This pet requires Requires Barn Level 3 and the completion of the achievement "Trapper's Delight"
|tip Complete the Trapper's Delight achievement. |achieve 9451
step
|tip After completing, check your in-game mailbox.
collect Glass of Warm Milk##120309
learnpet Pygmy Cow##1543 |use Glass of Warm Milk##120309
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Albino Chimaeraling",{
patch='60100',
source='Quest',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Dragonkin pet: Albino Chimaeraling.",
pet=1385,
},[[
step
Click here to farm the pet yourself. |confirm |next "farmalbinoc"
Click here to be taken to the Auctioneer to purchase it. |confirm |next "buy"
|tip This pet can be farmed, or purchased from the Auction House.
step
label "farmalbinoc"
|tip This pet requires you complete the Mastering the Menagerie daily after gaining Menagerie Level 3.
|tip The daily reward will be a Big Bag of Pet Supplies from which you have a chance of getting this pet.
confirm
step
talk Lio the Lioness##85418
accept Mastering the Menagerie##37248 |goto Lunarfall/0 28.6,39.2 |or
accept Mastering the Menagerie##37645 |goto Lunarfall/0 28.6,39.2 |or
accept Mastering the Menagerie##37644 |goto Lunarfall/0 28.6,39.2 |or
step
collect Albino Chimaeraling##119434 |use Big Bag of Pet Supplies##118697
|next "done"
step
label "buy"
talk Auctioneer Chilton##8670
buy Albino Chimaeraling##119434 |goto Stormwind City 61.0,71.6
step
label "done"
learnpet Albino Chimaeraling##1385 |use Albino Chimaeraling##119434
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Bronze Whelpling",{
patch='112100',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Dragonkin pet: Bronze Whelpling.",
pet=1563,
},[[
step
kill Ironmarch Scout##76886+, Ironmarch Grunt##76189+, Ironmarch Leadspitter##76651+, Ironmarch Executioner##82774+, Ironmarch Forager##77090+ |goto Blasted Lands/0 61.0,32.9
|tip Drops off of Iron Horde mobs in the Blasted Lands only during the pre-launch invasion event.
collect Time-Locked Box##118675
learnpet Bronze Whelpling##1563 |use Time-Locked Box##118675
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Lanticore Spawnling",{
patch='60100',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Dragonkin pet: Lanticore Spawnling.",
pet=1533,
},[[
step
Drops from the 100 Rare Elite The Lanticore in the Upper Blackrock Spire 5-man dungeon
|tip The Lanticore is not a guaranteed spawn, and will require a 5-man group to complete.
kill The Lanticore##77081
|tip He is located just to the right of the second boss, Kyrak.
collect Lanticore Spawnling##117528
learnpet Lanticore Spawnling##1533 |use Lanticore Spawnling##117528
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Abyssius",{
patch='61000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Elemental pet: Abyssius.",
pet=1624,
},[[
step
kill Supremus##22898 |goto Black Temple/3 16.4,51.1
|tip This pet has a small chance to drop from Supremus in the Black Temple.
collect Shard of Supremus##122106 |n
learnpet Abyssius##1624 |use Shard of Supremus##122106
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Blazing Cindercrawler",{
patch='60100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Elemental pet: Blazing Cindercrawler.",
pet=1517,
},[[
step
This pet is sold by Midsummer Merchant during the Midsummer Fire Festival Holiday
|tip The merchants are in the captial cities
To earn tokens, _click here_. |next "Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Quests" |confirm |only if ZGV.guidesets["DailiesACATA"]
collect 350 Burning Blossom##23247
confirm
step
talk Midsummer Merchant##26124
buy 1 Blazing Cindercrawler##116439
learnpet Lovebird Hatchling##1511 |use Blazing Cindercrawler##116439
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Crazy Carrot",{
patch='60100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Elemental pet: Crazy Carrot.",
pet=1396,
},[[
step
collect 1000 Draenic Seeds##116053
talk Naron Bloomthistle##85344 |goto Lunarfall/0 58.9,53.5
buy 1 Crazy Carrot##110721
learnpet Crazy Carrot##1396 |use Crazy Carrot##110721
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Doom Bloom",{
patch='60100',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Elemental pet: Doom Bloom.",
pet=1564,
},[[
step
kill Mandrakor##84406 |goto Gorgrond 50.6,53.2
collect Doom Bloom##118709
learnpet Doom Bloom##1564 |use Doom Bloom##118709
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Forest Sproutling",{
patch='60100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Elemental pet: Forest Sproutling.",
pet=1430,
},[[
step
This pet requires you to be Revered with Steamwheedle "Preservation Society"
|tip To gain reputation with this faction you will need to collect turn in items.
|tip These items can be found by killing level 35-40 mobs in Nagrand, from chests, or from rare spawns in Nagrand.
confirm
step
talk Gazrix Gearlock##88482 |goto Stormshield/0 43.1,77.8
buy 1 Captured Forest Sproutling##119149
learnpet Forest Sproutling##1430 |use Captured Forest Sproutling##119149
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Hatespark the Tiny",{
patch='60100',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Elemental pet: Hatespark the Tiny.",
pet=1544,
},[[
step
This pet requires you to complete the 40 man LFR version of Molten Core during WoW's 10th Anniversary
|tip This pet does not have a 100 percent drop rate.
|tip Complete the 40 man LFR version of Molten Core during WoW's 10th Anniversary.
confirm
step
collect Hatespark the Tiny##118574
learnpet Hatespark the Tiny##1544 |use Hatespark the Tiny##118574
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Molten Corgi",{
patch='60100',
source='Achievement',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Elemental pet: Molten Corgi.",
pet=1451,
},[[
step
This pet is only attainable during WoW's 10th Anniversary (November 21, 2014 to January 6, 2015)
|tip Complete the _WoW's 10th Anniversary event. |achieve 8820
step
|tip After completing, check your in-game mailbox.
collect Molten Corgi##115301
learnpet Molten Corgi##1451 |use Molten Corgi##115301
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Nightshade Sproutling",{
patch='60100',
source='Profession',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Elemental pet: Nightshade Sproutling.",
pet=1432,
},[[
step
Click here to farm the pet yourself. |confirm |next "nightshade"
Click here to be taken to the Auctioneer to purchase it. |confirm |next "buy"
|tip This pet can be farmed, or purchased from the Auction House.
step
label "nightshade"
|tip This pet will drop from a Disturbed Podling while picking herbs in Frostfire Ridge.
|tip Keep picking herbs in Frostfire Ridge while searching for Disturbed Podling.
|tip This pet can also drop from the sproutlings that can spawn while picking the herbs from your herb garden in your garrison, but is much less likely as one can only pick these herbs once a day per character.
clicknpc Disturbed Podling##85408
collect Nightshade Sproutling##118595
|next "done"
step
label "buy"
talk Auctioneer Chilton##8670 |goto Stormwind City 61.0,71.6
buy Nightshade Sproutling##118595
step
label "done"
learnpet Nightshade Sproutling##1432 |use Nightshade Sproutling##118595
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Soul of the Forge",{
patch='60100',
source='Profession',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Elemental pet: Soul of the Forge.",
pet=1569,
},[[
step
Click here to gather and create the pet yourself. |confirm |next "create"
Click here to be taken to the Auctioneer to purchase it. |confirm |next "buy"
|tip This pet requires you to either have level 600 Blacksmithing, or purchase it from the Auction House.
step
label "create"
collect 1000 True Iron Ore##109119
collect 500 Blackrock Ore##109118
map Shadowmoon Valley D
path follow loose; loop; ants curved
path	42.0,18.7	41.1,22.6	51.4,21.9
path	52.4,26.4	51.0,33.4	66.2,30.2
path	66.9,34.5	63.6,36.6	62.8,49.8
path	66.1,58.2	61.3,57.7	58.1,60.3
path	62.4,62.4	61.4,69.4	55.5,61.1
path	53.4,64.5	53.6,69.0	56.8,72.8
path	54.5,75.1	50.4,68.0	43.0,72.4
path	38.1,73.9	37.1,66.9	34.4,63.4
path	38.2,57.2	41.7,52.2	40.1,46.7
path	39.3,41.2	35.1,35.5	30.9,36.5
path	26.7,31.2	25.0,28.7	21.5,25.1
path	24.4,21.9	25.5,19.6	24.0,15.9
path	24.3,8.3	29.1,13.2	26.9,14.6
path	31.6,19.3	33.2,22.7	33.9,26.6
path	37.1,21.3	37.1,21.3	56.7,34.2
path	55.4,34.3
|tip Make sure you are tracking minerals, and gather all Blackrock and True Iron ore you see as you follow this path.
step
Create 50 _Truesteel Ingots_. |collect 50 Truesteel Ingot##108257
collect 10 Sorcerous Fire##113261
step
Create 1 Soul of the Forge. |collect Soul of the Forge##177169
|next "done"
step
label "buy"
talk Auctioneer Chilton##8670 |goto Stormwind City 61.0,71.6
buy 1 Soul of the Forge##177169
step
label "done"
learnpet Soul of the Forge##1569 |use Soul of the Forge##177169
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Stout Alemental",{
patch='60100',
source='WorldEvent',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Elemental pet: Stout Alemental.",
pet=1518,
},[[
step
This pet is only availiable during the Brewfest Holiday
|tip You will need to complete the quests, then do the dailies to amass brewest tokens.
collect 200 Brewfest Prize Tokens##37829
_Click here_ if you need to do the quests leading up to the dailies. |next "Events Guides\\Brewfest\\Brewfest Quests" |confirm |confirm |only if ZGV.guidesets["DailiesACATA"]
_Click here_ if you have completed the quests and only need the dailies. |next "Events Guides\\Brewfest\\Brewfest Dailies" |confirm |confirm |only if ZGV.guidesets["DailiesACATA"]
step
talk Belbi Quikswitch##23710 |goto Dun Morogh/0 56.2,37.8
buy 1 Stout Alemental##116756
learnpet Stout Alemental##1518 |use Stout Alemental##116756
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Sun Sproutling",{
patch='60100',
source='Quest',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Elemental pet: Sun Sproutling.",
pet=1434,
},[[
step
Click here to farm the pet yourself. |confirm |next "sproutling"
Click here to be taken to the Auctioneer to purchase it. |confirm |next "buy"
|tip This pet can be farmed, or purchased from the Auction House.
step
label "sproutling"
|tip This pet requires you complete the Mastering the Menagerie daily after gaining Menagerie Level 3.
|tip The daily reward will be a Big Bag of Pet Supplies from which you have a chance of getting this pet.
confirm
step
talk Lio the Lioness##85418
accept Mastering the Menagerie##37248 |goto Lunarfall/0 28.6,39.2 |or
accept Mastering the Menagerie##37645 |goto Lunarfall/0 28.6,39.2 |or
accept Mastering the Menagerie##37644 |goto Lunarfall/0 28.6,39.2 |or
step
collect Sun Sproutling##118598 |use Big Bag of Pet Supplies##118697
|next "done"
step
label "buy"
talk Auctioneer Chilton##8670 |goto Stormwind City 61.0,71.6
buy Sun Sproutling##118598
step
label "done"
learnpet Sun Sproutling##1434 |use Sun Sproutling##118598
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Amberbarb Wasp",{
patch='60100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Amberbarb Wasp.",
pet=1465,
},[[
step
The _Amberbarb Wasps_ are level 25
|tip This pet is a yellow wasp and is found very commonly around Gorgrond.
Challenge one to a pet battle and capture it.
learnpet Amberbarb Wasp##1465 |goto Gorgrond 51.6,70.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Axebeak Hatchling",{
patch='60100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Axebeak Hatchling.",
pet=1470,
},[[
step
The _Axebeak Hatchlings_ are level 25
|tip This bird has razor sharp teeth and silver tipped wings.
Challenge one to a pet battle and capture it.
learnpet Axebeak Hatchling##1470 |goto Gorgrond 59.2,52.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Bloodsting Wasp",{
patch='60100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Bloodsting Wasp.",
pet=1462,
},[[
step
The _Bloodsting Wasps_ are level 25
|tip This pet is a red flying wasp.
Challenge one to a pet battle and capture it.
learnpet Bloodsting Wasp##1462 |goto Spires of Arak 44.2,49.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Bone Wasp",{
patch='60100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Bone Wasp.",
pet=1458,
},[[
step
This pet can only be earned as a Horde character
|tip It can be bought in the auction house.
confirm
step
talk Auctioneer Chilton##8670 |goto Stormwind City 61.0,71.6
buy 1 Bone Wasp##119146
learnpet Bone Wasp##1458|use Bone Wasp##119146
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Brilliant Bloodfeather",{
patch='60100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Brilliant Bloodfeather.",
pet=1572,
},[[
step
The _Brilliant Bloodfeathers_ are level 25
|tip This pet is a very bright pink colored bird.
Challenge one to a pet battle and capture it.
learnpet Brilliant Bloodfeather##1572 |goto Talador 65.6,31.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Brilliant Spore",{
patch='60100',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Brilliant Spore.",
pet=1540,
},[[
step
kill Rotcap##85504 |goto Spires of Arak 38.4,27.8
collect Brilliant Spore##118107
learnpet Brilliant Spore##1540 |use Brilliant Spore##118107
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Crimson Spore",{
patch='60100',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Crimson Spore.",
pet=1537,
},[[
step
click Strange Spore##237511 |goto Gorgrond/0 57.1,65.3
collect Crimson Spore##118106
learnpet Crimson Spore##1537 |use Crimson Spore##118106
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Dread Hatchling",{
patch='54700',
source='Promotion',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Dread Hatchling.",
pet=1386,
},[[
step
This pet requires you to have purchased the Warlords of Draenor Collector's Edition
|tip After purchasing, check your in-game mailbox.
confirm
step
collect Dread Hatchling##109014
learnpet Dread Hatchling##1386 |use Dread Hatchling##109014
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Everbloom Peachick",{
patch='60100',
source='Quest',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Everbloom Peachick.",
pet=1566,
},[[
step
This quest is completed in The Everbloom, and will require a 5-man group to complete
confirm
step
talk Mylune##88025
accept For the Birds##37150 |goto Lunarfall 33.76,50.72
step
Queue up for _The Everbloom_.
click Rustling Peachick Nest##237483
collect Tiny Peachick Hatchling##118652
step
talk Mylune##88025
turnin For the Birds##37150 |goto Lunarfall 33.76,50.72
learnpet Everbloom Peachick##1566 |use Everbloom Peachick##118921
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Firewing",{
patch='60100',
source='Quest',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Firewing.",
pet=1545,
},[[
step
Click here to farm the pet yourself. |confirm |next "farmwing"
Click here to be taken to the Auctioneer to purchase it. |confirm |next "buy"
|tip This pet can be farmed, or purchased from the Auction House.
step
label "farmwing"
|tip This pet requires you complete the Mastering the Menagerie daily after gaining Menagerie Level 3.
|tip The daily reward will be a Big Bag of Pet Supplies from which you have a chance of getting this pet.
confirm
step
talk Lio the Lioness##85418
accept Mastering the Menagerie##37248 |goto Lunarfall/0 28.6,39.2 |or
accept Mastering the Menagerie##37645 |goto Lunarfall/0 28.6,39.2 |or
accept Mastering the Menagerie##37644 |goto Lunarfall/0 28.6,39.2 |or
step
collect Firewing##118578 |use Big Bag of Pet Supplies##118697
|next "done"
step
label "buy"
talk Auctioneer Chilton##8670 |goto Stormwind City 61.0,71.6
buy Firewing##118578
step
label "done"
learnpet Firewing##1545 |use Firewing##118578
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Fruit Hunter",{
patch='60100',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Fruit Hunter.",
pet=1471,
},[[
step
This pet hatches after 3 days from Mysterious Egg.
|tip The egg is looted from a Rylak nest on top of a roof in Grom'gar, Frostfire Ridge.
|tip To reach the nest, reach the top of the snowy hill, then jump down onto the roof of the main building.
|tip You can see a platform with rylaks, their handlers, and nests.
collect Cracked Egg##112108
step
collect Fruit Hunter##117564 |use Cracked Egg##112108
learnpet Fruit Hunter##1471 |use Fruit Hunter##117564
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Golden Dawnfeather",{
patch='60100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Golden Dawnfeather.",
pet=1573,
},[[
step
The _Golden Dawnfeathers_ are level 25
|tip This pet is a purple feathered peacock bird.
Challenge one to a pet battle and capture it.
learnpet Golden Dawnfeather##1573 |goto Spires of Arak 41.2,57.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Ikky",{
patch='60100',
source='Quest',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Ikky.",
pet=1532,
},[[
step
clicknpc Kaliri Egg##80470
accept Ikky's Egg##34838 |goto Spires of Arak/0 45.4,36.6
turnin Ikky's Egg##34838 |goto Spires of Arak/0 45.4,36.6
learnpet Ikky##1532
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Junglebeak",{
patch='60100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Junglebeak.",
pet=1469,
},[[
step
The _Junglebeaks_ are level 25
|tip This pet is very common around the jungle parts of Gorgrond, it is a green winged bird.
Challenge one to a pet battle and capture it.
learnpet Junglebeak##1469 |goto Gorgrond 42.4,73.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Kaliri Hatchling",{
patch='60200',
source='Vendor',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Kaliri Hatchling.",
pet=1597,
},[[
step
talk Vesharr##87123 |goto Spires of Arak/0 46.2,45.4
buy 1 Kaliri Hatchling##120051
learnpet Kaliri Hatchling##1597 |use Kaliri Hatchling##120051
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Mechanical Axebeak",{
patch='60100',
source='Profession',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Mechanical Axebeak.",
pet=1403,
},[[
step
Click here to gather and create the pet yourself. |confirm |next "create"
Click here to be taken to the Auctioneer to purchase it. |confirm |next "buy"
|tip This pet requires you to either have level 600 Engineering, or purchase it from the Auction House.
step
label "create"
collect 130 True Iron Ore##109119
collect 130 Blackrock Ore##109118
map Shadowmoon Valley D
path follow loose; loop; ants curved
path	42.0,18.7	41.1,22.6	51.4,21.9
path	52.4,26.4	51.0,33.4	66.2,30.2
path	66.9,34.5	63.6,36.6	62.8,49.8
path	66.1,58.2	61.3,57.7	58.1,60.3
path	62.4,62.4	61.4,69.4	55.5,61.1
path	53.4,64.5	53.6,69.0	56.8,72.8
path	54.5,75.1	50.4,68.0	43.0,72.4
path	38.1,73.9	37.1,66.9	34.4,63.4
path	38.2,57.2	41.7,52.2	40.1,46.7
path	39.3,41.2	35.1,35.5	30.9,36.5
path	26.7,31.2	25.0,28.7	21.5,25.1
path	24.4,21.9	25.5,19.6	24.0,15.9
path	24.3,8.3	29.1,13.2	26.9,14.6
path	31.6,19.3	33.2,22.7	33.9,26.6
path	37.1,21.3	37.1,21.3	56.7,34.2
path	55.4,34.3
|tip Make sure you are tracking minerals, and gather all Blackrock and True Iron ore you see as you follow this path.
step
Create 50 _Gearspring Parts_. |collect 50 Gearspring Parts##111366
step
Create 1 _Mechanical Axebeak_. |collect Mechanical Axebeak##111402
|next "done"
step
label "buy"
talk Auctioneer Chilton##8670 |goto Stormwind City 61.0,71.6
buy 1 Mechanical Axebeak##111402
step
label "done"
learnpet Mechanical Axebeak##1403 |use Mechanical Axebeak##111402
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Mystical Spring Bouquet",{
patch='60100',
source='WorldEvent',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Mystical Spring Bouquet.",
pet=1514,
},[[
step
This pet can only be obtained during the Noblegarden festival, and it is non-combative
collect 100 Noblegarden Chocolate##44791
step
talk Noblegarden Vendor##32836 |goto Elwynn Forest 43.0,65.2
buy 1 Mystical Spring Bouquet##116258
learnpet Mystical Spring Bouquet##1514 |use Mystical Spring Bouquet##116258
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Royal Moth",{
patch='60100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Royal Moth.",
pet=1587,
},[[
step
The _Royal Moths_ are level 25
|tip This pet is a very common blue moth.
Challenge one to a pet battle and capture it.
learnpet Royal Moth##1587 |goto Shadowmoon Valley D 39.2,39.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Royal Peacock",{
patch='60100',
source='Achievement',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Royal Peacock.",
pet=1411,
},[[
step
You need to have earned the achievement "Draenor Safari"
|tip Complete the achievement Draenor Safari. |achieve 9685
step
|tip After completing, check your in-game mailbox.
collect Royal Peacock##111866
learnpet Royal Peacock##80101 |use Royal Peacock##111866
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Sentinel's Companion",{
patch='60100',
source='Quest',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Sentinel's Companion.",
pet=1567,
},[[
step
This quest is completed in Shadowmoon Burial Grounds Heroic, and will require a 5-man group to complete
|tip This requires your Lunarfall Inn to be at level 3.
confirm
step
talk Sentinel's Companion##88025
accept The Huntresses##37164 |goto Lunarfall 33.76,50.72
step
|tip Queue up for Shadowmoon Burial Grounds Heroic.
confirm
step
click Silver-Lined Arrow##237471 |goto Shadowmoon Burial Grounds 84.1,80.7
collect Silver-Lined Arrow##118626
step
talk Sentinel's Companion##88225
turnin The Huntresses##37164 |goto Lunarfall 33.76,50.72
learnpet Sentinel's Companion##1567 |use Sentinel's Companion##118923
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Shadow Sporebat",{
patch='60200',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Shadow Sporebat.",
pet=1599,
},[[
step
The _Shadow Sporebats_ are level 25
|tip This pet is a rare spawn pet and can only be found in Zangarra.
Challenge one to a pet battle and capture it.
learnpet Shadow Sporebat##1599 |goto Talador/0 84.9,29.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Sky Fry",{
patch='60100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Sky Fry.",
pet=1575,
},[[
step
This pet requires you to be Revered with Sha'tari Defense
confirm
step
talk Maaria##85427 |goto Lunarfall/0 52.4,43.5
buy 1 Sky Fry##119150
learnpet Sky Fry##1575 |use Sky Fry##119150
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Stormwing",{
patch='60100',
source='Achievement',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Stormwing.",
pet=1546,
},[[
step
You need to have earned the achievement "So. Many. Pets."
|tip Complete the achievement So. Many. Pets. |achieve 9643
step
|tip After completing, check your in-game mailbox.
collect Stormwing##118577
learnpet Stormwing##1546 |use Stormwing##118577
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Sunfire Kaliri",{
patch='60100',
source='Quest',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Sunfire Kaliri.",
pet=1570,
},[[
step
Click here to farm the pet yourself. |confirm |next "farm"
Click here to be taken to the Auctioneer to purchase it. |confirm |next "buy"
|tip This pet can be farmed, or purchased from the Auction House.
step
label "farm"
|tip This pet requires you complete the Mastering the Menagerie daily after gaining Menagerie Level 3.
|tip The daily reward will be a Big Bag of Pet Supplies from which you have a chance of getting this pet.
confirm
step
talk Lio the Lioness##85418
accept Mastering the Menagerie##37248 |goto Lunarfall/0 28.6,39.2 |or
accept Mastering the Menagerie##37645 |goto Lunarfall/0 28.6,39.2 |or
accept Mastering the Menagerie##37644 |goto Lunarfall/0 28.6,39.2 |or
step
collect Sunfire Kaliri##119468 |use Big Bag of Pet Supplies##118697
|next "done"
step
label "buy"
talk Auctioneer Chilton##8670 |goto Stormwind City 61.0,71.6
buy FSunfire Kaliri##119468
step
label "done"
learnpet Sunfire Kaliri##1570 |use Sunfire Kaliri##119468
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Swamplighter Firefly",{
patch='60100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Swamplighter Firefly.",
pet=1590,
},[[
step
The _Swamplighter Fireflies_ are level 25
|tip Firefly found in the swampy beaches of Spire of Arakk.
Challenge one to a pet battle and capture it.
learnpet Swamplighter Firefly##1590 |goto Spires of Arak/0 54.5,87.3
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Teroclaw Hatchling",{
patch='60100',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Teroclaw Hatchling.",
pet=1416,
},[[
step
click the Teroclaw Nest##230643 |goto Talador 72.8,35.6
collect Teroclaw Hatchling##112699
learnpet Teroclaw Hatchling##1416 |use Teroclaw Hatchling##112699
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Twilight Wasp",{
patch='60100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Twilight Wasp.",
pet=1464,
},[[
step
The _Twilight Wasps_ are level 25
|tip This pet is a snow colored wasp.
Challenge one to a pet battle and capture it.
learnpet Twilight Wasp##1464 |goto Frostfire Ridge/0 51.8,20.7
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Umbrafen Spore",{
patch='60100',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Umbrafen Spore.",
pet=1538,
},[[
step
click Strange Spore##237511 |goto Shadowmoon Valley D/0 55.8,19.9
collect Umbrafen Spore##118104
learnpet Umbrafen Spore##1538 |use Umbrafen Spore##118104
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Veilwatcher Hatchling",{
patch='60200',
source='Vendor',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Veilwatcher Hatchling.",
pet=1596,
},[[
step
talk Vesharr##87123 |goto Spires of Arak 45.2,46.2
|tip This pet costs 1,000 gold.
buy Veilwatcher Hatchling##120050
learnpet Veilwatcher Hatchling##1596 |use Veilwatcher Hatchling##120050
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Waterfly",{
patch='60100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Waterfly.",
pet=1593,
},[[
step
The Waterflies are level 25
|tip This pet is a blue firefly found frequently near the rivers of the new Shadowmoon Valley.
Challenge one to a pet battle and capture it.
learnpet Waterfly##1593 |goto Shadowmoon Valley D/0 53.8,66.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Wood Wasp",{
patch='60100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Wood Wasp.",
pet=1463,
},[[
step
The _Wood Wasps_ are level 25
|tip This is a green wasp flying pet and is found in a small area where a bonus objective is.
Challenge one to a pet battle and capture it.
learnpet Wood Wasp##1463 |goto Gorgrond/0 49.2,80.9
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Fragment of Desire",{
patch='61000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Humanoid pet: Fragment of Desire.",
pet=1627,
},[[
step
kill Essence of Anger##23420 |goto Black Temple/4 62.5,85.4
|tip This pet has a small chance to drop from Essence of Anger in the Black Temple.
collect Fragment of Desire##122109 |n
learnpet Fragment of Desire##1627 |use Shard of Supremus##122106
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Grommloc",{
patch='60200',
source='Promotion',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Humanoid pet: Grommloc.",
pet=1602,
},[[
step
This pet requires you to have purchased access to BlizzCon 2014
|tip After purchasing, check your in-game mailbox.
confirm
step
collect Grommloc##118517
learnpet Grommloc##1602 |use Grommloc##118517
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Ore Eater",{
patch='60100',
source='Profession',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Humanoid pet: Ore Eater.",
pet=1495,
},[[
step
This pet will drop from a Goren Protector spawned while mining in Shadowmoon Valley
|tip Keep mining in Shadowmoon Valley until the Goren Protector spawns.
kill Goren Protector##85294
collect Red Goren Egg##118919
learnpet Ore Eater##1495 |use Red Goren Egg##118919
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Sister of Temptation",{
patch='61000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Humanoid pet: Sister of Temptation.",
pet=1628,
},[[
step
kill Mother Shahraz##22947 |goto Black Temple/6 67.2,37.1
|tip This pet has a small chance to drop from Mother Shahraz in the Black Temple.
collect Sultry Grimoire##122110 |n
learnpet Sister of Temptation##1628 |use Sultry Grimoire##122110
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Treasure Goblin",{
patch='54200',
source='Promotion',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Humanoid pet: Treasure Goblin.",
pet=1365,
},[[
step
This pet requires you to have purchased the Diablo 3: Reaper of Souls Collector's Edition
|tip After purchasing, check your in-game mailbox.
confirm
step
collect Treasure Goblin##106256
learnpet Treasure Goblin##1365 |use Treasure Goblin##106256
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Wretched Servant",{
patch='61000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Humanoid pet: Wretched Servant.",
pet=1634,
},[[
step
kill Lady Sacrolash##25165 |goto Sunwell Plateau/1 64.0,32.6
kill Grand Warlock Alythess##25166 |goto Sunwell Plateau/1 64.0,32.6
|tip This pet has a small chance to drop from the Eredar Twins in Sunwell Plateau.
collect Servant's Bell##122115 |n
learnpet Wretched Servant##1634 |use Servant's Bell##122115
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Chaos Pup",{
patch='61000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Magic pet: Chaos Pup.",
pet=1633,
},[[
step
kill Entropius##25840 |goto Sunwell Plateau/2 46.6,23.9
kill M'uru##25741 |goto Sunwell Plateau/2 46.6,23.9
|tip This pet has a small chance to drop from the M'uru/Entropius in Sunwell Plateau.
collect Void Collar##122114 |n
learnpet Chaos Pup##1633 |use Void Collar##122114
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Elekk Plushie",{
patch='60100',
source='Profession',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Magic pet: Elekk Plushie.",
pet=1426,
},[[
step
Click here to gather and create the pet yourself |confirm |next "create"
Click here to be taken to the Auctioneer to purchase it |confirm |next "buy"
|tip This pet requires you to either have level 600 Tailoring, or purchase it from the Auction House.
step
label "create"
collect 1000 Sumptuous Fur##111557
collect 500 Gorgrond Flytrap##109126
step
Create 50 _Hexweave Cloth_. |collect 50 Hexweave Cloth##111556
collect 10 Sorcerous Earth##113263
step
create 1 Elekk Plushie##168849,Tailoring,1 total
|next "done"
step
label "buy"
talk Auctioneer Chilton##8670 |goto Stormwind City 61.0,71.6
buy 1 Elekk Plushie##113216
step
label "done"
learnpet Elekk Plushie##1426 |use Elekk Plushie##113216
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Eye of Observation",{
patch='60100',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Magic pet: Eye of Observation.",
pet=1576,
},[[
step
This pet requires you to kill a 100 Rare Elite called Orumo the Observer
|tip The mechanics and difficulty of this fight require at least three players to complete.
|tip This pet does not have a 100 percent drop rate.
kill Orumo the Observer##87668 |goto Talador 31.4,47.5
collect Eye of Observation##119170
learnpet Eye of Observation##1576 |use Eye of Observation##119170
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Hyjal Wisp",{
patch='61000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Magic pet: Hyjal Wisp.",
pet=1631,
},[[
step
kill Archimonde##17968 |goto Hyjal Summit/0 78.8,31.4
|tip This pet has a small chance to drop from Archimonde in Hyjal Summit.
collect Hyjal Wisp##122112 |n
learnpet Hyjal Wisp##1631 |use Hyjal Wisp##122112
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\K'ute",{
patch='61000',
source='Achievement',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Magic pet: K'ute.",
pet=1635,
},[[
step
This pet is a reward for completing the achievement "Raiding with Leashes III: Drinkin' from the Sunwell"
|tip This requires you to collect all of the pets from Hyjal Summit, Black Temple, and Sunwell Plateau.
achieve 9824
collect Holy Chime##122116 |n
learnpet K'ute##1635 |use Holy Chime##122116
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Lil' Leftovers",{
patch='60100',
source='Profession',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Magic pet: Lil' Leftovers.",
pet=1395,
},[[
step
This pet requires you to at least have level 600 Cooking, or purchase it from the Auction House
|tip This pet is aquired randomly from cooking Warlords of Draenor food.
confirm
step
learnpet Lil' Leftovers##1395 |use Lil' Leftovers##110684
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Netherspawn, Spawn of Netherspawn",{
patch='60100',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Magic pet: Netherspawn, Spawn of Netherspawn.",
pet=1524,
},[[
step
kill Netherspawn##83401 |goto Nagrand 47.6,70.8
collect Netherspawn, Spawn of Netherspawn##116815
learnpet Netherspawn, Spawn of Netherspawn##1524 |use Netherspawn, Spawn of Netherspawn##116815
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Servant of Demidos",{
patch='60200',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Magic pet: Servant of Demidos.",
pet=1601,
},[[
step
kill Demidos##84911
|tip Demidos is a level 10-40 rare elite, depending on your level and may require a group.
collect Servant of Demidos##119431 |goto Shadowmoon Valley D/0 46.00,71.58 |or
|tip This pet is not a gauranteed drop.
'|learnpet Servant of Demidos##1601 |or
step
use the Servant of Demidos##119431
Learn the "Servant of Demidos" Battle Pet |learnpet Servant of Demidos##1601
step
_Congratulations!_
You Collected the "Servant of Demidos" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Syd the Squid",{
patch='60100',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Magic pet: Syd the Squid.",
pet=1478,
},[[
step
This pet is a reward from Greater Darkmoon Pet Supplies gathered from the pet daily on Darkmoon Island
|tip It is not a guaranteed drop, and may take several attempts.
confirm
step
talk Christoph VonFeasel##85519
accept A New Darkmoon Challenger!##36471 |goto Darkmoon Island 47.4,62.2
turnin A New Darkmoon Challenger!##36471 |goto Darkmoon Island 47.4,62.2
collect Greater Darkmoon Pet Supplies##116062
step
collect Syd the Squid##116064 |use Greater Darkmoon Pet Supplies##116062
learnpet Syd the Squid##1478 |use Syd the Squid##116064
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Trunks",{
patch='60200',
source='Achievement',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Magic pet: Trunks.",
pet=1605,
},[[
step
To earn Trunks, you must complete the An Awfully Big Adventure achievement
|tip Defeat the trainers with an Elekk Plushie on your team. |achieve 9069
|tip This achievement will require many different max level pets.
step
|tip Trunks should be delivered via in game mail.
collect Trunks##120121
learnpet Trunks##1605 |use Trunks##120121
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Ancient Nest Guardian",{
patch='41000',
source='Profession',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Mechanical pet: Ancient Nest Guardian.",
pet=1531,
},[[
step
This pet is a rare Archaeology "Fossil" solve
goto Stormwind City,85.8,25.9 |only if skillmax("Archaeology")<1
talk Harrison Jones##44238 |only if skillmax("Archaeology")<1
skillmax Archaeology,75 |only if skillmax("Archaeology")<1
skill Archaeology,525
step
|tip Open your world map, find Arrakoa dig sites in Draenor, and go to them.
Use your _Survey_ ability inside the dig site area. |cast Survey##80451
|tip A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts.
|tip Click the Archaeology Fragments that spawn on the ground.
|tip You're looking for a rare artifact in the "Arrakoa" tab called "Ancient Nest Guardian". Solve this Archaeology puzzle.
confirm
step
collect 1 Ancient Nest Guardian##117354
learnpet Pterrordax Hatchling##309 |use Pterrordax Hatchling##69821
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Draenei Micro Defender",{
patch='60100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Mechanical pet: Draenei Micro Defender.",
pet=1450,
},[[
step
This pet requires you to be Revered with "Council of Exarchs"
confirm
step
talk Vindicator Nuurem##85932 |goto Stormshield/0 46.6,76.8
buy Draenei Micro Defender##119142
learnpet Draenei Micro Defender##1450 |use Draenei Micro Defender##119142
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Iron Starlette",{
patch='60100',
source='Quest',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the  Mechanical pet: Iron Starlette.",
pet=1387,
},[[
leechsteps "Events Guides\\Warlords of Draenor\\Iron Horde Invasion" 1-37
step
use the Iron Starlette##111660
Learn the "Iron Starlette" Battle Pet |learnpet Iron Starlette##1387
step
_Congratulations!_
You Collected the "Iron Starlette" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Lifelike Mechanical Frostboar",{
patch='60100',
source='Profession',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Mechanical pet: Lifelike Mechanical Frostboar.",
pet=1412,
},[[
step
Click here to gather and create the pet yourself. |confirm |next "create"
Click here to be taken to the Auctioneer to purchase it. |confirm |next "buy"
|tip This pet requires you to either have level 600 Engineering, or purchase it from the Auction House.
step
label "create"
collect 130 True Iron Ore##109119
collect 130 Blackrock Ore##109118
map Shadowmoon Valley D
path follow loose; loop; ants curved
path	42.0,18.7	41.1,22.6	51.4,21.9
path	52.4,26.4	51.0,33.4	66.2,30.2
path	66.9,34.5	63.6,36.6	62.8,49.8
path	66.1,58.2	61.3,57.7	58.1,60.3
path	62.4,62.4	61.4,69.4	55.5,61.1
path	53.4,64.5	53.6,69.0	56.8,72.8
path	54.5,75.1	50.4,68.0	43.0,72.4
path	38.1,73.9	37.1,66.9	34.4,63.4
path	38.2,57.2	41.7,52.2	40.1,46.7
path	39.3,41.2	35.1,35.5	30.9,36.5
path	26.7,31.2	25.0,28.7	21.5,25.1
path	24.4,21.9	25.5,19.6	24.0,15.9
path	24.3,8.3	29.1,13.2	26.9,14.6
path	31.6,19.3	33.2,22.7	33.9,26.6
path	37.1,21.3	37.1,21.3	56.7,34.2
path	55.4,34.3
|tip Make sure you are tracking minerals, and gather all Blackrock and True Iron ore you see as you follow this path.
step
Create 50 _Gearspring Parts_. |collect 50 Gearspring Parts##111366
collect 40 Sumptuous Fur##111557
step
Create 1 Lifelike Mechanical Frostboar |collect Lifelike Mechanical Frostboar##112057
|next "done"
step
label "buy"
talk Auctioneer Chilton##8670 |goto Stormwind City 61.0,71.6
buy 1 Lifelike Mechanical Frostboar##112057
step
label "done"
learnpet Lifelike Mechanical Frostboar##1412 |use Lifelike Mechanical Frostboar##112057
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Mechanical Scorpid",{
patch='60100',
source='Profession',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Mechanical pet: Mechanical Scorpid.",
pet=1565,
},[[
step
Click here to gather and create the pet yourself. |confirm |next "create"
Click here to be taken to the Auctioneer to purchase it. |confirm |next "buy"
|tip This pet requires you to either have level 600 Engineering, or purchase it from the Auction House.
step
label "create"
collect 80 True Iron Ore##109119
collect 90 Blackrock Ore##109118
map Shadowmoon Valley D
path follow loose; loop; ants curved
path	42.0,18.7	41.1,22.6	51.4,21.9
path	52.4,26.4	51.0,33.4	66.2,30.2
path	66.9,34.5	63.6,36.6	62.8,49.8
path	66.1,58.2	61.3,57.7	58.1,60.3
path	62.4,62.4	61.4,69.4	55.5,61.1
path	53.4,64.5	53.6,69.0	56.8,72.8
path	54.5,75.1	50.4,68.0	43.0,72.4
path	38.1,73.9	37.1,66.9	34.4,63.4
path	38.2,57.2	41.7,52.2	40.1,46.7
path	39.3,41.2	35.1,35.5	30.9,36.5
path	26.7,31.2	25.0,28.7	21.5,25.1
path	24.4,21.9	25.5,19.6	24.0,15.9
path	24.3,8.3	29.1,13.2	26.9,14.6
path	31.6,19.3	33.2,22.7	33.9,26.6
path	37.1,21.3	37.1,21.3	56.7,34.2
path	55.4,34.3
|tip Make sure you are tracking minerals, and gather all Blackrock and True Iron ore you see as you follow this path.
step
Create 30 _Gearspring Parts_. |collect 30 Gearspring Parts##111366
collect 10 Blackrock Ore##109118
step
Create 1 Mechanical Scorpid. |collect Mechanical Scorpid##118741
|next "done"
step
label "buy"
talk Auctioneer Chilton##8670 |goto Stormwind City 61.0,71.6
buy 1 Mechanical Scorpid##118741
step
label "done"
learnpet Mechanical Scorpid##1565 |use Mechanical Scorpid##118741
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Race MiniZep",{
patch='61000',
source='Achievement',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Mechanical pet: Race MiniZep.",
pet=1636,
},[[
step
This pet is earned as a reward for completing the achievement "Big Rocketeer: Gold" at the Darkmoon Faire
|achieve 9805
collect Race MiniZep Controller##122125 |n
learnpet Race MiniZep##1636 |use Race MiniZep Controller##122125
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Sky-Bo",{
patch='60100',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Mechanical pet: Sky-Bo.",
pet=1467,
},[[
step
Click here to gather and create the Blingtron 5000 yourself so you can always do the daily. |confirm |next "create"
Click here to be taken to the Auctioneer to purchase the pet directly. |confirm |next "buy"
|tip This pet is a possible reward from the Blingtron 5000 daily.
|tip If you do not have your own Blingtron 5000 you will have to rely on another player using it while you are present.
step
label "create"
talk Zaren Hoffle##77365
buy 1 Schematic: Blingtron 5000##118490
step
collect 200 True Iron Ore##109119
collect 200 Blackrock Ore##109118
map Shadowmoon Valley D
path follow loose; loop; ants curved
path	42.0,18.7	41.1,22.6	51.4,21.9
path	52.4,26.4	51.0,33.4	66.2,30.2
path	66.9,34.5	63.6,36.6	62.8,49.8
path	66.1,58.2	61.3,57.7	58.1,60.3
path	62.4,62.4	61.4,69.4	55.5,61.1
path	53.4,64.5	53.6,69.0	56.8,72.8
path	54.5,75.1	50.4,68.0	43.0,72.4
path	38.1,73.9	37.1,66.9	34.4,63.4
path	38.2,57.2	41.7,52.2	40.1,46.7
path	39.3,41.2	35.1,35.5	30.9,36.5
path	26.7,31.2	25.0,28.7	21.5,25.1
path	24.4,21.9	25.5,19.6	24.0,15.9
path	24.3,8.3	29.1,13.2	26.9,14.6
path	31.6,19.3	33.2,22.7	33.9,26.6
path	37.1,21.3	37.1,21.3	56.7,34.2
path	55.4,34.3
|tip Make sure you are tracking minerals, and gather all Blackrock and True Iron ore you see as you follow this path.
step
Create 100 _Gearspring Parts_. |collect 100 Gearspring Parts##111366
step
Create 1 _Blingtron 5000_. |collect Blingtron 5000##111821
step
talk Blingtron 5000##77789 |use Blingtron 5000##111821
accept Blingtron 5000##34774
turnin Blingtron 5000##34774
step
collect Blingtron 5000 Gift Package##113258
collect Sky-Bo##115483 |use Blingtron 5000 Gift Package##113258
|next "done"
step
label "buy"
talk Auctioneer Chilton##8670 |goto Stormwind City 61.0,71.6
buy 1 Sky-Bo##115483
step
label "done"
learnpet Sky-Bo##1467 |use Sky-Bo##115483
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Stonegrinder",{
patch='60100',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Mechanical pet: Stonegrinder.",
pet=1515,
},[[
step
click Ketya's Stash##228570 |goto Talador/0 54.0,27.7
|tip It's inside the cave off of the coast.
collect Stonegrinder##116402
learnpet Stonegrinder##1515 |use Stonegrinder##116402
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Sunblade Micro-Defender",{
patch='61000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Mechanical pet: Sunblade Micro-Defender.",
pet=1632,
},[[
step
kill Brutallus##24882
|tip This pet has a small chance to drop from the Brutallus in Sunwell Plateau.
collect Sunblade Rune of Activation##122113 |goto Sunwell Plateau/1 65.3,88.2
learnpet Sunblade Micro-Defender##1632 |use Sunblade Rune of Activation##122113
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Bone Serpent",{
patch='60200',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Undead pet: Bone Serpent.",
pet=1600,
},[[
step
talk Erris the Collector##91016
accept Critters of Draenor##38299 |goto Lunarfall/0 30.99,40.20
|tip This pet is a random drop for Traveler's Pet Supplies.
step
talk Erris the Collector##91016
Say: "_Let's do this!_"
Defeat Erris the Collector |q 38299/1 |goto 30.99,40.20
step
talk Erris the Collector##91016
turnin Critters of Draenor##38299 |goto 30.99,40.20
step
You have no Traveler's Pet Supplies in your inventory, complete the daily quest tomorrow for another chance at this pet |only if itemcount(122535) < 1
use Traveler's Pet Supplies##122535 |only if itemcount(122535) > 0
collect Bone Serpent##122532
learnpet Bone Serpent##1600 |use Bone Serpent##122532
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Cursed Birman",{
patch='60100',
source='WorldEvent',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Undead pet: Cursed Birman.",
pet=1521,
},[[
step
This pet can only be obtained during the Hallow's End festival.
collect 150 Tricky Treat##33226
step
talk Dorothy##53728 |goto Elwynn Forest,31.8,50.0
buy 1 Cursed Birman##116801
learnpet Cursed Birman##1521 |use Cursed Birman##116801
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Fragment of Anger",{
patch='61000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Undead pet: Fragment of Anger.",
pet=1625,
},[[
step
kill Essence of Anger##23420 |goto Black Temple/4 62.5,85.4
|tip This pet has a small chance to drop from Essence of Anger in the Black Temple.
collect Fragment of Anger##122107 |n
learnpet Fragment of Anger##1625 |use Fragment of Anger##122107
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Fragment of Suffering",{
patch='61000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Undead pet: Fragment of Suffering.",
pet=1626,
},[[
step
kill Essence of Anger##23420 |goto Black Temple/4 62.5,85.4
|tip This pet has a small chance to drop from Essence of Anger in the Black Temple.
collect Shard of Supremus##122106 |n
learnpet Fragment of Suffering##1626 |use Fragment of Suffering##122108
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Frostwolf Ghostpup",{
patch='60100',
source='Profession',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Undead pet: Frostwolf Ghostpup.",
pet=1530,
},[[
step
This pet is a rare Archaeology "Fossil" solve.
goto Stormwind City,85.8,25.9 |only if skillmax("Archaeology")<1
talk Harrison Jones##44238 |only if skillmax("Archaeology")<1
skillmax Archaeology,75 |only if skillmax("Archaeology")<1
skill Archaeology,525
step
|tip Open your world map, find Clans dig sites in Draenor, and go to them.
Use your Survey ability inside the dig site area. |cast Survey##80451
|tip A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts.
|tip Click the _Archaeology Fragments_ that spawn on the ground.
|tip You're looking for a rare artifact in the "Clans" tab called "Frostwolf Ghostpup". Solve this Archaeology puzzle.
confirm
step
collect 1 Frostwolf Ghostpup##117380
learnpet Frostwolf Ghostpup##1530 |use Frostwolf Ghostpup##117380
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Ghastly Kid",{
patch='60100',
source='Quest',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Undead pet: Ghastly Kid.",
pet=1442,
},[[
step
Click here to farm the pet yourself. |confirm |next "farm"
Click here to be taken to the Auctioneer to purchase it. |confirm |next "buy"
|tip This pet can be farmed, or purchased from the Auction House.
step
label "farm"
|tip This pet requires you complete the Mastering the Menagerie daily after gaining Menagerie Level 3.
|tip The daily reward will be a Big Bag of Pet Supplies from which you have a chance of getting this pet.
confirm
step
talk Lio the Lioness##85418
accept Mastering the Menagerie##37248 |goto Lunarfall/0 28.6,39.2 |or
accept Mastering the Menagerie##37645 |goto Lunarfall/0 28.6,39.2 |or
accept Mastering the Menagerie##37644 |goto Lunarfall/0 28.6,39.2 |or
step
collect Sun Sproutling##118598 |use Big Bag of Pet Supplies##118697
|next "done"
step
label "buy"
talk Auctioneer Chilton##8670 |goto Stormwind City 61.0,71.6
buy Spectral Bell##113623
step
label "done"
learnpet Ghastly Kid##1442 |use Spectral Bell##113623
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Ghastly Rat",{
patch='62200',
source='WorldEvent',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Undead pet: Ghastly Rat.",
pet=1741,
},[[
step
This pet is only available during the Halloween event.
|tip To obtain this pet you must have the Creepy Crawlers Halloweeen decoration up in your garrison.
|tip After you activate this decoration this and 2 other pets will start spawning in your garrison.
Battle and capture it once it's weakened
learnpet Ghastly Rat##1741 |goto Lunarfall 44.5,55.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Ghost Maggot",{
patch='62200',
source='WorldEvent',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Undead pet: Ghost Maggot.",
pet=1740,
},[[
step
This pet is only available during the Halloween event.
|tip To obtain this pet you must have the Creepy Crawlers Halloweeen decoration up in your garrison.
|tip After you activate this decoration this and 2 other pets will start spawning in your garrison.
Battle and capture it once it's weakened
learnpet Ghost Maggot##1740 |goto Lunarfall 45.2,47.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Graves",{
patch='61000',
source='Promotion',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Undead pet: Graves.",
pet=1639,
},[[
step
This pet is to be a promotional reward for Heroes of the Storm
learnpet Graves##1639
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Grotesque",{
patch='61000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Undead pet: Grotesque.",
pet=1622,
},[[
step
kill Azgalor##17842 |goto Hyjal Summit/0 43.5,36.1
|tip This pet has a small chance to drop from Azgalor in Hyjal Summit.
collect Grotesque Statue##122105 |n
learnpet Grotesque##1622 |use Grotesque Statue##122105
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Son of Sethe",{
patch='60100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Undead pet: Son of Sethe.",
pet=1574,
},[[
step
This pet requires you to be Revered with Arakkoa Outcasts
confirm
step
talk Shadow-Sage Brakoss##85946 |goto Stormshield 45.8,75.2
buy 1 Son of Sethe##119143
learnpet Son of Sethe##1574 |use Son of Sethe##119143
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Spectral Spinner",{
patch='62200',
source='WorldEvent',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Undead pet: Spectral Spinner.",
pet=1730,
},[[
step
This pet is only available during the Halloween event.
|tip To obtain this pet you must have the Creepy Crawlers Halloweeen decoration up in your garrison.
|tip After you activate this decoration this and 2 other pets will start spawning in your garrison.
Battle and capture it once it's weakened
learnpet Spectral Spinner##1730 |goto Lunarfall 48.8,52.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Stinkrot",{
patch='61000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Undead pet: Stinkrot.",
pet=1629,
},[[
step
kill Anetheron##17808
|tip This pet has a small chance to drop from Anetheron in Hyjal Summit.
collect Smelly Gravestone##122111 |goto Hyjal Summit/0 8.7,68.0
learnpet Stinkrot##1629 |use Smelly Gravestone##122111
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Weebomination",{
patch='60100',
source='Quest',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Undead pet: Weebomination.",
pet=1394,
},[[
step
Click here to farm the pet yourself. |confirm |next "farm"
Click here to be taken to the Auctioneer to purchase it. |confirm |next "buy"
|tip This pet can be farmed, or purchased from the Auction House.
step
label "farm"
|tip This pet requires you complete the Mastering the Menagerie daily after gaining Menagerie Level 3.
|tip The daily reward will be a Big Bag of Pet Supplies from which you have a chance of getting this pet.
confirm
step
talk Lio the Lioness##85418
accept Mastering the Menagerie##37248 |goto Lunarfall/0 28.6,39.2 |or
accept Mastering the Menagerie##37645 |goto Lunarfall/0 28.6,39.2 |or
accept Mastering the Menagerie##37644 |goto Lunarfall/0 28.6,39.2 |or
step
collect Weebomination##113558 |use Big Bag of Pet Supplies##118697
|next "done"
step
label "buy"
talk Auctioneer Chilton##8670 |goto Stormwind City 61.0,71.6
buy Weebomination##113558
step
label "done"
learnpet Weebomination##1394 |use Weebomination##113558
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Widget the Departed",{
patch='60100',
source='WorldEvent',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Undead pet: Widget the Departed.",
pet=1523,
},[[
step
This pet can only be obtained during the Hallow's End festival
collect 150 Tricky Treat##33226
step
talk Dorothy##53728 |goto Elwynn Forest,31.8,50.0
buy Widget the Departed##116804
learnpet Widget the Departed##1523 |use Widget the Departed##116804
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Zomstrok",{
patch='60100',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Undead pet: Zomstrok.",
pet=1428,
},[[
step
kill Darktide Husk##84406+, Darktide Boneshell##82261+ |goto Shadowmoon Valley D 38.8,78.6
|tip You may have to kill multiple Darktide mobs before the pet drops.
collect Zomstrok##113554
learnpet Zomstrok##1428 |use Zomstrok##113554
]])
