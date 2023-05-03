local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("PetsMountsABFA") then return end
ZygorGuidesViewer.GuideMenuTier = "BFA"
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Achievement Mounts\\Bloodgorged Crawg",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"ground, mount, battle, for, azeroth, bloodgorged, crawg"},
mounts={250735},
patch='80100',
mounttype='Ground',
model={78858},
description="\nThis mount is acquired earning the \"Glory of the Uldir Raider\" achievement.",
},[[
step
Earn the "Elevator Music" Achievement |achieve 12937 |learnmount Bloodgorged Crawg##250735
|tip Use the "Elevator Music" achievement guide to accomplish this.
step
Earn the "Parental Controls" Achievement |achieve 12938 |learnmount Bloodgorged Crawg##250735
|tip Use the "Parental Controls" achievement guide to accomplish this.
step
Earn the "Thrash Mouth - All Stars" Achievement |achieve 12823 |learnmount Bloodgorged Crawg##250735
|tip Use the "Thrash Mouth - All Stars" achievement guide to accomplish this.
step
Earn the "What's in the Box?" Achievement |achieve 12828 |learnmount Bloodgorged Crawg##250735
|tip Use the "What's in the Box?" achievement guide to accomplish this.
step
Earn the "Now We Got Bad Blood" Achievement |achieve 12772 |learnmount Bloodgorged Crawg##250735
|tip Use the "Now We Got Bad Blood" achievement guide to accomplish this.
step
Earn the "Edgelords" Achievement |achieve 12830 |learnmount Bloodgorged Crawg##250735
|tip Use the "Edgelords" achievement guide to accomplish this.
step
Earn the "Existential Crisis" Achievement |achieve 12836 |learnmount Bloodgorged Crawg##250735
|tip Use the "Existential Crisis" achievement guide to accomplish this.
step
Earn the "Double Dribble" Achievement |achieve 12551 |learnmount Bloodgorged Crawg##250735
|tip Use the "Double Dribble" achievement guide to accomplish this.
step
collect Bloodgorged Crawg##163216 |learnmount Bloodgorged Crawg##250735
|tip You can find it in your mailbox.
step
use the Bloodgorged Crawg##163216
Learn the "Bloodgorged Crawg" Mount |learnmount Bloodgorged Crawg##250735
step
_Congratulations!_
You Collected the "Bloodgorged Crawg" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Achievement Mounts\\Dark Iron Core Hound",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={271646},
patch='80100',
mounttype='Ground',
model={85691},
description="\nThis mount is acquired by completing the War Campaign as well as becoming exalted with the 7th Legion.",
},[[
step
Earn the "Ready for War" Achievement |achieve 12510
|tip Progress through the "War Campaign" leveling guide until you earn this acheivement.
step
Reach Exalted Reputation with the 7th Legion |complete rep('7th Legion') == Exalted
|tip Use the "7th Legion" reputation guide to accomplish this.
step
Earn the "Allied Races: Dark Iron Dwarf" Achievement |achieve 12515
|tip Use the "Dark Iron Dwarf Race Unlock" leveling guide to accomplish this.
step
collect Dark Iron Core Hound##161331
|tip It will be in your bags after earning the "Allied Races: Dark Iron Dwarf" achievement.
step
use the Dark Iron Core Hound##161331
Learn the "Dark Iron Corehound" Mount |learnmount Dark Iron Core Hound##271646
step
_Congratulations!_
You Collected the "Dark Iron Core Hound" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Achievement Mounts\\Frenzied Feltalon",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={280729},
patch='80100',
mounttype='Ground',
description="\nThis mount is acquired by earning the achievement \"A Horde of Hoofbeats\" which requires you to \n"..
"collect 400 mounts.",
},[[
step
Collect 400 different mounts
|tip Use our various mount guides to accomplish this.
Earn the "A Horde of Hoofbeats" Achievement |achieve 12933
step
use the Frenzied Feltalon##163981
|tip It will be in your mailbox.
Learn the "Frenzied Feltalon" Mount |learnmount Frenzied Feltalon##280729
step
_Congratulations!_
You Collected the "Frenzied Feltalon" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Achievement Mounts\\Ironclad Frostclaw",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"ground, mount, battle, for, azeroth, ironclad, frostclaw"},
mounts={295386},
patch='81500',
mounttype='Ground',
model={91389},
description="\nThis mount is acquired by earning the \"Two Sides to Every Tale\" achievement.",
},[[
step
Earn the "A Nation United" Achievement |achieve 13517/1 |complete hasmount(295386)
|tip Use the "A Nation United" achievement guide to accomplish this.
step
Earn the "Tides of Vengeance" Achievement |achieve 13517/2 |complete hasmount(295386)
|tip Use the "Tides of Vengeance" achievement guide to accomplish this.
step
Earn the "Zandalar Forever!" Achievement |achieve 13517/3 |complete hasmount(295386)
|tip Use the "Zandalar Forever!" achievement guide to accomplish this.
|tip This is a Horde achievement.
step
Earn the "Tides of Vengeance" Achievement |achieve 13517/4 |complete hasmount(295386)
|tip Use the "Tides of Vengeance" achievement guide to accomplish this.
|tip This is a Horde achievement.
step
collect Ironclad Frostclaw##168056 |complete hasmount(295386)
|tip You can find it in your mailbox.
step
use the Ironclad Frostclaw##168056
Learn the "Ironclad Frostclaw" Mount |learnmount Ironclad Frostclaw##295386
step
_Congratulations!_
You Collected the "Ironclad Frostclaw" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Achievement Mounts\\Lightforged Felcrusher",{
author="support@zygorguides.com",
startlevel=45.0,
keywords={"ground, mount, battle, of, azeroth, alliance, achievement"},
mounts={258022},
patch='73500',
mounttype='Ground',
model={81114},
condition_end=function() return hasmount(258022) end,
description="\nThis mount is acquired by completing the \"Allied Races: Lightforged Draenei\" achievement.",
},[[
step
accept The Call for Allies##49929 |goto Dalaran L/10 72.46,45.94
|tip You will accept this quest automatically.
step
Enter the building |goto Stormwind City/0 52.82,14.59 < 7 |walk
talk Anduin Wrynn##126301
turnin The Call for Allies##49929 |goto 52.07,13.42
step
Load the "Argus Campaign" Leveling Guide |confirm |next "Leveling Guides\\Legion (10-50)\\Argus Campaign"
|tip Click the line above to load the guide.
|tip You must progress through the Argus Campaign guide until you earn the You Are Now Prepared! achievement.
Earn the _You Are Now Prepared!_ Achievement |achieve 12066
step
Load the "Argus Campaign" Leveling Guide |confirm |next "Leveling Guides\\Legion (10-50)\\Argus Campaign"
|tip Click the line above to load the guide.
|tip Completing certain quests in Argus reward reputation with the Army of the Light.
Load the "World Quests" Daily Guide |confirm |next "Dailies Guides\\Legion\\Azsuna World Quests"
|tip Click the line above to load the guide.
|tip Completing world quests that indicate Army of the Light award reputation with them.
Use Army of the Light reputation insignias
|tip These are awarded from Order Hall missions, Army of the Light emissary quests, and world quests.
|tip These can also be chosen from "The Kirin Tor of Dalaran" emissary quest.
Use your Army of the Light Insignia |use Army of the Light Insignia##152957 |only if itemcount(152957) >= 1
Use your Army of the Light Insignia |use Army of the Light Insignia##152958 |only if itemcount(152958) >= 1
Use your Greater Army of the Light Insignia |use Greater Army of the Light Insignia##152956 |only if itemcount(152956) >= 1
Use your Greater Army of the Light Insignia |use Greater Army of the Light Insignia##152955 |only if itemcount(152955) >= 1
Load the "Argus Invasions" Scenario Guide |confirm |next "Dungeon Guides\\Legion Scenarios\\Argus Invasions"
|tip Click the line above to load the guide.
|tip The weekly quests "Invasion Point Offensive," "Commander's Downfall," "Invasion Onslaught," and "Supplying the Antoran Campaign" reward reputation as well.
Gain Exalted Reputation with the Army of the Light |achieve 12081
step
talk Anduin Wrynn##126301
accept A Choice of Allies##50239 |goto 52.07,13.42
step
talk Alleria Windrunner##126321
Ask her _"What do we know about the void elves?"_
Speak with Alleria About the Void Elves |q 50239/2 |goto 52.24,13.51
step
talk High Exarch Turalyon##126319
Ask him _"What can you tell me about the Lightforged draenei?"_
Speak with Turalyon About the Lightforged Draenei |q 50239/1 |goto 52.12,13.71
step
talk Anduin Wrynn##126301
Tell him _"I am ready to pursue our next ally."_
|tip Select Lightforged Draenei.
Choose an Ally to Pursue |q 50239/3 |goto 52.07,13.42
step
talk Anduin Wrynn##126301
turnin A Choice of Allies##50239 |goto 52.07,13.42
step
talk Anduin Wrynn##126301
accept A Second Ally For the Cause##50248 |goto Stormwind City/0 52.08,13.42
|only if completedq(48962)
step
talk Anduin Wrynn##126301
Tell him _"I am ready to pursue our next ally."_
|tip Select Lightforged Draenei.
Choose an Ally to Pursue |q 50248/1 |goto 52.07,13.42
|only if completedq(48962)
step
talk Anduin Wrynn##126301
turnin A Second Ally For the Cause##50248 |goto 52.08,13.42
|only if completedq(48962)
step
talk High Exarch Turalyon##126319
accept The Lightforged##49698 |goto Stormwind City/0 52.12,13.70
step
Leave the building |goto 52.83,14.62 < 7 |walk
clicknpc Lightforged Beacon##130758 |goto 54.41,14.46
Board the Vindicaar |goto Vindicaar Scenario/1 49.97,46.22 |noway |c |q 49698 |future
step
talk Captain Fareeya##130549
turnin The Lightforged##49698 |goto 443.83,27.05
accept Forge of Aeons##49266 |goto 43.83,27.05
step
clicknpc Lightforged Beacon##130511
Enter the Scenario |scenariostart |goto 49.90,46.22 |q 49266 |future
step
Meet with T'paartos |scenariogoal Meet with T'paartos##1/37571 |goto Draenei Scenario/0 88.01,44.45 |q 49266 |future
step
Follow the path |goto 89.02,37.72 < 7 |walk
Enter the building |goto 87.71,29.59 < 7 |walk
Follow T'paartos |scenariogoal Follow T'paartos##2/37710 |goto 88.76,28.34 |q 49266 |future
step
See the Past |scenariogoal See the past##3/37711 |goto 88.76,28.34 |q 49266 |future
|tip Wait for the dialogue to complete.
step
Leave the building |goto 87.59,29.64 < 7 |walk
Enter the Swamp |scenariogoal Swamp entered##4/37712 |goto 83.67,32.38 |q 49266 |future
step
Go down the hill |goto Draenei Scenario/0 79.50,33.54 < 10 |walk
Follow the path |goto 72.26,22.78 < 7 |walk
Cross the bridge |goto 69.52,26.08 < 7 |walk
Find the Child |scenariogoal Child found##5/37718 |goto 66.79,29.70 |q 49266 |future
step
kill Swamp Serpent##128115 |scenariogoal Swamp Serpent slain##6/37717 |goto 66.79,29.70 |q 49266 |future
step
Cross the bridge |goto Draenei Scenario/0 61.85,31.98 < 7 |walk
Find the Refuge |scenariogoal Refuge found##7/37931 |goto 57.10,23.78 |q 49266 |future
step
Enter the tunnel |goto Draenei Scenario/0 52.98,26.33 < 7 |walk
clicknpc Crystal##128036
Collect the Crystal |scenariogoal Crystal collected##8/37932 |goto 47.01,27.36 |q 49266 |future
step
kill Crystal Fury##128038 |scenariogoal Crystal Fury slain##9/37968 |goto 47.55,27.88 |q 49266 |future
step
Follow the path |goto Draenei Scenario/0 51.85,27.05 < 7 |walk
Leave the tunnel |goto 56.98,23.63 < 7 |walk
Kill Doubt and Fear enemies around this area
Conquer #7# Doubts and Fears |scenariogoal Doubts and Fears conquered##10/37933 |goto 45.59,41.87 |q 49266 |future
step
Follow the path |goto 39.25,43.77 < 10 |walk
Follow the path |goto 22.67,37.22 < 10 |walk
Find the Cave |scenariogoal Cave found##11/38069 |goto 16.63,46.71 |q 49266 |future
step
Enter the tunnel |goto 13.36,49.96 < 7 |walk
kill Terror##128427 |scenariogoal Terror defeated##12/38070 |goto 8.61,50.26 |q 49266 |future
step
Follow the path |goto Draenei Scenario/0 12.77,50.31 < 7 |walk
Leave the cave |goto 17.01,46.38 < 7 |walk
Follow the path |goto 23.41,36.61 < 10 |walk
Follow the path |goto 39.32,44.45 < 10 |walk
Follow T'paartos |scenariogoal Follow T'paartos##13/38071 |goto 45.67,59.90 |q 49266 |future
step
clicknpc T'paartos##128424
Free T'paartos |scenariogoal T'paartos freed##14/38072 |goto 46.80,65.95 |q 49266 |future
step
Follow the path |goto 49.44,64.93 < 15 |walk
Follow the path |goto 57.56,71.50 < 15 |walk
Follow T'paartos |scenariogoal Follow T'paartos##15/38103 |goto 66.64,77.57 |q 49266 |future
step
clicknpc T'paartos##128550
|tip At the bottom of the ramp.
Free Kind |scenariogoal Kind##16/38082 |goto 68.44,77.13 |q 49266 |future
step
Follow the path |goto 67.03,73.01 < 7 |walk
Follow the path |goto 64.87,71.63 < 7 |walk
Follow the path |goto 61.21,72.99 < 7 |walk
Follow the path |goto 62.17,77.99 < 7 |walk
clicknpc T'paartos##128550
Free Brave |scenariogoal Brave##16/38084 |goto 65.72,73.60 |q 49266 |future
step
Follow the path |goto 65.44,81.63 < 7 |walk
clicknpc T'paartos##128550
Free Strong |scenariogoal Strong##16/38083 |goto 72.31,86.51 |q 49266 |future
step
Follow the path |goto 75.72,79.21 < 10 |walk
clicknpc T'paartos##128550
Free Boastful |scenariogoal Boastful##16/38085 |goto 69.63,68.26 |q 49266 |future
step
Follow the path |goto 66.43,71.90 < 7 |walk
Follow the path |goto 63.47,72.46 < 7 |walk
clicknpc T'paartos##128550
Free Frightened |scenariogoal Frightened##16/38086 |goto 63.02,74.48 |q 49266 |future
step
Follow the path |goto 62.05,78.82 < 7 |walk
Follow the path |goto 63.47,81.43 < 7 |walk
clicknpc T'paartos##128550
Free Inadequate |scenariogoal Inadequate##16/38087 |goto 69.57,77.86 |q 49266 |future
step
Follow the path |goto Draenei Scenario/0 67.85,87.10 < 10 |walk
kill T'paartos the Fallen##127924
|tip Wait for the dialogue to complete.
Help T'paartos |scenariogoal Help T'paartos##17/38088 |goto 73.72,94.30 |q 49266 |future
step
clicknpc Lightforged Beacon##127964 |goto 71.67,95.43
Leave the Forge of Aeons |goto Vindicaar Scenario/1 49.97,46.22 < 1000 |noway |c |q 49266 |future
step
talk Captain Fareeya##130549
turnin Forge of Aeons##49266 |goto 48.41,39.51
step
talk High Exarch Turalyon##130810
accept For the Light!##50071 |goto 47.53,40.22
step
Follow the path |goto 40.24,44.39 < 7 |walk
Go down the stairs |goto Vindicaar Scenario/2 49.59,60.56 < 7 |walk
Follow the path |goto 43.93,67.53 < 7 |walk
Follow the path |goto 35.22,52.53 < 7 |walk
click Portal to Stormwind |goto 43.29,24.97
Return to Stormwind |goto Stormwind City/0 53.62,15.77 < 1000 |noway |c |q 50071 |future
step
Enter the building |goto Stormwind City/0 52.79,14.53 < 7 |walk
talk Anduin Wrynn##126301
turnin For the Light!##50071 |goto 52.07,13.41
step
learnmount Lightforged Felcrusher##258022 |use Lightforged Felcrusher##155656 |future
step
_Congratulations!_
You Collected the "Lightforged Felcrusher" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Achievement Mounts\\Obsidian Krolusk",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={239049},
patch='80100',
mounttype='Ground',
model={75600},
description="\nThis mount is acquired by earning the \"Glory of the Wartorn Hero\" achievement.",
},[[
step
Earn the "Pecking Order" Achievement |achieve 12550
|tip Use the "Pecking Order" achievement guide to accomplish this.
step
Earn the "I'm in Charge Now!" Achievement |achieve 12548
|tip Use the "I'm in Charge Now!" achievement guide to accomplish this.
step
Earn the "That Sweete Booty" Achievement |achieve 12998
|tip Use the "That Sweete Booty" achievement guide to accomplish this.
step
Earn the "Losing My Profession" Achievement |achieve 12489
|tip Use the "Losing My Profession" achievement guide to accomplish this.
step
Earn the "Run Wild Like a Man On Fire" Achievement |achieve 12495
|tip Use the "Run Wild Like a Man On Fire" achievement guide to accomplish this.
step
Earn the "Alchemical Romance" Achievement |achieve 12490
|tip Use the "Alchemical Romance" achievement guide to accomplish this.
step
Earn the "Breath of the Shrine" Achievement |achieve 12600
|tip Use the "Breath of the Shrine" achievement guide to accomplish this.
step
Earn the "The Void Lies Sleeping" Achievement |achieve 12601
|tip Use the "The Void Lies Sleeping" achievement guide to accomplish this.
step
Earn the "Trust No One" Achievement |achieve 12602
|tip Use the "Trust No One" achievement guide to accomplish this.
step
Earn the "Bringing Hexy Back" Achievement |achieve 12270
|tip Use the "Bringing Hexy Back" achievement guide to accomplish this.
step
Earn the "Gold Fever" Achievement |achieve 12272
|tip Use the "Gold Fever" achievement guide to accomplish this.
step
Earn the "It's Lit!" Achievement |achieve 12273
|tip Use the "It's Lit!" achievement guide to accomplish this.
step
Earn the "Not a Fun Guy" Achievement |achieve 12549
|tip Use the "Not a Fun Guy" achievement guide to accomplish this.
step
Earn the "Taint Nobody Got Time For That" Achievement |achieve 12498
|tip Use the "Taint Nobody Got Time For That" achievement guide to accomplish this.
step
Earn the "Sporely Alive" Achievement |achieve 12499
|tip Use the "Sporely Alive" achievement guide to accomplish this.
step
Earn the "Snake Eyes" Achievement |achieve 12503
|tip Use the "Snake Eyes" achievement guide to accomplish this.
step
Earn the "Snake Eater" Achievement |achieve 12507
|tip Use the "Snake Eater" achievement guide to accomplish this.
step
Earn the "Good Night, Sweet Prince" Achievement |achieve 12508
|tip Use the "Good Night, Sweet Prince" achievement guide to accomplish this.
step
Earn the "Remix to Ignition" Achievement |achieve 12457
|tip Use the "Remix to Ignition" achievement guide to accomplish this.
step
Earn the "Shot Through the Heart" Achievement |achieve 12462
|tip Use the "Shot Through the Heart" achievement guide to accomplish this.
step
Earn the "Pitch Invasion" Achievement |achieve 12855
|tip Use the "Pitch Invasion" achievement guide to accomplish this.
step
Earn the "Ready for Raiding VI" Achievement |achieve 12854
|tip Use the "Ready for Raiding VI" achievement guide to accomplish this.
step
Earn the "Stand by Me" Achievement |achieve 12727
|tip Use the "Stand by Me" achievement guide to accomplish this.
step
Earn the "A Fish Out of Water" Achievement |achieve 12726
|tip Use the "A Fish Out of Water" achievement guide to accomplish this.
step
Earn the "It Belongs In a Mausoleum!" Achievement |achieve 12722
|tip Use the "It Belongs In a Mausoleum!" achievement guide to accomplish this.
step
Earn the "How to Keep a Mummy" Achievement |achieve 12723
|tip Use the "How to Keep a Mummy" achievement guide to accomplish this.
step
Earn the "Wrap God" Achievement |achieve 12721
|tip Use the "Wrap God" achievement guide to accomplish this.
step
collect Reins of the Obsidian Krolusk##161215 |complete hasmount(239049)
step
use the Reins of the Obsidian Krolusk##161215
Learn the "Obsidian Krolusk" Mount |learnmount Obsidian Krolusk##239049
step
_Congratulations!_
You Collected the "Obsidian Krolusk" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Achievement Mounts\\Pureheart Courser",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={280730},
patch='80100',
mounttype='Ground',
model={83664},
description="\nThis mount is acquired by collect 400 mounts.",
},[[
step
Raise 100 different reputations to Exalted
|tip Use our various Reputation guides to accomplish this.
Earn the "100 Exalted Reputations" Achievement |achieve 12866 |learnmount Pureheart Courser##280730
step
use the Pureheart Courser##163982
|tip You can find it in your mailbox
Learn the "Pureheart Courser" Mount |learnmount Pureheart Courser##280730
step
_Congratulations!_
You Collected the "Pureheart Courser" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Achievement Mounts\\Starcursed Voidstrider",{
author="support@zygorguides.com",
startlevel=45.0,
keywords={"ground, mount, battle, of, azeroth, alliance, achievement"},
mounts={259202},
patch='73500',
mounttype='Ground',
model={81648},
condition_end=function() return hasmount(259202) end,
description="\nThis mount is acquired by completing the \"Allied Races: Void Elf\" achievement.",
},[[
step
accept The Call for Allies##49929 |goto Dalaran L/10 72.46,45.94
|tip You will accept this quest automatically.
step
Enter the building |goto Stormwind City/0 52.82,14.59 < 7 |walk
talk Anduin Wrynn##126301
turnin The Call for Allies##49929 |goto 52.07,13.42
step
Load the "Argus Campaign" Leveling Guide |confirm |next "Leveling Guides\\Legion (10-50)\\Argus Campaign"
|tip Click the line above to load the guide.
|tip You must progress through the Argus Campaign guide until you earn the You Are Now Prepared! achievement.
Earn the "You Are Now Prepared!" Achievement |achieve 12066
step
Load the "Argus Campaign" Leveling Guide |confirm |next "Leveling Guides\\Legion (10-50)\\Argus Campaign"
|tip Click the line above to load the guide.
|tip Completing certain quests in Argus reward reputation with the Argussian Reach.
Load the "World Quests" Daily Guide |confirm |next "Dailies Guides\\Legion\\Azsuna World Quests"
|tip Click the line above to load the guide.
|tip Completing world quests that indicate Argussian Reach award reputation with them.
Use Argussian Reach Reputation Insignias
|tip These are awarded from Order Hall missions, Argussian Reach emissary quests, and world quests.
|tip These can also be chosen from "The Kirin Tor of Dalaran" emissary quest.
Use Your Argussian Reach Insignia |use Argussian Reach Insignia##152959 |only if itemcount(152959) >= 1
Use Your Argussian Reach Insignia |use Argussian Reach Insignia##152960 |only if itemcount(152960) >= 1
Use Your Greater Argussian Reach Insignia |use Greater Argussian Reach##152961 |only if itemcount(152961) >= 1
Use Your Greater Argussian Reach Insignia |use Greater Argussian Reach##152954 |only if itemcount(152954) >= 1
Load the "Argus Invasions" Scenario Guide |confirm |next "Dungeon Guides\\Legion Scenarios\\Argus Invasions"
|tip Click the line above to load the guide.
|tip The weekly quest for the Argussian Reach is "Fuel of a Doomed World."
Gain Exalted Reputation with the Argussian Reach |achieve 12076
step
talk Anduin Wrynn##126301
accept A Choice of Allies##50239 |goto 52.07,13.42
step
talk Alleria Windrunner##126321
Ask her _"What do we know about the void elves?"_
Speak with Alleria About the Void Elves |q 50239/2 |goto 52.24,13.51
step
talk High Exarch Turalyon##126319
Ask him _"What can you tell me about the Lightforged draenei?"_
Speak with Turalyon About the Lightforged Draenei |q 50239/1 |goto 52.12,13.71
step
talk Anduin Wrynn##126301
Tell him _"I am ready to pursue our next ally."_
|tip Select Void Elf.
Choose an Ally to Pursue |q 50239/3 |goto 52.07,13.42
step
talk Anduin Wrynn##126301
turnin A Choice of Allies##50239 |goto 52.07,13.42
step
talk Anduin Wrynn##126301
accept A Second Ally For the Cause##50248 |goto Stormwind City/0 52.08,13.42
|only if completedq(50071)
step
talk Anduin Wrynn##126301
Tell him _"I am ready to pursue our next ally."_
|tip Select Void Elf.
Choose an Ally to Pursue |q 50248/1 |goto 52.07,13.42
|only if completedq(50071)
step
talk Anduin Wrynn##126301
turnin A Second Ally For the Cause##50248 |goto 52.08,13.42
|only if completedq(50071)
step
talk Alleria Windrunner##126321
accept The Ghostlands##49787 |goto 52.24,13.51
step
click Rift to Ghostlands
|tip Wait a moment for Alleria to open the rift.
Travel to the Ghostlands with Alleria |q 49787/1 |goto 52.33,13.34
step
Follow the path |goto Ghostlands/0 37.95,17.96 < 15 |only if walking
Follow the path |goto 38.05,21.59 < 15 |only if walking
Follow the path |goto 36.47,26.24 < 10 |only if walking
Follow the path |goto 34.57,31.64 < 10 |only if walking
Cross the water |goto 34.42,32.63 < 7 |only if walking
Enter the building |goto 33.70,33.59 < 7 |walk
click Umbric's Notes - Sanctum of the Moon
Locate Umbric's Notes - Sanctum of the Moon |q 49787/2 |goto 33.63,34.46
step
Leave the building |goto 33.81,33.43 < 7 |walk
Follow the path |goto 34.99,33.77 < 10 |only if walking
Follow the path |goto 37.08,38.28 < 10 |only if walking
Follow the path |goto 40.28,41.20 < 15 |only if walking
Go up the hill |goto 42.90,43.93 < 15 |only if walking
Follow the path |goto 43.89,45.62 < 10 |only if walking
Follow the path |goto 43.32,48.01 < 10 |only if walking
Follow the path |goto 43.41,50.28 < 10 |only if walking
Follow the path |goto 44.72,54.71 < 10 |only if walking
Follow the path |goto 46.49,56.57 < 10 |only if walking
Enter the building |goto 46.68,55.98 < 7 |walk
click Umbric's Notes - Andilien Estate
Locate Umbric's Notes - Andilien Estate |q 49787/3 |goto 46.87,54.97
step
Leave the building |goto 46.65,56.12 < 7 |walk
Follow the path |goto 47.62,58.41 < 15 |only if walking
Follow the path |goto 51.09,57.04 < 10 |only if walking
Follow the path |goto 57.84,58.56 < 10 |only if walking
Follow the path |goto 60.64,52.81 < 15 |only if walking
Follow the path |goto 66.26,45.04 < 15 |only if walking
Follow the path |goto 67.69,35.64 < 15 |only if walking
Follow the path |goto 70.52,33.79 < 10 |only if walking
|tip Avoid the Horde NPCs.
Follow the path |goto 73.82,34.20 < 10 |only if walking
Follow the path |goto 75.77,31.44 < 15 |only if walking
Follow the path |goto 76.96,27.30 < 15 |only if walking
Follow the path |goto 78.05,20.38 < 10 |only if walking
Enter the building |goto 78.81,19.83 < 7 |walk
click Teleportation Console |goto 79.65,17.57
click Umbric's Notes - Dawnstar Spire
|tip They're all the way at the top, up the spiral ramp.
Locate Umbric's Notes - Dawnstar Spire |q 49787/4
step
talk Alleria Windrunner##126321
turnin The Ghostlands##49787 |goto 79.69,19.62
accept Telogrus Rift##48962 |goto 79.69,19.62
step
click Rift to Telogrus
Enter the Rift to Telogrus |scenariostart |goto 79.64,19.86 |q 48962 |future
step
talk Magister Umbric##126646
Ask him _"What is this place?"_
Speak with Umbric |scenariogoal Speak with Umbric##1/37328 |goto Void Elf Scenario/0 47.83,73.88 |q 48962 |future
step
Follow the path |goto Void Elf Scenario/0 49.59,73.87 < 10 |walk
Follow the path |goto 49.91,75.43 < 7 |walk
Walk with Umbric and Alleria |scenariogoal Walk with Umbric and Alleria.##2/37282 |goto 49.33,76.66 |q 48962 |future
step
Follow the path |goto Void Elf Scenario/0 50.15,74.91 < 7 |walk
click Void Rift
Use the Void Portal |scenariogoal Use the void portal.##3/38503 |goto 48.97,72.91 |q 48962 |future
step
Follow the path |goto Void Elf Scenario/0 41.30,60.12 < 10 |walk
Kill enemies around this area
|tip Avoid dark colored orbs.
Repel the Void |scenariogoal Void repelled##4/37283 |goto 39.30,54.49 |q 48962 |future
step
click Void Rift
Use the Void Portal |scenariogoal Use the void portal.##5/38971 |goto 37.32,49.26 |q 48962 |future
step
kill Dark Manifestation##126559+
Close the rift |scenariogoal Rift sealed##6/37295 |goto 28.92,40.34 |q 48962 |future
step
kill Nhr'ghesh##126589 |scenariogoal Nhr'ghesh defeated##7/37296 |goto 28.92,40.34 |q 48962 |future
step
click Void Rift
Use the Void Portal |scenariogoal Use the void portal.##8/38972 |goto 28.89,38.30 |q 48962 |future
step
click Voidforge
Shut Down the First Voidforge |scenariogoal Voidforges shut down##9/37329 |goto 29.00,27.81 |count 1 |q 48962 |future
step
click Voidforge
Shut Down the Second Voidforge |scenariogoal Voidforges shut down##9/37329 |goto 28.49,21.70 |count 2 |q 48962 |future
step
click Voidforge
Shut Down the Third Voidforge |scenariogoal Voidforges shut down##9/37329 |goto 26.21,24.46 |count 3 |q 48962 |future
step
kill Nether-Prince Durzaan##126470 |scenariogoal Nether-Walker defeated##10/37284 |goto 27.90,24.09 |q 48962 |future
step
click Rift to Stormwind |goto 27.95,24.50
Leave the Telogrus Rift |goto Stormwind City/0 53.62,15.77 < 1000 |noway |c |q 48962 |future
step
Enter the building |goto 52.76,14.45 < 7 |walk
talk Anduin Wrynn##126301
turnin Telogrus Rift##48962 |goto 52.07,13.41
step
learnmount Starcursed Voidstrider##259202 |use Starcursed Voidstrider##156486 |future
step
_Congratulations!_
You Collected the "Starcursed Voidstrider" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Achievement Mounts\\Stormpike Battle Ram",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"15th","Anniversary","Alterac","Valley","of","Olde"},
mounts={308250},
patch='82500',
mounttype='Ground',
model={93396},
description="\nThis mount is collected by completing the \"Alterac Valley of Olde\" achievement.",
},[[
step
collect Anniversary Gift##172014 |or
|tip You can find it in your mailbox.
'|q 57249 |future |or
step
use the Anniversary Gift##172014
accept A Timely Invitation##57249
step
talk Chromie##157113
turnin A Timely Invitation##57249 |goto Tanaris/18 53.59,54.96
accept Soldier of Time##57300 |goto 53.59,54.96
step
Earn the "Alterac Valley of Olde" Achievement |achieve 13928
|tip You will need to queue for the "Korrak's Revenge" battleground.
|tip Earn 200 Timewarped Badges by completing quests and objectives.
step
collect Stormpike Battle Ram##172022 |or
|tip It should be in your mailbox.
'|learnmount Stormpike Battle Ram##308250 |or
step
use the Stormpike Battle Ram##172022
Learn the "Stormpike Battle Ram" Mount |learnmount Stormpike Battle Ram##308250
step
talk Chromie##157113
turnin Soldier of Time##57300 |goto 53.59,54.96
|only if readyq(57300) or completedq(57300)
step
_Congratulations!_
You Collected the "Stormpike Battle Ram" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Achievement Mounts\\Kul Tiran Charger",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={282682},
patch='81500',
mounttype='Ground',
model={88974},
description="\nThis mount is acquired from completing the Allied Races: Kul Tiran achievement.",
},[[
step
Earn the "Allied Races: Kul Tiran" Achievement |achieve 13157
|tip Refer to our Kul Tiran Race Unlock guide to accomplish this.
step
use the Kul Tiran Charger##164762
|tip It should be on the character that you unlocked the Kul Tiran Race with.
Learn the "Kul Tiran Charger" Mount |learnmount Kul Tiran Charger##282682
step
_Congratulations!_
You Collected the "Kul Tiran Charger" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Azshari Bloatray",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"flying, mount, battle, for, azeroth, raid"},
mounts={292419},
patch='82000',
mounttype='Flying',
model={90729},
description="\nThis mount is acquired from completing the \"Glory of the Eternal Raider\" achievement.",
},[[
step
Earn the "Glory of the Eternal Raider" Achievement |achieve 13687
|tip Refer to our Achievement Guide to accomplish this.
step
use the Azshari Bloatray##167171
Learn the "Azshari Bloatray" Mount |learnmount Azshari Bloatray##292419
step
_Congratulations!_
You Collected the "Azshari Bloatray" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Dazar'alor Windreaver",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={289101},
patch='81000',
mounttype='Flying',
model={90194},
description="\nThis mount is acquired from completing the No Stable Big Enough achievement.",
},[[
step
Earn the "Glory of the Dazar'alor Raider" Achievement |achieve 13315
|tip Refer to our Achievement Guide to accomplish this.
step
use the Dazar'alor Windreaver##166539
Learn the "Dazar'alor Windreaver" Mount |learnmount Dazar'alor Windreaver##289101
step
_Congratulations!_
You Collected the "Dazar'alor Windreaver" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Wonderwing 2.0",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"mount","pathfinder"},
mounts={290328},
patch='81500',
mounttype='Flying',
model={90421},
description="\nThis mount is acquired by completing the \"Battle for Azeroth Pathrinder, Part Two\" achievement.",
},[[
leechsteps "Achievement Guides\\Exploration\\Battle for Azeroth\\Battle for Azeroth Pathfinder, Part Two" 1-28
step
collect Wonderwing 2.0##290328
|tip It will be in your mailbox after earning the achievement.
step
use Wonderwing 2.0##169162
Learn the "Wonderwing 2.0" Mount |learnmount Wonderwing 2.0##290328
step
_Congratulations!_
You Collected the "Wonderwing 2.0" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Class Mounts\\Darkforge Ram",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"ground, mount, battle, for, azeroth, paladin"},
mounts={270562},
patch='80100',
mounttype='unknown',
description="\nThis mount is acquired from completing the Allied Races: Dark Iron Dwarf achievement.",
},[[
step
Earn the "Allied Races: Dark Iron Dwarf" Achievement |achieve 12515
|tip Refer to our Dark Iron Dwarf Race Unlock guide to accomplish this.
step
Create a Dark Iron Dwarf Paladin
|tip You will automatically learn this mount upon logging into the game.
Learn the "Darkforge Ram" Mount |learnmount Darkforge Ram##270562
step
_Congratulations!_
You Collected the "Darkforge Ram" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Class Mounts\\Dawnforge Ram",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"ground, mount, battle, for, azeroth, paladin"},
mounts={270564},
patch='80100',
mounttype='unknown',
description="\nThis mount is acquired from reaching level 10 on a Dwarf Paladin.",
},[[
step
Raise a Dwarf Paladin to Level 10
|tip The mount will automatically be learned once you reach level 10.
Learn the "Dawnforge Ram" Mount |learnmount Dawnforge Ram##270564
step
_Congratulations!_
You Collected the "Dawnforge Ram" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Blizzard Store Mounts\\Alabaster Stormtalon",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Blizzard","Store"},
mounts={302361},
patch='82500',
mounttype='Flying',
model={92345},
description="\nThis mount can be purchased from the Blizzard Store or earned from the 15th Anniversary "..
"Collector's Edition of the game.",
},[[
step
This mount can be purchased for $25.00 from the official Blizzard Store
|tip Click the Shop button in the bottom-right corner of your screen, then click on Mounts.
Learn the "Alabaster Stormtalon" Mount |learnmount Alabaster Stormtalon##302361
step
_Congratulations!_
You Collected the "Alabaster Stormtalon" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Blizzard Store Mounts\\Vulpine Familiar",{
author="support@zygorguides.com",
keywords={"Blizzard, Store, Mounts, Vulpine, Familiar"},
mounts={290133},
patch='unknown',
mounttype='unknown',
model={90397},
description="\nThis mount is purchased from the Blizzard Shop for $25 USD.",
},[[
step
This mount can be purchased for $25.00 from the official _Blizzard Store_
|tip After purchasing, check your in-game mailbox.
collect Vulpine Familiar##166775 |n
use the Vulpine Familiar##166775
Learn the "Vulpine Familiar" Mount |learnmount Vulpine Familiar##290133
step
_Congratulations!_
You Collected the "Vulpine Familiar" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Blizzard Store Mounts\\Meat Wagon",{
author="support@zygorguides.com",
keywords={"Blizzard, Store, Mounts, Meat, Wagon"},
mounts={281554},
patch='unknown',
mounttype='unknown',
model={88646},
description="\nThis mount is attained by purchasing the Warcraft III: Reforged Spoils of War Edition from the Blizzard Store.",
},[[
step
This mount is attained by purchasing the "Warcraft III: Reforged Spoil of War Edition" from the official _Blizzard Store_
|tip After purchasing, check your in-game mailbox.
collect Meat Wagon##164571 |n
use the Meat Wagon##164571
Learn the "Meat Wagon" Mount |learnmount Meat Wagon##281554
step
_Congratulations!_
You Collected the "Meat Wagon" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Blizzard Store Mounts\\The Dreadwake",{
author="support@zygorguides.com",
keywords={"Blizzard, Store, Mounts, The, Dreadwake"},
mounts={272770},
patch='unknown',
mounttype='unknown',
model={85970},
description="\nThis mount is attained by purchasing the 180 Days of World of Warcraft game time.",
},[[
step
This mount is attained by purchasing the 180 Days of World of Warcraft game time from the official _Blizzard Store_
|tip After purchasing, check your in-game mailbox.
collect The Dreadwake##160589 |n
use the The Dreadwake##160589
Learn the "The Dreadwake" Mount |learnmount Meat Wagon##272770
step
_Congratulations!_
You Collected the "The Dreadwake" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dropped Mounts\\Aerial Unit R-21/X",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"mount","operation","mechagon"},
mounts={290718},
patch='82000',
mounttype='Flying',
model={92730},
description="\nThis mount has a very small chance to drop from King Mechagon in the Operation: Mechagon dungeon.",
},[[
step
kill King Mechagon##155438
|tip Inside the Operation: Mechagon dungeon.
collect Aerial Unit R-21/X##168830 |goto Mechagon/0 21.43,64.85
step
use the Aerial Unit R-21/X##168830
Learn the "Aerial Unit R-21/X" Mount |learnmount Aerial Unit R-21/X##290718
step
_Congratulations!_
You Collected the "Aerial Unit R-21/X" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dropped Mounts\\Junkheap Drifter",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"mount"},
mounts={297157},
patch='82000',
mounttype='Ground',
model={91634},
description="\nThis mount has a slight chance to drop from the rare spawn Rustfeather on Mechagon Island.",
},[[
step
kill Rustfeather##152182
|tip Rustfeather is a rare spawn and may not always be available.
|tip This mount has a slight chance to drop.
collect Rusted Keys to the Junkheap Drifter##168370 |goto Mechagon Island/0 65.86,79.21
step
use the Rusted Keys to the Junkheap Drifter##168370
Learn the "Junkheap Drifter" Mount |learnmount Junkheap Drifter##297157
step
_Congratulations!_
You Collected the "Junkheap Drifter" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dropped Mounts\\Leaping Veinseeker",{
author="support@zygorguides.com",
startlevel=45.0,
keywords={"flying, mount, battle, for, azeroth"},
mounts={243795},
patch='80100',
mounttype='Flying',
model={76706},
description="\nThis mount is acquired by a random world drop.",
},[[
step
Kill Loa-Gutter enemies around this area
collect Reins of a Tamed Bloodfeaster##163575 |n
|tip This is a rare drop.
|tip It drops from any Blood Trolls found in Nazmir.
use the Reins of a Tamed Bloodfeaster##163575
Learn the "Leaping Veinseeker" Mount |learnmount Leaping Veinseeker##243795 |goto Nazmir/0 60.67,20.67
step
_Congratulations!_
You Collected the "Leaping Veinseeker" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dropped Mounts\\Mechagon Peacekeeper",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"mount","operation","mechagon"},
mounts={299158},
patch='82000',
mounttype='Ground',
model={90710},
description="\nThis mount has a very small chance to drop from the HK-8 Aerial Oppression Unit in the Operation: "..
"Mechagon dungeon.",
},[[
step
kill HK-8 Aerial Oppression Unit##155157
|tip Inside the Operation: Mechagon dungeon.
collect Mechagon Peacekeeper##168826 |goto Mechagon/3 61.61,39.49
step
use the Mechagon Peacekeeper##168826
Learn the "Mechagon Peacekeeper" Mount |learnmount Mechagon Peacekeeper##299158
step
_Congratulations!_
You Collected the "Mechagon Peacekeeper" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dropped Mounts\\Royal Snapdragon",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"mount","nazjatar"},
mounts={294038},
patch='82000',
mounttype='Ground',
model={91104},
description="\nThis mount has a very small chance to drop from elite naga enemies in Nazjatar",
},[[
step
Kill Elite enemies around this area
|tip Elite Naga enemies have a small chance to drop the mount.
|tip Only Imperial Defenders, Voices of the Queen, and Hands of Azshara count in this area.
collect Royal Snapdragon##169198 |goto Nazjatar/0 50.40,16.06
step
use the Royal Snapdragon##169198
Learn the "Royal Snapdragon" Mount |learnmount Royal Snapdragon##294038
step
_Congratulations!_
You Collected the "Royal Snapdragon" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dropped Mounts\\Rusty Mechanocrawler",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"mount"},
mounts={291492},
patch='82000',
mounttype='Ground',
model={90711},
description="\nThis mount has a slight chance to drop from the rare spawn Arachnoid Harvester on Mechagon Island.",
},[[
step
kill Arachnoid Harvester##151934
|tip Arachnoid Harvester is a rare spawn and may not always be available.
|tip This mount has a slight chance to drop.
collect Rusty Mechanocrawler##168823 |goto Mechagon Island/0 52.82,40.57
step
use the Rusty Mechanocrawler##168823
Learn the "Rusty Mechanocrawler" Mount |learnmount Rusty Mechanocrawler##291492
step
_Congratulations!_
You Collected the "Rusty Mechanocrawler" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dropped Mounts\\Sharkbait",{
author="support@zygorguides.com",
startlevel=45.0,
keywords={"flying, mount, battle, of, azeroth, dungeon, drop"},
mounts={254813},
patch='80100',
mounttype='Flying',
model={80449},
condition_end=function() return hasmount(254813) end,
description="\nThis mount is acquired by obtaining a random drop from Harlan Sweete in the Freehold dungeon on Mythic difficulty.",
},[[
step
Enter the Freehold Dungeon |goto Freehold/0 0.00,0.00 < 1000
step
kill Harlan Sweete##129440
collect 1 Sharkbait's Favorite Crackers##159842 |n
|tip This is a rare drop.
|tip This only can drop in Mythic difficulty.
use Sharkbait's Favorite Crackers##159842
Learn the Sharkbait Mount |learnmount Sharkbait##254813
step
_Congratulations!_
You Earned the "Sharkbait" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dropped Mounts\\Silent Glider",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"mount"},
mounts={300149},
patch='82000',
mounttype='Flying',
model={90728},
description="\nThis mount has a slight chance to drop from the rare spawn Soundless in Nazjatar.",
},[[
step
kill Soundless##152290
|tip Soundless is a rare spawn and may not always be available.
|tip Soundless spawns on top of coral all over this area and requires flying to reach.
|tip This mount has a slight chance to drop.
collect Silent Glider##169163 |goto Nazjatar/0 58.54,48.85
step
use the Silent Glider##169163
Learn the "Silent Glider" Mount |learnmount Silent Glider##300149
step
_Congratulations!_
You Collected the "Silent Glider" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dropped Mounts\\G.M.O.D.",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"flying, mount, battle, for, azeroth"},
mounts={289083},
patch='81000',
mounttype='Flying',
model={90189},
description="\nThis mount is acquired from the Battle for Dazar'alor Raid.",
},[[
step
kill High Tinker Mekkatorque##144838
|tip He is a boss in the Battle for Dazar'alor raid.
|tip If you are in LFR, Jaina will have a chance to drop the mount instead.
collect G.M.O.D.##166518 |n
use the G.M.O.D.##166518
Learn the "G.M.O.D." Mount |learnmount G.M.O.D.##289083
step
_Congratulations!_
You Collected the "G.M.O.D." Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dropped Mounts\\Glacial Tidestorm",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"flying, mount, battle, for, azeroth"},
mounts={289555},
patch='81000',
mounttype='Flying',
model={90414},
description="\nThis mount is acquired from the Mythic Battle for Dazar'alor Raid.",
},[[
step
kill Lady Jaina Proudmoore##151866
|tip She is a boss in the Battle for Dazar'alor raid.
|tip You will need to complete this on Mythic difficulty for a chance at the drop.
collect Glacial Tidestorm##166705 |n
use the Glacial Tidestorm##166705
Learn the "Glacial Tidestorm" Mount |learnmount Glacial Tidestorm##289555
step
_Congratulations!_
You Collected the "Glacial Tidestorm" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dropped Mounts\\Ashenvale Chimaera",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"flying, mount, battle, for, azeroth"},
mounts={288495},
patch='81000',
mounttype='Flying',
model={89750},
description="\nThis mount is acquired from the Rarespawn Alash'anir in Darkshore.",
},[[
step
kill Alash'anir##148787
|tip You will be flagged for PVP if your faction does not control Darkshore.
collect Ashenvale Chimaera##166432 |n
use Ashenvale Chimaera##166432
Learn the "Ashenvale Chimaera" Mount |learnmount Ashenvale Chimaera##288495 |goto Darkshore/0 56.45,30.76
step
_Congratulations!_
You Collected the "Ashenvale Chimaera" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Dune Scavenger",{
author="support@zygorguides.com",
startlevel=45.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={237286},
patch='80100',
mounttype='Ground',
model={75324},
description="\nThis mount is acquired by a random world drop.",
},[[
step
Kill enemies around this area
collect Captured Dune Scavenger##163576 |n
|tip This will drop randomly from the Snake enemies in the zone.
You can find more around [63.4,31.6]
You can find more around [55.6,41.2]
use the Captured Dun Scavenger##163576
Learn the "Dune Scavenger" Mount |learnmount Dune Scavenger##237286 |goto Vol'dun/0 49.4,75.8
step
_Congratulations!_
You Collected the "Dune Scavenger" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Goldenmane",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={260175},
patch='80100',
mounttype='Ground',
model={81690},
description="\nThis mount is acquired by an incredibly rare drop in Stormsong Valley or purchased from the Auction House.",
},[[
step
Kill enemies around this area
collect Goldenmane's Reins##163573 |goto Stormsong Valley/0 66.09,59.51 |complete hasmount(260175)
|tip This has about a 0.1% drop rate.
|tip You can also buy this mount from the Auction House if available.
step
use the Goldenmane's Reins##163573
Learn the "Goldenmane" Mount |learnmount Goldmane##260175
step
_Congratulations!_
You Collected the "Goldenmane" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Highland Mustang",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={279456},
patch='80100',
mounttype='Ground',
model={87774},
description="\nThis mount is acquired from Doomrider Helgrim while the Alliance controls the Stromgarde War Front.",
},[[
step
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |or
'|learnmount Highland Mustang##279456 |or
step
kill Doomrider Helgrim##142741
|tip He only appears when the Alliance controls Stromgarde.
|tip This mount has a small chance to drop.
collect Highland Mustang##163579 |goto 53.97,56.96 |complete hasmount(279456)
step
use the Highland Mustang##163579
Learn the "Highland Mustang" Mount |learnmount Highland Mustang##279456
step
_Congratulations!_
You Collected the "Highland Mustang" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Lil' Donkey",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={279608},
patch='80100',
mounttype='Ground',
model={87773},
description="\nThis mount is acquired from Knight-Captain Aldrin while the Horde controls the Stromgarde War Front.",
},[[
step
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |or
'|learnmount learnmount Lil'Donkey##279608 |or
step
Enter the mine |goto 33.68,36.79 < 10 |walk
kill Overseer Krix##142423
|tip Inside the mine.
|tip He will appear after the Horde take control of Stromgarde.
collect Lil' Donkey##163646 |goto 33.27,38.28 |complete hasmount(279608)
step
use the Lil' Donkey##163646
Learn the "Lil' Donkey" Mount |learnmount Lil'Donkey##279608
step
_Congratulations!_
You Collected the "Lil' Donkey" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Skullripper",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={279611},
patch='80100',
mounttype='Ground',
model={87848},
description="\nThis mount is acquired from Skullripper in Arathi Highlands.",
},[[
step
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |or
'|learnmount Skullripper##279611 |or
step
kill Skullripper##142437
|tip It will appear when the Alliance take control of Stromgarde.
collect Skullripper##163645 |goto 38.24,90.09 |complete hasmount(279611)
step
use Skullripper##163645
Learn the "Skullripper" Mount |learnmount Skullripper##279611
step
_Congratulations!_
You Collected the "Skullripper" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Swift Albino Raptor",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={279569},
patch='80100',
mounttype='Ground',
model={14345},
description="\nThis mount is dropped by Beastrider Kama in Arathi Highlands when under Horde control.",
},[[
step
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |or
'|learnmount Swift Albino Raptor##279569 |or
step
kill Beastrider Kama##142709
|tip He's on a spawn timer.
|tip He will appear when Alliance take control of Stromgarde.
collect Swift Albino Raptor##163644 |goto 65.64,70.41 |complete hasmount(279569)
step
use Swift Albino Raptor##163644
Learn the "Swift Albino Raptor" Mount |learnmount Swift Albino Raptor##279569
step
_Congratulations!_
You Collected the "Swift Albino Raptor" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Terrified Pack Mule",{
author="support@zygorguides.com",
startlevel=45.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={260174},
patch='80100',
mounttype='Ground',
model={81694},
description="\nThis mount is acquired by a random world drop.",
},[[
step
Kill enemies around this area
|tip Hexthralled Guardsman have a higher chance at the drop.
collect Chewed-On Reins of the Terrified Pack Mule##163574 |n
|tip This is a rare drop.
use the Chewed-On Reins of the Terrified Pack Mule##163574
Learn the "Terrified Pack Mule" Mount |learnmount Terrified Pack Mule##260174 |goto Drustvar/0 31,20
You can find more around [34.03,17.24]
step
_Congratulations!_
You Collected the "Terrified Pack Mule" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Tomb Stalker",{
author="support@zygorguides.com",
startlevel=45.0,
keywords={"ground, mount, battle, of, azeroth, dungeon, drop"},
mounts={266058},
patch='80100',
mounttype='Ground',
model={84274},
condition_end=function() return hasmount(266058) end,
description="\nThis mount is acquired by obtaining a random drop from Dazar, The First King in the King's Rest dungeon.",
},[[
step
Enter the King's Rest Dungeon |goto King's Rest/0 0.00,0.00 < 1000
step
kill King Dazar##136160
collect 1 Mummified Raptor Skull##159921 |n
|tip This is a rare drop.
|tip This only drops on Mythic difficulty.
use the Mummified Raptor Skull##159921
Learn the Tomb Stalker Mount |learnmount Mummified Raptor Skull##266058
step
_Congratulations!_
You Earned the "Tomb Stalker" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Underrot Crawg",{
author="support@zygorguides.com",
startlevel=45.0,
keywords={"ground, mount, battle, of, azeroth, dungeon, drop"},
mounts={273541},
patch='80100',
mounttype='Ground',
model={78860},
condition_end=function() return hasmount(273541) end,
description="\nThis mount is acquired by obtaining a random drop from the Unbound Abomination in The Underrot dungeon.",
},[[
step
Enter The Underrot Dungeon |goto The Underrot/0 0.00,0.00 < 1000
step
kill Unbound Abomination##133007
collect 1 Underrot Crawg Harness##160829 |n
|tip This is a rare drop.
use the Underrot Crawg Harness##160829
Learn the Underrot Crawg Mount |learnmount Underrot Crawg##273541
step
_Congratulations!_
You Earned the "Underrot Crawg" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Blackpaw",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"flying, mount, battle, for, azeroth"},
mounts={288438},
patch='81000',
mounttype='Ground',
model={706},
description="\nThis mount is acquired from the Rarespawn Blackpaw in Darkshore.",
},[[
step
kill Blackpaw##149660
|tip You will be flagged for PvP if your faction does not control Darkshore.
collect Blackpaw##166428 |goto Darkshore/0 49.65,24.96 |complete hasmount(288438)
|tip This has about a 6% drop rate.
step
use Blackpaw##166428
Learn the "Blackpaw" Mount |learnmount Blackpaw##288438
step
_Congratulations!_
You Collected the "Blackpaw" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Kaldorei Nightsaber",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"flying, mount, battle, for, azeroth"},
mounts={288505},
patch='81000',
mounttype='Ground',
model={89247},
description="\nThis mount is acquired from the Rarespawn Croz Bloodrage in Darkshore.",
},[[
step
kill Croz Bloodrage##149655
|tip You will be flagged for PVP if your faction does not control Darkshore.
collect Captured Kaldorei Nightsaber##166437 |n
use the Captured Kaldorei Nightsaber##166437
Learn the "Kaldorei Nightsaber" Mount |learnmount Kaldorei Nightsaber##288505 |goto Darkshore/0 50.75,32.32
step
_Congratulations!_
You Collected the "Kaldorei Nightsaber" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Umber Nightsaber",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"flying, mount, battle, for, azeroth"},
mounts={288503},
patch='81000',
mounttype='Ground',
model={89246},
description="\nThis mount is acquired from the Rarespawn Shadowclaw in Darkshore.",
},[[
step
kill Moxo the Beheader##147701
|tip He walks around this area.
|tip You will be flagged for PVP if your faction does not control Darkshore.
collect Captured Umber Nightsaber##166434 |n
use the Captured Umber Nightsaber##166434
Learn the "Umber Nightsaber" Mount |learnmount Umber Nightsaber##288503 |goto Darkshore/0 65.08,20.13
step
_Congratulations!_
You Collected the "Umber Nightsaber" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Witherbark Direwing",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"flying, mount, battle, for, azeroth"},
mounts={279868},
patch='80100',
mounttype='Flying',
model={86091},
description="\nThis mount is acquired from the Rarespawn Shadowclaw in Arathi Highlands.",
},[[
step
kill Nimar the Slayer##142692
|tip He walks around this area.
|tip You will be flagged for PVP if your faction does not control Arathi Highlands.
collect Witherbark Direwing##163706 |n
use the Witherbark Direwing##163706
Learn the "Witherbark Direwing" Mount |learnmount Witherbark Direwing##279868 |goto Arathi Highlands/0 67.63,60.86
step
_Congratulations!_
You Collected the "Witherbark Direwing" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Frightened Kodo",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"flying, mount, battle, for, azeroth"},
mounts={288499},
patch='81000',
mounttype='Ground',
model={12247},
description="\nThis mount is acquired from locating a Frightened Kodo in Darkshore.",
},[[
step
map Darkshore/0
path	41.36,53.99	39.35,56.43	38.05,65.54	41.08,65.48	43.91,67.34
path	44.18,65.33	42.71,61.94	41.36,59.31	42.00,57.08
Follow the path
|tip Make a macro for /target Frightened Kodo while flying around.
|tip The Frightened Kodo will be running around on the ground.
|tip There won't always be a Frightened Kodo spawned, so you may need to check later.
|tip You will be flagged for PVP if your faction doesn't control Darkshore.
click Frightened Kodo
collect Frightened Kodo##166433 |n
use the Frightened Kodo##166433
Learn the "Frightened Kodo" Mount |learnmount Frightened Kodo##288499
step
_Congratulations!_
You Collected the "Frightened Kodo" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Aquatic Mounts\\Island Expedition Mounts\\Surf Jelly",{
author="support@zygorguides.com",
startlevel=45.0,
keywords={"aquatic, mount, battle, of, azeroth, island, expeditions, drop, Surf, Jelly"},
mounts={278979},
patch='80100',
mounttype='Aquatic',
model={87747},
condition_end=function() return hasmount(278979) end,
description="\nThis mount is acquired by completing an Island Expeditions.",
},[[
step
click Expedition Map
|tip Queue for an Island Expeditions.
|tip You need to complete the Island Expedition for a chance at the mount.
collect Surf Jelly##163585 |n
|tip This can come from any Island Expedition.
|tip The drop is completely random.
|tip It shares a drop table with 8 other mounts.
use the Surf Jelly##163585
Learn the Surf Jelly Mount |learnmount Surf Jelly##278979 |goto Boralus/0 66.75,33.24
step
_Congratulations!_
You Earned the "Surf Jelly" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Island Expedition Mounts\\Qinsho's Eternal Hound",{
author="support@zygorguides.com",
startlevel=45.0,
keywords={"flying, mount, battle, of, azeroth, island, expeditions, dungeon, drop, Qinsho's, Eternal, Hound"},
mounts={279469},
patch='80100',
mounttype='Ground',
model={45836},
condition_end=function() return hasmount(279469) end,
description="\nThis mount is acquired by completing an Island Expeditions.",
},[[
step
click Expedition Map
|tip Queue for an Island Expeditions.
|tip You need to complete the Island Expedition for a chance at the mount.
collect Qinsho's Eternal Hound##163582 |n
|tip This can come from any Island Expedition.
|tip The drop is completely random.
|tip It shares a drop table with 8 other mounts.
use Qinsho's Eternal Hound##163582
Learn the Qinsho's Eternal Hound Mount |learnmount Qinsho's Eternal Hound##279469 |goto Boralus/0 66.75,33.24
step
_Congratulations!_
You Earned the "Qinsho's Eternal Hound" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Island Expedition Mounts\\Squawks",{
author="support@zygorguides.com",
startlevel=45.0,
keywords={"flying, mount, battle, of, azeroth, island, expeditions, dungeon, drop, Squawks"},
mounts={254811},
patch='80100',
mounttype='Flying',
model={79916},
condition_end=function() return hasmount(254811) end,
description="\nThis mount is acquired by completing an Island Expeditions.",
},[[
step
click Expedition Map
|tip Queue for an Island Expeditions.
|tip You need to complete the Island Expedition for a chance at the mount.
collect Squawks##163586 |n
|tip This can come from any Island Expedition.
|tip The drop is completely random.
|tip It shares a drop table with 8 other mounts.
use Squawks##163586
Learn the Squawks Mount |learnmount Squawks##254811 |goto Boralus/0 66.75,33.24
step
_Congratulations!_
You Earned the "Squawks" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Island Expedition Mounts\\Twilight Avenger",{
author="support@zygorguides.com",
startlevel=45.0,
keywords={"flying, mount, battle, of, azeroth, island, expeditions, drop, Twilight, Avenger"},
mounts={279466},
patch='80100',
mounttype='Flying',
model={87775},
condition_end=function() return hasmount(279466) end,
description="\nThis mount is acquired by completing an Island Expeditions.",
},[[
step
click Expedition Map
|tip Queue for an Island Expeditions.
|tip You need to complete the Island Expedition for a chance at the mount.
collect Twilight Avenger##163584 |n
|tip This can come from any Island Expedition.
|tip The drop is completely random.
|tip It shares a drop table with 8 other mounts.
use the Twilight Avenger##163584
Learn the Twilight Avenger Mount |learnmount Twilight Avenger##279466 |goto Boralus/0 66.75,33.24
step
_Congratulations!_
You Earned the "Twilight Avenger" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Island Expedition Mounts\\Craghorn Chasm-Leaper",{
author="support@zygorguides.com",
startlevel=45.0,
keywords={"ground, mount, battle, of, azeroth, island, expeditions, dungeon, drop, Craghorn, Chasm-Leaper"},
mounts={279467},
patch='80100',
mounttype='Ground',
model={87776},
condition_end=function() return hasmount(279467) end,
description="\nThis mount is acquired by completing an Island Expeditions.",
},[[
step
click Expedition Map
|tip Queue for an Island Expeditions.
|tip You need to complete the Island Expedition for a chance at the mount.
collect Craghorn Chasm-Leaper##163583 |n
|tip This can come from any Island Expedition.
|tip The drop is completely random.
|tip It shares a drop table with 8 other mounts.
use the Craghorn Chasm-Leaper##163583
Learn the Craghorn Chasm-Leaper Mount |learnmount Craghorn Chasm-Leaper##279467 |goto Boralus/0 66.75,33.24
step
_Congratulations!_
You Earned the "Craghorn Chasm-Leaper" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Island Expedition Mounts\\Bloodgorged Hunter",{
author="support@zygorguides.com",
startlevel=45.0,
keywords={"flying, mount, battle, of, azeroth, island, expeditions, dungeon, drop, Bloodgorged, Hunter"},
mounts={288720},
patch='81000',
mounttype='Flying',
model={55151},
condition_end=function() return hasmount(288720) end,
description="\nThis mount is acquired by completing an Island Expeditions.",
},[[
step
click Expedition Map
|tip Queue for an Island Expeditions.
|tip You need to complete the Island Expedition for a chance at the mount.
collect Bloodgorged Hunter##166468 |n
|tip The drop is completely random.
|tip It shares a drop table with 8 other mounts.
use the Bloodgorged Hunter##166468
Learn the "Bloodgorged Hunter" Mount |learnmount Bloodgorged Hunter##288720 |goto Boralus/0 66.75,33.24
step
_Congratulations!_
You Earned the "Bloodgorged Hunter" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Island Expedition Mounts\\Island Thunderscale",{
author="support@zygorguides.com",
startlevel=45.0,
keywords={"flying, mount, battle, of, azeroth, island, expeditions, dungeon, drop, Island, Thunderscale"},
mounts={288721},
patch='81000',
mounttype='Flying',
model={90158},
condition_end=function() return hasmount(288721) end,
description="\nThis mount is acquired by completing an Island Expeditions.",
},[[
step
click Expedition Map
|tip Queue for an Island Expeditions.
|tip You need to complete the Island Expedition for a chance at the mount.
collect Island Thunderscale##166467 |n
|tip The drop is completely random.
|tip It shares a drop table with 8 other mounts.
use the Island Thunderscale##166467
Learn the "Island Thunderscale" Mount |learnmount Island Thunderscale##288721 |goto Boralus/0 66.75,33.24
step
_Congratulations!_
You Earned the "Island Thunderscale" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Island Expedition Mounts\\Siltwing Albatross",{
author="support@zygorguides.com",
startlevel=45.0,
keywords={"flying, mount, battle, of, azeroth, island, expeditions, dungeon, drop, Siltwing, Albatross"},
mounts={266925},
patch='81500',
mounttype='Flying',
model={84359},
condition_end=function() return hasmount(266925) end,
description="\nThis mount is acquired by completing an Island Expeditions.",
},[[
step
click Expedition Map
|tip Queue for an Island Expeditions.
Collect #1000# Seafarer's Dubloon |complete curcount(1710)>=1000 |goto Boralus/0 66.75,33.24
|tip These drop upon completing Island Expeditions.
step
talk Captain Klarisa##148922
buy Siltwing Albatross##166745 |n
use the Siltwing Albatross##166745
Learn the Siltwing Albatross Mount |learnmount Siltwing Albatross##266925 |goto 66.05,32.34
step
_Congratulations!_
You Earned the "Siltwing Albatross" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Island Expedition Mounts\\Stonehide Elderhorn",{
author="support@zygorguides.com",
startlevel=45.0,
keywords={"ground, mount, battle, of, azeroth, island, expeditions, dungeon, drop, Stonehide, Elderhorn"},
mounts={288712},
patch='81000',
mounttype='Ground',
model={87776},
condition_end=function() return hasmount(288712) end,
description="\nThis mount is acquired by completing an Island Expeditions.",
},[[
step
click Expedition Map
|tip Queue for an Island Expeditions.
|tip You need to complete the Island Expedition for a chance at the mount.
collect Stonehide Elderhorn##166470 |n
|tip This can come from any Island Expedition.
|tip The drop is completely random.
|tip It shares a drop table with 8 other mounts.
use the Stonehide Elderhorn
Learn the Stonehide Elderhorn Mount |learnmount Stonehide Elderhorn##288712 |goto Boralus/0 66.75,33.24
step
_Congratulations!_
You Earned the "Stonehide Elderhorn" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Island Expedition Mounts\\Risen Mare",{
author="support@zygorguides.com",
startlevel=45.0,
keywords={"ground, mount, battle, of, azeroth, island, expeditions, dungeon, drop, Risen, Mare"},
mounts={288722},
patch='81000',
mounttype='Ground',
model={5050},
condition_end=function() return hasmount(288722) end,
description="\nThis mount is acquired by completing an Island Expeditions.",
},[[
step
click Expedition Map
|tip Queue for an Island Expeditions.
|tip You need to complete the Island Expedition for a chance at the mount.
collect Risen Mare##166466 |n
|tip This can come from any Island Expedition.
|tip The drop is completely random.
|tip It shares a drop table with 8 other mounts.
use the Risen Mare##166466
Learn the Risen Mare Mount |learnmount Risen Mare##288722 |goto Boralus/0 66.75,33.24
step
_Congratulations!_
You Earned the "Risen Mare" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Aquatic Mounts\\Island Expedition Mounts\\Saltwater Seahorse",{
author="support@zygorguides.com",
startlevel=45.0,
keywords={"aquatic, mount, battle, of, azeroth, island, expeditions, drop, Saltwater, Seahorse"},
mounts={288711},
patch='81000',
mounttype='Aquatic',
model={34958},
condition_end=function() return hasmount(288711) end,
description="\nThis mount is acquired by completing an Island Expeditions.",
},[[
step
click Expedition Map
|tip Queue for an Island Expeditions.
Collect #500# Seafarer's Dubloon |complete curcount(1710)>=1000 |goto Boralus/0 66.75,33.24
|tip These drop upon completing Island Expeditions.
step
talk Captain Klarisa##148922
buy Saltwater Seahorse##166471 |n
use the Saltwater Seahorse##166471
Learn the Saltwater Seahorse Mount |learnmount Saltwater Seahorse##288711 |learnmount Siltwing Albatross##266925 |goto 66.05,32.34
step
_Congratulations!_
You Earned the "Saltwater Seahorse" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\The Hivemind",{
author="support@zygorguides.com",
startlevel=45.0,
keywords={"secret, mount, battle, for, azeroth, hivemind"},
mounts={261395},
patch='80100',
mounttype='Flying',
model={88835},
condition_end=function() return hasmount(261395) end,
description="\nThis mount is acquired by completing varius puzzles and secrets, including:\n\n"..
"_Red, Yellow, Green, and Blue Colored Monocles_\n"..
"_Suramar Beams (Requires Group)_\n"..
"_Lost Cat Toy (Requires Group)_\n"..
"_Jumping Puzzle (Requires Group)_\n"..
"_Arcane Lava (Requires Group)_\n"..
"_Claiming The Hivemind (Requires Group)_",
},[[
step
talk Griftah##19227
buy 1 Talisman of True Treasure Tracking##27944 |complete hasmount(261395) |goto Shattrath City/0 65.64,69.26
step
Use the Talisman of True Treasure Tracking##27944
|tip Right-click it in your bags.
Equip the Talisman of True Treasure Tracking |equipped Talisman of True Treasure Tracking##27944 |complete hasmount(261395)
step
_You must have the Talisman of True Treasure Tracking equipped in order to interact with the vendors and objects throughout this guide_
|tip The following section requires lots of running around to buy/exchange different items between vendors.
|tip The items will only last for a certain amount of time, so go from vendor to vendor as fast as possible.
|tip You do not personally need to collect all four of the monocles.
|tip Your group must have all four monocles on unique characters between the five players.
confirm |complete hasmount(261395)
step
click Letter from Ms. Graham##280815
|tip It looks like a small sealed letter laying on the corner of the table behind Griftah.
Read the First Letter |q 40397 |future |goto 65.53,69.48
step
talk Sir Finley Mrrgglton##132583
|tip It looks like a green Murloc on land at the top of a tower.
buy 500 Seashell##156791 |complete itemcount(156725) >= 1 or hasmount(261395) |goto Shimmering Expanse/0 44.57,20.20
step
talk Volatile Violetscale##132568
|tip It looks like a purple eel that swims around this area.
buy 100 Cavity-Free Great Shark Tooth##156780 |complete itemcount(156725) >= 1 or hasmount(261395) |goto Abyssal Depths/0 39.70,80.15
step
talk Manta Stargazer##132570
|tip It looks like a blue manta ray that swims around this area near the surface.
buy 50 Razoreel Larva##156786 |complete itemcount(156725) >= 1 or hasmount(261395) |goto Shimmering Expanse/0 54.26,23.23
step
talk Lil' Whaley##132569
|tip It looks like a large blue whale that swims around this area.
buy 250 Well-Fed Doctor Fish##156783 |complete itemcount(156725) >= 1 or hasmount(261395) |goto Shimmering Expanse/0 70.16,49.40
step
talk Gloomy Bluefin##132572
|tip It looks like a large blue fish that swims around this area near the sea floor.
buy 10 Freshly Molted Crab Skin##156782 |complete itemcount(156725) >= 1 or hasmount(261395) |goto Abyssal Depths/0 65.44,42.41
step
talk Ol' Fishbreath##132562
|tip It looks like a small blue shark that swims around this area.
buy 50 Glittergill Glitter##156790 |complete itemcount(156725) >= 1 or hasmount(261395) |goto Kelp'thar Forest/0 60.86,60.32
step
talk Sir Finley Mrrgglton##132583
|tip It looks like a green Murloc on land at the top of a tower.
buy 80 Seashell##156791 |complete itemcount(156725) >= 1 or hasmount(261395) |goto Shimmering Expanse/0 44.57,20.20
step
talk Gloomy Bluefin##132572
|tip It looks like a large blue fish that swims around this area near the sea floor.
buy 2 Giant Giant Toenail Clipping##156775 |complete itemcount(156725) >= 1 or hasmount(261395) |goto Abyssal Depths/0 65.44,42.41
step
talk Little Carp##132571
|tip It looks like a brown and purple fish with a large head that swims around this area.
buy 4 Makrura Eye##156776 |complete itemcount(156725) >= 1 or hasmount(261395) |goto Abyssal Depths/0 45.47,17.47
step
talk Volatile Violetscale##132568
|tip It looks like a purple eel that swims around this area.
buy 1 Accidentally-Severed Seahorse Fin##156773 |complete itemcount(156725) >= 1 or hasmount(261395) |goto Abyssal Depths/0 39.70,80.15
step
talk Crimson Angerfish##132565
|tip It looks like a red pufferfish that swims around this area.
buy 3 Shiny Sea Serpent Scale##156774 |complete itemcount(156725) >= 1 or hasmount(261395) |goto Shimmering Expanse/0 54.62,90.04
step
talk Manta Stargazer##132570
|tip It looks like a blue manta ray that swims around this area near the surface.
buy 40 Symbiotic Plankton##156789 |complete itemcount(156725) >= 1 or hasmount(261395) |goto Shimmering Expanse/0 54.26,23.23
step
talk Sir Finley Mrrgglton##132583
|tip It looks like a green Murloc on land at the top of a tower.
buy 5 Scintillating Murloc Skin Lotion##156793 |complete itemcount(156725) >= 1 or hasmount(261395) |goto Shimmering Expanse/0 44.57,20.20
step
talk Sir Finley Mrrgglton##132583
|tip It looks like a green Murloc on land at the top of a tower.
buy 300 Seashell##156791 |complete itemcount(156725) >= 1 or hasmount(261395) |goto Shimmering Expanse/0 44.57,20.20
step
talk Ol' Fishbreath##132562
|tip It looks like a small blue shark that swims around this area.
buy 30 Vantus Black Squid Ink##156771 |complete itemcount(156725) >= 1 or hasmount(261395) |goto Kelp'thar Forest/0 60.86,60.32
step
talk The Blackfish##132566
|tip It looks like a black and white orca that swims around this area.
buy 30 Super Slick Eel Slime##156770 |complete itemcount(156725) >= 1 or hasmount(261395) |goto Abyssal Depths/0 15.85,84.84 |notravel
step
talk Volatile Violetscale##132568
|tip It looks like a purple eel that swims around this area.
buy 3 Rock-Encrusted Whelk Shell##156767 |complete itemcount(156725) >= 1 or hasmount(261395) |goto Abyssal Depths/0 39.70,80.15
step
talk Little Carp##132571
|tip It looks like a brown and purple fish with a large head that swims around this area.
buy 5 Potent Gastropod Gloop##156788 |complete itemcount(156725) >= 1 or hasmount(261395) |goto Abyssal Depths/0 45.47,17.47
step
talk Sir Finley Mrrgglton##132583
|tip It looks like a green Murloc on land at the top of a tower.
buy 1500 Seashell##156791 |complete itemcount(156725) >= 1 or hasmount(261395) |goto Shimmering Expanse/0 44.57,20.20
step
talk Lil' Whaley##132569
|tip It looks like a large blue whale that swims around this area.
buy 300 Very Pretty Coral##156761 |complete itemcount(156725) >= 1 or hasmount(261395) |goto Shimmering Expanse/0 70.16,49.40
step
talk Ol' Fishbreath##132562
|tip It looks like a small blue shark that swims around this area.
buy 100 Iridescent Shimmerray Skin##156758 |complete itemcount(156725) >= 1 or hasmount(261395) |goto Kelp'thar Forest/0 60.86,60.32
step
talk Crimson Angerfish##132565
|tip It looks like a red pufferfish that swims around this area.
buy 20 Luxurous Luxscale Scale##156764 |complete itemcount(156725) >= 1 or hasmount(261395) |goto Shimmering Expanse/0 54.62,90.04
step
talk The Blackfish##132566
|tip It looks like a black and white orca that swims around this area.
buy 5 Captured Cavitation Bubble##156787 |complete itemcount(156725) >= 1 or hasmount(261395) |goto Abyssal Depths/0 15.85,84.84 |notravel
step
talk Sir Finley Mrrgglton##132583
|tip It looks like a green Murloc on land at the top of a tower.
buy 1 Red Crystal Monocle##156725 |complete itemcount(156725) >= 1 or hasmount(261395) |goto Shimmering Expanse/0 44.57,20.20
step
Enter The Halls of Origination Dungeon |goto Halls of Origination/1 49.35,93.54 < 1000 |c |complete itemcount(156726) >= 1 or hasmount(261395)
step
map Halls of Origination/1
path follow smart; loop off; ants curved
path	48.06,74.89	49.99,73.21	50.22,62.98	61.41,62.98	67.35,62.73
path	67.49,49.60
click Stellar Refraction Device##280885
|tip It looks like a bright yellow light underneath the elevator in The Maker's Rise.
|tip On the north end of the room you will find the stairs leading down.
|tip Opening your map will show an ant trail that marks the location.
confirm |complete itemcount(156726) >= 1 or hasmount(261395)
step
The goal in this room is to change the color of all the constellations to the same color
|tip Clicking the Stellar Refractors will cycle the color of nearby constellations, depending on the type of Refractor.
|tip Some of the constellations around the outside of the room will remain the same color no matter what, so try to change all other constellations to this color.
|tip Start with Refractors on the outside of the room and work your way inwards.
clicknpc Angular Stellar Refractor##132553+
|tip Refractor with a cross formation, cycles the colors of constellations to the north, south, east and west.
clicknpc Jagged Stellar Refractor##132554+
|tip Refractor with an X formation, cycles the colors of constellations to the northwest, northeast, southwest and southeast.
clicknpc Round Stellar Refractor##132552+
|tip Refractor with a round formation, cycles the colors of constellations around the refractor.
click Star-touched Chest##280886
|tip Once all constellations are the same, a chest will spawn in the middle of the room.
collect 1 Yellow Crystal Monocle##156726 |complete itemcount(156726) >= 1 or hasmount(261395)
step
Enter the Skyreach Dungeon |goto Skyreach/1 59.14,24.49 < 1000 |c |complete itemcount(156727) >= 1 or hasmount(261395)
step
map Skyreach/2
path follow smart; loop off; ants curved
path	45.10,14.18	 45.57,14.08
kill High Sage Viryx##76266
|tip She is the last boss of the dungeon.
|tip Use the "Skyreach" dungeon guide to accomplish this.
click "Basic" Instructions##280861 |goto Skyreach/2 42.02,86.05
|tip It looks like an open scroll hanging to the left of the Glowing Orb console.
|tip Opening your map will show an ant trail that marks the location.
|tip You must have the Talisman of True Treasure Tracking equipped to interact with it.
confirm |complete itemcount(156727) >= 1 or hasmount(261395)
step
Click the Glowing Orbs on the console next to the "Basic Instructions" scroll
click Small Glowing Orb##280856
|tip Click the center orb to activate the console.
click Glowing Orb##280857+
Click order: Right, up, down, up, right, right, up, left, down, up, left, down
|tip Don't click the Small Glowing Orb in the center again, it will reset the console.
click Sun-Worn Chest##280883
collect 1 Green Crystal Monocle##156727 |complete itemcount(156727) >= 1 or hasmount(261395)
step
use the Talisman of True Treasure Tracking##27944
Equip the Talisman of True Treasure Tracking |equipped Talisman of True Treasure Tracking##27944 |complete itemcount(156724) >= 1 or hasmount(261395)
step
Enter the building |goto Highmountain/0 57.77,27.79 < 5 |walk
click Letter from Ms. Graham##280836
|tip Inside the building.
Read the Second Letter |q 40314 |future |goto 57.41,27.91
step
Enter the Karazhan Raid |goto Karazhan/1 60.11,79.34 < 1000 |c |complete itemcount(156724) >= 1 or hasmount(261395)
step
click Letter from Ms. Graham##280837
|tip It looks like a small sealed letter sitting on a chair in Medivh's Chambers between the Chess Event and Prince Malchezaar.
|tip It's the first room as you go up the spiraling staircase.
Read the Third Letter |q 40404 |future |goto Karazhan/15 46.05,26.45
step
Enter the Razorfen Downs Dungeon |goto Razorfen Downs/1 26.11,18.22 < 1000 |c |complete itemcount(156724) >= 1 or hasmount(261395)
step
map Razorfen Downs/1
path follow smart; loop off; ants curved
path	33.43,18.28	38.02,24.09	43.04,18.28	46.34,21.08	42.47,29.25
path	50.22,34.62	53.23,28.60	63.71,41.51	78.48,34.19	85.80,46.02
path	77.76,42.37	72.02,46.45	65.85,51.18	51.79,44.73	38.45,44.73
path	33.00,55.91	36.30,70.97	45.05,76.34	53.23,59.14	49.50,51.18
path	39.45,49.25	36.15,55.05	38.16,66.02	46.48,68.39	50.07,58.92
path	46.34,54.41	40.75,53.98	40.17,63.23	45.62,62.37
click Letter from Ms. Graham##280838
|tip It looks like a small sealed letter sitting on a crude crate behind Death Speaker Blackthorn.
|tip Use the "Razorfen Downs" dungeon guide to complete the dungeon.
|tip Opening your map will show an ant trail that marks the location.
Read the Fourth Letter |q 40252 |future
step
Enter the building |goto Mount Hyjal/0 44.33,47.27 < 5 |walk
click Letter from Ms. Graham##280842
|tip Inside the building.
|tip It looks like a small sealed letter sitting on a table at the top of the Shrine of Aviana.
Read the Fifth Letter |q 40293 |future |goto 44.42,46.62
step
click Letter from Ms. Graham##280843
|tip It looks like a small sealed letter sitting on the edge of the stone bridge.
Read the Sixth Letter |q 40288 |future |goto Icecrown/0 70.76,73.37
step
click Letter from Ms. Graham##280844
|tip It is at the base on the right side of the monument.
Read the Seventh Letter |q 50187 |future |goto Townlong Steppes/0 37.81,62.99
step
click Gift from Ms. Graham##280845
|tip It looks like a small glowing purple box all the way up on the highest ring of The Nexus.
collect 1 Blue Crystal Monocle##156724 |q 50181 |future |goto Borean Tundra/0 27.54,27.08
step
The rest of this guide requires a group of 5 to complete
|tip The group must have one person with each monocle, as all four monocles are required to progress.
|tip Four different group members, each with a different colored monocle.
confirm |complete hasmount(261395)
step
Send a group member to each location below:
|tip Click on the name of the NPC or the Blocked Drawer to change coordinates.
|tip The first four members must kill an NPC while wearing a specific monocle.
_These NPCs need to be killed at the same time!_
|tip The last member must run into a room once the 4 NPCs have been killed and have used Draw Energy to unblock the doorway.
|tip Draw Energy will cause the beams blocking the Blocked Drawer to disappear.
kill Yorilan##132598 |goto Suramar/0 43.63,81.67
|tip The Yellow Crystal Monocle must be worn to damage Yorilan.
kill Giluzui##132597 |goto 20.56,46.03
|tip Inside the building.
|tip The Green Crystal Monocle must be worn to damage Giluzui.
kill Blom'an##132596 |goto 46.96,28.41
|tip The Blue Crystal Monocle must be worn to damage Blom'an.
kill Rikei##132595 |goto 71.97,62.81
|tip The Red Crystal Monocle must be worn to damage Rikei.
Blocked Drawer Room |goto 41.16,69.83
|tip Upstairs inside the building.
|tip Run into the room once it has been unblocked.
confirm |complete hasmount(261395)
step
Once inside the Drawer room:
_Remove any gear or buffs that give absorption shields_
|tip Absorption shields will reduce the amount of damage you take in this step, which will give you an incorrect code.
|tip Clicking the next object will cause you to take damage and be teleported.
|tip The amount of damage you take will be the code for your group.
|tip Use the "What happened to me?" section of the combat log to get an exact number.
|tip For example, if you take 12,345 damage, the code for your group is 12345.
|tip Write this number down, it will be used to determine the amount of times you pet cats in the next section.
click Lost Cat Toy##280903 |goto 41.17,69.93
|tip It looks like a small circular object underneath the pillows on the floor inside the building.
confirm |complete hasmount(261395)
step
Once your group has your code:
Enter the Court of Stars dungeon |goto Court of Stars/1 8.11,69.15 < 1000 |c |complete hasmount(261395)
step
kill Patrol Captain Gerdo##104215
|tip He walks around this area.
|tip Use the dungeon guides to accomplish this.
Defeat Patrol Captain Gerdo |scenariogoal 1/29612 |complete hasmount(261395) |goto 34.28,28.10
step
map Court of Stars/1
path follow smart; loop off; ants curved
path	49.29,68.10	49.29,68.24
The cats that your group must pet based on your code are in a small house to the southwest of Talixae Flamewreath
|tip Opening your map will show an ant trail that marks their location.
_The pet order is: Mrs. Fluffymuffins, Shadow, Mew, Ash, then Bella_
|tip One group member per cat.
|tip Use your group's code to pet the cats.
|tip For example, if your code was 13645 you would pet Mrs. Fluffymuffins once, Shadow three times, Mew six times, Ash four times and Bella 5 times.
|tip If there is a 0 in your code, skip petting that cat.
|tip If your code is only 4 digits, (for example you only took 1,132 damage), add a 0 to the front so it's 5 digits, making your code 01132 (so you'd skip petting the first cat).
|tip When a cat is pet the cat will receive one stack of "Purring."
|tip This stacking buff is how you keep track of the number of pets for each cat.
|tip When done correctly an Ominous Orb will spawn; click it to continue to the next area.
confirm |complete hasmount(261395)
step
Assign each member of the group a number from 1 to 5
|tip This number will be each member's number for a jumping puzzle.
Follow the jumping pattern below:
|tip The number represents the player assigned to that number.
|tip F means jump forward, L means jump left, R means jump right, and B means jump backwards.
|tip The first F for each player is them jumping onto the first platform.
1FF
2FLF
1F
3FFRR
4FL
5F
2L
4F
confirm |complete hasmount(261395)
step
Jumping Puzzle Continued:
2L
4LF
2FL
3B
4FRRR
3F
5F
1RF
3BFR
1FL
confirm |complete hasmount(261395)
step
Jumping Puzzle Continued:
4F
2BF
5F
2BF
5R
3F
1FR
2FR
4F
2LF
confirm |complete hasmount(261395)
step
Jumping Puzzle Continued:
4F
1RF
3L
4F
3FF
5F
1L
4R
5L
2F
confirm |complete hasmount(261395)
step
Jumping Puzzle Continued:
4F
5FF
1F
3L
5RF
4F
1R
5L
1F
2F
confirm |complete hasmount(261395)
step
Jumping Puzzle Continued:
3 Jump off (Click "Exit Vehicle")
3 Go to far left platform
3F
2F
3FFF
2B
4R
5F
2FRF
3FFFF
All group members should now be across
confirm |complete hasmount(261395)
step
The last puzzle is solved through a lot of trial and error
|tip You will be using a black floating disc to shuttle players over a pool of arcane lava, but not everyone can ride together.
Use trial and error to find out who in the group is who:
|tip Start by sending groups of two across.
|tip If someone gets knocked off the disc those two people aren't compatible together.
Person A: can go across with anyone
|tip Person A should remain on the disc until the very end.
Person B: can cross with Person A or in a trio
Person C, D, and E: can cross in a duo along with Person A
Proceed across as follows:
1. Person A, B, and C go across
2. C gets off, A and B go back to beginning
3. B gets off at beginning, A and D go across
4. D gets off and A and C go back to beginning
5. B gets on with A and C and goes across
6. C gets off, A and B go back to beginning
7. B gets off at beginning, A and E go across
8. E gets off, A and C go back to beginning
9. B gets on and goes across with A and C
confirm |complete hasmount(261395)
step
Enter the room to the northwest
|tip After all group members have crossed the arcane lava.
|tip Each group member must stand on a purple arcane pad.
clicknpc The Hivemind##132609
|tip Click The Hivemind at the same time and channel the spell.
collect 1 The Hivemind##156798 |complete hasmount(261395)
step
use The Hivemind##156798
learnmount The Hivemind##261395
step
_Congratulations!_
You Collected "The Hivemind" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\X-995 Mechanocat",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"mount","mechagon","island"},
mounts={294143},
patch='82000',
mounttype='Ground',
model={92666},
description="\nThis mount can be crafted at Pascal-K1N6 on Mechagon Island after purchasing the blueprint for 500 gold "..
"from Cork Stuttguard in Bondo's Yard.",
},[[
step
talk Cork Stuttguard##152321
buy 1 Blueprint: Mechanocat Laser Pointer##167787 |goto Mechagon Island/0 63.34,42.94 |q 55056 |future
|tip This blueprint costs 500 gold.
step
accept Blueprint: Mechanocat Laser Pointer##55056
|tip You will accept this quest automatically.
step
talk Pascal-K1N6##150359
turnin Blueprint: Mechanocat Laser Pointer##55056 |goto 71.35,32.28
step
collect 5 Energy Cell##166970 |complete hasmount(294143)
|tip You can get these by converting Empty Energy Cells at the Charging Station in Bondo's Yard.
|tip You can also get these as drops from rare spawns and chests.
step
collect 4 Chain ignitercoil##168327 |complete hasmount(294143)
|tip They drop from rare spawns and chests and are awarded for world quests and daily quests.
step
talk Pascal-K1N6##150359
_<Create 8 S.P.A.R.E. Crates>_
collect 8 S.P.A.R.E. Crate##169610 |goto 71.35,32.29 |complete hasmount(294143)
step
talk Pascal-K1N6##150359
_<Create 1 Mechanocat Laser Pointer>_
collect 1 Mechanocat Laser Pointer##167751 |goto 71.35,32.29 |complete hasmount(294143)
step
use the Mechanocat Laser Pointer##167751
Learn the "Mechanocat Laser Pointer" Mount |learnmount Mechanocat Laser Pointer##294143
step
_Congratulations!_
You Collected the "Mechanocat Laser Pointer" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Teldrassil Hippogryph",{
author="support@zygorguides.com",
startlevel=45.0,
keywords={"flying, mount, battle, for, azeroth, quest, alliance"},
mounts={274610},
patch='80100',
mounttype='Flying',
model={86527},
condition_end=function() return hasmount(274610) end,
description="\nThis mount is acquired by completing the \"Burning of Teldrassil\" event.",
},[[
step
accept A Short-Lived Peace##52058
|tip You will accept this quest automatically.
step
Enter the building |goto Stormwind City/0 80.69,37.80 < 5 |walk
talk Anduin Wrynn##107574
|tip Inside the building.
turnin A Short-Lived Peace##52058 |goto 85.90,31.57
accept The Horde Uprising##52060 |goto 85.90,31.57
step
talk Master Mathias Shaw##139798
|tip Inside the building.
turnin The Horde Uprising##52060 |goto 85.15,32.35
accept A Disturbance in Ashenvale##52062 |goto 85.15,32.35
step
Follow the path |goto 83.88,30.57 < 5 |only if walking
Run up the stairs |goto 83.25,29.36 < 5 |only if walking
click Portal to Astranaar##297575
Take the Portal to Astranaar |q 52062/1 |goto 82.68,26.84
step
Find Delaryn Summermoon |q 52062/2 |goto Ashenvale/0 35.79,49.99
step
talk Captain Delaryn Summermoon##134578
turnin A Disturbance in Ashenvale##52062 |goto 35.86,50.43
accept The Light of Elune##52072 |goto 35.86,50.43
accept Knives of the Forsaken##53616 |goto 35.86,50.43
stickystart "Slay_Forsaken_Assassins"
step
clicknpc Astranaar Sentinel##144282+
|tip They look like Night Elf corpses on the ground around this area.
Honor #6# Fallen Soldiers |q 52072/1 |goto 35.88,50.20
step
label "Slay_Forsaken_Assassins"
kill Forsaken Assassin##140801+
|tip They are stealthed around this area.
Slay #8# Forsaken Assassins |q 53616/1 |goto 36.06,50.26
step
talk Captain Delaryn Summermoon##134578
turnin The Light of Elune##52072 |goto 35.86,50.43
turnin Knives of the Forsaken##53616 |goto 35.86,50.43
accept A Soft Glow##52116 |goto 35.86,50.43
step
Meet Malfurion at the Entrance to Darkshore |q 52116/1 |goto Darkshore/0 43.82,89.82
step
Watch the dialogue
talk Malfurion Stormrage##133693
turnin A Soft Glow##52116 |goto 43.58,89.25
accept Hidden Amongst the Leaves##52234 |goto 43.58,89.25
accept Mercy for the Mad##53617 |goto 43.58,89.25
stickystart "Slay_Frenzied_Blackwood_Furbolgs"
step
talk Druid of the Claw##140633+
|tip They look like friendly druids on the ground around this area.
|tip Some are shapeshifted in animal form and some aren't.
Tell them _"You must defend the Grove of the Ancients!"_
Dispatch #8# Druids |q 52234/1 |goto 42.07,77.29
step
label "Slay_Frenzied_Blackwood_Furbolgs"
kill 10 Frenzied Blackwood Furbolg##140686 |q 53617/1 |goto 41.72,76.89
step
talk Captain Delaryn Summermoon##134578
turnin Hidden Amongst the Leaves##52234 |goto 43.41,75.56
turnin Mercy for the Mad##53617 |goto 43.41,75.56
accept Garden Grove##52240 |goto 43.41,75.56
step
kill Monstrous Shredder##143562 |q 52240/1 |goto 43.98,75.34
|tip You may need help with this.
step
talk Captain Delaryn Summermoon##134578
turnin Garden Grove##52240 |goto 45.20,74.96
step
talk Onu##33072
accept Enraged Furbolgs##52245 |goto 45.41,74.85
step
talk Elder Brolg##140719
Tell him _"Come with us to safety. We will not harm you."_
Rescue Elder Brolg |q 52245/1 |goto 43.54,81.08
step
_Next to you:_
talk Captain Delaryn Summermoon##140728
accept Elves in the Machine##53551
stickystart "Sabotage_Horde_Demolishers"
step
talk Elder Brownpaw##140721
Tell him _"Come with us to safety. We will not harm you."_
Rescue Elder Brownpaw |q 52245/3 |goto 46.47,85.73
step
Enter the cave |goto 46.43,83.73 < 5 |walk
talk Gren Tornfur##140720
|tip Inside the cave.
Tell him _"Come with us to safety. We will not harm you."_
Rescue Gren Tornfur |q 52245/2 |goto 46.63,83.90
step
label "Sabotage_Horde_Demolishers"
clicknpc Horde Demolisher##144103+
|tip They look like large siege vehicles on the ground around this area.
|tip Use the "Sleeping Powder" ability onscreen to put enemies to sleep.
Sabotage #5# Horde Demolishers |q 53551/1 |goto 45.07,85.52
step
_Next to you:_
talk Captain Delaryn Summermoon##140728
turnin Elves in the Machine##53551
step
talk Onu##33072
turnin Enraged Furbolgs##52245 |goto 45.41,74.85
accept The Wake of Something New##52242 |goto 45.41,74.85
step
click Azerite Deposit##292886
Discover the Source of Onu's Pain |q 52242/1 |goto 34.66,85.17
step
talk Captain Delaryn Summermoon##134578
turnin The Wake of Something New##52242 |goto 34.73,85.11
accept Azerite Denial##53619 |goto 34.73,85.11
accept No Horde Allowed##53621 |goto 34.73,85.11
stickystart "Collect_Azerite"
step
Kill enemies around this area
Slay #10# Horde Combatants |q 53621/1 |goto 32.48,84.42
step
label "Collect_Azerite"
click Azerite Deposit##292886+
|tip They look like small blue crystals sticking out of the ground around this area.
Collect #6# Azerite |q 53619/1 |goto 32.50,84.24
step
talk Captain Delaryn Summermoon##134578
turnin Azerite Denial##53619 |goto 34.73,85.11
turnin No Horde Allowed##53621 |goto 34.73,85.11
accept Malfurion Returns##52256 |goto 34.73,85.11
step
talk Malfurion Stormrage##133693
turnin Malfurion Returns##52256 |goto 42.30,66.80
accept "Rock" The World##52257 |goto 42.30,66.80
step
clicknpc Tree of Life##143861
Speak with Tree of Life |q 52257/1 |goto 42.07,66.84
step
Kill enemies around this area
|tip Use the abilities on your action bar.
Slay #50# Horde Enemies |q 52257/2 |goto 42.17,69.08
step
talk Malfurion Stormrage##133693
turnin "Rock" The World##52257 |goto 42.30,66.80
accept Long Away##52197 |goto 42.30,66.80
step
talk Captain Delaryn Summermoon##134578
turnin Long Away##52197 |goto Darnassus/0 40.00,50.42
accept A Looming Threat##52279 |goto 40.00,50.42
step
talk Janthes Shadeleaf##144146
Tell him _"The Horde have halted their advance at the Wildbend River! We must push them back at once!"_
Rally the Druids of the Claw |q 52279/2 |goto 45.61,35.93
step
talk Myara Sunsong##140498
Tell her _"Captain, the Horde have reached the Wildbend River! We cannot hold them for long!"_
Rally the Kaldorei Forces |q 52279/3 |goto 61.00,49.41
step
talk Astarii Starseeker##4090
Tell her _"Priestess, we require your aid to hold the Horde at Wildbend River."_
Rally the Priestesses of the Moon |q 52279/1 |goto 42.99,73.06
step
talk Malfurion Stormrage##140877
turnin A Looming Threat##52279 |goto Teldrassil/0 58.47,89.49
step
talk Captain Delaryn Summermoon##134578
accept A Threat from the North##52973 |goto 58.48,89.41
|tip You will accept this quest automatically.
step
talk Malfurion Stormrage##140877
turnin A Threat from the North##52973 |goto Darkshore/0 50.42,20.01
accept Rescue Effort##52974 |goto 50.42,20.01
accept Defending Lor'danel##53622 |goto 50.42,20.01
step
talk Captain Delaryn Summermoon##134578
accept Action This Day##52975 |goto 50.43,19.68
stickystart "Slay_Horde_Attackers"
step
talk Lor'danel Citizen##142408+
|tip They look like friendly NPCs cowering in fear on the ground around this area.
Tell them _"I have cleared a path - - you must escape now!"_
Rescue #8# Lor'danel Citizens |q 52974/1 |goto 50.75,19.24
step
label "Slay_Horde_Attackers"
Kill enemies around this area
Slay #15# Horde Attackers |q 53622/1 |goto 50.81,19.16
step
kill Gormok Axefall##144364 |q 52975/1 |goto 47.67,20.42
step
kill Ragash Bloodwish##144365 |q 52975/2 |goto 46.82,18.82
step
talk Captain Delaryn Summermoon##134578
turnin Rescue Effort##52974 |goto 50.43,19.68
turnin Action This Day##52975 |goto 50.43,19.68
turnin Defending Lor'danel##53622 |goto 50.43,19.68
accept The Guidance of Our Shan'do##52977 |goto 50.43,19.68
step
Find Malfurion in Darkshore |q 52977/1 |goto 46.24,24.23
step
Watch the dialogue
Assist Malfurion |q 52977/2 |goto 45.94,24.47
step
clicknpc Tamed Hippogryph##142110
Use Tyrande's Mount |q 52977/3 |goto 45.96,24.96
step
Return to Darnassus |goto Darnassus/0 43.01,73.09 < 5 |c |notravel |q 52977
step
Enter the building |goto 43.01,74.83 < 5 |walk
talk Mia Greymane##142978
|tip Inside the building.
turnin The Guidance of Our Shan'do##52977 |goto 43.09,78.62
accept A Flicker of Hope##53095 |goto 43.09,78.62 |only if not completedq(53310)
step
Leave the building |goto 43.01,74.80 < 3 |walk
Put out fires
|tip Use the "Douse" ability on your screen.
|tip Use it to put out fires around this area.
talk Darnassian Citizen##143409+
Tell them _"The flames are clear! Get to the Temple of the Moon!"_
Evacuate #982# Darnassian Citizens |q 53095/1 |goto 58.76,68.28 |only if not completedq(53310)
|tip You will fail this quest.
step
Watch the dialogue
accept From the Ashes...##53310 |goto 43.38,78.28
|tip You will accept this quest automatically.
step
click Portal to Stormwind##303144 |goto 43.91,78.68
Teleport to Stormwind |goto Stormwind City/0 49.59,86.53 < 5 |c |noway |q 53310
step
Enter the building |goto 80.69,37.80 < 5 |walk
talk Anduin Wrynn##107574
|tip Inside the building.
turnin From the Ashes...##53310 |goto 85.90,31.57
step
use the Smoldering Reins of the Teldrassil Hippogryph##163127
learnmount Teldrassil Hippogryph##274610
step
_Congratulations!_
You Collected the "Teldrassil Hippogryph" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Aquatic Mounts\\Profession Mounts\\Great Sea Ray",{
author="support@zygorguides.com",
startlevel=45.0,
keywords={"aquatic, mount, battle, for, azeroth"},
mounts={278803},
patch='80100',
mounttype='Aquatic',
model={73253},
description="\nThis mount is acquired by a random world drop.",
},[[
step
Fish in any water on Kul Tiras or Zandalar
collect Great Sea Ray##163131 |n
|tip This comes from fishing in any water in BFA zones.
use the Great Sea Ray##163131
Learn the "Great Sea Ray" Mount |learnmount Great Sea Ray##278803 |goto Nazmir/0 60.67,20.67
step
_Congratulations!_
You Collected the "Great Sea Ray" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Profession Mounts\\Engineering\\Mecha-Mogul Mk2",{
author="support@zygorguides.com",
startlevel=45.0,
keywords={"flying, mount, battle, for, azeroth"},
mounts={274621},
patch='80100',
mounttype='unknown',
model={},
description="\nThis mount is acquired by crafting it with the Engineering profession.",
},[[
step
Reach Level 150 Kul Tiran Engineering |skill Kul Tiran Engineering,150 |or
|tip Use the "Kul Tiran Engineering" profession guide to accomplish this.
'|learnmount Mecha-Mogul Mk2##274621 |or
step
Equip a "AZ3-R1-T3" Headgear
|tip This is a crafted item.
|tip You will need to have the 3 levels of Azerite Upgrades available.
|tip For the first slot, choose the upgrade that grants +25 Zandalari Engineering.
|tip For the third slot, choose the upgrade that grants +30 Zandalari Engineering.
|tip The higher your Zandalari Engineering skill, the higher the chance for drops later.
Click here to continue |confirm |complete hasmount(274621)
step
collect 50 Platinum Ore##152513 |complete hasmount(274621)
|tip Use the "Platinum" profession farming guide if you have Mining.
|tip You can also purchase them from the Auction House.
step
collect 100 Storm Silver Ore##152579 |complete hasmount(274621)
|tip Use the "Storm Silver" profession farming guide if you have Mining.
|tip You can also purchase them from the Auction House.
step
kill Mogul Razdunk##131227
|tip You will need to kill Mogul Razdunk on "Mythic difficulty"
|tip You need a premade group in order to do Mythic dungeons.
Enter The MOTHERLODE!! |goto The MOTHERLODE!!/0 0.00,0.00 < 1000 |c |complete hasmount(274621)
step
Kill trash mobs inside of The MOTHERLODE!!
collect Azerite Inspir-A-Geneering Elixir##161138 |complete hasmount(274621)
|tip You can also buy this from the Auction House.
step
use the Azerite Inspir-A-Geneering Elixir##161138
Gain the Azerite Inspir-A-Geneering buff |havebuff Time Travelling##133214 |complete hasmount(274621)
stickystart "Collect_Blast-Fired_Electric_Servomotor"
stickystart "Collect_Crush_Resistant_Stabilizer"
stickystart "Collect_Barely_Stable_Azerite_Reactor"
stickystart "Collect_Mecha-Mogul_Mk1_Remote_Activation_Device"
step
collect 20 Azerite Forged Protection Plating##161136 |complete hasmount(274621)
|tip These come from Shredders between the last two bosses.
|tip You must have the "Kul Turan Skinning" skill in order to collect these.
step
label "Collect_Blast-Fired_Electric_Servomotor"
collect 20 Blast-Fired Electric Servomotor##161137 |complete hasmount(274621)
|tip These come from Venture Co. War Machines while having the Azerite Inspir-A-Geneering buff.
step
label "Collect_Crush_Resistant_Stabilizer"
collect 20 Crush Resistant Stabilizer##161132 |complete hasmount(274621)
|tip These come from mechanical enemies in the MOTHERLODE!! on Mythic difficulty.
step
label "Collect_Barely_Stable_Azerite_Reactor"
collect 1 Barely Stable Azerite Reactor##161131 |complete hasmount(274621)
|tip This comes from Dr Boom in the MOTHERLODE!! on Mythic difficulty.
|tip He is found before the first boss.
step
label "Collect_Mecha-Mogul_Mk1_Remote_Activation_Device"
collect 1 Mecha-Mogul Mk1 Remote Activation Device##161129 |complete hasmount(274621)
|tip This comes from Mogul Razdunk, the last boss of The MOTHERLODE!! on Mythic difficulty.
step
kill Mogul Razdunk##132713
|tip He's the last boss of the instance.
collect Schematic: Mecha-Mogul Mk2##161135 |complete hasmount(274621)
step
use the Schematic: Mecha-Mogul Mk2##161135
Learn the "Mecha-Mogul Mk2" Recipe |learn Mecha-Mogul Mk2##274621 |complete hasmount(274621)
step
collect 20 Expulsom##152668 |complete hasmount(274621)
|tip They are obtained from World Quests, Salvaging Gear, Milling Herbs and scrapping magical items.
You can find the Shred-Master Mk1 here [Boralus/0 77.13,16.34]
step
Open Your Kul Tiran Engineering Crafting Panel:
_<Create a Mecha-Mogul Mk2>_
collect Mecha-Mogul Mk2##161134 |complete hasmount(274621)
step
use the Mecha-Mogul Mk2##161134
Learn the "Mecha-Mogul Mk2" Mount |learnmount Mecha-Mogul Mk2##274621
step
_Congratulations!_
You Collected the "Mecha-Mogul Mk2" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Quest Mounts\\Scrapforged Mechaspider",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"mount","mechagon","island"},
mounts={299159},
patch='82000',
mounttype='Ground',
model={90712},
description="\nThis mount is acquired by completing the \"Drive It Away Today\" questline on Mechagon Island.",
},[[
leechsteps "Leveling Guides\\Battle for Azeroth (10-50)\\Kul Tiras\\Mechagon Island\\Mechagon Island" 1-138
step
use the Scrapforged Mechaspider##168827
Learn the "Scrapforged Mechaspider" Mount |learnmount Scrapforged Mechaspider##299159
step
_Congratulations!_
You Collected the "Scrapforged Mechaspider" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Quest Mounts\\Deepcoral Snapdragon",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"mount","ground","deepcoral","snapdragon","akana"},
mounts={300147},
patch='82000',
mounttype='Ground',
model={91236},
description="\nThis mount is acquired by completing the \"Wild Tame\" quest after reaching rank 20 with Hunter Akama in Nazjatar.",
},[[
step
Unlock Nazjatar Bodyguards and World Quests |q 57006 |future
|tip Use the "Nazjatar" leveling guide to accomplish this.
|tip This quest, "A Worthy Ally", is finished on step 84 of the guide.
|tip Earning this mount will also unlock the Horde version, Snapdragon Kelpstalker.
step
click Deepflame Campfire##332622
Choose _<Recruit Hunter Akama>_
Recruit Hunter Akama |havebuff spell:291281 |goto Nazjatar/0 39.47,53.54 |complete hasmount(300147)
step
With Hunter Akama as your Bodyguard:
Reach Rank 20 with Hunter Akama
|tip Complete bodyguard quests using the "Nazjatar World Quests" guide.
confirm |complete hasmount(300147)
step
_Next to you:_
talk Hunter Akana##150202
|tip He should be next to you, if not recruit him from the Deepflame Campfire in Mezzamere.
accept Wild Tame##56217
step
_Next to you:_
talk Hunter Akana##150202
|tip He should be next to you, if not recruit him from the Deepflame Campfire in Mezzamere.
turnin Wild Tame##56217
step
use the Deepcoral Snapdragon##169200
Learn the "Deepcoral Snapdragon" Mount |learnmount Deepcoral Snapdragon##300147
step
_Congratulations!_
You Collected the "Deepcoral Snapdragon" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Order of Embers\\Smoky Charger",{
author="support@zygorguides.com",
startlevel=45.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={260173},
patch='80100',
mounttype='Ground',
model={82161},
description="\nThis mount is acquired by becoming Exalted with the Order of Embers then buying the mount for 10,000 gold.",
},[[
step
Load the "Order of Embers" Reputation Guide |confirm |next "Reputations Guides\\Battle for Azeroth\\Order of Embers"
|tip Click the line above to load the guide.
Reach Exalted Reputation with the Order of Embers |complete rep('Order of Embers')==Exalted
step
talk Quartermaster Alcorn##135815
buy Reins of the Smoky Charger##161910 |n
use the Reins of the Smoky Charger##161910
Learn the "Smoky Charger" Mount |learnmount Smoky Charger##260173 |goto Drustvar/0 37.89,49.00
step
_Congratulations!_
You Collected the "Smoky Charger" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Proudmoore Admiralty\\Admiralty Stallion",{
author="support@zygorguides.com",
startlevel=45.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={237287},
patch='80100',
mounttype='Ground',
model={82148},
description="\nThis mount is acquired by becoming Exalted with the Proudmoore Admiralty then buying the mount for 10,000 gold.",
},[[
step
Load the "Proudmoore Admiralty" Reputation Guide |confirm |next "Reputations Guides\\Battle for Azeroth\\Proudmoore Admiralty"
|tip Click the line above to load the guide.
Reach Exalted Reputation with the Proudmoore Admiralty |complete rep('Order of Embers')==Exalted
step
Enter the building |goto Boralus/0 68.74,21.09 < 5 |walk
talk Provisioner Fray##135808
|tip Inside the building.
buy Reins of the Admiralty Stallion##161911 |n
use the Reins of the Admiralty Stallion##161911
Learn the "Admiralty Stallion" Mount |learnmount Admiralty Stallion##237287 |goto 67.51,21.56
step
_Congratulations!_
You Collected the "Admiralty Stallion" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Storm's Wake\\Dapple Gray Horse",{
author="support@zygorguides.com",
startlevel=45.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={260172},
patch='80100',
mounttype='Ground',
model={81693},
description="\nThis mount is acquired by becoming Exalted with the Storm's Wake then buying the mount for 10,000 gold.",
},[[
step
Load the "Storm's Wake" Reputation Guide |confirm |next "Reputations Guides\\Battle for Azeroth\\Storm's Wake"
|tip Click the line above to load the guide.
Reach Exalted Reputation with the Storm's Wake |complete rep('Storm\'s Wake')==Exalted
step
talk Sister Lilyana##135800
buy Reins of the Dapple Gray##161912 |n
use the Reins of the Dapple Gray##161912
Learn the "Dapple Gray Horse" Mount |learnmount Dapple Gray##260172 |goto Stormsong Valley/0 59.29,69.34
step
_Congratulations!_
You Collected the "Dapple Gray Horse" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Reputation Mounts\\Honeyback Harvester",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Reputation","Hive","Bee"},
mounts={259741},
patch='80100',
mounttype='Flying',
model={81967},
description="\nThis mount is attained by reaching Exalted status with the \"Honeyback Hive\" faction and "..
"raising a Honeyback Harvester bee to full maturity.",
},[[
leechsteps "Reputations Guides\\Battle for Azeroth\\Honeyback Harvester" 1-27
step
use the Honeyback Harvester's Harness##170069
Learn the "Honeyback Harvester" Mount |learnmount Honeyback Harvester##259741
step
_Congratulations!_
You Collected the "Honeyback Harvester" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Aquatic Mounts\\Vendor Mounts\\Crimson Tidestallion",{
author="support@zygorguides.com",
startlevel=45.0,
keywords={"mount"},
mounts={300153},
patch='82000',
mounttype='Aquatic',
model={92254},
description="\nThis mount is can be purchased from Mrrl in Nazjatar after purchasing numerous other items in a specific order.",
},[[
step
Obtain an Azsh'iri Stormsurger Cape |complete itemcount(169489) >= 1 |goto Nazjatar/0 37.85,55.71
|tip This is obtained randomly from Benthic Cloak tokens.
|tip You can purchase them here from Artisan Itanu for five Prismatic Manapearls.
|tip You can also acquired them randomly from mobs and chests in Nazjatar.
step
Equip the Azsh'iri Stormsurger Cape |equipped Azsh'iri Stormsurger Cape##169489
step
Enter the cave |goto 46.39,32.59 < 15 |walk
Talk Murlaco
|tip Inside the cave.
|tip It costs 666 gold.
buy 1 Hungry Herald's Tentacle Taco##170100 |goto 45.60,32.39
step
talk Mrrglrlr##151950
|tip It runs around the rocks.
buy 714 Slimy Naga Eyeball##167896 |goto 38.41,54.28
step
talk Hurlgrl##151953
buy 128 Sweet Sea Vegetable##167915 |goto 38.65,54.46
step
talk Flrgrrl##151952
buy 324 Unidentified Mass##167912 |goto 39.97,53.43
buy 32 Just Regular Butter##167911 |goto 39.97,53.43
step
talk Grrmrlg##151951
buy 238 Curious Murloc Horn##167905 |goto 37.50,53.45
step
talk Hurlgrl##151953
buy 48 Dirty Sock##167916 |goto 38.65,54.46
buy 14 Healthy Murloc Lunch##167913 |goto 38.65,54.46
step
use the Dirty Sock##167916
|tip Use all of them.
|tip You must be standing in water.
Clean the Socks |complete itemcount(167923) >= 48 |goto 38.93,57.67
step
talk Grrmrlg##151951
buy 16 Sea Giant Foot Dust##167908 |goto 37.50,53.45
step
talk Mrrglrlr##151950
|tip It runs around the rocks.
buy 2 Pulsating Blood Stone##169780 |goto 38.41,54.28
buy 16 Smelly Pile of Gloop##167904 |goto 38.41,54.28
step
talk Flrgrrl##151952
buy 28 Ghost Food##167909 |goto 39.97,53.43
step
talk Hurlgrl##151953
buy 4 Cultist Pinky Finger##169783 |goto 38.65,54.46
step
talk Mrrl##152084
buy 1 Crimson Tidestallion##169202 |goto 39.10,54.32
step
use the Crimson Tidestallion##169202
collect Crimson Tidestallion##169202
step
use the Crimson Tidestallion##169202
Learn the "Crimson Tidestallion" Mount |learnmount Crimson Tidestallion##300153
step
_Congratulations!_
You Collected the "Crimson Tidestallion" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Vendor Mounts\\Ankoan Waveray",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"mount","nazjatar"},
mounts={292407},
patch='82000',
mounttype='Flying',
model={90725},
description="\nThis mount can be purchased from Artisan Okata in Nazjatar after reaching Exalted status "..
"with the Waveblade Ankoan.",
},[[
step
Reach Exalted with the Waveblade Ankoan |complete rep('Waveblade Ankoan') == Exalted
|tip Use the "Waveblade Ankoan" reputation guide to accomplish this.
step
Collect #250# Prismatic Manapearls |complete curcount(1721) >= 250
|tip Complete daily quests, world quests, and bodyguard quests in Nazjatar.
|tip You can also search for treasure chests and kill rare enemies.
step
talk Artisan Okata##153509
|tip Inside the building.
buy 1 Ankoan Waveray##167167 |goto Nazjatar/0 37.90,55.84
step
use the Ankoan Waveray##167167
Learn the "Ankoan Waveray" Mount |learnmount Ankoan Waveray##292407
step
_Congratulations!_
You Collected the "Ankoan Waveray" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Vendor Mounts\\Priestess' Moonsaber",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Flying, mount, battle, for, azeroth, Priestess', Moonsaber"},
mounts={288740},
patch='81000',
mounttype='Flying',
model={90159},
description="\nThis mount is acquired by purchasing the mount for 750 7th Legion Service Medals.",
},[[
step
Collect 750 7th Legion Service Medals |complete curcount(1717)>=750
|tip These come from completing world quests in Zandalar.
|tip You can also get them from completing world quests in Warfronts when your faction controls them.
step
talk Provisioner Stoutforge##148927
buy Priestess' Moonsaber##166463 |n
use the Priestess' Moonsaber##166463
Learn the "Priestess' Moonsaber" Mount |learnmount Priestess' Moonsaber##288740 |goto Boralus/0 66.89,25.77
step
_Congratulations!_
You Collected the "Priestess' Moonsaber" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Vendor Mounts\\Rustbolt Resistor",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"mount","mechagon","island"},
mounts={299170},
patch='82000',
mounttype='Flying',
model={92731},
description="\nThis mount can be purchased from the Stolen Royal Vendorbot on Mechagon Island for 524,288 gold, adjusted for reputation.",
},[[
step
Reach Exalted with the Rustbolt Resistance |complete rep('Rustbolt Resistance') == Exalted
|tip Use the "Rustbolt Resistance" reputation guide to accomplish this.
step
talk Stolen Royal Vendorbot##150716
buy 1 Rustbolt Resistor##168829 |goto Mechagon Island/0 73.69,36.89
|tip It costs 524,288 gold, adjusted for reputation.
step
use the Rustbolt Resistor##168829
Learn the "Rustbolt Resistor" Mount |learnmount Rustbolt Resistor##299170
step
_Congratulations!_
You Collected the "Rustbolt Resistor" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Vendor Mounts\\Explorer's Dunetrekker",{
author="support@zygorguides.com",
description="\nThis mount is awarded when your Recruit-a-Friend allies have purchased three months "..
"of game time in total across all that you have recruited.",
startlevel=50.0,
keywords={"Recruit","a","Friend"},
mounts={307263},
patch='82500',
mounttype='Ground',
model={93203},
},[[
step
collect 1 Reins of the Explorer's Dunetrekker##173297 |or
|tip Recruit one or more of your friends using the Recruit-a-Friend program.
|tip This should be available in your mailbox after one or more of your Recruit-a-Friends purchase 3 months of game time in total.
'|learnmount Explorer's Dunetrekker##307263 |or
step
use the Reins of the Explorer's Dunetrekker##173297
Learn the "Explorer's Dunetrekker" Mount |learnmount Explorer's Dunetrekker##307263
step
_Congratulations!_
You Collected the "Explorer's Dunetrekker" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Vendor Mounts\\Explorer's Jungle Hopper",{
author="support@zygorguides.com",
description="\nThis mount is awarded when your Recruit-a-Friend allies have purchased nine months "..
"of game time in total across all that you have recruited.",
startlevel=50.0,
keywords={"Recruit","a","Friend"},
mounts={307256},
patch='82500',
mounttype='Flying',
},[[
step
collect 1 Keys to the Explorer's Jungle Hopper##173299 |or
|tip Recruit one or more of your friends using the Recruit-a-Friend program.
|tip This should be available in your mailbox after one or more of your Recruit-a-Friends purchase 9 months of game time in total.
'|learnmount Explorer's Jungle Hopper##307256 |or
step
use the Keys to the Explorer's Jungle Hopper##173299
Learn the "Explorer's Jungle Hopper" Mount |learnmount Explorer's Jungle Hopper##307256
step
_Congratulations!_
You Collected the "Explorer's Jungle Hopper" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Vendor Mounts\\Mighty Caravan Brutosaur",{
author="support@zygorguides.com",
startlevel=45.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={264058},
patch='80100',
mounttype='Ground',
model={83632},
description="\nThis mount is acquired by purchasing the mount for 5,000,000 gold.",
},[[
step
talk Tricky Nick##142691
buy Reins of the Mighty Caravan Brutosaur##163042 |n
|tip You will need 5,000,000 gold.
use the Reins of the Mighty Caravan Brutosaur##163042
Learn the "Mighty Caravan Brutosaur" Mount |learnmount Mighty Caravan Brutosaur##264058 |goto Boralus/0 56.77,47.08
step
_Congratulations!_
You Collected the "Mighty Caravan Brutosaur" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Vendor Mounts\\Palehide Direhorn",{
author="support@zygorguides.com",
startlevel=45.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={279474},
patch='80100',
mounttype='Ground',
model={87779},
description="\nThis mount is acquired by purchasing the mount for 500,000 gold.",
},[[
step
talk Tricky Nick##142691
buy Reins of the Palehide Direhorn##163589 |n
|tip You will need 500,000 gold.
use the Reins of the Palehide Direhorn##163589
Learn the "Palehide Direhorn" Mount |learnmount Palehide Direhorn##279474 |goto Boralus/0 56.77,47.08
step
_Congratulations!_
You Collected the "Palehide Direhorn" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Vendor Mounts\\Azureshell Krolusk",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Ground, Mount, Battle, For, Azeroth, Azureshell, Krolusk"},
mounts={288736},
patch='81000',
mounttype='Ground',
model={90393},
description="\nThis mount is acquired by purchasing the mount for 200 7th Legion Service Medals.",
},[[
step
Collect 200 7th Legion Service Medals |complete curcount(1717)>=200
|tip These come from completing world quests in Zandalar.
|tip You can also get them from completing world quests in Warfronts when your faction controls them.
step
talk Provisioner Stoutforge##148927
buy Azureshell Krolusk##166465 |n
use the Azureshell Krolusk##166465
Learn the "Azureshell Krolusk" Mount |learnmount Azureshell Krolusk##288736 |goto Boralus/0 66.89,25.77
step
_Congratulations!_
You Collected the "Azureshell Krolusk" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Vendor Mounts\\Blue Marsh Hopper",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Ground, Mount, Battle, For, Azeroth, Blue, Marsh, Hopper"},
mounts={288587},
patch='81000',
mounttype='Ground',
model={81959},
description="\nThis mount is acquired by purchasing the mount for 333,333 gold.",
},[[
step
Enter the cave |goto Nazmir/0 71.22,55.80
talk Gottum##148810
buy Blue Marsh Hopper##166442 |n
use the Blue Marsh Hopper##166442
Learn the "Blue Marsh Hopper" Mount |learnmount Blue Marsh Hopper##288587 |goto 70.85,56.49
step
_Congratulations!_
You Collected the "Blue Marsh Hopper" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Vendor Mounts\\Green Marsh Hopper",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Ground, Mount, Battle, For, Azeroth, Green, Marsh, Hopper"},
mounts={259740},
patch='80100',
mounttype='Ground',
model={81952},
description="\nThis mount is acquired by purchasing the mount for 333,333 gold.",
},[[
step
Enter the cave |goto Nazmir/0 71.22,55.80
talk Gottum##148810
buy Green Marsh Hopper##163183 |n
use the Green Marsh Hopper##163183
Learn the "Green Marsh Hopper" Mount |learnmount Green Marsh Hopper##259740 |goto 70.85,56.49
step
_Congratulations!_
You Collected the "Green Marsh Hopper" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Vendor Mounts\\Yellow Marsh Hopper",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Ground, Mount, Battle, For, Azeroth, Yellow, Marsh, Hopper"},
mounts={288589},
patch='81000',
mounttype='Ground',
model={81958},
description="\nThis mount is acquired by purchasing the mount for 333,333 gold.",
},[[
step
Enter the cave |goto Nazmir/0 71.22,55.80
talk Gottum##148810
buy Yellow Marsh Hopper##166443 |n
use the Yellow Marsh Hopper##166443
Learn the "Yellow Marsh Hopper" Mount |learnmount Yellow Marsh Hopper##288589 |goto 70.85,56.49
step
_Congratulations!_
You Collected the "Yellow Marsh Hopper" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Wriggling Parasite",{
author="support@zygorguides.com",
description="\nThis mount is acquired by earning the \"Glory of the Ny'alotha Raider\" Achievement.",
startlevel=50.0,
keywords={"Glory","of","the","Ny'alotha","Raider"},
mounts={316343},
patch='83000',
mounttype='Flying',
model={92714},
},[[
leechsteps "Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Raids\\Glory of the Ny'alotha Raider" 1-13
step
collect 1 Wriggling Parasite##174861 |or
|tip It should be in your mailbox.
'|learnmount Wriggling Parasite##316343 |or
step
use the Wriggling Parasite##174861
Learn the "Wriggling Parasite" Mount |learnmount Wriggling Parasite##316343
step
_Congratulations!_
You Collected the "Wriggling Parasite" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Quest Mounts\\Shadowbarb Drone (Beta)",{
author="support@zygorguides.com",
description="\nThis mount can be collected after completing a daily questline that can be started during "..
"the Aqir assault in Uldum.",
startlevel=50.0,
keywords={"Ready","to","Fly","Aqir","Assault"},
mounts={316339},
patch='83000',
mounttype='Flying',
model={94880},
},[[
step
Wait for the Aqir Invasion in Uldum to Occur |complete ZGV.InPhase('UldumInvasionLeft') |q 58802 |future
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |or
'|learnmount Shadowbarb Drone##316339 |or
step
click Voidtouched Eggs
accept The Incredible Egg##58802 |goto 20.81,61.92
step
talk H'partho Ardoros##161738
turnin The Incredible Egg##58802 |goto 55.61,35.33
step
Watch the dialogue
talk H'partho Ardoros##161738
accept Match the Hatch##58803 |goto 55.61,35.33
step
click Voidtouched Eggs
|tip They look like clutches of shadowy eggs on the ground around this area.
Investigate #7# Voidtouched Eggs |q 58803/1 |goto 35.05,28.88
step
talk H'partho Ardoros##161738
turnin Match the Hatch##58803 |goto 55.61,35.33
step
talk H'partho Ardoros##161738
accept Void Incubation##58804 |goto 55.61,35.33 |only if questpossible
accept Encased in Amber##58808 |goto 55.61,35.33 |only if questpossible
accept Continued Incubation##58805 |goto 55.61,35.33 |only if questpossible
accept Warmth of the Sun##58806 |goto 55.61,35.33 |only if questpossible
accept Wrapping Up##58807 |goto 55.61,35.33 |only if questpossible
Accept the Quest Available Today |complete haveq(58804,58808,58805,58806,58807) |goto Uldum New/0 55.61,35.33 |or
'|complete completedq(58810) |or
step
label "Begin_Stage_1_Quests"
Proceeding |complete haveq(58804,58808,58805,58806,58807) |or
'|complete completedq(58810) |or
step
click Crystallized Void##343589+
|tip They look like tiny black rocks on the ground around this area.
collect 10 Crystallized Void##174993 |q 58804/1 |goto Vale of Eternal Blossoms New/0 81.49,45.77 |or |only if ZGV.InPhase('ValeInvasionRight')
You can find more around [71.25,21.58] |only if ZGV.InPhase('ValeInvasionRight')
collect 10 Crystallized Void##174993 |q 58804/1 |goto Uldum New/0 54.52,50.84 |or |only if ZGV.InPhase('UldumInvasionCenter')
|only if haveq(58804)
step
click Amber Incubator
Watch the dialogue
Airlift the Amber Incubator |q 58808/1 |goto Vale of Eternal Blossoms New/0 10.14,62.95
|only if haveq(58808)
step
click Crystallized Void##343589+
|tip They look like tiny black rocks on the ground around this area.
collect 10 Crystallized Void##174993 |q 58805/1 |goto Vale of Eternal Blossoms New/0 81.49,45.77 |or |only if ZGV.InPhase('ValeInvasionRight')
You can find more around [71.25,21.58] |only if ZGV.InPhase('ValeInvasionRight')
collect 10 Crystallized Void##174993 |q 58805/1 |goto Uldum New/0 54.52,50.84 |or |only if ZGV.InPhase('UldumInvasionCenter')
|only if haveq(58805)
step
click Solar Emanator
|tip Fly down into the Chamber of the Stars.
collect 1 Solar Emanator##174996 |q 58806/1 |goto Uldum New/0 61.68,29.80
|only if haveq(58806)
step
kill Aqir Voidcaster##154352+
collect 30 Aqir Webbing##175001 |q 58807/1 |goto Uldum New/0 40.27,40.75
|tip You can only complete this during the Aqir assault in Uldum.
|only if haveq(58807)
step
talk H'partho Ardoros##161738
turnin Void Incubation##58804 |goto Uldum New/0 55.61,35.33 |only if haveq(58804)
turnin Encased in Amber##58808 |goto Uldum New/0 55.61,35.33 |only if haveq(58808)
turnin Continued Incubation##58805 |goto Uldum New/0 55.61,35.33 |only if haveq(58805)
turnin Warmth of the Sun##58806 |goto Uldum New/0 55.61,35.33 |only if haveq(58806)
turnin Wrapping Up##58807 |goto Uldum New/0 55.61,35.33 |only if haveq(58807)
|only if haveq(58804,58808,58805,58806,58807)
step
talk H'partho Ardoros##161738
accept Void Incubation##58804 |goto Uldum New/0 55.61,35.33 |only if questpossible |next "Begin_Stage_1_Quests"
accept Encased in Amber##58808 |goto Uldum New/0 55.61,35.33 |only if questpossible |next "Begin_Stage_1_Quests"
accept Continued Incubation##58805 |goto Uldum New/0 55.61,35.33 |only if questpossible |next "Begin_Stage_1_Quests"
accept Warmth of the Sun##58806 |goto Uldum New/0 55.61,35.33 |only if questpossible |next "Begin_Stage_1_Quests"
accept Wrapping Up##58807 |goto Uldum New/0 55.61,35.33 |only if questpossible |next "Begin_Stage_1_Quests"
accept Coming Out of His Shell##58810 |only if questpossible |next "Begin_Stage_1.5" |or
Accept the Quest Available Today |complete haveq(58804,58808,58805,58806,58807) |goto Uldum New/0 55.61,35.33 |next "Begin_Stage_1_Quests" |or
|tip You must wait until the next daily reset to accept this quest.
'|complete completedq(58810) |or
step
label "Begin_Stage_1.5"
click Amber Incubator
Watch the Voidtouched Egg Hatch |q 58810/1 |goto 55.69,35.34
step
talk H'partho Ardoros##161738
_<Choose a name>_
Name the Shadowbarb Larva |q 58810/2 |goto 55.61,35.33
step
talk H'partho Ardoros##161738
turnin Coming Out of His Shell##58810 |goto 55.61,35.33
step
talk H'partho Ardoros##161738
accept A Balanced Diet##58811 |goto 55.61,35.33
|tip You must wait until the next daily reset to accept this quest.
step
Kill beast enemies around this area
collect 12 Chunk of Meat##175014 |q 58811/1 |goto 68.17,31.96
You can find more around [71.62,60.64]
step
click Place Meat
Feed the Larva |q 58811/2 |goto 55.66,35.24
step
talk H'partho Ardoros##161738
turnin A Balanced Diet##58811 |goto 55.61,35.33
step
talk H'partho Ardoros##161738
accept Meat Alternatives##58812 |goto 55.61,35.33 |only if questpossible
accept Super Jelly##58825 |goto 55.61,35.33 |only if questpossible
accept Bug Buddies##58818 |goto 55.61,35.33 |only if questpossible
accept Fetid Filets##58813 |goto 55.61,35.33 |only if questpossible
accept More Fetid Filets##58858 |goto 55.61,35.33 |only if questpossible
accept A Bloody Treat##58826 |goto 55.61,35.33 |only if questpossible
accept Action Figures##58817 |goto 55.61,35.33 |only if questpossible
Accept the Quest Available Today |complete haveq(58812,58825,58818,58813,58858,58826,58817) |goto Uldum New/0 55.61,35.33 |or
'|complete completedq(58829) |or
step
label "Begin_Stage_2_Quests"
Proceeding |complete haveq(58812,58825,58818,58813,58858,58826,58817) |or
'|complete completedq(58829) |or
step
Kill Aqir enemies around this area
collect 12 Insectoid Meat##175015 |q 58812/1 |goto Uldum New/0 42.01,40.38
|only if haveq(58812)
step
click Place Meat
Feed the Larva |q 58812/2 |goto 55.66,35.24
|only if haveq(58812)
step
click Concentrated Royal Jelly##343668+
|tip They look like brown and orange jars on the ground around this area.
collect 8 Concentrated Royal Jelly##175022 |q 58825/1 |goto Vale of Eternal Blossoms New/0 11.42,31.98
|only if haveq(58825)
step
click Concentrated Royal Jelly
Feed the Larva |q 58825/2 |goto Uldum New /0 55.64,35.34
|only if haveq(58825)
step
click Docile Sandstone Hatchling+
|tip They look like tiny red beetles on the ground around this area.
Catch #5# Docile Sandstone Hatchlings |q 58818/1 |goto Uldum New/0 33.95,22.87
|only if haveq(58818)
step
Kill enemies around this area
collect 12 Corrupted Flesh##175016 |q 58813/1 |goto Uldum New/0 58.39,49.86 |only if ZGV.InPhase('UldumInvasionCenter')
collect 12 Corrupted Flesh##175016 |q 58813/1 |goto Vale of Eternal Blossoms New/0 78.08,49.20 |only if ZGV.InPhase('ValeInvasionRight')
|only if haveq(58813)
step
click Place Meat
Feed the Larva |q 58813/2 |goto Uldum New /0 55.66,35.24
|only if haveq(58813)
step
Kill enemies around this area
collect 12 Corrupted Flesh##175016 |q 58858/1 |goto Uldum New/0 58.39,49.86 |only if ZGV.InPhase('UldumInvasionCenter')
collect 12 Corrupted Flesh##175016 |q 58858/1 |goto Vale of Eternal Blossoms New/0 78.08,49.20 |only if ZGV.InPhase('ValeInvasionRight')
|only if haveq(58858)
step
click Place Meat
Feed the Larva |q 58858/2 |goto Uldum New /0 55.66,35.24
|only if haveq(58858)
step
Kill Dokani enemies around this area
collect 8 Vial of Purified Anima##175023 |q 58826/1 |goto Vale of Eternal Blossoms New/0 48.68,66.57
|only if haveq(58826)
step
click Place Meat
Feed the Larva |q 58826/2 |goto Uldum New /0 55.73,35.23
|only if haveq(58826)
step
Kill Amathet enemies around this area
collect 6 Amathet Figurine##175020 |q 58817/1 |goto Uldum New/0 64.47,28.88
|only if haveq(58817)
step
talk H'partho Ardoros##161738
turnin Meat Alternatives##58812 |goto Uldum New/0 55.61,35.33 |only if haveq(58812)
turnin Super Jelly##58825 |goto Uldum New/0 55.61,35.33 |only if haveq(58825)
turnin Bug Buddies##58818 |goto Uldum New/0 55.61,35.33 |only if haveq(58818)
turnin Fetid Filets##58813 |goto Uldum New/0 55.61,35.33 |only if haveq(58813)
turnin More Fetid Filets##58858 |goto Uldum New/0 55.61,35.33 |only if haveq(58858)
turnin A Bloody Treat##58826 |goto Uldum New/0 55.61,35.33 |only if haveq(58826)
turnin Action Figures##58817 |goto Uldum New/0 55.61,35.33 |only if haveq(58817)
|only if haveq(58812,58825,58818,58813,58858,58826,58817)
step
talk H'partho Ardoros##161738
accept Meat Alternatives##58812 |goto 55.61,35.33 |only if questpossible |next "Begin_Stage_2_Quests"
accept Super Jelly##58825 |goto 55.61,35.33 |only if questpossible |next "Begin_Stage_2_Quests"
accept Bug Buddies##58818 |goto 55.61,35.33 |only if questpossible |next "Begin_Stage_2_Quests"
accept Fetid Filets##58813 |goto 55.61,35.33 |only if questpossible |next "Begin_Stage_2_Quests"
accept More Fetid Filets##58858 |goto 55.61,35.33 |only if questpossible |next "Begin_Stage_2_Quests"
accept A Bloody Treat##58826 |goto 55.61,35.33 |only if questpossible |next "Begin_Stage_2_Quests"
accept Action Figures##58817 |goto 55.61,35.33 |only if questpossible |next "Begin_Stage_2_Quests"
accept They Grow So Fast##58829 |goto 55.61,35.33 |only if questpossible |next "Begin_Stage_2.5" |or
Accept the Quest Available Today |complete haveq(58812,58825,58818,58813,58858,58826,58817) |goto Uldum New/0 55.61,35.33 |next "Begin_Stage_2_Quests" |or
|tip You must wait until the next daily reset to accept this quest.
'|complete completedq(58829) |or
step
label "Begin_Stage_2.5"
click Shadowbarb Cocoon
Open the Shadowbarb Cocoon |q 58829/1 |goto 55.71,35.26
step
talk H'partho Ardoros##161738
turnin They Grow So Fast##58829 |goto 55.61,35.33
step
talk H'partho Ardoros##161738
accept Aqir Instincts##58830 |goto 55.61,35.33 |only if questpossible
accept Big Bad Beetle##58860 |goto 55.61,35.33 |only if questpossible
accept Someone His Own Size##58859 |goto 55.61,35.33 |only if questpossible
accept The Mantids' Mettle##58861 |goto 55.61,35.33 |only if questpossible
accept The Littlest Defender##58862 |goto 55.61,35.33 |only if questpossible
accept Honing Instincts##58831 |goto 55.61,35.33 |only if questpossible
Accept the Quest Available Today |complete haveq(58830,58860,58859,58861,58862,58831) |goto Uldum New/0 55.61,35.33 |or
'|complete completedq(58863) |or
step
label "Begin_Stage_3_Quests"
Proceeding |complete haveq(58830,58860,58859,58861,58862,58831) |or
'|complete completedq(58863) |or
step
use H'partho's Whistle##175055
|tip NOTE: You will have 10 minutes to train your hatchling.
|tip After this time expires, you will not be able to summon it again until the next daily reset.
|tip You must kill enemies in Uldum or Vale of Eternal Blossoms.
|tip More powerful enemies such as elites or rares grant more experience to your hatchling.
|tip This location is only a recommendation.
|tip You can also use the POI system to hunt rares or choose a favored spot.
Use H'partho's Whistle |q 58830/1 |goto Uldum New/0 39.98,41.43 |only if ZGV.InPhase('UldumInvasionLeft')
Use H'partho's Whistle |q 58830/1 |goto Uldum New/0 61.59,68.99 |only if ZGV.InPhase('UldumInvasionCenter')
Use H'partho's Whistle |q 58830/1 |goto Uldum New/0 75.32,52.05 |only if ZGV.InPhase('UldumInvasionRight')
|only if haveq(58830)
step
Kill enemies around this area
|tip Kill as many enemies as you can as quickly as you can.
|tip Elites and rares fill your hatchling's progress bar faster.
|tip You have ten minutes to kill as many things as you can.
Train Your Hatchling |q 58830/2 |goto Uldum New/0 39.98,41.43 |only if ZGV.InPhase('UldumInvasionLeft')
Train Your Hatchling |q 58830/2 |goto Uldum New/0 61.59,68.99 |only if ZGV.InPhase('UldumInvasionCenter')
Train Your Hatchling |q 58830/2 |goto Uldum New/0 75.32,52.05 |only if ZGV.InPhase('UldumInvasionRight')
|only if haveq(58830)
step
clicknpc Aqir Sandcrawler##162465
Defeat the Aqir Sandcrawler |q 58860/1 |goto Uldum New/0 35.46,31.60
|tip You must use a battle pet team that contains the Shadowbarb Hatchling pet you received as a reward.
|tip Beast pet abilities are beneficial for this fight.
|only if haveq(58860)
step
clicknpc Retinus the Seeker##162458
Defeat Retinus the Seeker |q 58859/1 |goto Uldum New/0 62.04,31.90
|tip You must use a battle pet team that contains the Shadowbarb Hatchling pet you received as a reward.
|tip Dragonkin pet abilities are beneficial for this fight.
|only if haveq(58859)
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96
|only if haveq(58861,58862)
step
clicknpc Vil'thik Hatchling##162471
|tip On the highest platform.
Defeat the Vil'thik Hatchling |q 58861/1 |goto Vale of Eternal Blossoms New/0 7.34,31.90
|tip You must use a battle pet team that contains the Shadowbarb Hatchling pet you received as a reward.
|tip Magic pet abilities are beneficial for this fight.
|only if haveq(58861)
step
clicknpc Baruk Stone Defender##162470
Defeat the Baruk Stone Defender |q 58862/1 |goto 28.55,34.94
|tip You must use a battle pet team that contains the Shadowbarb Hatchling pet you received as a reward.
|tip Undead pet abilities are beneficial for this fight.
|only if haveq(58862)
step
use H'partho's Whistle##175055
|tip NOTE: You will have 10 minutes to train your hatchling.
|tip After this time expires, you will not be able to summon it again until the next daily reset.
|tip You must kill enemies in Uldum or Vale of Eternal Blossoms.
|tip More powerful enemies such as elites or rares grant more experience to your hatchling.
|tip This location is only a recommendation.
|tip You can also use the POI system to hunt rares or choose a favored spot.
Use H'partho's Whistle |q 58831/1 |goto Uldum New/0 39.98,41.43 |only if ZGV.InPhase('UldumInvasionLeft')
Use H'partho's Whistle |q 58831/1 |goto Uldum New/0 61.59,68.99 |only if ZGV.InPhase('UldumInvasionCenter')
Use H'partho's Whistle |q 58831/1 |goto Uldum New/0 75.32,52.05 |only if ZGV.InPhase('UldumInvasionRight')
|only if haveq(58831)
step
Kill enemies around this area
|tip Kill as many enemies as you can as quickly as you can.
|tip Elites and rares fill your hatchling's progress bar faster.
|tip You have ten minutes to kill as many things as you can.
Train Your Hatchling |q 58831/2 |goto Uldum New/0 39.98,41.43 |only if ZGV.InPhase('UldumInvasionLeft')
Train Your Hatchling |q 58831/2 |goto Uldum New/0 61.59,68.99 |only if ZGV.InPhase('UldumInvasionCenter')
Train Your Hatchling |q 58831/2 |goto Uldum New/0 75.32,52.05 |only if ZGV.InPhase('UldumInvasionRight')
|only if haveq(58831)
step
talk H'partho Ardoros##161738
turnin Aqir Instincts##58830 |goto Uldum New/0 55.61,35.33 |only if haveq(58830)
turnin Big Bad Beetle##58860 |goto Uldum New/0 55.61,35.33 |only if haveq(58860)
turnin Someone His Own Size##58859 |goto Uldum New/0 55.61,35.33 |only if haveq(58859)
turnin The Mantids' Mettle##58861 |goto Uldum New/0 55.61,35.33 |only if haveq(58861)
turnin The Littlest Defender##58862 |goto Uldum New/0 55.61,35.33 |only if haveq(58862)
turnin Honing Instincts##58831 |goto Uldum New/0 55.61,35.33 |only if haveq(58831)
|only if haveq(58830,58860,58859,58861,58862,58831)
step
talk H'partho Ardoros##161738
accept Aqir Instincts##58830 |goto Uldum New/0 55.61,35.33 |only if questpossible |next "Begin_Stage_3_Quests"
accept Big Bad Beetle##58860 |goto Uldum New/0 55.61,35.33 |only if questpossible |next "Begin_Stage_3_Quests"
accept Someone His Own Size##58859 |goto Uldum New/0 55.61,35.33 |only if questpossible |next "Begin_Stage_3_Quests"
accept The Mantids' Mettle##58861 |goto Uldum New/0 55.61,35.33 |only if questpossible |next "Begin_Stage_3_Quests"
accept The Littlest Defender##58862 |goto Uldum New/0 55.61,35.33 |only if questpossible |next "Begin_Stage_3_Quests"
accept Honing Instincts##58831 |goto Uldum New/0 55.61,35.33 |only if questpossible |next "Begin_Stage_3_Quests"
accept A Custom Order##58863 |goto Uldum New/0 55.61,35.33 |only if questpossible |next "Begin_Final_Stage" |or
Accept the Quest Available Today |complete haveq(58830,58860,58859,58861,58862,58831) |goto Uldum New/0 55.61,35.33 |next "Begin_Stage_3_Quests" |or
|tip You must wait until the next daily reset to accept this quest.
'|complete completedq(58863) |or
step
label "Begin_Final_Stage"
talk Blacksmith Abasi##164250
Ask him _"Can you craft a saddle for an aqir?"_
Speak with Blackmith Abasi |q 58863/1 |goto Uldum New/0 54.06,33.31
step
talk Blacksmith Abasi##164250
turnin A Custom Order##58863 |goto 54.06,33.31
step
talk Blacksmith Abasi##164250
accept Otherworldly Armaments##58865 |goto 54.06,33.31
step
Kill enemies around this area
|tip Cultist enemies can drop armaments.
collect 12 Black Empire Armament##175058 |q 58865/1 |goto Vale of Eternal Blossoms New/0 47.17,68.21 |only if ZGV.InPhase('ValeInvasionRight')
collect 12 Black Empire Armament##175058 |q 58865/1 |goto Uldum New/0 60.89,66.39 |only if ZGV.InPhase('UldumInvasionCenter')
step
talk Blacksmith Abasi##164250
turnin Otherworldly Armaments##58865 |goto Uldum New/0 54.06,33.31
step
talk Blacksmith Abasi##164250
accept My Own Drone##58866 |goto 54.06,33.31
|tip You must wait until the next daily reset to accept this quest.
step
talk H'partho Ardoros##161738
turnin My Own Drone##58866 |goto 55.61,35.33
step
collect 1 Shadowbarb Drone##174771 |or
'|learnmount Shadowbarb Drone##316339 |or
step
use the Shadowbarb Drone##174771
Learn the "Shadowbarb Drone" Mount |learnmount Shadowbarb Drone##316339
step
_Congratulations!_
You Collected the "Shadowbarb Drone" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Achievement Mounts\\Mechagon Mechanostrider",{
author="support@zygorguides.com",
description="\nThis mount is acquired by earning the \"Allied Races: Mechagnome\" Achievement.",
startlevel=50.0,
keywords={"8.3","N'zoth","Nzoth","Corruption","Allied","Races","Mechagnome"},
mounts={305592},
patch='83000',
mounttype='Ground',
model={92759},
},[[
step
Earn the "The Mechagonian Threat" Achievement |achieve 13553
|tip Use the "The Mechagonian Threat" achievement guide to earn this achievement.
step
Reach Exalted Reputation with the Rustbolt Resistance |complete rep('Rustbolt Resistance') == Exalted
|tip Use the "Rustbolt Resistance" reputation guide to accomplish this.
step
talk Kelsey Steelspark##160101
accept Waning Energy##57486 |goto Boralus/0 73.13,16.92
step
talk Kelsey Steelspark##157997
turnin Waning Energy##57486 |goto 36.90,62.55
accept Someone Who Can Help##57487 |goto 36.90,62.55
step
clicknpc Homing Copter##158230
Acquire the Homing Copter |q 57487/1 |goto 49.49,40.17
step
clicknpc Mekkatorque's Escape Pod##160046
Watch the dialogue
Send the Escape Pod to Mechagon |q 57487/2 |goto 36.74,62.62
step
Meet Prince Erazmin |q 57487/3 |goto Mechagon Island/0 74.11,36.99
step
talk Prince Erazmin##149816
turnin Someone Who Can Help##57487 |goto 74.11,36.99
step
talk Waren Gearhart##150555
accept The Current Schematic##57488 |goto 73.12,33.36
step
Kill Malfunctioning enemies around this area
collect 6 Acquisitioned Machine Part##172521 |q 57488/2 |goto 73.07,42.36
step
kill Congealed Oil##150698+
collect 4 Heat Tolerant Ooze##172522 |q 57488/1 |goto 74.74,59.04
step
talk Waren Gearhart##150555
turnin The Current Schematic##57488 |goto 73.12,33.36
step
talk Prince Erazmin##158145
accept Voyage to Safety##57490 |goto 73.04,33.43
step
Watch the dialogue
Activate the Piston and Crew |q 57490/1 |goto 63.13,37.64
step
kill Rust-Eye the Clever##158851 |q 57490/2 |goto 86.95,73.84
step
Retrieve the Pod |q 57490/3 |goto 86.95,73.84
step
Watch the dialogue
Deliver the Pod |q 57490/4 |goto 73.55,32.11
step
talk Waren Gearhart##150555
turnin Voyage to Safety##57490 |goto 73.13,33.35
step
talk Christy Punchcog##160232
accept Better... Stronger... Less Dead##57491 |goto 73.19,33.47
step
kill Insurgent Cycloid##159271
|tip It walks around this area.
collect Omni Electromagnetic Amplifier##173026 |q 57491/2 |goto 55.44,26.03
step
kill Insurgent Crawler##159262
|tip It walks around this area.
collect Flux Energized Servos##173028 |q 57491/3 |goto 53.30,52.44
step
kill HK-3 Aerial Dissuasion Unit##159261
|tip It flies all over this area.
collect Neural Accelerator##172511 |q 57491/1 |goto 34.97,59.87
step
talk Christy Punchcog##160232
turnin Better... Stronger... Less Dead##57491 |goto 73.51,31.88
step
talk Prince Erazmin##158145
accept Him?##57492 |goto 73.04,33.43
step
talk Pegi Cogster##159558
Ask her _"What do you want in a leader?"_
Speak with Pegi Cogster |q 57492/3 |goto 74.30,34.82
step
talk Flouresce Brightgear##159571
Ask her _"What do you want in a leader?"_
Speak with Flouresce Brightgear |q 57492/5 |goto 75.43,36.02
step
talk Quimby Sparklighter##159570
Ask him _"What makes a good leader?"_
Speak with Quimby Sparklighter |q 57492/4 |goto 72.09,38.64
step
talk Idee Quickcoil##159567
Ask her _"What makes a good leader?"_
Speak with Idee Quickcoil |q 57492/2 |goto 71.29,34.28
step
talk Stuard Sharpsprocket##159545
Ask him _"Why do you appreciate Gelbin Mekkatorque?"_
Speak with Stuard Sharpsprocket |q 57492/6 |goto 69.93,32.06
step
talk Elya Codepunch##159559
Ask her _"What do you want in a leader?"_
Speak with Elya Codepunch |q 57492/1 |goto 70.46,30.94
step
talk Prince Erazmin##158145
turnin Him?##57492 |goto 73.04,33.43
step
talk Christy Punchcog##160232
accept Mental Attunement##57493 |goto 73.51,31.89
step
click Synchroscope##159574
Initiate the Synchronization |q 57493/1 |goto 73.59,32.87
step
Watch the dialogue
Complete the Synchronization |q 57493/2 |goto 73.50,32.09
step
clicknpc Mekkatorque's Escape Pod##158100
Open the Escape Pod |q 57493/3 |goto 73.55,32.09
step
talk Christy Punchcog##160232
turnin Mental Attunement##57493 |goto 73.51,31.89
accept A Strong Heart##57494 |goto 73.51,31.89
step
Find Kelsey |q 57494/1 |goto 59.54,55.83
step
kill Insurgent Coilbearer##159751 |q 57494/2 |goto 59.50,55.88
step
Watch the dialogue
Retrieve the Unit |q 57494/3 |goto 59.50,55.88
step
click Spark Reactor##159785
Deliver the Spark Reactor |q 57494/4 |goto 73.59,32.15
step
Watch the dialogue
Calibrate the Circuit |q 57494/5 |goto 73.59,32.15
step
click Genny##159573
Activate the Generator |q 57494/6 |goto 73.72,31.84
step
Defibrillate |q 57494/7 |goto 73.54,32.11
|tip Use the "Resuscitation" ability that appears on-screen.
step
Watch the dialogue
talk Prince Erazmin##158145
turnin A Strong Heart##57494 |goto 73.03,33.43
step
Watch the dialogue
talk Gelbin Mekkatorque##159587
accept Ascension##57496 |goto 73.07,33.58
step
Take the Teleporter to Mechagon City |q 57496/1 |goto 72.35,31.27
|tip Step onto the grate.
step
Arrive in Mechagon City |goto Mechagon City/0 23.41,21.46 < 1000 |c |noway |q 57496
step
Run up the ramp |goto Mechagon City/1 56.74,68.71 < 15 |only if walking
kill Blastatron X-81##160087 |q 57496/2 |goto 65.46,48.18
|tip Avoid standing in blue areas on the ground.
step
talk Gelbin Mekkatorque##162806
turnin Ascension##57496 |goto 58.14,41.20
accept The Future of Mechagon##57495 |goto 58.14,41.20
step
Teleport to the High Tinkertory |q 57495/1 |goto 47.91,31.46
step
Run up the ramp |goto 32.53,53.02 < 20 |only if walking
Watch the dialogue
|tip Use the "Witness" ability that appears on-screen.
Witness the Speech |q 57495/2 |goto 19.99,66.06
step
talk Gelbin Mekkatorque##159587
turnin The Future of Mechagon##57495 |goto 18.70,67.41
step
talk Kelsey Steelspark##157997
|tip She walks around this area.
accept Propagate the News##57497 |goto 17.80,65.60
step
Teleport to Stormwind |q 57497/1 |goto 20.42,59.84
|tip Step onto the grate.
step
talk Aysa Cloudsinger##126332
|tip Inside the building.
turnin Propagate the News##57497 |goto Stormwind City/0 52.06,13.41
step
collect 1 Mechagon Mechanostrider##174067 |or
|tip You should collect this automatically.
'|learnmount Mechagon Mechanostrider##305592 |or
step
use the Mechagon Mechanostrider##174067
Learn the "Mechagon Mechanostrider" Mount |learnmount Mechagon Mechanostrider##305592
step
_Congratulations!_
You Collected the "Mechagon Mechanostrider" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Blizzard Store Mounts\\Ensorcelled Everwyrm",{
author="support@zygorguides.com",
description="\nThis mount can be obtained by purchasing the Heroic Edition of the Shadowlands World of Warcraft "..
"expansion.",
startlevel=50.0,
keywords={"8.3","N'zoth","Nzoth","Corruption","Blizzard","Store","Shadowlands","Heroic","Edition"},
mounts={307932},
patch='83000',
mounttype='Flying',
model={93335},
},[[
step
Learn the "Ensorcelled Everwyrm" Mount |learnmount Ensorcelled Everwyrm##307932
|tip This mount should be collected automatically after purchasing the Heroic Edition of the Shadowlands World of Warcraft expansion.
step
click Guiding Orb
|tip Summon your Ensorcelled Everwyrm and click the orb directly behind the seat.
_Next to you:_
talk Xolartios##158635
accept The Eternal Traveler##57686 |or
'|learnmount Ensorcelled Everwyrm##307932 |or
step
Kill enemies around this area
collect 40 Echo of Mortality##172954 |goto Zuldazar/0 58.03,20.11 |or
|tip Your first looting every day should grant 4-7 echoes.
|tip After that, the drop rate is reduced significantly until the next reset.
|tip This could take some time.
'|learnmount Ensorcelled Everwyrm##307932 |or
step
click Guiding Orb
|tip Summon your Ensorcelled Everwyrm and click the orb directly behind the seat.
_Next to you:_
talk Xolartios##158635
turnin The Eternal Traveler##57686 |or
'|learnmount Ensorcelled Everwyrm##307932 |or
step
_Congratulations!_
You Collected the "Ensorcelled Everwyrm" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dropped Mounts\\Clutch of Ha-Li",{
author="support@zygorguides.com",
description="\nThis mount drops from the Ha-Li rare spawn in Vale of Eternal Blossoms during the Warring Clans assault.",
startlevel=50.0,
keywords={"8.3","N'zoth","Nzoth","Corruption","Vale","of","Eternal","Blossoms"},
mounts={312751},
patch='83000',
mounttype='Flying',
model={94247},
},[[
step
label "Time_Travel"
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |or
'|learnmount Clutch of Ha-Li##312751 |or
step
label "Wait_for_Mogu_Invasion"
Wait for the "Assault: Warring Clans" Assault |complete ZGV.InPhase("ValeInvasionLeftCenter") |or
|tip Non-N'zoth assaults alternate every few days.
'|learnmount Clutch of Ha-Li##312751 |or
'|complete ZGV.InPhase('OldVale') and not hasmount(312751) |next "Time_Travel" |or
step
kill Ha-Li##157153
|tip It flies in a large circle around the mountain peak.
|tip Ha-Li is a rare spawn and may not always be up.
|tip You can only loot it once per day.
collect Clutch of Ha-Li##173887 |goto Vale of Eternal Blossoms New/0 31.77,41.82 |or
|tip This mount is not a guaranteed drop.
'|learnmount Clutch of Ha-Li##312751 |or
'|complete ZGV.InPhase('OldVale') and not hasmount(312751) |next "Time_Travel" |or
'|complete not ZGV.InPhase("ValeInvasionLeftCenter") and not hasmount(312751) |next "Wait_for_Mogu_Invasion" |or
step
use the Clutch of Ha-Li##173887
Learn the "Clutch of Ha-Li" Mount |learnmount Clutch of Ha-Li##312751
step
_Congratulations!_
You Collected the "Clutch of Ha-Li" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dropped Mounts\\Drake of the Four Winds",{
author="support@zygorguides.com",
description="\nThis mount drops from the Ishak of the Four Winds rare spawn in Uldum during the Amathet Advance assault.",
startlevel=50.0,
keywords={"8.3","N'zoth","Nzoth","Corruption","Ishak"},
mounts={315847},
patch='83000',
mounttype='Flying',
model={92913},
},[[
step
label "Time_Travel"
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |or
'|learnmount Drake of the Four Winds##315847 |or
step
label "Wait_for_Amathet_Invasion"
Wait for the "Assault: Amathet Advance" Assault |complete ZGV.InPhase("UldumInvasionRight") |or
|tip Non-N'zoth assaults alternate every few days.
'|learnmount Drake of the Four Winds##315847 |or
'|complete ZGV.InPhase('OldUldum') and not hasmount(315847) |next "Time_Travel" |or
step
kill Ishak of the Four Winds##157134
|tip It flies around the floating platform.
|tip You can only loot it once per day.
collect Reins of the Drake of the Four Winds##174641 |goto Uldum New/0 73.90,83.53 |or
|tip This mount is not a guaranteed drop.
'|learnmount Drake of the Four Winds##315847 |or
'|complete ZGV.InPhase('OldUldum') and not hasmount(315847) |next "Time_Travel" |or
'|complete not ZGV.InPhase("UldumInvasionRight") and not hasmount(315847) |next "Wait_for_Amathet_Invasion" |or
step
use the Reins of the Drake of the Four Winds##174641
Learn the "Drake of the Four Winds" Mount |learnmount Drake of the Four Winds##315847
step
_Congratulations!_
You Collected the "Drake of the Four Winds" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dropped Mounts\\Mail Muncher",{
author="support@zygorguides.com",
description="\nThis mount drops from the Mail Muncher rare spawn in Horrific Visions.",
keywords={"8.3","N'zoth","Nzoth","Corruption","Horrific","Vision"},
startlevel=50.0,
mounts={315987},
patch='83000',
mounttype='Flying',
model={92715},
},[[
step
kill Mail Muncher##158041
|tip It is a rare spawn inside the Horrific Visions.
|tip Use the Horrific Vision leveling guides to complete them and click any mailboxes that you see.
|tip Occasionally the Mail Muncher will spawn.
collect Mail Muncher##174653 |or
'|learnmount Mail Muncher##315987 |or
step
use the Mail Muncher##174653
Learn the "Mail Muncher" Mount |learnmount Mail Muncher##315987
step
_Congratulations!_
You Collected the "Mail Muncher" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dropped Mounts\\Ny'alotha Allseer",{
author="support@zygorguides.com",
description="\nThis mount drops from mythic N'Zoth the Corruptor in Ny'alotha, the Waking City.",
startlevel=50.0,
keywords={"8.3","N'zoth","Nzoth","Corruption","Mythic","Waking","City","Ny'alotha"},
mounts={308814},
patch='83000',
mounttype='Flying',
model={93512},
},[[
step
kill N'Zoth the Corruptor##158041
|tip You must kill N'Zoth on mythic difficulty.
|tip Use the "Ny'alotha, the Waking City - The Waking Dream" dungeon guide to accomplish this.
collect Ny'alotha Allseer##174872 |goto Ny'alotha, the Waking City/3 47.80,25.29 |or
'|learnmount Ny'alotha Allseer##308814 |or
step
use the Ny'alotha Allseer##174872
Learn the "Ny'alotha Allseer" Mount |learnmount Ny'alotha Allseer##308814
step
_Congratulations!_
You Collected the "Ny'alotha Allseer" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dropped Mounts\\Uncorrupted Voidwing",{
author="support@zygorguides.com",
description="\nThis mount is a reward for completing the quest \"Lost Flight\", which can be started from "..
"an item that drops from heroic or mythic N'Zoth the Corruptor.",
startlevel=50.0,
keywords={"8.3","N'zoth","Nzoth","Corruption","Heroic","Waking","City","Ny'alotha"},
mounts={302143},
patch='83000',
mounttype='Flying',
model={92319},
},[[
step
kill N'Zoth the Corruptor##158041
|tip You must kill N'Zoth on heroic or mythic difficulty.
|tip Use the "Ny'alotha, the Waking City - The Waking Dream" dungeon guide to accomplish this.
collect Spawn of Vexiona##174863 |goto Ny'alotha, the Waking City/3 47.80,25.29 |or
'|learnmount Uncorrupted Voidwing##302143 |or
step
use the Spawn of Vexiona##174863
accept Lost Flight##58876 |or
'|learnmount Uncorrupted Voidwing##302143 |or
step
talk Wrathion##155496
turnin Lost Flight##58876 |goto Chamber of Heart/0 46.17,64.05 |or
'|learnmount Uncorrupted Voidwing##302143 |or
step
collect 1 Uncorrupted Voidwing##174862 |or
|tip You should collect this automatically.
'|learnmount Uncorrupted Voidwing##302143 |or
step
use the Uncorrupted Voidwing##174862
Learn the "Uncorrupted Voidwing" Mount |learnmount Uncorrupted Voidwing##302143
step
_Congratulations!_
You Collected the "Uncorrupted Voidwing" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dropped Mounts\\Waste Marauder",{
author="support@zygorguides.com",
description="\nThis mount drops from the Rotfeaster rare spawn in Uldum during the Amathet Advance assault.",
startlevel=50.0,
keywords={"8.3","N'zoth","Nzoth","Corruption","Rotfeaster","N'Zoth","Assault"},
mounts={316275},
patch='83000',
mounttype='Flying',
model={94875},
},[[
step
label "Time_Travel"
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |or
'|learnmount Waste Marauder##316275 |or
step
label "Wait_for_Amathet_Invasion"
Wait for the "Assault: Amathet Advance" Assault |complete ZGV.InPhase("UldumInvasionRight") |or
|tip Non-N'zoth assaults alternate every few days.
'|learnmount Waste Marauder##316275 |or
'|complete ZGV.InPhase('OldUldum') and not hasmount(316275) |next "Time_Travel" |or
step
kill Rotfeaster##157146
|tip You can only loot it once per day.
collect Waste Marauder##174753 |goto Uldum New/0 68.30,31.88 |or
|tip This mount is not a guaranteed drop.
'|learnmount Waste Marauder##316275 |or
'|complete ZGV.InPhase('OldUldum') and not hasmount(316275) |next "Time_Travel" |or
'|complete not ZGV.InPhase("UldumInvasionRight") and not hasmount(316275) |next "Wait_for_Amathet_Invasion" |or
step
use the Waste Marauder##174753
Learn the "Waste Marauder" Mount |learnmount Waste Marauder##316275
step
_Congratulations!_
You Collected the "Waste Marauder" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Mollie",{
author="support@zygorguides.com",
description="\nThis mount has a small chance to drop from Dunegorger Kraulok in Vol'dun when the "..
"world quest \"Sandswept Bones\" is active.",
startlevel=50.0,
keywords={"8.3","N'zoth","Nzoth","Corruption","Dunegorger","Kraulok","Slightly","Damp","Pile","Fur"},
mounts={298367},
patch='83000',
mounttype='Ground',
model={91874},
},[[
step
kill Dunegorger Kraulok##138794
|tip Kraulok only spawns when the "Sandswept Bones" world quest is active.
|tip You can only loot it once per day.
collect 1 Slightly Damp Pile of Fur##174842 |goto Vol'dun/0 44.37,56.06 |or
|tip This mount is not a guaranteed drop.
'|learnmount Mollie##298367 |or
step
use the Slightly Damp Pile of Fur##174842
Learn the "Mollie" Mount |learnmount Mollie##298367
step
_Congratulations!_
You Collected the "Mollie" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Ren's Stalwart Hound",{
author="support@zygorguides.com",
description="\nThis mount has a chance to drop from the rare spawn Houndlord Ren in Vale of "..
"Eternal Blossoms during \"The Warring Clans\" assault.",
startlevel=50.0,
keywords={"8.3","N'zoth","Nzoth","Corruption","Houndlord","Ren","Vale","or","Eternal","Blossoms"},
mounts={316722},
patch='83000',
mounttype='Ground',
model={45823},
},[[
step
label "Time_Travel"
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |or
'|learnmount Ren's Stalwart Hound##316722 |or
step
label "Wait_for_Mogu_Invasion"
Wait for the "Assault: Warring Clans" Assault |complete ZGV.InPhase("ValeInvasionLeftCenter") |or
|tip Non-N'zoth assaults alternate every few days.
'|learnmount Ren's Stalwart Hound##316722 |or
'|complete ZGV.InPhase('OldVale') and not hasmount(316722) |next "Time_Travel" |or
step
kill Houndlord Ren##157160
|tip He walks all along the area following the wall.
|tip You can only loot him once per day.
collect 1 Ren's Stalwart Hound##174841 |goto Vale of Eternal Blossoms New/0 10.92,32.51 |or
|tip This mount is not a guaranteed drop.
'|learnmount Ren's Stalwart Hound##316722 |or
'|complete ZGV.InPhase('OldVale') and not hasmount(316722) |next "Time_Travel" |or
'|complete not ZGV.InPhase("ValeInvasionLeftCenter") and not hasmount(316722) |next "Wait_for_Mogu_Invasion" |or
step
use Ren's Stalwart Hound##174841
Learn the "Ren's Stalwart Hound" Mount |learnmount Ren's Stalwart Hound##316722
step
_Congratulations!_
You Collected the "Ren's Stalwart Hound" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Xinlao",{
author="support@zygorguides.com",
description="\nThis mount has a chance to drop from the rare spawn Anh-De the Loyal in Vale of "..
"Eternal Blossoms during \"The Warring Clans\" assault.",
keywords={"8.3","N'zoth","Nzoth","Corruption","Anh-De","the","Loyal","Vale","or","Eternal","Blossoms"},
startlevel=50.0,
mounts={316723},
patch='83000',
mounttype='Ground',
model={91874},
},[[
step
label "Time_Travel"
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |or
'|learnmount Xinlao##316723 |or
step
label "Wait_for_Mogu_Invasion"
Wait for the "Assault: Warring Clans" Assault |complete ZGV.InPhase("ValeInvasionLeftCenter") |or
|tip Non-N'zoth assaults alternate every few days.
'|learnmount Xinlao##316723 |or
'|complete ZGV.InPhase('OldVale') and not hasmount(316723) |next "Time_Travel" |or
step
kill Anh-De the Loyal##157466
|tip You can only loot it once per day.
collect 1 Xinlao##174840 |goto Vale of Eternal Blossoms New/0 33.75,68.53 |or
|tip This mount is not a guaranteed drop.
'|learnmount Xinlao##316723 |or
'|complete ZGV.InPhase('OldVale') and not hasmount(316723) |next "Time_Travel" |or
'|complete not ZGV.InPhase("ValeInvasionLeftCenter") and not hasmount(316723) |next "Wait_for_Mogu_Invasion" |or
step
use Xinlao##174840
Learn the "Xinlao" Mount |learnmount Xinlao##316723
step
_Congratulations!_
You Collected the "Xinlao" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Vendor Mounts\\Wicked Swarmer",{
description="\nThis mount can be purchased from Wrathion in the Chamber of Heart for 100,000 Corrupted Mementos.",
author="support@zygorguides.com",
keywords={"8.3","N'zoth","Nzoth","Corruption","mount","chamber","heart"},
startlevel=50.0,
mounts={316340},
patch='83000',
mounttype='Flying',
model={94881},
},[[
step
Complete the "Accessing the Archives" Quest |complete completedq(57524) |or
|tip Use the "Magni's Plan" leveling guide to accomplish this.
'|learnmount Wicked Swarmer##316340 |or
step
Earn the "We Have the Technology" Achievement |achieve 14061 |goto Chamber of Heart/0 46.34,70.41 |or
|tip To accomplish this, save up Corrupted Mementos from running Horrific Visions and completing assaults.
|tip Purchase all available research traits at the Titanic Research Archive.
'|learnmount Wicked Swarmer##316340 |or
step
Collect 100,000 Corrupted Mementos |complete curcount(1719) >= 100000 |or
|tip Corrupted Mementos can be obtained from the daily Vision of N'Zoth quest and from assault reward caches and Horrific Visions.
'|learnmount Wicked Swarmer##316340 |or
step
talk Wrathion##155496
buy 1 Wicked Swarmer##174770 |goto Chamber of Heart/0 46.13,64.03 |or
|tip It costs 100,000 Corrupted Mementos.
'|learnmount Wicked Swarmer##316340 |or
step
use the Wicked Swarmer##174770
Learn the "Wicked Swarmer" Mount |learnmount Wicked Swarmer##316340
step
_Congratulations!_
You Collected the "Wicked Swarmer" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Vendor Mounts\\Wastewander Skyterror",{
description="\nThis mount can be purchased from Provisioner Qorra in the Uldum for 24,000 gold, adjusted for reputation.",
author="support@zygorguides.com",
keywords={"8.3","N'zoth","Nzoth","Corruption","mount","uldum","accord"},
startlevel=50.0,
mounts={316276},
patch='83000',
mounttype='Flying',
model={94876},
},[[
step
Reach "Exalted" with the Uldum Accord |complete rep('Uldum Accord') >= Exalted |or
|tip Use the "Uldum Accord" reputation guide to accomplish this.
'|learnmount Wastewander Skyterror##316276 |or
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |or
'|learnmount Wastewander Skyterror##316276 |or
step
talk Provisioner Qorra##160714
|tip Inside the building.
buy 1 Wastewander Skyterror##174754 |goto Uldum New/0 55.11,32.86 |or
|tip It costs 24,000 gold, adjusted for reputation.
'|learnmount Wastewander Skyterror##316276 |or
step
use the Wastewander Skyterror##174754
Learn the "Wastewander Skyterror" Mount |learnmount Wastewander Skyterror##316276
step
_Congratulations!_
You Collected the "Wastewander Skyterror" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Obsidian Worldbreaker",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"8.3","N'zoth","Nzoth","Corruption","15th","Anniversary"},
mounts={294197},
patch='82500',
mounttype='Flying',
model={91272},
description="\nThis mount requires you to complete the achievement \"Memories of Fel, Frost and Fire.\"",
},[[
step
collect Anniversary Gift##172014 |or
|tip You can find it in your mailbox.
'|q 57249 |future |or
step
use the Anniversary Gift##172014
accept A Timely Invitation##57249
step
talk Chromie##157113
turnin A Timely Invitation##57249 |goto Tanaris/18 53.59,54.96
accept How Things "Really" Happened...##57298 |goto 53.59,54.96
step
talk Chromie##157113
Tell her _"I want to remember adventures from Outland!"_
Relive Your Adventures in Outland |q 57298/1 |goto 53.59,54.96
|tip Your group will fight Kael'thas Sunstrider, Lady Vashj, and Archimonde.
step
talk Chromie##157113
Tell her _"I want to remember adventures from Northrend!"_
Relive Your Adventures in Northrend |q 57298/2 |goto 53.59,54.96
|tip Your group will fight Heigan the Unclean, Anub'arak, and The Lich King.
step
talk Chromie##157113
Tell her _"I want to remember adventures from from the Cataclysm!"_
Relive Your Adventures from the Cataclysm |q 57298/3 |goto 53.59,54.96
|tip Your group will fight Cho'gall, Nefarian, and Ragnaros.
step
talk Chromie##157113
turnin How Things "Really" Happened...##57298 |goto 53.59,54.96
step
collect Obsidian Worldbreaker##172012 |or
|tip This should be available in your mailbox.
'|learnmount Obsidian Worldbreaker##294197 |or
step
use the Obsidian Worldbreaker##172012
Learn the "Obsidian Worldbreaker" Mount |learnmount Obsidian Worldbreaker##294197
step
_Congratulations!_
You Collected the "Obsidian Worldbreaker" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Awakened Mindborer",{
author="support@zygorguides.com",
description="\nTo collect this mount, you will have to complete the following Battle for Azeroth "..
"dungeons at Mythic 15 or higher:\n\nAtal'Dazar\nKings' Rest\nFreehold\nShrine of the Storm\n"..
"Siege of Boralus\nTemple of Sethraliss\nThe MOTHERLODE!!\nThe Underrot\nMechagon Junkyard\n"..
"Mechagon Workshop\nTol Dagor\nWaycrest Manor",
keywords={"8.3","N'zoth","Nzoth","Corruption","Keystone","Master","Season","Four"},
startlevel=50.0,
mounts={316637},
patch='83000',
mounttype='Flying',
model={92713},
},[[
leechsteps "Achievement Guides\\Feats of Strength\\Dungeons\\Battle for Azeroth Keystone Master: Season Four"1-1
'|learnmount Awakened Mindborer##316637 |or
step
collect 1 Awakened Mindborer##174836 |or
|tip It should be in your mailbox.
'|learnmount Awakened Mindborer##316637 |or
step
use the Awakened Mindborer##174836
Learn the "Awakened Mindborer" Mount |learnmount Awakened Mindborer##316637
step
_Congratulations!_
You Collected the "Awakened Mindborer" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Black Serpent of N'Zoth",{
author="support@zygorguides.com",
description="\nThis mount is acquired by earning the \"Through the Depths of Visions\" Achievement.",
keywords={"8.3","N'zoth","Nzoth","Corruption","Through","the","Depths","Visions"},
startlevel=50.0,
mounts={305182},
patch='83000',
mounttype='Flying',
model={92708},
},[[
step
Earn the "Through the Depths of Visions" Achievement |achieve 13994 |or
|tip Use the "Through the Depths of Visions" achievement guide to accomplish this.
'|learnmount Black Serpent of N'Zoth##305182 |or
step
collect 1 Black Serpent of N'Zoth##174654 |or
|tip It should be in your mailbox.
'|learnmount Black Serpent of N'Zoth##305182 |or
step
use the Black Serpent of N'Zoth##174654
Learn the "Black Serpent of N'Zoth" Mount |learnmount Black Serpent of N'Zoth##305182
step
_Congratulations!_
You Collected the "Black Serpent of N'Zoth" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dropped Mounts\\Ivory Cloud Serpent",{
author="support@zygorguides.com",
description="\nThis mount drops from the Ivory Cloud Serpent rare spawn in Vale of Eternal Blossoms.",
keywords={"8.3","N'zoth","Nzoth","Corruption"},
startlevel=50.0,
mounts={315014},
patch='83000',
mounttype='Flying',
model={94672},
},[[
step
label "Time_Travel"
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |or
'|learnmount Ivory Cloud Serpent##315014 |or
step
label "Wait_for_Mogu_Invasion"
Wait for the "Assault: The Warring Clans" Assault |complete ZGV.InPhase("ValeInvasionLeftCenter") |or
|tip Non-N'zoth assaults alternate every few days.
'|learnmount Ivory Cloud Serpent##315014 |or
'|complete ZGV.InPhase('OldVale') and not hasmount(316722) |next "Time_Travel" |or
step
Kill enemies around this area
collect 1 Zan-Tien Lasso##174927 |goto Vale of Eternal Blossoms New/0 24.26,38.46 |or
|tip This is a rare drop and could take quite some time to collect.
'|learnmount Ivory Cloud Serpent##315014 |or
step
use the Zan-Tien Lasso##174927
|tip It flies in a large clockwise circle around the Vale of Eternal Blossoms.
|tip It flies very quickly, so flying counter-clockwise will give you a better chance of finding it before it despawns.
|tip When you find it, you will need to find a high spot that will put you in range to use the Lasso.
|tip The Lasso has a two second cast time.
|tip Ivory Cloud Serpent is a rare spawn and may not always be up.
collect Ivory Cloud Serpent##174752 |or
'|learnmount Ivory Cloud Serpent##315014 |or
'|complete ZGV.InPhase('OldVale') and not hasmount(315014) |next "Time_Travel" |or
'|complete not ZGV.InPhase("ValeInvasionLeftCenter") and not hasmount(315014) |next "Wait_for_Mogu_Invasion" |or
step
use the Ivory Cloud Serpent##174752
Learn the "Ivory Cloud Serpent" Mount |learnmount Ivory Cloud Serpent##315014
step
_Congratulations!_
You Collected the "Ivory Cloud Serpent" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dropped Mounts\\Malevolent Drone",{
author="support@zygorguides.com",
description="\nThis mount drops from the Corpse Eater rare spawn in Uldum during the Aqir assault.",
keywords={"8.3","N'zoth","Nzoth","Corruption","Corpse","Eater"},
startlevel=50.0,
mounts={316337},
patch='83000',
mounttype='Flying',
model={94879},
},[[
step
label "Time_Travel"
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |or
'|learnmount Malevolent Drone##316337 |or
step
label "Wait_for_Aqir_Invasion"
Wait for the "Assault: Aqir Unearthed" Assault |complete ZGV.InPhase("UldumInvasionLeft") |or
|tip Non-N'zoth assaults alternate every few days.
'|learnmount Malevolent Drone##316337 |or
'|complete ZGV.InPhase('OldUldum') and not hasmount(316337) |next "Time_Travel" |or
step
kill Corpse Eater##162147
|tip This mob is a rare spawn.
|tip You can only loot it once per day.
collect the Malevolent Drone##174769 |goto Uldum New/0 30.74,49.68 |or
|tip This mount is not a guaranteed drop.
'|learnmount Malevolent Drone##316337 |or
'|complete ZGV.InPhase('OldUldum') and not hasmount(316337) |next "Time_Travel" |or
'|complete not ZGV.InPhase("UldumInvasionLeft") and not hasmount(316337) |next "Wait_for_Aqir_Invasion" |or
step
use the Malevolent Drone##174769
Learn the "Malevolent Drone" Mount |learnmount Malevolent Drone##316337
step
_Congratulations!_
You Collected the "Malevolent Drone" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Quest Mounts\\Springfur Alpaca",{
author="support@zygorguides.com",
description="\nThis mount can be collected after completing seven daily quests and the quest \"Alpaca It In\" in Uldum.",
startlevel=50.0,
keywords={"Alpaca","It","In","Up"},
mounts={316802},
patch='83000',
mounttype='Ground',
model={91877},
},[[
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |or
'|learnmount Springfur Alpaca##316802 |or
step
click Gersahl Shrub##341808
|tip They look like tiny clumps of pond lillies on the ground next to the water around this area.
|tip Setting your Ground Clutter to minimum in the Environment graphics settings will make them much easier to see.
|tip You can find them all over the river, but the Lost City of the Tol'vir area is best.
|tip You will need 7 to complete the daily quests.
collect 7 Gersahl Greens##174858 |only if default |goto Uldum New/0 65.40,77.82 |or
collect 6 Gersahl Greens##174858 |only if countremains(58881,0) == 6 |or
collect 5 Gersahl Greens##174858 |only if countremains(58881,0) == 5 |or
collect 4 Gersahl Greens##174858 |only if countremains(58881,0) == 4 |or
collect 3 Gersahl Greens##174858 |only if countremains(58881,0) == 3 |or
collect 2 Gersahl Greens##174858 |only if countremains(58881,0) == 2 |or
collect 1 Gersahl Greens##174858 |only if countremains(58881,0) == 1 |or
'|learnmount Springfur Alpaca##316802 |or
step
label "Accept_Alpaca_It_Up"
talk Friendly Alpaca##162765
|tip Open the group finder panel and search under Custom Premade Groups for an alpaca farming raid.
|tip The alpaca has numerous spawn points that rotate frequently.
|tip Grouping is the only efficient way to find it.
accept Alpaca It Up##58879 |or
'|learnmount Springfur Alpaca##316802 |or
step
You have completed the daily quest today
|tip You must complete this daily quest 6 more times. |only if countremains(58881,0) == 6
|tip You must complete this daily quest 5 more times. |only if countremains(58881,0) == 5
|tip You must complete this daily quest 4 more times. |only if countremains(58881,0) == 4
|tip You must complete this daily quest 3 more times. |only if countremains(58881,0) == 3
|tip You must complete this daily quest 2 more times. |only if countremains(58881,0) == 2
|tip You must complete this daily quest 1 more time. |only if countremains(58881,0) == 1
|tip This guide will reset when you can complete it again.
'|complete not completedq(58879) and not completedq(58881) |next "Accept_Alpaca_It_Up" |or
'|complete completedq(58881) |or |or
'|learnmount Springfur Alpaca##316802 |or
step
talk Friendly Alpaca##162765
accept Alpaca It In##58887 |or
'|learnmount Springfur Alpaca##316802 |or
step
collect 1 Reins of the Springfur Alpaca##174859 |or
'|learnmount Springfur Alpaca##316802 |or
step
use the Reins of the Springfur Alpaca##174859
Learn the "Springfur Alpaca" Mount |learnmount Springfur Alpaca##316802
step
_Congratulations!_
You Collected the "Springfur Alpaca" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Vendor Mounts\\Rajani Warserpent",{
author="support@zygorguides.com",
description="\nThis mount can be purchased from Zhang Ku in Vale of Eternal Blossoms for one Pristine Cloud Serpent Scale. "..
"The Pristine Cloud Serpent Scale has a small chance to drop from the rare spawn Zhang Ku in Vale of Eternal Blossoms.",
startlevel=50.0,
keywords={"Vale","of","Eternal","Blossoms"},
mounts={315427},
patch='83000',
mounttype='Flying',
model={94745},
},[[
step
label "Time_Travel"
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |or
'|learnmount Rajani Warserpent##315427 |or
step
label "Wait_for_Mogu_Invasion"
Wait for the "Assault: Warring Clans" Assault |complete ZGV.InPhase("ValeInvasionLeftCenter") |or
|tip Non-N'zoth assaults alternate every few days.
'|learnmount Rajani Warserpent##315427 |or
'|complete ZGV.InPhase('OldVale') and not hasmount(315427) |next "Time_Travel" |or
step
Enter the building |goto Vale of Eternal Blossoms New/0 22.12,24.17 < 15 |walk
Run down the stairs |goto 19.79,20.38 < 15 |walk
Follow the path |goto 21.79,12.76 < 15 |walk
|tip Avoid stepping on the yellow, green, and red tiles.
Run down the stairs |goto 25.08,6.11 < 15 |walk
kill Rei Lun##157162 |goto 21.90,12.31
|tip Downstairs in The Hall of the Serpent
collect 1 Pristine Cloud Serpent Scale##174230 |or
|tip This has a small chance to drop.
'|learnmount Rajani Warserpent##315427 |or
'|complete ZGV.InPhase('OldVale') and not hasmount(315427) |next "Time_Travel" |or
'|complete not ZGV.InPhase("ValeInvasionLeftCenter") and not hasmount(315427) |next "Wait_for_Mogu_Invasion" |or
step
Enter the building |goto 40.24,75.25 < 20 |walk
talk Zhang Ku##160711
|tip Inside the building.
buy 1 Rajani Warserpent##174649 |goto 44.46,75.42 |or
'|learnmount Rajani Warserpent##315427 |or
step
use the Rajani Warserpent##174649
Learn the "Rajani Warserpent" Mount |learnmount Rajani Warserpent##315427
step
_Congratulations!_
You Collected the "Rajani Warserpent" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Elusive Quickhoof",{
author="support@zygorguides.com",
description="\nNot finished.",
startlevel=50.0,
keywords={"Alpaca"},
mounts={316493},
patch='83000',
mounttype='Ground',
model={91873},
},[[
step
talk Tukuku##138919
buy 1 Seaside Leafy Greens Mix##161128 |goto Vol'dun/0 62.12,20.85 |or
'|learnmount Elusive Quickhoof##316493 |or
step
talk Elusive Quickhoof##162681
Choose _<Give the alpaca the Seaside Leafy Greens Mix.>_
|tip The Elusive Quickhoof is a rare spawn that only stays active for around 10 minutes.
|tip Pay attention to chat and the custom group finder in case someone finds it at a spawn location.
|tip Make sure you don't vendor your Seaside Leafy Greens Mix.
collect 1 Reins of the Elusive Quickhoof##174860 |goto 54.00,82.00 |or
You can also find it at [29.00,66.00]
And [26.40,52.50]
And [31.10,67.30]
And [42.00,60.00]
And [43.00,69.00]
And [51.10,85.90]
And [52.50,89.00]
And [54.60,53.20]
And [55.00,73.00]
'|learnmount Elusive Quickhoof##316493 |or
step
use the Reins of the Elusive Quickhoof##174860
Learn the "Elusive Quickhoof" Mount |learnmount Elusive Quickhoof##316493
step
_Congratulations!_
You Collected the "Elusive Quickhoof" Mount.
]])
