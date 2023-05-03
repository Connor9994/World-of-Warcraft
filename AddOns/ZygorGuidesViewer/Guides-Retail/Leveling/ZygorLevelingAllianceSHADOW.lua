local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("LevelingASHADOW") then return end
ZygorGuidesViewer.GuideMenuTier = "SHA"
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Shadowlands (50-60)\\Heritage Armor\\Dark Iron Dwarf Heritage Armor",{
author="support@zygorguides.com",
description="This guide will walk you through completing the questline to unlock the Dark Iron Dwarf Heritage Armor.",
keywords={"9.2.5"},
patch='90205',
condition_valid=function() return raceclass('DarkIronDwarf') end,
condition_valid_msg="You must be a Dark Iron Dwarf to complete this guide!",
condition_end=function() return completedq(65564) end,
startlevel=50,
},[[
step
Reach Level 50 without Boosting |achieve 13076
|tip Use various leveling guides to accomplish this.
|tip You must level without boosting to get the "Heritage of the Dark Iron" achievement.
step
talk Anvil-Thane Thurgaden##144154
accept The Anvil-Thane's Designs##63494 |goto Shadowforge City/0 57.22,31.97
step
Run up the ramp |goto 62.15,23.27 < 15 |only if walking
Run up the ramp |goto 66.69,26.68 < 15 |only if walking
Follow the path |goto 63.59,30.91 < 15 |only if walking
Enter the building |goto 53.54,33.84 < 7 |only if walking
talk Strongarm Jarden##176828
turnin The Anvil-Thane's Designs##63494 |goto 51.79,33.15
accept Brawl or Brew##63498 |goto 51.79,33.15
step
talk Strongarm Jarden##176828
Choose _"Brawl."_
|tip She will attack you.
Choose Brawl or Brew |q 63498/1 |goto 51.79,33.15
step
kill Strongarm Jarden##176828 |q 63498/2 |goto 51.84,33.04
|tip Defeat her in combat.
step
talk Strongarm Jarden##176828
turnin Brawl or Brew##63498 |goto 51.83,33.07
step
accept It's Called Borrowing##63501 |goto 51.83,33.07
|tip You will accept this quest automatically.
step
Jump down here |goto 49.76,33.64 < 7 |walk
kill Boiling Flamebringer##176995
collect 1 Boiling Flamecore##184916 |q 63501/2 |goto 48.78,29.36
step
Run up the ramp |goto 51.43,37.46 < 7 |walk
click Darkforged Ingot##367037
collect 1 Darkforged Ingot##184915 |q 63501/1 |goto Shadowforge City/0 54.21,26.93
step
click Darkforged Ingot##367037
collect 2 Darkforged Ingot##184915 |q 63501/1 |goto 59.76,28.59
step
click Darkforged Ingot##367037
collect 3 Darkforged Ingot##184915 |q 63501/1 |goto 66.43,30.56
step
click Darkforged Ingot##367037
collect 4 Darkforged Ingot##184915 |q 63501/1 |goto 67.59,28.38
step
click Darkforged Ingot##367037
collect 5 Darkforged Ingot##184915 |q 63501/1 |goto 63.79,20.30
step
talk Kasea Angerforge##144119
|tip She walks around this area.
Tell her _"I need Thurgaden's Flamepoint Engraver."_
Retreive the Flamepoint Engraver |q 63501/3 |goto 47.33,47.65
step
talk Anvil-Thane Thurgaden##144154
turnin It's Called Borrowing##63501 |goto 57.22,31.97
accept Weapons o' the Dark Iron##63502 |goto 57.22,31.97
step
talk Anvil-Thane Thurgaden##144154
Tell him _"I am ready."_
Speak to Anvil-Thane Thurgaden |q 63502/1 |goto 57.22,31.97
step
click Darkforged Ingot
Place the Darkforged Ingot |q 63502/2 |goto 56.69,31.32
step
Watch the dialogue
Complete the Forging |q 63502/3 |goto 56.69,31.32
step
talk Anvil-Thane Thurgaden##144154
turnin Weapons o' the Dark Iron##63502 |goto 57.23,31.97
accept Delivery for Kasea##65563 |goto 57.23,31.97
step
talk Kasea Angerforge##144119
|tip She walks around this area.
turnin Delivery for Kasea##65563 |goto 47.33,47.65
accept Good Fiery Boy##65564 |goto 47.33,47.65
step
click Blackrock Ball
|tip Throw it a short distance on the ground.
Play Fetch |q 65564/2 |goto 47.27,47.86 |count 1
step
click Blackrock Ball
|tip Throw it a short distance on the ground.
Play Fetch Again |q 65564/2 |goto 47.27,47.86 |count 2
step
clicknpc Grimhowl##185305
Pet Grimhowl |q 65564/1 |goto 47.13,48.12
step
click Crate of Provisions##375827
collect 1 Charred Steak##190606 |goto 46.12,50.09 |q 65564
step
click Crate of Provisions##375827
collect 2 Charred Steak##190606 |goto 47.25,42.39 |q 65564
step
click Crate of Provisions##375827
collect 3 Charred Steak##190606 |goto 47.70,42.30 |q 65564
step
click Crate of Provisions##375827
collect 4 Charred Steak##190606 |goto 50.46,43.21 |q 65564
step
use the Charred Steak##190606
Feed Grimhowl #4# Times |q 65564/3 |goto 47.15,48.09
step
extraaction Apply Blackrock Barding##367727
|tip Apply it to Grimhowl.
Apply the Blackrock Barding |q 65564/4 |goto 47.14,48.09
step
talk Kasea Angerforge##144119
|tip She walks around this area.
turnin Good Fiery Boy##65564 |goto 47.33,47.65
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Shadowlands (50-60)\\Missing Merchandise",{
author="support@zygorguides.com",
description="This guide will walk you through completing the new small quest chain in Stormwind City.",
keywords={"9.2.5"},
patch='90205',
condition_end=function() return completedq(66420) end,
startlevel=1,
},[[
step
talk Onnesa##188342
accept Missing Merchandise##66390 |goto Stormwind City/0 51.53,70.40
step
use the Briny Seawater##191854
|tip Use it on Milbert.
Deter the Thief |q 66390/1 |goto 28.60,38.17
step
clicknpc Seabraid Merchandise##188392
Collect the Shipment |q 66390/2 |goto 28.61,38.11
step
talk Onnesa##188342
turnin Missing Merchandise##66390 |goto 51.53,70.40
accept Happy Hour##66420 |goto 51.53,70.40
step
use Bottle of Briny Seawater##191865
|tip Use it on the Worker.
Splash the Worker in the Trade District |q 66420/1 |goto 65.39,68.22
step
use Bottle of Briny Seawater##191865
|tip Use it on the Worker.
Splash the Worker in Old Town |q 66420/3 |goto 74.05,63.59
step
Enter the building |goto 64.25,32.62 < 7 |walk
use Bottle of Briny Seawater##191865
|tip Use it on the Worker inside the building.
Splash the Worker in the Dwarven District |q 66420/2 |goto 64.81,33.29
step
talk Onnesa##188342
turnin Happy Hour##66420 |goto 51.53,70.40
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Shadowlands (50-60)\\Primal Storms Questline",{
author="support@zygorguides.com",
description="This guide will walk you through completing the Primal Storms pre-patch invasion intro quests.",
keywords={"10.0.2"},
patch='100002',
condition_end=function() return completedq(70048) end,
startlevel=10,
},[[
step
accept The Dragon Isles Await##65436
|tip You will accept this quest automatically.
step
talk Wrathion##189569
|tip Standing in an open window on the outer wall of Stormwind Keep.
turnin The Dragon Isles Await##65436 |goto Stormwind City/0 79.80,27.02
accept Aspectral Invitation##66577 |goto Stormwind City/0 79.80,27.02
step
talk Wrathion##189569
|tip Inside the building.
Choose _<Listen to Wrathion and Turalyon.>_
Speak with Wrathion |q 66577/1 |goto 79.80,27.02
step
talk Wrathion##189569
|tip Inside the building.
turnin Aspectral Invitation##66577 |goto 79.80,27.02
step
talk Scalecommander Azurathel##189603
|tip Inside the building.
accept The Obsidian Warders##72240 |goto 79.94,26.95
step
talk Toddy Whiskers##189602
|tip Inside the building.
accept Expeditionary Coordination##66589 |goto 79.72,27.33
step
talk Thaelin Darkanvil##189767
Tell him _"We need artisans for an expedition to the Dragon Isles. Will you join us?"_
Recruit the Artisans |q 66589/1 |goto 64.14,37.22
step
talk Cataloger Wulferd##189765
Tell him _"We need scholars for an expedition to the Dragon Isles. Will you join us?"_
Recruit the Scholars |q 66589/3 |goto 63.35,69.90
step
talk Dervishian##198401
|tip On top of the building.
Tell her _"Scalecommander Azurathel would like you to meet him at the docks."_
Deliver the Orders to Dervishian |q 72240/1 |goto 50.91,67.39
step
talk Pathfinder Jeb##189763
Tell him _"We need explorers for an expedition to the Dragon Isles. Will you join us?"_
Recruit the Explorers |q 66589/2 |goto 38.31,45.55
step
talk Toddy Whiskers##189077
turnin Expeditionary Coordination##66589 |goto 22.71,55.66
turnin The Obsidian Warders##72240 |goto 22.71,55.66
step
Watch the dialogue
talk Archmage Khadgar##193450
|tip He appears out of a portal.
accept Whispers on the Winds##66596 |goto 23.01,56.14
step
talk Archmage Khadgar##193450
Choose _<Ask Khadgar what happened.>_
Speak with Archmage Khadgar |q 66596/1 |goto 23.01,56.14
step
talk Wrathion##189569
turnin Whispers on the Winds##66596 |goto 22.94,55.99
step
talk Toddy Whiskers##189077
accept Chasing Storms##70050 |goto 22.72,55.66
step
talk Wrathion##189569
accept Legacy of Tyr: Secrets of the Past##66458 |goto 22.94,56.00
|only if level >= 70
step
talk Archmage Khadgar##193450
accept A Primal Threat##70048 |goto 23.00,56.15
step
talk Storm Hunter William##195912
turnin Chasing Storms##70050 |goto 24.99,53.07
stickystart "Collect_Sigil_of_Storms"
step
Kill enemies at Primal Invasion sites
|tip Go to an active primalist invasion site on the map in Northern Barrens, Tirisfal Glades, Badlands, or Un'Goro Crater.
|tip Going to Badlands will allow you to enter the dungeon right after for the next quest if you plan to use a pre-made group.
|tip Kill enemies and collect motes of energy.
collect 10 Mote of Primal Energy##192493 |q 70048/1 |goto Badlands/0 28.47,45.68
step
label "Collect_Sigil_of_Storms"
collect Sigil of Storms##198352 |q 70055 |future
|tip Kill a Lord that spawns at the end of an invasion to collect this item.
step
Recover the Disc of Tyr's Memories |q 66458/1 |goto Uldaman Legacy of Tyr/1 40.24,26.42 |or
|tip Make your way towards Chrono-Lord Deios in the Uldaman: Legacy of Tyr dungeon.
|tip You will recover the memory in the room before reaching him.
Click Here to Load the "Uldaman: Legacy of Tyr" Dungeon Guide |confirm |loadguide "Dungeon Guides\\Dragonflight Dungeons\\Uldaman: Legacy of Tyr" |or
|only if haveq(66458) or completedq(66458)
step
kill Chrono-Lord Deios##184125 |q 66458/2 |goto Uldaman Legacy of Tyr/1 40.24,26.42 |or
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
|only if haveq(66458) or completedq(66458)
step
talk Storm Hunter William##195912
turnin Sigil of Storms##70055 |goto Stormwind City/0 24.99,53.07
step
talk Wrathion##189569
turnin Legacy of Tyr: Secrets of the Past##66458 |goto 22.94,56.00
|only if haveq(66458) or completedq(66458)
step
talk Archmage Khadgar##193450
turnin A Primal Threat##70048 |goto 23.00,56.15
]])
ZygorGuidesViewer:RegisterGuide("Daily Guides\\Shadowlands (50-60)\\Primal Storms Daily Quest",{
author="support@zygorguides.com",
description="This guide will walk you through completing the Primal Storms pre-patch invasion daily quest.",
keywords={"10.0.2"},
patch='100002',
condition_end=function() return completedq(70049) end,
startlevel=10,
},[[
step
Complete the "A Primal Threat" Quest |q 70048 |future |or
|tip Use the
Click Here to Load the "Primal Storms Questline" Leveling Guide |confirm |loadguide "Leveling Guides\\Shadowlands (50-60)\\Primal Storms Questline" |or
step
label "Begin_Daily_Quest"
talk Archmage Khadgar##193450
accept Calming the Storms##70049 |goto Stormwind City/0 23.00,56.15
step
Kill enemies at Primal Invasion sites
|tip Go to an active primalist invasion site on the map in Northern Barrens, Tirisfal Glades, Badlands, or Un'Goro Crater.
|tip Going to Badlands will allow you to enter the dungeon right after for the next quest if you plan to use a pre-made group.
|tip Kill enemies and collect motes of energy.
collect 10 Mote of Primal Energy##192493 |q 70049/1 |goto Badlands/0 28.47,45.68
step
talk Archmage Khadgar##193450
turnin Calming the Storms##70049 |goto Stormwind City/0 23.00,56.15
step
You completed the daily quest for today
|tip This guide will reset when it can be completed again.
'|complete not completedq(70049) |next "Begin_Daily_Quest"
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Shadowlands (50-60)\\Boosted Characters\\Boosted Character Death Knight Intro",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the level 50 character boost introduction.",
condition_suggested=function() return intutorial() and raceclass('DeathKnight') and level >= 50 end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass('DeathKnight') end,
condition_valid_msg="You must be a Death Knight to complete this guide!",
startlevel=50.0,
},[[
step
_On the Deck of the Airship:_
talk General Bret Hughes##100448
Tell him _"I'm ready to begin."_
Talk to General Bret Hughes |scenariogoal 1/31011 |or |next "Start_Combat_Training"
_Or_
You Can Skip the Combat Training Scenario
|tip Use your Hearthstone now if you want to skip the Combat Training scenario.
|tip You can complete it or skip it, it doesn't matter, and is purely personal preference.
Use Your Hearthstone |goto Boralus/0 73.94,12.62 < 100 |c |noway |or |next "Leveling Guides\\Shadowlands (50-60)\\Shadowlands Intro & Main Story Questline"
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
clicknpc Armored Snowy Gryphon##32335
|tip At the top of the back of the ship.
Choose _<Receive your summons and leave the airship.>_
accept Shadowlands: A Chilling Summons##60545
step
talk High Inquisitor Whitemane##171789
Tell her _"Tell me what happened."_
Watch the dialogue
Learn About Your Leaders' Fate |q 60545/1 |goto Stormwind City/0 76.70,42.74
|next "Leveling Guides\\Shadowlands (50-60)\\Shadowlands Intro & Main Story Questline"
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Shadowlands (50-60)\\Boosted Characters\\Boosted Character Demon Hunter Intro",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the level 50 character boost introduction.",
condition_suggested=function() return intutorial() and raceclass('DemonHunter') and level >= 50 end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass('DemonHunter') end,
condition_valid_msg="You must be a Demon Hunter to complete this guide!",
startlevel=50.0,
},[[
step
_On the Deck of the Airship:_
talk General Bret Hughes##100448
Tell him _"I'm ready to begin."_
Talk to General Bret Hughes |scenariogoal 1/31011 |or |next "Start_Combat_Training"
_Or_
You Can Skip the Combat Training Scenario
|tip Use your Hearthstone now if you want to skip the Combat Training scenario.
|tip You can complete it or skip it, it doesn't matter, and is purely personal preference.
Use Your Hearthstone |goto Boralus/0 73.94,12.62 < 100 |c |noway |or |next "Leveling Guides\\Shadowlands (50-60)\\Shadowlands Intro & Main Story Questline"
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
Use Blade Dance to kill the Arcane Constructs |scenariogoal 7/38307 |goto 0.00,0.00
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
clicknpc Armored Snowy Gryphon##32335
|tip At the top of the back of the ship.
Choose _<Receive your summons and leave the airship.>_
accept Shadowlands: A Chilling Summons##60545
step
talk High Inquisitor Whitemane##171789
Tell her _"Tell me what happened."_
Watch the dialogue
Learn About Your Leaders' Fate |q 60545/1 |goto Stormwind City/0 76.70,42.74
|next "Leveling Guides\\Shadowlands (50-60)\\Shadowlands Intro & Main Story Questline"
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Shadowlands (50-60)\\Boosted Characters\\Boosted Character Druid Intro",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the level 50 character boost introduction.",
condition_suggested=function() return intutorial() and raceclass('Druid') and level >= 50 end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass('Druid') end,
condition_valid_msg="You must be a Druid to complete this guide!",
startlevel=50.0,
},[[
step
_On the Deck of the Airship:_
talk General Bret Hughes##100448
Tell him _"I'm ready to begin."_
Talk to General Bret Hughes |scenariogoal 1/31011 |or |next "Start_Combat_Training"
_Or_
You Can Skip the Combat Training Scenario
|tip Use your Hearthstone now if you want to skip the Combat Training scenario.
|tip You can complete it or skip it, it doesn't matter, and is purely personal preference.
Use Your Hearthstone |goto Boralus/0 73.94,12.62 < 100 |c |noway |or |next "Leveling Guides\\Shadowlands (50-60)\\Shadowlands Intro & Main Story Questline"
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
clicknpc Armored Snowy Gryphon##32335
|tip At the top of the back of the ship.
Choose _<Receive your summons and leave the airship.>_
accept Shadowlands: A Chilling Summons##60545
step
talk High Inquisitor Whitemane##171789
Tell her _"Tell me what happened."_
Watch the dialogue
Learn About Your Leaders' Fate |q 60545/1 |goto Stormwind City/0 76.70,42.74
|next "Leveling Guides\\Shadowlands (50-60)\\Shadowlands Intro & Main Story Questline"
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Shadowlands (50-60)\\Boosted Characters\\Boosted Character Hunter Intro",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the level 50 character boost introduction.",
condition_suggested=function() return intutorial() and raceclass('Hunter') and level >= 50 end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a Hunter to complete this guide!",
startlevel=50.0,
},[[
step
_On the Deck of the Airship:_
talk General Bret Hughes##100448
Tell him _"I'm ready to begin."_
Talk to General Bret Hughes |scenariogoal 1/31011 |or |next "Start_Combat_Training"
_Or_
You Can Skip the Combat Training Scenario
|tip Use your Hearthstone now if you want to skip the Combat Training scenario.
|tip You can complete it or skip it, it doesn't matter, and is purely personal preference.
Use Your Hearthstone |goto Boralus/0 73.94,12.62 < 100 |c |noway |or |next "Leveling Guides\\Shadowlands (50-60)\\Shadowlands Intro & Main Story Questline"
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
kill Alliance Infantry##102592
Defeat the Attacker |scenariogoal 10/30919
|only if BeastMastery
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
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
clicknpc Armored Snowy Gryphon##32335
|tip At the top of the back of the ship.
Choose _<Receive your summons and leave the airship.>_
accept Shadowlands: A Chilling Summons##60545
step
talk High Inquisitor Whitemane##171789
Tell her _"Tell me what happened."_
Watch the dialogue
Learn About Your Leaders' Fate |q 60545/1 |goto Stormwind City/0 76.70,42.74
|next "Leveling Guides\\Shadowlands (50-60)\\Shadowlands Intro & Main Story Questline"
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Shadowlands (50-60)\\Boosted Characters\\Boosted Character Mage Intro",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the level 50 character boost introduction.",
condition_suggested=function() return intutorial() and raceclass('Mage') and level >= 50 end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass('Mage') end,
condition_valid_msg="You must be a Mage to complete this guide!",
startlevel=50.0,
},[[
step
_On the Deck of the Airship:_
talk General Bret Hughes##100448
Tell him _"I'm ready to begin."_
Talk to General Bret Hughes |scenariogoal 1/31011 |or |next "Start_Combat_Training"
_Or_
You Can Skip the Combat Training Scenario
|tip Use your Hearthstone now if you want to skip the Combat Training scenario.
|tip You can complete it or skip it, it doesn't matter, and is purely personal preference.
Use Your Hearthstone |goto Boralus/0 73.94,12.62 < 100 |c |noway |or |next "Leveling Guides\\Shadowlands (50-60)\\Shadowlands Intro & Main Story Questline"
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
clicknpc Armored Snowy Gryphon##32335
|tip At the top of the back of the ship.
Choose _<Receive your summons and leave the airship.>_
accept Shadowlands: A Chilling Summons##60545
step
talk High Inquisitor Whitemane##171789
Tell her _"Tell me what happened."_
Watch the dialogue
Learn About Your Leaders' Fate |q 60545/1 |goto Stormwind City/0 76.70,42.74
|next "Leveling Guides\\Shadowlands (50-60)\\Shadowlands Intro & Main Story Questline"
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Shadowlands (50-60)\\Boosted Characters\\Boosted Character Monk Intro",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the level 50 character boost introduction.",
condition_suggested=function() return intutorial() and raceclass('Monk') and level >= 50 end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass('Monk') end,
condition_valid_msg="You must be a Monk to complete this guide!",
startlevel=50.0,
},[[
step
_On the Deck of the Airship:_
talk General Bret Hughes##100448
Tell him _"I'm ready to begin."_
Talk to General Bret Hughes |scenariogoal 1/31011 |or |next "Start_Combat_Training"
_Or_
You Can Skip the Combat Training Scenario
|tip Use your Hearthstone now if you want to skip the Combat Training scenario.
|tip You can complete it or skip it, it doesn't matter, and is purely personal preference.
Use Your Hearthstone |goto Boralus/0 73.94,12.62 < 100 |c |noway |or |next "Leveling Guides\\Shadowlands (50-60)\\Shadowlands Intro & Main Story Questline"
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
clicknpc Armored Snowy Gryphon##32335
|tip At the top of the back of the ship.
Choose _<Receive your summons and leave the airship.>_
accept Shadowlands: A Chilling Summons##60545
step
talk High Inquisitor Whitemane##171789
Tell her _"Tell me what happened."_
Watch the dialogue
Learn About Your Leaders' Fate |q 60545/1 |goto Stormwind City/0 76.70,42.74
|next "Leveling Guides\\Shadowlands (50-60)\\Shadowlands Intro & Main Story Questline"
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Shadowlands (50-60)\\Boosted Characters\\Boosted Character Paladin Intro",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the level 50 character boost introduction.",
condition_suggested=function() return intutorial() and raceclass('Paladin') and level >= 50 end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass('Paladin') end,
condition_valid_msg="You must be a Paladin to complete this guide!",
startlevel=50.0,
},[[
step
_On the Deck of the Airship:_
talk General Bret Hughes##100448
Tell him _"I'm ready to begin."_
Talk to General Bret Hughes |scenariogoal 1/31011 |or |next "Start_Combat_Training"
_Or_
You Can Skip the Combat Training Scenario
|tip Use your Hearthstone now if you want to skip the Combat Training scenario.
|tip You can complete it or skip it, it doesn't matter, and is purely personal preference.
Use Your Hearthstone |goto Boralus/0 73.94,12.62 < 100 |c |noway |or |next "Leveling Guides\\Shadowlands (50-60)\\Shadowlands Intro & Main Story Questline"
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
clicknpc Armored Snowy Gryphon##32335
|tip At the top of the back of the ship.
Choose _<Receive your summons and leave the airship.>_
accept Shadowlands: A Chilling Summons##60545
step
talk High Inquisitor Whitemane##171789
Tell her _"Tell me what happened."_
Watch the dialogue
Learn About Your Leaders' Fate |q 60545/1 |goto Stormwind City/0 76.70,42.74
|next "Leveling Guides\\Shadowlands (50-60)\\Shadowlands Intro & Main Story Questline"
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Shadowlands (50-60)\\Boosted Characters\\Boosted Character Priest Intro",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the level 50 character boost introduction.",
condition_suggested=function() return intutorial() and raceclass('Priest') and level >= 50 end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass('Priest') end,
condition_valid_msg="You must be a Priest to complete this guide!",
startlevel=50.0,
},[[
step
_On the Deck of the Airship:_
talk General Bret Hughes##100448
Tell him _"I'm ready to begin."_
Talk to General Bret Hughes |scenariogoal 1/31011 |or |next "Start_Combat_Training"
_Or_
You Can Skip the Combat Training Scenario
|tip Use your Hearthstone now if you want to skip the Combat Training scenario.
|tip You can complete it or skip it, it doesn't matter, and is purely personal preference.
Use Your Hearthstone |goto Boralus/0 73.94,12.62 < 100 |c |noway |or |next "Leveling Guides\\Shadowlands (50-60)\\Shadowlands Intro & Main Story Questline"
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
clicknpc Armored Snowy Gryphon##32335
|tip At the top of the back of the ship.
Choose _<Receive your summons and leave the airship.>_
accept Shadowlands: A Chilling Summons##60545
step
talk High Inquisitor Whitemane##171789
Tell her _"Tell me what happened."_
Watch the dialogue
Learn About Your Leaders' Fate |q 60545/1 |goto Stormwind City/0 76.70,42.74
|next "Leveling Guides\\Shadowlands (50-60)\\Shadowlands Intro & Main Story Questline"
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Shadowlands (50-60)\\Boosted Characters\\Boosted Character Rogue Intro",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the level 50 character boost introduction.",
condition_suggested=function() return intutorial() and raceclass('Rogue') and level >= 50 end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass('Rogue') end,
condition_valid_msg="You must be a Rogue to complete this guide!",
startlevel=50.0,
},[[
step
_On the Deck of the Airship:_
talk General Bret Hughes##100448
Tell him _"I'm ready to begin."_
Talk to General Bret Hughes |scenariogoal 1/31011 |or |next "Start_Combat_Training"
_Or_
You Can Skip the Combat Training Scenario
|tip Use your Hearthstone now if you want to skip the Combat Training scenario.
|tip You can complete it or skip it, it doesn't matter, and is purely personal preference.
Use Your Hearthstone |goto Boralus/0 73.94,12.62 < 100 |c |noway |or |next "Leveling Guides\\Shadowlands (50-60)\\Shadowlands Intro & Main Story Questline"
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
clicknpc Armored Snowy Gryphon##32335
|tip At the top of the back of the ship.
Choose _<Receive your summons and leave the airship.>_
accept Shadowlands: A Chilling Summons##60545
step
talk High Inquisitor Whitemane##171789
Tell her _"Tell me what happened."_
Watch the dialogue
Learn About Your Leaders' Fate |q 60545/1 |goto Stormwind City/0 76.70,42.74
|next "Leveling Guides\\Shadowlands (50-60)\\Shadowlands Intro & Main Story Questline"
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Shadowlands (50-60)\\Boosted Characters\\Boosted Character Shaman Intro",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the level 50 character boost introduction.",
condition_suggested=function() return intutorial() and raceclass('Shaman') and level >= 50 end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass('Shaman') end,
condition_valid_msg="You must be a Shaman to complete this guide!",
startlevel=50.0,
},[[
step
_On the Deck of the Airship:_
talk General Bret Hughes##100448
Tell him _"I'm ready to begin."_
Talk to General Bret Hughes |scenariogoal 1/31011 |or |next "Start_Combat_Training"
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
clicknpc Armored Snowy Gryphon##32335
|tip At the top of the back of the ship.
Choose _<Receive your summons and leave the airship.>_
accept Shadowlands: A Chilling Summons##60545
step
talk High Inquisitor Whitemane##171789
Tell her _"Tell me what happened."_
Watch the dialogue
Learn About Your Leaders' Fate |q 60545/1 |goto Stormwind City/0 76.70,42.74
|next "Leveling Guides\\Shadowlands (50-60)\\Shadowlands Intro & Main Story Questline"
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Shadowlands (50-60)\\Boosted Characters\\Boosted Character Warlock Intro",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the level 50 character boost introduction.",
condition_suggested=function() return intutorial() and raceclass('Warlock') and level >= 50 end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass('Warlock') end,
condition_valid_msg="You must be a Warlock to complete this guide!",
startlevel=50.0,
},[[
step
_On the Deck of the Airship:_
talk General Bret Hughes##100448
Tell him _"I'm ready to begin."_
Talk to General Bret Hughes |scenariostage 1 |or |next "Start_Combat_Training"
_Or_
You Can Skip the Combat Training Scenario
|tip Use your Hearthstone now if you want to skip the Combat Training scenario.
|tip You can complete it or skip it, it doesn't matter, and is purely personal preference.
Use Your Hearthstone |goto Seething Shore/0 0.00,0.00 > 1000 |c |noway |or |next "Leveling Guides\\Shadowlands (50-60)\\Shadowlands Intro & Main Story Questline"
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
clicknpc Armored Snowy Gryphon##32335
|tip At the top of the back of the ship.
Choose _<Receive your summons and leave the airship.>_
accept Shadowlands: A Chilling Summons##60545
step
talk High Inquisitor Whitemane##171789
Tell her _"Tell me what happened."_
Watch the dialogue
Learn About Your Leaders' Fate |q 60545/1 |goto Stormwind City/0 76.70,42.74
|next "Leveling Guides\\Shadowlands (50-60)\\Shadowlands Intro & Main Story Questline"
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Shadowlands (50-60)\\Boosted Characters\\Boosted Character Warrior Intro",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the level 50 character boost introduction.",
condition_suggested=function() return intutorial() and raceclass('Warrior') and level >= 50 end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass('Warrior') end,
condition_valid_msg="You must be a Warrior to complete this guide!",
startlevel=50.0,
},[[
step
_On the Deck of the Airship:_
talk General Bret Hughes##100448
Tell him _"I'm ready to begin."_
Talk to General Bret Hughes |scenariostage 1 |or |next "Start_Combat_Training"
_Or_
You Can Skip the Combat Training Scenario
|tip Use your Hearthstone now if you want to skip the Combat Training scenario.
|tip You can complete it or skip it, it doesn't matter, and is purely personal preference.
Use Your Hearthstone |goto Seething Shore/0 0.00,0.00 > 1000 |c |noway |or |next "Leveling Guides\\Shadowlands (50-60)\\Shadowlands Intro & Main Story Questline"
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
clicknpc Armored Snowy Gryphon##32335
|tip At the top of the back of the ship.
Choose _<Receive your summons and leave the airship.>_
accept Shadowlands: A Chilling Summons##60545
step
talk High Inquisitor Whitemane##171789
Tell her _"Tell me what happened."_
Watch the dialogue
Learn About Your Leaders' Fate |q 60545/1 |goto Stormwind City/0 76.70,42.74
|next "Leveling Guides\\Shadowlands (50-60)\\Shadowlands Intro & Main Story Questline"
]])
