local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("ProfessionsHWOD") then return end
ZygorGuidesViewer.GuideMenuTier = "WOD"
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Alchemy\\Leveling Guides\\Draenor Alchemy 1-100",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Draenor Alchemy skill from 1-100.",
condition_end=function() return skill('Draenor Alchemy') >= 100 end,
condition_suggested=function() return skill('Alchemy') > 0 and skill('Draenor Alchemy') < 100 and level >= 35 end,
},[[
step
talk Joshua Alvarez##87542
buy 1 A Treatise on the Alchemy of Draenor##109558 |goto Warspear/0 60.98,27.37
|only if skill("Draenor Alchemy") < 2
step
use A Treatise on the Alchemy of Draenor##109558
Train Draenor Alchemy |skillmax Draenor Alchemy,100
|tip You must be at least level 35.
step
talk Joshua Alvarez##87542
buy 1 Recipe: Draenic Armor Potion##112041 |goto 60.97,27.36
|only if skill("Draenor Alchemy") < 55
step
use the Recipe: Draenic Armor Potion##112041
learn Draenic Versatility Potion##156580
step
talk Joshua Alvarez##87542
buy 100 Crystal Vial##3371 |goto 60.97,27.36
|only if skill("Draenor Alchemy") < 2
step
collect 158 Frostweed##109124
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Draenor Alchemy") < 100
step
Open Your Alchemy Crafting Panel:
_<Create 1 Secrets of Draenor Alchemy>_
Reach Level 2 Draenor Alchemy |skill Draenor Alchemy,2
step
Open Your Alchemy Crafting Panel:
_<Create 53 Draenic Versatility Potion>_
Reach Level 55 Draenor Alchemy |skill Draenor Alchemy,55
step
collect 176 Fireweed##109125
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Draenor Alchemy") < 100
step
collect 176 Starflower##109127
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Draenor Alchemy") < 100
step
talk Joshua Alvarez##87542
buy 1 Recipe: Draenic Agility Flask##112024 |goto 60.97,27.36
|only if skill("Draenor Alchemy") < 100
step
use the Recipe: Draenic Agility Flask##112024
learn Draenic Agility Flask##156561
step
Open Your Alchemy Crafting Panel:
_<Create 44 Draenic Agility Flask>_
Reach Level 100 Draenor Alchemy |skill Draenor Alchemy,100
step
_Congratulations!_
You Reached 100 Draenor Alchemy Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Archaeology\\Leveling Guides\\Archaeology 600-700",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Archaeology skill from 600-700.",
condition_end=function() return skill('Archaeology') >= 700 end,
condition_suggested=function() return skill('Archaeology') < 700 and level >= 5 end,
},[[
step
Reach Level 5 |ding 5
step
talk Reena Cogscrap##86033 |only if not ZGV.InPhase('BFA')
talk Examiner Alerinda##122701 |only if ZGV.InPhase('BFA')
|tip Inside the building.
|tip She walks around this area. |only if ZGV.InPhase('BFA')
Train Draenor Archaeology |skillmax Archaeology,700 |goto Warspear/0 73.61,31.19 |only if not ZGV.InPhase('BFA')
Train Draenor Archaeology |skillmax Archaeology,700 |goto Dazar'alor/1 32.23,36.12 |only if ZGV.InPhase('BFA')
step
Search for dig sites on your world map
|tip You can earn points from any dig site in Draenor, the Broken Isles, Kul Tiras, or Zandalar.
|tip They look like small shovel icons on your world map that spawn in random places.
|tip When you reach the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
Use your Survey ability inside the dig site area |cast Survey##80451
|tip A telescope will appear and point in a certain direction.
|tip Follow the direction it points in and continue using your Survey ability to eventually find the artifacts.
|tip Each dig site has up to 6 artifacts you can find.
click Archaeology Fragment+
|tip Each one can grant a single skill point.
|tip Open your Archaeology panel and solve artifacts to gain additional points.
|tip You receive 5 skill points for normal solves and 15 skill points for rare solves.
Reach 700 Archaeology Skill |skill Archaeology,700
step
_Congratulations!_
You Reached 700 Archaeology Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Blacksmithing\\Leveling Guides\\Draenor Blacksmithing 1-100",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Draenor Blacksmithing skill from 1-100.",
condition_end=function() return skill('Draenor Blacksmithing') >= 100 end,
condition_suggested=function() return skill('Blacksmithing') > 0 and skill('Draenor Blacksmithing') < 100 and level >= 35 end,
},[[
step
talk Nonn Treeratchet##87550
|tip Inside the building.
buy 1 Draenor Blacksmithing##115356 |goto Warspear/0 74.96,37.89
|only if skill("Draenor Blacksmithing") < 100
step
use the Draenor Blacksmithing##115356
Train Draenor Blacksmithing |skillmax Draenor Blacksmithing,100
|tip You must be at least level 35.
step
collect 1960 Blackrock Ore##109118
|tip Farm them with Mining purchase them from the Auction House.
|only if skill("Draenor Blacksmithing") < 100
step
collect 985 True Iron Ore##109119
|tip Farm them with Mining purchase them from the Auction House.
|only if skill("Draenor Blacksmithing") < 100
step
Open Your Blacksmithing Crafting Panel:
_<Create 1 Secrets of Draenor Blacksmithing>_
collect 1 Secrets of Draenor Blacksmithing##118720 |goto 74.22,37.37
|only if skill("Draenor Blacksmithing") < 100
step
talk Nonn Threeratchet##87550
buy 1 Recipe: Truesteel Grinder##116734 |goto 74.96,37.91
|only if skill("Draenor Blacksmithing") < 100
step
use the Recipe: Truesteel Grinder##116734
learn Truesteel Grinder##171699
step
Open Your Blacksmithing Crafting Panel:
_<Create 98 Truesteel Grinder>_
Reach Level 100 Draenor Blacksmithing |skill Draenor Blacksmithing,100 |goto 74.22,37.37
step
_Congratulations!_
You Reached 100 Draenor Blacksmithing Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Leveling Guides\\Draenor Cooking 1-100",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Draenor Cooking skill from 1-100.",
condition_end=function() return skill('Draenor Cooking') >= 100 end,
condition_suggested=function() return skill('Cooking') > 0 and skill('Draenor Cooking') < 100 and level >= 5 end,
},[[
step
talk Guy Fireeye##86029
|tip Downstairs inside the building.
Train Draenor Cooking |skillmax Draenor Cooking,100 |goto Warspear/0 45.62,44.81
|tip You must be at least level 5.
step
collect 75 Crescent Saberfish Flesh##109137
|tip Farm them with Fishing or purchase them from the Auction House.
|only if skill("Draenor Cooking") < 25
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 30 Grilled Saberfish>_
|tip Keep all recipes you gather from crafting these.
Reach 20 Draenor Cooking |skill Draenor Cooking,20
step
use the Recipe Idea: Pan-Seared Talbuk##118312
|tip You should have gotten this from cooking the last recipe.
learn Pan-Seared Talbuk##160966
|only if skill("Draenor Cooking") < 50
step
use the Recipe Idea: Sturgeon Stew##118318
|tip You should have gotten this from cooking the last recipe.
learn Sturgeon Stew##160979
|only if skill("Draenor Cooking") < 50
step
collect 350 Blind Lake Sturgeon Flesh##109140
|tip Farm them with Fishing or purchase them from the Auction House.
|only if skill("Draenor Cooking") < 50
step
collect 175 Raw Talbuk Meat##109132
|tip You can also purchase them from the Auction House.
|only if skill("Draenor Cooking") < 50
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 15 Pan-Seared Talbuk>_
|tip Keep all of these for later.
Reach 35 Draenor Cooking |skill Draenor Cooking,35
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 15 Sturgeon Stew>_
|tip Keep all of these for later.
Reach 50 Draenor Cooking |skill Draenor Cooking,50
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 20 Pan-Seared Talbuk>_
|tip Keep all of these for later.
Create 20 Pan-Seared Talbuk |complete itemcount(111434) >= 175
|only if skill("Draenor Cooking") < 75
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 20 Sturgeon Stew>_
|tip Keep all of these for later.
Create 20 Sturgeon Stew |complete itemcount(111442) >= 175
|only if skill("Draenor Cooking") < 75
step
use the Recipe Idea: Frosty Stew##118324
|tip You should have gotten this from Cooking the last recipe.
learn Frosty Stew##160987
step
collect 40 Frostweed##109124
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Draenor Cooking") < 90
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 35 Frosty Stew>_
|tip Make all of these.
|tip You may need to make a few more.
Reach 90 Draenor Cooking |skill Draenor Cooking,90
step
use the Recipe Idea: Feast of Blood##118328
|tip You should have gotten this from Cooking the last recipe.
learn Feast of Blood##173978
step
collect 100 Raw Boar Meat##109136
|tip Farm them or purchase them from the Auction House.
|only if skill("Draenor Cooking") < 100
step
collect 100 Rylak Egg##109133
|tip Farm them or purchase them from the Auction House.
|only if skill("Draenor Cooking") < 100
step
collect 100 Raw Elekk Meat##109134
|tip Farm them or purchase them from the Auction House.
|only if skill("Draenor Cooking") < 100
step
collect 100 Raw Talbuk Meat##109132
|tip Farm them or purchase them from the Auction House.
|only if skill("Draenor Cooking") < 100
step
collect 100 Raw Riverbeast Meat##109135
|tip Farm them or purchase them from the Auction House.
|only if skill("Draenor Cooking") < 100
step
collect 100 Raw Clefthoof Meat##109131
|tip Farm them or purchase them from the Auction House.
|only if skill("Draenor Cooking") < 100
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 10 Feast of Blood>_
Reach 100 Draenor Cooking |skill Draenor Cooking,100
step
_Congratulations!_
You Reached 100 Draenor Cooking Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Enchanting\\Leveling Guides\\Draenor Enchanting 1-100",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Draenor Enchanting skill from 1-100.",
condition_end=function() return skill('Draenor Enchanting') >= 100 end,
condition_suggested=function() return skill('Enchanting') > 0 and skill('Draenor Enchanting') < 100 and level >= 35 end,
},[[
step
talk Ged'kah##86045
|tip Inside the building.
buy 1 Draenor Enchanting##111922 |goto Warspear/0 77.98,53.74
|only if skill("Draenor Enchanting") < 2
step
use Draenor Enchanting##111922
Train Draenor Enchanting |skillmax Draenor Enchanting,100
|tip You must be at least level 35.
step
collect 200 Draenic Dust##109693
|tip Farm these by disenchanting uncommon (green) items from any Draenor zone or purchase them from the Auction House.
|tip You can also purchase them from the Auction House.
|only if skill("Draenor Enchanting") < 40
step
Open Your Enchanting Crafting Panel:
_<Create 160 Enchanted Dust>_
|tip This recipe will be yellow by level 50 Draenor Enchanting and green at 75 Draenor Enchanting.
Reach Level 100 Draenor Enchanting |skill Draenor Enchanting,100
step
_Congratulations!_
You Reached 100 Draenor Enchanting Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Engineering\\Leveling Guides\\Draenor Engineering 1-100",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Draenor Engineering skill from 1-100.",
condition_end=function() return skill('Draenor Engineering') >= 100 end,
condition_suggested=function() return skill('Engineering') > 0 and skill('Draenor Engineering') < 100 and level >= 35 end,
},[[
step
talk Nik Steelrings##87552
|tip Inside the building.
buy 1 Draenor Engineering##111921 |goto Warspear/0 70.50,38.90
|only if skill("Draenor Engineering") < 2
step
use the Draenor Engineering##111921
Train Draenor Engineering |skillmax Draenor Engineering,100
|tip You must be at least level 35.
step
collect 1232 True Iron Ore##109119
|tip Farm them with Mining purchase them from the Auction House.
|only if skill("Draenor Engineering") < 100
step
collect 1227 Blackrock Ore##109118
|tip Farm them with Mining purchase them from the Auction House.
|only if skill("Draenor Engineering") < 100
step
collect 40 Nagrand Arrowbloom##109128
|tip Farm them with Herbalism purchase them from the Auction House.
|only if skill("Draenor Engineering") < 30
step
Open Your Engineering Crafting Panel:
_<Create 1 Secrets of Draenor Engineering>_
|tip Save this for later.
Reach Level 2 Draenor Engineering |skill Draenor Engineering,2
step
Open Your Engineering Crafting Panel:
_<Create 1 Gearspring Parts>_
collect 8 Gearspring Parts##111366 |goto 74.64,37.62
|only if skill("Draenor Engineering") < 100
step
Open Your Engineering Crafting Panel:
_<Create 1 Ultimate Gnomish Army Knife>_
|tip Keep this in your inventory.
collect 1 Ultimate Gnomish Army Knife##114943
|only if skill("Draenor Engineering") < 100
step
Open Your Engineering Crafting Panel:
_<Create 27 Stealthman 54s>_
|tip this will be green by 27, so you may need to create more.
Reach Level 30 Draenor Engineering |skill Draenor Engineering,30
step
talk Nik Steelrings##87552
buy 1 Schematic: Didi's Delicate Assembly##118493 |goto 70.50,38.93
|only if skill("Draenor Engineering") < 100
step
use the Schematic: Didi's Delicate Assembly##118493
learn Didi's Delicate Assembly##169078
step
Open Your Engineering Crafting Panel:
_<Create 70 Didi's Delicate Assembly>_
Reach Level 100 Draenor Engineering |skill Draenor Engineering,100
step
_Congratulations!_
You Reached 100 Draenor Engineering Skill.
]])
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Leveling Guides\\Draenor Fishing 1-100",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Draenor Fishing skill from 1-100.",
condition_end=function() return skill('Draenor Fishing') >= 100 end,
condition_suggested=function() return skill('Fishing') > 0 and skill('Draenor Fishing') < 100 and level >= 35 end,
},[[
step
talk Brix Rocketcast##86628
Train Draenor Fishing |skillmax Draenor Fishing,100  |goto Warspear/0 69.10,16.58
step
Fish in the open water
|tip You can fish anywhere and gain skill.
Reach 100 Draenor Fishing |skill Draenor Fishing,100  |goto 69.53,14.86
step
_Congratulations!_
You Reached 100 Draenor Fishing Skill.
]])
ZGV.BETAEND()
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Leveling Guides\\Draenor Herbalism 1-100",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Draenor Herbalism skill from 1-100.",
condition_end=function() return skill('Draenor Herbalism') >= 100 end,
condition_suggested=function() return skill('Draenor Herbalism') > 0 and skill('Draenor Herbalism') < 100 and level >= 35 end,
},[[
step
map Frostfire Ridge
path follow smart; loop on; ants curved; dist 50
path	31.13,53.38	26.18,53.77	24.29,49.06	23.22,45.20	20.78,39.59
path	22.21,33.95	21.82,29.71	20.91,25.43	23.15,23.62	25.16,24.66
path	27.23,22.32	29.75,21.45	31.28,22.00	32.86,21.71	35.16,19.55
path	36.92,24.31	38.11,26.83	40.87,28.95	41.67,30.65	42.83,29.91
path	42.95,31.13	44.44,31.13	46.23,31.78	48.91,34.44	51.67,36.94
path	53.77,35.14	54.59,30.31	56.57,26.19	59.14,28.47	60.05,31.95
path	61.23,34.92	63.17,40.96	63.46,45.04	60.93,46.98	62.21,52.43
path	60.32,55.39	57.94,57.58	53.88,55.82	50.65,54.73	47.79,55.61
path	45.94,58.91	43.10,60.84	40.31,62.14	37.78,58.76	36.57,56.50
path	35.56,53.36	33.60,49.23	31.10,51.27
Collect herbs along the path
|tip Turn on your Find Herbs ability to see the nodes.
collect 1 A Compendium of the Herbs of Draenor##111350
|tip You should get this from looting your first herb.
|only if skill('Draenor Herbalism') < 2
step
use A Compendium of the Herbs of Draenor##111350
Train Draenor Herbalism |skillmax Draenor Herbalism,100
|tip You must be at least level 35.
step
map Frostfire Ridge
path follow smart; loop on; ants curved; dist 50
path	31.13,53.38	26.18,53.77	24.29,49.06	23.22,45.20	20.78,39.59
path	22.21,33.95	21.82,29.71	20.91,25.43	23.15,23.62	25.16,24.66
path	27.23,22.32	29.75,21.45	31.28,22.00	32.86,21.71	35.16,19.55
path	36.92,24.31	38.11,26.83	40.87,28.95	41.67,30.65	42.83,29.91
path	42.95,31.13	44.44,31.13	46.23,31.78	48.91,34.44	51.67,36.94
path	53.77,35.14	54.59,30.31	56.57,26.19	59.14,28.47	60.05,31.95
path	61.23,34.92	63.17,40.96	63.46,45.04	60.93,46.98	62.21,52.43
path	60.32,55.39	57.94,57.58	53.88,55.82	50.65,54.73	47.79,55.61
path	45.94,58.91	43.10,60.84	40.31,62.14	37.78,58.76	36.57,56.50
path	35.56,53.36	33.60,49.23	31.10,51.27
Collect herbs along the path
|tip Turn on your Find Herbs ability to see the nodes.
Reach 100 Draenor Herbalism |skill Draenor Herbalism,100
step
_Congratulations!_
You Reached 100 Draenor Herbalism Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Inscription\\Leveling Guides\\Draenor Inscription 1-100",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Draenor Inscription skill from 1-100.",
condition_end=function() return skill('Draenor Inscription') >= 100 end,
condition_suggested=function() return skill('Inscription') > 0 and skill('Draenor Inscription') < 100 and level >= 35 end,
},[[
step
talk Maru'sa##87551
buy 1 Draenor Inscription##111923 |goto Warspear/0 75.24,47.59
|only if skill("Draenor Inscription") < 2
step
use the Draenor Inscription##111923
Train Draenor Inscription |skillmax Draenor Inscription,100
|tip You must be at least level 35.
step
collect 1178 Cerulean Pigment##114931
|tip Mill them with Inscription or purchase them from the Auction House.
|tip Cerulean Pigment can be Milled from Fireweed, Frostweed, Gorgrond Flytrap, Nagrand Arrowbloom, Starflower and Talador Orchid.
|only if skill("Draenor Inscription") < 100
step
Open Your Inscription Crafting Panel:
_<Create 1 Secrets of Draenor Inscription>_
Reach Level 2 Draenor Inscription |skill Draenor Inscription,2
step
talk Maru'sa##87551
buy Technique: Volatile Crystal##118614 |goto 75.24,47.59
|only if skill("Draenor Inscription") < 5
step
use the Technique: Volatile Crystal##118614
learn Volatile Crystal##166432
step
Open Your Inscription Crafting Panel:
_<Create 98 Volatile Crystal>_
Reach Level 100 Draenor Inscription |skill Draenor Inscription,100
step
_Congratulations!_
You Reached 100 Draenor Inscription Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Jewelcrafting\\Leveling Guides\\Draenor Jewelcrafting 1-100",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Draenor Jewelcrafting skill from 1-100.",
condition_end=function() return skill('Draenor Jewelcrafting') >= 100 end,
condition_suggested=function() return skill('Jewelcrafting') > 0 and skill('Draenor Jewelcrafting') < 100 and level >= 35 end,
},[[
step
talk Kaevan Highwit##87548
buy 1 Draenor Jewelcrafting##115359 |goto Warspear/0 60.41,40.64
step
use the Draenor Jewelcrafting##115359
Train Draenor Jewelcrafting |skillmax Draenor Jewelcrafting,100
|tip You must be at least level 35.
step
collect 995 Blackrock Ore##109118
|tip Farm them with Mining or purchase them from the Auction House.
|only if skill("Draenor Jewelcrafting") < 100
step
collect 198 Gorgrond Flytrap##109126
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Draenor Jewelcrafting") < 100
step
Open Your Jewelcrafting Crafting Panel:
_<Research 1 Secrets of Draenor Jewelcrafting>_
|tip You will only be able to make one of these per day.
collect 1 Secret of Draenor Jewelcrafting##118723
|only if skill("Draenor Jewelcrafting") < 100
step
talk Kaevan Highwit##87548
buy 1 Recipe: Haste Taladite##116097 |goto 60.41,40.64
step
use the Recipe: Haste Taladite##116097
learn Haste Taladite##170720
step
Open Your Jewelcrafting Crafting Panel:
_<Create 99 Haste Taladite>_
Reach 100 Draenor Jewelcrafting |skill Draenor Jewelcrafting,100
step
_Congratulations!_
You Reached 100 Draenor Jewelcrafting Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Leatherworking\\Leveling Guides\\Draenor Leatherworking 1-100",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Draenor Leatherworking skill from 1-100.",
condition_end=function() return skill('Draenor Leatherworking') >= 100 end,
condition_suggested=function() return skill('Leatherworking') > 0 and skill('Draenor Leatherworking') < 100 and level >= 35 end,
},[[
step
talk Garm Gladestride##87549
buy 1 Draenor Leatherworking##115358 |goto Warspear/0 50.43,27.26
|only if skill("Draenor Leatherworking") < 2
step
use the Draenor Leatherworking##115358
Train Draenor Leatherworking |skillmax Draenor Leatherworking,100
|tip You must be at least level 35.
step
collect 1630 Raw Beast Hide##110609
|tip Farm them with Skinning or purchase them from the Auction House.
|only if skill("Draenor Leatherworking") < 100
step
Open Your Leatherworking Crafting Panel:
_<Create 1 Secrets of Draenor Leatherworking>_
collect 1 Secret of Draenor Leatherworking##118721
|only if skill("Draenor Leatherworking") < 5
step
talk Garm Gladestride##87549
buy 1 Recipe: Drums of Fury##120258 |goto 50.43,27.26
|only if skill("Draenor Leatherworking") < 55
step
use the Recipe: Drums of Fury##120258
learn Drums of Fury##178208
step
Open Your Leatherworking Crafting Panel:
_<Create 55 Drums of Fury>_
Reach 55 Draenor Leatherworking |skill Draenor Leatherworking,55
step
Open Your Leatherworking Crafting Panel:
_<Create 1 Secrets of Draenor Leatherworking>_
|tip You will have to wait one day to craft this.
|tip This is required to purchase the next recipe.
collect 1 Secret of Draenor Leatherworking##118721
|only if skill("Draenor Leatherworking") < 100
step
talk Garm Gladestride##87549
buy 1 Recipe: Leather Refurbishing Kit##116325 |goto 50.43,27.26
|only if skill("Draenor Leatherworking") < 100
step
use the Recipe: Leather Refurbishing Kit##116325
learn Leather Refurbishing Kit##171266
step
Open Your Leatherworking Crafting Panel:
_<Create 45 Leather Refurbishing Kit>_
Reach 100 Draenor Leatherworking |skill Draenor Leatherworking,100
step
_Congratulations!_
You Reached 100 Draenor Leatherworking Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Blackrock",{
author="support@zygorguides.com",
description="\nBlackrock can be gathered from Frostfire Ridge.",
condition_end=function() return skill('Draenor Mining') >= 50 end,
},[[
step
map Frostfire Ridge/0
path follow smart; loop on; ants curved
path	43.00,58.31	40.85,60.58	38.43,59.32	36.07,57.09	34.35,54.67
path	31.62,54.88	28.57,49.56	27.94,44.61	24.58,39.75	23.96,34.15
path	27.95,30.95	31.99,27.02	32.66,25.75	33.52,20.52	36.37,21.05
path	37.81,26.53	41.05,28.95	42.18,30.65	43.01,31.01	44.79,31.22
path	49.72,35.46	52.43,38.31	54.37,39.59	48.53,50.14	47.61,54.93
path	46.24,58.35	43.34,57.94
Mine along the path
|tip Make sure you enable "Find Minerals" in the tracking menu on the minimap.
click Blackrock Deposit##228563+
click Rich Blackrock Deposit##228564+
|tip Gather Blackrock along the path.
collect Blackrock Ore##109118 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\True Iron",{
author="support@zygorguides.com",
description="\nTrue Iron can be gathered from Frostfire Ridge.",
condition_end=function() return skill('Draenor Mining') >= 50 end,
},[[
step
map Frostfire Ridge/0
path follow smart; loop on; ants curved
path	43.06,58.36	40.88,60.52	38.49,59.31	36.08,57.09	34.39,54.67
path	31.64,54.83	28.57,49.57	27.97,44.62	24.54,39.73	23.97,34.14
path	27.99,30.92	31.94,27.08	32.65,25.74	33.53,20.52	36.34,21.05
path	37.82,26.54	41.05,28.94	42.13,30.67	43.01,31.01	44.75,31.26
path	49.76,35.45	52.42,38.35	54.31,39.52	48.55,50.15	47.66,54.93
path	46.24,58.36	43.31,57.99
Mine along the path
|tip Make sure you enable "Find Minerals" in the tracking menu on the minimap.
click True Iron Deposit##228493+
click Rich True Iron Deposit##228510+
|tip Gather True Iron along the path.
collect True Iron Ore##109119 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Leveling Guides\\Draenor Mining 1-100",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Draenor Mining skill from 1-100.",
condition_end=function() return skill('Draenor Mining') >= 100 end,
condition_suggested=function() return skill('Draenor Mining') > 0 and skill('Draenor Mining') < 100 and level >= 35 end,
},[[
step
map Frostfire Ridge
path follow smart; loop on; ants curved; dist 30
path	43.03,58.30	40.89,60.53	38.43,59.37	36.08,57.09	34.32,54.69
path	31.61,54.82	28.54,49.56	27.97,44.68	24.51,39.75	23.91,34.13
path	27.90,30.95	31.96,27.00	32.65,25.75	33.50,20.52	36.33,21.05
path	37.85,26.54	41.05,28.92	42.11,30.62	43.05,31.01	44.74,31.24
path	49.77,35.41	52.41,38.35	54.30,39.51	48.59,50.14	47.67,54.95
path	46.26,58.35	43.30,57.99
Mine along the path
|tip Make sure you enable "Find Minerals" in the tracking menu on the minimap.
collect 1 A Treatise on Mining in Draenor##111349
|tip You should get this from the first node you mine from.
|only if skill('Draenor Mining') < 2
step
use A Treatise on Mining in Draenor##111349
Train Draenor Mining |skillmax Draenor Mining,100
|tip You must be at least level 35.
step
map Frostfire Ridge
path follow smart; loop on; ants curved; dist 30
path	43.03,58.30	40.89,60.53	38.43,59.37	36.08,57.09	34.32,54.69
path	31.61,54.82	28.54,49.56	27.97,44.68	24.51,39.75	23.91,34.13
path	27.90,30.95	31.96,27.00	32.65,25.75	33.50,20.52	36.33,21.05
path	37.85,26.54	41.05,28.92	42.11,30.62	43.05,31.01	44.74,31.24
path	49.77,35.41	52.41,38.35	54.30,39.51	48.59,50.14	47.67,54.95
path	46.26,58.35	43.30,57.99
Mine along the path
|tip Make sure you enable "Find Minerals" in the tracking menu on the minimap.
Reach 100 Draenor Mining |skill Draenor Mining,100
step
_Congratulations!_
You Reached 100 Draenor Mining Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Leveling Guides\\Draenor Tailoring 1-100",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Draenor Tailoring skill from 1-100.",
condition_end=function() return skill('Draenor Tailoring') >= 100 end,
condition_suggested=function() return skill('Tailoring') > 0 and skill('Draenor Tailoring') < 100 and level >= 35 end,
},[[
step
talk Petir Starocean##87543
buy 1 Draenor Tailoring##115357 |goto Warspear/0 59.29,43.42
|only if skill("Draenor Tailoring") < 2
step
use Draenor Tailoring##115357
Train Draenor Tailoring |skillmax Draenor Tailoring,100 |goto 59.29,43.42
|tip You must be at least level 35.
step
collect 2945 Sumptuous Fur##111557
|tip Farm them with Skinning or purchase them from the Auction House.
step
Open Your Tailoring Crafting Panel:
_<Create 1 Secrets of Draenor Tailoring>_
collect 1 Secret of Draenor Tailoring##118722
|only if skill("Draenor Tailoring") < 3
step
talk Petir Starocean##87543
buy 1 Pattern: Hexweave Embroidery##114852 |goto 59.29,43.42
|only if skill("Draenor Tailoring") < 5
step
use the Pattern: Hexweave Embroidery##114852
learn Hexweave Embroidery##168836
step
Open Your Tailoring Crafting Panel:
_<Create 98 Hexweave Embroidery>_
Reach 100 Draenor Tailoring |skill Draenor Tailoring,100
step
_Congratulations!_
You Reached Level 100 Draenor Tailoring Skill.
]])
