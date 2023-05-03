local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("DungeonAMOP") then return end
ZygorGuidesViewer.GuideMenuTier = "MOP"
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Classic Dungeons\\Blackfathom Deeps",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the Blackfathom Deeps dungeon. This dungeon is located in Ashenvale on the continent of Kalimdor and is home to the Twilight's Hammer, naga, and satyr. This dungeon ranges from level 10 to 30.",
mapid=221,
achieveid={632},
patch='30001',
condition_suggested=function() return level>=10 and level<=30 end,
keywords={"BFD, Ashenvale"},
},[[
step
label "start"
Press _I_ and queue for Blackfathom Deeps or enter the dungeon with your group |goto Blackfathom Deeps/1 45.0,10.6 |c
step
talk Sentinel Aluwyn##75606
accept The Rise of Aku'mai##34672 |goto Blackfathom Deeps/1 48.45,12.03
only if not completedq(34672)
step
map Blackfathom Deeps/1
path follow loose; loop off; ants curved
path	50.0,15.3	52.5,21.4	54.3,33.4
path	54.1,47.5	51.1,48.2	47.6,45.2
path	46.0,44.7
Follow the path and climb over the rocks here |goto 46.0,44.7 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Ghamoo-Ra##74446
|tip Ghamoo-Ra will use Shell Shocker, targeting a random player and charging to them, releasing a violent burst of energy. Stay spread out to avoid multiple party members taking damage
|tip Every 3 seconds, Ghamoo-Ra will release a Static Shock. This will deal minor nature damage to random party members.
Defeat Ghamoo-ra |scenariogoal 24409 |goto 33.5,59.4
step
map Blackfathom Deeps/1
path follow loose; loop off; ants curved
path	29.3,54.6	23.9,46.0	19.0,42.9
path	14.6,43.2
Swim under the water and follow the path |goto Blackfathom Deeps 14.6,43.2 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Domina##74476
click Altar of Blood
|tip Domina will occasionally summon a Foul Tempest that will inflict shadow damage every second to random players
|tip She will also use Maw of Death, which deals massive shadow damage to anyone in front of her over 2 seconds. Avoid standing in front of her
_HEALER:_ |grouprole HEALER
|tip Pay attention to anyone standing in front of Domina during Maw of Death, as they will take significant damage |grouprole HEALER
Defeat Domina |scenariogoal 24414 |goto 11.7,41.3
confirm
step
map Blackfathom Deeps/1
path follow loose; loop off; ants curved
path	24.1,46.4	29.4,54.7	30.8,66.6
path	31.4,80.1	30.7,83.6	32.3,90.3
path	35.7,90.1	39.9,93.2	46.4,92.4
path	53.1,87.2	57.1,79.8	57.7,73.5
path	57.6,68.4	55.8,63.2
Swim under the water and follow the path |goto 55.8,63.2 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Subjugator Kor'ul##74565 |goto Blackfathom Deeps/1 54.3,57.0
|tip Kor'ul will use Leviathan's Grip, crushing a random party member over 8 seconds
|tip When he uses Darkness Calls, Kor'ul will summon Aku'mai tentacles. Kill these quickly and avoid the areas of ground they target
_HEALER:_ |grouprole HEALER
|tip Heal the player targeted by Leviathan's Grip |grouprole HEALER
Defeat Subjugator Kor'ul |scenariogoal 24415 |goto Blackfathom Deeps/1 54.3,57.0
confirm
step
map Blackfathom Deeps/1
path follow loose; loop off; ants curved
path	58.8,71.1	Blackfathom Deeps/2 37.1,29.3	Blackfathom Deeps/2 39.3,34.2
path	Blackfathom Deeps/2 38.8,42.1	Blackfathom Deeps/2 36.7,51.5	Blackfathom Deeps/2 34.8,55.0
path	Blackfathom Deeps/2 31.5,58.3	Blackfathom Deeps/2 30.0,64.2
Follow the path |goto 30.0,64.2
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Thruk##74505 |goto Blackfathom Deeps/2 33.5,68.8
|tip Thruk will use Catch of the Day, using his fishing line to pull a random party member to his feet and rooting them for 10 seconds
|tip Shortly after Catch of the Day, Thruk will use Fillet of Flesh. This will deal heavy physical damage to anyone within 10 yards. Avoid being close to him
Defeat Thruk |scenariogoal 24410 |goto Blackfathom Deeps/2 33.5,68.8
step
map Blackfathom Deeps/2
path follow loose; loop off; ants curved
path	34.0,68.3	45.8,78.8	Blackfathom Deeps/3 60.0,51.6
click Guardian Egg##76062
|tip Clicking an underwater egg will give you a swim speed buff.
Follow the path |goto Blackfathom Deeps/3 60.0,51.6
|tip You will need to swim under the ruins to reach the Guardian.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Guardian of the Deep##74508
|tip Spore Cloud will inflict damage at random areas and summon Guardian Hatchlings.
|tip Guardian of the Deep will Devour Blue Shale Crawlers, healing himself for 25% of max health. Kill them quickly.
|tip Shattering Song will periodically inflict damage to the entire group.
Defeat Guardian of the Deep |scenariogoal 24418 |goto Blackfathom Deeps/3 59.2,30.2
confirm
step
map Blackfathom Deeps/3
path follow loose; loop off; ants curved
path	60.0,51.6	Blackfathom Deeps/2 43.1,75.0	Blackfathom Deeps/2 34.0,68.3
Follow the path |goto Blackfathom Deeps/2 34.0,68.3
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Blackfathom Deeps/2
path follow loose; loop off; ants curved
path	33.9,65.0	40.8,64.9	40.9,68.8
Follow the path |goto 40.9,68.8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Executioner Gore##74518 |goto 40.8,73.2
|tip Executioner Gore will use Devouring Blackness on a random player, draining life and dealing damage
|tip Gore will also slam his axe down in an Executioner's Strike, dealing damage in a frontal cone area and leaving a vortex. Move out of the vortex
_TANK/DAMAGE:_ |grouprole TANK or DAMAGE
|tip Interrupt Devouring Blackness |grouprole TANK or DAMAGE
Defeat Executioner Gore |scenariogoal 24411 |goto 40.7,77.9
step
map Blackfathom Deeps/2
path follow loose; loop off; ants curved
path	40.7,81.6	43.0,81.1	46.0,81.6
path	47.2,84.4
Follow the path |goto 47.2,84.4 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Twilight Lord Bathiel##74728 |goto 51.2,81.6
|tip Bathiel will use Restorative Waters, spraying parts of himself across the room and summoning elementals
|tip These elementals should be killed quickly, as some of them will explode and some will heal Bathiel
|tip Piercing Rain will immediately follow Restorative Waters and deal AoE damage to the entire group
_DAMAGE:_ |grouprole DAMAGE
|tip Kill elementals quickly |grouprole DAMAGE
_TANK:_ |grouprole TANK
|tip Don't worry about picking up adds |grouprole TANK
_HEALER:_ |grouprole HEALER
|tip Prepare to heal the group during Piercing Rain |grouprole HEALER
Defeat Twilight Lord Bathiel |scenariogoal 24412 |goto 51.2,81.6
step
click Fire of Aku'mai
|tip Do this before you leave the room.
map Blackfathom Deeps/2
path follow loose; loop off; ants curved
path	55.3,81.6	60.8,81.9	64.1,85.4
path	79.2,85.3
Follow the path |goto 79.2,85.3
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Aku'mai the Devourer##75155 |goto 86.5,86.7
_Phase 1:_
|tip Aku'mai will spit Venom at his target, dealing nature damage
|tip He will also gradually become more present through Tearing the Void, summoning Deep Terrors
|tip Random players will be hit with Falling Debris, suffering physical damage
_Phase 2:_
|tip Aku'mai the Venomous continues to use Venom
|tip In addition, he will spit Toxic Bile at a random player. This leaves behind a bile pool that you must move out of
_Deep Terrors_
|tip This will periodically crush the ground. Move away from the areas targeted
kill 1 Aku'mai the Devourer##75155 |q 34672/1 |goto 86.5,86.7 |only if haveq(34672)
Defeat Aku'mai |scenariostage 1 |goto 86.5,86.7
step
click Spoils of Blackfathom##225817 |goto 87.72,86.46
confirm
step
talk Sentinel Aluwyn##75606
turnin The Rise of Aku'mai##34672 |goto 87.72,86.46
only if not completedq(34672)
step
Congratulations, you have completed Blackfathom Deeps!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Classic Dungeons\\Blackrock Depths: Detention Block",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the Blackrock Depths: Detention Block dungeon. This dungeon is located in Blackrock Mountain on the continent of Eastern Kingdoms. It is home to the Dark Iron dwarves and led by Emperor Dagran Thaurissan. This dungeon ranges from level 10 to 30.",
mapid=242,
achieveid={642},
patch='30008',
condition_suggested=function() return level>=10 and level<=30 end,
keywords={"BRD, Searing, Gorge, Burning, Steppes, BRM"},
},[[
step
label "start"
Press _I_ and queue for Blackrock Depths: Detention Block or enter the dungeon with your group |goto Blackrock Depths/1 34.7,77.8 |c
step
Click here to proceed to the Detention Block section |confirm |or
Click here to skip to the Upper City section |confirm |next "Prospect" |or
step
talk Jalinda Sprig##45892
accept Into the Prison##27565 |goto Blackrock Depths 36.2,77.3
only if not completedq(27565)
step
talk Tinkee Steamboil##45849
accept The Sealed Gate##27603 |goto 37.3,80.1
only if not completedq(27603)
step
talk Oralius##45891
accept Infiltrating Shadowforge City##27568 |goto 36.7,74.5
only if not completedq(27568)
step
kill Lord Roccor##9025
|tip As you follow the path, keep an eye out for Roccor.
map Blackrock Depths/1
path follow smart; loop off; ants curved; dist 15
path	39.3,75.6	42.6,72.1	46.5,61.9
path	48.6,56.8	52.7,56.5	56.6,61.7
path	56.1,66.7	53.8,70.7	48.2,72.5
Follow the path |goto 53.6,60.3 < 10 |next "DawsonsCreek" |or
|tip Opening the world map will display an ant trail guiding you through the current floor.
Click here to skip all optional bosses and kill High Interrogator Gerstahn |confirm |next "DawsonsCreek"
Proceeding to Grebmar |goto Blackrock Depths/1 55.0,58.7 < 15 |next "Grebmar" |or
Proceeding to Ring of Law |goto Blackrock Depths/1 51.6,70.5 < 15 |next "RoL" |or
confirm
step
label "Grebmar"
kill Houndmaster Grebmar##9319 |goto Blackrock Depths/1 50.7,63.0
|tip Avoid standing near Grebmar if you are a spellcaster, as he will Pummel and interrupt you
|tip Kill the wolves first, and quickly. Bloodlust will increase their damage and make them much more deadly
|tip At 15% health, Grebmar will attempt to Run Away! Run Away!. Kill him before he can flee
confirm |or
Click here to skip Houndmaster Grebmar |confirm |or
step
label "RoL"
You will have to clear a few waves of trash and a minor mini-boss
|tip Grizzle: Frenzy at 50% health, Cleave, and 20 yard AoE stun
|tip Anub'shiah: Decurse, Enveloping Web will immobilize players, and Banish will stun
|tip Eviscerator: Anti-Magic Shield will periodically make him immune to magic for 6 seconds
|tip Ok'thor the Breaker: Arcane Explosion will deal damage to anyone within 30 yards and he will Polymorph random players
|tip Hedrum the Creeper: Crazed will cause Hedrum to drop threat periodically
|tip Gorosh the Dervish: Whirlwind will hit anyone within 8 yards. Dispel Bloodlust
Defeat the Ring of Law |scenariogoal 25074 |goto Blackrock Depths/1 50.5,62.9 |or
Click here to skip the Ring of Law |confirm |or
confirm
step
label "DawsonsCreek"
talk Kevin Dawson##45898
turnin Into the Prison##27565 |goto 44.31,77.84
accept Twilight?! No!##27567 |goto 44.42,77.75
only if not completedq(27567)
step
map Blackrock Depths/1
path follow smart; loop off; ants curved; dist 15
path	45.2,80.0	46.1,85.2	47.0,90.3
Follow the path |goto 47.0,90.3 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
|tip Be careful, the side rooms are full of enemies and will most likely aggro.
confirm
step
kill High Interrogator Gerstahn##9018
|tip Interrupt Mana Burn
|tip Stay at distance to avoid being feared by Psychic Scream, (8 yards).
|tip Dispel Shadow Word: Pain and Shadow Shield
Defeat High Interrogator Gerstahn |scenariogoal 1/25075 |goto Blackrock Depths/1 47.6,93.2
confirm
step
Slay High Interrogator Gerstahn |q 27567/1 |goto Blackrock Depths/1 47.6,93.2
only if not completedq(27567)
step
map Blackrock Depths/1
path follow smart; loop off; ants curved; dist 15
path	47.0,90.3	46.1,85.2	45.2,80.0
Follow the path |goto 45.2,80.0 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Kevin Dawson##45898
turnin Twilight?! No!##27567 |goto 44.42,77.75
only if not completedq(27567)
step
map Blackrock Depths/1
path follow smart; loop off; ants curved; dist 15
path	43.9,77.2	39.4,75.6
Follow the path |goto 39.4,75.6 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Blackrock Depths/1
path follow smart; loop off; ants curved; dist 15
path	36.1,73.5	35.2,62.6	27.2,54.8
Follow the path |goto 27.2,54.8 |or
|tip Opening the world map will display an ant trail guiding you through the current floor.
Click here to skip Bael'Gar |confirm |next "SkipBG" |or
confirm
step
kill Bael'Gar##9016
|tip Players will take a good bit of AoE damage during this fight
|tip The tank should pick up summoned Spawn of Bael'Gar quickly
Defeat Bael'Gar |scenariogoal 25076 |goto Blackrock Depths/1 24.0,51.6 |or
kill Bael'Gar##9016 |q 27603/1 |only if haveq(27603)
Click here to skip Bael'Gar |confirm |or
confirm
step
map Blackrock Depths/1
path follow smart; loop off; ants curved; dist 15
path	27.2,54.8	35.2,62.6	36.1,73.5
Follow the path |goto 36.1,73.5
|tip Opening the world map will display an ant trail guiding you through the current floor.
talk Tinkee Steamboil##45849
turnin The Sealed Gate##27603 |goto 37.37,80.07
only if not completedq(27603)
step
label "SkipBG"
map Blackrock Depths/1
path follow smart; loop off; ants curved; dist 15
path	36.9,59.5	40.9,54.4	44.7,49.6
path	49.0,42.5	54.0,35.0
Follow the path |goto Blackrock Depths/1 54.0,35.0 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Lord Incendius##9017
|tip Move out of areas targeted by Fire Storm
|tip The tank should position their back away from the edge of the bridge to avoid being knocked off the edge by Mighty Blow
|tip Dispel Curse of the Elemental Lord as often as possible
Defeat Lord Incendius |scenariogoal 25072 |goto Blackrock Depths/1 56.5,31.2
step
kill Fineous Darkvire##9056
|tip Interrupt Holy Light
|tip Dispel Seal of Reckoning as often as possible
Defeat Fineous Darkvire |scenariogoal 25073 |goto Blackrock Depths/1 61.5,23.9
step
map Blackrock Depths/1
path follow smart; loop off; ants curved; dist 15
path	61.2,24.4	63.2,21.1	66.9,26.3
path	Blackrock Depths/2 60.4,60.0
Follow the path |goto Blackrock Depths/2 60.4,60.0 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Blackrock Depths/1
path follow smart; loop off; ants curved; dist 15
path	59.5,30.8	58.5,34.2
Follow the path |goto Blackrock Depths/1 58.5,34.2 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Warder Stilgiss##9041, Verek##9042 |goto Blackrock Depths/2 60.5,67.4
|tip Interrupt Frostbolt
|tip Verek will Enrage at 25% health, gaining increased damage and attack speed
Click here when you kill Stilgiss or to skip this boss |confirm
step
map Blackrock Depths/1
path follow smart; loop off; ants curved; dist 15
path	58.5,34.2	54.8,36.0
path	Blackrock Depths/2 52.6,69.7	Blackrock Depths/2 56.2,74.1
path	Blackrock Depths/2 57.3,57.5	Blackrock Depths/2 56.2,93.2
Follow the path |goto Blackrock Depths/2 56.2,93.2 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
Click here to skip Pyromancer Loregrain |confirm |next "Skip"
confirm
step
kill Pyromancer Loregrain##9024 |goto Blackrock Depths/2 54.3,96.3
|tip Kill the Scorching Totem quickly
|tip Dispel Flame Shock from party members
|tip Interrupt Molten Blast
Click here when you kill Loregrain |confirm |next "Kill"
Click here to skip this boss |confirm |next "Skip"
step
label "Kill"
map Blackrock Depths/1
path follow smart; loop off; ants curved; dist 15
path	Blackrock Depths/2 56.6,90.0	Blackrock Depths/1 54.4,63.1
path	Blackrock Depths/1 52.5,66.9	Blackrock Depths/1 49.4,67.5	Blackrock Depths/1 46.7,63.0
path	Blackrock Depths/2 42.1,90.0	Blackrock Depths/1 40.9,66.6
Follow the path |goto Blackrock Depths/1 40.9,66.6 |next "Prospect"
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
label "Skip"
Jump down to the lower level |goto Blackrock Depths/1 53.8,35.3 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Blackrock Depths/1
path follow smart; loop off; ants curved; dist 15
path	53.4,35.6	48.7,42.8	44.6,49.5
path	40.3,55.6	35.9,61.4	36.2,65.1
path	39.5,66.8
Follow the path |goto Blackrock Depths/1 39.5,66.8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
label "Prospect"
talk Prospector Seymour##45894
turnin Infiltrating Shadowforge City##27568 |goto 40.95,67.21
accept Dark Iron Tacticians##27569 |goto 40.95,67.21
only if not completedq(27569)
step
Click the Shadowforge Lock |goto Blackrock Depths/1 40.7,61.9 |scenariogoal 25080
step
map Blackrock Depths/2
path follow smart; loop off; ants curved; dist 15
path	42.1,90.0	43.8,89.8	45.8,86.1
path	47.4,81.0	42.3,73.4	38.9,75.7
path	36.5,81.1
Follow the path |goto Blackrock Depths/2 36.5,81.1 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill General Angerforge##9033
|tip Angerforge Enrages after being hit by any melee attack for 5 seconds
|tip At 40% health, he will use Intruder Alert!, summoning several Medics and Reservists
Defeat General Angerforge |scenariogoal 25081 |goto Blackrock Depths/2 36.6,84.3
step
map Blackrock Depths/2
path follow smart; loop off; ants curved; dist 15
path	35.4,81.6	36.5,81.5	36.5,69.1
Follow the path |goto 36.5,69.1 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Golem Lord Argelmach##8983
|tip Dispel Lightning Shield as often as possible
Defeat Golem Lord Argelmach |scenariogoal 25082 |goto Blackrock Depths/2 36.9,65.1
step
map Blackrock Depths/2
path follow smart; loop off; ants curved; dist 15
path	36.6,69.6	40.0,68.8	46.8,65.2
Follow the path |goto Blackrock Depths/2 46.8,65.2 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Mayara Brightwing##45888
turnin Dark Iron Tacticians##27569 |goto 46.88,66.11
accept The Grim Guzzler##27571 |goto 46.88,66.12
only if not completedq(27571)
step
click Thunderbrew Lager Keg##164911
|tip Destroy all 3 kegs.
kill Hurley Blackbreath##9537
|tip Avoid standing in front of him, he uses Flame Breath
|tip Periodically, Hurley will enter a Drunken Rage, increasing his attack speed and damage by 50%
Defeat Hurley Blackbreath |scenariogoal 25084 |goto Blackrock Depths/2 47.9,58.3 |or
kill Hurley Blackbreath##9537 |q 27571/1 |only if haveq(27571)
Click here to skip this boss |confirm |or
step
kill Ribbly Screwspigot##9543
|tip Gouge will incapacitate anyone hit for 3 seconds
|tip At 30% health, Ribbley will Run Away! Run Away!. Kill him before he can feel
Defeat Ribbly Screwspigot |scenariogoal 25083 |goto Blackrock Depths/2 49.1,61.9 |or
kill Ribbly Screwspigot##9543 |q 27571/3 |only if haveq(27571)
|tip Clear the trash around Ribbly before engaging him.
Click here to skip this boss |confirm |or
step
talk Plugger Spazzring##9499 |goto Blackrock Depths/2 49.8,61.4
buy 10 Dark Iron Ale Mug##11325
To skip killing Phalanx, click here |confirm |next "Plugger"
step
label "Rocknot"
talk Private Rocknot##9503
accept Rocknot's Ale##4295 |goto 51.07,60.61 |repeatable |only if itemcount(11325) > 0
To skip killing Phalanx, click here |confirm |next "Plugger" |only if itemcount(11325) > 0
step
Proceeding to Rocknot |next "Rocknot" |only if itemcount(11325) > 0
Proceeding to Phalanx |next "Phalanx" |only if itemcount(11325) < 1
step
label "Phalanx"
kill Phalanx##9502
|tip Mighty Blow will knock the tank back
|tip Stay at least 10 yards away to avoid Thunder Clap
Defeat Phalanx |scenariogoal 25086 |goto Blackrock Depths/2 53.1,62.6
|tip It will take a moment for Private Rocknot to get drunk enough to start a fight and activate Phalanx.
confirm
step
label "Plugger"
kill Plugger Spazzring##9499
|tip This will cause the remaining bar patrons to become hostile
|tip Dispel Immolate and Curse of Tongues from party members
|tip Plugger will periodically Banish  a random party member
Defeat Plugger Spazzring |scenariogoal 25085 |goto Blackrock Depths/2 49.7,61.3
kill Plugger Spazzring##9499 |q 27571/2 |only if haveq(27571)
|tip You must use a special ability to attack Plugger for the first time.
Click here to skip this boss |confirm
step
map Blackrock Depths/2
path follow smart; loop off; ants curved; dist 15
path	53.4,62.4	Blackrock Depths/1 54.0,27.0
path	Blackrock Depths/2 51.7,53.5
Follow the path |goto Blackrock Depths/2 51.7,53.5 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Mountaineer Orfus##45899
turnin The Grim Guzzler##27571 |goto 50.76,52.64
accept The Dark Iron Pact##27573 |goto 50.76,52.64
only if not completedq(27573)
step
kill Ambassador Flamelash##9156
|tip Flamelash will summon Burning Spirits from the runes around the room
|tip If these elementals reach him, he will gain 5% damage and size for each elemental, to a maximum of 250%
Defeat Ambassador Flamelash |scenariogoal 25077 |goto Blackrock Depths/2 53.8,48.9
step
kill Panzor the Invincible##8923
|tip Panzor has a chance to spawn in the Mold Foundry.
map Blackrock Depths/2
path follow smart; loop off; ants curved; dist 15
path	52.0,45.5	48.9,41.0	51.5,35.4
path	49.8,29.6	51.6,26.8
Follow the path |goto Blackrock Depths/2 51.6,26.8 < 6
confirm
step
talk Doom'rel##9039
Tell him: "_Your bondage is at an end, Doom'rel. I challenge you!_"
|tip One of the Seven will attack at a time until they are all dead
Defeat Doom'rel |scenariogoal 25078 |goto Blackrock Depths/2 56.7,21.8
step
talk Marshal Maxwell##45890
turnin The Dark Iron Pact##27573 |goto 58.08,22.23
accept Morgan's Fruition##27578 |goto 58.08,22.23
only if not completedq(27578)
step
kill Shadowforge Flame Keeper##9956
|tip These guys wander all around The Lyceum. You will need to kill them and collect 2 Shadowforge Torches.
collect 2 Shadowforge Torch##11885 |n
click Shadowforge Brazier##3366 |goto Blackrock Depths/2 71.6,6.9
click Shadowforge Brazier##3366 |goto Blackrock Depths/2 71.6,16.9
confirm
step
Go through the door |goto Blackrock Depths/2 74.9,12.9
kill Magmus##9938
|tip War Stomp will deal damage, knock back, and stun anyone within 5 yards
|tip Run out of areas targeted by Fiery Burst
Defeat Magmus |scenariogoal 25079 |goto Blackrock Depths/2 81.7,11.9
|tip The golems in the side alcoves will shoot flames out. Avoid standing in the fire.
step
Enter the Imperial Seat |goto Blackrock Depths/2 85.5,11.9
kill Emperor Dagran Thaurissan##9019, High Priestess of Thaurissan##10076
|tip Hand of Thaurissan will deal fire damage and stun random players for 5 seconds
|tip Interrupt Princess Bronzebeard's Heal and Renew
Defeat Emperor Dagran Thaurissan |scenariogoal 1/34449 |goto Blackrock Depths/2 93.1,11.9
|tip It is recommended to clear the trash on both sides of the throne at least.
step
map Blackrock Depths/2
path follow smart; loop off; ants curved; dist 15
path	85.1,11.9	74.8,12.9	70.3,16.9
path	62.0,17.1	60.0,19.9
talk Marshal Maxwell##45890
turnin Morgan's Fruition##27578 |goto 58.08,22.25
|tip Opening the world map will display an ant trail guiding you through the current floor.
only if haveq(27578)
step
Congratulations, you have completed Blackrock Depths!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Classic Dungeons\\Deadmines",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the Deadmines dungeon. This dungeon is located in Westfall on the continent of Eastern Kingdoms and is home to the Defias Brotherhood, led by Edwin VanCleef. This dungeon ranges from level 10 to 30.",
mapid=291,
achieveid={628},
patch='30002',
condition_suggested=function() return level>=10 and level<=30 end,
keywords={"Westfall, Defias, DM"},
},[[
step
label "start"
Press _I_ and queue for Deadmines or enter the dungeon with your group |goto The Deadmines/1 26.5,13.4 |c
step
talk Lieutenant Horatio Laine##46612
accept The Foreman##27756 |goto The Deadmines 30.3,28.6
only if not completedq(27756)
step
map The Deadmines/1
path follow loose; loop off; ants curved
path	27.8,24.6	24.8,35.0	29.6,43.3
path	28.7,53.3	34.0,59.8
Follow the path |goto The Deadmines/1 34.0,59.8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Glubtok##47162 |n |goto 37.7,61.2
kill 1 Glubtok##47162 |q 27842/1 |goto 37.7,61.2 |only if haveq(27842)
_Phase 1:_
|tip Glubtok will occasionally use Fists of Flame and Fists of Frost during this phase, avoid standing near the tank
|tip Tank: Glubtok will periodically Blink to a random location
|tip Blink will reset threat, pick up Glubtok quickly. |only if heroic_dung()
_Phase 2:_
|tip At 50% health, Glubtok will cast beams of fire and frost to his sides. Stand in front or behind him
|tip Glubtok will throw Fire Blossoms and Frost Blossoms at random locations, avoid standing in the impact area
|tip Blossoms summon weak elementals. Kill these quickly |only if heroic_dung()
|tip Glubtok will cast a wall of fire that rotates around the room, avoid contact |only if heroic_dung()
Defeat Glubtok |scenariogoal 24941 |goto 37.7,61.2
step
Click the Quest Completion Box that pops up.
turnin The Foreman##27756
only if not completedq(27756)
step
map The Deadmines/1
path follow loose; loop off; ants curved
path	41.7,60.0	47.4,61.3	46.5,67.7
path	43.9,72.7	43.8,79.7
Follow the path |goto The Deadmines/1 43.8,79.7 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
click Heavy Door##400
Open the door and walk inside |goto 43.7,81.6 < 5
confirm
step
Click the Quest Acception box that pops up
accept The Carpenter##27758
only if not completedq(27758)
step
kill 1 Helix Gearbreaker##47296 |n |goto 49.0,87.4
kill 1 Helix Gearbreaker##47296 |q 27758/1 |goto 49.0,87.4 |only if haveq(27758)
_Phase 1:_
|tip Sticky Bombs will explode if players are within 1 yard of them
|tip The Lumbering Oaf will use Oaf Smash, picking up a random player and running into the wall. |only if not heroic_dung()
|tip The Lumbering Oaf will use Oaf Smash, picking up a random player and running into the wall dealing 100% of their maximum health as physical damage |only if heroic_dung()
|tip Helix will jump on a random player. This player will take normal melee damage for 10 seconds
|tip When Helix jumps to a new target, he leaves a Chest Bomb behind. Position yourself below the log in the room so you don't fly up in the air and die from fall damage |only if heroic_dung()
_Phase 2:_
|tip Helix will _Leap_ onto a player and melee attack them
|tip Helix will continue to attach _Chest Bomb_ to targets |only if heroic_dung()
Defeat Helix Gearbreaker |scenariogoal 24942 |goto 49.0,87.4
step
Click the Quest Completion Box that pops up.
turnin The Carpenter##27758
only if not completedq(27758)
step
map The Deadmines/1
path follow loose; loop off; ants curved
path	53.7,87.3	59.1,87.9	63.5,91.5
path	64.8,85.9	61.0,80.6
Follow the path |goto 61.0,80.6 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
click Heavy Door##400
Open the door and walk inside |goto 61.0,73.6 < 5
confirm
step
Click the Quest Acception box that pops up
accept The Machination##27781
only if not completedq(27781)
step
map The Deadmines/1
path follow loose; loop off; ants curved
path	59.6,71.4	56.5,65.1	58.5,59.1
path	63.5,58.6	66.2,64.7	The Deadmines/2 14.6,89.8
Follow the winding ramp down |goto The Deadmines/2 14.6,89.8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Foe Reaper 5000##43778 |n |goto The Deadmines/2 10.4,82.8
kill 1 Foe Reaper 5000##43778 |q 27781/1 |goto The Deadmines/2 10.4,82.8 |only if haveq(27781)
If you're the _Prototype Reaper_ pilot, click here. |confirm |next "Proto_Reap" |only if heroic_dung()
|tip Foe Reaper 5000 will use Reaper Strike, cleaving anyone in front of it
|tip When Overdrive is cast, run away and keep moving until it ends
|tip Occasionally a party member will be targeted with Harvest. Avoid being in front of the Foe Reaper as he moves to the target
_TANK:_ |only if heroic_dung() |grouprole TANK
|tip Pull the Foe Reaper to the top of the ramp |only if heroic_dung() |grouprole TANK
_HEALER:_ |grouprole HEALER
|tip Be prepared for party members to take damage during Overdrive |grouprole HEALER
Defeat the Foe Reaper 5000 |scenariogoal 24944 |goto The Deadmines/2 10.4,82.8
|next "canon_blast"
step
label "Proto_Reap"
You will spend your time at the bottom of the ramp, waiting for _Molten Slag_ to spawn
You will have 2 abilities to use to control the adds
Use _Reaper Strike_ twice in a row, then use _Reaper Charge_ to stun them
Repeat this until the Molten Slag dies
Defeat the Foe Reaper 5000 |scenariogoal 24944 |goto The Deadmines/2 10.4,82.8
step
label "canon_blast"
Click the Quest Completion box that pops up
turnin The Machination##27781
only if not completedq(27781)
step
click Defias Cannon##16398
map The Deadmines/2
path follow loose; loop off; ants curved
path	12.6,70.3	13.1,60.4	22.9,58.0
path	28.0,52.5	33.4,48.9
Use the cannon to blow open the door and walk inside |goto The Deadmines/2 33.4,48.9 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Click the Quest Acception box that pops up
accept The Admiral##27785
only if not completedq(27785)
step
map The Deadmines/2
path follow loose; loop off; ants curved
path	34.3,48.8	41.1,47.8	41.7,30.3
path	50.5,18.1	56.6,27.5	53.1,40.1
path	54.9,55.5
Proceed along the docks avoiding the cannonballs that are being shot at the ground. |goto 54.9,55.5 <8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map The Deadmines/2
path follow loose; loop off; ants curved
path	54.2,54.7	51.9,45.7	53.6,46.4
path	55.6,50.9	57.3,49.2	54.8,39.8
path	56.3,32.2
Follow the ramp up to the top of the ship. |goto 56.3,32.2 <5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Admiral Ripsnarl##47626 |n |goto 63.9,39.5
kill 1 Admiral Ripsnarl##47626 |q 27785/1 |goto 63.9,39.5 |only if haveq(27785)
|tip Ripsnarl will use Swipe, cleaving in a frontal cone. Avoid standing in front of him
|tip Ripsnarl will gain Thirst for Blood, moving faster and gaining attack speed each time he hits (stacking up to 20 times)
|tip At 75%, 50% and 25% He will summon a fog
|tip During the fog, he will Summon Vapors which need to be killed as soon as possible. They will grow larger before they explode, potentially killing anyone nearby
|tip He will use Go For the Throat through the entire fight. It damages then stuns targets for 2 seconds. |only if heroic_dung()
|tip When the fog ends, Ripsnarl will randomly target someone with Go for the Throat, stunning them and dealing damage
_HEALER:_ |only if heroic_dung() |grouprole HEALER
|tip Ripsnarl will use Go for the Throat through the entire encounter. Prepare to heal accordingly |only if heroic_dung() |grouprole HEALER
Defeat Admiral Ripsnarl |scenariogoal 24943 |goto 63.9,39.5
step
Click the Quest Completion Box that pops up.
turnin The Admiral##27785 |only if haveq(27785)
accept The Defias Kingpin##27790
only if not completedq(27790)
step
kill 1 "Captain" Cookie##47739 |goto 63.9,39.5 |only if completedq(27790)
kill 1 "Captain" Cookie##47739 |q 27790/1 |goto 63.9,39.5 |only if not completedq(27790)
|tip Cookie will throw regular food and rotten food on the ground. Rotten food will deal damage to anyone standing nearby
|tip Eating good food will remove a stack of bad food and grant a stacking haste buff
|tip Your group must balance eating bad food and good food to keep the deck clear
Defeat "Captain" Cookie |scenariogoal 34437 |goto 60.6,44.5
step
A note will appear on the ground
|tip Don't click it until your group is ready, it will start the Vanessa VanCleef event.
|tip Once you click it, Vanessa will come out and poison you.
Click the note and select _"Continue reading..."_ |goto The Deadmines/2 59.9,40.9 <8 |c
only if heroic_dung()
step
Click the 4 _Steam Valves_ to avoid being lowered into the Lava. There will be green arrows indicating where the levers are
Escape the lava |goto The Deadmines/1 57.9,70.3 |c |noway
|only if heroic_dung()
step
map The Deadmines/1
path follow loose; loop off; ants curved
path	57.9,70.3	55.7,65.6	57.6,61.8
path	58.2,57.7	61.7,56.8	65.2,60.1
path	64.8,64.0
Jump down at the end of the ramp, avoiding the fire and blizzard areas |goto The Deadmines/2 15.2,81.7
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if heroic_dung()
step
map The Deadmines/2
path follow loose; loop off; ants curved
path	14.0,89.9	10.9,89.9	6.9,81.1
path	9.9,77.6
Follow the path, avoiding the fire and blizzard areas |goto The Deadmines/2 9.9,77.6
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if heroic_dung()
step
kill 1 Glubtok##47162
|tip After you defeat Glubtok, Helix Gearbreaker  will appear at the door
|tip The group needs to collapse at the door, as spiders will spawn and fill the room
|tip Avoid aggroing the spiders if possible
kill 1 Helix Gearbreaker##47296
Defeat Glubtok and Helix |goto 12.6,68.4 < 5 |c
only if heroic_dung()
step
map The Deadmines/2
path follow loose; loop off; ants curved
path	12.0,60.7	23.3,57.5	26.5,51.3
Follow the path |goto 26.5,51.3 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if heroic_dung()
step
kill Foe Reaper 5000##43778
Defeat the Foe Reaper |goto 30.8,49.7 < 5 |c
only if heroic_dung()
step
map The Deadmines/2
path follow loose; loop off; ants curved
path	34.3,48.8	41.1,47.8	41.7,30.3
path	50.5,18.1	56.6,27.5	53.1,40.1
path	54.9,55.5
Follow the deck onto the ship
|tip You will need to save Emma Harrington, Erik Harrington and Calissa Harrington from the worgen
|tip Kill any packs of Worgen that you see
Proceed along the docks, avoiding the sparks |goto 54.9,55.5 <8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if heroic_dung()
step
map The Deadmines/2
path follow loose; loop off; ants curved
path	54.2,54.7	51.9,45.7	53.6,46.4
path	55.6,50.9	57.3,49.2	54.8,39.8
path	56.3,32.2
You will need to save _Emma Harrington_, _Erik Harrington_ and _Calissa Harrington_ from the worgen.
|tip Kill any packs of Worgen that you see.
|tip Once you're at Calissa Harrington, burn down Admiral Ripsnarl fast.
Follow the ramp up to the top of the ship. |goto 56.3,32.2 <5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
|only if heroic_dung()
step
kill 1 Vanessa VanCleef##49541
|tip VanCleef will use Deflection, which deflects all ranged, melee and spell attacks for 10 seconds. She will use the ability when her health is higher than 25%
|tip She will use Deadly Blades, randomly attack party members
|tip She will use Backslash dealing 9k to 10k damage
|tip At 50%, she will use Fiery Blaze which deals 46k to 53k fire damage every second. When this happens, ropes will appear at the end of the deck. Click them to avoid the damage
_TANK:_ |grouprole TANK
|tip VanCleef will summon Defias Shadowguard and Defias Blood Wizards. These need to be picked up quickly |grouprole TANK
|tip When Vanessa is at 1% of her total health, she will use Powder Explosion, Move as far away from her as possible to avoid death |grouprole TANK
Defeat Vanessa VanCleef |scenariogoal 24945
only if heroic_dung()
step
talk Lieutenant Horatio Laine##46612
turnin The Defias Kingpin##27790 |goto 60.9,38.8
only if not completedq(27790)
step
Congratulations, you have completed The Deadmines! |only if not heroic_dung()
Congratulations, you have completed The Deadmines (Heroic)! |only if heroic_dung()
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Classic Dungeons\\Dire Maul: Capital Gardens",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the Dire Maul: Capital Gardens dungeon. This dungeon is located in Feralas on the continent of Kalimdor and is home to undead and arcane creatures imprisoned by Prince Tortheldrin. This dungeon ranges from level 15 to 30.",
mapid=236,
achieveid={644},
patch='30002',
condition_suggested=function() return level>=15 and level<=30 end,
keywords={"DM, West, Feralas"},
},[[
step
label "start"
Press _I_ and queue for Dire Maul: Capital Gardens or enter the dungeon with your group |goto Dire Maul/2 93.5,47.7 |c
step
talk Estulan##44991
accept The Cursed Remains##27112 |goto 90.6,44.9
accept The Shen'dralar Ancient##27113 |goto 90.6,44.9
step
talk Shen'dralar Watcher##44999
accept The Warped Defender##27109 |goto Dire Maul/2 87.3,52.6
step
kill Mana Remnant##11483+, Arcane Aberration##11480+ |goto 73.2,53.8
|tip Kill all the Remnants around the crystal to deactivate it.
Kill all the Remnants around the crystal to deactivate it
confirm
step
map Dire Maul/2
path follow loose; loop off; ants curved; dist 10
path	68.6,56.3	61.6,55.4	50.6,43.6
path	45.2,36.6	40.5,35.1	Dire Maul/3 51.7,21.6
path	Dire Maul/3 38.5,23.4	Dire Maul/3 34.8,34.7
Follow the path |goto Dire Maul/3 34.8,34.7 < 15
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Magister Kalendris##11487 |goto Dire Maul/3 30.6,45.8
|tip Kalendris will randomly cast Shadow Word: Pain or party members. Dispel this or heal through it
|tip Mind Flay will deal shadow damage to the target and reduce movement speed by 50%
|tip Mind Blast deals shadow damage to his current target
|tip Occasionally he will use Dominate Mind on a party member. CC or dispel the afflicted player
kill Magister Kalendris##11487 |q 27112/1 |goto Dire Maul/3 30.6,45.8 |only if haveq(27112)
Defeat Magister Kalendris |scenariogoal 25061 |goto Dire Maul/3 30.6,45.8
step
map Dire Maul/3
path follow loose; loop off; ants curved; dist 10
path	34.6,35.5	38.6,25.5	49.8,16.5
path	46.4,13.5	Dire Maul/2 20.3,21.6
path	Dire Maul/2 23.0,25.8	Dire Maul/2 34.1,23.7
Follow the path |goto Dire Maul/2 34.1,23.7 < 15
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Mana Remnant##11483+, Arcane Aberration##11480+ |goto Dire Maul/2 42.0,22.4
|tip Kill all the Remnants around the crystal to deactivate it.
confirm
step
map Dire Maul/2
path follow loose; loop off; ants curved; dist 10
path	48.5,27.5	48.4,49.4
Follow the path |goto 48.4,49.4 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Shen'dralar Ancient##14358
turnin The Shen'dralar Ancient##27113 |goto 48.4,53.8
accept The Madness Within##27110 |goto 48.4,53.8
only if not completedq(27111)
step
map Dire Maul/2
path follow loose; loop off; ants curved; dist 10
path	48.5,59.1	48.3,78.9
Follow the path |goto 48.3,78.9 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Mana Remnant##11483+, Arcane Aberration##11480+ |goto 39.5,83.4
|tip Kill all the Remnants around the crystal to deactivate it.
confirm
step
kill Illyanna Ravenoak##11488 |goto 21.7,75.8
|tip Ferra will use Charge on random players, dealing damage and stunning them. This will be followed by Maul, dealing physical damage
|tip Multi-Shot will hit players standing close to each other. Spread out
|tip Areas targeted with Volley will deal arcane damage to anyone standing within. Move out of it
|tip Ravenoak will drop Immolation Trap at her feet. Don't walk over these traps
|tip Concussive Shot will slow or stun random party members for 3 seconds
kill Illyanna Ravenoak##11488 |q 27112/2 |goto 21.7,75.8 |only if haveq(27112)
Defeat Illyanna Ravenoak |scenariogoal 25062 |goto 21.7,75.8
step
map Dire Maul/2
path follow loose; loop off; ants curved; dist 10
path	39.4,79.5	47.4,79.8	47.0,71.4
path	45.9,60.1	44.3,58.0	41.5,53.2
Follow the path, jumping onto the ledge first and then jump down to the ramp |goto 41.5,53.2 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Tendris Warpwood##11489 |goto Dire Maul/2 34.6,53.3
|tip Intruder Alert! will summon any Ironbark Protectors left alive in the instance to Warpwood's side
|tip Tendris will Trample anyone within 10 yards, dealing physical damage
|tip Grasping Vines will deal damage to the party, knocking them down and preventing movement for 10 seconds. Dispel this if possible
|tip If no player is within melee range, he will teleport a random person to him and Entangle them for 10 seconds
kill 1 Tendris Warpwood##11489 |q 27109/1 |goto Dire Maul/2 34.6,53.3 |only if haveq(27109)
Defeat Tendris Warpwood |scenariogoal 25063 |goto Dire Maul/2 34.6,53.3
step
click the door and go into the next room |goto 29.8,42.2
confirm
step
map Dire Maul/4
path follow loose; loop off; ants curved; dist 10
path	76.5,39.9	71.4,40.3	69.4,44.4
path	69.1,52.7	66.7,57.4	60.9,57.7
Follow the path |goto Dire Maul/4 60.9,57.7 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Dire Maul/4
path follow loose; loop off; ants curved; dist 10
path	58.7,60.3	57.4,70.2	50.4,81.7
Follow the path |goto Dire Maul/4 50.4,81.7 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Mana Remnant##11483+, Arcane Aberration##11480+ |goto 46.5,81.6
|tip Kill all the Remnants around the crystal to deactivate it.
confirm
step
map Dire Maul/4
path follow loose; loop off; ants curved; dist 10
path	53.5,76.1	58.0,66.2	58.5,52.9
path	54.7,39.6	50.5,34.4
Follow the path |goto Dire Maul/4 50.5,34.4 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Mana Remnant##11483+, Arcane Aberration##11480+ |goto 44.7,34.1
|tip Kill all the Remnants around the crystal to deactivate it.
confirm
step
map Dire Maul/4
path follow loose; loop off; ants curved; dist 10
path	46.8,35.8	41.0,41.9
Follow the path, avoiding the elementals |goto Dire Maul/4 41.0,41.9 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Immol'thar##11496 |goto 35.5,57.0
|tip Eyes of Immol'thar cannot be tanked. Kill them quickly
|tip Portal of Immol'thar will teleport a random player and wipe their threat
|tip Immol'thar will use Infected Bite on the tank, increasing damage taken by a small amount and dealing nature damage. Dispel this disease
|tip Frenzy will cause Immol'thar to enrage, increasing his attack speed by 60% for 3 minutes
|tip He will occasionally Trample, dealing physical damage to anyone standing within 10 yards
kill Immol'thar##11496 |q 27110/1 |goto 35.5,57.0 |only if haveq(27110)
Defeat Immol'thar |scenariogoal 27855 |goto 35.5,57.0
step
map Dire Maul/4
path follow loose; loop off; ants curved; dist 10
path	43.6,46.8	51.7,42.6	56.9,37.4
path	59.3,33.4	60.2,27.3	67.2,24.2
path	74.1,23.1	69.8,21.4
Follow the path |goto Dire Maul/4 69.8,21.4 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Prince Tortheldrin##11486 |goto 60.4,23.5
_HEALER:_ |grouprole HEALER
|tip Price Tortheldrin attacks very quickly and is capable of dealing large amounts of burst damage |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Save defensive cooldowns in case the healer gets hit with Counterspell |grouprole TANK
|tip Periodically he will _hrash, gaining 2 extra attacks |grouprole TANK
|tip Arcane Blast will deal damage to a random player and knock them back |grouprole TANK
|tip Anyone within 8 yards of Tortheldrin will take damage from Whirlwind. Move away during this |grouprole TANK
|tip He will also randomly Counterspell players. This spell can be very dangerous for healers, as it will prevent spellcasting for 15 seconds |grouprole TANK
kill Prince Tortheldrin##11486 |q 27110/2 |goto 60.4,23.5 |only if haveq(27110)
Defeat Prince Tortheldrin |scenariogoal 25065 |goto 60.4,23.5
confirm
step
map Dire Maul/4
path follow loose; loop off; ants curved; dist 10
path	66.2,21.8	74.2,22.4	72.7,24.1
path	67.1,24.0	60.3,27.2	59.3,33.0
path	56.4,37.9	59.3,57.6	66.3,57.8
path	68.9,54.5	69.6,43.0	71.9,40.1
path	76.9,39.9	Dire Maul/2 36.9,53.3
path	Dire Maul/2 44.4,53.2	Dire Maul/2 57.5,54.2
path	Dire Maul/2 64.8,56.3	Dire Maul/2 78.8,50.5
You can either run to the beginning of the dungeon to turn in your quests
Or
You can Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance
Return to the beginning of the instance |goto Dire Maul/2 78.8,50.5 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if not completedq(27109) and not completedq(27112) and not completedq(27110)
step
talk Shen'dralar Watcher##44999
turnin The Warped Defender##27109 |goto Dire Maul/2 87.3,52.4
only if not completedq(27109)
step
talk Estulan##44991
turnin The Cursed Remains##27112 |goto 90.5,44.8
only if not completedq(27112)
step
map Dire Maul/2
path follow loose; loop off; ants curved; dist 10
path	84.4,47.7	71.3,56.0	61.9,55.5
path	54.8,47.2	45.1,36.6	40.8,34.8
path	Dire Maul/3 50.0,12.7	Dire Maul/2 20.3,20.9
path	22.7,26.2	35.6,25.7	48.4,26.1
path	48.4,43.1
Follow the path |goto Dire Maul/2 48.4,43.1 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if not completedq(27111)
step
talk Shen'dralar Ancient##14358
turnin The Madness Within##27110 |goto Dire Maul/2 48.4,53.8
accept The Treasure of the Shen'dralar##27111 |goto Dire Maul/2 48.4,53.8
only if not completedq(27111)
step
map Dire Maul/2
path follow loose; loop off; ants curved; dist 10
path	47.0,59.8	44.3,59.4	41.2,53.4
path	30.0,42.6	Dire Maul/4 71.3,40.3
path	Dire Maul/4 69.3,45.5	Dire Maul/4 68.8,54.5
path	Dire Maul/4 65.7,57.4	Dire Maul/4 59.3,57.2
path	Dire Maul/4 56.3,38.4	Dire Maul/4 59.6,32.8
path	Dire Maul/4 60.6,26.4	Dire Maul/4 67.2,24.1
path	Dire Maul/4 74.1,23.8	Dire Maul/4 72.6,21.7
Jump down and follow the path |goto Dire Maul/4 72.6,21.7 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if not completedq(27111)
step
click Treasure of the Shen'dralar##179517
turnin The Treasure of the Shen'dralar##27111 |goto 70.6,24.1
only if not completedq(27111)
step
Congratulations, you have completed Dire Maul: Capital Gardens!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Classic Dungeons\\Dire Maul: Gordock Commons",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the Dire Maul: Gordock Commons dungeon. This dungeon is located in Feralas on the continent of Kalimdor and is home to the Gordok ogres, led by King Gordok. This dungeon ranges from level 15 to 30.",
mapid=235,
achieveid={644},
patch='30002',
condition_suggested=function() return level>=15 and level<=30 end,
keywords={"DM, North, Feralas"},
},[[
step
label "Start"
You may choose to do a normal run or a special tribute run
The tribute run requires you to skip all bosses up to the king and rewards slightly better loot
Click here to do a normal run |confirm |next "Normal"
Or
Click here to do a tribute run |confirm |next "Tribute"
step
label "Normal"
Press _I_ and queue for Dire Maul: Gordock Commons or enter the dungeon with your group |goto Dire Maul/1 71.1,93.5 |c
step
talk Druid of the Talon##45040
accept King of the Gordok##27125 |goto Dire Maul 71.7,92.2
step
map Dire Maul/1
path follow loose; loop off; ants curved; dist 10
path	71.5,90.1	69.3,86.8	69.3,85.0
Follow the path |goto 69.3,85.0 < 6
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Guard Mol'dar##14326 |goto 69.8,75.5
|tip Important: Clear the ogres and hounds in the courtyard before engaging Guard Mol'dar
|tip Mol'dar will randomly Shield Charge players, dealing damage and knocking them back
|tip Strike is a physical attack used on the tank
|tip Shield Bash will interrupt any spell currently being cast. Avoid casting while standing near him or when hit with Shield Charge.
|tip At 50% health, Mol'dar will use Intruder Alert! - calling nearby mobs to assist him
|tip He will call out for help, so you may need to clear some of the area around him first
Defeat Guard Mol'dar |scenariogoal 25066 |goto 69.8,75.5
step
map Dire Maul/1
path follow loose; loop off; ants curved; dist 10
path	69.3,73.6	69.3,69.9	66.5,68.3
Follow the path |goto 66.5,68.3 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Stomper Kreeg##14322 |goto Dire Maul 62.2,66.0
|tip Booze Spit is a frontal cone attack that will reduce chance to hit by 75% and make you drunk for 8 seconds. Avoid standing in front of Kreeg
|tip War Stomp will knock back any player within 5 yards
|tip Anyone within 8 yards is vulnerable to Whirlwind. Run away when he does this
|tip At 50% health, Kreeg gains Frenzy and Drunken Rage. This will cause him to attack 60% faster and move 100% faster
_TANK:_ |grouprole TANK
|tip Keep your back to a wall and save defensive cooldowns for the 50% enrage |grouprole TANK
Defeat Stomper Kreeg |scenariogoal 25070 |goto Dire Maul 62.2,66.0
confirm
step
map Dire Maul/1
path follow loose; loop off; ants curved; dist 10
path	61.1,68.3	59.1,71.1	57.4,70.6
path	55.1,68.3	50.0,67.2	49.5,69.8
Follow the path |goto 49.5,69.8 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Guard Fengus##14321 |goto 49.4,78.7
|tip Important: Clear the ogres and hounds in the courtyard before engaging Guard Fengus
|tip Fengus will randomly Shield Charge players, dealing damage and knocking them back
|tip Strike is a physical attack used on the tank
|tip Shield Bash will interrupt any spell currently being cast. Avoid casting while standing near him or when hit with Shield Charge.
|tip At 50% health, Fengus will use Intruder Alert! - calling nearby mobs to assist him
|tip He will call out for help, so you may need to clear some of the area around him first
Defeat Guard Fengus |scenariogoal 25067 |goto 49.4,78.7
step
map Dire Maul/1
path follow loose; loop off; ants curved; dist 10
path	48.1,78.1	44.1,78.1	40.4,78.2
path	36.5,78.2	31.8,78.1	29.4,77.1
path	27.6,74.6	27.0,69.5	27.0,63.0
Follow the path |goto 27.0,63.0 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Guard Slip'kik##14323 |goto 26.5,57.8
|tip Important: Clear the ogres nearby before engaging Guard Slip'kik
|tip Slip'kik will randomly Shield Charge players, dealing damage and knocking them back
|tip Strike is a physical attack used on the tank
|tip Shield Bash will interrupt any spell currently being cast. Avoid casting while standing near him or when hit with Shield Charge.
|tip At 50% health, Slip'kik will use Intruder Alert! - calling nearby mobs to assist him
|tip He will call out for help, so you may need to clear some of the area around him first
Defeat Guard Slip'kik |scenariogoal 25068 |goto 26.5,57.8
step
map Dire Maul/1
path follow loose; loop off; ants curved; dist 10
path	27.8,57.5	25.3,57.7	23.9,60.0
path	24.2,66.1	23.3,67.0	23.3,61.2
path	23.9,56.9	25.6,54.5	27.6,54.5
path	27.6,59.9	27.7,64.0	29.1,65.8
path	31.8,65.5	31.8,61.5
Follow the path |goto 31.8,61.5 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Captain Kromcrush##14325 |goto 31.9,50.8
|tip Keep Kromcrush away from the area in which he stands. He will use Frightening Shout, fearing anyone within 8 yards for 6 seconds
|tip Mortal Cleave will hit a melee target and another standing near them, reducing healing by 50%
|tip At 50% health, Kromcrush will use Intruder Alert!, calling 2 Gordok Reavers to aid him. CC or kill these first
|tip These reavers will use Cleave, Sunder Armor, and Mortal Strike
|tip At 25% health, Kromcrush will activate _Retaliation_ for 8 seconds, instantly striking anyone hitting him in melee combat
_DAMAGE:_ |grouprole DAMAGE
|tip Do not attack Kromcrush during Retaliation |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Be aware that the healing reducting effects on this fight will require to you heal more frequently |grouprole HEALER
Defeat Captain Kromcrush |scenariogoal 25071 |goto 31.9,50.8
step
kill 1 Cho'Rush the Observer##14324 |goto 31.8,26.4
kill 1 King Gordok##11501 |goto 31.8,26.4 |only if default
_Cho'Rush the Observer:_
|tip Cho'Rush can spawn as a Priest, Shaman, or Mage
|tip Interrupt Cho'Rush when he casts Heal, Healing Wave, or Arcane Explosion
|tip Dispel his Power Word: Shield and Bloodlust
_King Gordok:_
|tip Berserker Charge will deal damage to random players and knock them up in the air
|tip The tank will take more damage as the fight progresses thanks to stacks of Sunder Armor
|tip Mortal Strike will reduct healing on the tank by 50%
|tip The King will use War Stomp on anyone within 5 yards, dealing damage and stunning for 4 seconds
kill King Gordok##11501 |q 27125/1 |goto 31.8,26.4 |only if haveq(27125)
Defeat King Gordok |scenariogoal 1/27856 |goto 31.8,26.4
step
talk Mizzle the Crafty##14353 |goto 31.7,27.4
Ask him: _"I'm the new king? What are you talking about?"_
Talk to him a second time, about the Tribute, and he will spawn a Chest for you to loot as well
click Gordok Tribute##179564
confirm |only if not completedq(27125) |next "Return"
confirm |only if completedq(27125) |next "end"
step
label "Return"
map Dire Maul/1
path follow loose; loop off; ants curved; dist 10
path	31.8,31.1	31.8,39.9	31.8,50.8
path	31.8,58.9	31.7,65.6	28.5,65.7
path	27.6,61.1	27.6,54.5	24.7,55.0
path	23.2,61.1	23.6,67.2	24.3,64.1
path	24.3,59.5	26.0,59.5	27.0,63.5
path	27.0,69.5	27.2,74.1	29.4,77.4
path	33.3,78.2	38.7,78.2	44.0,78.1
path	49.4,78.0	53.2,77.8	56.2,78.9
path	57.4,83.8	61.6,86.6	66.0,87.6
path	71.7,90.5
You can either run to the beginning of the dungeon to turn in your quests.
Or
You can Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance.
Return to the beginning of the instance |goto 71.7,90.5 < 12
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if not completedq(27125)
step
talk Druid of the Talon##45040
turnin King of the Gordok##27125 |goto Dire Maul 71.7,92.3
only if not completedq(27125)
|next "end"
step
label "Tribute"
Press _I_ and queue for Dire Maul: Gordock Commons or enter the dungeon with your group |goto Dire Maul/1 71.1,93.5 |c
step
talk Druid of the Talon##45040
accept King of the Gordok##27125 |goto Dire Maul 71.7,92.2
|only if not completedq(27125)
step
map Dire Maul/1
path follow loose; loop off; ants curved; dist 10
path	71.8,90.1	68.9,88.0	64.0,86.9
path	60.8,86.9	57.0,84.0	55.9,78.1
path	52.9,77.8	48.1,78.1	44.0,78.1
path	35.1,78.1	30.4,77.8	28.0,75.5
path	27.0,69.0	27.2,63.8
Follow the path. Avoid Guard Fengus in the center courtyard! |goto 27.2,63.8 < 10
_DO NOT KILL Guard Fengus_
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
click Broken Trap##179485
Carefully activate the Broken Trap and wait for Guard Slip'kik to walk over it
accept A Broken Trap##27118 |repeatable |goto 26.53,58.02
step
talk Knot Thimblejack##14338
accept The Gordok Ogre Suit##27119 |goto Dire Maul 28.6,55.3
only if not completedq(27119)
step
map Dire Maul/1
path follow loose; loop off; ants curved; dist 10
path	27.8,57.5	25.3,57.7	23.9,60.0
path	24.2,66.1	23.3,67.0	23.3,61.2
Follow the path |goto 23.3,61.2 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
click Ogre Tannin Basket##179499
Retrieve the Ogre Tannin |q 27119/1 |goto Dire Maul/1 23.7,55.4 |only if not completedq(27119)
collect 1 Ogre Tannin##18240 |only if completedq(27119) |goto Dire Maul/1 23.6,55.2
If someone else got the Ogre Tannin, click here |confirm |next "King"
step
map Dire Maul/1
path follow loose; loop off; ants curved; dist 10
path	25.6,58.3	26.5,58.5	28.6,55.3
Jump down and return to Knot
|tip Opening the world map will display an ant trail guiding you through the current floor.
talk Knot Thimblejack##14338
turnin The Gordok Ogre Suit##27119 |only if haveq(27119) |or
accept The Gordok Ogre Suit##27119 |or
step
label "King"
map Dire Maul/1
path follow loose; loop off; ants curved; dist 10
path	27.8,57.5	25.3,57.7	23.9,60.0
path	24.2,66.1	23.3,67.0	23.3,61.2
path	23.9,56.9	25.6,54.5	27.6,54.5
path	27.6,59.9	27.7,64.0	29.1,65.8
path	31.8,65.5	31.8,61.5
Follow the path |goto 31.8,61.5 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Before running down this hallway:
Put on your ogre disguise |havebuff 132288 |use Gordok Ogre Suit##18258
step
talk Captain Kromcrush##14325 |goto 31.8,50.1
Tell him _"Um, I'm taking some prisoners we found outside before the king for punishment."_
confirm
step
_DO NOT KILL CHO'RUSH!_
_Cho'Rush the Observer:_
|tip Cho'Rush can spawn as a Priest, Shaman, or Mage
|tip Interrupt Cho'Rush when he casts Heal, Healing Wave, or Arcane Explosion
|tip Dispel his Power Word: Shield and Bloodlust
kill 1 King Gordok##11501 |goto 31.8,26.4 |only if default
_King Gordok:_
|tip Berserker Charge will deal damage to random players and knock them up in the air
|tip The tank will take more damage as the fight progresses thanks to stacks of Sunder Armor
|tip Mortal Strike will reduct healing on the tank by 50%
|tip The King will use War Stomp on anyone within 5 yards, dealing damage and stunning for 4 seconds
kill King Gordok##11501 |q 27125/1 |goto 31.8,26.4 |only if haveq(27125)
Defeat King Gordok |scenariogoal 1/27856 |goto 31.8,26.4
step
talk Mizzle the Crafty##14353 |goto 31.7,27.4
Ask him: _"I'm the new king? What are you talking about?"_
_Talk to him a second time_, about the Tribute, and he will spawn a Chest for you to loot as well
click Gordok Tribute##179564
confirm |only if not completedq(27125) and not completedq(27124) and not completedq(27114) |next "Return2"
confirm |only if completedq(27124) |next "end"
step
label "Return2"
map Dire Maul/1
path follow loose; loop off; ants curved; dist 10
path	31.8,31.1	31.8,39.9	31.8,50.8
path	31.8,58.9	31.7,65.6	28.5,65.7
path	27.6,61.1	27.6,54.5	24.7,55.0
path	25.6,58.1	26.0,59.5	27.0,63.5
path	27.0,69.5	27.2,74.1	29.4,77.4
path	33.3,78.2	38.7,78.2	44.0,78.1
path	49.4,78.0
talk Captain Kromcrush##14325
accept Unfinished Gordok Business##27124
|tip Opening the world map will display an ant trail guiding you through the current floor.
step
map Dire Maul/1
path follow loose; loop off; ants curved; dist 10
path	51.3,77.8	56.0,77.6	57.2,72.8
path	62.0,65.7
talk Stomper Kreeg##14322
accept The Gordok Taste Test##27114
|tip Opening the world map will display an ant trail guiding you through the current floor.
step
map Dire Maul/1
path follow loose; loop off; ants curved; dist 10
path	63.1,66.5	66.8,68.1	69.3,69.9
path	69.7,75.0
talk Guard Mol'dar##14326
turnin Unfinished Gordok Business##27124
|tip Opening the world map will display an ant trail guiding you through the current floor.
step
talk Druid of the Talon##45040
turnin King of the Gordok##27125 |goto Dire Maul 71.7,92.3
only if not completedq(27125)
step
label "end"
Congratulations, you have completed Dire Maul: Gordock Commons
Click here to restart the instance |confirm |next "Start"
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Classic Dungeons\\Dire Maul: Warpwood Quarter",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the Dire Maul: Warpwood Quarter dungeon. This dungeon is located in Feralas on the continent of Kalimdor and has been corrupted by the satyr Alzzin the Wildshaper. This dungeon ranges from level 15 to 30.",
mapid=239,
achieveid={644},
patch='30002',
condition_suggested=function() return level>=15 and level<=30 end,
keywords={"DM, East, Feralas"},
},[[
step
label "start"
Press _I_ and queue for Dire Maul: Warpwood Quarter or enter the dungeon with your group |goto Dire Maul/5 6.7,38.3 |c
step
talk "Ambassador" Dagg'thol##44971
accept Pusillin The Thief##27107 |goto Dire Maul/5 7.1,36.3
accept Lethtendris's Web##27108 |goto Dire Maul/5 7.1,36.3
only if not completedq(27107) and not completedq(27108)
step
talk Pusillin##14354 |goto 12.5,30.9
Tell him _"Game? Are you crazy?"_
confirm
step
talk Furgus Warpwood##44969
accept Shards of the Felvine##27103 |goto 11.2,38.4
accept Alzzin the Wildshaper##27104 |goto 11.2,38.4
accept An Unwelcome Guest##27105 |goto 11.2,38.4
only if not completedq(27103) and not completedq(27104) and not completedq(27105)
step
map Dire Maul/5
path follow loose; loop off; ants curved; dist 10
path	12.6,40.7	12.5,65.8	11.9,72.6
path	13.0,77.1	22.0,75.5	27.1,73.5
path	31.2,73.0	31.4,57.5	31.8,51.1
path	31.4,36.6	32.3,26.6	36.1,26.1
path	46.3,26.2	53.6,26.2	55.1,27.4
path	55.6,30.6	55.9,34.3	57.5,37.4
path	59.1,37.9	66.5,38.1	73.8,41.2
path	74.8,46.7	71.6,46.8
talk Pusillin##14354
Follow the path and talk to Pusillin whenever he stops |goto 71.6,46.8 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Pusillin##14354
Tell him _"Prepare to meet your maker"_ |goto Dire Maul/5 75.8,45.2
confirm
step
kill Pusillin##14354 |goto 73.77,43.74
collect Book of Incantations##18261 |q 27107/1 |goto 73.77,43.74 |only if haveq(27107)
confirm |only if not haveq(27107)
step
map Dire Maul/5
path follow loose; loop off; ants curved; dist 10
path	73.4,40.2	65.7,37.7	60.8,37.8
path	58.2,37.8	57.0,36.6	55.8,33.5
path	55.6,29.1	54.7,26.6	52.0,26.2
path	43.8,26.2	43.7,48.0	45.3,60.5
path	44.4,67.1	43.8,64.6	43.8,58.9
Follow the path |goto 43.8,58.9 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Lethtendris##14327 |goto 42.8,49.1
|tip Void Bolt deals shadow damage to her current target
|tip Shadow Bolt Volley will deal AoE damage to the whole group
|tip Curse of Thorns has a 50% chance per melee attack to cause shadow damage to the player afflicted
|tip Curse of Tongues will slow the casting speed of anyone effected by 50%
|tip Immolate will apply a standard fire DoT
|tip Lethtendris will Enlarge Pimgib, increasing his damage
|tip Burn down Pimgib and focus on Lethtendris
|tip Interrupt Shadow Bolt Volley, Curse of Thorns, and Curse of Tongues
collect Lethtendris' Web##18426 |q 27108/1 |goto 42.8,49.1 |only if haveq(27108)
Defeat Lethtendris |scenariogoal 25058 |goto 42.8,49.1
step
map Dire Maul/5
path follow loose; loop off; ants curved; dist 10
path	43.8,57.2	43.8,66.7	44.8,66.5
path	46.9,63.4	47.0,63.3
Follow the path |goto 47.0,63.3 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Dire Maul/6
path follow loose; loop off; ants curved; dist 10
path	60.5,82.6	63.2,84.8	63.0,90.3
path	60.9,92.3	58.1,90.9	57.5,87.6
path	58.1,80.3	58.3,76.2
Follow the path |goto Dire Maul/6 58.3,76.2 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Hydrospawn##13280 |goto Dire Maul/6 55.5,71.4
|tip Submersion reduces the party's stamina by 10 per stack. Acts as a soft enrage
|tip Move away from Hydrospawn when he uses Riptide. This will disarm and knock back anyone within 10 yards
|tip Hydrospawn will Summon Massive Geyser, dealing frost damage to anyone standing in the geyser
|tip At 50% health, he will summon 2 Hydrolings. These have a knockback and drop threat every time they land a hit. Kill them quickly
collect Hydrospawn Essence##18299 |q 27105/1 |goto Dire Maul/6 55.5,71.4 |only if haveq(27105)
Defeat Hydrospawn |scenariogoal 25059 |goto Dire Maul/6 55.5,71.4
step
map Dire Maul/6
path follow loose; loop off; ants curved; dist 10
path	58.2,66.5	57.7,54.9	58.5,52.6
path	60.1,51.9	61.5,52.8	62.1,55.1
path	62.1,69.3	60.0,69.5
Follow the path |goto Dire Maul/6 60.0,69.5 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Zevrim Thornhoof##11490 |goto 57.6,74.0
|tip Players afflicted by Intense Pain will deal shadow damage to anyone standing nearby
|tip Occasionally, Thornhoof will Sacrifice players on his altar. The sacrificed player will take heavy damage over 6 seconds
_HEALER:_ |grouprole HEALER
|tip You must heal the Sacrifice target or they will die |grouprole HEALER
kill 1 Zevrim Thornhoof##11490 |q 27104/1 |goto 57.6,74.0 |only if haveq(27104)
Defeat Zevrim Thornhoof |scenariogoal 25060 |goto 57.6,74.0
step
map Dire Maul/6
path follow loose; loop off; ants curved; dist 10
path	53.5,77.3	52.8,88.0	52.9,91.2
path	48.8,90.9	40.7,80.5
Jump down and follow the path |goto 40.7,80.5 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Dire Maul/6
path follow loose; loop off; ants curved; dist 10
path	39.6,78.4	40.4,71.4	41.0,66.6
path	39.3,60.9	40.2,48.9
talk Old Ironbark##11491
|tip Tell him "Thank you, Ironbark. We are ready for you to open the door."
Follow him and go through the door he opens |goto 40.2,48.9 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Dire Maul/6
path follow loose; loop off; ants curved; dist 10
path	40.2,45.0	40.2,33.1	41.0,30.1
path	42.9,28.9	48.6,28.9	51.0,22.0
path	55.8,16.9	59.8,16.6	64.5,19.0
path	66.0,28.8
Follow the path |goto 66.0,28.8 < 9
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Alzzin the Wildshaper##11492 |goto Dire Maul/6 57.7,28.9
_Satyr Form:_
|tip Alzzin will leech mana from random players using Enervate
|tip Wither is a disease that deals nature damage and reduces strength by 50 for 21 seconds
_Tree Form:_
|tip Alzzin will Disarm and Knock Away the tank. Knock Away acts as a threat drop
|tip _Wild Regeneration_ will heal Alzzin over 16 seconds
_Dire Wolf Form:_
|tip Mangle will slow the tank's movement speed by 50% and inflict a short bleed
|tip At 50% health he will use Come Minions!, summoning imps which reset threat every time they hit. Kill them quickly
kill 1 Alzzin the Wildshaper##11492 |q 27104/2 |goto Dire Maul/6 57.7,28.9 |only if haveq(27104)
Defeat Alzzin the Wildshaper |scenariogoal 27854 |goto Dire Maul/6 57.7,28.9
step
click Felvine Shard##179559
Click the Reliquary of Purity in your bags |use Reliquary of Purity##18539
Create a Sealed Reliquary of Purity |q 27103/1 |goto 55.0,27.1
only if haveq(27103)
step
map Dire Maul/6
path follow loose; loop off; ants curved; dist 10
path	60.2,28.6	68.1,27.0	66.8,21.8
path	63.6,17.1	55.8,17.0	51.1,21.4
path	48.3,28.8	43.0,28.9	40.9,30.2
path	40.2,33.2	40.2,49.5	39.2,60.9
path	40.6,65.0	40.5,70.8	39.1,76.6
path	41.9,82.2	49.3,91.2	52.8,91.1
path	52.9,84.9	54.0,75.3	57.4,75.0
path	57.3,80.7	57.5,90.0	60.3,92.7
path	63.5,89.8	63.3,84.7	61.4,82.6
path	Dire Maul/5 45.7,63.0	Dire Maul/5 43.8,53.6
path	Dire Maul/5 43.8,26.2	Dire Maul/5 33.4,26.3
path	Dire Maul/5 31.5,30.3	Dire Maul/5 31.6,48.7
path	Dire Maul/5 31.1,63.9	Dire Maul/5 31.0,72.5
path	Dire Maul/5 21.4,75.4	Dire Maul/5 14.2,76.9
path	Dire Maul/5 12.4,72.9	Dire Maul/5 12.7,54.2
path	Dire Maul/5 12.4,38.3	Dire Maul/5 8.1,36.6
You can either run to the beginning of the dungeon to turn in your quests.
Or
You can Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance.
Return to the beginning of the dungeon |goto Dire Maul/5 8.1,36.6 < 20
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if not completedq(27107) and not completedq(27108) and not completedq(27103) and not completedq(27104) and not completedq(27105)
step
talk "Ambassador" Dagg'thol##44971
turnin Pusillin The Thief##27107 |goto Dire Maul/5 7.0,36.2
only if not completedq(27107)
step
talk "Ambassador" Dagg'thol##44971
turnin Lethtendris's Web##27108 |goto Dire Maul/5 7.0,36.2
only if not completedq(27108)
step
talk Furgus Warpwood##44969
turnin Shards of the Felvine##27103 |goto 11.2,38.4
only if not completedq(27103)
step
talk Furgus Warpwood##44969
turnin Alzzin the Wildshaper##27104 |goto 11.2,38.4
only if not completedq(27104)
step
talk Furgus Warpwood##44969
turnin An Unwelcome Guest##27105 |goto 11.2,38.4
only if not completedq(27105)
step
Congratulations, you have completed Dire Maul: Warpwood Quarter!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Classic Dungeons\\Gnomeregan",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the Gnomeregan dungeon. This dungeon is located in Dun Morogh on the continent of Eastern Kingdoms. Gnomeregan was the former capital city of the gnomes until it fell to a trogg invasion. This dungeon ranges from level 10 to 30.",
mapid=226,
achieveid={634},
patch='30001',
condition_suggested=function() return level>=10 and level<=30 end,
keywords={"Dun, Morogh"},
},[[
step
label "start"
Press _I_ and queue for Gnomeregan or enter the dungeon with your group |goto Gnomeregan/1 64.4,28.8 |c
step
talk Murd Doc##44556
accept The G-Team##26939 |goto Gnomeregan 63.1,33.3
step
map Gnomeregan/1
path follow loose;loop off;ants curved
path	62.1,35.6	57.6,42.0	59.0,46.5
path	58.7,55.2	56.7,59.6	62.5,68.4
path	72.6,69.5
Follow the path |goto 72.6,69.5 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Blastmaster Emi Shortfuse##7998
Tell her: "I am ready to begin" |goto 81.9,65.1
|tip This will begin the Grubbis event. 2 waves of enemies will spawn when the walls break down before he emerges to attack the party
|tip You will need to kill the waves of troggs that come out. This will last about 60 seconds per side
|tip Grubbis will use Strike on his current target
|tip Grubbis is accompanied by Chomper, his loyal basilisk pet
Defeat Grubbis |scenariogoal 24958 |goto 77.3,65.6
confirm
step
map Gnomeregan/1
path follow loose;loop off;ants curved
path	76.1,67.3	71.3,69.3	63.2,68.7
path	56.6,59.5	59.0,55.5
Follow the path |goto 59.0,55.5 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Walk to the ledge |goto Gnomeregan/1 57.6,51.4 |n
use S.A.F.E. "Parachute"##60680 |only if itemcount(60680) > 0
Jump down from this ledge, onto the big gear below. |goto Gnomeregan/2 83.3,46.4 < 200
confirm
step
kill 1 Viscous Fallout##7079
|tip Viscous Fallout patrols around this area
|tip He will only use one ability on the party, Toxic Volley
|tip Toxic Volley will place a nature damage DoT on party members that will deal damage over 15 seconds
kill 1 Viscous Fallout##7079 |q 26939/1 |only if haveq(26939)
Defeat Viscous Fallout |scenariogoal 24959 |goto 83.9,45.5
confirm
step
talk B.E Barechus##44560
turnin The G-Team##26939 |goto Gnomeregan/2 65.3,47.0
accept The G-Team##26941 |goto Gnomeregan/2 65.3,47.0
step
map Gnomeregan/2
path follow loose;loop off;ants curved
path	62.6,47.8	58.5,47.8	56.1,49.7
path	55.8,52.8	55.8,61.1	53.9,67.7
path	49.6,70.3	43.0,69.9	36.6,65.5
path	33.8,57.2	29.6,51.3	24.3,50.2
path	18.8,51.4	15.0,56.8	13.0,64.4
path	17.5,65.9
Follow the path |goto 17.5,65.9
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Electrocutioner 6000##6235
|tip Electrocutioner will use Megavolt, inflicting nature damage to all players in front of him
|tip He will also use Shock on his current target, dealing heavy nature damage
|tip Chain Bolt will strike a target and jump to 3 nearby targets, dealing nature damage to each. Stay spread out
_TANK/DAMAGE:_ |grouprole TANK or DAMAGE
|tip Interrupt Megavolt and Chain Bolt whenever possible |grouprole TANK or DAMAGE
kill 1 Electrocutioner 6000##6235 |q 26941/1 |only if haveq(26941)
Defeat Electrocutioner 6000 |scenariogoal 24960 |goto 23.7,68.3
confirm
step
use S.A.F.E. "Parachute"##60680
|tip Walk to this ledge and use your parachute to reach the bottom safely |goto Gnomeregan/2 23.9,73.3 < 5
talk B.E Barechus##44560
turnin The G-Team##26941 |goto Gnomeregan/3 23.9,39.0
accept The G-Team##26942 |goto Gnomeregan/3 23.9,39.0
only if not completedq(26942)
step
map Gnomeregan/3
path follow loose;loop off;ants curved
path	29.7,36.3	31.5,36.6	38.6,50.3
path	33.6,56.0	38.0,64.5	37.1,67.3
path	36.1,79.8	35.9,85.7	37.8,87.3
Follow the path |goto 37.8,87.3
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Crowd Pummeler 9-60##6229
|tip Crowd Pummeler will use Arcing Smash, a frontal cone cleave attack. Avoid standing in front of him
|tip He will also use Crowd Pummel, damaging all enemies within 10 yards and interrupting spell casting. Stay at range if you can
|tip Occasionally, he will Trample party members within 10 yards for physical damage
Defeat Crowd Pummeler 9-60 |scenariogoal 24961 |goto Gnomeregan/3 43.5,86.8
confirm
step
map Gnomeregan/3
path follow loose;loop off;ants curved
path	45.7,88.8	49.9,89.5	51.3,86.9
path	52.8,68.8	52.3,67.4	48.3,72.0
Follow the path and ride the elevator down |goto Gnomeregan/4 71.4,77.2 < 15
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Gnomeregan/4
path follow loose;loop off;ants curved
path	69.5,84.7	67.4,87.3	63.0,86.6
path	61.2,89.0	56.5,79.8	54.8,78.6
path	51.0,81.9	49.1,80.6	43.9,70.3
path	41.1,71.4	28.3,66.6	26.2,63.9
path	25.3,60.1	25.8,56.2	28.8,45.7
click The Final Chamber
Follow the path and open The Final Chamber door |goto 28.8,45.7
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Mekgineer Thermaplugg##7800
|tip Steam Blast will inflict fire damage to Thermaplugg's current target and knock them back
|tip Pound will deal damage and disorient his current target
|tip Thermaplugg will also use Welding Beam on his current target. This will deal nature damage over 5 seconds
|tip Periodically, he will activate Walking Bombs. These bombs will keep spawning until the red button on the side of the tube is pressed
|tip Walking Bombs will move towards players and Detonate, dealing fire damage in a 10 yard radius
_TANK/DAMAGE:_ |grouprole TANK or DAMAGE
|tip Interrupt Steam Blast and Welding Beam as often as possible |grouprole TANK or DAMAGE
kill 1 Mekgineer Thermaplugg##7800 |q 26942/1 |only if haveq(26942)
Defeat Mekgineer Thermaplugg |scenariostage 1 |goto 31.3,29.9
step
talk Hann Ibal##44563
turnin The G-Team##26942 |goto 34.6,19.9
only if not completedq(26942)
step
Congratulations, you have completed Gnomeregan!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Classic Dungeons\\Lower Blackrock Spire",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the Lower Blackrock Spire dungeon. This dungeon is located in Blackrock Mountain on the continent of Eastern Kingdoms and is home to Warchief Rend Blackhand's Dark Horde. This dungeon ranges from level 20 to 30.",
mapid=250,
achieveid={643},
patch='30001',
condition_suggested=function() return level>=20 and level<=30 end,
keywords={"BRM, Burning, Steppes, Searing, Gorge, LBRS"},
},[[
step
label "start"
Press _I_ and queue for Lower Blackrock Spire or enter the dungeon with your group |goto Blackrock Spire/4 37.9,43.3 |c
step
talk Acride##10299
accept Trolls, Ogres, and Orcs, Oh My!##27440 |goto Blackrock Spire/4 38.1,51.0
only if not completedq(27440)
step
kill Spirestone Butcher##9219
|tip Keep an eye out for the rare spawn Spirestone Butcher with the ogres.
map Blackrock Spire/4
path follow smart; loop off; ants curved; dist 15
path	39.9,48.3	41.7,45.2	47.3,43.2
path	Blackrock Spire/3 53.7,38.1	Blackrock Spire/3 59.4,43.0
path	Blackrock Spire/3 66.5,43.1	Blackrock Spire/3 66.0,57.0
path	Blackrock Spire/3 56.7,57.8	Blackrock Spire/3 46.0,57.8
Follow the path |goto Blackrock Spire/3 46.0,57.8 < 5 |or
|tip Opening the world map will display an ant trail guiding you through the current floor.
Proceeding to Pike |goto Blackrock Spire/3 66.6,55.4 < 10 |next "Pike" |or
confirm
step
label "Pike"
If you wish to kill Urok Doomhowl, you will need to retrieve a Roughshod Pike
collect 1 Roughshod Pike##12533 |goto Blackrock Spire/3 67.7,57.4 |or
Click here if you wish to skip Urok Doomhowl |confirm |or
confirm
step
kill Spirestone Butcher##9219
|tip Keep an eye out for the rare spawn Spirestone Butcher with the ogres.
map Blackrock Spire/4
path follow smart; loop off; ants curved; dist 15
path	39.9,48.3	41.7,45.2	47.3,43.2
path	Blackrock Spire/3 53.7,38.1	Blackrock Spire/3 59.4,43.0
path	Blackrock Spire/3 66.5,43.1	Blackrock Spire/3 66.0,57.0
path	Blackrock Spire/3 56.7,57.8	Blackrock Spire/3 46.0,57.8
Follow the path |goto Blackrock Spire/3 46.0,57.8 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Highlord Omokk##9196
|tip Knock Away will knock the tank back unless their back is against a wall
|tip At 50% health, Omokk gains Frenzy, increasing his attack speed by 60%
Defeat Highlord Omokk |scenariogoal 25775 |goto 34.6,55.2
kill Highlord Omokk##9196 |q 27440/2 |only if haveq(27440)
|tip Be sure to loot Omokk for Omokk's Head if you want to kill Urok Doomhowl.
step
map Blackrock Spire/3
path follow smart; loop off; ants curved; dist 15
path	46.1,57.8	57.5,57.8	57.4,51.1
path	Blackrock Spire/2 53.2,51.1	Blackrock Spire/2 53.3,56.6
path	Blackrock Spire/2 55.4,63.9
Follow the path |goto Blackrock Spire/2 55.4,63.9 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Shadow Hunter Vosh'gajin##9236
|tip Hex makes this encounter slightly dangerous. Dispelling this debuff is critical!
Defeat Shadow Hunter Vosh'gajin |scenariogoal 25776 |goto 55.6,71.8
step
map Blackrock Spire/2
path follow strict; loop off; ants curved; dist 15
path	55.4,62.1	59.5,58.1	Blackrock Spire/1 59.5,64.2
path	Blackrock Spire/1 53.1,61.1
Follow the path |goto Blackrock Spire/1 53.1,61.1 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill War Master Voone##9237
|tip Voone will use Throw Axe until 65% health, stunning a random player and dealing damage
|tip At 65% health, Voone will use Cleave and Mortal Strike. Avoid standing in front of him
|tip At 40% health, Voone will Snap Kick, stunning the tank, and Uppercut, knocking the tank back
|tip In addition, random players will be Pummeled
kill War Master Voone##9237 |q 27440/1 |only if haveq(27440)
Defeat War Master Voone |scenariogoal 25777 |goto Blackrock Spire/1 53.0,52.9
step
map Blackrock Spire/1
path follow smart; loop off; ants curved; dist 15
path	52.0,57.6	53.9,61.7	62.5,61.7
path	Blackrock Spire/3 66.0,49.8	Blackrock Spire/3 62.9,45.9
path	Blackrock Spire/3 58.9,47.5	Blackrock Spire/1 52.1,49.6
path	48.5,54.0	48.6,63.8	53.5,70.0
path	60.2,70.2
Follow the path |goto Blackrock Spire/1 60.2,70.2 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Mother Smolderweb##10596
|tip Do not stand in front of Smolderweb unless tanking, as Crystallize will stun in a frontal cone
|tip Mother's Milk will poison random players, causing them to root anyone within 8 yards periodically
|tip Stay spread out
Defeat Mother Smolderweb |scenariogoal 25778 |goto Blackrock Spire/1 62.5,76.3
step
map Blackrock Spire/2
path follow smart; loop off; ants curved; dist 15
path	62.2,73.0	56.4,73.6	52.5,76.0
path	Blackrock Spire/3 50.4,74.3	Blackrock Spire/3 47.1,70.4
path	Blackrock Spire/4 45.3,62.0
Follow the path |goto Blackrock Spire/4 45.3,62.0 < 12
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
|next "Cont" |only if default
|next "Urok" |only if itemcount(12534) > 0 and itemcount(12533) > 0
step
label "Urok"
Impale Omokk's head on the roughshod pike atop the pile of skulls |use Omokk's Head##12534
|tip Defend the pike. Once the initial mobs are dead, click it again to challenge Urok Doomhowl
kill Urok Doomhowl##10584
|tip Doomhowl will use Intimidating Roar, fearing anyone within 8 yards for 8 seconds. Stay at range if possible
Defeat Urok Doomhowl |scenariogoal 25779 |goto Blackrock Spire/4 45.8,53.9 |or
Click here if you would like to skip this boss |confirm |or
confirm
step
label "Cont"
map Blackrock Spire/4
path follow smart; loop off; ants curved; dist 15
path	42.5,61.2	42.7,68.2	Blackrock Spire/5 42.9,79.7
path	Blackrock Spire/5 37.8,80.2
Follow the path |goto Blackrock Spire/5 37.8,80.2 < 12
|tip Opening the world map will display an ant trail guiding you through the current floor.
|tip Be wary of the bug swarms in the alcoves to the right.
confirm
step
kill Halycon##10220
Defeat Halycon |scenariogoal 25781 |goto Blackrock Spire/5 37.7,85.4
|tip After killing Halycon, Gizrul will come running down the hallway. Be prepared
step
kill Gizrul the Slavener##10268
|tip At 60% health, Gizrul will gain 60% increased attack speed through Frenzy
Defeat Gizrul the Slavener |scenariogoal 25782 |goto Blackrock Spire/5 37.7,85.4
step
map Blackrock Spire/5
path follow smart; loop off; ants curved; dist 10
path	40.0,78.3	52.8,79.7	53.8,84.8
Follow the path |goto 53.8,84.8 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Quartermaster Zigris##9736
Defeat Quartermaster Zigris |scenariogoal 1/25780 |goto 53.8,84.8
step
map Blackrock Spire/5
path follow smart; loop off; ants curved; dist 10
path	52.8,79.7	40.0,78.3	39.9,74.0
path	35.7,70.6	37.3,64.9	37.3,64.9
path	Blackrock Spire/6 41.0,60.4	Blackrock Spire/6 51.2,60.4	Blackrock Spire/6 53.6,60.7
path	Blackrock Spire/6 60.1,64.7	Blackrock Spire/6 58.8,58.9
Follow the path |goto Blackrock Spire/6 58.8,58.9 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Overlord Wyrmthalak##9568 |goto Blackrock Spire/6 56.1,55.6
|tip Tank Wyrmthalak against a wall to avoid being knocked back
|tip Sweeping Slam will deal damage and knock back anyone in front of him. Stay behind him unless tanking
|tip At 50% health, he will summon a Spirestone Warlord, Smolderthorn Berserker, and Bloodaxe Veteran
|tip If your group DPS is good, burn Wyrmthalak and then deal with the adds
kill Overlord Wyrmthalak##9568 |q 27440/3 |only if haveq(27440)
Defeat Overlord Wyrmthalak |scenariogoal 1/34457
step
map Blackrock Spire/6
path follow strict; loop off; ants curved; dist 12
path	54.3,60.4	49.5,60.5	Blackrock Spire/5 37.3,60.6
path	Blackrock Spire/5 37.3,65.6	Blackrock Spire/5 35.9,71.2
path	Blackrock Spire/5 39.9,74.3	Blackrock Spire/5 40.0,79.4
path	Blackrock Spire/5 42.9,78.9	Blackrock Spire/4 42.6,59.6
path	Blackrock Spire/4 46.6,57.8	Blackrock Spire/3 49.9,57.8
path	Blackrock Spire/3 57.4,57.8	Blackrock Spire/3 62.9,59.1
path	Blackrock Spire/3 66.1,55.1	Blackrock Spire/3 66.1,42.8
path	Blackrock Spire/3 58.9,42.8	Blackrock Spire/3 54.5,37.5
path	Blackrock Spire/4 46.9,42.7	Blackrock Spire/4 40.6,45.8
path	Blackrock Spire/4 39.4,48.3
You can either run to the beginning of the dungeon to turn in your quests. |goto Blackrock Spire/4 39.4,48.3 < 5 |or
Or
You can Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance. |goto Blackrock Spire/4 37.9,43.3 < 8 |or
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if haveq(27440)
step
talk Acride##10299
turnin Trolls, Ogres, and Orcs, Oh My!##27440 |goto Blackrock Spire/4 38.1,51.0
only if haveq(27440)
step
Congratulations, you have completed Lower Blackrock Spire!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Classic Dungeons\\Maraudon: Earth Song Falls",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the Maraudon: Earth Song Falls dungeon. This dungeon is located in Desolace on the continent of Kalimdor and is a vibrant cavern home to Princess Theradras. This dungeon ranges from level 10 to 30. Also known as Inner Dire Maul.",
mapid=280,
achieveid={640},
patch='30003',
condition_suggested=function() return level>=10 and level<=30 end,
keywords={"Desolace"},
},[[
step
label "start"
Press _I_ and queue for Maraudon: Earth Song Falls or enter the dungeon with your group |goto Maraudon/2 28.2,35.2 |c
step
Jump down the waterfall here |goto 28.2,37.3 < 5
confirm
step
Click the Quest Discovered box that displays on the right side of the screen under your minimap
accept Princess Theradras##27692 |goto 29.9,50.0
only if not completedq(27692)
step
map Maraudon/2
path follow loose; loop off; ants curved
path	29.4,47.1	30.3,53.2	32.4,60.7
path	34.5,60.6	35.4,57.4	37.2,57.8
path	41.1,61.3	44.6,60.0	45.8,57.9
path	45.5,55.2	43.6,57.2	41.1,58.6
path	40.8,62.9	38.3,63.4	36.0,59.6
path	37.2,54.5	39.7,53.6
Follow the path |goto 39.7,53.6 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Landslide##12203 |goto Maraudon/2 40.6,48.3
|tip Landslide will Knock Away the tank, causing physical damage and knocking them back
|tip Periodically, Trample will deal physical damage to the entire party
|tip During Landslide, all party members will be stunned while he summons 4 Theradrim Shardlings. Kill these and finish Landslide off
_HEALER:_ |grouprole HEALER
|tip Be prepared to heal the group during _Trample_ |grouprole HEALER
Defeat Landslide |scenariogoal 25056 |goto Maraudon/2 40.6,48.3
step
map Maraudon/2
path loop off
path	39.6,53.4	37.1,54.2	35.8,59.6
path	38.2,63.4	41.4,65.5	43.5,67.5
path	45.1,66.7	46.2,68.1	44.7,73.6
path	41.7,75.2	38.8,78.7	36.1,79.6
path	32.8,78.7
Follow the path |goto 32.8,78.7 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Princess Theradras##12201 |goto 26.6,78.8 |only if default
|tip Theradras will Thrash, dealing 2 extra attacks to the tank
|tip Repulsive Gaze will fear the tank and anyone standing near them for 6 seconds. Don't stand near the tank
|tip Thrown Boulders will deal damage to random players, interrupt spellcasting, and stun them for 2 seconds
|tip Dust Field will deal nature damage to anyone within 20 yards of Theradras and knock them back
_HEALER:_ |grouprole HEALER
|tip Be prepared for the group to take heavy damage during _Dust Field_ |grouprole HEALER
kill 1 Princess Theradras##12201 |q 27692/1 |goto 26.6,78.8 |only if haveq(27692)
Defeat Princess Theradras |scenariogoal 1/34447 |goto 26.6,78.8
step
Click the Quest Complete box in the top right corner
turnin Princess Theradras##27692
only if not completedq(27692)
step
Jump down the waterfall here |goto 31.3,75.6 < 5
confirm
step
kill 1 Rotgrip##13596 |goto 41.6,79.5
|tip Rotgrip will Puncture the tank for the entire fight, bleeding them for physical damage
|tip Fatal Bite will damage the tank and heal Rotgrip for twice the amount of damage dealt
Defeat Rotgrip |scenariogoal 25057 |goto 41.6,79.5
confirm
step
Congratulations, you have completed Maraudon: Earth Song Falls!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Classic Dungeons\\Maraudon: Foulspore Cavern",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the Maraudon: Foulspore Cavern dungeon. This dungeon is located in Desolace on the continent of Kalimdor and is a putrid, diseased cavern. This dungeon ranges from level 10 to 30. Also known as Dire Maul Orange.",
mapid=280,
condition_suggested=function() return level>=10 and level<=30 end,
keywords={"Desolace, Orange"},
},[[
step
label "start"
Press _I_ and queue for Maraudon: Foulspire Caverns or enter the dungeon with your group |goto Maraudon/1 62.2,28.2 |c
step
Click the Accept Quest box on the right side of your screen.
accept Servants of Theradras##27698 |goto Maraudon 60.8,21.2
only if not completedq(27698)
step
map Maraudon/1
path follow loose; loop off; ants curved
path	59.3,21.8	54.9,23.5	53.3,28.4
path	49.6,30.6	43.8,38.0	40.6,41.7
path	41.0,44.8	43.0,48.2	49.1,44.9
path	53.6,37.3	52.8,33.2	48.9,31.9
path	47.1,29.1	46.1,26.5	47.9,22.3
path	47.1,19.9	40.9,14.4
Follow the path |goto 40.9,14.4 < 20
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Noxxion##13282 |goto 34.6,10.7 |only if default
|tip Toxic Volley will poison all players within 45 yards for 15 seconds
|tip Noxxion will Uppercut the tank, knocking them back
|tip When he begins to Summon Noxxion Spawn Noxxion will split into 5 Noxxion Spawn
|tip Kill Noxxion Spawn during splits
kill 1 Noxxion##13282 |q 27698/1 |goto 34.6,10.7 |only if haveq(27698)
Defeat Noxxion |scenariogoal 25054 |goto 34.6,10.7
step
map Maraudon/1
path follow loose; loop off
path	38.9,16.5	38.2,24.2	35.2,31.0
path	33.7,35.7	32.9,39.9	30.8,39.9
path	25.9,36.2	21.7,35.6
Follow the path |goto 21.7,35.6 < 12
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Razorlash##12258 |goto Maraudon/1 16.3,34.0 |only if default
|tip Razorlash will Puncture the tank, causing them to bleed for 10 seconds
|tip Thrash will cause him to attack 3 times in rapid succession
|tip Razorlash has a Cleave. Avoid standing near the tank
kill 1 Razorlash##12258 |q 27698/2 |goto Maraudon/1 16.3,34.0 |only if haveq(27698)
Defeat Razorlash |scenariogoal 25055 |goto Maraudon/1 16.3,34.0
step
Click the Complete Quest box on the right side of your screen
turnin Servants of Theradras##27698
only if not completedq(27698)
step
Congratulations, you have completed Maraudon: Foulspore Caverns!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Classic Dungeons\\Maraudon: The Wicked Grotto",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the Maraudon: The Wicked Grotto dungeon. This dungeon is located in Desolace on the continent of Kalimdor and is tainted by demon corruption. This dungeon ranges from level 10 to 30. Also known as Dire Maul Purple.",
mapid=280,
condition_suggested=function() return level>=10 and level<=30 end,
keywords={"Desolace, Purple"},
},[[
step
label "start"
Press _I_ and queue for Maraudon: The Wicked Grotto or enter the dungeon with your group |goto Maraudon/1 78.1,68.8 |c
step
Click the Quest Accept box in the top right corner.
accept Corruption in Maraudon##27697 |goto Maraudon 76.7,64.7
only if not completedq(27697)
step
map Maraudon
path follow loose; loop off; ants curved
path	75.8,60.7	72.2,66.1	69.1,64.3
path	65.1,59.7	61.3,56.5	58.0,49.9
path	54.7,48.3	52.3,49.6
Follow the path |goto 52.3,49.6 < 15
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Tinkerer Gizlock##13601 |goto 48.7,56.2
|tip Tinkerer Gizlock will occasionally throw a Bomb as someone, inflicting AoE damage. Stay at least 5 yards apart
|tip Goblin Dragon Gun will deal fire damage in a frontal cone. Avoid standing in front of him
|tip Flash Bomb will cause all beasts, including Feral/Guardian Druids and hunter pets to flee for 5 seconds
|tip Gizlock will randomly Shoot party members, dealing minor physical damage
Defeat Tinkerer Gizlock |scenariogoal 25051 |goto 48.7,56.2
step
map Maraudon
path follow loose; loop off; ants curved
path	50.8,58.7	50.2,61.5	48.6,66.6
path	49.9,70.0	48.4,76.1	48.7,81.8
path	47.4,85.1	40.3,87.2	35.6,83.3
path	36.4,79.8	41.0,79.9	42.5,78.4
path	40.0,76.6
Follow the path |goto 40.0,76.6 < 15
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Lord Vyletongue##12236 |goto 37.6,69.5
|tip Shoot will deal minor physical damage to random party members
|tip Stay spread out so that Multi-Shot does not hit more than one party member at a time
|tip Occasionally, Vyletongue will Blink 20 yards straight forward
|tip Smoke Bomb will stun any players within 5 yards
kill Lord Vyletongue##12236 |q 27697/1 |goto 37.6,69.5 |only if haveq(27697)
Defeat Lord Vyletongue |scenariogoal 25052 |goto 37.6,69.5
step
Click the Complete Quest box in the top right corner:
turnin Corruption in Maraudon##27697
only if haveq(27697)
step
map Maraudon/1
path follow loose; loop off; ants curved
path	36.9,76.5	31.0,80.8	31.1,88.6
path	26.4,88.2	24.9,75.2	22.5,58.9
path	Maraudon/2 26.5,6.2
Follow the path |goto Maraudon/2 26.5,6.2 < 30
|tip Celebras the Cursed is an optional boss.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Celebras the Cursed##12225
|tip Celebras will summon three Forces of Nature.
|tip Twisted Tranquility will deal nature damage and slow players within 45 yards.
|tip Wrath deals single-target nature damage. Can be interrupted.
|tip Entangling Roots will root a single player and deal minor nature damage.
Defeat Celebras the Cursed |scenariogoal 25053 |goto Maraudon/2 24.5,14.3
|tip Celebras the Cursed is an optional boss.
step
Congratulations, you have completed Maraudon: The Wicked Grotto!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Classic Dungeons\\Ragefire Chasm",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the Ragefire Chasm dungeon. This dungeon is located in Orgrimmar on the continent of Kalimdor and is home to the Burning Blade cultists and troggs. This dungeon ranges from level 10 to 30.",
mapid=213,
achieveid={629},
patch='30001',
condition_suggested=function() return level>=10 and level<=30 end,
keywords={"Orgrimmar, RFC"},
},[[
step
label "start"
Press _I_ and queue for Ragefire Chasm or enter the dungeon with your group |goto Ragefire Chasm/1 62.4,7.9 |c
step
talk High Sorceress Aryna##61823
accept A New Enemy##30998 |goto Ragefire Chasm/1 69.4,11.0
accept The Dark Shaman##30996 |goto Ragefire Chasm/1 69.4,11.0
only if not completedq(30998) and not completedq(30996)
step
talk SI:7 Field Commander Dirken##61822
accept No Man Left Behind##30995 |goto 68.3,12.8
only if not completedq(30995)
step
map Ragefire Chasm/1
path follow loose; loop off; ants curved
path	66.0,21.5	66.1,35.3	65.8,47.0
path	66.2,57.1
Follow this path down, but look out for rising lava. If you see lava rising up, wait for it to go back down before crossing |goto 66.2,57.1 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
stickystart "corruptinsig"
step
kill Mature Flame Hound##61658 |n
Rescue the first SI:7 Ranger |q 30995/1 |count 1 |goto 68.0,60.4
only if not completedq(30995)
step
kill Adarogg##61408
Avoid standing in the area targeted by Adarogg's _Inferno Charge_. It will deal physical damage to all nearby players
_HEALER:_ |grouprole HEALER
|tip Adarogg will periodically use Flame Breath on a random player dealing fire damage to them. This will need to be healed |grouprole HEALER
Defeat Adarogg |scenariogoal 24759
step
talk Suspicious Rock##61780
Tell it: "It's Safe to come out now." |q 30995/1 |count 2 |goto 65.0,70.8
only if not completedq(30995)
step
map Ragefire Chasm/1
path follow loose; loop off; ants curved
path	60.5,68.2	60.6,50.5	59.8,45.1
Follow this path up, but look out for rising lava. If you see lava rising up, wait for it to go back down before crossing. |goto 59.8,45.1
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
clicknpc SI:7 Ranger##61788
Rescue the third SI:7 Ranger |q 30995/1 |count 3 |goto 60.8,43.2
only if not completedq(30995)
step
map Ragefire Chasm/1
path follow loose; loop off; ants curved
path	59.3,42.1	60.2,36.2	55.9,28.9
Follow the path |goto 55.9,28.9
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Dark Shaman Koranthal##61412 |n |only if default
kill Dark Shaman Koranthal##61412 |q 30996/1 |only if haveq(30996)
|tip When Koranthal begins casts _Shadow Storm_, the dark impacts on the ground will deal damage to anyone within 2 yards. Avoid these areas.
_Tank:_ |grouprole TANK
|tip Interrupt Twisted Elements. |grouprole TANK
_DPS:_ |grouprole DPS
|tip Interrupt Twisted Elements. |grouprole DPS
_Healers:_ |grouprole HEALER
|tip Be prepared to heal targets of Twisted Elements and those taking damage during Shadow Storm. |grouprole HEALER
Defeat Dark Shaman Koranthal |scenariogoal 24761 |goto 51.8,31.7
step
talk Inconspicous Crate##61790
Tell it: "It's Safe to come out now." |q 30995/1 |count 4 |goto 52.0,26.2
only if not completedq(30995)
step
map Ragefire Chasm/1
path follow loose; loop off; ants curved
path	51.1,37.6	50.0,47.6	40.2,46.4
path	41.2,57.0
Follow the path |goto 41.2,57.0
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Slagmaw##61463
|tip Slagmaw will randomly Lava Spit at a player's location. Avoid standing within 3 yards of other players
|tip Slagmaw will periodically Submerge, reappearing at a random location.
_HEALER:_ |grouprole HEALER
|tip Be prepared to heal group members who are hit by Lava Spit, especially following Submerge. |grouprole HEALER
Defeat Slagmaw |scenariogoal 24763
step
clicknpc SI:7 Ranger##61788
Rescue the last SI:7 Ranger |q 30995/1 |count 5 |goto 42.8,66.5
only if not completedq(30995)
step
map Ragefire Chasm/1
path follow loose; loop off; ants curved
path	39.5,68.1	32.4,68.3	31.3,74.0
Follow the path |goto 31.3,74.0
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Lava Guard Gordoth##61528 |n |only if default
kill Lava Guard Gordoth##61528 |q 30996/2 |only if haveq(30996)
Gordoth will periodically cast _Seismic Slam_, dealing damage to all players within 25 yards and knocking them back
Gordoth will target random players with _Ground Rupture_, dealing damage and knocking them back
At 30%, Gordoth will _Enrage_. Save DPS cooldowns and finish him off quickly
_HEALER:_ |grouprole HEALER
|tip Keep the party as close to full health as possible. Knockback may interrupt your cast |grouprole HEALER
Defeat Lava Guard Gordoth |scenariogoal 1/34404 |goto 33.7,81.4
step
label "corruptinsig"
_As you go through this Dungeon:_
kill Corrupted Houndmaster##61666+, Corrupted Flamecaller##61705+, Dark Shaman Acolyte##61672+, Corrupted Reaver##61678+
Collect 5 Corrupted Insignias |q 30998/1
only if haveq(30998) and not completedq(30998)
step
talk High Sorceress Aryna##61823
turnin A New Enemy##30998 |goto 33.5,80.6
turnin The Dark Shaman##30996 |goto 33.5,80.6
only if not completedq(30998) and not completedq(30996)
step
talk SI:7 Field Commander Dirken##61822
turnin No Man Left Behind##30995 |goto 31.7,76.5
only if not completedq(30995)
step
Congratulations, you have completed Ragefire Chasm
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Classic Dungeons\\Razorfen Downs",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the Razorfen Downs dungeon. This dungeon is located in Thousand Needles on the continent of Kalimdor and is the capital of the quilboars. This dungeon ranges from level 15 to 30.",
mapid=300,
achieveid={636},
patch='30008',
condition_suggested=function() return level>=15 and level<=30 end,
keywords={"Barrens, RFD"},
},[[
step
label "start"
Press _I_ and queue for Razorfen Downs or enter the dungeon with your group |goto Razorfen Downs/1 23.8,18.8 < 100 |c
step
talk Koristrasza##74367
accept Blackthorn's Lieutenants##33513 |goto Razorfen Downs/1 28.2,24.3
accept The Ritual##33514 |goto Razorfen Downs/1 28.2,24.3
step
map Razorfen Downs/1
path follow loose; loop off; ants curved; dist 10
path	29.3,18.5	33.3,18.7	35.8,22.0
path	38.8,23.1	41.8,18.2	45.2,19.4
path	44.1,25.5	42.8,29.4	47.1,33.5
path	50.9,33.3	54.2,28.3	56.6,30.3
Follow the path |goto 56.6,30.3 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Clear this room then click the Gong
kill Aarux##74412 |goto Razorfen Downs/1 58.9,33.7
|tip Aarux will use Web Strand, linking himself to a party member with sticky webbing. If he pulls the player close enough, he will use Plagued Bite. Run away from him
|tip Plagued Bite deals heavy nature damage to the target over 10 seconds
|tip Burning Pustule will deal nature damage to those close to Aarux
kill Aarux##74412 |q 33513/3 |goto Razorfen Downs/1 58.9,33.7 |only if haveq(33513)
Defeat Aarux |scenariogoal 24954 |goto Razorfen Downs/1 58.9,33.7
step
map Razorfen Downs/1
path follow loose; loop off; ants curved; dist 10
path	60.5,37.3	63.9,41.7	67.9,40.9
path	72.2,37.5	76.9,33.8	82.1,36.7
Follow the path |goto 82.1,36.7 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Mordresh Fire Eye##74347 |goto 85.2,46.4
|tip Mordresh will use Lava Burst on the tank, dealing substantial fire damage. Interrupt this
|tip Periodically, he will Summon Blazing Servitor. These need to be killed quickly so no more than 1 is up at a time
|tip Servitors will use Inferno, spewing blobs of fire at random locations. Stay out of the impact points
|tip If more than one servitor is active at a time they will use Fiery Link, connecting themselves together with a line of fire that deals massive damage to anyone touched by it
kill Mordresh Fire Eye##74347 |q 33513/2 |goto 85.2,46.4 |only if haveq(33513)
Defeat Mordresh Fire Eye |scenariogoal 24955
step
map Razorfen Downs/1
path follow loose; loop off; ants curved; dist 10
path	77.9,42.2	73.0,44.9	68.8,50.5
path	62.5,50.3	56.0,46.1	51.6,45.1
Follow the path |goto 51.6,45.1 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Mushlump##74435 |goto Razorfen Downs/1 41.9,43.4
|tip Mushlump will use Smack Down on the tank, dealing increased physical damage over 3 seconds
|tip Tummy Ache will deal heavy nature damage to anyone standing in a cone in front of him
|tip Clouds of Putrid Funk will afflict a disease on anyone standing in them. Avoid coming in contact with these clouds
kill 1 Mushlump##74435 |q 33513/1 |goto Razorfen Downs/1 41.9,43.4 |only if haveq (33513)
Defeat Mushlump |scenariogoal 1/24956 |goto Razorfen Downs/1 41.9,43.4
|tip He patrols the ravine
step
map Razorfen Downs/1
path follow loose; loop off; ants curved; dist 10
path	41.9,43.4	34.9,49.4	33.4,54.3
path	33.5,63.4	36.4,70.3
Follow the path |goto 36.4,70.3 < 12
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Koristrasza##74888
turnin Blackthorn's Lieutenants##33513 |goto 37.84,71.74
step
map Razorfen Downs/1
path follow loose; loop off; ants curved; dist 10
path	39.7,73.4	43.6,75.9	48.5,72.0
path	52.0,64.4	53.0,57.3	49.3,51.7
path	42.2,48.7	38.7,50.2	36.7,54.6
path	37.7,64.5	41.0,69.4	45.9,70.0
path	49.2,64.2	49.5,56.9	40.9,53.9
path	40.1,62.1
Follow the path |goto 40.1,62.1 < 10
|tip Koristrasza will lay patches of healing energy on the ground
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Death Speaker Blackthorn##74875 |goto Razorfen Downs/1 44.7,59.7
|tip Summon Skeletons will animate 3 skeletons to assist Blackthorn
|tip These skeletons will use Disrupting Dash, charging at someone and interrupting spellcasting; and Shield Smash, which cleaves to anyone near the target
|tip Shockwave will deal massive damage to anyone standing in a narrow cone in front of Blackthorn. Avoid this
|tip Searing Shadows will place a DoT on the tank, dealing shadow damage over 15 seconds. Interrupt or dispel this
|tip Be sure to interrupt _Shadowmend_ to prevent Blackthorn from healing his skeletons
Defeat Death Speaker Blackthorn |scenariogoal 2/24957 |goto Razorfen Downs/1 44.7,59.7
step
kill Amnennar the Coldbringer##7358 |goto 44.6,59.4
|tip Frozen Bomb appears as a patch of frost on the ground. Anyone standing within will suffer frost damage
|tip Throughout the fight, Koristrasza will place green patches of Redeemed Soil
|tip When you are afflicted with Soul Leech, run into a patch of Redeemed Soil to remove the debuff and stun Amnennar for 6 seconds
kill Amnennar the Coldbringer##7358 |q 33514/1 |goto 44.6,59.4 |only if haveq(33514)
Defeat Amnennar the Coldbringer |scenariogoal 3/24977 |goto Razorfen Downs/1 45.0,58.6
step
talk Koristrasza##74888
turnin The Ritual##33514 |goto 44.73,59.21
step
Congratulations, you have completed Razorfen Downs!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Classic Dungeons\\Razorfen Kraul",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the Razorfen Kraul dungeon. This dungeon is located in the Southern Barrens on the continent of Kalimdor and is the ancestral home of the quilboars. This dungeon ranges from level 10 to 30.",
mapid=301,
achieveid={635},
patch='30303',
condition_suggested=function() return level>=10 and level<=30 end,
keywords={"Barrens, RFK"},
},[[
step
label "start"
Press _I_ and queue for Razorfen Kraul or enter the dungeon with your group |goto Razorfen Kraul/1 70.0,83.0 |c
step
talk Auld Stonespire##44402
accept Going, Going, Guano!##26901 |goto Razorfen Kraul 68.3,83.0
accept Agamaggan##26906 |goto Razorfen Kraul 68.3,83.0
accept Take Them Down!##26907 |goto Razorfen Kraul 68.3,83.0
only if not completedq(26901) and not completedq(26906) and not completedq(26907)
step
map Razorfen Kraul/1
path follow loose; loop off; ants curved
path	62.7,80.1	62.2,75.9	62.1,72.1
path	68.4,69.6	72.8,67.3	78.0,65.8
path	81.1,59.5	84.9,49.4	80.9,44.3
path	79.5,40.2	75.6,39.6	72.2,31.8
path	79.0,35.6	82.5,41.4
Follow the path  |goto 82.5,41.4 < 7
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Roogug##74948 |goto Razorfen Kraul/1 87.2,41.6
|tip When below 75% health, Roogug will occasionally use Bloodlust. This is a stacking enrage effect
|tip Woven Elements will create a vortex of random elemental effects that deal damage
|tip Crystalfire Discharge creates a totem that shoots energy at random players, knocking them back and dealing damage
|tip Solarshard Beam will create a bright pillar of light, silencing anyone within. Move out of this
_TANK/DAMAGE:_ |grouprole TANK or DAMAGE
|tip Interrupt Woven Elements |grouprole TANK or DAMAGE
kill 1 Roogug##74948 |q 26907/3 |goto Razorfen Kraul/1 87.2,41.6 |only if haveq(26907)
Defeat Roogug |scenariogoal 24979 |goto Razorfen Kraul/1 87.2,41.6
step
map Razorfen Kraul/1
path follow loose; loop off; ants curved
path	83.4,40.9	79.2,35.5	72.0,31.3
path	71.6,39.1	74.7,43.4	77.5,45.4
Follow the path |goto 77.5,45.4 < 7
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Hunter Bonetusk##75001 |goto Razorfen Kraul/1 81.9,50.5
|tip At 50% health, Bonetusk will call a Stampede of boars. Avoid the boars to prevent taking damage
|tip Dodge the incoming arrows from Volley
_TANK:_ |grouprole TANK
|tip Be prepared for extra incoming damage during Barrage. Bonetusk will fire multiple arrows very rapidly for a short time |grouprole TANK
kill 1 Hunter Bonetusk##75001 |q 26907/1 |goto Razorfen Kraul/1 81.9,50.5 |only if haveq(26907)
Defeat Hunter Bonetusk |scenariogoal 24978 |goto Razorfen Kraul/1 81.9,50.5
step
map Razorfen Kraul/1
path follow loose; loop off; ants curved
path	74.4,42.7	70.3,36.8	63.1,33.5
path	60.6,27.8
Follow the path |goto 60.6,27.8 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Warlord Ramtusk##74462 |goto Razorfen Kraul/1 57.0,30.1
|tip Spirit Link Totem will periodically redistribute the health of all targets inside the field
|tip Ramtusk will use Spirit Axe, throwing his axe to a location and dealing arcane damage to all nearby enemies
|tip Jargba will use Spirit Bolt, causing a orb of energy to randomly move towards a party member
|tip Aggem will occasionally Arcane Shot a random player, dealy heavy arcane damage
_TANK/DAMAGE:_ |grouprole TANK or DAMAGE
|tip Interrupt Jargba's Spirit Bolt |grouprole TANK or DAMAGE
_HEALER:_ |grouprole HEALER
|tip Pay close attention to _Arcane Shot targets, they will take significant damage |grouprole HEALER
kill 1 Warlord Ramtusk##74462 |q 26907/2 |goto Razorfen Kraul/1 57.0,30.1 |only if haveq(26907)
Defeat Warlord Ramtusk |scenariogoal 24160 |goto Razorfen Kraul/1 57.0,30.1
step
stickystart "Guano"
map Razorfen Kraul/1
path follow loose; loop off; ants curved
path	57.7,37.2	58.8,41.1	55.6,44.5
path	50.6,45.6	47.5,47.6	42.0,54.0
path	32.1,49.0	24.2,48.1
Follow the path |goto 24.2,48.1 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Razorfen Kraul/1
path follow loose; loop off; ants curved
path	21.4,47.5	20.1,51.6	17.6,54.7
path	11.5,54.3
Follow the path |goto 11.5,54.3 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Groyat, the Blind Hunter##75247 |goto Razorfen Kraul/1 7.5,53.8
|tip Sonic Field will create areas on the ground which deal physical damage to those who stand in them. After a few seconds, anyone nearby will take damage and be stunned for 4 seconds
|tip Groyat will bite his current target occasionally, inflicting them with Drain Life
|tip Dispel Drain Life whenever possible
Defeat Groyat, the Blind Hunter |scenariogoal 24980 |goto Razorfen Kraul/1 7.5,53.8
step
label "Guano"
kill Kraul Bat##4538+, Cave Bat##75467+
Collect Kraul Guano |q 26901/1
only if not completedq(26901)
step
map Razorfen Kraul/1
path follow loose; loop off; ants curved
path	7.3,49.1	7.6,46.6	10.7,44.0
path	14.0,36.7	18.7,39.3	18.7,39.3
Follow the path |goto 18.7,39.3 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Spirit of Agamaggan##44415
turnin Agamaggan##26906 |goto 19.9,35.9
accept Agamaggan's Charge##26905 |goto 19.9,35.9
only if not completedq(26905)
step
kill 1 Charlga Razorflank##4421 |goto 23.7,31.4
|tip Venomous Discharge Crystal will lob poison poison at random players. Avoid the areas targeted
|tip Tidal Tempest Crystal will pull party members towards its center, dealing frost damage. Run away
|tip Molten Inferno Crystal will create lines of fire around the room. Avoid standing in these, as they do high fire damage
|tip Dispel players afflicted by Elemental Binding as often as possible. This debuff will inflict random elemental damage over 6 seconds and root the player
Collect Razorflank's Heart |q 26905/1 |goto 23.7,31.4 |only if haveq(26905)
Defeat Charlga Razorflank |scenariostage 1 |goto 23.7,31.4
step
talk Spirit of Agamaggan##44415
turnin Agamaggan's Charge##26905 |goto 23.5,30.7
only if not completedq(26805)
step
talk Auld Stonespire##44402
turnin Going, Going, Guano!##26901 |goto 23.2,31.6
turnin Take Them Down!##26907 |goto 23.2,31.6
only if not completedq(26901) or not completedq(26907)
step
Congratulations, you have completed Razorfen Kraul!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Classic Dungeons\\Scarlet Halls",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the Scarlet Halls dungeon. This dungeon is located in the Tirisfal Glades on the continent of Eastern Kingdoms and is home to the Scarlet Crusade. This dungeon ranges from level 10 to 30.",
mapid=431,
achieveid={7413},
patch='50004',
condition_suggested=function() return level>=10 and level<=30 end,
keywords={"SM, SH, Tirisfal, Glades"},
},[[
step
stickystart "RankFile"
Press _I_ and queue for Scarlet Halls or enter the dungeon with your group |goto Scarlet Halls/1 34.4,89.8 |c
step
talk Hooded Crusader##64738 |only if not completedq(31490) and not completedq(31493) and not heroic_dung()
talk Hooded Crusader##64738 |only if not completedq(31495) and not completedq(31497) and heroic_dung()
accept Rank and File##31490 |goto Scarlet Halls/1 31.9,84.4 |only if not completedq(31490) and not heroic_dung()
accept Just for Safekeeping, Of Course##31493 |goto Scarlet Halls/1 31.9,84.4 |only if not completedq(31493) and not heroic_dung()
accept Rank and File##31495 |goto Scarlet Halls/1 31.9,84.4 |only if not completedq(31495) and heroic_dung()
accept Just for Safekeeping, Of Course##31497 |goto Scarlet Halls/1 31.9,84.4 |only if not completedq(31497) and heroic_dung()
step
map Scarlet Halls/1
path follow loose; loop off; ants curved
path	37.7,84.8	44.1,85.0	44.2,80.4
path	48.1,80.3
Follow the path |goto 48.1,80.3 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
clicknpc Reinforced Archery Target##59163
|tip In order to cross the training ground you must click on an archery target and use it as a shield. Avoid the fire arrows that leave patches of flame on the ground.
kill 1 Commander Lindon##59191 |goto Scarlet Halls/1 49.5,51.4
Defeat Commander Lindon and proceed through the gate |goto Scarlet Halls/1 49.8,50.3 < 5
confirm
step
map Scarlet Halls/1
path follow loose; loop off; ants curved
path	49.8,45.3	49.8,36.5	53.8,36.5
Follow the path |goto 53.8,36.5 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Houndmaster Braun##59303
|tip Houndmaster Braun will use Piercing Throw. This will target a player and deal damage to every player in between Braun and his target.
|tip Death Blossom is an AoE whirlwind, spread out to reduce its effectiveness.
|tip Both of these abilities will cause Bloody Mess. This is DoT can stack and become deadly.
|tip At 90%, 80%, 70%, and 60% Braun will summon an Obedient Hound to his side. You can either kill them or just have the tank hold onto them.
|tip If the hounds remain alive at 50% Braun will begin to lose control of them and the will aid you in battle. When this happens, Braun will enter a Bloody Rage, gaining 25% increased damage and 50% increased attack speed.
Defeat Houndmaster Braun |scenariogoal 19266 |goto 54.7,29.5
step
map Scarlet Halls/2
path follow loose; loop off; ants curved
path	47.9,88.1	52.4,88.2
path	52.2,80.0	57.3,80.0	57.1,71.7
path	61.8,71.5	61.7,54.5
You will need to avoid cannon fire from the cannoneers
Allow the remaining dogs to kill the door guards and proceed along the path. |goto Scarlet Halls/2 61.7,54.5 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Armsmaster Harlan##58632 |goto Scarlet Halls/2 61.8,45.2
|tip Dragon's Reach is a cleave ability, avoid being in front of this boss.
|tip Harlan will periodically summon two Scarlet Defenders. You can either kill these adds or you can wait for them to be caught in Harlan's Blades of Light ability.
|tip He will use Heroic Leap to the center of the pit and begin casting Blades of Light. This whirlwind quickly moves around the entire area and does massive damage to anybody caught within it. Jump between the different levels of this area to avoid this ability easily.
_Healer_ |grouprole HEALER
|tip Avoid standing near the door. The adds will spawn and immediately begin attacking you |grouprole HEALER
Defeat Armsmaster Harlan |scenariogoal 19268 |goto Scarlet Halls/2 61.8,45.2
confirm
step
map Scarlet Halls/2
path follow loose; loop off; ants curved
path	61.7,57.8	56.2,57.7	48.6,57.7
path	48.6,50.5	39.2,50.6	39.2,36.1
path	39.2,25.4
Follow the path |goto 39.2,25.4 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Flameweaver Koegler##59150 |goto 39.3,15.9
|tip Koegler will try to light the book cases around the room on fire with Book Burner. You can avoid this mechanic by staying on the red carpet circle inside this room.
|tip He will move to the center of the room and begin using Greater Dragon's Breath. Watch where he is facing and move around the room clockwise to avoid being hit.
|tip Quickened Mind will cause Koegler's next three spells to be cast nearly instantly. This can be dispelled off of him.
collect Codex of the Crusade##87267 |q 31493/1 |only if haveq(31493) and not heroic_dung()
collect Codex of the Crusade##87267 |q 31497/1 |only if haveq(31497) and heroic_dung()
Defeat Flameweaver Koegler |scenariogoal 1/34441 |goto 39.3,15.9
step
label "RankFile"
kill Vigilant Watchman##58898+, Master Archer##59175+, Scarlet Evangelist##58685+, Scarlet Myrmidon##58683+, Scarlet Cannoneer##59293+, Scarlet Scourge Hewer##58684+, Scarlet Defender##58676+, Scarlet Evoker##58756+, Scarlet Defender##58998+, Scarlet Treasurer##59241+, Scarlet Hall Guardian##59240+, Scarlet Pupil##59373+, Scarlet Scholar##59372+
Kill 50 Scarlet Crusaders. |q 31490/1 |only if not completedq(31490) and not heroic_dung()
Kill 50 Scarlet Crusaders. |q 31495/1 |only if not completedq(31495) and heroic_dung()
only if haveq(31490) or haveq(31495)
step
talk Hooded Crusader##64738 |only if not completedq(31490) and not completedq(31493) and not heroic_dung()
talk Hooded Crusader##64738 |only if not completedq(31495) and not completedq(31497) and heroic_dung()
turnin Rank and File##31490 |goto 39.3,15.6 |only if not completedq(31490) and not heroic_dung()
turnin Just for Safekeeping, Of Course##31493 |goto 39.3,15.6 |only if not completedq(31493) and not heroic_dung()
turnin Rank and File##31495 |goto 39.3,15.6 |only if not completedq(31495) and heroic_dung()
turnin Just for Safekeeping, Of Course##31497 |goto 39.3,15.6 |only if not completedq(31497) and heroic_dung()
step
Congratulations, you have completed Scarlet Halls! |only if not heroic_dung()
Congratulations, you have completed Scarlet Halls (Heroic)! |only if heroic_dung()
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Classic Dungeons\\Scarlet Monastery",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the Scarlet Monastery dungeon. This dungeon is located in the Tirisfal Glades on the continent of Eastern Kingdoms and is home to the Scarlet Crusade. This dungeon ranges from level 10 to 30.",
mapid=302,
achieveid={637},
patch='30002',
condition_suggested=function() return level>=10 and level<=30 end,
keywords={"SM, Tirisfal, Glades"},
},[[
step
Press _I_ and queue for Scarlet Monastery or enter the dungeon with your group |goto Scarlet Monastery/2 74.0,45.8 |c
step
talk Hooded Crusader##64827 |only if not completedq(31513) and not heroic_dung()
talk Hooded Crusader##64827 |only if not completedq(31515) and heroic_dung()
accept Blades of the Anointed##31513 |goto Scarlet Monastery/1 72.7,47.0 |only if not completedq(31513) and not heroic_dung()
accept Blades of the Anointed##31515 |goto Scarlet Monastery/1 72.7,47.0 |only if not completedq(31515) and heroic_dung()
only if not completedq(31513) and not completedq(31515)
step
map Scarlet Monastery/1
path follow loose; loop off; ants curved
path	69.9,53.2	55.0,54.2	43.5,53.7
path	35.7,45.8
You can avoid most of the trash here. Destroy the corpse pile first
Follow the path |goto 35.7,45.8 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Thalnos the Soulrender##59789
|tip Thalnos will Raise Fallen Crusader. This ability summons zombies that the tank needs to pick up. When the Fallen Crusaders hit you, they leave behind Mind Rot which is a DoT that can stack
|tip He also summons Spirit Gales often. These are puddles on the ground that should not be stepped in. This ability is interruptable
|tip Evict Soul is a debuff that Thalnos throws on a random party member. This DoT needs to be dispelled as quickly as possible
|tip He will also use Summon Empowering Spirit. This ability will summon an add that DPS should kill as quickly as they can. If this add reaches a Fallen Crusader's corpse, it will spawn an Empowered Zombie
|tip Empowered Zombies are large zombies which need to be tanked. They cannot be killed without great focus
Defeat Thalnos the Soulrender |scenariogoal 19270 |goto Scarlet Monastery/1 24.3,45.6
step
click Blade of the Anointed##214296 |only if not completedq(31513) and not heroic_dung()
click Blade of the Anointed##214296 |only if not completedq(31515) and heroic_dung()
Collect the Blade of the Anointed |q 31513/1 |goto 20.6,45.9 |only if not completedq(31513) and not heroic_dung()
Collect the Blade of the Anointed |q 31515/1 |goto 20.6,45.9 |only if not completedq(31515) and heroic_dung()
only if haveq(31513) or haveq(31515)
step
map Scarlet Monastery/1
path follow loose; loop off; ants curved
path	35.0,52.4	34.9,78.3	39.3,78.3
path	39.4,85.2	48.5,85.2	Scarlet Monastery/2 49.1,11.9
Follow the path |goto Scarlet Monastery/2 49.1,11.9 < 7
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Blade of the Anointed##64855 |only if not completedq(31514) and not heroic_dung()
talk Blade of the Anointed##64855 |only if not completedq(31516) and heroic_dung()
turnin Blades of the Anointed##31513 |goto Scarlet Monastery/2 49.1,24.5 |only if haveq(31513) and not heroic_dung()
turnin Blades of the Anointed##31515 |goto Scarlet Monastery/2 49.1,24.5 |only if haveq(31515) and heroic_dung()
accept Unto Dust Thou Shalt Return##31514 |goto Scarlet Monastery/2 49.1,24.5 |only if not completedq(31514) and not heroic_dung()
accept Unto Dust Thou Shalt Return##31516 |goto Scarlet Monastery/2 49.1,24.5 |only if not completedq(31516) and heroic_dung()
only if not completedq(31514) and not completedq(31516)
step
map Scarlet Monastery/2
path follow loose; loop off; ants curved
path	45.7,31.9	43.9,36.3	49.2,43.3
Follow the path |goto 49.2,43.3
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Brother Korloff##59223
|tip Flying Kick will hit a random party member knocking them back, make sure they aren't knocked into any uncleared trash.
|tip Blazing Fists is a series of punches Korloff makes in front of him, have the tank take a step back and make sure all party members are behind Korloff.
|tip Firestorm Kick is whirlwind of flame, do not stand in it.
|tip Scorched Earth is a fire trail that Korloff leaves behind him, do not stand in it.
|tip Every 10%, Korloff wil gain a stack of Rising Flame. These increase his fire damage done by 10% per stack.
Defeat Brother Korloff |scenariogoal 19271 |goto 49.0,52.4
step
Enter the cathedral here |goto 49.1,57.1 < 5
confirm
step
kill 1 High Inquisitor Whitemane##3977, Commander Durand##60040
_Phase 1_
|tip Commander Durand will fight you alone.
|tip He uses Flash of Steel and Dashing Strike. Both of these abilities cause him to jump to party members quickly
_Phase 2_
|tip High Inquisitor Whitemane will cast Power Word: Shield, Smite and Heal. Make sure to interrupt Heal
|tip Whitemane will also try casting Mass Resurrection. DO NOT LET THIS CAST FINISH!! If this cast finishes, all corpses within 100 yards will resurrect and aggro
|tip After you weaken her she will cast Deep Sleep. This puts the entire party to sleep for 10 seconds, during this time she will resurrect Durand
_Phase 3_
|tip Kill Whitemane first, make sure to interrupt Heal
Use the Blades of the Anointed on High Inquisitor Whitemane's corpse |use Blades of the Anointed##87390 |q 31516/1 |only if haveq(31516)
Use the Blades of the Anointed on High Inquisitor Whitemane's corpse |use Blades of the Anointed##87388 |q 31514/1 |only if haveq(31514)
Defeat High Inquisitor Whitemane |scenariogoal 1/34443 |goto Scarlet Monastery/2 49.1,77.9
step
talk Hooded Crusader##64842 |only if not completedq(31514) and not heroic_dung()
talk Hooded Crusader##64842 |only if not completedq(31516) and heroic_dung()
turnin Unto Dust Thou Shalt Return##31514 |goto Scarlet Monastery/2 48.8,76.4 |only if haveq(31514) and not heroic_dung()
turnin Unto Dust Thou Shalt Return##31516 |goto Scarlet Monastery/2 48.8,76.4 |only if haveq(31516) and heroic_dung()
only if not completedq(31514) and not completedq(31516)
step
Congratulations, you have completed Scarlet Monastery! |only if not heroic_dung()
Congratulations, you have completed Scarlet Monastery (Heroic)! |only if heroic_dung()
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Classic Dungeons\\Scholomance",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the Scholomance dungeon. This dungeon is located in the Western Plaguelands on the continent of Eastern Kingdoms and is the academy for Scourge necromancers. This dungeon ranges from level 15 to 30.",
mapid=476,
achieveid={645},
patch='30002',
condition_suggested=function() return level>=15 and level<=30 end,
keywords={"Western, Plaguelands, Scourge"},
},[[
step
Press _I_ and queue for Scholomance or enter the dungeon with your group |goto Scholomance/1 18.1,60.9 < 100 |c
step
talk Talking Skull##64562
accept The Four Tomes##31440 |goto Scholomance/1 27.0,58.8
accept An End to the Suffering##31447 |goto Scholomance/1 27.0,58.8
only if not completedq(31440) and not completedq(31447) and not heroic_dung()
step
If you immediately pull Instructor Chillheart, all trash aside from the 2 Risen Guards will despawn
Go through the gate and jump down |goto Scholomance/1 53.2,60.3 < 5 |c
step
kill 1 Instructor Chillheart##58633 |goto Scholomance/1 65.5,60.6
_Phase 1:_
|tip Wrack Soul will deal damage to a party member and jump to a nearby party member when it expires. Spread out |only if heroic_dung()
|tip Touch of the Grave causes Chillheart's next 10 basic attacks to deal additional damage
|tip Frigid Grasp will summon ice at a player's feet, step out of this before it explodes
|tip Ice Wall will start at the back of the room and slowly creep toward the boss. If this touches any player, they will die instantly. This will act as the enrage timer of the fight
|tip Kill Chillheart's physical body and Phase 2 will start
_Phase 2:_
|tip The Anarchist Arcanist will float around creating Arcane Bombs. These explode on impact so avoid them
|tip Antonidas' Self Help Guide to Standing in Fire will cast Burn. This does a small AoE of fire damage around the book
|tip Wander's Colossal Book of Shadow Puppets will cast Shadow Bolt at the party
Defeat Instructor Chillheart |scenariogoal 19259 |goto Scholomance/1 65.5,60.6
step
click In the Shadow of the Light##214279
|tip You can find the tome near this area. It is usually sitting on one of the tables.
Destroy the tome "In the Shadow of the Light" |q 31440/1 |goto 72.15,64.41 |only if not heroic_dung()
Destroy the tome "In the Shadow of the Light" |q 31442/1 |goto 72.15,64.41 |only if heroic_dung()
only if haveq(31440) or haveq(31442)
step
map Scholomance/1
path follow loose; loop off; ants curved
path	74.6,52.0	85.7,51.6	85.4,24.1
Follow the path |goto Scholomance/1 85.4,24.1 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
click Kel'Thuzad's Deep Knowledge##214278
|tip You can find the tome near this area. It is usually sitting in one of the stone alcoves.
Destroy Kel'Thuzad's Deep Knowledge |q 31440/2 |goto Scholomance/2 73.9,8.6 |only if not heroic_dung()
Destroy Kel'Thuzad's Deep Knowledge |q 31442/2 |goto Scholomance/2 73.9,8.6 |only if heroic_dung()
only if haveq(31440) or haveq(31442)
step
kill 1 Jandice Barov##59184 |goto Scholomance/2 58.8,18.3
|tip Wondrous Rapidity is a large cone attack in front of Jandice, make sure nobody is in front of her.
|tip Gravity Flux will create a gravity distortion field on the ground. If you step into this ability you will be knocked back as well as damaged heavily |only if heroic_dung()
|tip At 66% and 33% Jandice will cast Phantasmal Images. She will clone herself throughout the room, destroy the clones until she returns to battle
|tip Destroying the wrong clone will deal arcane damage to all party members |only if heroic_dung()
|tip While the clones are alive they will cast Whirl of Illusion, this does AoE damage to everybody in the group every second.
Defeat Jandice Barov |scenariogoal 19260 |goto Scholomance/2 58.8,18.3
step
kill Boneweaver##59193+, Rattlegore##59153 |goto Scholomance/2 48.6,26.7
|tip Clearing all of the Boneweavers in the room will begin the Rattlegore encounter.
|tip With each successful attack Rattlegore will gain a stack of Rusting. This increases his attack damage but lowers his attack and movement speeds. If the tank is getting hit too hard, kite Rattlegore around the room
|tip Bone Spike will target a random party member and do massive damage to them. This can be prevented if every party member keeps Bone Armor active
|tip Bone Armor is granted by clicking on the Bone Piles around the room
|tip Periodically a section of the room will be engulfed in Soulflame. Avoid the fire and be wary because it grows over time
Defeat Rattlegore |scenariogoal 19261 |goto Scholomance/2 48.6,26.7
step
map Scholomance/2
path follow loose; loop off; ants curved
path	43.2,26.5	36.4,26.8	36.7,37.4
Follow the path |goto 36.7,37.4 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
click Forbidden Rites and other Rituals Necromantic##214280
|tip You can find the tome near this area. It is usually found on one of the tables or in a stone alcove.
Destroy Forbidden Rites and other Rituals Necromantic |q 31440/3 |goto 36.0,47.1 |only if not heroic_dung()
Destroy Forbidden Rites and other Rituals Necromantic |q 31442/3 |goto 36.0,47.1 |only if heroic_dung()
only if haveq(31440) or haveq(31442)
step
map Scholomance/2
path follow loose; loop off; ants curved
path	39.6,47.5	46.4,47.2
Follow the path |goto 46.4,47.2 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Lilian Voss##58722 |goto 51.4,47.1
_Phase 1:_
|tip Lilian will Shadow Shiv a random player after jumping onto them. Run away from allies
|tip Death's Grasp will pull every party member to Lilian and will be followed by Dark Blaze. Dark Blaze causes every player to start leaving a trail of fire behind them. Kite fire away from allies
_Phase 2 (begins at 60%):_
|tip She will periodically cast Blazing Soul which does fire damage to all players.
|tip For every melee attack Lilian lands she will unleash another Blazing Soul. Kite her around
|tip If you are targetedy by Fixate Anger, run away
_Phase 3:_
|tip Be watchful of who Lilian's Soul is Fixating on, this is the highest source of damage during the fight
|tip You will continue to be pulled in by Death's Grasp, keep an area clear of Dark Blaze
Defeat Lilian Voss |scenariogoal 19262 |goto 51.4,47.1
step
map Scholomance/2
path follow loose; loop off; ants curved
path	54.3,55.6	54.2,67.1
Follow the path |goto 54.2,67.1 < 12
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
click The Dark Grimoire##214277
|tip You can find the tome near this area. It is usually found on one of the tables.
Destroy The Dark Grimoire |q 31440/4 |goto Scholomance/2 47.1,73.1 |only if not heroic_dung()
Destroy The Dark Grimoire |q 31442/4 |goto Scholomance/2 47.1,73.1 |only if heroic_dung()
only if haveq(31440) or haveq(31442)
step
map Scholomance/2
path follow loose; loop off; ants curved
path	47.9,83.4	48.0,88.9	57.5,89.1
path	Scholomance/3 49.9,20.8
Follow the path |goto Scholomance/3 49.9,20.8 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Darkmaster Gandling##59080 |goto Scholomance/4 49.9,38.5
|tip Immolate will be used on a random party member
|tip Darkmaster Gandling will cast Rise!. This summons many Failed Students that need to be killed. During this cast Darkmaster Gandling takes reduced damage
|tip Periodically a random party member will be teleported to one of Gandling's study rooms for a Harsh Lesson
|tip This party member must kill the Expired Test Subjects and make their way back to the bosses room. If the healer gets trapped in one of these rooms, the Fresh Test Subjects around the room will serve as useful bombs. Dispel the _Explosive Pain_ off of them to deal AoE damage
kill 1 Darkmaster Gandling##59080 |q 31447/1 |goto Scholomance/4 49.9,38.5 |only if haveq(31447)
kill 1 Darkmaster Gandling##59080 |q 31448/1 |goto Scholomance/4 49.9,38.5 |only if haveq(31448)
Defeat Darkmaster Gandling |scenariostage 1 |goto Scholomance/4 49.9,38.5
step
talk Talking Skull##64562
turnin The Four Tomes##31440 |goto Scholomance/3 49.2,21.2
only if not completedq(31440) and not heroic_dung()
step
talk Talking Skull##64562
turnin An End to the Suffering##31447 |goto Scholomance/3 49.2,21.2
only if not completedq(31447) and not heroic_dung()
step
talk Spirit of Lord Alexei Barov##64563
turnin The Four Times##31442 |goto Scholomance/3 49.2,21.2
only if not completedq(31442) and heroic_dung()
step
talk Spirit of Lord Alexei Barov##64563
turnin An End to the Suffering##31448 |goto Scholomance/3 49.2,21.2
only if not completedq(31448) and heroic_dung()
step
Congratulations, you have completed Scholomance |only if default
Congratulations, you have completed Scholomance (Heroic) |only if heroic_dung()
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Classic Dungeons\\Shadowfang Keep",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the Shadowfang Keep dungeon. This dungeon is located in the Silverpine Forest on the continent of Eastern Kingdoms and is home to Vincent Godrey and his renegades. This dungeon ranges from level 10 to 30.",
mapid=310,
achieveid={631},
patch='30200',
condition_suggested=function() return level>=10 and level<=30 end,
keywords={"SFK, Silverpine, Forest"},
},[[
step
label "start"
Press _I_ and queue for Shadowfang Keep or enter the dungeon with your group |goto Shadowfang Keep/1 69.5,61.0 |c
step
talk Packleader Ivar Bloodfang##47006
accept Sniffing Them Out##27917 |goto Shadowfang Keep/1 62.2,57.3
only if not completedq(27917)
step
map Shadowfang Keep/1
path follow loose; loop off; ants curved
path	63.9,57.6	70.0,58.1	72.8,50.5
path	61.1,44.4	60.7,54.9	58.5,63.8
Follow the path |goto Shadowfang Keep/1 58.5,63.8 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Baron Ashbury##46962
|tip Baron Ashbury will periodically throw everyone in the air using Asphyxiate, dropping player health to 1 over 6 seconds
|tip Following Asphyxiate, he will use Stay of Execution. This will heal all party members to 50% |only if not heroic_dung()
|tip Following Asphyxiate, he will use Stay of Execution. This will heal all party members for 10% of their health and himself for 5% health every second until interrupted |only if heroic_dung()
|tip Ashbury will channel Pain and Suffering on a random player, dealing increasing shadow damage over 6 seconds
|tip Wracking Pain will deal shadow damage and increase shadow damage taken by 20% for each stack |only if heroic_dung()
|tip At 25% health, Ashbury will use Calamity. This will deal damage every second to the group and increase in damage until he or the party dies. Soft enrage |only if heroic_dung()
kill 1 Baron Ashbury##46962 |q 27917/1 |only if haveq(27917)
Defeat Baron Ashbury |scenariogoal 24774 |goto Shadowfang Keep/1 67.8,72.9
step
talk Packleader Ivar Bloodfang##47006
turnin Sniffing Them Out##27917 |goto Shadowfang Keep/1 66.4,72.1
accept Armored to the Teeth##27920 |goto Shadowfang Keep/1 66.4,72.1
only if not completedq(27920)
step
map Shadowfang Keep/1
path follow loose; loop off; ants curved
path	60.2,69.9	61.3,65.3	58.5,64.6
path	56.0,66.5	49.3,62.5	38.3,39.0
Follow the path |goto Shadowfang Keep/1 38.3,39.0 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Shadowfang Keep/2
path follow loose; loop off; ants curved
path	61.3,11.9	54.1,14.9	45.2,35.9
path	38.8,54.7
Follow the path |goto Shadowfang Keep/2 38.8,54.7 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Baron Silverlaine##3887
|tip He will cast Veil of Shadow, which reduces healing taken by 50%. Decurse this as often as possible
|tip Cursed Veil will deal shadow damage to the entire group and reduce healing by 75% for 8 seconds. Dispel this whenever possible |only if heroic_dung()
|tip At 70% and 35% he will cast Summon Worgen Spirits |only if not heroic_dung()
|tip At 90%, 60% and 30% he will cast Summon Worgen Spirits |only if heroic_dung()
|tip Odo the Blindwatcher just deals damage
|tip Razorclaw the Butcher stuns targets furthest away from them. He also drains health based on his damage done
|tip Rethilgore drains health from enemy targets, stunning them. Heals for twice the amount that he drains
|tip Wolf Master Nandos summons Lupine Spirits with low health
kill 1 Baron Silverlaine##3887 |q 27920/1 |goto Shadowfang Keep/2 31.2,73.3 |only if haveq(27920)
Defeat Baron Silverlaine |scenariogoal 24779 |goto Shadowfang Keep/2 31.2,73.3
confirm
step
map Shadowfang Keep/2
path follow loose; loop off; ants curved
path	33.1,82.4	31.0,87.9	26.7,90.2
path	Shadowfang Keep/1 14.4,89.2
Run up the stairs  |goto Shadowfang Keep/1 14.4,89.2 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Shadowfang Keep/1
path follow loose; loop off; ants curved
path	19.9,92.6	25.6,72.5	26.6,70.1
Follow the path |goto 26.6,70.1 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Commander Springvale##4278
|tip Springvalve will use Malefic Strike to gain Unholy Power for his abilities
|tip At 3 charges of Unholy Power, he will use Shield of the Perfidious. This deals shadow damage 6 times over 3 seconds in a 25 degree frontal cone |only if not heroic_dung()
|tip At 3 charges of Unholy Power, he will use Shield of the Perfidious. This deals shadow damage 6 times over 3 seconds in a 150 degree frontal cone |only if heroic_dung()
|tip Occasionally he will Desecrate an area under a player, slowing their movement speed and dealing damage. Move out of this quickly
|tip At 3 Unholy Power, Springvalve can use Word of Shame; this places a dot on a random player dealing 5% of max health every 3 seconds until the encounter ends |only if heroic_dung()
|tip Periodically, Springvalve will summon adds. Casters should stay away from Guardsman to prevent being interrupted |only if heroic_dung()
_TANK/DAMAGE:_ |only if heroic_dung() |grouprole TANK or DAMAGE
|tip Interrupt Unholy Empowerment from Guardman and Officers and Forsaken Ability from Officers |only if heroic_dung() |grouprole TANK or DAMAGE
_HEALER:_ |only if heroic_dung() |grouprole HEALER
|tip Guardsman will use Mortal Strike on the tank. Prepare for this reduction in healing |only if heroic_dung() |grouprole HEALER
kill 1 Commander Springvale##4278 |q 27920/2 |goto Shadowfang Keep 28.4,58.6 |only if haveq(27920)
Defeat Commander Springvale |scenariogoal 24780 |goto Shadowfang Keep 28.4,58.6
confirm
step
map Shadowfang Keep/1
path follow loose; loop off; ants curved
path	32.9,70.8	36.0,67.7	Shadowfang Keep/7 25.0,75.2
Go down the steps |goto Shadowfang Keep/7 25.0,75.2
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Shadowfang Keep/7
path follow loose; loop off; ants curved
path	28.6,74.6	39.6,79.1
Follow the path |goto 39.6,79.1
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Packleader Ivar Bloodfang##47006
turnin Armored to the Teeth##27920 |goto Shadowfang Keep/7 48.8,83.0
accept Fighting Tooth and Claw##27921 |goto Shadowfang Keep/7 48.8,83.0
only if not completedq(27921)
step
map Shadowfang Keep/7
path follow loose; loop off; ants curved
path	49.6,86.5	51.4,83.5	54.0,88.1
path	54.2,94.2	56.3,95.3	58.3,85.9
path	66.6,89.2	72.8,65.0	69.8,58.8
path	45.4,46.5	41.8,46.5	42.3,41.3
path	45.4,41.0	49.3,22.1	46.4,21.2
path	44.6,30.7
Follow the path |goto 44.6,30.7 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Shadowfang Keep/3
path follow loose; loop off; ants curved
path	52.2,66.0	44.6,61.1	49.2,45.2
path	54.0,26.8	58.0,11.7	66.4,16.4
path	64.9,36.1	53.4,81.4	45.5,79.9
path	43.6,89.7	51.6,91.1	50.5,79.3
path	43.2,85.6	50.1,92.7	Shadowfang Keep/4 49.3,75.2
Follow this path |goto Shadowfang Keep/4 49.3,75.2 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Lord Walden##46963 |goto Shadowfang Keep/4 54.2,54.3
|tip Lord Walden will use Ice Shards. These explode on the ground. Stay out of the impact areas
|tip He will also Conjure Poisonous Mixture. Stay away from the poison on the ground
|tip Walden will use Conjure Mystery Toxin. If the result is Toxic Coagulant, keep moving to keep your stacks below 3 |only if heroic_dung()
|tip If the conjured toxin is Toxic Catalyst, use any DPS cooldowns you have, as you will have 100% critical strike |only if heroic_dung()
_HEALER:_ |only if heroic_dung() |grouprole HEALER
|tip Pay special attention to party members afflicted with Toxic Coagulent and Toxic Catalyst |only if heroic_dung() |grouprole HEALER
kill 1 Lord Walden##46963 |q 27921/1 |goto Shadowfang Keep/4 54.2,54.3 |only if haveq(27921)
Defeat Lord Walden |scenariogoal 24775 |goto Shadowfang Keep/4 54.2,54.3
step
talk Packleader Ivar Bloodfang##47006
turnin Fighting Tooth and Claw##27921 |goto Shadowfang Keep/4 60.2,41.2
accept Fury of the Pack##27968 |goto Shadowfang Keep/4 60.2,41.2
only if not completedq(27968)
step
map Shadowfang Keep/4
path follow loose; loop off; ants curved
path	60.9,29.1	49.1,26.8	38.7,34.2
path	34.4,51.2	Shadowfang Keep/5 39.0,70.6	Shadowfang Keep/5 48.8,75.6
Go up the steps |goto Shadowfang Keep/5 48.8,75.6
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Shadowfang Keep/5
path follow loose; loop off; ants curved
path	50.9,68.6	62.3,63.8	64.0,49.5
path	59.5,35.2	59.8,28.4	49.3,26.0
path	40.2,33.4	34.8,47.3	36.3,64.2
path	Shadowfang Keep/6 48.9,90.6
Follow the path and go up the steps |goto Shadowfang Keep/6 48.9,90.6
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Shadowfang Keep/6
path follow loose; loop off; ants curved
path	50.9,82.6	60.9,44.1
Follow the path |goto Shadowfang Keep/6 60.9,44.1 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Lord Godfrey##46964
|tip Lord Godfrey will shoot Cursed Bullets at a random player; interrupt this quickly
|tip Godfrey will apply Mortal Wound to his current target, reducing healing by 5% per stack. Stacks 10 times
|tip Occasionally, he will Summon Bloodthirsty Ghouls where the 6 bullets land. Kill these ghouls when they spawn
|tip When Godfrey uses Pistol Barrage, he will deal massive damage in a 60 degree frontal cone. Do not stand in front of him during this |only if heroic_dung()
kill 1 Lord Godfrey##46964 |q 27968/1 |only if haveq(27968)
Defeat Lord Godfrey |scenariostage 1 |goto Shadowfang Keep/6 61.6,23.8
step
talk Packleader Ivar Bloodfang##47006
turnin Fury of the Pack##27968 |goto Shadowfang Keep/6 58.7,53.2
only if not completedq(27968)
step
Congratulations, you have completed Shadowfang Keep! |only if not heroic_dung()
Congratulations, you have completed Shadowfang Keep (Heroic)! |only if heroic_dung()
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Classic Dungeons\\The Stormwind Stockade",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing The Stormwind Stockade dungeon. This dungeon is located in Stormwind City on the continent of Eastern Kingdoms and is a guarded prison containing prominent Defias criminals. This dungeon ranges from level 10 to 30.",
mapid=225,
achieveid={633},
patch='30001',
condition_suggested=function() return level>=10 and level<=30 end,
keywords={"Hogger"},
},[[
step
label "start"
Press _I_ and queue for The Stockade or enter the dungeon with your group |goto The Stockade/1 50.1,68.2 |c
step
talk Rifle Commander Coe##46417
accept The Good Ol' Switcheroo##27733 |goto The Stockade 50.0,58.5
only if not completedq(27733)
step
talk Warden Thelwater##46409
accept The Gnoll King##27739 |goto 42.55,53.98
only if not completedq(27739)
step
talk Nurse Lillian##46410
accept By Fire Be Saved!##27737 |goto 57.48,53.79
only if not completedq(27737)
step
map The Stockade/1
path follow loose; loop off; ants curved
path	50.0,45.5	50.0,29.8
Follow the path |goto 50.0,29.8 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Randolph Moloch##46383 |goto 50.8,19.2
|tip Randolph will start Wildly Stabbing occasionally, attacking significanly faster but at a reduced chance to hit
|tip He will use Sweep, attacking both the tank and the closest additional party member
|tip At around 65% and 35% health, Randolph will Vanish, reappearing behind a random player and attacking them
kill 1 Randolph Moloch##46383 |q 27733/1 |goto 50.8,19.2 |only if haveq(27733)
Defeat Randolph Moloch |scenariogoal 24762 |goto 50.8,19.2
step
map The Stockade/1
path follow loose; loop off; ants curved
path	49.7,36.3	60.6,36.4	67.2,38.4
path	74.3,42.7
Follow the path |goto 74.3,42.7 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Lord Overheat##46264 |goto 81.0,48.0
|tip Lord Overheat will cast Rain of Fire, lasting for 9 seconds. Move out of the area targeted
|tip He will use Fireball on his current target
|tip Occasionally, he will target a party member with Overheat. This will deal fire damage over 9 seconds
collect Lord Overheat's Fiery Core##62305 |q 27737/1 |only if haveq(27737)
Defeat Lord Overheat |scenariogoal 24760 |goto 81.0,48.0
step
map The Stockade/1
path follow loose; loop off; ants curved
path	71.4,40.5	63.2,37.0	50.1,36.4
path	35.0,35.1	25.4,29.7
Follow the path |goto 25.4,29.7 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Hogger##46254 |goto 22.1,27.0
|tip Hogger will use Vicious Slice, dealing damage instantly as well as 15% of the target's health over 6 seconds
|tip He will also use Maddening Call, dealing damage to the party and reducing attack and cast speed by 60%
|tip At 30%, Hogger will Enrage. This will dramatically increase his damage output
_TANK/DAMAGE:_ |grouprole TANK or DAMAGE
|tip Interrupt Maddening Call as often as possible |grouprole TANK or DAMAGE
kill 1 Hogger##46254 |q 27739/1 |only if haveq(27739)
Defeat Hogger |scenariogoal 1/34403 |goto 22.1,27.0
step
talk Warden Thelwater##46409
turnin The Gnoll King##27739 |goto 22.1,27.2
only if not completedq(27739)
step
talk Nurse Lillian##46410
turnin By Fire Be Saved!##27737 |goto 57.48,53.79
|tip Located back at the entrance.
only if not completedq(27737)
step
talk Rifle Commander Coe##46417
turnin The Good Ol' Switcheroo##27733 |goto 50.0,58.5
|tip Located back at the entrance.
only if not completedq(27733)
step
Congratulations, you have completed The Stockade!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Classic Dungeons\\Stratholme: Main Gate",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the Stratholme: Main Gate dungeon. This dungeon is located in the Eastern Plaguelands on the continent of Eastern Kingdoms and is the city in which the Order of the Silver Hand was founded. This dungeon ranges from level 15 to 30.",
mapid=317,
achieveid={646},
patch='30001',
condition_suggested=function() return level>=15 and level<=30 end,
keywords={"Scourge, Strat, Eastern, Plaguelands, Balnazaar"},
},[[
step
label "start"
Press _I_ and queue for Stratholme: Main Gate or enter the dungeon with your group |goto Stratholme/1 68.0,88.5 |c
step
talk Packmaster Stonebruiser##45323
accept The Great Ezra Grimm##27192 |goto Stratholme 67.0,89.2
only if not completedq(27192)
step
talk Master Craftsman Wilhelm##45201
accept Cutting the Competition##27185 |goto 65.3,87.2
only if not completedq(27185)
step
talk Crusade Commander Eligor Dawnbringer##45200
accept The Dreadlord Balnazzar##27208 |goto 66.3,86.7
accept Of Love and Family##27305 |goto 66.3,86.7
accept Retribution##27223 |goto 66.3,86.7
only if not completedq(27208) and not completedq(27305) and not completedq(27223)
step
map Stratholme/1
path follow loose; loop off; ants curved; dist 10
path	66.3,84.9	66.2,72.6	67.2,61.7
path	63.0,57.3	59.5,58.1	58.0,60.4
Follow the path |goto 58.0,60.4 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Stratholme Courier##11082 |goto 54.5,70.8
click Premium Siabi Tobacco##176248
kill 1 Ezra Grimm##11058 |goto 54.5,70.8
|tip He will show up after you click the box.
collect Siabi's Premium Tobacco##13172 |q 27192/1 |goto 54.5,70.8
only if haveq(27192)
step
click Postbox Parcel##176360 |goto 54.2,71.3
|tip Be prepared, 3 Undead Postman will appear and attack the party
confirm
step
map Stratholme/1
path follow loose; loop off; ants curved; dist 10
path	57.9,61.4	59.8,52.3
Follow the path |goto 59.8,52.3 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
click Postbox Parcel##176360 |goto Stratholme/1 62.5,52.0
|tip Open the King's Square Postbox. Be prepared, 3 Undead Postman will appear and attack the party
confirm
step
map Stratholme/1
path follow loose; loop off; ants curved; dist 10
path	60.2,49.3	60.0,41.7	60.1,33.5
Follow the path |goto 60.1,33.5 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Hearthsinger Forresten##10558
|tip Occasionally, Forresten will put a player to sleep with Enchanting Lullaby. Interrupt him or dispel the debuff
|tip Demoralizing Shout will reduce the melee attack power of anyone within 10 yards
|tip Shoot will hit random party members for minor physical damage
|tip Spread out to avoid excessive damage from _Multi-Shot_
_DAMAGE:_ |grouprole DAMAGE
|tip Stay behind him while you DPS to avoid the 50% increased dodge chance he gains from Incorporeal Defense |grouprole DAMAGE
Defeat Hearthsinger Forresten |scenariogoal 24910 |goto 59.8,26.7
confirm
step
map Stratholme/1
path follow loose; loop off; ants curved; dist 10
path	61.3,29.5	69.1,23.3
Follow the path |goto 69.1,23.3 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill The Unforgiven##10516 |goto 73.6,20.4
|tip Unrelenting Anguish is a channeled attack that deals heavy shadow damage over 5 seconds. Interrupt this
|tip The Unforgiven is accompanied by 4 Vengeful Phantoms. These phantoms will use Frost Shock, dealing frost damage and slowing movement speed
|tip Clean up the phantoms and kill The Unforgiven
kill The Unforgiven##10516 |q 27223/1 |goto 73.6,20.4 |only if haveq(27223)
Defeat The Unforgiven |scenariogoal 1/24909 |goto 73.6,20.4
confirm
step
click Postbox Parcel##176360 |goto 69.9,25.3
|tip Click the Market Row Postbox. Be prepared, 3 Undead Postman and Postmaster Malown will appear and attack the party
|tip Malown will Backhand the tank, stunning them for 2 seconds
|tip Be sure to keep him away from any packs of mobs, as he will Fear a player occasionally
|tip Curse of Tongues will slow spellcasting by 50% on any player afflicted. Dispel this when possible
Defeat Postmaster Malown |scenariogoal 1/24914 |goto 69.9,25.3
confirm
step
map Stratholme/1
path follow loose; loop off; ants curved; dist 10
path	67.5,26.6	59.8,31.2	55.0,27.2
path	49.7,23.3
Follow the path |goto 49.7,23.3 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Timmy the Cruel##10808 |goto Stratholme 50.1,17.4
|tip Timmy will gain extra attacks through Thrash
|tip Ravenous Claw will heal Timmy for the damage he deals with it
|tip At 50% health, timmy will Enrage. This will increase his damage dealt by 10% and his attack speed by 30%
_TANK:_ |grouprole TANK
|tip Save defensive cooldowns for Enrage |grouprole TANK
kill Timmy the Cruel##10808 |q 27223/2 |goto Stratholme 50.1,17.4 |only if haveq(27223)
Defeat Timmy the Cruel |scenariogoal 24912 |goto Stratholme 50.1,17.4
confirm
step
map Stratholme/1
path follow loose; loop off; ants curved; dist 10
path	48.9,23.4	42.7,27.8	39.4,28.9
path	35.6,30.6	30.8,36.2	29.5,33.4
path	27.6,35.4	26.4,32.8	23.8,35.7
path	27.4,43.4
Follow the path |goto 27.4,43.4 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Commander Malor##11032
|tip Ground Smash will deal physical damage to anyone within 10 yards and stun them for 2 seconds
|tip Head Crack will reduce the tank's stamina for 15 seconds
|tip Interrupt Shadow Bolt Volley so it doesn't deal damage to the entire group
Defeat Commander Malor |scenariogoal 24915 |goto 30.6,39.9
confirm
step
map Stratholme/1
path follow loose; loop off; ants curved; dist 10
path	27.4,43.3	20.6,50.5	15.4,56.0
path	12.4,49.7
Follow the path |goto 12.4,49.7 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
click Blacksmithing Plans##173232
|tip The Hammersmith has only one ability - Bone Smelt.
|tip This will deal heavy fire damage to his current target and reduce their armor by 50% for 20 seconds
kill Risen Hammersmith##11120 |q 27185/1 |goto 12.5,47.5
only if haveq(27185)
step
map Stratholme/1
path follow loose; loop off; ants curved; dist 10
path	8.8,51.3	10.5,55.3	7.6,58.2
path	5.9,54.8
Follow the path |goto 5.9,54.8 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Willey Hopebreaker##10997
click Scarlet Cannon##176216
click Cannonball Stack##176215
|tip Every 5 seconds, Willey will Summon Risen Riflemen. You must gather Scarlet Cannonballs and use the Scarlet Cannons to kill them
|tip Knock Away will deal damage to the tank and knock him back
|tip He will occasionally Pummel anyone standing close, interrupting any spell being cast and dealing physical damage
Defeat Willey Hopebreaker |scenariogoal 24916 |goto 3.6,50.2
confirm
step
map Stratholme/1
path follow loose; loop off; ants curved; dist 10
path	5.6,54.6	7.7,58.8	10.7,55.4
path	8.7,51.5	11.6,48.3	15.3,56.2
path	20.6,50.6	23.2,55.7	19.9,58.9
path	23.8,67.1	21.1,69.8	24.6,77.4
Follow the path |goto 24.6,77.4 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Instructor Galford##10811
click Unfinished Painting##177287
|tip This is on the wall next to you.
|tip Fire Nova will deal damage to anyone within 10 yards
|tip Galford will use Pyroblast on the tank, dealing heavy fire damage and ticking for additional damage over 12 seconds
|tip Occasionally, the tank will be hit with Burning Winds. This will deal fire damage and stun for 5 seconds. Dispel
collect Of Love and Family##14679 |q 27305/1 |goto 27.4,76.2 |only if haveq(27305)
Defeat Instructor Galford |scenariogoal 24917 |goto 27.4,75.2
confirm
step
kill 1 Balnazzar##10813
|tip Mind Blast will deal shadow damage to his current target
|tip Shadow Shock will hit the entire group with shadow damage
|tip Randomly, Balnazzar will use Domination on a player, mind controlling them for 8 seconds
|tip He will also randomly Sleep players, lasting 6 seconds
|tip Anyone within 8 yards is succeptible to Psychic Scream. This causes players to flee for 4 seconds
kill 1 Balnazzar##10813 |q 27208/1 |goto 19.3,83.1 |only if haveq(27208)
Defeat Balnazzar |scenariogoal 1/27861 |goto 19.3,83.1
step
talk Crusade Commander Eligor Dawnbringer##45200
turnin The Dreadlord Balnazzar##27208 |goto 21.6,80.8
only if not completedq(27208)
step
talk Crusade Commander Eligor Dawnbringer##45200
turnin Of Love and Family##27305 |goto 21.6,80.8
only if not completedq(27305)
step
talk Crusade Commander Eligor Dawnbringer##45200
turnin Retribution##27223 |goto 21.6,80.8
only if not completedq(27223)
step
talk Packmaster Stonebruiser##45323
turnin The Great Ezra Grimm##27192 |goto 21.6,79.8
only if not completedq(27192)
step
talk Master Craftsman Wilhelm##45201
turnin Cutting the Competition##27185 |goto 24.2,76.3
only if not completedq(27185)
step
Congratulations, you have completed Stratholme: Main Gate!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Classic Dungeons\\Stratholme: Service Entrance",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the Stratholme: Service Entrance dungeon. This dungeon is located in the Eastern Plaguelands on the continent of Eastern Kingdoms and is the city in which the Order of the Silver Hand was founded. This dungeon ranges from level 15 to 30.",
mapid=317,
achieveid={646},
patch='30001',
condition_suggested=function() return level>=15 and level<=30 end,
keywords={"Scourge, Strat, Eastern, Plaguelands, Baron, Rivendare"},
},[[
step
label "start"
Press _I_ and queue for Stratholme: Service Entrance or enter the dungeon with your group |goto Stratholme/2 67.7,86.3 |c
step
talk Packmaster Stonebruiser##45328
accept Liquid Gold##27352 |goto Stratholme/2 67.7,82.2
step
talk Archmage Angela Dosantos##45330
accept Argent Reinforcements##27359 |goto 67.1,72.6
step
talk Crusade Commander Korfax##45206
accept Man Against Abomination##27228 |goto 67.9,72.1
step
talk Crusade Commander Eligor Dawnbringer##45329
accept Lord Aurius Rivendare##27227 |goto 68.0,72.7
step
talk Master Craftsman Wilhelm##45331
accept Weapons for War##27230 |goto 68.6,73.1
step
click Gauntlet Gate##3614
Go through this gate |goto 63.2,65.4 < 5
confirm
step
stickystart "Banshee"
click Gauntlet Gate##3614
Go through this gate |goto 62.9,57.5 < 5
confirm
step
click Blacksmithing Plans##173232
kill Black Guard Swordsmith##11121 |q 27230/1 |goto 72.7,52.4
only if haveq(27230)
step
kill Baroness Anastari##10436
|tip Anastari will Possess random players. Attack them until they reach 50% health
|tip Dispel Silence and Banshee Curse whenever possible
|tip After you kill this boss, make sure to go inside the doors and kill the Acolyte's.
kill Thuzadin Acolyte##10399+
Defeat Baroness Anastari |scenariogoal 24919 |goto 74.8,46.8
step
map Stratholme/2
path follow smart; loop off; ants curved; dist 15
path	73.4,46.3	70.4,38.1	68.0,33.0
path	67.1,26.4
Finish killing the Thuzadin Acolytes and follow the path |goto 67.1,26.4 < 12
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Maleki the Pallid##10438
|tip Dispel Drain Life and Ice Tomb from players
|tip When possible, dispel Frost Armor from Maleki
|tip After you kill this boss, make sure to go inside the doors and kill the Acolyte's.
kill Thuzadin Acolyte##10399+
Defeat Maleki the Pallid |scenariogoal 24920 |goto 68.1,20.0
step
map Stratholme/2
path follow smart; loop off; ants curved; dist 15
path	66.9,22.1	59.1,32.2	58.0,40.4
Finish killing the Thuzadin Acolytes and follow the path |goto 58.0,40.4
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Nerub'enkan##10437
|tip After you kill this boss, make sure to go inside the doors and kill the Acolyte's.
kill Thuzadin Acolyte##10399+
Defeat Nerub'enkan |scenariogoal 24921 |goto 56.5,46.8
step
map Stratholme/2
path follow smart; loop off; ants curved; dist 15
path	57.7,45.8	57.9,39.1	59.2,31.5
path	57.3,19.4
Finish killing the Thuzadin Acolytes and follow the path |goto 57.3,19.4 < 12
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Magistrate Barthilas##10435
|tip Casters should stay at least 10 yards away to avoid interruption caused by Crowd Pummel
|tip Barthilas will gain increased damage as Furious Anger stacks. This is a soft enrage
Defeat Magistrate Barthilas |scenariogoal 24930 |goto 57.0,15.1
confirm
step
label "Banshee"
kill Wailing Banshee##10464+ |only if haveq(27359)
collect 4 Banshee Essence##41504 |q 27359/1 |goto 66.5,49.3 |only if haveq(27359)
click Crate##237149 |only if haveq(27352) and itemcount(13180) < 1
collect Stratholme Holy Water##13180 |q 27352/1 |only if haveq(27352) and itemcount(13180) < 1
|tip These are found throughout the instance.
step
kill Venom Belcher##10417+, Bile Spewer##10416
|tip Clear this room of Abominations.
Defeat Venom Belcher and Bile Spewer |scenariogoal 2/24922 |goto 47.3,19.9
step
kill Ramstein the Gorger##10439
|tip Knockout will stuck and knock back the tank
|tip Ranged should stay at least 10 yards away to avoid Trample damage
Defeat Ramstein the Gorger |scenariogoal 3/24923 |goto 47.3,19.9
step
Before you kill the next boss, you will have a wave a mobs come from the left gate.
Slay these little skeletons
confirm
step
You will have a wave of elite mobs come from the doorway.
kill Black Guard Sentry##10394+
Defeat Black Guard Sentry |scenariogoal 4/24924 |goto 47.3,19.9
step
kill Lord Aurius Rivendare##45412
|tip Kill Mindless Skeletons quickly so Rivendare cannot sacrifice them for health
|tip Avoid standing in front of Rivendare as he cleaves
|tip Unholy Aura will deal shadow damage to everyone within 30 yards every 2 seconds
Defeat Lord Aurius Rivendare |scenariogoal 4/27860 |goto 37.4,19.9
step
talk Crusade Commander Eligor Dawnbringer##45329
turnin Lord Aurius Rivendare##27227 |goto 44.8,20.4
step
talk Crusade Commander Korfax##45206
turnin Man Against Abomination##27228 |goto 43.9,14.1
step
talk Archmage Angela Dosantos##45330
turnin Argent Reinforcements##27359 |goto 42.5,12.7
step
talk Master Craftsman Wilhelm##45331
turnin Weapons for War##27230 |goto 49.8,18.4
step
talk Packmaster Stonebruiser##45328
turnin Liquid Gold##27352 |goto 49.7,22.4
step
Congratulations, you have completed Stratholme: Service Entrance!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Classic Dungeons\\Sunken Temple",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the Sunken Temple dungeon. This dungeon is located in the Swamp of Sorrows on the continent of Eastern Kingdoms and is a shrine to the Atal'ai trolls. This dungeon ranges from level 20 to 30.",
mapid=220,
achieveid={641},
patch='30003',
condition_suggested=function() return level>=20 and level<=30 end,
keywords={"Swamp, of, Sorrows, ST, Hakkar"},
},[[
step
label "start"
Press _I_ and queue for Sunken Temple or enter the dungeon with your group |goto The Temple of Atal'Hakkar/1 50.0,15.8 |c
step
talk Lord Itharius##46077
accept Jammal'an the Prophet##27604 |goto The Temple of Atal'Hakkar/1 50.0,17.3
accept Eranikus##27605 |goto The Temple of Atal'Hakkar/1 50.0,17.3
accept The Blood God Hakkar##27633 |goto The Temple of Atal'Hakkar/1 50.0,17.3
step
map The Temple of Atal'Hakkar/1
path follow smart; loop off; ants curved; dist 15
path	50.0,26.4	52.5,35.7	59.2,53.7
path	70.7,63.9	76.3,56.8
Follow the path |goto 76.3,56.8 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Jammal'an the Prophet##5710
|tip Clear the room before engaging the Prophet.
|tip Interrupt Ogom the Wretched's Shadow Bolt
|tip Kill the Earthgrab Totem and move out of Flamestrike
Loot the Head of Jammal'an from Jammal'an the Prophet |q 27604/1 |goto 76.1,38.7 |only if haveq(27604)
Defeat Jammal'an the Prophet |scenariogoal 24936 |goto 76.1,38.7
step
map The Temple of Atal'Hakkar/1
path follow smart; loop off; ants curved; dist 15
path	75.9,53.9	73.4,63.9	58.8,53.3
Follow the path |goto 58.8,53.3 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Dreamscythe##5721, Weaver##5720
|tip Avoid standing in front of the dragons or they will knock you back.
Defeat Dreamscythe |scenariogoal 24938 |goto 50.0,45.7
Defeat Weaver |scenariogoal 24937 |goto 50.0,45.7
step
map The Temple of Atal'Hakkar/1
path follow smart; loop off; ants curved; dist 15
path	41.1,53.4	31.0,62.2	24.2,60.2
Follow the path |goto 24.2,60.2 < 12
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
click Shrine of the Soulflayer##3365
kill Avatar of Hakkar##8443
|tip CC players affected by Cause Insanity
|tip Dispel Curse of Tongues whenever possible
Defeat Avatar of Hakkar |scenariogoal 24934 |goto 24.3,45.7
step
map The Temple of Atal'Hakkar/1
path follow smart; loop off; ants curved; dist 15
path	24.2,60.2	31.0,62.2	41.9,52.7
path	49.9,60.9	49.9,71.8
Follow the path |goto 49.9,71.8 < 12
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Hazzas##5722, Morphaz##5719
|tip Avoid standing in front of the dragons or they will knock you back.
Defeat Hazzas |scenariogoal 24940 |goto 49.4,81.3
Defeat Morphaz |scenariogoal 24939 |goto 49.4,81.3
step
kill Shade of Eranikus##5709
|tip Note that you will not be able to attack him if you haven't defeated the other bosses.
|tip Dispel players affected by Deep Slumber
|tip War Stomp will stun anyone within 5 yards
Defeat Shade of Eranikus |scenariogoal 1/34436 |goto 68.5,87.7
step
map The Temple of Atal'Hakkar/1
path follow smart; loop off; ants curved; dist 15
path	49.4,81.3	49.9,71.8	49.9,60.9
path	50.0,26.4	50.0,15.8
Follow the path back to the entrance |goto 50.0,15.8 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
You can either run to the beginning of the dungeon to turn in your quests |goto 50.0,15.8 < 80
Or
You can Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance
confirm
step
talk Lord Itharius##46077
turnin Jammal'an the Prophet##27604 |goto The Temple of Atal'Hakkar 50.0,17.2
turnin Eranikus##27605 |goto The Temple of Atal'Hakkar 50.0,17.2
turnin The Blood God Hakkar##27633 |goto The Temple of Atal'Hakkar 50.0,17.2
step
Congratulations, you have completed Sunken Temple!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Classic Dungeons\\Uldaman",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the Uldaman dungeon. This dungeon is located in the Badlands on the continent of Kalimdor and is an ancient titan city currently inhabited by Dark Iron dwarves. This dungeon ranges from level 15 to 30.",
mapid=230,
achieveid={638},
patch='30001',
condition_suggested=function() return level>=15 and level<=30 end,
keywords={"Uldaman, Badlands"},
},[[
step
label "start"
Press _I_ and queue for Uldaman or enter the dungeon with your group |goto Uldaman/1 67.0,72.7 < 100 |c
step
talk Olga Runesworn##46233
accept Behind Closed Doors##27676 |goto Uldaman,63.9,73.0
only if not completedq(27676)
step
talk Lead Prospector Durdin##46234
accept The Chamber of Khaz'mul##27672 |goto 63.7,72.6
only if not completedq(27672)
step
talk Kand Sandseeker##46247
accept It's What's Inside That Counts##27673 |goto 64.0,72.1
only if not completedq(27673)
step
map Uldaman/1
path follow loose; loop off; ants curved; dist 10
path	65.4,75.9	65.3,81.4	62.0,81.1
path	62.0,75.4	56.7,75.5	56.6,81.4
path	53.3,81.4	53.3,78.6
Follow the path |goto 53.3,78.6 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Revelosh##6910 |goto Uldaman 52.7,72.2
|tip Revelosh will use Chain Lightning, arcing to up to 2 additional targets. Interrupt this as often as possible
|tip He will also use Lightning Bolt on his primary target
Defeat Revelosh |scenariogoal 24971 |goto Uldaman 52.7,72.2
step
map Uldaman/1
path follow loose; loop off; ants curved; dist 10
path	51.3,72.5	48.2,72.5
Follow the path |goto 48.2,72.5 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
click the Keystone##2688 |goto 45.4,73.7 < 7
kill 1 Ironaya##7228 |goto 45.4,73.7 |only if default
|tip Arcing Smash is a frontal cone cleave attack. Don't stand in front of her
|tip Periodically, Ironaya will Knock Away her current target, dealing physical damage and knocking them back
|tip War Stomp will deal damage to everyone in melee range and stun them for 4 seconds
kill 1 Ironaya##7228 |q 27672/1 |goto 45.4,73.7 |only if haveq(27672)
Defeat Ironaya |scenariogoal 24972 |goto 45.4,73.7
step
Click the Complete Quest box in the top right corner.
turnin The Chamber of Khaz'mul##27672
accept Archaedas, The Ancient Stone Watcher##27677
only if not completedq(27677)
step
map Uldaman/1
path follow loose; loop off; ants curved; dist 10
path	43.6,69.3	41.7,66.4	38.9,65.0
path	36.1,64.4	36.5,59.9	35.2,58.3
path	34.9,56.0	32.4,54.5	31.1,56.9
Follow the path |goto 31.1,56.9 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Obsidian Sentinel##7023
|tip Obsidian Reflection will give the Sentinel a 20% chance to reflect the next spell cast at him
|tip Occasionally, the Sentinel will use Splintered Obisian. This lowers Obsidian Sentinel's damage and summons an Obsidian Shard
|tip These Shards possess the same Obsidian Reflection as the Sentinel
Obtain the Obsidian Power Core |q 27673/1 |goto Uldaman/1 28.7,61.7 |only if haveq(27673)
Defeat the Obsidian Sentinel |scenariogoal 24973 |goto Uldaman/1 28.7,61.7
confirm
step
map Uldaman/1
path follow loose; loop off; ants curved; dist 10
path	29.3,58.3	31.5,56.4	32.7,54.3
path	36.3,56.5	36.5,53.4	36.4,50.9
path	39.3,49.2	45.5,49.2
Follow the path |goto 45.5,49.2 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Ancient Stone Keeper##7206 |goto Uldaman/1 47.5,42.5
|tip Sand Storms will swirl towards random players, dealing physical damage and slowing them. Stay away from these
Retrieve the Titan Power Core |q 27673/2 |goto Uldaman/1 47.5,42.5 |only if haveq(27673)
Defeat the Ancient Stone Keeper |scenariogoal 24974 |goto Uldaman/1 47.5,42.5
confirm
step
map Uldaman/1
path follow loose; loop off; ants curved; dist 10
path	45.5,41.2	41.5,41.2	41.1,36.8
path	39.6,36.2	38.4,39.1	36.6,39.3
path	36.3,36.0	34.8,35.8	33.2,36.2
path	31.2,34.2	29.0,34.5
Follow the path |goto 29.0,34.5 < 6
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Galgann Firehammer##7291 |goto Uldaman/1 25.8,35.9 |only if default
|tip Galgann will use Fire Nova, dealing fire damage to all players within 10 yards
|tip Amplify Flames will increase the damage the tank takes from his fire spells
|tip He will randomly Flame Lash, stacking a fire DoT on players which decreases their fire resistance
|tip Shadowforge Geologists will use Flame Lash as well as Flame Strike, placing a pillar of fire on the ground. Avoid these areas
|tip Interrupt the Geologists as often as possible. Kill them first and then kill Galgann
kill 1 Galgann Firehammer##7291 |q 27676/1 |goto Uldaman/1 25.8,35.9 |only if haveq(27676)
Defeat Galgann Firehammer |scenariogoal 24975 |goto Uldaman/1 25.8,35.9
confirm
step
map Uldaman/1
path follow loose; loop off; ants curved; dist 10
path	28.2,33.7	30.1,34.8	31.5,33.1
path	32.3,28.1	28.0,21.3	24.2,26.9
Follow the path |goto 24.2,26.9 < 6
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Grimlok##4854 |goto Uldaman/1 21.3,24.6
|tip Chain Bolt will arc to up to 3 targets, dealing nature damage
|tip He will cast Lightning Bolt on the tank
|tip Bloodlust will increase one of his minion's attack speed by 30%. Dispel this if possible
|tip Shrink is a curse that reduces the strength and stamina of anyone within 5 yards
|tip The Jadespine Basilisk will use Reflection, reflecting spells for 5 seconds. Dispel this or have melee kill it
|tip Crystalline Slumber will stun the Basilisk's target and deal arcane damage
|tip Kill the adds and then kill Grimlok
Defeat Grimlok |scenariogoal 24976 |goto Uldaman/1 21.3,24.6
confirm
step
map Uldaman/1
path follow loose; loop off; ants curved; dist 10
path	24.9,26.0	28.0,21.3	31.5,26.6
path	35.8,29.7	39.2,30.1	40.9,33.7
path	45.1,32.3	45.3,28.4	44.1,24.5
click Temple Door##1370
Follow the path and open the Temple Door |goto 44.1,24.5 < 6
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
click Altar of Archaedas
Defeat the 4 guardians that spawn
Activate the Altar of Archaedas |goto Uldaman/1 41.7,16.7 < 5
confirm
step
map Uldaman/1
path follow loose; loop off; ants curved; dist 10
path	41.2,15.0	39.4,9.0	44.6,5.3
path	Uldaman/2 65.1,43.9	Uldaman/2 69.3,57.7
path	Uldaman/2 59.7,64.5	Uldaman/2 58.1,59.5
click Temple Door##1370
Follow the path and open the Temple Door |goto Uldaman/2 58.1,59.5 < 6
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
click Altar of Archaedas |goto Uldaman/2 56.0,53.0
kill 1 Archaedas##2748 |goto Uldaman/2 55.4,50.7
|tip Archaedas calls an Earthen Custodian every 10 seconds to assist him
|tip At 66% health, he will awaken 6 Earthen Guardians. These guardians will use Whirlwind, run away when they do this
|tip At 33% health, he will awaken 2 Vault Warders. These warders will Trample anyone within 10 yards for physical damage. Run away when they do this
|tip Archaedas will occasionally Ground Tremor, stunning anyone within 20 yards
|tip Kill the adds when they spawn, then switch back to Archaedas
kill 1 Archaedas##2748 |q 27677/1 |goto Uldaman/2 55.4,50.7 |only if haveq(27677)
Defeat Archaedas |scenariogoal 1/34442 |goto Uldaman/2 55.4,50.7
step
Click the Quest Complete box in the top right corner.
turnin Archaedas, The Ancient Stone Watcher##27677
only if not completedq(27677)
step
click The Discs of Norgannon##131474
accept The Platinum Discs##2278 |goto 50.0,33.6
only if not completedq(2278)
step
talk Lore Keeper of Norgannon##7172
Ask him about the Earthen
Learn the lore that the stone watcher has to offer. |q 2278/1 |goto 48.0,37.2
only if haveq(2278)
step
click The Discs of Norgannon##131474
turnin The Platinum Discs##2278 |goto 50.0,33.6
accept The Platinum Discs##2280 |goto 50.0,33.6
only if not completedq(2280)
step
map Uldaman/2
path follow loose; loop off; ants curved; dist 10
path	52.5,41.8	59.7,64.6
path	69.5,57.6	65.7,45.3
path	Uldaman/1 44.7,5.2	Uldaman/1 39.2,9.0	Uldaman/1 41.6,16.7
path	Uldaman/1 43.6,23.2	Uldaman/1 45.4,28.9	Uldaman/1 44.5,32.9
path	Uldaman/1 41.2,33.4	Uldaman/1 39.5,30.3	Uldaman/1 37.0,29.8
path	Uldaman/1 32.6,28.0	Uldaman/1 31.3,34.1	Uldaman/1 33.5,36.3
path	Uldaman/1 35.8,35.4	Uldaman/1 36.6,39.7	Uldaman/1 38.5,39.2
path	Uldaman/1 39.9,35.9	Uldaman/1 41.2,37.8	Uldaman/1 41.6,41.2
path	Uldaman/1 45.6,41.3	Uldaman/1 45.3,49.1	Uldaman/1 38.4,49.1
path	Uldaman/1 36.4,51.1	Uldaman/1 36.6,54.7	Uldaman/1 36.2,58.0
path	Uldaman/1 35.9,64.0	Uldaman/1 40.6,65.8	Uldaman/1 47.6,72.5
path	Uldaman/1 53.3,72.6	Uldaman/1 53.2,81.4	Uldaman/1 56.7,81.0
path	Uldaman/1 56.8,75.5	Uldaman/1 62.0,75.6	Uldaman/1 61.9,81.2
path	Uldaman/1 65.5,81.0	Uldaman/1 65.5,72.4
You can either run to the beginning of the dungeon to turn in your quests.
Or
You can Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance.
Return to the beginning of the instance |goto Uldaman/1 65.5,72.4 < 25
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if haveq(27676) or haveq(2280) or haveq(27673)
step
talk Olga Runesworn##46233
turnin Behind Closed Doors##27676 |goto Uldaman,63.9,73.0
only if not completedq(27676)
step
talk Lead Prospector Durdin##46234
turnin The Platinum Discs##2280 |goto 63.7,72.6
only if not completedq(2280)
step
talk Kand Sandseeker##46247
turnin It's What's Inside That Counts##27673 |goto 64.0,72.1
only if not completedq(27673)
step
Congratulations, you have completed Uldaman!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Classic Dungeons\\Wailing Caverns",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the Wailing Caverns dungeon. This dungeon is located in the Northern Barrens on the continent of Kalimdor and is home to the Druids of the Fang. This dungeon ranges from level 10 to 30.",
mapid=279,
achieveid={630},
patch='30002',
condition_suggested=function() return level>=10 and level<=30 end,
keywords={"WC, Barrens, Deviate"},
},[[
step
label "start"
Press _I_ and queue for Wailing Caverns or enter the dungeon with your group |goto Wailing Caverns/1 45.9,59.7 |c
step
talk Ebru##5768
accept Cleansing the Caverns##26870 |goto Wailing Caverns/1 46.6,59.2
only if not completedq(26870)
step
talk Nalpak##5767
accept Deviate Hides##26872 |goto 46.6,58.4
accept Preemptive Methods##26873 |goto 46.6,58.4
only if not completedq(26872)
stickystart "Quests"
step
map Wailing Caverns/1
path follow loose; loop off; ants curved
path	45.6,53.0	41.4,51.6	35.0,51.5
path	35.5,49.1	37.8,44.2	36.9,39.8
path	32.9,40.3
Follow the path |goto 32.9,40.3 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Lady Anacondra##3671 |only if default
kill 1 Lady Anacondra##3671 |q 26870/2 |only if haveq(26870)
|tip Lady Anacondra will cast Lightning Bolt on her current target
|tip She will also put random players to sleep using Druid's Slumber
|tip Anacondra will periodically attempt to heal herself or an ally with Healing Touch
_TANK/DAMAGE:_ |grouprole TANK or DAMAGE
|tip Be sure to save an interrupt for Healing Touch. Interrupt Druid's Slumber whenever possible |grouprole TANK or DAMAGE
_HEALER:_ |grouprole HEALER
|tip Keep the tank topped off in case you get put to sleep |grouprole HEALER
Defeat Lady Anacondra |scenariogoal 24764 |goto 30.5,43.2
step
Jump down here |goto 30.3,40.1 < 5
confirm
step
map Wailing Caverns/1
path follow loose; loop off; ants curved
path	28.2,40.1	25.1,46.3	20.5,45.3
path	14.4,43.6	8.9,33.6	11.4,29.3
path	12.1,32.4	12.9,33.5	14.7,34.3
path	15.8,39.0
Jump in the water and follow this path |goto 15.8,39.0 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Lord Pythas##3670 |only if default
kill 1 Lord Pythas##3670 |q 26870/3 |only if haveq(26870)
|tip Lord Pythas will cast Lightning Bolt on his current target
|tip He will also put random players to sleep using Druid's Slumber
|tip Pythas will periodically attempt to heal himself or an ally with Healing Touch
|tip Players within 10 yards will occasionally take nature damage and suffer reduced attack speed from Thunder Clap
_TANK/DAMAGE:_ |grouprole TANK or DAMAGE
|tip Be sure to save an interrupt for Healing Touch. Interrupt Druid's Slumber whenever possible |grouprole TANK or DAMAGE
_HEALER:_ |grouprole HEALER
|tip Keep the tank topped off in case you get put to sleep |grouprole HEALER
Defeat Lord Pythas |scenariogoal 24769 |goto Wailing Caverns/1 20.1,41.6
step
map Wailing Caverns
path follow loose; loop off; ants curved
path	18.6,35.6	17.3,27.2	16.1,24.4
path	11.9,24.9	5.6,30.2	7.6,38.2
path	8.3,44.3	12.7,52.4	15.7,53.7
Follow the path |goto 15.7,53.7 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 1 Lord Cobrahn##3669 |only if default
kill 1 Lord Cobrahn##3669 |q 26870/1 |only if haveq(26870)
|tip Lord Cobrahn will cast Lightning Bolt on his current target
|tip He will also put random players to sleep using Druid's Slumber
|tip Cobrahn will periodically attempt to heal himself or an ally with Healing Touch
|tip At 45% health, Cobrahn will gain Serpent Form. He will begin using Poison on players. Dispel this when possible
_TANK/DAMAGE:_ |grouprole TANK or DAMAGE
|tip Be sure to save an interrupt for Healing Touch. Interrupt Druid's Slumber whenever possible |grouprole TANK or DAMAGE
_HEALER:_ |grouprole HEALER
|tip Keep the tank topped off in case you get put to sleep |grouprole HEALER
Defeat Lord Cobrahn |scenariogoal 24770 |goto Wailing Caverns/1 15.6,58.5
step
Jump down here |goto 15.8,51.8 |n
|tip You will take some fall damage |goto 16.1,49.2 < 5
confirm
step
map Wailing Caverns/1
path follow loose; loop off; ants curved
path	17.9,46.2	22.0,45.6	24.7,46.6
path	27.3,40.8	31.8,36.8	37.7,35.3
path	44.9,37.5	50.3,43.1	52.8,49.0
path	51.8,54.9	52.5,58.0	55.2,64.0
path	58.5,67.0
kill Kresh##3653
If you haven't already killed Kresh, then you will find him walking in this little river.
Defeat Kresh |scenariogoal 24772
Follow the path |goto 58.5,67.0 < 15
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Skum##3674
Defeat Skum |scenariogoal 24773 |goto 60.7,72.1
confirm
step
map Wailing Caverns/1
path follow loose; loop off; ants curved
path	60.5,78.8	57.2,88.6	54.3,87.5
path	54.0,84.5	54.9,81.8	56.6,79.0
path	55.5,75.0	54.9,70.3	52.9,67.0
path	52.4,66.9	50.4,62.4	52.0,60.0
path	55.9,56.8	64.4,59.7	68.6,62.2
path	71.6,64.7	73.2,69.2	72.4,76.5
path	68.2,84.2	62.5,82.8
Follow this path |goto 62.5,82.8 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Go to the ledge |goto 60.4,81.2
Jump across the gap |goto 59.2,79.8 < 5
confirm
step
map Wailing Caverns/1
path follow loose; loop off; ants curved
path	56.7,78.0	54.4,76.5	53.6,69.9
path	53.0,63.8	54.4,60.6	58.4,56.7
Follow the path |goto 58.4,56.7
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Lord Serpentis##3673 |only if default
kill Lord Serpentis##3673 |q 26870/4 |only if haveq(26870)
|tip Lord Serpentis will cast Lightning Bolt on his current target
|tip He will also put random players to sleep using Druid's Slumber
|tip Serpentis will periodically attempt to heal himself or an ally with Healing Touch
_TANK/DAMAGE:_ |grouprole TANK or DAMAGE
|tip Be sure to save an interrupt for Healing Touch. Interrupt Druid's Slumber whenever possible |grouprole TANK or DAMAGE
_HEALER:_ |grouprole HEALER
|tip Keep the tank topped off in case you get put to sleep |grouprole HEALER
Defeat Lord Serpentis |scenariogoal 1/24771 |goto 62.6,53.3
step
kill 1 Verdan the Everliving##5775 |goto 56.4,47.5
|tip Verdan the Everliving has one ability, Grasping Vines
_Grasping Vines_
|tip This will periodically knock down players within 10 yards and immobilize them for 5 seconds
_TANK:_ |grouprole TANK
|tip Make use of defenisive cooldowns, especially during Grasping Vines |grouprole TANK
_HEALER:_ |grouprole HEALER
|tip Be prepared, Verdan the Everliving may deal significant damage to undergeared tanks |grouprole HEALER
Defeat Verdan the Everliving |scenariogoal 24787
confirm
step
Walk to the edge of the pit |goto 55.3,42.8 |n
Jump down this hole |goto 54.5,39.5 < 5
confirm
step
map Wailing Caverns/1
path follow loose; loop off; ants curved
path	54.1,43.4	50.5,43.1	44.6,38.7
path	41.0,37.8	38.1,38.3	37.6,44.9
path	35.5,48.5	35.4,50.9	37.8,51.7
path	44.2,52.5
Follow the path |goto 44.2,52.5 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
label "Quests"
clicknpc Serpentbloom##13891
Kill Deviate mobs for Deviate Hides
Collect Deviate Hides |q 26872/1
Collect Serpent Bloom |q 26873/1
step
talk Ebru##5768
turnin Cleansing the Caverns##26870 |goto Wailing Caverns/1 46.6,59.2
only if not completedq(26870)
step
talk Nalpak##5767
turnin Deviate Hides##26872 |goto 46.6,58.4
turnin Preemptive Methods##26873 |goto 46.6,58.4
only if not completedq(26872) or not completedq(26873)
step
talk Muyoh##3678 |goto 46.5,56.0
Tell him _"Let the event begin!"_ and start following |goto 45.3,53.3 < 8
confirm
step
map Wailing Caverns/1
path follow loose; loop off; ants curved
path	44.2,52.4	38.9,51.6	35.0,51.1
path	35.0,51.1	36.2,47.2	37.8,44.2
path	37.6,39.9	34.5,39.5	30.4,43.0
path	28.1,41.8	26.6,39.4	27.9,34.0
path	32.6,29.4	37.7,24.8	37.6,21.6
path	34.5,15.9
There will be 2 waves of mobs that attack him, then the boss will appear.
Escort and Protect Muyoh until you get to the boss |scenariogoal 2/24776 |goto 34.5,15.9 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
step
kill 1 Mutanus the Devourer##3654
_TANK/DAMAGE:_ |grouprole TANK or DAMAGE
|tip Interrupt Naralex's Nightmare. This will put players to sleep for 8 seconds |grouprole TANK or DAMAGE
|tip Mutanus will Terrify random players. Dispel this if possible |grouprole TANK or DAMAGE
|tip Occasionally, Mutanus will use Thundercrack, dealing damage to all players within 10 yards and stunning them |grouprole TANK or DAMAGE
Defeat Mutanus the Devourer |scenariogoal 2/34405 |goto 34.0,15.6
step
Congratulations, you have completed Wailing Caverns!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Classic Dungeons\\Zul'Farrak",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the Zul'Farrak dungeon. This dungeon is located in the Tanaris on the continent of Kalimdor and is home to the Sandfury trolls. This dungeon ranges from level 15 to 30.",
mapid=219,
achieveid={639},
patch='30001',
condition_suggested=function() return level>=15 and level<=30 end,
keywords={"ZF, Troll, Tanaris"},
},[[
step
label "start"
Press _I_ and queue for Zul'Farrak or enter the dungeon with your group |goto Zul'Farrak/0 56.6,91.0 |c
step
talk Mazoga's Spirit##40712
accept Chief Ukorz Sandscalp##27068 |goto Zul'Farrak 56.7,89.2
accept Wrath of the Sandfury##27071 |goto Zul'Farrak 56.7,89.2
step
talk Chief Engineer Bilgewhizzle##7407
accept A Fool's Errand##27070 |goto 58.2,89.1
step
talk Tran'rek##44929
accept Breaking and Entering##27076 |goto 58.3,88.7
step
map Zul'Farrak
path follow strict; loop off
path	57.5,79.9	59.1,68.2	57.3,55.7
path	53.0,38.9	59.8,42.0	55.6,30.7
Follow the path. |goto 55.5,30.7 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Theka the Martyr##7272
|tip Fevered Plague will deal nature damage every 3 seconds for 30 seconds to a player
|tip At 30% health, Theka will Transform, becoming immune to shadow and physical damage for 15 seconds
Defeat Theka the Martyr |scenariogoal 1/24949 |goto 54.8,29.3
step
kill Antu'sul##8127
|tip Moving to this location will cause the boss to chase your party until he aggros.
kill Servant of Antu'sul##8156+, Sul'lithuz Broodling##8138+
|tip Interrupt Healing Wave whenever possible
|tip Destroy Greater Healing Ward and Earthgrab totems
|tip He will summon Sul'lithuz Broodlings to aid him in battle. Tanks try to pick them up quickly
Defeat Antu'sul |scenariogoal 24948 |goto Zul'Farrak 66.0,26.0
step
map Zul'Farrak/0
path follow smart; loop off; ants curved; dist 12
path	60.3,27.3	56.4,25.4	52.0,25.4
path	46.2,19.7
Follow the path |goto 46.2,19.7
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Witch Doctor Zum'rah will be friendly until you approach him.
kill Witch Doctor Zum'rah##7271
|tip Zum'rah will use Awaken Zul'farrak Zombie periodically, summoning zombies from the graves
|tip Interrupt Healing Wave and Shadow Bolt Volley whenever possible
Defeat Witch Doctor Zum'rah |scenariogoal 24950 |goto 44.1,15.8
step
map Zul'Farrak/0
path follow smart; loop off; ants curved; dist 12
path	43.4,19.0	40.5,21.4	35.7,17.7
path	31.6,17.1	27.0,17.8
Follow the path |goto Zul'Farrak/0 27.0,17.8 < 10
|tip Clear the trash around the area before starting the boss.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Sandfury Executioner##7274
|tip Once you kill the Executioner, click the cages behind him.
click Troll Cage##1787
There will be an event when you release the prisoners.
kill Sandfury Drudge##7788+, Sandfury Slave##7787+, Sandfury Cretin##7789+
|tip Defend Sergeant Bly from the attacking trolls.
|tip Eventually Shadowpriest Sezz'zis will appear.
kill Shadowpriest Sezz'ziz##7275
kill Nekrum Gutchewer##7796
|tip Interrupt Heal cast by Sezz'ziz and be wary of Psychic Scream, as it will fear party members
Defeat Shadowpriest Sezz'ziz |scenariogoal 24947 |goto 25.1,17.9
Defeat Nekrum Gutchewer |scenariogoal 24946 |goto 25.1,17.9
step
talk Weegli Blastfuse##7607 |goto 30.1,16.9
Ask him if he can blow up the door now
confirm
step
talk Sergeant Bly##7604
Tell him you're tired of taking orders from him
kill Sergeant Bly##7604, Murta Grimgut##7608, Raven##7605, Oro Eyegouge##7606 |goto Zul'Farrak 30.5,18.1
confirm
step
map Zul'Farrak/0
path follow smart; loop off; ants curved; dist 12
path	33.6,19.4	40.4,30.9
Follow the path |goto 40.4,30.9 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Ruuzlu##7797
kill Chief Ukorz Sandscalp##7267
|tip Avoid standing in front of Sandscalp unless you are the tank, as he cleaves frequently
Defeat Chief Ukorz Sandscalp |scenariogoal 1/34439 |goto 43.5,34.6
step
map Zul'Farrak/0
path follow smart; loop off; ants curved; dist 12
path	40.5,31.1	34.4,20.5	31.6,23.7
path	34.8,29.1	34.6,35.7	32.5,39.0
Follow the path |goto 32.5,39.0 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Hydromancer Velratha##7795
|tip She patrols around the room a bit, but often stops here.
|tip Interrupt Healing Wave whenever possible
|tip Avoid being hit by Crashing Wave. It will deal damage and knock you back
Loot Velratha for the Tiara of the Deep |q 27070/1 |only if haveq(27070)
Defeat Hydromancer Velratha |scenariogoal 24951 |goto 29.7,38.8
confirm
step
Kill trash while making your way to the _Gong of Zul'Farrak_. |goto Zul'Farrak 32.9,43.6 < 5
confirm
step
click Gong of Zul'Farrak##141832
|tip This will cause Gahz'rilla to spawn.
kill Gahz'rilla##7273
|tip Dispel Freeze Solid whenever possible to lessen party damage
Loot Gahz'rilla for Gahz'rilla's Electrified Scale |q 27070/2 |only if haveq(27070)
Defeat Gahz'rilla |scenariogoal 24952 |goto Zul'Farrak/0 29.4,38.6
confirm
step
map Zul'Farrak/0
path follow smart; loop off; ants curved; dist 12
path	32.5,39.0	34.6,35.7	34.8,29.1
path	31.6,23.7	34.4,20.5	40.5,21.4
path	52.0,25.4	55.6,30.7	59.8,42.0
path	53.0,38.9	57.3,55.7	59.1,68.2
path	57.5,79.9
Follow the path |goto 57.5,79.9 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
You can either run to the beginning of the dungeon to turn in your quests |goto Zul'Farrak/0 56.6,91.0 < 80
Or
You can Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance
confirm
|only if not completedq(27068) or not completedq(27071) or not completedq(27076) or not completedq(27070)
step
talk Mazoga's Spirit##40712
turnin Chief Ukorz Sandscalp##27068 |goto Zul'Farrak 56.7,89.2
turnin Wrath of the Sandfury##27071 |goto Zul'Farrak 56.7,89.2
step
talk Chief Engineer Bilgewhizzle##7407
turnin A Fool's Errand##27070 |goto 58.2,89.1
step
talk Tran'rek##44929
turnin Breaking and Entering##27076 |goto 58.3,88.7
step
Congratulations, you have completed Zul'Farrak!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Classic Raids\\Blackwing Lair",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the Blackwing Lair raid. This dungeon is located in Blackrock Mountain on the continent of Eastern Kingdoms and is home to Nefarian and the Blackrock clan orcs. This raid is level 30.",
mapid=287,
achieveid={685},
patch='30001',
condition_suggested=function() return level>=25 and level<=30 end,
keywords={"BWL, Nefarian, Burning, Steppes, Searing, Gorge, BRM"},
},[[
step
Enter the doorway here |goto Burning Steppes/14 63.45,44.15
Click the Orb of Command to teleport to Blackwing Lair. |goto Burning Steppes/14 64.3,70.9 |n
Enter the Blackwing Lair |goto Blackwing Lair/1 51.7,81.8 < 5 |noway |c
step
kill Razorgore the Untamed##12435 |goto Blackwing Lair/1 35.7,67.2
|tip The objective of this fight is to destroy all the eggs in the room by controlling Razorgore the Untamed before killing him.
|tip When controlling Razorgore, he has the following abilities:
|tip Destroy Egg destroys a nearby egg. This is an instant cast.
|tip Calm Dragonkin puts the target Dragonkin to sleep for 30 seconds.
|tip Fireball Volley inflicts 1000 Fire damage to all enearby enemies. 2 second cast.
|tip When fighting Razorgore, he also has these abilities:
|tip Conglagration inflicts 3000 Fire damage over 10 seconds to the target, also hitting nearby enemies for 150 damage.
|tip Summon Player teleports the targeted player to Razorgore's location.
confirm
step
kill Vaelastrasz the Corrupt##13020 |goto 33,27
|tip Essence of the Red this is a raid-wide buff that lasts for 3 minutes after engaging Vaelastrasz in combat. It restores 500 mana, 50 energy, 20 rage per second, or 20 runir power, depending on your class.
|tip Fire Nova is an AoE that inflicts 560-650 Fire damage to nearby enemies.
|tip Flame Breath inflicts 3060-4000 Fire damage to enemies in a cone in front of Vaelastrasz. Make sure the tank is the only one in front of Vaelastrasz when this occurs.
|tip Burning Adrenaline is a buff applied to random raid members throughout the fight and also on the tank every 45 seconds. It increases damage by 100%, attack speed by 100% and spells cast instantly, but it reduces max health by 5% every second, eventually killing the player.
|tip Cleave hits for 2000 damage and can chain off of targets that are struck. Make sure the tank is the only one in front of Vaelastrasz when this occurs.
confirm
step
map Blackwing Lair/1
path loop off
path	Blackwing Lair/1 41.1,28.4	Blackwing Lair/1 44.9,28.3	Blackwing Lair/2 41.6,44.0
path	Blackwing Lair/2 25.0,61.1	Blackwing Lair/2 33.5,62.7	Blackwing Lair/2 49.3,80.3
path	Blackwing Lair/3 53.1,67.9
Follow the path, clearing trash and clicking Supression Devices as you make your way to the next boss, Broodlord Lashlayer |goto Blackwing Lair/3 53.1,67.9 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Broodlord Lashlayer##12017 |goto 48,57
|tip Blase Wave deals Fire damage to nearby enemies and reducing their movement speed for 8 seconds.
|tip Cleave deals 110% weapon damage and hits additional raid members near the target. Make sure the tank is the only one in front of the boss when this occurs.
|tip Knock Away deals a small amount of damage and knocks the target back.
|tip Mortal Strike deals 500% weapon damage to the target and applies a wounded debuff, reducing healing the target receives by 50% for 5 seconds.
confirm
step
kill Firemaw##11983 |goto Blackwing Lair/3 46.8,44.2
|tip He patrols through the next room so you may have to wait a minute for him to come back to this spot.
|tip Flame Buffet inflicts 140-150 Fire damage to the target and increases the Fire damage they take by 150 for 20 seconds.
|tip Shadow Flame is an AoE that inflicts 4000-5000 Shadow damage to raid members in a cone in front of Firemaw. Make sure the tank is the only one in front of him when this occurs.
|tip Summon Player teleports a random raid member to Firemaw's location.
|tip Wing Buffet is an AoE that inflicts 550-950 damage to raid members in a cone in front of Firemaw. Make sure the tank is the only one in front of him when this occurs.
confirm
step
map Blackwing Lair/3
path loop off
path	Blackwing Lair/3 41.7,35.4	Blackwing Lair/3 32.0,39.1	Blackwing Lair/4 22.1,56.9
path	Blackwing Lair/4 28.3,48.4
Follow the path, clearing trash as you make your way to the next boss, Ebonroc. |goto Blackwing Lair/4 28.3,48.4 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Ebonroc##14601 |goto 35,37
|tip Flame Buffet inflicts 140-150 Fire damage to the target and increases the Fire damage they take by 150 for 20 seconds.
|tip Shadow Flame is an AoE that inflicts 4000-5000 Shadow damage to raid members in a cone in front of Firemaw. Make sure the tank is the only one in front of him when this occurs.
|tip Shadow of Ebonroc is a 8 second debuff that is cast on the main tank. It restores Ebonroc's health by 25,000 every time he hits the target.
confirm
step
kill Flamegor##11981 |goto 37.5,42.7
|tip Flame Buffet inflicts 140-150 Fire damage to the target and increases the Fire damage they take by 150 for 20 seconds.
|tip Shadow Flame is an AoE that inflicts 4000-5000 Shadow damage to raid members in a cone in front of Firemaw. Make sure the tank is the only one in front of him when this occurs.
|tip Fire Nova deals 550 Fire damage to all raid members. This occurs every 5 seconds but only when enraged.
confirm
step
Click this Lever to start the next boss fight with Chromaggus. |goto 49.9,70.5
confirm
step
kill Chromaggus##14020 |goto 43.0,69.0
|tip Chromaggus uses breath attacks that hits the entire raid, within line of sight. There are 5 possible types.
|tip Incinerate: Red deals 3600-4300 Fire damage.
|tip Corrosive Acid: Green deals 875-1125 Nature damage every 3 seconds for 15 seconds. Also reduces armor by 4000-5000.
|tip Frost Burn: Blue reduces attack speed by 80% and deals 1000-1500 Frost damage.
|tip Ignight Flesh: Black deals 650-850 Fire damage every 3 seconds for 60 seconds. This can stack if used again before the original 60 seconds are up.
|tip Time Lapse: Bronze is a 6 second stun and reduces maximum health to half. Will also heal when the stun wears off.
|tip Chromaggus also used Brood Afflictions which debuff everyone in the zone.
_Red:_
|tip deals 50 Fire damage every 3 seconds. Will heal Chromaggus if an affected player dies.
_Green:_
|tip reduces healing by 50% and deals 50 Nature damage every 5 seconds.
_Blue:_
|tip slows movement speed by 70% and cast speed by 50%. Also drains 50 mana and 1 health every second.
_Black:_
|tip increases Fire damage taken by 100%.
_Bronze:_
|tip This is a 4 second stun that occurs randomly for 10 minutes. Can be removed with Hourglass Sand. |use Hourglass Sand##19183
confirm
step
map Blackwing Lair/4
path loop off
path	54.5,57.6	65.4,69.3	75.4,88.0
Follow this path to the final boss, Nefarian. |goto 75.4,88.0 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Lord Victor Nefarius##10162 |goto 75.4,88.0
Click through the dialogue, ending with the final statement, "Please do."
|tip This will start this boss fight, make sure you are ready.
confirm
step
_Nefarian_ |goto 72.6,81.7
_Phase 1_
|tip As soon as the fight starts he will be invulnerable and will randomly Shadow Bolt and Fear random raid members. The room also begins to fill with Drakonids.
|tip The objective of Phase 1 is to kill the Drakonids.
Red Drakonid
|tip These have a short-range conal DoT attack. This DoT is stackable. Make sure the tank is the only one in front of them when this occurs.
Blue Drakonid
|tip These attacks drain mana and lowers attack speed.
Green Drakonid
|tip These stun raid members.
Black Drakonid
|tip These have a direct-damage Fire attack.
Bronze Drakonid
|tip These reduce attack and cast speed.
_Phase 2_
|tip This phase starts after 42 Drakonids have been slain. Negarian then turns into his dragon form.
Click here to proceed to _Phase 2_ |confirm
step
kill Nefarian##11583 |goto 70.6,73.3
_Phase 2_
|tip Shadow Flame is a raid-wide AoE that Nefarian casts before landing at the start of the phase. It deals 1000 Shadow damage to every raid member.
|tip Veil of Shadow is a debuff that reduces healing effects bt 75% for 6 seconds.
|tip Tail Lash hits all raid members behind Nefarian, dealing 1000-1400 damage and stunning them for 2 seconds.
|tip Bellowing Roar is a large AoE Fear, scattering all raid members within 35 yards of Nefarian for 4 seconds.
|tip Cleave hits the target and any nearby players. Make sure the tank is the only person in front of Nefarian when this occurs.
|tip Every 30 seconds, Nefarian will "call out" a specific class. This class is affected by the following:
_Death Knights_ cast Death Grip on the entire raid, pulling every to Nefarian.
_Druids_ are stuck in Cat Form.
_Hunters_ equipped weapon is instantly broken. Bring backup weapons to use in case this happens.
_Mages_ cast Wild Polymorph on random raid members, polymorphing the target.
_Monks_ roll around uncontrollable for 5 seconds.
_Priests_ direct heals with apply a stackable DoT with Corrupted Healing instead of restoring health.
_Paladins_ cast Blessing of Protection on Nefarian, protecting him from all physical attacks for the duration.
_Rogues_ are teleported and immobilized in an area near Nefarian.
_Shamans_ give Nefarian buffed totems.
_Warriors_ are stuck in Berserker Stance and take an additional 30% damage.
_Warlocks_ 2 Infernals per Warlock are summoned to fight for Nefarian. They stun and do minor damage to the raid.
_Phase 3_
|tip This phase starts at 20% health.
Click here to proceed to _Phase 3_ |confirm
step
kill Nefarian##11583 |goto 70.6,73.3
_Phase 3_
|tip Nefarian will revive all dead Drakonids as Bone Constructs. AoE them down.
|tip After all are dead Nefarian continues to cast class debuff callouts until he dies.
confirm
step
You may have looted a quest item from Nefarian.
Click the Head of Nefarian in your bags. |use Head of Nefarian##19003
accept The Lord of Blackrock##7781
|only if not completedq(7781)
step
talk King Varian Wrynn##29611
turnin The Lord of Blackrock##7781 |goto Stormwind City 85.6,31.8
|only if not completedq(7781)
step
talk King Varian Wrynn##29611
accept The Lord of Blackrock##7782 |goto Stormwind City 85.6,31.8
|only if completedq(7781)
step
talk Field Marshal Stonebridge##14721
turnin The Lord of Blackrock##7782 |goto Stormwind City 71.4,80.5
|only if completedq(7781)
step
Congratulations, you have finished the Blackwing Lair raid guide!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Classic Raids\\Molten Core",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the Molten Core raid. This dungeon is located in Blackrock Mountain on the continent of Eastern Kingdoms and is home to Ragnaros the Firelord. This raid is level 30.",
mapid=232,
achieveid={686},
patch='30001',
condition_suggested=function() return level>=25 and level<=30 end,
keywords={"MC, Ragnaros, Burning, Steppes, Searing, Gorge, BRM"},
},[[
step
talk Lothos Riftwaker##14387 |goto Burning Steppes/16 54.3,83.4
Tell him "Transport me to the Molten Core." |goto Molten Core/1 27.9,26.5 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Molten Core/1
path follow loose;loop off;ants straight
path	31.2,22.8	36.2,17.3	43.8,15.8
path	47.3,20.4	49.1,29.2	53.1,30.1
path	56.5,32.4	62.5,40.2
Follow the path, clearing trash as you make your way to the first boss, Lucifron. |goto 62.5,40.2 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Lucifron##12118 |goto 66.3,35.6
|tip Impending Doom inflicts 2000 Shadow damage to nearby raid members after 10 seconds.
|tip Lucifron's Curse is a debuff applied to nearby raid members, increasing the cost of their spells and abilities by 100% for 5 minutes.
|tip Shadow Shock hits all raid members within 20 yards of Lucifron for Shadow damage.
_Flamewalker Protectors_
|tip Cleave inflicts melee damage to the targeted raid member and up to 5 nearby allies. Make sure the tank is the only one in front of the Protector when this occurs.
|tip Dominate Mind takes control of a player for 15 seconds.
|confirm
step
Clear trash here before engaging the next boss, Magmadar. |goto 68.5,26.3 < 5 |c
step
kill Magmadar##11982 |goto 70.1,19.6
|tip Magma Spit deals 100 Fire damage and another 75 Fire damage every 3 seconds for 30 seconds. Stacks up to 3 times.
|tip Lava Breath inflicts 1200 Fire damage to raid members in front of Magmadar. Make sure the tank is the only one in front of Magmadar when this occurs.
|tip Panic is an AoE Fear that causes raid members near Magmadar to flee in fear for 8 seconds.
|tip Lava Bomb is an AoE spell that deals 3200 Fire damage over 8 seconds to any player standing in the affected area.
|tip Frenzy occurs at 30% health, increasing Magmadar's attack speed by 150%. Kill him as quickly as possible to avoid death.
|confirm
step
map Molten Core/1
path loop off
path	62.5,40.1	59.7,35.9	55.0,31.9
path	50.4,32.9	44.6,30.7	40.9,38.6
path	36.8,51.1
Follow the path, clearing trash as you make your way to the next boss, Gehennas. |goto 36.8,51.1 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Gehennas##12259 |goto 32,48
|tip Shadow Bolt deals 2000-2500 Shadow damage to a non-tank raid member.
|tip Rain of Fire is an AoE that deals 925-1075 Fire damage every 2 seconds for 6 seconds.
|tip Gehennas' Curse reduces healing effects of nearby raid members by 75% for 5 minutes.
_Flamewalkers_
|tip Fist of Ragnaros stuns nearby raid members for 4 seconds.
|tip Sunder Armor is a stacking debuff that reduces the target's armor by 1000 and stacks up to 20 times.
|confirm
step
map Molten Core/1
path loop off
path	34.1,51.8	34.0,61.3	32.6,66.2
Follow the path, clearing trash as you make your way to the next boss, Garr. |goto 32.6,66.2 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Garr##12057 |goto 30,70
|tip Antimagic Pulse is an AoE dispell, removing 1 beneficial spell effect from nearby raid members.
|tip Magma Shackles is an AoE, reducing the movement speed of nearby raid members by 40% for 15 seconds.
_Firesworn_
|tip Immolate inflicts 800 Fire damage and an additional 400 Fire damage every 3 seconds for 21 seconds.
|tip Eruption causes the Firesworn to explode, dealing 1850-2150 Fire damage to nearby players.
|confirm
step
map Molten Core/1
path loop off
path	37.0,70.6	46.0,70.8
Follow the path, clearing trash as you make your way to the next boss, Baron Geddon. |goto 46.0,70.8 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Baron Geddon##12056 |goto 50.6,75.5
|tip He is on a small patrol route, you may have to wait a few seconds for him to appear here.
|tip Inferno is a proximity-based AoE, hitting all raid members near Geddon. It lasts 10 seconds, each pulse coming 1 second apart and increasing in damage every pulse.
|tip Ignite Mana is a DoT that removes 400 mana and does 400 damage to the target. It lasts 5 minutes but can be dispelled.
|tip Living Bomb is a debuff that cannot be dispelled. After 10 seconds the bomb explodes, dealing 3200 Fire damage to the targeted raid member and all nearby allies. The target will also be launched into the air and take fall damage upon landing.
|tip At 2% health, Geddon turns himself into a Living Bomb. You have 5 seconds to kill him before he explodes and deals a large amount of damage to all raid members in melee range, usually killing them.
|confirm
step
kill Shazzrah##12264 |goto 52.7,83.5
|tip Arcane Explosion inflicts 925-1075 Arcane damage to nearby raid members.
|tip Shazzrah's Curse is a debuff that increases the target's magical damage taken by 100% for 5 minutes.
|tip Magic Grounding is a buff that reduces the magical damage taken by Shazzrah by 50% for 30 seconds.
|tip Counterspell is an AoE interrupt, countering the spellcasting of nearby raid members and also disabling that school of magic for 10 seconds.
|tip Blink teleports Sazzrah 20 yards forward, freeing him from any bonds and wiping threat.
|confirm
step
map Molten Core/1
path loop off
path	57.6,74.1	66.1,65.8	72.6,73.5
path	76.0,79.5
Follow the path, clearing trash as you make your way to the next boss, Sulfuron Harbinger. |goto 76.0,79.5 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Sulfuron Harbinger##12098 |goto 83,83.2
|tip Demoralizing Shout reduces all nearby raid members' attack power by 300 for 30 seconds.
|tip Inspire is a buff that doubles Sulfuron's attack speed and increases damage by 25%.
|tip Flame Spear deals 1000 Fire damage to the target and any nearby raid members.
|tip Hand of Ragnaros deals 300-400 Fire damage to nearby players, also knocking them back and stunning them for 2 seconds.
_Flamewalker Priest_
|tip Shadow Word: Pain is a DoT that deals 418 Shadow damage every 3 seconds.
|tip Immolate deals 400 Fire damage every 3 seconds.
|tip Dark Mending heals the target for 27,750-32,250.
|confirm
step
map Molten Core/1
path loop off
path	74.9,71.5	78.6,56.8	72.9,50.1
Follow the path, clearing trash as you make your way to the next boss, Golemagg the Incinerator. |goto 72.9,50.1 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Golemagg the Incinerator##11988 |goto 68.7,59.4
_Phase 1_
|tip Golemagg's Trust buffs Golemagg's Core Ragers, increasing their damage by 500 and attack speed by 50%.
|tip Magma Splash is a stacking debuff applied when raid members attack Golemagg. It starts off dealing 50 damage per tick and reducing armor by 250, stacking up to 50 times with 2500 damage per tick and 12,500 armor reduction,
|tip Pyroblast deals 2000 damage to a random raid member and inflicting a DoT that deals 200 damage every 3 seconds for 12 seconds.
_Phase 2_
|tip This phase starts at 10% health.
|tip Golemagg will start using _Earthquake_, dealing damage to all raid members near him and increasing his attack speed.
|tip Attract Rager is applied to every raid member when Golemagg reaches 10% health. It increases the aggro of all players except the tank.
_Core Ragers_
|tip Mangle reduces the target's movement speed by 50% and deals 300 damage every 2 seconds.
|tip These adds cannot die while Golemagg is still alive. They need to be tanked away from Golemagg, but taking them too far away will cause the fight to bug and reset.
|confirm
step
map Molten Core/1
path loop off
path	77.1,52.5	79.8,60.2	78.0,68.7
path	83.2,74.2
Follow the path, clearing trash as you make your way to the next boss, Majordomo Executus. |goto 83.2,74.2 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Majordomo Executus##12018 |goto 82.7,65.4
|tip The goal of this fight is to kill all of Majordomo's guards.
|tip Aegis of Ragnaros Majordomo casts this on himself, absorbing 30,000 damage, reflecting 250 damage on melee attacks and healing himself to full, making him impossible to kill.
|tip Shield this shielding spell lasts for 10 seconds and is given to all of Majordomo's allies: Purple Shield: up to 100 melee damage is reflected. _White Shield:_ each magic attack has a 50% chance to reflect back at the caster.
|tip Teleport instantly transports a random raid member into the nearby fiery pit of Molten Core. The player will take 1000-2000 Fire damage while standing in this. Move out of it as quickly as possible.
|tip Blast Wave is an AoE that hits nearby raid members will moderate Fire damage.
_Flamewalker Elite_
|tip Fire Blast deals 900-1200 Fire damage to the target.
|tip Shield and Blast Wave that function the same as Majordomo's.
_Flamewalker Healer_
|tip Shadowbolt deals 1000 Shadow damage to a random raid member.
|tip Shield that functions the same as Majordomo's.
|confirm
step
Make sure to click the Cache of the Firelord to receive your loot. |goto 83.0,65.0
|confirm
step
map Molten Core/1
path loop off
path	78.4,58.7	74.7,71.8	70.5,66.4
path	63.9,67.7	46.9,71.7	36.4,69.9
path	39.1,57.1	53.2,67.1	62.1,61.1
path	58.8,45.8	49.7,52.0	54.6,53.9
Follow the path, clearing trash as you make your way to the final boss, Ragnaros. |goto 54.6,53.9 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Majordomo Executus##54404 |goto 54.6,53.9
Tell him "Tell me more.", and click through the dialogue.
This will start the final fight, make sure you are ready.
|confirm
step
kill Ragnaros##11502 |goto 55.1,54.5
|tip Wrath of Ragnaros occurs every 25 seconds and sends all raid members in melee range flying back. All melee players should back up prior to this being used to avoid being knocked into lava.
|tip Hammer of Ragnaros hits a random mana-using raid member, knocking back all players within 20 yards of the target.
|tip Lava Splash affects players close to a lava flow.
|tip Elemental Fire is a debuff that deals 4800 damage over 8 seconds to Ragnaros' target.
|tip Magma Blast occurs if no one is engaging Ragnaros in melee combat. It deals 4000-6000 damage to the whole raid.
|tip Melt Weapon deals damage to raid members' weapons. It takes 1 point of weapon durability per attempt. A spare weapon or repair bot is recommended.
|tip Summon Sons of Flame occurs after 3 minutes of combat. Ragnaros will summon 8 Sons of Flame and submerge under the lava. After 90 seconds, or once all 8 adds are killed, Ragnaros will reappear.
|confirm
step
Congratulations, you have finished the Molten Core raid guide!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Classic Raids\\Ruins of Ahn'Qiraj",{
mapid=247,
achieveid={689},
patch='30001',
condition_suggested=function() return level>=25 and level<=30 end,
keywords={"AQ20, Silithus"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the Ruins of Ahn'Qiraj Raid.",
},[[
step
talk Keyl Swiftclaw##15500
accept Cloak of the Unseen Path##8696 |goto Ahn'Qiraj: The Fallen Kingdom 59.5,14.0
|only Hunter
step
talk Warden Haro##15499
accept Scythe of the Unseen Path##8712 |goto 59.5,14.0
|only Hunter
step
talk Windcaller Yessendra##15498
accept Signet of the Unseen Path##8704 |goto 59.4,14.1
|only Hunter
step
talk Keyl Swiftclaw##15500
accept Cloak of Unending Life##8692 |goto 59.5,14.0
|only Druid
step
talk Warden Haro##15499
accept Mace of Unending Life##8708 |goto 59.5,14.0
|only Druid
step
talk Windcaller Yessendra##15498
accept Band of Unending Life##8700 |goto 59.4,14.1
|only Druid
step
talk Keyl Swiftclaw##15500
accept Drape of Vaulted Secrets##8691 |goto 59.5,14.0
|only Mage
step
talk Warden Haro##15499
accept Blade of Vaulted Secrets##8707 |goto 59.5,14.0
|only Mage
step
talk Windcaller Yessendra##15498
accept Band of Vaulted Secrets##8699 |goto 59.4,14.1
|only Mage
step
talk Keyl Swiftclaw##15500
accept Cloak of Veiled Shadows##8693 |goto 59.5,14.0
|only Rogue
step
talk Warden Haro##15499
accept Dagger of Veiled Shadows##8709 |goto 59.5,14.0
|only Rogue
step
talk Windcaller Yessendra##15498
accept Band of Veiled Shadows##8701 |goto 59.4,14.1
|only Rogue
step
talk Keyl Swiftclaw##15500
accept Cape of Eternal Justice##8695 |goto 59.5,14.0
|only Paladin
step
talk Warden Haro##15499
accept Blade of Eternal Justice##8711 |goto 59.5,14.0
|only Paladin
step
talk Windcaller Yessendra##15498
accept Ring of Eternal Justice##8703 |goto 59.4,14.1
|only Paladin
step
talk Keyl Swiftclaw##15500
accept Cloak of the Gathering Storm##8690 |goto 59.5,14.0
|only Shaman
step
talk Warden Haro##15499
accept Hammer of the Gathering Storm##8706 |goto 59.5,14.0
|only Shaman
step
talk Windcaller Yessendra##15498
accept Ring of the Gathering Storm##8698 |goto 59.4,14.1
|only Shaman
step
talk Keyl Swiftclaw##15500
accept Drape of Unyielding Strength##8557 |goto 59.5,14.0
|only Warrior
step
talk Warden Haro##15499
accept Sickle of Unyielding Strength##8558 |goto 59.5,14.0
|only Warrior
step
talk Windcaller Yessendra##15498
accept Signet of Unyielding Strength##8556 |goto 59.4,14.1
|only Warrior
step
talk Keyl Swiftclaw##15500
accept Shroud of Infinite Wisdom##8689 |goto 59.5,14.0
|only Priest
step
talk Warden Haro##15499
accept Gravel of Infinite Wisdom##8705 |goto 59.5,14.0
|only Priest
step
talk Windcaller Yessendra##15498
accept Ring of Infinite Wisdom##8697 |goto 59.4,14.1
|only Priest
step
talk Keyl Swiftclaw##15500
accept Shroud of Unspoken Names##8694 |goto 59.5,14.0
|only Warlock
step
talk Warden Haro##15499
accept Kris of Unspoken Names##8710 |goto 59.5,14.0
|only Warlock
step
talk Windcaller Yessendra##15498
accept Ring of Unspoken Names##8702 |goto 59.4,14.1
|only Warlock
step
Enter the Ruins of Ahn'Qiraj |goto Ruins of Ahn'Qiraj/0 60.4,12.3 < 5 |c
step
map  Ruins of Ahn'Qiraj
path loop off
path	60.8,17.4	62.5,19.7	62.9,23.5
path	58.7,27.9	56.9,31.6
Follow the path, clearing trash as you go until you get to the first boss, Kurannaxx. |goto 56.9,31.6 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Kurinnaxx##15348 |goto 56.5,34.4
_Phase 1_
|tip Mortal Wounds is a stackable debuff on the main tank that reduces healing by 10%. It hits as a cleave, so make sure that the main tank is the only one that is in front of the boss when this occurs.
|tip Sandtrap affects the entire group. Random sandtraps spawn under a player's feet and erupts, dealing 2000 damage, silencing them, and reducing their chance to hit by 75% for 20 seconds. Keep an eye on your feet and move out of the way as quickly as possible.
|tip Summon teleports a random player to the boss' location.
|tip Thrash makes Kurannaxx hit two additional times.
_Phase 2_
|tip Frenzy occurs when the boss reaches 30% health, this increases his attack speed by 75% and the Physical damage it deals by 250. Be sure to kill him quickly when he reaches this stage to avoid death.
|confirm
step
talk Lieutenant General Andorov##15471 |goto Ruins of Ahn'Qiraj 55.2,38.0
Tell him "Let's find out."
|tip This will start the next boss encounter, make sure you area ready.
|confirm
step
Follow the Lieutenant and his men here |goto 59.1,42.8 < 5 |c
step
_Wave 1_
kill Captain Qeez##15391 |goto 59.1,42.8
|tip He has a cleave attack, so make sure that the main tank is the only one that is in front of the boss when this occurs.
|confirm
step
_Wave 2_
kill Captain Tuubid##15392 |goto 59.1,42.8
|tip Attack Order debuff causes the mobs to aggro to that player.
|confirm
step
_Wave 3_
kill Captain Drenn##15389 |goto 59.1,42.8
|tip Hurricane AoE lightning spell. Move out of the tornadoes that spawn.
|confirm
step
_Wave 4_
kill Captain Xurrem##15390 |goto 59.1,42.8
|tip Shockwave is an AoE knockdown, it has a short range so only melee should have to deal with it.
|confirm
step
_Wave 5_
kill Major Yeggeth##15386 |goto 59.1,42.8
|tip Blessing of Protection is a cleave and deals 900 damage, make sure the boss is turned away from the group.
|tip Shield of Rajaxx makes Yeggeth immune to all schools of magic for 6 seconds.
|confirm
step
_Wave 6_
kill Major Pakkon##15388  |goto 59.1,42.8
|tip Sweeping Slam AoE attack. It has a short range and only melee should have to deal with it.
|confirm
step
_Wave 7_
kill Colonel Zerran##15385 |goto 59.1,42.8
|tip Enlarge is a magic-dispellable buff that increases his melee damage. It also increases the damage of his adds. Dispell as fast as possible.
|confirm
step
kill General Rajaxx##15341 |goto 59.1,42.8
|tip Thunder Clap cuts everyone's hitpoints in half and wipes all player's aggro. Healers should be ready for this and tanks will need to re-taunt.
|tip He will yell You are not worth my time, <player name> this dumps all of that player's aggro, and he will engage a new target.
|confirm
step
map  Ruins of Ahn'Qiraj
path loop off
path	54.9,50.0	52.5,47.3	52.3,41.5
path	45.2,34.2	36.1,33.3
Follow the path, clearing trash as you go until you get to the next boss, Moam. |goto 36.1,33.3 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Moam##15340 |goto Ruins of Ahn'Qiraj/0 30.7,37.4
|tip Trample AoE melee attack, melee classes should be wary of this.
|tip Drain Mana takes 500 mana from 6 people and replenishes Moam's mana. This can be countered by keeping his mana drained.
|tip Arcane Explosion occurs if Moam reaches 100% mana. Huge AoE that deals 3000 damage, knocks players back, and then deals fall damage.
|tip Summon Mana Fiend occurs 90 seconds into the fight. Moam summoms 3 Mana Fiends. Must be killed off quickly. These are banishable and rootable and use Arcane Explosion.
|tip Turn to Stone also occurs 90 seconds into the fight. Moam turns to stone and cannot attack or use Drain Mana (he still regenerates some mana over time).
|tip He comes out of stone after 90 seconds or if his mana reaches 100%.
|confirm
step
map  Ruins of Ahn'Qiraj
path loop off
path	31.1,41.8	33.9,45.5	34.0,50.4
path	39.9,58.9	42.9,69.9
Follow the path, clearing trash as you go until you get to the next boss, Ossirian The Unscarred. |goto 42.9,69.9 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Ossirian The Unscarred##15339 |goto 40.5,74.4
|tip Strength of Ossirian Ossirian starts the fight with this buff, dealing massive melee damage. Ccounter this by kiting him to the crystals that spawn around the area. They greatly reduce his damage dealth and makes him vulnerable to a school of magic. Typically a specific raid member will be assigned to run around and scout out the crystal locations for the rest of the raid.
|tip Enveloping Winds is a 10 second stun to whoever has aggro. He will then ignore this person but their threat will be preserved. The effect can break upon taking damage.
|tip Tornadoes spawn when Ossirian is engaged. They will move around the area throughout the fight and deal high damage to anyone caught in them. Keep an eye out and avoid them.
|tip Warstomp is a short range AoE spell that hits around Ossirian and deals 1500 damage and knocks players back.
|tip Curse of Tongues is an AoE debuff that increases cast time of those caught in it. Avoid this by keeping the casters at range.
|confirm
step
map  Ruins of Ahn'Qiraj
path loop off
path	50.1,74.1	55.1,81.3
Follow the path, clearing trash as you go until you get to the next boss, Ayamiss The Hunter. |goto 55.1,81.3 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Ayamiss The Hunter##15369 |goto 58.3,85.7
_Phase 1_
|tip Fly Ayamiss is airborne and cannot be hit with melee attacks during this phase. This ends once he reaches 70% health.
_Phase 2_
|tip Poison Stinger applies a debuff that does 25 Nature damage per second but can stack up to 100 times. He only uses this while flying and is cast upon the player with most aggro.
|tip Stinger Spray does 1000 Nature damage to the raid. This occurs approximately every 30 seconds.
|tip Hive'Zara Swarmer summons about 20 wasps that fly up in the air. They attack together as they descend. Are relatively easy to deal with due to their low hit points.
|tip Paralyze_ shackles a player to the altar. An add will spawn and begin moving towards them, it must be killed before it reaches them or it will kill them and spawn another elite mob.
|tip This boss is immune to taunts.
|confirm
step
map  Ruins of Ahn'Qiraj
path loop off
path	59.1,80.3	63.9,80.9	67.8,74.6
path	69.6,68.9
Follow the path, killing trash until you get to the last boss, Buru the Gorger. |goto 69.6,68.9 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Buru the Gorger##15370 |goto 70.6,63.7
|tip Eggs deal 100-500 damage to players based on their proximity to the egg. They deal 45000 damage to Buru and is the only way to damage him.
|tip Dismember is a stacking bleed debuff that does 1248 damage every 2 seconds. Buru will use this if he catches up to the player that is kiting him.
|tip Speeding Up gives Buru increased movement speed while chasing a player. Remove this effect by hurting him with an egg explosion.
|tip Creeping Plague is activated when he has less than 20% health. It is a raid-wide stacking debuff that deals increased damage every 3 ticks. At this point the fight becomes a dps race.
|tip Thorns deals 200 damage to melee attackers.
|tip This boss is immune to taunts.
|confirm
step
talk Keyl Swiftclaw##15500
turnin Cloak of the Unseen Path##8696 |goto Ahn'Qiraj: The Fallen Kingdom 59.5,14.0
|tip It usually takes more than one run to get all the items needed for this quest.
|only if haveq(8696)
step
talk Warden Haro##15499
turnin Scythe of the Unseen Path##8712 |goto 59.5,14.0
|tip It usually takes more than one run to get all the items needed for this quest.
|only if haveq(8712)
step
talk Windcaller Yessendra##15498
turnin Signet of the Unseen Path##8704 |goto 59.4,14.1
|tip It usually takes more than one run to get all the items needed for this quest.
|only if haveq(8704)
step
talk Keyl Swiftclaw##15500
turnin Cloak of Unending Life##8692 |goto 59.5,14.0
|tip It usually takes more than one run to get all the items needed for this quest.
|only if haveq(8692)
step
talk Warden Haro##15499
turnin Mace of Unending Life##8708 |goto 59.5,14.0
|tip It usually takes more than one run to get all the items needed for this quest.
|only if haveq(8708)
step
talk Windcaller Yessendra##15498
turnin Band of Unending Life##8700 |goto 59.4,14.1
|tip It usually takes more than one run to get all the items needed for this quest.
|only if haveq(8700)
step
talk Keyl Swiftclaw##15500
turnin Drape of Vaulted Secrets##8691 |goto 59.5,14.0
|tip It usually takes more than one run to get all the items needed for this quest.
|only if haveq(8691)
step
talk Warden Haro##15499
turnin Blade of Vaulted Secrets##8707 |goto 59.5,14.0
|tip It usually takes more than one run to get all the items needed for this quest.
|only if haveq(8707)
step
talk Windcaller Yessendra##15498
turnin Band of Vaulted Secrets##8699 |goto 59.4,14.1
|tip It usually takes more than one run to get all the items needed for this quest.
|only if haveq(8699)
step
talk Keyl Swiftclaw##15500
turnin Cloak of Veiled Shadows##8693 |goto 59.5,14.0
|tip It usually takes more than one run to get all the items needed for this quest.
|only if haveq(8693)
step
talk Warden Haro##15499
turnin Dagger of Veiled Shadows##8709 |goto 59.5,14.0
|tip It usually takes more than one run to get all the items needed for this quest.
|only if haveq(8709)
step
talk Windcaller Yessendra##15498
turnin Band of Veiled Shadows##8701 |goto 59.4,14.1
|tip It usually takes more than one run to get all the items needed for this quest.
|only if haveq(8701)
step
talk Keyl Swiftclaw##15500
turnin Cape of Eternal Justice##8695 |goto 59.5,14.0
|tip It usually takes more than one run to get all the items needed for this quest.
|only if haveq(8695)
step
talk Warden Haro##15499
turnin Blade of Eternal Justice##8711 |goto 59.5,14.0
|tip It usually takes more than one run to get all the items needed for this quest.
|only if haveq(8711)
step
talk Windcaller Yessendra##15498
turnin Ring of Eternal Justice##8703 |goto 59.4,14.1
|tip It usually takes more than one run to get all the items needed for this quest.
|only if haveq(8703)
step
talk Keyl Swiftclaw##15500
turnin Cloak of the Gathering Storm##8690 |goto 59.5,14.0
|tip It usually takes more than one run to get all the items needed for this quest.
|only if haveq(8690)
step
talk Warden Haro##15499
turnin Hammer of the Gathering Storm##8706 |goto 59.5,14.0
|tip It usually takes more than one run to get all the items needed for this quest.
|only if haveq(8706)
step
talk Windcaller Yessendra##15498
turnin Ring of the Gathering Storm##8698 |goto 59.4,14.1
|tip It usually takes more than one run to get all the items needed for this quest.
|only if haveq(8698)
step
talk Keyl Swiftclaw##15500
turnin Drape of Unyielding Strength##8557 |goto 59.5,14.0
|tip It usually takes more than one run to get all the items needed for this quest.
|only if haveq(8557)
step
talk Warden Haro##15499
turnin Sickle of Unyielding Strength##8558 |goto 59.5,14.0
|tip It usually takes more than one run to get all the items needed for this quest.
|only if haveq(8558)
step
talk Windcaller Yessendra##15498
turnin Signet of Unyielding Strength##8556 |goto 59.4,14.1
|tip It usually takes more than one run to get all the items needed for this quest.
|only if haveq(8556)
step
talk Keyl Swiftclaw##15500
turnin Shroud of Infinite Wisdom##8689 |goto 59.5,14.0
|tip It usually takes more than one run to get all the items needed for this quest.
|only if haveq(8689)
step
talk Warden Haro##15499
turnin Gravel of Infinite Wisdom##8705 |goto 59.5,14.0
|tip It usually takes more than one run to get all the items needed for this quest.
|only if haveq(8705)
step
talk Windcaller Yessendra##15498
turnin Ring of Infinite Wisdom##8697 |goto 59.4,14.1
|tip It usually takes more than one run to get all the items needed for this quest.
|only if haveq(8697)
step
talk Keyl Swiftclaw##15500
turnin Shroud of Unspoken Names##8694 |goto 59.5,14.0
|tip It usually takes more than one run to get all the items needed for this quest.
|only if haveq(8694)
step
talk Warden Haro##15499
turnin Kris of Unspoken Names##8710 |goto 59.5,14.0
|tip It usually takes more than one run to get all the items needed for this quest.
|only if haveq(8710)
step
talk Windcaller Yessendra##15498
turnin Ring of Unspoken Names##8702 |goto 59.4,14.1
|tip It usually takes more than one run to get all the items needed for this quest.
|only if haveq(8702)
step
Click the Head of Ossirian the Unscarred in your bags |use Head of Ossirian the Unscarred##21220
accept The Fall of Ossirian##8791
|only if not completedq(8791)
step
talk Commander Mar'alith##15181
turnin The Fall of Ossirian##8791 |goto Silithus 53.2,32.5
|only if haveq(8791)
step
Congratulations, you have finished the Ruins of Ahn'Qiraj raid guide!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Classic Raids\\Temple of Ahn'Qiraj",{
mapid=319,
achieveid={687},
patch='30001',
condition_suggested=function() return level>=25 and level<=30 end,
keywords={"AQ40, Silithus, C'Thun"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the Ruins of Ahn'Qiraj Raid.",
},[[
step
Enter the Temple of Ahn'Qiraj |goto Ahn'Qiraj/2 51.4,26.5 < 5 |c
step
map Ahn'Qiraj/2
path loop off
path	41.8,19.8	39.1,26.2
Follow the path, clearing trash as you go until you get to the first boss, The Prophet Skeram. |goto 39.1,26.2 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill The Prophet Skeram##15263 |goto 43.5,41.3
|tip True Fulfillment mind controls a target, giving them increased damage, higher resistances, increased movement speed, and instant-cast spells. The target grows in size, and can be sheeped, feared, stunned, or put to sleep.
|tip Quartile Split occurs at 75%, 50%, and 25%, creating two images that share Skeram's abilities. These have much less hit points than the real Skeram and need to be killed when they spawn.
|tip Arcane Explosion AoE hits for 1500 damage in a large radius. Skeram casts this only if there are more than 4 players in melee range. This spell is interruptable.
|tip Earth Shock hits Skeram's target for 2500 damage every second until that target is in melee range.
|tip Blinks to either platform beside him. This also wipes aggro.
|confirm
step
talk Kandrostrasz##15503 |goto 59.2,68.8
turnin Mortal Champions##8595 |or
turnin Mortal Champions##8579
step
talk Kandrostrasz##15503
accept Striker's Leggings##8658
accept Striker's Footguards##8626 |goto 59.1,68.7
|only Hunter
step
talk Vethsera##15504
accept Striker's Hauberk##8656 |goto 59.4,68.5
|only Hunter
step
talk Andorgos##15502
accept Striker's Diadem##8657
accept Striker's Pauldrons##8659 |goto 59.6,68.2
|only Hunter
step
talk Kandrostrasz##15503
accept Stormcaller's Leggings##8624
accept Stormcaller's Footguards##8621 |goto 59.1,68.7
|only Shaman
step
talk Vethsera##15504
accept Stormcaller's Hauberk##8622 |goto 59.4,68.5
|only Shaman
step
talk Andorgos##15502
accept Stormcaller's Diadem##8623
accept Stormcaller's Pauldrons##8602 |goto 59.6,68.2
|only Shaman
step
talk Kandrostrasz##15503
accept Genesis Trousers##8668
accept Genesis Boots##8665 |goto 59.1,68.7
|only Druid
step
talk Vethsera##15504
accept Genesis Vest##8666 |goto 59.4,68.5
|only Druid
step
talk Andorgos##15502
accept Genesis Helm##8667
accept Genesis Shoulderpads##8669 |goto 59.6,68.2
|only Druid
step
talk Kandrostrasz##15503
accept Enigma Leggings##8631
accept Enigma Boots##8634 |goto 59.1,68.7
|only Mage
step
talk Vethsera##15504
accept Enigma Robes##8633 |goto 59.4,68.5
|only Mage
step
talk Andorgos##15502
accept Enigma Circlet##8632
accept Enigma Shoulderpads##8625 |goto 59.6,68.2
|only Mage
step
talk Kandrostrasz##15503
accept Doomcaller's Trousers##8663
accept Doomcaller's Footwraps##8660 |goto 59.1,68.7
|only Warlock
step
talk Vethsera##15504
accept Doomcaller's Robes##8661 |goto 59.4,68.5
|only Warlock
step
talk Andorgos##15502
accept Doomcaller's Circlet##8662
accept Doomcaller's Mantle##8664 |goto 59.6,68.2
|only Warlock
step
talk Kandrostrasz##15503
accept Deathdealer's Leggings##8640
accept Deathdealer's Boots##8637 |goto 59.1,68.7
|only Rogue
step
talk Vethsera##15504
accept Deathdealer's Vest##8638 |goto 59.4,68.5
|only Rogue
step
talk Andorgos##15502
accept Deathdealer's Helm##8639
accept Deathdealer's Spaulders##8641 |goto 59.6,68.2
|only Rogue
step
talk Kandrostrasz##15503
accept Conqueror's Legguards##8560
accept Conqueror's Greaves##8559 |goto 59.1,68.7
|only Warrior
step
talk Vethsera##15504
accept Conqueror's Breastplate##8562 |goto 59.4,68.5
|only Warrior
step
talk Andorgos##15502
accept Conqueror's Crown##8561
accept Conqueror's Spaulders##8544 |goto 59.6,68.2
|only Warrior
step
talk Kandrostrasz##15503
accept Avenger's Legguards##8629
accept Avenger's Greaves##8655 |goto 59.1,68.7
|only Paladin
step
talk Vethsera##15504
accept Avenger's Breastplate##8627 |goto 59.4,68.5
|only Paladin
step
talk Andorgos##15502
accept Avenger's Crown##8628
accept Avenger's Pauldrons##8630 |goto 59.6,68.2
|only Paladin
step
talk Kandrostrasz##15503
accept Trousers of the Oracle##8593
accept Footwraps of the Oracle##8596 |goto 59.1,68.7
|only Priest
step
talk Vethsera##15504
accept Vestments of the Oracle##8603 |goto 59.4,68.5
|only Priest
step
talk Andorgos##15502
accept Tiara of the Oracle##8592
accept Mantle of the Oracle##8594 |goto 59.6,68.2
|only Priest
step
map Ahn'Qiraj
path loop off
path	Ahn'Qiraj/2 49.5,65.5	Ahn'Qiraj/3 46.1,24.3	Ahn'Qiraj/3 42.9,30.2
path	Ahn'Qiraj/3 47.8,67.9	Ahn'Qiraj/1 33.3,51.3	Ahn'Qiraj/1 35.0,49.5
path	Ahn'Qiraj/1 31.8,49.7	Ahn'Qiraj/1 29.5,49.4
Follow the path, clearing trash as you go until you get to the next boss, the Bug Trio. |goto 29.5,49.4 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Bug Trio_ |goto 27.9,49.6
kill Lord Kri##15511
|tip This boss has a cleave, so make sure that the main tank is the only one that is in front of the boss when this occurs.
|tip Toxic Volley hits for 500 Nature damage and inflicts a DoT that ticks for 125 damage. It can stack any number of times but can be dispelled.
|tip Death Effect: his corpse leaves a poison cloud that DoTs for 2000 damage per second, usually resulting in death if stood in.
kill Princess Yauj##15543
|tip Fear_ AoE fear. If the raid party is feared too far away, the fight can bug and reset. Tank her as far from the main raid as possible.
|tip Great Heal is a large single=target heal that she uses on herself or one of the other bug bosses. Interrupting this is critical.
|tip Death Effect: spawns several bug adds when she dies. These can be cc'ed with normal means and aren't usually an issue.
kill Vem##15544
|tip Berserker Charge Vem charges at a raid member, knocking them back and dealing extra damage.
|tip Knockdown, Vem does slightly increased damage and knocks down his target and any nearby allies, stunning them for 2 seconds.
|tip Death Effect: enrages Yauj and Kri if they are still alive. Which will greatly increase their attack speed and damage. This is designed to wipe the raid. Kill them as quickly as possible to avoid death.
|confirm
step
map Ahn'Qiraj/1
path follow loose;loop off;ants straight
path	30.5,50.3	35.0,49.7	33.1,46.8
path	31.8,41.2	34.3,40.6	37.9,38.9
path	40.9,36.7
Follow the path, clearing trash as you go until you get to the next boss, Battleguard Sartura. |goto 40.9,36.7 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Battleguard Sartura##15516 |goto 43.1,35.2
|tip Whirlwind makes Sartura immune to stun. While using this spell, she has increased movement speed and deals AoE damage. Avoid her and her guards when they are using this.
|tip Aggro drop Sartura and her guard occasionally reset aggro and will chase random raid members for 5 seconds. After the 5 seconds they will return to the one with highest aggro.
|tip Frenzy occurs when Sartura reaches 20% health, dealing 124 more physical damage and increased attack speed by 60%. Kill her as quickly as possible to avoid death.
|tip Enrage occurs after 10 minutes of combat. It will greatly increase her attack speed and damage. This is designed to wipe the raid. Kill her before she reaches this stage to avoid death.
|tip Her guards use a knockback occasionally.
|confirm
step
map Ahn'Qiraj/1
path follow loose;loop off;ants straight
path	44.6,29.2	47.4,18.5	56.2,14.6
path	60.1,19.3
Follow the path, clearing trash as you go until you get to the next boss, Fankriss the Unyielding. |goto 60.1,19.3 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Fankriss the Unyielding##15510 |goto 61.6,22.8
|tip Mortal Wounds is a stackable debuff on the main tank that reduces healing by 10%. This is a cleave, so make sure that the main tank is the only one that is in front of the boss when this occurs.
|tip Summon Worm is used randomly during the fight, and spawns 1-3 elite worm adds. They enrage after 20 seconds, dealing 10,000-20,000 damage per hit. Kill them as soon as they spawn to prevent death.
|tip Adds will be spawned shortly after the fight starts and then again every minute. 3 groups of 4 adds will spawn, 1 group coming from each of the large tunnels that shoot off from the main room.
|tip When this happens a raid member will be teleported and rooted near one of the spawns. The adds can be snared or feared, and need to be killed quickly.
|confirm
step
The next boss. Viscidus, is optional.
|tip He can only be killed if you and your raid members can deal Frost damage. It takes 200 Frost attacks to freeze him and then about 200 melee attacks. You and your group can skip this boss or fight him.
Click here to _fight_ Viscidus! |next "fightbonus" |confirm
Click here to _skip_ Viscidus! |next "skipbonus" |confirm
step
label "fightbonus"
map Ahn'Qiraj/1
path follow loose;loop off;ants straight
path	65.1,22.3	66.1,19.4	66.3,17.6
path	68.8,18.2
Follow the path up the brown pipe until you get to the next boss, Viscidus. |goto 68.8,18.2 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Viscidus##15299 |goto 70.7,18.4
|tip Poison Shock is a 15 yard AoE that deals 1200 Nature damage every 10 seconds.
|tip Poison Volley is an AoE that does 1500 Nature damage and applies a DoT that does 500 damage every 2 seconds for 10 seconds. The DoT can be dispelled.
|tip Toxin Clouds are shot out by Viscidus every 30-40 seconds. It is an AoE that deals 1500 damage every 2 seconds and slows movement speed by 40%. The damage radius is bigger than the graphic so be sure to move way out of it.
_Frost Phases_
|tip The only way to kill Viscidus is to freeze him with ice and then shatter him.
|tip "Viscidus begins to slow" his movement and attack speed is reduced by 15%. This phase starts after he is hit with 100 Frost attacks,
|tip "Viscidus is freezing up" his movement and attack speed is reduced by 30%. This phase starts after he is hit with 150 Frost attacks.
|tip "Viscidus is frozen solid" his movement and attacks stop completely. The raid now needs to switch to melee attacks and "shatter" him. This phase starts after Viscidus is hit with 200 Frost attacks
_Melee Phases_
|tip "Viscidus begins to crack" continue attacking with melee.
|tip "Viscidus looks ready to shatter" continue attacking with melee.
|tip "Viscidus explodes" Viscidus shatters into Globs of Viscidus. Each glob represents 5% of his total health. Destroy these to do damage. If he is below 5% health when shattered, he will die. If the Globs reach the center of the room, Viscidus will reform.
|confirm
step
label "skipbonus"
map Ahn'Qiraj/1
path follow loose;loop off;ants straight
path	60.8,27.5	56.3,34.1	55.7,43.5
path	54.2,49.9	50.4,51.8	47.3,50.9
Follow the path, clearing trash as you go until you get to the next boss, Princess Huhuran. |goto 47.3,50.9 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Princess Huhuran##15509 |goto 44.3,47.3
|tip Frenzy Huhuran's damage is greatly increased while she is in this form. A Hunter can remove it with Tranquilizing Shot.
|tip Poison Bolt deals 2000 damage to the closest 15 people. This only occurs when she Frenzies or Berserks.
|tip Noxious Poison deals 2900 Nature damage over 8 seconds and a Silence. This will hit a random person and any raid members around Huhuran.
|tip Wyvern Sting is an AoE sleep effect on a random area within melee range and can affect up to 10 raid members. If cleansed it deals 3000 Nature damage.
|tip Acid Spit DoT deals about 250 damage every 2 seconds. This DoT is stackable and tanks will need to be rotated for healing.
|tip Berserk occurs when Huhuran reaches 30% health. Her attack speed doubles and she releases poison bolts that deal 2000 damage every 3 seconds to the closest 15 raid members.
|tip Kill her as quickly as possible to avoid death.
|confirm
step
map Ahn'Qiraj/1
path follow loose;loop off;ants straight
path	44.6,54.6	47.4,61.5	56.1,68.3
Follow the path, clearing trash as you go until you get to the next boss, the Twin Emperors. |goto 56.1,68.3 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_The Twin Emperors_ |goto 57.7,70.7
|tip Both share the following abilities:
|tip Heal Brother occurs whenever the Twins get within 60 yards of one another. They will spam this heal on each other, healing for 30,000 health per tick. They must be tanked far apart.
|tip Twin Teleport occurs every 30-40 seconds. The Twins switch places. This effect is preceded by a blue glow at their feet. After the teleport both Twins wipe all aggro and will attack the closest raid member to them.
|tip Combined Health the Twins share health percentage. Damaging one of them also does damage to the other.
|tip Berserk_ occurs after 15 minutes of combat. It will greatly increase their attack speed and damage. This is designed to wipe the raid. Kill them before they reach this stage to avoid death.
kill Emperor Vek'nilash##15275
_Melee_
|tip Immune to all magic damage (except Holy).
|tip Uppercut knocks back a single random target in melee range.
|tip Unbalancing Strike deals 350% weapon damage and leaves the target unbalanced, lowering their defense by 100 for 6 seconds.
|tip Mutate Bug mutates a bug every 10-15 seconds making it grow and attack the raid. Needs to be killed off.
kill Emperor Vek'lor##15276
_Caster_
|tip Immune to all physical damage.
|tip Shadow Bolt is spammed on Vek'lor's aggro target, hitting for 3000-4000.
|tip Blizzard AoE that does 1500 damage per tick and slows those within it.
|tip Arcane Burst AoE that deals 4000-5000 Arcane damage whenever a player is within melee range. Knocks back anyone it hits and slows their movement speed by 70%.
|tip Explode Bug every 7-10 seconds Vek'lor forces a nearby bug to explode, dealing a large amount of damage over a wide area.
|confirm
step
The next boss, Ouro the Sand Worm, is optional.
Kill him! |next "killworm" |confirm
Skip him! |next "skipworm" |confirm
step
label "killworm"
map Ahn'Qiraj/1
path follow loose;loop off;ants straight
path	57.1,73.3	53.9,77.2	50.0,80.8
path	45.6,82.3	42.2,80.2	37.9,75.6
path	33.8,76.1
Follow the path, clearing trash as you go until you get to Ouro. |goto 33.8,76.1 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Ouro##15517 |goto 30.6,79.3
|tip Sweep deals 1000-2500 Physical damage to his target, alonog with an AoE knockback. This usually drops the current tank's aggro and Ouro will need to be picked up by another tank.
|tip Sand Blast occurs every 20-25 seconds, dealing about 4000 Nature damage to the person with the highest threat. Also hits like a cleave, so make sure that the main tank is the only one that is in front of the boss when this occurs.
|tip Submerge Ouro burrows underground, becoming untargetable and undamagable. He has a chance to do this every 1.5 minutes, it is random. He will also Submerge if no player is in melee range.
|tip Ground Rupture deals 2000 Physical damage to anyone on top of Ouro when he reappears from a Submerge.
|tip Dirt Mound's Quake deals 1500 Nature damage when Ouro is Submerged.
|tip Scarab Adds will spawn after each resurface. They despawn after 45 seconds, so any form of crowd control is enough to handle them.
|tip Enrage occurs when Ouro has 20% health left. It increases his attack speed by 150% and doubles his damage. He will no longer Submerge at this point. Kill him as fast as possible to avoid death.
|next "finalstart"|confirm
step
label "skipworm"
map Ahn'Qiraj/1
path follow loose;loop off;ants straight
path	57.1,73.3	53.9,77.2	50.0,80.8
path	45.6,82.3	42.2,80.2	37.9,75.6
path	37.6,70.3
Follow the path, clearing trash as you go |goto 37.6,70.3 <5 |next "finalstart"
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
label "finalstart"
map Ahn'Qiraj
path follow loose;loop off;ants straight
path	Ahn'Qiraj/1 37.9,67.8	Ahn'Qiraj/1 32.1,56.1	Ahn'Qiraj/1 35.5,50.0
path	Ahn'Qiraj/1 34.0,45.2	Ahn'Qiraj/3 67.9,53.3	Ahn'Qiraj/3 71.4,75.8
path	Ahn'Qiraj/3 62.2,85.1
Follow the path through the final area as you make your way to the last boss, C'Thun. |goto Ahn'Qiraj/3 62.4,86.0 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill C'Thun##15727 |goto 58.4,67.2
_Phase 1_
|tip Eye Beam, a green energy beam, is cast every 3 seconds by Eye of C'Thun and deals about 3000 Nature damage to a random target. If another player is within 10 yards of this target, the beam will jump to them, dealing 1.5x the damage dealt to the previous target. Raid members will want to stay spread out to avoid this happening.
|tip Dark Glare a red energy beam, deals about 50,000 Shadow damage to any player who passes through the beam. The initial target is random, but he will rotate 180 degrees clockwise or counterclockwise. When this happens, move out of its way.
|tip Eye Tentacle will spawn 8 small eye tentacles every 45 seconds, knocking back anyone within a few yards of their spawn point.  They use Mind Flay which deals 750 damage every second for 3 seconds. If the group is ready for them they are easily killed due to their low hit points.
|tip Claw Tentacle spawn at random locations very often. When they spawn they deal about 1500 damage and a knockback.
_Phase 2_
|tip This starts as soon as the Eye of C'Thun's health reaches 0.
|tip Giant Claw Tentacle spawns about every minute. These deal 3500 damage with Ground Rupture, and will need to be tanked due to their high damage. If no one is in range for an attack they will burrow and reappear with full health, repeating the Ground Rupture attack.
|tip Giant Eye Tentacle spawns about every minute. These also deal significant damage with Ground Rupture and they cast _Eye Beam_, which bounces off nearby raid members. Killing these are a priority.
_Stomach of C'Thun_
|tip Every 10 seconds, a random raid member will be swallowed by C'Thun and dropped into his stomach. Swim out of the acid pools and onto one of the patches of land. _Flesh Tentacles_ have 25,000 health and killing them weakens C'Thun, causing him to turn purple and become vulnerable for 45 seconds. This is the time you use to attack and kill him.
|confirm
step
Click the Eye of C'Thun in your bags |use Eye of C'Thun##21221
accept C'Thun's Legacy##8801
|only if not completedq(8801)
step
talk Caelestrasz##15379
turnin C'Thun's Legacy##8801 |goto 51.2,85
|only if not completedq(8801)
step
Throughout the raid, you may have looted a quest item. If not, just skip this step.
Use the Ancient Qiraji Artifact in your bags |use Ancient Qiraji Artifact##21230
accept Secrets of the Qiraji##8784
step
talk Kandrostrasz##15503
turnin Striker's Leggings##8658
turnin Striker's Footguards##8626 |goto Ahn'Qiraj/2 59.1,68.7
|only Hunter
step
talk Vethsera##15504
turnin Striker's Hauberk##8656 |goto 59.4,68.5
|only Hunter
step
talk Andorgos##15502
turnin Striker's Diadem##8657
turnin Striker's Pauldrons##8659 |goto 59.6,68.2
|only Hunter
step
talk Kandrostrasz##15503
turnin Stormcaller's Leggings##8624
turnin Stormcaller's Footguards##8621 |goto 59.1,68.7
|only Shaman
step
talk Vethsera##15504
turnin Stormcaller's Hauberk##8622 |goto 59.4,68.5
|only Shaman
step
talk Andorgos##15502
turnin Stormcaller's Diadem##8623
turnin Stormcaller's Pauldrons##8602 |goto 59.6,68.2
|only Shaman
step
talk Kandrostrasz##15503
turnin Genesis Trousers##8668
turnin Genesis Boots##8665 |goto 59.1,68.7
|only Druid
step
talk Vethsera##15504
turnin Genesis Vest##8666 |goto 59.4,68.5
|only Druid
step
talk Andorgos##15502
turnin Genesis Helm##8667
turnin Genesis Shoulderpads##8669 |goto 59.6,68.2
|only Druid
step
talk Kandrostrasz##15503
turnin Enigma Leggings##8631
turnin Enigma Boots##8634 |goto 59.1,68.7
|only Mage
step
talk Vethsera##15504
turnin Enigma Robes##8633 |goto 59.4,68.5
|only Mage
step
talk Andorgos##15502
turnin Enigma Circlet##8632
turnin Enigma Shoulderpads##8625 |goto 59.6,68.2
|only Mage
step
talk Kandrostrasz##15503
turnin Doomcaller's Trousers##8663
turnin Doomcaller's Footwraps##8660 |goto 59.1,68.7
|only Warlock
step
talk Vethsera##15504
turnin Doomcaller's Robes##8661 |goto 59.4,68.5
|only Warlock
step
talk Andorgos##15502
turnin Doomcaller's Circlet##8662
turnin Doomcaller's Mantle##8664 |goto 59.6,68.2
|only Warlock
step
talk Kandrostrasz##15503
turnin Deathdealer's Leggings##8640
turnin Deathdealer's Boots##8637 |goto 59.1,68.7
|only Rogue
step
talk Vethsera##15504
turnin Deathdealer's Vest##8638 |goto 59.4,68.5
|only Rogue
step
talk Andorgos##15502
turnin Deathdealer's Helm##8639
turnin Deathdealer's Spaulders##8641 |goto 59.6,68.2
|only Rogue
step
talk Kandrostrasz##15503
turnin Conqueror's Legguards##8560
turnin Conqueror's Greaves##8559 |goto 59.1,68.7
|only Warrior
step
talk Vethsera##15504
turnin Conqueror's Breastplate##8562 |goto 59.4,68.5
|only Warrior
step
talk Andorgos##15502
turnin Conqueror's Crown##8561
turnin Conqueror's Spaulders##8544 |goto 59.6,68.2
|only Warrior
step
talk Kandrostrasz##15503
turnin Avenger's Legguards##8629
turnin Avenger's Greaves##8655 |goto 59.1,68.7
|only Paladin
step
talk Vethsera##15504
turnin Avenger's Breastplate##8627 |goto 59.4,68.5
|only Paladin
step
talk Andorgos##15502
turnin Avenger's Crown##8628
turnin Avenger's Pauldrons##8630 |goto 59.6,68.2
|only Paladin
step
talk Kandrostrasz##15503
turnin Trousers of the Oracle##8593
turnin Footwraps of the Oracle##8596 |goto 59.1,68.7
|only Priest
step
talk Vethsera##15504
turnin Vestments of the Oracle##8603 |goto 59.4,68.5
|only Priest
step
talk Andorgos##15502
turnin Tiara of the Oracle##8592
turnin Mantle of the Oracle##8594 |goto 59.6,68.2
|only Priest
step
talk Andorgos##15502
turnin Secrets of the Qiraji##8784 |goto 59.6,68.2
|only if haveq(8784)
step
talk Kandrostrasz##15503 |goto 59.2,68.8
Turn in any extra Qiraji Lord's Insginias you have.
turnin Mortal Champions##8595 |or
turnin Mortal Champions##8579
|confirm
step
Congratulations, you have finished the Temple of Ahn'Qiraj raid guide!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Outland Dungeons\\Auchindoun: Auchenai Crypts",{
mapid=256,
achieveid={666},
patch='30008',
condition_suggested=function() return level>=15 and level<=30 end,
keywords={"Terokkar, Forest"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the Auchindoun: Auchenai Crypts dungeon.",
},[[
step
label "start"
Press _I_ and queue for the Mana-Tombs or enter the dungeon with your group |goto Auchenai Crypts/1 44.1,75.1 |c
step
talk Draenei Spirit##54725
accept The Dead Watcher##29590 |goto Auchenai Crypts/1 44.3,72.6
accept The End of the Exarch##29596 |goto Auchenai Crypts/1 44.3,72.6
step
map Auchenai Crypts/1
path follow smart; loop off; ants curved; dist 15
path	44.1,69.5	43.4,54.6	43.5,41.5
path	44.1,27.6	44.5,17.3	Auchenai Crypts/2 22.4,11.9
path	Auchenai Crypts/2 22.8,23.3	Auchenai Crypts/2 29.2,22.8
path	Auchenai Crypts/2 31.6,17.5	Auchenai Crypts/2 41.8,17.6
Follow the path |goto Auchenai Crypts/2 41.8,17.6 < 6
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Tormented Soulpriest##54698
accept Raging Spirits##29591 |goto Auchenai Crypts/2 51.0,17.9
step
map Auchenai Crypts/2
path follow smart; loop off; ants curved; dist 15
path	46.2,23.0	46.2,41.3	46.2,56.9
Follow the path |goto Auchenai Crypts/2 46.2,56.9 < 6
|tip Beware of invisible Raging Souls on the bridge.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Shirrak the Dead Watcher##18371
|tip Casters need to stay at max range to minimize casting speed reduction caused by Inhibit Magic.
|tip Attract Magic will Death Grip the party to Shirrak.
Defeat Shirrak the Dead Watcher |scenariogoal 24893 |goto 46.2,68.7
Defeat Shirrak the Dead Watcher |q 29590/1 |only if haveq(29590)
stickystart "Spirits"
step
map Auchenai Crypts/2
path follow smart; loop off; ants curved; dist 15
path	46.2,77.6	46.9,88.0	52.8,88.0
path	58.7,85.8	66.3,88.1	73.6,88.0
path	73.7,78.3
Follow the path |goto Auchenai Crypts/2 73.7,78.3 < 6
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Exarch Maladaar##18373
|tip Soul Scream will disorient anyone within 10 yards for 2 seconds.
|tip Stolen Soul makes a copy of a random player, lowering their damage and healing and attacking them for 2 minutes.
|tip Summon Avatar occurs at 25% health. This avatar needs to be picked up and deals heavy physical damage.
Defeat Exarch Maladaar |scenariogoal 1/34430 |goto 74.2,49.9
step
label "Spirits"
kill 5 Angered Skeleton##18524+ |q 29591/1
kill 5 Raging Skeleton##18524+ |q 29591/2
kill 3 Auchenai Necromancer##18702+ |q 29591/3
only if haveq(29591)
step
map Auchenai Crypts/2
path follow smart; loop off; ants curved; dist 15
path	73.6,54.1	73.7,71.2	73.5,87.8
path	64.5,87.7	55.8,87.7	46.5,87.7
path	46.2,71.2	46.2,51.2	46.2,34.7
path	46.3,25.6
Follow the path back to the quest giver |goto Auchenai Crypts/2 46.3,25.6 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
talk Tormented Soulpriest##54698
turnin Raging Spirits##29591
|tip This quest requires you to run back to a previous area before you return to the beginning of the instance.
only if haveq(29591)
step
map Auchenai Crypts/2
path follow smart; loop off; ants curved; dist 15
path	73.6,54.1	73.7,71.2	73.5,87.8
path	64.5,87.7	55.8,87.7	46.5,87.7
path	46.2,71.2	46.2,51.2	46.2,34.7
path	46.3,25.6	42.1,17.6	30.4,17.6
path	Auchenai Crypts/1 44.1,26.3	Auchenai Crypts/1 44.1,57.6
Follow the path to the beginning of the dungeon |goto Auchenai Crypts/1 44.1,57.6 < 30
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if not completedq(29590) or not completedq(29596)
step
talk Draenei Spirit##54725
turnin The Dead Watcher##29590 |goto Auchenai Crypts 44.3,72.6
turnin The End of the Exarch##29596 |goto Auchenai Crypts 44.3,72.6
only if not completedq(29590) or not completedq(29596)
step
Congratulations! You have completed Auchenai Crypts.
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Outland Dungeons\\Auchindoun: Mana-Tombs",{
mapid=272,
achieveid={651},
patch='30103',
condition_suggested=function() return level>=15 and level<=30 end,
keywords={"Terokkar, Forest"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the Auchindoun: Mana-Tombs dungeon.",
},[[
step
label "start"
Press _I_ and queue for the Mana-Tombs or enter the dungeon with your group |goto Mana-Tombs/1 33.5,17.3 |c
step
talk Mamdy the "Ologist"##54694
accept Intriguing Specimens##29574 |goto Mana-Tombs 32.7,19.4
only if not completedq(29574)
step
talk Artificer Morphalius##54692
accept Safety is Job One##29573 |goto 34.4,19.4
accept Undercutting the Competition##29575 |goto 34.4,19.4
only if not completedq(29573) or not completedq(29575)
step
kill Pandemonius##18341
|tip Clear out this room before you pull the boss, they will aggro with him.
|tip When Dark Shell is cast, STOP ATTACKING. You will kill yourself if you don't.
Loot Pandemonius' Essence |q 29574/1 |goto 48.2,27.7 |only if haveq(29574)
Defeat Pandemonius |scenariogoal 24894 |goto 48.2,27.7
step
map Mana-Tombs/1
path follow smart; loop off; ants curved; dist 15
path	47.0,28.7	55.8,28.8	60.0,33.5
path	60.7,43.7	60.7,52.3	56.0,65.0
Follow the path |goto Mana-Tombs/1 56.0,65.0 < 15
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Tavarok##18343
|tip Crystal Prison will trap a random player and deal 10% of the maximum health every second for 5 seconds.
|tip Arcing Smash will damage anyone standing in front of him.
Loot Tavarok's Heart |q 29574/2 |goto Mana-Tombs/1 60.6,74.9 |only if haveq(29574)
Defeat Tavarok |scenariogoal 24895 |goto 61.3,74.0
step
map Mana-Tombs/1
path follow smart; loop off; ants curved; dist 15
path	60.7,74.9	60.8,83.8	50.0,84.3
path	39.2,84.3	32.6,84.0	32.6,74.0
path	32.6,61.2
Follow the path |goto Mana-Tombs/1 32.6,61.2 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Nexus-Prince Shaffar##18344
Loot Shaffar's Wrappings |q 29575/1 |goto 32.4,50.7 |only if haveq(29575)
Defeat Nexus-Prince Shaffar |scenariogoal 1/34431 |goto 32.4,50.7
step
map Mana-Tombs/1
path follow smart; loop off; ants curved; dist 15
path	32.5,46.5	32.6,34.6	41.4,34.1
path	38.6,28.6	33.8,25.2
Follow the path |goto Mana-Tombs/1 33.8,25.2 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if not completedq(29573) or not completedq(29575) or not completedq(29574)
step
talk Artificer Morphalius##54692
turnin Safety is Job One##29573 |goto Mana-Tombs 34.3,19.6
turnin Undercutting the Competition##29575 |goto Mana-Tombs 34.3,19.6
only if not completedq(29573) or not completedq(29575)
step
talk Mamdy the "Ologist"##54694
turnin Intriguing Specimens##29574 |goto 32.8,19.4
only if not completedq(29574)
step
Congratulations! You have completed Mana-Tombs
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Outland Dungeons\\Auchindoun: Sethekk Halls",{
mapid=258,
achieveid={653},
patch='40100',
condition_suggested=function() return level>=15 and level<=30 end,
keywords={"Terokkar, Forest"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the Auchindoun: Sethekk Halls dungeon.",
},[[
step
label "start"
Press _I_ and queue for the Escape from Sethekk Halls or enter the dungeon with your group |goto Sethekk Halls/1 73.4,36.5 |c
step
talk Isfar##54840
accept Brother Against Brother##29605 |goto Sethekk Halls 72.2,35.5
accept Terokk's Legacy##29606 |goto Sethekk Halls 72.2,35.5
only if not completedq(29605) or not completedq(29606)
step
map Sethekk Halls/1
path follow smart; loop off; ants curved; dist 12
path	73.3,34.8	73.1,28.0	63.4,27.8
path	59.0,38.0	59.0,45.8	54.1,52.1
path	48.7,53.8
Follow the path |goto Sethekk Halls/1 48.7,53.8 < 10
|tip Kill Time-Lost Controllers first. They drop totems that mind control.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Darkweaver Syth##18472
|tip At 90%, 55%, and 15% health, Syth will summon four elementals. AoE these quickly.
|tip Chain Lightning deals AoE damage so try and spread out.
Loot Terokk's Mask |q 29606/1 |goto 48.6,67.5 |only if haveq(29606)
Defeat Darkweaver Syth |scenariogoal 24889 |goto 48.6,67.5
step
talk Dealer Vijaad##54847
accept Eyes of Desire##29607 |goto Sethekk Halls 48.3,67.7
only if not completedq(29607)
step
talk Lakka##18956
Tell him: "_I'll have you out of there in just a moment._"
Free Lakka |q 29605/1 |goto 50.8,70.8
only if haveq(29605)
stickystart "Serpent"
step
map Sethekk Halls/1
path follow smart; loop off; ants curved; dist 12
path	48.6,71.2	48.6,83.3	48.9,95.0
path	Sethekk Halls/2 53.2,94.9	Sethekk Halls/2 53.1,82.5
path	Sethekk Halls/2 44.0,82.4	Sethekk Halls/2 43.1,88.6
path	Sethekk Halls/2 30.1,88.4	Sethekk Halls/2 27.2,80.9
path	Sethekk Halls/2 32.6,71.2	Sethekk Halls/2 32.6,41.6
Follow the path |goto Sethekk Halls/2 32.6,41.6 < 10
|tip Kill Time-Lost Controllers first. They drop totems that mind control.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if not heroic_dung()
step
map Sethekk Halls/1
path follow smart; loop off; ants curved; dist 12
path	48.6,71.2	48.6,83.3	48.9,95.0
path	Sethekk Halls/2 53.2,94.9	Sethekk Halls/2 53.1,82.5
path	Sethekk Halls/2 44.0,82.4	Sethekk Halls/2 43.1,88.6
path	Sethekk Halls/2 30.1,88.4	Sethekk Halls/2 27.2,80.9
path	Sethekk Halls/2 32.6,71.2
Follow the path |goto Sethekk Halls/2 32.6,71.2 < 10
|tip Kill Time-Lost Controllers first. They drop totems that mind control.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if heroic_dung()
step
kill Anzu##23035
|tip At 75% and 35% health, Anzu will become immune and summon his brood. AoE the birds and continue with Anzu.
|tip Paralyzing Screech will stun everyone for 6 seconds.
|tip Dive Causes Anzu to charge a player and knock them back.
|tip Spell Bomb should be dispelled whenever possible.
Defeat Anzu |scenariogoal 24890 |goto Sethekk Halls/2 32.4,56.0
only if heroic_dung()
step
kill Talon King Ikiss##18473 |tip At 80%, 50%, and 25% health, Ikiss will used Arcane Explosion. Hide behind a pillar.
|tip Just before Arcane Explosion is cast, Ikiss will Slow the whole party. Stay close to a pillar. |only if heroic_dung()
Loot Terokk's Quill |q 29606/2 |goto 32.2,29.5 |only if haveq(29606)
Defeat Talon King Ikiss |scenariogoal 1/34428 |goto 32.2,29.5
step
label "Serpent"
kill Cobalt Serpent##19428+
|tip Do this as you run through the next part of the dungeon.
collect 3 Cobalt Eye##72480 |q 29607/1
only if haveq(29607)
step
map Sethekk Halls/2
path follow smart; loop off; ants curved; dist 12
path	32.5,27.5	40.7,27.5
path	Sethekk Halls/1 54.3,27.5	Sethekk Halls/1 64.3,27.8	Sethekk Halls/1 72.5,27.9
Follow the path back to the quest giver |goto Sethekk Halls/1 72.5,27.9 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
talk Isfar##54840
turnin Brother Against Brother##29605 |goto 72.2,35.5 |noway
turnin Terokk's Legacy##29606 |goto 72.2,35.5 |noway
only if haveq(29605) or haveq(29606)
step
map Sethekk Halls/1
path follow smart; loop off; ants curved; dist 12
path	73.3,34.8	73.1,28.0	63.4,27.8
path	59.0,38.0	59.0,45.8	54.1,52.1
path	48.7,53.8
Follow the path back to the quest giver |goto Sethekk Halls/1 48.7,53.8 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
talk Dealer Vijaad##54847
turnin Eyes of Desire##29607 |goto Sethekk Halls 48.1,67.7 |noway
only if haveq(29607)
step
Congratulations! You have completed Sethekk Halls
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Outland Dungeons\\Auchindoun: Shadow Labyrinth",{
mapid=260,
achieveid={654},
patch='50004',
condition_suggested=function() return level>=20 and level<=30 end,
keywords={"Terokkar, Forest"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the Auchindoun: Shadow Labyrinth dungeon.",
},[[
step
label "start"
Press _I_ and queue for Shadow Labyrinth or enter the dungeon with your group |goto Shadow Labyrinth/1 22.0,12.4 |c
step
talk Spy Grik'tha##54891
accept Find Spy To'gun##29640 |goto Shadow Labyrinth 22.6,12.5
only if not completedq(29640)
step
talk Field Commander Mahfuun##54890
accept The Codex of Blood##29643 |goto 21.3,13.1
accept Ambassador Hellmaw##29645 |goto 21.3,13.1
only if not completedq(29643) or not completedq(29645)
step
map Shadow Labyrinth/1
path follow smart; loop off; ants curved; dist 15
path	21.9,14.9	28.2,20.3	35.4,22.6
path	38.9,32.6	34.0,39.1
Follow the path |goto Shadow Labyrinth/1 34.0,39.1 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 12 Cabal Ritualist##18794+ |q 29645/1 |goto 29.5,39.1
|tip Kill all the Ritualists in this room to activate the boss.
kill Ambassador Hellmaw##18731
|tip Stay behind Hellmaw to avoid damage from Corrosive Acid.
|tip Fear will periodically be cast, Fearing the party for 6 seconds.
Defeat Ambassador Hellmaw |scenariogoal 24863 |goto Shadow Labyrinth/1 21.4,39.1
step
map Shadow Labyrinth/1
path follow smart; loop off; ants curved; dist 12
path	19.2,39.2	14.5,31.4	17.0,22.4
|tip Opening the world map will display an ant trail guiding you through the current floor.
talk Spy To'gun##18891
turnin Find Spy To'gun##29640 |goto 17.0,22.4 |noway
accept The Soul Devices##29641 |goto 17.0,22.4 |noway
only if not completedq(29641)
step
map Shadow Labyrinth/1
path follow smart; loop off; ants curved; dist 12
path	16.3,23.5	14.5,31.4	19.2,39.2
path	26.6,45.6	26.5,51.3
Follow the path |goto Shadow Labyrinth/1 26.5,51.3 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
stickystart "souldevice"
step
kill Blackheart the Inciter##18667
|tip If you do not clear the room first, all the mobs will attack you when you fight the boss.
|tip Incite Chaos will cause all party members to attack each other for 30 seconds.
|tip War Stomp will deal damage and knock back anyone within 20 yards of Blackheart.
Defeat Blackheart the Inciter |scenariogoal 24868 |goto 26.2,68.2
step
map Shadow Labyrinth/1
path follow smart; loop off; ants curved; dist 12
path	26.5,72.3	27.0,88.1	34.0,88.1
path	46.0,88.1	53.0,87.9	53.4,78.8
Follow the path |goto Shadow Labyrinth/1 53.4,78.8 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Grandmaster Vorpil##18732
|tip If you do not clear the room first, all the mobs will attack you when you fight the boss.
|tip Draw Shadows will teleport everyone to Vorpil's platform into Rain of Fire, move out.
|tip Void Travelers will be summoned by portals, kill them before they reach Vorpil.
|tip Vorpil will cast Banish on a player randomly |only if heroic_dung()
Defeat Grandmaster Vorpil |scenariogoal 24866 |goto 53.3,56.5
step
click Codex of Blood##6892
turnin The Codex of Blood##29643 |goto 53.3,59.0
accept Into the Heart of the Labyrinth##29644 |goto 53.3,59.0
only if not completedq(29644)
step
map Shadow Labyrinth/1
path follow smart; loop off; ants curved; dist 12
path	53.3,52.7	53.3,39.2	59.4,39.2
Follow the path |goto Shadow Labyrinth/1 59.4,39.2 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Murmur##18708
|tip If you do not clear the room first, all the mobs will attack you when you fight the boss.
|tip Murmur's Touch will deal damage to nearby party memebers, so stay spread out. |only if heroic_dung()
|tip Thundering Storm will hit all players if they are more than 25 yards away.
Defeat Murmur |scenariogoal 1/34420 |goto 80.8,39.1
step
label "souldevice"
click Soul Device##182940 |tip Collect these as you traverse the Shadow Labyrinth.
collect 5 Soul Device##27480 |q 29641/1
only if haveq(29641)
step
map Shadow Labyrinth/1
path follow smart; loop off; ants curved; dist 12
path	77.8,39.1	67.6,39.0	59.3,38.8
path	53.3,39.2	53.3,57.7	53.3,68.2
path	53.3,86.2	46.0,88.1	36.0,87.9
path	27.8,87.9	26.6,68.3	26.6,45.3
path	34.4,39.2	38.7,30.7	34.1,22.3
path	23.3,17.8	22.0,13.9
Follow the path back to the start of the dungeon |goto Shadow Labyrinth/1 22.0,13.9 < 40
|tip Opening the world map will display an ant trail guiding you through the current floor.
|tip You can Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance.
talk Field Commander Mahfuun##54890
turnin Into the Heart of the Labyrinth##29644 |goto 21.3,13.1 |noway
turnin Ambassador Hellmaw##29645 |goto 21.3,13.1 |noway
only if haveq(29644) or haveq(29645)
step
talk Spy Grik'tha##54891
turnin The Soul Devices##29641 |goto 22.6,12.5
only if haveq(29641)
step
Congratulations! You have completed Shadow Labyrinth.
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Outland Dungeons\\Caverns of Time: The Black Morass",{
mapid=273,
achieveid={655},
patch='40001',
condition_suggested=function() return level>=25 and level<=30 end,
keywords={"Opening, Dark, Portal, BM, CoT, Tanaris"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the Caverns of Time: Opening the Dark Portal dungeon.",
},[[
step
label "start"
Press _I_ and queue for Caverns of Time: Opening the Dark Portal or enter the dungeon with your group |goto The Black Morass/0 51.7,0.5 |c
step
talk Sa'at##20201
accept The Opening of the Dark Portal##10297 |goto The Black Morass 49.3,6.4
collect Chrono-Beacon##24289
step
Protect Medivh while he attempts to open the Dark Portal.
|tip If his shield gets too low you will fail.
|tip Monsters will appear randomly in the swamp out of yellow portals.
|tip To stop the flow of monsters you have to kill the Rift Lords summmoning the portals.
kill Rift Lord##17839+
|tip Every 6 waves a boss will spawn. Simply kill these like you did the Rift Lords.
confirm
step
Wave 6
kill Chrono Lord Deja##17879
|tip Arcane Blast deals arcane damage and knocks a player back.
|tip Time Lapse slows a players attack and movement speed, dispel.
|tip Arcane Discharge deals arcane damage to everyone within 50 yards.
|tip Attraction pulls all players within 50 yards to Deja.
Defeat Chrono Lord Deja |scenariogoal 24869 |goto The Black Morass/0 48.6,73.6
step
Continue to protect Medivh while he attempts to open the Dark Portal.
|tip If his shield gets too low you will fail
|tip Monsters will appear randomly in the swamp out of yellow portals.
|tip To stop the flow of monsters you have to kill the Rift Lords summmoning the portals.
kill Rift Lord##17839+
confirm
step
Wave 12
kill Temporus##17880
|tip Hasten increases Temporus' attack speed and movement speed, dispel quickly.
|tip Wing Buffet deals damage and knocks back anyone within 15 yards.
|tip Stop casting when Spell Reflection is active.
Defeat Temporus |scenariogoal 24870 |goto The Black Morass/0 48.6,73.6
step
Continue to protect Medivh while he attempts to open the Dark Portal.
|tip If his shield gets too low you will fail,
|tip Monsters will appear randomly in the swamp out of yellow portals.
|tip To stop the flow of monsters you have to kill the Rift Lords summmoning the portals.
kill Rift Lord##17839+
confirm
step
Wave 18
kill Aeonus##17881
|tip Sand Breath deals damage and slows anyone in front of Aeonus.
|tip Cleave deals damage to anyone in front of Aeonus.
|tip Enrage increases Aeonus' attack speed. Save a cooldown for this.
Defeat Aeonus |scenariogoal 1/34422 |goto The Black Morass/0 48.6,73.6
Open the Dark Portal |q 10297/1 |only if haveq(10297) |goto 48.9,71.8
step
talk Sa'at##20201
turnin The Opening of the Dark Portal##10297 |goto 49.3,6.5
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Outland Dungeons\\Caverns of Time: Escape from Durnholde Keep",{
mapid=274,
achieveid={652},
patch='30302',
condition_suggested=function() return level>=15 and level<=30 end,
keywords={"EDK, DK, CoT, Tanaris"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the Caverns of Time: Escape from Durnholde Keep dungeon.",
},[[
step
label "start"
Press _I_ and queue for the Escape from Durnholde Keep or enter the dungeon with your group |goto Old Hillsbrad Foothills/0 23.2,24.8 |c
step
map Old Hillsbrad Foothills/0
path follow smart; loop off; ants curved; dist 15
path	23.2,24.8	24.0,28.9	26.2,32.2
path	26.7,38.7	25.8,43.9	27.5,47.0
Follow the path |goto Old Hillsbrad Foothills/0 27.5,47.0 < 6
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Erozion##18723
accept Taretha's Diversion##29598 |goto Old Hillsbrad Foothills 28.9,48.3 |only if not completedq(29598)
collect Pack of Incendiary Bombs##25853 |goto Old Hillsbrad Foothills 28.9,48.3
step
talk Brazen##18725 |goto 29.2,47.9
Tell him: "_I'm ready to go to Durnholde Keep._" |goto 69.3,71.5 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Old Hillsbrad Foothills/0
path follow smart; loop off; ants curved; dist 15
path	69.3,71.6	70.4,67.4	72.5,63.3
path	74.3,63.2	76.3,61.8	78.0,62.2
Follow the path |goto Old Hillsbrad Foothills/0 78.0,62.2 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
click Barrels##2886 |goto 67.9,59.7 < 10 |c |noway
|tip You will need to set all 5 bombs inside the barrels.
Location of Barrel 1 |goto 77.5,65.7 < 10
Location of Barrel 2 |goto 76.2,68.1 < 10
Location of Barrel 3 |goto 74.3,68.2 < 10
Location of Barrel 4 |goto 68.9,62.1 < 10
Location of Barrel 5 |goto 68.4,59.1 < 10
Set 5 Internment Lodges on Fire |q 29598/1 |only if haveq(29598)
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm |only if not haveq(29598) or completedq(29598)
step
kill Lieutenant Drake##17848
|tip Lieutenant Drake will come down these stairs when the building are on fire.
Defeat Lieutenant Drake |scenariogoal 24891 |goto 75.7,64.8
step
map Old Hillsbrad Foothills/0
path follow smart; loop off; ants curved; dist 10
path	75.7,64.5	76.3,63.0	74.5,62.8
path	73.2,61.3	74.0,59.1	75.0,59.5
path	74.6,58.4	74.5,57.7
Follow the path |goto Old Hillsbrad Foothills/0 74.5,57.7 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Thrall##17876
|tip He is in the basement.
turnin Taretha's Diversion##29598 |goto 74.5,57.7
accept Escape from Durnholde##29599 |goto 74.5,57.7
only if not completedq(29599)
step
talk Thrall##17876 |goto 74.5,57.7
Tell him: "_We are ready to get you out of here Thrall. Let's go!_"
|tip Make sure everyone has the quest. You cannot pick it up after starting the event.
confirm
step
kill Captain Skarloc##17862
|tip Follow Thrall, he will take you to Skarloc
Defeat Captain Skarloc |scenariogoal 24892 |goto 69.6,68.4
step
talk Thrall##17876
|tip Talk to Thrall after killing the boss.
Tell him: "_Taretha cannot see you, Thrall._"
confirm
step
talk Thrall##17876 |goto 52.8,41.2
|tip Follow Thrall until he stops near Tarren Mill, you will have to fight guards along the way.
Tell him: "_We're ready, Thrall._"
confirm
step
talk Taretha##18887 |goto 51.3,29.8
|tip Follow Thrall until he comes upstairs here.
Tell her: "_Strange wizard?_"
confirm
step
kill Epoch Hunter##18096
|tip Follow Thrall outside and you will have to fight a few waves of dragonkin. The Boss will come down to fight once you have killed enough mobs.
Defeat Epoch Hunter |scenariogoal 1/34429 |goto Old Hillsbrad Foothills/0 50.2,31.5
Fulfill Thrall's Destiny |goto Old Hillsbrad Foothills/0 50.2,31.5 |q 29599/1 |only if haveq(29599)
|tip You will have to wait a short time for the dialogue to complete
step
talk Erozion##18723
turnin Escape from Durnholde##29599 |goto 50.3,30.9
only if haveq(29599)
step
Congratulations! You have completed Escape from Durnholde Keep.
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Outland Dungeons\\Coilfang Reservoir: Slave Pens",{
mapid=265,
achieveid={649},
patch='40001',
condition_suggested=function() return level>=10 and level<=30 end,
keywords={"SP, CR, Zangarmarsh"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the Coilfang Reservoir: Slave Pens dungeon.",
},[[
step
label "start"
Press _I_ and queue for The Slave Pens or enter the dungeon with your group |goto The Slave Pens/1 20.0,13.4 |c
step
talk Watcher Jhang##54667
accept Lost in Action##29563 |goto The Slave Pens 18.9,11.3
accept The Heart of the Matter##29565 |goto The Slave Pens 18.9,11.3
only if not completedq(29563) or not completedq(29565)
step
talk Nahuud##54668
accept A Brother Betrayed##29564 |goto 17.9,12.1
only if not completedq(29564)
step
map The Slave Pens/1
path follow smart; loop off; ants curved; dist 15
path	16.9,15.1	10.2,29.8	6.3,45.9
path	8.7,53.2	13.9,51.8	23.8,50.3
path	33.5,50.7	41.3,52.8	42.4,41.9
path	40.3,34.8	42.8,21.3
Follow the path |goto The Slave Pens/1 42.8,21.3 < 6
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Mennu the Betrayer##17941
|tip Killing the Corrupted Nova Totem is top priority, followed by Mennu's Healing Ward.
Defeat Mennu the Betrayer |scenariogoal 24907 |goto 48.8,24.3
Defeat Mennu the Betrayer |q 29564/1 |only if haveq(29564)
step
map The Slave Pens/1
path follow smart; loop off; ants curved; dist 15
path	48.8,23.6	48.8,13.0	45.5,22.1
path	45.3,35.9	48.8,44.2	48.8,53.8
Follow the path |goto The Slave Pens/1 48.8,53.8 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Jump down here |goto 52.2,65.4 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Weeder Greenthumb##17890
Discover Weeder Greenthumb |q 29563/2 |goto 48.9,83.4
only if haveq(29563)
step
map The Slave Pens/1
path follow loose; loop off; ants curved; dist 15
path	50.0,66.6	48.8,71.0	51.3,75.3
path	55.1,74.2	57.2,61.2	58.9,53.2
Follow the path |goto The Slave Pens/1 58.9,53.2 < 6
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Rokmar the Crackler##17991
|tip Grievous Wound will bleed all party members until they are healed to full health.
|tip Frenzy causes Rokmar to gain increased physical damage and 60% increased attack speed.
Loot The Invader's Claw |q 29565/1 |only if haveq(29565)
Defeat Rokmar the Crackler |scenariogoal 24908 |goto 57.3,45.4
step
map The Slave Pens/1
path follow smart; loop off; ants curved; dist 15
path	59.4,48.6	67.5,45.5	74.7,51.0
path	88.0,47.7	90.5,53.3
Follow the path |goto The Slave Pens/1 90.5,53.3 < 6
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Naturalist Bite##17893
Discover Naturalist Bite |q 29563/1 |goto 95.7,66.2
only if haveq(29563)
step
talk Naturalist Bite##17893
|tip Be ready to fight a couple mobs.
kill Coilfang Champion##17957+, Coilfang Enchantress##17961+
Talk to Naturalist Bite
Tell him: "_Naturalist, please grant me your boon_" |havebuff 132127 |goto 95.7,66.2
step
kill Quagmirran##17942
|tip Avoid standing in front of Quagmirran or you will be hit with Acid Spray and Cleave.
|tip Poison Bolt Volley Deals nature damage to all party members.
|tip Uppercut deals physical damage and knocked the affected player up in the air.
Loot The Slave Master's Eye |q 29565/2 |goto The Slave Pens 86.2,67.9 |only if haveq(29565)
Defeat Quagmirran |scenariogoal 1/34433 |goto The Slave Pens 86.2,67.9
step
map The Slave Pens/1
path follow smart; loop off; ants curved; dist 15
path	87.9,62.0	90.5,52.9	86.6,48.4
path	77.0,50.4	67.7,47.7	59.1,49.3
path	52.3,48.8	45.0,48.1	39.0,54.2
path	29.3,50.2	17.6,50.8	7.5,52.8
path	6.9,42.5	11.1,27.2	17.9,12.2
Follow the path back to the beginning of the dungeon |goto The Slave Pens/1 17.9,12.2 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
talk Nahuud##54668
turnin A Brother Betrayed##29564 |goto The Slave Pens 17.9,12.2
|tip You can also Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance.
only if not completedq(29564)
step
talk Watcher Jhang##54667
turnin Lost in Action##29563 |goto 18.8,11.3
turnin The Heart of the Matter##29565 |goto 18.8,11.3
only if not completedq(29563) or not completedq(29565)
step
Congratulations! You have completed The Slave Pens.
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Outland Dungeons\\Coilfang Reservoir: The Steamvault",{
mapid=263,
achieveid={656},
patch='40300',
condition_suggested=function() return level>=20 and level<=30 end,
keywords={"SV, CR, Zangarmarsh"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the Coilfang Reservoir: The Steamvault dungeon.",
},[[
step
label "start"
Press _I_ and queue for The Steamvault or enter the dungeon with your group |goto The Steamvault/1 17.6,29.8 |c
step
talk Watcher Jhang##54848
accept A Proper Fate##29613 |goto The Steamvault 17.9,27.3
step
talk Naturalist Bite##54849
accept Containment is Key##29614 |goto 17.5,25.9
step
talk Windcaller Claw##54851
accept Windcaller Claw and the Water Thief##29615 |goto 18.9,27.8
stickystart "Kills"
step
map The Steamvault/1
path follow smart; loop off; ants curved; dist 15
path	20.1,28.0	25.2,27.6	30.8,29.4
path	32.3,39.6	38.4,34.4	44.9,28.4
path	49.4,23.7
Follow the path |goto The Steamvault/1 49.4,23.7 < 15
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Hydromancer Thespia##17797
|tip Enveloping Winds traps a player in a cyclone, stunning them for 6 seconds.
|tip Lightning Cloud deals nature damage to anyone standing in the cloud. Move out.
|tip Lung Burst deals nature damage every 2 seconds for 10 seconds. Dispel whenever possible.
|tip Water Elementals will spawn, Interrupt Water Bolt Volley and kill them quickly.
Defeat Hydromancer Thespia |scenariogoal 24884 |goto The Steamvault 54.3,12.4
step
click Main Chambers Access Panel##7147 |goto 54.2,10.6
You hear a faint echo...
confirm
step
map The Steamvault/1
path follow smart; loop off; ants curved; dist 15
path	53.7,17.7	46.7,24.9	42.4,34.0
path	44.9,40.4	56.0,45.8	50.6,55.1
path	48.2,61.5	41.1,67.3
Follow the path |goto The Steamvault/1 41.1,67.3 < 15
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Mekgineer Steamrigger##17796
|tip Electrified Net immobilizes and deals nature damage over 6 seconds.
|tip Super Shrink Ray is a rontal cone attack that reduces damage dealt by 35%. Avoid standing in front.
|tip Spread out to avoid multiple players being hit by the Saw Blade.
|tip Mechanics spawn in 25% health intervals and heal the boss. Kill them quickly.
Loot the Irradiated Gear |q 29614/3 |only if haveq(29614)
Defeat Mekgineer Steamrigger |scenariogoal 24885 |goto The Steamvault 33.6,81.2
step
click Main Chambers Access Panel##7147 |goto 31.8,84.0
You hear a faint echo... and You hear a loud rumble of metal grinding on stone....
confirm
step
map The Steamvault/1
path follow smart; loop off; ants curved; dist 15
path	32.9,82.4	39.9,68.4	46.6,66.5
path	49.5,56.8	56.7,43.5	68.6,43.4
Follow the path |goto The Steamvault/1 68.6,43.4 < 15
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Warlord Kalithresh##17798
|tip When Kalithresh channels on a Naga Distiller, kill it within 12 seconds or he will Enrage.
|tip Stop casting during Spell Reflection.
|tip Impale bleeds a player over 12 seconds.
Defeat Warlord Kalithresh |scenariogoal 3248 |goto 78.7,43.3
step
map The Steamvault/1
path follow smart; loop off; ants curved; dist 15
path	76.5,43.5	67.1,43.5	48.0,42.6
path	42.2,32.9	32.4,39.5	28.1,28.4
path	23.2,28.1
Follow the path |goto The Steamvault/1 23.2,28.1 < 15
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
label "Kills"
kill 3 Bog Overlord##21694+|q 29614/1
kill 6 Coilfang Leper##21338+ |q 29614/2
only if haveq(29614)
step
talk Windcaller Claw##54851
turnin Windcaller Claw and the Water Thief##29615 |goto 18.8,27.6
only if haveq(29615)
step
talk Watcher Jhang##54848
turnin A Proper Fate##29613 |goto 18.0,27.2
only if haveq(29613)
step
talk Naturalist Bite##54849
turnin Containment is Key##29614 |goto 17.6,25.9
only if haveq(29614)
step
Congratulations! You have completed The Steamvault
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Outland Dungeons\\Coilfang Reservoir: Underbog",{
mapid=262,
achieveid={650},
patch='30009',
condition_suggested=function() return level>=10 and level<=30 end,
keywords={"UB, CR, Zangarmarsh"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the Coilfang Reservoir: Underbog dungeon.",
},[[
step
label "start"
Press _I_ and queue for the Underbog or enter the dungeon with your group |goto The Underbog/1 29.7,67.9 |c
step
talk Naturalist Bite##54678
accept A Necessary Evil##29568 |goto The Underbog 29.5,64.7
step
talk Watcher Jhang##54675
accept Rescuing the Expedition##29570 |goto 30.9,65.3
step
talk T'shu##54674
accept Stalk the Stalker##29567 |goto 31.5,65.5
accept Bring Me A Shrubbery!##29691 |goto 31.5,65.5
stickystart "sanguinehibiscus"
step
map The Underbog/1
path follow smart; loop off; ants curved; dist 15
path	31.9,62.5	37.0,60.3	44.2,61.4
path	51.5,69.2	56.9,82.0	59.1,87.8
path	56.2,89.7
Follow the path |goto The Underbog/1 56.2,89.7
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Hungarfen##17770
|tip Stay away from Underbog Mushrooms. They explode after 20 seconds leaving a nasty DoT.
|tip Foul Spores is cast at 20% health, leeching health from anyone within 15 yards.
Defeat Hungarfen |scenariogoal 24904 |goto The Underbog/1 70.2,91.4
step
map The Underbog/1
path follow smart; loop off; ants curved; dist 15
path	70.3,87.7	70.2,76.5	61.4,68.1
path	59.8,56.2	70.7,55.9	74.4,43.9
path	68.5,36.6	69.1,30.7
Follow the path |goto The Underbog/1 69.1,30.7
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Ghaz'an##18105
|tip Stand off to Ghaz'an's sides or you will be hit with Acid Breath or Tail Sweep.
Defeat Ghaz'an |scenariogoal 24905 |goto The Underbog/1 78.3,28.0
step
Jump down in the water here  |goto 78.9,24.5 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Swim across the water and jump down here |goto 79.6,15.2 < 5
confirm
step
talk Earthbinder Rayge##17885
Discover Earthbinder Rayge |q 29570/1 |goto 67.4,21.3
only if haveq(29570)
step
map The Underbog/1
path follow smart; loop off; ants curved; dist 15
path	79.7,11.6	71.6,14.1	62.0,20.0
path	57.1,26.1	45.9,28.1
Follow the path |goto The Underbog/1 45.9,28.1 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Swamplord Musel'ek##17826, Claw##17827
|tip Spread out to minimize damage from Volley.
|tip Knock Away will knock the targeted player back and deal physical damage.
Defeat Swamplord Musel'ek and Claw |scenariogoal 24906 |goto 41.5,25.4
step
Talk to Windcaller Claw
Discover Windcaller Claw |q 29570/2 |goto The Underbog/1 40.7,21.6
only if haveq(29570)
step
map The Underbog/1
path follow smart; loop off; ants curved; dist 15
path	41.5,28.3	40.6,42.5	35.8,43.1
path	30.8,34.8	26.9,36.1
Follow the path |goto The Underbog/1 26.9,36.1 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill The Black Stalker##17882
|tip Stay spread out to minimize Chain Lightning damage.
|tip If you are affected by Static Charge, move away from allies or they will take damage too.
Loot the Black Stalker's Brain |q 29567/1 |goto The Underbog 25.9,45.5 |only if haveq(29567)
Defeat The Black Stalker |scenariogoal 1/34432 |goto The Underbog 25.9,45.5
step
label "sanguinehibiscus"
click Sanguine Hibiscus##183385
|tip These can be found throughout the dungeon.
collect 5 Sanguine Hibiscus##24246 |q 29691/1
only if haveq(29691)
step
talk Naturalist Bite##54678
turnin A Necessary Evil##29568 |goto The Underbog 29.5,64.5
step
talk Watcher Jhang##54675
turnin Rescuing the Expedition##29570 |goto 30.8,65.3
step
talk T'shu##54674
turnin Stalk the Stalker##29567 |goto 31.6,65.5
turnin Bring Me A Shrubbery!##29691 |goto 31.6,65.5
step
Congratulations! You have completed The Underbog
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Outland Dungeons\\Hellfire Citadel: The Blood Furnace",{
mapid=261,
achieveid={648},
patch='30003',
condition_suggested=function() return level>=10 and level<=30 end,
keywords={"HC, BF, HFC, HFP, Peninsula"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the Hellfire Citadel: The Blood Furnace dungeon.",
},[[
step
label "start"
Press _I_ and queue for The Blood Furnace or enter the dungeon with your group |goto The Blood Furnace/1 47.8,90.6 |c
step
talk Gunny##54629
accept Make Them Bleed##29538 |goto The Blood Furnace 51.4,90.0
accept Heart of Rage##29539 |goto The Blood Furnace 51.4,90.0
accept The Breaker##29540 |goto The Blood Furnace 51.4,90.0
only if not completedq(29538) or not completedq(29539) or not completedq(29540)
stickystart "felorcblood"
step
map The Blood Furnace/1
path follow smart; loop off; ants curved; dist 15
path	52.0,90.0	58.2,89.5	58.1,76.6
path	58.1,66.4	58.1,56.1	53.1,53.0
path	49.7,46.8	47.3,41.2	45.0,41.2
Follow the path |goto The Blood Furnace/1 45.0,41.2 < 6
|tip Be wary of stealthed Laughing Skull Rogues
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill The Maker##17381
|tip Domination mind controls a party member for 10 seconds, crowd control this party member.
|tip Exploding Breaker deals nature damage to the player targeted and anyone within 8 yards. Stay spread out to minimize party damage.
Loot the Fel Infusion Rod |q 29538/2 |goto The Blood Furnace 36.6,40.7 |only if haveq(29538)
Defeat The Maker |scenariogoal 24911 |goto The Blood Furnace 36.6,40.7
step
map The Blood Furnace/1
path follow smart; loop off; ants curved; dist 15
path	35.8,41.3	31.7,42.1	30.8,30.6
path	31.9,21.1	35.5,22.0
Follow the path |goto The Blood Furnace/1 35.5,22.0 < 5
|tip Be wary of stealthed Laughing Skull Rogues
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
click Cell Door Lever##181982
|tip This will start the boss fight. You will have 4 cell doors open and have to fight Orcs until all 4 waves are complete.
kill Broggok##17380
|tip DPS should stay behind Broggok to avoid damage from Slime Spray.
Defeat Broggok |scenariogoal 24913 |goto 43.4,21.9
step
map The Blood Furnace/1
path follow smart; loop off; ants curved; dist 15
path	44.7,22.0	58.1,21.4	58.6,27.5
path	62.6,29.0	65.8,33.2	67.8,41.0
path	65.4,41.2
Follow the path |goto The Blood Furnace/1 65.4,41.2 < 5
|tip Be wary of stealthed Laughing Skull Rogues
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
Investigate The Blood Furnace |q 29539/1 |only if haveq(29539)
step
kill Shadowmoon Channeler##17653
|tip After the Channelers die, Keli'dan will activate.
kill Keli'dan the Breaker##17377
|tip Dispel Corruption whenever possible. When Keli'dan becomes immune, he will kneel down and cast Burning Nova. Run at least 20 yards away.
Defeat Keli'dan the Breaker |scenariogoal 1/34434 |goto 59.2,42.5
step
label "felorcblood"
kill Laughing Skull Enforcer##17370+, Laughing Skull Rogue##17491+
kill Shadowmoon Warlock##17371+, Shadowmoon Adept##17397+, Shadowmoon Summoner##17395+
Loot 10 Fel Orc Blood Vials |q 29538/1
only if haveq(29538)
step
map The Blood Furnace/1
path follow smart; loop off; ants curved; dist 15
path	62.3,47.2	63.4,63.4	63.5,78.4
path	62.8,90.6	55.5,89.7
Follow the path |goto The Blood Furnace/1 55.5,89.7 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if not completedq(29538) or not completedq(29539) or not completedq(29540)
step
talk Gunny##54629
turnin Make Them Bleed##29538 |goto 51.4,90.1
turnin Heart of Rage##29539 |goto 51.4,90.1
turnin The Breaker##29540 |goto 51.4,90.1
only if not completedq(29538) or not completedq(29539) or not completedq(29540)
step
Congratulations! You have completed The Blood Furnace
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Outland Dungeons\\Hellfire Citadel: Hellfire Ramparts",{
mapid=347,
achieveid={647},
patch='30003',
condition_suggested=function() return level>=10 and level<=30 end,
keywords={"HC, HFR, Ramps, HFC, HFP, Peninsula"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the Hellfire Citadel: Hellfire Ramparts dungeon.",
},[[
step
Enter the "Hellfire Citadel: Hellfire Ramparts" Dungeon |goto Hellfire Ramparts/1 50.10,70.40 |c
|tip Form a group or queue for it through the Group Finder tool.
step
talk Advance Scout Chadwick##54603
accept War on the Ramparts##29528 |goto 48.50,68.10 |only if not haveq(29528) or not completedq(29528)
accept Demons in the Citadel##29529 |goto 48.50,68.10 |only if not haveq(29529) or not completedq(29529)
accept Hitting Them Where It Hurts##29594 |goto 48.50,68.10 |only if not haveq(29594) or not completedq(29594)
|only if not completedallq(29528,29529,29594)
stickystart "Collect_Hellfire_Supplies"
step
map Hellfire Ramparts/1
path follow smart; loop off; ants curved; dist 20
path	47.00,64.90	45.50,55.30	51.7,46.90
path	59.50,48.50	65.60,55.40	72.0,52.40
path	75.90,43.70
kill Watchkeeper Gargolmar##17306 |scenariogoal 1/24926 |goto 76.90,34.40
|tip Kill the Hellfire Watchers first interrupting their Heal spell when cast.
|tip Stay spread out at least 10 yards apart to minimize damage from Surge.
|tip Opening the world map will display an ant trail guiding you through the current floor.
step
collect Gargolmar's Hand##23881 |q 29528/1 |goto 76.90,34.40
|tip Loot it from Watchkeeper Gargolmar's corpse.
|only if haveq(29528)
step
map Hellfire Ramparts/1
path follow smart; loop off; ants curved; dist 20
path	74.80,31.50	69.70,30.50	65.00,39.80
path	69.70,41.70	68.40,48.10	65.10,45.20
path	59.90,45.90	56.00,52.60	57.20,57.60
path	54.30,61.20	51.50,56.90	47.00,43.70
path	43.30,31.90
kill Omor the Unscarred##17308 |scenariogoal 1/18536 |goto 39.30,21.20
|tip Treacherous Aura will do shadow damage to anyone within 15 yards every second for the duration of the encounter.
|tip Periodically Omor will summon a Fiendish Hound to attack players.
|tip Opening the world map will display an ant trail guiding you through the current floor.
step
collect Omor's Hoof##23886 |q 29529/1 |goto 39.30,21.20
|tip Loot it from Omor the Unscarred's corpse.
|only if haveq(29529)
step
label "Collect_Hellfire_Supplies"
click Hellfire Supplies##209348+
|tip They look like large piles of wooden crates with red Horde symbols on the side all over the lower dungeon.
collect 3 Hellfire Supplies##72160 |q 29594/1 |goto 68.88,55.24
|only if haveq(29594)
step
map Hellfire Ramparts/1
path follow smart; loop off; ants curved; dist 20
path	40.90,25.00	45.70,39.50	51.90,56.40
path	44.00,68.20
Slay Vazruden the Herald and Nazan |scenariogoal 1/34435 |goto 36.20,79.30
|tip Players targeted by Vazruden's Mark should keep moving to avoid being hit by fireballs.
|tip When Vazruden dies, Nazan lands and attacks.
|tip Avoid standing in front of Nazan or you will be hit by Cone of Fire.
|tip Opening the world map will display an ant trail guiding you through the current floor.
step
collect Nazan's Head##23901 |q 29528/2 |goto 36.20,79.30
|tip Loot it from Nazan's corpse.
|only if haveq(29528)
step
talk Advance Scout Chadwick##54603
|tip Jump down back on the bridge to return to the entrance.
turnin War on the Ramparts##29528 |goto 48.50,68.10 |only if haveq(29528) and not completedq(29528)
turnin Demons in the Citadel##29529 |goto 48.50,68.10 |only if haveq(29529) and not completedq(29529)
turnin Hitting Them Where It Hurts##29594 |goto 48.50,68.10 |only if haveq(29594) and not completedq(29594)
|only if not completedallq(29528,29529,29594) and (haveq(29528) or haveq(29529) or haveq(29594))
step
_Congratulations!_
You Completed the "Hellfire Citadel: Hellfire Ramparts" Dungeon.
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Outland Dungeons\\Hellfire Citadel: Shattered Halls",{
mapid=246,
achieveid={657},
patch='40300',
condition_suggested=function() return level>=20 and level<=30 end,
keywords={"HC, SH, HFP, Peninsula"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the Hellfire Citadel: Shattered Halls dungeon.",
},[[
step
label "start"
Press _I_ and queue for Shattered Halls or enter the dungeon with your group |goto The Shattered Halls/1 61.1,92.8 |c
step
talk Gunny##54934
accept One Last Favor##29652 |goto The Shattered Halls 58.6,88.5
only if not completedq(29652)
step
talk Advance Scout Chadwick##54933
accept How to Save a Life##29649 |goto 58.6,88.5
accept O'mrogg's Warcloth##29656 |goto 58.6,88.5
accept Turning the Tide##29654 |goto 58.6,88.5
only if not completedq(29649) or not completedq(29656) or not completedq(29654)
stickystart "Kills"
step
map The Shattered Halls/1
path follow smart; loop off; ants curved; dist 15
path	59.2,88.4	59.0,78.5	55.1,77.2
path	46.9,77.1	34.6,77.2	34.4,69.7
path	38.5,69.7	42.8,65.6	37.5,61.7
Follow the path |goto The Shattered Halls/1 37.5,61.7 < 15
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Grand Warlock Nethekurse##16807
|tip Shadow Cleave will cleave up to 3 nearby targets.
|tip Death Coil fears a player for 4 seconds and deals shadow damage.
|tip Move out of the Lesser Shadow Fissures immediately, they deal shadow damage.
|tip At 25% health, Dark Spin deals physical damage to anyone within 5 yards and shadow damage to everyone. Kill him quickly.
collect 1 Grand Warlock's Amulet##23735 |only if haveq(29649)
Defeat Grand Warlock Nethekurse |scenariogoal 24864 |goto 34.6,62.1
step
Use your Grand Warlock's Amulet next to this fire |use Grand Warlock's Amulet##23735
Create the Fel Ember |q 29649/1 |goto 31.9,60.6
only if haveq(29649)
step
map The Shattered Halls/1
path follow smart; loop off; ants curved; dist 15
path	34.4,59.0	34.1,52.6	29.6,49.7
path	29.6,37.0	29.6,18.7
Follow the path |goto The Shattered Halls/1 29.6,18.7 < 15
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if heroic_dung()
step
kill Blood Guard Porung##20923
|tip Cleave deals physical damage to anyone in front of Porung.
Defeat Blood Guard Porung |scenariogoal 24867 |goto The Shattered Halls/1 29.7,14.7
only if heroic_dung()
step
map The Shattered Halls/1
path follow smart; loop off; ants curved; dist 15
path	29.8,14.2	36.5,14.0	45.4,13.9
path	53.6,14.6	53.9,24.6
Follow the path |goto The Shattered Halls/1 53.9,24.6 < 15
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if heroic_dung()
step
map The Shattered Halls/1
path follow smart; loop off; ants curved; dist 15
path	34.4,59.0	34.1,52.6	29.6,49.7
path	29.6,37.0	29.6,18.7	29.8,14.2
path	36.5,14.0	45.4,13.9	53.6,14.6
path	53.9,24.6
Follow the path |goto The Shattered Halls/1 53.9,24.6 < 15
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if not heroic_dung()
step
kill Warbringer O'mrogg##16809
|tip O'mrogg chooses a random target and applies threat to them, dealing damage.
|tip Fears all nearby players for 3 seconds.
|tip Burning Maul adds fire damage to his attacks for 18 seconds. Save a cooldown for this.
|tip Blast Wave deals fire damage to anyone nearby and slows movement speed.
Loot O'mrogg's Warcloth |q 29656/1 |only if haveq(29656)
Defeat Warbringer O'mrogg |scenariogoal 24865 |goto 53.9,34.1
step
map The Shattered Halls/1
path follow smart; loop off; ants curved; dist 15
path	56.6,34.3	59.0,34.4	66.7,34.9
path	67.2,46.7
Follow the path |goto The Shattered Halls/1 67.2,46.7 < 15
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Warchief Kargath Bladefist##16808
|tip Sweeping Strikes causes the next 5 attacks to hit a nearby player.
|tip Blade Dance deals physical damage to random players in the room. Spread out.
|tip Charges a random player |only if heroic_dung()
|tip Bladefist summons random reinforcements that need to be picked up by the tank and killed.
Loot Warchief Kargath's Fist |q 29654/1 |only if haveq(29654)
Defeat Warchief Kargath Bladefist |scenariogoal 1/34421 |goto 67.8,55.3
step
label "Kills"
kill 4 Shattered Hand Legionnaire##16700+ |q 29652/1
kill 2 Shattered Hand Champion##17671+ |q 29652/3
kill 2 Shattered Hand Centurion##17465+ |q 29652/2
only if haveq(29652)
step
talk Advance Scout Chadwick##54933
turnin One Last Favor##29652 |goto 67.2,51.8
turnin How to Save a Life##29649 |goto 67.2,51.8
turnin O'mrogg's Warcloth##29656 |goto 67.2,51.8
turnin Turning the Tide##29654 |goto 67.2,51.8
only if haveq(29652) or haveq(29649) or haveq(29656) or haveq(29654)
step
Congratulations! You have completed Shattered Halls
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Outland Dungeons\\Magister's Terrace",{
mapid=348,
achieveid={661},
patch='unknown',
condition_suggested=function() return level>=25 and level<=30 end,
keywords={"MT, Isle, Quel'Danas"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the Magisters' Terrace dungeon.",
},[[
step
label "start"
Press _I_ and queue for Magister's Terrace or enter the dungeon with your group |goto Magisters' Terrace/2 42.5,90.0 |c
step
talk Exarch Larethor##55007
accept Severed Communications##29684 |goto Magisters' Terrace/2 42.6,87.2
accept A Radical Notion##29686 |goto Magisters' Terrace/2 42.6,87.2
accept Twisted Associations##29687 |goto Magisters' Terrace/2 42.6,87.2
only if not completedq(29684) or not completedq(29686) or not completedq(29687)
step
map Magisters' Terrace/2
path follow smart; loop off; ants curved; dist 15
path	42.6,74.5	42.6,31.2	42.6,23.5
Follow the path |goto Magisters' Terrace/2 42.6,23.5 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Selin Fireheart##24723
|tip Fireheart will drain a player's health, restoring his own.
|tip ireheart will drains mana from a player. |only if heroic_dung()
|tip Fel Explosion deals AoE fire damage and drains Selin's mana.
|tip Fel Crystal restores his mana as long as it remains alive. Kill these quickly when they activate.
Defeat Selin Fireheart |scenariogoal 24879 |goto Magisters' Terrace/2 42.6,23.6
step
map Magisters' Terrace/2
path follow smart; loop off; ants curved; dist 15
path	42.6,23.6	49.2,20.1	56.9,20.3
path	59.5,26.6
Follow the path |goto Magisters' Terrace/2 59.5,26.6 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Tyrith##24822
turnin Severed Communications##29684 |goto 60.8,23.7
accept The Scryer's Scryer##11490 |goto 60.8,23.7
only if not completedq(11490)
step
kill Vexallus##24744
|tip Chain Lightning deals nature damage to up to 3 targets. Spread out.
|tip At 20% health, Overload deals AoE damage and increases party damage taken.
|tip Every 15% health a Pure Energy is summoned. These will leave a DoT on all players upon death and increase damage by 50%.
|tip Two Pure Energies are summoned. |only if heroic_dung()
Loot the Volatile Essence |q 29686/1 |only if haveq(29686)
Defeat Vexallus |scenariogoal 24880 |goto 81.6,26.8
step
click Scrying Orb##251182
Activate the Scrying Orb |q 11490/1 |goto 94.2,26.8
only if haveq(11490)
step
talk Kalecgos##24848
|tip It will take a moment for him to fly down.
turnin The Scryer's Scryer##11490 |goto 94.1,35.9
accept Hard to Kill##29685 |goto 94.1,35.9
only if not completedq(29685)
step
map Magisters' Terrace/2
path follow smart; loop off; ants curved; dist 15
path	90.0,40.7	83.2,34.3
path	Magisters' Terrace/1 82.9,56.3	Magisters' Terrace/1 58.8,56.3
path	Magisters' Terrace/1 45.7,56.2
Follow the path |goto Magisters' Terrace/1 45.7,56.2 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Priestess Delrissa##24560
|tip Dispel Renew and Power Word: Shield from Delrissa.
|tip Interrupt Flash Heal every time.
|tip She will cast Psychic Scream, which is a 5 second melee range fear.
_Minions_:
|tip Use CC, interrupt fears and heals. Dispel CC on party members. Focus 1 target at a time.
Defeat Priestess Delrissa |scenariogoal 24881 |goto Magisters' Terrace/1 39.2,56.2
step
map Magisters' Terrace
path follow loose;loop off;ants straight
path	31.0,56.1	19.2,49.7
Follow the path |goto 19.2,49.7 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Kael'thas Sunstrider##24664
|tip Interrupt Fireball.
|tip Phoenix Egg spawns when a Phoenix dies. Kill these within 15 seconds.
|tip Shock Barrier makes Kael'thas immune to interrupts while in effect. |only if heroic_dung()
|tip Pyroblast deals massive damage and follows Shock Barrier. Burn through the barrier and interrupt this. |only if heroic_dung()
|tip At 50% health, Gravity Lapse phase begins and everyone "swims" through the air.
|tip Arcane Spheres follow random players. Avoid them.
|tip Every 30 seconds, Kael'thas takes 50% more damage for 10 seconds.
Loot the Head of Kael'thas |q 29685/1 |only if haveq(29685)
Defeat Kael'thas Sunstrider |scenariogoal 1/34424 |goto Magisters' Terrace/1 7.4,50.1
step
talk Exarch Larethor##55007
turnin A Radical Notion##29686 |goto Magisters' Terrace/1 13.4,49.9
turnin Twisted Associations##29687 |goto Magisters' Terrace/1 13.4,49.9
turnin Hard to Kill##29685 |goto Magisters' Terrace/1 13.4,49.9
only if haveq(29686) or haveq(29687) or haveq(29685)
step
Congratulations! You have completed Magister's Terrace
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Outland Dungeons\\Tempest Keep: The Arcatraz",{
mapid=269,
achieveid={660},
patch='unknown',
condition_suggested=function() return level>=25 and level<=30 end,
keywords={"TK, Netherstorm"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the Tempest Keep: The Arcatraz dungeon.",
},[[
step
label "start"
Press _I_ and queue for Arcatraz or enter the dungeon with your group |goto The Arcatraz/1 41.3,81.7 |c
step
Click the Quest Accept Box that pops up
accept Unbound Darkness##29674 |goto The Arcatraz/1 41.3,73.7
step
map The Arcatraz/1
path follow loose; loop off; dist 10
path	41.2,57.3	41.3,49.1	45.6,39.5
path	57.3,39.6
Follow the path |goto The Arcatraz/1 57.3,39.6 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Zereketh the Unbound##20870 |only if not haveq(29674)
kill Zereketh the Unbound##20870  |q 29674/1 |only if haveq(29674)
|tip Void Zone summons an AoE that damages anyone standing in it.
Defeat Zereketh the Unbound |scenariogoal 24886 |goto 61.6,24.8
step
Click the Quest Accept Box that pops up
turnin Unbound Darkness##29674
accept Hey There Dalliah##29675
step
map The Arcatraz/1
path follow loose; loop off; dist 10
path	63.4,35.4	66.3,35.4	The Arcatraz/2 85.3,38.7
path	The Arcatraz/2 61.4,38.6	The Arcatraz/2 41.1,29.3	The Arcatraz/2 28.1,40.3
path	The Arcatraz/2 28.3,57.0
Follow the path up the stairs and through the halls |goto The Arcatraz/2 28.3,57.0 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Wrath-Scryer Soccothrates##20886 |only if not haveq(29675)
kill Wrath-Scryer Soccothrates##20886 |q 29675/1 |only if haveq(29675)
|tip Fel Immolation deals damage to players within 15 yards of Soccothrates.
|tip Avoid the Felfire AoE left by this ability.
Defeat Wrath-Scryer Soccothrates |scenariogoal 24888 |goto The Arcatraz/2 21.4,77.0
step
kill Dalliah the Doomsayer##20885 |only if not haveq(29675)
kill Dalliah the Doomsayer##20885 |q 29675/2 |only if haveq(29675)
|tip Whirlwind deals damage to players within 8 yards. Move away when this is cast.
|tip Gift of the Doomsayer causes heals cast on the affected player to heal Dalliah instead.
Defeat Dalliah the Doomsayer |scenariogoal 24887 |goto 35.7,78.4
step
Click the Quest Turnin Box that pops up
turnin Hey There Dalliah##29675
accept Maximum Security Breakout##29681
step
map The Arcatraz/2
path follow loose; loop off; dist 10
path	29.9,57.1	38.3,57.2
Follow the path |goto The Arcatraz/2 38.3,57.2 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map The Arcatraz/3
path follow loose; loop off; dist 10
path	27.4,88.4	30.0,57.4	30.1,40.0
path	40.1,30.6	51.3,31.6
Follow the path |goto The Arcatraz/3 51.3,31.6 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Harbinger Skyriss##20912 |only if not haveq(29681)
|tip Attack Warden Mellichar to get the fight stared. He will unleash several monsters and then Harbinger Skyriss.
kill Harbinger Skyriss##20912 |q 29681/1 |only if haveq(29681)
|tip Attack Warden Mellichar to get the fight stared. He will unleash several monsters and then Harbinger Skyriss.
Defeat Harbinger Skyriss |scenariogoal 1/34427 |goto The Arcatraz/3 58.2,30.5
step
Click the Quest Turnin Box that pops up
turnin Maximum Security Breakout##29681
step
Congratulations! You have completed Arcatraz
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Outland Dungeons\\Tempest Keep: Botanica",{
mapid=266,
achieveid={659},
patch='unknown',
condition_suggested=function() return level>=20 and level<=30 end,
keywords={"TK, Netherstorm"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the Tempest Keep: Botanica dungeon.",
},[[
step
label "start"
Press _I_ and queue for Botanica or enter the dungeon with your group |goto The Botanica/1 89.6,41.1 |c
step
Click the Accept Quest box on the right side of your screen
accept Saving the Botanica##29660 |goto The Botanica 85.5,47.3
step
map The Botanica
path follow loose; loop off
path	79.3,49.4	53.0,51.0	48.8,56.6
path	47.8,43.3
Follow the path through the halls |goto 47.7,43.4 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Commander Sarannis##17976 |only if not haveq(29660)
kill Commander Sarannis##17976 |q 29660/1 |only if haveq(29660)
|tip Sarannis casts Summon Reinforcements at 55% health, summoning 3 Bloodwarder Reservists and a Bloodwarder Mender. Focus the Mender down first.
Defeat Commander Sarannis |scenariogoal 24871 |goto 47.4,18.2
step
map The Botanica
path follow loose; loop off; dist 10
path	25.6,16.8	20.5,15.2	22.1,19.7
Follow the path |goto The Botanica 22.1,19.7 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill High Botanist Freywinn##17975 |only if not haveq(29660)
kill High Botanist Freywinn##17975 |q 29660/2 |only if haveq(29660)
|tip Nature's Will causes Freywinn to turn into a tree, healing his nearby allies and summong 3 Frayer Protectors.
Defeat High Botanist Freywinn |scenariogoal 24872 |goto 25.9,25.5
step
map The Botanica
path follow loose; loop off; dist 10
path	19.6,22.5	 20.3,45.2	12.5,46.4
Follow the path |goto The Botanica 12.5,46.4 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Thorngrin the Tender##17978 |only if not haveq(29660)
kill Thorngrin the Tender##17978 |q 29660/3 |only if haveq(29660)
|tip Sacrifice teleports a player, stunning them and leeching health every second for 8 seconds.
|tip Hellfire deals area damage around Thorngrin, lasting 6 seconds. Move away from him.
Defeat Thorngrin the Tender |scenariogoal 24873 |goto 8.2,47.6
step
Click the Complete Quest Box in the top right corner
turnin Saving the Botanica##29660
accept Culling the Herd##29667
step
Continue towards the final room |goto The Botanica/1 14.8,72.5
kill 6 Mutate Fleshlasher##19598 |q 29667/1 |goto 34.3,82.2
kill 6 Mutate Fear-Shrieker##19513 |q 29667/2 |goto 34.3,82.2
kill 6 Mutate Horror##19865 |q 29667/3 |goto 34.3,82.2
|tip You may have to run the dungeon more than once to get all of them.
step
kill Laj##17980
collect Rapidly Evolving Frond##72706 |q 29667/4 |only if haveq(29667)
Defeat Laj |scenariogoal 24874 |goto 34.1,89.3
step
Click the Quest complete box at the top right of the screen
turnin Culling the Herd##29667
accept A Most Somber Task##29669
step
kill Warp Splinter##17977 |only if not haveq(29669)
kill Warp Splinter##17977 |q 29669/1 |only if haveq(29669)
|tip Summon Saplings summons 6 Sapling adds. After 25 seconds they will sacrifice themselves and heal Warp Splinter equal to their remaining health. These should be killed off as fast as possible.
Defeat Warp Splinter |scenariogoal 1/34423 |goto 34.1,35.8
step
Click the Complete Quest box at the top right of the screen
turnin A Most Somber Task##29669
step
Congratulations! You have completed the Botanica
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Outland Dungeons\\Tempest Keep: The Mechanar",{
mapid=267,
achieveid={658},
patch='unknown',
condition_suggested=function() return level>=20 and level<=30 end,
keywords={"TK, Netherstorm"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the Tempest Keep: The Mechanar dungeon.",
},[[
step
label "start"
Press _I_ and queue for The Mechanar or enter the dungeon with your group |goto The Mechanar/1 49.4,83.5 |c
step
Click the Accept Quest box on the right side of your screen
accept With Great Power, Comes Great Responsibility##29657 |goto The Mechanar/1 49.4,83.5
step
Take the left passage |goto The Mechanar 43.5,70.6 < 5
confirm
step
kill Gatewatcher Gyro-Kill##19218
Defeat Gatewatcher Gyro-Kill |scenariogoal 24878 |goto 46.4,58.4
step
Click the Accept Quest box on the right side of your screen
accept Lost Treasure##29659
step
map The Mechanar/1
path follow strict; loop off; ants curved; dist 10
path	37.8,51.3	39.1,36.4	42.4,44.2
path	48.4,46.3
Follow the path |goto The Mechanar/1 48.4,46.3 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Mechano-Lord Capacitus##19219 |only if not haveq(29657)
kill Mechano-Lord Capacitus##19219 |q 29657/1 |only if haveq(29657)
Defeat Mechano-Lord Capacitus |scenariogoal 24876 |goto The Mechanar 51.1,30.4
step
Click the Turnin Quest box on the right side of your screen
turnin With Great Power, Comes Great Responsibility##29657
step
Click the Turnin Quest box on the right side of your screen
accept The Calculator##29658
step
kill Gatewatcher Iron-Hand##19710
Defeat Gatewatcher Iron-Hand |scenariogoal 24877 |goto 60.2,36.8
step
map The Mechanar/1
path follow loose; loop off; ants curved; dist 10
path	51.4,36.4	47.1,47.2	42.2,43.0
path	38.7,27.9
Follow the path to the Cash of the Legion |goto The Mechanar/1 38.7,27.9 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
click Cache of the Legion##184465 |goto 39.4,28.3 < 5 |noway
|tip Loot the items inside.
collect Blinding Fury##72663 |q 29659/1 |goto 39.4,28.3 |noway |only if haveq(29659)
confirm
step
Click the Quest Complete Box in the top right corner of your screen
turnin Lost Treasure##29659
step
map The Mechanar/1
path follow loose; loop off; ants curved; dist 10
path	41.7,21.4	The Mechanar/2 41.7,33.6
Ride the elevator up to the Calculation Chamber |goto The Mechanar/2 41.7,33.6
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Nethermancer Sepethrea##19221
|tip If you do not clear the room first, all the mobs will attack you when you fight the boss.
|tip Raging Flames will be summoned throughout the fight, try to avoid them and their AoE spells. They are not hard to avoid.
Defeat Nethermancer Sepethrea |scenariogoal 24882 |goto 47.6,20.8
step
map The Mechanar/2
path follow loose; loop off; ants curved; dist 10
path	52.8,36.4	52.6,50.9	49.6,58.1
path	38.5,60.9
kill Bloodwarder Centurion##19510+, Sunseeker Astromage##19168+, Tempest-Forge Destroyer##19735+
Follow the long hallway and kill the mobs that spawn in groups |goto 38.5,60.9 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Pathaleon the Calculator##19220 |only if not haveq(29658)
kill Pathaleon the Calculator##19220 |q 29658/1 |only if haveq(29658)
|tip Domination will Mind Control a party member for 5 seconds.
|tip Frenzy increases Pathaleon's attack speed by 60% and physical damage by 75.
Defeat Pathaleon the Calculator |scenariogoal 1/34425 |goto 27.8,61.4
step
Click the Quest Complete Box in the top right corner
turnin The Calculator##29658 |only if haveq(29658)
step
Congratulations! You have completed The Mechanar
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Outland Raids\\Black Temple",{
mapid=339,
achieveid={697},
patch='30002',
condition_suggested=function() return level>=27 and level<=30 end,
keywords={"BT, Shadowmoon, Valley, SMV, Illidan"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the Black Temple Raid.",
},[[
step
Click here if you are doing a normal run of Black Temple |next "normal"
Click here if you are doing the Timewalking Black Temple instance |next "Timewalk"
confirm
step
label "normal"
Enter Black Temple |goto Shadowmoon Valley/0 71.03,46.36 < 5
confirm |next "BT"
step
label "Timewalk"
During the Burning Crusade Timewalking event this raid is also available to Timewalk.
|tip To join a group, you must press "I" and look for one to join in the Premade Groups tab. These groups can usually be found within the Custom tab or the Legacy tab.
|tip Once your group is filled, your leader must talk to Vormu to queue the raid for this instance. He is right next to the Timewalking vendor in Shattrath City.
talk Vormu##123252
Tell him _"Send me into the Black Temple"_ |goto Shattrath City/0 54.67,38.98
confirm |next "BT"
step
label "BT"
map Black Temple/2
path loop off; dist 15
path	23.0,46.7	24.8,41.1	32.7,41.4
path	37.1,38.4	37.4,21.7
Follow the path, clearing trash as you make your way to the first boss, High Warlord Naj'entus. |goto 37.4,21.7 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill High Warlord Naj'entus##22887 |goto 43.6,19.4
|tip Needle Spine deals 2900-3900 damage and an additional 2500 Frost damage to 3 random targets.
|tip Impaling Spine hits a random raid member for 4500-4900 damage, stunning the target and applying a DoT that deals 2750 damage every 3 seconds, lasting 30 seconds.
|tip Tidal Shield Naj'entus becomes immune to all damage and regenerates health. Can only be broken by a player throwing Naj'entus Spine at him. The raid takes 8500 Frost damage once the shield is broken. |use Najentus Spine##32408
|tip Enrage occurs after 8 minutes of combat. It increases his damage by 500%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
confirm
step
map Black Temple/2
path loop off; dist 15
path	33.4,19.2	29.2,19.7	27.4,14.7
path	27.5,6.6
Follow the path, clearing trash as you make your way to the next boss, Supremus. |goto 27.5,6.6 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Black Temple/1
path loop off; dist 15
path	28.1,67.8	31.9,51.9	42.1,50.0
Follow the path, clearing trash as you make your way to the next boss, Supremus. |goto 42.1,50.0 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Supremus##22898 |goto 61.1,47.6
_Phase 1_
|tip Molten Flame is a blue fire trail coming from Supremus, spreading along the ground towards a random target. The flames deal 3325-3675 Fire damage per second.
|tip Hateful Strike is a melee attack that deals 27,500-32,200 damage to the target with most health and within melee range.
_Phase 2_
|tip Gaze fixes aggro on a target and and Supremus moves towards them at 90% normal speed.
|tip Molten Punch affects the target if they are affected by Gaze. It knocks the target back and deals 5200 damage if they are within 40 yards of Supremus.
|tip Volcanic Geyser randomly summons small volcanoes which deal 4100-4800 Fire damage to targets within 15 yards.
|confirm
step
path loop off; dist 15
path	Black Temple/1 64.0,47.6	Black Temple/3 17.2,50.6	Black Temple/3 24.9,51.2
path	Black Temple/3 29.5,56.6	Black Temple/1 83.5,53.6	Black Temple/3 33.7,51.4
path	Black Temple/3 39.7,59.9	Black Temple/3 40.8,67.8	Black Temple/3 40.8,79.8
Follow the path, clearing trash as you make your way to the next boss, the Shade of Akama. |goto Black Temple/3 40.8,79.8 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Akama##23191 |goto Black Temple/3 40.9,74.5
Tell him "I'm with you, Akama."
|tip This will start the boss fight, make sure you are ready.
|confirm
step
kill Shade of Akama##22841 |goto Black Temple/3 40.8,88.9
_Phase 1_
|tip You must kill the Channelers around the Shade of Akama, as well as the adds he spawns during this time.
|tip Ashtongue Defender: uses Debilitating Shot, which applies a debuff to the target that reduces all melee damage done by 75% for 5 seconds.
|tip Ashtongue Elementalist: uses _Rain of Fire, an AoE which does 3500 Fire damage every 2 seconds, lasting 8 seconds.
|tip Ashtongue Rogue: uses Debilitating Poison, which slows attack and casting speed of the target by 50% along with a DoT that does 1800 Nature damage every 2 seconds for 8 seconds.
|tip Ashtongue Spiritbinder: uses Spirit Mend, which heals another Ashtongue for 2500 every 2 seconds for 10 seconds. _Chain Heal_ heals up to 5 Ashtongue for 7000 each.
_Phase 2_
|tip This phase starts when the Channelers are killed and the Shade becomes attackable.
|tip During this phase all raid members (even most healers) need to attack and kill the Shade of Akama as quickly as possible.
|confirm
step
path loop off; dist 15
path	Black Temple/3 40.9,80.1	Black Temple/3 40.9,67.6	Black Temple/3 53.0,66.1
path	Black Temple/3 60.3,66.3	Black Temple/3 67.9,66.6	Black Temple/3 70.1,75.9
path	Black Temple/3 57.9,91.4	Black Temple/5 75.5,67.5	Black Temple/5 55.2,68.5
path	Black Temple/5 34.6,56.5
Follow the path, clearing trash as  you make your way to the next boss, Teron Gorefiend. |goto Black Temple/5 34.6,56.5 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Teron Gorefiend##22871 |goto Black Temple/5 39,19
|tip Incinerate is cast on a random raid member, dealing 3000 Fire damage and applying a debuff which does an additional 8000 Fire damage over 3 seconds.
|tip Doom Blossom Teron summons a dark cloud which lasts for 2 minutes and casts Shadow Bolts at random raid members, dealing 1500 Shadow damage.
|tip Crushing Shadows is cast on 5 random raid members, applying a 15 second debuff which increases Shadow damage taken by 60%.
|tip Shadow of Death is cast every 30 seconds on a random raid member, giving a debuff that kills the target after 55 seconds. Upon their death, 4 Shadowy Constructs spawn and the player turns into a Ghost for 60 seconds.
_Shadowy Constructs_
|tip Shadow Strike melee attack that hits for about 2500 Shadow damage.
|tip Atrophy is a 60 second debuff applied on a melee attack. It decreases attack speed by 5% and stacks up to 10 times.
|tip Immune cannot take damage from normal players, only by players in Ghost form.
|confirm
step
path loop off; dist 15
path	Black Temple/5 34.5,59.1	Black Temple/5 76.4,68.8	Black Temple/3 70.4,76.5
path	Black Temple/3 59.5,66.2	Black Temple/3 52.7,62.8	Black Temple/3 54.2,50.0
path	Black Temple/3 52.8,37.8	Black Temple/3 59.6,35.1	Black Temple/3 62.6,34.7
path	Black Temple/4 73.4,35.4	Black Temple/4 72.7,21.6	Black Temple/4 65.7,21.3
path	Black Temple/4 53.2,30.1	Black Temple/4 53.4,39.1
Follow the path, clearing trash as you make your way to the next boss, Gurtogg Bloodboil. |goto Black Temple/4 53.4,39.1 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Gurtogg Bloodboil##22948 |goto 53,46
|tip Fel Acid Breath is a 10 yard AoE, hitting in a frontal cleave and applying a DoT that deals 2750 Nature damage every 5 seconds for 20 seconds. Make sure the tank is the only one in front of him when this occrs.
|tip Arcing Smash deals 5000 damage and a 5 yard frontal cleave. Make sure the tank is the only one in front of him when this occurs.
_Phase 1 Abilities_
|tip Bloodboil is a debuff cast every 10 seconds on the 5 raid members farthest away from Gurtogg. It deals 600 damage per stack every second for 24 seconds.
|tip Acidic Wound is a stacking debuff applied on melee every 2 seconds and lasts 60 seconds. It reduces armor by 500 and ticks for 250 damage.
|tip Eject knockbacks the target, reducing their threat.
|tip Bewildering Strike disorients the target for 5 seconds.
_Phase 2 Abilities_
|tip Arcing Smash damage is increased to 12,000 and gives a debuff that reduces healing received by 50%.
|tip Fel Rage (Player) 30 second debuff that increases armor, health, healing, damage, and size. Gurtogg will only attack the player that has this.
|tip Fel Rage (Self) is a stacking buff which increases Gurtogg's damage and forces him to only attack the player with Fel Rage.
|tip Acidic Geyser deals 5000 Nature damage in a 5 yard AoE on and around the Fel Rage target.
|tip Fel Acid Breath this is only cast on the raid member with Fel Rage.
|tip Insignificance all raid members get this buff during this phase. Threat cannot be gained.
|tip Berserk occurs after 10 minutes of combat. It increases his damage by 500%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
|confirm
step
map Black Temple/4
path loop off; dist 15
path	58.4,47.5	65.1,47.4	74.2,53.3
path	73.7,69.8	73.3,84.8	70.6,85.8
Follow the path, clearing trash as you make your way to the next boss, the Reliquary of Souls. |goto 70.6,85.8 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Reliquary of Souls##22856 |goto 65,85
_Essence of Suffering_
|tip Aura of Suffering reduces the raid's healing, regeneration, and armor by 100% and defense by 500.
|tip Fixate Essence of Suffering locks aggro on the closest target for 5 seconds.
|tip Enrage occurs every 45 seconds, increasing its damage and attack speed.
|tip Soul Drain is a debuff applied to 3 random targets, dealing 2600-3300 damage plus draining 2600-3300 mana every 3 seconds.
_Essence of Desire_
|tip Aura of Desire is applied to the whole raid. 50% of damage dealt also hits the player. Healing is increased by 100% and max mana is reduced by 5% every 8 seconds.
|tip Deaden is a debuff that increases damage taken by 100% and lasts 10 seconds.
|tip Spirit Shock deals 10,000 Arcane damage and a 5 second confuse.
|tip Rune Shield lasts 15 seconds and absorbs 50,000 damage, also granting immunity to interrupts and increasing attack and casting speeds.
_Essence of Anger_
|tip Aura of Anger deals raid-wide Shadow damage which increases by 100 every 3 seconds and increases damage taken by 5% each tick.
|tip Seethe gives Essence of Anger a 10 second buff that increases its attack speed and cast speed by 100%.
|tip Soul Scream hits 5 raid members in a 10 yard frontal cone are hit with 3000 Shadow damage plus draining 5000 mana/rage.
|tip Spite affects 3 random raid members, applying a debuff that gives 2 seconds immunity, then deals 7500 Nature damage, followed by another 2 seconds immunity.
|confirm
step
path loop off; dist 15
path	Black Temple/4 73.3,86.2	Black Temple/4 73.4,62.3	Black Temple/4 73.5,52.0
path	Black Temple/4 66.7,39.5	Black Temple/4 63.1,39.3	Black Temple/3 41.6,34.1
path	Black Temple/3 41.6,24.7	Black Temple/3 34.3,17.1	Black Temple/3 26.2,21.3
path	Black Temple/6 12.7,66.6	Black Temple/6 26.9,53.8	Black Temple/6 32.3,36.7
path	Black Temple/6 39.1,37.1	Black Temple/6 50.1,37.1	Black Temple/6 56.5,37.1
Follow the path, clearing trash as you make your way to the next boss, Mother Shahraz.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Mother Shahraz##22947 |goto 66.6,37
|tip Saber Lash is a frontal cleave dealing 30,000 damage divided up among 3 targets. Make sure the tanks are the only ones in front of her when this occurs.
|tip Fatal Attraction teleports 3 random raid members to one location and applies the Demonic Energy debuff.
|tip Demonic Energy lasts 30 seconds, the affected players release a 15 yard AoE that deals 3000 Shadow damage per second. It is removed if all 3 are 25 yards away from each other.
|tip Silencing Shriek is an 18 yard AoE silence.
_Beams_
|tip A beam is cast every 9 seconds and hits 10 random raid members. There are multiple types of beams.
|tip Sinful Beam: deals 7000-8000 Shadow damage.
|tip Sinister Beam: deals 2000 Shadow damage and knocks those affected into the air, dealing 50% fall damage.
|tip Vile Beam: deals 2500 Shadow damage every second for 8 seconds.
|tip Wicked Beam: deals 4000 Shadow damage plus drains 1000 mana.
_Prismatic Aura_
|tip This occurs every 15 seconds, choosing a random aura which reduces damage of one spell type and increasing another.
|tip Arcane: Arcane damage reduced by 25%. Nature damage increased by 25%.
|tip Nature: Nature damage reduced by 25%. Arcane damage increased by 25%.
|tip Holy: Holy damage reduced by 25%. Shadow damage increased by 25%.
|tip Shadow: Shadow damage reduced by 25%. Holy damage increased by 25%.
|tip Fire: Fire damage reduced by 25%. Frost damage increased by 25%.
|tip Frost: Frost damage reduced by 25%. Fire damage increased by 25%.
|tip Enrage occurs at 10%, increasing her damage and attack speed slightly. Kill her as quickly as possible to avoid death.
|tip Hard Enrage occurs after 10 minutes of combat. It increases her damage by 500%. This is designed to wipe the raid. Kill her before she reaches this stage to avoid death.
|confirm
step
map Black Temple/7
path loop off; dist 15
path	Black Temple/6 67.2,45.9	Black Temple/6 67.3,55.2	Black Temple/7 69.2,14.1
path	65.9,24.9	69.1,36.6	65.8,48.3
path	65.8,60.1	63.1,79.0	47.0,73.9
Follow the path, clearing trash as you make your way to the next boss, The Illidari Council. |goto 47.0,73.9 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_The Illidari Council_ |goto 47.3,47.9
kill Lady Malande##22951
|tip Empowered Smite deals 5500-6000 Holy damage.
|tip Divine Wrath affects a random raid member, dealing 5000 Holy damage and a DoT that deals 2500 Fire damage every second for 8 seconds.
|tip Reflective Shield lasts 20 seconds, absorbing up to 25,000 damage and reflecting half the damage back to the attacker.
|tip Circle of Healing heals the Council for 100,000. It is a 2.5 second cast and is interruptible.
kill High Nethermancer Zerevor##22950
|tip Arcane Bolt deals 15,000 Arcane damage.
|tip Flamestrike is a 10 yard AoE at a random location that deals 5000 Fire damage and an additional 3000 every second for 12 seconds.
|tip Blizzard is a 10 yard AoE at a random location that deals 6000 Frost damage every second for 12 seconds.
|tip Dempen Magic is a self buff that reduces Zerevor's magic damage taken by 75% and healing by up to 500.
|tip Arcane Explosion is a 10 yard AoE centered around Zerevor that deals 9000 Arcane damage. This is only used if there is a raid member within 10 yards of him.
kill Gathios the Shatterer##22949
|tip Hammer of Justice stuns a random raid member within 10-40 yards, lasting 6 seconds.
|tip Consecration is a 12 yard AoE, centered around Gathios, that lasts 21 seconds and deals 2250 damage every 3 seconds.
|tip Seal of Command is a self buff that inceases Gathios' melee damage by 70%. Shares a cool down with Seal of Blood.
|tip Seal of Blood is a self buff that increases Gathios' by 800 Holy damage.
|tip Judgement removes one of Gathios' Seals, adding a DoT to his target. When removed with this, Seal of Command hits for 7000 over 9 seconds and Seal of Blood hits for 11,000 damage over 9 seconds.
|tip Blessing of Spell Warding is a 15 second buff that grants Gathios' target immunity to spell damage. Shared cool down with Blessing of Protection.
|tip Blessing of Protection is a 15 second buff that grants Gathios' target immunity to physical damage. Shared cool down with Blessing of Spell Warding.
|tip Devotion Aura is a 30 second buff applied to the rest of the Council, increasing their armor by 20%. Shared cool down with Chromatic Resistance Aura.
|tip Chromatic Resistane Aura is a 30 second buff applied to the rest of the Council, increasing their resistances by 250. Shared cool down with _Devotion Aura_.
kill Veras Darkshadow##22952
|tip Deadly Poison deals 1000 Nature damage every second for 4 seconds.
|tip Envenom is used on a raid member that has Deadly Poison, removing the debuff and dealing 6000 damage.
|tip Vanish Veras stealths from combat, lasting 30 seconds.
|tip Enrage occurs after 15 minutes. It increases their damage by 500%. Kill them before they reach this stage to avoid death.
|confirm
step
talk Akama##23089 |goto Black Temple/7 47.1,54.6
Tell him "I'm ready."
|confirm
step
path loop off; dist 15
path	36.9,48.0	40.3,39.2	47.6,34.9
path	47.5,30.2	Black Temple/8 67.9,20.4	Black Temple/8 71.7,38.4
Follow Akama up to Illidan. |goto Black Temple/8 71.7,38.4 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Akama##23089 |goto Black Temple/8 72.0,38.5
Tell him "We're ready to face Illidan."
|tip This will start the final boss fight, make sure you are ready.
|confirm
step
kill Illidan Stormrage##22917 |goto 53,54
_Phase 1, 3, and 5 Abilities_
|tip Flame Crash is a 10 yard AoE that deals 5000 Fire damage every tick, lasting 2 minutes and centered on the ground at Illidan's target.
|tip Draw Soul is a frontal cone AoE that deals 5000 Shadow damage and heals Illidan for 100,000 for each target hit.
|tip Parasitic Shadowfiend affects a random raid member, applying a debuff that deals 3000 Shadow damage every tick and spawning 2 Parasitic Shadowfiends upon expiration.
|tip Agonizing Flames is a 5 yard AoE on a random raid member that deals 5000 Fire damage plus a DoT that deals 36,000 damage over 60 seconds, slightly increasing damage each tick.
_Phase 2_
|tip Fireball deals 3000-4000 Fire damage in a 10 yard radius.
|tip Eye Beam puts a trail of blue Demon Fire on the ground. Raid members standing where these land take 20,000 Shadow damage. The fire trails lasts for 1 minute and deals 2000 Fire damage every second to any standing in it.
|tip Dark Barrage affects a random raid member, dealing 3000 Shadow damage every second for 10 seconds.
_Phase 4_
|tip Shadow Blast is a 20 yard AoE that hits for 11,000 Shadow damage, centered on the player with highest aggro.
|tip Flame Burst deals 3500 Fire damage to all raid members plus additional damage to players closer together than 5 yards.
|tip Shadow Demons spawns 4 Shadow Demon adds. They target random raid members, stun them, and then move towards that player.
|tip Aura of Dread is a 15 yard AoE, centered on Illidan, dealing 1000 Shadow damage every second and increasing Shadow damage taken by 30%.
|confirm
step
Congratulations, you have finished the Black Temple raid guide!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Outland Raids\\The Eye",{
mapid=334,
achieveid={696},
patch='30001',
condition_suggested=function() return level>=27 and level<=30 end,
keywords={"TK, Kael'thas, Ashes, Al'ar, Netherstorm, Tempest, Keep"},
author="support@zygorguides.com",
description="\nThis guide will walk you through The Eye Raid.",
},[[
step
Enter The Eye |goto Tempest Keep/1 50.06,91.93 < 1000
step
map Tempest Keep
path loop off
path	50.0,87.6	50.1,75.6	50.1,65.5
path	50.0,62.7	47.7,64.4
Follow the path, clearing trash as you make your way to the first boss, Al'ar. |goto 47.7,64.4 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Al'ar##19514 |goto 45.4,59.2
|tip When pulled, he flies to the spot first. Have a tank here to pick him up.
_Phase 1_
|tip Flame Buffet only occurs if there isn't a player within melee range of Al'ar. It is a stackable debuff that occurs every 1.5 seconds, causing 2000 Fire damage and increasing Fire damage taken by 10% per stack.
|tip Flame Quills occurs when Al'ar flies to the center of the room and launches quills at the platforms or the outer part of the ramps, dealing 8000 Fire damage per second.
|tip Ember Blast occurs when Al'ar "dies". He explodes, knocking back nearby raid members and dealing 10,000 Fire damage.
_Phase 2_
|tip Flame Buffet only occurs if there isn't a player within melee range of Al'ar. It is a stackable debuff that occurs every 1.5 seconds, causing 2000 Fire damage and increasing Fire damage taken by 10% per stack.
|tip Dive Bomb occurs after Al'ar "dies" the first time. He comes back to life and targets a random raid member. He crashes into the ground, dealing 5000 Fire damage and spawning two Ember of Al'ar adds. He then uses _Rebirth_.
|tip Rebirth occurs after Dive Bomb, dealing 5000 Fire damage to anyone in melee range and knocking them back.
|tip Flame Patch spawns under a random player, dealing 3000 Fire damage per tick, and applying a stacking debuff that deals Fire damage and increases Fire damage taken.
|tip Melt Armor reduces the target's armor by 80% for 60 seconds. When this happens tanks must taunt immediately.
|tip Berserk is an enrage mechanic and occurs after 10 minutes of combat. It increases his damage by 500%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
|confirm
step
map Tempest Keep
path loop off
path	45.1,58.8	47.1,51.0	40.5,41.5
path	31.8,44.6
Follow the path, clearing trash as you make your way to the next boss, the Void Reaver. |goto 31.8,44.6 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Void Reaver##19516 |goto 25.4,49.6
|tip Void Reaver is immune to taunts.
|tip Pounding is a channeled AoE that lasts 3 seconds, dealing 1350-2250 Arcane damage every second.
|tip Arcane Orb is an AoE used on a random raid member that is at least 18 yards away from Void Reaver. It deals 7000 Arcane damage along with a 6 second silence.
|tip Knock Away is a single target knockback used on the raid member with the highest aggro, slightly reducing their aggro.
|tip Enrage occurs after 10 minutes of combat. It increases his damage by 500%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
|confirm
step
map Tempest Keep
path loop off
path	32.1,44.4	40.5,41.5	46.9,50.8
path	53.0,51.1	59.6,41.6	68.2,44.5
Follow the path, clearing trash as you make your way to the next boss, High Astromancer Solarian. |goto 68.2,44.5 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill High Astromancer Solarian## |goto 73.8,49.2
|tip Wrath of the Astromancer is a debuff placed on a random raid member. After 6 seconds they explode, dealing 5400-6600 Arcane damage to all nearby allies.
|tip Arcane Missles targets a random raid member and deals 3000 Arcane damage every second for 3 seconds.
|tip Blinding Light is an AoE that deals 2500 Arcane damage to the entire raid.
|tip Every 50 seconds Solarian disappear and summons adds to attack the raid. She returns after 15 seconds, with 2 more elite adds.
|confirm
step
map Tempest Keep
path loop off
path	68.2,44.5	59.6,41.6	57.7,33.4
path	53.9,27.2
Follow the path, clearing trash as you make your way to the final boss, Kael'thas Sunstrider. |goto 53.9,27.2 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Kael'thas Sunstrider##19622 |goto 50.0,15.0
|tip Kael'thas and his advisors are immune to taunts.
_Phase 1-3_
|tip Fireball deals 16,000-20,000 Fire damage and is interruptible.
|tip Flamestrike is an AoE that deals 120,000 damage in a 6 yard radius plus an additional 3000 Fire damage per second for 8 seconds.
|tip Summon Pheonix occasionally spawns a pheonix add to attack the raid.
|tip Arcane Disruption deals 1750-2250 Arcane damage and a 10 second disorient to the entire raid.
|tip Shock Barrier is a shield that absorbs 80,000 damage, lasting 10 seconds and making him immune to interrupts.
_Phase 4 Abilities_
|tip Mind Control Kael'thas mind controls 3-4 raid members.
|tip Pyroblast deals 45,000-55,000 Fire damage. It is interruptable and he will begin casting it after using Shock Barrier
_Phase 5 Abilities_
|tip Gravity Lapse all raid members are teleported to Kael'thas and then "swim" in the air for 30 seconds.
|tip Nether Beam deals 2000 Arcane damage to a random raid member, jumping to nearby players and doubling the damage dealt every jump.
|tip Nether Vapor spawns black clouds above Kael'thas. If touched they apply a stacking debuff that reduces max health ny 10% and stack up to 9 times.
_Thaladred the Darkener_
|tip Gaze fixes all aggro to the targeted player.
|tip Phychic Blow deals 4500 damage plus a knockback.
|tip Silence is an AoE silence, affecting all raid members within 8 yards of Thaldred.
_Lord Sanguinar_
|tip Bellowing Roar is an AoE fear, centered on himself and fearing all raid members within 35 yards.
_Grand Astromancer Capernian_
|tip Fireball deals 6000-7000 Fire damage to a single target.
|tip Conflagration hits a random raid member within 30 yards, causing disorient and 600-900 damage per second plus 300 damage per second to all players within 8 yards of the targeted player.
|tip Arcane Explosion deals 4500 Arcane damage plus a knockdown and debuff that slows movement speed.
_Master Engineer Telonicus_
|tip Bomb deals 7000-9000 Fire damage in a small AoE centered on his target.
|tip Remote Toy is a 60 second debuff used on a random raid member, is occasionally stuns the player for 4 seconds throughout the duration.
|confirm
step
You may have looted a quest item from Kael'thas.
Click the Verdant Sphere in your bags |use Verdant Sphere##32405
accept Kael'thas and the Verdant Sphere##11007
|only if not completedq(11007)
step
talk A'dal##18481
turnin Kael'thas and the Verdant Sphere##11007 |goto Shattrath City 54.2,44.4
|only if haveq(11007)
step
Congratulations, you have finished The Eye raid guide!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Outland Raids\\Gruul's Lair",{
mapid=330,
achieveid={692},
patch='30001',
condition_suggested=function() return level>=27 and level<=30 end,
keywords={"BEM, Blade's, Edge, Mountains, Dragonkiller"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the Gruul's Lair Raid.",
},[[
step
Enter Gruul's Lair |goto Gruul's Lair/1 81.87,78.11 < 1000
step
kill High King Maulgar##18831 |goto Gruul's Lair 55,57
|tip Arcing Smash deals damage to the target and any raid members near the target. It hits as a cleave, so make sure the tank is the only one in front of Maulgar when this happens.
|tip Berserker Charge causes Maulgar to charge his current target, an additional 300 damage and knocking them back.
|tip Intimidating Roar is a debuff that causes the target to freeze in fear for 8 seconds and causing all nearby raid members to flee in fear.
|tip Mighty Blow deals an additional 150 damage and knocks the target back.
|tip Whirlwind hits nearby enemies, inflicting an additional 110 damage for 15 seconds.
_Krosh Firehand_
|tip Uses Spell Shield which reduces magic damage taken by 75%.
_Olm the Summoner_
|tip Has a stacking DoT and summons Fel Stalker adds. Also occasionally uses Death Coil, healing himself for the same amount of damage it deals.
_Kiggler the Crazed_
|tip Has Lightning Bolt which does about 3000 damage to a single target. Arcane Shock deals 800 damage and applies a DoT.
_Blindeye the Seer_
|tip Uses Power Word: Shield which absorbs damage and Prayer of Healing which heals to full. Also has a smaller heal that heals for about 5% health
|confirm
step
map Gruul's Lair
path loop off
path	43.9,69.0	33.2,65.4	20.9,52.7
Follow this short path, clearing trash as you make your way to the second and final boss, Gruul the Dragonkiller. |goto 20.9,52.7 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Gruul the Dragonkiller## |goto 21,27
|tip Growth is a buff that increases Gruul's damage by 15% and size by 10% every 15 seconds, stacking up to 30 times. Lasts for 5 minutes.
|tip Hurtful Strike hits the target with the second highest aggro within Gruul's melee range. Melee DPS should try to keep their aggro lower than the main tank and also the off tank.
|tip Reverberation is a zone-wide silence AoE. It lasts 4 seconds.
|tip Cave In is a random AoE that deals 3000 damage every 3 seconds in the targeted area.
|tip Ground Slam is a zone-wide knockback, then triggers Gronn Lord's Grasp.
|tip Gronn Lord's Grasp is a stacking debuff that occurs after a Ground Slam. It reduces movement speed by 20%, stacking 5 times and then causing the Stoned effect.
|tip Stoned stuns the target. Occurs after getting 5 stacks of Gronn Lord's Grasp. Will then cause Shatter.
|tip Shatter is a raid wide AoE. The damage dealt is increased if raid members are near each other when it occurs. Hits for 1000-8500, depending on player proximity.
|confirm
step
Congratulations, you have finished the Gruul's Lair raid guide!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Outland Raids\\Hyjal Summit (Battle for Mount Hyjal)",{
mapid=329,
achieveid={695},
patch='30001',
condition_suggested=function() return level>=27 and level<=30 end,
keywords={"Archimonde, MH, HS, CoT, Caverns, Time"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the Battle for Mount Hyjal Raid.",
},[[
step
talk Andormu##20130
accept The Caverns of Time##10277 |goto Tanaris/18 41.7,38.7
|only if not completedq(10277)
step
Follow the Custodian of Time as she travels around the Cavern. |q 10277/1 |goto 53.6,55.6
|only if haveq(10277)
step
Enter Hyjal Summit |goto Tanaris/18 35.90,15.68 < 5
confirm
step
Enter the first portal on the left
confirm
step
talk Lady Jaina Proudmoore##17772 |goto Hyjal Summit 10.5,63.8
Tell her "My companions and I are with you."
|tip This will start the first boss fight, so make sure you are ready.
|confirm
step
Defeat the 8 waves of enemies. |goto 7.6,69.5
|confirm
step
kill Rage Winterchill##17767 |goto 7.6,69.5
|tip Frost Armor increases Rage Winterchill's armor by 3000, slows melee attackers' movement speed by 50%, and increases the time between their attacks by 25%.
|tip Icebolt stuns the player for 4 seconds and deals about 5000 damage.
|tip Death and Decay is an AoE spell that ticks for 15% of max health as damage per second to each player in the targeted area. Move out of it as quickly as possible.
|tip Frost Nova is an AoE spell that roots all players around Rage Winterchill for up to 10 seconds.
|tip Enrage occurs after 10 minutes of combat. It will greatly increase his attack speed and damage. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
|confirm
step
talk Lady Jaina Proudmoore##17772 |goto Hyjal Summit 10.6,63.8
Tell her "I am ready."
|tip This will start the next boss fight, make sure you are ready.
|confirm
step
Defeat the 8 waves of enemies. |goto 7.6,69.5
|confirm
step
kill Anetheron##17808 |goto 7.6,69.5
|tip Vampiric Aura his melee attacks heals him for 300% of the damage.
|tip Carrion Swarm is a random one-direction cone attack that does 3000-6000 Shadow damage plus gives a 15 second debuff that reduces healing done by 75%. He casts this about every 15 seconds.
|tip Sleep is a 10 second stun that affects 3 targets.
|tip Inferno is cast every 60 seconds and targets a random raid member. An elite Towering Inferno is summoned on them and they are stunned for 2 seconds.
|tip Berserk occurs after 10 minutes of combat. It will greatly increase his attack speed and damage. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
|confirm
step
talk Lady Jaina Proudmoore##17772 |goto 10.5,63.8
Tell her "Until we meet again."
|tip This will start the transition to the next phase of the raid, make sure you are ready to move out.
|confirm
step
map  Hyjal Summit
path loop off
path	15.2,64.0	16.6,60.4	19.0,56.3
path	22.4,62.2	25.5,63.9	28.5,63.7
path	33.2,62.8	35.5,59.0	35.6,55.6
path	32.2,48.3	32.6,41.4	37.6,36.4
path	41.1,35.6
Follow this road east to the Horde Camp.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Thrall##17852 |goto 48.0,41.5
Tell him "I am with you."
|tip This will start the next boss fight, make sure you are ready.
|confirm
step
Defeat the first wave of enemies. |goto 43.1,36.0
|confirm
step
Defeat the second wave of enemies. |goto 51.9,33.1
|confirm
step
Defeat the third wave of enemies. |goto 43.8,35.8
|confirm
step
Defeat the fourth wave of enemies. |goto 43.8,35.8
There are also flying enemys here. |goto 51.9,33.1
|confirm
step
Defeat 5th wave of enemies. |goto 43.8,35.8
|confirm
step
Defeat any remaining enemies around here. |goto 47.4,37.5
|tip This wave usually has a flying Frost Wyrm, make sure to look up in the sky.
|confirm
step
Defeat the seventh wave of enemies here. |goto 43.8,35.8
|tip This wave usually has a flying Frost Wyrm, make sure to look up in the sky.
|confirm
step
Defeat the last wave of enemies here. |goto 43.8,35.8
|confirm
step
kill Kaz'rogal##17888 |goto 43.5,36.0
|tip This boss has a cleave, so make sure that the main tank is the only one that is in front of the boss when this occurs.
|tip War Stomp is a 15 yard AoE melee attack, dealing 1700-2500 damage and also stuns for 5 seconds.
|tip Cripple debuff is given to a raid member that increases time between attacks by 75%, movement speed by 75% and reduces their strength by 75%. Lasts 12 seconds.
|tip Mark of Kaz'rogal, a debuff that affects all mana users in the raid. Drains 600 mana per second for 5 seconds. If mana is reduced to 0 by the debuff, the debuff is removed and the target and nearby allies take 10,000-11,000 Shadow damage.
|confirm
step
talk Thrall##17852 |goto 48.0,41.5
Tell him "We have nothing to fear."
|tip This will start the next boss fight, make sure you are ready.
|confirm
step
Defeat the first wave of enemies here. |goto 44.0,36.2
|confirm
step
Defeat the second wave of enemies in this area. |goto 44.8,38.1
|tip This wave usually has a flying Frost Wyrm, make sure to look up in the sky.
|confirm
step
Defeat the third wave of enemies this wave have Giant Infernals in the Horde Camp. |goto 45.2,38.2
|confirm
step
Defeat the rest of the enemies here. |goto 43.7,36.1
|confirm
step
Defeat the Giant Infernals and Fel Stalkers attack the Camp. |goto 47.9,37.
|confirm
step
Defeat the enemies in this area. |goto 43.7,36.1
|confirm
step
Defeat the Giant Infernals, Ghouls, Crypt Fiends, and Fel Stalkers attacking in this area. |goto 47.4,38.4
|confirm
step
Defeat the last wave of enemies here. |goto 43.7,36.1
|confirm
step
kill Azgalor##17842 |goto 43.7,36.1
|tip This boss has a cleave, so make sure that the main tank is the only one that is in front of the boss when this occurs.
|tip Rain of Fire is a 15 yard AoE cast on a random target. Lasts 30 seconds and deals 1700 fire damage every 2 seconds. Party members inside the AoE for more than 2 seconds will also be hit for 1200 damage every second for 5 seconds.
|tip Howl of Azgalor is a 5 second zone-wide AoE silence.
|tip Doom is cast on a random party member every 45 seconds. The target dies after 20 seconds and spawns an elite add. Cannot be resisted or removed.
|tip Enrage occurs after 10 minutes of combat. It will greatly increase his attack speed and damage. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
|confirm
step
talk Thrall##17852 |goto Hyjal Summit 48.0,41.5
Tell him "Until we meet again."
|tip This will start the transition to the final phase of the raid, make sure you are ready to move out.
|confirm
step
map  Hyjal Summit
path loop off
path	56.2,45.6	60.3,53.5	67.2,48.3
path	73.4,44.4	75.2,46.3	74.4,50.1
path	74.5,56.6
Follow the road east to Nordrassil.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Tyrande Whisperwind##17948 |goto 74.3,57.6
Tell her "I would be grateful to any aid you can provide."
|tip This will start the next boss fight, so make sure you are ready.
|confirm
step
Jump off the cliff here |goto 75.3,45.6
Use the Tears of the Goddess in your bag to slow your fall |use Tears of the Goddess##24494
|tip The slow effect only lasts 2 seconds, so wait until the last second to use it.
|confirm
step
kill Archimonde##17968 |goto 76.9,36.7
|tip Air Burst is a 15 yard AoE spell that deals 1500 Nature damage centered on a random target. All affected players are tossed into the air and take over 100% fall damage. Avoid at all costs.
|tip Fear is an 8 second AoE Fear. Affects entire raid.
|tip Grip of the Legion deals 2500 damage every 2 seconds for 5 minutes. This is dispellable.
|tip Doomfire spell that leaves a trail of fire on the ground. Anyone touched by it gets a debuff that deals 2400 Fire damage every 3 seconds, which is reduced by 150 every tick.
|tip Finger of Death deals 30,000 Shadow damage to a single target. It is only used if no targets are in melee range.
|tip Soul Charge this is cast whenever a raid member dies.Achimonde gains a Soul Charge which he can use at a random time. The type of affect it has depends on the character class that made it. The following effects apply to the whole raid:
|tip Priest, Mage, Warlock: 4500 Fire damage and a 4 second silence.
|tip Warrior, Rogue, Paladin: 4500 Physical damage and 4 seconds damage taken increased by 50%.
|tip Druid, Shaman, Hunter: 4500 Nature damage over 8 seconds plus 2250 mana burn.
|tip Enrage mechanic: Hand of Death deals 100,000 Shadow damage to everyone in the raid. This is cast 9 minutes after Archimonde is engaged or if he reaches Nordrassil. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
|confirm
step
talk Andormu##20130
turnin The Caverns of Time##10277 |goto Tanaris/18 41.7,38.7
|only if haveq(10277)
step
Congratulations, you have completed the Battle for Mount Hyjal raid guide!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Outland Raids\\Karazhan",{
mapid=350,
achieveid={690},
patch='30001',
condition_suggested=function() return level>=27 and level<=30 end,
keywords={"Deadwind, Pass"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the Karazhan Raid.",
},[[
step
Enter Karazhan |goto Karazhan/1 58.76,76.11 < 1000
step
map Karazhan/1
path loop off
path	50.0,72.3	49.1,84.9	42.3,86.2
Follow the path, clearing trash as you make your way to the first boss, Attumen the Huntsman. |goto 42.3,86.2 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Attumen the Huntsman##16152 |goto 45.5,82.6
|tip He spawns here after Midnight reaches 95% health. They both are immune to taunts.
|tip Shadow Cleave hits for 4,000 Shadow damage. It is a cleave, so make sure that the main tank is the only one that is in front of the boss when this occurs.
|tip Intangible Presence is cast every 30 seconds, it is a reflectable AoE that reduces change to hit with melee, ranged attacks, and spells by 50%. The area it affects is centered on Attumen's target.
|tip Mount Up occurs when Attument or Midnight are at 25% health. He will mount up, turning into a single boss with a higher health percentage.
|tip Berserker Charge hits a random target, dealing 200 damage and applying a knockdown with a brief stun.
|confirm
step
map Karazhan/1
path loop off
path	44.8,88.8	49.2,75.6	53.0,64.1
path	Karazhan/3 54.5,65.9	Karazhan/3 45.2,54.5	Karazhan/3 36.8,65.4
Follow the path, clearing trash as you make your way to the next boss, Moroes. |goto Karazhan/3 36.8,65.4 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Moroes##15687 |goto 28.2,64.2
|tip This boss is immune to taunts.
|tip Vanish disappears briefly. This does not affect aggro.
|tip Garrote is a Physical DoT applied to a random raid member after a Vanish. Deals 1000 damage every 3 seconds for 5 minutes.
|tip Blind is a disorient effect hits Moroes' closest non-tank target.
|tip Gouge hits Moroes' current target, stunning them. This effect breaks on damage. While they are stunned Moroes will switch to the raid member with the second highest threat.
|tip Enrage occurs at 30% health. This encreases Moroes' damage. Kill him as quickly as possible to avoid death.
|confirm
step
map Karazhan/3
path loop off
path	46.4,55		66.6,49.8	71.2,42.8
path	Karazhan/4 63.4,42.1	Karazhan/4 66.2,33.1	Karazhan/4 76.6,41.5
Follow the path, clearing trash as you make your way to the next boss, the Maiden of Virtue. |goto Karazhan/4 76.6,41.5 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Maiden of Virtue##16457 |goto 82.5,48.5
|tip This boss is immune to taunts.
|tip Holy Ground is a permanent AoE that deals 300 Holy damage and 1 second of silence every 3 seconds to all raid members within 12 yards. This effect lasts the entire fight.
|tip Holy Fire deals 3500 Fire damage and an additional 1750 Fire damage every 2 seconds for 12 seconds. This can be dispelled.
|tip Holy Wrath is a chain AoE, dealing Holy damage and jumping to nearby raid members. Each jump increases the damage dealt by 40%. Counter this by staying spread out.
|tip Repentance deals 2000 Holy damage and incapacitates the entire raid for 12 seconds, but broken by any damage taken. This does not hit the Maiden's target.
|tip Berserk occurs after 10 minutes of combat, increasing her damage by 500%. This is designed to wipe the raid. Kill her before she reaches this stage to avoid death.
|confirm
step
map Karazhan/4
path loop off
path	77.1,42.1	65.9,32.5	56.2,37.1
path	48.6,39.7	41.1,38.5	28.0,23.1
path	24.2,24.5	19.9,40.3	11.0,41.3
path	12.3,25.3
Follow the path, clearing trash as you make your way to the next boss, the Opera Event. |goto 12.3,25.3 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Barnes##16812 |goto 20.8,27.0
Tell him "I'm not an actor." and "Ok, I'll give it a try."
|tip This will start the Opera boss event, make sure you are ready.
|confirm
step
You'll get one of three events: |goto 21.0,35.3
The Big Bad Wolf |next "wolf" |confirm
Wizard of Oz |next "oz" |confirm
Romulo & Julianne |next "raj" |confirm
step
label "wolf"
talk Grandmother##17603 |goto 17.0,34.7
Tell her "Oh, grandmother, what big ears you have."
|tip This will start the boss fight, make sure you are ready.
|confirm
step
kill The Big Bad Wolf##17521 |goto 18.4,34.9
|tip Terrifying Howl is cast every 25-35 seconds, fearing nearby enemies for 3 seconds.
|tip Little Red Riding Hood changes the target into Little Red Riding Hood, reducing their armor and resistances to 0, and increasing speed by 50%. Also pacifies and silences the target.
|tip This raid member will need to run away until this effect ends.
|tip Wide Swipe is cast every 25-35 seconds and stuns the target for 4 seconds.
|next "operaend" |confirm
step
label "oz"
kill The Crone##18168 |goto 18.4,34.9
|tip Kill order: Dorothee, Roar, Strawman, Tinhead. Killing these spawn The Crone. Killing him ends the event.
_Abilities:_
|tip Dorothee: Water bolt hits for 2000 Frost damage. Frightened Scream AoE, fearing 3 raid members for 2 seconds.
|tip Roar: Frightened Scream AoE, fearing 3 raid members for 2 seconds.
|tip Strawman: Burning Straw chance to be disoriented for 6 seconds when hit by a Fire spell. Brain Bash stuns target for 4 seconds.
|tip Tinhead: Cleave make sure that the main tank is the only one that is in front of the boss when this occurs. Rust slows Tinhead's speed by 10%, stacking up to 8 times.
|tip The Crone: Cyclone knocks the targeted player up into the air, dealing fall damage. Chain Lightning deals 2800 damage, jumping to nearby targets and dealing increased damage after every jump. Hits up to 5 players.
|next "operaend" |confirm
step
label "raj"
kill Romulo##17533 |goto 18.4,34.9
|tip Backward Lunge strikes an enemmy behind the Romulo, dealing weapon damage plus 300 and knocking the target back.
|tip Deadly Swathe strikes nearby enemies in front of Romulo, dealing weapon damage plus 300 and hitting up to 3 targets.
|tip Poisoned Thrust is a stacking debuff that reduces all stats by 10%, stacking up to 8 times.
|tip Daring inceases Romulo's attack speed and Physical damage dealt by 50% for 8 seconds.
kill Julianne##17534
|tip Eternal Affection heals one of Julianne's allies for about 50,000.
|tip Powerful Attraction stuns Julianne's target for 6 seconds.
|tip Blinding Passion deals 4500 Holy damage over 4 seconds.
|tip Devotion increases Julianne's spell casting speed and damage by 50% for 10 seconds.
|confirm
step
label "operaend"
map Karazhan
path loop off
path	Karazhan/4 20.0,41.2	Karazhan/5 47.0,83.9	Karazhan/5 78.1,58.4
path	Karazhan/5 65.0,25.7	Karazhan/6 40.9,16.2	Karazhan/6 41.8,34.5
path	Karazhan/6 48.6,46.5	Karazhan/6 52.8,53.9	Karazhan/6 58.1,62.1
path	Karazhan/6 43.0,83.6	Karazhan/6 58.86,76.61	Karazhan/6 44.6,83.5
Follow the path, clearing trash as you make your way to the next boss, Nightbane.
|tip Opening the world map will display an ant trail guiding you through the current floor.
Click the Urn to summon Nightbane. This will start the boss fight, make sure you are ready.
|confirm
step
kill Nightbane##17225 |goto 44.6,83.5
|tip Nightbane is immune to taunts.
|tip Phase 1 is the ground phase. Nightbane will alternate between this phase and Phase 2 during the fight.
|tip Phase 2 is flight phase. These phases occur at 75%, 50%, and 25% health.
_Ground Phases_
|tip Bellowing Roar is an AoE fear, cast every 45-60 seconds. Healers and DPS at range should be able to avoid it.
|tip Charrred Earth is an AoE cast on a random raid member. Does a DoT that deals up to 3000 FIre damage per second. It disappears once the player leaves the affected area.
|tip Distracting Ash debuff that reduces Nightbane's target's chance to hit with melee and spells by 30% for 40 seconds. This can be dispelled.
|tip Smoldering Breath inflicts 5000-6000 Fire damage to raid members in a frontal cone.
|tip Tail Sweep_ deals 450 Fire damage in a cone behind Nightbane. Also knocks them back and deals 450 damage every 3 seconds for 25 seconds.
|tip He also has a cleave, so make sure that the main tank is the only one that is in front of the boss when this occurs.
_Flight Phases_
|tip Rain of Bones is cast on a random raid member, dealing 400 AoE damage and summoning Restless Skeleton adds.
|tip Smoking Blast deals 2000 damage every second for 15 seconds to the target with highest threat and an additional 3000 Fire damage over 18 seconds. This DoT can be dispelled.
|tip Fireball Barrage is cast if any member of the raid is too far away from Nightbane while in the Flight phase. Each fireball deals 3500 damage, casting a fireball each second until all raid members are within range again.
|confirm
step
map Karazhan
path loop off
path	Karazhan/6 55.9,73.9	Karazhan/6 62.5,75.4	Karazhan/6 65.3,68.8
path	Karazhan/7 57.3,27.0	Karazhan/7 47.8,62.5	Karazhan/7 53.9,54.9
path	Karazhan/7 51.0,67.9	Karazhan/8 60.5,51.9	Karazhan/8 44.2,39.9
path	Karazhan/8 29.8,57.7	Karazhan/8 45.7,74.5	Karazhan/9 61.1,21.3
path	Karazhan/9 59.9,17.6	Karazhan/9 56.0,14.5	Karazhan/9 45.6,14.1
path	Karazhan/9 40.5,19.9
Follow the path, clearing trash as you make your way to the next boss, The Curator. |goto Karazhan/9 40.5,19.9 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill The Curator##15691 |goto 46.8,31.9
|tip Summon Astral Flare spawns an Astral Flare every 10 seconds (10 Flares total). The Flare spawns with threat from a non-tank raid member and immediately moves in their direction, hitting nearby raid members with Arcing Sear.
|tip Killing these as quickly as possible is essential, as you don't want more than one of them dealing damage at the same time.
|tip Hateful Bolt hits a non-tank raid member, dealing about 5000 Arcane damage.
|tip Evocation lasts for 20 seconds and occurs after The Curator has summoned all 10 Astral Flares. He becomes inactive for 20 seconds while recovering mana and increasing damage taken by 200%. Deal as much damage as possible.
|tip Soft Enrage occurs when The Curator reaches 15% health, increasing melee attack speed and Hateful Bolt cast rate. At this point he no longer uses Evocation or summons Astral Flares. Kill him as fast as possible to avoid death.
|tip Enrage occurs after 10 minutes of combat. It will greatly increase his attack speed and damage. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
|confirm
step
map Karazhan/9
path loop off
path	52.2,42.8	49.7,51.4	49.9,59.3
path	40.9,59.2	33.8,62.2	41.9,67.4
path	44.4,79.7	40.0,83.0	32.1,68.2
path	Karazhan/10 28.7,55.9	Karazhan/10 27.7,43.5	Karazhan/10 36.5,33.3
path	Karazhan/10 36.8,22.3
Follow the path, clearing trash as you make your way to the next boss, Terestian Illhoof. |goto Karazhan/10 36.8,22.3 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Click the Perplexing Bookshelf to gain access to the secret room.
|confirm
step
Follow the path down |goto Karazhan/11 44.0,51.0 < 5
confirm
step
kill Terestian Illhoof##15688 |goto Karazhan/11 53,69
|tip Shadow Bolt deals 4000 Shadow damage to the raid member with the highest threat.
|tip Sacrifice deals 1500 damage per second to a random raid member, also summoning them to the center of the room and stunning them until the Chains are killed.
|tip While the Chains are alive, Illhoof is also healed for 3000 health per second. When this occurs, killing these are top priority.
|tip Berserk occurs after 10 minutes of combat. Illhoof spams high-damage Shadow Bolt Volleys on the entire raid group every few seconds.
|confirm
step
map Karazhan/10
path loop off
path	38.3,25.6	48.3,45.2	58.1,42.4
path	63.6,35.8
Follow the path, clearing trash as you make your way to the next boss, the Shade of Aran |goto 63.6,35.8 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Click the Private Library Door
|confirm
step
kill Shade of Aran##16524 |goto 71.1,26.6
|tip Summon Water Elementals Aran spawns 4 Water Elementals to protect him.
|tip Frostbolt deals 4000 Frost damage and reduces the movement speed of the target for 4 second.
|tip Fireball deals 4000-5000 Fire damage and is interruptable.
|tip Arcane Missles is a 5 second channelled spell that shoots 5 missles, each dealing about 1350 Arcane damage. This spell is interruptable.
|tip Chains of Ice is a 10 second root.
|tip AoE Counterspell is a 10 yard AoE interrupt and locks out schools of magic for 10 seconds.
|tip Flame Wreath is used randomly every 30 seconds. It creates a fiery aura around 3 random raid members that last for 20 seconds.
|tip When stepped on, the Auras are triggered, dealing 3000-4000 Fire damage to everyone in the room. They can still be triggered after Aran's death.
|tip Circular Blizzard is used randomly every 30 seconds. It is a large AoE that slowly moves clockwise around the room, dealing 1500 Frost damage every 2 seconds and slowing movement speed by 65%.
|tip Magnetic Pull/Slow/Super Arcane Explosion pulls everyone to the center of the room and slows them. It is then followed by a 10 second cast Arcane Explosion that deals 10,000 damage in a 20 yard radius.
|confirm
step
map Karazhan/10
path loop off
path	55.2,46.8	60.2,58.5	Karazhan/12 48.4,57.2
path	Karazhan/12 54.6,49.6	Karazhan/12 52.8,70.9	Karazhan/12 44.5,80.8
path	Karazhan/12 36.3,78.0	Karazhan/12 25.3,60.7	Karazhan/13 53.8,78.1
path	Karazhan/13 44.1,57.1
Follow the path, clearing trash as you make your way to the next boss, Netherspite |goto Karazhan/13 44.1,57.1 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Netherspite##15689 |goto 36.6,43.6
|tip Nether Burn deals 1200 Shadow damage every 5 seconds. Only active during Portal Phase.
|tip Void Zone opens a large portal that lasts 25 seconds, inflicting 1000 Shadow damage every 2 seconds to all raid members in that area.
|tip Netherbreath is a conal ability that hits all targets in front of Netherspite, dealing 4500 Arcane damage and knocking them back about 20 yards.
|tip Empowerment occurs during Portal Phases a few seconds after beams come up. It is a self-buff and increases Netherspite's damage by 200%.
|tip Enrage occurs after 9 minutes of combat. It increases his damage by 500%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
_Portal Phase_
|tip The first phase of the fight, lasting 1 minute and alternating with the Banish Phase.
|tip A red, green, and blue portal open up and shoot out beams of light at Netherspite, giving him a stacking buff. Physically blocking these beams with a raid member is essential, cutting off his buffs and giving them to that player. Along with the buffs come a negative effect, so rotating raid members is normal.
|tip Red is tank beam.
|tip Green is healer beam.
|tip Blue is DPS beam.
_Banish Phase_
|tip The second phase of the fight, lasting 30 seconds and alternating with the Portal Phase.
|tip Netherspite becomes banished, remaining stationary but becoming vulnerable to all damage.
|tip After a few seconds Netherspite targets random raid members, casting Netherbreath.
|tip All aggro is wiped at the end of this phase.
|confirm
step
map Karazhan/13
path loop off
path	49.5,67.2	56.4,83.0	Karazhan/12 27.1,61.5
path	Karazhan/12 27.0,57.6	Karazhan/12 21.3,47.6	Karazhan/12 23.8,41.6
path	Karazhan/12 30.1,33.9	Karazhan/12 34.4,26.7	Karazhan/12 39.9,18.6
Follow the path, clearing trash as you make your way to the next boss, the Chess event. |goto 39.9,18.6 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Click the Gamesman's Hall Door to enter the Gamesman's Hall
|confirm
step
talk King Llane##21684 |goto Karazhan/14 40.9,68.9
"Control King Llane"
|tip This will start the boss fight, make sure you are ready.
|confirm
step
kill Warchief Blackhand##21752 |goto Karazhan/14 39.4,67.6
|tip The goal of this fight is to kill Warchief Blackhand by using your "chess" pieces, without letting them kill King Llane. Each piece has their own abilities.
_King Llane_
|tip Sweep deals 4000 damage to 3 frontal adjacent enemies.
|tip Heroism grants 50% increased damage to all allies on 8 adjacent squares.
_Human Conjurer_
|tip Elemental Blast deals 4000 damage to any single enemy piece.
|tip Rain of Fire deals 6000 damage to any enemy chess piece and all adjacent enemy pieces.
_Human Cleric_
|tip Healing heals a friendly piece for 12,000.
|tip Holy Lance deals 2000 damage to enemy pieces standing in front in a straight line of 3.
_Human Charger_
|tip Smash deals 3000 damage to a target 1 square in front.
|tip Stomp reduces damage dealt by all adjacent enemy pieces by 50%. Lasts 10 seconds.
_Conjured Water Elemental_
|tip Geyser deals 3000 damage to all adjacent enemy pieces.
|tip Water Shield reduces damage taken by 50% for 5 seconds.
_Human Footman_
|tip Heroic Blow deals 1000 damage to a target 1 square in front.
|tip Shield Block absorbs 500 damage and lasts 5 seconds.
_Medivh cheats:_
|tip Healing Cheat heals Warchief Blackhand and all other enemy pieces to full health.
|tip Damage Cheat places a fire AoE on a random player controlled piece.
|tip Berserking Cheat grants one of Medivh's pieces increased size, speed, and damage.
|confirm
step
Loot the Dust Covered Chest |goto 25.9,74.5
|confirm
step
map Karazhan/14
path loop off
path	52.0,61.6	56.0,56.8	50.1,46.2
path	50.1,46.2	68.3,46.2	77.2,58.0
Follow the path, clearing trash as you go. Climb these stairs all the way to the top. |goto Karazhan/17 48.2,85.7 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Karazhan/17
path loop off
path	40.9,81.6	39.7,72.3	44.7,64.1
Follow this path to the final boss, Prince Malchezaar. |goto 44.7,64.1 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Prince Malchezaar##15690 |goto 53.9,42.0
|tip Phase 1 starts immediately after Malchezaar is engaged in combat.
|tip Phase 2 starts at 60% health. Malchezaar will now use Flying Axes in this phase.
|tip Phase 3 starts at 30% health. Flying Axes and Amplify Damage will be used in this final phase.
|tip Summon Infernal spawns a Netherspite Infernal that casts a large AoE Hellfire on the raid. These cannot be attacked and must be avoided.
|tip Enfeeble is cast on 5 random raid members, reducing their maximum health to 1 hit point for 7 seconds.
|tip Shadow Nova is usually cast after Enfeeble. It has a range of 24 yards, deals about 3000 Shadow damage and has a knockback. This can easily be avoided by staying at range of Malchezaar.
|tip Shadow Word:Pain is a DoT cast on Malchezaar's main target or a random target, dealing 1500 damage per tick. This can be dispelled.
|tip Thrash makes Malchezaar's melee attack hit his target 2 additional times.
|tip Flying Axes hit random targets
|tip Amplify Damage is a debuff that doubles the target's damage taken from all sources. It is cast on a random target and is not dispellable.
|confirm
step
If you or another raid member has completed the Medivh's Journal questline and has access to the Blackened Urn, you can summon and fight the bonus boss, Nightbane.
Click here to fight Nightbane! |next "nightbane" |confirm
Click here to skip Nightbane! |next "raidend" |confirm
step
label "nightbane"
path loop off
path	Karazhan/17 45.2,63.2	Karazhan/17 40.5,77.1	Karazhan/17 49.2,87.1
path	Karazhan/16 66.6,62.0	Karazhan/15 79.5,72.5	Karazhan/14 78.0,58.5
path	Karazhan/14 66.2,42.9	Karazhan/14 52.9,42.0	Karazhan/14 32.0,83.8
path	Karazhan/14 23.9,80.1	Karazhan/12 36.8,22.2	Karazhan/12 28.4,35.9
path	Karazhan/12 21.6,46.6	Karazhan/12 29.0,62.8	Karazhan/12 39.7,82.2
path	Karazhan/12 44.3,80.8	Karazhan/12 52.0,71.6	Karazhan/12 55.9,52.3
path	Karazhan/12 47.9,57.1	Karazhan/10 49.7,47.0	Karazhan/10 40.2,32.7
path	Karazhan/10 28.4,43.9	Karazhan/10 29.1,56.4	Karazhan/9 40.1,83.0
path	Karazhan/9 43.5,66.7	Karazhan/9 49.6,58.9	Karazhan/9 48.5,47.7
path	Karazhan/9 51.3,40.3	Karazhan/9 42.6,19.1	Karazhan/9 49.1,14.7
path	Karazhan/9 54.3,14.8
Follow the long path back to Nightbane. |goto Karazhan/9 54.3,14.8 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Jump off here |goto Karazhan/9 60.6,20.0 <5 |c
step
Jump off here |goto Karazhan/7 49.5,35.3 <5 |c
step
map Karazhan/6
path loop off
path	59.8,64.6	61.8,70.6	55.8,73.3
path	52.4,71.6	46.8,77.0	43.0,83.5
Follow the path to Nightbane. |goto Karazhan/6 43.0,83.5 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
label "raidend"
Congratulations, you have finished the Karazhan raid guide!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Outland Raids\\Magtheridon's Lair",{
mapid=331,
achieveid={693},
patch='30102',
condition_suggested=function() return level>=27 and level<=30 end,
keywords={"HFP, Peninsula"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the Magtheridon's Lair Raid.",
},[[
step
Enter Magtheridon's Lair |goto Magtheridon's Lair/1 62.72,18.03 < 1000
step
map Magtheridon's Lair
path loop off
path	68.4,25.6	68.6,48.0	63.6,59.3
path	57.5,68.7	65.0,93.4
Follow the path, clearing trash as you make your way to Magtheridon. |goto 65.0,93.4 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Magtheridon##17257 |goto 68,78
_Phase 1_
|tip This phase starts as soon you a Channeler is engaged in combat. The raid has 2 minutes before Magtheridon becomes active. Interrupt and kill as many Channelers as possible.
_Phase 2_
|tip Starts when Magtheridon becomes active and starts attacking the raid. Any remaining Channelers need to be killed.
|tip Blast Nova deals a large amount of Fire damage to all raid members in range. Must be interrupted by clicking the 5 Manticron Cubes.
_Phase 3_
|tip Starts when Megtheridon reaches 30% health. He shatters the walls, causing the roof to collapse which deals 5200-6800 damage and a 2 second stun to the entire raid.
|tip Collapse is the destroyed ceiling falling on the raid. It occurs randomly for the rest of this phase.
confirm
step
You may have looted a quest item from Magtheridon.
Click Magtheridon's Head in your bags |use Magtheridon's Head##32385
accept The Fall of Magtheridon##11002
only if not completedq(11002)
step
talk Nazgrel##3230
turnin The Fall of Magtheridon##11002 |goto Hellfire Peninsula 55.0,36.0
only if not completedq(11002)
step
Congratulations, you have finished the Magtheridon's Lair raid guide!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Outland Raids\\Serpentshrine Cavern",{
mapid=332,
achieveid={694},
patch='30103',
condition_suggested=function() return level>=27 and level<=30 end,
keywords={"SSC, Vashj, Lady"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the Serpentshrine Cavern Raid.",
},[[
step
Enter the Serpentshrine Cavern |indoors Coilfang Reservoir |goto Zangarmarsh/0 51.90,32.99
confirm
step
Take the elevator down |goto Serpentshrine Cavern 13.5,58.9 <5 |c
step
map Serpentshrine Cavern
path loop off
path	15.4,58.0	17.3,66.4	19.0,69.2
path	19.7,68.0
Follow the path to the second elevator, and then take it up. |goto 19.7,68.0 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Serpentshrine Cavern
path loop off
path	21.4,72.9	25.8,73.7	28.1,80.1
path	32.2,82.6
Follow this path, clearing trash as you make your way to the first boss, Hydross the Unstable. |goto 32.2,82.6 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Hydross the Unstable##21216 |goto 36.8,84.8
|tip Summon Elementals Hydross summons 4 elementals whenever he switches between forms.
|tip Enrage occurs after 10 minutes of combat. It increases his damage by 500%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
_Water Form_
|tip Immune to Frost damage.
|tip Mark of Hydross is a raid-wide debuff that stacks up to 6 times, increasing Frost damage taken by 10%, 25%, 50%, 100%, 250%, and finally 500%.
|tip Water Tomb is a single target AoE. It stuns all affected players for 4 seconds and deals 4500 Frost damage over 5 seconds.
_Poison Form_
|tip Immune to Nature damage.
|tip Mark of Corruption is a raid-wide debuff that stacks up to 6 times, increasing Nature damage taken by 10%, 25%, 50%, 100%, 250%, and finally 500%.
|tip Vile Sludge is a debuff that deals 4000 Nature damage over 24 seconds and reduces healing and damage by 50%.
|confirm
step
map Serpentshrine Cavern
path loop off
path	35.9,75.9	36.4,69.6	35.5,64.4
Clear the trash as you make your way to this spot. |goto 35.5,64.4 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Jump off the pipe here and swim to the large circular platform below. |goto 36.3,61.9 <5 |c
step
kill The Lurker Below##21217 |goto 40,58
|tip You or a raid member has to fish here in the Strange Pool to summon the boss.
_Phase 1_
|tip Water Bolt deals 9000-11,000 damage to a random target. He will only use this if no player is within melee range.
|tip Whirl deals 3000-4000 physical damage and a 5 yard knockback to all raid members in melee range.
|tip Geyser affects a random raid member, dealing 3000-4000 Frost damage and a 10 yard knockback to everyone within 10 yards of the target.
|tip Spout shoots a water spray from his mouth and begins to rotate 360 degrees, dealing 3500 Frost damage and knocking the target back 60 yards.
_Phase 2_
|tip The Lurker Below submerges underwater, spawning 9 adds. He will resurface after 1 minute.
|tip Coilfang Guardian adds have a Arcing Smash cone, make sure the tank is the only one in front of them when this occurs.
|tip Coilfang Ambusher adds have a Multi-Shot attack, which hits up to 3 players for 2000-3000 damage.
|confirm
step
map Serpentshrine Cavern
path loop off
path	37.1,51.7	40.6,49.5	41.0,42.7
path	40.0,40.1	33.5,41.9	30.0,39.1
path	30.6,29.6	36.1,25.0
Follow the path, clearing trash as you make your way to the next boss, Leotheras the Blind. |goto 36.1,25.0 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Leotheras the Blind##21215 |goto 41.3,26.2
|tip He switches between human and demon forms, wiping aggro each time this happens.
_Phase 1_ lasts until Leotheras has 15% health.
_Human Form_
|tip Whirldwind lasts 12 seconds and deals 3000 damage plus a DoT that lasts 15 seconds and deals 2500 damage every 3 seconds.
_Demon Form_
|tip Chaos Blast is an AoE that deals 150 Fire damage and applies a debuff that increases Fire damage taken by 1675 and stacks up to 20 times.
|tip Summon Inner Demons occurs about 45 seconds into the Demon Form phase. Inner Demons are spawns for 5 raid members, they can only be attacked by the person they belong to. If Leotheras returns to human form while one of them are alive that player will be Mind Controlled for 10 minutes.
_Phase 2_ starts at 15% health.
|tip Leotheras splits and both forms must be dealt with at the same time. The demon form has full health while the human form retains the same health.
|tip Kill the human form as quickly as possible to avoid death.
|confirm
step
map Serpentshrine Cavern
path loop off
path	43.1,30.7	45.3,23.3	39.5,20.6
path	42.3,14.2	44.8,14.1
Follow the path, clearing trash as you make your way to the next boss, Fathom-Lord Karathress. |goto 44.8,14.1 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Fathom-Lord Karathress##21214 |goto 48,17
|tip Cataclysmic Bolt affects a random raid member, dealing 50% of the their maximum health as Shadow damage, knocking them down and stunning them.
|tip Sear Nova deals 3000 Fire damage to all raid members in melee range.
|tip Bkessing of the Tides Karathress gains this buff if he reaches 75% health while any of the other adds are alive. It increases his attack and cast speed by 66% for each add.
|tip Enrage occurs after 10 minutes of combat. It increases his damage by 500%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
_Fathom-Guard Sharkkis_
|tip Multi-shot deals 2000-3000 damage to 3 raid members.
|tip Leeching Arrow targets a random raid member and burns 525 health and mana every second for 12 seconds.
|tip Hurl Trident hits a random player for 1500 damage.
|tip Summon Pet spawns an elemental or a beast pet to attack the raid. The elemental pet explodes upon death.
|tip The Beast Within increases Sharkkis' damage by 30# and pet damage by 50%.
_Fathom-Guard Tidalvess_
|tip Spitfire Totem lasts 1 minute and attacks up to 5 raid members within 45 yards for 2500-3500 Fire damage.
|tip Poison CLeansing Totem removes 1 poison effect from Tidalvess every 5 seconds.
|tip Earthbind Totem periodically reduces the movement speed of nearby players by 50%.
_Fathom-Guard Caribdis_
|tip Water Bolt Volley is a 45 yard AoE that deals 2700-3200 Frost damage.
|tip Tidal Surge is a 10 yard AoE stun that lasts 3 seconds.
|tip Healing Wave is a single target heal cast on any mob or herself, healing 20-30% health.
|tip The Whirlwind spawns a whirlwind near her, which moves around the room, knocking players into the air for 3-9 seconds and applying a debuff that increases their cast time.
|confirm
step
map Serpentshrine Cavern
path loop off
path	51.4,14.3	58.1,11.4	59.4,19.1
Follow the path, clearing trash as you make your way to the next boss, Morogrim Tidewalker. |goto 59.4,19.1 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Morogrim Tidewalker##21213 |goto 59.4,25.1
|tip Tidal Wave deals 4000-5000 Frost damage to the target and reduces their attack speed by 400% for 15 seconds.
|tip Watery Grave teleports 4 raid members under the waterfalls, inflicting 6000 damage after 6 seconds and fall damage.
|tip Earthquake deals 3000-4000 damage in a 50 yard radius around Morogrim.
|tip Summon Murlocs Morogrim spawns 2 packs of 6 murlocs each after every Earthquake.
|tip Summon Watery Globules occurs at 25% health. He stops casting Watery Grave and summons 4 watery globules, 1 from each grave spot. They move towards a raid member and explode for 4000-6000 damage.
|confirm
step
map Serpentshrine Cavern
path loop off
path	59.5,32.9	52.9,41.7	47.0,41.7
path	41.3,41.6	40.9,48.0	46.9,51.0
path	50.5,58.3
Follow the path, clearing trash as you make your way to the last boss, Lady Vashj. |goto 50.5,58.3 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Click Lady Vashj's Bridge Console to bring up the bridge. |goto 50.5,58.3
|confirm
step
kill Lady Vashj##21212 |goto 71.8,59.1
|tip Multi-Shot hits the target and up to 4 nearby raid members for 6500-7500 damage.
|tip Shock Blast deals 9000 Nature damage and a 5 second stun to the targeted raid member.
|tip Entangle is a 10 second AoE immobilize that affects all raid members within 15 yards of Vashj.
|tip Static Charge is a debuff that does 2000 damage per tick to the target and anyone within 5 yards, lasting 15 seconds.
_Phase 2_
|tip Vashj spawns adds to attack the raid and her shield must be turned off.
|tip Forked Lightning deals 2300-2600 Nature damage in a frontal cone. Make sure the tank is the only one in front of her when this occurs.
|tip Enchanted Elemental: slowly moves toward Vashj and increases her damage by 5% if it reacher her.
|tip Tainted Elemental: does Poison Spit, which hits a random target for 2000 Nature damage and an additional DoT that deals 2000 damage every second for 8 seconds.
|tip Tainted Elementals drop Tainted Cores which are used to destroy Lady Vashj's shield, 4 are needed.
|tip Coilfang Elite: has a cleave. Make sure the tank is the only one in front of them when this occurs.
|tip Coilfang Strider: uses Mind Blast that deals 2500 Shadow damage. Panic Aura is an 8 yard AoE that causes a 4 second Fear every tick.
_Phase 3_
|tip Toxic Spore Bats: continue to spawn in this phase. They use Toxic Spores, which is a poison AoE that deals 1500 Nature damage per second.
|confirm
step
Congratulations, you have finished the Magtheridon's Lair raid guide!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Outland Raids\\Sunwell Plateau",{
mapid=335,
achieveid={698},
patch='30001',
condition_suggested=function() return level>=27 and level<=30 end,
keywords={"Kil'jaeden, Isle, Quel'Danas"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the Sunwell Plateau Raid.",
},[[
step
Enter Sunwell Plateau |goto Sunwell Plateau/1 30.94,36.41 < 1000
step
map Sunwell Plateau/1
path loop off
path	33.9,43.3	36.6,51.5	33.7,58.3
path	25.1,59.8	17.6,55.5	16.9,45.7
path	23.6,39.7	31.5,33.8	40.0,35.3
path	40.5,65.3	21.3,66.5	15.6,66.0
path	12.2,54.0	21.3,50.8
Follow the path, clearing trash as you make your way to the first boss, Kalecgos. |goto 21.3,50.8 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
label "dragon"
kill Kalecgos##24850 |goto 29,50
This fight takes place in two realms at the same time. Both fights need to be done and coordinated at the same time.
_Normal Realm_
|tip Players must face and subdue Kalecgos the dragon.
|tip Arcane Buffet deals 500 Arcane damage plus a stacking debuff that increases Arcane damage taken by 500 for 40 seconds. Hits all players in the normal realm.
|tip Frost Breath is a 30 yard frontal AoE spell that slows attack speed by 75% to all raid members affected.
|tip Tail Lash deals 1500 damage and a 2 second stun to raid members behind Kalecgos.
|tip Spectral Blast is cast about every 20 seconds and Kalecgos targets a random raid member. After 2 seconds they take 5000 Arcane AoE damage. They are also teleported to the spectral realm and for about 10 seconds a portal is opened that other raid members can use to go there too.
|tip Wild Magic gives a random target a random buff/debuff.
_Green:_
|tip Increases healing by 100%.
_Purple:_
|tip Increases cast time by 100%.
_Red:_
|tip Reduces chance to hit with meele and ranged attacks by 50%.
_White:_
|tip Increases damage done by critical hits by 100%.
_Black:_
|tip Increases threat generation by 100%.
_Blue:_
|tip Reduces spell and ability costs by 50%.
|tip Enrage occurs when either Kalecgos or Sathrovarr reach 10% health, both enrage, greatly increasing their damage. Kill them both as fast as possible to avoid death.
Click here to see mechanics for the spectral realm and Sathrovarr the Corruptor |next "kalec" |confirm
Click here when the fight is over |next "kalecgosend" |confirm
step
label "kalec"
kill Sathrovarr the Corruptor##24892 |goto 29,50
|tip This fight takes place in two realms at the same time. Both fights need to be done and coordinated at the same time.
_Spectral Realm_
|tip Spectral Realm is a debuff dealt to players upon entering the realm. It lasts 60 seconds and they are teleported back to the normal realm once it expires.
_Sathrovarr_
|tip Corrupting Strike deals 9000 Shadow damage, a stun, and an additional 1000 damage over 3 seconds.
|tip Curse of Boundless Agony is a 30 second Shadow DoT that deals increasing damage every tick, starting at 100 damage and doubling every 5 seconds. If this kills the target or if it is removed it jumps to the next target.
|tip Shadow Bolt Volley deals 5000 Shadow damage to a random raid member and up to two nearby members.
|tip Enrage occurs when either Kalecgos or Sathrovarr reach 10% health, both enrage, greatly increasing their damage. Kill them both as fast as possible to avoid death.
_Kalec_
|tip Revitalize is a random buff dealt to nearby raid members, restoring 450 health and mana every 3 seconds for 10 seconds and stacking up to two times.
Click here to see mechanics for the normal realm and Kalecgos |next "dragon" |confirm
Click here when the fight is over |next "kalecgosend" |confirm
step
label "kalecgosend"
map Sunwell Plateau/1
path loop off
path	50.4,51.5	51.9,60.3	59.5,71.1
path	62.4,73.7
Follow the path, clearing trash as you make your way to the next boss, Brutallus. |goto 62.4,73.7 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Brutallus##24882 |goto 65,84
|tip Meteor Slash deals 20,000 Fire damage split between enemy targets in a cone in front of Brutallus. Also increases Fire damage taken by 75%. Stacks up to 100 and lasts 40 seconds.
|tip Burn is a 60 second debuff and spreads to nearby raid members. The debuff deals Fire damage every second and slowly increases.
|tip Stomp_is an AoE that deals 20,000 damage and reduces armor of those hit by 50% for 10 seconds. Removes Burn if target has it.
|tip Berserk occurs after 6 minutes of combat. It increases his damage by 500% and attack speed by 150%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
|confirm
step
kill Felmyst##25038 |goto 67.0,90.0
|tip Cleave make sure that the main tank is the only one that is in front of the boss when this occurs.
|tip Corrosion deals 10,000 Nature damage and increases physical damage taken by 100% on the tank. Lasts 10 seconds.
|tip Gas Nova is an AoE spell that deals 2000 Nature damage and drains 3000 health and 1000 mana every 2 seconds for 30 seconds.
|tip Noxious Fumes deals 1000 Nature damage every 3 seconds to all raid members within 100 yards of Felmyst. Not resistable.
|tip Encapsulate lifts a random raid member into the air and does 5 ticks, dealing 3500 Arcane damage to them and everyone within 20 yards.
|tip Demonic Vapor is a breath ability used when Felmyst is in the air. It deals 4000 Nature damage and summons skeleton adds. Stepping in the trail left by this also deals 2000 Nature damage per second for 10 seconds and summons additional skeleton adds.
|tip Fog Corruption is an AoE spell that mind controls raid members inside of it fr the duration of the battle. Players affected by this should be killed off.
|tip Berserk occurs after 10 minutes of combat. It increases her damage by 500% and attack speed by 150%. This is designed to wipe the raid. Kill her before she reaches this stage to avoid death.
|confirm
step
map Sunwell Plateau/1
path loop off
path	76.8,69.8	69.4,74.6	76.6,57.9
path	67.5,68.2	73.5,54.8	74.9,50.2
path	78.1,38.0	68.6,35.0
Follow the path, clearing trash as you make your way to the next boss, the Eredar Twins. |goto 68.6,35.0 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Eredar Twins |goto 64,32
kill Lady Sacrolash##25165
|tip Confounding Blow confounds the target for 6 seconds, dealing 7500-10,000 Shadow damage. Temporarily drops target's aggro.
|tip Dark Touched is a stacking debuff that reduces healing effects by 5%, stacking up to 20 times. Lasts 3 minutes and can only be removed by being hit with Fire damage from either boss.
|tip Shadow Blades deals 2500-3500 physical damage and also applies _Dark Strike_, which deals 450 Shadow damage every 2 seconds and slows the target by 10% for 10 seconds, stacking up to 5 times.
|tip Shadow Nova deals 3500 Shadow damage to every raid member in a 10 yard radius of Sacrolash's target.
|tip Shadow Image Lady Sacrolash spawns multiple Shadow Image adds which die after a short amount of time. These adds cannot be targeted and can deal melee or AoE damage.
|tip Berserk occurs after 6 minutes of combat. It increases her damage by 500% and attack speed by 150%. This is designed to wipe the raid. Kill her before she reaches this stage to avoid death.
kill Grand Warlock Alythess##25166
|tip Pyrogenics is a buff that increases Alythess' Fire damage by 35%.
|tip Flame Touched is a stackable debuff that deals 300 Fire damage every 2 seconds. Stacks up to 20 times and can only be removed by being hit with Shadow damage.
|tip Conflagration is a debuff that deals 1600 Fire damage to everyone within 8 yards of Alythess' target. It also confounds the target and deals 1600 Fire damage every second in the targeted area.
|tip Blaze deals 5500-7500 Fire damage and leaves an AoE on the ground which burns for 2500 Fire damage.
|tip Flame Sear is a debuff that affects 3-5 random raid members and deals 650 Fire damage every half-second for 6 seconds.
|tip Berserk occurs after 6 minutes of combat. It increases her damage by 500% and attack speed by 150%. This is designed to wipe the raid. Kill her before she reaches this stage to avoid death.
|confirm
step
map Sunwell Plateau/1
path loop off
path	58.3,29.5	66.9,22.6	71.6,27.2
path	79.9,20.8	72.8,16.8	67.3,26.7
Follow the path, clearing trash as you make your way to the next boss, M'uru. |goto 67.3,26.7 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill M'uru##25741 |goto Sunwell Plateau/2 46,24
|tip Negative Energy hits 4-5 random raid members, dealing 1000 Shadow damage. This lasts the entire fight.
|tip Darkness creates a large AoE Void Zone that deals 3000 Shadow damage every second to all raid members inside it, and they cannot be healed. This also spawns 8 Dark Fiend adds.
|tip Summons Shadowsword Berserker These deal high melee damage and have a buff that increases their attack speed and movement by 100%.
|tip Summons Shadowsword Fury Mage These cast Fel Fireball, which deal 5000 Fire damage. They can also melee for 3000-4000 damage. They have a buff, Spell Fury, which causes spells to cast instantly, increases magic damage by 50% and makes them unable to move.
|tip Summons Void Sentinel Spawns a Voidwalker that hits for 9000-10,000 with melee attacks. Also has Shadow Pulse, an AoE that deals 4000 Shadow damage every 3 seconds. And Void Blast, which deals 10,000-11,000 damage as well as a debuff slowing attack speed by 35%.
|tip Enrage occurs after 10 minutes of combat. It increases his damage by 500%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
kill Entropius##25840
|tip Negative Energy deals 2000 Shadow damage to Entropius' target, jumping to a nearby target and hitting for half the previous damage. The number of maximum targets this can hit increases every 12-15 seconds.
|tip Darkness spawns a Void Zone under a raid member, dealing 3000 Shadow damage every second. This also spawns a Dark Fiend that must be Dispelled or Purged.
|tip Singularity spawns over a raid member, after a few seconds it will move around and toss any nearby raid members into the air, interrupting them and dealing 500 damage.
|tip Enrage occurs after 10 minutes of combat. It increases his damage by 500%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
|confirm
step
map Sunwell Plateau/2
path loop off
path	32.4,41.5	27.9,60.9	36.7,83.6
path	48.2,87.0	60.3,66.5
Follow the path, clearing trash as you make your way to the last boss, Kil'jaeden. |goto 60.3,66.5 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Kil'jaeden_ |goto 46,61
|tip This fight consists of 5 phases.
_Phase 1_
|tip Kill the 3 Hands of the Deceiver adds that are around the Sunwell.
|tip Shadow Bolt Volley deals 1000 Shadow damage to all raid members within 30 yards and applies a stackable debuff that increases Shadow damage taken by 750.
|tip Soul Portal opens a portal that spawns Volatile Felfire Fiend. They run toward nearby raid members and explode, dealing massive damage. They have very low hit points and should be killed immediately.
|tip Shadow Infusion occurs when the Hand has 20% health. The Hand will get a buff that makes him immune to stun and silence effects.
_Phase 2_
|tip starts after all Hands of the Deceiver are killed.
Click here to move to Phase 2 |confirm
step
_Kil'jaeden_ |goto 46,61
_Phase 2_
|tip Kil'jaeden spawns, knocking back all raid members within the glowing circle in the middle of the room.
|tip Soul Flay deals 3000 Shadow damage per second and reduces the target's movement speed.
|tip Legion Lightning is an AoE spell that deals 3000-3500 Shadow damage to the target, then jumping to a nearby raid member and dealing less damage after each jump. It also drains 1500 mana from each player it affects.
|tip Fire Bloom places a debuff on up to 5 random raid members, dealing 1700 Fire damage every 2 seconds to the target and all other raid members within 10 yards. Lasts 20 seconds.
|tip Summon Shield Orb spawns a Shield Orb that attacks the raid with Shadow Bolts. These have low hit points and should be killed quickly after spawning.
_Phase 3_
|tip This phase starts at 85% health.
Click here to move to Phase 3 |confirm
step
_Kil'jaeden_ |goto 46,61
_Phase 3_
|tip 30-40 seconds into this phase, Kalecgos will empower 1 of the 4 Orbs of the Blue Dragonflight around the room. Clicking these will turn you into a dragon and give you special abilities for 2 minutes. These abilities help counter some of Kil'jaeden's abilities.
|tip Sinister Reflection spawns 4 Sinister Reflections, mimicking the target player's class and image. Melee attacks from these Reflections deal large amounts of damage.
|tip Shadow Spike bombards randomly targeted raid members with spikes that explode when they reach their target, dealing 5000-6200 Shadow damage to all nearby raid members. Also applies a debuff that reduces healing effects by 50% for 10 seconds.
|tip Flame Dart Explosion deals 1800 Fire damage every 3 seconds, unless the player is affected by Breath:Haste from the Orbs of the Blue Dragonflight.
|tip Darkness of a Thousand Souls Kil'jaeden covers himself with wings. After 8 seconds he hits all raid members for 47,000-52,000 Shadow damage. This is countered by the Shield of the Blue ability from Orbs of the Blue Dragonflight.
_Phase 4_
|tip This phase starts at 55% health.
Click here to move to Phase 4 |confirm
step
_Kil'jaeden_ |goto 46,61
_Phase 4_
|tip Armageddon is an AoE meteor spell that deals 10,000 damage to any player inside it. There will be 3 of these will be in effect for this entire phase.
_Phase 5_
|tip This phase starts at 25% health.
Click here to move to Phase 5 |confirm
step
_Kil'jaeden_ |goto 46,61
|tip This is the final phase of this fight.
_Phase 5_
|tip Sacrifice of Aveena is a debuff that is applied to Kil'jaeden for this phase. It increases Holy damage he takes by 25%.
|tip This phase is a dps race - kill him as quickly as possible to avoid death.
|confirm
step
Congratulations, you have finished the Sunwell Plateau raid guide!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Northrend Dungeons\\Ahn'kahet: The Old Kingdom",{
mapid=132,
achieveid={481},
patch='30008',
condition_suggested=function() return level>=15 and level<=30 end,
keywords={"OK, Dragonblight"},
description="\nThis guide will walk you through the Ahn'kahet: The Old Kingdom dungeon.",
},[[
step
label "lfg"
Press _I_ and queue for Ahn'kahet: The Old Kingdom or enter the dungeon with your group |goto Ahn'kahet: The Old Kingdom/1 90.0,79.1 |c
step
talk Seer Ixit##55658
accept Pupil No More##29825 |goto Ahn'kahet: The Old Kingdom/1 87.2,72.6
only if not completedq(29825)
step
map Ahn'kahet: The Old Kingdom/1
path follow smart; loop off; ants curved; dist 15
path	86.6,71.3	83.9,64.6	80.1,54.7
path	79.6,46.6	81.3,39.5	80.2,31.8
path	74.4,30.6
Follow the path |goto Ahn'kahet: The Old Kingdom/1 74.4,30.6 < 6
|tip Kill Ahn'kahar Spell Flingers first. Be sure to interrupt their Shadow Blast.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Elder Nadox##29309
|tip Brood Plague is a disease that deals nature damage over 30 seconds. Dispel.
|tip Brood Rage enrages nearby swarmers, increasing their health and damage.
|tip Destroy Ahn'kahar Guardians to drop Nadox's immunity.
|tip AoE Ahn'kahar Swarmers quickly to minimize the numbers affected by Brood Rage.
Defeat Elder Nadox |scenariogoal 27901 |goto 70.4,28.6
step
Click the quest complete box in the top right corner
turnin Pupil No More##29825
accept Reclaiming Ahn'Kahet##29826
only if not completedq(29826)
step
map Ahn'kahet: The Old Kingdom/1
path follow smart; loop off; ants curved; dist 15
path	70.6,29.9	67.1,33.0	64.9,25.8
path	61.5,28.1	61.7,34.4	57.2,34.0
path	56.8,27.5
click Ancient Nerubian Device##8393
|tip You must activate these devices at each platform.
Follow the path |goto Ahn'kahet: The Old Kingdom/1 56.8,27.5 < 6
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Ahn'kahet: The Old Kingdom/1
path follow smart; loop off; ants curved; dist 15
path	56.8,27.5	57.2,34.0	54.5,35.0
path	50.1,29.9
click Ancient Nerubian Device##8393
|tip You must activate these devices at each platform.
Follow the path |goto Ahn'kahet: The Old Kingdom/1 50.1,29.9 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Ahn'kahet: The Old Kingdom/1
path follow smart; loop off; ants curved; dist 15
path	51.1,31.1	54.8,35.4	56.1,46.4
path	58.9,49.1
Follow the path |goto Ahn'kahet: The Old Kingdom/1 58.9,49.1 < 7
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
label "Reclaiming"
kill 3 Eye of Taldaram##30285 |q 29826/1
kill 1 Bonegrinder##30284 |q 29826/2
only if haveq(29826)
step
kill Prince Taldaram##29308
|tip Conjure Flame Sphere floats towards a player. Try not to come in contact with it.
|tip He will disappear and reappear behind a random player, inflicting Embrace of the Vampyr.
|tip Embrace of the Vampyr stuns the player and deals shadow damage. Deal 20,000 damage to Taldaram to break it. |only if not heroic_dung()
|tip Embrace of the Vampyr stuns the player and deals shadow damage. Deal 40,000 damage to Taldaram to break it. |only if heroic_dung()
Defeat Prince Taldaram |scenariogoal 27902 |goto 63.0,49.4
step
Click the Quest Complete box on the top right:
turnin Reclaiming Ahn'Kahet##29826
accept The Faceless Ones##13187
only if not completedq(13187)
step
map Ahn'kahet: The Old Kingdom/1
path follow smart; loop off; ants curved; dist 15
path	64.9,46.1	66.8,46.9	64.3,51.5
path	60.4,51.9	58.3,56.1
Follow the path |goto Ahn'kahet: The Old Kingdom/1 58.3,56.1 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Ahn'kahet: The Old Kingdom/1
path follow smart; loop off; ants curved; dist 15
path	57.8,57.3	58.9,62.4	65.4,58.6
path	66.7,63.1	65.7,68.1
Follow the path |goto Ahn'kahet: The Old Kingdom/1 65.7,68.1 < 6
|tip Opening the world map will display an ant trail guiding you through the current floor.
To skip the optional heroic boss Amanitar, click here |confirm |next "Jedoga"
confirm
only if heroic_dung()
step
kill Amanitar##30258 |goto Ahn'kahet: The Old Kingdom/1 66.3,78.3
|tip Pull the Cave Beasts before Amanitar.
|tip Mini shrinks all players, reducing damage by 75%. Kill a healthy mushroom while standing near it to cancel.
|tip Entangling Roots deals nature damage and immobilizes over 10 seconds.
|tip Healthy Mushroom, Upon death, cancels the effects of Mini and increases damage by 100%.
|tip Poisonous Mushroom, Upon death, deals nature damage every 2 seconds.
confirm
only if heroic_dung()
step
map Ahn'kahet: The Old Kingdom/1
path follow smart; loop off; ants curved; dist 15
path	65.7,68.1	66.7,63.1	65.4,58.6
path	58.9,62.4	57.8,57.3
Follow the path |goto Ahn'kahet: The Old Kingdom/1 57.7,60.0 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if heroic_dung()
step
label "Jedoga"
map Ahn'kahet: The Old Kingdom/1
path follow smart; loop off; ants curved; dist 15
path	56.9,59.1	51.5,58.0	49.1,64.0
Follow the path |goto Ahn'kahet: The Old Kingdom/1 49.1,64.0 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
To skip the optional boss Jedoga Shadowseeker, click here |confirm |next "Herald"
confirm
step
kill Jedoga Shadowseeker##29310
|tip Cyclone Strike deals damage and knocks back anyone close to Jedoga. Move away.
|tip Thundershock creates a cloud of lightning. Move out or suffer heavy damage.
|tip At 50% health, Jedoga calls a Twilight Volunteer. Don't let it reach her or she will gain 200% damage for 20 seconds.
Defeat Jedoga Shadowseeker |scenariogoal 27903 |goto 49.3,72.3
step
map Ahn'kahet: The Old Kingdom/1
path follow smart; loop off; ants curved; dist 15
path	47.9,68.1	50.1,61.2	52.3,51.6
Follow the path |goto Ahn'kahet: The Old Kingdom/1 52.3,51.6 < 15
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
label "Herald"
map Ahn'kahet: The Old Kingdom/1
path follow smart; loop off; ants curved; dist 15
path	56.5,58.8	52.6,52.1	49.5,48.6
path	41.1,49.4	37.6,49.8
Follow the path |goto Ahn'kahet: The Old Kingdom/1 37.6,49.8 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill 3 Forgotten One##30414+ |q 13187/1 |goto 32.4,50.1
|tip Avoid Shadow Crash, an AoE attack that targets the ground.
only if haveq(13187)
step
kill Herald Volazj##29311
|tip Shadow Bolt Volley deals shadow damage to all players.
|tip Shiver is a curse that deals shadow damage whenever a player is hit and then jumps to another player within 20 yards. Stay spread out and decurse.
|tip When Insanity is active kill the twisted visions of your allies to be released. No effect solo.
Defeat Herald Volazj |scenariogoal 1/27905 |goto Ahn'kahet: The Old Kingdom/1 22.8,50.7
step
talk Seer Ixit##55658
turnin The Faceless Ones##13187 |goto 26.9,50.4
only if haveq(13187)
step
Congratulations! You have completed Ahn'kahet: The Old Kingdom
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Northrend Dungeons\\Azjol-Nerub",{
mapid=157,
achieveid={480},
patch='50004',
condition_suggested=function() return level>=15 and level<=30 end,
keywords={"AN, Dragonblight"},
description="\nThis guide will walk you through the Azjol-Nerub dungeon.",
},[[
step
label "lfg"
Press _I_ and queue for Azjol-Nerub or enter the dungeon with your group |goto Azjol-Nerub/3 9.4,93.3 |c
step
talk Reclaimer A'zak##55564
accept Death to the Traitor King##29807 |goto Azjol-Nerub/3 15.2,83.8
accept Don't Forget the Eggs!##29808 |goto Azjol-Nerub/3 15.2,83.8
accept The Gatewatcher's Talisman##29811 |goto Azjol-Nerub/3 15.2,83.8
only if not completedq(29807) or not completedq(29808) or not completedq(29811)
stickystart "Eggs"
step
map Azjol-Nerub/3
path follow smart; loop off; ants curved; dist 12
path	14.7,84.2	19.7,63.9	25.2,36.6
path	34.4,40.0
Follow the path |goto Azjol-Nerub/3 34.4,40.0 < 8
|tip Kill Anub'ar Skirmishers first!
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Krik'thir the Gatewatcher##28684
|tip A watcher will attack a soon as the first one pulled dies. Krik'thir will engage when all watchers are dead.
|tip Mind Flay reduces movement speed and deals shadow damage over 3 seconds.
|tip Curse of Fatigue slows and deals damage to everyone within 5 yards of Krik'thir. Dispel this.
|tip Summons a swarm of insects to attack random players. AoE these down.
Defeat Krik'thir the Gatewatcher |scenariogoal 27898 |goto 46.3,45.2
step
label "Eggs"
click Nerubian Scourge Egg##193051
Destroy 6 Nerubian Scourge Eggs. |q 29808/1 |goto 34.6,48.7
|tip All around this room.
only if haveq(29808)
step
map Azjol-Nerub/3
path follow smart; loop off; ants curved; dist 12
path	48.8,44.7	64.3,44.7	85.2,44.9
Follow the path |goto Azjol-Nerub/3 85.2,44.9 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Hadronox##28921
|tip Killing the mobs in the room will cause Hadronox to come up and engage.
|tip Leech Poison drains health from anyone within 25 yards. Players killed while poisoned heal him for 10% health.
|tip Acid Cloud deals nature damage. Don't stand in it.
|tip Web Grab deals physical damage and pulls players close. Run back out.
Defeat Hadronox |scenariogoal 27899 |goto 87.4,53.5
step
map Azjol-Nerub/3
path follow smart; loop off; ants curved; dist 12
path	73.7,37.5	Azjol-Nerub/2 39.1,27.9
path	Azjol-Nerub/2 52.7,10.9	Azjol-Nerub/2 62.1,23.1
path	Azjol-Nerub/2 60.0,47.4	Azjol-Nerub/2 48.1,66.9
Follow the path |goto Azjol-Nerub/2 48.1,66.9 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Azjol-Nerub/1
path follow smart; loop off; ants curved; dist 12
path	22.4,51.7	27.4,51.6	37.0,48.9
path	44.8,48.9	58.9,48.4
Jump down the hole and follow the path |goto Azjol-Nerub/1 58.9,48.4 < 6
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Anub'arak##29120
|tip Be sure your party is inside the platform or they will be locked out.
|tip Impale fires a spike through the ground. Move away from this.
|tip Pound deals massive damage and stuns anyone in front. Even the tank should move behind Anub'arak during this.
|tip Every 25% health, Anub'arak will Submerge, summoning adds and spikes. Move away from ground spikes and kill the adds that spawn at the gate.
Loot Anub'arak's Broken Husk |q 29807/1 |only if haveq(29807)
Defeat Anub'arak |scenariogoal 1/27900 |goto Azjol-Nerub/1 87.4,53.5
step
talk Reclaimer A'zak##55564
turnin Death to the Traitor King##29807 |goto 62.2,48.5
turnin Don't Forget the Eggs!##29808 |goto 62.2,48.5
turnin The Gatewatcher's Talisman##29811 |goto 62.2,48.5
only if haveq(29807) or haveq(29808) or haveq(29811)
step
Congratulations! You have completed Azjol-Nerub
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Northrend Dungeons\\Caverns of Time: The Culling of Stratholme",{
mapid=130,
achieveid={479},
patch='30001',
condition_suggested=function() return level>=25 and level<=30 end,
keywords={"CoT, Tanaris"},
description="\nThis guide will walk you through the Caverns of Time: The Culling of Stratholme dungeon.",
},[[
step
label "start"
Press _I_ and queue for The Culling of Stratholme or enter the dungeon with your group |goto The Culling of Stratholme/1 87.5,71.2 |c
step
map The Culling of Stratholme/1
path follow smart; loop off; ants curved; dist 15
path	87.5,71.2	89.8,68.0	89.4,64.9
path	86.4,61.5
talk Chromie##26527
accept Dispelling Illusions##13149 |goto The Culling of Stratholme/1 86.4,61.5 |noway |only if not completedq(13149)
Tell her: "_Chromie, you and I both know what's going to happen in this time stream._" |only if completedq(13151) |goto The Culling of Stratholme/2 50.5,76.0
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm |next "Dungeon" |only if completedq(13151)
step
click Plagued Grain Crate##336
map The Culling of Stratholme/1
path follow smart; loop off; ants curved; dist 15
path	83.9,59.1	81.2,59.7	77.8,54.9
path	73.4,55.0	70.1,51.2
Use your Arcane Disruptor on the 5 Suspicious Grain Crates at the waypoints. |use Arcane Disruptor##37888
|tip Opening the world map will display an ant trail guiding you through the current floor.
Plague Grain Crates Dispelled |q 13149/1 |only if haveq(13149)
Click here when you have all 5 Dispelled |confirm |only if not haveq(13149)
step
map The Culling of Stratholme/1
path follow smart; loop off; ants curved; dist 15
path	69.4,51.7	65.1,49.2	61.4,51.0
path	54.8,50.6	49.2,44.4	47.6,39.8
talk Chromie##27915
turnin Dispelling Illusions##13149
|tip Opening the world map will display an ant trail guiding you through the current floor.
only if haveq(13149)
step
talk Chromie##27915
accept A Royal Escort##13151 |goto 47.6,39.8 |only if not haveq(13151)
only if not completedq(13151)
step
talk Chromie##27915 |goto 47.6,39.8
Ask her: "_What do you think they're up to?_"
confirm
step
map The Culling of Stratholme/1
path follow smart; loop off; ants curved; dist 15
path	47.9,39.8	47.4,31.6	The Culling of Stratholme/2 50.6,87.7
path	The Culling of Stratholme/2 53.9,83.0	The Culling of Stratholme/2 50.5,79.2
Follow the path |goto The Culling of Stratholme/2 50.5,79.2 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Arthas##26499 |goto The Culling of Stratholme/2 50.5,79.2
Tell him: "_Yes, my Prince. We are ready._"
|tip You may have to wait for the dialogue to end before he appears here.
confirm
step
label "Dungeon"
map The Culling of Stratholme/1
path follow smart; loop off; ants curved; dist 15
path	45.1,64.9	46.6,58.5	53.1,62.4
path	61.5,52.9	59.7,39.0
Move between these waypoints in order to find the mobs that spawn
|tip A white flag on the minimap shows the current spawn location.
|tip Opening the world map will display an ant trail guiding you through the current floor.
Click here when _Meathook_ spawns on Scourge Wave 5 |confirm
step
kill Meathook##26529
|tip Constricting Chains stuns a player and deals damage over 5 seconds.
|tip Disease Explusion deals nature damage and interrupts spellcasting in a 10 yard range.
|tip Meathook increases his damage by 10% for 30 seconds. Stacks up to 10 times. |only if heroic_dung()
Defeat Meathook |scenariogoal 27930 |goto 52.9,62.4
step
map The Culling of Stratholme/1
path follow smart; loop off; ants curved; dist 15
path	45.1,64.9	46.6,58.5	53.1,62.4
path	61.5,52.9	59.7,39.0
Move between these waypoints in order to find the mobs that spawn
|tip A white flag on the minimap shows the current spawn location.
|tip Opening the world map will display an ant trail guiding you through the current floor.
Click here when _Salramm the Fleshcrafter_ spawns on Scourge Wave 10 |confirm
step
kill Salramm the Fleshcrafter##26530
|tip Steal Flesh reduces a random player's damage by 75% while increasing Salramm's damage by 75%.
|tip Summon Ghouls, Summons 2 ghoul minions. Kill these quickly before they explode.
|tip Explode Ghoul detonates a nearby ghoul, dealing fire damage in a 10 yard radius.
|tip Curse of Twisted Flesh reduces a player's health by 25% and deals shadow damage over 30 seconds. Dispel quickly. |only if heroic_dung()
Defeat Salramm the Fleshcrafter |scenariogoal 27931 |goto 52.9,62.4
step
talk Arthas##26499 |goto 58.8,36.7
Tell him: "_We're only doing what is best for Lordaeron, your Highness._"
confirm
step
map The Culling of Stratholme/2
path follow smart; loop off; ants curved; dist 15
path	58.1,32.7	59.0,27.0	61.7,31.4
path	65.8,28.4
Fight the mobs that spawn at these points
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Chrono-Lord Epoch##26532
|tip Time Warp reduces melee, casting, and movement speed by 70% for 6 seconds.
|tip Time Step randomly charges a player, dealing damage.
|tip Wounding Strike deals damage and reduces healing by 25%. Leaves a bleed over 4 seconds.
|tip Curse of Exertion increases ability resource cost by 100%. Dispel.
|tip Time Stop stuns all players for 2 seconds. |only if heroic_dung()
Defeat Chrono-Lord Epoch |scenariogoal 27932 |goto 66.1,26.0
step
talk Arthas##26499 |goto 65.5,28.8
Tell him: "_I'm Ready._"
confirm
step
Follow Arthas down the steps |goto The Culling of Stratholme/2 64.9,14.2
confirm
step
talk Arthas##26499 |goto 64.9,14.2
Tell him: "_For Lordaeron!_"
confirm
step
map The Culling of Stratholme/2
path follow smart; loop off; ants curved; dist 15
path	64.9,14.2	62.2,9.9	56.6,11.4
path	50.9,15.4	45.4,18.3	38.3,24.8
path	40.1,37.2
Follow Arthas |goto The Culling of Stratholme/2 40.1,37.2 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Infinite Corruptor##32273
|tip Corrupting Blight deals 8% of the target's max health as damage every 3 seconds for 2 minutes. Stacks up to 5 times.
|tip Void Strike deals damage, bypassing armor.
Defeat Infinite Corruptor |scenariogoal 24857 |goto The Culling of Stratholme/2 51.9,41.4
Click here if you didn't make the timer |confirm
only if heroic_dung()
step
talk Arthas##26499 |goto 40.1,37.2
Tell him: "_I'm ready to battle the dreadlord, sire._"
confirm
step
kill Mal'Ganis##26533
|tip Sleep puts a player to sleep for 10 seconds. Dispel this.
|tip Mind Blast deals shadow damage to a random player.
|tip Vampiric Touch heals Mal'Ganis for 50% of his damage dealt.
|tip Carrion Swarm is a frontal cone attack that deals shadow damage and leaves a 15 second DoT. Don't stand in front of him.
Defeat Mal'Ganis |scenariogoal 27933 |goto 33.5,44.9
step
talk Chromie##30997
|tip You may have to wait a few moments for him to appear.
turnin A Royal Escort##13151 |goto 32.0,44.7
only if haveq(13151)
step
Congratulations! You have completed The Culling of Stratholme
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Northrend Dungeons\\Drak'Tharon Keep",{
mapid=160,
achieveid={482},
patch='30009',
condition_suggested=function() return level>=15 and level<=30 end,
keywords={"DTK, DK, Zul'Drak"},
description="\nThis guide will walk you through the Drak'Tharon Keep dungeon.",
},[[
step
label "lfg"
Press _I_ and queue for Drak'Tharon Keep or enter the dungeon with your group |goto Drak'Tharon Keep/1 29.4,81.0 |c
step
talk Kurzel##55677
accept Head Games##13129 |goto Drak'Tharon Keep 35.5,83.2
accept What the Scourge Dred##29828 |goto Drak'Tharon Keep 35.5,83.2
only if not completedq(13129) or not completedq(29828)
step
talk Image of Drakuru##58149
accept Cleansing Drak'Tharon##30120 |goto 37.0,80.9
only if not completedq(30120)
stickystart "Mojo"
step
map Drak'Tharon Keep/1
path follow smart; loop off; ants curved; dist 12
path	36.0,82.3	42.6,87.1	47.4,81.7
path	47.7,67.7	47.5,45.5	52.8,37.0
Follow the path |goto Drak'Tharon Keep/1 52.8,37.0 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Trollgore##26630
|tip Infected Wound increases physical damage taken by 15%. Dispel this disease.
|tip Consume deals shadow damage and increases Trollgore's damage by 2% for each enemy within 50 yards. |only if not heroic_dung()
|tip Consume deals shadow damage and increases Trollgore's damage by 5% for each enemy within 50 yards. |only if heroic_dung()
|tip Corpse Explode detonates a nearby Invader corpse, dealing nature damage.
|tip Drakkari Invader fly in randomly and attack Trollgore and players.
Defeat Trollgore |scenariogoal 27906 |goto Drak'Tharon Keep/1 56.8,19.3
step
map Drak'Tharon Keep/1
path follow smart; loop off; ants curved; dist 12
path	56.9,18.9	66.3,18.8	66.2,26.1
path	65.8,36.1
Follow the path |goto Drak'Tharon Keep/1 65.8,36.1 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Novos the Summoner##26631
|tip Kill the adds coming down the stairs.
|tip Kill 4 of these Crystal Handlers to release Novos.
|tip Move out of Blizzard or suffer frost damage.
|tip Wrath of Misery is a curse that deals periodic shadow damage. Dispel if possible.
|tip Summons skeletons to attack the party.
Defeat Novos the Summoner |scenariogoal 27907 |goto Drak'Tharon Keep 73.3,47.6
step
Use Kurzel's Blouse Scrap on Novos the Summoner's corpse |use Kurzel's Blouse Scrap##43214 |only if haveq(13129)
Collect the Ichor-Stained Cloth |q 13129/1 |goto Drak'Tharon Keep/1 69.5,47.5
only if haveq(13129)
step
map Drak'Tharon Keep/1
path follow smart; loop off; ants curved; dist 12
path	69.5,47.6	67.1,56.5	62.3,58.1
path	56.0,55.6	55.6,77.8	64.0,76.9
Follow the path |goto Drak'Tharon Keep/1 64.0,76.9 < 6
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill King Dred##27483
|tip Clear the raptors before pulling Dred.
|tip Grievous Bite deals physical damage every 2 seconds until the player is fully healed.
|tip Mangling Slash increases bleed damage by 75%.
|tip Bellowing Roar fears all players within 35 yards for 4 seconds.
|tip Piercing Slash reduces armor by 75% for 10 seconds. Use a cooldown for this.
|tip If raptors are alive, Dred summons them.
Loot King Dred's Tooth |q 29828/1 |only if haveq(29828)
Defeat King Dred |scenariogoal 27908 |goto Drak'Tharon Keep 67.8,80.2
step
map Drak'Tharon Keep/1
path follow smart; loop off; ants curved; dist 12
path	63.7,85.6	67.9,79.4	64.5,71.7
path	Drak'Tharon Keep/2 39.4,71.8	Drak'Tharon Keep/2 36.6,63.3
path	Drak'Tharon Keep/2 37.7,28.6	Drak'Tharon Keep/2 47.2,28.5
path	Drak'Tharon Keep/2 56.7,21.8	Drak'Tharon Keep/2 55.4,13.3
Follow the path |goto Drak'Tharon Keep/2 55.4,13.3 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
label "Mojo"
kill Drakkari Commander##27431+, Drakkari Guardian##26620+, Drakkari Shaman##26639+
collect 5 Enduring Mojo##38303 |q 30120 |goto Drak'Tharon Keep/2 37.1,67.2
only if haveq(30120)
step
kill The Prophet Tharon'ja##26632
_Phase 1_:
|tip Rain of Fire deals fire damage in the targeted area.
|tip Curse of Life deals shadow damage for 9 seconds or until the target reaches 50% health.
_Phase 2_:
|tip Use Touch of Life and Slaying Strike on cooldown. Taunt immediately after using Bone Armor.
|tip Poison Cloud deals nature damage every second. Move out of this.
Defeat The Prophet Tharon'ja |scenariogoal 1/27909 |goto 51.3,13.2
step
Use Drakuru's Elixer at the giant brazier here |use Drakuru's Elixir##35797 |goto 37.9,13.2
talk Drakuru##28016 |tip Follow him back to the Prophet and wait for the dialogue to end.
turnin Cleansing Drak'Tharon##30120
only if haveq(30120)
step
You can Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance
map Drak'Tharon Keep/2
path follow strict; loop off; ants curved; dist 12
path	46.1,13.4	38.3,13.2	38.2,20.1
Follow the path back to the quest giver |goto Drak'Tharon Keep/2 38.2,20.1 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if haveq(13129) or haveq(29828)
step
map Drak'Tharon Keep/2
path follow strict; loop off; ants curved; dist 12
path	39.0,14.1	41.1,14.0	Drak'Tharon Keep/1 49.1,13.9
Follow the path back to the quest giver |goto Drak'Tharon Keep/1 49.1,13.9 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if haveq(13129) or haveq(29828)
step
map Drak'Tharon Keep/1
path follow strict; loop off; ants curved; dist 12
path	Drak'Tharon Keep/1 44.0,13.3	Drak'Tharon Keep/1 43.9,30.0
path	Drak'Tharon Keep/1 42.3,36.7	Drak'Tharon Keep/1 47.6,45.5
path	Drak'Tharon Keep/1 47.6,83.0	Drak'Tharon Keep/1 35.9,82.1
Follow the path back to the quest giver |goto Drak'Tharon Keep/1 35.9,82.1 < 15
|tip Opening the world map will display an ant trail guiding you through the current floor.
talk Kurzel##55677
turnin Head Games##13129 |goto Drak'Tharon Keep 35.5,83.2 |noway
turnin What the Scourge Dred##29828 |goto Drak'Tharon Keep 35.5,83.2 |noway
only if haveq(13129) or haveq(29828)
step
Congratulations! You have completed Drak'Tharon Keep
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Northrend Dungeons\\Forge of Souls",{
mapid=183,
achieveid={4516},
patch='unknown',
condition_suggested=function() return level>=25 and level<=30 end,
keywords={"FoS, ICC, Icecrown, Citadel"},
description="\nThis guide will walk you through the Forge of Souls dungeon.",
},[[
step
label "lfg"
Press _I_ and queue for Forge of Souls or enter the dungeon with your group |goto The Forge of Souls/1 66.1,88.9 |c
step
talk Lady Jaina Proudmoore##37597
turnin Inside the Frozen Citadel##24510 |goto The Forge of Souls 64.0,91.2 |only if haveq(24510)
accept Echoes of Tortured Souls##24499 |goto The Forge of Souls 64.0,91.2
only if not completedq(24499)
step
kill Spiteful Apparition##36551
|tip Be wary of these ghostly skulls. They are invisible.
map The Forge of Souls/1
path follow smart; loop off; ants curved; dist 15
path	63.9,90.1	61.7,83.9	67.3,79.3
path	69.3,74.2	70.0,68.0	69.3,63.2
path	66.7,58.4	59.4,60.5	58.5,65.3
path	54.5,67.1	53.8,58.5	50.6,58.5
path	46.7,54.0	43.6,54.0
Follow the path |goto The Forge of Souls/1 43.6,54.0 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Bronjahm##36497
|tip If Corrupt Soul is not dispelled before the debuff expires it stuns the player for 2 seconds.
|tip Corrupted Soul Fragments move towards Bronjahm. If it reaches him, it will heal him for a large amount of health.
|tip At 35% health, the storm begins. All players must be within 10 yards of him or suffer damage and reduced speed.
|tip Random players are feared during Soulstorm.
Defeat Bronjahm |scenariogoal 27935 |goto The Forge of Souls/1 43.3,49.8
step
kill Spiteful Apparition##36551
|tip Be wary of these ghostly skulls. They are invisible.
map The Forge of Souls/1
path follow smart; loop off; ants curved; dist 15
path	43.3,50.0	42.9,45.2	46.7,45.6
path	48.1,40.7	46.3,35.6	44.1,30.3
path	47.0,24.8	49.4,19.6	47.1,16.7
Follow the path |goto The Forge of Souls/1 47.1,16.7 < 6
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Devourer of Souls##36502
|tip Mirrored Soul Damage taken by Devourer of Souls is split between the affected player. Stop attacking to avoid killing them.
|tip Phantom Blast deals massive shadow damage to the targeted player. Interrupt this as often as possible.
|tip Well of Souls jumps on a player and leaves a pool on the ground. Players standing in the pool take heavy damage.
|tip Unleashed Souls cannot be attacked. Run away for the 15 second duration.
|tip Wailing Souls deals damage and knocks back anyone in front of Devourer of Souls.
Defeat Devourer of Souls |scenariogoal 1/27936 |goto The Forge of Souls/1 45.6,14.9
step
talk Lady Jaina Proudmoore##38160
turnin Echoes of Tortured Souls##24499 |goto The Forge of Souls/1 44.0,13.1
accept The Pit of Saron##24683 |goto The Forge of Souls/1 44.0,13.1
only if not completedq(24683)
step
Congratulations! You have completed The Forge of Souls.
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Northrend Dungeons\\Gundrak",{
mapid=153,
achieveid={484},
patch='50004',
condition_suggested=function() return level>=20 and level<=30 end,
keywords={"Zul'Drak"},
description="\nThis guide will walk you through the Gundrak dungeon.",
},[[
step
label "lfg"
Press _I_ and queue for Gundrak or enter the dungeon with your group |goto Gundrak/1 59.0,30.9 |c
step
talk Tol'mar##55738
accept Gal'darah Must Pay##29834 |goto Gundrak,57.3,34.6
accept One of a Kind##29839 |goto Gundrak,57.3,34.6
accept For Posterity##29844 |goto Gundrak,57.3,34.6
only if not completedq(29834) or not completedq(29839) or not completedq(29844)
stickystart "drakhistory"
step
Go down the ramp |goto Gundrak/1 58.7,40.0 |c
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Slad'ran##29304
|tip Powerful Bite deals damage and reduces armor by 20% for 5 seconds.
|tip Poison Nova deals nature damage to everyone within 15 yards and poisons them for 16 seconds.
|tip Slad'ran Viper bites and leaves a poison DoT.
|tip Slad'ran Constrictor encases a player in snakes. If Grip stacks up to 5, the player is stunned. Kill the snakes.
Defeat Slad'ran |scenariogoal 27911 |goto Gundrak/1 54.1,48.7
step
click Altar of Slad'ran##8278 |goto 53.8,48.7
confirm
step
map Gundrak/1
path follow smart; loop off; ants curved; dist 15
path	57.0,48.7	58.8,54.8	58.9,66.4
path	49.6,73.5
Follow the path |goto Gundrak/1 49.6,73.5 < 6
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Drakkari Colossus##29307
kill Drakkari Elemental##29573
_Colossus Phase_:
|tip Mortal Strikes reduces healing received by 50% for 3 seconds.
|tip He Emerges at 50% health, the Drakkari Elemental emerges.
_The Elemental_:
|tip Mojo Volley deals nature damage to 2 random players.
|tip The Elemental charges forward. Players in the path take nature damage over 45 seconds.
|tip At 50% health, the Elemental merges and becomes the Colossus again.
Loot the Drakkari Colossus Fragment |q 29839/1 |only if haveq(29839)
Defeat Drakkari Colossus |scenariogoal 27912 |goto 46.9,66.3
step
click Altar of the Drakkari Colossus##8278 |goto 46.5,62.5
confirm
step
map Gundrak/1
path follow smart; loop off; ants curved; dist 15
path	46.6,65.2	46.2,73.3	41.0,72.5
path	37.7,60.4	34.6,59.4	33.5,54.0
Follow the path |goto Gundrak/1 33.5,54.0 < 6
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Moorabi##29305
_Prophet_:
|tip Ground Tremor deals damage and stuns all players within 60 yards for 2 seconds.
|tip Numbing Shout reduces casting speed by 25% for 5 seconds.
|tip Mojo Frenzy increases casting speed and damage based upon remaining health.
|tip Transforms into the Avatar, increasing damage by 25%. Interrupt as much as possible.
_Avatar_:
|tip Quake deals damage and stuns all players within 60 yards for 2 seconds.
|tip Numbing Roar reduces casting speed by 50% for 5 seconds.
Defeat Moorabi |scenariogoal 27913 |goto 37.4,49.1
step
click Altar of Moorabi##8278 |goto 39.6,49.2
confirm
step
map Gundrak/1
path follow smart; loop off; ants curved; dist 15
path	38.1,49.1	31.7,49.1	27.7,48.0
path	23.3,53.0	25.0,64.5
Follow the path |goto Gundrak/1 25.0,64.5 < 6
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if heroic_dung()
step
kill Eck the Ferocious##29932 |goto Gundrak/1 25.3,70.2
|tip Eck Spit deals nature damage and drains mana in a frontal cone. Stay behind Eck.
|tip Eck Spring leaps on a distant player.
|tip After 90 seconds, Eck gains 150% attack speed and 500% increased damage. Hard enrage timer.
confirm
only if heroic_dung()
step
map Gundrak/1
path follow smart; loop off; ants curved; dist 15
path	25.0,64.5	23.3,53.0	27.7,48.0
path	31.7,49.1	38.1,49.1
Follow the path |goto Gundrak/1 38.1,49.1 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if heroic_dung()
step
map Gundrak/1
path follow smart; loop off; ants curved; dist 15
path	40.0,49.1	46.6,54.0	46.6,47.8
path	46.5,37.4
Follow the path |goto Gundrak/1 46.5,37.4 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Gal'darah##29306
_Prophet_:
|tip Stampede charges a player, dealing damage and knocking them in the air.
|tip Gal'darah does Whirling Slash, dealing damage and leaving a bleed. Run away.
|tip Puncture bleeds a player for 2 minutes.
_Avatar_:
|tip Impaling Charge, charges a player, dealing damage and knocking them back.
|tip Enrage increases attack speed by 100% for 8 seconds. Use a cooldown if tanking.
|tip Stomp deals damage and knocks back all players within 10 yards.
Defeat Gal'darah |scenariogoal 1/27914 |goto Gundrak/1 46.6,25.7
step
label "drakhistory"
There will be Drakkari History Tablets throughout the dungeon. You will need to collect 6 to complete the quest
click Drakkari History Tablet##192826
collect 6 Drakkari History Tablet##43140 |q 29844/1
only if haveq(29844)
step
talk Tol'mar##55738
turnin Gal'darah Must Pay##29834 |goto Gundrak 51.7,20.9
turnin One of a Kind##29839 |goto Gundrak 51.7,20.9
turnin For Posterity##29844 |goto Gundrak 51.7,20.9
only if haveq(29834) or haveq(29839) or haveq(29844)
step
Congratulations! You have completed Gundrak
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Northrend Dungeons\\Halls of Lightning",{
mapid=138,
achieveid={486},
patch='30303',
condition_suggested=function() return level>=20 and level<=30 end,
keywords={"HoL, Storm, Peaks"},
description="\nThis guide will walk you through the Halls of Lightning dungeon.",
},[[
step
label "lfg"
Press _I_ and queue for Halls of Lightning or enter the dungeon with your group |goto Halls of Lightning/1 7.4,53.8 |c
step
talk Stormherald Eljrrin##56027
accept Diametrically Opposed##29860 |goto Halls of Lightning 11.9,53.8
accept Whatever it Takes!##29861 |goto Halls of Lightning 11.9,53.8
accept Clearing the Way##29862 |goto Halls of Lightning 11.9,53.8
only if not completedq(29860) or not completedq(29861) or not completedq(29862)
stickystart "Storm"
step
map Halls of Lightning/1
path follow smart; loop off; ants curved; dist 15
path	11.5,53.8	20.2,53.7	32.6,53.6
path	44.8,39.1
Follow the path |goto Halls of Lightning/1 44.8,39.1 < 15
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill General Bjarngrim##28586
|tip Charge Up empowers any mobs nearby with 30% increased damage. Kill his adds first.
|tip Battle Stance gives 25% haste.
|tip Mortal Strike reduces healing received by 50%.
|tip Pummel interrupts spellcasting for 4 seconds.
|tip Berserker Stance gives 25% damage.
|tip Whirlwind deals damage to anyone within 8 yards. Run away.
|tip Cleave deals frontal damage. Stay behind him.
|tip Defensive Stance gives 25% damage reduction.
|tip Knock Away knocks back anyone within 10 yards.
|tip Spell Reflection reflects the next spell cast at Bjarngrim.
Defeat General Bjarngrim |scenariogoal 27918 |goto Halls of Lightning/1 47.2,42.3
step
map Halls of Lightning/1
path follow smart; loop off; ants curved; dist 15
path	44.8,39.1	54.8,53.6	67.0,53.6
Follow the path |goto Halls of Lightning/1 67.0,53.6 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
label "Storm"
kill 3 Stormforged Tactician##28581+ |q 29862/2 |goto 58.1,53.7
kill 3 Stormforged Mender##28582+ |q 29862/1 |goto 58.1,53.7
only if haveq(29862)
step
map Halls of Lightning/1
path follow smart; loop off; ants curved; dist 15
path	67.0,53.6	78.8,55.8	Halls of Lightning/2 56.0,21.2
kill Slag##28585+
|tip Avoid standing near these when they die, as they will explode.
Follow the path and _go up_ the steps |goto Halls of Lightning/2 56.0,21.2 < 8
|tip Do not attack the slags or stop until you are up the stairs!
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Halls of Lightning/2
path follow smart; loop off; ants curved; dist 15
path	57.2,25.8	52.3,25.9	44.3,25.4
Follow the path |goto Halls of Lightning/2 44.3,25.4 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Volkhan##28587
|tip The best strategy is to ignore the golems and burn down Volkhan.
|tip Heats a Molten Golem, healing it for 20%.
|tip Temper creates 2 Molten Golems.
|tip At 25% health, Shattering Stomp does physical damage and shatters any brittle Molten Golems.
|tip Molten Golem's attack random players. At 1% health, they become inactive, waiting to be shattered.
Defeat Volkhan |scenariogoal 27919 |goto Halls of Lightning/2 41.8,23.1
step
map Halls of Lightning/2
path follow loose;loop off;ants straight
path	47.0,44.1	47.0,52.3	51.4,54.2
path	57.9,54.3
kill Titanium Siegebreaker##28961
Follow the path through the hallway, stopping at each waypoint |goto Halls of Lightning/2 57.9,54.3 < 10
|tip At each of the waypoint, enemies will spawn. Kill the Titanium Siegebreakers first, they use a fear ability.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Ionar##28546
|tip Static Overload zaps the player and nearby allies over 10 seconds. At the end, knocks back. Don't move near allies.
|tip At 50% health, Ionar Disperses and becomes electricity that pursues players. Run away!
|tip Sparks of Ionar deal nature damage to anyone within 5 yards and cause players to take 2% increased damage. Effect stacks.
Defeat Ionar |scenariogoal 27920 |goto 61.1,75.0
step
kill Stormforged Runeshaper##28836
|tip Kill these first, they use a massive damage AoE
map Halls of Lightning/2
path follow smart; loop off; ants curved; dist 15
path	57.6,75.5	48.9,72.0	39.5,68.2
path	29.5,75.8	20.4,82.8	22.6,73.1
path	19.2,64.8
Follow the path |goto Halls of Lightning/2 19.2,64.8 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Loken##28923
|tip Pulsing Shockwave deals more damage the further players stand from Loken. Stay close.
|tip Lightning Nova deals significant nature damage to players close to Liken. Run away.
|tip Arc Lightning functions exactly like chain lightning. Stay spread out around him. |only if heroic_dung()
Loot Loken's Tongue |q 29861/1 |goto Halls of Lightning/2 19.2,56.1 |only if haveq(29861)
Defeat Loken |scenariogoal 1/27921 |goto Halls of Lightning/2 19.2,56.1
step
talk Stormherald Eljrrin##56027
turnin Diametrically Opposed##29860 |goto 19.1,62.8
turnin Whatever it Takes!##29861 |goto 19.1,62.8
turnin Clearing the Way##29862 |goto 19.1,62.8
only if haveq(29860) or haveq(29861) or haveq(29862)
step
Congratulations! You have completed Halls of Lightning
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Northrend Dungeons\\Halls of Reflection",{
mapid=185,
achieveid={4518},
patch='30300',
condition_suggested=function() return level>=25 and level<=30 end,
keywords={"HoR, ICC, Icecrown, Citadel"},
description="\nThis guide will walk you through the Halls of Reflection dungeon.",
},[[
step
label "lfg"
Press _I_ and queue for Halls of Reflection or enter the dungeon with your group |goto Halls of Reflection/1 47.3,80.8 |c
step
talk Lady Jaina Proudmoore##38160 |goto Halls of Reflection/1 45.0,76.3
turnin Frostmourne##24711 |goto Halls of Reflection/1 45.0,76.3 |only if haveq(24711)
Ask her: "_Can you remove the sword?_"
|tip Watch the dialogue that follows.
confirm
only if not completedq(24500)
step
talk Lady Jaina Proudmoore##38160 |goto Halls of Reflection/1 45.0,76.3
|tip When your group is ready, tell her that you think you hear Arthas coming
confirm
only if completedq(24500)
step
_Kill Priority_:
kill Ghostly Priest##38175
|tip Interrupt Dark Mending and Cower in fear as much as possible.
kill Shadowy Mercenary##38177
|tip Dispel Deadly Poison and be wary of Kidney Shot, a 3 second stun.
kill Phantom Mage##38172
|tip Interrupt Flamestrike every time. Copies of the mage will explode upon death, stay at range.
kill Tortured Rifleman##38176
|tip Dispel Cursed Arrow as much as possible. It increases magic damage taken by 50%.
kill Spectral Footman##38173
|tip Casters shouldn't stand near these, they use Shield Bash. This interrupts spellcasting.
|tip Line of sight the trash and wait for them to come to you. Waves of 4-5 enemies will come at a time. |goto Halls of Reflection/1 41.3,61.9
At wave 5, you will face _Falric_. Click here to move onto his strategy. |confirm
step
kill Falric##38112
|tip Quivering Strike deals damage and reduces dodge chance by 20% for 5 seconds. Dispellable.
|tip If Impending Despair is not dispelled within 6 seconds, it stuns the target for 6 seconds.
|tip Defiling Horror fears the party and deals shadow damage every second for 4 seconds.
|tip Hopelessness reduces damage and healing done by the entire party by 20% per cast. |only if not heroic_dung()
|tip Hopelessness reduces damage and healing done by the entire party by 25% per cast. |only if heroic_dung()
Defeat Falric |scenariogoal 27915
step
_Kill Priority_:
kill Ghostly Priest##38175
|tip Interrupt Dark Mending and Cower in fear as much as possible.
kill Shadowy Mercenary##38177
|tip Dispel Deadly Poison and be wary of Kidney Shot, a 3 second stun.
kill Phantom Mage##38172
|tip Interrupt Flamestrike every time. Copies of the mage will explode upon death, stay at range.
kill Tortured Rifleman##38176
|tip Dispel Cursed Arrow as much as possible. It increases magic damage taken by 50%.
kill Spectral Footman##38173
|tip Casters shouldn't stand near these, they use Shield Bash. This interrupts spellcasting.
|tip Line of sight the trash and wait for them to come to you. Waves of 4-5 enemies will come at a time. |goto Halls of Reflection/1 34.4,72.7
At wave 10, you will face _Marwyn_. Click here to move onto his strategy. |confirm
step
kill Marwyn##38113
|tip Obliterate deals heavy damage to Marwyn's current target.
|tip Well of Corruption increases shadow damage taken by 75%, stacking 4 times. Don't stand in this.
|tip Corrupted Flesh reduces the maximum health of all nearby players by 50% for 8 seconds.
|tip Shared Suffering deals damage over 12 seconds to a player, then splits damage to the party. Dispel this quickly.
Defeat Marwyn |scenariogoal 27916
step
Click the Quest Discovered box
accept Wrath of the Lich King##24500
step
kill Frostsworn General##36723
|tip The General will spawn images of your group. They explode upon death, so try to kill them at range.
map Halls of Reflection/1
path follow smart; loop off; ants curved; dist 12
path	36.2,64.9	31.0,57.5	26.3,50.8
path	19.7,41.5	13.5,32.5	12.9,23.3
Follow the path to Jaina, killing the General along the way |goto Halls of Reflection/1 12.9,23.3 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Lady Jaina Proudmoore##36955 |goto 12.9,23.2
Find Lady Jaina Proudmoore |q 24500/1 |goto 12.9,23.2 |only if haveq(24500)
Tell her: "_We're ready! Let's go!_"
confirm always
step
_Kill Priority_:
|tip Focus one target at a time, speed is important. You don't want to get caught by the Lich King.
kill Risen Witch Doctor##36941
|tip Interrupt Shadow Bolt Volley and dispel Curse of Doom.
kill Lumbering Abomination##37069
|tip Face these away from the group. They use Cleave and Vomit Spray. Vomit Spray increases damage taken by 20%.
map Halls of Reflection/1
path follow smart; loop off; ants curved; dist 15
path	14.7,20.0	27.5,27.5	40.5,36.1
path	51.1,44.9	66.6,65.0	77.3,77.6
Follow the path, stopping at each point to kill the mobs the Lich King spawns
|tip Opening the world map will display an ant trail guiding you through the current floor.
Escape from Arthas |scenariogoal 1/27917
step
talk Lady Jaina Proudmoore##38160
turnin Wrath of the Lich King##24500 |goto 75.9,76.4
confirm
only if not completedq(24500)
step
Congratulations! You have completed Halls of Reflection |tip Your loot is in the chest aboard the ship.
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Northrend Dungeons\\Halls of Stone",{
mapid=140,
achieveid={485},
patch='30100',
condition_suggested=function() return level>=20 and level<=30 end,
keywords={"HoS, Storm, Peaks"},
description="\nThis guide will walk you through the Halls of Stone dungeon.",
},[[
step
label "lfg"
Press _I_ and queue for Halls of Stone or enter the dungeon with your group |goto Halls of Stone/1 34.4,36.2 |c
step
talk Kaldir Ironbane##55835
accept The Forlorn Watcher##29848 |goto Halls of Stone 35.8,35.0
accept Corrupt Constructs##29850 |goto Halls of Stone 35.8,35.0
only if not completedq(29848) or not completedq(29850)
stickystart "Giants"
step
map Halls of Stone/1
path follow smart; loop off; ants curved; dist 15
path	35.8,36.4	45.1,36.4	49.9,41.8
path	50.0,53.4	40.7,54.1	32.3,51.2
path	30.0,61.4	34.3,69.7	38.1,67.8
Follow the path |goto Halls of Stone/1 38.1,67.8 < 12
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Krystallus##27977
|tip Ground Slam knocks everyone back and slows speed by 20% every second.
|tip Shatters players turned to stone. Make sure you aren't near a party member after Ground Slam.
|tip Boulder Toss, tosses a boulder at a random player, dealing damage.
|tip Stomp deals damage to anyone within 25 yards.
|tip Ground Spike summons spikes under a random player, dealing heavy damage. Move out. |only if heroic_dung()
Defeat Krystallus |scenariogoal 27922 |goto 39.6,61.8
step
map Halls of Stone/1
path follow smart; loop off; ants curved; dist 15
path	39.2,62.5	41.6,55.0	50.0,53.7
path	50.0,65.9	50.0,77.2
Follow the path |goto Halls of Stone/1 50.0,77.2 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Maiden of Grief##27975
|tip Pillar of Woe deals shadow damage to a player, leaving a DoT for 10 seconds.
|tip Shock of Sorrow deals damage to all players and stuns for 6 seconds. Breaks upon taking damage.
|tip Storm of Grief deals shadow damage to anyone within the area every second. Move out of this.
|tip Parting Sorrow mana burns a player, dealing 1 shadow damage for each point of mana drained. |only if heroic_dung()
Loot the Crystal Tear of Grief |q 29848/1 |only if haveq(29848)
Defeat Maiden of Grief |scenariogoal 27923 |goto 50.0,85.4
step
map Halls of Stone/1
path follow smart; loop off; ants curved; dist 15
path	50.0,85.9	50.0,68.9	50.7,53.4
path	58.9,53.3	67.2,53.5	70.9,48.7
Follow the path |goto Halls of Stone/1 70.9,48.7 < 6
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Brann Bronzebeard##28070
accept Halls of Stone##13207 |goto 70.9,48.6 |noway |only if not completedq(13207)
Tell him: "_Brann, it would be our honor!_"
map Halls of Stone/1
path follow smart; loop off; ants curved; dist 15
path	70.9,48.7	72.5,57.5	76.8,64.0
path	81.9,71.4
Then, follow the path |goto Halls of Stone/1 81.9,71.4 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Tell Brann: "_Let's move Brann..._"
_Searing Gaze_:
|tip Deals fire damage to anyone within 5 yards. Move away.
|tip An orb of shadow moves towards a player. Upon impact, deals shadow damage and increases damage taken by 50% and movement speed by 30% Move away. |only if not heroic_dung()
|tip An orb of shadow moves towards a player. Upon impact, deals shadow damage and increases damage taken by 100% and movement speed by 50% Move away. |only if heroic_dung()
_Adds_:
|tip Keep the adds under control. Interrupt and dispel to minimize outgoing damage.
Defeat Tribunal of Ages |scenariogoal 27924 |goto 81.7,71.1
step
Tell Brann: "_There will be plenty of time..._"
map Halls of Stone/1
path follow smart; loop off; ants curved; dist 15
path	84.2,74.7	76.7,63.5	69.5,53.5
path	60.5,53.3	50.3,53.2	50.1,43.0
path	53.6,36.1	49.9,28.8
Then, follow the path |goto Halls of Stone/1 49.9,28.8 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Brann Bronzebeard##28070 |goto Halls of Stone/1 49.9,28.7
Tell Brann: "_We're with you Brann! Open it!_"
Then, walk inside |goto Halls of Stone/1 49.9,22.8 < 10
confirm
step
label "Giants"
kill 3 Dark Rune Giant##27969 |q 29850/1 |goto 46.0,36.0
only if haveq(29850)
step
kill Sjonnir The Ironshaper##27978
|tip Chain Lightning arcs to up to 3 targets, dealing more damage per jump. Spread out.
|tip Static Charge deals damage to nearby allies. Stay away from other players. Dispel whenever possible.
|tip Lightning Ring deals nature damage to anyone within 10 yards. Increases nature damage taken by 10% for 15 seconds.
|tip At 20% health, Sjonnir Frenzy's gaining 50% increased attack speed and 100% increased damage.
|tip Kill the adds quickly. Some can combine to become more powerful. New types emerge every 25% health.
Defeat Sjonnir The Ironshaper |scenariogoal 1/27925 |goto Halls of Stone/1 49.9,13.0
step
talk Brann Bronzebeard##28070
turnin Halls of Stone##13207 |goto 49.9,11.6
only if haveq(13207)
step
map Halls of Stone/1
path follow smart; loop off; ants curved; dist 15
path	49.9,12.5	49.8,28.6	45.0,36.2
path	35.8,34.9
talk Kaldir Ironbane##55835
turnin The Forlorn Watcher##29848
turnin Corrupt Constructs##29850
|tip Opening the world map will display an ant trail guiding you through the current floor.
only if haveq(29848) or haveq(29850)
step
Congratulations! You have completed Halls of Stone
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Northrend Dungeons\\The Nexus",{
mapid=129,
achieveid={478},
patch='30008',
condition_suggested=function() return level>=10 and level<=30 end,
keywords={"Coldarra, Borean, Tundra"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the The Nexus dungeon.",
},[[
step
label "lfg"
Press _I_ and queue for The Nexus or enter the dungeon with your group |goto The Nexus/1 36.2,88.0 |c
step
talk Image of Warmage Kaitlyn##55537
accept Have They No Shame?##13094 |goto The Nexus 36.2,83.0
only if not completedq(13094)
step
talk Image of Warmage Kaitlyn##55536
accept Quickening##11911 |goto 37.2,81.4
only if not completedq(11911)
step
talk Warmage Kaitlyn##55531
accept Prisoner of War##11973 |goto 36.2,81.4
only if not completedq(11973)
step
talk Image of Warmage Kaitlyn##55535
accept Postponing the Inevitable##11905 |goto 35.1,81.4
only if not completedq(11905)
step
map The Nexus/1
path follow smart; loop off; ants curved; dist 15
path	35.4,80.3	29.0,70.7	22.2,67.0
path	21.9,58.0
Follow the path |goto The Nexus/1 21.9,58.0 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if heroic_dung()
step
kill Commander Kolurg##26798
|tip Whirlwind is a short distance AoE. Casters should stay at range.
|tip Frightening Shout fears all players within 8 yards for 6 seconds.
click Berinand's Research##192788 |only if haveq(13094)
Loot Berinand's Research |q 13094/1 |goto The Nexus 19.0,51.8 |only if haveq(13094)
confirm
only if heroic_dung()
step
map The Nexus/1
path follow smart; loop off; ants curved; dist 15
path	18.9,51.9	21.9,44.0	21.7,35.9
path	27.6,36.1
Follow the path |goto The Nexus/1 27.6,36.1 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if heroic_dung()
step
map The Nexus/1
path follow smart; loop off; ants curved; dist 15
path	35.4,80.3	29.0,70.7	22.2,67.0
path	21.9,58.0
Follow the path |goto The Nexus/1 21.9,58.0 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if not heroic_dung() and haveq(13094)
step
kill Horde Commander##27947
click Berinand's Research##192788 |only if haveq(13094)
collect Berinand's Research##43095 |q 13094/1 |goto The Nexus 19.0,51.8 |only if haveq(13094)
only if haveq(13094) and not heroic_dung()
step
map The Nexus/1
path follow smart; loop off; ants curved; dist 15
path	18.9,51.9	21.9,44.0	21.7,35.9
path	27.6,36.1
Follow the path |goto The Nexus/1 27.6,36.1 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if not heroic_dung() and haveq(13094)
step
map The Nexus/1
path follow smart; loop off; ants curved; dist 15
path	35.4,80.3	29.0,70.7	22.2,67.0
path	21.9,58.0	18.9,51.9	21.9,44.0
path	21.7,35.9	27.6,36.1
Follow the path |goto The Nexus/1 27.6,36.1 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if not heroic_dung() and not haveq(13094)
step
kill Grand Magus Telestra##26731
|tip Spread out to minimize group damage from Firebomb.
|tip Ice Nova stuns for 3 seconds.
|tip Mirror Images occurs at 50% health. Interrupt Time Stop and Critter as much as possible. Don't stand in blizzard. Kill the images quickly.
Defeat Grand Magus Telestra |scenariogoal 27892 |goto 27.6,38.6
step
map The Nexus/1
path follow smart; loop off; ants curved; dist 15
path	27.6,38.6	27.1,31.0	26.9,25.0
path	31.4,22.0	39.4,21.7	43.8,21.9
path	49.1,21.5	52.4,15.4	54.0,19.3
path	56.4,21.8
Follow the path |goto The Nexus/1 56.4,21.8 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Anomalus##26763
|tip Destroy the rift and the Wraiths that come forth. Expect heavy AoE damage.
|tip At 50% health, Anomalus becomes immune with Rift Shield and charges nearby open rifts. This lasts 45 seconds.
|tip Wraiths appear faster from rifts and the range of rift abilities is increased. Lasts 45 seconds.
|tip Arcane Attraction increases a random players arcane damage taken. Dispel quickly! |only if heroic_dung()
Defeat Anomalus |scenariogoal 27893 |goto The Nexus 61.5,21.9
step
Use your Interdimensional Refabricator here |use Interdimensional Refabricator##35479
Stall the Interdimensional Rift |q 11905/1 |goto 65.1,21.8
only if haveq(11905)
stickystart "Splinter"
step
map The Nexus/1
path follow smart; loop off; ants curved; dist 15
path	59.3,22.2	54.1,21.7	50.7,23.4
path	53.9,35.8	54.1,42.9	56.7,52.6
path	64.4,53.0	64.5,60.4	60.3,64.7
Follow the path |goto The Nexus/1 60.3,64.7 < 12
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
label "Splinter"
kill Crystalline Protector##26792
Loot 5 Arcane Splinters |q 11911/1 |goto 60.3,64.8
only if haveq(11911)
step
kill Ormorok the Tree-Shaper##26794
|tip Spell Reflection reflects the next 4 spells casts. Use low damage abilities.
|tip Trample deals physical damage to everyone nearby.
|tip Patches of spikes appear on the ground. Move out or you will take damage and be knocked up in the air.
|tip Frenzy Occurs at 30% health. Save defensive and DPS cooldowns for this.
|tip Summon Crystalline Tangler roots players that it hits. |only if heroic_dung()
Defeat Ormorok the Tree-Shaper |scenariogoal 27894 |goto 56.9,70.3
step
map The Nexus/1
path follow smart; loop off; ants curved; dist 15
path	56.2,72.8	52.4,69.1	52.7,60.8
path	48.6,67.5	41.7,67.5
Follow the path |goto The Nexus/1 41.7,67.5 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
click Telestra's Containment Sphere##188526
|tip Keristrasza will engage after activating the spheres.
kill Keristrasza##26723
|tip Intense Cold stacks every second, slowing casting speed. Keep moving to avoid the stacks.
|tip Avoid standing in front of behind Keristrasza.
|tip Enrage occurs at 25% health, use DPS and defensive cooldowns for this.
|tip Crystal Chains roots a player for 10 seconds. Dispel quickly. |only if not heroic_dung()
|tip Crystallize deals frost damage and roots all players. Dispel quickly. |only if heroic_dung()
Defeat Keristrasza |scenariogoal 1/27895 |goto 38.3,67.2
step
talk Image of Warmage Kaitlyn##55537
turnin Have They No Shame?##13094 |goto The Nexus 36.2,83.0
only if haveq(13094)
step
talk Image of Warmage Kaitlyn##55536
turnin Quickening##11911 |goto 37.2,81.4
only if haveq(11911)
step
talk Warmage Kaitlyn##55531
turnin Prisoner of War##11973 |goto 36.2,81.4
only if haveq(11973)
step
talk Image of Warmage Kaitlyn##55535
turnin Postponing the Inevitable##11905 |goto 35.1,81.4
only if haveq(11905)
step
Congratulations! You have completed The Nexus
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Northrend Dungeons\\The Oculus",{
mapid=142,
achieveid={487},
patch='40304',
condition_suggested=function() return level>=20 and level<=30 end,
keywords={"Coldarra, Borean, Tundra"},
description="\nThis guide will walk you through the Oculus dungeon.",
},[[
step
label "lfg"
Press _I_ and queue for The Oculus or enter the dungeon with your group |goto The Oculus/1 61.3,47.6 |c
step
accept The Struggle Persists##13124 |goto The Oculus 63.3,42.0
only if not completedq(13124)
step
map The Oculus/1
path follow smart; loop off; ants curved; dist 10
path	61.3,47.6	64.3,30.8	61.0,17.2
path	52.6,11.0	35.4,19.7	33.4,35.6
path	38.4,50.9
Follow the path and click the portal at the end |goto 47.9,69.4 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Drakos the Interrogator##27654
Defeat Drakos the Interrogator |scenariogoal 27926 |goto 48.9,76.1
step
talk Belgaristrasz##27658
turnin The Struggle Persists##13124 |goto 50.1,81.2
only if haveq(13124)
step
talk Belgaristrasz##27658
accept A Unified Front##13126 |goto 50.1,81.2
only if not completedq(13126)
step
Talk to either Verdisa, Belgaristrasz or Eternos and obtain a dragon.
talk Belgaristrasz##27658
collect Ruby Essence##37860 |or
|tip Talk to Belgaristrasz for the Ruby Essence.
talk Eternos##27659
collect Amber Essence##37859 |or
|tip Talk to Eternos for the Amber Essence.
talk Verdisa##27657
collect Emerald Essence##37815 |or
|tip Talk to Verdisa for the Emerald Essence.
step
Use your Ruby Essence |use Ruby Essence##37860 |only if itemcount(37860) > 0
Use your Amber Essence |use Amber Essence##37859 |only if itemcount(37859) > 0
Use your Emerald Essence |use Emerald Essence##37815 |only if itemcount(37815) > 0
Ride your dragon |invehicle
stickystart "Const"
step
map The Oculus/2
path follow smart; loop off; ants curved; dist 12
path	47.1,74.0	39.8,61.8	42.7,49.9
path	55.2,49.4	58.4,60.5	57.7,66.3
Follow the path |goto The Oculus/2 57.7,66.3 < 25
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Use your Ruby Essence |use Ruby Essence##37860 |only if itemcount(37860) > 0
Use your Amber Essence |use Amber Essence##37859 |only if itemcount(37859) > 0
Use your Emerald Essence |use Emerald Essence##37815 |only if itemcount(37815) > 0
Ride your dragon |invehicle
step
Clear this platform |goto The Oculus/2 73.2,75.3
confirm
step
Use your Ruby Essence |use Ruby Essence##37860 |only if itemcount(37860) > 0
Use your Amber Essence |use Amber Essence##37859 |only if itemcount(37859) > 0
Use your Emerald Essence |use Emerald Essence##37815 |only if itemcount(37815) > 0
Ride your dragon |invehicle
step
Clear this platform |goto The Oculus/2 26.4,79.6
confirm
step
label "Const"
kill 10 Centrifuge Construct##27641 |q 13126/1 |goto 29.3,76.3
only if haveq(13126)
step
Use your Ruby Essence |use Ruby Essence##37860 |only if itemcount(37860) > 0
Use your Amber Essence |use Amber Essence##37859 |only if itemcount(37859) > 0
Use your Emerald Essence |use Emerald Essence##37815 |only if itemcount(37815) > 0
Ride your dragon |invehicle
step
kill Varos Cloudstrider##27447
Defeat Varos Cloudstrider |scenariogoal 27927 |goto The Oculus/2 46.2,19.2
step
talk Image of Belgaristrasz##28012
turnin A Unified Front##13126 |goto The Oculus/2 45.7,18.8
accept Mage-Lord Urom##13127 |goto The Oculus/2 45.7,18.8
only if not completedq(13127)
step
Use your Ruby Essence |use Ruby Essence##37860 |only if itemcount(37860) > 0
Use your Amber Essence |use Amber Essence##37859 |only if itemcount(37859) > 0
Use your Emerald Essence |use Emerald Essence##37815 |only if itemcount(37815) > 0
Ride your dragon |invehicle
step
Fly up to this platform with your drake |goto The Oculus/3 62.2,15.0 < 5 |c
step
Attack Mage-Lord Urom.  When he vanishes, kill the mobs he summons
kill Mage-Lord Urom##27655 |goto The Oculus/3 70.7,27.0
confirm
step
Use your Ruby Essence |use Ruby Essence##37860 |only if itemcount(37860) > 0
Use your Amber Essence |use Amber Essence##37859 |only if itemcount(37859) > 0
Use your Emerald Essence |use Emerald Essence##37815 |only if itemcount(37815) > 0
Ride your dragon |invehicle
step
Attack Mage-Lord Urom.  When he vanishes, kill the mobs he summons
kill Mage-Lord Urom##27655 |goto The Oculus/3 50.4,87.8
confirm
step
Use your Ruby Essence |use Ruby Essence##37860 |only if itemcount(37860) > 0
Use your Amber Essence |use Amber Essence##37859 |only if itemcount(37859) > 0
Use your Emerald Essence |use Emerald Essence##37815 |only if itemcount(37815) > 0
Ride your dragon |invehicle
step
Attack Mage-Lord Urom. When he vanishes, kill the mobs he summons
kill Mage-Lord Urom##27655 |goto The Oculus/3 25.6,31.1
confirm
step
Use your Ruby Essence |use Ruby Essence##37860 |only if itemcount(37860) > 0
Use your Amber Essence |use Amber Essence##37859 |only if itemcount(37859) > 0
Use your Emerald Essence |use Emerald Essence##37815 |only if itemcount(37815) > 0
Ride your dragon |invehicle
step
kill Mage-Lord Urom##27655
Defeat Mage-Lord Urom |scenariogoal 27928 |goto The Oculus/3 44.0,44.9
step
talk Raelorasz##26117
turnin Mage-Lord Urom##13127 |goto The Oculus/3 44.5,44.4
accept A Wing and a Prayer##13128 |goto The Oculus/3 44.5,44.4
only if not completedq(13128)
step
Use your Ruby Essence |invehicle |use Ruby Essence##37860 |only if itemcount(37860) > 0 |next "ruby"
Use your Amber Essence |invehicle |use Amber Essence##37859 |only if itemcount(37859) > 0 |next "amber"
Use your Emerald Essence |invehicle |use Emerald Essence##37815 |only if itemcount(37815) > 0 |next "emerald"
step
label "emerald"
kill Ley-Guardian Eregos
|tip As the Emerald Drake, your job will be to heal your group.
|tip Leeching Poison puts a DoT on your target, siphoning health from that target to you. It will be important that you keep 3 stacks up on the boss at all times at the very least.
|tip Touch the Nightmare damages you in order to reduce your enemies damage output. It should be used on Ley-Guardian Eregos only, however DO NOT SPAM this ability.
|tip Dream Funnel transfers 5% of your health to a friendly target. This along with Leeching Poison is what you should be using the most.
Defeat Ley-Guardian Eregos |scenariogoal 1/27929 |goto The Oculus/0 49.6,49.2
|next "turnin"
step
label "ruby"
kill Ley-Guardian Eregos##27656
|tip As the Ruby Drake, your job will be to Tank the boss and the whelplings as best you can at all times.
|tip Searing Wrath jumps to nearby opponents when used.
|tip Evasive Aura gives you a charge whenever you're damaged. The charge is used for your 3rd ability.
|tip Evasive Maneuvers allows you to dodge all incoming damage.
Defeat Ley-Guardian Eregos |scenariogoal 1/27929 |goto The Oculus/0 49.6,49.2
|next "turnin"
step
label "amber"
kill Ley-Guardian Eregos##27656
|tip As the Amber Drake, your job will be to damage Ley-Guardian Eregos.
|tip Shock Lance is your primary attack.
|tip Stop Time is an important ability, freezing all enemy targets when used. It is important to use this when Ley-Guardian Eregos uses Enraged Assault.
|tip Temporal Rift, a channeled ability, which should be used until you have 10 Shock Charges, at which point you will want to use Shock Lance.
Defeat Ley-Guardian Eregos |scenariogoal 1/27929 |goto The Oculus/0 49.6,49.2
|next "turnin"
step
label "turnin"
talk Belgaristrasz##27658
turnin A Wing and a Prayer##13128 |goto The Oculus/4 47.6,83.7
only if haveq(13128)
step
Congratulations! You have completed The Oculus
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Northrend Dungeons\\Pit of Saron",{
mapid=184,
achieveid={4517},
patch='unknown',
condition_suggested=function() return level>=25 and level<=30 end,
keywords={"PoS, ICC, Icecrown, Citadel"},
description="\nThis guide will walk you through the Pit of Saron dungeon.",
},[[
step
label "lfg"
Press _I_ and queue for the Pit of Saron or enter the dungeon with your group |goto Pit of Saron/0 40.9,80.5 |c
step
talk Lady Jaina Proudmoore##38160
|tip You may have to pull a mob to get her to run through the portal.
turnin The Pit of Saron##24683 |goto Pit of Saron 40.8,79.7 |only if haveq(24683)
accept The Path to the Citadel##24498 |goto Pit of Saron 40.8,79.7
only if not completedq(24498)
stickystart "Slaves"
step
map Pit of Saron/0
path follow smart; loop off; ants curved; dist 15
path	41.1,78.7	42.6,72.8	45.8,68.3
path	49.4,68.5	52.8,64.9	55.7,62.1
path	58.9,59.3	63.7,54.9
Follow the path |goto Pit of Saron/0 63.7,54.9 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
label "Slaves"
click Ball and Chain##207079
15 Alliance Slaves Freed. |q 24498/1
only if haveq(24498)
step
kill Forgemaster Garfrost##36494
|tip Permafrost Deals frost damage and increases damage taken by 20% for 3 seconds. Line of sight Garfrost using Saronite boulders to clear your stacks.
|tip Chunks of saronite land on the ground. Don't stand near the impact area.
|tip Thundering Stomp stuns all players for 2 secons.
|tip Chilling Wave deals massive frost damage to anyone in front of Garfrost. Move behind him.
|tip Deep Freeze slows movement speed and freezes the player after 14 seconds, dealing frost damage.
Defeat Forgemaster Garfrost |scenariogoal 27937 |goto 66.4,55.5
step
talk Martin Victus##37591
turnin The Path to the Citadel##24498 |goto 65.5,54.9
accept Deliverance from the Pit##24710 |goto 65.5,54.9
only if not completedq(24710)
step
map Pit of Saron/0
path follow smart; loop off; ants curved; dist 15
path	62.7,54.9	60.1,50.9	56.9,47.1
path	54.7,43.1	51.0,42.6
Follow the path |goto Pit of Saron/0 51.0,42.6 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Ick##36476
|tip Kill the Plagueborn Horrors first.
|tip Mighty Kick deals damage and knocks the player back.
|tip Run away quickly if you are focused by Pursuit.
|tip Poison Nova deals fatal nature damage in a 15 yard radius. Run away.
|tip Explosive Barrage hurls missiles at all players, leaving Exploding Orbs. These detonate after 3 seconds. Run away.
|tip Toxic Waste leaves a puddle of waste at a location, dealing nature damage. Move out.
Defeat Ick |scenariogoal 27938 |goto 47.4,41.5
step
map Pit of Saron/0
path follow smart; loop off; ants curved; dist 15
path	47.1,41.4	49.5,43.2	52.3,40.3
path	49.7,31.0	54.0,31.5	57.3,32.1
Follow the path |goto Pit of Saron/0 57.3,32.1 < 10
|tip Take it slow, mobs will run and take up position in front of you.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Pit of Saron/0
path follow smart; loop off; ants curved; dist 15
path	59.8,31.3	62.4,28.7	63.0,22.4
path	63.0,22.4	60.8,19.8	56.3,18.1
path	51.5,18.0	47.8,19.2
Follow the path, stopping on the tile to kill the big elemental |goto Pit of Saron/0 47.8,19.2 < 10
|tip Let the tank go first and avoid the falling ice on the ground.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Scourgelord Tyrannus##36658
|tip Forceful Smash knocks a player back, dealing massive physical damage.
|tip Unholy Power slows Tyrannus' speed and increases his damage. Kite him around during this.
|tip Overlord's Brand redirects damage from the branded character to the tank. Stop attacking.
|tip Mark of Rimefang will attack this player from the air. Run away from group members and keep moving.
Defeat Scourgelord Tyrannus |scenariogoal 1/27939 |goto Pit of Saron/0 44.5,23.1
step
talk Lady Jaina Proudmoore##38160
|tip you will have to wait for her to show up.
turnin Deliverance from the Pit##24710 |goto Pit of Saron/0 39.7,16.1
accept Frostmourne##24711 |goto Pit of Saron/0 39.7,16.1
only if not completedq(24711)
step
Congratulations! You have completed the Pit of Saron.
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Northrend Dungeons\\Trial of the Champion",{
mapid=171,
achieveid={4296},
patch='30200',
condition_suggested=function() return level>=25 and level<=30 end,
keywords={"ToC, Icecrown, Argent, Tournament, Grounds"},
description="\nThis guide will walk you through the Trial of the Champion dungeon.",
},[[
step
label "lfg"
Press _I_ and queue for Trial of the Champion or enter the dungeon with your group |goto Trial of the Champion/1 51.2,30.2 |c
step
Click the Quest Discovered box |only if not completedq(29851)
accept Champion of the Tournament##29851 |goto Trial of the Champion 49.6,30.3 |only if not completedq(29851)
click Lance Rack##130
collect Argent Lance##46106
step
Go to the center to start the event. |goto Trial of the Champion 51.4,51.3 < 8 |c
step
Equip your _Argent Lance_. |equipped Argent Lance##46106 |use Argent Lance##46106
clicknpc Argent Warhorse##36557
Ride an Argent Warhorse. |invehicle |goto 57.9,33.6
stickystart "Warhorse"
step
talk Arelas Brightstar##35005 |goto 51.0,53.1
Tell him: "_I am ready._"
|tip You will be confronted with several waves of enemies, 3 at a time. Focus on 1 enemy at a time.
confirm
step
label "Warhorse"
_Thrust_:
|tip Primary attack.
_Shield Break_:
|tip Used to remove an enemy's Defend buff.
_Charge_:
|tip Deals massive damage and removes 1 layer of Defend.
_Defend_
|tip Reduces damage you take by 30%, stacking 3 times. This should be maintained at 3 at all times.
step
The first boss encounter will consist of the last group of jousters you defeated.
_Kill priority_:
_Runok Wildmane_:
|tip Has Healing Wave and Earth Shield. Interrupt Healing Wave at all costs.
_Eressea Dawnsinger_:
|tip She will Polymorph random party members, as well as use Blast Wave to AoE your group down.
_Deathstalker Visceri_:
|tip He will use Poison Bottle, leaving a green puddle on the ground that deals damage, and Fan of Knives.
_Mokra the Skullcrusher_:
|tip He will use Mortal Strike on the tank, reducing healing received by 50% as well as a Bladestorm.
_Zul'tore_:
|tip He will use Multishot and Lightning Arrow which can be dispelled.
scenariogoal 1/25098 |goto Trial of the Champion/1 51.1,52.5
step
talk Arelas Brightstar##35005 |goto Trial of the Champion/1 47.9,53.9
Tell him: "_I am ready for the next challenge._"
|tip There will be 3 groups of trash that come out
kill Argent Priestess##35307
|tip Always kill these first, interrupting heals and killing Fountains of Light.
confirm
step
There will be one of two bosses at this point:
Click here for _Eadric_ |next "Eadric" |confirm
Click here for _Argent Confessor Paletress_ |next "Paletress" |confirm
step
label "Eadric"
kill Eadric##35119
|tip Hammer of Justice stuns a random party member for 6 seconds. Dispel this.
|tip When Radiance is being casted turn away from Eadric so you aren't blinded. It will render you unable to act for 2 seconds.
|tip Hammer of the Righteous is thrown at a random party member. If not stunned, use your special action button to throw it back at Eadric.
Defeat Eadric |scenariogoal 2/25313 |goto Trial of the Champion/1 46.0,52.6 |next "Black_Knight"
step
label "Paletress"
kill Argent Confessor Paletress##34928
|tip Holy Fire deals fire damage and additional fire damage of 8 seconds.
|tip Summon Memory, used at 50% health. Kill the memory first, as it uses fear and places a shield on Paletress.
|tip Reflective Shield active on Paletress while the Memory is alive. Absorbs all damage and reflects 25% of it back.
Defeat Argent Confessor Paletress |scenariogoal 2/25313 |goto Trial of the Champion/1 46.0,52.6
step
label "Black_Knight"
talk Arelas Brightstar##35005 |goto 51.0,53.1
Tell him: "_I am ready._"
confirm
step
kill The Black Knight##35451
There are 3 phases to this fight.
_Phase 1_:
|tip Raise Argent Herald summons ghouls which leap around and drop aggro.  They also Explode, dealing out AoE Damage.
|tip Death's Respite stuns a player for 2 seconds and knocks them back, dealing massive damage.
_Phase 2_:
|tip Army of the Dead summons several ghouls that leap around and explode.
|tip Desecration deals heavy damage to anyone standing in it. Move out.
_Phase 3_:
|tip Death's Bite is an aura which deals out shadowfrost damage and increases magic damage taken by 5% per stack, up to 100 stacks.
|tip Marked for Death leaves a debuff that increases magic damage taken by 200% for 10 seconds.
Defeat the Black Knight. |q 29851/1 |only if haveq(29851)
Defeat The Black Knight |scenariogoal 3/27934
step
Click the Complete Quest Box
turnin Champion of the Tournament##29851
only if haveq(29851)
step
Congratulations! You have completed Trial of the Champion.
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Northrend Dungeons\\Utgarde Keep",{
mapid=133,
achieveid={477},
patch='40100',
condition_suggested=function() return level>=10 and level<=30 end,
keywords={"Howling, Fjord, UK"},
description="\nThis guide will walk you through the Utgarde Keep dungeon.",
},[[
step
label "lfg"
Press _I_ and queue for Utgarde Keep or enter the dungeon with your group |goto Utgarde Keep/1 69.3,73.0 |c
step
talk Defender Mordun##24111
accept Stealing Their Thunder##29763 |goto Utgarde Keep 67.6,71.0
accept Disarmament##29764 |goto Utgarde Keep 67.6,71.0
accept Ears of the Lich King##29803 |goto Utgarde Keep 67.6,71.0
only if not completedq(29763) or not completedq(29764) or not completedq(29803)
stickystart "vrykulweapons"
step
map Utgarde Keep/1
path follow smart; loop off; ants curved; dist 15
path	68.3,68.6	65.7,56.3	62.8,38.9
path	65.1,31.0	56.2,25.2	50.4,28.5
path	43.9,28.4	38.5,34.1	31.6,37.6
path	23.6,38.6	25.9,50.3
Follow the path |goto Utgarde Keep/1 25.9,50.3 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Prince Keleseth##23953
|tip Frost Tomb ice blocks a player, inflicting frost damage and stunning them for 20 seconds. Kill it to break them free.
|tip Skeletons attack when engaging Keleseth. After their death, they will resurrect in 20 seconds. Kill them quickly.
Defeat Prince Keleseth |scenariogoal 27889 |goto 29.5,67.0
step
map Utgarde Keep/1
path follow smart; loop off; ants curved; dist 15
path	25.4,68.2	21.7,74.7	25.5,86.2
path	35.3,88.5	50.1,82.2	Utgarde Keep/2 28.1,67.9
path	Utgarde Keep/2 26.6,60.1	Utgarde Keep/2 37.1,54.8
path	Utgarde Keep/2 44.5,82.5	Utgarde Keep/2 55.3,79.7
Follow the path |goto Utgarde Keep/2 55.3,79.7 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Dalronn##24201
kill Skarvald the Constructor##24200
|tip When one dies, it becomes an untargetable ghost. Dalronn is much easier to deal with as a ghost.
_Dalronn_:
|tip Kill him first.
|tip Interrupt Shadow Bolt.
|tip Debilitate inflicts shadow damage and reduces all speed by 50% for 8 seconds.
|tip Summon Skeletons interrupt this to avoid the adds.
_Skarvald:_
|tip Kill him last.
|tip Enrage increases his attack speed and damage for 10 seconds.
Defeat Dalronn and Skarvald the Constructor |scenariogoal 27890 |goto Utgarde Keep/2 58.3,60.7
step
map Utgarde Keep/2
path follow smart; loop off; ants curved; dist 15
path	58.6,60.5	55.3,45.8	53.8,25.8
Follow the path |goto Utgarde Keep/2 53.8,25.8 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Utgarde Keep/3
path follow smart; loop off; ants curved; dist 15
path	Utgarde Keep/3 33.0,49.9	Utgarde Keep/3 28.9,37.8
path	Utgarde Keep/3 39.8,32.3	Utgarde Keep/3 50.7,29.3
path	Utgarde Keep/3 51.8,38.5	Utgarde Keep/3 54.8,52.8
path	Utgarde Keep/3 67.7,41.9
Follow the path |goto Utgarde Keep/3 67.7,41.9 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Ingvar the Plunderer##23954
_Phase 1_:
|tip Frontal cone damage. Avoid standing in front.
|tip Staggering Roar deals damage and locks out spells cast for 6 seconds.
|tip Enrage stacks up to 50 times.
_Phase 2_:
|tip Hide behind a pillar until Dreadful Roar is over.
|tip Frontal cleave.
|tip Shadow Axe leaves a spinning axe that deals damage. Move out.
|tip Dreadful Roar deals shadow damage and locks out spells for 8 seconds.
Loot Ingvar's Head |q 29763/1 |only if haveq(29763)
Defeat Ingvar the Plunderer |scenariogoal 1/27891 |goto Utgarde Keep/3 72.7,38.8
step
label "vrykulweapons"
While going through the instance, look for _Vrykul Weapons_ along the walls
click Vrykul Weapons##193059
Loot 5 Vrykul Weapons |q 29764/1
only if haveq(29764)
step
map Utgarde Keep/3
path follow smart; loop off; ants curved; dist 15
path	72.5,38.0	58.0,50.2	46.6,56.5
path	Utgarde Keep/1 79.9,73.4	Utgarde Keep/1 73.6,66.4
Follow the path |goto Utgarde Keep/1 73.6,66.4 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
only if haveq(29763) or haveq(29764) or haveq(29803)
step
talk Defender Mordun##24111
turnin Stealing Their Thunder##29763 |goto Utgarde Keep 67.6,71.0
turnin Disarmament##29764 |goto Utgarde Keep 67.6,71.0
turnin Ears of the Lich King##29803 |goto Utgarde Keep 67.6,71.0
only if haveq(29763) or haveq(29764) or haveq(29803)
step
Congratulations! You have completed Utgarde Keep
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Northrend Dungeons\\Utgarde Keep: Utgarde Pinnacle",{
mapid=136,
achieveid={488},
patch='unknown',
condition_suggested=function() return level>=20 and level<=30 end,
keywords={"Howling, Fjord, UK, UP"},
description="\nThis guide will walk you through the Utgarde Keep: Utgarde Pinnacle dungeon.",
},[[
step
label "lfg"
Press _I_ and queue for Utgarde Pinnacle or enter the dungeon with your group |goto Utgarde Pinnacle/2 44.5,16.1 |c
step
talk Image of Argent Confessor Paletress##56072
accept Working at the Source##29864 |goto Utgarde Pinnacle/2 45.1,18.1
only if not completedq(29864)
step
talk Brigg Smallshanks##30871
accept Junk in My Trunk##13131 |goto 44.0,18.2
accept Vengeance Be Mine!##13132 |goto 44.0,18.2
only if not completedq(13131) or not completedq(13132)
stickystart "Junk"
step
map Utgarde Pinnacle/2
path follow smart; loop off; ants curved; dist 12
path	44.4,18.7	44.3,34.0	40.6,35.9
path	35.5,35.8	33.5,42.9	34.0,51.6
path	33.3,59.9	35.1,69.0	39.6,69.1
path	39.7,77.1	Utgarde Pinnacle/1 31.1,74.9
Follow this path until you get downstairs. |goto Utgarde Pinnacle/1 31.1,74.9 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Svala Sorrowgrave##26668
|tip Call Flames deals fire damage to random players.
|tip Ritual of the Sword will target a random player paralyzing them by Channelers on the alter. Kill the channelers within 25 seconds to free the player.
|tip Ritual Channeler is surrounded by a shield that places a stacking DoT on attacking players. Each DPS should kill 1 Channeler.
Defeat Svala Sorrowgrave |scenariogoal 27885 |goto Utgarde Pinnacle,33.8,74.2
step
map Utgarde Pinnacle/1
path follow strict; loop off; ants curved; dist 12
path	35.9,76.1	35.9,86.2	45.7,86.3
path	Utgarde Pinnacle/2 52.7,75.5	Utgarde Pinnacle/2 52.2,84.4
path	Utgarde Pinnacle/2 58.1,84.5
Follow the path |goto Utgarde Pinnacle/2 58.1,84.5 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Gortok Palehoof##26687
click Stasis Generator##7811
|tip This will trigger an event where 3 out of 5 statues come to life, the third being the actual boss.
_Jormunger_:
|tip Leaves poison on the ground and summons non-elite adds.
_Rhino_:
|tip Has a heavy stomp damage and randomly charges victims, leaving a dot.
_Furlbog_:
|tip Casts Chain Lightning and randomly changes aggro, as well as an AoE Fear.
_Worgen_:
|tip  Uses Mortal Strike on the tank.
_Gortok Palehoof_:
|tip Arcing Smash does cone damage wherever he is facing.
|tip Impale leaves a DoT on a random party member.
|tip Withering Roar decreases your maximum health by 500 and stacks. The longer the fight lasts the harder it will become to heal.
Defeat Gortok Palehoof |scenariogoal 27886 |goto Utgarde Pinnacle/2 61.8,84.1
step
kill Skadi the Ruthless##26693
|tip Aggroing the boss will trigger an event. Ymirjar mobs will come to fight you and you will have to battle them up the hall.
|tip Don't stand in Freezing Cloud.
|tip Ymirjar Harpooners drops ammo for the launchers. Click them to pick them up. When you get the message "Skadi the Ruthless is within range of the harpoon launchers!" click the Harpoon Launchers to shoot him down.
|tip Kite Skadi around during Whirlwind to minimize damage.
|tip Poisoned Spear will Poison a player, dealing nature damage. Dispel quickly.
Defeat Skadi the Ruthless |scenariogoal 27887 |goto 68.7,65.1
step
map Utgarde Pinnacle/2
path follow smart; loop off; ants curved; dist 12
path	68.3,36.7	62.8,37.0	55.5,37.4
path	Utgarde Pinnacle/1 56.3,18.3	Utgarde Pinnacle/1 56.2,32.4
path	Utgarde Pinnacle/1 49.7,44.4	Utgarde Pinnacle/2 48.9,53.7
Follow the path |goto Utgarde Pinnacle/2 48.9,53.7 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill King Ymiron##26861
|tip Gift of the Fallen Kings is used at 66% and 33% health. Grants a new ability. |only if not heroic_dung()
|tip Gift of the Fallen Kings is used every 20% health. Grants a new ability. |only if heroic_dung()
|tip Spirit Burst deals shadow damage to all players. Lasts until the next Gift.
|tip Summon Spirit Fount deals shadow damage to a random player every second. Lasts until the next Gift.
|tip Spirit Strike increases physical damage taken, stacking up to 100 times. Lasts until the next Gift.
_Summon Avenging Spirits_:
|tip Summon Avenging Spirits summons 4 spirits to attack players. Lasts until the next Gift.
|tip At 66% and 33%, King Ymiron will stun the entire party for 8 seconds with Screams of the Dead. |only if not heroic_dung()
|tip Every 20% health, King Ymiron will stun the entire party for 8 seconds with Screams of the Dead. |only if heroic_dung()
|tip Dark Slash deals damage equal to 50% of the targets current health.
|tip Bane deals AoE damage in a 10 yard radius whenever Ymiron is attacked. Dispel this.
|tip Fetid Rot deals nature damage and reduces healing received by 25%. Dispel this.
Defeat King Ymiron |scenariogoal 1/27888 |goto Utgarde Pinnacle/2 42.6,53.5
step
label "Junk"
Loot Untarnished Silver Bar |q 13131/1
Loot Shiny Bauble |q 13131/2
Loot Golden Goblet |q 13131/3
Loot Jade Statue |q 13131/4
only if haveq(13131)
step
talk Image of Argent Confessor Paletress##56072
turnin Working at the Source##29864 |goto 45.1,18.1
only if haveq(29864)
step
talk Brigg Smallshanks##30871
turnin Junk in My Trunk##13131 |goto 44.0,18.2
turnin Vengeance Be Mine!##13132 |goto 44.0,18.2
only if haveq(13131) or haveq(13132)
step
Congratulations! You have completed Utgarde Pinnacle.
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Northrend Dungeons\\The Violet Hold",{
mapid=168,
achieveid={483},
patch='unknown',
condition_suggested=function() return level>=15 and level<=30 end,
keywords={"VH, Dalaran"},
description="\nThis guide will walk you through the The Violet Hold dungeon.",
},[[
step
label "lfg"
Press _I_ and queue for The Violet Hold or enter the dungeon with your group |goto The Violet Hold/1 46.1,99.2 |c
step
talk Lieutenant Sinclari##30658
accept Containment##29830 |goto The Violet Hold 47.7,89.7
only if not completedq(29830)
step
In this instance, _Blue Portals_ will randomly pop up at each of the large pink shields in the room
You will need to go to it and defeat the monsters that come out until it closes
On waves 6, 12 and 18 bosses will spawn
Tell Lieutenant Sinclari: "_Activate the crystals when we get in trouble, right._"
confirm
step
label "the_list"
Click here for Erekem |next "Erekem" |confirm
Click here for Moragg |next "Moragg" |confirm
Click here for Ichoron |next "Ichoron" |confirm
Click here for Xevozz |next "Xevozz" |confirm
Click here for Lavanthor |next "Lavanthor" |confirm
Click here for Zuramat the Obliterator |next "Zuramat_the_Obliterator" |confirm
step
label "the_list2"
Click here for Erekem |next "Erekem2" |confirm
Click here for Moragg |next "Moragg2" |confirm
Click here for Ichoron |next "Ichoron2" |confirm
Click here for Xevozz |next "Xevozz2" |confirm
Click here for Lavanthor |next "Lavanthor2" |confirm
Click here for Zuramat the Obliterator |next "Zuramat_the_Obliterator2" |confirm
step
label "Erekem"
kill Erekem##29315
|tip Erekem should always die first.
|tip Earth Shield heals the bearer each time they are hit. Dispel when possible.
|tip Bloodlust increases all speeds by 35%. Dispel.
|tip Chain Heal heals all 3 targets. Interrupting this is top priority.
|tip Lightning Bolt deals nature damage. Interrupt only if a spare is available.
Defeat Erekem |scenariogoal 24858 |goto The Violet Hold/1 24.6,63.5
|next "the_list2"
step
label "Erekem2"
kill Erekem##29315
|tip Erekem should always die first.
|tip Earth Shield heals the bearer each time they are hit. Dispel when possible.
|tip Bloodlust increases all speeds by 35%. Dispel.
|tip Chain Heal heals all 3 targets. Interrupting this is top priority.
|tip Lightning Bolt deals nature damage. Interrupt only if a spare is available.
Defeat Erekem |scenariogoal 24859 |goto The Violet Hold/1 24.6,63.5
|next "final_boss"
step
label "Moragg"
kill Moragg##29316
|tip Optic Link deals damage to a player over 12 seconds, increases with each tick.
|tip Corrosive Saliva stacks up to 20 times, decreasing armor by 5% per stack.
|tip Ray of Pain deals shadow damage to a random player and reduces healing received by 15% for 5 seconds.
|tip Ray of Suffering deals shadow damage over 5 seconds to a random player.
Defeat Moragg |scenariogoal 24858 |goto The Violet Hold/1 67.1,54.5
|next "the_list2"
step
label "Moragg2"
kill Moragg##29316
|tip Optic Link deals damage to a player over 12 seconds, increases with each tick.
|tip Corrosive Saliva stacks up to 20 times, decreasing armor by 5% per stack.
|tip Ray of Pain deals shadow damage to a random player and reduces healing received by 15% for 5 seconds.
|tip Ray of Suffering deals shadow damage over 5 seconds to a random player.
Defeat Moragg |scenariogoal 24859 |goto The Violet Hold/1 67.1,54.5
|next "final_boss"
step
label "Ichoron"
kill Ichoron##29313
|tip Protective Bubble reduced damage taken by 99%. 35 successful attacks against Ichoron will cause her to Burst.
|tip Burst deals frost damage to everyone with a knockback. Creates 10 Ichor Globules and reduces her health by 30%.
|tip Ichor Globule, Each one heals Ichoron for 3% of her health. Kite Ichoron around and kill the Globules before they reach her.
Defeat Ichoron |scenariogoal 24858 |goto The Violet Hold/1 53.9,42.9
|next "the_list2"
step
label "Ichoron2"
kill Ichoron##29313
|tip Protective Bubble reduced damage taken by 99%. 35 successful attacks against Ichoron will cause her to Burst.
|tip Burst deals frost damage to everyone with a knockback. Creates 10 Ichor Globules and reduces her health by 30%.
|tip Ichor Globule, Each one heals Ichoron for 3% of her health. Kite Ichoron around and kill the Globules before they reach her.
Defeat Ichoron |scenariogoal 24859 |goto The Violet Hold/1 53.9,42.9
|next "final_boss"
step
label "Xevozz"
kill Xevozz##29266
|tip Kite him around away from spheres.
|tip Arcane Barrage Volley deals arcane damage to everyone within 45 yards.
|tip Arcane Buffet deals arcane damage and increases arcane damage taken for 20 seconds. Stacks 10 times. Dispel when possible.
|tip Ethereal Sphere pulse, dealing arcane damage to anyone within 8 yards. Avoid them as much as possible.
|tip Spheres coming within 3 yards of Xevozz increase his damage and attack speed for 8 seconds.
Defeat Xevozz |scenariogoal 24858 |goto The Violet Hold/1 33.9,48.1
|next "the_list2"
step
label "Xevozz2"
kill Xevozz##29266
|tip Kite him around away from spheres.
|tip Arcane Barrage Volley deals arcane damage to everyone within 45 yards.
|tip Arcane Buffet deals arcane damage and increases arcane damage taken for 20 seconds. Stacks 10 times. Dispel when possible.
|tip Ethereal Sphere pulse, dealing arcane damage to anyone within 8 yards. Avoid them as much as possible.
|tip Spheres coming within 3 yards of Xevozz increase his damage and attack speed for 8 seconds.
Defeat Xevozz |scenariogoal 24859 |goto The Violet Hold/1 33.9,48.1
|next "final_boss"
step
label "Lavanthor"
kill Lavanthor##29312
|tip Flame Breath deals fire damage in a frontal cone. Don't stand in front of Lavanthor.
|tip Lava Burn creates a lava bomb that hits the area where the targeted player stands and lasts for 8 seconds. Move out.
|tip Cauterizing Flames deals fire damage to all players and increases fire damage taken by 35%.
Defeat Lavanthor |scenariogoal 24858 |goto The Violet Hold/1 59.8,72.5
|next "the_list2"
step
label "Lavanthor2"
kill Lavanthor##29312
|tip Flame Breath deals fire damage in a frontal cone. Don't stand in front of Lavanthor.
|tip Lava Burn creates a lava bomb that hits the area where the targeted player stands and lasts for 8 seconds. Move out.
|tip Cauterizing Flames deals fire damage to all players and increases fire damage taken by 35%.
Defeat Lavanthor |scenariogoal 24859 |goto The Violet Hold/1 59.8,72.5
|next "final_boss"
step
label "Zuramat_the_Obliterator"
kill Zuramat the Obliterator##29314
|tip Void Shift deals shadow damage and allows players to see Void Sentries.
|tip While shifted, kill these Void Sentries as quick as you can to stop the shadow bolt volley they cast.
|tip While Shroud of Darkness is active, attacks against Zuramat reduce healing by 10%, stacking 5 times. Don't attack during the 10 second duration.
Defeat Zuramat the Obliterator |scenariogoal 24858 |goto The Violet Hold/1 28.8,34.8
|next "the_list2"
step
label "Zuramat_the_Obliterator2"
kill Zuramat the Obliterator##29314
|tip Void Shift deals shadow damage and allows players to see Void Sentries.
|tip While shifted, kill these Void Sentries as quick as you can to stop the shadow bolt volley they cast.
|tip While Shroud of Darkness is active, attacks against Zuramat reduce healing by 10%, stacking 5 times. Don't attack during the 10 second duration.
Defeat Zuramat the Obliterator |scenariogoal 24859 |goto The Violet Hold/1 28.8,34.8
|next "final_boss"
step
label "final_boss"
kill Cyanigosa##31134
|tip DPS and Heals should stand on either of her sides, to avoid Uncontrollable Energy and Tail Swipe.
|tip She will use Arcane Grip, which pulls all party members to her and drops aggro. The tank should Taunt immediately.
|tip She will cast Blizzard on a random party member.
Defeat Cyanigosa |scenariogoal 1/27910 |goto The Violet Hold/1 46.0,56.2
step
talk Lieutenant Sinclari##30658
turnin Containment##29830 |goto The Violet Hold 45.9,91.2
only if haveq(29830)
step
Congratulations! You have completed The Violet Hold
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Northrend Raids\\The Eye of Eternity",{
mapid=141,
achieveid={1391, 1394},
patch='unknown',
condition_suggested=function() return level>=27 and level<=30 end,
keywords={"EoE, Coldarra, Borean, Tundra, Malygos"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the Eye of Eternity Raid.",
},[[
step
Enter The Eye of Eternity |goto Borean Tundra/0 27.59,26.56 < 5
|tip It is on the third story of this building.
confirm
step
Click the Focusing Iris to start the fight. |goto The Eye of Eternity/1 37.7,50.7
|confirm
step
_Malygos_ |goto 38.2,50.4
_Phase 1_
|tip Arcane Explosion deals 6000-8000 Arcane damage to everyone in the raid.
|tip Arcane Breath deals 18,800-28,300 Arcane damage in a cone in front of Malygos. It also applies a debuff, causing an explosion after 5 seconds which deals 10,000 damage to all nearby players.
|tip Arcane Storm Arcane missles fire into the air, which hit random raid members 9500-10,500 Arcane damage.
|tip Vortex occurs when Malygos flies into the air, tossing the raid around and dealing 2000 Arcane damage. The raid will then be dropped on the center platform, taking 10% fall damage.
|tip Power Sparks Malygos summons a Power Spark away from the platform and move towards him, increasing his damage done by 50% if it reaches him. If killed it leaves a mark on the ground that increases players' damage by 50% when standing in it.
|tip Detonate affects the player with the most mana in the raid, burning 10,000 mana and dealing 2 Arcane damage per mana point.
_Phase 2_ occurs when Malygos is at 50% health.
Click here to proceed to _Phase 2_. |confirm
step
_Malygos_ |goto 38.2,50.4
_Phase 2_
|tip Nexus Lord and Scions of Eternity adds will spawn at the beginning of the phase.
|tip Arcane Storm Arcane missles fire into the air, which hit random raid members 9500-10,500 Arcane damage.
|tip Deep Breath deals 5000 Arcane damage per second to the whole raid for 5 seconds.
|tip Power Overload spawn purple anti-magic zones on the platform, reducing all magic taken by 50% while standing inside.
_Phase 3_ starts when all the adds are dead.
Click here to proceed to _Phase 3_ |confirm
step
kill Malygos##28859 |goto 38.2,50.4
_Phase 3_
|tip All raid members land on red dragons after Malygos shatters the platform.
|tip Arcane Pulse deals 28,200-31,700 Arcane damage to anyone within 30 yards of Malygos.
|tip Static Field creates a blue orb at a random location. The orb deals 10,000 Arcane damage per second to anyone within 30 yards of it.
|tip Surge of Power affects a random raid member. Malygos shoots a beam at them, dealing 12,000 Arcane damage every half-second for 3 seconds, as well as 5000 Arcane damage per second to anyone near the primary target.
|confirm
step
Congratulations, you have finished the Eye of Eternity raid guide!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Northrend Raids\\Icecrown Citadel",{
mapid=186,
achieveid={4532, 4608},
patch='30302',
condition_suggested=function() return level>=27 and level<=30 end,
keywords={"ICC, LK, Lich, King, Shadowmourne"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the Icecrown Citadel Raid.",
},[[
step
Enter Icecrown Citadel |goto Icecrown/0 53.79,87.04 < 5
confirm
step
map Icecrown Citadel/1
path loop off
path	38.9,29.2	38.9,36.3	39.0,52.4
Follow the path, clearing trash as you make your way to the first boss, Lord Marrowgar. |goto 39.0,52.4 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Lord Marrowgar##36612 |goto Icecrown Citadel 38.9,59.8
|tip Bone Storm is an AoE hits players around Marrowgar, dealing less damage the further away you are.
|tip Bone Spike Graveyard deals 10% of each the target's maximum health as damage every second until killed by other raid members. Will automatically end after 5 mintues.
|tip Coldflame summons a line of frost that hits players in the way, dealing 9000 Frost damage every second for 8 seconds.
|tip Bone Slice deals 200% normal damage, split between Marrowgar's target and a nearby ally.
|tip Enrage occurs after 10 minutes of combat. It increases his damage by 500% and attack speed by 150%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
|confirm
step
map Icecrown Citadel/1
path loop off
path	34.2,58.8	34.3,66.7	38.9,72.4
path	39.0,80.5
Follow the path, clearing trash as you make your way to the next boss, Lady Deathwhisper. |goto 39.0,80.5 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Lady Deathwhisper_ |goto 39.1,86.7
Click here for 10 man abilities. |next "death10" |confirm
Click here for 25 man abilities. |next "death25" |confirm
step
label "death10"
kill Lady Deathwhisper##36855 |goto 39.1,86.7
_Phase 1_
|tip Animate Dead reanimates a Cult Adherent or Cult Fanatic.
|tip Dark Empowerment is a buff applied to Deathwhisper's allies. It increases their spell damage and make them immune to interrupts.
|tip Dark Transformation transforms a random Cult Fanatic into an Undead Behemoth, increasing its damage by 100%.
|tip Mana Barrier is a buff that heals the target in exchange for their mana.
|tip Shadow Bolt deals 9000-11,800 Shadow damage to the target.
|tip Death and Decay is an AoE that inflicts 4500 Shadow damage every second to all players in the targeted area for 10 seconds.
_Phase 2_
|tip Frostbolt deals 37,000 Frost damage to a raid member and reduces their movement speed by 50% for 4 seconds. Interruptable.
|tip Frostbolt Volley inflicts 10,800-13,200 Frost damage to nearby raid members, also reducing their movement speed by 50% for 4 seconds.
|tip Summon Vengeful Shade spawns a Vengeful Shade that cannot be attacked. It chases a player for a short time, casting Vengeful Blast on them.
|tip Touch of Insignificance reduces the target's threat generation by 20%. Stacks up to 5 times.
|tip Death and Decay is an AoE that inflicts 4500 Shadow damage every second to all players in the targeted area for 10 seconds.
|next "deathcomplete" |confirm
step
label "death25"
kill Lady Deathwhisper##36855 |goto 39.1,86.7
_Phase 1_
|tip Animate Dead reanimates a Cult Adherent or Cult Fanatic.
|tip Dark Empowerment is a buff applied to Deathwhisper's allies. It increases their spell damage and make them immune to interrupts.
|tip Dark Transformation transforms a random Cult Fanatic into an Undead Behemoth, increasing its damage by 100%.
|tip Mana Barrier is a buff that heals the target in exchange for their mana.
|tip Shadow Bolt deals 11,800-13,100 Shadow damage to the target.
|tip Death and Decay is an AoE that inflicts 4500 Shadow damage every second to all players in the targeted area for 10 seconds.
|tip Dominate Mind charms the targeted player for 20 seconds, increasing their damage by 200% and healing by 500%.
_Phase 2_
|tip Frostbolt deals 52,000 Frost damage to a raid member and reduces their movement speed by 50% for 4 seconds. Interruptable.
|tip Frostbolt Volley inflicts 14,400-17,600 Frost damage to nearby raid members, also reducing their movement speed by 50% for 4 seconds.
|tip Summon Vengeful Shade spawns a Vengeful Shade that cannot be attacked. It chases a player for a short time, casting Vengeful Blast on them.
|tip Touch of Insignificance reduces the target's threat generation by 20%. Stacks up to 5 times.
|tip Death and Decay is an AoE that inflicts 4500 Shadow damage every second to all players in the targeted area for 10 seconds.
|tip Dominate Mind charms the targeted player for 20 seconds, increasing their damage by 200% and healing by 500%.
|next "deathcomplete" |confirm
step
label "deathcomplete"
Take the elevator up to the next level |goto 39.0,85.5 < 5
confirm
step
map Icecrown Citadel/2
path loop off
path	45.6,77.4	39.4,71.3	31.8,55.4
path	24.1,55.3
Follow the path towards the next boss encounter, the Gunship Battle. |goto 24.1,55.3 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Zafod Boombox##37184 |goto 22.6,60.9
Tell him to give you a jetpack!
Equip the jetpack |use Goblin Rocket Pack##49278
confirm
step
talk Muradin Bronzebeard##36948 |goto Icecrown Citadel/2 21.6,60.1
Tell him "My companions are all accounted for, Muradin. Let's go!"
This will start the boss fight, make sure you are ready.
confirm
step
_Gunship Battle_
|tip This fight is an aerial battle between the Skybreaker and Ogrim's Hammer.
|tip The raid will need to be split into an offensive and defensive team.
|tip Defensive Team: consists of the majority of the raid. Their job is to keep the players' gunship free of enemy boarding parties and kill ranged attackers.
|tip Offensive Team: consists of melee attackers, tank and healer(s). Their job is to use the guns to attack the enemy ship and board it using the jetpacks, to kill adds.
|tip Use the jetpack to get to the enemy ship. |use Goblin Rocket Pack##49278
_High Overlord Saurfang_
|tip Battle Fury increases damage dealt by 5%.
|tip Cleave inflicts 120% weapon damage to the target and up to 3 nearby alliles. Make sure the tank is the only one in front of him when this occurs.
|tip Rending Throw Saurfang throws his weapon at a player, dealing 3000-4000 weapon damage and an additional 2000 Physical damage ever 3 seconds for 18 seconds.
_Kor'kron Battle-Mage_
|tip Below Zero freezes the target in ice, stunning them.
_Kor'kron Rocketeer_
|tip Rocket Artillery launches a rocket that deals 6300-7700 Fire damage to players in the targeted area.
_Kor'kron Sergeant_
|tip Bladestorm lasts 6 seconds and hits up to 4 nearby players every second.
|tip Wounding Strike deals 200% weapon damage and applies a debuff that reduces healing by 25% for 10 seconds.
|tip Desperate Resolve increases their attack speed and armor by 60%.
_Kor'kron Reaver_
|tip Desperate Resolve increases their attack speed and armor by 60%.
_Kor'kron Axethrower_
|tip Shoot shoots at the target, dealing 4000 Physical damage.
|tip Hurl Axe deals 4000 Physical damage.
confirm
step
talk Muradin Bronzebeard##37200 |goto Icecrown Citadel/2 45.6,72.3
Tell him "We're ready, Muradin."
This will start the next boss fight, make sure you are ready.
confirm
step
kill Deathbringer Saurfang##37813 |goto 45.6,65.5
|tip Blood Link is a stacking buff that gives Saurfang Blood Power, increasing his size and damage dealt by 1% per stack.
|tip Blood Nova is an AoE that deals 10,000 Physical damage to players nearby the target.
|tip Boiling Blood does 9500 Physical damage every 3 seconds for 24 seconds.
|tip Call Blood Beast summons a blood beast add every 40 seconds.
|tip Frenzy increases Saurfang's attack speed by 30%.
|tip Mark of the Fallen Champion causes Saurfang's attacks to splash to his target, dealing 5700-6300 additional damage. If the target dies while affected by this, Saurfang is healed for 5% of his total health.
|tip Rune of Blood is a debuff used on a raid member. Saurfang's attacks leech 5100-6800 additional health from players affected by this, healing him for 10 times the amount of health leeched.
|confirm
step
|goto Icecrown Citadel/3 51.5,16.5 |n
Go through the doorway here to go up to the next level of Icecrown. |goto Icecrown Citadel/5 51.8,83.4 < 10 |noway |c
step
map Icecrown Citadel/5
path loop off
path	51.8,80.5	47.7,76.8	51.9,71.4
path	45.8,62.9	41.7,53.7	38.1,58.6
path	32.7,53.7	28.8,65.4	24.5,65.4
Follow the path, clearing trash as you make your way to the next boss, Festergut. |goto 24.5,65.4 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Festergut_ |goto 19.8,65.4
Click here for 10 man abilities. |next "gut10" |confirm
Click here for 25 man abilities. |next "gut25" |confirm
step
label "gut10"
kill Festergut##36626 |goto 19.8,65.4
|tip Gas Spore inflicts 2 random raid members with a gaseous spore. The spore explodes after 12 seconds, dealing 2000 damage to all nearby raid members and giving them 25% resistance to the blight. Stacks up to 3 times.
|tip Inhale Blight inhales the Gaseous Blight in the room, increasing damage dealt and attack speed by 25%.
|tip Pungent Blight occurs after Inhale Blight. Deals 48,750-51,250 damage to the raid and releases the blight back into the room.
|tip Vile Gas inflicts a plague in the targeted area, inflicting 5000 damage every 2 seconds for 6 seconds. Being hit by this causes a player to vomit, dealing an additional 4000 damage to nearby allies.
|tip Gastric Bloat inflicts 10,000 Nature damage to the target and applies a stacking debuff. At 10 stacks, Gastric Explosion occurs, killing the player and dealing 30,000 Shadow damage to nearby raid members within 10 yards.
|next "gutcomplete" |confirm
step
label "gut25"
kill Festergut##36626 |goto 19.8,65.4
|tip Gas Spore inflicts 2 random raid members with a gaseous spore. The spore explodes after 12 seconds, dealing 2000 damage to all nearby raid members and giving them 25% resistance to the blight. Stacks up to 3 times.
|tip Inhale Blight inhales the Gaseous Blight in the room, increasing damage dealt and attack speed by 25%.
|tip Pungent Blight occurs after Inhale Blight. Deals 48,750-51,250 damage to the raid and releases the blight back into the room.
|tip Vile Gas inflicts a plague in the targeted area, inflicting 5000 damage every 2 seconds for 6 seconds. Being hit by this causes a player to vomit, dealing an additional 4000 damage to nearby allies.
|tip Gastric Bloat inflicts 10,000 Nature damage to the target and applies a stacking debuff. At 10 stacks, Gastric Explosion occurs, killing the player and dealing 30,000 Shadow damage to nearby raid members within 10 yards.
|tip Putrid Hate has an AoE that deals large damage in a 200 yard radius. This also applies a debuff to nearby raid members, reducing their movement speed by 25%.
|next "gutcomplete" |confirm
step
label "gutcomplete"
Make sure to click the Gas Release Valve before leaving the room. This, along with another valve, must be used to access a later boss. |goto 23.5,63.6
|confirm
step
map Icecrown Citadel/5
path loop off
path	29.6,54.1	29.2,42.3	24.7,42.1
Follow the path, clearing trash as you make your way to the next boss, Rotface. |goto 24.7,42.1 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Rotface##36627 |goto 19.8,41.9
|tip Ooze Flood inflicts 5400-5700 damage every second and also reduces the target's movement speed by 25% for 5 seconds.
|tip Slime Spray summons a green ooze rain, dealing 5500 Nature damage every second for 5 seconds to players in a cone in front of Rotface.
|tip Mutated Infection inflicts 4000 Shadow damage every second and reduces healing received by 50% for 12 seconds. Upon expiration, a small ooze is created at the target's location.
_Little Ooze_
|tip Sticky Ooze deals 3000 damage every second and reduces movement speed by 50%.
|tip Weak Radiating Ooze deals 3500 damage every 2 seconds to players within the targeted area. Also causes Little Ooze to merge together, creating a Big Ooze.
_Big Ooze_
|tip Sticky Ooze deals 3000 damage every second and reduces movement speed by 50%.
|tip Radiating Ooze deals 4500 damage every 2 seconds to players within the targeted area. Also causes Big Oozes to merge together, applying a buff that increases their damage dealt by 20% and stacking up to 10 times.
|tip Unstable Ooze Explosion occurs when a Big Ooze merges with 5 other oozes.
|confirm
step
Make sure to click the Ooze Release Valve before leaving the room. This opens the door to the next boss. |goto 23.5,43.9
|confirm
step
map Icecrown Citadel/5
path loop off
path	24.4,53.4	18.4,53.7	17.3,53.7
Kill the Flesh-eating Insects in this hallway until the door opens to the next boss, Professor Putricide. |goto 17.3,53.7 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Professor Putricide##36678 |goto 13.3,53.7
|tip Mutated Slime vial of Mutated Slime is thrown at the target, creating a puddle that deals 4500 damage every second until it is consumed by another Mutated creature.
|tip Unstable Experiment Putricide performs an experiment, spawning a Volitile Ooze or a Gas Cloud. The Ooze should be killed and the Cloud should be kited.
|tip Choking Gas Bom_ is an AoE around Putricide, dealing 5500 damage every second and then explodes for 16,000 damage after 20 seconds.
|tip Malleable Goo Putricide bounces a Malleable ball of Green Goo at his target, inflicting 14,500-15,300 damage and reducing their attack and cast speed by 200% for 15 seconds.
|tip Mutated Plague occurs during Phase 3. This is applied to Putricide's target every 10 seconds, dealing increased Shadow damage to the raid. Kill him as fast as possible to avoid death.
|confirm
step
map Icecrown Citadel/5
path loop off
path	32.5,53.7	37.5,58.6	41.7,53.8
path	51.9,38.5	51.8,20.0
Follow the path, clearing trash as you make your way to the next boss, the Blood Prince Council. |goto 51.8,20.0 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Blood Prince Council_ |goto 51.8,14.5
Click here for 10 man abilities. |next "council10" |confirm
Click here for 25 man abilities. |next "council25" |confirm
step
label "council10"
_Blood Prince Council_ |goto 51.8,14.5
kill Prince Valanar##37970
|tip Shock Vortex creates an AoE vortex that deals 8000 damage to players within 12 yards and knocks them back.
|tip Kinetic Bomb summons a bomb that drifts toward the ground, exploding on impact and dealing 10,800-13,200 damage to players and knocking them back.
|tip Empowered Shock Vortex creates vortexes under players near Valanar, dealing 5000 damage and knocking them back.
kill Prince Taldaram##37973
|tip Conjure Flame creates a ball of flames that flies through the air, growing in size and dealing at least 7500 Fire damage to players near the impact. Deals increased damage based on size.
|tip Conjure Empowered Flame created an empowered ball of flame that flies towards the target and explodes on impact, dealing at least 7500 Fire damage. Also inflicts 1000 Fire damage to nearby players.
|tip Glittering Sparks sparks shoot from Taldaram in a cone, burning players for 13,000 Fire damage over 8 seconds and reducing their movement speed by 20%.
kill Prince Keleseth##37972
|tip Shadow Lance deals 16,000 Shadow damage to the target.
|tip Shadow Resonance affects the nearest target, dealing 1000 damage and reducing Shadow damage taken from all sources by 35%.
|tip Empowered Shadow Lance deals 78,000-82,000 damage to the target.
|next "councilcomplete" |confirm
step
label "council25"
_Blood Prince Council_ |goto 51.8,14.5
kill Prince Valanar##37970
|tip Shock Vortex creates an AoE vortex that deals 9000 damage to players within 12 yards and knocks them back.
|tip Kinetic Bomb summons a bomb that drifts toward the ground, exploding on impact and dealing 12,000 damage to the entire raid and knocks them back.
|tip Empowered Shock Vortex creates vortexes under players near Valanar, dealing 7000 damage and knocking them back.
kill Prince Taldaram##37973
|tip Conjure Flame creates a ball of flames that flies through the air, growing in size and dealing at least 10,000 Fire damage to players near the impact. Deals increased damage based on size.
|tip Conjure Empowered Flame created an empowered ball of flame that flies towards the target and explodes on impact, dealing at least 10,000 Fire damage. Also inflicts 1000 Fire damage to nearby players.
|tip Glittering Sparks sparks shoot from Taldaram in a cone, burning players for 16,100 Fire damage over 8 seconds and reducing their movement speed by 20%.
kill Prince Keleseth##37972
|tip Shadow Lance deals 17,000-18,000 Shadow damage to the target.
|tip Shadow Resonance affects the nearest target, dealing 1000 damage and reducing Shadow damage taken from all sources by 35%.
|tip Empowered Shadow Lance deals 85,000-89,600 damage to the target.
|next "councilcomplete" |confirm
step
label "councilcomplete"
map Icecrown Citadel/6
path loop off
path	Icecrown Citadel/5 46.7,14.1	Icecrown Citadel/5 42.7,17.0	Icecrown Citadel/6 30.7,59.8
path	51.1,73.6	51.1,59.8
Follow the path, clearing trash as you make your way to the next boss, Blood-Queen Lana'thel. |goto 51.1,59.8 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Blood-Queen Lana'thel##37955 |goto 51.1,43.8
_Ground Phase_
|tip Blood Mirror a debuff that inflicts 100% of the damage the target takes to the linked player.
|tip Delirious Slash inflicts 50% of weapon damage and applies a bleed DoT that inflicts 4500-5500 every 3 seconds for 15 seconds.
|tip Vampiric Bite deals 12,000-14,000 damage to the target, also applying Essence of the Blood Queen.
|tip Essence of the Blood Queen infuses the target with the blood of the Vampyr Queen, increasing damage by 100% and healing them for 10% of damage inflicted.
|tip Pact of the Darkfallen  deals 5000 Shadow damage every 2 seconds to the target and nearby players. Expires when all linked players are within 5 yards.
|tip Shroud of Sorrow deals 4500 Shadow damage every 3 seconds to players within 40 yards of Lana'thel.
|tip Swarming Shadow is a mass of shadows that appear under the target, dealing 2500 Shadow damage every 2 seconds.
|tip Twilight Blootbolt deals 9200-10,750 damage to the target and surrounding players.
_Air Phase_
|tip Incite Terror is a 4 second Fear on the entire raid.
|tip Bloodbolt Whirl summons a maelstrom of Bloodbolts every 2 seconds for 6 seconds, these deal 10,000 damage to the targeted player and their surrounding allies.
|confirm
step
|goto 51.1,69.7 |n
Jump down the hole here |goto Icecrown Citadel/5 51.9,33.6 < 10 |noway |c
step
map Icecrown Citadel/5
path loop off
path	51.8,38.5	61.7,53.8	69.3,53.8
path	74.4,53.7	76.6,58.4	76.6,62.7
Follow the path, clearing trash as you make your way to the next boss, Valithria Dreamwalker. |goto 76.6,62.7 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Defeat Valithria Dreamwalker |goto 76.6,73.7
This fight ends after Valithria is healed back to 100% health.
Most healers should focus on Valithria, while the rest of the raid group take care of the adds that continuously spawn.
|tip If you are soloing this instance and do not have a heal, this boss can be skipped by just walking past.
|tip Nightmare Portal summons Nightmare Portals that allow access to the Dreamstate. Valithria's healers should use these and absorb the Dream Clouds that spawn there, granting them Emerald Vigor.
|tip Emerald Vigor is a buff that regenerates 200 mana every 3 seconds and increases damage and healing done by 10%.
|tip Dreamwalker's Rage occurs when Valithria reaches 100% health. It deals 10,000,000 Nature damage to all surrounding enemies. Does not hit players.
_Blazing Skeleton_
|tip Fireball deals 4700-5300 Fire damage to the target.
|tip Lay Waste surrounds the skeleton in flames for 12 seconds, dealing 4000 Fire damage to the raid every 2 seconds.
_Blistering Zombie_
|tip Acid Burst explodes the zombie, dealing 9400-10,500 Nature damage and 750 Nature damage every second to all players within 15 yards.
|tip Corrosion is a DoT applied to a player after being hit by a melee attack, dealing 2000 Nature damage every 3 seconds and reducing their armor by 10%. Stacks up to 5 times.
_Risen Archmage_
|tip Column of Frost marks a location under a players feet. After 2 seconds frost erupts, dealing 12,000 Frost damage to players within 3 yards and knocking them into the air.
|tip Frostbolt Volley deals 8500-10,500 Frost damage to nearby players, also reducing their movement speed for 4 seconds.
|tip Mana Void summons a void at a random player's location, burning 800 mana per second to all players within 6 yards.
_Gluttonous Abomination_
|tip Gut Spray deals 20000 Nature damage per second and increases the target's Physical damage taken by 25% for 12 seconds.
|confirm
step
|goto Icecrown Citadel/5 76.7,92.9 |n
Ride this elevator down |goto Icecrown Citadel/4 36.6,88.7 <10 |noway |c
step
|goto 36.6,67.5
Clear the waves of adds that spawn in this room until the northern gate at [36.5,50.1] opens.
|confirm
step
Clear the two groups of trash here, leaving Spinestalker and Rimefang alive. Once you kill those two the boss, Sindragosa, will spawn. |goto 36.5,35.5
|confirm
step
_Sindragosa_ |goto 36.6,23.4
Click here for 10 man abilities. |next "sin10" |confirm
Click here for 25 man abilities. |next "sin25" |confirm
step
label "sin10"
kill Sindragosa##36853 |goto 36.6,23.4
_Ground Phase_
|tip Cleave hits Sindragosa's target and up to 10 additional nearby players. Make sure the tank is the only one in front of her when this occurs.
|tip Frost Aura deals 3000 Frost damage every 3 seconds to all players near Sindragosa.
|tip Frost Breath inflicts 27,750-32,250 Frost damage to raid members in a 60 yard cone in front of Sindragosa. Also reduces their attack speed by 50% and movement speed by 15% for 90 seconds.
|tip Ice Grip pulls nearby players to the caster and then uses Blistering Cold.
|tip Blistering Cold deals 30,000 Frost damage to players within 25 yards.
|tip Chilled to the Bone deals 1000 Frost damage every 2 seconds per stack.
|tip Permeating Chill affects players attacking Sindragosa with physical attacks. They receive this debuff, dealing 1000 Frost damage every 2 seconds per stack.
|tip Tail Smash deals 11,250-18,750 damage on players behind Sindragosa.
_Air Phase_
|tip Frost Beacon Marks the targeted player for imprisonment in an Ice Tomb, dealing 8% of their maximum health in damage every second if not freed by other players.
|tip Frost Bomb deals 23,500-26,400 Frost damage to all nearby raid members.
_Final Phase_
|tip Mystic Buffet buffets all players near Sindragosa with Arcane energy, increasing all magic damage taken by 20% for stack.
|next "sincomplete" |confirm
step
label "sin25"
kill Sindragosa##36853 |goto 36.6,23.4
_Ground Phase_
|tip Cleave hits Sindragosa's target and up to 10 additional nearby players. Make sure the tank is the only one in front of her when this occurs.
|tip Frost Aura deals 4500 Frost damage every 3 seconds to all players near Sindragosa.
|tip Frost Breath inflicts 37,000-43,000 Frost damage to raid members in a 60 yard cone in front of Sindragosa. Also reduces their attack speed by 50% and movement speed by 15% for 90 seconds.
|tip Ice Grip pulls nearby players to the caster and then uses Blistering Cold.
|tip Blistering Cold deals 35,000 Frost damage to players within 25 yards.
|tip Chilled to the Bone deals 1000 Frost damage every 2 seconds per stack.
|tip Permeating Chill affects players attacking Sindragosa with physical attacks. They receive this debuff, dealing 1000 Frost damage every 2 seconds per stack.
|tip Tail Smash deals 11,250-18,750 damage on players behind Sindragosa.
_Air Phase_
|tip Frost Beacon Marks the targeted player for imprisonment in an Ice Tomb, dealing 8% of their maximum health in damage every second if not freed by other players.
|tip Frost Bomb deals 23,500-26,400 Frost damage to all nearby raid members.
_Final Phase_
|tip Mystic Buffet buffets all players near Sindragosa with Arcane energy, increasing all magic damage taken by 20% for stack.
|next "sincomplete" |confirm
step
label "sincomplete"
map Icecrown Citadel/4
path loop off
path	39.4,44.1	46.9,33.4	51.7,33.3
Follow this path to the elevator and take it up to the next level. |goto Icecrown Citadel/5 86.0,53.8 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Icecrown Citadel/5
path loop off
path	80.7,53.8	67.7,53.7	59.2,53.7
path	52.0,53.7
Follow the path to the teleporter and step through it, taking you to the final boss, the Lich King. |goto Icecrown Citadel/7 49.4,39.4 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Highlord Tirion Fordring##38995 |goto 49.8,50.4
Tell him "We are prepared, Highlord..."
This will start the final battle with the Lich King, make sure you are ready.
|confirm
step
_The Lich King_ |goto 49.8,50.4
_Phase 1_
|tip Adds in this Phase should be tanked away from the group and killed using Necrotic Plague. This is a DoT that is used on players, but when dispelled (or the player dies) it jumps to a nearby unit, hopefully the summoned adds.
|tip Summon Drudge Ghouls spawns 3 Drudge Ghoulds to attack the raid.
|tip Summon Shambling Horror spawns a Shambling Horror to attack the raid. These have a frontal cone attack and enrage.
|tip Nectrotic Plague is a DoT the Lich King uses on a player, dealing 50,000 damage over 5 seconds for 15 seconds. If the player dies, or if it is dispelled, it jumps up to 10 yards to a nearby unit. You want it to jump to the summoned adds.
|tip Infest deals 6500-7500 Shadow damage to the raid, also increasing their Shadow damage taken.
|tip Summon Shadow Trap the Lich King spawns a Shadow Trap under the targeted player's feet. Stepping within 5 yards of the trap causes it to explode, dealing 23,500-26,500 Shadow damage to players within 10 yards and knocking them back.
|tip Phase 1.5 starts when the Lich King reaches 70% health.
Click here to move to _Phase 1.5_. |confirm
step
_The Lich King_ |goto 49.8,50.4
_Phase 1.5_
|tip Remorseless Winter creates a large winter storm that deals 7000-8000 Frost damage every second to all raid members within 45 yards.
|tip Pain and Suffering deals 2800-3200 Shadow damage and an additional 500 Shadow damage every second for 3 seconds in a frontal cone.
|tip Summon Ice Sphere spawns an Ice Sphere that moves towards its target. If it reaches them it deals 9400-10,600 Frost damage to all players within 10 yards, also knocking them back.
|tip Raging Spirit rips out a piece of the target's spirit, spawning a Raging Spirit that deals 20,000 Shadow damage to all players in a 15 yard frontal cone and silencing them for 5 seconds.
|tip Quake occurs at the end of the phase, the Lich King sends out shockwaves, causing the edge of the platform to crumble.
Click here to move to _Phase 2_. |confirm
step
_The Lich King_ |goto 49.8,50.4
_Phase 2_
|tip Infest deals 6500-7500 Shadow damage to the raid, also increasing their Shadow damage taken.
|tip Soul Reaper hits the target for 50% weapon damage and applies Soul Reaper, which deals 50,000 Shadow damage after 5 seconds. Also increases the Lich King's haste by 100% for 5 seconds.
|tip Defile creates a defiled area under a player's feet, dealing damage to anyone inside it and growing in size whenever it deals damage.
|tip Summon Val'kyr spawns a Val'kyr Shadowguard, which picks up a random player and tries to throw them off the edge of the platform if not killed in time.
|tip Phase 2.5 starts when the Lich King falls below 40% health.
Click here to advance to _Phase 2.5_. |confirm
step
_The Lich King_ |goto 49.8,50.4
_Phase 2.5_
|tip Remorseless Winter creates a large winter storm that deals 7000-8000 Frost damage every second to all raid members within 45 yards.
|tip Pain and Suffering deals 2800-3200 Shadow damage and an additional 500 Shadow damage every second for 3 seconds in a frontal cone.
|tip Summon Ice Sphere spawns an Ice Sphere that moves towards its target. If it reaches them it deals 9400-10,600 Frost damage to all players within 10 yards, also knocking them back.
|tip Raging Spirit rips out a piece of the target's spirit, spawning a Raging Spirit that deals 20,000 Shadow damage to all players in a 15 yard frontal cone and silencing them for 5 seconds.
|tip Quake occurs at the end of the phase, the Lich King sends out shockwaves, causing the edge of the platform to crumble.
Click here to proceed to _Phase 3_. |confirm
step
_The Lich King_ |goto 49.8,50.4
_Phase 3_
|tip Soul Reaper hits the target for 50% weapon damage and applies Soul Reaper, which deals 50,000 Shadow damage after 5 seconds. Also increases the Lich King's haste by 100% for 5 seconds.
|tip Defile creates a defiled area under a player's feet, dealing damage to anyone inside it and growing in size whenever it deals damage.
|tip Vile Spirits spawns 10 Vile Spirit adds which attack the raid after 30 seconds. They can explode when near players, dealing 20,000 Shadow damage to players within 5 yards.
|tip Harvest Souls deals 7500 Shadow damage every second for 6 seconds. If the targets are still alive when this expires, they are sent into Frostmourne.
_Inside Frostmourne_
|tip There is an NPC and a mob inside. A tank can pick up the mob, who will also need to be interrupted. Healers can heal the NPC and all DPS have 60 seconds to kill the mob. Failure to kill the mob in time results in all players' deaths.
|tip Phase 4 starts when the Lich King reaches 10% health.
Click here to advance to _Phase 4_. |confirm
step
kill The Lich King##36597 |goto 49.8,50.4
_Phase 4_
|tip Fury of Frostmourne occurs at the beginning of Phase 4, dealing Shadow damage to the entire raid.
|tip Raise Dead raises the dead back to life to fight again for the Lich King.
|tip Enrage occurs after 15 minutes of combat. It increases his damage by 900% and attack speed by 150%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
|confirm
step
Congratulations, you have finished the Icecrown Citadel raid guide!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Northrend Raids\\Naxxramas",{
mapid=162,
achieveid={576, 577},
patch='30001',
condition_suggested=function() return level>=27 and level<=30 end,
keywords={"Dragonblight, Plague, Construct, Military, Arachnid, Quarter"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the Naxxramas Raid.",
},[[
step
Enter Naxxramas |goto Naxxramas/5 54.1,49.8 < 1000
|tip The entrance is in the building up in the air.
step
This raid has 5 different sections. You can start at any of them.
Click here to start in the Arachnid Quarter |next "arachnidstart" |confirm
Click here to start in the Plague Quarter |next "plaguestart" |confirm
Click here to start in the Military Quarter |next "militarystart" |confirm
Click here to start in the Construct Quarter |next "constructstart" |confirm
Click here to start in Frostwyrm Lair |next "frostwyrmstart" |confirm
step
label "arachnidstart"
map Naxxramas/5
path loop off
path	55.1,47.1	Naxxramas/2 33.2,74.6	Naxxramas/2 33.1,65.1
path	Naxxramas/2 30.7,56.7
Follow the path, clearing trash as you make your way to the first arachnid boss, Anub'Rekhan. |goto Naxxramas/2 30.7,56.7 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Anub'Rekhan_ |goto 30.7,43.9
Click here for 10 man abilities |next "anub10" |confirm
Click here for 25 man abilities |next "anub25" |confirm
step
label "anub10"
kill Anub'Rekhan##15956 |goto 30.7,43.9
|tip Impale is an AoE that hits a random raid member and everyone in a straight line in between them dealing 4800-6100 damage, then launching all affected players into the air and dealing 50% fall damage.
|tip Locus Swarm Anub'Rekhan slows to 60% normal movement speed and deals AoE damage to all those within 30 yards around him as he moves.  Remaining within range of the AoE applies a stacking DoT that deals 1100 Nature damage every 2 seconds, and silences the player. This also spawns a Crypt Guard add.
|tip Summon Corpse Scarabs occurs whenever there is a corpse in the room (either a player or a Crypt Guard), Anub'Rekhan spawns Corpse Scarabs from it. 10 spawn from a Crypt Guard corpse and 5 from a player corpse, moving with threat toward a random player.
|next "anubcomplete" |confirm
step
label "anub25"
kill Anub'Rekhan##15956 |goto 30.7,43.9
|tip Impale is an AoE that hits a random raid member and everyone in a straight line in between them dealing 5700-7300 damage, then launching all affected players into the air and dealing 50% fall damage.
|tip Locus Swarm Anub'Rekhan slows to 75% normal movement speed and deals AoE damage to all those within 30 yards around him as he moves.  Remaining within range of the AoE applies a stacking DoT that deals 1500 Nature damage every 2 seconds, and silences the player. This also spawns a Crypt Guard add.
|tip Summon Corpse Scarabs occurs whenever there is a corpse in the room (either a player or a Crypt Guard), Anub'Rekhan spawns Corpse Scarabs from it. 10 spawn from a Crypt Guard corpse and 5 from a player corpse, moving with threat toward a random player.
|tip Enrage occurs after 10 minutes of combat. It increases his damage by 500% and attack speed by 150%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
|next "anubcomplete" |confirm
step
label "anubcomplete"
map Naxxramas/2
path loop off
path	32.6,64.0	39.2,65.1	44.9,56.8
path	50.0,50.4	52.2,40.9	49.0,36.4
Follow the path, clearing trash as you make your way to the next boss, Grand Widow Faerlina. |goto 49.0,36.4 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Grand Widow Faerlina_ |goto 44.5,36.0
Click here for 10 man abilities. |next "widow10" |confirm
Click here for 25 man abilities. |next "widow25" |confirm
step
label "widow10"
kill Grand Widow Faerlina##15953 |goto 44.5,36.0
|tip Poison Bolt Volley hits the 10 closest players to Faerlina, dealing 2600-3300 Nature damage and applies a DoT that deals 1500 Nature damage every 2 seconds for 8 seconds.
|tip Rain of Fire is cast on random raid members during the fight. It deals 1750-275 Fire damage every 2 seconds and lasts 6 seconds.
|tip Frenzy occurs every 60-80 seconds, increasing  Faerlina's damage by 150%, attack speed by 50%, and size by 50%.
|next "widowcomplete" |confirm
step
label "widow25"
kill Grand Widow Faerlina##15953 |goto 44.5,36.0
|tip Poison Bolt Volley hits the 10 closest players to Faerlina, dealing 3300-4200 Nature damage and applies a DoT that deals 2000 Nature damage every 2 seconds for 8 seconds.
|tip Rain of Fire is cast on random raid members during the fight. It deals 3700-4300 Fire damage every 2 seconds and lasts 6 seconds.
|tip Frenzy occurs every 60-80 seconds, increasing  Faerlina's damage by 150%, attack speed by 50%, and size by 50%.
|next "widowcomplete" |confirm
step
label "widowcomplete"
map Naxxramas/2
path loop off
path	52.1,41.7	53.7,50.0	59.3,54.8
path	59.5,67.2	64.3,70.6	67.7,60.6
path	67.9,51.9	64.0,35.9	62.7,29.5
path	64.7,25.1
Follow the path, clearing trash as you make your way to the next boss, Maexxna. |goto 64.7,25.1 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Maexxna_ |goto 69.8,16.2
Click here for 10 man abilities. |next "maexxna10" |confirm
Click here for 25 man abilities. |next "maexxna25" |confirm
step
label "maexxna10"
kill Maexxna##15952 |goto 69.8,16.2
|tip Web Wrap occurs after 20 seconds, and then every 40 seconds after that. Sends a random raid member flying towards the webs on the western side of the wall, encasing and stunning them in a cocoon. The cocoons must be killed by other raid members to release the trapped member. When trapped inside, the player takes 2500-3000 Nature damage every 2 seconds.
|tip Web Spray occurs every 40 seconds, stunning everyone in the room for 6 seconds, dealing 1700-2200 Nature damage.
|tip Poison Shock deals 3500-4500 Nature damage in a frontal cone. Make sure the tank is the only one in front of Maexxna when this occurs,
|tip Necrotic Poison is a debuff applied to raid members in front of Maexxna that reduces healing by 75% for 30 seconds.
|tip Frenzy occurs at 30%, increasing damage by 50%, attack speed by 50%, and size by 15%.
|next "maexxnacomplete" |confirm
step
label "maexxna25"
kill Maexxna##15952 |goto 69.8,16.2
|tip Web Wrap occurs after 20 seconds, and then every 40 seconds after that. Sends a random raid member flying towards the webs on the western side of the wall, encasing and stunning them in a cocoon. The cocoons must be killed by other raid members to release the trapped member. When trapped inside, the player takes 2500-3000 Nature damage every 2 seconds.
|tip Web Spray occurs every 40 seconds, stunning everyone in the room for 6 seconds, dealing 2100-2800 Nature damage.
|tip Poison Shock deals 4500-4580 Nature damage in a frontal cone. Make sure the tank is the only one in front of Maexxna when this occurs,
|tip Necrotic Poison is a debuff applied to raid members in front of Maexxna that reduces healing by 90% for 30 seconds.
|tip Frenzy occurs at 30%, increasing damage by 75%, attack speed by 50%, and size by 15%.
|next "maexxnacomplete" |confirm
step
label "maexxnacomplete"
You have cleared the Arachnid Quarter!
Click here to start the Plague Quarter |next "plaguestart" |confirm
Click here to start the Military Quarter |next "militarystart" |confirm
Click here to start the Construct Quarter |next "constructstart" |confirm
Click here to start Frostwyrm Lair |next "frostwyrmstart" |confirm
Click here if you've cleared the whole raid |next "raidend" |confirm
step
label "plaguestart"
map Naxxramas/5
path loop off
path	54.9,52.2	Naxxramas/4 33.0,22.8	Naxxramas/4 35.6,28.6
path	Naxxramas/4 33.5,37.6	Naxxramas/4 33.5,50.0
Follow the path, clearing trash as you make your way to the first boss, Noth the Plaguebringer. |goto Naxxramas/4 33.5,50.0 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Noth the Plaguebringer_ |goto 34,54
Click here for 10 man abilities. |next "noth10" |confirm
Click here for 25 man abilities. |next "noth25" |confirm
step
label "noth10"
kill Noth the Plaguebringer##15954 |goto 34,54
_Phase 1_
|tip Curse of the Plaguebringer affects 3 random raid members. If the curse is not removed within 10 seconds it will inflict _Wrath of the Plaguebringer_.
|tip Wrath of the Plaguebringer for every missed curse, all players within 30 yards take 3700-4300 Shadow damage and 1500 Shadow damage every 2 seconds for 10 seconds.
|tip Summon Plagued Warriors occurs every 30 seconds, Noth spawns 2 Plagued Warrior adds. They have a _cleave_.
|tip Berserk occurs after 3 skeleton phases. It increases his damage by 1000%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
_Phase 2_
|tip Every 110 seconds Noth teleports away and becomes invulnerable while waves of skeletons attack the raid. This lasts 70 seconds.
|tip Plagued Champions: use mortal strike, which is a cleave.
|tip Plagued Guardians: use Arcane Explosion, which deals 4000 damage to all raid members within 30 yards.
|next "nothcomplete" |confirm
step
label "noth25"
kill Noth the Plaguebringer##15954 |goto 34,54
_Phase 1_
|tip Curse of the Plaguebringer affects 10 random raid members. If the curse is not removed within 10 seconds it will inflict _Wrath of the Plaguebringer_ on them and all allies within 30 yards.
|tip Wrath of the Plaguebringer for every missed curse, all players within 30 yards take 5500-6500 Shadow damage and 3500 Shadow damage every 2 seconds for 10 seconds.
|tip Blink Noth teleports, completely wiping aggro.
|tip Cripple occurs after a Blink, affect players in the area he teleports from, slowing their movement speed by 50%, attack speed by 100%, and strength by 50%.
|tip Summon Plagued Warriors occurs every 30 seconds, Noth spawns 2 Plagued Warrior adds. They have a cleave.
|tip Berserk occurs after 3 skeleton phases. It increases his damage by 1000%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
_Phase 2_
|tip Every 110 seconds Noth teleports away and becomes invulnerable while waves of skeletons attack the raid. This lasts 70 seconds.
|tip Plagued Champions: use mortal strike, which is a cleave.
|tip Plagued Guardians: use Arcane Explosion, which deals 6000 damage to all raid members within 30 yards.
|next "nothcomplete" |confirm
step
label "nothcomplete"
map Naxxramas/4
path loop off
path	39.3,56.8	43.6,35.7	50.0,35.6
Follow the path, clearing trash as you make your way to the next boss, Heigan the Unclean. |goto 50.0,35.6 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Heigan the Unclean_ |goto 51.1,43.2
Click here for 10 man abilities. |next "heigan10" |confirm
Click here for 25 man abilities. |next "heigan25" |confirm
step
label "heigan10"
kill Heigan the Unclean##15936 |goto 51.1,43.2
_Phase 1_
|tip Spell Disruption is a 30 yard AoE aura around Heigan. It increases cast time by 300% to anyone inside it.
|tip Decrepit Fever is applied to a random raid member, dealing 4500 Nature damage every 3 seconds and reduces the max health of all players within 20 yards by 50%.
_Phase 2_
|tip Occurs after 90 seconds Heigan teleports to the middle of the raised platform.
|tip Plague Cloud deals 7500 Nature damage every second to anyone on the raised platform.
|tip Eruption affects 3/4 of the remaining area of the room. It deals 6500-7300 Nature damage each hit.
|next "heigancomplete" |confirm
step
label "heigan25"
kill Heigan the Unclean##15936 |goto 51.1,43.2
_Phase 1_
|tip Spell Disruption is a 20 yard AoE aura around Heigan. It increases cast time by 300% to anyone inside it.
|tip Decrepit Fever is applied to a random raid member, dealing 3000 Nature damage every 3 seconds and reduces the max health of all players within 20 yards by 50%.
_Phase 2_
|tip Occurs after 90 seconds Heigan teleports to the middle of the raised platform.
|tip Plague Cloud deals 7500 Nature damage every second to anyone on the raised platform.
|tip Eruption affects 3/4 of the remaining area of the room. It deals 6500-7300 Nature damage each hit.
|next "heigancomplete" |confirm
step
label "heigancomplete"
map Naxxramas/4
path loop off
path	53.9,45.9	58.7,28.5	71.2,28.4
Follow the path, clearing trash as you make your way to the last plague boss, Loatheb. |goto 71.2,28.4 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Loatheb_ |goto 75.0,28.5
Click here for 10 man abilities. |next "loa10" |confirm
Click here for 25 man abilities. |next "loa25" |confirm
step
label "loa10"
kill Loatheb##16011 |goto 75.0,28.5
|tip Necrotic Aura occurs every 20 seconds, reducing the healing done by the raid by 100% for 17 seconds.
|tip Deathblossom occurs every 30 seconds, affecting the entire raid. It deals 200 Nature damage every second for 6 seconds, and then deals 1200 damage.
|tip Inevitable Doom occurs after 2 minutes of combat. Every 30 seconds it inflicts 4000 Shadow damage.
|tip Fungal Creep is a buff that increases critical chance by 50% and spells and abilities cause no threat. This buff lasts 90 seconds. Every 30 seconds more Spores are spawned. Killing these allow 5 raid members to get the buff.
|next "loacomplete" |confirm
step
label "loa25"
kill Loatheb##16011 |goto 75.0,28.5
|tip Necrotic Aura occurs every 20 seconds, reducing the healing done by the raid by 100% for 17 seconds.
|tip Deathblossom occurs every 30 seconds, affecting the entire raid. It deals 400 Nature damage every second for 6 seconds, and then deals 1500 damage.
|tip Inevitable Doom occurs after 2 minutes of combat. Every 30 seconds it inflicts 5000 Shadow damage.
|tip Fungal Creep is a buff that increases critical chance by 50% and spells and abilities cause no threat. This buff lasts 90 seconds. Every 20 seconds more Spores are spawned. Killing these allow 5 raid members to get the buff.
|next "loacomplete" |confirm
step
label "loacomplete"
You have cleared the Plague Quarter!
Click here to start the Arachnid Quarter |next "arachnidstart" |confirm
Click here to start the Military Quarter |next "militarystart" |confirm
Click here to start the Construct Quarter |next "constructstart" |confirm
Click here to start Frostwyrm Lair |next "frostwyrmstart" |confirm
Click here if you've cleared the whole raid |next "raidend" |confirm
step
label "militarystart"
map Naxxramas/5
path loop off
path	51.7,52.0	Naxxramas/3 64.6,25.1	Naxxramas/3 55.1,32.4
path	Naxxramas/3 49.7,44.8	Naxxramas/3 52.8,44.1	Naxxramas/3 42.7,39.3
Follow the path, clearing trash as you make your way to the first boss, Instructor Razuvious. |goto Naxxramas/3 42.7,39.3 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Instructor Razuvious_ |goto 42.7,44
Click here for 10 man abilities. |next "raz10" |confirm
Click here for 25 man abilities. |next "raz25" |confirm
step
label "raz10"
kill Instructor Razuvious##16061 |goto 42.7,44
|tip Disrupting Shout occurs about every 15 seconds. It is an AoE that deals 4200-4700 Physical damage to the whole raid.
|tip Jagged Knife occurs every 10 seconds and affects a random raid member. It deals 5000 Physical damage and applies a DoT which deals 10,000 damage over 5 seconds.
|tip Unbalancing Strike inflicts 350% weapon damage and reduces the target's defense skill by 100 for 6 seconds. Only the _Death Knight Understudies_ should be hit with this, as it deals about 100,000 damage.
|next "razcomplete" |confirm
step
label "raz25"
kill Instructor Razuvious##16061 |goto 42.7,44
|tip Disrupting Shout occurs about every 15 seconds. It is an AoE that deals 7100-7800 Physical damage to the whole raid.
|tip Jagged Knife occurs every 10 seconds and affects a random raid member. It deals 5000 Physical damage and applies a DoT which deals 10,000 damage over 5 seconds.
|tip Unbalancing Strike inflicts 350% weapon damage and reduces the target's defense skill by 100 for 6 seconds. Only the _Death Knight Understudies_ should be hit with this, as it deals about 100,000 damage.
|next "razcomplete" |confirm
step
label "razcomplete"
map Naxxramas/3
path loop off
path	42.5,51.6	54.2,50.1	57.1,43.6
path	66.4,44.7
Follow the path, clearing trash as you make your way to the next boss, Gothik the Harvester. |goto 66.4,44.7 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Gothik the Harvester_ |goto 66.9,58.2
Click here for 10 man abilities. |next "got10" |confirm
Click here for 25 man abilities. |next "got25" |confirm
step
label "got10"
kill Gothik the Harvestor## |goto 66.9,58.2
_Phase 1_
|tip Adds spawn on both sides of the room and Grothik is invulnerable. After 4 minutes and 34 seconds he comes down and is attackable.
_Phase 2_
|tip Shadowbolt hits Grothik's target for 2800-3500 Shadow damage.
|tip Harvest Soul occurs every 15 seconds. It reduces the stats the entire raid by 10%. It can stack up to 10 times.
|next "gotcomplete" |confirm
step
label "got25"
kill Gothik the Harvestor## |goto 66.9,58.2
_Phase 1_
|tip Adds spawn on both sides of the room and Grothik is invulnerable. After 4 minutes and 34 seconds he comes down and is attackable.
_Phase 2_
|tip Shadowbolt hits Grothik's target for 4500-5500 Shadow damage.
|tip Harvest Soul occurs every 15 seconds. It reduces the stats the entire raid by 10%. It can stack up to 10 times.
|next "gotcomplete" |confirm
step
label "gotcomplete"
map Naxxramas/3
path loop off
path	62.4,62.3	58.5,72.3	50.2,72.4
path	41.9,67.2	36.0,68.1
Follow the path, clearing trash as you make your way to the last boss,the Four Horsemen. |goto 36.0,68.1 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_The Four Horseman_ |goto 30,75
Click here for 10 man abilities. |next "four10" |confirm
Click here for 25 man abilities. |next "four25" |confirm
step
label "four10"
_The Four Horsemen_ |goto 30,75
kill Thane Korth'azz##16064
|tip Meteor deals 13,750-15,250 Fire damage split between all players in an 8 yard radius.
|tip Mark of Korth'azz is a stacking debuff which increases in damage every stack. Players should be rotated between bosses to avoid their debuffs stacking too high.
kill Baron Rivendare##30549
|tip Unholy Shadow deals 2100-2600 Shadow and a DoT that deals 4800 Shadow damage over 8 seconds.
|tip Mark of Rivendareis a stacking debuff which increases in damage every stack. Players should be rotated between bosses to avoid their debuffs stacking too high.
kill Lady Blaumeux##16065
|tip Shadow Bolt deals 2500 Shadow damage to the closest player.
|tip Void Zone summons a void zone on a random raid member within 45 yards. It deals 2750 Shadow damage every second to anyone in it.
|tip Mark of Blaumeux is a stacking debuff which increases in damage every stack. Players should be rotated between bosses to avoid their debuffs stacking too high.
|tip Unyielding Pain occurs if no player with aggro is within 55 yards of her. She will spam this ability, dealing 6000 Shadow damage to the entire raid.
kill Sir Zeliek##16063
|tip Holy Blast deals 2500 Holy damage to the closest player.
|tip Mark of Zeliek is a stacking debuff which increases in damage every stack. Players should be rotated between bosses to avoid their debuffs stacking too high.
|tip Condemnation occurs if no player with aggro is within 55 yards. It deals 6000 damage to the entire raid.
|next "fourcomplete" |confirm
step
label "four25"
_The Four Horsemen_ |goto 30,75
kill Thane Korth'azz##16064
|tip Meteor deals 47,500-52,500 Fire damage split between all players in an 8 yard radius.
|tip Mark of Korth'azz is a stacking debuff which increases in damage every stack. Players should be rotated between bosses to avoid their debuffs stacking too high.
kill Baron Rivendare##30549
|tip Unholy Shadow deals 4500-5500 Shadow and a DoT that deals 12,000 Shadow damage over 8 seconds.
|tip Mark of Rivendare is a stacking debuff which increases in damage every stack. Players should be rotated between bosses to avoid their debuffs stacking too high.
kill Lady Blaumeux##16065
|tip Shadow Bolt deals 8500-9500 Shadow damage to the closest player.
|tip Void Zone summons a void zone on a random raid member within 45 yards. It deals 4200 Shadow damage every second to anyone in it.
|tip Mark of Blaumeux is a stacking debuff which increases in damage every stack. Players should be rotated between bosses to avoid their debuffs stacking too high.
|tip Unyielding Pain occurs if no player with aggro is within 55 yards of her. She will spam this ability, dealing 6000 Shadow damage to the entire raid.
kill Sir Zeliek##16063
|tip Holy Blast deals 9000-10,000 Holy damage to the closest player.
|tip Mark of Zeliek is a stacking debuff which increases in damage every stack. Players should be rotated between bosses to avoid their debuffs stacking too high.
|tip Condemnation occurs if no player with aggro is within 55 yards. It deals 6000 damage to the entire raid.
|next "fourcomplete" |confirm
step
label "fourcomplete"
You have cleared the Military Quarter!
You can use the Naxxramas Portal here to return to the start of the raid. |goto Naxxramas/3 27.9,80.4
Click here to start the Arachnid Quarter |next "arachnidstart" |confirm
Click here to start the Plague Quarter |next "plaguestart" |confirm
Click here to start the Construct Quarter |next "constructstart" |confirm
Click here to start Frostwyrm Lair |next "frostwyrmstart" |confirm
Click here if you've cleared the whole raid |next "raidend" |confirm
step
label "constructstart"
map Naxxramas/5
path loop off
path	52.1,47.6	Naxxramas/1 68.2,77.0	Naxxramas/1 63.8,70.3
path	Naxxramas/1 56.8,66.3	Naxxramas/1 52.6,70.5	Naxxramas/1 49.5,73.3
path	Naxxramas/1 47.3,61.3
Follow the path, clearing trash as you make your way to the first boss, Patchwerk. |goto Naxxramas/1 47.3,61.3 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Patchwerk_ |goto 50.9,54.6
Click here for 10 man abilities. |next "werk10" |confirm
Click here for 25 man abilities. |next "werk25" |confirm
step
label "werk10"
kill Patchwerk##16028 |goto 53.8,50.3
|tip WARNING, clear this room first, if not cleared the trash will pull with the boss.
|tip Hateful Strike melee attack that deals 20,000-27,000 Physical damage. Also adds threat to the three players with the highest aggro.
|tip Frenzy occurs at 5%, increasing his damage by 25% and attack speed by 40%.
|tip Berserk occurs after 6 minutes of combat. It increases his damage by 500% and attack speed by 150%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
|next "werkcomplete" |confirm
step
label "werk25"
kill Patchwerk##16028 |goto 53.8,50.3
|tip WARNING, clear this room first, if not cleared the trash will pull with the boss.
|tip Hateful Strike melee attack that deals 80,000 Physical damage to 2 raid members. Also adds threat to the three players with the highest aggro.
|tip Frenzy occurs at 5%, increasing his damage by 25% and attack speed by 40%.
|tip Berserk occurs after 6 minutes of combat. It increases his damage by 500% and attack speed by 150%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
|next "werkcomplete" |confirm
step
label "werkcomplete"
map Naxxramas/1
path loop off
path	55.0,40.7	59.7,46.5
Follow the path, clearing trash as you make your way to the next boss,. |goto 59.7,46.5 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Grobbulus_ |goto 63.5,52.7
|tip He walks up and down this ramp, you may have to wait for him.
Click here for 10 man abilities. |next "grob10" |confirm
Click here for 25 man abilities. |next "grob25" |confirm
step
label "grob10"
kill Grobbulus##15931 |goto 63.5,52.7
|tip WARNING, clear this room first, if not cleared the trash will pull with the boss.
|tip Poison Cloud are dropped below Grobbulus every 15 seconds. They expand over time and last 75 seconds. They deal 2000 Nature damage every second.
|tip Slime Spray deals 6300-7700 Nature damage to enemie in front of Grobbulus in a 45 cone. Make sure the tank is the only one in front of Grobbulus when this occurs. Players hit by this summon a Fallout Slime add.
|tip Mutating Injection is cast on a random raid member. After 10 seconds, or if cleansed, it deals 8000-9000 Nature damage to everyone within 20 yards.
|tip Berserk occurs after 12 minutes of combat. It increases his damage by 1000%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
|next "grobcomplete" |confirm
step
label "grob25"
kill Grobbulus##15931 |goto 63.5,52.7
|tip WARNING, clear this room first, if not cleared the trash will pull with the boss.
|tip Poison Cloud are dropped below Grobbulus every 15 seconds. They expand over time and last 75 seconds. They deal 4250 Nature damage every second.
|tip Slime Spray deals 12,000-13,000 Nature damage to enemie in front of Grobbulus in a 45 cone. Make sure the tank is the only one in front of Grobbulus when this occurs. Players hit by this summon a Fallout Slime add.
|tip Mutating Injection is cast on a random raid member. After 10 seconds, or if cleansed, it deals 8000-9000 Nature damage to everyone within 20 yards.
|tip Berserk occurs after 9 minutes of combat. It increases his damage by 1000%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
|next "grobcomplete" |confirm
step
label "grobcomplete"
map Naxxramas/1
path loop off
path	66.9,53.0	60.9,57.5	60.0,60.8
path	58.0,61.4	55.2,57.1	50.3,49.8
Follow the path, clearing trash as you make your way to the next boss, Gluth. He will aggro as soon as you enter the room. |goto 50.3,49.8 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Gluth_ |goto 48.1,46.8
Click here for 10 man abilities. |next "gluth10" |confirm
Click here for 25 man abilities. |next "gluth25" |confirm
step
label "gluth10"
kill Gluth##15932 |goto 48.1,46.8
|tip Mortal Wound applies a stacking debuff that reduces the effectiveness of healing by 10% for 15 seconds.
|tip Enrage increases Gluth's attack speed and damage by 25% for 8 seconds.
|tip Decimate reduces the health of all nearby targets (enemies and friendlies) to 5%.
|tip Devour Zombie Gluth moves towards any zombies that get near him. They heal him for 5%.
|tip Berserk occurs after 8 minutes of combat. It increases his damage by 500% and attack speed by 150%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
|next "gluthcomplete" |confirm
step
label "gluth25"
kill Gluth##15932 |goto 48.1,46.8
|tip Mortal Wound applies a stacking debuff that reduces the effectiveness of healing by 10% for 15 seconds.
|tip Enrage increases Gluth's attack speed by 100%.
|tip Decimate reduces the health of all nearby targets (enemies and friendlies) to 5%.
|tip Devour Zombie Gluth moves towards any zombies that get near him. They heal him for 5%.
|tip Berserk occurs after 8 minutes of combat. It increases his damage by 1000%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
|next "gluthcomplete" |confirm
step
label "gluthcomplete"
map Naxxramas/1
path loop off
path	42.5,38.6	34.9,27.2
Follow the path, clearing trash as you make your way to the next boss, Thaddius. |goto 34.9,27.2 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Thaddius_ |goto 29,19
Click here for 10 man abilities. |next "thaddius10" |confirm
Click here for 25 man abilities. |next "thaddius25" |confirm
step
label "thaddius10"
_Feugen_
|tip Static Field deals 2500 Nature damage every 3 seconds to anyone within 60 yards.
|tip Magnetic Pull pulls Stalagg's tank to Feugen every 30 seconds and switches their threat.
_Stalagg_
|tip Power Surge increases Stalagg's attack speed by 200% for 10 seconds.
|tip Magnetic Pull pulls Feugen's tank to Stalagg every 30 seconds and switches their threat.
kill Thaddius##15928 |goto 26.9,14.9
|tip Chain Lightning hits 3 random raid members for 3600-4400 Nature damage.
|tip Polarity Shift charges the entire raid either negatively or positively, split roughly half and half. When standing on another player with the same charge a 10% damage buff is gained. When standing on people with opposite charges, both deal 3500 damage to each other.
|tip Ball Lightning occurs if no one is in melee range of Thaddius, it deals 17,500-22,500 Nature damage.
|tip Enrage occurs after 6 minutes of combat. It increases his damage by 1000%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
|next "thaddiuscomplete" |confirm
step
label "thaddius25"
_Feugen_
|tip Static Field deals 3500 Nature damage every 3 seconds to anyone within 60 yards.
|tip Magnetic Pull pulls Stalagg's tank to Feugen every 30 seconds and switches their threat.
_Stalagg_
|tip Power Surge increases Stalagg's attack speed by 200% for 10 seconds.
|tip Magnetic Pull pulls Feugen's tank to Stalagg every 30 seconds and switches their threat.
kill Thaddius##15928 |goto 26.9,14.9
|tip Chain Lightning hits 5 random raid members for 7000-8000 Nature damage.
|tip Polarity Shift charges the entire raid either negatively or positively, split roughly half and half. When standing on another player with the same charge a 10% damage buff is gained. When standing on people with opposite charges, both deal 4500 damage to each other.
|tip Ball Lightning occurs if no one is in melee range of Thaddius, it deals 17,500-22,500 Nature damage.
|tip Enrage occurs after 6 minutes of combat. It increases his damage by 1000%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
|next "thaddiuscomplete" |confirm
step
label "thaddiuscomplete"
You have cleared the Construct Quarter!
You can use the Naxxramas Portal here [Naxxramas/1 27.2,10.7] to return to the start of the raid.
Click here to start the Arachnid Quarter |next "arachnidstart" |confirm
Click here to start the Plague Quarter |next "plaguestart" |confirm
Click here to start the Military Quarter |next "militarystart" |confirm
Click here to start Frostwyrm Lair |next "frostwyrmstart" |confirm
Click here if you've cleared the whole raid |next "raidend" |confirm
step
label "frostwyrmstart"
Start here |goto Naxxramas/5 53.4,50.1 |n
Click the Orb of Naxxramas to teleport to the Upper Necropolis. |goto Naxxramas/6 73.6,72.8 <5 |noway |c
step
_Sapphiron_ |goto 59,68
Click here for 10 man abilities. |next "sapp10" |confirm
Click here for 25 man abilities. |next "sapp25" |confirm
step
label "sapp10"
kill Sapphiron##15989 |goto 59,68
_Phase 1_
|tip He has a cleave and tailslap. Raid members need to stay from the front and back of him to avoid damage from these.
|tip Frost Aura hits the entire raid for 1200 Frost damage shortly after she is engaged. It continues to do damage every 2 seconds until she is slain.
|tip Life Drain is a debuff that affect two random raid members. It drains 2100-2800 health as Shadow damage and heals Sapphiron for 4300-5600 every 3 seconds.
|tip Chill is an ice storm that moves around the room while Sapphiron is engaged. It deals 3500-4500 Frost damage every 2 seconds and slows their movement speed by 50% for 10 seconds, affecting everyone within it.
_Phase 2_
|tip Phase 2 starts after 45 seconds, Sapphiron takes to the air, knocking back all players within melee range.
|tip Ice Bolt affects two players per air phase. Each player is encased in ice, stunning them until the ice shatters, dealing 2500-3400 Frost damage to them and 15,000 damage to nearby players within 5 yards.
|tip Frost Breath occurs after Sapphiron uses "Ice Bolt" twice. Sapphiron starts casting, taking 7 seconds to complete the cast. Once casted, it deals 150,000 Frost damage to everyone in the room. This can be avoided by taking cover behind the ice blocks.
|tip Enrage occurs after 15 minutes of combat. It increases his damage by 500% and attack speed by 150%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
|next "sappquest" |confirm
step
label "sapp25"
kill Sapphiron##15989 |goto 59,68
_Phase 1_
|tip He has a cleave and tailslap. Raid members need to stay from the front and back of him to avoid damage from these.
|tip Frost Aura hits the entire raid for 1600 Frost damage shortly after she is engaged. It continues to do damage every 2 seconds until he is slain.
|tip Life Drain is a debuff that affect two random raid members. It drains 4500-5500 health as Shadow damage and heals Sapphiron for 9000-11,000 every 3 seconds for 12 seconds.
|tip Chill is an ice storm that moves around the room while Sapphiron is engaged. It deals 5500-6500 Frost damage every 2 seconds and slows their movement speed by 50% for 10 seconds, affecting everyone within it.
_Phase 2_
|tip Phase 2 starts after 45 seconds, Sapphiron takes to the air, knocking back all players within melee range.
|tip Ice Bolt affects two players per air phase. Each player is encased in ice, stunning them until the ice shatters, dealing 6300-7700 Frost damage to them and all nearby players.
|tip Frost Breath occurs after Sapphiron uses "Ice Bolt" twice. Sapphiron starts casting, taking 7 seconds to complete the cast. Once casted, it deals 150,000 Frost damage to everyone in the room. This can be avoided by taking cover behind the ice blocks.
|tip Enrage occurs after 15 minutes of combat. It increases his damage by 500% and attack speed by 150%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
|next "sappquest" |confirm
step
label "sappquest"
Sapphiron may have dropped you a quest item.
Click the Key to the Focusing Iris in your bags |use Key to the Focusing Iris##44569
accept The Key to the Focusing Iris##13372 |or
Click the Heroic Key to the Focusing Iris in your bags |use Heroic Key to the Focusing Iris##44577
accept The Heroic Key to the Focusing Iris##13375 |or
|next "sappcomplete"
step
label "sappcomplete"
map Naxxramas/6
path loop off
path	45.0,64.0	35.7,55.0	34.2,41.0
Follow the path to the last boss, Kel'Thuzad. |goto 34.2,41.0 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Kel'Thuzad_ |goto 36,25
Click here for 10 man abilities. |next "kel10" |confirm
Click here for 25 man abilities. |next "kel25" |confirm
step
label "kel10"
kill Kel'Thuzad##15990 |goto 36,25
_Phase 1_
|tip Kel'Thuzad is invulnerable. You must kill the adds he spawns.
_Phase 2_
|tip Begins after 3 minutes and 48 seconds.
|tip Frost Bolt (single) inflicts 10,000-13,000 Frost damage and reduces movement speed by 50% for 4 seconds.
|tip Frost Bolt (multiple) hits the entire raid, inflicting 4500-5500 Frost damage and reducing their movement speed for 4 seconds.
|tip Mana Detonation is a debuff applied to a random mana-user. The player will explode after 5 seconds, dealing Arcane damage to all players within 10 yards based on their maximum mana.
|tip Shadow Fissure summons a red fissure around the targeted player which deals 62,000-137,500 Shadow damage after 5 seconds.
|tip Frost Blast places an Ice Block on the targeted player and all players within 10 yards of them, stunning them. This effect will continue to chain to additional players within 10 yards. It deals 104% of their maximum health as damage over 4 seconds. If they are not healed in that time they will die.
_Phase 3_
|tip Occurs at 45% health.
|tip 2 Guardians of Ice Crown adds are summoned to attack the raid, but despawn when Kel'Thuzad dies.
|next "kelcomplete" |confirm
step
label "kel25"
kill Kel'Thuzad##15990 |goto 36,25
_Phase 1_
|tip Kel'Thuzad is invulnerable. You must kill the adds he spawns.
_Phase 2_
|tip Begins after 3 minutes and 48 seconds.
|tip Frost Bolt (single) inflicts 30,000 Frost damage and reduces movement speed by 50% for 4 seconds. This must be interrupted.
|tip Frost Bolt (multiple) hits the entire raid, inflicting 7000-8800 Frost damage and reducing their movement speed for 4 seconds.
|tip Mana Detonation is a debuff applied to a random mana-user. The player will explode after 5 seconds, dealing Arcane damage to all players within 10 yards based on their maximum mana.
|tip Shadow Fissure summons a red fissure around the targeted player which deals 62,000-137,500 Shadow damage after 5 seconds.
|tip Frost Blast places an Ice Block on the targeted player and all players within 10 yards of them, stunning them. This effect will continue to chain to additional players within 10 yards. It deals 104% of their maximum health as damage over 4 seconds. If they are not healed in that time they will die.
|tip Chains of Kel'Thuzad mind controls up to 3 raid members, increasing their damage by 200% and healing by 500%. This lasts 20 seconds and they will buff and heal Kel'Thuzad.
_Phase 3_
|tip Occurs at 45% health.
|tip 2 Guardians of Ice Crown adds are summoned to attack the raid, but despawn when Kel'Thuzad dies.
|next "kelcomplete" |confirm
step
label "kelcomplete"
You have cleared Frostwyrm Lair!
Click here to start the Arachnid Quarter |next "arachnidstart" |confirm
Click here to start the Plague Quarter |next "plaguestart" |confirm
Click here to start the Military Quarter |next "militarystart" |confirm
Click here to start the Construct Quarter |next "constructstart" |confirm
Click here if you've cleared the whole raid |next "raidend" |confirm
step
label "raidend"
talk Alexstrasza the Life-Binder##26917
|tip She is at the very top of Wyrmrest Temple.
turnin The Key to the Focusing Iris##13372 |goto Dragonblight/0 59.8,54.6
|only if haveq(13372)
step
talk Alexstrasza the Life-Binder##26917
|tip She is at the very top of Wyrmrest Temple.
turnin The Heroic Key to the Focusing Iris##13375 |goto Dragonblight/0 59.8,54.6
|only if haveq(13375)
step
Congratulations, you have finished the Naxxramas raid guide!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Northrend Raids\\The Obsidian Sanctum",{
mapid=155,
achieveid={1876, 625},
patch='30001',
condition_suggested=function() return level>=27 and level<=30 end,
keywords={"Sartharion, Onyx, Drake, Dragonblight"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the Obsidian Sanctum Raid.",
},[[
step
Go down into the large fissure, following it underneath Wyrmrest Temple. |goto Dragonblight/0 59.7,49.3 < 50
step
Enter The Obsidian Sanctum |goto Dragonblight/0 60.0,56.7
step
This raid has 10 man and 25 man versions.
The abilities and strategies are the same, the only differences being the enemies' increased health and damage in 25 man.
|confirm
step
The boss of this raid, Sartharion, is found at this location. |goto The Obsidian Sanctum/0 52.8,47.6
|tip He has 3 drake lieutenants, Shadron, Tenebron, and Vesperon. You can kill all 3 drakes or leave some combination of them alive. Killing Sartharion with one or more lieutenants alive increase the difficulty and quality of loot that drops.
|tip For each lieutenant left alive, the raid will receive a debuff when engaging Sartharion:
_Power of Shadron_
|tip This increases the raid's Fire damage taken by 100%.
_Power of Tenebron_
|tip This increases the raid's Shadow damage taken by 100%.
_Power of Vesperon_
|tip This decreases the raid's maximumm health by 25%.
Click here to kill Shadron |next "shadron" |confirm
Click here to kill Tenebron |next "tenebron" |confirm
Click here to kill Vesperon |next "vesperon" |confirm
Click here to kill Sartharion! |next "sarth" |confirm
step
label "shadron"
kill Shadron##30451 |goto 51.5,34.5
|tip Shadow Breath is a fronal cleave, dealing 7000-8000 Shadow damage (9000-10,000 in heroic). Make sure the tank is the only one in front of him when this occurs.
|tip Shadow Fissure creates a shadowy area on the ground, which hits everyone within it for 6000-9000 damage after 5 seconds (9500-13,500 in heroic).
Click here to kill Tenebron |next "tenebron" |confirm
Click here to kill Vesperon |next "vesperon" |confirm
Click here to kill Sartharion! |next "sarth" |confirm
step
label "tenebron"
kill Tenebron##30452 |goto 41,48.5
|tip Shadow Breath is a fronal cleave, dealing 7000-8000 Shadow damage (9000-10,000 in heroic). Make sure the tank is the only one in front of him when this occurs.
|tip Shadow Fissure creates a shadowy area on the ground, which hits everyone within it for 6000-9000 damage after 5 seconds (9500-13,500 in heroic).
Click here to kill Shadron |next "shadron" |confirm
Click here to kill Vesperon |next "vesperon" |confirm
Click here to kill Sartharion! |next "sarth" |confirm
step
label "vesperon"
kill Vesperon##30449 |goto 52.5,62.5
|tip Shadow Breath is a fronal cleave, dealing 7000-8000 Shadow damage (9000-10,000 in heroic). Make sure the tank is the only one in front of him when this occurs.
|tip Shadow Fissure creates a shadowy area on the ground, which hits everyone within it for 6000-9000 damage after 5 seconds (9500-13,500 in heroic).
Click here to kill Shadron |next "shadron" |confirm
Click here to kill Tenebron |next "tenebron" |confirm
Click here to kill Sartharion! |next "sarth" |confirm
step
label "sarth"
_Sartharion_ |goto 53.3,47.8
|tip If any of the 3 drake lieutenants are still alive when engaged, the corresponding debuff will be applied to the raid.
|tip Sartharion will also call for the lieutenants' assistance, aggroing them and their nearby adds onto the raid.
|confirm
step
kill Sartharion##28860 |goto 53.3,47.8
|tip Cleave hits the target and up to 10 nearby raid members. Make sure the tank is the only one in front of Satharion when this occurs.
|tip Tail Lash hits all raid members behind Satharion, inflicting 3000-4000 damage (4300-5600 on heroic).
|tip Fire Breath inflicts 8700-11,200 Fire damage (11,000-14,000 on heroic) to enemies in a cone in front of Sartharion. Make sure the tank is the only one in front of him when this occurs.
|tip Enrage occurs after 15 minutes of combat. It increases his damage by 500% and attack speed by 150%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
|confirm
step
Congratulations, you have finished the Obsidian Sanctum raid guide!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Northrend Raids\\Onyxia's Lair",{
mapid=248,
achieveid={4396, 4397},
patch='30202',
condition_suggested=function() return level>=27 and level<=30 end,
keywords={"Dustwallow, Marsh"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the Onyxia's Lair Raid.",
},[[
step
Enter Onyxia's Lair |goto Dustwallow Marsh/0 52.86,77.40
confirm
step
kill Onyxian Warder##12129+
map Onyxia's Lair/1
path follow smart; loop off; ants curved; dist 15
path	39.7,23.8	41.3,32.9	43.9,56.8
path	54.0,76.6	65.9,81.8	67.5,59.7
Follow the path, killing the Onyxian Warders as you go |goto 67.5,59.7 < 8
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Onyxia##10184
_Phase 1_:
|tip Onyxia will use Flame Breath, dealing fire damage in a frontal cone
|tip Cleave deals damage to anyone standing in front of her
|tip Wing Buffet will deal damage and knock the tank back
|tip Avoid standing behind her or Tail Sweep may knock you into the whelp caves
_Phase 2_:
|tip At 65%, she will take flight
|tip During this time, she will use Fireball and Breath. Watch for her flight path to avoid the wave of fire from Breath
|tip She will occasionally spawn Lair Guards and Whelps. Burn these down quickly.
_Phase 3_:
|tip This phase is the same as phase 1, with the additon of Bellowing Roar (Fear) and Eruption
|tip Eruption will deal fire damage to anyone near the cracks in the floor. This follows Bellowing Roar
|tip Small numbers of Onyxian Whelps will spawn randomly
confirm
step
Congratulations! You have completed Onyxia's Lair.
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Northrend Raids\\The Ruby Sanctum",{
mapid=200,
achieveid={4817, 4815},
patch='30305',
condition_suggested=function() return level>=27 and level<=30 end,
keywords={"Dragonblight, Halion"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the Ruby Sanctum Raid.",
},[[
step
Go down into the large fissure, following it underneath Wyrmrest Temple. |goto Dragonblight/0 59.7,49.3 < 50
step
Enter The Ruby Sanctum |goto Dragonblight/0 61.25,52.69 < 5
confirm
step
This raid has 3 mini bosses that must be killed before the final boss, Halion, emerges.
|tip The first 2 can be killed in any order, then unlocking access to the third boss.
Click here to kill Balharus |next "balth" |confirm
Click here to kill Saviana |next "sav" |confirm
step
label "balth"
kill Baltharus the Warborn##39751 |goto The Ruby Sanctum/0 65.8,53.9
|tip Blade Tempest is a cleave that deals 70% of weapon damage. Make sure the tank is the only one in front of Baltharus when this occrs.
|tip Repelling Wave knocks nearby raid members back, inflicting 4100-4800 Fire damage and stunning them for 3 seconds.
|tip Summon Clone occurs when Baltharus is at 50% health. He spawns a clone of himself with the same health.
|tip Enervating Brand affects the target and any raid members within 12 yards of them. This occurs every 2 seconds and reduces the affected players' damage by 2% per stack, while increasing Baltharus' damage simultaneously.
Click here to kill the other beginning boss, Saviana |next "sav" |confirm
Click here to kill the third boss, General Zarithrian |next "gen" |confirm
step
label "sav"
kill Saviana Ragefire##39747 |goto 36.5,53.7
|tip Flame Breath hits as a cleave, inflicting 24,500-31,500 Fire damage. Make sure the tank is the only one in front of Saviana when this occurs.
|tip Enrage increases his attack speed by 150% and causes Fire Nova, which inflicts 7600 Fire damage to players within 100 yards.
|tip Conflagration occurs during air phases, Saaviana enguls the targeted raid member in flames, dealing 8000 Fire damage to them and all other raid members in 10 yards.
|tip Flame Beacon occurs during air phases, Saviana targets 3 people and deals 24,500-31,500 damage (33,700-43,00 in heroic).
Click here to kill the other beginning boss, Balharus |next "balth" |confirm
Click here to kill the third boss, General Zarithrian |next "gen" |confirm
step
label "gen"
kill General Zarithrian##39746 |goto 49.6,80.1
|tip Cleave Armor is a debuff that reduces the target's armor by 20% for 30 seconds and stacks up to 5 times.
|tip Intimidating Roar is an AoE sun, paralyzing raid members near Zarithrian for 4 seconds.
|tip Summon Flamecaller_ spawns 3 Onyx Firecallers.
Click here to kill the final boss, Halion! |next "hel" |confirm
step
label "hel"
kill Halion##39863 |goto 49.3,53.9
_Phase 1_
|tip Halion has the typical dragon abilities, including two frontal cleaves and a tail lash. The tank should be the only one in front of him and all raid members should stay away from his tail.
|tip Fiery Combustion engulfs the target in flame, dealing 4000 Fire damage every 2 seconds, every tick applies Mark of Combustion which deals 3000 Fire damage per charge.
|tip Meteor Strike deals 18,000-22,000 Fire damage to enemies within 12 yards.
_Phase 2_
|tip Halion spawns a portal to the Twilight realm. The raid should split and kill Halion in both realms
|tip Dark Breath is a frontal cone, inflicting 17,000-23,000 Shadow damage. Make sure the tank is the only one in front of Halion when this occurs.
|tip Dusk Shroud is an aura the eminates from Halion. Raid members near him take 3000 Shadwo damage every 2 seconds.
|tip Soul Consumption deals 4000 Shadow damage every 2 seconds. Every time this deals damage it applies Mark of Consumption, which deals 3000 Shadow damage per charge.
|confirm
step
Congratulations, you have finished the Ruby Sanctum raid guide!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Northrend Raids\\Trial of the Crusader",{
mapid=172,
achieveid={3917, 3916},
patch='30302',
condition_suggested=function() return level>=27 and level<=30 end,
keywords={"Argent, Tournament, Grounds, Icecrown, ToC"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the Trial of the Crusader Raid.",
},[[
step
Enter Trial of the Crusader |goto Icecrown/0 75.10,21.82 < 5
confirm
step
talk Barrett Ramsey##34816 |goto Trial of the Crusader/1 64.8,54.1
Tell him "Yes. We are prepared for the challenges ahead of us."
This will start the first boss fight, make sure you are ready.
|confirm
step
_Beasts of Northrend_ |goto 51.3,52.5
Click here for 10 man abilities. |next "beasts10" |confirm
Click here for 25 man abilities. |next "beasts25" |confirm
step
label "beasts10"
_Beasts of Northrend_
_Phase 1_
kill Gormok the Impaler##34796 |goto 51.3,52.5
|tip Staggering Stomp deals 8000 Physical damage to all raid members within 15 yards and interrupts spellcasting for 8 seconds.
|tip Impale inflicts 100% weapon damage to the target and applies a bleed DoT that deals 1400-1800 damage every 2 seconds for 30 seconds. Stackable.
_Snobold Vassals_
|tip Four of these adds jump from Gormok's back.
|tip Fire Bomb deals 4800-6200 Fire damage to all enemies within 8 yards of the targeted player.
|tip Head Crack stuns the target for 2 seconds.
|tip Batter strikes a player for 75% of normal damage and interrupts spellcasting for 5 seconds.
Click here to move to _Phase 2_. |confirm
step
_Beasts of Northrend_
_Phase 2_
kill Acidmaw##35144 |goto 51.3,52.5
|tip Paralytic Bite inflicts 7800-9200 Nature damage and applies Paralytic Toxin.
|tip Paralytic Toxin is a stacking debuff that inflicts increasing Nature damage and reduces movement speed. Exposure to Burning Bile removes this effect.
|tip Slime Pool deals 5000-6000 Nature damage to players within the targeted area.
|tip Sweep deals 6800-8000 Physical damage to players within 15 yards and knocks them back. Only used while rooted.
kill Dreadscale##34799
|tip Burning Bite deals 7800-9000 Fire damage and coats them with Burning Bile. This effect removes any stacks of Paralytic Toxin.
|tip Molten Spew deals 2750-3225 Fire damage every 0.25 seconds for 2.5 seconds to players in front of Dreadscale.
|tip Slime Pool inflicts 5000-6000 Nature damage to players within the targeted area.
|tip Burning Spray does 7000-8000 Fire damage to the target and nearby players, also coating them with Burning Bile.
|tip Sweep inflicts 7000-8000 Physical damage to enemies within 15 yards and knocks them back. Only used while rooted.
Click here to advance to _Phase 3_. |confirm
step
_Beasts of Northrend_
_Phase 3_
kill Icehowl##34797 |goto 51.3,52.5
|tip Arctic Breath freezes targets in a cone in front of Icehowl, dealing 15,000 Frost damage over 5 seconds.
|tip Ferocious Butt Icehowl headbutts the target, dealing 41,600-48,300 Physical damage and a 3 second stun.
|tip Massive Crash Icehowl leaps into the air and crashes down, dealing 7400-8600 Physical damage to the raid, stunning them and knocing them back.
|tip Whirl deals 7000-8000 Physical damage to all nearby players and knocks them back.
|tip Frothing Rage increases Icehowl's Physical damage and attack speed by 50%.
|next "beastscomplete" |confirm
step
label "beasts25"
_Beasts of Northrend_
_Phase 1_
kill Gormok the Impaler##34796 |goto 51.3,52.5
|tip Staggering Stomp deals 8200 Physical damage to all raid members within 15 yards and interrupts spellcasting for 8 seconds.
|tip Impale inflicts 100% weapon damage to the target and applies a bleed DoT that deals 2100-2800 damage every 2 seconds for 40 seconds. Stackable.
_Snobold Vassals_
|tip Four of these adds jump from Gormok's back.
|tip Fire Bomb deals 4800-6200 Fire damage to all enemies within 8 yards of the targeted player.
|tip Head Crack stuns the target for 2 seconds.
|tip Batter strikes a player for 75% of normal damage and interrupts spellcasting for 5 seconds.
Click here to move to _Phase 2_. |confirm
step
_Beasts of Northrend_
_Phase 2_
kill Acidmaw##35144 |goto 51.3,52.5
|tip Paralytic Bite inflicts 11,100-13,000 Nature damage and applies Paralytic Toxin.
|tip Paralytic Toxin is a stacking debuff that inflicts increasing Nature damage and reduces movement speed. Exposure to Burning Bile removes this effect.
|tip Slime Pool deals 5000-6000 Nature damage to players within the targeted area.
|tip Sweep deals 7000-8000 Physical damage to players within 15 yards and knocks them back. Only used while rooted.
kill Dreadscale##34799
|tip Burning Bite deals 13,000-15,000 Fire damage and coats them with Burning Bile. This effect removes any stacks of Paralytic Toxin.
|tip Molten Spew deals 3700-4300 Fire damage every 0.25 seconds for 2.5 seconds to players in front of Dreadscale.
|tip Slime Pool inflicts 5000-6000 Nature damage to players within the targeted area.
|tip Burning Spray does 7000-8000 Fire damage to the target and nearby players, also coating them with Burning Bile.
|tip Sweep inflicts 7000-8000 Physical damage to enemies within 15 yards and knocks them back. Only used while rooted.
Click here to advance to _Phase 3_. |confirm
step
_Beasts of Northrend_ |goto 51.3,52.5
_Phase 3_
kill Icehowl##34797 |goto 51.3,52.5
|tip Arctic Breath freezes targets in a cone in front of Icehowl, dealing 20,000 Frost damage over 5 seconds.
|tip Ferocious Butt Icehowl headbutts the target, dealing 70,000-80,000 Physical damage and a 3 second stun.
|tip Massive Crash Icehowl leaps into the air and crashes down, dealing 10,100-11,800 Physical damage to the raid, stunning them and knocing them back.
|tip Whirl deals 9200-10,750 Physical damage to all nearby players and knocks them back.
|tip Frothing Rage increases Icehowl's Physical damage and attack speed by 50%.
|next "beastscomplete" |confirm
step
label "beastscomplete"
talk Barrett Ramsey##35035 |goto 64.7,54.2
Tell him "What new challenge await us?"
This will start the next boss fight, make sure you are ready.
|confirm
step
_Lord Jaraxxus_ |goto 51.2,52.4
Click here for 10 man abilities. |next "jara10" |confirm
Click here for 25 man abilities. |next "jara25" |confirm
step
label "jara10"
kill Lord Jaraxxus##34780 |goto 51.2,52.4
|tip Nether Power Jaraxxus buffs himself, increasing magic damage by 20% per stack. Starts at 10 stacks but can be spellstolen or dispelled.
|tip Fel Fireball inflicts 15,100-15,800 damage and an additional 6000 Fire damage every second for 5 seconds.
|tip Fel Lightning deals 11,700-12,300 Fire damage to a random raid member and up to 4 additional nearby players.
|tip Legion Flame  deals 3000 Fire damage every second for 6 seconds to a random player. Also leaves a mark on the ground that deals the same damage.
|tip Incinerate Flesh absorbs the next 30,000 healing the target receives and decreases their damage by 50% for 12 seconds. If it is not removed before it expires this will cause a Burning Inferno.
|tip Burning Inferno deals 4000 Fire damage to the raid every second for 5 seconds.
|tip Nether Portal Jaraxxus opens a portal to the nether world, inflicting 9000 Shadow damage to players in a 10 yard radius of the portal and summoning a Mistress of Pain add.
|tip Infernal Eruption Jaraxxus summons an Infernal Volcano which deals 9500 Fire damage to nearby enemies and summons 3 Felflame Infernal adds.
_Mistress of Pain_
|tip Spinning Pain Spike she spins away from a random target, dealing 50% of their maximum health in Physical damage.
_Felflame Infernal_
|tip Fel Inferno affects a random raid member. The Infernal channels, dealing 5000 Fire damage every second to nearby raid members.
|tip Fel Streak inflicts 6500 Fire damage to their primary target.
|next "jaracomplete" |confirm
step
label "jara25"
kill Lord Jaraxxus##34780 |goto 51.2,52.4
|tip Nether Power Jaraxxus buffs himself, increasing magic damage by 20% per stack. Starts at 10 stacks but can be spellstolen or dispelled.
|tip Fel Fireball inflicts 24,300-25,600 damage and an additional 9500 Fire damage every second for 5 seconds.
|tip Fel Lightning deals 11,700-12,300 Fire damage to a random raid member and up to 4 additional nearby players.
|tip Legion Flame  deals 3000 Fire damage every second for 6 seconds to a random player. Also leaves a mark on the ground that deals the same damage.
|tip Incinerate Flesh absorbs the next 60,000 healing the target receives and decreases their damage by 50% for 12 seconds. If it is not removed before it expires this will cause a _Burning Inferno_.
|tip Burning Inferno deals 4000 Fire damage to the raid every second for 5 seconds.
|tip Nether Portal Jaraxxus opens a portal to the nether world, inflicting 9000 Shadow damage to players in a 10 yard radius of the portal and summoning a Mistress of Pain add.
|tip Infernal Eruption Jaraxxus summons an Infernal Volcano which deals 9500 Fire damage to nearby enemies and summons 3 Felflame Infernal adds.
_Mistress of Pain_
|tip Spinning Pain Spike she spins away from a random target, dealing 50% of their maximum health in Physical damage.
_Felflame Infernal_
|tip Fel Inferno affects a random raid member. The Infernal channels, dealing 5000 Fire damage every second to nearby raid members.
|tip Fel Streak inflicts 6500 Fire damage to their primary target.
|next "jaracomplete" |confirm
step
label "jaracomplete"
The next boss fight has many similarities to arena-style PvP. Having a few pieces of PvP gear helps but is not required.
You will fight a team consisting of members of the opposite faction. The individual members are randomly selected from a pool of possible NPCs.
|confirm
step
talk Barrett Ramsey##35035 |goto 64.7,54.2
Tell him "Of course!"
This will start the next boss fight, make sure you are ready.
|confirm
step
_The Faction Champions_ |goto 51.2,52.4
|tip The AI of the enemy NPCs behave a lot like players in PvP.
|tip Healer NPCs switch to spam heals on DPS members.
|tip Damage-dealing NPCs gang up on a single raid member, especially those with low health.
|tip All members, even the healers, use crowd control abilities such as Polymorph, Fear, Hex, and Banish.
|tip Their AI uses proximity, health, and damage to determine who they attack. Try to avoid being in the center of their group; they are likely to all turn and one shot you. If you're AoE'ing, be ready to get aggro.
|tip A general strategy is to use all cooldowns as soon as the fight starts (Bloodlust/Heroism, trinkets, etc) and try and kill the healers first. The fight gets immensely easier after each kill.
|confirm
step
talk Barrett Ramsey##35035 |goto 64.7,54.2
Tell him "That tough, huh?"
This will start the next boss fight, make sure you are ready.
|confirm
step
_The Twin Val'kyr_ |goto 51.2,52.4
Click here for 10 man abilities. |next "twin10" |confirm
Click here for 25 man abilities. |next "twin25" |confirm
step
label "twin10"
_The Twin Val'kyr_
kill Fjola Lightbane##34497, Eydis Darkbane##34496 |goto 51.2,52.4
|tip The Light and Dark Essences look like portals and spawn next to the bosses before the fight starts. Attuning to one of these and then collecting their Concentrated Essence increases your damage by 100% when attacking the Twin with the same Essence.
kill Fjola Lightbane##34497
|tip Shield of Lights absorbs 175,000 damage and prevents spell interruption for 15 seconds.
|tip Light Fortex is channeled for 5 seconds and deals 6000 damage every second.
|tip Surge of Light deals 1500 damage every 2 seconds to non-Light players.
|tip Touch of Light deals 6000 Light damage every 2 seconds to players under the effects of Dark Essence. Does not harm those with Light Essence.
kill Eydis Darkbane##34496
|tip Shield of Darkness absorbs 175,000 damage and prevents spell interruption for 15 seconds.
|tip Dark Vortex this spell is channeled for 5 seconds and deals 6000 damage every second.
|tip Surge of Darkness deals 1500 damage every 2 seconds to non-Dark players.
|tip Touch of Darkness inflicts 6000 Dark damage every 2 seconds to players under the effects of Light Essence. Does not harm those with Dark Essence.
_Shared abilities:_
|tip Twin's Pact heals them for 20% of their maximum health.
|tip Power of the Twins occurs when one Twin begins casting Twin's Pact, the other gains this buff, increasing that Twin's damage by 20% and enables her to dual-wield. While this buff is active, each successful melee attack further increases her attack speed by 10% until the buff fades.
|tip Twin Spike deals 100% weapon damage and inflicts a debuff that increases the target's damage taken by 20% for 15 seconds or 10 charges.
_Concentrated Essences_
|tip Absorb these white or black spheres when attuned to the same Essence to deal 100% extra damage to the corresponding Twin.
|next "twincomplete" |confirm
step
label "twin25"
_The Twin Val'kyr_
kill Fjola Lightbane##34497, Eydis Darkbane##34496 |goto 51.2,52.4
|tip The Light and Dark Essences look like portals and spawn next to the bosses before the fight starts. Attuning to one of these and then collecting their Concentrated Essence increases your damage by 100% when attacking the Twin with the same Essence.
kill Fjola Lightbane##34497
|tip Shield of Lights absorbs 700,000 damage and prevents spell interruption for 15 seconds.
|tip Light Fortex is channeled for 5 seconds and deals 9000 damage every second.
|tip Surge of Light deals 2500 damage every 2 seconds to non-Light players.
|tip Touch of Light deals 9000 Light damage every 2 seconds to players under the effects of Dark Essence. Does not harm those with Light Essence.
kill Eydis Darkbane##34496
|tip Shield of Darkness absorbs 700,000 damage and prevents spell interruption for 15 seconds.
|tip Dark Vortex this spell is channeled for 5 seconds and deals 6000 damage every second.
|tip Surge of Darkness deals 2500 damage every 2 seconds to non-Dark players.
|tip Touch of Darkness inflicts 9000 Dark damage every 2 seconds to players under the effects of Light Essence. Does not harm those with Dark Essence.
_Shared abilities:_
|tip Twin's Pact heals them for 20% of their maximum health.
|tip Power of the Twins occurs when one Twin begins casting Twin's Pact, the other gains this buff, increasing that Twin's damage by 20% and enables her to dual-wield. While this buff is active, each successful melee attack further increases her attack speed by 10% until the buff fades.
|tip Twin Spike deals 100% weapon damage and inflicts a debuff that increases the target's damage taken by 20% for 15 seconds or 10 charges.
_Concentrated Essences_
|tip Absorb these white or black spheres when attuned to the same Essence to deal 100% extra damage to the corresponding Twin.
|next "twincomplete" |confirm
step
label "twincomplete"
talk Barrett Ramsey##35035 |goto 64.7,54.2
Tell him "Your words of praise are appreciated."
This will start the final boss fight, make sure you are ready.
|confirm
step
|goto 51.2,52.4 |n
The Lich King will appear and then destroy the floor, sending the raid falling down below. |goto Trial of the Crusader/2 |noway |c
step
_Anub'arak_ |goto Trial of the Crusader/2 53.5,34.0
Click here for 10 man abilities. |next "anu10" |confirm
Click here for 25 man abilities. |next "anu25" |confirm
step
label "anu10"
kill Anub'arak##34564 |goto 53.5,34.0
_Phase 1:_ Anub'arak on the ground.
|tip Freezing Slash deals 25% Froststrike weapon damage (Frost or Physical damage, whichever deals more to the target), also freezes the target in ice for 3 seconds.
|tip Penetrating Cold is cast on 2 random raid members, dealing 3500 Frost damage every 3 seconds for 18 seconds. When this expires on its targets it is automatically applied to 2 new targets.
|tip Submerge Anub'arak submerges underground. This starts Phase 2.
_Phase 2:_ Anub'arak underground.
|tip Pursued by Anub'arak Anub'arak is following you!
|tip Impale occurs if Anub'arak reaches his target. It deals 17,500-20,000 damage
|tip Pursuing Spikes fires a spike through the floor, impaling all players within 4 yards and dealing 2800-3200 damage and knocking them into the air.
|tip Summon Scarab spawns a Swarm Scarab from the ground
_Phase 3:_ the leeching swarm.
|tip Leeching Swarm occurs when Anub'arak is 30% of his maximum health. He releases a swarm of insects that attack the raid, leeching 10% of the targets' current health every second. The health leeched heals Anub'arak for the same amount.
|next "anucomplete" |confirm
step
label "anu25"
kill Anub'arak##34564 |goto 53.5,34.0
_Phase 1:_ Anub'arak on the ground.
|tip Freezing Slash deals 25% Froststrike weapon damage (Frost or Physical damage, whichever deals more to the target), also freezes the target in ice for 3 seconds.
|tip Penetrating Cold is cast on 5 random raid members, dealing 3500 Frost damage every 3 seconds for 18 seconds. When this expires on its targets it is automatically applied to 5 new targets.
|tip Submerge Anub'arak submerges underground. This starts Phase 2.
_Phase 2:_ Anub'arak underground.
|tip Pursued by Anub'arak Anub'arak is following you!
|tip Impale occurs if Anub'arak reaches his target. It deals 17,500-20,000 damage
|tip Pursuing Spikes fires a spike through the floor, impaling all players within 4 yards and dealing 2800-3200 damage and knocking them into the air.
|tip Summon Scarab spawns a Swarm Scarab from the ground
_Phase 3:_ the leeching swarm.
|tip Leeching Swarm occurs when Anub'arak is 30% of his maximum health. He releases a swarm of insects that attack the raid, leeching 10% of the targets' current health every second. The health leeched heals Anub'arak for the same amount.
|next "anucomplete" |confirm
step
label "anucomplete"
Congratulations, you have finished the Trial of the Crusader raid guide!
There is a portal to Dalaran at this spot. [Trial of the Crusader/2 51.3,56.9]
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Northrend Raids\\Trial of the Grand Crusader",{
mapid=172,
achieveid={3918, 3812},
patch='40200',
condition_suggested=function() return level>=27 and level<=30 end,
keywords={"Argent, Tournament, Grounds, Icecrown, TotGC"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the Trial of the Grand Crusader Raid.",
},[[
step
Enter Trial of the Grand Crusader |goto Icecrown/0 75.10,21.82 < 5
confirm
step
The major difference between this raid and the Trial of the Crusader is the Argent Crusade Tribute Chest.
All boss encounters in this raid are in Heroic Mode and the raid is given 50 attempts to complete it.
If the raid wipes 50 times all undefeated bosses will despawn and be unavailable for the remainder of the lockout period.
When the raid is completed, higher amounts of remaining attempts will reward more and higher quality loot and extra achievements.
|confirm
step
talk Barrett Ramsey##34816 |goto Trial of the Crusader/1 64.8,54.1
Tell him "Yes. We are prepared for the challenges ahead of us."
This will start the first boss fight, make sure you are ready.
|confirm
step
_Beasts of Northrend_ |goto 51.3,52.5
Click here for 10 man abilities. |next "beasts10" |confirm
Click here for 25 man abilities. |next "beasts25" |confirm
step
label "beasts10"
_Beasts of Northrend_ |goto 51.3,52.5
_Phase 1_
kill Gormok the Impaler##34796
|tip Staggering Stomp deals 9200-9800 Physical damage to all raid members within 15 yards and interrupts spellcasting for 8 seconds.
|tip Impale inflicts 150% weapon damage to the target and applies a bleed DoT that deals 2600-3300 damage every 2 seconds for 30 seconds. Stackable.
_Snobold Vassals_
|tip Four of these adds jump from Gormok's back.
|tip Fire Bomb deals 4800-6200 Fire damage to all enemies within 8 yards of the targeted player.
|tip Head Crack stuns the target for 2 seconds.
|tip Batter strikes a player for 75% of normal damage and interrupts spellcasting for 5 seconds.
Click here to move to _Phase 2_. |confirm
step
_Beasts of Northrend_ |goto 51.3,52.5
_Phase 2_
kill Acidmaw##35144
|tip Paralytic Bite inflicts 13,000-15,000 Nature damage and applies Paralytic Toxin.
|tip Paralytic Toxin is a stacking debuff that inflicts increasing Nature damage and reduces movement speed. Exposure to Burning Bile removes this effect.
|tip Slime Pool deals 5000-6000 Nature damage to players within the targeted area.
|tip Sweep deals 8300-9700 Physical damage to players within 15 yards and knocks them back. Only used while rooted.
kill Dreadscale##34799
|tip Burning Bite deals 13,000-15,0000 Fire damage and coats them with Burning Bile. This effect removes any stacks of Paralytic Toxin.
|tip Molten Spew deals 3700-4300 Fire damage every 0.25 seconds for 2.5 seconds to players in front of Dreadscale.
|tip Slime Pool inflicts 5000-6000 Nature damage to players within the targeted area.
|tip Burning Spray does 8300-9700 Fire damage to the target and nearby players, also coating them with Burning Bile.
|tip Sweep inflicts 8300-9700 Physical damage to enemies within 15 yards and knocks them back. Only used while rooted.
Click here to advance to _Phase 3_. |confirm
step
_Beasts of Northrend_ |goto 51.3,52.5
_Phase 3_
kill Icehowl##34797
|tip Arctic Breath freezes targets in a cone in front of Icehowl, dealing 20,000 Frost damage over 5 seconds.
|tip Ferocious Butt Icehowl headbutts the target, dealing 55,500-64,500 Physical damage and a 3 second stun.
|tip Massive Crash Icehowl leaps into the air and crashes down, dealing 10,100-11,800 Physical damage to the raid, stunning them and knocing them back.
|tip Whirl deals 9000-10,750 Physical damage to all nearby players and knocks them back.
|tip Frothing Rage increases Icehowl's Physical damage and attack speed by 50%.
|next "beastscomplete" |confirm
step
label "beasts25"
_Beasts of Northrend 25 man Heroic_ |goto 51.3,52.5
_Phase 1_
kill Gormok the Impaler##34796
|tip Staggering Stomp deals 11,700-12,300 Physical damage to all raid members within 15 yards and interrupts spellcasting for 8 seconds.
|tip Impale inflicts 150% weapon damage to the target and applies a bleed DoT that deals 4000-5000 damage every 2 seconds for 45 seconds. Stackable.
_Snobold Vassals_
|tip Four of these adds jump from Gormok's back.
|tip Fire Bomb deals 4800-6200 Fire damage to all enemies within 8 yards of the targeted player.
|tip Head Crack stuns the target for 2 seconds.
|tip Batter strikes a player for 75% of normal damage and interrupts spellcasting for 5 seconds.
Click here to move to _Phase 2_. |confirm
step
_Beasts of Northrend_ |goto 51.3,52.5
_Phase 2_
kill Acidmaw##35144
|tip Paralytic Bite inflicts 18,500-21,500 Nature damage and applies Paralytic Toxin.
|tip Paralytic Toxin is a stacking debuff that inflicts increasing Nature damage and reduces movement speed. Exposure to Burning Bile removes this effect.
|tip Slime Pool deals 5000-6000 Nature damage to players within the targeted area.
|tip Sweep deals 10,100-11,800 Physical damage to players within 15 yards and knocks them back. Only used while rooted.
kill Dreadscale##34799
|tip Burning Bite deals 18,500-21,500 Fire damage and coats them with Burning Bile. This effect removes any stacks of Paralytic Toxin.
|tip Molten Spew deals 4600-5300 Fire damage every 0.25 seconds for 2.5 seconds to players in front of Dreadscale.
|tip Slime Pool inflicts 5000-6000 Nature damage to players within the targeted area.
|tip Burning Spray does 13,000-15000 Fire damage to the target and nearby players, also coating them with Burning Bile.
|tip Sweep inflicts 10,000-11,800 Physical damage to enemies within 15 yards and knocks them back. Only used while rooted.
Click here to advance to _Phase 3_. |confirm
step
_Beasts of Northrend_ |goto 51.3,52.5
_Phase 3_
kill Icehowl##34797
|tip Arctic Breath freezes targets in a cone in front of Icehowl, dealing 30,000 Frost damage over 5 seconds.
|tip Ferocious Butt Icehowl headbutts the target, dealing 83,000-96,750 Physical damage and a 3 second stun.
|tip Massive Crash Icehowl leaps into the air and crashes down, dealing 10,100-11,800 Physical damage to the raid, stunning them and knocing them back.
|tip Whirl deals 13,000-15,000 Physical damage to all nearby players and knocks them back.
|tip Frothing Rage increases Icehowl's Physical damage and attack speed by 50%.
|next "beastscomplete" |confirm
step
label "beastscomplete"
talk Barrett Ramsey##35035 |goto 64.7,54.2
Tell him "What new challenge await us?"
This will start the next boss fight, make sure you are ready.
|confirm
step
_Lord Jaraxxus_ |goto 51.2,52.4
Click here for 10 man abilities. |next "jara10" |confirm
Click here for 25 man abilities. |next "jara25" |confirm
step
label "jara10"
kill Lord Jaraxxus##34780 |goto 51.2,52.4
|tip Nether Power Jaraxxus buffs himself, increasing magic damage by 20% per stack. Starts at 10 stacks but can be spellstolen or dispelled.
|tip Fel Firebal inflicts 15,100-15,800 damage and an additional 6000 Fire damage every second for 5 seconds.
|tip Fel Lightning deals 11,700-12,300 Fire damage to a random raid member and up to 4 additional nearby players.
|tip Legion Flame  deals 3000 Fire damage every second for 6 seconds to a random player. Also leaves a mark on the ground that deals the same damage.
|tip Incinerate Flesh absorbs the next 30,000 healing the target receives and decreases their damage by 50% for 12 seconds. If it is not removed before it expires this will cause a Burning Inferno.
|tip Burning Inferno deals 4000 Fire damage to the raid every second for 5 seconds.
|tip Nether Portal Jaraxxus opens a portal to the nether world, inflicting 9000 Shadow damage to players in a 10 yard radius of the portal and summoning a Mistress of Pain add.
|tip Infernal Eruption Jaraxxus summons an Infernal Volcano which deals 9500 Fire damage to nearby enemies and summons 3 Felflame Infernal adds.
_Mistress of Pain_
|tip Spinning Pain Spike she spins away from a random target, dealing 50% of their maximum health in Physical damage.
_Felflame Infernal_
|tip Fel Inferno affects a random raid member. The Infernal channels, dealing 5000 Fire damage every second to nearby raid members.
|tip Fel Streak inflicts 6500 Fire damage to their primary target.
|next "jaracomplete" |confirm
step
label "jara25"
kill Lord Jaraxxus##34780 |goto 51.2,52.4
|tip Nether Power Jaraxxus buffs himself, increasing magic damage by 20% per stack. Starts at 10 stacks but can be spellstolen or dispelled.
|tip Fel Fireball inflicts 24,300-25,600 damage and an additional 9500 Fire damage every second for 5 seconds.
|tip Fel Lightning deals 11,700-12,300 Fire damage to a random raid member and up to 4 additional nearby players.
|tip Legion Flame  deals 3000 Fire damage every second for 6 seconds to a random player. Also leaves a mark on the ground that deals the same damage.
|tip Incinerate Flesh absorbs the next 60,000 healing the target receives and decreases their damage by 50% for 12 seconds. If it is not removed before it expires this will cause a Burning Inferno.
|tip Burning Inferno deals 4000 Fire damage to the raid every second for 5 seconds.
|tip Nether Portal Jaraxxus opens a portal to the nether world, inflicting 9000 Shadow damage to players in a 10 yard radius of the portal and summoning a Mistress of Pain add.
|tip Infernal Eruption Jaraxxus summons an Infernal Volcano which deals 9500 Fire damage to nearby enemies and summons 3 Felflame Infernal adds.
|tip Touch of Jaraxxus inflicts 4000 Shadow damage every second to a random raid member. Applies Curse of the Nether to nearby players.
|tip Curse of the Nether inflicts 4500 Shadow damage every second for 15 seconds.
_Mistress of Pain_
|tip Spinning Pain Spike she spins away from a random target, dealing 50% of their maximum health in Physical damage.
_Felflame Infernal_
|tip Fel Inferno affects a random raid member. The Infernal channels, dealing 5000 Fire damage every second to nearby raid members.
|tip Fel Streak inflicts 6500 Fire damage to their primary target.
|next "jaracomplete" |confirm
step
label "jaracomplete"
The next boss fight has many similarities to arena-style PvP. Having a few pieces of PvP gear helps but is not required.
You will fight a team consisting of members of the opposite faction. The individual members are randomly selected from a pool of possible NPCs.
|confirm
step
talk Barrett Ramsey##35035 |goto 64.7,54.2
Tell him "Of course!"
This will start the next boss fight, make sure you are ready.
|confirm
step
_The Faction Champions_ |goto 51.2,52.4
|tip The AI of the enemy NPCs behave a lot like players in PvP.
|tip Healer NPCs switch to spam heals on DPS members.
|tip Damage-dealing NPCs gang up on a single raid member, especially those with low health.
|tip All members, even the healers, use crowd control abilities such as Polymorph, Fear, Hex, and Banish.
|tip Their AI uses proximity, health, and damage to determine who they attack. Try to avoid being in the center of their group; they are likely to all turn and one shot you. If you're AoE'ing, be ready to get aggro.
|tip A general strategy is to use all cooldowns as soon as the fight starts (Bloodlust/Heroism, trinkets, etc) and try and kill the healers first. The fight gets immensely easier after each kill.
|confirm
step
talk Barrett Ramsey##35035 |goto 64.7,54.2
Tell him "That tough, huh?"
This will start the next boss fight, make sure you are ready.
|confirm
step
_The Twin Val'kyr_ |goto 51.2,52.4
Click here for 10 man abilities. |next "twin10" |confirm
Click here for 25 man abilities. |next "twin25" |confirm
step
label "twin10"
_The Twin Val'kyr_ |goto 51.2,52.4
|tip The Light and Dark Essences look like portals and spawn next to the bosses before the fight starts. Attuning to one of these and then collecting their Concentrated Essence increases your damage by 100% when attacking the Twin with the same Essence.
kill Fjola Lightbane##34497
|tip Shield of Lights absorbs 300,000 damage and prevents spell interruption for 15 seconds.
|tip Light Fortex is channeled for 5 seconds and deals 6000 damage every second.
|tip Surge of Light deals 1500 damage every 2 seconds to non-Light players.
|tip Touch of Light deals 6000 Light damage every 2 seconds to players under the effects of Dark Essence. Does not harm those with Light Essence.
kill Eydis Darkbane##34496
|tip Shield of Darkness absorbs 300,000 damage and prevents spell interruption for 15 seconds.
|tip Dark Vortex this spell is channeled for 5 seconds and deals 6000 damage every second.
|tip Surge of Darkness deals 1500 damage every 2 seconds to non-Dark players.
|tip Touch of Darkness inflicts 6000 Dark damage every 2 seconds to players under the effects of Light Essence. Does not harm those with Dark Essence.
_Shared abilities:_
|tip Twin's Pact heals them for 50% of their maximum health.
|tip Power of the Twins occurs when one Twin begins casting Twin's Pact, the other gains this buff, increasing that Twin's damage by 20% and enables her to dual-wield. While this buff is active, each successful melee attack further increases her attack speed by 10% until the buff fades.
|tip Twin Spike deals 100% weapon damage and inflicts a debuff that increases the target's damage taken by 20% for 15 seconds or 10 charges.
_Concentrated Essences_
|tip Absorb these white or black spheres when attuned to the same Essence to deal 100% extra damage to the corresponding Twin.
|next "twincomplete" |confirm
step
label "twin25"
_The Twin Val'kyr_ |goto 51.2,52.4
|tip The Light and Dark Essences look like portals and spawn next to the bosses before the fight starts. Attuning to one of these and then collecting their Concentrated Essence increases your damage by 100% when attacking the Twin with the same Essence.
kill Fjola Lightbane##34497
|tip Shield of Lights absorbs 1,200,000 damage and prevents spell interruption for 15 seconds.
|tip Light Fortex is channeled for 5 seconds and deals 9000 damage every second.
|tip Surge of Light deals 2500 damage every 2 seconds to non-Light players.
|tip Touch of Light deals 9000 Light damage every 2 seconds to players under the effects of Dark Essence. Does not harm those with Light Essence.
kill Eydis Darkbane##34496
|tip Shield of Darkness absorbs 1,200,000 damage and prevents spell interruption for 15 seconds.
|tip Dark Vortex this spell is channeled for 5 seconds and deals 6000 damage every second.
|tip Surge of Darkness deals 2500 damage every 2 seconds to non-Dark players.
|tip Touch of Darkness inflicts 9000 Dark damage every 2 seconds to players under the effects of Light Essence. Does not harm those with Dark Essence.
_Shared abilities:_
|tip Twin's Pact heals them for 50% of their maximum health.
|tip Power of the Twins occurs when one Twin begins casting Twin's Pact, the other gains this buff, increasing that Twin's damage by 20% and enables her to dual-wield. While this buff is active, each successful melee attack further increases her attack speed by 10% until the buff fades.
|tip Twin Spike deals 100% weapon damage and inflicts a debuff that increases the target's damage taken by 20% for 15 seconds or 10 charges.
_Concentrated Essences_
|tip Absorb these white or black spheres when attuned to the same Essence to deal 100% extra damage to the corresponding Twin.
|next "twincomplete" |confirm
step
label "twincomplete"
talk Barrett Ramsey##35035 |goto 64.7,54.2
Tell him "Your words of praise are appreciated."
This will start the final boss fight, make sure you are ready.
|confirm
step
|goto 51.2,52.4 |n
The Lich King will appear and then destroy the floor, sending the raid falling down below. |goto Trial of the Crusader/2 |noway |c
step
_Anub'arak_ |goto Trial of the Crusader/2 53.5,34.0
Click here for 10 man abilities. |next "anu10" |confirm
Click here for 25 man abilities. |next "anu25" |confirm
step
label "anu10"
kill Anub'arak##34564 |goto 53.5,34.0
_Phase 1:_ Anub'arak on the ground.
|tip Freezing Slash deals 25% Froststrike weapon damage (Frost or Physical damage, whichever deals more to the target), also freezes the target in ice for 3 seconds.
|tip Penetrating Cold is cast on 2 random raid members, dealing 6000 Frost damage every 3 seconds for 18 seconds. When this expires on its targets it is automatically applied to 2 new targets.
|tip Submerge Anub'arak submerges underground. This starts Phase 2.
_Phase 2:_ Anub'arak underground.
|tip Pursued by Anub'arak Anub'arak is following you!
|tip Impale occurs if Anub'arak reaches his target. It deals 17,500-20,000 damage
|tip Pursuing Spikes fires a spike through the floor, impaling all players within 4 yards and dealing 2800-3200 damage and knocking them into the air.
|tip Summon Scarab spawns a Swarm Scarab from the ground
_Phase 3:_ the leeching swarm.
|tip Leeching Swarm occurs when Anub'arak is 30% of his maximum health. He releases a swarm of insects that attack the raid, leeching 10% of the targets' current health every second. The health leeched heals Anub'arak for the same amount.
|next "anucomplete" |confirm
step
label "anu25"
kill Anub'arak##34564 |goto 53.5,34.0
_Phase 1:_ Anub'arak on the ground.
|tip Freezing Slash deals 25% Froststrike weapon damage (Frost or Physical damage, whichever deals more to the target), also freezes the target in ice for 3 seconds.
|tip Penetrating Cold is cast on 5 random raid members, dealing 6000 Frost damage every 3 seconds for 18 seconds. When this expires on its targets it is automatically applied to 5 new targets.
|tip Submerge Anub'arak submerges underground. This starts Phase 2.
_Phase 2:_ Anub'arak underground.
|tip Pursued by Anub'arak Anub'arak is following you!
|tip Impale occurs if Anub'arak reaches his target. It deals 17,500-20,000 damage
|tip Pursuing Spikes fires a spike through the floor, impaling all players within 4 yards and dealing 2800-3200 damage and knocking them into the air.
|tip Summon Scarab spawns a Swarm Scarab from the ground
_Phase 3:_ the leeching swarm.
|tip Leeching Swarm occurs when Anub'arak is 30% of his maximum health. He releases a swarm of insects that attack the raid, leeching 10% of the targets' current health every second. The health leeched heals Anub'arak for the same amount.
|next "anucomplete" |confirm
step
label "anucomplete"
Congratulations, you have finished the Trial of the Grand Crusader raid guide!
There is a portal to Dalaran at this spot. [Trial of the Crusader/2 51.3,56.9]
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Northrend Raids\\Ulduar",{
mapid=147,
achieveid={2894, 2895},
patch='30100',
condition_suggested=function() return level>=27 and level<=30 end,
keywords={"Storm, Peaks, Old, God"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the Ulduar Raid.",
},[[
step
Enter Ulduar |goto The Storm Peaks/0 41.55,17.96 < 5
confirm
step
Click here if you would like Normal mode of The Flame Leviathan |next "Normal Mode"
Click here if you would like Hard mode of The Flame Leviathan |next "Hard Mode"
confirm
step
label "Normal Mode"
talk Brann Bronzebeard##33579 |goto Ulduar/1 49.9,86.0
Tell him "We're ready. Begin the assault!"
|confirm |next "Trash 1"
step
label "Hard Mode"
talk Lore Keeper of Norgannon##33686 |goto Ulduar/1 52.7,88.9
Tell him "Activate secondary defensive systems."
|confirm |next "Trash 2"
step
label "Trash 2"
You and your party can now climb into the siege vehicles and start the battle.
Salvaged Siege Engines are found at |goto Ulduar/1 50.0,90.0
|tip Melee and ranged damage dealer.
Salvaged Choppers are found at |goto Ulduar/1 51.6,86.1
|tip AoE kill Iron Dwarves on foot, drop ignitable oil patches, collect Gunners who have completed their mission, bring pyrite to Demolishers.
Salvaged Demolishers are found at |goto Ulduar/1 53.9,86.9
|tip Ranged damage dealer.
Click here once you've chosen your vehicles |confirm |next "Hard Trash"
step
label "Hard Trash"
Make your way north to the first boss, the Flame Leviathan |goto 49.1,45.1 < 10
|tip If you are on hard mode you may destroy towers to lower the difficulty of the boss.
Kill adds as you go. The Storm Beacon towers spawn an endless stream of adds, but can be destroyed to stop the spawning.
The Tower of Flames can be located here |goto 45.4,57.0
|tip When it is destroyed Flame Leviathan will lose Health, Damage, and one of his  hard mode abilities.
The Tower of Frost can be located here |goto 60.2,50.0
|tip When it is destroyed Flame Leviathan will lose Health, Damage, and one of his  hard mode abilities.
The Tower of Storms can be located here |goto 38.6,37.8
|tip When it is destroyed Flame Leviathan will lose Health, Damage, and one of his hard mode abilities.
The Tower of Life can be located here |goto 56.4,63.7
|tip When it is destroyed Flame Leviathan will lose Health, Damage, and one of his hard mode abilities.
You can find a repair station at [Ulduar/1 51.9,47.4].
|tip Driving over this will completely heal your vehicle and restore energy, steam pressure, and pyrite.
Another of these repair stations can be found at [Ulduar/1 46.5,47.1]
confirm |next "Bosstime 2"
step
label "Trash 1"
You and your party can now climb into the siege vehicles and start the battle.
Salvaged Siege Engines are found at |goto Ulduar/1 50.0,90.0
|tip Melee and ranged damage dealer.
Salvaged Choppers are found at |goto Ulduar/1 51.6,86.1
|tip AoE kill Iron Dwarves on foot, drop ignitable oil patches, collect Gunners who have completed their mission, bring pyrite to Demolishers.
Salvaged Demolishers are found at |goto Ulduar/1 53.9,86.9
|tip Ranged damage dealer.
Click here once you've chosen your vehicles |confirm |next "Normal Trash"
step
label "Normal Trash"
Make your way north to the first boss, the Flame Leviathan |goto 49.1,45.1 < 10
Kill adds as you go. The Storm Beacon towers spawn an endless stream of adds, but can be destroyed to stop the spawning.
You can find a repair station at [Ulduar/1 51.9,47.4]. Driving over this will completely heal your vehicle and restore energy, steam pressure, and pyrite.
Another of these repair stations can be found at [Ulduar/1 46.5,47.1]
confirm |next "Bosstime 1"
step
label "Bosstime 1"
Clearing these adds will cause the boss, the Flame Leviathan to spawn. |goto 49,40
It is a good idea to shoot down as many Mechanolift 304-A as possible. These drop pyrite, which replenish your ammo and is used for some vehicle abilities.
|confirm |next "Boss 1"
step
label "Boss 1"
kill Flame Leviathan##33113 |goto 49,40
|tip Flame Vents has a 50 yard range and inflicts 3000 Fire damage every second to enemies around Flame Leviathan, lasting 10 seconds.
|tip Battering Ram deals damage and knocks the target backward, increasing damage taken by 50% for 20 seconds.
|tip Gathering Speed increases Flame Leviathan's speed by 5%, stacking up to 20 times.
|tip Missle Barrage fires missles into the air that hit random raid members and deal 3700-4200 damage.
|confirm |next "continue"
step
label "Bosstime 2"
Clearing these adds will cause the boss, the Flame Leviathan to spawn. |goto 49,40
It is a good idea to shoot down as many Mechanolift 304-A as possible. These drop pyrite, which replenish your ammo and is used for some vehicle abilities.
|confirm |next "Boss 2"
step
label "Boss 2"
kill Flame Leviathan##33113 |goto 49,40
|tip Flame Vents has a 50 yard range and inflicts 3000 Fire damage every second to enemies around Flame Leviathan, lasting 10 seconds.
|tip Battering Ram deals damage and knocks the target backward, increasing damage taken by 50% for 20 seconds.
|tip Gathering Speed increases Flame Leviathan's speed by 5%, stacking up to 20 times.
|tip Missle Barrage fires missles into the air that hit random raid members and deal 3700-4200 damage.
|tip The Life Tower will increase the bosses health and periodically summon many plant adds which need to be killed asap.
|tip The Fire Tower will increase his health and damage.
|tip The Frost Tower will increase his health and summon a blue beam which will follow vehicles around, once it reaches one it will summon a orb from the top of the beam, when it reaches the bottom anyone within a short range will get frozen.
|tip The Storms Tower will increase his health and damage.
|confirm |next "continue"
step
label "continue"
map Ulduar/1
path loop off
path	48.5,35.1	48.6,26.5	40.6,26.5
Follow the path, clearing trash as you make your way to the next boss, Ignis the Furnace Master. |goto 40.6,26.5 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Ignis the Furnace Master_ |goto 37.5,26.5
Click here for 10 man abilities. |next "ignis10" |confirm
Click here for 25 man abilities. |next "ignis25" |confirm
step
label "ignis10"
kill Ignis the Furnace Master##33118 |goto 37.5,26.5
|tip Scorch is a cleave, dealing 2500 Fire damage every half second to all raid members in front of Ignis and lasting 3 seconds. The ground is also scorched by this effect, it catches fire and deals 3300-3700 Fire damage every second to anyone standing in it. Iron Construct adds dragged through the fire begin to heat up, causing them to become molten.
|tip Flame Jets Ignis stomps on the ground, causing geysers of flame to erupt under all raid members. These deal 5500-6500 Fire damage, knocking players into the air for 8 seconds and dealing an additional 1000 Fire damage every second.
|tip Slag Pot a random raid member is thrown into Ignis' slag pot, dealing 3500 Fire damage every second for 10 seconds. If they survive their haste is increased by 100% for 10 seconds.
|tip Activate Construct_ Ignis actives an Iron Construct add. These adds must be dragged through his Scorch ability, turning them Molten after 10 stacks. Once Molten, it must be run into water to turn it Brittle. This stuns the Construct, increasing its chance of being critically hit and causing it to shatter if hit for more than 5000 damage in one attack.
|tip Strength of the Creator is a stacking buff applied to Ignis when an Iron Construct is alive. It increases his damage by 20% for every Iron Construct summoned.
|next "igniscomplete" |confirm
step
label "ignis25"
kill Ignis the Furnace Master##33118 |goto 37.5,26.5
|tip Scorch is a cleave, dealing 4000 Fire damage every half second to all raid members in front of Ignis and lasting 3 seconds. The ground is also scorched by this effect, it catches fire and deals 3300-3700 Fire damage every second to anyone standing in it. Iron Construct adds dragged through the fire begin to heat up, causing them to become molten.
|tip Flame Jets Ignis stomps on the ground, causing geysers of flame to erupt under all raid members. These deal 8500-11,200 Fire damage, knocking players into the air for 8 seconds and dealing an additional 2600 Fire damage every second.
|tip Slag Pot a random raid member is thrown into Ignis' slag pot, dealing 5000 Fire damage every second for 10 seconds. If they survive their haste is increased by 100% for 10 seconds.
|tip Activate Construct Ignis actives an Iron Construct add. These adds must be dragged through his Scorch ability, turning them Molten after 10 stacks. Once Molten, it must be run into water to turn it Brittle. This stuns the Construct, increasing its chance of being critically hit and causing it to shatter if hit for more than 5000 damage in one attack.
|tip Strength of the Creator is a stacking buff applied to Ignis when an Iron Construct is alive. It increases his damage by 20% for every Iron Construct summoned.
|next "igniscomplete" |confirm
step
label "igniscomplete"
map Ulduar/1
path loop off
path	49.1,26.6	51.3,26.6
Follow the path to the next boss, Razorscale. |goto 51.3,26.6 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Expedition Commander##33210 |goto Ulduar/1 51.3,26.6
Tell him "We are ready to help!"
This will start the boss fight, make sure you are ready.
|confirm
step
_Razorscale_ |goto 54.1,26.3
Click here for 10 man abilities. |next "rzr10" |confirm
Click here for 25 man abilities. |next "rzr25" |confirm
step
label "rzr10"
kill Razorscale##33186 |goto 54.1,26.3
Phase 1 starts with Razorscale in the air, spawning adds and attacking the raid.
Avoid her attacks and kill the adds until the Harpoon Turrets are ready at [Ulduar/1 52.2,26.8]. These will pull her to the ground so you can attack her.
|tip Fireball deals 11,000-12,000 Fire damage.
|tip Wing Buffet occurs when Razorscale breaks her chains. It knocks back players within 35 yards of her.
|tip Flame Buffet is a debuff that increases the target's Fire damage taken by 1000 for 1 minute.
|tip Flame Breath deals 13,000-16,700 Fire damage to players in a cone in front of Razorscale. Make sure the tank is the only one in front of her when this occurs.
|tip Devouring Flame Razorscale spits a Lava Bomb at a player, inflicting 6000-7000 Fire damage to them and an additional 6000-7000 Fire damage every second to anyone standing within 6 yards of the explosion, lasting 25 seconds.
|tip Fuse Armor is a debuff that reduces the armor, attack, and movement speed by 20%, stacking up to 5 times.
|tip Berserk occurs after 8 minutes, it increases Razorscale's attack speed by 150% and damge dealt by 900%. Kill her as fast as possible to avoid death.
|next "rzrcomplete" |confirm
step
label "rzr25"
kill Razorscale##33186 |goto 54.1,26.3
Phase 1 starts with Razorscale in the air, spawning adds and attacking the raid.
Avoid her attacks and kill the adds until the Harpoon Turrets are ready at [Ulduar/1 52.2,26.8]. These will pull her to the ground so you can attack her.
|tip Fireball deals 11,000-12,000 Fire damage.
|tip Wing Buffet occurs when Razorscale breaks her chains. It knocks back players within 35 yards of her.
|tip Flame Buffet is a debuff that increases the target's Fire damage taken by 1500 for 1 minute.
|tip Flame Breath deals 17,500-22,500 Fire damage to players in a cone in front of Razorscale. Make sure the tank is the only one in front of her when this occurs.
|tip Devouring Flame Razorscale spits a Lava Bomb at a player, inflicting 8800-10,200 Fire damage to them and an additional 8800-10,200 Fire damage every second to anyone standing within 6 yards of the explosion, lasting 25 seconds.
|tip Fuse Armor is a debuff that reduces the armor, attack, and movement speed by 20%, stacking up to 5 times.
|tip Berserk occurs after 8 minutes, it increases Razorscale's attack speed by 150% and damge dealt by 900%. Kill her as fast as possible to avoid death.
|next "rzrcomplete" |confirm
step
label "rzrcomplete"
map Ulduar/1
path loop off
path	48.6,25.3	48.6,19.0	48.5,17.3
Follow the path, clearing trash as you make your way to the next boss, XT-002 Deconstructor. |goto 48.5,17.3 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_XT-002 Deconstructor_ |goto 48.5,13.9
Click here for 10 man abilities. |next "xt10" |confirm
Click here for 25 man abilities. |next "xt25" |confirm
step
label "xt10"
kill XT-002 Deconstructor##33293 |goto 48.5,13.9
|tip Gravity Bomb after 9 seconds a Gravity Bomb spawns at the targeted player's location, pulling raid members within 12 yards into the gravity well, dealing 12,000 damage.
|tip Light Bomb is a DoT that deals 2700 AoE damage every tick.
|tip Heartbreak XT reveals his heart, lowering it to the ground and becoming invulnerable. Destroy the heart. This will increase his health by 60% and damage by 15%, this will activate hard mode healing him to full.
|tip Tympanic Tantrum deals damage equal to 10% of the player's maximum health every second for 8 seconds. Nearby raid members are stunned for this duration.
|tip Enrage occurs after 10 minutes of combat. It increases his damage by 500% and attack speed by 150%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
|next "xtcomplete" |confirm
step
label "xt25"
kill XT-002 Deconstructor##33293 |goto 48.5,13.9
|tip Gravity Bomb after 9 seconds a Gravity Bomb spawns at the targeted player's location, pulling raid members within 12 yards into the gravity well, dealing 12,000 damage.
|tip Light Bomb is a DoT that deals 2700 AoE damage every tick.
|tip Heartbreak XT reveals his heart, lowering it to the ground and becoming invulnerable. Destroy the heart. This will increase his health by 60% and damage by 15%, this will activate hard mode healing him to full.
|tip Tympanic Tantrum deals damage equal to 10% of the player's maximum health every second for 8 seconds. Nearby raid members are stunned for this duration.
|tip Enrage occurs after 10 minutes of combat. It increases his damage by 500% and attack speed by 150%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
|next "xtcomplete" |confirm
step
label "xtcomplete"
|goto 48.5,11.1 |n
Click the Ulduar Teleporter and teleport to the Antechamber of Ulduar. |goto Ulduar/2 37.1,75.3 < 10 |noway |c
step
map Ulduar/2
path loop off
path	37.2,70.6	37.1,47.6	28.9,30.2
path	15.3,36.7
Follow the path, clearing trash as you make your way to the next boss, the Assembly of Iron. |goto 15.3,36.7 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Assembly of Iron_ |goto 15,56
Click here for 10 man abilities. |next "iron10" |confirm
Click here for 25 man abilities. |next "iron25" |confirm
step
label "iron10"
_Assembly of Iron_ |goto 15,56
|tip When one of the bosses dies the other ones will gain another ability and be restored to full health.
kill Steelbreaker##32867
|tip Fusion Punch deals 18,800-21,100 Nature damage and an additional 15,000 Nature damage every second for 4 seconds. Only hits the tanks.
|tip High Voltage inflicts 1500 Nature damage to the whole raid every 3 seconds.
|tip If Steelbreaker is left in the last 2 he will gain the ability Static disruption, which increase nature damage taken by 75 percent per stack, this will be cast on a random ranged player.
|tip If Steelbreaker is the last one alive he will gain the ability Overwhelming Power, which puts a debuff on the tank with aggro on him which will cause this tank to explode and die after 60 seconds.
kill Runemaster Molgeim##32927
|tip Rune of Power is a ground-targeted AoE that buffs anyone, enemy of friendly, standing on it with increased damage by 50%.
|tip Shield of Runes a shield that absorbs 20,000 damage. If the shield absorbs this much damage, Molgeim is buffed with 50% increased damage. This should be purged, dispelled, or spellstolen.
|tip If Runemaster is left in the last 2 he will gain the ability Rune of Death which puts a huge green rune on the ground, anyone standing in this will take 2,500 damage per second and be slowed, move out of this asap.
|tip If Runemaster is the last one alive he will gain the ability Rune of Summoning, this will summon a purple rune under a random player and summon adds which fixate players, If they reach a player they will explode dealing damage to the raid.
kill Stormcaller Brundir##32857
|tip Chain Lightning deals 4100-4800 Nature damage to the target and can jump to 5 additional targets within 10 yards.
|tip Overload deals 20,000 Nature damage to all raid members within 20 yards of Brundir. While casting this he deals 250 Nature damage and is immune to stuns.
|tip Stormcaller will gain the ability Lightning Whirl, which deals damage to random raid members.
|next "ironcomplete" |confirm
step
label "iron25"
_Assembly of Iron_ |goto 15,56
|tip When one of the bosses dies the other ones will gain another ability and be restored to full health.
kill Steelbreaker##32867
|tip Fusion Punch deals 18,800-21,100 Nature damage and an additional 15,000 Nature damage every second for 4 seconds. Only hits the tanks.
|tip High Voltage inflicts 1500 Nature damage to the whole raid every 3 seconds.
|tip If Steelbreaker is left in the last 2 he will gain the ability Static disruption, which increase nature damage taken by 75 percent per stack, this will be cast on a random ranged player.
|tip If Steelbreaker is the last one alive he will gain the ability Overwhelming Power, which puts a debuff on the tank with aggro on him which will cause this tank to explode and die after 60 seconds.
kill Runemaster Molgeim##32927
|tip Rune of Power is a ground-targeted AoE that buffs anyone, enemy of friendly, standing on it with increased damage by 50%.
|tip Shield of Runes a shield that absorbs 20,000 damage. If the shield absorbs this much damage, Molgeim is buffed with 50% increased damage. This should be purged, dispelled, or spellstolen.
|tip If Runemaster is left in the last 2 he will gain the ability Rune of Death which puts a huge green rune on the ground, anyone standing in this will take 2,500 damage per second and be slowed, move out of this asap.
|tip If Runemaster is the last one alive he will gain the ability Rune of Summoning, this will summon a purple rune under a random player and summon adds which fixate players, If they reach a player they will explode dealing damage to the raid.
kill Stormcaller Brundir##32857
|tip Chain Lightning deals 4100-4800 Nature damage to the target and can jump to 5 additional targets within 10 yards.
|tip Overload deals 20,000 Nature damage to all raid members within 20 yards of Brundir. While casting this he deals 250 Nature damage and is immune to stuns.
|tip Stormcaller will gain the ability Lightning Whirl, which deals damage to random raid members.
|next "ironcomplete" |confirm
step
label "ironcomplete"
map Ulduar/2
path loop off
path	15.4,37.1	26.8,30.5	35.7,36.5
path	36.1,25.0	37.2,21.8
Follow the path, clearing trash as you make your way to the next boss, Kologarn. |goto 37.2,21.8 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Kologarn_ |goto 37.3,14.0
Click here for 10 man abilities. |next "kolo10" |confirm
Click here for 25 man abilities. |next "kolo25" |confirm
step
label "kolo10"
kill Kologarn##32930 |goto 37.3,14.0
|tip Overhead Smash applies a debuff that reduces armor by 20% for 6 seconds and interrupts casting for 8 seconds for any raid members in melee range.
|tip Petrifying Breath occurs when no target is in melee range, usually results in a wipe. It deals 14,000-16,000 damage every second for 4 seconds, also increasing damage taken by 20% for 8 seconds.
|tip Focused Eyebeam shoots beams out of his eyes, dealing 2700-3200 Nature damage to players within 3 yards.
_Left Arm_
|tip Shockwave sweeps the entire raid, dealing 8800-10,200 Nature damage.
_Right Arm_
|tip Stone Grip grabs a random raid member and stuns them, dealing 3200-3700 damage per second until the player is dead or the arm takes 150,000 damage.
|next "kolocomplete" |confirm
step
label "kolo25"
kill Kologarn##32930 |goto 37.3,14.0
|tip Overhead Smash applies a debuff that reduces armor by 25% for 45 seconds, stacking up to 4 times and interrupts casting for 8 seconds for any raid members in melee range.
|tip Petrifying Breath occurs when no target is in melee range, usually results in a wipe. It deals 18,700-21,200 damage every second for 4 seconds, also increasing damage taken by 20% for 8 seconds.
|tip Focused Eyebeam shoots beams out of his eyes, dealing 3700-4300 Nature damage to players within 3 yards.
_Left Arm_
|tip Shockwave sweeps the entire raid, dealing 11,500-13,400 Nature damage.
_Right Arm_
|tip Stone Grip grabs a random raid member and stuns them, dealing 5300-5600 damage per second until the player is dead or the arm takes 450,000 damage.
|next "kolocomplete" |confirm
step
label "kolocomplete"
|goto Ulduar/2 38.6,0.1 |n
Loot the chest and go down the stairs here. |goto Ulduar/3 53.7,77.0 < 10 |noway |c
step
_Auriaya_ |goto 56.7,65.5
|tip She walks back and forth along the northern part of this balcony, you may have to wait a minute for her to come back.
Click here for 10 man abilities. |next "aur10" |confirm
Click here for 25 man abilities. |next "aur25" |confirm
step
label "aur10"
kill Auriaya##33515 |goto 56.7,65.5
|tip Terrifying Screech is an AoE Fear, causing players near Auriaya to flee in horror for 5 seconds.
|tip Sentinel Blast inflicts 5500 Shadow damage and increases their Shadow damage taken by 100% for 5 seconds. Stacks 5 times.
|tip Sonic Screech is an AoE that deals 74,000-86,000 Shadow damage to all enemies in its path. The damage is split between the target.
|tip Summon Swarming Guardian summons a swarm of smaller panther adds.
|next "aurcomplete" |confirm
step
label "aur25"
kill Auriaya##33515 |goto 56.7,65.5
|tip Terrifying Screech is an AoE Fear, causing players near Auriaya to flee in horror for 5 seconds.
|tip Sentinel Blast inflicts 5500 Shadow damage and increases their Shadow damage taken by 100% for 5 seconds. Stacks 5 times.
|tip Sonic Screech is an AoE that deals 185,000-215,000 Shadow damage to all enemies in its path. The damage is split between the target.
|tip Summon Swarming Guardian summons a swarm of smaller panther adds.
|next "aurcomplete" |confirm
step
label "aurcomplete"
map Ulduar/3
path loop off
path	51.0,55.9	51.3,43.2	52.1,33.4
Follow the path, clearing trash on your way to the next boss, Freya. |goto 52.1,33.4 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
The next boss fight has 10 and 25 man versions. The abilities used and strategies are very similar, the differences being the mobs' increased health and damage in 25 man.
|confirm
step
_Freya_  |goto 53,23
|tip She has 3 Ancients that have unique abilities that increase the fight's difficulty if left alive:
|tip IF Brightleaf is left alive Freya will gain a buff increasing Freya and her Nature allies magic damage by 50 percent.
|tip If Ironbranch is left alive Freya will gain a buff increasing her allies physical damage by 50 percent.
|tip If Stonebark is left alive Freya will gain a buff increasing her physical damage by 50 percent.
Click here to kill the Ancients and weaken Freya! |next "killancients" |confirm
Click here to kill Freya without killing Ancients! |next "freya" |confirm
step
label "killancients"
kill Elder Brightleaf##32915 |goto 40.1,20.5
|tip Casts a Sunbeam that, if not moved out of, will heal him quickly.
|tip Solar Flare does 8000-9000 AoE damage to the raid.
|confirm
step
kill Elder Stonebark##32914 |goto 55.5,40.7
|tip Ground Tremor hits the entire raid for 8500-9500 damage.
|tip Petrified Bark reflects melee attacks and abilities for 30 seconds. Lasts for 60 charges (120 charges in 25 man).
|tip Fists of Stone is a buff that generally will kill the tank. This usually causes the need for a tank swap after it is cast on the main tank. Increases Stonebark's movement speed by 20%, damage by 250% and has a chance to reduce the target's chance to block, dodge, or parry by 100%.
|confirm
step
kill Elder Ironbranch##32913 |goto 61.8,20.7
|tip Impale deals 16,500-20,000 (33,000-37,000 in 25 man) damage every second for 5 seconds. Must be healed through.
|tip Iron Roots roots the targeted player in place. These roots must be targeted and destroyed to free the player.
|confirm
step
label "freya"
kill Freya##32906 |goto 53,23
|tip As you engage Freya, she will cast a heal on herself and a buff that increases her healing by 4% per stack, starting with 150 stacks, making her basically invincible at the start of the fight. These buffs are removed by killing the adds she spawns.
|tip Touch of Eonar this is a permanent buff on Freya that heals her for 6000 health every second.
|tip Attuned to Nature is the stacking buff that increases Freya's healing by 4% per stack. It is removed by killing adds.
|tip Sunbeam deals 5000-6000 Nature damage to enemies within 8 yards of the targeted area.
|tip Nature Bomb Freya launches 10-15 nature bombs onto random raid members. These bombs explode after 10 seconds, dealing 6000 Nature damage to raid members within 10 yards of the bomb, also knocking them back.
|tip IF Brightleaf is left alive Freya will gain a buff increasing Freya and her Nature allies magic damage by 50 percent.
|tip If Ironbranch is left alive Freya will gain a buff increasing her allies physical damage by 50 percent.
|tip If Stonebark is left alive Freya will gain a buff increasing her physical damage by 50 percent.
|confirm
step
map Ulduar/3
path loop off
path	51.1,51.3	52.2,57.7	56.3,56.9
path	60.6,49.3	65.8,48.6
Follow the path, clearing trash as you make your way to the next boss, Thorim. |goto 65.8,48.6 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Thorim##32865 |goto 67.6,48.7
|tip The raid group must be split into two. One group down the hallway to reach Thorim and the other to stay and fight the waves of adds.
_Phase 1_
|tip Charge Orb charges a nearby orb with electricity, making it fire a Lightning Shock every second, inflicting 3000 Nature damage to raid members within 30 yards.
|tip Stormhammer deals 2500 damage to a raid member, knocking them down and stunning them for 2 seconds and causing a Deafening Thunder.
|tip Defeaning Thunder deals 5000 Nature damage to players in close proximity to a Stormhammer strike.
|tip Summon Lightning Orb spawns an orb that lays waste to all in its path. This occurs if no one is in the room below Thorim or if no one reaches him within 5 minute.
_Phase 2_
|tip Chain Lightning hits a player for 3700-4300 Nature damage, jumping to nearby players and dealing an additional 50% damage every jump.
|tip Lightning Charge deals 14,000-16,100 damage in a cone. Make sure the tank is the only one in front of Thorim when this occurs.
|tip Unbalancing Strike inflicts 200% weapon damage and applies a debuff that lowers their defense by 200 for 15 seconds.
_Hard Mode_
|tip This is activated if the hallway group gets through the gauntlet within 3 minutes.
|tip This will bring Sara into the fight, Sara will cast Frostbolt on random players.
|tip She will cause blizzards to fall on random parts of the room causing damage and slowing anyone standing in them.
|tip She will also periodically teleport onto players and cast Frost Nova rooting anyone in range.
|confirm
step
map Ulduar/3
path loop off
path	56.4,56.8	56.5,64.4	57.8,72.4
path	64.3,77.6	72.8,79.1	75.9,74.7
path	73.6,64.4	71.8,63.9
Follow the path, clearing trash as you make your way to the next boss, Hodir. |goto 71.8,63.9 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Hodir_ |goto 66.0,63.7
Click here for 10 man abilities. |next "hodir10" |confirm
Click here for 25 man abilities. |next "hodir25" |confirm
step
label "hodir10"
kill Hodir##32845 |goto 66.0,63.7
|tip Biting Cold aura that stacks a DoT that deals Frost damage. Dispellable by moving.
|tip Freeze inflicts 5500-6500 Frost damage to nearby players, immobilizing them for 10 seconds.
|tip Flash Freeze freezes the raid in ice blocks. Other raid members must attack and kill the ice block to free the encased player. Being hit by a second Flash Freeze before being freed is an instant kill. Avoid this by hiding in Snowdrifts that spawn.
|tip Icicles ice shards fall from the ceiling, dealing a knockback and 12,000 Frost damage to any players underneath. This spawns the Snowdrifts that players hide in to avoid Flash Freeze.
|tip Frozen Blows is a self buff that adds 31,000 Frost damage to all melee attacks but reduces physical damage by 70%. Also hits the raid for 4000 Frost damage every 2 seconds. Lasts 20 seconds.
|next "hodircomplete" |confirm
step
label "hodir25"
kill Hodir##32845 |goto 66.0,63.7
|tip Biting Cold aura that stacks a DoT that deals Frost damage. Dispellable by moving.
|tip Freeze inflicts 5500-6500 Frost damage to nearby players, immobilizing them for 10 seconds.
|tip Flash Freeze freezes the raid in ice blocks. Other raid members must attack and kill the ice block to free the encased player. Being hit by a second Flash Freeze before being freed is an instant kill. Avoid this by hiding in Snowdrifts that spawn.
|tip Icicles ice shards fall from the ceiling, dealing a knockback and 13,500 Frost damage to any players underneath. This spawns the Snowdrifts that players hide in to avoid Flash Freeze.
|tip Frozen Blows is a self buff that adds 40,000 Frost damage to all melee attacks but reduces physical damage by 70%. Also hits the raid for 4000 Frost damage every 2 seconds. Lasts 20 seconds.
|next "hodircomplete" |confirm
step
label "hodircomplete"
map Ulduar/3
path loop off
path	59.5,64.1	56.2,62.4	51.0,54.5
Follow the path to the Ulduar Teleporter |goto 51.0,54.5 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
|goto 51.0,54.5 |n
Click the Ulduar Teleporter and teleport to the Spark of Imagination. |goto Ulduar/5 43.6,61.9 < 10 |noway |c
step
_Mimiron_ |goto Ulduar/3 43.6,41.1
This fight consists of 4 phases, each of which Mimiron is in a different mechanical vehicle or device.
You may also activate Hard Mode by pressing the "DO NOT PRESS THIS BUTTON!" in the back of the room.
|tip During Hard mode all phases do 25 percent more damage.
|tip The fire will also follow players.
Click here for 10 man abilities. |next "mimi10" |confirm
Click here for 25 man abilities. |next "mimi25" |confirm
step
label "mimi10"
_Mimiron_ |goto 43.6,41.1
_Phase 1 Leviathan MKII_
|tip Napalm Shell deals 8000 Fire damage to players within 5 yards of the targeted area, also applying a DoT that deals 4000 Fire damage every second for 8 seconds.
|tip Plasma Blast is a 3 second cast, dealing 17,000 damage every second.
|tip Proximity Mine these mines are dropped 15 yards from Leviathan. They explode and dead 9000 Fire damage when triggered by a player. They self-detonate after 35 seconds and deal 12,000 damage.
|tip Shock Blast deals 100,000 Nature damage to targets within 15 yards.
Click here for _Phase 2_ |confirm
step
_Mimiron_ |goto 43.6,41.1
_Phase 2 VX-001_
|tip Heat Wave deals 10,000 Fire damage to the entire raid and an additional 2000 damage every second for 5 seconds.
|tip Rapid Burst is a cone that deals 2500-2800 damage to all targets in front of VK-001. Make sure the tank is the only one in front of him when this occurs.
|tip Rocket Strike deals 5,000,000 damage at the targeted area.
|tip Spinning Up VX-001 starts spinning for 4 seconds, then casting _P3Wx2 Laser Barrage_, which deals 20,000 Arcane damage to targets within 80 yards in front of VX-001. Make sure the tank is the only one in front of him when this occurs.
Click here to move to _Phase 3_ |confirm
step
_Mimiron_ |goto 43.6,41.1
_Phase 3 Aerial Command Unit_
|tip Plasma Ball is used on the player with highest threat, dealing 9500-10,500 damage.
|tip Assault Bot: uses Magnetic Field, which roots the target and increases their damage taken by 30% for 6 seconds.
|tip Bomb Bot: explodes, dealing 23,500-26,500 Fire damage in a 5 yard radius.
Click here to advance to _Phase 4_ |confirm
step
kill Mimiron##33350 |goto 43.6,41.1
_Phase 4 V-07-TR-0N_
Uses combined abilities from previous phases.
|tip Proximity Mine these mines are dropped 15 yards from Leviathan. They explode and dead 9000 Fire damage when triggered by a player. They self-detonate after 35 seconds and deal 12,000 damage.
|tip Shock Blast deals 100,000 Nature damage to targets within 15 yards.
|tip Rocket Strike deals 5,000,000 damage at the targeted area.
|tip P3Wx2 Laser Barrage deals 20,000 Arcane damage to targets within 80 yards in front of VX-001.
|tip Hand Pulse deals 4700-5300 damage to the raid.
|tip Plasma Ball is used on the player with highest threat, dealing 9500-10,500 damage.
|tip You must destroy all 4 parts within 20 seconds.
|next "mimicomplete" |confirm
step
label "mimi25"
_Mimiron_ |goto 43.6,41.1
_Phase 1 Leviathan MKII_
|tip Napalm Shell deals 9000 Fire damage to players within 5 yards of the targeted area, also applying a DoT that deals 6000 Fire damage every second for 8 seconds.
|tip Plasma Blast is a 3 second cast, dealing 25,000 damage every second.
|tip Proximity Mine these mines are dropped 15 yards from Leviathan. They explode and dead 20,000 Fire damage when triggered by a player. They self-detonate after 35 seconds and deal 12,000 damage.
|tip Shock Blast deals 100,000 Nature damage to targets within 15 yards.
Click here for _Phase 2_ |confirm
step
_Mimiron_ |goto 43.6,41.1
_Phase 2 VX-001_
|tip Heat Wave deals 10,500 Fire damage to the entire raid and an additional 3000 damage every second for 5 seconds.
|tip Rapid Burst is a cone that deals 3300-3700 damage to all targets in front of VK-001. Make sure the tank is the only one in front of him when this occurs.
|tip Rocket Strike deals 5,000,000 damage at two targeted areas.
|tip Spinning Up VX-001 starts spinning for 4 seconds, then casting P3Wx2 Laser Barrage, which deals 20,000 Arcane damage to targets within 80 yards in front of VX-001. Make sure the tank is the only one in front of him when this occurs.
Click here to move to _Phase 3_ |confirm
step
_Mimiron_ |goto 43.6,41.1
_Phase 3 Aerial Command Unit_
|tip Plasma Ball is used on the player with highest threat, dealing 14,100-15,800 damage.
|tip Assault Bot: uses Magnetic Field, which roots the target and increases their damage taken by 30% for 6 seconds.
|tip Bomb Bot: explodes, dealing 23,500-26,500 Fire damage in a 5 yard radius.
Click here to advance to _Phase 4_ |confirm
step
kill Mimiron##33350 |goto 43.6,41.1
_Phase 4 V-07-TR-0N_
|tip Uses combined abilities from previous phases.
|tip Proximity Mine these mines are dropped 15 yards from Leviathan. They explode and dead 9000 Fire damage when triggered by a player. They self-detonate after 35 seconds and deal 12,000 damage.
|tip Shock Blast deals 100,000 Nature damage to targets within 15 yards.
|tip Rocket Strike deals 5,000,000 damage at two targeted areas.
|tip P3Wx2 Laser Barrage deals 20,000 Arcane damage to targets within 80 yards in front of VX-001.
|tip Hand Pulse deals 7000-8000 damage to the raid.
|tip Plasma Ball is used on the player with highest threat, dealing 14,100-15,800 damage.
|tip You must destroy all 4 parts within 20 seconds.
|next "mimicomplete" |confirm
step
label "mimicomplete"
|goto Ulduar/5 43.7,62.0 |n
Click on the Ulduar Teleporter and teleport to the Conservatory of Life |goto Ulduar/3 50.9,54.3 <10 |noway |c
step
The last normal boss in this raid, Yogg-Saron, has varying degrees of difficulty, depending on the amount of help (if any) taken from the Keepers you've already defeated. Each Keeper grants you a buff and aids you in the fight.
After proceeding to the next boss, you won't be able to come back and get these buffs unless you exit and enter the raid again. It is suggested you pick up any wanted buffs now.
|tip Mimiron grants Speed of Invention, increasing movement speed by 20%. In battle, he aids you with Destabilization Matrix, a debuff that reduces the enemiy tentacles' attack speed by 100% and casting speed by 300%. He is found at [Ulduar/3 47.8,60.3].
|tip Thorim grants Fury of the Storm, increasing total health by 20%. In battle he uses Titanic Storm. This spell kills immortal creates. It is the only way to kill immortal creatures. He is found at [Ulduar/3 54.3,60.3]
|tip Freya grants Resilience of Nature, increasing healing received by 20%. In battle she uses Sanity Well. These green pillars of light are placed at the sides of the room and regenerate Sanity to players standing in them. This is the only way to regenerate Sanity. She is found at [Ulduar/3 46.5,69.9].
|tip Hodir grants Fortitude of Frost, reducing your damage taken by 20% from all sources. In battle he uses Horid's Protective Gaze. Instead of dying, a player gets a chance to get encased in ice. This is a 10 second buff that can be removed by the player, saving them from death. He is found at [Ulduar/3 55.6,70.1].
|confirm
step
map Ulduar/3
path loop off
path	43.9,72.4	38.0,74.6	30.0,74.6
Follow the path, clearing trash as you make your way to the next boss, General Vezax. |goto 30.0,74.6 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Ulduar/4
path loop off
path	31.4,51.5	27.9,56.7	30.1,63.5
path	34.9,68.4	42.8,65.5
Follow the path as you make your way to the next boss, General Vezax. |goto 42.8,65.5 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_General Vezax_ |goto 52.6,57.1
Click here for 10 man abilities. |next "vez10" |confirm
Click here for 25 man abilities. |next "vez25" |confirm
step
label "vez10"
kill General Vezax##33271 |goto 52.6,57.1
|tip Shadow Crash deals 5600-6300 Shadow damage and knocking back all raid members near the impact area. After impact, it leaves a field that lingers for 20 seconds, increasing magic damage dealt and cast speed by 100%, and reducing healing done and mana costs by 75%.
|tip Searing Flames deals 13,800-16,100 Fire damage to all raid members within 100 yards, also reducing their armor by 75% for 10 seconds.
|tip Surge of Darkness buffs Vezax, increasing his Physical damage by 100% and reducing movement speed by 55%. Lasts 10 seconds.
|tip Mark of the Faceless siphons 5000 health every second from players near the target. Lasts 10 seconds.
|tip Aura of Despair is a debuff applied to mana-users. It prevents mana regeneration and reduces melee attack speed by 20%.
|tip Corrupted Rage affects Shamans with Shamanistic Rage, increasing mana restored by 100% per proc, but reducing healing by 90%.
|tip Corrupted Wisdom affects Paladins with Judgments of the Wise, corrupting it to reduce healing.
|tip Saronite Vapors spawn green crystals with 12,600 hit points. Destroying these leave a green puddle on the ground. Standing in them cause players to take stacking Shadow damage but they regenerate mana.
_Hard Mode_
|tip Hard mode is activated when 8 Saronite Vapors are not soaked, this will summon a Saronite Animus.
|tip Once this is spawned it will need to be killed before you can damage the boss again.
|next "vezcomplete" |confirm
step
label "vez25"
kill General Vezax##33271 |goto 52.6,57.1
|tip Shadow Crash deals 11,300-12,700 Shadow damage and knocking back all raid members near the impact area. After impact, it leaves a field that lingers for 20 seconds, increasing magic damage dealt and cast speed by 100%, and reducing healing done and mana costs by 75%.
|tip Searing Flames deals 13,800-16,100 Fire damage to all raid members within 100 yards, also reducing their armor by 75% for 10 seconds.
|tip Surge of Darkness buffs Vezax, increasing his Physical damage by 100% and reducing movement speed by 55%. Lasts 10 seconds.
|tip Mark of the Faceless siphons 5000 health every second from players near the target. Lasts 10 seconds.
|tip Aura of Despair is a debuff applied to mana-users. It prevents mana regeneration and reduces melee attack speed by 20%.
|tip Corrupted Rage affects Shamans with Shamanistic Rage, increasing mana restored by 100% per proc, but reducing healing by 90%.
|tip Corrupted Wisdom affects Paladins with Judgments of the Wise, corrupting it to reduce healing.
|tip Saronite Vapors spawn green crystals with 25,200 hit points. Destroying these leave a green puddle on the ground. Standing in them cause players to take stacking Shadow damage but they regenerate mana.
_Hard Mode_
|tip Hard mode is activated when 8 Saronite Vapors are not soaked, this will summon a Saronite Animus.
|tip Once this is spawned it will need to be killed before you can damage the boss again.
|next "vezcomplete" |confirm
step
label "vezcomplete"
map Ulduar/4
path loop off
path	62.0,60.2	68.0,56.5
Follow the path to the final boss, Yogg-Saron. |goto 68.0,56.5 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Yogg-Saron_ |goto Ulduar/4 68,40.8
Click here for 10 man abilities. |next "yogg10" |confirm
Click here for 25 man abilities. |next "yogg25" |confirm
step
label "yogg10"
_Yogg-Saron_ |goto Ulduar/4 68,40.8
_Phase 1 Sara_
|tip Sara stands in the center of the room. The only way to damage her is the AoE damage from dying Guardian adds.
|tip Sara's Fervor increases one of her allies' damage by 20% and their damage taken by 100%, lasting 15 seconds.
|tip Sara's Blessing heals one of her allies' for 27,000-33,000 and causes 60,000 Shadow damage over 20 seconds.
|tip Sara's Anger deals 12,500 Shadow damage over 3 seconds and increases Physical damage dealt by 12,000, lasting 12 seconds.
|tip Sanity buff indicates overall level of Sanity. If Sanity reaches 0, the player becomes Insane.
|tip Insane is a 60 second debuff. Yogg-Baron mind controls the taget, increasing their damage by 100% and health by 300%. The raid must kill the player. This debuff kills the target upon expiration.
Click here to move to _Phase 2_ |confirm
step
_Yogg-Saron_ |goto Ulduar/4 68,40.8
_Phase 2_
|tip There are now two areas; outside and inside the Mind's Eye. During this phase, portals are opened to the Mind's Eye. This phase ends when the Mind's Eye is at 30% health.
_Crusher Tentacle_
|tip Diminish Power weakens all members of the raid, reducing their damage by 20%. Stacks up to 4 times. Hitting the tentacle with by a melee attack disrupts the cast.
|tip Focused Anger enrages the tentacle, increasing its attack speed and damage by 3% per stack, stacking up to 99 times.
_Corruptor Tentacle_
|tip Curse of Doom a debuff that inflicts 20,00 Shadow damage after 12 seconds.
|tip Apathy is a 20 second debuff which reduces attack, casting, and movement speeds by 60%.
|tip Black Plague is a 24 second debuff which periodically stuns the target for 2 seconds.
|tip Draining Poison is an 18 second debuff that deals 3500 Nature damage and drains 1400 mana every 3 seconds.
_Constrictor Tentacle_
Squeeze grabs a nearby raid member, inflicting 7500 Physical damage every second.
_Sara_
|tip Psychosis deals 5000 Shadow damage and reduces Sanity by 12.
|tip Brain Link links two random raid members with a beam, which deals 3000 Shadow damage and reduces Sanity by 2 to both players while they are more than 20 yards apart.
|tip Malady of the Mind 4 second debuff. The target takes 5000 Shadow damage, loses 3 Sanity and gets Feared. The debuff jumps to another target within 10 yards upon expiration.
|tip Death Ray spawns slow moving green beams which kill any player they touch.
_The Mind's Eye (Inside)_
|tip Laughing Skull: uses Lunatic Gaze looking into the laughin skull inflicts 1750 Shadow damage and reduces Sanity by 2% every second.
|tip Influence Tentacle: uses Grim Reprisal reflects 60% of damage taken back to the attacker.
|tip Brain of Yogg-Saron: drives all nearby players insane, reducing Sanity to 0. 60 second cast time.
Click here to move to _Phase 3_ |confirm
step
kill Yogg-Saron##33288 |goto Ulduar/4 68,40.8
_Phase 3_
The Head of the Beast
|tip Lunatic Gaze looking into the maw unhinges your mind, inflicting 5700-6300 Shadow damage and reducing Sanity by 4% every second.
|tip Empowering Shadows empowers Yogg-Saron's friendly units within 20 yards, causing them to regenerate 750,000 health over 20 seconds.
|tip Shadowy Barrier protects Yogg-Saron from all attacks and spells.
|tip Extinguish All Life wipes the raid. Occurs after 15 minutes of combat.
|tip If you recruited the help of 3 Keepers or less, he also uses:
|tip Deafening Roar deals 7600-8400 Physical damage and silences them for 4 seconds.
|next "yoggcomplete" |confirm
step
label "yogg25"
_Yogg-Saron_ |goto Ulduar/4 68,40.8
_Phase 1 Sara_
|tip Sara stands in the center of the room. The only way to damage her is the AoE damage from dying Guardian adds.
|tip Sara's Fervor increases one of her allies' damage by 20% and their damage taken by 100%, lasting 15 seconds.
|tip Sara's Blessing heals one of her allies' for 27,000-33,000 and causes 60,000 Shadow damage over 20 seconds.
|tip Sara's Anger deals 12,500 Shadow damage over 3 seconds and increases Physical damage dealt by 12,000, lasting 12 seconds.
|tip Sanity buff indicates overall level of Sanity. If Sanity reaches 0, the player becomes Insane.
|tip Insane is a 60 second debuff. Yogg-Baron mind controls the target, increasing their damage by 100% and health by 300%. The raid must kill the player. This debuff kills the target upon expiration.
Click here to move to _Phase 2_ |confirm
step
_Yogg-Saron_ |goto Ulduar/4 68,40.8
_Phase 2_
|tip There are now two areas; outside and inside the Mind's Eye. During this phase, portals are opened to the Mind's Eye. This phase ends when the Mind's Eye is at 30% health.
_Crusher Tentacle_
|tip Diminish Power weakens all members of the raid, reducing their damage by 20%. Stacks up to 4 times. Hitting the tentacle with by a melee attack disrupts the cast.
|tip Focused Anger enrages the tentacle, increasing its attack speed and damage by 3% per stack, stacking up to 99 times.
_Corruptor Tentacle_
|tip Curse of Doom a debuff that inflicts 20,00 Shadow damage after 12 seconds.
|tip Apathy is a 20 second debuff which reduces attack, casting, and movement speeds by 60%.
|tip Black Plague is a 24 second debuff which periodically stuns the target for 2 seconds.
|tip Draining Poison is an 18 second debuff that deals 3500 Nature damage and drains 1400 mana every 3 seconds.
_Constrictor Tentacle_
|tip Squeeze grabs a nearby raid member, inflicting 7500 Physical damage every second.
_Sara_
|tip Psychosis deals 5000 Shadow damage and reduces Sanity by 12.
|tip Brain Link links two random raid members with a beam, which deals 3000 Shadow damage and reduces Sanity by 2 to both players while they are more than 20 yards apart.
|tip Malady of the Mind 4 second debuff. The target takes 5000 Shadow damage, loses 3 Sanity and gets Feared. The debuff jumps to another target within 10 yards upon expiration.
|tip Death Ray spawns slow moving green beams which kill any player they touch.
_The Mind's Eye (Inside)_
|tip Laughing Skull: uses Lunatic Gaze looking into the laughin skull inflicts 1750 Shadow damage and reduces Sanity by 2% every second.
|tip Influence Tentacle: uses Grim Reprisal reflects 60% of damage taken back to the attacker.
|tip Brain of Yogg-Saron: drives all nearby players insane, reducing Sanity to 0. 60 second cast time.
Click here to move to _Phase 3_ |confirm
step
kill Yogg-Saron##33288 |goto Ulduar/4 68,40.8
_Phase 3_
The Head of the Beast
|tip Lunatic Gaze looking into the maw unhinges your mind, inflicting 5700-6300 Shadow damage and reducing Sanity by 4% every second.
|tip Empowering Shadows empowers Yogg-Saron's friendly units within 20 yards, causing them to regenerate 750,000 health over 20 seconds.
|tip Shadowy Barrier protects Yogg-Saron from all attacks and spells.
|tip Extinguish All Life wipes the raid. Occurs after 15 minutes of combat.
|tip If you recruited the help of 3 Keepers or less, he also uses:
|tip Deafening Roar deals 7600-8400 Physical damage and silences them for 4 seconds.
|next "yoggcomplete" |confirm
step
label "yoggcomplete"
There is a bonus boss, Algalon the Observer, that can be killed, but only in hard mode.
Click here to kill Algalon! |next "alstart" |confirm
Click here to skip Algalon! |next "raidcomplete" |confirm
step
label "alstart"
|goto Ulduar/4 67.2,60.0 |n
Click the Ulduar Teleporter and teleport to the Antechamber of Ulduar. |goto Ulduar/2 37.1,75.7 < 10 |noway |c
step
map Ulduar/2
path loop off
path	37.0,70.4	37.2,47.2	46.5,30.6
path	58.0,36.9	59.2,43.1
Follow the path, clearing any trash as you make your way to the bonus boss, Algalon the Observer. |goto 59.2,43.1 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Click the Celestial Planetarium Access panel. |goto 59.2,43.1
This will start the fight, make sure you are ready.
|confirm
step
_Algalon the Observer_ |goto 73.5,46.2
Click here for 10 man abilities. |next "al10" |confirm
Click here for 25 man abilities. |next "al25" |confirm
step
label "al10"
kill Algalon the Observer##32871 |goto 77.8,46.8
|tip Cosmic Smash calls a boulder from the sky, dealing 41,400-43,500 Fire damage.
|tip Black Hole Explosion deals 16,000-17,000 instant Shadow damage to the raid.
|tip Quantum Strike hits Algalon's target for 15,600-17,300 Physical damage
|tip Phase Punch deals 8800-10,200 damage to the targets within 5 yards, also fading them to another plane of existence after 5 stacks.
|tip Big Bang deals 76,300-88,600 Physical damage to nearby enemies.
|tip Ascend to the Heavens occurs after 6 minutes of combat, dealing 655,000-725,000 damage to the raid. Kill him before he reaches this stage to avoid death.
|next "raidcomplete" |confirm
step
label "al25"
kill Algalon the Observer##32871 |goto 77.8,46.8
|tip Cosmic Smash calls a boulder from the sky, dealing 41,400-43,500 Fire damage.
|tip Black Hole Explosion deals 16,000-17,000 instant Shadow damage to the raid.
|tip Quantum Strike hits Algalon's target for 34,100-35,800 Physical damage
|tip Phase Punch deals 8800-10,200 damage to the targets within 5 yards, also fading them to another plane of existence after 5 stacks.
|tip Big Bang deals 107,000-113,000 Physical damage to nearby enemies.
|tip Ascend to the Heavens occurs after 6 minutes of combat, dealing 655,000-725,000 damage to the raid. Kill him before he reaches this stage to avoid death.
|next "raidcomplete" |confirm
step
label "raidcomplete"
Congratulations, you have finished the Ulduar raid guide!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Northrend Raids\\Vault of Archavon",{
mapid=156,
achieveid={1722, 1721, 3136, 3137, 3836, 3837, 4585, 4586},
patch='30300',
condition_suggested=function() return level>=27 and level<=30 end,
keywords={"Wintergrasp, Toravon, Archavon, Emalon, Koralon"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the Vault of Archavon Raid.",
},[[
step
In order to enter and complete this raid your faction must control Wintergrasp.
|confirm
step
|goto Wintergrasp/0 50.4,16.4 |n
Click the Defender's Portal to be teleported to the raid entrance. |goto Wintergrasp/0 50.4,15.9 < 5 |noway |c
step
Enter Vault of Archavon |goto Wintergrasp/0 50.06,11.90 < 5
confirm
step
map Vault of Archavon/1
path loop off
path	46.5,55.5	39.9,55.4
Follow the path, clearing trash as you make your way to the first boss, Koralon the Flame Watcher. |goto 39.9,55.4 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Koralon the Flame Watcher_ |goto 35.3,55.4
Click here for 10 man abilities |next "kor10" |confirm
Click here for 25 man abilities |next "kor25" |confirm
step
label "kor10"
kill Koralon the Flame Watcher##35013 |goto 35.3,55.4
|tip Burning Fury increases Korlon's damage by 5%. This occurs when Koralon is engaged and stacks every 20 seconds.
|tip Meteor Fists inflicts 100-125% weapon damage, splitting Koralon's damage evenly between an additional player within 10 yards of his primary target.
|tip Burning Breath inflicts 4000 Fire damage to all targets every second for 3 seconds.
|tip Flaming Cinder inflicts 4000 Fire damage and an additional 3000 Fire damage every second to all players within 4 yards of the _Burning Cinder_ placed on the ground.
|next "korcomplete" |confirm
step
label "kor25"
kill Koralon the Flame Watcher##35013 |goto 35.3,55.4
|tip Burning Fury increases Korlon's damage by 5%. This occurs when Koralon is engaged and stacks every 20 seconds.
|tip Meteor Fists inflicts 100-125% weapon damage, splitting Koralon's damage evenly between an additional player within 10 yards of his primary target.
|tip Burning Breath inflicts 4000 Fire damage to all targets every second for 3 seconds.
|tip Flaming Cinder inflicts 5300-5700 Fire damage and an additional 4300-4600 Fire damage every second to all players within 4 yards of the _Burning Cinder_ placed on the ground.
|next "korcomplete" |confirm
step
label "korcomplete"
map Vault of Archavon/1
path loop off
path	52.0,55.4	58.7,55.5
Follow the path, clearing trash as you make your way to the next boss, Emalon the Storm Watcher. |goto 58.7,55.5 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Emalon the Storm Watcher_ |goto 62,55
Click here for 10 man abilities |next "emalon10" |confirm
Click here for 25 man abilities |next "emalon25" |confirm
step
label "emalon10"
kill Emalon the Storm Watcher##33993 |goto 62,55
|tip Chain Lightning deals 4500-5400 Nature damage, jumping to nearby raid members and increasing the damage dealt by 50% each jump.
|tip Lightning Nova is an AoE that deals 21,000-24,000 Nature damage to all raid members within 20 yards of Emalon.
|tip Overcharge Emalon overcharged a Tempest Minion, increasing its damage by 20% and stacking up to 10 times. The minion will _explode_ after 10 stacks are reached, dealing 30,000 Nature damage to all players inside the raid. Kill them before this happens to avoid death.
|tip Enrage occurs after 6 minutes of combat. It increases his damage by 500% and attack speed by 150%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
|next "emaloncomplete" |confirm
step
label "emalon25"
kill Emalon the Storm Watcher##33993 |goto 62,55
|tip Chain Lightning deals 7400-8600 Nature damage, jumping to nearby raid members and increasing the damage dealt by 20% each jump.
|tip Lightning Nova is an AoE that deals 30,000 Nature damage to all raid members within melee range of Emalon. Damage is reduced with distance, but cannot be outranged in 25 man.
|tip Overcharge Emalon overcharged a Tempest Minion, increasing its damage by 20% and stacking up to 10 times. The minion will _explode_ after 10 stacks are reached, dealing 30,000 Nature damage to all players inside the raid. Kill them before this happens to avoid death.
|next "emaloncomplete" |confirm
step
label "emaloncomplete"
map Vault of Archavon/1
path loop off
path	49.3,40.5	49.3,32.9	49.2,22.8
Follow the path, clearing trash as you make your way to the next boss, Archavon the Stone Watcher. |goto 49.2,22.8 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Archavon the Stone Watcher_ |goto 49,16
Click here for 10 man abilities |next "arch10" |confirm
Click here for 25 man abilities |next "arch25" |confirm
step
label "arch10"
kill Archavon the Stone Watcher##31125 |goto 49,16
|tip Rock Shards hits the target with rocks every 0.1 second for 3 seconds, dealing about 7000 damage to them and all nearby raid members.
|tip Stomp deals 3700-4300 damage and stuns the target for 2 seconds.
|tip Crushing Leap Archavon leaps at a raid member, leaving a trail of white clouds on the ground that deal 2000 damage per tick to those standing in them.
|tip Enrage occurs after 5 minutes of combat. It increases his damage by 500% and attack speed by 150%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
|next "archcomplete" |confirm
step
label "arch25"
kill Archavon the Stone Watcher##31125 |goto 49,16
|tip Rock Shards hits the target with rocks every 0.1 second for 3 seconds, dealing about 7000 damage to them and all nearby raid members.
|tip Stomp deals 3700-4300 damage and stuns the target for 2 seconds.
|tip Crushing Leap Archavon leaps at a raid member, leaving a trail of white clouds on the ground that deal 2000 damage per tick to those standing in them.
|tip Enrage occurs after 5 minutes of combat. It increases his damage by 500% and attack speed by 150%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
|next "archcomplete" |confirm
step
label "archcomplete"
map Vault of Archavon/1
path loop off
path	52.2,36.6	58.7,36.6
Follow the path, clearing trash as you make your way to the last boss, Toravon the Ice Watcher. |goto 58.7,36.6 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Toravon the Ice Watcher_ |goto 62,36
Click here for 10 man abilities |next "tor10" |confirm
Click here for 25 man abilities |next "tor25" |confirm
step
label "tor10"
kill Toravon the Ice Watcher##38433 |goto 62,36
|tip Frozen Mallet Toravon's attacks have a chance to deal Frostbite, inflicting 975-1025 damage every 2 seconds for 10 seconds, stacks up to 100 times.
|tip Frozen Orb spawns a Frozen Orb at the targeted location. These deal 3000 damage every second to enemies within 8 yards.
|tip Whiteout inflicts 11,500 Frost damage to all nearby raid members and increases Frost damage taken by 25%, stacks up to 20 times.
|tip Freezing Ground has a 6 yard range and inflicts 4500-5600 Frost damage, immobilizing those affected for 5 seconds.
|next "torcomplete" |confirm
step
label "tor25"
kill Toravon the Ice Watcher##38433 |goto 62,36
|tip Frozen Mallet Toravon's attacks have a chance to deal Frostbite, inflicting 2000 damage every 2 seconds for 10 seconds, stacks up to 100 times.
|tip Frozen Orb spawns 3 Frozen Orbs at the targeted location. These deal 3000 damage every second to enemies within 8 yards.
|tip Whiteout inflicts 13,500 Frost damage to all nearby raid members and increases Frost damage taken by 25%, stacks up to 20 times.
|tip Freezing Ground has a 6 yard range and inflicts 4500-5600 Frost damage, immobilizing those affected for 5 seconds.
|next "torcomplete" |confirm
step
label "torcomplete"
Congratulations, you have finished the Vault of Archavon raid guide!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Cataclysm Dungeons\\Blackrock Caverns",{
mapid=283,
achieveid={4833},
patch='40003',
condition_suggested=function() return level>=30 and level<=35 end,
keywords={"Searing, Gorge, Burning, Steppes, BRM, BRC"},
description="\nThis guide will walk you through the Blackrock Caverns dungeon.",
},[[
step
label "lfg"
Press _I_ and queue for Blackrock Caverns or enter the dungeon with your group |goto Blackrock Caverns/1 32.4,69.9 < 100 |c
step
talk Finkle Einhorn##49476
accept To the Chamber of Incineration!##28735 |goto Blackrock Caverns,33.1,66.0
step
Clear the trash around this area without pulling the boss|goto 49.3,74.1
_Rom'ogg Bonecrusher_ patrols nearby, if you aggro him, he will do a shout attracting the nearby groups.
Click here when you've cleared the groups. |confirm
step
kill Rom'ogg Bonecrusher##39665 |only if not haveq(28735)
kill Rom'ogg Bonecrusher##39665 |q 28735/1 |only if haveq(28735)
Pull _Rom'ogg Bonecrusher_ when he's at |goto 50.0,67.3
|tip For this fight, he will use Call for Help when you engage him. Any mob nearby that you didnt kill will come to his aid.
|tip He will often use Quake, which can be avoided by moving to the side when you see him casting it. This will also summon Angered Earths. |only if heroic_dung()
|tip He will also summon Angered Earths each time he uses Quake, which need to be picked up by your tank. There will be one per ground crack. |only if heroic_dung()
|tip At 66% and 33% he will use Chains of Woe followed by The Skullcracker, which needs to be avoided or it will kill you.
|tip Players will need to kill the Chains of Woe, then move away from the boss in order to avoid massive, and possibly fatal damage.
|tip He will also use Wounding Strike on the tank, reducing healing received by 25%.
Defeat Rom'ogg Bonecrusher |scenariogoal 1/24792
step
Click the Quest Completion Box that pops up.
turnin To the Chamber of Incineration!##28735
step
map Blackrock Caverns/1
path follow strict;loop off;ants straight
path	50.1,55.2	50.1,39.2	53.9,21.5
Follow the path
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
accept What Is This Place?##28737 |goto Blackrock Caverns/1 53.9,21.5
step
There will be an Evolved Twilight Zealot patrolling here. |goto Blackrock Caverns/1 54.0,20.4
|tip Interrupt Shadow Stike whenever he uses it.
kill Evolved Twilight Zealot##39987
|confirm
step
Jump down the ledge here. |goto Blackrock Caverns/1 51.9,20.0 < 5
confirm
step
There will be a group of 5 patrolling the hallway here. |goto Blackrock Caverns/2 30.3,16.6
Once they are defeated, there will be another Evolved Twilight Zealot on the ramp at |goto 29.6,14
|tip Interrupt Shadow Stike whenever he uses it.
kill Evolved Twilight Zealot##39987
|confirm
step
kill Corla, Herald of Twilight##39679 |only if not haveq(28737)
kill Corla, Herald of Twilight##39679 |q 28737/1 |only if haveq(28737)
|tip You will see two beams on each side of Corla. You should have Ranged DPS or Healers step into the beams during the encounter.
|tip This will give whoever interrupts the beams stacks of Evolution, when you reach 80, step out of the beams. You will need to move back in when your stack falls back off.
|tip Failing to interrupt the beams, or to move out when you reach 80 will result in Twilight Evolution, which will enrage either a player or the minions into attacking your party members, and likely wipe you.
|tip Corla, Herald of Twilight will cast Dark Command on a random party member. It will be important to interrupt this, as it can ruin the Evolution rotations.
Defeat Corla, Herald of Twilight |scenariogoal 1/24793 |goto 27.4,16.6
step
Click the Quest Completion Box that pops up.
turnin What Is This Place?##28737
step
map Blackrock Caverns/2
path follow strict;loop off;ants straight
path	34.2,13.3	37.5,13.2	39.2,16.0
Hug the wall, following the way points.
|tip There will be trash at the last waypoint.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Blackrock Caverns/2
path follow strict;loop off;ants straight
path	38.7,25.1	38.6,30.1	43.6,30.5
path	43.7,37.8	43.4,50.1	43.5,57.0
Follow the path
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
accept The Twilight Forge##28738 |goto 43.5,57.7
step
There will be 2 fire elementals patrolling around the room with _Karsh Steelbender_.
kill Conflagration##39994+
Pull one at a time back to the ramp.
|confirm
step
kill Karsh Steelbender##39698 |only if not haveq(28738)
kill Karsh Steelbender##39698 |q 28738/1 |only if haveq(28738)
|tip For this fight, there will be a large pillar of flame at the center of the room.
|tip The tank will need to run through the center, giving the boss a Superheated Quicksilver Armor debuff, increasing the damage the boss takes.
|tip When the debuff has 5 seconds left, the tank will have to Run through the pillar of flame again, renewing and adding another debuff to the boss.
|tip If you let Superheated Quicksilver Armor fall off the boss he will gain his Quicksilver Armor buff.
Defeat Karsh Steelbender |scenariogoal 1/24794 |goto 45.6,65.6
step
Click the Quest Completion Box that pops up:
turnin The Twilight Forge##28738
step
map Blackrock Caverns/2
path follow strict;loop off;ants straight
path	53.5,67.2	55.7,68.3	58.5,64.9
path	61.6,71.8
Kill trash at the waypoints.
|tip The second group should be 2 Defiled Earth Ragers. Everyone in the group needs to stand close, as they do an AoE that does more damage the further away you are.
|tip Be sure you hug the wall on the left up until the last waypoint.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Click the Quest Completion Box that pops up:
accept Do My Eyes Deceive Me?##28740 |goto 66.1,71.6
step
There will be 3 Corehound Pups. You can pull them without pulling the boss behind them.
kill Lucky##40008 |n |goto 66.3,77.5
kill Buster##40013 |n |goto 66.3,77.5
kill Spot##40011 |n |goto 66.3,77.5
|confirm
|only if not heroic_dung()
step
kill Beauty##39700 |only if not haveq(28740)
kill Beauty##39700 |q 28740/1 |only if haveq(28740)
|tip She will randomly cast Terrifying Roar, fearing the entire party. Tremor Totem and Fear Ward can be used to avoid this.
|tip She will Berserker Charge an enemy, knocking them back.
|tip She will also use Flamebreak on melee knocking them back.
|tip She casts Magma Spit on party members, causing AoE damage when it is dispelled.
|confirm |only if not haveq(28740)
|only if not heroic_dung()
step
kill Beauty##39700 |only if not haveq(28740)
kill Beauty##39700 |q 28740/1 |only if haveq(28740)
|tip You will need to use crowd control on Lucky, Buster and Spot or kill them before engaging the boss.
|tip DO NOT kill Runty, or the boss will enrage and deal incredible damage.
|tip She will randomly cast Terrifying Roar, fearing the entire party. Tremor Totem and Fear Ward can be used to avoid this.
|tip She will Berserker Charge an enemy, knocking them back.
|tip She will also use Flamebreak on melee knocking them back.
|tip She casts Magma Spit on party members, causing AoE damage when it is dispelled.
|confirm |only if not haveq(28740)
|only if heroic_dung()
step
Click the Quest Completion Box that pops up:
turnin Do My Eyes Deceive Me?##28740
step
Wait here for the elemental patrol. |goto 69.6,72.2
|confirm
step
Click the Quest Completion Box that pops up.
accept Ascendant Lord Obsidius##28741 |goto 70.0,63.4
step
kill Ascendant Lord Obsidius##39705 |only if not haveq(28741)
kill Ascendant Lord Obsidius##39705 |q 28741/1 |only if haveq(28741)
|tip When you get within aggro radius, he will be attacked. When Raz dies then it will be time to face the boss.
|tip Ascendant Lord Obsidius will split.
|tip There will be 3 Shadows of Obsidius that need to be kited by a ranged DPS. |only if heroic_dung()
|tip He will use Thunderclap, which will decrease allies movement speed by 50% if they are within 25 yards of it. |only if heroic_dung()
|tip During the fight, he will switch bodies with one of the other two clones and you will have to switch dps.
Defeat Ascendant Lord Obsidius |scenariogoal 1/34413 |goto 68.8,56.0
step
talk Finkle Einhorn##49476
turnin Ascendant Lord Obsidius##28741 |goto 68.8,56.0
|only if haveq(28741)
step
Congratulations! You have completed Blackrock Caverns
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Cataclysm Dungeons\\End Time",{
mapid=401,
achieveid={6117},
patch='40300',
condition_suggested=function() return level>=35 and level<=35 end,
keywords={"Twilight, Highlands, Hour"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the End of Time dungeon.",
},[[
step
Press _I_ and queue for End Time or enter the dungeon with your group |goto End Time/1 81.0,44.1 < 100 |c
step
talk Alurmi##57864
accept Archival Purposes##30097 |goto End Time 79.6,45.1
step
talk Nozdormu##54476
accept Murozond##30096 |goto 79.6,45.0
step
label "transit"
Click Time Transit Device and choose one of the destinations:
<Emerald Dragonshrine> |goto End Time/5 66.5,79.5 < 5 |noway |c |next "Emerald" |or
<Azure Dragonshrine> |goto End Time/2 |noway |c |next "Azure" |or
<Ruby Dragonshrine> |goto End Time/3 34.3,43.2 < 5 |noway |c |next "Ruby" |or
<Obsidian Dragonshrine> |goto End Time/4 29.2,16.0 < 5 |noway |c |next "Obsidian" |or
<Bronze Dragonshrine> |goto End Time/6 36.5,77.5 < 5 |noway |c |next "Bronze" |or
step
label "Emerald"
kill Time-Twisted Nightsaber##54688+, Time-Twisted Sentinel##54512+
_Everyone:_
|tip In this section, you will need to start the trash by aggroing a Nightsaber. Once you have started, you will have to fight until the boss appears.
|tip There are Nightsabers and Sentinel's which keep spawning, you will have to fight constantly (they do not hit hard), stack together in the Moonlight so the tank can keep aggro.
|tip Run to each of the Moonlights as they appear and stay in it until it disappears.
Repeat until Tyrande shows up.
confirm
step
label "Tyrande"
kill Echo of Tyrande##54544 |goto End Time/5 51.8,42.9
_Everyone:_ |grouprole EVERYONE
|tip Tyrande will will send out waves of Moonlance which you will need to avoid. |grouprole EVERYONE
|tip When Tyrande is at 30% health she will be surrounded by Tears of Elune, this looks like fireworks and damages anyone within 4 yards of it. |grouprole EVERYONE
_Damage:_ |grouprole DAMAGE
|tip Tyrande will cast Eyes of the Goddess which move around the outside of the pool causing damage and silencing players. |grouprole DAMAGE
|tip It is best to remain in the pool to avoid these, but the pool will reduce your casting speed so use any speed increasing abilities you have to counteract this. |grouprole DAMAGE
_Healer:_ |grouprole HEALER
|tip Moonlance can be dispelled if a party member is hit by it. |grouprole HEALER
|tip Piercing Gaze of Elune can also be dispelled. |grouprole HEALER
_Tank:_ |grouprole TANK
|tip Absorb or Reflect Moonbolt when possible. |grouprole TANK
|tip Dodge Moonlance. |grouprole TANK
|tip Use a Damage Modifer when Tyrande 30% Health. |grouprole TANK
kill 2 Echos in the End Time instance |q 30097/1 |only if haveq(30097)
confirm
step
label "next_1"
Click Time Transit Device and choose one of the destinations:
<Azure Dragonshrine> |goto End Time/2 |noway |c |next "Azure" |or
<Ruby Dragonshrine> |goto End Time/3 34.3,43.2 < 5 |noway |c |next "Ruby" |or
<Obsidian Dragonshrine> |goto End Time/4 29.2,16.0 < 5 |noway |c |next "Obsidian" |or
<Bronze Dragonshrine> |goto End Time/6 36.5,77.5 < 5 |noway |c |next "Bronze" |or
step
label "Azure"
kill Time-Twisted Priest##54690+, Time-Twisted Sorceress##54691+, Time-Twisted Rifleman##54693+, Time-Twisted Footman##54687+
_Everyone:_
|tip Clearing the trash mobs in this room is not very difficult. You want to start killing the Priest, then the Riflemen. Make sure to have the Dps kill the Fountain of Light that are summoned also.
|tip If you can, Control the Sorceress by using Shackle or Turn Undead. If you cannot, kill Sorceress 2nd.
|tip To summon the Echo of Jaina, you will need to go around and click 16 Fragments of Jaina's Staff. Once you have clicked all 16, she will appear in the middle of the map, in the blue swirling circle.
confirm
step
label "Jaina"
kill Echo of Jaina##54445
_Everyone:_ |grouprole EVERYONE
|tip Jaina will Pyroblast the tank throughout the whole fight, this is just a fireball that causes medium damage. This cannot be silenced but can be reflected. |grouprole EVERYONE
|tip Jaina randomly creates a bomb called Flarecore, in a random area that will explode and hit all party members if not touched before 10 seconds. Running into this will cause less damage, the faster someone gets to it. |grouprole EVERYONE
|tip Jaina will blink at random times and throw 3 Frost Blades that can only be dodged, not jumped over. |grouprole EVERYONE
_Damage:_ |grouprole DAMAGE
|tip Jaina periodically creates a bomb called Flarecore, in a random area that will explode and hit all party members if not touched before 10 seconds. Running into this will cause less damage, the faster someone gets to it. |grouprole DAMAGE
|tip Jaina will blink at random times and throw 3 Frost Blades that can only be dodged, not jumped over. |grouprole DAMAGE
_Tank:_ |grouprole TANK
|tip Absorb or Reflect Pyroblast when possible. |grouprole TANK
|tip Immediately touch Flarecore. |grouprole TANK
|tip Dodge Frost Blades. |grouprole TANK
Kill 2 Echos in the End Time instance. |q 30097/1 |only if haveq(30097)
confirm
step
label "next_2"
Click Time Transit Device and choose one of the destinations:
<Emerald Dragonshrine> |goto End Time/5 66.5,79.5 < 5 |noway |c |next "Emerald" |or
<Ruby Dragonshrine> |goto End Time/3 34.3,43.2 < 5 |noway |c |next "Ruby" |or
<Obsidian Dragonshrine> |goto End Time/4 29.2,16.0 < 5 |noway |c |next "Obsidian" |or
<Bronze Dragonshrine> |goto End Time/6 36.5,77.5 < 5 |noway |c |next "Bronze" |or
step
label "Ruby"
kill Time-Twisted Geist##54511+
|tip Target the Geists and kill them with AoE, kill all Geists first, they cause the most damage.
confirm
step
label "Sylvanas"
kill Echo of Sylvanas##54123  |goto End Time/3 55.8,39.0
_Everyone:_
|tip Spread out 10 yards apart. |grouprole EVERYONE
|tip Avoid Blighted Ground. |grouprole EVERYONE
|tip All party members must target the same Risen Ghoul and kill it before it reaches Sylvanas, or this will deal AoE damage and wipe the party. Once you kill the ghoul, run through the opening in the shadows and wait until Sylvanas is on the ground again. |grouprole EVERYONE
_Healer:_ |grouprole HEALER
|tip Dispell Shriek of the Highborne asap, this will deal damage and slow the target for 30 seconds. |grouprole HEALER
Kill 2 Echos in the End Time instance |q 30097/1 |only if haveq(30097)
confirm
step
label "next_3"
Click Time Transit Device and choose one of the destinations:
<Emerald Dragonshrine> |goto End Time/5 66.5,79.5 < 5 |noway |c |next "Emerald" |or
<Azure Dragonshrine> |goto End Time/2 |noway |c |next "Azure" |or
<Obsidian Dragonshrine> |goto End Time/4 29.2,16.0 < 5 |noway |c |next "Obsidian" |or
<Bronze Dragonshrine> |goto End Time/6 36.5,77.5 < 5 |noway |c |next "Bronze" |or
step
label "Obsidian"
kill Time-Twisted Drake##54543+, Time-Twisted Seer##54553+, Time-Twisted Breaker##54552+
|tip If you can, try and Control the Twisted Breaker, this mob can hit very hard.
|tip If any of these mobs step into the lava, they will get a buff that will do extra fire damage.
confirm
step
label "Baine"
kill Echo of Baine##54431
_Everyone:_ |grouprole EVERYONE
|tip If you step in the Lava briefly, you will gain a debuff that makes you take additional fire damage, and a 20 second buff that will give you additional 10k damage per melee hit. |grouprole EVERYONE
|tip Baine will also periodically break the rock most of the group is standing on, so make sure to use each platform in a circular path and leave the last rock next to the mainland to retreat to if you cannot kill him. |grouprole EVERYONE
_Tank:_ |grouprole TANK
|tip Run to other rocks as they explode. |grouprole TANK
|tip Use damage reduction ability during Molten Axe. |grouprole TANK
kill 2 Echos in the End Time instance |q 30097/1 |only if haveq(30097)
confirm
step
label "next_4"
Click Time Transit Device and choose one of the destinations:
<Emerald Dragonshrine> |goto End Time/5 66.5,79.5 <5 |noway |c |next "Emerald" |or
<Azure Dragonshrine> |goto End Time/2 |noway |c |next "Azure" |or
<Ruby Dragonshrine> |goto End Time/3 34.3,43.2 <5 |noway |c |next "Ruby" |or
<Bronze Dragonshrine> |goto End Time/6 36.5,77.5 <5 |noway |c |next "Bronze" |or
step
label "Bronze"
kill Murozond##54432 |q 30096/1 |only if haveq(30096) |goto End Time/6 48.2,32.4
kill Muronzond##54432 |only if not haveq(30096) |goto End Time/6 48.2,32.4
_Everyone:_ |grouprole EVERYONE
|tip Distortion Bombs will be cast at random players and leave a circle or arcane on the ground avoid standing in these. |grouprole EVERYONE
|tip You will see five hourglass symbols on your screen. By clicking the large hourglass in the middle of the room, you will use 1 hourglass, this resets everyone's revives, cooldowns, all health, and clears the Distortion Bombs on the ground. |grouprole EVERYONE
_Healer:_ |grouprole HEALER
|tip Tank and Melee cannot avoid Temporal Blast, a small AoE that deals 25k damage, this will need to be healed through. |grouprole HEALER
|tip The Tank will be hit with Infinite Breath. This is shadow damage that is dealt in a cone in front of Muronzond and will follow tank if he moves left or right. This will need to be healed through. |grouprole HEALER
_Tank:_ |grouprole TANK
|tip Face boss away from group. |grouprole TANK
|tip Use damage reduction ability during Infinite Breath. |grouprole TANK
|tip Rotate Boss away from Distortion Bombs. |grouprole TANK
|tip As a tank you will need to face Boss aways from group. Muronzond has Tail Swipe so group cannot be directly behind boss. |grouprole TANK
Defeat Muronzond |scenariogoal 2/24803
step
label "next_5"
After you kill Murozond wait for Alurmi
talk Alurmi##57864
turnin Archival Purposes##30097
step
talk Nozdormu##54751
turnin Murozond##30096 |goto 52.1,44.5
step
talk Nozdormu##54751
accept The Well of Eternity##30098 |goto 52.1,44.5
step
If you wish to continue to the Well of Eternity talk to Nozdormu and he will teleport you there
talk Nozdormu##54751 |goto 52.1,44.5
Tell him "Take me to the Well of Eternity" |goto Well of Eternity |noway |c
step
Congratulations! You have completed End Time
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Cataclysm Dungeons\\Grim Batol",{
mapid=293,
achieveid={4840},
patch='40003',
condition_suggested=function() return level>=30 and level<=35 end,
keywords={"Twilight, Highlands"},
description="\nThis guide will walk you through the Grim Batol dungeon.",
},[[
step
label "lfg"
Press _I_ and queue for Grim Batol or enter the dungeon with your group |goto Grim Batol/1 12.2,56.1 < 100 |c
step
talk Farseer Tooranu##50385
accept Kill the Courier##28853 |goto Grim Batol,18.4,55.2
step
talk Velastrasza##50390
accept Soften them Up##28852 |goto 19,55
step
talk Baleflame##50387
accept Closing a Dark Chapter##28854 |goto 19.4,53
step
map Grim Batol
path follow strict;loop off;ants straight
path	18.0,43.4	20.2,39.6	26.2,39.8
path	27.9,27.1	31.8,26.2
Follow the path, clearing the trash as you go.
You will need to kill the nets that are holding the dragons down.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
clicknpc Battered Red Drake##42571
|tip You will end up flying through the instance, gaining the ability to attack groups of enemies.
|tip The damage that you do to them stays even after you land.
Kill 15 Twilight's Hammer Minions |q 28852/1
Kill 25 Trogg Dwellwers |q 28852/2
Note that if you didn't get all of the Trogg Dwellers, you can fly back and get them at the end of the instance.
Click here once you've landed. |confirm
|only if haveq(28852)
step
map Grim Batol
path follow strict;loop off;ants straight
path	32.8,29.9	31.9,39.4	34.3,54.3
path	30.0,58.6	35.2,68.2
Follow the path, clearing the trash as you go.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill General Umbriss##39625
|tip He will randomly use Blitz towards a party member. You need to move out of his path to avoid damage.
|tip He will also use Ground Siege in a random direction. It will also need to be avoided.
|tip The tank will be hit with Bleeding Wound which does massive damage every 2 seconds until they are healed to 90% of their health.
|tip At 30% he will get a Frenzy affect gaining 50% attack speed and damage.
|tip He will summon adds. Make sure to keep them more than 10 yards away from the boss. If close to the boss when they die, they will give the boss a 100% damage buff.
|tip If the adds get near the boss, they will be buffed and deal significant more damage. |only if heroic_dung()
|tip He will cast Modgud's Malady which needs to be dispelled. It is a Magic debuff and stacks up to 10 times. |only if heroic_dung()
Defeat General Umbriss |scenariogoal 1/24816 |goto 40.4,68.4
step
Wait for a patrol to come here. |goto 46.3,48.5
Watch for _Forgemaster Throngus_ who patrols through the room. Go back into the hallway if you haven't cleared the trash yet. |goto 48.7,47.1
Once the trash is cleared, click here. |confirm |goto 45.7,43.6
step
kill Forgemaster Throngus##40177
|tip This boss cycles through weapons, which have different strategies depending on which he's holding:
|tip While using a Mace his movement speed will be decreased by 70%, but his damage will be increased by 200%. The tank will need to kite him.
|tip He will jump to random party members during Mace stance inflicting damage as a dot for 5 seconds.
|tip He will leave a trail of Burning Flames behind him as he walks, avoid it at all cost. |only if heroic_dung()
|tip While using Dual Blades he loses 20% damage, but uses the _Thrash_ ability, causing him to attack an additional two times when he swings his weapons.
|tip He will also use Disorienting Roar while in Dual Blade stance, reducing casting and attack speed by 50%. This effect can be removed by using an ability or spell.
|tip He will also leave Burning Flames on whoever he hits, which can be dispelled. This effect stack with each hit. |only if heroic_dung()
|tip While using his Phalanx He takes 99% reduced damage. Move behind him to bypass this mechanic.
|tip While in Phalanx stance, there will also be archers constantly firing at your group.
|tip He will use the ability Flaming Shield which deals fire damage to anyone in front of his shield, so be quick to move behind him. |only if heroic_dung()
Defeat Forgemaster Throngus |scenariogoal 1/24813 |goto 44.7,38.6
step
map Grim Batol
path follow strict;loop off
path	56.8,47.9	60.6,53.5	60.4,63.4
path	63.8,64.6	67.2,68.1	73.0,59.0
path	68.5,54.7	70.7,41.7	69.8,30.2
Kill trash and follow the path to Drahga Shadowburner. |goto 69.8,30.2 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Darhga Shadowburner##40319
_Phase 1:_
|tip He will use Invocation of Flame which will mark the ground at a random location. It will summon a fire elemental that targets a random player, shooting a red beam.
|tip ALL DPS EXCEPT FOR THE TARGET need to kill it as soon as possible.
|tip His basic attack is Burning Shadowbolt, which can be interrupted.
_Phase 2:_
|tip At 25% he will retreat and the dragon Valiona will catch him. Tank her at the center of the room.
|tip Invocation of Flame will still be used, so be aware of the spawn point and target.
|tip She will use Devouring Flames which is a wide cone attack, so don't stand in front of her.
|tip She will use Valiona's Flame which targets a random player and breathes a 40 yard long cone which stuns and damages all players within the cone.
|tip She swipes, so don't stand in front of her.
|tip She places Seeping Twilight on the ground, a large circular pool on the ground that deals out damage over time.
|tip When her health is low she will drop Drahga Shadowburner.
collect Missive to Cho'gall##66927 |q 28853/1 |only if haveq(28853)
Defeat Darhga Shadowburner |scenariogoal 1/24812 |goto 70.3,20.7
step
map Grim Batol
path follow strict;loop off
path	77.0,40.0	85.8,40.0	86.1,57.4
Follow the path to Erudax, The Duke of Below. |goto 86.1,57.4 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Erudax##40484 |only if not haveq(28854)
kill Erudax |q 28854/1 |only if haveq(28854)
|tip The main mechanic for this fight is Shadow Gale, in which he will create a purple void zone circle on the ground. The entire group needs to move into it as fast as they can so that they aren't killed by the AoE that effects players outside of the circle. He will take double damage during the duration of the spell.
|tip Each time he uses Shadow Gale, he will summon 2 Faceless Corruptor. Use every ability you have to slow them down and kill them.
|tip ONLY SLOWING EFFECTS will work on them. If you don't kill them they will eventually heal the boss.
|tip He will use Enfeebling Blow which will knock the tank back, giving him a debuff called Feeble Body, increasing the damage the tank will take by 100% for 3 seconds.
|tip He will use Binding Shadows which is an AoE root that you can step out of before it hits the ground.
|tip If you don't kill the adds fast enough, they will be buffed with Shield of Nightmares, which will damage your group each time the add is hit. |only if heroic_dung()
Defeat Erudax |scenariogoal 1/34416 |goto 85.7,60.9
step
You can either run to the beginning of the dungeon to turn in your quests.
Or
You can Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance.
|confirm
step
talk Farseer Tooranu##50385
turnin Kill the Courier##28853 |goto Grim Batol,18.4,55.2
step
talk Velastrasza##50390
turnin Soften them Up##28852 |goto 19,55
step
talk Baleflame##50387
turnin Closing a Dark Chapter##28854 |goto 19.4,53
step
Congratulations! You have completed Grim Batol
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Cataclysm Dungeons\\Halls of Origination",{
mapid=297,
achieveid={4841},
patch='40003',
condition_suggested=function() return level>=30 and level<=35 end,
keywords={"Uldum"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the Halls of Origination dungeon.",
},[[
step
label "start"
Press _I_ and queue for Halls of Origination or enter the dungeon with your group |goto Halls of Origination/1 49.9,93.6 < 5 |c
step
map Halls of Origination/1
path follow smart; loop off; ants curved; dist 15
path	48.1,87.1	48.3,75.1	50.0,72.9
path	50.3,63.3	53.8,63.3
Follow the path |goto 53.8,63.3 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Temple Guardian Anhuur##39425
You will have 2 phases when fighting this boss
_Phase 1:_
|tip Fight this boss until he becomes immune to damage. This happens at 66% and 33%.
|tip He will cast Burning Light, which will cause a beam of light to shoot from the wall. Don't stand in the fire it creates on the ground.
|tip He will cast Divine Reckoning at a random party member. After 8 seconds, the spell will erupt and damage you along with anyone within 7 yards of you. It is a Magic Debuff and can be dispelled.
_Phase 2:_
|tip When he casts Shield of Light he becomes immune to damage.
|tip You will have to jump off the sides of the platform to the right or left, then click the switch to deactivate  shield of light and run back. |only if not heroic_dung()
|tip You will have to jump off the sides of the platform to the right and left, then click the switch to deactivate  shield of light and run back. |only if heroic_dung()
|tip Once he has shield of light, he will start channeling _Reverberating Hymn which deals 400 holy damage per stack. It stacks every 4 seconds and lasts until you click the left and right switches.
|tip Immediately moving into phase 2, Pit Vipers will spawn on the ground near the levers. The tank should take care to pick them up so that a DPS can click the lever.
Defeat Temple Guardian Anhuur |scenariogoal 1/24827 |goto Halls of Origination 58.3,62.7
step
map Halls of Origination/1
path follow smart; loop off; ants curved; dist 15
path	61.3,63.4	67.2,63.4	67.6,52.6
path	71.3,50.1	84.0,50.0
path	Halls of Origination/2 32.9,49.3
Follow the path
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Kill all the mobs in this area, then click a Camel to continue. |invehicle |c
step
kill Earthrager Ptah##39428
You will have 2 phases when fighting this boss
_Phase 1:_
|tip Look out for Earth Spike. The ground will rumble, then erupt a spike, move when you see dust.
|tip He will use Flame Bolt, which is channeled and damages 2 random players. |only if not heroic_dung()
|tip He will use Flame Bolt, which is channeled and damages 3 random players. |only if heroic_dung()
|tip He will use Raging Smash which will damage the tank and 2 additional targets within melee range.
_Phase 2:_
|tip At 50% Ptah will burrow and you will have to fight some mobs.
|tip He will summon a Sand Vortex that moves around the battlefield.
|tip He will summon Dustbone Horrors and _Jeweled Scarabs_, which need to be killed before the boss returns.
|tip Be aware of quicksand, this will slow your movement and cause damage while standing in it.
Defeat Earthrager Ptah |scenariogoal 1/25097 |goto 49.8,49.3
step
click Halls of Origination Transit Device##204979 |goto 66.7,48.5
Teleport to The Maker's Rise. |goto Halls of Origination 67.5,52.8 < 5 |noway |c
step
map Halls of Origination/1
path follow smart; loop off; ants curved; dist 15
path	63.6,49.9	56.4,49.4
talk Brann Bronzebeard##39908
Tell him "We're ready! Go, Brann!" |goto 56.0,44.7
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Kill each Elemental Warden on the platforms around this room
[49.0,32.6]
[63.3,32.6]
[63.3,22.1]
[49.2,22.0]
|confirm
step
kill Anraphet##39788
|tip This boss is more of a Healing intensive fight for the whole group.
|tip Anraphet will cast Alpha Beams, this cause damage to a player and all players around them.
|tip It will leave circle on the ground you need to avoid for 3 seconds. |only if not heroic_dung()
|tip It will leave circle on the ground you need to avoid and lingers throughout the fight. |only if heroic_dung()
|tip Anraphet will go into Omega Stance causing damage to the whole group for 8 seconds.
|tip After Omega Stance or Alpha Beams, he will use Crumbling Ruin, decreasing the groups health by 8%. It stacks 10 times.
Defeat Anraphet |scenariogoal 1/24828 |goto 56.2,19.3
step
click Halls of Origination Transit Device##204979 |goto 56.2,27.2
Teleport to The Maker's Rise. |goto 67.5,52.8 < 5
confirm
step
click The Maker's Lift Controller##207669 |goto 66.4,48.3
Bring Elevator to the 2nd floor |goto Halls of Origination/3 45.9,47.6 |noway |c
step
kill Ammunae##39731 |goto 47.1,78.8
|tip He will cast Wither on a random party member. It reduces attack speed, casting speed and movement speed by 60%. It can be interrupted and dispelled (magic).
|tip He will cast Consume Life Energy, which will deal nature damage and dimish a players 'resource'.
|tip He will summon Seedling Pods. They will use Energize on Ammunae, increasing his damage done by 5% and attack speed by 30% while alive. Kill them when they spawn.
|tip It will also heal Ammunae for 1% of his max health every 3 seconds while alive. |only if heroic_dung()
|tip He will use Rampant Growth, transforming all Seedling Pods into Bloodpetal Sprouts which will inflict massive damage to the party.
|tip He will spawn a Spore. It moves slowly and when it dies, it leaves a spore cloud with a 6 yard radius that deals nature damage every 1.5 seconds.
|tip The Noxious Spore cloud that spawn can also dish out major damage to any plant life, inflicting 12 to 18% of it's health.
|confirm
step
kill Setesh##39732 |goto 67.1,49.5
|tip He will cast Chaos Bolt at a random party member.
|tip He will also place Seed of Chaos on a random party member. When it detonates, the group will take shadow damage.
|tip Through the fight, he will Summon Chaos Portals. It will spawn monsters that the DPS need to kill, then despawn after around 25 seconds. |only if not heroic_dung()
|tip Through the fight, he will Summon Chaos Portals. It will spawn monsters while it is up. The DPS will need to attack the portal to stop it from spawning adds. |only if heroic_dung()
|confirm
step
kill Isiset##39587 |goto 26.7,49.8
|tip She will cast Supernova through out the fight. You can turn away from her to avoid the disorienting effect right before she finishes her cast.
|tip When she reaches 66 and 33% health, she will use her Mirror Images ability.
|tip At 66% she will split into 3 forms. Kill the Veil of Sky Mirror Image.
|tip At 33% she will split into 2 forms. Kill the Celestial Call Mirror Image.
|confirm
step
kill Rajh##39378
|tip Rajh will start with 100 energy and cast spells at 20 energy each.
|tip Rajh's spells to avoid are: Summon Sun Orb. This is channeled above a players head, after 3 seconds it will drop and deal damage, knocking players nearby back. It can be interrupted.
|tip He will cast Inferno Leap and it needs to be interrupted. If not, he will jump towards a targeted player, and deal large damage knocking away any nearby players.
|tip This can kill the player he lands on if they do not move.
|tip He will also cast Solar Winds which creates a fiery vortex in front of him that grows an dmoves around the room.
|tip The Solar Wind will leave Solar Fire on the ground, which deal out massive damage. |only if heroic_dung
|tip When he reaches 10 or less energy, he walks to the middle of the room and casts Blessing of the Sun.
|tip He will become 100% more vulnerable to player attack, while regenerating his energy and causing AoE fire damage to your group.
Defeat Rajh |scenariogoal 1/34418 |goto 47.2,19.7
step
Congratulations you have completed _Halls of Origination_!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Cataclysm Dungeons\\Hour of Twilight",{
mapid=399,
achieveid={6119},
patch='40300',
condition_suggested=function() return level>=35 and level<=35 end,
keywords={"Tanaris, Caverns, Time, of, CoT"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the Hour of Twilight dungeon.",
},[[
step
Press _I_ and queue for Hour of Twilight or enter the dungeon with your group |goto Hour of Twilight/1 48.3,19.7 < 100 |c
step
talk Thrall##54548
turnin The Hour of Twilight##30102 |goto Hour of Twilight,48.7,19.7
accept To Wyrmrest!##30103 |goto Hour of Twilight,48.7,19.7
step
talk Thrall##54548 |goto Hour of Twilight,48.7,19.7
Tell him "Yes Thrall"
confirm
step
map Hour of Twilight
path follow strict;loop off;ants straight
path	50.9,20.3	52.3,21.6	53.9,23.1
Follow this path and kill the groups.
Talk to Thrall when you are ready to face the boss.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Arcurion##54590
_Everyone:_ |grouprole EVERYONE
|tip Avoid Icy Boulders. |grouprole EVERYONE
|tip Interrupt or use damage reduction ability on Hand of Frost. |grouprole EVERYONE
|tip At 30% use damage reduction cooldowns and dps cooldowns on the boss. |grouprole EVERYONE
_Damage:_ |grouprole DAMAGE
|tip Keep Thrall out of the Ice block by damaging it when he is frozen. |grouprole DAMAGE
_Healer:_ |grouprole HEALER
|tip When the boss hits 30% the group will take aoe damage until it is defeated, save cooldowns for this phase. |grouprole HEALER
Click here for a more detailed boss fight.
Defeat Arcurion |scenariogoal 1/24841 |goto 56.7,27.4
step
collect Urgent Twilight Missive##77957 |n
Click the Urgent Twilight Missive in your bags. |use Urgent Twilight Missive##77957
accept The Twilight Prophet##30105 |goto 56.7,27.4
step
talk Thrall##54548 |goto 57.4,28.8
Tell him "Lead the Way"
confirm
step
map Hour of Twilight
path follow strict;loop off;ants straight
path	58.4,31.9	55.3,33.1	51.8,35.2
path	47.4,36.7	45.0,40.5
Follow the Thrall |goto 43.7,45.3
talk Thrall##54548
Tell him "Yes Thrall lets do this"
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Twilight Assassin##55106+, Twilight Thug##55111+, Twilight Bruiser##55112+, Twilight Ranger##55107+, Twilight Shadow-Walker##55109+
map Hour of Twilight
path follow loose;loop off;ants straight
path	45.5,47.1	45.6,49.0
path	43.0,50.0	40.4,48.7
Follow Thrall through this canyon.
|tip You will have to fight a few groups through this area.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Asira Dawnslayer##54968
_Everyone:_ |grouprole EVERYONE
|tip Avoid Choking Smoke Bomb, you will not be able to target the boss while inside this. |grouprole EVERYONE
|tip Stand in Thrall's Fire Totem, this gives a health and damage buff stacking up to 10 times. |grouprole EVERYONE
|tip If targeted by mark of Silence be sure to run behind the tank that way you do not take damage or silenced. |grouprole EVERYONE
Defeat Asira Dawnslayer |scenariogoal 1/24842 |goto Hour of Twilight,39.5,52.4
step
clicknpc Life Warden##55549 |goto 40.1,50.8
|invehicle |c
step
You will land next to Thrall on the road to Wyrmrest Temple.
|outvehicle |c
step
talk Thrall##54548 |goto 49.2,67.7
Tell him "Yes Thrall lets do this"
confirm
step
kill Faceless Shadow Weaver##54633+, Faceless Brute##54632+, Shadow Borer##54686+
map Hour of Twilight
path follow loose; loop off; straight
path	49.8,70.2	49.7,71.7	49.4,75.4
path	49.4,81.0	49.6,82.8
Follow Thrall through this canyon.
|tip Kill the Shadow Borer's first, they interrupt and stop healing.
Enter Wyrmrest Temple here. |goto Hour of Twilight 49.6,82.8 <5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Archbishop Benedictus##54938
_Everyone:_ |grouprole EVERYONE
|tip Spread out 10 yards. |grouprole EVERYONE
|tip Avoid Wave of Virtue by standing in the blue shell. |grouprole EVERYONE
|tip Avoid Wave of Twilight by running to the side. |grouprole EVERYONE
|tip Move out of purple circles on the ground. |grouprole EVERYONE
_Healer:_ |grouprole HEALER
|tip Watch out for players infected by Twilight Shear of Purifying Blast, they will take damage and deal damage to another around them, these can be dispelled. |grouprole HEALER
Unmask the Twilight Prophet. |q 30105/1 |only if haveq(30105)
Escort Thrall to Wyrmrest Temple. |q 30103/1 |only if haveq(30103)
Defeat Archbishop Benedictus |scenariogoal 1/18544 |goto Hour of Twilight/2 47.2,50.9
step
talk Thrall##54971
turnin To Wyrmrest!##30103 |goto 46.9,45.0
turnin The Twilight Prophet##30105 |goto 46.9,45.0
step
Congratulations! You have completed Hour of Twilight
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Cataclysm Dungeons\\Lost City of the Tol'vir",{
mapid=277,
achieveid={4848},
patch='40003',
condition_suggested=function() return level>=30 and level<=35 end,
keywords={"Uldum, LCotT"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the Lost City of the Tol'vir dungeon.",
},[[
step
label "start"
Press _I_ and queue for Lost City of the Tol'vir or enter the dungeon with your group |goto Lost City of the Tol'vir/0 31.8,16.8 < 100 |c
step
talk Captain Hadan##50038
accept The Source of Their Power##28783 |goto Lost City of the Tol'vir 31.7,16.3
accept Targets of Opportunity##28781 |goto Lost City of the Tol'vir 31.7,16.3
step
kill 1 Oathsworn Captain##45122 |q 28781/2 |goto 40.8,28.8
|tip The Captain will cast an AoE spell on the ground. Make sure to move out of this fast, it will do lots of damage.
|only if haveq(28781)
step
map Lost City of the Tol'vir/0
path follow strict;loop off;ants straight
path	33.8,27.0	40.8,28.8	42.3,40.8
Follow the path
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill General Husam##44577 |only if not haveq(28781)
kill General Husam##44577 |q 28781/1 |only if haveq(28781)
|tip He will use Shockwave. When he is beginning to cast, get out of the smoke on the ground. It will deal damage in each direction.
|tip He will toss Mystic Traps all around him. Do not get near these, or they will detonate, causing 35k damage.
|tip When he uses Mystic Trap, he will cast Detonate Traps soon after, causing them to glow followed by an explosion. Move away from them before the blow up |only if heroic_dung()
Defeat General Husam |scenariogoal 1/24826 |goto 36.5,43.2
step
kill 1 Oathsworn Captain##45122 |q 28781/2 |goto 30.1,34.6
|only if haveq(28781)
step
map Lost City of the Tol'vir/0
path follow strict;loop off;ants straight
path	42.7,41.4	50.9,43.6	51.0,57.3
path	58.6,57.3	66.4,70.5
Follow this path and kill the boss.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Lockmaw##43614
|tip Lockmaw will use Dust Flail, which will affect anyone standing behind him.
|tip Spread out so you don't hurt your group with Viscous Poison. It will damage anyone within 5 yards of you, as well as slow them by 30%
|tip He will also cast Scent of Blood on a random party member, causing 4 adds to attack them. Kill them fast and have your tank taunt them whenever possible.
|tip At 30% Health he will gain the ability Venomous Rage, which can be dispelled.
kill Augh##49045 |only if heroic_dung()
|tip Augh will appear after you defeat Lockmaw. Avoid his Whirlwind by kiting him around. |only if heroic_dung()
|tip He will toss a poison on random party members called Paralytic Blow Dart, dispel it if you are able. |only if heroic_dung()
|tip He will cast Dragon's Breath on your tank, disorienting him. At this time he will go after party members with high threat. |only if heroic_dung()
|tip He will go into a frenzy which cannot be removed. |only if heroic_dung()
Defeat Lockmaw |scenariogoal 1/24824 |goto 67.2,72.2
step
map Lost City of the Tol'vir/0
path follow strict;loop off;ants straight
path	66.0,69.6	59.1,58.3	49.7,57.1
path	47.1,68.1	49.0,76.4	42.0,81.6
path	39.7,71.2	36.7,61.1	27.1,65.5
Follow this path and kill the boss
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill High Prophet Barim##43612
_Phase 1:_
|tip He will cast Blaze of the Heavens, which spawns a bird that can be kited or nuked from afar. When you kill it it turns to an egg and heals. |only if heroic_dung()
|tip He will use Fifty Lashings to increase his damage output. You may want to use cooldowns.
|tip He will cast Plague of Ages, this will deal 4k damage every second for 9 second and can be dispelled.
|tip Heaven's Fury. This will open up a portal of light that will deal large damage to anyone standing in the light.
|tip At 50% he will use Repentance, pulling the entire group to him. It will also deal out damage and knock the players back at the end of it's duration.
_Phase 2:_
|tip He will place Hallowed Ground on the ground that deals massive damage. Move out of it as fast as possible.
|tip He will summon a Harbinger of Darkness and start using Soul Sever. Soul Sever spawns a Soul Fragment which needs to be killed quickly and can be slowed, stunned and snared.
|tip Players will randomly be hit for around 7,000 damage during this phase. Healers need to try and keep people topped off.
|tip When the Harbinger of Darkness is dead, it will go back to phase one.
Defeat High Prophet Barim |scenariogoal 1/24825 |goto 26.5,65.5
step
Start here |goto 36.0,62.8
Ride the Wind Tunnel |goto 35.7,53.9 < 5
confirm
step
kill Siamat##44819 |only if not haveq(28783)
kill Siamat |q 28783/1 |only if haveq(28783)
_Phase 1:_
|tip He will spawn Minions of Siamat. Interrupt their spells and kill them as fast as you can. Kill them by the ledges, as they spawn whirlwinds when they die.
|tip He will summon Servants of Siamat, which need to be Tanked and Killed. Only 3 will spawn during the fight. After the 3rd one, Siamat will become vulnerable. Move away from them as they are about to die to avoid AoE damage.
|tip During the fight, Siamat will cast Storm Bolt.
_Phase 2:_
|tip He will use Wailing Winds when the shield goes down. Move away from the edges and top every one off health wise if you are the healer.
|tip Minions of Siamat will continue to spawn, but you can ignore them and focus on the boss.
|tip He will use Absorb Storms removing a minion and granting him a passive AoE.
Defeat Siamat |scenariogoal 1/34417 |goto 40.8,55.3
step
talk Captain Hadan##50038
turnin The Source of Their Power##28783
turnin Targets of Opportunity##28781 |goto Lost City of the Tol'vir 31.7,16.3
step
Congratulations! You have completed Lost City of the Tol'vir
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Cataclysm Dungeons\\The Stonecore",{
mapid=324,
achieveid={4846},
patch='40003',
condition_suggested=function() return level>=30 and level<=35 end,
keywords={"Deepholm"},
description="\nThis guide will walk you through the Stonecore dungeon.",
},[[
step
label "start"
Press _I_ and queue for The Stonecore or enter the dungeon with your group |goto The Stonecore/1 54.5,94.5 < 100 |c
step
talk Earthwarden Yrsa##50048
accept Twilight Documents##28815 |goto The Stonecore 53.7,94.9
step
map The Stonecore/1
path follow strict;loop off;ants straight
path	54.6,88.4	61.4,79.2	63.3,70.9
kill Stonecore Earthshaper##43537+
|tip Make sure to kill him first, if not killed fast enough, he will transform and do big group damage.
|tip You will have to fight him in each group as you continue forward.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
click Twilight Documents##207415
collect Twilight Documents##65734 |q 28815/1 |goto 63.5,65.2
|only if haveq(28815)
step
Click the Quest Completion Box that pops up:
turnin Twilight Documents##28815
accept Followers and Leaders##28814
step
kill Corborus##43438
_Phase 1_
|tip Corborus will attack the Tank and use Crystal Barrage. These crystals will do damage to anyone standing in them.
|tip These will also spawn Crystal Shards to attack. Make sure to AoE these down quickly. |only if heroic_dung()
|tip Additionally, he will randomly use Dampening Wave, which will reduce the healing the party takes, as well as dealing damage. Remove this from the tank as soon as possible. (Magic Effect)
_Phase 2_
|tip Corborus will burrow. During this time avoid the areas with rubble when he is underground, he will jump out of these areas and hurt anyone standing in it.
|tip Kill the adds he summons during this phase.
Defeat Corborus |scenariogoal 1/25089 |goto The Stonecore 62.4,61.2
step
map The Stonecore/1
path follow strict;loop off;ants straight
path	59.6,59.8	54.9,58.4	50.0,59.7
path	46.1,55.7	43.4,52.2	38.8,49.6
Follow the path
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Slabhide##43214
|tip He will use Sand Blast which deals damage in a cone in front of him. Only the tank should be in front of him.
|tip He will cast Lava Fissure under a ranndom players feet. It will erupt after 3 seconds and create a lava pool that lasts for 30 seconds.
|tip He will cast Stalactite often. When he does he'll move to the center of the room and cause spikes to rain from the ceiling. Avoid them, as they do massive damage. There will be a shadow where they drop.
|tip After the Stalactite's, he will cast Crystal Storm, move behind the rocks out of his line of site to avoid damage. |only if heroic_dung()
scenariogoal 1/25090 |goto 37.7,44.9
step
map The Stonecore/1
path follow strict;loop off;ants straight
path	37.7,39.5	39.8,32.2	38.6,20.8
path	42.7,16.7	45.4,19.0
As you run through this room, you will want to kill the Stonecore Sentries, they will aggro big groups if they are close enough. |goto 38.7,20.6
|tip Stonecore Bruisers patrol this area. When you can, kill them away from groups.
|tip If you stay to the right side, you will not have to kill groups on the left side.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Ozruk##42188
|tip Face Ozruk away from the group. He will use Ground Slam that everyone, including the tank need to avoid. This causes massive damage
|tip Ozruk will cast Shatter shortly after Ground Slam. Run 15 yards away from him or you will take damage up to 200k.
|tip He will cast Paralyze, which needs to be dispelled. You can also cast a DoT when Ozruk has Elementium Bulwark up, or simply melee him keeping the Elementium Spike Shield debuff on you at all times to break the effect. |only if heroic_dung()
Defeat Ozruk |scenariogoal 1/25091 |goto 47.7,20.0
step
map The Stonecore/1
path follow strict;loop off;ants straight
path	48.5,27.2	48.0,35.6	48.4,45.2
path	53.5,40.5
Follow the path
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill High Priestess Azil##42333 |only if not haveq(28814)
kill High Priestess Azil##42333  |q 28814/1 |only if haveq(28814)
kill 101 Devout Follower##42428 |q 28814/2 |only if haveq(28814)
_Phase One_
|tip She will need to be tanked and moved when she creates a _Gravity Well_ (purple circle with that deals shadow damage).
|tip During this phase, boss will need to be tanked on the left of the Gravity Well, so the mobs will run in and die.
|tip She will also use an ability called Force Grip which deals massive damage to the tank and should be interrupted each time it is used. |only if heroic_dung()
_Phase Two_
|tip She will float up to her altar and Tank will need to get aggro on all the Devout Followers that run in.
|tip She will use Seismic Shard, which throws a huge rock at a random party member. More often than not it will kill that party member, so be on the look out for a shadow on the ground. |only if heroic_dung()
Defeat High Priestess Azil |scenariogoal 1/34450 |goto 57.64,38.24
step
You can either run to the beginning of the dungeon to turn in your quests.
Or
You can Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance.
|confirm
step
talk Earthwarden Yrsa##50048
turnin Followers and Leaders##28814 |goto 53.6,95.0
step
Congratulations! You have completed The Stonecore
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Cataclysm Dungeons\\Throne of the Tides",{
mapid=322,
achieveid={4839},
patch='40003',
condition_suggested=function() return level>=30 and level<=35 end,
keywords={"Vashj'ir, Water"},
description="\nThis guide will walk you through the Abyssal Maw: Throne of the Tides dungeon.",
},[[
step
label "lfg"
Press _I_ and queue for Throne of the Tides or enter the dungeon with your group |goto Throne of the Tides/1 49.9,88.2 < 100 |c
step
talk Captain Taylor##50270
accept Rescue the Earthspeaker!##28834 |goto Throne of the Tides,49.9,90.6
accept Sins of the Sea Witch##28836 |goto Throne of the Tides,49.9,90.6
|tip You can only pick up these quests if you have completed the main quest line in Val'shara.
confirm
step
map Throne of the Tides/1
path follow smart; loop off; ants curved; dist 12
path	49.9,88.2	50.2,74.8	50.5,64.7
path	49.9,49.7	Throne of the Tides/2 50.1,84.5
Follow the path |goto Throne of the Tides/2 50.1,84.5 < 12
|tip Mobs will swim through the bubbles of water on the sides of the tunnel.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Ride the jellyvator to the top and get off |goto Throne of the Tides/2 50.6,77.6 < 8 |noway |c
|tip You will need to jump to actually get on the jellyfish.
step
map Throne of the Tides/2
path follow smart; loop off; ants curved; dist 12
path	50.6,77.6	50.6,65.7	50.6,51.6
path	50.5,33.4
Follow the path |goto 50.5,33.4 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Lady Naz'jar##40586
scenariogoal 24798 |goto 50.6,21.4
step
click Throne of Tides Defense System##7147 |goto Throne of the Tides/2 50.8,33.1
confirm
step
kill Commander Ulthok##40765
|tip Squeeze this will be used on a random party member, restricting them from any actions.
|tip He will use Dark Fissure where the tank is standing.  It's important to move away from him when he does this as this attack may one-shot you.
|tip When he uses Dark Fissure it leaves a circle of shadow on the ground that slowly expands the longer the fight carries on.
|tip He casts Curse of Fatigue at a random target, slowing their movement and haste by 50%
|tip He will Enrage increasing all damage done by 50%.
Defeat Commander Ulthok |scenariogoal 24799 |goto 50.6,41.8
step
Click the Throne of the Tides Teleporter |goto 51.2,52.7
confirm
step
map Throne of the Tides/1
path follow strict;loop off;ants straight
path	49.9,88.2	50.2,74.8	50.5,64.7
path	49.9,49.7	57.3,44.6	61.9,43.7
path	66.2,38.6	67.2,30.4
Follow the path
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Mindbender Ghur'sha##40788 |goto Throne of the Tides/1 67.2,20.4
_Phase 1:_
|tip Erunak will cast Earth Shards at a random party member. It will cause damage in a line, so move out of it.
|tip He will cast Lava Bolt at a random target.  This spell can be interrupted.
|tip He will use Magma Splash in a cone in front of him.
_Phase 2:_
|tip Mindbender Ghur'sha will put Mind Fog on the ground, rendering you unable to cast or attack, as well as causing shadow damage.
|tip He will randomly Enslave a party member. You will have to beat the member down until they reach 50% helath.
|tip If you don't free the player, they will die. |only if heroic_dung()
|tip The most important ability to watch out for is Absorb Magic. All spells cast at him while this ability is up will heal him.
Rescue Erunak Stonespeaker |q 28834/1 |only if haveq(28834)
confirm
step
talk Erunak Stonespeaker##36915
turnin Rescue the Earthspeaker!##28834 |goto 67.2,20.4
step
map Throne of the Tides/1
path follow strict;loop off;ants straight
path	67.2,30.4	66.2,38.6	61.9,43.7
path	57.3,44.6	50.0,44.7	42.6,44.1
path	34.6,41.8	32.4,30.0
Follow the path
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Neptulon##40792 |goto 32.5,22.5
Let him know you're ready.
confirm
step
kill 3 Faceless Sapper##44752+, Vicious Mindlasher##44715+, Unyielding Behemoth##44648+
kill Ozumat##44566
_Phase 1:_
|tip Deep Murloc Invaders will spawn in groups. Often, and should be AoE'd down.
|tip There will be 3 Vicious Mindlashers that spawn, and need to be tanked.
|tip There will be 1 Unyielding Behemoth that spawns and needs to be tanked.
|tip After the 3 Vicious Mindlashers and Unyielding Behemoth are killed, 3 Faceless Sappers will spawn.
_Phase 2:_
|tip Kill the Faceless Sappers 1 at a time, focusing them down quickly.
|tip The tank should look for Blight Beasts, kiting them around the room as they spawn.
|tip Once the 3 Faceless Sappers are defeated, Ozumat will appear.
Defeat Ozumat |scenariogoal 1/34414 |goto 36.4,17.4
step
talk Captain Taylor##50270
turnin Sins of the Sea Witch##28836 |goto Throne of the Tides,49.9,90.6
only if haveq(28836)
step
Congratulations! You have completed Throne of the Tides
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Cataclysm Dungeons\\Vortex Pinnacle",{
mapid=325,
achieveid={4847},
patch='40003',
condition_suggested=function() return level>=30 and level<=35 end,
keywords={"Uldum, VP"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the Vortex Pinnacle dungeon.",
},[[
step
label "lfg"
Press _I_ and queue for Vortex Pinnacle or enter the dungeon with your group |goto The Vortex Pinnacle/1 54.1,16.7 < 100 |c
step
talk Itesh##49943
accept A Long Way from Home##28779
accept Vengeance for Orsis##28760 |goto The Vortex Pinnacle 54.4,16.6
step
map The Vortex Pinnacle
path follow strict;loop off;ants straight
path	59.1,24.3	62.0,28.7	65.4,29.7
path	65.1,33.4	62.1,34.0
Follow the path down the ramp.
|tip Fight near the wall so you don't get knocked off.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Grand Vizier Ertan##43878
|tip When engaged, she will summon whirlwinds at the outside of the room.
|tip Move in towards her to avoid them for the duration of the fight.
|tip As the fight progresses, Grand Vizier Ertan will pull the whirlwinds to form a wall around her. Move outward, away from her, avoiding the whirlwinds!
|tip If you're hit by the whirlwinds you will receive a debuff, decreasing movement, casting and attack speed as well as take nature damage.
collect Grand Vizier Etran's Heart##65660 |q 28779/1 |only if haveq(28779)
Defeat Grand Vizier Ertan |scenariogoal 1/24810 |goto 55,44.6
step
Start here |goto The Vortex Pinnacle 57.6,48.9
Ride the Slipstream across the gap. |goto 63.6,59.1 < 5
confirm
step
kill Young Storm Dragon##45919 |goto 60.6,65.3 |n
|tip When you pull these, move it away from the circle or it will heal for all the damage you do.
confirm
step
There will be Howling Gales that you will need to hit to cross the bridge. |goto 58.4,68.9 |n
Cross the bridge. |goto 55.2,73.6 < 5
confirm
step
kill Young Storm Dragon##45919 |goto 53.6,76.1 |n
|tip When you pull these, move it away from the circle or it will heal for all the damage you do.
confirm
step
kill Empyrean Assassin##45922
kill Turbulent Squall##45924  |goto 53.0,77.7
|tip For this trash, move out of Hurricane.
|tip Interrupt Cloudburst when it's cast.
|tip Kill Empyrean Assassins first.
|confirm
step
kill Altairus##43873
|tip When engaged, Altairus will summon a wind which will affect your haste.
|tip He will also summon Twisting Winds, which will toss you up in the air and deal damage if you're hit by them. |only if heroic_dung()
|tip Using the wind current to your advantage will be the deciding factor in this fight.
|tip You will need to navigate around the boss. When you have the Upwind of Altairus buff, stop moving. You gain a 100% haste buff for spells and attacks.
|tip If you have the Downwind of Altairus debuff, circle the boss until you have the Upwind buff.
|tip Do not stand in front of Altairus. He uses a cone breath ability.
Defeat Altairus |scenariogoal 1/24811 |goto 52,80.6
step
Start here |goto 49.4,80.7 |n
Ride the Slipstream across the gap. |goto 31.4,80.4 < 8
confirm
step
map The Vortex Pinnacle
path follow strict;loop off;ants straight
path	33.3,72.6	32.5,69.2	29.6,63.9
path	28.0,57.3	30.7,51.0	30.1,44.1
Follow the path
|tip There will be an electric field in the area. Magic won't work on mobs in these fields.
|tip For these trash pulls, always kill or use crowd control for Temple Adepts.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Asaad##43875 |only if not haveq(28760)
kill Asaad##43875 |q 28760/1 |only if haveq(28760)
|tip He will channel Supremacy of the Storm. When he does so he will start to create a triangle on the ground randomly in the room.
|tip You will need to run inside of the triangle.
|tip His primary attack is Chain Lightning so try to spread out of possible to reduce group damage.
|tip He will cast Static Cling which will root you to the ground and can be deadly. If you jump at the time it is cast you will not get rooted, but if not then it is a Magic effect and can be removed. |only if heroic_dung()
Defeat Asaad |scenariogoal 1/34415 |goto 29.8,39
step
Start here |goto 29.2,46.4  |n
Ride the Slipstream across the gap. |goto 54.1,16.8 < 8
confirm
step
talk Itesh##49943
turnin A Long Way from Home##28779
turnin Vengeance for Orsis##28760 |goto 54.5,15.9
step
Congratulations! You have completed The Vortex Pinnacle
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Cataclysm Dungeons\\Well of Eternity",{
mapid=398,
achieveid={6118},
patch='40300',
condition_suggested=function() return level>=35 and level<=35 end,
keywords={"Caverns, of, Time, CoT, WoE"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the Well of Eternity dungeon.",
},[[
step
Press _I_ and queue for Well of Eternity or enter the dungeon with your group |goto Well of Eternity/0 28.0,63.3 < 100 |c
step
talk Nozdormu##55624
turnin The Well of Eternity##30098 |goto Well of Eternity,27.3,64.2
step
talk Nozdormu##55624
accept In Unending Numbers##30099 |goto Well of Eternity,27.3,64.2
step
talk Alurmi##57864
accept Documenting the Timeways##30104 |goto 26.0,63.0
step
kill Legion Demon##55503 |goto Well of Eternity,26.2,65.6
_Everyone:_
|tip He will use 2 abilities. He will leap to a random party causing damage to anyone nearby.
|tip He also uses an ability that will cause 25k Shadow damage to the group which applies a damage debuff by 10%, this can stack multiple times.
Archive a Legion Demon |q 30104/1 |only if haveq(30104)
|confirm |only if not haveq(30104)
step
talk Illidan Stormrage##55500 |goto Well of Eternity 19.6,68.8
Tell him "I am ready to be hidden by your shadowcloak"
confirm
step
kill Dreadlord Defender##55656+, Corrupted Arcanist##55654
_Warning_
|tip Wait for Illidan to throw down smoke bombs and then run through the gap in the line of demons.
|tip Take out the Dreadlords first and try to interrupt their Carrion Swarm, this causes big shadow damage to anyone in front of them.
click Portal Energy Focus##209448 |goto 27.1,56.7
Disable the First portal. |q 30099/1 |only if haveq(30099)
|confirm |only if not haveq(30099)
step
kill Dreadlord Defender##55656+, Corrupted Arcanist##55654
|tip Take out the Dreadlords first and try to interrupt their Carrion Swarm, this causes big shadow damage to anyone in front of them.
click Portal Energy Focus##209448
Disable Second portal. |q 30099/2 |only if haveq(30099)
|confirm |only if not haveq(30099)
step
kill Dreadlord Defender##55656+, Corrupted Arcanist##55654
|tip Take out the Dreadlords first and try to interrupt their Carrion Swarm, this causes big shadow damage to anyone in front of them.
click Portal Energy Focus##209448 |goto 15.9,35.1
Disable Third portal |q 30099/3 |only if haveq(30099)
|confirm |only if not haveq(30099)
step
kill Peroth'arn##55085 |q 30099/4 |only if haveq(30099) |goto 19.5,52.0
kill Peroth'arn##55085 |only if not haveq(30099) |goto 19.5,52.0
_Everyone:_ |grouprole EVERYONE
|tip Fel Decay will target a random player, then leave an AoE circle on the ground. Stay out of this. |grouprole EVERYONE
|tip At 60% health, Peroth'arn will stun the group, and deal shadow damage for 4 seconds. He will vanish after this, giving you time to recover. |grouprole EVERYONE
|tip While he is stealthed, avoid detection by the Eyes of Peroth'arn. If any party member is detected, Peroth'arn will ambush that person and deal massive damage. |grouprole EVERYONE
|tip He will return if the group remains undetected by the Eyes of Peroth'arn for 40 seconds. |grouprole EVERYONE
_Tank:_ |grouprole TANK
|tip Taunt the boss asap if any player is detected by his Eyes. |grouprole TANK
|tip Tanks take 20% increased damage during this fight. |grouprole TANK
_Healer:_ |grouprole HEALER
|tip For this fight, be careful of healing those with the Fel Decay debuff. You will take equal damage that your heals do to that target. |grouprole HEALER
|tip He randomly places a DoT called Fel Flames on a party member, so be ready to heal through it. |grouprole HEALER
|tip When he hits 60%, he will deal massive AoE damage, so be sure to heal up the party before hand. |grouprole HEALER
|tip If any party member is detected, Peroth'arn will ambush that person and deal massive damage, be fast to heal this player. |grouprole HEALER
Defeat Peroth'arn |scenariogoal 2/24837
step
talk Nozdormu##55624
turnin In Unending Numbers##30099 |goto 29.4,40.0
accept The Vainglorious##30100 |goto 29.4,40.0
step
kill Enchanted Highmistress##56579+, Enchanted Magus##54882+, Eternal Champion##54612 |goto 33.6,35.1
|tip Walking along this path you will encounter groups of 3.
|tip Kill the spellcasters first as they do damage to the whole group.
|confirm
step
kill Eye of the Legion##54747+ |goto 31.5,29.4
|tip These deal massive channeled fire damage called Fel Flames in a frontal cone. This can be interrupted.
|confirm
step
kill Royal Handmaiden##54645+
The handmaidens are very easy to kill. They throw bottles of nature damage and can put members to sleep, however if you kill them fast enough, you won't have any trouble.
Archive Royal Handmaiden |q 30104/2 |goto 43.7,27.3
|only if haveq(30104)
step
kill Queen Azshara##54853 |only if not haveq(30100) |goto 47.2,36.9
kill Queen Azshara##54853 |q 30100/1 |only if haveq(30100) |goto 47.2,36.9
*NOTE* You will not attack the Queen, killing all guards will end the fight.
_Everyone:_ |grouprole EVERYONE
|tip The Queen will often cast Total Obedience and charm your entire party. Interrupt this or it will kill your group. |grouprole EVERYONE
|tip The Frost Magus unleashes a very powerful attack you will want to dodge called Coldflame. This looks like a blue line of energy on the ground. You will know it's coming by the spinning blue circles that appear before it hits. |grouprole EVERYONE
|tip The Queen will summon 2 Magus' to life at a time to attack the group. These will be summoned about every 30 seconds. |grouprole EVERYONE
|tip There are 3 types of Magus' all with basic abilities, Fire, Frost, and Arcane. |grouprole EVERYONE
_Damage:_ |grouprole DAMAGE
|tip She will cast Servant of the Queen which mind controls a player. Kill the puppet strings above that character to release them. |grouprole DAMAGE
Defeat Queen Azshara |scenariogoal 3/24838
step
Click the Time Transit Device |goto 43.9,32.9
Teleport to The Well of Eternity |goto 73.1,84.0 < 5
confirm
step
talk Nozdormu##55624
turnin The Vainglorious##30100 |goto 71.7,80.6
accept The Path to the Dragon Soul##30101 |goto 71.7,80.6
step
kill Doomguard Annihilator##55519+ |goto Well of Eternity/0 73.2,77.7
|tip Wait for Tyrande to cast Light of Elune. Once you see this light, aggro a demon and they will all come to fight. Stay in the light to help kill them all fast.
|confirm always
step
kill Abyssal Doombringer##55510 |goto 83.8,61.2
|tip When fighting the Doombringer, he will constantly cast Abyssal Flames which damages the whole group for 40k fire damage. Kill him fast to keep the group from dying.
|confirm
step
kill Captain Varo'then##55419 |goto 84.7,55.0
_Everyone:_ |grouprole EVERYONE
|tip When coming up to fight Mannoroth, you will first face Captain Varo'then. |grouprole EVERYONE
|tip Captain Varo'then will attack with Magistrike dealing 30k fire damage. This jumps to any player nearby. |grouprole EVERYONE
|tip Fel Firestorm will fall from the sky often. This is a rapid Fel Flame that flows along the ground. Stay out of it. |grouprole EVERYONE
Archive Captain Varo'then. |q 30104/3 |only if haveq(30104)
Defeat Captain Varo'then |scenariogoal 4/24839
step
kill Mannoroth##54969 |q 30101/1 |only if haveq(30101) |goto 84.7,55.0
kill Mannoroth##54969 |only if not haveq(30101) |goto 84.7,55.0
_Everyone:_ |grouprole EVERYONE
|tip After a short time, a portal will open releasing lots of Doomguards and Demons. |grouprole EVERYONE
|tip Attack Mannoroth until he gets to 25%. He will retreat at this point. |grouprole EVERYONE
_Damage:_ |grouprole DAMAGE
|tip After Varo'then is dead, start attacking Mannoroth. |grouprole DAMAGE
|tip Aoe any demon that comes out. |grouprole DAMAGE
|tip Attack Mannoroth and avoid the fire that rains from the sky. If you attract any adds run to your tank so that he may pick them up. |grouprole DAMAGE
_Tank:_ |grouprole TANK
|tip click the sword that falls and use it against Mannoroth. |grouprole TANK
|tip Stand near the portal and aoe any demon that comes out, pick these up until Tyrande Whisperwind is free. |grouprole TANK
Defeat Mannoroth |scenariogoal 4/24840
step
talk Alurmi##57864
turnin Documenting the Timeways##30104 |goto 87.8,49.9
step
talk Illidan Stormrage##55532
turnin The Path to the Dragon Soul##30101 |goto 84.6,55.9
|tip You will have to wait a little while for the RP to finish.
step
talk Chromie##57913
accept The Hour of Twilight##30102 |goto 87.3,49.3
step
If you wish to continue to the Hour of Twilight talk to Chromie and she will teleport you there
talk Chromie##57913 |goto 87.3,49.3
Tell her "I am ready to help Thrall, back in my present time."  |goto Hour of Twilight |noway |c
step
Congratulations! You have completed Well of Eternity
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Cataclysm Dungeons\\Zul'Aman",{
mapid=333,
achieveid={691, 5769},
patch='40100',
condition_suggested=function() return level>=35 and level<=35 end,
keywords={"Ghostlands, ZA, Amani"},
description="\nThis guide will walk you through the Zul'Aman dungeon.",
},[[
step
label "start"
Press _I_ and queue for Zul'Aman or enter the dungeon with your group |goto Zul'Aman/0 7.5,53.2 < 100 |c
step
talk Witch Doctor T'wansi##52925
accept The Hex Lord's Fetish##29186 |goto Zul'Aman 13.8,52.2
step
talk Vol'jin##52924
accept Warlord of the Amani##11196 |goto 14.2,53.2
step
talk Vol'jin##52924 |goto 14.2,53.2
Tell him you are ready to open the doors.
|confirm
step
There will be a patrol walking at this point, wait for it to pass before moving to your left. |goto 34.4,48.7
|confirm
step
map Zul'Aman
path follow strict;loop off;ants straight
path	31.8,43.8	29.7,41.3	33.0,40.0
path	35.4,40.1	37.8,39.4	37.4,34.3
path	36.0,28.5
At this point, follow the path up the steps.
|tip There will be mobs that come after you from behind as you go up the steps.
|tip Kill Amani'shi Wind Walkers first, interrupting Chain Heal whenever they cast it.
Follow the path up to Akil'zon's Altar. |goto 36.0,28.5 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Akil'zon##23574 |goto 35.1,22.9
|tip For this encounter, you will want to spread out to avoid zapping party members with AoE attacks.
|tip Amani Kidnappers will swoop down, picking up a random party member. You will have to kill the bird quickly.
|tip He will cast Electrical Storm on a random party member. When this happens, all players will need to move underneath the party member who is affected.
|tip Electrical Storm deals out massive damage that increases over time, so move quickly.
|tip He will also put the Static Disruption debuff on a random target, dealing nature damage and increasing nature damage taken. It can be dispelled.
scenariogoal 1/24846
step
map Zul'Aman
path follow strict;loop off;ants straight
path	34.3,61.7	31.0,63.4	30.8,66.6
path	33.9,70.4	34.1,75.8	37.5,76.5
The patrol will still be there you can avoid it or kill them.
|tip Follow the path up, fighting trash as you go along.
|tip Kill Amani'shi Medicine Men first, followed by Amani'shi Casters.
|tip If needed, you can also use crowd control on them when needed.
|tip At the last pull, you will not be able to crowd control at first.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Nalorakk##23576
_Phase 1(Troll Phase):_
|tip He will deal massive damage to the tank with _Brutal Strike_.
|tip He also uses an ability called Surge. It's important to know that he charges the player furthest from him, leaving a debuff that increases damage taken by 500%!
|tip This means that you need to rotate who gets hit by it. Ranged DPS and Healers should be the ones to do this. However if you don't have enough ranged, have everyone stack close to the boss, and have a melee step out when it's their turn.
|tip He will use Surge 3 times, so 3 people will need to take the hit!_
_Phase 2(Bear Phase):_
|tip He will put a massive bleed dot on the tank called Lacerating Slash.
|tip He will also use Deafening Roar, which silences the party for 2 seconds. It will be important to keep the tank topped off on health during phase 2.
|tip He will go back and forth between phases.
Defeat Nalorakk |scenariogoal 1/24847 |goto 40.6,76.5
step
map Zul'Aman
path follow strict;loop off;ants straight
path	34.3,76.8	33.9,90.6	37.5,91.4
path	43.3,89.5	48.0,90.0	49.6,86.2
path	52.2,84.2	55.9,84.2	59.8,83.6
path	58.5,77.6	55.4,76.8	55.4,72.6
Follow the path.
|tip Use crowd control on Amani'shi Flame Casters when applicable.
|tip Keep an eye out for Amani'shi Scouts, if they do not die instantly they will summon additional adds..
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Jan'alai##23578
|tip For this fight, he will cast Flame Breath towards a random player. Step out of the way when he does so, it deals massive fire damage.
|tip He will also Summon Amani'shi Hatchers, which hatch Amani Dragonhawk Hatchlings. ONLY KILL ONE of the Hatchers, and let the other destroy the eggs.
|tip Use every AoE ability you have to kill the hatchlings as they come in waves.
|tip He will also periodically use Fire Bomb, where he will teleport to the center of the room and throw fire orbs around randomly. DO NOT STAND ON THE FIRE ORBS.
|tip DPS him down slowly until the Amani Dragonhawk Hatchlings are dead.
Defeat Jan'alai |scenariogoal 1/24848 |goto 55.4,71.0
step
map Zul'Aman
path follow strict;loop off;ants straight
path	55.6,62.9	59.1,56.1	59.1,50.8
path	59.0,43.1	62.3,37.6	64.8,30.0
path	71.3,23.4	76.4,21.7
Follow the path. |goto 76.4,21.7 < 5
|tip If you have any sort of water walk, you can reach the end waypoint without fighting much.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Zul'Aman
path follow strict;loop off;ants straight
path	75.1,14.9	70.4,14.1	68.3,19.2
path	65.2,23.1
There will be packs of Amani Lynx that are stealthed. Let your tank move ahead of the party.
|tip At the last waypoint, use any crowd control you have available, and pull the group to the bottom of the stairs.
|tip Kill the trolls first.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Halazzi##23577 |goto 58.0,23.3
|tip He will drop a Water Totem, which heals and restores mana to anyone standing in it's radius. Move Halazzi out of it, and have ranged party members stand in it.
|tip At 66% and 33% he will summon a Spirit of the Lynx that has random threat no matter what. Halazzi's health will jump to 100% also. Burn him down.
|tip Kill Corrupted Lightning Totems as they are summoned. He only casts this while in troll form.
|tip Dispel Flame Shock if possible. He only casts this while in troll form.
scenariogoal 1/24849
step
map Zul'Aman
path follow strict;loop off;ants straight
path	59.4,33.9	62.4,34.3	59.9,40.1
path	58.8,45.8	58.1,53.9	64.9,53.2
Follow the path up to Hex Lord Malacrass.
|tip Use crowd control on Amani'shi Medicine Men.
|tip When you fight Amani'shi Berserkers let your tank get threat before you attack, they cannot be taunted.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
label "hex"
kill Hex Lord Malacrass##24239+ |goto 71.3,53.2
|tip He will have two adds on both his sides. They can be crowd controlled and should be if possible.
|tip If your group has no crowd control, then you will need to kill them before attacking the boss, as they do a lot of damage.
|tip Hex Lord Malacrass will adopt the abilities from a random party member. Click below to see what he will do.
collect The Hex Lord's Fetish##69264 |q 29186/1 |only if haveq(29186)
Death Knight: |next "dk" |confirm
Druid: |next "druid" |confirm
Hunter: |next "hunt" |confirm
Mage: |next "mage" |confirm
Paladin: |next "pally" |confirm
Priest: |next "priest" |confirm
Rogue: |next "rogue" |confirm
Shaman: |next "shaman" |confirm
Warlock: |next "lock" |confirm
Warrior: |next "war" |confirm
Click here to continue. |next "daa" |confirm
step
label "dk"
He will put Death and Decay on the ground. Stay out of it.
|tip Kill Blood Worms if you see them.
Click here to go back to the Hex Lord. |next "hex" |confirm
step
label "druid"
He will use Lifebloom which should be dispelled.
|tip He will also use Thorns which should be removed from him.
Click here to go back to the Hex Lord. |next "hex" |confirm
step
label "hunt"
He will use Explosive Trap.
|tip He will use Freezing Trap.
|tip He will use Snake Trap. AoE down the snakes.
Click here to go back to the Hex Lord. |next "hex" |confirm
step
label "mage"
He will root nearby players with Frost Nova.
Click here to go back to the Hex Lord. |next "hex" |confirm
step
label "pally"
He will use Consecration, which is an AoE Ground Type attack. Move out of it.
|tip He will cast Holy Light which needs to be interrupted.
|tip He will use Avenging Wrath which can be Purged, Dispelled or you can use Spell Steal.
Click here to go back to the Hex Lord. |next "hex" |confirm
step
label "priest"
He will use Mind Control.
|tip He Will use Heal which needs to be interrupted.
|tip He will use Psychic Scream which will fear you if you are close so stay away if you can.
Click here to go back to the Hex Lord. |next "hex" |confirm
step
label "rogue"
He will use Blind.
|tip He will use Would Poison on the tank which needs to be dispelled (Poison).
Click here to go back to the Hex Lord. |next "hex" |confirm
step
label "shaman"
He will use Fire Nova so stay away from him if you can.
|tip He will use Healing Wave which needs to be interrupted.
|tip He will use Chain Lightning so spread out.
Click here to go back to the Hex Lord. |next "hex" |confirm
step
label "lock"
He will cast Rain of Fire, simply move out of its radius.
|tip He will cast Unstable Affliction, DO NOT dispel it.
Click here to go back to the Hex Lord. |next "hex" |confirm
step
label "war"
He will use Spell Reflect, be sure not to cast big spells when he's got it up.
|tip He will use Whirlwind, so don't be within melee range.
|tip He will use Mortal Strike on the tank.
Click here to go back to the Hex Lord. |next "hex" |confirm
step
label "daa"
Click the doors and fight the trolls that come out. |goto 73.8,53.2
After you defeat the trolls, make your way to the steps.
|confirm
step
label "final"
kill Daakara##23863 |only if not haveq(11196) |goto 90.8,52.6
This encounter has 3 phases:
_Phase 1:_
|tip He will use Whirlwind often. Melee should move away from him when he is casting it to avoid damage.
|tip He will also also use Grievous Throw which leaves a bleed on a target. If you heal the afflicted target to full it will go away.
_Phase 2:_
|tip He will take on two of the forms of former bosses. If Lynx is first, he will choose Dragonhawk second. If Bear is first then Eagle will be second. Click to get a detailed explaination.
|confirm |only if not haveq(11196) |next "turnin"
kill Daakara##23863 |q 11196/1 |only if haveq(11196) |next "turnin"
Click here for details on _Shape of the Eagle_.|next "eagle" |confirm
Click here for details on _Shape of the Bear_.|next "bear" |confirm
Click here for details on _Shape of the Dragonhawk_.|next "dragonhawk" |confirm
Click here for details on _Shape of the Lynx_.|next "lynx" |confirm
step
label "eagle"
He will use Energy Storm which will hit players whenever they cast a spell for 12,000 nature damage.
|tip Kill Lightning Totems as he places them on the battle field.
|tip He will cast Summoned Cyclone which needs to be avoided at all cost.
Click here to go back to the boss. |next "final" |confirm
step
label "bear"
His main ability will be Creeping Paralysis, this will stun the entire party after a few seconds but can be dispelled. Mass Dispell is extremely useful but if you do not have one then dispel priority targets (Healer, Tank, Highest DPS).
|tip He will also use Surge, so you will all need to stack up on the boss, having 3 different ranged move out to take the surge.
Click here to go back to the boss. |next "final" |confirm
step
label "dragonhawk"
He will cast Flame Whirl which increases damage from fire, this is unavoidable.
|tip He will cast Flame Breath at targets in front of him. Do not be in front of him.
|tip He casts Column of Fire which deals out a lot of damage, move out of it.
Click here to go back to the boss. |next "final" |confirm
step
label "lynx"
He will use Claw Rage on a random party member. The tank will need to Taunt it IMMEDIATELY.
|tip He will also spawn a Lynx during the fight.
|tip He will also randomly use Lynx Rush dealling mass damage to the target.
Click here to go back to the boss. |next "final" |confirm
step
label "turnin"
talk Witch Doctor T'wansi##52925
turnin The Hex Lord's Fetish##29186 |goto 91.6,54.8
step
talk Vol'jin##52924
turnin Warlord of the Amani##11196 |goto 93.0,53.6
step
Congratulations! You have completed Zul'Aman
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Cataclysm Dungeons\\Zul Gurub",{
mapid=337,
achieveid={688, 5768},
patch='40100',
condition_suggested=function() return level>=35 and level<=35 end,
keywords={"Stranglethorn, Vale, STV, ZG"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the Zul Gurub dungeon.",
},[[
step
label "start"
Press _I_ and queue for Zul'Gurub or enter the dungeon with your group |goto Zul'Gurub/0 30.0,48.9 < 100 |c
step
talk Overseer Blingbang##53151
accept Booty Bay's Interests##29154 |goto Zul'Gurub 30.7,47.5
step
talk Bloodslayer Zala##53024
accept Break the Godbreaker##29241 |goto 30.6,47.3
step
talk Briney Boltcutter##53043
accept Putting a Price on Priceless##29242 |goto 30.5,51.0
step
talk Bloodslayer T'ara##53023 |goto Zul'Gurub/0 30.8,47.1
accept The Beasts Within##29172 |or
accept Break Their Spirits##29175 |or
accept Secondary Targets##29173 |or
|tip T'ara will only offer 1 or 2 of these quests at a time.
step
kill Venomancer Mauri##52380 |goto 33.4,46.7
clicknpc Zanzil's Cauldron of Toxic Torment##52529
Get the Toxic Torment Buff. |havebuff 133781
step
Fight your way through this path.
kill Venomtip Needler##52379+ |goto 37.2,46.4
|tip If you need another nature buff, you can get one here.
|confirm
step
kill Tiki Lord Mu'Loa##52340 |goto 43.9,51.0
|confirm
step
Fight your way to the next cauldron.
clicknpc Zanzil's Cauldron of Toxic Torment##52529 |goto 48.5,52.1
Get the Toxic Torment Buff. |havebuff 133781
step
Pull the Venomguard Destroyers near the cauldron and kill them.
kill Venomguard Destroyer##52311+
|confirm
step
kill High Priest Venoxis##52155 |goto 50.8,55.1
_Phase 1:_
|tip He will cast, Toxic Link which attaches 2 party members. Run 25 yards away from each other to break this.
|tip Whispers of Hethiss is a beam of poison that will damage a player while channeled. This needs to be _interrupted_.
|tip During the fight he will use Venomous Effusion which creates a maze of poison on the ground. Avoid the wall at all cost.
_Phase 2:_
|tip Venoxis will Transform into a snake god. A poisonous cloud maze will appear on the ground, avoid walking in this.
|tip He will continue to use Venomous Effusion.
|tip His damage will be increased by 50% while in snake form.
|tip He will cast a Pool of Acrid Tears on the player furthest away from him which deals nature damage. Avoid if you can.
|tip He will use a cone attack, Breath of Hethiss, so melee should attack from the back if possible.
_Phase 3:_
|tip Players will be chased by Poison Tendrils, avoid these for 12 seconds. After this phase, Venoxis will take 100% more damage for 10 seconds. If  you do not kill him, phase 1 will repeat.
|confirm
step
map Zul'Gurub
path follow strict;loop off
path	49.4,54.3	49.0,58.1	52.9,57.8
path	56.2,63.0	56.9,72.3
Follow this path
|tip Avoid the rocks to make it up the hill
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Bloodlord Mandokir##52151 |goto 60.1,80.2
|tip He will randomly use Decapitate which will kill whoever he uses it on.
|tip When the player is killed, a Chained Spirit will revive you, giving you Spirit's Vengeance, granting 25% Health, Damage, Healing and decreasing damage taken by 10%. This effect stacks.
|tip He will gain a Level Up buff when he kills a player, increasing damage dealt by 20%, a stacking effect.
|tip Mandokir will summon his raptor Ohgan. Kill the Raptor everytime it spawns or it will kill a Chained Spirit.
|tip There are only 8 spirits, so kill Ohgan as fast as possible.
|tip He will use Devastating Slam often during the fight, a 45 degree cone attack that will likely kill you. It marks the ground as to where it strikes, so avoid it.
|tip He will toss the Bloodletting debuff on a random target, dealing 50% of their current health as shadow damage.
|confirm
step
Go back down the hill |goto 56.6,63.3 < 5
confirm
step
kill Kaulema the Mover##52422 |q 29173/2 |goto 54.6,63.0
|only if haveq(29173)
step
kill Mor'Lek the Dismantler##52405 |q 29173/1 |goto 54.9,55.5
|only if haveq(29173)
step
kill Witch Doctor Qu'in##52322 |goto 54.5,52.7
kill Chosen of Hethiss##52323+
|confirm
step
kill Ritual Tiki Mask##52364+ |goto 59.5,46.1
|confirm
step
If a party member has an Archaeology of 225 at least and wishes to fight the boss, click here. |confirm |next |goto 59.3,46.4
If the party wishes to skip the Archaeology boss, click here. |next "end" |confirm |goto 59.3,46.4
step
The Edge of Madness event will summon 1 of 4 random bosses.
If Hazza'rah spawns click here. |next "hazza" |confirm
If Renataki spawns click here. |next "rena" |confirm
If Wushoolay spawns click here. |next "wush" |confirm
If Gri'lek spawns click here. |next "gri" |confirm
step
label "hazza"
kill Hazza'rah##52271
|tip Hazza'rah will use Nightmare and summon 4 adds. Each add will target a random party member and cast Waking Nightmare stunning them. The player who is not stunned must kill the adds before they reach the targetted player.
collect Mysterious Gurubashi Bijou##69647 |q 29242/1 |only if haveq(29242)
|confirm |only if not haveq(29242) |next "end"
step
label "rena"
kill Renataki##52269
|tip Renataki will use Deadly Poison throughout the fight. This effect stacks and can be cleansed.
|tip He will periodically Vanish. When he does this make sure everybody in the party is at 100% health. He will Ambush a random target that deals 90% of the players health.
|tip He will also cast Thousand Blades. This whirlwind is dangerous and needs to be avoided.
collect Mysterious Gurubashi Bijou##69647 |q 29242/1 |only if haveq(29242)
|confirm |only if not haveq(29242) |next "end"
step
label "wush"
kill Wushoolay##52286
|tip Wushoolay will summon Lightning Clouds periodically that should be avoided.
|tip He will use Forked Lightning, so spread out.
|tip Wushoolay will transform into a ball of lightning and charge at a random player. After he reaches them he begins to cast Lightning Rod. Everybody needs to run away from Wushoolay at this point, Lightning Rod does deadly amounts of damage and needs to be avoided
collect Mysterious Gurubashi Bijou##69647 |q 29242/1 |only if haveq(29242)
|confirm |only if not haveq(29242) |next "end"
step
label "gri"
kill Gri'lek##52258
|tip Gri'lek is a kiting encounter.
|tip He will fixate on a random party member and gain the _Avatar_ buff, increasing his damage output by 500% and reducing his movement speed. If he fixates on you just run away until it is done.
|tip He will cast Entangling Roots on the player he is chasing, this can and needs to be dispelled.
|tip He constantly summons Rupture Lines. Avoid the rumbling dirt.
collect Mysterious Gurubashi Bijou##69647 |q 29242/1 |only if haveq(29242)
|confirm |only if not haveq(29242) |next "end"
step
label "end"
map Zul'Gurub
path follow strict;loop off
path	58.0,50.9	56.5,50.5	56.6,43.3
path	58.5,34.9
Follow this path
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Mortaxx##52438 |q 29173/3 |goto 62.4,33.8
|only if haveq(29173)
step
Enter the building here |goto 57.9,29.8 < 5 |c
|only if haveq(29175)
step
kill Gurubashi Master Chef##52392 |goto 57.7,27.3
Destroy the Gurubashi Master Chef |q 29175/2
|only if haveq(29172)
step
Follow this path. |goto 55.6,27.7 < 5
confirm
step
Follow this path down towards the water. |goto 53.6,29.2 < 5 |c
|only if haveq(29172)
step
kill Lost Offspring of Gahz'ranka##52418 |q 29172/1 |goto 55.1,33.5
|only if haveq(29172)
step
Follow this path. |goto 47.9,27.6 < 5
confirm
step
kill High Priestess Kilnara##52059 |goto 47.8,20.9
_Phase 1_
|tip The tank should pull the Pride of Bethekk and keep aggro on Kilnara.
|tip The DPS should focus on killing the 16 Pride of Bethekk, pulling 4 at a time. (You can kill more if you've got great dps)
|tip She will cast Tears of Blood on random party members. It deals massive damage and should be dispelled as soon as possible.
|tip She will also cast Lash of Anguish on a random target, which should be dispelled.
|tip She will cast Wave of Agony at a random player, attacking and knocking back anyone in front of her. Avoid it.
_Phase 2_
|tip Once she reaches 50% health she will enter phase 2, vanishing. When she reappears, she will be in cat form.
|tip She will deal out more damage. DPS her down as fast as possible.
|confirm
step
map Zul'Gurub
path follow strict;loop off
path	47.6,23.6	44.9,28.1	42.2,29.1
Go upstairs and leave the building. |goto 47.6,23.6 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
|only if haveq(29172)
step
map Zul'Gurub
path follow strict;loop off
path	38.1,29.8	37.0,32.1	33.8,36.1
path	33.0,38.4
Follow this path |goto 33.0,38.4 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
|only if haveq(29172)
step
kill Florawing Hive Queen##52442 |q 29172/2
|only if haveq(29172)
step
map Zul'Gurub
path follow strict;loop off
path	38.8,27.1	34.8,27.1	34.8,27.1
Follow this path up to the next boss |goto 34.8,27.1 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Zanzil##52053 |goto 31.4,24.8
|tip Zanzil will Drain 3 Cauldrons separately during this fight. You will use the buff of each Cauldron for the proper response to the boss.
click  Zanzil's Cauldron of Toxis Torment |goto 30.6,23.9
|tip Use the Green Cauldron at this location to get the buff. He will cast Graveyard Gas and put poison all over the ground.
click Zanzil's Cauldron of Frostburn Formula |goto 31.6,27.3
|tip Use the Blue Cauldron at this location to get the Forstburn Formula. He will resurrect a Berserker which you will have to kill.
click Zanzil's Cauldron of Burning Blood |goto 33.0,24.3
|tip Use the Red Cauldron at this location to get the Burning Blood. The Tank will use this to aggro and kill all the Zombies that resurrect.
|confirm
step
map Zul'Gurub
path follow strict;loop off
path	37.7,27.5	42.7,30.2	41.1,37.0
path	46.1,39.9	46.6,36.6
Follow this path up and around |goto 46.6,36.6 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Jin'do the Godbreaker##52148 |only if not haveq(29252) |goto 48.7,39.9
kill Jin'do the Godbreaker##52148 |q 29241/1 |only if haveq(29241) |goto 48.7,39.9
This fight has 2 phases
_Phase 1:_
|tip Jin'do will cast an aura Shadows of Hakkar, which will do heavy damage to the group. Make sure to stand in the green bubbles while this aura is active.
|tip Once his aura, Shadows of Hakkar is over, move out of the bubble.
_Phase 2:_
|tip Jin'do will go away and there will be 3 chains protected by a barrier on the ground. The tank will need to grab a Gurubashi Spirit and get near the chains.
|tip The Gurubashi Spirit will use Body Slam on a player, if the player is near the chains, the barrier will break. Kill 3 chains by breaking the barrier and attacking them.
collect Zul'Gurub Stone##69774 |q 29252/1 |only if haveq(29252)
|confirm |only if not haveq(29252)
step
Go to this bridge |goto 42.5,42.4 <5 |c
|only if haveq(29172)
step
kill Gub##52440 |q 29175/1 |goto 43.0,44.6
|only if haveq(29175)
step
Follow this path |goto 43.6,47.9 <5 |c
|only if haveq(29172)
step
Cross the bridge |goto 44.8,51.0 <5 |c
|only if haveq(29172)
step
Follow this path |goto 47.8,53.0 <5 |c
|only if haveq(29172)
step
Follow the path to the edge of the water |goto 46.7,54.3 <5 |c
|only if haveq(29172)
step
kill Tor-Tun##52414 |q 29172/3 |goto 46.1,55.7
|only if haveq(29172)
step
talk Overseer Blingbang##53151
turnin Booty Bay's Interests##29154 |goto 30.7,47.5
step
talk Bloodslayer Zala##53024
turnin Break the Godbreaker##29241 |goto 30.6,47.3
step
talk Bloodslayer T'ara##53023 |goto 30.8,47.1
turnin The Beasts Within##29172 |or
turnin Break Their Spirits##29175 |or
turnin Secondary Targets##29173 |or
|tip T'ara will only offer 1 or 2 of these quests at a time.
step
talk Briney Boltcutter##53043
turnin Putting a Price on Priceless##29242 |goto 30.5,50.9
step
Congratulations! You have completed Zul'Gurub
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Cataclysm Raids\\Baradin Hold",{
mapid=282,
condition_suggested=function() return level>=32 and level<=35 end,
keywords={"BH, TB, Tol, Barad"},
author="support@zygorguides.com",
description="\nThis guide will walk you through the Baradin Hold Raid.",
},[[
step
This raid can only be completed if your faction controls Baradin Hold, the main fortress on Tol Barad.
|confirm
step
Enter Baradin Hold |goto Tol Barad/0 47.69,52.58 < 5
confirm
step
map Baradin Hold/1
path loop off
path	48.0,72.5	54.6,62.9	70.8,62.9
Follow the path, clearing trash as you make your way to the first boss, Argaloth. |goto 70.8,62.9 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Argaloth##47120 |goto 80.4,63.4
|tip Meteor Slash deals 200,000 Fire damage, split between players within 65 yards in front of Argaloth, also increasing their fire damage taken by 100%.
|tip Consuming Darkness the Shambling Doom inflicts 3000 Shadow damage and applies a DoT that deals additional Shadow damage every 0.5 seconds for 15 seconds. Should be dispelled immediately.
|tip Fel Firestorm occurs when Argaloth is at 66% and 33% health. He rains fireballs down on the raid, leaving scorch marks on the ground upon impact. These marks deal 8500 Fire damage when standing in them.
|tip Berserk is an enrage, occuring after 5 minutes of combat. It increases his damage by 900% and attack speed by 150%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
|confirm
step
kill Occu'thar##52363 |goto 15.5,63.1
|tip Eyes of Occu'thar spawns a swarm of eyes that attach to players, inflicting 8700-9200 Shadow damage every second. After 10 seconds they explode, dealing 25,000 Shadow damage to the raid.
|tip Focused Fire Occu'thar targets a player, then inflicts 25,000 Fire damage every second to players within 12 yards of the targeted location.
|tip Searing Shadows deals 105,000 Shadow damage to players in a cone in front of Occu'thar, also increasing Shadow damage they take by 100% for 30 seconds.
|tip Berserk is an enrage, occuring after 8 minutes of combat. It increases her damage by 900% and attack speed by 150%. This is designed to wipe the raid. Kill her before she reaches this stage to avoid death.
|confirm
step
kill Alizabal##55869 |goto 47.9,17.9
|tip Skewer skewers and stuns Alizabal's target for 8 seconds, dealing 10,000 Physical damage every 2 seconds and increasing the target's damage taken by 150%.
|tip Seething Hate affects a random player, dealing 200,000 total Fire damage, split between all players within 6 yards of the target.
|tip Blade Dance Alizabal enters a blade dance, dealing 12,500 Physical damage every second to all players within 13 yards of her and deflecting all incoming attacks.
|tip Berserk is an enrage, occuring after 5 minutes of combat. It increases her damage by 900% and attack speed by 150%. This is designed to wipe the raid. Kill her before she reaches this stage to avoid death.
|confirm
step
Congratulations, you have finished the Baradin Hold raid guide!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Cataclysm Raids\\The Bastion of Twilight",{
mapid=294,
achieveid={4850},
patch='40003',
condition_suggested=function() return level>=32 and level<=35 end,
author="support@zygorguides.com",
description="\nThis guide will walk you through the Bastion of Twilight Raid.",
},[[
step
Enter The Bastion of Twilight |goto Twilight Highlands/0 34.01,77.88 < 5
|tip The instance portal is located high up in the air.
confirm
step
map The Bastion of Twilight/1
path loop off
path	39.6,42.7	39.6,19.8	46.6,19.4
Follow the path, clearing trash as you make your way to the first boss, Halfus Wyrmbreaker. |goto The Bastion of Twilight/1 46.6,19.4 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Halfus Wyrmbreaker##44600 |goto The Bastion of Twilight/1 53.4,19.3
|tip Furious Roar occurs after Halfus reaches 50% health. It deals 10,000 Physical damage and knocks the raid down.
|tip Dragon's Vengeance Halfus takes an additional 100% damage from all sources, stacking up to 3 times.
|tip Frenzied Assault increases the caster's attack speed by 100%.
|tip Malevolent Strikes reduces the effectiveness of any healing on the target by 6%, stacking up to 15 times.
|tip Shadow Nova deals 30,000 Shadow damage and knocking back all players.
|tip Berserk occurs after 6 minutes of combat. It increases his damage by 500% and attack speed by 150%. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
_Proto-Behemoth_
|tip Fireball deals Fire damage to players in a small area.
|tip Fireball Barrage deals 34,000-46,000 Fire damage to players in a small area.
|tip Scorching Breath deals 9000 Fire damage per second to players in front of the Proto-Behemoth.
_Heroic_ |only if heroic_dung()
|tip On heroic difficulty this boss starts off with all 5 buffs from the 5 drakes. |only if heroic_dung()
|confirm
step
map The Bastion of Twilight/1
path loop off
path	53.7,29.1	53.7,48.9	53.7,68.3
Follow the path, clearing trash as you make your way to the next boss, Valiona and Theralion. |goto The Bastion of Twilight/1 53.7,68.3 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Valiona & Theralion_ |goto The Bastion of Twilight/1 53.9,78.4
kill Valiona##45992
_Grounded_
|tip Blackout deals 35,000 total Shadow damage to players within 8 yards, splitting damage to all players affected by it.
|tip Devouring Flames deals 40,000 Shadow damage to players in front of Valiona. Deals less damage to players farther away from Valiona.
_Flying_
|tip Deep Breath Valiona begins to cast Twilight Flames that deal 15,000 Shadow damage every second and send the target to the Twilight Realm.
|tip Twilight Meteorite is a debuff placed on a random player. After 6 seconds it deals 120,000 total Shadow damage to players within 8 yards, spliting damage between all nearby players.
kill Theralion##45993
_Grounded_
|tip Engulfing Magic increases damage and healing done by 100% and causes you to inflict Shadow damage equal to the damage or healing you do to allies within 10 yards.
|tip Fabulous Flames deal 15,000 Shadow damage every second.
_Flying_
|tip Dazzling Destruction causes swirls on the ground to appear. After 5 seconds 50,000 Shadow damage to every player within the blast zone.
|tip Twilight Blast deals 30,000 Shadow damage to players within 8 yards of the target.
_Heroic_ |only if heroic_dung()
|tip If hit by either Deep Breath or  Dazzling Destruction will cause you to enter the Twlight Zone |only if heroic_dung()
|tip In here you will need to kill Twilight Sentries. |only if heroic_dung()
|tip Orbs will spawn in this realm called Unstable Twilight these need to be dodged. |only if heroic_dung()
|tip Anyone within the Twilight Realm will take damage every 2 seconds that will increase over time. |only if heroic_dung()
|confirm
step
map The Bastion of Twilight/1
path loop off
path	53.6,86.7	47.1,92.8	The Bastion of Twilight/2 42.4,18.2
Follow the path, clearing trash as you make your way to the next boss, the Twilight Ascendant Council. |goto The Bastion of Twilight/2 42.4,18.2 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Twilight Ascendant Council_ |goto The Bastion of Twilight/2 42.5,45.5
_Phase 1_
kill Feludius##43687
|tip Heart of Ice deals increasing Frost damage every 2 seconds, starting at 2000 Frost damage and increasing to 4000 and then 8000 Frost damage.
|tip Hydro Lance deals 45,000-55,000 Frost damage to a random player.
|tip Water Bomb deals 10,000 Frost damage to players within 6 yards, applying the Waterlogged debuff.
|tip Waterlogged reduces the target's movement speed by 25%. Fire can remove this effect.
|tip Glaciate deals massive Frost damage to any nearby players, and reducing damage the farther away from Feludius each player is.
|tip Frozen Blood freezes a Waterlogged enemy solid, stunning them and dealing 20,000 Frost damage every 2 seconds for 10 seconds.
kill Ignacious##43686
|tip Burning Blood deals increasing Fire damage every 2 seconds, starting at 2000 Fire damage and increasing to 4000 and then 8000 Fire damage.
|tip Aegis of Flame surrounds the caster with a shield of flame, absorbing 1,000,000 damage and preventing spell interruption.
|tip Flame Torrent inflicts 40,000 Fire damage in a 18 yard cone every second for 3 seconds.
|tip Inferno Leap deals 23,000-27,000 Fire damage and knocking away all nearby players.
|tip Inferno Rush Ignacious runs back to his primary aggro target, leaving a trail of flames behind him that deal 5000 Fire damage every 0.5 seconds and removes _Waterlogged_.
|tip Rising Flames deals increasing Fire damage to the entire raid until interrupted.
_Heroic_ |only if heroic_dung()
|tip Arion and Terrastra will assist their allies in the first phase. |only if heroic_dung()
|tip Ariod will help using an ability Static Overload, this will put a debuff on a player and anyone standing near this player will take damage every 2 seconds. |only if heroic_dung()
|tip Terrastra will help using an ability called Gravity Core, this will deal damage to a random player and slow haste and movement speed of any other player within 10 yards. |only if heroic_dung()
Click here to move to Phase 2. |confirm
step
_Twilight Ascendant Council_ |goto The Bastion of Twilight/2 42.5,45.5
_Phase 2_
kill Arion##43688
|tip Call Winds creates a cyclone that deals 7000 Nature damage and levitates the player into the air.
|tip Lightning Rod marks a player that attracts electrical attacks. Arion will cast Chain Lightning on this player.
|tip Chain Lightning affects players that have been marked to attract electricity. It deals 10,000 Nature damage and bounces to additional nearby players.
|tip Disperse the caster dissolves into the wind and materializes somewhere else in the room.
|tip Lightning Blast deals 72,000-88,000 Nature damage to the tank after Arion casts Disperse.
|tip Thundershock deals 146,000-153,000 Nature damage to all nearby players.
kill Terrastra##43689
|tip Gravity Well creates a well that connects nearby players to the ground, reducing the effectiveness of some powerful electric attacks.
|tip Gravity Core occurs after entering a Gravity Well, dealing 10,000 Physical damage every 2 seconds for 10 seconds.
|tip Harden Skin increases Terrastra's Physical damage dealt by 100% and absorbing 50% of all damage taken, up to a maximum of 650,000.
|tip Eruption shoots a spike through the floor, impaling players within 4 yards and dealing 47,000-52,000 damage and knocking them up into the air.
|tip Quake sends a shockwave through the ground, dealing 150,000 damage to all players who are in contact with the ground. Deals more to targets grounded by a Gravity Well.
Click here to move to Phase 3. |confirm
step
_Defeat the Twilight Ascendant Council_ |goto The Bastion of Twilight/2 42.5,45.5
_Phase 3_
kill Elementium Monstrosity##43735
|tip Lava Seed creates kernels of Flame energy in the surrounding area which erupt and deal 35,000-45,000 Fire damage to nearby players.
|tip Liquid Ice the Monstrosity freezes the ground beneath it. The pools of ice will grow as the Monstrosity stands in it, also increasing the damage dealt.
|tip Electric Instability deals constant Nature damage to random players, increasing intensity the longer the Monstrosity is alive and jumping to nearby players.
|tip Gravity Crush traps a player in a gravity bubble, lifting them from the ground and dealing 10% of their maximum health every 0.5 seconds for 6 seconds. After 6 seconds the player is dropped to the ground.
confirm
step
map The Bastion of Twilight/2
path loop off
path	43.9,75.3	56.6,75.1
Follow the path, clearing trash as you make your way to the next boss, Cho'gall. |goto The Bastion of Twilight/2 56.6,75.1 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Cho'gall##43324 |goto The Bastion of Twilight/2 73.4,75.4
_Phase 1_
|tip Conversion causes the target to channel Worshipping on Cho'gall, causing him to gain Twisted Devotion every 3 seconds.
|tip Twisted Devotion increases Cho'gall's damage by 10% for 20 seconds.
|tip Flame's Orders adds 20,000 Fire damage to each melee attack and spawns Fire patches.
|tip Shadow's Orders adds a Shadow AoE effect to Cho'gall's attacks. These hit everyone in the room.
|tip Fury of Cho'gall deals 30,000 Shadow damage and 30,000 Physical damage and increasing their Shadow and Physical damage taken by 20%.
|tip Summon Corrupting Adherent summons Corrupted Adherents to attack the raid.
|tip When Flame's Orders is consumed Cho'gall will gain 1 stack of FLaming Destruction for each 10 percent health this add has left. |only if heroic_dung()
|tip When Shadow's Orders is consumed Cho'gall will gain 1 stack of Empowered Shadows for each 10 percent health this add has left. |only if heroic_dung()
|tip Phase 2 starts when Cho'gall reaches 25% health.
Click here to move to Phase 2. |confirm
step
kill Cho'gall##43324 |goto The Bastion of Twilight/2 73.4,75.4
_Phase 2_
|tip Fury of Cho'gall deals 30,000 Shadow damage and 30,000 Physical damage and increasing their Shadow and Physical damage taken by 20%.
|tip Corruption of the Old God deals 5000 Shadow damage every 2 seconds to the entire raid.
|tip Darkened Creations Cho'gall summons Darkened Creations to attack the raid. They use Debilitating Beam.
|tip Debilitating Beam reducing healing and damage by 75% and deals 5000 Shadow damage every second for 10 seconds.
|tip On Heroic Debilitating Beam causes Corrupted Blood. |only if heroic_dung()
|confirm
step
The final boss in this encounter, Sinestra, can only be done in Heroic mode.
Click here to fight Sinestra! |next "sinestra" |confirm
Click here to skip Sinestra. |next "raidend" |confirm
step
label "sinestra"
kill Sinestra##45213 |goto The Bastion of Twilight/3 49,34.2
|tip Twilight Blast deals 166,000-184,000 Shadow damage to the targeted player.
|tip Twilight Essence deals 10,000 Shadow damage to players within the bubbling essence.
|tip Unleash Essence releases twilight energy that hits all nearby players, dealing damage equal to 10% of their maximum health every second.
|tip Twilight Slicer fires a beam of twilight energy, dealing 50,000 Shadow damage every 0.3 seconds to any players that touch it.
|tip Wrack deals increasing Shadow damage over 1 minute.
|tip Twilight Pulse deals 30,000 Shadow damage every 0.5 seconds to players within 10 yards.
|tip Twilight Spit deals 4000 Shadow damage and increasing Shadow damage taken by 10%.
|tip Indomitable regains control through sheer will, becoming immune to all bonds and restraints until stopped. Deals 40,000 Shadow damage to players within 10 yards and knocks them back.
|tip Destroy the 2 Pulsing Twlight Eggs when their shield is down.
|confirm
step
label "raidend"
Congratulations, you have finished the Bastion of Twilight raid guide!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Cataclysm Raids\\Blackwing Descent",{
mapid=285,
achieveid={4842},
patch='40003',
condition_suggested=function() return level>=32 and level<=35 end,
author="support@zygorguides.com",
description="\nThis guide will walk you through the Blackwing Descent Raid.",
},[[
step
Enter Blackwing Descent |goto Burning Steppes/0 23.17,26.40 < 5
confirm
step
map Blackwing Descent/1
path loop off
path	42.6,59.9	36.1,59.7	31.5,56.9
Follow the path, clearing trash as you make your way to the first boss, Magmaw. |goto 31.5,56.9 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Magmaw##41570 |goto Blackwing Descent/1 27.5,53.1
|tip Mangle deals 110,000-128,400 damage every 5 seconds. Usually used on tanks.
|tip Sweltering Armor Magmaw melts the taget's armor, reducing it by 50%.
|tip Magma Spit inflicts 39,300-50,600 Fire damage to the targeted player when no player is in melee range. Triggers Molten Tantrum.
|tip Molten Tantrum with no one nearby to attack, Magmaw goes into a frenzy, increasing Fire damage dealt by 100% and stacking up to 10 times.
|tip Lava Spew deals 31,400-36,500 Fire damage to all players within 60 yards every second, lasting 3 seconds.
|tip Parasitic Infection deals 12,000-14,000 damage every 2 seconds, causing Infectious Vomit after 10 seconds.
|tip Infectious Vomit deals 40,000 damage to all players within 8 yards of the affected player.
|tip Pillar of Flame Magmaw launches magma at a player, dealing 25,000 damage and sundering the ground, which deals 120,000 Fire damage and a knockback to players near the affected spot.
|tip Massive Crash Magmaw slams down onto the ground, stunning any players caught underneath him for 3 seconds.
|tip When Magmaw slumps forward players can jump on his head and use constricting chains to impale him on the spike in the room, increasing his vulnerability.
|confirm
step
map Blackwing Descent/1
path loop off
path	51.2,59.9	58.3,59.7	61.0,57.3
Follow the path, clearing trash as you make your way to the next boss, the Omnotron Defense System. |goto 61.0,57.3 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Omnotron Defense System_ |goto Blackwing Descent/1 65.4,57.4
kill Arcanotron##42166
|tip Power Generator is a large vortex on the ground, buffing any who stand in it with increased damage and mana regeneration. Try to keep the boss out of it.
|tip Arcane Annihilator is interruptable and deals massive damage to a single target.
|tip Power Conversion causes Arcanotron to gain a stacking damage buff every time he takes damage. Mages can steal this buff.
kill Electron##42179
|tip Lightning Conductor places a debuff on one player that hits all nearby players for a large amount of damage. Those affected by this should move away from the rest of the group.
|tip Electrical Discharge deals 24,000 Nature damage and jumps to additional players within 8 yards.
|tip Unstable Shield deals 30,000 Nature damage to the attacker and all players within 6 yards of the attacker, whenever Electron is hit with an attack.
kill Magmatron##42178
|tip Incineration Security Measure shoots out jets of flame all over the room. Unlimited range and unavoidable.
|tip Acquiring Target targets a raid member and shoots a jet of flame at them after a few seconds. Deals 21,000 Fire damage every second for 4 seconds. Avoid it and heal the targeted player.
|tip Flamethrower targets the tank, launching a jet of flame at them.
|tip Barrier absorbs 300,00 damage and explodes to deal 75,000 damage to the raid if broken through.
kill Toxitron##42180
|tip Poison Cloud is a pool on the ground that increases all damage taken by 50%, including Toxitron.
|tip Poison Protocol spawns 3 Poison Bombs that move towards a chosen target. If they reach their target, they explode for about 100,000 damage and leave a pool of poison.
|tip Poison Soaked Shell occurs when Toxitron is attacked, it applies a stacking DoT to the attacker but also applies a buff that makes your attacks deal an additional 10,000 Nature damage.
|confirm
step
map Blackwing Descent/1
path	58.8,54.7	47.1,53.3	Blackwing Descent/2 47.4,88.1
path	Blackwing Descent/2 57.6,69.5	Blackwing Descent/2 65.5,69.7
Follow the path, clearing trash as you make your way to the next boss, Maloriak. |goto Blackwing Descent/2 65.5,69.7 < 10
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Maloriak##41378 |goto Blackwing Descent/2 71.4,70.2
|tip Arcane Storm deals 14,100-15,800 Arcane damage every second for 6 seconds to the entire raid.
|tip Release Abberations releases 3 Abberations from their growth chamber, causing them to attack all players.
_Red Vial Phase_ - "Mix and Stir! Apply heat!"
|tip Consuming Flames ignites a random player, dealing 9000 Fire damage every second for 10 seconds. Any other magic damage taken while this is in effect increases its damage dealt by 25%.
|tip Scorching Blast deals 750,000 total Fire damage, split between all players in a 60 yard cone in front of Maloriak.
_Blue Vial Phase_ - "How well does the mortal shell handle extreme temperature change? Must find out! For Science!"
|tip Biting Chill surrounds a random player with a ring of frost that deals 7500 Frost damage to the target and all players within 8 yards every second for 10 seconds.
|tip Flash Freeze affects a random player, dealing 50,000 Frost damage to them and all players within 10 yards and encasing them in ice for 30 seconds. When the ice breaks it deals an additional 50,000 Frost damage.
_Green Vial Phase_ - "This one's a little unstable! But what's progress without failure?"
|tip Remedy heals Maloriak for 150,000 health and 2000 mana every second for 10 seconds.
|tip Debilitating Slime coats every unit in the room with slime, increasing damage taken by 100% and suppresses any Growth Catalysts on the target, temporarily removing it.
_25% Health_ - "When pushed to the edge, results may become unpredictable!"
|tip Release All releases all remaining Aberrations from their growth chambers. Also releases two Prime Subjects from their chambers.
|tip Magma Jets releases a stream of fire towards a random player. These deal 25,000 Fire damage initially and leaves a burning effect on the ground that deals 5000 Fire damage.
|tip Absolute Zero summons a sphere of energy near a random player. If this sphere comes within 6 yards of a player, it explodes and deals 20,000 Frost damage to all players within 6 yards, also knocking them back.
|tip Acid Nova deals 5000 Nature damage every second for 10 seconds.
|confirm
step
map Blackwing Descent/2
path loop off
path	65.5,69.7	57.6,69.5	47.4,53.0
path	47.5,40.9
Follow the path, clearing trash as you make your way to the next boss, Atramedes. |goto Blackwing Descent/2 47.5,40.9 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Atramedes##41442 |goto Blackwing Descent/2 47.5,32.7
This fight has a Sound Bar. If it gets to 100 Atramedes will aggro and kill you. Clicking one of the Ancient Dwarven Shields around the room to reset the raid's sound to 0.
|tip Vertigo increases Atramedes' damage taken by 50%.
_Ground Phase_
|tip Sonar Pulse discs of energy fly around the room, dealing 6000 Arcane damage if touched and adds 7 Sound.
|tip Sonic Breath is cast on the player with the highest Sound. It deals 15,000 damage and 20 Sound every second.
|tip Modulation increases the raid's Sound by 7 and dealing 40,000 Shadow damage.
|tip Searing Flame deals 15,000 Fire damage every second for 8 seconds and increases Fire damage taken by 25% per stack. Adds 13-15 Sound.
_Air Phase_
|tip Roaring Flame Breath is used on the player with the highest Sound, dealing 15,000 damage and 20 Sound every second.
|tip Sonar Pulse discs of energy fly around the room, dealing 6000 Arcane damage if touched and adds 7 Sound.
|tip Sonar Bomb deals 30,000 Arcane damage to all players within 8 yards and adds 30 Sound.
|tip Sonic Fireball deals 30,000 Fire damage to all players within 6 yards of the impact.
|tip Roaring Flame throws flame patches around the room, dealing 15,000 Fire damage and an additional 8000 Fire damage every second for 4 seconds. Increases Sound by 5.
|confirm
step
map Blackwing Descent/2
path loop off
path	47.5,40.9	47.4,53.0	36.7,69.5
path	28.8,69.7
Follow the path, clearing trash as you make your way to the next boss, Chimaeron. |goto Blackwing Descent/2 28.8,69.7 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Chimaeron##43296 |goto Blackwing Descent/2 24.5,70.2
_Phase 1_
|tip Caustic Slime deals 235,000 total Nature damage to all players within 6 yards of the impact and reduces their chance to hit.
|tip Fued Chimaeron is unable to perform melee attacks while his heads are fighting each other.
|tip Double Attack Chimaeron strikes twice with his next attack.
|tip Break Chimaeron attacks viciously, increasing the target's Physical damage taken by 25% and reducing healing by 15% for 1 minute.
_Phase 2_
|tip Phase 2 starts when Chimaeron reaches 20% health.
|tip Mortality Chimaeron becomes immune to taunt and increases his damage by 20%. Also reduces healing for all players by 99%.
|tip Double Attack Chimaeron strikes twice with his next attack.
|confirm
step
map Blackwing Descent/2
path loop off
path	28.8,69.7	36.7,69.5	47.2,58.0
click Orb of Culmination##203254 |goto 47.2,58.0
Follow the path, clearing trash as you make your way to the final boss, Nefarian. |goto Blackwing Descent/2 36.7,69.5 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Nefarian##41376 |goto Blackwing Descent/2 48,70.2
_Phase 1_
_Onyxia_
|tip Electric Discharge inflicts 20,000 Nature damage every secondto players on Onyxia's sides.
|tip Shadowflame Breath inflicts 35,000 damage every 0.5 second for 1.5 seconds to players in a cone in front of Onyxia.
|tip Cleave deals 110% melee damage to the targeted player and all nearby players. Make sure the tank is the only one in front of Onyxia when this occurs.
|tip Tail Lash deals 20.000 damage and a 2 second stun to all players behind Onyxia.
|tip Children of Deathwing Nefarian and Onyxia attack 100% faster when they are within 60 yards of each other.
_Nefarian_
|tip Hail of Bones deals 25,000 Shadow damage to nearby players and spawns an Animated Bone Warrior.
|tip Cleave deals 110% melee damage to the targeted player and all nearby players. Make sure the tank is the only one in front of Nefarian when this occurs.
|tip Shadowflame Breath inflicts 55,000 damage every 0.5 second for 1.5 seconds to players in a cone in front of Onyxia.
|tip Tail Lash deals 20.000 damage and a 2 second stun to all players behind Onyxia.
|tip Children of Deathwing Nefarian and Onyxia attack 100% faster when they are within 60 yards of each other.
Click here to proceed to Phase 2. |confirm
step
kill Nefarian##41376 |goto Blackwing Descent/2 48,70.2
_Phase 2_
|tip Shadowflame Barrage is cast repeatedly for all of Phase 2. It deals 25,000 damage to the target.
|tip Shadow of Cowardice inflicts 30,000 damage to the targeted player and increases their Shadow damage taken by 100%.
Click here to move to Phase 3. |confirm
step
kill Nefarian##41376 |goto Blackwing Descent/2 48,70.2
_Phase 3_
|tip Cleave deals 110% melee damage to the targeted player and all nearby players. Make sure the tank is the only one in front of Nefarian when this occurs.
|tip Shadowflame Breath inflicts 55,000 damage every 0.5 second for 1.5 seconds to players in a cone in front of Onyxia.
|tip Tail Lash deals 20.000 damage and a 2 second stun to all players behind Onyxia.
|tip Shadowblaze Spark creates a blaze at the targeted location. It spreads from the initial location, following players and speeding up if it is touched.
|tip Shadowblaze deals 50,000 damage every second to players standing within the Shadowblaze.
|confirm
step
Congratulations, you have finished the Blackwing Descent raid guide!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Cataclysm Raids\\Dragon Soul",{
mapid=409,
achieveid={6177},
patch='40300',
condition_suggested=function() return level>=32 and level<=35 end,
author="support@zygorguides.com",
description="\nThis guide will walk you through the Dragon Soul Raid.",
},[[
step
Click here if you are doing the normal clear of the instance |next "Normal DS"
Click here if you are doing the LFR wings of the instance |next "LFR DS Index"
confirm
step
label "LFR DS Index"
talk Auridormi##80675 |goto Tanaris/18 63.06,27.35
Click here if you are queueing for the First wing of Dragon Soul (Siege of Wyrmrest Temple) |next "First_Wing_DS"
Click here if you are queueing for the Second wing of Dragon Soul (Moments Preceding the Fall of Deathwing) |next "Second_Wing_DS"
confirm
step
label "Normal DS"
Enter Dragon Soul |goto Tanaris/18 61.97,26.96 < 5
confirm
step
label "First_Wing_DS"
kill Morchok##55265 |goto Dragon Soul/1 50.6,69.6
_Phase 1_
|tip Stomp deals 750,000 total Physical damage split between all affected players. Morchok's target and their closest ally take a double portion of the damage.
|tip Crush Armor deals 120% melee damage and reducing their armor by 10% for 20 seconds and stacking up to 10 times.
|tip Resonating Crystal creates a crystal that explodes after 12 seconds for massive Shadow damage split between 3 random players, the damage is increased depending on the distance of each player from the crystal.
|tip Furious occurs at 20% health. Morchok's attack speed by 30% and damage by 20%.
_Phase 2_
|tip Earthen Vortex_ Morchok draws all players towards him, dealing 5% of their maximum health as Physical damage every second for 5 seconds.
|tip Falling Fragments_ shards of Earth's Vengeance erupt from the ground, inflicting 15,000 Physical damage to players within 2 yards.
|tip Black Blood of the Earth_ Morchok causes the black blood to erupt from the ground, inflicting 5000 Nature damage and increasing Nature damage taken by 100% every second while a player is standing in the blood.
_Heroic_
|tip In heroic Morchok will split into 2, each with the same abilities as the original.
confirm
step
talk Valeera##57289 |goto Dragon Soul/1 49.4,59.3
Arrive in Warlord Zon'ozz's room |goto Dragon Soul/2 52.0,86.8 < 5 |noway |c
step
kill Warlord Zon'ozz##55308 |goto Dragon Soul/2 50.9,53
|tip Black Blood of Go'rath deals 9000 damage every second.
|tip Phychic Drain channels phychic force in a cone in front of Zon'ozz, dealing 83,000-96,750 Shadow damage.
|tip Disrupting Shadows deals 25,000-30,000 Shadow damage every 2 seconds.
|tip Focused Anger increases the target's Physical damage taken and attack speed by 10%.
_Heroic_
|tip When the boss awakens his Maw of Go'rath he will also summon the adds similiar to those surronding the boss when first entering the room.
|tip These adds will spawn around the room, they need to be switched to and killed asap.
confirm
step
talk Eiendormi##57288 |goto Dragon Soul/1 51.2,59.5
Arrive in Yor'sahj the Unsleeping room |goto Dragon Soul/3 46.0,83.7 < 5 |noway |c
step
kill Yor'sahj the Unsleeping##55312 |goto Dragon Soul/3 46.8,49.9
|tip Searing Blood hits random players, dealing increased damage the farther away from Yor'sahj the targets are.
|tip Deep Corruption receiving healing or absorption effects will trigger an explosion at 5 stacks.
|tip Void Bolt hurls a shadow bolt at a player, dealing Shadow damage.
_Heroic_
|tip In Heroic he will spawn 4 slimes during Call Blood Shu'ma.
confirm
step
talk Nethestrasz##57287 |goto Dragon Soul/1 50.2,57.8
Arrive at the top of the tower |goto 49.5,60.2
click the portal to Eye of Eternity |goto 50.5,60.5
Arrive in the Eye of Eternity |goto Dragon Soul/4 52.5,23.5 < 5 |noway |c
step
kill Hagara the Stormbinder##55689 |goto Dragon Soul/4 52.7,52
|tip Focused Assault slices rapidly at the target, dealing 50% weapon damage.
|tip Feedback increases damage taken by 100% for 15 seconds.
|tip Ice Tomb conjures spheres of ice to entomb players in blocks of ice.
|tip Frostflake applies a stacking snare that reduces movement speed by 10%.
|tip Lightning Storm deals 11,000 Nature damage to all nearby players.
|tip Shattered Ice deals 54,000-63,000 Frost damage to a player and reduces their movement speed for 4 seconds.
_Heroic_
|tip During Frozen Tempest she will also cast Frostflake, this will target a random person and slow them eventually to a stop over the course of 15 seconds.
|tip Once Frostflake expires it will deal 35 percent of that players health.
|tip During Lightning Storm she will cast Storm Pillars under a random players feet, after 3 seconds if stood in will deal damage, avoid these lightning circles.
|tip If you are doing this on LFR this is the end of wing 1.
confirm
step
label "Second_Wing_DS"
kill Ultraxion##55294 |goto Dragon Soul/1 49.9,45.7
|tip Unstable Monstrosity Twilight energry erupts from Ultraxion's hide, dealing 300,000 total Shadow damage every 6 secondsm split between all players in the Twilight Realm and within 30 yards of the target. Every minute Ultraxion is engaged in combat it reduces the time between arcs by 1 second.
|tip Heroic Will pulls the player from the Twilight realm for up to 5 seconds, but they are unable to attack, cast, or move while concentrating.
|tip Fading Light sucks the light from the targeted player and a random player, drawing them into the Twilight over 5-10 seconds. Upon expiration, players in the Twilight realm die.
|tip Hour of Twilight players caught in the Twilight realm when this occurs take 300,000 Shadow damage. If this doesn't hit a player it generally results in a wipe.
|tip Twilight Burst occurs if all raid members stand outside the range of Ultraxion's claws. He deals 75,000 Shadow damage on all plaers and increases their magical damage taken by 50% for 6 seconds.
confirm
step
kill Warmaster Blackhorn##56427 |goto Dragon Soul/5 48.3,16.8
|tip Shockwave deals 100,000 Physical damage to players in a 80-yard cone in front of the caster, stunning them for 4 seconds.
|tip Siphon Vitality deals damage equal to 20% of the target's remaining health, also healing the caster.
|tip Devastate deals 120% weapon damage and applying Sunder Armor.
|tip Sunder Armor reduces the target's armor by 20% per stack, applying up to 5 times and lasting 30 seconds.
|tip Disrupting Roar deals 50,000 Physical damage to all players and interrupting their spellcasting within 10 yards for 8 seconds.
_Heroic_
|tip Fire will appear on the Deck of the ship, the more damaged the ship the more fire there will be, avoid this fire.
|confirm
step
Defeat the Spine of Deathwing |goto Dragon Soul/6 33.2,85.2
|tip If all players are on one side of Deathwing, he will do a barrel roll, attempting to throw off any players not attached to his back.
_Corruption_ adds
|tip Searing Plasma debuff that absorbs 200,000 healing from the target and dealing 7500 Physical damage periodically.
|tip When killed, these spawn a Hideous Amalgamation add and Corrupted Blood.
|tip Corrupted Blood forms from the hole left by the Corruption. It deals a small amount of damage and prevents players from being thrown off Deathwing's back. When these are killed it creates an untargetable residue, which crawls back to the hole.
_Hideous Amalgamation_
|tip These should be tanked and dragged through the residue created after killing Corrupted Blood, giving it a stack of Absorbed Blood. At 10 stacks, the Amalgamation explodes, removing a nearby armor plate from Deathwing, and likely killing any nearby players.
|tip Seal Armor Breach occurs after a Hideous Amalgamation explodes and removes one of Deathwing's armor plates. If this cast is completed, the armor plate is re-sealed.
|tip This fight ends after 3 armor plates are successfully removed, sending Deathwing down into the Maelstrom.
_Heroic_
|tip During the fight he will apply Blood Corruption Death to random players, if not dispelled it will deal damage to the player and players around the target.
|tip When this is dispelled it will jump to a different player and mutate into Blood Corruption Earth, when this expires it will give a buff reducing damage taken by 20 percent for 2 minutes.
|confirm
step
_Madness of Deathwing - Aspects_ |goto Dragon Soul/7 47.8,53.8
_Alexstrasza_
|tip Alexstrasza's Presence increases the player's maximum health by 20%.
|tip Cauterize inflicts lethal damage to Blistering Tentacles over 10 seconds and reduces the damage inflicted by Corrupted Blood.
_Nozdormu_
|tip Nozdormu's Presence increases the player's haste by 20%.
|tip Time Zone creates a Time Zone at the targeted location, causing Deathwing's Elementium Meteor to greatly decrease its travel speed and also reduces any enemies' attack speed by 50%.
_Ysera_
|tip Ysera's Presence increases player healing by 20%.
|tip Enter the Dream allows players to enter the Dream, decreasing all damage taken by 50% for 2.5 seconds.
_Kalecgos_
|tip Kalecgos' Presence increases player damage dealt by 20%.
|tip Spellweaving allows attacks and abilities to cause Spellweaving, which inflicts 2000 Arcane damage to enemies within 6 yards, but not including the current target.
_Thrall_
|tip Carrying Winds takes players between adjacent platforms and increases their movement speed by 60% for 10 seconds. This effect is stackable.
|confirm
step
kill Deathwing##46471 |goto Dragon Soul/7 47.8,53.8
_Phase 1_
|tip Assault Aspect Deathwing attacks the platform with the largest number of players and an attached limb.
|tip Cataclysm Deathwing attempts to bring forth a 2nd cataclysm, dealing 1,500,000 Fire damage to all players.
|tip Elementium Bolt is cast on a targeted platform. If reached, it deals 390,000 Fire damage every 5.2 seconds
|tip Corrupting Parasite inflicts increasing Shadow damage periodically. Upon expiration, it detaches itself from the player and deals 250,000 Fire damage to players within 10 yards.
|tip Unstable Corruption deals 10% of the Corrupted Parasite's health as Fire damage to all players.
|tip Hemorrhage creates Regenerative Blood at a nearby location that regenerate health and attack the raid.
_Limb Tentacle_
|tip Burning Blood gushes from the Tentacle, inflicting Fire damage every 2 seconds, the damage increasing as the Tentacle's health lowers.
|tip Agonizing Pain the pain from severing Deathwing's limb stuns him and inflicts 20% of his health as damage.
_Mutated Corruption_
|tip Crush deals 100,000 Physical damage to players in a cone in front of the Corruption.
|tip Impale deals 400,000 Physical damage to the Corruption's target.
|tip Phase 2 starts when Deathwing reaches 20% health.
_Heroic_
|tip Corrupted Parasites will spawn and deal damage to all players within 10 yards every 10 seconds, and will periodically deal damage based on its remaining health to the entire raid.
|tip These Parasites need to be killed asap.
Click here to advance to Phase 2. |confirm
step
kill Deathwing##46471 |goto Dragon Soul/7 47.8,53.8
_Phase 2_
|tip Congealing Blood Deathwing begins to hemorrhage, creating Congealing Blood at a nearby location. These move toward him, healing him for 1% of his health if they reach him.
|tip Elementium Fragment Deathwing's armor chips off, forming Elementium Fragments that deal 200,000 Physical damage to random players.
|tip Elementium Terror Deathwing's armor chips off, forming Elementium Terrors that deal 60,000 Physical damage and an additional 20,000 Physical damage every second.
|tip Corrupted Blood deals Fire damage every 2 seconds, the damage increasing as Deathwing's health lowers.
_Heroic_
|tip He will summon many Congealing Bloods, these will run toward Deathwing, these need to be killed asap, if they reach Deathwing they will heal him.
|tip If you are doing this on LFR this is the end of wing 2.
confirm
step
Congratulations, you have finished the _Dragon Soul_ raid guide!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Cataclysm Raids\\Firelands",{
mapid=367,
achieveid={5802},
patch='40200',
condition_suggested=function() return level>=32 and level<=35 end,
author="support@zygorguides.com",
description="\nThis guide will walk you through the Firelands Raid.",
},[[
step
Enter Firelands |goto Mount Hyjal/0 47.58,77.90 < 5
confirm
step
map Firelands/1
path loop off
path	33.2,77.0	41.7,70.4	29.3,62.7
path	16.1,46.1	27.4,44.3
Follow the path, clearing trash as you make your way to the first boss, Beth'tilac. |goto Firelands/1 27.4,44.3 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Beth'tilac##52498 |goto Firelands/1 20.8,32
_Phase 1_
|tip Ember Flare deals 20,000 Fire damage to players near Beth'tilac.
|tip Meteor Burn deals 40,000 Fire damage to players within 7 yards of the impact. Also burns a hole in the web that players can fall through.
|tip Consume Beth'tilac consumes Cinderweb Spiderlings, healing herself for 10% of her maximum health.
|tip Smoldering Devastation occurs when Bath'tilac's energy fully depletes. She sets herself ablaze, dealing 400,000 Fire damage on all players located on the same level.
_Phase 2_
|tip Frenzy increases her damage by 5%, stacking up to 50 times.
|tip The Widow's Kiss reduces the target's healing by 10%, stacking every 2 seconds for 20 seconds, also causes the affected player to deal damage to all nearby players within 10 yards.
|tip Ember Flare deals 20,000 Fire damage to players on the same level as Beth'tilac.
|tip Consume Beth'tilac consumes Cinderweb Spiderlings, healing herself for 10% of her maximum health.
confirm
step
map Firelands/1
path loop off
path	27.4,44.3	16.1,46.1	29.3,62.7
path	41.7,70.4	53.0,66.5
Follow the path, clearing trash as you make your way to the next boss, _Shannox_. |goto Firelands/1 53.0,66.5 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Shannox##53691 |goto Firelands/1 49.2,46
|tip Immolation Trap Fire trap similar to a Hunter's trap. Deals Fire damage to the player that walks over it and all nearby players.
|tip Crystal Prison Trap trap that stuns the player that walks over it.
|tip Hurl Spear deals large AoE damage to players within 3 yards of the impact point and moderate damage to players within 50 yards. Also creates fire eruptions on the floor around the impact point.
|tip Arcing Slash deals Physical damage in a frontal cleave. Make sure the tank is the only player in front of Shannox when this occurs.
|tip Jagged Tear DoT that deals 2000 damage every 3 seconds for 24 seconds.
confirm
step
map Firelands/1
path loop off
path	64.7,56.6	71.6,71.0
Follow the path, clearing trash as you make your way to the next boss, _Lord Rhyolith_. |goto Firelands/1 71.6,71.0 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Lord Rhyolith##52558 |goto Firelands/1 65.6,75.6
|tip Concussive Stomp deals 32,000-38,000 Fire damage to players near Ryolith.
|tip Burning Feet increases movement speed by 100%.
|tip Immolation deals Fire damage every second to players near Ryolith.
|tip Molten Spew Ryolith spits lava at nearby players.
|tip Obsidian Armor reduces damage taken by 1% per stack.
|tip Superheated increases damage dealt by 10% every 10 seconds.
confirm
step
map Firelands/1
path loop off
path	71.6,71.0	64.7,56.6	57.9,51.2
Follow the path, clearing trash as you make your way to the next boss, _Alysrazor_. |goto Firelands/1 57.9,51.2 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Alysrazor##52530 |goto Firelands/1 64,39
_Phase 1_
|tip Firestorm deals 31,500 Fire damage to all players and knocking them back, also deals an additional 10,500 Fire damage every second for 10 seconds.
|tip Blazing Claw deals 105,000 Physical damage to players in a 25-yard cone every 1.5 seconds. Each swipe also increases the target's Fire and Physical damage taken by 10% for 15 seconds.
|tip Molting Alysrazor creates Molten Feathers nearby.
|tip Molten Feather these feathers can be picked up by a player, up to a maximum of 3. While holding a feather all spells can be cast while moving and increases movement speed by 30% per feather. If 3 feathers are obtained, the player will gain _Wings of Flame_.
|tip Wings of Flame allows the player to fly for 20 seconds.
Click here to move to Phase 2. |confirm
step
kill Alysrazor##52530 |goto Firelands/1 64,39
_Phase 2_
|tip Fiery Vortex a vortex appears in the middle of the room, dealing 105,000 Fire damage every 0.5 seconds.
|tip Fiery Tornado tornado erupts from the Fiery Vortex, dealing 26,000 Fire damage every second.
|tip Blazing Power rings of fire appear on the ground and last 3 seconds. Players who pass through these gain increased haste by 4% and stacks up to 25 times.
Click here to move to Phase 3. |confirm
step
kill Alysrazor##52530 |goto Firelands/1 64,39
_Phase 3_
|tip Burnout Alystrazor's fire burns out, causing her to become immobile and increasing damage taken by 100% and creating a n Essence of the Green when struck with a spell.
|tip Essence of the Green emits 10% of maximum mana to players.
_Phase 4_
|tip Blazing Buffet deals 10,500 Fire damage to all players every second as long as Alysrazor remains Ignited.
|tip Blazing Claw deals 105,000 Physical damage to players in a 25-yard cone every 1.5 seconds. Each swipe also increases the target's Fire and Physical damage taken by 10% for 15 seconds.
|tip Full Power occurs when Alysrazor reaches 100 Molten Power. This deals 52,500 Fire damage to all players and knocks them back.
confirm
step
kill Baleroc##53494 |goto Firelands/1 49.2,32.8
|tip Blaze of Glory increases the target's maximum health by 20% but also their Physical damage taken by 20%.
|tip Countdown forms a link between 2 players for 8 seconds. After 8 seconds both will explode and deal 125,000 Fire damage to all nearby players unless the linked players move near each other.
|tip Incendiary Soul increases the target's Fire damage taken by 20%.
|tip Decimation Strike deals Shadow damage equal to 90% of the target's maximum health, but always at least 250,000 damage, and reduces the target's healing done by 90% for 4 seconds.
|tip Decimation Blade deals 90% of the target's maximum health.
confirm
step
map Firelands/1
path loop off
path	49.3,17.2	Firelands/3 51.0,90.0
Follow the path, clearing trash as you make your way to the next boss, Majordomo Staghelm. |goto Firelands/3 51.0,90.0 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Majordomo Staghelm##52571 |goto Firelands/3 50.9,72.4
|tip Fury increases Staghelm's damage by 8% per stack. He gains a stack of this every time he switches between scorpion and cat forms.
|tip Searing Seeds plants fiery seeds into all raid members. Each seed grows at a different rate and explodes when fully grown, dealing 45,000 Fire damage to players within 12 yards.
|tip Fiery Cyclone tosses all raid members into the air, preventing any action but making them invulnerable.
_Scorpion Form_
|tip Flame Scythe inflicts Fire damage in a cone in front of Staghelm, split between all players hit.
_Cat Form_
|tip Leaping Flames leaps at a player, leaving behind a Spirit of the Flame and landing in a blaze, igniting the ground and causing it to deal 19,000 Fire damage every 0.5 seconds for 1 minute.
confirm
step
map Firelands/3
path loop off
path	51.0,90.0	50.6,30.2
Follow the path, clearing trash as you make your way to the next boss, _Ragnaros_. |goto Firelands/3 50.6,30.2 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Ragnaros##52409 |goto Firelands/3 50.7,15.3
|tip Sulfuras Smash Ragnaros strikes the ground, sending out waves of lava from the impact point.
|tip Magma Trap creates a trap that deals 60,000 Fire damage to all players and knocking back the player that triggered it.
|tip Hand of Ragnaros deals 23,000 Fire damage to all players within 55 yards and knocking them back.
|tip Wrath of Ragnaros deals 45,000 Fire damage to players within 6 yards of the target, also knocking them back.
|tip Molten Seed after 10 seconds they spawn adds that can't be tanked.
|tip Engulfing Flames Ragnaros summons flames around the platform that can obscure the platform.
|tip Living Meteors rains meteors down on targeted players. Damaging the meteors will cause it to roll away and change its path. Anyone struck by one of these will be killed.
confirm
step
Congratulations, you have finished the Firelands raid guide!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Cataclysm Raids\\Throne of the Four Winds",{
mapid=328,
achieveid={688, 5768},
patch='40100',
condition_suggested=function() return level>=32 and level<=35 end,
author="support@zygorguides.com",
description="\nThis guide will walk you through the Throne of the Four Winds Raid.",
},[[
step
Enter Throne of the Four Winds |goto Uldum/0 38.45,80.57 < 5
|tip The entrance to this raid is located on a platform high in the air.
confirm
step
_Conclave of Wind_ |goto Throne of the Four Winds/1 47.5,26
kill Anshal##45870
|tip Soothing Winds summons a green circle on a random player. This heals all players inside it for 20,000 health every second, but also silencing and pacifying them.
|tip Nurture summons a Ravenous Creeper every second for 5 seconds. These use Toxic Spores.
|tip Toxic Spores spores erupt from the caster every second for 5 seconds, afflicting all players within 8 yards with a toxin that deals 500 Nature damage every second for 5 seconds and stacking up to 25 times.
|tip Zephyr occurs at full energy, healing all of his allies for 25,000 health every second and also increasing damage by 15% for 15 seconds.
kill Nezir##45871
|tip Wind Chill deals 5000 Frost damage to all players within 100 yards and increasing all Frost damage taken by 10% for 30 seconds.
|tip Permafrost deals 10,000 Frost damage every second in a cone for 3 seconds.
|tip Ice Patch deals 7800 Frost damage every second to all players within 20 yards and slowing their movement speed by 10%.
|tip Sleet Storm deals 30,000 Frost damage every second to all players within 100 yards, split between all targets.
kill Rohash##45872
|tip Slicing Gale deals 11,000-13,000 Nature damage, increasing Nature damage they take by 5% for 30 seconds.
|tip Wind Blast spins around the platform, blasting the area in front of the caster every second, dealing 10,000 Nature damage and a 200 yard knockback.
|tip Tornado summons 3 nearby tornadoes that move around the area, dealing 42,000 Nature damage to any player that gets within 10 yards.
|tip Hurricane occurs at full energy. Creates a large vortex that catches all nearby players and launches them high into the air and dealing 2500 Nature damage every second for 15 seconds.
|tip Storm Shield will be cast when he gains 30 energy this will give him a shield for 450k and deal 7,800 damage per second to any player on his platform. |only if heroic_dung()
|confirm
step
kill Al'Akir##46753 |goto 47.5,50
_Phase 1_ - 100%-80% health.
|tip Ice Storm creates a blizzard that moves around the platform and deals 15,000 Frost damage every 0.5 seconds.
|tip Static Shock shocks all nearby players and deals 1000 Nature damage every second for 5 seconds.
|tip Electrocute channels a bolt at the target that deals increasing Nature damage. Ends if the target moves into melee range of Al'Akir.
|tip Wind Burst deals 28,000-31,000 Nature damage to all players and knocking them back.
|tip Lightning Strike deals 20,000 Nature damage in a cone, facing a random player every second for 30 seconds. All players affected deal an additional 20,000 Nature damage to nearby players.
|tip Squall Line creates a wall of tornadoes that circle around Al'Akir platform with an opening that players must move through.
|tip Static Shock willdeal damage and interrupt anyone within melee range. |only if heroic_dung()
|tip Phase 2 starts when Al'Akir reaches 80% health.
Click here to move to Phase 2. |confirm
step
kill Al'Akir##46753 |goto 47.5,50
_Phase 2_ - 80%-25% health.
|tip Static Shock shocks all nearby players, dealing 1000 Nature damage every second, interrupting spells cast and lasting 5 seconds.
|tip Electrocute channels a bolt at the target that deals increasing Nature damage. Ends if the target moves into melee range of Al'Akir.
|tip Squall Line creates a wall of tornadoes that circle around Al'Akir platform with an opening that players must move through.
|tip Acid Rain deals 500 Nature per second to all players and increasing by 500 damage every 15 seconds until Al'Akir reaches Phase 3.
|tip Stormling summons a Stormling add to attack the raid. When killed it applies Feedback to Al'Akir.
|tip Feedback increases Al'Akir's damage dealt by 10% per stacks for 20 seconds.
|tip Phase 3 starts when Al'Akir reaches 25% health.
Click here to move to Phase 3. |confirm
step
kill Al'Akir##46753 |goto 47.5,50
_Phase 3_ - 25% health.
|tip Eye of the Storm increases the caster's movement speed by 300%.
|tip Chain Lightning deals 15,000 Nature damage to a random player and then jumps to an additional nearby player, increasing damage dealt by 30% each jump.
|tip Lightning Rod causes a random player to emit lightning to nearby players after 5 seconds, dealing 5000 Nature damage every second for 5 seconds.
|tip Lightning Cloud summons clouds at the same altitude of the targeted player. After 5 seconds, these clouds erupt in lightning and deal 50,000 Nature damage per second to all players at the same altitude. Lasts 30 seconds.
|tip Wind Burst deals 38,000-42,000 Nature damage to all players and knocking them back.
|tip Lightning will be cast on random players for around 12k damage all throughout this phase. |only if heroic_dung()
|confirm
step
Congratulations, you have finished the Throne of the Four Winds raid guide!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Pandaria Dungeons\\Gate of the Setting Sun",{
mapid=437,
achieveid={10010, 6759},
patch='50004',
condition_suggested=function() return level>=25 and level<=35 end,
author="support@zygorguides.com",
description="\nThis guide will walk you through the Gate of the Setting Sun dungeon.",
},[[
step
Press _I_ and queue for Gate of the Setting Sun or enter the dungeon with your group |goto Gate of the Setting Sun/1 61.3,88.0 < 100 |c
step
talk Bowmistress Li##64467
accept Lighting the Way##31363 |goto Gate of the Setting Sun/1 60.9,88.6
accept That's a Big Bug!##31364 |goto Gate of the Setting Sun/1 60.9,88.6
step
While clearing trash avoid the Volatile Munitions that drop, they deal out massive fire damage around them. |goto 49.4,87.9 < 5
confirm
step
kill Saboteur Kip'tilak##56906
|tip This fight is all about the positioning of the group and the boss.
|tip Saboteur Kip'tilak will throw munitions around the room at random. These will not explode unless touched by another player.
|tip At 60% and 30%, he will use World in Flames. He will throw 5 munitions are the room at random and then explode them all at the same time.
|tip He will pick a player at random and Sabotage them. After 4 seconds the bombs attached to that player will explode in all 4 directions, similarly to the other bombs.
Defeat Saboteur Kip'tilak |scenariogoal 1/19245 |goto 45.8,88.1
step
map Gate of the Setting Sun/1
path follow strict;loop off;ants straight
path	46.2,75.4	41.4,71.4	41.4,64.4
path	41.5,53.5	46.3,33.3
Click the lever once the group is on the elevator. |goto Gate of the Setting Sun/2
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Striker Ga'dok##56589
|tip Prey Time will target a random party member and deal damage to them over 5 seconds.
|tip Impaling Strike will be an attack used primarily on the tank. It will deal half of their current life in damage.
|tip Mantid Disruptors will throw Acid Bombs at the platform, avoid them.
|tip At both 70% and 30% Ga'dok will use Strafing Run. This ability will cause him to light the platform on fire. You can avoid the fire by standing on the sides to the left or right of wherever the boss starts his run.
|tip The Strafing Runs will also summon Mantid Strikers. These adds need to be picked up by the tank.
|tip Watch where he flies during Strafing Run. Do not be on that side.
Defeat Striker Ga'dok |scenariogoal 1/19246 |goto Gate of the Setting Sun/2 49.0,27.2
step
clicknpc Flak Cannon##60415 |goto Gate of the Setting Sun/2 45.8,26.9
|tip Click the Flak Cannon and kill all of the mantid before going back down the elevator.
|confirm
step
Click the lever to go back down. |goto Gate of the Setting Sun/1 51.4,51.3 |noway |c
step
Click the Signal Flame |goto 47.9,12.7
|tip This will summon the next boss.
Light the Signal Flame. |q 31363/1 |only if haveq(31363)
|confirm |only if not haveq(31363)
step
Kill the trash before engage Commander Ri'mok. |goto 46.2,22.5
|confirm
step
kill Commander Ri'mok##56636
|tip Commander Ri'mok's fight can get a little hectic because there is a lot going on.
|tip He will summon Mantid Swarmers continuously. AoE them down.
|tip A Mantid Saboteur will be summoned every 45 seconds. Depending on your group you may want to kill these as they spawn. Normally the tank should hold onto these adds until the boss is dead.
|tip Frenzied Assault will deal massive damage in a cone in front of the boss. Do not stand in front of him while he uses this.
|tip Viscous Fluid is a green slime pool that Ri'mok will throw on the ground. Players lose 10% damage dealt per second in this green slime while the boss gets 10% damage per second.
Defeat Commander Ri'mok |scenariogoal 1/19247 |goto 46.1,24.4
step
Start here |goto 46.1,43.5
Jump down into the broken building and follow the path down. |goto 49.3,45.1 < 5
confirm
step
Exit the building and prepare to fight Raidgonn. |goto 52.7,50.6 < 5
confirm
step
kill Raigonn##56877 |only if not haveq(31364)
kill Raigonn##56877 |q 31364/1 |only if haveq(31364)
_Phase 1_
|tip Raigonn will be mostly invulnerable until his Weak Spot is killed.
|tip Melee can gain access to his Weak Spot by using the Artillery that are around the room.
|tip While the DPS are attacking the Weak Spot, the Tank should be on the ground floor picking up adds.
|tip Krik'thik Protectorate_ will increase the attack speed of all other Protectorate in the area by 50% when one of them drops below 20% health.
|tip Krik'thik Engulfers should be kill by ranged DPS. They summon Englufing Winds which are tornados that can be a hassle to deal with.
|tip Krik'thik Swarm Bringers will be summoned every so often. They will cast Screeching Swarm. This ability will absorb healing while dealing damage.
|tip After the Weak Spot is destroyed, the fight enters Phase 2.
_Phase 2_
|tip He will take 300% increased damage during this phase.
|tip Stomp will deal damage to everybody near the boss. It will also increase his damage dealt by 25% every time he uses it.
|tip Fixate will cause Raigonn to drop aggro and lock his attention onto a random party member. Their movement speed will be increased by 75% while he is fixating them.
Defeat Raigonn |scenariogoal 1/34408 |goto 44.0,60.6
step
talk Bowmistress Li##64467
turnin Lighting the Way##31363 |goto Gate of the Setting Sun/1 52.0,60.6
turnin That's a Big Bug!##31364 |goto Gate of the Setting Sun/1 52.0,60.6
step
Congratulations! You have completed Gate of the Setting Sun
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Pandaria Dungeons\\Mogu'shan Palace",{
mapid=453,
achieveid={6755, 6756},
patch='50004',
condition_suggested=function() return level>=20 and level<=35 end,
author="support@zygorguides.com",
description="\nThis guide will walk you through the Mogu'shan Palace dungeon.",
},[[
step
Press _I_ and queue for Mogu'shan Palace or enter the dungeon with your group |goto Mogu'shan Palace/1 30.5,20.5 < 100 |c
step
talk Sinan the Dreamer##64432
accept Relics of the Four Kings##31357 |goto Mogu'shan Palace/1 30.3,19.2
accept A New Lesson for the Master##31360 |goto Mogu'shan Palace/1 30.3,19.2
step
map Mogu'shan Palace/1
path follow strict;loop off;ants straight
path	40.2,26.1	40.3,57.6
Clear the trash and follow this path to the boss. |goto 40.3,57.6 <5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Trial of the King_
The Trial of the King consists of three minibosses. |goto 40.0,70.8
Click here for Kuai the Brute's strategy. |next "kuai" |confirm
Click here for Ming the Cunning's strategy. |next "ming" |confirm
Click here for Haiyan the Unstoppable's strategy. |next "haiyan" |confirm
step
label "kuai"
kill Kuai the Brute##61442
|tip Kuai's pet Mu'Shiba is the main threat of this fight, kill it first. Mu'Shiba will use Ravage, stunning and damage over 10 seconds.
|tip Kuai will cast Shockwave knocking players into the air. They will take some falling damage so make sure everybody is healed up.
Click here for Haiyan the Unstoppable's strategy. |next "haiyan" |confirm
Click here for Ming the Cunning's strategy. |next "ming" |confirm
Defeat the Trial of Kings |scenariogoal 1/24784
step
label "haiyan"
kill Haiyan the Unstoppable##61445
|tip Conflagrate will dissorient and deal fire damage to whomever it is cast on. Make sure the group steps away from that person to avoid the fire from spreading.
|tip Haiyan will cast Meteor on a random player and put a red arrow over their head. Stack on that person to disperse the damage that comes with Meteor.
|tip He will also use Traumatic Blow on the tank, lowering his healing received.
Click here for Kuai the Brute's strategy. |next "kuai" |confirm
Click here for Ming the Cunning's strategy. |next "ming" |confirm
Defeat the Trial of Kings |scenariogoal 1/24784
step
label "ming"
kill Ming the Cunning##61444
|tip Ming summons a Whirling Dervish that will knock any player it hits back.
|tip He will also use Magnetic Field. When he casts this run away from him until it is done, it will pull you back into it so keep running.
Click here for Haiyan the Unstoppable's strategy. |next "haiyan" |confirm
Click here for Kuai the Brute's strategy. |next "kuai" |confirm
Defeat the Trial of Kings |scenariogoal 1/24784
step
Loot the chest and follow these stairs down. |goto 48.8,74.9 < 5
confirm
step
map Mogu'shan Palace/2
path follow strict;loop off;ants straight
path	53.8,18.8	28.6,32.6	30.9,75.7
Follow the path
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
click Ancient Mogu Chest##214827
collect Lantern of the Sorcerer King##86476 |q 31357/1 |goto 37.4,64.5
|only if haveq(31357)
step
click Ancient Mogu Chest##214827
collect Mad King Meng's Balance##86477 |q 31357/2 |goto 43.0,60.1
|only if haveq(31357)
step
click Ancient Mogu Chest##214827
collect Subetai's Bow of the Swift##86479 |q 31357/4 |goto 60.2,82.6
|only if haveq(31357)
step
click Ancient Mogu Chest##214827
collect Qiang's "The Science of War"##86478 |q 31357/3 |goto 38.7,88.7
|only if haveq(31357)
step
kill Gekkan##61243
|tip Gekkan has 4 adds with him. The Protector will shield all of the other adds so he must die first. The Oracle is the healer so he needs to be interrupted and killed second.
|tip Crowd Control is suggested in this fight but don't count on it. Gekkan will use Reckless Inspiration on a random add. This makes them immune to crowd control and increases their attack speed for a period of time.
Defeat Gekkan |scenariogoal 1/19256 |goto 44.9,75.8
step
Ride the elevator up |goto Mogu'shan Palace/3 |noway |c |goto 71.5,76.1
step
map Mogu'shan Palace/3
path follow strict;loop off;ants straight
path	45.0,24.3	40.4,36.1	40.3,75.2
Clear the trash and make your way to the final boss. |goto 40.3,75.2 <5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Xin the Weaponmaster##61398 |only if not haveq(31360)
kill Xin the Weaponmaster##61398 |q 31360/1 |only if haveq(31360)
|tip Xin wil use Ground Slam on the tank's position. Avoid this.
|tip He will periodically animate a staff. This staff uses Circle of Flame so make sure you are not in the circle when the staff finishes.
|tip Whirlwinding Axes will be summoned almost immediately. Avoid standing in their spin.
|tip Blade Trap will activate at 66% health. This is a linear stream of swords. Avoid them.
|tip At 33% Xin will activate Death from Above!. This will cause crossbows to fire from his walls, this damage is unavoidable.
Defeat Xin the Weaponmaster |scenariogoal 1/34409 |goto 40.3,86.6
step
talk Sinan the Dreamer##64432
turnin Relics of the Four Kings##31357 |goto 38.7,81.5
turnin A New Lesson for the Master##31360 |goto 38.7,81.5
step
Congratulations! You have completed Mogu'shan Palace
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Pandaria Dungeons\\Scarlet Halls",{
mapid=431,
achieveid={6760},
patch='50004',
condition_suggested=function() return level>=35 and level<=35 end,
author="support@zygorguides.com",
description="\nThis guide will walk you through the Scarlet Halls dungeon.",
},[[
step
Press _I_ and queue for Scarlet Halls or enter the dungeon with your group |goto Scarlet Halls/1 34.2,90.0 < 100 |c
step
talk Hooded Crusader##64764
accept Rank and File##31495 |goto Scarlet Halls/1 31.9,84.4
accept Just for Safekeeping, Of Course##31497 |goto Scarlet Halls/1 31.9,84.4
stickystart "Scarlet Crusade"
step
Prepare to cross the training ground. |goto 48.2,78.8 < 5
confirm
step
kill Commander Lindon##59191 |goto 48.0,54.0
|tip In order to cross the training ground you must click on an archery target and use it as a shield. Avoid the fire arrows that leave patches of flame on the ground.
confirm
step
Go through the tunnel |goto 49.8,36.9 < 5
confirm
step
kill Houndmaster Braun##59303
|tip Houndmaster Braun will use Piercing Throw. This will target a player and deal damage to every player in between Braun and his target.
|tip Death Blossom is an AoE whirlwind, spread out to reduce its effectiveness.
|tip Both of these abilities will cause Bloody Mess. This is DoT can stack and become deadly.
|tip At 90%, 80%, 70%, and 60% Braun will summon an Obedient Hound to his side. You can either kill them or just have the tank hold onto them.
|tip If the hounds remain alive at 50% Braun will begin to lose control of them and the will aid you in battle. When this happens, Braun will enter a Bloody Rage, gaining 25% increased damage and 50% increased attack speed.
Defeat Houndmaster Braun |scenariogoal 1/19266 |goto 54.5,29.0
step
Allow the remaining dogs to kill the door guards and procede to the Athenaeum. |goto Scarlet Halls/2 55.3,21.1
confirm
step
map Scarlet Halls/2
path follow strict;loop off;ants straight
path	47.6,88.3	56.8,79.4	61.7,69.5
path	61.7,55.5
While following this path keep an eye out for Scarlet Cannoneers. They will spawn randomly and attack using the cannons along this path.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Armsmaster Harlan##58632
|tip Dragon's Reach is a cleave ability, avoid being in front of this boss.
|tip Harlan will periodically summon two Scarlet Defenders. You can either kill these adds or you can wait for them to be caught in Harlan's Blades of Light ability.
|tip He will use Heroic Leap to the center of the pit and begin casting Blades of Light. This whirlwind quickly moves around the entire area and does massive damage to anybody caught within it. Jump between the different levels of this area to avoid this ability easily.
|confirm
step
map Scarlet Halls/2
path follow strict;loop off;ants straight
path	48.6,58.1	48.7,50.5	39.1,46.8
path	39.1,23.2
Follow the path to the final boss.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
label "Scarlet Crusade"
kill Vigilant Watchman##58898+, Master Archer##59175+, Scarlet Evangelist##58685+, Scarlet Myrmidon##58683+, Scarlet Cannoneer##59293+, Scarlet Scourge Hewer##58684+, Scarlet Defender##58676+, Scarlet Evoker##58756+, Scarlet Defender##58998+, Scarlet Treasurer##59241+, Scarlet Hall Guardian##59240+, Scarlet Pupil##59373+, Scarlet Scholar##59372+
Kill 50 Scarlet Crusaders. |q 31495/1
|only if haveq(31495)
step
kill Flameweaver Koegler##59150
|tip Koegler will try to light the book cases around the room on fire with Book Burner. You can avoid this mechanic by staying on the red carpet circle inside this room.
|tip He will move to the center of the room and begin using Greater Dragon's Breath. Watch where he is facing and move around the room clockwise to avoid being hit.
|tip Quickened Mind will cause Koegler's next three spells to be cast nearly instantly. This can be dispelled off of him.
collect Codex of the Crusade##87267 |q 31497/1 |only if haveq(31497)
Defeat Flameweaver Koegler |scenariogoal 1/34441 |goto 39.3,16.1
step
talk Hooded Crusader##64764
turnin Rank and File##31495 |goto 39.3,17.0
turnin Just for Safekeeping, Of Course##31497 |goto 39.3,17.0
step
Congratulations! You have completed Scarlet Halls
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Pandaria Dungeons\\Scarlet Monastery",{
mapid=302,
achieveid={6761},
patch='50004',
condition_suggested=function() return level>=35 and level<=35 end,
author="support@zygorguides.com",
description="\nThis guide will walk you through the Scarlet Monastery dungeon.",
},[[
step
Press _I_ and queue for Scarlet Monastery or enter the dungeon with your group |goto Scarlet Monastery/1 74.2,46.2 < 100 |c
step
talk Hooded Crusader##64838
accept Blades of the Anointed##31515 |goto Scarlet Monastery/1 72.7,47.0
step
Clear the trash up to this point. |goto 30.8,46.2
|tip The Piles of Corpses should be killed first or you will be fighting zombies much longer than is necessary.
|confirm
step
kill Thalnos the Soulrender##59789
|tip Thalnos will Raise Fallen Crusaders. This ability summons zombies that the tank needs to pick up. When the Fallen Crusaders hit you, they leave behind Mind Rot which is a DoT that can stack.
|tip He also summons Spirit Gales often. These are puddles on the ground that should not be stepped in. This ability is interruptable.
|tip Evict Soul is a debuff that Thalnos throws on a random party member. This DoT needs to be dispelled as quickly as possible.
|tip He will also use Summon Empowering Spirit. This ability will summon an add that DPS should kill as quickly as they can. If this add reaches a Fallen Crusader's corpse, it will spawn an Empowered Zombie.
|tip Empowered Zombies are large zombies which need to be tanked. They cannot be killed without great focus.
Defeat Thalnos the Soulrender |scenariogoal 1/19270 |goto 26.1,45.4
step
click Blade of the Anointed##214296
collect Blade of the Anointed##87282 |q 31515/1 |goto 20.6,45.9
step
map Scarlet Monastery/1
path follow strict;loop off;ants straight
path	34.5,52.5	34.8,78.2	39.4,81.7
path	48.5,90.3
Follow the path. |goto Scarlet Monastery/2
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Blade of the Anointed##64855
turnin Blades of the Anointed##31515 |goto Scarlet Monastery/2 49.1,24.5
accept Unto Dust Thou Shalt Return##31516 |goto Scarlet Monastery/2 49.1,24.5
step
map Scarlet Monastery/2
path follow strict;loop off;ants straight
path	45.7,31.9	43.9,36.3	49.2,43.3
Follow the path. |goto Scarlet Monastery/2
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Brother Korloff##59223
Brother Korloff loves to play with fire.
|tip Flying Kick will hit a random party member knocking them back, make sure they aren't knocked into any uncleared trash.
|tip Blazing Fists is a series of punches Korloff makes in front of him, have the tank take a step back and make sure all party members are behind Korloff.
|tip Firestorm Kick is whirlwind of flame, do not stand in it.
|tip Scorched Earth is a fire trail that Korloff leaves behind him, do not stand in it.
|tip Every 10%, Korloff wil gain a stack of Rising Flame. These increase his fire damage done by 10% per stack.
|tip The boss will patrol between two groups. Pull each group carefully, keeping in mind the boss' patrol.
Defeat Brother Korloff |scenariogoal 1/19271 |goto 49.4,52.3
step
Enter the cathedral here |goto 49.1,57.1 < 5
confirm
step
Before encountering the boss, make sure you kill the trash within the cathedral.
|tip This includes the main room and both wings.
|confirm
step
kill Commander Durand##60040
kill High Inquisitor Whitemane##3977
_Phase 1_
|tip Commander Durand will fight you alone.
|tip He uses Flash of Steel and Dashing Strike. Both of these abilities cause him to jump to party members quickly, but neither do much damage as long as the group is spread out.
|tip When Durand dies, phase 2 begins.
_Phase 2_
|tip High Inquisitor Whitemane will come and and begin to fight.
|tip She will cast Power Word: Shield, Smite and Heal. Make sure to interrupt Smite and Heal.
|tip Whitemane will also try casting Mass Resurrection. DO NOT LET THIS CAST FINISH!! If this cast finishes, all corpses within 100 yards will resurrect and aggro.
|tip After you weaken her she will cast Deep Sleep. This puts the entire party to sleep for 10 seconds, during this time she will resurrect Durand.
_Phase 3_
|tip Now you will have to fight the two together.
|tip Kill Whitemane first, make sure to interrupt Smite and Heal
|tip Stay spread out for Durand.
Use the Blades of the Anointed on High Inquisitor Whitemane's corpse. |use Blades of the Anointed##87390 |only if haveq(31516)
Blades of the Anointed thrust into Whitemane's corpse. |q 31516/1 |only if haveq(31516)
Defeat Commander Durand and High Inquisitor Whitemane |scenariogoal 1/34443 |goto 49.2,80.7
step
talk Hooded Crusader##64842
turnin Unto Dust Thou Shalt Return##31516 |goto 48.9,78.9
step
Congratulations! You have completed Scarlet Monastery
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Pandaria Dungeons\\Scholomance",{
mapid=476,
achieveid={6762},
patch='50004',
condition_suggested=function() return level>=35 and level<=35 end,
author="support@zygorguides.com",
description="\nThis guide will walk you through the Scholomance dungeon.",
},[[
step
Press _I_ and queue for Scholomance or enter the dungeon with your group |goto Scholomance/1 18.2,61.1 < 100 |c
step
talk Talking Skull##64563
accept The Four Tomes##31442 |goto Scholomance/1 27.0,58.8
accept An End to the Suffering##31448 |goto Scholomance/1 27.0,58.8
step
Go through the gate and down these steps |goto 48.6,43.2 < 5
confirm
step
Clear this room of trash and be careful not to aggro Instructor Chillheart.
|confirm
step
kill Instructor Chillheart##58633
_Phase 1_
|tip Wrack Soul will deal damage to a party member and jump to a nearby party member when it expires. Spread out.
|tip Touch of the Grave causes Chillheart's next 10 basic attacks to deal additional damage.
|tip Frigid Grasp will summon ice at a player's feet, step out of this before it explodes.
|tip Ice Wall will start at the back of the room and slowly creep toward the boss. If this touches any player then they will die instantly. This will act as the enrage timer of the fight.
|tip Kill Chillheart's physical body and Phase 2 will start.
kill Instructor Chillheart's Phylactery##58664
_Phase 2_
|tip The Anarchist Arcanist will float around creating Arcane Bombs. These explode on impact so avoid them.
|tip Antonidas' Self Help Guide to Standing in Fire will cast Burn. This does a small AoE of fire damage around the book.
|tip Wander's Colossal Book of Shadow Puppets will cast Shadow Bolt at the party.
Defeat Instructor Chillheart |scenariogoal 1/19259 |goto 65.1,60.6
step
click In the Shadow of the Light##214279
Destroy In the Shadow of the Light |q 31442/1  |goto Scholomance/1 74.7,57.5
|only if haveq(31442)
step
map Scholomance/1
path follow strict;loop off;ants straight
path	79.3,52.0	80.6,23.8
Follow the path downstairs. |goto Scholomance/2 77.0,26.5 <5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
click Kel'Thuzad's Deep Knowledge##214278
Destroy Kel'Thuzad's Deep Knowledge |q 31442/2 |goto Scholomance/2 73.9,8.6
|only if haveq(31442)
step
Clear all of the trash in this room before fighting Jandice Barov.
|confirm
step
kill Jandice Barov##59184
|tip Wondrous Rapidity is a large cone attack in front of Jandice, make sure nobody is in front of her.
|tip Gravity Flux will create a gravity distortion field on the ground. If you step into this ability you will be knocked back as well as damaged heavily.
|tip At 66% and 33% Jandice will cast Phantasmal Images. She will clone herself throughout the room, destroy the clones until she returns to battle.
|tip While the clones are alice they will cast Whirl of Illusion, this does AoE damage to everybody in the group every second.
Defeat Jandice Barov |scenariogoal 1/19260 |goto 59.9,18.5
step
Enter the Chamber of Summoning |goto 56.4,26.8 < 5
confirm
step
kill Boneweaver##59193
|tip Go around the perimeter of this room and kill the Boneweavers. When all of them are dead, the boss wil initiate you.
|confirm
step
kill Rattlegore##59153
|tip With each successful attack Rattlegore will gain a stack of Rusting. This increases his attack damage but lowers his attack and movement speeds. If the tank is getting hit too hard, kite Rattlegore around the room.
|tip Bone Spike will target a random party member and do massive damage to them. This can be prevented if every party member keeps Bone Armor active.
|tip Bone Armor is granted by clicking on the Bone Piles around the room.
|tip Periodically a section of the room will be engulfed in Soulflame. Avoid the fire and be wary because it grows over time.
Defeat Rattlegore |scenariogoal 1/19261 |goto 48.3,26.2
step
Enter the Chamber of Summoning |goto 40.3,26.6 < 5
confirm
step
kill Flesh Horror##59359+
kill Meat Graft##59982+ |goto 42.0,46.8
|tip When fighting the Flesh Horrors, aim for the Meat Grafts attached to their bodies. If all of the Grafts die then the Horrors will die with them.
|confirm
step
click Forbidden Rites and other Rituals Necromantic##214280
Destroy Forbidden Rites and other Rituals Necromantic |q 31442/3  |goto 42.5,51.6
|only if haveq(31442)
step
Go down the steps and prepare to fight Lilian Voss. |goto 47.0,47.2 < 5
confirm
step
kill Lilian Voss##58722
_Phase 1_
|tip Lilian will Shadow Shiv a random player after jumping onto them. When she latches onto you, run away from your allies to avoid AoE damage.
|tip Death's Grasp will pull every party member to Lilian and will be followed by Dark Blaze. Dark Blaze causes every player to start leaving a trail of fire behind them, run to the outside of the room to trail your fire, this way the center is still open.
|tip At 60% Phase 2 begins.
kill Lilian's Soul##58791
_Phase 2_
|tip Lilian's Soul will begin to attack you. She will periodically cast Blazing Soul which does fire damage to all players.
|tip For every melee attack Lilian lands she will unleash another Blazing Soul. You must kite her aroud.
|tip Fixate Anger will determine who is in charge of kiting. If she Fixates on your do not stop running.
_Phase 3_
|tip Phase 3 is a combination of Phases 1 and 2.
|tip Be watchful of who Lilian's Soul is Fixating on, this is the highest source of damage during the fight.
|tip You will continued to get pulled in by Death's Grasp, be extra careful not to put a path of Dark Blaze in somebodies way if they need to kite the Soul.
Defeat Lilian Voss |scenariogoal 1/19262 |goto 52.0,47.1
step
click The Dark Grimoire##214277
Destroy The Dark Grimoire |q 31442/4 |goto Scholomance/2 47.1,73.1
|only if haveq(31442)
step
Go through this doorway and follow the stairs down. |goto Scholomance/2 47.8,84.8
confirm
step
kill Darkmaster Gandling##59080 |q 31448/1 |only if haveq(31448)
kill Darkmaster Gandling##59080 |only if not haveq(31448)
|tip Immolate will be used on a random party member, heal through this DoT.
|tip Darkmaster Gandling will cast Rise!. This summons many Failed Students that need to be killed. During this cast Darkmaster Gandling takes reduced damage.
|tip Periodically a random party member will be teleported to one of Gandling's study rooms for a Harsh Lesson.
|tip This party member must kill the Expired Test Subjects and make their way back to the bosses room. If the healer gets trapped in one of these rooms, the Fresh Test Subjects around the room will serve as useful bombs. Dispel the _Explosive Pain_ off of them to deal AoE damage to the Expired Test Subjects.
Defeat Darkmaster Gandling |scenariogoal 1/34440 |goto Scholomance/3 50.2,35.1
step
Go back up the stairs. |goto Scholomance/4 49.1,21.5 < 5
confirm
step
talk Talking Skull##64563
turnin The Four Tomes##31442 |goto Scholomance/3 49.2,21.2
turnin An End to the Suffering##31448 |goto Scholomance/3 49.2,21.2
step
Congratulations! You have completed Scholomance
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Pandaria Dungeons\\Shado-Pan Monastery",{
mapid=443,
achieveid={6469},
patch='50004',
condition_suggested=function() return level>=20 and level<=35 end,
author="support@zygorguides.com",
description="\nThis guide will walk you through the Shado-Pan Monastery dungeon.",
},[[
step
Press _I_ and queue for Shado-Pan Monastery or enter the dungeon with your group |goto Shado-Pan Monastery/2 85.0,56.5 < 100 |c
step
talk Ban Bearheart##62236
accept Lord of the Shado-Pan##30757 |goto Shado-Pan Monastery/2 83.4,56.1
step
Fight your way through this room |goto 60.2,43.8 < 5
confirm
step
kill Gu Cloudstrike##56747
_Phase 1_
|tip Gu will Invoke Lightning and deal Nature damage to a random party member.
|tip Gu's serpent will create a Static Field under a random player. Move out of this and the effect that persists.
_Phase 2_
|tip Gu will become immune to damage so focus your attention on his Azure Serpent.
|tip When the serpent casts Magnetic Shroud, stack up. This will absorb healing and then explode and heal for the amount it absorbed.
|tip Lightning Breath is a frontal cone, do not stand in front of the boss.
_Phase 3_
|tip Gu Cloudstrike will use Overcharged Soul which deals damage to the entire party until he is defeated.
Defeat Gu Cloudstrike |scenariogoal 1/19239 |goto 45.3,24.3
step
Follow the path to this point and defeat the Shado-Pan Disciples who attack you. |goto 23.6,83.6 < 5
Follow this ramp up and be careful not to be hit by the freezing arrows. |goto Shado-Pan Monastery/1 54.0,75.2 < 5
Cross the bridge and enter Snowdrift Dojo |goto Shado-Pan Monastery/1 36.1,81.2 < 5
confirm
step
kill Fragrant Lotus##56472 |goto Shado-Pan Monastery/3 60.5,64.8
kill Flying Snow##56473 |goto Shado-Pan Monastery/3 60.5,64.8
Fight off the waves of Shado-Pan Novices and finally defeat Fragrant Lotus and Flying Snow.
|confirm
step
kill Master Snowdrift##56541
|tip Fists of Fury is a frontal attack that does massive damage, the tank needs to back out of this.
|tip Tornado Kick is a strong whirlwind attack that should be avoided.
|tip Master Snowdrift will teleport around the room and make two clones of himself. You can tell the boss from his clones by looking at the debuffs on the boss. Step behind him and avoid the projectiles being cast around the room.
|tip While Master Snowdrift is in Parry Stance refrain from hitting him, or find a way to hit him from behind. He will retaliate to any attack that is made.
Defeat Master Snowdrift |scenariogoal 1/19244 |goto 24.5,25.3
step
talk Master Snowdrift##56541
accept The Path to Respect Lies in Violence##31342 |goto 30.3,35.4
step
Go outside and cross this bridge. |goto Shado-Pan Monastery/1 24.9,41.3 < 5
confirm
step
Enter the Sealed Chambers |goto Shado-Pan Monastery/1 31.1,34.0
confirm
step
kill Sha of Violence##56719 |only if not haveq(31342)
kill Sha of Violence##56719 |q 31342/1 |only if haveq(31342)
|tip The Sha of Violence will use Disorientating Smash on its target, this will deal a large amount of damage and cause the target to be blinded for four seconds.
|tip Smoke Blades is a whirlwind attack that will leave a debuff on anybody it hits that reduces critical strike chance to 0. If you attack with this debuff it will clear it faster. After the debuff is gone you will gain Parting Smoke for three seconds, this causes your next hit to critically strike for 100% more damage than it normally would.
|tip Sha Spike will be cast at a random player knocking them up.
|tip When the Sha of Violence is weak, it will Enrage gaining 50% attack speed.
Defeat Sha of Violence |scenariogoal 1/19240 |goto Shado-Pan Monastery/4 47.3,61.1
step
The following trash can be very tough to beat.
|tip You will have to release the spirits of the dead Pandaren before killing any of the hostile adds. If you kill the adds they will simply respawn.
|confirm
step
map Shado-Pan Monastery/1
path follow strict;loop off;ants straight
path	46.6,43.1	54.0,50.7	61.6,52.4
path	69.9,49.5
Follow the path to the final boss. |goto Shado-Pan Monastery/1 69.9,49.5 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Taran Zhu##56884
|tip The biggest mechanic in this fight is Hatred meter. If this reaches 100% you will receive the debuff Haze of Hate this reduces your accuracy by 90%.
|tip To counteract the Hatred Meter you will have a new Meditate button above your action bars. Click this button to prevent being consumed by hatred.
|tip Tanks should tank Tarn Zhu up against one of the pillars in his arena. Taran Zhu will knock the tank back and cause this fight to be more hectic than it needs to be.
|tip Ring of Malice is a ring of shadows that Taran Zhu will use around himself. Either be very far away or nearby to avoid this.
|tip He will periodically Summon Gripping Hatred. This shadow balls will grab players and pull them into Pools of Shadows. Kill these if you can.
Rid Taran Zhu of his possession. |q 30757 |only if haveq(30757)
Defeat Taran Zhu |scenariogoal 1/34410 |goto Shado-Pan Monastery/1 69.9,49.5
step
talk Taran Zhu##56884
turnin Lord of the Shado-Pan##30757 |goto 69.3,49.7
|only if haveq(30757)
step
talk Master Snowdrift##64387
turnin The Path to Respect Lies in Violence##31342 |goto 68.4,50.1
|only if haveq(31342)
step
Congratulations! You have completed Shado-Pan Monastery
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Pandaria Dungeons\\Siege of Niuzao Temple",{
mapid=457,
achieveid={6763},
patch='50004',
condition_suggested=function() return level>=25 and level<=35 end,
author="support@zygorguides.com",
description="\nThis guide will walk you through the Siege of Niuzao Temple dungeon.",
},[[
step
Press _I_ and queue for Siege of Niuzao Temple or enter the dungeon with your group |goto Siege of Niuzao Temple/2 65.4,87.3 < 100 |c
step
talk Shado-Master Chum Kiu##64517
accept Somewhere Inside##31365 |goto Siege of Niuzao Temple/2 63.1,77.7
accept Take Down the Wing Leader##31366 |goto Siege of Niuzao Temple/2 63.1,77.7
step
Jump over the ledge here. |goto 60.5,54.4
|confirm
step
kill Vizier Jin'bak##61567
|tip In the middle of this room is a puddle of resin. The tank should periodically walk through this puddle to shrink it.
|tip Vizier Jin'bak will summon three adds, kill them before they reach the resin puddle.
|tip Shortly after summoning adds, he will cast Detonate, this does damage to the entire group. The smaller the puddle is, the less damage the group will take.
Defeat Vizier Jin'bak |scenariogoal 1/19249 |goto 46.8,52.2
step
map Siege of Niuzao Temple/2
path follow strict;loop off;ants straight
path	37.4,65.4	53.4,81.8	Siege of Niuzao Temple/3 65.0,39.2
path	Siege of Niuzao Temple/3 31.6,38.4	Siege of Niuzao Temple/3 21.7,53.9
Clear the trash and follow this path. |goto Siege of Niuzao Temple/3
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Yang Ironclaw##61620
We're ready to defend! |goto Siege of Niuzao Temple/1 44.5,74.3
|confirm
step
Before you fight Commander Vo'jak you must fight the wave of adds that he sends your way.
|tip Stay on the top ledge and throw Mantid Tar Kegs down onto the path as the adds run up. This will deal heavy damage and increase their damage taken.
|tip Have the ranged DPS in your party prioritizing the Sik'thik Amberwings. They will fly at the wall and Bombard the party. If you do not kill them then they will fly away and continue to be a hassle later.
Defeat Commander Vo'jak's army and click here. |confirm
step
kill Commander Vo'jak##61634
|tip While you fight Commander Vo'jak have a ranged dps continue to throw and Mantid Tar Kegs on the boss. Be careful not to hit the tank.
|tip The boss will counter this by using Thousand Blades, clearing his debuffs. Have the tank kite him into the puddles to reapply the debuff.
|tip While the boss is using Thousand Blades run away! This whirlwind will deal massive, potentially fatal, damage.
Defeat Commander Vo'jak |scenariogoal 1/19250
stickystart "freeshado"
step
map Siege of Niuzao Temple/1
path follow strict;loop off;ants straight
path	37.8,76.5	35.4,59.8	39.1,42.7
path	46.3,43.2
Follow the ramp and then follow this path. |goto 46.3,43.2 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
The next boss patrols this area, be careful to pull the trash groups without also gaining his attention.
|confirm
step
kill General Pa'valak##61485
|tip General Pa'valak's two main abilities are Blade Rush and Tempest. Tempest negates healing but is nothing too significant. When he begins casting Blade Rush he will mark a spot on the ground with a circle, move out of it. He throws his weapon and then charges to it.
|tip He will also cast Bulwark. This shield will absorb one million damage while adds run in to reinforce the boss. Kill the shield and AoE down the adds.
|tip Siege Explosives will spawn around the area. To make this fight go quicker use these explosives on the boss to increase his damage taken. It is also suggested you save a bomb for each wave of adds.
Defeat General Pa'valak |scenariogoal 1/19251 |goto 55.0,45.5
step
label "freeshado"
clicknpc Shado-Pan Prisoner##64520+
Free 12 Shado-Pan Prisoners |q 31365/1
|tip While following this next path make sure you are freeing the captive Shado-Pan.
|only if haveq(31365)
step
Make your way to the other side of the bridge |goto 50.1,33.0
|tip This event can be a little hectic. The aggro range on most of the enemies can cause the group to pull an uncomfortable amount, be careful to aggro only what your group is capable of clearing in a single pull.
|confirm
step
kill Wing Leader Ner'onok##62205 |q 31366/1 |only if haveq(31366)
kill Wing Leader Ner'onok##62205 |only if not haveq(31366)
|tip Wing Leader Ner'onok will use a variety of Resins designed to hinder movement.
|tip When he casts Quick Dry Resin start jumping. This removes the effect.
|tip He will constantly throw down pools of Caustic Pitch. These damage and slow you if you run through them.
|tip Periodically throughout the fight Wing Leader Ner'onok will fly to the opposite end of the bridge and begin casting Gusting Winds. Navigate to the other side of the bridge by having your back against the pod-like structures that are all along the bridge, they allow you to move forward without being pushed back.
|tip When you make it to the other end of the bridge interrupt Gusting Winds. A ranged interrupt comes in great handy here.
Defeat Wing Leader Ner'onok |scenariogoal 1/34407 |goto 57.5,21.8
step
talk Shado-Master Chum Kiu##64517
turnin Somewhere Inside##31365 |goto Siege of Niuzao Temple/1 58.1,23.1
turnin Take Down the Wing Leader##31366 |goto Siege of Niuzao Temple/1 58.1,23.1
step
Congratulations! You have completed Siege of Niuzao Temple
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Pandaria Dungeons\\Stormstout Brewery",{
mapid=439,
achieveid={6457},
patch='50004',
condition_suggested=function() return level>=15 and level<=35 end,
author="support@zygorguides.com",
description="\nThis guide will walk you through the Stormstout Brewery dungeon.",
},[[
step
Press _I_ and queue for Stormstout Brewery or enter the dungeon with your group |goto Stormstout Brewery/1 79.7,39.7 < 100 |c
step
talk Auntie Stormstout##59822
accept Family Secrets##31324 |goto Stormstout Brewery/1 76.9,35.4
step
talk Chen Stormstout##59704
accept Trouble Brewing##31327 |goto 75.1,36.2
stickystart "Stormstout"
step
map Stormstout Brewery/1
path follow strict;loop off;ants straight
path	54.0,50.3	44.0,65.1	30.7,84.3
path	21.5,76.5	23.9,63.1
Clear the trash along this path. |goto 23.9,63.1 <5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
label "Stormstout"
As you follow the next path make sure you loot the Hozen you kill for Stormstout Secrets and click the tomes along the floor.
kill Sodden Hozen Brawler##59605+, Inflamed Hozen Brawler##56924+, Sleepy Hozen Brawler##56863+, Drunken Hozen Brawler##56862+
click Stormstout Secrets##213795
collect 5 Stormstout Secrets##86431 |q 31324/1
|only if haveq(31324)
step
You will need to kill 40 Hozen to summon the first boss. |goto Stormstout Brewery/2 53.4,50.1
Click here once Ook-Ook has spawned |confirm
step
kill Ook-Ook##56637
|tip Ook-Ook will Ground Pound which is a frontal shockwave, do not stand in it.
|tip At 90%, 60%, and 30% Ook-Ook will Go Bananas. This increases his attack speed and damage dealt each time. This buff stacks. He will also summon Rolling Barrels when he does this.
|tip DPS should click on Rolling Barrels and ride them into Ook-Ook. This will increase his damage taken as well as do a lot of damage. This effect stacks
Defeat Ook-Ook |scenariogoal 1/19236 |goto 53.4,50.1
step
map Stormstout Brewery/2
path follow strict;loop off;ants straight
path	74.6,75.1	80.9,81.4	89.8,71.8
path	81.8,58.3	Stormstout Brewery/3 20.5,68.7	Stormstout Brewery/3 29.5,49.9
path	Stormstout Brewery/3 38.0,46.3
This is a gauntlet event. Kill the virmen as you run through the path.
|tip Boppers are the most important type of virmen. Upon death they drop a Big Ol' Hammer. When you pick this up you will gain a new button on your screen, Smash!. Click it to clear many virmen at a time.
Finish the gauntlet event. |goto Stormstout Brewery/3 38.0,46.3 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Hoptallus##56717
|tip Hoptallus will constantly use Furlwind. this whirlwind will do large amounts of damage, so kite him around.
|tip He will also summon virmen. These are the same types of adds that you cleared in the last path. Aim down the Boppers first and use their Big Ol' Hammer to Smash! all of the other adds.
|tip Carrot Breath will deal large damage to anybody standing within the cone, avoid this.
Defeat Hoptallus |scenariogoal 1/19237 |goto 38.0,46.3
step
map Stormstout Brewery/3
path follow strict;loop off;ants straight
path	39.7,38.9	43.3,26.7	58.9,29.7
path	75.3,56.5	89.9,44.2	73.6,34.2
Kill the Alementals as you follow this path. |goto 73.6,34.2 <5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Uncle Gao will summon 3 waves of Alementals before Yan-Zhu. |goto Stormstout Brewery/4 49.6,51.1
kill Yeasty Brew Alemental##66413+
kill Bloated Brew Alemental##59518+
kill Fizzy Brew Alemental##59520+
|confirm
step
kill Yan-Zhu the Uncasked##59479 |q 31327/1 |only if haveq(31327)
kill Yan-Zhu the Uncasked##59479 |only if not haveq(31327)
|tip Yan-Zhu will constantly through Blackout Brew, counter this by moving around until the debuff is off of you.
|tip When Yan-Zhu casts Carbonation click on the Fizzy Bubbles around the room, this will grant you a buff that allows you to fly above the cloud.
|tip Bubble Shields will need to be killed very quickly, they reduce the amount of damage that the boss takes.
|tip Keep moving to remove the Blackout Brew, click Fizzy Bubbles to gain the ability to fly above Carbonation
Defeat Yan-Zhu the Uncasked |scenariogoal 1/34411 |goto 49.6,51.1
step
talk Uncle Gao##59074
turnin Family Secrets##31324 |goto Stormstout Brewery/4 39.0,56.0
step
talk Chen Stormstout##64361
turnin Trouble Brewing##31327 |goto 41.1,55.2
step
Congratulations! You have completed Stormstout Brewery
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Pandaria Dungeons\\Temple of the Jade Serpent",{
mapid=429,
achieveid={6757},
patch='50004',
condition_suggested=function() return level>=10 and level<=35 end,
author="support@zygorguides.com",
description="\nThis guide will walk you through the Temple of the Jade Serpent dungeon.",
},[[
step
Press _I_ and queue for Temple of the Jade Serpent or enter the dungeon with your group |goto Temple of the Jade Serpent/1 31.3,45.0 < 100 |c
step
talk Priestess Summerpetal##60578
accept Restoring Jade's Purity##31355 |goto Temple of the Jade Serpent/1 36.0,44.4
step
talk Master Windstrong##64399
accept Deep Doubts, Deep Wisdom##31356 |goto 36.0,44.4
step
map Temple of the Jade Serpent/1
path follow strict;loop off;ants straight
path	36.3,34.9	31.4,26.6	37.4,15.9
Follow this path to the first boss. |goto 37.4,15.9 <5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Wise Mari##56448
_Phase 1_
|tip Throughout this entire fight avoid standing in any water, it will hurt you every second.
|tip For the first phase Wise Mari will be immune to damage. You can break his protective bubble by defeat the four _Corrupt Living Water_ that he summons with Call Water.
|tip When these adds die they will spawn three Corrupt Droplet and leave behind Sha Residue. Kite the adds to a new location out of the residue and kill them.
|tip After four adds die, Wise Mari will burst his bubble and begin Phase 2.
_Phase 2_
|tip The only mechanic in this phase is Wash Away. Mari will spin in a circle and shoot out a water spout, move around him to avoid being hit.
Assist Wise Mari |q 31355/1 |only if haveq(31355)
Defeat Wise Mari |scenariogoal 1/19230 |goto 44.4,19.2
step
map Temple of the Jade Serpent/1
path follow strict;loop off;ants straight
path	37.4,15.9	31.4,26.6	36.3,34.9
path	31.4,57.6	27.7,62.8
Follow the path back to The Scrollkeeper's Sanctum. |goto Temple of the Jade Serpent/2
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Temple of the Jade Serpent/2
path follow strict;loop off;ants straight
path	34.9,21.5	26.4,68.0	58.3,82.5
path	65.3,50.2	46.1,41.9
Kill all of the mini bosses along this platform as you follow the path. |goto Temple of the Jade Serpent/1
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
When you are ready to face the boss kill the Corrupted Scroll.
kill Corrupted Scroll##57080
|confirm
step
There are two possible encounters associated with this boss.
Click here for the _Trial of the Yaungol_ strategy. |next "yaungol" |confirm
Click here for the _Champion of the Five Suns_ strategy. |next "sun" |confirm
step
label "yaungol"
_Trial of the Yaungol_
kill Strife##59051
kill Peril##59726
|tip Your group will want to focus its attention on either Strife or Peril, splitting up damage is extremely bad in this fight.
|tip When you attack one of the bosses they begin stacking a buff called Intensity. Keep your eye on this buff, the higher it gets the more damage it does to the group. Let this buff get to either eight or niene stacks and then switch all damage, including pets, to the other boss.
|tip The boss that you are not focusing will begin to starve. Dissipation reduces the Insanity stacks.
|tip While you are juggling the bosses they will cast Agony on random party members. This does a decent amount of damage that must be healed.
Lorewalker Stonestep assisted |q 31355/3 |only if haveq(31355) |next "done"
Defeat the Trial of the Yaungol |scenariogoal 1/24785 |next "done" |goto 26.2,75.2
step
label "sun"
_Champion of the Five Suns_
kill Zao Sunseeker##58826
|tip Five Suns will spawn and being firing Sunfire Rays at random players dealing damage.
|tip You will be able to kill four of these Suns, and everytime you do a Haunting Sha will spawn. You can either kill these one at a time or all together.
|tip When all four Haunting Sha are dead, Zao Sunseeker will become possessed.
|tip He will shoot Hellfire Arrows at random party members, kill him before your healer becomes overwhelmed.
Lorewalker Stonestep assisted |q 31355/3 |only if haveq(31355) |next "done"
Defeat the Champion of the Five Suns |scenariogoal 1/24785 |next "done" |goto 26.2,75.2
step
label "done"
map Temple of the Jade Serpent/1
path follow strict;loop off;ants straight
path	38.6,80.7	53.5,85.4	46.5,64.9
Follow this path to the next boss. |goto 46.5,64.9 <5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Kill all the enemies on the Terrace of the Twin Dragons to face Liu Flameheart.
|confirm
step
kill Liu Flameheart##56732
_Phase 1_
|tip Serpent Strike will hit the tank for significant damage and leave a heavy DoT effect on them, dispel this DoT.
|tip Serpent Kick will be used immediately after Serpent Strike, this does damage to anybody within 8 yards of Liu.
|tip Serpent Wave wil follow Serpent Kick, this shoots waves of fire out from around Liu. Do not be hit by these.
_Phase 2_
|tip At 70% life, all of Liu's abilities gain an additional effect.
|tip Jade Serpent Strike now also absorbs 70,000 healing received by the target.
|tip Jade Serpent Kick now also knocks players within 8 yards back.
|tip Jade Serpent Wave now also leaves a trial of fire along the path the flame travels.
_Phase 3_
kill Yu'lon##56762
|tip At 30% life, Yu'lon spawns.
|tip Yu'lon will breathe balls of fire that create a pool of Jade Fire where they land. Step out of this pool to avoid taking damage.
Liu Flameheart assisted |q 31355/2 |only if haveq(31355)
Defeat Liu Flameheart |scenariogoal 1/19235 |goto 48.1,52.0
step
Perpare to face the Sha of Doubt. |goto 56.1,57.0
|confirm
step
kill Sha of Doubt##56439 |only if not haveq(31356)
kill Sha of Doubt##56439 |q 31356/1 |only if haveq(31356)
|tip The Sha of Doubt will cast Wither Will at two random party members, dealing damage to both of them.
|tip Touch of Nothingness is a dispellable effect that will be put on a random player. This does damage to all surrounding players so spread out.
|tip Periodically the Sha of Doubt will become invulnerable and summon as many adds are there are players. Stack these adds up and kill all of them, if you do not kill them before their energy bar is full, they will heal the boss 10% life and explode dealing significant damage for each add left alive.
Defeat Sha of Doubt |scenariogoal 1/34412 |goto 60.5,58.8
step
talk Priestess Summerpetal##60578
turnin Restoring Jade's Purity##31355 |goto 36.0,44.4
step
talk Master Windstrong##64399
turnin Deep Doubts, Deep Wisdom##31356 |goto 36.0,44.4
step
Congratulations! You have completed Temple of the Jade Serpent
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Pandaria Raids\\Heart of Fear",{
mapid=474,
achieveid={6845, 6718},
patch='50004',
condition_suggested=function() return level>=35 and level<=37 end,
author="support@zygorguides.com",
description="\nThis guide will walk you through the Heart of Fear raid.",
},[[
step
Click here if you are doing a normal clear of Heart of Fear |next "Normal HoF"
Click here if you are doing LFR wings of Heart of Fear |next "LFR Index"
confirm
step
label "LFR Index"
talk Lorewalker Han##80633
Click here if you are queueing for the First wing of Heart of Fear (Dread Approach to the Heart of Fear) |next "First_Wing_HoF"
Click here if you are queueing for the Second wing of Heart of Fear (Nightmare of Shek'zeer) |next "Second_Wing_HoF"
confirm
step
label "Normal HoF"
Enter Heart of Fear |goto Dread Wastes/0 38.95,34.99 < 5
confirm
step
label "First_Wing_HoF"
map Heart of Fear/1
path loop off
path	34.3,76.4	41.3,61.5	50.6,61.4
path	54.6,54.0	61.4,62.5
Follow the path, clearing trash as you make your way to the first boss, Imperial Vizier Zor'lok. |goto 61.4,62.5 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Imperial Vizier Zor'lok##62980 |goto 62.8,66.3
_Phase 1_
|tip After engaged, Zor'lok will fly to a randomly chosen platform. He will move to another platform at 80% and 60% health. Each platform gives him a different buff.
|tip Left Platform: Attenuation creates moving circles, sonic rings. These deal a moderate amount of damage and can be avoided.
|tip Middle Platform: Convert Zor'lok mind controls random players. These players must be brought down to 50% health.
|tip Right Platform: Force and Verve creates 3 shields which can protect raid members by reducing their damage taken by 40%. Zor'lok then releases a violent burst of sound, damaging the entire raid every second for 10 seconds.
|tip Inhale increases the damage of Exhale by 50%.
|tip Exhale deals a large amount of damage to a random player, also stunning them for 6 seconds.
_Phase 2_
|tip Phase 2 starts when Zor'lok reaches 40% health. He flies to the center of the room and uses all the abilities from Phase 1.
|tip He also gains _Pheromoes of Zeal, increasing his damage by 10% and haste by 20. Kill him as quickly as possible to avoid death.
_Heroic_
|tip When Vizier leaves a platform he will leave an echo of himself, a small group needs to be left behind to kill this echo.
|tip He will continue leaving echos during his last phase as well, these need to be killed asap as they come up.
|confirm
step
map Heart of Fear/1
path loop off
path	57.8,58.2	55.4,52.4	59.9,43.8
path	68.0,34.6	51.9,35.9	59.8,28.8
Follow the path, clearing trash as you make your way to the next boss, Blade Lord Ta'yak. |goto 59.8,28.8 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Blade Lord Ta'yak##62543 |goto 59.8,22.3
_Phase 1_
|tip Phase 1 ends when Ta'yak reaches 20% health.
|tip Tempest Slash creates a tornado that moves around, dealing 75,000 Nature damage and a knockback if touched.
|tip Overwhelming Assault stacking debuff used on tanks, dealing 150% weapon damage and increasing further damage from Overwhelming Assault by 100%.
|tip Wind Step Ta'yak teleports to a random player, applying a DoT to all players within 10 yards that deals 55,000 damage every 2 seconds for 30 seconds.
|tip Unseen Strike occurs after Ta'yak vanishes. After 5 seconds it deals 3,000,000 total Physical damage and a knockback to the target and players in a 15 yard cone in front of him. This damage is split between all players affected.
_Phase 2_
|tip Ta'yak pushes the raid to one end of the room and then flies to the other end and starts spamming the raid with a strong wind and tornados that knock them back to the opposite end of the room. The goal is to get back to Ta'yak by avoiding the tornadoes and then finish him off.
|tip Intensify is a stacking buff that deals 15,000 damage to the raid and increases his damage and haste by 5% per stack.
|tip At 10% health, Ta'yak changes sides, going to the opposite end of the room and coninues creating wind and tornadoes.
|confirm
step
map Heart of Fear/1
path loop off
path	44.9,32.7	35.6,32.7	32.2,15.2
path	Heart of Fear/2 66.2,20.2
Follow the path, clearing trash as you make your way to the final boss, Garalon. |goto Heart of Fear/2 66.2,20.2 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Garalon##63191 |goto Heart of Fear/2 66.3,16.7
|tip Killing Garalon's legs takes priority, as killing them slows Garalon by 15% and reduces his health by 3%. Mend Leg causes a random leg to respawn.
|tip Furious Swipe deals damage to all players in a cone in front of Garalon. If he doesn't hit at least 2 players, he will gain Fury, a stacking buff that increases his damage and movement speed by 10% for 30 seconds.
|tip Pheromones is a debuff that deals 15,000 Nature damage every 2 seconds to the raid and creates a Pheromone Trail that increases Pheromones damage by 10% per stack.
|tip Crush deals 150,000 damage to the raid and knocks them down for 2 seconds. Any player underneath Garalon when this occurs takes an additional 800,000 damage.
|tip Enrage occurs after 7 minutes of combat. It will greatly increase his attack speed and damage. This is designed to wipe the raid. Kill him before he reaches this stage to avoid death.
_Heroic_
|tip When Garalon reaches 33 percent health he ignores the fixate of Pheramones and increases melee attack speed.
|tip If you are doing this on LFR this is the end of wing 1.
|confirm
step
label "Second_Wing_HoF"
map Heart of Fear/2
path loop off
path	68.3,26.3	69.2,37.8	66.8,38.0
Follow the path to the next boss, Wind Lord Mel'jarak. |goto 66.8,38.0 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Wind Lord Mel'jarak##62397 |goto 66.4,31.8
|tip Rain of Blades deals raid-wide Physical damage every 0.5 second.
|tip Whirling Blade deals 120,000 Physical damage to all players in its path. Upon reaching its target, it returns to Mel'jarak, inflicting another 120,000 damage to anyone in its return path.
|tip Wind Bomb throws a bomb at a player, dealing 100,000 Nature damage to players within 5 yards of where it lands. After 3 seconds, it arms and will detonate if any player comes within 6 yards, usually wiping the raid.
_Adds_
|tip 3 different types of adds spawn throughout this fight.
|tip Priests: heal and buff their damage.
|tip Warriors: charge their target.
|tip Hunters: apply debuffs to the raid.
_Heroic_
|tip When a group of adds dies Wind Lord becomes enraged increases his damage by 50 percent and increses his damage taken by 600 percent.
|tip When a group of adds dies they will come back after 45 seconds.
|confirm
step
map Heart of Fear/2
path loop off
path	66.2,40.3	66.2,47.1	66.0,52.5
path	66.2,64.6	60.2,73.8	55.1,73.7
path	50.7,74.0	47.6,78.9	47.4,68.5
Follow the path, clearing trash as you make your way to the next boss,  Amber-Shaper Un'sok. |goto 47.4,68.5 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Amber-Shaper Un'sok##62511 |goto 45.5,73.8
|tip Amber Scalpel targets a random player with a beam that deals large damage and leaves a trail of amber that forms Living Amber adds.
|tip Parasitic Growth is a DoT that deals increasing damage as the affected player is healed.
|tip Reshape Life turns the targeted player into a Mutated Construct.
_Mutated Construct_
|tip Amber Strike does a large amount of damage to the target and increases their damage taken by 10% for 15 seconds as well as interrupting them.
|tip Struggle for Control a small self-stun used to prevent Amber Explosion from being cast. Costs willpower.
|tip Consume Amber heals yourself for 2,000,000, increases your maximum health and restores 20 willpower.
|tip Break Free frees you from the Construct. Can only be used while under 20% health.
_Heroic_
|tip Amber Globules will spawn in the last phase of this fight, these will fixate 2 random players.
|tip If these Globules hit the player they are fixated they will explode dealing damage to the entire raid.
|tip If 2 Amber Globules collide they will deal no damage and disappear.
|confirm
step
map Heart of Fear/2
path loop off
path	42.1,73.8	34.8,77.8	30.9,75.2
Follow the path, clearing trash as you make your way to the final boss, Grand Empress Shek'zeer. |goto 30.9,75.2 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Grand Empress Shek'zeer##62837 |goto 28.9,73.9
|tip Dissonance Field creates 2 vortexes which explode after 60 seconds, dealing 200,000 damage to the entire raid. Players standing in a vortex cannot receive healing and casting spells inside it reduces the explosion timer.
|tip Cry of Terror is a debuff applied to a random player, dealing 45,000 Shadow damage to the rest of the raid every 2 seconds. Standing in the vortex negates this damage.
|tip Visions of Demise is a debuff that affects 2 random players. After 4 seconds they are Feared and will deal damage to everyone around them.
|tip Consuming Terror inflicts 200,000 Shadow damage and Fears players in a cone in front of Shek'zeer.
|tip After 150 seconds the boss will disappear and summon a group of adds. These are usually tanked apart so they don't increase each others' damage.
|tip If you are doing this on LFR this is the end of wing 2.
|confirm
step
Congratulations, you have finished Heart of Fear!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Pandaria Raids\\Mogu'shan Vaults",{
mapid=471,
achieveid={6458, 6844},
patch='50004',
condition_suggested=function() return level>=35 and level<=37 end,
author="support@zygorguides.com",
description="\nThis guide will walk you through the Mogu'shan Vaults raid.",
},[[
step
Click here if you are doing a normal clear of the instance |next "Normal MSV"
Click here if you are doing LFR wings of this instance |next "LFR index"
confirm
step
label "LFR index"
talk Lorewalker Han##80633 |goto Vale of Eternal Blossoms/0 83.13,30.61
Click here if you are queueing for the First wing of Mogu'shan Vaults (Guardians of Mogu'shan) |next "First Wing MSV"
Click here if you are queueing for the Second wing of Mogu'shan Vaults (Vault of Mysteries) |next "Second Wing MSV"
confirm
step
label "Normal MSV"
Enter Mogu'shan Vaults |goto Kun-Lai Summit/0 59.61,39.17 < 5
confirm
step
label "First Wing MSV"
map Mogu'shan Vaults/1
path loop off
path	68.4,64.2	54.8,64.2	50.4,64.3
Follow the path, clearing trash as you make your way to the Stone Guard. |goto 50.4,64.3 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Stone Guard_ |goto 45.6,64.5
kill Amethyst Guardian##60047
|tip Amethyst Petrification attempts to turn its enemies to amethyst, reducing Shadow damage they take by 90% and progressively slowing their movement speed.
|tip Amethyst Pool deals 60,000 every second to players who enter the area.
kill Cobalt Guardian##60051
|tip Cobalt Petrification attempts to turn its enemies to cobalt, reducing Arcane damage they take by 90% and slowing their movement speed.
|tip Rend Flesh deals 50,000 Physical damage every second for 15 seconds.
kill Jade Guardian##60043
|tip Jade Petrification attempts to turn its enemies to jade, reducing Nature damage they take by 90% and slowing their movement speed.
|tip Jade Shards inflicts 50,000 Nature damage to all players.
|tip Rend Flesh deals 50,000 Physical damage every second for 15 seconds.
kill Jasper Guardian##59915
|tip Jesper Petrification attempts to turn its enemies to jesper, reducing Fire damage they take by 90% and slowing their movement speed.
|tip Jesper Chains links 2 players together. While they are over 10 yards apart they both take 35,000 Fire damage every second, increasing by 15% per second.
|tip Rend Flesh deals 50,000 Physical damage every second for 15 seconds.
_Heroic_
|tip Each of the 4 Guardians will periodically summon a crystal, players must click these crystals.
|tip Once clicked they will get a debuff and to remove it they must run over white tiles around this encounter area.
|confirm
step
map Mogu'shan Vaults/1
path loop off
path	38.0,64.4	32.8,64.3	32.1,52.1
path	32.1,42.4
Follow the path, clearing trash as you make your way to the first boss, Feng the Accursed. |goto 32.1,42.4 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Feng the Accursed##60009 |goto 32.1,33.2
|tip Arcane Resonance charges random players with Arcane Resonance, which deals 30,000 Arcane damage to all other players within 6 yards, amplfying the damage by 30,000.
|tip Arcane Shock hits the targeted player for 29,000 Arcane damage every 2 seconds for 20 seconds.
|tip Chains of Shadow deals Shadow damage to the target, jumping to up to 3 additional targets.
|tip Flaming Spear sears the flesh of a player, inflicting normal weapon damage plus 30,000 Fire damage every 2 seconds for 20 seconds.
|tip Lightning Fists slams a lightning fist into the ground, causing a shockwave that deals damage to players in front of Feng.
|tip Wildfire Spark ignites a random player, causing them to explode after 5 seconds and igniting a wildfire at their location.
_Heroic_
|tip There is one extra phase in heroic difficulty, the Spirit of the Shield.
|tip He will create shadows from random players that will move toward him, if they reach him he will be healed for 10 percent of his max health per.
|confirm
step
map Mogu'shan Vaults/1
path loop off
path	32.2,23.2	32.2,13.2	Mogu'shan Vaults/2 77.6,67.1
path	Mogu'shan Vaults/2 77.7,47.3
Follow the path, clearing trash as you make your way to the second boss, Gara'jal the Spiritbinder. |goto Mogu'shan Vaults/2 77.7,47.3 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Gara'jal the Spiritbinder##60143 |goto 77.0,35.9
|tip Banishment banishes the target to the spirit world.
|tip Final Destination Gara'jal harnesses his great power and rips the souls from all raid members.
|tip Summon Spirit Totem summons a totem that provides a conduit between this world and the spirit world.
|tip Voodoo Doll damage received is duplicated to all other Voodoo Dolls.
|tip If you are doing this on LFR this is the end of wing 1.
|confirm
step
label "Second Wing MSV"
map Mogu'shan Vaults/2
path loop off
path	45.3,34.5	33.8,29.9	33.9,43.0
Follow the path as you make your way towards the next boss. |goto 33.9,43.0 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Mogu'shan Vaults/2
path loop off
path	31.7,69.3	24.2,66.5
Follow this path, clearing trash to the next boss, the Spirit Kings. |goto 24.2,66.5 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_The Spirit Kings_ |goto 18.3,52.0
kill Qiang the Merciless##60709
|tip Annihilate inflicts a total of 1,500,000 damage to players in front of Qiang within melee range.
|tip Flanking Orders calls in a wave of Mogu adds.
|tip Massive Attacks deals a total of 800,000 damage split among all players hit.
|tip Impervious Shield makes Qiang with a shield, making him immune to damage. If damaged while this shield is up, he retaliates, dealing damage to the raid.
kill Subetai the Swift##60710
|tip Pillage affects a random player and all other players within 8 yards of them, reducing damage, healing done and armor by 50%.
|tip Sleight of Hand  damaging Subetai while this is up causes Robbed Blind. Subetai can be stunned during this.
|tip Robbed Blind debuff that reduces the target's damage and healing done by 50% and increasing their Physical damage taken by 50%.
|tip Volley inflicts 92,000-103,000 Physical damage to players in a cone in front of Subetai.
kill Meng the Demented##60708
|tip Cowardice increases Meng's insanity level every 0.5 seconds. Once fully insane he switches personalities. Also reflects a portion of damage back at attacking players.
|tip Crazed increases Meng's insanity level every 0.5 seconds. Once fully insane he switches personalities. Also reflects a portion of damage back at attacking players.
|tip Delirious doubles Meng's sanity gains.
|tip Maddening Shout AoE that deals 63,000-66,000 Shadow damage every 3 seconds and causing players to hate each other. Players regain their sanity after taking 30,000 damage from another raid member.
kill Zian of the Endless Shadow##6070
|tip Charged Shadows inflicts 97,500-102,500 Shadow damage to enemies standing within 8 yards of each other.
|tip Shadow Blast deals 100,000 Shadow damage to enemies within 8 yards of the targeted player.
|tip Undying Shadows creates an Undying Shadow at the targeted area, dealing 30,000 Shadow damage every second to players within 10 yards.
|tip Shield of Darkness is only used in Heroic mode. Any damage dealt to Zian will deal 300,000 Shadow damage to the raid.
|confirm
step
map Mogu'shan Vaults/2
path loop off
path	24.7,69.6	33.3,69.7	27.1,51.6
path	Mogu'shan Vaults/3 61.0,12.4	Mogu'shan Vaults/3 62.0,21.7	Mogu'shan Vaults/3 68.7,26.8
path	Mogu'shan Vaults/3 66.0,41.4	Mogu'shan Vaults/3 57.7,41.4	Mogu'shan Vaults/3 49.2,43.6
path	Mogu'shan Vaults/3 44.5,51.3	Mogu'shan Vaults/3 30.0,51.3
Follow the path, clearing trash as you make your way to the next boss, Elegon. |goto Mogu'shan Vaults/3 30.0,51.3 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Elegon##60410 |goto Mogu'shan Vaults/3 22.7,51.7
|tip Catastrophic Anomaly causes the Engine of Nalak'sha to explode and deal 90,200-100,000 Arcane damage to the raid.
|tip Celestial Breath applies a DoT to players in a cone in front of Elegon that deals Arcane damage.
|tip Draw Power Elegon creates 6 Energy Cores and increasing his damage taken by 10%.
|tip Radiating Energies applies an Arcane DoT to the entire raid.
|tip Unstable Energy occurs if the Empyreal Fosuses are active. Elegon becomes immune to damage and deals 175,000 damage to the raid.
|confirm
step
map Mogu'shan Vaults/3
path loop off
path	45.4,51.5	65.3,41.4	68.7,56.2
Follow the path towards the final boss, the Will of the Emperor. |goto 68.7,56.2 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Will of the Emperor_ |goto 68.6,82.2
To activate Hard Mode destroy the pipes located on the sides of the boss room. |goto 61.1,72.4
The other pipes can be located here |goto 76.0,72.7
To activate Normal mode click Broken Control Console |goto 68.7,67.0
|tip Adds continuously spawn during this fight. They should be killed off while damaging the bosses.
|tip Emeperor's Rage will target a random player and fixate onto them, run away from these if you are fixated.
|tip Emeperor's Courage will target a random player and fixate onto them, these adds will have a shield in front of them preventing all damage, dps must go behind these adds to kill them.
|tip Emeperor's Strength will, once in melee range of a player, cast Energizing Smash stunning anyone in a big circle in front of him, this needs to be avoided.
kill Qin-xi##60399
|tip Stomp inflicts 150,000 Physical damage and stuns nearby enemies for 2 seconds.
kill Jan-xi##60400
|tip Stomp inflicts 150,000 Physical damage and stuns nearby enemies for 2 seconds.
_Heroic_
|tip All adds in heroic difficulty, when killed, will spawn a Spark, this will fixate a random player and if they hit they will deal a large amoutn of damage to the entire raid.
|tip If you are doing this on LFR this is the end of wing 2.
|confirm
step
Congratulations, you have finished the Mogu'shan Vaults raid guide!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Pandaria Raids\\Siege of Orgrimmar",{
mapid=556,
achieveid={8458, 8461, 8459, 8462},
patch='50400',
condition_suggested=function() return level>=35 and level<=37 end,
author="support@zygorguides.com",
description="\nThis guide will walk you through the Siege of Orgrimmar raid.",
},[[
step
Click here if you are doing a normal clear of the instance |next "Normal SoO"
Click here if you are doing LFR wings of the instance |next "LFR SoO Index"
confirm
step
label "LFR SoO Index"
Click here if you are queueing for the First wing of Siege of Orgrimmar (Vale of Eternal Sorrows) |next "First_Wing_SoO"
Click here if you are queueing for the Second wing of Siege of Orgrimmar (Gates of Retribution) |next "Second_Wing_SoO"
Click here if you are queueing for the Third wing of Siege of Orgrimmar (Underhold beneath Orgrimmar) |next "Third_Wing_SoO"
Click here if you are queueing for the Fourth wing of Siege of Orgrimmar (Downfall of Garrosh Hellscream) |next "Fourth_Wing_SoO"
step
label "Normal SoO"
Enter Siege of Orgrimar |goto Vale of Eternal Blossoms/0 73.91,42.21
confirm
step
label "First_Wing_SoO"
map Siege of Orgrimmar/2
path loop off
path	89.3,45.2	79.3,57.3	59.1,49.6
path	48.1,51.1
Follow the path, clearing trash as you make your way to the boss, Immerseus. |goto 48.1,51.1 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Immerseus##71543 |goto 41.8,45.6
|tip Corrosive Blast is a cone attack that deals 585,000-612,000 Shadow damage to the target and additional nearby players. Make sure the tank is the only one in front of Immerseus when this occurs.
|tip Sha Bolt deals 15,000 Shadow damage to all players within 5 yards of the target, also forming a Sha Pool.
|tip Sha Pool summons a swirling pool at multiple players' feet, dealing 10,000 Shadow damage every second for 10 seconds.
|tip Swirl creates moving void zones that deal move towards players, dealing damage every second. Immerseus then faces a random direction, rotating half-way around the room and casting a large torrent that deals 60,000 Shadow damage per second.
|tip Adds spawn throughout the fight, they should be killed when they appear.
|confirm
step
map Siege of Orgrimmar/2
path loop off
path	31.7,45.4	16.8,44.9	11.7,52.7
path	11.8,69.6
Follow the path, clearing trash as you make your way to the next boss, the Fallen Protectors. |goto 11.8,69.6 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Fallen Protectors_ |goto Siege of Orgrimmar/1 27.0,18.0
kill Rook Stonetoe##71475
|tip Vengeful Strikes is a cone that stuns all affected targets and deals 180,000 damage twice every second for 3 seconds. Make sure the tank is the only one in front of him when this occurs.
|tip Corrupted Brew inflicts 115,000-132,000 Shadow damage to players within 5 yards of the target and reducing their movement speeds by 50%.
|tip Corruption Kick spins rapidly in a circle, rooting himself in place dealing 117,000-125,000 Physical damage to targets within 10 yards every second for 4 seconds and applying a DoT that deals 70,000 Shadow damage every 2 seconds for 6 seconds.
kill He Softfoot##71479
|tip Shadowstep applies a DoT to the target that deals 80,000 Physical damage every 2 seconds.
|tip Instant Poison deals an additional 73,000-77,000 additional Nature damage on a successful melee attack. This effect has a 3 second cooldown.
|tip Noxious Poison causes successful melee attacks to create pools of poison that deal 85,000 Nature damage every second. This effect has a 3 second cooldown.
|tip Gouge stuns the target for 4 seconds if they are facing Softfoot.
kill Sun Tenderheart##71480
|tip Sha Sear deals Shadow damage every second to the target and all players within 5 yards around them.
|tip Shadow Word: Bane debuff that deals 100.000 Shadow damage every 3 seconds for 18 seconds. Each time it deals damage it will jump to an additional target, jumping up to 3 times.
|tip Calamity deals damage to the entire raid, hitting for 30% of each player's maximum health.
|tip Whenever one of the three bosses reach 66% or 33% health they will summon adds to attack the raid. These should be killed off when they appear.
|confirm
step
map Siege of Orgrimmar/1
path loop off
path	33.8,19.0	36.3,30.2	40.3,40.0
path	41.9,44.8	45.5,60.0	43.0,70.5
path	Siege of Orgrimmar/3 56.7,30.2	Siege of Orgrimmar/3 70.3,35.9	Siege of Orgrimmar/3 70.2,54.1
Follow the path, clearing trash as you make your way to the next boss, Norushen. |goto Siege of Orgrimmar/3 70.2,54.1 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Norushen##72276 |goto 54.2,59.2
|tip Corruption is applied to the raid and has a unique bar for each player. Increased Corruption reduces the player's damage dealt to the boss. This can be cleansed by using a Purifying Light orb at the edge of the room, which takes the player to a unique, role-specific solo phase.
|tip Adds will spawn throughout the fight, they should be killed as soon as they appear. Killing these, however, form void zones that increase players' corruption.
|tip Self Doubt increases the damage the target takes from by next Unleashed Anger by 40%.
|tip Unleashed Anger deals 400,000 Physical damage to the target.
confirm
step
map Siege of Orgrimmar/3
path loop off
path	46.2,61.8	32.0,80.5	21.6,71.7
path	27.6,54.3
Follow the path, clearing trash as you make your way to the boss, the Sha of Pride. |goto 27.6,54.3 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Sha of Pride##71734 |goto 29.5,67.2
|tip Pride is the main mechanic of this fight, each player has a unique bar. Every 60 seconds Sha of Pride uses Swelling Pride, which causes a raide-wide effect based on each player's level of Pride.
|tip Bursting Pride: 25-49 Pride forms Sha energy at the target's location and explodes after 3 seconds, dealing 300,000 Shadow damage to all players within 4 yards.
|tip Projection: 50-74 Pride causes a projection to appear at a nearby location from the target, dealing 225,000 Shadow damage to all players after 8 seconds unless the targeted player is standing within it.
|tip Aura of Pride: 75-99 Pride creates an aura around the target, inflicting 250,000 Shadow damage to other nearby players within 4.5 yards every second.
|tip Overcome: 100 Pride players become mind controlled and attack other raid members, increasing their damage and healing by 50%. If another Swelling Pride is cast while mind controlled, the players are mind controlled for the rest of the fight.
|tip Wounded Pride applies a debuff to the target that causes them to gain 5 Pride whenever they take melee damage from the boss.
|tip Self-Reflection causes 5 players to spawn a reflection of themselves, creating 5 Reflection adds.
|tip Unleashed occurs when Sha of Pride reaches 30% health. It deals 245,000 Shadow damage to the raid every 10 seconds for the rest of the fight. Kill the Sha of Pride as fast as possible to avoid death.
|tip If you are doing this on LFR this is the end of wing 1.
confirm
step
clicknpc Portal to Orgrimmar##103191 |goto Siege of Orgrimmar/3 23.2,81.9
Then talk to the Leader on your respected boat to open a Minor Portal
click Minor Portal##221522
confirm
step
label "Second_Wing_SoO"
map Siege of Orgrimmar/4
path loop off
path	84.0,28.6	76.7,30.8	79.8,38.5
path	81.4,40.7	81.6,48.8
Follow the path, destroying cannons along the beach. |goto 81.6,48.8 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Lady Jaina Proudmoore##72302 |goto 77.0,29.3
Tell her" By your command."
This will start the first boss fight, make sure you are ready.
confirm
step
You will need to split your group into two, one group will need to clear the towers, and then use the two turrets on top of them to shoot down Galakras.
kill Galakras##72249 |goto 77.2,29.6
|tip Pulsing Flames deals 30,000 Fire damage. Each pulse increases Fire damage taken by 3%.
confirm
step
map Siege of Orgrimmar/4
path loop off
path	69.3,33.0	59.4,37.4	55.1,54.9
path	44.5,68.9	35.1,70.9	33.6,53.6
Follow the path to the next boss, the Iron Juggernaut. |goto 33.6,53.6 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Iron Juggernaut##71466 |goto 32.9,48.5
|tip Shock Pulse releases a seismic eruption that knocks all nearby players back and deals 73,000-76,000 Nature damage.
|tip Seismic Activity causes an earthquake that deals 40,000 Nature damage every second.
|tip Ignite Armor deals 30,000 Fire damage every second and increases Fire damage they take by 10% for 30 seconds.
|tip Flame Vents  deals 300,000 Fire damage in a cone in front of the boss. Make sure the tank is the only one in front of the Iron Juggernaut when this occurs.
|tip Explosive Tar summons tar at the targeted location that deals 20,000 Nature damage every second and reduces movement speed by 30%.
confirm
step
map Siege of Orgrimmar/4
path loop off
path	Siege of Orgrimmar/4 30.5,36.0	Siege of Orgrimmar/4 31.1,29.6	Siege of Orgrimmar/4 34.8,22.7
path	Siege of Orgrimmar/5 51.4,75.2	Siege of Orgrimmar/5 52.1,64.0	Siege of Orgrimmar/5 49.0,66.6
path	Siege of Orgrimmar/5 47.9,71.7
Follow the path, clearing trash at each point around the next boss, the Kor'kron Dark Shaman. |goto Siege of Orgrimmar/5 47.9,71.7 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Kor'kron Dark Shaman_ |goto 48.4,64.3
|tip The bosses are inside the building here, and will need to be pulled outside. A Hunter/Rogue can aggro them and then Feign Death/ Vanish to do this.
kill Earthbreaker Haromm##71859
|tip Froststorm Strike deals 300,000 Frost damage and increases damage taken from this attack by 25% for 30 seconds.
|tip Toxic Mist creates a toxic pool that deals 80,000 Nature damage every 3 seconds.
|tip Foul Stream deals 300,000 Nature damage to all players in a line in front of Haromm.
|tip Ashen Wall summons Ash Elementals to attack the raid. They automatically die after a set amount of time.
kill Wavebinder Kardris##71858
|tip Toxic Storm creates a storm that deals 300,000 Nature damage to players within 9 yards every 2 seconds. Also sometimes creates toxic tornadoes.
|tip Foul Geyser creates water that deals 300,000 Nature damage every 0.5 seconds for 8 seconds to players within 4 yards of the area.
|tip Falling Ash summons ash to fall on the targeted area, dealing 999,999 Fire damage to all players within 17 yards and 300,000 Fire damage at the moment of impact.
confirm
step
map Siege of Orgrimmar/5
path loop off
path	51.4,60.7	51.8,48.4	54.2,47.6
path	61.2,43.2	60.8,33.0	55.8,28.9
path	Siege of Orgrimmar/6 67.2,36.2	Siege of Orgrimmar/6 67.7,50.8	Siege of Orgrimmar/7 41.5,28.3
path	Siege of Orgrimmar/7 53.0,56.4
Follow the path, clearing trash as you make your way to the boss, General Nazgrim. |goto Siege of Orgrimmar/7 53.0,56.4 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill General Nazgrim##71515 |goto Siege of Orgrimmar/7 65.2,73.5
|tip Battle Stance generates 1 Rage per seconds.
|tip Berserker Stance Nazgrim deals extra damage, but also takes extra damage.
|tip Defensive Stance reduces his damage taken, and increases Rage generated. DPS should stop damaging Nazgrim when he is in this stance.
|tip Sundering Blow deals 600,000 Physical damage and reduces the target's armor by 10% for 30 seconds.
|tip Bonecracke_ reduces the target's maximum health by 10% and causes them to bleed for 40,000 damage every second.
|tip Heroic Shockwave deals 300,000 Physical damage to players within 10 yards of the targeted area.
|tip Kor'kron Banner summons a banner that causes Nazgrim's allies to generate additional Rage for him.
|tip War Song deals damage to the entire raid, equal to 50% of each player's maximum health.
|tip Ravager Nazgrim throws his sword, dealing 370,000-430,000 damage to players within 6 yards every second and granting Nazgrim 5 Rage for each player hit.
|tip If you are doing this on LFR this is the end of wing 2.
confirm
step
label "Third_Wing_SoO"
map Siege of Orgrimmar/8
path loop off
path	20.4,66.3	23.2,60.9	28.3,60.6
path	34.0,59.3	38.4,57.5	41.4,62.9
path	51.3,61.1	57.2,55.5	53.4,66.1
path	47.5,55.3	44.2,48.0
Follow the path, clearing trash as you make your way to the first boss, Malkorok. |goto 44.2,48.0 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Malkorok##71454 |goto 41.6,42.3
|tip Ancient Miasma is cast while Malkorok's energy builds up to 100. It converts all healing to absorption shields and deals 30,000 Shadow damage to the raid every 2 seconds.
|tip Seismic Slam deals 500,000 damage in a 5 yard area around a random player, knocking all affected players into the air.
|tip Arcing Smash deals 600,000 damage to all players in a cone. Make sure the tank is the only one in front of Malkorok when this occurs.
|tip Imploding Energy creates pools of energy that deal 450,000 Shadow damage after 4 seconds to players within 5 yards. If no players are damaged by the initial explosion, it instead deals 510,000 Shadow damage to the entire raid.
|tip Breath of Y'sharrj causes the areas recently hit by Arcing Smash/Seismic Slam to explode, dealing 1,200,000 Shadow damage.
|tip Blood Rage causes Malkorok's attack to now deal 1,800,000 total Physical damage, split between all players hit by the cone.
|tip Displaced Energy deals 250,000 Shadow damage to the target every 3 seconds for 9 seconds. Upon expiring, it explodes and deals an additional 450,000 Shadow damage to all players within 8 yards.
confirm
step
map Siege of Orgrimmar/8
path loop off
path	36.9,31.7	31.6,16.9	37.8,12.1
path	42.7,23.4	53.9,30.0	61.6,23.5
path	67.8,32.4	78.0,55.9	78.3,73.6
path	Siege of Orgrimmar/9 55.4,26.0
Follow the path, clearing trash as you make your way to the next boss, the Spoils of Pandaria. |goto Siege of Orgrimmar/9 55.4,26.0 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Spoils of Pandaria##71889 |goto 52.7,29.2
|tip The objective of this fight is to open all of the boxes in the rooms before the timer runs out. Opening a box spawns a group of adds that must be killed.
_Mantid Adds_
|tip Commanders are kill priority. Avoid the tornadoes they spawn and kill off priests.
_Mogu Adds_
|tip Statue are kill priority, but can be left if LFR. One person should stand in the beams they cast. Dispell Ritualists.
confirm
step
map Siege of Orgrimmar/9
path loop off
path	41.5,40.2	37.4,51.4	40.5,57.9
path	46.3,70.7	46.9,76.2
Follow the path, clearing trash around the boss, Thok the Bloodthirsty. |goto 46.9,76.2 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Thok the Bloodthirsty##71529 |goto 51.3,82.1
|tip Acid Breath inflicts 485,000-512,00 Nature damage in a frontal cone. Make sure the tank is the only one in front of Thok when this occurs.
|tip Blood Frenzy is a buff that slowly increases Thok's damage and movement speed.
|tip Deafening Screech inflicts 243,000-255,000 Physical damage to the raid and interrupting spellcasting for 2 seconds.
|tip Fearsome Roar deals 200,000 Physical damage in a frontal cone and increasing damage taken by those affected by 25%. Make sure the tank is the only one in front of Thok when this occurs.
|tip Freezing Breath deals 200,000 Frost damage in a frontal cone. After 5 stacks the target will be frozen solid in a tomb of ice and stunned.
|tip Mending heals Thok for 8% of his maximum health.
|tip Panic deals 200,000 damage in a frontal cone.
|tip Scorching Breath deals 200,000 Fire damage in a frontal cone.
|tip Tail Lash deals 200,000 damage to players behind Thok, also stunning them for 2 seconds.
|tip If you are doing this on LFR this is the end of wing 3.
confirm
step
map Siege of Orgrimmar/9
path loop off
path	46.9,76.2	46.3,70.7	40.5,57.9
path	37.4,51.4	41.5,40.2	64.8,17.0
Make your way back to the last room you came from
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
label "Fourth_Wing_SoO"
map Siege of Orgrimmar/8
path loop off
path	73.0,43.4	82.2,58.6	89.9,62.0
path	Siege of Orgrimmar/10 36.4,69.8
Follow the path, clearing trash as you make your way to the boss, Siegecrafter Blackfuse. |goto Siege of Orgrimmar/10 36.4,69.8 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Kill the waves of enemies that spawn here. |goto Siege of Orgrimmar/10 40.3,65.7
confirm
step
Jump onto this large pipe once all the waves of enemies have been defeated. |goto Siege of Orgrimmar/10 46.3,59.5 < 5
confirm
step
kill Siegecrafter Blackfuse##71504 |goto 58.7,46.5
|tip It helps if 2 teams are assigned to kill the Disassembled Weapon adds that spawn every 30 seconds. The groups will have to alternate between spawns.
|tip If a Weapon add is not killed before they reach the northeastern wall, Blackfuse will gain Energized Defensive Matrix.
|tip Energized Defense Matrix reduces Blackfuse's damage taken by 90%.
|tip Matter Purification Beam inflicts 475,000 Fire damage.
|tip Launch Sawblade fires a blade at the target, knocking away all players in its path upon firing and dealing 41,000-48,000 damage every second.
|tip Electrostatic Charge deals 250,000 Nature damage and increases the target's damage taken from Electrostatic Charge by 100% and Reactive Armor by 200%.
|tip Reactive Armor reduces damage taken by 80%. Adds that have this buff should be kited through AoEs on the ground, as they still take normal damage from environmental effects.
|tip Protective Frenzy is a buff that increases damage by 100%, health by 250% and granting immunity to immobolize, stun, and slow effects.
|tip Automatic Repair Beam_ Blackfuse heals one of his allies for 5% of their maximum health every 3 seconds. Because of this, adds should be tanked at least 35 yards away from him.
confirm
step
Jump onto this large pipe |goto Siege of Orgrimmar/10 50.2,55.6 <5 |c
step
map Siege of Orgrimmar/10
path loop off
path	31.1,74.6	24.7,81.2	Siege of Orgrimmar/8 87.6,76.0
path	Siege of Orgrimmar/11 35.6,21.3	Siege of Orgrimmar/11 48.1,13.1	Siege of Orgrimmar/11 57.1,13.0
path	Siege of Orgrimmar/11 63.1,24.5	Siege of Orgrimmar/11 62.2,32.6	Siege of Orgrimmar/11 66.5,33.2
path	Siege of Orgrimmar/11 69.5,28.0	Siege of Orgrimmar/11 69.1,38.2
Follow the path, clearing trash as you make your way to the next boss, the Paragons of the Klaxxi. |goto 69.1,38.2 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
The Paragons join the fight in a certain order, as listed. Upon killing a Paragon, the others return to 100% health. |goto 68.3,35.3
kill Rik'kal the Dissector##71158, Skeer the Bloodseeker##71152, Hisek the Swarmkeeper##71153
|tip Injection deals 40,000 Nature damage every second for 12 seconds.
|tip Mutate turns the target into a mantic scorpion. The transformation deals 150,000 Fire damage to all nearby players within 3 yards and an additional 50,000 Fire damage every second to the original target.
|tip Bloodletting causes Skeer's target to bleed, flinging globules of their blood onto the floor around the room that move to a nearby Paragon and heal them.
|tip Multi-Shot Hisek shoots at 3 players at once.
|tip Rapid Fire Hisek fires out multiple Sonic Pulses that deal 300,000 Physical damage every second to all players caught in their path.
kill Ka'roz the Locust##71154
|tip Caustic Amber AoE that deals 138,000-160,000 Nature damage every second.
kill Korven the Prime##71155
|tip Encase in Amber encased one of Koven's allies in an amber shield, absorbing all damage for 10 seconds. If the shield is not destroyed in this time that ally's health is restored to 100%.
|tip Shield Bash is a 6 second stun, followed by a frontal cleave
kill Iyyokuk the Lucid##71160
|tip Insane Calculation: Fiery Edge fires a beam of fire between multiple players, dealing increased damage the closer the targets are to each other.
kill Xaril the Poisoned Mind##71157
|tip Caustic Blood deals 500,000 Nature damage every second and stacks up to 10 times.
|tip Tenderizing Strikes is a debuff that increases the target's damage taken from Kil'ruk the Wind-Reaver.
kill Kaz'tik the Manipulator##71156
|tip Mesmerize forces the targeted player to walk toward a nearby Hungry Kunchong.
kill Kil'ruk the Wind-Reaver##71161
|tip Death From Above deals damageto all players within 8 yards.
confirm
step
map Siege of Orgrimmar/11
path loop off
path	72.6,45.3	77.4,56.2	76.7,71.4
path	68.2,81.4	64.9,92.6	Siege of Orgrimmar/12 51.2,45.9
Follow the path, clearing trash as you make your way to the boss, Garrosh Hellscream. |goto Siege of Orgrimmar/12 51.2,45.9 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Garrosh Hellscream##71865 |goto Siege of Orgrimmar/12 50.1,60.5
|tip An Engineer add spawns on both sides of the room after Garrosh throws a whirling axe at the raid with Desecrate. They cast Iron Star, which will release a large rolling wheel into the room that kills any raid members it crushes. A DPS should be assigned to kill an Engineer while the raid stays protected on the safe side of the room, free of the Iron Star wheel.
|tip In between main phases the raid will get teleported to 1 of 3 possible zones. Kill the adds in the zone and rush Garrosh, continuing to damage him as much as possible.
|tip Desecrate Garrosh throws a whirling axe at the raid, dealing damage on impact and spawning a void zone that deals 75,000 damage every second to all players inside it. Destroying the axe will remove the void zone.
|tip Whirling Corruption deals 105,000 Shadow damage to nearby players every 0.5 seconds. The damage decreases the farther away you are from Garrosh.
|tip Touch of Y'Shaarj mind controls the targeted player, making them attack other raid members. Bringing them down to 20% health will break the mind control.
|tip In Phase 3 Garrosh gains Heart of the Y'Shaarj and takes on a Sha-like appearance. The axes from Desecrate can no longer be destroyed and should simply be avoided while continuing to damage Garrosh. Kill him as fast as possible to avoid death.
confirm
step
Click on Fading Breah
accept The Last Gasp of Y'Shaarj##33147 |goto Siege of Orgrimmar/12 47.8,65.7
only if not completedq(33147)
step
talk Lorewalker Cho##73318
turnin The Last Gasp of Y'Shaarj##33147 |goto Siege of Orgrimmar/12 50.2,56.9
accept Why Do We Fight?##33138 |goto Siege of Orgrimmar/12 50.2,56.9
only if not completedq(33138)
step
talk Lorewalker Cho##73136
turnin Why Do We Fight?##33138 |goto Vale of Eternal Blossoms/0 67.4,45.7
only if not completedq(33138)
step
Congratulations, you have finished the Siege of Orgrimmar raid and witnessed the downfall of Garrosh Hellscream!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Pandaria Raids\\Terrace of Endless Spring",{
mapid=456,
achieveid={6689},
patch='50004',
condition_suggested=function() return level>=35 and level<=37 end,
author="support@zygorguides.com",
description="\nThis guide will walk you through the Terrace of Endless Spring raid.",
},[[
step
Click here if you are doing a normal clear of Terrace of Endless Spring |next "Normal ToES"
Click here if you are doing LFR wing of Terrace of Endless Spring |next "LFR Index ToES"
confirm
step
label "LFR Index ToES"
talk Lorewalker Han##80633
Queue for Terrace of Endless Spring
Once inside click here to continue |next "ToES begin"
confirm
step
label "Normal ToES"
Enter Terrace of Endless Spring |goto The Veiled Stair/0 48.46,61.43 < 5
confirm
step
label "ToES begin"
map Terrace of Endless Spring
path loop off
path	80.5,38.4	76.1,59.9
Follow the path, clearing trash around the first boss, the Protectors of the Endless. |goto 76.1,59.9 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Protectors of the Endless_ |goto 78.5,48.9
kill Elder Regail##60585
|tip Lightning Bolt inflicts 125,000-145,000 Nature damage to the targeted player.
|tip Lightning Prison stuns 2 players and deals 28,000 Nature damage to all players within 7 yards.
|tip Lightning Storm is an AoE, starting from Regail's location and pulsing outward in 3 pulses, dealing high Nature damage.
kill Elder Asani##60586
|tip Water Bolt deals 100,000 Nature damage to the target and all additional players within 3 yards of that target.
|tip Cleansing Waters is a buff that heals Asani's allies and can be dispelled.
|tip Corrupted Waters spawns an orb in the center of the room, increasing the Protectors' attack and casting speeds by 50%. When destroyed it increases players' attack and casting speed by 25% for 20 seconds when standing in the inner circle.
kill Protector Kaolan##60583
|tip Touch of Sha occurs if you kill Kaolan last. It deals 38,000 Shadow damage every 3 seconds to a targeted player for the entire fight.
|tip Defiled Ground are summoned under the tank, dealing 110,000 Shadow damage every second and does not despawn.
|tip Expel Corruption is an AoE that deals up to 195,000 Shadow damage to all players within 30 yards. Damage is decreased the further away a player is from Kaolan when this occurs.
|confirm
step
kill Tsulong##62442 |goto 78.5,48.9
_Night Phases_
|tip Damage Tsulong as much as possible in these phases.
|tip Shadow Breath frontal cone ability, dealing 240,000 Shadow damage and increasing Shadow damage taken by 100% for 30 seconds.
|tip Dread Shadows is a stacking DoT that deals 30,000 Shadow damage and increases damage from Dread Shadows by 10% per stack. This is removed by running through a Sunbeam Tsulong creates.
|tip Nightmares inflicts 110,000 Shadow damage and Fears all players within 8 yards in the targeted area.
_Day Phases_
|tip Heal Tsulong as much as possible in these phases. He is friendly, and helps kill the Sha that spawn by using Sun Breath. This is a cone that also restores 25% maximum mana to every player in front of him.
|tip During these phases, Tsulong is not attackable and summons waves of Sha to attack the raid.
|tip Embodied Terror: Sha with large amounts of health. Terrorize deals high damage and should be dispelled.
|tip Fright Spawn: spawn when an Embodied Terror is killed. Fright deals high damage and a Fear to players within 30 yards.
|tip Unstable Sha: spawn in the outer areas of the room and move toward Tsulong. If they reach Tsulong they explode.
|confirm
step
kill Lei Shi##62983 |goto 58.6,48.6
|tip Hide Lei Shi vanishes, hiding from players. AoE attacks can hit her to make her reveal herself.
|tip Get Away is an AoE that pushes the raid back, away from Lei Shi and deals 90,000 Shadow damage. Running towards Lei Shi halves the damage it deals every second.
|tip Protect Lei Shi shields herself, becoming immune to damage and summoning elementals to attack the raid. Ends after 1 elemental is killed.
|tip Spray water bursts from the ground at the targeted player's location, dealing 110,000 Frost damage to all players within 2.5 yards and increasing their Frost damage taken by 16% for 10 seconds.
|confirm
step
kill Sha of Fear##60999 |goto 39.2,48.6
|tip Breath of Fear occurs about every 30 seconds. when Sha of Fear gains a full energy bar. It deals 500,000 Shadow damage and a Fear to all players. Those standing in the glowing light spot in the middle of the room will be unaffected by this.
|tip Terror Spawn group of 2 adds that spawn. They can only be damaged from behind.
|tip Eerie Skull deals 74,000-90,000 Shadow damage to a random raid member.
|tip Ominous Cackle occurs every 90 seconds. It takes 5 random players to an outer shrine where they must kill the corrupted guardian, granting Fearless.
|tip Fearless is a buff applied to players killing the corrupted guardian in one of the outer shrines. It increases damage and healing done by 60%, makes you immune to Breath of Fear, and greatly increases movement speed.
_Heroic_
|tip Once Sha of Fear reaches 66 percent health he will go into his final heroic phase.
|tip During this phase an ability called Pure Light will come into play, this will immobilize the player targeted, to avoid harmful abilities you must transfer this Orb to another safe positioned player.
|tip He will cast Submerge, going underground and then emerging under a random raid member, avoid being hit by this.
|tip He will cast Implaceable Strike dealing damage to all players within a cone in front of him periodically, avoid being hit by this.
|tip He will summon adds called Dread Spawns, these will fixate and run toward the players with the Pure Light, these adds need to be killed before reaching said players.
|tip If the Dread Spawns reach melee range on their fixated target they will die instantly no matter what, players with the orb can transfer it to another player to refixate the adds on to them.
|confirm
step
Congratulations, you have finished the Terrace of Endless Spring raid!
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Pandaria Raids\\Throne of Thunder",{
mapid=508,
achieveid={8070, 8071, 8072},
patch='50200',
condition_suggested=function() return level>=35 and level<=37 end,
author="support@zygorguides.com",
description="\nThis guide will walk you through the Throne of Thunder raid.",
},[[
step
Click here if you are doing a normal clear of the instance |next "Normal ToT"
Click here if you are doing LFR wings of this instance |next "LFR ToT Index"
confirm
step
label "LFR ToT Index"
talk Lorewalker Han##80633
Click here if you are queueing for the First wing of Throne of Thunder (Last Stand of the Zandalari) |next "First_Wing_ToT"
Click here if you are queueing for the Second wing of Throne of Thunder (Forgotten Depths beneath the Throne of Thunder) |next "Second_Wing_ToT"
Click here if you are queueing for the Third wing of Throne of Thunder (Twisted Mogu Halls of Flesh-Shaping) |next "Third_Wing_ToT"
Click here if you are queueing for the Fourth wing of Throne of Thunder (Lei Shen's Pinnacle of Storms) |next "Fourth_Wing_ToT"
confirm
step
label "Normal ToT"
Enter Throne of Thunder |goto Isle of Thunder/0 63.61,32.44 < 5
confirm
step
label "First_Wing_ToT"
map Throne of Thunder/1
path loop off
path	34.9,23.7	39.8,23.8	46.2,25.8
path	53.4,25.8
Follow the path, clearing trash as you make your way to the first boss, Jin'rokh the Breaker. |goto 53.4,25.8 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Jin'rokh the Breaker##69465 |goto 59.5,25.8
|tip Thundering Throw is usually used on the tank, throwing them at a Mogu statue, inflicting 250,000 Physical damage and dealing 200,000 Nature damage and a 5 second stun to players within an 8 yard area.
|tip Conductive Water is a pool formed at the base of broken statues. Standing in the water increases healing by 60% and damage by 40%, but also increases damage taken from Jin'rokh's abilities by 50%.
|tip Lightning Storm deals 70,000 damage to the raid every second for 15 seconds. Also turns Conductive Water to Electrified Water, quickly killing anyone still standing in it.
|tip Static Burst deals 95,000-105,000 Nature damage to the raid. After 3 seconds it applies 10 stacks of Static Wounds to his current target.
|tip Static Wound is a debuff that deals 20,000 Nature damage per stack to the affected player each time he takes melee damage. Also deals a third of this damage to nearby players.
|tip Focused Lightning occurs on a healer or ranged DPS. Lightning moves towards the targeted player and deals 175,000 Nature damage upon reaching them, also damaging all other players within 8 yards of the initial explosion.
|confirm
step
map Throne of Thunder/1
path loop off
path	59.5,25.8	59.5,43.6	59.5,53.5
path	59.6,74.9	62.1,79.8	76.0,79.6
path	83.1,79.6
Follow the path, clearing trash as you make your way to the next boss, Horridon. |goto 83.1,79.6 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Waves of adds are spawned throughout this fight. It is recommended the raid kills them and then goes back to attacking Horridon.
When a Dinomancer dies it drops an Orb of Control. Clicking this will destroy the gate and stop the adds spawning for a short time.
kill Horridon##68476 |goto 26.8,78.7
|tip Triple Puncture deals 370,000-430,000 damage to the target and increases their damage taken from Triple Puncture by 10% per stack. Lasts 90 seconds.
|tip Double Swipe is a frontal and rear cone attack. Avoid this by standing at Horridon's sides.
|tip Charge is used on random players. Horridon charges at the target, immediately follwed by Double Swipe.
|tip When Horridon is at 30% health he spawns War-God Jalak. Kill them both as fast as possible to avoid death.
_Heroic_
|tip In Heroic difficulty Horridon will spawn small Pink adds that will fixate on a random raid member, only the member that is fixated can see the add.
|tip If this add hits the fixated target it will deal a damage, to prevent damage the player must run away from the fixate or periodically hit it with any ability, this will knock the add back a little bit.
|confirm
step
map Throne of Thunder/2
path loop off
path	27.2,68.4	27.1,47.4	27.2,35.4
path	27.2,26.0	33.5,19.4	38.0,19.4
path	45.1,14.1
Follow the path, clearing trash as you make your way to the final boss, the Council of Elders. |goto 45.1,14.1 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Council of Elders_ |goto 50.1,18.4
kill Kazra'jin##69134
|tip Discharge Kazra'jin stuns himself for 20 seconds, reflecting 5% damage back to attackers.
|tip Overload Kazra'jin stuns himself for 20 seconds, reflecting 40% damage back to atteckers.
|tip Reckless Charge deals 90,000 Nature damage to the target and all players inbetween and knocking back all players within 5 yards of where he lands.
kill Sul the Sandcrawler##69078
|tip Quicksand spawns a pool of quicksand under the targeted player's feet, rooting them in place and dealing Nature damage every second.
|tip Sand Bolt inflicts 150,000-175,000 Nature damage to the target and all players within 5 yards of that target.
|tip Sandstorm summons a sandstorm that deals 38,500 damage every second for 8 seconds.
kill Frost King Malakk##69131
|tip Biting Cold blasts the target with ice, inflicting 95,000 Frost damage.
|tip Frostbite deals 110,000 Frost damage and applies 5 stacks of Frostbite.
|tip Frigid Assault imbues Malakk's axes with ice, dealing an additional 75,000 damage to his target and stunning them if it reaches 15 stacks.
kill High Priestess Mar'li##69132
|tip Blessed Loa Spirit summons a Blessed Loa Spirit add that moves towards the council member with the lowest health. If reached, they are healed for 5% of their maximum health.
|tip Shadowed Loa Spirit summons a Shadowed Loa Spirit that follows a random player. If it gets within 6 yards of them it instantly kills them.
|tip Wrath of the Loa hits the targeted player for 150,000-160,000 damage.
|tip Twisted Fate links 2 players' souls together, dealing 250,000 Shadow damage every 3 seconds. The damage dealt is reduces the further apart the players are.
|tip If you are doing this on LFR this is the end of wing 1.
|confirm
step
label "Second_Wing_ToT"
map Throne of Thunder/3
path loop off
path	20.3,82.0	24.6,82.5
Follow the path, clearing trash as you make your way to the first boss, Tortos. |goto 24.6,82.5 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Tortos##67977 |goto 31.5,82.0
|tip Call of Tortos summons smaller turtle adds to attack the raid. They spin around, dealing damage and a knockback to those near them.
|tip Furious Stone Breath deals 150,000 Nature damage to the raid every 0.5 seconds for 4.5 seconds. Can be interrupted by kicking shells from dead turtle adds.
|tip Quake Stomp  Tortos stuns the raid for 1 second, inflicting damage equal to 65% of their maximum health. This also increases the requency of Rockfalls for 8 seconds.
|tip Snapping Bite Tortos snaps his jaws closed, dealing 510,000-540,000 damage.
_Heroic_
|tip Humming Crystals will spawn around the room, damaging these will apply a damage absorb you must have this absorb before Quack Stomp comes out.
|tip Quack Stomp does 100 percent damage to all players in the raid without the damage absorb from the Humming Crystals you will die unless you have a cooldown of your own that can stop Physical damage.
|confirm
step
map Throne of Thunder/3
path loop off
path	32.8,80.9	33.1,72.3	33.7,62.5
path	41.7,58.7	38.3,48.6	31.8,45.2
path	43.3,16.9	52.5,40.0	58.9,50.5
path	55.2,71.0	63.4,57.5	69.6,48.8
path	70.2,37.7
Follow the path, clearing trash as you make your way to the next boss, Magaera. |goto 70.2,37.7 < 5
|tip You must click the 3 gongs along this path to summon Magaera.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Magaera_ |goto 72.1,25.3
The only way to damage Magaera is to kill the Flaming, Frozen, and Venemous Heads that spawn.
kill Flaming Head##70212
|tip Cinders_targets a player, dealing 105,000 Fire damage and an additional 75,00 Fire damage every second for 30 seconds. If removed, a pool of flames is created, dealing 105,000 Fire damage every second to all players within 5 yards.
|tip Ignite Flesh frontal cone attack that deals 125,000 Fire damage every second for 3 seconds. Also applies a DoT that burns for 30,00 Fire damage every second for 45 seconds.
|tip Magaera's Rage occurs if no player is within melee range. It deals 250,000 Fire damage to all players within 5 yards of the targeted area.
kill Frozen Head##70235
|tip Arctic Freeze frontal cone that deals 125,000 Frost damage every seconds for 3 seconds. Players hit by this also get a debuff that stuns them for 20 seconds if it reaches 5 stacks.
|tip Megaera's Rage occurs if no player is within melee range. It deals 250,000 Frost damage to all players within 5 yards of the targeted area.
|tip Torrent of Ice channels a beam of ice at a player, inflicting 60,000 Frost damage every 0.5 seconds for 8 seconds and slowing movement speed of anyone who touches it.
kill Venemous Head##70247
|tip Rot Armor frontal cone that deals 127,500 Nature damage every second for 3 seconds and increases the damage taken of those affected by 10% for 45 seconds.
|tip Megaera's Rage occurs if no player is within melee range. It deals 250,000 Nature damage to all players within 5 yards of the targeted area.
_Heroic_
|tip There will be one extra head that will spawn in heroic difficulty, the Arcane Head.
|tip It will summon adds that will stun players, this stun is a channel and can be interrupted.
|tip Diffusion is applied to players that get hit by its breathe attack, this will redirect healing to other players without this debuff.
|confirm
step
map Throne of Thunder/3
path loop off
path	66.8,39.2	66.4,43.4	72.7,53.1
path	Throne of Thunder/4 22.0,35.3	Throne of Thunder/4 15.6,55.5	Throne of Thunder/4 23.5,64.4
path	Throne of Thunder/4 31.6,65.8	Throne of Thunder/4 40.4,74.6	Throne of Thunder/4 42.8,76.6
path	Throne of Thunder/4 43.4,84.5	Throne of Thunder/4 54.3,90.0	Throne of Thunder/4 65.9,86.1
path	Throne of Thunder/4 72.0,81.5	Throne of Thunder/4 74.9,67.3	Throne of Thunder/4 62.7,57.5
path	Throne of Thunder/4 53.8,52.0
Follow the path, clearing trash as you make your way to the final boss, Ji-Kun. |goto 53.8,52.0 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Ji-Kun##69712 |goto 49.7,41.6
|tip Caw Ji-Kun releases concentrated sound waves at multiple players. When they reach their targets they explode and deal 270,000-330,000 damage to all players within 8 yards.
|tip Feed Young summons pools of food for the young, dealing damage to players standing in it.
|tip Down Draft summons a powerful draft of air that pushes players off the platform.
|tip Infected Talons DoT that inflicts 30,000 Nature damage every 3 seconds.
|tip Quils deals 65,000 damage every second to all players.
|tip If you are doing this on LFR this is the end of wing 2.
|confirm
step
Click the Feather of Ji-kun |goto Throne of Thunder/4 43.2,46.5
|tip You will get an extra action ability use this to fly up to the top of the balcony.
Reach the Balcony |goto Throne of Thunder/4 34.5,55.1
confirm
step
label "Third_Wing_ToT"
map Throne of Thunder/5
path loop off
path	77.0,10.6	71.1,12.9	71.2,15.8
path	73.9,20.4	71.4,30.8
Follow the path, clearing trash as you make your way to the first boss, Durumu the Forgotten. |goto 71.4,30.8 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Durumu the Forgotten##68036 |goto 71.1,34.4
|tip Disentigration Beam fires of beam of energy towards the edge of the platform, killing any player it touches.
|tip Arterial Cut applies a bleed DoT to the target.
|tip Gaze deals 50% weapon damage to the entire raid.
|tip Hard Stare deals 135%-165% weapon damage and applies Serious Wound to the target.
|tip Serious Wound debuff that reduces the target's healing received by 10%.
_Heroic_
|tip Wall of Ice will spawn through out the fight making 3 lines of ice blocking players off, these can be attacked and destroyed do so asap.
|tip There will be one extra eye "Evil Eye" these will put a debuff on random players dealing more and more damage to the player until dispelled.
|tip Once dispelled a new debuff will appear summoning Wandering Eyes that will attack random players in the raid.
|confirm
step
map Throne of Thunder/5
path loop off
path	71.1,43.2	70.9,51.2	72.1,61.4
path	71.0,71.5	74.0,77.9	63.6,78.0
path	57.2,78.1
Follow the path, clearing trash as you make your way to the next boss, Primordius. |goto 57.2,78.1 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Primordius##69017 |goto 57.2,78.2
|tip Primordial Strike is a frontal cone. The tank should be the only one in front of Primordius when this occurs.
|tip Malformed Blood is a stacking debuff usually applied to the tank. It deals 20,000 damage per stack every tick.
|tip Each time Primordius' energy reaches 100% he gains a stacking buff that increases damage done by 10% per stack and giving additional abilities.
|tip Erupting Pustules deals 120,000 Nature damage to players within 2.5 yards of the targeted area.
|tip Metabolic Boost increases Primordius' attack speed by 50% and decreases his cooldowns by 50%.
|tip Volatile Pathogen deals 60,000 damage every second for 10 seconds.
|tip Acidic Spines deals 100,000 Nature damage to all players within 5 yards of the Primordius' target.
|tip Caustic Gas is a cone that deals 800,000 total Nature damage split between all players affected.
|tip Ventral Sacs deals 22,000 damage every second to the entire raid.
_Heroic_
|tip Vicious Horrors will spawn, if they attack a player they will deal damage every 3 seconds.
|tip If they get near the boss they will explode dealing damage to the entire raid, try to stop this from happening.
|confirm
step
map Throne of Thunder/5
path loop off
path	50.9,78.0	39.9,78.1	42.8,72.2
path	42.5,61.1
Follow the path, clearing trash as you make your way to the final boss, Dark Animus. |goto 42.5,61.1 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Adds spawn throughout the fight.
|tip Anima Golem: weak mobs, don't require anything special.
|tip Large Anima Golem: needs to be tanked.
|tip Massive Anima Golem should be tanked, has a large frontal cleave.
kill Dark Animus##69427 |goto 43.0,57.1
|tip Touch of the Animus affects a random player, inflicting 30,000 Fire damage every 4 seconds for the rest of the fight.
|tip Anima Font affects a player with Touch of the Animus, causing them to shoot Anima bolts from nearby locations that deal 250,000 Fire damage.
|tip Anima Ring summons spheres in a circle around the taget, moving inward. Players that touch the spheres consume it, increasing melee damage taken by 200% per stack.
|tip Interrupting Jolt deals 400,000 Nature damage and inerrupts the raid's spellcasting.
|tip If you are doing this on LFR this is the end of wing 3.
|confirm
step
label "Fourth_Wing_ToT"
map Throne of Thunder/5
path loop off
path	35.1,43.1	33.3,38.9	33.5,32.5
path	43.7,31.9	46.8,27.5	46.9,18.7
path	Throne of Thunder/6 25.5,64.5
Follow the path, clearing trash as you make your way to the first boss, Iron Qon. |goto Throne of Thunder/6 25.5,64.5 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Iron Qon##68078 |goto Throne of Thunder/6 34.6,58.9
|tip Impale is a stacking debuff that deals normal weapon damage plus 40,000 bleeding damage every 2 seconds.
|tip Rising Anger increases Qon's damage and attack speed by 10%.
|tip Qon throws out lines of ice, fire, and lightning during the fight, avoid standing in these as well as tornadoes and goo.
_Heroic_
|tip Each Iron Qon Quilen flee at 25 percent. Once each of the 3 have fleed they will all come back at the same time.
|confirm
step
map Throne of Thunder/6
path loop off
path	40.1,59.0	62.2,58.9	69.1,51.3
path	73.8,44.3
Follow the path, clearing trash as you make your way to the next boss, the Twin Consorts. |goto 73.8,44.3 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
_Twin Consorts_ |goto Throne of Thunder/6 78.7,38.0
kill Lu'lin <Mistress of Solitude>##68905
|tip Beast of Nightmares summons a Beast of Nightmares add that can only be damaged by Lu'lin's target.
|tip Bloom Moon Lotus summons a Moon Lotus flower, which puts nearby players to sleep for 5 seconds.
|tip Cosmic Barrage deals 175,000 damage every 0.5 seconds for 2 seconds.
kill Suen <Mistress of Anger>##68904
|tip Fan of Flames deals a large amount of damage to the target, also increasing Fire damage they take by 25%.
|tip Blazing Radiance deals 35,000 Fire damage to the raid and increasing their Fire damage taken by 5%.
|tip Flames of Passion Suen leaps at a player, dealing 46,000-54,000 Fire damage and knocking all nearby players back.
|tip Nuclear Inferno deals 100,000 Fire damage every second for 4 seconds. While channeling, her spell deflection and dodge chance are both 100%.
|confirm
step
map Throne of Thunder/6
path loop off
path	84.9,48.2	87.0,57.0	85.0,65.7
path	87.4,74.1
Follow the path, clearing trash as you make your way to the final boss, Lei Shen. |goto 87.4,74.1 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
|goto Throne of Thunder/7 49.8,15.4 |n
Click and use the Displacement Pad here. |goto Throne of Thunder/7 50.7,50.9 <5 |noway |c
step
kill Lei Shen##68397 |goto 50.7,51.0
|tip Overcharge charges the targeted player with lightning, placing a ring of lightning at their feet, with a safe spot in the very center. Players within 5-40 yards take 100,000 Nature damage and are stunned for 3 seconds.
|tip Static Shock places a blue arrow above the targeted player and deals 400,000 total damage after 8 seconds, split between all players within 8 yards of the targeted player.
|tip Bouncing Bolt Lei Shen throws a bolt of lightning across the platform. It creates a blue circle where it lands, spawning an add if a player doesn't stand in the circle in time.
|tip Diffusion Chain deals 75,000 damage to the targeted player, then jumps to nearby players. Each time this hits a player it will also spawn a Diffused Lightning add.
|tip Decapitate usually affects the tank, dealing up to 3,000,000 damage. The damage dealt is decreased the further away the target is from Lei Shen.
|tip Thunderstruck is an AoE that deals 1,000,000 damage to all players in the targeted area. Damage dealt is decreased the further away the area is from Lei Shen.
|tip If you are doing this on LFR this is the end of wing 4.
confirm |next "End ToT"
Click here if you are on Heroic difficulty and want to attempt Ra-den |next "Ra-den"
step
label "Ra-den"
Click and use the Displacement Pad here. |goto Throne of Thunder/7 50.8,51.5 |n
Arrive at Saurok's Creation Pit |goto Throne of Thunder/5 54.4,72.3 < 5 |noway |c
step
map Throne of Thunder/5
path loop off
path	54.4,72.3	56.1,76.1
Follow the stairs down |goto Throne of Thunder/8 52.1,39.9
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Ra-den##69473 |goto Throne of Thunder/8 52.4,81.2
|tip You will have a maximum have 30 attempts to kill this boss per lockout.
_Phase 1_
|tip He will periodically summon 2 orbs, Essence of Vita and Essence of Anima.
|tip You want to always kill the Essence of Vita before it can reach the boss otherwise you will die.
|tip If you get more then one set of orbs you will need cooldowns to mitigate the other Essences DOT.
|tip Adds will periodically spawn and stay up the entire fight if not killed, kill these to avoid unnecessary damage.
_Phase 2_
|tip This phase starts at 40 percent, he will run into the middle and continously cast an aoe.
|tip Orbs will come from the sides, always kill the Corrupted Animas and let the Corrupted Vitas through.
|tip With each Corrupted Vita that gets through the aoe damage get stronger be ready for this.
confirm |next "End ToT"
step
label "End ToT"
Congratulations, you have finished the Throne of Thunder raid!
]])
