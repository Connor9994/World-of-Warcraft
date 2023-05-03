local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("ProfessionsAWOD") then return end
ZygorGuidesViewer.GuideMenuTier = "WOD"
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Alchemy\\Leveling Guides\\Draenor Alchemy 1-100",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Draenor Alchemy skill from 1-100.",
condition_end=function() return skill('Draenor Alchemy') >= 100 end,
condition_suggested=function() return skill('Alchemy') > 0 and skill('Draenor Alchemy') < 100 and level >= 35 end,
},[[
step
talk Katherine Joplin##87048
buy 1 A Treatise on the Alchemy of Draenor##109558 |goto Stormshield/0 36.71,68.58
|only if skill("Draenor Alchemy") < 2
step
use A Treatise on the Alchemy of Draenor##109558
Train Draenor Alchemy |skillmax Draenor Alchemy,100
|tip You must be at least level 35.
step
talk Katherine Joplin##87048
buy 1 Recipe: Draenic Armor Potion##112041 |goto 36.71,68.58
|only if skill("Draenor Alchemy") < 55
step
use the Recipe: Draenic Armor Potion##112041
learn Draenic Versatility Potion##156580
step
talk Katherine Joplin##87048
buy 100 Crystal Vial##3371 |goto 36.71,68.58
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
talk Katherine Joplin##87048
buy 1 Recipe: Draenic Agility Flask##112024 |goto 36.71,68.58
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
talk Manda Darlowe##85927 |only if not ZGV.InPhase('BFA')
talk Jane Hudson##136106 |only if ZGV.InPhase('BFA')
|tip Inside the building. |only if ZGV.InPhase('BFA')
Train Draenor Archaeology |skillmax Archaeology,700 |goto Stormshield/0 49.03,33.18 |only if not ZGV.InPhase('BFA')
Train Draenor Archaeology |skillmax Archaeology,700 |goto Boralus/0 68.34,8.47 |only if ZGV.InPhase('BFA')
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
talk Royce Bigbeard##87062
buy 1 Draenor Blacksmithing##115356 |goto Stormshield/0 48.95,48.73
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
collect 1 Secrets of Draenor Blacksmithing##118720 |goto 49.99,47.98
|only if skill("Draenor Blacksmithing") < 100
step
talk Royce Bigbeard##87062
buy 1 Recipe: Truesteel Grinder##116734 |goto 48.95,48.73
|only if skill("Draenor Blacksmithing") < 100
step
use the Recipe: Truesteel Grinder##116734
learn Truesteel Grinder##171699
step
Open Your Blacksmithing Crafting Panel:
_<Create 98 Truesteel Grinder>_
Reach Level 100 Draenor Blacksmithing |skill Draenor Blacksmithing,100 |goto 49.99,47.98
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
Enter the building |goto Stormshield/0 36.09,72.70 < 10 |walk
talk Elton Black##85925
|tip Downstairs inside the building.
Train Draenor Cooking |skillmax Draenor Cooking,100 |goto 35.14,76.16
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
talk Bob##87022
buy 1 Draenor Enchanting##111922 |goto Stormshield/0 56.95,64.75
|only if skill("Draenor Enchanting") < 2
step
use Draenor Enchanting##111922
Train Draenor Enchanting |skillmax Draenor Enchanting,100
|tip You must be at least level 35.
step
collect 200 Draenic Dust##109693
|tip Farm these by disenchanting uncommon (green) items from any Draenor zone or purchase them from the Auction House.
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
talk Sean Catchpole##87065
|tip Inside the building.
buy 1 Draenor Engineering##111921 |goto Stormshield/0 47.84,39.93
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
talk Sean Catchpole##87065
buy 1 Schematic: Didi's Delicate Assembly##118493 |goto 47.84,39.93
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
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Leveling Guides\\Fishing 600-700 Leveling Guide",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Draenor Fishing skill from 1-100.",
condition_end=function() return skill('Draenor Fishing') >= 100 end,
condition_suggested=function() return skill('Draenor Fishing') > 0 and skill('Draenor Fishing') < 100 and level >= 20 end,
},[[
step
Before you continue, open your Fishing window to detect your profession |cast Fishing##7620
skillmax Fishing,600
step
Reach Level 20 |ding 20
|tip You must be at least level 20 to accept the following quest.
step
_Go through_ the doorway |goto Lunarfall/0 59.4,41.3 < 10 |only if walking
talk Ron Ashton##77733
accept Looking For Help##34194 |goto Lunarfall/0 54.4,14.3
step
_Go through_ the doorway |goto Lunarfall/0 59.4,41.3 < 10 |only if walking
_Follow_ the road |goto Shadowmoon Valley D/0 23.2,13.9 < 20 |only if walking
talk Madari##84372
Tell him _"You look like an able fisherman, do you think you can help us out?"_
Find a Local Fisherman |q 34194/1 |goto Shadowmoon Valley D 27.0,7.3
step
talk Madari##84372
turnin Looking For Help##34194 |goto Shadowmoon Valley D 26.96,7.29
accept Moonshell Claws##36199 |goto Shadowmoon Valley D 26.96,7.29
step
kill Moonshell Crawler##84341+
collect 4 Moonshell Claw##114873 |q 36199/1 |goto Shadowmoon Valley D 29.54,10.92
step
talk Madari##84372
turnin Moonshell Claws##36199 |goto Shadowmoon Valley D 26.96,7.28
accept Proving Your Worth##36201 |goto Shadowmoon Valley D 26.96,7.28
step
Attach the Moonshell Claw Bait to your fishing pole |use Moonshell Claw Bait##114874
Stand on the edge of the beach
Use your Fishing skill to fish in the water |cast Fishing##131474
Catch #5# Shadow Sturgeon |q 36201/1 |goto Shadowmoon Valley D 27.54,7.24
step
talk Madari##84372
turnin Proving Your Worth##36201 |goto Shadowmoon Valley D 26.96,7.28
accept Anglin' In Our Garrison##36202 |goto Shadowmoon Valley D 26.96,7.28
step
_Go through_ the doorway |goto Lunarfall/0 59.4,41.3 < 10 |only if walking
talk Ron Ashton##77733
turnin Anglin' In Our Garrison##36202 |goto Lunarfall/0 54.4,14.3
use Fishing Guide to Draenor##111356
skillmax Fishing,700
step
Stand at the edge of the pond in your garrison |goto Lunarfall 51.9,13.7
Use your Fishing skill to fish in the water |cast Fishing##131474
skill Fishing,700
step
Congratulations, you have reached level 700 in Fishing!
]])
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
Enter the building |goto Stormshield/0 62.32,37.33 < 10 |walk
talk Joao Calhandro##87063
|tip Upstairs inside the building.
buy 1 Draenor Inscription##111923 |goto 62.01,33.42
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
talk Joao Calhandro##87063
|tip Upstairs inside the building.
buy Technique: Volatile Crystal##118614 |goto 62.01,33.42
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
talk Artificer Harlaan##87052
buy 1 Draenor Jewelcrafting##115359 |goto Stormshield/0 44.16,37.74
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
|only if skill("Draenor Jewelcrafting") < 5
step
talk Artificer Harlaan##87052
buy 1 Recipe: Haste Taladite##116097 |goto 44.16,37.74
|only if skill("Draenor Jewelcrafting") < 10
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
talk Leara Moonsilk##87057
buy 1 Draenor Leatherworking##115358 |goto Stormshield/0 51.98,41.52
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
talk Leara Moonsilk##87057
buy 1 Recipe: Drums of Fury##120258 |goto 51.98,41.52
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
talk Leara Moonsilk##87057
buy 1 Recipe: Leather Refurbishing Kit##116325 |goto 51.98,41.52
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
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Blackrock",{
author="support@zygorguides.com",
description="\nBlackrock can be gathered from Shadowmoon Valley, Draenor.",
condition_end=function() return skill('Draenor Mining') >= 50 end,
},[[
step
map Shadowmoon Valley D/0
path follow smart; loop on; ants straight
path	35.86,25.75	36.79,26.81	38.40,28.67	37.95,30.80	36.18,31.76
path	35.40,33.63	34.31,33.94	32.57,32.98	31.28,32.16	29.88,33.64
path	29.35,35.38	29.08,36.91	30.90,36.89	32.64,36.86	34.82,36.73
path	36.23,37.69	37.95,39.05	39.13,40.58	39.64,42.64	40.21,45.85
path	39.84,48.13	40.01,50.53	40.73,52.49	40.11,54.58	39.20,57.51
path	40.04,60.06	40.31,62.08	40.10,64.25	40.75,66.05	42.89,65.66
path	44.30,67.03	46.12,65.47	46.40,62.97	47.84,61.16	49.13,59.27
path	50.98,60.63	51.91,62.02	53.25,63.33	54.17,60.84	54.57,58.19
path	55.26,55.68	53.26,55.99	53.29,54.21	56.32,48.46	56.60,45.76
path	55.98,42.67	55.03,41.43	53.53,39.69	51.42,40.73	50.34,41.74
path	49.70,43.15	47.77,43.53	45.73,43.64	43.55,43.32	42.00,40.31
path	41.08,37.06	41.96,32.87	43.45,28.61	42.77,25.35	41.85,23.10
path	41.89,20.73	40.86,17.57	38.58,17.11	37.24,18.22
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
description="\nTrue Iron can be gathered from Shadowmoon Valley, Draenor.",
condition_end=function() return skill('Draenor Mining') >= 50 end,
},[[
step
map Shadowmoon Valley D/0
path follow smart; loop on; ants straight
path	35.86,25.75	36.79,26.81	38.40,28.67	37.95,30.80	36.18,31.76
path	35.40,33.63	34.31,33.94	32.57,32.98	31.28,32.16	29.88,33.64
path	29.35,35.38	29.08,36.91	30.90,36.89	32.64,36.86	34.82,36.73
path	36.23,37.69	37.95,39.05	39.13,40.58	39.64,42.64	40.21,45.85
path	39.84,48.13	40.01,50.53	40.73,52.49	40.11,54.58	39.20,57.51
path	40.04,60.06	40.31,62.08	40.10,64.25	40.75,66.05	42.89,65.66
path	44.30,67.03	46.12,65.47	46.40,62.97	47.84,61.16	49.13,59.27
path	50.98,60.63	51.91,62.02	53.25,63.33	54.17,60.84	54.57,58.19
path	55.26,55.68	53.26,55.99	53.29,54.21	56.32,48.46	56.60,45.76
path	55.98,42.67	55.03,41.43	53.53,39.69	51.42,40.73	50.34,41.74
path	49.70,43.15	47.77,43.53	45.73,43.64	43.55,43.32	42.00,40.31
path	41.08,37.06	41.96,32.87	43.45,28.61	42.77,25.35	41.85,23.10
path	41.89,20.73	40.86,17.57	38.58,17.11	37.24,18.22
Mine along the path
|tip Make sure you enable "Find Minerals" in the tracking menu on the minimap.
click True Iron Deposit##228493+
click Rich True Iron Deposit##228510+
|tip Gather True Iron along the path.
collect True Iron Ore##109119 |n
'|confirm
]])
ZGV.BETAEND()
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Leveling Guides\\Draenor Tailoring 1-100",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Draenor Tailoring skill from 1-100.",
condition_end=function() return skill('Draenor Tailoring') >= 100 end,
condition_suggested=function() return skill('Tailoring') > 0 and skill('Draenor Tailoring') < 100 and level >= 35 end,
},[[
step
talk Steven Cochrane##87049
buy 1 Draenor Tailoring##115357 |goto Stormshield/0 51.27,36.29
|only if skill("Draenor Tailoring") < 2
step
use Draenor Tailoring##115357
Train Draenor Tailoring |skillmax Draenor Tailoring,100
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
talk Steven Cochrane##87049
buy 1 Pattern: Hexweave Embroidery##114852 |goto 51.27,36.29
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
