local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("LevelingHSHADOW") then return end
ZygorGuidesViewer.GuideMenuTier = "SHA"
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Shadowlands (50-60)\\Blood Elf Questline",{
author="support@zygorguides.com",
description="This guide will walk you through completing the Blood Elf exclusive questline.",
keywords={"9.2.5"},
patch='90205',
condition_valid=function() return raceclass("BloodElf") end,
condition_valid_msg="You must be a Blood Elf to complete this guide!",
condition_end=function() return completedq(65653) end,
startlevel=60,
},[[
step
Reach Level 60 |ding 60
|tip Use various leveling guides to accomplish this.
step
Reach Exalted Reputation with Silvermoon City |complete rep("Silvermoon City") >= Exalted
|tip Use the "Silvermoon City" reputation guide to accomplish this.
Click Here to Load the Silvermoon City Reputation Guide |loadguide "Reputations Guides\\Burning Crusade Reputations\\Silvermoon City"
step
talk Lady Liadrin##176789
accept Summons from the Matriarch##65652 |goto Oribos/0 25.45,52.16
step
Enter the building |goto Silvermoon City/0 88.75,37.56 < 7 |walk
talk Lady Liadrin##176796
|tip Inside the building.
turnin Summons from the Matriarch##65652 |goto 90.06,37.52
accept Briefing##63480 |goto 90.06,37.52
step
Watch the dialogue
|tip Inside the building.
Listen to the Briefing |q 63480/1 |goto 90.06,37.52
step
talk Lady Liadrin##176796
|tip Inside the building.
turnin Briefing##63480 |goto 90.06,37.52
accept Tranquillien Besieged##63481 |goto 90.06,37.52
step
click Portal to Tranquillien
|tip Inside the building.
Take the Portal to Tranquillien |q 63481/1 |goto 89.90,38.89
step
Enter the building |goto Ghostlands/0 48.34,31.98 < 7
talk Lady Liadrin##176826
|tip Inside the building.
turnin Tranquillien Besieged##63481 |goto 48.53,32.13
accept Death to the Scourge##63482 |goto 48.53,32.13
step
talk Archmage Aethas Sunreaver##176829
|tip Inside the building.
accept Magus Installation##63483 |goto 48.65,32.11
stickystart "Slay_15_Scourge"
step
clicknpc Protection Ward##176843
kill Vorath##176856
Arm the Southeast Ward |q 63483/1 |goto 49.35,36.74
step
clicknpc Protection Ward##176860
kill Vorath##176862
Arm the Southwest Ward |q 63483/2 |goto 45.38,34.95
step
clicknpc Protection Ward##176866
kill Vorath##176868
Arm the North Ward |q 63483/3 |goto 44.95,30.79
step
label "Slay_15_Scourge"
Kill enemies around this area
Slay #15# Scourge |q 63482/1 |goto 45.28,31.52
step
Enter the building |goto 48.33,31.97 < 7
talk Archmage Aethas Sunreaver##176829
|tip Inside the building.
turnin Magus Installation##63483 |goto 48.65,32.11
step
talk Lady Liadrin##176826
|tip Inside the building.
turnin Death to the Scourge##63482 |goto 48.53,32.12
accept A Knight's Weapon##63484 |goto 48.53,32.12
step
Run up the ramp |goto 48.75,30.91 < 10 |only if walking
click Weapons Rack##366592
collect 1 Forged Ranseur##184895 |q 63484/1 |goto 48.47,32.39
step
Enter the building |goto 48.33,31.98 < 7 |walk
talk Lady Liadrin##176826
|tip Inside the building.
turnin A Knight's Weapon##63484 |goto 48.54,32.13
accept An Honest Heart##63485 |goto 48.54,32.13
accept An Unbreakable Will##63486 |goto 48.54,32.13
step
click Portal to Orgrimmar |goto 48.90,32.50
Return to Orgrimmar |goto Orgrimmar/1 57.10,89.81 < 10 |c |noway |q 63486
step
Enter the building |goto Maldraxxus/0 47.81,46.02 < 7 |walk
talk Salandria##176914
|tip Inside the building.
turnin An Unbreakable Will##63486 |goto 46.70,45.79
step
talk Fightlord San##176915
|tip Inside the building.
accept Unfair Fight##63519 |goto 46.74,45.85
step
talk Fightlord San##176915
|tip Inside the building.
Tell him _"I'm ready to fight!"_
Speak to Fightlord San to Begin Combat |q 63519/1 |goto 46.74,45.85
step
kill 1 Frisson##176917 |q 63519/2 |goto 46.82,45.54
step
talk Fightlord San##176918 |goto 47.25,46.01
Tell him _"Take me back down."_
Return to the Theater of Pain |goto 46.40,45.33 < 20 |c |noway |q 63519
step
talk Fightlord San##176915
|tip Inside the building.
turnin Unfair Fight##63519 |goto 46.74,45.84
step
talk Salandria##176930
turnin An Honest Heart##63485 |goto Bastion/0 45.02,68.88
step
talk Vandellor##176932
accept A Fair Race##63522 |goto 45.05,68.89
step
talk Vandellor##176932
Tell him _"I'm ready to race."_
|tip Be prepared to run quickly and click Racing Bells along the path.
Speak with Vandellor to Begin the Race |q 63522/1 |goto 45.05,68.89
step
map Bastion/0
path follow smart; loop off; ants curved; dist 7
path	45.52,68.41	46.23,67.50	46.19,66.81	45.62,65.32	45.89,64.15
path	46.33,63.83	47.41,64.89	47.02,66.39
click Racing Bell+
|tip Click the large white bells along the path to progress through the race.
|tip They can be clicked while moving and each one grants a stacking speed buff.
Race Against Vandellor |goto 47.02,66.39 < 7 |c |noway |q 63522
step
map Bastion/0
path follow smart; loop off; ants curved; dist 7
path	46.18,66.79	46.18,67.52	45.52,68.41	45.06,68.65
click Racing Bell+
|tip Click the large white bells along the path to progress through the race.
|tip They can be clicked while moving and each one grants a stacking speed buff.
Run the Race Against Vandellor |q 63522/2
step
talk Vandellor##176932
|tip It may take a moment for Vandellor to return, depending on your lead.
turnin A Fair Race##63522 |goto 45.05,68.89
step
talk Salandria##176930
accept Return to the Ghostlands##63487 |goto 45.02,68.88
step
Enter the building |goto Ghostlands/0 48.33,31.98 < 7 |walk
talk Lady Liadrin##176826
|tip Inside the building.
turnin Return to the Ghostlands##63487 |goto 48.53,32.12
accept I Am the Blade of the Light##63488 |goto 48.53,32.12
step
clicknpc Thalassian Warstrider##176991
Mount the Thalassian Warstrider |q 63488/1 |goto 39.42,47.02
step
extraaction Brandish Ranseur##367787
Kill enemies around this area
Slay Scourge in the Dead Scar |q 63488/2 |goto 37.34,64.95
step
talk Lady Liadrin##176882
turnin I Am the Blade of the Light##63488 |goto 35.56,72.99
accept Justice Long Overdue##63489 |goto 35.56,72.99
step
extraaction Throw Ranseur##349270
|tip Use it the first time you kill Vorath.
kill 1 Vorath##176864 |q 63489/1 |goto 33.58,77.91
|tip Avoid dark orbs that move in straight lines.
|tip Kill any Shards of Entropy that spawn.
|tip Move out of green areas on the ground.
|tip After Vorath resurrects, kill ravens that spawn or kite him away from them.
|tip Ravens that reach Vorath will heal him.
step
talk Lady Liadrin##176882
turnin Justice Long Overdue##63489 |goto Ghostlands/0 34.20,77.40
accept Victory for the Sin'dorei##65653 |goto 34.20,77.40
step
Enter the building |goto Silvermoon City/0 88.77,37.54 < 7 |walk
talk Lady Liadrin##176796
|tip Inside the building.
turnin Victory for the Sin'dorei##65653 |goto 90.06,37.52
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Shadowlands (50-60)\\Stolen Shipments",{
author="support@zygorguides.com",
description="This guide will walk you through completing the new small quest chain in Orgrimmar.",
keywords={"9.2.5"},
patch='90205',
condition_end=function() return completedq(66323) end,
startlevel=1,
},[[
step
talk Zaa'je##187758
accept Stolen Shipments##66253 |goto Orgrimmar/1 48.54,75.90
step
use the Explosive Pie##191408
|tip Use it on the Thief.
Deter the Thief |q 66253/1 |goto 44.73,62.57
step
clicknpc Shiri's Shipment##187987
Collect the Shipment |q 66253/2 |goto 44.73,62.57
step
talk Zaa'je##187758
turnin Stolen Shipments##66253 |goto 48.54,75.90
accept Idling Pie##66323 |goto 48.54,75.90
step
use the Explosive Pie##191682
|tip Use it on the Worker.
Wake the Worker in the Valley of Strength |q 66323/3 |goto 54.38,75.83
step
use the Explosive Pie##191682
|tip Use it on the Worker.
Wake the Worker in The Drag |q 66323/2 |goto 60.92,56.26
step
use the Explosive Pie##191682
|tip Use it on the Worker.
Wake the Worker Near the Orgrimmar Embassy |q 66323/1 |goto 36.58,83.88
step
talk Zaa'je##187758
turnin Idling Pie##66323 |goto 48.54,75.90
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Shadowlands (50-60)\\Primal Storms",{
author="support@zygorguides.com",
description="This guide will walk you through completing the Primal Storms pre-patch invasion intro quests.",
keywords={"10.0.2"},
patch='100002',
condition_end=function() return completedq(66323) end,
startlevel=10,
},[[
step
accept The Dragon Isles Await##65435
|tip You will accept this quest automatically.
step
talk Ebyssian##190239
|tip On the platform above the city.
turnin The Dragon Isles Await##65435 |goto Orgrimmar/1 44.05,37.96
accept Aspectral Invitation##65437 |goto Orgrimmar/1 44.05,37.96
step
talk Ebyssian##190239
|tip On the platform above the city.
Choose _"<Listen to Ebonhorn.>"_
Speak with Ebyssian |q 65437/1 |goto 44.05,37.96
step
talk Ebyssian##190239
|tip On the platform above the city.
turnin Aspectral Invitation##65437 |goto 44.05,37.96
step
talk Scalecommander Cindrethresh##184786
|tip On the platform above the city.
accept The Dark Talons##72256 |goto 44.02,38.25
step
talk Naleidea Rivergleam##184793
|tip On the platform above the city.
accept Expeditionary Coordination##65443 |goto 44.18,37.78
step
talk Pathfinder Tacha##184796
|tip On top of the rocks above the city.
Tell her _"We need explorers for an expedition to the Dragon Isles. Will you join us?"_
Recruit the Explorers |q 65443/2 |goto 38.60,56.95
step
talk Boss Magor##184787
|tip On the ground, on the fishing dock.
Tell him _"We need artisans for an expedition to the Dragon Isles. Will you join us?"_
Recruit the Artisans |q 65443/1 |goto 57.10,54.11
step
Enter the building |goto 70.36,49.01 < 10 |walk |only if not (subzone("The Wyvern's Tail") and _G.IsIndoors())
talk Cataloger Coralie##184795
|tip Upstairs inside the building.
Tell her _"We need scholars for an expedition to the Dragon Isles. Will you join us?"_
Recruit the Scholars |q 65443/3 |goto 71.45,50.63
step
talk Kodethi##198442
|tip On top of the wall.
Tell him _"Scalecommander Cindrethresh would like you to meet her at the zeppelin tower."_
Deliver the Orders to Kodethi |q 72256/1 |goto 55.08,89.61
step
talk Naleidea Rivergleam##197279
|tip On top of the tower.
turnin Expeditionary Coordination##65443 |goto Durotar/0 55.81,12.66
turnin The Dark Talons##72256 |goto Durotar/0 55.81,12.66
step
Watch the dialogue
talk Archmage Khadgar##193450
|tip On top of the tower.
|tip He appears out of a portal.
accept Whispers on the Winds##65439 |goto 55.92,12.60
step
talk Archmage Khadgar##193450
|tip On top of the tower.
Tell him _"<Ask Khadgar what happened.>"_
Speak with Archmage Khadgar |q 65439/1 |goto 55.92,12.60
step
talk Ebyssian##190239
|tip On top of the tower.
turnin Whispers on the Winds##65439 |goto 55.84,12.75
accept Legacy of Tyr: Secrets of the Past##66586 |goto 55.84,12.75
|only if level >= 70
step
talk Naleidea Rivergleam##197279
|tip On top of the tower.
accept Chasing Storms##69944 |goto 55.81,12.66
step
talk Archmage Khadgar##193450
|tip On top of the tower.
accept A Primal Threat##69923 |goto 55.92,12.60
step
talk Storm Huntress Suhrakka##195899
|tip On top of the tower.
turnin Chasing Storms##69944 |goto 55.95,12.32
stickystart "Collect_Sigil_of_Storms"
step
Kill enemies at Primal Invasion sites
|tip Go to an active primalist invasion site on the map in Northern Barrens, Tirisfal Glades, Badlands, or Un'Goro Crater.
|tip Going to Badlands will allow you to enter the dungeon right after for the next quest if you plan to use a pre-made group.
|tip Kill enemies and collect motes of energy.
collect 10 Mote of Primal Energy##192493 |q 69923/1 |goto Badlands/0 28.47,45.68
step
label "Collect_Sigil_of_Storms"
collect Sigil of Storms##198080 |q 69992 |future
|tip Kill a Lord that spawns at the end of an invasion to collect this item.
step
Recover the Disc of Tyr's Memories |q 66586/1 |goto Uldaman Legacy of Tyr/1 40.24,26.42 |or
|tip Make your way towards Chrono-Lord Deios in the Uldaman: Legacy of Tyr dungeon.
|tip You will recover the memory in the room before reaching him.
Click Here to Load the "Uldaman: Legacy of Tyr" Dungeon Guide |confirm |loadguide "Dungeon Guides\\Dragonflight Dungeons\\Uldaman: Legacy of Tyr" |or
|only if haveq(66586) or completedq(66586)
step
kill Chrono-Lord Deios##184125 |q 66586/2 |goto Uldaman Legacy of Tyr/1 40.24,26.42 |or
_EVERYONE:_ |grouprole EVERYONE
|tip "Temporal Zone" increases haste by 50%. |grouprole EVERYONE
|tip Avoid standing in "Eternity Zones." |grouprole EVERYONE
|tip Dodge "Eternity Orbs" before they reach you. |grouprole EVERYONE
|tip "Wing Buffet" deals damage and knocks everyone back. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip The party will take heavy damage during "Rewind Timeflow" at 0 energy. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip "Sand Breath" deals heavy damage. |grouprole TANK
Click Here to Load the "Uldaman: Legacy of Tyr" Dungeon Guide |confirm |loadguide "Dungeon Guides\\Dragonflight Dungeons\\Uldaman: Legacy of Tyr" |or
|only if haveq(66586) or completedq(66586)
step
talk Storm Huntress Suhrakka##195899
|tip On top of the tower.
turnin Sigil of Storms##69992 |goto Durotar/0 55.95,12.32
step
talk Archmage Khadgar##193450
|tip On top of the tower.
turnin A Primal Threat##69923 |goto 55.92,12.60
step
talk Ebyssian##190239
|tip On top of the tower.
turnin Legacy of Tyr: Secrets of the Past##66586 |goto 55.84,12.75
|only if haveq(66586) or completedq(66586)
]])
ZygorGuidesViewer:RegisterGuide("Daily Guides\\Shadowlands (50-60)\\Primal Storms Daily Quest",{
author="support@zygorguides.com",
description="This guide will walk you through completing the Primal Storms pre-patch invasion daily quest.",
keywords={"10.0.2"},
patch='100002',
condition_end=function() return completedq(69925) end,
startlevel=10,
},[[
step
Complete the "A Primal Threat" Quest |q 69923 |future |or
|tip Use the
Click Here to Load the "Primal Storms Questline" Leveling Guide |confirm |loadguide "Leveling Guides\\Shadowlands (50-60)\\Primal Storms Questline" |or
step
label "Begin_Daily_Quest"
talk Archmage Khadgar##193450
|tip On top of the tower.
accept Calming the Storms##69925 |goto Durotar/0 55.92,12.60
step
Kill enemies at Primal Invasion sites
|tip Go to an active primalist invasion site on the map in Northern Barrens, Tirisfal Glades, Badlands, or Un'Goro Crater.
|tip Going to Badlands will allow you to enter the dungeon right after for the next quest if you plan to use a pre-made group.
|tip Kill enemies and collect motes of energy.
collect 10 Mote of Primal Energy##192493 |q 69925/1 |goto Badlands/0 28.47,45.68
step
talk Archmage Khadgar##193450
|tip On top of the tower.
turnin Calming the Storms##69925 |goto Durotar/0 55.92,12.60
step
You completed the daily quest for today
|tip This guide will reset when it can be completed again.
'|complete not completedq(69925) |next "Begin_Daily_Quest"
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Shadowlands (50-60)\\Boosted Characters\\Boosted Character Death Knight Intro",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the level 50 character boost introduction.",
condition_suggested=function() return intutorial() and level >= 50 end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass('DeathKnight') end,
condition_valid_msg="You must be a Death Knight to complete this guide!",
startlevel=50.0,
},[[
step
_On the Deck of the Airship:_
talk Warlord Zakgra##105317
Tell her _"I'm ready to begin."_
Talk to Warlord Zakgra |scenariostage 1/31011 |or |next "Start_Combat_Training"
_Or_
You Can Skip the Combat Training Scenario
|tip Use your Hearthstone now if you want to skip the Combat Training scenario.
|tip You can complete it or skip it, it doesn't matter, and is purely personal preference.
Use Your Hearthstone |goto Dazar'alor/1 48.67,70.47 < 1000 |c |noway |or |next "Leveling Guides\\Shadowlands (50-60)\\Shadowlands Intro & Main Story Questline"
step
label "Start_Combat_Training"
_On the Deck of the Airship:_
Watch the dialogue
Cast Raise Dead |scenariogoal 2/30662
step
_On the Deck of the Airship:_
Watch the dialogue
Use Outbreak on the Target Dummy |scenariogoal 3/30663
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Festering Strike ability on the Target Dummy
|tip It appears on your action bar.
Use Festering Strike on the Target Dummy |scenariogoal 4/30664
step
_On the Deck of the Airship:_
Watch the dialogue
Use Festering Strike then Scourge Strike on the Target Dummy |scenariogoal 5/30665
step
_On the Deck of the Airship:_
Watch the dialogue
Use Death Coil on the Target Dummy |scenariogoal 6/30666
|tip Use your other abilities to generate Runic Power.
step
_On the Deck of the Airship:_
Use your abilities on the Target Dummy
Use Outbreak |scenariogoal 7/30663
Use Festering Strike |scenariogoal 7/30664
Use Scourge Strike |scenariogoal 7/30665
Use Death Coil |scenariogoal 7/30666
step
_On the Deck of the Airship:_
Watch the dialogue
Use Death Strike |scenariogoal Use Death Strike##8/31703
step
_On the Deck of the Airship:_
Watch the dialogue
Use Death Grip |scenariogoal 9/30667
step
_On the Deck of the Airship:_
Watch the dialogue
Use Army of the Dead |scenariogoal 10/31018
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Soldier |scenariogoal 11/30919
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat Both Soldiers |scenariogoal 12/30919
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship! |scenariostage 13
step
_On the Rear Deck of the Airship:_
Prepare Your Character
|tip Open your Talents panel (press N) and choose your talents.
|tip Open your Spellbook (press P) and move the rest of your abilities to your action bars.
clicknpc Armored Wind Rider##112565
|tip At the back of the ship.
Choose _<Receive your summons and leave the airship.>_
accept Shadowlands: A Chilling Summons##61874
step
talk Nazgrim##171791
Tell him _"Tell me what happened."_
Watch the dialogue
Learn About Your Leaders' Fate |q 61874/1 |goto 50.37,76.55
|next "Leveling Guides\\Shadowlands (50-60)\\Shadowlands Intro & Main Story Questline"
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Shadowlands (50-60)\\Boosted Characters\\Boosted Character Demon Hunter Intro",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the level 50 character boost introduction.",
condition_suggested=function() return intutorial() and level >= 50 end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass('DemonHunter') end,
condition_valid_msg="You must be a Demon Hunter to complete this guide!",
startlevel=50.0,
},[[
step
_On the Deck of the Airship:_
talk Warlord Zakgra##105317
Tell her _"I'm ready to begin."_
Talk to Warlord Zakgra |scenariogoal 1/31011 |or |next "Start_Combat_Training"
_Or_
You Can Skip the Combat Training Scenario
|tip Use your Hearthstone now if you want to skip the Combat Training scenario.
|tip You can complete it or skip it, it doesn't matter, and is purely personal preference.
Use Your Hearthstone |goto Dazar'alor/1 48.67,70.47 < 1000 |c |noway |or |next "Leveling Guides\\Shadowlands (50-60)\\Shadowlands Intro & Main Story Questline"
step
label "Start_Combat_Training"
_On the Deck of the Airship:_
Watch the dialogue
Cast Fel Rush |scenariogoal 2/38303
step
_On the Deck of the Airship:_
Watch the dialogue
Use Demon's Bite on the Target Dummy #3# Times |scenariogoal 3/38304
step
_On the Deck of the Airship:_
Watch the dialogue
Use Chaos Strike on the Target Dummy |scenariogoal 4/38305
|tip Use Demon's Bite to build fury.
step
_On the Deck of the Airship:_
Watch the dialogue
Use Eye Beam on the Target Dummy |scenariogoal 5/38308
|tip Use Demon's Bite to build fury.
step
_On the Deck of the Airship:_
Use Demon's Bite |scenariogoal 6/38304
Use Eye Beam |scenariogoal 6/38308
Use Chaos Strike |scenariogoal 6/38305
|tip Use Demon's Bite to build fury.
step
_On the Deck of the Airship:_
kill Arcane Construct##101738+
Use Blade Dance to Destroy the Constructs |scenariogoal 7/38307
|tip Use Demon's Bite to build fury.
step
_On the Deck of the Airship:_
kill Arcane Construct##101738+
Destroy the Arcane Constructs |scenariogoal 7/29840
|tip Use Demon's Bite to build fury.
|tip Then use Blade Dance and Eye Beam to destroy the Arcane Constructs.
step
_On the Deck of the Airship:_
Watch the dialogue
Use Metamorphasis |scenariogoal 8/38306
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Soldier |scenariogoal 9/30919
|tip Use Demon's Bite to build fury.
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
Defeat Both Attackers |scenariogoal 10/30919
|tip Use Demon's Bite to build fury.
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship! |scenariogoal 11/0
|tip Use Demon's Bite to build fury.
step
_On the Rear Deck of the Airship:_
Prepare Your Character
|tip Open your Talents panel (press N) and choose your talents.
|tip Open your Spellbook (press P) and move the rest of your abilities to your action bars.
clicknpc Armored Wind Rider##112565
|tip At the back of the ship.
Choose _<Receive your summons and leave the airship.>_
accept Shadowlands: A Chilling Summons##61874
step
talk Nazgrim##171791
Tell him _"Tell me what happened."_
Watch the dialogue
Learn About Your Leaders' Fate |q 61874/1 |goto 50.37,76.55
|next "Leveling Guides\\Shadowlands (50-60)\\Shadowlands Intro & Main Story Questline"
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Shadowlands (50-60)\\Boosted Characters\\Boosted Character Druid Intro",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the level 50 character boost introduction.",
condition_suggested=function() return intutorial() and level >= 50 end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass('Druid') end,
condition_valid_msg="You must be a Druid to complete this guide!",
startlevel=50.0,
},[[
step
_On the Deck of the Airship:_
talk Warlord Zakgra##105317
Tell her _"I'm ready to begin."_
Talk to Warlord Zakgra |scenariogoal 1/31011 |or |next "Start_Combat_Training"
_Or_
You Can Skip the Combat Training Scenario
|tip Use your Hearthstone now if you want to skip the Combat Training scenario.
|tip You can complete it or skip it, it doesn't matter, and is purely personal preference.
Use Your Hearthstone |goto Dazar'alor/1 48.67,70.47 < 1000 |c |noway |or |next "Leveling Guides\\Shadowlands (50-60)\\Shadowlands Intro & Main Story Questline"
step
label "Start_Combat_Training"
_On the Deck of the Airship:_
Watch the dialogue
Cast Moonkin Form |scenariogoal 2/32840
|only if Balance
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Moonfire on the Target Dummy |scenariogoal 3/32841
|only if Balance
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Sunfire on the Target Dummy |scenariogoal 3/32842
|only if Balance
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Wrath on the Target Dummy |scenariogoal 4/32843
|only if Balance
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Starsurge on the Target Dummy |scenariogoal 5/32844
|only if Balance
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Starfire on the Target Dummy |scenariogoal 6/32845
|only if Balance
step
_On the Deck of the Airship:_
kill Arcane Construct##101738+
Destroy the Arcane Constructs |scenariogoal 6/29840
|only if Balance
step
_On the Deck of the Airship:_
Cast Moonfire |scenariogoal 7/32841
Cast Sunfire |scenariogoal 7/32842
Cast Wrath |scenariogoal 7/32843
Cast Starsurge |scenariogoal 7/32844
Cast Starfire |scenariogoal 7/32845
|only if Balance
step
_On the Deck of the Airship:_
Watch the dialogue
Use Regrowth to Heal Yourself |scenariogoal 8/30432
|only if Balance
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Entangling Roots |scenariogoal 9/32846
|only if Balance
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Soldier |scenariogoal 10/30919
|only if Balance
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat Both Soldiers |scenariogoal 11/30919
|only if Balance
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship! |scenariostage 11
|only if Balance
step
_On the Deck of the Airship:_
Watch the dialogue
Use Cat Form to Shapeshift into a Cat |scenariogoal 2/30425
|only if Feral
step
_On the Deck of the Airship:_
Watch the dialogue
Use Prowl to Enter Stealth |scenariogoal 3/30426
|only if Feral
step
_On the Deck of the Airship:_
Watch the dialogue
Use Rake on the Target Dummy |scenariogoal 4/30428
|only if Feral
step
_On the Deck of the Airship:_
Watch the dialogue
Use Shred on the Target Dummy |scenariogoal 5/30427
|only if Feral
step
_On the Deck of the Airship:_
Watch the dialogue
Use Ferocious Bite with Combo Points on the Target Dummy |scenariogoal 6/30430
|only if Feral
step
_On the Deck of the Airship:_
Watch the dialogue
Use Rip with Combo Points on the Target Dummy |scenariogoal 7/30429
|only if Feral
step
_On the Deck of the Airship:_
Use Rake |scenariogoal 8/30428
Use Shred |scenariogoal Use Shred##8/30427
Use Ferocious Bite |scenariogoal 8/30430
Use Rip |scenariogoal 8/30429
|only if Feral
step
_On the Deck of the Airship:_
Watch the dialogue
Use Dash to Move Faster in Cat Form |scenariogoal 9/30431
|only if Feral
step
_On the Deck of the Airship:_
Watch the dialogue
Use Regrowth to Heal Yourself |scenariogoal 10/30432
|only if Feral
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Soldier |scenariogoal 11/30919
|only if Feral
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat Both Soldiers |scenariostage 12
|only if Feral
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship! |scenariostage 13
|only if Feral
step
_On the Rear Deck of the Airship:_
Prepare Your Character
|tip Open your Talents panel (press N) and choose your talents.
|tip Open your Spellbook (press P) and move the rest of your abilities to your action bars.
clicknpc Armored Wind Rider##112565
|tip At the back of the ship.
Choose _<Receive your summons and leave the airship.>_
accept Shadowlands: A Chilling Summons##61874
step
talk Nazgrim##171791
Tell him _"Tell me what happened."_
Watch the dialogue
Learn About Your Leaders' Fate |q 61874/1 |goto 50.37,76.55
|next "Leveling Guides\\Shadowlands (50-60)\\Shadowlands Intro & Main Story Questline"
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Shadowlands (50-60)\\Boosted Characters\\Boosted Character Hunter Intro",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the level 50 character boost introduction.",
condition_suggested=function() return intutorial() and level >= 50 end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a Hunter to complete this guide!",
startlevel=50.0,
},[[
step
_On the Deck of the Airship:_
talk Warlord Zakgra##105317
Tell her _"I'm ready to begin."_
Talk to Warlord Zakgra |scenariogoal 1/31011 |or |next "Start_Combat_Training"
_Or_
You Can Skip the Combat Training Scenario
|tip Use your Hearthstone now if you want to skip the Combat Training scenario.
|tip You can complete it or skip it, it doesn't matter, and is purely personal preference.
Use Your Hearthstone |goto Dazar'alor/1 48.67,70.47 < 1000 |c |noway |or |next "Leveling Guides\\Shadowlands (50-60)\\Shadowlands Intro & Main Story Questline"
step
label "Start_Combat_Training"
_On the Deck of the Airship:_
Watch the dialogue
Use Call Pet |scenariogoal 2/29828
|only if BeastMastery
step
_On the Deck of the Airship:_
Watch the dialogue
Use Kill Command to Command your Pet to Attack the Target Dummy |scenariogoal 3/29829
|only if BeastMastery
step
_On the Deck of the Airship:_
Watch the dialogue
Use Barbed Shot on the Target Dummy |scenariogoal 4/40240
|only if BeastMastery
step
_On the Deck of the Airship:_
Watch the dialogue
Use Cobra Shot on the Target Dummy |scenariogoal 5/29831
|only if BeastMastery
step
_On the Deck of the Airship:_
Watch the dialogue
Use Bestial Wrath |scenariogoal 6/29832
|only if BeastMastery
step
_On the Deck of the Airship:_
Use Kill Command |scenariogoal 7/29829
Use Barbed Shot |scenariogoal 7/40240
Use Cobra Shot |scenariogoal 7/29831
Use Beastial Wrath |scenariogoal 7/29832
|only if BeastMastery
step
_On the Deck of the Airship:_
Watch the dialogue
Use Multi-Shot on the Arcane Constructs |scenariogoal 8/29839
|only if BeastMastery
step
_On the Deck of the Airship:_
kill Arcane Construct##101738+
Destroy the Arcane Constructs |scenariogoal 8/29840
|only if BeastMastery
step
_On the Deck of the Airship:_
Watch the dialogue
Use Feign Death |scenariogoal 9/29835
|only if BeastMastery
step
_On the Deck of the Airship:_
Watch the dialogue
kill Horde Grunt##112000
Defeat the Attacker |scenariogoal 10/30919
|only if BeastMastery
step
_On the Deck of the Airship:_
Watch the dialogue
kill Horde Grunt##112000+
|tip Two of them will attack you.
Defeat Both Attackers |scenariogoal 11/30919
|only if BeastMastery
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship! |scenariostage 12
|only if BeastMastery
step
_On the Deck of the Airship:_
Watch the dialogue
Use Call Pet |scenariogoal 2/29828
|only if Survival
step
_On the Deck of the Airship:_
Watch the dialogue
Use Harpoon on the Target Dummy |scenariogoal 3/34617
|only if Survival
step
_On the Deck of the Airship:_
Watch the dialogue
Use Raptor Strike on the Target Dummy |scenariogoal 4/34622
|only if Survival
step
_On the Deck of the Airship:_
Watch the dialogue
Use Kill Command on the Target Dummy |scenariogoal 5/40249
|only if Survival
step
_On the Deck of the Airship:_
Watch the dialogue
Use Serpent Sting on the Target Dummy |scenariogoal 6/40243
|only if Survival
step
_On the Deck of the Airship:_
Watch the dialogue
Use Wildfire Bomb on the Target Dummy |scenariogoal 7/40244
|only if Survival
step
_On the Deck of the Airship:_
Use Wildfire Bomb on the Target Dummy |scenariogoal 8/40244
Use Kill Command on the Target Dummy |scenariogoal 8/40249
Use Serpent Sting on the Target Dummy |scenariogoal 8/40243
Use Raptor Strike on the Target Dummy |scenariogoal 8/34622
|only if Survival
step
_On the Deck of the Airship:_
Watch the dialogue
Use Feign Death |scenariogoal 9/29835
|only if Survival
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Attacker |scenariogoal 10/30919
|only if Survival
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat Both Attackers |scenariogoal 11/30919
|only if Survival
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship! |scenariostage 12
|only if Survival
step
_On the Rear Deck of the Airship:_
Prepare Your Character
|tip Open your Talents panel (press N) and choose your talents.
|tip Open your Spellbook (press P) and move the rest of your abilities to your action bars.
clicknpc Armored Wind Rider##112565
|tip At the back of the ship.
Choose _<Receive your summons and leave the airship.>_
accept Shadowlands: A Chilling Summons##61874
step
talk Nazgrim##171791
Tell him _"Tell me what happened."_
Watch the dialogue
Learn About Your Leaders' Fate |q 61874/1 |goto 50.37,76.55
|next "Leveling Guides\\Shadowlands (50-60)\\Shadowlands Intro & Main Story Questline"
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Shadowlands (50-60)\\Boosted Characters\\Boosted Character Mage Intro",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the level 50 character boost introduction.",
condition_suggested=function() return intutorial() and level >= 50 end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass('Mage') end,
condition_valid_msg="You must be a Mage to complete this guide!",
startlevel=10.0,
},[[
step
_On the Deck of the Airship:_
talk Warlord Zakgra##105317
Tell her _"I'm ready to begin."_
Talk to Warlord Zakgra |scenariogoal 1/31011 |or |next "Start_Combat_Training"
_Or_
You Can Skip the Combat Training Scenario
|tip Use your Hearthstone now if you want to skip the Combat Training scenario.
|tip You can complete it or skip it, it doesn't matter, and is purely personal preference.
Use Your Hearthstone |goto Dazar'alor/1 48.67,70.47 < 1000 |c |noway |or |next "Leveling Guides\\Shadowlands (50-60)\\Shadowlands Intro & Main Story Questline"
step
label "Start_Combat_Training"
_On the Deck of the Airship:_
Watch the dialogue
Cast Summon Water Elemental |scenariogoal 2/29591
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Frostbolt on the Target Dummy |scenariogoal 3/30560
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Ice Lance on the Target Dummy |scenariogoal 4/30561
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Ice Lance with Fingers of Frost |scenariogoal 5/30614
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Flurry while under the Effects of Brainfreeze |scenariogoal 6/34628
step
_On the Deck of the Airship:_
Cast Frostbolt |scenariogoal 7/30560
Cast Ice Lance |scenariogoal 7/30561
Cast Flurry |scenariogoal 7/34687
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Blink |scenariogoal 8/29248
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Frost Nova to Freeze the Enemy |scenariogoal 9/30623
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Blizzard on the Arcane Constructs |scenariogoal 10/30622
step
_On the Deck of the Airship:_
kill Arcane Construct##101738+
Destroy the Arcane Constructs |scenariogoal 10/29840
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Soldier |scenariogoal 11/30919
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat Both Soldiers |scenariogoal 12/30919
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship! |scenariostage 13
step
_On the Rear Deck of the Airship:_
Prepare Your Character
|tip Open your Talents panel (press N) and choose your talents.
|tip Open your Spellbook (press P) and move the rest of your abilities to your action bars.
clicknpc Armored Wind Rider##112565
|tip At the back of the ship.
Choose _<Receive your summons and leave the airship.>_
accept Shadowlands: A Chilling Summons##61874
step
talk Nazgrim##171791
Tell him _"Tell me what happened."_
Watch the dialogue
Learn About Your Leaders' Fate |q 61874/1 |goto 50.37,76.55
|next "Leveling Guides\\Shadowlands (50-60)\\Shadowlands Intro & Main Story Questline"
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Shadowlands (50-60)\\Boosted Characters\\Boosted Character Monk Intro",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the level 50 character boost introduction.",
condition_suggested=function() return intutorial() and level >= 50 end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass('Monk') end,
condition_valid_msg="You must be a Monk to complete this guide!",
startlevel=50.0,
},[[
step
_On the Deck of the Airship:_
talk Warlord Zakgra##105317
Tell her _"I'm ready to begin."_
Talk to Warlord Zakgra |scenariogoal 1/31011 |or |next "Start_Combat_Training"
_Or_
You Can Skip the Combat Training Scenario
|tip Use your Hearthstone now if you want to skip the Combat Training scenario.
|tip You can complete it or skip it, it doesn't matter, and is purely personal preference.
Use Your Hearthstone |goto Dazar'alor/1 48.67,70.47 < 1000 |c |noway |or |next "Leveling Guides\\Shadowlands (50-60)\\Shadowlands Intro & Main Story Questline"
step
label "Start_Combat_Training"
_On the Deck of the Airship:_
Watch the dialogue
Use Tiger Palm on the Target Dummy |scenariogoal 2/30392
step
_On the Deck of the Airship:_
Watch the dialogue
Use Rising Sun Kick on the Target Dummy |scenariogoal 3/30393
step
_On the Deck of the Airship:_
Watch the dialogue
Use Blackout Kick on the Target Dummy |scenariogoal 4/30395
step
_On the Deck of the Airship:_
Watch the dialogue
Use Fists of Fury on the Target Dummy |scenariogoal 5/30396
step
_On the Deck of the Airship:_
Use Tiger Palm |scenariogoal 6/30392
Use Rising Sun Kick |scenariogoal 6/30393
Use Blackout Kick |scenariogoal 6/30395
Use Fists of Fury |scenariogoal 6/30396
step
_On the Deck of the Airship:_
Watch the dialogue
Use Roll |scenariogoal 7/30397
step
_On the Deck of the Airship:_
Watch the dialogue
Use Vivify to Heal Yourself |scenariogoal 8/40572
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Soldier |scenariogoal 9/30919
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat Both Soldiers |scenariogoal 10/30919
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship! |scenariostage 11
step
_On the Rear Deck of the Airship:_
Prepare Your Character
|tip Open your Talents panel (press N) and choose your talents.
|tip Open your Spellbook (press P) and move the rest of your abilities to your action bars.
clicknpc Armored Wind Rider##112565
|tip At the back of the ship.
Choose _<Receive your summons and leave the airship.>_
accept Shadowlands: A Chilling Summons##61874
step
talk Nazgrim##171791
Tell him _"Tell me what happened."_
Watch the dialogue
Learn About Your Leaders' Fate |q 61874/1 |goto 50.37,76.55
|next "Leveling Guides\\Shadowlands (50-60)\\Shadowlands Intro & Main Story Questline"
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Shadowlands (50-60)\\Boosted Characters\\Boosted Character Paladin Intro",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the level 50 character boost introduction.",
condition_suggested=function() return intutorial() and level >= 50 end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass('Paladin') end,
condition_valid_msg="You must be a Paladin to complete this guide!",
startlevel=50.0,
},[[
step
_On the Deck of the Airship:_
talk Warlord Zakgra##105317
Tell her _"I'm ready to begin."_
Talk to Warlord Zakgra |scenariogoal 1/31011 |or |next "Start_Combat_Training"
_Or_
You Can Skip the Combat Training Scenario
|tip Use your Hearthstone now if you want to skip the Combat Training scenario.
|tip You can complete it or skip it, it doesn't matter, and is purely personal preference.
Use Your Hearthstone |goto Dazar'alor/1 48.67,70.47 < 1000 |c |noway |or |next "Leveling Guides\\Shadowlands (50-60)\\Shadowlands Intro & Main Story Questline"
step
label "Start_Combat_Training"
_On the Deck of the Airship:_
Watch the dialogue
Use Judgement on the Target Dummy |scenariogoal 2/29793
step
_On the Deck of the Airship:_
Watch the dialogue
Use Blade of Justice on the Target Dummy |scenariogoal 3/29773
step
_On the Deck of the Airship:_
Watch the dialogue
Use Crusader Strike on the Target Dummy |scenariogoal 4/29769
step
_On the Deck of the Airship:_
Watch the dialogue
Use Templar's Verdict on the Target Dummy |scenariogoal 5/29770
step
_On the Deck of the Airship:_
Use Judgement |scenariogoal 6/29793
Use Blade of Justice |scenariogoal 6/29773
Use Crusader Strike |scenariogoal 6/29769
Use Templar's Verdict |scenariogoal 6/29770
step
_On the Deck of the Airship:_
Watch the dialogue
Earn 3 Holy Power and then Use Divine Storm |scenariogoal 7/32067
step
_On the Deck of the Airship:_
kill Arcane Construct##101738+
Destroy the Arcane Constructs |scenariogoal 7/29840
step
_On the Deck of the Airship:_
Watch the dialogue
Use Divine Shield |scenariogoal 8/29771
step
_On the Deck of the Airship:_
Watch the dialogue
Allow Fireball to be Cast on You |scenariogoal 8/29797
step
_On the Deck of the Airship:_
Watch the dialogue
Use Flash of Light to Heal Yourself |scenariogoal 9/29772
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Soldier |scenariogoal 10/30919
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat Both Soldiers |scenariogoal 11/30919
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship! |scenariostage 12
step
_On the Rear Deck of the Airship:_
Prepare Your Character
|tip Open your Talents panel (press N) and choose your talents.
|tip Open your Spellbook (press P) and move the rest of your abilities to your action bars.
clicknpc Armored Wind Rider##112565
|tip At the back of the ship.
Choose _<Receive your summons and leave the airship.>_
accept Shadowlands: A Chilling Summons##61874
step
talk Nazgrim##171791
Tell him _"Tell me what happened."_
Watch the dialogue
Learn About Your Leaders' Fate |q 61874/1 |goto 50.37,76.55
|next "Leveling Guides\\Shadowlands (50-60)\\Shadowlands Intro & Main Story Questline"
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Shadowlands (50-60)\\Boosted Characters\\Boosted Character Priest Intro",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the level 50 character boost introduction.",
condition_suggested=function() return intutorial() and level >= 50 end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass('Priest') end,
condition_valid_msg="You must be a Priest to complete this guide!",
startlevel=50.0,
},[[
step
_On the Deck of the Airship:_
talk Warlord Zakgra##105317
Tell her _"I'm ready to begin."_
Talk to Warlord Zakgra |scenariogoal 1/31011 |or |next "Start_Combat_Training"
_Or_
You Can Skip the Combat Training Scenario
|tip Use your Hearthstone now if you want to skip the Combat Training scenario.
|tip You can complete it or skip it, it doesn't matter, and is purely personal preference.
Use Your Hearthstone |goto Dazar'alor/1 48.67,70.47 < 1000 |c |noway |or |next "Leveling Guides\\Shadowlands (50-60)\\Shadowlands Intro & Main Story Questline"
step
label "Start_Combat_Training"
_On the Deck of the Airship:_
Watch the dialogue
Cast Shadow Word: Pain on the Target Dummy |scenariogoal 2/30502
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Penance on the Target Dummy |scenariogoal 3/30503
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Smite on the Target Dummy |scenariogoal 4/30504
step
_On the Deck of the Airship:_
Cast Shadow Word: Pain |scenariogoal 5/30502
Cast Penance |scenariogoal 5/30503
Cast Smite |scenariogoal 5/30504
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Psychic Scream to Fear the Enemies Around You |scenariogoal 6/30520
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Power Word: Shield on Yourself |scenariogoal 7/34732
step
_On the Deck of the Airship:_
Watch the dialogue
Allow Fireball to be Cast on You |scenariogoal 7/29797
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Power Word: Shield on Yourself |scenariogoal 8/34732
step
_On the Deck of the Airship:_
Heal Yourself Through Atonement |scenariogoal 8/40714
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Soldier |scenariogoal 9/30919
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat Both Soldiers |scenariogoal 10/30919
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship! |scenariostage 11
step
_On the Rear Deck of the Airship:_
Prepare Your Character
|tip Open your Talents panel (press N) and choose your talents.
|tip Open your Spellbook (press P) and move the rest of your abilities to your action bars.
clicknpc Armored Wind Rider##112565
|tip At the back of the ship.
Choose _<Receive your summons and leave the airship.>_
accept Shadowlands: A Chilling Summons##61874
step
talk Nazgrim##171791
Tell him _"Tell me what happened."_
Watch the dialogue
Learn About Your Leaders' Fate |q 61874/1 |goto 50.37,76.55
|next "Leveling Guides\\Shadowlands (50-60)\\Shadowlands Intro & Main Story Questline"
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Shadowlands (50-60)\\Boosted Characters\\Boosted Character Rogue Intro",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the level 50 character boost introduction.",
condition_suggested=function() return intutorial() and level >= 50 end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass('Rogue') end,
condition_valid_msg="You must be a Rogue to complete this guide!",
startlevel=50.0,
},[[
step
_On the Deck of the Airship:_
talk Warlord Zakgra##105317
Tell her _"I'm ready to begin."_
Talk to Warlord Zakgra |scenariogoal 1/31011 |or |next "Start_Combat_Training"
_Or_
You Can Skip the Combat Training Scenario
|tip Use your Hearthstone now if you want to skip the Combat Training scenario.
|tip You can complete it or skip it, it doesn't matter, and is purely personal preference.
Use Your Hearthstone |goto Dazar'alor/1 48.67,70.47 < 1000 |c |noway |or |next "Leveling Guides\\Shadowlands (50-60)\\Shadowlands Intro & Main Story Questline"
step
label "Start_Combat_Training"
_On the Deck of the Airship:_
Watch the dialogue
Use Deadly Poison |scenariogoal 2/30644
step
_On the Deck of the Airship:_
Watch the dialogue
Use Stealth |scenariogoal 3/29617
step
_On the Deck of the Airship:_
Watch the dialogue
Use Garrote on the Target Dummy |scenariogoal 4/30645
step
_On the Deck of the Airship:_
Watch the dialogue
Use Mutilate on the Target Dummy |scenariogoal 5/30646
step
_On the Deck of the Airship:_
Watch the dialogue
Use Rupture on the Target Dummy |scenariogoal 6/30647
step
_On the Deck of the Airship:_
Watch the dialogue
Use Envenom on the Target Dummy |scenariogoal 7/30648
step
_On the Deck of the Airship:_
Use Garrote |scenariogoal 8/30645
Use Mutilate |scenariogoal 8/30646
Use Rupture |scenariogoal 8/30647
Use Envenom |scenariogoal 8/30648
step
_On the Deck of the Airship:_
Watch the dialogue
Use Vanish |scenariogoal 9/29646
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Soldier |scenariogoal 10/30919
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat Both Soldiers |scenariogoal 11/30919
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship! |scenariostage 12
step
_On the Rear Deck of the Airship:_
Prepare Your Character
|tip Open your Talents panel (press N) and choose your talents.
|tip Open your Spellbook (press P) and move the rest of your abilities to your action bars.
clicknpc Armored Wind Rider##112565
|tip At the back of the ship.
Choose _<Receive your summons and leave the airship.>_
accept Shadowlands: A Chilling Summons##61874
step
talk Nazgrim##171791
Tell him _"Tell me what happened."_
Watch the dialogue
Learn About Your Leaders' Fate |q 61874/1 |goto 50.37,76.55
|next "Leveling Guides\\Shadowlands (50-60)\\Shadowlands Intro & Main Story Questline"
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Shadowlands (50-60)\\Boosted Characters\\Boosted Character Shaman Intro",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the level 50 character boost introduction.",
condition_suggested=function() return intutorial() and level >= 50 end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass('Shaman') end,
condition_valid_msg="You must be a Shaman to complete this guide!",
startlevel=10.0,
},[[
step
_On the Deck of the Airship:_
talk Warlord Zakgra##105317
Tell her _"I'm ready to begin."_
Talk to Warlord Zakgra |scenariogoal 1/31011 |or |next "Start_Combat_Training"
_Or_
You Can Skip the Combat Training Scenario
|tip Use your Hearthstone now if you want to skip the Combat Training scenario.
|tip You can complete it or skip it, it doesn't matter, and is purely personal preference.
Use Your Hearthstone |goto Dazar'alor/1 48.67,70.47 < 1000 |c |noway |or |next "Leveling Guides\\Shadowlands (50-60)\\Shadowlands Intro & Main Story Questline"
step
label "Start_Combat_Training"
_On the Deck of the Airship:_
Watch the dialogue
Cast Flame Shock on the Target Dummy |scenariogoal 2/29959
|only if Elemental
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Lava Burst on the Target Dummy |scenariogoal 3/29960
|only if Elemental
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Lightning Bolt on the Target Dummy |scenariogoal 4/29961
|only if Elemental
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Earth Shock on the Target Dummy |scenariogoal 5/29962
|only if Elemental
step
_On the Deck of the Airship:_
Cast Flame Shock |scenariogoal 6/29959
Cast Lava Burst |scenariogoal 6/29960
Cast Lightning Bolt |scenariogoal 6/29961
Cast Earth Shock |scenariogoal 6/29962
|only if Elemental
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Hex on the Soldier |scenariogoal 7/29963
|only if Elemental
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Chain Lightning on the Arcane Constructs |scenariogoal 8/29964
|only if Elemental
step
_On the Deck of the Airship:_
kill Arcane Construct##101738+
Destroy the Arcane Constructs |scenariogoal 8/29840
|only if Elemental
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Healing Surge to Heal Yourself |scenariogoal 9/32737
|only if Elemental
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Fire Elemental |scenariogoal 10/31313
|only if Elemental
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Soldier |scenariogoal 11/30919
|only if Elemental
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat Both Attackers |scenariogoal 12/30919
|only if Elemental
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship! |scenariostage 13
|only if Elemental
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Flametongue on the Target Dummy |scenariogoal 2/32847
|only if Enhancement
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Rockbiter on the Target Dummy |scenariogoal 3/32848
|only if Enhancement
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Lava Lash on the Target Dummy |scenariogoal 4/32849
|only if Enhancement
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Stormstrike on the Target Dummy |scenariogoal 5/32850
|only if Enhancement
step
_On the Deck of the Airship:_
Cast Lava Lash |scenariogoal 6/32849
Cast Flametongue |scenariogoal 6/32847
Cast Rockbiter |scenariogoal 6/32848
Cast Stormstrike |scenariogoal 6/32850
|only if Enhancement
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Hex on the Attacker |scenariogoal 7/29963
|only if Enhancement
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Healing Surge to Heal Yourself |scenariogoal 8/29965
|only if Enhancement
step
_On the Deck of the Airship:_
Watch the dialogue
Use Feral Spirit |scenariogoal 9/32851
|only if Enhancement
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Soldier |scenariogoal 10/30919
|only if Enhancement
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat Both Attackers |scenariogoal 11/30919
|only if Enhancement
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship! |scenariostage 13
|only if Enhancement
step
_On the Rear Deck of the Airship:_
Prepare Your Character
|tip Open your Talents panel (press N) and choose your talents.
|tip Open your Spellbook (press P) and move the rest of your abilities to your action bars.
clicknpc Armored Wind Rider##112565
|tip At the back of the ship.
Choose _<Receive your summons and leave the airship.>_
accept Shadowlands: A Chilling Summons##61874
step
talk Nazgrim##171791
Tell him _"Tell me what happened."_
Watch the dialogue
Learn About Your Leaders' Fate |q 61874/1 |goto 50.37,76.55
|next "Leveling Guides\\Shadowlands (50-60)\\Shadowlands Intro & Main Story Questline"
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Shadowlands (50-60)\\Boosted Characters\\Boosted Character Warlock Intro",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the level 50 character boost introduction.",
condition_suggested=function() return intutorial() and level >= 50 end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass('Warlock') end,
condition_valid_msg="You must be a Warlock to complete this guide!",
startlevel=10.0,
},[[
step
_On the Deck of the Airship:_
talk Warlord Zakgra##105317
Tell her _"I'm ready to begin."_
Talk to Warlord Zakgra |scenariostage 1 |or |next "Start_Combat_Training"
_Or_
You Can Skip the Combat Training Scenario
|tip Use your Hearthstone now if you want to skip the Combat Training scenario.
|tip You can complete it or skip it, it doesn't matter, and is purely personal preference.
Use Your Hearthstone |goto Dazar'alor/1 48.67,70.47 < 1000 |c |noway |or |next "Leveling Guides\\Shadowlands (50-60)\\Shadowlands Intro & Main Story Questline"
step
label "Start_Combat_Training"
_On the Deck of the Airship:_
Watch the dialogue
Cast Summon Voidwalker |scenariogoal 2/29810
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Agony on the Target Dummy |scenariogoal 3/29811
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Corruption on the Target Dummy |scenariogoal 4/29812
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Shadow Bolt on the Target Dummy |scenariogoal 5/40241
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Unstable Affliction on the Target Dummy |scenariogoal 6/29814
step
_On the Deck of the Airship:_
Cast Agony |scenariogoal 7/29811
Cast Corruption |scenariogoal 7/29812
Cast Unstable Affliction |scenariogoal 7/29814
Cast Shadow Bolt |scenariogoal 7/40241
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Drain Life on the Target Dummy |scenariogoal 8/40242
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Fear on the Soldier |scenariogoal 9/29815
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Attacker |scenariogoal 10/30919
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat Both Attackers |scenariogoal 11/30919
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship! |scenariostage 12
step
_On the Rear Deck of the Airship:_
Prepare Your Character
|tip Open your Talents panel (press N) and choose your talents.
|tip Open your Spellbook (press P) and move the rest of your abilities to your action bars.
clicknpc Armored Wind Rider##112565
|tip At the back of the ship.
Choose _<Receive your summons and leave the airship.>_
accept Shadowlands: A Chilling Summons##61874
step
talk Nazgrim##171791
Tell him _"Tell me what happened."_
Watch the dialogue
Learn About Your Leaders' Fate |q 61874/1 |goto 50.37,76.55
|next "Leveling Guides\\Shadowlands (50-60)\\Shadowlands Intro & Main Story Questline"
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Shadowlands (50-60)\\Boosted Characters\\Boosted Character Warrior Intro",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the level 50 character boost introduction.",
condition_suggested=function() return intutorial() and level >= 50 end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass('Warrior') end,
condition_valid_msg="You must be a Warrior to complete this guide!",
startlevel=10.0,
},[[
step
_On the Deck of the Airship:_
talk Warlord Zakgra##105317
Tell her _"I'm ready to begin."_
Talk to Warlord Zakgra |scenariostage 1 |or |next "Start_Combat_Training"
_Or_
You Can Skip the Combat Training Scenario
|tip Use your Hearthstone now if you want to skip the Combat Training scenario.
|tip You can complete it or skip it, it doesn't matter, and is purely personal preference.
Use Your Hearthstone |goto Dazar'alor/1 48.67,70.47 < 1000 |c |noway |or |next "Leveling Guides\\Shadowlands (50-60)\\Shadowlands Intro & Main Story Questline"
step
label "Start_Combat_Training"
_On the Deck of the Airship:_
Watch the dialogue
Use Charge on the Target Dummy |scenariogoal 2/30115
step
_On the Deck of the Airship:_
Watch the dialogue
Use Mortal Strike on the Target Dummy |scenariogoal 3/30116
step
_On the Deck of the Airship:_
Watch the dialogue
Use Slam on the Target Dummy |scenariogoal 4/30117
step
_On the Deck of the Airship:_
Watch the dialogue
Use Overpower on the Target Dummy |scenariogoal 5/40181
step
_On the Deck of the Airship:_
Use Overpower |scenariogoal 6/40181
Use Mortal Strike |scenariogoal 6/30116
Use Slam |scenariogoal 6/30117
step
_On the Deck of the Airship:_
Watch the dialogue
kill Arcane Construct##101738+
Kill an Arcane Construct and then Use Victory Rush on the Others |scenariogoal 7/30119
step
_On the Deck of the Airship:_
Watch the dialogue
Use Whirlwind on the Arcane Constructs |scenariogoal 8/30120
step
_On the Deck of the Airship:_
kill Arcane Construct##101738+
Destroy the Arcane Constructs |scenariogoal 8/29840
step
_On the Deck of the Airship:_
Watch the dialogue
Use Heroic Leap |scenariogoal 9/30121
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Soldier |scenariogoal 10/30919
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat Both Soldiers |scenariogoal 11/30919
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship! |scenariostage 12
step
_On the Rear Deck of the Airship:_
Prepare Your Character
|tip Open your Talents panel (press N) and choose your talents.
|tip Open your Spellbook (press P) and move the rest of your abilities to your action bars.
clicknpc Armored Wind Rider##112565
|tip At the back of the ship.
Choose _<Receive your summons and leave the airship.>_
accept Shadowlands: A Chilling Summons##61874
step
talk Nazgrim##171791
Tell him _"Tell me what happened."_
Watch the dialogue
Learn About Your Leaders' Fate |q 61874/1 |goto 50.37,76.55
|next "Leveling Guides\\Shadowlands (50-60)\\Shadowlands Intro & Main Story Questline"
]])
