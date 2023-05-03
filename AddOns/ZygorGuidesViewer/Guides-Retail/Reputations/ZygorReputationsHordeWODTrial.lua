local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("ReputationsHWOD") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Warlords of Draenor\\Arakkoa Outcasts")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Warlords of Draenor\\Frostwolf Orcs")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Warlords of Draenor\\Laughing Skull Orcs")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Warlords of Draenor\\Order of the Awakened")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Warlords of Draenor\\The Saberstalkers")
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
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Warlords of Draenor\\Vol'jin's Headhunters")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Warlords of Draenor\\Vol'jin's Spear")
