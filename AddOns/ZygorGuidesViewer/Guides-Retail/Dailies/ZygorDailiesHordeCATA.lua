local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("DailiesHCATA") then return end
ZygorGuidesViewer.GuideMenuTier = "CAT"
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Classic Dailies\\Orgrimmar\\Orgrimmar Fishing Dailies",{
author="support@zygorguides.com",
description="\nComplete one of the following fishing daily quests each day in Orgrimmar:\n\nClammy Hands\n"..
"A Furious Catch\nA Golden Opportunity\nA Staggering Effort\nNo Dumping Allowed",
condition_end=function() return completedq(26588,26572,26557,26543,26556) end,
condition_valid=function() return level >= 10 end,
condition_valid_msg="You must be level 10 or higher to use this guide.",
},[[
step
label "Accept_Daily_Quests"
talk Razgar##43239
accept A Furious Catch##26588 |goto Orgrimmar/1 65.69,41.08 |next "Collect_Giant_Furious_Pike" |only if questpossible |or
accept A Golden Opportunity##26572 |goto 65.69,41.08 |next "Collect_Golden_Stonefish" |only if questpossible |or
accept A Staggering Effort##26557 |goto 65.69,41.08 |next "Collect_Stag_Eye" |only if questpossible |or
accept Clammy Hands##26543 |goto 65.69,41.08 |next "Collect_Monstrous_Clam_Meat" |only if questpossible |or
accept No Dumping Allowed##26556 |goto 65.69,41.08 |next "Collect_Toxic_Puddlefish" |only if questpossible |or
Accept Today's Fishing Daily |complete false |goto 65.69,41.08 |or
|tip You will only be able to accept one quest from Orgrimmar, Thunder Bluff, or Undercity each day.
step
label "Collect_Stag_Eye"
kill Weakened Mosshoof Stag##35096+
collect 1 Stag Eye##58949 |goto Azshara/0 27.85,73.96 |q 26557
step
use the Stag Eye##58949
Apply the Stag Eye Bait |havebuff spell:80868 |goto Orgrimmar/1 47.55,47.04 |q 26557
step
cast Fishing##7620
collect 1 Sandy Carp##58946 |q 26557/1 |goto 47.55,47.04 |next "Turnin_Fishing_Dailies" |or
'|complete not hasbuff("spell:80868") and not readyq(26557) |next "Collect_Stag_Eye" |or
step
label "Collect_Toxic_Puddlefish"
cast Fishing##7620
collect 6 Toxic Puddlefish##58945 |q 26556/1 |goto 32.36,70.40 |next "Turnin_Fishing_Dailies"
step
label "Collect_Giant_Furious_Pike"
cast Fishing##7620
collect Giant Furious Pike##58951 |q 26588/1 |goto Durotar/0 37.40,16.80 |next "Turnin_Fishing_Dailies"
step
label "Collect_Golden_Stonefish"
use Razgar's Fillet Knife##58955
|tip Use it on a Drowned Thunder Lizard.
|tip They look like dead thunder lizards underwater around this area.
collect Drowned Thunder Lizard Tail##58958 |goto 39.27,24.86
step
use the Drowned Thunder Lizard Tail##58958
|tip Use it next to Golden Stonefish.
|tip They look like brown and yellow fish swimming underwater around this area.
collect 3 Golden Stonefish##58960 |q 26572/1 |goto 39.27,24.86 |next "Turnin_Fishing_Dailies"
step
label "Collect_Monstrous_Clam_Meat"
click Monstrous Clam##204360
|tip They look like giant clams underwater around this area.
collect 10 Monstrous Clam Meat##58934 |q 26543/1 |goto 58.11,10.11 |next "Turnin_Fishing_Dailies"
step
label "Turnin_Fishing_Dailies"
talk Razgar##43239
turnin A Furious Catch##26588 |goto Orgrimmar/1 65.69,41.08 |only if haveq(26588)
turnin A Golden Opportunity##26572 |goto 65.69,41.08 |only if haveq(26572)
turnin A Staggering Effort##26557 |goto 65.69,41.08 |only if haveq(26557)
turnin Clammy Hands##26543 |goto 65.69,41.08 |only if haveq(26543)
turnin No Dumping Allowed##26556 |goto 65.69,41.08 |only if haveq(26556)
step
use the Bag of Shiny Things##67414
Claim your Treasures |complete itemcount(67414) == 0
step
You have completed the Orgrimmar fishing dailies
|tip This guide will automatically reset when the dailies reset.
'|complete not completedq(26588,26572,26557,26543,26556) |next "Accept_Daily_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Classic Dailies\\Thunder Bluff\\Thunder Bluff Fishing Dailies",{
author="support@zygorguides.com",
description="\nComplete one of the following fishing daily quests each day in Thunder Bluff:\n\nShiny Baubles\n"..
"Craving Crayfish\nPond Predators\nThe Race to Restock\nThe Ring's the Thing",
condition_end=function() return completedq(29349,29345,29348,29354,29346) end,
condition_valid=function() return level >= 10 end,
condition_valid_msg="You must be level 10 or higher to use this guide.",
},[[
step
label "Accept_Daily_Quests"
talk Kah Mistrunner##3028
accept Craving Crayfish##29349 |goto Thunder Bluff/0 56.13,46.41 |next "Collect_Stonebull_Crayfish" |only if questpossible |or
accept Pond Predators##29345 |goto 56.13,46.41 |next "Collect_Azshara_Snakehead" |only if questpossible |or
accept Shiny Baubles##29354 |goto 56.13,46.41 |next "Collect_Shiny_Stone" |only if questpossible |or
accept The Race to Restock##29348 |goto 56.13,46.41 |next "Collect_Randy_Smallfish" |only if questpossible |or
accept The Ring's the Thing##29346 |goto 56.13,46.41 |next "Collect_Poshken's_Ring" |only if questpossible |or
Accept Today's Fishing Daily |complete false |goto 56.13,46.41 |or
|tip You will only be able to accept one quest from Orgrimmar, Thunder Bluff, or Undercity each day.
stickystart "Collect_Amorous_Mud_Snapper"
step
label "Collect_Randy_Smallfish"
cast Fishing##7620
collect 2 Randy Smallfish##69964 |q 29348/1 |goto Mulgore/0 49.59,49.50
step
label "Collect_Amorous_Mud_Snapper"
cast Fishing##7620
collect 2 Amorous Mud Snapper##69967 |q 29348/2 |goto 49.59,49.50
step
Collect the Restocking Materials |complete readyq(29348) or completedq(29348) |next "Turnin_Fishing_Dailies"
step
label "Collect_Stonebull_Crayfish"
clicknpc Stonebull Crayfish##53561+
|tip They look like small blue crayfish underwater around this area.
collect 10 Stonebull Crayfish##69977 |q 29349/1 |goto 44.90,55.46 |next "Turnin_Fishing_Dailies"
step
label "Collect_Azshara_Snakehead"
cast Fishing##7620
collect 8 Azshara Snakehead##69934 |q 29345/1 |goto Thunder Bluff/0 41.40,57.17 |next "Turnin_Fishing_Dailies"
step
label "Collect_Shiny_Stone"
click Shiny Stones##208867+
|tip They look like small purple stones on the ground around Thunder Bluff.
collect 20 Shiny Stone##69983 |q 29354/1 |goto 34.69,40.02 |next "Turnin_Shiny_Baubles"
step
label "Collect_Poshken's_Ring"
Enter the cave |goto 29.78,29.78 < 10 |walk
cast Fishing##7620
|tip Inside the cave.
collect 1 Poshken's Ring##69935 |q 29346/1 |goto 26.19,18.38 |next "Turnin_The_Ring's_the_Thing"
step
label "Turnin_Fishing_Dailies"
talk Kah Mistrunner##3028
turnin Craving Crayfish##29349 |goto Thunder Bluff/0 56.13,46.41 |only if haveq(29349)
turnin Pond Predators##29345 |goto 56.13,46.41 |only if haveq(29345)
turnin The Race to Restock##29348 |goto 56.13,46.41 |only if haveq(29348)
step
label "Turnin_Shiny_Baubles"
talk Nahari Cloudchaser##52657
turnin Shiny Baubles##29354 |goto 34.81,54.01
|only if haveq(29354)
step
label "Turnin_The_Ring's_the_Thing"
talk Poshken Hardbinder##30709
|tip Inside the cave.
turnin The Ring's the Thing##29346 |goto 28.71,20.87
|only if haveq(29346)
step
use the Bag of Shiny Things##67414
Claim your Treasures |complete itemcount(67414) == 0
step
You have completed the Thunder Bluff fishing dailies
|tip This guide will automatically reset when the dailies reset.
'|complete not completedq(29349,29345,29348,29354,29346) |next "Accept_Daily_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Classic Dailies\\Undercity\\Undercity Fishing Dailies",{
author="support@zygorguides.com",
description="\nComplete one of the following fishing daily quests each day in Undercity:\n\nFish Head\n"..
"Like Pike?\nMoat Monster!\nTadpole Terror\nTime for Slime",
condition_end=function() return completedq(29320,29361,29319,29322,29317) end,
condition_valid=function() return level >= 10 end,
condition_valid_msg="You must be level 10 or higher to use this guide.",
},[[
step
label "Travel_to_the_Past"
talk Zidormi##141488
Tell her _"Can you show me what Tirisfal Glades was like before the Battle for Lordaeron?"_
Travel to the Past |complete ZGV.InPhase('Old Undercity') |goto Tirisfal Glades/0 69.45,62.80 |or
'|complete completedq(29320,29361,29319,29322,29317) |or
step
talk Armand Cromwell##4573
accept Fish Head##29317 |goto Undercity/0 80.72,31.25 |next "Collect_Severed_Abomination_Head" |only if questpossible |or
accept Like Pike?##29320 |goto 80.72,31.25 |next "Collect_Corpse_Worm" |only if questpossible |or
accept Moat Monster!##29361 |goto 80.72,31.25 |next "Collect_Alliance_Decoy_Kit" |only if questpossible |or
accept Tadpole Terror##29319 |goto 80.72,31.25 |next "Collect_Giant_Flesh-Eating_Tadpole" |only if questpossible |or
accept Time for Slime##29322 |goto 80.72,31.25 |next "Collect_Squirming_Slime_Mold" |only if questpossible |or
Accept Today's Fishing Daily |complete false |goto 80.72,31.25 |or
|tip You will only be able to accept one quest from Orgrimmar, Thunder Bluff, or Undercity each day.
step
label "Collect_Severed_Abomination_Head"
cast Fishing##7620
collect 1 Severed Abomination Head##69901 |q 29317/1 |goto 81.03,31.91 |next "Turnin_Fish_Head"
step
label "Collect_Alliance_Decoy_Kit"
use the Moat Monster Feeding Kit##69999
collect 1 Alliance Decoy Kit##69998 |q 29361
step
use the Alliance Decoy Kit##69998
Lure the Moat Monster |complete itemcount(69998) == 0 |goto 66.18,17.49
step
use the Bloated Frog##69995
Feed #10# Bloated Frogs to the Moat Monster |q 29361/1 |goto 66.18,17.49 |next "Turnin_Fishing_Dailies"
step
label "Collect_Squirming_Slime_Mold"
clicknpc Squirming Slime Mold##53517
collect 10 Squirming Slime Mold##69911 |q 29322/1 |goto 81.03,31.91 |next "Turnin_Fishing_Dailies"
step
label "Collect_Corpse_Worm"
click Corpse Worm Mound##208828
|tip Outside Undercity near the entrance bridge.
collect 1 Corpse Worm##69907 |goto 62.05,68.22 |q 29320
step
use the Corpse Worm##69907
Apply the Corpse Worm Bait |havebuff spell:99315 |goto Tirisfal Glades/0 67.12,50.79 |q 29320
step
cast Fishing##7620
collect 1 Corpse-Fed Pike##69909 |q 29320/1 |goto 67.12,50.79 |next "Turnin_Fishing_Dailies" |or
'|complete not hasbuff("spell:99315") and not readyq(29320) |next "Collect_Corpse_Worm" |or
step
label "Collect_Giant_Flesh-Eating_Tadpole"
cast Fishing##7620
collect 8 Giant Flesh-Eating Tadpole##69905 |q 29319/1 |goto 50.58,56.51
step
label "Turnin_Fishing_Dailies"
talk Armand Cromwell##4573
turnin Like Pike?##29320 |goto Undercity/0 80.72,31.25 |only if haveq(29320)
turnin Moat Monster!##29361 |goto 80.72,31.25 |only if haveq(29361)
turnin Tadpole Terror##29319 |goto 80.72,31.25 |only if haveq(29319)
turnin Time for Slime##29322 |goto 80.72,31.25 |only if haveq(29322)
step
label "Turnin_Fish_Head"
Follow the path |goto 46.03,58.02 < 15 |walk
talk Master Apothecary Faranell##2055
turnin Fish Head##29317 |goto 49.11,69.72
|only if haveq(29317)
step
use the Bag of Shiny Things##67414
Claim your Treasures |complete itemcount(67414) == 0
step
You have completed the Undercity fishing dailies
|tip This guide will automatically reset when the dailies reset.
'|complete not completedq(29320,29361,29319,29322,29317) |next "Travel_to_the_Past"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Classic Dailies\\Main Cities\\Orgrimmar Cooking Daily Quests",{
author="support@zygorguides.com",
description="\nWalks you through completing the Cooking daily quests in Orgrimmar. You must be at least level 10 to complete the quests in this guide.",
},[[
step
label "start"
talk Marogg##42506
|tip You will only be able to complete 1 of the following quests per day.
accept Careful, This Fruit Bites Back##26227 |goto Orgrimmar/1 56.53,62.48 |or
accept Crawfish Creole##26226 |goto 56.53,62.48 |or
accept Even Thieves Get Hungry##26235 |goto 56.53,62.48 |or
accept Everything Is Better with Bacon##26220 |goto 56.53,62.48 |or
accept Stealing From Our Own##26234 |goto 56.53,62.48 |only Troll |or
accept Stealing From Our Own##26233 |goto 56.53,62.48 |only Orc,Scourge,Tauren,BloodElf,Goblin,Pandaren |or
step
click Prickly Pear Fruit##203969
|tip They look like smaller cactus plants with red round fruit on top of them.
|tip They are usually found next to walls all around Orgrimmar.
collect 8 Prickly Pear Fruit##57766 |q 26227/1 |goto 52.81,62.11
|only if haveq(26227)
stickystart "hordeinfant"
step
clicknpc Muddy Crawfish##42548+
|tip They look like tiny lobsters in the water around this area.
collect 10 Muddy Crawfish##57765 |q 26226/1 |goto 65.26,43.47
|only if haveq(26226)
step
label "hordeinfant"
kill Orgrimmar Thief##42594+
|tip They are stealthed near wooden crates.
|tip They are all around Orgrimmar, so you can walk around and find them everywhere.
|tip They won't be next to every pile of crates, so you'll need to search for them.
collect 3 Horde Infantry Rations##57879 |q 26235/1 |goto 65.77,39.62
|only if haveq(26235)
step
Kill enemies around this area
collect 6 Swine Belly##57758 |q 26220/1 |goto Durotar/0 48.71,16.00
|only if haveq(26220)
step
click Barrels of Kezan Rice##9664+
|tip They look like light brown wooden barrels around this area.
collect 6 Barrel of Kezan Rice##57878 |q 26234/1 |goto Orgrimmar/1 35.11,69.70
|only Troll
|only if haveq(26234)
step
click Barrels of Darkspear Rice##6037+
|tip They looks like dark brown wooden barrels around this area.
collect 6 Barrel of Darkspear Rice##57877 |q 26233/1 |goto Orgrimmar/1 35.11,69.70
|only Orc,Scourge,Tauren,BloodElf,Goblin
|only if haveq(26233)
step
talk Marogg##42506
|tip You will only be able to complete 1 of the following quests per day.
turnin Careful, This Fruit Bites Back##26227 |goto Orgrimmar/1 56.53,62.48 |only if haveq(26227)
turnin Crawfish Creole##26226 |goto Orgrimmar/1 56.53,62.48 |only if haveq(26226)
turnin Even Thieves Get Hungry##26235 |goto Orgrimmar/1 56.53,62.48 |only if haveq(26235)
turnin Everything Is Better with Bacon##26220 |goto Orgrimmar/1 56.53,62.48 |only if haveq(26220)
turnin Stealing From Our Own##26234 |goto Orgrimmar/1 56.53,62.48 |only Troll |only if haveq(26234)
turnin Stealing From Our Own##26233 |goto Orgrimmar/1 56.53,62.48 |only Orc,Scourge,Tauren,BloodElf,Goblin,Pandaren |only if haveq(26233)
step
You Have Reached the End of the Daily Quests Available in the Orgrimmar Today
Click Here to Return to the Start of the Daily Quest Guide |confirm |next "start"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Classic Dailies\\Main Cities\\Thunder Bluff Cooking Daily Quests",{
author="support@zygorguides.com",
description="\nWalks you through completing the Cooking daily quests in Thunder Bluff. You must be at least level 10 to complete the quests in this guide.",
},[[
step
label "start"
talk Aska Mistrunner##3026
accept Pining for Nuts##29358 |goto Thunder Bluff/0 50.72,53.11 |or
accept "Magic" Mushrooms##29362 |goto 50.72,53.11 |or
accept Mulgore Spice Bread##29363 |goto 50.72,53.11 |or
accept Corn Mash##29364 |goto 50.72,53.11 |or
accept Perfectly Pickled Portions##29365 |goto 50.72,53.11 |or
step
click Mulgore Pine Cone##208875
|tip They look like sparkling pine cones on the ground next to the base of moss trees in Thunder Bluff.
_<Create a Cooking Fire>_
use the Mulgore Pine Cones##69990
collect 30 Pine Nut##69988 |q 29358/1 |goto 48.52,62.16
|only if haveq(29358)
step
Enter the cave |goto 29.49,29.82 < 5
click "Magic" Mushroom##208878
|tip They look like pale grey mushrooms grouped in fours all around the cave.
collect 6 "Magic" Mushroom##69994 |q 29362/1 |goto 26.16,22.18
|only if haveq(29362)
step
talk Naal Mistrunner##3027
buy 5 Simple Flour##30817 |q 29363 |goto 51.01,52.46
buy 5 Mild Spices##2678 |q 29363 |goto 51.01,52.46
|only if haveq(29363)
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 5 Spice Bread>_
collect 5 Spice Bread##30816 |q 29363/1
|only if haveq(29363)
step
use the Mulgore Spices##69997
collect 5 Fresh Mulgore Spice Bread##69996 |q 29363/1
|only if haveq(29363)
step
Click the bowls of Corn Kernels
|tip They look like little bowls of yellow corn in almost all the huts in Thunderbluff.
Grind #6# Bowls of Corn Kernels |q 29364/1 |goto 52.00,45.53
|only if haveq(29364)
step
collect Succulent Sweet Potatoes##70000 |q 29365/1 |goto 47.96,43.08
|tip They look like baskets in this little hut.
|only if haveq(29365)
step
collect Savory Spices##70001 |q 29365/2 |goto 49.71,41.54
|tip It looks like a bag with weeds in it
|only if haveq(29365)
step
collect Fresh-Caught Fish##70002 |q 29365/3 |goto 56.01,44.47
|tip It looks like a rope hanging down with a bunch of fish on it inside of the tent.
|only if haveq(29365)
step
collect Fresh-Hunted Fowl##70003 |q 29365/4 |goto 51.02,47.12
|tip It looks like a bird hanging upside down at the side of the tent.
|only if haveq(29365)
step
talk Aska Mistrunner##3026
turnin Pining for Nuts##29358 |goto 50.72,53.11 |or |only if haveq(29358)
turnin "Magic" Mushrooms##29362 |goto 50.72,53.11 |or |only if haveq(29362)
turnin Mulgore Spice Bread##29363 |goto 50.72,53.11 |or |only if haveq(29363)
turnin Corn Mash##29364 |goto 50.72,53.11 |or |only if haveq(29364)
turnin Perfectly Pickled Portions##29365 |goto 50.72,53.11 |or |only if haveq(29365)
step
You Have Reached the End of the Daily Quests Available in the Thunder Bluff Today
Click Here to Return to the Start of the Daily Quest Guide |confirm |next "start"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Classic Dailies\\Main Cities\\Undercity Cooking Daily Quests",{
author="support@zygorguides.com",
description="\nWalks you through completing the Cooking daily quests in Undercity. You must be at least level 10 to complete the quests in this guide.",
},[[
step
label "start"
talk Eunice Burch##4552
accept Roach Coach##29334 |goto Undercity/0 62.15,44.89 |or
accept Escargot A Go-Go##29333 |goto 62.15,44.89 |or
accept Would You Like Some Flies With That?##29360 |goto 62.15,44.89 |or
accept Lily, Oh Lily##29332 |goto 62.15,44.89 |or
accept Fungus Among Us##29315 |goto 62.15,44.89 |or
step
click Cockrach Cabin##336+
|tip Look in corners and behind crates.
|tip They are hidden all around Undercity.
collect 20 Plump Cockroach##69919 |q 29334/1 |goto 61.28,34.06
|only if haveq(29334)
step
click Fly Covered "Meat"##208876
|tip You will find the fly meat around the wagons in this area.
collect 25 Bloated Fly##69989 |q 29360/1 |goto 69.26,52.38
You can find more around [57.08,17.01]
|only if haveq(29360)
step
clicknpc Brightwater Snail##53526+
|tip They are underneath the water around the area.
collect 8 Brightwater Snail##69918 |q 29333/1 |goto Tirisfal Glades/0 70.72,39.55
|only if haveq(29333)
step
click Sewer Cap##208816
|tip They spawn near walls around this area.
collect 12 Sewer Cap##208816 |q 29315/1 |goto Undercity/0 36.24,30.34
|only if haveq(29315)
step
click Stillwater Lily##208833
|tip They are floating along the edge of the lake around this area.
collect 10 Stillwater Lily##69917 |q 29332/1 |goto Tirisfal Glades/0 50.86,55.57
|only if haveq(29332)
step
talk Chef Audrey##53528
turnin Roach Coach##29334 |goto Undercity/0 62.68,35.51
step
talk Eunice Burch##4552
turnin Escargot A Go-Go##29333 |goto 62.15,44.89 |only if haveq(29333)
turnin Would You Like Some Flies With That?##29360 |goto 62.15,44.89 |only if haveq(29360)
turnin Fungus Among Us##29315 |goto 62.15,44.89 |only if haveq(29315)
turnin Lily, Oh Lily##29332 |goto 62.15,44.89 |only if haveq(29332)
step
You Have Reached the End of the Daily Quests Available in the Undercity Today
Click Here to Return to the Start of the Daily Quest Guide |confirm |next "start"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Classic Dailies\\Main Cities\\Main City Cooking Dailies",{
author="support@zygorguides.com",
description="\nWalks you through completing the Cooking daily quests in Orgrimmar, Thunder Bluff and Undercity. You must be at least level 10 to complete the quests in this guide.",
},[[
step
label "menu"
Click here to use the _Orgrimmar_ daily guide |confirm |next "org_dailies"
_
Click here to use the _Thunder Bluff_ daily guide |confirm |next "tb_dailies"
_
Click here to use the _Undercity_ daily guide |confirm |next "uc_dailies"
step
label "org_dailies"
Proceeding to proper section |next
#include "Org_Cooking_Dailies"
step
You have reached the end of the dailies for today.
Click here to go back to the beginning of the Dailies Menu |confirm |next "menu"
step
label "tb_dailies"
Proceeding to proper section |next
#include "TB_Cooking_Dailies"
step
You have reached the end of the dailies for today.
Click here to go back to the beginning of the Dailies Menu |confirm |next "menu"
step
label "uc_dailies"
Proceeding to proper section |next
#include "UC_Cooking_Dailies"
step
You have reached the end of the dailies for today.
Click here to go back to the beginning of the Dailies Menu |confirm |next "menu"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Classic Dailies\\Main Cities\\Main City Fishing Dailies",{
author="support@zygorguides.com",
description="\nWalks you through completing the Fishing daily quests in Orgrimmar. You must be at least level 10 to complete the quests in this guide.",
},[[
step
label "menu"
Click here to use the _Orgrimmar_ daily guide |confirm |next "org_dailies"
_
Click here to use the _Thunder Bluff_ daily guide |confirm |next "tb_dailies"
_
Click here to use the _Undercity_ daily guide |confirm |next "uc_dailies"
step
label "org_dailies"
Proceeding to proper section |next
step
#include "H_Org_Fishing_Dailies"
step
label "tb_dailies"
Proceeding to proper section |next
step
#include "H_TB_Fishing_Dailies"
step
label "uc_dailies"
Proceeding to proper section |next
step
#include "H_UC_Fishing_Dailies"
step
You have reached the end of the dailies for today
Click here to go back to the beginning of the Dailies Menu |confirm |next "menu"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Classic Dailies\\Main Cities\\Jewelcrafting Dailies",{
author="support@zygorguides.com",
description="\nWalks you through completing the Jewelcrafting daily quests in Orgrimmar.",
},[[
step
talk Marith Lazuria##50482
You will only be able to complete 1 of the following quests per day
accept A Present for Lila##25160 |or |goto Orgrimmar 71.9,35.9
accept Elemental Goo##25162 |or |goto Orgrimmar 71.9,35.9
accept Nibbler! No!##25158 |or |goto Orgrimmar 71.9,35.9
accept Ogrezonians in the Mood##25161 |or |goto Orgrimmar 71.9,35.9
accept The Latest Fashion!##25159 |or |goto Orgrimmar 71.9,35.9
step
Buy 3 Nightstones from the Orgrimmar Auction House:
collect 3 Nightstone##52180 |n
|tip You can also try to mine these from any vein type in level 30-35 zones.
Use your Jewelcrafting skill to cut the Nightstones
Cut 3 Timeless Nightstones |q 25160/1
collect 3 Timeless Nightstone##52098 |q 25160/2
If you are unable to cut Timeless Nightstones, you can learn to in Orgrimmar from Lugrah at [72.5,34.3]
step
Buy 3 Zephyrite from the Orgrimmar Auction House:
collect 3 Zephyrite##52178 |n
|tip You can also try to mine these from any vein type in level 30-35 zones.
Use your Jewelcrafting skill to cut the Zephyrite
Cut 3 Solid Zephyrite |q 25158/1
collect 3 Solid Zephyrite##52086 |q 25158/2
If you are unable to cut Solid Zephyrite, you can learn to in Orgrimmar from Lugrah at [72.5,34.3]
step
Buy 3 Jasper from the Orgrimmar Auction House:
collect 3 Jasper##52182 |n
|tip You can also try to mine these from any vein type in level 30-35 zones.
Use your Jewelcrafting skill to cut the Jasper
Cut 3 Jagged Jasper |q 25161/1
collect 3 Jagged Jasper##52121 |q 25161/2
If you are unable to cut Jagged Jasper, you can learn to in Orgrimmar from Lugrah at [72.5,34.3]
step
Anywhere in Orgrimmar:
Use your Stardust No. 2 on any Humanoid |use Stardust No. 2##52507
|tip The Humanoids can be NPCs or players, it doesn't matter.
Perform 10 Tests of Stardust No. 2 |q 25159/1
step
kill Scalding Rock Elemental##40229+
collect 10 Elemental Goo##52506 |q 25162/1 |goto Mount Hyjal 64.7,22.5
step
talk Marith Lazuria##50482
You will only be able to complete 1 of the following quests per day
turnin A Present for Lila##25160 |goto Orgrimmar 71.9,35.9
turnin Elemental Goo##25162 |goto Orgrimmar 71.9,35.9
turnin Nibbler! No!##25158 |goto Orgrimmar 71.9,35.9
turnin Ogrezonians in the Mood##25161 |goto Orgrimmar 71.9,35.9
turnin The Latest Fashion!##25159 |goto Orgrimmar 71.9,35.9
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Burning Crusade Dailies\\Netherwing\\Netherwing Daily Quests", {
author="support@zygorguides.com",
startlevel=1,
description="\nThis guide will walk you through completing the various daily quests for Netherwing reputation.",
condition_end=function() return rep("Netherwing") >= Exalted end,
},[[
step
Become an Ally of the Netherwing |complete completedq(11019)
|tip Complete the "Your Friend On The Inside" quest in Shadowmoon Valley.
|tip Use the "Netherwing" reputation guide to accomplish this.
step
label "Begin_Daily_Quests"
Proceeding |complete true |only if default
Complete the "Overseeing and You: Making the Right Choices" Quest |complete completedq(11054) |only if rep("Netherwing") >= Friendly and not completedq(11054)
|tip Use the "Netherwing" reputation guide to accomplish this. |only if rep("Netherwing") >= Friendly and not completedq(11054)
Complete the "Stand Tall, Captain!" Quest |complete completedq(11084) |only if rep("Netherwing") >= Honored and not completedq(11084)
|tip Use the "Netherwing" reputation guide to accomplish this. |only if rep("Netherwing") >= Honored and not completedq(11084)
Complete the "Commander Hobb" Quest |complete completedq(11095) |only if rep("Netherwing") >= Revered and rep("The Scryers") >= Friendly and not completedq(11095)
|tip Use the "Netherwing" reputation guide to accomplish this. |only if rep("Netherwing") >= Revered and rep("The Scryers") >= Friendly and not completedq(11095)
Complete the "Commander Arcus" Quest |complete completedq(11100) |only if rep("Netherwing") >= Revered and rep("The Aldor") >= Friendly and not completedq(11100)
|tip Use the "Netherwing" reputation guide to accomplish this. |only if rep("Netherwing") >= Revered and rep("The Aldor") >= Friendly and not completedq(11100)
step
talk Yarzill the Merc##23141
accept A Slow Death##11020 |goto Shadowmoon Valley 66.0,86.5
accept The Not-So-Friendly Skies##11035 |goto 66.0,86.5
step
talk Taskmaster Varkule Dragonbreath##23140
accept Netherwing Crystals##11015 |goto 66.1,86.4
accept Nethermine Flayer Hide##11016 |goto 66.1,86.4 |only if skill("Skinning") >= 350 |noautoaccept
accept Nethercite Ore##11018 |goto 66.1,86.4 |only if skill("Mining") >= 350 |noautoaccept
accept Netherdust Pollen##11017 |goto 66.1,86.4 |only if skill("Herbalism") >= 350 |noautoaccept
|tip You can always accept the "Netherwing Crystals" quest
|tip An additional quest is available if you have 350+ skill in Mining, Skinning, or Herbalism.
|tip You can only accept one additional quest, if you have multiple eligible professions.
step
talk Chief Overseer Mudlump##23291
accept The Booterang: A Cure For The Common Worthless Peon##11055 |goto 66.8,86.1
|only if rep("Netherwing") >= Friendly
step
talk Overlord Mor'ghor##23139
accept Disrupting the Twilight Portal##11086 |goto 66.2,85.7
|only if rep("Netherwing") >= Honored
step
Kill Fel enemies around this area
collect 12 Fel Gland##32502 |q 11020 |goto 60.4,45.2
|only if haveq(11020) or completedq(11020)
stickystart "Collect_Netherwing_Relics"
stickystart "Discipline_Dragonmaw_Peons"
step
use Yarzill's Mutton##32503
|tip Use it next to groups of Dragonmaw Peons.
Poison #12# Dragonmaw Peon Camps |q 11020/1 |goto 73.6,80.0
|only if haveq(11020) or completedq(11020)
step
label "Discipline_Dragonmaw_Peons"
use the Booterang##32680
|tip Use it on Disobedient Dragonmaw Peons.
Discipline #20# Dragonmaw Peons |q 11055/1 |goto 73.6,80.0
|only if haveq(11055) or completedq(11055)
step
label "Collect_Netherwing_Relics"
kill Dragonmaw Transporter##23188+
|tip They fly low to the ground near floating rocks.
collect 10 Netherwing Relic##32509 |q 11035/1 |goto 72.1,75.2
|only if haveq(11035) or completedq(11035)
step
talk Commander Hobb##23434
accept The Deadliest Trap Ever Laid##11097
|only if rep("The Scryers") >= Friendly and rep("Netherwing") >= Revered
step
Follow Commander Hobb and protect him
|tip Hobb must survive to receive quest credit.
Defeat the Dragonmaw Forces |q 11097/1 |goto 56.5,58.7
|only if haveq(11097) or completedq(11097)
step
talk Commander Arcus##23452
accept The Deadliest Trap Ever Laid##11101
|only if rep("The Aldor") >= Friendly and rep("Netherwing") >= Revered
step
Follow Commander Arcus and protect him
|tip Arcus must survive to receive quest credit.
Defeat the Dragonmaw Forces |q 11101/1 |goto 62.4,29.3
|only if haveq(11101) or completedq(11101)
step
click Netherdust Bushs+
|tip They look like small sparkling green bushes on the ground around Netherwing Ledge.
collect 40 Netherdust Pollen##32468 |q 11017/1 |goto 62.6,86.2
|only if haveq(11017) or completedq(11017)
step
click Nethercite Deposit+
|tip They look like dark blue ore deposits with light blue crystals on them on the ground around Netherwing Ledge.
collect 40 Nethercite Ore##32464 |q 11018/1 |goto 70.0,91.4
|only if haveq(11018) or completedq(11018)
step
talk Mistress of the Mines##23149
accept Picking Up the Pieces...##11076 |goto 65.4,90.2
|only if rep("Netherwing") >= Friendly
step
talk Dragonmaw Foreman##23376
|tip Inside the mine.
accept Dragons are the Least of Our Problems##11077 |goto 65.1,87.5
|only if rep("Netherwing") >= Friendly
stickystart "Kill_Nethermine_Flayers"
stickystart "Kill_Nethermine_Ravagers"
stickystart "Collect_Netherwing_Crystal"
stickystart "Collect_Nethermine_Flayer_Hides"
step
click Nethermine Cargo+
|tip They look like carts full of ore and crystals inside the Netherwing Mines.
collect 15 Nethermine Cargo##32723 |q 11076/1 |goto 66.9,84.0
|only if haveq(11076) or completedq(11076)
step
label "Kill_Nethermine_Flayers"
kill 15 Nethermine Flayer##23169 |q 11077/1 |goto 71.5,83.9
|tip Inside the mine.
|only if haveq(11077) or completedq(11077)
step
label "Kill_Nethermine_Ravagers"
kill 5 Nethermine Ravager##23326 |q 11077/2 |goto 71.5,83.9
|tip Inside the mine.
|only if haveq(11077) or completedq(11077)
step
label "Collect_Netherwing_Crystal"
Kill enemies around this area
|tip Inside the mine.
|tip They can drop from Netherwing flayers, oozes, and Netherwing Rays.
collect 30 Netherwing Crystal##32427 |q 11015/1 |goto 71.5,83.9
|only if haveq(11015) or completedq(11015)
step
label "Collect_Nethermine_Flayer_Hides"
kill Nethermine Flayer##23169+
|tip Inside the mine.
|tip Skin their corpses.
collect 35 Nethermine Flayer Hide##32470 |q 11016/1 |goto 71.5,83.9
|only if haveq(11016) or completedq(11016)
step
talk Dragonmaw Foreman##23376
|tip Inside the mine.
turnin Dragons are the Least of Our Problems##11077 |goto 65.1,87.5
|only if haveq(11077) or completedq(11077)
step
talk Mistress of the Mines##23149
turnin Picking Up the Pieces...##11076 |goto 65.4,90.2
|only if haveq(11076) or completedq(11076)
step
Kill Deathshadow enemies around this area
kill 20 Deathshadow Agent |q 11086/1 |goto Nagrand 12.7,38.9
|only if haveq(11086) or completedq(11086)
step
talk Yarzill the Merc##23141
turnin A Slow Death##11020 |goto Shadowmoon Valley 66.0,86.5 |only if haveq(11020) or completedq(11020)
turnin The Not-So-Friendly Skies##11035 |goto Shadowmoon Valley 66.0,86.5 |only if haveq(11035) or completedq(11035)
|only if haveq(11020,11035) or completedq(11020,11035)
step
talk Taskmaster Varkule Dragonbreath##23140
turnin Netherwing Crystals##11015 |goto 66.1,86.4 |only if haveq(11015) or completedq(11015)
turnin Nethermine Flayer Hide##11016 |goto 66.1,86.4 |only if haveq(11016) or completedq(11016)
turnin Nethercite Ore##11018 |goto 66.1,86.4 |only if haveq(11018) or completedq(11018)
turnin Netherdust Pollen##11017 |goto 66.1,86.4 |only if haveq(11017) or completedq(11017)
|only if haveq(11015,11016,11018,11017) or completedq(11015,11016,11018,11017)
step
talk Chief Overseer Mudlump##23291
turnin The Booterang: A Cure For The Common Worthless Peon##11055 |goto 66.8,86.1
|only if haveq(11055) or completedq(11055)
step
talk Overlord Mor'ghor##23139
turnin Disrupting the Twilight Portal##11086 |goto 66.2,85.7 |only if haveq(11086) or completedq(11086)
turnin The Deadliest Trap Ever Laid##11097 |goto 66.2,85.7 |only if haveq(11097) or completedq(11097)
turnin The Deadliest Trap Ever Laid##11101 |goto 66.2,85.7 |only if haveq(11101) or completedq(11101)
|only if haveq(11086,11097,11101) or completedq(11086,11097,11101)
step
You have completed all available Netherwing daily quests
|tip This guide will reset when more become available.
'|complete not completedq(11077,11076,11086,11020,11035,11015,11016,11018,11017,11055,11086,11097,11101) |next "Begin_Daily_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Burning Crusade Dailies\\Netherwing\\Netherwing Eggs", {
author="support@zygorguides.com",
description="\nThis guide section will walk you through an optimized path of collecting Netherwing Eggs, which you can turn in for 250 Netherwing rep each. "..
"You must have completed the \"The Great Netherwing Egg Hunt\" quest to be able to collect and turn in the Netherwing Eggs.",
condition_end=function() return rep("Netherwing") >= Exalted end,
startlevel=1,
},[[
step
Complete the "The Great Netherwing Egg Hunt" Quest |complete completedq(11049)
|tip Use the "Netherwing" reputation guide to accomplish this.
step
label "Begin_Path"
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 69.4,63.6 < 5 |c
|tip At the top of the stairs inside this tower.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 70.1,62.0 < 5 |c
|tip In this tiny hallway of the lookout point on the top level of the Dragonmaw Fortress.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 71.4,60.7 < 5 |c
|tip Sitting on the middle of this small round table inside this big room on the bottom level of the Dragonmaw Fortress.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 70.9,62.6 < 5 |c
|tip Sitting on the floor next to this small fire brazier inside this big room on the bottom level of the Dragonmaw Fortress.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 71.3,62.6 < 5 |c
|tip Sitting on the floor next to the wall inside this big room on the top level of the Dragonmaw Fortress.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 71.4,60.8 < 5 |c
|tip Sitting on the floor inside this tiny room on the top level of the Dragonmaw Fortress.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 70.0,60.3 < 5  |c
|tip In this tiny hallway of the lookout point on the top level of the Dragonmaw Fortress.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 69.7,58.5 < 5 |c
|tip Sitting on the ground in this pen area among the baby netherdrakes.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 68.1,59.7 < 5 |c
|tip In this tiny hallway of the lookout point on the top level of the Dragonmaw Fortress.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 68.3,59.8 < 5 |c
|tip Sitting on the ground in this corner.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 68.5,61.2 < 5 |c
|tip Sitting on the ground in this stall inside the stable.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 67.2,61.3 < 5 |c
|tip Sitting in this wooden wagon.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 67.2,62.3 < 5 |c
|tip In this tiny hallway of the lookout point on the top level of the Dragonmaw Fortress.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 68.9,62.5 < 5 |c
|tip Sitting on the ground inside this half burned down hut.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 76.0,81.2 < 5 |c
|tip Sitting on the corner edge of this wooden landing dock.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 75.2,82.3 < 5 |c
|tip Sitting on the ground next to this big bunch of blue crystals.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 73.7,82.3 < 5 |c
|tip Sitting on top of this small mountain peak.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 73.0,84.0 < 5 |c
|tip Sitting on the edge of this small cliff, between 2 bunchs of big blue crystals.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 71.0,81.5 < 5 |c
|tip Sitting on top of this tall mountain peak.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 68.2,81.7 < 5 |c
|tip Sitting on top of this tall mountain peak.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 66.2,83.8 < 5 |c
|tip Sitting on top of this tall mountain peak.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 65.7,84.2 < 5 |c
|tip Sitting at the very tip of this huge crystal.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 63.3,81.5 < 5 |c
|tip Sitting on top of this tall mountain peak.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 65.4,76.5 < 5 |c
|tip Sitting on this big floating rock.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 63.2,75.6 < 5 |c
|tip Sitting on this big floating rock.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 62.2,74.2 < 5 |c
|tip Sitting on this small floating rock.  You have to fly down to it.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 61.7,73.3 < 5 |c
|tip Sitting on this big floating rock.  You have to fly down to it.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 63.0,71.6 < 5 |c
|tip Sitting on this big floating rock.  You have to fly up to it.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 61.3,70.7 < 5 |c
|tip Sitting on this big floating rock.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 60.6,73.4 < 5 |c
|tip Sitting on this big floating rock.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 59.3,74.1 < 5 |c
|tip Sitting on this big floating rock.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 60.0,76.7 < 5 |c
|tip Sitting on this big floating rock.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 59.6,78.3 < 5 |c
|tip Sitting on this big floating rock.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 61.2,77.3 < 5 |c
|tip Sitting on this big floating rock.  You have to fly up to it.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 62.2,77.8 < 5 |c
|tip Sitting on this big floating rock.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 63.3,81.5 < 5 |c
|tip Sitting on top of this tall mountain peak.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 63.0,83.7 < 5 |c
|tip Sitting on top of this tall mountain peak.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 63.5,84.8 < 5 |c
|tip Sitting on top of this tall mountain peak.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 65.5,84.9 < 5 |c
|tip Sitting on the ground next to this bunch of big blue crystals.
step
talk Yarzill the Merc##23141
Turn in Your Netherwing Eggs |complete itemcount(32506) == 0 |goto 66.0,86.5
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 64.0,86.1 < 5 |c
|tip Sitting on the ground next to this bunch of big blue crystals.
|tip This one is pretty well hidden, so pay close attention to this one or you might pass it up.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 62.5,84.9 < 5 |c
|tip Sitting on the ground next to this bunch of big blue crystals.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 60.2,87.1 < 5 |c
|tip Sitting on this big floating rock.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 62.1,89.5 < 5 |c
|tip Sitting on this big floating rock.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 64.9,90.8 < 5 |c
|tip Sitting on the ground near this bunch of big blue crystals.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 64.8,87.2 < 5 |c
|tip Inside the Netherwing Mine.
|tip Netherwing Eggs can spawn in various places in this entry hallway in the mines, so look around before moving on.
step
Jump Down Here |goto Shadowmoon Valley 68.3,84.0 < 5 |c
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 68.8,86.1 < 5 |c
|tip Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 72.3,87.3 < 5 |c
|tip Netherwing Eggs can spawn in various places all around this room with the big blue ghost dragon, so make sure to check thoroughly.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 69.9,85.8 < 5 |c
|tip Go back to the mine cart track and follow the track on the right side.
step
Check for a Netherwing Egg |goto Shadowmoon Valley 73.6,85.2 < 5 |c
|tip Follow the path in the cave to this spot.
|tip Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.
step
Check for a Netherwing Egg |goto Shadowmoon Valley 73.0,89.3 < 5 |c
|tip Follow the path in the cave to this spot.
|tip Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.
step
Check for a Netherwing Egg |goto Shadowmoon Valley 73.6,85.2 < 5 |c
|tip Follow the path in the cave to this spot.
|tip Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.
step
Check for a Netherwing Egg |goto Shadowmoon Valley 68.5,81.6 < 5 |c
|tip Follow the path in the cave to this spot.
|tip Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.
step
Check for a Netherwing Egg |goto Shadowmoon Valley 64.8,83.0 < 5 |c
|tip Follow the path in the cave to this spot.
|tip Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.
step
Jump Down Here |goto Shadowmoon Valley 65.2,84.2 < 5 |c
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Leave the Cave |goto Shadowmoon Valley 65.3,90.2 < 5 |c
|tip Make sure to keep an eye out for Netherwing Eggs as you run through the entrance hallway to leave the cave.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 65.5,94.2 < 5 |c
|tip Sitting on this big floating rock.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 68.0,94.9 < 5 |c
|tip Sitting on this big floating rock.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 69.6,91.8 < 5 |c
|tip Sitting on the ground next to this bunch of big blue crystals.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 70.9,89.2 < 5 |c
|tip Sitting on top of this tall mountain peak.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 71.4,86.6 < 5 |c
|tip Sitting on the ground next to this bunch of big blue crystals, up on the top of this mountain.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 72.2,87.1 < 5 |c
|tip Sitting on top of this tall mountain peak.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 73.4,90.3 < 5 |c
|tip Sitting on top of this tall mountain peak.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 75.8,91.6 < 5 |c
|tip Sitting on this small floating rock.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 77.6,92.6 < 5 |c
|tip Sitting on this big floating rock.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 77.4,95.7 < 5 |c
|tip Sitting on this big floating rock.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 77.3,85.9 < 5 |c
|tip Sitting on top of this tall mountain peak.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 76.5,83.3 < 5 |c
|tip Sitting on the ground inside this netherdrake skeleton's mouth.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 78.9,83.3 < 5 |c
|tip Sitting right next to this bunch of big blue crystals on the side of this cliff.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 78.1,81.2 < 5 |c
|tip Sitting on top of this tall mountain peak.
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
Check for a Netherwing Egg |goto Shadowmoon Valley 78.8,79.6 < 5 |c |next "Begin_Path"
|tip Sitting at the very tip of this huge crystal.
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Burning Crusade Dailies\\Shattrath Cooking Dailies",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the Cooking daily quests to earn Shattrath Cooking Awards",
},[[
#include "H_Shattrath_Cooking_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Burning Crusade Dailies\\Shattered Sun Offensive\\Dailies", {
author="support@zygorguides.com",
description="\nThis guide section will walk you through the Shattered Sun Offensive Daily Quests.",
},[[
step
#include "SSO_PreQuest_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Borean Tundra\\Aces High with Pre-Quests",{
author="support@zygorguides.com",
description="\nThis guide section contains the pre-quests to unlock the daily quests in the Coldarra region of Borean Tundra. The Kaskala region of Borean Tundra does not have any pre-quests to unlock the daily quest that is available there.",
},[[
step
Proceeding to proper section |next |only if default
Proceeding to proper section |next "dailies" |only if completedq(13413)
step
talk Raelorasz##26117
accept Basic Training##11918 |goto Borean Tundra 33.3,34.5
step
kill 10 Coldarra Spellbinders|q 11918/1 |goto 35,28
step
talk Raelorasz##26117
turnin Basic Training##11918 |goto 33.3,34.5
accept Hatching a Plan##11936 |goto 33.3,34.5
step
As you do the following steps:
kill Coldarra Wyrmkin |n
collect 5 Frozen Axe##35586|q 11936
confirm
step
Click Blue Dragon Eggs
|tip They look like big eggs with blue crystals on them on the ground.
Destroy 5 Dragon Eggs |q 11936/1 |goto 27.8,24.2
step
talk Raelorasz##26117
turnin Hatching a Plan##11936 |goto 33.3,34.5
accept Drake Hunt##11919 |goto 33.3,34.5
step
Use your Raelorasz's Spear on a Nexus Drake Hatchling |use Raelorasz's Spear##35506
|tip They are flying above you in the sky.
Do not kill it, let it hit you until it becomes friendly |havebuff Drake Hatchling Subdued |c |q 11919 |goto 24.6,27.1
step
Stand here until it says Captured Nexus Drake |q 11919/1 |goto 33.3,34.5
step
talk Raelorasz##26117
turnin Drake Hunt##11919 |goto 33.3,34.5
step
talk Librarian Serrah##26110
accept Corastrasza##13412 |goto 33.5,34.4
|tip You must be at least level 30 to be able to accept this quest.
step
talk Corastrasza##32548
turnin Corastrasza##13412 |goto 29.5,24.8
accept Aces High!##13413 |goto 29.5,24.8
step
Tell Corastrasza you have the courage to face Malygos drakes
She will give you a Wyrmrest Skytalon to ride
Before engaging enemies, stack Revivify on yourself 5 times, then target yourself and cast Life Burst
Target a Scalesworn Elite flying above Corastrasza.
To cause damage, stack Flamestrike five times, then use Engulf in Flames. To keep your health up, stack Revivify 5 times, then target yourself and use Life Burst. Keep Revivify up while Life Burst is in use. Be ready to cast Flame Shield if they cast Arcane Surge.
kill 5 Scalesworn Elites|q 13413/1
step
Click the red arrow on your action bar to get off the Wyrmrest Skytalon
Leave the Wyrmrest Skytalon |goto 29.5,24.8 |script VehicleExit() |outvehicle |c
step
talk Corastrasza##32548
turnin Aces High!##13413 |goto 29.5,24.8
step
label "dailies"
talk Raelorasz##26117
accept Drake Hunt##11940 |goto Borean Tundra 33.3,34.5
step
Use your Raelorasz's Spear on a Nexus Drake Hatchling |use Raelorasz's Spear##35506
|tip They are flying above you in the sky.
Do not kill it, let it hit you until it becomes friendly |havebuff Drake Hatchling Subdued |c |q 11940 |goto 24.6,27.1
step
Stand here until it says Captured Nexus Drake |q 11940/1 |goto 33.3,34.5
step
talk Raelorasz##26117
turnin Drake Hunt##11940 |goto 33.3,34.5
step
talk Corastrasza##32548
accept Aces High!##13414 |goto 29.5,24.8
step
Tell Corastrasza you are ready
She will give you a Wyrmrest Skytalon to ride
Before engaging enemies, stack Revivify on yourself 5 times, then target yourself and cast Life Burst
Target a Scalesworn Elite flying above Corastrasza.
To cause damage, stack Flame Spike five times, then use Engulf in Flames. To keep your health up, stack Revivify 5 times, then target yourself and use Life Burst. Keep Revivify up while Life Burst is in use. Be ready to cast Flame Shield if they cast Arcane Surge.
kill 5 Scalesworn Elites |q 13414/1
step
Click the red arrow on your action bar to get off the Wyrmrest Skytalon
Leave the Wyrmrest Skytalon |goto 29.5,24.8 |script VehicleExit() |outvehicle |c
step
talk Corastrasza##32548
turnin Aces High!##13414 |goto 29.5,24.8
step
You have completed this daily guide today. You can do more dailies tomorrow
Click here to return to the beginning of the guide |confirm
|next "dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Borean Tundra\\Kaskala Dailies",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the daily quests in the Kaskala region of Borean Tundra. There are no pre-quests needed to unlock the daily quest offered in this guide section.",
},[[
step
label "dailies"
talk Utaik##26213
accept Preparing for the Worst##11945 |goto Borean Tundra 63.9,45.7
step
Click baskets on the shore
collect 8 Kaskala Supplies##35711 |q 11945/1 |goto 66.7,48.6
step
talk Utaik##26213
turnin Preparing for the Worst##11945 |goto 63.9,45.7
step
You have completed this daily guide today. You can do more dailies tomorrow
Click here to return to the beginning of the guide |confirm
|next "dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Dalaran\\Dalaran Cooking Dailies with Pre-Quests",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the Cooking daily quests in Dalaran.",
},[[
step
Proceeding to proper section |next |only if default
Proceeding to proper section |next "dailies" |only if completedq(13089)
step
talk Thomas Kolichio##26953
accept Northern Cooking##13089 |goto Howling Fjord 78.6,29.5
|tip This quest is only available to you if you have 350+ Cooking skill.
step
kill Wild Worg##24128+
collect 4 Chilled Meat##43013 |q 13089/1 |goto 75.1,33.9
step
talk Thomas Kolichio##26953
turnin Northern Cooking##13089 |goto 78.6,29.5
step
label "dailies"
#include "H_Dalaran_Cooking_Dailies"
step
You have completed this daily guide today. You can do more dailies tomorrow.
Click here to return to the beginning of the guide. |confirm
|next "dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Dalaran\\Dalaran Fishing Dailies",{
author="support@zygorguides.com",
description="\nComplete one of the following fishing daily quests each day in Dalaran:\n\nDisarmed!\n"..
"Blood Is Thicker\nDangerously Delicious\nJewel Of The Sewers\nThe Ghostfish",
condition_end=function() return completedq(13830,13832,13833,13834,13836) end,
condition_valid=function() return level >= 10 end,
condition_valid_msg="You must be level 10 or higher to use this guide.",
},[[
step
label "Accept_Daily_Quests"
talk Marcia Chase##28742
accept Blood Is Thicker##13833 |goto Dalaran/1 53.04,64.93 |next "Gain_Animal_Blood_Debuff" |only if questpossible |or
accept Dangerously Delicious##13834 |goto 53.04,64.93 |next "Collect_Terrorfish" |only if questpossible |or
accept Jewel Of The Sewers##13832 |goto 53.04,64.93 |next "Collect_Corroded_Jewelry" |only if questpossible |or
accept Disarmed!##13836 |goto 53.04,64.93 |next "Collect_Severed_Arm" |only if questpossible |or
accept The Ghostfish##13830 |goto 53.04,64.93 |next "Discover_Ghostfish_Mystery" |only if questpossible |or
Accept Today's Fishing Daily |complete false |goto 53.04,64.93 |or
|tip You will only be able to accept one quest each day.
step
label "Gain_Animal_Blood_Debuff"
Kill Mammoth enemies around this area
Get the "Animal Blood" Debuff |havebuff spell:46221 |goto Borean Tundra/0 54.59,41.80 |q 13833
step
Create a Pool of Blood |nobuff spell:46221 |goto 53.17,42.64 |q 13833
|tip Walk into the water with the debuff.
|tip You must do this within three minutes.
step
cast Fishing##7620
|tip Fish in the "Pool of Blood."
collect 5 Bloodtooth Frenzy##45905 |q 13833/1 |goto 53.34,42.41 |next "Turnin_Daily_Quests"
step
label "Collect_Terrorfish"
cast Fishing##7620
collect 10 Terrorfish##45904 |q 13834/1 |goto Wintergrasp/0 79.87,41.80 |next "Turnin_Daily_Quests"
step
label "Collect_Corroded_Jewelry"
Enter the tunnel |goto Dalaran/1 35.00,45.35 < 10 |walk
Run down the ramp |goto Dalaran/2 34.20,43.14 < 10 |walk
cast Fishing##7620
collect 1 Corroded Jewelry##45903 |q 13832/1 |goto 44.38,66.57 |next "Turnin_Daily_Quests"
step
label "Collect_Severed_Arm"
cast Fishing##7620
collect 1 Bloated Slippery Eel##45328 |goto Dalaran/1 65.16,61.45 |q 13836
step
use the Bloated Slippery Eel##45328
collect 1 Severed Arm##45323 |q 13836/1 |next "Turnin_Disarmed"
step
label "Discover_Ghostfish_Mystery"
cast Fishing##7620
collect 1 Phantom Ghostfish##45902 |goto Sholazar Basin/0 49.31,61.71 |q 13830
step
use the Phantom Ghostfish##45902
Discover the Ghostfish Mystery |q 13830/1 |next "Turnin_Daily_Quests"
step
label "Turnin_Daily_Quests"
talk Marcia Chase##28742
turnin Blood Is Thicker##13833 |goto Dalaran/1 53.04,64.93 |only if haveq(13833)
turnin Dangerously Delicious##13834 |goto 53.04,64.93 |only if haveq(13834)
turnin Jewel Of The Sewers##13832 |goto 53.04,64.93 |only if haveq(13832)
turnin The Ghostfish##13830 |goto 53.04,64.93 |only if haveq(13830)
step
label "Turnin_Disarmed"
Enter the building |goto 37.79,36.51 < 7 |walk
talk Olisarra the Kind##28706
|tip Inside the building.
turnin Disarmed!##13836 |goto 36.46,36.78
|only if haveq(13836)
step
use the Bag of Fishing Treasures##46007
Claim your Treasures |complete itemcount(46007) == 0
step
You have completed the Dalaran fishing dailies
|tip This guide will automatically reset when the dailies reset.
'|complete not completedq(13830,13832,13833,13834,13836) |next "Accept_Daily_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Dalaran\\Jewelcrafting Dailies with Pre-Quests",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the Jewelcrafting daily quests in Dalaran.",
},[[
step
Proceeding to proper section |next |only if default
Proceeding to proper section |next "dailies" |only if completedq(13041)
step
talk Timothy Jones##28701
accept Finish the Shipment##13041 |goto Dalaran 40.7,35.4
|tip This quest is only available once you have 375+ Jewelcrafting skill.
step
Go to the Auction House in a major city:
Buy 1 Chalcedony |q 13041
|tip If you don't want to, or can't, buy the Chalcedony, you can also try to get one by mining or prospecting.
step
talk Timothy Jones##28701
turnin Finish the Shipment##13041 |goto Dalaran 40.7,35.4
step
label "dailies"
talk Timothy Jones##28701
You will only be able to accept, and turn in, 1 of these 6 daily quests per day, and they all require you have 375+ Jewelcrafting skill:
accept Shipment: Blood Jade Amulet##12958 |or |goto Dalaran 40.7,35.4
accept Shipment: Bright Armor Relic##12962 |or |goto Dalaran 40.7,35.4
accept Shipment: Glowing Ivory Figurine##12959 |or |goto Dalaran 40.7,35.4
accept Shipment: Intricate Bone Figurine##12961 |or |goto Dalaran 40.7,35.4
accept Shipment: Shifting Sun Curio##12963 |or |goto Dalaran 40.7,35.4
accept Shipment: Wicked Sun Brooch##12960 |or |goto Dalaran 40.7,35.4
step
kill Ymirjar Element Shaper##31267+, Blight Falconer##31262+, Ymirheim Chosen Warrior##31258+
collect 1 Vrykul Amulet##41989 |q 12958 |goto Icecrown 59.1,54.1
step
Go to the Auction House in a major city:
Buy 1 Dark Jade |collect 1 Dark Jade##36932 |q 12958
|tip If you don't want to, or can't, buy the Dark Jade, you can also try to get one by mining or prospecting.
Buy 1 Bloodstone |collect 1 Bloodstone##36917 |q 12958
|tip If you don't want to, or can't, buy the Bloodstone, you can also try to get one by mining or prospecting.
step
Use your Vrykul Amulet in your bags|use Vrykul Amulet##41989
collect 1 Blood Jade Amulet##43269 |q 12958/1
step
kill Ice Revenant##26283
collect 1 Elemental Armor Scrap##42107 |q 12962 |goto Dragonblight 67.3,52.3
step
Go to the Auction House in a major city:
Buy 1 Huge Citrine |collect 1 Huge Citrine##36929 |q 12962
|tip If you don't want to, or can't, buy the Huge Citrine, you can also try to get one by mining or prospecting.
Buy 1 Bloodstone |collect 1 Bloodstone##36917 |q 12962
|tip If you don't want to, or can't, buy the Bloodstone, you can also try to get one by mining or prospecting.
step
Use your Elemental Armor Scrap in your bags |use Elemental Armor Scrap##42107
collect 1 Bright Armor Relic##43275 |q 12962/1
step
from Emaciated Mammoth Bull##26271+, Emaciated Mammoth Calf##26273+, Emaciated Mammoth##26272+
collect 1 Northern Ivory##42104 |q 12959 |goto Dragonblight 62.5,47.4
step
Go to the Auction House in a major city:
Buy 1 Chalcedony |collect 1 Chalcedony##36923 |q 12959
|tip If you don't want to, or can't, buy the Chalcedony, you can also try to get one by mining or prospecting.
Buy 1 Shadow Crystal |collect 1 Shadow Crystal##36926 |q 12959
|tip If you don't want to, or can't, buy the Shadow Crystal, you can also try to get one by mining or prospecting.
step
Use your Northern Ivory in your bags |use Northern Ivory##42104
collect 1 Glowing Ivory Figurine##43270 |q 12959/1
step
kill Blighted Proto-Drake##29590+
collect 1 Proto Dragon Bone##42106 |q 12961 |goto The Storm Peaks 23.1,57.7
step
Go to the Auction House in a major city:
Buy 1 Sun Crystal |collect 1 Sun Crystal##36920 |q 12959
|tip If you don't want to, or can't, buy the Sun Crystal, you can also try to get one by mining or prospecting.
Buy 1 Dark Jade |collect 1 Dark Jade##36932 |q 12961
|tip If you don't want to, or can't, buy the Dark Jade, you can also try to get one by mining or prospecting.
step
Use your Proto Dragon Bone in your bags|use Proto Dragon Bone##42106
collect 1 Intricate Bone Figurine##43274 |q 12961/1
step
kill Wastes Taskmaster##26493+, Wastes Digger##26492+
collect 1 Scourge Curio##42108 |q 12963 |goto Dragonblight 56.3,27.5
step
Go to the Auction House in a major city:
Buy 1 Sun Crystal|collect 1 Sun Crystal##36920 |q 12963
|tip If you don't want to, or can't, buy the Sun Crystal, you can also try to get one by mining or prospecting.
Buy 1 Shadow Crystal|collect 1 Shadow Crystal##36926 |q 12963
|tip If you don't want to, or can't, buy the Shadow Crystal, you can also try to get one by mining or prospecting.
step
Use your Scourge Curio in your bags|use Scourge Curio##42108
collect 1 Shifting Sun Curio##43276 |q 12963/1
step
The entrance to the cave starts here |goto The Storm Peaks 26.8,66.9 < 10
from Stormforged Pillager##29586+, Stormforged Loreseeker##29843+
collect 1 Iron Dwarf Brooch##42105 |q 12960 |goto 26.0,67.2
step
Leave the cave |goto The Storm Peaks,26.8,66.9 < 10 |q 12960
step
Go to the Auction House in a major city:
Buy 1 Huge Citrine |collect 1 Huge Citrine##36929 |q 12960
|tip If you don't want to, or can't, buy the Huge Citrine, you can also try to get one by mining or prospecting.
Buy 1 Sun Crystal |collect 1 Sun Crystal##36920 |q 12960
|tip If you don't want to, or can't, buy the Sun Crystal, you can also try to get one by mining or prospecting.
step
Use your Iron Dwarf Brooch in your bags |use Iron Dwarf Brooch##42105
collect 1 Wicked Sun Brooch##43272 |q 12960/1
step
talk Timothy Jones##28701
You will only be able to accept, and turn in, 1 of these 6 daily quests per day, and they all require you have 375+ Jewelcrafting skill:
turnin Shipment: Blood Jade Amulet##12958 |goto Dalaran 40.7,35.4
turnin Shipment: Bright Armor Relic##12962 |goto Dalaran 40.7,35.4
turnin Shipment: Glowing Ivory Figurine##12959 |goto Dalaran 40.7,35.4
turnin Shipment: Intricate Bone Figurine##12961 |goto Dalaran 40.7,35.4
turnin Shipment: Shifting Sun Curio##12963 |goto Dalaran 40.7,35.4
turnin Shipment: Wicked Sun Brooch##12960 |goto Dalaran 40.7,35.4
step
You have completed this daily guide today. You can do more dailies tomorrow
Click here to return to the beginning of the guide |confirm
|next "dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Dragonblight\\Dragonblight Dailies plus Pre-Quests",{
author="support@zygorguides.com",
description="\nThis guide section contains the pre-quests to unlock the daily quests in the Wyrmrest Temple region of Dragonblight. The Moa'ki Harbor region of Dragonblight does not have any pre-quests to unlock the daily quest that is available there.",
},[[
step
Proceeding to the proper section |next |only if default
Proceeding to the proper section |next "dailies" |only if completedq(12372)
step
talk Image of Archmage Aethas Sunreaver##26471
accept Rifle the Bodies##11999 |goto Dragonblight 38.1,46.2
step
Loot the Dead Mage Hunter bodies on the ground
collect Mage Hunter Personal Effects##35792+ |n
Use the Mage Hunter Personal Effects bags |use Mage Hunter Personal Effects##35792
collect Moonrest Gardens Plans##35783 |q 11999/1 |goto 22.3,54.1
step
talk Image of Archmage Aethas Sunreaver##26471
turnin Rifle the Bodies##11999 |goto 38.1,46.2
accept Prevent the Accord##12005 |goto 38.1,46.2
step
kill Wind Trader Mu'fah##26496
collect Wind Trader Mu'fah's Remains##35800 |q 12005/1 |goto 18.4,58.9
step
kill Goramosh##26349
collect The Scales of Goramosh##35801 |q 12005/2 |goto Dragonblight 19.4,58.1
collect Goramosh's Strange Device##36746 |n
Click Goramosh's Strange Device |use Goramosh's Strange Device##36746
accept A Strange Device##12059 |goto Dragonblight 19.4,58.1
step
talk Image of Archmage Aethas Sunreaver##26471
turnin A Strange Device##12059 |goto 38.1,46.2
turnin Prevent the Accord##12005 |goto 38.1,46.2
accept Projections and Plans##12061 |goto 38.1,46.2
step
Use your Surge Needle Teleporter anywhere inside Moonrest Gardens |use Surge Needle Teleporter##36747
Move toward the center of the platform you get teleported onto
Observe the Object on the Surge Needle |q 12061/1 |goto 22.2,54.8
step
Use your Surge Needle Teleporter to go back down to the ground |goto 22.6,57.0 < 10 |use Surge Needle Teleporter##36747 |noway |c
step
talk Image of Archmage Aethas Sunreaver##26471
turnin Projections and Plans##12061 |goto 38.1,46.2
accept The Focus on the Beach##12066 |goto 38.1,46.2
step
from Captain Emmy Malin##26762
get Ley Line Focus Control Ring |n
Use the Ley Line Focus Control Ring next to the half-circle |use Ley Line Focus Control Ring##36751
|tip It's a big half-circle purple glowing thing.
Retrieve ley line focus information |q 12066/1 |goto 26.4,65
step
talk Image of Archmage Aethas Sunreaver##26471
turnin The Focus on the Beach##12066 |goto 38.1,46.2
accept Atop the Woodlands##12084 |goto 38.1,46.2
step
kill Lieutenant Ta'zinni##26815
collect Ley Line Focus Amulet##36779 |n
collect Lieutenant Ta'zinni's Letter##36780 |n
Click Lieutenant Ta'zinni's Letter |use Lieutenant Ta'zinni's Letter##36780
accept A Letter for Home##12085 |goto 32.2,70.6
step
Use your Ley Line Focus Control Amulet on the Ley Line Focus |use Ley Line Focus Control Amulet##36779
|tip It's a big half-circle purple glowing thing.
Retrieve Ley Line Focus information |q 12084/1 |goto 32.2,71.2
step
talk Image of Archmage Aethas Sunreaver##26471
turnin Atop the Woodlands##12084 |goto 38.1,46.2
accept Search Indu'le Village##12106 |goto 38.1,46.2
step
Click Mage-Commander Evenstar's body floating underwater
turnin Search Indu'le Village##12106 |goto 40.3,66.9
accept The End of the Line##12110 |goto 40.3,66.9
step
Use your Ley Line Focus Control Talisman on the Ley Line Focus |use Ley Line Focus Control Talisman##36815
|tip It's a big half-circle purple glowing thing underwater.
Retrieve Ley Line Focus information |q 12110/1 |goto 39.8,66.9
step
Go to this spot on the cliff to Observe Azure Dragonshrine |q 12110/2 |goto 53,66.4
step
talk Image of Archmage Aethas Sunreaver##26471
turnin The End of the Line##12110 |goto 38.1,46.2
accept Gaining an Audience##12122 |goto 38.1,46.2
step
talk Tariolstrasz##26443
turnin Gaining an Audience##12122 |goto 57.9,54.2
accept Speak with your Ambassador##12767 |goto 57.9,54.2
step
talk Golluck Rockfist##27804
turnin Speak with your Ambassador##12767 |goto 58,55.4
accept Report to the Ruby Dragonshrine##12461 |goto 58,55.4
step
talk Vargastrasz##27763
turnin Report to the Ruby Dragonshrine##12461 |goto 43,50.9
accept Heated Battle##12448 |goto 43,50.9
step
Help kill the following:
Kill 12 Frigid Ghoul Attackers |kill 12 Frigid Ghoul Attacker |q 12448/1 |goto 42.8,51.4
Kill 8 Frigid Geist Attackers |kill 8 Frigid Geist Attacker |q 12448/2 |goto 42.8,51.4
Kill 1 Frigid Abomination Attacker |kill 1 Frigid Abomination Attacker |q 12448/3 |goto 42.8,51.4
step
talk Vargastrasz##27763
turnin Heated Battle##12448 |goto 43,50.9
accept Return to the Earth##12449 |goto 43,50.9
step
Click the Ruby Acorns
|tip The Ruby Acorns look like red stones on the ground around this area.
collect 6 Ruby Acorn##37727 |n
Use the Ruby Acorns on the Ruby Keeper corpses |use Ruby Acorn##37727
|tip The Ruby Keepers look like huge red dragons on fire.
Return 6 Ruby Keepers to the Earth |q 12449/1 |goto 46.7,52.8
step
talk Vargastrasz##27763
turnin Return to the Earth##12449 |goto 43,50.9
accept Through Fields of Flame##12450 |goto 43,50.9
step
kill 6 Frigid Necromancer |q 12450/1 |goto 48.2,47.8
step
Go into the tree trunk
from Dahlia Suntouch##27680
Cleanse the Ruby Corruption |q 12450/2 |goto 47.7,49.1
step
talk Vargastrasz##27763
turnin Through Fields of Flame##12450 |goto 43.0,50.9
accept The Steward of Wyrmrest Temple##12769 |goto 43.0,50.9
step
talk Tariolstrasz##26443
turnin The Steward of Wyrmrest Temple##12769 |goto 57.9,54.2
accept Informing the Queen##12124 |goto 57.9,54.2
step
talk Tariolstrasz##26443
Tell him you want to go to the top of the temple |goto 59.7,53.1
step
talk Alexstrasza the Life-Binder##26917
turnin Informing the Queen##12124 |goto 59.8,54.7
accept Report to Lord Devrestrasz##12435 |goto 59.8,54.7
step
label "dailies"
talk Lord Devrestrasz##27575
accept Defending Wyrmrest Temple##12372 |goto Dragonblight 59.2,54.3
step
talk Wyrmrest Defender##27629
Tell him you are ready to get into the fight
Fly around Wyrmrest Temple fighting the blue dragons in the sky using your abilities on your hotbar
kill 3 Azure Dragon |q 12372/1 |goto 58.3,55.2
kill 5 Azure Drake |q 12372/2 |goto 58.3,55.2
step
Fly into the huge purple swirling column
Use your Destabilize Azure Dragonshrine ability
Destabilize the Azure Dragonshrine |q 12372/3 |goto 55.1,66.4
step
Click the red arrow to get off the dragon on the middle level of the temple
Leave the dragon |goto 58.7,54.5 |outvehicle |c
step
talk Lord Devrestrasz##27575
turnin Defending Wyrmrest Temple##12372 |goto 59.2,54.3
step
talk Trapper Mau'i##26228
accept Planning for the Future##11960 |goto Dragonblight 48.3,74.3
step
Click Snowfall Glade Pups
|tip The Snowfall Glade Pups are small creatures in front of the houses.
collect 12 Snowfall Glade Pup##35692 |q 11960/1 |goto 45.3,63.7
step
talk Trapper Mau'i##26228
turnin Planning for the Future##11960 |goto 48.3,74.3
step
You have completed this daily guide today. You can do more dailies tomorrow
Click here to return to the beginning of the guide |confirm
|next "dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Grizzly Hills\\Blackriver Logging Camp Dailies",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the daily quest in the Blackriver Logging Camp region of Grizzly Hills. There are no pre-quests needed to unlock the daily quest offered in this guide section.",
},[[
step
Proceeding to proper section |next |only if default
Prceeding to proper section |next "dailies" |only if completedq(12029)
step
talk Samir##26424
accept Filling the Cages##11984 |goto Grizzly Hills 16.2,47.6
step
talk Budd##26429
Tell him it's time to play with the ice trolls |havebuff Budd's Attention Span |q 11984 |goto 16.4,48.3
step
Use Budd's pet bar skill Tag Troll to have him stun a troll |petaction Tag Troll
Use your Bounty Hunter's Cage on the stunned troll |use Bounty Hunter's Cage##35736
Capture a Live Ice Troll |q 11984/1 |goto 13.2,60.5
step
talk Samir##26424
turnin Filling the Cages##11984 |goto 16.2,47.6
step
talk Drakuru##26423
accept Truce?##11989 |goto 16.4,47.8
step
Click the Dull Carving Knife
|tip It's a knife stuck in the side of this tree trunk.
collect 1 Dull Carving Knife##38083 |q 11989 |goto 16.5,47.8
step
Use your Dull Carving Knife next to the yellow cage |use Dull Carving Knife##38083
talk Drakuru##26423
Shake his hand
Make a Blood Pact With Drakuru |q 11989/1 |goto 16.4,47.8
step
talk Drakuru##26423
turnin Truce?##11989 |goto 16.4,47.8
accept Vial of Visions##11990 |goto 16.4,47.8
step
talk Ameenah##26474
buy 1 Crystal Vial##3371 |q 11990/1 |goto 16,47.8
step
Click the Hazewood Bushes
|tip They look like small flower bushes on the ground around this area.
collect 3 Haze Leaf##37085 |q 11990/2 |goto 14.6,45.3
step
Click a Waterweed
|tip They look like big green bushes underwater around this area.
collect Waterweed Frond##35795 |q 11990/3 |goto 15.2,40.3
step
talk Drakuru##26423
turnin Vial of Visions##11990 |goto 16.4,47.8
step
talk Prigmon##26519
accept Scourgekabob##12484 |goto 15.7,46.7
step
Click a Scourged Troll Mummy on the ground next to you
collect 1 Scourged Troll Mummy##38149 |q 12484 |goto 15.7,46.9
step
Use your Scourged Troll Mummy next to the burning pile of mummies |use Scourged Troll Mummy##38149
Burn a Mummified Carcass |q 12484/1 |goto 16.9,48.3
step
talk Mack Fearsen##26604
turnin Scourgekabob##12484 |goto 16.7,48.3
accept Seared Scourge##12029 |goto 16.7,48.3
step
Jump on the big rock and stand on it
Use Mack's Dark Grog and throw it at the trolls running around to the north |use Mack's Dark Grog##35908
Burn 20 Scourge Trolls |q 12029/1 |goto 16,29.9
step
talk Mack Fearsen##26604
turnin Seared Scourge##12029 |goto 16.7,48.3
step
label "dailies"
talk Raider Captain Kronn##27120
accept Blackriver Brawl##12170 |goto Grizzly Hills 26.4,65.8
step
Kill Alliance Players or Amberpine Scouts in the Blackriver Logging Camp
Kill 10 Alliance in Blackriver |q 12170/1 |goto 27.3,64.7
step
talk Raider Captain Kronn##27120
turnin Blackriver Brawl##12170 |goto 26.4,65.8
step
You have completed this daily guide today. You can do more dailies tomorrow
Click here to return to the beginning of the guide |confirm
|next "dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Grizzly Hills\\Blue Sky Logging Grounds Dailies",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the daily quests in the Blue Sky Logging Grounds region of Grizzly Hills. There are no pre-quests needed to unlock the daily quests offered in this guide section.",
},[[
step
Proceeding to proper section |next |only if default
Prceeding to proper section |next "dailies" |only if completedq(12029)
step
talk Samir##26424
accept Filling the Cages##11984 |goto Grizzly Hills 16.2,47.6
step
talk Budd##26429
Tell him it's time to play with the ice trolls |havebuff Budd's Attention Span |q 11984 |goto 16.4,48.3
step
Use Budd's pet bar skill Tag Troll to have him stun a troll |petaction Tag Troll
Use your Bounty Hunter's Cage on the stunned troll |use Bounty Hunter's Cage##35736
Capture a Live Ice Troll |q 11984/1 |goto 13.2,60.5
step
talk Samir##26424
turnin Filling the Cages##11984 |goto 16.2,47.6
step
talk Drakuru##26423
accept Truce?##11989 |goto 16.4,47.8
step
Click the Dull Carving Knife
|tip It's a knife stuck in the side of this tree trunk.
collect 1 Dull Carving Knife##38083 |q 11989 |goto 16.5,47.8
step
Use your Dull Carving Knife next to the yellow cage |use Dull Carving Knife##38083
talk Drakuru##26423
Shake his hand
Make a Blood Pact With Drakuru |q 11989/1 |goto 16.4,47.8
step
talk Drakuru##26423
turnin Truce?##11989 |goto 16.4,47.8
accept Vial of Visions##11990 |goto 16.4,47.8
step
talk Ameenah##26474
buy 1 Imbued Vial |q 11990/1 |goto 16,47.8
step
Click the Hazewood Bushes
|tip They look like small flower bushes on the ground around this area.
collect 3 Haze Leaf##37085 |q 11990/2 |goto 14.6,45.3
step
Click a Waterweed
|tip They look like big green bushes underwater around this area.
collect Waterweed Frond##35795 |q 11990/3 |goto 15.2,40.3
step
talk Drakuru##26423
turnin Vial of Visions##11990 |goto 16.4,47.8
step
talk Prigmon##26519
accept Scourgekabob##12484 |goto 15.7,46.7
step
Click a Scourged Troll Mummy on the ground next to you
collect 1 Scourged Troll Mummy##38149 |q 12484 |goto 15.7,46.9
step
Use your Scourged Troll Mummy next to the burning pile of mummies |use Scourged Troll Mummy##38149
Burn a Mummified Carcass |q 12484/1 |goto 16.9,48.3
step
talk Mack Fearsen##26604
turnin Scourgekabob##12484 |goto 16.7,48.3
accept Seared Scourge##12029 |goto 16.7,48.3
step
Jump on the big rock and stand on it
Use Mack's Dark Grog and throw it at the trolls running around to the north |use Mack's Dark Grog##35908
Burn 20 Scourge Trolls |q 12029/1 |goto 16,29.9
step
talk Mack Fearsen##26604
turnin Seared Scourge##12029 |goto 16.7,48.3
step
label "dailies"
talk Aumana##27464
accept Overwhelmed!##12288 |goto Grizzly Hills 33.8,32.7
step
talk Lurz##27422
accept Making Repairs##12280 |goto 34.4,32.6
step
talk Grekk##27423
accept Shred the Alliance##12270 |goto 34.5,32.5
step
talk Commander Bargok##27451
accept Keep 'Em on Their Heels##12284 |goto 34.5,33.0
step
Kill Alliance Players or Wounded Westfall Infantry around the area
Use Renewing Tourniquet on Wounded Skirmishers |use Renewing Tourniquet##37568
Heal 10 Wounded Skirmishers |q 12288/1 |goto 35.2,39.3
Click Grooved Cogs, Notched Sprockets, and High Tension Springs on the ground of the Blue Sky Logging Grounds
collect 4 Grooved Cogs##37412 |q 12280/1 |goto 35.2,39.3
collect 3 Notched Sprockets##37413 |q 12280/2 |goto 35.2,39.3
collect 2 High Tension Springs##37416 |q 12280/3 |goto 35.2,39.3
step
Kill Alliance Players or Wounded Westfall Infantry around the area
Eliminate 15 Horde units |q 12284/1 |goto 33.4,35.7
step
Find a Broken-down Shredder that spawns around this area
Click the Broken-down Shredder to get inside it
Use your abilities on your hot bar to return the shredder to Grekk at [34.5,32.5]
Deliver 3 Shredders |q 12270/1 |goto 32.8,40.5
step
talk Grekk##27423
turnin Shred the Alliance##12270 |goto 34.5,32.5
step
talk Lurz##27422
turnin Making Repairs##12280 |goto 34.4,32.6
step
talk Commander Bargok##27451
turnin Keep 'Em on Their Heels##12284 |goto 34.5,33.0
step
talk Aumana##27464
turnin Overwhelmed!##12288 |goto 33.8,32.7
step
You have completed this daily guide today. You can do more dailies tomorrow
Click here to return to the beginning of the guide |confirm
|next "dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Grizzly Hills\\Granite Springs Dailies",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the daily quest in the Granite Springs region of Grizzly Hills.",
},[[
step
Proceeding to proper section |next |only if default
Prceeding to proper section |next "dailies" |only if completedq(12029)
step
talk Samir##26424
accept Filling the Cages##11984 |goto Grizzly Hills 16.2,47.6
step
talk Budd##26429
Tell him it's time to play with the ice trolls |havebuff Budd's Attention Span |q 11984 |goto 16.4,48.3
step
Use Budd's pet bar skill Tag Troll to have him stun a troll |petaction Tag Troll
Use your Bounty Hunter's Cage on the stunned troll |use Bounty Hunter's Cage##35736
Capture a Live Ice Troll |q 11984/1 |goto 13.2,60.5
step
talk Samir##26424
turnin Filling the Cages##11984 |goto 16.2,47.6
step
talk Drakuru##26423
accept Truce?##11989 |goto 16.4,47.8
step
Click the Dull Carving Knife |tip It's a knife stuck in the side of this tree trunk.
collect 1 Dull Carving Knife##38083 |q 11989 |goto 16.5,47.8
step
Use your Dull Carving Knife next to the yellow cage |use Dull Carving Knife##38083
talk Drakuru##26423
Shake his hand
Make a Blood Pact With Drakuru |q 11989/1 |goto 16.4,47.8
step
talk Drakuru##26423
turnin Truce?##11989 |goto 16.4,47.8
accept Vial of Visions##11990 |goto 16.4,47.8
step
talk Ameenah##26474
buy 1 Imbued Vial |q 11990/1 |goto 16,47.8
step
Click the Hazewood Bushes
|tip They look like small flower bushes on the ground around this area.
collect 3 Haze Leaf##37085 |q 11990/2 |goto 14.6,45.3
step
Click a Waterweed
|tip They look like big green bushes underwater around this area.
collect Waterweed Frond##35795 |q 11990/3 |goto 15.2,40.3
step
talk Drakuru##26423
turnin Vial of Visions##11990 |goto 16.4,47.8
step
talk Prigmon##26519
accept Scourgekabob##12484 |goto 15.7,46.7
step
Click a Scourged Troll Mummy on the ground next to you
collect 1 Scourged Troll Mummy##38149 |q 12484 |goto 15.7,46.9
step
Use your Scourged Troll Mummy next to the burning pile of mummies |use Scourged Troll Mummy##38149
Burn a Mummified Carcass |q 12484/1 |goto 16.9,48.3
step
talk Mack Fearsen##26604
turnin Scourgekabob##12484 |goto 16.7,48.3
accept Seared Scourge##12029 |goto 16.7,48.3
step
Jump on the big rock and stand on it
Use Mack's Dark Grog and throw it at the trolls running around to the north |use Mack's Dark Grog##35908
Burn 20 Scourge Trolls |q 12029/1 |goto 16,29.9
step
talk Mack Fearsen##26604
turnin Seared Scourge##12029 |goto 16.7,48.3
step
label "dailies"
talk Mack Fearsen##26604
accept Seared Scourge##12038 |goto Grizzly Hills 16.7,48.3
step
Jump on the big rock and stand on it
Use Mack's Dark Grog and throw it at the trolls running around to the north |use Mack's Dark Grog##35908
Burn 30 Scourge Trolls |q 12038/1 |goto 16,29.9
step
talk Mack Fearsen##26604
turnin Seared Scourge##12038 |goto Grizzly Hills 16.7,48.3
step
You have completed this daily guide today. You can do more dailies tomorrow
Click here to return to the beginning of the guide |confirm
|next "dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Grizzly Hills\\Venture Bay Dailies",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the daily quests in the Venture Bay region of Grizzly Hills. There are no pre-quests needed to unlock the daily quests offered in this guide section.",
},[[
step
Proceeding to proper section |next |only if default
Prceeding to proper section |next "dailies" |only if completedq(12029)
step
talk Samir##26424
accept Filling the Cages##11984 |goto Grizzly Hills 16.2,47.6
step
talk Budd##26429
Tell him it's time to play with the ice trolls |havebuff Budd's Attention Span |q 11984 |goto 16.4,48.3
step
Use Budd's pet bar skill Tag Troll to have him stun a troll |petaction Tag Troll
Use your Bounty Hunter's Cage on the stunned troll |use Bounty Hunter's Cage##35736
Capture a Live Ice Troll |q 11984/1 |goto 13.2,60.5
step
talk Samir##26424
turnin Filling the Cages##11984 |goto 16.2,47.6
step
talk Drakuru##26423
accept Truce?##11989 |goto 16.4,47.8
step
Click the Dull Carving Knife |tip It's a knife stuck in the side of this tree trunk.
collect 1 Dull Carving Knife##38083 |q 11989 |goto 16.5,47.8
step
Use your Dull Carving Knife next to the yellow cage |use Dull Carving Knife##38083
talk Drakuru##26423
Shake his hand
Make a Blood Pact With Drakuru |q 11989/1 |goto 16.4,47.8
step
talk Drakuru##26423
turnin Truce?##11989 |goto 16.4,47.8
accept Vial of Visions##11990 |goto 16.4,47.8
step
talk Ameenah##26474
buy 1 Imbued Vial |q 11990/1 |goto 16,47.8
step
Click the Hazewood Bushes
|tip They look like small flower bushes on the ground around this area.
collect 3 Haze Leaf##37085 |q 11990/2 |goto 14.6,45.3
step
Click a Waterweed
|tip They look like big green bushes underwater around this area.
collect Waterweed Frond##35795 |q 11990/3 |goto 15.2,40.3
step
talk Drakuru##26423
turnin Vial of Visions##11990 |goto 16.4,47.8
step
talk Prigmon##26519
accept Scourgekabob##12484 |goto 15.7,46.7
step
Click a Scourged Troll Mummy on the ground next to you
collect 1 Scourged Troll Mummy##38149 |q 12484 |goto 15.7,46.9
step
Use your Scourged Troll Mummy next to the burning pile of mummies|use Scourged Troll Mummy##38149
Burn a Mummified Carcass |q 12484/1 |goto 16.9,48.3
step
talk Mack Fearsen##26604
turnin Scourgekabob##12484 |goto 16.7,48.3
accept Seared Scourge##12029 |goto 16.7,48.3
step
Jump on the big rock and stand on it
Use Mack's Dark Grog and throw it at the trolls running around to the north|use Mack's Dark Grog##35908
Burn 20 Scourge Trolls |q 12029/1 |goto 16,29.9
step
talk Mack Fearsen##26604
turnin Seared Scourge##12029 |goto 16.7,48.3
step
label "dailies"
talk General Gorlok##27708
accept Riding the Red Rocket##12432 |goto Grizzly Hills 14.8,86.6
If he's not there, then you have to take control of Venture Bay for the Horde
To take control of Venture Bay for the Horde, go to 15.1,88.0
|tip Hide behind the lighthouse in between the 2 big brown rocks.  Flag yourself for PvP and a bar will appear under your minimap.  Sit here until the bar marker is all the way to the right, this will make General Gorlok spawn.
step
talk Stone Guard Ragetotem##27606
accept Smoke 'Em Out##12324 |goto 11.4,76.7
step
talk Centurion Kaggrum##27563
accept Keep Them at Bay##12317 |goto 10.1,77.3
step
talk General Khazgar##27532
accept Crush Captain Brightwater!##12315 |goto 10.1,77.2
step
Toss the Smoke Bomb into the buildings to smoke out Venture Co. Stragglers |use Smoke Bomb##37621
Building one can be found at [18.0,79.6]
Building two can be found at [16.4,76.6]
Building three can be found at [14.6,76.7]
Smoke out 20 Venture Company Stragglers |q 12324/1 |goto 18.0,79.6
step
Kill Alliance Players or Westfall Brigade Marine in Venture Bay
Kill 10 Alliance in Venture Bay |q 12317/1 |goto 14.8,77.8
step
kill Captain Brightwater##27509 |q 12315/1 |goto 17.0,81.6
step
Click the Element 115 in the back room of the ship
|tip It looks like a red canister with a handle on the top.
collect Element 115##37664 |q 12432 |goto 16.4,80.3
step
On the next step you will guide a rocket into this Alliance lumber boat
Your target will be the wooden X on the side
Go to 13.6,88.9
You will want to use your keys, not your mouse, to guide the rocket
Avoid icebergs or the rocket will explode and you will have to start over
Click a red rocket to take control of one |invehicle |c |q 12432 |goto 21.4,84.5
step
Hit the wooden X on the back of the Alliance Lumber boat
Destroy the Alliance Lumber boat |q 12432/1 |goto 9.6,79.1
step
talk General Gorlok##27708
turnin Riding the Red Rocket##12432 |goto 14.8,86.6
If he's not there, then you have to take control of Venture Bay for the Horde
To take control of Venture Bay for the Horde, go to 15.1,88.0
|tip Hide behind the lighthouse in between the 2 big brown rocks.  Flag yourself for PvP and a bar will appear under your minimap.  Sit here until the bar marker is all the way to the right, this will make General Gorlok spawn.
step
talk Stone Guard Ragetotem##27606
turnin Smoke 'Em Out##12324 |goto 11.4,76.7
step
talk Centurion Kaggrum##27563
turnin Keep Them at Bay##12317 |goto 10.1,77.3
step
talk General Khazgar##27532
turnin Crush Captain Brightwater!##12315 |goto 10.1,77.2
step
You have completed this daily guide today. You can do more dailies tomorrow
Click here to return to the beginning of the guide |confirm
|next "dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Howling Fjord\\Kamagua Dailies with Pre-Quests",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the daily quest in the Kamagua region of Howling Fjord.",
},[[
step
Proceeding to proper section |next |only if default
Proceeding to proper section |next "dailies" |only if completedq(11469)
step
talk Orfus of Kamagua##23804 |goto Howling Fjord 40.3,60.3
accept The Dead Rise!##11504 |goto Howling Fjord 40.3,60.3
step
Click the Mound of Debris
|tip It looks like a pile of dirt in the bottom of this small pit, next to a skeleton.
collect Fengir's Clue##34222 |q 11504/1 |goto 57.7,77.5
step
Click the Unlocked Chest
|tip It looks like a small chest in the bottom of this small pit, next to a skeleton.
collect Rodin's Clue##34223 |q 11504/2 |goto 59.2,77
step
Click the Long Tail Feather
|tip It's a small blue feather sitting on a circular shield in this pit, on top of a skeleton.
collect Isuldof's Clue##34224 |q 11504/3 |goto 59.8,79.4
step
Click the Cannonball
|tip It looks like a big round grey ball sitting in the dirt in this pit, between a skeleton's legs.
collect Windan's Clue##34225 |q 11504/4 |goto 62,80
step
talk Orfus of Kamagua##23804
turnin The Dead Rise!##11504 |goto 40.3,60.3
accept Elder Atuik and Kamagua##11507 |goto 40.3,60.3
step
Go northwest across the Ancient Lift
talk Elder Atuik##24755
turnin Elder Atuik and Kamagua##11507 |goto 25.0,57.0
accept Grezzix Spindlesnap##11508 |goto 25.0,57.0
step
talk Grezzix Spindlesnap##24643
turnin Grezzix Spindlesnap##11508 |goto 23.1,62.7
accept Street "Cred"##11509 |goto 23.1,62.7
step
talk "Silvermoon" Harry##24539
turnin Street "Cred"##11509 |goto 35.1,80.9
step
talk Scuttle Frostprow##24784
accept Swabbin' Soap##11469 |goto 37.8,79.6
step
kill Big Roy##24785
collect Big Roy's Blubber##34122 |q 11469/1 |goto 31.4,77.9
step
talk Scuttle Frostprow##24784
turnin Swabbin' Soap##11469 |goto 37.8,79.6
step
label "dailies"
talk Anuniaq##24810
accept The Way to His Heart...##11472 |goto Howling Fjord 24.6,58.9
step
Use Anuniaq's Net on the Schools of Tasty Reef Fish |use Anuniaq's Net##40946
|tip They look like swarms of fish in the water.
kill Great Reef Sharks |n
collect 10 Tasty Reef Fish##34127 |q 11472 |goto 28.9,74.8
step
Use your Tasty Reef Fish on a Reef Bull as far away as you can |use Tasty Reef Fish##34127
He will come to the spot where you're standing
Keep doing this
Lead the Reef Bull to a Reef Cow on the other side of the water |q 11472/1 |goto 31,74.4
step
talk Anuniaq##24810
turnin The Way to His Heart...##11472 |goto 24.6,58.9
step
You have completed this daily guide today. You can do more dailies tomorrow
Click here to return to the beginning of the guide |confirm
|next "dailies"
]])
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Argent Tournament Grounds\\Aspirant Rank Dailies",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through unlocking Aspirant Rank dailies in order to achieve Argent Tournament Grounds Valiant rank.",
condition_end=function() return completedq(13680) end,
next="Dailies Guides\\Wrath of the Lich King Dailies\\Argent Tournament Grounds\\Valiant Rank Dailies",
},[[
step
talk Helidan Lightwing##33849
fpath Argent Tournament Grounds |goto Icecrown/0 72.59,22.61
step
talk Justicar Mariel Trueheart##33817
|tip Inside the building.
accept The Argent Tournament##13668 |goto 69.66,22.86
step
talk Magister Edien Sunhollow##33542
|tip Inside the building.
turnin The Argent Tournament##13668 |goto 76.27,24.38
accept Mastery Of Melee##13829 |goto 76.27,24.38
step
talk Amariel Sunsworn##33658
|tip Inside the building.
accept Mastery Of The Charge##13839 |goto 76.31,24.38
step
talk Galathia Brightdawn##33659
|tip Inside the building.
accept Mastery Of The Shield-Breaker##13838 |goto 76.24,24.44
step
Equip the Horde Lance |equipped Horde Lance##46070 |q 13838
step
clicknpc Stabled Sunreaver Hawkstrider##33842
Mount the Stabled Sunreaver Hawkstrider |invehicle |q 13838 |goto 75.63,23.66
step
talk Valis Windchaser##33974
Tell him _"Show me how to train with a Ranged Target."_
Seek Valis Windchaser's Advice |q 13838/1 |goto 73.20,19.23
step
kill Ranged Target##33243
Use Shield-Breaker on #2# Vulnerable Ranged Targets |q 13838/2 |goto 72.95,19.16
|tip Use the "Shield-Breaker" ability on a Ranged Target in front of you several times.
step
talk Rugan Steelbelly##33972
Tell him _"Show me how to train with a Charge Target."_
Seek Rugan Steelbelly's Advice |q 13839/1 |goto 72.67,18.88
step
kill Charge Target##33272
Use Charge on #2# Vulnerable Charge Targets |q 13839/2 |goto 72.88,19.10
|tip Use the "Shield-Breaker" ability on a Charge Target.
|tip Immediately use "Charge" on it.
|tip Repeat this procedure again.
step
talk Jeran Lockwood##33973
Tell him _"Show me how to train with a Melee Target."_
Seek Jeran Lockwood's Advice |q 13829/1 |goto 72.46,19.29
step
kill Melee Target##33229
Use Thrust on the Melee Target #5# Times |q 13829/2 |goto 72.29,19.25
|tip Build and maintain 3 stacks of "Defend."
|tip Use the "Thrust" ability on the Melee Target.
|tip Alternate using "Defend" and "Thrust" to maintain the buff.
step
Dismount the Stabled Quel'dorei Steed |outvehicle |q 13838
|tip Click the "Exit" button on your vehicle bar.
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
step
talk Amariel Sunsworn##33658
|tip Inside the building.
turnin Mastery Of The Charge##13839 |goto 76.31,24.38
step
talk Galathia Brightdawn##33659
|tip Inside the building.
turnin Mastery Of The Shield-Breaker##13838 |goto 76.24,24.44
step
talk Magister Edien Sunhollow##33542
|tip Inside the building.
turnin Mastery Of Melee##13829 |goto 76.27,24.38
accept Up To The Challenge##13678 |goto 76.27,24.38 |only if not completedq(13678)
accept Up To The Challenge##13678 |goto 76.27,24.38 |next "Collect_15_Aspirant's Seals" |only if completedq(13678)
stickystart "Collect_15_Aspirant's Seals"
step
label "Accept_Aspirant_Dailies"
talk Magister Edien Sunhollow##33542
|tip Inside the building.
accept A Blade Fit For A Champion##13673 |or |goto 76.27,24.38 |only if questpossible |or
accept A Worthy Weapon##13674 |or |goto 76.27,24.38 |only if questpossible |or
accept The Edge of Winter##13675 |or |goto 76.27,24.38 |only if questpossible |or
Accept the Magister's Daily Quest |complete false |goto 76.27,24.38 |or |only if not completedq(13673,13674,13675,13680)
Accept the Magister's Daily Quest |complete true |goto 76.27,24.38 |or |only if completedq(13673,13674,13675,13680)
|tip You will only be able to accept one quest each day.
step
talk Amariel Sunsworn##33658
|tip Inside the building.
accept Training in the Field##13676 |goto 76.31,24.38 |only if not completedq(13676,13680)
accept Training in the Field##13676 |goto 76.31,24.38 |complete true |only if completedq(13676,13680)
step
talk Galathia Brightdawn##33659
|tip Inside the building.
accept Learning the Reins##13677 |goto 76.24,24.44 |only if not completedq(13677,13680)
accept Learning the Reins##13677 |goto 76.24,24.44 |complete true |only if completedq(13677,13680)
stickystop "Collect_15_Aspirant's Seals"
step
Equip the Horde Lance |equipped Horde Lance##46070 |goto 75.63,23.66 |q 13677
|only if haveq(13677) or completedq(13677)
step
clicknpc Stabled Sunreaver Hawkstrider##33842
Mount the Stabled Sunreaver Hawkstrider |invehicle |q 13677 |goto 75.63,23.66
|only if haveq(13677) or completedq(13677)
step
kill Ranged Target##33243
Use Shield-Breaker on #2# Vulnerable Ranged Targets |q 13677/2 |goto 72.95,19.16
|tip Use the "Shield-Breaker" ability on a Ranged Target in front of you several times.
|only if haveq(13677) or completedq(13677)
step
kill Charge Target##33272
Use Charge on #2# Vulnerable Charge Targets |q 13677/3 |goto 72.88,19.10
|tip Use the "Shield-Breaker" ability on a Charge Target.
|tip Immediately use "Charge" on it.
|tip Repeat this procedure again.
|only if haveq(13677) or completedq(13677)
step
kill Melee Target##33229
Use Thrust on the Melee Target #5# Times |q 13677/1 |goto 72.29,19.25
|tip Build and maintain 3 stacks of "Defend."
|tip Use the "Thrust" ability on the Melee Target.
|tip Alternate using "Defend" and "Thrust" to maintain the buff.
|only if haveq(13677) or completedq(13677)
step
Dismount the Stabled Quel'dorei Steed |outvehicle |q 13677
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13677) or completedq(13677)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
|only if haveq(13677) or completedq(13677)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
accept Get Kraken!##14108 |goto 69.51,23.09 |only if questpossible |or
accept The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if questpossible |or
Accept Silverdawn's Daily Quest |complete false |goto 69.51,23.09 |or |only if not completedq(14108,14107,13680)
Accept Silverdawn's Daily Quest |complete true |goto 69.51,23.09 |or |only if completedq(14108,14107,13680)
|tip You will only be able to accept one quest each day.
|only if achieved(2816)
step
talk High Crusader Adelard##34882
|tip Inside the building.
accept Deathspeaker Kharos##14105 |goto 69.48,23.13 |only if questpossible |or
accept Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if questpossible |or
accept Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if questpossible |or
accept Ornolf The Scarred##14104 |goto 69.48,23.13 |only if questpossible |or
Accept Adelard's Daily Quest |complete false |goto 69.48,23.13 |or |only if not completedq(14105,14101,14102,14104,13680)
Accept Adelard's Daily Quest |complete true |goto 69.48,23.13 |or |only if completedq(14105,14101,14102,14104,13680)
|tip You will only be able to accept one quest each day.
|only if achieved(2816)
step
talk Stabled Argent Hippogryph##35117
Choose _Mount the Hippogryph and prepare for battle!_
Mount the Stabled Argent Hippogryph |ontaxi |goto Icecrown/0 69.78,22.33 |q 14108
|only if haveq(14108) or completedq(14108)
stickystart "Kill_6_Kvaldir_Deepcallers"
step
use the Flaming Spears##46954
|tip Use them on the North Sea Kraken below.
|tip If you manage to kill it, you will get an additional daily quest to turn in.
Hurl Spears at the North Sea Kraken #8# Times |q 14108/1 |goto Hrothgar's Landing/0 51.29,51.04
You can also find it at [43.76,53.12]
|only if haveq(14108) or completedq(14108)
step
label "Kill_6_Kvaldir_Deepcallers"
use the Flaming Spears##46954
|tip Use them on Kvaldir Deepcallers below.
kill 6 Kvaldir Deepcaller##35092 |q 14108/2 |goto 46.15,48.96
|only if haveq(14108) or completedq(14108)
step
Watch the dialogue
|tip You will eventually start flying back to the Argent Tournament Grounds.
Return to the Argent Tournament Grounds |offtaxi |goto Icecrown/0 69.87,22.17
|only if haveq(14108) or completedq(14108)
step
use the Mistcaller's Charm##47009
|tip Inside the cave next to the blue floating crystal.
kill Mistcaller Yngvar##34965 |q 14102/1 |goto Hrothgar's Landing/0 43.92,24.35
|only if haveq(14102) or completedq(14102)
step
use the Kvaldir War Horn##47006
|tip Use it next to the fire.
|tip Drottinn will float down and attack.
kill Drottinn Hrothgar##34980 |q 14101/1 |goto 50.65,15.41
|only if haveq(14101) or completedq(14101)
step
use the Captured Kvaldir Banner##47029
kill Ornolf the Scarred##35012 |q 14104/1 |goto 58.68,31.42
|only if haveq(14104) or completedq(14104)
step
kill Deathspeaker Kharos##34808 |q 14105/1 |goto Icecrown/0 64.23,21.43
|tip He's standing in a small pit area.
|only if haveq(14105) or completedq(14105)
stickystart "Slay_8_Icecrown_Scourge"
step
click Discarded Soul Crystal##195344+
|tip They look like glowing crystals on the ground around this area.
collect Discarded Soul Crystal##47035 |n
|tip One crystial is required for each blessing.
use Light-Blessed Relic##47033
|tip Use it on Fallen Hero's Spirits.
|tip They are neutral NPCs that walk around this area.
Bless #6# Fallen Hero's Spirits |q 14107/1 |goto 49.62,39.93
|only if haveq(14107) or completedq(14107)
step
label "Slay_8_Icecrown_Scourge"
Kill enemies around this area
|tip Frostbrood Whelps and Vrykul Necrolords count.
|tip Scourge Converters also count at The Desolation Gate. |only if not readyq(14107) or completedq(14107)
Slay #8# Icecrown Scourge |q 13676/1 |goto 70.79,39.82
|only if haveq(13676) or completedq(13676)
step
click Winter Hyacinth##194213+
|tip They look like purple and pink flowers on the ground around this area.
collect 4 Winter Hyacinth##45000 |q 13674 |goto 70.41,74.55
|only if haveq(13674) or completedq(13674)
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13675 |goto Crystalsong Forest/0 55.10,74.90
|only if haveq(13675) or completedq(13675)
step
use the Winter Hyacinth##45000
|tip Use them in the water.
Watch the dialogue
click the Blade of Drak'Mar##194238
|tip It will spawn after a brief dialogue.
collect Blade of Drak'Mar##44978 |q 13674/1 |goto Dragonblight/0 93.18,25.99
|only if haveq(13674) or completedq(13674)
step
label "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
use the Warts-B-Gone Lip Balm##44986
Gain the "Warts-B-Gone Lip Balm" Buff |complete hasbuff("spell:62574") or readyq(13673) |goto Grizzly Hills/0 61.18,49.57 |q 13673
|only if haveq(13673) or completedq(13673)
step
Kiss Lake Frogs |script DoEmote("KISS")
|tip Target Lake Frogs and perform the Kiss emote.
|tip Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake.
talk Maiden of Ashwood Lake##33220
Ask her her _"Glad to help, my lady. I'm told you were once the guardian of a fabled sword. Do you know where I might find it?"_
collect Ashwood Brand##44981 |q 13673/1 |goto Grizzly Hills/0 61.18,49.57 |or
'|complete not hasbuff("spell:62574") and not (readyq(13673) or completedq(13673)) |or |next "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
|only if haveq(13673) or completedq(13673)
step
use the Everburning Ember##45005
|tip Use it on the Maiden of Winter's Breath.
collect Winter's Edge##45003 |q 13675/1 |goto Howling Fjord/0 42.18,19.66
|only if haveq(13675) or completedq(13675)
stickystart "Collect_15_Aspirant's Seals"
step
talk Magister Edien Sunhollow##33542
|tip Inside the building.
turnin A Blade Fit For A Champion##13673 |goto Icecrown/0 76.27,24.38 |only if haveq(13673) or completedq(13673)
turnin A Worthy Weapon##13674 |goto 76.27,24.38 |only if haveq(13674) or completedq(13674)
turnin The Edge of Winter##13675 |goto 76.27,24.38 |only if haveq(13675) or completedq(13675)
|only if haveq(13673,13674,13675) or completedq(13673,13674,13675)
step
talk Amariel Sunsworn##33658
|tip Inside the building.
turnin Training in the Field##13676 |goto 76.31,24.38
|only if haveq(13676) or completedq(13676)
step
talk Galathia Brightdawn##33659
|tip Inside the building.
turnin Learning the Reins##13677 |goto 76.24,24.44
|only if haveq(13677) or completedq(13677)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
turnin Get Kraken!##14108 |goto 69.51,23.09 |only if haveq(14108) or completedq(14108)
turnin The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if haveq(14107) or completedq(14107)
turnin Identifying the Remains##14095 |goto 69.51,23.09 |only if haveq(14095) or completedq(14095)
|only if haveq(14108,14107,14095) or completedq(14108,14107,14095)
step
talk High Crusader Adelard##34882
|tip Inside the building.
turnin Deathspeaker Kharos##14105 |goto 69.48,23.13 |only if haveq(14105) or completedq(14105)
turnin Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if haveq(14101) or completedq(14101)
turnin Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if haveq(14102) or completedq(14102)
turnin Ornolf The Scarred##14104 |goto 69.48,23.13 |only if haveq(14104) or completedq(14104)
|only if haveq(14105,14101,14102,14104) or completedq(14105,14101,14102,14104)
step
You have completed all available Argent Tournament Aspirant dailies
|tip This guide will reset when more become available.
'|complete not completedq(13673,13674,13675,13676,13677,14108,14107,14105,14101,14102,14104) and itemcount(44987) < 25 and not completedq(13678) |next "Accept_Aspirant_Dailies" |or
'|complete completedq(13672) or itemcount(44987) >= 15 |or
step
label "Collect_15_Aspirant's Seals"
collect 15 Aspirant's Seal##45192 |q 13678/1
|tip Complete Argent Tournament daily quests to earn these each day.
step
talk Magister Edien Sunhollow##33542
|tip Inside the building.
turnin Up To The Challenge##13678 |goto 76.27,24.38
accept The Aspirant's Challenge##13680 |goto 76.27,24.38
step
Equip the Horde Lance |equipped Horde Lance##46070 |q 13680
step
clicknpc Stabled Sunreaver Hawkstrider##33842
Mount the Stabled Sunreaver Hawkstrider |invehicle |q 13680 |goto 71.83,19.98
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 spell:62552 |q 13680
|tip Use the "Defend" ability on your vehicle bar.
|tip Before beginning combat, having 3 stacks of this buff is essential.
step
talk Squire David##33447
Tell him _"I am ready to fight!"_
|tip Before beginning combat, having 3 stacks of the "Defend" buff is essential.
kill Argent Valiant##33448
|tip It will ride out to you.
|tip Maintain 3 stacks of the "Defend" buff at all times.
|tip Use "Shield-Breaker" until the Valliant has no shields left, then use the "Charge" ability.
|tip Repeat this process until it is defeated.
Defeat the Argent Valiant |q 13680/1 |goto 71.43,19.57
step
Dismount the Stabled Sunreaver Hawkstrider |outvehicle |q 13680
|tip Click the "Exit" button on your vehicle bar.
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
step
talk Magister Edien Sunhollow##33542
|tip Inside the building.
|tip Don't forget to re-equip your weapon.
turnin The Aspirant's Challenge##13680 |goto 76.27,24.38
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Argent Tournament Grounds\\Valiant Rank Dailies",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through unlocking Valiant Rank dailies in order to achieve Argent Tournament Grounds Champion rank.",
hideif=function() return not raceclass{"Orc","Goblin","Pandaren","Vulpera","MagharOrc"} end,
condition_end=function() return completedq(13736) end,
next="Dailies Guides\\Wrath of the Lich King Dailies\\Argent Tournament Grounds\\Champion Rank Dailies",
condition_valid=function() return completedq(13680) end,
condition_valid_msg="You must complete \"The Aspirant's Challenge\" quest and reach Aspirant rank with the Argent Tournament Grounds.\n\n"..
"Complete the \"Aspirant Rank Dailies\" guide first.",
},[[
step
talk Magister Edien Sunhollow##33542
|tip Inside the building.
accept A Valiant Of Orgrimmar##13691 |goto Icecrown/0 76.27,24.38
step
talk Mokra the Skullcrusher##33361
|tip Inside the building.
turnin A Valiant Of Orgrimmar##13691 |goto 76.46,24.59
accept The Valiant's Charge##13697 |goto 76.46,24.59
stickystart "Collect_25_Valiant's Seals"
step
label "Accept_Valiant_Dailies"
talk Mokra the Skullcrusher##33361
|tip Inside the building.
accept A Blade Fit For A Champion##13762 |goto 76.46,24.59 |only if questpossible |or
accept A Worthy Weapon##13763 |goto 76.46,24.59 |only if questpossible |or
accept The Edge Of Winter##13764 |goto 76.46,24.59 |only if questpossible |or
Accept Mokra's Daily Quest |complete false |goto 76.46,24.59 |or |only if not completedq(13762,13763,13764,13736)
Accept Mokra's Daily Quest |complete true |goto 76.46,24.59 |or |only if completedq(13762,13763,13764,13736)
|tip You will only be able to accept one quest each day.
step
talk Akinos##33405
|tip Inside the building.
accept A Valiant's Field Training##13765 |goto 76.50,24.48 |only if not completedq(13765,13736)
accept A Valiant's Field Training##13765 |goto 76.50,24.48 |only if completedq(13765,13736)
step
talk Morah Worgsister##33544
|tip Inside the building.
accept The Grand Melee##13767 |goto 76.40,24.59 |only if not completedq(13767,13856,13736)
accept At The Enemy's Gates##13856 |goto 76.40,24.59 |only if not completedq(13767,13856,13736)
accept At The Enemy's Gates##13856 |complete true |goto 76.40,24.59 |only if completedq(13767,13856,13736)
stickystop "Collect_25_Valiant's Seals"
step
Equip the Horde Lance |equipped Horde Lance##46070 |q 13767
|only if haveq(13767) or completedq(13767)
step
clicknpc Stabled Orgrimmar Wolf##33799
Mount the Stabled Orgrimmar Wolf |invehicle |q 13767 |goto 75.55,24.00
|only if haveq(13767) or completedq(13767)
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 spell:62552 |goto 75.36,26.03 |q 13767
|tip Use the "Defend" ability on your vehicle bar.
|tip Before beginning combat, having 3 stacks of this buff is essential.
|only if haveq(13767) or completedq(13767)
step
Talk to the riders on mounts of other Horde races
Tell them you are ready to fight!
Fight and defeat them
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to remove their defenses, then use the "Charge" ability to deal damage.
|tip "Thrust" is useful in melee range, but make sure your shield is stacked up before using it.
collect 3 Mark of the Valiant##45127 |q 13767/1 |goto 75.36,26.03
|only if haveq(13767) or completedq(13767)
step
Dismount the Stabled Orgrimmar Wolf |outvehicle |q 13767
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13767) or completedq(13767)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
|only if haveq(13767) or completedq(13767)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
accept Get Kraken!##14108 |goto 69.51,23.09 |only if questpossible |or
accept The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if questpossible |or
Accept Silverdawn's Daily Quest |complete false |goto 69.51,23.09 |or |only if not completedq(14108,14107,13736)
Accept Silverdawn's Daily Quest |complete true |goto 69.51,23.09 |or |only if completedq(14108,14107,13736)
|tip You will only be able to accept one quest each day.
|only if achieved(2816)
step
talk High Crusader Adelard##34882
|tip Inside the building.
accept Deathspeaker Kharos##14105 |goto 69.48,23.13 |only if questpossible |or
accept Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if questpossible |or
accept Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if questpossible |or
accept Ornolf The Scarred##14104 |goto 69.48,23.13 |only if questpossible |or
Accept Adelard's Daily Quest |complete false |goto 69.48,23.13 |or |only if not completedq(14105,14101,14102,14104,13736)
Accept Adelard's Daily Quest |complete true |goto 69.48,23.13 |or |only if completedq(14105,14101,14102,14104,13736)
|tip You will only be able to accept one quest each day.
|only if achieved(2816)
step
talk Stabled Argent Hippogryph##35117
Choose _Mount the Hippogryph and prepare for battle!_
Mount the Stabled Argent Hippogryph |ontaxi |goto Icecrown/0 69.78,22.33 |q 14108
|only if haveq(14108) or completedq(14108)
stickystart "Kill_6_Kvaldir_Deepcallers"
step
use the Flaming Spears##46954
|tip Use them on the North Sea Kraken below.
|tip If you manage to kill it, you will get an additional daily quest to turn in.
Hurl Spears at the North Sea Kraken #8# Times |q 14108/1 |goto Hrothgar's Landing/0 51.29,51.04
You can also find it at [43.76,53.12]
|only if haveq(14108) or completedq(14108)
step
label "Kill_6_Kvaldir_Deepcallers"
use the Flaming Spears##46954
|tip Use them on Kvaldir Deepcallers below.
kill 6 Kvaldir Deepcaller##35092 |q 14108/2 |goto 46.15,48.96
|only if haveq(14108) or completedq(14108)
step
Watch the dialogue
|tip You will eventually start flying back to the Argent Tournament Grounds.
Return to the Argent Tournament Grounds |offtaxi |goto Icecrown/0 69.87,22.17
|only if haveq(14108) or completedq(14108)
step
use the Mistcaller's Charm##47009
|tip Inside the cave next to the blue floating crystal.
kill Mistcaller Yngvar##34965 |q 14102/1 |goto Hrothgar's Landing/0 43.92,24.35
|only if haveq(14102) or completedq(14102)
step
use the Kvaldir War Horn##47006
|tip Use it next to the fire.
|tip Drottinn will float down and attack.
kill Drottinn Hrothgar##34980 |q 14101/1 |goto 50.65,15.41
|only if haveq(14101) or completedq(14101)
step
use the Captured Kvaldir Banner##47029
kill Ornolf the Scarred##35012 |q 14104/1 |goto 58.68,31.42
|only if haveq(14104) or completedq(14104)
step
kill Deathspeaker Kharos##34808 |q 14105/1 |goto Icecrown/0 64.23,21.43
|tip He's standing in a small pit area.
|only if haveq(14105) or completedq(14105)
step
click Discarded Soul Crystal##195344+
|tip They look like glowing crystals on the ground around this area.
collect Discarded Soul Crystal##47035 |n
|tip One crystial is required for each blessing.
use Light-Blessed Relic##47033
|tip Use it on Fallen Hero's Spirits.
|tip They are neutral NPCs that walk around this area.
Bless #6# Fallen Hero's Spirits |q 14107/1 |goto 49.62,39.93
|only if haveq(14107) or completedq(14107)
step
kill 10 Converted Hero##32255 |q 13765/1 |goto 44.62,52.62
|only if haveq(13765) or completedq(13765)
step
Equip the Horde Lance |equipped Horde Lance##46070 |goto Icecrown/0 48.87,71.41 |q 13856
|only if haveq(13856) or completedq(13856)
step
clicknpc Stabled Campaign Warhorse##34125
Mount the Stabled Campaign Warhorse |invehicle |goto 48.87,71.41 |q 13856
|only if haveq(13856) or completedq(13856)
stickystart "Kill_10_Bonegard_Scouts"
stickystart "Kill_3_Bonegard_Lieutenants"
step
kill 15 Boneguard Footman##33438 |q 13856/1 |goto 50.23,74.13
|tip Running over these with your warhorse will kill them.
|only if haveq(13856) or completedq(13856)
step
label "Kill_10_Bonegard_Scouts"
kill 10 Boneguard Scout##33550 |q 13856/2 |goto 50.23,74.13
|tip They fly around this area.
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to attack them in the air.
|only if haveq(13856) or completedq(13856)
step
label "Kill_3_Bonegard_Lieutenants"
kill 3 Boneguard Lieutenant##33429 |q 13856/3 |goto 50.61,76.93
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to remove their defenses, then use the "Charge" ability to deal damage.
|tip "Thrust" is useful in melee range, but make sure your shield is stacked up before using it.
|only if haveq(13856) or completedq(13856)
step
Dismount the Stabled Campaign Warhorse |outvehicle |q 13856
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13856) or completedq(13856)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
|only if haveq(13856) or completedq(13856)
step
click Winter Hyacinth##194213+
|tip They look like purple and pink flowers on the ground around this area.
collect 4 Winter Hyacinth##45000 |q 13763 |goto 70.41,74.55
|only if haveq(13763) or completedq(13763)
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13764 |goto Crystalsong Forest/0 55.10,74.90
|only if haveq(13764) or completedq(13764)
step
use the Winter Hyacinth##45000
|tip Use them in the water.
Watch the dialogue
click the Blade of Drak'Mar##194238
|tip It will spawn after a brief dialogue.
collect Blade of Drak'Mar##44978 |q 13763/1 |goto Dragonblight/0 93.18,25.99
|only if haveq(13763) or completedq(13763)
step
label "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
use the Warts-B-Gone Lip Balm##44986
Gain the "Warts-B-Gone Lip Balm" Buff |complete hasbuff("spell:62574") or readyq(13762) |goto Grizzly Hills/0 61.18,49.57 |q 13762
|only if haveq(13762) or completedq(13762)
step
Kiss Lake Frogs |script DoEmote("KISS")
|tip Target Lake Frogs and perform the Kiss emote.
|tip Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake.
talk Maiden of Ashwood Lake##33220
Ask her her _"Glad to help, my lady. I'm told you were once the guardian of a fabled sword. Do you know where I might find it?"_
collect Ashwood Brand##44981 |q 13762/1 |goto Grizzly Hills/0 61.18,49.57 |or
'|complete not hasbuff("spell:62574") and not (readyq(13762) or completedq(13762)) |or |next "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
|only if haveq(13762) or completedq(13762)
step
use the Everburning Ember##45005
|tip Use it on the Maiden of Winter's Breath.
collect Winter's Edge##45003 |q 13764/1 |goto Howling Fjord/0 42.18,19.66
|only if haveq(13764) or completedq(13764)
stickystart "Collect_25_Valiant's Seals"
step
talk Mokra the Skullcrusher##33361
|tip Inside the building.
turnin A Blade Fit For A Champion##13762 |goto Icecrown/0 76.46,24.59 |only if haveq(13762) or completedq(13762)
turnin A Worthy Weapon##13763 |goto 76.46,24.59 |only if haveq(13763) or completedq(13763)
turnin The Edge Of Winter##13764 |goto 76.46,24.59 |only if haveq(13764) or completedq(13764)
|only if haveq(13762,13763,13764) or completedq(13762,13763,13764)
step
talk Akinos##33405
|tip Inside the building.
turnin A Valiant's Field Training##13765 |goto 76.50,24.48
|only if haveq(13765) or completedq(13765)
step
talk Morah Worgsister##33544
|tip Inside the building.
turnin The Grand Melee##13767 |goto 76.40,24.59 |only if haveq(13767) or completedq(13767)
turnin At The Enemy's Gates##13856 |goto 76.40,24.59 |only if haveq(13856) or completedq(13856)
|only if haveq(13767,13856) or completedq(13767,13856)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
turnin Get Kraken!##14108 |goto 69.51,23.09 |only if haveq(14108) or completedq(14108)
turnin The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if haveq(14107) or completedq(14107)
turnin Identifying the Remains##14095 |goto 69.51,23.09 |only if haveq(14095) or completedq(14095)
|only if haveq(14108,14107,14095) or completedq(14108,14107,14095)
step
talk High Crusader Adelard##34882
|tip Inside the building.
turnin Deathspeaker Kharos##14105 |goto 69.48,23.13 |only if haveq(14105) or completedq(14105)
turnin Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if haveq(14101) or completedq(14101)
turnin Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if haveq(14102) or completedq(14102)
turnin Ornolf The Scarred##14104 |goto 69.48,23.13 |only if haveq(14104) or completedq(14104)
|only if haveq(14105,14101,14102,14104) or completedq(14105,14101,14102,14104)
step
You have completed all available Argent Tournament Valliant dailies
|tip This guide will reset when more become available.
'|complete not completedq(13762,13763,13764,13765,13767,13856,14108,14107,14105,14101,14102,14104) and itemcount(44987) < 25 and not completedq(13697) |next "Accept_Valiant_Dailies" |or
'|complete completedq(13697) or itemcount(44987) >= 25 |or
step
label "Collect_25_Valiant's Seals"
collect 25 Valiant's Seal##44987 |q 13697/1
|tip Complete Argent Tournament daily quests to earn these each day.
step
talk Mokra the Skullcrusher##33361
|tip Inside the building.
turnin The Valiant's Charge##13697 |goto 76.46,24.59
accept The Valiant's Challenge##13726 |goto 76.46,24.59
step
Equip the Horde Lance |equipped Horde Lance##46070 |q 13726
step
clicknpc Stabled Orgrimmar Wolf##33799
Mount the Stabled Orgrimmar Wolf |invehicle |q 13726 |goto 72.17,22.54
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 spell:62552 |q 13726 |goto 68.60,20.99
|tip Use the "Defend" ability on your vehicle bar.
|tip Before beginning combat, having 3 stacks of this buff is essential.
step
talk Squire Danny##33518
Tell him _"I am ready to fight!"_
|tip Before beginning combat, having 3 stacks of the "Defend" buff is essential.
kill Argent Champion##33707
|tip It will ride out to you.
|tip Maintain 3 stacks of the "Defend" buff at all times.
|tip Use "Shield-Breaker" until the Champion has no shields left, then use the "Charge" ability.
|tip Repeat this process until it is defeated.
Defeat the Argent Champion |q 13726/1 |goto 68.60,20.99
step
Dismount the Stabled Orgrimmar Wolf |outvehicle |q 13726
|tip Click the "Exit" button on your vehicle bar.
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
step
talk Mokra the Skullcrusher##33361
|tip Inside the building.
turnin The Valiant's Challenge##13726 |goto 76.46,24.59
accept A Champion Rises##13736 |goto 76.46,24.59
step
talk Justicar Mariel Trueheart##33817
|tip Inside the building.
turnin A Champion Rises##13736 |goto 69.66,22.86
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Argent Tournament Grounds\\Valiant Rank Dailies",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through unlocking Valiant Rank dailies in order to achieve Argent Tournament Grounds Champion rank.",
hideif=function() return not raceclass{"Troll","ZandalariTroll"} end,
condition_end=function() return completedq(13737) end,
next="Dailies Guides\\Wrath of the Lich King Dailies\\Argent Tournament Grounds\\Champion Rank Dailies",
condition_valid=function() return completedq(13680) end,
condition_valid_msg="You must complete \"The Aspirant's Challenge\" quest and reach Aspirant rank with the Argent Tournament Grounds.\n\n"..
"Complete the \"Aspirant Rank Dailies\" guide first.",
},[[
step
talk Magister Edien Sunhollow##33542
|tip Inside the building.
accept A Valiant Of Sen'jin##13693 |goto Icecrown/0 76.27,24.38
step
talk Zul'tore##33372
|tip Inside the building.
turnin A Valiant Of Sen'jin##13693 |goto 75.96,24.52
accept The Valiant's Charge##13719 |goto 75.96,24.52
stickystart "Collect_25_Valiant's Seals"
step
label "Accept_Valiant_Dailies"
talk Zul'tore##33372
|tip Inside the building.
accept A Blade Fit For A Champion##13768 |goto 75.96,24.52 |only if questpossible |or
accept A Worthy Weapon##13769 |goto 75.96,24.52 |only if questpossible |or
accept The Edge Of Winter##13770 |goto 75.96,24.52 |only if questpossible |or
Accept Zul'tore's Daily Quest |complete false |goto 75.96,24.52 |or |only if not completedq(13768,13769,13770,13737)
Accept Zul'tore's Daily Quest |complete true |goto 75.96,24.52 |or |only if completedq(13768,13769,13770,13737)
|tip You will only be able to accept one quest each day.
step
talk Shadow Hunter Mezil-kree##33540
accept A Valiant's Field Training##13771 |goto 76.04,24.59 |only if not completedq(13771,13737)
accept A Valiant's Field Training##13771 |complete true |goto 76.04,24.59 |only if completedq(13771,13737)
step
talk Gahju##33545
|tip Inside the building.
accept The Grand Melee##13772 |goto 75.93,24.41 |only if not completedq(13772,13857,13737)
accept At The Enemy's Gates##13857 |goto 75.93,24.41 |only if not completedq(13772,13857,13737)
accept At The Enemy's Gates##13857 |complete true |goto 75.93,24.41 |only if completedq(13772,13857,13737)
stickystop "Collect_25_Valiant's Seals"
step
Equip the Horde Lance |equipped Horde Lance##46070 |q 13772
|only if haveq(13772) or completedq(13772)
step
clicknpc Stabled Darkspear Raptor##33796
Mount the Stabled Darkspear Raptor |invehicle |q 13772 |goto 75.58,23.76
|only if haveq(13772) or completedq(13772)
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 spell:62552 |goto 75.36,26.03 |q 13772
|tip Use the "Defend" ability on your vehicle bar.
|tip Before beginning combat, having 3 stacks of this buff is essential.
|only if haveq(13772) or completedq(13772)
step
Talk to the riders on mounts of other Horde races
Tell them _"I am ready to fight!"_
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to remove their defenses, then use the "Charge" ability to deal damage.
|tip "Thrust" is useful in melee range, but make sure your shield is stacked up before using it.
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range. Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13772/1 |goto 75.36,26.03
|only if haveq(13772) or completedq(13772)
step
Dismount the Stabled Darkspear Raptor |outvehicle |q 13772
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13772) or completedq(13772)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
|only if haveq(13772) or completedq(13772)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
accept Get Kraken!##14108 |goto 69.51,23.09 |only if questpossible |or
accept The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if questpossible |or
Accept Silverdawn's Daily Quest |complete false |goto 69.51,23.09 |or |only if not completedq(14108,14107,13737)
Accept Silverdawn's Daily Quest |complete true |goto 69.51,23.09 |or |only if completedq(14108,14107,13737)
|tip You will only be able to accept one quest each day.
|only if achieved(2816)
step
talk High Crusader Adelard##34882
|tip Inside the building.
accept Deathspeaker Kharos##14105 |goto 69.48,23.13 |only if questpossible |or
accept Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if questpossible |or
accept Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if questpossible |or
accept Ornolf The Scarred##14104 |goto 69.48,23.13 |only if questpossible |or
Accept Adelard's Daily Quest |complete false |goto 69.48,23.13 |or |only if not completedq(14105,14101,14102,14104,13737)
Accept Adelard's Daily Quest |complete true |goto 69.48,23.13 |or |only if completedq(14105,14101,14102,14104,13737)
|tip You will only be able to accept one quest each day.
|only if achieved(2816)
step
talk Stabled Argent Hippogryph##35117
Choose _Mount the Hippogryph and prepare for battle!_
Mount the Stabled Argent Hippogryph |ontaxi |goto Icecrown/0 69.78,22.33 |q 14108
|only if haveq(14108) or completedq(14108)
stickystart "Kill_6_Kvaldir_Deepcallers"
step
use the Flaming Spears##46954
|tip Use them on the North Sea Kraken below.
|tip If you manage to kill it, you will get an additional daily quest to turn in.
Hurl Spears at the North Sea Kraken #8# Times |q 14108/1 |goto Hrothgar's Landing/0 51.29,51.04
You can also find it at [43.76,53.12]
|only if haveq(14108) or completedq(14108)
step
label "Kill_6_Kvaldir_Deepcallers"
use the Flaming Spears##46954
|tip Use them on Kvaldir Deepcallers below.
kill 6 Kvaldir Deepcaller##35092 |q 14108/2 |goto 46.15,48.96
|only if haveq(14108) or completedq(14108)
step
Watch the dialogue
|tip You will eventually start flying back to the Argent Tournament Grounds.
Return to the Argent Tournament Grounds |offtaxi |goto Icecrown/0 69.87,22.17
|only if haveq(14108) or completedq(14108)
step
use the Mistcaller's Charm##47009
|tip Inside the cave next to the blue floating crystal.
kill Mistcaller Yngvar##34965 |q 14102/1 |goto Hrothgar's Landing/0 43.92,24.35
|only if haveq(14102) or completedq(14102)
step
use the Kvaldir War Horn##47006
|tip Use it next to the fire.
|tip Drottinn will float down and attack.
kill Drottinn Hrothgar##34980 |q 14101/1 |goto 50.65,15.41
|only if haveq(14101) or completedq(14101)
step
use the Captured Kvaldir Banner##47029
kill Ornolf the Scarred##35012 |q 14104/1 |goto 58.68,31.42
|only if haveq(14104) or completedq(14104)
step
kill Deathspeaker Kharos##34808 |q 14105/1 |goto Icecrown/0 64.23,21.43
|tip He's standing in a small pit area.
|only if haveq(14105) or completedq(14105)
step
click Discarded Soul Crystal##195344+
|tip They look like glowing crystals on the ground around this area.
collect Discarded Soul Crystal##47035 |n
|tip One crystial is required for each blessing.
use Light-Blessed Relic##47033
|tip Use it on Fallen Hero's Spirits.
|tip They are neutral NPCs that walk around this area.
Bless #6# Fallen Hero's Spirits |q 14107/1 |goto 49.62,39.93
|only if haveq(14107) or completedq(14107)
step
kill 10 Converted Hero##32255 |q 13771/1 |goto 44.62,52.62
|only if haveq(13771) or completedq(13771)
step
Equip the Horde Lance |equipped Horde Lance##46070 |goto Icecrown/0 48.87,71.41 |q 13857
|only if haveq(13857) or completedq(13857)
step
clicknpc Stabled Campaign Warhorse##34125
Mount the Stabled Campaign Warhorse |invehicle |goto 48.87,71.41 |q 13857
|only if haveq(13857) or completedq(13857)
stickystart "Kill_10_Bonegard_Scouts"
stickystart "Kill_3_Bonegard_Lieutenants"
step
kill 15 Boneguard Footman##33438 |q 13857/1 |goto 50.23,74.13
|tip Running over these with your warhorse will kill them.
|only if haveq(13857) or completedq(13857)
step
label "Kill_10_Bonegard_Scouts"
kill 10 Boneguard Scout##33550 |q 13857/2 |goto 50.23,74.13
|tip They fly around this area.
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to attack them in the air.
|only if haveq(13857) or completedq(13857)
step
label "Kill_3_Bonegard_Lieutenants"
kill 3 Boneguard Lieutenant##33429 |q 13857/3 |goto 50.61,76.93
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to remove their defenses, then use the "Charge" ability to deal damage.
|tip "Thrust" is useful in melee range, but make sure your shield is stacked up before using it.
|only if haveq(13857) or completedq(13857)
step
Dismount the Stabled Campaign Warhorse |outvehicle |q 13857
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13857) or completedq(13857)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
|only if haveq(13857) or completedq(13857)
step
click Winter Hyacinth##194213+
|tip They look like purple and pink flowers on the ground around this area.
collect 4 Winter Hyacinth##45000 |q 13769 |goto 70.41,74.55
|only if haveq(13769) or completedq(13769)
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13770 |goto Crystalsong Forest/0 55.10,74.90
|only if haveq(13770) or completedq(13770)
step
use the Winter Hyacinth##45000
|tip Use them in the water.
Watch the dialogue
click the Blade of Drak'Mar##194238
|tip It will spawn after a brief dialogue.
collect Blade of Drak'Mar##44978 |q 13769/1 |goto Dragonblight/0 93.18,25.99
|only if haveq(13769) or completedq(13769)
step
label "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
use the Warts-B-Gone Lip Balm##44986
Gain the "Warts-B-Gone Lip Balm" Buff |complete hasbuff("spell:62574") or readyq(13768) |goto Grizzly Hills/0 61.18,49.57 |q 13768
|only if haveq(13768) or completedq(13768)
step
Kiss Lake Frogs |script DoEmote("KISS")
|tip Target Lake Frogs and perform the Kiss emote.
|tip Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake.
talk Maiden of Ashwood Lake##33220
Ask her her _"Glad to help, my lady. I'm told you were once the guardian of a fabled sword. Do you know where I might find it?"_
collect Ashwood Brand##44981 |q 13768/1 |goto Grizzly Hills/0 61.18,49.57 |or
'|complete not hasbuff("spell:62574") and not (readyq(13768) or completedq(13768)) |or |next "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
|only if haveq(13768) or completedq(13768)
step
use the Everburning Ember##45005
|tip Use it on the Maiden of Winter's Breath.
collect Winter's Edge##45003 |q 13770/1 |goto Howling Fjord/0 42.18,19.66
|only if haveq(13770) or completedq(13770)
stickystart "Collect_25_Valiant's Seals"
step
talk Zul'tore##33372
|tip Inside the building.
turnin A Blade Fit For A Champion##13768 |goto Icecrown/0 75.96,24.52 |only if haveq(13768) or completedq(13768)
turnin A Worthy Weapon##13769 |goto 75.96,24.52 |only if haveq(13769) or completedq(13769)
turnin The Edge Of Winter##13770 |goto 75.96,24.52 |only if haveq(13770) or completedq(13770)
|only if haveq(13768,13769,13770) or completedq(13768,13769,13770)
step
talk Gahju##33545
|tip Inside the building.
turnin The Grand Melee##13772 |goto 75.93,24.41 |only if haveq(13772) or completedq(13772)
turnin At The Enemy's Gates##13857 |goto 75.93,24.41 |only if haveq(13857) or completedq(13857)
|only if haveq(13772,13857) or completedq(13772,13857)
step
talk Shadow Hunter Mezil-kree##33540
|tip Inside the building.
turnin A Valiant's Field Training##13771 |goto 76.04,24.59
|only if haveq(13771) or completedq(13771)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
turnin Get Kraken!##14108 |goto 69.51,23.09 |only if haveq(14108) or completedq(14108)
turnin The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if haveq(14107) or completedq(14107)
turnin Identifying the Remains##14095 |goto 69.51,23.09 |only if haveq(14095) or completedq(14095)
|only if haveq(14108,14107,14095) or completedq(14108,14107,14095)
step
talk High Crusader Adelard##34882
|tip Inside the building.
turnin Deathspeaker Kharos##14105 |goto 69.48,23.13 |only if haveq(14105) or completedq(14105)
turnin Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if haveq(14101) or completedq(14101)
turnin Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if haveq(14102) or completedq(14102)
turnin Ornolf The Scarred##14104 |goto 69.48,23.13 |only if haveq(14104) or completedq(14104)
|only if haveq(14105,14101,14102,14104) or completedq(14105,14101,14102,14104)
step
You have completed all available Argent Tournament Valliant dailies
|tip This guide will reset when more become available.
'|complete not completedq(13768,13769,13770,13772,13857,13771,14108,14107,14105,14101,14102,14104) and itemcount(44987) < 25 and not completedq(13719) |next "Accept_Valiant_Dailies" |or
'|complete completedq(13719) or itemcount(44987) >= 25 |or
step
label "Collect_25_Valiant's Seals"
collect 25 Valiant's Seal##44987 |q 13719/1
|tip Complete Argent Tournament daily quests to earn these each day.
step
talk Zul'tore##33372
|tip Inside the building.
turnin The Valiant's Charge##13719 |goto 75.96,24.52
accept The Valiant's Challenge##13727 |goto 75.96,24.52
step
Equip the Horde Lance |equipped Horde Lance##46070 |q 13727
step
clicknpc Stabled Darkspear Raptor##33796
Mount the Stabled Darkspear Raptor |invehicle |q 13727 |goto 72.04,22.54
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 spell:62552 |q 13727 |goto 68.60,20.99
|tip Use the "Defend" ability on your vehicle bar.
|tip Before beginning combat, having 3 stacks of this buff is essential.
step
talk Squire Danny##33518
Tell him _"I am ready to fight!"_
|tip Before beginning combat, having 3 stacks of the "Defend" buff is essential.
kill Argent Champion##33707
|tip It will ride out to you.
|tip Maintain 3 stacks of the "Defend" buff at all times.
|tip Use "Shield-Breaker" until the Champion has no shields left, then use the "Charge" ability.
|tip Repeat this process until it is defeated.
Defeat the Argent Champion |q 13727/1 |goto 68.60,20.99
step
Dismount the Stabled Darkspear Raptor |outvehicle |q 13727
|tip Click the "Exit" button on your vehicle bar.
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
step
talk Zul'tore##33372
|tip Inside the building.
turnin The Valiant's Challenge##13727 |goto 75.96,24.52
accept A Champion Rises##13737 |goto 75.96,24.52
step
talk Justicar Mariel Trueheart##33817
|tip Inside the building.
turnin A Champion Rises##13737 |goto 69.66,22.86
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Argent Tournament Grounds\\Valiant Rank Dailies",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through unlocking Valiant Rank dailies in order to achieve Argent Tournament Grounds Champion rank.",
hideif=function() return not raceclass{"BloodElf","Nightborne"} end,
condition_end=function() return completedq(13740) end,
next="Dailies Guides\\Wrath of the Lich King Dailies\\Argent Tournament Grounds\\Champion Rank Dailies",
condition_valid=function() return completedq(13680) end,
condition_valid_msg="You must complete \"The Aspirant's Challenge\" quest and reach Aspirant rank with the Argent Tournament Grounds.\n\n"..
"Complete the \"Aspirant Rank Dailies\" guide first.",
},[[
step
talk Magister Edien Sunhollow##33542
|tip Inside the building.
accept A Valiant Of Silvermoon##13696 |goto Icecrown/0 76.27,24.38
step
talk Eressea Dawnsinger##33379
|tip Inside the building.
turnin A Valiant Of Silvermoon##13696 |goto 76.45,23.85
accept The Valiant's Charge##13722 |goto 76.45,23.85
stickystart "Collect_25_Valiant's Seals"
step
label "Accept_Valiant_Dailies"
talk Eressea Dawnsinger##33379
|tip Inside the building.
accept A Blade Fit For A Champion##13783 |goto 76.45,23.85 |only if questpossible |or
accept A Worthy Weapon##13784 |goto 76.45,23.85 |only if questpossible |or
accept The Edge Of Winter##13785 |goto 76.45,23.85 |only if questpossible |or
Accept Eressea's Daily Quest |complete false |goto 76.45,23.85 |or |only if not completedq(13783,13784,13785,13740)
Accept Eressea's Daily Quest |complete true |goto 76.45,23.85 |or |only if completedq(13783,13784,13785,13740)
|tip You will only be able to accept one quest each day.
step
talk Kethiel Sunlance##33538
|tip Inside the building.
accept A Valiant's Field Training##13786 |goto 76.41,23.75 |only if not completedq(13786,13740)
accept A Valiant's Field Training##13786 |complete true |goto 76.41,23.75 |only if completedq(13786,13740)
step
talk Aneera Thuron##33548
|tip Inside the building.
accept The Grand Melee##13787 |goto 76.53,23.92 |only if not completedq(13787,13859,13740)
accept At The Enemy's Gates##13859 |goto 76.53,23.92 |only if not completedq(13787,13859,13740)
accept At The Enemy's Gates##13859 |complete true |goto 76.53,23.92 |only if completedq(13787,13859,13740)
stickystop "Collect_25_Valiant's Seals"
step
Equip the Horde Lance |equipped Horde Lance##46070 |q 13787
|only if haveq(13787) or completedq(13787)
step
clicknpc Stabled Silvermoon Hawkstrider##33791
Mount the Stabled Silvermoon Hawkstrider |invehicle |q 13787 |goto 75.54,24.14
|only if haveq(13787) or completedq(13787)
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 spell:62552 |goto 75.36,26.03 |q 13787
|tip Use the "Defend" ability on your vehicle bar.
|tip Before beginning combat, having 3 stacks of this buff is essential.
|only if haveq(13787) or completedq(13787)
step
Talk to the riders on mounts of other Horde races
Tell them _"I am ready to fight!"_
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to remove their defenses, then use the "Charge" ability to deal damage.
|tip "Thrust" is useful in melee range, but make sure your shield is stacked up before using it.
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range. Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13787/1 |goto 75.36,26.03
|only if haveq(13787) or completedq(13787)
step
Dismount the Stabled Silvermoon Hawkstrider |outvehicle |q 13787
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13787) or completedq(13787)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
|only if haveq(13787) or completedq(13787)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
accept Get Kraken!##14108 |goto 69.51,23.09 |only if questpossible |or
accept The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if questpossible |or
Accept Silverdawn's Daily Quest |complete false |goto 69.51,23.09 |or |only if not completedq(14108,14107,13740)
Accept Silverdawn's Daily Quest |complete true |goto 69.51,23.09 |or |only if completedq(14108,14107,13740)
|tip You will only be able to accept one quest each day.
|only if achieved(2816)
step
talk High Crusader Adelard##34882
|tip Inside the building.
accept Deathspeaker Kharos##14105 |goto 69.48,23.13 |only if questpossible |or
accept Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if questpossible |or
accept Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if questpossible |or
accept Ornolf The Scarred##14104 |goto 69.48,23.13 |only if questpossible |or
Accept Adelard's Daily Quest |complete false |goto 69.48,23.13 |or |only if not completedq(14105,14101,14102,14104,13740)
Accept Adelard's Daily Quest |complete true |goto 69.48,23.13 |or |only if completedq(14105,14101,14102,14104,13740)
|tip You will only be able to accept one quest each day.
|only if achieved(2816)
step
talk Stabled Argent Hippogryph##35117
Choose _Mount the Hippogryph and prepare for battle!_
Mount the Stabled Argent Hippogryph |ontaxi |goto Icecrown/0 69.78,22.33 |q 14108
|only if haveq(14108) or completedq(14108)
stickystart "Kill_6_Kvaldir_Deepcallers"
step
use the Flaming Spears##46954
|tip Use them on the North Sea Kraken below.
|tip If you manage to kill it, you will get an additional daily quest to turn in.
Hurl Spears at the North Sea Kraken #8# Times |q 14108/1 |goto Hrothgar's Landing/0 51.29,51.04
You can also find it at [43.76,53.12]
|only if haveq(14108) or completedq(14108)
step
label "Kill_6_Kvaldir_Deepcallers"
use the Flaming Spears##46954
|tip Use them on Kvaldir Deepcallers below.
kill 6 Kvaldir Deepcaller##35092 |q 14108/2 |goto 46.15,48.96
|only if haveq(14108) or completedq(14108)
step
Watch the dialogue
|tip You will eventually start flying back to the Argent Tournament Grounds.
Return to the Argent Tournament Grounds |offtaxi |goto Icecrown/0 69.87,22.17
|only if haveq(14108) or completedq(14108)
step
use the Mistcaller's Charm##47009
|tip Inside the cave next to the blue floating crystal.
kill Mistcaller Yngvar##34965 |q 14102/1 |goto Hrothgar's Landing/0 43.92,24.35
|only if haveq(14102) or completedq(14102)
step
use the Kvaldir War Horn##47006
|tip Use it next to the fire.
|tip Drottinn will float down and attack.
kill Drottinn Hrothgar##34980 |q 14101/1 |goto 50.65,15.41
|only if haveq(14101) or completedq(14101)
step
use the Captured Kvaldir Banner##47029
kill Ornolf the Scarred##35012 |q 14104/1 |goto 58.68,31.42
|only if haveq(14104) or completedq(14104)
step
kill Deathspeaker Kharos##34808 |q 14105/1 |goto Icecrown/0 64.23,21.43
|tip He's standing in a small pit area.
|only if haveq(14105) or completedq(14105)
step
click Discarded Soul Crystal##195344+
|tip They look like glowing crystals on the ground around this area.
collect Discarded Soul Crystal##47035 |n
|tip One crystial is required for each blessing.
use Light-Blessed Relic##47033
|tip Use it on Fallen Hero's Spirits.
|tip They are neutral NPCs that walk around this area.
Bless #6# Fallen Hero's Spirits |q 14107/1 |goto 49.62,39.93
|only if haveq(14107) or completedq(14107)
step
kill 10 Converted Hero##32255 |q 13786/1 |goto 44.62,52.62
|only if haveq(13786) or completedq(13786)
step
Equip the Horde Lance |equipped Horde Lance##46070 |goto Icecrown/0 48.87,71.41 |q 13859
|only if haveq(13859) or completedq(13859)
step
clicknpc Stabled Campaign Warhorse##34125
Mount the Stabled Campaign Warhorse |invehicle |goto 48.87,71.41 |q 13859
|only if haveq(13859) or completedq(13859)
stickystart "Kill_10_Bonegard_Scouts"
stickystart "Kill_3_Bonegard_Lieutenants"
step
kill 15 Boneguard Footman##33438 |q 13859/1 |goto 50.23,74.13
|tip Running over these with your warhorse will kill them.
|only if haveq(13859) or completedq(13859)
step
label "Kill_10_Bonegard_Scouts"
kill 10 Boneguard Scout##33550 |q 13859/2 |goto 50.23,74.13
|tip They fly around this area.
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to attack them in the air.
|only if haveq(13859) or completedq(13859)
step
label "Kill_3_Bonegard_Lieutenants"
kill 3 Boneguard Lieutenant##33429 |q 13859/3 |goto 50.61,76.93
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to remove their defenses, then use the "Charge" ability to deal damage.
|tip "Thrust" is useful in melee range, but make sure your shield is stacked up before using it.
|only if haveq(13859) or completedq(13859)
step
Dismount the Stabled Campaign Warhorse |outvehicle |q 13859
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13859) or completedq(13859)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
|only if haveq(13859) or completedq(13859)
step
click Winter Hyacinth##194213+
|tip They look like purple and pink flowers on the ground around this area.
collect 4 Winter Hyacinth##45000 |q 13784 |goto 70.41,74.55
|only if haveq(13784) or completedq(13784)
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13785 |goto Crystalsong Forest/0 55.10,74.90
|only if haveq(13785) or completedq(13785)
step
use the Winter Hyacinth##45000
|tip Use them in the water.
Watch the dialogue
click the Blade of Drak'Mar##194238
|tip It will spawn after a brief dialogue.
collect Blade of Drak'Mar##44978 |q 13784/1 |goto Dragonblight/0 93.18,25.99
|only if haveq(13784) or completedq(13784)
step
label "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
use the Warts-B-Gone Lip Balm##44986
Gain the "Warts-B-Gone Lip Balm" Buff |complete hasbuff("spell:62574") or readyq(13783) |goto Grizzly Hills/0 61.18,49.57 |q 13783
|only if haveq(13783) or completedq(13783)
step
Kiss Lake Frogs |script DoEmote("KISS")
|tip Target Lake Frogs and perform the Kiss emote.
|tip Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake.
talk Maiden of Ashwood Lake##33220
Ask her her _"Glad to help, my lady. I'm told you were once the guardian of a fabled sword. Do you know where I might find it?"_
collect Ashwood Brand##44981 |q 13783/1 |goto Grizzly Hills/0 61.18,49.57 |or
'|complete not hasbuff("spell:62574") and not (readyq(13783) or completedq(13783)) |or |next "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
|only if haveq(13783) or completedq(13783)
step
use the Everburning Ember##45005
|tip Use it on the Maiden of Winter's Breath.
collect Winter's Edge##45003 |q 13785/1 |goto Howling Fjord/0 42.18,19.66
|only if haveq(13785) or completedq(13785)
stickystart "Collect_25_Valiant's Seals"
step
talk Eressea Dawnsinger##33379
|tip Inside the building.
turnin A Blade Fit For A Champion##13783 |goto Icecrown/0 76.45,23.85 |only if haveq(13783) or completedq(13783)
turnin A Worthy Weapon##13784 |goto 76.45,23.85 |only if haveq(13784) or completedq(13784)
turnin The Edge Of Winter##13785 |goto 76.45,23.85 |only if haveq(13785) or completedq(13785)
|only if haveq(13783,13784,13785) or completedq(13783,13784,13785)
step
talk Kethiel Sunlance##33538
|tip Inside the building.
turnin A Valiant's Field Training##13786 |goto 76.41,23.75
|only if haveq(13786) or completedq(13786)
step
talk Aneera Thuron##33548
|tip Inside the building.
turnin The Grand Melee##13787 |goto 76.53,23.92 |only if haveq(13787) or completedq(13787)
turnin At The Enemy's Gates##13859 |goto 76.53,23.92 |only if haveq(13859) or completedq(13859)
|only if haveq(13787,13859) or completedq(13787,13859)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
turnin Get Kraken!##14108 |goto 69.51,23.09 |only if haveq(14108) or completedq(14108)
turnin The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if haveq(14107) or completedq(14107)
turnin Identifying the Remains##14095 |goto 69.51,23.09 |only if haveq(14095) or completedq(14095)
|only if haveq(14108,14107,14095) or completedq(14108,14107,14095)
step
talk High Crusader Adelard##34882
|tip Inside the building.
turnin Deathspeaker Kharos##14105 |goto 69.48,23.13 |only if haveq(14105) or completedq(14105)
turnin Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if haveq(14101) or completedq(14101)
turnin Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if haveq(14102) or completedq(14102)
turnin Ornolf The Scarred##14104 |goto 69.48,23.13 |only if haveq(14104) or completedq(14104)
|only if haveq(14105,14101,14102,14104) or completedq(14105,14101,14102,14104)
step
You have completed all available Argent Tournament Valliant dailies
|tip This guide will reset when more become available.
'|complete not completedq(13783,13784,13785,13786,13787,13859,14108,14107,14105,14101,14102,14104) and itemcount(44987) < 25 and not completedq(13722) |next "Accept_Valiant_Dailies" |or
'|complete completedq(13722) or itemcount(44987) >= 25 |or
step
label "Collect_25_Valiant's Seals"
collect 25 Valiant's Seal##44987 |q 13722/1
|tip Complete Argent Tournament daily quests to earn these each day.
step
talk Eressea Dawnsinger##33379
|tip Inside the building.
turnin The Valiant's Charge##13722 |goto 76.45,23.85
accept The Valiant's Challenge##13731 |goto 76.45,23.85
step
Equip the Horde Lance |equipped Horde Lance##46070 |q 13731
step
clicknpc Stabled Silvermoon Hawkstrider##33791
Mount the Stabled Silvermoon Hawkstrider |invehicle |q 13731 |goto 72.20,22.45
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 spell:62552 |q 13731 |goto 68.60,20.99
|tip Use the "Defend" ability on your vehicle bar.
|tip Before beginning combat, having 3 stacks of this buff is essential.
step
talk Squire Danny##33518
Tell him _"I am ready to fight!"_
|tip Before beginning combat, having 3 stacks of the "Defend" buff is essential.
kill Argent Champion##33707
|tip It will ride out to you.
|tip Maintain 3 stacks of the "Defend" buff at all times.
|tip Use "Shield-Breaker" until the Champion has no shields left, then use the "Charge" ability.
|tip Repeat this process until it is defeated.
Defeat the Argent Champion |q 13731/1 |goto 68.60,20.99
step
Dismount the Stabled Silvermoon Hawkstrider |outvehicle |q 13731
|tip Click the "Exit" button on your vehicle bar.
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
step
talk Eressea Dawnsinger##33379
|tip Inside the building.
turnin The Valiant's Challenge##13731 |goto 76.45,23.85
accept A Champion Rises##13740 |goto 76.45,23.85
step
talk Justicar Mariel Trueheart##33817
|tip Inside the building.
turnin A Champion Rises##13740 |goto 69.66,22.86
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Argent Tournament Grounds\\Valiant Rank Dailies",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through unlocking Valiant Rank dailies in order to achieve Argent Tournament Grounds Champion rank.",
hideif=function() return not raceclass{"Tauren","HighmountainTauren"} end,
condition_end=function() return completedq(13738) end,
next="Dailies Guides\\Wrath of the Lich King Dailies\\Argent Tournament Grounds\\Champion Rank Dailies",
condition_valid=function() return completedq(13680) end,
condition_valid_msg="You must complete \"The Aspirant's Challenge\" quest and reach Aspirant rank with the Argent Tournament Grounds.\n\n"..
"Complete the \"Aspirant Rank Dailies\" guide first.",
},[[
step
talk Magister Edien Sunhollow##33542
|tip Inside the building.
accept A Valiant Of Thunder Bluff##13694 |goto Icecrown/0 76.27,24.38
step
talk Runok Wildmane##33403
|tip Inside the building.
turnin A Valiant Of Thunder Bluff##13694 |goto 76.20,24.63
accept The Valiant's Charge##13720 |goto 76.20,24.63
stickystart "Collect_25_Valiant's Seals"
step
label "Accept_Valiant_Dailies"
talk Runok Wildmane##33403
|tip Inside the building.
accept A Blade Fit For A Champion##13773 |goto 76.20,24.63 |only if questpossible |or
accept A Worthy Weapon##13774 |goto 76.20,24.63 |only if questpossible |or
accept The Edge Of Winter##13775 |goto 76.20,24.63 |only if questpossible |or
Accept Runok's Daily Quest |complete false |goto 76.20,24.63 |or |only if not completedq(13773,13774,13775,13738)
Accept Runok's Daily Quest |complete true |goto 76.20,24.63 |or |only if completedq(13773,13774,13775,13738)
|tip You will only be able to accept one quest each day.
step
talk Dern Ragetotem##33539
|tip Inside the building.
accept A Valiant's Field Training##13776 |goto 76.26,24.66 |only if not completedq(13776,13738)
accept A Valiant's Field Training##13776 |complete true |goto 76.26,24.66 |only if completedq(13776,13738)
step
talk Anka Clawhoof##33549
|tip Inside the building.
accept The Grand Melee##13777 |goto 76.14,24.63 |only if not completedq(13777,13858,13738)
accept At The Enemy's Gates##13858 |goto 76.14,24.63 |only if not completedq(13777,13858,13738)
accept At The Enemy's Gates##13858 |complete true |goto 76.14,24.63 |only if completedq(13777,13858,13738)
stickystop "Collect_25_Valiant's Seals"
step
Equip the Horde Lance |equipped Horde Lance##46070 |q 13777
|only if haveq(13777) or completedq(13777)
step
clicknpc Stabled Thunder Bluff Kodo##33792
Mount the Stabled Thunder Bluff Kodo |invehicle |q 13777 |goto 75.53,24.26
|only if haveq(13777) or completedq(13777)
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 spell:62552 |goto 75.36,26.03 |q 13777
|tip Use the "Defend" ability on your vehicle bar.
|tip Before beginning combat, having 3 stacks of this buff is essential.
|only if haveq(13777) or completedq(13777)
step
Talk to the riders on mounts of other Horde races
Tell them _"I am ready to fight!"_
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to remove their defenses, then use the "Charge" ability to deal damage.
|tip "Thrust" is useful in melee range, but make sure your shield is stacked up before using it.
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range. Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13777/1 |goto 75.36,26.03
|only if haveq(13777) or completedq(13777)
step
Dismount the Stabled Thunder Bluff Kodo |outvehicle |q 13777
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13777) or completedq(13777)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
|only if haveq(13777) or completedq(13777)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
accept Get Kraken!##14108 |goto 69.51,23.09 |only if questpossible |or
accept The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if questpossible |or
Accept Silverdawn's Daily Quest |complete false |goto 69.51,23.09 |or |only if not completedq(14108,14107,13738)
Accept Silverdawn's Daily Quest |complete true |goto 69.51,23.09 |or |only if completedq(14108,14107,13738)
|tip You will only be able to accept one quest each day.
|only if achieved(2816)
step
talk High Crusader Adelard##34882
|tip Inside the building.
accept Deathspeaker Kharos##14105 |goto 69.48,23.13 |only if questpossible |or
accept Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if questpossible |or
accept Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if questpossible |or
accept Ornolf The Scarred##14104 |goto 69.48,23.13 |only if questpossible |or
Accept Adelard's Daily Quest |complete false |goto 69.48,23.13 |or |only if not completedq(14105,14101,14102,14104,13738)
Accept Adelard's Daily Quest |complete true |goto 69.48,23.13 |or |only if completedq(14105,14101,14102,14104,13738)
|tip You will only be able to accept one quest each day.
|only if achieved(2816)
step
talk Stabled Argent Hippogryph##35117
Choose _Mount the Hippogryph and prepare for battle!_
Mount the Stabled Argent Hippogryph |ontaxi |goto Icecrown/0 69.78,22.33 |q 14108
|only if haveq(14108) or completedq(14108)
stickystart "Kill_6_Kvaldir_Deepcallers"
step
use the Flaming Spears##46954
|tip Use them on the North Sea Kraken below.
|tip If you manage to kill it, you will get an additional daily quest to turn in.
Hurl Spears at the North Sea Kraken #8# Times |q 14108/1 |goto Hrothgar's Landing/0 51.29,51.04
You can also find it at [43.76,53.12]
|only if haveq(14108) or completedq(14108)
step
label "Kill_6_Kvaldir_Deepcallers"
use the Flaming Spears##46954
|tip Use them on Kvaldir Deepcallers below.
kill 6 Kvaldir Deepcaller##35092 |q 14108/2 |goto 46.15,48.96
|only if haveq(14108) or completedq(14108)
step
Watch the dialogue
|tip You will eventually start flying back to the Argent Tournament Grounds.
Return to the Argent Tournament Grounds |offtaxi |goto Icecrown/0 69.87,22.17
|only if haveq(14108) or completedq(14108)
step
use the Mistcaller's Charm##47009
|tip Inside the cave next to the blue floating crystal.
kill Mistcaller Yngvar##34965 |q 14102/1 |goto Hrothgar's Landing/0 43.92,24.35
|only if haveq(14102) or completedq(14102)
step
use the Kvaldir War Horn##47006
|tip Use it next to the fire.
|tip Drottinn will float down and attack.
kill Drottinn Hrothgar##34980 |q 14101/1 |goto 50.65,15.41
|only if haveq(14101) or completedq(14101)
step
use the Captured Kvaldir Banner##47029
kill Ornolf the Scarred##35012 |q 14104/1 |goto 58.68,31.42
|only if haveq(14104) or completedq(14104)
step
kill Deathspeaker Kharos##34808 |q 14105/1 |goto Icecrown/0 64.23,21.43
|tip He's standing in a small pit area.
|only if haveq(14105) or completedq(14105)
step
click Discarded Soul Crystal##195344+
|tip They look like glowing crystals on the ground around this area.
collect Discarded Soul Crystal##47035 |n
|tip One crystial is required for each blessing.
use Light-Blessed Relic##47033
|tip Use it on Fallen Hero's Spirits.
|tip They are neutral NPCs that walk around this area.
Bless #6# Fallen Hero's Spirits |q 14107/1 |goto 49.62,39.93
|only if haveq(14107) or completedq(14107)
step
kill 10 Converted Hero##32255 |q 13776/1 |goto 44.62,52.62
|only if haveq(13776) or completedq(13776)
step
Equip the Horde Lance |equipped Horde Lance##46070 |goto Icecrown/0 48.87,71.41 |q 13858
|only if haveq(13858) or completedq(13858)
step
clicknpc Stabled Campaign Warhorse##34125
Mount the Stabled Campaign Warhorse |invehicle |goto 48.87,71.41 |q 13858
|only if haveq(13858) or completedq(13858)
stickystart "Kill_10_Bonegard_Scouts"
stickystart "Kill_3_Bonegard_Lieutenants"
step
kill 15 Boneguard Footman##33438 |q 13858/1 |goto 50.23,74.13
|tip Running over these with your warhorse will kill them.
|only if haveq(13858) or completedq(13858)
step
label "Kill_10_Bonegard_Scouts"
kill 10 Boneguard Scout##33550 |q 13858/2 |goto 50.23,74.13
|tip They fly around this area.
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to attack them in the air.
|only if haveq(13858) or completedq(13858)
step
label "Kill_3_Bonegard_Lieutenants"
kill 3 Boneguard Lieutenant##33429 |q 13858/3 |goto 50.61,76.93
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to remove their defenses, then use the "Charge" ability to deal damage.
|tip "Thrust" is useful in melee range, but make sure your shield is stacked up before using it.
|only if haveq(13858) or completedq(13858)
step
Dismount the Stabled Campaign Warhorse |outvehicle |q 13858
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13858) or completedq(13858)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
|only if haveq(13858) or completedq(13858)
step
click Winter Hyacinth##194213+
|tip They look like purple and pink flowers on the ground around this area.
collect 4 Winter Hyacinth##45000 |q 13774 |goto 70.41,74.55
|only if haveq(13774) or completedq(13774)
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13775 |goto Crystalsong Forest/0 55.10,74.90
|only if haveq(13775) or completedq(13775)
step
use the Winter Hyacinth##45000
|tip Use them in the water.
Watch the dialogue
click the Blade of Drak'Mar##194238
|tip It will spawn after a brief dialogue.
collect Blade of Drak'Mar##44978 |q 13774/1 |goto Dragonblight/0 93.18,25.99
|only if haveq(13774) or completedq(13774)
step
label "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
use the Warts-B-Gone Lip Balm##44986
Gain the "Warts-B-Gone Lip Balm" Buff |complete hasbuff("spell:62574") or readyq(13773) |goto Grizzly Hills/0 61.18,49.57 |q 13773
|only if haveq(13773) or completedq(13773)
step
Kiss Lake Frogs |script DoEmote("KISS")
|tip Target Lake Frogs and perform the Kiss emote.
|tip Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake.
talk Maiden of Ashwood Lake##33220
Ask her her _"Glad to help, my lady. I'm told you were once the guardian of a fabled sword. Do you know where I might find it?"_
collect Ashwood Brand##44981 |q 13773/1 |goto Grizzly Hills/0 61.18,49.57 |or
'|complete not hasbuff("spell:62574") and not (readyq(13773) or completedq(13773)) |or |next "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
|only if haveq(13773) or completedq(13773)
step
use the Everburning Ember##45005
|tip Use it on the Maiden of Winter's Breath.
collect Winter's Edge##45003 |q 13775/1 |goto Howling Fjord/0 42.18,19.66
|only if haveq(13775) or completedq(13775)
stickystart "Collect_25_Valiant's Seals"
step
talk Runok Wildmane##33403
|tip Inside the building.
turnin A Blade Fit For A Champion##13773 |goto Icecrown/0 76.20,24.63 |only if haveq(13773) or completedq(13773)
turnin A Worthy Weapon##13774 |goto 76.20,24.63 |only if haveq(13774) or completedq(13774)
turnin The Edge Of Winter##13775 |goto 76.20,24.63 |only if haveq(13775) or completedq(13775)
|only if haveq(13773,13774,13775) or completedq(13773,13774,13775)
step
talk Dern Ragetotem##33539
|tip Inside the building.
turnin A Valiant's Field Training##13776 |goto 76.26,24.66
|only if haveq(13776) or completedq(13776)
step
talk Anka Clawhoof##33549
|tip Inside the building.
turnin The Grand Melee##13777 |goto 76.14,24.63 |only if haveq(13777) or completedq(13777)
turnin At The Enemy's Gates##13858 |goto 76.14,24.63 |only if haveq(13858) or completedq(13858)
|only if haveq(13777,13858) or completedq(13777,13858)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
turnin Get Kraken!##14108 |goto 69.51,23.09 |only if haveq(14108) or completedq(14108)
turnin The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if haveq(14107) or completedq(14107)
turnin Identifying the Remains##14095 |goto 69.51,23.09 |only if haveq(14095) or completedq(14095)
|only if haveq(14108,14107,14095) or completedq(14108,14107,14095)
step
talk High Crusader Adelard##34882
|tip Inside the building.
turnin Deathspeaker Kharos##14105 |goto 69.48,23.13 |only if haveq(14105) or completedq(14105)
turnin Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if haveq(14101) or completedq(14101)
turnin Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if haveq(14102) or completedq(14102)
turnin Ornolf The Scarred##14104 |goto 69.48,23.13 |only if haveq(14104) or completedq(14104)
|only if haveq(14105,14101,14102,14104) or completedq(14105,14101,14102,14104)
step
You have completed all available Argent Tournament Valliant dailies
|tip This guide will reset when more become available.
'|complete not completedq(13773,13774,13775,13776,13777,13858,14108,14107,14105,14101,14102,14104) and itemcount(44987) < 25 and not completedq(13720) |next "Accept_Valiant_Dailies" |or
'|complete completedq(13720) or itemcount(44987) >= 25 |or
step
label "Collect_25_Valiant's Seals"
collect 25 Valiant's Seal##44987 |q 13720/1
|tip Complete Argent Tournament daily quests to earn these each day.
step
talk Runok Wildmane##33403
|tip Inside the building.
turnin The Valiant's Charge##13720 |goto 76.20,24.63
accept The Valiant's Challenge##13728 |goto 76.20,24.63
step
Equip the Horde Lance |equipped Horde Lance##46070 |q 13728
step
clicknpc Stabled Thunder Bluff Kodo##33792
Mount the Stabled Thunder Bluff Kodo |invehicle |q 13728 |goto 75.53,24.26
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 spell:62552 |q 13728 |goto 68.60,20.99
|tip Use the "Defend" ability on your vehicle bar.
|tip Before beginning combat, having 3 stacks of this buff is essential.
step
talk Squire Danny##33518
Tell him _"I am ready to fight!"_
|tip Before beginning combat, having 3 stacks of the "Defend" buff is essential.
kill Argent Champion##33707
|tip It will ride out to you.
|tip Maintain 3 stacks of the "Defend" buff at all times.
|tip Use "Shield-Breaker" until the Champion has no shields left, then use the "Charge" ability.
|tip Repeat this process until it is defeated.
Defeat the Argent Champion |q 13728/1 |goto 68.60,20.99
step
Dismount the Stabled Thunder Bluff Kodo |outvehicle |q 13728
|tip Click the "Exit" button on your vehicle bar.
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
step
talk Runok Wildmane##33403
|tip Inside the building.
turnin The Valiant's Challenge##13728 |goto 76.20,24.63
accept A Champion Rises##13738 |goto 76.20,24.63
step
talk Justicar Mariel Trueheart##33817
|tip Inside the building.
turnin A Champion Rises##13738 |goto 69.66,22.86
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Argent Tournament Grounds\\Valiant Rank Dailies",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through unlocking Valiant Rank dailies in order to achieve Argent Tournament Grounds Champion rank.",
hideif=function() return not raceclass("Undead") end,
condition_end=function() return completedq(13739) end,
next="Dailies Guides\\Wrath of the Lich King Dailies\\Argent Tournament Grounds\\Champion Rank Dailies",
condition_valid=function() return completedq(13680) end,
condition_valid_msg="You must complete \"The Aspirant's Challenge\" quest and reach Aspirant rank with the Argent Tournament Grounds.\n\n"..
"Complete the \"Aspirant Rank Dailies\" guide first.",
},[[
step
talk Magister Edien Sunhollow##33542
|tip Inside the building.
accept A Valiant Of Undercity##13695 |goto Icecrown/0 76.27,24.38
step
talk Deathstalker Visceri##33373
|tip Inside the building.
turnin A Valiant Of Undercity##13695 |goto 76.53,24.21
accept The Valiant's Charge##13721 |goto 76.53,24.21
stickystart "Collect_25_Valiant's Seals"
step
label "Accept_Valiant_Dailies"
talk Deathstalker Visceri##33373
|tip Inside the building.
accept A Blade Fit For A Champion##13778 |goto 76.53,24.21 |only if questpossible |or
accept A Worthy Weapon##13779 |goto 76.53,24.21 |only if questpossible |or
accept The Edge Of Winter##13780 |goto 76.53,24.21 |only if questpossible |or
Accept Visceri's Daily Quest |complete false |goto 76.53,24.21 |or |only if not completedq(13778,13779,13780,13739)
Accept Visceri's Daily Quest |complete true |goto 76.53,24.21 |or |only if completedq(13778,13779,13780,13739)
|tip You will only be able to accept one quest each day.
step
talk Sarah Chalke##33541
|tip Inside the building.
accept A Valiant's Field Training##13781 |goto 76.56,24.11 |only if not completedq(13781,13739)
accept A Valiant's Field Training##13781 |complete true |goto 76.56,24.11 |only if completedq(13781,13739)
step
talk Handler Dretch##33547
|tip Inside the building.
accept The Grand Melee##13782 |goto 76.55,24.33 |only if not completedq(13782,13860,13739)
accept At The Enemy's Gates##13860 |goto 76.55,24.33 |only if not completedq(13782,13860,13739)
accept At The Enemy's Gates##13860 |complete true |goto 76.55,24.33 |only if completedq(13782,13860,13739)
stickystop "Collect_25_Valiant's Seals"
step
Equip the Horde Lance |equipped Horde Lance##46070 |q 13782
|only if haveq(13782) or completedq(13782)
step
clicknpc Stabled Forsaken Warhorse##33798
Mount the Stabled Forsaken Warhorse |invehicle |q 13782 |goto 75.56,23.87
|only if haveq(13782) or completedq(13782)
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 spell:62552 |goto 75.36,26.03 |q 13782
|tip Use the "Defend" ability on your vehicle bar.
|tip Before beginning combat, having 3 stacks of this buff is essential.
|only if haveq(13782) or completedq(13782)
step
Talk to the riders on mounts of other Horde races
Tell them _"I am ready to fight!"_
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to remove their defenses, then use the "Charge" ability to deal damage.
|tip "Thrust" is useful in melee range, but make sure your shield is stacked up before using it.
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range. Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13782/1 |goto 75.36,26.03
|only if haveq(13782) or completedq(13782)
step
Dismount the Stabled Forsaken Warhorse |outvehicle |q 13782
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13782) or completedq(13782)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
|only if haveq(13782) or completedq(13782)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
accept Get Kraken!##14108 |goto 69.51,23.09 |only if questpossible |or
accept The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if questpossible |or
Accept Silverdawn's Daily Quest |complete false |goto 69.51,23.09 |or |only if not completedq(14108,14107,13739)
Accept Silverdawn's Daily Quest |complete true |goto 69.51,23.09 |or |only if completedq(14108,14107,13739)
|tip You will only be able to accept one quest each day.
|only if achieved(2816)
step
talk High Crusader Adelard##34882
|tip Inside the building.
accept Deathspeaker Kharos##14105 |goto 69.48,23.13 |only if questpossible |or
accept Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if questpossible |or
accept Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if questpossible |or
accept Ornolf The Scarred##14104 |goto 69.48,23.13 |only if questpossible |or
Accept Adelard's Daily Quest |complete false |goto 69.48,23.13 |or |only if not completedq(14105,14101,14102,14104,13739)
Accept Adelard's Daily Quest |complete true |goto 69.48,23.13 |or |only if completedq(14105,14101,14102,14104,13739)
|tip You will only be able to accept one quest each day.
|only if achieved(2816)
step
talk Stabled Argent Hippogryph##35117
Choose _Mount the Hippogryph and prepare for battle!_
Mount the Stabled Argent Hippogryph |ontaxi |goto Icecrown/0 69.78,22.33 |q 14108
|only if haveq(14108) or completedq(14108)
stickystart "Kill_6_Kvaldir_Deepcallers"
step
use the Flaming Spears##46954
|tip Use them on the North Sea Kraken below.
|tip If you manage to kill it, you will get an additional daily quest to turn in.
Hurl Spears at the North Sea Kraken #8# Times |q 14108/1 |goto Hrothgar's Landing/0 51.29,51.04
You can also find it at [43.76,53.12]
|only if haveq(14108) or completedq(14108)
step
label "Kill_6_Kvaldir_Deepcallers"
use the Flaming Spears##46954
|tip Use them on Kvaldir Deepcallers below.
kill 6 Kvaldir Deepcaller##35092 |q 14108/2 |goto 46.15,48.96
|only if haveq(14108) or completedq(14108)
step
Watch the dialogue
|tip You will eventually start flying back to the Argent Tournament Grounds.
Return to the Argent Tournament Grounds |offtaxi |goto Icecrown/0 69.87,22.17
|only if haveq(14108) or completedq(14108)
step
use the Mistcaller's Charm##47009
|tip Inside the cave next to the blue floating crystal.
kill Mistcaller Yngvar##34965 |q 14102/1 |goto Hrothgar's Landing/0 43.92,24.35
|only if haveq(14102) or completedq(14102)
step
use the Kvaldir War Horn##47006
|tip Use it next to the fire.
|tip Drottinn will float down and attack.
kill Drottinn Hrothgar##34980 |q 14101/1 |goto 50.65,15.41
|only if haveq(14101) or completedq(14101)
step
use the Captured Kvaldir Banner##47029
kill Ornolf the Scarred##35012 |q 14104/1 |goto 58.68,31.42
|only if haveq(14104) or completedq(14104)
step
kill Deathspeaker Kharos##34808 |q 14105/1 |goto Icecrown/0 64.23,21.43
|tip He's standing in a small pit area.
|only if haveq(14105) or completedq(14105)
step
click Discarded Soul Crystal##195344+
|tip They look like glowing crystals on the ground around this area.
collect Discarded Soul Crystal##47035 |n
|tip One crystial is required for each blessing.
use Light-Blessed Relic##47033
|tip Use it on Fallen Hero's Spirits.
|tip They are neutral NPCs that walk around this area.
Bless #6# Fallen Hero's Spirits |q 14107/1 |goto 49.62,39.93
|only if haveq(14107) or completedq(14107)
step
kill 10 Converted Hero##32255 |q 13781/1 |goto 44.62,52.62
|only if haveq(13781) or completedq(13781)
step
Equip the Horde Lance |equipped Horde Lance##46070 |goto Icecrown/0 48.87,71.41 |q 13860
|only if haveq(13860) or completedq(13860)
step
clicknpc Stabled Campaign Warhorse##34125
Mount the Stabled Campaign Warhorse |invehicle |goto 48.87,71.41 |q 13860
|only if haveq(13860) or completedq(13860)
stickystart "Kill_10_Bonegard_Scouts"
stickystart "Kill_3_Bonegard_Lieutenants"
step
kill 15 Boneguard Footman##33438 |q 13860/1 |goto 50.23,74.13
|tip Running over these with your warhorse will kill them.
|only if haveq(13860) or completedq(13860)
step
label "Kill_10_Bonegard_Scouts"
kill 10 Boneguard Scout##33550 |q 13860/2 |goto 50.23,74.13
|tip They fly around this area.
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to attack them in the air.
|only if haveq(13860) or completedq(13860)
step
label "Kill_3_Bonegard_Lieutenants"
kill 3 Boneguard Lieutenant##33429 |q 13860/3 |goto 50.61,76.93
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to remove their defenses, then use the "Charge" ability to deal damage.
|tip "Thrust" is useful in melee range, but make sure your shield is stacked up before using it.
|only if haveq(13860) or completedq(13860)
step
Dismount the Stabled Campaign Warhorse |outvehicle |q 13860
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13860) or completedq(13860)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
|only if haveq(13860) or completedq(13860)
step
click Winter Hyacinth##194213+
|tip They look like purple and pink flowers on the ground around this area.
collect 4 Winter Hyacinth##45000 |q 13779 |goto 70.41,74.55
|only if haveq(13779) or completedq(13779)
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13780 |goto Crystalsong Forest/0 55.10,74.90
|only if haveq(13780) or completedq(13780)
step
use the Winter Hyacinth##45000
|tip Use them in the water.
Watch the dialogue
click the Blade of Drak'Mar##194238
|tip It will spawn after a brief dialogue.
collect Blade of Drak'Mar##44978 |q 13779/1 |goto Dragonblight/0 93.18,25.99
|only if haveq(13779) or completedq(13779)
step
label "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
use the Warts-B-Gone Lip Balm##44986
Gain the "Warts-B-Gone Lip Balm" Buff |complete hasbuff("spell:62574") or readyq(13778) |goto Grizzly Hills/0 61.18,49.57 |q 13778
|only if haveq(13778) or completedq(13778)
step
Kiss Lake Frogs |script DoEmote("KISS")
|tip Target Lake Frogs and perform the Kiss emote.
|tip Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake.
talk Maiden of Ashwood Lake##33220
Ask her her _"Glad to help, my lady. I'm told you were once the guardian of a fabled sword. Do you know where I might find it?"_
collect Ashwood Brand##44981 |q 13778/1 |goto Grizzly Hills/0 61.18,49.57 |or
'|complete not hasbuff("spell:62574") and not (readyq(13778) or completedq(13778)) |or |next "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
|only if haveq(13778) or completedq(13778)
step
use the Everburning Ember##45005
|tip Use it on the Maiden of Winter's Breath.
collect Winter's Edge##45003 |q 13780/1 |goto Howling Fjord/0 42.18,19.66
|only if haveq(13780) or completedq(13780)
stickystart "Collect_25_Valiant's Seals"
step
talk Deathstalker Visceri##33373
|tip Inside the building.
turnin A Blade Fit For A Champion##13778 Icecrown/0 |goto 76.53,24.21 |only if haveq(13778) or completedq(13778)
turnin A Worthy Weapon##13779 |goto 76.53,24.21 |only if haveq(13779) or completedq(13779)
turnin The Edge Of Winter##13780 |goto 76.53,24.21 |only if haveq(13780) or completedq(13780)
|only if haveq(13778,13779,13780) or completedq(13778,13779,13780)
step
talk Sarah Chalke##33541
|tip Inside the building.
turnin A Valiant's Field Training##13781 |goto 76.56,24.11
|only if haveq(13781) or completedq(13781)
step
talk Handler Dretch##33547
|tip Inside the building.
turnin The Grand Melee##13782 |goto 76.55,24.33 |only if haveq(13782) or completedq(13782)
turnin At The Enemy's Gates##13860 |goto 76.55,24.33 |only if haveq(13860) or completedq(13860)
|only if haveq(13782,13860) or completedq(13782,13860)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
turnin Get Kraken!##14108 |goto 69.51,23.09 |only if haveq(14108) or completedq(14108)
turnin The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if haveq(14107) or completedq(14107)
turnin Identifying the Remains##14095 |goto 69.51,23.09 |only if haveq(14095) or completedq(14095)
|only if haveq(14108,14107,14095) or completedq(14108,14107,14095)
step
talk High Crusader Adelard##34882
|tip Inside the building.
turnin Deathspeaker Kharos##14105 |goto 69.48,23.13 |only if haveq(14105) or completedq(14105)
turnin Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if haveq(14101) or completedq(14101)
turnin Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if haveq(14102) or completedq(14102)
turnin Ornolf The Scarred##14104 |goto 69.48,23.13 |only if haveq(14104) or completedq(14104)
|only if haveq(14105,14101,14102,14104) or completedq(14105,14101,14102,14104)
step
You have completed all available Argent Tournament Valliant dailies
|tip This guide will reset when more become available.
'|complete not completedq(13778,13779,13780,13781,13782,13860,14108,14107,14105,14101,14102,14104) and itemcount(44987) < 25 and not completedq(13721) |next "Accept_Valiant_Dailies" |or
'|complete completedq(13721) or itemcount(44987) >= 25 |or
step
label "Collect_25_Valiant's Seals"
collect 25 Valiant's Seal##44987 |q 13721/1
|tip Complete Argent Tournament daily quests to earn these each day.
step
talk Deathstalker Visceri##33373
|tip Inside the building.
turnin The Valiant's Charge##13721 |goto 76.53,24.21
accept The Valiant's Challenge##13729 |goto 76.53,24.21
step
Equip the Horde Lance |equipped Horde Lance##46070 |q 13729
step
clicknpc Stabled Forsaken Warhorse##33798
Mount the Stabled Forsaken Warhorse |invehicle |q 13729 |goto 72.09,22.44
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 spell:62552 |q 13729 |goto 68.60,20.99
|tip Use the "Defend" ability on your vehicle bar.
|tip Before beginning combat, having 3 stacks of this buff is essential.
step
talk Squire Danny##33518
Tell him _"I am ready to fight!"_
|tip Before beginning combat, having 3 stacks of the "Defend" buff is essential.
kill Argent Champion##33707
|tip It will ride out to you.
|tip Maintain 3 stacks of the "Defend" buff at all times.
|tip Use "Shield-Breaker" until the Champion has no shields left, then use the "Charge" ability.
|tip Repeat this process until it is defeated.
Defeat the Argent Champion |q 13729/1 |goto 68.60,20.99
step
Dismount the Stabled Forsaken Warhorse |outvehicle |q 13729
|tip Click the "Exit" button on your vehicle bar.
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
step
talk Deathstalker Visceri##33373
|tip Inside the building.
turnin The Valiant's Challenge##13729 |goto 76.53,24.21
accept A Champion Rises##13739 |goto 76.53,24.21
step
talk Justicar Mariel Trueheart##33817
|tip Inside the building.
turnin A Champion Rises##13739 |goto 69.66,22.86
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Argent Tournament Grounds\\Champion of Orgrimmar",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing Valiant Rank dailies in order to achieve Argent Tournament Grounds Champion rank with Orgrimmar.",
condition_end=function() return completedq(13726) end,
},[[
step
talk Mokra the Skullcrusher##33361
|tip Inside the building.
accept Valiant Of Orgrimmar##13707 |goto Icecrown/0 76.46,24.59
step
talk Mokra the Skullcrusher##33361
|tip Inside the building.
turnin Valiant Of Orgrimmar##13707 |goto 76.46,24.59
accept The Valiant's Charge##13697 |goto 76.46,24.59
stickystart "Collect_25_Valiant's Seals"
step
label "Accept_Valiant_Dailies"
talk Mokra the Skullcrusher##33361
|tip Inside the building.
accept A Blade Fit For A Champion##13762 |goto 76.46,24.59 |only if questpossible |or
accept A Worthy Weapon##13763 |goto 76.46,24.59 |only if questpossible |or
accept The Edge Of Winter##13764 |goto 76.46,24.59 |only if questpossible |or
Accept Mokra's Daily Quest |complete false |goto 76.46,24.59 |or |only if not completedq(13762,13763,13764,13726)
Accept Mokra's Daily Quest |complete true |goto 76.46,24.59 |or |only if completedq(13762,13763,13764,13726)
|tip You will only be able to accept one quest each day.
step
talk Akinos##33405
|tip Inside the building.
accept A Valiant's Field Training##13765 |goto 76.50,24.48 |only if not completedq(13765,13726)
accept A Valiant's Field Training##13765 |goto 76.50,24.48 |only if completedq(13765,13726)
step
talk Morah Worgsister##33544
|tip Inside the building.
accept The Grand Melee##13767 |goto 76.40,24.59 |only if not completedq(13767,13856,13726)
accept At The Enemy's Gates##13856 |goto 76.40,24.59 |only if not completedq(13767,13856,13726)
accept At The Enemy's Gates##13856 |complete true |goto 76.40,24.59 |only if completedq(13767,13856,13726)
stickystop "Collect_25_Valiant's Seals"
step
Equip the Horde Lance |equipped Horde Lance##46070 |q 13767
|only if haveq(13767) or completedq(13767)
step
clicknpc Stabled Orgrimmar Wolf##33799
Mount the Stabled Orgrimmar Wolf |invehicle |q 13767 |goto 75.55,24.00
|only if haveq(13767) or completedq(13767)
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 spell:62552 |goto 75.36,26.03 |q 13767
|tip Use the "Defend" ability on your vehicle bar.
|tip Before beginning combat, having 3 stacks of this buff is essential.
|only if haveq(13767) or completedq(13767)
step
Talk to the riders on mounts of other Horde races
Tell them you are ready to fight!
Fight and defeat them
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to remove their defenses, then use the "Charge" ability to deal damage.
|tip "Thrust" is useful in melee range, but make sure your shield is stacked up before using it.
collect 3 Mark of the Valiant##45127 |q 13767/1 |goto 75.36,26.03
|only if haveq(13767) or completedq(13767)
step
Dismount the Stabled Orgrimmar Wolf |outvehicle |q 13767
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13767) or completedq(13767)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
|only if haveq(13767) or completedq(13767)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
accept Get Kraken!##14108 |goto 69.51,23.09 |only if questpossible |or
accept The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if questpossible |or
Accept Silverdawn's Daily Quest |complete false |goto 69.51,23.09 |or |only if not completedq(14108,14107,13726)
Accept Silverdawn's Daily Quest |complete true |goto 69.51,23.09 |or |only if completedq(14108,14107,13726)
|tip You will only be able to accept one quest each day.
|only if achieved(2816)
step
talk High Crusader Adelard##34882
|tip Inside the building.
accept Deathspeaker Kharos##14105 |goto 69.48,23.13 |only if questpossible |or
accept Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if questpossible |or
accept Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if questpossible |or
accept Ornolf The Scarred##14104 |goto 69.48,23.13 |only if questpossible |or
Accept Adelard's Daily Quest |complete false |goto 69.48,23.13 |or |only if not completedq(14105,14101,14102,14104,13726)
Accept Adelard's Daily Quest |complete true |goto 69.48,23.13 |or |only if completedq(14105,14101,14102,14104,13726)
|tip You will only be able to accept one quest each day.
|only if achieved(2816)
step
talk Stabled Argent Hippogryph##35117
Choose _Mount the Hippogryph and prepare for battle!_
Mount the Stabled Argent Hippogryph |ontaxi |goto Icecrown/0 69.78,22.33 |q 14108
|only if haveq(14108) or completedq(14108)
stickystart "Kill_6_Kvaldir_Deepcallers"
step
use the Flaming Spears##46954
|tip Use them on the North Sea Kraken below.
|tip If you manage to kill it, you will get an additional daily quest to turn in.
Hurl Spears at the North Sea Kraken #8# Times |q 14108/1 |goto Hrothgar's Landing/0 51.29,51.04
You can also find it at [43.76,53.12]
|only if haveq(14108) or completedq(14108)
step
label "Kill_6_Kvaldir_Deepcallers"
use the Flaming Spears##46954
|tip Use them on Kvaldir Deepcallers below.
kill 6 Kvaldir Deepcaller##35092 |q 14108/2 |goto 46.15,48.96
|only if haveq(14108) or completedq(14108)
step
Watch the dialogue
|tip You will eventually start flying back to the Argent Tournament Grounds.
Return to the Argent Tournament Grounds |offtaxi |goto Icecrown/0 69.87,22.17
|only if haveq(14108) or completedq(14108)
step
use the Mistcaller's Charm##47009
|tip Inside the cave next to the blue floating crystal.
kill Mistcaller Yngvar##34965 |q 14102/1 |goto Hrothgar's Landing/0 43.92,24.35
|only if haveq(14102) or completedq(14102)
step
use the Kvaldir War Horn##47006
|tip Use it next to the fire.
|tip Drottinn will float down and attack.
kill Drottinn Hrothgar##34980 |q 14101/1 |goto 50.65,15.41
|only if haveq(14101) or completedq(14101)
step
use the Captured Kvaldir Banner##47029
kill Ornolf the Scarred##35012 |q 14104/1 |goto 58.68,31.42
|only if haveq(14104) or completedq(14104)
step
kill Deathspeaker Kharos##34808 |q 14105/1 |goto Icecrown/0 64.23,21.43
|tip He's standing in a small pit area.
|only if haveq(14105) or completedq(14105)
step
click Discarded Soul Crystal##195344+
|tip They look like glowing crystals on the ground around this area.
collect Discarded Soul Crystal##47035 |n
|tip One crystial is required for each blessing.
use Light-Blessed Relic##47033
|tip Use it on Fallen Hero's Spirits.
|tip They are neutral NPCs that walk around this area.
Bless #6# Fallen Hero's Spirits |q 14107/1 |goto 49.62,39.93
|only if haveq(14107) or completedq(14107)
step
kill 10 Converted Hero##32255 |q 13765/1 |goto 44.62,52.62
|only if haveq(13765) or completedq(13765)
step
Equip the Horde Lance |equipped Horde Lance##46070 |goto Icecrown/0 48.87,71.41 |q 13856
|only if haveq(13856) or completedq(13856)
step
clicknpc Stabled Campaign Warhorse##34125
Mount the Stabled Campaign Warhorse |invehicle |goto 48.87,71.41 |q 13856
|only if haveq(13856) or completedq(13856)
stickystart "Kill_10_Bonegard_Scouts"
stickystart "Kill_3_Bonegard_Lieutenants"
step
kill 15 Boneguard Footman##33438 |q 13856/1 |goto 50.23,74.13
|tip Running over these with your warhorse will kill them.
|only if haveq(13856) or completedq(13856)
step
label "Kill_10_Bonegard_Scouts"
kill 10 Boneguard Scout##33550 |q 13856/2 |goto 50.23,74.13
|tip They fly around this area.
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to attack them in the air.
|only if haveq(13856) or completedq(13856)
step
label "Kill_3_Bonegard_Lieutenants"
kill 3 Boneguard Lieutenant##33429 |q 13856/3 |goto 50.61,76.93
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to remove their defenses, then use the "Charge" ability to deal damage.
|tip "Thrust" is useful in melee range, but make sure your shield is stacked up before using it.
|only if haveq(13856) or completedq(13856)
step
Dismount the Stabled Campaign Warhorse |outvehicle |q 13856
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13856) or completedq(13856)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
|only if haveq(13856) or completedq(13856)
step
click Winter Hyacinth##194213+
|tip They look like purple and pink flowers on the ground around this area.
collect 4 Winter Hyacinth##45000 |q 13763 |goto 70.41,74.55
|only if haveq(13763) or completedq(13763)
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13764 |goto Crystalsong Forest/0 55.10,74.90
|only if haveq(13764) or completedq(13764)
step
use the Winter Hyacinth##45000
|tip Use them in the water.
Watch the dialogue
click the Blade of Drak'Mar##194238
|tip It will spawn after a brief dialogue.
collect Blade of Drak'Mar##44978 |q 13763/1 |goto Dragonblight/0 93.18,25.99
|only if haveq(13763) or completedq(13763)
step
label "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
use the Warts-B-Gone Lip Balm##44986
Gain the "Warts-B-Gone Lip Balm" Buff |complete hasbuff("spell:62574") or readyq(13762) |goto Grizzly Hills/0 61.18,49.57 |q 13762
|only if haveq(13762) or completedq(13762)
step
Kiss Lake Frogs |script DoEmote("KISS")
|tip Target Lake Frogs and perform the Kiss emote.
|tip Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake.
talk Maiden of Ashwood Lake##33220
Ask her her _"Glad to help, my lady. I'm told you were once the guardian of a fabled sword. Do you know where I might find it?"_
collect Ashwood Brand##44981 |q 13762/1 |goto Grizzly Hills/0 61.18,49.57 |or
'|complete not hasbuff("spell:62574") and not (readyq(13762) or completedq(13762)) |or |next "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
|only if haveq(13762) or completedq(13762)
step
use the Everburning Ember##45005
|tip Use it on the Maiden of Winter's Breath.
collect Winter's Edge##45003 |q 13764/1 |goto Howling Fjord/0 42.18,19.66
|only if haveq(13764) or completedq(13764)
stickystart "Collect_25_Valiant's Seals"
step
talk Mokra the Skullcrusher##33361
|tip Inside the building.
turnin A Blade Fit For A Champion##13762 |goto Icecrown/0 76.46,24.59 |only if haveq(13762) or completedq(13762)
turnin A Worthy Weapon##13763 |goto 76.46,24.59 |only if haveq(13763) or completedq(13763)
turnin The Edge Of Winter##13764 |goto 76.46,24.59 |only if haveq(13764) or completedq(13764)
|only if haveq(13762,13763,13764) or completedq(13762,13763,13764)
step
talk Akinos##33405
|tip Inside the building.
turnin A Valiant's Field Training##13765 |goto 76.50,24.48
|only if haveq(13765) or completedq(13765)
step
talk Morah Worgsister##33544
|tip Inside the building.
turnin The Grand Melee##13767 |goto 76.40,24.59 |only if haveq(13767) or completedq(13767)
turnin At The Enemy's Gates##13856 |goto 76.40,24.59 |only if haveq(13856) or completedq(13856)
|only if haveq(13767,13856) or completedq(13767,13856)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
turnin Get Kraken!##14108 |goto 69.51,23.09 |only if haveq(14108) or completedq(14108)
turnin The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if haveq(14107) or completedq(14107)
turnin Identifying the Remains##14095 |goto 69.51,23.09 |only if haveq(14095) or completedq(14095)
|only if haveq(14108,14107,14095) or completedq(14108,14107,14095)
step
talk High Crusader Adelard##34882
|tip Inside the building.
turnin Deathspeaker Kharos##14105 |goto 69.48,23.13 |only if haveq(14105) or completedq(14105)
turnin Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if haveq(14101) or completedq(14101)
turnin Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if haveq(14102) or completedq(14102)
turnin Ornolf The Scarred##14104 |goto 69.48,23.13 |only if haveq(14104) or completedq(14104)
|only if haveq(14105,14101,14102,14104) or completedq(14105,14101,14102,14104)
step
You have completed all available Argent Tournament Valliant dailies
|tip This guide will reset when more become available.
'|complete not completedq(13762,13763,13764,13765,13767,13856,14108,14107,14105,14101,14102,14104) and itemcount(44987) < 25 and not completedq(13697) |next "Accept_Valiant_Dailies" |or
'|complete completedq(13697) or itemcount(44987) >= 25 |or
step
label "Collect_25_Valiant's Seals"
collect 25 Valiant's Seal##44987 |q 13697/1
|tip Complete Argent Tournament daily quests to earn these each day.
step
talk Mokra the Skullcrusher##33361
|tip Inside the building.
turnin The Valiant's Charge##13697 |goto 76.46,24.59
accept The Valiant's Challenge##13726 |goto 76.46,24.59
step
Equip the Horde Lance |equipped Horde Lance##46070 |q 13726
step
clicknpc Stabled Orgrimmar Wolf##33799
Mount the Stabled Orgrimmar Wolf |invehicle |q 13726 |goto 72.17,22.54
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 spell:62552 |q 13726 |goto 68.60,20.99
|tip Use the "Defend" ability on your vehicle bar.
|tip Before beginning combat, having 3 stacks of this buff is essential.
step
talk Squire Danny##33518
Tell him _"I am ready to fight!"_
|tip Before beginning combat, having 3 stacks of the "Defend" buff is essential.
kill Argent Champion##33707
|tip It will ride out to you.
|tip Maintain 3 stacks of the "Defend" buff at all times.
|tip Use "Shield-Breaker" until the Champion has no shields left, then use the "Charge" ability.
|tip Repeat this process until it is defeated.
Defeat the Argent Champion |q 13726/1 |goto 68.60,20.99
step
Dismount the Stabled Orgrimmar Wolf |outvehicle |q 13726
|tip Click the "Exit" button on your vehicle bar.
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
step
talk Mokra the Skullcrusher##33361
|tip Inside the building.
turnin The Valiant's Challenge##13726 |goto 76.46,24.59
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Argent Tournament Grounds\\Champion of Sen'jin",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing Valiant Rank dailies in order to achieve Argent Tournament Grounds Champion rank with Sen'jin.",
condition_end=function() return completedq(13727) end,
},[[
step
talk Zul'tore##33372
|tip Inside the building.
accept Valiant Of Sen'jin##13708 |goto Icecrown/0 75.96,24.52
step
talk Zul'tore##33372
|tip Inside the building.
turnin Valiant Of Sen'jin##13708 |goto 75.96,24.52
accept The Valiant's Charge##13719 |goto 75.96,24.52
stickystart "Collect_25_Valiant's Seals"
step
label "Accept_Valiant_Dailies"
talk Zul'tore##33372
|tip Inside the building.
accept A Blade Fit For A Champion##13768 |goto 75.96,24.52 |only if questpossible |or
accept A Worthy Weapon##13769 |goto 75.96,24.52 |only if questpossible |or
accept The Edge Of Winter##13770 |goto 75.96,24.52 |only if questpossible |or
Accept Zul'tore's Daily Quest |complete false |goto 75.96,24.52 |or |only if not completedq(13768,13769,13770,13727)
Accept Zul'tore's Daily Quest |complete true |goto 75.96,24.52 |or |only if completedq(13768,13769,13770,13727)
|tip You will only be able to accept one quest each day.
step
talk Shadow Hunter Mezil-kree##33540
accept A Valiant's Field Training##13771 |goto 76.04,24.59 |only if not completedq(13771,13727)
accept A Valiant's Field Training##13771 |complete true |goto 76.04,24.59 |only if completedq(13771,13727)
step
talk Gahju##33545
|tip Inside the building.
accept The Grand Melee##13772 |goto 75.93,24.41 |only if not completedq(13772,13857,13727)
accept At The Enemy's Gates##13857 |goto 75.93,24.41 |only if not completedq(13772,13857,13727)
accept At The Enemy's Gates##13857 |complete true |goto 75.93,24.41 |only if completedq(13772,13857,13727)
stickystop "Collect_25_Valiant's Seals"
step
Equip the Horde Lance |equipped Horde Lance##46070 |q 13772
|only if haveq(13772) or completedq(13772)
step
clicknpc Stabled Darkspear Raptor##33796
Mount the Stabled Darkspear Raptor |invehicle |q 13772 |goto 75.58,23.76
|only if haveq(13772) or completedq(13772)
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 spell:62552 |goto 75.36,26.03 |q 13772
|tip Use the "Defend" ability on your vehicle bar.
|tip Before beginning combat, having 3 stacks of this buff is essential.
|only if haveq(13772) or completedq(13772)
step
Talk to the riders on mounts of other Horde races
Tell them _"I am ready to fight!"_
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to remove their defenses, then use the "Charge" ability to deal damage.
|tip "Thrust" is useful in melee range, but make sure your shield is stacked up before using it.
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range. Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13772/1 |goto 75.36,26.03
|only if haveq(13772) or completedq(13772)
step
Dismount the Stabled Darkspear Raptor |outvehicle |q 13772
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13772) or completedq(13772)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
|only if haveq(13772) or completedq(13772)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
accept Get Kraken!##14108 |goto 69.51,23.09 |only if questpossible |or
accept The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if questpossible |or
Accept Silverdawn's Daily Quest |complete false |goto 69.51,23.09 |or |only if not completedq(14108,14107,13727)
Accept Silverdawn's Daily Quest |complete true |goto 69.51,23.09 |or |only if completedq(14108,14107,13727)
|tip You will only be able to accept one quest each day.
|only if achieved(2816)
step
talk High Crusader Adelard##34882
|tip Inside the building.
accept Deathspeaker Kharos##14105 |goto 69.48,23.13 |only if questpossible |or
accept Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if questpossible |or
accept Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if questpossible |or
accept Ornolf The Scarred##14104 |goto 69.48,23.13 |only if questpossible |or
Accept Adelard's Daily Quest |complete false |goto 69.48,23.13 |or |only if not completedq(14105,14101,14102,14104,13727)
Accept Adelard's Daily Quest |complete true |goto 69.48,23.13 |or |only if completedq(14105,14101,14102,14104,13727)
|tip You will only be able to accept one quest each day.
|only if achieved(2816)
step
talk Stabled Argent Hippogryph##35117
Choose _Mount the Hippogryph and prepare for battle!_
Mount the Stabled Argent Hippogryph |ontaxi |goto Icecrown/0 69.78,22.33 |q 14108
|only if haveq(14108) or completedq(14108)
stickystart "Kill_6_Kvaldir_Deepcallers"
step
use the Flaming Spears##46954
|tip Use them on the North Sea Kraken below.
|tip If you manage to kill it, you will get an additional daily quest to turn in.
Hurl Spears at the North Sea Kraken #8# Times |q 14108/1 |goto Hrothgar's Landing/0 51.29,51.04
You can also find it at [43.76,53.12]
|only if haveq(14108) or completedq(14108)
step
label "Kill_6_Kvaldir_Deepcallers"
use the Flaming Spears##46954
|tip Use them on Kvaldir Deepcallers below.
kill 6 Kvaldir Deepcaller##35092 |q 14108/2 |goto 46.15,48.96
|only if haveq(14108) or completedq(14108)
step
Watch the dialogue
|tip You will eventually start flying back to the Argent Tournament Grounds.
Return to the Argent Tournament Grounds |offtaxi |goto Icecrown/0 69.87,22.17
|only if haveq(14108) or completedq(14108)
step
use the Mistcaller's Charm##47009
|tip Inside the cave next to the blue floating crystal.
kill Mistcaller Yngvar##34965 |q 14102/1 |goto Hrothgar's Landing/0 43.92,24.35
|only if haveq(14102) or completedq(14102)
step
use the Kvaldir War Horn##47006
|tip Use it next to the fire.
|tip Drottinn will float down and attack.
kill Drottinn Hrothgar##34980 |q 14101/1 |goto 50.65,15.41
|only if haveq(14101) or completedq(14101)
step
use the Captured Kvaldir Banner##47029
kill Ornolf the Scarred##35012 |q 14104/1 |goto 58.68,31.42
|only if haveq(14104) or completedq(14104)
step
kill Deathspeaker Kharos##34808 |q 14105/1 |goto Icecrown/0 64.23,21.43
|tip He's standing in a small pit area.
|only if haveq(14105) or completedq(14105)
step
click Discarded Soul Crystal##195344+
|tip They look like glowing crystals on the ground around this area.
collect Discarded Soul Crystal##47035 |n
|tip One crystial is required for each blessing.
use Light-Blessed Relic##47033
|tip Use it on Fallen Hero's Spirits.
|tip They are neutral NPCs that walk around this area.
Bless #6# Fallen Hero's Spirits |q 14107/1 |goto 49.62,39.93
|only if haveq(14107) or completedq(14107)
step
kill 10 Converted Hero##32255 |q 13771/1 |goto 44.62,52.62
|only if haveq(13771) or completedq(13771)
step
Equip the Horde Lance |equipped Horde Lance##46070 |goto Icecrown/0 48.87,71.41 |q 13857
|only if haveq(13857) or completedq(13857)
step
clicknpc Stabled Campaign Warhorse##34125
Mount the Stabled Campaign Warhorse |invehicle |goto 48.87,71.41 |q 13857
|only if haveq(13857) or completedq(13857)
stickystart "Kill_10_Bonegard_Scouts"
stickystart "Kill_3_Bonegard_Lieutenants"
step
kill 15 Boneguard Footman##33438 |q 13857/1 |goto 50.23,74.13
|tip Running over these with your warhorse will kill them.
|only if haveq(13857) or completedq(13857)
step
label "Kill_10_Bonegard_Scouts"
kill 10 Boneguard Scout##33550 |q 13857/2 |goto 50.23,74.13
|tip They fly around this area.
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to attack them in the air.
|only if haveq(13857) or completedq(13857)
step
label "Kill_3_Bonegard_Lieutenants"
kill 3 Boneguard Lieutenant##33429 |q 13857/3 |goto 50.61,76.93
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to remove their defenses, then use the "Charge" ability to deal damage.
|tip "Thrust" is useful in melee range, but make sure your shield is stacked up before using it.
|only if haveq(13857) or completedq(13857)
step
Dismount the Stabled Campaign Warhorse |outvehicle |q 13857
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13857) or completedq(13857)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
|only if haveq(13857) or completedq(13857)
step
click Winter Hyacinth##194213+
|tip They look like purple and pink flowers on the ground around this area.
collect 4 Winter Hyacinth##45000 |q 13769 |goto 70.41,74.55
|only if haveq(13769) or completedq(13769)
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13770 |goto Crystalsong Forest/0 55.10,74.90
|only if haveq(13770) or completedq(13770)
step
use the Winter Hyacinth##45000
|tip Use them in the water.
Watch the dialogue
click the Blade of Drak'Mar##194238
|tip It will spawn after a brief dialogue.
collect Blade of Drak'Mar##44978 |q 13769/1 |goto Dragonblight/0 93.18,25.99
|only if haveq(13769) or completedq(13769)
step
label "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
use the Warts-B-Gone Lip Balm##44986
Gain the "Warts-B-Gone Lip Balm" Buff |complete hasbuff("spell:62574") or readyq(13768) |goto Grizzly Hills/0 61.18,49.57 |q 13768
|only if haveq(13768) or completedq(13768)
step
Kiss Lake Frogs |script DoEmote("KISS")
|tip Target Lake Frogs and perform the Kiss emote.
|tip Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake.
talk Maiden of Ashwood Lake##33220
Ask her her _"Glad to help, my lady. I'm told you were once the guardian of a fabled sword. Do you know where I might find it?"_
collect Ashwood Brand##44981 |q 13768/1 |goto Grizzly Hills/0 61.18,49.57 |or
'|complete not hasbuff("spell:62574") and not (readyq(13768) or completedq(13768)) |or |next "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
|only if haveq(13768) or completedq(13768)
step
use the Everburning Ember##45005
|tip Use it on the Maiden of Winter's Breath.
collect Winter's Edge##45003 |q 13770/1 |goto Howling Fjord/0 42.18,19.66
|only if haveq(13770) or completedq(13770)
stickystart "Collect_25_Valiant's Seals"
step
talk Zul'tore##33372
|tip Inside the building.
turnin A Blade Fit For A Champion##13768 |goto Icecrown/0 75.96,24.52 |only if haveq(13768) or completedq(13768)
turnin A Worthy Weapon##13769 |goto 75.96,24.52 |only if haveq(13769) or completedq(13769)
turnin The Edge Of Winter##13770 |goto 75.96,24.52 |only if haveq(13770) or completedq(13770)
|only if haveq(13768,13769,13770) or completedq(13768,13769,13770)
step
talk Gahju##33545
|tip Inside the building.
turnin The Grand Melee##13772 |goto 75.93,24.41 |only if haveq(13772) or completedq(13772)
turnin At The Enemy's Gates##13857 |goto 75.93,24.41 |only if haveq(13857) or completedq(13857)
|only if haveq(13772,13857) or completedq(13772,13857)
step
talk Shadow Hunter Mezil-kree##33540
|tip Inside the building.
turnin A Valiant's Field Training##13771 |goto 76.04,24.59
|only if haveq(13771) or completedq(13771)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
turnin Get Kraken!##14108 |goto 69.51,23.09 |only if haveq(14108) or completedq(14108)
turnin The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if haveq(14107) or completedq(14107)
turnin Identifying the Remains##14095 |goto 69.51,23.09 |only if haveq(14095) or completedq(14095)
|only if haveq(14108,14107,14095) or completedq(14108,14107,14095)
step
talk High Crusader Adelard##34882
|tip Inside the building.
turnin Deathspeaker Kharos##14105 |goto 69.48,23.13 |only if haveq(14105) or completedq(14105)
turnin Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if haveq(14101) or completedq(14101)
turnin Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if haveq(14102) or completedq(14102)
turnin Ornolf The Scarred##14104 |goto 69.48,23.13 |only if haveq(14104) or completedq(14104)
|only if haveq(14105,14101,14102,14104) or completedq(14105,14101,14102,14104)
step
You have completed all available Argent Tournament Valliant dailies
|tip This guide will reset when more become available.
'|complete not completedq(13768,13769,13770,13772,13857,13771,14108,14107,14105,14101,14102,14104) and itemcount(44987) < 25 and not completedq(13719) |next "Accept_Valiant_Dailies" |or
'|complete completedq(13719) or itemcount(44987) >= 25 |or
step
label "Collect_25_Valiant's Seals"
collect 25 Valiant's Seal##44987 |q 13719/1
|tip Complete Argent Tournament daily quests to earn these each day.
step
talk Zul'tore##33372
|tip Inside the building.
turnin The Valiant's Charge##13719 |goto 75.96,24.52
accept The Valiant's Challenge##13727 |goto 75.96,24.52
step
Equip the Horde Lance |equipped Horde Lance##46070 |q 13727
step
clicknpc Stabled Darkspear Raptor##33796
Mount the Stabled Darkspear Raptor |invehicle |q 13727 |goto 72.04,22.54
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 spell:62552 |q 13727 |goto 68.60,20.99
|tip Use the "Defend" ability on your vehicle bar.
|tip Before beginning combat, having 3 stacks of this buff is essential.
step
talk Squire Danny##33518
Tell him _"I am ready to fight!"_
|tip Before beginning combat, having 3 stacks of the "Defend" buff is essential.
kill Argent Champion##33707
|tip It will ride out to you.
|tip Maintain 3 stacks of the "Defend" buff at all times.
|tip Use "Shield-Breaker" until the Champion has no shields left, then use the "Charge" ability.
|tip Repeat this process until it is defeated.
Defeat the Argent Champion |q 13727/1 |goto 68.60,20.99
step
Dismount the Stabled Darkspear Raptor |outvehicle |q 13727
|tip Click the "Exit" button on your vehicle bar.
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
step
talk Zul'tore##33372
|tip Inside the building.
turnin The Valiant's Challenge##13727 |goto 75.96,24.52
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Argent Tournament Grounds\\Champion of Silvermoon",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing Valiant Rank dailies in order to achieve Argent Tournament Grounds Champion rank with Silvermoon.",
condition_end=function() return completedq(13731) end,
},[[
step
talk Eressea Dawnsinger##33379
|tip Inside the building.
accept Valiant Of Silvermoon##13711 |goto Icecrown/0 76.45,23.85
step
talk Eressea Dawnsinger##33379
|tip Inside the building.
turnin Valiant Of Silvermoon##13711 |goto 76.45,23.85
accept The Valiant's Charge##13722 |goto 76.45,23.85
stickystart "Collect_25_Valiant's Seals"
step
label "Accept_Valiant_Dailies"
talk Eressea Dawnsinger##33379
|tip Inside the building.
accept A Blade Fit For A Champion##13783 |goto 76.45,23.85 |only if questpossible |or
accept A Worthy Weapon##13784 |goto 76.45,23.85 |only if questpossible |or
accept The Edge Of Winter##13785 |goto 76.45,23.85 |only if questpossible |or
Accept Eressea's Daily Quest |complete false |goto 76.45,23.85 |or |only if not completedq(13783,13784,13785,13731)
Accept Eressea's Daily Quest |complete true |goto 76.45,23.85 |or |only if completedq(13783,13784,13785,13731)
|tip You will only be able to accept one quest each day.
step
talk Kethiel Sunlance##33538
|tip Inside the building.
accept A Valiant's Field Training##13786 |goto 76.41,23.75 |only if not completedq(13786,13731)
accept A Valiant's Field Training##13786 |complete true |goto 76.41,23.75 |only if completedq(13786,13731)
step
talk Aneera Thuron##33548
|tip Inside the building.
accept The Grand Melee##13787 |goto 76.53,23.92 |only if not completedq(13787,13859,13731)
accept At The Enemy's Gates##13859 |goto 76.53,23.92 |only if not completedq(13787,13859,13731)
accept At The Enemy's Gates##13859 |complete true |goto 76.53,23.92 |only if completedq(13787,13859,13731)
stickystop "Collect_25_Valiant's Seals"
step
Equip the Horde Lance |equipped Horde Lance##46070 |q 13787
|only if haveq(13787) or completedq(13787)
step
clicknpc Stabled Silvermoon Hawkstrider##33791
Mount the Stabled Silvermoon Hawkstrider |invehicle |q 13787 |goto 75.54,24.14
|only if haveq(13787) or completedq(13787)
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 spell:62552 |goto 75.36,26.03 |q 13787
|tip Use the "Defend" ability on your vehicle bar.
|tip Before beginning combat, having 3 stacks of this buff is essential.
|only if haveq(13787) or completedq(13787)
step
Talk to the riders on mounts of other Horde races
Tell them _"I am ready to fight!"_
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to remove their defenses, then use the "Charge" ability to deal damage.
|tip "Thrust" is useful in melee range, but make sure your shield is stacked up before using it.
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range. Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13787/1 |goto 75.36,26.03
|only if haveq(13787) or completedq(13787)
step
Dismount the Stabled Silvermoon Hawkstrider |outvehicle |q 13787
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13787) or completedq(13787)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
|only if haveq(13787) or completedq(13787)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
accept Get Kraken!##14108 |goto 69.51,23.09 |only if questpossible |or
accept The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if questpossible |or
Accept Silverdawn's Daily Quest |complete false |goto 69.51,23.09 |or |only if not completedq(14108,14107,13731)
Accept Silverdawn's Daily Quest |complete true |goto 69.51,23.09 |or |only if completedq(14108,14107,13731)
|tip You will only be able to accept one quest each day.
|only if achieved(2816)
step
talk High Crusader Adelard##34882
|tip Inside the building.
accept Deathspeaker Kharos##14105 |goto 69.48,23.13 |only if questpossible |or
accept Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if questpossible |or
accept Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if questpossible |or
accept Ornolf The Scarred##14104 |goto 69.48,23.13 |only if questpossible |or
Accept Adelard's Daily Quest |complete false |goto 69.48,23.13 |or |only if not completedq(14105,14101,14102,14104,13731)
Accept Adelard's Daily Quest |complete true |goto 69.48,23.13 |or |only if completedq(14105,14101,14102,14104,13731)
|tip You will only be able to accept one quest each day.
|only if achieved(2816)
step
talk Stabled Argent Hippogryph##35117
Choose _Mount the Hippogryph and prepare for battle!_
Mount the Stabled Argent Hippogryph |ontaxi |goto Icecrown/0 69.78,22.33 |q 14108
|only if haveq(14108) or completedq(14108)
stickystart "Kill_6_Kvaldir_Deepcallers"
step
use the Flaming Spears##46954
|tip Use them on the North Sea Kraken below.
|tip If you manage to kill it, you will get an additional daily quest to turn in.
Hurl Spears at the North Sea Kraken #8# Times |q 14108/1 |goto Hrothgar's Landing/0 51.29,51.04
You can also find it at [43.76,53.12]
|only if haveq(14108) or completedq(14108)
step
label "Kill_6_Kvaldir_Deepcallers"
use the Flaming Spears##46954
|tip Use them on Kvaldir Deepcallers below.
kill 6 Kvaldir Deepcaller##35092 |q 14108/2 |goto 46.15,48.96
|only if haveq(14108) or completedq(14108)
step
Watch the dialogue
|tip You will eventually start flying back to the Argent Tournament Grounds.
Return to the Argent Tournament Grounds |offtaxi |goto Icecrown/0 69.87,22.17
|only if haveq(14108) or completedq(14108)
step
use the Mistcaller's Charm##47009
|tip Inside the cave next to the blue floating crystal.
kill Mistcaller Yngvar##34965 |q 14102/1 |goto Hrothgar's Landing/0 43.92,24.35
|only if haveq(14102) or completedq(14102)
step
use the Kvaldir War Horn##47006
|tip Use it next to the fire.
|tip Drottinn will float down and attack.
kill Drottinn Hrothgar##34980 |q 14101/1 |goto 50.65,15.41
|only if haveq(14101) or completedq(14101)
step
use the Captured Kvaldir Banner##47029
kill Ornolf the Scarred##35012 |q 14104/1 |goto 58.68,31.42
|only if haveq(14104) or completedq(14104)
step
kill Deathspeaker Kharos##34808 |q 14105/1 |goto Icecrown/0 64.23,21.43
|tip He's standing in a small pit area.
|only if haveq(14105) or completedq(14105)
step
click Discarded Soul Crystal##195344+
|tip They look like glowing crystals on the ground around this area.
collect Discarded Soul Crystal##47035 |n
|tip One crystial is required for each blessing.
use Light-Blessed Relic##47033
|tip Use it on Fallen Hero's Spirits.
|tip They are neutral NPCs that walk around this area.
Bless #6# Fallen Hero's Spirits |q 14107/1 |goto 49.62,39.93
|only if haveq(14107) or completedq(14107)
step
kill 10 Converted Hero##32255 |q 13786/1 |goto 44.62,52.62
|only if haveq(13786) or completedq(13786)
step
Equip the Horde Lance |equipped Horde Lance##46070 |goto Icecrown/0 48.87,71.41 |q 13859
|only if haveq(13859) or completedq(13859)
step
clicknpc Stabled Campaign Warhorse##34125
Mount the Stabled Campaign Warhorse |invehicle |goto 48.87,71.41 |q 13859
|only if haveq(13859) or completedq(13859)
stickystart "Kill_10_Bonegard_Scouts"
stickystart "Kill_3_Bonegard_Lieutenants"
step
kill 15 Boneguard Footman##33438 |q 13859/1 |goto 50.23,74.13
|tip Running over these with your warhorse will kill them.
|only if haveq(13859) or completedq(13859)
step
label "Kill_10_Bonegard_Scouts"
kill 10 Boneguard Scout##33550 |q 13859/2 |goto 50.23,74.13
|tip They fly around this area.
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to attack them in the air.
|only if haveq(13859) or completedq(13859)
step
label "Kill_3_Bonegard_Lieutenants"
kill 3 Boneguard Lieutenant##33429 |q 13859/3 |goto 50.61,76.93
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to remove their defenses, then use the "Charge" ability to deal damage.
|tip "Thrust" is useful in melee range, but make sure your shield is stacked up before using it.
|only if haveq(13859) or completedq(13859)
step
Dismount the Stabled Campaign Warhorse |outvehicle |q 13859
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13859) or completedq(13859)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
|only if haveq(13859) or completedq(13859)
step
click Winter Hyacinth##194213+
|tip They look like purple and pink flowers on the ground around this area.
collect 4 Winter Hyacinth##45000 |q 13784 |goto 70.41,74.55
|only if haveq(13784) or completedq(13784)
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13785 |goto Crystalsong Forest/0 55.10,74.90
|only if haveq(13785) or completedq(13785)
step
use the Winter Hyacinth##45000
|tip Use them in the water.
Watch the dialogue
click the Blade of Drak'Mar##194238
|tip It will spawn after a brief dialogue.
collect Blade of Drak'Mar##44978 |q 13784/1 |goto Dragonblight/0 93.18,25.99
|only if haveq(13784) or completedq(13784)
step
label "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
use the Warts-B-Gone Lip Balm##44986
Gain the "Warts-B-Gone Lip Balm" Buff |complete hasbuff("spell:62574") or readyq(13783) |goto Grizzly Hills/0 61.18,49.57 |q 13783
|only if haveq(13783) or completedq(13783)
step
Kiss Lake Frogs |script DoEmote("KISS")
|tip Target Lake Frogs and perform the Kiss emote.
|tip Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake.
talk Maiden of Ashwood Lake##33220
Ask her her _"Glad to help, my lady. I'm told you were once the guardian of a fabled sword. Do you know where I might find it?"_
collect Ashwood Brand##44981 |q 13783/1 |goto Grizzly Hills/0 61.18,49.57 |or
'|complete not hasbuff("spell:62574") and not (readyq(13783) or completedq(13783)) |or |next "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
|only if haveq(13783) or completedq(13783)
step
use the Everburning Ember##45005
|tip Use it on the Maiden of Winter's Breath.
collect Winter's Edge##45003 |q 13785/1 |goto Howling Fjord/0 42.18,19.66
|only if haveq(13785) or completedq(13785)
stickystart "Collect_25_Valiant's Seals"
step
talk Eressea Dawnsinger##33379
|tip Inside the building.
turnin A Blade Fit For A Champion##13783 |goto Icecrown/0 76.45,23.85 |only if haveq(13783) or completedq(13783)
turnin A Worthy Weapon##13784 |goto 76.45,23.85 |only if haveq(13784) or completedq(13784)
turnin The Edge Of Winter##13785 |goto 76.45,23.85 |only if haveq(13785) or completedq(13785)
|only if haveq(13783,13784,13785) or completedq(13783,13784,13785)
step
talk Kethiel Sunlance##33538
|tip Inside the building.
turnin A Valiant's Field Training##13786 |goto 76.41,23.75
|only if haveq(13786) or completedq(13786)
step
talk Aneera Thuron##33548
|tip Inside the building.
turnin The Grand Melee##13787 |goto 76.53,23.92 |only if haveq(13787) or completedq(13787)
turnin At The Enemy's Gates##13859 |goto 76.53,23.92 |only if haveq(13859) or completedq(13859)
|only if haveq(13787,13859) or completedq(13787,13859)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
turnin Get Kraken!##14108 |goto 69.51,23.09 |only if haveq(14108) or completedq(14108)
turnin The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if haveq(14107) or completedq(14107)
turnin Identifying the Remains##14095 |goto 69.51,23.09 |only if haveq(14095) or completedq(14095)
|only if haveq(14108,14107,14095) or completedq(14108,14107,14095)
step
talk High Crusader Adelard##34882
|tip Inside the building.
turnin Deathspeaker Kharos##14105 |goto 69.48,23.13 |only if haveq(14105) or completedq(14105)
turnin Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if haveq(14101) or completedq(14101)
turnin Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if haveq(14102) or completedq(14102)
turnin Ornolf The Scarred##14104 |goto 69.48,23.13 |only if haveq(14104) or completedq(14104)
|only if haveq(14105,14101,14102,14104) or completedq(14105,14101,14102,14104)
step
You have completed all available Argent Tournament Valliant dailies
|tip This guide will reset when more become available.
'|complete not completedq(13783,13784,13785,13786,13787,13859,14108,14107,14105,14101,14102,14104) and itemcount(44987) < 25 and not completedq(13722) |next "Accept_Valiant_Dailies" |or
'|complete completedq(13722) or itemcount(44987) >= 25 |or
step
label "Collect_25_Valiant's Seals"
collect 25 Valiant's Seal##44987 |q 13722/1
|tip Complete Argent Tournament daily quests to earn these each day.
step
talk Eressea Dawnsinger##33379
|tip Inside the building.
turnin The Valiant's Charge##13722 |goto 76.45,23.85
accept The Valiant's Challenge##13731 |goto 76.45,23.85
step
Equip the Horde Lance |equipped Horde Lance##46070 |q 13731
step
clicknpc Stabled Silvermoon Hawkstrider##33791
Mount the Stabled Silvermoon Hawkstrider |invehicle |q 13731 |goto 72.20,22.45
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 spell:62552 |q 13731 |goto 68.60,20.99
|tip Use the "Defend" ability on your vehicle bar.
|tip Before beginning combat, having 3 stacks of this buff is essential.
step
talk Squire Danny##33518
Tell him _"I am ready to fight!"_
|tip Before beginning combat, having 3 stacks of the "Defend" buff is essential.
kill Argent Champion##33707
|tip It will ride out to you.
|tip Maintain 3 stacks of the "Defend" buff at all times.
|tip Use "Shield-Breaker" until the Champion has no shields left, then use the "Charge" ability.
|tip Repeat this process until it is defeated.
Defeat the Argent Champion |q 13731/1 |goto 68.60,20.99
step
Dismount the Stabled Silvermoon Hawkstrider |outvehicle |q 13731
|tip Click the "Exit" button on your vehicle bar.
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
step
talk Eressea Dawnsinger##33379
|tip Inside the building.
turnin The Valiant's Challenge##13731 |goto 76.45,23.85
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Argent Tournament Grounds\\Champion of Thunder Bluff",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing Valiant Rank dailies in order to achieve Argent Tournament Grounds Champion rank with Thunder Bluff.",
condition_end=function() return completedq(13728) end,
},[[
step
talk Runok Wildmane##33403
|tip Inside the building.
accept Valiant Of Thunder Bluff##13709 |goto Icecrown/0 76.20,24.63
step
talk Runok Wildmane##33403
|tip Inside the building.
turnin Valiant Of Thunder Bluff##13709 |goto 76.20,24.63
accept The Valiant's Charge##13720 |goto 76.20,24.63
stickystart "Collect_25_Valiant's Seals"
step
label "Accept_Valiant_Dailies"
talk Runok Wildmane##33403
|tip Inside the building.
accept A Blade Fit For A Champion##13773 |goto 76.20,24.63 |only if questpossible |or
accept A Worthy Weapon##13774 |goto 76.20,24.63 |only if questpossible |or
accept The Edge Of Winter##13775 |goto 76.20,24.63 |only if questpossible |or
Accept Runok's Daily Quest |complete false |goto 76.20,24.63 |or |only if not completedq(13773,13774,13775,13728)
Accept Runok's Daily Quest |complete true |goto 76.20,24.63 |or |only if completedq(13773,13774,13775,13728)
|tip You will only be able to accept one quest each day.
step
talk Dern Ragetotem##33539
|tip Inside the building.
accept A Valiant's Field Training##13776 |goto 76.26,24.66 |only if not completedq(13776,13728)
accept A Valiant's Field Training##13776 |complete true |goto 76.26,24.66 |only if completedq(13776,13728)
step
talk Anka Clawhoof##33549
|tip Inside the building.
accept The Grand Melee##13777 |goto 76.14,24.63 |only if not completedq(13777,13858,13728)
accept At The Enemy's Gates##13858 |goto 76.14,24.63 |only if not completedq(13777,13858,13728)
accept At The Enemy's Gates##13858 |complete true |goto 76.14,24.63 |only if completedq(13777,13858,13728)
stickystop "Collect_25_Valiant's Seals"
step
Equip the Horde Lance |equipped Horde Lance##46070 |q 13777
|only if haveq(13777) or completedq(13777)
step
clicknpc Stabled Thunder Bluff Kodo##33792
Mount the Stabled Thunder Bluff Kodo |invehicle |q 13777 |goto 75.53,24.26
|only if haveq(13777) or completedq(13777)
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 spell:62552 |goto 75.36,26.03 |q 13777
|tip Use the "Defend" ability on your vehicle bar.
|tip Before beginning combat, having 3 stacks of this buff is essential.
|only if haveq(13777) or completedq(13777)
step
Talk to the riders on mounts of other Horde races
Tell them _"I am ready to fight!"_
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to remove their defenses, then use the "Charge" ability to deal damage.
|tip "Thrust" is useful in melee range, but make sure your shield is stacked up before using it.
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range. Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13777/1 |goto 75.36,26.03
|only if haveq(13777) or completedq(13777)
step
Dismount the Stabled Thunder Bluff Kodo |outvehicle |q 13777
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13777) or completedq(13777)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
|only if haveq(13777) or completedq(13777)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
accept Get Kraken!##14108 |goto 69.51,23.09 |only if questpossible |or
accept The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if questpossible |or
Accept Silverdawn's Daily Quest |complete false |goto 69.51,23.09 |or |only if not completedq(14108,14107,13728)
Accept Silverdawn's Daily Quest |complete true |goto 69.51,23.09 |or |only if completedq(14108,14107,13728)
|tip You will only be able to accept one quest each day.
|only if achieved(2816)
step
talk High Crusader Adelard##34882
|tip Inside the building.
accept Deathspeaker Kharos##14105 |goto 69.48,23.13 |only if questpossible |or
accept Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if questpossible |or
accept Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if questpossible |or
accept Ornolf The Scarred##14104 |goto 69.48,23.13 |only if questpossible |or
Accept Adelard's Daily Quest |complete false |goto 69.48,23.13 |or |only if not completedq(14105,14101,14102,14104,13728)
Accept Adelard's Daily Quest |complete true |goto 69.48,23.13 |or |only if completedq(14105,14101,14102,14104,13728)
|tip You will only be able to accept one quest each day.
|only if achieved(2816)
step
talk Stabled Argent Hippogryph##35117
Choose _Mount the Hippogryph and prepare for battle!_
Mount the Stabled Argent Hippogryph |ontaxi |goto Icecrown/0 69.78,22.33 |q 14108
|only if haveq(14108) or completedq(14108)
stickystart "Kill_6_Kvaldir_Deepcallers"
step
use the Flaming Spears##46954
|tip Use them on the North Sea Kraken below.
|tip If you manage to kill it, you will get an additional daily quest to turn in.
Hurl Spears at the North Sea Kraken #8# Times |q 14108/1 |goto Hrothgar's Landing/0 51.29,51.04
You can also find it at [43.76,53.12]
|only if haveq(14108) or completedq(14108)
step
label "Kill_6_Kvaldir_Deepcallers"
use the Flaming Spears##46954
|tip Use them on Kvaldir Deepcallers below.
kill 6 Kvaldir Deepcaller##35092 |q 14108/2 |goto 46.15,48.96
|only if haveq(14108) or completedq(14108)
step
Watch the dialogue
|tip You will eventually start flying back to the Argent Tournament Grounds.
Return to the Argent Tournament Grounds |offtaxi |goto Icecrown/0 69.87,22.17
|only if haveq(14108) or completedq(14108)
step
use the Mistcaller's Charm##47009
|tip Inside the cave next to the blue floating crystal.
kill Mistcaller Yngvar##34965 |q 14102/1 |goto Hrothgar's Landing/0 43.92,24.35
|only if haveq(14102) or completedq(14102)
step
use the Kvaldir War Horn##47006
|tip Use it next to the fire.
|tip Drottinn will float down and attack.
kill Drottinn Hrothgar##34980 |q 14101/1 |goto 50.65,15.41
|only if haveq(14101) or completedq(14101)
step
use the Captured Kvaldir Banner##47029
kill Ornolf the Scarred##35012 |q 14104/1 |goto 58.68,31.42
|only if haveq(14104) or completedq(14104)
step
kill Deathspeaker Kharos##34808 |q 14105/1 |goto Icecrown/0 64.23,21.43
|tip He's standing in a small pit area.
|only if haveq(14105) or completedq(14105)
step
click Discarded Soul Crystal##195344+
|tip They look like glowing crystals on the ground around this area.
collect Discarded Soul Crystal##47035 |n
|tip One crystial is required for each blessing.
use Light-Blessed Relic##47033
|tip Use it on Fallen Hero's Spirits.
|tip They are neutral NPCs that walk around this area.
Bless #6# Fallen Hero's Spirits |q 14107/1 |goto 49.62,39.93
|only if haveq(14107) or completedq(14107)
step
kill 10 Converted Hero##32255 |q 13776/1 |goto 44.62,52.62
|only if haveq(13776) or completedq(13776)
step
Equip the Horde Lance |equipped Horde Lance##46070 |goto Icecrown/0 48.87,71.41 |q 13858
|only if haveq(13858) or completedq(13858)
step
clicknpc Stabled Campaign Warhorse##34125
Mount the Stabled Campaign Warhorse |invehicle |goto 48.87,71.41 |q 13858
|only if haveq(13858) or completedq(13858)
stickystart "Kill_10_Bonegard_Scouts"
stickystart "Kill_3_Bonegard_Lieutenants"
step
kill 15 Boneguard Footman##33438 |q 13858/1 |goto 50.23,74.13
|tip Running over these with your warhorse will kill them.
|only if haveq(13858) or completedq(13858)
step
label "Kill_10_Bonegard_Scouts"
kill 10 Boneguard Scout##33550 |q 13858/2 |goto 50.23,74.13
|tip They fly around this area.
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to attack them in the air.
|only if haveq(13858) or completedq(13858)
step
label "Kill_3_Bonegard_Lieutenants"
kill 3 Boneguard Lieutenant##33429 |q 13858/3 |goto 50.61,76.93
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to remove their defenses, then use the "Charge" ability to deal damage.
|tip "Thrust" is useful in melee range, but make sure your shield is stacked up before using it.
|only if haveq(13858) or completedq(13858)
step
Dismount the Stabled Campaign Warhorse |outvehicle |q 13858
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13858) or completedq(13858)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
|only if haveq(13858) or completedq(13858)
step
click Winter Hyacinth##194213+
|tip They look like purple and pink flowers on the ground around this area.
collect 4 Winter Hyacinth##45000 |q 13774 |goto 70.41,74.55
|only if haveq(13774) or completedq(13774)
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13775 |goto Crystalsong Forest/0 55.10,74.90
|only if haveq(13775) or completedq(13775)
step
use the Winter Hyacinth##45000
|tip Use them in the water.
Watch the dialogue
click the Blade of Drak'Mar##194238
|tip It will spawn after a brief dialogue.
collect Blade of Drak'Mar##44978 |q 13774/1 |goto Dragonblight/0 93.18,25.99
|only if haveq(13774) or completedq(13774)
step
label "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
use the Warts-B-Gone Lip Balm##44986
Gain the "Warts-B-Gone Lip Balm" Buff |complete hasbuff("spell:62574") or readyq(13773) |goto Grizzly Hills/0 61.18,49.57 |q 13773
|only if haveq(13773) or completedq(13773)
step
Kiss Lake Frogs |script DoEmote("KISS")
|tip Target Lake Frogs and perform the Kiss emote.
|tip Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake.
talk Maiden of Ashwood Lake##33220
Ask her her _"Glad to help, my lady. I'm told you were once the guardian of a fabled sword. Do you know where I might find it?"_
collect Ashwood Brand##44981 |q 13773/1 |goto Grizzly Hills/0 61.18,49.57 |or
'|complete not hasbuff("spell:62574") and not (readyq(13773) or completedq(13773)) |or |next "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
|only if haveq(13773) or completedq(13773)
step
use the Everburning Ember##45005
|tip Use it on the Maiden of Winter's Breath.
collect Winter's Edge##45003 |q 13775/1 |goto Howling Fjord/0 42.18,19.66
|only if haveq(13775) or completedq(13775)
stickystart "Collect_25_Valiant's Seals"
step
talk Runok Wildmane##33403
|tip Inside the building.
turnin A Blade Fit For A Champion##13773 |goto Icecrown/0 76.20,24.63 |only if haveq(13773) or completedq(13773)
turnin A Worthy Weapon##13774 |goto 76.20,24.63 |only if haveq(13774) or completedq(13774)
turnin The Edge Of Winter##13775 |goto 76.20,24.63 |only if haveq(13775) or completedq(13775)
|only if haveq(13773,13774,13775) or completedq(13773,13774,13775)
step
talk Dern Ragetotem##33539
|tip Inside the building.
turnin A Valiant's Field Training##13776 |goto 76.26,24.66
|only if haveq(13776) or completedq(13776)
step
talk Anka Clawhoof##33549
|tip Inside the building.
turnin The Grand Melee##13777 |goto 76.14,24.63 |only if haveq(13777) or completedq(13777)
turnin At The Enemy's Gates##13858 |goto 76.14,24.63 |only if haveq(13858) or completedq(13858)
|only if haveq(13777,13858) or completedq(13777,13858)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
turnin Get Kraken!##14108 |goto 69.51,23.09 |only if haveq(14108) or completedq(14108)
turnin The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if haveq(14107) or completedq(14107)
turnin Identifying the Remains##14095 |goto 69.51,23.09 |only if haveq(14095) or completedq(14095)
|only if haveq(14108,14107,14095) or completedq(14108,14107,14095)
step
talk High Crusader Adelard##34882
|tip Inside the building.
turnin Deathspeaker Kharos##14105 |goto 69.48,23.13 |only if haveq(14105) or completedq(14105)
turnin Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if haveq(14101) or completedq(14101)
turnin Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if haveq(14102) or completedq(14102)
turnin Ornolf The Scarred##14104 |goto 69.48,23.13 |only if haveq(14104) or completedq(14104)
|only if haveq(14105,14101,14102,14104) or completedq(14105,14101,14102,14104)
step
You have completed all available Argent Tournament Valliant dailies
|tip This guide will reset when more become available.
'|complete not completedq(13773,13774,13775,13776,13777,13858,14108,14107,14105,14101,14102,14104) and itemcount(44987) < 25 and not completedq(13720) |next "Accept_Valiant_Dailies" |or
'|complete completedq(13720) or itemcount(44987) >= 25 |or
step
label "Collect_25_Valiant's Seals"
collect 25 Valiant's Seal##44987 |q 13720/1
|tip Complete Argent Tournament daily quests to earn these each day.
step
talk Runok Wildmane##33403
|tip Inside the building.
turnin The Valiant's Charge##13720 |goto 76.20,24.63
accept The Valiant's Challenge##13728 |goto 76.20,24.63
step
Equip the Horde Lance |equipped Horde Lance##46070 |q 13728
step
clicknpc Stabled Thunder Bluff Kodo##33792
Mount the Stabled Thunder Bluff Kodo |invehicle |q 13728 |goto 75.53,24.26
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 spell:62552 |q 13728 |goto 68.60,20.99
|tip Use the "Defend" ability on your vehicle bar.
|tip Before beginning combat, having 3 stacks of this buff is essential.
step
talk Squire Danny##33518
Tell him _"I am ready to fight!"_
|tip Before beginning combat, having 3 stacks of the "Defend" buff is essential.
kill Argent Champion##33707
|tip It will ride out to you.
|tip Maintain 3 stacks of the "Defend" buff at all times.
|tip Use "Shield-Breaker" until the Champion has no shields left, then use the "Charge" ability.
|tip Repeat this process until it is defeated.
Defeat the Argent Champion |q 13728/1 |goto 68.60,20.99
step
Dismount the Stabled Thunder Bluff Kodo |outvehicle |q 13728
|tip Click the "Exit" button on your vehicle bar.
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
step
talk Runok Wildmane##33403
|tip Inside the building.
turnin The Valiant's Challenge##13728 |goto 76.20,24.63
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Argent Tournament Grounds\\Champion of Undercity",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing Valiant Rank dailies in order to achieve Argent Tournament Grounds Champion rank with Undercity.",
condition_end=function() return completedq(13729) end,
},[[
step
talk Deathstalker Visceri##33373
|tip Inside the building.
accept Valiant Of Undercity##13710 |goto Icecrown/0 76.53,24.21
step
talk Deathstalker Visceri##33373
|tip Inside the building.
turnin Valiant Of Undercity##13710 |goto 76.53,24.21
accept The Valiant's Charge##13721 |goto 76.53,24.21
stickystart "Collect_25_Valiant's Seals"
step
label "Accept_Valiant_Dailies"
talk Deathstalker Visceri##33373
|tip Inside the building.
accept A Blade Fit For A Champion##13778 |goto 76.53,24.21 |only if questpossible |or
accept A Worthy Weapon##13779 |goto 76.53,24.21 |only if questpossible |or
accept The Edge Of Winter##13780 |goto 76.53,24.21 |only if questpossible |or
Accept Visceri's Daily Quest |complete false |goto 76.53,24.21 |or |only if not completedq(13778,13779,13780,13729)
Accept Visceri's Daily Quest |complete true |goto 76.53,24.21 |or |only if completedq(13778,13779,13780,13729)
|tip You will only be able to accept one quest each day.
step
talk Sarah Chalke##33541
|tip Inside the building.
accept A Valiant's Field Training##13781 |goto 76.56,24.11 |only if not completedq(13781,13729)
accept A Valiant's Field Training##13781 |complete true |goto 76.56,24.11 |only if completedq(13781,13729)
step
talk Handler Dretch##33547
|tip Inside the building.
accept The Grand Melee##13782 |goto 76.55,24.33 |only if not completedq(13782,13860,13729)
accept At The Enemy's Gates##13860 |goto 76.55,24.33 |only if not completedq(13782,13860,13729)
accept At The Enemy's Gates##13860 |complete true |goto 76.55,24.33 |only if completedq(13782,13860,13729)
stickystop "Collect_25_Valiant's Seals"
step
Equip the Horde Lance |equipped Horde Lance##46070 |q 13782
|only if haveq(13782) or completedq(13782)
step
clicknpc Stabled Forsaken Warhorse##33798
Mount the Stabled Forsaken Warhorse |invehicle |q 13782 |goto 75.56,23.87
|only if haveq(13782) or completedq(13782)
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 spell:62552 |goto 75.36,26.03 |q 13782
|tip Use the "Defend" ability on your vehicle bar.
|tip Before beginning combat, having 3 stacks of this buff is essential.
|only if haveq(13782) or completedq(13782)
step
Talk to the riders on mounts of other Horde races
Tell them _"I am ready to fight!"_
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to remove their defenses, then use the "Charge" ability to deal damage.
|tip "Thrust" is useful in melee range, but make sure your shield is stacked up before using it.
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range. Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13782/1 |goto 75.36,26.03
|only if haveq(13782) or completedq(13782)
step
Dismount the Stabled Forsaken Warhorse |outvehicle |q 13782
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13782) or completedq(13782)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
|only if haveq(13782) or completedq(13782)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
accept Get Kraken!##14108 |goto 69.51,23.09 |only if questpossible |or
accept The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if questpossible |or
Accept Silverdawn's Daily Quest |complete false |goto 69.51,23.09 |or |only if not completedq(14108,14107,13729)
Accept Silverdawn's Daily Quest |complete true |goto 69.51,23.09 |or |only if completedq(14108,14107,13729)
|tip You will only be able to accept one quest each day.
|only if achieved(2816)
step
talk High Crusader Adelard##34882
|tip Inside the building.
accept Deathspeaker Kharos##14105 |goto 69.48,23.13 |only if questpossible |or
accept Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if questpossible |or
accept Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if questpossible |or
accept Ornolf The Scarred##14104 |goto 69.48,23.13 |only if questpossible |or
Accept Adelard's Daily Quest |complete false |goto 69.48,23.13 |or |only if not completedq(14105,14101,14102,14104,13729)
Accept Adelard's Daily Quest |complete true |goto 69.48,23.13 |or |only if completedq(14105,14101,14102,14104,13729)
|tip You will only be able to accept one quest each day.
|only if achieved(2816)
step
talk Stabled Argent Hippogryph##35117
Choose _Mount the Hippogryph and prepare for battle!_
Mount the Stabled Argent Hippogryph |ontaxi |goto Icecrown/0 69.78,22.33 |q 14108
|only if haveq(14108) or completedq(14108)
stickystart "Kill_6_Kvaldir_Deepcallers"
step
use the Flaming Spears##46954
|tip Use them on the North Sea Kraken below.
|tip If you manage to kill it, you will get an additional daily quest to turn in.
Hurl Spears at the North Sea Kraken #8# Times |q 14108/1 |goto Hrothgar's Landing/0 51.29,51.04
You can also find it at [43.76,53.12]
|only if haveq(14108) or completedq(14108)
step
label "Kill_6_Kvaldir_Deepcallers"
use the Flaming Spears##46954
|tip Use them on Kvaldir Deepcallers below.
kill 6 Kvaldir Deepcaller##35092 |q 14108/2 |goto 46.15,48.96
|only if haveq(14108) or completedq(14108)
step
Watch the dialogue
|tip You will eventually start flying back to the Argent Tournament Grounds.
Return to the Argent Tournament Grounds |offtaxi |goto Icecrown/0 69.87,22.17
|only if haveq(14108) or completedq(14108)
step
use the Mistcaller's Charm##47009
|tip Inside the cave next to the blue floating crystal.
kill Mistcaller Yngvar##34965 |q 14102/1 |goto Hrothgar's Landing/0 43.92,24.35
|only if haveq(14102) or completedq(14102)
step
use the Kvaldir War Horn##47006
|tip Use it next to the fire.
|tip Drottinn will float down and attack.
kill Drottinn Hrothgar##34980 |q 14101/1 |goto 50.65,15.41
|only if haveq(14101) or completedq(14101)
step
use the Captured Kvaldir Banner##47029
kill Ornolf the Scarred##35012 |q 14104/1 |goto 58.68,31.42
|only if haveq(14104) or completedq(14104)
step
kill Deathspeaker Kharos##34808 |q 14105/1 |goto Icecrown/0 64.23,21.43
|tip He's standing in a small pit area.
|only if haveq(14105) or completedq(14105)
step
click Discarded Soul Crystal##195344+
|tip They look like glowing crystals on the ground around this area.
collect Discarded Soul Crystal##47035 |n
|tip One crystial is required for each blessing.
use Light-Blessed Relic##47033
|tip Use it on Fallen Hero's Spirits.
|tip They are neutral NPCs that walk around this area.
Bless #6# Fallen Hero's Spirits |q 14107/1 |goto 49.62,39.93
|only if haveq(14107) or completedq(14107)
step
kill 10 Converted Hero##32255 |q 13781/1 |goto 44.62,52.62
|only if haveq(13781) or completedq(13781)
step
Equip the Horde Lance |equipped Horde Lance##46070 |goto Icecrown/0 48.87,71.41 |q 13860
|only if haveq(13860) or completedq(13860)
step
clicknpc Stabled Campaign Warhorse##34125
Mount the Stabled Campaign Warhorse |invehicle |goto 48.87,71.41 |q 13860
|only if haveq(13860) or completedq(13860)
stickystart "Kill_10_Bonegard_Scouts"
stickystart "Kill_3_Bonegard_Lieutenants"
step
kill 15 Boneguard Footman##33438 |q 13860/1 |goto 50.23,74.13
|tip Running over these with your warhorse will kill them.
|only if haveq(13860) or completedq(13860)
step
label "Kill_10_Bonegard_Scouts"
kill 10 Boneguard Scout##33550 |q 13860/2 |goto 50.23,74.13
|tip They fly around this area.
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to attack them in the air.
|only if haveq(13860) or completedq(13860)
step
label "Kill_3_Bonegard_Lieutenants"
kill 3 Boneguard Lieutenant##33429 |q 13860/3 |goto 50.61,76.93
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to remove their defenses, then use the "Charge" ability to deal damage.
|tip "Thrust" is useful in melee range, but make sure your shield is stacked up before using it.
|only if haveq(13860) or completedq(13860)
step
Dismount the Stabled Campaign Warhorse |outvehicle |q 13860
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13860) or completedq(13860)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
|only if haveq(13860) or completedq(13860)
step
click Winter Hyacinth##194213+
|tip They look like purple and pink flowers on the ground around this area.
collect 4 Winter Hyacinth##45000 |q 13779 |goto 70.41,74.55
|only if haveq(13779) or completedq(13779)
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13780 |goto Crystalsong Forest/0 55.10,74.90
|only if haveq(13780) or completedq(13780)
step
use the Winter Hyacinth##45000
|tip Use them in the water.
Watch the dialogue
click the Blade of Drak'Mar##194238
|tip It will spawn after a brief dialogue.
collect Blade of Drak'Mar##44978 |q 13779/1 |goto Dragonblight/0 93.18,25.99
|only if haveq(13779) or completedq(13779)
step
label "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
use the Warts-B-Gone Lip Balm##44986
Gain the "Warts-B-Gone Lip Balm" Buff |complete hasbuff("spell:62574") or readyq(13778) |goto Grizzly Hills/0 61.18,49.57 |q 13778
|only if haveq(13778) or completedq(13778)
step
Kiss Lake Frogs |script DoEmote("KISS")
|tip Target Lake Frogs and perform the Kiss emote.
|tip Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake.
talk Maiden of Ashwood Lake##33220
Ask her her _"Glad to help, my lady. I'm told you were once the guardian of a fabled sword. Do you know where I might find it?"_
collect Ashwood Brand##44981 |q 13778/1 |goto Grizzly Hills/0 61.18,49.57 |or
'|complete not hasbuff("spell:62574") and not (readyq(13778) or completedq(13778)) |or |next "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
|only if haveq(13778) or completedq(13778)
step
use the Everburning Ember##45005
|tip Use it on the Maiden of Winter's Breath.
collect Winter's Edge##45003 |q 13780/1 |goto Howling Fjord/0 42.18,19.66
|only if haveq(13780) or completedq(13780)
stickystart "Collect_25_Valiant's Seals"
step
talk Deathstalker Visceri##33373
|tip Inside the building.
turnin A Blade Fit For A Champion##13778 Icecrown/0 |goto 76.53,24.21 |only if haveq(13778) or completedq(13778)
turnin A Worthy Weapon##13779 |goto 76.53,24.21 |only if haveq(13779) or completedq(13779)
turnin The Edge Of Winter##13780 |goto 76.53,24.21 |only if haveq(13780) or completedq(13780)
|only if haveq(13778,13779,13780) or completedq(13778,13779,13780)
step
talk Sarah Chalke##33541
|tip Inside the building.
turnin A Valiant's Field Training##13781 |goto 76.56,24.11
|only if haveq(13781) or completedq(13781)
step
talk Handler Dretch##33547
|tip Inside the building.
turnin The Grand Melee##13782 |goto 76.55,24.33 |only if haveq(13782) or completedq(13782)
turnin At The Enemy's Gates##13860 |goto 76.55,24.33 |only if haveq(13860) or completedq(13860)
|only if haveq(13782,13860) or completedq(13782,13860)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
turnin Get Kraken!##14108 |goto 69.51,23.09 |only if haveq(14108) or completedq(14108)
turnin The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if haveq(14107) or completedq(14107)
turnin Identifying the Remains##14095 |goto 69.51,23.09 |only if haveq(14095) or completedq(14095)
|only if haveq(14108,14107,14095) or completedq(14108,14107,14095)
step
talk High Crusader Adelard##34882
|tip Inside the building.
turnin Deathspeaker Kharos##14105 |goto 69.48,23.13 |only if haveq(14105) or completedq(14105)
turnin Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if haveq(14101) or completedq(14101)
turnin Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if haveq(14102) or completedq(14102)
turnin Ornolf The Scarred##14104 |goto 69.48,23.13 |only if haveq(14104) or completedq(14104)
|only if haveq(14105,14101,14102,14104) or completedq(14105,14101,14102,14104)
step
You have completed all available Argent Tournament Valliant dailies
|tip This guide will reset when more become available.
'|complete not completedq(13778,13779,13780,13781,13782,13860,14108,14107,14105,14101,14102,14104) and itemcount(44987) < 25 and not completedq(13721) |next "Accept_Valiant_Dailies" |or
'|complete completedq(13721) or itemcount(44987) >= 25 |or
step
label "Collect_25_Valiant's Seals"
collect 25 Valiant's Seal##44987 |q 13721/1
|tip Complete Argent Tournament daily quests to earn these each day.
step
talk Deathstalker Visceri##33373
|tip Inside the building.
turnin The Valiant's Charge##13721 |goto 76.53,24.21
accept The Valiant's Challenge##13729 |goto 76.53,24.21
step
Equip the Horde Lance |equipped Horde Lance##46070 |q 13729
step
clicknpc Stabled Forsaken Warhorse##33798
Mount the Stabled Forsaken Warhorse |invehicle |q 13729 |goto 72.09,22.44
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 spell:62552 |q 13729 |goto 68.60,20.99
|tip Use the "Defend" ability on your vehicle bar.
|tip Before beginning combat, having 3 stacks of this buff is essential.
step
talk Squire Danny##33518
Tell him _"I am ready to fight!"_
|tip Before beginning combat, having 3 stacks of the "Defend" buff is essential.
kill Argent Champion##33707
|tip It will ride out to you.
|tip Maintain 3 stacks of the "Defend" buff at all times.
|tip Use "Shield-Breaker" until the Champion has no shields left, then use the "Charge" ability.
|tip Repeat this process until it is defeated.
Defeat the Argent Champion |q 13729/1 |goto 68.60,20.99
step
Dismount the Stabled Forsaken Warhorse |outvehicle |q 13729
|tip Click the "Exit" button on your vehicle bar.
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
step
talk Deathstalker Visceri##33373
|tip Inside the building.
turnin The Valiant's Challenge##13729 |goto 76.53,24.21
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Argent Tournament Grounds\\Black Knight Questline",{
author="support@zygorguides.com",
description="This questline requires the rank of champion to finish and unlocks a new group daily quest for the Argent Tournament Grounds.",
condition_end=function() return completedq(14017) end,
},[[
step
talk Crusader Rhydalla##33417
|tip Inside the building.
accept The Black Knight of Silverpine?##13634 |goto Icecrown/0 69.43,23.02
step
talk Jarin Dawnglow##33971
|tip Inside the building.
home Sunreaver Pavilion |goto 76.10,23.96
step
click Dusty Journal##194340
|tip Inside the building.
collect Dusty Journal##45058 |q 13634/1 |goto Silverpine Forest/0 53.2,28.1
step
talk Crusader Rhydalla##33417
|tip Inside the building.
turnin The Black Knight of Silverpine?##13634 |goto Icecrown/0 69.43,23.02
accept The Seer's Crystal##13641 |goto 69.43,23.02
step
kill Unbound Seer##33422+
collect Seer's Crystal##45064 |q 13641/1 |goto Crystalsong Forest/0 46.80,40.41
step
talk Crusader Rhydalla##33417
|tip Inside the building.
turnin The Seer's Crystal##13641 |goto Icecrown/0 69.43,23.02
accept The Stories Dead Men Tell##13643 |goto 69.43,23.02
step
click Sir Wendell's Grave##194537
Investigate Sir Wendell Balfour's Death |q 13643/1 |goto 79.37,23.09
step
click Lorien's Grave##194539
Investigate Lorien Sunblaze's Death |q 13643/2 |goto 79.63,23.58
step
click Connall's Grave##194538
Investigate Connall Irongrip's Death |q 13643/3 |goto 79.64,22.85
step
talk Crusader Rhydalla##33417
|tip Inside the building.
turnin The Stories Dead Men Tell##13643 |goto 69.43,23.02
accept There's Something About the Squire##13654 |goto 69.43,23.02
step
kill Skeletal Woodcutter##33499+
collect 1 Large Femur##45080 |q 13654 |goto Crystalsong Forest/0 39.67,59.71
step
use the Large Femur##45080
|tip Use it on Maloric while standing behind him.
|tip Loot him after he is incapacitated.
collect Murderer's Toolkit##45082 |q 13654/1 |goto 38.28,59.44
step
talk Crusader Rhydalla##33417
|tip Inside the building.
turnin There's Something About the Squire##13654 |goto Icecrown/0 69.43,23.02
accept The Black Knight's Orders##13663 |goto 69.43,23.02
step
use the Enchanted Bridle##45083
Take the Black Knight's Gryphon |invehicle |goto 77.77,21.61 |q 13663
step
Watch the dialogue
Arrive on the Island |q 13663/1 |goto 52.95,9.00
step
click Stolen Tournament Invitation##194423
|tip Inside the building.
collect Stolen Tournament Invitation##45121 |q 13663/2 |goto 54.07,8.65
step
click Black Knight's Orders##194424
|tip Inside the building.
collect Black Knight's Orders##45122 |q 13663/3 |goto 54.11,8.63
step
talk Crusader Rhydalla##33417
|tip Inside the building.
turnin The Black Knight's Orders##13663 |goto 69.43,23.02
step
Become an Argent Champion |complete completedq(13740,13736,13738,13737,13739)
|tip Complete the "A Champion Rises" quest.
|tip Work your way through Aspirant and Valliant guides until you reach Champion rank.
step
talk Crusader Rhydalla##33417
|tip Inside the building.
accept The Black Knight's Fall##13664 |goto 69.43,23.02
step
Equip the Horde Lance |equipped Horde Lance##46070 |q 13664
step
clicknpc Stabled Argent Warhorse##33870
Mount the Stabled Argent Warhorse |invehicle |q 13664 |goto 72.28,22.56
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 spell:62552 |goto 71.35,23.14 |q 13664
|tip Use the "Defend" ability on your vehicle bar.
|tip Before beginning combat, having 3 stacks of this buff is essential.
step
talk Squire Cavin##33522
Choose _Ask Cavin to summon the Black Knight._
Watch the dialogue
kill The Black Knight##33785 |q 13664/1 |goto 71.35,23.14
|tip Maintain 3 stacks of the "Defend" buff at all times.
|tip Use "Shield-Breaker" until The Black Knight has no shields left, then use the "Charge" ability.
|tip Repeat this process until he dismounts.
|tip You will both dismount where you can finish him off.
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
step
talk Crusader Rhydalla##33417
|tip Inside the building.
turnin The Black Knight's Fall##13664 |goto 69.43,23.02
accept The Black Knight's Curse##14016 |goto 69.43,23.02
step
kill Cult Assassin##35127
|tip You must stay near the tombstone for it to complete
Investigate the Black Knight's Grave |q 14016/1 |goto 79.50,23.27
step
talk Crusader Rhydalla##33417
|tip Inside the building.
turnin The Black Knight's Curse##14016 |goto 69.43,23.02
accept The Black Knight's Fate##14017 |goto 69.43,23.02
step
kill Doctor Kohler##35113
|tip He walks around this area.
collect Doctor Kohler's Orders##47048 |q 14017/1 |goto 61.42,22.57
step
talk Crusader Rhydalla##33417
|tip Inside the building.
turnin The Black Knight's Fate##14017 |goto 69.43,23.02
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Argent Tournament Grounds\\Crusader Dailies",{
author="support@zygorguides.com",
description="\nIn order to be able to complete the quests in this guide section, you must already be Exalted with the Darkspear Trolls, Orgrimmar, Silvermoon City, Thunder Bluff, and Undercity factions. Also, you must have already become a Champion with each of those factions, using the Crusader Title Guide in the Icecrown section of the Dailies guide.",
condition_visible=function() return achieved(2816) end,
},[[
step
talk High Crusader Adelard##34882
|tip Inside the building.
accept Deathspeaker Kharos##14105 |goto Icecrown/0 69.48,23.13 |only if questpossible |or
accept Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if questpossible |or
accept Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if questpossible |or
accept Ornolf The Scarred##14104 |goto 69.48,23.13 |only if questpossible |or
Accept Adelard's Daily Quest |complete false |goto 69.48,23.13 |or |only if not completedq(14105,14101,14102,14104)
Accept Adelard's Daily Quest |complete true |goto 69.48,23.13 |or |only if completedq(14105,14101,14102,14104)
|tip You will only be able to accept one quest each day.
step
talk Crusader Silverdawn##35094
|tip Inside the building.
accept Get Kraken!##14108 |goto 69.51,23.09 |only if questpossible |or
accept The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if questpossible |or
Accept Silverdawn's Daily Quest |complete false |goto 69.51,23.09 |or |only if not completedq(14108,14107)
Accept Silverdawn's Daily Quest |complete true |goto 69.51,23.09 |or |only if completedq(14108,14107)
|tip You will only be able to accept one quest each day.
step
talk Stabled Argent Hippogryph##35117
Choose _Mount the Hippogryph and prepare for battle!_
Mount the Stabled Argent Hippogryph |ontaxi |goto Icecrown/0 69.78,22.33 |q 14108
|only if haveq(14108) or completedq(14108)
stickystart "Kill_6_Kvaldir_Deepcallers"
step
use the Flaming Spears##46954
|tip Use them on the North Sea Kraken below.
|tip If you manage to kill it, you will get an additional daily quest to turn in.
Hurl Spears at the North Sea Kraken #8# Times |q 14108/1 |goto Hrothgar's Landing/0 51.29,51.04
You can also find it at [43.76,53.12]
|only if haveq(14108) or completedq(14108)
step
label "Kill_6_Kvaldir_Deepcallers"
use the Flaming Spears##46954
|tip Use them on Kvaldir Deepcallers below.
kill 6 Kvaldir Deepcaller##35092 |q 14108/2 |goto 46.15,48.96
|only if haveq(14108) or completedq(14108)
step
Watch the dialogue
|tip You will eventually start flying back to the Argent Tournament Grounds.
Return to the Argent Tournament Grounds |offtaxi |goto Icecrown/0 69.87,22.17
|only if haveq(14108) or completedq(14108)
step
use the Mistcaller's Charm##47009
|tip Inside the cave next to the blue floating crystal.
kill Mistcaller Yngvar##34965 |q 14102/1 |goto Hrothgar's Landing/0 43.92,24.35
|only if haveq(14102) or completedq(14102)
step
use the Kvaldir War Horn##47006
|tip Use it next to the fire.
|tip Drottinn will float down and attack.
kill Drottinn Hrothgar##34980 |q 14101/1 |goto 50.65,15.41
|only if haveq(14101) or completedq(14101)
step
use the Captured Kvaldir Banner##47029
kill Ornolf the Scarred##35012 |q 14104/1 |goto 58.68,31.42
|only if haveq(14104) or completedq(14104)
step
kill Deathspeaker Kharos##34808 |q 14105/1 |goto Icecrown/0 64.23,21.43
|tip He's standing in a small pit area.
|only if haveq(14105) or completedq(14105)
step
click Discarded Soul Crystal##195344+
|tip They look like glowing crystals on the ground around this area.
collect Discarded Soul Crystal##47035 |n
|tip One crystial is required for each blessing.
use Light-Blessed Relic##47033
|tip Use it on Fallen Hero's Spirits.
|tip They are neutral NPCs that walk around this area.
Bless #6# Fallen Hero's Spirits |q 14107/1 |goto 49.62,39.93
|only if haveq(14107) or completedq(14107)
step
talk High Crusader Adelard##34882
|tip Inside the building.
turnin Deathspeaker Kharos##14105 |goto 69.48,23.13 |only if haveq(14105) or completedq(14105)
turnin Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if haveq(14101) or completedq(14101)
turnin Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if haveq(14102) or completedq(14102)
turnin Ornolf The Scarred##14104 |goto 69.48,23.13 |only if haveq(14104) or completedq(14104)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
turnin Get Kraken!##14108 |goto 69.51,23.09 |only if haveq(14108) or completedq(14108)
turnin The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if haveq(14107) or completedq(14107)
turnin Identifying the Remains##14095 |goto 69.51,23.09 |only if haveq(14095) or completedq(14095)
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Argent Tournament Grounds\\Champion Rank Dailies",{
author="support@zygorguides.com",
description="\nYou must be a Death Knight to do the quests in this Argent Tournament Grounds guide section. Also, you must have completed the Argent Tournament Grounds Valiant Rank Dailies guide section.",
condition_valid=function() return completedq(13736,13737,13740,13738,13739) end,
condition_valid_msg="You must complete \"The Valiant's Challenge\" quest for your home city and reach Valiant rank with the Argent Tournament Grounds.\n\n"..
"Complete the \"Valiant Rank Dailies\" guide first.",
hideif=function() return not raceclass("DeathKnight") end,
},[[
step
talk Justicar Mariel Trueheart##33817
|tip Inside the building.
accept The Scourgebane##13795 |goto Icecrown/0 69.66,22.86
step
talk Crok Scourgebane##33762
turnin The Scourgebane##13795 |goto 73.80,20.06
step
label "Accept_Champion_Dailies"
Beginning Dailies |complete true
step
talk High Crusader Adelard##34882
|tip Inside the building.
accept Deathspeaker Kharos##14105 |goto Icecrown/0 69.48,23.13 |only if questpossible |or
accept Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if questpossible |or
accept Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if questpossible |or
accept Ornolf The Scarred##14104 |goto 69.48,23.13 |only if questpossible |or
Accept Adelard's Daily Quest |complete false or completedq(14105,14101,14102,14104) |goto 69.48,23.13 |or
|tip You will only be able to accept one quest each day.
|only if achieved(2816)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
accept Get Kraken!##14108 |goto 69.51,23.09 |only if questpossible |or
accept The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if questpossible |or
Accept Silverdawn's Daily Quest |complete false or completedq(14108,14107) |goto 69.51,23.09 |or
|tip You will only be able to accept one quest each day.
step
talk Zor'be the Bloodletter##33769
accept Taking Battle To The Enemy##13813 |goto 73.80,19.46
step
talk Crok Scourgebane##33762
accept Threat From Above##13812 |goto 73.80,20.06 |only if completedq(13664)
accept Battle Before The Citadel##13863 |goto 73.80,20.06
step
talk Illyrie Nightfall##33770
accept Among the Champions##13814 |goto 73.59,20.08
step
talk Squire Artie##34210
|tip Inside the building.
accept Contributin' To The Cause##13846 |goto 69.54,22.38 |noautoaccept |or
|tip This quest will require you to contribute 10 gold to the Argent Crusade's cause.
|tip In return, you will receive 100 reputation.
Click Here to Skip This Quest |confirm |or
'|complete completedq(14074,14152,14080,14077,14096,14076,14090,14112,14105,14101,14102,14104,14108,14107,14095,13790,13789,13682,13861) |or
step
talk Squire Artie##34210
|tip Inside the building.
turnin Contributin' To The Cause##13846 |goto 69.54,22.38
|only if readyq(13846) or completedq(13846)
stickystart "Collect_10_Gold"
step
talk Girana the Blooded##34771
accept A Leg Up##14143 |goto Icecrown/0 76.06,24.09 |only if questpossible |or 2
accept Rescue at Sea##14136 |goto 76.06,24.09 |only if questpossible |or 2
accept Stop The Aggressors##14140 |goto 76.06,24.09 |only if questpossible |or 2
accept The Light's Mercy##14144 |goto 76.06,24.09 |only if questpossible |or 2
accept You've Really Done It This Time, Kul##14142 |goto 76.06,24.09 |only if questpossible |or 2
Accept Girana's Daily Quest |complete false or completedq(14143,14136,14140,14144,14142) |goto 76.06,24.09 |or
|tip You will only be able to accept two quests each day.
step
talk Tylos Dawnrunner##34914
accept Breakfast Of Champions##14092 |goto 76.08,24.04 |only if questpossible |or
accept Gormok Wants His Snobolds##14141 |goto 76.08,24.04 |only if questpossible |or
accept What Do You Feed a Yeti, Anyway?##14145 |goto 76.08,24.04 |only if questpossible |or
Accept Tylos's Daily Quest |complete false or completedq(14092,14141,14145) |goto 76.08,24.04 |or
|tip You will only be able to accept one quest each day.
step
talk Stabled Argent Hippogryph##35117
Choose _Mount the Hippogryph and prepare for battle!_
Mount the Stabled Argent Hippogryph |ontaxi |goto Icecrown/0 69.78,22.33 |q 14108
|only if haveq(14108) or completedq(14108)
stickystart "Kill_6_Kvaldir_Deepcallers"
step
use the Flaming Spears##46954
|tip Use them on the North Sea Kraken below.
|tip If you manage to kill it, you will get an additional daily quest to turn in.
Hurl Spears at the North Sea Kraken #8# Times |q 14108/1 |goto Hrothgar's Landing/0 51.29,51.04
You can also find it at [43.76,53.12]
|only if haveq(14108) or completedq(14108)
step
label "Kill_6_Kvaldir_Deepcallers"
use the Flaming Spears##46954
|tip Use them on Kvaldir Deepcallers below.
kill 6 Kvaldir Deepcaller##35092 |q 14108/2 |goto 46.15,48.96
|only if haveq(14108) or completedq(14108)
step
Watch the dialogue
|tip You will eventually start flying back to the Argent Tournament Grounds.
Return to the Argent Tournament Grounds |offtaxi |goto Icecrown/0 69.87,22.17
|only if haveq(14108) or completedq(14108)
step
Equip the Horde Lance |equipped Horde Lance##46070 |q 13814
|only if haveq(13814) or completedq(13814)
step
clicknpc Stabled Orgrimmar Wolf##33799 |only if Orc or Goblin or Pandaren or Vulpera or MagharOrc
clicknpc Stabled Darkspear Raptor##33796 |only if Troll or ZandalariTroll
clicknpc Stabled Thunder Bluff Kodo##33792 |only if Tauren or HighmountainTauren
clicknpc Stabled Forsaken Warhorse##33798 |only if Undead
clicknpc Stabled Silvermoon Hawkstrider##33791 |only if BloodElf or Nightborne
Mount the Stabled Orgrimmar Wolf |invehicle |q 13814 |goto 72.17,22.54 |only if Orc or Goblin or Pandaren or Vulpera or MagharOrc
Mount the Stabled Darkspear Raptor |invehicle |q 13814 |goto 72.04,22.54 |only if Troll or ZandalariTroll
Mount the Stabled Thunder Bluff Kodo |invehicle |q 13814 |goto 71.86,22.40 |only if Tauren or HighmountainTauren
Mount the Stabled Forsaken Warhorse |invehicle |q 13814 |goto 72.09,22.44 |only if Undead
Mount the Stabled Silvermoon Hawkstrider |invehicle |q 13814 |goto 72.20,22.45 |only if BloodElf or Nightborne
|only if haveq(13814) or completedq(13814)
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 spell:62552 |goto 71.63,23.80 |q 13814
|tip Use the "Defend" ability on your vehicle bar.
|tip Before beginning combat, having 3 stacks of this buff is essential.
|only if haveq(13814) or completedq(13814)
step
Talk to the riders on mounts around this area
Tell them _"I am ready to fight!"_
|tip Maintain 3 stacks of the "Defend" buff at all times.
|tip Use "Charge" immediately to close the distance, then circle around and use "Shield-Breaker."
|tip Repeat this process until it is defeated.
|tip Stay in melee range and spam the "Thrust" ability.
|tip Eventually the Champion rider will try to run away to get into "Charge" range.
|tip When it starts to run away, start spamming your "Charge" ability until you hit it in the back.
|tip When possible, use "Shield-Breaker" as a filler before you close distance.
|tip Repeat this process until the Champion is defeated.
collect 4 Mark of the Champion##23206 |q 13814/1 |goto 71.63,23.80
|only if haveq(13814) or completedq(13814)
step
Dismount |outvehicle |q 13814
|tip Click the "Exit" button to dismount.
|only if haveq(13814) or completedq(13814)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
|only if haveq(13814) or completedq(13814)
step
click Bucket of Fresh Chum##195352+
|tip They look like wooden buckets on the deck of this ship.
collect 6 Fresh Chum##47036 |q 14145 |goto 74.21,9.80
|only if haveq(14145) or completedq(14145)
step
use the Fresh Chum##47036
kill North Sea Shark##35324+
|tip They spawn underwater around this area when you use the Fresh Chum.
collect 3 North Sea Shark Meat##47037 |q 14145/1 |goto 73.90,10.47
|only if haveq(14145) or completedq(14145)
stickystart "Kill_Kvaldir_Harpooner"
step
kill 8 Kvaldir Berserker##34947 |q 14136/1 |goto Hrothgar's Landing/0 43.48,53.80
|tip They attack the deck of the ship in waves.
|only if haveq(14136) or completedq(14136)
step
label "Kill_Kvaldir_Harpooner"
kill 3 Kvaldir Harpooner##34907 |q 14136/2 |goto 43.48,53.80
|tip They attack the deck of the ship in waves.
|only if haveq(14136) or completedq(14136)
step
use the Captured Kvaldir Banner##47029
kill Ornolf the Scarred##35012 |q 14104/1 |goto 58.68,31.42
|only if haveq(14104) or completedq(14104)
stickystart "Slay_10_Kvaldir"
stickystart "Collect_Stolen_Tallstrider_Leg"
step
use the Mistcaller's Charm##47009
|tip Inside the cave next to the blue floating crystal.
kill Mistcaller Yngvar##34965 |q 14102/1 |goto 43.92,24.35
|only if haveq(14102) or completedq(14102)
stickystart "Administer_Last_Rites"
step
use the Kvaldir War Horn##47006
|tip Use it next to the fire.
|tip Drottinn will float down and attack.
kill Drottinn Hrothgar##34980 |q 14101/1 |goto 50.65,15.41
|only if haveq(14101) or completedq(14101)
step
label "Administer_Last_Rites"
use the Confessor's Prayer Book##46870
|tip Use it on slain Tualiq Villagers.
|tip They look like dead walrus men corpses around this area.
Administer #8# Last Rites |q 14144/1 |goto 46.50,32.98
|only if haveq(14144) or completedq(14144)
You can find more around:
[50.80,29.91]
[53.66,27.40]
[55.57,20.15]
step
label "Slay_10_Kvaldir"
Kill Kvaldir enemies around this area
Slay #10# Kvaldir |q 14140/1 |goto 46.50,32.98
You can find more around: |notinsticky
[50.80,29.91]
[53.66,27.40]
[55.57,20.15]
|only if haveq(14140) or completedq(14140)
step
label "Collect_Stolen_Tallstrider_Leg"
click Stolen Tallstrider Leg##195274+
|tip They look like chicken legs laying on objects and on the ground around this area.
Kill Kvaldir enemies around this area
collect 10 Stolen Tallstrider Leg##46859 |q 14143/1 |goto 43.44,29.04
You can find more around: |notinsticky
[50.80,29.91]
[53.66,27.40]
[55.57,20.15]
|only if haveq(14143) or completedq(14143)
stickystart "Rescue_Captive_Aspirants"
stickystart "Rescue_Kul_the_Reckless"
stickystart "Slay_Cult_of_the_Damned_Members"
step
kill Deathspeaker Kharos##34808 |q 14105/1 |goto Icecrown/0 64.23,21.43
|tip He's standing in a small pit area.
|only if haveq(14105) or completedq(14105)
step
label "Rescue_Captive_Aspirants"
Kill Dark enemies around this area
collect 5 Black Cage Key##46895 |n
click Black Cage+
|tip They look like big sqaure cages on the ground around this area.
Rescue #4# Captive Aspirants |q 14142/2 |goto 62.64,20.98
You can find more around:
[61.29,20.41]
[60.00,20.95]
|only if haveq(14142) or completedq(14142)
step
label "Rescue_Kul_the_Reckless"
Kill Dark enemies around this area
collect 1 Black Cage Key##46895 |n
click Black Cage
Rescue Kul the Reckless |q 14142/1 |goto 60.79,23.16
|only if haveq(14142) or completedq(14142)
step
label "Slay_Cult_of_the_Damned_Members"
Kill Dark enemies around this area
Slay #15# Cult of the Damned Members |q 13813/1 |goto 61.85,20.79
|only if haveq(13813) or completedq(13813)
stickystart "Kill_3_Cultist_Bombardiers"
step
kill Chillmaw##33687 |q 13812/1 |goto 43.90,32.60
|tip This is a group quest and will require additional people.
|tip Chillmaw flies around this area.
|tip Pull Chillmaw and start fighting.
|tip Every 25% health, a Cultist Bombardier will assist Chillmaw.
|tip Kill the Cultist Bombardier IMMEDIATELY.
|only if haveq(13812) or completedq(13812)
step
label "Kill_3_Cultist_Bombardiers"
kill 3 Cultist Bombardier##33695 |q 13812/2 |goto 43.90,32.60
|only if haveq(13812) or completedq(13812)
step
click Discarded Soul Crystal##195344+
|tip They look like glowing crystals on the ground around this area.
collect Discarded Soul Crystal##47035 |n
|tip One crystial is required for each blessing.
use Light-Blessed Relic##47033
|tip Use it on Fallen Hero's Spirits.
|tip They are neutral NPCs that walk around this area.
Bless #6# Fallen Hero's Spirits |q 14107/1 |goto 49.62,39.93
|only if haveq(14107) or completedq(14107)
step
Equip the Horde Lance |equipped Horde Lance##46070 |goto Icecrown/0 48.87,71.41 |q 13863
|only if haveq(13863) or completedq(13863)
step
clicknpc Stabled Campaign Warhorse##34125
Mount the Stabled Campaign Warhorse |invehicle |goto 48.87,71.41 |q 13863
|only if haveq(13863) or completedq(13863)
step
kill 3 Boneguard Commander##34127 |q 13863/1 |goto 50.61,76.93
|tip Maintain 3 stacks of the "Defend" buff at all times.
|tip Use "Charge" immediately to close the distance, then circle around and use "Shield-Breaker."
|tip Repeat this process until it is defeated.
|tip Stay in melee range and spam the "Thrust" ability.
|tip Eventually the Commander will try to run away to get into "Charge" range.
|tip When it starts to run away, start spamming your "Charge" ability until you hit it in the back.
|tip When possible, use "Shield-Breaker" as a filler before you close distance.
|tip Repeat this process until the Commander is defeated.
|only if haveq(13863) or completedq(13863)
step
Dismount the Stabled Campaign Warhorse |outvehicle |q 13863
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13863) or completedq(13863)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
|only if haveq(13863) or completedq(13863)
step
use Weighted Net##46885
|tip Use it on Snowblind Followers.
Capture #8# Snowblind Followers |q 14141/1 |goto The Storm Peaks/0 42.83,81.29
|only if haveq(14141) or completedq(14141)
step
use the Earthshaker Drum##46893
|tip Use it next to piles of snow on the ground.
kill Deep Jormungar##34920+
|tip They spawn after using your Earthshaker Drum next to the piles of snow.
collect 4 Jormungar Egg Sac##46889 |q 14092/1 |goto 40.93,52.87
You can find more around:
[43.37,57.33]
[39.23,60.08]
|only if haveq(14092) or completedq(14092)
step
talk Girana the Blooded##34771
turnin A Leg Up##14143 |goto Icecrown/0 76.06,24.09 |only if haveq(14143) or completedq(14143)
turnin Rescue at Sea##14136 |goto 76.06,24.09 |only if haveq(14136) or completedq(14136)
turnin Stop The Aggressors##14140 |goto 76.06,24.09 |only if haveq(14140) or completedq(14140)
turnin The Light's Mercy##14144 |goto 76.06,24.09 |only if haveq(14144) or completedq(14144)
turnin You've Really Done It This Time, Kul##14142 |goto 76.06,24.09 |only if haveq(14142) or completedq(14142)
|only if haveq(14143,14136,14140,14144,14142) or completedq(14143,14136,14140,14144,14142)
step
talk Tylos Dawnrunner##34914
turnin Breakfast Of Champions##14092 |goto 76.08,24.04 |only if haveq(14092) or completedq(14092)
turnin Gormok Wants His Snobolds##14141 |goto 76.08,24.04 |only if haveq(14141) or completedq(14141)
turnin What Do You Feed a Yeti, Anyway?##14145 |goto 76.08,24.04 |only if haveq(14145) or completedq(14145)
|only if haveq(14092,14141,14145) or completedq(14092,14141,14145)
step
talk Zor'be the Bloodletter##33769
turnin Taking Battle To The Enemy##13813 |goto 73.80,19.46
|only if haveq(13813) or completedq(13813)
step
talk Crok Scourgebane##33762
turnin Threat From Above##13812 |goto 73.80,20.06 |only if haveq(13812) or completedq(13812)
turnin Battle Before The Citadel##13863 |goto 73.80,20.06 |only if haveq(13863) or completedq(13863)
|only if haveq(13812,13863) or completedq(13812,13863)
step
talk Illyrie Nightfall##33770
turnin Among the Champions##13814 |goto 73.59,20.08
|only if haveq(13814) or completedq(13814)
step
talk High Crusader Adelard##34882
|tip Inside the building.
turnin Deathspeaker Kharos##14105 |goto 69.48,23.13 |only if haveq(14105) or completedq(14105)
turnin Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if haveq(14101) or completedq(14101)
turnin Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if haveq(14102) or completedq(14102)
turnin Ornolf The Scarred##14104 |goto 69.48,23.13 |only if haveq(14104) or completedq(14104)
|only if haveq(14105,14101,14102,14104) or completedq(14105,14101,14102,14104)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
turnin Get Kraken!##14108 |goto 69.51,23.09 |only if haveq(14108) or completedq(14108)
turnin The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if haveq(14107) or completedq(14107)
turnin Identifying the Remains##14095 |goto 69.51,23.09 |only if haveq(14095) or completedq(14095)
|only if haveq(14108,14107,14095) or completedq(14108,14107,14095)
step
label "Collect_10_Gold"
Collect 10 Gold |condition _G.GetMoney() >= 100000 |q 13846
|only if haveq(13846) or completedq(13846)
step
talk Squire Artie##34210
|tip Inside the building.
turnin Contributin' To The Cause##13846 |goto 69.54,22.38
|only if haveq(13846) or completedq(13846)
step
You have completed all available Argent Tournament Champion dailies
|tip This guide will reset when more become available.
'|complete not completedq(14143,14136,14140,14144,14142,14092,14141,14145,13813,13812,13863,13814,14105,14101,14102,14104,14108,14107,14095) |next "Accept_Champion_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Argent Tournament Grounds\\Champion Rank Dailies",{
author="support@zygorguides.com",
description="\nYou must NOT be a Death Knight to do the quests in this Argent Tournament Grounds guide section. Also, you must have completed the Argent Tournament Grounds Valiant Rank Dailies guide section.",
condition_valid=function() return completedq(13736,13737,13740,13738,13739) end,
condition_valid_msg="You must complete \"The Valiant's Challenge\" quest for your home city and reach Valiant rank with the Argent Tournament Grounds.\n\n"..
"Complete the \"Valiant Rank Dailies\" guide first.",
hideif=function() return raceclass("DeathKnight") end,
},[[
step
talk Justicar Mariel Trueheart##33817
|tip Inside the building.
accept Eadric the Pure##13794 |goto Icecrown/0 69.66,22.86
step
talk Eadric the Pure##33759
|tip Inside the building.
turnin Eadric the Pure##13794 |goto 69.96,23.44
step
label "Accept_Champion_Dailies"
Beginning Dailies |complete true
step
talk High Crusader Adelard##34882
|tip Inside the building.
accept Deathspeaker Kharos##14105 |goto Icecrown/0 69.48,23.13 |only if questpossible |or
accept Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if questpossible |or
accept Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if questpossible |or
accept Ornolf The Scarred##14104 |goto 69.48,23.13 |only if questpossible |or
Accept Adelard's Daily Quest |complete false or completedq(14105,14101,14102,14104) |goto 69.48,23.13 |or
|tip You will only be able to accept one quest each day.
|only if achieved(2816)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
accept Get Kraken!##14108 |goto 69.51,23.09 |only if questpossible |or
accept The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if questpossible |or
Accept Silverdawn's Daily Quest |complete false or completedq(14108,14107) |goto 69.51,23.09 |or
|tip You will only be able to accept one quest each day.
step
talk Luuri##33771
|tip Inside the building.
accept Among the Champions##13811 |goto 69.93,23.33
step
talk Eadric the Pure##33759
|tip Inside the building.
accept Threat From Above##13809 |goto 69.96,23.44 |only if completedq(13664)
accept Battle Before The Citadel##13862 |goto 69.96,23.44
step
talk Cellian Daybreak##33763
|tip Inside the building.
accept Taking Battle To The Enemy##13810 |goto 69.92,23.53
step
talk Squire Artie##34210
|tip Inside the building.
accept Contributin' To The Cause##13846 |goto 69.54,22.38 |noautoaccept |or
|tip This quest will require you to contribute 10 gold to the Argent Crusade's cause.
|tip In return, you will receive 100 reputation.
Click Here to Skip This Quest |confirm |or
'|complete completedq(14074,14152,14080,14077,14096,14076,14090,14112,14105,14101,14102,14104,14108,14107,14095,13790,13789,13682,13861) |or
step
talk Squire Artie##34210
|tip Inside the building.
turnin Contributin' To The Cause##13846 |goto 69.54,22.38
|only if readyq(13846) or completedq(13846)
stickystart "Collect_10_Gold"
step
talk Girana the Blooded##34771
accept A Leg Up##14143 |goto Icecrown/0 76.06,24.09 |only if questpossible |or 2
accept Rescue at Sea##14136 |goto 76.06,24.09 |only if questpossible |or 2
accept Stop The Aggressors##14140 |goto 76.06,24.09 |only if questpossible |or 2
accept The Light's Mercy##14144 |goto 76.06,24.09 |only if questpossible |or 2
accept You've Really Done It This Time, Kul##14142 |goto 76.06,24.09 |only if questpossible |or 2
Accept Girana's Daily Quest |complete false or completedq(14143,14136,14140,14144,14142) |goto 76.06,24.09 |or
|tip You will only be able to accept two quests each day.
step
talk Tylos Dawnrunner##34914
accept Breakfast Of Champions##14092 |goto 76.08,24.04 |only if questpossible |or
accept Gormok Wants His Snobolds##14141 |goto 76.08,24.04 |only if questpossible |or
accept What Do You Feed a Yeti, Anyway?##14145 |goto 76.08,24.04 |only if questpossible |or
Accept Tylos's Daily Quest |complete false or completedq(14092,14141,14145) |goto 76.08,24.04 |or
|tip You will only be able to accept one quest each day.
step
talk Stabled Argent Hippogryph##35117
Choose _Mount the Hippogryph and prepare for battle!_
Mount the Stabled Argent Hippogryph |ontaxi |goto Icecrown/0 69.78,22.33 |q 14108
|only if haveq(14108) or completedq(14108)
stickystart "Kill_6_Kvaldir_Deepcallers"
step
use the Flaming Spears##46954
|tip Use them on the North Sea Kraken below.
|tip If you manage to kill it, you will get an additional daily quest to turn in.
Hurl Spears at the North Sea Kraken #8# Times |q 14108/1 |goto Hrothgar's Landing/0 51.29,51.04
You can also find it at [43.76,53.12]
|only if haveq(14108) or completedq(14108)
step
label "Kill_6_Kvaldir_Deepcallers"
use the Flaming Spears##46954
|tip Use them on Kvaldir Deepcallers below.
kill 6 Kvaldir Deepcaller##35092 |q 14108/2 |goto 46.15,48.96
|only if haveq(14108) or completedq(14108)
step
Watch the dialogue
|tip You will eventually start flying back to the Argent Tournament Grounds.
Return to the Argent Tournament Grounds |offtaxi |goto Icecrown/0 69.87,22.17
|only if haveq(14108) or completedq(14108)
step
Equip the Horde Lance |equipped Horde Lance##46070 |q 13811
|only if haveq(13811) or completedq(13811)
step
clicknpc Stabled Orgrimmar Wolf##33799 |only if Orc or Goblin or Pandaren or Vulpera or MagharOrc
clicknpc Stabled Darkspear Raptor##33796 |only if Troll or ZandalariTroll
clicknpc Stabled Thunder Bluff Kodo##33792 |only if Tauren or HighmountainTauren
clicknpc Stabled Forsaken Warhorse##33798 |only if Undead
clicknpc Stabled Silvermoon Hawkstrider##33791 |only if BloodElf or Nightborne
Mount the Stabled Orgrimmar Wolf |invehicle |q 13811 |goto 72.17,22.54 |only if Orc or Goblin or Pandaren or Vulpera or MagharOrc
Mount the Stabled Darkspear Raptor |invehicle |q 13811 |goto 72.04,22.54 |only if Troll or ZandalariTroll
Mount the Stabled Thunder Bluff Kodo |invehicle |q 13811 |goto 71.86,22.40 |only if Tauren or HighmountainTauren
Mount the Stabled Forsaken Warhorse |invehicle |q 13811 |goto 72.09,22.44 |only if Undead
Mount the Stabled Silvermoon Hawkstrider |invehicle |q 13811 |goto 72.20,22.45 |only if BloodElf or Nightborne
|only if haveq(13811) or completedq(13811)
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 spell:62552 |goto 71.63,23.80 |q 13811
|tip Use the "Defend" ability on your vehicle bar.
|tip Before beginning combat, having 3 stacks of this buff is essential.
|only if haveq(13811) or completedq(13811)
step
Talk to the riders on mounts around this area
Tell them _"I am ready to fight!"_
|tip Maintain 3 stacks of the "Defend" buff at all times.
|tip Use "Charge" immediately to close the distance, then circle around and use "Shield-Breaker."
|tip Repeat this process until it is defeated.
|tip Stay in melee range and spam the "Thrust" ability.
|tip Eventually the Champion rider will try to run away to get into "Charge" range.
|tip When it starts to run away, start spamming your "Charge" ability until you hit it in the back.
|tip When possible, use "Shield-Breaker" as a filler before you close distance.
|tip Repeat this process until the Champion is defeated.
collect 4 Mark of the Champion##23206 |q 13811/1 |goto 71.63,23.80
|only if haveq(13811) or completedq(13811)
step
Dismount |outvehicle |q 13811
|tip Click the "Exit" button to dismount.
|only if haveq(13811) or completedq(13811)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
|only if haveq(13811) or completedq(13811)
step
click Bucket of Fresh Chum##195352+
|tip They look like wooden buckets on the deck of this ship.
collect 6 Fresh Chum##47036 |q 14145 |goto 74.21,9.80
|only if haveq(14145) or completedq(14145)
step
use the Fresh Chum##47036
kill North Sea Shark##35324+
|tip They spawn underwater around this area when you use the Fresh Chum.
collect 3 North Sea Shark Meat##47037 |q 14145/1 |goto 73.90,10.47
|only if haveq(14145) or completedq(14145)
stickystart "Kill_Kvaldir_Harpooner"
step
kill 8 Kvaldir Berserker##34947 |q 14136/1 |goto Hrothgar's Landing/0 43.48,53.80
|tip They attack the deck of the ship in waves.
|only if haveq(14136) or completedq(14136)
step
label "Kill_Kvaldir_Harpooner"
kill 3 Kvaldir Harpooner##34907 |q 14136/2 |goto 43.48,53.80
|tip They attack the deck of the ship in waves.
|only if haveq(14136) or completedq(14136)
step
use the Captured Kvaldir Banner##47029
kill Ornolf the Scarred##35012 |q 14104/1 |goto 58.68,31.42
|only if haveq(14104) or completedq(14104)
stickystart "Slay_10_Kvaldir"
stickystart "Collect_Stolen_Tallstrider_Leg"
step
use the Mistcaller's Charm##47009
|tip Inside the cave next to the blue floating crystal.
kill Mistcaller Yngvar##34965 |q 14102/1 |goto 43.92,24.35
|only if haveq(14102) or completedq(14102)
stickystart "Administer_Last_Rites"
step
use the Kvaldir War Horn##47006
|tip Use it next to the fire.
|tip Drottinn will float down and attack.
kill Drottinn Hrothgar##34980 |q 14101/1 |goto 50.65,15.41
|only if haveq(14101) or completedq(14101)
step
label "Administer_Last_Rites"
use the Confessor's Prayer Book##46870
|tip Use it on slain Tualiq Villagers.
|tip They look like dead walrus men corpses around this area.
Administer #8# Last Rites |q 14144/1 |goto 46.50,32.98
|only if haveq(14144) or completedq(14144)
You can find more around:
[50.80,29.91]
[53.66,27.40]
[55.57,20.15]
step
label "Slay_10_Kvaldir"
Kill Kvaldir enemies around this area
Slay #10# Kvaldir |q 14140/1 |goto 46.50,32.98
You can find more around: |notinsticky
[50.80,29.91]
[53.66,27.40]
[55.57,20.15]
|only if haveq(14140) or completedq(14140)
step
label "Collect_Stolen_Tallstrider_Leg"
click Stolen Tallstrider Leg##195274+
|tip They look like chicken legs laying on objects and on the ground around this area.
Kill Kvaldir enemies around this area
collect 10 Stolen Tallstrider Leg##46859 |q 14143/1 |goto 43.44,29.04
You can find more around: |notinsticky
[50.80,29.91]
[53.66,27.40]
[55.57,20.15]
|only if haveq(14143) or completedq(14143)
stickystart "Rescue_Captive_Aspirants"
stickystart "Rescue_Kul_the_Reckless"
stickystart "Slay_Cult_of_the_Damned_Members"
step
kill Deathspeaker Kharos##34808 |q 14105/1 |goto Icecrown/0 64.23,21.43
|tip He's standing in a small pit area.
|only if haveq(14105) or completedq(14105)
step
label "Rescue_Captive_Aspirants"
Kill Dark enemies around this area
collect 5 Black Cage Key##46895 |n
click Black Cage+
|tip They look like big sqaure cages on the ground around this area.
Rescue #4# Captive Aspirants |q 14142/2 |goto 62.64,20.98
You can find more around:
[61.29,20.41]
[60.00,20.95]
|only if haveq(14142) or completedq(14142)
step
label "Rescue_Kul_the_Reckless"
Kill Dark enemies around this area
collect 1 Black Cage Key##46895 |n
click Black Cage
Rescue Kul the Reckless |q 14142/1 |goto 60.79,23.16
|only if haveq(14142) or completedq(14142)
step
label "Slay_Cult_of_the_Damned_Members"
Kill Dark enemies around this area
Slay #15# Cult of the Damned Members |q 13810/1 |goto 61.85,20.79
|only if haveq(13810) or completedq(13810)
stickystart "Kill_3_Cultist_Bombardiers"
step
kill Chillmaw##33687 |q 13809/1 |goto 43.90,32.60
|tip This is a group quest and will require additional people.
|tip Chillmaw flies around this area.
|tip Pull Chillmaw and start fighting.
|tip Every 25% health, a Cultist Bombardier will assist Chillmaw.
|tip Kill the Cultist Bombardier IMMEDIATELY.
|only if haveq(13809) or completedq(13809)
step
label "Kill_3_Cultist_Bombardiers"
kill 3 Cultist Bombardier##33695 |q 13809/2 |goto 43.90,32.60
|only if haveq(13809) or completedq(13809)
step
click Discarded Soul Crystal##195344+
|tip They look like glowing crystals on the ground around this area.
collect Discarded Soul Crystal##47035 |n
|tip One crystial is required for each blessing.
use Light-Blessed Relic##47033
|tip Use it on Fallen Hero's Spirits.
|tip They are neutral NPCs that walk around this area.
Bless #6# Fallen Hero's Spirits |q 14107/1 |goto 49.62,39.93
|only if haveq(14107) or completedq(14107)
step
Equip the Horde Lance |equipped Horde Lance##46070 |goto Icecrown/0 48.87,71.41 |q 13862
|only if haveq(13862) or completedq(13862)
step
clicknpc Stabled Campaign Warhorse##34125
Mount the Stabled Campaign Warhorse |invehicle |goto 48.87,71.41 |q 13862
|only if haveq(13862) or completedq(13862)
step
kill 3 Boneguard Commander##34127 |q 13862/1 |goto 50.61,76.93
|tip Maintain 3 stacks of the "Defend" buff at all times.
|tip Use "Charge" immediately to close the distance, then circle around and use "Shield-Breaker."
|tip Repeat this process until it is defeated.
|tip Stay in melee range and spam the "Thrust" ability.
|tip Eventually the Commander will try to run away to get into "Charge" range.
|tip When it starts to run away, start spamming your "Charge" ability until you hit it in the back.
|tip When possible, use "Shield-Breaker" as a filler before you close distance.
|tip Repeat this process until the Commander is defeated.
|only if haveq(13862) or completedq(13862)
step
Dismount the Stabled Campaign Warhorse |outvehicle |q 13862
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13862) or completedq(13862)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46070})
|tip Replace the lance with your standard weapon.
|only if haveq(13862) or completedq(13862)
step
use Weighted Net##46885
|tip Use it on Snowblind Followers.
Capture #8# Snowblind Followers |q 14141/1 |goto The Storm Peaks/0 42.83,81.29
|only if haveq(14141) or completedq(14141)
step
use the Earthshaker Drum##46893
|tip Use it next to piles of snow on the ground.
kill Deep Jormungar##34920+
|tip They spawn after using your Earthshaker Drum next to the piles of snow.
collect 4 Jormungar Egg Sac##46889 |q 14092/1 |goto 40.93,52.87
You can find more around:
[43.37,57.33]
[39.23,60.08]
|only if haveq(14092) or completedq(14092)
step
talk Girana the Blooded##34771
turnin A Leg Up##14143 |goto Icecrown/0 76.06,24.09 |only if haveq(14143) or completedq(14143)
turnin Rescue at Sea##14136 |goto 76.06,24.09 |only if haveq(14136) or completedq(14136)
turnin Stop The Aggressors##14140 |goto 76.06,24.09 |only if haveq(14140) or completedq(14140)
turnin The Light's Mercy##14144 |goto 76.06,24.09 |only if haveq(14144) or completedq(14144)
turnin You've Really Done It This Time, Kul##14142 |goto 76.06,24.09 |only if haveq(14142) or completedq(14142)
|only if haveq(14143,14136,14140,14144,14142) or completedq(14143,14136,14140,14144,14142)
step
talk Tylos Dawnrunner##34914
turnin Breakfast Of Champions##14092 |goto 76.08,24.04 |only if haveq(14092) or completedq(14092)
turnin Gormok Wants His Snobolds##14141 |goto 76.08,24.04 |only if haveq(14141) or completedq(14141)
turnin What Do You Feed a Yeti, Anyway?##14145 |goto 76.08,24.04 |only if haveq(14145) or completedq(14145)
|only if haveq(14092,14141,14145) or completedq(14092,14141,14145)
step
talk High Crusader Adelard##34882
|tip Inside the building.
turnin Deathspeaker Kharos##14105 |goto 69.48,23.13 |only if haveq(14105) or completedq(14105)
turnin Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if haveq(14101) or completedq(14101)
turnin Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if haveq(14102) or completedq(14102)
turnin Ornolf The Scarred##14104 |goto 69.48,23.13 |only if haveq(14104) or completedq(14104)
|only if haveq(14105,14101,14102,14104) or completedq(14105,14101,14102,14104)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
turnin Get Kraken!##14108 |goto 69.51,23.09 |only if haveq(14108) or completedq(14108)
turnin The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if haveq(14107) or completedq(14107)
turnin Identifying the Remains##14095 |goto 69.51,23.09 |only if haveq(14095) or completedq(14095)
|only if haveq(14108,14107,14095) or completedq(14108,14107,14095)
step
talk Luuri##33771
|tip Inside the building.
turnin Among the Champions##13811 |goto 69.93,23.33
|only if haveq(13811) or completedq(13811)
step
talk Cellian Daybreak##33763
|tip Inside the building.
turnin Taking Battle To The Enemy##13810 |goto 69.92,23.53
|only if haveq(13810) or completedq(13810)
step
talk Eadric the Pure##33759
|tip Inside the building.
turnin Threat From Above##13809 |goto 69.96,23.44 |only if haveq(13809) or completedq(13809)
turnin Battle Before The Citadel##13862 |goto 69.96,23.44 |only if haveq(13862) or completedq(13862)
|only if haveq(13809,13862) or completedq(13809,13862)
step
label "Collect_10_Gold"
Collect 10 Gold |condition _G.GetMoney() >= 100000 |q 13846
|only if haveq(13846) or completedq(13846)
step
talk Squire Artie##34210
|tip Inside the building.
turnin Contributin' To The Cause##13846 |goto 69.54,22.38
|only if haveq(13846) or completedq(13846)
step
You have completed all available Argent Tournament Champion dailies
|tip This guide will reset when more become available.
'|complete not completedq(14143,14136,14140,14144,14142,14092,14141,14145,14105,14101,14102,14104,14108,14107,14095,13811,13810,13809,13862) |next "Accept_Champion_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\The Oracles/Frenzyheart Dailies\\The Oracles Dailies",{
author="support@zygorguides.com",
description="\nThis guide section contains the pre-quests to unlock the ability to complete daily quests for The Oracles and Frenzyheart Tribe factions in Sholazar Basin.",
},[[
step
talk Tamara Wobblesprocket##28568
accept The Part-time Hunter##12654 |goto Sholazar Basin/0 50.48,62.13
step
kill Pitch##28097
collect Pitch's Remains##38703 |q 12654/1 |goto 50.52,77.24
step
talk Tracker Gekgek##28095
|tip Pitch has to currently be dead for this quest to be offered.
accept Playing Along##12528 |goto 50.54,76.59
step
talk High-Shaman Rakjak##28082
turnin Playing Along##12528 |goto 54.99,69.11
accept The Ape Hunter's Slave##12529 |goto 54.99,69.11
step
_Next to you:_
talk Goregek the Gorilla Hunter##28214
accept Tormenting the Softknuckles##12530 |goto 54.93,69.16
stickystart "Kill_Hardknuckle_Chargers"
step
label "Kill_Hardknuckle_Foragers"
kill 8 Hardknuckle Forager##28098 |q 12529/1 |goto 57.81,72.42
You can find more around [60.65,70.80]
step
use the Softknuckle Poker##38467
|tip Use it on Softknuckles around this area.
|tip They look like small baby gorillas.
|tip A Hardknuckle Matriarch will eventually spawn.
kill 1 Hardknuckle Matriarch##28213 |q 12530/1 |goto 67.58,74.52
step
label "Kill_Hardknuckle_Chargers"
kill 6 Hardknuckle Charger##28096 |q 12529/2 |goto 62.53,71.85
You can find more around [66.56,73.65]
step
talk High-Shaman Rakjak##28082
turnin The Ape Hunter's Slave##12529 |goto 54.99,69.11
turnin Tormenting the Softknuckles##12530 |goto 54.99,69.11
accept The Wasp Hunter's Apprentice##12533 |goto 54.99,69.11
step
talk Elder Harkek##28138
accept The Sapphire Queen##12534 |goto 55.50,69.69
stickystart "Kill_Sapphire_Hive_Wasps"
stickystart "Kill_Sapphire_Hive_Drones"
step
Enter the cave |goto 59.39,79.15 < 10 |walk
kill Sapphire Hive Queen##28087
|tip Inside the cave.
collect Stinger of the Sapphire Queen##38477 |q 12534/1 |goto 57.17,79.18
step
label "Kill_Sapphire_Hive_Wasps"
kill 6 Sapphire Hive Wasp##28086 |q 12533/1 |goto 60.68,78.31
step
label "Kill_Sapphire_Hive_Drones"
kill 9 Sapphire Hive Drone##28085 |q 12533/2 |goto 60.68,78.31
step
talk High-Shaman Rakjak##28082
turnin The Wasp Hunter's Apprentice##12533 |goto 54.99,69.11
turnin The Sapphire Queen##12534 |goto 54.99,69.11
step
talk Elder Harkek##28138
accept Flown the Coop!##12532 |goto 55.50,69.69
step
clicknpc Chicken Escapee##28161+
|tip They run all over the village.
use the Chicken Net##38689
|tip Use it on Chicken Escapees to prevent them from running.
collect 12 Captured Chicken##38483 |q 12532/1 |goto 55.58,70.01
You can find more around [58.11,72.62]
step
talk Elder Harkek##28138
turnin Flown the Coop!##12532 |goto 55.50,69.69
accept The Underground Menace##12531 |goto 55.50,69.69
step
talk High-Shaman Rakjak##28082
accept Mischief in the Making##12535 |goto 54.99,69.11
stickystart "Collect_Skyreach_Crystal_Clusters"
step
kill Serfex the Reaver##28083
collect Claw of Serfex##38473 |q 12531/1 |goto 58.20,83.73
[58.86,85.58]
[51.51,86.49]
[49.77,84.95]
step
label "Collect_Skyreach_Crystal_Clusters"
click Skyreach Crystal Formation##190500+
|tip They look like white crystal cluster on the ground along the river bank.
collect 8 Skyreach Crystal Cluster##38504 |q 12535/1 |goto 54.02,85.01
You can find more around: |notinsticky
[49.88,84.92]
[47.70,82.15]
[60.68,86.00]
step
talk High-Shaman Rakjak##28082
turnin The Underground Menace##12531 |goto 54.99,69.11
turnin Mischief in the Making##12535 |goto 54.99,69.11
accept A Rough Ride##12536 |goto 54.99,69.11
step
talk High-Shaman Rakjak##28082
Tell him _"I need to find Zepik, do you have his hunting horn"_
collect Zepik's Hunting Horn##38512 |goto 54.99,69.11 |q 12538 |future
step
talk Captive Crocolisk##28298
Tell it _"You look safe enough... let's do this."_
Mount the Captive Crocolisk |invehicle |goto 57.29,68.37 |q 12536
step
Watch the dialogue
Travel to Mistwhisper Refuge |q 12536/1 |goto 46.25,39.47
step
use Zepik's Hunting Horn##38512
|tip Use this if Zepik is not standing next to you.
_Next to you:_
talk Zepik the Gorloc Hunter##28668
turnin A Rough Ride##12536 |goto 46.13,39.53
accept Lightning Definitely Strikes Twice##12537 |goto 46.13,39.53
accept The Mist Isn't Listening##12538 |goto 46.13,39.53
stickystart "Slay_Mistwhisper_Gorlocs"
step
use Skyreach Crystal Clusters##38510
|tip Use it next to the tall rectangle stone monument.
click Arranged Crystal Formation
|tip It appears after using the Skyreach Crystal Clusters.
Sabotage the Mistwhisper Weather Shrine |q 12537/1 |goto 45.38,37.23
step
label "Slay_Mistwhisper_Gorlocs"
Kill Mistwhisper enemies around this area
Slay #12# Mistwhisper Gorlocs |q 12538/1 |goto 45.17,36.68
step
use Zepik's Hunting Horn##38512
|tip Use this if Zepik is not standing next to you.
_Next to you:_
talk Zepik the Gorloc Hunter##28216
turnin Lightning Definitely Strikes Twice##12537
turnin The Mist Isn't Listening##12538
accept Hoofing It##12539
step
talk High-Shaman Rakjak##28082
turnin Hoofing It##12539 |goto 54.99,69.11
accept Just Following Orders##12540 |goto 54.99,69.11
step
talk Injured Rainspeaker Oracle##28217
Choose _<Reach down and pull the injured Rainspeaker Oracle to its feet.>_
kill Ravenous Mangal Crocolisk##28325
|tip It will spawn and attack after helping the Oracle.
Locate the Injured Rainspeaker Oracle |q 12540/1 |goto 55.70,64.97
step
talk Injured Rainspeaker Oracle##28217
turnin Just Following Orders##12540
accept Fortunate Misunderstandings##12570
step
talk Injured Rainspeaker Oracle##28217 |goto 55.70,64.97
Tell it _"I am ready to travel to your village now."_
Begin Escorting the Injured Rainspeaker Oracle |goto 55.70,64.97 > 10 |q 12570
|tip Protect it as it returns to Rainspeaker Canopy.
step
Follow the path |goto 53.27,62.34 < 20 |walk
Continue following the path |goto 52.22,58.90 < 20 |walk
Escort the Injured Rainspeaker Oracle to Rainspeaker Canopy |q 12570/1 |goto 53.53,56.80
|tip Stay close and protect it as it returns to Rainspeaker Canopy.
step
talk High-Oracle Soo-say##28027
turnin Fortunate Misunderstandings##12570 |goto 54.59,56.36
accept Make the Bad Snake Go Away##12571 |goto 54.59,56.36
step
talk High-Oracle Soo-say##28027
Tell him _"I need to find Lafoo, do you have his bug bag?"_
collect Lafoo's Bug Bag##38622 |goto 54.59,56.36 |q 12572 |future
step
use Lafoo's Bug Bag##38622
|tip Use this if Lafoo is not standing next to you.
_Next to you:_
talk Lafoo##28120
accept Gods like Shiny Things##12572 |goto 54.59,56.36
stickystart "Collect_Shiny_Treasures"
stickystart "Kill_Emperor_Cobras"
step
kill 1 Venomtip##28358 |q 12571/2 |goto 57.61,52.26
|tip It walks back and forth near the waterfall.
step
label "Collect_Shiny_Treasures"
use Lafoo's Bug Bag##38622
|tip Use this if Lafoo is not standing next to you.
|tip Stand on top of the twinkles of light on the ground all aroud Rainspeaker Canopy.
|tip Lafoo will dig up the treasure.
Click random items that appear on the ground
collect 6 Shiny Treasures##38575 |q 12572/1 |goto 56.93,53.87
You can find more around: |notinsticky
[55.73,50.32]
[51.45,53.03]
[49.57,49.66]
step
label "Kill_Emperor_Cobras"
kill 10 Emperor Cobra##28011 |q 12571/1 |goto 53.69,49.88
step
talk High-Oracle Soo-say##28027
turnin Make the Bad Snake Go Away##12571 |goto 54.59,56.36
turnin Gods like Shiny Things##12572 |goto 54.59,56.36
accept Making Peace##12573 |goto 54.59,56.36
step
talk Shaman Vekjik##28315
Tell him _"Shaman Vekjik, I have spoken with the big-tongues and they desire peace. I have brought this offering on their behalf."_
|tip He will boot you off the cliff to safety in the water.
Extend the Peace Offering to Shaman Vekjik |q 12573/1 |goto 51.30,64.63
step
talk Tamara Wobblesprocket##28568
turnin The Part-time Hunter##12654 |goto 50.48,62.13
step
talk High-Oracle Soo-say##28027
turnin Making Peace##12573 |goto 54.59,56.36
accept Back So Soon?##12574 |goto 54.59,56.36
step
talk Mistcaller Soo-gan##28114
turnin Back So Soon?##12574 |goto 42.15,38.64
accept The Lost Mistwhisper Treasure##12575 |goto 42.15,38.64
accept Forced Hand##12576 |goto 42.15,38.64
stickystart "Kill_Frenzyheart_Spearbearers"
stickystart "Kill_Frenzyheart_Scavengers"
step
Watch the dialogue
|tip He comes walking up on a red proto-drake.
|tip Zeptek the Destroyer will attack you too.
kill 1 Warlord Tartek##28105 |q 12575/1 |goto 41.29,19.94
step
click Mistwhisper Treasure##190578
collect Mistwhisper Treasure##38601 |q 12575/2 |goto 41.69,19.48
step
label "Kill_Frenzyheart_Spearbearers"
kill 8 Frenzyheart Spearbearer##28080 |q 12576/1 |goto 40.74,22.52
You can find more around [42.24,25.42]
step
label "Kill_Frenzyheart_Scavengers"
kill 6 Frenzyheart Scavenger##28081 |q 12576/2 |goto 40.74,22.52
You can find more around [42.24,25.42]
step
talk Mistcaller Soo-gan##28114
turnin The Lost Mistwhisper Treasure##12575 |goto 42.15,38.64
turnin Forced Hand##12576 |goto 42.15,38.64
accept Home Time!##12577 |goto 42.15,38.64
step
talk High-Oracle Soo-say##28027
turnin Home Time!##12577 |goto 54.59,56.36
accept The Angry Gorloc##12578 |goto 54.59,56.36
step
talk High-Oracle Soo-say##28027
Tell him _"I need to find Moddle, do you have his stress ball?"_
collect Moodle's Stress Ball##38624 |goto 54.59,56.36 |q 12578
step
Travel to Mosswalker Village |q 12578/1 |goto 76.11,51.07
step
use Moodle's Stress Ball##38624
|tip Use this if Moodle is not standing next to you.
_Next to you:_
talk Moodle##28122
turnin The Angry Gorloc##12578 |goto 76.11,51.07
accept The Mosswalker Savior##12580 |goto 76.11,51.07
accept Lifeblood of the Mosswalker Shrine##12579 |goto 76.11,51.07
step
talk Mosswalker Victim##28113
Choose _<Check for a pulse...>_
|tip You will only be able to save some of them.
Rescue #6# Mosswalker Victims |q 12580/1 |goto 76.11,51.07
step
use Moodle's Stress Ball##38624
|tip Use this if Moodle is not standing next to you.
_Next to you:_
talk Moodle##28122
turnin The Mosswalker Savior##12580 |goto 76.11,51.07
step
click Lifeblood Shard##190702+
|tip They look like small red crystals on the ground around this area.
collect 10 Lifeblood Shard##39063 |q 12579/1 |goto 68.74,54.53
You can find more around [70.19,59.93]
step
use Moodle's Stress Ball##38624
|tip Use this if Moodle is not standing next to you.
_Next to you:_
talk Moodle##28122
turnin Lifeblood of the Mosswalker Shrine##12579 |goto 54.5,56.6
accept A Hero's Burden##12581 |goto 54.5,56.6
step
Enter the cave |goto 70.91,58.70 < 10 |walk
Follow the path |goto 74.26,57.70 < 15 |walk
kill Artruis the Heartless |q 12581/1 |goto 72.11,57.61
|tip Inside the cave.
|tip Begin by attacking Artruis until he shields himself.
_DO NOT KILL JALOOT_
kill Jaloot##28667
|tip Killing Jaloot will start your path with the Frenzyheart Tribe.
|tip Killing Zepik the Gorloc Hunter will allow you to ally yourself with The Oracles.
|tip Once you kill Zepik the Gorloc Hunter, finish off Artruis.
|tip If you make a mistake, abandon the quest and accept it from Moodle again using his Stress Ball.
step
click Artruis' Phylactery##190777
|tip Inside the cave.
turnin A Hero's Burden##12581 |goto 72.09,57.74
step
talk Jaloot##28667
|tip Inside the cave.
accept Hand of the Oracles##12689 |goto 72.46,57.52
step
talk Jaloot##28667
|tip Inside the cave.
accept Return of the Friendly Dryskin##12695 |goto 72.46,57.52
step
talk High-Oracle Soo-say##28027
turnin Return of the Friendly Dryskin##12695 |goto 54.59,56.36
step
label "Begin_Oracles_Dailies"
talk High-Oracle Soo-say##28027
|tip In the small hut.
accept Appeasing the Great Rain Stone##12704 |goto 54.59,56.36
step
talk High-Oracle Soo-say##28027
Tell him _"I need to find Lafoo, do you have his bug bag?"_
collect 1 Lafoo's Bug Bag##38622 |goto 54.59,56.36 |q 12704
step
talk Oracle Soo-nee##29006
|tip Inside the tree.
accept A Cleansing Song##12735 |goto 53.34,56.45 |only if questpossible |or
accept Song of Fecundity##12737 |goto 53.34,56.45 |only if questpossible |or
accept Song of Reflection##12736 |goto 53.34,56.45 |only if questpossible |or
accept Song of Wind and Water##12726 |goto 53.34,56.45 |only if questpossible |or
Accept Soo-nee's Daily Quest |complete false |goto 53.34,56.45 |or
|tip You will only be able to accept one quest each day.
step
Enter the building |goto 54.00,54.33 < 5 |walk
talk Oracle Soo-dow##29149
|tip Inside the building.
accept Mastery of the Crystals##12761 |goto 54.16,53.77 |only if questpossible |or
accept Power of the Great Ones##12762 |goto 54.16,53.77 |only if questpossible |or
accept Will of the Titans##12705 |goto 54.16,53.77 |only if questpossible |or
Accept Soo-dow's Daily Quest |complete false |goto 54.16,53.77 |or
step
use Dormant Polished Crystal##39747
collect Energized Polished Crystal##39748 |q 12762/2 |goto 65.50,60.23
|only if haveq(12762) or completedq(12762)
step
use Lafoo's Bug Bag##38622
|tip Use this if Lafoo is not standing next to you.
|tip Stand on top of the twinkles of light on the ground all aroud Rainspeaker Canopy.
|tip Lafoo will dig up the treasure.
Click random items that appear on the ground
collect 6 Shiny Treasures##38575 |q 12704/1 |goto 56.93,53.87
You can find more around: |notinsticky
[55.73,50.32]
[51.45,53.03]
[49.57,49.66]
|only if haveq(12704) or completedq(12704)
step
use the Didgeridoo of Contemplation##39598
|tip Use it at the top of the giant rock pillar.
Contemplate at the Glimmering Pillar |q 12736/1 |goto 49.98,37.39
|only if haveq(12736) or completedq(12736)
step
use the Chime of Cleansing##39572
kill Spirit of Atha##29033 |q 12735/1 |goto 43.20,42.05
|only if haveq(12735) or completedq(12735)
step
use the Drums of the Tempest##39571
Take Control of Haiphoon, the Great Tempest |invehicle |goto 25.35,35.40 |q 12726
|only if haveq(12726) or completedq(12726)
stickystart "Devour_Storm_Revenants"
step
Haiphoon has 2 forms: Water and Air
While in Air Form:
kill Aqueous Spirit##28862+
|tip When the Aqueous Spirits are weak, use the "Devour Water" ability to eat them.
|tip After eating an Aqueous Spirit, you will turn into Haiphoon's Water Form.
Devour #3# Aqueous Spirits |q 12726/1 |goto 25.35,35.40
|only if haveq(12726) or completedq(12726)
step
label "Devour_Storm_Revenants"
While in Water Form:
kill Storm Revenant##28858
|tip When the Storm Revenants are weak, use the "Devour Wind" ability to eat them.
|tip After eating a Storm Revenant, you will turn into Haiphoon's Air Form.
Devour #3# Storm Revenants |q 12726/2 |goto 25.35,35.40
|only if haveq(12726) or completedq(12726)
step
use the Horn of Fecundity##39599
|tip Use it next to Soaked Fertile Dirt piles.
|tip They look like mounds of dirt with small trees growing out of them on the ground around this area.
Play the Song of Fecundity #8# Times |q 12737/1 |goto 24.82,35.97
|only if haveq(12737) or completedq(12737)
step
use the Didgeridoo of Contemplation##39598
|tip Use it at the top of the giant rock pillar.
Contemplate at the Suntouched Pillar |q 12736/4 |goto 33.43,52.26
|only if haveq(12736) or completedq(12736)
step
use the Didgeridoo of Contemplation##39598
|tip Use it at the top of the giant rock pillar.
Contemplate at the Mosslight Pillar |q 12736/2 |goto 36.39,74.88
|only if haveq(12736) or completedq(12736)
step
click Sparktouched Crystal Defenses##191209
collect 1 Crystal of the Violent Storm##39694 |q 12761 |goto 33.05,75.69
collect 1 Crystal of Unstable Energy##39693 |q 12761 |goto 33.05,75.69
collect 1 Crystal of the Frozen Grip##39689 |q 12761 |goto 33.05,75.69
|only if haveq(12761) or completedq(12761)
step
Kill Frenzyheart enemies around this area
collect 1 Tainted Crystal##39266 |goto 24.64,82.06 |q 12705
|tip You can skip this step if you want to kill 50 enemies without the help of the Spirit Beast.
|only if haveq(12705) or completedq(12705)
step
use Tainted Crystal##39266
Tranform Into Soo-holu the Spirit Beast |invehicle |goto Sholazar Basin 33.60,74.98 |q 12705
|tip You can skip this step if you want to kill 50 enemies without the help of the Spirit Beast.
|only if haveq(12705) or completedq(12705)
step
use the Crystal of the Frozen Grip##39689
use the Crystal of the Violent Storm##39694
use the Crystal of Unstable Energy##39693
|tip Use the crystals to help you defeat Frenzyheart enemies around this area.
Slay #50# Frenzyheart Attackers |q 12761/1 |goto 22.12,79.47
You can find more around [24.64,82.06]
|only if haveq(12761) or completedq(12761)
step
use Energized Polished Crystal##39748
Gain the Power of the Great Ones Buff |havebuff 134125 |q 12762 |goto 22.12,79.47
|only if haveq(12762) or completedq(12762)
step
Kill Frenzyheart enemies around this area
Slay #30# Frenzyheart Attackers |q 12762/1 |goto 22.12,79.47
You can find more around [24.64,82.06]
|only if haveq(12762) or completedq(12762)
step
Kill Frenzyheart enemies around this area
Slay #50# Frenzyheart Attackers |q 12705/1 |goto 25.02,81.96
You can find more around [30.63,78.74]
|only if haveq(12705) or completedq(12705)
step
Release Soo-holu the Spirit Beast |outvehicle
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(12705) or completedq(12705)
step
use the Didgeridoo of Contemplation##39598
|tip Use it at the top of the giant rock pillar.
Contemplate at the Skyreach Pillar |q 12736/3 |goto 53.30,79.41
|only if haveq(12736) or completedq(12736)
step
use the Chime of Cleansing##39572
kill Spirit of Koosu##29034 |q 12735/3 |goto 48.48,69.55
|only if haveq(12735) or completedq(12735)
step
use the Chime of Cleansing##39572
kill Spirit of Ha-Khalan##29018 |q 12735/2 |goto 49.56,61.98
|only if haveq(12735) or completedq(12735)
step
talk Lightningcaller Soo-met##28107
turnin Mastery of the Crystals##12761 |or |goto 33.50,74.75 |only if haveq(12761) or completedq(12761)
turnin Power of the Great Ones##12762 |or |goto 33.50,74.75 |only if haveq(12762) or completedq(12762)
turnin Will of the Titans##12705 |or |goto 33.50,74.75 |only if haveq(12705) or completedq(12705)
step
talk Oracle Soo-nee##29006
|tip In the small hut.
turnin A Cleansing Song##12735 |or |goto 53.34,56.45 |only if haveq(12735) or completedq(12735)
turnin Song of Fecundity##12737 |or |goto 53.34,56.45 |only if haveq(12737) or completedq(12737)
turnin Song of Reflection##12736 |or |goto 53.34,56.45 |only if haveq(12736) or completedq(12736)
turnin Song of Wind and Water##12726 |or |goto 53.34,56.45 |only if haveq(12726) or completedq(12726)
step
talk High-Oracle Soo-say##28027
turnin Appeasing the Great Rain Stone##12704 |goto 54.59,56.36
step
You have completed all available Oracles dailies
|tip This guide will reset when more become available.
'|complete not completedq(12761,12762,12705,12704,12735,12737,12736,12726) |next "Begin_Oracles_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\The Oracles/Frenzyheart Dailies\\Frenzyheart Tribe Dailies",{
author="support@zygorguides.com",
description="\nThis guide section contains the pre-quests to unlock the ability to complete daily quests for The Oracles and Frenzyheart Tribe factions in Sholazar Basin.",
},[[
step
talk Tamara Wobblesprocket##28568
accept The Part-time Hunter##12654 |goto Sholazar Basin/0 50.48,62.13
step
kill Pitch##28097
collect Pitch's Remains##38703 |q 12654/1 |goto 50.52,77.24
step
talk Tracker Gekgek##28095
|tip Pitch has to currently be dead for this quest to be offered.
accept Playing Along##12528 |goto 50.54,76.59
step
talk High-Shaman Rakjak##28082
turnin Playing Along##12528 |goto 54.99,69.11
accept The Ape Hunter's Slave##12529 |goto 54.99,69.11
step
_Next to you:_
talk Goregek the Gorilla Hunter##28214
accept Tormenting the Softknuckles##12530 |goto 54.93,69.16
stickystart "Kill_Hardknuckle_Chargers"
step
label "Kill_Hardknuckle_Foragers"
kill 8 Hardknuckle Forager##28098 |q 12529/1 |goto 57.81,72.42
You can find more around [60.65,70.80]
step
use the Softknuckle Poker##38467
|tip Use it on Softknuckles around this area.
|tip They look like small baby gorillas.
|tip A Hardknuckle Matriarch will eventually spawn.
kill 1 Hardknuckle Matriarch##28213 |q 12530/1 |goto 67.58,74.52
step
label "Kill_Hardknuckle_Chargers"
kill 6 Hardknuckle Charger##28096 |q 12529/2 |goto 62.53,71.85
You can find more around [66.56,73.65]
step
talk High-Shaman Rakjak##28082
turnin The Ape Hunter's Slave##12529 |goto 54.99,69.11
turnin Tormenting the Softknuckles##12530 |goto 54.99,69.11
accept The Wasp Hunter's Apprentice##12533 |goto 54.99,69.11
step
talk Elder Harkek##28138
accept The Sapphire Queen##12534 |goto 55.50,69.69
stickystart "Kill_Sapphire_Hive_Wasps"
stickystart "Kill_Sapphire_Hive_Drones"
step
Enter the cave |goto 59.39,79.15 < 10 |walk
kill Sapphire Hive Queen##28087
|tip Inside the cave.
collect Stinger of the Sapphire Queen##38477 |q 12534/1 |goto 57.17,79.18
step
label "Kill_Sapphire_Hive_Wasps"
kill 6 Sapphire Hive Wasp##28086 |q 12533/1 |goto 60.68,78.31
step
label "Kill_Sapphire_Hive_Drones"
kill 9 Sapphire Hive Drone##28085 |q 12533/2 |goto 60.68,78.31
step
talk High-Shaman Rakjak##28082
turnin The Wasp Hunter's Apprentice##12533 |goto 54.99,69.11
turnin The Sapphire Queen##12534 |goto 54.99,69.11
step
talk Elder Harkek##28138
accept Flown the Coop!##12532 |goto 55.50,69.69
step
clicknpc Chicken Escapee##28161+
|tip They run all over the village.
use the Chicken Net##38689
|tip Use it on Chicken Escapees to prevent them from running.
collect 12 Captured Chicken##38483 |q 12532/1 |goto 55.58,70.01
You can find more around [58.11,72.62]
step
talk Elder Harkek##28138
turnin Flown the Coop!##12532 |goto 55.50,69.69
accept The Underground Menace##12531 |goto 55.50,69.69
step
talk High-Shaman Rakjak##28082
accept Mischief in the Making##12535 |goto 54.99,69.11
stickystart "Collect_Skyreach_Crystal_Clusters"
step
kill Serfex the Reaver##28083
collect Claw of Serfex##38473 |q 12531/1 |goto 58.20,83.73
[58.86,85.58]
[51.51,86.49]
[49.77,84.95]
step
label "Collect_Skyreach_Crystal_Clusters"
click Skyreach Crystal Formation##190500+
|tip They look like white crystal cluster on the ground along the river bank.
collect 8 Skyreach Crystal Cluster##38504 |q 12535/1 |goto 54.02,85.01
You can find more around: |notinsticky
[49.88,84.92]
[47.70,82.15]
[60.68,86.00]
step
talk High-Shaman Rakjak##28082
turnin The Underground Menace##12531 |goto 54.99,69.11
turnin Mischief in the Making##12535 |goto 54.99,69.11
accept A Rough Ride##12536 |goto 54.99,69.11
step
talk High-Shaman Rakjak##28082
Tell him _"I need to find Zepik, do you have his hunting horn"_
collect Zepik's Hunting Horn##38512 |goto 54.99,69.11 |q 12538 |future
step
talk Captive Crocolisk##28298
Tell it _"You look safe enough... let's do this."_
Mount the Captive Crocolisk |invehicle |goto 57.29,68.37 |q 12536
step
Watch the dialogue
Travel to Mistwhisper Refuge |q 12536/1 |goto 46.25,39.47
step
use Zepik's Hunting Horn##38512
|tip Use this if Zepik is not standing next to you.
_Next to you:_
talk Zepik the Gorloc Hunter##28668
turnin A Rough Ride##12536 |goto 46.13,39.53
accept Lightning Definitely Strikes Twice##12537 |goto 46.13,39.53
accept The Mist Isn't Listening##12538 |goto 46.13,39.53
stickystart "Slay_Mistwhisper_Gorlocs"
step
use Skyreach Crystal Clusters##38510
|tip Use it next to the tall rectangle stone monument.
click Arranged Crystal Formation
|tip It appears after using the Skyreach Crystal Clusters.
Sabotage the Mistwhisper Weather Shrine |q 12537/1 |goto 45.38,37.23
step
label "Slay_Mistwhisper_Gorlocs"
Kill Mistwhisper enemies around this area
Slay #12# Mistwhisper Gorlocs |q 12538/1 |goto 45.17,36.68
step
use Zepik's Hunting Horn##38512
|tip Use this if Zepik is not standing next to you.
_Next to you:_
talk Zepik the Gorloc Hunter##28216
turnin Lightning Definitely Strikes Twice##12537
turnin The Mist Isn't Listening##12538
accept Hoofing It##12539
step
talk High-Shaman Rakjak##28082
turnin Hoofing It##12539 |goto 54.99,69.11
accept Just Following Orders##12540 |goto 54.99,69.11
step
talk Injured Rainspeaker Oracle##28217
Choose _<Reach down and pull the injured Rainspeaker Oracle to its feet.>_
kill Ravenous Mangal Crocolisk##28325
|tip It will spawn and attack after helping the Oracle.
Locate the Injured Rainspeaker Oracle |q 12540/1 |goto 55.70,64.97
step
talk Injured Rainspeaker Oracle##28217
turnin Just Following Orders##12540
accept Fortunate Misunderstandings##12570
step
talk Injured Rainspeaker Oracle##28217 |goto 55.70,64.97
Tell it _"I am ready to travel to your village now."_
Begin Escorting the Injured Rainspeaker Oracle |goto 55.70,64.97 > 10 |q 12570
|tip Protect it as it returns to Rainspeaker Canopy.
step
Follow the path |goto 53.27,62.34 < 20 |walk
Continue following the path |goto 52.22,58.90 < 20 |walk
Escort the Injured Rainspeaker Oracle to Rainspeaker Canopy |q 12570/1 |goto 53.53,56.80
|tip Stay close and protect it as it returns to Rainspeaker Canopy.
step
talk High-Oracle Soo-say##28027
turnin Fortunate Misunderstandings##12570 |goto 54.59,56.36
accept Make the Bad Snake Go Away##12571 |goto 54.59,56.36
step
talk High-Oracle Soo-say##28027
Tell him _"I need to find Lafoo, do you have his bug bag?"_
collect Lafoo's Bug Bag##38622 |goto 54.59,56.36 |q 12572 |future
step
use Lafoo's Bug Bag##38622
|tip Use this if Lafoo is not standing next to you.
_Next to you:_
talk Lafoo##28120
accept Gods like Shiny Things##12572 |goto 54.59,56.36
stickystart "Collect_Shiny_Treasures"
stickystart "Kill_Emperor_Cobras"
step
kill 1 Venomtip##28358 |q 12571/2 |goto 57.61,52.26
|tip It walks back and forth near the waterfall.
step
label "Collect_Shiny_Treasures"
use Lafoo's Bug Bag##38622
|tip Use this if Lafoo is not standing next to you.
|tip Stand on top of the twinkles of light on the ground all aroud Rainspeaker Canopy.
|tip Lafoo will dig up the treasure.
Click random items that appear on the ground
collect 6 Shiny Treasures##38575 |q 12572/1 |goto 56.93,53.87
You can find more around: |notinsticky
[55.73,50.32]
[51.45,53.03]
[49.57,49.66]
step
label "Kill_Emperor_Cobras"
kill 10 Emperor Cobra##28011 |q 12571/1 |goto 53.69,49.88
step
talk High-Oracle Soo-say##28027
turnin Make the Bad Snake Go Away##12571 |goto 54.59,56.36
turnin Gods like Shiny Things##12572 |goto 54.59,56.36
accept Making Peace##12573 |goto 54.59,56.36
step
talk Shaman Vekjik##28315
Tell him _"Shaman Vekjik, I have spoken with the big-tongues and they desire peace. I have brought this offering on their behalf."_
|tip He will boot you off the cliff to safety in the water.
Extend the Peace Offering to Shaman Vekjik |q 12573/1 |goto 51.30,64.63
step
talk Tamara Wobblesprocket##28568
turnin The Part-time Hunter##12654 |goto 50.48,62.13
step
talk High-Oracle Soo-say##28027
turnin Making Peace##12573 |goto 54.59,56.36
accept Back So Soon?##12574 |goto 54.59,56.36
step
talk Mistcaller Soo-gan##28114
turnin Back So Soon?##12574 |goto 42.15,38.64
accept The Lost Mistwhisper Treasure##12575 |goto 42.15,38.64
accept Forced Hand##12576 |goto 42.15,38.64
stickystart "Kill_Frenzyheart_Spearbearers"
stickystart "Kill_Frenzyheart_Scavengers"
step
Watch the dialogue
|tip He comes walking up on a red proto-drake.
|tip Zeptek the Destroyer will attack you too.
kill 1 Warlord Tartek##28105 |q 12575/1 |goto 41.29,19.94
step
click Mistwhisper Treasure##190578
collect Mistwhisper Treasure##38601 |q 12575/2 |goto 41.69,19.48
step
label "Kill_Frenzyheart_Spearbearers"
kill 8 Frenzyheart Spearbearer##28080 |q 12576/1 |goto 40.74,22.52
You can find more around [42.24,25.42]
step
label "Kill_Frenzyheart_Scavengers"
kill 6 Frenzyheart Scavenger##28081 |q 12576/2 |goto 40.74,22.52
You can find more around [42.24,25.42]
step
talk Mistcaller Soo-gan##28114
turnin The Lost Mistwhisper Treasure##12575 |goto 42.15,38.64
turnin Forced Hand##12576 |goto 42.15,38.64
accept Home Time!##12577 |goto 42.15,38.64
step
talk High-Oracle Soo-say##28027
turnin Home Time!##12577 |goto 54.59,56.36
accept The Angry Gorloc##12578 |goto 54.59,56.36
step
talk High-Oracle Soo-say##28027
Tell him _"I need to find Moddle, do you have his stress ball?"_
collect Moodle's Stress Ball##38624 |goto 54.59,56.36 |q 12578
step
Travel to Mosswalker Village |q 12578/1 |goto 76.11,51.07
step
use Moodle's Stress Ball##38624
|tip Use this if Moodle is not standing next to you.
_Next to you:_
talk Moodle##28122
turnin The Angry Gorloc##12578 |goto 76.11,51.07
accept The Mosswalker Savior##12580 |goto 76.11,51.07
accept Lifeblood of the Mosswalker Shrine##12579 |goto 76.11,51.07
step
talk Mosswalker Victim##28113
Choose _<Check for a pulse...>_
|tip You will only be able to save some of them.
Rescue #6# Mosswalker Victims |q 12580/1 |goto 76.11,51.07
step
use Moodle's Stress Ball##38624
|tip Use this if Moodle is not standing next to you.
_Next to you:_
talk Moodle##28122
turnin The Mosswalker Savior##12580 |goto 76.11,51.07
step
click Lifeblood Shard##190702+
|tip They look like small red crystals on the ground around this area.
collect 10 Lifeblood Shard##39063 |q 12579/1 |goto 68.74,54.53
You can find more around [70.19,59.93]
step
use Moodle's Stress Ball##38624
|tip Use this if Moodle is not standing next to you.
_Next to you:_
talk Moodle##28122
turnin Lifeblood of the Mosswalker Shrine##12579 |goto 54.5,56.6
accept A Hero's Burden##12581 |goto 54.5,56.6
step
Enter the cave |goto 70.91,58.70 < 10 |walk
Follow the path |goto 74.26,57.70 < 15 |walk
kill Artruis the Heartless |q 12581/1 |goto 72.11,57.61
|tip Inside the cave.
|tip Begin by attacking Artruis until he shields himself.
_DO NOT KILL ZEPIK THE GORLOC HUNTER_
kill Jaloot##28667
|tip Killing Zepik the Gorloc Hunter will start your path with The Oracles.
|tip Killing Jaloot will allow you to ally yourself with the Frenzyheart Tribe.
|tip Once you kill Jaloot, finish off Artruis.
|tip If you make a mistake, abandon the quest and accept it from Moodle again using his Stress Ball.
step
click Artruis' Phylactery##190777
|tip Inside the cave.
turnin A Hero's Burden##12581 |goto 72.09,57.74
step
talk Zepik the Gorloc Hunter##28668
|tip Inside the cave.
accept Frenzyheart Champion##12582 |goto 71.97,57.02
step
talk Zepik the Gorloc Hunter##28668
|tip Inside the cave.
accept Return of the Lich Hunter##12692 |goto 71.97,57.02
step
talk Elder Harkek##28138
turnin Return of the Lich Hunter##12692 |goto 55.50,69.68
step
label "Begin_Frenzyheart_Dailies"
talk Elder Harkek##28138
accept Chicken Party!##12702 |goto 55.50,69.68
step
talk Rejek##29043
accept A Hero's Headgear##12758 |goto 55.71,69.47 |only if questpossible |or
accept Rejek: First Blood##12734 |goto 55.71,69.47 |only if questpossible |or
accept Strength of the Tempest##12741 |goto 55.71,69.47 |only if questpossible |or
accept The Heartblood's Strength##12732 |goto 55.71,69.47 |only if questpossible |or
Accept Rejek's Daily Quest |complete false |goto 55.71,69.47 |or
|tip You will only be able to accept one quest each day.
step
talk Vekgar##29146
accept Kartak's Rampage##12703 |goto 55.53,68.68 |only if questpossible |or
accept Secret Strength of the Frenzyheart##12760 |goto 55.53,68.68 |only if questpossible |or
accept Tools of War##12759 |goto 55.53,68.68 |only if questpossible |or
Accept Vekgar's Daily Quest |complete false |goto 55.53,68.68 |or
|tip You will only be able to accept one quest each day.
step
clicknpc Chicken Escapee##28161+
|tip They run all over the village.
use the Chicken Net##38689
|tip Use it on Chicken Escapees to prevent them from running.
collect 12 Captured Chicken##38483 |q 12702/1 |goto 55.58,70.01
You can find more around [58.11,72.62]
|only if haveq(12702) or completedq(12702)
step
kill Sapphire Hive Wasp##28086
use Rejek's Blade##39577
|tip Use it on the corpse of a Sapphire Hive Wasp.
Blood your Blade on a Sapphire Hive Wasp |q 12734/1 |goto 61.30,78.47
|only if haveq(12734) or completedq(12734)
step
kill Hardknuckle Charger##28096
use Rejek's Blade##39577
|tip Use it on the corpse of a Hardknuckle Charger.
Blood your Blade on a Hardknuckle Charger |q 12734/2 |goto 62.78,71.44
|only if haveq(12734) or completedq(12734)
step
kill Goretalon Matriarch##29044
|tip It looks like a white eagle perched up on a hill, next to a nest with 1 egg in it.
collect Matriarch's Heartblood##39573 |goto 59.69,23.90 |q 12732
|only if haveq(12732) or completedq(12732)
step
Kill Mistwhisper enemies around this area
use Rejek's Blade##39577
|tip Use it on the corpse of Mistwhisper enemies you kill.
Blood your Blade on #3# Mistwhisper Members |q 12734/3 |goto 44.50,39.35
|only if haveq(12734) or completedq(12734)
step
Kill Venture Co. enemies around this area
collect Venture Co. Explosives##39651 |goto 34.00,47.31 |q 12758
|only if haveq(12758) or completedq(12758)
step
use Rejek's Vial##39574
|tip Use it while standing in the water at the top of the giant stone pillar.
collect Suntouched Water##39576 |goto 33.71,52.07 |q 12732
|only if haveq(12732) or completedq(12732)
step
use the Suntouched Water##39576
collect Suntouched Heartblood##39575 |q 12732/1 |goto 33.71,52.07
|only if haveq(12732) or completedq(12732)
step
kill Stormwatcher##28877
|tip They look like large stone statues walking around this area.
use the Venture Co. Explosives##39651
|tip Use it on the corpses of Stormwatchers you kill.
click Stormwatcher's Head##191179
collect Stormwatcher's Head##39667 |q 12758/1 |goto 26.36,33.55
You can find more around [23.58,38.92]
|only if haveq(12758) or completedq(12758)
stickystart "Collect_Essence_of_the_Storm"
step
kill Aqueous Spirit##28862+
collect 3 Essence of the Monsoon##39616 |goto 26.36,33.55
You can find more around: |notinsticky
[23.58,38.92]
[22.75,44.97]
|only if haveq(12741) or completedq(12741)
step
label "Collect_Essence_of_the_Storm"
kill Storm Revenant##28858+
collect 3 Essence of the Storm##39643 |goto 26.36,33.55
You can find more around: |notinsticky
[23.58,38.92]
[22.75,44.97]
|only if haveq(12741) or completedq(12741)
step
Feel the True Power of the Tempest |q 12741/1 |goto 22.44,33.69
|tip Stand next to the tall stone altar.
|tip You may even need to rub against or stand next to it so that you are touching it.
|only if haveq(12741) or completedq(12741)
step
Kill Sparktouched enemies around this area
|tip You can skip this step if you want to kill 50 enemies without the help of the Spirit Beast.
collect Oracle Blood##39265 |goto 31.64,71.13 |q 12703
|only if haveq(12703) or completedq(12703)
step
click Zepik's Trap Stash##191210
collect Spike Bomb##39697 |goto 23.99,83.10 |q 12759
collect Ensnaring Trap##39695 |goto 23.99,83.10 |q 12759
collect Volatile Trap##39696 |goto 23.99,83.10 |q 12759
|only if haveq(12759) or completedq(12759)
step
use the Oracle Blood##39265
|tip You can skip this step if you want to kill 50 enemies without the help of the Spirit Beast.
Tranform Into Kartak the Spirit Beast |invehicle |goto 23.33,83.03 |q 12703
|only if haveq(12703) or completedq(12703)
step
Kill Sparktouched enemies around this area
Slay #50# Sparktouched Gorlocs |q 12703/1 |goto 31.97,75.11
|only if haveq(12703) or completedq(12703)
step
Release Kartak the Spirit Beast |outvehicle
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(12703) or completedq(12703)
step
use the Secret Strength of the Frenzyheart##39737
Gain the "Strength of the Frenzyheart" Buff |havebuff spell:53355 |goto 31.97,75.11 |q 12760
|only if haveq(12760) or completedq(12760)
step
Kill Sparktouched enemies around this area
Slay #30# Sparktouched Gorlocs |q 12760/1 |goto 31.97,75.11
|only if haveq(12760) or completedq(12760)
step
use the Spike Bomb##39697
use the Ensnaring Trap##39695
use the Volatile Trap##39696
|tip Use your traps near Oracles mobs around this area.
Kill Sparktouched enemies around this area
Slay #50# Sparktouched Gorlocs |q 12759/1 |goto 31.97,75.11
|only if haveq(12759) or completedq(12759)
step
talk Shaman Jakjek##28106
turnin Kartak's Rampage##12703 |goto 23.35,83.27 |only if haveq(12703) or completedq(12703) or completedq(12703)
turnin Secret Strength of the Frenzyheart##12760 |goto 23.35,83.27 |only if haveq(12760) or completedq(12760)
turnin Tools of War##12759 |goto 23.35,83.27 |only if haveq(12759) or completedq(12759) or completedq(12759)
step
talk Elder Harkek##28138
turnin Chicken Party!##12702 |goto 55.50,69.68
step
talk Rejek##29043
turnin A Hero's Headgear##12758 |goto 55.71,69.47 |only if haveq(12758) or completedq(12758) or completedq(12758)
turnin Rejek: First Blood##12734 |goto 55.71,69.47 |only if haveq(12734) or completedq(12734) or completedq(12734)
turnin Strength of the Tempest##12741 |goto 55.71,69.47 |only if haveq(12741) or completedq(12741) or completedq(12741)
turnin The Heartblood's Strength##12732 |goto 55.71,69.47 |only if haveq(12732) or completedq(12732) or completedq(12732)
step
You have completed all available Frenzyheart dailies
|tip This guide will reset when more become available.
'|complete not completedq(12703,12760,12759,12702,12758,12734,12741,12732) |next "Begin_Frenzyheart_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\The Sons of Hodir\\The Sons of Hodir Dailies",{
author="support@zygorguides.com",
description="\nThis guide will walk you through unlocking and completing all daily quests with The Sons of Hodir faction.",
},[[
step
talk Smilin' Slirk Brassknob##29904
|tip Inside the building.
home K3 |goto The Storm Peaks/0 41.09,85.91 |q 12843 |future
step
talk Gretchen Fizzlespark##29473
|tip Inside the building.
accept They Took Our Men!##12843 |goto 41.15,86.14
step
talk Skizzle Slickslide##29721
fpath K3 |goto 40.75,84.55 |q 12843 |future
step
kill Sifreldar Storm Maiden##29323+
|tip Up on the mountain in Sifreldar Village.
collect Cold Iron Key##40641 |n
click Rusty Cage##191544+
Free #5# Goblin Prisoners |q 12843/1 |goto 40.90,73.07
You can find more around [41.02,69.95]
step
talk Gretchen Fizzlespark##29473
|tip Inside the building.
turnin They Took Our Men!##12843 |goto 41.15,86.14
accept Leave No Goblin Behind##12846 |goto 41.15,86.14
step
Enter the mine |goto 42.19,69.49 < 20 |walk
talk Lok'lira the Crone##29481
|tip Inside the mine.
turnin Leave No Goblin Behind##12846 |goto 42.80,68.90
accept The Crone's Bargain##12841 |goto 42.80,68.90
step
kill Overseer Syra##29518
|tip Inside the mine.
|tip She walks back and forth down the side tunnels to the north and south.
|tip She does not walk up or down the ramps.
collect 1 Runes of the Yrkvinn##40690 |q 12841/1 |goto 44.06,68.99
step
talk Lok'lira the Crone##29481
|tip Inside the mine.
turnin The Crone's Bargain##12841 |goto 42.80,68.90
accept Mildred the Cruel##12905 |goto 42.80,68.90
step
talk Mildred the Cruel##29885
|tip Inside the mine.
turnin Mildred the Cruel##12905 |goto 44.39,68.93
accept Discipline##12906 |goto 44.39,68.93
step
use the Disciplining Rod##42837
|tip Use it on Exhausted Vrykul.
|tip They are sitting on the ground in side tunnels inside the mine.
|tip They will attack you after disciplining them.
|tip Some tunnels have two levels.
Discipline #6# Exhausted Vrykul |q 12906/1 |goto 44.54,70.71
You can find more around [44.35,66.77]
step
talk Mildred the Cruel##29885
|tip Inside the mine.
turnin Discipline##12906 |goto 44.39,68.93
accept Examples to be Made##12907 |goto 44.39,68.93
step
kill 1 Garhal##30147 |q 12907/1 |goto 45.41,69.10
|tip Inside the mine.
step
talk Mildred the Cruel##29885
|tip Inside the mine.
turnin Examples to be Made##12907 |goto 44.39,68.93
accept A Certain Prisoner##12908 |goto 44.39,68.93
step
talk Lok'lira the Crone##29481
|tip Inside the mine.
turnin A Certain Prisoner##12908 |goto 42.80,68.90
accept A Change of Scenery##12921 |goto 42.80,68.90
step
talk Lok'lira the Crone##29975
turnin A Change of Scenery##12921 |goto 47.47,69.09
accept Is That Your Goblin?##12969 |goto 47.47,69.09
step
talk Agnetta Tyrsdottar##30154
Ask her _"Skip the warmup, sister... or are you too scared to face someone your own size?"_
kill 1 Agnetta Tyrsdottar##30154 |q 12969/1 |goto 48.25,69.77
step
talk Lok'lira the Crone##29975
turnin Is That Your Goblin?##12969 |goto 47.47,69.09
accept The Hyldsmeet##12970 |goto 47.47,69.09
step
talk Lok'lira the Crone##29975
Tell her _"Tell me about this proposal."_
Listen to Lok'lira's Proposal |q 12970/1 |goto 47.47,69.09
step
talk Lok'lira the Crone##29975
turnin The Hyldsmeet##12970 |goto 47.47,69.09
accept Taking on All Challengers##12971 |goto 47.47,69.09
step
talk Victorious Challenger##30012
|tip They are always the ones standing alone.
Tell them _"Let's do this, sister."_
kill 6 Victorious Challenger##30012 |q 12971/1 |goto 51.35,66.40
You can find more around [50.35,68.06]
step
talk Lok'lira the Crone##29975
turnin Taking on All Challengers##12971 |goto 47.47,69.09
accept You'll Need a Bear##12972 |goto 47.47,69.09
step
talk Brijana##29592
turnin You'll Need a Bear##12972 |goto 53.14,65.72
accept Bearly Hanging On##12851 |goto 53.14,65.72
step
clicknpc Icefang##29598
Mount Icefang |invehicle |goto 53.12,65.61 |q 12851
stickystart "Burn_Frost_Giants"
step
kill Frostworg##29358+
|tip Use the "Flaming Arrow" ability on your vehicle bar.
|tip Icefang will do one full pass and then return to Brijana.
Burn #7# Frostworgs |q 12851/1
step
label "Burn_Frost_Giants"
kill Niffelem Frost Giant##29351+
|tip Use the "Flaming Arrow" ability on your vehicle bar.
|tip Icefang will do one full pass and then return to Brijana. |notinsticky
Burn #15# Frost Giants |q 12851/2
step
Dismount Icefang |outvehicle |goto 53.82,65.25 |script VehicleExit() |q 12851
|tip Click the "Exit" button on your vehicle bar or wait until Icefang returns to Brijana.
step
talk Brijana##29592
turnin Bearly Hanging On##12851 |goto 53.14,65.72
accept Cold Hearted##12856 |goto 53.14,65.72
step
clicknpc Captive Proto-Drake##29708
|tip Flying in the air chained to the large ice pillars.
Mount the Captive Proto-Drake |invehicle |goto 63.31,62.30 |q 12856
stickystart "Free_1_Proto-Drake"
step
Rescue #3# Brunnhildar Prisoners |q 12856/1 |goto 65.05,60.88 |count 3
|tip Use the "Ice Shard" ability on Brunnhildar Prisoners.
|tip The Brunnhildar Prisoners look like NPCs trapped in blue blocks of ice around this area.
|tip Flying low will put you in range so the giants can attack you, so be careful and quick.
|tip Swoop down quickly and then fly back up as soon as "Ice Shard" activates.
|tip When your Proto-Drake is holding 3 Brunnhildar Prisoners, start flying toward Brunnhildar Village and it go on autopilot.
|tip You will need to do this two more times.
Fly them towards [60.20,61.24]
step
label "Free_1_Proto-Drake"
Free #1# Proto-Drake |q 12856/2 |goto 65.05,60.88 |count 1
step
clicknpc Captive Proto-Drake##29708
|tip Flying in the air chained to the large ice pillars.
Mount the Captive Proto-Drake |invehicle |goto 63.31,62.30 |q 12856
stickystart "Free_2_Proto-Drakes"
step
Rescue #6# Brunnhildar Prisoners |q 12856/1 |goto 65.05,60.88 |count 6
|tip Use the "Ice Shard" ability on Brunnhildar Prisoners.
|tip The Brunnhildar Prisoners look like NPCs trapped in blue blocks of ice around this area.
|tip Flying low will put you in range so the giants can attack you, so be careful and quick.
|tip Swoop down quickly and then fly back up as soon as "Ice Shard" activates.
|tip When your Proto-Drake is holding 3 Brunnhildar Prisoners, start flying toward Brunnhildar Village and it go on autopilot.
|tip You will need to do this one more time.
Fly them towards [60.20,61.24]
step
label "Free_2_Proto-Drakes"
Free #2# Proto-Drakes |q 12856/2 |goto 65.05,60.88 |count 2
step
clicknpc Captive Proto-Drake##29708
|tip Flying in the air chained to the large ice pillars.
Mount the Captive Proto-Drake |invehicle |goto 63.31,62.30 |q 12856
stickystart "Free_3_Proto-Drakes"
step
Rescue #9# Brunnhildar Prisoners |q 12856/1 |goto 65.05,60.88 |count 9
|tip Use the "Ice Shard" ability on Brunnhildar Prisoners.
|tip The Brunnhildar Prisoners look like NPCs trapped in blue blocks of ice around this area.
|tip Flying low will put you in range so the giants can attack you, so be careful and quick.
|tip Swoop down quickly and then fly back up as soon as "Ice Shard" activates.
|tip When your Proto-Drake is holding 3 Brunnhildar Prisoners, start flying toward Brunnhildar Village and it go on autopilot.
Fly them towards [60.20,61.24]
step
label "Free_3_Proto-Drakes"
Free #3# Proto-Drakes |q 12856/2 |goto 65.05,60.88 |count
step
Dismount the Captive Proto-Drake |outvehicle |script VehicleExit() |q 12856
|tip Click the "Exit" button on your vehicle bar.
step
talk Brijana##29592
turnin Cold Hearted##12856 |goto 53.14,65.72
accept Deemed Worthy##13063 |goto 53.14,65.72
step
talk Astrid Bjornrittar##29839
turnin Deemed Worthy##13063 |goto 49.75,71.81
accept Making a Harness##12900 |goto 49.75,71.81
step
kill Icemane Yeti##29875+
collect 3 Icemane Yeti Hide##41424 |q 12900/1 |goto 48.36,75.09
You can find more around:
[46.89,77.57]
[48.79,79.65]
step
talk Astrid Bjornrittar##29839
|tip Inside the building.
turnin Making a Harness##12900 |goto 49.75,71.81
accept The Last of Her Kind##12983 |goto 49.75,71.81
accept The Slithering Darkness##12989 |goto 49.75,71.81
step
Enter the cave |goto 55.86,63.90 < 15 |walk
kill 8 Ravenous Jormungar##29605 |q 12989/1 |goto 54.86,61.40
|tip Inside the cave.
|tip Don't click the Injured Icemaw Matriarch until you finish killing Ravenous Jormungar.
step
clicknpc Injured Icemaw Matriarch##29563
|tip Inside the cave.
|tip The bear runs back to Brunnhildar Village.
Begin Riding the Icemaw Matriarch |invehicle |goto 54.78,60.36 |q 12983
step
Watch the dialogue
|tip Return to Bruunhildar Village with the Icemaw Matriarch.
Rescue the Icemaw Matriarch |q 12983/1 |goto 54.78,60.36
step
talk Astrid Bjornrittar##29839
|tip Inside the building.
turnin The Last of Her Kind##12983 |goto 49.75,71.81
turnin The Slithering Darkness##12989 |goto 49.75,71.81
accept The Warm-Up##12996 |goto 49.75,71.81
step
use the Reins of the Warbear Matriarch##42481
Mount the Warbear Matriarch |invehicle |goto 50.53,67.22 |q 12996
step
kill Kirgaraak##29352 |q 12996/1 |goto 50.80,67.66
|tip Open by using "Charge" on Kirgaraak.
|tip Alternate using "Maul" and "Smash" until Kirgaraak is defeated.
|tip After every other "Smash" cast, follow it with a "Charge."
step
Dismount the Warbear Matriarch |outvehicle |script VehicleExit() |q 12996
|tip Click the "Exit" button on your vehicle bar.
step
talk Astrid Bjornrittar##29839
|tip Inside the building.
turnin The Warm-Up##12996 |goto 49.75,71.81
accept Into the Pit##12997 |goto 49.75,71.81
step
use the Reins of the Warbear Matriarch##42499
Mount the Warbear Matriarch |invehicle |q 12997 |goto 49.21,68.51
step
kill 6 Hyldsmeet Warbear##30174 |q 12997/1 |goto 49.21,68.51
|tip Open by using "Charge" on Hyldsmeet Warbears.
|tip Alternate using "Maul" and "Smash" until Hyldsmeet Warbears are defeated.
|tip After every other "Smash" cast, follow it with a "Charge."
step
Dismount the Warbear Matriarch |outvehicle |script VehicleExit() |q 12997
|tip Click the "Exit" button on your vehicle bar.
step
talk Astrid Bjornrittar##29839
|tip Inside the building.
turnin Into the Pit##12997 |goto 49.75,71.81
accept Prepare for Glory##13061 |goto 49.75,71.81
step
talk Lok'lira the Crone##29975
turnin Prepare for Glory##13061 |goto 47.47,69.09
accept Lok'lira's Parting Gift##13062 |goto 47.47,69.09
step
talk Gretta the Arbiter##29796
turnin Lok'lira's Parting Gift##13062 |goto 50.88,65.59
accept The Drakkensryd##12886 |goto 50.88,65.59
step
Fly to the Temple of Storms |complete subzone("Temple of Storms") |q 12886
|tip You drake will automatically fly you up to the spire.
step
use the Hyldnir Harpoon##41058
|tip Use it on Hyldsmeet Proto-Drake flying around the Temple of Storms high above The Storm Peaks.
|tip It will take you minute to fly within range.
|tip Each time you use it, you will jump to a new drake so you can kill its rider.
kill 10 Hyldsmeet Drakerider##29694 |q 12886/1 |goto 33.39,58.32
step
use the Hyldnir Harpoon##41058
|tip Use it on a Column Ornament.
|tip They look like light fixtures on the side of stone columns.
Reach the Temple of Storms Platform |outvehicle |goto 33.39,58.32
step
talk Thorim##29445
|tip At the top of the Temple of Storms.
turnin The Drakkensryd##12886 |goto 33.42,57.96
accept Sibling Rivalry##13064 |goto 33.42,57.96
step
talk Thorim##29445
|tip At the top of the Temple of Storms.
Ask him _"Can you tell me what became of Sif?"_
Hear Thorim's History |q 13064/1 |goto 33.42,57.96
step
talk Thorim##29445
|tip At the top of the Temple of Storms.
turnin Sibling Rivalry##13064 |goto 33.42,57.96
accept Mending Fences##12915 |goto 33.42,57.96
stickystart "Kill_Stormforged_Iron_Giants"
step
click Granite Boulder##191815
|tip They look like large gray rocks on the ground around this area.
collect Granite Boulder##41506 |n
use Thorim's Charm of Earth##41505
|tip One Granite Boulder is required to use this item each time.
|tip Use it on Stormforged Iron Giants.
|tip Help the summoned dwarves kill the giants.
kill Stormforged Iron Giant##29375+
collect Slag Covered Metal##41556 |q 12922 |future |goto 76.05,63.55
step
use the Slag Covered Metal##41556
accept The Refiner's Fire##12922
stickystart "Collect_Furious_Sparks"
step
label "Kill_Stormforged_Iron_Giants"
click Granite Boulder##191815 |notinsticky
|tip They look like large gray rocks on the ground around this area. |notinsticky
collect Granite Boulder##41506 |n |notinsticky
use Thorim's Charm of Earth##41505 |notinsticky
|tip One Granite Boulder is required to use this item each time. |notinsticky
|tip Use it on Stormforged Iron Giants. |notinsticky
|tip Help the summoned dwarves kill the giants. |notinsticky
kill 5 Stormforged Iron Giant##29375 |q 12915/2 |goto 76.05,63.55
You can find more around:
[73.29,62.83]
[70.27,59.97]
step
label "Collect_Furious_Sparks"
kill Seething Revenant##29504+
collect 10 Furious Spark##41558 |q 12922/1 |goto 76.05,63.55
You can find more around: |notinsticky
[73.29,62.83]
[70.27,59.97]
step
click Granite Boulder##191815
|tip They look like large gray rocks on the ground around this area.
collect Granite Boulder##41506 |n
use Thorim's Charm of Earth##41505
|tip One Granite Boulder is required to use this item each time.
|tip Use it on Fjorn.
|tip Help the summoned dwarves kill Fjorn.
kill Fjorn##29503 |q 12915/1 |goto 76.50,63.91
|tip He walks around this area.
step
click Fjorn's Anvil##192071
turnin The Refiner's Fire##12922 |goto 77.15,62.85
accept A Spark of Hope##12956 |goto 77.15,62.85
step
talk Thorim##29445
|tip At the top of the Temple of Storms.
turnin A Spark of Hope##12956 |goto 33.42,57.96
turnin Mending Fences##12915 |goto 33.42,57.96
accept Forging an Alliance##12924 |goto 33.42,57.96
step
talk Halvdan##32571
fpath Dun Niffelem |goto 62.64,60.92
step
talk King Jokkum##30105
accept You Can't Miss Him##12966 |goto 65.44,60.16
step
talk Njormeld##30099
turnin You Can't Miss Him##12966 |goto 75.38,63.58
accept Battling the Elements##12967 |goto 75.38,63.58
step
clicknpc Snorri##30123
Become Snorri |invehicle |goto 75.70,63.91 |q 12967
step
kill 10 Seething Revenant##30120 |q 12967/1 |goto 77.01,62.78
|tip They respawn quickly.
|tip Use the "Gather Snow" ability to gather snow from Snowdrifts.
|tip Snowdrifts look like piles of snow on the ground.
|tip Use the "Throw Snowball" ability to throw snow at Seething Revenants.
You can find more Snowdrifts around [75.60,63.46]
step
Leave Snorri |outvehicle |script VehicleExit() |q 12967
|tip Click the "Exit" button on your vehicle bar.
step
talk Njormeld##30099
|tip It may take a moment for him to phase in.
turnin Battling the Elements##12967 |goto 75.38,63.58
step
talk Njormeld##30127
turnin Forging an Alliance##12924 |goto 63.20,63.23
accept A New Beginning##13009 |goto 63.20,63.23
accept Forging a Head##12985 |goto 63.20,63.23
step
click Fjorn's Anvil##192071
accept Hot and Cold##12981 |goto 63.13,62.93 |or
'|complete completedq(12987) |or
step
talk King Jokkum##30105
accept In Memoriam##12975 |goto 65.44,60.16
stickystart "Collect_Essence_of_Ice_Quest"
step
use the Diamond Tipped Pick##42424
|tip Use it on Dead Iron Giants.
kill Stormforged Ambusher##30208+
|tip They sometimes attack in groups after using the pick.
|tip Loot Ambushers for eyes as well.
collect 8 Stormforged Eye##42423 |q 12985/1 |goto 69.89,60.31
step
label "Collect_Essence_of_Ice_Quest"
kill Brittle Revenant##30160+
collect 6 Essence of Ice##42246 |q 12981 |goto 69.89,60.31
|only if haveq(12981) or completedq(12981)
step
use the Essence of Ice##42246
|tip Use it next to Smoldering Scraps.
|tip They look like small steaming pieces of spiked metal on the ground around this area.
click Frozen Iron Scrap##192127+
collect 6 Frozen Iron Scrap##42252 |q 12981/1 |goto 75.70,63.45
|only if haveq(12981) or completedq(12981)
step
click Horn Fragment##192082+
|tip They look like small off-white pieces of horn on the ground all over this area.
collect 8 Horn Fragment##42162 |q 12975/1 |goto 71.70,49.15
step
talk King Jokkum##30105
turnin In Memoriam##12975 |goto 65.44,60.16
accept A Monument to the Fallen##12976 |goto 65.44,60.16
step
talk Njormeld##30127
turnin A Monument to the Fallen##12976 |goto 63.20,63.23
turnin Forging a Head##12985 |goto 63.20,63.23
accept Placing Hodir's Helm##12987 |goto 63.20,63.23
step
click Fjorn's Anvil##192071
turnin Hot and Cold##12981 |goto 63.13,62.93
|only if haveq(12981) or completedq(12981)
step
talk King Jokkum##30105
accept Culling Jorcuttar##13011 |goto 65.44,60.16
step
talk Lorekeeper Randvir##30252
accept Forging Hodir's Spear##13001 |goto 64.84,59.05
step
use the Tablets of Pronouncement##42442
|tip Use it at the tip of the smaller ice spike near the ground.
|tip You can use it while flying.
Mount Hodir's Helm |q 12987/1 |goto 64.23,59.23
step
talk Njormeld##30127
turnin Placing Hodir's Helm##12987 |goto 63.20,63.23
step
click Hodir's Helm##192080
|tip At the tip of the ice spike in the air.
accept A Viscious Cleaning##13006 |goto 64.23,59.23 |or
'|complete completedq(13001) |or
step
talk Frostworg Denmother##30294
accept Spy Hunter##12994 |goto 63.49,59.74 |or
'|complete completedq(13001) |or
step
kill Stoic Mammoth##30260+
|tip They walk around this area.
collect 3 Stoic Mammoth Hide##42542 |q 13001/2 |goto 58.35,61.44
step
use the Ethereal Worg's Fang##42479
|tip Follow the worg and wait for it to locate an Infiltrator.
|tip Stay close to the worg so it doesn't despawn.
|tip It will take roughly 60 seconds to locate each Infiltrator.
kill 3 Stormforged Infiltrator##30222 |q 12994/1 |goto 57.24,64.02
|only if haveq(12994) or completedq(12994)
stickystart "Collect_Viscous_Oil_Quest"
step
Enter the cave |goto 55.89,64.00 < 15 |walk
use the Everfrost Razor##42732
|tip Use it on Everfrost Razor Dead Icemaw Bears inside the cave.
collect 1 Icemaw Bear Flank##42733 |q 13011 |goto 54.74,60.82
step
use the Icemaw Bear Flank##42733
|tip Inside the cave.
kill 1 Jorcuttar##30340 |q 13011/1 |goto 54.74,60.82
step
click Everfrost Shard##192188+
|tip Inside the cave.
collect 3 Everfrost Shard##42541 |q 13001/1 |goto 54.74,60.82
step
label "Collect_Viscous_Oil_Quest"
kill Viscous Oil##30325+
|tip Inside the cave.
collect 5 Viscous Oil##42640 |q 13006/1 |goto 54.74,60.82
|only if haveq(13006) or completedq(13006)
step
talk Thorim##29445
|tip At the top of the Temple of Storms.
turnin A New Beginning##13009 |goto 33.42,57.96
accept Veranus##13050 |goto 33.42,57.96
step
click Small Proto-Drake Egg##192536+
|tip They look like spiked brown eggs in the giant nests around these areas.
collect 5 Small Proto-Drake Egg##42784 |q 13050/1 |goto 43.73,67.47
You can find more around [45.37,66.99]
step
talk Thorim##29445
|tip At the top of the Temple of Storms.
turnin Veranus##13050 |goto 33.42,57.96
accept Territorial Trespass##13051 |goto 33.42,57.96
step
use the Stolen Proto-Dragon Eggs##42797
|tip Use it in the nest.
Watch the dialogue
|tip Veranus will slowly fly down.
Lure Veranus |q 13051/1 |goto 38.72,65.54
step
talk Thorim##29445
|tip At the top of the Temple of Storms.
turnin Territorial Trespass##13051 |goto 33.42,57.96
accept Krolmir, Hammer of Storms##13010 |goto 33.42,57.96
step
click Hodir's Horn##192078
|tip You may need to relog for it to appear.
accept Hodir's Call##12977 |goto 64.21,65.08 |or
'|complete completedq(13011) |or
step
talk Frostworg Denmother##30294
turnin Spy Hunter##12994 |goto 63.49,59.74
|only if haveq(12994) or completedq(12994)
step
click Hodir's Helm##192080
|tip At the tip of the ice spike in the air.
turnin A Viscious Cleaning##13006 |goto 64.23,59.23
|only if haveq(13006) or completedq(13006)
step
talk Lorekeeper Randvir##30252
turnin Forging Hodir's Spear##13001 |goto 64.84,59.05
step
talk King Jokkum##30105
turnin Culling Jorcuttar##13011 |goto 65.44,60.16
step
talk King Jokkum##30105
Ask him _"If it pleases you, King Jokkum, may I know what has become of Krolmir?"_
Discover Krolmir's Fate |q 13010/1 |goto 65.44,60.16
step
Watch the dialogue
Begin Riding with King Jokkum |invehicle |q 13010
step
Watch the dialogue
Ride with King Jokkum |outvehicle |goto 71.62,49.57 |q 13010
step
talk Thorim##30390
turnin Krolmir, Hammer of Storms##13010 |goto 71.37,48.78
accept The Terrace of the Makers##13057 |goto 71.37,48.78
stickystart "Free_Restless_Frostborn_Quest"
step
kill Niffelem Forefather##29974+
use Hodir's Horn##42164
|tip Use it on their corpse.
Free #5# Niffelem Forefathers |q 12977/1 |goto 71.70,49.15
|only if haveq(12977) or completedq(12977)
step
label "Free_Restless_Frostborn_Quest"
Kill Restless Frostborn enemies around this area
use Hodir's Horn##42164
|tip Use it on their corpse.
Free #5# Restless Frostborn |q 12977/2 |goto 71.70,49.15
|only if haveq(12977) or completedq(12977)
step
talk Thorim##30295
turnin The Terrace of the Makers##13057 |goto 56.25,51.37
accept The Earthen Oath##13005 |goto 56.25,51.37
accept Loken's Lackeys##13035 |goto 56.25,51.37
stickystart "Kill_Iron_Dwarf_Assailants"
step
use the Horn of the Peaks##42840
|tip This will summon Earthen Helpers to assist you.
kill 7 Iron Sentinel##29984 |q 13005/1 |goto 58.58,45.14
You can find more around [58.62,41.59]
step
label "Kill_Iron_Dwarf_Assailants"
use the Horn of the Peaks##42840 |notinsticky
|tip This will summon Earthen Helpers to assist you. |notinsticky
Kill Iron Dwarf enemies around this area
Slay #20# Iron Dwarf Assailants |q 13005/2 |goto 58.58,45.14
You can find more around [58.62,41.59]
step
Enter the building |goto 56.96,44.13 < 20 |walk
use the Horn of the Peaks##42840
|tip Inside the building.
|tip This will summon Earthen Helpers to assist you.
kill Eisenfaust##30341 |q 13035/1 |goto 55.32,43.32
step
use the Horn of the Peaks##42840
|tip This will summon Earthen Helpers to assist you.
kill Halefnir the Windborn##30376 |q 13035/2 |goto 48.72,45.65
step
use the Horn of the Peaks##42840
|tip This will summon Earthen Helpers to assist you.
kill Duronn the Runewrought##30353 |q 13035/3 |goto 44.95,38.04
step
talk Thorim##30295
turnin The Earthen Oath##13005 |goto 56.25,51.37
turnin Loken's Lackeys##13035 |goto 56.25,51.37
accept The Reckoning##13047 |goto 56.25,51.37
step
talk Thorim##30399
Tell him _"I'm with you, Thorim."_
Watch the dialogue
|tip Thorim will walk forward and confront Loken.
Witness the Reckoning |q 13047/1 |goto 35.94,31.51
step
talk King Jokkum##30105
turnin The Reckoning##13047 |goto 65.44,60.16
step
click Hodir's Horn##192078
turnin Hodir's Call##12977 |goto 64.21,65.08
|only if haveq(12977) or completedq(12977)
stickystart "Search_for_Everfrost_Chips"
step
label "Begin_Daily_Quests"
talk Frostworg Denmother##30294
accept Spy Hunter##12994 |goto 63.49,59.74
|only if rep("The Sons of Hodir") >= Honored
step
click Hodir's Helm##192080
|tip At the tip of the ice spike in the air.
accept A Viscious Cleaning##13006 |goto 64.23,59.23
|only if rep("The Sons of Hodir") >= Friendly
step
click Hodir's Spear##192079
|tip It's a huge spear hanging in the air from 2 chains.
accept How to Slay Your Dragon##13003 |goto 64.99,60.96
|only if rep("The Sons of Hodir") >= Honored
step
click Arngrim the Insatiable##192524
accept Feeding Arngrim##13046 |goto 67.55,59.93
|only if rep("The Sons of Hodir") >= Revered
step
click Fjorn's Anvil##192071
accept Hot and Cold##12981 |goto 63.13,62.93
step
click Hodir's Horn##192078
accept Hodir's Call##12977 |goto 64.21,65.08
step
use the Spear of Hodir##42769
|tip Use it on a Wild Wyrm flying around in the sky.
|tip While fighting the Wild Wyrm, there will be 2 phases to the fight.
|tip During phase 1, you will be underneath it.
|tip Use the "Grab On" ability to keep your grip high at all times or you wll fall.
|tip Spam the "Thrust Spear" ability.
|tip When you see the message about the claw attack, use "Dodge Claws" and immediately use "Mighty Spear Thrust" after.
|tip During phase 2 , you will be inside the Wild Wyrm's mouth.
|tip Spam the "Pry Jaws Open" ability and stack it to 20.
|tip After stacking "Pry Jaws" 20 times, use the "Fatal Strike" ability.
|tip If you are close to dying before reaching 20 stacks, "Fatal Strike" before you die and hope it kills the Wild Wyrm.
Kill the Wild Wyrm |q 13003/1 |goto 56.88,64.41
|only if haveq(13003) or completedq(13003)
stickystart "Feed_Arngrim's_Spirit"
step
use the Ethereal Worg's Fang##42479
|tip Follow the worg and wait for it to locate an Infiltrator.
|tip Stay close to the worg so it doesn't despawn.
|tip It will take roughly 60 seconds to locate each Infiltrator.
kill 3 Stormforged Infiltrator##30222 |q 12994/1 |goto 57.24,64.02
|only if haveq(12994) or completedq(12994)
step
label "Feed_Arngrim's_Spirit"
use Arngrim's Tooth##42774
|tip Use it on Roaming Jormungars around this area.
kill Disembodied Jormungar##30423+
|tip Fight them until Arngrim the Insatiable comes to eat them.
Feed Arngrim's Spirit #5# Times |q 13046/1 |goto 57.24,64.02
|only if haveq(13046) or completedq(13046)
step
Enter the cave |goto 55.89,64.00 < 15 |walk
kill Viscous Oil##30325+
|tip Inside the cave.
collect 5 Viscous Oil##42640 |q 13006/1 |goto 54.74,60.82
|only if haveq(13006) or completedq(13006)
step
talk Frostworg Denmother##30294
turnin Spy Hunter##12994 |goto 63.49,59.74
|only if haveq(12994) or completedq(12994)
step
click Hodir's Helm##192080
|tip At the tip of the ice spike in the air.
turnin A Viscious Cleaning##13006 |goto 64.23,59.23
|only if haveq(13006) or completedq(13006)
step
click Hodir's Spear##192079
|tip It's a huge spear hanging in the air from 2 chains.
turnin How to Slay Your Dragon##13003 |goto 64.99,60.96
|only if haveq(13003) or completedq(13003)
step
click Arngrim the Insatiable##192524
turnin Feeding Arngrim##13046 |goto 67.55,59.93
|only if haveq(13046) or completedq(13046)
step
kill Brittle Revenant##30160+
collect 6 Essence of Ice##42246 |q 12981 |goto 69.89,60.31
|only if haveq(12981) or completedq(12981)
step
use the Essence of Ice##42246
|tip Use it next to Smoldering Scraps.
|tip They look like small steaming pieces of spiked metal on the ground around this area.
click Frozen Iron Scrap##192127+
collect 6 Frozen Iron Scrap##42252 |q 12981/1 |goto 75.70,63.45
|only if haveq(12981) or completedq(12981)
stickystart "Free_Restless_Frostborn_Quest"
step
kill Niffelem Forefather##29974+
use Hodir's Horn##42164
|tip Use it on their corpse.
Free #5# Niffelem Forefathers |q 12977/1 |goto 71.70,49.15
|only if haveq(12977) or completedq(12977)
step
label "Free_Restless_Frostborn_Quest"
Kill Restless Frostborn enemies around this area
use Hodir's Horn##42164
|tip Use it on their corpse.
Free #5# Restless Frostborn |q 12977/2 |goto 71.70,49.15
|only if haveq(12977) or completedq(12977)
step
click Fjorn's Anvil##192071
turnin Hot and Cold##12981 |goto 63.13,62.93
|only if haveq(12981) or completedq(12981)
step
click Hodir's Horn##192078
turnin Hodir's Call##12977 |goto 64.21,65.08
|only if haveq(12977) or completedq(12977)
step
label "Accept_Hodir's_Tribute"
talk Lillehoff##32540 |only if rep("The Sons of Hodir") < Exalted
accept Hodir's Tribute##13559 |goto 66.17,61.45 |or 3 |repeatable |only if rep("The Sons of Hodir") < Exalted
|tip This is a repeatable quest. |only if rep("The Sons of Hodir") < Exalted
|tip Turn in all of your Relics of Ulduar between daily quests. |only if rep("The Sons of Hodir") < Exalted
|tip |only if rep("The Sons of Hodir") < Exalted
You have completed all available dailies with The Sons of Hodir
|tip This guide will reset when more become available.
'|complete not completedq(12994,13006,13003,13046,12981,12977,12741,12732) |next "Begin_Daily_Quests" |or
'|complete (itemcount(44724) >= 1 or itemcount(44725) >= 1) and rep("The Sons of Hodir") < Exalted |next "Turnin_Everfrost" |or
step
label "Turnin_Everfrost"
talk Calder##32594
turnin Everfrost##13420 |goto 67.11,60.97 |only if not completedq(13420) |next "Accept_Hodir's_Tribute" |or
Turnin All of Your Everfrost Chips |complete (itemcount(44724) == 0 and itemcount(44725) == 0) or rep("The Sons of Hodir") >= Exalted |or |only if completedq(13420) |next "Accept_Hodir's_Tribute"
|tip You can continue farming up to 10 before turning them in. |only if completedq(13420)
'|accept Remember Everfrost!##13421 |goto 67.11,60.97 |or 4 |repeatable |only if completedq(13420)
'|complete not completedq(12994,13006,13003,13046,12981,12977,12741,12732) |next "Begin_Daily_Quests" |or
step
label "Search_for_Everfrost_Chips"
click Everfrost Chip##193997
|tip They look like small blue ice spikes sticking out of the ground.
|tip They spawn in random locations around Brunnhildar Village, Dun Niffelem, and Thunderfall.
Search for Everfrost Chips |complete false
]])
ZGV.BETAEND()
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Shadowvault Dailies",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the daily quests in the Shadowvault region of Icecrown.",
},[[
step
label "dailies"
talk Baron Sliver##29804
accept Leave Our Mark##12995 |goto Icecrown,42.8,24.9
step
talk The Leaper##30074
accept Shoot 'Em Up##13069 |goto 43.6,25.1
step
talk Vile##30216
accept Vile Like Fire!##13071 |goto 43.1,25.2
step
Click a Jotunheim Rapid-Fire Harpoon to control it |invehicle |q 13069 |goto 33.0,23.9
step
Use your Jotunheim Rapid-Fire Harpoon abilities to shoot at the Jotunheim Proto-Drakes that fly around this area
Shoot down 15 Jotunheim Proto-Drakes & Their Riders |q 13069/1
step
Click the red arrow on your hotbar to stop controlling the Jotunheim Rapid-Fire Harpoon |outvehicle |q 13069
step
kill Njorndar Spear-Sister##30243+, Jotunheim Warrior##29880+, Valhalas Vargul##30250+
Use your Ebon Blade Banner on the Jotunheim vrykul corpses|use Ebon Blade Banner##42480
Plant 15 Ebon Blade Banners near vrykul corpses |q 12995/1 |goto 33.0,27.0
step
Click a Njorndar Proto-Drake to ride it|invehicle |q 13071 |goto 27.2,39.1
step
Use your Proto-Drake abilities near the buildings around this area to:
Burn 8 Vrykul Buildings |q 13071/1 |goto 28.4,37.6
step
Click the red arrow on your vehicle hot bar to stop riding the Njorndar Proto-Drake|script VehicleExit()|outvehicle|c |q 13071
step
talk Baron Sliver##29804
turnin Leave Our Mark##12995 |goto 42.8,24.9
step
talk The Leaper##30074
turnin Shoot 'Em Up##13069 |goto 43.6,25.1
step
talk Vile##30216
turnin Vile Like Fire!##13071 |goto 43.1,25.2
step
You have completed this daily guide today. You can do more dailies tomorrow.
Click here to return to the beginning of the guide. |confirm
|next "dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Death's Rise Dailies",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the daily quests in the Death's Rise region of Icecrown.",
},[[
step
label "dailies"
talk Setaal Darkmender##29396
accept From Their Corpses, Rise!##12813 |goto Icecrown,19.7,48.4
step
talk Aurochs Grimbane##29456
accept Intelligence Gathering##12838 |goto 19.9,48.3
step
talk Uzo Deathcaller##29405
accept No Fly Zone##12815 |goto 19.6,47.8
step
kill Onslaught Harbor Guard##29330+, Onslaught Paladin##29329+, Onslaught Raven Bishop##29338, Onslaught Gryphon Rider##29333+
collect Scarlet Onslaught Trunk Key##40652+|n
Use Darkmender's Tincture on the Onslaught mobs' corpses|use Darkmender's Tincture##40587
Transform 10 Scarlet Onslaught Corpses |q 12813/1 |goto 9.6,44.3
Click Scarlet Onslaught Trunks
|tip They look like small wooden boxes on the ground around this area.
collect 5 Onslaught Intel Documents##40640|q 12838/1 |goto 9.6,44.3
step
Use your Bone Gryphon in your bags while in Onslaught Harbor|use Bone Gryphon##40600
Ride a Bone Gryphon|invehicle|q 12815
step
Use your Bone Gryphon abilities to:
kill 10 Onslaught Gryphon Rider|q 12815/1 |goto 10.2,41.9
step
Get to a safe place and click the red arrow on your vehicle hot bar to stop riding the Bone Gryphon|script VehicleExit()|outvehicle|c |q 12815
step
talk Setaal Darkmender##29396
turnin From Their Corpses, Rise!##12813 |goto Icecrown,19.7,48.4
step
talk Aurochs Grimbane##29456
turnin Intelligence Gathering##12838 |goto 19.9,48.3
step
talk Uzo Deathcaller##29405
turnin No Fly Zone##12815 |goto 19.6,47.8
step
You have completed this daily guide today. You can do more dailies tomorrow.
Click here to return to the beginning of the guide. |confirm
|next "dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\The Storm Peaks\\The Storm Peaks Full Zone Quest Path (Includes Pre-Quests)",{
author="support@zygorguides.com",
description="\nThis guide section contains the quest path for the entire The Storm Peaks zone, which includes the pre-quests to unlock the daily quests in the Brunnhildar Village, Dun Niffelem (The Sons of Hodir), and K3 regions of The Storm Peaks.",
},[[
step
Proceeding to next step |next |only if rep('The Sons of Hodir')<=Neutral
Proceeding to Friendly |next "friendly" |only if rep('The Sons of Hodir')==Friendly
Proceeding to Honored |next "honored" |only if rep('The Sons of Hodir')==Honored
Proceeding to Revered |next "revered" |only if rep('The Sons of Hodir')>=Revered
step
talk Jeer Sparksocket##29431
turnin Luxurious Getaway!##12853 |goto The Storm Peaks,41,86.4
accept Clean Up##12818 |goto The Storm Peaks,41,86.4
step
talk Smilin' Slirk Brassknob##29904
home K3 |goto The Storm Peaks 41.1,85.9
step
talk Gretchen Fizzlespark##29473
accept They Took Our Men!##12843 |goto 41.1,86.1
accept Equipment Recovery##12844 |goto 41.1,86.1
step
talk Ricket##29428
accept Reclaimed Rations##12827 |goto 40.9,85.3
accept Expression of Gratitude##12836 |goto 40.9,85.3
step
talk Skizzle Slickslide##29721
fpath K3 |goto 40.8,84.5
stickystart "gnollrations"
step
Click the Charred Wreckage
|tip They look like various metal parts on the ground around this area.
collect 10 Charred Wreckage##40603|q 12818/1 |goto 39.8,86.4
step
label "gnollrations"
kill Savage Hill gnolls|n
Click Dried Gnoll Rations crates
|tip The Dried Gnoll Rations crates look like wooden boxes sitting on the ground around this area.
collect 16 Dried Gnoll Rations##40645|q 12827/1 |goto 35,83.8
step
kill 1 Gnarlhide|q 12836/1 |goto 30.3,85.7
|tip Standing in front of a tent.
step
talk Jeer Sparksocket##29431
turnin Clean Up##12818 |goto 41,86.4
accept Just Around the Corner##12819 |goto 41,86.4
step
talk Ricket##29428
turnin Reclaimed Rations##12827 |goto 40.9,85.3
turnin Expression of Gratitude##12836 |goto 40.9,85.3
accept Ample Inspiration##12828 |goto 40.9,85.3
step
Click Sparksocket's Tools
|tip They look like a box of tools in the middle of the mine field.  Navigate carefully through the wide paths in the mine field to get here.  You may get blown around in order to get to this spot, but just keep trying.
collect Sparksocket's Tools##40642|q 12819/1 |goto 35.1,87.8
step
talk Jeer Sparksocket##29431
turnin Just Around the Corner##12819 |goto 41,86.4
accept Slightly Unstable##12826 |goto 41,86.4
step
talk Ricket##29428
turnin Slightly Unstable##12826 |goto 40.9,85.3
accept A Delicate Touch##12820 |goto 40.9,85.3
step
Use your Improved Land Mines to place mines on the ground close to each other|use Improved Land Mines##40676
|tip Garm Invaders and Snowblind Followers will run over the mines and die.
kill 12 Garm Attackers|q 12820/1 |goto 43.1,81.2
step
talk Tore Rumblewrench##29430
accept Moving In##12829 |goto 41.7,80
accept Ore Repossession##12830 |goto 41.7,80
step
Click the U.D.E.D. Dispenser next to Tore Rumblewrench
Retrieve a bomb from the dispenser
collect 1 U.D.E.D.##40686|q 12828 |goto 41.7,80
step
HURRY HURRY to 43.9,79.0|goto 43.9,79.0
Use your U.D.E.D. on an Ironwool Mammoth|use U.D.E.D.##40686
|tip They walk around this area spread out.
Click the Mammoth Meat on the ground
collect 8 Hearty Mammoth Meat##40728|q 12828/1
step
Go into the cave to 40.4,77.8|goto 40.4,77.8
kill 12 Crystalweb Spiders|q 12829/1
step
talk Injured Goblin Miner##29434
accept Only Partly Forgotten##12831 |goto 41.5,74.9
step
kill Snowblind Diggers|n
collect 5 Impure Saronite Ore##40744|q 12830/1 |goto 44,75.9
step
kill Icetip Crawlers|n
|tip They are big purple spiders walking around this area inside the cave.
collect 1 Icetip Venom Sac##40944|q 12831/1 |goto 47.1,72.3
step
talk Injured Goblin Miner##29434
turnin Only Partly Forgotten##12831 |goto 43.5,75.2
accept Bitter Departure##12832 |goto 43.5,75.2
step
talk Injured Goblin Miner##29434
Tell the miner you're ready
Escort the Injured Goblin Miner to K3 |q 12832/1 |goto 43.5,75.2
step
Fly up to 39.8,73.3|goto 39.8,73.3
kill Sifreldar Storm Maidens|n
collect 5 Cold Iron Key##40641|q 12843
Click the Rusty Cages
Free 5 Goblin Prisoners |q 12843/1
Click the K3 Equipment crates
|tip The K3 Equipment crates look like wooden crates on the ground around town.
collect 8 K3 Equipment##40726|q 12844/1
step
talk Tore Rumblewrench##29430
turnin Moving In##12829 |goto 41.7,80
turnin Ore Repossession##12830 |goto 41.7,80
step
talk Ricket##29428
turnin A Delicate Touch##12820 |goto 40.9,85.3
turnin Ample Inspiration##12828 |goto 40.9,85.3
turnin Bitter Departure##12832 |goto 40.9,85.3
accept Cell Block Tango##12821 |goto 40.9,85.3
step
talk Gretchen Fizzlespark##29473
turnin They Took Our Men!##12843 |goto 41.1,86.1
accept Leave No Goblin Behind##12846 |goto 41.1,86.1
turnin Equipment Recovery##12844 |goto 41.1,86.1
step
Click the Transporter Power Cell
|tip It looks like a small red barrel.
collect Transporter Power Cell##40731|q 12821/2 |goto 45.1,82.4
step
Use your Transporter Power Cell next to the Teleportation Pad|use Transporter Power Cell##40731
|tip It looks like a tall machine with a fan in the bottom of it.
Activate the Garm Teleporter |q 12821/1 |goto 50.7,81.9
step
talk Ricket##29428
turnin Cell Block Tango##12821 |goto 40.9,85.3
accept Know No Fear##12822 |goto 40.9,85.3
step
talk Gino##29432
accept A Flawless Plan##12823 |goto 50.0,81.8
stickystart "snowblinddevotee"
step
Go inside the cave to [50.5,77.8]
Use your Hardpacked Explosive Bundle next to Frostgut's Altar|use Hardpacked Explosive Bundle##41431
|tip It's a stone altar with a bunch of melted red candles on it.  Follow the path in the cave that spirals up all the way to the top of the cave to find it.
kill Tormar Frostgut##29626 |q 12823/2
step
label "snowblinddevotee"
kill 6 Garm Watcher##29409+ |q 12822/1 |goto 48.1,81.9
kill 8 Snowblind Devotee##29407+ |q 12822/2 |goto 48.1,81.9
step
Go outside and go to 50.0,81.8|goto 50.0,81.8
talk Gino##29432
turnin A Flawless Plan##12823
accept Demolitionist Extraordinaire##12824
step
Go outside and fly up into the cave to 42.8,68.9|goto 42.8,68.9
talk Lok'lira the Crone##29481
turnin Leave No Goblin Behind##12846
accept The Crone's Bargain##12841
step
kill Overseer Syra##29518
collect 1 Runes of the Yrkvinn##40690|q 12841/1 |goto 44.2,68.9
step
talk Lok'lira the Crone##29481
turnin The Crone's Bargain##12841 |goto 42.8,68.9
accept Mildred the Cruel##12905 |goto 42.8,68.9
step
talk Mildred the Cruel##29885
turnin Mildred the Cruel##12905 |goto 44.4,68.9
accept Discipline##12906 |goto 44.4,68.9
step
Use your Disciplining Rod on Exhausted Vrykul|use Disciplining Rod##42837
|tip They are sitting on the ground inside these side tunnels inside this mine.
Discipline 6 Exhausted Vrykul |q 12906/1 |goto 44.8,70.3
step
talk Mildred the Cruel##29885
turnin Discipline##12906 |goto 44.4,68.9
accept Examples to be Made##12907 |goto 44.4,68.9
step
kill 1 Garhal|q 12907/1 |goto 45.4,69.1
|tip Standing off to the side of the path, he has red tattoos on his torso.
step
talk Mildred the Cruel##29885
turnin Examples to be Made##12907 |goto 44.4,68.9
accept A Certain Prisoner##12908 |goto 44.4,68.9
step
talk Lok'lira the Crone##29481
turnin A Certain Prisoner##12908 |goto 42.8,68.9
accept A Change of Scenery##12921 |goto 42.8,68.9
step
Follow the path in the mine east out to the other side to 47.5,69.1|goto 47.5,69.1
talk Lok'lira the Crone##29975
turnin A Change of Scenery##12921
accept Is That Your Goblin?##12969
step
talk Agnetta Tyrsdottar##30154
Tell her to skip the warm up
kill 1 Agnetta Tyrsdottar|q 12969/1 |goto 48.2,69.8
step
talk Lok'lira the Crone##29975
turnin Is That Your Goblin?##12969 |goto 47.5,69.1
accept The Hyldsmeet##12970 |goto 47.5,69.1
step
talk Lok'lira the Crone##29975
Ask her about her proposal
Listen to Lok'lira's proposal |q 12970/1 |goto 47.5,69.1
step
talk Lok'lira the Crone##29975
turnin The Hyldsmeet##12970
accept Taking on All Challengers##12971 |goto 47.5,69.1
step
talk Victorious Challenger##30012
kill 6 Victorious Challenger|q 12971/1 |goto 51,66.4
step
talk Lok'lira the Crone##29975
turnin Taking on All Challengers##12971 |goto 47.5,69.1
accept You'll Need a Bear##12972 |goto 47.5,69.1
step
talk Iva the Vengeful##29997
accept Off With Their Black Wings##12942 |goto 48.4,72.1
accept Yulda's Folly##12968 |goto 48.4,72.1
step
talk Thyra Kvinnshal##30041
accept Aberrations##12925 |goto 48.4,72.1
step
talk Brijana##29592
turnin You'll Need a Bear##12972 |goto 53.1,65.7
accept Bearly Hanging On##12851 |goto 53.1,65.7
step
Click Icefang to ride him|tip Standing down the hill, Icefang is a white bear.
While riding Icefang, use the Flaming Arrow ability on your hotbar to shoot arrows at the Frostworgs and Frost Giants|petaction Flaming Arrow
Burn 7 Frostworgs |q 12851/1 |goto 53.1,65.7
Burn 15 Frost Giants |q 12851/2 |goto 53.1,65.7
step
talk Brijana##29592
turnin Bearly Hanging On##12851 |goto 53.1,65.7
accept Cold Hearted##12856 |goto 53.1,65.7
step
Fly to 63.9,62.5|goto 63.9,62.5
Click the Captive Proto-Drakes to ride them|tip The Captive Proto-Drakes are chained up flying in the sky.
Use your Ice Shard ability on the Brunnhildar Prisoners|petaction Ice Shard|tip The Brunnhildar Prisoners look like blue blocks of ice around this area on the ground.
When your Proto-Drake is holding 3 Brunnhildar Prisoners, start flying toward Brunnhildar Village, the drake will eventually go on autopilot.  Repeat this process 2 more times.
Rescue 9 Brunnhildar Prisoners |q 12856/1
Free 3 Proto-Drakes |q 12856/2
step
talk Brijana##29592
turnin Cold Hearted##12856 |goto 53.1,65.7
accept Deemed Worthy##13063 |goto 53.1,65.7
step
talk Astrid Bjornrittar##29839
turnin Deemed Worthy##13063 |goto 49.7,71.8
accept Making a Harness##12900 |goto 49.7,71.8
step
kill Icemane Yetis|n
collect 3 Icemane Yeti Hide##41424|q 12900/1 |goto 47.9,74.7
step
talk Astrid Bjornrittar##29839
turnin Making a Harness##12900 |goto 49.7,71.8
accept The Last of Her Kind##12983 |goto 49.7,71.8
accept The Slithering Darkness##12989 |goto 49.7,71.8
step
Kill 8 Ravenous Jormungar inside this cave|kill 8 Ravenous Jormungar|q 12989/1 |goto 55.8,63.9
step
Follow the path in the cave to 54.8,60.4|goto 54.8,60.4
Click the Injured Icemaw Matriarch
|tip She's a big white bear laying on the ground inside this cave.
The bear runs back to Brunnhildar Village
Rescue the Icemaw Matriarch |q 12983/1
step
talk Astrid Bjornrittar##29839
turnin The Last of Her Kind##12983 |goto 49.7,71.8
accept The Warm-Up##12996 |goto 49.7,71.8
turnin The Slithering Darkness##12989 |goto 49.7,71.8
step
Use your Reins of the Icemaw Matriarch outside the building to ride a bear|invehicle|c|use Reins of the Warbear Matriarch##42481
step
Use the abilities on your hotbar to fight Kirgaraak
|tip He's a big white yeti.
Defeat Kirgaraak |q 12996/1 |goto 50.8,67.7
step
talk Astrid Bjornrittar##29839
turnin The Warm-Up##12996 |goto 49.7,71.8
accept Into the Pit##12997 |goto 49.7,71.8
step
Click the red arrow to get off the bear|script VehicleExit()|outvehicle|c
step
Use your Reins of the Icemaw Matriarch inside The Pit of the Fang to ride a bear|use Reins of the Warbear Matriarch##42481
Use the abilities on your hotbar to fight Hyldsmeet Warbears
kill 6 Hyldsmeet Warbear|q 12997/1 |goto 49.1,69.4
step
Click the red arrow to get off the bear|script VehicleExit()|outvehicle|c
step
talk Astrid Bjornrittar##29839
turnin Into the Pit##12997 |goto 49.7,71.8
accept Prepare for Glory##13061 |goto 49.7,71.8
step
talk Lok'lira the Crone##29975
turnin Prepare for Glory##13061 |goto 47.5,69.1
accept Lok'lira's Parting Gift##13062 |goto 47.5,69.1
step
talk Gretta the Arbiter##29796
turnin Lok'lira's Parting Gift##13062 |goto 50.9,65.6
accept The Drakkensryd##12886 |goto 50.9,65.6
step
You fly off on a drake and start flying in circles around a tower:
Use your Hyldnir Harpoon in your bags on Hyldsmeet Proto-Drakes to harpoon over to a new drake|use Hyldnir Harpoon##41058
kill Hyldsmeet Drakeriders|n
Repeat this process 9 more times
Defeat 10 Hyldsmeet Drakeriders |q 12886/1
step
They look like light fixtures on the side of the stone columns.
Use your Hyldnir Harpoon in your bags on a Column Ornament to get off the drake|outvehicle|c|use Hyldnir Harpoon##41058
step
talk Thorim##29445
turnin The Drakkensryd##12886 |goto 33.4,58
accept Sibling Rivalry##13064 |goto 33.4,58
step
talk Thorim##29445
Ask him what became of Sif
Hear Thorim's History |q 13064/1 |goto 33.4,58
step
talk Thorim##29445
turnin Sibling Rivalry##13064 |goto 33.4,58
accept Mending Fences##12915 |goto 33.4,58
step
kill 12 Nascent Val'kyr|q 12942/1 |goto 27.3,63.7
kill Valkyrion Aspirants|n
collect 6 Vial of Frost Oil##41612|q 12925 |goto 27.3,63.7
step
Use your Vials of Frost Oil on the Plagued Proto-Drake Eggs|use Vial of Frost Oil##41612
|tip They look like brown spiked eggs sitting in the yellow water around this area.
Try to get 6 at a time
Destroy 30 Plagued Proto-Drake Eggs |q 12925/1 |goto 23.7,58.3
step
kill 1 Yulda the Stormspeaker|q 12968/1
|tip Yulda the Stormspeaker is standing inside this house.
Click the Harpoon Crate|tip The Harpoon Crate looks like a huge square chest.
accept Valkyrion Must Burn##12953 |goto 24,61.8
step
Click the Valkyrion Harpoon Guns
|tip They look like bronze dragon guns.
Use the Flaming Harpoon ability on your hotbar to shoot the tan bundles of straw near buildings and in wagons around this area|petaction Flaming Harpoon
Start 6 Fires |q 12953/1 |goto 26,59.8
step
Click the red arrow to get off the gun|script VehicleExit()|outvehicle|c
step
talk Ricket##29428
turnin Demolitionist Extraordinaire##12824 |goto 40.9,85.3
turnin Know No Fear##12822 |goto 40.9,85.3
accept Overstock##12833 |goto 40.9,85.3
step
Use your Improved Land Mines to place mines on the ground close to each other|use Improved Land Mines##40676
|tip Garm Invaders and Snowblind Followers will run over the mines and die.
kill 12 Garm Invader|q 12833/1 |goto 43.1,81.2
step
talk Ricket##29428
turnin Overstock##12833 |goto 40.9,85.3
step
talk Thyra Kvinnshal##30041
turnin Aberrations##12925 |goto 48.4,72.1
step
talk Iva the Vengeful##29997
turnin Off With Their Black Wings##12942 |goto 48.4,72.1
turnin Yulda's Folly##12968 |goto 48.4,72.1
turnin Valkyrion Must Burn##12953 |goto 48.4,72.1
stickystart "furiousspark"
step
Click the Granite Boulders and get them 1 at a time
|tip The Granite Boulders look like big grey rocks on the ground around this area.
Use Thorim's Charm of Earth on the Stormforged Iron Giants|use Thorim's Charm of Earth##41505
Help the dwarves kill them
kill 5 Stormforged Iron Giants|q 12915/2 |goto 75.8,63
Get Slag Covered Metal
Click the Slag Covered Metal in your bags|use Slag Covered Metal##41556
accept The Refiner's Fire##12922 |goto 75.8,63
step
label "furiousspark"
kill Seething Revenants|n
collect 10 Furious Spark##41558|q 12922/1 |goto 75.4,63.5
step
Click a Granite Boulder and get one
|tip The Granite Boulders look like big grey rocks on the ground around this area.
Use Thorim's Charm of Earth on Fjorn|use Thorim's Charm of Earth##41505
|tip He's a huge fire giant, holding a huge smithing hammer.
Help the dwarves kill him
kill 1 Fjorn|q 12915/1 |goto 77.2,62.9
step
Click Fjorn's Anvil
|tip Fjorn's Anvil is a huge anvil.
turnin The Refiner's Fire##12922 |goto 77.2,62.9
accept A Spark of Hope##12956 |goto 77.2,62.9
step
talk Thorim##29445
turnin A Spark of Hope##12956 |goto 33.4,58
turnin Mending Fences##12915 |goto 33.4,58
accept Forging an Alliance##12924 |goto 33.4,58
step
talk Halvdan##32571
fpath Dun Niffelem |goto 62.6,60.9
step
talk King Jokkum##30105
accept You Can't Miss Him##12966 |goto 65.4,60.2
step
talk Njormeld##30099
turnin You Can't Miss Him##12966|goto 75.4,63.6
accept Battling the Elements##12967 |goto 75.4,63.6
step
Click Snorri to accompany on him|invehicle|c |goto 75.7,63.9
|tip Standing on the side of the road.
step
Use the Gather Snow ability on your hotbar to gather snow from Snowdrifts|petaction Gather Snow
|tip The Snowdrifts look like piles of snow on the ground.
Use the Throw Snowball ability on your hotbar to throw the snow at Seething Revenants|petaction Throw Snowball
kill 10 Seething Revenants|q 12967/1 |goto 76.7,63.4
step
Click the red arrow on your hotbar to leave Snorri|script VehicleExit()|c
step
talk Njormeld##30099
turnin Battling the Elements##12967 |goto 75.4,63.6
step
talk Njormeld##30127
turnin Forging an Alliance##12924 |goto 63.2,63.2
accept A New Beginning##13009 |goto 63.2,63.2
step
Click Fjorn's Anvil
|tip It's a huge anvil on an ice platform.
accept Hot and Cold##12981 |goto 63.2,62.9
step
talk King Jokkum##30105
accept In Memoriam##12975 |goto 65.4,60.2
step
kill Brittle Revenants|n
collect 6 Essence of Ice##42246|q 12981 |goto 69.7,60.2
step
Use your Essences of Ice next to Smoldering Scraps|use Essence of Ice##42246
|tip The Smoldering Scraps look like small smoking pieces of metal on the ground around this area.
Click the Frozen Iron Scraps
collect 6 Frozen Iron Scrap##42252|q 12981/1 |goto 75.3,62.8
step
Click the Horn Fragments
|tip The Horn Fragments look like grey scraps on the ground around this area.
collect 8 Horn Fragment##42162|q 12975/1 |goto 72.1,49.4
Kill mobs in the area.
collect 10 Relic of Ulduar##42780|q 12975 |goto 72.1,49.4
step
talk King Jokkum##30105
turnin In Memoriam##12975 |goto 65.4,60.2
accept A Monument to the Fallen##12976 |goto 65.4,60.2
step
talk Njormeld##30127
turnin A Monument to the Fallen##12976 |goto 63.2,63.2
step
Click Fjorn's Anvil
|tip It's a huge anvil on an ice platform.
turnin Hot and Cold##12981 |goto 63.2,62.9
step
talk Njormeld##30127
accept Forging a Head##12985 |goto 63.2,63.2
step
Click Hodir's Horn
|tip It's a huge bone war horn.
accept Hodir's Call##12977 |goto 64.1,65.1
step
talk King Jokkum##30105
accept Culling Jorcuttar##13011 |goto 65.4,60.2
step
Use your Diamond Tipped Pick on Dead Iron Giants|use Diamond Tipped Pick##42424
kill the Stormforged Ambushers that spawn|n
collect 8 Stormforged Eye##42423|q 12985/1 |goto 69.7,58.9
step
kill Niffelem Forefathers and Restless Frostborn Ghosts|n
Use Hodir's Horn on their corpses|use Hodir's Horn##42164
Free 5 Niffelem Forefathers |q 12977/1 |goto 72.1,51.8
Free 5 Restless Frostborn |q 12977/2 |goto 72.1,51.8
step
talk Njormeld##30127
turnin Forging a Head##12985 |goto 63.2,63.2
accept Placing Hodir's Helm##12987 |goto 63.2,63.2
step
Click Hodir's Horn
|tip It's a huge bone war horn.
turnin Hodir's Call##12977 |goto 64.1,65.1
step
Fly to the tip of this ice spike
Use the Tablets of Pronouncement in your bags|use Tablets of Pronouncement##42442
Mount Hodir's Helm |q 12987/1 |goto 64.3,59.2
step
talk Njormeld##30127
turnin Placing Hodir's Helm##12987 |goto 63.2,63.2
step
Click Hodir's Helm
|tip It's a huge helm on the tip of this ice spike.
accept A Viscious Cleaning##13006 |goto 64.2,59.2
step
kill Viscous Oils inside this cave|n
collect 5 Viscous Oil##42640|q 13006/1 |goto 55.6,63.4
Use your Everfrost Razor on Dead Icemaw Bears|use Everfrost Razor##42732
collect 1 Icemaw Bear Flank##42733|q 13011 |goto 55.6,63.4
step
Follow the path inside the cave to this spot
Use your Icemaw Bear Flank while standing on the small frozen pond with a bunch of rocks on it|use Icemaw Bear Flank##42733
kill 1 Jorcuttar|q 13011/1 |goto 54.7,60.8
step
Go outside and go to 33.4,58.0|goto 33.4,58.0
talk Thorim##29445
turnin A New Beginning##13009
accept Veranus##13050
step
Click the Small Proto-Drake Eggs
|tip They are big spiked brown eggs on top of this mountain in a nest.
collect 5 Small Proto-Drake Egg##42784|q 13050/1 |goto 43.7,67.4
You can find more Small Proto-Drake Eggs at [45.2,66.9]|n
step
talk Thorim##29445
turnin Veranus##13050 |goto 33.4,58
accept Territorial Trespass##13051 |goto 33.4,58
step
Stand in this big nest
Click the Stolen Proto-Dragon Eggs in your bags|use Stolen Proto-Dragon Eggs##42797
Lure Veranus |q 13051/1 |goto 38.7,65.6
step
talk Thorim##29445
turnin Territorial Trespass##13051 |goto 33.4,58
accept Krolmir, Hammer of Storms##13010 |goto 33.4,58
step
Click Hodir's Helm
|tip It's a huge helm on the tip of this ice spike.
turnin A Viscious Cleaning##13006 |goto 64.2,59.2
step
talk King Jokkum##30105
turnin Culling Jorcuttar##13011 |goto 65.4,60.2
step
talk King Jokkum##30105
Ask him what has become of Krolmir
Discover Krolmir's Fate |q 13010/1 |goto 65.4,60.2
step
talk Thorim##30390
turnin Krolmir, Hammer of Storms##13010 |goto 71.4,48.8
accept The Terrace of the Makers##13057 |goto 71.4,48.8
step
talk Hyeyoung Parka##29762
fpath Camp Tunka'lo |goto 65.4,50.6
step
talk Xarantaur##30381
accept The Witness and the Hero##13034 |goto 65.7,51.4
step
Click the First History Scroll
|tip It looks like a white scroll hanging on the wall, with brown symbols on it.
Read the First History Scroll |q 13034/1 |goto 65.8,50.4
step
Click the Second History Scroll
|tip It looks like a white long scroll hanging on the right side of the entrance to this house, with brown symbols on it.
Read the Second History Scroll |q 13034/2 |goto 66.8,50.1
step
Click the Third History Scroll
|tip It looks like a white scroll hanging on the right side of the entrance to this house, with a gray border and brown symbols on it.
Read the Third History Scroll |q 13034/3 |goto 67.5,50.6
step
talk Xarantaur##30381
turnin The Witness and the Hero##13034 |goto 65.7,51.4
accept Memories of Stormhoof##13037 |goto 65.7,51.4
step
The entrance to the cave starts here |goto 62.5,41.5,0.5 |c
step
talk Chieftain Swiftspear##30395
Ask him what he remembers of his brother |q 13037/1 |goto 61.2,39.0
step
talk Chieftain Swiftspear##30395
accept Distortions in Time##13038 |goto 61.2,39.0
step
Use The Chieftain's Totem near the big yellow and black spinning circles inside this cave |use The Chieftain's Totem##42781
Close 4 Frostfloe Rifts |q 13038/1 |goto 61.7,39.8
step
Leave the cave |goto 62.5,41.5,0.5 |c
step
talk Xarantaur##30381
turnin Memories of Stormhoof##13037 |goto 65.7,51.4
turnin Distortions in Time##13038 |goto 65.7,51.4
accept Where Time Went Wrong##13048 |goto 65.7,51.4
accept The Hero's Arms##13049 |goto 65.7,51.4
step
The entrance to the cave starts here |goto 67.0,44.9,0.5 |c
step
kill Scion of Storm##30184+
collect 1 Stormhoof's Spear##42782 |q 13049/1 |goto 67.2,44.3
collect 1 Stormhoof's Mail##42783 |q 13049/2 |goto 67.2,44.3
Click Taunka Artifacts
|tip They look like staves stuck in the ground, scrolls, or baskets laying on the ground inside this cave.
Attune the Lorehammer to Stormhoof's time 6 times |q 13048/1 |goto 67.2,44.3
step
Leave the cave |goto 67.0,44.9,0.5 |c
step
talk Xarantaur##30381
turnin Where Time Went Wrong##13048 |goto 65.7,51.4
turnin The Hero's Arms##13049 |goto 65.7,51.4
accept Changing the Wind's Course##13058 |goto 65.7,51.4
step
Use The Lorehammer in your bags |use The Lorehammer##42918
Go back in time and become Stormhoof |invehicle |q 13058 |goto 64.9,48.1
step
Use your Stormhoof abilities to fight and kill The North Wind
|tip Use the Storm Call ability, whenever it is available, on the ground when The North Wind is next to you.  Spam the Rhino Strike ability whenever you can.  Only use the Earth Shock ability on The North Wind when it is trying to cast its Cyclone spell, to interrupt it.
When The North Wind is dazed, go to 64.6,46.9
Click the Horn of Elemental Fury
|tip It looks like a spiral white horn sitting on the ground.
Restore the True Timeline |q 13058/1 |goto 64.5,47.5
step
talk Xarantaur##30381
turnin Changing the Wind's Course##13058 |goto 65.7,51.4
step
talk Thorim##30295
turnin The Terrace of the Makers##13057 |goto 56.2,51.3
accept The Earthen Oath##13005 |goto 56.2,51.3
accept Loken's Lackeys##13035 |goto 56.2,51.3
step
Use your Horn of the Peaks to summon earthen helpers|use Horn of the Peaks##42840
Fight mobs around this area
kill 7 Iron Sentinel|q 13005/1 |goto 57.3,46.7
kill 20 Iron Dwarf Assailant|q 13005/2 |goto 57.3,46.7
step
Fly up into the building to 55.3,43.3|goto 55.3,43.3
Use your Horn of the Peaks to summon earthen helpers|use Horn of the Peaks##42840
kill Eisenfaust|q 13035/1|tip He's inside this Hall of the Shaper building in the very back of the room.
step
Use your Horn of the Peaks to summon earthen helpers|use Horn of the Peaks##42840
kill Halefnir the Windborn|q 13035/2 |goto 48.6,45.6
|tip Standing in the middle of this huge staircase.
step
Use your Horn of the Peaks to summon earthen helpers|use Horn of the Peaks##42840
kill Duronn the Runewrought|q 13035/3 |goto 45,38.1
|tip Standing at the bottom of this huge staircase.  Use Earth Shock to interrupt his Reconstruction, which will restore all of his health.
step
talk Thorim##30295
turnin The Earthen Oath##13005 |goto 56.3,51.4
turnin Loken's Lackeys##13035 |goto 56.3,51.4
accept The Reckoning##13047 |goto 56.3,51.4
step
talk Thorim##30399
Tell him you are with him
Witness the Reckoning |q 13047/1 |goto 35.9,31.5
step
talk Kabarg Windtamer##29757
fpath Grom'arsh Crash-Site |goto 36.2,49.4
step
talk Blood Guard Lorga##30247
accept The Missing Tracker##13054 |goto 36.4,49.1
accept Emergency Measures##13000 |goto 36.4,49.1
step
talk Olut Alegut##30472
accept Ancient Relics##12882 |goto 37.0,49.5
step
talk Boktar Bloodfury##29651
accept The Missing Bronzebeard##12895 |goto 37.3,49.7
step
talk Peon Gakra##29944
home Grom'arsh Crash-Site |goto The Storm Peaks 37.1,49.5
step
Go inside the cave to 48.5,54.3|goto 48.5,54.3
talk Tracker Val'zij##30469
turnin The Missing Tracker##13054
accept Cave Medicine##13055
step
collect 8 Cave Mushroom##42926|q 13055 |goto 48.3,53.8
|tip They look like two mushrooms on the ground and are found throughout the cave.
kill Infesting Jormungars|n
collect 1 Toxin Gland##42927|q 13055 |goto 48.3,53.8
step
talk Tracker Val'zij##30469
turnin Cave Medicine##13055 |goto 48.5,54.3
accept There's Always Time for Revenge##13056 |goto 48.5,54.3
step
Go deeper into the cave to 48.2,48.1|goto 48.2,48.1
kill Cavedweller Worgs|n
collect 6 Worg Fur##42510|q 13056
kill Gimorak|q 13056/1|tip He patrols around the big room.
step
talk Tracker Val'zij##30469
turnin There's Always Time for Revenge##13056 |goto 48.5,54.3
step
talk King Jokkum##30105
turnin The Reckoning##13047 |goto 65.4,60.2
step
Click the Disturbed Snow pile
collect Burlap-Wrapped Note##40947|q 12895 |goto 36.1,64.1
step
talk Blood Guard Lorga##30247
turnin Emergency Measures##13000 |goto 36.4,49.1
step
talk Boktar Bloodfury##29651
turnin The Missing Bronzebeard##12895 |goto 37.3,49.7
accept The Nose Knows##12909 |goto 37.3,49.7
step
talk Khaliisi##29855
turnin The Nose Knows##12909 |goto 40.8,51.2
accept Sniffing Out the Perpetrator##12910 |goto 40.8,51.2
step
Click Frostbite to ride him.
Use the abilities on your hotbar to keep the dwarves away from you
Track scent to its source |q 12910/1
step
kill Tracker Thulin|q 12910/1
|tip He's sitting on the ground inside this small cave.
collect Brann's Communicator##40971|q 12920 |goto 48.5,60.8
step
Use Brann's Communicator in your bags|use Brann's Communicator##40971
talk Brann Bronzebeard##29579
turnin Sniffing Out the Perpetrator##12910
accept Speak Orcish, Man!##12913
step
talk Moteha Windborn##29937
turnin Speak Orcish, Man!##12913 |goto 37.3,49.7
accept Speaking with the Wind's Voice##12917 |goto 37.3,49.7
step
Kill Stormriders around this area, they drop Voices of the Wind and Relics of Ulduar.
collect 5 Voice of the Wind##41514|q 12917 |goto 28.5,48.5
collect 10 Relic of Ulduar##42780|q 12882 |goto 28.5,48.5
step
talk Olut Alegut##30472
turnin Ancient Relics##12882 |goto 37.0,49.5
step
talk Moteha Windborn##29937
turnin Speaking with the Wind's Voice##12917 |goto 37.3,49.7
step
talk Boktar Bloodfury##29651
accept Catching up with Brann##12920 |goto 37.3,49.7
step
Use Brann's Communicator in your bags|use Brann's Communicator##40971
talk Brann Bronzebeard##29579
Speak with Brann |q 12920/1
step
talk Boktar Bloodfury##29651
turnin Catching up with Brann##12920 |goto 37.3,49.7
accept Pieces of the Puzzle##12926 |goto 37.3,49.7
step
kill Library Guardians|n
collect 6 Inventor's Disk Fragment##41130|n
Click the Inventor's Disk Fragments in your bags to combine them|use Inventor's Disk Fragment##41130
collect The Inventor's Disk##41132|q 12926/1 |goto 37.6,43.5
step
Click Brann's Communicator|use Brann's Communicator##40971
talk Brann Bronzebeard##29579
turnin Pieces of the Puzzle##12926
accept Data Mining##12927
step
Use The Inventor's Disk on Databanks|use The Inventor's Disk##41179
|tip They look like floating round star things.
Gather 7 Hidden Data |q 12927/1 |goto 38.5,44.2
step
Use Brann's Communicator in your bags|use Brann's Communicator##40971
talk Brann Bronzebeard##29579
turnin Data Mining##12927
accept The Library Console##13416
step
Click the Inventor's Library Console
|tip Inside the building, all the way at the end of the hall.
turnin The Library Console##13416 |goto 37.4,46.8
accept Norgannon's Shell##12928 |goto 37.4,46.8
step
Click the Charged Disk in your bags|use Charged Disk##44704
kill Archivist Mechaton that spawns|n
collect Norgannon's Shell##41258|q 12928/1
step
Use Brann's Communicator in your bags|use Brann's Communicator##40971
talk Brann Bronzebeard##29579
turnin Norgannon's Shell##12928
accept Going After the Core##13273
accept The Earthen of Ulduar##12929
step
Click Prospector Soren's Maps
|tip It looks like a tan scroll laying on a wooden box, next to a bonfire.
collect Prospector Soren's Maps##43983 |q 13273/2 |goto 59.2,51.5
step
Click Prospector Khrona's Notes
|tip It looks like an open book laying on a wooden box, next to a tent.
collect Prospector Khrona's Notes##43984 |q 13273/1 |goto 59.8,52.6
step
Use Brann's Communicator in your bags|use Brann's Communicator##40971
talk Brann Bronzebeard##29579
turnin Going After the Core##13273
accept The Core's Keeper##13274
step
The entrance to the big round metal door starts here |goto 56.5,58.5,0.5 |c
|tip It's a big metal hole on in the side of the mountain.
step
kill Athan##31798
collect Norgannon's Core##41260 |q 13274/1 |goto 56.4,52.1
step
Use Brann's Communicator in your bags|use Brann's Communicator##40971
talk Brann Bronzebeard##29579
turnin The Core's Keeper##13274
accept Forging the Keystone##13285
step
Go outside |goto 56.5,58.5,0.5 |c
step
talk Brann Bronzebeard##31810
Tell him you're ready to make the keystone
Help Brann Create the Keystone |q 13285/1
step
talk Boktar Bloodfury##29651
turnin Forging the Keystone##13285 |goto 37.3,49.7
step
talk Breck Rockbrow##29950
fpath Bouldercrag's Refuge |goto 30.6,36.3
step
Go inside the building to 31.4,38.1|goto 31.4,38.1
talk Bouldercrag the Rockshaper##29801
turnin The Earthen of Ulduar##12929
accept Rare Earth##12930
stickystart "enchantedearth"
step
kill Stormforged Raider##29377+
collect 5 Frostweave Cloth##33470 |q 12930/2 |goto 28.9,36.7
step
label "enchantedearth"
Click the Enchanted Earth
|tip They look like big black spikes of rock coming out of the ground at the bottom of this cliff, near the water and all along the cliff side.
collect 7 Enchanted Earth##41614|q 12930/1 |goto 28.3,29.4
step
Go inside the building to 31.4,38.1|goto 31.4,38.1
talk Bouldercrag the Rockshaper##29801
turnin Rare Earth##12930
accept Fighting Back##12931
accept Relief for the Fallen##12937
step
talk Magorn##29963
home Bouldercrag's Refuge |goto The Storm Peaks 30.9,37.3
step
kill Stormforged Raiders##29377+, Stormforged Reavers##29382+
kill 10 Stormforged Attacker |q 12931/1 |goto 28.1,36.7
Use your Telluric Poultice on Fallen Earthen Defenders |use Telluric Poultice##41988
Heal 8 Fallen Earthen Defenders |q 12937/1 |goto 28.1,36.7
step
Go inside the building to 31.4,38.1|goto 31.4,38.1
talk Bouldercrag the Rockshaper##29801
turnin Fighting Back##12931
turnin Relief for the Fallen##12937
accept Slaves of the Stormforged##12957
accept The Dark Ore##12964
step
Go inside the mine to 27.5,49.7|goto 27.5,49.7
kill 3 Stormforged Taskmaster|q 12957/2
talk Captive Mechagnome##29384
Attempt to free 8 Captive Mechagnomes |q 12957/1
Click Ore Carts|tip They look like carts with ore in them.
collect 5 Dark Ore Sample##42109|q 12964/1
step
Go outside and inside the building to 31.4,38.1|goto 31.4,38.1
talk Bouldercrag the Rockshaper##29801
turnin Slaves of the Stormforged##12957
turnin The Dark Ore##12964
accept The Gifts of Loken##12965
step
talk Bruor Ironbane##30152
accept Facing the Storm##12978 |goto 31.3,38.2
stickystart "stormdarkplate"
stickystart "armorspike"
step
Right-click Loken's Fury
|tip It looks like a glowing ball on a pedestal inside this building.
Destroy Loken's Fury |q 12965/1 |goto 24,42.6
step
Right-click Loken's Power
|tip It looks like a glowing ball on a pedestal inside this building.
Destroy Loken's Power |q 12965/2 |goto 26.2,47.7
step
Right-click Loken's Favor
|tip It looks like a glowing ball on a pedestal inside this building.
Destroy Loken's Favor |q 12965/3 |goto 24.6,48.4
step
label "stormdarkplate"
kill Stormforged War Golem##29380+, Stormforged Champion##29370+, Stormforged Magus##29374+
kill 10 Nidavelir Stormforged|q 12978/1 |goto 25,42.9
kill Stormforged War Golem##29380+
collect 1 Dark Armor Plate##42203|n
Click the Dark Armor Plate in your bags |use Dark Armor Plate##42203
accept Armor of Darkness##12979 |goto 25,42.9
step
label "armorspike"
kill Stormforged War Golem##29380+
collect 4 Dark Armor Sample##42204 |q 12979/1 |goto 28.7,43.3
step
Go inside the building to 31.4,38.1|goto 31.4,38.1
talk Bouldercrag the Rockshaper##29801
turnin The Gifts of Loken##12965
step
talk Bruor Ironbane##30152
turnin Facing the Storm##12978 |goto 31.3,38.2
turnin Armor of Darkness##12979 |goto 31.3,38.2
accept The Armor's Secrets##12980 |goto 31.3,38.2
step
The entrance to Mimir's Workshop starts here |goto 33.6,39.6,0.5 |c
step
talk Attendant Tock##30190
Tell him you found a strange armor plate
Investigate the Armor Plate |q 12980/1 |goto 32.0,40.7
step
Leave Mimir's Workshop |goto 33.6,39.6,0.5 |c
step
talk Bruor Ironbane##30152
turnin The Armor's Secrets##12980 |goto 31.3,38.2
step
talk Bouldercrag the Rockshaper##29801
accept Valduran the Stormborn##12984 |goto 31.4,38.1
step
Use Bouldercrag's War Horn inside this building near Valduran the Stormborn |use Bouldercrag's War Horn##42419
Help fight Valduran the Stormborn
kill Valduran the Stormborn |q 12984/1 |goto 24.4,52.1
step
talk Bouldercrag the Rockshaper##29801
turnin Valduran the Stormborn##12984 |goto 31.4,38.1
accept Destroy the Forges!##12988 |goto 31.4,38.1
step
talk Bruor Ironbane##30152
accept Hit Them Where it Hurts##12991 |goto 31.3,38.2
stickystart "forgedart"
step
Use Bouldercrag's Bomb next to the Lightning Forge |use Bouldercrag's Bomb##42441
|tip The Lightning Forge looks like a big brown dwarf head with a big blue crystal on top of it.
Damage the North Lightning Forge |q 12988/1 |goto 29.0,45.8
step
Use Bouldercrag's Bomb next to the Lightning Forge |use Bouldercrag's Bomb##42441
|tip The Lightning Forge looks like a big brown dwarf head with a big blue crystal on top of it.
Damage the Central Lightning Forge |q 12988/2 |goto 29.5,45.9
step
Use Bouldercrag's Bomb next to the Lightning Forge |use Bouldercrag's Bomb##42441
|tip The Lightning Forge looks like a big brown dwarf head with a big blue crystal on top of it.
Damage the South Lightning Forge |q 12988/3 |goto 30.2,46.1
step
label "forgedart"
kill 10 Stormforged Artificer |q 12991/1 |goto 30.0,46.3
step
talk Bouldercrag the Rockshaper##29801
turnin Destroy the Forges!##12988 |goto 31.4,38.1
step
talk Bruor Ironbane##30152
turnin Hit Them Where it Hurts##12991 |goto 31.3,38.2
step
talk Bouldercrag the Rockshaper##29801
accept A Colossal Threat##12993 |goto 31.4,38.1
step
Click the Colossus Attack Specs
|tip It looks like a white scroll laying on a small square metal table.
collect Colossus Attack Specs##42475 |q 12993/1 |goto 28.9,44.1
step
Click the Colossus Defense Specs
|tip It looks like a white scroll laying on an anvil under a white canopy.
collect Colossus Defense Specs##42476 |q 12993/2 |goto 29.9,45.8
step
talk Bouldercrag the Rockshaper##29801
turnin A Colossal Threat##12993 |goto 31.4,38.1
accept The Heart of the Storm##12998 |goto 31.4,38.1
step
The entrance to the big round metal door starts here |goto 32.4,63.9,0.5 |c
|tip It's a big metal hole on in the side of the mountain.
step
Click the Heart of the Storm
|tip Enter the big round metal door and fly down into the hallway, then follow the hallway to this spot.  It looks like a big blue orb, sitting in a three-pronged metal stand.
Attempt to Secure the Heart of the Storm |q 12998/1 |goto 36.2,60.9
step
Go outside |goto 32.4,63.9,0.5 |c
step
talk Bouldercrag the Rockshaper##29801
turnin The Heart of the Storm##12998 |goto 31.4,38.1
accept The Iron Colossus##13007 |goto 31.4,38.1
step
Click the Jormungar Control Orb
|tip It looks like a white glowing ball floating with a golden ring around it.
Start controlling a Jormungar |invehicle |c |q 13007 |goto 27.2,35.9
step
In order to move as the Jormungar, use the Submerge ability on your hotbar.  When you want to come back up to the surface, use the Emerge ability while submerged underground.
kill Iron Colossus |q 13007/1 |goto 27.2,42.0
|tip In order to kill the Iron Colossus, simply spam your Jormungar Strike and Acid Breath abilities when the Iron Colossus is close to you.  When he jumps up to do a ground slam, quickly use your Submerge ability and run away from the Iron Colossus.  Do not try to get behind him, as well will just spin around and ground slam you.  Repeat this process
step
Click the red arrow button on your hotbar to stop controlling the Jormungar |outvehicle |c |q 13007
step
talk Bouldercrag the Rockshaper##29801
turnin The Iron Colossus##13007 |goto 31.4,38.1
step
label "hub"
Proceeding to Friendly Dailies |next "friendly" |only if rep('The Sons of Hodir')<=Friendly
Proceeding to Honored Dailies |next "honored" |only if rep('The Sons of Hodir')==Honored
Proceeding to Revered Dailies |next "revered" |only if rep('The Sons of Hodir')>=Revered
step
label "friendly"
click Hodir's Helm##192080
accept A Viscious Cleaning##13006 |goto The Storm Peaks,64.2,59.2
step
click Fjorn's Anvil##192071
accept Hot and Cold##12981 |goto 63.2,62.9
step
click Hodir's Horn##192078
accept Hodir's Call##12977 |goto 64.1,65.1
step
kill Viscous Oil##30325+
collect 5 Viscous Oil##42640 |q 13006/1 |goto 55.6,63.4
step
click Hodir's Helm##192080
turnin A Viscious Cleaning##13006 |goto 64.2,59.2
step
kill Brittle Revenant##30160+
collect 6 Essence of Ice##42246 |q 12981 |goto 69.7,60.2
step
Use your Essences of Ice next to Smoldering Scraps |use Essence of Ice##42246
|tip The Smoldering Scraps look like small smoking pieces of metal on the ground around this area.
click Frozen Iron Scrap##192127
collect 6 Frozen Iron Scrap##42252 |q 12981/1 |goto 75.3,62.8
step
kill Niffelem Forefather##29974+, Restless Frostborn Ghost##30144+
Use Hodir's Horn on their corpses |use Hodir's Horn##42164
Free 5 Niffelem Forefathers |q 12977/1 |goto 72.1,51.8
Free 5 Restless Frostborn |q 12977/2 |goto 72.1,51.8
step
If you want to grind mobs for Relics of Ulduar, or buy them on the Auction House, to turn in for The Sons of Hodir reputation, this is an awesome spot, as these mobs drop the Relics of Ulduar frequently.  You get 650 The Sons of Hodir reputation for every 10 Relics of Ulduar you collect.  If you don't want to do this, skip this step.
kill Scion of Storm##30184+
|tip They are air elementals all around inside this big cave.
You can also buy the Relics of Ulduar on the Auction House, if you'd like to get the reputation much faster.
collect Relic of Ulduar##42780+|n  |goto 67.0,45.1
|tip You turn these in in multiples of 10.
|confirm
step
click Fjorn's Anvil##192071
turnin Hot and Cold##12981 |goto 63.2,62.9
step
Click Hodir's Horn##7352
turnin Hodir's Call##12977 |goto 64.1,65.1
step
talk Lillehoff##32540
accept Hodir's Tribute##13559 |goto 66.2,61.4
|tip This is a repeatable quest.  Turn in all of your Relics of Ulduar.
|next "hub"
step
label "honored"
talk Lorekeeper Randvir##30252
accept Forging Hodir's Spear##13001 |goto The Storm Peaks,64.8,59.1
step
kill Stoic Mammoth##30260+
collect 3 Stoic Mammoth Hide##42542 |q 13001/2 |goto 59.0,61.2
step
The entrance to the cave starts here |goto 55.9,64.2,0.5 |c |q 13001
step
click Everfrost Shard##192191
collect 3 Everfrost Shard##42541 |q 13001/1 |goto 54.7,60.8
step
Leave the cave |goto 55.9,64.2,0.5 |c |q 13001
step
talk Lorekeeper Randvir##30252
turnin Forging Hodir's Spear##13001 |goto 64.8,59.1
|tip This quest will unlock the How to Slay Your Dragon daily quest.
step
talk Frostworg Denmother##30294
accept Spy Hunter##12994 |goto The Storm Peaks,63.5,59.8
step
Click Hodir's Helm
|tip It's a huge helm on the tip of this ice spike.
accept A Viscious Cleaning##13006 |goto 64.2,59.2
step
Click Hodir's Spear
|tip It's a huge spear hanging from 2 chains.
accept How to Slay Your Dragon##13003 |goto 65.1,60.8
step
Click Fjorn's Anvil
|tip It's a huge anvil on an ice platform.
accept Hot and Cold##12981 |goto 63.2,62.9
step
Click Hodir's Horn
|tip It's a huge bone war horn.
accept Hodir's Call##12977 |goto 64.1,65.1
stickystart "slimeoil"
step
Use your Ethereal Worg's Fang next to the Corpse of the Fallen Worg |use Ethereal Worg's Fang##42479
Follow the wolf that spawns and kill the Stormforged Infiltrator it finds
Repeat this process 2 more times
Kill 3 Stormforged Infiltrators |q 12994/1 |goto 57.2,64.0
step
Use the Spear of Hodir on a Wild Wyrm flying around in the sky |use Spear of Hodir##42769
While fighting the Wild Wyrm, there will be 2 phases to the fight.  Phase 1:
|tip In phase 1 of the fight, you will be underneath the Wild Wyrm.  Use your Grab On ability to keep your grip high, or you will fall off and die.  Repeatedly use your Thrust Spear ability, until you get a message the Wild Wyrm is about to use its claw attack.  When you see that message, use your Dodge Claws ability, and then immediately use your Mighty Spear Thrust ability after that.  Remember to keep your grip up by using your Grab On ability, and repeat this process until phase 2 of the fight begins.
In phase 2 of the fight with the Wild Wyrm, the strategy changes:
|tip In phase 2 of the fight, you will be inside the Wild Wyrm's mouth.  Repeatedly use your Pry Jaws Open ability, try to stack it 20 times.  After you stack your Pry Jaws ability 20 times (which will give your Fatal Strike ability 100% chance to hit), use your Fatal Strike ability to kill the Wild Wyrm.  If you are close to dying, just stack your Pry Jaws Open ability as many times as you can, then use your Fatal Strike ability before you die, and hope it kills the Wild Wyrm.
Kill the Wild Wyrm |q 13003/1 |goto 56.6,64.3
step
label "slimeoil"
kill Viscous Oil##30325+
|tip They look like slimes inside this cave.
collect 5 Viscous Oil##42640 |q 13006/1 |goto 55.6,63.4
step
talk Frostworg Denmother##30294
turnin Spy Hunter##12994 |goto 63.5,59.8
step
Click Hodir's Helm
|tip It's a huge helm on the tip of this ice spike.
turnin A Viscious Cleaning##13006 |goto 64.2,59.2
step
Click Hodir's Spear
|tip It's a huge spear hanging from 2 chains.
turnin How to Slay Your Dragon##13003 |goto 65.1,60.8
step
kill Brittle Revenant##30160+
collect 6 Essence of Ice##42246 |q 12981 |goto 69.7,60.2
step
Use your Essences of Ice next to Smoldering Scraps |use Essence of Ice##42246
|tip The Smoldering Scraps look like small smoking pieces of metal on the ground around this area.
Click the Frozen Iron Scraps
collect 6 Frozen Iron Scrap##42252 |q 12981/1 |goto 75.3,62.8
step
kill Niffelem Forefather##29974+, Restless Frostborn Ghost##30144+
Use Hodir's Horn on their corpses |use Hodir's Horn##42164
Free 5 Niffelem Forefathers |q 12977/1 |goto 72.1,51.8
Free 5 Restless Frostborn |q 12977/2 |goto 72.1,51.8
step
If you want to grind mobs for Relics of Ulduar, or buy them on the Auction House, to turn in for The Sons of Hodir reputation, this is an awesome spot, as these mobs drop the Relics of Ulduar frequently.  You get 650 The Sons of Hodir reputation for every 10 Relics of Ulduar you collect.  If you don't want to do this, skip this step.
kill Scion of Storm##30184+ |goto 67.0,45.1
|tip They are air elementals all around inside this big cave.
You can also buy the Relics of Ulduar on the Auction House, if you'd like to get the reputation much faster.
collect Relic of Ulduar##42780+|n |goto 67.0,45.1
|tip You turn these in in multiples of 10.
|confirm
step
Click Fjorn's Anvil
|tip It's a huge anvil on an ice platform.
turnin Hot and Cold##12981 |goto 63.2,62.9
step
Click Hodir's Horn
|tip It's a huge bone war horn.
turnin Hodir's Call##12977 |goto 64.1,65.1
step
talk Lillehoff##32540
accept Hodir's Tribute##13559 |goto 66.2,61.4
|tip This is a repeatable quest.  Turn in all of your Relics of Ulduar.
|next "hub"
step
label "revered"
talk Frostworg Denmother##30294
accept Spy Hunter##12994 |goto The Storm Peaks,63.5,59.8
step
Click Hodir's Helm
|tip It's a huge helm on the tip of this ice spike.
accept A Viscious Cleaning##13006 |goto 64.2,59.2
step
Click Hodir's Spear
|tip It's a huge spear hanging from 2 chains.
accept How to Slay Your Dragon##13003 |goto 65.1,60.8
step
Click Arngrim the Insatiable
accept Feeding Arngrim##13046 |goto 67.6,59.9
step
Click Fjorn's Anvil
|tip It's a huge anvil on an ice platform.
accept Hot and Cold##12981 |goto 63.2,62.9
step
Click Hodir's Horn
|tip It's a huge bone war horn.
accept Hodir's Call##12977 |goto 64.1,65.1
stickystart "viscousslime"
step
Use your Ethereal Worg's Fang next to the Corpse of the Fallen Worg |use Ethereal Worg's Fang##42479
Follow the wolf that spawns and kill the Stormforged Infiltrator it finds
Repeat this process 2 more times
Kill 3 Stormforged Infiltrators |q 12994/1 |goto 57.2,64.0
step
Use the Spear of Hodir on a Wild Wyrm flying around in the sky |use Spear of Hodir##42769
While fighting the Wild Wyrm, there will be 2 phases to the fight.  Phase 1:
|tip In phase 1 of the fight, you will be underneath the Wild Wyrm.  Use your Grab On ability to keep your grip high, or you will fall off and die.  Repeatedly use your Thrust Spear ability, until you get a message the Wild Wyrm is about to use its claw attack.  When you see that message, use your Dodge Claws ability, and then immediately use your Mighty Spear Thrust ability after that.  Remember to keep your grip up by using your Grab On ability, and repeat this process until phase 2 of the fight begins.
In phase 2 of the fight with the Wild Wyrm, the strategy changes:
|tip In phase 2 of the fight, you will be inside the Wild Wyrm's mouth.  Repeatedly use your Pry Jaws Open ability, try to stack it 20 times.  After you stack your Pry Jaws ability 20 times (which will give your Fatal Strike ability 100% chance to hit), use your Fatal Strike ability to kill the Wild Wyrm.  If you are close to dying, just stack your Pry Jaws Open ability as many times as you can, then use your Fatal Strike ability before you die, and hope it kills the Wild Wyrm.
Kill the Wild Wyrm |q 13003/1 |goto 56.6,64.3
step
Use Arngrim's Tooth on Roaming Jormungars |use Arngrim's Tooth##42774
Fight Disembodied Jormungars until Arngrim the Insatiable comes to eat them
Feed Arngrim's Spirit 5 Times |q 13046/1 |goto 56.4,65.0
step
label "viscousslime"
kill Viscous Oil##30325+
|tip They look like slimes inside this cave.
collect 5 Viscous Oil##42640 |q 13006/1 |goto 55.6,63.4
step
talk Frostworg Denmother##30294
turnin Spy Hunter##12994 |goto 63.5,59.8
step
Click Hodir's Helm
|tip It's a huge helm on the tip of this ice spike.
turnin A Viscious Cleaning##13006 |goto 64.2,59.2
step
Click Hodir's Spear
|tip It's a huge spear hanging from 2 chains.
turnin How to Slay Your Dragon##13003 |goto 65.1,60.8
step
Click Arngrim the Insatiable
turnin Feeding Arngrim##13046 |goto 67.6,59.9
step
kill Brittle Revenant##30160+
collect 6 Essence of Ice##42246 |q 12981 |goto 69.7,60.2
step
Use your Essences of Ice next to Smoldering Scraps |use Essence of Ice##42246
|tip The Smoldering Scraps look like small smoking pieces of metal on the ground around this area.
Click the Frozen Iron Scraps
collect 6 Frozen Iron Scrap##42252 |q 12981/1 |goto 75.3,62.8
step
kill Niffelem Forefather##29974+, Restless Frostborn Ghost##30144+
Use Hodir's Horn on their corpses |use Hodir's Horn##42164
Free 5 Niffelem Forefathers |q 12977/1 |goto 72.1,51.8
Free 5 Restless Frostborn |q 12977/2 |goto 72.1,51.8
step
If you want to grind mobs for Relics of Ulduar, or buy them on the Auction House, to turn in for The Sons of Hodir reputation, this is an awesome spot, as these mobs drop the Relics of Ulduar frequently.  You get 650 The Sons of Hodir reputation for every 10 Relics of Ulduar you collect.  If you don't want to do this, skip this step.
kill Scion of Storm##30184+
|tip They are air elementals all around inside this big cave.
You can also buy the Relics of Ulduar on the Auction House, if you'd like to get the reputation much faster.
collect Relic of Ulduar##42780+|n |goto 67.0,45.1
|tip You turn these in in multiples of 10.
|confirm
step
Click Fjorn's Anvil
|tip It's a huge anvil on an ice platform.
turnin Hot and Cold##12981 |goto 63.2,62.9
step
Click Hodir's Horn
|tip It's a huge bone war horn.
turnin Hodir's Call##12977 |goto 64.1,65.1
step
talk Lillehoff##32540
accept Hodir's Tribute##13559 |n |goto 66.2,61.4
|tip This is a repeatable quest.  Turn in all of your Relics of Ulduar.
Click here to return to the beginning of the Dailies |confirm
|next "hub" |only if rep('The Sons of Hodir')<=Exalted
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\The Storm Peaks\\Dun Niffelem (The Sons of Hodir) Dailies",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the daily quests in the Brunnhildar Village region of The Storm Peaks. If you are not Revered with The Sons of Hodir, you will not be able to accept some of the quests in this guide section. To become Revered with The Sons of Hodir, use the The Sons of Hodir (Friendly), The Sons of Hodir (Honored) - Pre-Quest, and The Sons of Hodir (Honored) guide sections in the Reputation section of the Dailies guide.",
},[[
step
talk Frostworg Denmother##30294
accept Spy Hunter##12994 |goto The Storm Peaks,63.5,59.8
step
Click Hodir's Helm
|tip It's a huge helm on the tip of this ice spike.
accept A Viscious Cleaning##13006 |goto 64.2,59.2
step
Click Hodir's Spear
|tip It's a huge spear hanging from 2 chains.
accept How to Slay Your Dragon##13003 |goto 65.1,60.8
step
Click Arngrim the Insatiable
accept Feeding Arngrim##13046 |goto 67.6,59.9
step
Click Fjorn's Anvil
|tip It's a huge anvil on an ice platform.
accept Hot and Cold##12981 |goto 63.2,62.9
step
Click Hodir's Horn
|tip It's a huge bone war horn.
accept Hodir's Call##12977 |goto 64.1,65.1
stickystart "viscouscave"
step
Use your Ethereal Worg's Fang next to the Corpse of the Fallen Worg |use Ethereal Worg's Fang##42479
Follow the wolf that spawns and kill the Stormforged Infiltrator it finds
Repeat this process 2 more times
Kill 3 Stormforged Infiltrators |q 12994/1 |goto 57.2,64.0
step
Use the Spear of Hodir on a Wild Wyrm flying around in the sky |use Spear of Hodir##42769
While fighting the Wild Wyrm, there will be 2 phases to the fight.  Phase 1:
|tip In phase 1 of the fight, you will be underneath the Wild Wyrm.  Use your Grab On ability to keep your grip high, or you will fall off and die.  Repeatedly use your Thrust Spear ability, until you get a message the Wild Wyrm is about to use its claw attack.  When you see that message, use your Dodge Claws ability, and then immediately use your Mighty Spear Thrust ability after that.  Remember to keep your grip up by using your Grab On ability, and repeat this process until phase 2 of the fight begins.
In phase 2 of the fight with the Wild Wyrm, the strategy changes:
|tip In phase 2 of the fight, you will be inside the Wild Wyrm's mouth.  Repeatedly use your Pry Jaws Open ability, try to stack it 20 times.  After you stack your Pry Jaws ability 20 times (which will give your Fatal Strike ability 100% chance to hit), use your Fatal Strike ability to kill the Wild Wyrm.  If you are close to dying, just stack your Pry Jaws Open ability as many times as you can, then use your Fatal Strike ability before you die, and hope it kills the Wild Wyrm.
Kill the Wild Wyrm |q 13003/1 |goto 56.6,64.3
step
Use Arngrim's Tooth on Roaming Jormungars |use Arngrim's Tooth##42774
Fight Disembodied Jormungars until Arngrim the Insatiable comes to eat them
Feed Arngrim's Spirit 5 Times |q 13046/1 |goto 56.4,65.0
step
label "viscouscave"
kill Viscous Oil##30325+
|tip They look like slimes inside this cave.
collect 5 Viscous Oil##42640 |q 13006/1 |goto 55.6,63.4
step
talk Frostworg Denmother##30294
turnin Spy Hunter##12994 |goto 63.5,59.8
step
Click Hodir's Helm
|tip It's a huge helm on the tip of this ice spike.
turnin A Viscious Cleaning##13006 |goto 64.2,59.2
step
Click Hodir's Spear
|tip It's a huge spear hanging from 2 chains.
turnin How to Slay Your Dragon##13003 |goto 65.1,60.8
step
Click Arngrim the Insatiable
turnin Feeding Arngrim##13046 |goto 67.6,59.9
step
kill Brittle Revenant##30160+
collect 6 Essence of Ice##42246 |q 12981 |goto 69.7,60.2
step
Use your Essences of Ice next to Smoldering Scraps |use Essence of Ice##42246
|tip The Smoldering Scraps look like small smoking pieces of metal on the ground around this area.
Click the Frozen Iron Scraps
collect 6 Frozen Iron Scrap##42252 |q 12981/1 |goto 75.3,62.8
step
kill Niffelem Forefather##29974+, Restless Frostborn Ghost##30144+
Use Hodir's Horn on their corpses |use Hodir's Horn##42164
Free 5 Niffelem Forefathers |q 12977/1 |goto 72.1,51.8
Free 5 Restless Frostborn |q 12977/2 |goto 72.1,51.8
step
Click Fjorn's Anvil
|tip It's a huge anvil on an ice platform.
turnin Hot and Cold##12981 |goto 63.2,62.9
step
Click Hodir's Horn
|tip It's a huge bone war horn.
turnin Hodir's Call##12977 |goto 64.1,65.1
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\The Storm Peaks\\K-3 and Brunnhildar Village Dailies",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the daily quests in the Brunnhildar Village region of The Storm Peaks.",
},[[
step
label "dailies"
talk Gretta the Arbiter##29796
You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
accept Back to the Pit##13424 |or |goto The Storm Peaks,50.9,65.6
accept Defending Your Title##13423 |or |goto The Storm Peaks,50.9,65.6
accept Maintaining Discipline##13422 |or |goto The Storm Peaks,50.9,65.6
accept The Aberrations Must Die##13425 |or |goto The Storm Peaks,50.9,65.6
stickystart "victoriouschallenge"
step
Use your Reins of the Icemaw Matriarch inside The Pit of the Fang to ride a bear|use Reins of the Icemaw Matriarch##42499
Use the abilities on your hotbar to fight Hyldsmeet Warbears
kill 6 Hyldsmeet Warbear|q 13424/1 |goto 49.4,67.6
step
label "victoriouschallenge"
talk Victorious Challenger##30012
kill 6 Victorious Challenger|q 13423/1 |goto 50.4,67.5
step
The entrance to the Forlorn Mine is here |goto 47.1,68.5,0.5 |c |q 13422
step
Use your Disciplining Rod on Exhausted Vrykul|use Disciplining Rod##42837
|tip They are sitting on the ground inside these side tunnels inside this mine.
Discipline 6 Exhausted Vrykul |q 13422/1 |goto 44.9,70.1
step
Leave the mine |goto 47.1,68.5,0.5 |c |q 13422
step
kill Valkyrion Aspirant##29569+
collect 6 Vial of Frost Oil##41612 |q 13425 |goto 27.3,63.7
step
Use your Vials of Frost Oil on the Plagued Proto-Drake Eggs |use Vial of Frost Oil##41612
|tip They look like brown spiked eggs sitting in the yellow water around this area.
Try to get 6 at a time
Destroy 30 Plagued Proto-Drake Eggs |q 13425/1 |goto 23.7,58.3
step
talk Gretta the Arbiter##29796
You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
turnin Back to the Pit##13424 |goto 50.9,65.6
turnin Defending Your Title##13423 |goto 50.9,65.6
turnin Maintaining Discipline##13422 |goto 50.9,65.6
turnin The Aberrations Must Die##13425 |goto 50.9,65.6
step
talk Ricket##29428
accept Overstock##12833 |goto The Storm Peaks,40.9,85.3
step
Use your Improved Land Mines to place mines on the ground close to each other|use Improved Land Mines##40676
|tip Garm Invaders and Snowblind Followers will run over the mines and die.
kill 12 Garm Invader |q 12833/1 |goto 43.1,81.2
step
talk Ricket##29428
turnin Overstock##12833 |goto 40.9,85.3
step
You have completed this daily guide today. You can do more dailies tomorrow.
Click here to return to the beginning of the guide. |confirm
|next "dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Zul'Drak\\The Argent Stand Dailies with Pre-Quests",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the daily quests in the The Argent Stand region of Zul'Drak.",
},[[
#include "ArgentT_Quests"
step
label "dailies"
The Zul'Drak daily quests are timed, so having an epic flying mount will help you get them done a lot faster and easier.  You will receive 650 extra Argent Crusade reputation and 18 extra gold by completing these quests within 20 minutes.
step
talk Commander Kunz##28039
accept Troll Patrol##12587 |or |goto Zul'Drak,40.3,66.6
accept Troll Patrol##12563 |or |goto Zul'Drak,40.3,66.6
accept Troll Patrol##12501 |or |goto Zul'Drak,40.3,66.6
step
talk Alchemist Finklestein##28205
accept Troll Patrol: The Alchemist's Apprentice##12541 |goto 35.0,52.1
Tell Alchemist Finklestein you are ready to begin
Some of the items he asks you for can be found in both of the rooms on either side of you.  Those items are:
|tip Hairy Herring Heads, Icecrown Bottled Water, Knotroot, Muddy Mire Maggots, Pickled Eagle Egg, Pulverized Gargoyle Teeth, Putrid Pirate Perspiration, Seasoned Cider Slider, Speckled Guano, Spiky Spider Eggs, Withered Bat Wings
Here are the items that are only found in the ROOM ON THE LEFT:
|tip Abomination Guts, Blight Crystal, Chilled Serpent Mucus, Crushed Basilisk Crystals, Frozen Spider Ichor, Prismatic Mojo, Raptor Claw
Here are the items that are only found in the ROOM ON THE RIGHT:
|tip Amberseed, Ancient Ectoplasm, Crystallized Hogsnot, Ghoul Drool, Trollbane, Shrunken Dragon's Claw, Wasp's Wings
Collect the item's he calls for and bring them back to him and click Finklestein's Cauldron to add the items he needs
Create the Truth Serum |q 12541/1 |goto 35.0,52.1
|tip This quest will be MUCH easier and faster once you start to remember where each item is.
step
talk Alchemist Finklestein##28205
turnin Troll Patrol: The Alchemist's Apprentice##12541 |goto 35.0,52.1
step
talk Captain Grondel##28043
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept Troll Patrol: Couldn't Care Less##12594 |or |goto 48.1,63.9
accept Troll Patrol: Creature Comforts##12585 |or |goto 48.1,63.9
accept Troll Patrol: Whatdya Want, a Medal?##12519 |or |goto 48.1,63.9
stickystart "mossyrampage"
stickystart "drakcorpse"
step
Click Dead Thornwoods
|tip They look like curved thorny roots coming out of the water around this area.
collect 20 Dead Thornwood##38563|q 12585/1 |goto 46.0,61.8
step
label "drakcorpse"
Click Drakkari Corpses
|tip They look like dead blue trolls laying on the ground around this area.
collect 7 Drakkari Medallion##38333 |q 12519/1 |goto 45.6,62.7
step
label "mossyrampage"
kill Mossy Rampager##28323+ |goto 45.4,61.2
Kill 7 Mossy Rampagers |q 12594/1 |goto 45.4,61.2
step
talk Captain Grondel##28043
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
turnin Troll Patrol: Couldn't Care Less##12594 |goto 48.1,63.9
turnin Troll Patrol: Creature Comforts##12585 |goto 48.1,63.9
turnin Troll Patrol: Whatdya Want, a Medal?##12519 |goto 48.1,63.9
step
talk Captain Rupert##28044
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept Troll Patrol: Done to Death##12568 |or |goto 58.1,72.4
accept Troll Patrol: Intestinal Fortitude##12509 |or |goto 58.1,72.4
accept Troll Patrol: Throwing Down##12591 |or |goto 58.1,72.4
step
Use your Incinerating Oil on Defeated Argent Footmen |use Incinerating Oil##38556
|tip They look like dead soldiers laying on the ground around this area.
Incinerate 5 Argent Footman Corpses |q 12568/1 |goto 56.0,70.8
step
talk Crusade Recruit##28090
Tell them to get out of there
Restore 5 Recruit's Courage |q 12509/1 |goto 51.6,75.1
step
Use your High Impact Grenade next to Nerubian Tunnels|use High Impact Grenade##38574
|tip They look like squarish pyramid dirt mounds around this area.
Seal 5 Nerubian Tunnels |q 12591/1 |goto 53.4,68.7
step
talk Captain Rupert##28044
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
turnin Troll Patrol: Done to Death##12568 |goto 58.1,72.4
turnin Troll Patrol: Intestinal Fortitude##12509 |goto 58.1,72.4
turnin Troll Patrol: Throwing Down##12591 |goto 58.1,72.4
step
talk Captain Brandon##28042
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept Troll Patrol: Can You Dig It?##12588 |or |goto 48.8,78.9
accept Troll Patrol: High Standards##12502 |or |goto 48.8,78.9
accept Troll Patrol: Something for the Pain##12564 |or |goto 48.8,78.9
stickystart "waterpoppy"
step
Use your Steel Spade next to the dirt piles |use Steel Spade##38566
|tip The dirt piles look like big purple-ish mounds of dirt around this area.
Investigate 5 Ancient Dirt Mounds |q 12588/1 |goto 46.8,80.3
step
Use your Argent Crusade Banner next to this stone block |use Argent Crusade Banner##38544
Plant the South Argent Crusade Banner |q 12502/1 |goto 52.5,76.5
step
Use your Argent Crusade Banner next to this stone block |use Argent Crusade Banner##38544
Plant the East Argent Crusade Banner |q 12502/3 |goto 53.3,72.2
step
Use your Argent Crusade Banner next to this stone block |use Argent Crusade Banner##38544
Plant the North Argent Crusade Banner |q 12502/2 |goto 50.6,73.0
step
label "waterpoppy"
Click the Mature Water-Poppy plants
|tip They look like tall white-leaved plants with purple bulbs at the top.
collect 5 Mature Water-Poppy##38552|q 12564/1 |goto 45.6,79.3
step
talk Captain Brandon##28042
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
turnin Troll Patrol: Can You Dig It?##12588 |goto 48.8,78.9
turnin Troll Patrol: High Standards##12502 |goto 48.8,78.9
turnin Troll Patrol: Something for the Pain##12564 |goto 48.8,78.9
step
talk Commander Kunz##28039
turnin Troll Patrol##12563 |goto Zul'Drak,40.3,66.6
turnin Troll Patrol##12587 |goto Zul'Drak,40.3,66.6
turnin Troll Patrol##12501 |goto Zul'Drak,40.3,66.6
step
talk Commander Kunz##28039
accept Congratulations!##12604 |goto 40.3,66.6
|tip You can only get this quest if you complete the Troll Patrol daily in under 20 minutes.
step
You have completed this daily guide today. You can do more dailies tomorrow.
Click here to return to the beginning of the guide. |confirm
|next "dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Cataclysm Dailies\\Deepholm Dailies with Pre-Quests",{
description="\nContains the pre-quests to unlock the daily quests in Deepholm. You must be at least level 30 to complete this guide section.",
},[[
step
label "hub"
Proceeding to proper section |next |only if default
Proceeding to proper section |next "dailies" |only if completedq(26709)
step
#include "H_Therazane_PreQuest"
step
label "dailies"
#include "Therazane_Dailies"
step
You have reached the end of these dailies. Click here to return to the beginning of the guide. |confirm
|next "hub"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Cataclysm Dailies\\Uldum Dailies with Pre-Quests",{
author="support@zygorguides.com",
description="\nContains the pre-quests to unlock the daily quests in Uldum. You must be at least level 30 to complete this guide section.",
},[[
step
The pre-quests for these dailies are in Uldum. You can quest through the guide, or use our Leveling Guide for help. |only if not ZGV.guidesets['LevelingHCATA']
Click here to go to the leveling section to work on this rep |confirm |next "Leveling Guides\\Cataclysm (10-50)\\Uldum (30-50)" |only if ZGV.guidesets['LevelingHCATA']
only if not completedq(28633)
step
label "hub"
talk Nomarch Teneth##46603
accept Thieving Little Pluckers##28250 |goto Uldum 60.3,38.3
step
Use your Tahret Dynasty Mallet next to stacks of Pygmies |use Tahret Dynasty Mallet##63351
|tip They are sitting on each other's shoulders trying to steal fruit out of trees around this area.
Smash 30 Thieving Pluckers |q 28250/1 |goto 59.1,38.4
step
talk Nomarch Teneth##46603
turnin Thieving Little Pluckers##28250 |goto 60.3,38.3
step
talk Weathered Nomad##49523
accept Fire From the Sky##28736 |goto Uldum 41.4,5.5
step
Click the Confiscated Artillery
|tip It looks like a war catapult car machine.
Use the Designate Target ability on your hotbar on the Infantrymen
Slay 100 Infantrymen |q 28736/1 |goto 41.4,5.5
step
talk Weathered Nomad##49523
turnin Fire From the Sky##28736 |goto 41.4,5.5
step
You have reached the end of these dailies. Click here to return to the beginning of the guide. |confirm
|next "hub"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Cataclysm Dailies\\Twighlight Highlands Dailies with Pre-Quests",{
author="support@zygorguides.com",
description="\nWalks you through completing the daily quests in the Bloodgulch region of Twilight Highlands. You must be at least level 30 to complete this guide section.",
},[[
step
The pre-quests for these dailies are in Uldum. You can quest through the guide, or use our Leveling Guide for help. |only if not ZGV.guidesets['LevelingHCATA']
Click here to go to the leveling section to work on this rep |confirm |next "Leveling Guides\\Cataclysm (10-50)\\Twilight Highlands (30-50)" |only if ZGV.guidesets['LevelingHCATA']
only if not completedq(27788)
step
talk Harkkan##46318
accept Total War##28872 |goto Twilight Highlands 55.1,43.6
accept Hook 'em High##28874 |goto Twilight Highlands 55.1,43.6
step
talk Griff##46319
accept Another Maw to Feed##28873 |goto 53.8,43.3
step
talk Grot Deathblow##49387
accept Bring Down the High Shaman##28875 |goto 53.9,42.1
step
talk Malkar##50622
accept Crushing the Wildhammer##28871 |goto 54.0,41.9
stickystart "wildhammerfood"
stickystart "wildhammerinsig"
step
kill High Shaman MacKilligan |q 28875/1 |goto 46.0,33.0
|tip He runs into town to this spot. He is elite and the quest is a group quest, so you may need help killing him.
step
label "wildhammerfood"
Click Thundermar Ale Kegs
|tip They look like wooden barrels on the ground around this area.
Smash 10 Wildhammer Kegs |q 28872/1 |goto 49.1,37.3
Click Wildhammer Food Stores
|tip They look like hanging fish, sliced bread, and legs of meat on the ground around this area.
collect 10 Wildhammer Food Stores##62324 |q 28873/1 |goto 49.1,37.3
You can find more around [46.2,37.4]
step
label "wildhammerinsig"
Use your Barbed Fleshhook on Thundermar War Gryphons |use Barbed Fleshhook##62775
|tip They are big white birds that fly in the air around this area.
kill 4 Thundermar Gryphon Rider |q 28874/1 |goto 51.2,40.4
kill Wildhammer Warbrand##46320+
collect 8 Wildhammer Insignia##62325 |q 28871/1 |goto 51.2,40.4
step
talk Harkkan##46318
turnin Total War##28872 |goto 55.1,43.6
turnin Hook 'em High##28874 |goto 55.1,43.6
step
talk Griff##46319
turnin Another Maw to Feed##28873 |goto 53.8,43.3
step
talk Grot Deathblow##49387
turnin Bring Down the High Shaman##28875 |goto 53.9,42.1
step
talk Malkar##50622
turnin Crushing the Wildhammer##28871 |goto 54.0,41.9
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Cataclysm Dailies\\Tol Barad Dailies",{
achieveid={4874},
patch='40003',
description="\nWalks you through completing the daily quests in Tol Barad.",
},[[
step
label "begin"
You will only be able to accept a total of 6 quests in the following guide steps.
confirm
step
talk 3rd Officer Kronkar##48360
accept A Sticky Task##28684 |goto Tol Barad Peninsula 55.2,81.3
accept Boosting Morale##28680 |goto Tol Barad Peninsula 55.2,81.3
accept Captain P. Harris##28678 |goto Tol Barad Peninsula 55.2,81.3
accept Rattling Their Cages##28679 |goto Tol Barad Peninsula 55.2,81.3
accept Shark Tank##28681 |goto Tol Barad Peninsula 55.2,81.3
accept Thinning the Brood##28683 |goto Tol Barad Peninsula 55.2,81.3
noquest
step
talk Commander Larmash##48358
accept Claiming The Keep##28682 |goto 53.5,80.6
accept Leave No Weapon Behind##28685 |goto 53.5,80.6
accept Not The Friendliest Town##28686 |goto 53.5,80.6
accept Teach A Man To Fish.... Or Steal##28687 |goto 53.5,80.6
accept Walk A Mile In Their Shoes##28721 |goto 53.5,80.6
noquest
step
talk Captain Prug##48363
accept Finish The Job##28693 |goto 54.9,79.3
accept First Lieutenant Connor##28691 |goto 54.9,79.3
accept Magnets, How Do They Work?##28692 |goto 54.9,79.3
accept Salvaging the Remains##28690 |goto 54.9,79.3
accept The Forgotten##28689 |goto 54.9,79.3
noquest
step
talk Private Sarlosk##48361
accept Bomb's Away!##28696 |goto 55.8,78.5
accept Cannonball!##28698 |goto 55.8,78.5
accept Ghostbuster##28697 |goto 55.8,78.5
accept Taking the Overlook Back##28700 |goto 55.8,78.5
accept WANTED: Foreman Wellson##28695 |goto 55.8,78.5
accept Watch Out For Splinters!##28694 |goto 55.8,78.5
noquest
step
Follow the path up |goto 74.3,42.8 < 10
|only if haveq(28700) or haveq(28697) or haveq(28698)
stickystart "cannonstack"
step
kill Commander Largo |q 28700/1 |goto 78.6,42.0 |tip He's at the top of the tower.
|only if haveq(28700)
step
label "cannonstack"
kill Overlook Spectre##47182+, Ghastly Worker##47183+, Overlook Spirit##47181+ |only if haveq(28697)
Slay #14# Largo's Overlook Ghosts |q 28697/1 |goto 78.2,49.0 |only if haveq(28697)
Click Stacks of Cannonballs  |only if haveq(28698)
|tip They look like piles of cannonballs shaped like pyramids on the ground around this area. |only if haveq(28698)
collect 4 Stack of Cannonballs##62818 |q 28698/1 |goto 78.2,49.0 |only if haveq(28698)
|only if haveq(28697) or haveq(28698)
step
Click Strings of Fish
|tip They look like small fish hanging from simple wooden structures on the docks around this area.
collect 22 Rustberg Seabass##63047 |q 28687/1 |goto 69.3,23.1
|only if haveq(28687)
step
kill Suspicious Villager##47657+, Apprehensive Worker##47659+, Rustberg Bandit##47627+
kill 14 Rustberg Village Residents |q 28686/1 |goto 67.6,37.1
|only if haveq(28686)
step
kill 12 Darkwood Lurker |q 28683/1 |goto 54.2,47.0 |only if haveq(28683)
kill Darkwood Broodmother##46507+ |only if haveq(28684)
collect 4 Sticky Silk Gland##62803 |q 28684/1 |goto 54.2,47.0 |only if haveq(28684)
|only if haveq(28683) or haveq(28684)
step
kill Captain P. Harris |q 28678/1 |goto 47.9,8.1
|tip He's walking around on this broken boat.
|only if haveq(28678)
step
kill Tank |q 28681/1 |goto 49.4,19.8 |only if haveq(28681)
|tip He's an elite shark that swims in the water around this area.  This is a group quest, so you will probably need help. |only if haveq(28681)
Click Barrels of Southsea Rum |only if haveq(28680)
|tip They look like barrels underwater around this area. |only if haveq(28680)
collect 6 Barrel of Southsea Rum##62810 |q 28680/1 |goto 49.4,19.8 |only if haveq(28680)
|only if haveq(28681) or haveq(28680)
step
kill 8 Shipwrecked Sailor |q 28679/1 |goto 49.0,29.4
|only if haveq(28679)
step
kill Keep Lord Farson |q 28682/1 |goto 36.1,27.3
|tip He's upstairs in the fort.
|only if haveq(28682)
step
talk Farson Hold Prisoner##48308
Tell you're here to help him escape
Escort the Farson Prisoner |q 28721/1 |goto 37.8,29.1
|tip Follow the Farson Hold Prisoner and protect him.
|only if haveq(28721)
step
Click Racks of Rifles
|tip They look like wooden stands with guns on them around this area.
collect 12 Rusty Rifle##62921 |q 28685/1 |goto 41.2,35.8
|only if haveq(28685)
step
kill Foreman Wellson |q 28695/1 |goto 27.2,47.7
|only if haveq(28695)
step
Click a Cannon
|tip They look like black cannons on this small dock.
Shoot the boats
Destroy #10# Wellson Supply Boats |q 28696/1 |goto 22.2,36.3
|only if haveq(28696)
step
kill Ghastly Dockhand##46641+, Accursed Longshoreman##46630+, Accursed Shipbuilder##46643+
collect 15 Shipyard Lumber##62811 |q 28694/1 |goto 30.1,43.9
|only if haveq(28694)
step
kill 5 Restless Soldier |q 28693/1 |goto 40.2,57.9 |only if haveq(28693)
Use your Magnatized Scrap Collector |use Magnatized Scrap Collector##62829 |only if haveq(28692)
Click Siege Scraps |only if haveq(28692)
|tip They look like metal objects on the ground that appear after your use your Magnatized Scrap Collector. |only if haveq(28692)
collect 7 Siege Engine Scrap##52285 |q 28692/1 |goto 40.2,57.9 |only if haveq(28692)
|only if haveq(28693) or haveq(28692)
stickystart "torturedsouls"
step
kill First Lieutenant Connor |q 28691/1 |goto 38.4,77.6
|tip He's a big skeleton that walks around this area, so you may need to search for him.
|only if haveq(28691)
step
label "torturedsouls"
kill Wandering Soul##46586+, Forgotten Ghoul##46569+ |only if haveq(28690)
collect 9 Cursed Femur##62808 |q 28690/1 |goto 38.1,71.5 |only if haveq(28690)
Click Forgotten Soldier's Tombstones |only if haveq(28689)
|tip They look like taller and slimmer gravestones around this area. |only if haveq(28689)
Release #6# Tortured Souls |q 28689/1 |goto 38.1,71.5 |only if haveq(28689)
|only if haveq(28690) or haveq(28689)
step
talk 3rd Officer Kronkar##48360
turnin A Sticky Task##28684 |goto 55.2,81.3 |only if haveq(28684)
turnin Boosting Morale##28680 |goto 55.2,81.3 |only if haveq(28680)
turnin Captain P. Harris##28678 |goto 55.2,81.3 |only if haveq(28678)
turnin Rattling Their Cages##28679 |goto 55.2,81.3 |only if haveq(28679)
turnin Shark Tank##28681 |goto 55.2,81.3 |only if haveq(28681)
turnin Thinning the Brood##28683 |goto 55.2,81.3 |only if haveq(28683)
step
talk Commander Larmash##48358
turnin Claiming The Keep##28682 |goto 53.5,80.6 |only if haveq(28682)
turnin Leave No Weapon Behind##28685 |goto 53.5,80.6 |only if haveq(28685)
turnin Not The Friendliest Town##28686 |goto 53.5,80.6 |only if haveq(28686)
turnin Teach A Man To Fish.... Or Steal##28687 |goto 53.5,80.6 |only if haveq(28687)
turnin Walk A Mile In Their Shoes##28721 |goto 53.5,80.6 |only if haveq(28721)
step
talk Captain Prug##48363
turnin Finish The Job##28693 |goto 54.9,79.3 |only if haveq(28693)
turnin First Lieutenant Connor##28691 |goto 54.9,79.3 |only if haveq(28691)
turnin Magnets, How Do They Work?##28692 |goto 54.9,79.3 |only if haveq(28692)
turnin Salvaging the Remains##28690 |goto 54.9,79.3 |only if haveq(28690)
turnin The Forgotten##28689 |goto 54.9,79.3 |only if haveq(28689)
step
talk Private Sarlosk##48361
turnin Bomb's Away!##28696 |goto 55.8,78.5 |only if haveq(28696)
turnin Cannonball!##28698 |goto 55.8,78.5 |only if haveq(28698)
turnin Ghostbuster##28697 |goto 55.8,78.5 |only if haveq(28697)
turnin Taking the Overlook Back##28700 |goto 55.8,78.5 |only if haveq(28700)
turnin WANTED: Foreman Wellson##28695 |goto 55.8,78.5 |only if haveq(28695)
turnin Watch Out For Splinters!##28694 |goto 55.8,78.5 |only if haveq(28694)
step
The following daily quests will only be available if the Horde faction currently controls Tol Barad.
Click here to continue |confirm
Click here if your faction does not control Tol Barad |confirm |next "end"
step
talk Commander Zanoth##48069
accept A Huge Problem##28657 |goto Tol Barad 50.9,49.7
accept Swamp Bait##28658 |goto Tol Barad 50.9,49.7
accept The Leftovers##28659 |goto Tol Barad 50.9,49.7
noquest
step
Click here if Staff Sergeant Lazgar is present |goto 51.4,49.6 |confirm |next "lazgar_is_here"
Click here if Drillmaster Razgoth is present |goto 51.4,49.6 |confirm |next "razgoth_is_here"
Click here if Private Garnoth is present |goto 51.4,49.6 |confirm |next "garnoth_is_here"
Only one of these NPCs will be available
step
label "razgoth_is_here"
talk Drillmaster Razgoth##48070
accept D-Block##28663 |goto 51.5,49.7
accept Svarnos##28664 |goto 51.5,49.7
accept Cursed Shackles##28665 |goto 51.5,49.7
|next "exit"
step
label "garnoth_is_here"
talk Private Garnoth##48071
accept Clearing the Depths##28660 |goto 51.5,49.7
accept Learning From The Past##28662 |goto 51.5,49.7
accept The Imprisoned Archmage##28661 |goto 51.5,49.7
|next "exit"
step
label "lazgar_is_here"
talk Staff Sergeant Lazgar##48062
accept Food From Below##28670 |goto 51.5,49.7
accept Prison Revolt##28668 |goto 51.5,49.7
accept The Warden##28669 |goto 51.5,49.7
|next "exit"
step
label "exit"
Continuing...
step
Enter the underground jail |goto 42.7,39.1 < 10
|only if haveq(28664) or haveq(28663) or haveq(28665)
stickystart "cursedshackles"
step
kill Svarnos##47544+
collect Svarnos' Cursed Collar##63143 |q 28664/1 |goto 48.3,30.7
|only if haveq(28664)
step
label "cursedshackles"
kill Imprisoned Imp##47549+, Cell Watcher##47542+, Shivan Destroyer##47540+, Jailed Wrathguard##47548+ |only if haveq(28663)
Slay #10# Demons |q 28663/1 |goto 44.4,30.5 |only if haveq(28663)
Click Cursed Shackles |only if haveq(28665)
|tip They look like gray metal ball and chains laying on the ground all around this area. |only if haveq(28665)
collect 8 Cursed Shackles##63149 |q 28665/1 |goto 44.4,30.5 |only if haveq(28665)
|only if haveq(28663) or haveq(28665)
step
kill Baradin Crocolisk##47591+
collect 8 Crocolisk Hide##63103 |q 28658/1 |goto 42.1,41.8
|only if haveq(28658)
step
Enter the underground jail |goto 44.0,69.2 < 10
|only if haveq(28669) or haveq(28668) or haveq(28670)
step
kill Warden Silva##48036
collect Warden's Keys##63309 |q 28669/1 |goto 37.5,71.7
|only if haveq(28669)
step
kill Imprisoned Worker##47550+, Exiled Mage##47552+ |only if haveq(28668)
Slay #10# Prisoners |q 28668/1 |goto 40.9,78.2 |only if haveq(28668)
Click Crates of Cellblock Rations |only if haveq(28670)
|tip They look like slim square wooden boxes on the ground around this area. |only if haveq(28670)
collect 12 Cellblock Ration##63315 |q 28670/1 |goto 40.9,78.2 |only if haveq(28670)
|only if haveq(28668) or haveq(28670)
step
Enter the underground jail |goto 60.8,50.1 < 10
|only if haveq(28661)
step
kill Archmage Galus##47537
collect Archmage Galus' Staff##63033 |q 28661/1 |goto 56.8,54.8
|only if haveq(28661)
step
kill Captive Spirit##47531+, Ghastly Convict##47590+ |only if haveq(28660)
Slay #9# Ghosts |q 28660/1 |goto 51.4,49.5 |only if haveq(28660)
Click Dusty Prison Journals |only if haveq(28662)
|tip They are books laying on the ground around this area. |only if haveq(28662)
collect 4 Dusty Prison Journal##63034 |q 28662/1 |goto 51.4,49.5 |only if haveq(28662)
|only if haveq(28660) or haveq(28662)
step
kill Alliance Mage Infantry##47598+, Alliance Hunter Infantry##47595+, Alliance Paladin Infantry##47600+, Alliance Warrior Infantry##47599+
kill 12 Alliance Infantry |q 28659/1 |goto Tol Barad 35.8,67.8
|only if haveq(28659)
step
kill Problim |q 28657/1 |goto 52.8,36.7
|tip He's a tall ogre that walks along the road that surrounds Baradin Hold, so you may need to search for him.  He's elite, and the quest is a group quest, so you may need help killing him.
|only if haveq(28657)
step
talk Commander Zanoth##48069
turnin A Huge Problem##28657 |goto 50.9,49.7
turnin Swamp Bait##28658 |goto 50.9,49.7
turnin The Leftovers##28659 |goto 50.9,49.7
step
talk Drillmaster Razgoth##48070
turnin D-Block##28663 |goto 51.5,49.7
turnin Svarnos##28664 |goto 51.5,49.7
turnin Cursed Shackles##28665 |goto 51.5,49.7
|only if haveq(28663) or haveq(28664) or haveq(28665)
step
talk Private Garnoth##48071
turnin Clearing the Depths##28660 |goto 51.5,49.7
turnin Learning From The Past##28662 |goto 51.5,49.7
turnin The Imprisoned Archmage##28661 |goto 51.5,49.7
|only if haveq(28660) or haveq(28662) or haveq(28661)
step
talk Staff Sergeant Lazgar##48062
turnin Food From Below##28670 |goto 51.5,49.7
turnin Prison Revolt##28668 |goto 51.5,49.7
turnin The Warden##28669 |goto 51.5,49.7
|only if haveq(28670) or haveq(28668) or haveq(28669)
step
label "end"
You have reached the end of the dailies for today
Click here to return to the beginning of the guide |confirm |next "begin"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Cataclysm Dailies\\Reputation\\Guardians of Hyjal",{
author="support@zygorguides.com",
description="\nWalks you through the process of obtaining Exalted reputation with the Guardians of Hyjal faction.",
},[[
step
map Mount Hyjal
To gain reputation with the Guardians of Hyjal faction:
Complete all quests in the Mount Hyjal zone
Once you earn Friendly reputation with the Guardians of Hyjal faction, you can buy the Tabard of the Guardians of Hyjal.
|tip Wear the Tabard of the Guardians of Hyjal and use the Dungeon Finder tool to complete random Cataclysm Heroics.  You will gain reputation with the Guardians of Hyjal faction for each mob you kill inside the dungeon, so you can gain reputation very quickly doing this.
You can buy the Tabard of the Guardians of Hyjal by talking to Provisioner Whitecloud at [Mount Hyjal 62.8,23.9]
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Cataclysm Dailies\\Reputation\\The Earthen Ring",{
author="support@zygorguides.com",
description="\nWalks you through the process of obtaining Exalted reputation with The Earthen Ring faction.",
},[[
step
map Shimmering Expanse
To gain reputation with The Earthen Ring faction:
Complete all quests in the Vashj'ir zone
Complete the Deepholm Pre-Quests guide in the Deepholm section.
Complete the Twilight Highlands Pre-Quests guide in the Twilight Highlands section.
Once you earn Friendly reputation with The Earthen Ring faction, you can buy the Tabard of the Earthen Ring.
|tip Wear the Tabard of the Earthen Ring and use the Dungeon Finder tool to complete random Cataclysm Heroics.  You will gain reputation with The Earthen Ring faction for each mob you kill inside the dungeon, so you can gain reputation very quickly doing this.
You can buy the Tabard of the Earthen Ring by talking to Provisioner Arok at [Shimmering Expanse 49.1,42.2]
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Cataclysm Dailies\\Reputation\\Therazane",{
author="support@zygorguides.com",
description="\nWalks you through the process of obtaining Exalted reputation with the Therazane faction.",
},[[
step
map Deepholm
To gain reputation with the Therazane faction:
Complete the Deepholm Pre-Quests guide in the Deepholm section.
Complete the Therazane's Throne Dailies guide section in the Deepholm section.
|tip Do this daily, if you'd like.
Once you earn Friendly reputation with the Therazane faction, you can buy the Tabard of Therazane.
|tip Wear the Tabard of Therazane and use the Dungeon Finder tool to complete random Cataclysm Heroics.  You will gain reputation with the Therazane faction for each mob you kill inside the dungeon, so you can gain reputation very quickly doing this.
You can buy the Tabard of Therazane by talking to D'lom the Collector at [Deepholm 56.95,13.08]
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Cataclysm Dailies\\Reputation\\Ramkahen",{
author="support@zygorguides.com",
description="\nWalks you through the process of obtaining Exalted reputation with the Ramkahen faction.",
},[[
step
map Uldum
To gain reputation with the Ramkahen faction:
Complete the Uldum Pre-Quests guide in the Uldum section.
Complete the Tahret Grounds Dailies guide in the Uldum section.
|tip Do this daily, if you'd like.
Once you earn Friendly reputation with the Ramkahen faction, you can buy the Tabard of Ramkahen.
|tip Wear the Tabard of Ramkahen and use the Dungeon Finder tool to complete random Cataclysm Heroics.  You will gain reputation with the Ramkahen faction for each mob you kill inside the dungeon, so you can gain reputation very quickly doing this.
You can buy the Tabard of Ramkahen by talking to Blacksmith Abasi at [Uldum 54.1,33.3]
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Cataclysm Dailies\\Reputation\\Dragonmaw Clan",{
author="support@zygorguides.com",
description="\nWalks you through the process of obtaining Exalted reputation with the Dragonmaw Clan faction.",
},[[
step
map Twilight Highlands
To gain reputation with the Dragonmaw Clan faction:
Complete the Twilight Highlands Pre-Quests guide in the Twilight Highlands section.
Complete the Bloodgulch Dailies guide in the Twilight Highlands section.
|tip Do this daily, if you'd like.
Once you earn Friendly reputation with the Dragonmaw Clan faction, you can buy the Tabard of the Dragonmaw Clan.
|tip Wear the Tabard of the Dragonmaw Clan and use the Dungeon Finder tool to complete random Cataclysm Heroics.  You will gain reputation with the Dragonmaw Clan faction for each mob you kill inside the dungeon, so you can gain reputation very quickly doing this.
You can buy the Tabard of the Dragonmaw Clan by talking to Grot Deathblow at [Twilight Highlands 53.9,42.1]
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Cataclysm Dailies\\Reputation\\Hellscream's Reach",{
author="support@zygorguides.com",
description="\nWalks you through the process of obtaining Exalted reputation with the Hellscream's Reach faction.",
},[[
step
map Tol Barad Peninsula
To gain reputation with the Hellscream's Reach faction:
Complete the Hellscream's Grasp Dailies guide in the Tol Barad Peninsula section.
|tip Do this daily, if you'd like.
Complete the Baradin Hold Dailies guide in the Tol Barad section.
|tip Do this daily, if you'd like.  The daily quests in this section will only be available if the Horde faction currently controls Tol Barad.
Once you earn Friendly reputation with the Hellscream's Reach faction, you can buy Hellscream's Reach Commendations from Pogg at [54.5,81.3]
|tip They cost 10 Tol Barad Commendations each and you can use the Hellscream's Reach Commendations to increase your Hellscream's Reach reputation by 250.
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Cataclysm Dailies\\Zandalari Menace Quest Line",{
author="support@zygorguides.com",
startlevel=1,
description="\nWalks you through completing the Zandalari Menace quest line in Stranglethorn Vale. You must be level 35 to be able to use this guide.",
},[[
step
talk Bwemba##53081
accept Bwemba's Spirit##29219 |goto Orgrimmar 32.6,68.1
accept To Bambala##29220 |goto Orgrimmar 32.6,68.1
step
talk Kil'karil##52980
turnin To Bambala##29220 |goto Northern Stranglethorn 64.6,40.0
accept Serpents and Poison##29221 |goto Northern Stranglethorn 64.6,40.0
step
kill 10 Jungle Serpent |q 29221/1 |goto 61.2,39.8
Click Injured Bambala Headhunters
|tip They look like green bodies laying on the ground around this area.
Heal 10 Headhunters |q 29221/2 |goto 61.2,39.8
step
talk Kil'karil##52980
turnin Serpents and Poison##29221 |goto 64.6,40.0
step
Next to you:
talk Bwemba##52234
accept Spirits Are With Us##29222
step
Click the Bonfire
|tip It looks like a big pile of burning sticks.
Watch the dialogue
Use the Bonfire near Bambala |q 29222/1 |goto 65.1,39.9
step
Next to you:
talk Bwemba##52234
turnin Spirits Are With Us##29222
step
talk Kil'karil##52980
accept Nesingwary Will Know##29223 |goto 64.6,40.0
step
talk Hemet Nesingwary Jr.##52294
turnin Nesingwary Will Know##29223 |goto 44.1,22.9
accept Track the Tracker##29226 |goto 44.1,22.9
step
talk Grent Direhammer##52346
turnin Track the Tracker##29226 |goto 50.4,21.7
accept The Hunter's Revenge##29227 |goto 50.4,21.7
step
from Mauti?##52349
Bring Grent Direhammer to the body of Mauti |q 29227/1 |goto 64.0,19.6
step
Click the Complete Quest box that appears under you minimap
turnin The Hunter's Revenge##29227
You will automatically accept a new quest:
accept Follow That Cat##29228
step
Go to this spot
Find Mauti's Lair |q 29228/1 |goto 77.7,68.4
step
Next to you:
talk Bwemba##52234
turnin Follow That Cat##29228
accept Mauti##29230
step
from Mauti##52372
Let Bwemba Inspect the Cat |q 29230/1 |goto 77.2,69.0
step
Next to you:
talk Bwemba##52234
turnin Mauti##29230
accept How's the Hunter Holding Up?##29231
step
Enter the cave |goto 76.5,67.5 < 10
step
talk Grent Direhammer##52371
turnin How's the Hunter Holding Up?##29231 |goto 76.1,66.7
accept Bury Me With Me Boots...##29232 |goto 76.1,66.7
step
Click Direhammer's Boots
|tip They look like a small pair of brown boots sitting on the ground inside this cave.
get Direhammer's Boots |q 29232/1 |goto 76.0,66.5
step
talk Grent Direhammer##52371
turnin Bury Me With Me Boots...##29232 |goto 76.1,66.7
step
talk Panther Cub##52374
accept Some Good Will Come##29268 |goto 76.1,66.7
step
Next to you:
talk Bwemba##52234
accept Warn Grom'gol##29233
step
Leave the cave |goto 76.5,67.5 < 10
step
talk Commander Aggro'gosh##52996
turnin Warn Grom'gol##29233 |goto 38.4,50.2
accept Defend Grom'gol##29235 |goto 38.4,50.2
step
from Gurubashi War-Seeker##53165+, Gurubashi Bloodfury##52406+, Gurubashi Soul-Seeker##53166+
|tip Once the bar fills up at the bottom of your screen, you will complete the quest.
Help Defend Grom'gol Base Camp |q 29235/1 |goto 37.5,50.0
step
talk Commander Aggro'gosh##52996
turnin Warn Grom'gol##29233 |goto 38.4,50.2
accept Defend Grom'gol##29235 |goto 38.4,50.2
step
talk Thysta##53008
accept To Hardwrench Hideaway##29236 |goto 39.0,51.2
step
talk Thysta##53008
Tell her you need use of a wyvern to fly you to where the Darkspear emissary went
You will fly to Hardwrench Hideaway
Arrive at Hardwrench Hideaway |q 29236/1 |goto 39.0,51.2
step
Next to you:
talk Bwemba##52234
turnin To Hardwrench Hideaway##29236
accept Voodoo Zombies##29237
step
from Hideaway Zombie##53011+
Rescue 10 Hideaway Survivors |q 29237/1 |goto The Cape of Stranglethorn 36.3,31.8
|tip You may not rescue every zombie you kill.
step
Next to you:
talk Bwemba##52234
turnin Voodoo Zombies##29237
accept Bad Supplies##29238
step
Click the Sack of Spices
|tip It looks like a yellow grain bag sitting on the floor next to the wall inside this building.
Watch the dialogue
Search the Supplies |q 29238/1 |goto 33.6,30.2
step
Next to you:
talk Bwemba##52234
turnin Bad Supplies##29238
step
talk Zombie Survivor##53078
accept Making Contact##29250 |goto 33.5,30.4
step
Enter the tunnel |goto 44.9,65.9 < 10
step
talk Vol'jin##52767
turnin Making Contact##29250 |goto 41.0,73.1
step
Go to this spot
Watch the dialogue
Help Bwemba Find the Darkspear Emissary |q 29219/1 |goto 41.2,73.0
step
Next to you:
talk Bwemba##52234
turnin Bwemba's Spirit##29219
step
To continue with the Zul'Gurub dungeon quest line:
talk Baron Revilgaz##2496
accept Booty Bay's Interests##29251 |goto 41.2,73.1
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Cataclysm Dailies\\Mount Hyjal\\How To Use Firelands Guide Sections - READ FIRST",{
author="support@zygorguides.com",
description="\nWalks you through how to use the Firelands guide sections.",
},[[
step
The Firelands quests are very dynamic.  You will not be able to complete some daily quests each day, as only a limited amount are available each day.
|tip Accept and complete as many as you can, and simply skip over the ones you can't accept that day.
_
You will need to use the Firelands Quests and Firelands Dailies together. Complete as many quests as you can in the Firelands Quests guide section, and use the Firelands Dailies guide section to gain Marks of the World Tree.
|tip Marks of the World Tree are currency needed to complete certain quests in order to unlock more daily quests.
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Cataclysm Dailies\\Mount Hyjal\\Firelands Dailies with Pre-Quests",{
author="support@zygorguides.com",
description="\nContains the pre-quests to unlock the Firelands quest line and daily quests. You must be at least level 32 to complete this guide section.",
},[[
step
Proceeding to proper section |next |only if default
Proceeding to proper section |next "firelands" |only if completedq(25372)
step
#include "H_Firelands_PreQuests"
step
label "firelands"
Proceeding to proper section |next |only if default
Proceedint to proper section |next "dailies" |only if completedq(29311)
step
talk Matoclaw##52669
accept Opening the Door##29145 |goto Mount Hyjal 27.2,62.6
step
talk Arch Druid Hamuul Runetotem##52838
turnin Opening the Door##29145 |goto 27.1,54.5
accept A Ritual of Flame##29195 |goto 27.1,54.5
step
kill Charred Invader##52853+
|tip When the bar at the bottom of your screen becomes full, Leyara will spawn.
kill Leyara##52863
Open the portal to the Firelands |q 29195/1 |goto 27.4,55.6
step
talk Malfurion Stormrage##52845
turnin A Ritual of Flame##29195 |goto 27.4,55.2
accept To the Sanctuary!##29196 |goto 27.4,55.2
step
talk Matoclaw##52669
turnin To the Sanctuary!##29196 |goto 27.2,62.6
accept Caught Unawares##29197 |goto 27.2,62.6
step
kill Raging Invader##52557+
Kill 6 Elementals near Thisalee |q 29197/2 |goto 24.5,55.7
step
kill Raging Invader##52557+
Kill 6 Elementals near Elderlimb |q 29197/1 |goto 34.0,57.5
step
kill Raging Invader##52557+
Kill 6 Elementals near Tholo and Anren |q 29197/3 |goto 41.2,56.4
step
talk Arch Druid Hamuul Runetotem##52838
turnin Caught Unawares##29197 |goto 27.2,62.6
accept The Sanctuary Must Not Fall##29198 |goto 27.2,62.6
step
Watch the cutscene
Protect Malfurion |q 29198/1 |goto 27.0,62.9
step
talk Malfurion Stormrage##52845
turnin The Sanctuary Must Not Fall##29198 |goto 27.0,62.7
step
talk Arch Druid Hamuul Runetotem##52838
accept Calling for Reinforcements##29199 |goto 27.1,62.8
only if not completedq(29199)
step
Use the Firelands Dailies Run guide each day:
|tip You won't be able to do all the dailies yet.  Just do the dailies you can do for now.
earn 125 Mark of the World Tree##416
Click here to load the Dailies guide |confirm |next "dailies"
only if completedq(29214) and completedq(29181)
step
talk Varlan Highbough##53882
accept Calling the Ancients##29283 |goto 44.4,88.8
only if completedq(29214) and completedq(29181)
step
talk Elderlimb##52906
turnin Calling the Ancients##29283 |goto Mount Hyjal 26.0,61.3
only if completedq(29214) and completedq(29181)
step
Use the Firelands Dailies Run guide each day:
|tip You won't be able to do all the dailies yet.  Just do the dailies you can do for now.
earn 20 Mark of the World Tree##416
Click here to load the Dailies guide |confirm |next "dailies"
only if not completedq(29199)
step
talk Arch Druid Hamuul Runetotem##52838
turnin Calling for Reinforcements##29199 |goto 27.1,62.8
only if not completedq(29199)
step
talk Arch Druid Hamuul Runetotem##52838
accept Leyara##29200 |goto Mount Hyjal 27.1,62.8
step
talk Leyara##53014
Ask her why, what did Malfurion ever do to her?
Watch the dialogue
Find Leyara |q 29200/1 |goto 6.7,33.8
step
talk Matoclaw##52669
turnin Leyara##29200 |goto 27.2,62.6
step
talk Malfurion Stormrage##52845
accept Through the Gates of Hell##29201 |goto 27.0,62.7
step
kill Obsidian Slaglord##53381
Secure a foothold in the Firelands |q 29201/1 |goto Molten Front 49.7,85.1
step
Enter the tree |goto 47.3,88.2 < 10
step
talk Malfurion Stormrage##53385
turnin Through the Gates of Hell##29201 |goto 47.1,90.6
step
talk Matoclaw##52669
accept The Fate of Runetotem##29202 |goto Mount Hyjal 27.2,62.6
step
talk Dorda'en Nightweaver##52986
turnin The Fate of Runetotem##29202 |goto 27.5,62.5
Ask him How Hamuul is doing |achieve 5870/4
step
Use the Firelands Dailies Run guide each day:
|tip You won't be able to do all the dailies yet.  Just do the dailies you can do for now.
earn 150 Mark of the World Tree##416
Click here to load the Dailies guide |confirm |next "dailies"
only if not completedq(29181)
step
talk Malfurion Stormrage##52135
accept Druids of the Talon##29181 |goto Molten Front 47.0,91.3
step
talk Skylord Omnuron##50082
turnin Druids of the Talon##29181 |goto Mount Hyjal 43.5,45.9
step
talk Isara Riverstride##50068
accept Flight of the Storm Crows##29182 |goto 42.6,45.8
step
talk Skylord Omnuron##52490
turnin Flight of the Storm Crows##29182 |goto Molten Front 43.0,80.6
step
Use the Firelands Dailies Run guide each day:
|tip You won't be able to do all the dailies yet.  Just do the dailies you can do for now.
earn 150 Mark of the World Tree##416
Click here to load the Dailies guide |confirm |next "dailies"
step
talk Malfurion Stormrage##52135
accept The Shadow Wardens##29214 |goto Molten Front 47.0,91.3
step
talk Captain Saynna Stormrunner##52844
turnin The Shadow Wardens##29214 |goto Mount Hyjal 26.8,62.2
step
talk Matoclaw##52669
accept The Hunt Begins##29215 |goto 27.2,62.6
step
talk Captain Saynna Stormrunner##52493
turnin The Hunt Begins##29215 |goto Molten Front 47.6,90.5
step
from Druid of the Flame##52871+
Click the Dried Acorn
|tip It looks like a brown round nut that appears on the corpse of Druid of the Flame.
accept The Mysterious Seed##29245 |goto 67.0,35.9
step
talk Avrilla##52489
turnin The Mysterious Seed##29245 |goto 50.6,87.2
accept Planting Season##29249 |goto 50.6,87.2
step
Click the Un'Goro Soil
|tip It looks like a big pile of dirt on the ground.
Plant the Acorn |q 29249/1 |goto 53.5,90.7
step
Click the Complete Quest box that appears under your minimap
turnin Planting Season##29249
accept Little Lasher##29254
step
talk Avrilla##52489
turnin Little Lasher##29254 |goto 50.6,87.2
step
talk Matoclaw##52669
accept Aid of the Ancients##29284 |goto 27.2,62.6
step
talk Elderlimb##52488
turnin Aid of the Ancients##29284 |goto Molten Front 43.8,89.0
step
Use the Firelands Dailies Run guide each day:
|tip You won't be able to do all the dailies yet.  Just do the dailies you can do for now.
earn 125 Mark of the World Tree##416
Click here to load the Dailies guide |confirm |next "dailies"
step
talk Damek Bloombeard##53214
accept Additional Armaments##29281 |goto 46.9,90.0
step
talk Matoclaw##52669
turnin Additional Armaments##29281 |goto Mount Hyjal 27.2,62.6
step
talk Matoclaw##52669
accept Well Armed##29282 |goto 27.2,62.6
step
talk Ricket##53196
turnin Well Armed##29282 |goto Molten Front 46.8,90.2
step
Use the Firelands Dailies Run guide each day:
|tip You won't be able to do all the dailies yet.  Just do the dailies you can do for now.
earn 125 Mark of the World Tree##416
Click here to load the Dailies guide |confirm |next "dailies"
step
talk Ayla Shadowstorm##53881
accept Filling the Moonwell##29279 |goto Molten Front 44.1,86.3
step
talk Matoclaw##52669
turnin Filling the Moonwell##29279 |goto Mount Hyjal 27.2,62.6
accept Nourishing Waters##29280 |goto Mount Hyjal 27.2,62.6
step
talk Ayla Shadowstorm##53881
turnin Nourishing Waters##29280 |goto Molten Front 44.1,86.3
step
talk Malfurion Stormrage##52135
accept Into the Depths##29203 |goto 47.0,91.4
step
Enter the cave |goto 57.8,49.6 < 10
step
kill Leyara |q 29203/1 |goto 64.5,59.2
step
Leave the cave |goto 57.8,49.6 < 10
step
talk Malfurion Stormrage##52135
turnin Into the Depths##29203 |goto 47.0,91.4
step
Click the Mailbox |tip It looks like a small wooden box with black slits in it, next to a lamp post.
collect Smoke-Stained Locket##69854 |n
Click the Smoke-Stained Locket in your bags |use Smoke-Stained Locket##69854
accept A Smoke-Stained Locket##29298 |goto Mount Hyjal 42.0,44.5
step
talk Rabine Saturna##11801
turnin A Smoke-Stained Locket##29298 |goto Moonglade 51.7,45.1
accept Unlocking the Secrets Within##29302 |goto Moonglade 51.7,45.1
step
Watch the dialogue
Look into Leyara's Memories |q 29302/1
step
talk Rabine Saturna##11801
turnin Unlocking the Secrets Within##29302 |goto 51.7,45.1
accept Tragedy and Family##29303 |goto 51.7,45.1
step
Click the Night Elf Grave
|tip It looks like a mound of dirt on the ground with a bunch of other dirt graves.
Present the Smoke-Stained Locket
Watch the dialogue
Look deeper into Leyara's memories |q 29303/1 |goto Ashenvale 40.5,53.3
step
Click the Complete Quest box that appears under your minimap
turnin Tragedy and Family##29303
accept The Tipping Point##29310
step
Click the Small Gravestone
|tip It looks like a small gray rock sitting on the ground.
Present the Smoke-Stained Locket
Watch the dialogue
Look deeper into Leyara's memories |q 29310/1 |goto Mount Hyjal 7.6,34.6
step
Click the Complete Quest box that appears under your minimap
turnin The Tipping Point##29310
accept The Rest is History##29311
step
talk Malfurion Stormrage##52135
turnin The Rest is History##29311 |goto Molten Front 47.0,91.4
step
label "dailies"
talk Matoclaw##52669
You will only be able to accept one of these quests per day:
accept Rage Against the Flames##29163 |or |goto Mount Hyjal 27.2,62.6
accept Rage Against the Flames##29149 |or |goto Mount Hyjal 27.2,62.6
accept Rage Against the Flames##29127 |or |goto Mount Hyjal 27.2,62.6
accept Rage Against the Flames##29123 |or |goto Mount Hyjal 27.2,62.6
accept Supplies for the Other Side##29166 |or |goto Mount Hyjal 27.2,62.6
noquest
step
talk Matoclaw##52669
You will only be able to accept one of these quests per day:
accept Call the Flock##29147 |or |goto 27.2,62.6
accept Perfecting Your Howl##29164 |or |goto 27.2,62.6
accept Between the Trees##29125 |or |goto 27.2,62.6
noquest
step
talk Dorda'en Nightweaver##52986
You will only be able to accept one of these quests per day:
accept Relieving the Pain##29246 |or |goto 27.5,62.5
accept Treating the Wounds##29247 |or |goto 27.5,62.5
accept Releasing the Pressure##29248 |or |goto 27.5,62.5
noquest
step
talk Mylune##52671
You will only be able to accept one of these quests per day:
accept Punting Season##29101 |or |goto 27.1,62.0
accept Those Bears Up There##29161 |or |goto 27.1,62.0
noquest
step
talk Captain Soren Moonfall##53073
accept The Protectors of Hyjal##29128 |goto Mount Hyjal 27.3,61.6
stickystart "flameterror"
step
kill Flame Terror##52219+
kill 9 Invader from the Firelands |q 29163/1 |goto 23.8,60.3
only if haveq(29163)
step
kill Flame Terror##52219+
kill 8 Invader from the Firelands |q 29127/1 |goto 23.8,60.3
only if haveq(29127)
step
kill Flame Terror##52219+
kill 7 Invader from the Firelands |q 29149/1 |goto 23.8,60.3
only if haveq(29149)
step
kill Flame Terror##52219+
kill 6 Invader from the Firelands |q 29123/1 |goto 23.8,60.3
only if haveq(29123)
step
label "flameterror"
kill Flame Terror##52219+
Use your Fang of the Wolf next to their corpses |use Fang of the Wolf##69235
Howl Atop 10 Invaders' Corpses |q 29164/1 |goto 24.6,60.4
only if haveq(29164)
step
Click the Complete Quest box that appears under your minimap
turnin Perfecting Your Howl##29164
accept The Call of the Pack##29165
only if haveq(29164) or completedq(29164)
step
Use your Fang of the Wolf |use Fang of the Wolf##69225
kill Lylagar |q 29165/1 |goto 41.8,56.0
only if haveq(29165)
step
Use your Quill of the Bird-Queen |use Quill of the Bird-Queen##69234
Transform into the Wings of Aviana |invehicle |c |q 29147
only if haveq(29147)
step
Use your Call the Flock ability on your action bar near Alpine Songbirds, Forest Owls, and Goldwing Hawks
|tip They are all birds that fly in the sky all around this area.  Alpine Songbirds are small and white.  Forest Owls are medium sized and gray.  Goldwing Hawks are big and brown.
Gather 12 Alpine Songbirds |q 29147/1 |goto 14.1,41.8
Gather 5 Forest Owls |q 29147/2 |goto 14.1,41.8
Gather 2 Goldwing Hawks |q 29147/3 |goto 14.1,41.8
only if haveq(29147)
step
Click the Complete Quest box that appears under your minimap
turnin Call the Flock##29147
accept Wings Aflame##29148
only if haveq(29147) or completedq(29147)
step
Use your Quill of the Bird-Queen |use Quill of the Bird-Queen##69212
kill Millagazor |q 29148/1 |goto 13.4,44.6
|tip When it starts flying up and escaping, let it go - your flock of birds will finish it off. This counts towards _The Meek Shall Inherit Kalimdor_ achievement.
|tip Don't get damaged by any of its _Gout of Fire_ spells. This counts towards the _Infernal Ambassadors_ achievement.
only if haveq(29148)
step
Click the Climbing Tree
|tip They look like small ladders leaning aginst the trees around this area.
Click Hyjal Bear Cubs in the tree
Use your Climb Up ability to climb to the top of the tree
Use your Chuck-a-bear ability to throw the cubs down
|tip Aim the yellow arrow at the bearskin trampoline on the ground.
Chuck 6 Hyjal Bear Cubs to Safety |q 29161/1 |goto 14.3,33.0
|tip Chuck a bear at a sleeping _Core Hound_. This counts towards _The Meek Shall Inherit Kalimdor_ achievement.
only if haveq(29161)
step
Click the Complete Quest box that appears under your minimap
turnin Those Bears Up There##29161
accept Nature's Blessing##29162
only if haveq(29161) or completedq(29161)
step
Use your Emerald of Aessina to summon Pyrachnis |use Emerald of Aessina##69232
Fight Pyrachnis
Use your Emerald of Aessina to cleanse yourself of Pyrachnis' Boiling Poison |use Emerald of Aessina##69232
|tip Spam use this item throughout the entire fight.
|tip If you DON'T use the Emerald in the fight, it counts towards the _Infernal Ambassadors_ achievement.
kill Pyrachnis |q 29162/1 |goto 13.4,44.7
only if haveq(29162)
step
Click Children of Tortolla
|tip They look like small turtles on the ground around this area.
Use your Punt Turtle ability
|tip Use your right mouse button to aim the yellow arrows into the water to the north.
Punt 5 Children of Tortolla into the Water |q 29101/1 |goto 23.6,60.1
|tip Punt a turtle at a fire elemental. This counts towards _The Meek Shall Inherit Kalimdor_ achievement.
only if haveq(29101)
step
Click the Complete Quest box that appears under your minimap
turnin Punting Season##29101
accept Echoes of Nemesis##29122
only if haveq(29101) or completedq(29101)
step
talk Tooga##52425
Tell him you are prepared to face Nemesis
Follow Tooga and fight Nemesis
Run into Tooga's yellow bubble shield right before Nemesis finishes casting his spell
|tip You will see a message in your chat when Nemesis is about to errupt.
kill Nemesis |q 29122/1 |goto 24.1,55.7
only if haveq(29122)
step
Get close to Spirits of Malorne on the ground
|tip They look like deer running around on the ground around this area.
Capture 3 Spirits of Malorne |q 29125/1 |goto 36.2,59.2
only if haveq(29125)
step
Click the Complete Quest box that appears under your minimap
turnin Between the Trees##29125
accept The Power of Malorne##29126
only if haveq(29125) or completedq(29125)
stickystart "flamescale"
step
Use your Guardian's Staff next to the Pile of Ash |use Guardian's Staff##68997
|tip It looks like a mound of dirt on the ground.
kill Galenges |q 29126/1 |goto 41.7,56.1
only if haveq(29126)
step
label "flamescale"
kill Charred Flamewaker##52791+
collect 100 Flamewaker Scale##69679 |q 29248/1 |goto 38.6,56.9
only if haveq(29248)
step
Click Blueroot Vines
|tip They look like grayish colored twisting tree roots sticking out of the ground around this area.
collect 7 Blueroot Vine##69236 |q 29166/1 |goto 29.8,57.8
only if haveq(29166)
step
talk Mylune##52671
You will only be able to turn in one of these quests per day:
turnin Nature's Blessing##29162 |goto 27.1,62.0
turnin Echoes of Nemesis##29122 |goto 27.1,62.0
step
talk Matoclaw##52669
You will only be able to turn in one of these quests per day:
turnin Rage Against the Flames##29163 |goto 27.2,62.6
turnin Rage Against the Flames##29149 |goto 27.2,62.6
turnin Rage Against the Flames##29127 |goto 27.2,62.6
turnin Rage Against the Flames##29123 |goto 27.2,62.6
turnin Wings Aflame##29148 |goto 27.2,62.6
turnin The Call of the Pack##29165 |goto 27.2,62.6
turnin The Power of Malorne##29126 |goto 27.2,62.6
turnin Supplies for the Other Side##29166 |goto 27.2,62.6
step
talk Dorda'en Nightweaver##52986
turnin Releasing the Pressure##29248 |goto 27.5,62.5
step
kill Seething Pyrelord##52300+, Fiery Behemoth##52289+
Slay 6 Invaders at Sethria's Roost |q 29128/1 |goto 30.7,75.9 |only if haveq(29128)
collect 4 Flame-Wreathed Heart##69678 |q 29246/1 |goto 30.7,75.9
|tip You can only loot these from Seething Pyrelords.  Fiery Behemoths will not drop them. |only if haveq(29246)
collect 4 Sulfur-Laced Wrapping##69677 |q 29247/1 |goto 30.7,75.9
|tip You can only loot these from Fiery Behemoths.  Seething Pyrelords will not drop them. |only if haveq(29247)
only if haveq(29128) or haveq(29246) or haveq(29247)
step
talk Dorda'en Nightweaver##52986
You will only be able to turn in one of these quests per day:
turnin Relieving the Pain##29246 |goto 27.5,62.5
turnin Treating the Wounds##29247 |goto 27.5,62.5
step
Proceeding to proper section |next "RestartDailies" |only if default
Proceeding to proper section |next "dailies_2" |only if completedq(29201)
step
label "dailies_2"
talk Avrilla##52489
You will only be able to accept one of these quests per day:
accept Some Like It Hot##29299 |or |goto Molten Front 50.6,87.2
accept Embergris##29255 |or |goto Molten Front 50.6,87.2
accept Steal Magmolias##29257 |or |goto Molten Front 50.6,87.2
step
talk Rayne Feathersong##52467
You will only be able to accept one of these quests per day:
accept Aggressive Growth##29139 |or |goto 48.7,86.9
accept Wisp Away##29143 |or |goto 48.7,86.9
step
talk Ricket##53196
You will only be able to accept one of these quests per day:
|tip She will not offer a quest in this location, on some days.  On those days, she will offer a quest later, in a different location.
accept A Bitter Pill##29263 |or |goto 46.8,90.2
accept Living Obsidium##29278 |or |goto 46.8,90.2
step
talk Captain Irontree##53080
accept Burn Victims##29138 |goto 45.6,86.2
step
talk General Taldris Moonfall##52824
turnin The Protectors of Hyjal##29128 |goto 45.6,85.8
step
talk General Taldris Moonfall##52824
You will only be able to accept two of these quests per day:
accept Hostile Elements##29179 |or 2 |goto 45.6,85.8
accept Traitors Return##29142 |or 2 |goto 45.6,85.8
accept The Harder They Fall##29141 |or 2 |goto 45.6,85.8
accept Breach in the Defenses##29137 |or 2 |goto 45.6,85.8
accept The Dogs of War##29304 |or 2 |goto 45.6,85.8
stickystart "magmolias"
stickystart "lavabubble"
stickystart "emberspit"
stickystart "obsidiummeteor"
step
Stand next to the fire portal with your Wisp
|tip It looks like 2 steam vents and black smoke riding out of the ground.
kill Firekin##53092+
Close a Fire Portal |q 29143/1 |goto 51.6,65.0
only if haveq(29143)
step
label "lavabubble"
Click Lava Bubbles
|tip They look like big light orange bubbles in the pools of lava around this area.
Use The Bitter Pill when the Subterranean Magma Worm is almost done casting its Burning Hunger spell |use The Bitter Pill##69759
kill Subterranean Magma Worm |q 29263/1 |goto 52.8,49.9
only if haveq(29263)
step
label "emberspit"
kill Emberspit Scorpion##53240+
|tip They will spawn Ember Pools on the ground, and your Crimson Lasher will drink from them.
Help the Crimson Lasher Drink from 6 Ember Pools |q 29299/1 |goto 50.7,50.8
only if haveq(29299)
step
label "magmolias"
Click Magmolias
|tip They look like white flowers on the surface of the pools of lave around this area.
collect 8 Magmolia##69725 |q 29257/1 |goto 50.7,50.8
only if haveq(29257)
step
label "obsidiummeteor"
Click Magnetic Stones
|tip They look like stone spikes pointing upward on the ground around this area.
Click Obsidium Meteorites
|tip They look like spiked rocks that crash to the ground in balls of fire after you click the Magnetic Stones.
collect 10 Obsidium Meteorite##69807 |q 29278/1 |goto 50.0,50.8
only if haveq(29278)
step
kill Charred Soldier##52504+, Charred Vanquisher##52503+
collect 5 Embergris##69722 |q 29255/1 |goto 48.2,75.8 |only if haveq(29255)
kill 8 Charred Combatant |q 29179/1 |goto 48.2,75.8 |only if haveq(29179)
kill 3 Druid of the Flame |q 29142/1 |goto 48.2,75.8 |only if haveq(29142)
kill 5 Lava Burster |q 29137/1 |goto 48.2,75.8 |only if haveq(29137)
kill 5 Ancient Charhound |q 29304/1 |goto 48.2,75.8 |only if haveq(29304)
Use your Enchanted Salve on Wounded Hyjal Defenders |use Enchanted Salve##69240
|tip They look like various race corpses laying on the ground around this area. |only if haveq(29138)
Save 8 Wounded Hyjal Defenders |q 29138/1 |goto 48.2,75.8 |only if haveq(29138)
Click Ash Piles
|tip They look like brown mounds of dirt on the ground around this area. |only if haveq(29139)
Plant 5 Smothervines |q 29139/1 |goto 48.2,75.8 |only if haveq(29139)
only if haveq(29255) or haveq(29179) or haveq(29142) or haveq(29137) or haveq(29304) or haveq(29138) or haveq(29139)
step
kill 3 Molten Behemoth |q 29141/1 |goto 47.2,83.7
only if haveq(29141)
step
talk Avrilla##52489
You will only be able to turn in one of these quests per day:
turnin Some Like It Hot##29299 |goto 50.6,87.2
turnin Embergris##29255 |goto 50.6,87.2
turnin Steal Magmolias##29257 |goto 50.6,87.2
step
talk Rayne Feathersong##52467
You will only be able to turn in one of these quests per day:
turnin Aggressive Growth##29139 |goto 48.7,86.9
turnin Wisp Away##29143 |goto 48.7,86.9
step
talk Damek Bloombeard##53214
You will only be able to turn in one of these quests per day:
turnin A Bitter Pill##29263 |goto 46.9,90.0
turnin Living Obsidium##29278 |goto 46.9,90.0
step
talk Captain Irontree##53080
turnin Burn Victims##29138 |goto 45.6,86.2
step
talk General Taldris Moonfall##52824
You will only be able to turn in two of these quests per day:
turnin Hostile Elements##29179 |goto 45.6,85.8
turnin Traitors Return##29142 |goto 45.6,85.8
turnin The Harder They Fall##29141 |goto 45.6,85.8
turnin Breach in the Defenses##29137 |goto 45.6,85.8
turnin The Dogs of War##29304 |goto 45.6,85.8
step
talk General Taldris Moonfall##52824
Decide which daily quest line you want to complete:
|tip You can only do one of these quest lines per day.
accept Into the Fire##29206 |or |goto 45.6,85.8 |next "DruidoftheTalon"
accept The Forlorn Spire##29205 |or |goto 45.6,85.8 |next "ShadowWardens"
If you are not able to accept either quest, Click here to proceed |confirm |next "RestartDailies"
step
label "DruidoftheTalon"
Stand in this spot and wait for a Windcaller to start walking into the fire
|tip The Windcaller will be a Druid of the Talon, with Windcaller in their name, standing in this spot.
Follow the Windcaller through the fire
|tip Walk behind them so the flames don't burn you.
kill Flamewaker Assassin##53328+
kill Pyrelord##52683
Protect the Druid of the Talon Windcaller |q 29206/1 |goto 43.0,80.2
only if haveq(29206)
step
talk Thisalee Crow##52444
turnin Into the Fire##29206 |goto Molten Front 42.5,59.7
accept Flamewakers of the Molten Flow##29264 |goto Molten Front 42.5,59.7
accept Fire Flowers##29265 |goto Molten Front 42.5,59.7
step
talk Anren Shadowseeker##52478
accept Hounds of Shannox##29274 |goto 41.9,61.5
step
kill Flamewaker Sentinel##53085+, Flamewaker Hunter##53143+, Flamewaker Shaman##53093+
kill 8 Flamewaker |q 29264/1 |goto 48.8,60.0
Click Luciferns
|tip They look like small red plants on the ground around this area.
collect 5 Lucifern##69765 |q 29265/1 |goto 48.8,60.0
only if haveq(29264) or haveq(29265)
step
kill Charhound##53152+
collect 6 Houndbone Ash##69816 |q 29274/1 |goto 43.2,51.2
only if haveq(29274)
step
talk Anren Shadowseeker##53233
accept Need... Water... Badly...##29272 |goto 51.9,31.0
step
talk Anren Shadowseeker##53233
Tell her let's get him out of this cave
Follow Anren Shadowseeker through the cave using the air vents
Escort Anren to the Front of the Cave |q 29272/1 |goto 51.9,31.0
step
talk Thisalee Crow##52444
turnin Flamewakers of the Molten Flow##29264 |goto 42.5,59.7
step
Go to this spot and jump |goto 33.5,67.6 < 10
You will fly up out of the cavern |goto Molten Front 33.7,65.7 < 25 |noway |c
step
talk Tholo Whitehoof##52477
turnin Need... Water... Badly...##29272 |goto Molten Front 36.0,59.0
only if haveq(29272)
step
talk Tholo Whitehoof##52477
accept How Hot##29273 |goto 36.0,59.0
step
talk Anren Shadowseeker##52478
accept Hounds of Shannox##29274 |goto 35.8,59.4
step
talk Choluna##52492
turnin Fire Flowers##29265 |goto 36.3,56.3
step
talk Ricket##53304
accept The Bigger They Are##29295 |goto 36.3,56.6
step
talk Morthis Whisperwing##52491
You will only be able to accept one of these quests per day:
accept Peaked Interest##29287 |or |goto 34.5,56.2
accept Fire in the Skies##29290 |or |goto 34.5,56.2
accept Starting Young##29288 |or |goto 34.5,56.2
step
talk Arthorn Windsong##53259
You will only be able to accept one of these quests per day:
accept Singed Wings##29293 |or |goto 34.3,56.4
accept Territorial Birds##29296 |or |goto 34.3,56.4
step
Click the Trained Fire Hawk to ride on it
|tip It looks like a big orange armored eagle.
Use your abilities on your action bar on the mobs below as you fly on the Fire Hawk
|tip The mobs look like nagas, spiders, and stone giants on the ground.
kill 100 Amassing Flamewakers |q 29290/1 |goto 33.9,57.2
kill 40 Amassing Cinderwebs |q 29290/2 |goto 33.9,57.2
kill 3 Molten Lords |q 29290/3 |goto 33.9,57.2
only if haveq(29290)
step
Use your Return to the Furnace ability on your action bar
Return to the Furnace |goto Molten Front,34.2,57.0,0.5 |noway |c |q 29290
only if haveq(29290)
step
talk Morthis Whisperwing##52491
turnin Fire in the Skies##29290 |goto 34.5,56.2
stickystart "firehawk"
step
Jump off the cliff next to the floating rocks
|tip You won't die, a druid will fly you safely to the other side.
Click Injured Druids of the Talon
|tip They look like birds and bats laying on the ground around this whole area.  They are pretty spread out, so you will need to search around for them.
Rescue 5 Druids of the Talon |q 29293/1 |goto 26.6,50.5
only if haveq(29293)
step
Follow the path to the top of the mountain
|tip Use the air vents on the side of rocks and cliffs to fly up to the next level of the mountain.
Use the air vents around the peak of the mountain to jump up can click Fire Hawk Hatchlings
|tip They look like small fire birds flying in place around the top of this mountain.
collect 5 Fire Hawk Hatchling##69845 |q 29288/1 |goto 23.5,36.6
only if haveq(29288)
step
Follow the path to the top of the mountain
|tip Use the air vents on the side of rocks and cliffs to fly up to the next level of the mountain.
Use Tholo's Thermometer next to this pool of lava |use Tholo's Thermometer##69806
Sample the Central Lava Pool |q 29273/3 |goto 23.7,39.5
only if haveq(29273)
step
Follow the path to the top of the mountain
Click a Fire Hawk Egg
|tip They look like orange eggs sitting on the ground at the top of this mountain, in a bubbling pool of lava.
collect Fire Hawk Egg##69836 |q 29287/1 |goto 23.7,41.9
only if haveq(29287)
step
Follow the path on the mountain
|tip Use the air vents on the side of rocks and cliffs to fly up to the next level of the mountain.
Use Tholo's Thermometer next to this pool of lava |use Tholo's Thermometer##69806
Sample the Northwestern Lava Pool |q 29273/1 |goto 22.5,29.1
only if haveq(29273)
step
Follow the path on the mountain
|tip Use the air vents on the side of rocks and cliffs to fly up to the next level of the mountain.
Use Tholo's Thermometer next to this pool of lava |use Tholo's Thermometer##69806
Sample the Northeastern Lava Pool |q 29273/2 |goto 30.0,29.8
only if haveq(29273)
step
label "firehawk"
kill 5 Fire Hawk |q 29296/1 |goto 26.6,50.5 |only if haveq(29296)
kill Obsidium Punisher##52107+ |only if haveq(29295)
Click Living Obsidium Chips
|tip They look like gray rocks that spawn on the ground after you kill Obsidium Punishers. |only if haveq(29295)
collect 10 Living Obsidium Chip##69860 |q 29295/1 |goto 26.6,50.5 |only if haveq(29295)
only if haveq(29296) or haveq(29295)
step
talk Morthis Whisperwing##52491
turnin Peaked Interest##29287 |goto 34.5,56.2
turnin Starting Young##29288 |goto 34.5,56.2
step
talk Arthorn Windsong##53259
You will only be able to turn in one of these quests per day:
turnin Singed Wings##29293 |goto 34.3,56.4
turnin Territorial Birds##29296 |goto 34.3,56.4
step
talk Choluna##52492
accept Strike at the Heart##29305 |goto 36.3,56.3
only if completedq(29283)
step
kill Ancient Charhound##54339+
collect 6 Houndbone Ash##69816 |q 29274/1 |goto 39.3,55.2
You can find more Ancient Charhounds around [39.6,39.4]
only if haveq(29274)
step
Kill the big named mob
|tip They named mob you have to fight is random, so it is not always the same.
kill Lieutenant of Flame |q 29305/1 |goto Molten Front 50.3,23.1
only if haveq(29305)
step
talk Tholo Whitehoof##52477
turnin Hounds of Shannox##29274 |goto 51.5,85.5
step
talk Anren Shadowseeker##52478
turnin How Hot##29273 |goto 51.3,85.8
step
talk Damek Bloombeard##53214
turnin The Bigger They Are##29295 |goto 46.9,90.0
step
talk Skylord Omnuron##52490
turnin Strike at the Heart##29305 |goto 43.0,80.6
|next "RestartDailies"
step
label "ShadowWardens"
Wait until the named mobs starts walking up the big ramp
|tip The named mobs' health bars will appear beneath your minimap.
Protect the named mobs and help them fight
|tip They must stay alive for the entire quest, so don't let them die.
Protect the Druid Assault Group |q 29205/1 |goto 54.7,70.9
only if haveq(29205)
step
talk Marin Bladewing##52494
turnin The Forlorn Spire##29205 |goto Molten Front 64.9,67.3 |goto 64.9,67.3
step
talk Marin Bladewing##52494
You will only be able to accept one of these quests per day:
accept Solar Core Destruction##29211 |or
accept The Wardens are Watching##29192 |or
step
talk Ricket##54163
accept Bye Bye Burdy##29297 |goto 66.4,65.4
step
talk Tholo Whitehoof##52477
accept The Flame Spider Queen##29276 |goto 66.3,66.1
|tip This quest will not always be available each day.
step
talk Deldren Ravenelm##52921
You will only be able to accept two of these quests per day:
accept Pyrorachnophobia##29159 |or 2 |goto 66.1,63.9
accept Egg-stinction##29160 |or 2 |goto 66.1,63.9
accept Wicked Webs##29189 |or 2 |goto 66.1,63.9
step
kill Cinderweb Creeper##52648+, Cinderweb Spinner##52981+ |only if haveq(29159) or haveq(29276)
kill 8 Cinderweb spider |q 29159/1 |goto 65.6,50.5 |only if haveq(29159)
collect 8 Flame Venom##69808 |q 29276/1 |goto 65.6,50.5 |only if haveq(29276)
collect 8 Searing Web Fluid##69809 |q 29276/2 |goto 65.6,50.5 |only if haveq(29276)
Click Cinderweb Egg Sacs
|tip They look like brown-ish red slime deposits on the ground around this area. |only if haveq(29160)
collect 20 Cinderweb Egg##152976 |q 29160/1 |goto 65.6,50.5 |only if haveq(29160)
Click Cinderweb Cocoons
|tip They look like bright red web balls stuck to the walls around this area. |only if haveq(29189)
Free 8 Victims |q 29189/1 |goto 65.6,50.5 |only if haveq(29189)
only if haveq(29159) or haveq(29276) or haveq(29160) or haveq(29189)
step
Use your Burd Sticker on Druids of the Flame |use Burd Sticker##69832
|tip They are small orange fire birds that fly in the sky all around this area.  Try to target the ones flying lower to the ground.
kill 3 Druids of the Flame in Fire Crow form |q 29297/1 |goto 71.4,47.3
only if haveq(29297)
step
Click the Solar Core
|tip It looks like a big floating orb.
Detonate the Solar Core |q 29211/1 |goto 70.8,38.3
only if haveq(29211)
step
kill Druid of the Flame##52122
Lure the Druid of the Flame into the trap
|tip Your Shadow Warden will lay a metal trap on the ground and tell you to lure the enemy into it.  Walk over the trap, so that the druid follows you onto the trap.
Capture a Druid of the Flame |q 29192/1 |goto 71.8,42.9
only if haveq(29192)
step
talk Deldren Ravenelm##52921
You will only be able to turn in two of these quests per day:
turnin Pyrorachnophobia##29159 |goto 66.1,63.9
turnin Egg-stinction##29160 |goto 66.1,63.9
turnin Wicked Webs##29189 |goto 66.1,63.9
step
talk Marin Bladewing##52494
You will only be able to turn in one of these quests per day:
turnin Solar Core Destruction##29211 |goto 64.9,67.3
turnin The Wardens are Watching##29192 |goto 64.9,67.3
step
talk Marin Bladewing##52494
accept Enduring the Heat##29210 |goto 64.9,67.3
step
talk Anren Shadowseeker##52478
accept Fandral's Methods##29275 |goto 65.9,66.1
step
Enter the Igneous Depths |q 29210/1 |goto 57.7,49.5
only if haveq(29210)
step
Click the 8 Flame Runes
|tip They look like big glowing blue symbols on the ground around the area inside this cave. |only if haveq(29210)
Destroy All the Flame Runes |q 29210/2 |goto 61.7,53.0 |only if haveq(29210)
Click a Flame Druid Staff, Spellbook, Reagant Pouch, and Idol
|tip They look like tiny sticks, books, vials, and wooden statues on the ground all around inside this cave. |only if haveq(29275)
collect Flame Druid Staff##69810 |q 29275/1 |goto 61.7,53.0 |only if haveq(29275)
collect Flame Druid Spellbook##69811 |q 29275/2 |goto 61.7,53.0 |only if haveq(29275)
collect Flame Druid Reagent Pouch##69812 |q 29275/3 |goto 61.7,53.0 |only if haveq(29275)
collect Flame Druid Idol##69813 |q 29275/4 |goto 61.7,53.0 |only if haveq(29275)
only if haveq(29210) or haveq(29275)
step
talk Theresa Barkskin##52823
turnin Enduring the Heat##29210 |goto 57.8,49.5
step
talk Shalis Darkhunter##53056
accept Strike at the Heart##29243 |goto 57.5,49.5
only if completedq(29283)
step
Kill the big named mob
|tip They named mob you have to fight is random, so it is not always the same.
kill Lieutenant of Flame |q 29243/1 |goto Molten Front 50.3,23.1
only if haveq(29243)
step
talk Tholo Whitehoof##52477
turnin Fandral's Methods##29275 |goto 51.6,85.5
step
talk Anren Shadowseeker##52478
turnin The Flame Spider Queen##29276 |goto 51.3,85.8
step
talk Damek Bloombeard##53214
turnin Bye Bye Burdy##29297 |goto 46.9,90.0
step
talk Captain Saynna Stormrunner##52493
turnin Strike at the Heart##29243 |goto 47.6,90.5 |next "RestartDailies"
step
label "RestartDailies"
Click this line to return to the beginning of the Firelands Dailies guide section |confirm |next "firelands"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Cataclysm Dailies\\Mount Hyjal\\The Call of the World-Shaman Quest Line",{
author="support@zygorguides.com",
description="\nWalks you through completing the Call of the World-Shaman quest line.",
},[[
step
talk Farseer Krogar##45244
accept The Call of the World-Shaman##29440 |goto Orgrimmar,50.5,38.4
step
talk Thrall##54313
turnin The Call of the World-Shaman##29440 |goto Mount Hyjal,60.6,31.5
accept The Nordrassil Summit##29326 |goto Mount Hyjal,60.6,31.5
step
talk Thrall##54313
Tell him you are ready
Watch the cutscene
Witness the Ceremony |q 29326/1 |goto 60.6,31.5
step
talk Aggra##54312
turnin The Nordrassil Summit##29326 |goto 60.2,30.1
accept Into Slashing Winds##29335 |goto 60.2,30.1
step
talk Aggra##54312 |goto 60.2,30.1
Tell her you are ready to travel to Uldum
You will teleport to Uldum |goto Uldum,47.8,88.0,0.5 |noway |c
step
talk Cyclonas##53524
turnin Into Slashing Winds##29335 |goto Uldum,47.6,88.9
accept Elemental Bonds: Doubt##29327 |goto Uldum,47.6,88.9
step
talk Cyclonas##53524 |goto 47.6,88.9
Tell him to take you to Thrall
You will fly up to the top of a tower |goto 34.3,77.5,0.5 |noway |c
step
kill Essence of Doubt##53516+, Shadow of Doubt##53530+
You will need to fill up the Protecting Thrall bar at the bottom of your screen
Protect Thrall from the Elements |q 29327/1 |goto 34.4,78.1
step
talk Aggra##53519
turnin Elemental Bonds: Doubt##29327 |goto 34.3,77.5
accept Into Coaxing Tides##29336 |goto 34.3,77.5
step
talk Aggra##53519 |goto 34.3,77.5
Tell her you are ready to travel to the Abyssal Maw
You will teleport to the Abyssal Depths |goto Abyssal Depths,69.7,34.8,0.5 |noway |c
step
talk Hydrius##53677
turnin Into Coaxing Tides##29336 |goto Abyssal Depths,69.5,34.3
step
talk Aggra##53652
accept Elemental Bonds: Desire##29328 |goto 69.8,34.2
step
kill Vortex of Longing##53647+, Tides of Longing##53646+
You will need to fill up the Protecting Thrall bar at the bottom of your screen
Protect Thrall from the Elements |q 29327/1 |goto 67.9,27.2
Click Aggra |tip She is floating in a circle inside of a bubble near the bottom of the huge whirlpool.
Protect Aggra from the Elements |q 29328/2 |goto 67.9,27.2
step
talk Aggra##53652
turnin Elemental Bonds: Desire##29328 |goto 69.8,34.2
accept Into Constant Earth##29337 |goto 69.8,34.2
step
talk Aggra##53652 |goto 69.8,34.2
Tell her you are ready to travel to Deepholm
You will teleport to Deepholm |goto Deepholm,56.3,13.0,0.5 |noway |c
step
talk Therazane##42465
turnin Into Constant Earth##29337 |goto Deepholm,56.3,12.2
step
talk Aggra##53738
accept Elemental Bonds: Patience##29329 |goto 56.5,12.5
step
talk Aggra##53738 |goto 56.5,12.5
Tell her you are ready
You will be taken to the Staidridge |goto 64.2,46.0,0.5 |noway |c
step
kill Element of Patience##53739+, Corestone of Patience##53894+
You will need to fill up the Protecting Thrall bar at the bottom of your screen
Help Thrall Break Out of His Stone Prison |q 29329/1 |goto 64.2,46.0
step
talk Aggra##53738
turnin Elemental Bonds: Patience##29329 |goto 64.0,46.1
accept Into Unrelenting Flame##29338 |goto 64.0,46.1
step
talk Aggra##53738
Tell her let us go to the Firelands and finish this
Teleport into the Firelands |q 29338/1 |goto 64.0,46.1
step
talk Aggra##54014
turnin Into Unrelenting Flame##29338 |goto Molten Front,49.6,31.7
step
talk Aggra##53925
accept Elemental Bonds: Fury##29330 |goto 51.5,25.8
step
kill Flames of Fury##53929+, Seed of Fury##53928+
You will need to fill up the Freeing Thrall bar at the bottom of your screen
|tip You will get onscreen instructions on where to kill the mobs.  You have to kill then next to certain Totems at certain times.
Activate Aggra's Totems to Save Thrall |q 29330/1 |goto 52.9,24.6
step
Click the Complete Quest box that appears under your minimap
turnin Elemental Bonds: Fury##29330
accept Elemental Bonds: The Vow##29331
step
talk Thrall##54168
turnin Elemental Bonds: The Vow##29331 |goto Mount Hyjal,60.2,29.8
step
Congratulations, you saved Thrall!
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Cooking\\Dalaran Cooking Daily Guide",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the Cooking daily quests to earn Dalaran Cooking Awards and gather Northern Spices.",
},[[
step
#include "H_Dalaran_Cooking_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Cooking\\Orgrimmar Cooking Daily Guide",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the Cooking daily quests to earn Chef's Awards.",
},[[
#include "Org_Cooking_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Cooking\\Shattrath Cooking Daily Guide",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the Cooking daily quests to earn Shattrath Cooking Awards",
},[[
step
#include "H_Shattrath_Cooking_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Jewelcrafting\\Daily Guides\\Jewelcrafting Daily Guide",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the Jewelcrafting daily quests.",
},[[
step
label "start"
talk Marith Lazuria##50482
You will only be able to accept one of these daily quests
accept A Present for Lila##25160 |goto Orgrimmar 72.5,34.5 |or
accept Elemental Goo##25162 |goto Orgrimmar 72.5,34.5 |or
accept Nibbler! No!##25158 |goto Orgrimmar 72.5,34.5 |or
accept Ogrezonians in the Mood##25161 |goto Orgrimmar 72.5,34.5 |or
accept The Latest Fashion!##25159 |goto Orgrimmar 72.5,34.5 |or
step
#include "trainer_Jewelcrafting"
learn Timeless Nightstone##73243
step
Use your Jewelcrafting profession to craft Timeless Nightstone
create Timeless Nightstone##73243,Jewelcrafting,3 total |q 25154/1
collect 3 Timeless Nightstone##52098 |q 25154/2
step
kill Scalding Rock Elemental##40229+
collect 10 Elemental Goo##52506 |q 25162/1 |goto Mount Hyjal 65.0,22.5
step
#include "trainer_Jewelcrafting"
learn Solid Zephyrite##73227
step
Use your Jewelcrafting profession to craft
create Solid Zephyrite##73227,Jewelcrafting,3 total |q 25105/1
Make 3 Solid Zephyrite |q 25105/2
step
#include "trainer_Jewelcrafting"
learn Jagged Jasper##73274
step
Use your Jewelcrafting profession to craft Jagged Jasper
create Jagged Jasper##73274,Jewelcrafting,3 total |q 25155/1
Make 3 Jagged Jasper |q 25155/2
step
Use the Stardust in your bags on 10 Humanoids around the city |use Stardust No. 2##52507
Test the Stardust No. 2 on 10 Humanoids |q 25157/1
|tip You can use this on NPCs and yourself.
step
talk Marith Lazuria##50482
turnin A Present for Lila##25160 |goto 72.5,34.5
turnin Elemental Goo##25162 |goto 72.5,34.5
turnin Nibbler! No!##25158 |goto 72.5,34.5
turnin Ogrezonians in the Mood##25161 |goto 72.5,34.5
turnin The Latest Fashion!##25159 |goto 72.5,34.5
earn 4 Illustrious Jewelcrafter's Token##361
If you do not have these click this button to go to make another Fire Prism and go to the start of the Jewelcrafting Dailies to do them again |confirm |next "start" |only if skill("Jewelcrafting")<525
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\Fires of Azeroth\\Extinguishing Draenor",{
achieveid={11277},
patch='70200',
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
keywords={"Extinguishing","Draenor"},
description="\nThis guide will walk you through obtaining the Extinguishing Draenor achievement.",
},[[
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##44582 |goto Shadowmoon Valley D/0 42.76,35.91
Earn the "Extinguishing Draenor" Achievement |achieve 11277
step
_Congratulations!_
You Earned the "Extinguishing Draenor" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\Fires of Azeroth\\Extinguishing the Broken Isles",{
achieveid={11279},
patch='70200',
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
keywords={"Extinguishing","the","Broken","Isles"},
description="\nThis guide will walk you through obtaining the Extinguishing the Broken Isles achievement.",
},[[
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##44624 |goto Suramar/0 22.85,58.23
Earn the "Extinguishing the Broken Isles" Achievement |achieve 11279
step
_Congratulations!_
You Earned the "Extinguishing the Broken Isles" Achievement.
]])
