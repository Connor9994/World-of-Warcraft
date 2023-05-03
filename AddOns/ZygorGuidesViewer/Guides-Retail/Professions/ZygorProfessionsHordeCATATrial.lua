local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("ProfessionsH") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Alchemy\\Leveling Guides\\Alchemy 1-300",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Classic Alchemy skill from 1-300.",
condition_end=function() return skill('Alchemy') >= 300 end,
condition_suggested=function() return skill('Alchemy') > 0 and skill('Alchemy') < 300 and level >= 5 end,
},[[
step
Enter the building |goto Orgrimmar/1 55.58,46.70 |walk
talk Yelmak##3347
|tip Inside the building.
Train Alchemy |skillmax Alchemy,300 |goto 55.68,45.74
|tip You must be at least level 5.
step
talk Kor'geld##3348
buy 340 Crystal Vial##3371 |goto 55.24,45.86
|only if skill("Alchemy") < 300
step
collect 59 Peacebloom##2447
|tip You can farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 60
step
collect 59 Silverleaf##765
|tip You can farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 60
step
Open Your Alchemy Crafting Panel:
_<Create 59 Minor Healing Potions>_
Reach 60 Alchemy |skill Alchemy,60
step
collect 100 Briarthorn##2450
|tip Keep any Mageroyal you find.
|tip You can farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 140
step
Enter the building |goto Orgrimmar/1 55.58,46.70 |walk
talk Yelmak##3347
|tip Inside the building.
learn Lesser Healing Potion##2337 |goto 55.68,45.74
step
Open Your Alchemy Crafting Panel:
_<Create 45 Lesser Healing Potions>_
|tip You may need to craft more than 45 to reach 105.
Reach 105 Alchemy |skill Alchemy,105
step
collect 40 Mageroyal##785
|tip You can farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 110
step
collect 40 Bruiseweed##2453
|tip You can farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 140
step
Enter the building |goto Orgrimmar/1 55.58,46.70 |walk
talk Yelmak##3347
|tip Inside the building.
learn Elixir of Wisdom##3171 |goto 55.68,45.74
step
Open Your Alchemy Crafting Panel:
_<Create 5 Elixir of Wisdom>_
Reach 110 Alchemy |skill Alchemy,110
step
Enter the building |goto Orgrimmar/1 55.58,46.70 |walk
talk Yelmak##3347
|tip Inside the building.
learn Healing Potion##3447 |goto 55.68,45.74
step
Open Your Alchemy Crafting Panel:
_<Create 30 Healing Potions>_
|tip You may need to craft more than 30 to reach 140.
Reach 140 Alchemy |skill Alchemy,140
step
Enter the building |goto Orgrimmar/1 55.58,46.70 |walk
talk Yelmak##3347
|tip Inside the building.
learn Lesser Mana Potion##3173 |goto 55.68,45.74
step
collect 45 Stranglekelp##3820
|tip You can farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 205
step
Open Your Alchemy Crafting Panel:
_<Create 15 Lesser Mana Potions>_
|tip You may need to craft more than 15 to reach 155.
Reach 155 Alchemy |skill Alchemy,155
step
Enter the building |goto Orgrimmar/1 55.58,46.70 |walk
talk Yelmak##3347
|tip Inside the building.
learn Greater Healing Potion##7181 |goto 55.68,45.74
step
collect 20 Liferoot##3357
|tip You can farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 175
step
collect 30 Kingsblood##3356
|tip You can farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 185
step
Open Your Alchemy Crafting Panel:
_<Create 20 Greater Healing Potions>_
Reach 175 Alchemy |skill Alchemy,175
step
Enter the building |goto Orgrimmar/1 55.58,46.70 |walk
talk Yelmak##3347
|tip Inside the building.
learn Mana Potion##3452 |goto 55.68,45.74
step
Open Your Alchemy Crafting Panel:
_<Create 10 Mana Potions>_
Reach 185 Alchemy |skill Alchemy,185
step
collect 30 Goldthorn##3821
|tip You can farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 215
step
Enter the building |goto Orgrimmar/1 55.58,46.70 |walk
talk Yelmak##3347
|tip Inside the building.
learn Elixir of Agility##11449 |goto 55.68,45.74
step
Open Your Alchemy Crafting Panel:
_<Create 20 Elixir of Agility>_
Reach 205 Alchemy |skill Alchemy,205
step
collect 10 Wild Steelbloom##3355
|tip You can farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 215
step
Enter the building |goto Orgrimmar/1 55.58,46.70 |walk
talk Yelmak##3347
|tip Inside the building.
learn Elixir of Greater Defense##11450 |goto 55.68,45.74
step
Open Your Alchemy Crafting Panel:
_<Create 10 Elixir of Greater Defense>_
Reach 215 Alchemy |skill Alchemy,215
step
collect 25 Sungrass##8838
|tip You can farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 240
step
Enter the building |goto Orgrimmar/1 55.58,46.70 |walk
talk Yelmak##3347
|tip Inside the building.
learn Superior Healing Potion##11457 |goto 55.68,45.74
step
Open Your Alchemy Crafting Panel:
_<Create 25 Superior Healing Potion>_
Reach 240 Alchemy |skill Alchemy,240
step
collect 35 Khadgar's Whisker##3358
|tip You can farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 250
step
collect 10 Blindweed##8839
|tip You can farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 250
step
Enter the building |goto Orgrimmar/1 55.58,46.70 |walk
talk Yelmak##3347
|tip Inside the building.
learn Elixir of Greater Intellect##11465 |goto 55.68,45.74
step
Open Your Alchemy Crafting Panel:
_<Create 10 Elixir of Greater Intellect>_
Reach 250 Alchemy |skill Alchemy,250
step
collect 40 Gromsblood##8846
|tip You can farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 250
step
Enter the building |goto Orgrimmar/1 55.58,46.70 |walk
talk Yelmak##3347
|tip Inside the building.
learn Elixir of Detect Demon##11478 |goto 55.68,45.74
step
Open Your Alchemy Crafting Panel:
_<Create 20 Elixir of Detect Demon>_
Reach 270 Alchemy |skill Alchemy,270
step
collect 40 Sorrowmoss##13466
|tip You can farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 285
step
collect 15 Dreamfoil##13463
|tip You can farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 285
step
Enter the building |goto Orgrimmar/1 55.58,46.70 |walk
talk Yelmak##3347
|tip Inside the building.
learn Elixir of the Sages##17555 |goto 55.68,45.74
step
Open Your Alchemy Crafting Panel:
_<Create 15 Elixir of the Sages>_
Reach 285 Alchemy |skill Alchemy,285
step
collect 28 Golden Sansam##13464
|tip You can farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 295
step
collect 14 Mountain Silversage##13465
|tip You can farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 295
step
Enter the building |goto Orgrimmar/1 55.58,46.70 |walk
talk Yelmak##3347
|tip Inside the building.
learn Major Healing Potion##17556 |goto 55.68,45.74
step
Open Your Alchemy Crafting Panel:
_<Create 10 Major Healing Potion>_
Reach 295 Alchemy |skill Alchemy,295
step
collect 10 Icecap##13467
|tip You can farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 300
step
Enter the building |goto Orgrimmar/1 55.58,46.70 |walk
talk Yelmak##3347
|tip Inside the building.
learn Purification Potion##17572 |goto 55.68,45.74
step
Open Your Alchemy Crafting Panel:
_<Create 5 Purification Potion>_
Reach 300 Alchemy |skill Alchemy,300
step
_Congratulations!_
You Reached 300 Alchemy Skill.
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Alchemy\\Leveling Guides\\Outland Alchemy 1-75")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Alchemy\\Leveling Guides\\Northrend Alchemy 1-75")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Alchemy\\Leveling Guides\\Cataclysm Alchemy 1-75")
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Archaeology\\Leveling Guides\\Archaeology 1-600",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Archaeology skill from 1-600.",
condition_end=function() return skill('Archaeology') >= 600 end,
condition_suggested=function() return skill('Archaeology') < 600 and level >= 5 end,
},[[
step
Reach Level 5 |ding 5
step
Enter the building |goto Orgrimmar/1 49.92,75.63 < 15 |walk |only if not ZGV.InPhase('BFA')
talk Belloc Brightblade##47571 |only if not ZGV.InPhase('BFA')
talk Examiner Alerinda##122701 |only if ZGV.InPhase('BFA')
|tip Inside the building.
|tip She walks around this area. |only if ZGV.InPhase('BFA')
Train Apprentice Archaeology |skillmax Archaeology,75 |goto 49.06,70.55 |only if not ZGV.InPhase('BFA')
Train Apprentice Archaeology |skillmax Archaeology,75 |goto Dazar'alor/1 32.23,36.12 |only if ZGV.InPhase('BFA')
step
Search for dig sites on your world map
|tip You can earn points from any dig site in any zone.
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
Reach 50 Archaeology Skill |skill Archaeology,50
step
Enter the building |goto Orgrimmar/1 49.92,75.63 < 15 |walk |only if not ZGV.InPhase('BFA')
talk Belloc Brightblade##47571 |only if not ZGV.InPhase('BFA')
talk Examiner Alerinda##122701 |only if ZGV.InPhase('BFA')
|tip Inside the building.
|tip She walks around this area. |only if ZGV.InPhase('BFA')
Train Journeyman Archaeology |skillmax Archaeology,150 |goto 49.06,70.55 |only if not ZGV.InPhase('BFA')
Train Journeyman Archaeology |skillmax Archaeology,150 |goto Dazar'alor/1 32.23,36.12 |only if ZGV.InPhase('BFA')
step
Search for dig sites on your world map
|tip You can earn points from any dig site in any zone.
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
Reach 125 Archaeology Skill |skill Archaeology,125
step
Enter the building |goto Orgrimmar/1 49.92,75.63 < 15 |walk |only if not ZGV.InPhase('BFA')
talk Belloc Brightblade##47571 |only if not ZGV.InPhase('BFA')
talk Examiner Alerinda##122701 |only if ZGV.InPhase('BFA')
|tip Inside the building.
|tip She walks around this area. |only if ZGV.InPhase('BFA')
Train Expert Archaeology |skillmax Archaeology,225 |goto 49.06,70.55 |only if not ZGV.InPhase('BFA')
Train Expert Archaeology |skillmax Archaeology,225 |goto Dazar'alor/1 32.23,36.12 |only if ZGV.InPhase('BFA')
step
Search for dig sites on your world map
|tip You can earn points from any dig site in any zone.
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
Reach 200 Archaeology Skill |skill Archaeology,200
step
Enter the building |goto Orgrimmar/1 49.92,75.63 < 15 |walk |only if not ZGV.InPhase('BFA')
talk Belloc Brightblade##47571 |only if not ZGV.InPhase('BFA')
talk Examiner Alerinda##122701 |only if ZGV.InPhase('BFA')
|tip Inside the building.
|tip She walks around this area. |only if ZGV.InPhase('BFA')
Train Artisan Archaeology |skillmax Archaeology,300 |goto 49.06,70.55 |only if not ZGV.InPhase('BFA')
Train Artisan Archaeology |skillmax Archaeology,300 |goto Dazar'alor/1 32.23,36.12 |only if ZGV.InPhase('BFA')
step
Search for dig sites on your world map
|tip You can earn points from any dig site in any zone.
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
Reach 275 Archaeology Skill |skill Archaeology,275
step
Enter the building |goto Orgrimmar/1 49.92,75.63 < 15 |walk |only if not ZGV.InPhase('BFA')
talk Belloc Brightblade##47571 |only if not ZGV.InPhase('BFA')
talk Examiner Alerinda##122701 |only if ZGV.InPhase('BFA')
|tip Inside the building.
|tip She walks around this area. |only if ZGV.InPhase('BFA')
Train Master Archaeology |skillmax Archaeology,375 |goto 49.06,70.55 |only if not ZGV.InPhase('BFA')
Train Master Archaeology |skillmax Archaeology,375 |goto Dazar'alor/1 32.23,36.12 |only if ZGV.InPhase('BFA')
step
Search for dig sites on your world map
|tip You can earn points from any dig site in any zone.
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
Reach 350 Archaeology Skill |skill Archaeology,350
step
Enter the building |goto Orgrimmar/1 49.92,75.63 < 15 |walk |only if not ZGV.InPhase('BFA')
talk Belloc Brightblade##47571 |only if not ZGV.InPhase('BFA')
talk Examiner Alerinda##122701 |only if ZGV.InPhase('BFA')
|tip Inside the building.
|tip She walks around this area. |only if ZGV.InPhase('BFA')
Train Grand Master Archaeology |skillmax Archaeology,450 |goto 49.06,70.55 |only if not ZGV.InPhase('BFA')
Train Grand Master Archaeology |skillmax Archaeology,450 |goto Dazar'alor/1 32.23,36.12 |only if ZGV.InPhase('BFA')
step
Search for dig sites on your world map
|tip You can earn points from any dig site in any zone.
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
Reach 425 Archaeology Skill |skill Archaeology,425
step
Enter the building |goto Orgrimmar/1 49.92,75.63 < 15 |walk |only if not ZGV.InPhase('BFA')
talk Belloc Brightblade##47571 |only if not ZGV.InPhase('BFA')
talk Examiner Alerinda##122701 |only if ZGV.InPhase('BFA')
|tip Inside the building.
|tip She walks around this area. |only if ZGV.InPhase('BFA')
Train Illustrious Grand Master Archaeology |skillmax Archaeology,525 |goto 49.06,70.55 |only if not ZGV.InPhase('BFA')
Train Illustrious Grand Master Archaeology |skillmax Archaeology,525 |goto Dazar'alor/1 32.23,36.12 |only if ZGV.InPhase('BFA')
step
Search for dig sites on your world map
|tip You can earn points from any dig site in any zone.
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
Reach 525 Archaeology Skill |skill Archaeology,525
step
Enter the building |goto Orgrimmar/1 49.92,75.63 < 15 |walk |only if not ZGV.InPhase('BFA')
talk Belloc Brightblade##47571 |only if not ZGV.InPhase('BFA')
talk Examiner Alerinda##122701 |only if ZGV.InPhase('BFA')
|tip Inside the building.
|tip She walks around this area. |only if ZGV.InPhase('BFA')
Train Zen Master Archaeology |skillmax Archaeology,600 |goto 49.06,70.55 |only if not ZGV.InPhase('BFA')
Train Zen Master Archaeology |skillmax Archaeology,600 |goto Dazar'alor/1 32.23,36.12 |only if ZGV.InPhase('BFA')
step
Search for dig sites on your world map
|tip You can earn points from any dig site in any zone.
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
Reach 600 Archaeology Skill |skill Archaeology,600
step
_Congratulations!_
You Reached 600 Archaeology Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Blacksmithing\\Leveling Guides\\Blacksmithing 1-300",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Blacksmithing skill from 1-300.",
condition_end=function() return skill('Blacksmithing') >= 300 end,
condition_suggested=function() return skill('Blacksmithing') > 0 and skill('Blacksmithing') < 300 and level >= 5 end,
},[[
step
talk Okothos Ironrager##11177
|tip Inside the building.
Train Blacksmithing |skillmax Blacksmithing,300 |goto Orgrimmar/1 75.35,33.99
|tip You must be at least level 5.
step
talk Sumi##3356
buy 1 Blacksmith Hammer##5956 |goto 75.98,35.43
|only if itemcount() == 0
step
collect 130 Rough Stone##2835
|tip Farm them with Mining or purchase them from the Auction House.
|tip You can mine Rough Stone from Copper Veins.
|only if skill("Blacksmithing") < 25
step
Open Your Blacksmithing Crafting Panel:
_<Create 25 Rough Sharpening Stone>_
|tip You may need to craft a few more.
Reach 25 Blacksmithing |skill Blacksmithing,25 |goto 75.92,34.42
step
talk Okothos Ironrager##11177
|tip Inside the building.
learn Rough Grinding Stone##3320 |goto 75.35,33.99
step
Open Your Blacksmithing Crafting Panel:
_<Create 50 Rough Grinding Stone>_
|tip You may need to craft a few more.
|tip Save at least 20 for later.
Reach 65 Blacksmithing |skill Blacksmithing,65 |goto 75.92,34.42
step
collect 100 Coarse Stone##2836
|tip Farm them with Mining or purchase them from the Auction House.
|tip Coarse Stone can be mined from Tin Veins and Mithril and Truesilver Deposits.
|only if skill("Blacksmithing") < 90
step
talk Okothos Ironrager##11177
|tip Inside the building.
learn Coarse Sharpening Stone##2665 |goto 75.35,33.99
step
Open Your Blacksmithing Crafting Panel:
_<Create 15 Coarse Sharpening Stone>_
|tip You may need to craft a few more.
Reach 75 Blacksmithing |skill Blacksmithing,75 |goto 75.92,34.42
step
talk Okothos Ironrager##11177
|tip Inside the building.
learn Coarse Grinding Stone##3326 |goto 75.35,33.99
step
Open Your Blacksmithing Crafting Panel:
_<Create 20 Coarse Grinding Stone>_
|tip You may need to craft a few more.
|tip Save at least 20 for later.
Reach 90 Blacksmithing |skill Blacksmithing,90 |goto 75.92,34.42
step
collect 100 Copper Bar##2840
|tip Farm and Smelt them with Mining or purchase them from the Auction House.
|only if skill("Blacksmithing") < 100
step
collect 10 Silver Bar##2842
|tip Farm and Smelt them with Mining or purchase them from the Auction House.
|only if skill("Blacksmithing") < 105
step
collect 115 Heavy Stone##2838
|tip Farm them with Mining or purchase them from the Auction House.
|only if skill("Blacksmithing") < 140
step
collect 180 Bronze Bar##2841
|tip Farm and Smelt them with Mining or purchase them from the Auction House.
|only if skill("Blacksmithing") < 155
step
talk Okothos Ironrager##11177
|tip Inside the building.
learn Runed Copper Belt##2666 |goto 75.35,33.99
step
Open Your Blacksmithing Crafting Panel:
_<Create 10 Runed Copper Belt>_
Reach 100 Blacksmithing |skill Blacksmithing,100 |goto 75.92,34.42
step
talk Okothos Ironrager##11177
|tip Inside the building.
learn Silver Skeleton Key##19666 |goto 75.35,33.99
step
Open Your Blacksmithing Crafting Panel:
_<Create 10 Silver Skeleton Key>_
|tip You may need to make less, collected extra materials just in case.
Reach 105 Blacksmithing |skill Blacksmithing,105 |goto 75.92,34.42
step
talk Okothos Ironrager##11177
|tip Inside the building.
learn Rough Bronze Leggings##2668 |goto 75.35,33.99
step
Open Your Blacksmithing Crafting Panel:
_<Create 5 Rough Bronze Leggings>_
Reach 110 Blacksmithing |skill Blacksmithing,110 |goto 75.92,34.42
step
talk Okothos Ironrager##11177
|tip Inside the building.
learn Rough Bronze Shoulders##3328 |goto 75.35,33.99
step
Open Your Blacksmithing Crafting Panel:
_<Create 15 Rough Bronze Shoulders>_
Reach 125 Blacksmithing |skill Blacksmithing,125 |goto 75.92,34.42
step
talk Okothos Ironrager##11177
|tip Inside the building.
learn Heavy Grinding Stone##3337 |goto 75.35,33.99
step
Open Your Blacksmithing Crafting Panel:
_<Create 35 Heavy Grinding Stone>_
|tip You may need to craft a few more.
|tip Save at least 20 for later.
Reach 140 Blacksmithing |skill Blacksmithing,140 |goto 75.92,34.42
step
talk Okothos Ironrager##11177
|tip Inside the building.
learn Rough Bronze Shoulders##3328 |goto 75.35,33.99
step
Open Your Blacksmithing Crafting Panel:
_<Create 5 Rough Bronze Shoulders>_
Reach 145 Blacksmithing |skill Blacksmithing,145 |goto 75.92,34.42
step
talk Okothos Ironrager##11177
|tip Inside the building.
learn Patterned Bronze Bracers##2672 |goto 75.35,33.99
step
Open Your Blacksmithing Crafting Panel:
_<Create 10 Patterned Bronze Bracers>_
Reach 155 Blacksmithing |skill Blacksmithing,155 |goto 75.92,34.42
step
talk Tamar##3366
|tip Inside the building.
buy 35 Green Dye##2605 |goto 60.35,54.31
|only if skill("Blacksmithing") < 190
step
collect 230 Iron Bar##3575
|tip Farm and Smelt them with Mining or purchase them from the Auction House.
|only if skill("Blacksmithing") < 200
step
talk Okothos Ironrager##11177
|tip Inside the building.
learn Green Iron Leggings##3506 |goto 75.35,33.99
step
Open Your Blacksmithing Crafting Panel:
_<Create 10 Green Iron Leggings>_
Reach 165 Blacksmithing |skill Blacksmithing,165 |goto 75.92,34.42
step
talk Okothos Ironrager##11177
|tip Inside the building.
learn Green Iron Bracers##3501 |goto 75.35,33.99
step
Open Your Blacksmithing Crafting Panel:
_<Create 25 Green Iron Bracers>_
Reach 190 Blacksmithing |skill Blacksmithing,190 |goto 75.92,34.42
step
collect 50 Steel Bar##3859
|tip Farm and Smelt them with Mining or purchase them from the Auction House.
|only if skill("Blacksmithing") < 200
step
talk Okothos Ironrager##11177
|tip Inside the building.
learn Golden Scale Bracers##7223 |goto 75.35,33.99
step
Open Your Blacksmithing Crafting Panel:
_<Create 10 Golden Scale Bracers>_
Reach 200 Blacksmithing |skill Blacksmithing,200 |goto 75.92,34.42
step
collect 20 Solid Stone##7912
|tip Farm them with Mining or purchase them from the Auction House.
|tip Solid Stone can be Mined from Mithril Deposits.
|only if skill("Blacksmithing") < 200
step
collect 144 Mageweave Cloth##4338
|tip Farm them from humanoid mobs or purchase them from the Auction House.
|only if skill("Blacksmithing") < 210
step
collect 318 Mithril Bar##3860
|tip Farm and Smelt them with Mining or purchase them from the Auction House.
|only if skill("Blacksmithing") < 250
step
collect 35 Dense Stone##12365
|tip Farm them with Mining or purchase them from the Auction House.
|tip Solid Stone can be Mined from Small and Rich Thorium Veins.
|only if skill("Blacksmithing") < 260
step
talk Okothos Ironrager##11177
|tip Inside the building.
learn Solid Sharpening Stone##9918 |goto 75.35,33.99
step
Open Your Blacksmithing Crafting Panel:
_<Create 20 Solid Sharpening Stone>_
Reach 210 Blacksmithing |skill Blacksmithing,210 |goto 75.92,34.42
step
talk Okothos Ironrager##11177
|tip Inside the building.
learn Heavy Mithril Gauntlet##9928 |goto 75.35,33.99
step
Open Your Blacksmithing Crafting Panel:
_<Create 15 Heavy Mithril Gauntlet>_
Reach 225 Blacksmithing |skill Blacksmithing,225 |goto 75.92,34.42
step
talk Gharash##8176
buy 1 Plans: Mithril Scale Bracers##7995 |goto Swamp of Sorrows/0 47.22,52.10
|tip If it is not available, it will respawn in 30-40 minutes.
step
use the Plans: Mithril Scale Bracers##7995
learn Mithril Scale Bracers##9937
step
Open Your Blacksmithing Crafting Panel:
_<Create 11 Mithril Scale Bracers>_
Reach 236 Blacksmithing |skill Blacksmithing,236 |goto Orgrimmar/1 75.92,34.42
step
talk Okothos Ironrager##11177
|tip Inside the building.
learn Mithril Coif##9961 |goto 75.35,33.99
step
Open Your Blacksmithing Crafting Panel:
_<Create 14 Mithril Coif>_
Reach 250 Blacksmithing |skill Blacksmithing,250 |goto 75.92,34.42
step
talk Okothos Ironrager##11177
|tip Inside the building.
learn Dense Sharpening Stone##16641 |goto 75.35,33.99
step
Open Your Blacksmithing Crafting Panel:
_<Create 20 Dense Sharpening Stone>_
|tip You may need to create a few more.
Reach 260 Blacksmithing |skill Blacksmithing,260 |goto 75.92,34.42
step
collect 428 Thorium Bar##12359
|tip Farm and Smelt them with Mining or purchase them from the Auction House.
|only if skill("Blacksmithing") < 300
step
collect 10 Star Ruby##7910
|tip Farm them with Mining or purchase them from the Auction House.
|tip Star Rubies can by mined from Mithril and Truesilver deposits and Small and Rich Thorium Veins.
|only if skill("Blacksmithing") < 300
step
talk Okothos Ironrager##11177
|tip Inside the building.
learn Thorium Bracers##16644 |goto 75.35,33.99
step
Open Your Blacksmithing Crafting Panel:
_<Create 16 Thorium Bracers>_
Reach 276 Blacksmithing |skill Blacksmithing,276 |goto 75.92,34.42
step
talk Okothos Ironrager##11177
|tip Inside the building.
learn Imperial Plate Bracers##16649 |goto 75.35,33.99
step
Open Your Blacksmithing Crafting Panel:
_<Create 15 Imperial Plate Bracers>_
Reach 291 Blacksmithing |skill Blacksmithing,291 |goto 75.92,34.42
step
talk Okothos Ironrager##11177
|tip Inside the building.
learn Thorium Helm##16653 |goto 75.35,33.99
step
Open Your Blacksmithing Crafting Panel:
_<Create 10 Thorium Helm>_
Reach 300 Blacksmithing |skill Blacksmithing,300 |goto 75.92,34.42
step
_Congratulations!_
You Reached 300 Blacksmithing Skill.
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Blacksmithing\\Leveling Guides\\Outland Blacksmithing 1-75")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Blacksmithing\\Leveling Guides\\Northrend Blacksmithing 1-75")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Blacksmithing\\Leveling Guides\\Cataclysm Blacksmithing 1-75")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Clam Meat")
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Leveling Guides\\Cooking 1-300",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Cooking skill from 1-300.",
condition_end=function() return skill('Cooking') >= 300 end,
condition_suggested=function() return skill('Cooking') > 0 and skill('Cooking') < 300 and level >= 5 end,
},[[
step
talk Arugi##46709
|tip She walks around inside the building.
Train Cooking |skillmax Cooking,300 |goto Orgrimmar/1 56.16,61.69
|tip You must be at least level 5.
step
talk Suja##46708
buy 60 Simple Flour##30817 |goto 56.42,61.01
|only if skill("Cooking") < 40
step
talk Suja##46708
buy 60 Mild Spices##2678 |goto 56.42,61.01
|only if skill("Cooking") < 40
step
talk Arugi##46709
|tip She walks around inside the building.
learn Spice Bread##37836 |goto 56.16,61.69
step
Open Your Cooking Crafting Panel:
_<Create 60 Spice Bread>_
|tip The recipe will be green by level 35 cooking.
|tip You may not need to craft 60.
Reach 40 Cooking |skill Cooking,40 |goto 56.10,61.33
step
collect 40 Bear Meat##3173
|tip Farm them or purchase them from the Auction House.
|only if skill("Cooking") < 80
step
talk Andrew Hilbert##3556
|tip Inside the building.
buy 1 Recipe: Smoked Bear Meat##6892 |goto Silverpine Forest/0 43.22,40.67
|only if skill("Cooking") < 80
step
use the Recipe: Smoked Bear Meat##6892
learn Smoked Bear Meat##8607
step
Open Your Cooking Crafting Panel:
_<Create 40 Smoked Bear Meat>_
Reach 80 Cooking |skill Cooking,80 |goto 77.58,52.85
step
collect 30 Clam Meat##5503
|tip Farm them with the "Clam Meat" farming guide or purchase them from the Auction House.
|only if skill("Cooking") < 130
step
talk Suja##46708
buy 30 Refreshing Spring Water##159 |goto Orgrimmar/1 56.42,61.01
|only if skill("Cooking") < 130
step
talk Arugi##46709
|tip She walks around inside the building.
learn Boiled Clams##6499 |goto 56.16,61.69
step
Open Your Cooking Crafting Panel:
_<Create 30 Boiled Clams>_
|tip You may have to make a few more.
collect 30 Boiled Clams##5525 |goto 56.10,61.33
step
collect 60 Crawler Meat##2674
|tip Farm them with the "Crawler Meat" farming guide or purchase them from the Auction House.
|only if skill("Cooking") < 135
step
talk Arugi##46709
|tip She walks around inside the building.
learn Crab Cake##2544 |goto Orgrimmar/1 56.16,61.69
step
Open Your Cooking Crafting Panel:
_<Create 60 Crab Cake>_
|tip You may have to make a few more.
Reach 135 Cooking |skill Cooking,135 |goto 56.10,61.33
step
talk Zidormi##141649
Ask her _"Can you show me what Arathi Highlands was like before the war broke out?"_
Travel to the Past |complete ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09
|only if skill("Cooking") < 175
step
talk Keena##2821
|tip Inside the building.
buy 1 Recipe: Curiously Tasty Omelet##3682 |goto 69.22,33.52
|only if skill("Cooking") < 175
step
use the Recipe: Curiously Tasty Omelet##3682
learn Curiously Tasty Omelet##3376
step
talk Keena##2821
|tip Inside the building.
buy 1 Recipe: Roast Raptor##12228 |goto 69.22,33.52
|tip Save this for later.
|only if skill("Cooking") < 225
stickystart "Collect_Raptor_Flesh"
step
collect 50 Raptor Egg##3685
|tip Farm them with the "Raptor Egg" farming guide or purchase them from the Auction House.
|only if skill("Cooking") < 175
step
label "Collect_Raptor_Flesh"
collect 50 Raptor Flesh##12184 |goto Arathi Highlands/0 46,68
|tip Farm them with the "Raptor Flesh" farming guide or purchase them from the Auction House.
|only if skill("Cooking") < 225
step
Open Your Cooking Crafting Panel:
_<Create 50 Curiously Tasty Omelet>_
Reach 175 Cooking |skill Cooking,175 |goto Orgrimmar/1 56.10,61.33
step
use the Recipe: Roast Raptor##12228
learn Roast Raptor##15855
step
Open Your Cooking Crafting Panel:
_<Create 50 Roast Raptor>_
Reach 225 Cooking |skill Cooking,225 |goto 56.10,61.33
step
talk Himmik##11187
|tip Inside the building.
buy 1 Recipe: Monster Omelet##16110 |goto Winterspring/0 59.82,51.57
|only if skill("Cooking") < 250
step
use the Recipe: Monster Omelet##16110
learn Monster Omelet##15933
step
collect 25 Giant Egg##12207
|tip Farm them with the "Giant Egg" farming guide or purchase them from the Auction House.
|only if skill("Cooking") < 250
step
Open Your Cooking Crafting Panel:
_<Create 25 Monster Omelet>_
Reach 250 Cooking |skill Cooking,250 |goto Orgrimmar/1 56.10,61.33
step
collect 60 Bear Flank##35562
|tip Farm them with the "Bear Flank" farming guide or purchase them from the Auction House.
|only if skill("Cooking") < 285
step
talk Arugi##46709
|tip She walks around inside the building.
learn Juicy Bear Burger##46688 |goto Orgrimmar/1 56.16,61.69
step
Open Your Cooking Crafting Panel:
_<Create 35 Juicy Bear Burger>_
|tip You may need to make a few more.
Reach 285 Cooking |skill Cooking,285 |goto Orgrimmar/1 56.10,61.33
step
talk Sheendra Tallgrass##8145
buy Recipe: Baked Salmon##13949 |goto Feralas/0 74.49,42.72
|only if skill("Cooking") < 300
step
use the Recipe: Baked Salmon##13949
learn Baked Salmon##18247
step
talk Zidormi##128607
|tip She is at the top of the ramp leading from Un'Goro Crater to Silithus.
Ask her _"Can you show me what Silithus was like before the Wound in the World?"_
Travel to the Past |complete ZGV.InPhase('Old Silithus') |goto Silithus/0 78.93,21.97
|only if skill("Cooking") < 300
step
talk Calandrath##15174
|tip Inside the building.
accept Desert Recipe##8307 |goto 55.52,36.77
step
click Sandy Cookbook##180503
turnin Desert Recipe##8307 |goto 43.56,42.04
accept Sharing the Knowledge##8313 |goto 43.56,42.04
step
talk Calandrath##15174
turnin Sharing the Knowledge##8313 |goto 55.52,36.77
step
learn Smoked Desert Dumplings##24801 |goto 55.52,36.77
step
collect 15 Sandworm Meat##20424
|tip Farm them with the "Sandworm Meat" farming guide or purchase them from the Auction House.
|only if skill("Cooking") < 300
step
Open Your Cooking Crafting Panel:
_<Create 15 Smoked Desert Dumplings>_
Reach 300 Cooking |skill Cooking,300 |goto Orgrimmar/1 56.10,61.33
step
_Congratulations!_
You Reached 300 Cooking Skill.
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Leveling Guides\\Outland Cooking 1-75")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Leveling Guides\\Northrend Cooking 1-75")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Leveling Guides\\Cataclysm Cooking 1-75")
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Enchanting\\Leveling Guides\\Enchanting 1-300",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Enchanting skill from 1-300.",
condition_end=function() return skill('Enchanting') >= 300 end,
condition_suggested=function() return skill('Enchanting') > 0 and skill('Enchanting') < 300 and level >= 5 end,
},[[
step
talk Godan##3345
|tip Inside the building.
Train Enchanting |skillmax Enchanting,300 |goto Orgrimmar/1 53.49,49.55
|tip You must be at least level 5.
step
talk Kithas##3346
|tip Inside the building.
buy 1 Copper Rod##6217 |goto 53.35,48.93
|only if skill("Enchanting") < 2
step
talk Kithas##3346
|tip Inside the building.
buy 1 Strange Dust##10940 |goto 53.35,48.93
|tip These are in limited supply from this vendor, so it may not be available.
|tip You can also purchase them from the Auction House.
|only if skill("Enchanting") < 2
step
talk Kithas##3346
|tip Inside the building.
buy 1 Lesser Magic Essence##10938 |goto 53.35,48.93
|tip These are in limited supply from this vendor, so it may not be available.
|tip You can also purchase them from the Auction House.
|only if skill("Enchanting") < 2
step
Open Your Enchanting Crafting Panel:
_<Create 1 Runed Copper Rod>_
Reach 2 Enchanting |skill Enchanting,2
step
talk Kithas##3346
|tip Inside the building.
buy 360 Enchanting Vellum##38682 |goto 53.35,48.93
|only if skill("Enchanting") < 90
step
collect 105 Strange Dust##10940
|tip You can get these by Disenchanting item level 5-16 Uncommon (green) armor and weapons.
|tip You can also purchase them from the Auction House.
|only if skill("Enchanting") < 90
step
Open Your Enchanting Crafting Panel:
_<Create 105 Enchant Bracer: Minor Health>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
|tip The recipe turns yellow at 70, so additional materials may be required.
Reach 90 Enchanting |skill Enchanting,90
step
talk Godan##3345
|tip Inside the building.
learn Enchant Bracers: Minor Stamina##7457 |goto 53.49,49.55
step
collect 30 Strange Dust##10940
|tip You can get these by Disenchanting item level 5-16 Uncommon (green) armor and weapons.
|tip You can also purchase them from the Auction House.
|only if skill("Enchanting") < 100
step
Open Your Enchanting Crafting Panel:
_<Create 10 Enchant Bracers: Minor Stamina>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach 100 Enchanting |skill Enchanting,100
step
talk Kithas##3346
|tip Inside the building.
buy 10 Simple Wood##4470 |goto 53.35,48.93
|only if skill("Enchanting") < 110
step
collect 10 Greater Magic Essence##10939
|tip You can get these by Disenchanting item level 9-16 Uncommon (green) armor and weapons.
|tip They are also created by combining 3 Lesser Magic Essence.
|tip You can also purchase them from the Auction House.
|only if skill("Enchanting") < 110
step
talk Godan##3345
|tip Inside the building.
learn Greater Magic Wand##14807 |goto 53.49,49.55
|only if skill("Enchanting") < 110
step
Open Your Enchanting Crafting Panel:
_<Create 10 Greater Magic Wands>_
Reach 110 Enchanting |skill Enchanting,110
step
talk Kulwia##12043
buy Formula: Enchant Cloak - Minor Agility##11039 |goto Stonetalon Mountains/0 48.69,61.52
|only if skill("Enchanting") < 135
step
use the Formula: Enchant Cloak - Minor Agility##11039
learn Enchant Cloak: Minor Agility##13419
|only if skill("Enchanting") < 135
step
talk Kulwia##12043
buy Formula: Enchant Bracer - Lesser Strength##11101 |goto 48.69,61.52
|only if skill("Enchanting") < 220
step
collect 25 Lesser Eternal Essence##16202
|tip You can get these by Disenchanting item level 14-29 armor and weapons.
|tip You can also purchase them from the Auction House.
|only if skill("Enchanting") < 135
step
Open Your Enchanting Crafting Panel:
_<Create 25 Enchant Cloak: Minor Agility>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach 135 Enchanting |skill Enchanting,135
step
collect 180 Light Illusion Dust##16204
|tip You can get these by Disenchanting item level 19-29 Uncommon (green) armor and weapons.
|tip You can also purchase them from the Auction House.
|only if skill("Enchanting") < 220
step
Open Your Enchanting Crafting Panel:
_<Create 20 Enchant Bracers: Lesser Stamina>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach 155 Enchanting |skill Enchanting,155
step
use the Formula: Enchant Bracer - Lesser Strength##11101
learn Enchant Bracer: Lesser Strength##13536
step
Open Your Enchanting Crafting Panel:
_<Create 20 Enchant Bracers: Lesser Strength>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach 180 Enchanting |skill Enchanting,180
step
talk Godan##3345
|tip Inside the building.
learn Enchant Bracers: Strength##13661 |goto Orgrimmar/1 53.49,49.55
step
Open Your Enchanting Crafting Panel:
_<Create 50 Enchant Bracers: Strength>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach 220 Enchanting |skill Enchanting,220
step
collect 220 Rich Illusion Dust##156930
|tip You can get these by Disenchanting item level 19-35 Uncommon (green) armor and weapons.
|tip You can also purchase them from the Auction House.
|only if skill("Enchanting") < 245
step
talk Godan##3345
|tip Inside the building.
learn Enchant Cloak: Greater Defense##13646 |goto 53.49,49.55
step
Open Your Enchanting Crafting Panel:
_<Create 5 Enchant Cloak: Greater Defense>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach 225 Enchanting |skill Enchanting,225
step
talk Godan##3345
|tip Inside the building.
learn Enchant Boots: Stamina##13836 |goto 53.49,49.55
step
Open Your Enchanting Crafting Panel:
_<Create 10 Enchant Boots: Stamina>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach 235 Enchanting |skill Enchanting,235
step
talk Godan##3345
|tip Inside the building.
learn Enchant Chest: Superior Health##13858 |goto 53.49,49.55
step
Open Your Enchanting Crafting Panel:
_<Create 10 Enchant Chest: Superior Health>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach 245 Enchanting |skill Enchanting,245
step
collect 45 Greater Eternal Essence##16203
|tip You can get these by Disenchanting item level 16-35 Uncommon (green) armor and weapons.
|tip Combine 3 Lesser Eternal Essence to create a Greater Eternal Essence.
|tip You can also purchase them from the Auction House.
|only if skill("Enchanting") < 265
step
talk Godan##3345
|tip Inside the building.
learn Enchant Boots: Agility##13935 |goto 53.49,49.55
step
Open Your Enchanting Crafting Panel:
_<Create 10 Enchant Boots: Agility>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach 255 Enchanting |skill Enchanting,255
step
talk Godan##3345
|tip Inside the building.
learn Enchant Bracer: Greater Strength##13935 |goto 53.49,49.55
step
Open Your Enchanting Crafting Panel:
_<Create 5 Enchant Bracer: Greater Strength>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach 260 Enchanting |skill Enchanting,260
step
talk Godan##3345
|tip Inside the building.
learn Enchant Bracer: Greater Intellect##20008 |goto 53.49,49.55
step
Open Your Enchanting Crafting Panel:
_<Create 5 Enchant Bracer: Greater Intellect>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach 265 Enchanting |skill Enchanting,265
step
talk Daniel Bartlett##4561
buy Formula: Enchant Shield - Greater Stamina##16217 |goto Undercity/0 64.04,37.41
|only if skill("Enchanting") < 300
step
use the Formula: Enchant Shield - Greater Stamina##16217
learn Enchant Shield: Greater Stamina##20017
step
Open Your Enchanting Crafting Panel:
_<Create 40 Enchant Shield: Greater Stamina>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach 300 Enchanting |skill Enchanting,300
step
_Congratulations!_
You Reached 300 Enchanting Skill.
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Enchanting\\Leveling Guides\\Outland Enchanting 1-75")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Enchanting\\Leveling Guides\\Northrend Enchanting 1-75")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Enchanting\\Leveling Guides\\Cataclysm Enchanting 1-75")
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Engineering\\Leveling Guides\\Engineering 1-300",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Engineering skill from 1-300.",
condition_end=function() return skill('Engineering') >= 300 end,
condition_suggested=function() return skill('Engineering') > 0 and skill('Engineering') < 300 and level >= 5 end,
},[[
step
talk Roxxik##11017
|tip Inside the building.
Train Engineering |skillmax Engineering,300 |goto Orgrimmar/1 56.84,56.56
|tip You must be at least level 5.
step
talk Punra##46359
buy 1 Blacksmith Hammer##5956 |goto 44.96,76.79
|only if itemcount(5956) == 0 and skill("Engineering") < 300
step
collect 60 Rough Stone##2835
|tip Farm them with Mining or purchase them from the Auction House.
|tip Rough Stone can be mined from Copper Veins.
|only if skill("Engineering") < 30
step
collect 36 Copper Bar##2840
|tip Farm and Smelt them with Mining or purchase them from the Auction House.
|only if skill("Engineering") < 50
step
collect 20 Coarse Stone##2836
|tip Farm them with Mining or purchase them from the Auction House.
|tip Coarse Stone can be mined from Tin Veins and Mithril and Truesilver Deposits.
|only if skill("Engineering") < 90
step
collect 20 Linen Cloth##2589
|tip Farm them from humanoid mobs or purchase them from the Auction House.
|only if skill("Engineering") < 100
step
Open Your Engineering Crafting Panel:
_<Create 60 Rough Blasting Powder>_
|tip Craft all 60 of them, you will need them later.
Reach 30 Engineering |skill Engineering,30
step
talk Roxxik##11017
|tip Inside the building.
learn Handful of Copper Bolts##3922 |goto 56.84,56.56
step
Open Your Engineering Crafting Panel:
_<Create 30 Handful of Copper Bolts>_
|tip Make all of them, you will need them later.
Reach 50 Engineering |skill Engineering,50 |goto 44.94,77.70
step
talk Roxxik##11017
|tip Inside the building.
learn Arclight Spanner##7430 |goto 56.84,56.56
step
talk Roxxik##11017
|tip Inside the building.
learn Rough Copper Bomb##3923 |goto 56.84,56.56
step
Open Your Engineering Crafting Panel:
_<Create 10 Rough Copper Bomb>_
Reach 60 Engineering |skill Engineering,60 |goto 44.94,77.70
step
Open Your Engineering Crafting Panel:
_<Create 1 Arclight Spanner>_
Reach 61 Engineering |skill Engineering,61 |goto 44.94,77.70
step
Open Your Engineering Crafting Panel:
_<Create 20 Rough Copper Bomb>_
|tip You may need to craft a few more.
Reach 75 Engineering |skill Engineering,75 |goto 44.94,77.70
step
talk Roxxik##11017
|tip Inside the building.
learn Coarse Blasting Powder##3929 |goto 56.84,56.56
step
Open Your Engineering Crafting Panel:
_<Create 20 Coarse Blasting Powder>_
|tip Craft them all, you will need them later.
Reach 90 Engineering |skill Engineering,90 |goto 44.94,77.70
step
talk Roxxik##11017
|tip Inside the building.
learn Coarse Dynamite##3931 |goto 56.84,56.56
step
Open Your Engineering Crafting Panel:
_<Create 20 Coarse Dynamite>_
Reach 100 Engineering |skill Engineering,100 |goto 44.94,77.70
step
collect 107 Bronze Bar##2841
|tip Farm and Smelt them with Mining or purchase them from the Auction House.
|only if skill("Engineering") < 160
step
collect 2 Tigerseye##818
|tip Farm them with Mining or purchase them from the Auction House.
|tip Tigerseye can be mined from Copper Veins.
|only if skill("Engineering") < 130
step
collect 30 Heavy Stone##2838
|tip Farm them with Mining or purchase them from the Auction House.
|tip Heavy Stone can be mined from Iron Deposits.
|only if skill("Engineering") < 150
step
collect 60 Wool Cloth##2592
|tip Farm them from humanoid mobs or purchase them from the Auction House.
|only if skill("Engineering") < 160
step
collect 15 Medium Leather##2319
|tip Farm them with Skinning or purchase them from the Auction House.
|only if skill("Engineering") < 160
step
talk Roxxik##11017
|tip Inside the building.
learn Clockwork Box##8334 |goto 56.84,56.56
step
Open Your Engineering Crafting Panel:
_<Create 13 Clockwork Box>_
|tip Save these for the next step.
Reach 113 Engineering |skill Engineering,113 |goto 44.94,77.70
step
use the Clockwork Box##6712
Reach 125 Engineering |skill Engineering,125
step
talk Roxxik##11017
|tip Inside the building.
learn Flying Tiger Goggles##3934 |goto 56.84,56.56
step
Open Your Engineering Crafting Panel:
_<Create 1 Flying Tiger Goggles>_
Reach 130 Engineering |skill Engineering,130 |goto 44.94,77.70
step
talk Roxxik##11017
|tip Inside the building.
learn Heavy Blasting Powder##3945 |goto 56.84,56.56
step
talk Roxxik##11017
|tip Inside the building.
learn Whirring Bronze Gizmo##3942 |goto 56.84,56.56
step
Open Your Engineering Crafting Panel:
_<Create 30 Heavy Blasting Powder>_
|tip Save these for later.
collect 30 Heavy Blasting Powder##4377 |goto 44.94,77.70
|only if skill("Engineering") < 150
step
Open Your Engineering Crafting Panel:
_<Create 15 Whirring Bronze Gizmo>_
|tip Save these for later.
Reach 150 Engineering |skill Engineering,150 |goto 44.94,77.70
step
talk Roxxik##11017
|tip Inside the building.
learn Bronze Framework##3953 |goto 56.84,56.56
step
Open Your Engineering Crafting Panel:
_<Create 15 Bronze Framework>_
Reach 160 Engineering |skill Engineering,160 |goto 44.94,77.70
step
collect 4 Steel Bar##3859
|tip Farm and Smelt them with Mining or purchase them from the Auction House.
|only if skill("Engineering") < 300
step
collect 120 Solid Stone##7912
|tip Farm them with Mining or purchase them from the Auction House.
|tip Solid Stone can be mined from Mithril Deposits.
|only if skill("Engineering") < 195
step
collect 161 Mithril Bar##3860
|tip Farm and Smelt them with Mining or purchase them from the Auction House.
|only if skill("Engineering") < 240
step
collect 20 Mageweave Cloth##4338
|tip Farm them from humanoid mobs or purchase them from the Auction House.
|only if skill("Engineering") < 216
step
talk Roxxik##11017
|tip Inside the building.
learn Explosive Sheep##3955 |goto 56.84,56.56
step
Open Your Engineering Crafting Panel:
_<Create 15 Explosive Sheep>_
Reach 175 Engineering |skill Engineering,175 |goto 44.94,77.70
step
talk Roxxik##11017
|tip Inside the building.
learn Gyromatic Micro-Adjustor##12590 |goto 56.84,56.56
step
Open Your Engineering Crafting Panel:
_<Create 1 Gyromatic Micro-Adjustor>_
Reach 176 Engineering |skill Engineering,176 |goto 44.94,77.70
step
talk Roxxik##11017
|tip Inside the building.
learn Solid Blasting Powder##12585 |goto 56.84,56.56
step
Open Your Engineering Crafting Panel:
_<Create 60 Solid Blasting Powder>_
|tip Make all 60 of these, you will need them later.
Reach 195 Engineering |skill Engineering,195 |goto 44.94,77.70
step
talk Roxxik##11017
|tip Inside the building.
learn Mithril Tube##12589 |goto 56.84,56.56
step
Open Your Engineering Crafting Panel:
_<Create 7 Mithril Tube>_
|tip Stop making these at 200.
|tip Make a few Iron Grenades if you did not reach 200.
Reach 200 Engineering |skill Engineering,200 |goto 44.94,77.70
step
talk Roxxik##11017
|tip Inside the building.
learn Unstable Trigger##12591 |goto 56.84,56.56
step
Open Your Engineering Crafting Panel:
_<Create 20 Unstable Trigger>_
|tip Make all of these, you will need them later.
Reach 216 Engineering |skill Engineering,216 |goto 44.94,77.70
step
talk Roxxik##11017
|tip Inside the building.
learn Mithril Casing##12599 |goto 56.84,56.56
step
Open Your Engineering Crafting Panel:
_<Create 40 Mithril Casing>_
|tip Make all of these, you will need them later.
Reach 238 Engineering |skill Engineering,238 |goto 44.94,77.70
step
collect 60 Dense Stone##12365
|tip Farm them with Mining or purchase them from the Auction House.
|tip Dense Stone can be mined from Thorium Veins.
|only if skill("Engineering") < 260
step
collect 195 Thorium Bar##12359
|tip Farm and Smelt them with Mining or purchase them from the Auction House.
|only if skill("Engineering") < 300
step
collect 25 Runecloth##14047
|tip Farm them from humanoid mobs or purchase them from the Auction House.
|only if skill("Engineering") < 285
step
talk Roxxik##11017
|tip Inside the building.
learn Hi-Explosive Bomb##12619 |goto 56.84,56.56
step
Open Your Engineering Crafting Panel:
_<Create 20 Hi-Explosive Bomb>_
Reach 250 Engineering |skill Engineering,250 |goto 44.94,77.70
step
talk Roxxik##11017
|tip Inside the building.
learn Dense Blasting Powder##19788 |goto 56.84,56.56
step
Open Your Engineering Crafting Panel:
_<Create 20 Dense Blasting Powder>_
|tip You may need to craft a few more.
Reach 260 Engineering |skill Engineering,260 |goto 44.94,77.70
step
talk Roxxik##11017
|tip Inside the building.
learn Thorium Widget##19791 |goto 56.84,56.56
step
Open Your Engineering Crafting Panel:
_<Create 25 Thorium Widget>_
|tip You may need to craft a few more.
Reach 285 Engineering |skill Engineering,285 |goto 44.94,77.70
step
talk Roxxik##11017
|tip Inside the building.
learn Thorium Tube##19795 |goto 56.84,56.56
step
Open Your Engineering Crafting Panel:
_<Create 15 Thorium Tube>_
|tip You may need to craft a few more.
Reach 300 Engineering |skill Engineering,300 |goto 44.94,77.70
step
_Congratulations!_
You Reached 300 Engineering Skill.
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Engineering\\Leveling Guides\\Outland Engineering 1-75")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Engineering\\Leveling Guides\\Northrend Engineering 1-75")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Engineering\\Leveling Guides\\Cataclysm Engineering 1-75")
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Leveling Guides\\Fishing 1-300",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Fishing skill from 1-300.",
condition_end=function() return skill('Fishing') >= 300 end,
condition_suggested=function() return skill('Fishing') > 0 and skill('Fishing') < 300 and level >= 5 end,
},[[
step
talk Lumak##3332
Train Fishing |skillmax Fishing,300 |goto Orgrimmar/1 66.47,41.94
step
talk Shankys##3333
buy Fishing Pole##6256 |goto 66.75,41.85
|only if skill("Fishing") < 2
step
Fish in the open water
|tip You can fish anywhere and gain skill.
Reach 300 Fishing |skill Fishing,300 |goto 66.50,42.17
step
_Congratulations!_
You Reached 300 Fishing Skill.
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Fishing\\Leveling Guides\\Outland Fishing 1-75")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Fishing\\Leveling Guides\\Northrend Fishing 1-75")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Fishing\\Leveling Guides\\Cataclysm Fishing 1-75")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Herbalism\\Farming Guides\\Earthroot")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Herbalism\\Farming Guides\\Peacebloom")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Herbalism\\Farming Guides\\Silverleaf")
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Leveling Guides\\Herbalism 1-300",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Herbalism skill from 1-300.",
condition_end=function() return skill('Herbalism') >= 300 end,
condition_suggested=function() return skill('Herbalism') > 0 and skill('Herbalism') < 300 and level >= 5 end,
},[[
step
talk Muraga##46741
|tip She walks around inside the building.
Train Herbalism |skillmax Herbalism,300 |goto Orgrimmar/1 55.00,49.98
|tip You must be at least level 5.
step
map Felwood/0
path follow smart; loop on; ants curved; dist 30
path	48.25,74.18	45.57,71.52	45.19,67.93	44.99,64.81	43.75,63.75
path	42.60,61.94	42.10,60.44	42.52,58.39	42.19,55.80	42.12,53.77
path	42.52,51.99	42.46,49.04	43.22,46.66	42.28,45.26	43.25,43.10
path	44.86,43.11	46.09,41.05	45.72,36.88	46.03,33.95	47.65,33.39
path	51.14,32.99	51.89,29.81	53.84,27.92	55.31,24.24	55.39,22.27
path	56.09,21.01	57.54,18.62	56.84,16.17	55.09,15.09	53.16,14.49
path	50.54,15.11	49.43,15.94	47.64,18.21	46.30,21.16	45.98,22.93
path	43.76,23.67	42.49,24.58	40.74,26.31	41.42,27.63	41.25,30.12
path	40.28,31.55	39.63,32.74	40.28,34.49	39.88,36.76	39.02,41.56
path	38.95,44.99	40.65,46.99	39.91,49.88	39.07,53.19	38.83,55.66
path	39.72,58.29	41.23,59.18	41.60,60.63	42.10,62.62	41.71,64.52
path	40.58,65.26	40.40,68.00	39.31,70.23	39.26,71.58	41.53,72.75
path	41.89,74.07	40.92,76.49	41.72,78.38	43.01,80.29	44.69,81.19
path	45.84,83.32	47.74,82.92	49.87,80.73
Collect herbs along the path
|tip Turn on your "Find Herbs" ability to see the nodes.
|tip They appear on your minimap as yellow dots.
|tip You will collect leaves from gathering until you reach around 250 skill level.
Reach 300 Herbalism Skill |skill Herbalism,300
step
_Congratulations!_
You Reached 300 Herbalism Skill.
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Herbalism\\Leveling Guides\\Outland Herbalism 1-75")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Herbalism\\Leveling Guides\\Northrend Herbalism 1-75")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Herbalism\\Leveling Guides\\Cataclysm Herbalism 1-75")
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Inscription\\Leveling Guides\\Inscription 1-300",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Inscription skill from 1-300.",
condition_end=function() return skill('Inscription') >= 300 end,
condition_suggested=function() return skill('Inscription') > 0 and skill('Inscription') < 300 and level >= 5 end,
},[[
step
talk Nerog##46716
|tip Inside the building.
Train Inscription |skillmax Inscription,300 |goto Orgrimmar/1 55.06,55.89
|tip You must be at least level 5.
step
talk Moraka##46718
|tip Inside the building.
buy 1 Virtuoso Inking Set##39505 |goto 55.36,55.44
|only if skill("Inscription") < 2
step
talk Moraka##46718
|tip Inside the building.
buy 300 Light Parchment##39354 |goto 55.36,55.44
|only if skill("Inscription") < 45
step
collect 88 Alabaster Pigment##39151
|tip Farm and Mill them with Herbalism or purchase them from the Auction House.
|tip Alabaster Pigment can be Milled from Earthroot, Peacebloom, and Silverleaf.
|only if skill("Inscription") < 45
step
Open Your Inscription Crafting Panel:
_<Create 44 Moonglow Ink>_
Reach 45 Inscription |skill Inscription,45
step
talk Nerog##46716
|tip Inside the building.
learn Scroll of Recall##48248 |goto 55.06,55.89
step
Open Your Inscription Crafting Panel:
_<Create 30 Scroll of Recall>_
Reach 75 Inscription |skill Inscription,75
step
talk Nerog##46716
|tip Inside the building.
learn Midnight Ink##53462 |goto 55.06,55.89
step
collect 74 Dusky Pigment##39334
|tip Farm and Mill them with Herbalism or purchase them from the Auction House.
|tip Dusky Pigment can be Milled from Briarthorn, Bruiseweed, Swiftthistle, Mageroyal, and Stranglekelp.
|only if skill("Inscription") < 80
step
Open Your Inscription Crafting Panel:
_<Create 37 Midnight Ink>_
|tip Make all of these, but stop making them at skill 80 until you hit skill 85.
Reach 80 Inscription |skill Inscription,80
step
talk Nerog##46716
|tip Inside the building.
learn Vanishing Powder##92026 |goto 55.06,55.89
step
Open Your Inscription Crafting Panel:
_<Create 25 Vanishing Powder>_
Reach 100 Inscription |skill Inscription,100
step
talk Nerog##46716
|tip Inside the building.
learn Lion's Ink##57704 |goto 55.06,55.89
step
collect 126 Golden Pigment##39338
|tip Farm and Mill them with Herbalism or purchase them from the Auction House.
|tip Golden Pigment can be Milled from Kingsblood, Wild Steelbloom, Grave Moss, and Liferoot.
|tip Keep any Burnt Pigment you gather if you are Milling yourself.
|only if skill("Inscription") < 105
step
Open Your Inscription Crafting Panel:
_<Create 63 Lion's Ink>_
|tip Make all of these, you'll need them later.
Reach 105 Inscription |skill Inscription,105
step
talk Nerog##46716
|tip Inside the building.
Train Research: Moonglow Ink |learn Research: Moonglow Ink##165564 |goto 55.06,55.89
step
Open Your Inscription Crafting Panel:
_<Create 4 Research: Moonglow Ink>_
Reach 109 Inscription |skill Inscription,109
step
talk Nerog##46716
|tip Inside the building.
learn Research: Midnight Ink##165304 |goto 55.06,55.89
step
Open Your Inscription Crafting Panel:
_<Create 3 Research: Midnight Ink>_
Reach 112 Inscription |skill Inscription,112
step
talk Nerog##46716
|tip Inside the building.
learn Research: Lion's Ink##165456 |goto 55.06,55.89
step
Open Your Inscription Crafting Panel:
_<Create 4 Research: Lion's Ink>_
Reach 116 Inscription |skill Inscription,116
step
Open Your Inscription Crafting Panel:
_<Create 34 Newly Discovered Lion's Ink Glyphs>_
|tip Create 34 of whatever glyph was discovered during Research: Lion's Ink from the previous step.
|tip You can also turn any Burnt Pigment you have into Dawnstar Ink and make Strange Tarot cards.
Reach 150 Inscription |skill Inscription,150
step
talk Nerog##46716
|tip Inside the building.
learn Jadefire Ink##57707 |goto 55.06,55.89
step
collect 80 Emerald Pigment##39339
|tip Farm and Mill them with Herbalism or purchase them from the Auction House.
|tip Emerald Pigment can be Milled from Fadeleaf, Dragon's Teeth, Goldthorn, Khadgar's Whisker.
|only if skill("Inscription") < 155
step
Open Your Inscription Crafting Panel:
_<Create 40 Jadefire Ink>_
|tip Make all of these, you'll need them later.
Reach 155 Inscription |skill Inscription,155
step
talk Nerog##46716
|tip Inside the building.
learn Scroll of Stamina III##50614 |goto 55.06,55.89
step
Open Your Inscription Crafting Panel:
_<Create 5 Scroll of Stamina III>_
Reach 160 Inscription |skill Inscription,160
step
talk Nerog##46716
|tip Inside the building.
learn Scroll of Versatility III##50606 |goto 55.06,55.89
step
Open Your Inscription Crafting Panel:
_<Create 5 Scroll of Versatility III>_
Reach 165 Inscription |skill Inscription,165
step
talk Nerog##46716
|tip Inside the building.
learn Scroll of Intellect III##50599 |goto 55.06,55.89
step
Open Your Inscription Crafting Panel:
_<Create 5 Scroll of Intellect III>_
Reach 170 Inscription |skill Inscription,170
step
talk Nerog##46716
|tip Inside the building.
learn Scroll of Strength III##58486 |goto 55.06,55.89
step
Open Your Inscription Crafting Panel:
_<Create 5 Scroll of Strength III>_
Reach 175 Inscription |skill Inscription,175
step
talk Nerog##46716
|tip Inside the building.
learn Scroll of Agility III##58476 |goto 55.06,55.89
step
Open Your Inscription Crafting Panel:
_<Create 5 Scroll of Agility III>_
Reach 180 Inscription |skill Inscription,180
step
talk Nerog##46716
|tip Inside the building.
learn Research: Jadefire Ink##165460 |goto 55.06,55.89
step
Open Your Inscription Crafting Panel:
_<Create 5 Research: Jadefire Ink>_
Reach 185 Inscription |skill Inscription,185
step
talk Nerog##46716
|tip Inside the building.
learn Arcane Tarot##59487 |goto 55.06,55.89
step
talk Nerog##46716
|tip Inside the building.
learn Royal Ink##57708 |goto 55.06,55.89
step
Open Your Inscription Crafting Panel:
_<Create 15 Newly Discovered Jadefire Ink Glyphs>_
|tip Create 15 of whatever glyph was discovered during Research: Jadefire Ink from the previous step.
|tip You can also turn any Indigo Pigment you have into Royal Ink and make Arcane Tarot cards.
Reach 200 Inscription |skill Inscription,200
step
talk Nerog##46716
|tip Inside the building.
learn Celestial Ink##57709 |goto 55.06,55.89
step
collect 170 Violet Pigment##39340
|tip Farm and Mill them with Herbalism or purchase them from the Auction House.
|tip Violet Pigment can be Milled from Blindweed, Firebloom, Ghost Mushroom, Gromsblood, Purple Lotus, Sungrass, and Arthas' Tears.
|only if skill("Inscription") < 205
step
Open Your Inscription Crafting Panel:
_<Create 85 Celestial Ink>_
|tip Make all of these, you'll need them later.
Reach 205 Inscription |skill Inscription,205
step
talk Nerog##46716
|tip Inside the building.
learn Scroll of Recall II##60336 |goto 55.06,55.89
step
Open Your Inscription Crafting Panel:
_<Create 10 Scroll of Recall II>_
Reach 215 Inscription |skill Inscription,215
step
talk Nerog##46716
|tip Inside the building.
learn Scroll of Intellect IV##50600 |goto 55.06,55.89
step
Open Your Inscription Crafting Panel:
_<Create 5 Scroll of Intellect IV>_
Reach 220 Inscription |skill Inscription,220
step
talk Nerog##46716
|tip Inside the building.
learn Scroll of Strength IV##58487 |goto 55.06,55.89
step
Open Your Inscription Crafting Panel:
_<Create 5 Scroll of Strength IV>_
Reach 225 Inscription |skill Inscription,225
step
talk Nerog##46716
|tip Inside the building.
learn Scroll of Agility IV##58478 |goto 55.06,55.89
step
Open Your Inscription Crafting Panel:
_<Create 5 Scroll of Agility IV>_
Reach 230 Inscription |skill Inscription,230
step
talk Nerog##46716
|tip Inside the building.
learn Research: Celestial Ink##165461 |goto 55.06,55.89
step
Open Your Inscription Crafting Panel:
_<Create 3 Research: Celestial Ink>_
Reach 233 Inscription |skill Inscription,233
step
talk Nerog##46716
|tip Inside the building.
learn Fiery Ink##57710 |goto 55.06,55.89
step
talk Nerog##46716
|tip Inside the building.
learn Shadowy Tarot##59491 |goto 55.06,55.89
step
Open Your Inscription Crafting Panel:
_<Create 17 Newly Discovered Celestial Ink Glyphs>_
|tip Create 17 of whatever glyph was discovered during Research: Celestial Ink from the previous step.
|tip You can also turn any Ruby Pigment you have into Fiery Ink and make Shadowy Tarot cards.
Reach 250 Inscription |skill Inscription,250
step
talk Nerog##46716
|tip Inside the building.
learn Shimmering Ink##57711 |goto 55.06,55.89
step
collect 140 Silvery Pigment##39341
|tip Farm and Mill them with Herbalism or purchase them from the Auction House.
|tip Silvery Pigment can be Milled from Dreamfoil, Golden Sansam, Icecap, Mountain Silversage, and Sorrowmoss.
|only if skill("Inscription") < 275
step
Open Your Inscription Crafting Panel:
_<Create 70 Shimmering Ink>_
|tip Make all of these, you'll need them later.
Reach 255 Inscription |skill Inscription,255
step
talk Nerog##46716
|tip Inside the building.
learn Scroll of Versatility V##50608 |goto 55.06,55.89
step
Open Your Inscription Crafting Panel:
_<Create 5 Scroll of Versatility V>_
Reach 260 Inscription |skill Inscription,260
step
talk Nerog##46716
|tip Inside the building.
learn Scroll of Intellect V##50601 |goto 55.06,55.89
step
Open Your Inscription Crafting Panel:
_<Create 5 Scroll of Intellect V>_
Reach 265 Inscription |skill Inscription,265
step
talk Nerog##46716
|tip Inside the building.
learn Scroll of Strength V##58488 |goto 55.06,55.89
step
Open Your Inscription Crafting Panel:
_<Create 5 Scroll of Strength V>_
Reach 270 Inscription |skill Inscription,270
step
talk Nerog##46716
|tip Inside the building.
learn Scroll of Agility V##58480 |goto 55.06,55.89
step
Open Your Inscription Crafting Panel:
_<Create 5 Scroll of Agility V>_
Reach 275 Inscription |skill Inscription,275
step
talk Nerog##46716
|tip Inside the building.
learn Research: Shimmering Ink##165463 |goto 55.06,55.89
step
talk Nerog##46716
|tip Inside the building.
learn Ink of the Sky##57712 |goto 55.06,55.89
step
Open Your Inscription Crafting Panel:
_<Create 4 Research: Shimmering Ink>_
Reach 279 Inscription |skill Inscription,279
step
Open Your Inscription Crafting Panel:
_<Create 11 Newly Discovered Lion's Ink Glyphs>_
|tip Create 11 of whatever glyph was discovered during Research: Shimmering Ink from the previous step.
|tip You can also turn any Sapphire Pigment you have into Ink of the Sky.
Reach 290 Inscription |skill Inscription,290
step
talk Nerog##46716
|tip Inside the building.
learn Scroll of Stamina VI##50618 |goto 55.06,55.89
step
Open Your Inscription Crafting Panel:
_<Create 10 Scroll of Stamina VI>_
Reach 300 Inscription |skill Inscription,300
step
_Congratulations!_
You Reached 300 Inscription Skill.
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Inscription\\Leveling Guides\\Outland Inscription 1-75")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Inscription\\Leveling Guides\\Northrend Inscription 1-75")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Inscription\\Leveling Guides\\Cataclysm Inscription 1-75")
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Jewelcrafting\\Leveling Guides\\Jewelcrafting 1-300",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Jewelcrafting skill from 1-300.",
condition_end=function() return skill('Jewelcrafting') >= 300 end,
condition_suggested=function() return skill('Jewelcrafting') > 0 and skill('Jewelcrafting') < 300 and level >= 5 end,
},[[
step
talk Lugrah##46675
|tip Inside the building.
Train Jewelcrafting |skillmax Jewelcrafting,300 |goto Orgrimmar/1 72.48,34.31
|tip You must be at least level 5.
step
talk Marith Lazuria##50482
|tip Inside the building.
buy 1 Jeweler's Kit##20815 |goto 72.63,34.43
|only if itemcount(20815) == 0 and skill("Jewelcrafting") < 300
step
collect 120 Copper Bar##2840
|tip Farm and Smelt them with Mining or purchase them from the Auction House.
|only if skill("Jewelcrafting") < 100
step
collect 20 Tigerseye##818
|tip Farm them with Mining or purchase them from the Auction House.
|tip Tigerseye can be mined from Copper Veins.
|only if skill("Jewelcrafting") < 50
step
collect 120 Bronze Bar##2841
|tip Farm and Smelt them with Mining or purchase them from the Auction House.
|only if skill("Jewelcrafting") < 110
step
collect 60 Shadowgem##1210
|tip Farm them with Mining or purchase them from the Auction House.
|tip Shadowgem can be mined from Copper, Silver, and Tin Veins and Mithril Deposits.
|only if skill("Jewelcrafting") < 110
step
Open Your Jewelcrafting Crafting Panel:
_<Create 60 Delicate Copper Wire>_
|tip Save these for later.
collect 60 Delicate Copper Wire##20816
|only if skill("Jewelcrafting") < 100
step
talk Lugrah##46675
|tip Inside the building.
learn Tigerseye Band##32179 |goto 72.48,34.31
step
Open Your Jewelcrafting Crafting Panel:
_<Create 20 Tigerseye Band>_
Reach 50 Jewelcrafting |skill Jewelcrafting,50
step
talk Lugrah##46675
|tip Inside the building.
learn Bronze Setting##25278 |goto 72.48,34.31
step
Open Your Jewelcrafting Crafting Panel:
_<Create 50 Bronze Setting>_
|tip Make all of these, you will need them later.
collect 50 Bronze Setting##20817
|only if skill("Jewelcrafting") < 150
step
talk Lugrah##46675
|tip Inside the building.
learn Gloom Band##25287 |goto 72.48,34.31
step
Open Your Jewelcrafting Crafting Panel:
_<Create 20 Gloom Band>_
Reach 100 Jewelcrafting |skill Jewelcrafting,100
step
talk Lugrah##46675
|tip Inside the building.
learn Ring of Twilight Shadows##20828 |goto 72.48,34.31
step
Open Your Jewelcrafting Crafting Panel:
_<Create 10 Ring of Twilight Shadows>_
Reach 110 Jewelcrafting |skill Jewelcrafting,110
step
collect 80 Heavy Stone##2838
|tip Farm them with Mining or purchase them from the Auction House.
|tip Heavy Stone can be mined from Iron Deposits.
|only if skill("Jewelcrafting") < 120
step
collect 140 Mithril Bar##3860
|tip Farm and Smelt them with Mining or purchase them from the Auction House.
|only if skill("Jewelcrafting") < 220
step
collect 30 Moss Agate##1206
|tip Farm them with Mining or purchase them from the Auction House.
|tip Moss Agate can be mined from Silver and Tin Veins and Mithril Deposits.
|tip You can also Prospect Silver, Tin or Mithril Ore with Jewelcrafting.
|only if skill("Jewelcrafting") < 150
step
talk Lugrah##46675
|tip Inside the building.
learn Heavy Stone Statue##32807 |goto 72.48,34.31
step
Open Your Jewelcrafting Crafting Panel:
_<Create 10 Heavy Stone Statue>_
Reach 120 Jewelcrafting |skill Jewelcrafting,120
step
talk Lugrah##46675
|tip Inside the building.
learn Pendant of the Agate Shield##25610 |goto 72.48,34.31
step
Open Your Jewelcrafting Crafting Panel:
_<Create 30 Pendant of the Agate Shield>_
Reach 150 Jewelcrafting |skill Jewelcrafting,150
step
talk Lugrah##46675
|tip Inside the building.
learn Mithril Filigree##25615 |goto 72.48,34.31
step
Open Your Jewelcrafting Crafting Panel:
_<Create 45 Mithril Filigree>_
collect 45 Mithril Filigree##20963
|only if skill("Jewelcrafting") < 250
step
collect 80 Solid Stone##7912
|tip Farm them with Mining or purchase them from the Auction House.
|tip Solid Stone can be mined from Mithril Deposits.
|only if skill("Jewelcrafting") < 185
step
collect 15 Truesilver Bar##6037
|tip Farm and Smelt them with Mining or purchase them from the Auction House.
|only if skill("Jewelcrafting") < 200
step
collect 25 Citrine##3864
|tip Farm them with Mining or purchase them from the Auction House.
|tip Citrine can be mined from Gold Veins and Iron, Mithril and Truesilver Deposits.
|tip You can also Prospect Gold, Iron, Mithril and Truesilver Ore with Jewelcrafting.
|only if skill("Jewelcrafting") < 220
step
collect 5 Aquamarine##7909
|tip Farm them with Mining or purchase them from the Auction House.
|tip Aquamarine can be mined from Truesilver, Mithril and Iron Deposits.
|tip You can also Prospect Truesilver, Mithril and Iron Ore with Jewelcrafting.
|only if skill("Jewelcrafting") < 225
step
collect 50 Thorium Bar##12359
|tip Farm and Smelt them with Mining or purchase them from the Auction House.
|only if skill("Jewelcrafting") < 250
step
talk Lugrah##46675
|tip Inside the building.
learn Solid Stone Statue##32808 |goto 72.48,34.31
step
Open Your Jewelcrafting Crafting Panel:
_<Create 5 Solid Stone Statue>_
|tip You may need to craft a few more.
Reach 185 Jewelcrafting |skill Jewelcrafting,185
step
talk Lugrah##46675
|tip Inside the building.
learn Engraved Truesilver Ring##25620 |goto 72.48,34.31
step
Open Your Jewelcrafting Crafting Panel:
_<Create 15 Engraved Truesilver Ring>_
Reach 200 Jewelcrafting |skill Jewelcrafting,200
step
talk Lugrah##46675
|tip Inside the building.
learn Citrine Ring of Rapid Healing##25621 |goto 72.48,34.31
step
Open Your Jewelcrafting Crafting Panel:
_<Create 20 Citrine Ring of Rapid Healing>_
|tip You may need to craft a few more.
Reach 220 Jewelcrafting |skill Jewelcrafting,220
step
talk Lugrah##46675
|tip Inside the building.
learn Aquamarine Pendant of the Warrior##26876 |goto 72.48,34.31
step
Open Your Jewelcrafting Crafting Panel:
_<Create 5 Aquamarine Pendant of the Warrior>_
Reach 225 Jewelcrafting |skill Jewelcrafting,225
step
talk Lugrah##46675
|tip Inside the building.
learn Thorium Setting##26880 |goto 72.48,34.31
step
Open Your Jewelcrafting Crafting Panel:
_<Create 50 Thorium Setting>_
collect 50 Thorium Setting##21752
|only if skill("Jewelcrafting") < 300
step
collect 10 Star Ruby##7910
|tip Farm them with Mining or purchase them from the Auction House.
|tip Star Rubies can be mined from Thorium Veins and Mithril and Truesilver Deposits.
|tip You can also Prospect Truesilver, Mithril and Thorium Ore with Jewelcrafting.
|only if skill("Jewelcrafting") < 260
step
collect 20 Large Opal##12799
|tip Farm them with Mining or purchase them from the Auction House.
|tip Star Rubies can be mined from Thorium Veins.
|tip You can also Prospect Thorium and Mithril Ore with Jewelcrafting.
|only if skill("Jewelcrafting") < 280
step
collect 7 Azerothian Diamond##12800
|tip Farm them with Mining or purchase them from the Auction House.
|tip Azerothian Diamonds can be mined from Thorium Veins.
|tip You can also Prospect Thorium and Mithril Ore with Jewelcrafting.
|only if skill("Jewelcrafting") < 287
step
collect 3 Blue Sapphire##12361
|tip Farm them with Mining or purchase them from the Auction House.
|tip Blue Sapphires can be mined from Thorium Veins.
|tip You can also Prospect Thorium and Mithril Ore with Jewelcrafting.
|only if skill("Jewelcrafting") < 290
step
collect 3 Essence of Undeath##12808
|tip Farm them from undead enemies or purchase them from the Auction House.
|only if skill("Jewelcrafting") < 290
step
collect 20 Huge Emerald##12364
|tip Farm them with Mining or purchase them from the Auction House.
|tip Huge Emeralds can be mined from Thorium Veins.
|tip You can also Prospect Thorium and Mithril Ore with Jewelcrafting.
|only if skill("Jewelcrafting") < 300
step
talk Lugrah##46675
|tip Inside the building.
learn Ruby Pendant of Fire##26883 |goto 72.48,34.31
step
Open Your Jewelcrafting Crafting Panel:
_<Create 10 Ruby Pendant of Fire>_
Reach 260 Jewelcrafting |skill Jewelcrafting,260
step
talk Lugrah##46675
|tip Inside the building.
learn Simple Opal Ring##26902 |goto 72.48,34.31
step
Open Your Jewelcrafting Crafting Panel:
_<Create 20 Simple Opal Ring>_
Reach 280 Jewelcrafting |skill Jewelcrafting,280
step
talk Lugrah##46675
|tip Inside the building.
learn Diamond Focus Ring##36526 |goto 72.48,34.31
step
Open Your Jewelcrafting Crafting Panel:
_<Create 7 Diamond Focus Ring>_
Reach 287 Jewelcrafting |skill Jewelcrafting,287
step
talk Lugrah##46675
|tip Inside the building.
learn Sapphire Pendant of Winter Night##26908 |goto 72.48,34.31
step
Open Your Jewelcrafting Crafting Panel:
_<Create 3 Sapphire Pendant of Winter Night>_
Reach 290 Jewelcrafting |skill Jewelcrafting,290
step
talk Lugrah##46675
|tip Inside the building.
learn Emerald Lion Ring##34961 |goto 72.48,34.31
step
Open Your Jewelcrafting Crafting Panel:
_<Create 10 Emerald Lion Ring>_
Reach 300 Jewelcrafting |skill Jewelcrafting,300
step
_Congratulations!_
You Reached 300 Jewelcrafting Skill.
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Jewelcrafting\\Leveling Guides\\Outland Jewelcrafting 1-75")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Jewelcrafting\\Leveling Guides\\Northrend Jewelcrafting 1-75")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Jewelcrafting\\Leveling Guides\\Cataclysm Jewelcrafting 1-75")
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Leatherworking\\Leveling Guides\\Leatherworking 1-300",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Leatherworking skill from 1-300.",
condition_end=function() return skill('Leatherworking') >= 300 end,
condition_suggested=function() return skill('Leatherworking') > 0 and skill('Leatherworking') < 300 and level >= 5 end,
},[[
step
talk Karolek##3365
|tip Inside the building.
Train Leatherworking |skillmax Leatherworking,300 |goto Orgrimmar/1 60.89,54.88
|tip You must be at least level 5.
step
talk Tamar##3366
|tip Inside the building.
buy 115 Coarse Thread##2320 |goto 60.34,54.31
step
collect 280 Light Leather##2318
|tip Farm them with Skinning or purchase them from the Auction House.
|only if skill("Leatherworking") < 100
step
Open Your Leatherworking Crafting Panel:
_<Create 29 Light Armor Kit>_
Reach 30 Leatherworking |skill Leatherworking,30
step
Open Your Leatherworking Crafting Panel:
_<Create 20 Handstitched Leather Cloak>_
|tip This will be yellow at 40, so you may need to create more.
Reach 50 Leatherworking |skill Leatherworking,50
step
talk Karolek##3365
|tip Inside the building.
learn Handstitched Leather Belt##3753 |goto 60.89,54.88
step
Open Your Leatherworking Crafting Panel:
_<Create 5 Handstitched Leather Belt>_
Reach 55 Leatherworking |skill Leatherworking,55
step
talk Karolek##3365
|tip Inside the building.
learn Embossed Leather Gloves##3756 |goto 60.89,54.88
step
Open Your Leatherworking Crafting Panel:
_<Create 30 Embossed Leather Glove>_
Reach 85 Leatherworking |skill Leatherworking,85
step
talk Karolek##3365
|tip Inside the building.
learn Fine Leather Belt##3763 |goto 60.89,54.88
step
Open Your Leatherworking Crafting Panel:
_<Create 15 Fine Leather Belt>_
|tip Keep these, you will need them later.
Reach 100 Leatherworking |skill Leatherworking,100
step
collect 15 Medium Hide##4232
|tip Farm them with Skinning or purchase them from the Auction House.
|only if skill("Leatherworking") < 115
step
talk Tamar##3366
|tip Inside the building.
buy 15 Salt##4289 |goto 60.34,54.29
|only if skill("Leatherworking") < 115
step
talk Karolek##3365
|tip Inside the building.
learn Cured Medium Hide##3817 |goto 60.89,54.88
step
Open Your Leatherworking Crafting Panel:
_<Create 15 Cured Medium Hide>_
|tip Keep these, you will need them later.
Reach 115 Leatherworking |skill Leatherworking,115
step
collect 160 Medium Leather##2319
|tip Farm them with Skinning or purchase them from the Auction House.
|only if skill("Leatherworking") < 150
step
talk Tamar##3366
|tip Inside the building.
buy 107 Fine Thread##2321 |goto 60.34,54.29
|only if skill("Leatherworking") < 130
step
talk Tamar##3366
|tip Inside the building.
buy 31 Gray Dye##4340 |goto 60.34,54.29
|only if skill("Leatherworking") < 130
step
talk Karolek##3365
|tip Inside the building.
learn Dark Leather Boots##2167 |goto 60.89,54.88
step
Open Your Leatherworking Crafting Panel:
_<Create 15 Dark Leather Boot>_
Reach 130 Leatherworking |skill Leatherworking,130
step
talk Karolek##3365
|tip Inside the building.
learn Dark Leather Belt##3766 |goto 60.89,54.88
step
Open Your Leatherworking Crafting Panel:
_<Create 15 Dark Leather Belt>_
Reach 145 Leatherworking |skill Leatherworking,145
step
talk Karolek##3365
|tip Inside the building.
learn Hillman's Leather Gloves##3764 |goto 60.89,54.88
step
Open Your Leatherworking Crafting Panel:
_<Create 5 Hillman's Leather Glove>_
Reach 150 Leatherworking |skill Leatherworking,150
step
talk Karolek##3365
|tip Inside the building.
learn Heavy Leather##20649 |goto 60.89,54.88
step
Open Your Leatherworking Crafting Panel:
_<Create 5 Heavy Leather>_
Reach 155 Leatherworking |skill Leatherworking,155
step
collect 20 Heavy Hide##4235
|tip Farm them with Skinning or purchase them from the Auction House.
|only if skill("Leatherworking") < 165
step
talk Tamar##3366
|tip Inside the building.
buy 60 Salt##4289 |goto 60.34,54.29
|only if skill("Leatherworking") < 165
step
talk Karolek##3365
|tip Inside the building.
learn Cured Heavy Hide##3818 |goto 60.89,54.88
step
Open Your Leatherworking Crafting Panel:
_<Create 20 Cured Heavy Hide>_
|tip You may need to craft more.
|tip Keep these, you will need them later.
Reach 165 Leatherworking |skill Leatherworking,165
step
collect 195 Heavy Leather##4234
|tip Farm them with Skinning or purchase them from the Auction House.
|only if skill("Leatherworking") < 200
step
talk Karolek##3365
|tip Inside the building.
learn Heavy Armor Kit##3780 |goto 60.89,54.88
step
Open Your Leatherworking Crafting Panel:
_<Create 15 Heavy Armor Kit>_
Reach 180 Leatherworking |skill Leatherworking,180
step
talk Karolek##3365
|tip Inside the building.
learn Barbaric Shoulders##7151 |goto 60.89,54.88
step
Open Your Leatherworking Crafting Panel:
_<Create 10 Barbaric Shoulder>_
Reach 190 Leatherworking |skill Leatherworking,190
step
talk Tamar##3366
|tip Inside the building.
buy 145 Silken Thread##4291 |goto 60.34,54.29
|only if skill("Leatherworking") < 250
step
talk Karolek##3365
|tip Inside the building.
learn Guardian Gloves##7156 |goto 60.89,54.88
step
Open Your Leatherworking Crafting Panel:
_<Create 10 Guardian Glove>_
Reach 200 Leatherworking |skill Leatherworking,200
step
collect 410 Thick Leather##4304
|tip Farm them with Skinning or purchase them from the Auction House.
|only if skill("Leatherworking") < 250
step
talk Karolek##3365
|tip Inside the building.
learn Thick Armor Kit##10487 |goto 60.89,54.88
step
Open Your Leatherworking Crafting Panel:
_<Create 5 Thick Armor Kit>_
Reach 205 Leatherworking |skill Leatherworking,205
step
talk Karolek##3365
|tip Inside the building.
learn Nightscape Headband##10507 |goto 60.89,54.88
step
Open Your Leatherworking Crafting Panel:
_<Create 30 Nightscape Headband>_
|tip You may need to make more.
Reach 235 Leatherworking |skill Leatherworking,235
step
talk Karolek##3365
|tip Inside the building.
learn Nightscape Pants##10548 |goto 60.89,54.88
step
Open Your Leatherworking Crafting Panel:
_<Create 15 Nightscape Pant>_
Reach 250 Leatherworking |skill Leatherworking,250
step
collect 450 Rugged Leather##8170
|tip Farm them with Skinning or purchase them from the Auction House.
|only if skill("Leatherworking") < 300
step
talk Karolek##3365
|tip Inside the building.
learn Rugged Armor Kit##19058 |goto 60.89,54.88
step
Open Your Leatherworking Crafting Panel:
_<Create 15 Rugged Armor Kit>_
|tip You may need to make more.
Reach 265 Leatherworking |skill Leatherworking,265
step
talk Tamar##3366
|tip Inside the building.
buy 35 Black Dye##2325 |goto 60.34,54.29
|only if skill("Leatherworking") < 300
step
talk Tamar##3366
|tip Inside the building.
buy 35 Rune Thread##14341 |goto 60.34,54.29
|only if skill("Leatherworking") < 300
step
talk Karolek##3365
|tip Inside the building.
learn Wicked Leather Bracers##19052 |goto 60.89,54.88
step
Open Your Leatherworking Crafting Panel:
_<Create 30 Wicked Leather Bracer>_
Reach 290 Leatherworking |skill Leatherworking,290
step
talk Karolek##3365
|tip Inside the building.
learn Wicked Leather Headband##19071 |goto 60.89,54.88
step
Open Your Leatherworking Crafting Panel:
_<Create 10 Wicked Leather Headband>_
Reach 300 Leatherworking |skill Leatherworking,300
step
_Congratulations!_
You Reached 300 Leatherworking Skill.
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Leatherworking\\Leveling Guides\\Outland Leatherworking 1-75")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Leatherworking\\Leveling Guides\\Northrend Leatherworking 1-75")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Leatherworking\\Leveling Guides\\Cataclysm Leatherworking 1-75")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Mining\\Farming Guides\\Copper")
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Leveling Guides\\Mining 1-300",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Mining skill from 1-300.",
condition_end=function() return skill('Mining') >= 300 end,
condition_suggested=function() return skill('Mining') > 0 and skill('Mining') < 300 and level >= 5 end,
},[[
step
talk Gonto##46357
|tip He walks around Inside the building.
Train Mining |skillmax Mining,300 |goto Orgrimmar/1 44.56,78.60
|tip You must be at least level 5.
step
map Un'Goro Crater/0
path follow smart; loop on; ants curved; dist 30
path	65.32,79.10	62.13,80.37	60.77,83.36	58.36,84.11	54.78,86.18
path	51.90,86.42	50.68,85.45	48.10,86.84	43.26,84.67	40.70,83.46
path	38.48,83.31	36.98,81.97	35.14,81.88	33.10,80.12	30.98,78.74
path	29.33,71.78	30.60,70.82	30.23,68.66	26.83,68.56	26.08,63.17
path	24.94,58.80	24.19,54.78	25.05,49.80	24.07,47.50	25.01,40.92
path	26.30,36.98	26.53,32.66	28.25,30.26	29.54,30.83	30.54,29.33
path	29.69,25.07	30.67,20.85	32.45,20.49	34.07,21.27	36.30,20.50
path	37.77,17.78	40.50,16.53	42.50,16.00	44.79,14.19	46.26,14.00
path	49.08,13.66	49.91,17.92	51.81,16.44	52.07,13.57	55.70,14.20
path	58.89,16.09	60.42,16.55	62.87,17.02	63.99,19.91	65.73,21.51
path	66.47,24.59	67.32,24.41	69.31,21.00	71.53,22.09	71.09,24.18
path	71.83,28.89	74.23,31.84	74.58,35.68	76.03,41.74	76.45,47.99
path	76.00,50.19	76.69,53.78	76.33,56.55	74.66,63.96	74.13,68.33
path	72.36,70.60	70.77,71.19	70.67,74.82	70.50,79.10	68.17,79.33
path	66.40,78.60
Mine along the path
|tip Make sure you enable "Find Minerals" in the tracking menu on the minimap.
|tip You will need Rich Thorium Veins to reach 295.
|tip You can smelt Thorium Ore starting at 275 skill, up to 290.
|tip If your character is lower level, you can use the various farming guides to level in an easier zone.
Reach 295 Mining Skill |skill Mining,295
step
Await the Darkmoon Faire |complete isevent('Darkmoon Faire') |or
|tip This event runs for one week every month.
|tip Check the in-game calendar for the next event.
'|complete skill('Mining') >= 300 |or
step
talk Rinling##14841
accept Rearm, Reuse, Recycle##29518 |goto Darkmoon Island/0 49.25,60.78 |or
'|complete skill('Mining') >= 300 |or
step
click Tonk Scrap##209275+
|tip They look like random pieces of metal on the ground around this area.
collect 6 Tonk Scrap##71968 |q 29518/1 |goto 49.47,71.33 |or
'|complete skill('Mining') >= 300 |or
step
talk Rinling##14841
turnin Rearm, Reuse, Recycle##29518 |goto 49.25,60.78 |or
'|complete skill('Mining') >= 300 |or
step
_Congratulations!_
You Reached 300 Mining Skill.
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Mining\\Leveling Guides\\Outland Mining 1-75")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Mining\\Leveling Guides\\Northrend Mining 1-75")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Mining\\Leveling Guides\\Cataclysm Mining 1-75")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Skinning\\Farming Guides\\Light Leather")
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Leveling Guides\\Skinning 1-300",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Skinning skill from 1-300.",
condition_end=function() return skill('Skinning') >= 300 end,
condition_suggested=function() return skill('Skinning') > 0 and skill('Skinning') < 300 and level >= 5 end,
},[[
step
talk Thuwd##7088
|tip Inside the building.
Train Skinning |skillmax Skinning,300 |goto Orgrimmar/1 61.14,54.66
|tip You must be at least level 5.
step
map Un'Goro Crater/0
path follow smart; loop on; ants curved; dist 30
path	60.12,62.42	60.19,57.17	62.20,52.68	64.35,48.85	67.37,49.47
path	71.15,51.30	70.05,55.96	71.16,59.35	70.14,63.32	67.60,66.96
path	65.00,70.11	63.13,71.67	60.58,72.88	58.26,68.80	59.11,63.15
Kill any beasts you see and skin them
Reach Level 300 Skinning |skill Skinning,300
step
_Congratulations!_
You Reached 300 Skinning Skill.
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Skinning\\Leveling Guides\\Outland Skinning 1-75")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Skinning\\Leveling Guides\\Northrend Skinning 1-75")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Skinning\\Leveling Guides\\Cataclysm Skinning 1-75")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Tailoring\\Farming Guides\\Linen Cloth")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Tailoring\\Farming Guides\\Silk Cloth")
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Leveling Guides\\Tailoring 1-300",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Tailoring skill from 1-300.",
condition_end=function() return skill('Tailoring') >= 300 end,
condition_suggested=function() return skill('Tailoring') > 0 and skill('Tailoring') < 300 and level >= 5 end,
},[[
step
talk Magar##3363
|tip Inside the building.
Train Tailoring |skillmax Tailoring,300 |goto Orgrimmar/1 60.74,59.14
|tip You must be at least level 5.
step
collect 120 Linen Cloth##2589
|tip Farm them from humanoid mobs or purchase them from the Auction House.
|only if skill("Tailoring") < 80
step
Open Your Tailoring Crafting Panel:
_<Create 49 Linen Bandage>_
|tip You may need to make a few more.
Reach 50 Tailoring |skill Tailoring,50
step
talk Mender Jessara##133109
learn Heavy Linen Bandage##3276 |goto 38.50,86.41
step
Open Your Tailoring Crafting Panel:
_<Create 30 Heavy Linen Bandage>_
Reach 80 Tailoring |skill Tailoring,80
step
collect 100 Wool Cloth##2592
|tip Farm them from humanoid mobs or purchase them from the Auction House.
|only if skill("Tailoring") < 150
step
talk Mender Jessara##133109
learn Wool Bandage##3277 |goto 38.50,86.41
step
Open Your Tailoring Crafting Panel:
_<Create 50 Wool Bandage>_
Reach 130 Tailoring |skill Tailoring,130
step
talk Mender Jessara##133109
learn Heavy Wool Bandage##3278 |goto 38.50,86.41
step
Open Your Tailoring Crafting Panel:
_<Create 20 Heavy Wool Bandage>_
Reach 150 Tailoring |skill Tailoring,150
step
collect 90 Silk Cloth##4306
|tip Farm them from humanoid mobs or purchase them from the Auction House.
|only if skill("Tailoring") < 210
step
talk Mender Jessara##133109
learn Silk Bandage##7928 |goto 38.50,86.41
step
Open Your Tailoring Crafting Panel:
_<Create 40 Silk Bandage>_
Reach 190 Tailoring |skill Tailoring,190
step
talk Mender Jessara##133109
learn Heavy Silk Bandage##7929 |goto 38.50,86.41
step
Open Your Tailoring Crafting Panel:
_<Create 20 Heavy Silk Bandage>_
Reach 210 Tailoring |skill Tailoring,210
step
collect 70 Mageweave Cloth##4338
|tip Farm them from humanoid mobs or purchase them from the Auction House.
|only if skill("Tailoring") < 260
step
talk Mender Jessara##133109
learn Mageweave Bandage##10840 |goto 38.50,86.41
step
Open Your Tailoring Crafting Panel:
_<Create 30 Mageweave Bandage>_
Reach 240 Tailoring |skill Tailoring,240
step
talk Mender Jessara##133109
learn Heavy Mageweave Bandage##10841 |goto 38.50,86.41
step
Open Your Tailoring Crafting Panel:
_<Create 20 Mageweave Bandage>_
Reach 260 Tailoring |skill Tailoring,260
step
collect 50 Runecloth##14047
|tip Farm them from humanoid mobs or purchase them from the Auction House.
|only if skill("Tailoring") < 300
step
talk Mender Jessara##133109
learn Runecloth Bandage##18629 |goto 38.50,86.41
step
Open Your Tailoring Crafting Panel:
_<Create 30 Runecloth Bandage>_
Reach 290 Tailoring |skill Tailoring,290
step
talk Mender Jessara##133109
learn Heavy Runecloth Bandage##18630 |goto 38.50,86.41
step
Open Your Tailoring Crafting Panel:
_<Create 10 Heavy Runecloth Bandage>_
Reach 300 Tailoring |skill Tailoring,300
step
_Congratulations!_
You Reached 300 Tailoring Skill.
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Tailoring\\Leveling Guides\\Outland Tailoring 1-75")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Tailoring\\Leveling Guides\\Northrend Tailoring 1-75")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Tailoring\\Leveling Guides\\Cataclysm Tailoring 1-75")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\General Farming Guides\\Volatile Water")
