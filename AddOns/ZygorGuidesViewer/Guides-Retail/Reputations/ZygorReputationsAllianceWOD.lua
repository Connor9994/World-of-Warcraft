local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("ReputationsAWOD") then return end
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
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Warlords of Draenor\\Council of Exarchs",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Council of Exarchs faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Council of Exarchs') < Exalted end,
achieveid={9470},
patch='60001',
},[[
stickystart "info"
step
label "menu"
Questing in most Draenor zones gives you Council of Exarchs reputation
Killing enemies in Shadowmoon Valley also gives Council of Exarchs rep:
Socrethar's Rise |next "rise" |confirm
Darktide Roost |next "darktide" |confirm
step
label "rise"
kill Sargerei Initiate##81541+, Sargerei Acolyte##85168+, Sargerei Darkblade##84945+, Shadowglen Thornshooter##81502+, Shadowglen Spitter##81637+, Sargerei Demonlord##81543+
Kill mobs around _Socrethar's Rise_ for Council of Exarchs reputation |goto Shadowmoon Valley D 47.1,76.5
Return to the main menu |next "menu" |confirm
step
label "darktide"
kill Darktide Engineer##78339+, Darktide Pilferer##78148+, Darktide Guardian##78168+, Darktide Rylakinator-3000##78328+, Darkwing Adolescent##85357+
Kill mobs around _Darktide Roost_ for Council of Exarchs reputation |goto Shadowmoon Valley D 57.6,87.9
Return to the main menu |next "menu" |confirm
step
label "info"
Your current reputation rank is:
_Neutral_ |only if rep('Council of Exarchs')==Neutral
_Friendly_ |only if rep('Council of Exarchs')==Friendly
_Honored_ |only if rep('Council of Exarchs')==Honored
_Revered_ |only if rep('Council of Exarchs')==Revered
_Exalted_ |only if rep('Council of Exarchs')==Exalted
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Warlords of Draenor\\Hand of the Prophet",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Hand of the Prophet faction.",
achieveid={10350},
patch='60200',
},[[
step
Complete the following guide before continuing:
_Tanaan Jungle (100) Main Questline_
confirm |only if not completedq(38578)
step
label "hand_prophet_start"
click Tanaan Planning Map##241725
|tip It looks like a rectangle table with a map laying on it.
accept Assault on Ironhold Harbor##37891 |goto Tanaan Jungle/0 58.5,60.4 |or
accept Bleeding the Bleeding Hollow##38045 |goto Tanaan Jungle/0 58.5,60.4 |or
accept Battle At The Iron Front##38046 |goto Tanaan Jungle/0 58.5,60.4 |or
accept Assault on the Ruins of Kra'nak##38250 |goto Tanaan Jungle/0 58.5,60.4 |or
accept Assault on The Fel Forge##38440 |goto Tanaan Jungle/0 58.5,60.4 |or
accept Assault on the Temple of Sha'naar##37968 |goto Tanaan Jungle/0 58.5,60.4 |or
accept Assault on the Throne of Kil'jaeden##38585 |goto Tanaan Jungle/0 58.5,60.4 |or
|tip You will be able to choose between 2 of these quests, but will only be able to accept 1 of these quests per day.
step
talk Parvink##96147
accept Demonslayer of Tanaan##39581 |goto Tanaan Jungle/0 57.8,59.8 |or
accept Bringing Down the Iron Horde##39586 |goto Tanaan Jungle/0 57.8,59.8 |or
|tip This quest only has a chance of being available each, day, so it's not guaranteed to be available. You can only accept one of these quests, if it's available. Sometimes, a different quest for Saberstalkers reputation will be available, instead.
step
kill Grom'kar Warsmith##89935+, Grom'kar Sentry##89857+, Grom'kar Leadslinger##89777+, Grom'kar Cauterizer##90136+
clicknpc True Iron Bomb##90069+
|tip They look like round metal spiked balls on the ground and sitting on objects all around this area. Get them and cast the spell they grant you on Iron Battle Engines. They look like big metal artillery machines all around this area.
click Box of Iron Horde Equipment##239839
|tip They look like wooden crates on the ground around this area.
clicknpc Iron Horde Banner##90433
|tip They look like vertical flags made of cloth and bone all around this area.
click Inferno Shot##243205
|tip They look like silver metal artillery capsules laying on the ground around this area. They give you a buff that allows you to use Harbor Cannons around this area, which allow you to kill mobs easily.
Assault the Iron Horde Forces at Ironhold Harbor |q 37891/1 |goto Tanaan Jungle/0 39.6,37.0
|tip You will see a progress bar in your quest tracking area.
step
_Follow_ the path |goto Tanaan Jungle/0 21.3,58.7 < 30 |only if walking
kill Eye Sentry##95235+, Bleeding Hollow Hunter##89699+, Felblood Overseer##92706+, Bleeding Hollow Cabalist##90851+, Bleeding Hollow Brute##89706+
clicknpc Blood Ritual Orb##83670+
|tip They look like floating swirling red balls around this area.
Assault the Bleeding Hollow at Zeth'Gol |q 38045/1 |goto Tanaan Jungle/0 22.3,51.1
|tip You will see a progress bar in your quest tracking area.
step
click Medical Supplies##239971
|tip They look like wooden crates with red crosses on them on the ground all around this area.
collect First Aid Bandages##122139 |n
clicknpc Wounded Footsoldier##90443+
|tip You need First Aid Bandages in order to heal them.
clicknpc Iron Horde Banner##90433
|tip They look like vertical flags made of cloth and bone all around this area.
kill Felsworn Soultwister##92873+, Felsworn Berserker##90482+, Felsworn Bulwark##91251+, Iron Wargronn##90585+, Iron Sniper##77767+
Aid the Battle at the Iron Front |q 38046/1 |goto Tanaan Jungle/0 11.4,56.1
|tip You will see a progress bar in your quest tracking area.
step
kill Felborn Enforcer##90620+, Sethekk Neophyte##90312+, Felborn Instructor##89748
clicknpc Ritual Circle##90300+
|tip They look like circular green glowing symbols on the ground around this area.
Assault the Shadow Council Forces at the Ruins of Kra'nak |q 38250/1 |goto Tanaan Jungle/0 24.0,39.6
|tip You will see a progress bar in your quest tracking area.
step
kill Felblood Warrior##90066+, Felblood Overseer##91760+, Felblood Deadeye##91764+, Forge Engineer##91721+
click Siege Equipment Blueprints##241669
|tip They look like small tan pieces of paper laying on the ground and on objects around this area.
Assault the Iron Horde Forces at the Fel Forge |q 38440/1 |goto Tanaan Jungle/0 45.3,43.5
|tip You will see a progress bar in your quest tracking area.
step
_Follow_ the path |goto Tanaan Jungle/0 31.1,63.0 < 30 |only if walking
_Go up_ the stairs |goto Tanaan Jungle/0 28.9,66.7 < 20 |only if walking
kill Sargerei Nullifier##90295+, Sargerei Felbinder##90286+
clicknpc Bound Spirit##90703+
|tip They look like floating draenei spirits kicking in the air and being choked around this area.
clicknpc Defiled Corpse##90302+
|tip They look like dead draenei laying on the ground around this area.
Assault the Sargerei Forces at the Temple of Sha'naar |q 37968/1 |goto Tanaan Jungle/0 28.5,67.9
|tip You will see a progress bar in your quest tracking area.
step
_Follow_ the road |goto Tanaan Jungle/0 58.1,42.5 < 30 |only if walking
_Run up_ the zigzag path |goto Tanaan Jungle/0 58.8,31.8 < 30 |only if walking
kill Felflame Fiend##92082+, Shadowheart Fiend##92083+, Infernal Devastator##92031+, Felblood Corruptor##92396+, Felguard Sentinel##92026+
Assault the Shadow Council Forces at the Throne of Kil'jaeden |q 38585/1 |goto Tanaan Jungle/0 56.0,25.6
|tip You will see a progress bar in your quest tracking area.
|tip This is a group quest. Use the Group Finder to easily find a group by opening it and selecting Premade Groups -> Custom, then searching for "Kil'jaeden".
step
talk Exarch Yrel##90309
turnin Assault on Ironhold Harbor##37891 |goto Tanaan Jungle/0 58.5,60.4 |only if haveq(37891) or completedq(37891)
turnin Bleeding the Bleeding Hollow##38045 |goto Tanaan Jungle/0 58.5,60.4 |only if haveq(38045) or completedq(38045)
turnin Battle At The Iron Front##38046 |goto Tanaan Jungle/0 58.5,60.4 |only if haveq(38046) or completedq(38046)
turnin Assault on the Ruins of Kra'nak##38250 |goto Tanaan Jungle/0 58.5,60.4 |only if haveq(38250) or completedq(38250)
turnin Assault on The Fel Forge##38440 |goto Tanaan Jungle/0 58.5,60.4 |only if haveq(38440) or completedq(38440)
turnin Assault on the Temple of Sha'naar##37968 |goto Tanaan Jungle/0 58.5,60.4 |only if haveq(37968) or completedq(37968)
turnin Assault on the Throne of Kil'jaeden##38585 |goto Tanaan Jungle/0 58.5,60.4 |only if haveq(38585) or completedq(38585)
step
talk Vindicator Krethos##90974
accept Pressing the Attack##39574 |goto Tanaan Jungle/0 58.4,60.5
accept Harnessing Their Power##39573 |goto Tanaan Jungle/0 58.4,60.5 |or
accept Disarming Sha'naar##39571 |goto Tanaan Jungle/0 58.4,60.5 |or
accept Secrets of the Shadow Council##39570 |goto Tanaan Jungle/0 58.4,60.5 |or
accept Breaking Their Fel Bonds##39569 |goto Tanaan Jungle/0 58.4,60.5 |or
accept A Little Wetwork##39568 |goto Tanaan Jungle/0 58.4,60.5 |or
accept Bloodied Blades of Zeth'Gol##39567 |goto Tanaan Jungle/0 58.4,60.5 |or
|tip You will only be able to accept 2 of these quests per day.
step
accept Battle At The Iron Front##39443
click Medical Supplies##239971
|tip They look like wooden crates with red crosses on them on the ground all around this area.
collect First Aid Bandages##122139 |n
clicknpc Wounded Grunt##90452+
|tip You need First Aid Bandages in order to heal them.
clicknpc Iron Horde Banner##90433
|tip They look like vertical flags made of cloth and bone all around this area.
kill Felsworn Soultwister##92873+, Felsworn Berserker##90482+, Felsworn Bulwark##91251+, Iron Wargronn##90585+, Iron Sniper##77767+
Aid the Battle at the Iron Front |q 39443/1 |goto Tanaan Jungle/0 11.4,56.1
|tip You will see a progress bar in your quest tracking area.
only if not completedq("39574/1") and not completedq(38046)
step
kill Felsworn Soultwister##92873+, Felsworn Berserker##90482+, Felsworn Bulwark##91251+
collect 20 Vial of Fel Blood##128431 |q 39569/1 |goto Tanaan Jungle/0 11.4,56.1
step
kill Iron Wargronn##90585+
collect Wargronn Harness##128434 |q 39514/1 |goto Tanaan Jungle/0 13.1,56.2
step
kill Felsworn Soultwister##92873+, Felsworn Berserker##90482+, Felsworn Bulwark##91251+
Slay #25# Iron Horde Orcs |q 39586/1 |goto Tanaan Jungle/0 11.4,56.1
step
_Follow_ the path up |goto Tanaan Jungle/0 31.1,63.0 < 30 |only if walking
_Run up_ the stairs |goto Tanaan Jungle/0 28.8,66.7 < 30 |only if walking
_Follow_ the stairs up |goto Tanaan Jungle/0 29.2,68.4 < 30 |only if walking
_Enter_ the mine |goto Tanaan Jungle/0 29.4,70.8 < 20 |walk
click Unrefined Draenic Crystal##243794
|tip They look like small clusters of white crystals on the ground and on objects inside this mine.
collect 8 Unrefined Draenic Crystal##128433 |q 39571/1 |goto Tanaan Jungle/0 29.2,71.0
step
_Follow_ the path |goto Tanaan Jungle/0 31.1,63.0 < 30 |only if walking
_Go up_ the stairs |goto Tanaan Jungle/0 28.9,66.7 < 20 |only if walking
accept Assault on the Temple of Sha'naar##39449
kill Sargerei Nullifier##90295+, Sargerei Felbinder##90286+
clicknpc Bound Spirit##90703+
|tip They look like floating draenei spirits kicking in the air and being choked around this area.
clicknpc Defiled Corpse##90302+
|tip They look like dead draenei laying on the ground around this area.
Assault the Sargerei Forces at the Temple of Sha'naar |q 39449/1 |goto Tanaan Jungle/0 28.5,67.9
|tip You will see a progress bar in your quest tracking area.
only if not completedq("39574/1") and not completedq(37968)
step
kill Felborn Enforcer##90620+, Sethekk Neophyte##90312+, Felborn Instructor##89748+
collect 20 Shadow Council Missive##128432 |q 39570/1 |goto Tanaan Jungle/0 24.0,39.6
step
accept Assault on the Ruins of Kra'nak##39448
kill Felborn Enforcer##90620+, Sethekk Neophyte##90312+, Felborn Instructor##89748+
clicknpc Ritual Circle##90300+
|tip They look like circular green glowing symbols on the ground around this area.
Assault the Shadow Council Forces at the Ruins of Kra'nak |q 39448/1 |goto Tanaan Jungle/0 24.0,39.6
|tip You will see a progress bar in your quest tracking area.
only if not completedq("39574/1") and not completedq(38250)
step
kill Grom'kar Warsmith##89935+, Grom'kar Sentry##89857+, Grom'kar Leadslinger##89777+, Grom'kar Cauterizer##90136+
collect 15 Iron Horde Naval Manifest##128429 |q 39568/1 |goto Tanaan Jungle/0 39.6,37.0
step
_Follow_ the path |goto Tanaan Jungle/0 21.3,58.7 < 30 |only if walking
kill Bleeding Hollow Hunter##89699+, Bleeding Hollow Cabalist##90851+, Bleeding Hollow Brute##89706+
collect 25 Bleeding Hollow Ritual Blade##128428 |q 39567/1 |goto Tanaan Jungle/0 22.3,51.1
step
talk Vindicator Krethos##90974
turnin Pressing the Attack##39574 |goto Tanaan Jungle/0 58.4,60.5
turnin Harnessing Their Power##39573 |goto Tanaan Jungle/0 58.4,60.5 |only if haveq(39573) or completedq(39573)
turnin Disarming Sha'naar##39571 |goto Tanaan Jungle/0 58.4,60.5 |only if haveq(39571) or completedq(39571)
turnin Secrets of the Shadow Council##39570 |goto Tanaan Jungle/0 58.4,60.5 |only if haveq(39570) or completedq(39570)
turnin Breaking Their Fel Bonds##39569 |goto Tanaan Jungle/0 58.4,60.5 |only if haveq(39569) or completedq(39569)
turnin A Little Wetwork##39568 |goto Tanaan Jungle/0 58.4,60.5 |only if haveq(39568) or completedq(39568)
turnin Bloodied Blades of Zeth'Gol##39567 |goto Tanaan Jungle/0 58.4,60.5 |only if haveq(39567) or completedq(39567)
step
_Go through_ the doorway |goto Tanaan Jungle/0 57.8,58.0 < 20 |only if walking
_Follow_ the path |goto Tanaan Jungle/0 54.9,51.6 < 30 |only if walking
kill Corrupting Fiend##93024+
|tip The imps spawn in groups of 3 around this area.
Slay #20# Demons |q 39581/1 |goto Tanaan Jungle/0 53.9,43.6
You can find more around [Tanaan Jungle/0 56.9,35.2]
step
talk Parvink##96147
turnin Demonslayer of Tanaan##39581 |goto Tanaan Jungle/0 57.8,59.8 |only if haveq(39581) or completedq(39581)
turnin Bringing Down the Iron Horde##39586 |goto Tanaan Jungle/0 57.8,59.8 |only if haveq(39586) or completedq(39586)
step
You've completed the dailies for today
Click to restart the dailies run |confirm |next "hand_prophet_start"
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
Click here to check out our Tanaan Jungle Questline guide |next "Leveling Guides\\Draenor (10-50)\\Tanaan Jungle (40-50)" |confirm |or
confirm |only if not completedq(38578) |or
step
label "order_awakened_start"
talk Dawn-Seeker Krisek##95424
accept Unseen Influence##39433 |goto Tanaan Jungle/0 58.0,59.4
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
turnin Unseen Influence##39433 |goto Tanaan Jungle/0 58.0,59.4
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
talk Parvink##96147
accept Tooth and Claw##39582 |goto Tanaan Jungle/0 57.8,59.8 |or
|tip This quest has a chance to be available each day, but is not guaranteed to be available.
_
Click here if the quest is not available |confirm |or
step
_Go through_ the doorway |goto Tanaan Jungle/0 56.4,59.2 < 20 |walk
_Follow_ the path |goto Tanaan Jungle/0 54.9,64.3 < 30 |only if walking
kill Bloodfang Swarmer##89789+, Bloodfang Ravager##89741+
collect 100 Tanaan Jungle Tooth##128438 |q 39582/1 |goto Tanaan Jungle/0 56.4,67.1
step
_Follow_ the path |goto Tanaan Jungle/0 55.7,65.8 < 20 |only if walking
_Run up_ the dirt path |goto Tanaan Jungle/0 55.0,63.6 < 30 |only if walking
_Go through_ the doorway |goto Tanaan Jungle/0 56.5,59.2 < 20 |walk
talk Parvink##96147
turnin Tooth and Claw##39582 |goto Tanaan Jungle/0 57.8,59.8
step
_Go through_ the doorway |goto Tanaan Jungle/0 56.5,59.2 < 20 |only if walking
_Follow_ the path |goto Tanaan Jungle/0 54.5,62.9 < 30 |only if walking
_Run on_ the dirt road |goto Tanaan Jungle/0 54.7,64.9 < 20 |only if walking
_Go up_ the dirt path |goto Tanaan Jungle/0 54.0,70.5 < 20 |only if walking
talk Z'tenga the Walker##92805
accept Rumble in the Jungle##39565 |goto Tanaan Jungle/0 55.3,74.8
|tip This quest can only be done once per week.
step
_Follow_ the path |goto Tanaan Jungle/0 54.7,76.7 < 30 |only if walking
kill Blackfang Prowler##89746+, Blackfang Shaman##92481+, Blackfang Savage##89695+, Blackfang Hunter##89747+
|tip They are all around this area. You can use the Group Finder and select Premade Groups -> Custom, then search for "Fang'rila" or "Blackfang". Being in a group will make this go much faster.
collect 40 Blackfang Claw##124099 |q 39565 |goto Tanaan Jungle/0 55.8,78.6
step
_Follow_ the path |goto Tanaan Jungle/0 54.9,77.4 < 30 |only if walking
talk Z'tenga the Walker##92805
buy Minor Blackfang Challenge Totem##124093 |complete itemcount(124093) > 0 or completedq(39565) |goto Tanaan Jungle/0 55.8,78.6
buy Major Blackfang Challenge Totem##124094 |complete itemcount(124094) > 0 or completedq(39565) |goto Tanaan Jungle/0 55.8,78.6
buy Prime Blackfang Challenge Totem##124095 |complete itemcount(124095) > 0 or completedq(39565) |goto Tanaan Jungle/0 55.8,78.6
step
_Follow_ the path |goto Tanaan Jungle/0 54.7,75.9 < 30 |only if walking
_Enter_ the Challenge Arena |goto Tanaan Jungle/0 54.8,80.9 < 20 |only if walking
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
_Follow_ the path |goto Tanaan Jungle/0 54.9,77.4 < 30 |only if walking
talk Z'tenga the Walker##92805
turnin Rumble in the Jungle##39565 |goto Tanaan Jungle/0 55.3,74.8
step
You've completed the dailies for today
Click to restart the dailies run |confirm |next "saberstalkers_start"
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Warlords of Draenor\\Sha'tari Defense",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Sha'tari Defense faction.",
achieveid={9476},
patch='60001',
},[[
step
Routing to Rep |next "menu" |only if hasbuilding(144,2) or hasbuilding(145,3)
Routing to End |next "end" |only if default
stickystart "info"
step
label "menu"
Killing enemies in Talador gives you Sha'tari Defense reputation:
Shattrath City |next "shattrath" |confirm
Bladefury Hold |next "bladefury" |confirm
step
label "shattrath"
kill Imp Charmer##83017+, Sargerei Felbringer##84334+, Gorebound Insurgent##87337+, Shadowbourne Felcaster##84871+, Fel Seer##84873+
Kill mobs around _Shattrath City_ for Sha'tari Defense reputation |goto Talador 45.1,35.4
Return to the main menu |next "menu" |confirm
step
label "bladefury"
kill Grom'kar Bulwark##85454+, Grom'kar Punisher##85458+, Grom'kar Deadeye##85450+, Grom'kar Blademaster##85456+
Kill mobs around _Bladefury Hold_ for Sha'tari Defense reputation |goto Talador 68.8,3.5
Return to the main menu |next "menu" |confirm
step
label "info"
Your current reputation rank is:
_Neutral_ |only if rep("Sha'tari Defense")==Neutral
_Friendly_ |only if rep("Sha'tari Defense")==Friendly
_Honored_ |only if rep("Sha'tari Defense")==Honored
_Revered_ |only if rep("Sha'tari Defense")==Revered
_Exalted_ |only if rep("Sha'tari Defense")==Exalted
step
label "end"
You must have at least a _level 2 Trading Post_ in your Garrison to gain Sha'tari Defense reputation!
|tip Use the Garrison Buildings guide to accomplish this.
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
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Warlords of Draenor\\Wrynn's Vanguard",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Wrynn's Vanguard faction.",
achieveid={9474, 9214},
patch='60001',
},[[
step
Your current reputation rank is:
_Neutral_ |only if rep('Wrynns Vanguard')==Neutral
_Friendly_ |only if rep('Wrynns Vanguard')==Friendly
_Honored_ |only if rep('Wrynns Vanguard')==Honored
_Revered_ |only if rep('Wrynns Vanguard')==Revered
_Exalted_ |only if rep('Wrynns Vanguard')==Exalted
confirm
only if completedq(36119)
step
Click _Quest Accept_ Box:
accept Welcome to Ashran##36119 |goto Ashran/0 41.47,78.87
|tip Click Accept when asked to join the Ashran battle. You may have to wait for queue.
step
talk Commander Anne Dunworthy##84173
turnin Welcome to Ashran##36119 |goto 44.59,74.01
|tip Click Accept when asked to join the Ashran battle. You may have to wait for queue.
accept Reporting For Duty##36130 |goto 44.59,74.01
step
talk Farseer Kylanda##82901
Tell her, _"You're to show me Ashran?"_
Speak to Farseer Kylanda |q 36130/3 |goto Ashran/0 44.8,75.0
accept Survey Ashran##36127 |goto Ashran/0 44.8,75.0
step
talk Chris Clarkie##82909
Tell him, _"Reporting in!"_
Speak to Chris Clarkie |q 36130/1 |goto 43.3,76.6
accept The Road of Glory##36125 |goto 43.3,76.6
step
talk Harrison Jones##84223
Tell him, _"Mr. Jones! Is that you?"_
Speak to Harrison Jones |q 36130/2 |goto 42.8,76.8
accept Uncovering the Artifact Fragments##36133 |goto 42.8,76.8
step
talk Commander Anne Dunworthy##84173
turnin Reporting For Duty##36130 |goto 44.59,74.01
stickystart "hordekills"
stickystart "artifacts"
step
Cross the bridge and _enter Ashran_ |goto Ashran/0 46.5,71.3 < 10
Explore the Molten Quarry |q 36127/1 |goto Ashran/0 54,69
step
Explore the Ashmaul Burial Grounds |q 36127/5 |goto Ashran/0 40.2,63.3
step
Explore the Amphitheater of Annihilation |q 36127/4 |goto Ashran/0 39.4,40.5
step
Explore the Brute's Rise |q 36127/2 |goto Ashran/0 54.7,34.6
step
Explore the Road of Glory |q 36127/3 |goto Ashran/0 51.3,38.9
|tip You must walk the entire length of the Road for this to count.
step
label "hordekills"
Kill Horde players in Ashran
Horde Players slain |q 36125/1
step
label "artifacts"
Kill creatures of Ashran and loot artifact fragments
Artifact Fragments looted |q 36133/1
step
talk Farseer Kylanda##82901
turnin Survey Ashran##36127 |goto Ashran/0 44.8,75.0
step
talk Ecilam##82966
turnin Uncovering the Artifact Fragments##36133 |goto 44.8,74.4
step
talk Chris Clarkie##82909
turnin The Road of Glory##36125 |goto 43.3,76.6
accept Into The Wilderness##36123 |goto 43.3,76.6
step
Kill a Horde player in Ashran and recover a piece of their armor
|tip Right click their corpse to "Remove insignia".
Tattered Armor Scraps |q 36123/1
step
talk Chris Clarkie##82909
turnin Into The Wilderness##36123 |goto 43.3,76.6
]])
