local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("DungeonAMOP") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Classic Dungeons\\Blackfathom Deeps")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Classic Dungeons\\Blackrock Depths: Detention Block")
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
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Classic Dungeons\\Dire Maul: Gordock Commons")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Classic Dungeons\\Dire Maul: Warpwood Quarter")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Classic Dungeons\\Gnomeregan")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Classic Dungeons\\Lower Blackrock Spire")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Classic Dungeons\\Maraudon: Earth Song Falls")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Classic Dungeons\\Maraudon: Foulspore Cavern")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Classic Dungeons\\Maraudon: The Wicked Grotto")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Classic Dungeons\\Ragefire Chasm")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Classic Dungeons\\Razorfen Downs")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Classic Dungeons\\Razorfen Kraul")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Classic Dungeons\\Scarlet Halls")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Classic Dungeons\\Scarlet Monastery")
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
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Classic Dungeons\\Shadowfang Keep")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Classic Dungeons\\The Stormwind Stockade")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Classic Dungeons\\Stratholme: Main Gate")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Classic Dungeons\\Stratholme: Service Entrance")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Classic Dungeons\\Sunken Temple")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Classic Dungeons\\Uldaman")
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
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Classic Dungeons\\Zul'Farrak")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Classic Raids\\Blackwing Lair")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Classic Raids\\Molten Core")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Classic Raids\\Ruins of Ahn'Qiraj")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Classic Raids\\Temple of Ahn'Qiraj")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Outland Dungeons\\Auchindoun: Auchenai Crypts")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Outland Dungeons\\Auchindoun: Mana-Tombs")
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
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Outland Dungeons\\Auchindoun: Shadow Labyrinth")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Outland Dungeons\\Caverns of Time: The Black Morass")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Outland Dungeons\\Caverns of Time: Escape from Durnholde Keep")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Outland Dungeons\\Coilfang Reservoir: Slave Pens")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Outland Dungeons\\Coilfang Reservoir: The Steamvault")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Outland Dungeons\\Coilfang Reservoir: Underbog")
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
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Outland Dungeons\\Hellfire Citadel: Hellfire Ramparts")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Outland Dungeons\\Hellfire Citadel: Shattered Halls")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Outland Dungeons\\Magister's Terrace")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Outland Dungeons\\Tempest Keep: The Arcatraz")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Outland Dungeons\\Tempest Keep: Botanica")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Outland Dungeons\\Tempest Keep: The Mechanar")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Outland Raids\\Black Temple")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Outland Raids\\The Eye")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Outland Raids\\Gruul's Lair")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Outland Raids\\Hyjal Summit (Battle for Mount Hyjal)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Outland Raids\\Karazhan")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Outland Raids\\Magtheridon's Lair")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Outland Raids\\Serpentshrine Cavern")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Outland Raids\\Sunwell Plateau")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Northrend Dungeons\\Ahn'kahet: The Old Kingdom")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Northrend Dungeons\\Azjol-Nerub")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Northrend Dungeons\\Caverns of Time: The Culling of Stratholme")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Northrend Dungeons\\Drak'Tharon Keep")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Northrend Dungeons\\Forge of Souls")
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
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Northrend Dungeons\\Halls of Lightning")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Northrend Dungeons\\Halls of Reflection")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Northrend Dungeons\\Halls of Stone")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Northrend Dungeons\\The Nexus")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Northrend Dungeons\\The Oculus")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Northrend Dungeons\\Pit of Saron")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Northrend Dungeons\\Trial of the Champion")
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
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Northrend Dungeons\\Utgarde Keep: Utgarde Pinnacle")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Northrend Dungeons\\The Violet Hold")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Northrend Raids\\The Eye of Eternity")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Northrend Raids\\Icecrown Citadel")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Northrend Raids\\Naxxramas")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Northrend Raids\\The Obsidian Sanctum")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Northrend Raids\\Onyxia's Lair")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Northrend Raids\\The Ruby Sanctum")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Northrend Raids\\Trial of the Crusader")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Northrend Raids\\Trial of the Grand Crusader")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Northrend Raids\\Ulduar")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Northrend Raids\\Vault of Archavon")
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
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Cataclysm Dungeons\\End Time")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Cataclysm Dungeons\\Grim Batol")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Cataclysm Dungeons\\Halls of Origination")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Cataclysm Dungeons\\Hour of Twilight")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Cataclysm Dungeons\\Lost City of the Tol'vir")
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
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Cataclysm Dungeons\\Throne of the Tides")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Cataclysm Dungeons\\Vortex Pinnacle")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Cataclysm Dungeons\\Well of Eternity")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Cataclysm Dungeons\\Zul'Aman")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Cataclysm Dungeons\\Zul Gurub")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Cataclysm Raids\\Baradin Hold")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Cataclysm Raids\\The Bastion of Twilight")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Cataclysm Raids\\Blackwing Descent")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Cataclysm Raids\\Dragon Soul")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Cataclysm Raids\\Firelands")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Cataclysm Raids\\Throne of the Four Winds")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Pandaria Dungeons\\Gate of the Setting Sun")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Pandaria Dungeons\\Mogu'shan Palace")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Pandaria Dungeons\\Scarlet Halls")
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
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Pandaria Dungeons\\Scholomance")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Pandaria Dungeons\\Shado-Pan Monastery")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Pandaria Dungeons\\Siege of Niuzao Temple")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Pandaria Dungeons\\Stormstout Brewery")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Pandaria Dungeons\\Temple of the Jade Serpent")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Pandaria Raids\\Heart of Fear")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Pandaria Raids\\Mogu'shan Vaults")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Pandaria Raids\\Siege of Orgrimmar")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Pandaria Raids\\Terrace of Endless Spring")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Pandaria Raids\\Throne of Thunder")
