local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("HunterPetALEGION") then return end
ZygorGuidesViewer.GuideMenuTier = "LEG"
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Beast Mastery Exotic Pets\\Clefthooves\\Saddled Greater Clefthooves\\Red Saddled Greater Clefthoof",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red Saddled Greater Clefthoof pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={53311},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for the _Reassigned Warbeast_
|tip They are level 40.
Use your _Tame Beast_ ability on _Reassigned Warbeast_ |cast Tame Beast##1515 |goto Tanaan Jungle/0 38.88,41.64
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Beast Mastery Exotic Pets\\Core Hounds\\Green Core Hound",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green Core Hound pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={20521},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for a _Spawn of Uvuros_
|tip They are level 25-30, depending on your level.
|tip They wander over a sizeable area, so you may have to search for them.
|tip Be aware that Stomp will knock you back, interrupting your cast.
Use your _Tame Beast_ ability on a _Spawn of Uvuros_ |cast Tame Beast##1515 |goto Shadowmoon Valley/0 46.99,43.34
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Beast Mastery Exotic Pets\\Core Hounds\\Orange Core Hound",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Orange Core Hound pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={12168},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for a _Brimstone Hound_
|tip They are level 30-35, depending on your level.
Use your _Tame Beast_ ability on a _Brimstone Hound_ |cast Tame Beast##1515 |goto Mount Hyjal/0 14.40,42.05
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Beast Mastery Exotic Pets\\Core Hounds\\Yellow Core Hound",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Yellow Core Hound pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={73332},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
talk Zidormi##88206
Tell her _"Show me the Blasted Lands before the invasion."_
Travel to the Past |complete ZGV.InPhase('Old Blasted Lands') |goto Blasted Lands/0 48.16,7.28
step
Search for _Gomegaz_
|tip They are level 15-30, depending on your level.
Use your _Tame Beast_ ability on _Gomegaz_ |cast Tame Beast##1515 |goto Blasted Lands/0 51.64,42.38
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Beast Mastery Exotic Pets\\Devilaurs\\Black Armored Devilsaur",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Black Armored Devilsaur pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={51144},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Enter the Siege of Orgrimmar raid |goto Vale of Eternal Blossoms/0 74.06,42.03
|tip Difficulty must be normal or higher.
confirm
step
map	Siege of Orgrimmar/2
path	follow loose; loop off; ants curved; dist 30
path	90.77,45.48	84.43,49.73	77.08,57.75
path	71.22,54.28	67.09,49.78	51.92,49.64
path	32.05,45.61	17.19,45.58	11.75,52.48
path	11.75,72.14
map	Siege of Orgrimmar/1
path	follow loose; loop off; ants curved; dist 30
path	33.99,19.04	36.91,31.36	40.65,41.32
path	46.13,60.40
map	Siege of Orgrimmar/3
path	64.51,12.43	57.73,19.81	61.02,34.48
path	70.30,37.17	64.52,49.17	41.64,63.25
Follow the path
|tip Opening the world map will display an ant trail guiding you through the current floor.
|tip Along the way, kill Immerseus, The Fallen Protectors, and Norushen.
|tip Use our raid guide if you need boss information.
|tip After Immerseus, stand on the lighted platform and use the button that appears to open the door.
confirm
step
kill Sha of Pride##71734
clicknpc Portal to Orgrimmar##103191 |goto Siege of Orgrimmar/3 19.62,57.63
Defeat Sha of Pride and take the portal
confirm
step
talk Lady Jaina Proudmoore##72302 |goto Siege of Orgrimmar/4 109.90,43.36
Tell her: _"Reporting for duty!"_
|tip Watch the dialogue.
click Minor Portal##221522 |goto Siege of Orgrimmar/4 109.70,44.00
Reach the docks |goto Siege of Orgrimmar/4 87.19,28.15
confirm
step
clicknpc Spike Mine##76412
Destroy the first cannon |goto Siege of Orgrimmar/4 79.29,32.77
Destroy the second cannon |goto 81.87,36.90
Destroy the third cannon |goto 84.50,39.38
Destroy the fourth cannon |goto 85.36,43.02
Destroy the fifth cannon |goto 86.18,49.21
Destroy the sixth cannon |goto 87.32,51.30
Destroy the seventh cannon |goto 88.87,54.05
Click here when you finish destroying the cannons |confirm
step
map	Siege of Orgrimmar/4
path	follow loose; loop off; ants curved; dist 30
path	78.02,29.60	68.00,33.30	59.14,37.51
path	56.49,48.77	51.97,60.73	45.75,68.45
path	39.51,69.90	34.63,61.39	33.60,52.71
Kill Galakras and make your way to Iron Juggernaut
|tip Opening the world map will display an ant trail guiding you through the current floor.
|tip Talk to Lady Jaina Proudmoore to start the Galakras encounter.
|tip Galakras must be shot twice with a cannon to bring him down to the ground.
confirm
step
kill Iron Juggernaut##71466
collect 1 Pile of Juggernaut Parts##137654 |goto Siege of Orgrimmar/4 32.57,46.88
step
map	Siege of Orgrimmar/4
path	follow loose; loop off; ants curved; dist 30
path	31.04,39.48	30.63,29.59	35.19,28.03
map	Siege of Orgrimmar/5
path	51.69,77.07	50.73,65.86	51.07,53.79
path	53.17,47.80	61.26,41.23	58.71,29.59
map	Siege of Orgrimmar/6
path	73.86,14.57	65.10,39.18	68.72,50.07
map	Siege of Orgrimmar/7
path	39.33,18.17	42.90,32.00	50.53,51.65
path	57.70,65.73	72.22,65.52
Follow the path
|tip Opening the world map will display an ant trail guiding you through the current floor.
|tip Defeat the Kor'kron Dark Shaman and General Nazgrim along the way.
confirm
step
Ride the elevator to the bottom
confirm
step
map	Siege of Orgrimmar/8
path	follow loose; loop off; ants curved; dist 30
path	15.04,84.31	20.62,76.05	23.13,61.12
path	32.14,58.73	38.68,57.76	41.40,63.78
path	58.25,57.53	53.60,65.86	46.27,52.68
path	38.88,36.46	30.64,17.75	37.65,11.81
path	42.95,23.88	48.17,35.68
Follow the path
|tip Opening the world map will display an ant trail guiding you through the current floor.
|tip Click the release lever illuminated by a pillar of light.
confirm
step
map	Siege of Orgrimmar/8
path	follow loose; loop off; ants curved; dist 30
path	51.23,32.81	60.66,23.02	67.50,31.47
path	72.98,43.59	79.80,58.90	78.14,73.92
map	Siege of Orgrimmar/9
path	59.16,22.29	53.02,28.54	46.14,35.47
path	40.67,41.01	36.70,49.48	40.96,58.57
path	48.31,75.20
Follow the path
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Use your _Tame Beast_ ability on _Thok the Bloodthirsty_ |cast Tame Beast##1515 |goto Siege of Orgrimmar/9 51.39,82.05
|tip Activate Aspect of the Turtle before taming.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Beast Mastery Exotic Pets\\Silithids\\Sandreavers\\Orange Sandreaver",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining an Orange Sandreaver pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={61308},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for a _Sandreaver_
|tip These mobs have orange and striped orange skins.
Check the first location |goto Talador/0 32.92,94.44
Check the second location |goto 30.85,86.19
Check the third location |goto 22.20,67.58
|tip They are level 20-40, depending on your level.
|tip Be aware that Paralytic Bite will stun you at 10 stacks, interrupting your cast.
Use your _Tame Beast_ ability on a _Sandreaver_ |cast Tame Beast##1515
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Beast Mastery Exotic Pets\\Silithids\\Sandreavers\\Pink Sandreaver",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Pink Sandreaver pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={60223},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for a _Sandreaver Matriarch_
|tip These mobs have purple and pink skins.
Check the first location |goto Talador/0 32.92,94.44
Check the second location |goto 30.85,86.19
Check the third location |goto 22.20,67.58
|tip They are level 20-40, depending on your level.
|tip Be aware that Paralytic Bite will stun you at 10 stacks, interrupting your cast.
Use your _Tame Beast_ ability on a _Sandreaver Matriarch_ |cast Tame Beast##1515
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Beast Mastery Exotic Pets\\Silithids\\Sandreavers\\Purple Sandreaver",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Purple Sandreaver pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={25089},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for a _Sandreaver Matriarch_
|tip These mobs have purple and pink skins.
Check the first location |goto Talador/0 32.92,94.44
Check the second location |goto 30.85,86.19
Check the third location |goto 22.20,67.58
|tip They are level 20-40, depending on your level.
|tip Be aware that Paralytic Bite will stun you at 10 stacks, interrupting your cast.
Use your _Tame Beast_ ability on a _Sandreaver Matriarch_ |cast Tame Beast##1515
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Beast Mastery Exotic Pets\\Silithids\\Sandreavers\\Striped Orange Sandreaver",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Striped Orange Sandreaver pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={61308},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for a _Sandreaver_
|tip These mobs have orange and striped orange skins.
Check the first location |goto Talador/0 32.92,94.44
Check the second location |goto 30.85,86.19
Check the third location |goto 22.20,67.58
|tip They are level 20-40, depending on your level.
|tip Be aware that Paralytic Bite will stun you at 10 stacks, interrupting your cast.
Use your _Tame Beast_ ability on a _Sandreaver_ |cast Tame Beast##1515
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Beast Mastery Exotic Pets\\Silithids\\Sandreavers\\Striped Purple Sandreaver",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Striped Purple Sandreaver pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={25089},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
If you have already completed the quest _"Thunderdrome: Sarinexx!"_, you will need a friend to start the quest so you can tame this pet
confirm
step
talk Dr. Dealwell##39034
accept Thunderdrome: The Ginormus!##25067 |goto Tanaris/0 51.79,28.05
step
kill The Ginormus##39075 |q 25067/1 |goto 51.65,28.44
step
talk Katrina Turner##19860
turnin Thunderdrome: The Ginormus!##25067 |goto 51.63,28.00
step
talk Dr. Dealwell##39034
accept Thunderdrome: Zumonga!##25094 |goto 51.79,28.06
step
kill Zumonga##39148 |q 25094/1 |goto 51.65,28.44
step
talk Katrina Turner##19860
turnin Thunderdrome: Zumonga!##25094 |goto 51.63,28.00
step
talk Dr. Dealwell##39034
accept Thunderdrome: Sarinexx!##25095 |goto 51.79,28.05
step
Use your _Tame Beast_ ability on _Sarinexx_ |cast Tame Beast##1515 |goto 51.65,28.44
|tip It is level 15-30, depending on your level.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Beast Mastery Exotic Pets\\Silithids\\Sandreavers\\Striped Yellow Sandreaver",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Striped Yellow Sandreaver pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={61306},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for a _Sandreaver Drone_
|tip These mobs have yellow and striped yellow skins.
Check the first location |goto Talador/0 32.92,94.44
Check the second location |goto 30.85,86.19
Check the third location |goto 22.20,67.58
|tip They are level 20-40, depending on your level.
Use your _Tame Beast_ ability on a _Sandreaver Drone_ |cast Tame Beast##1515
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Beast Mastery Exotic Pets\\Silithids\\Sandreavers\\Yellow Sandreaver",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Yellow Sandreaver pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={61306},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for a _Sandreaver Drone_
|tip These mobs have yellow and striped yellow skins.
Check the first location |goto Talador/0 32.92,94.44
Check the second location |goto 30.85,86.19
Check the third location |goto 22.20,67.58
|tip They are level 20-40, depending on your level.
Use your _Tame Beast_ ability on a _Sandreaver Drone_ |cast Tame Beast##1515
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Beast Mastery Exotic Pets\\Spirit Beasts\\Spirit Elderhorn",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Spirit Elderhorn pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={70876},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Jump over the wall here |goto Stormheim/0 66.59,66.87 < 6
Go up the path |goto Stormheim/0 65.29,70.30 < 20
Go up the path |goto Stormheim/0 66.33,75.28 < 20
Go up the path |goto Stormheim/0 69.48,77.61 < 20
Carefully drop down |goto Stormheim/0 70.58,79.02 < 20
Carefully drop down |goto Stormheim/0 70.88,80.66 < 15
Carefully drop down |goto Stormheim/0 70.43,82.75 < 10
Carefully drop down |goto Stormheim/0 71.58,84.10 < 10
|tip You will take heavy fall damage, but survive. You can disengage with your back to the cliff to avoid this damage.
Carefully drop down |goto Stormheim/0 72.53,83.52 < 10
|tip You will take heavy fall damage, but survive.
Use your _Tame Beast_ ability on _Bulvinkel_ |cast Tame Beast##1515 |goto Stormheim/0 73.85,84.18
|tip It is level 10-45, depending on your level.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Beast Mastery Exotic Pets\\Spirit Beasts\\Mana Sabers\\Blue Mana Saber",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue Mana Saber pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={61927},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for a _Thicket Manahunter_
|tip They are level 45.
|tip They are uncommon and share a spawn with Thicket Hunters. If you don't find one, kill Thicket Hunters and wait for respawns.
Use your _Tame Beast_ ability on a _Thicket Manahunter_ |cast Tame Beast##1515 |goto Suramar/0 59.69,45.33
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Beast Mastery Exotic Pets\\Spirit Beasts\\Mana Sabers\\Indigo Mana Saber",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Indigo Mana Saber pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={71536},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for _Myonix_
|tip It is level 45.
Use your _Tame Beast_ ability on _Myonix_ |cast Tame Beast##1515 |goto Suramar/0 40.92,32.78
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Beast Mastery Exotic Pets\\Spirit Beasts\\Mana Sabers\\Purple Mana Saber",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Purple Mana Saber pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={72883},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for a _Mana Saber_
|tip They are level 45.
Use your _Tame Beast_ ability on a _Mana Saber_ |cast Tame Beast##1515 |goto Suramar/0 31.39,7.52
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Beast Mastery Exotic Pets\\Water Striders\\Coral Water Strider",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Coral Water Strider pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={40003},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for a _Skittering Riverbug_
|tip They are level 45.
Use your _Tame Beast_ ability on a _Skittering Riverbug_ |cast Tame Beast##1515 |goto Suramar/0 50.6,46.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Beast Mastery Exotic Pets\\Worms\\Jormungars\\Bright Green Jormungar",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Bright Green Jormungar pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={68370},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for an _Infectious Worm_
|tip They are level 10-45, depending on your level.
Use your _Tame Beast_ ability on an _Infectious Worm_ |cast Tame Beast##1515 |goto Highmountain/0 40.6,64.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Basilisks\\Spiny Basilisks\\Fel-Green Spiny Basilisk",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Fel-Green Spiny Basilisk pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={67022},
},[[
step
Search for a _Felslate Basilisk_
|tip These only spawn from mining nodes. You or a friend will have to mine veins until one spawns.
|tip The Felslate Basilisk is a mob with a level that will scale with yours.
|tip Petrifying Gaze will reduce your movement speed by 10% per stack if not interrupted. At 5 stacks, it will stun you.
Use your _Tame Beast_ ability on a _Felslate Basilisk_ |cast Tame Beast##1515
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Basilisks\\Spiny Basilisks\\Gray Spiny Basilisk",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Gray Spiny Basilisk pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={65050},
},[[
step
Search for a _Coldscale Gazecrawler_
|tip They are level 10-45, depending on your level.
|tip Death Gaze will stun you for 4 seconds if not interrupted.
Use your _Tame Beast_ ability on a _Coldscale Gazecrawler_ |cast Tame Beast##1515 |goto Highmountain/0 51.85,64.07
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Basilisks\\Spiny Basilisks\\Olive-Green Spiny Basilisk",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining an Olive-Green Spiny Basilisk pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={65051},
},[[
step
Search for a _Canyon Rockeater_
|tip They are level 10-45, depending on your level.
|tip Lethargic Glare will reduce your movement speed by 25% for 12 seconds if not interrupted.
Use your _Tame Beast_ ability on a _Canyon Rockeater_ |cast Tame Beast##1515 |goto Stormheim/0 52.58,64.26
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Basilisks\\Spiny Basilisks\\Orange Spiny Basilisk",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining an Orange Spiny Basilisk pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={65052},
},[[
step
Search for a _Manascale Basilisk_
|tip They are level 10-45, depending on your level.
|tip Stone Gaze will stun you for 2 seconds if not interrupted.
Use your _Tame Beast_ ability on a _Manascale Basilisk_ |cast Tame Beast##1515 |goto Highmountain/0 51.85,64.07
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Basilisks\\Spiny Basilisks\\Purple Spiny Basilisk (Legion)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Purple Spiny Basilisk pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={67021},
},[[
step
Search for a _Lagoon Basilisk_
|tip They are level 10-45, depending on your level.
|tip Petrifying Gaze will reduce your movement speed by 10% per stack if not interrupted. At 5 stacks, it will stun you.
Use your _Tame Beast_ ability on a _Lagoon Basilisk_ |cast Tame Beast##1515 |goto Azsuna/0 57.62,36.21
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Bears\\Dark Bear",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Dark Bear pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={23992},
},[[
step
Search for a _Vicious Black Bear_
|tip They are level 7-30, depending on your level.
Use your _Tame Beast_ ability on a _Vicious Black Bear_ |cast Tame Beast##1515 |goto Hillsbrad Foothills/0 64.76,74.07
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Bears\\Dark Brown Bear",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Dark Brown Bear pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={820},
},[[
step
Search for an _Ashenvale Bear_
|tip They are level 5-30, depending on your level.
Use your _Tame Beast_ ability on a _Ashenvale Bear_ |cast Tame Beast##1515 |goto Ashenvale/0 40.54,53.92
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Bears\\Diseased Dark Bear",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Diseased Dark Bear pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={1082},
},[[
step
Search for a _Diseased Black Bear_
|tip They are level 15-30, depending on your level.
Use your _Tame Beast_ ability on a _Diseased Black Bear_ |cast Tame Beast##1515 |goto Western Plaguelands/0 36.54,64.07
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Bears\\Diseased Dark Brown Bear",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Diseased Dark Brown Bear pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={26940},
},[[
step
Search for a _Consumed Thistle Bear_
|tip They are level 5-30, depending on your level.
Use your _Tame Beast_ ability on a _Consumed Thistle Bear_ |cast Tame Beast##1515 |goto Darkshore/0 45.17,77.80
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Bears\\Diseased Gray Bear",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Diseased Gray Bear pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={31588},
},[[
step
Search for an _Infested Bear_
|tip They are level 7-30, depending on your level.
Use your _Tame Beast_ ability on an _Infested Bear_ |cast Tame Beast##1515 |goto Hillsbrad Foothills/0 36.06,71.29
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Bears\\Diseased Tan Bear",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Diseased Tan Bear pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={37538},
},[[
step
Search for a _Hulking Plaguebear_
|tip They are level 15-30, depending on your level.
Use your _Tame Beast_ ability on a _Hulking Plaguebear_ |cast Tame Beast##1515 |goto Western Plaguelands/0 54.30,48.50
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Bears\\Diseased White Bear",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Diseased White Bear pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={23966},
},[[
step
Search for a _Rabid Grizzly_
|tip They are level 15-30, depending on your level.
Use your _Tame Beast_ ability on a _Rabid Grizzly_ |cast Tame Beast##1515 |goto Dragonblight/0 27.6,49.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Bears\\Gray Bear",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Gray Bear pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={3201},
},[[
step
Search for an _Elder Gray Bear_
|tip They are level 7-30, depending on your level.
Use your _Tame Beast_ ability on an _Elder Gray Bear_ |cast Tame Beast##1515 |goto Hillsbrad Foothills/0 33.85,56.01
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Bears\\Old Model Bears\\Old Model Black Bear",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining an old model Black Bear pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={70188},
},[[
step
Search for _Ursol'lok_
|tip It is level 7-30, depending on your level.
|tip It is a rare mob with a respawn timer of about 10-16 hours.
Check the first location |goto Ashenvale/0 89.20,47.45
Check the second location |goto Ashenvale/0 92.87,45.39
Use your _Tame Beast_ ability on _Ursol'lok_ |cast Tame Beast##1515
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Bears\\Old Model Bears\\Old Model Brown Bear",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining an old model Brown Bear pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={70186},
},[[
step
Search for _Mongress_
|tip It is level 15-30, depending on your level.
Check the first location |goto Felwood/0 42.93,77.31
Check the second location |goto Felwood/0 47.15,82.69
Use your _Tame Beast_ ability on _Mongress_ |cast Tame Beast##1515
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Bears\\Old Model Bears\\Old Model Dark Brown Bear",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining an old model Dark Brown Bear pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={70199},
},[[
step
Search for _Grizzled Ben_
|tip He is level 1-30, depending on your level.
Use your _Tame Beast_ ability on _Grizzled Ben_ |cast Tame Beast##1515 |goto Elwynn Forest/0 27.45,67.61
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Bears\\Old Model Bears\\Old Model Diseased Black Bear",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a old model Diseased Black Bear pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={70194},
},[[
step
Search for _Grimrot_
|tip It is level 15-30, depending on your level.
|tip It has about a 2 hour respawn timer.
|tip Grimrot will only spawn with the diseased skin during nighttime hours.
Use your _Tame Beast_ ability on _Grimrot_ |cast Tame Beast##1515 |goto Felwood/0 38.25,45.63
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Bears\\Old Model Bears\\Old Model Diseased Brown Bear",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining an old model Diseased Brown Bear pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={70189},
},[[
step
Search for _Big Samras_
|tip It is level 7-30, depending on your level.
Use your _Tame Beast_ ability on _Big Samras_ |cast Tame Beast##1515 |goto Hillsbrad Foothills/0 63.53,52.73
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Bears\\Old Model Bears\\Old Model Diseased Dark Brown Bear",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining an old model Diseased Dark Brown Bear pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={70190},
},[[
step
Search for _Ol' Muddle_
|tip It is level 10-30, depending on your level.
|tip Ol' Muddle wanders a small area. Check each point thoroughly.
Check the first location |goto The Hinterlands/0 50.85,55.79
Check the second location |goto The Hinterlands/0 63.87,54.32
Check the third location |goto The Hinterlands/0 67.82,46.21
Check the fourth location |goto The Hinterlands/0 71.97,52.06
Use your _Tame Beast_ ability on _Ol' Muddle_ |cast Tame Beast##1515
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Bears\\Old Model Bears\\Old Model Diseased Gray Bear",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining an old model Diseased Gray Bear pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={70191},
},[[
step
Search for _Mange_
|tip It is level 15-30, depending on your level.
Use your _Tame Beast_ ability on _Mange_ |cast Tame Beast##1515 |goto Western Plaguelands/0 66.16,55.18
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Bears\\Old Model Bears\\Old Model Diseased White Bear",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining an old model Diseased White Bear pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={70192},
},[[
step
Search for _Hibernus the Sleeper_
|tip It is level 1-30, depending on your level.
Use your _Tame Beast_ ability on _Hibernus the Sleeper_ |cast Tame Beast##1515 |goto Tirisfal Glades/0 47.47,70.35
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Bears\\Old Model Bears\\Old Model Gray Bear",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining an old model Gray Bear pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={70193},
},[[
step
Search for _Grimrot_
|tip It is level 15-30, depending on your level.
|tip It has about a 2 hour respawn timer.
|tip Grimrot will only spawn with the gray skin during daytime hours.
Use your _Tame Beast_ ability on _Grimrot_ |cast Tame Beast##1515 |goto Felwood/0 38.25,45.63
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Bears\\Old Model Bears\\Old Model White Bear",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining an old model White Bear pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={70185},
},[[
step
Search for _Bjarn_
|tip It is level 1-30, depending on your level.
|tip It has about a 1 hour respawn timer.
|tip Bjarn will wander a small area around these coordinates.
Use your _Tame Beast_ ability on _Bjarn_ |cast Tame Beast##1515 |goto Dun Morogh/0 66.55,59.20
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Bears\\Tan Bear",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Tan Bear pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={1006},
},[[
step
Search for a _Corrupted Thistle Bear_
|tip They are level 5-30, depending on your level.
Use your _Tame Beast_ ability on a _Corrupted Thistle Bear_ |cast Tame Beast##1515 |goto Darkshore/0 55.13,24.43
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Bears\\White Bear",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a White Bear pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={865},
},[[
step
Search for a _Shardtooth Bear_
|tip They are level 15-30, depending on your level.
Use your _Tame Beast_ ability on a _Shardtooth Bear_ |cast Tame Beast##1515 |goto Winterspring/0 52.25,32.88
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Cats\\Nightsabers\\Black Nightsaber",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Black Nightsaber pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={68398},
},[[
step
Search for a _Wild Nightsaber_
|tip They are level 10-45, depending on your level.
Use your _Tame Beast_ ability on a _Wild Nightsaber_ |cast Tame Beast##1515 |goto Val'sharah/0 45.90,79.51
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Cats\\Nightsabers\\Brown Nightsaber",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Brown Nightsaber pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={64595},
},[[
step
Search for a _Pinerock Prowler_ or _Pinerock Stalker_
|tip They are level 10-45, depending on your level.
Use your _Tame Beast_ ability on a _Pinerock Prowler_ or _Pinerock Stalker_ |cast Tame Beast##1515 |goto Highmountain/0 40.08,50.25
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Cats\\Nightsabers\\Gray Nightsaber",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Gray Nightsaber pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={64385},
},[[
step
Search for a _Cursed Prowler_
|tip They are level 10-45, depending on your level.
Use your _Tame Beast_ ability on a _Cursed Prowler_ |cast Tame Beast##1515 |goto Highmountain/0 46.20,46.19
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Cats\\Nightsabers\\Pale Nightsaber",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Pale Nightsaber pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={62591},
},[[
step
Search for a _Thicket Hunter_
|tip It is level 45.
Use your _Tame Beast_ ability on a _Thicket Hunter_ |cast Tame Beast##1515 |goto Suramar/0 62.19,44.38
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Boars\\Greater Boars\\Arcane Purple Greater Boar",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining an Arcane Purple Greater Boar pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={62708},
},[[
step
Search for _Leytusk_
|tip They are level 10-45, depending on your level.
|tip Be mindful of Leytusk's Heave ability. It will deal damage and knock you back.
Use your _Tame Beast_ ability on _Leytusk_ |cast Tame Beast##1515 |goto Azsuna/0 62.12,11.75
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Boars\\Greater Boars\\Dark Brown Greater Boar",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Dark Brown Greater Boar pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={52834},
},[[
step
Search for a _Spinetusk Piglet_
|tip They are level 10-45, depending on your level.
Use your _Tame Beast_ ability on a _Spinetusk Piglet_ |cast Tame Beast##1515 |goto Highmountain/0 36.81,38.09
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Marsuul\\Blue and Orange Marsuul",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue and Orange Marsuul pet.",
condition_suggested=function() return level>=45 and (ZGV.CurrentMapID==830 or ZGV.CurrentMapID==831 or ZGV.CurrentMapID==832 or ZGV.CurrentMapID==833) end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={75475},
},[[
step
Search for a _Marsuul Kit_
|tip They are level 45.
Use your _Tame Beast_ ability on a _Blue and Orange Marsuul_ |cast Tame Beast##1515 |goto Eredath/0 47.09,70.33
|tip It may share a spawn with the _Flashfoot Kit.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Marsuul\\Fel-Grey Marsuul",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Fel-Grey Marsuul pet.",
condition_suggested=function() return level>=45 and (ZGV.CurrentMapID==830 or ZGV.CurrentMapID==831 or ZGV.CurrentMapID==832 or ZGV.CurrentMapID==833) end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={77923},
},[[
step
Follow the path |goto Krokuun/0 55.47,68.31 < 25 |only if walking
Follow the path |goto 54.07,68.19 < 25 |only if walking
Search for a _Felscarred Marsuul_
|tip They are level 45.
Use your _Tame Beast_ ability on a _Fel-Grey Marsuul_ |cast Tame Beast##1515 |goto 53.4,69.8
|tip They are up on the rock ledge around this area.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Marsuul\\Orange and Green Marsuul",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining an Orange and Green Marsuul pet.",
condition_suggested=function() return level>=45 and (ZGV.CurrentMapID==830 or ZGV.CurrentMapID==831 or ZGV.CurrentMapID==832 or ZGV.CurrentMapID==833) end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={75472},
},[[
step
Search for a _Flashfoot Marsuul_
|tip They are level 45.
Use your _Tame Beast_ ability on an _Orange and Green Marsuul_ |cast Tame Beast##1515 |goto Eredath/0 47.09,70.33
|tip It may share a spawn with the Marsuul Kit.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Marsuul\\Pale Blue Marsuul",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Pale Blue Marsuul pet.",
condition_suggested=function() return level>=45 and (ZGV.CurrentMapID==830 or ZGV.CurrentMapID==831 or ZGV.CurrentMapID==832 or ZGV.CurrentMapID==833) end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={75474},
},[[
step
Search for a _Springstep Marsuul_ or _Marsuul Kit_
|tip They are level 45.
Use your _Tame Beast_ ability on a _Pale Blue Marsuul_ |cast Tame Beast##1515 |goto Eredath/0 57.60,68.44
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Marsuul\\Purple and Green Marsuul",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Purple and Green Marsuul pet.",
condition_suggested=function() return level>=45 and (ZGV.CurrentMapID==830 or ZGV.CurrentMapID==831 or ZGV.CurrentMapID==832 or ZGV.CurrentMapID==833) end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={75470},
},[[
step
Search for a _Magechaser Marsuul_
|tip They are level 45.
Use your _Tame Beast_ ability on a _Purple and Green Marsuul_ |cast Tame Beast##1515 |goto Eredath/0 64.70,50.40
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Marsuul\\Void-Touched Marsuul",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Void-Touched Marsuul pet.",
condition_suggested=function() return level>=45 and (ZGV.CurrentMapID==830 or ZGV.CurrentMapID==831 or ZGV.CurrentMapID==832 or ZGV.CurrentMapID==833) end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={76404},
},[[
step
Search for a _Shadowcrazed Marsuul_
|tip They are level 45.
Use your _Tame Beast_ ability on a _Void-Touched Marsuul_ |cast Tame Beast##1515 |goto Eredath/0 41.0,58.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Oxen\\Musken\\Black Musken",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Black Musken pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={70286},
},[[
step
Search for a _Wild Plains Runehorn_
|tip They are level 10-45, depending on your level.
Use your _Tame Beast_ ability on a _Wild Plains Runehorn_ |cast Tame Beast##1515 |goto Stormheim/0 58.27,50.93
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Oxen\\Musken\\Brown Musken",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Brown Musken pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={70290},
},[[
step
Search for a _Plains Runehorn Bull_
|tip They are level 10-45, depending on your level.
|tip These mobs are not as common, so you may have to search a bit.
Use your _Tame Beast_ ability on a _Plains Runehorn Bull_ |cast Tame Beast##1515 |goto Stormheim/0 50.45,51.53
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Oxen\\Musken\\White Musken",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a White Musken pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={70336},
},[[
step
Search for a _Highlands Runehorn_
|tip They are level 10-45, depending on your level.
Use your _Tame Beast_ ability on a _Highlands Runehorn_ |cast Tame Beast##1515 |goto Stormheim/0 37.44,62.51
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Oxen\\Shoveltusks\\Brown Shoveltusk",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Brown Shoveltusk pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={37780},
},[[
step
Search for a _Shoveltusk Forager_
|tip They are level 10-30, depending on your level.
Use your _Tame Beast_ ability on a _Shoveltusk Forager_ |cast Tame Beast##1515 |goto Howling Fjord/0 34.07,30.93
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Oxen\\Shoveltusks\\Dark Shoveltusk",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Dark Shoveltusk pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={22131},
},[[
step
Search for a _Shoveltusk Stag_
|tip They are level 10-30, depending on your level.
Use your _Tame Beast_ ability on a _Shoveltusk Stag_ |cast Tame Beast##1515 |goto Howling Fjord/0 35.33,40.63
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Oxen\\Shoveltusks\\Pale Shoveltusk",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Pale Shoveltusk pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={22132},
},[[
step
Search for a _Shoveltusk_
|tip They are level 10-30, depending on your level.
|tip Be aware that Head Butt will confuse you for 3 seconds, interrupting your cast.
Use your _Tame Beast_ ability on a _Shoveltusk_ |cast Tame Beast##1515 |goto Howling Fjord/0 35.33,40.63
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Oxen\\Shoveltusks\\Red Shoveltusk",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red Shoveltusk pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={37781},
},[[
step
Search for a _Longhoof Grazer_
|tip They are level 15-30, depending on your level.
|tip Be aware that Head Butt will confuse you for 3 seconds, interrupting your cast.
Use your _Tame Beast_ ability on a _Longhoof Grazer_ |cast Tame Beast##1515 |goto Grizzly Hills/0 72.25,36.26
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Oxen\\Yaks\\Black Yak",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Black Yak pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={42171},
},[[
step
Search for a _Wasteland Yak_
|tip They are level 30-35, depending on your level.
Use your _Tame Beast_ ability on a _Wasteland Yak_ |cast Tame Beast##1515 |goto Dread Wastes/0 43.04,51.99
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Oxen\\Yaks\\Brown Yak",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Brown Yak pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={40694},
},[[
step
Search for a _Mountain Yak_
|tip They are level 20-35, depending on your level.
|tip There are two different skins, brown and tan.
Use your _Tame Beast_ ability on a _Mountain Yak_ |cast Tame Beast##1515 |goto Kun-Lai Summit/0 44.46,68.46
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Oxen\\Yaks\\Gray Yak",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Gray Yak pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={45247},
},[[
step
Search for a _Wasteland Calf_
|tip They are level 30-35, depending on your level.
|tip There are two different skins, gray and white.
Use your _Tame Beast_ ability on a _Wasteland Calf_ |cast Tame Beast##1515 |goto Dread Wastes/0 43.04,51.99
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Oxen\\Yaks\\Tan Yak",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Tan Yak pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={51282},
},[[
step
Search for a _Mountain Yak_
|tip They are level 20-35, depending on your level.
|tip There are two different skins, brown and tan.
Use your _Tame Beast_ ability on a _Mountain Yak_ |cast Tame Beast##1515 |goto Kun-Lai Summit/0 44.46,68.46
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Oxen\\Yaks\\White Yak",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a White Yak pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={45242},
},[[
step
Search for a _Wasteland Calf_
|tip They are level 30-35, depending on your level.
|tip There are two different skins, gray and white.
Use your _Tame Beast_ ability on a _Wasteland Calf_ |cast Tame Beast##1515 |goto Dread Wastes/0 43.04,51.99
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Panthara\\Dark Teal Panthara",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Dark Teal Panthara pet.",
condition_suggested=function() return level>=45 and (ZGV.CurrentMapID==830 or ZGV.CurrentMapID==831 or ZGV.CurrentMapID==832 or ZGV.CurrentMapID==833) end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={76587},
},[[
step
kill Ruinwalker Calf##126952, Chitinbuk Ruinwalker##122363, Ruinwalker Stag##126939
map Eredath/0
path	dist 35
path	50.43,64.32	54.93,59.94	58.49,57.15
path	57.99,53.14	56.56,49.90	54.62,47.18
path	52.90,52.12	52.42,58.37	50.75,58.93
collect 1 Fresh Talbuk Meat##153251
|tip These have an incredibly low drop rate.
step
Search for a _Shadowseeker Panthara_
This will be tricky to tame, so follow the instructions provided:
|tip Get into meat throwing range .
|tip Cast Freezing Trap on it.
|tip Cast Feign Death.
While still under the affects of Feign Death, use the _Fresh Talbuk Meat_ |use Fresh Talbuk Meat##153251
|tip Immediately cast Tame Beast.
|tip If the meat disappears, it will begin to vanish every time you try and tame it.
|tip They are level 45.
Use your _Tame Beast_ ability on a _Dark Teal Panthara_ |cast Tame Beast##1515 |goto 41.86,59.42
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Panthara\\Fel Green Panthara",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Fel Green Panthara pet.",
condition_suggested=function() return level>=45 and (ZGV.CurrentMapID==830 or ZGV.CurrentMapID==831 or ZGV.CurrentMapID==832 or ZGV.CurrentMapID==833) end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={78791},
},[[
step
kill Ruinwalker Calf##126952, Chitinbuk Ruinwalker##122363, Ruinwalker Stag##126939
map Eredath/0
path	dist 35
path	50.43,64.32	54.93,59.94	58.49,57.15
path	57.99,53.14	56.56,49.90	54.62,47.18
path	52.90,52.12	52.42,58.37	50.75,58.93
collect 1 Fresh Talbuk Meat##153251
|tip These have an incredibly low drop rate.
step
Search for a _Trench Stalker_
This will be tricky to tame, so follow the instructions provided:
|tip Get into meat throwing range.
|tip Cast Freezing Trap on it.
|tip Cast Feign Death.
While still under the affects of Feign Death, use the _Fresh Talbuk Meat_ |use Fresh Talbuk Meat##153251
|tip Immediately cast Tame Beast.
|tip If the meat disappears, it will begin to vanish every time you try and tame it.
|tip They are level 45.
Use your _Tame Beast_ ability on a _Fel Green Panthara_ |cast Tame Beast##1515 |goto Antoran Wastes/0 67.36,42.43
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Panthara\\Indigo Panthara",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Indigo Panthara pet.",
condition_suggested=function() return level>=45 and (ZGV.CurrentMapID==830 or ZGV.CurrentMapID==831 or ZGV.CurrentMapID==832 or ZGV.CurrentMapID==833) end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={78003},
},[[
step
kill Ruinwalker Calf##126952, Chitinbuk Ruinwalker##122363, Ruinwalker Stag##126939
map Eredath/0
path	dist 35
path	50.43,64.32	54.93,59.94	58.49,57.15
path	57.99,53.14	56.56,49.90	54.62,47.18
path	52.90,52.12	52.42,58.37	50.75,58.93
collect 1 Fresh Talbuk Meat##153251
|tip These have an incredibly low drop rate.
step
Search for a _Duskcloak Panthara_
This will be tricky to tame, so follow the instructions provided:
|tip Get into meat throwing range.
|tip Cast Freezing Trap on it.
|tip Cast Feign Death.
While still under the affects of Feign Death, use the _Fresh Talbuk Meat_ |use Fresh Talbuk Meat##153251
|tip Immediately Cast Tame Beast.
|tip If the meat disappears, it will begin to vanish every time you try and tame it.
|tip They are level 45.
Use your _Tame Beast_ ability on a _Indigo Panthara_ |cast Tame Beast##1515 |goto Antoran Wastes/0 66.6,64.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Panthara\\Purple-Yellow Panthara",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Purple-Yellow Panthara pet.",
condition_suggested=function() return level>=45 and (ZGV.CurrentMapID==830 or ZGV.CurrentMapID==831 or ZGV.CurrentMapID==832 or ZGV.CurrentMapID==833) end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={76600},
},[[
step
kill Ruinwalker Calf##126952, Chitinbuk Ruinwalker##122363, Ruinwalker Stag##126939
map Eredath/0
path	dist 35
path	50.43,64.32	54.93,59.94	58.49,57.15
path	57.99,53.14	56.56,49.90	54.62,47.18
path	52.90,52.12	52.42,58.37	50.75,58.93
collect 1 Fresh Talbuk Meat##153251
|tip These have an incredibly low drop rate.
step
Search for a _Panthara Shadowfang_
This will be tricky to tame, so follow the instructions provided:
|tip Get into meat throwing range.
|tip Cast Freezing Trap on it.
|tip Cast Feign Death.
While still under the affects of Feign Death, use the _Fresh Talbuk Meat_ |use Fresh Talbuk Meat##153251
|tip Immediately cast Tame Beast.
|tip If the meat disappears, it will begin to vanish every time you try and tame it.
|tip They are level 45.
Use your _Tame Beast_ ability on a _Purple-Yellow Panthara_ |cast Tame Beast##1515 |goto Eredath/0 35.88,40.42
|tip There are several enemies in the area. Try to clear them.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Panthara\\Silver-Blue Panthara",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Silver-Blue Panthara pet.",
condition_suggested=function() return level>=45 and (ZGV.CurrentMapID==830 or ZGV.CurrentMapID==831 or ZGV.CurrentMapID==832 or ZGV.CurrentMapID==833) end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={77948},
},[[
step
kill Ruinwalker Calf##126952, Chitinbuk Ruinwalker##122363, Ruinwalker Stag##126939
map Eredath/0
path	dist 35
path	50.43,64.32	54.93,59.94	58.49,57.15
path	57.99,53.14	56.56,49.90	54.62,47.18
path	52.90,52.12	52.42,58.37	50.75,58.93
collect 1 Fresh Talbuk Meat##153251
|tip These have an incredibly low drop rate.
step
Follow the path |goto Krokuun/0 59.90,66.85 < 25 |only if walking
Follow the path |goto 60.35,63.14 < 25 |only if walking
Follow the path |goto 63.17,62.29 < 25 |only if walking
Follow the path |goto 66.24,64.22 < 25 |only if walking
Follow the path |goto 67.00,68.51 < 25 |only if walking
Follow the path |goto 69.69,69.98 < 25 |only if walking
Search for a _Duskcloak Alpha_
This will be tricky to tame, so follow the instructions provided:
|tip Get into meat throwing range.
|tip Cast Freezing Trap on it.
|tip Cast Feign Death.
While still under the affects of Feign Death, use the _Fresh Talbuk Meat_ |use Fresh Talbuk Meat##153251
|tip Immediately cast Tame Beast.
|tip If the meat disappears, it will begin to vanish every time you try and tame it.
|tip They are level 45.
Use your _Tame Beast_ ability on a _Silver-Blue Panthara_ |cast Tame Beast##1515 |goto 71.78,70.53
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Panthara\\Yellow-Green Panthara",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Yellow-Green Panthara pet.",
condition_suggested=function() return level>=45 and (ZGV.CurrentMapID==830 or ZGV.CurrentMapID==831 or ZGV.CurrentMapID==832 or ZGV.CurrentMapID==833) end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={77918},
},[[
step
kill Ruinwalker Calf##126952, Chitinbuk Ruinwalker##122363, Ruinwalker Stag##126939
map Eredath/0
path	dist 35
path	50.43,64.32	54.93,59.94	58.49,57.15
path	57.99,53.14	56.56,49.90	54.62,47.18
path	52.90,52.12	52.42,58.37	50.75,58.93
collect 1 Fresh Talbuk Meat##153251
|tip These have an incredibly low drop rate.
step
Follow the path |goto Krokuun/0 59.21,68.36 < 25 |only if walking
Follow the path |goto 59.83,66.31 < 25 |only if walking
Search for a _Panthara Apex_
This will be tricky to tame, so follow the instructions provided:
|tip Get into meat throwing range.
|tip Cast Freezing Trap on it.
|tip Cast Feign Death.
While still under the affects of Feign Death, use the _Fresh Talbuk Meat_ |use Fresh Talbuk Meat##153251
|tip Immediately cast Tame Beast.
|tip If the meat disappears, it will begin to vanish every time you try and tame it.
|tip They are level 45.
Use your _Tame Beast_ ability on a _Yellow-Green Panthara_ |cast Tame Beast##1515 |goto 61.34,63.06
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Raptors\\Falcosaurs\\Black and Red Falcosaur",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Black and Red Falcosaur pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={70056},
},[[
step
Search for a _Bloodgazer Nest-Keeper_
|tip They are level 10-45, depending on your level.
Use your _Tame Beast_ ability on a _Bloodgazer Nest-Keeper_ |cast Tame Beast##1515 |goto Azsuna/0 37.2,7.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Raptors\\Falcosaurs\\Orange and Turquoise Falcosaur",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining an Orange and Turquoise Falcosaur pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={70058},
},[[
step
Search for a _Direbeak Nest-Keeper_
|tip They are level 10-45, depending on your level.
Use your _Tame Beast_ ability on a _Direbeak Nest-Keeper_ |cast Tame Beast##1515 |goto Stormheim/0 78.6,73.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Raptors\\Falcosaurs\\Purple and Green Falcosaur",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Purple and Green Falcosaur pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={70057},
},[[
step
Search for a _Sharptalon Nest-Keeper_
|tip They are level 10-45, depending on your level.
Use your _Tame Beast_ ability on a _Sharptalon Nest-Keeper_ |cast Tame Beast##1515 |goto Val'sharah/0 55.2,8.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Raptors\\Falcosaurs\\Silver and Gray Falcosaur",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Silver and Gray Falcosaur pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={70059},
},[[
step
Search for a _Snowfeather Nest-Keeper_
|tip They are level 10-45, depending on your level.
Use your _Tame Beast_ ability on a _Snowfeather Nest-Keeper_ |cast Tame Beast##1515 |goto Highmountain/0 36.6,20.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Scalehides\\Kodos\\Furry Brown Kodo",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Furry Brown Kodo pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={10916},
},[[
step
Search for a _Recovering Kodo_
|tip They are level 10-30, depending on your level.
Use your _Tame Beast_ ability on a _Recovering Kodo_ |cast Tame Beast##1515 |goto Desolace/0 58.01,59.93
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Scalehides\\Kodos\\Green-Beige Kodo",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green-Beige Kodo pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={1308},
},[[
step
Search for an _Aged Kodo_
|tip They are level 10-30, depending on your level.
Use your _Tame Beast_ ability on an _Aged Kodo_ |cast Tame Beast##1515 |goto Desolace/0 53.17,58.22
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Scalehides\\Kodos\\Yellow Kodo",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Yellow Kodo pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={2767},
},[[
step
Search for an _Ancient Kodo_
|tip They are level 10-30, depending on your level.
Use your _Tame Beast_ ability on an _Ancient Kodo_ |cast Tame Beast##1515 |goto Desolace/0 53.34,58.48
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Scalehides\\Mushan\\Blue Mushan",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue Mushan pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={45161},
},[[
step
Search for a _Longshadow Bull_
|tip They are level 25-35, depending on your level.
|tip Be aware that Belly Flop will knock you back, interrupting your cast.
Use your _Tame Beast_ ability on a _Longshadow Bull_ |cast Tame Beast##1515 |goto Townlong Steppes/0 54.08,66.13
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Scalehides\\Mushan\\Dark Mushan",{
author="support@zygorguides.com",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
description="\nThis guide will walk you through obtaining a Dark Mushan pet.",
model={41935},
},[[
step
Search for a _Longshadow Mushan_
|tip They are level 25-35, depending on your level.
|tip Be aware that Belly Flop will knock you back, interrupting your cast.
Use your _Tame Beast_ ability on a _Longshadow Mushan_ |cast Tame Beast##1515 |goto Townlong Steppes/0 54.08,66.13
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Scalehides\\Mushan\\Green Mushan",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green Mushan pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={44635},
},[[
step
Search for a _Mushan Nomad_
|tip They are level 15-35, depending on your level.
|tip Mushan Nomads wander a large area. You may have to search around.
Use your _Tame Beast_ ability on a _Mushan Nomad_ |cast Tame Beast##1515 |goto Valley of the Four Winds/0 70.49,46.93
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Scalehides\\Mushan\\Pale Mushan",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Pale Mushan pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={44785},
},[[
step
Search for a _Sungraze Mushan Calf_
|tip They are level 15-35, depending on your level.
|tip There are two different skins, pale and tan.
Use your _Tame Beast_ ability on a _Sungraze Mushan Calf_ |cast Tame Beast##1515 |goto Valley of the Four Winds/0 74.38,59.29
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Scalehides\\Mushan\\Tan Mushan",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Tan Mushan pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={40874},
},[[
step
Search for a _Sungraze Mushan Calf_
|tip They are level 15-35, depending on your level.
|tip There are two different skins, pale and tan.
Use your _Tame Beast_ ability on a _Sungraze Mushan Calf_ |cast Tame Beast##1515 |goto Valley of the Four Winds/0 74.38,59.29
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Scalehides\\Stegodons\\Beige Stegodon",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Beige Stegodon pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={2742},
},[[
step
Search for a _Raging Thunder Lizard_
|tip They are level 10-30, depending on your level.
Use your _Tame Beast_ ability on a _Raging Thunder Lizard_ |cast Tame Beast##1515 |goto Desolace/0 50.06,30.85
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Scalehides\\Stegodons\\Black Stegodon",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Black Stegodon pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={10933},
},[[
step
Search for a _Margol the Rager_
|tip They are level 15-30, depending on your level.
|tip Margol patrols from the cave to the surrounding hills.
Use your _Tame Beast_ ability on a _Margol the Rager_ |cast Tame Beast##1515 |goto Searing Gorge/0 73.28,76.22
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Scalehides\\Stegodons\\Blue Stegodon",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue Stegodon pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={1540},
},[[
step
Search for a _Rejuvenated Thunder Lizard_
|tip They are level 10-30, depending on your level.
Use your _Tame Beast_ ability on a _Rejuvenated Thunder Lizard_ |cast Tame Beast##1515 |goto Desolace/0 54.48,39.73
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Scalehides\\Stegodons\\Dark Green Stegodon",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Dark Green Stegodon pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={1532},
},[[
step
Search for a _Thunderhead_
|tip They are level 10-30, depending on your level.
Use your _Tame Beast_ ability on a _Thunderhead_ |cast Tame Beast##1515 |goto Southern Barrens/0 48.88,59.05
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Scalehides\\Stegodons\\Light Green Stegodon",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Light Green Stegodon pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={37778},
},[[
step
Search for _Thunderstomp_
|tip It is level 10-30, depending on your level.
Check the first location |goto Southern Barrens/0 44.08,77.92
Check the second location |goto Southern Barrens/0 47.08,78.97
Check the third location |goto Southern Barrens/0 50.07,81.19
Check the fourth location |goto Southern Barrens/0 47.03,71.74
Use your _Tame Beast_ ability on _Thunderstomp_ |cast Tame Beast##1515
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Scalehides\\Stegodons\\Red Stegodon",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red Stegodon pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={1537},
},[[
step
Search for a _Cliff Stormer_
|tip They are level 10-30, depending on your level.
Use your _Tame Beast_ ability on a _Cliff Stormer_ |cast Tame Beast##1515 |goto Stonetalon Mountains/0 63.64,81.08
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Stags\\Does\\Dark Brown Doe",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Dark Brown Doe pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={70446},
},[[
step
Search for an _Amberfall Doe_
|tip They are level 10-45, depending on your level.
Use your _Tame Beast_ ability on an _Amberfall Doe_ |cast Tame Beast##1515 |goto Stormheim/0 47.31,50.84
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Stags\\Does\\Gray Doe",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Gray Doe pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={70448},
},[[
step
Search for a _Shieldscar Doe_
|tip It is level 45.
Use your _Tame Beast_ ability on a _Shieldscar Doe_ |cast Tame Beast##1515 |goto Suramar/0 44.6,49.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Stags\\Does\\Orange Doe",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining an Orange Doe pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={70449},
},[[
step
Search for a _Runewood Doe_
|tip They are level 10-45, depending on your level.
Use your _Tame Beast_ ability on a _Runewood Doe_ |cast Tame Beast##1515 |goto Stormheim/0 66.79,54.87
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Stags\\Does\\Puce Doe",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Puce Doe pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={70450},
},[[
step
Search for a _Ferngrazer Doe_
|tip They are level 10-45, depending on your level.
Use your _Tame Beast_ ability on a _Ferngrazer Doe_ |cast Tame Beast##1515 |goto Stormheim/0 47.05,40.49
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Stags\\Does\\White Doe",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a White Doe pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={70576},
},[[
step
Search for a _Frenzybound Doe_
|tip They are level 10-45, depending on your level.
Use your _Tame Beast_ ability on a _Frenzybound Doe_ |cast Tame Beast##1515 |goto Val'sharah/0 63.24,64.89
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Stags\\Greater Stags\\Dark Brown Greater Stag",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Dark Brown Greater Stag pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={70440},
},[[
step
Search for an _Amberfall Greatstag_
|tip They are level 10-45, depending on your level.
Use your _Tame Beast_ ability on an _Amberfall Greatstag_ |cast Tame Beast##1515 |goto Stormheim/0 47.31,50.84
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Stags\\Greater Stags\\Gray Greater Stag",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Gray Greater Stag pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={70442},
},[[
step
Search for a _Ferngrazer Stag_
|tip They are level 10-45, depending on your level.
Use your _Tame Beast_ ability on a _Ferngrazer Stag_ |cast Tame Beast##1515 |goto Stormheim/0 47.05,40.49
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Stags\\Greater Stags\\Orange Greater Stag",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining an Orange Greater Stag pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={70443},
},[[
step
Search for a _Runewood Greatstag_
|tip They are level 10-45, depending on your level.
Use your _Tame Beast_ ability on a _Runewood Greatstag_ |cast Tame Beast##1515 |goto Stormheim/0 66.79,54.87
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Stags\\Greater Stags\\Puce Greater Stag",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Puce Greater Stag pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={70444},
},[[
step
Search for a _Foothills Greatstag_
|tip They are level 10-45, depending on your level.
Use your _Tame Beast_ ability on a _Foothills Greatstag_ |cast Tame Beast##1515 |goto Stormheim/0 51.69,33.47
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Stags\\Greater Stags\\Patterned White Greater Stag",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Patterned White Greater Stag pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={45092},
},[[
step
Search for a _Frenzybound Stag_
|tip They are level 10-45, depending on your level.
Use your _Tame Beast_ ability on a _Frenzybound Stag_ |cast Tame Beast##1515 |goto Val'sharah/0 63.24,64.89
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Stags\\Elderhorns\\Beige Elderhorn",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Beige Elderhorn pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={66004},
},[[
step
Search for a _Highland Elderhorn_
|tip They are level 10-45, depending on your level.
|tip Be aware that Smash will knock you back, interrupting your cast.
Use your _Tame Beast_ ability on a _Highland Elderhorn_ |cast Tame Beast##1515 |goto Highmountain/0 44.76,30.73
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Stags\\Elderhorns\\Black Elderhorn",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Black Elderhorn pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={64256},
},[[
step
Search for _Morashu_
|tip It is level 10-45, depending on your level.
Use your _Tame Beast_ ability on _Morashu_ |cast Tame Beast##1515 |goto Highmountain/0 45.74,42.48
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Stags\\Elderhorns\\Silver Elderhorn",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Silver Elderhorn pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={64893},
},[[
step
map	Highmountain/0
path	follow loose; loop on; ants curved; dist 30
path	45.37,30.04	44.28,27.94	45.70,25.61
path	47.14,25.83	49.16,25.78	50.08,25.80
path	50.06,27.75	48.99,29.05	47.83,30.72
Search for the _Majestic Elderhorn_
|tip It is level 10-45, depending on your level.
|tip Be aware that Foul Smash will knock you back, interrupting your cast.
|tip Follow the path. Majestic Elderhorn will show up as a star on your minimap.
Use your _Tame Beast_ ability on a _Majestic Elderhorn_ |cast Tame Beast##1515
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Stags\\Elderhorns\\Tan Elderhorn",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Tan Elderhorn pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={63734},
},[[
step
Search for a _Pinerock Elderhorn_
|tip They are level 10-45, depending on your level.
|tip Be aware that Smash will knock you back, interrupting your cast.
Use your _Tame Beast_ ability on a _Pinerock Elderhorn_ |cast Tame Beast##1515 |goto Highmountain/0 41.95,48.21
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Stags\\Argus Talbuks\\Blue Spiny Talbuk with Backswept Horns",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue Spiny Talbuk with Backswept Horns pet.",
condition_suggested=function() return level>=45 and (ZGV.CurrentMapID==830 or ZGV.CurrentMapID==831 or ZGV.CurrentMapID==832 or ZGV.CurrentMapID==833) end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={76309},
},[[
step
Search for a _Subdued Ruins Wanderer_
|tip This will only spawn when the rare spawn Wrangler Kravos is present.
|tip They are level 45.
|tip It can spawn in different colors so some patience will be needed.
Use your _Tame Beast_ ability on a _Blue Spiny Talbuk with Backswept Horns_ |cast Tame Beast##1515 |goto Eredath/0 55.73,60.03
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Stags\\Argus Talbuks\\Blue Spiny Talbuk with Side Horns",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue Spiny Talbuk with Side Horns pet.",
condition_suggested=function() return level>=45 and (ZGV.CurrentMapID==830 or ZGV.CurrentMapID==831 or ZGV.CurrentMapID==832 or ZGV.CurrentMapID==833) end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={76305},
},[[
step
Follow the path |goto Krokuun/0 63.10,44.45 |only if walking
Follow the path |goto 64.46,40.45 |only if walking
Search for a _Wild Cragscaler_
|tip They share a spawn with Talbuks of other colors and horn types, so you may need to kill them to force the desired talbuk to spawn.
|tip They are level 45.
Use your _Tame Beast_ ability on a _Blue Spiny Talbuk with Side Horns_ |cast Tame Beast##1515 |goto 66.76,37.32
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Stags\\Argus Talbuks\\Brown Spiny Talbuk with Backswept Horns",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Dark Purple Spiny Talbuk pet.",
condition_suggested=function() return level>=45 and (ZGV.CurrentMapID==830 or ZGV.CurrentMapID==831 or ZGV.CurrentMapID==832 or ZGV.CurrentMapID==833) end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={76305},
},[[
step
Follow the path |goto Krokuun/0 63.10,44.45 |only if walking
Follow the path |goto 64.46,40.45 |only if walking
Search for a _Wild Cragscaler_
|tip They share a spawn with Talbuks of other colors and horn types, so you may need to kill them to force the desired talbuk to spawn.
|tip They are level 45.
Use your _Tame Beast_ ability on a _Brown Spiny Talbuk with Backswept Horns_ |cast Tame Beast##1515 |goto 66.76,37.32
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Stags\\Argus Talbuks\\Brown Spiny Talbuk with Side Horns",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Fel Brown Spiny Talbuk pet.",
condition_suggested=function() return level>=45 and (ZGV.CurrentMapID==830 or ZGV.CurrentMapID==831 or ZGV.CurrentMapID==832 or ZGV.CurrentMapID==833) end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={76299},
},[[
step
Search for a _Chitinbuk Grazer_
|tip They are level 45.
Use your _Tame Beast_ ability on a _Brown Spiny Talbuk with Side Horns_ |cast Tame Beast##1515 |goto Eredath/0 66.2,45.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Stags\\Argus Talbuks\\Fel Brown Talbuk with Backswept Horns",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Fel Maroon Spiny Talbuk pet.",
condition_suggested=function() return level>=45 and (ZGV.CurrentMapID==830 or ZGV.CurrentMapID==831 or ZGV.CurrentMapID==832 or ZGV.CurrentMapID==833) end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={76312},
},[[
step
Search for a _Chitinous Cragscaler_
|tip They are level 45.
Use your _Tame Beast_ ability on a _Fel Brown Talbuk with Backswept Horns_ |cast Tame Beast##1515 |goto Krokuun/0 60.6,59.6
|tip These share a spawn with the Side Horn Talbuks.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Stags\\Argus Talbuks\\Fel Brown Talbuk with Side Horns",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Fel Brown Talbuk with Side Horns pet.",
condition_suggested=function() return level>=45 and (ZGV.CurrentMapID==830 or ZGV.CurrentMapID==831 or ZGV.CurrentMapID==832 or ZGV.CurrentMapID==833) end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={76312},
},[[
step
Search for a _Chitinous Cragscaler_
|tip They are level 45.
Use your _Tame Beast_ ability on a _Fel Brown Talbuk with Side Horns_ |cast Tame Beast##1515 |goto Krokuun/0 60.6,59.6
|tip These share a spawn with Fel Maroon Talbuks.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Stags\\Argus Talbuks\\Fel Maroon Talbuk with Backswept Horns",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Fel Maroon Talbuk with Backswept Horns pet.",
condition_suggested=function() return level>=45 and (ZGV.CurrentMapID==830 or ZGV.CurrentMapID==831 or ZGV.CurrentMapID==832 or ZGV.CurrentMapID==833) end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={76312},
},[[
step
Search for a _Chitinous Cragscaler_
|tip They are level 45.
Use your _Tame Beast_ ability on a _Fel Maroon Talbuk with Backswept Horns_ |cast Tame Beast##1515 |goto Krokuun/0 60.6,59.6
|tip These share a spawn with Fel Brown Talbuks.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Stags\\Argus Talbuks\\Fel Maroon Talbuk with Side Horns",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Fel Maroon Talbuk with Side Horns pet.",
condition_suggested=function() return level>=45 and (ZGV.CurrentMapID==830 or ZGV.CurrentMapID==831 or ZGV.CurrentMapID==832 or ZGV.CurrentMapID==833) end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={76312},
},[[
step
Search for a _Chitinous Cragscaler_
|tip They are level 45.
Use your _Tame Beast_ ability on a _Fel Maroon Talbuk with Side Horns_ |cast Tame Beast##1515 |goto Krokuun/0 60.6,59.6
|tip These share a spawn with Fel Brown Talbuks.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Stags\\Argus Talbuks\\Orange Talbuk with Backswept Horns",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining an Orange Talbuk with Backswept Horns pet.",
condition_suggested=function() return level>=45 and (ZGV.CurrentMapID==830 or ZGV.CurrentMapID==831 or ZGV.CurrentMapID==832 or ZGV.CurrentMapID==833) end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={76309},
},[[
step
Search for a _Chitinbuk Ruinwalker_
|tip They are level 45.
Use your _Tame Beast_ ability on a _Orange Talbuk with Backswept Horns_ |cast Tame Beast##1515 |goto Eredath/0 50.78,57.19
|tip These share a spawn with other talbuks in the area.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Stags\\Argus Talbuks\\Purple Talbuk With Side Horns",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Purple Talbuk With Side Horns pet.",
condition_suggested=function() return level>=45 and (ZGV.CurrentMapID==830 or ZGV.CurrentMapID==831 or ZGV.CurrentMapID==832 or ZGV.CurrentMapID==833) end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={76406},
},[[
step
Search for a _Shadowcrazed Chitinbuk_
|tip They are level 45.
Use your _Tame Beast_ ability on a _Purple Talbuk with Side Horns_ |cast Tame Beast##1515 |goto Eredath/0 41.29,52.81
|tip There will likely only be one in this area, but they respawn quickly.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Stags\\Argus Talbuks\\Purple With Backswept Horns",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Purple Talbuk With Backswept Horns pet.",
condition_suggested=function() return level>=45 and (ZGV.CurrentMapID==830 or ZGV.CurrentMapID==831 or ZGV.CurrentMapID==832 or ZGV.CurrentMapID==833) end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={77157},
},[[
step
Search for a _Skittish Chitinbuk_
|tip They are level 45.
Use your _Tame Beast_ ability on a _Puple Talbuk with Backswept Horns_ |cast Tame Beast##1515 |goto Eredath/0 41.29,52.81
|tip There will likely only be one in this area, but they respawn quickly.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Stags\\Argus Talbuks\\Red-Brown Talbuk with Backswept Horns",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red-Brown Talbuk with Backswept Horns pet.",
condition_suggested=function() return level>=45 and (ZGV.CurrentMapID==830 or ZGV.CurrentMapID==831 or ZGV.CurrentMapID==832 or ZGV.CurrentMapID==833) end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={77157},
},[[
step
Search for a _Skittish Chitinbuk_
|tip They are level 45.
Use your _Tame Beast_ ability on a _Red-Brown Talbuk with Backswept Horns_ |cast Tame Beast##1515 |goto Eredath/0 41.29,52.81
|tip These share spawns with other types of Talbuks in the area.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Stags\\Argus Talbuks\\Teal-Grey Talbuk with Backswept Horns",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Teal-Grey Talbuk with Backswept Horns pet.",
condition_suggested=function() return level>=45 and (ZGV.CurrentMapID==830 or ZGV.CurrentMapID==831 or ZGV.CurrentMapID==832 or ZGV.CurrentMapID==833) end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={77157},
},[[
step
Search for a _Skittish Chitinbuk_
|tip They are level 45.
Use your _Tame Beast_ ability on a _Teal-Grey Talbuk with Backswept Horns_ |cast Tame Beast##1515 |goto Eredath/0 42.90,53.71
|tip These share spawns with other types of Talbuks in the area.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Stags\\Argus Talbuks\\White Talbuk with Backswept Horns",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a White Talbuk with Backswept Horns pet.",
condition_suggested=function() return level>=45 and (ZGV.CurrentMapID==830 or ZGV.CurrentMapID==831 or ZGV.CurrentMapID==832 or ZGV.CurrentMapID==833) end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={77157},
},[[
step
Search for a _Skittish Chitinbuk_
|tip They are level 45.
Use your _Tame Beast_ ability on a _White Talbuk with Backswept Horns_ |cast Tame Beast##1515 |goto Eredath/0 42.90,53.71
|tip These share spawns with other types of Talbuks in the area.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Wolves\\Dire Worgs\\Dark Gray Dire Worg",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Dark Gray Dire Worg pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={70178},
},[[
step
Search for a _Duskpelt Snarler_
|tip They are level 10-45, depending on your level.
Use your _Tame Beast_ ability on a _Duskpelt Snarler_ |cast Tame Beast##1515 |goto Stormheim/0 48.01,57.22
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Wolves\\Dire Worgs\\Light Gray Dire Worg",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Light Gray Dire Worg pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={71540},
},[[
step
Search for _Bloodstalker Alpha_
|tip It is level 10-45, depending on your level.
|tip The alpha runs a short path around this area. Look for the star on your minimap.
Use your _Tame Beast_ ability on _Bloodstalker Alpha_ |cast Tame Beast##1515 |goto Stormheim/0 37.78,40.98
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Wolves\\Dire Worgs\\Tan Dire Worg",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Tan Dire Worg pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={70179},
},[[
step
Search for a _Saberfang Worg_
|tip They are level 10-45, depending on your level.
Use your _Tame Beast_ ability on a _Saberfang Worg_ |cast Tame Beast##1515 |goto Stormheim/0 38.44,43.15
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Wolves\\Maned Wolves\\Auburn Maned Wolf",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining an Auburn Maned Wolf pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={62862},
},[[
step
Search for a _Jandvik Ripfang_ |only if not completedq(40907)
|tip It is level 45. |only if not completedq(40907)
|tip This mob is only available to tame if you have not completed the quest "Removing Obstacles" |only if not completedq(40907)
Use your _Tame Beast_ ability on a _Jandvik Ripfang_ |cast Tame Beast##1515 |goto Suramar/0 68.93,49.58 |only if not completedq(40907)
You have completed the quest _"Removing Obstacles"_. Unfortunately, you cannot tame this unique pet model |only if completedq(40907)
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Wolves\\Maned Wolves\\Dark Brown Maned Wolf",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Dark Brown Maned Wolf pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={66640},
},[[
step
Search for a _Dusky Howler_
|tip They are level 10-45, depending on your level.
Use your _Tame Beast_ ability on a _Dusky Howler_ |cast Tame Beast##1515 |goto Val'sharah/0 45.94,57.89
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Ground Pets\\Wolves\\Scarred Worgs\\Battle-Scarred Runed Worg",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Battle-Scarred Runed Worg pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={64466},
},[[
step
kill Fenryr##99868
Click here to load the Halls of Valor dungeon guide |confirm |next "Dungeon Guides\\Legion Dungeons\\Halls of Valor"
|tip You will need to defeat Fenryr in the Halls of Valor on Mythic difficulty
|tip It is possible to do solo, using Feign Death and Misdirection to reach the bosses.
|tip Travel to the Field of the Eternal Hunt. You can take the hallway to the right when entering the building.
|tip After defeating Fenryr, a tameable version will appear
Use your _Tame Beast_ ability on _Fenryr_ |cast Tame Beast##1515 |goto Halls of Valor/2 29.16,75.71
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Flying Pets\\Bats\\Greater Bats\\Green Greater Bat",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green Greater Bat pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={53767},
},[[
step
Enter the cave |goto Highmountain/0 38.49,42.70 < 20
Search for a _Duskwing Shrieker_
|tip They are level 10-45, depending on your level.
Use your _Tame Beast_ ability on a _Duskwing Shrieker_ |cast Tame Beast##1515 |goto Highmountain/16 50.88,67.23
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Flying Pets\\Birds of Prey\\Eagles\\Brown Eagle (Legion)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Brown Eagle pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={68157},
},[[
step
Search for a _Galecrested Eagle_
|tip They are level 10-45, depending on your level.
Use your _Tame Beast_ ability on a _Galecrested Eagle_ |cast Tame Beast##1515 |goto Stormheim/0 50.52,34.65
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Flying Pets\\Birds of Prey\\Eagles\\Dark Brown Eagle",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Dark Brown Eagle pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={22255},
},[[
step
Search for an _Azsunian Oliveback_
|tip They are level 10-45, depending on your level.
|tip A flock of Olivebacks fly past this point. It is easiest to wait for them here.
|tip You will have to shoot one down to get it into taming range.
Use your _Tame Beast_ ability on an _Azsunian Oliveback_ |cast Tame Beast##1515 |goto Azsuna/0 50.19,32.20
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Flying Pets\\Birds of Prey\\Eagles\\Light Brown Eagle",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Light Brown Eagle pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={62207},
},[[
step
Search for a _Highcrag Eagle_
|tip They are level 10-45, depending on your level.
|tip You may have to search around the area for one, as they will often fly around.
Use your _Tame Beast_ ability on a _Highcrag Eagle_ |cast Tame Beast##1515 |goto Stormheim/0 37.41,46.02
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Flying Pets\\Birds of Prey\\Eagles\\White Eagle",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a White Eagle pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={43225},
},[[
step
Search for an _Azsunian Kingfeather_
|tip They are level 10-45, depending on your level.
|tip A flock of Olivebacks fly past this point. There is an Azsunian Kingfeather with them.
|tip You will have to shoot it down to get it into taming range.
|tip Be aware that Gust will knock you back, interrupting your cast.
Use your _Tame Beast_ ability on a _Azsunian Kingfeather_ |cast Tame Beast##1515 |goto Azsuna/0 50.19,32.20
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Flying Pets\\Birds of Prey\\Warden Owls\\Brown Warden Owl",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Brown Warden Owl pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={64329},
},[[
step
Search for a _Llothien Owl_
|tip They are level 10-45, depending on your level.
|tip You may have to search around the area for one, as they will often fly around.
Use your _Tame Beast_ ability on a _Llothien Owl_ |cast Tame Beast##1515 |goto Azsuna/0 52.33,26.91
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Flying Pets\\Birds of Prey\\Warden Owls\\Dark Warden Owl",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Dark Warden Owl pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={66835},
},[[
step
Search for a _Cursefeather Owl_
|tip They are level 10-45, depending on your level.
|tip You may have to search around the area for one, as they will often fly around.
Use your _Tame Beast_ ability on a _Cursefeather Owl_ |cast Tame Beast##1515 |goto Azsuna/0 51.13,55.60
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Flying Pets\\Birds of Prey\\Warden Owls\\Pale Warden Owl",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Pale Warden Owl pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={64331},
},[[
step
Search for a _Silvered Streaker_
|tip They are level 10-45, depending on your level.
|tip A Silvered Streaker will fly by this area. You will have to shoot it down to get it into taming range.
Use your _Tame Beast_ ability on a _Silvered Streaker_ |cast Tame Beast##1515 |goto Val'sharah/0 59.36,66.99
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Flying Pets\\Birds of Prey\\Warden Owls\\Purple Warden Owl",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Purple Warden Owl pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={64330},
},[[
step
Search for a _Deepwoods Owl_
|tip They are level 10-45, depending on your level.
|tip You may have to search around the area for one, as they will often fly around.
Use your _Tame Beast_ ability on a _Deepwoods Owl_ |cast Tame Beast##1515 |goto Val'sharah/0 50.19,77.31
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Flying Pets\\Carrion Birds\\Ravens\\Raven",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Raven pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={32546},
},[[
step
Search for a _Gluttonous Raven_
|tip They are level 10-45, depending on your level.
Use your _Tame Beast_ ability on a _Gluttonous Raven_ |cast Tame Beast##1515 |goto Stormheim/0 60.46,51.17
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Flying Pets\\Feathermanes\\Grand Hippogryphs\\Arcane Purple Grand Hippogryph",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining an Arcane Purple Grand Hippogryph pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={63623},
},[[
step
To start, you will need to complete the _Power Ascended_ achievement
Click here to load the "Power Ascended" achievement guide |confirm |next "Achievement Guides\\Legacy\\Expansion Features\\Power Ascended"
|tip This will need to be completed on the character you are trying to use.
If you have already acquired the Tome of Hybrid Beasts, click here |confirm |next "tame"
Earn the _Power Ascended_ achievement |achieve 11772
step
Next, you will need to complete the _Breaching the Tomb_ achievement
Click here to load the "Breaching the Tomb" achievement guide |confirm |next "Achievement Guides\\Quests\\Legion\\Breaching the Tomb"
|tip This will need to be completed on the character you are trying to use.
Earn the _Breaching the Tomb_ achievement |achieve 11546
step
Next, you will need to unlock your Class Hall Mount
|tip Refer to the 7.2 Order Hall Quests guide to accomplish this.
Click here to load the "Hunter 7.2 Order Hall Quest" leveling guide |confirm |next "Leveling Guides\\Legion (10-50)\\Hunter\\Hunter 7.2 Order Hall Quests" |only Hunter
Click here to continue |confirm
step
Next, you will need to complete the _Broken Isles Pathfinder, Part One_ achievement
Click here to load the Broken Isles Pathfinder, Part One achievement guide |confirm |next "Achievement Guides\\Class Hall\\Legion\\Broken Isles Pathfinder, Part One"
Earn the _Broken Isles Pathfinder, Part One_ achievement |achieve 11190
step
Next, you will need to complete the _Broken Isles Pathfinder, Part Two_ achievement
Click here to load the "Broken Isles Pathfinder, Part Two" achievement guide |confirm |next "Achievement Guides\\Exploration\\Legion\\Broken Isles Pathfinder, Part Two"
Earn the _Broken Isles Pathfinder, Part Two_ achievement |achieve 11446
step
Once you have completed the previous steps, you will need 1,000 Order Hall Resources
talk Pan the Kind Hand##100661
buy Tome of the Hybrid Beast##147580 |n |goto Trueshot Lodge/0 58.79,31.77
|tip If you have already acquired the Tome of Hybrid Beasts, skip this step.
collect 1 Tome of the Hybrid Beast##147580
step
label "tame"
Search for _Netherbeak_
|tip You will need to use Aspect of the Turtle when it aggros you, as it deals a lot of damage.
|tip You will also need to be using Track Hidden for it to aggro you.
|tip It is level 10-45, depending on your level.
Use your _Tame Beast_ ability on _Netherbeak_ |cast Tame Beast##1515 |goto Azsuna/0 43.6,24.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Flying Pets\\Feathermanes\\Grand Hippogryphs\\Blue and Gold Grand Hippogryph",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue and Gold Grand Hippogryph pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={63631},
},[[
step
To start, you will need to complete the _Power Ascended_ achievement
Click here to load the "Power Ascended" achievement guide |confirm |next "Achievement Guides\\Legacy\\Expansion Features\\Power Ascended"
|tip This will need to be completed on the character you are trying to use.
If you have already acquired the Tome of Hybrid Beasts, click here |confirm |next "tame"
Earn the _Power Ascended_ achievement |achieve 11772
step
Next, you will need to complete the _Breaching the Tomb_ achievement
Click here to load the "Breaching the Tomb" achievement guide |confirm |next "Achievement Guides\\Quests\\Legion\\Breaching the Tomb"
|tip This will need to be completed on the character you are trying to use.
Earn the _Breaching the Tomb_ achievement |achieve 11546
step
Next, you will need to unlock your Class Hall Mount
|tip Refer to the 7.2 Order Hall Quests guide to accomplish this.
Click here to load the "Hunter 7.2 Order Hall Quest" leveling guide |confirm |next "Leveling Guides\\Legion (10-50)\\Hunter\\Hunter 7.2 Order Hall Quests" |only Hunter
Click here to continue |confirm
step
Next, you will need to complete the _Broken Isles Pathfinder, Part One_ achievement
Click here to load the Broken Isles Pathfinder, Part One achievement guide |confirm |next "Achievement Guides\\Class Hall\\Legion\\Broken Isles Pathfinder, Part One"
Earn the _Broken Isles Pathfinder, Part One_ achievement |achieve 11190
step
Next, you will need to complete the _Broken Isles Pathfinder, Part Two_ achievement
Click here to load the "Broken Isles Pathfinder, Part Two" achievement guide |confirm |next "Achievement Guides\\Exploration\\Legion\\Broken Isles Pathfinder, Part Two"
Earn the _Broken Isles Pathfinder, Part Two_ achievement |achieve 11446
step
Once you have completed the previous steps, you will need 1,000 Order Hall Resources
talk Pan the Kind Hand##100661
buy Tome of the Hybrid Beast##147580 |n |goto Trueshot Lodge/0 58.79,31.77
|tip If you have already acquired the Tome of Hybrid Beasts, skip this step.
collect 1 Tome of the Hybrid Beast##147580
step
label "tame"
Search for a _Tormented Stagwing_
|tip They are level 10-45, depending on your level.
Use your _Tame Beast_ ability on _Tormented Stagwing_ |cast Tame Beast##1515 |goto Azsuna/0 48.8,10.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Flying Pets\\Feathermanes\\Grand Hippogryphs\\Green and Red Grand Hippogryph",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green and Red Grand Hippogryph pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={64535},
},[[
step
To start, you will need to complete the _Power Ascended_ achievement
Click here to load the "Power Ascended" achievement guide |confirm |next "Achievement Guides\\Legacy\\Expansion Features\\Power Ascended"
|tip This will need to be completed on the character you are trying to use.
If you have already acquired the Tome of Hybrid Beasts, click here |confirm |next "tame"
Earn the _Power Ascended_ achievement |achieve 11772
step
Next, you will need to complete the _Breaching the Tomb_ achievement
Click here to load the "Breaching the Tomb" achievement guide |confirm |next "Achievement Guides\\Quests\\Legion\\Breaching the Tomb"
|tip This will need to be completed on the character you are trying to use.
Earn the _Breaching the Tomb_ achievement |achieve 11546
step
Next, you will need to unlock your Class Hall Mount
|tip Refer to the 7.2 Order Hall Quests guide to accomplish this.
Click here to load the "Hunter 7.2 Order Hall Quest" leveling guide |confirm |next "Leveling Guides\\Legion (10-50)\\Hunter\\Hunter 7.2 Order Hall Quests" |only Hunter
Click here to continue |confirm
step
Next, you will need to complete the _Broken Isles Pathfinder, Part One_ achievement
Click here to load the Broken Isles Pathfinder, Part One achievement guide |confirm |next "Achievement Guides\\Class Hall\\Legion\\Broken Isles Pathfinder, Part One"
Earn the _Broken Isles Pathfinder, Part One_ achievement |achieve 11190
step
Next, you will need to complete the _Broken Isles Pathfinder, Part Two_ achievement
Click here to load the "Broken Isles Pathfinder, Part Two" achievement guide |confirm |next "Achievement Guides\\Exploration\\Legion\\Broken Isles Pathfinder, Part Two"
Earn the _Broken Isles Pathfinder, Part Two_ achievement |achieve 11446
step
Once you have completed the previous steps, you will need 1,000 Order Hall Resources
talk Pan the Kind Hand##100661
buy Tome of the Hybrid Beast##147580 |n |goto Trueshot Lodge/0 58.79,31.77
|tip If you have already acquired the Tome of Hybrid Beasts, skip this step.
collect 1 Tome of the Hybrid Beast##147580
step
label "tame"
Search for _Daggerbeak_
|tip It is level 10-45, depending on your level.
Use your _Tame Beast_ ability on _Daggerbeak_ |cast Tame Beast##1515 |goto Azsuna/0 51.0,31.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Flying Pets\\Feathermanes\\Gryphons\\Black Gryphon",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Black Gryphon pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={76364},
},[[
step
To start, you will need to complete the _Power Ascended_ achievement
Click here to load the "Power Ascended" achievement guide |confirm |next "Achievement Guides\\Legacy\\Expansion Features\\Power Ascended"
|tip This will need to be completed on the character you are trying to use.
If you have already acquired the Tome of Hybrid Beasts, click here |confirm |next "tame"
Earn the _Power Ascended_ achievement |achieve 11772
step
Next, you will need to complete the _Breaching the Tomb_ achievement
Click here to load the "Breaching the Tomb" achievement guide |confirm |next "Achievement Guides\\Quests\\Legion\\Breaching the Tomb"
|tip This will need to be completed on the character you are trying to use.
Earn the _Breaching the Tomb_ achievement |achieve 11546
step
Next, you will need to unlock your Class Hall Mount
|tip Refer to the 7.2 Order Hall Quests guide to accomplish this.
Click here to load the "Hunter 7.2 Order Hall Quest" leveling guide |confirm |next "Leveling Guides\\Legion (10-50)\\Hunter\\Hunter 7.2 Order Hall Quests" |only Hunter
Click here to continue |confirm
step
Next, you will need to complete the _Broken Isles Pathfinder, Part One_ achievement
Click here to load the Broken Isles Pathfinder, Part One achievement guide |confirm |next "Achievement Guides\\Class Hall\\Legion\\Broken Isles Pathfinder, Part One"
Earn the _Broken Isles Pathfinder, Part One_ achievement |achieve 11190
step
Next, you will need to complete the _Broken Isles Pathfinder, Part Two_ achievement
Click here to load the "Broken Isles Pathfinder, Part Two" achievement guide |confirm |next "Achievement Guides\\Exploration\\Legion\\Broken Isles Pathfinder, Part Two"
Earn the _Broken Isles Pathfinder, Part Two_ achievement |achieve 11446
step
Once you have completed the previous steps, you will need 1,000 Order Hall Resources
talk Pan the Kind Hand##100661
buy Tome of the Hybrid Beast##147580 |n |goto Trueshot Lodge/0 58.79,31.77
|tip If you have already acquired the Tome of Hybrid Beasts, skip this step.
collect 1 Tome of the Hybrid Beast##147580
step
label "tame"
Search for _Jetwing_
|tip It flies around high in the air.
|tip It is level 10-45, depending on your level.
|tip When you find Jetwing, use Concussive Shot to aggro it.
|tip When you are about to reach the ground, use Disengage to avoid being killed from the fall damage.
Use your _Tame Beast_ ability on _Jetwing_ |cast Tame Beast##1515 |goto The Hinterlands/0 42.4,54.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Flying Pets\\Feathermanes\\Gryphons\\Brown Gryphon",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Brown Gryphon pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={935},
},[[
step
To start, you will need to complete the _Power Ascended_ achievement
Click here to load the "Power Ascended" achievement guide |confirm |next "Achievement Guides\\Legacy\\Expansion Features\\Power Ascended"
|tip This will need to be completed on the character you are trying to use.
If you have already acquired the Tome of Hybrid Beasts, click here |confirm |next "tame"
Earn the _Power Ascended_ achievement |achieve 11772
step
Next, you will need to complete the _Breaching the Tomb_ achievement
Click here to load the "Breaching the Tomb" achievement guide |confirm |next "Achievement Guides\\Quests\\Legion\\Breaching the Tomb"
|tip This will need to be completed on the character you are trying to use.
Earn the _Breaching the Tomb_ achievement |achieve 11546
step
Next, you will need to unlock your Class Hall Mount
|tip Refer to the 7.2 Order Hall Quests guide to accomplish this.
Click here to load the "Hunter 7.2 Order Hall Quest" leveling guide |confirm |next "Leveling Guides\\Legion (10-50)\\Hunter\\Hunter 7.2 Order Hall Quests" |only Hunter
Click here to continue |confirm
step
Next, you will need to complete the _Broken Isles Pathfinder, Part One_ achievement
Click here to load the Broken Isles Pathfinder, Part One achievement guide |confirm |next "Achievement Guides\\Class Hall\\Legion\\Broken Isles Pathfinder, Part One"
Earn the _Broken Isles Pathfinder, Part One_ achievement |achieve 11190
step
Next, you will need to complete the _Broken Isles Pathfinder, Part Two_ achievement
Click here to load the "Broken Isles Pathfinder, Part Two" achievement guide |confirm |next "Achievement Guides\\Exploration\\Legion\\Broken Isles Pathfinder, Part Two"
Earn the _Broken Isles Pathfinder, Part Two_ achievement |achieve 11446
step
Once you have completed the previous steps, you will need 1,000 Order Hall Resources
talk Pan the Kind Hand##100661
buy Tome of the Hybrid Beast##147580 |n |goto Trueshot Lodge/0 58.79,31.77
|tip If you have already acquired the Tome of Hybrid Beasts, skip this step.
collect 1 Tome of the Hybrid Beast##147580
step
label "tame"
Search for a _Wild Gryphon_
|tip They are level 7-30, depending on your level.
Use your _Tame Beast_ ability on a _Wild Gryphon_ |cast Tame Beast##1515 |goto Hillsbrad Foothills/0 67.6,53.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Flying Pets\\Feathermanes\\Gryphons\\White Gryphon",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a White Gryphon pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={76365},
},[[
step
To start, you will need to complete the _Power Ascended_ achievement
Click here to load the "Power Ascended" achievement guide |confirm |next "Achievement Guides\\Legacy\\Expansion Features\\Power Ascended"
|tip This will need to be completed on the character you are trying to use.
If you have already acquired the Tome of Hybrid Beasts, click here |confirm |next "tame"
Earn the _Power Ascended_ achievement |achieve 11772
step
Next, you will need to complete the _Breaching the Tomb_ achievement
Click here to load the "Breaching the Tomb" achievement guide |confirm |next "Achievement Guides\\Quests\\Legion\\Breaching the Tomb"
|tip This will need to be completed on the character you are trying to use.
Earn the _Breaching the Tomb_ achievement |achieve 11546
step
Next, you will need to unlock your Class Hall Mount
|tip Refer to the 7.2 Order Hall Quests guide to accomplish this.
Click here to load the "Hunter 7.2 Order Hall Quest" leveling guide |confirm |next "Leveling Guides\\Legion (10-50)\\Hunter\\Hunter 7.2 Order Hall Quests" |only Hunter
Click here to continue |confirm
step
Next, you will need to complete the _Broken Isles Pathfinder, Part One_ achievement
Click here to load the Broken Isles Pathfinder, Part One achievement guide |confirm |next "Achievement Guides\\Class Hall\\Legion\\Broken Isles Pathfinder, Part One"
Earn the _Broken Isles Pathfinder, Part One_ achievement |achieve 11190
step
Next, you will need to complete the _Broken Isles Pathfinder, Part Two_ achievement
Click here to load the "Broken Isles Pathfinder, Part Two" achievement guide |confirm |next "Achievement Guides\\Exploration\\Legion\\Broken Isles Pathfinder, Part Two"
Earn the _Broken Isles Pathfinder, Part Two_ achievement |achieve 11446
step
Once you have completed the previous steps, you will need 1,000 Order Hall Resources
talk Pan the Kind Hand##100661
buy Tome of the Hybrid Beast##147580 |n |goto Trueshot Lodge/0 58.79,31.77
|tip If you have already acquired the Tome of Hybrid Beasts, skip this step.
collect 1 Tome of the Hybrid Beast##147580
step
label "tame"
Click the nearby nest
|tip It may take a few clicks before Snowblind begins to fly down towards you.
|tip They are level 15-30, depending on your level.
Use your _Tame Beast_ ability on _Snowblind_ |cast Tame Beast##1515 |goto Winterspring/0 62.6,24.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Flying Pets\\Feathermanes\\Hippogryphs\\Blue Hippogryph",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue Hippogryph pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={63631},
},[[
step
To start, you will need to complete the _Power Ascended_ achievement
Click here to load the "Power Ascended" achievement guide |confirm |next "Achievement Guides\\Legacy\\Expansion Features\\Power Ascended"
|tip This will need to be completed on the character you are trying to use.
If you have already acquired the Tome of Hybrid Beasts, click here |confirm |next "tame"
Earn the _Power Ascended_ achievement |achieve 11772
step
Next, you will need to complete the _Breaching the Tomb_ achievement
Click here to load the "Breaching the Tomb" achievement guide |confirm |next "Achievement Guides\\Quests\\Legion\\Breaching the Tomb"
|tip This will need to be completed on the character you are trying to use.
Earn the _Breaching the Tomb_ achievement |achieve 11546
step
Next, you will need to unlock your Class Hall Mount
|tip Refer to the 7.2 Order Hall Quests guide to accomplish this.
Click here to load the "Hunter 7.2 Order Hall Quest" leveling guide |confirm |next "Leveling Guides\\Legion (10-50)\\Hunter\\Hunter 7.2 Order Hall Quests" |only Hunter
Click here to continue |confirm
step
Next, you will need to complete the _Broken Isles Pathfinder, Part One_ achievement
Click here to load the Broken Isles Pathfinder, Part One achievement guide |confirm |next "Achievement Guides\\Class Hall\\Legion\\Broken Isles Pathfinder, Part One"
Earn the _Broken Isles Pathfinder, Part One_ achievement |achieve 11190
step
Next, you will need to complete the _Broken Isles Pathfinder, Part Two_ achievement
Click here to load the "Broken Isles Pathfinder, Part Two" achievement guide |confirm |next "Achievement Guides\\Exploration\\Legion\\Broken Isles Pathfinder, Part Two"
Earn the _Broken Isles Pathfinder, Part Two_ achievement |achieve 11446
step
Once you have completed the previous steps, you will need 1,000 Order Hall Resources
talk Pan the Kind Hand##100661
buy Tome of the Hybrid Beast##147580 |n |goto Trueshot Lodge/0 58.79,31.77
|tip If you have already acquired the Tome of Hybrid Beasts, skip this step.
collect 1 Tome of the Hybrid Beast##147580
step
label "tame"
You will need to use the _"/pat"_ and _"/roar"_ emotes on Feathermanes in the area to force Skystormer to spawn
|tip It is level 15-30, depending on your level.
Use your _Tame Beast_ ability on _Skystormer_ |cast Tame Beast##1515 |goto Feralas/0 53.6,64.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Flying Pets\\Feathermanes\\Hippogryphs\\Brown and White Hippogryph",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Brown and White Hippogryph pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={10891},
},[[
step
To start, you will need to complete the _Power Ascended_ achievement
Click here to load the "Power Ascended" achievement guide |confirm |next "Achievement Guides\\Legacy\\Expansion Features\\Power Ascended"
|tip This will need to be completed on the character you are trying to use.
If you have already acquired the Tome of Hybrid Beasts, click here |confirm |next "tame"
Earn the _Power Ascended_ achievement |achieve 11772
step
Next, you will need to complete the _Breaching the Tomb_ achievement
Click here to load the "Breaching the Tomb" achievement guide |confirm |next "Achievement Guides\\Quests\\Legion\\Breaching the Tomb"
|tip This will need to be completed on the character you are trying to use.
Earn the _Breaching the Tomb_ achievement |achieve 11546
step
Next, you will need to unlock your Class Hall Mount
|tip Refer to the 7.2 Order Hall Quests guide to accomplish this.
Click here to load the "Hunter 7.2 Order Hall Quest" leveling guide |confirm |next "Leveling Guides\\Legion (10-50)\\Hunter\\Hunter 7.2 Order Hall Quests" |only Hunter
Click here to continue |confirm
step
Next, you will need to complete the _Broken Isles Pathfinder, Part One_ achievement
Click here to load the Broken Isles Pathfinder, Part One achievement guide |confirm |next "Achievement Guides\\Class Hall\\Legion\\Broken Isles Pathfinder, Part One"
Earn the _Broken Isles Pathfinder, Part One_ achievement |achieve 11190
step
Next, you will need to complete the _Broken Isles Pathfinder, Part Two_ achievement
Click here to load the "Broken Isles Pathfinder, Part Two" achievement guide |confirm |next "Achievement Guides\\Exploration\\Legion\\Broken Isles Pathfinder, Part Two"
Earn the _Broken Isles Pathfinder, Part Two_ achievement |achieve 11446
step
Once you have completed the previous steps, you will need 1,000 Order Hall Resources
talk Pan the Kind Hand##100661
buy Tome of the Hybrid Beast##147580 |n |goto Trueshot Lodge/0 58.79,31.77
|tip If you have already acquired the Tome of Hybrid Beasts, skip this step.
collect 1 Tome of the Hybrid Beast##147580
step
label "tame"
Search for a _Spotted Hippogryph_
|tip They are level 10-30, depending on your level.
Use your _Tame Beast_ ability on _Spotted Hippogryph_ |cast Tame Beast##1515 |goto Howling Fjord/0 57.8,19.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Flying Pets\\Feathermanes\\Hippogryphs\\Dark Hippogryph",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Dark Hippogryph pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={6757},
},[[
step
To start, you will need to complete the _Power Ascended_ achievement
Click here to load the "Power Ascended" achievement guide |confirm |next "Achievement Guides\\Legacy\\Expansion Features\\Power Ascended"
|tip This will need to be completed on the character you are trying to use.
If you have already acquired the Tome of Hybrid Beasts, click here |confirm |next "tame"
Earn the _Power Ascended_ achievement |achieve 11772
step
Next, you will need to complete the _Breaching the Tomb_ achievement
Click here to load the "Breaching the Tomb" achievement guide |confirm |next "Achievement Guides\\Quests\\Legion\\Breaching the Tomb"
|tip This will need to be completed on the character you are trying to use.
Earn the _Breaching the Tomb_ achievement |achieve 11546
step
Next, you will need to unlock your Class Hall Mount
|tip Refer to the 7.2 Order Hall Quests guide to accomplish this.
Click here to load the "Hunter 7.2 Order Hall Quest" leveling guide |confirm |next "Leveling Guides\\Legion (10-50)\\Hunter\\Hunter 7.2 Order Hall Quests" |only Hunter
Click here to continue |confirm
step
Next, you will need to complete the _Broken Isles Pathfinder, Part One_ achievement
Click here to load the Broken Isles Pathfinder, Part One achievement guide |confirm |next "Achievement Guides\\Class Hall\\Legion\\Broken Isles Pathfinder, Part One"
Earn the _Broken Isles Pathfinder, Part One_ achievement |achieve 11190
step
Next, you will need to complete the _Broken Isles Pathfinder, Part Two_ achievement
Click here to load the "Broken Isles Pathfinder, Part Two" achievement guide |confirm |next "Achievement Guides\\Exploration\\Legion\\Broken Isles Pathfinder, Part Two"
Earn the _Broken Isles Pathfinder, Part Two_ achievement |achieve 11446
step
Once you have completed the previous steps, you will need 1,000 Order Hall Resources
talk Pan the Kind Hand##100661
buy Tome of the Hybrid Beast##147580 |n |goto Trueshot Lodge/0 58.79,31.77
|tip If you have already acquired the Tome of Hybrid Beasts, skip this step.
collect 1 Tome of the Hybrid Beast##147580
step
label "tame"
Search for a _Thunderhead Hippogryph_
|tip They are level 5-30, depending on your level.
Use your _Tame Beast_ ability on _Thunderhead Hippogryph_ |cast Tame Beast##1515 |goto Azshara/0 50.4,18.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Flying Pets\\Feathermanes\\Hippogryphs\\Fel Green Hippogryph",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Fel Green Hippogryph pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={76357},
},[[
step
To start, you will need to complete the _Power Ascended_ achievement
Click here to load the "Power Ascended" achievement guide |confirm |next "Achievement Guides\\Legacy\\Expansion Features\\Power Ascended"
|tip This will need to be completed on the character you are trying to use.
If you have already acquired the Tome of Hybrid Beasts, click here |confirm |next "tame"
Earn the _Power Ascended_ achievement |achieve 11772
step
Next, you will need to complete the _Breaching the Tomb_ achievement
Click here to load the "Breaching the Tomb" achievement guide |confirm |next "Achievement Guides\\Quests\\Legion\\Breaching the Tomb"
|tip This will need to be completed on the character you are trying to use.
Earn the _Breaching the Tomb_ achievement |achieve 11546
step
Next, you will need to unlock your Class Hall Mount
|tip Refer to the 7.2 Order Hall Quests guide to accomplish this.
Click here to load the "Hunter 7.2 Order Hall Quest" leveling guide |confirm |next "Leveling Guides\\Legion (10-50)\\Hunter\\Hunter 7.2 Order Hall Quests" |only Hunter
Click here to continue |confirm
step
Next, you will need to complete the _Broken Isles Pathfinder, Part One_ achievement
Click here to load the Broken Isles Pathfinder, Part One achievement guide |confirm |next "Achievement Guides\\Class Hall\\Legion\\Broken Isles Pathfinder, Part One"
Earn the _Broken Isles Pathfinder, Part One_ achievement |achieve 11190
step
Next, you will need to complete the _Broken Isles Pathfinder, Part Two_ achievement
Click here to load the "Broken Isles Pathfinder, Part Two" achievement guide |confirm |next "Achievement Guides\\Exploration\\Legion\\Broken Isles Pathfinder, Part Two"
Earn the _Broken Isles Pathfinder, Part Two_ achievement |achieve 11446
step
Once you have completed the previous steps, you will need 1,000 Order Hall Resources
talk Pan the Kind Hand##100661
buy Tome of the Hybrid Beast##147580 |n |goto Trueshot Lodge/0 58.79,31.77
|tip If you have already acquired the Tome of Hybrid Beasts, skip this step.
collect 1 Tome of the Hybrid Beast##147580
step
label "tame"
This pet is only available to be tamed while the World Quest _"The Nighthold: Love Tap"_ is available
|tip This pet will only be available on Normal difficulty or higher.
Click here to load the "Nighthold - Normal/Heroic" raid guide |confirm |next "Dungeon Guides\\Legion Raids\\Nighthold - Normal/Heroic"
Search for _Lalathin_
|tip It is level 45.
Use your _Tame Beast_ ability on _Lalathin_ |cast Tame Beast##1515
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Flying Pets\\Feathermanes\\Hippogryphs\\Pale Hippogryph (Rare Spawn)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Pale Hippogryph pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={10889},
},[[
step
To start, you will need to complete the _Power Ascended_ achievement
Click here to load the "Power Ascended" achievement guide |confirm |next "Achievement Guides\\Legacy\\Expansion Features\\Power Ascended"
|tip This will need to be completed on the character you are trying to use.
If you have already acquired the Tome of Hybrid Beasts, click here |confirm |next "tame"
Earn the _Power Ascended_ achievement |achieve 11772
step
Next, you will need to complete the _Breaching the Tomb_ achievement
Click here to load the "Breaching the Tomb" achievement guide |confirm |next "Achievement Guides\\Quests\\Legion\\Breaching the Tomb"
|tip This will need to be completed on the character you are trying to use.
Earn the _Breaching the Tomb_ achievement |achieve 11546
step
Next, you will need to unlock your Class Hall Mount
|tip Refer to the 7.2 Order Hall Quests guide to accomplish this.
Click here to load the "Hunter 7.2 Order Hall Quest" leveling guide |confirm |next "Leveling Guides\\Legion (10-50)\\Hunter\\Hunter 7.2 Order Hall Quests" |only Hunter
Click here to continue |confirm
step
Next, you will need to complete the _Broken Isles Pathfinder, Part One_ achievement
Click here to load the Broken Isles Pathfinder, Part One achievement guide |confirm |next "Achievement Guides\\Class Hall\\Legion\\Broken Isles Pathfinder, Part One"
Earn the _Broken Isles Pathfinder, Part One_ achievement |achieve 11190
step
Next, you will need to complete the _Broken Isles Pathfinder, Part Two_ achievement
Click here to load the "Broken Isles Pathfinder, Part Two" achievement guide |confirm |next "Achievement Guides\\Exploration\\Legion\\Broken Isles Pathfinder, Part Two"
Earn the _Broken Isles Pathfinder, Part Two_ achievement |achieve 11446
step
Once you have completed the previous steps, you will need 1,000 Order Hall Resources
talk Pan the Kind Hand##100661
buy Tome of the Hybrid Beast##147580 |n |goto Trueshot Lodge/0 58.79,31.77
|tip If you have already acquired the Tome of Hybrid Beasts, skip this step.
collect 1 Tome of the Hybrid Beast##147580
step
label "tame"
Search for _Antilus the Soarer_
|tip It is level 15-30, depending on your level.
|tip It flies around the area.
Use your _Tame Beast_ ability on _Antilus the Soarer_ |cast Tame Beast##1515 |goto Feralas/0 54.4,68.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Flying Pets\\Feathermanes\\Hippogryphs\\Purple Hippogryph",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Purple Hippogryph pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={10889},
},[[
step
To start, you will need to complete the _Power Ascended_ achievement
Click here to load the "Power Ascended" achievement guide |confirm |next "Achievement Guides\\Legacy\\Expansion Features\\Power Ascended"
|tip This will need to be completed on the character you are trying to use.
If you have already acquired the Tome of Hybrid Beasts, click here |confirm |next "tame"
Earn the _Power Ascended_ achievement |achieve 11772
step
Next, you will need to complete the _Breaching the Tomb_ achievement
Click here to load the "Breaching the Tomb" achievement guide |confirm |next "Achievement Guides\\Quests\\Legion\\Breaching the Tomb"
|tip This will need to be completed on the character you are trying to use.
Earn the _Breaching the Tomb_ achievement |achieve 11546
step
Next, you will need to unlock your Class Hall Mount
|tip Refer to the 7.2 Order Hall Quests guide to accomplish this.
Click here to load the "Hunter 7.2 Order Hall Quest" leveling guide |confirm |next "Leveling Guides\\Legion (10-50)\\Hunter\\Hunter 7.2 Order Hall Quests" |only Hunter
Click here to continue |confirm
step
Next, you will need to complete the _Broken Isles Pathfinder, Part One_ achievement
Click here to load the Broken Isles Pathfinder, Part One achievement guide |confirm |next "Achievement Guides\\Class Hall\\Legion\\Broken Isles Pathfinder, Part One"
Earn the _Broken Isles Pathfinder, Part One_ achievement |achieve 11190
step
Next, you will need to complete the _Broken Isles Pathfinder, Part Two_ achievement
Click here to load the "Broken Isles Pathfinder, Part Two" achievement guide |confirm |next "Achievement Guides\\Exploration\\Legion\\Broken Isles Pathfinder, Part Two"
Earn the _Broken Isles Pathfinder, Part Two_ achievement |achieve 11446
step
Once you have completed the previous steps, you will need 1,000 Order Hall Resources
talk Pan the Kind Hand##100661
buy Tome of the Hybrid Beast##147580 |n |goto Trueshot Lodge/0 58.79,31.77
|tip If you have already acquired the Tome of Hybrid Beasts, skip this step.
collect 1 Tome of the Hybrid Beast##147580
step
label "tame"
Search for a _Frayfeather Hippogryph_
|tip You may have to use the "/roar" emote in order to make these hostile.
|tip They are level 15-30, depending on your level.
Use your _Tame Beast_ ability on _Frayfeather Hippogryph_ |cast Tame Beast##1515 |goto Feralas/0 55.8,66.8
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Flying Pets\\Feathermanes\\Owlcats\\Black Owlcat",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Black Owlcat pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={10889},
},[[
step
To start, you will need to complete the _Power Ascended_ achievement
Click here to load the "Power Ascended" achievement guide |confirm |next "Achievement Guides\\Legacy\\Expansion Features\\Power Ascended"
|tip This will need to be completed on the character you are trying to use.
If you have already acquired the Tome of Hybrid Beasts, click here |confirm |next "tame"
Earn the _Power Ascended_ achievement |achieve 11772
step
Next, you will need to complete the _Breaching the Tomb_ achievement
Click here to load the "Breaching the Tomb" achievement guide |confirm |next "Achievement Guides\\Quests\\Legion\\Breaching the Tomb"
|tip This will need to be completed on the character you are trying to use.
Earn the _Breaching the Tomb_ achievement |achieve 11546
step
Next, you will need to unlock your Class Hall Mount
|tip Refer to the 7.2 Order Hall Quests guide to accomplish this.
Click here to load the "Hunter 7.2 Order Hall Quest" leveling guide |confirm |next "Leveling Guides\\Legion (10-50)\\Hunter\\Hunter 7.2 Order Hall Quests" |only Hunter
Click here to continue |confirm
step
Next, you will need to complete the _Broken Isles Pathfinder, Part One_ achievement
Click here to load the Broken Isles Pathfinder, Part One achievement guide |confirm |next "Achievement Guides\\Class Hall\\Legion\\Broken Isles Pathfinder, Part One"
Earn the _Broken Isles Pathfinder, Part One_ achievement |achieve 11190
step
Next, you will need to complete the _Broken Isles Pathfinder, Part Two_ achievement
Click here to load the "Broken Isles Pathfinder, Part Two" achievement guide |confirm |next "Achievement Guides\\Exploration\\Legion\\Broken Isles Pathfinder, Part Two"
Earn the _Broken Isles Pathfinder, Part Two_ achievement |achieve 11446
step
Once you have completed the previous steps, you will need 1,000 Order Hall Resources
talk Pan the Kind Hand##100661
buy Tome of the Hybrid Beast##147580 |n |goto Trueshot Lodge/0 58.79,31.77
|tip If you have already acquired the Tome of Hybrid Beasts, skip this step.
collect 1 Tome of the Hybrid Beast##147580
step
label "tame"
Search for a _Feathermane Hunter_
|tip They are level 45.
Use your _Tame Beast_ ability on _Feathermane Hunter_ |cast Tame Beast##1515 |goto Suramar/0 17.2,23.4
More can be found here |goto 21.4,30.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Flying Pets\\Feathermanes\\Owlcats\\Brown Owlcat",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Brown Owlcat pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={67552},
},[[
step
To start, you will need to complete the _Power Ascended_ achievement
Click here to load the "Power Ascended" achievement guide |confirm |next "Achievement Guides\\Legacy\\Expansion Features\\Power Ascended"
|tip This will need to be completed on the character you are trying to use.
If you have already acquired the Tome of Hybrid Beasts, click here |confirm |next "tame"
Earn the _Power Ascended_ achievement |achieve 11772
step
Next, you will need to complete the _Breaching the Tomb_ achievement
Click here to load the "Breaching the Tomb" achievement guide |confirm |next "Achievement Guides\\Quests\\Legion\\Breaching the Tomb"
|tip This will need to be completed on the character you are trying to use.
Earn the _Breaching the Tomb_ achievement |achieve 11546
step
Next, you will need to unlock your Class Hall Mount
|tip Refer to the 7.2 Order Hall Quests guide to accomplish this.
Click here to load the "Hunter 7.2 Order Hall Quest" leveling guide |confirm |next "Leveling Guides\\Legion (10-50)\\Hunter\\Hunter 7.2 Order Hall Quests" |only Hunter
Click here to continue |confirm
step
Next, you will need to complete the _Broken Isles Pathfinder, Part One_ achievement
Click here to load the Broken Isles Pathfinder, Part One achievement guide |confirm |next "Achievement Guides\\Class Hall\\Legion\\Broken Isles Pathfinder, Part One"
Earn the _Broken Isles Pathfinder, Part One_ achievement |achieve 11190
step
Next, you will need to complete the _Broken Isles Pathfinder, Part Two_ achievement
Click here to load the "Broken Isles Pathfinder, Part Two" achievement guide |confirm |next "Achievement Guides\\Exploration\\Legion\\Broken Isles Pathfinder, Part Two"
Earn the _Broken Isles Pathfinder, Part Two_ achievement |achieve 11446
step
Once you have completed the previous steps, you will need 1,000 Order Hall Resources
talk Pan the Kind Hand##100661
buy Tome of the Hybrid Beast##147580 |n |goto Trueshot Lodge/0 58.79,31.77
|tip If you have already acquired the Tome of Hybrid Beasts, skip this step.
collect 1 Tome of the Hybrid Beast##147580
step
label "tame"
Search for a _Llothien Prowler_
|tip They are level 10-45, depending on your level.
Use your _Tame Beast_ ability on _Llothien Prowler_ |cast Tame Beast##1515 |goto Azsuna/0 55.6,30.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Flying Pets\\Feathermanes\\Owlcats\\Gray-Brown Owlcat",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Gray-Brown Owlcat pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={76366},
},[[
step
To start, you will need to complete the _Power Ascended_ achievement
Click here to load the "Power Ascended" achievement guide |confirm |next "Achievement Guides\\Legacy\\Expansion Features\\Power Ascended"
|tip This will need to be completed on the character you are trying to use.
If you have already acquired the Tome of Hybrid Beasts, click here |confirm |next "tame"
Earn the _Power Ascended_ achievement |achieve 11772
step
Next, you will need to complete the _Breaching the Tomb_ achievement
Click here to load the "Breaching the Tomb" achievement guide |confirm |next "Achievement Guides\\Quests\\Legion\\Breaching the Tomb"
|tip This will need to be completed on the character you are trying to use.
Earn the _Breaching the Tomb_ achievement |achieve 11546
step
Next, you will need to unlock your Class Hall Mount
|tip Refer to the 7.2 Order Hall Quests guide to accomplish this.
Click here to load the "Hunter 7.2 Order Hall Quest" leveling guide |confirm |next "Leveling Guides\\Legion (10-50)\\Hunter\\Hunter 7.2 Order Hall Quests" |only Hunter
Click here to continue |confirm
step
Next, you will need to complete the _Broken Isles Pathfinder, Part One_ achievement
Click here to load the Broken Isles Pathfinder, Part One achievement guide |confirm |next "Achievement Guides\\Class Hall\\Legion\\Broken Isles Pathfinder, Part One"
Earn the _Broken Isles Pathfinder, Part One_ achievement |achieve 11190
step
Next, you will need to complete the _Broken Isles Pathfinder, Part Two_ achievement
Click here to load the "Broken Isles Pathfinder, Part Two" achievement guide |confirm |next "Achievement Guides\\Exploration\\Legion\\Broken Isles Pathfinder, Part Two"
Earn the _Broken Isles Pathfinder, Part Two_ achievement |achieve 11446
step
Once you have completed the previous steps, you will need 1,000 Order Hall Resources
talk Pan the Kind Hand##100661
buy Tome of the Hybrid Beast##147580 |n |goto Trueshot Lodge/0 58.79,31.77
|tip If you have already acquired the Tome of Hybrid Beasts, skip this step.
collect 1 Tome of the Hybrid Beast##147580
step
label "tame"
Search for a _Very Lost Feathermane Kitten_
|tip Use your Track Hidden ability as they will be stealthed.
|tip They are level 45.
Use your _Tame Beast_ ability on a _Very Lost Feathermane Kitten_ |cast Tame Beast##1515 |goto Suramar/0 29.4,34.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Flying Pets\\Feathermanes\\Owlcats\\Silver-Gray Owlcat",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Silver-Gray Owlcat pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={67551},
},[[
step
To start, you will need to complete the _Power Ascended_ achievement
Click here to load the "Power Ascended" achievement guide |confirm |next "Achievement Guides\\Legacy\\Expansion Features\\Power Ascended"
|tip This will need to be completed on the character you are trying to use.
If you have already acquired the Tome of Hybrid Beasts, click here |confirm |next "tame"
Earn the _Power Ascended_ achievement |achieve 11772
step
Next, you will need to complete the _Breaching the Tomb_ achievement
Click here to load the "Breaching the Tomb" achievement guide |confirm |next "Achievement Guides\\Quests\\Legion\\Breaching the Tomb"
|tip This will need to be completed on the character you are trying to use.
Earn the _Breaching the Tomb_ achievement |achieve 11546
step
Next, you will need to unlock your Class Hall Mount
|tip Refer to the 7.2 Order Hall Quests guide to accomplish this.
Click here to load the "Hunter 7.2 Order Hall Quest" leveling guide |confirm |next "Leveling Guides\\Legion (10-50)\\Hunter\\Hunter 7.2 Order Hall Quests" |only Hunter
Click here to continue |confirm
step
Next, you will need to complete the _Broken Isles Pathfinder, Part One_ achievement
Click here to load the Broken Isles Pathfinder, Part One achievement guide |confirm |next "Achievement Guides\\Class Hall\\Legion\\Broken Isles Pathfinder, Part One"
Earn the _Broken Isles Pathfinder, Part One_ achievement |achieve 11190
step
Next, you will need to complete the _Broken Isles Pathfinder, Part Two_ achievement
Click here to load the "Broken Isles Pathfinder, Part Two" achievement guide |confirm |next "Achievement Guides\\Exploration\\Legion\\Broken Isles Pathfinder, Part Two"
Earn the _Broken Isles Pathfinder, Part Two_ achievement |achieve 11446
step
Once you have completed the previous steps, you will need 1,000 Order Hall Resources
talk Pan the Kind Hand##100661
buy Tome of the Hybrid Beast##147580 |n |goto Trueshot Lodge/0 58.79,31.77
|tip If you have already acquired the Tome of Hybrid Beasts, skip this step.
collect 1 Tome of the Hybrid Beast##147580
step
label "tame"
Search for a _Moonfeather Prowler_
|tip Use your Track Hidden ability as they will be stealthed.
|tip They are level 45.
Use your _Tame Beast_ ability on a _Moonfeather Prowler_ |cast Tame Beast##1515 |goto Suramar/0 65.2,48.4
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Flying Pets\\Feathermanes\\Wind Riders\\Blue Wind Rider (Rare Spawn)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue Wind Rider pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={11012},
},[[
step
To start, you will need to complete the _Power Ascended_ achievement
Click here to load the "Power Ascended" achievement guide |confirm |next "Achievement Guides\\Legacy\\Expansion Features\\Power Ascended"
|tip This will need to be completed on the character you are trying to use.
If you have already acquired the Tome of Hybrid Beasts, click here |confirm |next "tame"
Earn the _Power Ascended_ achievement |achieve 11772
step
Next, you will need to complete the _Breaching the Tomb_ achievement
Click here to load the "Breaching the Tomb" achievement guide |confirm |next "Achievement Guides\\Quests\\Legion\\Breaching the Tomb"
|tip This will need to be completed on the character you are trying to use.
Earn the _Breaching the Tomb_ achievement |achieve 11546
step
Next, you will need to unlock your Class Hall Mount
|tip Refer to the 7.2 Order Hall Quests guide to accomplish this.
Click here to load the "Hunter 7.2 Order Hall Quest" leveling guide |confirm |next "Leveling Guides\\Legion (10-50)\\Hunter\\Hunter 7.2 Order Hall Quests" |only Hunter
Click here to continue |confirm
step
Next, you will need to complete the _Broken Isles Pathfinder, Part One_ achievement
Click here to load the Broken Isles Pathfinder, Part One achievement guide |confirm |next "Achievement Guides\\Class Hall\\Legion\\Broken Isles Pathfinder, Part One"
Earn the _Broken Isles Pathfinder, Part One_ achievement |achieve 11190
step
Next, you will need to complete the _Broken Isles Pathfinder, Part Two_ achievement
Click here to load the "Broken Isles Pathfinder, Part Two" achievement guide |confirm |next "Achievement Guides\\Exploration\\Legion\\Broken Isles Pathfinder, Part Two"
Earn the _Broken Isles Pathfinder, Part Two_ achievement |achieve 11446
step
Once you have completed the previous steps, you will need 1,000 Order Hall Resources
talk Pan the Kind Hand##100661
buy Tome of the Hybrid Beast##147580 |n |goto Trueshot Lodge/0 58.79,31.77
|tip If you have already acquired the Tome of Hybrid Beasts, skip this step.
collect 1 Tome of the Hybrid Beast##147580
step
label "tame"
Search for _Sorrow Wing_
|tip They are level 10-30, depending on your level.
Use your _Tame Beast_ ability on _Sorrow Wing_ |cast Tame Beast##1515 |goto Stonetalon Mountains/0 50.2,41.2
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Flying Pets\\Feathermanes\\Wind Riders\\Brown Wind Rider",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Brown Wind Rider pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={295},
},[[
step
To start, you will need to complete the _Power Ascended_ achievement
Click here to load the "Power Ascended" achievement guide |confirm |next "Achievement Guides\\Legacy\\Expansion Features\\Power Ascended"
|tip This will need to be completed on the character you are trying to use.
If you have already acquired the Tome of Hybrid Beasts, click here |confirm |next "tame"
Earn the _Power Ascended_ achievement |achieve 11772
step
Next, you will need to complete the _Breaching the Tomb_ achievement
Click here to load the "Breaching the Tomb" achievement guide |confirm |next "Achievement Guides\\Quests\\Legion\\Breaching the Tomb"
|tip This will need to be completed on the character you are trying to use.
Earn the _Breaching the Tomb_ achievement |achieve 11546
step
Next, you will need to unlock your Class Hall Mount
|tip Refer to the 7.2 Order Hall Quests guide to accomplish this.
Click here to load the "Hunter 7.2 Order Hall Quest" leveling guide |confirm |next "Leveling Guides\\Legion (10-50)\\Hunter\\Hunter 7.2 Order Hall Quests" |only Hunter
Click here to continue |confirm
step
Next, you will need to complete the _Broken Isles Pathfinder, Part One_ achievement
Click here to load the Broken Isles Pathfinder, Part One achievement guide |confirm |next "Achievement Guides\\Class Hall\\Legion\\Broken Isles Pathfinder, Part One"
Earn the _Broken Isles Pathfinder, Part One_ achievement |achieve 11190
step
Next, you will need to complete the _Broken Isles Pathfinder, Part Two_ achievement
Click here to load the "Broken Isles Pathfinder, Part Two" achievement guide |confirm |next "Achievement Guides\\Exploration\\Legion\\Broken Isles Pathfinder, Part Two"
Earn the _Broken Isles Pathfinder, Part Two_ achievement |achieve 11446
step
Once you have completed the previous steps, you will need 1,000 Order Hall Resources
talk Pan the Kind Hand##100661
buy Tome of the Hybrid Beast##147580 |n |goto Trueshot Lodge/0 58.79,31.77
|tip If you have already acquired the Tome of Hybrid Beasts, skip this step.
collect 1 Tome of the Hybrid Beast##147580
step
label "tame"
Search for a _Pridewing Wyvern_
|tip They are level 10-30, depending on your level.
Use your _Tame Beast_ ability on a _Pridewing Wyvern_ |cast Tame Beast##1515
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Flying Pets\\Feathermanes\\Wind Riders\\Green Wind Rider",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green Wind Rider pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={35655},
},[[
step
To start, you will need to complete the _Power Ascended_ achievement
Click here to load the "Power Ascended" achievement guide |confirm |next "Achievement Guides\\Legacy\\Expansion Features\\Power Ascended"
|tip This will need to be completed on the character you are trying to use.
If you have already acquired the Tome of Hybrid Beasts, click here |confirm |next "tame"
Earn the _Power Ascended_ achievement |achieve 11772
step
Next, you will need to complete the _Breaching the Tomb_ achievement
Click here to load the "Breaching the Tomb" achievement guide |confirm |next "Achievement Guides\\Quests\\Legion\\Breaching the Tomb"
|tip This will need to be completed on the character you are trying to use.
Earn the _Breaching the Tomb_ achievement |achieve 11546
step
Next, you will need to unlock your Class Hall Mount
|tip Refer to the 7.2 Order Hall Quests guide to accomplish this.
Click here to load the "Hunter 7.2 Order Hall Quest" leveling guide |confirm |next "Leveling Guides\\Legion (10-50)\\Hunter\\Hunter 7.2 Order Hall Quests" |only Hunter
Click here to continue |confirm
step
Next, you will need to complete the _Broken Isles Pathfinder, Part One_ achievement
Click here to load the Broken Isles Pathfinder, Part One achievement guide |confirm |next "Achievement Guides\\Class Hall\\Legion\\Broken Isles Pathfinder, Part One"
Earn the _Broken Isles Pathfinder, Part One_ achievement |achieve 11190
step
Next, you will need to complete the _Broken Isles Pathfinder, Part Two_ achievement
Click here to load the "Broken Isles Pathfinder, Part Two" achievement guide |confirm |next "Achievement Guides\\Exploration\\Legion\\Broken Isles Pathfinder, Part Two"
Earn the _Broken Isles Pathfinder, Part Two_ achievement |achieve 11446
step
Once you have completed the previous steps, you will need 1,000 Order Hall Resources
talk Pan the Kind Hand##100661
buy Tome of the Hybrid Beast##147580 |n |goto Trueshot Lodge/0 58.79,31.77
|tip If you have already acquired the Tome of Hybrid Beasts, skip this step.
collect 1 Tome of the Hybrid Beast##147580
step
label "tame"
Kill Pridewing Consorts and Pridewing Wyverns around the area
|tip After about 10 minutes of killing the Pridewing Patriarch should spawn.
|tip They are level 45.
Use your _Tame Beast_ ability on the _Pridewing Patriarch_ |cast Tame Beast##1515 |goto Stonetalon Mountains/0 55.27,44.35
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Flying Pets\\Feathermanes\\Wolfhawks\\Blue Wolfhawk",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue Wolfhawk pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={76529},
},[[
step
To start, you will need to complete the _Power Ascended_ achievement
Click here to load the "Power Ascended" achievement guide |confirm |next "Achievement Guides\\Legacy\\Expansion Features\\Power Ascended"
|tip This will need to be completed on the character you are trying to use.
If you have already acquired the Tome of Hybrid Beasts, click here |confirm |next "tame"
Earn the _Power Ascended_ achievement |achieve 11772
step
Next, you will need to complete the _Breaching the Tomb_ achievement
Click here to load the "Breaching the Tomb" achievement guide |confirm |next "Achievement Guides\\Quests\\Legion\\Breaching the Tomb"
|tip This will need to be completed on the character you are trying to use.
Earn the _Breaching the Tomb_ achievement |achieve 11546
step
Next, you will need to unlock your Class Hall Mount
|tip Refer to the 7.2 Order Hall Quests guide to accomplish this.
Click here to load the "Hunter 7.2 Order Hall Quest" leveling guide |confirm |next "Leveling Guides\\Legion (10-50)\\Hunter\\Hunter 7.2 Order Hall Quests" |only Hunter
Click here to continue |confirm
step
Next, you will need to complete the _Broken Isles Pathfinder, Part One_ achievement
Click here to load the Broken Isles Pathfinder, Part One achievement guide |confirm |next "Achievement Guides\\Class Hall\\Legion\\Broken Isles Pathfinder, Part One"
Earn the _Broken Isles Pathfinder, Part One_ achievement |achieve 11190
step
Next, you will need to complete the _Broken Isles Pathfinder, Part Two_ achievement
Click here to load the "Broken Isles Pathfinder, Part Two" achievement guide |confirm |next "Achievement Guides\\Exploration\\Legion\\Broken Isles Pathfinder, Part Two"
Earn the _Broken Isles Pathfinder, Part Two_ achievement |achieve 11446
step
Once you have completed the previous steps, you will need 1,000 Order Hall Resources
talk Pan the Kind Hand##100661
buy Tome of the Hybrid Beast##147580 |n |goto Trueshot Lodge/0 58.79,31.77
|tip If you have already acquired the Tome of Hybrid Beasts, skip this step.
collect 1 Tome of the Hybrid Beast##147580
step
label "tame"
Enter the cave |goto Eye of Azshara Map/0 65.50,72.30 < 10
|tip It is level 10-45, depending on your level.
Use your _Tame Beast_ ability on _Kveldulfnir_ |cast Tame Beast##1515 |goto 65.00,71.55
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Flying Pets\\Feathermanes\\Wolfhawks\\Brown Wolfhawk",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Brown Wolfhawk pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={76531},
},[[
step
To start, you will need to complete the _Power Ascended_ achievement
Click here to load the "Power Ascended" achievement guide |confirm |next "Achievement Guides\\Legacy\\Expansion Features\\Power Ascended"
|tip This will need to be completed on the character you are trying to use.
If you have already acquired the Tome of Hybrid Beasts, click here |confirm |next "tame"
Earn the _Power Ascended_ achievement |achieve 11772
step
Next, you will need to complete the _Breaching the Tomb_ achievement
Click here to load the "Breaching the Tomb" achievement guide |confirm |next "Achievement Guides\\Quests\\Legion\\Breaching the Tomb"
|tip This will need to be completed on the character you are trying to use.
Earn the _Breaching the Tomb_ achievement |achieve 11546
step
Next, you will need to unlock your Class Hall Mount
|tip Refer to the 7.2 Order Hall Quests guide to accomplish this.
Click here to load the "Hunter 7.2 Order Hall Quest" leveling guide |confirm |next "Leveling Guides\\Legion (10-50)\\Hunter\\Hunter 7.2 Order Hall Quests" |only Hunter
Click here to continue |confirm
step
Next, you will need to complete the _Broken Isles Pathfinder, Part One_ achievement
Click here to load the Broken Isles Pathfinder, Part One achievement guide |confirm |next "Achievement Guides\\Class Hall\\Legion\\Broken Isles Pathfinder, Part One"
Earn the _Broken Isles Pathfinder, Part One_ achievement |achieve 11190
step
Next, you will need to complete the _Broken Isles Pathfinder, Part Two_ achievement
Click here to load the "Broken Isles Pathfinder, Part Two" achievement guide |confirm |next "Achievement Guides\\Exploration\\Legion\\Broken Isles Pathfinder, Part Two"
Earn the _Broken Isles Pathfinder, Part Two_ achievement |achieve 11446
step
Once you have completed the previous steps, you will need 1,000 Order Hall Resources
talk Pan the Kind Hand##100661
buy Tome of the Hybrid Beast##147580 |n |goto Trueshot Lodge/0 58.79,31.77
|tip If you have already acquired the Tome of Hybrid Beasts, skip this step.
collect 1 Tome of the Hybrid Beast##147580
step
label "tame"
Enter the cave |goto Eye of Azshara Map/0 58.12,82.08 < 10
|tip It is level 10-45, depending on your level.
Use your _Tame Beast_ ability on _Varoudnir_ |cast Tame Beast##1515 |goto 56.90,78.16
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Flying Pets\\Feathermanes\\Wolfhawks\\Green Wolfhawk",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green Wolfhawk pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={76530},
},[[
step
To start, you will need to complete the _Power Ascended_ achievement
Click here to load the "Power Ascended" achievement guide |confirm |next "Achievement Guides\\Legacy\\Expansion Features\\Power Ascended"
|tip This will need to be completed on the character you are trying to use.
If you have already acquired the Tome of Hybrid Beasts, click here |confirm |next "tame"
Earn the _Power Ascended_ achievement |achieve 11772
step
Next, you will need to complete the _Breaching the Tomb_ achievement
Click here to load the "Breaching the Tomb" achievement guide |confirm |next "Achievement Guides\\Quests\\Legion\\Breaching the Tomb"
|tip This will need to be completed on the character you are trying to use.
Earn the _Breaching the Tomb_ achievement |achieve 11546
step
Next, you will need to unlock your Class Hall Mount
|tip Refer to the 7.2 Order Hall Quests guide to accomplish this.
Click here to load the "Hunter 7.2 Order Hall Quest" leveling guide |confirm |next "Leveling Guides\\Legion (10-50)\\Hunter\\Hunter 7.2 Order Hall Quests" |only Hunter
Click here to continue |confirm
step
Next, you will need to complete the _Broken Isles Pathfinder, Part One_ achievement
Click here to load the Broken Isles Pathfinder, Part One achievement guide |confirm |next "Achievement Guides\\Class Hall\\Legion\\Broken Isles Pathfinder, Part One"
Earn the _Broken Isles Pathfinder, Part One_ achievement |achieve 11190
step
Next, you will need to complete the _Broken Isles Pathfinder, Part Two_ achievement
Click here to load the "Broken Isles Pathfinder, Part Two" achievement guide |confirm |next "Achievement Guides\\Exploration\\Legion\\Broken Isles Pathfinder, Part Two"
Earn the _Broken Isles Pathfinder, Part Two_ achievement |achieve 11446
step
Once you have completed the previous steps, you will need 1,000 Order Hall Resources
talk Pan the Kind Hand##100661
buy Tome of the Hybrid Beast##147580 |n |goto Trueshot Lodge/0 58.79,31.77
|tip If you have already acquired the Tome of Hybrid Beasts, skip this step.
collect 1 Tome of the Hybrid Beast##147580
step
label "tame"
Enter the cave |goto Eye of Azshara Map/0 60.96,78.36 < 10
|tip It is level 10-45, depending on your level.
Use your _Tame Beast_ ability on _Mavarnir_ |cast Tame Beast##1515 |goto 60.8,78.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Flying Pets\\Serpents\\Mana Wyrms\\Blue-Silver Mana Wyrm",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue-Silver Mana Wyrm pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={62385},
},[[
step
Enter Mazthoril cave |goto Winterspring/0 54.80,64.04 < 25
Search for a _Mana Thirster_
|tip They are level 15-30, depending on your level.
Use your _Tame Beast_ ability on a _Mana Thirster_ |cast Tame Beast##1515 |goto Winterspring/0 51.53,64.38
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Flying Pets\\Serpents\\Mana Wyrms\\Green Mana Wyrm",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green Mana Wyrm pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={25733},
},[[
step
_Warning_: Aggroing a guard in _Ghostlands_ or _Eversong Woods_ will flag you for PvP for 5 minutes
Search for a _Mana Serpent_
|tip They are level 1-30, depending on your level.
Use your _Tame Beast_ ability on a _Mana Serpent_ |cast Tame Beast##1515 |goto Eversong Woods/0 67.38,51.17
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Flying Pets\\Serpents\\Mana Wyrms\\Peach Silver Mana Wyrm",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Peach-Silver Mana Wyrm pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={19690},
},[[
step
Search for a _Mana Snapper_
|tip They are level 25-30, depending on your level.
Use your _Tame Beast_ ability on a _Mana Snapper_ |cast Tame Beast##1515 |goto Netherstorm/0 49.10,46.44
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Flying Pets\\Serpents\\Mana Wyrms\\Ruby Mana Wyrm",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Coral-Gray Mana Wyrm pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={20476},
},[[
step
talk Exarch Nasuun##24932
accept Maintaining the Sunwell Portal##11514 |goto Shattrath City 49.09,42.48
|tip You must have the quest in your log to see the Phase Wyrms.
step
kill Bash'ir Arcanist##22243+, Bash'ir Spell-Thief##22242+, Bash'ir Raider##22241+
collect 1 Bash'ir Phasing Device##34248
|tip This item will allow you to see the Phase Wyrms.
step
Use the Phasing Device |use Bash'ir Phasing Device##34248
Search for a _Phase Wyrm_
|tip They are level 20-30, depending on your level.
Use your _Tame Beast_ ability on a _Phase Wyrm_ |cast Tame Beast##1515 |goto Blade's Edge Mountains/0 50.88,16.46
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Flying Pets\\Serpents\\Mana Wyrms\\Violet Mana Wyrm",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Violet Mana Wyrm pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={19331},
},[[
step
Enter the Karazhan raid |goto Karazhan/1 58.76,76.11 |c |or
confirm |or
step
kill 1 Moroes##15687
|tip You can find Moroes by going up the stairs to the right of the entrance, then into the first room on the left.
Click here after you have killed Moroes |confirm
step
talk Barnes##16812 |goto Karazhan/4 21.33,27.06
|tip As you leave Moroes' room, take the passage on the left.
|tip Go up both sets of stairs, then through the opening across the room.
|tip Go to the right, then through the passage at the end.
|tip Drop down, then follow the passage.
Tell him: "_I'm not an actor..._"
|tip Follow him into the theatre
Complete the Opera event, then click here |confirm
step
Make your way through Karazhan
|tip Go through the door and up the first ramp you encounter.
|tip Follow straight through to the passage on the left.
|tip Continue around, up the ramp, and through the doorway on the right.
|tip Follow the ramps and stairs all the way up.
|tip Finally, go past the giant statue into the Curator's room.
confirm
step
Search for a _Syphoner_
|tip They are level 27-30, depending on your level.
Use your _Tame Beast_ ability on a _Syphoner_ |cast Tame Beast##1515 |goto Karazhan/9 41.42,19.18
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Flying Pets\\Nether Rays\\Mana Rays\\Blue and Orange Mana Ray",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue and Orange Mana Ray pet.",
condition_suggested=function() return level>=45 and (ZGV.CurrentMapID==830 or ZGV.CurrentMapID==831 or ZGV.CurrentMapID==832 or ZGV.CurrentMapID==833) end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={75569},
},[[
step
Search for an _Ancient Skyfin_
|tip They are level 45.
Use your _Tame Beast_ ability on a _Blue and Orange Mana Ray_ |cast Tame Beast##1515 |goto Eredath/0 50.0,73.2
|tip It patrols around in the area in the sky, accompanied by two other Mana Rays.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Flying Pets\\Nether Rays\\Mana Rays\\Fel Gray-Plum Mana Ray",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Fel Gray-Plum Mana Ray pet.",
condition_suggested=function() return level>=45 and (ZGV.CurrentMapID==830 or ZGV.CurrentMapID==831 or ZGV.CurrentMapID==832 or ZGV.CurrentMapID==833) end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={74906},
},[[
step
Follow the path |goto Krokuun/0 58.59,68.40 < 25 |only if walking
Follow the path |goto 59.89,66.61 < 25 |only if walking
Follow the path |goto 60.93,62.73 < 25 |only if walking
Follow the path |goto 63.66,62.67 < 25 |only if walking
Search for an _Argus Darkray_
|tip They have a couple of different models. You may need to kill them to get the color you want.
|tip They are level 45.
Use your _Tame Beast_ ability on a _Fel Gray-Plum Mana Ray_ |cast Tame Beast##1515 |goto 68.38,65.23
|tip They are flying around the area.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Flying Pets\\Nether Rays\\Mana Rays\\Fel Red Mana Ray",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Fel Red Mana Ray pet.",
condition_suggested=function() return level>=45 and (ZGV.CurrentMapID==830 or ZGV.CurrentMapID==831 or ZGV.CurrentMapID==832 or ZGV.CurrentMapID==833) end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={74906},
},[[
step
Follow the path |goto Krokuun/0 58.59,68.40 < 25 |only if walking
Follow the path |goto 59.89,66.61 < 25 |only if walking
Follow the path |goto 60.93,62.73 < 25 |only if walking
Follow the path |goto 63.66,62.67 < 25 |only if walking
Search for an _Argus Darkray_
|tip They have a couple of different models. You may need to kill them to get the color you want.
|tip They are level 45.
Use your _Tame Beast_ ability on a _Fel Red Mana Ray_ |cast Tame Beast##1515 |goto 68.38,65.23
|tip They are flying around the area.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Flying Pets\\Nether Rays\\Mana Rays\\Magenta Mana Ray",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Magenta Mana Ray pet.",
condition_suggested=function() return level>=45 and (ZGV.CurrentMapID==830 or ZGV.CurrentMapID==831 or ZGV.CurrentMapID==832 or ZGV.CurrentMapID==833) end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={74903},
},[[
step
Search for an _Arcfin Mana Ray_
|tip They have a couple of different models. You may need to kill them to get the color you want.
|tip They are level 45.
Use your _Tame Beast_ ability on a _Magenta Mana Ray_ |cast Tame Beast##1515 |goto Eredath/0 65.09,51.59
|tip They are flying around the area.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Flying Pets\\Nether Rays\\Mana Rays\\Purple Mana Ray",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Purple Mana Ray pet.",
condition_suggested=function() return level>=45 and (ZGV.CurrentMapID==830 or ZGV.CurrentMapID==831 or ZGV.CurrentMapID==832 or ZGV.CurrentMapID==833) end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={74903},
},[[
step
Search for a _Arcfin Mana Ray_
|tip They have a couple of different models. You may need to kill them to get the color you want.
|tip They are level 45.
Use your _Tame Beast_ ability on a _Purple Mana Ray_ |cast Tame Beast##1515 |goto Eredath/0 65.09,51.59
|tip They are flying around the area.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Flying Pets\\Nether Rays\\Mana Rays\\Teal Mana Ray",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Teal Mana Ray pet.",
condition_suggested=function() return level>=45 and (ZGV.CurrentMapID==830 or ZGV.CurrentMapID==831 or ZGV.CurrentMapID==832 or ZGV.CurrentMapID==833) end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={74905},
},[[
step
Search for a _Skyfin Mana Ray_
|tip They are level 45.
Use your _Tame Beast_ ability on a _Teal Mana Ray_ |cast Tame Beast##1515 |goto Eredath/0 52.79,48.68
|tip They are flying around the area.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Flying Pets\\Wasps\\Dire Wasps\\Nightmare Dire Wasp",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Nightmare Dire Wasp pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={64744},
},[[
step
Search for a _Dreadsting Lurker_
|tip They are level 10-45, depending on your level.
Use your _Tame Beast_ ability on a _Dreadsting Lurker_ |cast Tame Beast##1515 |goto Val'sharah/0 66.70,45.86
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Flying Pets\\Wasps\\Fireflies\\Yellow Glowing Purple Firefly",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Yellow Glowing Purple Firefly pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={28435},
},[[
step
Search for a _Moonglow Locust_
|tip They are level 45.
Use your _Tame Beast_ ability on an _Moonglow Locust_ |cast Tame Beast##1515 |goto Suramar/0 63.4,57.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Flying Pets\\Wind Serpents\\Spiked Wind Serpents\\Gray and Green Spiked Wind Serpent",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Gray and Green Spiked Wind Serpent pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={67476},
},[[
step
Search for a _Winged Swampserpent_
|tip They are level 10-45, depending on your level.
Use your _Tame Beast_ ability on a _Winged Swampserpent_ |cast Tame Beast##1515 |goto Highmountain/0 29.2,35.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Mechanical Pets\\Electric Sheep\\Robotic Sheep",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Robotic Sheep pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={3886},
},[[
step
Before proceeding, ensure that you have learned the Mecha-Bond Imprint Matrix spell from the item of the same name, allowing you to tame mechanicals
|tip This is an engineer crafted item. If you have Engineering, you can craft it. Or, you can purchase it from the Auction House.
|tip If you are a Gnome or Goblin, you do not need this item.
|tip You must have a flying mount to tame Tekton.
confirm
step
Search for a _Tekton_
|tip It is level 1-30, depending on your level.
|tip You must use an ability like Freezing Trap or Binding Shot to tame Tekton, as Tekton will explode and knock you back if it reaches you.
Use your _Tame Beast_ ability on a _Tekton_ |cast Tame Beast##1515 |goto Elwynn Forest/0 50.09,13.76
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Mechanical Pets\\Iron Scorpions\\Blue Iron Scorpion",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue Iron Scorpion pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={70228},
},[[
step
Enter the Siege of Orgrimmar raid |goto Vale of Eternal Blossoms/0 74.06,42.03 < 6 |c
|tip Difficulty must be normal or higher.
step
map	Siege of Orgrimmar/2
path	follow loose; loop off; ants curved; dist 30
path	90.77,45.48	84.43,49.73	77.08,57.75
path	71.22,54.28	67.09,49.78	51.92,49.64
path	32.05,45.61	17.19,45.58	11.75,52.48
path	11.75,72.14
map	Siege of Orgrimmar/1
path	follow loose; loop off; ants curved; dist 30
path	33.99,19.04	36.91,31.36	40.65,41.32
path	46.13,60.40
map	Siege of Orgrimmar/3
path	64.51,12.43	57.73,19.81	61.02,34.48
path	70.30,37.17	64.52,49.17	41.64,63.25
Follow the path
|tip Opening the world map will display an ant trail guiding you through the current floor.
|tip Along the way, kill Immerseus, The Fallen Protectors, and Norushen.
|tip Use our raid guide if you need boss information.
|tip After Imerseus, stand on the lighted platform and use the button that appears to open the door.
confirm
step
kill Sha of Pride##71734
clicknpc Portal to Orgrimmar##103191 |goto Siege of Orgrimmar/3 19.62,57.63
Defeat Sha of Pride and take the portal
confirm
step
talk Lady Jaina Proudmoore##72302 |goto Siege of Orgrimmar/4 109.90,43.36
Tell her: "_Reporting for duty!_"
|tip Watch the dialogue
click Minor Portal##221522 |goto Siege of Orgrimmar/4 109.70,44.00
Reach the docks |goto Siege of Orgrimmar/4 87.19,28.15 < 10
confirm
step
clicknpc Spike Mine##76412
Destroy the first cannon |goto Siege of Orgrimmar/4 79.29,32.77
Destroy the second cannon |goto 81.87,36.90
Destroy the third cannon |goto 84.50,39.38
Destroy the fourth cannon |goto 85.36,43.02
Destroy the fifth cannon |goto 86.18,49.21
Destroy the sixth cannon |goto 87.32,51.30
Destroy the seventh cannon |goto 88.87,54.05
Click here when you finish destroying the cannons |confirm
step
map	Siege of Orgrimmar/4
path	follow loose; loop off; ants curved; dist 30
path	78.02,29.60	68.00,33.30	59.14,37.51
path	56.49,48.77	51.97,60.73	45.75,68.45
path	39.51,69.90	34.63,61.39	33.60,52.71
Kill Galakras and make your way to Iron Juggernaut
|tip Opening the world map will display an ant trail guiding you through the current floor.
|tip Talk to Lady Jaina Proudmoore to start the Galakras encounter.
|tip Galakras must be shot twice with a cannon to bring him down to the ground.
confirm
step
kill Iron Juggernaut##71466
collect 1 Pile of Juggernaut Parts##137654 |goto Siege of Orgrimmar/4 32.57,46.88
step
map	Siege of Orgrimmar/4
path	follow loose; loop off; ants curved; dist 30
path	31.04,39.48	30.63,29.59	35.19,28.03
map	Siege of Orgrimmar/5
path	51.69,77.07	50.73,65.86	51.07,53.79
path	53.17,47.80	61.26,41.23	58.71,29.59
map	Siege of Orgrimmar/6
path	73.86,14.57	65.10,39.18	68.72,50.07
map	Siege of Orgrimmar/7
path	39.33,18.17	42.90,32.00	50.53,51.65
path	57.70,65.73	72.22,65.52
Follow the path
|tip Opening the world map will display an ant trail guiding you through the current floor.
|tip Defeat the Kor'kron Dark Shaman and General Nazgrim along the way.
confirm
step
Ride the elevator to the bottom
confirm
step
map	Siege of Orgrimmar/8
path	follow loose; loop off; ants curved; dist 30
path	15.04,84.31	20.62,76.05	23.13,61.12
path	32.14,58.73	38.68,57.76	41.40,63.78
path	58.25,57.53	53.60,65.86	46.27,52.68
path	38.88,36.46	30.64,17.75	37.65,11.81
path	34.98,21.44	28.02,37.61
Follow the path
|tip Opening the world map will display an ant trail guiding you through the current floor.
click Bucket of Blue Paint##250587
collect 1 Bucket of Blue Paint##137650
|tip On the floor behind the brazier in the wolf pen area.
step
map	Siege of Orgrimmar/8
path	follow loose; loop off; ants curved; dist 30
path	28.80,31.27	34.50,22.07	42.95,23.88
path	48.17,35.68
Follow the path
|tip Opening the world map will display an ant trail guiding you through the current floor.
|tip Click the release lever illuminated by a pillar of light.
confirm
step
map	Siege of Orgrimmar/8
path	follow loose; loop off; ants curved; dist 30
path	51.23,32.81	60.66,23.02	67.50,31.47
path	72.98,43.59	79.80,58.90	78.14,73.92
map	Siege of Orgrimmar/9
path	59.16,22.29	53.02,28.54	46.14,35.47
path	40.67,41.01	36.70,49.48	40.96,58.57
path	48.31,75.20
Follow the path
|tip Opening the world map will display an ant trail guiding you through the current floor.
|tip Kill or tame Thok at the end.
confirm
step
map	Siege of Orgrimmar/9
path	follow loose; loop off; ants curved; dist 30
path	46.16,70.10	40.60,57.76	36.98,47.94
path	40.88,40.81	48.69,32.88	56.42,25.06
path	64.33,17.48
map	Siege of Orgrimmar/8
path	83.89,67.90
map	Siege of Orgrimmar/10
path	36.02,69.95
Follow the path, clicking the Massive Ironbound Door
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Kill the three waves of mobs and jump in one of the tubes
kill Siegecrafter Blackfuse##71504
collect 1 Blackfuse's Power Core##138097 |goto Siege of Orgrimmar/10 62.23,42.58
step
Use the Bucket of Blue Paint |use Bucket of Blue Paint##137650
collect 1 Deactivated Blue Juggernaut##137656
step
Use the Deactivated Blue Juggernaut to summon your pet |use Deactivated Blue Juggernaut##137656
Use your _Tame Beast_ ability on _Blue Juggernaut_ |cast Tame Beast##1515
|tip They are level 35-37, depending on your level.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Mechanical Pets\\Iron Scorpions\\Green-Gold Iron Scorpion",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green-Gold Iron Scorpion pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={70229},
},[[
step
Enter the Siege of Orgrimmar raid |goto Vale of Eternal Blossoms/0 74.06,42.03 < 6 |c
|tip Difficulty must be normal or higher.
step
map	Siege of Orgrimmar/2
path	follow loose; loop off; ants curved; dist 30
path	90.77,45.48	84.43,49.73	77.08,57.75
path	71.22,54.28	67.09,49.78	51.92,49.64
path	32.05,45.61	17.19,45.58	11.75,52.48
path	11.75,72.14
map	Siege of Orgrimmar/1
path	follow loose; loop off; ants curved; dist 30
path	33.99,19.04	36.91,31.36	40.65,41.32
path	46.13,60.40
map	Siege of Orgrimmar/3
path	64.51,12.43	57.73,19.81	61.02,34.48
path	70.30,37.17	64.52,49.17	41.64,63.25
Follow the path
|tip Opening the world map will display an ant trail guiding you through the current floor.
|tip Along the way, kill Immerseus, The Fallen Protectors, and Norushen.
|tip Use our raid guide if you need boss information.
|tip After Imerseus, stand on the lighted platform and use the button that appears to open the door.
confirm
step
kill Sha of Pride##71734
clicknpc Portal to Orgrimmar##103191 |goto Siege of Orgrimmar/3 19.62,57.63
Defeat Sha of Pride and take the portal
confirm
step
talk Lady Jaina Proudmoore##72302 |goto Siege of Orgrimmar/4 109.90,43.36
Tell her: "_Reporting for duty!_"
|tip Watch the dialogue
click Minor Portal##221522 |goto Siege of Orgrimmar/4 109.70,44.00
Reach the docks |goto Siege of Orgrimmar/4 87.19,28.15 < 10
confirm
step
clicknpc Spike Mine##76412
Destroy the first cannon |goto Siege of Orgrimmar/4 79.29,32.77
Destroy the second cannon |goto 81.87,36.90
Destroy the third cannon |goto 84.50,39.38
Destroy the fourth cannon |goto 85.36,43.02
Destroy the fifth cannon |goto 86.18,49.21
Destroy the sixth cannon |goto 87.32,51.30
Destroy the seventh cannon |goto 88.87,54.05
Click here when you finish destroying the cannons |confirm
step
map	Siege of Orgrimmar/4
path	follow loose; loop off; ants curved; dist 30
path	78.02,29.60	68.00,33.30	59.14,37.51
path	56.49,48.77	51.97,60.73	45.75,68.45
path	39.51,69.90	34.63,61.39	33.60,52.71
Kill Galakras and make your way to Iron Juggernaut
|tip Opening the world map will display an ant trail guiding you through the current floor.
|tip Talk to Lady Jaina Proudmoore to start the Galakras encounter.
|tip Galakras must be shot twice with a cannon to bring him down to the ground.
confirm
step
kill Iron Juggernaut##71466
collect 1 Pile of Juggernaut Parts##137654 |goto Siege of Orgrimmar/4 32.57,46.88
step
map	Siege of Orgrimmar/4
path	follow loose; loop off; ants curved; dist 30
path	31.04,39.48	30.63,29.59	35.19,28.03
map	Siege of Orgrimmar/5
path	51.69,77.07	50.73,65.86	51.07,53.79
path	53.17,47.80	61.26,41.23	58.71,29.59
map	Siege of Orgrimmar/6
path	73.86,14.57	65.10,39.18	40.63,76.92
Follow the path
|tip Opening the world map will display an ant trail guiding you through the current floor.
|tip Defeat the Kor'kron Dark Shaman along the way.
click Bucket of Green Paint##250588
collect 1 Bucket of Green Paint##137652
|tip In the corner just inside the hut.
step
map	Siege of Orgrimmar/6
path	follow loose; loop off; ants curved; dist 30
path	68.72,50.07
map	Siege of Orgrimmar/7
path	39.33,18.17	42.90,32.00	50.53,51.65
path	57.70,65.73	72.22,65.52
Follow the path
|tip Opening the world map will display an ant trail guiding you through the current floor.
|tip Defeat General Nazgrim along the way.
confirm
step
Ride the elevator to the bottom
confirm
step
map	Siege of Orgrimmar/8
path	follow loose; loop off; ants curved; dist 30
path	15.04,84.31	20.62,76.05	23.13,61.12
path	32.14,58.73	38.68,57.76	41.40,63.78
path	58.25,57.53	53.60,65.86	46.27,52.68
path	38.88,36.46	30.64,17.75	37.65,11.81
path	42.95,23.88	48.17,35.68
Follow the path
|tip Opening the world map will display an ant trail guiding you through the current floor.
|tip Click the release lever illuminated by a pillar of light.
confirm
step
map	Siege of Orgrimmar/8
path	follow loose; loop off; ants curved; dist 30
path	51.23,32.81	60.66,23.02	67.50,31.47
path	72.98,43.59	79.80,58.90	78.14,73.92
map	Siege of Orgrimmar/9
path	59.16,22.29	53.02,28.54	46.14,35.47
path	40.67,41.01	36.70,49.48	40.96,58.57
path	48.31,75.20
Follow the path
|tip Opening the world map will display an ant trail guiding you through the current floor.
|tip Kill or tame Thok at the end.
confirm
step
map	Siege of Orgrimmar/9
path	follow loose; loop off; ants curved; dist 30
path	46.16,70.10	40.60,57.76	36.98,47.94
path	40.88,40.81	48.69,32.88	56.42,25.06
path	64.33,17.48
map	Siege of Orgrimmar/8
path	83.89,67.90
map	Siege of Orgrimmar/10
path	36.02,69.95
Follow the path, clicking the Massive Ironbound Door
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Kill the three waves of mobs and jump in one of the tubes
kill Siegecrafter Blackfuse##71504
collect 1 Blackfuse's Power Core##138097 |goto Siege of Orgrimmar/10 62.23,42.58
step
Use the Bucket of Green Paint |use Bucket of Green Paint##137652
collect 1 Deactivated Green Juggernaut##137658
step
Use the Deactivated Green Juggernaut to summon your pet |use Deactivated Green Juggernaut##137658
Use your _Tame Beast_ ability on _Green Juggernaut_ |cast Tame Beast##1515
|tip They are level 35-37, depending on your level.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Mechanical Pets\\Iron Scorpions\\Red-Gray Iron Scorpion",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red-Gray Iron Scorpion pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={70231},
},[[
step
Enter the Siege of Orgrimmar raid |goto Vale of Eternal Blossoms/0 74.06,42.03 < 6 |c
|tip Difficulty must be normal or higher.
step
map	Siege of Orgrimmar/2
path	follow loose; loop off; ants curved; dist 30
path	90.77,45.48	84.43,49.73	77.08,57.75
path	71.22,54.28	67.09,49.78	51.92,49.64
path	32.05,45.61	17.19,45.58	11.75,52.48
path	11.75,72.14
map	Siege of Orgrimmar/1
path	follow loose; loop off; ants curved; dist 30
path	33.99,19.04	36.91,31.36	40.65,41.32
path	46.13,60.40
map	Siege of Orgrimmar/3
path	64.51,12.43	57.73,19.81	61.02,34.48
path	70.30,37.17	64.52,49.17	41.64,63.25
Follow the path
|tip Opening the world map will display an ant trail guiding you through the current floor.
|tip Along the way, kill Immerseus, The Fallen Protectors, and Norushen.
|tip Use our raid guide if you need boss information.
|tip After Imerseus, stand on the lighted platform and use the button that appears to open the door.
confirm
step
kill Sha of Pride##71734
clicknpc Portal to Orgrimmar##103191 |goto Siege of Orgrimmar/3 19.62,57.63
Defeat Sha of Pride and take the portal
confirm
step
talk Lady Jaina Proudmoore##72302 |goto Siege of Orgrimmar/4 109.90,43.36
Tell her: "_Reporting for duty!_"
|tip Watch the dialogue
click Minor Portal##221522 |goto Siege of Orgrimmar/4 109.70,44.00
Reach the docks |goto Siege of Orgrimmar/4 87.19,28.15 < 10
confirm
step
clicknpc Spike Mine##76412
Destroy the first cannon |goto Siege of Orgrimmar/4 79.29,32.77
Destroy the second cannon |goto 81.87,36.90
Destroy the third cannon |goto 84.50,39.38
Destroy the fourth cannon |goto 85.36,43.02
Destroy the fifth cannon |goto 86.18,49.21
Destroy the sixth cannon |goto 87.32,51.30
Destroy the seventh cannon |goto 88.87,54.05
Click here when you finish destroying the cannons |confirm
step
map	Siege of Orgrimmar/4
path	follow loose; loop off; ants curved; dist 30
path	78.02,29.60	68.00,33.30	59.14,37.51
path	56.49,48.77	51.97,60.73	45.75,68.45
path	39.51,69.90	34.63,61.39	33.60,52.71
Kill Galakras and make your way to Iron Juggernaut
|tip Opening the world map will display an ant trail guiding you through the current floor.
|tip Talk to Lady Jaina Proudmoore to start the Galakras encounter.
|tip Galakras must be shot twice with a cannon to bring him down to the ground.
confirm
step
kill Iron Juggernaut##71466
collect 1 Pile of Juggernaut Parts##137654 |goto Siege of Orgrimmar/4 32.57,46.88
step
map	Siege of Orgrimmar/4
path	follow loose; loop off; ants curved; dist 30
path	31.04,39.48	30.63,29.59	35.19,28.03
map	Siege of Orgrimmar/5
path	51.69,77.07	50.73,65.86	51.07,53.79
path	53.17,47.80	61.26,41.23	58.71,29.59
map	Siege of Orgrimmar/6
path	73.86,14.57	65.10,39.18	68.72,50.07
map	Siege of Orgrimmar/7
path	39.33,18.17	42.90,32.00	50.53,51.65
path	57.70,65.73	72.22,65.52
Follow the path
|tip Opening the world map will display an ant trail guiding you through the current floor.
|tip Defeat the Kor'kron Dark Shaman and General Nazgrim along the way.
confirm
step
Ride the elevator to the bottom
confirm
step
map	Siege of Orgrimmar/8
path	follow loose; loop off; ants curved; dist 30
path	15.04,84.31	20.62,76.05	23.13,61.12
path	32.14,58.73	38.68,57.76	41.40,63.78
path	58.25,57.53	53.60,65.86	46.27,52.68
path	38.88,36.46	30.64,17.75	37.65,11.81
path	42.95,23.88	48.17,35.68
Follow the path
|tip Opening the world map will display an ant trail guiding you through the current floor.
|tip Click the release lever illuminated by a pillar of light.
confirm
step
map	Siege of Orgrimmar/8
path	follow loose; loop off; ants curved; dist 30
path	51.23,32.81	60.66,23.02	67.50,31.47
path	72.98,43.59	79.80,58.90	78.14,73.92
map	Siege of Orgrimmar/9
path	59.16,22.29	53.02,28.54	46.14,35.47
path	40.67,41.01	36.70,49.48	40.96,58.57
path	48.31,75.20
Follow the path
|tip Opening the world map will display an ant trail guiding you through the current floor.
|tip Kill or tame Thok at the end.
confirm
step
map	Siege of Orgrimmar/9
path	follow loose; loop off; ants curved; dist 30
path	46.16,70.10	40.60,57.76	36.98,47.94
path	40.88,40.81	48.69,32.88	56.42,25.06
path	64.33,17.48
map	Siege of Orgrimmar/8
path	83.89,67.90
map	Siege of Orgrimmar/10
path	36.02,69.95
Follow the path, clicking the Massive Ironbound Door
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Kill the three waves of mobs and jump in one of the tubes
kill Siegecrafter Blackfuse##71504
collect 1 Blackfuse's Power Core##138097 |goto Siege of Orgrimmar/10 62.23,42.58
step
map	Siege of Orgrimmar/10
path	follow loose; loop off; ants curved; dist 30
path	46.12,59.18	31.19,74.55
map	Siege of Orgrimmar/8
path	86.87,64.86	88.12,77.31
map	Siege of Orgrimmar/11
path	36.98,23.24	44.12,19.73	50.94,10.78
path	59.99,17.29	66.35,31.32	73.07,46.10
path	79.75,65.19	72.76,82.44
click Bucket of Grey Paint##250590
collect 1 Bucket of Grey Paint##137653
|tip By the crates and sacks.
step
Use the Bucket of Grey Paint |use Bucket of Grey Paint##137653
collect 1 Deactivated Grey Juggernaut##137655
step
Use the Deactivated Grey Juggernaut to summon your pet |use Deactivated Grey Juggernaut##137655
Use your _Tame Beast_ ability on _Grey Juggernaut_ |cast Tame Beast##1515
|tip They are level 35-37, depending on your level.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Mechanical Pets\\Iron Scorpions\\Teal Iron Scorpion",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Teal Iron Scorpion pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={70230},
},[[
step
Enter the Siege of Orgrimmar raid |goto Vale of Eternal Blossoms/0 74.06,42.03 < 6 |c
|tip Difficulty must be normal or higher.
step
map	Siege of Orgrimmar/2
path	follow loose; loop off; ants curved; dist 30
path	90.77,45.48	84.43,49.73	77.08,57.75
path	71.22,54.28	67.09,49.78	51.92,49.64
path	32.05,45.61	17.19,45.58	11.75,52.48
path	11.75,72.14
map	Siege of Orgrimmar/1
path	follow loose; loop off; ants curved; dist 30
path	33.99,19.04	36.91,31.36	40.65,41.32
path	46.13,60.40
map	Siege of Orgrimmar/3
path	64.51,12.43	57.73,19.81	61.02,34.48
path	70.30,37.17	64.52,49.17	41.64,63.25
Follow the path
|tip Opening the world map will display an ant trail guiding you through the current floor.
|tip Along the way, kill Immerseus, The Fallen Protectors, and Norushen.
|tip Use our raid guide if you need boss information.
|tip After Imerseus, stand on the lighted platform and use the button that appears to open the door.
confirm
step
kill Sha of Pride##71734
clicknpc Portal to Orgrimmar##103191 |goto Siege of Orgrimmar/3 19.62,57.63
Defeat Sha of Pride and take the portal
confirm
step
talk Lady Jaina Proudmoore##72302 |goto Siege of Orgrimmar/4 109.90,43.36
Tell her: "_Reporting for duty!_"
|tip Watch the dialogue
click Minor Portal##221522 |goto Siege of Orgrimmar/4 109.70,44.00
Reach the docks |goto Siege of Orgrimmar/4 87.19,28.15 < 10
confirm
step
clicknpc Spike Mine##76412
Destroy the first cannon |goto Siege of Orgrimmar/4 79.29,32.77
Destroy the second cannon |goto 81.87,36.90
Destroy the third cannon |goto 84.50,39.38
Destroy the fourth cannon |goto 85.36,43.02
Destroy the fifth cannon |goto 86.18,49.21
Destroy the sixth cannon |goto 87.32,51.30
Destroy the seventh cannon |goto 88.87,54.05
Click here when you finish destroying the cannons |confirm
step
map	Siege of Orgrimmar/4
path	follow loose; loop off; ants curved; dist 30
path	78.02,29.60	68.00,33.30	59.14,37.51
path	56.49,48.77	51.97,60.73	45.75,68.45
path	39.51,69.90	34.63,61.39	33.60,52.71
Kill Galakras and make your way to Iron Juggernaut
|tip Opening the world map will display an ant trail guiding you through the current floor.
|tip Talk to Lady Jaina Proudmoore to start the Galakras encounter.
|tip Galakras must be shot twice with a cannon to bring him down to the ground.
confirm
step
kill Iron Juggernaut##71466
collect 1 Pile of Juggernaut Parts##137654 |goto Siege of Orgrimmar/4 32.57,46.88
step
map	Siege of Orgrimmar/4
path	follow loose; loop off; ants curved; dist 30
path	31.04,39.48	30.63,29.59	35.19,28.03
map	Siege of Orgrimmar/5
path	51.69,77.07	50.73,65.86	51.07,53.79
path	53.17,47.80	61.26,41.23	58.71,29.59
map	Siege of Orgrimmar/6
path	73.86,14.57	65.10,39.18	68.72,50.07
map	Siege of Orgrimmar/7
path	39.33,18.17	42.90,32.00	50.53,51.65
path	57.70,65.73	72.22,65.52
Follow the path
|tip Opening the world map will display an ant trail guiding you through the current floor.
|tip Defeat the Kor'kron Dark Shaman and General Nazgrim along the way.
confirm
step
Ride the elevator to the bottom
confirm
step
map	Siege of Orgrimmar/8
path	follow loose; loop off; ants curved; dist 30
path	15.04,84.31	20.62,76.05	23.13,61.12
path	32.14,58.73	38.68,57.76	41.40,63.78
path	58.25,57.53	53.60,65.86	46.27,52.68
path	38.88,36.46	30.64,17.75	37.65,11.81
path	42.95,23.88	48.17,35.68
Follow the path
|tip Opening the world map will display an ant trail guiding you through the current floor.
|tip Click the release lever illuminated by a pillar of light.
confirm
step
map	Siege of Orgrimmar/8
path	follow loose; loop off; ants curved; dist 30
path	51.23,32.81	60.66,23.02	67.50,31.47
path	72.98,43.59	79.80,58.90	78.14,73.92
map	Siege of Orgrimmar/9
path	59.16,22.29	53.02,28.54	44.17,28.68
Follow the path
|tip Opening the world map will display an ant trail guiding you through the current floor.
click Bucket of Teal Paint##250589
collect 1 Bucket of Teal Paint##137651
|tip In the corner.
step
map	Siege of Orgrimmar/9
path	follow loose; loop off; ants curved; dist 30
path	46.14,35.47	40.67,41.01	36.70,49.48
path	40.96,58.57	48.31,75.20
Follow the path
|tip Opening the world map will display an ant trail guiding you through the current floor.
|tip Kill or tame Thok at the end.
confirm
step
map	Siege of Orgrimmar/9
path	follow loose; loop off; ants curved; dist 30
path	46.16,70.10	40.60,57.76	36.98,47.94
path	40.88,40.81	48.69,32.88	56.42,25.06
path	64.33,17.48
map	Siege of Orgrimmar/8
path	83.89,67.90
map	Siege of Orgrimmar/10
path	36.02,69.95
Follow the path, clicking the Massive Ironbound Door
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Kill the three waves of mobs and jump in one of the tubes
kill Siegecrafter Blackfuse##71504
collect 1 Blackfuse's Power Core##138097 |goto Siege of Orgrimmar/10 62.23,42.58
step
Use the Bucket of Teal Paint |use Bucket of Teal Paint##137651
collect 1 Deactivated Teal Juggernaut##137657
step
Use the Deactivated Teal Juggernaut to summon your pet |use Deactivated Teal Juggernaut##137657
Use your _Tame Beast_ ability on _Teal Juggernaut_ |cast Tame Beast##1515
|tip They are level 35-37, depending on your level.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Mechanical Pets\\Mechanical Axebeaks\\Mechanical Axebeak",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Mechanical Axebeak pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={68296},
},[[
step
Before proceeding, ensure that you have learned the Mecha-Bond Imprint Matrix spell from the item of the same name, allowing you to tame mechanicals
|tip This is an engineer crafted item. If you have Engineering, you can craft it. Or, you can purchase it from the Auction House.
|tip If you are a Gnome or Goblin, you do not need this item.
confirm
step
Search for the _War-Iron Axebeak_
|tip They are level 40.
|tip Be sure to CC or kill the Deranged Iron Engineers.
Use your _Tame Beast_ ability on the _War-Iron Axebeak_ |cast Tame Beast##1515 |goto Tanaan Jungle/0 40.39,53.57
|tip Inside the cave.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Mechanical Pets\\Mechanical Rabbits\\Robotic Rabbit",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Robotic Rabbit pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={68291},
},[[
step
Before proceeding, ensure that you have learned the Mecha-Bond Imprint Matrix spell from the item of the same name, allowing you to tame mechanicals
|tip This is an engineer crafted item. If you have Engineering, you can craft it. Or, you can purchase it from the Auction House.
|tip If you are a Gnome or Goblin, you do not need this item.
confirm
step
Search for _Weaponized Rabbot_
|tip It is level 1-30, depending on your level.
|tip It has a respawn timer of several hours.
Use your _Tame Beast_ ability on a _Weaponized Rabbot_ |cast Tame Beast##1515 |goto New Tinkertown/0 66.53,25.91
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Mechanical Pets\\Mechanical Spiders\\Copper-Gray Mechanical Spider",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Copper-Gray Mechanical Spider pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={73602},
},[[
step
Before proceeding, ensure that you have learned the Mecha-Bond Imprint Matrix spell from the item of the same name, allowing you to tame mechanicals
|tip This is an engineer crafted item. If you have Engineering, you can craft it. Or, you can purchase it from the Auction House.
|tip If you are a Gnome or Goblin, you do not need this item.
confirm
step
map	Dustwallow Marsh/0
path	follow loose; loop off; ants curved; dist 20
path	70.98,19.16	72.57,18.54	74.07,18.58
path	75.12,17.88	76.55,17.61
Follow the path and enter the building |goto Dustwallow Marsh/0 77.24,17.40 < 5 |noway |c
|tip You will need to use the Camouflage ability from Marksmanship or Survival to stealth past the sentry robots or kill them.
|tip There are stealthed proximity mines that do massive damage. Use Track Mechanicals to avoid them.
step
kill Doctor Weavil##15552
|tip Weavil is upstairs. You will need to use the Camouflage ability from Marksmanship or Survival to stealth past the sentry robots or kill them.
Have your pet tank Weavil in the east corner |goto 78.03,17.31
DPS Weavil from the west corner |goto 77.42,17.12
collect 1 Electrified Key##142262
step
Leave the building |goto 76.57,17.70 < 6
Follow the path |goto 75.87,18.54 < 20
Follow the path |goto 74.44,16.95 < 20
|tip There are stealthed proximity mines that do massive damage. Use Track Mechanicals to avoid them.
|tip You will need to use the Camouflage ability from Marksmanship or Survival to stealth past the sentry robots or kill them.
Use the Electrified Key on the Copper Arachnodrone |use Electrified Key##142262
kill Copper Arachnodrone##114992
|tip They are level 15-30, depending on your level.
|tip Drag the Arachnodrone behind the building to avoid respawns.
|tip DPS the Arachnodrone to 30% in order to tame it.
|tip Interrupt Maximum Repair or the drone will heal to full health.
Use your _Tame Beast_ ability on the _Copper Arachnodrone_ |cast Tame Beast##1515 |goto 75.15,14.90
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Mechanical Pets\\Mechanical Spiders\\Gold Mechanical Spider",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Gold Mechanical Spider pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={73601},
},[[
step
Before proceeding, ensure that you have learned the Mecha-Bond Imprint Matrix spell from the item of the same name, allowing you to tame mechanicals
|tip This is an engineer crafted item. If you have Engineering, you can craft it. Or, you can purchase it from the Auction House.
|tip If you are a Gnome or Goblin, you do not need this item.
confirm
step
map	Dustwallow Marsh/0
path	follow loose; loop off; ants curved; dist 20
path	70.98,19.16	72.57,18.54	74.07,18.58
path	75.12,17.88	76.55,17.61
Follow the path and enter the building |goto Dustwallow Marsh/0 77.24,17.40 < 5 |noway |c
|tip You will need to use the Camouflage ability from Marksmanship or Survival to stealth past the sentry robots or kill them.
|tip There are stealthed proximity mines that do massive damage. Use Track Mechanicals to avoid them.
step
kill Doctor Weavil##15552
|tip Weavil is upstairs. You will need to use the Camouflage ability from Marksmanship or Survival to stealth past the sentry robots or kill them.
Have your pet tank Weavil in the east corner |goto 78.03,17.31
DPS Weavil from the west corner |goto 77.42,17.12
collect 1 Electrified Key##142262
step
Leave the building |goto 76.57,17.70 < 6
Follow the path |goto 76.41,19.47 < 20
Follow the path |goto 75.77,22.05 < 35 |c
|tip You will need to use the Camouflage ability from Marksmanship or Survival to stealth past the sentry robots or kill them.
|tip There are stealthed proximity mines that do massive damage. Use Track Mechanicals to avoid them.
step
_WARNING_: There is a turret inside the tower with the arachnodrone. Let your pet tank it.
Use the Electrified Key on the Gold Arachnodrone |use Electrified Key##142262
|tip They are level 15-30, depending on your level.
|tip DPS the Arachnodrone to 30% in order to tame it.
|tip Interrupt Maximum Repair or the drone will heal to full health.
Use your _Tame Beast_ ability on the _Gold Arachnodrone_ |cast Tame Beast##1515 |goto 75.09,21.30
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Mechanical Pets\\Mechanical Spiders\\Gray-Bronze Mechanical Spider",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Gray-Bronze Mechanical Spider pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={73603},
},[[
step
Before proceeding, ensure that you have learned the Mecha-Bond Imprint Matrix spell from the item of the same name, allowing you to tame mechanicals
|tip This is an engineer crafted item. If you have Engineering, you can craft it. Or, you can purchase it from the Auction House.
|tip If you are a Gnome or Goblin, you do not need this item.
confirm
step
map	Dustwallow Marsh/0
path	follow loose; loop off; ants curved; dist 20
path	70.98,19.16	72.57,18.54	74.07,18.58
path	75.12,17.88	76.55,17.61
Follow the path and enter the building |goto Dustwallow Marsh/0 77.24,17.40 < 5 |noway |c
|tip You will need to use the Camouflage ability from Marksmanship or Survival to stealth past the sentry robots or kill them.
|tip There are stealthed proximity mines that do massive damage. Use Track Mechanicals to avoid them.
step
kill Doctor Weavil##15552
|tip Weavil is upstairs. You will need to use the Camouflage ability from Marksmanship or Survival to stealth past the sentry robots or kill them.
Have your pet tank Weavil in the east corner |goto 78.03,17.31
DPS Weavil from the west corner |goto 77.42,17.12
collect 1 Electrified Key##142262
step
Leave the building |goto 76.57,17.70 < 6
Go down into the dungeon |goto 77.42,18.27 < 6
Go down the hallway and jump in the water |goto 76.98,20.25 < 6
Swim through the underwater passage |goto 77.01,19.43 < 6 |noway |c
|tip You will need to use the Camouflage ability from Marksmanship or Survival to stealth past the sentry robots or kill them.
step
Use the Electrified Key on the Silver Arachnodrone |use Electrified Key##142262
kill Silver Arachnodrone##114993
|tip You will need to use the Camouflage ability from Marksmanship or Survival to stealth past the sentry robots or kill them.
|tip They are level 15-30, depending on your level.
|tip DPS the Arachnodrone to 30% in order to tame it.
|tip Interrupt Maximum Repair or the drone will heal to full health.
Use your _Tame Beast_ ability on the _Silver Arachnodrone_ |cast Tame Beast##1515 |goto 76.56,20.28
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Mechanical Pets\\Mechanical Squirrel\\Mechanical Squirrel",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Mechanical Squirrel pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={70105},
},[[
step
Before proceeding, ensure that you have learned the Mecha-Bond Imprint Matrix spell from the item of the same name, allowing you to tame mechanicals
|tip This is an engineer crafted item. If you have Engineering, you can craft it. Or, you can purchase it from the Auction House.
|tip If you are a Gnome or Goblin, you do not need this item.
confirm
step
click An Intern's Journal##250416 |goto Azshara/0 44.19,74.66
|tip Inside the building.
confirm
step
click Thorium Manifold Lever##250418 |goto Azshara/0 43.70,75.69
|tip In front of the generator.
confirm
step
click Antimatter Storage Energizer##250421 |goto Azshara/0 43.44,74.87
|tip The red button on the right side.
confirm
step
click Flux Containment Release Lever##250419 |goto Azshara/0 44.07,77.01
|tip In front of the mechanical arm.
confirm
step
click Hydro-Sync Router##250420 |goto Azshara/0 43.51,76.10
|tip On the end of the generator.
confirm
step
Search for _N.U.T.Z._
|tip They are level 5-30, depending on your level.
|tip Activate Aspect of the Turtle before taming N.U.T.Z.
Use your _Tame Beast_ ability on _N.U.T.Z._ |cast Tame Beast##1515 |goto Azshara/0 44.06,76.12
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Mechanical Pets\\Mechanostriders\\Blue-Purple Mechanostrider",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue-Purple Mechanostrider pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={10662},
},[[
step
Before proceeding, ensure that you have learned the Mecha-Bond Imprint Matrix spell from the item of the same name, allowing you to tame mechanicals
|tip This is an engineer crafted item. If you have Engineering, you can craft it. Or, you can purchase it from the Auction House.
|tip If you are a Gnome or Goblin, you do not need this item.
confirm
step
Enter the Gnomeregan dungeon |goto Dun Morogh/10 30.14,74.58
confirm
step
Follow the path around the outside of the Hall of Gears |goto Gnomeregan/1 58.35,44.07 < 15 |n
Go through the arch at the southwest side |goto Gnomeregan/1 42.15,61.37 < 15 |n
Go right and down the stairs, approaching The Sparklematic 5200! |goto Gnomeregan/2 63.34,67.69 < 15
|tip Kill enemies along the way and loot Grime-Encrusted Objects.
When you reach the Sparklematic 5200, click here |confirm
step
click The Sparklematic 5200!
accept The Sparklematic 5200!##4601 |goto Gnomeregan/2 63.42,67.40
step
click The Sparklematic 5200!
turnin The Sparklematic 5200!##4601 |goto Gnomeregan/2 63.42,67.40
step
click The Sparklematic 5200!
accept More Sparklematic Action##4603 |goto Gnomeregan/2 63.42,67.40 |repeatable |n
collect 1 Yellow Punch Card##9280 |next |or
Open your Sparklematic-Wrapped Box |use Sparklematic-Wrapped Box##9363 |only if itemcount(9363) >= 1
step
Go through the southeast arch into The Dormatory |goto Gnomeregan/2 69.3,68.3
click Matrix Punchograph 3005-B##142475
Select: "_Acquire Higher Level Access Card_"
collect Blue Punch Card##9282 |goto Gnomeregan/2 69.8,70.6
step
Go north into The Hall of Gears |goto Gnomeregan/2 75.8,61.2
Go into the west tunnel |goto 64.9,45.7
Enter the Launch Bay |goto 38.4,67.6
Go around the outer ring to the bridge |goto 14.6,65.0
kill Electrocutioner 6000##6235
collect Electrocutioner Leg##9446
|tip This item is required to tame this pet. If it doesn't drop, zone out and reset the instance.
step
click Matrix Punchograph 3005-C##142476
Select: "_Acquire Higher Level Access Card_"
collect Red Punch Card##9281
step
Drop down to the lower level and go through the southeast tunnel |goto Gnomeregan/3 32.9,39.0
Go right, then left, then enter the Engineering Labs |goto 38.1,64.5
Go left and ride the elevator to the bottom floor |goto 48.2,71.5
Click here after you ride the elevator |confirm
step
click Matrix Punchograph 3005-D##142696
|tip This is on the southwest side of the room.
Select: "_Acquire high level data card._"
collect Prismatic Punch Card##9316 |goto Gnomeregan/4 62.6,86.9
step
Ride the elevator back to the top |goto Gnomeregan/3 49.4,70.7
Go left and take the tunnel at the northwest corner of the room |goto 37.3,63.2
Go right, then go to the top of the ramps |goto Gnomeregan/2 33.4,84.5
Go through the east tunnel |goto 38.9,67.3
Enter the Hall of Gears |goto 65.5,45.4
Go through the southern room into The Dormitory |goto 75.8,64.1
Go through the top left hole on the southern wall |goto 77.8,80.7
click Matrix Punchograph 3005-E##251048
Select: "_Deactivate Security Measures_"
Click here when the door opens |confirm
step
Equip the Electrocutioner Leg from your inventory |use Electrocutioner Leg##9446
|tip You must attack Sentient Mechanostrider with Electrocutioner Leg until the weapon procs.
|tip This removes Sentient Mechanostrider's Resilient Circuits buff, making it tameable.
|tip The weapon might take a while to proc. You might have to use Exhilaration and/or a healing potion.
kill Sentient Mechanostrider##108106
|tip They are level 10-30, depending on your level.
Use your _Tame Beast_ ability on _Sentient Mechanostrider_ |cast Tame Beast##1515 |goto 79.0,86.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Mechanical Pets\\Mechanostriders\\Matte-Gray Mechanostrider",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Matte-Gray Mechanostrider pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={9476},
},[[
step
Before proceeding, ensure that you have learned the Mecha-Bond Imprint Matrix spell from the item of the same name, allowing you to tame mechanicals
|tip This is an engineer crafted item. If you have Engineering, you can craft it. Or, you can purchase it from the Auction House.
|tip If you are a Gnome or Goblin, you do not need this item.
confirm
step
Search for a _Proto-Strider_
|tip They are level 5-30, depending on your level.
Use your _Tame Beast_ ability on a _Proto-Strider_ |cast Tame Beast##1515 |goto Loch Modan/0 72.84,78.29
|tip Inside the cave.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Mechanical Pets\\Mechanostriders\\Red-Blue Mechanostrider",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red-Blue Mechanostrider pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={10664},
},[[
step
Before proceeding, ensure that you have learned the Mecha-Bond Imprint Matrix spell from the item of the same name, allowing you to tame mechanicals
|tip This is an engineer crafted item. If you have Engineering, you can craft it. Or, you can purchase it from the Auction House.
|tip If you are a Gnome or Goblin, you do not need this item.
confirm
step
Enter the cave |goto Loch Modan/0 71.63,76.99
Search for _Optimo_
|tip It is level 10-45, depending on your level.
|tip It has a respawn timer of about an hour.
|tip Optimo runs all over the cave.
Use your _Tame Beast_ ability on _Optimo_ |cast Tame Beast##1515 |goto Loch Modan/0 73.91,77.90
|tip Inside the cave.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Mechanical Pets\\Mechanowolves\\Black Mechanowolf",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Black Mechanowolf pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={68852},
},[[
step
Before proceeding, ensure that you have learned the Mecha-Bond Imprint Matrix spell from the item of the same name, allowing you to tame mechanicals
|tip This is an engineer crafted item. If you have Engineering, you can craft it. Or, you can purchase it from the Auction House.
|tip If you are a Gnome or Goblin, you do not need this item.
confirm
step
label "One"
map	Highmountain/0
path	follow loose; loop off; ants curved; dist 25
path	52.05,44.98	51.20,42.59	50.44,40.97
path	50.98,39.39	51.62,37.53	50.56,36.06
path	49.65,34.78	48.60,34.54	47.95,33.63
path	47.03,31.53	46.00,30.47	43.84,29.77
path	43.09,29.28	41.96,29.81	40.93,31.29
path	40.92,33.86	40.80,36.31	39.58,37.86
path	38.23,39.07	37.09,41.36	38.36,42.46
path	Highmountain/16 32.44,61.62	Highmountain/16 36.55,72.23
path	Highmountain/16 42.45,82.68	Highmountain/16 52.78,87.47
path	41.59,46.93	42.66,47.02	43.92,46.56
path	44.14,48.47	44.07,50.95	44.52,50.90
path	44.78,49.73	46.30,49.62
Search for _Treble_
|tip It is level 10-45, depending on your level.
|tip It leaves behind a trail of oil.
|tip You will need to search for the oil puddles, then use your flare to reveal Treble.
|tip Survival works best to tame Treble. Drop a freezing trap, then Concussive Shot and tame.
Use your _Tame Beast_ ability on _Treble_ |cast Tame Beast##1515
Follow the path, searching for puddles of oil |goto 46.30,49.62 |c |noway
step
map	Highmountain/0
path	follow loose; loop off; ants curved; dist 25
path	46.30,49.62	44.78,49.73	44.52,50.90
path	44.07,50.95	44.14,48.47	43.92,46.56
path	42.66,47.02	41.59,46.93	Highmountain/16 52.78,87.47
path	Highmountain/16 42.45,82.68	Highmountain/16 36.55,72.23
path	Highmountain/16 32.85,60.36	38.95,43.30
path	37.09,41.36	38.23,39.07	39.58,37.86
path	40.80,36.31	40.92,33.86	40.93,31.29
path	41.96,29.81	43.09,29.28	43.84,29.77
path	46.00,30.47	47.03,31.53	47.95,33.63
path	48.60,34.54	49.65,34.78	50.56,36.06
path	51.62,37.53	50.98,39.39	50.44,40.97
path	51.20,42.59	52.05,44.98
Search for _Treble_
|tip It is level 10-45, depending on your level.
|tip It leaves behind a trail of oil.
|tip You will need to search for the oil puddles, then use your flare to reveal Treble.
|tip Survival works best to tame Treble. Drop a freezing trap, then Concussive Shot and tame.
Use your _Tame Beast_ ability on _Treble_ |cast Tame Beast##1515
Follow the path, searching for puddles of oil |goto 52.05,44.98 |c |noway |next "One"
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Mechanical Pets\\Mechanowolves\\Blue Mechanowolf",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Blue Mechanowolf pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={71920},
},[[
step
Before proceeding, ensure that you have learned the Mecha-Bond Imprint Matrix spell from the item of the same name, allowing you to tame mechanicals
|tip This is an engineer crafted item. If you have Engineering, you can craft it. Or, you can purchase it from the Auction House.
|tip If you are a Gnome or Goblin, you do not need this item.
confirm
step
Enter the Gnomeregan dungeon |goto Dun Morogh/10 30.14,74.58
confirm
step
Jump from the ledge next to the first beam on the left onto the big gear below |goto Gnomeregan/1 57.54,48.26 < 15 |n
Exit the Hall of Gears through the west passage |goto Gnomeregan/2 64.81,44.32 < 15 |n
Drop down from the ledge in the Launch Bay |goto Gnomeregan/2 34.34,68.10 < 15 |n
Go through the southeast doorway |goto Gnomeregan/3 32.72,39.09 < 15 |n
Turn Right, then make a left at the Engineering Bay |goto Gnomeregan/3 36.12,53.03 < 15 |n
Ride the elevaor down |goto Gnomeregan/3 49.35,70.97 < 15 |n
Reach the Engineering Labs |goto Gnomeregan/4 71.39,77.31 |n
Click here after you get off the elevator |confirm
step
Solve the first puzzle at the north end of the room |goto Gnomeregan/4 68.23,72.47
|tip The 8 lights on the wall must all be lit up.
|tip When you click a light, that light will go on or off, as well as the one immediately to its left and right.
|tip If you come across an 8 button puzzle with all lights lit up except the far right or far left, the puzzle is unsolvable and you must reset the dungeon.
_Note_: Upon solving all three puzzles, Friender will become active immediately, racing around the room in circles
confirm
step
Solve the second puzzle at the west end of the room |goto Gnomeregan/4 61.03,80.45
|tip The 8 lights on the wall must all be lit up.
|tip When you click a light, that light will go on or off, as well as the one immediately to its left and right.
|tip If you come across an 8 button puzzle with all lights lit up except the far right or far left, the puzzle is unsolvable and you must reset the dungeon.
_Note_: Upon solving all three puzzles, Friender will become active immediately, racing around the room in circles
confirm
step
Solve the third puzzle at the south end of the room |goto Gnomeregan/4 66.49,91.28
|tip The 8 lights on the wall must all be lit up.
|tip When you click a light, that light will go on or off, as well as the one immediately to its left and right.
|tip If you come across an 8 button puzzle with all lights lit up except the far right or far left, the puzzle is unsolvable and you must reset the dungeon.
_Note_: Upon solving all three puzzles, Friender will become active immediately, racing around the room in circles
confirm
step
Use your _Tame Beast_ ability on _Friender_ |cast Tame Beast##1515
|tip It is level 10-30, depending on your level.
|tip Activate Aspect of the Turtle and tame Friender.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Mechanical Pets\\Mechanowolves\\Green Mechanowolf",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Green Mechanowolf pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={73898},
},[[
step
Before proceeding, ensure that you have learned the Mecha-Bond Imprint Matrix spell from the item of the same name, allowing you to tame mechanicals
|tip This is an engineer crafted item. If you have Engineering, you can craft it. Or, you can purchase it from the Auction House.
|tip If you are a Gnome or Goblin, you do not need this item.
confirm
step
map	Dustwallow Marsh/0
path	follow loose; loop off; ants curved; dist 20
path	70.98,19.16	72.57,18.54	74.07,18.58
path	75.12,17.88	76.55,17.61
Follow the path and enter the building |goto Dustwallow Marsh/0 77.24,17.40 < 5 |noway |c
|tip You will need to use the Camouflage ability from Marksmanship or Survival to stealth past the sentry robots or kill them.
|tip There are stealthed proximity mines that do massive damage. Use Track Mechanicals to avoid them.
step
kill Model GU-4RD-3R##115479
|tip You will need to DPS Model GU-4RD-3R to 30% before you can tame it.
|tip You can let your pet tank, then dismiss it at 30% to tame.
|tip When taming, activate Aspect of the Turtle. It can hit quite hard.
|tip You will need to use the Camouflage ability from Marksmanship or Survival to stealth past the sentry robots or kill them.
|tip They are level 15-30, depending on your level.
Use your _Tame Beast_ ability on _Model GU-4RD-3R_ |cast Tame Beast##1515 |goto 77.75,17.12
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Mechanical Pets\\Mechanowolves\\Red Mechanowolf",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red Mechanowolf pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={68856},
},[[
step
Before proceeding, ensure that you have learned the Mecha-Bond Imprint Matrix spell from the item of the same name, allowing you to tame mechanicals
|tip This is an engineer crafted item. If you have Engineering, you can craft it. Or, you can purchase it from the Auction House.
|tip If you are a Gnome or Goblin, you do not need this item.
confirm
step
label "One"
map	Azsuna/0
path	follow loose; loop off; ants curved; dist 25
path	43.46,8.76	45.10,10.38	47.34,11.24
path	47.66,13.27	48.63,14.63	50.37,15.43
path	51.66,16.20	53.53,14.28	55.44,13.58
path	55.85,15.52	55.26,16.48	55.96,18.20
path	56.57,19.57	58.62,18.94	59.87,16.94
path	61.46,18.19	63.45,19.77	65.01,20.68
path	65.88,22.74	66.19,24.49	66.03,27.26
path	66.04,29.12	66.62,31.99	64.03,31.56
path	65.18,33.28	65.57,36.57	63.91,34.68
path	61.68,34.58	59.56,34.63	59.45,32.12
path	58.97,30.36	57.62,33.17	55.81,31.55
path	54.84,29.34	52.39,28.68	52.25,30.14
path	50.16,30.39	48.09,27.77	47.03,29.78
path	45.92,31.16	44.53,31.90	43.90,33.51
path	43.06,34.49	42.59,32.56	42.88,30.68
Search for _Rush_
|tip It is level 10-45, depending on your level.
|tip It leaves behind a trail of oil.
|tip You will need to search for the oil puddles, then use your flare to reveal Rush.
|tip Survival works best to tame Rush. Drop a freezing trap, then Concussive Shot and tame.
Use your _Tame Beast_ ability on _Rush_ |cast Tame Beast##1515
Follow the path, searching for puddles of oil |goto 42.88,30.68 |c |noway
step
map	Azsuna/0
path	follow loose; loop off; ants curved; dist 25
path	42.88,30.68	42.59,32.56	43.06,34.49
path	43.90,33.51	44.53,31.90	45.92,31.16
path	47.03,29.78	48.09,27.77	50.16,30.39
path	52.25,30.14	52.39,28.68	54.84,29.34
path	55.81,31.55	57.62,33.17	58.97,30.36
path	59.45,32.12	59.56,34.63	61.68,34.58
path	63.91,34.68	65.57,36.57	65.18,33.28
path	64.03,31.56	66.62,31.99	66.04,29.12
path	66.03,27.26	66.19,24.49	65.88,22.74
path	65.01,20.68	63.45,19.77	61.46,18.19
path	59.87,16.94	58.62,18.94	56.57,19.57
path	55.96,18.20	55.26,16.48	55.85,15.52
path	55.44,13.58	53.53,14.28	51.66,16.20
path	50.37,15.43	48.63,14.63	47.66,13.27
path	47.34,11.24	45.10,10.38	43.46,8.76
Search for _Rush_
|tip It is level 10-45, depending on your level.
|tip It leaves behind a trail of oil.
|tip You will need to search for the oil puddles, then use your flare to reveal Rush.
|tip Survival works best to tame Rush. Drop a freezing trap, then Concussive Shot and tame.
Use your _Tame Beast_ ability on _Rush_ |cast Tame Beast##1515
Follow the path, searching for puddles of oil |goto 43.46,8.76 |c |noway |next "One"
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Mechanical Pets\\Robotic Chickens\\Robot Chicken",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Robot Chicken pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={6909},
},[[
step
Before proceeding, ensure that you have learned the Mecha-Bond Imprint Matrix spell from the item of the same name, allowing you to tame mechanicals
|tip This is an engineer crafted item. If you have Engineering, you can craft it. Or, you can purchase it from the Auction House.
|tip If you are a Gnome or Goblin, you do not need this item.
confirm
step
Search for a _Haywire Battle-Chicken_
|tip They are level 5-30, depending on your level.
Use your _Tame Beast_ ability on a _Haywire Battle-Chicken_ |cast Tame Beast##1515 |goto Loch Modan/0 73.91,77.90
|tip Inside the cave.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Mechanical Pets\\Robotic Gorillas\\Robotic Gorilla",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Robotic Gorilla pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={8841},
},[[
step
Before proceeding, ensure that you have learned the Mecha-Bond Imprint Matrix spell from the item of the same name, allowing you to tame mechanicals
|tip This is an engineer crafted item. If you have Engineering, you can craft it. Or, you can purchase it from the Auction House.
|tip If you are a Gnome or Goblin, you do not need this item.
confirm
step
Enter the cave |goto Un'Goro Crater/0 64.22,16.36 < 15
Follow the path up |goto Un'Goro Crater/0 68.73,17.23 < 15
Stand on this spot |goto Un'Goro Crater/0 68.58,13.34 < 15
Search for _A-Me 02_
|tip It is level 15-30, depending on your level.
|tip It has a respawn time of around 40 minutes.
|tip In order to tame A-Me 02, you will need to remove her Iron Will buff by dpsing her to 30%.
|tip DPS at max range, and make sure your pet is dismissed.
|tip A-Me 02 will become active at 30% and kill you in a few hits, so use Aspect of the Turtle and tame.
Use your _Tame Beast_ ability on _A-Me 02_ |cast Tame Beast##1515 |goto Un'Goro Crater/0 68.58,13.34
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Water Pets\\Crabs\\Spiked Crabs\\Red-Tinged Steel Blue Spiked Crab",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red-Tinged Steel Blue Spiked Crab pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={61702},
},[[
step
Search for a _Spikebacked Scuttler_
|tip They are level 10-45, depending on your level.
Use your _Tame Beast_ ability on _Spikebacked Scuttler_ |cast Tame Beast##1515 |goto Azsuna/0 64.8,56.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Water Pets\\Turtles\\Spiked Dragon Turtles\\Camo Spiked Dragon Turtle",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Camo Spiked Turtle pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={43411},
},[[
step
Search for a _Rankbite Ancient_
|tip They are level 25-35, depending on your level.
Use your _Tame Beast_ ability on a _Rankbite Ancient_ |cast Tame Beast##1515 |goto Townlong Steppes/0 54.0,67.6
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Water Pets\\Turtles\\Spiked Dragon Turtles\\Red Spiked Dragon Turtle",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Red Spiked Dragon Turtle pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={45491},
},[[
step
Search for a _Coastal Snapper_
|tip They are level 45.
Use your _Tame Beast_ ability on a _Coastal Snapper_ |cast Tame Beast##1515 |goto Suramar/0 15.0,53.0
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Hunter Pets\\Legion Pets\\Water Pets\\Turtles\\Stone Dragon Turtles\\Stone Dragon Turtle",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining a Stone Dragon Turtle pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={72656},
},[[
step
Search for a _Lowland Manashell_
|tip They are level 45.
|tip Search up and down the river for Manashells. They typically sleep on the riverbank.
Use your _Tame Beast_ ability on a _Lowland Manashell_ |cast Tame Beast##1515 |goto Suramar/0 37.46,36.41
]])
