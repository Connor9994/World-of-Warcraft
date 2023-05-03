local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("ProfessionsHMoP") then return end
ZygorGuidesViewer.GuideMenuTier = "MOP"
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Blacksmithing\\Leveling Guides\\Pandaria Blacksmithing 1-75",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Pandaria Blacksmithing skill from 1-75.",
condition_end=function() return skill('Pandaren Blacksmithing') >= 75 end,
condition_suggested=function() return skill('Blacksmithing') > 0 and skill('Pandaren Blacksmithing') < 75 and level >= 5 end,
},[[
step
talk Jorunga Stonehoof##64058
|tip Downstairs inside the building.
Train Pandaria Blacksmithing |skillmax Pandaren Blacksmithing,75 |goto Shrine of Two Moons/1 25.83,43.97
|tip You must be at least level 5.
step
collect 589 Ghost Iron Bar##72096
|tip It takes 1178 Ghost Iron Ore to make the amount of bars you need.
|tip Farm and smelt them with Mining or purchase them from the Auction House.
|only if skill("Pandaren Blacksmithing") < 75
step
collect 1 Spirit of Harmony##76061
|tip These are created by combining 10 Motes of Harmony.
|tip They drop randomly from mobs and Fishing casts in Pandaria.
|tip You can also purchase them from the Auction House.
|only if skill("Pandaren Blacksmithing") < 75
step
Open Your Blacksmithing Crafting Panel:
_<Create 9 Folded Ghost Iron>_
|tip You will probably need to make more.
Reach Level 10 Pandaria Blacksmithing |skill Pandaren Blacksmithing,10
step
talk Jorunga Stonehoof##64058
|tip Downstairs inside the building.
learn Ghost-Forged Gauntlets##122579 |goto 25.83,43.97
step
Open Your Blacksmithing Crafting Panel:
_<Create 5 Ghost-Forged Gauntlets>_
Reach Level 15 Pandaria Blacksmithing |skill Pandaren Blacksmithing,15
step
talk Jorunga Stonehoof##64058
|tip Downstairs inside the building.
learn Ghost-Forged Shoulders##122577 |goto 25.83,43.97
step
Open Your Blacksmithing Crafting Panel:
_<Create 15 Ghost-Forged Shoulders>_
Reach Level 30 Pandaria Blacksmithing |skill Pandaren Blacksmithing,30
step
talk Jorunga Stonehoof##64058
|tip Downstairs inside the building.
learn Spiritguard Shield##122636 |goto 25.83,43.97
step
Open Your Blacksmithing Crafting Panel:
_<Create 5 Spiritguard Shield>_
Reach Level 35 Pandaria Blacksmithing |skill Pandaren Blacksmithing,35
step
talk Jorunga Stonehoof##64058
|tip Downstairs inside the building.
learn Ghost-Forged Helm##122576 |goto 25.83,43.97
step
Open Your Blacksmithing Crafting Panel:
_<Create 20 Ghost-Forged Helm>_
Reach Level 50 Pandaria Blacksmithing |skill Pandaren Blacksmithing,50
step
talk Jorunga Stonehoof##64058
|tip Downstairs inside the building.
buy 1 Plans: Contender's Revenant Belt##84158 |goto 25.83,43.97
|only if skill("Pandaren Blacksmithing") < 75
step
use the Plans: Contender's Revenant Belt##84158
learn Contender's Revenant Belt##122623
step
Open Your Blacksmithing Crafting Panel:
_<Create 25 Contender's Revenant Belt>_
Reach Level 75 Pandaria Blacksmithing |skill Pandaren Blacksmithing,75
step
_Congratulations!_
You Reached 75 Pandaria Blacksmithing Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Leveling Guides\\Pandaria Fishing 1-75",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Pandaria Fishing skill from 1-75.",
condition_end=function() return skill('Pandaria Fishing') >= 75 end,
condition_suggested=function() return skill('Fishing') > 0 and skill('Pandaria Fishing') < 75 and level >= 5 end,
},[[
step
talk Nat Pagle##63721
Train Pandaria Fishing |skillmax Pandaria Fishing,75 |goto Krasarang Wilds/0 71.77,40.16
step
Fish in the open water
|tip You can fish anywhere and gain skill.
Reach 75 Pandaria Fishing |skill Pandaria Fishing,75 |goto 71.83,40.04
step
_Congratulations!_
You Reached 75 Pandaria Fishing Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Leveling Guides\\Pandaria Herbalism 1-75",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Pandaria Herbalism skill from 1-75.",
condition_end=function() return skill('Pandaria Herbalism') >= 75 end,
condition_suggested=function() return skill('Pandaria Herbalism') > 0 and skill('Pandaria Herbalism') < 75 and level >= 5 end,
},[[
step
talk Grower Miao##66980
Train Pandaria Herbalism |skillmax Pandaria Herbalism,75 |goto The Jade Forest/0 27.79,15.53
|tip You must be at least level 5.
step
map Valley of the Four Winds/0
path follow smart; loop on; ants curved; dist 30
path	84.25,28.72	80.77,35.08	76.82,37.07	72.76,40.45	71.84,47.89
path	70.41,52.47	66.85,59.48	63.12,65.25	59.51,69.39	55.72,70.75
path	52.13,67.94	49.42,67.53	42.68,67.97	37.80,63.45	34.03,64.32
path	31.00,67.56	30.11,71.30	31.37,76.24	25.69,79.32	22.85,70.29
path	23.31,62.97	25.88,57.19	29.20,52.04	31.27,51.51	34.32,47.66
path	34.62,44.76	34.33,39.09	35.99,33.89	37.08,30.85	39.81,33.17
path	43.05,36.81	45.44,39.36	47.69,34.44	47.02,30.50	49.62,27.65
path	52.04,27.52	53.48,27.58	55.12,31.96	55.15,36.80	55.58,40.56
path	58.06,44.14	60.21,44.03	60.26,41.05	60.71,38.10	59.88,33.72
path	62.02,31.97	67.56,26.23	70.66,25.13	73.95,24.19	78.36,22.08
path	82.35,21.48
Collect herbs along the path
|tip Make sure you enable "Find Herbs" in the tracking menu on the minimap.
collect Green Tea Leaf##72234 |n
Reach 75 Pandaria Herbalism |skill Pandaria Herbalism,75
step
_Congratulations!_
You Reached 75 Pandaria Herbalism Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Leveling Guides\\Pandaria Mining 1-75",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Pandaria Mining skill from 1-75.",
condition_end=function() return skill('Pandaria Mining') >= 75 end,
condition_suggested=function() return skill('Pandaria Mining') > 0 and skill('Pandaria Mining') < 75 and level >= 5 end,
},[[
step
talk Stonebreaker Ruian##66979
Train Pandaria Mining |skillmax Pandaria Mining,75 |goto The Jade Forest/0 27.82,14.84
|tip You must be at least level 5.
step
map Dread Wastes/0
path follow smart; loop on; ants curved; dist 30
path	57.49,14.06	55.81,17.08	54.38,19.53	52.23,20.51	50.71,21.37
path	49.81,24.40	49.49,26.69	46.99,26.44	45.03,25.92	43.76,28.11
path	43.89,30.86	45.60,33.15	48.31,36.52	47.25,38.99	46.27,41.47
path	47.27,43.08	49.19,44.88	50.85,44.37	52.17,43.10	54.43,45.83
path	56.22,47.60	58.85,46.44	60.98,48.04	63.10,48.13	65.50,49.59
path	67.62,48.97	67.26,45.82	67.05,42.57	68.26,39.41	70.14,37.17
path	71.46,33.55	71.77,30.02	70.53,24.75	69.50,21.19	68.67,17.19
path	67.71,13.20	64.79,12.60	62.17,13.69
Mine along the path
|tip Make sure you enable "Find Minerals" in the tracking menu on the minimap.
Reach 75 Pandaria Mining |skill Pandaria Mining,75
step
_Congratulations!_
You Reached 75 Pandaria Mining Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Leveling Guides\\Pandaria Tailoring 1-75",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Pandaria Tailoring skill from 1-75.",
condition_end=function() return skill('Pandaria Tailoring') >= 75 end,
condition_suggested=function() return skill('Tailoring') > 0 and skill('Pandaria Tailoring') < 75 and level >= 5 end,
},[[
step
talk Silkmaster Tsai##57405
Train Pandaria Tailoring |skillmax Pandaria Tailoring,75 |goto Valley of the Four Winds/0 62.67,59.75
|tip You must be at least level 5.
step
collect 390 Windwool Cloth##72988
|tip Farm them from Humanoid mobs in Pandaria or purchase them from the Auction House.
|only if skill("Pandaria Tailoring") < 74
step
talk Silkmaster Tsai##57405
learn Bolt of Windwool Cloth##125551 |goto Valley of the Four Winds/0 62.67,59.75
step
Open Your Tailoring Crafting Panel:
_<Create 225 Bolts of Windwool Cloth>_
|tip Make them all, you will need them later.
Reach Level 10 Pandaria Tailoring |skill Pandaria Tailoring,10
step
talk Ala'thinel##65862
|tip Inside the building.
learn Windwool Bandage##125551 |goto Shrine of Two Moons/1 29.39,75.85
step
Open Your Tailoring Crafting Panel:
_<Create 15 Windwool Bandage>_
|tip You may need to make more.
Reach Level 25 Pandaria Tailoring |skill Pandaria Tailoring,25
step
talk Ala'thinel##65862
|tip Inside the building.
learn Heavy Windwool Bandage##102698 |goto 29.39,75.85
step
Open Your Tailoring Crafting Panel:
_<Create 35 Heavy Windwool Bandage>_
|tip You may need to make more.
Reach Level 60 Pandaria Tailoring |skill Pandaria Tailoring,60
step
collect 1 Spirit of Harmony##76061
|tip These are created by combining 10 Motes of Harmony.
|tip They drop randomly from mobs and Fishing casts in Pandaria.
|tip You can also purchase them from the Auction House.
|only if skill("Pandaria Tailoring") < 75
step
talk Esha the Loommaiden##64051
buy 1 Pattern: Contender's Satin Cuffs##86365 |goto 33.01,53.87
|only if skill("Pandaria Tailoring") < 75
step
use the Pattern: Contender's Satin Cuffs##86365
learn Contender's Satin Cuffs##125544
step
Open Your Tailoring Crafting Panel:
_<Create 15 Contender's Satin Cuffs>_
Reach Level 75 Pandaria Tailoring |skill Pandaria Tailoring,75
step
_Congratulations!_
You Reached 75 Pandaria Tailoring Skill.
]])
