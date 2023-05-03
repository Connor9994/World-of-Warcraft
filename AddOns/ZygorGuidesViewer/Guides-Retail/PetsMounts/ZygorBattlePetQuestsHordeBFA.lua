local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("PetBattleHBFA") then return end
ZygorGuidesViewer.GuideMenuTier = "BFA"
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Battle Pet Dungeons\\Gnomeregan",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis guide will assist you in completing the Gnomeregan pet battle dungeon.",
keywords={"Pet", "Battle", "DM", "Dun", "Morogh", "Eastern", "Kingdoms"},
condition_suggested=function() return level >= 50 and completedq(46291) and not completedq(54185) end,
condition_end=function() return completedq(54185) end,
condition_valid=function() return level >= 50 and completedq(46291) end,
condition_valid_msg="You have not unlocked the Gnomeregan pet battle dungeon!\n"..
"Complete the quest \"The Deadmines Strike Back\" in the "..
"\"Deadmines\" pet battle guide.",
startlevel=50.0,
},[[
step
Enter the building |goto Dazar'alor/0 56.80,31.16 < 10 |walk
talk Radek Fuselock##147641
accept Trouble in Gnomeregan##54276 |goto 56.26,30.82
step
Enter the tunnel |goto New Tinkertown/0 32.54,36.95 < 10 |walk
Follow the path |goto Dun Morogh/10 53.73,81.03 < 20 |walk
talk Micro Zoox##147070
turnin Trouble in Gnomeregan##54276 |goto 31.06,71.44
step
label "Begin_Pet_Battle_Challenge"
talk Micro Zoox##147070
accept Gnomeregan's New Guardians##54185 |goto 31.06,71.44 |only if not completedq(54185)
accept Pet Battle Challenge: Gnomeregan##54186 |only if completedq(54185)
|tip You cannot heal your pets during a pet battle challenge. |only if completedq(54185)
|tip You can bypass this by logging out without leaving the dungeon and healing your pets on another character. |only if completedq(54185)
step
talk Micro Zoox##147070 |goto 31.06,71.44
Tell him _"I'm ready, send me into Gnomeregan!"_
Ask Micro Zoox to Teleport You Inside of Gnomeregan |scenariostart |q 54186 |future
step
clicknpc Prototype Annoy-O-Tron##146001
|tip In front of you.
Defeat the Annoy-O-Tron Prototype |scenariogoal 1/43493 |q 54186 |future
step
clicknpc Living Sludge##146182
|tip Click the Gnomeregan Teleporter to the left to take you below.
Defeat the Living Sludge |scenariogoal 2/43521 |q 54186 |future
step
clicknpc Living Napalm##146183
|tip To the right.
Living Napalm Defeated |scenariogoal 2/43522 |q 54186 |future
step
clicknpc Living Permafrost##146181
|tip To the left.
Defeat the Living Permafrost |scenariogoal 2/43523 |q 54186 |future
step
clicknpc Door Control Console##146932
|tip To the right.
Choose _<Pull Random Levers>_
Defeat the Door Control Console's Defenses |scenariogoal 3/43524 |q 54186 |future
step
clicknpc Bomb Crusher 5000##147316
|tip Through the door.
|tip Use the "Nitro Boosters" ability for a brief speed burst.
|tip Use the "Defensive Force Field" for a six second damage immunity.
|tip use the Force Field first, then the Boosters.
|tip Repeat this process to reach the end.
Make it to the End of the Hallway Full of Bomb Bots |scenariogoal 4/43542 |q 54186 |future
step
clicknpc Cockroach##145971
|tip In front of you.
Defeat the Cockroach |scenariogoal 5/43526 |q 54186 |future
step
clicknpc Leper Rat##145968
|tip To the right.
Defeat the Leper Rat |scenariogoal 5/43527 |q 54186 |future
step
Watch the dialogue
clicknpc Bloated Leper Rat##146005
|tip In front of you.
Defeat the Bloated Leper Rat |scenariogoal 6/43528 |q 54186 |future
step
clicknpc Gnomeregan Guard Wolf##146002
|tip On the left.
Defeat the Gnomeregan Guard Wolf |scenariogoal 7/43531 |q 54186 |future
step
clicknpc Gnomeregan Guard Mechanostrider##146004
|tip In the middle.
Defeat the Gnomeregan Guard Mechanostrider |scenariogoal 7/43529 |q 54186 |future
step
clicknpc Gnomeregan Guard Tiger##146003
|tip On the right.
Defeat the Gnomeregan Guard Tiger |scenariogoal 7/43530 |q 54186 |future
step
Watch the dialogue
|tip Walk up to the shadowy elf in front of you.
Confront the Shadowy Figure |scenariogoal 8/43558 |q 54186 |future
step
clicknpc Pulverizer Bot Mk 6001##145988
|tip In the middle of the room.
Defeat the Pulverizer Bot Mk 6001 |scenariogoal 9/43532 |q 54186 |future
step
talk Micro Zoox##147485
Tell him _"This place is crazy, get me out of here!"_
Leave Gnomeregan |goto Gnomeregan Scenario/2 0.00,0.00 > 10 |c |noway |q 54186 |future
step
talk Micro Zoox##147070
turnin Gnomeregan's New Guardians##54185 |goto Dun Morogh/10 31.06,71.44
|only if not completedq(54185)
step
talk Micro Zoox##147070
turnin Pet Battle Challenge: Gnomeregan##54186 |goto 31.06,71.44
|only if completedq(54185)
step
_Congratulations!_
You Completed the "Gnomeregan Pet Battle" Dungeon.
|tip This can be completed every week on challenge mode.
|tip This guide will reset when you can complete it again.
'|complete not completedq(54186) |next "Begin_Pet_Battle_Challenge"
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Battle Pet Dungeons\\Stratholme",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis guide will assist you in completing the Stratholme pet battle dungeon.",
keywords={"Pet", "Battle"},
condition_suggested=function() return level >= 50 and completedq(54185) and not completedq(56491) end,
condition_end=function() return completedq(56491) end,
condition_valid=function() return level >= 50 and completedq(46291) end,
condition_valid_msg="You have not unlocked the Stratholme pet battle dungeon!\n"..
"Complete the quest \"Gnomeregan's New Guardians\" in the "..
"\"Gnomeregan\" pet battle guide.",
startlevel=50.0,
},[[
step
Enter the building |goto Dazar'alor/0 56.82,31.15 < 10 |walk
talk Radek Fuselock##147641
|tip Inside the building.
accept Restless Dead##56490 |goto 56.26,30.82
step
talk Sean Wilkers##150987
turnin Restless Dead##56490 |goto Eastern Plaguelands/0 43.13,19.93
step
label "Begin_Pet_Battle_Challenge"
talk Sean Wilkers##150987
accept Tiny Terrors of Stratholme##56491 |goto 43.13,19.93 |only if not completedq(56491)
accept Pet Battle Challenge: Stratholme##56492 |goto 43.13,19.93 |only if completedq(56491)
|tip You cannot heal your pets during a pet battle challenge. |only if completedq(56491)
|tip You can bypass this by logging out without leaving the dungeon and healing your pets on another character. |only if completedq(56491)
step
talk Sean Wilkers##150987
Tell him _"I'm ready, send me into Stratholme!"_
Ask Sean Wilkers to Open the Stratholme Service Entrance |scenariostart |goto 43.13,19.94 |q 56492 |future
step
clicknpc Belchling##150923
Defeat Belchling |scenariogoal 1/45436 |goto Stratholme Battle Pet/0 66.62,52.79 |q 56492 |future
step
clicknpc Sludge Belcher##150922
Defeat the Sludge Belcher |scenariogoal 2/45437 |goto 66.71,52.62 |q 56492 |future
step
clicknpc Wandering Phantasm##150914
|tip It wanders around this area.
Defeat the Wandering Phantasm |scenariogoal 3/45439 |goto 60.24,44.45 |q 56492 |future
step
clicknpc Crypt Fiend##150911
Defeat the Crypt Fiend |scenariogoal 3/45438 |goto 58.07,43.11 |q 56492 |future
step
clicknpc Liz the Tormentor##150925
Defeat Liz the Tormentor |scenariogoal 4/45441 |goto 57.73,45.81 |q 56492 |future
step
Reach Slaughter Square |scenariogoal 5/45442 |goto 58.14,37.47 |q 56492 |future
step
clicknpc Plagued Critters##155145
Choose _"Extermination Time!"_
Defeat the Plagued Critters |scenariogoal 6/45444 |goto 57.71,37.11 |q 56492 |future
step
clicknpc Risen Guard##155267
Defeat the Risen Guard |scenariogoal 7/45490 |goto 59.90,30.25 |q 56492 |future
step
clicknpc Nefarious Terry##150929
Defeat Nefarious Terry |scenariogoal 8/45446 |goto 56.59,22.00 |q 56492 |future
step
clicknpc Cleansed Sludge Belcher##151191
Control the Cleansed Sludge Belcher |invehicle |goto 52.65,20.12 |q 56492 |future
step
Kill enemies around this area
|tip Use the abilities on your vehicle bar.
Clear the Courtyard of Undead |scenariostage 9 |goto 46.72,20.33 |q 56492 |future
step
Stop Controlling the Cleansed Sludge Belcher |outvehicle |q 56492 |future
|tip Click the "Exit" button on your vehicle bar.
step
Enter the building |goto 42.75,20.32 < 5 |walk
clicknpc Tommy the Cruel##150918
|tip Inside the building.
Defeat Tommy the Cruel |scenariogoal 10/45447 |goto 38.46,21.58 |q 56492 |future
step
clicknpc Huncher##150917
|tip Inside the building.
Defeat Huncher |scenariogoal 10/45448 |goto 38.54,19.03 |q 56492 |future
step
Watch the dialogue
clicknpc Blackmane##150858
|tip Inside the building.
|tip Blackmane will resurrect after being killed.
|tip After resurrection, Blackmane will gain the Undead pet ability to return to life for one round after being killed.
Defeat Blackmane |scenariogoal 11/45449 |goto 37.49,20.45 |q 56492 |future
step
talk Sean Wilkers##155346
Tell him _"This place is scary, get me out of here!"_
Leave Stratholme |goto 37.35,21.34 > 100 |c |q 56492 |future
step
talk Sean Wilkers##150987
turnin Tiny Terrors of Stratholme##56491 |goto Eastern Plaguelands/0 43.13,19.93
|only if not completedq(56491)
step
talk Sean Wilkers##150987
turnin Pet Battle Challenge: Stratholme##56492 |goto 43.13,19.93
|only if completedq(56491)
step
_Congratulations!_
You Completed the "Stratholme Pet Battle" Dungeon.
|tip This can be completed every week on challenge mode.
|tip This guide will reset when you can complete it again.
'|complete not completedq(56492) |next "Begin_Pet_Battle_Challenge"
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Battle Pet Dungeons\\Blackrock Depths",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="This guide will assist you in completing the Blackrock Depths pet battle dungeon.",
keywords={"Pet", "Battle"},
condition_suggested=function() return level >= 50 and completedq(56491) and not completedq(58457) end,
condition_end=function() return completedq(58457) end,
condition_valid=function() return level >= 50 and completedq(56491) end,
condition_valid_msg="You have not unlocked the Blackrock Depths pet battle dungeon!\n"..
"Complete the quest \"Tiny Terrors of Stratholme\" in the "..
"\"Stratholme\" pet battle guide.",
startlevel=50.0,
},[[
step
talk Radek Fuselock##147641
accept Shadowy Showdown##58456 |goto Dazar'alor/0 56.26,30.82
step
talk Burt Macklyn##161782
turnin Shadowy Showdown##58456 |goto Burning Steppes/16 33.07,23.13
step
label "Begin_Pet_Battle_Challenge"
talk Burt Macklyn##161782
accept Shadows of Blackrock##58457 |goto 33.07,23.13 |only if not completedq(58457)
accept Pet Battle Challenge: Blackrock Depths##58458 |goto 33.07,23.13 |only if completedq(58457)
|tip You cannot heal your pets during a pet battle challenge. |only if completedq(58457)
|tip You can bypass this by logging out without leaving the dungeon and healing your pets on another character. |only if completedq(58457)
step
talk Burt Macklyn##161782
Tell him _"I'm ready, send me into Blackrock Depths!"_
Enter Blackrock Depths |scenariostart |goto 33.07,23.13 |q 58458 |future
step
Approach the Center of the Arena |scenariogoal 1/46937 |goto BRD Pet Battle/0 41.26,50.05 |q 58458 |future
step
Watch the dialogue
talk Horu Cloudwatcher##160209
Tell him _"Begin pet battle."_
Defeat Horu Cloudwatcher |scenariogoal 2/46938 |goto 41.74,49.33 |q 58458 |future
step
Watch the dialogue
clicknpc Rampage##161649
Defeat the Caged Creature |scenariogoal 3/46939 |goto 41.73,49.34 |q 58458 |future
step
Watch the dialogue
talk Therin Skysong##160207
Tell him _"Begin pet battle."_
Defeat Therin Skysong |scenariogoal 4/46940 |goto 40.73,50.43 |q 58458 |future
step
Click the Caged Creature
Defeat the Caged Creature |scenariogoal 5/46942 |goto 41.89,50.41 |q 58458 |future
step
Click the Caged Creature
Defeat the Caged Creature |scenariogoal 5/46941 |goto 41.74,49.33 |q 58458 |future
step
Watch the dialogue
talk Alran Heartshade##160206
Tell him _"Begin pet battle."_
Defeat Alran Heartshade |scenariogoal 6/46943 |goto 41.73,49.33 |q 58458 |future
step
Watch the dialogue
talk Zuna Skullcrush##160208
Tell her _"Begin pet battle."_
Defeat Zuna Skullcrush |scenariogoal 7/46944 |goto 41.73,49.33 |q 58458 |future
step
Watch the dialogue
talk Tasha Riley##160210
Tell her _"Begin pet battle."_
Defeat Tasha Riley |scenariogoal 8/46945 |goto 41.12,49.07 |q 58458 |future
step
Watch the dialogue
talk Pixy Wizzle##160205
Tell her _"Begin pet battle."_
Defeat Pixy Wizzle |scenariogoal 9/46946 |goto 41.74,49.34 |q 58458 |future
step
Leave Blackrock Depths |goto Burning Steppes/16 33.40,23.49 < 1000 |c |noway |q 58458 |future
|tip Right-click your character portrait and select "Leave Instance Group."
step
talk Burt Macklyn##161782
turnin Shadows of Blackrock##58457 |goto Burning Steppes/16 33.07,23.13
|only if not completedq(58457)
step
talk Burt Macklyn##161782
turnin Pet Battle Challenge: Blackrock Depths##58458 |goto Burning Steppes/16 33.07,23.13
|only if completedq(58457)
step
_Congratulations!_
You Completed the "Blackrock Depths Pet Battle" Dungeon.
|tip This can be completed every week on challenge mode.
|tip This guide will reset when you can complete it again.
'|complete not completedq(58458) |next "Begin_Pet_Battle_Challenge"
]])
