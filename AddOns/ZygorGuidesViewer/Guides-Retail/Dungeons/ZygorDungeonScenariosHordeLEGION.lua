local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("ScenarioHLEGION") then return end
ZygorGuidesViewer.GuideMenuTier = "LEG"
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Legion Scenarios\\Whispers of a Frightened World",{
condition_suggested=function() return level>=45 end,
keywords={"Magni, Hall, Of, Communion"},
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the \"Whispers of a Frightened World\" scenario.",
},[[
step
accept Whispers of a Frightened World##46206 |goto Dalaran L/10 60.95,44.76
|tip You will accept this quest automatically.
step
click Portal to Wyrmrest Temple
Take the Dalaran portal to Wyrmrest Temple |q 46206/1 |goto Dalaran L/12 30.71,84.37
step
Enter the building |goto Sholazar Basin/0 80.56,54.45 < 20 |walk
Follow the path |goto 85.06,53.65 < 10
Meet Magni in Sholazar Basin |q 46206/2 |goto 88.43,52.99
step
Enter the building |goto 80.56,54.45 < 20 |walk
Follow the path |goto 85.06,53.65 < 10
Meet Magni in The Maker's Overlook |q 46206/3 |goto 88.43,52.99
step
click Power Conduit##270859
Open the first conduit |q 46206/4 |count 1 |goto Sholazar Basin/0 88.05,52.76
step
click Power Conduit##270859
Open the second conduit |q 46206/4 |count 2 |goto 88.12,53.39
step
click Power Conduit##270859
Open the third conduit |q 46206/4 |count 3 |goto 88.49,53.61
step
click Teleportation Pad##268578
Enter the scenario |scenariostart |goto 88.43,53.00 |q 46206
step
Find Magni |scenariogoal Find Magni##1/35795 |goto Hall of Communion/1 43.69,82.00 |q 46206
step
kill Distressing Vision##120489+, Haunting Phantasm##120484+, Unsettling Despair##121008+
Defeat #7# invaders |scenariogoal Defeat the invaders##2/36206 |goto Hall of Communion/1 52.96,81.97 |q 46206
step
Follow the path |goto Hall of Communion/1 48.94,71.87 < 20 |walk
clicknpc Damaged Construct##121038
|tip The Disburbing Echo tentacles will occasionally cast Dark Demise, pulling you towards them.
|tip Interrupt them to stop the cast.
Activate the first Damaged Construct |scenariogoal Reactivate the defenses##3/36209 |goto 48.54,59.52 |count 1 |q 46206
step
clicknpc Damaged Construct##121038
|tip The Disburbing Echo tentacles will occasionally cast Dark Demise, pulling you towards them.
|tip Interrupt them to stop the cast.
Activate the second Damaged Construct |scenariogoal Reactivate the defenses##3/36209 |goto 44.23,51.15 |count 2 |q 46206
step
clicknpc Damaged Construct##121038
|tip The Disburbing Echo tentacles will occasionally cast Dark Demise, pulling you towards them.
|tip Interrupt them to stop the cast.
Activate the third Damaged Construct |scenariogoal Reactivate the defenses##3/36209 |goto 54.86,54.97 |count 3 |q 46206
step
clicknpc Damaged Construct##121038
|tip The Disburbing Echo tentacles will occasionally cast Dark Demise, pulling you towards them.
|tip Interrupt them to stop the cast.
Activate the final Damaged Construct |scenariogoal Reactivate the defenses##3/36209 |goto 49.18,44.72 |count 4 |q 46206
step
kill Amalgam of Torment##120486+
Defeat the Amalgam of Torment |scenariogoal Amalgam of Torment defeated##4/36160 |goto Hall of Communion/1 49.20,39.83 |q 46206
step
Follow the path |goto Hall of Communion/1 48.97,20.52 < 15 |walk
Tell him: _"Let us hear what she has to say, Magni."_
Speak with Magni |scenariogoal Speak with Magni##5/35796 |goto 48.94,11.47 |q 46206
step
Hear Azeroth's warning |q 46206/5 |goto Sholazar Basin/0 88.43,53.00
|tip Wait for the dialogue to complete.
step
click Teleportation Pad##268578 |goto Hall of Communion/1 49.74,8.82 < 7 |walk
|tip Wait for the dialogue to complete.
Return to Dalaran |goto Dalaran L/10 39.65,50.54 < 10000 |c |noway |q 46206
step
talk Archmage Khadgar##90417
turnin Whispers of a Frightened World##46206 |goto Dalaran L/10 28.48,48.31
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Legion Scenarios\\The Deaths of Chromie Portals",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing \"The Deaths of Chromie\" scenario.",
condition_suggested=function() return level>=45 end,
condition_end=function() return completedq(47558) and completedq(47560) and completedq(47557) and completedq(47559) end,
model={10008},
startlevel=45.0,
},[[
step
talk Archmage Khadgar##90417
accept Chromie##48021 |goto Dalaran L/10 28.48,48.33
step
talk Chromie##27856
accept The Day That Chromie Dies##47543 |goto Dragonblight/0 60.00,54.51
step
talk Chromie##27856
Tell her: _"I'm ready. Let's go!"_
Enter the scenario |scenariostart |goto 60.00,54.51 |q 47543 |future
step
talk Chromie##122510
|tip She stands next to you.
Tell her: _"Ready when you are."_
Speak with Chromie |scenariogoal 1/36889 |goto Chromie Dragonblight/1 59.76,53.57 |q 47543 |future
step
Witness Chromie's demise |scenariogoal 2/36912 |goto Chromie Dragonblight/1 59.99,54.34 |q 47543 |future
|tip Follow Chromie and wait for her to die.
step
talk Chromie##27856
turnin The Day That Chromie Dies##47543 |goto Dragonblight/0 60.00,54.51
accept Rewind##47545 |goto 60.00,54.51
step
talk Chromie##27856
Tell her: _"I'm ready. Let's try this again!"_
Enter the scenario |scenariostart |goto 60.00,54.51 |q 47545 |future
step
talk Kalecgos##122514
Tell him: _"Seen anything strange lately?"_
Speak with Kalecgos |scenariogoal 1/36904 |goto Chromie Dragonblight/1 59.51,54.28 |q 47545 |future
step
talk Lord Itharius##122513
Tell him: _"Seen anything strange lately?"_
Speak with Lord Itharius |scenariogoal 1/36903 |goto 59.63,54.55 |q 47545 |future
step
talk Alexstrasza the Life-Binder##122511
Tell her: _"Seen anything strange lately?"_
Speak with Alexstrasza |scenariogoal 1/36764 |goto 59.83,54.66 |q 47545 |future
step
talk Chromie##122510
Tell her: _"Seen anything strange lately?"_
Speak with Chromie |scenariogoal 1/36905 |goto 60.03,54.52 |q 47545 |future
|tip Wait for the dialogue to complete.
step
Witness Chromie's demise... again |scenariogoal 2/36890 |goto 60.03,54.52 |q 47545 |future
|tip Wait for the dialogue to complete.
step
label "Start"
talk Chromie##27856
turnin Rewind##47545 |goto Dragonblight/0 60.00,54.51 |only if not completedq(47545)
accept The Many Advantages of Being a Time Dragon##47550 |goto 60.00,54.51 |only if not completedq(47550) and completedq(47545)
accept Preserve the True Future##47904 |goto Dragonblight/0 60.00,54.51 |only if completedq(47550) and not completedq(47904)
accept The Deaths of Chromie##47906 |goto Dragonblight/0 60.00,54.51 |only if completedq(47904)
step
talk Chromie##27856
Tell her: _"Ready when you are!"_ |only if default
Tell her: _"Let's go try to save you again!"_ |only if completedq(47550)
Enter the scenario |scenariostart |goto 60.00,54.51
stickystart "info"
step
talk Chromie##122663
turnin The Many Advantages of Being a Time Dragon##47550 |goto Chromie Dragonblight/1 59.76,53.57
step
talk Chromie##122663
Tell her: _"Let's adjust our strategy."_
Select Chromie's talents |scenariogoal 1/36765 |goto 59.76,53.57 |or
|tip Chromie's talents work similar to Class Hall upgrades.
|tip Each talent has a specific reputation requirement, as well as a reseach time requirement.
|tip It takes just over 10 days to unlock all of Chromie's talents.
confirm |or
|only if inscenario
step
talk Chromie##122663
Tell her: _"I'm ready. Let's save your life!"_
Start the scenario |scenariostage 1 |goto 59.76,53.57
|next "Zorathides" |only not completedq(47558) and completedq(47644)
|next "Icechill" |only if not completedq(47560) and completedq(47642)
|next "Gargantuan" |only if not completedq(47557) and completedq(47645)
|next "Vylethorn" |only if completedq(47559) and completedq(47643)
|only if inscenario
step
Enter the cave |goto 37.25,31.80 < 15 |walk
Follow the path |goto Chromie Dragonblight/2 67.27,59.79 < 15 |walk
Follow the path |goto 59.59,56.44 < 15 |walk
Follow the path |goto 61.71,19.31 < 15 |walk
Follow the path |goto 54.22,23.92 < 15 |walk
Follow the path |goto 45.47,45.81 < 15 |walk
kill Charredbone Goliath##122528
collect Demonic Corestone##150938 |n
accept Demonic Corestone##47644 |goto 37.33,51.73
|only if inscenario
step
Follow the path |goto 49.94,52.42 < 15 |walk
Follow the path |goto 59.37,56.86 < 15 |walk
Follow the path |goto 75.17,57.14 < 15 |walk
talk Chromie##122663
turnin Demonic Corestone##47644 |goto Chromie Dragonblight/1 37.45,31.85
|only if inscenario
step
label "Zorathides"
kill Zorathides##122871
|tip Face Zorathides away from Chromie when he casts Carrion Swarm.
|tip Stun Zorathides when he casts Infernal Strike whenever possible.
collect 1 Fel-Touched Chronoshard##150944 |n
accept Fel-Touched Chronoshard##47558 |goto 37.86,31.08
|only if inscenario
step
talk Chromie##122663
turnin Fel-Touched Chronoshard##47558 |goto 60.03,54.52
|only if inscenario
step
kill Earlis the Deathrider##122541
collect 1 Soul Crystal Fragment##150939 |goto 47.52,52.63 |q 47642 |future
|only if inscenario
step
kill Alyndriel Graveborn##122542
collect 2 Soul Crystal Fragment##150939 |goto 45.22,51.52 |q 47642 |future
|only if inscenario
step
kill Festerbloat##122540
collect 3 Soul Crystal Fragment##150939 |goto 49.14,45.14 |q 47642 |future
|only if inscenario
step
Use the extra action button on-screen to form a Soul Crystal
accept Soul Crystal##47642 |goto 49.14,45.14
|only if inscenario
step
Enter the tree |goto 47.99,50.01 < 15 |walk
talk Chromie##122663
turnin Soul Crystal##47642 |goto 47.88,49.41
|only if inscenario
step
label "Icechill"
kill Talar Icechill##122874
|tip Free Chromie from Deep Freeze.
|tip Move Talar on top of Chromie to minimize DPS loss.
collect 1 Frozen Chronoshard##150946 |n
accept Frozen Chronoshard##47560 |goto 47.62,48.80
|only if inscenario
step
talk Chromie##122663
turnin Frozen Chronoshard##47560 |goto 60.03,54.52
|only if inscenario
step
kill Leyline Elemental##122552+
collect 50 Darkened Scrap of Vellum##151141 |goto 55.88,64.93 |q 47645 |future
|only if inscenario
step
Use the extra action button on-screen
accept Voidcallers' Scroll##47645 |goto 55.88,64.93
|only if inscenario
step
talk Chromie##122663
turnin Voidcallers' Scroll##47645 |goto 56.60,66.14
|tip Fly up the the platform floating above the ground.
|only if inscenario
step
label "Gargantuan"
kill Void Gargantuan##122553
|tip Interrupt Voidbolt as often as possible. This will shadow-lock it and prevent Looming Darkness from being cast as often.
|tip You can also stun the Void Gargantuan to interrupt Looming Darkness.
|tip If Looming Darkness is cast, quickly move out of the area on the ground.
collect 1 Smoldering Chronoshard##150943 |n
accept Smoldering Chronoshard##47557 |goto 56.60,66.14
|only if inscenario
step
talk Chromie##122663
turnin Smoldering Chronoshard##47557 |goto 60.03,54.52
|only if inscenario
step
kill Emerald Skytalon##122548+, Emerald Lasher##27254+
collect 24 Emeraldine Plume##151168 |goto Chromie Dragonblight/1 63.54,72.05 |q 47643 |future
collect 30 Twisted Fiber##151167 |goto 63.54,72.05 |q 47643 |future
|only if inscenario
step
Use the extra action button on-screen to create a Nightmare-Catcher
kill Dream Tormentor##123458+ |goto 65.20,72.49
confirm |q 47643 |future
|only if inscenario
step
Use the extra action button on-screen to create a Nightmare-Catcher
kill Dream Tormentor##123458+ |goto 63.28,75.76
confirm |q 47643 |future
|only if inscenario
step
Use the extra action button on-screen to create a Nightmare-Catcher
kill Dream Tormentor##123458+ |goto 61.74,73.90
confirm |q 47643 |future
|only if inscenario
step
accept The Ancients' Wisdom##47643 |goto 61.87,73.89
|tip You will accept this quest automatically.
|only if inscenario
step
talk Chromie##122663
turnin The Ancients' Wisdom##47643 |goto 63.52,71.99
|only if inscenario
step
label "Vylethorn"
kill Thalas Vylethorn##122875
|tip Interrupt Sleep on every cast or you will lose time as well as take additional damage from avoidable effects.
|tip Move out of Dark Eruption or you will take massive damage.
|tip Nightmare Bolt will apply a stacking damage debuff called Vile Thorns.
collect 1 Gleaming Chronoshard##150945 |n
accept Gleaming Chronoshard##47559 |goto 63.91,72.57
|only if inscenario
step
talk Chromie##122663
turnin Gleaming Chronoshard##47559 |goto 60.03,54.52
|only if inscenario
step
label "info"
Use the _Sands of Time_ items you collect to gain various buffs
|tip You will be able to select one of two random rewards.
|tip Initially, you'll want to focus on reputation gains.
|only if inscenario
step
label "qCheck"
talk Chromie##122663 |only if completedq("47904/1") or completedq("47904/1")
turnin Preserve the True Future##47904 |goto Dragonblight/0 60.00,54.51 |only if haveq(47904) and completedq("47904/1")
turnin The Deaths of Chromie##47906 |goto Dragonblight/0 60.00,54.51 |only if haveq(47906) and completedq("47906/1")
label "End"
You still need to complete the following shrines:
_Obsidian Dragonshrine_ |only if not completedq(47558)
_Ruby Dragonshrine_ |only if not completedq(47560)
_Azure Dragonshrine_ |only if not completedq(47557)
_Emerald Dragonshrine_ |only if not completedq(47559)
Click here to restart this scenario |confirm |next "Start" |only if not completedq(47558) or not completedq(47560) or not completedq(47557) or not completedq(47559)
step
talk Archmage Khadgar##90417
turnin Chromie##48021 |goto Dalaran L/10 28.46,48.33
step
Congratulations!
You have unlocked all of the portals in "The Deaths of Chromie" scenario
Click here to load "The Deaths of Chromie (Stratholme Intro)" guide |confirm |next "Dungeon Guides\\Legion Scenarios\\The Deaths of Chromie (Stratholme Intro)"
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Legion Scenarios\\The Deaths of Chromie Speed Run",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing \"The Deaths of Chromie\" scenario as quickly as possible.",
condition_suggested=function() return level>=45 end,
condition_end=function() return completedq(47906) end,
model={10008},
startlevel=45.0,
},[[
step
label "Start"
talk Chromie##27856
accept Preserve the True Future##47904 |goto Dragonblight/0 60.00,54.51 |only if completedq(47550) and not completedq(47904)
accept The Deaths of Chromie##47906 |goto Dragonblight/0 60.00,54.51 |only if completedq(47904)
step
talk Chromie##27856
Tell her: _"Let's go try to save you again!"_
Enter the scenario |scenariostart |goto 60.00,54.51
stickystart "info"
step
talk Chromie##122663
Tell her: _"Let's adjust our strategy."_
Select Chromie's talents |scenariogoal 1/36765 |goto Chromie Dragonblight/1 59.76,53.57 |or
|tip Chromie's talents work similar to Class Hall upgrades.
|tip Each talent has a specific reputation requirement, as well as a reseach time requirement.
|tip It takes just over 10 days to unlock all of Chromie's talents.
confirm |or
|only if inscenario
step
talk Chromie##122663
Tell her: _"I'm ready. Let's save your life!"_
Start the scenario |scenariostage 1 |goto 59.76,53.57
|only if inscenario
step
talk Chromie##122510
accept Worried About My Friends##47807 |goto Chromie Dragonblight/1 60.03,54.52 |or
talk Alexstrasza the Life-Binder##122511
accept The Dead Walk##47808 |goto Chromie Dragonblight/1 59.83,54.66 |or
talk Lord Itharius##122513
accept Darkened Dreams##47810 |goto Chromie Dragonblight/1 59.63,54.55 |or
talk Kalecgos##122514
accept Darkness in the Ley##47809 |goto Chromie Dragonblight/1 59.51,54.27 |or
|tip A quest is not always offered. If no quest is available, just leave the temple.
|tip
Or
|tip
Exit the temple to the South |goto Chromie Dragonblight/1 59.80,54.25 > 60 |noway |c |or
|tip There will be one quest available at most.
|only if inscenario
step
kill Iceshatter##122522 |q 47937 |goto 61.49,69.73 |repeatable |future
|tip Stay in melee range at all times or you will take heavy damage from Brutish Charge.
|tip Move away from Iceshatter when he starts casting Pulsing Shards.
|only if inscenario
step
Check for a Time Chest |goto 65.37,75.79 < 25 |walk
Check for a Time Chest |goto 63.49,75.07 < 25 |walk
kill Thalas Vylethorn##122875 |goto 63.91,72.57 |scenariogoal 2/37056 |count ZGV:SaveChromieProgress(1)
|tip Interrupt Sleep on every cast or you will lose time as well as take additional damage from avoidable effects.
|tip Move out of Dark Eruption or you will take massive damage.
|tip Nightmare Bolt will apply a stacking damage debuff called Vile Thorns.
|only if ZGV:IsDragonshrineUp("Emerald")
step
Check for a Time Chest |goto 56.55,68.94 < 25 |walk
Check for a Time Chest |goto 54.42,65.01 < 25 |walk
kill Void Gargantuan##122553 |goto 56.60,66.14 |scenariogoal 2/37056 |count ZGV:SaveChromieProgress(2)
|tip Interrupt Voidbolt as often as possible. This will shadow-lock it and prevent Looming Darkness from being cast as often.
|tip You can also stun the Void Gargantuan to interrupt Looming Darkness.
|tip If Looming Darkness is cast, quickly move out of the area on the ground.
|only if ZGV:IsDragonshrineUp("Azure")
step
kill Bloodfeast##122524 |q 47938 |goto 58.56,63.94 |repeatable |future
|tip Stay in melee range at all times or you will take heavy damage from Brutish Charge.
|tip AoE maggots quickly or they will heal Bloodfeast.
|only if inscenario
step
kill Bonesunder##122521 |q 47936 |goto 57.20,54.85 |repeatable |future
|tip Stay in melee range at all times or you will take heavy damage from Brutish Charge.
|tip Run away during Bone Crack or you will take increased damage.
|only if inscenario
step
kill Dregmar Runebrand##122519 |q 47934 |goto 52.59,49.60 |repeatable |future
|tip Stay in melee range at all times or you will take heavy damage from Brutish Charge.
|tip Move out of areas on the ground affected by Explosive Rune.
|only if inscenario
step
Check for a Time Chest |goto 48.85,51.08 < 25 |walk
Enter the tree |goto 47.92,49.71 < 10 |walk
kill Talar Icechill##122874 |goto 47.62,48.80 |scenariogoal 2/37056 |count ZGV:SaveChromieProgress(3)
|tip Free Chromie from Deep Freeze.
|tip Move Talar on top of Chromie to minimize DPS loss.
|only if ZGV:IsDragonshrineUp("Ruby")
step
kill Icefist##122520 |q 47935 |goto 43.51,30.61 |repeatable |future
|tip Stay in melee range at all times or you will take heavy damage from Brutish Charge.
|tip Move away during Tusk Strike.
|tip Be aware that your movement speed may be reduced from Ice Slash.
|only if inscenario
step
kill Zorathides##122871 |goto 37.86,31.08 |scenariogoal 2/37056 |count ZGV:SaveChromieProgress(4)
|tip Face Zorathides away from Chromie when he casts Carrion Swarm.
|tip Stun Zorathides when he casts Infernal Strike whenever possible.
|only if ZGV:IsDragonshrineUp("Obsidian")
step
Enter the Obsidian Dragonshrine |goto 37.14,31.76 < 15 |walk
Follow the path |goto Chromie Dragonblight/2 70.04,52.04 < 10 |walk
Follow the path |goto 71.86,29.85 < 10 |walk
Check for the triple chest spawn, then die |goto 67.33,27.12 |complete isdead
|tip Jump in the lava behind you, staying close to the wall so Chromie doesn't heal you.
|only if inscenario
step
talk Chromie##122510 |only if haveq(47807)
turnin Worried About My Friends##47807 |goto Chromie Dragonblight/1 60.03,54.52 |only if haveq(47807)
talk Alexstrasza the Life-Binder##122511 |only if haveq(47808)
turnin The Dead Walk##47808 |goto Chromie Dragonblight/1 59.83,54.66 |only if haveq(47808)
talk Lord Itharius##122513 |only if haveq(47810)
turnin Darkened Dreams##47810 |goto Chromie Dragonblight/1 59.63,54.55 |only if haveq(47810)
talk Kalecgos##122514 |only if haveq(47809)
turnin Darkness in the Ley##47809 |goto Chromie Dragonblight/1 59.51,54.27 |only if haveq(47809)
|only if inscenario
step
clicknpc The War for Andorhal##122339 |goto Chromie Dragonblight/1 60.38,54.51
Enter the portal |goto Chromie Dragonblight/3 43.50,69.83 < 100 |noway |c
|next "Andorhal" |only if itemcount(151549) == 0
|only if inscenario
step
talk Adrine Towhide##124379
Give him the Cenarion Circle Documents |scenariogoal 2/37056 |count 5 |goto 43.47,69.23
|next "leaveAnd"
|only if inscenario
step
label "Andorhal"
talk Chromie##124154
accept Sky Ablaze With Cannonfire##47773 |goto 43.92,69.24 |repeatable
|only if inscenario
stickystart "Boom"
step
Check for a Time Chest |goto 42.83,74.37 < 20 |walk
kill Potionmaster Donovan##124094
collect 1 Experimental Alchemy Reagent##151368 |goto 41.73,73.55
|only if inscenario
step
Check for a Time Chest |goto 39.57,68.22 < 20 |walk
kill Gatzin Zapwrench##124095
collect 1 Lightning Absorption Capsule##151369 |goto 38.91,68.18
|only if inscenario
step
label "Boom"
kill Deathguard War-Captain##124074+
collect 7 Military Explosives##151370 |goto 41.62,68.93
|tip War-Captains patrol around the area.
|only if inscenario
step
clicknpc Alliance Siege Cannon##124053
Use the Alchemy Reagent to remove the shield |use Experimental Alchemy Reagent##151368
Use the Lightning Capsule to disable the defense grid |use Lightning Absorption Capsule##151369
Use Military Explosives to defeat the cannon |use Military Explosives##151370
Find a way to take down the Horde Siege Cannon |q 47773/1 |goto 43.67,65.20
|only if inscenario
step
talk Chromie##124154
turnin Sky Ablaze With Cannonfire##47773 |goto 43.92,69.23
|only if inscenario
step
label "leaveAnd"
clicknpc Wyrmrest Temple##124766 |goto 43.47,70.04
Return to Wyrmrest Temple |goto Chromie Dragonblight/1 59.76,53.57 < 100 |noway |c
|only if inscenario
step
clicknpc The Burning of Mount Hyjal##122340 |goto Chromie Dragonblight/1 60.09,55.06
Enter the portal |goto Chromie Dragonblight/4 32.09,97.14 < 100 |noway |c
|next "Hyjal" |only if itemcount(151547) == 0
|only if inscenario
step
Use the Brimstone Beacon |use Brimstone Beacon##151547
Summon the Fiery Behemoth |complete itemcount(151547) == 0 |goto 33.36,96.30
|only if inscenario
step
label "Hyjal"
kill Fiery Behemoth##123021 |scenariogoal 2/37056 |count 6 |goto 33.36,96.30
|tip You will need to fight through three waves of trash before engaging this boss.
|tip Be sure to keep an eye on Chromie's health, and move enemies away when she takes damage.
|only if inscenario
step
clicknpc Wyrmrest Temple##124766 |goto 31.98,97.17
Return to Wyrmrest Temple |goto Chromie Dragonblight/1 59.76,53.57 < 100 |noway |c
|only if inscenario
step
click Culling of Stratholme |goto Chromie Dragonblight/1 59.61,55.12
Enter the portal |goto Chromie Dragonblight/6 50.67,100.90 < 100 |noway |c
|next "Stratholme" |only if itemcount(151546) >= 1
|only if inscenario
step
Follow the path |goto 54.10,84.29 < 20 |walk
Follow the path |goto 50.54,75.17 < 20 |walk
Enter the inn |goto 53.13,65.91 < 10 |walk
talk Emery Neill##123781
accept Smoke, Meat, and Pretty Flowers##47744 |goto 56.33,68.39 |repeatable
|only if inscenario
step
Follow the path |goto 45.79,62.72 < 25 |walk
Enter the building |goto 42.49,71.23 < 10 |walk
talk Ezra Grimm##123782
buy 1 Fras' Special Pipe Blend##151280 |n
buy 1 Flinty Firestarter##151284 |n
collect 1 Fras' Special Pipe Blend##151280 |goto 41.49,70.66
collect 1 Flinty Firestarter##151284 |goto 41.49,70.66
|only if inscenario
step
Follow the path |goto 46.70,62.14 < 25 |walk
Follow the path |goto 55.32,60.73 < 15 |walk
Enter the building |goto 63.34,54.07 < 10 |walk
talk Sophie Aaren##123779
buy 1 Marigold Bouquet##151287 |n
collect 1 Marigold Bouquet##151287 |goto 63.86,55.63
|only if inscenario
step
Enter the building |goto 58.80,44.92 < 10 |walk
talk Robert Pierce##123783
buy 1 Refurbished Military Rifle##151282 |n
collect 1 Refurbished Military Rifle##151282 |goto 58.07,46.08
|only if inscenario
step
Enter the building |goto 62.00,42.80 < 10 |walk
talk Olivia Zenith##123780
buy 1 Basic Cloth Bandages##151283 |n
collect 1 Basic Cloth Bandages##151283 |goto 62.93,43.22
|only if inscenario
step
Follow the path |goto 60.19,36.68 < 10 |walk
talk George Goodman##123778
buy 2 Salted Venison Jerky##151281 |n
buy 1 Heavy Straw Rope##151286 |n
collect 2 Salted Venison Jerky##151281 |goto 61.77,35.28
collect 1 Heavy Straw Rope##151286 |goto 61.77,35.28
|only if inscenario
step
Follow the path |goto 60.27,53.66 < 25 |walk
Enter the inn |goto 53.13,65.91 < 10 |walk
talk Emery Neill##123781
turnin Smoke, Meat, and Pretty Flowers##47744 |goto 56.35,68.40
accept Yeah, Definitely for the Kids##47745 |goto 56.35,68.40 |repeatable
|only if inscenario
step
Enter the building |goto 48.89,71.67 < 25 |walk
talk Orphan Matron Meliana##123790
turnin Yeah, Definitely for the Kids##47745 |goto 47.29,70.40
|only if inscenario
step
talk Orphan Matron Meliana##123790
accept Holing Up##47746 |goto 49.23,71.71 |repeatable
|only if inscenario
step
talk Orphan Matron Meliana##123790
turnin Holing Up##47746 |goto 49.23,71.71
accept For Emery##47750 |goto 49.23,71.71 |repeatable
|only if inscenario
step
Enter the building |goto 53.10,65.88 < 10 |walk
talk Emery Neill##123781
turnin For Emery##47750 |goto 56.35,68.40
accept Fight Plague with Fire##47747 |goto 56.35,68.40 |repeatable
|only if inscenario
step
talk Emery Neill##123781
turnin Fight Plague with Fire##47747 |goto 56.35,68.40
|only if inscenario
step
Follow the path |goto 55.19,61.18 < 15 |walk
Follow the path |goto 60.64,52.50 < 20 |walk
click Town Hall Door
Go up the steps |goto 56.92,26.65 < 5 |walk
Follow the path |goto 60.51,31.61 < 10 |walk
Follow the path |goto 65.29,21.10 < 5 |walk
Follow the path |goto 67.02,19.10 < 5 |walk
Enter the hidden passage |goto 67.02,19.10 < 5 |noway |c
|only if inscenario
step
Follow the path |goto 64.89,14.82 < 10 |walk
Follow the path |goto 46.01,17.90 < 10 |walk
Follow the path |goto 38.34,26.99 < 10 |walk
Follow the path |goto 38.97,41.85 < 15 |walk
kill Nezar'Azret##123836
clicknpc Chromie##123837
Free Chromie from the web |scenariogoal 2/37056 |count 7 |goto 31.27,46.21
|tip Run away from Chromie when you are webbed together!
|only if inscenario
|next "stratEnd"
step
label "Stratholme"
Follow the path |goto 54.10,84.29 < 20 |walk
Follow the path |goto 50.54,75.17 < 20 |walk
Follow the path |goto 50.14,63.30 < 20 |walk
Follow the path |goto 46.64,54.35 < 20 |walk
click Market Row Gate
Open the Market Row Gate |goto 46.64,54.35 < 6 |noway |c
|only if inscenario
step
Follow the path |goto 38.97,41.85 < 15 |walk
kill Nezar'Azret##123836
clicknpc Chromie##123837
Free Chromie from the web |scenariogoal 2/37056 |count 7 |goto 31.27,46.21
|tip Run away from Chromie when you are webbed together!
|only if inscenario
step
label "stratEnd"
clicknpc Wyrmrest Temple##124766 |goto 30.95,45.22
Return to Wyrmrest Temple |goto Chromie Dragonblight/1 59.76,53.57 < 100 |noway |c
|only if inscenario
step
click The Well of Eternity |goto Chromie Dragonblight/1 59.26,54.66
Enter the portal |goto Chromie Dragonblight/5 87.65,48.93 < 100 |noway |c
|next "Eternity" |only if itemcount(151548) == 0
|only if inscenario
step
Use Tyrande's Moonstone |use Tyrande's Moonstone##151548
Enter the palace |goto 19.34,56.83 < 100 |noway |c
|next "Palace"
|only if inscenario
step
label "Eternity"
Follow the path |goto 83.91,63.62
clicknpc To Queen Azshara's Throne##123694 |goto 73.07,85.18
Enter Queen Azshara's Throne |goto 44.11,34.43 < 20 |noway |c
|only if inscenario
step
label "Palace"
Follow the path |goto 41.09,21.91 < 15 |walk
Follow the path |goto 32.38,23.11 < 15 |walk
Follow the path |goto 33.92,36.98 < 15 |walk
Follow the path |goto 24.30,46.90 < 15 |walk
kill Grolethax##123721 |goto 20.16,61.72
|tip Avoid as many mobs as possible along the way.
|tip Stop to kill Grolethax quickly.
Follow the path |goto 22.14,68.74 < 15 |walk
clicknpc Wyrmrest Temple##124766 |goto 27.57,65.85
Return to Wyrmrest Temple |goto Chromie Dragonblight/1 59.76,53.57 < 100 |noway |c
|only if inscenario
step
label "info"
Use the _Sands of Time_ items you collect to gain various buffs and effects
|tip For speed run purposes, priority Sands of Time usage should be for time increases, Keepsake Boxes, and Acceleration.
|tip Chests spawn at random and usually contain Sands of Time.
|tip Similarly, rare spawns in the Dragonblight portion can be killed along the way for additional Sands.
|only if inscenario
step
Checking
|next "qCheck" |only if completedq("47904/1") and haveq(47904)
|next "qCheck" |only if completedq("47906/1") and haveq(47906)
|next "End" |only if default
step
label "qCheck"
talk Chromie##27856
turnin Preserve the True Future##47904 |goto Dragonblight/0 60.00,54.51 |only if completedq(47550) and not completedq(47904)
turnin The Deaths of Chromie##47906 |goto Dragonblight/0 60.00,54.51 |only if completedq(47904)
step
label "End"
Your time has expired
Click here to restart this scenario |confirm |next "Start"
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Legion Scenarios\\The Deaths of Chromie (Stratholme Intro)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the initial Stratholme portion of \"The Deaths of Chromie\" scenario.",
condition_suggested=function() return level>=45 end,
model={10008},
startlevel=45.0,
},[[
step
Please be aware that you MUST complete the quest "Fight Plague with Fire" in this guide before proceeding to the Speed Run guide
|confirm
step
label "Start"
talk Chromie##27856
accept Preserve the True Future##47904 |goto Dragonblight/0 60.00,54.51 |only if completedq(47550) and not completedq(47904)
accept The Deaths of Chromie##47906 |goto Dragonblight/0 60.00,54.51 |only if completedq(47904)
step
talk Chromie##27856
Tell her: _"Let's go try to save you again!"_
Enter the scenario |scenariostart |goto 60.00,54.51
stickystart "info"
step
click Culling of Stratholme |goto Chromie Dragonblight/1 59.61,55.12
Enter the portal |goto Chromie Dragonblight/6 50.67,100.90 < 100 |noway |c
|only if inscenario
step
Follow the path |goto Chromie Dragonblight/6 54.10,84.29 < 20 |walk
Follow the path |goto 50.54,75.17 < 20 |walk
Enter the inn |goto 53.13,65.91 < 10 |walk
talk Emery Neill##123781
accept Smoke, Meat, and Pretty Flowers##47744 |goto 56.33,68.39 |repeatable
|only if inscenario
step
Follow the path |goto 45.79,62.72 < 25 |walk
Enter the building |goto 42.49,71.23 < 10 |walk
talk Ezra Grimm##123782
buy 1 Fras' Special Pipe Blend##151280 |n
collect 1 Fras' Special Pipe Blend##151280 |goto 41.49,70.66
|only if inscenario
step
Follow the path |goto Chromie Dragonblight/6 46.70,62.14 < 25 |walk
Follow the path |goto 55.32,60.73 < 15 |walk
Enter the building |goto 63.34,54.07 < 10 |walk
talk Sophie Aaren##123779
buy 1 Marigold Bouquet##151287 |n
collect 1 Marigold Bouquet##151287 |goto 63.86,55.63
|only if inscenario
step
Follow the path |goto 60.19,36.68 < 10 |walk
talk George Goodman##123778
buy 1 Salted Venison Jerky##151281 |n
collect 1 Salted Venison Jerky##151281 |goto 61.77,35.28
|only if inscenario
step
Follow the path |goto 60.27,53.66 < 25 |walk
Enter the inn |goto 53.13,65.91 < 10 |walk
talk Emery Neill##123781
turnin Smoke, Meat, and Pretty Flowers##47744 |goto 56.35,68.40
accept Yeah, Definitely for the Kids##47745 |goto 56.35,68.40 |repeatable
|only if inscenario
step
Enter the building |goto 48.89,71.67 < 25 |walk
talk Orphan Matron Meliana##123790
turnin Yeah, Definitely for the Kids##47745 |goto 47.29,70.40
|only if inscenario
step
talk Orphan Matron Meliana##123790
accept Holing Up##47746 |goto 49.23,71.71 |repeatable
|only if inscenario
step
Follow the path |goto 54.85,61.42 < 15 |walk
Enter the building |goto 58.80,44.92 < 10 |walk
talk Robert Pierce##123783
buy 1 Refurbished Military Rifle##151282 |n
collect 1 Refurbished Military Rifle##151282 |goto 58.07,46.08
|only if inscenario
step
Enter the building |goto 62.00,42.80 < 10 |walk
talk Olivia Zenith##123780
buy 1 Basic Cloth Bandages##151283 |n
collect 1 Basic Cloth Bandages##151283 |goto 62.93,43.22
|only if inscenario
step
Enter the building |goto 60.16,36.70 < 10 |walk
talk George Goodman##123778
buy 1 Salted Venison Jerky##151281 |n
collect 1 Salted Venison Jerky##151281 |goto 61.77,35.28
|only if inscenario
step
Follow the path |goto 59.40,55.01 < 20 |walk
Follow the path |goto 51.60,65.12 < 25 |walk
talk Orphan Matron Meliana##123790
turnin Holing Up##47746 |goto 49.23,71.71
accept For Emery##47750 |goto 49.23,71.71 |repeatable
|only if inscenario
step
Enter the inn |goto 53.10,65.88 < 10 |walk
talk Emery Neill##123781
turnin For Emery##47750 |goto 56.35,68.40
accept Fight Plague with Fire##47747 |goto 56.35,68.40 |repeatable
|only if inscenario
step
Follow the path |goto 45.79,62.72 < 25 |walk
Enter the building |goto 42.49,71.23 < 10 |walk
talk Ezra Grimm##123782
buy 1 Flinty Firestarter##151284 |n
collect 1 Flinty Firestarter##151284 |goto 41.49,70.66
|only if inscenario
step
Follow the path |goto 46.53,62.36 < 20 |walk
Follow the path |goto 56.48,59.22 < 15 |walk
Follow the path |goto 60.42,49.67 < 20 |walk
Enter the building |goto 60.16,36.77 < 10 |walk
talk George Goodman##123778
buy 1 Heavy Straw Rope##151286 |n
collect 1 Heavy Straw Rope##151286 |goto 61.77,35.28
|only if inscenario
step
Follow the path |goto 59.40,55.01 < 20 |walk
Enter the inn |goto 53.02,65.87 < 10 |walk
talk Emery Neill##123781
turnin Fight Plague with Fire##47747 |goto 56.35,68.40
|only if inscenario
step
Follow the path |goto 55.19,61.18 < 15 |walk
Follow the path |goto 60.64,52.50 < 20 |walk
click Town Hall Door
Go up the steps |goto 56.92,26.65 < 5 |walk
Follow the path |goto 60.51,31.61 < 10 |walk
Follow the path |goto 65.29,21.10 < 5 |walk
Follow the path |goto 67.02,19.10 < 5 |walk
Enter the hidden passage |goto 67.02,19.10 < 5 |noway |c
|only if inscenario
step
Follow the path |goto 64.89,14.82 < 10 |walk
Follow the path |goto 46.01,17.90 < 10 |walk
Follow the path |goto 38.34,26.99 < 10 |walk
Follow the path |goto 38.97,41.85 < 15 |walk
kill Nezar'Azret##123836
clicknpc Chromie##123837
Free Chromie from the web |scenariogoal 2/37056 |count 1 |goto 31.27,46.21
|tip Run away from Chromie when you are webbed together!
|only if inscenario
step
clicknpc Wyrmrest Temple##124766 |goto Chromie Dragonblight/6 30.95,45.22
Return to Wyrmrest Temple |goto Chromie Dragonblight/1 59.76,53.57 < 100 |noway |c
|only if inscenario
step
label "info"
Use the _Sands of Time_ items you collect to gain various buffs
|tip You will be able to select one of two random rewards.
|tip Initially, you'll want to focus on reputation gains.
|only if inscenario
step
Congratulations!
You have completed the Culling of Stratholme intro
Click here to load "The Deaths of Chromie Speed Run" guide |confirm |next "Dungeon Guides\\Legion Scenarios\\The Deaths of Chromie Speed Run"
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Legion Scenarios\\Argus Invasions",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the the various invasion points on Argus.",
condition_suggested=function() return level>=45 end,
keywords={"inquisitor, meto, matron, folnuna, mistress, alluradel, occularus, pit, lord, vilemus, sotanathor, point, greater, aurinor, bonich, cen'gar, naigtal, sangua, val"},
model={67378, 72943, 78119, 80083, 80144, 80107},
},[[
step
In order to gain access to invasions on a character, you will need to complete the Argus Campaign up until you have completed the _Dark Awakenings_ chapter
Complete the "Dark Awakenings" chapter of the Argus campaign |complete completedq(48107)
Click here to load the Argus Campaign guide |confirm |next "Leveling Guides\\Legion (10-50)\\Argus Campaign"
|only if not completedq(48107)
step
label "Invasion_Point_Offensive"
#include "Argus_Invasion_Illidan"
accept Where They Least Expect It##48461 |only if not completedq(48461)
accept Invasion Point Offensive##48513 |only if completedq(48461) and not completedq(48513)
accept Commander's Downfall##48605 |only if completedq(48513) and not completedq(48605)
accept Invasion Onslaught##49293 |only if completedq(48605)
step
#include "Argus_Invasion_Turalyon"
accept Fuel of a Doomed World##48799
|only if completedq(48929)
step
Open your world map and click on an invasion point in Argus |confirm
|tip These can be found in Krokuun, Eredath, and Antoran Wastes. They look like green portals.
step
label invasion-5379
Follow the path |goto Antoran Wastes/0 70.62,72.03 < 20 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
Follow the path |goto 68.52,68.81 < 20 |only if ditto
Follow the path |goto 64.68,65.89 < 15 |only if ditto
Follow the path |goto Antoran Wastes/0 71.97,47.26 < 15 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
Follow the path |goto 70.43,47.66 < 15 |only if ditto
Follow the path |goto 70.74,52.81 < 20 |only if ditto
Follow the path |goto 68.29,54.23 < 15 |only if ditto
Follow the path |goto 65.71,51.84 < 15 |only if ditto
Follow the path up |goto 64.52,55.00 < 15 |only if ditto
Follow the path |goto 62.88,60.46 < 20 |only if ditto
clicknpc Greater Invasion Point: Inquisitor Meto##127535
Enter the _Greater Invasion Point: Inquisitor Meto_ portal |goto Invasion Point Meto/0 29.35,32.05 |c
step
kill Inquisitor Meto##124592 |goto 81.98,46.52
Use the Group Finder function to accomplish this if there isn't already a group present
_DAMAGE:_ |grouprole DAMAGE
|tip Be sure to spread out as much as possible around the boss in order to mitigate damage from Death Field. |grouprole DAMAGE
|tip Designate someone for each Seed of Chaos to reduce the raid damage it deals. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Big heals will be needed if players aren't spread out enough for Death Field. |grouprole HEALER
|tip The player who stands in Seeds of Chaos will take damage over time, so extra heals will be needed for it. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Face the boss away from the raid. |grouprole TANK
|tip As the fight continues, the damage from Sow will raise. Save damage mitigating abilities for this. |grouprole TANK
Defeat Inquisitor Meto |q 49166 |future |next "Invasion_Point_Offensive_Turnin"
step
label invasion-5381
Follow the path |goto Krokuun/0 61.70,46.62 < 15 |only if walking
Follow the path down |goto 61.28,44.39 < 15 |only if walking
Follow the path down |goto 58.57,40.21 < 15 |only if walking
Follow the path down |goto 59.07,38.23 < 15 |only if walking
Follow the path |goto 59.55,33.01 < 15 |only if walking
Follow the path up |goto 60.67,29.92 < 15 |only if walking
Follow the path up |goto 61.81,29.41 < 15 |only if walking
Follow the path |goto 62.60,26.62 < 15 |only if walking
Follow the path |goto 61.58,25.32 < 15 |only if walking
clicknpc Greater Invasion Point: Matron Folnuna##127528
Enter the _Greater Invasion Point: Matron Folnuna_ portal |goto Invasion Point Folnuna/0 28.46,30.09 |c
step
kill Matron Folnuna##124514 |goto Invasion Point Folnuna/0 56.91,63.90
Use the Group Finder function to accomplish this if there isn't already a group present
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid Slumbering Gasp as it is being cast. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Free allies who fail to avoid Slumbering Gasp by attacking them. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Stay away from Felblaze Maniacs to avoid being affected by Scorching Presence. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Take turns taunting to manage the application of Infected Claws. |grouprole TANK
Defeat Matron Folnuna |q 49169 |future |next "Invasion_Point_Offensive_Turnin"
step
label invasion-5375
Follow the path |goto Antoran Wastes/0 72.34,48.14 < 15 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
Follow the path |goto 70.73,46.37 < 15 |only if ditto
Follow the path |goto 71.17,39.49 < 15 |only if ditto
Follow the path up |goto 69.90,38.66 < 15 |only if ditto
Follow the path up |goto 69.42,36.30 < 15 |only if ditto
Follow the path |goto Antoran Wastes/0 69.07,25.29 < 15 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
Follow the path |goto 67.72,28.51 < 15 |only if ditto
Follow the path |goto 68.15,33.53 < 15 |only if ditto
Follow the path |goto 68.02,33.93 < 15 |only if ditto
Follow the path |goto 68.29,36.02 < 15 |only if walking
clicknpc Greater Invasion Point: Mistress Alluradel##127536
Enter the _Greater Invasion Point: Mistress Alluradel_ portal |goto Invasion Point Alluradel/0 69.96,62.58 < 1000 |c
step
kill Mistress Alluradel##124625 |goto Invasion Point Alluradel/0 45.0,47.9
Use the Group Finder function to accomplish this if there isn't already a group present
_EVERYONE:_ |grouprole EVERYONE
|tip Turn away from her when she casts Beguiling Charm! |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Stay behind Alluradel as much as possible. |grouprole DAMAGE
|tip Stay in the glowing trees to gain a Haste Buff. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip It is important that you look away more so than the DPS or tanks. |grouprole HEALER
|tip While beguiled, your heals will heal for a lot more on the boss. |grouprole HEALER
|tip Stand in the glowing trees to gain a Haste Buff. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip You will need two tanks for this encounter. |grouprole TANK
|tip As she attacks the same target, she gains the Sadist buff. |grouprole TANK
|tip After around 20 stacks of Sadist, the second tank will need to taunt to reset the buff. |grouprole TANK
|tip Keep Mistress Alluradel facing away from the group if possible. |grouprole TANK
|tip Move her away from the glowing trees, as they will make Beguiling Charm cast a lot faster. |grouprole TANK
Defeat Mistress Alluradel |q 49167 |future |next "Invasion_Point_Offensive_Turnin"
step
label invasion-5376
Follow the path up |goto Antoran Wastes/0 70.52,71.93 < 15 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
Follow the path |goto 68.31,68.55 < 15 |only if ditto
Follow the path |goto 65.26,65.48 < 15 |only if ditto
Follow the path |goto 62.73,61.58 < 15 |only if ditto
Follow the path |goto 62.93,59.48 < 15 |only if ditto
Follow the path |goto Antoran Wastes/0 71.97,47.26 < 15 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
Follow the path |goto 70.43,47.66 < 15 |only if ditto
Follow the path |goto 70.74,52.81 < 20 |only if ditto
Follow the path |goto 68.29,54.23 < 15 |only if ditto
Follow the path |goto 65.71,51.84 < 15 |only if ditto
Follow the path up |goto 64.52,55.00 < 15 |only if ditto
Follow the path |goto 63.89,57.26 < 20 |only if ditto
Follow the path |goto 62.36,57.64 < 15 |only if walking
Follow the path down |goto 60.10,55.81 < 15 |only if walking
Cross the fel lava |goto 59.37,55.29 < 10 |only if walking
Cross the fel lava |goto 58.33,55.31 < 10 |only if walking
Cross the fel lava |goto 57.69,54.64 < 10 |only if walking
Go up the hill |goto 55.47,51.72 < 15 |only if walking
clicknpc Greater Invasion Point: Occularus##127533 |goto 55.93,49.67
Enter the _Greater Invasion Point: Occularus_ portal |goto Invasion Point Occularus/0 38.27,75.05 < 1000 |noway |c
step
kill Occularus##124492
Use the Group Finder function to accomplish this if there isn't already a group present
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid Phantasms when possible, they have odd movement patterns. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Interrupt Searing Gaze when it is cast. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Watch out for players afflicted with Eye Sore. |grouprole HEALER
|tip They will need to be healed as soon as possible or the raid will take a large amount of damage. |grouprole HEALER
|tip If the tanks don't swap, there will be a lot of increasing damage from Gushing Wounds. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Interrupt Searing Gaze when it is cast. |grouprole TANK
|tip Alternate aggro on the boss to reduce the effects of Gushing Wound. |grouprole TANK
Defeat Occularus |goto 54.78,32.62 |q 49170 |future |next "Invasion_Point_Offensive_Turnin"
step
label invasion-5377
Follow the path up |goto Antoran Wastes/0 72.28,48.00 < 10 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
Follow the path |goto 70.83,46.66 < 15 |only if ditto
Follow the path |goto 71.25,39.77 < 15 |only if ditto
Follow the path up |goto 69.76,38.57 < 15 |only if ditto
Follow the path up |goto 69.27,36.20 < 15 |only if ditto
Follow the path |goto 68.00,34.07 < 15 |only if ditto
Follow the path |goto 67.72,32.12 < 15 |only if ditto
Follow the path |goto 69.07,25.29 < 15 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
Follow the path |goto 67.72,28.51 < 15 |only if ditto
Follow the path |goto 66.00,29.09 < 15 |only if walking
Follow the path |goto 64.35,28.83 < 15 |only if walking
clicknpc Greater Invasion Point: Pit Lord Vilemus##127531
Enter the _Greater Invasion Point: Pit Lord Vilemus_ portal |goto Invasion Point Vilemus/0 81.54,39.51 |c
step
Follow the path |goto Invasion Point Vilemus/0 63.45,45.87 < 15 |walk
Follow the path |goto 49.44,63.74 < 20 |walk
kill Pit Lord Vilemus##124719
Use the Group Finder function to accomplish this if there isn't already a group present
_DAMAGE:_ |grouprole DAMAGE
|tip Spread out around the boss to avoid damage from Fel Breath. |grouprole DAMAGE
|tip Cancel your spells just before the Stomp cast is completed. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Players affected by Fel Breath will need extra heals. |grouprole HEALER
|tip Cancel your spells just before the Stomp cast is completed. |grouprole HEALER
|tip Tanks afflicted with Drain will need extra healing, as they will have a lower health pool and take additional damage over time. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Switch tanks to mitigate the affects of Drain. |grouprole TANK
|tip You will take additional damage and have your health pool reduced, so save damage mitigation skills for this. |grouprole TANK
Defeat Pit Lord Vilemus |goto 16.93,52.53 |q 49168 |future |next "Invasion_Point_Offensive_Turnin"
step
label invasion-5380
Follow the path |goto Eredath/0 43.95,54.55 < 15 |only if walking
Follow the path |goto 44.15,51.17 < 20 |only if walking
clicknpc Greater Invasion Point: Sotanathor##127532
Enter the _Greater Invasion Point: Sotanathor_ portal |goto Invasion Point Sotanathor/0 24.14,50.49 |c
step
Follow the path |goto 26.11,62.05 < 15 |walk
Follow the path |goto 32.67,72.88 < 15 |walk
Follow the path |goto 41.96,67.61 < 15 |walk
kill Sotanathor##124555
|tip Use the Group Finder function to accomplish this if there isn't already a group present.
_DAMAGE:_ |grouprole DAMAGE
|tip Avoid Wake of Destruction. |grouprole DAMAGE
|tip When Soul Cleave is being cast, stand with the tank or the tank will die. |grouprole DAMAGE
|tip Avoid casting while the boss is using Silence, or you will be locked out for 6 seconds from casting. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Avoid Wakes of Destruction. |grouprole HEALER
|tip Avoid casting while the boss is using Silence, or you will be locked out for 6 seconds from casting. |grouprole HEALER
|tip You will need heavy AoE heals when Soul Cleave hits the raid. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip When afflicted with Cloven Soul, you will need to switch aggro with another tank in order to reduce damage. |grouprole TANK
|tip If you have the Cloven Soul debuff, you will want to use damage mitigating skills to reduce damage taken. |grouprole TANK
Defeat Sotanathor |goto 62.46,41.68 |q 49171 |future |next "Invasion_Point_Offensive_Turnin"
stickystart "hazards"
step
label invasion-5367
Go up the hill |goto Eredath/0 43.57,16.84 < 10 |only if walking
Follow the path |goto 41.77,15.92 < 7 |only if walking
Follow the path |goto 41.27,16.49 < 7 |only if walking
Follow the path |goto 39.27,14.47 < 15 |only if walking
clicknpc Invasion Point: Aurinor##125849
Enter the _Invasion Point: Aurinor_ portal |scenariostart |goto 38.78,12.44
|tip Open your map and look for an invasion icon. They look like green portals.
step
kill Felflame Invader##125755+, Shadowsworn Heretic##125865+
Disrupt the Legion's forces |scenariostage 1 |goto Invasion Point Aurinor/0 56.27,62.40
|tip Periodically, an image will appear and connect with you through a tether.
|tip Run to the image to avoid damage and gain a stacking damage buff.
step
clicknpc Temporal Anomaly##125856
Destroy #8# Temporal Anomalies |scenariogoal Temporal Anomaly destroyed##2/37095 |goto 56.27,62.40
|tip Periodically, an image will appear and connect with you through a tether.
|tip Run to the image to avoid damage and gain a stacking damage buff.
step
Kill the Legion Commander |scenariogoal Commander slain##3/37100 |goto 22.50,51.70 |next "Invasion_Point_Offensive_Turnin"
|tip If Baldrazar is present, kill Gripping Shadows and stay behind him unless you're the tank.
|tip If Dread Knight Zak'gal is present, kill Fragment of Argus unless it fixates on you.
|tip If Dreadbringer Valus is present, avoid Slumbering Fog and stay behind him unless you're the tank.
|tip If Fel Lord Kaz'ral is present, destroy Fel Spikes and stay behind him unless you're the tank.
|tip If Flamebringer Az'rothel is present, move out of Rain of Fire and away from the Explosive Orb radius.
|tip If Flamecaller Vezrah is present, avoid Flaming Destruction.
|tip If Flameweaver Verathix is present, dodge Lava Waves when they move towards you.
|tip If Gorgoloth is present, move around if you get the Creeping Doom debuff and stand behind him if you aren't the tank.
|tip If Harbinger Drel'nathar is present, keep moving and move into Shadow Gale when Eye of Darkness is cast.
|tip If Malphazel is present, avoid standing in Fel Burn.
|tip If Vel'thrak the Punisher is present, move away from Blast Waves and 5 yards away from stomp. Avoid Rain of Fire.
|tip If Vogrethar the Defiled is present, avoid Wake of Blood.
step
label invasion-5373
Follow the path |goto Antoran Wastes/0 71.28,72.97 < 15 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
Follow the path |goto 69.43,69.71 < 20 |only if ditto
Follow the path |goto 67.17,67.38 < 15 |only if ditto
Follow the path |goto Antoran Wastes/0 71.97,47.26 < 15 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
Follow the path |goto 70.43,47.66 < 15 |only if ditto
Follow the path |goto 70.74,52.81 < 20 |only if ditto
Follow the path |goto 68.29,54.23 < 15 |only if ditto
Follow the path |goto 65.71,51.84 < 15 |only if ditto
Follow the path up |goto 64.52,55.00 < 15 |only if ditto
Follow the path |goto 62.88,60.46 < 20 |only if ditto
Follow the path |goto 63.83,64.27 < 20 |only if ditto
Follow the path |goto 65.56,67.74 < 20 |only if ditto
clicknpc Invasion Point: Aurinor##125849
Enter the _Invasion Point: Aurinor_ portal |scenariostart |goto 64.61,69.17
|tip Open your map and look for an invasion icon. They look like green portals.
step
kill Felflame Invader##125755+, Shadowsworn Heretic##125865+
Disrupt the Legion's forces |scenariostage 1 |goto Invasion Point Aurinor/0 56.27,62.40
|tip Periodically, an image will appear and connect with you through a tether.
|tip Run to the image to avoid damage and gain a stacking damage buff.
step
clicknpc Temporal Anomaly##125856
Destroy #8# Temporal Anomalies |scenariogoal Temporal Anomaly destroyed##2/37095 |goto 56.27,62.40
|tip Periodically, an image will appear and connect with you through a tether.
|tip Run to the image to avoid damage and gain a stacking damage buff.
step
Kill the Legion Commander |scenariogoal Commander slain##3/37100 |goto 22.50,51.70 |next "Invasion_Point_Offensive_Turnin"
|tip If Baldrazar is present, kill Gripping Shadows and stay behind him unless you're the tank.
|tip If Dread Knight Zak'gal is present, kill Fragment of Argus unless it fixates on you.
|tip If Dreadbringer Valus is present, avoid Slumbering Fog and stay behind him unless you're the tank.
|tip If Fel Lord Kaz'ral is present, destroy Fel Spikes and stay behind him unless you're the tank.
|tip If Flamebringer Az'rothel is present, move out of Rain of Fire and away from the Explosive Orb radius.
|tip If Flamecaller Vezrah is present, avoid Flaming Destruction.
|tip If Flameweaver Verathix is present, dodge Lava Waves when they move towards you.
|tip If Gorgoloth is present, move around if you get the Creeping Doom debuff and stand behind him if you aren't the tank.
|tip If Harbinger Drel'nathar is present, keep moving and move into Shadow Gale when Eye of Darkness is cast.
|tip If Malphazel is present, avoid standing in Fel Burn.
|tip If Vel'thrak the Punisher is present, move away from Blast Waves and 5 yards away from stomp. Avoid Rain of Fire.
|tip If Vogrethar the Defiled is present, avoid Wake of Blood.
step
label invasion-5366
Follow the path |goto Eredath/0 59.88,36.21 < 15 |only if walking
Follow the path |goto 58.84,33.62 < 15 |only if walking
Follow the path |goto 59.96,26.90 < 15 |only if walking
Follow the path |goto 61.09,22.10 < 15 |only if walking
clicknpc Invasion Point: Bonich##126547
Enter the _Invasion Point: Bonich_ portal |scenariostart |goto Eredath/0 61.01,18.74
|tip Open your map and look for an invasion icon. They look like green portals.
step
kill Bladesworn Disciple##125788+, Chittering Fiend##125921+, Wicked Corruptor##125776+, Shadowsworn Betrayer##125759+
Defeat the Legion Invaders |scenariogoal Defeat Legion Invaders##1/37078 |goto Invasion Point Bonich/0 47.13,56.65
step
kill Invasive Gazer##127982+
Kill #8# Invasive Gazers |scenariogoal Invasive Gazers slain##2/37303 |goto 47.13,56.65
|tip Stand behind Gazers when possible. |grouprole DAMAGE
|tip Stand behind Gazers when possible. |grouprole HEALER
|tip During Glare, Gazers will rotate clockwise or counter-clockwise.
|tip They will rotate faster after each Glare.
step
Defeat the Legion Commander |scenariogoal Ensure Victory##3/37100 |goto 44.45,48.35 |next "Invasion_Point_Offensive_Turnin"
|tip If Baldrazar is present, kill Gripping Shadows and stay behind him unless you're the tank.
|tip If Dread Knight Zak'gal is present, kill Fragment of Argus unless it fixates on you.
|tip If Dreadbringer Valus is present, avoid Slumbering Fog and stay behind him unless you're the tank.
|tip If Fel Lord Kaz'ral is present, destroy Fel Spikes and stay behind him unless you're the tank.
|tip If Flamebringer Az'rothel is present, move out of Rain of Fire and away from the Explosive Orb radius.
|tip If Flamecaller Vezrah is present, avoid Flaming Destruction.
|tip If Flameweaver Verathix is present, dodge Lava Waves when they move towards you.
|tip If Gorgoloth is present, move around if you get the Creeping Doom debuff and stand behind him if you aren't the tank.
|tip If Harbinger Drel'nathar is present, keep moving and move into Shadow Gale when Eye of Darkness is cast.
|tip If Malphazel is present, avoid standing in Fel Burn.
|tip If Vel'thrak the Punisher is present, move away from Blast Waves and 5 yards away from stomp. Avoid Rain of Fire.
|tip If Vogrethar the Defiled is present, avoid Wake of Blood.
step
label invasion-5371
Follow the path up |goto Antoran Wastes/0 72.28,48.00 < 10 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
Follow the path |goto 70.83,46.66 < 15 |only if ditto
Follow the path |goto 71.25,39.77 < 15 |only if ditto
Follow the path up |goto 69.76,38.57 < 15 |only if ditto
Follow the path up |goto 69.27,36.20 < 15 |only if ditto
Follow the path |goto 68.00,34.07 < 15 |only if ditto
Follow the path |goto 67.72,32.12 < 15 |only if ditto
Follow the path |goto 69.07,25.29 < 15 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
Follow the path |goto 67.72,28.51 < 15 |only if ditto
Follow the path |goto 66.11,29.13 < 15 |only if walking
Follow the path |goto 61.75,26.89 < 15 |only if walking
Follow the path up |goto 59.81,27.82 < 15 |only if walking
Follow the path |goto 59.28,25.17 < 20 |only if walking
Follow the path up |goto 57.98,24.20 < 15 |only if walking
Follow the path |goto 57.27,20.76 < 15 |only if walking
clicknpc Invasion Point: Bonich##126547
Enter the _Invasion Point: Bonich_ portal |scenariostart |goto Invasion Point Bonich/0 69.54,63.16
|tip Open your map and look for an invasion icon. They look like green portals.
step
kill Bladesworn Disciple##125788+, Chittering Fiend##125921+, Wicked Corruptor##125776+, Shadowsworn Betrayer##125759+
Defeat the Legion Invaders |scenariogoal Defeat Legion Invaders##1/37078 |goto Invasion Point Bonich/0 45.97,56.65
step
kill Invasive Gazer##127982+
Kill #8# Invasive Gazers |scenariogoal Invasive Gazers slain##2/37303 |goto Invasion Point Bonich/0 45.97,56.65
|tip Stand behind Gazers when possible. |grouprole DAMAGE
|tip Stand behind Gazers when possible. |grouprole HEALER
|tip During Glare, Gazers will rotate clockwise or counter-clockwise.
|tip They will rotate faster after each Glare.
step
Defeat the Legion Commander |scenariogoal Ensure Victory##3/37100 |goto Invasion Point Bonich/0 44.65,47.9 |next "Invasion_Point_Offensive_Turnin"
|tip If Baldrazar is present, kill Gripping Shadows and stay behind him unless you're the tank.
|tip If Dread Knight Zak'gal is present, kill Fragment of Argus unless it fixates on you.
|tip If Dreadbringer Valus is present, avoid Slumbering Fog and stay behind him unless you're the tank.
|tip If Fel Lord Kaz'ral is present, destroy Fel Spikes and stay behind him unless you're the tank.
|tip If Flamebringer Az'rothel is present, move out of Rain of Fire and away from the Explosive Orb radius.
|tip If Flamecaller Vezrah is present, avoid Flaming Destruction.
|tip If Flameweaver Verathix is present, dodge Lava Waves when they move towards you.
|tip If Gorgoloth is present, move around if you get the Creeping Doom debuff and stand behind him if you aren't the tank.
|tip If Harbinger Drel'nathar is present, keep moving and move into Shadow Gale when Eye of Darkness is cast.
|tip If Malphazel is present, avoid standing in Fel Burn.
|tip If Vel'thrak the Punisher is present, move away from Blast Waves and 5 yards away from stomp. Avoid Rain of Fire.
|tip If Vogrethar the Defiled is present, avoid Wake of Blood.
step
label invasion-5370
Follow the path up |goto Antoran Wastes/0 72.28,48.00 < 10 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
Follow the path |goto 70.83,46.66 < 15 |only if ditto
Follow the path |goto 71.25,39.77 < 15 |only if ditto
Follow the path up |goto 69.76,38.57 < 15 |only if ditto
Follow the path up |goto 69.27,36.20 < 15 |only if ditto
Follow the path |goto 68.20,36.61 < 15 |only if ditto
Follow the path |goto 67.46,38.59 < 15 |only if ditto
Follow the path |goto 64.53,38.44 < 15 |only if ditto
Follow the path down |goto 62.88,37.25 < 15 |only if ditto
Follow the path |goto 69.07,25.29 < 15 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
Follow the path |goto 67.72,28.51 < 15 |only if ditto
Follow the path |goto 66.00,29.09 < 15 |only if ditto
Follow the path |goto 63.88,28.92 < 15 |only if ditto
Follow the path |goto 62.59,31.73 < 15 |only if ditto
Follow the path |goto 62.88,37.25 < 15 |only if ditto
Follow the path |goto 60.39,38.83 < 15 |only if walking
Follow the path |goto 59.90,41.16 < 15 |only if walking
clicknpc Invasion Point: Cen'gar##126120
Enter the _Invasion Point: Cen'gar_ portal |scenariostart |goto Invasion Point Cen'gar/0 27.39,28.40
|tip Open your map and look for an invasion icon. They look like green portals.
step
kill Crazed Corruptor##126230+
Collapse #8# Smoldering Rifts |scenariogoal Smoldering Rifts collapsed.##1/37270 |goto Invasion Point Cen'gar/0 59.60,65.38
step
kill Molten Giant##124835+
Defeat #5# Molten Giants |scenariogoal Molten Giants Defeated##2/37275 |goto 59.60,65.38
step
Defeat the Legion commander |scenariogoal Legion Commander Defeated.##3/37100 |goto 59.60,65.38 |next "Invasion_Point_Offensive_Turnin"
|tip If Baldrazar is present, kill Gripping Shadows and stay behind him unless you're the tank.
|tip If Dread Knight Zak'gal is present, kill Fragment of Argus unless it fixates on you.
|tip If Dreadbringer Valus is present, avoid Slumbering Fog and stay behind him unless you're the tank.
|tip If Fel Lord Kaz'ral is present, destroy Fel Spikes and stay behind him unless you're the tank.
|tip If Flamebringer Az'rothel is present, move out of Rain of Fire and away from the Explosive Orb radius.
|tip If Flamecaller Vezrah is present, avoid Flaming Destruction.
|tip If Flameweaver Verathix is present, dodge Lava Waves when they move towards you.
|tip If Gorgoloth is present, move around if you get the Creeping Doom debuff and stand behind him if you aren't the tank.
|tip If Harbinger Drel'nathar is present, keep moving and move into Shadow Gale when Eye of Darkness is cast.
|tip If Malphazel is present, avoid standing in Fel Burn.
|tip If Vel'thrak the Punisher is present, move away from Blast Waves and 5 yards away from stomp. Avoid Rain of Fire.
|tip If Vogrethar the Defiled is present, avoid Wake of Blood.
step
label invasion-5359
Follow the path |goto Krokuun/0 58.86,68.37 < 10 |only if walking
Follow the path |goto 59.64,67.86 < 7 |only if walking
Follow the path |goto 59.85,66.81 < 7 |only if walking
Follow the path |goto 59.72,64.48 < 10 |only if walking
Follow the path |goto 61.53,62.21 < 10 |only if walking
Go down the stairs |goto 63.13,62.10 < 15 |only if walking
Follow the path |goto 64.49,63.29 < 15 |only if walking
Follow the path |goto 66.10,64.01 < 15 |only if walking
Follow the path |goto 68.36,67.09 < 15 |only if walking
Follow the path |goto 70.09,69.21 < 15 |only if walking
Follow the path |goto 69.15,71.78 < 15 |only if walking
Follow the path |goto 69.26,76.28 < 15 |only if walking
Follow the path |goto 68.79,78.55 < 15 |only if walking
Follow the path |goto 68.21,79.43 < 10 |only if walking
clicknpc Invasion Point: Cen'gar##126120
Enter the _Invasion Point: Cen'gar_ portal |scenariostart |goto Krokuun/0 68.66,81.78
|tip Open your map and look for an invasion icon. They look like green portals.
step
kill Crazed Corruptor##126230+
Collapse #8# Smoldering Rifts |scenariogoal Smoldering Rifts collapsed.##1/37270 |goto Invasion Point Cen'gar/0 59.60,65.38
step
kill Molten Giant##124835+
Defeat #5# Molten Giants |scenariogoal Molten Giants Defeated##2/37275 |goto 59.60,65.38
step
Defeat the Legion commander |scenariogoal Legion Commander Defeated.##3/37100 |goto 59.60,65.38 |next "Invasion_Point_Offensive_Turnin"
|tip If Baldrazar is present, kill Gripping Shadows and stay behind him unless you're the tank.
|tip If Dread Knight Zak'gal is present, kill Fragment of Argus unless it fixates on you.
|tip If Dreadbringer Valus is present, avoid Slumbering Fog and stay behind him unless you're the tank.
|tip If Fel Lord Kaz'ral is present, destroy Fel Spikes and stay behind him unless you're the tank.
|tip If Flamebringer Az'rothel is present, move out of Rain of Fire and away from the Explosive Orb radius.
|tip If Flamecaller Vezrah is present, avoid Flaming Destruction.
|tip If Flameweaver Verathix is present, dodge Lava Waves when they move towards you.
|tip If Gorgoloth is present, move around if you get the Creeping Doom debuff and stand behind him if you aren't the tank.
|tip If Harbinger Drel'nathar is present, keep moving and move into Shadow Gale when Eye of Darkness is cast.
|tip If Malphazel is present, avoid standing in Fel Burn.
|tip If Vel'thrak the Punisher is present, move away from Blast Waves and 5 yards away from stomp. Avoid Rain of Fire.
|tip If Vogrethar the Defiled is present, avoid Wake of Blood.
step
label invasion-5368
Follow the path |goto Eredath/0 63.63,41.31 < 15 |only if walking
Follow the path up |goto 64.68,42.44 < 15 |only if walking
Follow the path |goto 65.72,43.38 < 10 |only if walking
Follow the path |goto 66.60,42.36 < 10 |only if walking
Follow the path |goto 66.59,41.03 < 10 |only if walking
Follow the path |goto 67.98,39.21 < 15 |only if walking
clicknpc Invasion Point: Naigtal##126593
Enter the _Invasion Point: Naigtal_ portal |scenariostart |goto 70.50,38.47
|tip Open your map and look for an invasion icon. They look like green portals.
step
kill Chittering Fiend##125921+, Crazed Corruptor##126231+, Vengeful Conqueror##125745+
Defeat the Legion's forces |scenariogoal Defeat Legion forces##1/37078 |goto Invasion Point Naigtal/0 46.71,51.51
step
kill Hellfire Infernal##125958+
Defeat #5# Hellfire Infernals |scenariogoal Hellfire Infernals defeated##2/37298 |goto 46.71,51.51
|tip Avoid the Fel Enraged Shamblers.
step
Defeat the Legion Commander |scenariogoal Legion Commander Defeated##3/37100 |goto 46.71,51.51 |next "Invasion_Point_Offensive_Turnin"
|tip If Fel Lord Kaz'ral is present, destroy Fel Spikes and stay behind him unless you're the tank.
step
label invasion-5374
Follow the path up |goto Antoran Wastes/0 72.28,48.00 < 10 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
Follow the path |goto 70.83,46.66 < 15 |only if ditto
Follow the path |goto 71.25,39.77 < 15 |only if ditto
Follow the path up |goto 69.76,38.57 < 15 |only if ditto
Follow the path up |goto 69.27,36.20 < 15 |only if ditto
Follow the path |goto 68.00,34.07 < 15 |only if ditto
Follow the path |goto 67.72,32.12 < 15 |only if ditto
Follow the path |goto 69.07,25.29 < 15 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
Follow the path |goto 67.72,28.51 < 15 |only if ditto
Follow the path |goto 66.00,29.09 < 15 |only if walking
Follow the path |goto 63.93,28.70 < 20 |only if walking
Follow the path |goto 61.55,26.74 < 10 |only if walking
Follow the path up |goto 60.69,26.64 < 10 |only if walking
Follow the path up |goto 59.74,27.82 < 15 |only if walking
Follow the path |goto 57.16,28.46 < 15 |only if walking
clicknpc Invasion Point: Naigtal##126593
Enter the _Invasion Point: Naigtal_ portal |scenariostart |goto 55.33,29.52
|tip Open your map and look for an invasion icon. They look like green portals.
step
kill Chittering Fiend##125921+, Crazed Corruptor##126231+, Vengeful Conqueror##125745+
Defeat the Legion's forces |scenariogoal Defeat Legion forces##1/37078 |goto Invasion Point Naigtal/0 46.71,51.51
step
kill Hellfire Infernal##125958+
Defeat #5# Hellfire Infernals |scenariogoal Hellfire Infernals defeated##2/37298 |goto 46.71,51.51
|tip Avoid the Fel Enraged Shamblers.
step
Defeat the Legion Commander |scenariogoal Legion Commander Defeated##3/37100 |goto 46.71,51.51 |next "Invasion_Point_Offensive_Turnin"
|tip If Fel Lord Kaz'ral is present, destroy Fel Spikes and stay behind him unless you're the tank.
step
label invasion-5369
Follow the path up |goto Antoran Wastes/0 72.28,48.00 < 10 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
Follow the path |goto 70.83,46.66 < 15 |only if ditto
Follow the path |goto 71.25,39.77 < 15 |only if ditto
Follow the path up |goto 69.76,38.57 < 15 |only if ditto
Follow the path up |goto 69.27,36.20 < 15 |only if ditto
Follow the path |goto 69.07,25.29 < 15 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
Follow the path |goto 67.72,28.51 < 15 |only if ditto
Follow the path |goto 67.99,33.01 < 15 |only if ditto
clicknpc Invasion Point: Sangua##125863
Enter the _Invasion Point: Sangua_ portal |scenariostart |goto Invasion Point Sangua/0 24.18,50.61
|tip Open your map and look for an invasion icon. They look like green portals.
step
Follow the path |goto Invasion Point Sangua/0 35.18,72.39 < 15 |walk
kill Legion Blood Drainer##125874+
Destroy #3# Blood Drainers |scenariogoal Destroy Blood Drainers##1/37186 |goto Invasion Point Sangua/0 53.15,56.70
|tip A few seconds after engaging them, they will alert all enemies in a 40 yard radius.
step
kill Noxious Shadowstalker##125939+, Shadowblade Acolyte##125790+, Felflame Invader##125755+, Clubfist Obliterator##125970+
|tip Kill enemies to fill the progress bar under the scenario information.
Defeat the Legion forces |scenariostage 2 |goto 53.15,56.70
step
Defeat the Legion Commander |scenariogoal 3/37100 |goto 53.15,56.70 |next "Invasion_Point_Offensive_Turnin"
|tip If Baldrazar is present, kill Gripping Shadows and stay behind him unless you're the tank.
|tip If Dread Knight Zak'gal is present, kill Fragment of Argus unless it fixates on you.
|tip If Dreadbringer Valus is present, avoid Slumbering Fog and stay behind him unless you're the tank.
|tip If Gorgoloth is present, move around if you get the Creeping Doom debuff and stand behind him if you aren't the tank.
|tip If Harbinger Drel'nathar is present, keep moving and move into Shadow Gale when Eye of Darkness is cast.
|tip If Malphazel is present, avoid standing in Fel Burn.
|tip If Vogrethar the Defiled is present, avoid Wake of Blood.
step
label invasion-5350
Follow the path |goto Krokuun/0 61.70,46.66 < 15 |only if walking
Follow the path |goto 62.56,45.12 < 15 |only if walking
Follow the path up |goto 63.95,42.45 < 20 |only if walking
Follow the path |goto 65.21,38.26 < 20 |only if walking
Follow the path |goto 68.47,36.21 < 20 |only if walking
Follow the path |goto 71.41,33.77 < 20 |only if walking
clicknpc Invasion Point: Sangua##125863
Enter the _Invasion Point: Sangua_ portal |scenariostart |goto 73.44,33.85
|tip Open your map and look for an invasion icon. They look like green portals.
step
Follow the path |goto Invasion Point Sangua/0 35.18,72.39 < 15 |walk
kill Legion Blood Drainer##125874+
Destroy #3# Blood Drainers |scenariogoal Destroy Blood Drainers##1/37186 |goto Invasion Point Sangua/0 53.15,56.70
|tip A few seconds after engaging them, they will alert all enemies in a 40 yard radius.
step
kill Noxious Shadowstalker##125939+, Shadowblade Acolyte##125790+, Felflame Invader##125755+, Clubfist Obliterator##125970+
|tip Kill enemies to fill the progress bar under the scenario information.
Defeat the Legion forces |scenariostage 2 |goto 53.15,56.70
step
Defeat the Legion Commander |scenariogoal 3/37100 |goto 53.15,56.70 |next "Invasion_Point_Offensive_Turnin"
|tip If Baldrazar is present, kill Gripping Shadows and stay behind him unless you're the tank.
|tip If Dread Knight Zak'gal is present, kill Fragment of Argus unless it fixates on you.
|tip If Dreadbringer Valus is present, avoid Slumbering Fog and stay behind him unless you're the tank.
|tip If Gorgoloth is present, move around if you get the Creeping Doom debuff and stand behind him if you aren't the tank.
|tip If Harbinger Drel'nathar is present, keep moving and move into Shadow Gale when Eye of Darkness is cast.
|tip If Malphazel is present, avoid standing in Fel Burn.
|tip If Vogrethar the Defiled is present, avoid Wake of Blood.
step
label invasion-5360
Follow the path |goto Krokuun/0 41.08,65.07 < 15 |only if walking
Follow the path |goto 40.44,67.25 < 15 |only if walking
Follow the path |goto 41.91,71.72 < 15 |only if walking
Follow the path |goto 44.30,73.34 < 15 |only if walking
Follow the path |goto 45.67,75.76 < 15 |only if walking
clicknpc Invasion Point: Val##126499
Enter the _Invasion Point: Val_ portal |scenariostart |goto Krokuun/0 47.00,77.41
|tip Open your map and look for an invasion icon. They look like green portals.
step
kill Wicked Corruptor##125777+
kill Felrage Marauder##125781+
kill Blacksoul Inquisitor##125779+
Defeat the Legion Invaders |scenariogoal Defeat Legion invaders##1/37078 |goto Invasion Point Val/0 54.80,37.51
|tip Kill any enemies you see.
|tip Avoid the orbs with swirling wind. They will knock you back.
step
clicknpc Demon Hunter##102931
Release #12# Illidari |scenariogoal Illidari released.##2/37095 |goto 54.80,37.51
|tip They are trapped in ice.
step
Defeat the Legion Commander |scenariogoal Commander slain##3/37100 |goto 54.80,37.51 |next "Invasion_Point_Offensive_Turnin"
|tip If Baldrazar is present, kill Gripping Shadows and stay behind him unless you're the tank.
|tip If Dread Knight Zak'gal is present, kill Fragment of Argus unless it fixates on you.
|tip If Dreadbringer Valus is present, avoid Slumbering Fog and stay behind him unless you're the tank.
|tip If Fel Lord Kaz'ral is present, destroy Fel Spikes and stay behind him unless you're the tank.
|tip If Flamebringer Az'rothel is present, move out of Rain of Fire and away from the Explosive Orb radius.
|tip If Flamecaller Vezrah is present, avoid Flaming Destruction.
|tip If Flameweaver Verathix is present, dodge Lava Waves when they move towards you.
|tip If Gorgoloth is present, move around if you get the Creeping Doom debuff and stand behind him if you aren't the tank.
|tip If Harbinger Drel'nathar is present, keep moving and move into Shadow Gale when Eye of Darkness is cast.
|tip If Malphazel is present, avoid standing in Fel Burn.
|tip If Vel'thrak the Punisher is present, move away from Blast Waves and 5 yards away from stomp. Avoid Rain of Fire.
|tip If Vogrethar the Defiled is present, avoid Wake of Blood.
step
label invasion-5372
Follow the path up |goto Antoran Wastes/0 72.40,48.10 < 15 |only if walking and knowstaxi("The Veiled Den, Antoran Wastes")
Follow the path |goto 71.54,47.15 < 15 |only if ditto
Follow the path |goto 70.18,48.67 < 15 |only if ditto
Follow the path up |goto 70.78,52.44 < 20 |only if ditto
Follow the path up |goto 73.23,54.93 < 20 |only if ditto
Follow the path |goto 73.28,57.07 < 15 |only if ditto
Follow the path |goto 73.51,62.27 < 15 |only if ditto
Follow the path |goto Antoran Wastes/0 71.38,73.19 < 15 |only if walking and knowstaxi("Light's Purchase, Antoran Wastes")
Follow the path |goto 70.19,70.66 < 15 |only if ditto
Follow the path |goto 71.31,66.25 < 15 |only if ditto
Follow the path |goto 71.30,62.83 < 15 |only if ditto
Follow the path up |goto 72.86,63.23 < 15 |only if ditto
clicknpc Invasion Point: Val##126499
Enter the _Invasion Point: Val_ portal |scenariostart |goto 72.68,65.22
|tip Open your map and look for an invasion icon. They look like green portals.
step
kill Wicked Corruptor##125777+
kill Felrage Marauder##125781+
kill Blacksoul Inquisitor##125779+
Defeat the Legion Invaders |scenariogoal Defeat Legion invaders##1/37078 |goto Invasion Point Val/0 54.80,37.51
|tip Kill any enemies you see.
|tip Avoid the orbs with swirling wind. They will knock you back.
step
clicknpc Demon Hunter##102931
Release #12# Illidari |scenariogoal Illidari released.##2/37095 |goto 54.80,37.51
|tip They are trapped in ice.
step
Defeat the Legion Commander |scenariogoal Commander slain##3/37100 |goto 54.80,37.51 |next "Invasion_Point_Offensive_Turnin"
|tip If Baldrazar is present, kill Gripping Shadows and stay behind him unless you're the tank.
|tip If Dread Knight Zak'gal is present, kill Fragment of Argus unless it fixates on you.
|tip If Dreadbringer Valus is present, avoid Slumbering Fog and stay behind him unless you're the tank.
|tip If Fel Lord Kaz'ral is present, destroy Fel Spikes and stay behind him unless you're the tank.
|tip If Flamebringer Az'rothel is present, move out of Rain of Fire and away from the Explosive Orb radius.
|tip If Flamecaller Vezrah is present, avoid Flaming Destruction.
|tip If Flameweaver Verathix is present, dodge Lava Waves when they move towards you.
|tip If Gorgoloth is present, move around if you get the Creeping Doom debuff and stand behind him if you aren't the tank.
|tip If Harbinger Drel'nathar is present, keep moving and move into Shadow Gale when Eye of Darkness is cast.
|tip If Malphazel is present, avoid standing in Fel Burn.
|tip If Vel'thrak the Punisher is present, move away from Blast Waves and 5 yards away from stomp. Avoid Rain of Fire.
|tip If Vogrethar the Defiled is present, avoid Wake of Blood.
step
label "hazards"
_Astralfall:_
|tip Swirling circles will appear on the ground, avoid them.
_Legion Command Ship:_
|tip A large green circle will appear on the floor. A giant beam fires down and follows players for a duration, avoid it.
_Power Oscillation:_
|tip You will randomly be buffed and debuffed as you are in the scenario.
step
label "Invasion_Point_Offensive_Turnin"
#include "Argus_Invasion_Illidan"
turnin Where They Least Expect It##48461 |only if not completedq(48461)
turnin Invasion Point Offensive##48513 |only if completedq(48461) and not completedq(48513)
turnin Commander's Downfall##48605 |only if completedq(48513) and not completedq(48605)
turnin Invasion Onslaught##49293 |only if ZGV.questsbyid[49293] and ZGV.questsbyid[49293].complete
step
#include "Argus_Invasion_Turalyon"
turnin Fuel of a Doomed World##48799
|only if ZGV.questsbyid[48799] and ZGV.questsbyid[48799].complete
step
Returning |next "Invasion_Point_Offensive"
]])
