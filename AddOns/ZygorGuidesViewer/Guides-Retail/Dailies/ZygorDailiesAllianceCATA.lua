local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("DailiesACATA") then return end
ZygorGuidesViewer.GuideMenuTier = "CAT"
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Classic Dailies\\Darnassus\\Darnassus Fishing Dailies",{
author="support@zygorguides.com",
description="\nComplete one of the following fishing daily quests each day in Darnassus:\n\nStocking Up\n"..
"Happy as a Clam Digger\nA Slippery Snack\nThe Sister's Pendant\nAn Old Favorite",
condition_end=function() return completedq(29321,29323,29325,29324,29359) end,
condition_valid=function() return level >= 10 end,
condition_valid_msg="You must be level 10 or higher to use this guide.",
},[[
step
label "Travel_to_the_Past"
talk Zidormi##141489
Ask her _"Can you show me what Darkshore was like before the battle?"_
Travel to the Past |complete ZGV.InPhase('Old Darnassus') |goto Darkshore/0 48.86,24.46 |or
'|complete completedq(29321,29323,29325,29324,29359) |or
step
talk Astaia##4156
accept Happy as a Clam Digger##29321 |goto Darnassus/0 49.10,60.95 |next "Collect_Teldrassil_Clams" |or
accept Stocking Up##29323 |goto 49.10,60.95 |next "Collect_Lake_Whitefish" |or
accept A Slippery Snack##29325 |goto 49.10,60.95 |next "Collect_Baby_Octopus" |or
accept The Sister's Pendant##29324 |goto 49.10,60.95 |next "Collect_Aquinne's_Moon_Pendant" |or
accept An Old Favorite##29359 |goto 49.10,60.95 |next "Collect_Kaldorei_Herring" |or
|tip You will only be able to accept one quest from Stormwind City, Ironforge, or Darnassus each day.
step
label "Collect_Lake_Whitefish"
cast Fishing##7620
collect 5 Lake Whitefish##69912 |q 29323/1 |goto 48.92,60.88 |next "Turnin_Fishing_Dailies"
step
label "Collect_Aquinne's_Moon_Pendant"
cast Fishing##7620
collect 1 Aquinne's Moon Pendant##69913 |q 29324/1 |goto 48.92,60.88 |next "Turnin_Fishing_Dailies"
step
label "Collect_Teldrassil_Clams"
click Teldrassil Clam##208831
|tip They look like small white clams underwater around this area.
collect 10 Teldrassil Clam##69910 |q 29321/1 |goto Teldrassil/0 55.80,93.19 |next "Turnin_Fishing_Dailies"
step
label "Collect_Baby_Octopus"
clicknpc Baby Octopus##53522
|tip The look like tiny octopuses swimming near the dock underwater around this area.
collect 6 Baby Octopus##69915 |q 29325/1 |goto 54.78,93.04 |next "Turnin_Fishing_Dailies"
step
label "Collect_Kaldorei_Herring"
cast Fishing##7620
collect 8 Kaldorei Herring##69987 |q 29359/1 |goto 55.61,91.81
step
label "Turnin_Fishing_Dailies"
talk Astaia##4156
turnin Happy as a Clam Digger##29321 |goto Darnassus/0 49.10,60.95 |only if haveq(29321)
turnin Stocking Up##29323 |goto 49.10,60.95 |only if haveq(29323)
turnin A Slippery Snack##29325 |goto 49.10,60.95 |only if haveq(29325)
turnin The Sister's Pendant##29324 |goto 49.10,60.95 |only if haveq(29324)
turnin An Old Favorite##29359 |goto 49.10,60.95 |only if haveq(29359)
step
use the Bag of Shiny Things##67414
Claim your Treasures |complete itemcount(67414) == 0
step
You have completed the Darnassus fishing dailies
|tip This guide will automatically reset when the dailies reset.
'|complete not completedq(29321,29323,29325,29324,29359) |next "Travel_to_the_Past"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Classic Dailies\\Ironforge\\Ironforge Fishing Dailies",{
author="support@zygorguides.com",
description="\nComplete one of the following fishing daily quests each day in Ironforge:\n\nLive Bait\n"..
"Cold Water Fishing\nOne fer the Ages\nFish fer Squirky\nThe Gnomish Bait-o-Matic",
condition_end=function() return completedq(29342,29343,29343,29344,29347) end,
condition_valid=function() return level >= 10 end,
condition_valid_msg="You must be level 10 or higher to use this guide.",
},[[
step
label "Accept_Daily_Quests"
talk Grimnur Stonebrand##5161
accept Cold Water Fishing##29342 |goto Ironforge/0 48.11,7.60 |next "Collect_Arctic_Char" |only if questpossible |or
accept One fer the Ages##29343 |goto 48.11,7.60 |next "Collect_Young_Ironjaw" |only if questpossible |or
accept Fish fer Squirky##29344 |goto 48.11,7.60 |next "Collect_Blind_Minnow" |only if questpossible |or
accept Live Bait##29347 |goto 48.11,7.60 |next "Catch_Cold_Water_Crayfish" |only if questpossible |or
accept The Gnomish Bait-o-Matic##29350 |goto 48.11,7.60 |next "Collect_Gnomish_Bait_o_Matic" |only if questpossible |or
Accept Today's Fishing Daily |complete false |goto 48.11,7.60 |or
|tip You will only be able to accept one quest from Stormwind City, Ironforge, or Darnassus each day.
step
label "Collect_Arctic_Char"
cast Fishing##7620
collect 5 Arctic Char##69931 |q 29342/1 |goto Dun Morogh/0 83.93,51.18 |next "Turnin_Daily_Quests"
step
label "Collect_Young_Ironjaw"
cast Fishing##7620
collect 1 Young Ironjaw##69932 |goto Ironforge/0 46.97,14.45 |q 29343
step
use Young Ironjaw##69932
Put Young Ironjaw on Display |q 29343/1 |goto 71.97,10.88 |next "Turnin_Daily_Quests"
step
label "Collect_Blind_Minnow"
cast Fishing##7620
collect 3 Blind Minnow##69933 |q 29344 |goto 46.97,14.45
step
use the Blind Minnow##69933
Feed Squirky #3# Times |q 29344/1 |goto 48.33,7.61 |next "Turnin_Daily_Quests"
step
label "Catch_Cold_Water_Crayfish"
use Grimnur's Bait##69940
Apply Grimnur's Bait |havebuff spell:99435 |goto Dun Morogh/0 83.93,51.18
step
Catch a Cold Water Crayfish |havebuff spell:99424 |goto 84.11,51.30 |q 29347 |or
|tip Jump in the water while covered in bait.
|tip Do not mount after catching the crayfish or you will lose the buff.
'|complete not hasbuff("spell:99435") and not hasbuff("spell:99424") |next "Catch_Cold_Water_Crayfish" |or
step
Take the Crayfish to Cook Ghilm |q 29347/2 |goto 75.60,52.82 |next "Turnin_Live_Bait" |or
|tip Do not mount after catching the crayfish or you will lose the buff.
'|complete not hasbuff("spell:99424") and not readyq(29347) |next "Catch_Cold_Water_Crayfish" |or
step
label "Collect_Gnomish_Bait_o_Matic"
talk Tansy Puddlefizz##5162
|tip Inside the building.
buy 5 Shiny Bauble##6529 |goto Ironforge/0 48.19,6.53 |q 29350
step
talk Gearcutter Cogspinner##5175
|tip Inside the building.
buy 1 Hair Trigger##39684 |goto 67.84,42.48 |q 29350
step
Enter the Deeprun Tram |goto Deeprun Tram/1 0.00,0.00 |c |q 29350 |future
step
click Rat Trap##208864
|tip They look like small steel traps on the tram platform around this area.
collect 3 Rat Trap##69980 |q 29350
step
use the Bait-o-Matic##69979
collect 1 Gnomish Bait-o-Matic##69978 |q 29350/1 |next "Turnin_Daily_Quests"
step
label "Turnin_Daily_Quests"
talk Grimnur Stonebrand##5161
turnin Cold Water Fishing##29342 |goto Ironforge/0 48.11,7.60 |only if haveq(29342)
turnin One fer the Ages##29343 |goto 48.11,7.60 |only if haveq(29343)
turnin Fish fer Squirky##29344 |goto 48.11,7.60 |only if haveq(29344)
turnin The Gnomish Bait-o-Matic##29350 |goto 48.11,7.60 |only if haveq(29350)
step
label "Turnin_Live_Bait"
talk Cook Ghilm##1355
turnin Live Bait##29347 |goto Dun Morogh/0 75.60,52.82
|only if haveq(29347)
step
use the Bag of Shiny Things##67414
Claim your Treasures |complete itemcount(67414) == 0
step
You have completed the Ironforge fishing dailies
|tip This guide will automatically reset when the dailies reset.
'|complete not completedq(29342,29343,29343,29344,29347) |next "Accept_Daily_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Classic Dailies\\Stormwind City\\Main City Cooking Dailies",{
author="support@zygorguides.com",
description="\nWalks you through completing the Cooking daily quests in Stormwind, Ironforge and Darnassus. You must be at least level 10 to complete the quests in this guide.",
},[[
step
label "menu"
Click here to use the _Stormwind_ daily guide |confirm |next "sw_dailies"
_
Click here to use the _Ironforge_ daily guide |confirm |next "if_dailies"
_
Click here to use the _Darnassus_ daily guide |confirm |next "darn_dailies"
step
label "sw_dailies"
Proceeding to proper section |next
step
#include "SW_Cooking_Dailies"
step
You have reached the end of the dailies for today
Click here to go back to the beginning of the Dailies Menu |confirm |next "menu"
step
label "if_dailies"
Proceeding to proper section next |next
step
#include "IF_Cooking_Dailies"
step
You have reached the end of the dailies for today
Click here to go back to the beginning of the Dailies Menu |confirm |next "menu"
step
label "darn_dailies"
Proceeding to proper section |next
step
#include "Darn_Cooking_Dailies"
step
You have reached the end of the dailies for today
Click here to go back to the beginning of the Dailies Menu |confirm |next "menu"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Classic Dailies\\Stormwind City\\Stormwind City Fishing Dailies",{
author="support@zygorguides.com",
description="\nComplete one of the following fishing daily quests each day in Stormwind City:\n\nBig Gulp\n"..
"Diggin' For Worms\nHitting a Walleye\nRock Lobster\nThunder Falls",
condition_end=function() return completedq(26488,26420,26414,26442,26536) end,
condition_valid=function() return level >= 10 end,
condition_valid_msg="You must be level 10 or higher to use this guide.",
},[[
step
label "Accept_Daily_Quests"
talk Catherine Leland##5494
accept Big Gulp##26488 |goto Stormwind City/0 55.03,69.71 |next "Collect_Royal_Monkfish" |only if questpossible |or
accept Diggin' For Worms##26420 |goto 55.03,69.71 |next "Collect_Overgrown_Earthworm" |only if questpossible |or
accept Hitting a Walleye##26414 |goto 55.03,69.71 |next "Collect_Hardened_Walleye" |only if questpossible |or
accept Rock Lobster##26442 |goto 55.03,69.71 |next "Collect_Rock_Lobster" |only if questpossible |or
accept Thunder Falls##26536 |goto 55.03,69.71 |next "Collect_Violet_Perch" |only if questpossible |or
Accept Today's Fishing Daily |complete false |goto 53.04,64.93 |or
|tip You will only be able to accept one quest from Stormwind City, Ironforge, or Darnassus each day.
step
label "Collect_Royal_Monkfish"
cast Fishing##7620
collect 1 Royal Monkfish##58856 |goto 75.43,83.98 |q 26488
step
use the Royal Monkfish##58856
collect 1 Precious Locket##58864 |q 26488/1 |next "Turnin_Fishing_Dailies" |or
|tip This is not a guaranteed drop.
'|complete itemcount(58856) == 0 and not readyq(26488) |next "Collect_Royal_Monkfish" |or
step
label "Collect_Overgrown_Earthworm"
click Worm Mound+
|tip They look like small mounds of dirt on the ground around this area.
collect 1 Overgrown Earthworm##58788 |goto 58.31,12.90 |q 26420
step
use the Overgrown Earthworm##58788
Apply the Overgrown Earthworm to your Pole |havebuff spell:80534 |q 26420
step
cast Fishing##7620
collect 1 Crystal Bass##58787 |q 26420/1 |goto 58.31,12.90 |next "Turnin_Fishing_Dailies" |or
'|complete not hasbuff("spell:80534") and not readyq(26420) |next "Collect_Overgrown_Earthworm" |or
step
label "Collect_Hardened_Walleye"
cast Fishing##7620
collect 8 Hardened Walleye##58503 |q 26414/1 |goto 53.86,27.61 |next "Turnin_Fishing_Dailies"
step
label "Collect_Rock_Lobster"
Click Stormwind Lobster Traps
|tip They look like gray metal cages underwater under the Stormwind Harbor docks.
collect 6 Rock Lobster##58809 |q 26442/1 |goto 23.22,48.70 |next "Turnin_Fishing_Dailies"
step
label "Collect_Violet_Perch"
cast Fishing##7620
collect 4 Violet Perch##58899 |q 26536/1 |goto Elwynn Forest/0 25.66,59.20
step
label "Turnin_Fishing_Dailies"
talk Catherine Leland##5494
turnin Big Gulp##26488 |goto Stormwind City/0 55.03,69.71 |only if haveq(26488)
turnin Diggin' For Worms##26420 |goto 55.03,69.71 |only if haveq(26420)
turnin Hitting a Walleye##26414 |goto 55.03,69.71 |only if haveq(26414)
turnin Rock Lobster##26442 |goto 55.03,69.71 |only if haveq(26442)
turnin Thunder Falls##26536 |goto 55.03,69.71 |only if haveq(26536)
step
use the Bag of Shiny Things##67414
Claim your Treasures |complete itemcount(67414) == 0
step
You have completed the Stormwind City fishing dailies
|tip This guide will automatically reset when the dailies reset.
'|complete not completedq(26488,26420,26414,26442,26536) |next "Accept_Daily_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Classic Dailies\\Stormwind City\\Stormwind City Jewelcrafting Dailies",{
author="support@zygorguides.com",
description="\nWalks you through completing the Jewelcrafting daily quests in Stormwind City.",
},[[
step
talk Isabel Jones##50480
You will only be able to complete 1 of the following quests per day
accept A Present for Lila##25154 |goto Stormwind City 63.8,61.5 |or
accept Elemental Goo##25156 |goto Stormwind City 63.8,61.5 |or
accept Nibbler! No!##25105 |goto Stormwind City 63.8,61.5 |or
accept Ogrezonians in the Mood##25155 |goto Stormwind City 63.8,61.5 |or
accept The Latest Fashion!##25157 |goto Stormwind City 63.8,61.5 |or
step
Buy 3 Nightstones from the Stormwind City Auction House:
collect 3 Nightstone##52180 |n
|tip You can also try to mine these from any vein type in level 30-35 zones.
Use your Jewelcrafting skill to cut the Nightstones
Cut 3 Timeless Nightstones |q 25154/1
collect 3 Timeless Nightstone##52098 |q 25154/2
If you are unable to cut Timeless Nightstones, you can learn from Theresa Denman at [Stormwind City 63.5,61.8]
step
Buy 3 Zephyrite from the Stormwind City Auction House:
collect 3 Zephyrite##52178 |n
|tip You can also try to mine these from any vein type in level 30-35 zones.
Use your Jewelcrafting skill to cut the Zephyrite
Cut 3 Solid Zephyrite |q 25105/1
collect 3 Solid Zephyrite##52086 |q 25105/2
If you are unable to cut Solid Zephyrite, you can learn from Theresa Denman at [Stormwind City 63.5,61.8]
step
Buy 3 Jasper from the Stormwind City Auction House:
collect 3 Jasper##52182 |n
|tip You can also try to mine these from any vein type in level 30-35 zones.
Use your Jewelcrafting skill to cut the Jasper
Cut 3 Jagged Jasper |q 25155/1
collect 3 Jagged Jasper##52121 |q 25155/2
If you are unable to cut Jagged Jasper, you can learn from Theresa Denman at [Stormwind City 63.5,61.8]
step
Anywhere in Stormwind City:
Use your Stardust No. 2 on any Humanoid |use Stardust No. 2##52507
|tip The Humanoids can be NPCs or players, it doesn't matter.
Perform 10 Tests of Stardust No. 2 |q 25157/1
step
kill Scalding Rock Elemental##40229+
collect 10 Elemental Goo##52506 |q 25156/1 |goto Mount Hyjal,64.7,22.5
step
talk Isabel Jones##50480
You will only be able to complete 1 of the following quests per day
turnin A Present for Lila##25154 |goto Stormwind City 63.8,61.5
turnin Elemental Goo##25156 |goto Stormwind City 63.8,61.5
turnin Nibbler! No!##25105 |goto Stormwind City 63.8,61.5
turnin Ogrezonians in the Mood##25155 |goto Stormwind City 63.8,61.5
turnin The Latest Fashion!##25157 |goto Stormwind City 63.8,61.5
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
#include "A_Shattrath_Cooking_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Burning Crusade Dailies\\Shattered Sun Offensive\\Dailies", {
author="support@zygorguides.com",
description="\nThis guide section will walk you through the Shattered Sun Offensive Daily Quests.",
},[[
step
talk Innkeeper Haelthol##19232
home Shattrath City |goto Shattrath City,56.3,81.5
only if rep ("The Scryers")>=Neutral
step
talk Minalei##19046
home Shattrath City |goto Shattrath City,28.2,49.4
only if rep ("The Aldor")>=Neutral
step
talk Exarch Nasuun##24932
accept Maintaining the Sunwell Portal##11514 |goto Shattrath City,49.1,42.5
step
talk Lord Torvos##25140
accept Sunfury Attack Plans##11877 |goto 62.8,36.0
step
talk Emissary Mordin##19202
accept Gaining the Advantage##11875 |goto 62.8,35.6
only if skill("Skinning")>300 or skill("Mining")>300 or skill("Herbalism")>300
step
talk Harbinger Haronem##19475
accept The Multiphase Survey##11880 |goto Shattrath City,61.7,52.1
step
Click the Shattrath Portal |goto Shattrath City 48.6,42.0 < 7
Port to the Isle of Quel'Danas |goto Isle of Quel'Danas |noway
step
talk Astromancer Darnarian##25133
accept Know Your Ley Lines##11547 |goto Isle of Quel'Danas,47.5,35.4
step
talk Battlemage Arynna##25057
accept The Air Strikes Must Continue##11533 |goto 47.5,35.1
step
talk Harbinger Inuuro##25061
accept The Battle Must Go On##11537 |goto 47.6,35.1
step
talk Anchorite Ayuri##25112
accept Your Continued Support##11548 |goto 48.8,37.2
This quest requires that you give 10 Gold in trade of reputation with the Shattered Sun Offensive, you should be able to turn it in immidiately.
turnin Your Continued Support##11548 |goto 48.8,37.2
step
talk Vindicator Kaalan##25108
accept Keeping the Enemy at Bay##11543|goto 50.6,39.0
step
talk Magister Ilastar##25069
accept Crush the Dawnblade##11540 |goto 49.3,40.4
step
talk Smith Hauthaa##25046
accept Don't Stop Now....##11536 |goto 50.6,40.8
accept Ata'mal Armaments##11544 |goto 50.6,40.8
step
talk Mar'nah##24975
accept Rediscovering Your Roots##11521 |goto 51.5,32.5
accept Open for Business##11546 |goto 51.5,32.5
step
talk Captain Valindria##25088
accept Disrupt the Greengill Coast##11541 |goto 53.8,34.3
step
talk Captain Theris Dawnhearth##24967
accept Arm the Wards!##11523 |goto 47.5,30.5
accept The Missing Magistrix##11526 |goto 47.5,30.5
step
talk Vindicator Xayann##24965
accept Further Conversions##11525 |goto 47.1,30.7
stickystart "bloodcrystal"
step
kill Wretched Fiend##24966+
collect 4 Mana Remnants##34338 |q 11523 |goto Isle of Quel'Danas,44.3,28.5
kill Erratic Sentry##24972+ |n
Use Attuned Crystal Cores on the Erratic Sentries corpse |use Attuned Crystal Cores##34368
goal 5 Converted Sentry Deployed |q 11525/1 |goto Isle of Quel'Danas,44.3,28.5
collect 5 Bloodberry##34502 |q 11546/1 |tip They can be found all around this area on the ground.
step
label "bloodcrystal"
kill 6 Dawnblade Summoner |q 11540/1 |goto Isle of Quel'Danas,42.1,35.7
kill 6 Dawnblade Blood Knight |q 11540/2 |goto Isle of Quel'Danas,42.1,35.7
kill 3 Dawnblade Marksman |q 11540/3 |goto Isle of Quel'Danas,42.1,35.7
Use your Astromancer's Crystal to sample the Bloodcrystal's density |use Astromancer's Crystal##34533
Bloodcrystal Reading Taken |q 11547/3 |goto Isle of Quel'Danas,42.1,35.7
step
Use the Mana Remnants to Energize the Crystal Ward |use Mana Remnants##34338
Energize a Crystal Ward |q 11523/1 |goto Isle of Quel'Danas,46.5,35.5
step
talk Ayren Cloudbreaker##25059
Tell him you Need to Intercept the Dawnblade Reinforcements.
Use your Flaming Oil to set fire to the ships in the water. |use Flaming Oil##34489
Sin'loren sails burned |q 11543/1 |goto 48.5,25.2
Bloodoath sails burned |q 11543/2 |goto 48.5,25.2
Dawnchaser sails burned |q 11543/3|goto 48.5,25.2
step
kill Dawnblade Reservist##25087+ |q 11543/4
You can find more at [Isle of Quel'Danas,51.1,9.7]
Another spot for them is at [Isle of Quel'Danas,55.2,11.8]
step
talk Unrestrained Dragonhawk##25236 |goto Isle of Quel'Danas,52.4,17.4 < 10
Ride the dragonhawk to Sun's Reach |goto Isle of Quel'Danas,48.4,25.3 |noway|c
step
talk Ayren Cloudbreaker##25059
Tell him you've been ordered to undertake an airstrike
Use your Arcane Charges on mobs once you get to the Dead Scar |use Arcane Charges##34475
kill 2 Pit Overlord##25031+ |q 11533/1 |goto Isle of Quel'Danas,48.5,25.2
kill 3 Eredar Sorcerer##25033+ |q 11533/2 |goto Isle of Quel'Danas,48.5,25.2
kill 12 Wrath Enforcer##25030+ |q 11533/3 |goto Isle of Quel'Danas,48.5,25.2
step
kill Emissary of Hate##25003 |n
Use your Shattered Sun Banner on his corpse |use Shattered Sun Banner##34414
Impale the Emissary of Hate |q 11537/1 |goto Isle of Quel'Danas,48.5,43.7
kill 6 Burning Legion Demon |q 11537/2 |goto Isle of Quel'Danas,48.5,43.7
Use your Astromancer's Crystal to sample the Portal's density. |use Astromancer's Crystal##34533
Portal Reading Taken |q 11547/1 |goto Isle of Quel'Danas,48.5,43.7
step
Take this path back to they shoreside. |goto Isle of Quel'Danas,57.3,38.6 |c
step
kill Darkspine Myrmidon##25060+
collect Darkspine Chest Key##34477 |n
kill Darkspine Siren##25073+
collect Orb of Murloc Control##34483 |n
Use your Orbs of Murloc Control on Greengill Slaves along the shore |use Orb of Murloc Control##34483
Free 10 Greengill Slaves |q 11541/1 |goto Isle of Quel'Danas,64.1,49.9
Use your Darkspine Chest Keys on the Darkspine Ore Chest
collect 3 Darkspine Iron Ore##34479 |q 11536/1 |goto Isle of Quel'Danas,64.1,49.9
step
Use your Astromancer's Crystal to sample the Shrine's density. |use Astromancer's Crystal##34533
Shrine Reading Taken |q 11547/2 |goto Isle of Quel'Danas,61.1,62.0
step
kill Shadowmoon Chosen##22084+,Shadowmoon Slayer##22082+,Shadowmoon Darkweaver##22081+
collect 5 Ata'mal Armament##34500 |q 11544 |goto Shadowmoon Valley,68.5,37.5
step
kill Razorthorn Flayer##24920+
collect Razorthorn Flayer Gland##34255 |q 11521 |goto Terokkar Forest,59.7,10.3
Use your Razorthorn Flayer Gland on Razorthorn Ravagers |use Razorthorn Flayer Gland##34255
Use your pets Expose Razorthorn Root ability on mounds of dirt around the area. |cast Expose Razorthorn Root##44935
collect 5 Razorthorn Root##34254 |q 11521/1 |goto Terokkar Forest,59.7,10.3
step
kill Clefthoof Bull##17132+,Talbuk Thorngrazer##17131+,Wild Elekk##18334+
Skin their corpses in order to collect the Nether Residue
collect 8 Nether Residue##35229 |q 11875/1 |goto Nagrand,58.8,75.1
only if skill("Skinning")>=300
step
Mine inside the cave and collect Nether Residue
collect 8 Nether Residue##35229 |q 11875/1 |goto 40.8,31.6
You can check [Nagrand,50.0,56.6] for more Mining Nodes
only if skill("Mining")>=300
step
Click the Multiphase Spectographic Goggles to wear them |use Multiphase Spectrographic Goggles##35233
Get the Multiphase Goggles buff |havebuff 135994 |goto Nagrand 38.3,65.3
tip You have to be in the Nagrand zone to correctly get the buff.
only if haveq(11880)
step
Fly around the Spirit Fields looking for Fiery Red Orbs on the ground
Use your Multiphase Spectrographic Goggles on the Orbs |use Multiphase Spectrographic Goggles##35233
goal 6 Multiphase Readings Taken |q 11880/1 |goto Nagrand,38.3,65.3
step
kill Unbound Ethereal##22244+,Bash'ir Raider##22241+,Bash'ir Arcanist##22243+,Bash'ir Spell-Thief##22242+
collect 1 Bash'ir Phasing Device##34248 |q 11514 |goto Blade's Edge Mountains,54.0,18.1
Use the Bash'ir Phasing Device |use Bash'ir Phasing Device##34248
Collect 10 Smuggled Mana Cell |q 11514/1 |goto Blade's Edge Mountains,54.0,18.1
step
kill Sunfury Bloodwarder##18853+,Sunfury Captain##19453+,Sunfury Magister##18855+,Sunfury Geologist##19779+,Sunfury Astromancer##19643
collect Sunfury Attack Plans##35231 |q 11877/1 |goto Netherstorm,25.9,66.8
step
talk Magistrix Seyla##24937
accept Blood for Blood##11515 |goto Hellfire Peninsula,58.2,17.6
accept Blast the Gateway##11516 |goto Hellfire Peninsula,58.2,17.6
step
kill Wrath Herald##24919+
collect 4 Demonic Blood##34259
use the Sizzling Embers to summon a Living Flare |use Sizzling Embers##34253
kill Incandescent Fel Spark##22323+ |n
Once you see a message that says "Living Flare becomes unstable with brimming energy!" take it to [Hellfire Peninsula,58.6,18.7]
Legion Gateway Destroyed |q 11516/1 |goto Hellfire Peninsula,66.4,20.1
step
Use your Fel Siphon on Felblood Initiates |use Fel Siphon##34257
kill 4 Emaciated Felblood##24918 |q 11515/1 |goto 59.9,21.0
step
talk Magistrix Seyla##24937
turnin Blast the Gateway##11516 |goto Hellfire Peninsula,58.2,17.6
turnin Blood for Blood##11515 |goto Hellfire Peninsula,58.2,17.6
step
talk Lord Torvos##25140
turnin Sunfury Attack Plans##11877 |goto Shattrath City,62.8,36.0
step
talk Emissary Mordin##19202
turnin Gaining the Advantage##11875 |goto 62.8,35.6
step
talk Harbinger Haronem##19475
turnin The Multiphas Survey##11880 |goto 61.6,52.2
step
talk Exarch Nasuun##24932
turnin Maintaining the Sunwell Portal##11514 |goto 49.1,42.5
step
Click the Shattrath Portal |goto Shattrath City 48.6,42.0 < 10 |n
Port to the Isle of Qual'Danas |goto Isle of Quel'Danas |noway
step
talk Captain Valindria##25088
turnin Disrupt the Greengill Coast##11541 |goto Isle of Quel'Danas,53.8,34.3
step
Click the Ata'mal Armaments and cleanse them at Hauthaa's Anvil |use Ata'mal Armament##34500
Cleanse 5 Ata'mal Metals |q 11544/1 |goto 50.6,40.7
step
talk Smith Hauthaa##25046
turnin Don't Stop Now....##11536 |goto 50.6,40.7
turnin Ata'mal Armaments##11544 |goto 50.6,40.7
step
talk Vindicator Kaalan##25108
turnin Keeping the Enemy at Bay##11543 |goto 50.6,39.0
step
talk Magister Ilastar##25069
turnin Crush the Dawnblade##11540 |goto 49.3,40.4
step
talk Mar'nah##24975
turnin Open for Business##11546 |goto 51.5,32.5
turnin Rediscovering Your Roots##11521 |goto 51.5,32.5
step
talk Astromancer Darnarian##25133
turnin Know Your Ley Lines##11547 |goto 47.5,35.3
step
talk Battlemage Arynna##25057
turnin The Air Strikes Must Continue##11533 |goto 47.5,35.1
step
talk Harbinger Inuuro##25061
turnin The Battle Must Go On##11537 |goto 47.6,35.1
step
talk Captain Theris Dawnhearth##24967
turnin Arm the Wards!##11523 |goto 47.5,30.5
step
talk Vindicator Xayann##24965
turnin Further Conversions##11525 |goto 47.1,30.7
step
talk Eldara Dawnrunner##25032
accept A Friend in the Frontlines##11554 |goto Isle of Quel'Danas,47.3,30.7
only if rep ("Shattered Sun Offensive")==Friendly
step
talk Eldara Dawnrunner##25032
accept Honored By Your Allies##11555 |goto Isle of Quel'Danas,47.3,30.7
only if rep ("Shattered Sun Offensive")==Honored
step
talk Eldara Dawnrunner##25032
accept Revered in the Field of Battle##11556 |goto Isle of Quel'Danas,47.3,30.7
only if rep ("Shattered Sun Offensive")==Revered
step
talk Eldara Dawnrunner##25032
accept Exalted Among All Combatants##11557 |goto Isle of Quel'Danas,47.3,30.7
only if rep ("Shattered Sun Offensive")==Exalted
step
talk Anchorite Kairthos##25163
accept A Magnanimous Benefactor##11549 |goto Isle of Quel'Danas,51.2,33.1
|tip This quest will cost you 1,000 Gold, but give you the title "Of the Shattered Sun".
only if rep ("Shattered Sun Offensive")==Exalted
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Borean Tundra\\Coldarra Dailies",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the daily quests in the Coldarra region of Borean Tundra.",
},[[
step
Routing to proper section |next |only if not completedq(13413)
Routing to proper section |next "dailies" |only if completedq(13413)
step
talk Raelorasz##26117
accept Basic Training##11918 |goto Borean Tundra 33.3,34.5
step
kill Coldarra Spellweaver##25722+ |q 11918/1 |goto 35,28
step
talk Raelorasz##26117
turnin Basic Training##11918 |goto 33.3,34.5
accept Hatching a Plan##11936 |goto 33.3,34.5
step
As you do the following steps:
kill Coldarra Wyrmkin |n
collect 5 Frozen Axe##35586 |q 11936
confirm |only if not completedq(11936)
step
click Blue Dragon Egg##188133
|tip They look like big eggs with blue crystals on them on the ground.
Destroy 5 Dragon Eggs |q 11936/1 |goto 27.8,24.2
step
talk Raelorasz##26117
turnin Hatching a Plan##11936 |goto 33.3,34.5
accept Drake Hunt##11919 |goto 33.3,34.5
step
Use your Raelorasz's Spear on a Nexus Drake Hatchling |use Raelorasz's Spear##35506
|tip They are flying above you in the sky.
Do not kill it, let it hit you until it becomes friendly |havebuff 134155 |q 11919 |goto 24.6,27.1
step
Stand here until it says Captured Nexus Drake |q 11940/1 |goto 33.3,34.5
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
Target a Scalesworn Elite flying above Corastrasza
To cause damage, stack Flamestrike five times, then use Engulf in Flames. To keep your health up, stack Revivify 5 times, then target yourself and use Life Burst. Keep Revivify up while Life Burst is in use. Be ready to cast Flame Shield if they cast Arcane Surge
kill 5 Scalesworn Elites |q 13413/1
step
talk Corastrasza##32548
She's standing on a platform floating in the sky
turnin Aces High!##13413 |goto 29.5,24.8
step
label "dailies"
talk Raelorasz##26117
accept Drake Hunt##11940 |goto Borean Tundra 33.3,34.5
step
Use your Raelorasz's Spear on a Nexus Drake Hatchling |use Raelorasz's Spear##35506 |goto 24.6,27.1
|tip They are flying above you in the sky.
Do not kill it, let it hit you until it becomes friendly |havebuff 134155
step
Stand here until it says Captured Nexus Drake |q 11940/1 |goto 33.3,34.5
talk Raelorasz##26117
turnin Drake Hunt##11940 |goto 33.3,34.5
step
talk Corastrasza##32548
accept Aces High!##13414 |goto 29.5,24.8
step
Tell Corastrasza you are ready
She will give you a Wyrmrest Skytalon to ride
Before engaging enemies, stack Revivify on yourself 5 times, then target yourself and cast Life Burst
Target a Scalesworn Elite flying above Corastrasza
To cause damage, stack Flamestrike five times, then use Engulf in Flames. To keep your health up, stack Revivify 5 times, then target yourself and use Life Burst. Keep Revivify up while Life Burst is in use. Be ready to cast Flame Shield if they cast Arcane Surge
kill 5 Scalesworn Elites |q 13414/1
step
talk Corastrasza##32548
turnin Aces High!##13414 |goto 29.5,24.8
step
You have reached the end of the Dailies
Click here to return to the beginning |confirm |next "dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Borean Tundra\\Kaskala Dailies",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the daily quests in the Kaskala region of Borean Tundra. There are no pre-quests needed to unlock the daily quest offered in this guide section.",
},[[
step
talk Utaik##26213
accept Preparing for the Worst##11945 |goto Borean Tundra 63.9,45.7
step
Click baskets on the shore
collect 8 Kaskala Supplies##35711 |q 11945/1 |goto 66.7,48.6
step
talk Utaik##26213
turnin Preparing for the Worst##11945 |goto 63.9,45.7
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Dalaran\\Dalaran Cooking Dailies",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the Cooking daily quests in Dalaran.",
},[[
step
Routing to proper section |next |only if not completedq(13087)
Routing to proper section |next "dailies" |only if completedq(13087)
step
talk Brom Brewbaster##26905
accept Northern Cooking##13087 |goto Howling Fjord 58.2,62.1
|tip This quest is only available to you if you have 350+ Cooking skill.
step
kill Lion Seal Whelp##29559+, Lion Seal##23887+, Bull Lion Seal##23886+
collect 4 Chilled Meat##43013 |q 13087/1 |goto 79.0,73.1
step
talk Brom Brewbaster##26905
turnin Northern Cooking##13087 |goto 58.2,62.1
step
label "dailies"
talk Katherine Lee##28705
You will only be able to accept, and turn in, 1 of these 5 daily quests per day, and they all require you have 350+ Cooking skill:
accept Cheese for Glowergold##13103 |goto Dalaran 40.8,65.4 |or
accept Convention at the Legerdemain##13101 |goto Dalaran 40.8,65.4 |or
accept Infused Mushroom Meatloaf##13100 |goto Dalaran 40.8,65.4 |or
accept Mustard Dogs!##13107 |goto Dalaran 40.8,65.4 |or
accept Sewer Stew##13102 |goto Dalaran 40.8,65.4 |or
step
Click the Aged Dalaran Limburger
|tip They look like piles and pieces of yellow cheese on the tables inside this building.
collect 1 Aged Dalaran Limburger##43137 |q 13103 |goto 54.7,31.5
Click the Half Full Glasses of Wine
|tip They look like small blue-ish wine glasses sitting on tables, and on the ground, inside this building. They spawn in random locations.
collect 6 Half Full Dalaran Wine Glass##43138 |q 13103 |goto 54.7,31.5
You can find more Half Full Glasses of Wine inside the building at [49.4,39.3]
step
Use your Empty Cheese Serving Platter in your bags |use Empty Cheese Serving Platter##43139
collect 1 Wine and Cheese Platter##43136 |q 13103/1
step
Click a Full Jug of Wine
|tip They look like small blue-ish green jugs sitting on the ground inside this building. They spawn in random locations.
collect 1 Jug of Wine##43128 |q 13101/2 |goto 55.0,30.8
step
kill Rabid Grizzly##26643+, Blighted Elk##26616+
collect 4 Chilled Meat##43013 |q 13101 |goto Dragonblight 30.0,49.8
step
Use your Cooking ability to cook 4 Northern Stew
|tip You will need a cooking fire to do this.
collect 4 Northern Stew##34747 |q 13101/1
step
Go into the Dalaran sewers |goto Dalaran 60.2,47.7 < 5 |walk
click Infused Mushroom##192818
collect 4 Infused Mushroom##43100 |q 13100 |goto Dalaran/2 51.6,41.6
step
Leave the Dalaran sewers |goto Dalaran 60.2,47.7 < 5 |walk
kill Rabid Grizzly##26643+, Blighted Elk##26616+
collect 2 Chilled Meat##43013 |q 13100 |goto Dragonblight 30.0,49.8
step
Use your Meatloaf Pan in your bags |use Meatloaf Pan##43101
|tip You will need a cooking fire to do this.
collect 1 Infused Mushroom Meatloaf##43099 |q 13100/1
step
click Wild Mustard##192827
|tip They look like small, and kind of hard to see, bushy yellow flowers on the ground around this area. They spawn randomly in grassy areas.
collect 4 Wild Mustard##43143 |q 13107 |goto Dalaran/1 67.7,40.0
You can find more Wild Mustard flowers:
At [50.3,48.3]
At [37.2,43.9]
step
kill Wooly Rhino Calf##25488+, Wooly Rhino Matriarch##25487+, Wooly Rhino Bull##25489+
collect 4 Rhino Meat##43012 |q 13107 |goto Borean Tundra 46.7,43.6
step
create 4 Rhino Dogs##45553,Cooking,4 total |n
Use your Cooking ability to cook 4 Rhino Dogs
|tip You will need a cooking fire to do this.
collect 4 Rhino Dogs##34752 |q 13107
step
Use your Empty Picnic Basket in your bags |use Empty Picnic Basket##43142
collect 1 Mustard Dog Basket##43144 |q 13107/1
step
Click the Crystalsong Carrots
|tip they look like carrots sticking out of the ground, at the base of trees around this area underneath Dalaran. They spawn in random locations around this area.
collect 4 Crystalsong Carrot##43148 |q 13102 |goto Crystalsong Forest 26.9,45.5
step
kill Rabid Grizzly##26643+, Blighted Elk##26616+
collect 4 Chilled Meat##43013 |q 13102 |goto Dragonblight 30.0,49.8
step
Use your Stew Cookpot in your bags |use Stew Cookpot##43147
|tip You will need a cooking fire to do this.
collect 1 Vegetable Stew##43149 |q 13102/1
step
talk Ranid Glowergold##28718
turnin Cheese for Glowergold##13103 |goto Dalaran 36.6,27.8
step
talk Arille Azuregaze##29049
turnin Convention at the Legerdemain##13101 |goto Dalaran 48.6,37.5
step
talk Orton Bennet##29527
turnin Infused Mushroom Meatloaf##13100 |goto Dalaran 52.3,55.6
step
talk Archmage Pentarus##28160
turnin Mustard Dogs!##13107 |goto Dalaran 68.6,42.0
step
Go into the Dalaran sewers |goto Dalaran 60.2,47.7 < 5 |walk
talk Ajay Green##29532
turnin Sewer Stew##13102 |goto Dalaran 35.5,57.6
step
You have reached the end of the dailies for today
Click here to go back to the beginning of the guide |confirm |next "dailies"
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
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Dalaran\\Jewelcrafting Dailies",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the Jewelcrafting daily quests in Dalaran.",
},[[
step
Routing to proper section |next |only if not completedq(13041)
Routing to proper section |next "dailies" |only if completedq(13041)
step
talk Timothy Jones##28701
accept Finish the Shipment##13041 |goto Dalaran,40.7,35.4
|tip This quest is only available once you have 375+ Jewelcrafting skill.
step
Go to the Auction House in a major city:
Buy 1 Chalcedony |q 13041/1
|tip If you don't want to, or can't, buy the Chalcedony, you can also try to get one by mining or prospecting.
step
talk Timothy Jones##28701
turnin Finish the Shipment##13041 |goto Dalaran,40.7,35.4
step
label "dailies"
talk Timothy Jones##28701
You will only be able to accept, and turn in, 1 of these 6 daily quests per day, and they all require you have 375+ Jewelcrafting skill:
accept Shipment: Blood Jade Amulet##12958 |goto Dalaran 40.7,35.4 |or
accept Shipment: Bright Armor Relic##12962 |goto Dalaran 40.7,35.4 |or
accept Shipment: Glowing Ivory Figurine##12959 |goto Dalaran 40.7,35.4 |or
accept Shipment: Intricate Bone Figurine##12961 |goto Dalaran 40.7,35.4 |or
accept Shipment: Shifting Sun Curio##12963 |goto Dalaran 40.7,35.4 |or
accept Shipment: Wicked Sun Brooch##12960 |goto Dalaran 40.7,35.4 |or
step
kill Ymirjar Element Shaper##31267+, Blight Falconer##31262+, Ymirheim Chosen Warrior##31258+
collect 1 Vrykul Amulet##41989 |q 12958 |goto Icecrown,59.1,54.1
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
collect 1 Elemental Armor Scrap##42107 |q 12962 |goto Dragonblight,67.3,52.3
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
kill Emaciated Mammoth Bull##26271+, Emaciated Mammoth Calf##26273+, Emaciated Mammoth##26272+
collect 1 Northern Ivory##42104 |q 12959 |goto Dragonblight,62.5,47.4
step
Go to the Auction House in a major city:
Buy 1 Chalcedony |collect 1 Chalcedony##36923 |q 12959
|tip If you don't want to, or can't, buy the Chalcedony, you can also try to get one by mining or prospecting.
Buy 1 Shadow Crystal |collect 1 Shadow Crystal##36926 |q 12959
|tip If you don't want to, or can't, buy the Shadow Crystal, you can also try to get one by mining or prospecting.
step
Use your Northern Ivory in your bags|use Northern Ivory##42104
collect 1 Glowing Ivory Figurine##43270 |q 12959/1
step
kill Blighted Proto-Drake##29590+
collect 1 Proto Dragon Bone##42106 |q 12961 |goto The Storm Peaks,23.1,57.7
step
Go to the Auction House in a major city:
Buy 1 Sun Crystal |collect 1 Sun Crystal##36920 |q 12959
|tip If you don't want to, or can't, buy the Sun Crystal, you can also try to get one by mining or prospecting.
Buy 1 Dark Jade |collect 1 Dark Jade##36932 |q 12961
|tip If you don't want to, or can't, buy the Dark Jade, you can also try to get one by mining or prospecting.
step
Use your Proto Dragon Bone in your bags |use Proto Dragon Bone##42106
collect 1 Intricate Bone Figurine##43274 |q 12961/1
step
kill Wastes Taskmaster##26493+, Wastes Digger##26492+
collect 1 Scourge Curio##42108 |q 12963 |goto Dragonblight,56.3,27.5
step
Go to the Auction House in a major city:
Buy 1 Sun Crystal |collect 1 Sun Crystal##36920 |q 12963
|tip If you don't want to, or can't, buy the Sun Crystal, you can also try to get one by mining or prospecting.
Buy 1 Shadow Crystal |collect 1 Shadow Crystal##36926 |q 12963
|tip If you don't want to, or can't, buy the Shadow Crystal, you can also try to get one by mining or prospecting.
step
Use your Scourge Curio in your bags |use Scourge Curio##42108
collect 1 Shifting Sun Curio##43276 |q 12963/1
step
The entrance to the cave starts here |goto The Storm Peaks 26.8,66.9 < 10 |c |q 12960
step
kill Stormforged Pillager##29586+, Stormforged Loreseeker##29843+
collect 1 Iron Dwarf Brooch##42105 |q 12960 |goto 26.0,67.2
step
Leave the cave |goto The Storm Peaks 26.8,66.9 < 10 |c |q 12960
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
You have reached the end of the dailies for today
Click here to go back to the beginning of the guide |confirm |next "dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Dragonblight\\Wyrmrest Accord Dailies with Pre-Quests",{
author="support@zygorguides.com",
description="\nThis guide section contains the pre-quests to unlock the daily quests in the Wyrmrest Temple region of Dragonblight. The Moa'ki Harbor region of Dragonblight does not have any pre-quests to unlock the daily quest that is available there.",
},[[
step
Proceeding to Pre-Quests |next |only if default
Proceeding to Dailies |next "dailies" |only if completedq(12435)
step
#include "WAccord_Quests"
step
label "dailies"
#include "WAccord_Dailies"
step
You have finished this Dailies Guide. Click here to return to the beginning of the Dailies |confirm
|next "dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Dragonblight\\Moa'ki Harbor Dailies",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the daily quest in the Moa'ki Harbor region of Dragonblight. There are no pre-quests needed to unlock the daily quest offered in this guide section.",
},[[
step
talk Trapper Mau'i##26228
accept Planning for the Future##11960 |goto Dragonblight,48.3,74.3
step
Click Snowfall Glade Pups
|tip The Snowfall Glade Pups are small creatures in front of the houses.
collect 12 Snowfall Glade Pup##35692 |q 11960/1 |goto 45.3,63.7
step
talk Trapper Mau'i##26228
turnin Planning for the Future##11960 |goto 48.3,74.3
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Grizzly Hills\\Blackriver Logging Camp Dailies",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the daily quest in the Blackriver Logging Camp region of Grizzly Hills. There are no pre-quests needed to unlock the daily quest offered in this guide section.",
},[[
step
Routing to the proper section |next |only if default
Routing to the porper section |next "dailies" |only if completedq(12029)
step
talk Samir##26424
accept Filling the Cages##11984 |goto Grizzly Hills,16.2,47.6
step
talk Budd##26429
Tell him it's time to play with the ice trolls |havebuff 134177 |q 11984 |goto 16.4,48.3
step
Use Budd's pet bar skill Tag Troll to have him stun a troll|petaction Tag Troll
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
Use your Dull Carving Knife next to the yellow cage|use Dull Carving Knife##38083
talk Drakuru##26423
_Shake his hand_
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
talk Scout Captain Carter##27783
accept Blackriver Skirmish##12444 |goto Grizzly Hills,30.0,59.8
step
Kill Horde Players or Conquest Hold Raiders in the Blackriver Logging Camp
Kill 10 Horde in Blackriver |q 12444/1 |goto 28.3,63.4
step
talk Scout Captain Carter##27783
turnin Blackriver Skirmish##12444 |goto 30.0,59.8
step
You have finished this Dailies Guide. Click here to return to the beginning of the Dailies |confirm
|next "dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Grizzly Hills\\Blue Sky Logging Grounds Dailies",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the daily quests in the Blue Sky Logging Grounds region of Grizzly Hills. There are no pre-quests needed to unlock the daily quests offered in this guide section.",
},[[
step
Routing to the proper section |next |only if default
Routing to the porper section |next "dailies" |only if completedq(12029)
step
talk Samir##26424
accept Filling the Cages##11984 |goto Grizzly Hills,16.2,47.6
step
talk Budd##26429
Tell him it's time to play with the ice trolls |havebuff 134177 |q 11984 |goto 16.4,48.3
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
_Shake his hand_
Make a Blood Pact With Drakuru |q 11989/1 |goto 16.4,47.8
step
talk Drakuru##26423
turnin Truce?##11989
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
talk Sergeant Hartsman##27468
accept Kick 'Em While They're Down##12289 |goto Grizzly Hills,39.3,43.9
step
talk Synipus##27371
accept Shredder Repair##12244 |goto 39.5,43.6
step
talk Pipthwack##27416
accept Pieces Parts##12268 |goto 39.6,43.4
step
talk Rheanna##27484
accept Life or Death##12296 |goto 40.5,42.7
step
Use Renewing Bandages on Wounded Wesfall Infantry |use Renewing Bandage##37576
Heal 10 Westfall Infantry |q 12296/1 |goto 34.9,39.8
Click Grooved Cogs, Notched Sprockets, and High Tension Springs on the ground of the Blue Sky Logging Grounds
collect 4 Grooved Cogs##37412 |q 12268/1 |goto 34.9,39.8
collect 3 Notched Sprockets##37413 |q 12268/2 |goto 34.9,39.8
collect 2 High Tension Springs##37416 |q 12268/3 |goto 34.9,39.8
step
Kill Horde Players or Wounded Skirmishers in the area
Eliminate 15 Horde units |q 12289/1 |goto 33.4,35.7
step
Find the Broken-down Shredder that spawns. Blizzards quest helper will mark it on your map for you.
Click the Broken-down Shredder to get inside it
Use your abilities on your hot bar to return the shredder to Synipus |goto Grizzly Hills,39.5,43.6
Deliver 3 Shredders |q 12244/1 |goto 34.9,39.8
step
talk Sergeant Hartsman##27468
turnin Kick 'Em While They're Down##12289 |goto 39.3,43.9
step
talk Synipus##27371
turnin Shredder Repair##12244 |goto 39.5,43.6
step
talk Pipthwack##27416
turnin Pieces Parts##12268 |goto 39.6,43.4
step
talk Rheanna##27484
turnin Life or Death##12296 |goto 40.5,42.7
step
You have finished this Dailies Guide. Click here to return to the beginning of the Dailies |confirm
|next "dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Grizzly Hills\\Granite Springs Dailies",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the daily quest in the Granite Springs region of Grizzly Hills.",
},[[
step
Routing to the proper section |next |only if default
Routing to the porper section |next "dailies" |only if completedq(12029)
step
talk Samir##26424
accept Filling the Cages##11984 |goto Grizzly Hills,16.2,47.6
step
talk Budd##26429
Tell him it's time to play with the ice trolls |havebuff 134177 |q 11984 |goto 16.4,48.3
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
_Shake his hand_
Make a Blood Pact With Drakuru |q 11989/1 |goto 16.4,47.8
step
talk Drakuru##26423
turnin Truce?##11989
accept Vial of Visions##11990 |goto 16.4,47.8
step
talk Ameenah##26474
buy 1 Imbued Vial |q 11990/1 |goto 16,47.8
step
Click the Hazewood Bushes
|tip They look like small flower bushes on the ground around this area.
collect 3 Haze Leaf##37085|q 11990/2 |goto 14.6,45.3
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
accept Seared Scourge##12038 |goto Grizzly Hills,16.7,48.3
step
Jump on the big rock and stand on it
Use Mack's Dark Grog and throw it at the trolls running around to the north |use Mack's Dark Grog##35908
Burn 30 Scourge Trolls |q 12038/1 |goto 16,29.9
step
talk Mack Fearsen##26604
turnin Seared Scourge##12038 |goto Grizzly Hills,16.7,48.3
step
You have finished this Dailies Guide. Click here to return to the beginning of the Dailies |confirm
|next "dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Grizzly Hills\\Venture Bay Dailies",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the daily quests in the Venture Bay region of Grizzly Hills. There are no pre-quests needed to unlock the daily quests offered in this guide section.",
},[[
step
Routing to the proper section |next |only if default
Routing to the porper section |next "dailies" |only if completedq(12029)
step
talk Samir##26424
accept Filling the Cages##11984 |goto Grizzly Hills,16.2,47.6
step
talk Budd##26429
Tell him it's time to play with the ice trolls |havebuff 134177 |q 11984 |goto 16.4,48.3
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
get 3 Haze Leaf |q 11990/2 |goto 14.6,45.3
step
Click a Waterweed
|tip They look like big green bushes underwater around this area.
get Waterweed Frond |q 11990/3 |goto 15.2,40.3
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
talk Commander Howser##27759
accept Riding the Red Rocket##12437 |goto Grizzly Hills,14.8,86.6
If he's not there, then you have to take control of Venture Bay for the Alliance
To take control of Venture Bay for the Alliance, go to 15.1,88.0 |tip Hide behind the lighthouse in between the 2 big brown rocks. Flag yourself for PvP and a bar will appear under your minimap. Sit here until the bar marker is all the way to the left, this will make Commander Howser spawn.
step
talk Sergeant Downey##27602
accept Smoke 'Em Out##12323 |goto 22.1,81.2
step
talk Lieutenant Stuart##27562
accept Keep Them at Bay!##12316 |goto 22.1,81.2
step
talk Baron Freeman##27520
accept Down With Captain Zorna##12314 |goto 22.2,81.2
step
Toss the Smoke Bomb into the buildings to smoke out Venture Co. Stragglers |use Smoke Bomb##37621
Building one can be found at [18.0,79.6]
Building two can be found at [16.4,76.6]
Building three can be found at [14.6,76.7]
Smoke out 20 Venture Company Stragglers |q 12323/1 |goto 18.0,79.6
step
Kill Horde Players or Conquest Hold Berserker in Venture Bay
Kill 10 Horde in Venture Bay |q 12316/1 |goto 19.9,76.4
step
kill Captain Zorna##27511|q 12314/1 |goto 13.3,80.2
step
Click the Element 115 in the back room of the ship
|tip It looks like a red canister with a handle on the top
collect Element 115##37664 |q 12437 |goto 16.4,80.3
step
On the next step you will guide a rocket into this Horde Lumberboat
Your target will be the wooden X on the back
Go to 13.6,88.9 |goto Grizzly Hills 13.6,88.9,0.5
You will want to use your keys, not your mouse, to guide the rocket
Avoid icebergs or the rocket will explode and you will have to start over
Click a red rocket to take control of one |invehicle |c |q 12437 |goto 9.6,79.2
step
Hit the wooden X on the back of the Horde Lumberboat
Destroy the Horde Lumberboat |q 12437/1 |goto 9.6,79.1
step
talk Commander Howser##27759
turnin Riding the Red Rocket##12437 |goto 14.8,86.6
step
talk Lieutenant Stuart##27562
turnin Keep Them at Bay!##12316 |goto 22.1,81.2
step
talk Baron Freeman##27520
turnin Down With Captain Zorna##12314 |goto 22.1,81.2
step
talk Sergeant Downey##27602
turnin Smoke 'Em Out##12323 |goto 22.1,81.2
step
You have finished this Dailies Guide. Click here to return to the beginning of the Dailies |confirm
|next "dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Howling Fjord\\Steel Gate Dailies",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the daily quest in the Apothecary Camp region of Howling Fjord.",
},[[
step
Proceeding to the proper section |next |only if default
Proceeding to the proper section |next "dailies" |only if completedq(11390)
step
talk Orfus of Kamagua##23804
accept The Dead Rise!##11504 |goto Howling Fjord,40.3,60.3
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
talk Overseer Irena Stonemantle##23891
accept See to the Operations##11176 |goto Howling Fjord,30.2,28.7
step
talk Steel Gate Chief Archaeologist##24399
turnin See to the Operations##11176 |goto 30.8,28.6
accept I've Got a Flying Machine!##11390 |goto 30.8,28.6
step
Click the plane near you on the wooden platform to ride in it |invehicle
step
Fly down into the valley below
They look like huge sacks with yellow stuff in them on the ground
Use your Grappling Hook ability on your hotbar near a big sack on the ground |petaction Grappling Hook
Fly back to the top of the valley and fly toward the red arrows on the big scale things to Deliver a Sack of Relics
Repeat this 2 more time
Deliver 3 Sacks of Relics |q 11390/1
step
Fly back to the wooden platform and click the red arrow button on your hotbar to get out of the plane |outvehicle
step
talk Steel Gate Chief Archaeologist##24399
turnin I've Got a Flying Machine!##11390 |goto 30.8,28.6
step
label "dailies"
talk Steel Gate Chief Archaeologist##24399
accept Steel Gate Patrol##11391 |goto Howling Fjord,30.8,28.6
step
Click the plane near you on the wooden platform to ride in it |invehicle
step
Use the abilities on your hotbar as you fly around to fight the flying gargoyles
kill 8 Gjalerbron Gargoyle |q 11391/1
step
Fly back to the wooden platform and click the red arrow button on your hotbar to get out of the plane|outvehicle
step
talk Steel Gate Chief Archaeologist##24399
turnin Steel Gate Patrol##11391 |goto 30.8,28.6
step
You have finished this Dailies Guide. Click here to return to the beginning of the Dailies |confirm
|next "dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Howling Fjord\\Kamagua Dailies",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the daily quest in the Kamagua region of Howling Fjord.",
},[[
step
Proceeding to the proper section |next |only if default
Proceeding to the proper section |next "dailies" |only if completedq(11390)
step
talk Orfus of Kamagua##23804
accept The Dead Rise!##11504 |goto Howling Fjord,40.3,60.3
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
talk Overseer Irena Stonemantle##23891
accept See to the Operations##11176 |goto Howling Fjord,30.2,28.7
step
talk Steel Gate Chief Archaeologist##24399
turnin See to the Operations##11176 |goto 30.8,28.6
accept I've Got a Flying Machine!##11390 |goto 30.8,28.6
step
Click the plane near you on the wooden platform to ride in it |invehicle
step
Fly down into the valley below
They look like huge sacks with yellow stuff in them on the ground
Use your Grappling Hook ability on your hotbar near a big sack on the ground |petaction Grappling Hook
Fly back to the top of the valley and fly toward the red arrows on the big scale things to Deliver a Sack of Relics
Repeat this 2 more time
Deliver 3 Sacks of Relics |q 11390/1
step
Fly back to the wooden platform and click the red arrow button on your hotbar to get out of the plane |outvehicle
step
talk Steel Gate Chief Archaeologist##24399
turnin I've Got a Flying Machine!##11390 |goto 30.8,28.6
step
label "dailies"
talk Anuniaq##24810
accept The Way to His Heart...##11472 |goto Howling Fjord,24.6,58.9
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
You have finished this Dailies Guide. Click here to return to the beginning of the Dailies |confirm
|next "dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Howling Fjord\\Westguard Keep Dailies",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the daily quest in the Westguard Keep region of Howling Fjord.",
},[[
step
Proceeding to the proper section |next |only if default
Proceeding to the proper section |next "dailies" |only if completedq(11390)
step
talk Orfus of Kamagua##23804
accept The Dead Rise!##11504 |goto Howling Fjord,40.3,60.3
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
talk Overseer Irena Stonemantle##23891
accept See to the Operations##11176 |goto Howling Fjord,30.2,28.7
step
talk Steel Gate Chief Archaeologist##24399
turnin See to the Operations##11176 |goto 30.8,28.6
accept I've Got a Flying Machine!##11390 |goto 30.8,28.6
step
Click the plane near you on the wooden platform to ride in it |invehicle
step
Fly down into the valley below
They look like huge sacks with yellow stuff in them on the ground
Use your Grappling Hook ability on your hotbar near a big sack on the ground |petaction Grappling Hook
Fly back to the top of the valley and fly toward the red arrows on the big scale things to Deliver a Sack of Relics
Repeat this 2 more time
Deliver 3 Sacks of Relics |q 11390/1
step
Fly back to the wooden platform and click the red arrow button on your hotbar to get out of the plane |outvehicle
step
talk Steel Gate Chief Archaeologist##24399
turnin I've Got a Flying Machine!##11390 |goto 30.8,28.6
step
label	dailies
talk Bombardier Petrov##23895
accept Break the Blockade##11153 |goto Howling Fjord,29,41.9
step
If you have a flying mount you can just fly onto the boats and kill the pirates and cannons
If you do not have a flying mount wait for the zeppelin to come back, if it is there already, then get on it
Use Petrov's Cluster Bombs in your bags to throw them off the zeppelin at the pirates as you ride|use Petrov's Cluster Bombs##33098
kill 25 Blockade Pirate |q 11153/1 |goto 28.1,42.1
Destroy 10 Blockade Cannons |q 11153/2 |goto 28.1,42.1
step
talk Bombardier Petrov##23895
turnin Break the Blockade##11153 |goto 29,41.9
step
You have finished this Dailies Guide. Click here to return to the beginning of the Dailies |confirm
|next "dailies"
]])
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Argent Tournament Grounds\\Aspirant Rank Dailies",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through unlocking Aspirant Rank dailies in order to achieve Argent Tournament Grounds Valiant rank.",
condition_end=function() return completedq(13679) end,
next="Dailies Guides\\Wrath of the Lich King Dailies\\Argent Tournament Grounds\\Valiant Rank Dailies",
},[[
step
talk Helidan Lightwing##33849
fpath Argent Tournament Grounds |goto Icecrown/0 72.59,22.61
step
talk Justicar Mariel Trueheart##33817
|tip Inside the building.
accept The Argent Tournament##13667 |goto 69.66,22.86
step
talk Arcanist Taelis##33625
|tip Inside the building.
turnin The Argent Tournament##13667 |goto 76.46,19.41
accept Mastery Of Melee##13828 |goto 76.46,19.41
step
talk Avareth Swiftstrike##33646
|tip Inside the building.
accept Mastery Of The Charge##13837 |goto 76.44,19.35
step
talk Scout Shalyndria##33647
|tip Inside the building.
accept Mastery Of The Shield-Breaker##13835 |goto 76.47,19.46
step
Equip the Alliance Lance |equipped Alliance Lance##46069 |q 13828
step
clicknpc Stabled Quel'dorei Steed##33843
Mount the Stabled Quel'dorei Steed |invehicle |q 13828 |goto 75.93,20.37
step
talk Valis Windchaser##33974
Tell him _"Show me how to train with a Ranged Target."_
Seek Valis Windchaser's Advice |q 13835/1 |goto 73.20,19.23
step
kill Ranged Target##33243
Use Shield-Breaker on #2# Vulnerable Ranged Targets |q 13835/2 |goto 72.95,19.16
|tip Use the "Shield-Breaker" ability on a Ranged Target in front of you several times.
step
talk Rugan Steelbelly##33972
Tell him _"Show me how to train with a Charge Target."_
Seek Rugan Steelbelly's Advice |q 13837/1 |goto 72.67,18.88
step
kill Charge Target##33272
Use Charge on #2# Vulnerable Charge Targets |q 13837/2 |goto 72.88,19.10
|tip Use the "Shield-Breaker" ability on a Charge Target.
|tip Immediately use "Charge" on it.
|tip Repeat this procedure again.
step
talk Jeran Lockwood##33973
Tell him _"Show me how to train wiht a Melee Target."_
Seek Jeran Lockwood's Advice |q 13828/1 |goto 72.46,19.29
step
kill Melee Target##33229
Use Thrust on the Melee Target #5# Times |q 13828/2 |goto 72.29,19.25
|tip Build and maintain 3 stacks of "Defend."
|tip Use the "Thrust" ability on the Melee Target.
|tip Alternate using "Defend" and "Thrust" to maintain the buff.
step
Dismount the Stabled Quel'dorei Steed |outvehicle |q 13828
|tip Click the "Exit" button on your vehicle bar.
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46069})
|tip Replace the lance with your standard weapon.
step
talk Scout Shalyndria##33647
|tip Inside the building.
turnin Mastery Of The Shield-Breaker##13835 |goto 76.47,19.46
step
talk Avareth Swiftstrike##33646
|tip Inside the building.
turnin Mastery Of The Charge##13837 |goto 76.44,19.35
step
talk Arcanist Taelis##33625
|tip Inside the building.
turnin Mastery Of Melee##13828 |goto 76.46,19.41
accept Up To The Challenge##13672 |goto 76.46,19.41
stickystart "Collect_15_Aspirant's Seals"
step
label "Accept_Aspirant_Dailies"
talk Arcanist Taelis##33625
|tip Inside the building.
accept A Blade Fit For A Champion##13666 |goto 76.46,19.41 |only if questpossible |or
accept A Worthy Weapon##13669 |goto 76.46,19.41 |only if questpossible |or
accept The Edge of Winter##13670 |goto 76.46,19.41 |only if questpossible |or
Accept the Arcanist's Daily Quest |complete false |goto 76.46,19.41 |or |only if not completedq(13666,13669,13670,13679)
Accept the Arcanist's Daily Quest |complete true |goto 76.46,19.41 |or |only if completedq(13666,13669,13670,13679)
|tip You will only be able to accept one quest each day.
step
talk Avareth Swiftstrike##33646
|tip Inside the building.
accept Training in the Field##13671 |goto 76.44,19.35 |only if not completedq(13671,13679)
accept Training in the Field##13671 |goto 76.44,19.35 |complete true |only if completedq(13671,13679)
step
talk Scout Shalyndria##33647
|tip Inside the building.
accept Learning the Reins##13625 |goto 76.47,19.46 |only if not completedq(13625,13679)
accept Learning the Reins##13625 |goto 76.47,19.46 |complete true |only if completedq(13625,13679)
stickystop "Collect_15_Aspirant's Seals"
step
Equip the Alliance Lance |equipped Alliance Lance##46069 |goto 75.93,20.37 |q 13625
|only if haveq(13625) or completedq(13625)
step
clicknpc Stabled Quel'dorei Steed##33843
Mount the Stabled Quel'dorei Steed |invehicle |q 13625 |goto 75.93,20.37
|only if haveq(13625) or completedq(13625)
step
kill Ranged Target##33243
Use Shield-Breaker on #2# Vulnerable Ranged Targets |q 13625/2 |goto 72.95,19.16
|tip Use the "Shield-Breaker" ability on a Ranged Target in front of you several times.
|only if haveq(13625) or completedq(13625)
step
kill Charge Target##33272
Use Charge on #2# Vulnerable Charge Targets |q 13625/3 |goto 72.88,19.10
|tip Use the "Shield-Breaker" ability on a Charge Target.
|tip Immediately use "Charge" on it.
|tip Repeat this procedure again.
|only if haveq(13625) or completedq(13625)
step
kill Melee Target##33229
Use Thrust on the Melee Target #5# Times |q 13625/1 |goto 72.29,19.25
|tip Build and maintain 3 stacks of "Defend."
|tip Use the "Thrust" ability on the Melee Target.
|tip Alternate using "Defend" and "Thrust" to maintain the buff.
|only if haveq(13625) or completedq(13625)
step
Dismount the Stabled Quel'dorei Steed |outvehicle |q 13625
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13625) or completedq(13625)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46069})
|tip Replace the lance with your standard weapon.
|only if haveq(13625) or completedq(13625)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
accept Get Kraken!##14108 |goto 69.51,23.09 |only if questpossible |or
accept The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if questpossible |or
Accept Silverdawn's Daily Quest |complete false |goto 69.51,23.09 |or |only if not completedq(14108,14107,13679)
Accept Silverdawn's Daily Quest |complete true |goto 69.51,23.09 |or |only if completedq(14108,14107,13679)
|tip You will only be able to accept one quest each day.
|only if achieved(2817)
step
talk High Crusader Adelard##34882
|tip Inside the building.
accept Deathspeaker Kharos##14105 |goto 69.48,23.13 |only if questpossible |or
accept Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if questpossible |or
accept Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if questpossible |or
accept Ornolf The Scarred##14104 |goto 69.48,23.13 |only if questpossible |or
Accept Adelard's Daily Quest |complete false |goto 69.48,23.13 |or |only if not completedq(14105,14101,14102,14104,13679)
Accept Adelard's Daily Quest |complete true |goto 69.48,23.13 |or |only if completedq(14105,14101,14102,14104,13679)
|tip You will only be able to accept one quest each day.
|only if achieved(2817)
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
Slay #8# Icecrown Scourge |q 13671/1 |goto 70.79,39.82
step
click Winter Hyacinth##194213+
|tip They look like purple and pink flowers on the ground around this area.
collect 4 Winter Hyacinth##45000 |q 13669 |goto 70.41,74.55
|only if haveq(13669) or completedq(13669)
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13670 |goto Crystalsong Forest/0 55.10,74.90
|only if haveq(13670) or completedq(13670)
step
use the Winter Hyacinth##45000
|tip Use them in the water.
Watch the dialogue
click the Blade of Drak'Mar##194238
|tip It will spawn after a brief dialogue.
collect Blade of Drak'Mar##44978 |q 13669/1 |goto Dragonblight/0 93.18,25.99
|only if haveq(13669) or completedq(13669)
step
label "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
use the Warts-B-Gone Lip Balm##44986
Gain the "Warts-B-Gone Lip Balm" Buff |complete hasbuff("spell:62574") or readyq(13666) |goto Grizzly Hills/0 61.18,49.57 |q 13666
|only if haveq(13666) or completedq(13666)
step
Kiss Lake Frogs |script DoEmote("KISS")
|tip Target Lake Frogs and perform the Kiss emote.
|tip Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake.
talk Maiden of Ashwood Lake##33220
Ask her her _"Glad to help, my lady. I'm told you were once the guardian of a fabled sword. Do you know where I might find it?"_
collect Ashwood Brand##44981 |q 13666/1 |goto Grizzly Hills/0 61.18,49.57 |or
'|complete not hasbuff("spell:62574") and not (readyq(13666) or completedq(13666)) |or |next "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
|only if haveq(13666) or completedq(13666)
step
use the Everburning Ember##45005
|tip Use it on the Maiden of Winter's Breath.
collect Winter's Edge##45003 |q 13670/1 |goto Howling Fjord/0 42.18,19.66
|only if haveq(13670) or completedq(13670)
stickystart "Collect_15_Aspirant's Seals"
step
talk Arcanist Taelis##33625
|tip Inside the building.
turnin A Blade Fit For A Champion##13666 |goto Icecrown/0 76.46,19.41 |only if haveq(13666) or completedq(13666)
turnin A Worthy Weapon##13669 |goto 76.46,19.41 |only if haveq(13669) or completedq(13669)
turnin The Edge of Winter##13670 |goto 76.46,19.41 |only if haveq(13670) or completedq(13670)
|only if haveq(13666,13669,13670) or completedq(13666,13669,13670)
step
talk Avareth Swiftstrike##33646
|tip Inside the building.
turnin Training in the Field##13671 |goto 76.44,19.35
|only if haveq(13671) or completedq(13671)
step
talk Scout Shalyndria##33647
|tip Inside the building.
turnin Learning the Reins##13625 |goto 76.47,19.46
|only if haveq(13625) or completedq(13625)
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
'|complete not completedq(13666,13669,13670,13671,13625,14108,14107,14105,14101,14102,14104) and itemcount(44987) < 25 and not completedq(13672) |next "Accept_Aspirant_Dailies" |or
'|complete completedq(13672) or itemcount(44987) >= 15 |or
step
label "Collect_15_Aspirant's Seals"
collect 15 Aspirant's Seal##45192 |q 13672/1
|tip Complete Argent Tournament daily quests to earn these each day.
step
talk Arcanist Taelis##33625
|tip Inside the building.
turnin Up To The Challenge##13672 |goto 76.46,19.41
accept The Aspirant's Challenge##13679 |goto 76.46,19.41
step
Equip the Alliance Lance |equipped Alliance Lance##46069 |q 13679
step
clicknpc Stabled Quel'dorei Steed##33843
Mount the Stabled Quel'dorei Steed |invehicle |q 13679 |goto 71.84,19.87
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 spell:62552 |q 13679 |goto 71.43,19.57
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
Defeat the Argent Valiant |q 13679/1 |goto 71.43,19.57
step
Dismount the Stabled Quel'dorei Steed |outvehicle |q 13679
|tip Click the "Exit" button on your vehicle bar.
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46069})
|tip Replace the lance with your standard weapon.
step
talk Arcanist Taelis##33625
|tip Inside the building.
turnin The Aspirant's Challenge##13679 |goto 76.46,19.41
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Argent Tournament Grounds\\Valiant Rank Dailies",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through unlocking Valiant Rank dailies in order to achieve Argent Tournament Grounds Champion rank.",
hideif=function() return not raceclass{"Human","Worgen","Pandaren","KulTiran"} end,
condition_end=function() return completedq(13702) end,
next="Dailies Guides\\Wrath of the Lich King Dailies\\Argent Tournament Grounds\\Champion Rank Dailies",
condition_valid=function() return completedq(13679) end,
condition_valid_msg="You must complete \"The Aspirant's Challenge\" quest and reach Aspirant rank with the Argent Tournament Grounds.\n\n"..
"Complete the \"Aspirant Rank Dailies\" guide first.",
},[[
step
talk Arcanist Taelis##33625
|tip Inside the building.
accept A Valiant Of Stormwind##13684 |goto Icecrown/0 76.46,19.41
step
talk Marshal Jacob Alerius##33225
|tip Inside the building.
turnin A Valiant Of Stormwind##13684 |goto 76.60,19.12
accept The Valiant's Charge##13718 |goto 76.60,19.12
stickystart "Collect_25_Valiant's Seals"
step
label "Accept_Valiant_Dailies"
talk Marshal Jacob Alerius##33225
|tip Inside the building.
accept A Blade Fit For A Champion##13603 |goto 76.60,19.12 |only if questpossible |or
accept A Worthy Weapon##13600 |goto 76.60,19.12 |only if questpossible |or
accept The Edge Of Winter##13616 |goto 76.60,19.12 |only if questpossible |or
Accept the Marshal's Daily Quest |complete false |goto 76.60,19.12 |or |only if not completedq(13603,13600,13616,13702)
Accept the Marshal's Daily Quest |complete true |goto 76.60,19.12 |or |only if completedq(13603,13600,13616,13702)
|tip You will only be able to accept one quest each day.
step
talk Sir Marcus Barlowe##33222
accept A Valiant's Field Training##13592 |goto 76.53,19.07 |only if not completedq(13592,13702)
accept A Valiant's Field Training##13592 |complete true |goto 76.53,19.07 |only if completedq(13592,13702)
step
talk Captain Joseph Holley##33223
|tip Inside the building.
accept The Grand Melee##13665 |goto 76.62,19.21
accept At The Enemy's Gates##13847 |goto 76.62,19.21 |only if not completedq(13665,13847,13702)
accept At The Enemy's Gates##13847 |complete true |goto 76.62,19.21 |only if completedq(13665,13847,13702)
stickystop "Collect_25_Valiant's Seals"
step
Equip the Alliance Lance |equipped Alliance Lance##46069 |q 13665
|only if haveq(13665) or completedq(13665)
step
clicknpc Stabled Stormwind Steed##33800
Mount the Stabled Stormwind Steed |invehicle |q 13665 |goto 76.08,20.47
|only if haveq(13665) or completedq(13665)
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 spell:62552 |goto 75.30,18.35 |q 13665
|tip Use the "Defend" ability on your vehicle bar.
|tip Before beginning combat, having 3 stacks of this buff is essential.
|only if haveq(13665) or completedq(13665)
step
Talk to the riders on mounts of other Alliance races
Tell them _"I am ready to fight!"_
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to remove their defenses, then use the "Charge" ability to deal damage.
|tip "Thrust" is useful in melee range, but make sure your shield is stacked up before using it.
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range. Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13665/1 |goto 75.30,18.35
|only if haveq(13665) or completedq(13665)
step
Dismount the Stabled Stormwind Steed |outvehicle |q 13665
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13665) or completedq(13665)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46069})
|tip Replace the lance with your standard weapon.
|only if haveq(13665) or completedq(13665)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
accept Get Kraken!##14108 |goto 69.51,23.09 |only if questpossible |or
accept The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if questpossible |or
Accept Silverdawn's Daily Quest |complete false |goto 69.51,23.09 |or |only if not completedq(14108,14107,13702)
Accept Silverdawn's Daily Quest |complete true |goto 69.51,23.09 |or |only if completedq(14108,14107,13702)
|tip You will only be able to accept one quest each day.
|only if achieved(2817)
step
talk High Crusader Adelard##34882
|tip Inside the building.
accept Deathspeaker Kharos##14105 |goto 69.48,23.13 |only if questpossible |or
accept Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if questpossible |or
accept Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if questpossible |or
accept Ornolf The Scarred##14104 |goto 69.48,23.13 |only if questpossible |or
Accept Adelard's Daily Quest |complete false |goto 69.48,23.13 |or |only if not completedq(14105,14101,14102,14104,13702)
Accept Adelard's Daily Quest |complete true |goto 69.48,23.13 |or |only if completedq(14105,14101,14102,14104,13702)
|tip You will only be able to accept one quest each day.
|only if achieved(2817)
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
kill 10 Converted Hero##32255 |q 13592/1 |goto 44.62,52.62
|only if haveq(13592) or completedq(13592)
step
Equip the Alliance Lance |equipped Alliance Lance##46069 |goto Icecrown/0 48.87,71.41 |q 13847
|only if haveq(13847) or completedq(13847)
step
clicknpc Stabled Campaign Warhorse##34125
Mount the Stabled Campaign Warhorse |invehicle |q 13847 |goto 48.87,71.41
|only if haveq(13847) or completedq(13847)
stickystart "Kill_10_Bonegard_Scouts"
stickystart "Kill_3_Bonegard_Lieutenants"
step
kill 15 Boneguard Footman##33438 |q 13847/1 |goto 50.23,74.13
|tip Running over these with your warhorse will kill them.
|only if haveq(13847) or completedq(13847)
step
label "Kill_10_Bonegard_Scouts"
kill 10 Boneguard Scout##33550 |q 13847/2 |goto 50.23,74.13
|tip They fly around this area.
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to attack them in the air.
|only if haveq(13847) or completedq(13847)
step
label "Kill_3_Bonegard_Lieutenants"
kill 3 Boneguard Lieutenant##33429 |q 13847/3 |goto 50.61,76.93
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to remove their defenses, then use the "Charge" ability to deal damage.
|tip "Thrust" is useful in melee range, but make sure your shield is stacked up before using it.
|only if haveq(13847) or completedq(13847)
step
Dismount the Stabled Campaign Warhorse |outvehicle |q 13847
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13847) or completedq(13847)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46069})
|tip Replace the lance with your standard weapon.
|only if haveq(13847) or completedq(13847)
step
click Winter Hyacinth##194213+
|tip They look like purple and pink flowers on the ground around this area.
collect 4 Winter Hyacinth##45000 |q 13600 |goto 70.41,74.55
|only if haveq(13600) or completedq(13600)
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13616 |goto Crystalsong Forest/0 55.10,74.90
|only if haveq(13616) or completedq(13616)
step
use the Winter Hyacinth##45000
|tip Use them in the water.
Watch the dialogue
click the Blade of Drak'Mar##194238
|tip It will spawn after a brief dialogue.
collect Blade of Drak'Mar##44978 |q 13600/1 |goto Dragonblight/0 93.18,25.99
|only if haveq(13600) or completedq(13600)
step
label "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
use the Warts-B-Gone Lip Balm##44986
Gain the "Warts-B-Gone Lip Balm" Buff |complete hasbuff("spell:62574") or readyq(13603) |goto Grizzly Hills/0 61.18,49.57 |q 13603
|only if haveq(13603) or completedq(13603)
step
Kiss Lake Frogs |script DoEmote("KISS")
|tip Target Lake Frogs and perform the Kiss emote.
|tip Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake.
talk Maiden of Ashwood Lake##33220
Ask her her _"Glad to help, my lady. I'm told you were once the guardian of a fabled sword. Do you know where I might find it?"_
collect Ashwood Brand##44981 |q 13603/1 |goto Grizzly Hills/0 61.18,49.57 |or
'|complete not hasbuff("spell:62574") and not (readyq(13603) or completedq(13603)) |or |next "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
|only if haveq(13603) or completedq(13603)
step
use the Everburning Ember##45005
|tip Use it on the Maiden of Winter's Breath.
collect Winter's Edge##45003 |q 13616/1 |goto Howling Fjord/0 42.18,19.66
|only if haveq(13616) or completedq(13616)
stickystart "Collect_25_Valiant's Seals"
step
talk Marshal Jacob Alerius##33225
|tip Inside the building.
turnin A Blade Fit For A Champion##13603 |goto Icecrown/0 76.60,19.12 |only if haveq(13603) or completedq(13603)
turnin A Worthy Weapon##13600 |goto 76.60,19.12 |only if haveq(13600) or completedq(13600)
turnin The Edge Of Winter##13616 |goto 76.60,19.12 |only if haveq(13616) or completedq(13616)
|only if haveq(13603,13600,13616) or completedq(13603,13600,13616)
step
talk Sir Marcus Barlowe##33222
|tip Inside the building.
turnin A Valiant's Field Training##13592 |goto 76.53,19.07
|only if haveq(13592) or completedq(13592)
step
talk Captain Joseph Holley##33223
|tip Inside the building.
turnin The Grand Melee##13665 |goto 76.62,19.21 |only if haveq(13665) or completedq(13665)
turnin At The Enemy's Gates##13847 |goto 76.62,19.21 |only if haveq(13847) or completedq(13847)
|only if haveq(13665,13847) or completedq(13665,13847)
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
'|complete not completedq(13603,13600,13616,13592,13665,13847,14108,14107,14105,14101,14102,14104) and itemcount(44987) < 25 and not completedq(13718) |next "Accept_Valiant_Dailies" |or
'|complete completedq(13718) or itemcount(44987) >= 25 |or
step
label "Collect_25_Valiant's Seals"
collect 25 Valiant's Seal##44987 |q 13718/1
|tip Complete Argent Tournament daily quests to earn these each day.
step
talk Marshal Jacob Alerius##33225
|tip Inside the building.
turnin The Valiant's Charge##13718 |goto 76.60,19.12
accept The Valiant's Challenge##13699 |goto 76.60,19.12
step
Equip the Alliance Lance |equipped Alliance Lance##46069 |q 13699
step
clicknpc Stabled Stormwind Steed##33800
Mount the Stabled Stormwind Steed |invehicle |q 13699 |goto 71.56,22.42
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 spell:62552 |q 13699 |goto 68.60,20.99
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
Defeat the Argent Champion |q 13699/1 |goto 68.60,20.99
step
Dismount the Stabled Stormwind Steed |outvehicle |q 13699
|tip Click the "Exit" button on your vehicle bar.
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46069})
|tip Replace the lance with your standard weapon.
step
talk Marshal Jacob Alerius##33225
|tip Inside the building.
turnin The Valiant's Challenge##13699 |goto 76.60,19.12
accept A Champion Rises##13702 |goto 76.60,19.12
step
talk Justicar Mariel Trueheart##33817
|tip Inside the building.
turnin A Champion Rises##13702 |goto 69.66,22.86
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Argent Tournament Grounds\\Valiant Rank Dailies",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through unlocking Valiant Rank dailies in order to achieve Argent Tournament Grounds Champion rank.",
hideif=function() return not raceclass{"NightElf","VoidElf"} end,
condition_end=function() return completedq(13735) end,
next="Dailies Guides\\Wrath of the Lich King Dailies\\Argent Tournament Grounds\\Champion Rank Dailies",
condition_valid=function() return completedq(13679) end,
condition_valid_msg="You must complete \"The Aspirant's Challenge\" quest and reach Aspirant rank with the Argent Tournament Grounds.\n\n"..
"Complete the \"Aspirant Rank Dailies\" guide first.",
},[[
step
talk Arcanist Taelis##33625
|tip Inside the building.
accept A Valiant Of Darnassus##13689 |goto Icecrown/0 76.46,19.41
step
talk Jaelyne Evensong##33592
|tip Inside the building.
turnin A Valiant Of Darnassus##13689 |goto 76.35,19.03
accept The Valiant's Charge##13717 |goto 76.35,19.03
stickystart "Collect_25_Valiant's Seals"
step
label "Accept_Valiant_Dailies"
talk Jaelyne Evensong##33592
|tip Inside the building.
accept A Blade Fit For A Champion##13757 |only if questpossible |or
accept A Worthy Weapon##13758 |goto 76.35,19.03 |only if questpossible |or
accept The Edge Of Winter##13759 |goto 76.35,19.03 |only if questpossible |or
Accept Jaelyne's Daily Quest |complete false |goto 76.35,19.03 |or |only if not completedq(13757,13758,13759,13735)
Accept Jaelyne's Daily Quest |complete true |goto 76.35,19.03 |or |only if completedq(13757,13758,13759,13735)
|tip You will only be able to accept one quest each day.
step
talk Illestria Bladesinger##33652
|tip Inside the building.
accept A Valiant's Field Training##13760 |goto 76.30,18.99 |only if not completedq(13760,13735)
accept A Valiant's Field Training##13760 |complete true |goto 76.30,18.99 |only if completedq(13760,13735)
step
talk Airae Starseeker##33654
|tip Inside the building.
accept The Grand Melee##13761 |goto 76.40,19.00 |only if not completedq(13761,13855,13735)
accept At The Enemy's Gates##13855 |goto 76.40,19.00 |only if not completedq(13761,13855,13735)
accept At The Enemy's Gates##13855 |complete true |goto 76.40,19.00 |only if completedq(13761,13855,13735)
stickystop "Collect_25_Valiant's Seals"
step
Equip the Alliance Lance |equipped Alliance Lance##46069 |q 13761
|only if haveq(13761) or completedq(13761)
step
clicknpc Stabled Darnassian Nightsaber##33794
Mount the Stabled Darnassian Nightsaber |invehicle |q 13761 |goto 76.00,20.41
|only if haveq(13761) or completedq(13761)
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 spell:62552 |goto 75.30,18.35 |q 13761
|tip Use the "Defend" ability on your vehicle bar.
|tip Before beginning combat, having 3 stacks of this buff is essential.
|only if haveq(13761) or completedq(13761)
step
Talk to the riders on mounts of other Alliance races
Tell them _"I am ready to fight!"_
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to remove their defenses, then use the "Charge" ability to deal damage.
|tip "Thrust" is useful in melee range, but make sure your shield is stacked up before using it.
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range. Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13761/1 |goto 75.30,18.35
|only if haveq(13761) or completedq(13761)
step
Dismount the Stabled Darnassian Nightsaber |outvehicle |q 13761
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13761) or completedq(13761)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46069})
|tip Replace the lance with your standard weapon.
|only if haveq(13761) or completedq(13761)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
accept Get Kraken!##14108 |goto 69.51,23.09 |only if questpossible |or
accept The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if questpossible |or
Accept Silverdawn's Daily Quest |complete false |goto 69.51,23.09 |or |only if not completedq(14108,14107,13735)
Accept Silverdawn's Daily Quest |complete true |goto 69.51,23.09 |or |only if completedq(14108,14107,13735)
|tip You will only be able to accept one quest each day.
|only if achieved(2817)
step
talk High Crusader Adelard##34882
|tip Inside the building.
accept Deathspeaker Kharos##14105 |goto 69.48,23.13 |only if questpossible |or
accept Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if questpossible |or
accept Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if questpossible |or
accept Ornolf The Scarred##14104 |goto 69.48,23.13 |only if questpossible |or
Accept Adelard's Daily Quest |complete false |goto 69.48,23.13 |or |only if not completedq(14105,14101,14102,14104,13735)
Accept Adelard's Daily Quest |complete true |goto 69.48,23.13 |or |only if completedq(14105,14101,14102,14104,13735)
|tip You will only be able to accept one quest each day.
|only if achieved(2817)
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
kill 10 Converted Hero##32255 |q 13760/1 |goto 44.62,52.62
|only if haveq(13760) or completedq(13760)
step
Equip the Alliance Lance |equipped Alliance Lance##46069 |goto Icecrown/0 48.87,71.41 |q 13855
|only if haveq(13855) or completedq(13855)
step
clicknpc Stabled Campaign Warhorse##34125
Mount the Stabled Campaign Warhorse |invehicle |goto 48.87,71.41 |q 13855
|only if haveq(13855) or completedq(13855)
stickystart "Kill_10_Bonegard_Scouts"
stickystart "Kill_3_Bonegard_Lieutenants"
step
kill 15 Boneguard Footman##33438 |q 13855/1 |goto 50.23,74.13
|tip Running over these with your warhorse will kill them.
|only if haveq(13855) or completedq(13855)
step
label "Kill_10_Bonegard_Scouts"
kill 10 Boneguard Scout##33550 |q 13855/2 |goto 50.23,74.13
|tip They fly around this area.
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to attack them in the air.
|only if haveq(13855) or completedq(13855)
step
label "Kill_3_Bonegard_Lieutenants"
kill 3 Boneguard Lieutenant##33429 |q 13855/3 |goto 50.61,76.93
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to remove their defenses, then use the "Charge" ability to deal damage.
|tip "Thrust" is useful in melee range, but make sure your shield is stacked up before using it.
|only if haveq(13855) or completedq(13855)
step
Dismount the Stabled Campaign Warhorse |outvehicle |q 13855
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13855) or completedq(13855)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46069})
|tip Replace the lance with your standard weapon.
|only if haveq(13855) or completedq(13855)
step
click Winter Hyacinth##194213+
|tip They look like purple and pink flowers on the ground around this area.
collect 4 Winter Hyacinth##45000 |q 13758 |goto 70.41,74.55
|only if haveq(13758) or completedq(13758)
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13759 |goto Crystalsong Forest/0 55.10,74.90
|only if haveq(13759) or completedq(13759)
step
use the Winter Hyacinth##45000
|tip Use them in the water.
Watch the dialogue
click the Blade of Drak'Mar##194238
|tip It will spawn after a brief dialogue.
collect Blade of Drak'Mar##44978 |q 13758/1 |goto Dragonblight/0 93.18,25.99
|only if haveq(13758) or completedq(13758)
step
label "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
use the Warts-B-Gone Lip Balm##44986
Gain the "Warts-B-Gone Lip Balm" Buff |complete hasbuff("spell:62574") or readyq(13757) |goto Grizzly Hills/0 61.18,49.57 |q 13757
|only if haveq(13757) or completedq(13757)
step
Kiss Lake Frogs |script DoEmote("KISS")
|tip Target Lake Frogs and perform the Kiss emote.
|tip Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake.
talk Maiden of Ashwood Lake##33220
Ask her her _"Glad to help, my lady. I'm told you were once the guardian of a fabled sword. Do you know where I might find it?"_
collect Ashwood Brand##44981 |q 13757/1 |goto Grizzly Hills/0 61.18,49.57 |or
'|complete not hasbuff("spell:62574") and not (readyq(13757) or completedq(13757)) |or |next "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
|only if haveq(13757) or completedq(13757)
step
use the Everburning Ember##45005
|tip Use it on the Maiden of Winter's Breath.
collect Winter's Edge##45003 |q 13759/1 |goto Howling Fjord/0 42.18,19.66
|only if haveq(13759) or completedq(13759)
stickystart "Collect_25_Valiant's Seals"
step
talk Jaelyne Evensong##33592
|tip Inside the building.
turnin A Blade Fit For A Champion##13757 |goto Icecrown/0 76.35,19.03 |only if haveq(13757) or completedq(13757)
turnin A Worthy Weapon##13758 |goto 76.35,19.03 |only if haveq(13758) or completedq(13758)
turnin The Edge Of Winter##13759 |goto 76.35,19.03 |only if haveq(13759) or completedq(13759)
|only if haveq(13757,13758,13759) or completedq(13757,13758,13759)
step
talk Illestria Bladesinger##33652
|tip Inside the building.
turnin A Valiant's Field Training##13760 |goto 76.30,18.99
|only if haveq(13760) or completedq(13760)
step
talk Airae Starseeker##33654
|tip Inside the building.
turnin The Grand Melee##13761 |goto 76.40,19.00 |only if haveq(13761) or completedq(13761)
turnin At The Enemy's Gates##13855 |goto 76.40,19.00 |only if haveq(13855) or completedq(13855)
|only if haveq(13761,13855) or completedq(13761,13855)
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
'|complete not completedq(13757,13758,13759,13760,13761,13855,14108,14107,14105,14101,14102,14104) and itemcount(44987) < 25 and not completedq(13717) |next "Accept_Valiant_Dailies" |or
'|complete completedq(13717) or itemcount(44987) >= 25 |or
step
label "Collect_25_Valiant's Seals"
collect 25 Valiant's Seal##44987 |q 13717/1
|tip Complete Argent Tournament daily quests to earn these each day.
step
talk Jaelyne Evensong##33592
|tip Inside the building.
turnin The Valiant's Charge##13717 |goto 76.35,19.03
accept The Valiant's Challenge##13725 |goto 76.35,19.03
step
Equip the Alliance Lance |equipped Alliance Lance##46069 |q 13725
step
clicknpc Stabled Darnassian Nightsaber##33794
Mount the Stabled Darnassian Nightsaber |invehicle |q 13725 |goto 71.62,22.49
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 spell:62552 |q 13725 |goto 68.60,20.99
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
Defeat the Argent Champion |q 13725/1 |goto 68.60,20.99
step
Dismount the Stabled Darnassian Nightsaber |outvehicle |q 13725
|tip Click the "Exit" button on your vehicle bar.
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46069})
|tip Replace the lance with your standard weapon.
step
talk Jaelyne Evensong##33592
|tip Inside the building.
turnin The Valiant's Challenge##13725 |goto 76.35,19.03
accept A Champion Rises##13735 |goto 76.35,19.03
step
talk Justicar Mariel Trueheart##33817
|tip Inside the building.
turnin A Champion Rises##13735 |goto 69.66,22.86
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Argent Tournament Grounds\\Valiant Rank Dailies",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through unlocking Valiant Rank dailies in order to achieve Argent Tournament Grounds Champion rank.",
hideif=function() return not raceclass{"Dwarf","DarkIronDwarf"} end,
condition_end=function() return completedq(13732) end,
next="Dailies Guides\\Wrath of the Lich King Dailies\\Argent Tournament Grounds\\Champion Rank Dailies",
condition_valid=function() return completedq(13679) end,
condition_valid_msg="You must complete \"The Aspirant's Challenge\" quest and reach Aspirant rank with the Argent Tournament Grounds.\n\n"..
"Complete the \"Aspirant Rank Dailies\" guide first.",
},[[
step
talk Arcanist Taelis##33625
|tip Inside the building.
accept A Valiant Of Ironforge##13685 |goto Icecrown/0 76.46,19.41
step
talk Lana Stouthammer##33312
|tip Inside the building.
turnin A Valiant Of Ironforge##13685 |goto 76.64,19.49
accept The Valiant's Charge##13714 |goto 76.64,19.49
stickystart "Collect_25_Valiant's Seals"
step
label "Accept_Valiant_Dailies"
talk Lana Stouthammer##33312
|tip Inside the building.
accept A Blade Fit For A Champion##13741 |only if questpossible |or
accept A Worthy Weapon##13742 |goto 76.64,19.49 |only if questpossible |or
accept The Edge Of Winter##13743 |goto 76.64,19.49 |only if questpossible |or
Accept Lana's Daily Quest |complete false |goto 76.64,19.49 |or |only if not completedq(13741,13742,13743,13732)
Accept Lana's Daily Quest |complete true |goto 76.64,19.49 |or |only if completedq(13741,13742,13743,13732)
|tip You will only be able to accept one quest each day.
step
talk Rollo Sureshot##33315
accept A Valiant's Field Training##13744 |goto 76.66,19.41 |only if not completedq(13744,13732)
accept A Valiant's Field Training##13744 |complete true |goto 76.66,19.41 |only if completedq(13744,13732)
step
talk Clara Tumblebrew##33309
|tip Inside the building.
accept The Grand Melee##13745 |goto 76.64,19.57 |only if not completedq(13745,13851,13732)
accept At The Enemy's Gates##13851 |goto 76.64,19.57 |only if not completedq(13745,13851,13732)
accept At The Enemy's Gates##13851 |complete true |goto 76.64,19.57 |only if completedq(13745,13851,13732)
stickystop "Collect_25_Valiant's Seals"
step
Equip the Alliance Lance |equipped Alliance Lance##46069 |q 13745
|only if haveq(13745) or completedq(13745)
step
clicknpc Stabled Ironforge Ram##33795
Mount the Stabled Ironforge Ram |invehicle |q 13745 |goto 76.25,20.51
|only if haveq(13745) or completedq(13745)
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 spell:62552 |goto 75.30,18.35 |q 13745
|tip Use the "Defend" ability on your vehicle bar.
|tip Before beginning combat, having 3 stacks of this buff is essential.
|only if haveq(13745) or completedq(13745)
step
Talk to the riders on mounts of other Alliance races
Tell them _"I am ready to fight!"_
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to remove their defenses, then use the "Charge" ability to deal damage.
|tip "Thrust" is useful in melee range, but make sure your shield is stacked up before using it.
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range. Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13745/1 |goto 75.30,18.35
|only if haveq(13745) or completedq(13745)
step
Dismount the Stabled Ironforge Ram |outvehicle |q 13745
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13745) or completedq(13745)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46069})
|tip Replace the lance with your standard weapon.
|only if haveq(13745) or completedq(13745)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
accept Get Kraken!##14108 |goto 69.51,23.09 |only if questpossible |or
accept The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if questpossible |or
Accept Silverdawn's Daily Quest |complete false |goto 69.51,23.09 |or |only if not completedq(14108,14107,13732)
Accept Silverdawn's Daily Quest |complete true |goto 69.51,23.09 |or |only if completedq(14108,14107,13732)
|tip You will only be able to accept one quest each day.
|only if achieved(2817)
step
talk High Crusader Adelard##34882
|tip Inside the building.
accept Deathspeaker Kharos##14105 |goto 69.48,23.13 |only if questpossible |or
accept Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if questpossible |or
accept Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if questpossible |or
accept Ornolf The Scarred##14104 |goto 69.48,23.13 |only if questpossible |or
Accept Adelard's Daily Quest |complete false |goto 69.48,23.13 |or |only if not completedq(14105,14101,14102,14104,13732)
Accept Adelard's Daily Quest |complete true |goto 69.48,23.13 |or |only if completedq(14105,14101,14102,14104,13732)
|tip You will only be able to accept one quest each day.
|only if achieved(2817)
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
kill 10 Converted Hero##32255 |q 13744/1 |goto 44.62,52.62
|only if haveq(13744) or completedq(13744)
step
Equip the Alliance Lance |equipped Alliance Lance##46069 |goto Icecrown/0 48.87,71.41 |q 13851
|only if haveq(13851) or completedq(13851)
step
clicknpc Stabled Campaign Warhorse##34125
Mount the Stabled Campaign Warhorse |invehicle |q 13851 |goto 48.87,71.41
|only if haveq(13851) or completedq(13851)
stickystart "Kill_10_Bonegard_Scouts"
stickystart "Kill_3_Bonegard_Lieutenants"
step
kill 15 Boneguard Footman##33438 |q 13851/1 |goto 50.23,74.13
|tip Running over these with your warhorse will kill them.
|only if haveq(13851) or completedq(13851)
step
label "Kill_10_Bonegard_Scouts"
kill 10 Boneguard Scout##33550 |q 13851/2 |goto 50.23,74.13
|tip They fly around this area.
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to attack them in the air.
|only if haveq(13851) or completedq(13851)
step
label "Kill_3_Bonegard_Lieutenants"
kill 3 Boneguard Lieutenant##33429 |q 13851/3 |goto 50.61,76.93
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to remove their defenses, then use the "Charge" ability to deal damage.
|tip "Thrust" is useful in melee range, but make sure your shield is stacked up before using it.
|only if haveq(13851) or completedq(13851)
step
Dismount the Stabled Campaign Warhorse |outvehicle |q 13851
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13851) or completedq(13851)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46069})
|tip Replace the lance with your standard weapon.
|only if haveq(13851) or completedq(13851)
step
click Winter Hyacinth##194213+
|tip They look like purple and pink flowers on the ground around this area.
collect 4 Winter Hyacinth##45000 |q 13742 |goto 70.41,74.55
|only if haveq(13742) or completedq(13742)
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13743 |goto Crystalsong Forest/0 55.10,74.90
|only if haveq(13743) or completedq(13743)
step
use the Winter Hyacinth##45000
|tip Use them in the water.
Watch the dialogue
click the Blade of Drak'Mar##194238
|tip It will spawn after a brief dialogue.
collect Blade of Drak'Mar##44978 |q 13742/1 |goto Dragonblight/0 93.18,25.99
|only if haveq(13742) or completedq(13742)
step
label "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
use the Warts-B-Gone Lip Balm##44986
Gain the "Warts-B-Gone Lip Balm" Buff |complete hasbuff("spell:62574") or readyq(13741) |goto Grizzly Hills/0 61.18,49.57 |q 13741
|only if haveq(13741) or completedq(13741)
step
Kiss Lake Frogs |script DoEmote("KISS")
|tip Target Lake Frogs and perform the Kiss emote.
|tip Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake.
talk Maiden of Ashwood Lake##33220
Ask her her _"Glad to help, my lady. I'm told you were once the guardian of a fabled sword. Do you know where I might find it?"_
collect Ashwood Brand##44981 |q 13741/1 |goto Grizzly Hills/0 61.18,49.57 |or
'|complete not hasbuff("spell:62574") and not (readyq(13741) or completedq(13741)) |or |next "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
|only if haveq(13741) or completedq(13741)
step
use the Everburning Ember##45005
|tip Use it on the Maiden of Winter's Breath.
collect Winter's Edge##45003 |q 13743/1 |goto Howling Fjord/0 42.18,19.66
|only if haveq(13743) or completedq(13743)
stickystart "Collect_25_Valiant's Seals"
step
talk Lana Stouthammer##33312
|tip Inside the building.
turnin A Blade Fit For A Champion##13741 |goto Icecrown/0 76.64,19.49 |only if haveq(13741) or completedq(13741)
turnin A Worthy Weapon##13742 |goto 76.64,19.49 |only if haveq(13742) or completedq(13742)
turnin The Edge Of Winter##13743 |goto 76.64,19.49 |only if haveq(13743) or completedq(13743)
|only if haveq(13741,13742,13743) or completedq(13741,13742,13743)
step
talk Rollo Sureshot##33315
|tip Inside the building.
turnin A Valiant's Field Training##13744 |goto 76.66,19.41
|only if haveq(13744) or completedq(13744)
step
talk Clara Tumblebrew##33309
|tip Inside the building.
turnin The Grand Melee##13745 |goto 76.64,19.57 |only if haveq(13745) or completedq(13745)
turnin At The Enemy's Gates##13851 |goto 76.64,19.57 |only if haveq(13851) or completedq(13851)
|only if haveq(13745,13851) or completedq(13745,13851)
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
'|complete not completedq(13741,13742,13743,13744,13745,13851,14108,14107,14105,14101,14102,14104) and itemcount(44987) < 25 and not completedq(13714) |next "Accept_Valiant_Dailies" |or
'|complete completedq(13714) or itemcount(44987) >= 25 |or
step
label "Collect_25_Valiant's Seals"
collect 25 Valiant's Seal##44987 |q 13714/1
|tip Complete Argent Tournament daily quests to earn these each day.
step
talk Lana Stouthammer##33312
|tip Inside the building.
turnin The Valiant's Charge##13714 |goto 76.64,19.49
accept The Valiant's Challenge##13713 |goto 76.64,19.49
step
Equip the Alliance Lance |equipped Alliance Lance##46069 |q 13713
step
clicknpc Stabled Ironforge Ram##33795
Mount the Stabled Ironforge Ram |invehicle |q 13713 |goto 71.80,22.50
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 spell:62552 |q 13713 |goto 68.60,20.99
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
Defeat the Argent Champion |q 13713/1 |goto 68.60,20.99
step
Dismount the Stabled Ironforge Ram |outvehicle |q 13713
|tip Click the "Exit" button on your vehicle bar.
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46069})
|tip Replace the lance with your standard weapon.
step
talk Lana Stouthammer##33312
|tip Inside the building.
turnin The Valiant's Challenge##13713 |goto 76.64,19.49
accept A Champion Rises##13732 |goto 76.64,19.49
step
talk Justicar Mariel Trueheart##33817
|tip Inside the building.
turnin A Champion Rises##13732 |goto 69.66,22.86
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Argent Tournament Grounds\\Valiant Rank Dailies",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through unlocking Valiant Rank dailies in order to achieve Argent Tournament Grounds Champion rank.",
hideif=function() return not raceclass{"Gnome","Mechagnome"} end,
condition_end=function() return completedq(13733) end,
next="Dailies Guides\\Wrath of the Lich King Dailies\\Argent Tournament Grounds\\Champion Rank Dailies",
condition_valid=function() return completedq(13679) end,
condition_valid_msg="You must complete \"The Aspirant's Challenge\" quest and reach Aspirant rank with the Argent Tournament Grounds.\n\n"..
"Complete the \"Aspirant Rank Dailies\" guide first.",
},[[
step
talk Arcanist Taelis##33625
|tip Inside the building.
accept A Valiant Of Gnomeregan##13688 |goto Icecrown/0 76.46,19.41
step
talk Ambrose Boltspark##33335
|tip Inside the building.
turnin A Valiant Of Gnomeregan##13688 |goto 76.55,19.82
accept The Valiant's Charge##13715 |goto 76.55,19.82
stickystart "Collect_25_Valiant's Seals"
step
label "Accept_Valiant_Dailies"
talk Ambrose Boltspark##33335
|tip Inside the building.
accept A Blade Fit For A Champion##13746 |only if questpossible |or
accept A Worthy Weapon##13747 |goto 76.55,19.82 |only if questpossible |or
accept The Edge Of Winter##13748 |goto 76.55,19.82 |only if questpossible |or
Accept Ambrose's Daily Quest |complete false |goto 76.55,19.82 |or |only if not completedq(13746,13747,13748,13733)
Accept Ambrose's Daily Quest |complete true |goto 76.55,19.82 |or |only if completedq(13746,13747,13748,13733)
|tip You will only be able to accept one quest each day.
step
talk Tickin Gearspanner##33648
|tip Inside the building.
accept A Valiant's Field Training##13749 |goto 76.60,19.79 |only if not completedq(13749,13733)
accept A Valiant's Field Training##13749 |complete true |goto 76.60,19.79 |only if completedq(13749,13733)
step
talk Flickin Gearspanner##33649
|tip Inside the building.
accept The Grand Melee##13750 |goto 76.52,19.89 |only if not completedq(13750,13852,13733)
accept At The Enemy's Gates##13852 |goto 76.52,19.89 |only if not completedq(13750,13852,13733)
accept At The Enemy's Gates##13852 |complete true |goto 76.52,19.89 |only if completedq(13750,13852,13733)
stickystop "Collect_25_Valiant's Seals"
step
Equip the Alliance Lance |equipped Alliance Lance##46069 |q 13750
|only if haveq(13750) or completedq(13750)
step
clicknpc Stabled Gnomeregan Mechanostrider##33793
Mount the Stabled Gnomeregan Mechanostrider |invehicle |q 13750 |goto 76.17,20.49
|only if haveq(13750) or completedq(13750)
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 spell:62552 |goto 75.30,18.35 |q 13750
|tip Use the "Defend" ability on your vehicle bar.
|tip Before beginning combat, having 3 stacks of this buff is essential.
|only if haveq(13750) or completedq(13750)
step
Talk to the riders on mounts of other Alliance races
Tell them _"I am ready to fight!"_
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to remove their defenses, then use the "Charge" ability to deal damage.
|tip "Thrust" is useful in melee range, but make sure your shield is stacked up before using it.
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range. Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13750/1 |goto 75.30,18.35
|only if haveq(13750) or completedq(13750)
step
Dismount the Stabled Gnomeregan Mechanostrider |outvehicle |q 13750
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13750) or completedq(13750)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46069})
|tip Replace the lance with your standard weapon.
|only if haveq(13750) or completedq(13750)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
accept Get Kraken!##14108 |goto 69.51,23.09 |only if questpossible |or
accept The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if questpossible |or
Accept Silverdawn's Daily Quest |complete false |goto 69.51,23.09 |or |only if not completedq(14108,14107,13733)
Accept Silverdawn's Daily Quest |complete true |goto 69.51,23.09 |or |only if completedq(14108,14107,13733)
|tip You will only be able to accept one quest each day.
|only if achieved(2817)
step
talk High Crusader Adelard##34882
|tip Inside the building.
accept Deathspeaker Kharos##14105 |goto 69.48,23.13 |only if questpossible |or
accept Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if questpossible |or
accept Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if questpossible |or
accept Ornolf The Scarred##14104 |goto 69.48,23.13 |only if questpossible |or
Accept Adelard's Daily Quest |complete false |goto 69.48,23.13 |or |only if not completedq(14105,14101,14102,14104,13733)
Accept Adelard's Daily Quest |complete true |goto 69.48,23.13 |or |only if completedq(14105,14101,14102,14104,13733)
|tip You will only be able to accept one quest each day.
|only if achieved(2817)
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
kill 10 Converted Hero##32255 |q 13749/1 |goto 44.62,52.62
|only if haveq(13749) or completedq(13749)
step
Equip the Alliance Lance |equipped Alliance Lance##46069 |goto Icecrown/0 48.87,71.41 |q 13852
|only if haveq(13852) or completedq(13852)
step
clicknpc Stabled Campaign Warhorse##34125
Mount the Stabled Campaign Warhorse |invehicle |goto 48.87,71.41 |q 13852
|only if haveq(13852) or completedq(13852)
stickystart "Kill_10_Bonegard_Scouts"
stickystart "Kill_3_Bonegard_Lieutenants"
step
kill 15 Boneguard Footman##33438 |q 13852/1 |goto 50.23,74.13
|tip Running over these with your warhorse will kill them.
|only if haveq(13852) or completedq(13852)
step
label "Kill_10_Bonegard_Scouts"
kill 10 Boneguard Scout##33550 |q 13852/2 |goto 50.23,74.13
|tip They fly around this area.
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to attack them in the air.
|only if haveq(13852) or completedq(13852)
step
label "Kill_3_Bonegard_Lieutenants"
kill 3 Boneguard Lieutenant##33429 |q 13852/3 |goto 50.61,76.93
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to remove their defenses, then use the "Charge" ability to deal damage.
|tip "Thrust" is useful in melee range, but make sure your shield is stacked up before using it.
|only if haveq(13852) or completedq(13852)
step
Dismount the Stabled Campaign Warhorse |outvehicle |q 13852
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13852) or completedq(13852)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46069})
|tip Replace the lance with your standard weapon.
|only if haveq(13852) or completedq(13852)
step
click Winter Hyacinth##194213+
|tip They look like purple and pink flowers on the ground around this area.
collect 4 Winter Hyacinth##45000 |q 13747 |goto 70.41,74.55
|only if haveq(13747) or completedq(13747)
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13748 |goto Crystalsong Forest/0 55.10,74.90
|only if haveq(13748) or completedq(13748)
step
use the Winter Hyacinth##45000
|tip Use them in the water.
Watch the dialogue
click the Blade of Drak'Mar##194238
|tip It will spawn after a brief dialogue.
collect Blade of Drak'Mar##44978 |q 13747/1 |goto Dragonblight/0 93.18,25.99
|only if haveq(13747) or completedq(13747)
step
label "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
use the Warts-B-Gone Lip Balm##44986
Gain the "Warts-B-Gone Lip Balm" Buff |complete hasbuff("spell:62574") or readyq(13746) |goto Grizzly Hills/0 61.18,49.57 |q 13746
|only if haveq(13746) or completedq(13746)
step
Kiss Lake Frogs |script DoEmote("KISS")
|tip Target Lake Frogs and perform the Kiss emote.
|tip Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake.
talk Maiden of Ashwood Lake##33220
Ask her her _"Glad to help, my lady. I'm told you were once the guardian of a fabled sword. Do you know where I might find it?"_
collect Ashwood Brand##44981 |q 13746/1 |goto Grizzly Hills/0 61.18,49.57 |or
'|complete not hasbuff("spell:62574") and not (readyq(13746) or completedq(13746)) |or |next "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
|only if haveq(13746) or completedq(13746)
step
use the Everburning Ember##45005
|tip Use it on the Maiden of Winter's Breath.
collect Winter's Edge##45003 |q 13748/1 |goto Howling Fjord/0 42.18,19.66
|only if haveq(13748) or completedq(13748)
stickystart "Collect_25_Valiant's Seals"
step
talk Ambrose Boltspark##33335
|tip Inside the building.
turnin A Blade Fit For A Champion##13746 |goto Icecrown/0 76.55,19.82 |only if haveq(13746) or completedq(13746)
turnin A Worthy Weapon##13747 |goto 76.55,19.82 |only if haveq(13747) or completedq(13747)
turnin The Edge Of Winter##13748 |goto 76.55,19.82 |only if haveq(13748) or completedq(13748)
|only if haveq(13746,13747,13748) or completedq(13746,13747,13748)
step
talk Tickin Gearspanner##33648
|tip Inside the building.
turnin A Valiant's Field Training##13749 |goto 76.60,19.79
|only if haveq(13749) or completedq(13749)
step
talk Flickin Gearspanner##33649
|tip Inside the building.
turnin The Grand Melee##13750 |goto 76.52,19.89 |only if haveq(13750) or completedq(13750)
turnin At The Enemy's Gates##13852 |goto 76.52,19.89 |only if haveq(13852) or completedq(13852)
|only if haveq(13750,13852) or completedq(13750,13852)
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
'|complete not completedq(13746,13747,13748,13749,13750,13852,14108,14107,14105,14101,14102,14104) and itemcount(44987) < 25 and not completedq(13715) |next "Accept_Valiant_Dailies" |or
'|complete completedq(13715) or itemcount(44987) >= 25 |or
step
label "Collect_25_Valiant's Seals"
collect 25 Valiant's Seal##44987 |q 13715/1
|tip Complete Argent Tournament daily quests to earn these each day.
step
talk Ambrose Boltspark##33335
|tip Inside the building.
turnin The Valiant's Charge##13715 |goto 76.55,19.82
accept The Valiant's Challenge##13723 |goto 76.55,19.82
step
Equip the Alliance Lance |equipped Alliance Lance##46069 |q 13723
step
clicknpc Stabled Gnomeregan Mechanostrider##33793
Mount the Stabled Gnomeregan Mechanostrider |invehicle |q 13723 |goto 71.93,22.50
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 spell:62552 |q 13723 |goto 68.60,20.99
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
Defeat the Argent Champion |q 13723/1 |goto 68.60,20.99
step
Dismount the Stabled Gnomeregan Mechanostrider |outvehicle |q 13723
|tip Click the "Exit" button on your vehicle bar.
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46069})
|tip Replace the lance with your standard weapon.
step
talk Ambrose Boltspark##33335
|tip Inside the building.
turnin The Valiant's Challenge##13723 |goto 76.55,19.82
accept A Champion Rises##13733 |goto 76.55,19.82
step
talk Justicar Mariel Trueheart##33817
|tip Inside the building.
turnin A Champion Rises##13733 |goto 69.66,22.86
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Argent Tournament Grounds\\Valiant Rank Dailies",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through unlocking Valiant Rank dailies in order to achieve Argent Tournament Grounds Champion rank.",
hideif=function() return not raceclass{"Draenei","LightforgedDraenei"} end,
condition_end=function() return completedq(13734) end,
next="Dailies Guides\\Wrath of the Lich King Dailies\\Argent Tournament Grounds\\Champion Rank Dailies",
condition_valid=function() return completedq(13679) end,
condition_valid_msg="You must complete \"The Aspirant's Challenge\" quest and reach Aspirant rank with the Argent Tournament Grounds.\n\n"..
"Complete the \"Aspirant Rank Dailies\" guide first.",
},[[
step
talk Arcanist Taelis##33625
|tip Inside the building.
accept A Valiant Of The Exodar##13690 |goto Icecrown/0 76.46,19.41
step
talk Colosos##33593
|tip Inside the building.
turnin A Valiant Of The Exodar##13690 |goto 76.10,19.10
accept The Valiant's Charge##13716 |goto 76.10,19.10
stickystart "Collect_25_Valiant's Seals"
step
label "Accept_Valiant_Dailies"
talk Colosos##33593
|tip Inside the building.
accept A Blade Fit For A Champion##13752 |goto 76.10,19.10 |only if questpossible |or
accept A Worthy Weapon##13753 |goto 76.10,19.10 |only if questpossible |or
accept The Edge Of Winter##13754 |goto 76.10,19.10 |only if questpossible |or
Accept Colosos's Daily Quest |complete false |goto 76.10,19.10 |or |only if not completedq(13752,13753,13754,13734)
Accept Colosos's Daily Quest |complete true |goto 76.10,19.10 |or |only if completedq(13752,13753,13754,13734)
|tip You will only be able to accept one quest each day.
step
talk Saandos##33655
|tip Inside the building.
accept A Valiant's Field Training##13755 |goto 76.08,19.19 |only if not completedq(13755,13734)
accept A Valiant's Field Training##13755 |complete true |goto 76.08,19.19 |only if completedq(13755,13734)
step
talk Ranii##33656
|tip Inside the building.
accept The Grand Melee##13756 |goto 76.15,19.08 |only if not completedq(13756,13854,13734)
accept At The Enemy's Gates##13854 |goto 76.15,19.08 |only if not completedq(13756,13854,13734)
accept At The Enemy's Gates##13854 |complete true |goto 76.15,19.08 |only if completedq(13756,13854,13734)
stickystop "Collect_25_Valiant's Seals"
step
Equip the Alliance Lance |equipped Alliance Lance##46069 |q 13756
|only if haveq(13756) or completedq(13756)
step
clicknpc Stabled Exodar Elekk##33790
Mount the Stabled Exodar Elekk |invehicle |q 13756 |goto 76.36,20.51
|only if haveq(13756) or completedq(13756)
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 spell:62552 |goto 75.30,18.35 |q 13756
|tip Use the "Defend" ability on your vehicle bar.
|tip Before beginning combat, having 3 stacks of this buff is essential.
|only if haveq(13756) or completedq(13756)
step
Talk to the riders on mounts of other Alliance races
Tell them _"I am ready to fight!"_
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to remove their defenses, then use the "Charge" ability to deal damage.
|tip "Thrust" is useful in melee range, but make sure your shield is stacked up before using it.
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range. Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13756/1 |goto 75.30,18.35
|only if haveq(13756) or completedq(13756)
step
Dismount the Stabled Exodar Elekk |outvehicle |q 13756
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13756) or completedq(13756)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46069})
|tip Replace the lance with your standard weapon.
|only if haveq(13756) or completedq(13756)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
accept Get Kraken!##14108 |goto 69.51,23.09 |only if questpossible |or
accept The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if questpossible |or
Accept Silverdawn's Daily Quest |complete false |goto 69.51,23.09 |or |only if not completedq(14108,14107,13734)
Accept Silverdawn's Daily Quest |complete true |goto 69.51,23.09 |or |only if completedq(14108,14107,13734)
|tip You will only be able to accept one quest each day.
|only if achieved(2817)
step
talk High Crusader Adelard##34882
|tip Inside the building.
accept Deathspeaker Kharos##14105 |goto 69.48,23.13 |only if questpossible |or
accept Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if questpossible |or
accept Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if questpossible |or
accept Ornolf The Scarred##14104 |goto 69.48,23.13 |only if questpossible |or
Accept Adelard's Daily Quest |complete false |goto 69.48,23.13 |or |only if not completedq(14105,14101,14102,14104,13734)
Accept Adelard's Daily Quest |complete true |goto 69.48,23.13 |or |only if completedq(14105,14101,14102,14104,13734)
|tip You will only be able to accept one quest each day.
|only if achieved(2817)
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
kill 10 Converted Hero##32255 |q 13755/1 |goto 44.62,52.62
|only if haveq(13755) or completedq(13755)
step
Equip the Alliance Lance |equipped Alliance Lance##46069 |goto Icecrown/0 48.87,71.41 |q 13854
|only if haveq(13854) or completedq(13854)
step
clicknpc Stabled Campaign Warhorse##34125
Mount the Stabled Campaign Warhorse |invehicle |goto 48.87,71.41 |q 13854
|only if haveq(13854) or completedq(13854)
stickystart "Kill_10_Bonegard_Scouts"
stickystart "Kill_3_Bonegard_Lieutenants"
step
kill 15 Boneguard Footman##33438 |q 13854/1 |goto 50.23,74.13
|tip Running over these with your warhorse will kill them.
|only if haveq(13854) or completedq(13854)
step
label "Kill_10_Bonegard_Scouts"
kill 10 Boneguard Scout##33550 |q 13854/2 |goto 50.23,74.13
|tip They fly around this area.
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to attack them in the air.
|only if haveq(13854) or completedq(13854)
step
label "Kill_3_Bonegard_Lieutenants"
kill 3 Boneguard Lieutenant##33429 |q 13854/3 |goto 50.61,76.93
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to remove their defenses, then use the "Charge" ability to deal damage.
|tip "Thrust" is useful in melee range, but make sure your shield is stacked up before using it.
|only if haveq(13854) or completedq(13854)
step
Dismount the Stabled Campaign Warhorse |outvehicle |q 13854
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13854) or completedq(13854)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46069})
|tip Replace the lance with your standard weapon.
|only if haveq(13854) or completedq(13854)
step
click Winter Hyacinth##194213+
|tip They look like purple and pink flowers on the ground around this area.
collect 4 Winter Hyacinth##45000 |q 13753 |goto 70.41,74.55
|only if haveq(13753) or completedq(13753)
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13754 |goto Crystalsong Forest/0 55.10,74.90
|only if haveq(13754) or completedq(13754)
step
use the Winter Hyacinth##45000
|tip Use them in the water.
Watch the dialogue
click the Blade of Drak'Mar##194238
|tip It will spawn after a brief dialogue.
collect Blade of Drak'Mar##44978 |q 13753/1 |goto Dragonblight/0 93.18,25.99
|only if haveq(13753) or completedq(13753)
step
label "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
use the Warts-B-Gone Lip Balm##44986
Gain the "Warts-B-Gone Lip Balm" Buff |complete hasbuff("spell:62574") or readyq(13752) |goto Grizzly Hills/0 61.18,49.57 |q 13752
|only if haveq(13752) or completedq(13752)
step
Kiss Lake Frogs |script DoEmote("KISS")
|tip Target Lake Frogs and perform the Kiss emote.
|tip Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake.
talk Maiden of Ashwood Lake##33220
Ask her her _"Glad to help, my lady. I'm told you were once the guardian of a fabled sword. Do you know where I might find it?"_
collect Ashwood Brand##44981 |q 13752/1 |goto Grizzly Hills/0 61.18,49.57 |or
'|complete not hasbuff("spell:62574") and not (readyq(13752) or completedq(13752)) |or |next "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
|only if haveq(13752) or completedq(13752)
step
use the Everburning Ember##45005
|tip Use it on the Maiden of Winter's Breath.
collect Winter's Edge##45003 |q 13754/1 |goto Howling Fjord/0 42.18,19.66
|only if haveq(13754) or completedq(13754)
stickystart "Collect_25_Valiant's Seals"
step
talk Colosos##33593
|tip Inside the building.
turnin A Blade Fit For A Champion##13752 |goto Icecrown/0 76.10,19.10 |only if haveq(13752) or completedq(13752)
turnin A Worthy Weapon##13753 |goto 76.10,19.10 |only if haveq(13753) or completedq(13753)
turnin The Edge Of Winter##13754 |goto 76.10,19.10 |only if haveq(13754) or completedq(13754)
|only if haveq(13752,13753,13754) or completedq(13752,13753,13754)
step
talk Saandos##33655
|tip Inside the building.
turnin A Valiant's Field Training##13755 |goto 76.08,19.19
|only if haveq(13755) or completedq(13755)
step
talk Ranii##33656
|tip Inside the building.
turnin The Grand Melee##13756 |goto 76.15,19.08 |only if haveq(13756) or completedq(13756)
turnin At The Enemy's Gates##13854 |goto 76.15,19.08 |only if haveq(13854) or completedq(13854)
|only if haveq(13756,13854) or completedq(13756,13854)
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
'|complete not completedq(13752,13753,13754,13755,13756,13854,14108,14107,14105,14101,14102,14104) and itemcount(44987) < 25 and not completedq(13716) |next "Accept_Valiant_Dailies" |or
'|complete completedq(13716) or itemcount(44987) >= 25 |or
step
label "Collect_25_Valiant's Seals"
collect 25 Valiant's Seal##44987 |q 13716/1
|tip Complete Argent Tournament daily quests to earn these each day.
step
talk Colosos##33593
|tip Inside the building.
turnin The Valiant's Charge##13716 |goto 76.10,19.10
accept The Valiant's Challenge##13724 |goto 76.10,19.10
step
Equip the Alliance Lance |equipped Alliance Lance##46069 |q 13724
step
clicknpc Stabled Exodar Elekk##33790
Mount the Stabled Exodar Elekk |invehicle |q 13724 |goto 71.68,22.38
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 spell:62552 |q 13724 |goto 68.60,20.99
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
Defeat the Argent Champion |q 13724/1 |goto 68.60,20.99
step
Dismount the Stabled Exodar Elekk |outvehicle |q 13724
|tip Click the "Exit" button on your vehicle bar.
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46069})
|tip Replace the lance with your standard weapon.
step
talk Colosos##33593
|tip Inside the building.
turnin The Valiant's Challenge##13724 |goto 76.10,19.10
accept A Champion Rises##13734 |goto 76.10,19.10
step
talk Justicar Mariel Trueheart##33817
|tip Inside the building.
turnin A Champion Rises##13734 |goto 69.66,22.86
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Argent Tournament Grounds\\Champion of Stormwind",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing Valiant Rank dailies in order to achieve Argent Tournament Grounds Champion rank with Stormwind.",
condition_end=function() return completedq(13699) end,
},[[
step
talk Marshal Jacob Alerius##33225
|tip Inside the building.
accept Valiant Of Stormwind##13593 |goto Icecrown/0 76.60,19.12
turnin Valiant Of Stormwind##13593 |goto 76.60,19.12
accept The Valiant's Charge##13718 |goto 76.60,19.12
stickystart "Collect_25_Valiant's Seals"
step
label "Accept_Valiant_Dailies"
talk Marshal Jacob Alerius##33225
|tip Inside the building.
accept A Blade Fit For A Champion##13603 |goto 76.60,19.12 |only if questpossible |or
accept A Worthy Weapon##13600 |goto 76.60,19.12 |only if questpossible |or
accept The Edge Of Winter##13616 |goto 76.60,19.12 |only if questpossible |or
Accept the Marshal's Daily Quest |complete false |goto 76.60,19.12 |or |only if not completedq(13603,13600,13616,13699)
Accept the Marshal's Daily Quest |complete true |goto 76.60,19.12 |or |only if completedq(13603,13600,13616,13699)
|tip You will only be able to accept one quest each day.
step
talk Sir Marcus Barlowe##33222
accept A Valiant's Field Training##13592 |goto 76.53,19.07 |only if not completedq(13592,13699)
accept A Valiant's Field Training##13592 |complete true |goto 76.53,19.07 |only if completedq(13592,13699)
step
talk Captain Joseph Holley##33223
|tip Inside the building.
accept The Grand Melee##13665 |goto 76.62,19.21
accept At The Enemy's Gates##13847 |goto 76.62,19.21 |only if not completedq(13665,13847,13699)
accept At The Enemy's Gates##13847 |complete true |goto 76.62,19.21 |only if completedq(13665,13847,13699)
stickystop "Collect_25_Valiant's Seals"
step
Equip the Alliance Lance |equipped Alliance Lance##46069 |q 13665
|only if haveq(13665) or completedq(13665)
step
clicknpc Stabled Stormwind Steed##33800
Mount the Stabled Stormwind Steed |invehicle |q 13665 |goto 76.08,20.47
|only if haveq(13665) or completedq(13665)
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 spell:62552 |goto 75.30,18.35 |q 13665
|tip Use the "Defend" ability on your vehicle bar.
|tip Before beginning combat, having 3 stacks of this buff is essential.
|only if haveq(13665) or completedq(13665)
step
Talk to the riders on mounts of other Alliance races
Tell them _"I am ready to fight!"_
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to remove their defenses, then use the "Charge" ability to deal damage.
|tip "Thrust" is useful in melee range, but make sure your shield is stacked up before using it.
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range. Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13665/1 |goto 75.30,18.35
|only if haveq(13665) or completedq(13665)
step
Dismount the Stabled Stormwind Steed |outvehicle |q 13665
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13665) or completedq(13665)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46069})
|tip Replace the lance with your standard weapon.
|only if haveq(13665) or completedq(13665)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
accept Get Kraken!##14108 |goto 69.51,23.09 |only if questpossible |or
accept The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if questpossible |or
Accept Silverdawn's Daily Quest |complete false |goto 69.51,23.09 |or |only if not completedq(14108,14107,13699)
Accept Silverdawn's Daily Quest |complete true |goto 69.51,23.09 |or |only if completedq(14108,14107,13699)
|tip You will only be able to accept one quest each day.
|only if achieved(2817)
step
talk High Crusader Adelard##34882
|tip Inside the building.
accept Deathspeaker Kharos##14105 |goto 69.48,23.13 |only if questpossible |or
accept Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if questpossible |or
accept Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if questpossible |or
accept Ornolf The Scarred##14104 |goto 69.48,23.13 |only if questpossible |or
Accept Adelard's Daily Quest |complete false |goto 69.48,23.13 |or |only if not completedq(14105,14101,14102,14104,13699)
Accept Adelard's Daily Quest |complete true |goto 69.48,23.13 |or |only if completedq(14105,14101,14102,14104,13699)
|tip You will only be able to accept one quest each day.
|only if achieved(2817)
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
kill 10 Converted Hero##32255 |q 13592/1 |goto 44.62,52.62
|only if haveq(13592) or completedq(13592)
step
Equip the Alliance Lance |equipped Alliance Lance##46069 |goto Icecrown/0 48.87,71.41 |q 13847
|only if haveq(13847) or completedq(13847)
step
clicknpc Stabled Campaign Warhorse##34125
Mount the Stabled Campaign Warhorse |invehicle |q 13847 |goto 48.87,71.41
|only if haveq(13847) or completedq(13847)
stickystart "Kill_10_Bonegard_Scouts"
stickystart "Kill_3_Bonegard_Lieutenants"
step
kill 15 Boneguard Footman##33438 |q 13847/1 |goto 50.23,74.13
|tip Running over these with your warhorse will kill them.
|only if haveq(13847) or completedq(13847)
step
label "Kill_10_Bonegard_Scouts"
kill 10 Boneguard Scout##33550 |q 13847/2 |goto 50.23,74.13
|tip They fly around this area.
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to attack them in the air.
|only if haveq(13847) or completedq(13847)
step
label "Kill_3_Bonegard_Lieutenants"
kill 3 Boneguard Lieutenant##33429 |q 13847/3 |goto 50.61,76.93
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to remove their defenses, then use the "Charge" ability to deal damage.
|tip "Thrust" is useful in melee range, but make sure your shield is stacked up before using it.
|only if haveq(13847) or completedq(13847)
step
Dismount the Stabled Campaign Warhorse |outvehicle |q 13847
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13847) or completedq(13847)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46069})
|tip Replace the lance with your standard weapon.
|only if haveq(13847) or completedq(13847)
step
click Winter Hyacinth##194213+
|tip They look like purple and pink flowers on the ground around this area.
collect 4 Winter Hyacinth##45000 |q 13600 |goto 70.41,74.55
|only if haveq(13600) or completedq(13600)
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13616 |goto Crystalsong Forest/0 55.10,74.90
|only if haveq(13616) or completedq(13616)
step
use the Winter Hyacinth##45000
|tip Use them in the water.
Watch the dialogue
click the Blade of Drak'Mar##194238
|tip It will spawn after a brief dialogue.
collect Blade of Drak'Mar##44978 |q 13600/1 |goto Dragonblight/0 93.18,25.99
|only if haveq(13600) or completedq(13600)
step
label "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
use the Warts-B-Gone Lip Balm##44986
Gain the "Warts-B-Gone Lip Balm" Buff |complete hasbuff("spell:62574") or readyq(13603) |goto Grizzly Hills/0 61.18,49.57 |q 13603
|only if haveq(13603) or completedq(13603)
step
Kiss Lake Frogs |script DoEmote("KISS")
|tip Target Lake Frogs and perform the Kiss emote.
|tip Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake.
talk Maiden of Ashwood Lake##33220
Ask her her _"Glad to help, my lady. I'm told you were once the guardian of a fabled sword. Do you know where I might find it?"_
collect Ashwood Brand##44981 |q 13603/1 |goto Grizzly Hills/0 61.18,49.57 |or
'|complete not hasbuff("spell:62574") and not (readyq(13603) or completedq(13603)) |or |next "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
|only if haveq(13603) or completedq(13603)
step
use the Everburning Ember##45005
|tip Use it on the Maiden of Winter's Breath.
collect Winter's Edge##45003 |q 13616/1 |goto Howling Fjord/0 42.18,19.66
|only if haveq(13616) or completedq(13616)
stickystart "Collect_25_Valiant's Seals"
step
talk Marshal Jacob Alerius##33225
|tip Inside the building.
turnin A Blade Fit For A Champion##13603 |goto Icecrown/0 76.60,19.12 |only if haveq(13603) or completedq(13603)
turnin A Worthy Weapon##13600 |goto 76.60,19.12 |only if haveq(13600) or completedq(13600)
turnin The Edge Of Winter##13616 |goto 76.60,19.12 |only if haveq(13616) or completedq(13616)
|only if haveq(13603,13600,13616) or completedq(13603,13600,13616)
step
talk Sir Marcus Barlowe##33222
|tip Inside the building.
turnin A Valiant's Field Training##13592 |goto 76.53,19.07
|only if haveq(13592) or completedq(13592)
step
talk Captain Joseph Holley##33223
|tip Inside the building.
turnin The Grand Melee##13665 |goto 76.62,19.21 |only if haveq(13665) or completedq(13665)
turnin At The Enemy's Gates##13847 |goto 76.62,19.21 |only if haveq(13847) or completedq(13847)
|only if haveq(13665,13847) or completedq(13665,13847)
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
'|complete not completedq(13603,13600,13616,13592,13665,13847,14108,14107,14105,14101,14102,14104) and itemcount(44987) < 25 and not completedq(13718) |next "Accept_Valiant_Dailies" |or
'|complete completedq(13718) or itemcount(44987) >= 25 |or
step
label "Collect_25_Valiant's Seals"
collect 25 Valiant's Seal##44987 |q 13718/1
|tip Complete Argent Tournament daily quests to earn these each day.
step
talk Marshal Jacob Alerius##33225
|tip Inside the building.
turnin The Valiant's Charge##13718 |goto 76.60,19.12
accept The Valiant's Challenge##13699 |goto 76.60,19.12
step
Equip the Alliance Lance |equipped Alliance Lance##46069 |q 13699
step
clicknpc Stabled Stormwind Steed##33800
Mount the Stabled Stormwind Steed |invehicle |q 13699 |goto 71.56,22.42
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 spell:62552 |q 13699 |goto 68.60,20.99
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
Defeat the Argent Champion |q 13699/1 |goto 68.60,20.99
step
Dismount the Stabled Stormwind Steed |outvehicle |q 13699
|tip Click the "Exit" button on your vehicle bar.
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46069})
|tip Replace the lance with your standard weapon.
step
talk Marshal Jacob Alerius##33225
|tip Inside the building.
turnin The Valiant's Challenge##13699 |goto 76.60,19.12
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Argent Tournament Grounds\\Champion of Darnassus",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing Valiant Rank dailies in order to achieve Argent Tournament Grounds Champion rank with Darnassus.",
condition_end=function() return completedq(13725) end,
},[[
step
talk Jaelyne Evensong##33592
|tip Inside the building.
accept Valiant Of Darnassus##13706 |goto Icecrown/0 76.35,19.03
step
talk Jaelyne Evensong##33592
|tip Inside the building.
turnin Valiant Of Darnassus##13706 |goto 76.35,19.03
accept The Valiant's Charge##13717 |goto 76.35,19.03
stickystart "Collect_25_Valiant's Seals"
step
label "Accept_Valiant_Dailies"
talk Jaelyne Evensong##33592
|tip Inside the building.
accept A Blade Fit For A Champion##13757 |only if questpossible |or
accept A Worthy Weapon##13758 |goto 76.35,19.03 |only if questpossible |or
accept The Edge Of Winter##13759 |goto 76.35,19.03 |only if questpossible |or
Accept Jaelyne's Daily Quest |complete false |goto 76.35,19.03 |or |only if not completedq(13757,13758,13759,13725)
Accept Jaelyne's Daily Quest |complete true |goto 76.35,19.03 |or |only if completedq(13757,13758,13759,13725)
|tip You will only be able to accept one quest each day.
step
talk Illestria Bladesinger##33652
|tip Inside the building.
accept A Valiant's Field Training##13760 |goto 76.30,18.99 |only if not completedq(13760,13725)
accept A Valiant's Field Training##13760 |complete true |goto 76.30,18.99 |only if completedq(13760,13725)
step
talk Airae Starseeker##33654
|tip Inside the building.
accept The Grand Melee##13761 |goto 76.40,19.00 |only if not completedq(13761,13855,13725)
accept At The Enemy's Gates##13855 |goto 76.40,19.00 |only if not completedq(13761,13855,13725)
accept At The Enemy's Gates##13855 |complete true |goto 76.40,19.00 |only if completedq(13761,13855,13725)
stickystop "Collect_25_Valiant's Seals"
step
Equip the Alliance Lance |equipped Alliance Lance##46069 |q 13761
|only if haveq(13761) or completedq(13761)
step
clicknpc Stabled Darnassian Nightsaber##33794
Mount the Stabled Darnassian Nightsaber |invehicle |q 13761 |goto 76.00,20.41
|only if haveq(13761) or completedq(13761)
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 spell:62552 |goto 75.30,18.35 |q 13761
|tip Use the "Defend" ability on your vehicle bar.
|tip Before beginning combat, having 3 stacks of this buff is essential.
|only if haveq(13761) or completedq(13761)
step
Talk to the riders on mounts of other Alliance races
Tell them _"I am ready to fight!"_
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to remove their defenses, then use the "Charge" ability to deal damage.
|tip "Thrust" is useful in melee range, but make sure your shield is stacked up before using it.
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range. Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13761/1 |goto 75.30,18.35
|only if haveq(13761) or completedq(13761)
step
Dismount the Stabled Darnassian Nightsaber |outvehicle |q 13761
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13761) or completedq(13761)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46069})
|tip Replace the lance with your standard weapon.
|only if haveq(13761) or completedq(13761)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
accept Get Kraken!##14108 |goto 69.51,23.09 |only if questpossible |or
accept The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if questpossible |or
Accept Silverdawn's Daily Quest |complete false |goto 69.51,23.09 |or |only if not completedq(14108,14107,13725)
Accept Silverdawn's Daily Quest |complete true |goto 69.51,23.09 |or |only if completedq(14108,14107,13725)
|tip You will only be able to accept one quest each day.
|only if achieved(2817)
step
talk High Crusader Adelard##34882
|tip Inside the building.
accept Deathspeaker Kharos##14105 |goto 69.48,23.13 |only if questpossible |or
accept Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if questpossible |or
accept Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if questpossible |or
accept Ornolf The Scarred##14104 |goto 69.48,23.13 |only if questpossible |or
Accept Adelard's Daily Quest |complete false |goto 69.48,23.13 |or |only if not completedq(14105,14101,14102,14104,13725)
Accept Adelard's Daily Quest |complete true |goto 69.48,23.13 |or |only if completedq(14105,14101,14102,14104,13725)
|tip You will only be able to accept one quest each day.
|only if achieved(2817)
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
kill 10 Converted Hero##32255 |q 13760/1 |goto 44.62,52.62
|only if haveq(13760) or completedq(13760)
step
Equip the Alliance Lance |equipped Alliance Lance##46069 |goto Icecrown/0 48.87,71.41 |q 13855
|only if haveq(13855) or completedq(13855)
step
clicknpc Stabled Campaign Warhorse##34125
Mount the Stabled Campaign Warhorse |invehicle |goto 48.87,71.41 |q 13855
|only if haveq(13855) or completedq(13855)
stickystart "Kill_10_Bonegard_Scouts"
stickystart "Kill_3_Bonegard_Lieutenants"
step
kill 15 Boneguard Footman##33438 |q 13855/1 |goto 50.23,74.13
|tip Running over these with your warhorse will kill them.
|only if haveq(13855) or completedq(13855)
step
label "Kill_10_Bonegard_Scouts"
kill 10 Boneguard Scout##33550 |q 13855/2 |goto 50.23,74.13
|tip They fly around this area.
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to attack them in the air.
|only if haveq(13855) or completedq(13855)
step
label "Kill_3_Bonegard_Lieutenants"
kill 3 Boneguard Lieutenant##33429 |q 13855/3 |goto 50.61,76.93
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to remove their defenses, then use the "Charge" ability to deal damage.
|tip "Thrust" is useful in melee range, but make sure your shield is stacked up before using it.
|only if haveq(13855) or completedq(13855)
step
Dismount the Stabled Campaign Warhorse |outvehicle |q 13855
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13855) or completedq(13855)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46069})
|tip Replace the lance with your standard weapon.
|only if haveq(13855) or completedq(13855)
step
click Winter Hyacinth##194213+
|tip They look like purple and pink flowers on the ground around this area.
collect 4 Winter Hyacinth##45000 |q 13758 |goto 70.41,74.55
|only if haveq(13758) or completedq(13758)
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13759 |goto Crystalsong Forest/0 55.10,74.90
|only if haveq(13759) or completedq(13759)
step
use the Winter Hyacinth##45000
|tip Use them in the water.
Watch the dialogue
click the Blade of Drak'Mar##194238
|tip It will spawn after a brief dialogue.
collect Blade of Drak'Mar##44978 |q 13758/1 |goto Dragonblight/0 93.18,25.99
|only if haveq(13758) or completedq(13758)
step
label "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
use the Warts-B-Gone Lip Balm##44986
Gain the "Warts-B-Gone Lip Balm" Buff |complete hasbuff("spell:62574") or readyq(13757) |goto Grizzly Hills/0 61.18,49.57 |q 13757
|only if haveq(13757) or completedq(13757)
step
Kiss Lake Frogs |script DoEmote("KISS")
|tip Target Lake Frogs and perform the Kiss emote.
|tip Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake.
talk Maiden of Ashwood Lake##33220
Ask her her _"Glad to help, my lady. I'm told you were once the guardian of a fabled sword. Do you know where I might find it?"_
collect Ashwood Brand##44981 |q 13757/1 |goto Grizzly Hills/0 61.18,49.57 |or
'|complete not hasbuff("spell:62574") and not (readyq(13757) or completedq(13757)) |or |next "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
|only if haveq(13757) or completedq(13757)
step
use the Everburning Ember##45005
|tip Use it on the Maiden of Winter's Breath.
collect Winter's Edge##45003 |q 13759/1 |goto Howling Fjord/0 42.18,19.66
|only if haveq(13759) or completedq(13759)
stickystart "Collect_25_Valiant's Seals"
step
talk Jaelyne Evensong##33592
|tip Inside the building.
turnin A Blade Fit For A Champion##13757 |goto Icecrown/0 76.35,19.03 |only if haveq(13757) or completedq(13757)
turnin A Worthy Weapon##13758 |goto 76.35,19.03 |only if haveq(13758) or completedq(13758)
turnin The Edge Of Winter##13759 |goto 76.35,19.03 |only if haveq(13759) or completedq(13759)
|only if haveq(13757,13758,13759) or completedq(13757,13758,13759)
step
talk Illestria Bladesinger##33652
|tip Inside the building.
turnin A Valiant's Field Training##13760 |goto 76.30,18.99
|only if haveq(13760) or completedq(13760)
step
talk Airae Starseeker##33654
|tip Inside the building.
turnin The Grand Melee##13761 |goto 76.40,19.00 |only if haveq(13761) or completedq(13761)
turnin At The Enemy's Gates##13855 |goto 76.40,19.00 |only if haveq(13855) or completedq(13855)
|only if haveq(13761,13855) or completedq(13761,13855)
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
'|complete not completedq(13757,13758,13759,13760,13761,13855,14108,14107,14105,14101,14102,14104) and itemcount(44987) < 25 and not completedq(13717) |next "Accept_Valiant_Dailies" |or
'|complete completedq(13717) or itemcount(44987) >= 25 |or
step
label "Collect_25_Valiant's Seals"
collect 25 Valiant's Seal##44987 |q 13717/1
|tip Complete Argent Tournament daily quests to earn these each day.
step
talk Jaelyne Evensong##33592
|tip Inside the building.
turnin The Valiant's Charge##13717 |goto 76.35,19.03
accept The Valiant's Challenge##13725 |goto 76.35,19.03
step
Equip the Alliance Lance |equipped Alliance Lance##46069 |q 13725
step
clicknpc Stabled Darnassian Nightsaber##33794
Mount the Stabled Darnassian Nightsaber |invehicle |q 13725 |goto 71.62,22.49
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 spell:62552 |q 13725 |goto 68.60,20.99
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
Defeat the Argent Champion |q 13725/1 |goto 68.60,20.99
step
Dismount the Stabled Darnassian Nightsaber |outvehicle |q 13725
|tip Click the "Exit" button on your vehicle bar.
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46069})
|tip Replace the lance with your standard weapon.
step
talk Jaelyne Evensong##33592
|tip Inside the building.
turnin The Valiant's Challenge##13725 |goto 76.35,19.03
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Argent Tournament Grounds\\Champion of Ironforge",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing Valiant Rank dailies in order to achieve Argent Tournament Grounds Champion rank with Ironforge.",
condition_end=function() return completedq(13713) end,
},[[
step
talk Lana Stouthammer##33312
|tip Inside the building.
accept Valiant Of Ironforge##13703 |goto Icecrown/0 76.64,19.49
step
talk Lana Stouthammer##33312
|tip Inside the building.
turnin Valiant Of Ironforge##13703 |goto 76.64,19.49
accept The Valiant's Charge##13714 |goto 76.64,19.49
stickystart "Collect_25_Valiant's Seals"
step
label "Accept_Valiant_Dailies"
talk Lana Stouthammer##33312
|tip Inside the building.
accept A Blade Fit For A Champion##13741 |only if questpossible |or
accept A Worthy Weapon##13742 |goto 76.64,19.49 |only if questpossible |or
accept The Edge Of Winter##13743 |goto 76.64,19.49 |only if questpossible |or
Accept Lana's Daily Quest |complete false |goto 76.64,19.49 |or |only if not completedq(13741,13742,13743,13713)
Accept Lana's Daily Quest |complete true |goto 76.64,19.49 |or |only if completedq(13741,13742,13743,13713)
|tip You will only be able to accept one quest each day.
step
talk Rollo Sureshot##33315
accept A Valiant's Field Training##13744 |goto 76.66,19.41 |only if not completedq(13744,13713)
accept A Valiant's Field Training##13744 |complete true |goto 76.66,19.41 |only if completedq(13744,13713)
step
talk Clara Tumblebrew##33309
|tip Inside the building.
accept The Grand Melee##13745 |goto 76.64,19.57 |only if not completedq(13745,13851,13713)
accept At The Enemy's Gates##13851 |goto 76.64,19.57 |only if not completedq(13745,13851,13713)
accept At The Enemy's Gates##13851 |complete true |goto 76.64,19.57 |only if completedq(13745,13851,13713)
stickystop "Collect_25_Valiant's Seals"
step
Equip the Alliance Lance |equipped Alliance Lance##46069 |q 13745
|only if haveq(13745) or completedq(13745)
step
clicknpc Stabled Ironforge Ram##33795
Mount the Stabled Ironforge Ram |invehicle |q 13745 |goto 76.25,20.51
|only if haveq(13745) or completedq(13745)
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 spell:62552 |goto 75.30,18.35 |q 13745
|tip Use the "Defend" ability on your vehicle bar.
|tip Before beginning combat, having 3 stacks of this buff is essential.
|only if haveq(13745) or completedq(13745)
step
Talk to the riders on mounts of other Alliance races
Tell them _"I am ready to fight!"_
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to remove their defenses, then use the "Charge" ability to deal damage.
|tip "Thrust" is useful in melee range, but make sure your shield is stacked up before using it.
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range. Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13745/1 |goto 75.30,18.35
|only if haveq(13745) or completedq(13745)
step
Dismount the Stabled Ironforge Ram |outvehicle |q 13745
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13745) or completedq(13745)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46069})
|tip Replace the lance with your standard weapon.
|only if haveq(13745) or completedq(13745)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
accept Get Kraken!##14108 |goto 69.51,23.09 |only if questpossible |or
accept The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if questpossible |or
Accept Silverdawn's Daily Quest |complete false |goto 69.51,23.09 |or |only if not completedq(14108,14107,13713)
Accept Silverdawn's Daily Quest |complete true |goto 69.51,23.09 |or |only if completedq(14108,14107,13713)
|tip You will only be able to accept one quest each day.
|only if achieved(2817)
step
talk High Crusader Adelard##34882
|tip Inside the building.
accept Deathspeaker Kharos##14105 |goto 69.48,23.13 |only if questpossible |or
accept Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if questpossible |or
accept Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if questpossible |or
accept Ornolf The Scarred##14104 |goto 69.48,23.13 |only if questpossible |or
Accept Adelard's Daily Quest |complete false |goto 69.48,23.13 |or |only if not completedq(14105,14101,14102,14104,13713)
Accept Adelard's Daily Quest |complete true |goto 69.48,23.13 |or |only if completedq(14105,14101,14102,14104,13713)
|tip You will only be able to accept one quest each day.
|only if achieved(2817)
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
kill 10 Converted Hero##32255 |q 13744/1 |goto 44.62,52.62
|only if haveq(13744) or completedq(13744)
step
Equip the Alliance Lance |equipped Alliance Lance##46069 |goto Icecrown/0 48.87,71.41 |q 13851
|only if haveq(13851) or completedq(13851)
step
clicknpc Stabled Campaign Warhorse##34125
Mount the Stabled Campaign Warhorse |invehicle |q 13851 |goto 48.87,71.41
|only if haveq(13851) or completedq(13851)
stickystart "Kill_10_Bonegard_Scouts"
stickystart "Kill_3_Bonegard_Lieutenants"
step
kill 15 Boneguard Footman##33438 |q 13851/1 |goto 50.23,74.13
|tip Running over these with your warhorse will kill them.
|only if haveq(13851) or completedq(13851)
step
label "Kill_10_Bonegard_Scouts"
kill 10 Boneguard Scout##33550 |q 13851/2 |goto 50.23,74.13
|tip They fly around this area.
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to attack them in the air.
|only if haveq(13851) or completedq(13851)
step
label "Kill_3_Bonegard_Lieutenants"
kill 3 Boneguard Lieutenant##33429 |q 13851/3 |goto 50.61,76.93
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to remove their defenses, then use the "Charge" ability to deal damage.
|tip "Thrust" is useful in melee range, but make sure your shield is stacked up before using it.
|only if haveq(13851) or completedq(13851)
step
Dismount the Stabled Campaign Warhorse |outvehicle |q 13851
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13851) or completedq(13851)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46069})
|tip Replace the lance with your standard weapon.
|only if haveq(13851) or completedq(13851)
step
click Winter Hyacinth##194213+
|tip They look like purple and pink flowers on the ground around this area.
collect 4 Winter Hyacinth##45000 |q 13742 |goto 70.41,74.55
|only if haveq(13742) or completedq(13742)
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13743 |goto Crystalsong Forest/0 55.10,74.90
|only if haveq(13743) or completedq(13743)
step
use the Winter Hyacinth##45000
|tip Use them in the water.
Watch the dialogue
click the Blade of Drak'Mar##194238
|tip It will spawn after a brief dialogue.
collect Blade of Drak'Mar##44978 |q 13742/1 |goto Dragonblight/0 93.18,25.99
|only if haveq(13742) or completedq(13742)
step
label "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
use the Warts-B-Gone Lip Balm##44986
Gain the "Warts-B-Gone Lip Balm" Buff |complete hasbuff("spell:62574") or readyq(13741) |goto Grizzly Hills/0 61.18,49.57 |q 13741
|only if haveq(13741) or completedq(13741)
step
Kiss Lake Frogs |script DoEmote("KISS")
|tip Target Lake Frogs and perform the Kiss emote.
|tip Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake.
talk Maiden of Ashwood Lake##33220
Ask her her _"Glad to help, my lady. I'm told you were once the guardian of a fabled sword. Do you know where I might find it?"_
collect Ashwood Brand##44981 |q 13741/1 |goto Grizzly Hills/0 61.18,49.57 |or
'|complete not hasbuff("spell:62574") and not (readyq(13741) or completedq(13741)) |or |next "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
|only if haveq(13741) or completedq(13741)
step
use the Everburning Ember##45005
|tip Use it on the Maiden of Winter's Breath.
collect Winter's Edge##45003 |q 13743/1 |goto Howling Fjord/0 42.18,19.66
|only if haveq(13743) or completedq(13743)
stickystart "Collect_25_Valiant's Seals"
step
talk Lana Stouthammer##33312
|tip Inside the building.
turnin A Blade Fit For A Champion##13741 |goto Icecrown/0 76.64,19.49 |only if haveq(13741) or completedq(13741)
turnin A Worthy Weapon##13742 |goto 76.64,19.49 |only if haveq(13742) or completedq(13742)
turnin The Edge Of Winter##13743 |goto 76.64,19.49 |only if haveq(13743) or completedq(13743)
|only if haveq(13741,13742,13743) or completedq(13741,13742,13743)
step
talk Rollo Sureshot##33315
|tip Inside the building.
turnin A Valiant's Field Training##13744 |goto 76.66,19.41
|only if haveq(13744) or completedq(13744)
step
talk Clara Tumblebrew##33309
|tip Inside the building.
turnin The Grand Melee##13745 |goto 76.64,19.57 |only if haveq(13745) or completedq(13745)
turnin At The Enemy's Gates##13851 |goto 76.64,19.57 |only if haveq(13851) or completedq(13851)
|only if haveq(13745,13851) or completedq(13745,13851)
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
'|complete not completedq(13741,13742,13743,13744,13745,13851,14108,14107,14105,14101,14102,14104) and itemcount(44987) < 25 and not completedq(13714) |next "Accept_Valiant_Dailies" |or
'|complete completedq(13714) or itemcount(44987) >= 25 |or
step
label "Collect_25_Valiant's Seals"
collect 25 Valiant's Seal##44987 |q 13714/1
|tip Complete Argent Tournament daily quests to earn these each day.
step
talk Lana Stouthammer##33312
|tip Inside the building.
turnin The Valiant's Charge##13714 |goto 76.64,19.49
accept The Valiant's Challenge##13713 |goto 76.64,19.49
step
Equip the Alliance Lance |equipped Alliance Lance##46069 |q 13713
step
clicknpc Stabled Ironforge Ram##33795
Mount the Stabled Ironforge Ram |invehicle |q 13713 |goto 71.80,22.50
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 spell:62552 |q 13713 |goto 68.60,20.99
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
Defeat the Argent Champion |q 13713/1 |goto 68.60,20.99
step
Dismount the Stabled Ironforge Ram |outvehicle |q 13713
|tip Click the "Exit" button on your vehicle bar.
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46069})
|tip Replace the lance with your standard weapon.
step
talk Lana Stouthammer##33312
|tip Inside the building.
turnin The Valiant's Challenge##13713 |goto 76.64,19.49
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Argent Tournament Grounds\\Champion of Gnomeregan",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing Valiant Rank dailies in order to achieve Argent Tournament Grounds Champion rank with Gnomeregan.",
condition_end=function() return completedq(13723) end,
},[[
step
talk Ambrose Boltspark##33335
|tip Inside the building.
accept Valiant Of Gnomeregan##13704 |goto Icecrown/0 76.55,19.82
step
talk Ambrose Boltspark##33335
|tip Inside the building.
turnin Valiant Of Gnomeregan##13704 |goto 76.55,19.82
accept The Valiant's Charge##13715 |goto 76.55,19.82
stickystart "Collect_25_Valiant's Seals"
step
label "Accept_Valiant_Dailies"
talk Ambrose Boltspark##33335
|tip Inside the building.
accept A Blade Fit For A Champion##13746 |only if questpossible |or
accept A Worthy Weapon##13747 |goto 76.55,19.82 |only if questpossible |or
accept The Edge Of Winter##13748 |goto 76.55,19.82 |only if questpossible |or
Accept Ambrose's Daily Quest |complete false |goto 76.55,19.82 |or |only if not completedq(13746,13747,13748,13723)
Accept Ambrose's Daily Quest |complete true |goto 76.55,19.82 |or |only if completedq(13746,13747,13748,13723)
|tip You will only be able to accept one quest each day.
step
talk Tickin Gearspanner##33648
|tip Inside the building.
accept A Valiant's Field Training##13749 |goto 76.60,19.79 |only if not completedq(13749,13723)
accept A Valiant's Field Training##13749 |complete true |goto 76.60,19.79 |only if completedq(13749,13723)
step
talk Flickin Gearspanner##33649
|tip Inside the building.
accept The Grand Melee##13750 |goto 76.52,19.89 |only if not completedq(13750,13852,13723)
accept At The Enemy's Gates##13852 |goto 76.52,19.89 |only if not completedq(13750,13852,13723)
accept At The Enemy's Gates##13852 |complete true |goto 76.52,19.89 |only if completedq(13750,13852,13723)
stickystop "Collect_25_Valiant's Seals"
step
Equip the Alliance Lance |equipped Alliance Lance##46069 |q 13750
|only if haveq(13750) or completedq(13750)
step
clicknpc Stabled Gnomeregan Mechanostrider##33793
Mount the Stabled Gnomeregan Mechanostrider |invehicle |q 13750 |goto 76.17,20.49
|only if haveq(13750) or completedq(13750)
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 spell:62552 |goto 75.30,18.35 |q 13750
|tip Use the "Defend" ability on your vehicle bar.
|tip Before beginning combat, having 3 stacks of this buff is essential.
|only if haveq(13750) or completedq(13750)
step
Talk to the riders on mounts of other Alliance races
Tell them _"I am ready to fight!"_
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to remove their defenses, then use the "Charge" ability to deal damage.
|tip "Thrust" is useful in melee range, but make sure your shield is stacked up before using it.
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range. Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13750/1 |goto 75.30,18.35
|only if haveq(13750) or completedq(13750)
step
Dismount the Stabled Gnomeregan Mechanostrider |outvehicle |q 13750
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13750) or completedq(13750)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46069})
|tip Replace the lance with your standard weapon.
|only if haveq(13750) or completedq(13750)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
accept Get Kraken!##14108 |goto 69.51,23.09 |only if questpossible |or
accept The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if questpossible |or
Accept Silverdawn's Daily Quest |complete false |goto 69.51,23.09 |or |only if not completedq(14108,14107,13723)
Accept Silverdawn's Daily Quest |complete true |goto 69.51,23.09 |or |only if completedq(14108,14107,13723)
|tip You will only be able to accept one quest each day.
|only if achieved(2817)
step
talk High Crusader Adelard##34882
|tip Inside the building.
accept Deathspeaker Kharos##14105 |goto 69.48,23.13 |only if questpossible |or
accept Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if questpossible |or
accept Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if questpossible |or
accept Ornolf The Scarred##14104 |goto 69.48,23.13 |only if questpossible |or
Accept Adelard's Daily Quest |complete false |goto 69.48,23.13 |or |only if not completedq(14105,14101,14102,14104,13723)
Accept Adelard's Daily Quest |complete true |goto 69.48,23.13 |or |only if completedq(14105,14101,14102,14104,13723)
|tip You will only be able to accept one quest each day.
|only if achieved(2817)
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
kill 10 Converted Hero##32255 |q 13749/1 |goto 44.62,52.62
|only if haveq(13749) or completedq(13749)
step
Equip the Alliance Lance |equipped Alliance Lance##46069 |goto Icecrown/0 48.87,71.41 |q 13852
|only if haveq(13852) or completedq(13852)
step
clicknpc Stabled Campaign Warhorse##34125
Mount the Stabled Campaign Warhorse |invehicle |goto 48.87,71.41 |q 13852
|only if haveq(13852) or completedq(13852)
stickystart "Kill_10_Bonegard_Scouts"
stickystart "Kill_3_Bonegard_Lieutenants"
step
kill 15 Boneguard Footman##33438 |q 13852/1 |goto 50.23,74.13
|tip Running over these with your warhorse will kill them.
|only if haveq(13852) or completedq(13852)
step
label "Kill_10_Bonegard_Scouts"
kill 10 Boneguard Scout##33550 |q 13852/2 |goto 50.23,74.13
|tip They fly around this area.
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to attack them in the air.
|only if haveq(13852) or completedq(13852)
step
label "Kill_3_Bonegard_Lieutenants"
kill 3 Boneguard Lieutenant##33429 |q 13852/3 |goto 50.61,76.93
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to remove their defenses, then use the "Charge" ability to deal damage.
|tip "Thrust" is useful in melee range, but make sure your shield is stacked up before using it.
|only if haveq(13852) or completedq(13852)
step
Dismount the Stabled Campaign Warhorse |outvehicle |q 13852
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13852) or completedq(13852)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46069})
|tip Replace the lance with your standard weapon.
|only if haveq(13852) or completedq(13852)
step
click Winter Hyacinth##194213+
|tip They look like purple and pink flowers on the ground around this area.
collect 4 Winter Hyacinth##45000 |q 13747 |goto 70.41,74.55
|only if haveq(13747) or completedq(13747)
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13748 |goto Crystalsong Forest/0 55.10,74.90
|only if haveq(13748) or completedq(13748)
step
use the Winter Hyacinth##45000
|tip Use them in the water.
Watch the dialogue
click the Blade of Drak'Mar##194238
|tip It will spawn after a brief dialogue.
collect Blade of Drak'Mar##44978 |q 13747/1 |goto Dragonblight/0 93.18,25.99
|only if haveq(13747) or completedq(13747)
step
label "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
use the Warts-B-Gone Lip Balm##44986
Gain the "Warts-B-Gone Lip Balm" Buff |complete hasbuff("spell:62574") or readyq(13746) |goto Grizzly Hills/0 61.18,49.57 |q 13746
|only if haveq(13746) or completedq(13746)
step
Kiss Lake Frogs |script DoEmote("KISS")
|tip Target Lake Frogs and perform the Kiss emote.
|tip Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake.
talk Maiden of Ashwood Lake##33220
Ask her her _"Glad to help, my lady. I'm told you were once the guardian of a fabled sword. Do you know where I might find it?"_
collect Ashwood Brand##44981 |q 13746/1 |goto Grizzly Hills/0 61.18,49.57 |or
'|complete not hasbuff("spell:62574") and not (readyq(13746) or completedq(13746)) |or |next "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
|only if haveq(13746) or completedq(13746)
step
use the Everburning Ember##45005
|tip Use it on the Maiden of Winter's Breath.
collect Winter's Edge##45003 |q 13748/1 |goto Howling Fjord/0 42.18,19.66
|only if haveq(13748) or completedq(13748)
stickystart "Collect_25_Valiant's Seals"
step
talk Ambrose Boltspark##33335
|tip Inside the building.
turnin A Blade Fit For A Champion##13746 |goto Icecrown/0 76.55,19.82 |only if haveq(13746) or completedq(13746)
turnin A Worthy Weapon##13747 |goto 76.55,19.82 |only if haveq(13747) or completedq(13747)
turnin The Edge Of Winter##13748 |goto 76.55,19.82 |only if haveq(13748) or completedq(13748)
|only if haveq(13746,13747,13748) or completedq(13746,13747,13748)
step
talk Tickin Gearspanner##33648
|tip Inside the building.
turnin A Valiant's Field Training##13749 |goto 76.60,19.79
|only if haveq(13749) or completedq(13749)
step
talk Flickin Gearspanner##33649
|tip Inside the building.
turnin The Grand Melee##13750 |goto 76.52,19.89 |only if haveq(13750) or completedq(13750)
turnin At The Enemy's Gates##13852 |goto 76.52,19.89 |only if haveq(13852) or completedq(13852)
|only if haveq(13750,13852) or completedq(13750,13852)
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
'|complete not completedq(13746,13747,13748,13749,13750,13852,14108,14107,14105,14101,14102,14104) and itemcount(44987) < 25 and not completedq(13715) |next "Accept_Valiant_Dailies" |or
'|complete completedq(13715) or itemcount(44987) >= 25 |or
step
label "Collect_25_Valiant's Seals"
collect 25 Valiant's Seal##44987 |q 13715/1
|tip Complete Argent Tournament daily quests to earn these each day.
step
talk Ambrose Boltspark##33335
|tip Inside the building.
turnin The Valiant's Charge##13715 |goto 76.55,19.82
accept The Valiant's Challenge##13723 |goto 76.55,19.82
step
Equip the Alliance Lance |equipped Alliance Lance##46069 |q 13723
step
clicknpc Stabled Gnomeregan Mechanostrider##33793
Mount the Stabled Gnomeregan Mechanostrider |invehicle |q 13723 |goto 71.93,22.50
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 spell:62552 |q 13723 |goto 68.60,20.99
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
Defeat the Argent Champion |q 13723/1 |goto 68.60,20.99
step
Dismount the Stabled Gnomeregan Mechanostrider |outvehicle |q 13723
|tip Click the "Exit" button on your vehicle bar.
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46069})
|tip Replace the lance with your standard weapon.
step
talk Ambrose Boltspark##33335
|tip Inside the building.
turnin The Valiant's Challenge##13723 |goto 76.55,19.82
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Argent Tournament Grounds\\Champion of The Exodar",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing Valiant Rank dailies in order to achieve Argent Tournament Grounds Champion rank with The Exodar.",
condition_end=function() return completedq(13724) end,
},[[
step
talk Colosos##33593
|tip Inside the building.
accept Valiant Of The Exodar##13705 |goto Icecrown/0 76.10,19.10
step
talk Colosos##33593
|tip Inside the building.
turnin Valiant Of The Exodar##13705 |goto 76.10,19.10
accept The Valiant's Charge##13716 |goto 76.10,19.10
stickystart "Collect_25_Valiant's Seals"
step
label "Accept_Valiant_Dailies"
talk Colosos##33593
|tip Inside the building.
accept A Blade Fit For A Champion##13752 |goto 76.10,19.10 |only if questpossible |or
accept A Worthy Weapon##13753 |goto 76.10,19.10 |only if questpossible |or
accept The Edge Of Winter##13754 |goto 76.10,19.10 |only if questpossible |or
Accept Colosos's Daily Quest |complete false |goto 76.10,19.10 |or |only if not completedq(13752,13753,13754,13724)
Accept Colosos's Daily Quest |complete true |goto 76.10,19.10 |or |only if completedq(13752,13753,13754,13724)
|tip You will only be able to accept one quest each day.
step
talk Saandos##33655
|tip Inside the building.
accept A Valiant's Field Training##13755 |goto 76.08,19.19 |only if not completedq(13755,13724)
accept A Valiant's Field Training##13755 |complete true |goto 76.08,19.19 |only if completedq(13755,13724)
step
talk Ranii##33656
|tip Inside the building.
accept The Grand Melee##13756 |goto 76.15,19.08 |only if not completedq(13756,13854,13724)
accept At The Enemy's Gates##13854 |goto 76.15,19.08 |only if not completedq(13756,13854,13724)
accept At The Enemy's Gates##13854 |complete true |goto 76.15,19.08 |only if completedq(13756,13854,13724)
stickystop "Collect_25_Valiant's Seals"
step
Equip the Alliance Lance |equipped Alliance Lance##46069 |q 13756
|only if haveq(13756) or completedq(13756)
step
clicknpc Stabled Exodar Elekk##33790
Mount the Stabled Exodar Elekk |invehicle |q 13756 |goto 76.36,20.51
|only if haveq(13756) or completedq(13756)
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 spell:62552 |goto 75.30,18.35 |q 13756
|tip Use the "Defend" ability on your vehicle bar.
|tip Before beginning combat, having 3 stacks of this buff is essential.
|only if haveq(13756) or completedq(13756)
step
Talk to the riders on mounts of other Alliance races
Tell them _"I am ready to fight!"_
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to remove their defenses, then use the "Charge" ability to deal damage.
|tip "Thrust" is useful in melee range, but make sure your shield is stacked up before using it.
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range. Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13756/1 |goto 75.30,18.35
|only if haveq(13756) or completedq(13756)
step
Dismount the Stabled Exodar Elekk |outvehicle |q 13756
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13756) or completedq(13756)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46069})
|tip Replace the lance with your standard weapon.
|only if haveq(13756) or completedq(13756)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
accept Get Kraken!##14108 |goto 69.51,23.09 |only if questpossible |or
accept The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if questpossible |or
Accept Silverdawn's Daily Quest |complete false |goto 69.51,23.09 |or |only if not completedq(14108,14107,13724)
Accept Silverdawn's Daily Quest |complete true |goto 69.51,23.09 |or |only if completedq(14108,14107,13724)
|tip You will only be able to accept one quest each day.
|only if achieved(2817)
step
talk High Crusader Adelard##34882
|tip Inside the building.
accept Deathspeaker Kharos##14105 |goto 69.48,23.13 |only if questpossible |or
accept Drottinn Hrothgar##14101 |goto 69.48,23.13 |only if questpossible |or
accept Mistcaller Yngvar##14102 |goto 69.48,23.13 |only if questpossible |or
accept Ornolf The Scarred##14104 |goto 69.48,23.13 |only if questpossible |or
Accept Adelard's Daily Quest |complete false |goto 69.48,23.13 |or |only if not completedq(14105,14101,14102,14104,13724)
Accept Adelard's Daily Quest |complete true |goto 69.48,23.13 |or |only if completedq(14105,14101,14102,14104,13724)
|tip You will only be able to accept one quest each day.
|only if achieved(2817)
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
kill 10 Converted Hero##32255 |q 13755/1 |goto 44.62,52.62
|only if haveq(13755) or completedq(13755)
step
Equip the Alliance Lance |equipped Alliance Lance##46069 |goto Icecrown/0 48.87,71.41 |q 13854
|only if haveq(13854) or completedq(13854)
step
clicknpc Stabled Campaign Warhorse##34125
Mount the Stabled Campaign Warhorse |invehicle |goto 48.87,71.41 |q 13854
|only if haveq(13854) or completedq(13854)
stickystart "Kill_10_Bonegard_Scouts"
stickystart "Kill_3_Bonegard_Lieutenants"
step
kill 15 Boneguard Footman##33438 |q 13854/1 |goto 50.23,74.13
|tip Running over these with your warhorse will kill them.
|only if haveq(13854) or completedq(13854)
step
label "Kill_10_Bonegard_Scouts"
kill 10 Boneguard Scout##33550 |q 13854/2 |goto 50.23,74.13
|tip They fly around this area.
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to attack them in the air.
|only if haveq(13854) or completedq(13854)
step
label "Kill_3_Bonegard_Lieutenants"
kill 3 Boneguard Lieutenant##33429 |q 13854/3 |goto 50.61,76.93
|tip Maintain 3 stacks of "Defend" at all times.
|tip Use the "Shield-Breaker" ability to remove their defenses, then use the "Charge" ability to deal damage.
|tip "Thrust" is useful in melee range, but make sure your shield is stacked up before using it.
|only if haveq(13854) or completedq(13854)
step
Dismount the Stabled Campaign Warhorse |outvehicle |q 13854
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13854) or completedq(13854)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46069})
|tip Replace the lance with your standard weapon.
|only if haveq(13854) or completedq(13854)
step
click Winter Hyacinth##194213+
|tip They look like purple and pink flowers on the ground around this area.
collect 4 Winter Hyacinth##45000 |q 13753 |goto 70.41,74.55
|only if haveq(13753) or completedq(13753)
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13754 |goto Crystalsong Forest/0 55.10,74.90
|only if haveq(13754) or completedq(13754)
step
use the Winter Hyacinth##45000
|tip Use them in the water.
Watch the dialogue
click the Blade of Drak'Mar##194238
|tip It will spawn after a brief dialogue.
collect Blade of Drak'Mar##44978 |q 13753/1 |goto Dragonblight/0 93.18,25.99
|only if haveq(13753) or completedq(13753)
step
label "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
use the Warts-B-Gone Lip Balm##44986
Gain the "Warts-B-Gone Lip Balm" Buff |complete hasbuff("spell:62574") or readyq(13752) |goto Grizzly Hills/0 61.18,49.57 |q 13752
|only if haveq(13752) or completedq(13752)
step
Kiss Lake Frogs |script DoEmote("KISS")
|tip Target Lake Frogs and perform the Kiss emote.
|tip Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake.
talk Maiden of Ashwood Lake##33220
Ask her her _"Glad to help, my lady. I'm told you were once the guardian of a fabled sword. Do you know where I might find it?"_
collect Ashwood Brand##44981 |q 13752/1 |goto Grizzly Hills/0 61.18,49.57 |or
'|complete not hasbuff("spell:62574") and not (readyq(13752) or completedq(13752)) |or |next "Gain_the_Warts-B-Gone_Lip_Balm_Buff"
|only if haveq(13752) or completedq(13752)
step
use the Everburning Ember##45005
|tip Use it on the Maiden of Winter's Breath.
collect Winter's Edge##45003 |q 13754/1 |goto Howling Fjord/0 42.18,19.66
|only if haveq(13754) or completedq(13754)
stickystart "Collect_25_Valiant's Seals"
step
talk Colosos##33593
|tip Inside the building.
turnin A Blade Fit For A Champion##13752 |goto Icecrown/0 76.10,19.10 |only if haveq(13752) or completedq(13752)
turnin A Worthy Weapon##13753 |goto 76.10,19.10 |only if haveq(13753) or completedq(13753)
turnin The Edge Of Winter##13754 |goto 76.10,19.10 |only if haveq(13754) or completedq(13754)
|only if haveq(13752,13753,13754) or completedq(13752,13753,13754)
step
talk Saandos##33655
|tip Inside the building.
turnin A Valiant's Field Training##13755 |goto 76.08,19.19
|only if haveq(13755) or completedq(13755)
step
talk Ranii##33656
|tip Inside the building.
turnin The Grand Melee##13756 |goto 76.15,19.08 |only if haveq(13756) or completedq(13756)
turnin At The Enemy's Gates##13854 |goto 76.15,19.08 |only if haveq(13854) or completedq(13854)
|only if haveq(13756,13854) or completedq(13756,13854)
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
'|complete not completedq(13752,13753,13754,13755,13756,13854,14108,14107,14105,14101,14102,14104) and itemcount(44987) < 25 and not completedq(13716) |next "Accept_Valiant_Dailies" |or
'|complete completedq(13716) or itemcount(44987) >= 25 |or
step
label "Collect_25_Valiant's Seals"
collect 25 Valiant's Seal##44987 |q 13716/1
|tip Complete Argent Tournament daily quests to earn these each day.
step
talk Colosos##33593
|tip Inside the building.
turnin The Valiant's Charge##13716 |goto 76.10,19.10
accept The Valiant's Challenge##13724 |goto 76.10,19.10
step
Equip the Alliance Lance |equipped Alliance Lance##46069 |q 13724
step
clicknpc Stabled Exodar Elekk##33790
Mount the Stabled Exodar Elekk |invehicle |q 13724 |goto 71.68,22.38
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 spell:62552 |q 13724 |goto 68.60,20.99
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
Defeat the Argent Champion |q 13724/1 |goto 68.60,20.99
step
Dismount the Stabled Exodar Elekk |outvehicle |q 13724
|tip Click the "Exit" button on your vehicle bar.
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46069})
|tip Replace the lance with your standard weapon.
step
talk Colosos##33593
|tip Inside the building.
turnin The Valiant's Challenge##13724 |goto 76.10,19.10
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Argent Tournament Grounds\\Black Knight Questline",{
author="support@zygorguides.com",
description="This questline requires the rank of champion to finish and unlocks a new group daily quest for the Argent Tournament Grounds.",
condition_end=function() return completedq(14017) end,
},[[
step
talk Crusader Rhydalla##33417
|tip Inside the building.
accept The Black Knight of Westfall?##13633 |goto Icecrown/0 69.43,23.02
step
talk Caris Sunlance##33970
|tip Inside the building.
home Silver Covenant Pavilion |goto 76.19,19.66
step
Enter the building |goto Westfall/0 42.52,69.53 < 7 |walk
click Dusty Journal##194340
|tip Inside the building.
collect Dusty Journal##45058 |q 13633/1 |goto 42.10,69.66
step
talk Crusader Rhydalla##33417
|tip Inside the building.
turnin The Black Knight of Westfall?##13633 |goto Icecrown/0 69.43,23.02
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
Become an Argent Champion |complete completedq(13702,13735,13732,13733,13734)
|tip Complete the "A Champion Rises" quest.
|tip Work your way through Aspirant and Valliant guides until you reach Champion rank.
step
talk Crusader Rhydalla##33417
|tip Inside the building.
accept The Black Knight's Fall##13664 |goto 69.43,23.02
step
Equip the Alliance Lance |equipped Alliance Lance##46069 |q 13664
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
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46069})
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
description="\nIn order to be able to complete the quests in this guide section, you must already be Exalted with the Ironforge, Stormwind City, Exodar, Darnassus and Gnomeregan. Also, you must have already become a Champion with each of those factions, using the Crusader Title Guide in the Icecrown section of the Dailies guide.",
condition_visible=function() return achieved(2817) end,
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
condition_valid=function() return completedq(13702,13735,13732,13733,13734) end,
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
Accept Adelard's Daily Quest |complete false or completedq(,,,) |goto 69.48,23.13 |or
|tip You will only be able to accept one quest each day.
|only if achieved(2817)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
accept Get Kraken!##14108 |goto 69.51,23.09 |only if questpossible |or
accept The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if questpossible |or
Accept Silverdawn's Daily Quest |complete false or completedq(,) |goto 69.51,23.09 |or
|tip You will only be able to accept one quest each day.
step
talk Zor'be the Bloodletter##33769
accept Taking Battle To The Enemy##13791 |goto 73.80,19.46
step
talk Crok Scourgebane##33762
accept Threat From Above##13788 |only if completedq(13664)
accept Battle Before The Citadel##13864 |goto 73.80,20.06
step
talk Illyrie Nightfall##33770
accept Among the Champions##13793 |goto 73.59,20.08
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
talk Narasi Snowdawn##34880
|tip Inside the building.
accept A Leg Up##14074 |goto Icecrown/0 76.26,19.63 |only if questpossible |or 2
accept Rescue at Sea##14152 |goto 76.26,19.63 |only if questpossible |or 2
accept Stop The Aggressors##14080 |goto 76.26,19.63 |only if questpossible |or 2
accept The Light's Mercy##14077 |goto 76.26,19.63 |only if questpossible |or 2
accept You've Really Done It This Time, Kul##14096 |goto 76.26,19.63 |only if questpossible |or 2
Accept Narasi's Daily Quest |complete false or completedq(,,,,) |goto 76.26,19.63 |or
|tip You will only be able to accept two quests each day.
step
talk Savinia Loresong##34912
|tip Inside the building.
accept Breakfast Of Champions##14076 |goto 76.21,19.56 |or
accept Gormok Wants His Snobolds##14090 |goto 76.21,19.56 |or
accept What Do You Feed a Yeti, Anyway?##14112 |goto 76.21,19.56 |only if questpossible |or
Accept Savinia's Daily Quest |complete false or completedq(,,) |goto 76.21,19.56 |or
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
Equip the Alliance Lance |equipped Alliance Lance##46069 |q 13793
|only if haveq(13793) or completedq(13793)
step
clicknpc Stabled Exodar Elekk##33790 |only if Draenei or LightforgedDraenei
clicknpc Stabled Ironforge Ram##33795 |only if Dwarf or DarkIronDwarf
clicknpc Stabled Stormwind Steed##33800 |only if Human or Worgen or Pandaren or KulTiran
clicknpc Stabled Darnassian Nightsaber##33794 |only if NightElf or VoidElf
clicknpc Stabled Gnomeregan Mechanostrider##33793 |only if Gnome or Mechagnome
Mount the Stabled Exodar Elekk |invehicle |q 13793 |goto 71.68,22.38 |only if Draenei or LightforgedDraenei
Mount the Stabled Ironforge Ram |invehicle |q 13793 |goto 71.80,22.50 |only if Dwarf or DarkIronDwarf
Mount the Stabled Stormwind Steed |invehicle |q 13793 |goto 71.56,22.42 |only if Human or Worgen or Pandaren or KulTiran
Mount the Stabled Darnassian Nightsaber |invehicle |q 13793 |goto 71.62,22.49 |only if NightElf or VoidElf
Mount the Stabled Gnomeregan Mechanostrider |invehicle |q 13793 |goto 71.93,22.50 |only if Gnome or Mechagnome
|only if haveq(13793) or completedq(13793)
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 spell:62552 |goto 71.63,23.80 |q 13793
|tip Use the "Defend" ability on your vehicle bar.
|tip Before beginning combat, having 3 stacks of this buff is essential.
|only if haveq(13793) or completedq(13793)
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
collect 4 Mark of the Champion##23206 |q 13793/1 |goto 71.63,23.80
|only if haveq(13793) or completedq(13793)
step
Dismount |outvehicle |q 13793
|tip Click the "Exit" button to dismount.
|only if haveq(13793) or completedq(13793)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46069})
|tip Replace the lance with your standard weapon.
|only if haveq(13793) or completedq(13793)
step
click Bucket of Fresh Chum##195352+
|tip They look like wooden buckets on the deck of this ship.
collect 6 Fresh Chum##47036 |q 14112 |goto 66.85,8.22
|only if haveq(14112) or completedq(14112)
step
use the Fresh Chum##47036
kill North Sea Shark##35324+
|tip They spawn underwater around this area when you use the Fresh Chum.
collect 3 North Sea Shark Meat##47037 |q 14112/1 |goto 66.79,9.49
|only if haveq(14112) or completedq(14112)
stickystart "Kill_Kvaldir_Harpooner"
step
kill 8 Kvaldir Berserker##34947 |q 14152/1 |goto Hrothgar's Landing/0 50.54,49.32
|tip They attack the deck of the ship in waves.
|only if haveq(14152) or completedq(14152)
step
label "Kill_Kvaldir_Harpooner"
kill 3 Kvaldir Harpooner##34907 |q 14152/2 |goto 50.54,49.32
|tip They attack the deck of the ship in waves.
|only if haveq(14152) or completedq(14152)
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
Administer #8# Last Rites |q 14077/1 |goto 46.50,32.98
|only if haveq(14077) or completedq(14077)
[50.80,29.91]
[53.66,27.40]
[55.57,20.15]
step
label "Slay_10_Kvaldir"
Kill Kvaldir enemies around this area
Slay #10# Kvaldir |q 14080/1 |goto 46.50,32.98
You can find more around: |notinsticky
[50.80,29.91]
[53.66,27.40]
[55.57,20.15]
|only if haveq(14080) or completedq(14080)
step
label "Collect_Stolen_Tallstrider_Leg"
click Stolen Tallstrider Leg##195274+
|tip They look like chicken legs laying on objects and on the ground around this area.
Kill Kvaldir enemies around this area
collect 10 Stolen Tallstrider Leg##46859 |q 14074/1 |goto 43.44,29.04
You can find more around: |notinsticky
[50.80,29.91]
[53.66,27.40]
[55.57,20.15]
|only if haveq(14074) or completedq(14074)
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
Rescue #4# Captive Aspirants |q 14096/2 |goto 62.64,20.98
You can find more around:
[61.29,20.41]
[60.00,20.95]
|only if haveq(14096) or completedq(14096)
step
label "Rescue_Kul_the_Reckless"
Kill Dark enemies around this area
collect 1 Black Cage Key##46895 |n
click Black Cage
Rescue Kul the Reckless |q 14096/1 |goto 60.79,23.16
|only if haveq(14096) or completedq(14096)
step
label "Slay_Cult_of_the_Damned_Members"
Kill Dark enemies around this area
Slay #15# Cult of the Damned Members |q 13791/1 |goto 61.85,20.79
|only if haveq(13791) or completedq(13791)
stickystart "Kill_3_Cultist_Bombardiers"
step
kill Chillmaw##33687 |q 13788/1 |goto 43.90,32.60
|tip This is a group quest and will require additional people.
|tip Chillmaw flies around this area.
|tip Pull Chillmaw and start fighting.
|tip Every 25% health, a Cultist Bombardier will assist Chillmaw.
|tip Kill the Cultist Bombardier IMMEDIATELY.
|only if haveq(13788) or completedq(13788)
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
label "Kill_3_Cultist_Bombardiers"
kill 3 Cultist Bombardier##33695 |q 13788/2 |goto 43.90,32.60
|only if haveq(13788) or completedq(13788)
step
Equip the Alliance Lance |equipped Alliance Lance##46069 |goto Icecrown/0 48.87,71.41 |q 13864
|only if haveq(13864) or completedq(13864)
step
clicknpc Stabled Campaign Warhorse##34125
Mount the Stabled Campaign Warhorse |invehicle |goto 48.87,71.41 |q 13864
|only if haveq(13864) or completedq(13864)
step
kill 3 Boneguard Commander##34127 |q 13864/1 |goto 50.61,76.93
|tip Maintain 3 stacks of the "Defend" buff at all times.
|tip Use "Charge" immediately to close the distance, then circle around and use "Shield-Breaker."
|tip Repeat this process until it is defeated.
|tip Stay in melee range and spam the "Thrust" ability.
|tip Eventually the Commander will try to run away to get into "Charge" range.
|tip When it starts to run away, start spamming your "Charge" ability until you hit it in the back.
|tip When possible, use "Shield-Breaker" as a filler before you close distance.
|tip Repeat this process until the Commander is defeated.
|only if haveq(13864) or completedq(13864)
step
Dismount the Stabled Campaign Warhorse |outvehicle |q 13864
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13864) or completedq(13864)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46069})
|tip Replace the lance with your standard weapon.
|only if haveq(13864) or completedq(13864)
step
use Weighted Net##46885
|tip Use it on Snowblind Followers.
Capture #8# Snowblind Followers |q 14090/1 |goto The Storm Peaks/0 42.83,81.29
|only if haveq(14090) or completedq(14090)
step
use the Earthshaker Drum##46893
|tip Use it next to piles of snow on the ground.
kill Deep Jormungar##34920+
|tip They spawn after using your Earthshaker Drum next to the piles of snow.
collect 4 Jormungar Egg Sac##46889 |q 14076/1 |goto 40.93,52.87
You can find more around:
[43.37,57.33]
[39.23,60.08]
|only if haveq(14076) or completedq(14076)
step
talk Narasi Snowdawn##34880
|tip Inside the building.
turnin A Leg Up##14074 |goto Icecrown/0 76.26,19.63 |only if haveq(14074) or completedq(14074)
turnin Rescue at Sea##14152 |goto 76.26,19.63 |only if haveq(14152) or completedq(14152)
turnin Stop The Aggressors##14080 |goto 76.26,19.63 |only if haveq(14080) or completedq(14080)
turnin The Light's Mercy##14077 |goto 76.26,19.63 |only if haveq(14077) or completedq(14077)
turnin You've Really Done It This Time, Kul##14096 |goto 76.26,19.63 |only if haveq(14096) or completedq(14096)
|only if haveq(14074,14152,14080,14077,14096) or completedq(14074,14152,14080,14077,14096)
step
talk Savinia Loresong##34912
|tip Inside the building.
turnin Breakfast Of Champions##14076 |goto 76.21,19.56 |only if haveq(14076) or completedq(14076)
turnin Gormok Wants His Snobolds##14090 |goto 76.21,19.56 |only if haveq(14090) or completedq(14090)
turnin What Do You Feed a Yeti, Anyway?##14112 |goto 76.21,19.56 |only if haveq(14112) or completedq(14112)
|only if haveq(14076,14090,14112) or completedq(14076,14090,14112)
step
talk Zor'be the Bloodletter##33769
turnin Taking Battle To The Enemy##13791 |goto 73.80,19.46
|only if haveq(13791) or completedq(13791)
step
talk Crok Scourgebane##33762
turnin Threat From Above##13788 |goto 73.80,20.06 |only if haveq(13788) or completedq(13788)
turnin Battle Before The Citadel##13864 |goto 73.80,20.06 |only if haveq(13864) or completedq(13864)
|only if haveq(13788,13864) or completedq(13788,13864)
step
talk Illyrie Nightfall##33770
turnin Among the Champions##13793 |goto 73.59,20.08
|only if haveq(13793) or completedq(13793)
step
talk High Crusader Adelard##34882
|tip Inside the building.
turnin Deathspeaker Kharos##14105 |goto Icecrown/0 69.48,23.13 |only if haveq(14105) or completedq(14105)
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
'|complete not completedq(14074,14152,14080,14077,14096,14076,14090,14112,13791,13788,13864,13793,14105,14101,14102,14104,14108,14107,14095) |next "Accept_Champion_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Argent Tournament Grounds\\Champion Rank Dailies",{
author="support@zygorguides.com",
description="\nYou must NOT be a Death Knight to do the quests in this Argent Tournament Grounds guide section. Also, you must have completed the Argent Tournament Grounds Valiant Rank Dailies guide section.",
condition_valid=function() return completedq(13702,13735,13732,13733,13734) end,
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
|only if achieved(2817)
step
talk Crusader Silverdawn##35094
|tip Inside the building.
accept Get Kraken!##14108 |goto 69.51,23.09 |only if questpossible |or
accept The Fate Of The Fallen##14107 |goto 69.51,23.09 |only if questpossible |or
Accept Silverdawn's Daily Quest |complete false or completedq(14108,14107) |goto 69.51,23.09 |or
|tip You will only be able to accept one quest each day.
|only if achieved(2817)
step
talk Luuri##33771
|tip Inside the building.
accept Among the Champions##13790 |goto Icecrown/0 69.93,23.33
step
talk Eadric the Pure##33759
|tip Inside the building.
accept Threat From Above##13682 |goto 69.96,23.44 |only if completedq(13664)
accept Battle Before The Citadel##13861 |goto 69.96,23.44
step
talk Cellian Daybreak##33763
|tip Inside the building.
accept Taking Battle To The Enemy##13789 |goto 69.92,23.53
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
talk Narasi Snowdawn##34880
|tip Inside the building.
accept A Leg Up##14074 |goto Icecrown/0 76.26,19.63 |only if questpossible |or 2
accept Rescue at Sea##14152 |goto 76.26,19.63 |only if questpossible |or 2
accept Stop The Aggressors##14080 |goto 76.26,19.63 |only if questpossible |or 2
accept The Light's Mercy##14077 |goto 76.26,19.63 |only if questpossible |or 2
accept You've Really Done It This Time, Kul##14096 |goto 76.26,19.63 |only if questpossible |or 2
Accept Narasi's Daily Quest |complete false or completedq(14074,14152,14080,14077,14096) |goto 76.26,19.63 |or
|tip You will only be able to accept two quests each day.
step
talk Savinia Loresong##34912
|tip Inside the building.
accept Breakfast Of Champions##14076 |goto 76.21,19.56 |or
accept Gormok Wants His Snobolds##14090 |goto 76.21,19.56 |or
accept What Do You Feed a Yeti, Anyway?##14112 |goto 76.21,19.56 |only if questpossible |or
Accept Savinia's Daily Quest |complete false or completedq(14076,14090,14112) |goto 76.21,19.56 |or
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
Equip the Alliance Lance |equipped Alliance Lance##46069 |q 13790
|only if haveq(13790) or completedq(13790)
step
clicknpc Stabled Exodar Elekk##33790 |only if Draenei or LightforgedDraenei
clicknpc Stabled Ironforge Ram##33795 |only if Dwarf or DarkIronDwarf
clicknpc Stabled Stormwind Steed##33800 |only if Human or Worgen or Pandaren or KulTiran
clicknpc Stabled Darnassian Nightsaber##33794 |only if NightElf or VoidElf
clicknpc Stabled Gnomeregan Mechanostrider##33793 |only if Gnome or Mechagnome
Mount the Stabled Exodar Elekk |invehicle |q 13790 |goto 71.68,22.38 |only if Draenei or LightforgedDraenei
Mount the Stabled Ironforge Ram |invehicle |q 13790 |goto 71.80,22.50 |only if Dwarf or DarkIronDwarf
Mount the Stabled Stormwind Steed |invehicle |q 13790 |goto 71.56,22.42 |only if Human or Worgen or Pandaren or KulTiran
Mount the Stabled Darnassian Nightsaber |invehicle |q 13790 |goto 71.62,22.49 |only if NightElf or VoidElf
Mount the Stabled Gnomeregan Mechanostrider |invehicle |q 13790 |goto 71.93,22.50 |only if Gnome or Mechagnome
|only if haveq(13790) or completedq(13790)
step
Gain 3 Stacks of the "Defend" Buff |havebuff 3 spell:62552 |goto 71.63,23.80 |q 13790
|tip Use the "Defend" ability on your vehicle bar.
|tip Before beginning combat, having 3 stacks of this buff is essential.
|only if haveq(13790) or completedq(13790)
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
collect 4 Mark of the Champion##23206 |q 13790/1 |goto 71.63,23.80
|only if haveq(13790) or completedq(13790)
step
Dismount |outvehicle |q 13793
|tip Click the "Exit" button to dismount.
|only if haveq(13790) or completedq(13790)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46069})
|tip Replace the lance with your standard weapon.
|only if haveq(13790) or completedq(13790)
step
click Bucket of Fresh Chum##195352+
|tip They look like wooden buckets on the deck of this ship.
collect 6 Fresh Chum##47036 |q 14112 |goto 66.85,8.22
|only if haveq(14112) or completedq(14112)
step
use the Fresh Chum##47036
kill North Sea Shark##35324+
|tip They spawn underwater around this area when you use the Fresh Chum.
collect 3 North Sea Shark Meat##47037 |q 14112/1 |goto 66.79,9.49
|only if haveq(14112) or completedq(14112)
stickystart "Kill_Kvaldir_Harpooner"
step
kill 8 Kvaldir Berserker##34947 |q 14152/1 |goto Hrothgar's Landing/0 50.54,49.32
|tip They attack the deck of the ship in waves.
|only if haveq(14152) or completedq(14152)
step
label "Kill_Kvaldir_Harpooner"
kill 3 Kvaldir Harpooner##34907 |q 14152/2 |goto 50.54,49.32
|tip They attack the deck of the ship in waves.
|only if haveq(14152) or completedq(14152)
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
Administer #8# Last Rites |q 14077/1 |goto 46.50,32.98
|only if haveq(14077) or completedq(14077)
[50.80,29.91]
[53.66,27.40]
[55.57,20.15]
step
label "Slay_10_Kvaldir"
Kill Kvaldir enemies around this area
Slay #10# Kvaldir |q 14080/1 |goto 46.50,32.98
You can find more around: |notinsticky
[50.80,29.91]
[53.66,27.40]
[55.57,20.15]
|only if haveq(14080) or completedq(14080)
step
label "Collect_Stolen_Tallstrider_Leg"
click Stolen Tallstrider Leg##195274+
|tip They look like chicken legs laying on objects and on the ground around this area.
Kill Kvaldir enemies around this area
collect 10 Stolen Tallstrider Leg##46859 |q 14074/1 |goto 43.44,29.04
You can find more around: |notinsticky
[50.80,29.91]
[53.66,27.40]
[55.57,20.15]
|only if haveq(14074) or completedq(14074)
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
Rescue #4# Captive Aspirants |q 14096/2 |goto 62.64,20.98
You can find more around:
[61.29,20.41]
[60.00,20.95]
|only if haveq(14096) or completedq(14096)
step
label "Rescue_Kul_the_Reckless"
Kill Dark enemies around this area
collect 1 Black Cage Key##46895 |n
click Black Cage
Rescue Kul the Reckless |q 14096/1 |goto 60.79,23.16
|only if haveq(14096) or completedq(14096)
step
label "Slay_Cult_of_the_Damned_Members"
Kill Dark enemies around this area
Slay #15# Cult of the Damned Members |q 13789/1 |goto 61.85,20.79
|only if haveq(13789) or completedq(13789)
stickystart "Kill_3_Cultist_Bombardiers"
step
kill Chillmaw##33687 |q 13682/1 |goto 43.90,32.60
|tip This is a group quest and will require additional people.
|tip Chillmaw flies around this area.
|tip Pull Chillmaw and start fighting.
|tip Every 25% health, a Cultist Bombardier will assist Chillmaw.
|tip Kill the Cultist Bombardier IMMEDIATELY.
|only if haveq(13682) or completedq(13682)
step
label "Kill_3_Cultist_Bombardiers"
kill 3 Cultist Bombardier##33695 |q 13682/2 |goto 43.90,32.60
|only if haveq(13682) or completedq(13682)
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
Equip the Alliance Lance |equipped Alliance Lance##46069 |goto Icecrown/0 48.87,71.41 |q 13861
|only if haveq(13861) or completedq(13861)
step
clicknpc Stabled Campaign Warhorse##34125
Mount the Stabled Campaign Warhorse |invehicle |goto 48.87,71.41 |q 13861
|only if haveq(13861) or completedq(13861)
step
kill 3 Boneguard Commander##34127 |q 13861/1 |goto 50.61,76.93
|tip Maintain 3 stacks of the "Defend" buff at all times.
|tip Use "Charge" immediately to close the distance, then circle around and use "Shield-Breaker."
|tip Repeat this process until it is defeated.
|tip Stay in melee range and spam the "Thrust" ability.
|tip Eventually the Commander will try to run away to get into "Charge" range.
|tip When it starts to run away, start spamming your "Charge" ability until you hit it in the back.
|tip When possible, use "Shield-Breaker" as a filler before you close distance.
|tip Repeat this process until the Commander is defeated.
|only if haveq(13861) or completedq(13861)
step
Dismount the Stabled Campaign Warhorse |outvehicle |q 13861
|tip Click the "Exit" button on your vehicle bar.
|only if haveq(13861) or completedq(13861)
step
Reequip Your Weapon |complete not goaltype("equipped",{targetid=46069})
|tip Replace the lance with your standard weapon.
|only if haveq(13861) or completedq(13861)
step
use Weighted Net##46885
|tip Use it on Snowblind Followers.
Capture #8# Snowblind Followers |q 14090/1 |goto The Storm Peaks/0 42.83,81.29
|only if haveq(14090) or completedq(14090)
step
use the Earthshaker Drum##46893
|tip Use it next to piles of snow on the ground.
kill Deep Jormungar##34920+
|tip They spawn after using your Earthshaker Drum next to the piles of snow.
collect 4 Jormungar Egg Sac##46889 |q 14076/1 |goto 40.93,52.87
You can find more around:
[43.37,57.33]
[39.23,60.08]
|only if haveq(14076) or completedq(14076)
step
talk Narasi Snowdawn##34880
|tip Inside the building.
turnin A Leg Up##14074 |goto Icecrown/0 76.26,19.63 |only if haveq(14074) or completedq(14074)
turnin Rescue at Sea##14152 |goto 76.26,19.63 |only if haveq(14152) or completedq(14152)
turnin Stop The Aggressors##14080 |goto 76.26,19.63 |only if haveq(14080) or completedq(14080)
turnin The Light's Mercy##14077 |goto 76.26,19.63 |only if haveq(14077) or completedq(14077)
turnin You've Really Done It This Time, Kul##14096 |goto 76.26,19.63 |only if haveq(14096) or completedq(14096)
|only if haveq(14074,14152,14080,14077,14096) or completedq(14074,14152,14080,14077,14096)
step
talk Savinia Loresong##34912
|tip Inside the building.
turnin Breakfast Of Champions##14076 |goto 76.21,19.56 |only if haveq(14076) or completedq(14076)
turnin Gormok Wants His Snobolds##14090 |goto 76.21,19.56 |only if haveq(14090) or completedq(14090)
turnin What Do You Feed a Yeti, Anyway?##14112 |goto 76.21,19.56 |only if haveq(14112) or completedq(14112)
|only if haveq(14076,14090,14112) or completedq(14076,14090,14112)
step
talk High Crusader Adelard##34882
|tip Inside the building.
turnin Deathspeaker Kharos##14105 |goto Icecrown/0 69.48,23.13 |only if haveq(14105) or completedq(14105)
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
turnin Among the Champions##13790 |goto 69.93,23.33
|only if haveq(13790) or completedq(13790)
step
talk Cellian Daybreak##33763
|tip Inside the building.
turnin Taking Battle To The Enemy##13789 |goto 69.92,23.53
|only if haveq(13789) or completedq(13789)
step
talk Eadric the Pure##33759
|tip Inside the building.
turnin Threat From Above##13682 |goto 69.96,23.44 |only if haveq(13682) or completedq(13682)
turnin Battle Before The Citadel##13861 |goto 69.96,23.44 |only if haveq(13861) or completedq(13861)
|only if haveq(13682,13861) or completedq(13682,13861)
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
'|complete not completedq(14074,14152,14080,14077,14096,14076,14090,14112,14105,14101,14102,14104,14108,14107,14095,13790,13789,13682,13861) |next "Accept_Champion_Dailies"
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
description="\nThis guide section contains the quest path for the entire The Storm Peaks zone, which includes the pre-quests to unlock the daily quests in the Brunnhildar Village, Dun Niffelem (The Sons of Hodir), Frosthold, and K3 regions of The Storm Peaks.",
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
Turnin All of Your Everfrost Chips |complete (itemcount(44724) == 0 and itemcount(44725) == 0) or rep("The Sons of Hodir") >= Exalted |only if completedq(13420) |next "Accept_Hodir's_Tribute" |or
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
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Ymirheim and The Valley of Lost Hope",{
author="support@zygorguides.com",
},[[
step
talk Frazzle Geargrinder##31776
accept King of the Mountain##13280 |goto Icecrown,57.0,62.6
step
Click Geargrinder's Jumpbot to get in the robot |invehicle |q 13280 |goto 57.0,62.6
step
Use your Jump Jets ability to jump up the mountain to this spot |petaction Jump Jets
|tip This spot is the peak of the mountain.
Use your Plant Alliance Battle Standard ability next to the Ymirheim Peak Skulls |petaction Plant Alliance Battle Standard
|tip The Ymirheim Peak Skulls look like a big pile of skulls at the peak of the mountain, next to 2 blue flame torch lights.
Plant the Alliance Battle Standard |q 13280/1 |goto 54.9,60.1
step
Click the red arrow button on your vehicle hotbar to get out of the robot |script VehicleExit() |outvehicle |c
step
talk Frazzle Geargrinder##31776
turnin King of the Mountain##13280 |goto 57.0,62.5
step
talk Ground Commander Koup##31808
accept Assault by Air##13309 |goto Icecrown,62.6,51.3
step
talk Skybreaker Squad Leader##31737
accept Assault by Ground##13284 |goto Icecrown,62.5,51.1
step
Follow the Alliance troops up the mountain and help them fight
Escort the Alliance troops into Ymirheim |q 13284/1
|tip At least 4 Alliance troops must survive.
step
talk Ground Commander Koup##31808
turnin Assault by Ground##13284 |goto 62.6,51.3
step
Click the Skybreaker Suppression Turret to control the gun on the airplane |goto 62.6,50.9 |invehicle
step
You will fly off in the airplane:
Use your Suppression Charge ability on the cannons on the ground to stun them as you fly around|petaction Suppression Charge
Drop 4 Skybreaker Infiltrators |q 13309/1
step
talk Ground Commander Koup##31808
turnin Assault by Air##13309 |goto 62.6,51.3
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Shadowvault Dailies",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the daily quests in the Shadowvault region of Icecrown.",
},[[
step
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
Use your Ebon Blade Banner on the Jotunheim vrykul corpses |use Ebon Blade Banner##42480
Plant 15 Ebon Blade Banners near vrykul corpses |q 12995/1 |goto 33.0,27.0
step
Click a Njorndar Proto-Drake to ride it |invehicle |q 13071 |goto 27.2,39.1
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
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Death's Rise Dailies",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the daily quests in the Death's Rise region of Icecrown.",
},[[
step
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
collect Scarlet Onslaught Trunk Key##40652+ |n
Use Darkmender's Tincture on the Onslaught mobs' corpses |use Darkmender's Tincture##40587
Transform 10 Scarlet Onslaught Corpses |q 12813/1 |goto 9.6,44.3
Click Scarlet Onslaught Trunks
|tip They look like small wooden boxes on the ground around this area.
collect 5 Onslaught Intel Documents##40640 |q 12838/1 |goto 9.6,44.3
step
Use your Bone Gryphon in your bags while in Onslaught Harbor |use Bone Gryphon##40600
Ride a Bone Gryphon |invehicle |q 12815
step
Use your Bone Gryphon abilities to:
kill 10 Onslaught Gryphon Rider |q 12815/1 |goto 10.2,41.9
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
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\The Storm Peaks\\Dun Niffelem (The Sons of Hodir) Pre-quest and Dailies",{
author="support@zygorguides.com",
description="\nThis guide section contains the quest path for the entire The Storm Peaks zone, which includes the pre-quests to unlock the daily quests in the Brunnhildar Village, Dun Niffelem (The Sons of Hodir), Frosthold, and K3 regions of The Storm Peaks.",
},[[
step
Proceeding to next step |next |only if rep('The Sons of Hodir')<=Neutral
Proceeding to Friendly |next "friendly" |only if rep('The Sons of Hodir')==Friendly
Proceeding to Honored |next "honored" |only if rep('The Sons of Hodir')==Honored
Proceeding to Revered |next "revered" |only if rep('The Sons of Hodir')>=Revered
step
#include "Hodir_Quests"
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
If you want to grind mobs for Relics of Ulduar, or buy them on the Auction House, to turn in for The Sons of Hodir reputation, this is an awesome spot, as these mobs drop the Relics of Ulduar frequently.  You get 650 The Sons of Hodir reputation for every 10 Relics of Ulduar you collect. If you don't want to do this, skip this step.
kill Scion of Storm##30184+
|tip They are air elementals all around inside this big cave.
You can also buy the Relics of Ulduar on the Auction House, if you'd like to get the reputation much faster.
collect Relic of Ulduar##42780+ |n
|tip You turn these in in multiples of 10. |goto 67.0,45.1
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
|tip This is a repeatable quest. Turn in all of your Relics of Ulduar.
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
Leave the cave |goto 55.9,64.2 < 10 |q 13001
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
stickystart "viscousoil"
stickystart "wildwyrm"
step
Use your Ethereal Worg's Fang next to the Corpse of the Fallen Worg |use Ethereal Worg's Fang##42479
Follow the wolf that spawns and kill the Stormforged Infiltrator it finds
Repeat this process 2 more times
Kill 3 Stormforged Infiltrators |q 12994/1 |goto 57.2,64.0
step
label "viscousoil"
kill Viscous Oil##30325+
|tip They look like slimes inside this cave.
collect 5 Viscous Oil##42640 |q 13006/1 |goto 55.6,63.4
step
label "wildwyrm"
Use the Spear of Hodir on a Wild Wyrm flying around in the sky |use Spear of Hodir##42769
While fighting the Wild Wyrm, there will be 2 phases to the fight.  Phase 1:
|tip In phase 1 of the fight, you will be underneath the Wild Wyrm.  Use your Grab On ability to keep your grip high, or you will fall off and die.  Repeatedly use your Thrust Spear ability, until you get a message the Wild Wyrm is about to use its claw attack.  When you see that message, use your Dodge Claws ability, and then immediately use your Mighty Spear Thrust ability after that.  Remember to keep your grip up by using your Grab On ability, and repeat this process until phase 2 of the fight begins.
In phase 2 of the fight with the Wild Wyrm, the strategy changes:
|tip In phase 2 of the fight, you will be inside the Wild Wyrm's mouth.  Repeatedly use your Pry Jaws Open ability, try to stack it 20 times.  After you stack your Pry Jaws ability 20 times (which will give your Fatal Strike ability 100% chance to hit), use your Fatal Strike ability to kill the Wild Wyrm.  If you are close to dying, just stack your Pry Jaws Open ability as many times as you can, then use your Fatal Strike ability before you die, and hope it kills the Wild Wyrm.
Kill the Wild Wyrm |q 13003/1 |goto 56.6,64.3
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
kill Scion of Storm##30184+
|tip They are air elementals all around inside this big cave.
You can also buy the Relics of Ulduar on the Auction House, if you'd like to get the reputation much faster.
collect Relic of Ulduar##42780+ |n |goto 67.0,45.1
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
|tip This is a repeatable quest. Turn in all of your Relics of Ulduar.
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
Click Hodir's Horn |tip It's a huge bone war horn.
accept Hodir's Call##12977 |goto 64.1,65.1
stickystart "arngrimsspirit"
stickystart "viscousslime"
stickystart "spearhodir"
step
Use your Ethereal Worg's Fang next to the Corpse of the Fallen Worg |use Ethereal Worg's Fang##42479
Follow the wolf that spawns and kill the Stormforged Infiltrator it finds
Repeat this process 2 more times
Kill 3 Stormforged Infiltrators |q 12994/1 |goto 57.2,64.0
step
label "arngrimsspirit"
Use Arngrim's Tooth on Roaming Jormungars |use Arngrim's Tooth##42774
Fight Disembodied Jormungars until Arngrim the Insatiable comes to eat them
Feed Arngrim's Spirit 5 Times |q 13046/1 |goto 56.4,65.0
step
label "viscousslime"
kill Viscous Oil##30325+
|tip They look like slimes inside this cave.
collect 5 Viscous Oil##42640 |q 13006/1 |goto 55.6,63.4
step
label "spearhodir"
Use the Spear of Hodir on a Wild Wyrm flying around in the sky |use Spear of Hodir##42769
While fighting the Wild Wyrm, there will be 2 phases to the fight.  Phase 1:
|tip In phase 1 of the fight, you will be underneath the Wild Wyrm.  Use your Grab On ability to keep your grip high, or you will fall off and die.  Repeatedly use your Thrust Spear ability, until you get a message the Wild Wyrm is about to use its claw attack.  When you see that message, use your Dodge Claws ability, and then immediately use your Mighty Spear Thrust ability after that.  Remember to keep your grip up by using your Grab On ability, and repeat this process until phase 2 of the fight begins.
In phase 2 of the fight with the Wild Wyrm, the strategy changes:
|tip In phase 2 of the fight, you will be inside the Wild Wyrm's mouth.  Repeatedly use your Pry Jaws Open ability, try to stack it 20 times.  After you stack your Pry Jaws ability 20 times (which will give your Fatal Strike ability 100% chance to hit), use your Fatal Strike ability to kill the Wild Wyrm.  If you are close to dying, just stack your Pry Jaws Open ability as many times as you can, then use your Fatal Strike ability before you die, and hope it kills the Wild Wyrm.
Kill the Wild Wyrm |q 13003/1 |goto 56.6,64.3
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
collect Relic of Ulduar##42780+ |n |goto 67.0,45.1
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
|tip This is a repeatable quest. Turn in all of your Relics of Ulduar.
Click here to return to the beginning of the Dailies |confirm
|next "hub" |only if rep('The Sons of Hodir')<=Exalted
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\The Storm Peaks\\Brunnhildar, K-3 and Frosthold Dailies",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the daily quests in the Brunnhildar Village region of The Storm Peaks.",
},[[
step
label "hub"
talk Gretta the Arbiter##29796
You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
accept Back to the Pit##13424 |goto The Storm Peaks,50.9,65.6 |or
accept Defending Your Title##13423 |goto The Storm Peaks,50.9,65.6 |or
accept Maintaining Discipline##13422 |goto The Storm Peaks,50.9,65.6 |or
accept The Aberrations Must Die##13425 |goto The Storm Peaks,50.9,65.6 |or
stickystart "victoriouschallenger"
step
Use your Reins of the Icemaw Matriarch inside The Pit of the Fang to ride a bear |use Reins of the Icemaw Matriarch##42499
Use the abilities on your hotbar to fight Hyldsmeet Warbears
kill 6 Hyldsmeet Warbear |q 13424/1 |goto 49.4,67.6
step
label "victoriouschallenger"
talk Victorious Challenger##30012
kill 6 Victorious Challenger |q 13423/1 |goto 50.4,67.5
step
The entrance to the Forlorn Mine is here |goto 47.1,68.5 < 10 |q 13422
step
Use your Disciplining Rod on Exhausted Vrykul |use Disciplining Rod##42837
|tip They are sitting on the ground inside these side tunnels inside this mine.
Discipline 6 Exhausted Vrykul |q 13422/1 |goto 44.9,70.1
step
Leave the mine |goto 47.1,68.5 < 10 |q 13422
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
talk Fjorlin Frostbrow##29732
accept Pushed Too Far##12869 |goto The Storm Peaks,29.8,75.7
step
Use the abilities on your hotbar to fight Stormpeak Wyrms flying in the air around this area
kill 16 Stormpeak Wyrm |q 12869/1 |goto 44.6,59.8
step
Click the red arrow on your hotbar to get off the eagle|script VehicleExit()
talk Fjorlin Frostbrow##29732
turnin Pushed Too Far##12869 |goto 29.8,75.7
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
You have reached the end of the dailies guide. Click here to return to the beginning of the guide |confirm
|next "hub"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Zul'Drak\\The Argent Stand Dailies and Pre-Quests",{
author="support@zygorguides.com",
description="\nThis guide section contains the pre-quests and dailies for Argent Stand.",
mounts={65637,65643,65642,65638,65640,63639,63636,63638,63637,63232},
},[[
#include "ArgentT_Quests"
step
label "daily"
The Zul'Drak daily quests are timed, so having an epic flying mount will help you get them done a lot faster and easier.  You will receive 650 extra Argent Crusade reputation and 18 extra gold by completing these quests within 20 minutes
|confirm
step
talk Commander Kunz##28039
accept Troll Patrol##12587 |goto Zul'Drak,40.3,66.6 |or
accept Troll Patrol##12563 |goto Zul'Drak,40.3,66.6 |or
accept Troll Patrol##12501 |goto Zul'Drak,40.3,66.6 |or
step
talk Alchemist Finklestein##28205
accept Troll Patrol: The Alchemist's Apprentice##12541
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
accept Troll Patrol: Couldn't Care Less##12594 |goto 48.1,63.9 |or
accept Troll Patrol: Creature Comforts##12585 |goto 48.1,63.9 |or
accept Troll Patrol: Whatdya Want, a Medal?##12519 |goto 48.1,63.9 |or
stickystart "mossyrampagers"
stickystart "drakkaricorpse"
step
Click Dead Thornwoods
|tip They look like curved thorny roots coming out of the water around this area.
collect 20 Dead Thornwood##38563 |q 12585/1 |goto 46.0,61.8
step
label "drakkaricorpse"
Click Drakkari Corpses
|tip They look like dead blue trolls laying on the ground around this area.
collect 7 Drakkari Medallion##38333 |q 12519/1 |goto 45.6,62.7
step
label "mossyrampagers"
kill Mossy Rampager##28323+
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
accept Troll Patrol: Done to Death##12568 |goto 58.1,72.4 |or
accept Troll Patrol: Intestinal Fortitude##12509 |goto 58.1,72.4 |or
accept Troll Patrol: Throwing Down##12591 |goto 58.1,72.4 |or
step
Use your Incinerating Oil on Defeated Argent Footmen |use Incinerating Oil##38556
|tip They look like dead soldiers laying on the ground around this area.
Incinerate 5 Argent Footman Corpses |q 12568/1 |goto 56.0,70.8
step
talk Crusade Recruit##28090
Tell them to get out of there
Restore 5 Recruit's Courage |q 12509/1 |goto 51.6,75.1
step
Use your High Impact Grenade next to Nerubian Tunnels |use High Impact Grenade##38574
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
accept Troll Patrol: Can You Dig It?##12588 |goto 48.8,78.9 |or
accept Troll Patrol: High Standards##12502 |goto 48.8,78.9 |or
accept Troll Patrol: Something for the Pain##12564 |goto 48.8,78.9 |or
stickystart "maturewater"
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
label "maturewater"
Click the Mature Water-Poppy plants
|tip They look like tall white-leaved plants with purple bulbs at the top.
collect 5 Mature Water-Poppy##38552 |q 12564/1 |goto 45.6,79.3
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
autoscript ZGV.completioninterval=5
step
talk Commander Kunz##28039
accept Congratulations!##12604 |goto 40.3,66.6
|tip You can only get this quest if you complete the Troll Patrol daily in under 20 minutes.
step
You have finished the Argent Stand Dailies, click here to retrun to the beginning of the Dailies Guide |confirm |next "daily"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Cataclysm Dailies\\Deepholm\\Therazane's Throne Dailies, plus Pre-Quests",{
description="\nWalks you through completing the daily quests in the Therazane's Throne region of Deepholm.",
},[[
step
Proceeding to Pre-Quests |next |only if not completedq(26709)
Proceeding to Dailies |next "dailies" |only if completedq(26709)
step
#include "A_Therazane_PreQuest"
step
#include "Therazane_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Cataclysm Dailies\\Uldum Dailies with Pre-Quests",{
author="support@zygorguides.com",
description="\nContains the pre-quests to unlock the daily quests in Uldum. You must be at least level 30 to complete this guide section.",
},[[
step
The pre-quests for these dailies are in Uldum. You can quest through the guide, or use our Leveling Guide for help |only if not ZGV.guidesets['LevelingACATA']
Click here to go to the leveling section to work on this rep |confirm |next "Leveling Guides\\Cataclysm (10-50)\\Uldum (30-50)" |only if ZGV.guidesets['LevelingACATA']
only if not completedq(28633)
step
label "hub"
talk Nomarch Teneth##46603
accept Thieving Little Pluckers##28250 |goto Uldum,60.3,38.3
step
Use your Tahret Dynasty Mallet next to stacks of Pygmies |use Tahret Dynasty Mallet##63351
|tip They are sitting on each other's shoulders trying to steal fruit out of trees around this area.
Smash 30 Thieving Pluckers |q 28250/1 |goto 59.1,38.4
step
talk Nomarch Teneth##46603
turnin Thieving Little Pluckers##28250 |goto 60.3,38.3
step
talk Weathered Nomad##49523
accept Fire From the Sky##28736 |goto Uldum,41.4,5.5
step
Click the Confiscated Artillery |tip It looks like a war catapult car machine.
Use the Designate Target ability on your hotbar on the Infantrymen
Slay 100 Infantrymen |q 28736/1 |goto 41.4,5.5
step
talk Weathered Nomad##49523
turnin Fire From the Sky##28736 |goto 41.4,5.5
step
You have reached the end of these dailies. Click here to return to the beginning of the guide |confirm
|next "hub"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Cataclysm Dailies\\Twilight Highlands\\Twilight Highlands Dailies with Pre-Quests",{
author="support@zygorguides.com",
description="\nContains the pre-quests to unlock the daily quests in Twilight Highlands. You must be at least level 30 to complete this guide section.",
},[[
step
The pre-quests for these dailies are in Uldum. You can quest through the guide, or use our Leveling Guide for help. |only if not ZGV.guidesets['LevelingACATA']
Click here to go to the leveling section to work on this rep |confirm |next "Leveling Guides\\Cataclysm (10-50)\\Twilight Highlands (30-50)" |only if ZGV.guidesets['LevelingACATA']
only if not completedq(27787)
step
label "dailies"
talk Craw MacGraw##49386
accept Warlord Halthar is Back##28863 |goto Twilight Highlands,48.6,30.7 |tip This is a 2-person group quest.
step
talk Colin Thundermar##46591
accept Keeping the Dragonmaw at Bay##28860 |goto 49.0,29.8
accept Beer Run##28864 |goto 49.0,29.8
step
talk Low Shaman Blundy##48010
accept Fight Like a Wildhammer##28861 |goto 49.8,29.2
accept Never Leave a Dinner Behind##28862 |goto 49.8,29.2
stickystart "wildhammer"
step
kill Warlord Halthar |q 28863/1 |goto 49.0,37.3
|tip He flies around on a red drake in the sky, but he lands in this spot to start fighting.  He is elite, and this is marked as a 2-person group quest, so you may need help killing him.
step
label "wildhammer"
kill Dragonmaw Marauder##46310+
collect 8 Dragonmaw Insignia##62332 |q 28860/1 |goto 46.2,37.4
Click Thundermar Ale Kegs
|tip They look like wooden barrels on the ground around this area.
collect 10 Keg of Thundermar Ale##62330 |q 28861/1 |goto 46.2,37.4
Click Wildhammer Food Stores
|tip They look like hanging fish, sliced bread, and legs of meat on the ground around this area.
collect 10 Wildhammer Food Stores##62324 |q 28862/1 |goto 46.2,37.4
You can find more around [49.1,37.3]
step
talk Hammelhand##48758
Tell him you're here to escort a delivery to Kirthaven
Follow the dwarves
kill Dragonmaw Skirmisher##48799+
Escort the Supply Caravan |q 28864/1 |goto 64.4,22.6
step
talk Low Shaman Blundy##48010
turnin Fight Like a Wildhammer##28861 |goto 49.8,29.2
turnin Never Leave a Dinner Behind##28862 |goto 49.8,29.2
step
talk Colin Thundermar##46591
turnin Keeping the Dragonmaw at Bay##28860 |goto 49.0,29.8
turnin Beer Run##28864 |goto 49.0,29.8
step
talk Craw MacGraw##49386
turnin Warlord Halthar is Back##28863 |goto 48.6,30.7
step
You have reached the end of these dailies. Click here to return to the beginning of the guide |confirm
|next "dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Cataclysm Dailies\\Tol Barad Peninsula\\Tol Barad Dailies",{
achieveid={4874},
patch='40003',
author="support@zygorguides.com",
description="\nWalks you through completing the daily quests in Tol Barad.",
},[[
#include "A_Baradin_Hold_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Cataclysm Dailies\\Reputation\\Guardians of Hyjal",{
author="support@zygorguides.com",
description="\nWalks you through the process of obtaining Exalted reputation with the Guardians of Hyjal faction.",
},[[
step
map Mount Hyjal
To gain reputation with the Guardians of Hyjal faction:
Complete all quests in the Mount Hyjal zone
Once you earn Friendly reputation with the Guardians of Hyjal faction, you can buy the Tabard of the Guardians of Hyjal
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
Complete the Twilight Highlands Pre-Quests guide in the Twilight Highlands section
Once you earn Friendly reputation with The Earthen Ring faction, you can buy the Tabard of the Earthen Ring
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
Complete the Deepholm Pre-Quests guide in the Deepholm section
Complete the Therazane's Throne Dailies guide section in the Deepholm section
|tip Do this daily, if you'd like.
Once you earn Friendly reputation with the Therazane faction, you can buy the Tabard of Therazane
|tip Wear the Tabard of Therazane and use the Dungeon Finder tool to complete random Cataclysm Heroics.  You will gain reputation with the Therazane faction for each mob you kill inside the dungeon, so you can gain reputation very quickly doing this.
You can buy the Tabard of Therazane by talking to D'lom the Collector at [Deepholm 54.1,33.3]
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
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Cataclysm Dailies\\Reputation\\Wildhammer Clan",{
author="support@zygorguides.com",
description="\nWalks you through the process of obtaining Exalted reputation with the Wildhammer Clan faction.",
},[[
step
map Twilight Highlands
To gain reputation with the Wildhammer Clan faction:
Complete the Twilight Highlands Pre-Quests guide in the Twilight Highlands section.
Complete the Thundermar Dailies guide in the Twilight Highlands section.
|tip Do this daily, if you'd like.
Once you earn Friendly reputation with the Wildhammer Clan faction, you can buy the Tabard of the Wildhammer Clan.
|tip Wear the Tabard of the Wildhammer Clan and use the Dungeon Finder tool to complete random Cataclysm Heroics.  You will gain reputation with the Wildhammer Clan faction for each mob you kill inside the dungeon, so you can gain reputation very quickly doing this.
You can buy the Tabard of the Wildhammer Clan by talking to Craw MacGraw at [Twilight Highlands 48.6,30.7]
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Cataclysm Dailies\\Reputation\\Baradin's Wardens",{
author="support@zygorguides.com",
description="\nWalks you through the process of obtaining Exalted reputation with the Baradin's Wardens faction.",
},[[
step
map Tol Barad Peninsula
To gain reputation with the Baradin's Wardens faction:
Complete the Baradin Base Camp Dailies guide in the Tol Barad Peninsula section.
|tip Do this daily, if you'd like.
Complete the Baradin Hold Dailies guide in the Tol Barad section.
|tip Do this daily, if you'd like.  The daily quests in this section will only be available if the Alliance faction currently controls Tol Barad.
Once you earn Friendly reputation with the Baradin's Wardens faction, you can buy Baradin's Wardens Commendations from Quartermaster Brazie at [72.4,63.2] |tip They cost 10 Tol Barad Commendations each and you can use the Baradin's Wardens Commendations to increase your Baradin's Wardens reputation by 250.
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Cataclysm Dailies\\Zandalari Menace Quest Line",{
author="support@zygorguides.com",
startlevel=35,
description="\nWalks you through completing the Zandalari Menace quest line in Stranglethorn Vale. You must be level 35 to be able to use this guide.",
},[[
step
talk Bwemba##52654
accept Bwemba's Spirit##29100 |goto Stormwind City,25.9,29.3
accept To Fort Livingston##29102 |goto Stormwind City,25.9,29.3
step
talk Livingston Marshal##52281
turnin To Fort Livingston##29102 |goto Northern Stranglethorn,52.8,66.4
accept Serpents and Poison##29103 |goto Northern Stranglethorn,52.8,66.4
step
kill 10 Jungle Serpent |q 29103/1 |goto 52.0,61.4
Click Fort Livingston Adventurers
|tip They look like green bodies laying on the ground around this area.
Heal 10 Adventurers |q 29103/2 |goto 52.0,61.4
step
talk Livingston Marshal##52281
turnin Serpents and Poison##29103 |goto 52.8,66.4
step
Next to you:
talk Bwemba##52234
accept Spirits Are With Us##29104
step
Click the Bonfire
|tip It's a big pile of sticks on fire in the middle of Fort Livingston.
Watch the dialogue
Use the Bonfire in Fort Livingston |q 29104/1 |goto 52.9,66.5
step
Next to you:
talk Bwemba##52234
turnin Spirits Are With Us##29104
step
talk Livingston Marshal##52281
accept Nesingwary Will Know##29105 |goto 52.8,66.4
step
talk Hemet Nesingwary Jr.##52294
turnin Nesingwary Will Know##29105 |goto 44.1,22.9
accept Track the Tracker##29114 |goto 44.1,22.9
step
talk Grent Direhammer##52346
turnin Track the Tracker##29114 |goto 50.4,21.7
accept The Hunter's Revenge##29115 |goto 50.4,21.7
step
kill Mauti?##52349
Bring Grent Direhammer to the body of Mauti |q 29115/1 |goto 64.0,19.6
step
Click the Complete Quest box that appears under you minimap
turnin The Hunter's Revenge##29115
You will automatically accept a new quest:
accept Follow That Cat##29116
step
Go to this spot
Find Mauti's Lair |q 29116/1 |goto 77.7,68.4
step
Next to you:
talk Bwemba##52234
turnin Follow That Cat##29116
accept Mauti##29120
step
kill Mauti##52372
Let Bwemba Inspect the Cat |q 29120/1 |goto 77.2,69.0
step
Next to you:
talk Bwemba##52234
turnin Mauti##29120
accept How's the Hunter Holding Up?##29213
step
Enter the cave |goto 76.5,67.5 < 10
talk Grent Direhammer##52371
turnin How's the Hunter Holding Up?##29213 |goto 76.1,66.7
accept Bury Me With Me Boots...##29121 |goto 76.1,66.7
step
Click Direhammer's Boots
|tip They look like a small pair of brown boots sitting on the ground inside this cave.
collect Direhammer's Boots##68937 |q 29121/1 |goto 76.0,66.5
step
talk Grent Direhammer##52371
turnin Bury Me With Me Boots...##29121 |goto 76.1,66.7
step
talk Panther Cub##52374
accept Some Good Will Come##29267 |goto 76.1,66.7
step
Next to you:
talk Bwemba##52234
accept Warn the Rebel Camp##29124
step
Leave the cave |goto 76.5,67.5 < 10
talk Lieutenant Doren##52410
turnin Warn the Rebel Camp##29124 |goto 47.8,12.0
accept Defend the Rebel Camp##29131 |goto 47.8,12.0
step
kill Gurubashi War-Seeker##53165+, Gurubashi Bloodfury##52406+, Gurubashi Soul-Seeker##53166+
|tip Once the bar fills up at the bottom of your screen, you will complete the quest.
Help Defend the Camp |q 29131/1 |goto 47.5,11.4
step
talk Lieutenant Doren##52410
turnin Defend the Rebel Camp##29131 |goto 47.8,12.0
step
talk James Stillair##52753
accept To the Digsite##29133 |goto 47.9,11.9
step
talk James Stillair##52753
Ask him if one of his gryphons can get you to the Digsite
You will fly to the Explorers' League Digsite
Arrive at the Digsite |q 29133/1 |goto 47.9,11.9
step
Next to you:
talk Bwemba##52234
turnin To the Digsite##29133
accept Voodoo Zombies##29150
step
kill Digsite Zombie##52604+
Rescue 10 Digsite Survivors |q 29150/1 |goto The Cape of Stranglethorn 54.0,42.6
|tip You may not rescue every zombie you kill.
step
Next to you:
talk Bwemba##52234
turnin Voodoo Zombies##29150
accept Bad Supplies##29151
step
Click the Grain Sack
|tip It looks like a yellow bag sitting on the ground next to a big pile of barrels and crates.
Watch the dialogue
Search the Supplies |q 29151/1 |goto 55.0,42.0
step
Next to you:
talk Bwemba##52234
turnin Bad Supplies##29151
step
talk Colin Swifthammer##52646
accept Making Contact##29152 |goto 55.3,42.0
step
Enter the tunnel |goto 44.9,65.9 < 10
talk Vol'jin##52767
turnin Making Contact##29152 |goto 41.0,73.1
step
Go to this spot
Watch the dialogue
Help Bwemba Find the Darkspear Emissary |q 29100/1 |goto 41.2,73.0
step
Next to you:
talk Bwemba##52234
turnin Bwemba's Spirit##29100
step
To continue with the Zul'Gurub dungeon quest line:
talk Baron Revilgaz##2496
accept Booty Bay's Interests##29153 |goto 41.2,73.1
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Cataclysm Dailies\\Mount Hyjal\\How To Use Firelands Guide Sections - READ FIRST",{
author="support@zygorguides.com",
description="\nWalks you through how to use the Firelands guide sections.",
},[[
step
The Firelands quests are very dynamic.  You will not be able to complete some daily quests each day, as only a limited amount are available each day.
|tip Accept and complete as many as you can, and simply skip over the ones you can't accept that day.
_
_
You will need to use the Firelands Quests and Firelands Dailies together.  Complete as many quests as you can in the Firelands Quests guide section, and use the Firelands Dailies guide section to gain Marks of the World Tree.  |tip Marks of the World Tree are currency needed to complete certain quests in order to unlock more daily quests.
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Cataclysm Dailies\\Mount Hyjal\\Firelands Dailies with Pre-Quests",{
author="support@zygorguides.com",
startlevel=32.00,
description="\nWalks you through completing the Firelands quest line in Mount Hyjal.",
},[[
step
Proceeding to proper section |next |only if default
Proceedint to proper section |next "firelands" |only if completedq(25372)
step
#include "A_Firelands_PreQuests"
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
|tip You won't be able to do all the dailies yet. Just do the dailies you can do for now.
earn 20 Mark of the World Tree##416
Click here to load the Dailies guide |confirm |next "dailies"
step
talk Arch Druid Hamuul Runetotem##52838
turnin Calling for Reinforcements##29199 |goto 27.1,62.8
step
talk Arch Druid Hamuul Runetotem##52838
accept Leyara##29200 |goto Mount Hyjal 27.1,62.8
step
talk Leyara##53014
Ask her _"Why, what did Malfurion ever do to her?"_
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
_Enter through_ the tree |goto 47.3,88.2 < 10
talk Malfurion Stormrage##53385
turnin Through the Gates of Hell##29201 |goto 47.1,90.6
step
talk Matoclaw##52669
accept The Fate of Runetotem##29202 |goto Mount Hyjal 27.2,62.6
step
talk Dorda'en Nightweaver##52986
turnin The Fate of Runetotem##29202
Ask him How Hamuul is doing |goto 27.5,62.5 |achieve 5870/4
step
Use the Firelands Dailies Run guide each day:
|tip You won't be able to do all the dailies yet.  Just do the dailies you can do for now.
earn 150 Mark of the World Tree##416
Click here to load the Dailies guide |confirm |next "dailies"
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
turnin The Shadow Wardens##29214 |goto Mount Hyjal,26.8,62.2
step
talk Matoclaw##52669
accept The Hunt Begins##29215 |goto 27.2,62.6
step
talk Captain Saynna Stormrunner##52493
turnin The Hunt Begins##29215 |goto Molten Front 47.6,90.5
step
kill Druid of the Flame##52871+
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
only if completedq(29214) and completedq(29181)
step
talk Damek Bloombeard##53214
accept Additional Armaments##29281 |goto 46.9,90.0
only if completedq(29214) and completedq(29181)
step
talk Matoclaw##52669
turnin Additional Armaments##29281 |goto Mount Hyjal 27.2,62.6
only if completedq(29214) and completedq(29181)
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
only if completedq(29214) and completedq(29181)
step
talk Ayla Shadowstorm##53881
accept Filling the Moonwell##29279 |goto Molten Front 44.1,86.3
only if completedq(29214) and completedq(29181)
step
talk Matoclaw##52669
turnin Filling the Moonwell##29279 |goto Mount Hyjal 27.2,62.6
accept Nourishing Waters##29280 |goto Mount Hyjal 27.2,62.6
only if completedq(29214) and completedq(29181)
step
talk Ayla Shadowstorm##53881
turnin Nourishing Waters##29280 |goto Molten Front 44.1,86.3
only if completedq(29214) and completedq(29181)
step
talk Malfurion Stormrage##52135
accept Into the Depths##29203 |goto 47.0,91.4
step
Enter the cave |goto 57.8,49.6 < 10
kill Leyara |q 29203/1 |goto 64.5,59.2
step
Leave the cave |goto 57.8,49.6 < 10
talk Malfurion Stormrage##52135 |goto 47.0,91.4
turnin Into the Depths##29203 |goto 47.0,91.4
step
Click the Mailbox
|tip It looks like a small wooden box with black slits in it, next to a lamp post.
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
step
talk Matoclaw##52669
You will only be able to accept one of these quests per day:
accept Call the Flock##29147 |or |goto 27.2,62.6
accept Perfecting Your Howl##29164 |or |goto 27.2,62.6
accept Between the Trees##29125 |or |goto 27.2,62.6
step
talk Dorda'en Nightweaver##52986
You will only be able to accept one of these quests per day:
accept Relieving the Pain##29246 |or |goto 27.5,62.5
accept Treating the Wounds##29247 |or |goto 27.5,62.5
accept Releasing the Pressure##29248 |or |goto 27.5,62.5
step
talk Mylune##52671
You will only be able to accept one of these quests per day:
accept Punting Season##29101 |or |goto 27.1,62.0
accept Those Bears Up There##29161 |or |goto 27.1,62.0
noquest
step
talk Captain Soren Moonfall##53073
accept The Protectors of Hyjal##29128 |goto Mount Hyjal 27.3,61.6
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
noquest
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
noquest
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
step
Stand next to the fire portal with your Wisp
|tip It looks like 2 steam vents and black smoke riding out of the ground.
kill Firekin##53092+
Close a Fire Portal |q 29143/1 |goto 51.6,65.0
only if haveq(29143)
stickystart "magmolia"
stickystart "obsidiummeteor"
step
kill Emberspit Scorpion##53240+
|tip They will spawn Ember Pools on the ground, and your Crimson Lasher will drink from them.
Help the Crimson Lasher Drink from 6 Ember Pools |q 29299/1 |goto 50.7,50.8
only if haveq(29299)
step
Click Lava Bubbles
|tip They look like big light orange bubbles in the pools of lava around this area.
Use The Bitter Pill when the Subterranean Magma Worm is almost done casting its Burning Hunger spell |use The Bitter Pill##69759
kill Subterranean Magma Worm |q 29263/1 |goto 52.8,49.9
only if haveq(29263)
step
label "magmolia"
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
Click Ash Piles |tip They look like brown mounds of dirt on the ground around this area. |only if haveq(29139)
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
You will fly up out of the cavern |goto Molten Front,33.7,65.7,0.5 |noway |c
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
Return to the Furnace |goto Molten Front 34.2,57.0 < 20 |noway |c |q 29290
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
|tip The named mob you have to fight is random, so it is not always the same.
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
turnin The Forlorn Spire##29205 |goto Molten Front 64.9,67.3
step
talk Marin Bladewing##52494
You will only be able to accept one of these quests per day:
accept Solar Core Destruction##29211 |or |goto 64.9,67.3
accept The Wardens are Watching##29192 |or |goto 64.9,67.3
step
talk Ricket##54163
accept Bye Bye Burdy##29297 |goto 66.4,65.4
noquest
step
talk Tholo Whitehoof##52477
accept The Flame Spider Queen##29276 |goto 66.3,66.1
|tip This quest will not always be available each day.
noquest
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
Click the Solar Core |tip It looks like a big floating orb.
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
collect Flame Druid Staff##69810 |q 29275/1 |goto 61.7,53.0  |only if haveq(29275)
collect Flame Druid Spellbook##69811 |q 29275/2 |goto 61.7,53.0  |only if haveq(29275)
collect Flame Druid Reagent Pouch##69812 |q 29275/3 |goto 61.7,53.0  |only if haveq(29275)
collect Flame Druid Idol##69813 |q 29275/4 |goto 61.7,53.0  |only if haveq(29275)
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
condition_end=function() return completedq(29331) end,
author="support@zygorguides.com",
description="\nWalks you through completing the Call of the World-Shaman quest line.",
},[[
step
talk Naraat the Earthspeaker##45226
accept The Call of the World-Shaman##29439 |goto Stormwind City 74.5,19.0
step
talk Thrall##54313
turnin The Call of the World-Shaman##29439 |goto Mount Hyjal 60.6,31.5
accept The Nordrassil Summit##29326 |goto Mount Hyjal 60.6,31.5
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
You will teleport to Uldum |goto Uldum,47.8,88.0,0.5 |noway |c |q 29335
step
talk Cyclonas##53524
turnin Into Slashing Winds##29335 |goto Uldum 47.6,88.9
accept Elemental Bonds: Doubt##29327 |goto Uldum 47.6,88.9
step
talk Cyclonas##53524 |goto 47.6,88.9
Tell him to take you to Thrall
You will fly up to the top of a tower |goto 34.3,77.5,0.5 |noway |c |q 29327
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
You will teleport to the Abyssal Depths |goto Abyssal Depths,69.7,34.8,0.5 |noway |c |q 29336
step
talk Hydrius##53677
turnin Into Coaxing Tides##29336 |goto Abyssal Depths 69.5,34.3
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
You will teleport to Deepholm |goto Deepholm,56.3,13.0,0.5 |noway |c |q 29337
step
talk Therazane##42465
turnin Into Constant Earth##29337 |goto Deepholm 56.3,12.2
step
talk Aggra##53738
accept Elemental Bonds: Patience##29329 |goto 56.5,12.5
step
talk Aggra##53738 |goto 56.5,12.5
Tell her you are ready
You will be taken to the Staidridge |goto 64.2,46.0,0.5 |noway |c |q 29329
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
turnin Into Unrelenting Flame##29338 |goto Molten Front 49.6,31.7
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
turnin Elemental Bonds: The Vow##29331 |goto Mount Hyjal 60.2,29.8
step
Congratulations, you saved Thrall!
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Cooking\\Dalaran Cooking Daily Guide",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the Cooking daily quests to earn Dalaran Cooking Awards and gather Northern Spices.",
condition_suggested=function() return hasprof('Cooking',1,600) end,
},[[
step
talk Katherine Lee##28705
You will only be able to accept, and turn in, 1 of these 5 daily quests per day, and they all require you have 350+ Cooking skill:
accept Cheese for Glowergold##13103 |or |goto Dalaran 40.8,65.4
accept Convention at the Legerdemain##13101|daily |or |goto Dalaran 40.8,65.4
accept Infused Mushroom Meatloaf##13100|daily |or |goto Dalaran 40.8,65.4
accept Mustard Dogs!##13107|daily |or |goto Dalaran 40.8,65.4
accept Sewer Stew##13102|daily |or |goto Dalaran 40.8,65.4
step
Click the Aged Dalaran Limburger
|tip They look like piles and pieces of yellow cheese on the tables inside this building.
collect 1 Aged Dalaran Limburger##43137 |q 13103 |goto 54.7,31.5
Click the Half Full Glasses of Wine
|tip They look like small blue-ish wine glasses sitting on tables, and on the ground, inside this building. They spawn in random locations.
collect 6 Half Full Dalaran Wine Glass##43138 |q 13103 |goto 54.7,31.5
You can find more Half Full Glasses of Wine inside the building at [49.4,39.3]
step
use Empty Cheese Serving Platter##43139
collect 1 Wine and Cheese Platter##43136 |q 13103/1
step
Click a Full Jug of Wine
|tip They look like small blue-ish green jugs sitting on the ground inside this building. They might also be up the stairs. They spawn in random locations.
collect 1 Jug of Wine##43128 |q 13101/2 |goto 55.0,30.8
step
kill Rabid Grizzly##26643+, Blighted Elk##26616+
collect 4 Chilled Meat##43013 |q 13101 |goto Dragonblight 30.0,49.8
step
#include "cooking_fire"
create 4 Northern Stew##57421,Cooking,4 total |n
collect 4 Northern Stew##34747 |q 13101/1
step
collect 4 Infused Mushroom##43100 |q 13100 |goto Dalaran/2 59.5,43.6
|tip They spawn randomly along the sewer lines.
step
kill Rabid Grizzly##26643+, Blighted Elk##26616+
collect 2 Chilled Meat##43013 |q 13100 |goto Dragonblight 30.0,49.8
step
#include "cooking_fire"
use Meatloaf Pan##43101
|tip You will need a cooking fire to do this.
collect 1 Infused Mushroom Meatloaf##43099 |q 13100/1
step
Click the Wild Mustard
|tip They look like small, and kind of hard to see, bushy yellow flowers on the ground around this area. They spawn randomly in grassy areas.
collect 4 Wild Mustard##43143 |q 13107 |goto Dalaran 67.7,40.0
You can find more Wild Mustard flowers:
At [50.3,48.3]
At [37.2,43.9]
step
kill Wooly Rhino Calf##25488+, Wooly Rhino Matriarch##25487+, Wooly Rhino Bull##25489+
collect 4 Rhino Meat##43012 |q 13107 |goto Borean Tundra 46.7,43.6
step
#include "cooking_fire"
create Rhino Dogs##45553,Cooking,4 total |n
collect 4 Rhino Dogs##34752 |q 13107
step
use Empty Picnic Basket##43142
collect 1 Mustard Dog Basket##43144 |q 13107/1
step
Click the Crystalsong Carrots
|tip They looke like carrots sticking out of the ground, at the base of trees around this area underneath Dalaran. They spawn in random locations around this area.
collect 4 Crystalsong Carrot##43148 |q 13102 |goto Crystalsong Forest 26.7,44.1
step
kill Rabid Grizzly##26643+, Blighted Elk##26616+
collect 4 Chilled Meat##43013 |q 13102 |goto Dragonblight,30.0,49.8
step
#include "cooking_fire"
use Stew Cookpot##43147
|tip You will need a cooking fire to do this.
collect 1 Vegetable Stew##43149 |q 13102/1
step
talk Ranid Glowergold##28718
turnin Cheese for Glowergold##13103 |goto Dalaran,36.6,27.8
step
talk Arille Azuregaze##29049
turnin Convention at the Legerdemain##13101 |goto Dalaran,48.6,37.5
step
talk Orton Bennet##29527
turnin Infused Mushroom Meatloaf##13100 |goto Dalaran,52.3,55.6
step
talk Archmage Pentarus##28160
turnin Mustard Dogs!##13107 |goto Dalaran,68.6,42.0
step
talk Ajay Green##29532
turnin Sewer Stew##13102 |goto Dalaran,35.5,57.6
step
You have completed the maximum amount of Dalaran Cooking dailies you can do today
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Cooking\\Shattrath Cooking Daily Guide",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the Cooking daily quests to earn Shattrath Cooking Awards",
},[[
#include "A_Shattrath_Cooking_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Cooking\\Stormwind Cooking Daily Guide",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the Cooking daily quests to earn Dalaran Cooking Awards and gather Northern Spices.",
},[[
#include "SW_Cooking_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Jewelcrafting\\Daily Guides\\Jewelcrafting Daily Guide",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the Jewelcrafting daily quests.",
},[[
step
label "start"
talk Isabel Jones##50480
accept A Present for Lila##25154 |or |goto Stormwind City,63.8,61.5
accept Elemental Goo##25156 |or |goto Stormwind City,63.8,61.5
accept Nibbler! No!##25105 |or |goto Stormwind City,63.8,61.5
accept Ogrezonians in the Mood##25155 |or |goto Stormwind City,63.8,61.5
accept The Latest Fashion!##25157 |or |goto Stormwind City,63.8,61.5
|tip You will only be able to accept one of these daily quests.
step
#include "trainer_Jewelcrafting"
learn Timeless Nightstone##73243
step
Use your Jewelcrafting profession to craft Timeless Nightstone
create Timeless Nightstone##73243,Jewelcrafting,3 total |q 25154/1
collect 3 Timeless Nightstone##52098 |q 25154/2
step
kill Scalding Rock Elemental##40229+
collect 10 Elemental Goo##52506 |q 25162/1 |goto Mount Hyjal,65.0,22.5
step
#include "trainer_Jewelcrafting"
learn Solid Zephyrite##73227
step
create Solid Zephyrite##73227,Jewelcrafting,3 total |q 25105/1
Make #3# Solid Zephyrite |q 25105/2
step
#include "trainer_Jewelcrafting"
learn Jagged Jasper##73274
step
create Jagged Jasper##73274,Jewelcrafting,3 total |q 25155/1
Make #3# Jagged Jasper |q 25155/2
step
Use the Stardust in your bags on 10 Humanoids around the city |use Stardust No. 2##52507
Test the Stardust No. 2 on #10# Humanoids |q 25157/1
|tip You can use this on NPCs and yourself
step
talk Isabel Jones##50480
turnin A Present for Lila##25154  |goto 63.8,61.5
turnin Elemental Goo##25156 |goto 63.8,61.5
turnin Nibbler! No!##25105 |goto 63.8,61.5
turnin Ogrezonians in the Mood##25155 |goto 63.8,61.5
turnin The Latest Fashion!##25157 |goto 63.8,61.5
earn 4 Illustrious Jewelcrafter's Token##361
Click to restart the Jewelcrafting Dailies |confirm |next "start" |only if skill("Jewelcrafting")<525
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\Fires of Azeroth\\Extinguishing Draenor",{
achieveid={11276},
patch='70200',
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
keywords={"Extinguishing","Draenor"},
description="\nThis guide will walk you through obtaining the Extinguishing Draenor achievement.",
},[[
step
click Horde Bonfire##194039
accept Desecrate this Fire!##44583 |goto Frostfire Ridge/0 72.74,65.17
Earn the "Extinguishing Draenor" Achievement |achieve 11276
step
_Congratulations!_
You Earned the "Extinguishing Draenor" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\Fires of Azeroth\\Extinguishing the Broken Isles",{
achieveid={11278},
patch='70200',
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
keywords={"Extinguishing","the","Broken","Isles"},
description="\nThis guide will walk you through obtaining the Extinguishing the Broken Isles achievement.",
},[[
step
click Horde Bonfire##194039
accept Desecrate this Fire!##44627 |goto Suramar/0 30.34,45.21
Earn the "Extinguishing the Broken Isles" Achievement |achieve 11278
step
_Congratulations!_
You Earned the "Extinguishing the Broken Isles" Achievement.
]])
