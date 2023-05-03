local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if ZGV:DoMutex("PetsMountsCDRAGON") then return end
ZygorGuidesViewer.GuideMenuTier = "SHA"
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Quest Mounts\\Lizi, Thunderspine Tramper",{
author="support@zygorguides.com",
description="\nRaise your very own Thuderspine mount.",
condition_suggested=function() return level == 60 and not achieved(16584) end,
mounts={374247},
model={100970},
mounttype='Ground',
startlevel=60,
keywords={"Dragonflight"},
patch='100002',
},[[
step
talk Hunt Instructor Basku##195454 |goto Ohn'ahran Plains/0 64.01,41.00
|tip Turn in hunting trophies from grand hunts for rep.
'|turnin More Hunting Trophies##72868 |repeatable |n
'|turnin More Hunting Trophies##70929 |repeatable |n
'|turnin More Hunting Trophies##70928 |repeatable |n
Reach Renown Level 9 with the Maruuk Centaur |complete factionrenown(2503) >= 9
|tip Complete daily quests, weekly quests, and zone quests in Ohn'ahran Plains to gain renown.
|tip You can also complete quests at the Aylaag Outpost each time they set up camp at a new location.
step
talk Windsage Ordven##195302
accept A Disgruntled Initiate##65906 |goto Ohn'ahran Plains/0 63.12,34.04
step
talk Initiate Radiya##190014
turnin A Disgruntled Initiate##65906 |goto 56.26,75.96
accept Sneaking Out##65901 |goto 56.26,75.96
step
click Wind Totem
Place the Wind Totem |q 65901/1 |goto 56.65,76.27 |count 1
step
click Wind Totem
Place the Wind Totem |q 65901/1 |goto 57.36,76.33 |count 2
step
click Wind Totem
Place the Wind Totem |q 65901/1 |goto 57.01,75.48 |count 3
step
talk Initiate Radiya##190014
Tell her _"The totems are placed."_
Inform Radiya |q 65901/2 |goto 56.25,75.95
step
talk Initiate Radiya##190014
turnin Sneaking Out##65901 |goto 54.79,66.40
accept Favorite Fruit##65907 |goto 54.79,66.40
step
click Wildsprings Shrub+
|tip They look like green bushes on the ground around this area.
collect 6 Wild Bushfruit##192743 |q 65907/1 |goto 53.53,71.02
step
use the Wild Bushfruit##192743+
|tip Use it on Mudstompers.
|tip They look like small and large hippos around this area.
Feed #6# Mudstompers |q 65907/2 |goto 54.28,66.61
step
talk Initiate Radiya##190014
turnin Favorite Fruit##65907 |goto 54.79,66.40
accept A Promise Is A Promise##65770 |goto 54.79,66.40
step
talk Initiate Radiya##190014
Tell her _"I promise to keep your secret."_
Promise Radiya |q 65770/1 |goto 54.79,66.40
step
Meet Radiya Further North |q 65770/2 |goto 53.11,64.01
step
talk Godoloto##190022
|tip He flies down onto the rock.
turnin A Promise Is A Promise##65770 |goto 52.05,63.24
accept More Adventure Than Expected##65761 |goto 52.05,63.24
step
Enter the building |goto 47.49,54.23 < 10 |walk
talk Initiate Radiya##190014
|tip Inside the building.
Find Radiya |q 65761/3 |goto 47.51,54.12
step
talk Initiate Radiya##190014
|tip Inside the building.
turnin More Adventure Than Expected##65761 |goto 47.51,54.12
accept Stealing Its Thunder##65711 |goto 47.51,54.12
step
Enter the cave |goto 47.54,56.07 < 15 |walk
kill Storm Extractor##190011 |q 65711/1 |goto 47.29,56.72
|tip They look like centaurs channeling a blue lightning spell on a dinosaur.
|tip Inside the cave.
step
Leave the cave |goto 47.54,56.07 < 15 |walk |only if subzone("Kaighan Camp") and _G.IsIndoors()
talk Lizi##190009
Choose _"<Gently offer the bushfruit.>"_
Soothe Lizi the Thunder Lizard |q 65711/2 |goto 48.31,56.60
step
talk Initiate Radiya##190014
|tip She runs to this location.
turnin Stealing Its Thunder##65711 |goto 48.27,56.49
accept Sneaking In##66676 |goto 48.27,56.49
step
talk Initiate Radiya##190014
Return to Radiya in Ohn'iri Springs |q 66676/1 |goto 56.20,77.10
step
talk Initiate Radiya##190014
turnin Sneaking In##66676 |goto 56.20,77.10
|tip Turning in this guide quest will unlock the 5-day quest chain to create Lizi's Reins.
|tip This is a thunderlizard mount.
step
talk Initiate Radiya##190014
accept To Tame A Thunderspine##71196 |goto 56.20,77.10
stickystart "Collect_Dragon_Isles_Supplies_71196"
step
kill Frenzied Pollenstag##190611+
collect 20 Fluorescent Fluid##192615 |q 71196/1 |goto 82.30,25.12
|tip You can also purchase them from the auction house.
step
label "Collect_Dragon_Isles_Supplies_71196"
earn 150 Dragon Isles Supplies##2003 |q 71196/2
|tip Collect these by completing world quests, weekly quests, and daily quests.
|tip You can also collect them by killing rares or opening treasures.
step
talk Initiate Radiya##190014
turnin To Tame A Thunderspine##71196 |goto 56.20,77.10
stickystart "Collect_Dragon_Isles_Supplies_71197"
step
Kill Lasher enemies around this area
collect 20 High-Fiber Leaf##192658 |q 71197 |goto 30.76,52.56 |future
|tip You can also purchase them from the auction house.
|tip Save these, you will need them tomorrow.
step
label "Collect_Dragon_Isles_Supplies_71197"
earn 150 Dragon Isles Supplies##2003 |q 71197 |future
|tip Collect these by completing world quests, weekly quests, and daily quests.
|tip You can also collect them by killing rares or opening treasures.
|tip Save these, you will need them tomorrow.
step
Wait for the Next Quest to Become Available |complete not completedq(71203) or completedq(71197)
|tip Each daily reset a new quest will be complete.
|tip You will need to complete 5 quests total, 1 each day.
|tip You have 4 quests remaining.
step
talk Initiate Radiya##190014
accept To Tame A Thunderspine##71197 |goto 56.20,77.10
stickystart "Collect_Dragon_Isles_Supplies_71198"
step
cast Fishing##131474
collect 10 Thousandbite Piranha##194966 |q 71198 |goto 56.29,78.28 |future
|tip These can be fished up anywhere in the Dragon Isles.
|tip You can also purchase them from the auction house.
|tip Save these, you will need them tomorrow.
step
label "Collect_Dragon_Isles_Supplies_71198"
earn 150 Dragon Isles Supplies##2003 |q 71198 |future
|tip Collect these by completing world quests, weekly quests, and daily quests.
|tip You can also collect them by killing rares or opening treasures.
|tip Save these, you will need them tomorrow.
step
Wait for the Next Quest to Become Available |complete not completedq(71203) or completedq(71198)
|tip Each daily reset a new quest will be complete.
|tip You will need to complete 5 quests total, 1 each day.
|tip You have 3 quests remaining.
step
talk Initiate Radiya##190014
accept To Tame A Thunderspine##71198 |goto 57.09,77.65
stickystart "Collect_Dragon_Isles_Supplies_71199"
step
Kill Musken and Goat enemies around this area
collect 20 Woolly Mountain Pelt##192636 |q 71199 |goto 49.44,36.91 |future
|tip You can also purchase them from the auction house.
|tip Save these, you will need them tomorrow.
step
label "Collect_Dragon_Isles_Supplies_71199"
earn 150 Dragon Isles Supplies##2003 |q 71199 |future
|tip Collect these by completing world quests, weekly quests, and daily quests.
|tip You can also collect them by killing rares or opening treasures.
|tip Save these, you will need them tomorrow.
step
Wait for the Next Quest to Become Available |complete not completedq(71203) or completedq(71199)
|tip Each daily reset a new quest will be complete.
|tip You will need to complete 5 quests total, 1 each day.
|tip You have 2 quests remaining.
step
talk Initiate Radiya##190014
accept To Tame A Thunderspine##71199 |goto 56.73,76.32
step
Wait for the Next Quest to Become Available |complete not completedq(71203) or completedq(71195)
|tip Each daily reset a new quest will be complete.
|tip You will need to complete 5 quests total, 1 each day.
|tip You have 1 quest remaining.
step
talk Initiate Radiya##190014
accept To Tame A Thunderspine##71195 |goto 57.66,72.32
stickystart "Collect_Dragon_Isles_Supplies_71195"
step
talk Ohn Meluun##190015
|tip Inside the tent.
Tell her _"Radiya told me about your green curry."_
Collect Meluun's Green Curry |q 71195/1 |goto 53.50,79.02
step
label "Collect_Dragon_Isles_Supplies_71195"
earn 150 Dragon Isles Supplies##2003 |q 71195/2
|tip Collect these by completing world quests, weekly quests, and daily quests.
|tip You can also collect them by killing rares or opening treasures.
step
talk Initiate Radiya##190014
turnin To Tame A Thunderspine##71195 |goto 57.66,72.32
step
talk Initiate Radiya##190014
accept Beast of the Plains##71209 |goto 57.66,72.32
step
talk Initiate Radiya##190014
turnin Beast of the Plains##71209 |goto 57.66,72.32
step
use Lizi's Reins##192799
Collect the "Lizi, Thunderspine Tramper" Mount |learnmount Lizi, Thunderspine Tramper##374247
]])
