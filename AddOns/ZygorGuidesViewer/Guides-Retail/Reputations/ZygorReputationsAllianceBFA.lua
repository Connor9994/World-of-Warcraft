local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("ReputationsABFA") then return end
ZygorGuidesViewer.GuideMenuTier = "BFA"
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Battle for Azeroth\\7th Legion",{
author="support@zygorguides.com",
keywords={"7th","Legion"},
description="\nThis guide will walk you through becoming exalted with the \"7th Legion\" faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('7th Legion') < Exalted end,
condition_end=function() return rep('7th Legion') == Exalted end,
},[[
step
Unlock World Quests |complete completedq(52450) or completedq(51918)
|tip Use the following guides to accomplish this:
|tip Intro and Quest Zone Choice guide.
|tip Battle for Azeroth Leveling guides.
|tip War Campaign guide.
step
Reach Exalted Reputation with the 7th Legion |complete rep('7th Legion')==Exalted
|tip Use the Battle for Azeroth "World Quests" guides to complete "7th Legion" world quests.
|tip Complete the weekly Island Expeditions quest "Azerite for the Alliance".
|tip Complete Missions at your mission table that reward reputation with the 7th Legion.
step
_Congratulations!_
You reached Exalted reputation with the "7th Legion" faction.
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Battle for Azeroth\\Champions of Azeroth",{
author="support@zygorguides.com",
keywords={"Champions","of","Azeroth"},
description="\nThis guide will walk you through becoming exalted with the \"Champions of Azeroth\" faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Champions of Azeroth') < Exalted end,
condition_end=function() return rep('Champions of Azeroth') == Exalted end,
},[[
step
Unlock World Quests |complete completedq(52450) or completedq(51918)
|tip Use the following guides to accomplish this:
|tip Intro and Quest Zone Choice guide.
|tip Battle for Azeroth Leveling guides.
|tip War Campaign guide.
step
Reach Exalted Reputation with the Champions of Azeroth |complete rep('Champions of Azeroth')==Exalted
|tip Use the Battle for Azeroth "World Quests" guides to complete "Champions of Azeroth" world quests.
|tip Complete Missions at your mission table that reward reputation with the Champions of Azeroth.
step
_Congratulations!_
You reached Exalted reputation with the "Champions of Azeroth" faction.
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Battle for Azeroth\\Order of Embers",{
author="support@zygorguides.com",
keywords={"Order","of","Embers"},
description="\nThis guide will walk you through becoming exalted with the \"Order of Embers\" faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Order of Embers') < Exalted end,
condition_end=function() return rep('Order of Embers') == Exalted end,
},[[
step
Unlock World Quests |complete completedq(52450) or completedq(51918)
|tip Use the following guides to accomplish this:
|tip Intro and Quest Zone Choice guide.
|tip Battle for Azeroth Leveling guides.
|tip War Campaign guide.
step
Reach Exalted Reputation with the Order of Embers |complete rep('Order of Embers')==Exalted
|tip Use the Battle for Azeroth "World Quests" guides to complete "Order of Embers" world quests.
|tip Complete Missions at your mission table that reward reputation with the Order of Embers.
step
_Congratulations!_
You reached Exalted reputation with the "Order of Embers" faction.
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Battle for Azeroth\\Proudmoore Admiralty",{
author="support@zygorguides.com",
keywords={"Proudmoore","Admiralty"},
description="\nThis guide will walk you through becoming exalted with the \"Proudmoore Admiralty\" faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Proudmoore Admiralty') < Exalted end,
condition_end=function() return rep('Proudmoore Admiralty') == Exalted end,
},[[
step
Unlock World Quests |complete completedq(52450) or completedq(51918)
|tip Use the following guides to accomplish this:
|tip Intro and Quest Zone Choice guide.
|tip Battle for Azeroth Leveling guides.
|tip War Campaign guide.
step
Reach Exalted Reputation with the Proudmoore Admiralty |complete rep('Proudmoore Admiralty')==Exalted
|tip Use the Battle for Azeroth "World Quests" guides to complete "Proudmoore Admiralty" world quests.
|tip Complete Missions at your mission table that reward reputation with the Proudmoore Admiralty.
step
_Congratulations!_
You reached Exalted reputation with the "Proudmoore Admiralty" faction.
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Battle for Azeroth\\Rustbolt Resistance",{
author="support@zygorguides.com",
keywords={"Rustbolt","Resistance","Mechagon"},
description="\nThis guide will walk you through becoming exalted with the \"Rustbolt Resistance\" faction.",
condition_suggested=function() return level == 50 and rep('Rustbolt Resistance') < Exalted end,
condition_end=function() return rep('Rustbolt Resistance') == Exalted end,
},[[
step
Complete the "A Tempered Blade" Quest |complete completedq(56156) |or
|tip Use the "Nazjatar" leveling guide to accomplish this.
Click Here to Open the "Nazjatar" Leveling Guide |loadguide "Leveling Guides\\Battle for Azeroth (10-50)\\Kul Tiras\\Nazjatar\\Nazjatar"
step
Reach Exalted Reputation with the Rustbolt Resistance |complete rep('Rustbolt Resistance') == Exalted
|tip Use the Battle for Azeroth "Mechagon Island World Quests" guides to complete "Rustbolt Resistance" world quests.
|tip Complete Missions at your mission table that reward reputation with the Rustbolt Resistance.
|tip Additionally, complete the "Mechagon Island" leveling guide.
|tip Rare spawns also award small amounts of reputation.
|tip Contract: Rustbolt Resistance from Inscription allows you to gain rep from all Kul Tiras and Zandalar world quests.
step
_Congratulations!_
You reached Exalted reputation with the "Rustbolt Resistance" faction.
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Battle for Azeroth\\Storm's Wake",{
author="support@zygorguides.com",
keywords={"Storm's","Wake"},
description="\nThis guide will walk you through becoming exalted with the \"Storm's Wake\" faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Storm\'s Wake') < Exalted end,
condition_end=function() return rep('Storm\'s Wake') == Exalted end,
},[[
step
Unlock World Quests |complete completedq(52450) or completedq(51918)
|tip Use the following guides to accomplish this:
|tip Intro and Quest Zone Choice guide.
|tip Battle for Azeroth Leveling guides.
|tip War Campaign guide.
step
Reach Exalted Reputation with the Storm's Wake |complete rep('Storm\'s Wake')==Exalted
|tip Use the Battle for Azeroth "World Quests" guides to complete "Storm's Wake" world quests.
|tip Complete Missions at your mission table that reward reputation with the Storm's Wake.
step
_Congratulations!_
You reached Exalted reputation with the "Storm's Wake" faction.
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Battle for Azeroth\\Tortollan Seekers",{
author="support@zygorguides.com",
keywords={"Tortollan","Seekers"},
description="\nThis guide will walk you through becoming exalted with the \"Tortollan Seekers\" faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Tortollan Seekers') < Exalted end,
condition_end=function() return rep('Tortollan Seekers') == Exalted end,
},[[
step
Unlock World Quests |complete completedq(52450) or completedq(51918)
|tip Use the following guides to accomplish this:
|tip Intro and Quest Zone Choice guide.
|tip Battle for Azeroth Leveling guides.
|tip War Campaign guide.
step
Reach Exalted Reputation with the Tortollan Seekers |complete rep('Tortollan Seekers')==Exalted
|tip Use the Battle for Azeroth "World Quests" guides to complete "Tortollan Seekers" world quests.
|tip Complete Missions at your mission table that reward reputation with the Tortollan Seekers.
step
_Congratulations!_
You reached Exalted reputation with the "Tortollan Seekers" faction.
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Battle for Azeroth\\Waveblade Ankoan",{
author="support@zygorguides.com",
keywords={"Waveblade","Ankoan","Nazjatar"},
description="\nThis guide will walk you through becoming exalted with the \"Waveblade Ankoan\" faction.",
condition_suggested=function() return level == 50 and rep('Waveblade Ankoan') < Exalted end,
condition_end=function() return rep('Waveblade Ankoan') == Exalted end,
},[[
step
Unlock World Quests |complete completedq(56156)
|tip Use the "Nazjatar" leveling guide to accomplish this.
step
Reach Exalted Reputation with the Waveblade Ankoan |complete rep('Waveblade Ankoan') == Exalted
|tip Use the Battle for Azeroth "Nazjatar World Quests" guides to complete "Waveblade Ankoan" world quests.
|tip Complete Missions at your mission table that reward reputation with the Waveblade Ankoan.
|tip Additionally, complete the "Nazjatar" leveling guide.
|tip Contract: Ankoan from Inscription allows you to gain rep from all Kul Tiras and Zandalar world quests.
step
_Congratulations!_
You reached Exalted reputation with the "Waveblade Ankoan" faction.
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Battle for Azeroth\\Honeyback Hive",{
author="support@zygorguides.com",
keywords={"Bee"},
description="\nThis guide will unlock the \"Honeyback Hive\" faction and assist you with reaching Exalted.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Honeyback Hive') < Exalted end,
condition_valid=function() return achieved(13062) end,
condition_valid_msg="You must first earn the \"Let's Bee Friends\" achievement!",
condition_end=function() return rep("Honeyback Hive") == Exalted and completedq(56108) end,
},[[
step
Earn the "Let's Bee Friends" Achievement |achieve 13062
|tip Use the "Let's Bee Friends" achievement guide to accomplish this.
|tip You must complete this to collect the "Bumbles" battle pet.
step
Summon the "Bumbles" or "Seabreeze Bumblebee" Battle Pet |complete activepet(2442) or activepet(2404) |goto Stormsong Valley/0 69.24,64.20 |q 56104 |future
|tip Use their respective battle pet guides to collect one.
step
Watch the dialogue
|tip Summon the "Bumbles" battle pet.
Summon the "Bumbles" Battle Pet Near Barry |q 55906 |goto 69.24,64.20 |future
step
Watch the dialogue
Wait for Barry to Confront the Honeyback Hivemother |q 55904 |goto 62.94,26.57 |future
|tip Do not go into the cave.
step
click Jelly Deposit##327516
collect 1 Thin Jelly##169106 |goto 63.20,28.47 |q 56104 |future
step
talk Honeyback Hivemother##153365
Choose _<Offer [Thin Jelly]>_
Make an Offering to the Honeyback Hivemother |q 56104 |goto 62.90,26.53 |future
step
talk Barry##153393
Ask him _"Uh, sure?"_
Watch the dialogue
Speak with Barry |q 56105 |goto 63.00,26.61 |future
step
Watch the dialogue
Follow Barry Into the Cave |q 57704 |goto 62.56,26.37 |future
step
talk Barry##153393
Ask him _"What was that all about?"_
Speak with Barry |q 56735 |goto 62.56,26.38 |future
step
talk Nascent Harvester##154023
Choose _<Offer [Thin Jelly]>_
Feed the Larva |q 57528 |goto 62.53,26.43 |future
step
label "Kill_Honey_Smasher_Revered"
kill Honey Smasher##154154
|tip It walks up and down the coast around this area.
|tip Loot the corpse before you leave.
Defeat the Honey Smasher |q 57726 |goto 61.41,16.20 |future |or
'|complete rep("Honeyback Hive") >= Revered |or
step
label "Reach_Revered_Reputation"
map Stormsong Valley/0
path follow smart; loop on; ants curved; dist 30
path	63.60,25.67	64.12,30.21	61.81,31.00	64.01,37.28	62.08,46.11
path	61.47,51.92	63.13,51.40	64.24,52.43	72.31,52.16	68.25,55.41
path	66.00,58.21	66.93,63.51	71.32,67.24	69.71,75.98	66.43,70.37
path	61.45,55.92	56.21,58.78	58.30,54.29	54.72,48.45	53.34,43.12
path	52.53,39.13	55.23,41.02	55.24,38.46	56.06,37.13	55.10,31.26
path	51.36,31.93	47.47,32.20	44.51,36.66	49.85,36.74	46.55,41.98
path	44.63,49.27	47.97,62.33	40.89,62.15	35.11,64.45	33.24,67.87
path	33.39,71.99	29.82,76.19	25.88,74.30	25.51,67.16	31.46,60.14
path	35.55,52.37	36.77,47.69	40.39,47.35	37.33,37.29	33.15,32.86
path	47.39,25.42	52.37,27.08	53.91,27.73	55.78,27.94	57.58,30.01
path	58.85,30.83	61.37,28.86	58.58,28.41	56.23,22.87	56.40,18.77
path	58.27,21.38	61.40,22.33	63.27,22.24
click Jelly Deposit##327516+
click Large Jelly Deposit##328429+
|tip They look like clusters of honeycomb on the ground all over Stormsong Valley.
|tip Exchange Jellies at the Honeyback Hivemother in the Honeyback Hatchery.
talk Honeyback Harvester##155069
|tip They will occasionally appear on your minimap as gold-colored stars.
|tip You will also see a patch of flowers illuminated by sunlight.
|tip This will spawn waves of enemies and sometimes a rare or elite.
|tip You will have 5 minutes to clear 15 waves.
|tip A large group with party buffs is beneficial.
Choose _<Makes some strange gestures.>_
Reach Revered Reputation with the Honeyback Hive |complete rep("Honeyback Hive") >= Revered |or
|tip Feed the Jellies you collect to your Honeyback Harvester in the Honeyback Hatchery.
'|complete not completedq(57726) and rep("Honeyback Hive") < Revered |or |next "Kill_Honey_Smasher_Revered"
'|goto 62.87,26.53 < 300 |c |noway |only if haveq(56473,56474,56092,56144,56475,56091) |or |next "Turnin_Honeyback_Harvester_Quests_Revered"
step
label "Turnin_Honeyback_Harvester_Quests_Revered"
talk Honeyback Hivemother##153365
|tip Inside the cave.
turnin Envenomed Spider Fang##56473 |goto 62.45,26.05 |only if haveq(56473)
turnin Hivekiller Stinger##56474 |goto 62.45,26.05 |only if haveq(56474)
turnin Hivethief's Jelly Stash##56092 |goto 62.45,26.05 |only if haveq(56092)
turnin Old Nasha's Paw##56144 |goto 62.45,26.05 |only if haveq(56144)
turnin Spiral Yeti Horn##56475 |goto 62.45,26.05 |only if haveq(56475)
turnin Usurper's Scent Gland##56091 |goto 62.45,26.05 |only if haveq(56091)
No Quest to Turn In |complete not haveq(56473,56474,56092,56144,56475,56091) and rep("Honeyback Hive") < Exalted |only if not haveq(56473,56474,56092,56144,56475,56091) and rep("Honeyback Hive") < Revered |next "Reach_Revered_Reputation" |or
'|complete rep("Honeyback Hive") >= Revered |or
step
map Stormsong Valley/0
path follow smart; loop on; ants curved; dist 30
path	63.60,25.67	64.12,30.21	61.81,31.00	64.01,37.28	62.08,46.11
path	61.47,51.92	63.13,51.40	64.24,52.43	72.31,52.16	68.25,55.41
path	66.00,58.21	66.93,63.51	71.32,67.24	69.71,75.98	66.43,70.37
path	61.45,55.92	56.21,58.78	58.30,54.29	54.72,48.45	53.34,43.12
path	52.53,39.13	55.23,41.02	55.24,38.46	56.06,37.13	55.10,31.26
path	51.36,31.93	47.47,32.20	44.51,36.66	49.85,36.74	46.55,41.98
path	44.63,49.27	47.97,62.33	40.89,62.15	35.11,64.45	33.24,67.87
path	33.39,71.99	29.82,76.19	25.88,74.30	25.51,67.16	31.46,60.14
path	35.55,52.37	36.77,47.69	40.39,47.35	37.33,37.29	33.15,32.86
path	47.39,25.42	52.37,27.08	53.91,27.73	55.78,27.94	57.58,30.01
path	58.85,30.83	61.37,28.86	58.58,28.41	56.23,22.87	56.40,18.77
path	58.27,21.38	61.40,22.33	63.27,22.24
click Jelly Deposit##327516+
click Large Jelly Deposit##328429+
|tip They look like clusters of honeycomb on the ground all over Stormsong Valley.
|tip Exchange Jellies at the Honeyback Hivemother in the Honeyback Hatchery.
talk Honeyback Harvester##155069
|tip They will occasionally appear on your minimap as gold-colored stars.
|tip You will also see a patch of flowers illuminated by sunlight.
|tip This will spawn waves of enemies and sometimes a rare or elite.
|tip You will have 5 minutes to clear 15 waves.
|tip A large group with party buffs is beneficial.
Choose _<Makes some strange gestures.>_
collect 20 Rich Jelly##168825 |or
|tip You need 20 Rich Jelly to purchase Beeholder's Goggles.
|tip These will allow you to see jelly deposits on the minimap.
'|complete rep("Honeyback Hive") == Exalted or itemcount(169109) >= 1 |or
step
talk Barry##153393
buy 1 Beeholder's Goggles##169109 |goto 62.77,26.87 |or
'|complete rep("Honeyback Hive") == Exalted or itemcount(169109) >= 1 |or
step
label "Gain_Beeholder's_Buff"
use the Beeholder's Goggles##169109
Gain the "Beeholder's Goggles" Buff |havebuff spell:299445 |or
'|complete rep("Honeyback Hive") == Exalted |or
step
label "Kill_Honey_Smasher_Exalted"
kill Honey Smasher##154154
|tip It walks up and down the coast around this area.
|tip Loot the corpse before you leave.
Defeat the Honey Smasher |q 57726 |goto 61.41,16.20 |future |or
'|complete rep("Honeyback Hive") == Exalted |or
step
label "Reach_Exalted_Reputation"
map Stormsong Valley/0
path follow smart; loop on; ants curved; dist 30
path	63.60,25.67	64.12,30.21	61.81,31.00	64.01,37.28	62.08,46.11
path	61.47,51.92	63.13,51.40	64.24,52.43	72.31,52.16	68.25,55.41
path	66.00,58.21	66.93,63.51	71.32,67.24	69.71,75.98	66.43,70.37
path	61.45,55.92	56.21,58.78	58.30,54.29	54.72,48.45	53.34,43.12
path	52.53,39.13	55.23,41.02	55.24,38.46	56.06,37.13	55.10,31.26
path	51.36,31.93	47.47,32.20	44.51,36.66	49.85,36.74	46.55,41.98
path	44.63,49.27	47.97,62.33	40.89,62.15	35.11,64.45	33.24,67.87
path	33.39,71.99	29.82,76.19	25.88,74.30	25.51,67.16	31.46,60.14
path	35.55,52.37	36.77,47.69	40.39,47.35	37.33,37.29	33.15,32.86
path	47.39,25.42	52.37,27.08	53.91,27.73	55.78,27.94	57.58,30.01
path	58.85,30.83	61.37,28.86	58.58,28.41	56.23,22.87	56.40,18.77
path	58.27,21.38	61.40,22.33	63.27,22.24
click Jelly Deposit##327516+
click Large Jelly Deposit##328429+
|tip They look like clusters of honeycomb on the ground all over Stormsong Valley.
|tip Exchange Jellies at the Honeyback Hivemother in the Honeyback Hatchery.
talk Honeyback Harvester##155069
|tip They will occasionally appear on your minimap as gold-colored stars.
|tip You will also see a patch of flowers illuminated by sunlight.
|tip This will spawn waves of enemies and sometimes a rare or elite.
|tip You will have 5 minutes to clear 15 waves.
|tip A large group with party buffs is beneficial.
Choose _<Makes some strange gestures.>_
Reach Exalted Reputation with the Honeyback Hive |complete rep("Honeyback Hive") == Exalted |or
|tip Feed the Jellies you collect to your Honeyback Harvester in the Honeyback Hatchery.
'|complete not completedq(57726) and rep("Honeyback Hive") < Exalted |or |next "Kill_Honey_Smasher_Exalted"
'|complete not hasbuff("spell:299445") and rep("Honeyback Hive") < Exalted |or |next "Gain_Beeholder's_Buff"
'|goto 62.87,26.53 < 300 |c |noway |only if haveq(56473,56474,56092,56144,56475,56091) |or |next "Turnin_Honeyback_Harvester_Quests_Exalted"
step
label "Turnin_Honeyback_Harvester_Quests_Exalted"
talk Honeyback Hivemother##153365
|tip Inside the cave.
turnin Envenomed Spider Fang##56473 |goto 62.45,26.05 |only if haveq(56473)
turnin Hivekiller Stinger##56474 |goto 62.45,26.05 |only if haveq(56474)
turnin Hivethief's Jelly Stash##56092 |goto 62.45,26.05 |only if haveq(56092)
turnin Old Nasha's Paw##56144 |goto 62.45,26.05 |only if haveq(56144)
turnin Spiral Yeti Horn##56475 |goto 62.45,26.05 |only if haveq(56475)
turnin Usurper's Scent Gland##56091 |goto 62.45,26.05 |only if haveq(56091)
No Quest to Turn In |complete not haveq(56473,56474,56092,56144,56475,56091) and rep("Honeyback Hive") < Exalted |only if not haveq(56473,56474,56092,56144,56475,56091) and rep("Honeyback Hive") < Exalted |next "Reach_Exalted_Reputation" |or
'|complete rep("Honeyback Hive") == Exalted |or
step
_Congratulations!_
You are Exalted with the Honeyback Hive Faction.
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Battle for Azeroth\\Honeyback Harvester",{
author="support@zygorguides.com",
keywords={"Bee"},
description="\nTo complete this guide, you will need to reach Exalted with the \"Honeyback Hive\" faction "..
"and farm Jelly to feed your Honeyback Harvester.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Honeyback Harvester') == Mature end,
condition_valid=function() return achieved(13062) end,
condition_valid_msg="You must first earn the \"Let's Bee Friends\" achievement!",
condition_end=function() return rep("Honeyback Harvester") == Mature end,
},[[
leechsteps "Reputations Guides\\Battle for Azeroth\\Honeyback Hive" 1-19
step
label "Gain_Beeholder's_Buff"
use the Beeholder's Goggles##169109
Gain the "Beeholder's Goggles" Buff |havebuff spell:299445 |or
'|complete rep("Honeyback Harvester") == Mature |or
step
label "Kill_Honey_Smasher"
kill Honey Smasher##154154
|tip It walks up and down the coast around this area.
|tip Loot the corpse before you leave.
Defeat the Honey Smasher |q 57726 |goto Stormsong Valley/0 61.41,16.20 |future |or
'|complete rep("Honeyback Harvester") == Mature |or
step
label "Reach_Mature_Reputation"
map Stormsong Valley/0
path follow smart; loop on; ants curved; dist 30
path	63.60,25.67	64.12,30.21	61.81,31.00	64.01,37.28	62.08,46.11
path	61.47,51.92	63.13,51.40	64.24,52.43	72.31,52.16	68.25,55.41
path	66.00,58.21	66.93,63.51	71.32,67.24	69.71,75.98	66.43,70.37
path	61.45,55.92	56.21,58.78	58.30,54.29	54.72,48.45	53.34,43.12
path	52.53,39.13	55.23,41.02	55.24,38.46	56.06,37.13	55.10,31.26
path	51.36,31.93	47.47,32.20	44.51,36.66	49.85,36.74	46.55,41.98
path	44.63,49.27	47.97,62.33	40.89,62.15	35.11,64.45	33.24,67.87
path	33.39,71.99	29.82,76.19	25.88,74.30	25.51,67.16	31.46,60.14
path	35.55,52.37	36.77,47.69	40.39,47.35	37.33,37.29	33.15,32.86
path	47.39,25.42	52.37,27.08	53.91,27.73	55.78,27.94	57.58,30.01
path	58.85,30.83	61.37,28.86	58.58,28.41	56.23,22.87	56.40,18.77
path	58.27,21.38	61.40,22.33	63.27,22.24
click Jelly Deposit##327516+
click Large Jelly Deposit##328429+
|tip They look like clusters of honeycomb on the ground all over Stormsong Valley.
|tip Exchange Jellies at the Honeyback Hivemother in the Honeyback Hatchery.
talk Honeyback Harvester##155069
|tip They will occasionally appear on your minimap as gold-colored stars.
|tip You will also see a patch of flowers illuminated by sunlight.
|tip This will spawn waves of enemies and sometimes a rare or elite.
|tip You will have 5 minutes to clear 15 waves.
|tip A large group with party buffs is beneficial.
Choose _<Makes some strange gestures.>_
Reach Mature Reputation with the Honeyback Harvester |complete rep("Honeyback Harvester") == Mature |or
|tip Feed the Jellies you collect to your Honeyback Harvester in the Honeyback Hatchery.
'|complete not completedq(57726) and rep("Honeyback Harvester") < Mature |or |next "Kill_Honey_Smasher"
'|complete not hasbuff("spell:299445") and rep("Honeyback Harvester") < Mature |or |next "Gain_Beeholder's_Buff"
'|goto 62.87,26.53 < 300 |c |noway |only if haveq(56473,56474,56092,56144,56475,56091) |or |next "Turnin_Honeyback_Harvester_Quests"
step
label "Turnin_Honeyback_Harvester_Quests"
talk Honeyback Hivemother##153365
|tip Inside the cave.
turnin Envenomed Spider Fang##56473 |goto 62.45,26.05 |only if haveq(56473)
turnin Hivekiller Stinger##56474 |goto 62.45,26.05 |only if haveq(56474)
turnin Hivethief's Jelly Stash##56092 |goto 62.45,26.05 |only if haveq(56092)
turnin Old Nasha's Paw##56144 |goto 62.45,26.05 |only if haveq(56144)
turnin Spiral Yeti Horn##56475 |goto 62.45,26.05 |only if haveq(56475)
turnin Usurper's Scent Gland##56091 |goto 62.45,26.05 |only if haveq(56091)
No Quest to Turn In |complete not haveq(56473,56474,56092,56144,56475,56091) and rep("Honeyback Hive") < Exalted |only if not haveq(56473,56474,56092,56144,56475,56091) and rep("Honeyback Harvester") < Mature |next "Reach_Mature_Reputation" |or
'|complete rep("Honeyback Harvester") == Mature |or
step
Reach Exalted Reputation with the Honeyback Hive |complete rep("Honeyback Hive") == Exalted
|tip Use the "Honeyback Hive" reputation guide to accomplish this.
step
talk Honeyback Harvester##155745
|tip Inside the cave.
accept Leaving the Hive##56108 |goto 62.56,26.39
step
talk Barry##153393
Tell him _"One of the bees is acting strangely."_
Speak to Barry |q 56108/1 |goto 62.77,26.87 |future
step
talk Honeyback Harvester##155742
turnin Leaving the Hive##56108 |goto 62.85,26.49
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Battle for Azeroth\\Rajani",{
author="support@zygorguides.com",
description="This guide will walk you through becoming exalted with the \"Rajani\" faction.",
keywords={"8.3","N'zoth","Nzoth","Corruption"},
condition_suggested=function() return level == 50 and rep('Rajani') < Exalted end,
condition_end=function() return rep('Rajani') == Exalted end,
},[[
step
Complete the Quest "A Nation Divided" |complete completedq(47189)
|tip Use the "Intro & Quest Zone Choice" leveling guide to accomplish this.
step
Complete the Quest "Uniting Kul Tiras" |complete completedq(51918,52450)
|tip Use the "War Campaign" leveling guide to accomplish this.
step
Complete the Quest "Harnessing the Power" |complete completedq(57010)
|tip Use the "Nazjatar" leveling guide to accomplish this.
step
accept An Unwelcome Advisor##58496 |goto Boralus/0 71.30,18.13
|tip You will accept this quest automatically.
step
talk Anduin Wrynn##107574
|tip Inside Stormwind Keep.
Tell him _"I'm here to help."_
Speak with Anduin Wrynn |q 58496/1 |goto Stormwind City/0 85.91,31.57
step
talk Anduin Wrynn##107574
|tip Inside Stormwind Keep.
turnin An Unwelcome Advisor##58496 |goto 85.91,31.57
step
talk Magni Bronzebeard##154532
|tip Inside Stormwind Keep.
accept Return of the Warrior King##58498 |goto 85.24,32.48
step
Watch the dialogue
Walk with Magni |q  58498/1 |goto 87.67,35.04
step
click Fearbreaker##161485
|tip Inside Stormwind Keep.
collect Fearbreaker##175151 |q 58498/2 |goto 87.67,35.04
step
talk Magni Bronzebeard##154532
|tip Inside Stormwind Keep.
turnin Return of the Warrior King##58498 |goto 87.45,35.49
accept Where the Heart Is##58502 |goto 87.45,35.49
step
talk Magni Bronzebeard##152206
turnin Where the Heart Is##58502 |goto Chamber of Heart/0 50.13,59.21
accept Network Diagnostics##58506 |goto 50.13,59.21
step
Watch the dialogue
click Diagnostic Console: Uldir
Activate Diagnostic Console: Uldir |q 58506/1 |goto 52.35,61.96
step
click Diagnostic Console: Uldaman
Activate Diagnostic Console: Uldaman |q 58506/2 |goto 52.42,67.34
step
click Diagnostic Console: Ulduar
Activate Diagnostic Console: Ulduar |q 58506/3 |goto 48.12,67.38
step
click Diagnostic Console: Uldum
Activate Diagnostic Console: Uldum |q 58506/4 |goto 48.07,62.07
step
talk Magni Bronzebeard##152206
turnin Network Diagnostics##58506 |goto 50.13,59.21
accept A Titanic Problem##56374 |goto 50.13,59.21
step
Enter the building |goto Uldum New/0 71.67,52.19 < 20 |walk
talk Magni Bronzebeard##154532
|tip Inside the building.
turnin A Titanic Problem##56374 |goto 69.85,52.18
accept The Halls of Origination##56209 |goto 69.85,52.18
step
Enter the Halls of Origination |scenariostart |goto 69.10,53.15 |q 56209
step
Run up the stairs |goto Halls of Origination S/0 48.28,81.19 < 20 |only if walking
Run up the ramp |goto 50.15,70.56 < 20 |only if walking
Reach the Inner Chambers |scenariogoal 1/45294 |goto 52.61,63.03 |q 56209
step
Run down the stairs |goto 54.50,59.81 < 10 |walk
click Forge Defense Console
Deactivate Forge Defense Consoles |scenariogoal 2/45363 |goto 57.92,59.41 |count 1 |q 56209
step
click Forge Defense Console
Deactivate Forge Defense Consoles |scenariogoal 2/45363 |goto 58.53,59.41 |count 2 |q 56209
step
Follow the path |goto 55.78,62.96 < 20 |only if walking
click Forge Defense Console
Deactivate Forge Defense Consoles |scenariogoal 2/45363 |goto 57.91,66.67 |count 3 |q 56209
step
click Forge Defense Console
Deactivate Forge Defense Consoles |scenariogoal 2/45363 |goto 58.53,66.66 |count 4 |q 56209
step
Run up the stairs |goto 55.37,66.12 < 10 |only if walking
Cross the bridge |goto 53.90,63.04 < 10 |only if walking
Follow the path |goto 66.02,63.11 < 20 |only if walking
Reach the Lift |scenariogoal 3/45337 |goto 67.47,53.34 |q 56209
step
kill Watcher Aum-ka##154619
Watch the dialogue
Activate the Lift |scenariogoal 4/45338 |goto 67.49,49.78 |q 56209
step
Run up the stairs |goto 62.95,49.78 < 20 |only if walking
Run down the stairs |goto 56.14,45.79 < 20 |only if walking
Run up the stairs |goto 54.49,32.56 < 30
Locate the Power Console |scenariogoal 5/46662 |goto 48.27,32.53 |q 56209
step
click Power Console##154642+
|tip Clicking a console beneath a pillar that a light beam is touching will change its direction.
|tip Click the northeast console twice.
|tip Click the northwest console twice.
|tip Click the west console three times.
|tip Click the east console once.
|tip Click the southeast console once.
|tip Click the far southeast console once.
|tip Direct the light beams down both sides of the room.
Reroute Power to Lifts |scenariogoal 6/45339 |goto 57.35,19.74 |q 56209
step
kill Sun Prophet Tenhamen##154727 |scenariogoal 7/45340 |goto 56.13,22.21 |q 56209
step
Watch the dialogue
Run up the stairs |goto 56.14,43.72 < 20 |only if walking
click Lift Controls |goto 66.52,48.39
Choose _<Take the lift to the third floor>_
|tip Make sure you are standing on the platform before choosing.
|tip It will take a moment to reach the third floor.
Reach the Third Floor |goto Halls of Origination S/2 47.22,49.57 < 200 |c |noway |q 56209
step
Watch the dialogue
click Power Terminal |goto 45.14,43.04
|tip The one on the left.
click Power Terminal |goto 49.17,43.06
|tip The one on the right.
Watch the dialogue
click Main Console
Reactivate the Forge of Origination |scenariogoal 8/45364 |goto 47.11,44.19 |q 56209
step
_Next to you:_
talk Magni Bronzebeard##154533
turnin The Halls of Origination##56209
accept To Ramkahen##56375
step
Watch the dialogue
Jump on the Teleporter |goto 47.18,53.20
Return to the First Floor |goto Halls of Origination S/0 48.24,83.31 < 100 |c |noway |q 56375
step
Enter the portal |goto 50.95,93.73
Leave the Halls of Origination |goto Uldum New/0 71.05,52.18 < 200 |c |noway |q 56375
step
talk King Phaoris##155095
|tip Inside the building.
turnin To Ramkahen##56375 |goto 54.91,32.76
accept The Uldum Accord##56472 |goto 54.91,32.76
step
click Sands of Shifting Visions
|tip Inside the building.
Examine the Sands of Shifting Visions |q 56472/1 |goto 54.90,32.96
step
talk King Phaoris##155095
|tip Inside the building.
Tell him _"I will join you."_
Watch the dialogue
Establish Relations with the Uldum Accord |q 56472/2 |goto 54.91,32.75
step
talk King Phaoris##155095
|tip Inside the building.
turnin The Uldum Accord##56472 |goto 54.91,32.76
accept Surfacing Threats##56376 |goto 54.91,32.76
step
talk High Commander Kamses##155096
|tip Inside the building.
Tell him _"Show me the current assault."_
Speak to High Commander Kamses |q 56376/1 |goto 54.83,32.97
step
Repel the Current Assault |q 56376/2
|tip Use the "Uldum Assaults" guide to accomplish this.
step
use the Cache of the Black Empire##173372 |only if itemcount(173372) >= 1
use the Cache of the Aqir Swarm##174960 |only if itemcount(174960) >= 1
use the Cache of the Amathet##174961 |only if itemcount(174961) >= 1
accept Curious Corruption##58991
|tip You will accept this quest automatically.
step
talk King Phaoris##155095
|tip Inside the building.
turnin Surfacing Threats##56376 |goto 54.91,32.76
accept Forging Onward##56377 |goto 54.91,32.76
step
talk Wrathion##155496
Ask him _"Can you tell me anything about this corrupted item?"_
Ask Wrathion About the Corrupt Item |q 58991/1 |goto Chamber of Heart/0 46.12,64.07
step
talk MOTHER##152194
|tip She walks between the forge and her usual spot.
Tell her _"Tell me about the Titanic Purification process."_
Speak with MOTHER to Learn About Corruption |q 58991/2 |goto 48.18,72.39
step
talk MOTHER##152194
turnin Curious Corruption##58991 |goto 48.18,72.39
step
Watch the dialogue
Hear Magni's Plan |q 56377/1 |goto 50.13,59.15
step
talk Magni Bronzebeard##152206
turnin Forging Onward##56377 |goto 50.13,59.15
accept It's Never Easy##56536 |goto 50.13,59.15
step
Watch the dialogue
Meet with Magni |q 56536/1 |goto Kun-Lai Summit/0 59.62,39.19
step
talk Mogu Warrior##155336
Tell it _"Lead the way."_
Speak to the Mogu Warrior |q 56536/2 |goto 59.62,39.19
step
Kill enemies that attack around this area
Watch the dialogue
Defeat the Mantid Ambush |q 56536/3 |goto 59.69,39.11
step
talk Magni Bronzebeard##154532
turnin It's Never Easy##56536 |goto 59.81,39.06
step
talk Mogu Warrior##155336
accept The Mysterious Sigil##56537 |goto 59.61,39.19
step
Enter the building |goto Vale of Eternal Blossoms New/0 81.92,29.44 < 10 |walk
|tip High up on the balcony.
talk Lorewalker Cho##156003
|tip Inside the building.
turnin The Mysterious Sigil##56537 |goto 83.80,27.16
accept Clans of the Mogu##56538 |goto 83.80,27.16
step
click The Serpent Masters
|tip Inside the building.
Read the Serpent Masters |q 56538/1 |goto 83.73,27.96
step
click Power Through Blood
|tip Inside the building.
Read Power Through Blood |q 56538/2 |goto 83.10,26.96
step
click Will of Stone
|tip Inside the building.
Read the Will of Stone |q 56538/3 |goto 83.27,28.43
step
click Origins of the Mogu
|tip Inside the building.
Read the Origins of the Mogu |q 56538/4 |goto 84.26,29.16
step
talk Lorewalker Cho##156003
|tip Inside the building.
turnin Clans of the Mogu##56538 |goto 83.80,27.17
accept Finding the Rajani##56539 |goto 83.80,27.17
step
Kill Zan-Tien enemies around this area
collect Mogu Scouting Report##170384 |q 56539/1 |goto 46.99,19.91
step
Enter the building |goto Vale of Eternal Blossoms New/0 81.92,29.44 < 10 |walk
|tip High up on the balcony.
talk Lorewalker Cho##156003
|tip Inside the building.
turnin Finding the Rajani##56539 |goto 83.80,27.17
step
talk Magni Bronzebeard##154532
|tip Inside the building.
accept Time-Lost Warriors##56771 |goto 83.10,27.31
step
talk Ryuxi##154805
fpath Mistfall Village |goto 38.90,72.74
step
Find the Rajani |q 56771/1 |goto 39.83,75.32
step
talk Stormspeaker Qian##154444
Tell him _<Show Stormspeaker Tian the sigil>_
Walk with Stormspeaker Tian |q 56771/2 |goto 39.83,75.32
step
talk Ra-den##154418
|tip Inside the building.
Tell him _"I need the Engine of Nalak'sha to safeguard Azeroth from N'Zoth's corruption."_
Speak with Ra-Den |q 56771/3 |goto 45.31,74.34
step
talk Stormspeaker Qian##154444
|tip Inside the building.
turnin Time-Lost Warriors##56771 |goto 44.72,73.91
accept Proof of Tenacity##56540 |goto 44.72,73.91
step
collect Conqueror's Trophy##170385 |q 56540/1
|tip Complete the current Vale of Eternal Blossoms assault quest.
step
Enter the building |goto 40.23,75.25 < 15 |walk
talk Ra-den##154418
|tip Inside the building.
turnin Proof of Tenacity##56540 |goto 45.31,74.34
accept The Engine of Nalak'sha##56541 |goto 45.31,74.34
step
Enter the Mogu'Shan Palace |scenariostart |goto 81.72,29.74 |q 56541
step
Follow the path |goto Mogu Palace New/1 40.33,26.13 < 20 |only if walking
|tip Avoid any spear tiles on the ground when possible.
kill Animated Guardian##155797+
|tip The statues will animate and attack you.
|tip Defeat each group of four to open the doors.
Find a Way to the Lower Levels |scenariogoal 1/45931 |goto 40.29,54.20 |q 56541
step
Follow the path |goto 40.31,67.41 < 2 |only if walking
|tip Up three tiles to white.
Continue following the path |goto 41.33,69.01 < 2 |only if walking
|tip Diagonal two tiles to white.
Continue following the path |goto 41.33,69.79 < 2 |only if walking
|tip Up one to red.
Continue following the path |goto 41.84,70.55 < 2 |only if walking
|tip Diagonal one to yellow.
Continue following the path |goto 40.83,72.10 < 2 |only if walking
|tip Diagonal two to white.
Continue following the path |goto 40.30,72.11 < 2 |only if walking
|tip Over to red.
click Ancient Lever
Activate the Ancient Lever |scenariogoal 2/45932 |goto 40.30,70.72 |q 56541
step
Run down the stairs |goto 50.32,69.93 < 7 |only if walking
Continue down the stairs |goto Mogu Palace New/0 55.04,18.87 < 10 |walk
Continue down the stairs |goto 37.45,18.85 < 10 |walk
Continue down the stairs |goto 28.67,32.94 < 10 |walk
clicknpc Mogue Statue##155525
|tip It will move in the direction you are facing.
|tip Move it to the empty stone pad to hold the door open.
Find a Way to Open the Door |scenariogoal 3/45933 |goto 26.64,46.45 |q 56541
step
Follow the path |goto 15.26,44.30 < 2 |walk
Enter The Repository |goto Mogu Vaults New/1 52.96,54.45 < 200 |c |noway |q 56541
step
kill Depthcaller Xith'el##155684
Reach the Mogu'shan Vaults |scenariogoal 4/45934 |goto 36.28,52.02 |q 56541
step
click Summoned Tentacle
Destroy the Manifestations of N'Zoth |scenariogoal 5/0 |goto 41.87,72.68 |count 10 |q 56541
step
click Summoned Maw
Destroy the Manifestations of N'Zoth |scenariogoal 5/0 |goto 38.11,64.96 |count 43 |q 56541
step
click Summoned Tentacle
Destroy the Manifestations of N'Zoth |scenariogoal 5/0 |goto 32.54,62.04 |count 53 |q 56541
step
click Summoned Eye
Destroy the Manifestations of N'Zoth |scenariogoal 5/0 |goto 24.98,60.57 |count 58 |q 56541
step
click Summoned Eye
Destroy the Manifestations of N'Zoth |scenariogoal 5/0 |goto 25.95,58.36 |count 63 |q 56541
step
click Summoned Eye
Destroy the Manifestations of N'Zoth |scenariogoal 5/0 |goto 42.44,39.58 |count 68 |q 56541
step
click Summoned Eye
Destroy the Manifestations of N'Zoth |scenariogoal 5/0 |goto 41.69,38.99 |count 73 |q 56541
step
click Summoned Tentacle
Destroy the Manifestations of N'Zoth |scenariogoal 5/0 |goto 38.00,34.38 |count 83 |q 56541
step
Run up the stairs |goto 33.69,40.66 < 10 |walk
click Summoned Eye
Destroy the Manifestations of N'Zoth |scenariogoal 5/0 |goto 29.90,26.79 |count 88 |q 56541
step
Run down the stairs |goto 33.72,31.57 < 10 |walk
click Summoned Tentacle
Destroy the Manifestations of N'Zoth |scenariogoal 5/0 |goto 30.27,43.67 |count 98 |q 56541
step
click Summoned Eye
Destroy the Manifestations of N'Zoth |scenariogoal 5/0 |goto 26.64,46.43 |q 56541
step
Watch the dialogue
Run down the stairs |goto Mogu Vaults New/1 27.32,51.86 < 10 |walk
Continue down the stairs |goto Mogu Vaults New/0 61.02,13.94 < 10 |walk
Follow the path |goto 68.52,23.68 < 10 |walk
Cross the bridge |goto 66.37,41.36 < 15 |walk
Follow the path |goto 48.78,50.46 < 10 |walk
kill Swarmguard Kzaz##155723
Reach the Engine of Nalak'sha |scenariogoal 6/45936 |goto 34.03,51.37 |q 56541
step
kill Yox'ith##155706 |scenariogoal 7/45937 |goto 26.76,51.42 |q 56541
|tip Killing Tentacles will also deal damage to Yox'ith.
step
Watch the dialogue
click Titan Console
Link the Engine of Nalak'sha to the Chamber of Heart |scenariogoal 8/45938 |goto 27.02,51.38 |q 56541
step
Step onto the teleporter |goto 14.46,51.42
Return to The Gilden Foyer |goto Mogu Palace New/1 45.14,17.60 < 200 |noway |c |q 56541
step
Follow the path |goto 27.23,20.34 < 10 |walk
Leave The Gilden Foyer |goto Vale of Eternal Blossoms New/0 80.92,30.83 < 200 |c |noway |q 56541
step
Enter the building |goto 40.23,75.25 < 15 |walk
talk Ra-den##154418
|tip Inside the building.
turnin The Engine of Nalak'sha##56541 |goto 45.31,74.34
accept Restored Hope##56542 |goto 45.31,74.34
step
talk Ra-den##154418
|tip Inside the building.
Tell him _"Take us to the Chamber of Heart."_
Watch the dialogue
Return to the Chamber of Heart |q 56542/1 |goto 45.31,74.34
step
Watch the dialogue
talk Magni Bronzebeard##152206
turnin Restored Hope##56542 |goto Chamber of Heart/0 50.12,59.22
accept Magni's Findings##58737 |goto 50.12,59.22
step
talk Magni Bronzebeard##152206
Tell him _"Show me what you've discovered."_
Watch the dialogue
Learn About Magni's Findings |q 58737/1 |goto 50.12,59.22
step
talk Magni Bronzebeard##152206
turnin Magni's Findings##58737 |goto 50.12,59.22
step
Enter the building |goto Vale of Eternal Blossoms New/0 40.24,75.24 < 20 |walk
talk Stormspeaker Qian##154444
|tip Inside the building.
accept Mogu at the Gates##57067 |goto 44.72,73.91
|tip You may have to wait for the Mogu assault to accept this.
step
talk Chen Stormstout##156297
turnin Mogu at the Gates##57067 |goto Kun-Lai Summit/0 55.47,91.12
accept Kite Surveillance##57068 |goto 55.47,91.12
step
Watch the dialogue
clicknpc Chen's Kite##156354
Mount Chen's Kite |q 57068/1 |goto 55.70,91.25
step
Watch the dialogue
Survey the Mogu Armies |q 57068/2
step
talk Li Li Stormstout##156391
turnin Kite Surveillance##57068 |goto 60.04,75.64
accept Cut Off the Heads##57069 |goto 60.04,75.64
accept Mogu Massacre##57070 |goto 60.04,75.64
step
talk Chen Stormstout##156390
accept No Brew Left Behind##57071 |goto 59.97,75.58
stickystart "Slay_Mogue_in_Kun-Lai_Summit"
step
kill Ti-Qiang the Bulwark##156418 |q 57069/1 |goto 56.99,76.19
step
kill Rui of the Sharpened Blade##156419 |q 57069/2 |goto 53.98,83.57
step
clicknpc Abandoned Stormstout Kegs##157180
turnin No Brew Left Behind##57071 |goto 58.52,84.00
accept Yak of All Trades##57072 |goto 58.52,84.00
step
kill Pai the Lifedrainer##156421 |q 57069/4 |goto 59.98,87.93
step
clicknpc Mobi##157181
Rescue Mobi from Chow Farmstead |q 57072/1 |goto 60.08,87.93
step
clicknpc Abandoned Wanderbrew Kegs##156592
Collect the Wanderbrew |q 57072/3 |goto 58.80,84.35
step
clicknpc Abandoned Goldendraft Kegs##156593
Collect the Goldendraft |q 57072/4 |goto 58.23,84.18
step
clicknpc Abandoned Stormstout Kegs##156555
Collect the Stormstout Brew |q 57072/2 |goto 58.52,83.99
step
kill Huo the Lightning-Fist##156420 |q 57069/3 |goto 62.38,80.03
step
label "Slay_Mogue_in_Kun-Lai_Summit"
Kill enemies around this area
Slay Mogu in Kun-Lai Summit |q 57070/1 |goto 59.42,79.08
step
talk Li Li Stormstout##156391
turnin Cut Off the Heads##57069 |goto 60.04,75.64
turnin Mogu Massacre##57070 |goto 60.04,75.64
step
talk Chen Stormstout##156390
turnin Yak of All Trades##57072 |goto 59.97,75.58
accept Our Backs to the Gate##57074 |goto 59.97,75.58
step
talk Chen Stormstout##156390
Tell him _"I'm ready to ride."_
Speak to Chen to ride Mobi |q 57074/1 |goto 59.97,75.58
step
Watch the dialogue
Ride Mobi to the Gate of the August Celestials |q 57074/2
step
talk Li Li Stormstout##156938
turnin Our Backs to the Gate##57074 |goto 55.54,91.11
accept Liquid Courage##57075 |goto 55.54,91.11
step
clicknpc Mobi##156839
Mount Mobi |q 57075/1 |goto 55.66,91.14
step
Kill Dokani enemies around this area
|tip Use the abilities on your action bar to accomplish this.
Defeat #80# Mogu Soldiers |q 57075/2 |goto 53.54,88.14
step
Dismount Mobi |outvehicle |q 57075 |future
|tip Click the "Leave Vehicle" button on your action bar.
|tip Do this in a safe place.
step
talk Chen Stormstout##156937
turnin Liquid Courage##57075 |goto 55.47,91.11
accept Return to Mistfall##57076 |goto 55.47,91.11
step
Enter the building |goto Vale of Eternal Blossoms New/0 40.24,75.24 < 20 |walk
talk Stormspeaker Qian##154444
|tip Inside the building.
turnin Return to Mistfall##57076 |goto 44.72,73.91
step
Reach Exalted Reputation with the Rajani |complete rep('Rajani') == Exalted
|tip Use the Battle for Azeroth "World Quests" guides to complete world quests in Vale of Eternal Blossoms.
|tip Complete Missions at your mission table that reward reputation with the Rajani.
step
_Congratulations!_
You Reached Exalted Reputation with the "Rajani" Faction.
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Battle for Azeroth\\Uldum Accord",{
author="support@zygorguides.com",
description="This guide will walk you through becoming exalted with the \"Uldum Accord\" faction.",
keywords={"8.3","N'zoth","Nzoth","Corruption"},
condition_suggested=function() return level == 50 and rep('Uldum Accord') < Exalted end,
condition_end=function() return rep('Uldum Accord') == Exalted end,
},[[
step
Complete the Quest "A Nation Divided" |complete completedq(47189)
|tip Use the "Intro & Quest Zone Choice" leveling guide to accomplish this.
step
Complete the Quest "Uniting Kul Tiras" |complete completedq(51918,52450)
|tip Use the "War Campaign" leveling guide to accomplish this.
step
Complete the Quest "Harnessing the Power" |complete completedq(57010)
|tip Use the "Nazjatar" leveling guide to accomplish this.
step
accept An Unwelcome Advisor##58496 |goto Boralus/0 71.30,18.13
|tip You will accept this quest automatically.
step
talk Anduin Wrynn##107574
|tip Inside Stormwind Keep.
Tell him _"I'm here to help."_
Speak with Anduin Wrynn |q 58496/1 |goto Stormwind City/0 85.91,31.57
step
talk Anduin Wrynn##107574
|tip Inside Stormwind Keep.
turnin An Unwelcome Advisor##58496 |goto 85.91,31.57
step
talk Magni Bronzebeard##154532
|tip Inside Stormwind Keep.
accept Return of the Warrior King##58498 |goto 85.24,32.48
step
Watch the dialogue
Walk with Magni |q  58498/1 |goto 87.67,35.04
step
click Fearbreaker##161485
|tip Inside Stormwind Keep.
collect Fearbreaker##175151 |q 58498/2 |goto 87.67,35.04
step
talk Magni Bronzebeard##154532
|tip Inside Stormwind Keep.
turnin Return of the Warrior King##58498 |goto 87.45,35.49
accept Where the Heart Is##58502 |goto 87.45,35.49
step
talk Magni Bronzebeard##152206
turnin Where the Heart Is##58502 |goto Chamber of Heart/0 50.13,59.21
accept Network Diagnostics##58506 |goto 50.13,59.21
step
Watch the dialogue
click Diagnostic Console: Uldir
Activate Diagnostic Console: Uldir |q 58506/1 |goto 52.35,61.96
step
click Diagnostic Console: Uldaman
Activate Diagnostic Console: Uldaman |q 58506/2 |goto 52.42,67.34
step
click Diagnostic Console: Ulduar
Activate Diagnostic Console: Ulduar |q 58506/3 |goto 48.12,67.38
step
click Diagnostic Console: Uldum
Activate Diagnostic Console: Uldum |q 58506/4 |goto 48.07,62.07
step
talk Magni Bronzebeard##152206
turnin Network Diagnostics##58506 |goto 50.13,59.21
accept A Titanic Problem##56374 |goto 50.13,59.21
step
Enter the building |goto Uldum New/0 71.67,52.19 < 20 |walk
talk Magni Bronzebeard##154532
|tip Inside the building.
turnin A Titanic Problem##56374 |goto 69.85,52.18
accept The Halls of Origination##56209 |goto 69.85,52.18
step
Enter the Halls of Origination |scenariostart |goto 69.10,53.15 |q 56209
step
Run up the stairs |goto Halls of Origination S/0 48.28,81.19 < 20 |only if walking
Run up the ramp |goto 50.15,70.56 < 20 |only if walking
Reach the Inner Chambers |scenariogoal 1/45294 |goto 52.61,63.03 |q 56209
step
Run down the stairs |goto 54.50,59.81 < 10 |walk
click Forge Defense Console
Deactivate Forge Defense Consoles |scenariogoal 2/45363 |goto 57.92,59.41 |count 1 |q 56209
step
click Forge Defense Console
Deactivate Forge Defense Consoles |scenariogoal 2/45363 |goto 58.53,59.41 |count 2 |q 56209
step
Follow the path |goto 55.78,62.96 < 20 |only if walking
click Forge Defense Console
Deactivate Forge Defense Consoles |scenariogoal 2/45363 |goto 57.91,66.67 |count 3 |q 56209
step
click Forge Defense Console
Deactivate Forge Defense Consoles |scenariogoal 2/45363 |goto 58.53,66.66 |count 4 |q 56209
step
Run up the stairs |goto 55.37,66.12 < 10 |only if walking
Cross the bridge |goto 53.90,63.04 < 10 |only if walking
Follow the path |goto 66.02,63.11 < 20 |only if walking
Reach the Lift |scenariogoal 3/45337 |goto 67.47,53.34 |q 56209
step
kill Watcher Aum-ka##154619
Watch the dialogue
Activate the Lift |scenariogoal 4/45338 |goto 67.49,49.78 |q 56209
step
Run up the stairs |goto 62.95,49.78 < 20 |only if walking
Run down the stairs |goto 56.14,45.79 < 20 |only if walking
Run up the stairs |goto 54.49,32.56 < 30
Locate the Power Console |scenariogoal 5/46662 |goto 48.27,32.53 |q 56209
step
click Power Console##154642+
|tip Clicking a console beneath a pillar that a light beam is touching will change its direction.
|tip The far north beam needs to come back on the west side of the room.
|tip The beam south of the northern beam needs to come back on the east side of the room.
Reroute Power to Lifts |scenariogoal 6/45339 |goto 57.35,19.74 |q 56209
step
kill Sun Prophet Tenhamen##154727 |scenariogoal 7/45340 |goto 56.13,22.21 |q 56209
step
Watch the dialogue
Run up the stairs |goto 56.14,43.72 < 20 |only if walking
click Lift Controls |goto 66.52,48.39
Choose _<Take the lift to the third floor>_
|tip It will take a moment to reach the third floor.
Reach the Third Floor |goto Halls of Origination S/2 47.22,49.57 < 200 |c |noway |q 56209
step
Watch the dialogue
click Power Terminal |goto 45.14,43.04
|tip The one on the left.
click Power Terminal |goto 49.17,43.06
|tip The one on the right.
Watch the dialogue
click Main Console
Reactivate the Forge of Origination |scenariogoal 8/45364 |goto 47.11,44.19 |q 56209
step
_Next to you:_
talk Magni Bronzebeard##154533
turnin The Halls of Origination##56209
accept To Ramkahen##56375
step
Jump on the Teleporter |goto 47.18,53.20
Return to the First Floor |goto Halls of Origination S/0 48.24,83.31 < 100 |c |noway |q 56375
step
Enter the portal |goto 50.95,93.73
Leave the Halls of Origination |goto Uldum New/0 71.05,52.18 < 200 |c |noway |q 56375
step
talk King Phaoris##155095
|tip Inside the building.
turnin To Ramkahen##56375 |goto 54.91,32.76
accept The Uldum Accord##56472 |goto 54.91,32.76
step
click Sands of Shifting Visions
|tip Inside the building.
Examine the Sands of Shifting Visions |q 56472/1 |goto 54.90,32.96
step
talk King Phaoris##155095
|tip Inside the building.
Tell him _"I will join you."_
Watch the dialogue
Establish Relations with the Uldum Accord |q 56472/2 |goto 54.91,32.75
step
talk King Phaoris##155095
|tip Inside the building.
turnin The Uldum Accord##56472 |goto 54.91,32.76
accept Surfacing Threats##56376 |goto 54.91,32.76
step
talk High Commander Kamses##155096
|tip Inside the building.
Tell him _"Show me the current assault."_
Speak to High Commander Kamses |q 56376/1 |goto 54.83,32.97
step
Repel the Current Assault |q 56376/2
|tip Use the "Uldum Assaults" guide to accomplish this.
step
talk King Phaoris##155095
|tip Inside the building.
turnin Surfacing Threats##56376 |goto 54.91,32.76
step
talk High Explorer Dellorah##155102
|tip Inside the building.
accept Eyes on the Amathet##58636 |goto 54.96,32.96
|tip You may have to wait for the Amathet assault to accept this.
step
Scout the Obelisk of the Stars |q 58636/1 |goto 63.94,29.73
step
Scout the Tombs of the Precursors |q 58636/2 |goto 74.40,44.11
step
Scout the Halls of Origination |q 58636/4 |goto 73.92,51.32
step
Scout the Cursed Landing |q 58636/3 |goto 83.39,51.80
step
_Next to you:_
talk High Explorer Dellorah##161938
turnin Eyes on the Amathet##58636
accept A Deeper Dive##58638
step
talk High Explorer Dellorah##161938
Tell her _"I'm ready."_
Kill enemies that attack in waves
Defend High Explorer Dellorah |q 58638/1 |goto 69.10,57.97
step
_Next to you:_
talk High Explorer Dellorah##161938
turnin A Deeper Dive##58638 |goto 68.99,58.02
accept Buried History##58639 |goto 68.99,58.02
accept Chew On This!##58646 |goto 68.99,58.02
stickystart "Kill_Scavenging_Dunerunners"
step
click Sand+
|tip They look like piles of loose sand with relics buried in them on the ground around this area.
|tip Click the piles until the artifact is revealed.
collect 6 Amathet Artifact##174450 |q 58639/1 |goto 73.19,61.85
step
label "Kill_Scavenging_Dunerunners"
kill 8 Scavenging Dunerunner##151945 |q 58646/1 |goto 73.19,61.85
step
_Next to you:_
talk High Explorer Dellorah##161938
turnin Buried History##58639
turnin Chew On This!##58646
accept A Crack in the Armor##58640
step
talk High Explorer Dellorah##161938
Tell her _"I'm ready."_
Kill enemies that attack in waves
Defend High Explorer Dellorah |q 58640/1 |goto 72.97,48.39
step
_Next to you:_
talk High Explorer Dellorah##161938
turnin A Crack in the Armor##58640 |goto 72.98,48.44
accept Seekers of Corruption##58641 |goto 72.98,48.44
step
kill Suntouched Acolyte##151960+
collect Sun King's Decree##174451 |q 58641/1 |goto 75.45,52.28
step
clicknpc High Explorer Dellorah##161938
turnin Seekers of Corruption##58641 |goto 75.44,56.26
accept Shared Goals##58642 |goto 75.44,56.26
step
Fly into the building |goto 66.67,29.87 < 20 |walk
talk High Explorer Dellorah##161938
Tell her _"I'm ready."_
Kill enemies that attack in waves
Defend High Explorer Dellorah |q 58642/1 |goto 67.43,29.88
step
talk High Explorer Dellorah##161938
turnin Shared Goals##58642 |goto 67.55,29.88
accept Mutually Assured Destruction##58643 |goto 67.55,29.88
step
talk Captain Hadan##161031
turnin Mutually Assured Destruction##58643 |goto 71.67,52.01
accept A World Worth Saving##58645 |goto 71.67,52.01
step
Enter the Halls of Origination |scenariostart |goto 69.10,53.15 |q 58645
step
Run up the stairs |goto Halls of Origination S/0 48.29,81.15 < 30 |only if walking
Follow the path |goto 51.26,63.06 < 15 |only if walking
Cross the bridge |goto 54.79,63.04 < 15 |only if walking
Defeat Inimot, the Radiant Blade |scenariogoal 1/46442 |goto 62.72,63.02 |q 58645
step
talk High Explorer Dellorah##155102
|tip Inside the building.
accept A World Worth Saving##58645 |goto Uldum New/0 54.96,32.96
step
Reach Exalted Reputation with the Uldum Accord |complete rep('Uldum Accord') == Exalted
|tip Use the Battle for Azeroth "Uldum World Quests" guide to complete world quests in Uldum.
|tip Complete Missions at your mission table that reward reputation with the Uldum Accord.
step
_Congratulations!_
You reached Exalted reputation with the "Uldum Accord" faction.
]])
