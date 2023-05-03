local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("ScenarioAMOP") then return end
ZygorGuidesViewer.GuideMenuTier = "MOP"
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Pandaria Scenarios\\A Brewing Storm",{
author="support@zygorguides.com",
description="\nThis guide will walk you through the \"A Brewing Storm\" scenario.",
keywords={"mists", "of", "pandaria", "scenario"},
achieveid={7252,8310,7257,7258,7261},
patch='50004',
model={40972},
startlevel=35,
endlevel=35,
mapid=878,
},[[
step
talk Brewmaster Blanche##59569
|tip Blanche patrols all around the bridge and the areas that it connects.
accept Blanche's Boomer Brew##30567 |goto The Jade Forest/0 38.87,31.15
step
If you would like to complete this scenario on Heroic difficulty, click here |confirm |next "A_Brewing_Storm_Heroic"
|tip
Otherwise, click here for Normal difficulty |confirm
step
talk Brewmaster Blanche##58740
Select _"Queue for A Brewing Storm."_
Enter the _A Brewing Storm_ scenario |scenariostart |goto 38.87,31.15
|next "Scenario_Start"
|only if level <= 35
step
Enter the building |goto Vale of Eternal Blossoms/0 81.40,31.95 < 10 |walk
talk Lorewalker Fu##78709
Select _"Tell me the tale of a Brewing Storm."_
Enter the _A Brewing Storm_ scenario |scenariostart |goto 82.96,30.38
|next "Scenario_Start"
|only if level >= 36
step
label "A_Brewing_Storm_Heroic"
Enter the building |goto Vale of Eternal Blossoms/0 81.40,31.95 < 10 |walk
talk Lorewalker Shin##78777
Select _"Tell me the tale of a Brewing Storm."_
Enter the _A Brewing Storm_ scenario |scenariostart |goto 83.05,30.45
|only if level >= 36
step
label "Scenario_Start"
talk Brewmaster Blanche##58740
Tell her _"Let's get this lightning party started, Blanche."_
clicknpc Brewkeg##58916
|tip Click on the Brewkegs when they catch fire to extinguish them.
|tip Avoid standing near the lightning rods when they light up.
Defend the Brewing Process |scenariogoal Defend the Brew##1/22197 |goto A Brewing Storm/0 55.32,44.99
step
Follow the path |goto 49.81,49.31 < 10 |walk
Go down the stairs |goto 54.34,55.87 < 10 |walk
Go down the stairs |goto 64.45,54.87 < 10 |walk
Go down the stairs |goto 70.12,43.80 < 10 |walk
Follow the path |goto 64.00,35.35 < 10 |walk
Follow the path up |goto 50.67,32.25 < 10 |walk
Escort Blanche to Thunderpaw Refuge |scenariogoal Escort Blanche to Thunderpaw Refuge##2/19564 |goto 30.14,66.14
step
Go down the stairs |goto 43.78,42.20 < 10 |walk
Follow the path |goto 42.39,69.88 < 10 |walk
Go up the stairs |goto 31.94,71.19 < 10 |walk
talk Brewmaster Blanche##58740 |goto 30.27,68.06
Tell her _"Let's kill some lizards, Blanche!"_
kill Borokhula the Destroyer##58739
|tip When Borokhula starts to cast Swamp Smash in front of him, do not stand in it.
|tip When he begins to channel Earth Shattering, watch the ground and avoid the red circles. Large spikes will come out of them.
|tip Designate one party member to add control.
|tip The adds can be quickly dispatched using the Boomer Brew Strike button on the screen. Target an add and click it twice to instantly kill it.
Defeat Borokhula the Destroyer |scenariogoal Defeat Borokhula the Destroyer##3/19565 |goto 30.23,60.76
step
Leave the scenario |goto 30.27,68.06 > 1000 |noway |c
|tip Right-click your player frame and select "Leave Instance Group."
step
talk Brewmaster Blanche##58740
|tip Blanche patrols all around the bridge and the areas that it connects.
turnin Blanche's Boomer Brew##30567 |goto The Jade Forest/0 38.87,31.15
step
Congratulations!
You have completed the _A Brewing Storm_ scenario
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Pandaria Scenarios\\A Little Patience",{
author="support@zygorguides.com",
description="\nThis guide will walk you through the \"A Little Patience\" scenario.",
keywords={"mists", "of", "pandaria", "scenario"},
achieveid={7988,7989,7990,7992,7993,7991},
patch='50100',
model={46813},
startlevel=15,
endlevel=15,
mapid=912,
},[[
step
talk Lyalia##64610
|tip You must complete a brief quest chain to accept the quest related to this scenario.
|tip You can pick up the initial quest, "Meet the Scout," from Lyalia outside of Shrine of Seven Stars.
|tip Complete the two following quests to unlock Lion's Landing.
accept Meet the Scout##32246 |goto Vale of Eternal Blossoms/0 83.99,58.66
step
talk Scout Lynna##68311
|tip Wait for the dialogue to complete
turnin Meet the Scout##32246 |goto Krasarang Wilds/0 85.24,29.13
step
talk King Varian Wrynn##61796
accept A King Among Men##32247 |goto 85.29,29.11
step
Follow the path |goto 84.09,26.19 < 15 |only if walking
Follow the path |goto 81.64,25.58 < 15 |only if walking
talk Marshal Troteman##68331
Find Marshal Troteman |q 32247/2 |goto 79.64,25.05
step
Follow the path |goto 80.31,22.51 < 15 |only if walking
Follow the path |goto 80.17,19.48 < 15 |only if walking
talk Hilda Hornswaggle##68312
Find Hilda Hornswaggle |q 32247/3 |goto 80.43,17.53
step
Kill Horde enemies around this area
Kill #25# Horde |q 32247/1 |goto 78.52,22.24
step
talk King Varian Wrynn##61796
|tip He is standing next to you.
turnin A King Among Men##32247
accept Lion's Landing##32109
step
click Flare Launcher##216609
turnin Lion's Landing##32109 |goto 85.60,29.13
step
talk Admiral Taylor##67940
accept A Little Patience##32248 |goto 89.55,32.58
step
Press _I_ to open the Group Finder tool
|tip Queue for the "A Little Patience" scenario.
Enter the _A Little Patience_ scenario |scenariostart
|next "Scenario_Start"
|only if level <= 35
step
Enter the building |goto Vale of Eternal Blossoms/0 81.40,31.95 < 10 |walk
talk Lorewalker Fu##78709
Select _"Tell me of how Varian and Tyrande learned a Little Patience."_
Enter the _A Little Patience_ scenario |scenariostart |goto 82.96,30.38
|next "Scenario_Start"
|only if level >= 36
step
label "Scenario_Start"
talk King Varian Wrynn##69026
turnin A Little Patience##32248 |goto A Little Patience/0 41.91,15.44
stickystart "info"
step
talk Duff McStrum##68057 |goto 39.04,23.11
talk Ferra Pearl##68599 |goto 36.65,16.27
talk Rosey Axlerod##67883 |goto 42.46,24.15
talk Elder Adler##67569 |goto 22.60,32.64
talk Master Brownstone##68240 |goto 48.41,22.12
|tip Only two allies will be available.
|tip About thirty seconds after entering the scenario, you can look on your world map for white dialogue icons to note their location.
Click here when you talk to the two available NPCs |confirm
step
When you initiate the instance, there will be random defense camps that spawn.
|tip Refer to your map to locate them.
|tip Occasionally, the defense camps will be attacked. Have 1 well geared player defend, while the others gathering resources.
Kill enemies around the area
Construct #2# Defenses |scenariogoal Defenses Constructed##1/22517
step
label "info"
Throughout this scenario, you will need to collect various objects
|tip Look for shining objects on the ground.
|tip Use these objects at the available construction sites to increase your progress.
step
kill Commander Scargash##68474
|tip If you do not outgear the encounter and are targeted by Blood Rage, run away.
|tip Occasionally, Scargash will use Crushing Leap, jumping to an area and knocking everyone nearby back.
Defeat Commander Scargash |scenariogoal Defeat Commander Scargash##2/22461 |goto 47.51,60.60
step
Leave the scenario |goto 47.51,60.60 > 1000 |noway |c
|tip Right-click your player frame and select "Leave Instance Group."
step
Congratulations!
You have completed the _A Little Patience_ scenario
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Pandaria Scenarios\\Arena of Annihilation",{
author="support@zygorguides.com",
description="\nThis guide will walk you through the \"Arena of Annihilation\" scenario.",
keywords={"mists", "of", "pandaria", "scenario"},
achieveid={7271,7272,7273},
patch='50004',
model={43509,43329,40963,39570,39747,43292,42937},
startlevel=20,
endlevel=20,
mapid=480,
},[[
step
talk Gurgthock##63315
accept The Arena of Annihilation##31207 |goto Kun-Lai Summit/0 68.69,48.37
step
Press _I_ to open the Group Finder tool
|tip Queue for the "Arena of Annihilation" scenario.
Enter the _Arena of Annihilation_ scenario |scenariostart
|next "Scenario_Start"
|only if level <= 35
step
Enter the building |goto Vale of Eternal Blossoms/0 81.40,31.95 < 10 |walk
talk Lorewalker Fu##78709
Select _"Tell me of the Arena of Annihilation."_
Enter the _Arena of Annihilation_ scenario |scenariostart |goto 82.96,30.38
|only if level >= 36
step
label "Scenario_Start"
click Tiger Temple Gong
Ring the Gong |scenariogoal Gong rung##1/20810 |goto Proving Grounds/1 48.82,17.03
step
kill Scar-Shell##63311
|tip Crushing Bite reduces the armor of whomever it hits by 50%.
|tip Stone Spin is a whirlwind type attack. Immediately after it finishes, Scar-Shell will gain the Dizzy debuff, increses his damage taken by 50% for a short time.
Slay Scar-Shell |scenariogoal Scar-Shell slain##1/19336 |goto 45.95,51.34
step
click Tiger Temple Gong
Ring the Gong |scenariogoal Gong rung##2/20810 |goto 48.82,17.03
step
kill Jol'Grum##63312
|tip The tank moving causes his rage bar to build.
|tip If the bar reaches 100, he will become Angry. This is a light enrage.
|tip He will cast Headbutt on the tank which knocks them back.
|tip He will also jump to the middle and use Smash, knocking all players back.
Slay Jol'Grum |scenariogoal Jol'Grum slain##2/19337 |goto 45.95,51.34
step
click Tiger Temple Gong
Ring the Gong |scenariogoal Gong rung##3/20810 |goto 48.82,17.03
step
kill Little Liuyang##63313
|tip Liuyang will constantly shoot off fireballs and paths of fire. Avoid standing in fire.
|tip At around 40%, Firewall will be cast.
|tip Run counter-clockwise while killing the Flmecoaxing Spirits. Killing them will cause a section of the firewall to vanish.
|tip There are three of them.
Slay Little Liuyang |scenariogoal Little Liuyang slain##3/21922 |goto 45.95,51.34
step
click Tiger Temple Gong
Ring the Gong |scenariogoal Gong rung##4/20810 |goto 48.82,17.03
step
kill Chagan Firehoof##63318
|tip He will use Trailblaze on a random player. This leaves fire on the ground.
|tip Hammertime does damage to whomever is tanking.
|tip There is no real benefit to killing Batu. Just ignore him and kill Chagan.
Slay Chagan Firehoof |scenariogoal Chagan Firehoof slain##4/19341 |goto 45.95,51.34
step
click Tiger Temple Gong
Ring the Gong |scenariogoal Gong rung##5/20810 |goto 48.82,17.03
step
kill Satay Byu##64281
|tip Satay Byu will apply Slowing Poison with his basic attacks.
|tip If Slowing Poison reaches 20 stacks it will root the target in place.
|tip Speed of the Jinja will rapidly strike in front of Satay, run away from this.
Slay Satay Byu |scenariogoal Final Challenger slain##5/20587 |goto 45.95,51.34
step
talk Wodin the Troll-Servant##63314
turnin The Arena of Annihilation##31207 |goto 50.00,18.59
step
Leave the scenario |goto 50.00,18.59 > 1000 |noway |c
|tip Right-click your player frame and select "Leave Instance Group."
step
Congratulations!
You have completed the _Arena of Annihilation_ scenario
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Pandaria Scenarios\\Assault on Zan'vess",{
author="support@zygorguides.com",
description="\nThis guide will walk you through the \"Assault on Zan'vess\" scenario.",
keywords={"mists", "of", "pandaria", "scenario"},
achieveid={8016,8017},
patch='50100',
model={46500,29899},
startlevel=35,
endlevel=35,
mapid=883,
},[[
step
Press _I_ to open the Group Finder tool
|tip Queue for the "Assault on Zan'vess" scenario.
Enter the _Assault on Zan'vess_ scenario |scenariostart
|next "Scenario_Start"
|only if level <= 35
step
Enter the building |goto Vale of Eternal Blossoms/0 81.40,31.95 < 10 |walk
talk Lorewalker Fu##78709
Select _"Tell me of the Assault on Zan'vess."_
Enter the _Assault on Zan'vess_ scenario |scenariostart |goto 82.96,30.38
|only if level >= 36
step
label "Scenario_Start"
clicknpc Skyfire Gyrocopter##68115
Join the assault of Zan'vess |scenariogoal Join the assault of Zan'vess##1/22294 |goto Assault on Zan'vess/0 45.33,24.67
step
kill Sonic Control Tower##67279+
|tip Use the first ability on your bar to destroy them.
|tip If you see a missile incoming, use the second ability to raise a shield.
Destroy the Kyparite Quarry Sonic Control Towers |scenariogoal Destroy the Kyparite Quarry Sonic Control Towers##2/22295 |goto 41.09,84.34
step
kill Zan'thik Guardian##67710+, Sonic Control Tower##67279+
|tip First, you must take out the Guardians channeling the shields.
|tip You will see yellow pools on the ground to indicate their location.
|tip Use the first ability on your bar to destroy them.
|tip If you see a missile incoming, use the second ability to raise a shield.
Destroy the Whispering Stone Sonic Control Towers |scenariogoal Destroy the Whispering Stones Sonic Control Towers##2/22296 |goto 28.65,75.82
step
kill Scorpid Relocator##67784+, Sonic Control Tower##67279+
|tip First, you must take out the scorpids carrying the towers.
|tip Use the first ability on your bar to destroy them.
|tip If you see a missile incoming, use the second ability to raise a shield.
Destroy the Venomsting Pits Stone Sonic Control Towers |scenariogoal Destroy the Venomsting Pits Sonic Control Towers##2/22297 |goto 29.41,53.76
step
Follow the path |goto 50.34,45.32 < 15 |walk
Follow the path up |goto 50.56,53.05 < 15 |walk
kill Squad Leader Bosh##68143
|tip You can pull the group of enemies before Bosh without engaging him.
Defeat Squad Leader Bosh |scenariogoal Defeat Squad Leader Bosh##3/22483 |goto 51.00,55.69
step
Follow the path up |goto 48.49,55.32 < 15 |walk
Follow the path |goto 45.25,53.30 < 15 |walk
Follow the path |goto 42.25,53.66 < 15 |walk
Reach the Heart of Zan'vess |scenariogoal Reach the Heart of Zan'vess##3/22301 |goto 40.13,55.32
step
kill Commander Tel'vrak##67879
|tip Periodically, swarms of adds will engage.
|tip Use the special action ability "Strafing Run" to kill them.
|tip Move out of areas targeted on the ground.
Defeat Commander Tel'vrak |scenariogoal Defeat Commander Tel'vrak##4/22299 |goto 38.62,56.23
step
Leave the scenario |goto 38.62,56.23 > 1000 |noway |c
|tip Right-click your player frame and select "Leave Instance Group."
step
Congratulations!
You have completed the _Assault on Zan'vess_ scenario
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Pandaria Scenarios\\Battle on the High Seas",{
author="support@zygorguides.com",
description="\nThis guide will walk you through the \"Battle on the High Seas\" scenario.",
keywords={"mists", "of", "pandaria", "scenario"},
achieveid={8347,8314,8364},
patch='50300',
model={48533,48760,47351,48759,48530},
startlevel=35,
endlevel=35,
mapid=940,
},[[
step
If you would like to complete this scenario on Heroic difficulty, click here |confirm |next "Battle_High_Seas_Heroic"
|tip
Otherwise, click here for Normal difficulty |confirm
step
Press _I_ to open the Group Finder tool
|tip Queue for the "Battle on the High Seas" scenario.
Enter the _Battle on the High Seas_ scenario |scenariostart
|next "Scenario_Start"
|only if level <= 35
step
Enter the building |goto Vale of Eternal Blossoms/0 81.40,31.95 < 10 |walk
talk Lorewalker Fu##78709
Select _"Tell me the tale of a Battle on the High Seas."_
Enter the _Battle on the High Seas_ scenario |scenariostart |goto 82.96,30.38
|next "Scenario_Start"
|only if level >= 36
step
label "Battle_High_Seas_Heroic"
Enter the building |goto Vale of Eternal Blossoms/0 81.40,31.95 < 10 |walk
talk Lorewalker Shin##78777
Select _"Tell me the tale of a Battle on the High Seas (Heroic)."_
Enter the _Battle on the High Seas_ scenario |scenariostart |goto 83.05,30.45
|only if level >= 36
step
label "Scenario_Start"
Follow the path |goto Battle on the High Seas/0 56.75,82.72 < 7 |walk
Go up the stairs |goto 56.60,85.05 < 7 |walk
kill Lieutenant Drak'on##67391
|tip Kill the waves of enemies until he spawns.
Defeat the Horde Boarding Party |scenariogoal Defeat the Horde Boarding Party##1/22257 |goto 60.17,84.60
step
Go up the stairs |goto 57.41,82.92 < 7 |walk
clicknpc Transport Cannon##67343 |goto 55.06,83.30 < 7
Use the cannon to reach the next boat |goto 45.57,46.24 |noway |c
step
click Rope Pile##223281 |goto 43.92,44.88
|tip It appears after you clear the boat of enemies.
Use the Rope Pile to reach the next boat |goto 56.07,48.58 |noway |c
step
kill Lieutenant Sparklighter##70762 |goto 59.23,49.04
|tip He's up the stairs on the top deck of the ship.
clicknpc Barrel of Explosives##71106
Acquire the first explosive charge |scenariogoal Explosives Acquired##2/22261 |goto 58.80,49.34 |count 1
step
Follow the path |goto 60.03,47.10 < 7 |walk
Go down the stairs |goto 60.70,49.21 < 7 |walk
kill Lieutenant Fizzel##70963 |goto 58.9,49.3
clicknpc Barrel of Explosives##71106
Acquire the second explosive charge |scenariogoal Explosives Acquired##2/22261 |goto 58.80,49.38 |count 2
step
Follow the path |goto 57.08,49.40 < 7 |walk
Follow the path |goto 55.27,51.66 < 7 |walk
Go down the stairs |goto 53.95,53.06 < 7 |walk
Go down the stairs |goto 56.05,51.99 < 7 |walk
kill Lieutenant Blasthammer##70893 |goto 60.56,47.94
clicknpc Barrel of Explosives##71106
Acquire the third explosive charge |scenariogoal Explosives Acquired##2/22261 |goto 60.34,48.13 |count 3
step
clicknpc Plant Explosives##67394
Prime the first explosive |scenariogoal Explosives Primed##3/22262 |goto 59.14,49.04 |count 1
step
clicknpc Plant Explosives##67394
Prime the second explosive |scenariogoal Explosives Primed##3/22262 |goto 57.71,50.09 |count 2
step
clicknpc Plant Explosives##67394
Prime the third explosive |scenariogoal Explosives Primed##3/22262 |goto 56.55,51.02 |count 3
step
Go up the stairs |goto 54.18,53.41 < 5 |walk
Go up the stairs |goto 55.59,50.63 < 5 |walk
click Rope Pile##223281
|tip It's on the top deck of the ship. You'll want to hurry, otherwise you'll blow up with the ship!
Destroy the Horde ship |scenariogoal Horde Ship Destroyed##3/22258 |goto 56.93,53.64
step
Go up the stairs |goto 43.08,46.04 < 7 |walk
clicknpc Transport Cannon##67343 |goto 40.86,48.26 < 7
Use the cannon to reach the next boat |goto 37.36,23.08 |noway |c
step
kill Admiral Hagman##67426
Defeat Admiral Hagman |scenariogoal Defeat Admiral Hagman##4/22263 |goto 42.93,21.14
step
Leave the scenario |goto 42.93,21.14 > 1000 |noway |c
|tip Right-click your player frame and select "Leave Instance Group."
step
Congratulations!
You have completed the _Battle on the High Seas_ scenario
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Pandaria Scenarios\\Blood in the Snow",{
author="support@zygorguides.com",
description="\nThis guide will walk you through the \"Blood in the Snow\" scenario.",
keywords={"mists", "of", "pandaria", "scenario"},
achieveid={8312,8316,8329,8330},
patch='50300',
model={48111,49055,48308},
startlevel=35,
endlevel=35,
mapid=939,
},[[
step
If you would like to complete this scenario on Heroic difficulty, click here |confirm |next "Blood_in_the_Snow_Heroic"
|tip
Otherwise, click here for Normal difficulty |confirm
step
Press _I_ to open the Group Finder tool
|tip Queue for the "Blood in the Snow" scenario.
Enter the _Blood in the Snow_ scenario |scenariostart
|next "Scenario_Start"
|only if level <= 35
step
Enter the building |goto Vale of Eternal Blossoms/0 81.40,31.95 < 10 |walk
talk Lorewalker Fu##78709
Select _"Tell me the tale of Blood in the Snow."_
Enter the _Blood in the Snow_ scenario |scenariostart |goto 82.96,30.38
|next "Scenario_Start"
|only if level >= 36
step
label "Blood_in_the_Snow_Heroic"
Enter the building |goto Vale of Eternal Blossoms/0 81.40,31.95 < 10 |walk
talk Lorewalker Shin##78777
Select _"Tell me the tale of Blood in the Snow (Heroic)."_
Enter the _Blood in the Snow_ scenario |scenariostart |goto 83.05,30.45
|only if level >= 36
step
label "Scenario_Start"
Follow the path |goto Blood in the Snow/0 65.86,64.40 < 10 |walk
Follow the path up |goto 60.81,66.77 < 10 |walk
Follow the path up |goto 56.58,66.18 < 10 |walk
talk Mountaineer Grimbolt##70801
Contact the mountaineers |scenariogoal Mountaineers contacted##1/23249 |goto 52.88,67.57
step
Kill Frostmane enemies around this area
|tip Before initiating combat, use the "Call the Shot" ability on-screen while targeting an elite.
clicknpc Roasting Spit##70597
Free Stonebeard |scenariogoal Stonebeard freed##2/23260 |goto 49.59,60.18
step
Follow the path |goto Blood in the Snow/0 47.80,65.84 < 15 |walk
Follow the path |goto 43.90,73.66 < 15 |walk
Kill Frostmane enemies around this area
|tip Before initiating combat, use the "Call the Shot" ability on-screen while targeting an elite.
Save Boldbrew |scenariogoal Boldbrew saved##3/23261 |goto 45.41,77.36
step
Follow the path |goto Blood in the Snow/0 37.89,66.27 < 15 |walk
kill Bonechiller Barafu##70468
|tip Before initiating combat, use the "Call the Shot" ability on-screen while targeting an elite.
Save Forgefellow |scenariogoal Forgefellow saved##4/23262 |goto 32.46,65.32
step
Follow the path |goto 37.07,62.53 < 15 |walk
Follow the path |goto 37.84,57.43 < 10 |walk
Follow the path |goto 35.66,51.04 < 10 |walk
Cross the bridge |goto 37.16,37.87 < 10 |walk
Follow the path |goto 39.21,32.26 < 15 |walk
Follow the path |goto 46.11,28.46 < 15 |walk
Enter the cave |goto 45.95,24.04 < 7 |walk
kill Farastu##70474
|tip Before initiating combat, use the "Call the Shot" ability on-screen while targeting an elite.
Slay the Elemental Spirit |scenariogoal Elemental Spirit slain##5/23263 |goto 43.46,22.73 < 7
stickystart "Capture_Frostmane_Village"
step
Follow the path |goto Blood in the Snow/0 46.86,25.23 < 15 |walk
Follow the path |goto 46.06,32.69 < 15 |walk
kill Hekima the Wise##70544
|tip Before initiating combat, use the "Call the Shot" ability on-screen while targeting an elite.
|tip Make sure you kill any rage banners that spawn during this fight.
Slay Hekima the Wise |scenariogoal Hekima the Wise slain##6/23264 |goto 48.20,47.36
step
label "Capture_Frostmane_Village"
Kill Frostmane enemies around this area
Capture the Frostmane village |scenariogoal Frostmane Village captured##6/23265 |goto 47.58,47.81
step
Leave the scenario |goto 47.58,47.81 > 1000 |noway |c
|tip Right-click your player frame and select "Leave Instance Group."
step
Congratulations!
You have completed the _Blood in the Snow_ scenario
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Pandaria Scenarios\\Brewmoon Festival",{
author="support@zygorguides.com",
description="\nThis guide will walk you through the \"Brewmoon Festival\" scenario.",
keywords={"mists", "of", "pandaria", "scenario"},
achieveid={6923,6931,6930},
patch='50004',
model={43098,43661,42811,43204},
startlevel=35,
endlevel=35,
mapid=884,
},[[
step
talk Brewmaster Boof##63367
accept The Kun-Lai Kicker##31611 |goto The Veiled Stair/0 51.92,43.74
step
Press _I_ to open the Group Finder tool
|tip Queue for the "Brewmoon Festival" scenario.
Enter the _Brewmoon Festival_ scenario |scenariostart
|next "Scenario_Start"
|only if level <= 35
step
Enter the building |goto Vale of Eternal Blossoms/0 81.40,31.95 < 10 |walk
talk Lorewalker Fu##78709
Select _"Tell me of the Brewmoon Festival."_
Enter the _Brewmoon Festival_ scenario |scenariostart |goto 82.96,30.38
|only if level >= 36
step
label "Scenario_Start"
Follow the path |goto Brewmoon Festival/0 41.47,72.77 < 10 |walk
Follow the path |goto 38.94,70.51 < 10 |walk
kill Den Mother Moof##63518
|tip Kill all of the Virmen to spawn her.
|tip Twirlwind can be interrupted by stunning Moof.
|tip Occasionaly, Moof will burrow underground and summon a few weak Virmen mobs.
Defeat the virmen in the silos |scenariogoal Defeat the virmen in the silos##1/19524 |goto 36.14,68.91
step
Follow the path |goto 37.88,63.88 < 15 |walk
Follow the path |goto 40.45,59.46 < 10 |walk
talk Assistant Tart##62793 |goto 41.97,52.24 < 7
Ask her _"Can you help me get out on the water, Tart?"_
|tip This will grant you the ability to walk on water for five minutes.
kill Li Te##63520
|tip Kill all of the Water Spirits to spawn Li Te.
|tip Li Te will periodically be covered in a water shield. When that happens, kite it over water spouts before they burst.
Defeat Li Te |scenariogoal Defeat Li Te##1/19525 |goto 43.41,42.24
step
Follow the path |goto Brewmoon Festival/0 49.96,62.78 < 20 |walk
Enter the cave |goto 50.92,85.16 < 20 |walk
kill Karsar the Bloodletter##63529
|tip Karsar the Bloodletter has no aggro table.
|tip Instead, he has an ability called Taste for Blood. This ability causes the highest health party member to automatically have the highest threat.
Defeat Karsar the Bloodletter |scenariogoal Defeat Karsar the Bloodletter##1/19526 |goto 56.52,95.61
step
Leave the cave |goto Brewmoon Festival/0 50.89,85.42 < 20 |walk
Follow the path |goto 45.79,79.09 < 15 |walk
Start brewing the Kun-Lai Kicker |scenariogoal Start brewing the Kun-Lai Kicker##1/19716 |goto 42.11,67.03
|tip Wait a few moments for this to complete.
step
You must first set up the village defenses before killing all Outrunners
|tip Barrels of Fireworks will allow you to blow up enemies.
|tip Krasarang Wild Brew will pulse fire wherever they are placed.
|tip The Tian Disciple will be dressed in yellow. Talk to them to deploy them.
|tip Vale Marksmen are sleeping pandaren on the ground. Talk to them to deploy them.
|tip Derpa Derpa may be in front of the gong. Talk to him and deploy the item he gives you on the ground. You can keep doing this.
|tip Briaw Shan will give you a Brew Strike ability. Talk to him and have him show you.
|tip If you are solo and cannot get enough defenses, click the Group Finder icon and teleport out and back in.
Set up the village defenses |scenariogoal Village defenses set up##2/19529 |goto 44.93,65.81
step
kill Bataari Outrunner##64165+
Defeat the scouts from the Ancient Passage |scenariogoal Defeat the scouts from the Ancient Passage##2/19531 |goto 45.06,74.29
step
Follow the path |goto 42.15,66.92 < 15 |walk
kill Bataari Outrunner##64165+
Defeat the scouts from the West |scenariogoal Defeat the scouts from the West.##2/19527 |goto 39.37,61.11
step
kill Bataari Outrunner##64165+
Defeat the scouts from the Bridge |scenariogoal Defeat the scouts from the Bridge##2/19530 |goto 44.01,64.26
step
Kill Bataari enemies around this area
|tip Stage 3 consists of three waves of different Bataari mobs and War Yetis.
|tip Only one War Yeti will spawn per wave and it can be at any of the three attack points.
Stop the waves of Bataari Invaders |scenariogoal Stop the waves of Bataari Invaders##3/19523 |goto 42.40,65.84
step
kill Warbringer Qobi##63528
|tip Kite him out of Oil Slicks.
|tip Avoid standing in fire.
|tip When he is weak, click the axe to do a powerful whilrwind attack.
clicknpc Qobi's Axe##64268
Defeat Warbringer Qobi |scenariogoal Defeat Warbringer Qobi##4/19528 |goto 42.47,65.90
step
talk Brewmaster Boof##64901
turnin The Kun-Lai Kicker##31611 |goto 43.76,68.54
step
Leave the scenario |goto 43.76,68.54 > 1000 |noway |c
|tip Right-click your player frame and select "Leave Instance Group."
step
Congratulations!
You have completed the _Brewmoon Festival_ scenario
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Pandaria Scenarios\\Crypt of Forgotten Kings",{
author="support@zygorguides.com",
description="\nThis guide will walk you through the \"Crypt of Forgotten Kings\" scenario.",
keywords={"mists", "of", "pandaria", "scenario"},
achieveid={7522,7275,8311,8368,7276},
patch='50004',
model={48740,40884,42296},
startlevel=35,
endlevel=35,
mapid=481,
},[[
step
If you would like to complete this scenario on Heroic difficulty, click here |confirm |next "Crypt_of_Forgotten_Kings_Heroic"
|tip
Otherwise, click here for Normal difficulty |confirm
step
Press _I_ to open the Group Finder tool
|tip Queue for the "Crypt of Forgotten Kings" scenario.
Enter the _Crypt of Forgotten Kings_ scenario |scenariostart
|next "Scenario_Start"
|only if level <= 35
step
Enter the building |goto Vale of Eternal Blossoms/0 81.40,31.95 < 10 |walk
talk Lorewalker Fu##78709
Select _"Tell me of the Crypt of Forgotten Kings."_
Enter the _Crypt of Forgotten Kings_ scenario |scenariostart |goto 82.96,30.38
|next "Scenario_Start"
|only if level >= 36
step
label "Crypt_of_Forgotten_Kings_Heroic"
Enter the building |goto Vale of Eternal Blossoms/0 81.40,31.95 < 10 |walk
talk Lorewalker Shin##78777
Select _"Tell me of the Crypt of Forgotten Kings (Heroic)."_
Enter the _Crypt of Forgotten Kings_ scenario |scenariostart |goto 83.05,30.45
|only if level >= 36
step
label "Scenario_Start"
Go down the stairs |goto Crypt of Forgotten Kings/1 64.05,24.21 < 10 |walk
Follow the path |goto 64.05,31.81 < 15 |walk
Follow the path |goto 57.19,39.00 < 10 |walk
Follow the path |goto 50.68,39.05 < 10 |walk
|tip Avoid tiles with red or yellow patterns, or ones with arrows on them.
kill Jin Ironfist##61814
|tip He will randomly jump to players in your group.
Slay Jin Ironfist |scenariogoal Jin Ironfist slain##1/19223 |goto 43.83,39.91
step
Follow the path |goto 46.43,51.84 < 15 |walk
Go down the stairs |goto 46.51,59.19 < 15 |walk
|tip Avoid tiles with red or yellow patterns, or ones with arrows on them.
kill Spawn of Hate##61709 |goto 46.9,58.3
|tip Fight here until the Pool of Life is cleansed.
Cleanse the Pool of Life |scenariogoal Pool of Life Cleansed##2/20882 |goto 46.51,59.19
step
Go up the stairs |goto 46.57,52.12 < 15
Follow the path |goto 50.65,39.02 < 15 |walk
Follow the path |goto 57.50,39.07 < 10 |walk
Follow the path |goto 64.12,49.00 < 10 |walk
Follow the path |goto 64.09,78.49 < 15 |walk
Follow the path |goto 58.56,80.00 < 7 |walk
Follow the path |goto 58.68,89.12 < 7 |walk
Follow the path |goto 64.22,84.51 < 20 |walk
Follow the path |goto Crypt of Forgotten Kings/2 48.84,86.65 < 10 |walk
Go down the stairs |goto 48.93,69.75 < 10 |walk
Kill enemies along the way
|tip Avoid tiles with red or yellow patterns, or ones with arrows on them.
Find the source of evil |scenariogoal Source of Evil Found##3/21041 |goto 48.93,69.75
step
Follow the path |goto 46.21,55.13 < 10 |walk
Follow the path |goto 36.83,38.27 < 10 |walk
Go up the stairs |goto 36.80,29.73 < 10 |walk
Follow the path |goto 43.86,27.72 < 10 |walk
|tip Avoid tiles with red or yellow patterns, or ones with arrows on them.
kill Abomination of Anger##61707
|tip Deathforce will pull you to him. Run out of the red circle that surrounds him as fast as possible to avoid instant death.
|tip He will create red clouds on the ground that move around during the fight. These should be avoided.
Slay the Abomination of Anger |scenariogoal Abomination of Anger slain##4/19225 |goto 48.93,35.81
step
Leave the scenario |goto 48.93,35.81 > 1000 |noway |c
|tip Right-click your player frame and select "Leave Instance Group."
step
Congratulations!
You have completed the _Crypt of Forgotten Kings_ scenario
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Pandaria Scenarios\\Dagger in the Dark",{
author="support@zygorguides.com",
description="\nThis guide will walk you through the \"Dagger in the Dark\" scenario.",
keywords={"mists", "of", "pandaria", "scenario"},
achieveid={8009,7987,7984,7986},
patch='50100',
model={46480,46111},
startlevel=35,
endlevel=35,
mapid=914,
},[[
step
Press _I_ to open the Group Finder tool
|tip Queue for the "Dagger in the Dark" scenario.
Enter the _Dagger in the Dark_ scenario |scenariostart
|next "Scenario_Start"
|only if level <= 35
step
Enter the building |goto Vale of Eternal Blossoms/0 81.40,31.95 < 10 |walk
talk Lorewalker Fu##78709
Select _"Tell me of the Dagger in the Dark that felled Vol'jin."_
Enter the _Dagger in the Dark_ scenario |scenariostart |goto 82.96,30.38
|only if level >= 36
step
label "Scenario_Start"
talk Vol'jin##67414
Tell him _"I'm ready. Let's go."_
Speak to Vol'jin |scenariogoal Speak to Vol'jin##1/22282 |goto Dagger in the Dark/0 56.08,75.18
step
Follow the path |goto Dagger in the Dark/0 56.84,72.47 < 15 |walk
Follow the path |goto 56.22,68.76 < 15 |walk
Follow the path |goto 51.16,60.97 < 15 |walk
Follow the path |goto 52.33,51.95 < 15 |walk
Find the Saurok Cave |scenariogoal Find the Saurok Cave##2/22281 |goto 52.48,46.41
step
Kill Darkhatched enemies around this area
Defeat the Saurok Patrol |scenariogoal Defeat the Saurok Patrol##3/22416 |goto 52.28,44.09
step
kill Darkhatched Lizard-Lord##67263
Defeat the Darkhatched Lizard-Lord |scenariogoal Defeat the Darkhatched Lizard-Lord##3/22238 |goto 52.06,44.51
step
clicknpc The Spring Saurok-Slayer##67706
|tip Wait a moment for the boat to be repaired.
|tip Kill Sorcerers along the way to maintain your progress.
Complete the Boat Ride |scenariogoal Complete the Boat Ride##4/22284 |goto 51.84,43.05
step
Follow the path |goto Dagger in the Dark/1 59.04,38.49 < 15 |walk
Find the Saurok Hatchery |scenariogoal Find the Saurok Hatchery##5/22287 |goto 56.61,31.95
step
kill Broodmaster Noshi##67264
|tip Use Flamethrower when you get swarmed by Darkhatched Swarmlings.
Defeat Broodmaster Noshi |scenariogoal Defeat Broodmaster Noshi##6/22239 |goto 53.00,24.89
step
clicknpc Broken Mogu Tablet##67863
|tip Wait for the dialogue to complete.
Investigate the West Statue |scenariogoal Investigate the West Statue##7/22288 |goto 51.49,34.17
step
clicknpc Broken Mogu Tablet##67863
Investigate the East Statue |scenariogoal Investigate the East Statue##7/22289 |goto 54.91,16.32
step
kill Rak'gor Bloodrazor##67266
|tip Wait for the dialogue to complete.
|tip Rak'gor will place a Gas Bomb on the ground that you will need to move out of.
Defeat Rak'gor Bloodrazor |scenariogoal Defeat Rak'gor Bloodrazor##8/22240 |goto 53.54,26.34
step
Leave the scenario |goto 53.54,26.34 > 1000 |noway |c
|tip Right-click your player frame and select "Leave Instance Group."
step
Congratulations!
You have completed the _Dagger in the Dark_ scenario
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Pandaria Scenarios\\Dark Heart of Pandaria",{
author="support@zygorguides.com",
description="\nThis guide will walk you through the \"Dark Heart of Pandaria\" scenario.",
keywords={"mists", "of", "pandaria", "scenario"},
achieveid={8319,8317,8318},
patch='50300',
model={48854,38305},
startlevel=35,
endlevel=35,
mapid=937,
},[[
step
If you would like to complete this scenario on Heroic difficulty, click here |confirm |next "Dark_Heart_of_Pandaria_Heroic"
|tip
Otherwise, click here for Normal difficulty |confirm
step
Press _I_ to open the Group Finder tool
|tip Queue for the "Dark Heart of Pandaria" scenario.
Enter the _Dark Heart of Pandaria_ scenario |scenariostart
|next "Scenario_Start"
|only if level <= 35
step
Enter the building |goto Vale of Eternal Blossoms/0 81.40,31.95 < 10 |walk
talk Lorewalker Fu##78709
Select _"Tell me of the unearthing of the Dark Heart of Pandaria."_
Enter the _Dark Heart of Pandaria_ scenario |scenariostart |goto 82.96,30.38
|next "Scenario_Start"
|only if level >= 36
step
label "Dark_Heart_of_Pandaria_Heroic"
Enter the building |goto Vale of Eternal Blossoms/0 81.40,31.95 < 10 |walk
talk Lorewalker Shin##78777
Select _"Tell me of the unearthing of the Dark Heart of Pandaria (Heroic)."_
Enter the _Dark Heart of Pandaria_ scenario |scenariostart |goto 83.05,30.45
|only if level >= 36
step
label "Scenario_Start"
talk Grizzle Gearslip##70956
Talk to Grizzle Gearslip |scenariogoal Talk to Grizzle Gearslip##1/23071 |goto Dark Heart of Pandaria/0 44.25,38.40
step
kill Urtharges the Destroyer##70959
|tip If you do not outlevel this scenario, you may need to kill mobs until Utharges' shield drops.
Slay Urtharges |scenariogoal Urtharges slain##2/23236 |goto 54.35,56.00
step
Click on Artifacts
|tip They are boxes and items marked with a small beam of light.
|tip The gold ones are more valuable and can create a combo making the gathering go by faster.
|tip Just run over them to collect them.
Collect #50# artifacts |scenariogoal Artifacts collected##3/23253 |goto 54.35,56.00
step
Follow the path |goto 47.73,63.97 < 15 |walk
Enter the mine |goto Dark Heart of Pandaria/1 75.41,13.37 < 7 |walk
Follow the path |goto 68.32,19.00 < 10 |walk
Follow the path |goto 65.38,29.61 < 10 |walk
Follow the path |goto 48.85,30.71 < 10 |walk
talk Crafty the Ambitious##71358
Tell him _"Everything is fine. Look, there's too much to explain..."_
Destroy the wall |scenariogoal Destroy the wall##4/23238 |goto 45.97,35.97
step
Follow the path |goto 44.94,44.29 < 10 |walk
kill Echo of Y'Shaarj##71123
Slay the Echo of Y'Shaarj |scenariogoal Echo of Y'Shaarj slain##5/23251 |goto 36.45,58.89
step
Leave the scenario |goto 36.45,58.89 > 1000 |noway |c
|tip Right-click your player frame and select "Leave Instance Group."
step
Congratulations!
You have completed the _Dark Heart of Pandaria_ scenario
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Pandaria Scenarios\\Greenstone Village",{
author="support@zygorguides.com",
description="\nThis guide will walk you through the \"Greenstone Village\" scenario.",
keywords={"mists", "of", "pandaria", "scenario"},
achieveid={7265,7267,7266},
patch='50004',
model={41877},
startlevel=35,
endlevel=35,
mapid=880,
},[[
step
Press _I_ to open the Group Finder tool
|tip Queue for the "Greenstone Village" scenario.
Enter the _Greenstone Village_ scenario |scenariostart
|next "Scenario_Start"
|only if level <= 35
step
Enter the building |goto Vale of Eternal Blossoms/0 81.40,31.95 < 10 |walk
talk Lorewalker Fu##78709
Select _"Tell me of Greenstone Village."_
Enter the _Greenstone Village_ scenario |scenariostart |goto 82.96,30.38
|only if level >= 36
step
label "Scenario_Start"
Follow the path |goto Greenstone Village/0 63.90,56.34 < 10 |walk
Follow the path |goto 62.10,53.82 < 10 |walk
Kill Seedling enemies around this area
|tip Killing all of them will release the villager.
Rescue Meila |scenariogoal Meila rescued##1/19200 |goto 63.25,52.93
step
Go down the stairs |goto 60.00,53.68 < 10 |walk
Kill Seedling enemies around this area
|tip Killing all of them will release the villager.
Rescue Swan |scenariogoal Swan rescued##1/19203 |goto 55.61,56.47
step
Kill Seedling enemies around this area
|tip Killing all of them will release the villager.
Rescue Scribe Rinji |scenariogoal Scribe Rinji rescued##1/19202 |goto 52.84,57.96
step
Kill Seedling enemies around this area
|tip Killing all of them will release the villager.
Rescue Mayor Lin |scenariogoal Mayor Lin rescued##1/21336 |goto 56.19,63.00
step
Go up the stairs |goto 58.28,66.41 < 10 |walk
Kill Seedling enemies around this area
|tip Killing all of them will release the villager.
Rescue Portly Shung |scenariogoal Portly Shung rescued##1/19201 |goto 59.39,69.20
step
Kill Seedling enemies around this area
|tip Killing all of them will release the villager.
Rescue La & Liupo |scenariogoal La & Liupo rescued##1/19204 |goto 62.17,67.28
step
Go down the stairs |goto 57.54,65.31 < 10 |walk
Follow the path |goto 54.67,65.11 < 10 |walk
Go down the stairs |goto 53.90,66.08 < 7 |walk
Enter the building |goto 51.88,68.79 < 7 |walk
kill Beast of Jade##1236
Save Tzu's Dojo |scenariogoal Save Tzu's Dojo##2/19199 |goto 50.68,70.56
step
clicknpc Burgled Barrel##62682
|tip Look for yellow dots on your minimap.
|tip After clicking a barrel, guide it back to Tzu's Dojo.
Return #6# Burgled Barrels |scenariogoal Burgled Barrels returned##3/19229 |goto 52.14,68.37
step
Go up the stairs |goto 54.67,65.18 < 10 |walk
Go up the stairs |goto 59.09,61.82 < 7 |walk
Follow the path |goto 59.91,57.93 < 10 |walk
Follow the path |goto 59.08,43.62 < 10 |walk
Follow the path |goto 54.79,33.26 < 10 |walk
clicknpc Barrel-Chest Huo##62988
Save Barrel-Chest Huo |scenariogoal Barrel-Chest Huo saved##4/1244 |goto 52.93,32.63
step
clicknpc Stonecutter Lon##62989
Save Stonecutter Lon |scenariogoal Stonecutter Lon saved##4/19264 |goto 57.08,30.25
step
clicknpc Kiri Jade-Eyes##62990
Save Kiri Jade-Eyes |scenariogoal Kiri Jade-Eyes saved##4/19265 |goto 54.76,24.98
step
kill Vengeful Hui##61156
Slay Vengeful Hui |scenariogoal Vengeful Hui slain##5/19205 |goto 52.56,23.50
step
Leave the scenario |goto 52.56,23.50 > 1000 |noway |c
|tip Right-click your player frame and select "Leave Instance Group."
step
Congratulations!
You have completed the _Greenstone Village_ scenario
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Pandaria Scenarios\\Lion's Landing",{
author="support@zygorguides.com",
description="\nThis guide will walk you through the \"Lion's Landing\" scenario.",
keywords={"mists", "of", "pandaria", "scenario"},
achieveid={8010,8011,8012},
patch='50100',
model={46221},
startlevel=35,
endlevel=35,
mapid=911,
},[[
step
Press _I_ to open the Group Finder tool
|tip Queue for the "Lion's Landing" scenario.
Enter the _Lion's Landing_ scenario |scenariostart
|next "Scenario_Start"
|only if level <= 35
step
Enter the building |goto Vale of Eternal Blossoms/0 81.40,31.95 < 10 |walk
talk Lorewalker Fu##78709
Select _"Tell me of the defense of Lion's Landing."_
Enter the _Lion's Landing_ scenario |scenariostart |goto 82.96,30.38
|only if level >= 36
step
label "Scenario_Start"
Kill Bloodhilt enemies around this area
talk Daggin Windbeard##68581
Tell him _"Fight with us."_
Join Daggin Windbeard |scenariogoal Join Daggin Windbeard##1/22463 |goto Lion's Landing/0 79.92,78.82
step
Follow the path |goto 80.14,74.96 < 10 |walk
Follow the path down |goto 72.98,79.15 < 10 |walk
talk Admiral Taylor##68685
Tell him _"Fight with us."_
Join Admiral Taylor |scenariogoal Join Admiral Taylor##2/22466 |goto 69.07,69.32
step
Go up the stairs |goto 70.07,67.11 < 10 |walk
Kill enemies around this area
Slay the south attackers |scenariogoal South Attackers slain##3/22484 |goto 70.63,64.25
step
Kill enemies around this area
Slay the east attackers |scenariogoal East Attackers slain##3/22485 |goto 73.17,60.24
step
Kill enemies around this area
Slay the west attackers |scenariogoal West Attackers slain##3/22486 |goto 69.35,57.84
step
talk High Marshal Twinbraid##68851
Tell him _"We're here to help."_
Locate High Marshal Twinbraid |scenariogoal High Marshal Twinbraid located##4/22488 |goto 67.61,49.47
step
kill Uduji##67434
Slay the assault commander |scenariogoal Assault Commander slain##4/22487 |goto 65.48,51.71
step
Follow the path |goto 72.13,55.63 < 15 |walk
talk Amber Kearnen##68871
|tip Kill the mobs surrounding her.
Tell her _"Fight with us."_
Gather Amber's report |scenariogoal Amber's report gathered##5/22493 |goto 73.19,51.23
step
talk Sully "The Pickle" McLeary##68883
|tip Kill the mobs surrounding him.
Tell him _"Fight with us."_
Gather Sully's report |scenariogoal Sully's report gathered##5/22495 |goto 74.94,61.37
step
Enter the building |goto 73.27,66.21 < 10 |walk
talk Mishka##68870
Tell her _"Fight with us."_
Gather Mishka's report |scenariogoal Mishka's report gathered##5/22494 |goto 75.09,70.74
step
Leave the building |goto 73.23,66.09 < 10 |walk
Follow the path |goto 69.13,56.41 < 15 |walk
clicknpc Place Boomsticks Here!##68885
Place the Boomsticks |scenariogoal Boomsticks placed##6/22498 |goto 66.74,53.24
step
clicknpc Place Rockets Here!##68886
Place the Rockets |scenariogoal Rockets placed##6/22496 |goto 66.83,52.76
step
clicknpc Place Bombs Here!##68884
Place the Bombs |scenariogoal Bombs placed##6/22497 |goto 67.14,52.34
step
Kill the approaching enemies
Defeat the first wave of enemies |scenariogoal Wave One slain##7/22489 |goto 65.34,51.58
step
Kill the approaching enemies
Defeat the second wave of enemies |scenariogoal Wave Two slain##7/22490 |goto 65.34,51.58
step
Kill the approaching enemies
Defeat the third wave of enemies |scenariogoal Wave Thee slain##7/22491 |goto 65.34,51.58
step
kill Sunwalker Chagon##67548
Slay the Horde commander |scenariogoal Horde Commander slain##7/22492 |goto 65.34,51.58
step
Leave the scenario |goto 65.34,51.58 > 1000 |noway |c
|tip Right-click your player frame and select "Leave Instance Group."
step
Congratulations!
You have completed the _Lion's Landing_ scenario
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Pandaria Scenarios\\The Secrets of Ragefire",{
author="support@zygorguides.com",
description="\nThis guide will walk you through the \"The Secrets of Ragefire\" scenario.",
keywords={"mists", "of", "pandaria", "scenario"},
achieveid={8327,8295,8294},
patch='50300',
model={48881,48758},
startlevel=35,
endlevel=35,
mapid=522,
},[[
step
If you would like to complete this scenario on Heroic difficulty, click here |confirm |next "Secrets_of_Ragefire_Heroic"
|tip
Otherwise, click here for Normal difficulty |confirm
step
Press _I_ to open the Group Finder tool
|tip Queue for the "The Secrets of Ragefire" scenario.
Enter the _The Secrets of Ragefire_ scenario |scenariostart
|next "Scenario_Start"
|only if level <= 35
step
Enter the building |goto Vale of Eternal Blossoms/0 81.40,31.95 < 10 |walk
talk Lorewalker Fu##78709
Select _"Tell me of the unearthing of the Secrets of Ragefire."_
Enter the _The Secrets of Ragefire_ scenario |scenariostart |goto 82.96,30.38
|next "Scenario_Start"
|only if level >= 36
step
label "Secrets_of_Ragefire_Heroic"
Enter the building |goto Vale of Eternal Blossoms/0 81.40,31.95 < 10 |walk
talk Lorewalker Shin##78777
Select _"Tell me of the unearthing of the Secrets of Ragefire (Heroic)."_
Enter the _The Secrets of Ragefire_ scenario |scenariostart |goto 83.05,30.45
|only if level >= 36
step
label "Scenario_Start"
Follow the path |goto The Secrets of Ragefire/1 69.33,58.67 < 15 |walk
click Detonator##240525
|tip Wait for the goblins to set the explosive charges.
Breach the main chamber |scenariogoal Breach the main chamber##1/23213 |goto 63.72,50.64
step
Follow the path |goto 51.67,53.11 < 15 |walk
kill Dark Shaman Xorenth##70683
|tip Kill the waves of enemies.
Defeat the enemy forces |scenariogoal Defeat the enemy forces##1/23216 |goto 37.70,46.47
step
clicknpc Supply Crates##71203
Investigate the Supply Crates |scenariogoal Investigate the Supply Crates##2/23255 |goto 40.17,59.72
step
clicknpc Proto-Drake Eggs##71208
Investigate Proto-drake Eggs |scenariogoal Investigate Proto-drake Eggs##2/23254 |goto 30.46,52.75
step
clicknpc Pandaria Artifacts##71209
Investigate Pandaria Artifacts |scenariogoal Investigate Pandaria Artifacts##2/23256 |goto 27.35,41.44
step
clicknpc Cannon Balls##71176
Pick up a Cannon Ball |havebuff Cannon Ball##252185 |goto 26.74,43.11 |or
|tip If you get hit by anything in combat, you will drop the item and have to go back and click it again.
Deliver the first Cannon Ball |scenariogoal Cannon Balls Delivered##3/23307 |goto 38.72,29.39 |count 1 |or
step
Deliver the first Cannon Ball |scenariogoal Cannon Balls Delivered##3/23307 |goto 38.72,29.39 |count 1
step
clicknpc Cannon Balls##71176
Pick up a Cannon Ball |havebuff Cannon Ball##252185 |goto 26.74,43.11 |or
|tip If you get hit by anything in combat, you will drop the item and have to go back and click it again.
Deliver the second Cannon Ball |scenariogoal Cannon Balls Delivered##3/23307 |goto 38.72,29.39 |count 2 |or
step
Deliver the second Cannon Ball |scenariogoal Cannon Balls Delivered##3/23307 |goto 38.72,29.39 |count 2
step
clicknpc Cannon Balls##71176
Pick up a Cannon Ball |havebuff Cannon Ball##252185 |goto 26.74,43.11 |or
|tip If you get hit by anything in combat, you will drop the item and have to go back and click it again.
Deliver the third Cannon Ball |scenariogoal Cannon Balls Delivered##3/23307 |goto 38.72,29.39 |count 3 |or
step
Deliver the third Cannon Ball |scenariogoal Cannon Balls Delivered##3/23307 |goto 38.72,29.39 |count 3
step
clicknpc Broken Proto-Drake Egg##71197
Pick up an Egg Yolk |havebuff Egg Yolk##236549 |goto 29.46,52.14 |or
|tip If you get hit by anything in combat, you will drop the item and have to go back and click it again.
Deliver the Egg Yolk |scenariogoal Egg Yolk Delivered##3/23309 |goto 38.72,29.39 |or
step
Deliver the Egg Yolk |scenariogoal Egg Yolk Delivered##3/23309 |goto 38.72,29.39
step
clicknpc Pool Pony##71175
Pick up a Pool Pony |havebuff Pool Pony##132261 |goto 37.81,59.50 |or
|tip If you get hit by anything in combat, you will drop the item and have to go back and click it again.
Deliver the Pool Pony |scenariogoal Pool Pony Delivered##3/23308 |goto 38.72,29.39 |or
step
Deliver the Pool Pony |scenariogoal Pool Pony Delivered##3/23308 |goto 38.72,29.39
step
clicknpc Battery##49846
Pick up a Battery |havebuff Battery##132489 |goto 39.76,60.61 |or
|tip If you get hit by anything in combat, you will drop the item and have to go back and click it again.
Deliver the Batteries |scenariogoal Batteries Delivered##3/23310 |goto 38.72,29.39 |count 1 |or
step
Deliver the Batteries |scenariogoal Batteries Delivered##3/23310 |goto 38.72,29.39 |count 1
step
clicknpc Battery##49846
Pick up a Battery |havebuff Battery##132489 |goto 39.76,60.61 |or
|tip If you get hit by anything in combat, you will drop the item and have to go back and click it again.
Deliver the Batteries |scenariogoal Batteries Delivered##3/23310 |goto 38.72,29.39 |count 2 |or
step
Deliver the Batteries |scenariogoal Batteries Delivered##3/23310 |goto 38.72,29.39 |count 2
step
Meet up with Patch and Ticker |scenariogoal Meet up with Patch and Ticker##3/23313 |goto 38.72,29.39
step
kill Overseer Elaglo##71030 |goto The Secrets of Ragefire/1 36.9,46.2
|tip You will fight several waves of enemies until Overseer Elaglo spawns.
|tip Be sure to avoid the pulsing areas on the ground from his stomp ability. They do a lot of damage.
Defend the Gob Squad |scenariogoal Gob Squad Defended##4/23311 |goto 37.00,45.89
step
Leave the scenario |goto 37.00,45.89 > 1000 |c
|tip Step onto the pad to teleport out.
step
Congratulations!
You have completed the _Secrets of Ragefire_ scenario
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Pandaria Scenarios\\Theramore's Fall",{
author="support@zygorguides.com",
description="\nThis guide will walk you through the \"Theramore's Fall\" scenario.",
keywords={"mists", "of", "pandaria", "scenario"},
achieveid={7523,7526,7527},
patch='50004',
model={40317,25092,43673,40318,44011},
startlevel=35,
endlevel=35,
mapid=906,
},[[
step
Press _I_ to open the Group Finder tool
|tip Queue for the "Theramore's Fall" scenario.
Enter the _Theramore's Fall_ scenario |scenariostart
|next "Scenario_Start"
|only if level <= 35
step
Enter the building |goto Vale of Eternal Blossoms/0 81.40,31.95 < 10 |walk
talk Lorewalker Fu##78709
Select _"Tell me of Theramore's Fall."_
Enter the _Theramore's Fall_ scenario |scenariostart |goto 82.96,30.38
|only if level >= 36
step
label "Scenario_Start"
kill Rok'nah Grunt##64732+
|tip Kill the enemies that approach.
Defend the ship |scenariogoal Ship defended##1/21020 |goto Theramore's Fall/0 69.25,73.55
step
Follow the path |goto 62.16,63.48 < 15 |walk
Board the ship |goto 61.00,64.80 < 7 |walk
kill Sky-Captain "Dashing" Dazrip##65609
Slay Captain Dazrip |scenariogoal Horde captains slain##2/21030 |count 1 |goto 59.63,64.16
step
clicknpc Leaking Oil Drum##65571
Torch the first Horde ship |scenariogoal Horde ships torched##2/19980 |count 1 |goto 59.42,64.83
step
Follow the path |goto 58.06,58.63 < 15 |walk
Follow the path |goto 51.56,69.67 < 15 |walk
Follow the path |goto 56.41,77.87 < 15 |walk
Leave the ship |goto 61.00,64.80 < 7 |walk
kill Captain Seahoof##65151
|tip It may be a different captain, this one often changes.
Slay Captain Seahoof |scenariogoal Horde captains slain##2/21030 |count 2 |goto 52.57,84.18
step
Board the ship |goto 52.85,87.09 < 7 |walk
clicknpc Leaking Oil Drum##65571
Torch the second Horde ship |scenariogoal Horde ships torched##2/19980 |count 2 |goto 50.74,84.91
step
Follow the path |goto 52.85,87.09 < 7 |walk
Leave the ship |goto 53.58,85.94 < 7 |walk
Follow the path |goto 53.95,82.51 < 10 |walk
Follow the path |goto 56.46,77.16 < 15 |walk
Follow the path |goto 51.43,68.95 < 15 |walk
Follow the path |goto 64.59,48.39 < 15 |walk
Follow the path |goto 70.35,55.37 < 15 |walk
Board the ship |goto 74.99,48.26 < 7 |walk
kill Captain Korthok##65152
Slay Captain Korthok |scenariogoal Horde captains slain##2/21030 |count 3 |goto 77.02,49.25
step
clicknpc Leaking Oil Drum##65571
Torch the third Horde ship |scenariogoal Horde ships torched##2/19980 |count 3 |goto 77.87,50.97
step
Follow the path |goto 74.99,48.26 < 7 |walk
Leave the ship |goto 74.32,49.41 < 7 |walk
Follow the path |goto 70.43,55.40 < 15 |walk
Follow the path |goto 64.44,48.57 < 15 |walk
Follow the path |goto 58.93,56.18 < 15 |walk
Follow the path |goto 55.73,55.14 < 15 |walk
kill Gash'nul##64900, Vicious Wyvern##64957+
|tip During the fight, he will place a Storm Totem on the battlefield. Kill it or move away from it.
Slay Gash'nul |scenariogoal Gash'nul slain##3/21109 |goto 52.66,50.44
Slay #2# Vicious Wyverns |scenariogoal Vicious Wyvern slain##3/21110 |goto 52.66,50.44
step
Follow the path |goto 50.09,45.97 < 15 |walk
Follow the path |goto 48.68,39.10 < 15 |walk
talk Lady Jaina Proudmoore##64727
|tip Wait for the dialogue to complete.
Locate Jaina |scenariogoal Jaina located##4/21112 |goto 46.17,33.83
step
Go up the hill |goto 40.40,30.96 < 10 |walk
Go up the hill |goto 37.23,32.11 < 10 |walk
Click the Stolen Standard
Recover the first Stolen Standard |scenariogoal Stolen Standard recovered##5/21114 |count 1 |goto 37.82,38.11
step
kill Gatecrusher##64479
Destroy the Gatecrusher |scenariogoal Gatecrusher destroyed##5/21113  |goto 36.20,39.37
step
Click the Stolen Standard
Recover the second Stolen Standard |scenariogoal Stolen Standard recovered##5/21114 |count 2 |goto 32.83,44.55
step
Click the Stolen Standard
Recover the third Stolen Standard |scenariogoal Stolen Standard recovered##5/21114 |count 3 |goto 29.35,39.21
step
Go down the hill |goto 37.23,32.11 < 10 |walk
Go down the hill |goto 40.40,30.96 < 10 |walk
kill Warlord Rok'nah##65442
Slay Warlord Rok'nah |scenariogoal Warlord Rok'nah slain##6/21115 |goto 46.15,33.79
step
Leave the scenario |goto 46.15,33.79 > 1000 |noway |c
|tip Right-click your player frame and select "Leave Instance Group."
step
Congratulations!
You have completed the _Theramore's Fall_ scenario
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Pandaria Scenarios\\Unga Ingoo",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the \"Unga Ingoo\" scenario.",
keywords={"mists", "of", "pandaria", "scenario"},
achieveid={7249,7232,7231,7248,7239},
patch='50004',
model={42503},
startlevel=35,
endlevel=35,
mapid=882,
},[[
step
talk Brewmaster Bo##65289
|tip Bo walks around inside the building and on the beach.
accept The Funky Monkey Brew##31058 |goto Krasarang Wilds/0 51.81,77.15
step
Press _I_ to open the Group Finder tool
|tip Queue for the "Unga Ingoo" scenario.
Enter the _Unga Ingoo_ scenario |scenariostart
|next "Scenario_Start"
|only if level <= 35
step
Enter the building |goto Vale of Eternal Blossoms/0 81.40,31.95 < 10 |walk
talk Lorewalker Fu##78709
Select _"Tell me of Unga Ingoo."_
Enter the Unga Ingoo scenario |scenariostart |goto 82.96,30.38
|only if level >= 36
step
label "Scenario_Start"
talk Brewmaster Bo##62467
Tell him _"Let's get going!"_ |goto Unga Ingoo/0 51.92,86.44 < 5
Follow the path |goto 48.82,84.48 < 10 |walk
Follow the path up |goto 44.94,79.93 < 10 |walk
Follow the path |goto 41.18,76.67 < 10 |walk
Follow the path |goto 40.86,69.83 < 10 |walk
Follow the path |goto 44.98,63.40 < 10 |walk
Escort Brewmaster Bo |scenariogoal Escort Brewmaster Bo##1/19210 |goto 50.06,61.29
step
Kill Hozen enemies around this area
|tip Leave one party member behind to defend Brewmaster Bo from the incoming Hozen.
|tip If you do not, the Hozen will steal your brew and run off with it.
|tip Defenders should use Inactive Beach Bombs and the Brew Defender cannon to help them fight off Hozen.
click Unga Keg##3365+, Unga Mug##3365+
|tip The other two party members should run around the island and collect Brew.
|tip Return to the cauldron every time you have 30 stacks of Brew.
Fill the Brewing Cauldron |scenariogoal Brewing Cauldron Filled##2/21304 |goto 50.08,61.96
step
kill Captain Ook##62465
|tip He periodically casts Gonna Ook Ya. Move from the red circle.
|tip When he gets weak, a Scurvy-Curing Orange will spawn. Click it to pick it up and run away from Captain Ook.
Defeat Captain Ook |scenariogoal Defeat Captain Ook##3/20696 |goto 50.34,58.05
step
talk Brewmaster Bo##62491
turnin The Funky Monkey Brew##31058 |goto 49.56,60.70
step
Leave the scenario |goto 49.56,60.70 > 1000 |noway |c
|tip Right-click your player frame and select "Leave Instance Group."
step
Congratulations!
You have completed the _Unga Ingoo_ scenario
]])
