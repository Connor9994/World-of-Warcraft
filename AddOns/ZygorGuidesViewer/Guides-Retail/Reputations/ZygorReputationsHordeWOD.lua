local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("ReputationsHWOD") then return end
ZygorGuidesViewer.GuideMenuTier = "WOD"
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Warlords of Draenor\\Arakkoa Outcasts",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Arakkoa Outcasts faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Arakkoa Outcasts') < Exalted end,
achieveid={9469},
patch='60001',
},[[
stickystart "info"
step
label "farm"
Killing enemies and questing in Spires of Arak gives you Arakkoa Outcasts rep:
Farm in Skettis |next "skettis" |confirm
Farm in Lost Veil Anzu |next "veil" |confirm
step
label "skettis"
kill Skyreach Labormaster##85542+, Skyreach Tempest-Keeper##84467+, Dread Raven##84083+, Flighted Storm-Spinner##89085+
Kill mobs around _Skettis_ for Arakkoa Outcast reputation |goto Spires of Arak 56.9,11.7
Click to return to the menu |next "farm" |confirm
step
label "veil"
kill Infected Plunderer##86215+, Infected Mechanic##89144+, Befuddled Relic-Seeker##86205+, Highmaul Relic-Seeker##86155+, Highmaul Skullcrusher##89127+
Kill mobs around _Lost Veil Anzu_ for Arakkoa Outcast reputation |goto Spires of Arak 73.4,45.3
Click to return to the menu |next "farm" |confirm
step
label "info"
Your current reputation rank is:
_Neutral_ |only if rep('Arakkoa Outcasts')==Neutral
_Friendly_ |only if rep('Arakkoa Outcasts')==Friendly
_Honored_ |only if rep('Arakkoa Outcasts')==Honored
_Revered_ |only if rep('Arakkoa Outcasts')==Revered
_Exalted_ |only if rep('Arakkoa Outcasts')==Exalted
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Warlords of Draenor\\Frostwolf Orcs",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Frostwolf Orcs faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Frostwolf Orcs') < Exalted end,
achieveid={9471},
patch='60001',
},[[
stickystart "info"
step
label "menu"
Killing enemies and questing in Frostfire Ridge give you Frostwolf Orc rep:
Stonefury Cliffs |next "stone" |confirm
Magnarok |next "magnarok" |confirm
Iron Siegeworks |next "iron" |confirm
step
label "stone"
kill Bloodmaul Brute##77991+, Bloodmaul Magma Shaper##77992+, Bloodmaul Taskmaster##77993+, Bloodmaul Geomancer##78578
Kill Bloodmaul mobs and their pets found around _Stonefury Cliffs_ for Frostwolf Orcs reputation |goto Frostfire Ridge/0 44.6,18.8
Return to the main menu |next "menu" |confirm
step
label "magnarok"
Many mobs in this area are _Elite_
kill Icecrag Mountainbreaker##87346+, Vicious Acidmaw##76905+, Burning Slagmaw##72348+
Kill mobs found in _Magnarok_ for Frostwolf Orcs reputation |goto Frostfire Ridge/0 69.7,30.5
Return to the main menu |next "menu" |confirm
step
label "iron"
kill Grom'kar Shocktrooper##77944+, Grom'kar Footsoldier##85997+, Grom'kar Pulverizer##78210+, Grom'kar Warforger##77945+, Grom'kar Enforcer##77940
Kill Grom'kar mobs around _Iron Siegeworks_ for Frostwolf Orcs reputation |goto Frostfire Ridge/0 86.1,54.9
Return to the main menu |next "menu" |confirm
step
label "info"
Your current reputation rank is:
_Neutral_ |only if rep('Frostwolf Orcs')==Neutral
_Friendly_ |only if rep('Frostwolf Orcs')==Friendly
_Honored_ |only if rep('Frostwolf Orcs')==Honored
_Revered_ |only if rep('Frostwolf Orcs')==Revered
_Exalted_ |only if rep('Frostwolf Orcs')==Exalted
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Warlords of Draenor\\Laughing Skull Orcs",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Laughing Skull Orcs faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Laughing Skull Orcs') < Exalted end,
achieveid={9475},
patch='60001',
},[[
step
Routing to Rep |next "menu" |only if hasbuilding(144,2) or hasbuilding(145,3)
Routing to End |next "end" |only if default
stickystart "info"
step
label "menu"
Killing enemies in Gorgrond gives you Laughing Skull Orcs rep:
Select an area below to kill mobs in for reputation
The Pit |next "pit" |confirm
Everbloom Wilds |next "wilds" |confirm
step
label "pit"
kill Iron Cauterizer##85127+, Iron Enforcer##85124+, Iron Bulwark##86536+, Iron Deadshot##86528+, Iron Warden##86499+
Kill mobs around _The Pit_ for Laughing Skill Orcs reputation |goto Gorgrond 48.9,28.9
Return to the main menu |next "menu" |confirm
step
label "wilds"
kill Venomous Ravager##86263+, Everbloom Wasp##86264+, Lumbering Ancient##86262+, Brine Lasher##86267
Kill mobs around _Everbloom Wilds_ for Laughing Skull Orcs reputation |goto Gorgrond 64.2,35.0
Return to the main menu |next "menu" |confirm
step
label "info"
Your current reputation rank is:
_Neutral_ |only if rep('Laughing Skull Orcs')==Neutral
_Friendly_ |only if rep('Laughing Skull Orcs')==Friendly
_Honored_ |only if rep('Laughing Skull Orcs')==Honored
_Revered_ |only if rep('Laughing Skull Orcs')==Revered
_Exalted_ |only if rep('Laughing Skull Orcs')==Exalted
step
label "end"
You must have at least a _level 2 Trading Post_ in your Garrison to gain Laughing Skull Orcs reputation!
|tip Use the Garrison Buildings guide to accomplish this.
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Warlords of Draenor\\Order of the Awakened",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Order of the Awakened faction.",
achieveid={10350},
patch='60200',
},[[
step
Complete the following guide before continuing:
_Tanaan Jungle (100) Main Questline_
Click here to check out our Tanaan Jungle Questline guide |next "Leveling Guides\\Draenor (10-50)\\Tanaan Jungle (100)" |confirm |or
confirm |only if not completedq(38578) |or
step
label "order_awakened_start"
talk Dawn-Seeker Krisek##95424
accept Unseen Influence##39433 |goto Tanaan Jungle/0 60.44,46.72
step
Follow the path |goto Tanaan Jungle/0 54.9,64.1 < 30 |only if walking
kill Broodlord Ixkor##92429
|tip You may have to wait for it to respawn.
collect 1 Fel-Corrupted Apexis Fragment##128346 |q 39433/1 |goto Tanaan Jungle/0 57.8,67.3
|tip These drop from any rare in Tanaan Jungle. You can also use the Group Finder to find Rares or do this quest while doing other dailies.
step
Follow the path |goto Tanaan Jungle/0 55.9,66.1 < 30 |only if walking
Continue following the path |goto Tanaan Jungle/0 54.9,63.5 < 30 |only if walking
Run through here |goto Tanaan Jungle/0 51.9,60.5 < 30 |only if walking
Jump down here |goto Tanaan Jungle/0 49.1,57.4 < 10 |only if walking
kill Captain Grok'mar##93264
|tip You may have to wait for him to respawn.
collect 2 Fel-Corrupted Apexis Fragment##128346 |q 39433/1 |goto Tanaan Jungle/0 48.6,57.4
|tip These drop from any rare in Tanaan Jungle. You can also use the Group Finder to find Rares or do this quest while doing other dailies.
step
Jump up here |goto Tanaan Jungle/0 49.1,57.4 < 10 |only if walking
Follow the path |goto Tanaan Jungle/0 49.1,59.3 < 30 |only if walking
Continue following the dirt path |goto Tanaan Jungle/0 46.6,65.9 < 30 |only if walking
Turn off the road here |goto Tanaan Jungle/0 43.1,70.2 < 20 |only if walking
Enter the hole in the ground |goto Tanaan Jungle/0 42.4,68.9 < 20 |walk
Follow the path |goto Tanaan Jungle/0 40.5,69.3 < 20 |only if walking
kill Kris'kar the Unredeemed##93279
|tip You may have to wait for him to respawn.
collect 3 Fel-Corrupted Apexis Fragment##128346 |q 39433/1 |goto Tanaan Jungle/0 39.6,68.1
|tip These drop from any rare in Tanaan Jungle. You can also use the Group Finder to find Rares or do this quest while doing other dailies.
step
Follow the path |goto Tanaan Jungle/0 40.5,69.3 < 20 |only if walking
Leave the hole in the ground |goto Tanaan Jungle/0 42.4,68.9 < 20 |walk
kill Bramblefell##91093
|tip You may have to wait for him to respawn. He's a big tree ent that patrols the northern part of Zorammarsh, so you may need to search for him.
collect 4 Fel-Corrupted Apexis Fragment##128346 |q 39433/1 |goto Tanaan Jungle/0 40.8,69.6
|tip These drop from any rare in Tanaan Jungle. You can also use the Group Finder to find Rares or do this quest while doing other dailies.
step
Follow the path |goto Tanaan Jungle/0 38.2,75.1 < 30 |only if walking
Enter the cave |goto Tanaan Jungle/0 37.4,75.9 < 30 |walk
Run down the path |goto Tanaan Jungle/0 36.4,77.0 < 20 |only if walking
kill Captain Ironbeard##93076
|tip You may have to wait for him to respawn. He's a skeleton that walks around in this area of the cave, so you may need to search for him.
collect 5 Fel-Corrupted Apexis Fragment##128346 |q 39433/1 |goto Tanaan Jungle/0 36.5,79.8
|tip These drop from any rare in Tanaan Jungle. You can also use the Group Finder to find Rares or do this quest while doing other dailies.
step
Follow the path |goto Tanaan Jungle/0 36.7,78.9 < 20 |only if walking
Continue following the path |goto Tanaan Jungle/0 36.4,76.4 < 20 |only if walking
Follow the path |goto Tanaan Jungle/0 38.5,74.6 < 40 |only if walking
Run on the dirt road |goto Tanaan Jungle/0 37.5,69.5 < 30 |only if walking
Follow the path |goto Tanaan Jungle/0 35.6,67.5 < 30 |only if walking
Follow the dirt path up |goto Tanaan Jungle/0 31.1,63.0 < 30 |only if walking
Run up the stairs |goto Tanaan Jungle/0 28.8,66.7 < 20 |only if walking
Continue up the stairs |goto Tanaan Jungle/0 29.1,68.4 < 20 |only if walking
Follow the stairs up |goto Tanaan Jungle/0 30.4,68.6 < 20 |only if walking
kill Ceraxas##90434
|tip You may have to wait for it to respawn.
collect 6 Fel-Corrupted Apexis Fragment##128346 |q 39433/1 |goto Tanaan Jungle/0 31.4,68.0
|tip These drop from any rare in Tanaan Jungle. You can also use the Group Finder to find Rares or do this quest while doing other dailies.
step
Run down the stairs |goto Tanaan Jungle/0 30.7,68.5 < 20 |only if walking
Follow the stairs up |goto Tanaan Jungle/0 30.3,70.2 < 20 |only if walking
kill Imp-Master Valessa##90429
|tip You may have to wait for her to respawn. She patrols this small area, so you may need to search for her.
collect 7 Fel-Corrupted Apexis Fragment##128346 |q 39433/1 |goto Tanaan Jungle/0 31.6,72.8
|tip These drop from any rare in Tanaan Jungle. You can also use the Group Finder to find Rares or do this quest while doing other dailies.
step
Follow the path |goto Tanaan Jungle/0 45.3,44.7 < 30 |only if walking
kill Felsmith Damorka##92647
|tip You may have to wait for her to respawn.
collect 8 Fel-Corrupted Apexis Fragment##128346 |q 39433/1 |goto Tanaan Jungle/0 45.9,47.2
|tip These drop from any rare in Tanaan Jungle. You can also use the Group Finder to find Rares or do this quest while doing other dailies.
step
Follow the path |goto Tanaan Jungle/0 47.8,44.7 < 30 |only if walking
kill Grand Warlock Nethekurse##91695
|tip You may have to wait for him to respawn. He walks in a circle around this area on this path, so you may need to search for him.
collect 9 Fel-Corrupted Apexis Fragment##128346 |q 39433/1 |goto Tanaan Jungle/0 47.4,42.3
|tip These drop from any rare in Tanaan Jungle. You can also use the Group Finder to find Rares or do this quest while doing other dailies.
step
kill Commander Org'mok##89675
|tip You may have to wait for him to respawn. He walks back and forth on this path, so you may need to search for him.
collect 10 Fel-Corrupted Apexis Fragment##128346 |q 39433/1 |goto Tanaan Jungle/0 50.3,45.2
|tip These drop from any rare in Tanaan Jungle. You can also use the Group Finder to find Rares or do this quest while doing other dailies.
step
talk Dawn-Seeker Krisek##95424
turnin Unseen Influence##39433 |goto Tanaan Jungle/0 60.44,46.72
step
You've completed the daily for today
Click to restart the dailies run |confirm |next "order_awakened_start"
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Warlords of Draenor\\The Saberstalkers",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with The Saberstalkers faction.",
achieveid={10350},
patch='60200',
},[[
step
Complete the following guide before continuing:
_Tanaan Jungle (100) Main Questline_
confirm |only if not completedq(38578)
step
label "saberstalkers_start"
talk Nimi Brightcastle##93396
accept Tooth and Claw##39529 |goto Tanaan Jungle/0 59.7,45.9 |or
|tip This quest has a chance to be available each day, but is not guaranteed to be available.
_
Click here if the quest is not available |confirm |or
step
_Go through_ the doorway |goto Tanaan Jungle/0 60.8,44.7 < 20
kill Hulking Diretusk##89688+, Diretusk Sow##92876+, Diretusk Piglet##92875+
collect 100 Tanaan Jungle Tooth##128438 |q 39529/1 |goto Tanaan Jungle/0 63.9,41.5
step
_Follow_ the path up |goto Tanaan Jungle/0 61.9,43.5 < 20
talk Nimi Brightcastle##93396
turnin Tooth and Claw##39529 |goto Tanaan Jungle/0 59.7,45.9
step
_Follow_ the path around the Alliance town |goto Tanaan Jungle/0 55.0,56.1 < 20
_Follow_ the path |goto Tanaan Jungle/0 54.5,62.9 < 30
_Run on_ the dirt road |goto Tanaan Jungle/0 54.7,64.9 < 20
_Go up_ the dirt path |goto Tanaan Jungle/0 54.0,70.5 < 20
talk Z'tenga the Walker##92805
accept Rumble in the Jungle##39565 |goto Tanaan Jungle/0 55.3,74.8
|tip This quest can only be done once per week.
step
_Follow_ the path |goto Tanaan Jungle/0 54.7,76.7 < 30
kill Blackfang Prowler##89746+, Blackfang Shaman##92481+, Blackfang Savage##89695+, Blackfang Hunter##89747+
|tip They are all around this area. You can use the Group Finder and select Premade Groups -> Custom, then search for "Fang'rila" or "Blackfang". Being in a group will make this go much faster.
collect 40 Blackfang Claw##124099 |q 39565 |goto Tanaan Jungle/0 55.8,78.6
step
talk Z'tenga the Walker##92805
buy Minor Blackfang Challenge Totem##124093 |complete itemcount(124093) > 0 or completedq(39565) |goto Tanaan Jungle/0 55.3,74.7
buy Major Blackfang Challenge Totem##124094 |complete itemcount(124094) > 0 or completedq(39565) |goto Tanaan Jungle/0 55.3,74.7
buy Prime Blackfang Challenge Totem##124095 |complete itemcount(124095) > 0 or completedq(39565) |goto Tanaan Jungle/0 55.3,74.7
step
_Follow_ the path |goto Tanaan Jungle/0 54.7,75.9 < 30
_Enter_ the Challenge Arena |goto Tanaan Jungle/0 54.8,80.9 < 20
use Minor Blackfang Challenge Totem##124093
kill Akrrilo##92766 |q 39565/1 |goto Tanaan Jungle/0 54.4,81.0
|tip Other people can help you, or you can help other people who summon him. Everyone will get credit.
step
use Major Blackfang Challenge Totem##124094
kill Rendarr##92817 |q 39565/2 |goto Tanaan Jungle/0 54.4,81.0
|tip Other people can help you, or you can help other people who summon him. Everyone will get credit.
step
use Prime Blackfang Challenge Totem##124095
kill Eyepiercer##92819 |q 39565/3 |goto Tanaan Jungle/0 54.4,81.0
|tip Other people can help you, or you can help other people who summon him. Everyone will get credit.
step
_Follow_ the path |goto Tanaan Jungle/0 54.9,77.4 < 30
talk Z'tenga the Walker##92805
turnin Rumble in the Jungle##39565 |goto Tanaan Jungle/0 55.3,74.8
step
You've completed the dailies for today
Click to restart the dailies run |confirm |next "saberstalkers_start"
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Warlords of Draenor\\Steamwheedle Preservation Society",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Steamwheedle Preservation Society faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Steamwheedle Preservation Society') < Exalted end,
achieveid={9472},
patch='60001',
},[[
step
label "menu"
You Are _Neutral_ with Steamwheedle Preservation Society |only if rep('Steamwheedle Preservation Society')==Neutral
You Are _Friendly_ with Steamwheedle Preservation Society |only if rep('Steamwheedle Preservation Society')==Friendly
You Are _Honored_ with Steamwheedle Preservation Society  |only if rep('Steamwheedle Preservation Society')==Honored
You Are _Revered_ with Steamwheedle Preservation Society  |only if rep('Steamwheedle Preservation Society')==Revered
You Are _Exalted_ with Steamwheedle Preservation Society  |only if rep('Steamwheedle Preservation Society')==Exalted
_Click a line below to_:
Farm Gorian Artifact Fragments |next "farm" |confirm
_
Chest runs for Artifact Fragments and Highmaul Relics |next "loot" |confirm
_
Kill Rares in Nagrand |next "rare" |confirm
step
label "farm"
kill Direfang Prowler##86931+, Warsong Wolf Trainer##87231+, Marsh Anaconda##87039+, Highmaul Guard##87221+, Young Razorclaw##88957+, Wetland Riverbeast##87020+, Grand Elekk##86741+, Thorncoat Talbuk##86727+
collect Gorian Artifact Fragment##118099 |n |goto Nagrand D 36.0,34.1
|tip Turn these in as stacks of 20 for Steamwheedle Preservation Society reputation.
Click to turn in |confirm |next "rare_find"
step
label "loot"
Follow the path, looking at these locations for Highmaul Reliquary chests
map Nagrand D
path follow loose; loop on; ants straight
path	27.8,46.4	35.1,48.6	37.4,42.9
path	49.1,37.6	52.7,33.6	55.2,34.2
path	56.5,38.2	63.1,36.0	64.7,21.6
path	59.0,20.0	57.8,18.6	51.8,26.1
path	49.9,25.7	40.6,25.0	38.8,27.5
click Highmaul Reliquary##237227
collect Gorian Artifact Fragment##118099 |n
collect Highmaul Relic##118100 |n
|tip You turn these in for Steamwheedle Preservation Society reputation.
Click to turn in |confirm
step
label "rare_find"
talk Sallee Silverclamp##87393
|tip Turn in your Highmaul Relics and Gorian Artifact Fragments.
accept A Rare Find##37125 |goto Nagrand D 50.4,41.3 |repeatable |or |only if itemcount(118100) >= 1
accept Fragments of the Past##35147 |goto Nagrand D 50.4,41.3 |repeatable |or |only if itemcount(118099) >= 20
_Click_ to return to the menu |confirm |next "menu"
step
label "rare"
Follow the path:
map Nagrand D
path	30.0,44.8	34.1,51.6	41.7,45.0
path	60.3,38.6	64.4,30.4	62.2,17.5
path	51.2,16.5	48.1,22.0	37.5,38.5
kill Thek'talon##86750,Mu'gra##87666, Xelganak##86835, Dekorhan##86743, Direhoof##86729, Bergruu##86732, Aogexon##86774, Gagrog the Brutal##86771, Vileclaw##88951
_Collect the items that each rare drops_ |only if itemcount(118660) ==0 or itemcount(118660) ==0 or itemcount(118659)==0 or itemcount(118661)==0 or itemcount(118656) ==0 or itemcount(118657)==0 or itemcount(118655)==0 or itemcount(118654)==0 or itemcount(118658)==0 or itemcount(120172)==0
collect Thek'talon's Talon##118660 |n |only if itemcount(118660) >= 1
collect Mu'gra's Head##118659 |n |only if itemcount(118659) >= 1
collect Xelganak's Stinger##118661 |n |only if itemcount(118661) >= 1
collect Dekorhan's Tusk##118656 |n |only if itemcount(118656) >= 1
collect Direhoof's Hide##118657 |n |only if itemcount(118657) >= 1
collect Bergruu's Horn##118655 |n |only if itemcount(118655) >= 1
collect Aogexon's Fang##118654 |n |only if itemcount(118654) >= 1
collect Gagrog's Skull##118658 |n |only if itemcount(118658) >= 1
collect Vileclaw's Claw##120172 |n |only if itemcount(120172) >= 1
|tip You don't have to collect them all.
Click to turn in |confirm
step
talk Gazmolf Futzwangler##87706 |goto Nagrand D/0 50.3,41.1
|tip Turn in your quest items.
accept Aogexon's Fang##37210 |only if itemcount(118654) >= 1 |or
accept Bergruu's Horn##37211 |or |only if itemcount(118655) >= 1 |or
accept Dekorhan's Tusk##37221 |or |only if itemcount(118656) >= 1 |or
accept Direhoof's Hide##37222 |or |only if itemcount(118657) >= 1 |or
accept Gagrog's Skull##37223 |or |only if itemcount(37223) >= 1 |or
accept Mu'gra's Head##37224 |or |only if itemcount(118659) >= 1 |or
accept Thek'talon's Talon##37225 |or |only if itemcount(118660) >= 1 |or
accept Xelganak's Stinger##37226 |or |only if itemcount(118661) >= 1 |or
accept Vileclaw's Claw##37520 |or |only if itemcount(120172) >= 1 |or
_Click_ to return to the menu |confirm always |next "menu" |only if default
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Warlords of Draenor\\Vol'jin's Headhunters",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Vol'jin's Headhunters faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Vol\'jin\'s Headhunters') < Exalted end,
achieveid={10350},
patch='60200',
},[[
step
Complete the following guide before continuing:
_Tanaan Jungle (100) Main Questline_
confirm |only if not completedq(38578)
step
label "voljin_headhunters_start"
click Tanaan Planning Map##241725
|tip It looks like a round table with a map laying on it.
accept Assault on Ironhold Harbor##37940 |goto Tanaan Jungle/0 61.5,45.9 |or
accept Bleeding the Bleeding Hollow##38044 |goto Tanaan Jungle/0 61.5,45.9 |or
accept Battle At The Iron Front##38047 |goto Tanaan Jungle/0 61.5,45.9 |or
accept Assault on the Ruins of Kra'nak##38252 |goto Tanaan Jungle/0 61.5,45.9 |or
accept Assault on The Fel Forge##38441 |goto Tanaan Jungle/0 61.5,45.9 |or
accept Assault on the Temple of Sha'naar##38449 |goto Tanaan Jungle/0 61.5,45.9 |or
accept Assault on the Throne of Kil'jaeden##38586 |goto Tanaan Jungle/0 61.5,45.9 |or
|tip You will be able to choose between 2 of these quests, but will only be able to accept 1 of these quests per day.
step
kill Grom'kar Warsmith##89935+, Grom'kar Sentry##89857+, Grom'kar Leadslinger##89777+, Grom'kar Cauterizer##90136+
clicknpc True Iron Bomb##90069
|tip They look like round metal spiked balls on the ground and sitting on objects all around this area. Get them and cast the spell they grant you on Iron Battle Engines. They look like big metal artillery machines all around this area.
click Box of Iron Horde Equipment##239839
|tip They look like wooden crates on the ground around this area.
clicknpc Iron Horde Banner##90433
|tip They look like vertical flags made of cloth and bone all around this area.
click Inferno Shot##243205
|tip They look like silver metal artillery capsules laying on the ground around this area. They give you a buff that allows you to use Harbor Cannons around this area, which allow you to kill mobs easily.
Assault the Iron Horde Forces at Ironhold Harbor |q 37940/1 |goto Tanaan Jungle/0 39.6,37.0
|tip You will see a progress bar in your quest tracking area.
step
_Follow_ the path |goto Tanaan Jungle/0 21.3,58.7 < 30
kill Eye Sentry##95235+, Bleeding Hollow Hunter##89699+, Felblood Overseer##92706+, Bleeding Hollow Cabalist##90851+, Bleeding Hollow Brute##89706+
clicknpc Blood Ritual Orb##83670+
|tip They look like floating swirling red balls around this area.
Assault the Bleeding Hollow at Zeth'Gol |q 38044/1 |goto Tanaan Jungle/0 22.3,51.1
|tip You will see a progress bar in your quest tracking area.
step
click Medical Supplies##239971
|tip They look like wooden crates with red crosses on them on the ground all around this area.
collect First Aid Bandages##122139 |n
clicknpc Wounded Grunt##90452+
|tip You need First Aid Bandages in order to heal them.
clicknpc Iron Horde Banner##90433
|tip They look like vertical flags made of cloth and bone all around this area.
kill Felsworn Soultwister##92873+, Felsworn Berserker##90482+, Felsworn Bulwark##91251+, Iron Wargronn##90585+, Iron Sniper##77767+
Aid the Battle at the Iron Front |q 38047/1 |goto Tanaan Jungle/0 11.4,56.1
|tip You will see a progress bar in your quest tracking area.
step
kill Felborn Enforcer##90620+, Sethekk Neophyte##90312+, Felborn Instructor##89748
clicknpc Ritual Circle##90300
|tip They look like circular green glowing symbols on the ground around this area.
Assault the Shadow Council Forces at the Ruins of Kra'nak |q 38252/1 |goto Tanaan Jungle/0 24.0,39.6
|tip You will see a progress bar in your quest tracking area.
step
kill Felblood Warrior##90066+, Felblood Overseer##91760+, Felblood Deadeye##91764+, Forge Engineer##91721+
click Siege Equipment Blueprints##241669
|tip They look like small tan pieces of paper laying on the ground and on objects around this area.
Assault the Iron Horde Forces at the Fel Forge |q 38441/1 |goto Tanaan Jungle/0 45.3,43.5
|tip You will see a progress bar in your quest tracking area.
step
_Follow_ the path |goto Tanaan Jungle/0 31.1,63.0 < 30
_Go up_ the stairs |goto Tanaan Jungle/0 28.9,66.7 < 20
kill Sargerei Nullifier##90295+, Sargerei Felbinder##90286+
clicknpc Bound Spirit##90703
|tip They look like floating draenei spirits kicking in the air and being choked around this area.
clicknpc Defiled Corpse##90302
|tip They look like dead draenei laying on the ground around this area.
Assault the Sargerei Forces at the Temple of Sha'naar |q 38449/1 |goto Tanaan Jungle/0 28.5,67.9
|tip You will see a progress bar in your quest tracking area.
step
_Follow_ the road |goto Tanaan Jungle/0 58.1,42.5 < 30
_Run up_ the zigzag path |goto Tanaan Jungle/0 58.8,31.8 < 30
kill Felflame Fiend##92082+, Shadowheart Fiend##92083+, Infernal Devastator##92031+, Felblood Corruptor##92396+, Felguard Sentinel##92026+
Assault the Shadow Council Forces at the Throne of Kil'jaeden |q 38586/1 |goto Tanaan Jungle/0 56.0,25.6
|tip You will see a progress bar in your quest tracking area.
|tip This is a group quest. Use the Group Finder to easily find a group by opening it and selecting Premade Groups -> Custom, then searching for "Kil'jaeden".
step
talk Draka##90481
turnin Assault on Ironhold Harbor##37940 |goto Tanaan Jungle/0 61.5,45.8 |only if haveq(37940) or completedq(37940)
turnin Bleeding the Bleeding Hollow##38044 |goto Tanaan Jungle/0 61.5,45.8 |only if haveq(38044) or completedq(38044)
turnin Battle At The Iron Front##38047 |goto Tanaan Jungle/0 61.5,45.8 |only if haveq(38047) or completedq(38047)
turnin Assault on the Ruins of Kra'nak##38252 |goto Tanaan Jungle/0 61.5,45.8 |only if haveq(38252) or completedq(38252)
turnin Assault on The Fel Forge##38441 |goto Tanaan Jungle/0 61.5,45.8 |only if haveq(38441) or completedq(38441)
turnin Assault on the Temple of Sha'naar##38449 |goto Tanaan Jungle/0 61.5,45.8 |only if haveq(38449) or completedq(38449)
turnin Assault on the Throne of Kil'jaeden##38586 |goto Tanaan Jungle/0 61.5,45.8 |only if haveq(38586) or completedq(38586)
step
talk Shadow Hunter Denjai##96014
accept Pressing the Attack##39526 |goto Tanaan Jungle/0 61.7,45.7
accept Harnessing Their Power##39514 |goto Tanaan Jungle/0 61.7,45.7 |or
accept Disarming Sha'naar##39513 |goto Tanaan Jungle/0 61.7,45.7 |or
accept Secrets of the Shadow Council##39512 |goto Tanaan Jungle/0 61.7,45.7 |or
accept Blood of Fallen Brothers##39511 |goto Tanaan Jungle/0 61.7,45.7 |or
accept A Little Wetwork##39510 |goto Tanaan Jungle/0 61.7,45.7 |or
accept Bloodied Blades of Zeth'Gol##39509 |goto Tanaan Jungle/0 61.7,45.7 |or
|tip You will only be able to accept 2 of these quests per day.
step
kill Iron Wargronn##90585+
collect Wargronn Harness##128434 |q 39514/1 |goto Tanaan Jungle/0 13.1,56.2
step
accept Battle At The Iron Front##39444
click Medical Supplies##239971
|tip They look like wooden crates with red crosses on them on the ground all around this area.
collect First Aid Bandages##122139 |n
clicknpc Wounded Grunt##90452+
|tip You need First Aid Bandages in order to heal them.
clicknpc Iron Horde Banner##90433
|tip They look like vertical flags made of cloth and bone all around this area.
kill Felsworn Soultwister##92873+, Felsworn Berserker##90482+, Felsworn Bulwark##91251+, Iron Wargronn##90585+, Iron Sniper##77767+
Aid the Battle at the Iron Front |q 39444/1 |goto Tanaan Jungle/0 11.4,56.1
|tip You will see a progress bar in your quest tracking area.
only if not completedq("39526/1") and not completedq(38047)
step
_Follow_ the path up |goto Tanaan Jungle/0 31.1,63.0 < 30
_Run up_ the stairs |goto Tanaan Jungle/0 28.8,66.7 < 30
_Follow_ the stairs up |goto Tanaan Jungle/0 29.2,68.4 < 30
_Enter_ the mine |goto Tanaan Jungle/0 29.4,70.8 < 20
click Unrefined Draenic Crystal##243794
|tip They look like small clusters of white crystals on the ground and on objects inside this mine.
collect 8 Unrefined Draenic Crystal##128433 |q 39513/1 |goto Tanaan Jungle/0 29.2,71.0
step
_Follow_ the path |goto Tanaan Jungle/0 31.1,63.0 < 30
_Go up_ the stairs |goto Tanaan Jungle/0 28.9,66.7 < 20
accept Assault on the Temple of Sha'naar##39450
kill Sargerei Nullifier##90295+, Sargerei Felbinder##90286+
clicknpc Bound Spirit##90703
|tip They look like floating draenei spirits kicking in the air and being choked around this area.
clicknpc Defiled Corpse##90302
|tip They look like dead draenei laying on the ground around this area.
Assault the Sargerei Forces at the Temple of Sha'naar |q 39450/1 |goto Tanaan Jungle/0 28.5,67.9
|tip You will see a progress bar in your quest tracking area.
only if not completedq("39526/1") and not completedq(38449)
step
kill Felborn Enforcer##90620+, Sethekk Neophyte##90312+, Felborn Instructor##89748
collect 20 Shadow Council Missive##128432 |q 39512/1 |goto Tanaan Jungle/0 24.0,39.6
step
accept Assault on the Ruins of Kra'nak##39448
kill Felborn Enforcer##90620+, Sethekk Neophyte##90312+, Felborn Instructor##89748
clicknpc Ritual Circle##90300
|tip They look like circular green glowing symbols on the ground around this area.
Assault the Shadow Council Forces at the Ruins of Kra'nak |q 39448/1 |goto Tanaan Jungle/0 24.0,39.6
|tip You will see a progress bar in your quest tracking area.
only if not completedq("39526/1") and not completedq(38252)
step
kill Felsworn Soultwister##92873+, Felsworn Berserker##90482+, Felsworn Bulwark##91251+
collect 20 Vial of Fel Blood##128431 |q 39511/1 |goto Tanaan Jungle/0 11.4,56.1
step
kill Grom'kar Warsmith##89935+, Grom'kar Sentry##89857+, Grom'kar Leadslinger##89777+, Grom'kar Cauterizer##90136+
collect 15 Iron Horde Naval Manifest##128429 |q 39510/1 |goto Tanaan Jungle/0 39.6,37.0
step
_Follow_ the path |goto Tanaan Jungle/0 21.3,58.7 < 30
kill Bleeding Hollow Hunter##89699+, Bleeding Hollow Cabalist##90851+, Bleeding Hollow Brute##89706+
collect 25 Bleeding Hollow Ritual Blade##128428 |q 39509/1 |goto Tanaan Jungle/0 22.3,51.1
step
talk Shadow Hunter Denjai##96014
turnin Pressing the Attack##39526 |goto Tanaan Jungle/0 61.7,45.7
turnin Harnessing Their Power##39514 |goto Tanaan Jungle/0 61.7,45.7 |only if haveq(39514) or completedq(39514)
turnin Disarming Sha'naar##39513 |goto Tanaan Jungle/0 61.7,45.7 |only if haveq(39513) or completedq(39513)
turnin Secrets of the Shadow Council##39512 |goto Tanaan Jungle/0 61.7,45.7 |only if haveq(39512) or completedq(39512)
turnin Blood of Fallen Brothers##39511 |goto Tanaan Jungle/0 61.7,45.7 |only if haveq(39511) or completedq(39511)
turnin A Little Wetwork##39510 |goto Tanaan Jungle/0 61.7,45.7 |only if haveq(39510) or completedq(39510)
turnin Bloodied Blades of Zeth'Gol##39509 |goto Tanaan Jungle/0 61.7,45.7 |only if haveq(39509) or completedq(39509)
step
talk Nimi Brightcastle##93396
accept Demonslayer of Tanaan##39519 |goto Tanaan Jungle/0 59.7,45.9 |or
accept Bringing Down the Iron Horde##39532 |goto Tanaan Jungle/0 59.7,45.9 |or
|tip This quest only has a chance of being available each, day, so it's not guaranteed to be available. You can only accept one of these quests, if it's available.
step
_Go through_ the doorway |goto Tanaan Jungle/0 60.9,44.6 < 20 |walk
_Follow_ the path |goto Tanaan Jungle/0 59.8,41.9 < 30
kill Corrupting Fiend##93024+ |tip The imps spawn in groups of 3 around this area.
Slay #20# Demons |q 39519/1 |goto Tanaan Jungle/0 53.9,43.6
You can find more around [Tanaan Jungle/0 56.9,35.2]
step
kill Grom'kar Warsmith##89935+, Grom'kar Sentry##89857+, Grom'kar Leadslinger##89777+, Grom'kar Cauterizer##90136+
Slay #25# Iron Horde Orcs |q 39532/1 |goto Tanaan Jungle/0 39.6,37.0
step
talk Nimi Brightcastle##93396
turnin Demonslayer of Tanaan##39519 |goto Tanaan Jungle/0 59.7,45.9 |only if haveq(39519) or completedq(39519)
turnin Bringing Down the Iron Horde##39532 |goto Tanaan Jungle/0 59.7,45.9 |only if haveq(39532) or completedq(39532)
step
You've completed the dailies for today
Click to restart the dailies run |confirm |next "voljin_headhunters_start"
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Warlords of Draenor\\Vol'jin's Spear",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Vol'jin's Spear faction.",
achieveid={9473, 9215},
patch='60001',
},[[
step
Your current reputation rank is:
_Neutral_ |only if rep("Vol'jin's Spear")==Neutral
_Friendly_ |only if rep("Vol'jin's Spear")==Friendly
_Honored_ |only if rep("Vol'jin's Spear")==Honored
_Revered_ |only if rep("Vol'jin's Spear")==Revered
_Exalted_ |only if rep("Vol'jin's Spear")==Exalted
confirm
only if completedq(36196)
step
Click _Quest Accept_ Box:
accept Welcome to Ashran##36196 |goto Ashran/0 41.75,22.68
|tip Click Enter Dungeon when asked to join the Ashran battle. You may have to wait for queue.
step
talk General Ushet Wolfbarger##84473
turnin Welcome to Ashran##36196 |goto Ashran/0 45.10,28.04
|tip Click Enter Dungeon when asked to join the Ashran battle. You may have to wait for queue.
accept Reporting For Duty##36197 |goto 45.10,28.04
step
talk Angry Zurge##83869
Tell him _"Reporting in!"_
Speak to Zurge |q 36197/2 |goto Ashran/0 45.70,28.96
accept The Road of Glory##36227 |goto Ashran/0 45.70,28.96
step
talk Cymre Brightblade##94864
Tell her _"Cymre! Is that you?"_
Speak to Cymre Brightblade |q 36197/1 |goto 45.89,29.12
accept Uncovering the Artifact Fragments##36198 |goto 45.89,29.12
step
talk Mare Wildrunner##84660
Tell her _"You're to show me Ashran?"_
Speak to Mare Wildrunner# |q 36197/3 |goto 47.06,26.81
accept Survey Ashran##36226 |goto 47.06,26.81
step
talk General Ushet Wolfbarger##84473
turnin Reporting For Duty##36197 |goto 45.10,28.04
stickystart "roundonekills"
stickystart "artifacts"
step
Cross the bridge and enter Ashran |goto Ashran/0 47.94,30.29 < 10 |walk
Explore the Brute's Rise |q 36226/3 |goto Ashran/0 54.7,34.6
step
Explore the Road of Glory |q 36226/2 |goto Ashran/0 49.58,44.17
step
Explore the Molten Quarry |q 36226/1 |goto Ashran/0 54,69
step
Explore the Ashmaul Burial Grounds |q 36226/4 |goto Ashran/0 40.2,63.3
step
Explore the Amphitheater of Annihilation |q 36226/5 |goto Ashran/0 39.4,40.5
step
label "roundonekills"
Kill #5# Alliance Players on the Road of Glory |q 36227/1 |goto Ashran/0 49.0,64.0
step
label "artifacts"
Kill creatures of Ashran and loot artifact fragments
Artifact Fragments looted |q 36198/1
step
talk Mare Wildrunner##84660
turnin Survey Ashran##36226 |goto 47.06,26.81
step
talk Angry Zurge##83869
turnin The Road of Glory##36227 |goto Ashran/0 45.70,28.96
accept Into The Wilderness##36228 |goto Ashran/0 45.70,28.96
step
talk Fura##83995
turnin Uncovering the Artifact Fragments##36198 |goto Ashran/0 45.26,27.14
step
Kill an Alliance player in Ashran and recover a piece of their armor
|tip Right click their corpse to "Remove insignia".
Tattered Armor Scraps |q 36228/1
step
talk Angry Zurge##83869
turnin Into The Wilderness##36228 |goto Ashran/0 45.70,28.96
]])
