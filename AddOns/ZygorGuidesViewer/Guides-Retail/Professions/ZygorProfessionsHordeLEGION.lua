local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("ProfessionsHLEGION") then return end
ZygorGuidesViewer.GuideMenuTier = "LEG"
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Alchemy\\Leveling Guides\\Legion Alchemy 1-100",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Legion Alchemy skill from 1-100.",
startlevel=5.0,
condition_end=function() return skill('Legion Alchemy') >= 100 end,
condition_suggested=function() return skill('Legion Alchemy') > 0 and skill('Legion Alchemy') < 100 and level >= 5 end,
},[[
step
Enter the building |goto Dalaran L/10 41.28,31.54 < 5 |walk
talk Linzy Blackbolt##92456
Train Legion Alchemy |skillmax Legion Alchemy,100|goto 42.03,31.79
step
Load the "Legion Alchemy Quest Line" Guide |confirm |next "Profession Guides\\Alchemy\\Quest Guides\\Legion Alchemy Quest Line"
|tip Click the line above to load the guide.
|tip After completing the Legion Alchemy Quest Line, you should be around level 45 Legion Alchemy.
Complete the Legion Alchemy Quest Line |q 42081 |future
step
Enter the Eye of Azshara Dungeon |goto Eye of Azshara/1 47.59,87.41 < 10000 |noway |c |q 39331
|only if skill("Legion Alchemy") < 70
step
kill Wrath of Azshara##96028
collect Recipe: Leytorrent Potion##127929 |n
use the Recipe: Leytorrent Potion##127929
learn Leytorrent Potion (Rank 2)##188335
step
collect 25 Starlight Rose##124105
|tip Use the Starlight Rose farming guide to gather these, if you have Herbalism.
|tip You can also purchase them from the Auction House.
|only if skill("Legion Alchemy") < 70
step
collect 50 Aethril##124101
|tip Use the Aethril farming guide to gather these, if you have Herbalism.
|tip You can also purchase them from the Auction House.
|only if skill("Legion Alchemy") < 70
step
collect 50 Dreamleaf##124102
|tip Use the Dreamleaf farming guide to gather these, if you have Herbalism.
|tip You can also purchase them from the Auction House.
|only if skill("Legion Alchemy") < 70
step
Open Your Alchemy Crafting Panel:
_<Create 20 Leytorrent Potions>_
Reach Level 70 Legion Alchemy |skill Legion Alchemy,70
step
collect 420 Starlight Rose##124105
|tip Use the Starlight Rose farming guide to gather these, if you have Herbalism.
|tip You can also purchase them from the Auction House.
|only if skill("Legion Alchemy") < 99
step
collect 600 Aethril##124101
|tip Use the Aethril farming guide to gather these, if you have Herbalism.
|tip You can also purchase them from the Auction House.
|only if skill("Legion Alchemy") < 99
step
collect 600 Dreamleaf##124102
|tip Use the Dreamleaf farming guide to gather these, if you have Herbalism.
|tip You can also purchase them from the Auction House.
|only if skill("Legion Alchemy") < 99
step
Open Your Alchemy Crafting Panel:
_<Create 30 Flask of Ten Thousand Scars>_
Reach Level 100 Legion Alchemy |skill Legion Alchemy,100
step
_Congratulations!_
You Reached Level 100 Legion Alchemy Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Alchemy\\Quest Guides\\Legion Alchemy Quest Line",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the Legion Alchemy quest line.",
startlevel=10.0,
condition_end=function() return completedq(42081) end,
condition_suggested=function() return skill('Legion Alchemy') > 0 and level >= 10 and not completedq(42081) end,
},[[
step
talk Deucus Valdera##92458
|tip Inside the building.
Learn the Alchemy Profession |complete skill("Legion Alchemy")>=1 |goto Dalaran L/10 41.32,33.41
|tip You must be at least level 5.
step
Reach Level 10 |ding 10
|tip You must be level 10 to accept the next quest.
step
talk Deucus Valdera##92458
|tip Inside the building.
accept Get Your Mix On##39325 |goto 41.32,33.41
step
talk Patricia Egan##92457
|tip Inside the building.
buy Recipe: Ancient Healing Potion##127898 |n
Use the Recipe: Ancient Healing Potion |use Recipe: Ancient Healing Potion##127898
Learn the Rank 1 Recipe for Ancient Healing Potion |learn Ancient Healing Potion##188297 |goto 42.18,32.31
step
talk Patricia Egan##92457
|tip Inside the building.
buy Recipe: Ancient Mana Potion##127899 |n
Use the Recipe: Ancient Mana Potion |use Recipe: Ancient Mana Potion##127899
Learn the Rank 1 Recipe for Ancient Mana Potion |learn Ancient Healing Potion##188301 |goto 42.18,32.31
step
talk Patricia Egan##92457
|tip Inside the building.
buy Recipe: Ancient Rejuvination Potion##127900 |n
Use the Recipe: Ancient Rejuvination Potion |use Recipe: Ancient Rejuvination Potion##127900
Learn the Rank 1 Recipe for Ancient Rejuvenation Potion |learn Ancient Rejuvination Potion##188304 |goto 42.18,32.31
step
talk Patricia Egan##92457
|tip Inside the building.
buy 10 Crystal Vial##3371 |n
collect 10 Crystal Vial##3371 |goto 42.18,32.31 |q 39325
step
collect 9 Yseralline Seed##128304 |q 39325
|tip You get these by gathering any herb in Legion, if you have Herbalism.
|tip Use the farming guides for Aethril, Dreamleaf, Foxflower, Fjarnskaggl, or Starlight Rose to accomplish this.
|tip You can also purchase them from the Auction House.
step
click Dalaran Alchemy Station
_<Create 1 Ancient Healing Potion>_
|tip Save the potion you create.
Craft an Ancient Healing Potion |q 39325/1 |goto 41.41,33.41
step
click Dalaran Alchemy Station
_<Create 1 Ancient Mana Potion>_
|tip Save the potion you create.
Craft an Ancient Mana Potion |q 39325/2 |goto 41.41,33.41
step
click Dalaran Alchemy Station
_<Create 1 Ancient Rejuvination Potion>_
Craft an Ancient Rejuvination Potion |q 39325/3 |goto 41.41,33.41
step
talk Deucus Valdera##92458
|tip Inside the building.
turnin Get Your Mix On##39325 |goto 41.32,33.41
accept Missing Shipments##39326 |goto 41.32,33.41
step
Follow the path |goto Azsuna/0 45.23,43.73 < 20 |only if walking
Follow the path down |goto Azsuna/0 45.68,45.52 < 30 |only if walking
click Crate of Khadgar's Whiskers##243562
collect Crate of Khadgar's Whiskers##128355 |q 39326/1 |goto Azsuna/0 43.90,47.35
step
click Alchemy Book##243392
accept A Mysterious Text##39390 |goto 44.96,52.10
step
click Barrel of Fish Oil##243563
collect Barrel of Fish Oil##128356 |q 39326/2 |goto 44.89,52.21
step
click Basket of Dried Herbs##243564
|tip Inside the broken ship.
collect Basket of Dried Herbs##128357 |q 39326/3 |goto 44.90,53.46
step
talk Deucus Valdera##92458
|tip Inside the building.
turnin Missing Shipments##39326 |goto Dalaran L/10 41.32,33.41
turnin A Mysterious Text##39390 |goto Dalaran L/10 41.32,33.41
accept There's a Scribe for That##39327 |goto Dalaran L/10 41.32,33.41
step
talk Professor Pallin##92195
|tip Inside the building.
Watch the dialogue
Receive the Translated Tome |q 39327/1 |goto 41.29,37.03
step
talk Deucus Valdera##92458
|tip Inside the building.
turnin There's a Scribe for That##39327 |goto 41.32,33.41
accept Ancient Knowledge##39328 |goto 41.32,33.41
step
Watch the dialogue
Attempt to Make a Draught of Raw Magic |q 39328/1 |goto 41.30,33.39
step
talk Deucus Valdera##92458
|tip Inside the building.
turnin Ancient Knowledge##39328 |goto 41.32,33.41
accept A Dormant Burner##39329 |goto 41.32,33.41
step
talk Hobart Grapplehammer##93539
|tip Inside the building.
buy Depleted Leyflame Burner##127871 |n
collect Depleted Leyflame Burner##127871 |q 39329/1 |goto 38.35,24.59
step
talk Deucus Valdera##92458
|tip Inside the building.
turnin A Dormant Burner##39329 |goto 41.32,33.41
accept Ley Hunting##39330 |goto 41.32,33.41
step
Follow the path |goto Azsuna/0 47.87,43.47 < 30 |only if walking
Follow the path across the water |goto Azsuna/0 49.03,41.90 < 20 |only if walking
Leave the water here |goto Azsuna/0 51.85,40.50 < 20 |only if walking
Follow the path |goto Azsuna/0 53.11,41.14 < 30 |only if walking
Run up the stairs |goto Azsuna/0 53.82,40.83 < 20 |only if walking
Carefully jump down into the water |goto Azsuna/17 62.21,76.43 < 10 |walk
Use the Depleted Leyflame Burner |use Depleted Leyflame Burner##128329
|tip Don't move until it finishes channeling.
Collect the Nar'thalas Energy |q 39330/1 |goto Azsuna/17 62.21,76.43
step
Leave the water here |goto 60.15,74.74 < 10 |walk
Follow the path |goto 63.64,70.06 < 20 |walk
Follow the path up |goto 64.23,81.83 < 15 |walk
Follow the path |goto 56.15,76.86 < 15 |walk
Follow the path |goto Azsuna/0 54.48,40.54 < 30 |only if walking
Follow the path up |goto Azsuna/0 54.52,33.37 < 30 |only if walking
Follow the path |goto Azsuna/0 53.20,28.84 < 30 |only if walking
Follow the path |goto Azsuna/0 50.31,29.64 < 30 |only if walking
Use the Depleted Leyflame Burner |use Depleted Leyflame Burner##128329
|tip Don't move until it finishes channeling.
Collect the Dragon Pool Energy |q 39330/2 |goto Azsuna/0 48.06,26.54
step
Follow the path up |goto 49.74,26.86 < 20 |only if walking
Follow the road up |goto 50.50,26.40 < 20 |only if walking
Follow the road |goto 50.51,23.71 < 20 |only if walking
Continue following the road |goto 51.11,18.34 < 20 |only if walking
Follow the path |goto 52.35,16.77 < 30 |only if walking
Follow the path down |goto 56.14,15.15 < 20 |only if walking
Use the Depleted Leyflame Burner |use Depleted Leyflame Burner##128329
|tip Don't move until it finishes channeling.
Collect the Zarkhenar Energy |q 39330/3 |goto 56.88,14.79
step
talk Deucus Valdera##92458
|tip Inside the building.
turnin Ley Hunting##39330 |goto Dalaran L/10 41.32,33.41
step
talk Deucus Valdera##92458
|tip Inside the building.
accept Put a Cork in It##39331 |goto 41.32,33.41
step
Enter the Eye of Azshara Dungeon |goto Eye of Azshara/1 47.59,87.41 < 10000 |noway |c |q 39331
|tip Use the Group Finder to enter the dungeon.
step
kill Wrath of Azshara##96028 |q 39331/2
|tip Use the Eye of Azshara dungeon guide to accomplish this.
step
click Crate of Corks##248930
collect Advanced Corks##127873 |q 39331/1 |goto Eye of Azshara/1 61.57,57.47
step
talk Deucus Valdera##92458
|tip Inside the building.
turnin Put a Cork in It##39331 |goto Dalaran L/10 41.32,33.41
accept Furbolg Firewater##39332 |goto Dalaran L/10 41.32,33.41
step
Follow the path |goto Val'sharah/0 53.43,74.13 < 20 |only if walking
Cross the bridge |goto Val'sharah/0 51.46,75.71 < 20 |only if walking
Follow the path |goto Val'sharah/0 49.37,79.52 < 20 |only if walking
Follow the path |goto Val'sharah/0 48.71,83.20 < 20 |only if walking
click Smolderhide Firewater##248931
|tip They look like brown leather drinking pouches on the ground around this area.
collect 8 Smolderhide Firewater##128335 |q 39332/1 |goto Val'sharah/0 47.45,85.19
step
talk Deucus Valdera##92458
|tip Inside the building.
turnin Furbolg Firewater##39332 |goto Dalaran L/10 41.32,33.41
step
talk Deucus Valdera##92458
|tip Inside the building.
accept Flasking for a Favor##39430 |goto 41.32,33.41
step
collect 60 Foxflower##124103 |q 39430
|tip Use the Foxflower farming guide to accomplish this, if you have Herbalism.
|tip You can also purchase them from the Auction House.
step
Follow the path |goto Thunder Totem/0 50.81,45.57 < 30 |only if walking
Follow the path |goto Highmountain/0 50.83,64.38 < 30 |only if walking
Follow the path up |goto Highmountain/0 47.99,68.22 < 30 |only if walking
Follow the path up |goto Highmountain/0 48.10,69.01 < 20 |only if walking
Follow the path up |goto Highmountain/0 49.09,69.27 < 20 |only if walking
Follow the path up the mountain |goto Highmountain/0 48.27,70.64 < 20 |only if walking
Follow the path up |goto Highmountain/0 48.51,74.89 < 20 |only if walking
Follow the narrow path up |goto Highmountain/0 49.80,73.44 < 20 |only if walking
Continue following the path up |goto Highmountain/0 51.41,73.37 < 20 |only if walking
Follow the path up |goto Highmountain/0 50.76,76.11 < 20 |only if walking
Crossing the hanging bridge |goto Highmountain/0 49.89,79.69 < 20 |only if walking
Follow the path |goto Highmountain/0 51.89,83.50 < 20 |only if walking
Follow the path down |goto Highmountain/0 53.52,81.90 < 30 |only if walking
Follow the path |goto Highmountain/0 56.20,80.17 < 30 |only if walking
Follow the path down |goto Highmountain/0 56.21,81.79 < 20 |only if walking
Follow the path up |goto Highmountain/0 55.93,85.31 < 20 |only if walking
talk Poca Firemantle##98966
fpath Ironhorn Enclave |goto Highmountain/0 56.82,83.85
step
talk Barm Stonebreaker##92242
Seek out Barm Stonebreaker in Highmountain |q 39430/1 |goto 55.18,84.19
step
Follow the path |goto 42.40,53.39 < 30 |only if walking
click Ripe Pumpkins##249000
|tip They are the larger orange pumpkins on the ground around this area.
collect 15 Ripe Pumpkin Juice##136674 |q 39430 |goto 43.16,56.27
step
Use Barm's Mortar and Pestle |use Barm's Mortar and Pestle##136675
|tip Use it 15 times.
collect 15 Rivermane Remedy##136673 |q 39430/2 |goto 43.30,58.14
step
talk Barm Stonebreaker##92242
turnin Flasking for a Favor##39430 |goto 55.18,84.20
accept Thanks for Flasking##39334 |goto 55.18,84.20
step
talk Deucus Valdera##92458
|tip Inside the building.
turnin Thanks for Flasking##39334 |goto Dalaran L/10 41.32,33.41
step
talk Deucus Valdera##92458
|tip Inside the building.
accept Potent Powder##39335 |goto 41.32,33.41
step
Enter the Neltharion's Lair Dungeon |goto Neltharion's Lair/0 96.35,40.19 < 10000 |noway |c |q 39335
|tip Use the Group Finder to enter the dungeon.
step
click Precipitating Powder##249024
collect Precipitating Powder##127874 |q 39335/1 |goto Neltharion's Lair/0 44.19,48.14
step
kill Dargrul##91007 |q 39335/2
|tip Use the Neltharion's Lair dungeon guide to accomplish this.
step
talk Deucus Valdera##92458
|tip Inside the building.
turnin Potent Powder##39335 |goto Dalaran L/10 41.32,33.41
accept We Need More Powder!##39336 |goto Dalaran L/10 41.32,33.41
step
Follow the path |goto Stormheim/0 53.60,31.66 < 30 |only if walking
Follow the path up |goto Stormheim/0 55.72,30.18 < 30 |only if walking
Follow the path |goto Stormheim/0 58.04,30.52 < 20 |only if walking
Follow the path down |goto Stormheim/0 58.80,29.54 < 30 |only if walking
Continue following the path down |goto Stormheim/0 58.80,27.01 < 20 |only if walking
Enter the cave |goto Stormheim/0 57.43,25.47 < 20 |walk
kill Katterin the Blistered##95748
collect Katterin's Alchemy Kit##128345 |q 39336/1 |goto Stormheim/0 58.66,25.98
step
talk Deucus Valdera##92458
|tip Inside the building.
turnin We Need More Powder!##39336 |goto Dalaran L/10 41.32,33.41
step
talk Deucus Valdera##92458
|tip Inside the building.
accept Forlorn Filter##39337 |goto 41.32,33.41
step
collect 5 Dreamleaf##124102 |q 39337
|tip Use the Dreamleaf farming guide to accomplish this, if you have Herbalism.
|tip You can also purchase them from the Auction House.
step
Run up the stairs |goto Val'sharah/0 55.25,55.26 < 20 |only if walking
talk Temple Priestess##105760
Speak with the Temple Priestess |q 39337/1 |goto Val'sharah/0 54.17,54.83
step
click Torn Shaldorei Silk##249211
turnin Forlorn Filter##39337 |goto 54.26,54.63
accept Mending the Filter##39431 |goto 54.26,54.63
step
talk Temple Priestess##105760
Talk with the Priestess |q 39431/1 |goto 54.17,54.83
step
Follow the path up |goto 68.47,48.60 < 20 |only if walking
talk Leyweaver Erenyi##93974
turnin Mending the Filter##39431 |goto 70.46,46.40
accept Trading for Dreams##44112 |goto 70.46,46.40
step
Cross the bridge |goto 73.17,42.67 < 20 |only if walking
Run up the stairs |goto 73.73,40.94 < 20 |only if walking
click Dreamer's Tear##249514
collect Dreamer's Tear Leaves##136835 |q 44112 |goto 73.44,38.63
step
Use the Nightborne Flask |use Nightborne Flask##136836
collect Ysera's Dream Draught##136827 |q 44112/1
step
Run down the stairs |goto 73.76,40.58 < 20 |only if walking
Cross the bridge |goto 73.53,41.64 < 20 |only if walking
talk Leyweaver Erenyi##93974
turnin Trading for Dreams##44112 |goto 70.46,46.40
accept Return the Filter##39338 |goto 70.46,46.40
step
talk Deucus Valdera##92458
|tip Inside the building.
turnin Return the Filter##39338 |goto Dalaran L/10 41.32,33.41
step
Reach Level 45 |ding 45
|tip Use the Leveling guides to accomplish this.
step
Unlock World Quests |complete completedq(43341)
|tip Use the "World Quests" dailies guide to accomplish this.
step
talk Deucus Valdera##92458
|tip Inside the building.
accept A Fragile Crucible##39339 |goto 41.32,33.41
step
Follow the path |goto Suramar/0 34.93,51.14 < 30 |only if walking
Follow the path up |goto Suramar/0 34.07,54.39 < 20 |only if walking
Follow the path down |goto Suramar/0 32.80,58.75 < 20 |only if walking
Follow the path |goto Suramar/0 32.00,63.64 < 20 |only if walking
Follow the path |goto Suramar/0 33.44,65.99 < 30 |only if walking
Follow the path down |goto Suramar/0 31.56,68.59 < 30 |only if walking
Follow the path down |goto Suramar/0 30.11,74.97 < 30 |only if walking
Follow the path |goto Suramar/0 29.55,79.18 < 30 |only if walking
click Fragile Demonsbreath Crucible##249344
collect Fragile Demonsbreath Crucible##128681 |q 39339/1 |goto Suramar/0 29.73,82.98
step
talk Deucus Valdera##92458
|tip Inside the building.
turnin A Fragile Crucible##39339 |goto Dalaran L/10 41.32,33.41
accept Lining the Crucible##39340 |goto Dalaran L/10 41.32,33.41
step
collect Blood of Sargeras##124124 |q 39340/1
|tip You can get these as rewards for certain world quests or killing dungeon bosses.
|tip Use the "World Quests" guide and dungeon guides to accomplish this.
|tip You can also get them by gathering with gathering professions at rank 2 or higher.
|tip Use the Farming guides to accomplish this.
step
collect Felhide##124116 |q 39340/2
|tip You can get these by completing "Felhide" Skinning world quests, if you have Skinning.
|tip Use the "World Quests" dailies guide to accomplish this.
|tip You can also purchase them from the Auction House.
step
collect 2 Felwort##124106 |q 39340/3
|tip You can get these by completing "Felwort" Herbalism world quests, if you have Herbalism.
|tip Use the "World Quests" dailies guide to accomplish this.
|tip You can also purchase them from the Auction House.
step
collect 105 Yseralline Seed##128304 |q 39341 |future
|tip You can also get them by gathering herbs, if you have Herbalism.
|tip Use the Herbalism Farming guides to accomplish this.
|tip You can also purchase them from the Auction House.
step
collect 5 Fjarnskaggl##124104 |q 39341 |future
|tip Use the farming guide for Fjarnskaggl to accomplish this, if you have Herbalism.
|tip You can also purchase them from the Auction House.
step
talk Deucus Valdera##92458
|tip Inside the building.
turnin Lining the Crucible##39340 |goto 41.32,33.41
accept Demon's Bile##39341 |goto 41.32,33.41
step
talk Patricia Egan##92457
|tip Inside the building.
buy Recipe: Skaggldrynk##127904 |n
Use the Recipe: Skaggldrynk |use Recipe: Skaggldrynk##127904
Learn the Rank 1 Recipe for Skaggldrynk |learn Skaggldrynk##188316 |goto 42.18,32.31
step
talk Patricia Egan##92457
|tip Inside the building.
buy 1 Crystal Vial##3371 |n
collect 1 Crystal Vial##3371 |goto 42.18,32.31 |q 39341
step
click Dalaran Alchemy Station
_<Create 1 Ancient Mana Potion>_
|tip Save the potion you create.
collect Ancient Mana Potion##127835 |goto 41.41,33.41 |q 39341
step
click Dalaran Alchemy Station
_<Create 1 Skaggldrynk>_
|tip Save the potion you create.
collect Skaggldrynk##127840 |goto 41.41,33.41 |q 39341
step
Enter the Vault of the Wardens Dungeon |goto Vault of the Wardens/1 < 10000 |noway |c |q 39341
|tip Use the Group Finder to enter the dungeon.
|tip If possible, try to group with a friend who is a Tank, so they can control what the group does.
|tip The boss you need to kill is optional, so most groups skip it.
|tip If you can't, just ask your group to help you kill the Alchemy quest boss, Grimoira.
step
Enter the Second Level of the Vault of the Wardens Dungeon |goto Vault of the Wardens/2 46.73,36.58 < 10000 |noway |c |q 39341
|tip Follow the group through the dungeon.
step
Drink the Skaggldrynk Potion |use Skaggldrynk##127840
|tip This will reveal the Rune Lock you need to click to get through the door.
click Rune Lock##249692 |goto Vault of the Wardens/2 46.72,36.45 < 10
kill Grimoira##105824
Defeat Grimoira |q 39341/2 |goto Vault of the Wardens/2 46.70,17.26
accept Bendy Glass Tubes##39343 |goto Vault of the Wardens/2 46.70,17.26
|tip You will automatically accept this quest after looting her.
Submerge the Demonsbreath Crucible in Grimoira's Bile |q 39341/1 |goto Vault of the Wardens/2 46.70,17.26
|tip Be sure you don't kill her too fast, her abilities need to hit you in order to Submerge the Demonsbreath Crucible.
step
kill Cordana Felsong##95888 |q 39341/3
|tip Use the Vault of the Wardens dungeon guide to accomplish this.
step
talk Deucus Valdera##92458
|tip Inside the building.
turnin Demon's Bile##39341 |goto Dalaran L/10 41.32,33.41
turnin Bendy Glass Tubes##39343 |goto Dalaran L/10 41.32,33.41
accept Going Underground##39344 |goto Dalaran L/10 41.32,33.41
step
Follow the path |goto Dalaran L/11 59.79,39.17 < 15 |walk
talk Ms. Xiulan##101492
Tell her _"Mum."_
Talk to Ms. Xiulan |q 39344/1 |goto Dalaran L/11 71.34,19.67
step
talk Ms. Xiulan##101492
turnin Going Underground##39344 |goto 71.34,19.67
accept The Price of the Black Market##39342 |goto 71.34,19.67
step
collect Blood of Sargeras##124124 |q 39342/2
|tip You can get these as rewards for certain world quests or killing dungeon bosses.
|tip Use the "World Quests" guide and dungeon guides to accomplish this.
|tip You can also get them by gathering with gathering professions at rank 2 or higher.
|tip Use the Farming guides to accomplish this.
step
collect 5 Yseralline Seed##128304 |q 39342
|tip You can also get them by gathering herbs, if you have Herbalism.
|tip Use the Herbalism Farming guides to accomplish this.
|tip You can also purchase them from the Auction House.
step
collect 5 Fjarnskaggl##124104 |q 39342
|tip Use the farming guide for Fjarnskaggl to accomplish this, if you have Herbalism.
|tip You can also purchase them from the Auction House.
step
talk Patricia Egan##92457
|tip Inside the building.
buy 1 Crystal Vial##3371 |n
collect 1 Crystal Vial##3371 |goto Dalaran L/10 42.18,32.31 |q 39342
step
click Dalaran Alchemy Station
_<Create 1 Ancient Mana Potion>_
|tip Save the potion you create.
collect Ancient Mana Potion##127835 |goto 41.41,33.41 |q 39342
step
click Dalaran Alchemy Station
_<Create 1 Skaggldrynk>_
|tip Save the potion you create.
collect Skaggldrynk##127840 |goto 41.41,33.41 |q 39342
step
talk Fialla Sweetberry##96784
buy 5 Kaldorei Ginger Wine##128833 |q 39342/3 |goto 53.01,34.74
buy 5 Moist Azsunian Feta##128764 |q 39342/4 |goto 53.06,34.74
step
Drink the Skaggldrynk Potion |use Skaggldrynk##127840
|tip Inside the building.
talk Archmage Khadgar##90417
collect Silver Hair of Khadgar##136723 |q 39342/1 |goto 28.51,48.35
step
Follow the path |goto Dalaran L/11 59.79,39.17 < 15 |walk
talk Ms. Xiulan##101492
turnin The Price of the Black Market##39342 |goto Dalaran L/11 71.27,19.67
accept An Imprecise Burette##39333 |goto Dalaran L/11 71.27,19.67
step
talk Deucus Valdera##92458
|tip Inside the building.
turnin An Imprecise Burette##39333 |goto Dalaran L/10 41.32,33.41
accept Calibration Experts##39645 |goto Dalaran L/10 41.32,33.41 |only Alliance
accept Calibration Experts##39345 |goto Dalaran L/10 41.32,33.41 |only Horde
step
talk Myshalla Streambreeze##96485
|tip Inside the tree.
Watch the dialogue
Consult Myshalla Streambreeze |q 39645/1 |goto Feralas/0 46.83,42.84
|only Alliance
step
talk Krimple Proxmeasure##96490
Watch the dialogue
Consult Krimple Proxmeasure |q 39645/2 |goto Ironforge/0 66.42,54.01
|only Alliance
step
talk Tryks Pourtrue##96474
|tip Inside the building.
Watch the dialogue
Consult Tryks Pourtrue |q 39645/3 |goto The Cape of Stranglethorn/0 42.68,74.91
|only Alliance
step
Follow the path |goto Undercity/0 57.00,77.00 < 20 |walk
talk Emmara Marie##96368
Watch the dialogue
Consult Emmara Marie |q 39345/1 |goto Undercity/0 48.50,71.4
|only Horde
step
talk Jana Winterhoof##96470
Watch the dialogue
Consult Jana Winterhoof |q 39345/2 |goto Thunder Bluff/0 46.93,33.88
|only Horde
step
talk Tryks Pourtrue##96474
|tip Inside the building.
Watch the dialogue
Consult Tryks Pourtrue |q 39345/3 |goto The Cape of Stranglethorn/0 42.68,74.91
|only Horde
step
talk Deucus Valdera##92458
|tip Inside the building.
turnin Calibration Experts##39645 |goto Dalaran L/10 41.32,33.41 |only Alliance
turnin Calibration Experts##39345 |goto Dalaran L/10 41.32,33.41 |only Horde
accept Testing the Calibration##39346 |goto Dalaran L/10 41.32,33.41
step
talk Patricia Egan##92457
|tip Inside the building.
buy Recipe: Potion of Deadly Grace##127907 |n
Use the Recipe: Potion of Deadly Grace |use Recipe: Potion of Deadly Grace##127907
Learn the Rank 1 Recipe for Potion of Deadly Grace |learn Potion of Deadly Grace##188325 |goto 42.18,32.30
step
talk Patricia Egan##92457
|tip Inside the building.
buy Recipe: Potion of the Old War##127908 |n
Use the Recipe: Potion of the Old War |use Recipe: Potion of the Old War##127908
Learn the Rank 1 Recipe for Potion of the Old War |learn Potion of the Old War##188328 |goto 42.18,32.30
step
talk Patricia Egan##92457
|tip Inside the building.
buy Recipe: Unbending Potion##127909 |n
Use the Recipe: Unbending Potion |use Recipe: Unbending Potion##127909
Learn the Rank 1 Recipe for Unbending Potion |learn Unbending Potion##188331 |goto 42.18,32.30
step
talk Patricia Egan##92457
|tip Inside the building.
buy Recipe: Leytorrent Potion##127910 |n
Use the Recipe: Leytorrent Potion |use Recipe: Leytorrent Potion##127910
Learn the Rank 1 Recipe for Leytorrent Potion |learn Leytorrent Potion##188334 |goto 42.18,32.30
step
talk Patricia Egan##92457
|tip Inside the building.
buy 40 Crystal Vial##3371 |n
collect 40 Crystal Vial##3371 |goto Dalaran L/10 42.18,32.31 |q 39346
step
collect 80 Aethril##124101 |q 39346
|tip Use the Aethril farming guide to gather these, if you have Herbalism.
|tip You can also purchase them from the Auction House.
step
collect 80 Dreamleaf##124102 |q 39346
|tip Use the Dreamleaf farming guide to gather these, if you have Herbalism.
|tip You can also purchase them from the Auction House.
step
collect 80 Foxflower##124103 |q 39346
|tip Use the Foxflower farming guide to gather these, if you have Herbalism.
|tip You can also purchase them from the Auction House.
step
collect 80 Fjarnskaggl##124104 |q 39346
|tip Use the Fjarnskaggl farming guide to gather these, if you have Herbalism.
|tip You can also purchase them from the Auction House.
step
collect 80 Starlight Rose##124105 |q 39346
|tip Use the Starlight Rose farming guide to gather these, if you have Herbalism.
|tip You can also purchase them from the Auction House.
step
click Dalaran Alchemy Station
_<Create 10 Potion of Deadly Grace>_
collect 10 Potion of Deadly Grace##127843 |q 39346/1 |goto 41.41,33.41
step
click Dalaran Alchemy Station
_<Create 10 Potion of the Old War>_
collect 10 Potion of the Old War##127844 |q 39346/2 |goto 41.41,33.41
step
click Dalaran Alchemy Station
_<Create 10 Unbending Potion>_
collect 10 Unbending Potion##127845 |q 39346/3 |goto 41.41,33.41
step
click Dalaran Alchemy Station
_<Create 10 Leytorrent Potion>_
collect 10 Leytorrent Potion##127846 |q 39346/4 |goto 41.41,33.41
step
talk Deucus Valdera##92458
|tip Inside the building.
turnin Testing the Calibration##39346 |goto 41.32,33.41
accept Channeling Our Efforts##39347 |goto 41.32,33.41
step
talk Alard Schmied##92183
|tip Inside the building.
turnin Channeling Our Efforts##39347 |goto 44.17,28.71
accept The Prime Ingredient##39348 |goto 44.17,28.71
accept Heavy, But Helpful##39349 |goto 44.17,28.71
accept A Hope in Helheim##39350 |goto 44.17,28.71
step
talk Patricia Egan##92457
|tip Inside the building.
buy 1 Recipe: Flask of the Seventh Demon##127912 |n
Use the Recipe: Flask of the Seventh Demon |use Recipe: Flask of the Seventh Demon##127912
Learn the Rank 1 Recipe for Flask of the Seventh Demon |learn Flask of the Seventh Demon##188340 |goto 42.18,32.30
step
talk Patricia Egan##92457
|tip Inside the building.
buy 1 Recipe: Flask of the Countless Armies##127913 |n
Use the Recipe: Flask of the Countless Armies |use Recipe: Flask of the Countless Armies##127913
Learn the Rank 1 Recipe for Flask of the Countless Armies |learn Flask of the Countless Armies##188343 |goto 42.18,32.30
step
talk Patricia Egan##92457
|tip Inside the building.
buy 1 Recipe: Flask of Ten Thousand Scars##127914 |n
Use the Recipe: Flask of Ten Thousand Scars |use Recipe: Flask of Ten Thousand Scars##127914
Learn the Rank 1 Recipe for Flask of Ten Thousand Scars |learn Flask of Ten Thousand Scars##188346 |goto 42.18,32.30
step
talk Patricia Egan##92457
|tip Inside the building.
buy 3 Crystal Vial##3371 |n
collect 3 Crystal Vial##3371 |goto 42.18,32.31 |q 39348
step
collect 20 Aethril##124101 |q 39348
|tip Use the Aethril farming guide to gather these, if you have Herbalism.
|tip You can also purchase them from the Auction House.
step
collect 10 Dreamleaf##124102 |q 39348
|tip Use the Dreamleaf farming guide to gather these, if you have Herbalism.
|tip You can also purchase them from the Auction House.
step
collect 20 Foxflower##124103 |q 39348
|tip Use the Foxflower farming guide to gather these, if you have Herbalism.
|tip You can also purchase them from the Auction House.
step
collect 10 Fjarnskaggl##124104 |q 39348
|tip Use the Fjarnskaggl farming guide to gather these, if you have Herbalism.
|tip You can also purchase them from the Auction House.
step
collect 21 Starlight Rose##124105 |q 39348
|tip Use the Starlight Rose farming guide to gather these, if you have Herbalism.
|tip You can also purchase them from the Auction House.
step
click Dalaran Alchemy Station
_<Create 1 Flask of the Seventh Demon>_
collect Flask of the Seventh Demon##127848 |q 39350/2 |goto 41.41,33.41
step
click Dalaran Alchemy Station
_<Create 1 Flask of the Countless Armies>_
collect Flask of the Countless Armies##127849 |q 39349/2 |goto 41.41,33.41
step
click Dalaran Alchemy Station
_<Create 1 Flask of Ten Thousand Scars>_
collect Flask of Ten Thousand Scars##127850 |q 39348/2 |goto 41.41,33.41
step
Enter the Black Rook Hold (Heroic) Dungeon |goto Black Rook Hold/1 |c |q 39349
|tip Use the Group Finder to enter the dungeon.
|tip You must complete the Heroic version of this dungeon.
step
Enter the Third Level of the Black Rook Hold Dungeon |goto Black Rook Hold/3 |c |q 39349
|tip Follow the group through the dungeon.
step
click Crate of Sabelite Sulfate##249460
collect Sabelite Sulfate##136812 |q 39349/1 |goto Black Rook Hold/3 16.42,59.56
step
kill Dantalionax##98970
|tip Use the Black Rook Hold dungeon guide to accomplish this.
Slay Dantalionax |q 39349/3
step
Enter the Maw of Souls (Heroic) Dungeon |goto Helmouth Cliffs/1 |c |q 39350
|tip Use the Group Finder to enter the dungeon.
|tip You must complete the Heroic version of this dungeon.
step
Enter the Third Level of the Maw of Souls Dungeon |goto Helmouth Cliffs/3 |c |q 39350
|tip Follow the group through the dungeon.
step
click Crate of Dragur Dust##249462
collect Dragur Dust##136819 |q 39350/1 |goto Helmouth Cliffs/3 21.38,56.00
step
kill Helya##96759
|tip Use the Maw of Souls dungeon guide to accomplish this.
Slay Helya |q 39350/3
step
collect Recipe: Flask of the Countless Armies##127932 |n
|tip You loot this from Helya in the Maw of Souls (Heroic) dungeon.
Use Recipe: Flask of the Countless Armies |use Recipe: Flask of the Countless Armies##127932
Learn the Rank 2 Recipe for Flask of the Countless Armies |learn Flask of the Countless Armies##188344
step
Enter the Halls of Valor (Heroic) Dungeon |goto Halls of Valor/2 |c |q 39348
|tip Use the Group Finder to enter the dungeon.
|tip You must complete the Heroic version of this dungeon.
step
Enter the Third Level of the Halls of Valor Dungeon |goto Halls of Valor/3 |c |q 39348
|tip Follow the group through the dungeon.
step
click Spoils##260526
collect Eternity Sand##136784 |q 39348/1 |goto Halls of Valor/3 51.35,85.60
step
kill Odyn##95676
|tip Use the Halls of Valor dungeon guide to accomplish this.
Defeat Odyn |q 39348/3
step
collect Recipe: Flask of Ten Thousand Scars##127933 |n
|tip You loot this from Odyn in the Halls of Valor (Heroic) dungeon.
Use Recipe: Flask of Ten Thousand Scars |use Recipe: Flask of Ten Thousand Scars##127933
Learn the Rank 2 Recipe for Flask of Ten Thousand Scars |learn Flask of Ten Thousand Scars##188347
step
talk Alard Schmied##92183
|tip Inside the building.
turnin The Prime Ingredient##39348 |goto Dalaran L/10 44.17,28.71
turnin Heavy, But Helpful##39349 |goto Dalaran L/10 44.17,28.71
turnin A Hope in Helheim##39350 |goto Dalaran L/10 44.17,28.71
accept Rage Fire##39351 |goto Dalaran L/10 44.17,28.71
step
_Enter the Emerald Nightmare Raid:_
|tip Use the Group Finder to enter the raid.
kill Nythendra##103160
|tip Enter the "Darkbough" raid.
collect Nythendra's Heart##136820 |q 39351/1
step
talk Alard Schmied##92183
|tip Inside the building.
turnin The Emerald Nightmare: Rage Fire##39351 |goto 44.17,28.68
accept In With the New##42081 |goto Dalaran L/10 44.15,28.71
step
talk Deucus Valdera##92458
|tip Inside the building.
turnin In With the New##42081 |goto 41.32,33.41
step
_Congratulations!_
You completed the Alchemy questline.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Alchemy\\Quest Guides\\Argus Alchemy Quest Line",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the Argus Alchemy quest line.",
startlevel=45.0,
condition_end=function() return completedq(48016) end,
condition_suggested=function() return skill('Legion Alchemy') > 0 and level >= 45 and not completedq(48016) end,
},[[
step
talk Deucus Valdera##92458
|tip Inside the building.
Learn the Alchemy Profession |complete skill("Alchemy")>=1 |goto Dalaran L/10 41.32,33.41
step
talk Alchemist Funen##125346
accept Limited Supplies##48002 |goto Krokuun/0 56.12,66.74
accept Tracking the Trackers##48013 |goto Krokuun/0 56.12,66.74
step
Follow the path |goto Krokuun/0 59.43,68.18 < 20 |only if walking
Follow the path |goto 59.75,61.38 < 30 |only if walking
kill 14 Felflame Scavenger##120638 |q 48013/1 |goto Krokuun/0 56.15,57.26
|tip These can be found all around this area.
step
Follow the path |goto Krokuun/0 59.53,60.95 < 30 |only if walking
Follow the path |goto 61.56,62.13 < 20 |only if walking
Go down the stairs |goto 63.13,62.10 < 20 |only if walking
Follow the path |goto 65.99,63.73 < 20 |only if walking
click Used Vial##272741
collect 12 Used Vial##151845 |q 48002/1 |goto Krokuun/0 68.56,68.35
|tip They are very tiny vials on the ground around this area.
step
Follow the path |goto Krokuun/0 65.92,63.65 < 20 |only if walking
Go up the stairs |goto 61.44,62.22 < 20 |only if walking
Follow the path |goto 59.20,68.32 < 20 |only if walking
talk Alchemist Funen##125346
turnin Limited Supplies##48002 |goto Krokuun/0 56.12,66.75
turnin Tracking the Trackers##48013 |goto Krokuun/0 56.12,66.75
accept Ascending Alchemy##48016 |goto Krokuun/0 56.12,66.75
step
collect 75 Astral Glory##151565 |q 48016/1
|tip Use the "Astral Glory" farming guide to accomplish this, if you have Herbalism.
|tip You can also purchase them from the Auction House.
Click here to load the "Astral Glory" farming guide |confirm |next "Profession Guides\\Herbalism\\Farming Guides\\Astral Glory"
step
collect 5 Primal Sargerite##151568 |q 48016/2
|tip You can get these as rewards for certain world quests, from gathering profession, or killing dungeon bosses.
|tip Use the "World Quests" guide and dungeon guides to accomplish this.
Click here to load the "World Quests" guide |confirm |next "Dailies Guides\\Legion\\Azsuna World Quests"
step
For the Infernal Alchemist Stone, you can either create it yourself, which requires completing the previous Alchemy Quest line to obtain the pattern, or you can buy it from the AH.
Click here to load the "Legion Alchemy Quest Line" guide |next "Profession Guides\\Alchemy\\Quest Guides\\Legion Alchemy Quest Line" |confirm |or
Click here to create it yourself |next "Alchemy Create" |confirm |or
Click here if you bought it from the AH |next "Alchemy AH" |confirm |or
step
label "Alchemy Create"
collect 1 Infernal Brimstone##124444 |future |q 48016
|tip These come from Brimstone Infernal world quests that require the Mining profession.
|tip Look on your world map in all of the Legion zones.
|tip The world quest will have a Mining icon.
|tip Use the "World Quests" dailies guide to accomplish this.
|tip You can also purchase them from the Auction House.
Click here to load the "World Quests" guide |confirm |next "Dailies Guides\\Legion\\Azsuna World Quests"
step
collect 5 Felwort##124106 |future |q 48016
|tip These come from Felwort world quests requiring the Herbalism profession.
|tip Look on your world map in all of the Legion zones.
|tip The world quest will have an Herbalism icon.
|tip Use the "World Quests" dailies guide to accomplish this.
|tip You can also purchase them from the Auction House.
Click here to load the "World Quests" guide |confirm |next "Dailies Guides\\Legion\\Azsuna World Quests"
step
collect 3 Blood of Sargeras##124124 |future |q 48016
|tip You can get these as rewards for certain world quests or killing dungeon bosses.
|tip Use the "World Quests" guide and dungeon guides to accomplish this.
|tip You can also get them by gathering with gathering professions at rank 2 or higher.
|tip Use the Farming guides for to accomplish this.
Click here to load the "World Quests" guide |confirm |next "Dailies Guides\\Legion\\Azsuna World Quests"
step
Open up your Alchemy spellbook
_<Create 1 Infernal Alchemist Stone>_
collect Infernal Alchemist Stone##188322 |q 48016/3
|next "Alchemy QuestC"
step
label "Alchemy AH"
collect Infernal Alchemist Stone##188322 |q 48016/3
|next "Alchemy QuestC"
step
label "Alchemy QuestC"
talk Alchemist Funen##125346
turnin Ascending Alchemy##48016 |goto Krokuun/0 56.12,66.74
step
_Congratulations!_
You completed the Argus Alchemy questline.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Archaeology\\Leveling Guides\\Archaeology 700-800",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Archaeology skill from 700-800.",
condition_end=function() return skill('Archaeology') >= 800 end,
condition_suggested=function() return skill('Archaeology') < 800 and level >= 5 end,
},[[
step
Reach Level 5 |ding 5
step
talk Dariness the Learned##93538 |only if not ZGV.InPhase('BFA')
talk Examiner Alerinda##122701 |only if ZGV.InPhase('BFA')
|tip Inside the building.
|tip She walks around this area.
Train Legion Archaeology |skillmax Archaeology,800 |goto Dalaran L/10 40.76,26.18 |only if not ZGV.InPhase('BFA')
Train Legion Archaeology |skillmax Archaeology,800 |goto Dazar'alor/1 32.23,36.12 |only if ZGV.InPhase('BFA')
step
Search for dig sites on your world map
|tip You can earn points from any dig site in the Broken Isles, Kul Tiras, or Zandalar continents.
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
Reach 800 Archaeology Skill |skill Archaeology,800
step
_Congratulations!_
You Reached 800 Archaeology Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Archaeology\\Quest Guides\\Legion Archaeology Quest Line",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the Legion Archaeology quest line.",
startlevel=45.0,
condition_end=function() return completedq(41191) end,
condition_suggested=function() return skill('Archaeology') > 0 and level >= 45 and not completedq(41191) end,
},[[
step
talk Dariness the Learned##93538
|tip She walks around inside this building.
Learn the Archaeology Profession |complete skill("Archaeology")>=1 |goto Dalaran L/10 40.85,26.28
step
Reach Level 45 |ding 45
|tip Use the Leveling guides to accomplish this.
step
Unlock World Quests |complete completedq(43341)
|tip Use the "World Quests" dailies guide to accomplish this.
step
label "Accept_Archaeology_Quest"
talk Dariness the Learned##93538
|tip She walks around inside this building.
|tip She offers a new quest every 2 weeks, and it seems random.
|tip If you already completed the available quest, just wait for a new quest to appear next week.
|tip They're not worth the time to complete them again.
accept Fragments of the Fjords##41158 |or |only if not completedq(41158) |next "Fragments_of_the_Fjords" |goto 40.85,26.28
accept Academic Exploration##41183 |or |only if not completedq(41183) |next "Academic_Exploration"|goto 40.85,26.28
accept Bits and Pieces##40857 |or |only if not completedq(40857) |next "Bits_and_Pieces" |goto 40.85,26.28
accept Fel Fragments##41167 |or |only if not completedq(41167) |next "Fel_Fragments" |goto 40.85,26.28
accept History of Highmountain##41186 |or |only if not completedq(41186) |next "History_of_Highmountain" |goto 40.85,26.28
accept One Step Closer##41164 |or |only if not completedq(41164) |next "One_Step_Closer" |goto 40.85,26.28
accept The Reliquary Calls##41171 |or |only if not completedq(41171) |next "The_Reliquary_Calls" |goto 40.85,26.28
accept Worth Its Weight##41174 |or |only if not completedq(41174) |next "Worth_Its_Weight" |goto 40.85,26.28
accept Goblin Archaeology##41177 |or |only if not completedq(41177) |next "Goblin_Archaeology" |goto 40.85,26.28
accept The Right Path##41192 |or |only if not completedq(41192) |next "The Right Path" |goto 40.85,26.28
accept Out of the Frying Pan##41161 |or |only if not completedq(41161) |next "Out of the Frying Pan" |goto 40.85,26.28
accept Unspeakable Power##41180 |or |only if not completedq(41180) |next "Unspeakable Power" |goto 40.85,26.28
accept A New Lead##41189 |or |only if not completedq(41189) |next "A New Lead" |goto 40.85,26.28
|next "Archaeology_Quests_Finished"
step
label "Fragments_of_the_Fjords"
Cross the bridge |goto Stormheim/0 56.72,51.17 < 20 |only if walking
Follow the path |goto Stormheim/0 52.34,53.75 < 30 |only if walking
talk Brann Bronzebeard##103484
turnin Fragments of the Fjords##41158 |goto Stormheim/0 52.19,52.67
accept Process of Elimination##41159 |goto Stormheim/0 52.19,52.67
step
Dig in Digsites in Stormheim:
|tip The digsites are random, and are shown as small shovel icons on the map.
Eliminate #5# Digsites |q 41159/1
step
Cross the bridge |goto 56.72,51.17 < 20 |only if walking
Follow the path |goto 52.34,53.75 < 30 |only if walking
talk Brann Bronzebeard##103484
turnin Process of Elimination##41159 |goto 52.19,52.67
accept The Gates of Valor##41802 |goto 52.19,52.67
step
Follow the road |goto 60.13,53.42 < 30 |only if walking
Continue following the road |goto 61.59,56.03 < 30 |only if walking
Cross the bridge |goto 64.35,60.38 < 30 |only if walking
Dig in Digsite around this area
collect Chipped Titan Disc Fragment##134083 |q 41802/1 |goto 67.27,64.80
step
Cross the bridge |goto 56.72,51.17 < 20 |only if walking
Follow the path |goto 52.34,53.75 < 30 |only if walking
talk Brann Bronzebeard##103484
turnin The Gates of Valor##41802 |goto 52.19,52.67
|next "Accept_Archaeology_Quest"
step
label "Academic_Exploration"
Follow the path up |goto Azsuna/0 46.12,43.89 < 20 |only if walking
talk Tae'thelan Bloodwatcher##103482
turnin Academic Exploration##41183 |goto Azsuna/0 47.50,42.55
accept Tried and True##41184 |goto Azsuna/0 47.50,42.55
step
Dig in Digsites in Azsuna:
|tip The digsites are random, and are shown as small shovel icons on the map.
collect 15 Azsunian Key Mold Piece##134117 |q 41184/1
step
Follow the path up |goto 46.12,43.89 < 20 |only if walking
talk Tae'thelan Bloodwatcher##103482
turnin Tried and True##41184 |goto 47.50,42.55
accept The Keys to Success##41185 |goto 47.50,42.55
step
talk Alard Schmied##92183
|tip Inside the building.
Tell him _"Alard, could you help me cast a new set of keys?"_
Bring the Mold to Alard Schmied |q 41185/1 |goto Dalaran L/10 44.16,28.69
step
Use the Melt Metal Bar ability
|tip It appears as a button on the screen.
Melt the Metal at Alard's Forge |q 41185/2 |goto 44.00,28.20
step
Use the Pour Slag ability
|tip It appears as a button on the screen.
Fill the Mold on Alard's Workbench |q 41185/3 |goto 45.75,28.67
step
Use the Cool Mold ability
|tip It appears as a button on the screen.
Cool the Mold in Alard's Quenching Trough |q 41185/4 |goto 44.73,29.91
step
Follow the path up |goto Azsuna/0 46.12,43.89 < 20 |only if walking
talk Tae'thelan Bloodwatcher##103482
turnin The Keys to Success##41185 |goto Azsuna/0 47.50,42.55
|next "Accept_Archaeology_Quest"
step
label "Bits_and_Pieces"
Cross the bridge |goto Stormheim/0 56.72,51.17 < 20 |only if walking
Follow the path |goto Stormheim/0 52.34,53.75 < 30 |only if walking
talk Brann Bronzebeard##103484
turnin Bits and Pieces##40857 |goto Stormheim/0 52.19,52.67
accept Corrupted Studies##41157 |goto Stormheim/0 52.19,52.67
step
Dig in Digsites in Stormheim:
|tip The digsites are random, and are shown as small shovel icons on the map.
collect 200 War of the Ancients Fragment##134082 |q 41157/1
step
Cross the bridge |goto 56.72,51.17 < 20 |only if walking
Follow the path |goto 52.34,53.75 < 30 |only if walking
talk Brann Bronzebeard##103484
turnin Corrupted Studies##41157 |goto 52.19,52.67
|next "Accept_Archaeology_Quest"
step
label "Fel_Fragments"
Follow the path |goto Val'sharah/0 55.00,74.44 < 30 |only if walking
Follow the road |goto Val'sharah/0 56.54,79.63 < 30 |only if walking
Continue following the road |goto Val'sharah/0 56.66,83.04 < 30 |only if walking
Follow the path |goto Val'sharah/0 57.91,86.62 < 30 |only if walking
talk Brann Bronzebeard##103484
|tip He walks around on this part of the beach.
turnin Fel Fragments##41167 |goto Val'sharah/0 61.80,87.90
accept The Purple Hills of Eredath##41168 |goto Val'sharah/0 61.80,87.90
step
Dig in Digsites in Val'sharah:
|tip The digsites are random, and are shown as small shovel icons on the map.
collect 360 Page from The Purple Hills of Eredath##134087 |q 41168
step
Use the Purple Hills of Eredath |use The Purple Hills of Eredath##134087
|tip Use it repeatedly.
collect 9 Chapter from The Purple Hills of Mac'Are##134088 |q 41168
step
Use the Chapter from The Purple Hills of Mac'Are |use Chapter from The Purple Hills of Mac'Are##134088
|tip Use it repeatedly.
collect The Purple Hills of Eredath##134089 |q 41168/1
step
Follow the path |goto 55.00,74.44 < 30 |only if walking
Follow the road |goto 56.54,79.63 < 30 |only if walking
Continue following the road |goto 56.66,83.04 < 30 |only if walking
Follow the path |goto 57.91,86.62 < 30 |only if walking
talk Brann Bronzebeard##103484
|tip He walks around on this part of the beach.
turnin The Purple Hills of Eredath##41168 |goto 61.80,87.90
accept Through the Fog##41169 |goto 61.80,87.90
step
Enter the Darkheart Thicket Dungeon:
|tip Use the Group Finder to enter the dungeon.
kill Shade of Xavius##99192
|tip Use the "Darkheart Thicket" dungeon guide to accomplish this.
collect Final Chapter of The Purple Hills of Eredath##134090 |q 42742/1
collect Crumbling Titan Disc Piece##134091 |q 42742/2
step
Follow the path |goto 55.00,74.44 < 30 |only if walking
Follow the road |goto 56.54,79.63 < 30 |only if walking
Continue following the road |goto 56.66,83.04 < 30 |only if walking
Follow the path |goto 57.91,86.62 < 30 |only if walking
talk Brann Bronzebeard##103484
|tip He walks around on this part of the beach.
turnin Through the Fog##41169 |goto 61.80,87.90
|next "Accept_Archaeology_Quest"
step
label "History_of_Highmountain"
talk Lessah Moonwater##103485
turnin History of Highmountain##41186 |goto Thunder Totem/0 48.59,44.57 |region thunder_totem_circle_platform
accept Surveying Student##41187 |goto Thunder Totem/0 48.59,44.57 |region thunder_totem_circle_platform
step
Dig in Digsites in Highmountain:
|tip The digsites are random, and are shown as small shovel icons on the map.
Use the Archaeologist's Whistle to Summon Luron |use Archaeologist's Whistle##136372
|tip He sometimes disappears, so use this to summon him before you start digging in digsites.
Complete #20# Successful Surveys with Luron Present |q 41187/1
step
talk Lessah Moonwater##103485
turnin Surveying Student##41187 |goto 48.59,44.57 |region thunder_totem_circle_platform
accept Misdirected##41188 |goto 48.59,44.57 |region thunder_totem_circle_platform
step
Enter the Neltharion's Lair Dungeon:
|tip Use the Group Finder to enter the dungeon.
kill Dargrul##91007 |q 41188/1
|tip Use the "Neltharion's Lair" dungeon guide to accomplish this.
click Ancient Highmountain Artifact##247500
|tip It looks like a spear leaning up against a rock near Dargrul.
collect Ancient Highmountain Artifact##134093 |q 41188/2
step
talk Lessah Moonwater##103485
turnin Misdirected##41188 |goto 48.59,44.57 |region thunder_totem_circle_platform
|next "Accept_Archaeology_Quest"
step
label "One_Step_Closer"
Follow the path |goto Suramar/0 29.14,47.97 |only if walking
Follow the path |goto Suramar/0 26.95,50.30 |only if walking
Follow the path |goto Suramar/0 22.96,59.98 |only if walking
Follow the path |goto Suramar/0 24.15,64.03 |only if walking
Follow the path |goto Suramar/0 25.92,67.82 |only if walking
talk Brann Bronzebeard##103484
turnin One Step Closer##41164 |goto Suramar/0 27.05,70.15
accept Deciphering Demonology##41165 |goto Suramar/0 27.05,70.15
step
Dig in Digsites in Suramar:
|tip The digsites are random, and are shown as small shovel icons on the map.
collect 5 Chamber Key Fragment##134085 |q 41165/2
Restore #5# Artifacts |q 41165/1
|tip You can accomplish this by opening up your Archaeology and solving your fragments and the crating those artifacts.
step
Follow the path |goto Suramar/0 29.14,47.97 |only if walking
Follow the path |goto Suramar/0 26.95,50.30 |only if walking
Follow the path |goto Suramar/0 22.96,59.98 |only if walking
Follow the path |goto Suramar/0 24.15,64.03 |only if walking
Follow the path |goto Suramar/0 25.92,67.82 |only if walking
talk Brann Bronzebeard##103484
turnin Deciphering Demonology##41165 |goto Suramar/0 27.05,70.15
accept Dark Secrets##41166 |goto Suramar/0 27.05,70.15
step
talk Brann Bronzebeard##103484
Tell him _"I'm ready. Brann Let's go."_
Meet up with Brann |q 41166/1 |goto Suramar/0 59.32,42.89
step
Follow the path |goto Suramar/35 49.07,68.69
Follow the path |goto 58.43,61.75
Follow the path |goto 53.52,43.92
Follow the path |goto 63.07,35.67
kill Catacombs Guardian##104343
Protect Brann |q 41166/2 |goto Suramar/35 58.43,17.81
step
Wait for the purple line to disappear from inbetween one set of pillars here and then run through
click Nightborne Artifact Cache##248554
collect Ancient Vial##136398 |q 41166/3 |goto Suramar/35 56.31,16.39
step
click Nightborne Artifact Cache##248554
collect Dusty Disc Fragment##136397 |q 41166/4 |goto Suramar/35 58.80,17.08
step
talk Brann Bronzebeard##103484
turnin Dark Secrets##41166 |goto Suramar/35 58.80,17.08
|next "Accept_Archaeology_Quest"
step
label "The_Reliquary_Calls"
Follow the path up |goto Azsuna/0 46.12,43.89 < 20 |only if walking
talk Tae'thelan Bloodwatcher##103482
turnin The Reliquary Calls##41171 |goto Azsuna/0 47.50,42.55
accept Echoes of My Ancestors##41172 |goto Azsuna/0 47.50,42.55
step
Dig in Digsites in Azsuna:
|tip The digsites are random, and are shown as small shovel icons on the map.
kill Angry Highborne Spirit##102777+
|tip They have a chance to spawn when you dig.
Obtain Highborne Archaeology Fragments
collect Ancient Suramar Scroll##130903+ |n
_Open Your Achaeology Crafting Panel:_
Solve Highborne Artifacts
Complete #25# Highborne Artifacts |q 41172/1
step
Follow the path up |goto 46.12,43.89 < 20 |only if walking
talk Tae'thelan Bloodwatcher##103482
turnin Echoes of My Ancestors##41172 |goto 47.50,42.55
accept A Beacon of Hope##41173 |goto 47.50,42.55
step
Follow the road |goto 40.60,12.31 < 30 |only if walking
Dig in the Digsite around this area
collect Ancient Highborne Artifact##134108 |q 41173/1 |goto 38.16,16.24
step
Follow the path up |goto 46.12,43.89 < 20 |only if walking
talk Tae'thelan Bloodwatcher##103482
turnin A Beacon of Hope##41173 |goto 47.50,42.55
|next "Accept_Archaeology_Quest"
step
label "Worth_Its_Weight"
Follow the path |goto Suramar/0 34.97,51.16 < 30 |only if walking
Follow the path up |goto Suramar/0 34.07,54.36 < 20 |only if walking
Follow the path |goto Suramar/0 33.02,56.85 < 30 |only if walking
Follow the path |goto Suramar/0 34.95,58.82 < 30 |only if walking
Follow the path |goto Suramar/0 37.96,62.77 < 30 |only if walking
Follow the road |goto Suramar/0 36.82,85.93 < 30 |only if walking
Follow the path |goto Suramar/0 40.86,78.83 < 30 |only if walking
Follow the path |goto Suramar/0 40.16,82.61 < 30 |only if walking
Continue following the path |goto Suramar/0 39.63,84.92 < 30 |only if walking
Follow the path |goto Suramar/0 37.43,86.32 < 30 |only if walking
Follow the path |goto Suramar/0 36.73,90.02 < 30 |only if walking
Enter the cave |goto Suramar/0 38.14,90.64 < 15 |walk
talk Tae'thelan Bloodwatcher##103482
turnin Worth Its Weight##41174 |goto Suramar/0 38.20,90.08
accept Fit for an Elven Queen##41175 |goto Suramar/0 38.20,90.08
step
_Using the Suramar Questing Guide:_
|tip Use the Suramar questing guide to complete quests until you complete the quest titled "Vengeance for Margaux".
|tip This is the quest when you unlock the portal to Twilight Vineyard.
Complete the "Vengeance for Margaux" Quest in Suramar |complete completedq(44084)
step
Obtain the Rocfeather Skyhorn Kite |toy Rocfeather Skyhorn Kite##131811
|tip Use the "Rocfeather Skyhorn Kite" guide to accomplish this.
step
Travel to the Twilight Vineyard |goto 64.04,60.80 < 50 |c |q 41175
step
Jump off here and use your Rocfeather Skyhorn Kite |goto 63.68,61.16 |n
Start Gliding Southwest |goto 63.68,61.16 > 50 |noway |c |q 41175
step
click Crown of Mavrana Mooncrest##247615
|tip Inside the building, right next to the entrance.
|tip Glide right into the building, there's no NPC's inside that will detect your disguise.
Collect the Crown of Mavrana Mooncrest |q 41175/1 |goto 61.05,59.98
step
Follow the path |goto 34.97,51.16 < 30 |only if walking
Follow the path up |goto 34.07,54.36 < 20 |only if walking
Follow the path |goto 33.02,56.85 < 30 |only if walking
Follow the path |goto 34.95,58.82 < 30 |only if walking
Follow the path |goto 37.96,62.77 < 30 |only if walking
Follow the road |goto 36.82,85.93 < 30 |only if walking
Follow the path |goto 40.86,78.83 < 30 |only if walking
Follow the path |goto 40.16,82.61 < 30 |only if walking
Continue following the path |goto 39.63,84.92 < 30 |only if walking
Follow the path |goto 37.43,86.32 < 30 |only if walking
Follow the path |goto 36.73,90.02 < 30 |only if walking
Enter the cave |goto 38.14,90.64 < 15 |walk
talk Tae'thelan Bloodwatcher##103482
turnin Fit for an Elven Queen##41175 |goto 38.20,90.08
accept Sifting Through the Rubble##41176 |goto 38.20,90.08
step
Dig in Digsites in Suramar:
|tip The digsites are random, and are shown as small shovel icons on the map.
collect 6 Jewel of Aellis##134114 |q 41176/1
step
Follow the path |goto 34.97,51.16 < 30 |only if walking
Follow the path up |goto 34.07,54.36 < 20 |only if walking
Follow the path |goto 33.02,56.85 < 30 |only if walking
Follow the path |goto 34.95,58.82 < 30 |only if walking
Follow the path |goto 37.96,62.77 < 30 |only if walking
Follow the road |goto 36.82,85.93 < 30 |only if walking
Follow the path |goto 40.86,78.83 < 30 |only if walking
Follow the path |goto 40.16,82.61 < 30 |only if walking
Continue following the path |goto 39.63,84.92 < 30 |only if walking
Follow the path |goto 37.43,86.32 < 30 |only if walking
Follow the path |goto 36.73,90.02 < 30 |only if walking
Enter the cave |goto 38.14,90.64 < 15 |walk
talk Tae'thelan Bloodwatcher##103482
turnin Sifting Through the Rubble##41176 |goto 38.20,90.08
|next "Accept_Archaeology_Quest"
step
label "Goblin_Archaeology"
Follow the path |goto Val'sharah/0 53.76,73.68 < 15 |only if walking
Follow the path |goto 51.10,76.26 , 15 |only if walking
Follow the path |goto 49.80,78.74 < 15 |only if walking
Follow the path up |goto 48.04,77.74 < 15 |only if walking
Continue following the path |goto 45.51,80.87 < 15 |only if walking
Follow the path down |goto 42.20,80.89 < 15 |only if walking
Follow the path down |goto 39.81,82.19 < 15 |only if walking
talk Tae'thelan Bloodwatcher##103482
turnin Goblin Archaeology##41177 |goto 38.92,81.64
accept Explosive Results##41178 |goto 38.92,81.64
step
click Archaeology Dig Site##247616
|tip These look like piles of rocks around this area.
click Highborne Archaeology Fragment##247872
|tip When clicking these Disturbed Fragment Eater will periodically spawn, these can also drop the Freed Artifact Fragment needed for this quest.
collect 500 Freed Artifact Fragment##134115 |q 41178/1 |goto 50.23,73.16
step
Follow the path |goto 49.80,78.74 < 15 |only if walking
Follow the path up |goto 48.04,77.74 < 15 |only if walking
Continue following the path |goto 45.51,80.87 < 15 |only if walking
Follow the path down |goto 42.20,80.89 < 15 |only if walking
Follow the path down |goto 39.81,82.19 < 15 |only if walking
talk Tae'thelan Bloodwatcher##103482
turnin Explosive Results##41178 |goto 38.92,81.64
accept What Once Was Lost##41179 |goto 38.92,81.64
step
Follow the path |goto 42.94,59.04 < 15 |only if walking
Continue following the path |goto 45.37,57.55 < 15 |only if walking
Follow the path |goto 51.57,50.62 < 15 |only if walking
Follow the path down |goto 50.73,49.75 < 15 |only if walking
Continue following the path down |goto 49.65,47.01 < 15 |only if walking
Enter the cave |goto 49.11,47.29 < 10 |walk
Click the Encased Artifacts around the cave
Find the Lost Artiact |q 41179/1 |goto 49.26,49.05
step
Click the Black Rook Chest that appears
turnin What Once Was Lost##41179
|next "Accept_Archaeology_Quest"
step
label "The Right Path"
talk Lessah Moonwater##103485
turnin The Right Path##41192 |goto Thunder Totem/0 45.90,45.04
accept Laying to Rest##41193 |goto Thunder Totem/0 45.90,45.04
step
Dig in Digsites in Highmountain:
|tip The digsites are random, and are shown as small shovel icons on the map.
collect 600 Bone Fragment of Eche'ro##134095 |q 41193/1
step
Follow the path |goto Thunder Totem/0 55.99,55.20 < 20 |only if walking
Enter the cave |goto Thunder Totem/0 62.35,48.13
talk Lessah Moonwater##103485
Tell her "Here are remaining bone fragments."
Watch the Dialogue
Observe the Burial Ceremony |q 41193/2 |goto Thunder Totem/0 64.70,50.13
step
talk Lessah Moonwater##103485
turnin Laying to Rest##41193 |goto Thunder Totem/0 64.70,50.13
|next "Accept_Archaeology_Quest"
step
label "Out of the Frying Pan"
talk Brann Bronzebeard##103484
turnin Out of the Frying Pan##41161 |goto Azsuna/0 39.10,38.69
accept And Into the Fel Fire##41162 |goto Azsuna/0 39.10,38.69
step
Dig in Digsites in Azsuna
|tip The digsites are random, and are shown as small shovel icons on the map.
kill Wyrmtongue Collector##102778+
|tip These appear periodically when looting the Archaeology finds.
|tip You can also get an item from these finds that can summon a Wyrmtongue Collector that you can kill.
collect 10 Part of the Infernal Device##134084 |q 41162/1
step
talk Brann Bronzebeard##103484
turnin And Into the Fel Fire##41162 |goto Azsuna/0 39.10,38.69
accept The Apocalypse Bringer##41163 |goto Azsuna/0 39.10,38.69
step
talk Brann Bronzebeard##103484
Tell him _"Start the device, Brann"_
Follow Brann |goto Azsuna/0 39.24,37.36
Have Brann activate the device |q 41163/1 |goto 39.24,37.36
step
kill Wyrmy Tunkins##103515
|tip It will come out of the device once activated by Brann.
Defeat the Wyrmy Tunkins |q 41163/2 |goto Azsuna/0 39.24,37.36
step
talk Brann Bronzebeard##103484
turnin The Apocalypse Bringer##41163 |goto Azsuna/0 39.10,38.69
|next "Accept_Archaeology_Quest"
step
label "Unspeakable Power"
Follow the path |goto Suramar/0 34.97,51.16 < 30 |only if walking
Follow the path up |goto Suramar/0 34.07,54.36 < 20 |only if walking
Follow the path |goto Suramar/0 33.02,56.85 < 30 |only if walking
Follow the path |goto Suramar/0 34.95,58.82 < 30 |only if walking
Follow the path |goto Suramar/0 37.96,62.77 < 30 |only if walking
Follow the road |goto Suramar/0 36.82,85.93 < 30 |only if walking
Follow the path |goto Suramar/0 40.86,78.83 < 30 |only if walking
Follow the path |goto Suramar/0 40.16,82.61 < 30 |only if walking
Continue following the path |goto Suramar/0 39.63,84.92 < 30 |only if walking
Follow the path |goto Suramar/0 37.43,86.32 < 30 |only if walking
Follow the path |goto Suramar/0 36.73,90.02 < 30 |only if walking
Enter the cave |goto Suramar/0 38.14,90.64 < 15 |walk
talk Tae'thelan Bloodwatcher##103482
turnin Unspeakable Power##41180 |goto Suramar/0 38.20,90.08
accept Narrowing Down##41181 |goto Suramar/0 38.20,90.08
step
Dig in Digsites in Suramar
|tip The digsites are random, and are shown as small shovel icons on the map.
kill Angry Highborne Spirit##102777+
|tip These appear periodically when looting the Archaeology finds.
collect 10 Tattered Highborne Scroll##134116 |q 41181/1
step
Follow the path |goto 34.97,51.16 < 30 |only if walking
Follow the path up |goto 34.07,54.36 < 20 |only if walking
Follow the path |goto 33.02,56.85 < 30 |only if walking
Follow the path |goto 34.95,58.82 < 30 |only if walking
Follow the path |goto 37.96,62.77 < 30 |only if walking
Follow the road |goto 36.82,85.93 < 30 |only if walking
Follow the path |goto 40.86,78.83 < 30 |only if walking
Follow the path |goto 40.16,82.61 < 30 |only if walking
Continue following the path |goto 39.63,84.92 < 30 |only if walking
Follow the path |goto 37.43,86.32 < 30 |only if walking
Follow the path |goto 36.73,90.02 < 30 |only if walking
Enter the cave |goto 38.14,90.64 < 15 |walk
talk Tae'thelan Bloodwatcher##103482
turnin Narrowing Down##41181 |goto Suramar/0 38.20,90.08
accept Uncovering the Orb of Sciallax##41182 |goto Suramar/0 38.20,90.08
step
talk Tae'thelan Bloodwatcher##103482
Tell him: _"I'm ready to go."_
Meet with Tae'thelan |q 41182/1 |goto Suramar/0 59.31,42.95
step
Follow Tae'thelan into the cave
click the Encased Orb
Plant the explosives |q 41182/2 |goto Suramar/35 44.19,72.22
step
talk Tae'thelan Bloodwatcher##103482
turnin Uncovering the Orb of Sciallax##41182 |goto Suramar/35 44.37,70.64
|next "Accept_Archaeology_Quest"
step
label "A New Lead"
talk Lessah Moonwater##103485
turnin A New Lead##41189 |goto Thunder Totem/0 45.90,44.93
accept Crystal Eyes##41190 |goto Thunder Totem/0 45.90,44.93
step
collect 6 Highmountain Ritual-Stones##130904
You can either buy these from the AH or you can survey the digsites in Highmountain
|tip The digsites are random, and are shown as small shovel icons on the map.
|only if not completedq(41190)
step
Enter the cave |goto Highmountain/0 41.65,46.99
click the Mucksnout Den Crystal##247345
"_Place the three Highmountain Ritual-Stones into the crystal._"
Interact with the Mucksnout Den Crystal |q 41190/2 |goto Highmountain/16 50.50,87.79
step
Enter the cave |goto Highmountain/0 48.06,33.74
click the Rockcrawler Chasm Crystal##247343
"_Place the three Highmountain Ritual-Stones into the crystal._"
Interact with the Rockcrawler Chasm Crystal |q 41190/1 |goto Highmountain/0 48.38,34.62
step
talk Lessah Moonwater##103485
turnin Crystal Eyes##41190 |goto Thunder Totem/0 45.90,44.93
accept Drogbar Deception##41191 |goto Thunder Totem/0 45.90,44.93
step
Enter the cave |goto Highmountain/0 38.38,61.32
Follow the path |goto Highmountain/20 67.61,66.26
Continue following the path |goto 67.76,45.70
Continue following the path |goto 57.09,36.42
Continue following the path |goto 41.27,59.62
Follow the path up |goto Highmountain/21 42.92,64.67
kill Gelmogg##95881
collect Ancient Highmountain Necklace##134094 |q 41191/1 |goto 46.67,34.19
step
talk Lessah Moonwater##103485
turnin Drogbar Deception##41191 |goto Thunder Totem/0 45.90,44.93
|next "Accept_Archaeology_Quest"
step
label "Archaeology_Quests_Finished"
_Congratulations!_
You completed the Archaeology questline.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Blacksmithing\\Leveling Guides\\Legion Blacksmithing 1-100",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Legion Blacksmithing skill from 1-100.",
condition_end=function() return skill('Legion Blacksmithing') >= 100 end,
condition_suggested=function() return skill('Legion Blacksmithing') > 0 and skill('Legion Blacksmithing') < 100 end,
},[[
step
Load the "Legion Blacksmithing Quest Line" Guide |confirm |next "Profession Guides\\Blacksmithing\\Quest Guides\\Legion Blacksmithing Quest Line"
|tip Click the line above to load the guide.
Complete the Legion Blacksmithing Quest Line |q 38533 |future
step
collect 140 Felslate##123919
|tip Use the "Leystone Ore & Felslate (Mining Route)" guide to gather them, if you have Mining.
|tip You can also purchase them from the Auction House.
|only if skill("Legion Blacksmithing") < 100
step
collect 80 Leystone Ore##123918
|tip Use the "Leystone Ore & Felslate (Mining Route)" guide to gather them, if you have Mining.
|tip You can also purchase them from the Auction House.
|only if skill("Legion Blacksmithing") < 100
step
collect 20 Unbroken Tooth##124439
|tip These come from the Skinning profession.
|tip Use the "Stonehide Leather" or "Stormscale" farming guides to gather them.
|tip You can also purchase them from the Auction House.
|only if skill("Legion Blacksmithing") < 67
step
collect 26 Blood of Sargeras##124124
|tip These come from gathering professions.
|tip You can also get these from World Quests and Dungeon Bosses.
|only if skill("Legion Blacksmithing") < 100
step
talk Urael##92265
buy Recipe: Demonsteel Waistguard##123921 |n
use the Recipe: Demonsteel Waistguard##123921
learn Demonsteel Waistguard##182945 |goto Suramar/0 30.11,53.26
step
Open Your Blacksmithing Crafting Panel:
_<Create 60 Demonsteel Bar>_
Reach Level 65 Legion Blacksmithing |skill Legion Blacksmithing,65 |goto 29.84,53.27
step
Open Your Blacksmithing Crafting Panel:
_<Create 1 Demonsteel Waistguard>_
Reach Level 66 Legion Blacksmithing |skill Legion Blacksmithing,66 |goto 29.84,53.27
step
talk Muirn Ironhorn##92243
accept Demonsteel Waistguard##38536 |goto Highmountain/0 54.55,84.15
step
use the Recipe: Demonsteel Waistguard##123941
learn Demonsteel Waistguard##182975
|only if skill("Legion Blacksmithing") < 100
step
collect 500 Sightless Eyes |complete curcount(1149) >= 500
|tip These are gained by killing enemies in the Dalaran Sewers.
|tip You can Hire a Guard if you want to prevent other players from attacking you while you farm these.
|tip Speak with Raethan to hire a guard.
|only if skill("Legion Blacksmithing") < 100
step
talk Strap Bucklebolt##107760
|tip In the sewers, inside the building.
buy Recipe: Demonsteel Waistguard##123949 |n
use the Recipe: Demonsteel Waistguard##123949
learn Demonsteel Waistguard##182983 |goto Dalaran L/11 66.37,81.42
step
Open Your Blacksmithing Crafting Panel:
_<Create 12 Demonsteel Waistguard>_
Reach Level 100 Legion Blacksmithing |skill Legion Blacksmithing,100 |goto Dalaran L/10 44.04,28.31
step
_Congratulations!_
You Reached Level 100 Legion Blacksmithing Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Blacksmithing\\Quest Guides\\Legion Blacksmithing Quest Line",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the Legion Blacksmithing quest line.",
startlevel=10.0,
condition_end=function() return completedq(38533) end,
condition_suggested=function() return skill('Legion Blacksmithing') > 0 and level >= 10 and not completedq(38533) end,
},[[
step
talk Alard Schmied##92183
|tip Inside the building.
accept Strange New Ores##38499 |goto Dalaran L/10 44.15,28.71
step
collect 10 Leystone Ore##123918 |q 38499/1
|tip Use the "Leystone Ore & Felslate (Mining Route)" farming guide to accomplish this, if you have Mining.
|tip You can also purchase them from the Auction House.
step
talk Alard Schmied##92183
|tip Inside the building.
turnin Strange New Ores##38499 |goto 44.15,28.71
accept The Properties of Leystone##39681 |goto 44.15,28.71
step
Watch the dialogue
Observe Alard's Work |q 39681/1 |goto 44.15,28.71
step
talk Alard Schmied##97261
|tip Inside the building.
turnin The Properties of Leystone##39681 |goto 44.15,28.71
accept The Methods of the Nightfallen##38502 |goto 44.15,28.71
accept Hatecoil Hammerwork##38501 |goto 44.15,28.71
step
Follow the path |goto Azsuna/0 46.43,44.40 < 30 |only if walking
Follow the road |goto Azsuna/0 49.02,42.78 < 30 |only if walking
Cross the bridge |goto Azsuna/0 50.43,43.65 < 20 |only if walking
Enter the building |goto Azsuna/0 51.93,43.92 < 15 |walk
kill Ancient Sentry Construct##104640
|tip Downstairs inside the building.
collect Ancient Sentry Construct Memory Core##123976 |q 38502/1 |goto Azsuna/0 52.02,43.84
stickystart "Masterwork_Hatecoil_Pauldrons_Blacksmithing"
step
Leave the building |goto Azsuna/0 52.23,43.08 < 15 |walk
Kill enemies around this area
|tip The Hatecoil Harpooners won't drop the quest items.
collect Masterwork Hatecoil Breastplate##123971 |q 38501/1 |goto 54.36,42.63
step
label "Masterwork_Hatecoil_Pauldrons_Blacksmithing"
Kill enemies around this area
|tip The Hatecoil Harpooners won't drop the quest items.
collect Masterwork Hatecoil Pauldrons##123972 |q 38501/2 |goto 54.36,42.63
step
talk Alard Schmied##92183
|tip Inside the building.
turnin The Methods of the Nightfallen##38502 |goto Dalaran L/10 44.15,28.71
turnin Hatecoil Hammerwork##38501 |goto Dalaran L/10 44.15,28.71
step
talk Alard Schmied##92183
|tip Inside the building.
accept Engineers: Not COMPLETELY Useless##38505 |goto 44.15,28.71
step
talk Timofey Oshenko##92194
|tip Inside the building.
turnin Engineers: Not COMPLETELY Useless##38505 |goto 37.90,26.12
accept Chicken Scratch##38506 |goto 37.90,26.12
step
Watch the dialogue
collect Ancient Highborne Data Printout##123978 |q 38506/1 |goto 37.90,26.12
step
talk Professor Pallin##92195
|tip Inside the building.
turnin Chicken Scratch##38506 |goto 41.29,37.05
accept Secrets of Leysmithing##38507 |goto 41.29,37.05
step
talk Alard Schmied##92183
|tip Inside the building.
turnin Secrets of Leysmithing##38507 |goto 44.15,28.71
accept Nature Provides##38515 |goto 44.15,28.71
step
collect 10 Foxflower##124103 |q 38515
|tip Use the Foxflower farming guide to accomplish this, if you have Herbalism.
|tip You can also purchase them from the Auction House.
step
talk Alard Schmied##92183
|tip Inside the building.
turnin Nature Provides##38515 |goto 44.15,28.71
accept Leysmithing Mastery##38500 |goto 44.15,28.71
step
click Alard's Forge
_<Create 4 Leystone Bar>_
|tip Save the bars you create.
collect 4 Leystone Bar##124007 |goto 44.01,28.16 |q 38500
step
click Alard's Forge
_<Create 4 Heated Leystone Bar>_
|tip Save the bars you create.
collect 4 Heated Leystone Bar##128777 |goto 44.01,28.16 |q 38500
step
click Alard's Anvil
_<Create 1 Leystone Cuffplate>_
|tip Save the Leystone Cuffplate you create.
collect Leystone Cuffplate##124009 |goto 45.00,29.16 |q 38500
step
click Alard's Anvil
_<Create 1 Leystone Fingerguard>_
|tip Save the Leystone Fingerguard you create.
collect Leystone Fingerguard##124010 |goto 45.00,29.16 |q 38500
step
click Alard's Workbench
_<Create 1 Handcrafted Leystone Gauntlets>_
collect Handcrafted Leystone Gauntlets##124049 |q 38500/1 |goto 45.72,28.67
step
talk Alard Schmied##92183
|tip Inside the building.
turnin Leysmithing Mastery##38500 |goto 44.15,28.71
accept Flower-Pickers and Potion-Quaffers##38563 |goto 44.15,28.71
step
talk Kuhuine Tenderstride##92464
|tip Inside the building.
Ask her _"Alard at the blacksmith shop will need a regular supply of Foxflower. Do you have any?"_
Speak with Kuhuine Tenderstride |q 38563/2 |goto 43.00,33.37
step
talk Linzy Blackbolt##92456
|tip Inside the building.
Tell her _"Alard at the blacksmith shop will need a regular supply of Foxflower Flux. Can you make any?"_
Speak with Linzy Blackbolt |q 38563/1 |goto 42.01,31.80
step
talk Alard Schmied##92183
|tip Inside the building.
turnin Flower-Pickers and Potion-Quaffers##38563 |goto 44.15,28.71
step
talk Alard Schmied##92183
|tip Inside the building.
accept The Highmountain Smiths##38513 |goto 44.15,28.71
step
talk Imindril Spearsong##92184
buy Blacksmith Hammer##5956 |n
collect Blacksmith Hammer##5956 |goto 46.56,26.83 |q 38519 |future
step
talk Imindril Spearsong##92184
buy 3 Foxflower Flux##124436 |n
collect 3 Foxflower Flux##124436 |goto 46.56,26.83 |q 38519 |future
step
collect 24 Leystone Ore##123918 |q 38519 |future
|tip Use the "Leystone Ore & Felslate (Mining Route)" farming guide to gather these, if you have Mining.
|tip You can also purchase them from the Auction House.
step
Follow the path |goto Thunder Totem/0 50.81,45.57 < 30 |only if walking
Follow the path |goto Highmountain/0 50.83,64.38 < 30 |only if walking
Follow the path up |goto Highmountain/0 47.99,68.22 < 30 |only if walking
Follow the path up |goto Highmountain/0 48.10,69.01 < 20 |only if walking
Follow the path up |goto Highmountain/0 49.09,69.27 < 20 |only if walking
Follow the path up the mountain |goto Highmountain/0 48.27,70.64 < 20 |only if walking
Follow the path up |goto Highmountain/0 48.51,74.89 < 20 |only if walking
Follow the narrow path up |goto Highmountain/0 49.80,73.44 < 20 |only if walking
Continue following the path up |goto Highmountain/0 51.41,73.37 < 20 |only if walking
Follow the path up |goto Highmountain/0 50.76,76.11 < 20 |only if walking
Crossing the hanging bridge |goto Highmountain/0 49.89,79.69 < 20 |only if walking
Follow the path |goto Highmountain/0 51.89,83.50 < 20 |only if walking
Follow the path down |goto Highmountain/0 53.52,81.90 < 30 |only if walking
Follow the path |goto Highmountain/0 56.20,80.17 < 30 |only if walking
Follow the path down |goto Highmountain/0 56.21,81.79 < 20 |only if walking
Follow the path up |goto Highmountain/0 55.93,85.31 < 20 |only if walking
talk Poca Firemantle##98966
fpath Ironhorn Enclave |goto Highmountain/0 56.82,83.85
step
talk Barm Stonebreaker##92242
turnin The Highmountain Smiths##38513 |goto Highmountain/0 55.18,84.19
accept You Are Not Worthy##38514 |goto Highmountain/0 55.18,84.19
step
click Greenhoof's Anvil
_<Create 1 Leystone Gauntlets>_
Craft Leystone Gauntlets |q 38514/1 |goto 54.90,84.42
step
talk Barm Stonebreaker##92242
turnin You Are Not Worthy##38514 |goto 55.18,84.19
accept Ironhorn Leysmithing##39699 |goto 55.18,84.19
stickystart "Medium_Metal_Scraps_Blacksmithing"
stickystart "Large_Metal_Scraps_Blacksmithing"
step
click Small Metal Scraps##241633
|tip They look like pieces of metal on the ground around this area.
collect 5 Small Metal Scrap##124402 |goto 55.11,84.53 |q 39699
step
label "Medium_Metal_Scraps_Blacksmithing"
click Medium Metal Scraps##241634
|tip They look like pieces of metal on the ground around this area.
collect 2 Medium Metal Scrap##124403 |goto 55.11,84.53 |q 39699
step
label "Large_Metal_Scraps_Blacksmithing"
click Large Metal Scraps##241635
|tip They look like pieces of metal on the ground around this area.
collect 1 Large Metal Scrap##124404 |goto 55.11,84.53 |q 39699
step
click Greenhoof's Forge
_<Create 1 Large Heated Scrap Metal>_
collect Large Heated Scrap Metal##124407 |goto 54.99,84.75 |q 39699
step
click Greenhoof's Forge
_<Create 2 Medium Heated Scrap Metal>_
collect 2 Medium Heated Scrap Metal##124406 |goto 54.99,84.75 |q 39699
step
click Greenhoof's Forge
_<Create 5 Small Heated Scrap Metal>_
collect 5 Small Heated Scrap Metal##124405 |goto 54.99,84.75 |q 39699
step
click Greenhoof's Anvil
_<Create 1 Scrapmetal Cuffplate>_
collect Scrapmetal Cuffplate##124411 |q 39699/3 |goto 54.86,84.54
step
click Greenhoof's Anvil
_<Create 1 Scrapmetal Fingerplates>_
collect Scrapmetal Fingerplates##124408 |q 39699/4 |goto 54.86,84.54
step
click Greenhoof's Anvil
_<Create 1 Scrapmetal Handguard>_
collect Scrapmetal Handguard##124410 |q 39699/2 |goto 54.86,84.54
step
click Greenhoof's Anvil
_<Create 1 Scrapmetal Palmplate>_
collect Scrapmetal Palmplate##124409 |q 39699/1 |goto 54.86,84.54
step
talk Barm Stonebreaker##92242
turnin Ironhorn Leysmithing##39699 |goto 55.18,84.19
step
talk Thala Steeltotem##92245
|tip She walks around.
accept Grayheft##38519 |goto 54.95,84.49
step
Cross the bridge |goto 58.52,64.43 < 20 |only if walking
Follow the path up |goto 57.16,63.36 < 30 |only if walking
Follow the path up |goto 55.81,64.04 < 30 |only if walking
Follow the path up |goto 54.71,67.10 < 30 |only if walking
Follow the path up |goto 55.32,71.98 < 30 |only if walking
Follow the path up |goto 54.49,73.38 < 20 |only if walking
Continue following the path up |goto 54.31,75.10 < 20 |only if walking
Enter the cave |goto 53.48,76.08 < 20 |walk
Cross the bridge |goto 52.46,74.08 < 20 |walk
Jump down here |goto 51.67,73.14 < 10 |walk
kill Kubrul##93021
Retrieve Grayheft, Ancent Hammer of the Highmountain Tauren |q 38519/1 |goto 53.14,73.12
step
Follow the path up |goto 51.00,73.94 < 20 |walk
Continue up the path |goto 51.15,73.09 < 30 |walk
Cross the bridge |goto 51.95,73.04 < 20 |walk
Leave the cave |goto 53.48,76.08 < 20 |walk
Follow the path down |goto 54.06,75.86 < 20 |only if walking
Follow the path down |goto 54.81,72.34 < 20 |only if walking
Follow the path |goto 55.59,70.50 < 30 |only if walking
Follow the path |goto 54.58,66.42 < 30 |only if walking
Follow the path down |goto 56.21,63.62 < 30 |only if walking
Cross the bridge |goto 57.94,63.64 < 20 |only if walking
talk Thala Steeltotem##92245
|tip She walks around.
turnin Grayheft##38519 |goto 54.95,84.49
step
talk Barm Stonebreaker##92242
accept From One Master to Another##38518 |goto 55.18,84.20
step
talk Alard Schmied##92183
|tip Inside the building.
turnin From One Master to Another##38518 |goto Dalaran L/10 44.15,28.73
step
talk Alard Schmied##92183
|tip Inside the building.
accept Not Just Weapons and Armor##38522 |goto 44.15,28.73
step
click Alard's Forge
_<Create 4 Leystone Slag>_
collect 4 Leystone Slag##124418 |goto 44.04,28.14 |q 38522
step
click Alard's Quenching Trough
_<Create 4 Hard Leystone Bar>_
collect 4 Hard Leystone Bar##124419 |q 38522/1 |goto 44.73,29.87
step
click Alard's Anvil
_<Create 1 Leystone Shards>_
collect 24 Leystone Shard##124420 |goto 45.00,29.18 |q 38522
step
click Alard's Forge
_<Create 1 Lumps of Leystone Slag>_
collect 24 Lump of Leystone Slag##124421 |goto 44.04,28.14 |q 38522
step
click Alard's Quenching Trough
_<Create 1 Hard Leystone Ingots>_
collect 24 Hard Leystone Ingot##124422 |goto 44.73,29.87 |q 38522
step
click Alard's Forge
_<Create 24 Heated Hard Leystone Ingots>_
collect 24 Heated Hard Leystone Ingot##124423 |goto 44.04,28.14 |q 38522
step
click Alard's Anvil
_<Create 1 Hard Leystone Nail>_
collect 24 Hard Leystone Nail##124424 |q 38522/2 |goto 45.00,29.18
step
talk Alard Schmied##92183
|tip Inside the building.
turnin Not Just Weapons and Armor##38522 |goto 44.15,28.73
accept Leystone Hoofplates##38523 |goto 44.15,28.71
step
talk Mei Francis##92489
Tell her _"Can you fit these hoofplates on my mount?"_
|tip You must be mounted.
|tip Move onto the curb near her.
Watch the dialogue
Bring the Mount to Mei Francis |q 38523/1 |goto 57.65,42.08
step
talk Alard Schmied##92183
|tip Inside the building.
turnin Leystone Hoofplates##38523 |goto 44.15,28.73
step
talk Alard Schmied##92183
|tip Inside the building.
accept Legend of Black Rook Hold##39702 |goto 44.15,28.73
step
Follow the path |goto Val'sharah/0 40.50,59.10 < 30 |only if walking
Follow the path up |goto Val'sharah/0 38.48,57.29 < 20 |only if walking
Continue up the path |goto Val'sharah/0 37.71,55.82 < 30 |only if walking
Run up the stairs |goto Val'sharah/0 39.14,53.61 < 20 |only if walking
Run up the stairs |goto Val'sharah/0 39.77,53.04 < 20 |only if walking
Run down the stairs |goto Val'sharah/0 41.44,52.99 < 20 |only if walking
click Ancient Anvil##243969
kill Saris Swifthammer##96726
Find Saris Swifthammer |q 39702/1 |goto Val'sharah/0 42.08,52.02
step
Run up the stairs |goto 41.81,52.98 < 20 |only if walking
talk Saris Swifthammer##96763
turnin Legend of Black Rook Hold##39702 |goto 39.93,54.71
accept Between the Hammer...##39680 |goto 39.93,54.71
accept ...And the Anvil##39726 |goto 39.93,54.71
step
Run down the stairs |goto 40.19,53.04 < 20 |only if walking
Run down the stairs |goto 39.47,53.31 < 20 |only if walking
Follow the path down |goto 37.56,54.79 < 20 |only if walking
Enter the cave |goto 36.13,53.01 < 20 |walk
Follow the path down |goto 36.86,52.13 < 20 |walk
click Saris' Hammer##244000
collect Saris' Hammer##128745 |q 39680/1 |goto 38.14,54.55
step
Follow the path up |goto 37.55,52.89 < 20 |walk
Continue up the path |goto 36.73,52.14 < 20 |walk
Leave the cave |goto 36.13,53.01 < 20 |walk
Follow the path up |goto 36.24,53.95 < 20 |only if walking
Follow the path |goto 37.63,54.80 < 20 |only if walking
Run up the stairs |goto 39.14,53.61 < 20 |only if walking
Run up the stairs |goto 39.77,53.04 < 20 |only if walking
Kill enemies around this area
|tip The Servants of Ravencrest will not drop the quest items.
collect 5 Black Rook Breastplate##128751 |q 39726/1 |goto 41.04,53.01
step
talk Saris Swifthammer##96763
turnin Between the Hammer...##39680 |goto 39.93,54.71
turnin ...And the Anvil##39726 |goto 39.93,54.71
accept The Knowledge of Black Rook##39729 |goto 39.93,54.72
step
click Saris' Research##244001
collect Saris' Research##128746 |q 39729/1 |goto 39.86,54.81
step
talk Alard Schmied##92183
|tip Inside the building.
turnin The Knowledge of Black Rook##39729 |goto Dalaran L/10 44.13,28.74
accept A Sweet Bargain##38564 |goto Dalaran L/10 44.13,28.74
step
talk Glaciela Rimebang##92438
Speak with Glaciela Rimebang |q 38564/1 |goto 50.30,29.60
step
talk Aimee##92936
buy 20 Nightberry Truffle##124398 |n
collect 20 Nightberry Truffle##124398 |q 38564/2 |goto 50.85,29.09
step
clicknpc Glaciela Rimebang##92438
Speak with Glaciela Rimebang Again |q 38564/3 |goto 50.30,29.62
step
talk Alard Schmied##92183
|tip Inside the building.
turnin A Sweet Bargain##38564 |goto 44.15,28.73
accept Advanced Quenching##44449 |goto 44.15,28.73
step
click Alard's Forge
_<Create 2 Leystone Slag>_
collect 2 Leystone Slag##124393 |goto 44.04,28.14 |q 44449
step
click Alard's Quenching Trough
_<Create 2 Hard Leystone Bar>_
collect 2 Hard Leystone Bar##124394 |goto 44.73,29.87 |q 44449
step
click Alard's Forge
_<Create 2 Heated Hard Leystone Bar>_
collect 2 Heated Hard Leystone Bar##124395 |goto 44.04,28.14 |q 44449
step
click Alard's Anvil
_<Create 1 Dull Hard Leystone Armguards>_
collect Dull Hard Leystone Armguards##124396 |goto 45.00,29.18 |q 44449
step
click Alard's Whetstone
_<Create 1 Hard Leystone Armguards>_
collect Hard Leystone Armguards##124397 |q 44449/1 |goto 43.95,28.91
step
talk Alard Schmied##92183
|tip Inside the building.
turnin Advanced Quenching##44449 |goto 44.15,28.73
step
Reach Level 45 |ding 45
|tip Use the Leveling guides to accomplish this.
step
Unlock World Quests |complete completedq(43341)
|tip Use the "World Quests" dailies guide to accomplish this.
step
talk Alard Schmied##92183
|tip Inside the building.
accept Felsmith Nal'ryssa##38524 |goto 44.15,28.73
step
talk Imindril Spearsong##92184
buy 1 Foxflower Flux##124436 |n
collect 1 Foxflower Flux##124436 |goto 46.56,26.83 |q 38527 |future
stickystart "Felslate_Blacksmithing_Nalryssas_Technique"
step
collect 60 Leystone Ore##123918 |q 38527 |future
|tip Use the "Leystone Ore & Felslate (Mining Route)" guide to gather them, if you have Mining.
|tip You can also purchase them from the Auction House.
step
label "Felslate_Blacksmithing_Nalryssas_Technique"
collect 60 Felslate##123919 |q 38527 |future
|tip Use the "Leystone Ore & Felslate (Mining Route)" guide to gather them, if you have Mining.
|tip You can also purchase them from the Auction House.
step
Follow the path up |goto Suramar/0 32.96,48.34 < 20 |only if walking
Follow the path |goto Suramar/0 30.88,53.21 < 30 |only if walking
talk Felsmith Nal'ryssa##92264
|tip She walks around this small camp.
turnin Felsmith Nal'ryssa##38524 |goto Suramar/0 30.01,53.34
accept Part of the Team##38525 |goto Suramar/0 30.01,53.34
step
Follow the path down |goto 29.15,54.05 < 20 |only if walking
Continue down the path |goto 29.87,55.28 < 20 |only if walking
Follow the path |goto 29.00,57.32 < 20 |only if walking
Kill enemies around this area
kill Abhorrent Artificer##106339+
collect Legion Ammunition##141022 |n
click Fel Cannon##276245
|tip Use the Fel Cannon to shoot the enemies flying in the air.
Slay #40# Demons |q 38525/1 |goto 28.59,60.15
step
Follow the path up |goto 28.99,57.43 < 20 |only if walking
Continue up the path |goto 29.53,56.67 < 20 |only if walking
Follow the path up |goto 29.97,54.91 < 20 |only if walking
Follow the path |goto 29.23,53.78 < 20 |only if walking
talk Felsmith Nal'ryssa##92264
|tip She walks around this small camp.
turnin Part of the Team##38525 |goto 29.99,53.33
accept Smith Under Fire##38526 |goto 29.99,53.33
step
click Felsmith Forge
_<Create 2 Red-Hot Leystone Bar>_
|tip WARNING: The Red-Hot Leystone Bars become unusable after 20 seconds.
|tip Craft the items quickly.
collect 2 Red-Hot Leystone Bar##124426 |goto 29.85,53.27 |q 38526
step
click Felsmith Anvil
_<Create 2 Leystone Soleplate>_
|tip WARNING: The Red-Hot Leystone Bars become unusable after 20 seconds.
|tip Craft the items quickly.
collect 2 Leystone Soleplate##124430 |goto 29.83,53.34 |q 38526
step
click Felsmith Forge
_<Create 2 Red-Hot Leystone Bar>_
|tip WARNING: The Red-Hot Leystone Bars become unusable after 20 seconds.
|tip Craft the items quickly.
collect 2 Red-Hot Leystone Bar##124426 |goto 29.85,53.27 |q 38526
step
click Felsmith Anvil
_<Create 2 Leystone Shinplate>_
|tip WARNING: The Red-Hot Leystone Bars become unusable after 20 seconds.
|tip Craft the items quickly.
collect 2 Leystone Shinplate##124427 |goto 29.83,53.34 |q 38526
step
click Felsmith Forge
_<Create 2 Red-Hot Leystone Bar>_
|tip WARNING: The Red-Hot Leystone Bars become unusable after 20 seconds.
|tip Craft the items quickly.
collect 2 Red-Hot Leystone Bar##124426 |goto 29.85,53.27 |q 38526
step
click Felsmith Anvil
_<Create 2 Leystone Heelguard>_
|tip WARNING: The Red-Hot Leystone Bars become unusable after 20 seconds.
|tip Craft the items quickly.
collect 2 Leystone Heelguard##124428 |goto 29.83,53.34 |q 38526
step
click Felsmith Forge
_<Create 2 Red-Hot Leystone Bar>_
|tip WARNING: The Red-Hot Leystone Bars become unusable after 20 seconds.
|tip Craft the items quickly.
collect 2 Red-Hot Leystone Bar##124426 |goto 29.85,53.27 |q 38526
step
click Felsmith Anvil
_<Create 2 Leystone Footguard>_
|tip WARNING: The Red-Hot Leystone Bars become unusable after 20 seconds.
|tip Craft the items quickly.
collect 2 Leystone Footguard##124429 |goto 29.83,53.34 |q 38526
step
click Felsmith Workbench
_<Create 1 Handmade Leystone Boots>_
collect Handmade Leystone Boots##124433 |q 38526/1 |goto 29.89,53.16
step
talk Felsmith Nal'ryssa##92264
|tip She walks around this small camp.
turnin Smith Under Fire##38526 |goto 29.99,53.33
accept Nal'ryssa's Technique##38527 |goto 29.99,53.33
step
collect 60 Leystone Ore##123918 |q 38527/1
|tip Use the "Leystone Ore & Felslate (Mining Route)" guide to gather them, if you have Mining.
|tip You can also purchase them from the Auction House.
step
collect 60 Felslate##123919 |q 38527/2
|tip Use the "Leystone Ore & Felslate (Mining Route)" guide to gather them, if you have Mining.
|tip You can also purchase them from the Auction House.
step
talk Felsmith Nal'ryssa##92264
|tip She walks around this small camp.
turnin Nal'ryssa's Technique##38527 |goto 29.99,53.33
accept Leystone's Potential##38528 |goto 29.99,53.33
step
click Felsmith Workbench
_<Create 1 Engraved Leystone Armguards>_
collect Engraved Leystone Armguards##124450 |goto 29.89,53.16 |q 38528
step
click Felsmith Forge
_<Create 1 Molten Brimstone>_
|tip WARNING: The Brimstone Slags become unusable after 10 seconds.
|tip Craft the items quickly.
collect Brimstone Slag##124452 |goto 29.85,53.27 |q 38528
step
click Felsmith Workbench
_<Create 1 Brimstone-Covered Armguards>_
|tip WARNING: The Brimstone Slags become unusable after 10 seconds.
|tip Craft the items quickly.
collect Slag-Covered Leystone Armguards##124453 |goto 29.89,53.16 |q 38528
step
click Felsmith Quenching Trough
_<Create 1 Brimstone-Crusted Armguards>_
collect Brimstone-Crusted Leystone Armguards##124454 |goto 29.88,53.38 |q 38528
step
click Felsmith Anvil
_<Create 1 Chiseled Masterwork Armguards>_
collect Masterwork Leystone Armguards##124455 |q 38528/1 |goto 29.83,53.34
step
talk Felsmith Nal'ryssa##92264
|tip She walks around this small camp.
turnin Leystone's Potential##38528 |goto 29.99,53.33
accept The Firmament Stone##38530 |goto 29.99,53.33
step
collect 162 Leystone Ore##123918 |q 38532 |future
|tip Use the "Leystone Ore & Felslate (Mining Route)" guide to gather them, if you have Mining.
|tip You can also purchase them from the Auction House.
step
talk Barm Stonebreaker##92242
turnin The Firmament Stone##38530 |goto Highmountain/0 55.18,84.19
accept Leystone Mastery##38531 |goto Highmountain/0 55.18,84.19
accept Hammered By The Storm##38532 |goto Highmountain/0 55.18,84.19
step
talk Thala Steeltotem##92245
|tip She walks around.
buy Leystone Armor Stand##124024 |n
collect Leystone Armor Stand##124024 |goto 54.96,84.48 |q 38531
step
talk Thala Steeltotem##92245
|tip She walks around.
buy 8 Foxflower Flux##124436 |n
collect 8 Foxflower Flux##124436 |goto 54.96,84.48 |q 38531
step
click Greenhoof's Anvil
_<Create 1 Leystone Gauntlets>_
collect Leystone Gauntlets##123893 |goto 54.89,84.40 |q 38531
step
click Greenhoof's Anvil
_<Create 1 Leystone Helm>_
collect Leystone Helm##123894 |goto 54.89,84.40 |q 38531
step
click Greenhoof's Anvil
_<Create 1 Leystone Boots>_
collect Leystone Boots##123892 |goto 54.89,84.40 |q 38531
step
click Greenhoof's Anvil
_<Create 1 Leystone Greaves>_
collect Leystone Greaves##123895 |goto 54.89,84.40 |q 38531
step
click Greenhoof's Anvil
_<Create 1 Leystone Breastplate>_
collect Leystone Breastplate##123891 |goto 54.89,84.40 |q 38531
step
click Greenhoof's Anvil
_<Create 1 Leystone Pauldrons>_
collect Leystone Pauldrons##123896 |goto 54.89,84.40 |q 38531
step
click Greenhoof's Anvil
_<Create 1 Leystone Armguards>_
collect Leystone Armguards##123898 |goto 54.89,84.40 |q 38531
step
click Greenhoof's Anvil
_<Create 1 Leystone Waistguard>_
collect Leystone Waistguard##123897 |goto 54.89,84.40 |q 38531
step
Use the Leystone Armor Stand |use Leystone Armor Stand##124024
Assemble the Leystone Armor Set |q 38531/1
step
talk Barm Stonebreaker##92242
turnin Leystone Mastery##38531 |goto 55.18,84.20
step
_Enter the Maw of Souls Dungeon:_
|tip Use the Group Finder to enter the dungeon.
kill Helya##96759
|tip Use the Maw of Souls dungeon guide to accomplish this.
collect Ancient Vrykul Hammer##124025 |q 38532/1
step
talk Barm Stonebreaker##92242
turnin Hammered By The Storm##38532 |goto 55.18,84.19
accept Worthy of the Stone##38559 |goto 55.18,84.20
step
talk Muirn Ironhorn##92243
|tip Up on the platform.
turnin Worthy of the Stone##38559 |goto 54.55,84.15
accept The Art of Demonsteel##38833 |goto 54.55,84.15
step
click Firmament Stone
Strike the Metal |q 38833/1 |goto 54.58,84.10
step
click Firmament Stone
Strike the Metal Again |q 38833/2 |goto 54.58,84.10
step
click Firmament Stone
Strike HARDER!! |q 38833/3 |goto 54.58,84.10
step
talk Muirn Ironhorn##92243
|tip Up on the platform.
turnin The Art of Demonsteel##38833 |goto 54.55,84.15
accept Tribal Knowledge##38533 |goto 54.55,84.15
step
Follow the path up |goto Suramar/0 32.96,48.34 < 20 |only if walking
Follow the path |goto Suramar/0 30.88,53.21 < 30 |only if walking
talk Felsmith Nal'ryssa##92264
|tip She walks around this small camp.
turnin Tribal Knowledge##38533 |goto Suramar/0 29.93,53.29
step
_Congratulations!_
You completed the Blacksmithing questline.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Blacksmithing\\Quest Guides\\Argus Blacksmithing Quest Line",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the Argus Blacksmithing quest line.",
startlevel=45.0,
condition_end=function() return completedq(48054) end,
condition_suggested=function() return skill('Legion Blacksmithing') > 0 and level >= 45 and not completedq(48054) end,
},[[
step
talk Alard Schmied##92183
|tip Inside the building.
Learn the Blacksmithing Profession |complete skill("Legion Blacksmithing")>=1 |goto Dalaran L/10 44.15,28.71
step
talk Khamir##125341
accept Empyrial Strength##48055 |goto Krokuun/2 42.85,77.75
step
collect 42 Empyrium##151564 |future |q 48055
|tip Use the "Empyrium Ore" farming guide to accomplish this, if you have Mining.
|tip You can also purchase them from the Auction House.
Click here to load the "Empyrium Ore" farming guide |confirm |next "Profession Guides\\Mining\\Farming Guides\\Empyrium"
step
collect 2 Primal Sargerite##151568 |future |q 48055
|tip You can get these as rewards for certain world quests, from gathering profession, or killing dungeon bosses.
|tip Use the "World Quests" guide and dungeon guides to accomplish this.
Click here to load the "World Quests" guide |confirm |next "Dailies Guides\\Legion\\Azsuna World Quests"
step
Open up your Blacksmithing spellbook
_<Create 1 Empyrial Back Plate>_
collect Empyrial Back Plate##151925 |future |q 48055
step
Open up your Blacksmithing spellbook
_<Create 1 Empyrial Chest Plate>_
collect Empyrial Chest Plate##151924 |future |q 48055
step
Open up your Blacksmithing spellbook
_<Create 6 Empyrial Rivet>_
collect 6 Empyrial Rivet##151923 |future |q 48055
step
Open up your Blacksmithing spellbook
_<Create 1 Empyrial Breastplate>_
collect Empyrial Breastplate##248870 |q 48055/1
step
talk Khamir##125341
turnin Empyrial Strength##48055 |goto Krokuun/2 42.85,77.75
step
talk Arcanomancer Vridiel##106655
accept Weigh Anchor##48054 |goto Dalaran L/10 45.20,29.07
step
click Crate of Felslate##272746
collect Crate of Felslate##151871 |q 48054/1 |goto 45.06,28.03
step
talk Kruda Thunderhand##125216
Tell him _"I have your felslate shipment."_
Deliver the crate to Kruda |q 48054/2 |goto Azshara/0 55.37,53.54
step
talk Kruda Thunderhand##125216
turnin Weigh Anchor##48054 |goto Azshara/0 55.37,53.54
step
_Congratulations!_
You completed the Argus Blacksmithing questline.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Big Gamy Ribs",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Big Gamy Ribs for various cooking recipes.",
startlevel=40.0,
},[[
step
kill Sated Hillstrider##98808+
|tip Other mobs around this area drop Big Gamy Ribs too, but these respawn very quickly.
collect Big Gamy Ribs##124119 |n |goto Highmountain/0 41.38,54.03
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Fatty Bearsteak",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Fatty Bearsteaks for various cooking recipes.",
startlevel=40.0,
},[[
step
Follow the path down |goto Stormheim/0 69.53,52.04 < 20 |only if walking
Follow the road |goto Stormheim/0 64.40,54.90 < 30 |only if walking
Follow the path |goto Stormheim/0 68.54,53.59 < 30 |only if walking
Follow the path down |goto Stormheim/0 69.66,52.98 < 30 |only if walking
kill Voracious Bear##93095+
collect Fatty Bearsteak##124118 |n |goto Stormheim/0 72.49,49.96
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Lean Shank",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Lean Shanks for various cooking recipes.",
startlevel=40.0,
},[[
step
kill Pinerock Prowler##94149+
kill Pinerock Stalker##99481+
collect Lean Shank##124117 |n |goto Highmountain/0 42.98,49.26
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Leyblood",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Leyblood for various cooking recipes.",
startlevel=40.0,
},[[
step
Enter the cave |goto Azsuna/0 49.35,25.97 < 20 |walk
kill Flashwyrm##107098+
collect Leyblood##124120 |n |goto Azsuna/0 49.72,25.41
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Wildfowl Egg",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Wildfowl Eggs for various cooking recipes.",
startlevel=40.0,
},[[
step
Follow the path |goto Stormheim/0 61.67,55.08 < 30 |only if walking and horde
Follow the path |goto Stormheim/0 69.66,52.75 < 30 |only if walking and horde
Follow the path down |goto Stormheim/0 72.07,51.87 < 15 |only if walking and horde
Follow the path |goto Stormheim/0 71.42,55.36 < 30 |only if walking and horde
Follow the path |goto Stormheim/0 72.18,59.28 < 20 |only if walking and alliance
Follow the path |goto Stormheim/0 73.40,57.03 < 30 |only if walking
Follow the beach |goto Stormheim/0 79.51,57.09 < 30 |only if walking
Follow the water |goto Stormheim/0 82.65,67.39 < 30 |only if walking
kill Coastal Seagull##97809+
|tip They are flying around and perched up on the rocks along the coast around this area.
|tip If you kill them up on the rocks and can't reach them to loot them, kill a crab on the ground nearby to AoE loot them.
collect Wildfowl Egg##124121 |n |goto Stormheim/0 80.57,69.32
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Leveling Guides\\Legion Cooking 1-100",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Legion Cooking from 1 to 100.",
startlevel=5.0,
condition_end=function() return skill('Legion Cooking') >= 100 end,
condition_suggested=function() return skill('Legion Cooking') > 0 and skill('Legion Cooking') < 100 and level >= 5 end,
},[[
step
Enter the building |goto Dalaran L/10 63.40,32.93 < 5 |walk
talk Awilo Lon'gomba##93536
|tip Inside the building.
Train Legion Cooking |skillmax Legion Cooking,100 |goto 69.98,38.95
step
Load the "Legion Cooking Quest Line" Guide |confirm |next "Profession Guides\\Cooking\\Quest Guides\\Legion Cooking Quest Line"
|tip Click the line above to load the guide.
|tip After completing the Legion Cooking Quest Line, you should be around level 45 Legion Cooking.
Complete the Legion Cooking Quest Line |q 40991 |future
step
Kill Pinerock enemies around this area
collect 260 Lean Shank##124117 |goto Highmountain/0 42.98,49.26
|only if skill("Legion Cooking") < 50
step
talk Nomi##101846
|tip Inside the building.
Tell him _"Research Recipes using Lean Shanks."_ |goto Dalaran L/10 69.79,38.76
|tip It will take 4 hours to complete the research.
|tip You will continue researching Lean Shanks throughout the guide.
learn Salt and Pepper Shank##201524
|only if skill("Legion Cooking") < 50
step
talk Misensi##93537
|tip Inside the building.
buy 200 Flaked Sea Salt##133588  |goto 69.73,39.30
|only if skill("Legion Cooking") < 50
step
talk Misensi##93537
|tip Inside the building.
buy 200 Dalape�o Pepper##133589 |goto 69.73,39.30
|only if skill("Legion Cooking") < 50
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 50 Salt and Pepper Shanks>_
Reach 50 Legion Cooking |skill Legion Cooking,50
step
kill Heartwood Stag##110042
collect Recipe: Turf##141012 |goto Suramar/0 62.4,53.4
|only if skill("Legion Cooking") < 100
step
kill Deepwater Spikeback##99504
collect Recipe: Surf##141011 |goto 78.6,62.2
|only if skill("Legion Cooking") < 100
step
use the Recipe: Turf##141012
collect Recipe: Suramar Surf and Turf##133817 |n
use the Recipe: Suramar Surf and Turf##133817
learn Suramar Surf and Turf##201501
step
talk Nomi##101846
|tip Inside the building.
Tell him _"Research Recipes using Lean Shanks."_ |goto Dalaran L/10 69.79,38.76
|tip You can also research Runescale Koi.
|tip It will take 4 hours to complete the research.
collect Recipe: Suramar Surf and Turf##133837
|only if skill("Legion Cooking") < 100
step
use the Recipe: Suramar Surf and Turf##133837
learn Suramar Surf and Turf##201530
|only if skill("Legion Cooking") < 100
step
collect 50 Runescale Koi##124111
|tip These are gathered by the Fishing profession.
|tip They are gathered in Suramar and Dalaran.
|tip You can also buy these materials from the Auction House.
|only if skill("Legion Cooking") < 100
step
Kill Pinerock enemies around this area
collect 50 Lean Shank##124117 |goto Highmountain/0 42.98,49.26
|tip You can also buy these materials from the Auction House.
|only if skill("Legion Cooking") < 100
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 20 Suramar Surf and Turf>_
|tip Save these for later.
Reach 70 Legion Cooking |skill Legion Cooking,70
step
Gain Revered with The Wardens |complete rep("The Wardens")>=Revered |next "Warden"
|tip If you aren't Revered with The Wardens, you will need to continue researching with Nomi until you get the Rank 3 Azshari Salad recipe.
Click here to continue |confirm
|only if skill("Legion Cooking") < 100
step
talk Nomi##101846
|tip Inside the building.
Tell him _"Research Recipes using Lean Shanks."_ |goto Dalaran L/10 69.79,38.76
|tip You can also research Runescale Koi.
|tip It will take 4 hours to complete the research.
collect Recipe: Azshari Salad##133822
|only if skill("Legion Cooking") < 100
step
use the Recipe: Azshari Salad##133822
learn Azshari Salad##201506
|only if skill("Legion Cooking") < 100
step
talk Nomi##101846
|tip Inside the building.
Tell him _"Research Recipes using Lean Shanks."_ |goto Dalaran L/10 69.79,38.76
|tip You can also research Runescale Koi.
|tip It will take 4 hours to complete the research.
collect Recipe: Azshari Salad##133842
|only if skill("Legion Cooking") < 100
step
use the Recipe: Azshari Salad##133842
learn Azshari Salad##201535
|only if skill("Legion Cooking") < 100
step
talk Nomi##101846
|tip Inside the building.
Tell him _"Research Recipes using Lean Shanks."_ |goto Dalaran L/10 69.79,38.76
|tip You can also research Runescale Koi.
|tip It will take 4 hours to complete the research.
collect Recipe: Azshari Salad##133862
|only if skill("Legion Cooking") < 100
step
use the Recipe: Azshari Salad##133862
learn Azshari Salad##201555
|only if skill("Legion Cooking") < 100
step
collect 30 Dreamleaf##124102
|tip Refer to our Dreamleaf farming guide to accomplish this.
|tip You can also buy these materials from the Auction House.
|only if skill("Legion Cooking") < 100
step
collect 30 Fjarnskaggl##124104
|tip Refer to our Fjarnskaggl farming guide to accomplish this.
|tip You can also buy these materials from the Auction House.
|only if skill("Legion Cooking") < 100
step
collect 30 Foxflower##124103
|tip Refer to our Foxflower farming guide to accomplish this.
|tip You can also buy these materials from the Auction House.
|only if skill("Legion Cooking") < 100
step
collect 30 Aethril##124101
|tip Refer to our Aethril farming guide to accomplish this.
|tip You can also buy these materials from the Auction House.
|only if skill("Legion Cooking") < 100
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 6 Azshari Salad>_
Reach 100 Legion Cooking |skill Legion Cooking,100 |next "End"
step
label "Warden"
talk Marin Bladewing##107379
buy Recipe: Spiced Falcosaur Omelet##142331 |n
use the Recipe: Spiced Falcosaur Omelet##142331
learn Spiced Falcosaur Omelet##230046 |goto Azsuna/0 48.17,73.91
|only if skill("Legion Cooking") < 100
step
Kill enemies around this area
collect 180 Falcosaur Egg##142336 |goto Azsuna/0 36.73,6.50
|only if skill("Legion Cooking") < 100
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 50 Spiced Falcosaur Omelet>_
|tip This recipe will be green by level 90.
|tip You wil likely need to craft more than 50.
Reach 100 Legion Cooking |skill Legion Cooking,100
|only if skill("Legion Cooking") < 100
step
label "End"
_Congratulations!_
You Reached Level 100 Legion Cooking Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Quest Guides\\Legion Cooking Quest Line",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the Legion Cooking quest line.",
startlevel=10.0,
condition_end=function() return completedq(40991) end,
condition_suggested=function() return skill('Legion Cooking') > 0 and level >= 10 and not completedq(40991) end,
},[[
step
talk Katherine Lee##93534
|tip Inside the building.
Learn the Cooking Profession |complete skill("Cooking")>=1 |goto Dalaran L/10 39.69,66.50
|only Alliance
step
talk Awilo Lon'gomba##93536
|tip Inside the building.
Learn the Cooking Profession |complete skill("Cooking")>=1 |goto Dalaran L/10 69.98,38.95
|only Horde
step
Follow the path down |goto Stormheim/0 69.53,52.04 < 20 |only if walking
Follow the road |goto Stormheim/0 64.40,54.90 < 30 |only if walking
Follow the path |goto Stormheim/0 68.54,53.59 < 30 |only if walking
Follow the path down |goto Stormheim/0 69.66,52.98 < 30 |only if walking
kill Mordvigbjorn##93371
collect Recipe: Bear Tartare##133827 |n
Use the Recipe: Bear Tartare |use Recipe: Bear Tartare##133827
Learn the Recipe for Bear Tartare |learn Bear Tartare##201513 |goto Stormheim/0 72.49,49.96
step
_Next to you:_
talk Nomi##102546
|tip He appears next to you after you loot the recipe.
|tip You will only be able to accept one of these quests.
accept Too Many Cooks##40988 |or
accept The Prodigal Sous Chef##40989 |or
step
talk Nomi##101846
|tip Inside the building.
turnin Too Many Cooks##40988 |goto Dalaran L/10 40.16,65.95 |only if haveq(40988) or completedq(40988)
turnin The Prodigal Sous Chef##40989 |goto Dalaran L/10 40.16,65.95 |only if haveq(40989) or completedq(40989)
accept A Good Recipe List##40990 |goto Dalaran L/10 40.16,65.95
|only Alliance
step
talk Nomi##101846
|tip Inside the building.
turnin Too Many Cooks##40988 |goto Dalaran L/10 69.76,38.76 |only if haveq(40988) or completedq(40988)
turnin The Prodigal Sous Chef##40989 |goto Dalaran L/10 69.76,38.76 |only if haveq(40989) or completedq(40989)
accept A Good Recipe List##40990 |goto Dalaran L/10 69.76,38.76
|only Horde
step
collect 1 Recipe: Barracuda Mrglgagh##133818 |n
|tip Work through the Highmountain leveling guide until you finish the quest "Murlocs: The Next Generation."
Use the Recipe: Barracuda Mrglgagh |use Recipe: Barracuda Mrglgagh##133818
Learn the Recipe for Barracuda Mrglgagh |learn Barracuda Mrglgagh##201496 |goto 40.16,65.95 |only Alliance
Learn the Recipe for Barracuda Mrglgagh |learn Barracuda Mrglgagh##201496 |goto 69.76,38.76 |only Horde
step
collect 1 Recipe: Deep-Fried Mossgill##133812 |n
|tip Work through the Val'sharah leveling guide until you finish the quest "Shriek No More."
Use the Recipe: Deep-Fried Mossgill |use Recipe: Deep-Fried Mossgill##133812
Learn the Recipe for Deep-Fried Mossgill |learn Deep-Fried Mossgill##201496 |goto 40.16,65.95 |only Alliance
Learn the Recipe for Deep-Fried Mossgill |learn Deep-Fried Mossgill##201496 |goto 69.76,38.76 |only Horde
step
collect 1 Recipe: Faronaar Fizz##133814 |n
|tip Work through the Azsuna leveling guide until you finish the quest "The Magister of Mixology."
Use the Recipe: Faronaar Fizz |use Recipe: Faronaar Fizz##133814
Learn the Recipe for Faronaar Fizz |learn Faronaar Fizz##201498 |goto 40.16,65.95 |only Alliance
Learn the Recipe for Faronaar Fizz |learn Faronaar Fizz##201498 |goto 69.76,38.76 |only Horde
step
collect 1 Recipe: Fighter Chow##133828 |n
|tip Work through the Azsuna leveling guide until you finish the quest "Morale Booster."
Use the Recipe: Fighter Chow |use Recipe: Fighter Chow##133828
Learn the Recipe for Fighter Chow |learn Fighter Chow##201514 |goto 40.16,65.95 |only Alliance
Learn the Recipe for Fighter Chow |learn Fighter Chow##201514 |goto 69.76,38.76 |only Horde
step
collect 1 Recipe: Pickled Stormray##133813 |n
|tip Work through the Stormheim leveling guide until you finish the quest "A Heavy Burden."
Use the Recipe: Pickled Stormray |use Recipe: Pickled Stormray##133813
Learn the Recipe for Pickled Stormray |learn Pickled Stormray##201497 |goto 40.16,65.95 |only Alliance
Learn the Recipe for Pickled Stormray |learn Pickled Stormray##201497 |goto 69.76,38.76 |only Horde
step
collect 1 Recipe: Salt and Pepper Shank##133810 |n
|tip Work through the Highmountain leveling guide until you finish the quest "I'm Not Lion!"
Use the Recipe: Salt and Pepper Shank |use Recipe: Salt and Pepper Shank##133810
Learn the Recipe for Salt and Pepper Shank |learn Salt and Pepper Shank##201413 |goto 40.16,65.95 |only Alliance
Learn the Recipe for Salt and Pepper Shank |learn Salt and Pepper Shank##201413 |goto 69.76,38.76 |only Horde
Learn #6# Legion Recipes |q 40990/1 |goto 40.16,65.95 |only Alliance
Learn #6# Legion Recipes |q 40990/1 |goto 69.76,38.76 |only Horde
step
Use the Recipe: Dried Mackerel Strips |use Recipe: Dried Mackerel Strips##133826
|tip You received this item as a quest reward for turning in "Too Many Cooks" or "The Prodigal Sous Chef" earlier.
Learn the Recipe for Dried Mackerel Stripes |learn Dried Mackerel Stripes##201512
step
talk Nomi##101846
|tip Inside the building.
turnin A Good Recipe List##40990 |goto 40.16,65.95
accept Opening the Test Kitchen##40991 |goto 40.16,65.95
|only Alliance
step
talk Nomi##101846
|tip Inside the building.
turnin A Good Recipe List##40990 |goto 69.76,38.76
accept Opening the Test Kitchen##40991 |goto 69.76,38.76
|only Horde
step
click Nomi's Silver Mackerel##246710
collect 5 Nomi's Silver Mackerel##133912 |q 40991/1 |goto 39.38,66.66 |only Alliance
collect 5 Nomi's Silver Mackerel##133912 |q 40991/1 |goto 69.84,39.97 |only Horde
step
talk Nomi##101846
|tip Inside the building.
Choose _"Research recipes using Silver Mackerel."_
|tip Start a Work Order.
|tip You can obtain Nomi Snacks from completed Work Orders.
|tip Nomi Snacks will allow you to instantly complete Work Orders in progress.
Return the Mackerel to Nomi |q 40991/2 |goto 40.16,65.95 |only Alliance
Return the Mackerel to Nomi |q 40991/2 |goto 69.76,38.76 |only Horde
step
click Test Kitchen Results##246664
|tip The Work Order will take 12 seconds to complete.
|tip You can obtain Nomi Snacks from completed Work Orders.
|tip Nomi Snacks will allow you to instantly complete Work Orders in progress.
Collect the Test Kitchen Results |q 40991/3 |goto 40.11,65.28 |only Alliance
Collect the Test Kitchen Results |q 40991/3 |goto 69.72,38.38 |only Horde
step
talk Nomi##101846
|tip Inside the building.
turnin Opening the Test Kitchen##40991 |goto 40.16,65.95
|only Alliance
step
talk Nomi##101846
|tip Inside the building.
turnin Opening the Test Kitchen##40991 |goto 69.76,38.76
|only Horde
step
_Congratulations!_
You completed the Cooking questline.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Enchanting\\Leveling Guides\\Legion Enchanting 1-100",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Legion Enchanting from 1 to 100.",
startlevel=45.0,
condition_end=function() return skill('Legion Enchanting') >= 100 end,
condition_suggested=function() return skill('Legion Enchanting') > 0 and skill('Legion Enchanting') < 100 and level >= 45 end,
},[[
step
talk Enchanter Nalthanis##93531
|tip Inside the building.
Train Legion Enchanting |skillmax Legion Enchanting,100 |goto Dalaran L/10 38.28,40.33
step
talk Ildine Sorrowspear##93530
|tip Inside the building.
buy 100 Enchanting Vellum##38682 |goto 38.24,41.80
|only if skill("Legion Enchanting") < 100
step
Load the "Enchanting Quest Line" Guide |confirm |next "Profession Guides\\Enchanting\\Quest Guides\\Legion Enchanting Quest Line"
|tip Click the line above to load the guide.
Complete the "Legion Quest Line" Guide |q 39923 |future
step
talk Ildine Sorrowspear##93530
buy Formula: Enchant Ring - Word of Haste##128580 |n
|tip Rank 1 comes from completing the Enchanting Quest Line.
use the Formula: Enchant Ring - Word of Haste##128580
learn Word of Haste##190993 |goto 38.24,41.80
step
collect Formula: Enchant Ring - Word of Haste##128597 |n
|tip This comes from a World Quest.
|tip Refer to our World Quest guide.
use the Formula: Enchant Ring - Word of Haste##128597
learn Word of Haste##191010
step
collect 60 Arkhana##124440
|tip You can get these by disenchanting epic (purple) items from any Legion Heroic/Mythic Dungeon.
|tip You can also get them from Legion Raids.
|tip You can also purchase them from the Auction House.
|only if skill("Legion Enchanting") < 60
step
Open Your Enchanting Crafting Panel:
_<Create 60 Word of Haste>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach Level 60 Legion Enchanting |skill Legion Enchanting,60
step
talk Ildine Sorrowspear##93530
buy Formula: Enchant Ring - Binding of Versatility##128586 |n
|tip Rank 1 comes from completing the Enchanting Quest Line.
use the Formula: Enchant Ring - Binding of Versatility##128586
learn Binding of Versatility##191016 |goto 38.24,41.80
step
Gain Exalted Reputation with Dreamweavers |complete rep("Dreamweavers")>=Exalted
|tip Refer to the Dreamweavers Reputation guide to accomplish this.
step
talk Sylvia Hartshorn##106901
buy Formula: Enchant Ring - Binding of Haste##128601 |n
use the Formula: Enchant Ring - Binding of Haste##128601
learn Binding of Haste##191014 |goto Val'sharah/0 54.70,73.25
step
collect 600 Arkhana##124440
|tip You can get these by disenchanting epic (purple) items from any Legion Heroic/Mythic Dungeon.
|tip You can also get them from Legion Raids.
|tip You can also purchase them from the Auction House.
|only if skill("Legion Enchanting") < 100
step
collect 160 Chaos Crystal##124442
|tip You can get these by disenchanting epic (purple) items from any Legion Heroic/Mythic Dungeon.
|tip You can also get them from Legion Raids.
|tip You can also purchase them from the Auction House.
|only if skill("Legion Enchanting") < 100
step
collect 1400 Arkhana##124440
|tip You can get these by disenchanting uncommon (green) items from any Legion zone.
|tip You can also purchase them from the Auction House.
|only if skill("Legion Enchanting") < 100
step
Open Your Enchanting Crafting Panel:
_<Create 40 Binding of Haste##>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach Level 100 Legion Enchanting |skill Legion Enchanting,100
step
_Congratulations!_
You Reached Level 100 Legion Enchanting Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Enchanting\\Quest Guides\\Legion Enchanting Quest Line",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the Legion Enchanting quest line.",
startlevel=10.0,
condition_end=function() return completedq(39923) end,
condition_suggested=function() return skill('Enchanting') > 0 and level >= 10 and not completedq(39923) end,
},[[
step
talk Enchanter Nalthanis##93531
|tip Inside the building.
Learn the Enchanting Profession |complete skill("Legion Enchanting")>=1 |goto Dalaran L/10 38.28,40.33
step
talk Enchanter Nalthanis##93531
|tip Inside the building.
accept Some Enchanted Evening##39874 |goto 38.33,40.37
step
talk Ildine Sorrowspear##93530
|tip Inside the building.
turnin Some Enchanted Evening##39874 |goto 38.24,41.77
accept The Last Few##39875 |goto 38.24,41.77
step
talk Ildine Sorrowspear##93530
|tip Inside the building.
buy 1 Copper Rod##6217 |n
collect Copper Rod##6217 |c |goto 38.23,41.77
|only if itemcount(6218) < 1
step
talk Ildine Sorrowspear##93530
|tip Inside the building.
buy 1 Strange Dust##10940 |n
collect Strange Dust##10940 |c |goto 38.23,41.77
|only if itemcount(6218) < 1
step
talk Ildine Sorrowspear##93530
|tip Inside the building.
buy 1 Lesser Magic Essence##10938 |n
collect Lesser Magic Essence##10938 |c |goto 38.23,41.77
|only if itemcount(6218) < 1
step
Open Your Enchanting Crafting Panel:
_<Create 1 Runed Copper Rod>_
collect Runed Copper Rod##6218 |c
|only if itemcount(6218) < 1
step
talk Ildine Sorrowspear##93530
|tip Inside the building.
buy 2 Enchanting Vellum##38682 |n
collect 2 Enchanting Vellum##38682 |c |goto 38.23,41.77 |q 39875
step
collect 30 Arkhana##124440 |c |q 39875
|tip You can get these by disenchanting Legion level Uncommon (green) armor and weapons.
|tip You can also purchase them from the Auction House.
step
Open Your Enchanting Crafting Panel:
_<Create 2 Word of Versatility>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
collect 2 Enchant Ring - Word of Versatility##128540 |q 39875/1
step
talk Ildine Sorrowspear##93530
|tip Inside the building.
turnin The Last Few##39875 |goto 38.24,41.77
accept Helping the Hunters##39876 |goto 38.24,41.77
step
talk Jace Darkweaver##90317
turnin Helping the Hunters##39876 |goto Azsuna/0 43.15,43.61
accept In the Loop##39877 |goto Azsuna/0 43.15,43.61
accept Strings of the Puppet Masters##40048 |goto Azsuna/0 43.15,43.61
step
Use the Stack Of Vellums on Demon Hunters |use Stack Of Vellums##137120
|tip They are fightining enemies around this area.
Apply #6# Enchanting Vellums |q 39877/1 |goto 43.01,44.00
step
Follow the path |goto 43.06,45.40 < 30 |only if walking
Follow the path |goto 40.84,48.29 < 30 |only if walking
Kill enemies around this area.
collect Rune of Dominance##137185 |q 40048/1 |goto 40.12,48.93
step
Follow the path |goto 40.84,48.29 < 30 |only if walking
Follow the path |goto 43.06,45.40 < 30 |only if walking
talk Jace Darkweaver##90317
turnin In the Loop##39877 |goto 43.15,43.60
turnin Strings of the Puppet Masters##40048 |goto 43.15,43.61
accept Ringing True##39905 |goto 43.15,43.61
step
talk Enchanter Nalthanis##93531
|tip Inside the building.
turnin Ringing True##39905 |goto Dalaran L/10 38.35,40.39
step
talk Enchanter Nalthanis##93531
|tip Inside the building.
accept Thunder Struck##39878 |goto 38.35,40.39
step
talk Guron Twaintail##98017
turnin Thunder Struck##39878 |goto Thunder Totem/0 44.50,45.54
accept Strong Like the Earth##39879 |goto Thunder Totem/0 44.50,45.54
accept Waste Not##39880 |goto Thunder Totem/0 44.50,45.54
stickystart "Empowered_Ambershard_Crystals_Enchanting"
step
Enter the cave |goto Highmountain/0 50.10,53.64 < 20 |walk
Follow the path |goto Highmountain/0 51.59,52.51 < 20 |walk
click Highmountain Shoulderpads##249827
click Highmountain Pants##249828
click Highmountain Jerkins##249826
|tip They look like various pieces of tan clothing on the ground around this area inside the cave.
collect 15 Highmountain Armor##137195 |goto Highmountain/0 52.18,53.05 |q 39880
step
Disenchant the Highmountain Armor
|tip They're in your bags.
collect 15 Thunder Dust##137196 |q 39880/1
step
label "Empowered_Ambershard_Crystals_Enchanting"
Follow the path |goto 51.87,52.77 < 20 |walk
Leave the cave |goto 50.10,53.64 < 20 |walk
kill Enraged Ambershard##94507+
collect 8 Empowered Ambershard Crystal##137193 |q 39879/1 |goto 49.14,54.89
step
talk Guron Twaintail##98017
turnin Strong Like the Earth##39879 |goto Thunder Totem/0 44.48,45.52
turnin Waste Not##39880 |goto Thunder Totem/0 44.48,45.52
accept Cloaked in Tradition##39883 |goto Thunder Totem/0 44.48,45.52
step
talk Enchanter Nalthanis##93531
|tip Inside the building.
turnin Cloaked in Tradition##39883 |goto Dalaran L/10 38.34,40.37
step
talk Enchanter Nalthanis##93531
|tip Inside the building.
accept Fey Enchantments##39881 |goto 38.34,40.37
step
talk Nalamya##98156
turnin Fey Enchantments##39881 |goto Val'sharah/0 54.40,57.70
accept No Longer Worthy##39884 |goto Val'sharah/0 54.40,57.70
accept Led Astray##39889 |goto Val'sharah/0 54.40,57.70
stickystart "Enchanted_Raven_Sigils_Enchanting"
step
Follow the path |goto 40.50,59.10 < 30 |only if walking
Follow the path up |goto 38.48,57.29 < 20 |only if walking
Continue up the path |goto 37.71,55.82 < 30 |only if walking
Run up the stairs |goto 39.14,53.61 < 20 |only if walking
Run up the stairs |goto 39.77,53.04 < 20 |only if walking
kill Starlys Strongbow##92963 |q 39889/2 |goto 39.91,52.05
step
Run down the stairs |goto 41.46,53.00 < 20 |only if walking
kill Trelan Shieldbreaker##92966 |q 39889/1 |goto 42.50,52.58
|tip He walks around this area.
step
label "Enchanted_Raven_Sigils_Enchanting"
Run up the stairs |goto 41.82,52.99 < 20 |only if walking
Kill enemies around this area
|tip The Servants of Ravencrest will not drop the quest items.
collect 8 Enchanted Raven Sigil##137221 |goto 40.93,53.01 |q 39884
step
Disenchant the Enchanted Raven Sigils
|tip They're in your bags.
collect 8 Raven Dust##137213 |q 39884/1
step
Run down the stairs |goto 40.06,53.04 < 20 |only if walking
Run down the stairs |goto 39.43,53.35 < 20 |only if walking
Follow the path down |goto 38.24,54.73 < 20 |only if walking
Continue down the path |goto 37.73,56.22 < 30 |only if walking
Follow the path |goto 40.13,60.31 < 30 |only if walking
talk Nalamya##98156
turnin No Longer Worthy##39884 |goto 54.40,57.70
turnin Led Astray##39889 |goto 54.40,57.70
accept The Glamour Has Faded##39882 |goto 54.40,57.71
step
_Enter the Darkheart Thicket Dungeon:_
|tip Use the Group Finder to enter the dungeon.
kill Archdruid Glaidalis##96512
|tip Use the "Darkheart Thicket" dungeon guide to accomplish this.
collect Nalamya's Book of Enchantments##137211 |q 39882/1
step
kill Shade of Xavius##101403 |q 39882/2
|tip Use the "Darkheart Thicket" dungeon guide to accomplish this.
step
talk Nalamya##98156
turnin The Glamour Has Faded##39882 |goto 54.40,57.70
step
talk Enchanter Nalthanis##93531
|tip Inside the building.
accept An Enchanting Home##39903 |goto Dalaran L/10 38.34,40.37
step
Follow the path up |goto Stormheim/0 34.29,49.24 < 20 |only if walking and alliance
Follow the path up |goto Stormheim/0 35.18,47.15 < 20 |only if walking and alliance
Follow the path up |goto Stormheim/0 44.87,54.17 < 20 |only if walking and horde
Follow the path up |goto Stormheim/0 40.11,50.64 < 20 |only if walking and horde
Follow the path |goto Stormheim/0 38.89,44.93 < 20 |only if walking
Enter Tigrid's Home |q 39903/1 |goto Stormheim/0 39.35,42.67
|tip Walk into the building.
step
talk Tigrid the Charmer##98367
|tip Inside the building.
turnin An Enchanting Home##39903 |goto 39.36,42.52
accept A Touch of Magic##40265 |goto 39.36,42.52
step
click Tigrid's Arkhana##249890
Gather Tigrid's Arkhana |q 40265/1 |goto 39.31,42.62
step
clicknpc Dormant Crate##106954
Enchant the Dormant Crate |q 40265/4 |count 1 |goto 39.24,42.77
step
clicknpc Dormant Grimoire##106952
Enchant the Dormant Grimoire |q 40265/3 |count 1 |goto 39.26,42.82
step
clicknpc Dormant Crate##106961
Enchant the Dormant Crate |q 40265/4 |count 2 |goto 39.39,42.83
step
clicknpc Dormant Crate##106961
Enchant the Dormant Crate |q 40265/4 |count 3 |goto 39.44,42.63
step
clicknpc Dormant Grimoire##106932
Enchant the Dormant Grimoire |q 40265/3 |count 2 |goto 39.36,42.60
step
clicknpc Dormant Pen##106980
Enchant the Dormant Pen |q 40265/2 |goto 39.31,42.51
step
talk Tigrid the Charmer##98367
|tip Inside the building.
turnin A Touch of Magic##40265 |goto 39.36,42.52
accept Revenge of the Enchantress##39904 |goto 39.36,42.52
step
_Enter the Halls of Valor Dungeon:_
|tip Use the Group Finder to enter the dungeon.
kill Odyn##95676
|tip Use the "Halls of Valor" dungeon guide to accomplish this.
click Spoils of the Worthy##245847
|tip It appears after you defeat Odyn.
collect Tigrid's Enchanting Rod##129293 |q 39904/1
step
talk Tigrid the Charmer##98367
|tip Inside the building.
turnin Revenge of the Enchantress##39904 |goto 39.36,42.51
step
talk Enchanter Nalthanis##93531
|tip Inside the building.
accept Cursed, But Convenient##39891 |goto Dalaran L/10 38.32,40.33
step
talk Ildine Sorrowspear##93530
|tip Inside the building.
buy 3 Enchanting Vellum##38682 |n
collect 3 Enchanting Vellum##38682 |goto 38.23,41.75 |q 39906 |future
step
collect 30 Arkhana##124440 |c |q 39906 |future
|tip You can get these by disenchanting Legion level Uncommon (green) armor and weapons.
|tip You can also purchase them from the Auction House.
step
collect 20 Leylight Shard##124441 |c |q 39906 |future
|tip You can get these by disenchanting Legion level Rare (blue) armor and weapons.
|tip You can also purchase them from the Auction House.
step
Follow the path up |goto Azsuna/0 44.64,42.99 < 20 |only if walking
Run up the rocks here |goto Azsuna/0 45.68,42.91 < 15 |only if walking
Run up the rocks here |goto Azsuna/0 46.08,42.23 < 15 |only if walking
Follow the path |goto Azsuna/0 45.80,41.57 < 20 |only if walking
talk Enchantress Ilanya##107139
|tip In front of the building.
turnin Cursed, But Convenient##39891 |goto Azsuna/0 46.85,40.95
accept Crossroads Rendezvous##40169 |goto Azsuna/0 46.85,40.95
step
talk Merrus Dawnwind##98381
|tip In front of the building.
accept The Druid's Debt##39910 |goto 46.84,40.88
step
talk Alynblaze##98159
|tip In front of the building.
accept Prepping For Battle##39906 |goto 46.86,40.81
step
Open Your Enchanting Crafting Panel:
_<Create 1 Word of Strength>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
collect Enchant Cloak - Word of Strength##128545 |q 39906/1
step
Open Your Enchanting Crafting Panel:
_<Create 1 Word of Critical Strike>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
collect Enchant Ring - Word of Critical Strike##128537 |q 39906/2
step
Open Your Enchanting Crafting Panel:
_<Create 1 Word of Mastery>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
collect Enchant Ring - Word of Mastery##128539 |q 39906/3
step
talk Alynblaze##98159
|tip In front of the building.
turnin Prepping For Battle##39906 |goto 46.86,40.81
accept Sentinel's Final Duty##39914 |goto 46.86,40.81
step
Run down the stairs |goto 47.58,40.66 < 20 |only if walking
Follow the road |goto 48.72,41.45 < 30 |only if walking
Cross the bridge |goto 50.39,43.65 < 30 |only if walking
Run up the stairs |goto 51.60,44.67 < 20 |only if walking
Follow the path |goto 51.88,45.34 < 20 |only if walking
click Idol of the Claw##250093
|tip On the ground, upstairs inside the building.
collect Idol of the Claw##137291 |q 39910/2 |goto 53.50,45.40
step
Jump down carefully here |goto 53.28,45.32 < 10 |only if walking
Follow the path |goto 54.14,44.57 < 30 |only if walking
Run up the stairs |goto 55.59,44.40 < 20 |only if walking
Run up the stairs |goto 55.90,44.72 < 20 |only if walking
Follow the path |goto 55.52,45.89 < 20 |only if walking
click Idol of the Paw##250095
|tip It's behind the broken rock.
collect Idol of the Paw##137290 |q 39910/1 |goto 56.30,46.17
step
Enter the building |goto 55.52,47.46 < 20 |walk
click Idol of the Moon##250096
collect Idol of the Moon##137292 |q 39910/3 |goto 55.75,48.80
step
Leave the building |goto 55.54,47.54 < 20 |walk
Follow the path |goto 56.43,45.46 < 20 |only if walking
Run down the stairs |goto 57.73,44.48 < 20 |only if walking
Jump down here |goto 58.81,43.01 < 20 |only if walking
Enter the cave |goto 59.76,44.08 < 20 |walk
kill Fathom-Commander Eksis##107251 |q 39914/1 |goto 58.48,44.87
step
Leave the cave |goto 59.76,44.07 < 20 |walk
Follow the path |goto 62.41,43.28 < 30 |only if walking
Follow the path up |goto 65.17,38.74 < 20 |only if walking
Continue up the path |goto 65.45,38.19 < 15 |only if walking
Follow the road |goto 65.13,36.25 < 40 |only if walking
Follow the road |goto 63.52,33.27 < 30 |only if walking
talk Fallen Priestess##98675
|tip She appears when you get to this spot.
turnin Crossroads Rendezvous##40169 |goto 63.83,30.29
accept Turnabout Betrayal##39916 |goto 63.83,30.29
step
Kill enemies around this area
|tip The Chaos Spawn imps won't drop the quest items.
collect 5 Fel-Crusted Rune##137286 |goto 65.53,28.66 |q 39916
step
Disenchant the Fel-Crusted Runes
|tip They're in your bags.
collect 5 Dust of Foul Lies##129751 |q 39916/1
step
Follow the path |goto 65.50,28.56 < 30 |only if walking
Follow the path |goto 64.68,29.06 < 30 |only if walking
talk Fallen Priestess##98675
turnin Turnabout Betrayal##39916 |goto 63.83,30.29
accept Washed Clean##40130 |goto 63.83,30.29
step
Follow the path |goto 43.51,42.05 < 30 |only if walking
Follow the path up |goto 40.83,36.71 < 20 |only if walking
Follow the path up |goto 40.98,35.20 < 20 |only if walking
Follow the path |goto 39.01,34.69 < 30 |only if walking
Run up the stairs |goto 37.98,35.12 < 20 |only if walking
Run up the stairs |goto 37.30,35.02 < 20 |only if walking
talk Fallen Priestess##98683
Watch the dialogue
Observe the Purification Ritual |q 40130/1 |goto 36.53,34.09
step
talk Priestess Driana##98698
turnin Washed Clean##40130 |goto 36.53,34.09
accept The Absent Priestess##39918 |goto 36.53,34.09
step
Run down the stairs |goto 37.04,35.09 < 20 |only if walking
Run down the stairs |goto 37.69,34.92 < 20 |only if walking
Follow the path down |goto 39.01,34.72 < 30 |only if walking
Follow the path down |goto 40.35,34.21 < 30 |only if walking
Follow the path down |goto 41.14,35.82 < 30 |only if walking
Follow the road |goto 40.93,37.91 < 30 |only if walking
Follow the road |goto 42.99,41.53 < 30 |only if walking
Follow the path up |goto 44.64,42.99 < 20 |only if walking
Run up the rocks here |goto 45.68,42.91 < 15 |only if walking
Run up the rocks here |goto 46.08,42.23 < 15 |only if walking
Follow the path |goto 45.80,41.57 < 20 |only if walking
talk Alynblaze##98159
|tip In front of the building.
turnin Sentinel's Final Duty##39914 |goto 46.86,40.81
step
talk Merrus Dawnwind##98381
|tip In front of the building.
turnin The Druid's Debt##39910 |goto 46.84,40.88
step
talk Enchantress Ilanya##107139
|tip In front of the building.
turnin The Absent Priestess##39918 |goto 46.86,40.95
accept Elven Enchantments##39907 |goto 46.86,40.95
step
talk Enchanter Nalthanis##93531
|tip Inside the building.
turnin Elven Enchantments##39907 |goto Dalaran L/10 38.30,40.37
step
Reach Level 45 |ding 45
|tip Use the Leveling guides to accomplish this.
step
Unlock World Quests |complete completedq(43341)
|tip Use the "World Quests" dailies guide to accomplish this.
step
_Using the Suramar Questing Guide:_
|tip Use the Suramar questing guide to complete quests until you complete the quest titled "Masquerade".
|tip This is the quest when you unlock the action button ability to disguise yourself in Suramar City.
Complete the "Masquerade" Quest in Suramar |complete completedq(42079)
step
talk Enchanter Nalthanis##93531
|tip Inside the building.
accept On Azure Wings##39920 |goto 38.33,40.37
step
talk Kharmeera##99420
turnin On Azure Wings##39920 |goto Azsuna/0 47.25,26.35
accept Rod of Azure##39921 |goto Azsuna/0 47.25,26.35
step
Enter the building |goto Western Plaguelands/0 69.78,73.52 < 20 |walk
|tip Click the Scholomance door to open it so you can walk through.
Walk into the swirling portal |goto Western Plaguelands/0 69.00,72.84 |n
Enter the Scholomance Dungeon |goto Scholomance/1 18.08,60.86 < 10000 |noway |c |q 39921
|tip This is an old dungeon, so you can likely solo it easily.
step
Follow the path |goto Scholomance/1 43.04,61.04 |n
Go through the gate |goto Scholomance/2 57.64,47.34 < 10000 |noway |c |q 39921
step
Follow the path |goto Scholomance/2 58.09,47.30 |n
Continue following the path |goto Scholomance/1 45.72,60.74 < 10000 |noway |c |q 39921
step
map Scholomance/1
path follow loose; loop off; ants curved; dist 20
path	50.56,40.58	79.16,51.98	85.60,45.62
Follow the path |goto Scholomance/1 79.96,24.20 |n
|tip Kill bosses as you walk, to open up the path so you can progress through the dungeon.
Walk through the doorway |goto Scholomance/2 77.26,26.74 < 10000 |noway |c |q 39921
step
map Scholomance/2
path	57.19,26.57	40.22,26.71	42.92,47.30
path	54.25,56.47
Follow the path |goto Scholomance/2 54.22,56.37 |n
Enter the room |goto Scholomance/2 54.11,65.17 < 30 |noway |c |q 39921
step
click Pile of Ancient Arkhana##248887
collect Ancient Arkhana##136617 |q 39921/3 |goto 48.74,67.06
step
click Portal to Deepholm |goto Stormwind City/0 73.20,19.64 |n |only Alliance
click Portal to Deepholm |goto Orgrimmar/1 50.8,36.4 |n |only Horde
Travel to Deepholm |goto Deepholm/0 48.73,53.56 < 10000 |noway |c |q 39921
step
Leave the building |goto Deepholm/0 50.00,55.58 < 30 |n |walk
Fly up and enter the swirling portal |goto Deepholm/0 47.73,51.97 |n
Enter the Stonecore Dungeon |goto The Stonecore/1 54.27,93.89 < 10000 |noway |c |q 39921
step
map The Stonecore/1
path follow loose; loop off; ants curved; dist 20
path	54.43,90.90	62.29,77.51	62.52,58.28
path	54.99,58.36	49.32,58.09	45.02,54.47
path	36.63,44.73	39.72,32.15	38.36,23.17
path	40.39,14.23	46.83,16.68
kill Ozruk##42188
|tip Kill bosses as you walk, to open up the path so you can progress through the dungeon.
collect Radiant Zephyrite##136616 |q 39921/2 |goto The Stonecore/1 47.67,19.05
step
_Enter the Neltharion's Lair Dungeon:_
|tip Use the Group Finder the enter the dungeon.
kill Dargrul##91007
|tip Use the "Neltharion's Lair" dungeon guide to accomplish this.
collect Skystone Rod##136615 |q 39921/1
step
talk Kharmeera##99420
turnin Rod of Azure##39921 |goto Azsuna/0 47.25,26.35
accept Down to the Core##39923 |goto Azsuna/0 47.25,26.35
step
Run up the stairs |goto Suramar/0 35.27,50.85 < 20 |only if walking
Cross the bridge |goto Suramar/0 36.30,50.63 < 20 |only if walking
Follow the path |goto Suramar/0 37.50,49.52 < 20 |only if walking
Follow the road |goto Suramar/0 39.45,49.38 < 30 |only if walking
Follow the path |goto Suramar/0 42.49,54.05 < 30 |only if walking
Follow the path |goto Suramar/0 41.11,57.65 < 30 |only if walking
kill Or'ell##102495
|tip He's a big centaur looking enemy that walks around this area, so you may need to search a bit for him.
|tip Kill the enemies around this area before attacking him, to give yourself some space to fight him.
|tip You may need help to kill him.
collect Or'ell's Power Core##136623 |q 39923/2 |goto Suramar/0 42.46,58.98
step
Follow the path |goto 44.18,57.17 < 30 |only if walking
kill Oldus##105232
|tip He's a big centaur looking enemy that walks along this path, so you may need to search a bit for him.
|tip Kill the enemies around this area before attacking him, to give yourself some space to fight him.
|tip You may need help to kill him.
collect Oldus' Power Core##136622 |q 39923/1 |goto 45.79,54.21
step
Follow the path |goto 46.39,53.52 < 30 |only if walking
Enter the building |goto 47.77,54.74 < 30 |only if walking
Run up the stairs |goto 48.16,56.27 < 20 |only if walking
Follow the path |goto 48.81,57.42 < 20 |only if walking
Walk onto the teleport pad |goto 49.86,60.12 < 10 |only if walking
kill Oll'ison##105481
|tip He's a big centaur looking enemy that walks along this path, so you may need to search a bit for him.
|tip Kill the enemies around this area before attacking him, to give yourself some space to fight him.
|tip You may need help to kill him.
collect Oll'ison's Power Core##136625 |q 39923/4 |goto 50.62,62.11
step
Enter the building |goto 50.79,64.15 < 20 |only if walking
Leave the building |goto 49.28,66.39 < 20 |only if walking
kill Olmoore##105480
|tip He's a big centaur looking enemy that walks along this path, so you may need to search a bit for him.
|tip Kill the enemies around this area before attacking him, to give yourself some space to fight him.
|tip You may need help to kill him.
collect Olmoore's Power Core##136624 |q 39923/3 |goto 44.85,65.88
step
talk Kharmeera##99420
turnin Down to the Core##39923 |goto Azsuna/0 47.26,26.35
step
_Congratulations!_
You completed the Enchanting questline.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Engineering\\Leveling Guides\\Legion Engineering 1-100",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Legion Engineering skill from 1-100.",
condition_end=function() return skill('Legion Engineering') >= 100 end,
condition_suggested=function() return skill('Legion Engineering') > 0 and skill('Legion Engineering') < 100 end,
},[[
step
Load the "Legion Engineering Quest Line" Guide |confirm |next "Profession Guides\\Engineering\\Quest Guides\\Legion Engineering Quest Line"
|tip Click the line above to load the guide.
Complete the Legion Engineering Quest Line |q 40882 |future
step
collect 750 Sightless Eyes |complete curcount(1149) >= 750
|tip These are gained by killing enemies in the Dalaran Sewers.
|tip You can Hire a Guard if you want to prevent other players from attacking you while you farm these.
|tip Speak with Raethan to hire a guard.
|only if skill("Legion Engineering") < 100
step
talk The Widow##97366
buy Schematic: Gunpowder Charge##137706 |n
use the Schematic: Gunpowder Charge##137706
learn Gunpowder Charge Rank 2##199000 |goto Dalaran L/11 72.18,24.47
step
talk The Widow##97366
buy Schematic: Gunpowder Charge##137720 |n
use the Schematic: Gunpowder Charge##137720
learn Gunpowder Charge Rank 3##199014 |goto Dalaran L/11 72.18,24.47
step
collect 120 Leystone Ore##123918
|tip These are gathered by the Mining profession.
|tip Refer tot he Leystone Ore & Felslate (Mining Route) farming guide to accomplish this.
|tip You can also purchase them from the Auction House.
|only if skill("Legion Engineering") < 100
step
talk Hobart Grapplehammer##93539
buy 2280 Oversized Blasting Cap##136637 |goto Dalaran L/10 38.38,24.50
|only if skill("Legion Engineering") < 100
step
Open Your Engineering Crafting Panel:
_<Create 120 Gunpowder Charges>_
|tip This recipe will be yellow by 80 and green by 90, so you may need to make more.
Reach Level 100 Legion Engineering |skill Legion Engineering,100
step
_Congratulations!_
You Reached Level 100 Legion Engineering Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Engineering\\Quest Guides\\Legion Engineering Quest Line",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the Legion Engineering quest line.",
startlevel=10.0,
condition_end=function() return completedq(40882) end,
condition_suggested=function() return skill('Legion Engineering') > 0 and level >= 10 and not completedq(40882) end,
},[[
step
talk Hobart Grapplehammer##93539
|tip Inside the building.
accept Aww Scrap!##40545 |goto Dalaran L/10 38.35,24.53
step
talk Filgo Scrapbottom##102193
turnin Aww Scrap!##40545 |goto Dalaran L/11 65.96,52.82
accept Endless Possibilities##40854 |goto Dalaran L/11 65.96,52.82
step
click Fel Reaver Husk##246519
collect Fel Reaver Husk##133752 |q 40854/1 |goto 66.36,51.98
step
talk Didi the Wrench##93520
|tip She walks around inside the building.
turnin Endless Possibilities##40854 |goto Dalaran L/10 38.83,24.70
accept Our Man in Azsuna##40855 |goto Dalaran L/10 38.83,24.70
step
talk Fargo Flintlocke##102195
turnin Our Man in Azsuna##40855 |goto Azsuna/0 65.22,24.91
accept It'll Cost You##40856 |goto Azsuna/0 65.22,24.91
accept The Latest Fashion: Headguns!##40859 |goto Azsuna/0 65.22,24.91
stickystart "Test_Headgun_On_Fel_Critters_Engineering"
step
click Fel Reaver Arm##246522
collect Fel Reaver Arm##133753 |q 40856/1 |goto 66.87,27.02
step
click Fel Reaver Leg##246523
collect Fel Reaver Leg##133754 |q 40856/2 |goto 68.35,25.81
step
label "Test_Headgun_On_Fel_Critters_Engineering"
Use Flinlocke's Headgun Prototype on Felspiders and Fel-Tainted Squirrels |use Flintlocke's Headgun Prototype##133761
|tip They look like small spiders and squirrels running around on the ground around this area.
Test the Headgun on #10# Fel Critters |q 40859/1 |goto 66.87,25.83
step
Follow the path up |goto 65.80,25.43 < 20 |only if walking
talk Fargo Flintlocke##102195
turnin It'll Cost You##40856 |goto 65.22,24.91
accept The Missing Pieces##40858 |goto 65.22,24.91
turnin The Latest Fashion: Headguns!##40859 |goto 65.22,24.91
step
talk Didi the Wrench##93520
|tip She walks around inside the building.
turnin The Missing Pieces##40858 |goto Dalaran L/10 38.83,24.70
step
talk Didi the Wrench##93520
|tip She walks around inside the building.
accept Always the Last Thing##40863 |goto Dalaran L/10 38.83,24.70
step
talk Hobart Grapplehammer##93539
|tip Inside the building.
accept Resupplying the Line##40860 |goto 38.35,24.53
step
talk Tiffany Cartier##93526
|tip Inside the building.
Tell her _"Didi sent me to retrieve a Prismatic Felslate Diamond."_
Watch the dialogue
Get the Prismatic Felslate Diamond |q 40863/1 |goto 40.27,34.68
step
talk Didi the Wrench##93520
|tip She walks around inside the building.
Tell her _"Here's the diamond you requested."_
Watch the dialogue
Have Didi Test the Diamond |q 40863/2 |goto 38.83,24.70
step
talk Deucus Valdera##92458
|tip Inside the building.
Tell him _"Didi sent me to retrieve a Volatile Leytorrent Potion."_
Watch the dialogue
Get the Volatile Leytorrent Potion |q 40863/3 |goto 41.33,33.41
step
talk Didi the Wrench##93520
|tip She walks around inside the building.
Tell her _"Here's the potion you requested."_
Watch the dialogue
Have Didi Test the Potion |q 40863/4 |goto 38.83,24.70
step
talk Bonegrim##97863
|tip Inside the building.
Ask him _"Would you happen to have a Fel-infused Core?"_
Watch the dialogue
Find a Fel-Infused Core |q 40863/5 |goto 47.96,38.49
step
click Catriona's Jewel##246701
|tip Upstairs inside the building.
Tell her _"Catriona, I heard someone was looking for you downstairs."_
|tip Talk to Catriona Macrae nearby to get her to leave the room.
collect Catriona's Jewel##133895 |q 40863/6 |goto 49.51,38.18
step
talk Bonegrim##97863
|tip Downstairs inside the building.
Tell him _"Here's the jewel, now give me the core."_
collect Fel-Infused Core##133881 |q 40863/7 |goto 47.96,38.49
step
talk Didi the Wrench##93520
|tip She walks around inside the building.
Tell her _"Here's the core you requested."_
Watch the dialogue
Have Didi Test the Core |q 40863/8 |goto 38.83,24.70
step
talk Didi the Wrench##93520
|tip She walks around inside the building.
turnin Always the Last Thing##40863 |goto 38.83,24.70
accept Modular Modifications##40864 |goto 38.83,24.70
step
Follow the road |goto Val'sharah/0 59.12,59.65 < 30 |only if walking
talk Fargo Flintlocke##102197
turnin Resupplying the Line##40860 |goto Val'sharah/0 59.82,62.26
accept All Charged Up##40862 |goto Val'sharah/0 59.82,62.26
accept In My Sights##40861 |goto Val'sharah/0 59.82,62.26
stickystart "Deployable_Bullet_Dispenser_Parts_Engineering"
step
Cross the bridge |goto 61.56,61.61 < 20 |only if walking
Follow the path |goto 63.32,61.09 < 30 |only if walking
Follow the path |goto 63.78,59.64 < 30 |only if walking
Follow the path up |goto 63.14,58.36 < 30 |only if walking
Use the Gunpowder Charges on Shimmering Oleanders |use Gunpowder Charges##133775
|tip They look like wilted red-glowing plants around this area.
Explode #15# Shimmering Oleanders |q 40862/1 |goto 62.99,56.01
step
label "Deployable_Bullet_Dispenser_Parts_Engineering"
click Destroyed Deployable Bullet Dispensers##246875
|tip They look like large metal objects on the ground around this area.
collect 10 Deployable Bullet Dispenser Parts##133978 |q 40861/1 |goto 62.99,56.01
step
Follow the path down |goto 62.90,57.66 < 20 |only if walking
Follow the path up |goto 63.64,59.67 < 30 |only if walking
Cross the bridge |goto 62.33,61.64 < 20 |only if walking
talk Fargo Flintlocke##102197
turnin All Charged Up##40862 |goto 59.82,62.26
turnin In My Sights##40861 |goto 59.82,62.26
step
collect 80 Felslate##123919 |c |q 40864
|tip Use the "Leystone Ore & Felslate (Mining Route)" guide to gather them, if you have Mining.
|tip You can also purchase them from the Auction House.
step
collect 20 Wildfowl Egg##124121 |c |q 40864
|tip Use the "Wildfowl Egg" farming guide to gather them.
|tip You can also purchase them from the Auction House.
step
collect 20 Big Gamy Ribs##124119 |c |q 40864
|tip Use the "Big Gamy Ribs" farming guide to gather them.
|tip You can also purchase them from the Auction House.
step
collect 20 Highmountain Salmon##124109 |c |q 40864
|tip Use the "Highmountain Salmon" farming guide to gather them, if you have Fishing.
|tip You can also purchase them from the Auction House.
step
collect 20 Black Barracuda##124112 |c |q 40864
|tip Use the "Black Barracuda" farming guide to gather them, if you have Fishing.
|tip You can also purchase them from the Auction House.
step
Open Your Engineering Crafting Panel:
_<Create 1 Reaves Module: Snack Distribution Mode>_
Create a Reaves Module: Snack Distribution Mode |q 40864/1
step
Use the Reaves Battery |use Reaves Battery##132523
Use the Reaves Module: Snack Distribution Mode |use Reaves Module: Snack Distribution Mode##132529
Summon Reaves and Apply the Module |q 40864/2
step
talk Didi the Wrench##93520
|tip She walks around inside the building.
turnin Modular Modifications##40864 |goto Dalaran L/10 38.83,24.70
step
talk Didi the Wrench##93520
|tip She walks around inside the building.
accept Here Comes the BOOM!##40870 |goto 38.83,24.70
step
talk Hobart Grapplehammer##93539
|tip Inside the building.
accept Fire and Forget##40869 |goto 38.35,24.53
accept It's Not Rocket Science##40865 |goto 38.35,24.53
stickystart "Bandage_Wounded_Guards_Engineering_1"
step
click Barrel of Red Fireworks##246728
collect Didi's Red Fireworks##133934 |q 40870/4 |goto 48.93,21.20
step
label "Bandage_Wounded_Guards_Engineering_1"
Use the Prototype Pump-Action Bandage Gun on Wounded Kirin Tor Guardians |use Prototype Pump-Action Bandage Gun##133928
|tip They look like npc's kneeling on the ground all around this area.
Bandage #3# Wounded Guards |q 40869/1 |goto 48.94,29.82
step
Use the Prototype Pump-Action Bandage Gun |use Prototype Pump-Action Bandage Gun##133928
Use the Gun to Calibrate It |q 40869/2
stickystart "Bandage_Wounded_Guards_Engineering_2"
step
click Barrel of Blue Fireworks##246729
collect Didi's Blue Fireworks##133935 |q 40870/2 |goto 58.33,42.17
step
click Barrel of Purple Fireworks##246730
collect Didi's Purple Fireworks##133936 |q 40870/3 |goto 48.91,70.58
step
Run up the stairs |goto 37.27,50.12 < 20 |only if walking
click Barrel of Green Fireworks##246726
collect Didi's Green Fireworks##133794 |q 40870/1 |goto 31.11,43.63
step
label "Bandage_Wounded_Guards_Engineering_2"
Use the Prototype Pump-Action Bandage Gun on Wounded Kirin Tor Guardians |use Prototype Pump-Action Bandage Gun##133928
|tip They look like npc's kneeling on the ground all around this area.
Bandage #3# Wounded Guards |q 40869/3 |goto 48.94,29.82
step
Use the Prototype Pump-Action Bandage Gun |use Prototype Pump-Action Bandage Gun##133928
Use the Gun Again to Calibrate It Once More |q 40869/4
step
Use the Prototype Pump-Action Bandage Gun on Wounded Kirin Tor Guardians |use Prototype Pump-Action Bandage Gun##133928
|tip They look like npc's kneeling on the ground all around this area.
Bandage #3# Wounded Guards |q 40869/5 |goto 48.94,29.82
step
talk Didi the Wrench##93520
|tip She walks around inside the building.
turnin Here Comes the BOOM!##40870 |goto 38.83,24.70
step
talk Hobart Grapplehammer##93539
|tip Inside the building.
turnin Fire and Forget##40869 |goto 38.35,24.53
step
Follow the path |goto Stormheim/0 61.67,55.08 < 30 |only if walking and horde
Follow the path |goto Stormheim/0 69.66,52.75 < 30 |only if walking and horde
Follow the path down |goto Stormheim/0 72.07,51.87 < 15 |only if walking and horde
Follow the path |goto Stormheim/0 71.42,55.36 < 30 |only if walking and horde
Follow the path |goto Stormheim/0 72.18,59.28 < 20 |only if walking and alliance
Follow the path |goto Stormheim/0 73.40,57.03 < 30 |only if walking
talk Fargo Flintlocke##102198
turnin It's Not Rocket Science##40865 |goto Stormheim/0 78.29,57.25
accept Bubble Baubles##40867 |goto Stormheim/0 78.29,57.25
accept The Shell, You Say?##40866 |goto Stormheim/0 78.29,57.25
stickystart "Stormheim_Cerith_Shells_Engineering"
step
click Murloc Trinkets##246712
|tip They look like small blue circular objects on the ground and in the murloc huts around this area.
|tip You can find more to the east across the water.
collect 12 Murloc Trinket##133791 |q 40867/1 |goto 80.28,58.97
step
label "Stormheim_Cerith_Shells_Engineering"
Kill enemies around this area
collect 10 Stormheim Cerith Shell##133782 |q 40866/1 |goto 80.28,58.97
step
talk Fargo Flintlocke##102198
turnin Bubble Baubles##40867 |goto 78.29,57.25
turnin The Shell, You Say?##40866 |goto 78.29,57.25
accept Wibbly-Wobbly, Timey-Wimey##40868 |goto 78.29,57.25
step
talk Hobart Grapplehammer##93539
|tip Inside the building.
turnin Wibbly-Wobbly, Timey-Wimey##40868 |goto Dalaran L/10 38.35,24.53
step
talk Hobart Grapplehammer##93539
|tip Inside the building.
accept 'Locke and Load##40871 |goto 38.35,24.53
step
Cross the bridge |goto Azsuna/0 43.06,45.38 < 30 |only if walking
Follow the road |goto Azsuna/0 40.63,48.63 < 30 |only if walking
Continue following the road |goto Azsuna/0 39.32,51.64 |only if walking
Follow the path |goto Azsuna/0 38.79,55.36 < 30 |only if walking
Continue following the path |goto Azsuna/0 38.99,57.96 |only if walking
Follow the path |goto Azsuna/0 40.11,58.80 < 30 |only if walking
Cross the water |goto Azsuna/0 41.60,60.71 < 30 |only if walking
talk Fargo Flintlocke##102196
turnin 'Locke and Load##40871 |goto Azsuna/0 42.99,62.84
accept Going Out With a Bang##40872 |goto Azsuna/0 42.99,62.84
step
Use Hobart's Prototype Gunshoes |use Hobart's Prototype Gunshoes##133941
|tip Run on the water run over the Gunpack Debris floating on the water.
Collect #15# Gunpack Debris |q 40872/1 |goto 43.97,66.59
step
talk Fargo Flintlocke##102196
turnin Going Out With a Bang##40872 |goto 42.99,62.84
accept Keep Yer Powder Dry##40873 |goto 42.99,62.84
accept Going to Waste##40875 |goto 42.99,62.84
accept I'd Do It Myself, But...##40874 |goto 42.99,62.84
stickystart "Hatecoil_Slavemasters_Engineering"
stickystart "Barrels_Of_Gunpowder_Engineering"
step
Follow the path |goto 44.32,60.52 < 20 |only if walking
Follow the path |goto Azsuna/18 39.54,35.61 < 30 |walk
Follow the path |goto Azsuna/18 54.31,51.23 < 30 |walk
talk Lowping##102673
Find Lowping and Shave His Head |q 40875/1 |goto Azsuna/18 47.91,71.26
step
talk Lowping##102673
Make a Copy of the Schematic |q 40875/2 |goto 48.15,71.17
step
label "Hatecoil_Slavemasters_Engineering"
kill 10 Hatecoil Slavemaster##90109+ |q 40874/1 |goto 54.31,51.23
step
label "Barrels_Of_Gunpowder_Engineering"
click Gunpowder Kegs##246745
|tip They look like wooden barrels on the ground around this area.
collect 8 Barrel of Gunpowder##133798 |q 40873/1 |goto 54.31,51.23
step
Follow the path |goto 54.54,55.50 < 30 |walk
Follow the path |goto 42.69,34.41 < 30 |walk
Follow the path |goto Azsuna/0 45.84,57.37 < 30 |only if walking
Follow the path up |goto Azsuna/0 45.26,58.84 < 30 |only if walking
Cross the water |goto Azsuna/0 44.30,60.57 < 30 |only if walking
talk Fargo Flintlocke##102196
turnin Keep Yer Powder Dry##40873 |goto Azsuna/0 42.99,62.84
turnin Going to Waste##40875 |goto Azsuna/0 42.99,62.84
turnin I'd Do It Myself, But...##40874 |goto Azsuna/0 42.99,62.84
accept 'Locke, Stock and Barrel##40876 |goto Azsuna/0 42.99,62.84
step
talk Hobart Grapplehammer##93539
|tip Inside the building.
turnin 'Locke, Stock and Barrel##40876 |goto Dalaran L/10 38.35,24.53
step
talk Hobart Grapplehammer##93539
|tip Inside the building.
accept Trigger Happy##40877 |goto 38.35,24.53
step
talk Didi the Wrench##93520
|tip She walks around inside the building.
accept Cheating Death##40878 |goto 38.83,24.70
step
talk Hobart Grapplehammer##93539
|tip Inside the building.
buy Schematic: Failure Detection Pylon##137710 |n
collect Schematic: Failure Detection Pylon##137710 |c |goto 38.35,24.53 |q 40878
step
Use the Schematic: Failure Detection Pylon |use Schematic: Failure Detection Pylon##137710
Learn the Rank 2 Schematic for Failure Detection Pylon |learn Failure Detection Pylon##199004
step
talk Hobart Grapplehammer##93539
|tip Inside the building.
buy 6 Chaos Blaster of the Harmonious##136632 |n
collect 6 Chaos Blaster of the Harmonious##136632 |c |goto 38.35,24.53 |q 40878
step
collect 16 Felslate##123919 |c |q 40878
|tip Use the "Leystone Ore & Felslate (Mining Route)" guide to gather them, if you have Mining.
|tip You can also purchase them from the Auction House.
step
Open Your Engineering Crafting Panel:
_<Create 2 Failure Detection Pylon>_
collect 2 Failure Detection Pylon##132515 |q 40878/1
step
Enter the Assault on Violet Hold Dungeon |goto Violet Hold/1 50.95,69.91 < 10000 |noway |c |q 40878
step
click Plasmatic Laser Bolt##249733
|tip It will be inside of the cell that a boss comes out of.
collect Plasmatic Laser Bolt##133946 |q 40878/2 |goto Violet Hold/1 38.12,39.66
step
Complete the Assault on Violet Hold Dungeon
|tip Use the "Assault on Violet Hold" dungeon guide to accomplish this.
Defeat the Third Escaped Prisoner |q 40878/3
step
Enter the Halls of Valor Dungeon
|tip Use the Group Finder to enter the dungeon.
kill Odyn##95676
|tip Use the "Halls of Valor" dungeon guide to accomplish this.
click Spoils of the Worthy##245847
|tip It appears after you kill Odyn.
collect Runestone of Vitality##133802 |q 40877/1
step
talk Didi the Wrench##93520
|tip She walks around inside the building.
turnin Cheating Death##40878 |goto Dalaran L/10 38.83,24.70
step
talk Hobart Grapplehammer##93539
|tip Inside the building.
turnin Trigger Happy##40877 |goto 38.35,24.53
step
Reach Level 45 |ding 45
|tip Use the Leveling guides to accomplish this.
step
Unlock World Quests |complete completedq(43341)
|tip Use the "World Quests" dailies guide to accomplish this.
step
talk Hobart Grapplehammer##93539
|tip Inside the building.
accept Revamping the Recoil##40882 |goto 38.35,24.53
step
talk Didi the Wrench##93520
|tip She walks around inside the building.
accept Short Circuit##40880 |goto 38.83,24.70
step
talk Rocket-Chief Fuselage##19570
|tip He walks around this area.
|tip _"I'm looking for information about the inventor of Blingtron."_
Talk to Rocket-Chief Fuselage in Area 52 |q 40880/1 |goto Netherstorm/0 32.73,64.96
step
talk Ricket##29428
Tell her _"I'm looking for information about the inventor of Blingtron."_
Talk to Ricket in K3 |q 40880/2 |goto The Storm Peaks/0 40.92,85.30
step
talk Chief Engineer Foote##34754
|tip Inside the building.
Tell him _"I'm looking for information about the inventor of Blingtron."_
Talk to Chief Engineer Foote in Ratchet |q 40880/3 |goto Northern Barrens/0 66.97,74.69
step
talk Nixx Sprocketspring##98838
|tip Inside the building.
Tell her _"I'm looking for information about the inventor of Blingtron."_
Talk to Nixx Sprocketspring in Gadgetzan |q 40880/4 |goto Tanaris/0 52.37,28.31
step
talk Winkey##7770
Tell her _"Actually I'm here to ask you about your grandfather."_
Talk to Winkey in Eastern Tanaris |q 40880/5 |goto 65.05,63.56
step
Find Gnopetto's Workshop |q 40880/6 |goto 69.55,68.46
|tip Swim into the underwater building.
|tip The Fatigue bar will go away when you enter the building.
step
click Blingtron Circuit Design##246438
|tip Inside the underwater building.
turnin Short Circuit##40880 |goto 69.55,68.46
accept Oil Rags to Riches##40881 |goto 69.55,68.46
step
talk Didi the Wrench##93520
|tip She walks around inside the building.
turnin Oil Rags to Riches##40881 |goto Dalaran L/10 38.83,24.70
step
_Using the Suramar Questing Guide:_
|tip Use the Suramar questing guide to complete quests until you complete the quest titled "Friends With Benefits".
|tip This is the quest when you unlock the Arcway and Court of Stars dungeons.
Complete the "Friends With Benefits" Quest in Suramar |complete completedq(44053)
step
kill Advisor Melandrus##104218 |q 40882/1
|tip He's inside the Court of Stars dungeon.
|tip Use the "Court of Stars" dungeon guide to accomplish this.
collect Arcanic Compressor##133806 |q 40882/2
step
talk Hobart Grapplehammer##93539
|tip Inside the building.
turnin Revamping the Recoil##40882 |goto Dalaran L/10 38.35,24.53
step
_Congratulations!_
You completed the Engineering questline.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Engineering\\Quest Guides\\Argus Engineering Quest Line",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the Argus Engineering quest line.",
startlevel=45.0,
condition_end=function() return completedq(48065) end,
condition_suggested=function() return skill('Legion Engineering') > 0 and level >= 45 and not completedq(48065) end,
},[[
step
talk Timofey Oshenko##92194
|tip Inside the building.
Learn the Engineering Profession |complete skill("Legion Engineering")>=1 |goto Dalaran L/10 37.89,26.10
step
Complete the Quest _"The Defiler's Legacy"_ |complete completedq(47690)
|tip This is part of the Argus campaign guide.
Check out our Argus campaign guide to accomplish this |confirm |next "Leveling Guides\\Legion (10-50)\\Argus Campaign"
step
talk Durael##125525
accept The Wrench Calls##48069 |goto Krokuun/2 41.86,76.27
step
talk Didi the Wrench##93520
turnin The Wrench Calls##48069 |goto Dalaran L/10 38.79,24.86
accept Extraterrestrial Exploration##48065 |goto Dalaran L/10 38.79,24.86
step
talk Hobart Grapplehammer##93539
accept A Harsh Mistress##48056 |goto Dalaran L/10 38.35,24.53
step
Use the Prototype Gravitational Reduction Slippers |use Prototype Gravitational Reduction Slippers##151927
|tip Jump once after using the slippers.
Test Your First Jump |q 48056/1
step
Use the Prototype Gravitational Reduction Slippers |use Prototype Gravitational Reduction Slippers##151927
Calibrate the G.R.S |q 48056/2
step
Jump once again
Test Your Second Jump |q 48056/3
step
Use the Prototype Gravitational Reduction Slippers |use Prototype Gravitational Reduction Slippers##151927
Calibrate the G.R.S Once More |q 48056/4
step
Jump one more time
Test Your Final Jump |q 48056/5
step
talk Hobart Grapplehammer##93539
turnin A Harsh Mistress##48056 |goto Dalaran L/10 38.35,24.53
step
Follow the path |goto Krokuun/0 58.74,68.38 < 15 |only if walking
Follow the path |goto 59.59,67.91 < 10 |only if walking
Follow the path |goto 59.82,66.12 < 10 |only if walking
Follow the path |goto 59.69,64.24 < 15 |only if walking
Follow the path |goto 61.51,62.19 < 15 |only if walking
Go down the stairs |goto Krokuun/0 63.08,62.12 < 15 |only if walking
Follow the path |goto 66.11,63.96 < 20 |only if walking
Follow the path down |goto 67.21,65.96 < 15 |only if walking
Use the Ionized Geographical Recorder |use Ionized Geographical Recorder##151926
Get the Petrified Forest Reading |q 48065/1 |goto 69.49,67.72
step
Follow the path |goto 67.05,65.69 < 15 |only if walking
Follow the path up |goto 65.99,63.82 < 15 |only if walking
Follow the path |goto 63.17,62.10 < 20 |only if walking
Go up the stairs |goto 61.44,62.25 < 15 |only if walking
Follow the path |goto 60.31,60.30 < 15 |only if walking
Follow the path |goto 61.57,50.04 < 20 |only if walking
Follow the path |goto 61.67,46.09 < 20 |only if walking
Follow the path down |goto 59.95,42.17 < 15 |only if walking
Follow the path down |goto 58.61,39.88 < 15 |only if walking
Follow the path down |goto 59.08,38.05 < 15 |only if walking
Follow the path |goto 59.37,33.33 < 20 |only if walking
Follow the path up |goto 60.62,29.93 < 15 |only if walking
Follow the path up |goto 61.78,29.65 < 15 |only if walking
Follow the path |goto 62.48,26.16 < 20 |only if walking
Use the Ionized Geographical Recorder |use Ionized Geographical Recorder##151926
Get the Nath'raxas Hold Reading |q 48065/3 |goto 61.15,25.29
step
Follow the path down |goto Krokuun/0 37.49,62.18 < 20 |only if walking
Follow the path |goto 35.24,61.60 < 15 |only if walking
Follow the path up |goto 33.64,61.47 < 15 |only if walking
Follow the path up |goto 33.04,60.22 < 15 |only if walking
Use the Ionized Geographical Recorder |use Ionized Geographical Recorder##151926
Get the Shattered Fields Reading |q 48065/2 |goto 32.67,62.84
step
Follow the path |goto Eredath/0 60.66,36.87 < 20 |only if walking
Follow the path |goto 58.64,33.42 < 15 |only if walking
Use the Ionized Geographical Recorder |use Ionized Geographical Recorder##151926
Get the Arinor Gardens Reading |q 48065/4 |goto 57.03,30.01
step
Follow the path |goto Eredath/0 44.95,56.63 < 15 |only if walking
Use the Ionized Geographical Recorder |use Ionized Geographical Recorder##151926
Get the Oronaar Collapse Reading |q 48065/5 |goto Eredath/0 43.98,59.41
step
talk Didi the Wrench##93520
turnin Extraterrestrial Exploration##48065 |goto Dalaran L/10 38.79,24.86
step
_Congratulations!_
You completed the Argus Engineering questline.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Leveling Guides\\Legion Fishing 1-100",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Legion Fishing skill from 1-100.",
condition_end=function() return skill('Legion Fishing') >= 100 end,
condition_suggested=function() return skill('Legion Fishing') > 0 and skill('Legion Fishing') < 100 end,
},[[
step
Load the "Legion Fishing Quest Line" Guide |confirm |next "Profession Guides\\Fishing\\Quest Guides\\Legion Fishing Quest Line"
|tip Click the line above to load the guide.
Complete the Legion Fishing Quest Line |q 42911 |future
step
Fish in the open water
Reach 100 Legion Fishing |skill Legion Fishing,100 |goto Broken Isles/0 44.66,61.96
step
_Congratulations!_
You Reached Level 100 Legion Fishing Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Black Barracuda",{
author="support@zygorguides.com",
description="\nThis guide will walk you through fishing up Black Barracudas for various cooking recipes.",
startlevel=10.0,
},[[
step
Follow the path down |goto Suramar/0 64.28,43.04 < 30 |only if walking
Follow the path down |goto Suramar/0 67.43,44.64 < 20 |only if walking
Continue down the path |goto Suramar/0 68.43,45.91 < 20 |only if walking
Follow the path down |goto Suramar/0 68.16,48.54 < 30 |only if walking
Follow the path |goto Suramar/0 69.70,47.92 < 30 |only if walking
Follow the path down |goto Suramar/0 71.37,47.01 < 30 |only if walking
Fish in Black Barracuda Schools
|tip They look like small circular swirling spots in the water along the coast.
|tip Follow the beach east from this spot.
collect Black Barracuda##124112 |n |goto Suramar/0 74.20,49.90
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Highmountain Salmon",{
author="support@zygorguides.com",
description="\nThis guide will walk you through fishing up Highmountain Salmon for various cooking recipes.",
startlevel=10.0,
},[[
step
Fish in the Rapid-Moving River
|tip Highmountain Salmon seems to be pretty rare to catch, so it may take a while.
collect Highmountain Salmon##124109 |n |goto Highmountain/0 41.84,51.65
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Silver Mackerel",{
author="support@zygorguides.com",
description="\nThis guide will walk you through fishing up Silver Mackerels for various cooking recipes.",
startlevel=10.0,
},[[
step
Fish in the water
collect Silver Mackerel##133607 |n |goto Azsuna/0 52.47,31.86
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Quest Guides\\Legion Fishing Quest Line",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the Legion Fishing quest line.",
startlevel=10.0,
condition_end=function() return completedq(42911) end,
condition_suggested=function() return skill('Legion Fishing') > 0 and level >= 10 and not completedq(42911) end,
},[[
step
talk Marcia Chase##95844
Learn the Fishing Profession |complete skill("Fishing")>=1 |goto Dalaran L/10 52.82,65.60
step
Reach Level 675 Fishing |skill Fishing,675
|tip Use the Fishing 1-700 guide to accomplish this.
step
talk Marcia Chase##95844
Learn Legion Fishing |skillmax Fishing,800 |goto 52.82,65.60
step
collect Goblin Glider Kit##109076 |c |q 42911 |future
|tip You can create these, if you have Engineering.
|tip You can also purchase them from the Auction House.
step
Follow the path |goto Dalaran L/10 38.13,45.34 < 20 |only if walking
Follow the path |goto Dalaran L/10 30.75,32.64 < 20 |only if walking
Jump off toward the floating island |goto Dalaran L/10 26.22,20.40 < 20 |only if walking
|tip Use the Goblin Glider Kit immediately after jumping. |only if walking
talk Conjurer Margoss##108825
accept Drowned Mana##42911 |goto Dalaran L/10 23.10,-11.40
step
Fish in the Water
collect Drowned Mana##138777 |q 42911 |goto 22.99,-14.30
step
talk Conjurer Margoss##108825
turnin Drowned Mana##42911 |goto 23.10,-11.40
step
_Congratulations!_
You completed the Fishing questline.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Quest Guides\\Underlight Angler (Legion Fishing Artifact)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Legion Fishing artifact.",
startlevel=10.0,
condition_end=function() return completedq(41010) end,
condition_suggested=function() return skill('Legion Fishing') > 0 and level >= 50 and not completedq(41010) end,
},[[
step
Earn the "A Cast Above the Rest" Achievement |complete achieved(10595)
|tip Use the "A Cast Above the Rest" achievement guide to accomplish this.
step
Earn the "Bigger Fish to Fry" Achievement |complete achieved(10596)
|tip Use the "Bigger Fish to Fry" achievement guide to accomplish this.
step
Follow the path down |goto Suramar/0 64.28,43.04 < 30 |only if walking
Follow the path down |goto Suramar/0 67.43,44.64 < 20 |only if walking
Continue down the path |goto Suramar/0 68.43,45.91 < 20 |only if walking
Follow the path down |goto Suramar/0 68.16,48.54 < 30 |only if walking
Follow the path |goto Suramar/0 69.70,47.92 < 30 |only if walking
Follow the path down |goto Suramar/0 71.37,47.01 < 30 |only if walking
Fish in Black Barracuda Schools
|tip They look like small circular swirling spots in the water along the coast.
|tip Follow the beach east from this spot.
collect Luminous Pearl##133887|n
|tip You will accept this quest automatically.
accept Luminous Pearl##40960 |goto Suramar/0 74.20,49.90
step
talk Archmage Khadgar##90417
turnin Luminous Pearl##40960 |goto Dalaran L/10 28.48,48.33
accept The Dalaran Fountain##40961 |goto Dalaran L/10 28.48,48.33
step
talk Marcia Chase##95844
turnin The Dalaran Fountain##40961 |goto 52.84,65.62
step
_Walk around Dalaran:_
talk Nat Pagle##102639
|tip He will eventually appear next to you.
accept Fish Frenzy##41010
step
_Next to you:_
talk Nat Pagle##102639
Speak with Nat Pagle in Dalaran |q 41010/1
step
Begin the Scenario |scenariostart |q 41010
step
Kill enemies around this area
Slay All of the Murlocs on the Island |scenariostage 1 |goto Gloaming Reef/0 42.45,50.38 |q 41010
step
Fish in Frenzied Fish Pools
|tip Underlight Deepfeeder murlocs will sometimes spawn and attack you.
kill Underlight Deepfeeder##102511+
collect 15 Gloaming Frenzy##138114 |scenariogoal 2/30403 |goto 47.25,36.94 |q 41010
step
talk Nat Pagle##107804
Watch the dialogue
Give Nat your Gloaming Frenzies |scenariostage 3 |goto 36.42,54.63 |q 41010
step
Fish in the Roiling Whirlpool
Fish Up What's Been Disturbing the Frenzies |scenariostage 4 |goto 36.41,55.52 |q 41010
step
kill Mglrrp##102517
Slay Mglrrp |scenarioend |goto 35.05,57.15 |q 41010
Dispatch the Gloaming Reef Fish |q 41010/2 |goto 35.05,57.15
step
Watch the dialogue
click Boat the Dalaran
Return to Marcia in Dalaran |q 41010/3 |goto 36.94,58.76
step
talk Marcia Chase##95844
turnin Fish Frenzy##41010 |goto Dalaran L/10 52.84,65.62
step
_Congratulations!_
You earned the Underlight Angler fishing artifact.
|tip To gain Artifact power for the Underlight Angler:
|tip Continue fishing rare fish, like you did while earning the "Bigger Fish to Fry" achievement.
|tip Each rare fish will give 50 Artifact Power.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Leveling Guides\\Legion Herbalism 1-100",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Legion Herbalism profession from 1-100.",
startlevel=10.0,
condition_end=function() return skill('Legion Herbalism') >= 100 end,
condition_suggested=function() return skill('Legion Herbalism') > 0 and skill('Legion Herbalism') < 100 and level >= 10 end,
},[[
step
map Azsuna/0
path	follow smart; loop on; ants curved; dist 20
path	46.38,44.51	47.68,43.75	48.87,42.45	48.36,38.75	48.48,36.05
path	49.34,33.40	50.26,30.59	51.11,28.89	50.27,25.03	50.96,22.14
path	50.75,19.79	52.13,16.67	54.63,16.44	56.69,17.17	57.59,18.25
path	59.67,20.32	60.55,20.91	63.39,25.50	64.63,25.89	63.43,28.43
path	63.39,31.12	64.02,34.78	65.56,36.66	66.22,38.74	66.49,42.33
path	66.97,44.07	66.48,46.99	64.05,50.95	62.65,51.41	61.07,50.79
path	58.62,51.41	56.03,52.81	53.66,54.29	51.42,56.22	48.86,54.98
path	46.41,51.84	46.19,46.77
Collect herbs along the path
click Aethril##244774
Train Legion Herbalism |skillmax Legion Herbalism,100
|tip You will learn Legion Herbalism once you loot an herb.
step
map Azsuna/0
path	follow smart; loop on; ants curved; dist 20
path	46.38,44.51	47.68,43.75	48.87,42.45	48.36,38.75	48.48,36.05
path	49.34,33.40	50.26,30.59	51.11,28.89	50.27,25.03	50.96,22.14
path	50.75,19.79	52.13,16.67	54.63,16.44	56.69,17.17	57.59,18.25
path	59.67,20.32	60.55,20.91	63.39,25.50	64.63,25.89	63.43,28.43
path	63.39,31.12	64.02,34.78	65.56,36.66	66.22,38.74	66.49,42.33
path	66.97,44.07	66.48,46.99	64.05,50.95	62.65,51.41	61.07,50.79
path	58.62,51.41	56.03,52.81	53.66,54.29	51.42,56.22	48.86,54.98
path	46.41,51.84	46.19,46.77
Collect herbs along the path
click Aethril##244774
Reach Level 85 Legion Herbalism |skill Legion Herbalism,85
step
map Broken Shore/0
path follow smart; loop on; ants curved; dist 30
path	42.35,48.47	48.28,52.76	54.38,51.89	60.04,50.88	60.40,45.92
path	64.85,47.78	69.92,43.89	75.65,49.52	80.12,52.10	83.32,52.78
path	81.62,46.31	78.45,40.11	75.67,36.65	68.76,32.82	65.87,30.58
path	59.83,31.73	56.25,34.95	53.74,37.03	51.26,34.42	47.24,35.49
path	40.69,27.08	38.31,24.99	38.46,31.18	39.26,41.35
Collect herbs along the path
Reach Level 100 Legion Herbalism |skill Legion Herbalism,100
step
_Congratulations!_
You Reached Level 100 Legion Herbalism Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Aethril",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Aethril for various Alchemy recipes.",
startlevel=10.0,
},[[
step
map Azsuna/0
path	follow smart; loop on; ants curved; dist 20
path	46.38,44.51	47.68,43.75	48.87,42.45
path	48.36,38.75	48.48,36.05	49.34,33.40
path	50.26,30.59	51.11,28.89	50.27,25.03
path	50.96,22.14	50.75,19.79	52.13,16.67
path	54.63,16.44	56.69,17.17	57.59,18.25
path	59.67,20.32	60.55,20.91	63.39,25.50
path	64.63,25.89	63.43,28.43	63.39,31.12
path	64.02,34.78	65.56,36.66	66.22,38.74
path	66.49,42.33	66.97,44.07	66.48,46.99
path	64.05,50.95	62.65,51.41	61.07,50.79
path	58.62,51.41	56.03,52.81	53.66,54.29
path	51.42,56.22	48.86,54.98	46.41,51.84
path	46.19,46.77
click Aethril##244774
|tip Track them on your minimap with "Find Herbs".
kill Withered Hungerer##98232+
|tip They have a chance to spawn when you gather Aethril.
collect Aethril##124101 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Astral Glory",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Astral Glory for various Alchemy recipes.",
startlevel=10.0,
},[[
step
label "path"
map Krokuun/0
path loop off; ants curved; dist 20
path	59.69,61.63	58.57,57.77	58.09,54.90
path	60.47,53.83	61.68,49.79	61.62,46.21
path	62.70,44.86	64.21,41.74	64.72,38.52
path	67.08,36.65	69.20,34.09	71.48,34.17
click Fel-Encrusted Herb##273052
collect Astral Glory##151565 |n
Follow the path until you reach the end |goto 71.48,34.17 |noway |c
step
map Krokuun/0
path loop off; ants curved; dist 20
path	71.13,35.38	65.91,37.60	64.27,40.95
path	62.87,44.47	60.54,42.99	59.25,38.16
path	60.83,34.83	61.50,31.51	61.49,29.55
path	60.07,31.46	59.28,34.25	58.90,37.71
path	57.05,37.72	53.84,35.33	51.33,33.83
path	49.32,35.26	48.18,38.82	47.04,41.50
path	46.12,44.59	45.08,47.85	42.87,55.27
path	42.32,60.15	40.67,66.54	36.59,70.89
path	39.81,70.77	42.39,74.66	44.71,71.86
path	47.54,68.02	49.10,68.93	51.63,70.30
path	51.72,67.52	52.57,64.76	55.67,61.81
path	57.97,61.39
click Fel-Encrusted Herb##273052
collect Astral Glory##151565 |n
Follow the path until you reach the end |goto 57.97,61.39 |noway |c |next "path"
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Dreamleaf",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Dreamleaf for various Alchemy recipes.",
startlevel=10.0,
},[[
step
map Val'sharah/0
path	follow smart; loop on; ants curved; dist 20
path	54.98,53.49	54.22,50.65	51.66,50.69
path	50.22,52.58	47.26,54.79	44.78,58.33
path	43.95,61.83	44.75,62.57	44.88,64.04
path	45.66,68.39	45.06,72.32	45.09,73.77
path	45.48,75.42	47.57,77.15	50.39,78.38
path	51.63,79.73	52.84,78.02	56.17,78.02
path	57.69,76.37	57.34,72.60	56.14,69.08
path	57.16,65.53	57.13,63.03	55.91,61.27
path	56.11,58.44
click Dreamleaf##244775
|tip Track them on your minimap with "Find Herbs".
kill Nightmare Creeper##98234+
|tip They have a chance to spawn when you gather Dreamleaf.
collect Dreamleaf##124102 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Felwort",{
author="support@zygorguides.com",
description="\nFelwort can be gathered from Legion World Quests in the Broken Isles.",
condition_end=function() return skill('Legion Herbalism') >= 50 end,
},[[
step
click Felwort##252404+
|tip These can only be gathered when a corresponding World Quest in a Legion zone is active.
|tip You must have the herbalism skill for the quests to show up.
|tip Refer to the World Quest guide to accomplish this.
collect Felwort##124106 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Fjarnskaggl",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Fjarnskaggl for various Alchemy recipes.",
startlevel=10.0,
},[[
step
map Stormheim/0
path	follow smart; loop on; ants curved; dist 20
path	44.93,54.20	41.34,52.95	40.33,50.92
path	42.22,48.92	43.08,46.16	43.43,43.85
path	41.29,41.57	40.49,39.91	38.01,41.13
path	35.47,40.72	35.03,39.51	35.58,37.35
path	33.48,34.81	33.71,31.40	35.77,31.89
path	37.05,32.77	38.83,31.85	40.28,30.50
path	37.48,28.96	37.30,26.42	38.91,25.85
path	41.56,23.10	42.49,23.41	43.26,23.57
path	45.75,23.16	43.74,26.24	46.11,27.11
path	44.71,30.80	46.90,32.23	48.53,33.05
path	49.31,31.25	50.93,29.17	52.56,29.94
path	52.50,31.90	50.07,34.59	48.68,38.47
path	46.92,40.67	44.58,41.57	44.37,48.21
path	45.48,50.13	48.34,49.86	50.79,52.76
path	50.63,54.35	49.29,53.94	47.15,54.68
click Fjarnskaggl##244777
|tip Track them on your minimap with "Find Herbs".
collect Fjarnskaggl##124104 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Foxflower",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Foxflower for various Alchemy recipes.",
startlevel=10.0,
},[[
step
map Highmountain/0
path	follow strict; loop off; ants curved; dist 20
path	57.63,27.24	58.30,25.96	55.60,24.95
path	56.21,23.48	58.18,21.64	57.72,19.47
path	56.17,19.67	55.63,16.88	54.89,14.84
path	52.05,14.24	51.06,11.29	50.19,8.48
path	49.26,7.56	48.56,10.28	47.34,10.78
path	46.35,11.99	44.55,12.74	43.93,10.95
path	43.80,8.25	42.24,10.37	41.25,11.10
path	40.38,13.11	39.02,14.36	37.46,15.12
path	37.10,16.77	36.78,18.74	35.72,19.62
path	36.03,21.65	34.68,23.11	32.27,24.44
path	31.42,26.25	30.27,28.02	29.28,29.77
path	27.58,30.22	27.97,33.19	28.64,35.15
path	25.69,38.69	26.55,40.28	28.36,41.46
path	29.57,41.07	30.19,40.63	29.94,39.33
click Foxflower##241641
|tip Track them on your minimap with "Find Herbs".
|tip There is a chance to spawn a Frenzied Fox when gathering Foxflower.
|tip The Frenzied Fox runs away, dropping Foxflowers on the ground.
|tip Run over the Foxflowers to collect them.
collect Foxflower##124103 |n
|tip Fly back to Prepfoot, Highmountain when you finish the route.
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Starlight Rose",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Starlight Rose for various Alchemy recipes.",
startlevel=45.0,
},[[
step
Reach Level 45 |ding 45
|tip Use the Leveling guides to accomplish this.
|tip Suramar is a level 45 zone, and doesn't scale to your level like the other zones in Legion.
step
map Suramar/0
path	follow smart; loop on; ants curved; dist 20
path	25.54,30.05	27.27,29.12	28.67,29.86
path	29.32,28.85	30.34,28.75	31.01,31.63
path	32.95,35.75	33.67,38.94	27.80,42.69
path	27.04,46.43	28.06,49.79	27.40,51.46
path	27.42,52.84	24.88,52.37	22.97,51.94
path	23.00,50.04	22.81,46.80	23.38,45.49
path	22.68,44.71	21.89,45.62	19.88,48.46
path	18.79,45.88	18.26,44.71	18.14,43.61
path	16.15,41.98	16.60,39.45	16.16,37.12
path	19.41,30.97	18.47,28.85	17.56,25.10
path	16.58,23.72	16.66,22.12	19.53,19.81
path	20.44,20.19	21.22,22.13	21.61,24.60
path	23.21,25.75	23.21,28.36	22.84,30.57
path	24.47,32.06
click Starlight Rose##244778
|tip Track them on your minimap with "Find Herbs".
kill Withered Hungerer##98232+
|tip They have a chance to spawn when you gather Starlight Rose.
collect Starlight Rose##124105 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Quest Guides\\Legion Herbalism Quest Line",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the Legion Herbalism quest line.",
startlevel=10.0,
condition_end=function() return completedq(40042) end,
condition_suggested=function() return skill('Legion Herbalism') > 0 and level >= 10 and not completedq(40042) end,
},[[
step
talk Kuhuine Tenderstride##92464
|tip Inside the building.
Learn the Herbalism Profession |complete skill("Legion Herbalism")>=1 |goto Dalaran L/10 43.02,33.37
step
map Azsuna/0
path	follow smart; loop on; ants curved; dist 20
path	46.38,44.51	47.68,43.75	48.87,42.45
path	48.36,38.75	48.48,36.05	49.34,33.40
path	50.26,30.59	51.11,28.89	50.27,25.03
path	50.96,22.14	50.75,19.79	52.13,16.67
path	54.63,16.44	56.69,17.17	57.59,18.25
path	59.67,20.32	60.55,20.91	63.39,25.50
path	64.63,25.89	63.43,28.43	63.39,31.12
path	64.02,34.78	65.56,36.66	66.22,38.74
path	66.49,42.33	66.97,44.07	66.48,46.99
path	64.05,50.95	62.65,51.41	61.07,50.79
path	58.62,51.41	56.03,52.81	53.66,54.29
path	51.42,56.22	48.86,54.98	46.41,51.84
path	46.19,46.77
click Aethril##244774
|tip Track them on your minimap with "Find Herbs".
kill Withered Hungerer##98232+
|tip They have a chance to spawn when you gather Aethril.
accept Aethril Sample##40013
|tip You will eventually automatically accept this quest after gathering.
step
talk Kuhuine Tenderstride##92464
|tip Inside the building.
turnin Aethril Sample##40013 |goto Dalaran L/10 43.02,33.37
accept Spayed by the Spade##40014 |goto Dalaran L/10 43.02,33.37
step
map Azsuna/0
path	follow smart; loop on; ants curved; dist 20
path	46.38,44.51	47.68,43.75	48.87,42.45
path	48.36,38.75	48.48,36.05	49.34,33.40
path	50.26,30.59	51.11,28.89	50.27,25.03
path	50.96,22.14	50.75,19.79	52.13,16.67
path	54.63,16.44	56.69,17.17	57.59,18.25
path	59.67,20.32	60.55,20.91	63.39,25.50
path	64.63,25.89	63.43,28.43	63.39,31.12
path	64.02,34.78	65.56,36.66	66.22,38.74
path	66.49,42.33	66.97,44.07	66.48,46.99
path	64.05,50.95	62.65,51.41	61.07,50.79
path	58.62,51.41	56.03,52.81	53.66,54.29
path	51.42,56.22	48.86,54.98	46.41,51.84
path	46.19,46.77
click Aethril##244774
|tip Track them on your minimap with "Find Herbs".
kill Withered Hungerer##98232+
|tip They have a chance to spawn when you gather Aethril.
collect Pristine Pistil##129128 |q 40014/1
collect Stainless Stamen##129131 |q 40014/2
step
talk Kuhuine Tenderstride##92464
|tip Inside the building.
turnin Spayed by the Spade##40014 |goto Dalaran L/10 43.02,33.37
step
map Val'sharah/0
path	follow smart; loop on; ants curved; dist 20
path	54.98,53.49	54.22,50.65	51.66,50.69
path	50.22,52.58	47.26,54.79	44.78,58.33
path	43.95,61.83	44.75,62.57	44.88,64.04
path	45.66,68.39	45.06,72.32	45.09,73.77
path	45.48,75.42	47.57,77.15	50.39,78.38
path	51.63,79.73	52.84,78.02	56.17,78.02
path	57.69,76.37	57.34,72.60	56.14,69.08
path	57.16,65.53	57.13,63.03	55.91,61.27
path	56.11,58.44
click Dreamleaf##244775
|tip Track them on your minimap with "Find Herbs".
kill Nightmare Creeper##98234+
|tip They have a chance to spawn when you gather Dreamleaf.
accept Dreamleaf Sample##40018
|tip You will eventually automatically accept this quest after gathering.
step
talk Kuhuine Tenderstride##92464
|tip Inside the building.
turnin Dreamleaf Sample##40018 |goto Dalaran L/10 43.02,33.37
accept An Empathetic Herb##40019 |goto Dalaran L/10 43.02,33.37
step
map Val'sharah/0
path	follow smart; loop on; ants curved; dist 20
path	54.98,53.49	54.22,50.65	51.66,50.69
path	50.22,52.58	47.26,54.79	44.78,58.33
path	43.95,61.83	44.75,62.57	44.88,64.04
path	45.66,68.39	45.06,72.32	45.09,73.77
path	45.48,75.42	47.57,77.15	50.39,78.38
path	51.63,79.73	52.84,78.02	56.17,78.02
path	57.69,76.37	57.34,72.60	56.14,69.08
path	57.16,65.53	57.13,63.03	55.91,61.27
path	56.11,58.44
click Dreamleaf##244775
|tip Track them on your minimap with "Find Herbs".
kill Nightmare Creeper##98234+
|tip They have a chance to spawn when you gather Dreamleaf.
collect 15 Healthy Dreamleaf##129150 |q 40019/1
|tip These drop from the green colored Dreamleaf nodes.
collect 5 Blight-Infested Dreamleaf##129151 |q 40019/2
|tip These drop from the purple colored Dreamleaf nodes, which are rare.
step
talk Kuhuine Tenderstride##92464
|tip Inside the building.
turnin An Empathetic Herb##40019 |goto Dalaran L/10 43.02,33.37
step
map Highmountain/0
path	follow smart; loop off; ants curved; dist 20
path	57.63,27.24	58.30,25.96	55.60,24.95
path	56.21,23.48	58.18,21.64	57.72,19.47
path	56.17,19.67	55.63,16.88	54.89,14.84
path	52.05,14.24	51.06,11.29	50.19,8.48
path	49.26,7.56	48.56,10.28	47.34,10.78
path	46.35,11.99	44.55,12.74	43.93,10.95
path	43.80,8.25	42.24,10.37	41.25,11.10
path	40.38,13.11	39.02,14.36	37.46,15.12
path	37.10,16.77	36.78,18.74	35.72,19.62
path	36.03,21.65	34.68,23.11	32.27,24.44
path	31.42,26.25	30.27,28.02	29.28,29.77
path	27.58,30.22	27.97,33.19	28.64,35.15
path	25.69,38.69	26.55,40.28	28.36,41.46
path	29.57,41.07	30.19,40.63	29.94,39.33
click Foxflower##241641
|tip Track them on your minimap with "Find Herbs".
|tip There is a chance to spawn a Frenzied Fox when gathering Foxflower.
|tip The Frenzied Fox runs away, dropping Foxflowers on the ground.
|tip Run over the Foxflowers to collect them.
accept Foxflower Sample##40024
|tip You will eventually automatically accept this quest after gathering.
step
map Highmountain/0
path	follow strict; loop off; ants curved; dist 20
path	57.63,27.24	58.30,25.96	55.60,24.95
path	56.21,23.48	58.18,21.64	57.72,19.47
path	56.17,19.67	55.63,16.88	54.89,14.84
path	52.05,14.24	51.06,11.29	50.19,8.48
path	49.26,7.56	48.56,10.28	47.34,10.78
path	46.35,11.99	44.55,12.74	43.93,10.95
path	43.80,8.25	42.24,10.37	41.25,11.10
path	40.38,13.11	39.02,14.36	37.46,15.12
path	37.10,16.77	36.78,18.74	35.72,19.62
path	36.03,21.65	34.68,23.11	32.27,24.44
path	31.42,26.25	30.27,28.02	29.28,29.77
path	27.58,30.22	27.97,33.19	28.64,35.15
path	25.69,38.69	26.55,40.28	28.36,41.46
path	29.57,41.07	30.19,40.63	29.94,39.33
click Foxflower##241641
|tip Track them on your minimap with "Find Herbs".
|tip There is a chance to spawn a Frenzied Fox when gathering Foxflower.
|tip The Frenzied Fox runs away, dropping Foxflowers on the ground.
|tip Run over the Foxflowers to collect them.
collect 20 Foxflower##124103 |q 40024/1
step
talk Kuhuine Tenderstride##92464
|tip Inside the building.
turnin Foxflower Sample##40024 |goto Dalaran L/10 43.02,33.37
step
map Stormheim/0
path	follow smart; loop on; ants curved; dist 20
path	44.93,54.20	41.34,52.95	40.33,50.92
path	42.22,48.92	43.08,46.16	43.43,43.85
path	41.29,41.57	40.49,39.91	38.01,41.13
path	35.47,40.72	35.03,39.51	35.58,37.35
path	33.48,34.81	33.71,31.40	35.77,31.89
path	37.05,32.77	38.83,31.85	40.28,30.50
path	37.48,28.96	37.30,26.42	38.91,25.85
path	41.56,23.10	42.49,23.41	43.26,23.57
path	45.75,23.16	43.74,26.24	46.11,27.11
path	44.71,30.80	46.90,32.23	48.53,33.05
path	49.31,31.25	50.93,29.17	52.56,29.94
path	52.50,31.90	50.07,34.59	48.68,38.47
path	46.92,40.67	44.58,41.57	44.37,48.21
path	45.48,50.13	48.34,49.86	50.79,52.76
path	50.63,54.35	49.29,53.94	47.15,54.68
click Fjarnskaggl##244777
|tip Track them on your minimap with "Find Herbs".
accept Fjarnskaggl Sample##40029
|tip You will eventually automatically accept this quest after gathering.
step
map Stormheim/0
path	follow smart; loop on; ants curved; dist 20
path	44.93,54.20	41.34,52.95	40.33,50.92
path	42.22,48.92	43.08,46.16	43.43,43.85
path	41.29,41.57	40.49,39.91	38.01,41.13
path	35.47,40.72	35.03,39.51	35.58,37.35
path	33.48,34.81	33.71,31.40	35.77,31.89
path	37.05,32.77	38.83,31.85	40.28,30.50
path	37.48,28.96	37.30,26.42	38.91,25.85
path	41.56,23.10	42.49,23.41	43.26,23.57
path	45.75,23.16	43.74,26.24	46.11,27.11
path	44.71,30.80	46.90,32.23	48.53,33.05
path	49.31,31.25	50.93,29.17	52.56,29.94
path	52.50,31.90	50.07,34.59	48.68,38.47
path	46.92,40.67	44.58,41.57	44.37,48.21
path	45.48,50.13	48.34,49.86	50.79,52.76
path	50.63,54.35	49.29,53.94	47.15,54.68
click Fjarnskaggl##244777
|tip Track them on your minimap with "Find Herbs".
collect 20 Fjarnskaggl##124104 |q 40029/1
step
talk Kuhuine Tenderstride##92464
|tip Inside the building.
turnin Fjarnskaggl Sample##40029 |goto Dalaran L/10 43.02,33.37
step
map Suramar/0
path	follow smart; loop on; ants curved; dist 20
path	25.54,30.05	27.27,29.12	28.67,29.86
path	29.32,28.85	30.34,28.75	31.01,31.63
path	32.95,35.75	33.67,38.94	27.80,42.69
path	27.04,46.43	28.06,49.79	27.40,51.46
path	27.42,52.84	24.88,52.37	22.97,51.94
path	23.00,50.04	22.81,46.80	23.38,45.49
path	22.68,44.71	21.89,45.62	19.88,48.46
path	18.79,45.88	18.26,44.71	18.14,43.61
path	16.15,41.98	16.60,39.45	16.16,37.12
path	19.41,30.97	18.47,28.85	17.56,25.10
path	16.58,23.72	16.66,22.12	19.53,19.81
path	20.44,20.19	21.22,22.13	21.61,24.60
path	23.21,25.75	23.21,28.36	22.84,30.57
path	24.47,32.06
click Starlight Rose##244778
|tip Track them on your minimap with "Find Herbs".
kill Withered Hungerer##98232+
|tip They have a chance to spawn when you gather Starlight Rose.
accept Starlight Rosedust##40034
|tip You will eventually automatically accept this quest after gathering.
step
talk Kuhuine Tenderstride##92464
|tip Inside the building.
turnin Starlight Rosedust##40034 |goto Dalaran L/10 43.02,33.37
accept The Gentlest Touch##40035 |goto Dalaran L/10 43.02,33.37
step
map Suramar/0
path	follow smart; loop on; ants curved; dist 20
path	25.54,30.05	27.27,29.12	28.67,29.86
path	29.32,28.85	30.34,28.75	31.01,31.63
path	32.95,35.75	33.67,38.94	27.80,42.69
path	27.04,46.43	28.06,49.79	27.40,51.46
path	27.42,52.84	24.88,52.37	22.97,51.94
path	23.00,50.04	22.81,46.80	23.38,45.49
path	22.68,44.71	21.89,45.62	19.88,48.46
path	18.79,45.88	18.26,44.71	18.14,43.61
path	16.15,41.98	16.60,39.45	16.16,37.12
path	19.41,30.97	18.47,28.85	17.56,25.10
path	16.58,23.72	16.66,22.12	19.53,19.81
path	20.44,20.19	21.22,22.13	21.61,24.60
path	23.21,25.75	23.21,28.36	22.84,30.57
path	24.47,32.06
click Starlight Rose##244778
|tip Track them on your minimap with "Find Herbs".
kill Withered Hungerer##98232+
|tip They have a chance to spawn when you gather Starlight Rose.
Attempt to Harvest #15# Starlight Rose |q 40035/1
step
talk Kuhuine Tenderstride##92464
|tip Inside the building.
turnin The Gentlest Touch##40035 |goto Dalaran L/10 43.02,33.37
step
map Azsuna/0
path	follow smart; loop on; ants curved; dist 20
path	46.38,44.51	47.68,43.75	48.87,42.45
path	48.36,38.75	48.48,36.05	49.34,33.40
path	50.26,30.59	51.11,28.89	50.27,25.03
path	50.96,22.14	50.75,19.79	52.13,16.67
path	54.63,16.44	56.69,17.17	57.59,18.25
path	59.67,20.32	60.55,20.91	63.39,25.50
path	64.63,25.89	63.43,28.43	63.39,31.12
path	64.02,34.78	65.56,36.66	66.22,38.74
path	66.49,42.33	66.97,44.07	66.48,46.99
path	64.05,50.95	62.65,51.41	61.07,50.79
path	58.62,51.41	56.03,52.81	53.66,54.29
path	51.42,56.22	48.86,54.98	46.41,51.84
path	46.19,46.77
click Aethril##244774
|tip Track them on your minimap with "Find Herbs".
kill Withered Hungerer##98232+
|tip They have a chance to spawn when you gather Aethril.
accept Ragged Strips of Silk##40015
|tip You will eventually automatically accept this quest after gathering.
step
talk Kuhuine Tenderstride##92464
|tip Inside the building.
turnin Ragged Strips of Silk##40015 |goto Dalaran L/10 43.02,33.37
accept Desperation Breeds Ingenuity##40016 |goto Dalaran L/10 43.02,33.37
step
Follow the path up |goto Azsuna/0 43.10,11.33 < 20 |only if walking
Follow the path |goto Azsuna/0 44.36,14.14 < 30 |only if walking
Kill Withered enemies around this area
collect 6 Chewed Aethril Stem##129153 |q 40016/1 |goto Azsuna/0 45.66,15.15
step
talk Kuhuine Tenderstride##92464
|tip Inside the building.
turnin Desperation Breeds Ingenuity##40016 |goto Dalaran L/10 43.02,33.37
step
map Val'sharah/0
path	follow smart; loop on; ants curved; dist 20
path	54.98,53.49	54.22,50.65	51.66,50.69
path	50.22,52.58	47.26,54.79	44.78,58.33
path	43.95,61.83	44.75,62.57	44.88,64.04
path	45.66,68.39	45.06,72.32	45.09,73.77
path	45.48,75.42	47.57,77.15	50.39,78.38
path	51.63,79.73	52.84,78.02	56.17,78.02
path	57.69,76.37	57.34,72.60	56.14,69.08
path	57.16,65.53	57.13,63.03	55.91,61.27
path	56.11,58.44
click Dreamleaf##244775
|tip Track them on your minimap with "Find Herbs".
kill Nightmare Creeper##98234+
|tip They have a chance to spawn when you gather Dreamleaf.
accept Twisted to Death##40020
|tip You will eventually automatically accept this quest after gathering.
step
talk Wildcrafter Osme##98135
turnin Twisted to Death##40020 |goto Val'sharah/0 54.80,71.70
accept One Dead Plant is One Too Many##40021 |goto Val'sharah/0 54.80,71.70
step
Follow the path |goto 55.60,71.77 < 20 |only if walking
Kill Darkfiend enemies around this area
Slay #20# Val'sharah Satyr |q 40021/1 |goto 57.96,69.09
step
Follow the path |goto 55.75,71.57 < 20 |only if walking
talk Wildcrafter Osme##98135
turnin One Dead Plant is One Too Many##40021 |goto 54.80,71.70
step
map Highmountain/0
path	follow strict; loop off; ants curved; dist 20
path	57.63,27.24	58.30,25.96	55.60,24.95
path	56.21,23.48	58.18,21.64	57.72,19.47
path	56.17,19.67	55.63,16.88	54.89,14.84
path	52.05,14.24	51.06,11.29	50.19,8.48
path	49.26,7.56	48.56,10.28	47.34,10.78
path	46.35,11.99	44.55,12.74	43.93,10.95
path	43.80,8.25	42.24,10.37	41.25,11.10
path	40.38,13.11	39.02,14.36	37.46,15.12
path	37.10,16.77	36.78,18.74	35.72,19.62
path	36.03,21.65	34.68,23.11	32.27,24.44
path	31.42,26.25	30.27,28.02	29.28,29.77
path	27.58,30.22	27.97,33.19	28.64,35.15
path	25.69,38.69	26.55,40.28	28.36,41.46
path	29.57,41.07	30.19,40.63	29.94,39.33
click Foxflower##241641
|tip Track them on your minimap with "Find Herbs".
|tip There is a chance to spawn a Frenzied Fox when gathering Foxflower.
|tip The Frenzied Fox runs away, dropping Foxflowers on the ground.
|tip Run over the Foxflowers to collect them.
accept Teeny Bite Marks##40025
|tip You will eventually automatically accept this quest after gathering.
step
talk Kuhuine Tenderstride##92464
|tip Inside the building.
turnin Teeny Bite Marks##40025 |goto Dalaran L/10 43.02,33.37
accept Chase the Culprit##40026 |goto Dalaran L/10 43.02,33.37
step
map Highmountain/0
path	follow strict; loop off; ants curved; dist 20
path	57.63,27.24	58.30,25.96	55.60,24.95
path	56.21,23.48	58.18,21.64	57.72,19.47
path	56.17,19.67	55.63,16.88	54.89,14.84
path	52.05,14.24	51.06,11.29	50.19,8.48
path	49.26,7.56	48.56,10.28	47.34,10.78
path	46.35,11.99	44.55,12.74	43.93,10.95
path	43.80,8.25	42.24,10.37	41.25,11.10
path	40.38,13.11	39.02,14.36	37.46,15.12
path	37.10,16.77	36.78,18.74	35.72,19.62
path	36.03,21.65	34.68,23.11	32.27,24.44
path	31.42,26.25	30.27,28.02	29.28,29.77
path	27.58,30.22	27.97,33.19	28.64,35.15
path	25.69,38.69	26.55,40.28	28.36,41.46
path	29.57,41.07	30.19,40.63	29.94,39.33
click Foxflower##241641
|tip Track them on your minimap with "Find Herbs".
|tip There is a chance to spawn a Frenzied Fox when gathering Foxflower.
|tip The Frenzied Fox runs away, dropping Foxflowers on the ground.
|tip Run over the Foxflowers to collect them.
Find Out What Creature is Eating the Foxflower |q 40026/1
|tip It will be Fox that eventually spawns after gathering.
step
_Follow the Frenzied Fox that Spawned Near You:_
|tip The Frenzied Fox runs away, dropping Foxflowers on the ground.
|tip Run over the Foxflowers to collect them.
collect 12 Chewed Foxflower Bit##129220 |q 40026/2
step
talk Kuhuine Tenderstride##92464
|tip Inside the building.
turnin Chase the Culprit##40026 |goto Dalaran L/10 43.02,33.37
step
map Stormheim/0
path	follow smart; loop on; ants curved; dist 20
path	44.93,54.20	41.34,52.95	40.33,50.92
path	42.22,48.92	43.08,46.16	43.43,43.85
path	41.29,41.57	40.49,39.91	38.01,41.13
path	35.47,40.72	35.03,39.51	35.58,37.35
path	33.48,34.81	33.71,31.40	35.77,31.89
path	37.05,32.77	38.83,31.85	40.28,30.50
path	37.48,28.96	37.30,26.42	38.91,25.85
path	41.56,23.10	42.49,23.41	43.26,23.57
path	45.75,23.16	43.74,26.24	46.11,27.11
path	44.71,30.80	46.90,32.23	48.53,33.05
path	49.31,31.25	50.93,29.17	52.56,29.94
path	52.50,31.90	50.07,34.59	48.68,38.47
path	46.92,40.67	44.58,41.57	44.37,48.21
path	45.48,50.13	48.34,49.86	50.79,52.76
path	50.63,54.35	49.29,53.94	47.15,54.68
click Fjarnskaggl##244777
|tip Track them on your minimap with "Find Herbs".
accept Ram's-Horn Trowel##40030
|tip You will eventually automatically accept this quest after gathering.
step
talk Kuhuine Tenderstride##92464
|tip Inside the building.
turnin Ram's-Horn Trowel##40030 |goto Dalaran L/10 43.02,33.37
accept Vrykul Herblore##40031 |goto Dalaran L/10 43.02,33.37
step
Cross the bridge |goto Stormheim/0 40.11,62.68 < 20 |only if walking and alliance
Cross the bridge |goto Stormheim/0 44.15,60.44 < 20 |only if walking
Follow the path |goto Stormheim/0 44.63,63.30 < 20 |only if walking
clicknpc Grapple Point##110334 |goto Stormheim/0 45.12,63.84 |n
|tip It's up on the wall to the south.
Grapple onto the Wall |goto Stormheim/0 45.22,64.96 < 10 |noway |c |q 40031
step
click The Tangled Beard##244837
|tip It looks like a small book laying next to the entry door of this building.
collect The Tangled Beard##129201 |q 40031/1 |goto 42.95,65.43
step
Follow the path |goto 70.78,60.34 < 20 |only if walking and alliance
Follow the path |goto 69.12,61.57 < 30 |only if walking and alliance
Continue following the path |goto 66.14,62.46 < 30 |only if walking and alliance
Continue following the path |goto 64.03,63.37 < 20 |only if walking and alliance
Follow the path |goto 61.36,63.99 < 30 |only if walking and alliance
Follow the path |goto 58.52,66.87 < 30 |only if walking and horde
Follow the path |goto 58.83,65.02 < 20 |only if walking and horde
Follow the path |goto 60.12,63.39 < 30 |only if walking and horde
click The Fjarnskaggl Fjormula##244836
|tip It looks like a brown book laying on the table.
collect The Fjarnskaggl Fjormula##129200 |q 40031/2 |goto 61.30,63.15
step
Follow the path down |goto 60.56,52.09 < 20 |only if walking
Follow the path down |goto 62.65,51.93 < 30 |only if walking
Follow the path |goto 64.06,48.97 < 30 |only if walking
Follow the path |goto 67.45,48.30 < 30 |only if walking
Run down the stairs |goto 70.10,44.35 < 20 |only if walking
Run up the stairs |goto 72.23,41.11 < 20 |only if walking
Run up the ramp |goto 72.41,39.04 < 20 |only if walking
Enter the building |goto 71.35,38.96 < 15 |walk
click Herblore of the Ancients##244838
collect Herblore of the Ancients##129202 |q 40031/3 |goto 70.66,38.76
step
talk Kuhuine Tenderstride##92464
|tip Inside the building.
turnin Vrykul Herblore##40031 |goto Dalaran L/10 43.02,33.37
step
map Suramar/0
path	follow smart; loop on; ants curved; dist 20
path	25.54,30.05	27.27,29.12	28.67,29.86
path	29.32,28.85	30.34,28.75	31.01,31.63
path	32.95,35.75	33.67,38.94	27.80,42.69
path	27.04,46.43	28.06,49.79	27.40,51.46
path	27.42,52.84	24.88,52.37	22.97,51.94
path	23.00,50.04	22.81,46.80	23.38,45.49
path	22.68,44.71	21.89,45.62	19.88,48.46
path	18.79,45.88	18.26,44.71	18.14,43.61
path	16.15,41.98	16.60,39.45	16.16,37.12
path	19.41,30.97	18.47,28.85	17.56,25.10
path	16.58,23.72	16.66,22.12	19.53,19.81
path	20.44,20.19	21.22,22.13	21.61,24.60
path	23.21,25.75	23.21,28.36	22.84,30.57
path	24.47,32.06
click Starlight Rose##244778
|tip Track them on your minimap with "Find Herbs".
kill Withered Hungerer##98232+
|tip They have a chance to spawn when you gather Starlight Rose.
accept Jeweled Spade Handle##40036
|tip You will eventually automatically accept this quest after gathering.
step
talk Kuhuine Tenderstride##92464
|tip Inside the building.
turnin Jeweled Spade Handle##40036 |goto Dalaran L/10 43.02,33.37
accept The Spade's Blade##40037 |goto Dalaran L/10 43.02,33.37
step
Follow the path |goto Suramar/0 28.73,32.76 < 30 |only if walking
Follow the path |goto Suramar/0 31.92,30.54 < 30 |only if walking
Follow the path up |goto Suramar/0 36.11,29.11 < 40 |only if walking
Cross the bridge |goto Suramar/0 39.15,24.48 < 20 |only if walking
Follow the path |goto Suramar/0 37.11,21.32 < 20 |only if walking
Run up the stairs |goto Suramar/0 35.01,21.53 < 20 |only if walking
Follow the path |goto Suramar/0 35.03,23.11 < 20 |only if walking
kill Herbalist Tharillon##98213
|tip There are many enemies around this area. Try not to pull too many at once.
|tip You may need help.
click Tharillon's Stash##244853
collect Broken Herbalist's Blade##129155 |q 40037/1 |goto Suramar/0 34.49,22.95
step
talk Kuhuine Tenderstride##92464
|tip Inside the building.
turnin The Spade's Blade##40037 |goto Dalaran L/10 43.02,33.37
step
Unlock World Quests |complete completedq(43341)
|tip Use the "World Quests" dailies guide to accomplish this.
step
_Complete a "Felwort" World Quest:_
|tip Look on your world map in all of the Legion zones.
|tip The world quest will have an Herbalism icon.
|tip Use the "World Quests" dailies guide to accomplish this.
accept Felwort Sample##40040
|tip You will automatically accept this quest after gathering.
step
talk Kuhuine Tenderstride##92464
|tip Inside the building.
turnin Felwort Sample##40040 |goto Dalaran L/10 43.02,33.37
accept Felwort Analysis##40041 |goto Dalaran L/10 43.02,33.37
step
talk Ryno Bloomfield##98222
|tip He is hiding under the trunks sticking out of the ground.
collect Ryno Bloomfield's Analysis##129212 |q 40041/1 |goto Un'Goro Crater/0 69.61,28.14
step
talk Dani Earthtouch##98223
collect Dani Earthtouch's Analysis##129213 |q 40041/2 |goto Sholazar Basin/0 63.91,49.16
step
talk Lohor##98224
collect Lohor's Analysis##129214 |q 40041/3 |goto Gorgrond/0 43.80,79.10
step
talk Kuhuine Tenderstride##92464
|tip Inside the building.
turnin Felwort Analysis##40041 |goto Dalaran L/10 43.02,33.37
step
Reach 795 Herbalism |skill Herbalism,795
|tip Use the "Herbalism 700-800" guide to accomplish this.
step
talk Kuhuine Tenderstride##92464
|tip Inside the building.
accept Felwort Mastery##40042 |goto Dalaran L/10 43.02,33.37
step
_Complete "Felwort" World Quests:_
|tip Look on your world map in all of the Legion zones.
|tip The world quests will have an Herbalism icon.
|tip Use the "World Quests" dailies guide to accomplish this.
Reach 800 Herbalism |skill Herbalism,800
step
map Azsuna/0
path	follow smart; loop on; ants curved; dist 20
path	46.38,44.51	47.68,43.75	48.87,42.45
path	48.36,38.75	48.48,36.05	49.34,33.40
path	50.26,30.59	51.11,28.89	50.27,25.03
path	50.96,22.14	50.75,19.79	52.13,16.67
path	54.63,16.44	56.69,17.17	57.59,18.25
path	59.67,20.32	60.55,20.91	63.39,25.50
path	64.63,25.89	63.43,28.43	63.39,31.12
path	64.02,34.78	65.56,36.66	66.22,38.74
path	66.49,42.33	66.97,44.07	66.48,46.99
path	64.05,50.95	62.65,51.41	61.07,50.79
path	58.62,51.41	56.03,52.81	53.66,54.29
path	51.42,56.22	48.86,54.98	46.41,51.84
path	46.19,46.77
click Aethril##244774
|tip Track them on your minimap with "Find Herbs".
kill Withered Hungerer##98232+
|tip They have a chance to spawn when you gather Aethril.
accept A Slip of the Hand##40017
|tip You will eventually automatically accept this quest after gathering.
|tip You will likely have to gather for a long time.
step
talk Kuhuine Tenderstride##92464
|tip Inside the building.
turnin A Slip of the Hand##40017 |goto Dalaran L/10 43.02,33.37
step
map Val'sharah/0
path	follow smart; loop on; ants curved; dist 20
path	54.98,53.49	54.22,50.65	51.66,50.69
path	50.22,52.58	47.26,54.79	44.78,58.33
path	43.95,61.83	44.75,62.57	44.88,64.04
path	45.66,68.39	45.06,72.32	45.09,73.77
path	45.48,75.42	47.57,77.15	50.39,78.38
path	51.63,79.73	52.84,78.02	56.17,78.02
path	57.69,76.37	57.34,72.60	56.14,69.08
path	57.16,65.53	57.13,63.03	55.91,61.27
path	56.11,58.44
click Dreamleaf##244775
|tip Track them on your minimap with "Find Herbs".
kill Nightmare Creeper##98234+
|tip They have a chance to spawn when you gather Dreamleaf.
accept Choked by Nightmare##40022
|tip You will eventually automatically accept this quest after gathering.
|tip You will likely have to gather for a long time.
step
talk Wildcrafter Osme##98135
turnin Choked by Nightmare##40022 |goto Val'sharah/0 54.80,71.70
accept The Last Straw##40023 |goto Val'sharah/0 54.80,71.70
step
Follow the path |goto 68.16,48.53 < 20 |only if walking
Cross the bridge |goto 66.69,45.84 < 20 |only if walking
Follow the path down |goto 65.05,43.46 < 20 |only if walking
Follow the path down |goto 63.20,40.95 < 20 |only if walking
Follow the path |goto 62.02,36.80 < 20 |only if walking
Follow the path up |goto 61.84,35.57 < 20 |only if walking
click Tur'xoran's Summons Stone
|tip He hits hard, you may need help killing him.
kill Tur'xoran##98142 |q 40023/1 |goto 63.42,35.79
step
talk Wildcrafter Osme##98135
turnin The Last Straw##40023 |goto 54.80,71.70
step
map Highmountain/0
path	follow strict; loop off; ants curved; dist 20
path	57.63,27.24	58.30,25.96	55.60,24.95
path	56.21,23.48	58.18,21.64	57.72,19.47
path	56.17,19.67	55.63,16.88	54.89,14.84
path	52.05,14.24	51.06,11.29	50.19,8.48
path	49.26,7.56	48.56,10.28	47.34,10.78
path	46.35,11.99	44.55,12.74	43.93,10.95
path	43.80,8.25	42.24,10.37	41.25,11.10
path	40.38,13.11	39.02,14.36	37.46,15.12
path	37.10,16.77	36.78,18.74	35.72,19.62
path	36.03,21.65	34.68,23.11	32.27,24.44
path	31.42,26.25	30.27,28.02	29.28,29.77
path	27.58,30.22	27.97,33.19	28.64,35.15
path	25.69,38.69	26.55,40.28	28.36,41.46
path	29.57,41.07	30.19,40.63	29.94,39.33
click Foxflower##241641
|tip Track them on your minimap with "Find Herbs".
|tip There is a chance to spawn a Frenzied Fox when gathering Foxflower.
|tip The Frenzied Fox runs away, dropping Foxflowers on the ground.
|tip Run over the Foxflowers to collect them.
accept The Pied Picker##40028
|tip You will eventually automatically accept this quest after gathering.
|tip You will likely have to gather for a long time.
step
talk Kuhuine Tenderstride##92464
|tip Inside the building.
turnin The Pied Picker##40028 |goto Dalaran L/10 43.02,33.37
step
map Stormheim/0
path	follow smart; loop on; ants curved; dist 20
path	44.93,54.20	41.34,52.95	40.33,50.92
path	42.22,48.92	43.08,46.16	43.43,43.85
path	41.29,41.57	40.49,39.91	38.01,41.13
path	35.47,40.72	35.03,39.51	35.58,37.35
path	33.48,34.81	33.71,31.40	35.77,31.89
path	37.05,32.77	38.83,31.85	40.28,30.50
path	37.48,28.96	37.30,26.42	38.91,25.85
path	41.56,23.10	42.49,23.41	43.26,23.57
path	45.75,23.16	43.74,26.24	46.11,27.11
path	44.71,30.80	46.90,32.23	48.53,33.05
path	49.31,31.25	50.93,29.17	52.56,29.94
path	52.50,31.90	50.07,34.59	48.68,38.47
path	46.92,40.67	44.58,41.57	44.37,48.21
path	45.48,50.13	48.34,49.86	50.79,52.76
path	50.63,54.35	49.29,53.94	47.15,54.68
click Fjarnskaggl##244777
|tip Track them on your minimap with "Find Herbs".
accept The Missing Page##40032
|tip You will eventually automatically accept this quest after gathering.
|tip You will likely have to gather for a long time.
step
talk Kuhuine Tenderstride##92464
|tip Inside the building.
turnin The Missing Page##40032 |goto Dalaran L/10 43.02,33.37
accept Fjarnskaggl##40033 |goto Dalaran L/10 43.02,33.37
step
map Stormheim/0
path	follow smart; loop on; ants curved; dist 20
path	44.93,54.20	41.34,52.95	40.33,50.92
path	42.22,48.92	43.08,46.16	43.43,43.85
path	41.29,41.57	40.49,39.91	38.01,41.13
path	35.47,40.72	35.03,39.51	35.58,37.35
path	33.48,34.81	33.71,31.40	35.77,31.89
path	37.05,32.77	38.83,31.85	40.28,30.50
path	37.48,28.96	37.30,26.42	38.91,25.85
path	41.56,23.10	42.49,23.41	43.26,23.57
path	45.75,23.16	43.74,26.24	46.11,27.11
path	44.71,30.80	46.90,32.23	48.53,33.05
path	49.31,31.25	50.93,29.17	52.56,29.94
path	52.50,31.90	50.07,34.59	48.68,38.47
path	46.92,40.67	44.58,41.57	44.37,48.21
path	45.48,50.13	48.34,49.86	50.79,52.76
path	50.63,54.35	49.29,53.94	47.15,54.68
click Fjarnskaggl##244777
|tip Track them on your minimap with "Find Herbs".
collect 20 Fjarnskaggl##124104 |c |q 40033
step
Follow the path |goto Stormheim/0 61.67,55.08 < 30 |only if walking and horde
Follow the path |goto Stormheim/0 69.66,52.75 < 30 |only if walking and horde
Follow the path down |goto Stormheim/0 72.07,51.87 < 15 |only if walking and horde
Follow the path |goto Stormheim/0 71.42,55.36 < 30 |only if walking and horde
Follow the path |goto Stormheim/0 72.18,59.28 < 20 |only if walking and alliance
Follow the path |goto Stormheim/0 73.40,57.03 < 30 |only if walking
Follow the beach |goto Stormheim/0 79.51,57.09 < 30 |only if walking
Follow the path |goto Stormheim/0 81.85,63.76 < 30 |only if walking
click Wind-Worn Cairn##244844
Choose _<Place 20 Fjarnskaggl at the foot of the cairn.>_
kill Torgus##98197
|tip He hits hard, you may need help killing him.
Earn the Blessing of Fjarnskaggl |q 40033/1 |goto Stormheim/0 81.77,65.49
step
Click the Complete Quest Box:
turnin Fjarnskaggl##40033
step
map Suramar/0
path	follow smart; loop on; ants curved; dist 20
path	25.54,30.05	27.27,29.12	28.67,29.86
path	29.32,28.85	30.34,28.75	31.01,31.63
path	32.95,35.75	33.67,38.94	27.80,42.69
path	27.04,46.43	28.06,49.79	27.40,51.46
path	27.42,52.84	24.88,52.37	22.97,51.94
path	23.00,50.04	22.81,46.80	23.38,45.49
path	22.68,44.71	21.89,45.62	19.88,48.46
path	18.79,45.88	18.26,44.71	18.14,43.61
path	16.15,41.98	16.60,39.45	16.16,37.12
path	19.41,30.97	18.47,28.85	17.56,25.10
path	16.58,23.72	16.66,22.12	19.53,19.81
path	20.44,20.19	21.22,22.13	21.61,24.60
path	23.21,25.75	23.21,28.36	22.84,30.57
path	24.47,32.06
click Starlight Rose##244778
|tip Track them on your minimap with "Find Herbs".
kill Withered Hungerer##98232+
|tip They have a chance to spawn when you gather Starlight Rose.
accept Insane Ramblings##40038
|tip You will eventually automatically accept this quest after gathering.
|tip You will likely have to gather for a long time.
step
talk Kuhuine Tenderstride##92464
|tip Inside the building.
turnin Insane Ramblings##40038 |goto Dalaran L/10 43.02,33.37
accept Tharillon's Fall##40039 |goto Dalaran L/10 43.02,33.37
step
map Suramar/0
path	follow smart; loop on; ants curved; dist 20
path	25.54,30.05	27.27,29.12	28.67,29.86
path	29.32,28.85	30.34,28.75	31.01,31.63
path	32.95,35.75	33.67,38.94	27.80,42.69
path	27.04,46.43	28.06,49.79	27.40,51.46
path	27.42,52.84	24.88,52.37	22.97,51.94
path	23.00,50.04	22.81,46.80	23.38,45.49
path	22.68,44.71	21.89,45.62	19.88,48.46
path	18.79,45.88	18.26,44.71	18.14,43.61
path	16.15,41.98	16.60,39.45	16.16,37.12
path	19.41,30.97	18.47,28.85	17.56,25.10
path	16.58,23.72	16.66,22.12	19.53,19.81
path	20.44,20.19	21.22,22.13	21.61,24.60
path	23.21,25.75	23.21,28.36	22.84,30.57
path	24.47,32.06
click Starlight Rose##244778
|tip Track them on your minimap with "Find Herbs".
kill Withered Hungerer##98232+
|tip They have a chance to spawn when you gather Starlight Rose.
collect 20 Starlight Rosedust##129158 |c |q 40039
step
Follow the path up |goto Azsuna/0 49.47,26.72 < 20 |only if walking
Follow the path up |goto Azsuna/0 50.52,26.31 < 20 |only if walking
Follow the path |goto Azsuna/0 51.33,25.31 < 30 |only if walking
Follow the road |goto Azsuna/0 52.47,27.05 < 30 |only if walking
Enter the cave |goto Azsuna/0 55.77,25.44 < 15 |walk
click Pile of Herbs##244850
Choose _<Place 20 plies of starlight rosedust upon the pile.>_
kill Herbalist Tharillon##98214
|tip He hits hard, you may need help killing him.
collect Tharillon's Notebook##129209 |q 40039/1 |goto Azsuna/0 57.03,25.40
step
talk Kuhuine Tenderstride##92464
|tip Inside the building.
turnin Tharillon's Fall##40039 |goto Dalaran L/10 43.02,33.37
step
kill Cenarius##113534
|tip He's the second to last boss in the Emerald Nightmare raid.
|tip Use the Emerald Nightmare raid guide to accomplish this.
collect Seed of Corruption##136413 |q 40042/1
step
talk Kuhuine Tenderstride##92464
|tip Inside the building.
turnin Felwort Mastery##40042 |goto Dalaran L/10 43.02,33.37
step
_Congratulations!_
You completed the Herbalism questline.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Quest Guides\\Argus Herbalism Quest Line",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the Argus Herbalism quest line.",
startlevel=45.0,
condition_end=function() return completedq(48029) end,
condition_suggested=function() return skill('Legion Herbalism') > 0 and level >= 45 and not completedq(48029) end,
},[[
step
talk Kuhuine Tenderstride##92464
|tip Inside the building.
Learn the Herbalism Profession |complete skill("Legion Herbalism")>=1 |goto Dalaran L/10 43.02,33.37
step
map Krokuun/0
path	follow smart; loop on; ants curved; dist 20
path	60.29,62.13	60.33,58.77	60.60,55.77
path	60.84,53.31	61.56,50.24	61.67,46.89
path	61.10,44.41	59.99,42.34	58.89,40.71
path	59.04,38.44	57.33,37.83	55.56,37.63
path	54.08,35.90	52.73,34.42	51.11,33.93
path	49.58,35.06	48.83,36.81	48.10,39.04
path	47.01,41.65	46.40,44.16	45.69,46.45
path	44.50,49.93	44.17,52.56	45.27,55.51
path	46.35,57.38	48.07,61.05	50.61,63.67
path	52.12,64.90	54.80,62.36	56.82,61.36
path	58.98,61.82
click Fel-Encrusted Herb##273052
|tip Track them on your minimap with "Find Herbs".
|tip Watch out for Garothi Obliterator while following this path.
collect Withered Astral Glory##151856 |n |use Withered Astral Glory##151856
accept The Glory of Argus##48027
step
talk Alchemist Funen##125346
turnin The Glory of Argus##48027 |goto Krokuun/0 56.12,66.75
step
map Krokuun/0
path	follow smart; loop on; ants curved; dist 20
path	60.29,62.13	60.33,58.77	60.60,55.77
path	60.84,53.31	61.56,50.24	61.67,46.89
path	61.10,44.41	59.99,42.34	58.89,40.71
path	59.04,38.44	57.33,37.83	55.56,37.63
path	54.08,35.90	52.73,34.42	51.11,33.93
path	49.58,35.06	48.83,36.81	48.10,39.04
path	47.01,41.65	46.40,44.16	45.69,46.45
path	44.50,49.93	44.17,52.56	45.27,55.51
path	46.35,57.38	48.07,61.05	50.61,63.67
path	52.12,64.90	54.80,62.36	56.82,61.36
path	58.98,61.82
click Fel-Encrusted Herb##273052
|tip Track them on your minimap with "Find Herbs".
|tip Watch out for Garothi Obliterator while following this path.
collect Adolescent Astral Glory##151857 |n |use Adolescent Astral Glory##151857
accept Youthful Resistance##48028
step
talk Alchemist Funen##125346
turnin Youthful Resistance##48028 |goto Krokuun/0 56.12,66.75
step
map Krokuun/0
path	follow smart; loop on; ants curved; dist 20
path	60.29,62.13	60.33,58.77	60.60,55.77
path	60.84,53.31	61.56,50.24	61.67,46.89
path	61.10,44.41	59.99,42.34	58.89,40.71
path	59.04,38.44	57.33,37.83	55.56,37.63
path	54.08,35.90	52.73,34.42	51.11,33.93
path	49.58,35.06	48.83,36.81	48.10,39.04
path	47.01,41.65	46.40,44.16	45.69,46.45
path	44.50,49.93	44.17,52.56	45.27,55.51
path	46.35,57.38	48.07,61.05	50.61,63.67
path	52.12,64.90	54.80,62.36	56.82,61.36
path	58.98,61.82
click Fel-Encrusted Herb##273052
|tip Track them on your minimap with "Find Herbs".
|tip Watch out for Garothi Obliterator while following this path.
collect Astral Glory Root Cluster##151858 |n |use Astral Glory Root Cluster##151858
accept The Heart of It##48029
step
talk Alchemist Funen##125346
turnin The Heart of It##48029 |goto Krokuun/0 56.12,66.75
step
_Congratulations!_
You completed the Argus Herbalism questline.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Inscription\\Leveling Guides\\Legion Inscription 1-100",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Legion Inscription skill from 1-100.",
startlevel=10.0,
condition_end=function() return skill('Legion Inscription') >= 100 end,
condition_suggested=function() return skill('Legion Inscription') > 0 and skill('Legion Inscription') < 100 and level >= 10 end,
},[[
step
Load the "Legion Inscription Quest Line" Guide |confirm |next "Profession Guides\\Inscription\\Quest Guides\\Legion Inscription Quest Line"
|tip Click the line above to load the guide
Complete the Legion Inscription Quest Line |q 39951 |future
step
collect 45 Sallow Pigment##129034
|tip These are Milled from Dreamleaf, Foxflower, Fjarnskaggle and Aethril.
|tip You can also buy these materials from the Auction House.
|only if skill("Legion Inscription") < 40
step
talk Jang Quillpaw##93544
|tip Inside the building.
buy 900 Light Parchment##39354 |goto Dalaran L/10 41.10,36.37
|only if skill("Legion Inscription") < 40
step
Open Your Inscription Crafting Panel:
_<Create 45 Tomes of the Tranquil Mind>_
|tip This recipe will be yellow by 20, so you may need to create more.
Reach Level 40 Legion Inscription |skill Legion Inscription,40
step
kill Trilliax##104288
|tip This is a boss in the Nighthold Raid.
|tip You will need to kill him twice, as he drops the rank 1 and rank 2 recipe needed to reach 100.
collect Vantus Rune Technique: Trilliax##139644 |n
use the Vantus Rune Technique: Trilliax##139644
learn Vantus Rune: Trilliax##192817
step
kill Trilliax##104288
|tip This is a boss in the Nighthold Raid.
|tip You will need to kill him twice, as he drops the rank 1 and rank 2 recipe needed to reach 100.
collect Vantus Rune Technique: Trilliax##137756|n
use the Vantus Rune Technique: Trilliax##137756
learn Vantus Rune: Trilliax##192869
step
Load the "Court of Farondis" Reputation Guide |confirm |next "Reputations Guides\\Legion Reputations\\Court of Farondis"
|tip Click the line above to load the guide.
Become Revered with the Court of Farondis |complete rep("Court of Farondis")>=Revered
step
talk Veridis Fallon##107376
buy Vantus Rune Technique: Trilliax##137776 |n
use the Vantus Rune Technique: Trilliax##137776
learn Vantus Rune: Trilliax##192900 |goto Azsuna/0 46.8,41.4
step
collect 180 Sallow Pigment##129034
|tip These are Milled from Dreamleaf, Foxflower, Fjarnskaggle and Aethril.
|tip You can also buy these materials from the Auction House.
|only if skill("Legion Inscription") < 100
step
collect 900 Roseate Pigment##129032
|tip These are Milled from Dreamleaf, Foxflower, Fjarnskaggle and Aethril.
|tip You can also buy these materials from the Auction House.
|only if skill("Legion Inscription") < 100
step
Open Your Inscription Crafting Panel:
_<Create 60 Vantus Rune: Trilliax>_
Reach Level 100 Legion Inscription |skill Legion Inscription,100
step
_Congratulations!_
You Reached Level 100 Legion Inscription Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Inscription\\Quest Guides\\Legion Inscription Quest Line",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the Legion Inscription quest line.",
startlevel=100.0,
condition_end=function() return completedq(39951) end,
condition_suggested=function() return skill('Legion Inscription') > 0 and level >= 40 and not completedq(39951) end,
},[[
step
talk Professor Pallin##92195
|tip Inside the building.
accept Sign This##39847 |goto Dalaran L/10 41.27,37.02
step
Use the Unsigned Contract |use Unsigned Contract##129047
Sign the Contract |q 39847/1
step
talk Professor Pallin##92195
|tip Inside the building.
turnin Sign This##39847 |goto 41.27,37.02
accept Smashing Herbs##39931 |goto 41.27,37.02
step
collect 50 Aethril##124101 |q 39931
|tip Use the Aethril farming guide to gather these, if you have Herbalism.
|tip You can also purchase them from the Auction House.
step
Use Your Milling Ability:
_<Mill 50 Aethril>_
|tip They're in your bags.
|tip You may need to mill more or less Aethril, depending on your luck.
collect 20 Roseate Pigment##129032 |q 39931/1
collect 2 Sallow Pigment##129034 |q 39931/2
step
talk Professor Pallin##92195
|tip Inside the building.
turnin Smashing Herbs##39931 |goto 41.27,37.02
Watch the dialogue
accept Fish Ink##39932 |goto 41.27,37.02
step
kill Mak'rana Warrior##89053+
collect 5 Oily Mak'rana Chunk##129060 |q 39932/1 |goto Azsuna/0 58.47,58.00
step
Follow the path |goto 57.80,59.01 < 20 |only if walking
Follow the path |goto 55.57,59.34 < 20 |only if walking
Follow the path up |goto 53.55,57.80 < 20 |only if walking
kill Hatecoil Slavemaster##90109+
collect 5 Hatecoil Scale Patch##129058 |q 39932/2 |goto 51.40,61.65
step
Follow the path |goto 46.13,43.87 < 30 |only if walking
Jump down here |goto 47.49,41.94 < 20 |only if walking
Kill Salteye enemies around this area
collect 5 Salteye Oil##129059 |q 39932/3 |goto 49.59,38.53
step
Use the Salteye Oil |use Salteye Oil##129059
collect Piscine Pigment##136811 |q 39932/4
step
talk Professor Pallin##92195
|tip Inside the building.
turnin Fish Ink##39932 |goto Dalaran L/10 41.27,37.02
accept The Card Shark##39933 |goto Dalaran L/10 41.27,37.02
step
click Hearthstone Cards##244679
|tip They look like small blue playing cards on the ground inside the building.
collect 10 Hearthstone Card##129092 |q 39933/1 |goto 47.62,39.60
step
talk Professor Pallin##92195
|tip Inside the building.
Tell him _"Here are the cards you wanted."_
Watch the dialogue
Observe Professor Pallin |q 39933/2 |goto 41.27,37.02
step
talk Professor Pallin##92195
|tip Inside the building.
turnin The Card Shark##39933 |goto 41.27,37.02
step
talk Professor Pallin##92195
|tip Inside the building.
accept Our New Allies##39934 |goto 41.27,37.02 |only if not raceclass("DemonHunter")
accept Our New Allies##40056 |goto 41.27,37.02 |only DemonHunter
step
talk Allari the Souleater##89398
turnin Our New Allies##39934 |goto Azsuna/0 43.28,43.16 |only if haveq(39934) or completedq(39934)
turnin Our New Allies##40056 |goto Azsuna/0 43.28,43.16 |only if haveq(40056) or completedq(40056)
accept The Price of Power##39935 |goto Azsuna/0 43.28,43.16 |only if not raceclass("DemonHunter")
accept The Price of Power##40057 |goto Azsuna/0 43.28,43.16 |only DemonHunter
step
Kill enemies around this area
|tip Lure the enemies to this spot to kill them quickly.
|tip They turret does massive damage to them.
Slay #15# Demons |q 39935/1 |goto 43.13,44.33 |only if haveq(39935) or completedq(39935)
Slay #15# Demons |q 40057/1 |goto 43.13,44.33 |only if haveq(40057) or completedq(40057)
step
talk Allari the Souleater##89398
turnin The Price of Power##39935 |goto 43.28,43.16 |only if haveq(39935) or completedq(39935)
turnin The Price of Power##40057 |goto 43.28,43.16 |only if haveq(40057) or completedq(40057)
accept Scribal Knowledge##39939 |goto 43.28,43.16
accept Inscription of the Body##39936 |goto 43.28,43.16
step
talk Zaria Shadowheart##97734
turnin Scribal Knowledge##39939 |goto 65.07,25.95
accept Control is Key##39941 |goto 65.07,25.95
accept Runes of Power##39940 |goto 65.07,25.95
stickystart "Fel_Power_Runes_Inscription"
step
click Crystallized Fel Ward##244705
kill Overseer Felorax##97847 |q 39941/1 |goto 68.46,26.17
step
label "Fel_Power_Runes_Inscription"
click Fel Power Runes##244706
|tip They look like green circular symbols on the ground around this area.
Destroy #8# Fel Power Runes |q 39940/1 |goto 66.29,27.84
step
Follow the path up |goto 66.56,26.17 < 30 |only if walking
Follow the path up |goto 65.66,25.59 < 20 |only if walking
talk Zaria Shadowheart##97734
turnin Control is Key##39941 |goto 65.07,25.95
turnin Runes of Power##39940 |goto 65.07,25.95
step
Follow the path |goto 64.27,25.59 < 30 |only if walking
Follow the path |goto 59.93,20.46 < 30 |only if walking
talk Baric Stormrunner##97736
turnin Inscription of the Body##39936 |goto 54.02,15.32
accept Opposites Repel##39937 |goto 54.02,15.32
step
Kill enemies around this area
collect 10 Ley Dust##129105 |q 39937/1 |goto 55.70,17.16
step
Use the Ley Dust |use Ley Dust##129105
collect Ley Pigment##136821 |q 39937/2
step
talk Baric Stormrunner##97736
turnin Opposites Repel##39937 |goto 54.02,15.32
accept Containing the Demon Within##39938 |goto 54.02,15.32 |only if not raceclass("DemonHunter")
accept Containing the Demon Within##40060 |goto 54.02,15.32 |only DemonHunter
step
talk Baric Stormrunner##97736
Watch the dialogue
Start the Ritual |q 39938/1 |goto 54.02,15.32 |only if haveq(39938) or completedq(39938)
Start the Ritual |q 40060/1 |goto 54.02,15.32 |only if haveq(40060) or completedq(40060)
step
click Baric's Ritual Essence##244742
Activate the First Essence Pool |q 39938/2 |goto 53.92,15.31 |only if haveq(39938) or completedq(39938)
Activate the First Essence Pool |q 40060/2 |goto 53.92,15.31 |only if haveq(40060) or completedq(40060)
step
click Baric's Ritual Essence##244742
Activate the Second Essence Pool |q 39938/3 |goto 53.84,15.11 |only if haveq(39938) or completedq(39938)
Activate the Second Essence Pool |q 40060/3 |goto 53.84,15.11 |only if haveq(40060) or completedq(40060)
step
click Baric's Ritual Essence##244742
Activate the Third Essence Pool |q 39938/4 |goto 53.76,15.33 |only if haveq(39938) or completedq(39938)
Activate the Third Essence Pool |q 40060/4 |goto 53.76,15.33 |only if haveq(40060) or completedq(40060)
step
Watch the dialogue
Complete the Ritual |q 39938/5 |goto 53.85,15.28 |only if haveq(39938) or completedq(39938)
Complete the Ritual |q 40060/5 |goto 53.85,15.28 |only if haveq(40060) or completedq(40060)
step
talk Baric Stormrunner##97736
turnin Containing the Demon Within##39938 |goto 54.02,15.32 |only if haveq(39938) or completedq(39938)
turnin Containing the Demon Within##40060 |goto 54.02,15.32 |only if haveq(40060) or completedq(40060)
accept The Burdens of Hunting##39943 |goto 54.02,15.32
step
talk Professor Pallin##92195
|tip Inside the building.
turnin The Burdens of Hunting##39943 |goto Dalaran L/10 41.27,37.02
step
talk Professor Pallin##92195
|tip Inside the building.
accept Mysterious Messages##39944 |goto 41.27,37.02
step
Follow the path down |goto Stormheim/0 60.53,52.12 < 20 |only if walking
Follow the path |goto Stormheim/0 61.48,52.60 < 30 |only if walking
Follow the path |goto Stormheim/0 65.72,50.30 < 30 |only if walking
Follow the path up |goto Stormheim/0 67.54,44.84 < 20 |only if walking
talk Nicholo Swiftfuse##97748
turnin Mysterious Messages##39944 |goto Stormheim/0 69.28,40.59
accept Runes Within the Ruins##39945 |goto Stormheim/0 69.28,40.59
accept Right Tool for the Job##39946 |goto Stormheim/0 69.28,40.59
stickystart "Runic_Bone_Knife_Inscription"
step
Follow the path |goto 67.47,45.00 < 30 |only if walking
Follow the path |goto 67.96,46.72 < 30 |only if walking
click Ancient Vrykul Rune Tablets##244779
|tip They look like grey stone slabs leaning on walls around this area.
collect 10 Ancient Vrykul Rune Tablet##129164 |q 39945/1 |goto 69.89,44.47
step
label "Runic_Bone_Knife_Inscription"
kill Bonespeaker Mystic##93071+
|tip You can find them in the side rooms around this area.
collect Runic Bone Knife##129169 |q 39946/1 |goto 69.89,44.47
step
Follow the path |goto 69.29,45.81 < 30 |only if walking
Follow the path up |goto 67.25,47.55 < 20 |only if walking
Follow the path up |goto 67.54,44.84 < 20 |only if walking
talk Nicholo Swiftfuse##97748
turnin Runes Within the Ruins##39945 |goto 69.28,40.59
turnin Right Tool for the Job##39946 |goto 69.28,40.59
accept Not So Complex?##39947 |goto 69.28,40.59
step
talk Nicholo Swiftfuse##97748
Watch the dialogue
Kill the enemies that attack in waves
Protect Nicholo |q 39947/1 |goto 69.28,40.59
step
talk Nicholo Swiftfuse##97748
turnin Not So Complex?##39947 |goto 69.28,40.59
accept Ancient Vrykul Mastered##40052 |goto 69.28,40.59
step
talk Professor Pallin##92195
|tip Inside the building.
turnin Ancient Vrykul Mastered##40052 |goto Dalaran L/10 41.27,37.02
step
talk Professor Pallin##92195
|tip Inside the building.
accept The Ink Flows##39948 |goto 41.27,37.02
step
talk Raethan##97359
Deliver the Contracts |q 39948/1 |goto Dalaran L/11 68.79,58.48
step
talk Raethan##97359
turnin The Ink Flows##39948 |goto 68.79,58.48
accept Once a Scribe Like You##39949 |goto 68.79,58.48
step
talk Raethan##97359
Tell him _"I want to hire a personal bodyguard."_
|tip This will cost 5 gold, but will prevent other players from attacking you, for 5 minutes, in this PvP area.
Hire a Bodyguard |havebuff 237433 |goto 68.99,58.38 |q 39949
step
Follow the path down |goto 64.35,58.85 < 20 |walk
talk Inkrot##97756
|tip Under the stairs.
Watch the dialogue
kill Inkrot##97756
collect Stolen Shadowruby##129292 |q 39949/1 |goto 60.44,78.16
step
Run up the stairs |goto 59.90,62.74 < 15 |walk
talk Raethan##97359
turnin Once a Scribe Like You##39949 |goto 68.79,58.48
accept An Odd Trinket##39950 |goto 68.79,58.48
step
talk Professor Pallin##92195
|tip Inside the building.
turnin An Odd Trinket##39950 |goto Dalaran L/10 41.27,37.02
accept Vision of Valor##39953 |goto Dalaran L/10 41.27,37.02
step
Enter the Halls of Valor Dungeon
|tip Use the Group Finder to enter the dungeon.
Kill enemies throughout the dungeon
|tip Use the Halls of Valor dungeon guide to accomplish this.
collect 5 Valarjar Rune-Sigil##131928 |q 39953/1
step
kill Odyn##95676
|tip Use the Halls of Valor dungeon guide to accomplish this.
Defeat Odyn |q 39953/2
step
talk Professor Pallin##92195
|tip Inside the building.
turnin Vision of Valor##39953 |goto 41.27,37.02
step
talk Professor Pallin##92195
|tip Inside the building.
accept Mass Milling Techniques##39954 |goto 41.27,37.02
step
click Runes of the Aqir##249730
Inspect the Old Book |q 39954/1 |goto 41.55,35.90
step
click Steamy Romance Novel##244651
accept An Embarrassing Revelation##39961 |goto 41.47,37.64
step
talk Professor Pallin##92195
|tip Inside the building.
turnin An Embarrassing Revelation##39961 |goto 41.27,37.02
accept The Plot Thickens##39955 |goto 41.27,37.02 |only Alliance
accept The Plot Thickens##39959 |goto 41.27,37.02 |only Horde
step
click Scrolls, Scrolls, Scrolls##249731
Inspect the Well-Worn Book |q 39954/2 |goto 41.07,38.00
step
click Verdigris or Malachite? Selecting the Proper Green Ink##249732
Inspect the Green Book |q 39954/3 |goto 40.66,37.73
step
clicknpc Runed Ladder##106359
Use the Runed Ladder |q 39954/4 |goto 40.84,36.47
step
click The Masterful Miller's Manual##249729
|tip It's next to you after the ladder takes you up.
collect The Masterful Miller's Manual##136931 |q 39954/5 |goto 40.84,36.47
step
talk Professor Pallin##92195
|tip Inside the building.
turnin Mass Milling Techniques##39954 |goto 41.27,37.02
step
talk Bill Spearshaker##97762
turnin The Plot Thickens##39955 |goto Ironforge/0 77.00,8.77
accept The Legacy Passed On##39956 |goto Ironforge/0 77.00,8.77
|only Alliance
step
click Unfinished Steamy Romance Novel##244883
|tip Choose any of the dialogue options, it doesn't matter.
Complete the Steamy Romance Novel |q 39956/1 |goto 76.56,8.16
|only Alliance
step
talk Bill Spearshaker##97762
turnin The Legacy Passed On##39956 |goto 77.00,8.77
|only Alliance
step
talk Francis Serbacon##97766
turnin The Plot Thickens##39959 |goto Undercity/0 77.98,39.24
accept The Legacy Passed On##39960 |goto Undercity/0 77.98,39.24
|only Horde
step
click Unfinished Steamy Romance Novel##244883
|tip Choose any of the dialogue options, it doesn't matter.
Complete the Steamy Romance Novel |q 39960/1 |goto 77.79,37.91
|only Horde
step
talk Francis Serbacon##97766
turnin The Legacy Passed On##39960 |goto 77.98,39.24
|only Horde
step
Reach Level 45 |ding 45
|tip Use the Leveling guides to accomplish this.
step
Unlock World Quests |complete completedq(43341)
|tip Use the "World Quests" dailies guide to accomplish this.
step
talk Professor Pallin##92195
|tip Inside the building.
accept Demon Ink##39957 |goto Dalaran L/10 41.27,37.02
step
Follow the path |goto Suramar/0 34.95,51.04 < 30 |only if walking
Follow the path up |goto Suramar/0 34.06,54.36 < 20 |only if walking
Follow the path |goto Suramar/0 33.07,56.58 < 30 |only if walking
Follow the path down |goto Suramar/0 32.75,58.79 < 20 |only if walking
Kill demon enemies around this area
|tip Some enemies won't drop the quest items.
collect 25 Vial of Felsoul Blood##129204 |q 39957/1 |goto Suramar/0 31.68,63.62
step
collect 1 Blood of Sargeras##124124 |q 39957
|tip These come from gathering professions.
|tip You can also get these from World Quests and Dungeon Bosses.
step
Use the Vial of Felsoul Blood |use Vial of Felsoul Blood##129204
collect Felsoul Ink##137187 |q 39957/2
step
talk Professor Pallin##92195
|tip Inside the building.
turnin Demon Ink##39957 |goto Dalaran L/10 41.27,37.02
step
collect 50 Aethril##124101 |q 39942 |future
|tip Use the Aethril farming guide to gather these, if you have Herbalism.
|tip You can also purchase them from the Auction House.
step
Use Your Milling Ability:
_<Mill 50 Aethril>_
|tip They're in your bags.
|tip You may need to mill more or less Aethril, depending on your luck.
accept Aethrem Crystal##39942
step
talk Professor Pallin##92195
|tip Inside the building.
turnin Aethrem Crystal##39942 |goto 41.27,37.02
step
collect 50 Dreamleaf##124102 |q 40062 |future
|tip Use the Dreamleaf farming guide to gather these, if you have Herbalism.
|tip You can also purchase them from the Auction House.
step
Use Your Milling Ability:
_<Mill 50 Dreamleaf>_
|tip They're in your bags.
|tip You may need to mill more or less Dreamleaf, depending on your luck.
accept Bulging Nightmare Pod##40062
step
talk Professor Pallin##92195
|tip Inside the building.
turnin Bulging Nightmare Pod##40062 |goto 41.27,37.02
step
collect 50 Foxflower##124103 |q 40064 |future
|tip Use the Foxflower farming guide to gather these, if you have Herbalism.
|tip You can also purchase them from the Auction House.
step
Use Your Milling Ability:
_<Mill 50 Foxflower>_
|tip They're in your bags.
|tip You may need to mill more or less Foxflower, depending on your luck.
accept Woody Seed Cluster##40064
step
talk Professor Pallin##92195
|tip Inside the building.
turnin Woody Seed Cluster##40064 |goto 41.27,37.02
step
collect 50 Fjarnskaggl##124104 |q 40065 |future
|tip Use the Fjarnskaggl farming guide to gather these, if you have Herbalism.
|tip You can also purchase them from the Auction House.
step
Use Your Milling Ability:
_<Mill 50 Fjarnskaggl>_
|tip They're in your bags.
|tip You may need to mill more or less Fjarnskaggl, depending on your luck.
accept Fjarnsk##40065
step
talk Professor Pallin##92195
|tip Inside the building.
turnin Fjarnsk##40065 |goto 41.27,37.02
step
collect 50 Starlight Rose##124105 |q 39951 |future
|tip Use the Starlight Rose farming guide to gather these, if you have Herbalism.
|tip You can also purchase them from the Auction House.
step
Use Your Milling Ability:
_<Mill 50 Starlight Rose>_
|tip They're in your bags.
|tip You may need to mill more or less Starlight Rose, depending on your luck.
accept Roseate Essence##39951
step
talk Professor Pallin##92195
|tip Inside the building.
turnin Roseate Essence##39951 |goto 41.39,37.13
step
click Technique: Tome of the Tranquil Mind##257999
collect Technique: Tome of the Tranquil Mind##141447 |n
Use the Technique: Tome of the Tranquil Mind |use Technique: Tome of the Tranquil Mind##141447
Learn the Technique for Tome of the Tranquil Mind |learn Tome of the Tranquil Mind##227043 |goto 41.24,35.69
step
_Congratulations!_
You completed the Inscription questline.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Jewelcrafting\\Leveling Guides\\Legion Jewelcrafting 1-100",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Legion Jewelcrafting skill from 1-100.",
condition_end=function() return skill('Legion Jewelcrafting') >= 100 end,
condition_suggested=function() return skill('Legion Jewelcrafting') > 0 and skill('Legion Jewelcrafting') < 100 end,
},[[
step
Load the "Legion Jewelcrafting Quest Line" Guide |confirm |next "Profession Guides\\Jewelcrafting\\Quest Guides\\Legion Jewelcrafting Quest Line"
|tip Click the line above to load the guide.
Complete the Legion Jewelcrafting Quest Line |q 40561 |future
step
collect 45 Azsunite##130174
|tip These are gathered with the Mining professions.
|tip Prospect 5 Leystone or Felslate Ore to obtain a random gem.
|tip You can also purchase them from the Auction House.
|only if skill("Legion Jewelcrafting") < 35
step
collect 50 Skystone##130176
|tip These are gathered with the Mining professions.
|tip Prospect 5 Leystone or Felslate Ore to obtain a random gem.
|tip You can also purchase them from the Auction House.
|only if skill("Legion Jewelcrafting") < 60
step
collect 25 Chaotic Spinel##130175
|tip These are gathered with the Mining professions.
|tip Prospect 5 Leystone or Felslate Ore to obtain a random gem.
|tip You can also purchase them from the Auction House.
|only if skill("Legion Jewelcrafting") < 60
step
collect 225 Deep Amber##130173
|tip These are gathered with the Mining professions.
|tip Prospect 5 Leystone or Felslate Ore to obtain a random gem.
|tip You can also purchase them from the Auction House.
|only if skill("Legion Jewelcrafting") < 95
step
collect 45 Sangrite##130172
|tip These are gathered with the Mining professions.
|tip Prospect 5 Leystone or Felslate Ore to obtain a random gem.
|tip You can also purchase them from the Auction House.
|only if skill("Legion Jewelcrafting") < 95
step
collect 15 Pandemonite##130181
|tip These are gathered with the Mining professions.
|tip Prospect 5 Leystone or Felslate Ore to obtain a random gem.
|tip You can also purchase them from the Auction House.
|only if skill("Legion Jewelcrafting") < 100
step
collect 5 Furystone##130178
|tip These are gathered with the Mining professions.
|tip Prospect 5 Leystone or Felslate Ore to obtain a random gem.
|tip You can also purchase them from the Auction House.
|only if skill("Legion Jewelcrafting") < 100
step
collect 10 Infernal Brimstone##124444
|tip These are gathered with the Mining profession from World Quests.
|tip Refer to the World Quest Guide to accomplish this.
|tip Note that the World Quest to kill a Brimstone Destroyer needs to be active to receive this reward.
|tip You can also purchase them from the Auction House.
|only if skill("Legion Jewelcrafting") < 100
step
collect 25 Blood of Sargeras##124124
|tip These come from gathering professions.
|tip You can also get these from World Quests and Dungeon Bosses.
|only if skill("Legion Jewelcrafting") < 100
step
collect 250 Sightless Eyes |complete curcount(1149) >= 250
|tip These are gained by killing enemies in the Dalaran Sewers.
|tip You can Hire a Guard if you want to prevent other players from attacking you while you farm these.
|tip Speak with Raethan to hire a guard.
|only if skill("Legion Jewelcrafting") < 100
step
Open Your Jewelcrafting Crafting Panel:
_<Create 45 Quick Azsunite>_
|tip This recipe will be yellow at 20, so you might need to create more.
Reach Level 35 Legion Jewelcrafting |skill Legion Jewelcrafting,35
step
talk Jabrul##100500
buy Design: Skystone Loop##137793 |n
use the Design: Skystone Loop##137793
learn Skystone Loop Rank 1##195857 |goto Dalaran L/10 39.82,34.09
step
talk Tiffany Cartier##93526
buy Design: Skystone Loop##137818 |n
use the Design: Skystone Loop##137818
learn Azsunite Loop Rank 2##195903 |goto Dalaran L/10 40.29,34.70
step
Load the "Highmountain" Leveling Guide |confirm |next "Leveling Guides\\Legion (10-50)\\Highmountain"
|tip Click the line above to load the guide.
Become Honored with the Highmountain Tribe |complete rep("Highmountain Tribe")>=Honored
step
talk Ransa Greyfeather##106902
buy Design: Skystone Loop##137839 |n
use the Design: Skystone Loop##137839
learn Skystone Loop Rank 3##195924 |goto Thunder Totem/0 38.07,46.01
step
Open Your Jewelcrafting Crafting Panel:
_<Create 25 Skystone Loop>_
Reach Level 60 Legion Jewelcrafting |skill Legion Jewelcrafting,60
step
talk Jabrul##100500
buy Design: Deep Amber Pendant##137795 |n
use the Design: Deep Amber Pendant##137795
learn Deep Amber Pendant Rank 1##195859 |goto Dalaran L/10 39.82,34.09
step
talk Tiffany Cartier##93526
buy Design: Deep Amber Pendant##137820 |n
use the Design: Deep Amber Pendant##137820
learn Deep Amber Pendant Rank 2##195905 |goto Dalaran L/10 40.29,34.70
step
Kill enemies around this area
collect Design: Deep Amber Pendant##137841 |n
use the Design: Deep Amber Pendant##137841
learn Deep Amber Pendant Rank 3##195926 |goto Azsuna/0 66.50,48.95
step
Open Your Jewelcrafting Crafting Panel:
_<Create 45 Deep Amber Pendant>_
|tip This recipe will be green by 90, so you might need to create more.
Reach Level 95 Legion Jewelcrafting |skill Legion Jewelcrafting,95
step
talk Jabrul##100500
buy Design: Vindictive Pandemonite Choker##137806 |n
use the Design: Vindictive Pandemonite Choker##137806
learn Vindictive Pandemonite Choker Rank 1##195870 |goto Dalaran L/10 39.82,34.09
step
talk Oxana Demonslay##97361
buy Design: Vindictive Pandemonite Choker##137831 |n
use the Design: Vindictive Pandemonite Choker##137831
learn Vindictive Pandemonite Choker Rank 2##195916 |goto Dalaran L/11 66.87,17.62
step
_Enter the (Heroic) Vault of the Wardens Dungeon:_
kill Cordana Felsong##95888
collect Design: Vindictive Pandemonite Choker##137852 |n
use the Design: Vindictive Pandemonite Choker##137852
learn Vindictive Pandemonite Choker Rank 3##195937
step
Open Your Jewelcrafting Crafting Panel:
_<Create 5 Vindictive Pandemonite Chokers>_
Reach Level 100 Legion Jewelcrafting |skill Legion Jewelcrafting,100
step
_Congratulations!_
You Reached Level 100 Legion Jewelcrafting Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Jewelcrafting\\Quest Guides\\Legion Jewelcrafting Quest Line",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the Legion Jewelcrafting quest line.",
startlevel=10.0,
condition_end=function() return completedq(40561) end,
condition_suggested=function() return skill('Legion Jewelcrafting') > 0 and level >= 10 and not completedq(40561) end,
},[[
step
talk Tiffany Cartier##93526
|tip Inside the building.
accept Facet-nating Friends##40523 |goto Dalaran L/10 40.27,34.68
step
talk Timothy Jones##93527
|tip Inside the building.
Tell him _"I'd like to introduce myself."_
Introduce Yourself to Timothy Jones |q 40523/1 |goto 40.06,35.30
step
talk Sminx Glasseye##93543
|tip Inside the building.
Tell her _"I'd like to introduce myself."_
Introduce Yourself to Sminx Glasseye |q 40523/2 |goto 39.60,35.47
step
talk Tiffany Cartier##93526
|tip Inside the building.
turnin Facet-nating Friends##40523 |goto 40.27,34.70
accept Truly Outrageous##40529 |goto 40.27,34.70
step
talk Timothy Jones##93527
|tip Inside the building.
accept A Familiar Ring to It##40524 |goto 40.05,35.28
step
collect 25 Leystone Ore##123918 |c |q 40524
|tip Use the "Leystone Ore & Felslate (Mining Route)" guide to gather them, if you have Mining.
|tip You can also purchase them from the Auction House.
step
Use Your Prospecting Ability:
_<Prospect 25 Leystone Ore>_
|tip They're in your bags.
collect 5 Gem Chip##129100 |q 40529/1
step
talk Tiffany Cartier##93526
|tip Inside the building.
turnin Truly Outrageous##40529 |goto 40.27,34.70
accept An Eye for Detail##40530 |goto 40.27,34.70
step
talk Catriona Macrae##96198
|tip Upstairs inside the building.
Tell her _"I'm here to inspect the jewel Tiffany Cartier crafted for you."_
Talk to Catriona Macrae |q 40530/1 |goto 49.10,39.05
step
click Catriona's Jewel##246701
Examine the Gem |q 40530/2 |goto 49.51,38.15
step
talk Didi the Wrench##93520
|tip Inside the building.
Tell her _"I'm here to inspect the gem chips Tiffany Cartier gave you."_
Talk to Didi the Wrench |q 40530/3 |goto 38.84,24.74
step
click Gem Chips##245691
Examine the Gem Chips |q 40530/4 |goto 38.74,24.43
step
talk Debbi Moore##97005
|tip Inside the building.
Tell her _"I'm here to inspect the jewels Tiffany Cartier gave you."_
Talk to Debbi Moore |q 40530/5 |goto 49.36,55.25
step
click Bag of Jewels##245692
Examine the Bag of Jewels |q 40530/6 |goto 49.50,55.60
step
talk Tiffany Cartier##93526
|tip Inside the building.
Bring the Bag of Jewels to Tiffany Cartier |q 40530/7 |goto 40.26,34.70
step
talk Tiffany Cartier##93526
|tip Inside the building.
turnin An Eye for Detail##40530 |goto 40.26,34.70
accept Swift Vengeance##40531 |goto 40.26,34.70
step
talk Raethan##97359
Tell him _"I want to hire a personal bodyguard."_
|tip This will cost 5 gold, but will prevent other players from attacking you, for 5 minutes, in this PvP area.
Hire a Bodyguard |havebuff 237433 |goto Dalaran L/11 68.99,58.38 |q 40531
step
Follow the path down |goto 64.30,58.65 < 15 |walk
talk Harold Winston##100671
Tell him _"I'm here to reclaim the jewels you stole."_
kill Harold Winston##100671
collect Bag of Real Jewels##132259 |q 40531/1 |goto 49.37,65.62
step
talk Tiffany Cartier##93526
|tip Inside the building.
turnin Swift Vengeance##40531 |goto Dalaran L/10 40.26,34.70
step
label "Menu"
talk Tiffany Cartier##93526
|tip Inside the building.
Choose the Design to Learn:
|tip You will only accept one of these quests, based on which gem you choose.
accept Making the Cut##40532 |goto 40.27,34.68 |or |next "Deadly_Amber_Jewelcrafting"
accept Making the Cut##40533 |goto 40.27,34.68 |or |next "Quick_Azsunite_Jewelcrafting"
accept Making the Cut##40534 |goto 40.27,34.68 |or |next "Master_Opal_Jewelcrafting"
step
label "Deadly_Amber_Jewelcrafting"
click Tiffany's Carving Machine
|tip Use the abilities on your action bar to rotate the gem.
|tip Right-click the jagged shards to cut the gem.
Cut a Deadly Deep Amber |q 40532/1 |goto 39.99,34.32
|next "Turnin_Making_The_Cut_Jewelcrafting"
step
label "Quick_Azsunite_Jewelcrafting"
click Tiffany's Carving Machine
|tip Use the abilities on your action bar to rotate the gem.
|tip Right-click the jagged shards to cut the gem.
Cut a Quick Azsunite |q 40533/1 |goto 39.99,34.32
|next "Turnin_Making_The_Cut_Jewelcrafting"
step
label "Master_Opal_Jewelcrafting"
click Tiffany's Carving Machine
|tip Use the abilities on your action bar to rotate the gem.
|tip Right-click the jagged shards to cut the gem.
Cut a Masterful Queen's Opal |q 40534/1 |goto 39.99,34.32
|next "Turnin_Making_The_Cut_Jewelcrafting"
step
label "Turnin_Making_The_Cut_Jewelcrafting"
talk Tiffany Cartier##93526
|tip Inside the building.
turnin Making the Cut##40532 |goto 40.27,34.68 |only if haveq(40532) or completedq(40532)
turnin Making the Cut##40533 |goto 40.27,34.68 |only if haveq(40533) or completedq(40533)
turnin Making the Cut##40534 |goto 40.27,34.68 |only if haveq(40534) or completedq(40534)
|next "Finish"
step
label "Finish"
Follow the path up |goto Azsuna/0 45.45,42.27 < 20 |only if walking
talk Lady Irisse##88798
|tip Inside the building.
Ask her _"Do you know anything about the Band of Farondis?"_
Find Someone Who Knows About the Band of Farondis |q 40524/1 |goto Azsuna/0 47.06,41.48
step
talk Timothy Jones##100538
|tip Inside the building.
turnin A Familiar Ring to It##40524 |goto 46.67,41.36
accept Getting the Band Back Together##40525 |goto 46.67,41.36
accept Knocked for a Loop##42214 |goto 46.67,41.36
stickystart "Salteye_Bangles_Jewelcrafting"
step
Run down the rocks |goto 47.59,40.25 < 20 |only if walking
Follow the path down |goto 48.59,39.24 < 20 |only if walking
click Ancient Chest##246127
|tip Under the broken boat.
collect Third Piece of the Band of Farondis##132876 |q 40525/3 |goto 50.13,37.17
step
click Ancient Chest##246127
collect Second Piece of the Band of Farondis##132875 |q 40525/2 |goto 49.95,35.42
step
click Ancient Chest##246127
collect First Piece of the Band of Farondis##132368 |q 40525/1 |goto 50.65,32.77
step
label "Salteye_Bangles_Jewelcrafting"
Kill Salteye enemies around this area
collect 10 Salteye Bangle##132370 |q 42214/1 |goto 49.99,36.77
step
Follow the path up |goto 50.96,32.72 < 20 |only if walking
Follow the path |goto 50.38,31.94 < 30 |only if walking
Follow the road |goto 49.48,33.22 < 30 |only if walking
Follow the road |goto 49.23,33.99 < 30 |only if walking
Continue following the road |goto 48.45,36.05 < 30 |only if walking
Follow the path up |goto 48.32,38.07 < 20 |only if walking
Cross the bridge |goto 47.31,38.26 < 20 |only if walking
talk Timothy Jones##100710
|tip Inside the building.
turnin Getting the Band Back Together##40525 |goto 46.67,41.36
turnin Knocked for a Loop##42214 |goto 46.67,41.36
step
talk Timothy Jones##100710
|tip Inside the building.
Choose the Design to Learn:
|tip You will only accept one of these quests, based on which gem you choose.
accept Finishing Touches##40526 |goto 46.67,41.36 |or |next "Design_Skystone_Loop_Jewelcrafting"
accept Finishing Touches##40527 |goto 46.67,41.36 |or |next "Design_Deep_Amber_Loop_Jewelcrafting"
accept Finishing Touches##40528 |goto 46.67,41.36 |or |next "Design_Azsunite_Loop_Jewelcrafting"
step
label "Design_Skystone_Loop_Jewelcrafting"
click Timothy's Gem Vice
|tip Use the abilities on your action bar to rotate the gem.
|tip Right-click the jagged shards to cut the gem.
Cut the Skystone |q 40526/1 |goto 46.68,41.31
|next "Turnin_Finishing_Touches_Jewelcrafting"
step
label "Design_Deep_Amber_Loop_Jewelcrafting"
click Timothy's Gem Vice
|tip Use the abilities on your action bar to rotate the gem.
|tip Right-click the jagged shards to cut the gem.
Cut the Deep Amber |q 40527/1 |goto 46.68,41.31
|next "Turnin_Finishing_Touches_Jewelcrafting"
step
label "Design_Azsunite_Loop_Jewelcrafting"
click Timothy's Gem Vice
|tip Use the abilities on your action bar to rotate the gem.
|tip Right-click the jagged shards to cut the gem.
Cut the Azsunite |q 40528/1 |goto 46.68,41.31
|next "Turnin_Finishing_Touches_Jewelcrafting"
step
label "Turnin_Finishing_Touches_Jewelcrafting"
talk Timothy Jones##100710
|tip Inside the building.
turnin Finishing Touches##40526 |goto 46.67,41.36 |only if haveq(40526) or completedq(40526)
turnin Finishing Touches##40527 |goto 46.67,41.36 |only if haveq(40527) or completedq(40527)
turnin Finishing Touches##40528 |goto 46.67,41.36 |only if haveq(40528) or completedq(40528)
step
talk Tiffany Cartier##93526
|tip Inside the building.
accept Raising the Drogbar##40535 |goto Dalaran L/10 40.26,34.70
step
Cross the bridge |goto Val'sharah/0 53.81,72.47 < 20 |only if walking
Follow the path |goto Val'sharah/0 53.02,71.67 < 30 |only if walking
Continue following the path |goto Val'sharah/0 51.00,70.64 < 30 |only if walking
Follow the path down |goto Val'sharah/0 48.32,68.85 < 30 |only if walking
talk Lasune Starblade##100884
|tip Inside the building.
Tell her _"I'm looking for a master jewelcrafter."_
Watch the dialogue
Talk to the Locals |q 40535/1 |goto Val'sharah/0 45.65,67.21
step
Follow the path |goto 45.07,72.33 < 20 |only if walking
talk Jabrul##100498
Ask him _"What happened to you?"_
Find Jabrul |q 40535/2 |goto 45.37,73.33
step
Follow the path |goto 44.56,73.51 < 20 |only if walking
Follow the path up |goto 44.53,74.16 < 20 |only if walking
click Jabrul's Bag of Jewels##245843
collect Jabrul's Jewels##132446 |q 40535/3 |goto 44.72,74.78
step
talk Jabrul##100498
tell him _"Here's your bag, Jabrul."_
Watch the dialogue
Bring Jabrul His Jewels |q 40535/4 |goto 45.37,73.33
step
talk Jabrul##100776
turnin Raising the Drogbar##40535 |goto 45.37,73.33
accept Bruls Before Jewels##40536 |goto 45.37,73.33
step
talk Jabrul##100776 |goto 45.37,73.33 |n
Tell him _"Aliright, Jabrul. I'm ready to go."_
|tip He will start following you.
Begin Following the Water West |goto 45.37,73.33 > 10 |noway |c |q 40536
step
Follow the path |goto 43.08,74.98 < 20 |only if walking
Kill the enemies that attack
Help Jabrul Find the First Stone |q 40536/1 |goto 41.48,76.54
step
Follow the path |goto 42.87,77.71 < 20 |only if walking
Kill the enemies that attack
Help Jabrul Find the Second Stone |q 40536/2 |goto 44.55,78.54
step
Follow the path |goto 44.88,75.92 < 30 |only if walking
Cross the bridge |goto 45.08,73.73 < 20 |only if walking
Continue following the path |goto 45.08,72.26 < 20 |only if walking
Escort Jabrul to the Night Elf Camp |q 40536/3 |goto 45.61,69.11
step
talk Jabrul##100776
|tip Inside the building.
turnin Bruls Before Jewels##40536 |goto 45.45,67.37
step
talk Clive Cozen##100939
|tip Outside next to the building.
accept Hidden Intentions##40539 |goto Dalaran L/10 38.96,35.83
step
talk Tiffany Cartier##93526
|tip Inside the building.
accept Lapidary Lessons##40538 |goto 40.26,34.70
step
talk Tiffany Cartier##93526
|tip Inside the building.
Tell her _I'm looking for some diamonds, Tiffany, do you have any?_
Watch the dialogue
Ask Tiffany Cartier Where to Get Diamonds |q 40539/1 |goto 40.26,34.70
step
talk Raethan##97359
Tell him _"I want to hire a personal bodyguard."_
|tip This will cost 5 gold, but will prevent other players from attacking you, for 5 minutes, in this PvP area.
Hire a Bodyguard |havebuff 237433 |goto Dalaran L/11 68.99,58.38 |q 40539
step
Follow the path |goto 59.77,39.48 < 15 |walk
talk Ms. Xiulan##101492
Ask Around the Underbelly for Diamonds |q 40539/2 |goto 71.41,19.60
step
talk Ms. Xiulan##101492
Tell her _"(Aggressive) 250 gold is outrageous for one diamond! I'll give you 10."_
Tell her _"I'll look into doing that favor for you."_
Click Here After You Talk to Ms. Xiulan |confirm |goto 71.32,19.67 |q 40539
step
Follow the path |goto 67.16,25.53 < 15 |walk
Run down the stairs |goto 57.84,50.87 < 15 |walk
talk Inkrot##97756
|tip Under the stairs.
kill Inkrot##97756
Take Care of Inkrot |q 40539/3 |goto 60.41,78.22
step
Run up the stairs |goto 54.94,55.97 < 15 |walk
Follow the path |goto 59.79,39.07 < 15 |walk
talk Ms. Xiulan##101492
collect Black Market Diamond##137624 |q 40539/4 |goto 71.30,19.70
step
Use the Black Market Diamond |use Black Market Diamond##137624
Carve the Black Market Diamond into a Diamond Lockpick |complete itemcount(137624) == 0 |q 40539
step
talk Clive Cozen##100939
|tip Outside next to the building.
turnin Hidden Intentions##40539 |goto Dalaran L/10 38.95,35.81
step
click Tiffany's Carving Machine
|tip Inside the building.
|tip Use the abilities on your action bar to rotate the gem.
|tip Right-click the jagged shards to cut the gem.
Cut a Well-Cut Maelstrom Sapphire |q 40538/1 |goto 40.00,34.32
step
talk Tiffany Cartier##93526
|tip Inside the building.
turnin Lapidary Lessons##40538 |goto 40.27,34.68
step
talk Tiffany Cartier##93526
|tip Inside the building.
accept Come at Me, Brul##40540 |goto 40.27,34.68
step
Follow the path |goto Stormheim/0 34.24,49.26 < 20 |only if walking and alliance
Follow the path up |goto Stormheim/0 35.08,47.32 < 20 |only if walking and alliance
Follow the path |goto Stormheim/0 37.55,45.63 < 30 |only if walking and alliance
Follow the path |goto Stormheim/0 38.74,45.24 < 30 |only if walking and alliance
Follow the path down |goto Stormheim/0 39.10,41.02 < 30 |only if walking and alliance
Follow the path |goto Stormheim/0 37.66,32.15 < 30 |only if walking and horde
Follow the path up |goto Stormheim/0 39.79,34.30 < 30 |only if walking and horde
Follow the path up |goto Stormheim/0 41.30,35.73 < 20 |only if walking
Run up the rocks |goto Stormheim/0 42.11,35.75 < 15 |only if walking
talk Jabrul##100499
turnin Come at Me, Brul##40540 |goto Stormheim/0 42.25,34.99
accept The Charge Within##40541 |goto Stormheim/0 42.25,34.99
accept Mysteries of Nature##40546 |goto Stormheim/0 42.25,34.99
stickystart "The_Charge_Within_Jewelcrafting"
step
Follow the path up |goto 42.84,36.98 < 20 |only if walking
Follow the path |goto 45.14,37.00 < 20 |only if walking
Follow the path |goto 46.87,34.49 < 20 |only if walking
click Dragon Glass##245960
collect Dragon Glass##132820 |q 40546/1 |goto 46.68,31.19
step
label "The_Charge_Within_Jewelcrafting"
Kill Squallhunter enemies around this area
|tip The Squallhunter Whelplings don't count.
Use the Absorb Charge ability near their corpses
|tip It appears as a button on the screen.
Collect #10# Storm Dragon Charges |q 40541/1 |goto 46.85,34.74
step
Follow the path down |goto 45.08,36.93 < 30 |only if walking
Follow the path down |goto 42.58,36.58 < 20 |only if walking
Run up the rocks |goto Stormheim/0 42.11,35.75 < 15 |only if walking
talk Jabrul##100499
turnin The Charge Within##40541 |goto 42.25,35.00
turnin Mysteries of Nature##40546 |goto 42.25,35.00
step
talk Jabrul##101119
Choose the Design to Learn:
|tip You will only accept one of these quests, based on which gem you choose.
accept Eyes of Nashal##40542 |goto 42.25,35.00 |or
accept Eyes of Nashal##40543 |goto 42.25,35.00 |or
accept Eyes of Nashal##40544 |goto 42.25,35.00 |or
step
Enter the building |goto 42.35,34.58 < 10 |walk
Follow the path up |goto 42.62,33.66 < 10 |walk
click Eye of Nashal##245945
|tip At the top of the tower.
collect Eye of Nashal##132767 |q 40542/1 |count 1 |goto 42.51,33.99 |only if haveq(40542) or completedq(40542)
collect Eye of Nashal##132767 |q 40543/1 |count 1 |goto 42.51,33.99 |only if haveq(40543) or completedq(40543)
collect Eye of Nashal##132767 |q 40544/1 |count 1 |goto 42.51,33.99 |only if haveq(40544) or completedq(40544)
step
click Eye of Nashal##245945
|tip At the top of the tower.
collect Eye of Nashal##132767 |q 40542/1 |count 2 |goto 42.41,34.12 |only if haveq(40542) or completedq(40542)
collect Eye of Nashal##132767 |q 40543/1 |count 2 |goto 42.41,34.12 |only if haveq(40543) or completedq(40543)
collect Eye of Nashal##132767 |q 40544/1 |count 2 |goto 42.41,34.12 |only if haveq(40544) or completedq(40544)
step
talk Jabrul##101119
|tip At the bottom of the tower, outside.
turnin Eyes of Nashal##40542 |goto 42.25,35.00 |only if haveq(40542) or completedq(40542)
turnin Eyes of Nashal##40543 |goto 42.25,35.00 |only if haveq(40543) or completedq(40543)
turnin Eyes of Nashal##40544 |goto 42.25,35.00 |only if haveq(40544) or completedq(40544)
step
click Letter From Jabrul##246250
|tip Inside the building.
accept Jabrul Needs You##40556 |goto Dalaran L/10 40.03,33.95
step
talk Jabrul##100521
turnin Jabrul Needs You##40556 |goto Azsuna/0 56.37,59.62
accept To Dalaran, With Love##40547 |goto Azsuna/0 56.37,59.62
step
click Floating Planks##246228
|tip They look like brown wooden boards floating in the water around this area.
collect 6 Wooden Plank##132823 |q 40547/1 |goto 55.34,58.86
step
talk Jabrul##100521
Tell him _"I'm going to crate you up now, Jabrul."_
Click Here After Talking to Jabrul |confirm |goto 56.37,59.62 |q 40547
step
click Inconspicuous Crate##246238
Choose _"Mail Jabrul."_
Crate Up and Mail Jabrul |q 40547/2 |goto 56.36,59.57
step
click Inconspicuous Crate##246238
Choose _"Break open the crate."_
Watch the dialogue
Make Sure Jabrul Arrived Safely |q 40547/3 |goto Dalaran L/10 40.16,32.28
step
talk Jabrul##100500
|tip Inside the building.
turnin To Dalaran, With Love##40547 |goto 39.78,34.05
step
Reach Level 45 |ding 45
|tip Use the Leveling guides to accomplish this.
step
Unlock World Quests |complete completedq(43341)
|tip Use the "World Quests" dailies guide to accomplish this.
step
click Broken Toy Box##246154
|tip Inside the building.
accept Socket to Me##40558 |goto 40.06,34.90
step
talk Timothy Jones##93527
|tip Inside the building.
accept Jewel of the Heavens##40561 |goto 40.05,35.30
accept Spiriting Away##40560 |goto 40.05,35.30
accept The Raven's Wisdom##40559 |goto 40.05,35.30
step
kill Adult Truesilver Crab##101624
|tip Underwater inside the sunken ship.
collect Crystal Shell##132838 |q 40558/1 |goto Northern Stranglethorn/0 35.74,55.87
step
kill Lost Netherwhelp##101625
collect Crystal Scale##132840 |q 40558/3 |goto Twilight Highlands/0 25.87,69.66
step
click Jade Plume##246267
collect Crystal Plume##132843 |q 40558/6 |goto Moonglade/0 31.07,47.63
step
click Portal to Deepholm |goto Stormwind City/0 73.20,19.64 |n |only Alliance
click Portal to Deepholm |goto Orgrimmar/1 50.8,36.4 |n |only Horde
Travel to Deepholm |goto Deepholm/0 48.73,53.56 < 10000 |noway |c |q 40558
step
kill Crimson Geode##108950
collect Crystal Core##132839 |q 40558/2 |goto Deepholm/0 51.99,20.17
step
clicknpc Golden Hare##101629
|tip It looks like a small yellow rabbit running around on the ground.
Use the Golden Hare |use Golden Hare##132976
collect Crystal Heart##132841 |q 40558/4 |goto Vale of Eternal Blossoms/0 14.03,67.19
step
Cross the bridge |goto Highmountain/0 58.53,64.44 < 20 |only if walking
Follow the path up |goto Highmountain/0 57.40,63.31 < 30 |only if walking
Follow the path up |goto Highmountain/0 55.90,63.94 < 30 |only if walking
Follow the path up |goto Highmountain/0 54.70,67.09 < 30 |only if walking
Continue following the path up |goto Highmountain/0 55.33,71.95 < 30 |only if walking
Continue up the path |goto Highmountain/0 54.52,73.24 < 30 |only if walking
Enter the cave |goto Highmountain/0 54.59,75.32 < 20 |walk
Follow the path down |goto Highmountain/0 54.96,78.00 < 20 |walk
Follow the path down |goto Highmountain/0 55.25,80.14 < 30 |walk
kill Amberstone Earthrender##101630
collect Crystal Shard##132842 |q 40558/5 |goto Highmountain/0 53.41,81.35
step
talk Tiffany Cartier##93526
|tip Inside the building.
turnin Socket to Me##40558 |goto Dalaran L/10 40.26,34.68
step
_Enter the Black Rook Hold Dungeon:_
click Delayeth's Journal: The Jewels of the Is
|tip This is located on the bottom floor of The Grand Hall.
|tip Use the Black Rook Hold dungeon guide to navigate the dungeon.
collect Delayeth's Journal: The Jewels of the Is##132859 |q 40559/1 |goto Black Rook Hold/2 57.21,40.74
step
kill Dantalionax##98970 |q 40559/2
|tip Use the Black Rook Hold dungeon guide to accomplish this.
step
talk Timothy Jones##93527
|tip Inside the building.
turnin Black Rook Hold: The Raven's Wisdom##40559 |goto Dalaran L/10 40.06,35.30
step
_Enter the Maw of Souls Dungeon:_
click Musty Crate##246125
|tip Under the stairs on the right side.
|tip Use the Maw of Souls dungeon guide to navigate the dungeon.
collect Ring of the Fallen##132862 |q 40560/1 |goto Helmouth Cliffs/2 68.88,66.13
step
kill Helya##96759 |q 40560/2
|tip Use the Maw of Souls dungeon guide to accomplish this.
step
talk Timothy Jones##93527
|tip Inside the building.
turnin Maw of Souls: Spiriting Away##40560 |goto Dalaran L/10 40.06,35.30
step
_Enter the Halls of Valor Dungeon:_
kill Odyn##95676
|tip Use the Halls of Valor dungeon guide to accomplish this.
click Spoils of the Worthy##245847
|tip It appears after you defeat Odyn.
collect Thrymja, Ring of the Gods##132866 |q 40561/1
step
talk Timothy Jones##93527
|tip Inside the building.
turnin Halls of Valor: Jewel of the Heavens##40561 |goto 40.06,35.30
step
Load the Suramar Questing Guide |confirm |next "Leveling Guides\\Legion (10-50)\\Suramar (45-50)"
|tip Click the line above to load the guide.
Complete the "Masquerade" Quest in Suramar |q 42079 |future
step
talk Sminx Glasseye##93543
accept A Personal Touch##40562 |goto 39.60,35.49
step
Cross the bridge |goto Suramar/0 48.37,80.46 < 20 |only if walking
Run up the stairs |goto Suramar/0 48.51,79.08 < 20 |only if walking
click Nightborne Jewelry Cases##252692
|tip They look like display boxes with various colored gems in them on the counters around this area.
collect 5 Nightborne Jewelry Case##139887 |q 40562/2 |goto Suramar/0 49.70,77.42
step
click Custom Jewelry Order##246266
collect Custom Jewelry Order##139886 |q 40562/1 |goto 50.03,75.99
step
Run down the stairs |goto 48.41,78.78 < 20 |only if walking
Cross the bridge |goto 51.20,82.48 < 20 |only if walking
kill Duskwatch Shroud##111619+
|tip You will likely need to kill several to get the item.
collect Nightborne Loupe##132867 |q 40562/3 |goto 50.81,84.05
step
talk Sminx Glasseye##93543
|tip Inside the building.
turnin A Personal Touch##40562 |goto Dalaran L/10 39.61,35.49
step
_Congratulations!_
You completed the Jewelcrafting questline.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Jewelcrafting\\Quest Guides\\Argus Jewelcrafting Quest Line",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the Argus Jewelcrafting quest line.",
startlevel=45.0,
condition_end=function() return completedq(48076) end,
condition_suggested=function() return skill('Legion Jewelcrafting') > 0 and level >= 45 and not completedq(48076) end,
},[[
step
talk Timothy Jones##93527
|tip Inside the building.
Learn the Jewelcrafting Profession |complete skill("Legion Jewelcrafting")>=1 |goto Dalaran L/10 40.06,35.30
step
Complete the Quest _"The Path Forward"_ |complete completedq(46941)
|tip This is part of the Argus campaign guide.
Check out our Argus campaign guide to accomplish this |confirm |next "Leveling Guides\\Legion (10-50)\\Argus Campaign"
step
talk Vorel##125343
accept A Colorful Key##48075 |goto Eredath/4 44.37,66.16
step
Collect 1 of each epic gem
|tip You can get these from prospecting Empyrium Ore.
|tip Use the "Empyrium Ore" farming guide to accomplish this, if you have Mining.
|tip You can also buy them from the AH.
Click here to load the "Empyrium Ore" farming guide |confirm |next "Profession Guides\\Mining\\Farming Guides\\Empyrium"
collect 1 Florid Malachite##151722 |q 48075
collect 1 Hesselian##151721 |q 48075
collect 1 Chemirine##151720 |q 48075
collect 1 Lightsphene##151719 |q 48075
collect 1 Argulite##151718 |q 48075
collect 1 Labradorite##151579 |q 48075
step
Follow the path |goto Eredath/0 63.37,41.39 < 15 |only if walking
Follow the path |goto 62.80,46.47 < 20 |only if walking
Follow the path |goto 63.21,50.38 < 15 |only if walking
Enter the building |goto 62.75,55.41 < 7 |walk
Travel to Vorel's House |q 48075/1 |goto 62.77,56.29
step
Unlock the chest |q 48075/2 |goto 62.77,56.99
|tip Click the 6 gem slots located on the wall.
step
Open the chest that has unlocked
collect Vorel's Design Book##151876 |q 48075/3 |goto Eredath/0 62.77,56.86
step
talk Vorel##125343
turnin A Colorful Key##48075 |goto Eredath/4 44.37,66.16
accept A Crowning Achievement##48076 |goto Eredath/4 44.37,66.16
step
collect 50 Empyrium##151564 |q 48076
|tip Use the "Empyrium Ore" farming guide to accomplish this, if you have Mining.
|tip You can also purchase them from the Auction House.
Click here to load the "Empyrium Ore" farming guide |confirm |next "Profession Guides\\Mining\\Farming Guides\\Empyrium"
step
collect 1 Primal Sargerite##151568 |q 48076
|tip You can get these as rewards for certain world quests, from gathering profession, or killing dungeon bosses.
|tip Use the "World Quests" guide and dungeon guides to accomplish this.
Click here to load the "World Quests" guide |confirm |next "Dailies Guides\\Legion\\Azsuna World Quests"
step
collect 29 Gem Chip##129100 |q 48076
|tip You can get these from prospecting any legion ore.
|tip You can also buy them from the AH.
step
collect 3 Hesselian##151721 |q 48076
|tip You can get these from prospecting Empyrium Ore.
|tip Use the "Empyrium Ore" farming guide to accomplish this, if you have Mining.
|tip You can also buy them from the AH.
Click here to load the "Empyrium Ore" farming guide |confirm |next "Profession Guides\\Mining\\Farming Guides\\Empyrium"
step
collect 3 Florid Malachite##151722 |q 48076
|tip You can get these from prospecting Empyrium Ore.
|tip Use the "Empyrium Ore" farming guide to accomplish this, if you have Mining.
|tip You can also buy them from the AH.
Click here to load the "Empyrium Ore" farming guide |confirm |next "Profession Guides\\Mining\\Farming Guides\\Empyrium"
step
Open Your Jewelcrafting Crafting Panel:
_<Create 1 Empyrial Circlet>_
collect Empyrial Circlet##151931 |q 48076
step
Open Your Jewelcrafting Crafting Panel:
_<Create 3 Empyrial Florid Malachite Setting>_
collect 3 Empyrial Florid Malachite Setting##151933 |q 48076
step
Open Your Jewelcrafting Crafting Panel:
_<Create 3 Empyrial Hesselian Setting>_
collect 3 Empyrial Hesselian Setting##151932 |q 48076
step
Open Your Jewelcrafting Crafting Panel:
_<Create 1 Empyrial Crown>_
collect Empyrial Crown##151878 |q 48076/1
step
talk Vorel##125343
turnin A Crowning Achievement##48076 |goto Eredath/4 44.37,66.16
step
_Congratulations!_
You completed the Argus Jewelcrafting questline.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Leatherworking\\Leveling Guides\\Legion Leatherworking 1-100",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Legion Leatherworking skill from 1-100.",
condition_end=function() return skill('Legion Leatherworking') >= 100 end,
condition_suggested=function() return skill('Legion Leatherworking') > 0 and skill('Legion Leatherworking') < 100 end,
},[[
step
Load the "Legion Leather Working Quest Line" Guide |confirm |next "Profession Guides\\Leatherworking\\Quest Guides\\Legion Leatherworking Quest Line"
|tip Click the line above to load the guide.
Complete the Legion Leather Working Quest Line |q 40214 |future
step
kill Shade of Xavius##99192
|tip Refer to the Darkheart Thicket Dungeon guide to accomplish this.
collect Recipe: Warhide Bindings##137876 |n
use the Recipe: Warhide Bindings##137876
learn Warhide Bindings Rank 3##194711
step
collect 810 Stonehide Leather##124113
|tip Use the Stonehide Leather farming guide to get these.
|tip Buy these from the Auction House in Orgrimmar.
|tip You can also trade a Blood of Sargeras to Illnea Bloodthorn in Dalaran for 10 Stonehide Leather.
step
Open Your Leatherworking Crafting Panel:
_<Create 80 Warhide Bindings>_
|tip This Recipe will be green by 70.
Reach Level 75 Legion Leatherworking |skill Legion Leatherworking,75
step
collect 750 Sightless Eyes |complete curcount(1149) >= 750
|tip These are gained by killing enemies in the Dalaran Sewers.
|tip You can Hire a Guard if you want to prevent other players from attacking you while you farm these.
|tip Speak with Raethan to hire a guard.
step
talk Strap Bucklebolt##107760
|tip In the sewers, inside the building.
buy Recipe: Gravenscale Girdle##137917 |n
use the Recipe: Gravenscale Girdle##137917
learn Gravenscale Girdle##194760|goto Dalaran L/11 66.37,81.42
step
talk Strap Bucklebolt##107760
|tip In the sewers, inside the building.
buy Recipe: Gravenscale Girdle##137925 |n
use the Recipe: Gravenscale Girdle##137925
learn Gravenscale Girdle##194768 |goto Dalaran L/11 66.37,81.42
step
collect 300 Stormscale##124115
|tip Refer to the Stormscale farming guide to accomplish this.
|tip You can also buy these materials from the Auction House.
|only if skill("Legion Leatherworking") < 100
step
collect 50 Blood of Sargeras##124124
|tip These come from gathering professions.
|tip You can also get these from World Quests and Dungeon Bosses.
|only if skill("Legion Leatherworking") < 100
step
Open Your Leatherworking Crafting Panel:
_<Create 25 Gravenscale Girdle>_
Reach Level 100 Legion Leatherworking |skill Legion Leatherworking,100
step
_Congratulations!_
You Reached Level 100 Legion Leatherworking Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Leatherworking\\Quest Guides\\Legion Leatherworking Quest Line",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the Legion Leatherworking quest line.",
startlevel=10.0,
condition_end=function() return completedq(40214) end,
condition_suggested=function() return skill('Legion Leatherworking') > 0 and level >= 10 and not completedq(40214) end,
},[[
step
talk Namha Moonwater##93523
|tip Inside the building.
accept Skin Deep##39958 |goto Dalaran L/10 35.06,29.40
step
collect 20 Stonehide Leather##124113 |q 39958/1
|tip Use the Stonehide Leather farming guide to get these.
|tip Buy these from the Auction House in Orgrimmar.
|tip You can also trade a Blood of Sargeras to Illnea Bloodthorn in Dalaran for 10 Stonehide Leather.
step
collect 5 Stormscale##124115 |q 39958/2
|tip Use the "Stormscale" farming guide to gather these, if you have Skinning.
|tip You can also purchase them from the Auction House.
|tip You can also trade a Blood of Sargeras to Illnea Bloodthorn in Dalaran for 10 Stormscales.
step
talk Namha Moonwater##93523
|tip Inside the building.
turnin Skin Deep##39958 |goto 35.06,29.40
accept Over Your Head##40183 |goto 35.06,29.40
step
click Namha's Tanning Rack
_<Create Shaved Stonehide Pelts>_
collect 7 Shaved Stonehide Pelt##130869 |c |goto 35.30,28.47 |q 40183
step
click Namha's Tanning Rack
_<Create Tanned Stonehide Leather>_
collect 7 Tanned Stonehide Leather##130870 |c |goto 35.30,28.47 |q 40183
step
click Namha's Workbench
_<Create Stonehide Leather Linings>_
collect 2 Stonehide Leather Lining##130872 |c |goto 34.66,28.94 |q 40183
step
click Namha's Workbench
_<Create Stonehide Leather Strips>_
collect 10 Stonehide Leather Strip##130875 |c |goto 34.66,28.94 |q 40183
step
click Namha's Workbench
_<Create Rough Warhide Mask>_
collect Rough Warhide Mask##129975 |q 40183/1 |goto 34.66,28.94
step
talk Namha Moonwater##93523
|tip Inside the building.
turnin Over Your Head##40183 |goto 35.06,29.40
accept Adventuring Anxieties##40196 |goto 35.06,29.40
accept Leather Lady##40177 |goto 35.06,29.40
accept Mail Men##40180 |goto 35.06,29.40
step
talk Diane Cannings##93522
|tip Inside the building.
turnin Leather Lady##40177 |goto 35.42,30.18
accept Stormheim Savagery##40179 |goto 35.42,30.18
accept Vestment Opportunity##40178 |goto 35.42,30.18
step
talk Thanid Glowergold##98931
|tip Inside the building.
turnin Mail Men##40180 |goto 34.34,28.71
accept Black Rook Bandit##40181 |goto 34.34,28.71
accept Too Good To Pass Up##40182 |goto 34.34,28.71
step
talk Mei Francis##92489
Tell her _"Namha asked me to talk to you about mount barding."_
Talk to Mei Francis |q 40196/1 |goto 57.62,42.12
step
talk Namha Moonwater##93523
|tip Inside the building.
turnin Adventuring Anxieties##40196 |goto 35.06,29.40
accept The Necessary Materials##40197 |goto 35.06,29.40
step
collect 100 Stonehide Leather##124113 |c |q 40197
|tip Use the Stonehide Leather farming guide to get these.
|tip Buy these from the Auction House in Orgrimmar.
|tip You can also trade a Blood of Sargeras to Illnea Bloodthorn in Dalaran for 10 Stonehide Leather.
step
talk Namha Moonwater##93523
|tip Inside the building.
turnin The Necessary Materials##40197 |goto 35.06,29.40
accept Dazed of the Past##41889 |goto 35.06,29.40
step
click Namaha's Tanning Mixture
|tip It's a glass bottle with red liquid inside of it sitting on the table.
collect 10 Namaha's Tanning Mixture##130891 |c |goto 34.77,28.94 |q 41889
step
click Namaha's Tanning Rack
_<Create 10 Tanned Stonehide Pelts>_
collect 100 Tanned Stonehide Leather##136539 |goto 35.31,28.49 |q 41889
step
click Namaha's Workbench
_<Create 5 Stonehide Leather Strips>_
collect 10 Stonehide Leather Strip##130875 |goto 34.66,28.94 |q 41889
step
click Namaha's Workbench
_<Create 1 Stonehide Caparison>_
collect Stonehide Caparison##130896 |goto 34.66,28.94 |q 41889
step
click Namaha's Workbench
_<Create 1 Stonehide Champron>_
collect Stonehide Champron##130894 |goto 34.66,28.94 |q 41889
step
click Namaha's Workbench
_<Create 1 Stonehide Crinet>_
collect Stonehide Crinet##130895 |goto 34.66,28.94 |q 41889
step
click Namaha's Workbench
_<Create 1 Stonehide Leather Barding>_
collect Stonehide Leather Barding##130887 |q 41889/1 |goto 34.66,28.94
step
talk Namha Moonwater##93523
|tip Inside the building.
turnin Dazed of the Past##41889 |goto 35.06,29.40
accept Battle Bonds##40200 |goto 35.06,29.40 |only Alliance
accept Battle Bonds##40241 |goto 35.06,29.40 |only Horde
step
talk Lio the Lioness##98725
|tip Inside the building.
Tell her _"Namha told me you had some new pet toy ideas?"_
Talk to Lio the Lioness |q 40200/1 |goto 59.45,39.55
|only Alliance
step
talk Serr'ah##115287
|tip Inside the building.
Tell her _"Namha told me you had some new pet toy ideas?"_
Talk to Serr'ah |q 40241/1 |goto 58.55,37.56
|only Horde
step
talk Namha Moonwater##93523
|tip Inside the building.
Return to Namha |q 40200/2 |goto 35.06,29.40
|only Alliance
step
talk Namha Moonwater##93523
|tip Inside the building.
Return to Namha |q 40241/2 |goto 35.06,29.40
|only Horde
step
talk Namha Moonwater##93523
|tip Inside the building.
turnin Battle Bonds##40200 |goto 35.06,29.40 |only Alliance
turnin Battle Bonds##40241 |goto 35.06,29.40 |only Horde
accept Playthings##40201 |goto 35.06,29.40
step
click Namaha's Tanning Mixture
|tip It's a glass bottle with red liquid inside of it sitting on the table.
collect 10 Namaha's Tanning Mixture##130891 |c |goto 34.77,28.94 |q 40201
step
click Namaha's Tanning Rack
_<Create Shaved Stonehide Pelts>_
collect 8 Shaved Stonehide Pelt##130869 |c |goto 35.29,28.47 |q 40201
step
click Namaha's Tanning Rack
_<Create 8 Tanned Stonehide Leather>_
collect 8 Tanned Stonehide Leather##130870 |c |goto 35.29,28.47 |q 40201
step
click Namaha's Workbench
_<Create 5 Stonehide Leather Strips>_
collect 10 Stonehide Leather Strip##130875 |c |goto 34.57,29.07 |q 40201
step
click Namaha's Workbench
_<Create 2 Stonehide Leather Linings>_
collect 2 Stonehide Leather Lining##130872 |c |goto 34.57,29.07 |q 40201
step
click Namaha's Workbench
_<Create 1 Stonehide Leather Bed>_
collect Stonehide Leather Bed##130090 |q 40201/1 |goto 34.57,29.07
step
talk Namha Moonwater##93523
|tip Inside the building.
turnin Playthings##40201 |goto 35.06,29.40
step
Follow the path |goto Val'sharah/0 40.36,59.11 < 30 |only if walking
Follow the path up |goto Val'sharah/0 38.50,57.35 < 20 |only if walking
Follow the path |goto Val'sharah/0 37.89,55.15 < 30 |only if walking
Follow the path up |goto Val'sharah/0 38.66,52.06 < 20 |only if walking
Run up the stairs |goto Val'sharah/0 39.41,51.33 < 15 |only if walking
Jump down here |goto Val'sharah/0 40.32,51.44 < 10 |only if walking
Follow the path |goto Val'sharah/0 40.97,51.39 < 15 |walk
kill Quartermaster Talastis##99402
collect Black Rook Hauberk##129974 |q 40182/1 |goto Val'sharah/0 40.99,50.67
step
click Black Rook Armor##245198
collect Black Rook Armor##129973 |q 40181/1 |count 1 |goto 41.27,51.02
step
click Black Rook Armor##245198
collect Black Rook Armor##129973 |q 40181/1 |count 2 |goto 41.16,50.69
step
click Black Rook Armor##245198
collect Black Rook Armor##129973 |q 40181/1 |count 3 |goto 41.01,50.55
step
click Black Rook Armor##245198
collect Black Rook Armor##129973 |q 40181/1 |count 4 |goto 40.79,50.70
step
click Black Rook Armor##245198
collect Black Rook Armor##129973 |q 40181/1 |count 5 |goto 40.72,51.05
step
Cross the bridge |goto Stormheim/0 40.09,62.68 < 20 |only if walking and alliance
Follow the path |goto Stormheim/0 42.85,59.15 < 20 |only if walking and alliance
Cross the bridge |goto Stormheim/0 44.15,60.48 < 20 |only if walking
Follow the path |goto Stormheim/0 44.64,63.30 < 20 |only if walking
Follow the path up |goto Stormheim/0 46.85,65.59 < 20 |only if walking
Climb on top of the rock |goto Stormheim/0 46.48,67.81 <20 |only if walking
clicknpc Grapple Point##110334
|tip It's on top of the wall nearby.
Grapple onto the Wall |goto Stormheim/0 45.86,67.84 < 7 |noway |c |q 40179
stickystart "Vrykul_Leather_Bindings_Leatherworking"
step
kill Jann Harnelor##105216
|tip Inside the building.
collect Hideshaper's Vestment##129971 |q 40178/1 |goto 45.62,67.19
step
label "Vrykul_Leather_Bindings_Leatherworking"
Kill enemies around this area
collect 7 Vrykul Leather Binding##129972 |q 40179/1 |goto 44.72,66.86
step
talk Diane Cannings##93522
|tip Inside the building.
turnin Vestment Opportunity##40178 |goto Dalaran L/10 35.44,30.29
turnin Stormheim Savagery##40179 |goto Dalaran L/10 35.44,30.29
step
talk Thanid Glowergold##98931
|tip Inside the building.
turnin Black Rook Bandit##40181 |goto 34.39,28.63
turnin Too Good To Pass Up##40182 |goto 34.39,28.63
step
talk Namha Moonwater##93523
|tip Inside the building.
accept From Head to Toe##40176 |goto 35.05,29.40
step
click Namaha's Tanning Mixture
|tip It's a glass bottle with red liquid inside of it sitting on the table.
collect 10 Namaha's Tanning Mixture##130891 |c |goto 34.77,28.94 |q 40176
step
click Namaha's Tanning Rack
_<Create 5 Shaved Stonehide Pelts>_
collect 5 Shaved Stonehide Pelt##130869 |c |goto 35.31,28.47 |q 40176
step
click Namaha's Tanning Rack
_<Create 5 Tanned Stonehide Leather>_
collect 5 Tanned Stonehide Leather##130870 |c |goto 35.31,28.47 |q 40176
step
click Namaha's Workbench
_<Create 1 Stonehide Boot Exterior>_
collect Stonehide Boot Exterior##130873 |c |goto 34.66,28.91 |q 40176
step
click Namaha's Workbench
_<Create 2 Stonehide Leather Linings>_
collect 2 Stonehide Leather Lining##130872 |c |goto 34.66,28.91 |q 40176
step
click Namaha's Workbench
_<Create 1 Sturdy Stonehide Boots>_
collect Sturdy Stonehide Boots##129964 |q 40176/1 |goto 34.66,28.91
step
talk Namha Moonwater##93523
|tip Inside the building.
turnin From Head to Toe##40176 |goto 35.05,29.40
step
talk Diane Cannings##93522
|tip Inside the building.
accept Tauren Tanning##40184 |goto 35.44,30.29
step
talk Thanid Glowergold##98931
accept Links in the Chain##40187 |goto 34.28,28.67
step
talk Celea##98964
turnin Links in the Chain##40187 |goto Azsuna/0 47.50,44.17
accept Naga Know-How##40189 |goto Azsuna/0 47.50,44.17
accept Best Served Cold##40188 |goto Azsuna/0 47.50,44.17
stickystart "Naga_Shoulderguards_Leatherworking"
step
Follow the road |goto 48.10,43.21 < 20 |only if walking
Cross the bridge |goto 50.36,43.65 < 20 |only if walking
Follow the path |goto 52.76,44.71 < 20 |only if walking
Cross the bridge |goto 55.97,40.83 < 20 |only if walking
kill Ranaris##99087 |q 40188/1 |goto 57.51,40.25
|tip Inside the building.
step
label "Naga_Shoulderguards_Leatherworking"
Kill enemies around this area
|tip Hatecoil Harpooners will not drop the quest items.
collect 7 Naga Shoulderguard##129980 |q 40189/1 |goto 54.37,42.71
step
Follow the path |goto 53.98,44.43 < 30 |only if walking
Cross the bridge |goto 51.42,44.07 < 20 |only if walking
Follow the path |goto 48.66,42.85 < 20 |only if walking
talk Celea##98964
turnin Naga Know-How##40189 |goto 47.50,44.17
turnin Best Served Cold##40188 |goto 47.50,44.17
step
talk Celea##98964
accept A Daring Rescue##40195 |goto 47.50,44.17
accept Reclaimed Cargo##40194 |goto 47.50,44.17
step
Run up the rocks here |goto 53.51,57.87 < 20 |only if walking
click Crates of Mail Armor
|tip They look like brown wooden boxes on the ground inside this cave.
collect 5 Mail Armor Shipment##130072 |q 40194/1 |goto Azsuna/18 73.92,79.80
step
talk Taldranis##99635
Deliver the Armor to Taldranis |q 40195/1 |goto 82.66,85.29
step
talk Taldranis##99635
turnin A Daring Rescue##40195 |goto 82.66,85.29
accept Testing the Metal##40327 |goto 82.66,85.29
step
talk Taldranis##99635
Tell him _"I'm ready, Taldranis. Let's go."_
Talk to Taldranis |q 40327/1 |goto 82.66,85.29
step
Escort Taldranis to Safety |q 40327/2 |goto Azsuna/0 52.61,59.61
step
talk Celea##98964
turnin Testing the Metal##40327 |goto 47.49,44.17
turnin Reclaimed Cargo##40194 |goto 47.49,44.17
step
Cross the bridge |goto Thunder Totem/0 41.83,64.64 < 15 |only if walking
talk Hrul Sharphoof##98948
turnin Tauren Tanning##40184 |goto Thunder Totem/0 36.68,79.44
accept Drogbar Durability##40186 |goto Thunder Totem/0 36.68,79.44
accept Shoulder the Burden##40185 |goto Thunder Totem/0 36.68,79.44
stickystart "Slay_Drogbars_In_Whitewater_Wash_Leatherworking"
step
Follow the path |goto Thunder Totem/0 42.37,62.48 < 30 |only if walking
Follow the path down |goto Highmountain/0 37.46,65.03 < 20 |only if walking
Follow the path |goto Highmountain/20 63.89,59.43 < 15 |walk
Follow the path |goto Highmountain/20 67.16,43.85 < 15 |walk
Follow the path up |goto Highmountain/20 57.67,36.72 < 15 |walk
Follow the path up |goto Highmountain/20 47.71,53.32 < 15 |walk
Follow the path up |goto Highmountain/21 48.19,39.24 < 20 |walk
click Drogbar Stash##245199
collect Lohrumn's Shoulderguard##129976 |q 40185/1 |goto Highmountain/21 44.86,21.67
step
label "Slay_Drogbars_In_Whitewater_Wash_Leatherworking"
Kill Drogbar enemies around this area
Slay #15# Drogbars in Whitewater Wash |q 40186/1 |goto Highmountain/0 39.57,64.80
step
Cross the bridge |goto Thunder Totem/0 41.83,64.64 < 15 |only if walking
talk Hrul Sharphoof##98948
turnin Drogbar Durability##40186 |goto Thunder Totem/0 36.68,79.44
turnin Shoulder the Burden##40185 |goto Thunder Totem/0 36.68,79.44
accept Claw of the Land##40192 |goto Thunder Totem/0 36.68,79.44
accept Stamped Stories##40191 |goto Thunder Totem/0 36.68,79.44
step
click Caruk the Simple##245204
|tip Inside the tent.
Read Caruk the Simple |q 40191/1 |goto 36.77,81.97
step
click Revelation of Garhan##245203
|tip Inside the tent.
Read Revelation of Garhan |q 40191/2 |goto 36.48,82.36
step
click Leyota's Legacy##245201
|tip Inside the tent.
Read Leyota's Legacy |q 40191/3 |goto 36.18,82.02
step
talk Hrul Sharphoof##98948
turnin Stamped Stories##40191 |goto 36.68,79.44
step
kill Pinerock Stalker##99481+
|tip If you have Skinning, be sure to skin them.
|tip You can get more of the quest items from skinning them.
collect 100 Stalker Claw##130070 |q 40192/1 |goto Highmountain/0 40.59,50.82
step
Cross the bridge |goto Thunder Totem/0 42.01,64.19 < 15 |only if walking
talk Hrul Sharphoof##98948
turnin Claw of the Land##40192 |goto Thunder Totem/0 36.68,79.44
step
talk Diane Cannings##93522
|tip Inside the building.
accept Rats!##40198 |goto Dalaran L/10 35.41,30.31
step
talk Thanid Glowergold##98931
|tip Inside the building.
accept Leather Legwork##40199 |goto 34.28,28.65
step
talk Bragund Brightlink##96979
|tip Inside the building.
Ask him _"Do you happen to have an extra crowbar?"_
Watch the dialogue
Talk to Bragund Brightlink |q 40199/1 |goto 50.96,73.98
step
talk Imindril Spearsong##92184
|tip Inside the building.
Ask her _"Do you have any armor stands you could part with?"_
Watch the dialogue
Ask Imindril Spearsong About Armor Stands |q 40199/2 |goto 46.56,26.83
step
Run up the stairs |goto 40.78,48.42 < 10 |only if walking
Enter the building |goto 42.86,50.92 < 10 |walk
Run up the stairs |goto 44.24,50.75 < 10 |walk
talk Shandy Glossgleam##96967
|tip Upstairs on the balcony of the building.
Ask him _"Can you clean this dress for me, Shandy?"_
Ask Shandy Glossgleam to Clean the Dress |q 40199/3 |goto 42.93,48.90
step
talk Shandy Glossgleam##96967
|tip Upstairs on the balcony of the building.
Choose _"Pay the 2 gold."_
Pay Shandy Glossgleam 2 Gold |q 40199/4 |goto 42.93,48.90
step
talk Imindril Spearsong##92184
|tip Inside the building.
Ask her _"Here is your dress. Can I have the armor stands now?"_
Return the Dress to Imindril Spearsong |q 40199/5 |goto 46.56,26.83
step
talk Bragund Brightlink##96979
|tip Inside the building.
Deliver the Armor Stands to Bragund Brightlink |q 40199/6 |goto 50.96,73.98
step
Watch the dialogue
Aquire the Crowbar |q 40199/7 |goto 50.96,73.98
step
talk Thanid Glowergold##98931
|tip Inside the building.
turnin Leather Legwork##40199 |goto 34.28,28.65
step
kill Dirty Rat##99895+
|tip They look like brown rats all around in the Underbelly.
|tip Be careful, this area is sometimes a free-for-all PvP area.
collect 9 Leatherworking Pattern Scrap##130078 |n
Use the Leatherworking Pattern Scraps |use Leatherworking Pattern Scrap##130078
collect 3 Highmountain Leatherworking Pattern##130077 |q 40198/1 |goto Dalaran L/11 37.17,43.46
step
talk Diane Cannings##93522
|tip Inside the building.
turnin Rats!##40198 |goto Dalaran L/10 35.44,30.22
step
talk Diane Cannings##93522
|tip Inside the building.
accept The Final Lessons##40202 |goto Dalaran L/10 35.44,30.22
step
talk Thanid Glowergold##98931
|tip Inside the building.
accept A Debt Paid##40206 |goto 34.28,28.65
step
talk Celea##98964
turnin A Debt Paid##40206 |goto Azsuna/0 47.49,44.17
accept Scales of the Earth##40209 |goto Azsuna/0 47.49,44.17
accept Scales of the Sea##40208 |goto Azsuna/0 47.49,44.17
accept Scales of the Arcane##40207 |goto Azsuna/0 47.49,44.17
step
Enter the cave |goto 53.29,29.71 < 15 |walk
kill Axetail Basilisk Matriarch##99598
|tip She walks around in the cave.
collect Axetail Basilisk Matriarch Scales##130110 |q 40209/1 |goto 53.42,27.74
step
Leave the cave |goto 53.28,29.65 < 15 |walk
Follow the path |goto 50.81,29.71 < 30 |only if walking
talk Kharmeera##99420
Ask her _"I was wondering if you would be able to part with one of your scales?"_
Talk to Kharmeera |q 40207/3 |goto 47.25,26.35
step
Enter the cave |goto 48.04,24.53 < 30 |walk
talk Cedonu##93620
Ask him _"I was wondering if you would be able to part with one of your scales?"_
Talk to Cedonu |q 40207/2 |goto 48.32,23.79
step
Leave the cave |goto 48.04,24.53 < 30 |walk
Follow the path |goto 48.39,25.58 < 20 |only if walking
Follow the path |goto 50.32,26.83 < 20 |only if walking
Continue following the path |goto 50.91,22.43 < 20 |only if walking
Continue following the path |goto 51.56,16.43 < 20 |only if walking
Follow the path |goto 50.57,15.42 < 20 |only if walking
talk Agapanthus##90916
Ask him _"I was wondering if you would be able to part with one of your scales?"_
Watch the dialogue
Talk to Agapanthus |q 40207/4 |goto 48.63,16.51
collect Blue Dragon Scale##130104 |q 40207/1 |goto 48.63,16.51
step
_Enter the Eye of Azshara Dungeon:_
|tip Use the Group Finder to enter the dungeon.
kill Warlord Parjesh##91784
|tip Use the Eye of Azshara dungeon guide to accomplish this.
collect Warlord Parjesh's Hauberk##130106 |q 40208/1 |goto Eye of Azshara/1 54.39,68.18
step
kill Wrath of Azshara##96028 |q 40208/2 |goto Eye of Azshara/1 55.69,53.20
collect Recipe: Warhide Pants##137877 |n
|tip Save the Rank 3 Recipe for Warhide Pants.
step
talk Celea##98964
turnin Scales of the Earth##40209 |goto Azsuna/0 47.49,44.17
turnin Scales of the Sea##40208 |goto Azsuna/0 47.49,44.17
turnin Scales of the Arcane##40207 |goto Azsuna/0 47.49,44.17
accept Time Well Spent##40210 |goto Azsuna/0 47.49,44.17
step
Cross the bridge |goto Thunder Totem/0 42.01,64.19
talk Hrul Sharphoof##98948
turnin The Final Lessons##40202 |goto Thunder Totem/0 36.69,79.44
accept Respect for the Past##40205 |goto Thunder Totem/0 36.69,79.44
accept Evolution of the Past##40204 |goto Thunder Totem/0 36.69,79.44
accept Strength of the Past##40203 |goto Thunder Totem/0 36.69,79.44
step
Cross the bridge |goto 40.18,74.18 < 15 |only if walking
Follow the path up |goto 55.33,57.04 < 20 |only if walking
kill Coldscale Gazecrawler##108185+
|tip If you have Skinning, be sure to skin them.
|tip You can get more of the quest items from skinning them.
collect 5 Basilisk Hide##130100 |q 40204/1 |goto Highmountain/0 51.54,64.13
step
Follow the path |goto Thunder Totem/0 49.06,42.30 < 70 |only if walking
Cross the bridge |goto Highmountain/0 54.47,48.27 < 20 |only if walking
Cross the bridge |goto Highmountain/0 55.14,50.04 < 20 |only if walking
Follow the path up |goto Highmountain/0 56.65,53.40 < 20 |only if walking
Follow the path |goto Highmountain/0 56.72,54.44 < 20 |only if walking
Cross the bridge |goto Highmountain/0 56.48,57.17 < 20 |only if walking
Follow the path up |goto Highmountain/0 55.09,58.51 < 20 |only if walking
Follow the path up |goto Highmountain/0 53.03,55.52 < 20 |only if walking
Continue up the path |goto Highmountain/0 53.58,53.45 < 20 |only if walking
click Wisdom of Halewa##245254
Receive the Wisdom of Halewa |q 40205/2 |goto Highmountain/0 52.02,51.13
step
Follow the path down |goto 38.46,38.79 < 20 |only if walking
Continue following the path down |goto 40.39,36.94 < 20 |only if walking
Follow the path up |goto 43.79,32.22 < 20 |only if walking
Follow the path up |goto 44.44,32.45 < 20 |only if walking
Follow the path up |goto 44.86,33.92 < 20 |only if walking
Continue following the path up |goto 44.79,35.16 < 20 |only if walking
Continue following the path up |goto 42.67,38.24 < 20 |only if walking
Continue following the path up |goto 42.77,38.94 < 20 |only if walking
Continue following the path up |goto 43.44,38.82 < 20 |only if walking
Continue following the path up |goto 42.94,39.84 < 20 |only if walking
click Wisdom of Garuu##245287
Receive the Wisdom of Garuu |q 40205/3 |goto 41.04,43.15
step
Follow the path down |goto 37.46,65.03 < 20 |only if walking
Follow the path |goto Highmountain/20 63.89,59.43 < 15 |walk
Follow the path |goto Highmountain/20 67.16,43.85 < 15 |walk
Follow the path up |goto Highmountain/20 57.67,36.72 < 15 |walk
Follow the path up |goto Highmountain/20 47.71,53.32 < 15 |walk
click Wisdom of Torgrul##245274
Receive the Wisdom of Torgrul |q 40205/4 |goto Highmountain/20 41.80,87.85
step
Follow the path |goto Thunder Totem/0 52.09,49.42 < 30 |only if walking
Follow the path up |goto Thunder Totem/0 64.37,66.85 < 30 |only if walking
Follow the path |goto Highmountain/0 50.81,64.52 < 30 |only if walking
Follow the path up |goto Highmountain/0 47.96,69.00 < 15 |only if walking
Continue following the path up |goto Highmountain/0 49.07,69.28 < 15 |only if walking
Continue following the path up |goto Highmountain/0 48.35,70.78 < 20 |only if walking
Continue following the path up |goto Highmountain/0 48.64,74.88 < 20 |only if walking
Continue following the path up |goto Highmountain/0 51.29,73.07 < 20 |only if walking
Continue following the path up |goto Highmountain/0 50.90,77.12 < 20 |only if walking
Cross the bridge |goto Highmountain/0 49.86,79.66 < 15 |only if walking
Follow the path up |goto Highmountain/0 52.38,83.86 < 20 |only if walking
Cross the bridge |goto Highmountain/0 54.04,87.76 < 15 |only if walking
Follow the path |goto Highmountain/0 56.62,89.49 < 20 |only if walking
Follow the path up |goto Highmountain/0 57.82,93.12 < 20 |only if walking
click Wisdom of Lohfal##245241
Receive the Wisdom of Lohfal |q 40205/1 |goto Highmountain/0 58.04,95.70
step
click Scale of Deathwing##245230
collect Scale of Deathwing##130098 |q 40203/1 |goto Highmountain/29 42.38,62.93
step
Follow the path |goto Highmountain/30 52.90,65.01 < 20 |walk
Cross the bridge |goto Thunder Totem/0 42.01,64.19 < 15 |only if walking
talk Hrul Sharphoof##98948
turnin Respect for the Past##40205 |goto Thunder Totem/0 36.71,79.15
turnin Evolution of the Past##40204 |goto Thunder Totem/0 36.71,79.15
turnin Strength of the Past##40203 |goto Thunder Totem/0 36.71,79.15
accept Well Spent Time##40415 |goto Thunder Totem/0 36.71,79.15
step
Use the Recipe: Warhide Pants |use Recipe: Warhide Pants##137871
|tip You received this as a reward from the "Respect for the Past" quest.
Learn the Rank 2 Recipe for Warhide Pants |learn Warhide Pants##194706
step
Use the Recipe: Warhide Pants |use Recipe: Warhide Pants##137877
|tip The Wrath of Azshara boss in the Eye of Azshara dropped this when you killed him.
Learn the Rank 3 Recipe for Warhide Pants |learn Warhide Pants##194712
step
talk Namha Moonwater##93523
|tip Inside the building.
turnin Well Spent Time##40415 |goto Dalaran L/10 35.05,29.42
turnin Time Well Spent##40210 |goto Dalaran L/10 35.05,29.42
step
Reach Level 45 |ding 45
|tip Use the Leveling guides to accomplish this.
step
Unlock World Quests |complete completedq(43341)
|tip Use the "World Quests" dailies guide to accomplish this.
step
_Using the Suramar Questing Guide:_
|tip Use the Suramar questing guide to complete quests until you complete the quest titled "Masquerade".
|tip This is the quest when you unlock the action button ability to disguise yourself in Suramar City.
Complete the "Masquerade" Quest in Suramar |complete completedq(42079)
step
talk Namha Moonwater##93523
accept Demon Flesh##40211 |goto Dalaran L/10 35.05,29.42
step
Follow the path |goto Azsuna/0 66.99,26.52 < 50 |only if walking
Follow the path down |goto Azsuna/0 69.07,26.09 < 20 |only if walking
Follow the path up |goto Suramar/0 26.29,74.09 < 20 |only if walking
Enter the cave |goto Suramar/0 27.31,72.95 < 15 |walk
talk Stalriss Dawnrunner##98969
turnin Demon Flesh##40211 |goto Suramar/0 26.53,71.61
accept Hounds Abound##40213 |goto Suramar/0 26.53,71.61
accept Wrong End of the Knife##40212 |goto Suramar/0 26.53,71.61
step
Leave the cave |goto 27.11,72.41 < 15 |walk
Follow the path down |goto 28.29,73.12 < 20 |only if walking
Follow the path down |goto 30.03,72.68 < 30 |only if walking
Cross the bridge |goto 30.31,79.52 < 20 |only if walking
Jump down carefully here |goto 32.24,81.15 < 15 |only if walking
kill Felsoul Ravener##108314+
collect 5 Fel Hound Corpse##130129 |q 40213/1 |goto 32.75,76.98
step
Follow the path up |goto 35.01,76.98 < 20 |only if walking
Follow the path |goto 35.56,78.79 < 20 |only if walking
Cross the bridge |goto 31.66,81.39 < 20 |only if walking
Follow the path up |goto 30.03,78.58 < 20 |only if walking
Follow the path up |goto 29.30,71.88 < 20 |only if walking
Enter the cave |goto 27.31,72.95 < 15 |walk
talk Stalriss Dawnrunner##98969
turnin Hounds Abound##40213 |goto 26.53,71.61
step
Cross the bridge |goto 46.75,80.34 < 20 |only if walking
Follow the path |goto 45.57,76.45 < 20 |only if walking
Cross the bridge |goto 46.58,75.86 < 20 |only if walking
kill Tallian##99588 |q 40212/2 |goto 47.33,76.34
|tip Inside the building.
step
Follow the path |goto 47.71,75.71 < 20 |only if walking
kill Feorias##99585 |q 40212/1 |goto 49.15,77.15
|tip Kill the enemies around the area before attacking him.
step
Run down the stairs |goto 50.38,76.50 < 20 |only if walking
kill Syana##99589 |q 40212/3 |goto 50.78,76.77
step
Follow the path |goto Azsuna/0 66.99,26.52 < 50 |only if walking
Follow the path down |goto Azsuna/0 69.07,26.09 < 20 |only if walking
Follow the path up |goto Suramar/0 26.29,74.09 < 20 |only if walking
Enter the cave |goto Suramar/0 27.31,72.95 < 15 |walk
talk Stalriss Dawnrunner##98969
turnin Wrong End of the Knife##40212 |goto Suramar/0 26.53,71.61
accept Fel Tanning##40214 |goto Suramar/0 26.53,71.61
step
Open Your Leatherworking Crafting Panel:
_<Create 2 Fel Leather Cuffs>_
collect 2 Fel Leather Cuff##130937 |c |goto 26.53,71.61 |q 40214
step
Open Your Leatherworking Crafting Panel:
_<Create 5 Fel Leather Straps>_
collect 10 Fel Leather Strap##130880 |c |goto 26.53,71.61 |q 40214
step
Open Your Leatherworking Crafting Panel:
_<Create 1 Felhide Bracers>_
collect Felhide Bracer##130130 |q 40214/1 |goto 26.57,71.64
step
talk Stalriss Dawnrunner##98969
turnin Fel Tanning##40214 |goto 26.53,71.61
step
_Congratulations!_
You completed the Leatherworking questline.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Leatherworking\\Quest Guides\\Argus Leatherworking Quest Line",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the Argus Leatherworking quest line.",
startlevel=45.0,
condition_end=function() return completedq(48078) end,
condition_suggested=function() return skill('Legion Leatherworking') > 0 and level >= 45 and not completedq(48078) end,
},[[
step
talk Namha Moonwater##93523
|tip Inside the building.
Learn the Leatherworking Profession |complete skill("Legion Leatherworking")>=1 |goto Dalaran L/10 35.06,29.40
step
talk Enstraa##125349
accept Counterbalancing##48078 |goto Krokuun/2 38.85,73.63
step
collect 12 Fiendish Leather##151566 |future |q 48078
|tip Use the "Fiendish Leather" farming guide to accomplish this, if you have Skinner.
|tip You can also purchase them from the Auction House.
step
collect 12 Lightweave Cloth##151567 |future |q 48078
|tip Use the "Lightweave Cloth" farming guide to accomplish this.
|tip You can also purchase them from the Auction House.
step
Use Enstraa's Tanning Oil |use Enstraa's Tanning Oil##151880
Create #12# Purified Fiendish Leather |q 48078/1
step
talk Enstraa##125349
turnin Counterbalancing##48078 |goto Krokuun/2 39.0,74.3
step
_Congratulations!_
You completed the Argus Leatherworking questline.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Empyrium",{
author="support@zygorguides.com",
description="\nEmpyrium can be gathered from Krokuun.",
condition_end=function() return skill('Legion Mining') >= 50 end,
},[[
step
label "Start_Path"
map Krokuun/0
path loop off; ants curved; dist 20
path	59.69,61.63	58.57,57.77	58.09,54.90
path	60.47,53.83	61.68,49.79	61.62,46.21
path	62.70,44.86	64.21,41.74	64.72,38.52
path	67.08,36.65	69.20,34.09	71.48,34.17
click Empyrium Seam##272780+
click Empyrium Deposit##272768+
click Rich Empyrium Deposit##272778+
collect Empyrium##151564 |n
Follow the path until you reach the end |goto 71.48,34.17 |noway |c
step
map Krokuun/0
path loop off; ants curved; dist 20
path	71.13,35.38	65.91,37.60	64.27,40.95
path	62.87,44.47	60.54,42.99	59.25,38.16
path	60.83,34.83	61.50,31.51	61.49,29.55
path	60.07,31.46	59.28,34.25	58.90,37.71
path	57.05,37.72	53.84,35.33	51.33,33.83
path	49.32,35.26	48.18,38.82	47.04,41.50
path	46.12,44.59	45.08,47.85	42.87,55.27
path	42.32,60.15	40.67,66.54	36.59,70.89
path	39.81,70.77	42.39,74.66	44.71,71.86
path	47.54,68.02	49.10,68.93	51.63,70.30
path	51.72,67.52	52.57,64.76	55.67,61.81
path	57.97,61.39
click Empyrium Seam##272780+
click Empyrium Deposit##272768+
click Rich Empyrium Deposit##272778+
collect Empyrium##151564 |n
Follow the path until you reach the end |goto 57.97,61.39 |noway |c |next "Start_Path"
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Felslate",{
author="support@zygorguides.com",
description="\nFelslate can be gathered from Suramar.",
condition_end=function() return skill('Legion Mining') >= 50 end,
},[[
step
label "Start_Seams_Route"
Follow the path |goto Suramar/0 24.63,32.33 < 30 |walk
Follow the path |goto 24.92,35.02 < 30 |walk
Follow the path |goto 25.26,37.98 < 30 |walk
Follow the path |goto 25.50,40.80 < 30 |walk
Follow the path |goto 25.03,44.34 < 30 |walk
Follow the path |goto 25.67,46.85 < 30 |walk
Enter the cave |goto 24.33,50.87 < 20 |c
step
Check for Leystone or Felslate Seams |goto 24.63,52.66 < 20 |c
step
Leave the cave |goto 24.29,50.82 < 20 |walk
Follow the path up |goto 24.47,50.22 < 20 |walk
Follow the path up |goto 25.19,50.35 < 20 |walk
Follow the path |goto 24.68,52.67 < 30 |walk
Run up the hill |goto 25.63,54.17 < 30 |walk
Dismount and carefull follow the path down |goto 26.70,55.22 < 20 |walk
Enter the cave |goto 28.42,56.13 < 20 |c
step
Follow the path |goto 29.30,55.61 < 20 |walk
Follow the path |goto 30.22,56.07 < 20 |walk
Check for Leystone or Felslate Seams |goto 30.86,55.42 < 30 |c
step
Follow the path |goto 30.47,55.74 < 20 |walk
Leave the cave |goto 28.42,56.10 < 20 |walk
Follow the path up |goto 28.51,57.27 < 20 |walk
Follow the path up |goto 29.52,56.69 < 20 |walk
Follow the path up |goto 29.63,55.40 < 20 |walk
Follow the path up |goto 29.95,54.85 < 20 |walk
Follow the path up |goto 29.16,53.82 < 20 |walk
Follow the path |goto 30.97,53.04 < 30 |walk
Follow the path |goto 30.32,49.71 < 30 |walk
Enter the cave |goto 29.36,50.83 < 20 |c
step
Follow the path |goto 29.71,51.71 < 20 |walk
Check for Leystone or Felslate Seams |goto 29.32,53.27 < 30 |c
step
Follow the path |goto 29.71,51.71 < 20 |walk
Leave the cave |goto 29.36,50.83 < 20 |walk
Follow the path |goto 30.70,47.16 < 30 |walk
Follow the path |goto 32.03,42.43 < 30 |walk
Follow the path |goto 32.79,40.18 < 30 |walk
Follow the path up |goto 34.61,39.03 < 30 |walk
Follow the water |goto 37.65,36.97 < 30 |walk
Follow the path up |goto 39.10,33.36 < 30 |walk
Enter the cave |goto 40.39,29.33 < 20 |c
step
Follow the path |goto 40.09,28.80 < 20 |walk
Check for Leystone or Felslate Seams |goto 40.01,27.15 < 30 |c
step
Follow the path |goto 40.09,28.80 < 20 |walk
Leave the cave |goto 40.39,29.33 < 20 |walk
Follow the path |goto 38.63,32.60 < 30 |walk
Follow the path |goto 36.72,30.10 < 30 |walk
Follow the path |goto 36.50,26.35 < 30 |walk
Jump down and follow the path |goto 34.63,24.79 < 30 |walk
Jump down the small waterfall |goto 32.05,26.46 < 30 |walk
Enter the cave |goto 31.52,25.79 < 20 |c
step
Follow the path |goto 31.80,24.95 < 20 |walk
Check for Leystone or Felslate Seams |goto 33.07,24.58 < 30 |c
step
Follow the path |goto 32.55,24.86 < 20 |walk
Leave the cave |goto 31.52,25.79 < 20 |walk
Jump down the waterfall |goto 29.16,27.97 < 20 |walk
Follow the path |goto 27.46,28.21 < 30 |walk
Follow the path up |goto 26.21,29.55 < 30 |c |next "Start_Seams_Route"
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Leystone",{
author="support@zygorguides.com",
description="\nLeystone can be gathered from Suramar.",
condition_end=function() return skill('Legion Mining') >= 50 end,
},[[
step
label "Start_Seams_Route"
Follow the path |goto Suramar/0 24.63,32.33 < 30 |walk
Follow the path |goto 24.92,35.02 < 30 |walk
Follow the path |goto 25.26,37.98 < 30 |walk
Follow the path |goto 25.50,40.80 < 30 |walk
Follow the path |goto 25.03,44.34 < 30 |walk
Follow the path |goto 25.67,46.85 < 30 |walk
Enter the cave |goto 24.33,50.87 < 20 |c
step
Check for Leystone or Felslate Seams |goto 24.63,52.66 < 20 |c
step
Leave the cave |goto 24.29,50.82 < 20 |walk
Follow the path up |goto 24.47,50.22 < 20 |walk
Follow the path up |goto 25.19,50.35 < 20 |walk
Follow the path |goto 24.68,52.67 < 30 |walk
Run up the hill |goto 25.63,54.17 < 30 |walk
Dismount and carefull follow the path down |goto 26.70,55.22 < 20 |walk
Enter the cave |goto 28.42,56.13 < 20 |c
step
Follow the path |goto 29.30,55.61 < 20 |walk
Follow the path |goto 30.22,56.07 < 20 |walk
Check for Leystone or Felslate Seams |goto 30.86,55.42 < 30 |c
step
Follow the path |goto 30.47,55.74 < 20 |walk
Leave the cave |goto 28.42,56.10 < 20 |walk
Follow the path up |goto 28.51,57.27 < 20 |walk
Follow the path up |goto 29.52,56.69 < 20 |walk
Follow the path up |goto 29.63,55.40 < 20 |walk
Follow the path up |goto 29.95,54.85 < 20 |walk
Follow the path up |goto 29.16,53.82 < 20 |walk
Follow the path |goto 30.97,53.04 < 30 |walk
Follow the path |goto 30.32,49.71 < 30 |walk
Enter the cave |goto 29.36,50.83 < 20 |c
step
Follow the path |goto 29.71,51.71 < 20 |walk
Check for Leystone or Felslate Seams |goto 29.32,53.27 < 30 |c
step
Follow the path |goto 29.71,51.71 < 20 |walk
Leave the cave |goto 29.36,50.83 < 20 |walk
Follow the path |goto 30.70,47.16 < 30 |walk
Follow the path |goto 32.03,42.43 < 30 |walk
Follow the path |goto 32.79,40.18 < 30 |walk
Follow the path up |goto 34.61,39.03 < 30 |walk
Follow the water |goto 37.65,36.97 < 30 |walk
Follow the path up |goto 39.10,33.36 < 30 |walk
Enter the cave |goto 40.39,29.33 < 20 |c
step
Follow the path |goto 40.09,28.80 < 20 |walk
Check for Leystone or Felslate Seams |goto 40.01,27.15 < 30 |c
step
Follow the path |goto 40.09,28.80 < 20 |walk
Leave the cave |goto 40.39,29.33 < 20 |walk
Follow the path |goto 38.63,32.60 < 30 |walk
Follow the path |goto 36.72,30.10 < 30 |walk
Follow the path |goto 36.50,26.35 < 30 |walk
Jump down and follow the path |goto 34.63,24.79 < 30 |walk
Jump down the small waterfall |goto 32.05,26.46 < 30 |walk
Enter the cave |goto 31.52,25.79 < 20 |c
step
Follow the path |goto 31.80,24.95 < 20 |walk
Check for Leystone or Felslate Seams |goto 33.07,24.58 < 30 |c
step
Follow the path |goto 32.55,24.86 < 20 |walk
Leave the cave |goto 31.52,25.79 < 20 |walk
Jump down the waterfall |goto 29.16,27.97 < 20 |walk
Follow the path |goto 27.46,28.21 < 30 |walk
Follow the path up |goto 26.21,29.55 < 30 |c |next "Start_Seams_Route"
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Leveling Guides\\Legion Mining 1-100",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Legion Mining skill from 1-100.",
condition_end=function() return skill('Legion Mining') >= 100 end,
condition_suggested=function() return skill('Legion Mining') > 0 and skill('Legion Mining') < 100 end,
},[[
step
map Val'sharah/0
path	follow smart; loop on; ants curved; dist 20
path	55.74,56.76	54.98,53.52	53.82,50.33	51.50,50.94	49.04,53.18
path	47.20,54.90	44.81,58.33	42.84,59.05	40.95,58.71	39.00,58.35
path	37.22,58.36	34.20,54.81	32.10,56.40	31.81,59.48	33.68,61.81
path	35.73,62.31	37.16,64.34	38.03,65.36	39.31,64.67	40.07,62.55
path	42.03,63.65	42.90,64.59	43.51,63.91	44.47,63.50	44.97,64.11
path	47.08,65.90	47.28,67.56	48.36,68.94	50.04,70.56	48.31,71.48
path	47.71,72.38	46.81,72.89	46.81,76.90	49.12,78.34	49.31,80.39
path	49.67,83.57	50.60,84.56	51.82,88.65	52.22,87.49	53.19,88.54
path	54.64,88.29	56.37,89.53	58.03,89.16	58.13,86.50	59.72,86.38
path	63.64,89.41	64.92,88.49	66.51,87.67	66.73,84.38	65.28,83.15
path	64.45,82.25	63.30,83.00	62.00,82.29	60.89,80.01	59.34,79.01
path	61.10,76.27	63.36,75.12	64.24,73.67	64.69,74.48	65.99,76.79
path	66.83,75.38	66.83,73.63	66.43,72.56	66.63,70.44	66.53,68.16
path	65.89,66.89	63.11,65.99	60.87,64.61	59.26,64.27	57.76,64.16
path	56.07,61.60	56.10,58.30
Mine along the path
|tip Make sure you enable "Find Minerals" in the tracking menu on the mini map.
Train Legion Mining |skillmax Legion Mining,100
|tip You will learn this automatically after mining your first node.
step
map Val'sharah/0
path	follow smart; loop on; ants curved; dist 20
path	55.74,56.76	54.98,53.52	53.82,50.33	51.50,50.94	49.04,53.18
path	47.20,54.90	44.81,58.33	42.84,59.05	40.95,58.71	39.00,58.35
path	37.22,58.36	34.20,54.81	32.10,56.40	31.81,59.48	33.68,61.81
path	35.73,62.31	37.16,64.34	38.03,65.36	39.31,64.67	40.07,62.55
path	42.03,63.65	42.90,64.59	43.51,63.91	44.47,63.50	44.97,64.11
path	47.08,65.90	47.28,67.56	48.36,68.94	50.04,70.56	48.31,71.48
path	47.71,72.38	46.81,72.89	46.81,76.90	49.12,78.34	49.31,80.39
path	49.67,83.57	50.60,84.56	51.82,88.65	52.22,87.49	53.19,88.54
path	54.64,88.29	56.37,89.53	58.03,89.16	58.13,86.50	59.72,86.38
path	63.64,89.41	64.92,88.49	66.51,87.67	66.73,84.38	65.28,83.15
path	64.45,82.25	63.30,83.00	62.00,82.29	60.89,80.01	59.34,79.01
path	61.10,76.27	63.36,75.12	64.24,73.67	64.69,74.48	65.99,76.79
path	66.83,75.38	66.83,73.63	66.43,72.56	66.63,70.44	66.53,68.16
path	65.89,66.89	63.11,65.99	60.87,64.61	59.26,64.27	57.76,64.16
path	56.07,61.60	56.10,58.30
Mine along the path
|tip Make sure you enable "Find Minerals" in the tracking menu on the mini map.
Reach 85 Legion Mining |skill Legion Mining,85
step
label "Start_Seams_Route"
Follow the path |goto Suramar/0 24.63,32.33 < 30 |n |walk
Follow the path |goto Suramar/0 24.92,35.02 < 30 |n |walk
Follow the path |goto Suramar/0 25.26,37.98 < 30 |n |walk
Follow the path |goto Suramar/0 25.50,40.80 < 30 |n |walk
Follow the path |goto Suramar/0 25.03,44.34 < 30 |n |walk
Follow the path |goto Suramar/0 25.67,46.85 < 30 |n |walk
Enter the cave |goto Suramar/0 24.33,50.87 < 20 |c
|only if skill("Legion Mining") <= 95
step
Check for Leystone or Felslate Seams |goto 24.63,52.66 < 20 |c
|only if skill("Legion Mining") <= 95
step
Leave the cave |goto 24.29,50.82 < 20 |n |walk
Follow the path up |goto 24.47,50.22 < 20 |n |walk
Follow the path up |goto 25.19,50.35 < 20 |n |walk
Follow the path |goto 24.68,52.67 < 30 |n |walk
Run up the hill |goto 25.63,54.17 < 30 |n |walk
Dismount and carefull follow the path down |goto 26.70,55.22 < 20 |n |walk
Enter the cave |goto 28.42,56.13 < 20 |c
|only if skill("Legion Mining") <= 95
step
Follow the path |goto 29.30,55.61 < 20 |n |walk
Follow the path |goto 30.22,56.07 < 20 |n |walk
Check for Leystone or Felslate Seams |goto 30.86,55.42 < 30 |c
|only if skill("Legion Mining") <= 95
step
Follow the path |goto 30.47,55.74 < 20 |n |walk
Leave the cave |goto 28.42,56.10 < 20 |n |walk
Follow the path up |goto 28.51,57.27 < 20 |n |walk
Follow the path up |goto 29.52,56.69 < 20 |n |walk
Follow the path up |goto 29.63,55.40 < 20 |n |walk
Follow the path up |goto 29.95,54.85 < 20 |n |walk
Follow the path up |goto 29.16,53.82 < 20 |n |walk
Follow the path |goto 30.97,53.04 < 30 |n |walk
Follow the path |goto 30.32,49.71 < 30 |n |walk
Enter the cave |goto 29.36,50.83 < 20 |c
|only if skill("Legion Mining") <= 95
step
Follow the path |goto 29.71,51.71 < 20 |n |walk
Check for Leystone or Felslate Seams |goto 29.32,53.27 < 30 |c
|only if skill("Legion Mining") <= 95
step
Follow the path |goto 29.71,51.71 < 20 |n |walk
Leave the cave |goto 29.36,50.83 < 20 |n |walk
Follow the path |goto 30.70,47.16 < 30 |n |walk
Follow the path |goto 32.03,42.43 < 30 |n |walk
Follow the path |goto 32.79,40.18 < 30 |n |walk
Follow the path up |goto 34.61,39.03 < 30 |n |walk
Follow the water |goto 37.65,36.97 < 30 |n |walk
Follow the path up |goto 39.10,33.36 < 30 |n |walk
Enter the cave |goto 40.39,29.33 < 20 |c
|only if skill("Legion Mining") <= 95
step
Follow the path |goto 40.09,28.80 < 20 |n |walk
Check for Leystone or Felslate Seams |goto 40.01,27.15 < 30 |c
|only if skill("Legion Mining") <= 95
step
Follow the path |goto 40.09,28.80 < 20 |n |walk
Leave the cave |goto 40.39,29.33 < 20 |n |walk
Follow the path |goto 38.63,32.60 < 30 |n |walk
Follow the path |goto 36.72,30.10 < 30 |n |walk
Follow the path |goto 36.50,26.35 < 30 |n |walk
Jump down and follow the path |goto 34.63,24.79 < 30 |n |walk
Jump down the small waterfall |goto 32.05,26.46 < 30 |n |walk
Enter the cave |goto 31.52,25.79 < 20 |c
|only if skill("Legion Mining") <= 95
step
Follow the path |goto 31.80,24.95 < 20 |n |walk
Check for Leystone or Felslate Seams |goto 33.07,24.58 < 30 |c
|only if skill("Legion Mining") <= 95
step
Follow the path |goto 32.55,24.86 < 20 |n |walk
Leave the cave |goto 31.52,25.79 < 20 |n |walk
Jump down the waterfall |goto 29.16,27.97 < 20 |n |walk
Follow the path |goto 27.46,28.21 < 30 |n |walk
Follow the path up |goto 26.21,29.55 < 30 |c |next "Start_Seams_Route"
|only if skill("Legion Mining") <= 95
step
Reach 95 Legion Mining Skill |skill Legion Mining,95
step
You will need to complete World Quests to reach 100 Legion Mining skill
|tip Open your mini map and search for World Quests rewarding "Infernal Brimstone".
|tip They appear in Azsuna, Val'sharah, Highmountain, Stormheim and Suramar.
|tip Refer to the World Quests guides to accomplish this.
|tip Only one of these type of World Quests will appear every couple of days.
click Brimstone Destroyer Core##247965
Reach 100 Legion Mining Skill |skill Legion Mining,100
step
_Congratulations!_
You Reached 100 Legion Mining Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Quest Guides\\Legion Mining Quest Line",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the Legion Mining quest line.",
startlevel=10.0,
condition_end=function() return completedq(39830) end,
condition_suggested=function() return skill('Legion Mining') > 0 and level >= 10 and not completedq(39830) end,
},[[
step
talk Mama Diggs##93189
|tip Upstairs inside the building.
Learn the Mining Profession |complete skill("Legion Mining")>=1 |goto Dalaran L/10 46.06,26.67
step
map Val'sharah/0
path	follow smart; loop on; ants curved; dist 20
path	55.74,56.76	54.98,53.52	53.82,50.33
path	51.50,50.94	49.04,53.18	47.20,54.90
path	44.81,58.33	42.84,59.05	40.95,58.71
path	39.00,58.35	37.22,58.36	34.20,54.81
path	32.10,56.40	31.81,59.48	33.68,61.81
path	35.73,62.31	37.16,64.34	38.03,65.36
path	39.31,64.67	40.07,62.55	42.03,63.65
path	42.90,64.59	43.51,63.91	44.47,63.50
path	44.97,64.11	47.08,65.90	47.28,67.56
path	48.36,68.94	50.04,70.56	48.31,71.48
path	47.71,72.38	46.81,72.89	46.81,76.90
path	49.12,78.34	49.31,80.39	49.67,83.57
path	50.60,84.56	51.82,88.65	52.22,87.49
path	53.19,88.54	54.64,88.29	56.37,89.53
path	58.03,89.16	58.13,86.50	59.72,86.38
path	63.64,89.41	64.92,88.49	66.51,87.67
path	66.73,84.38	65.28,83.15	64.45,82.25
path	63.30,83.00	62.00,82.29	60.89,80.01
path	59.34,79.01	61.10,76.27	63.36,75.12
path	64.24,73.67	64.69,74.48	65.99,76.79
path	66.83,75.38	66.83,73.63	66.43,72.56
path	66.63,70.44	66.53,68.16	65.89,66.89
path	63.11,65.99	60.87,64.61	59.26,64.27
path	57.76,64.16	56.07,61.60	56.10,58.30
click Leystone Deposits##241726
click Felslate Deposits##241743
|tip Track them on your minimap with "Find Minerals".
|tip Felslate Deposits are rare spawns of Leystone Deposits.
accept Leystone Deposit Sample##38777
accept Felslate Deposit Sample##38795
|tip You will eventually automatically accept these quests after gathering.
step
talk Mama Diggs##93189
|tip Upstairs inside the building.
turnin Leystone Deposit Sample##38777 |goto Dalaran L/10 46.06,26.67
turnin Felslate Deposit Sample##38795 |goto Dalaran L/10 46.06,26.67
step
kill Infernal Brutalizer##93619+
|tip They're the big rock demon enemies.
|tip Loot and mine them.
accept Living Felslate Sample##38797 |goto Azsuna/0 42.55,44.25
|tip You will eventually automatically accept this quest after gathering.
step
Enter the cave |goto 48.54,23.63 < 30 |walk
Follow the path |goto 48.38,21.88 < 20 |walk
kill Burrowing Leyworm##106630+
|tip Loot and mine them.
accept Living Leystone Sample##38785 |goto 42.55,44.25
|tip You will eventually automatically accept this quest after gathering.
step
talk Mama Diggs##93189
|tip Upstairs inside the building.
turnin Living Leystone Sample##38785 |goto Dalaran L/10 46.06,26.67
turnin Living Felslate Sample##38797 |goto Dalaran L/10 46.06,26.67
step
Reach Level 45 |ding 45
|tip Use the Leveling guides to accomplish this.
step
Unlock World Quests |complete completedq(43341)
|tip Use the "World Quests" dailies guide to accomplish this.
step
click Leystone Seams##253280
click Felslate Seams##255344
|tip Use the "Leystone" or "Felslate" guides to accomplish this.
|tip Track them on your minimap with "Find Minerals".
|tip Felslate Seams are rare spawns of Leystone Seams.
accept Leystone Seam Sample##38784
accept Felslate Seam Sample##38796
|tip You will eventually automatically accept these quests after gathering.
step
talk Mama Diggs##93189
|tip Upstairs inside the building.
turnin Leystone Seam Sample##38784 |goto Dalaran L/10 46.06,26.67
turnin Felslate Seam Sample##38796 |goto Dalaran L/10 46.06,26.67
accept The Highmountain Tauren##38888 |goto Dalaran L/10 46.06,26.67
accept The Felsmiths##38901 |goto Dalaran L/10 46.06,26.67
step
Follow the path |goto Thunder Totem/0 50.81,45.57 < 30 |only if walking
Follow the path |goto Highmountain/0 50.83,64.38 < 30 |only if walking
Follow the path up |goto Highmountain/0 47.99,68.22 < 30 |only if walking
Follow the path up |goto Highmountain/0 48.10,69.01 < 20 |only if walking
Follow the path up |goto Highmountain/0 49.09,69.27 < 20 |only if walking
Follow the path up the mountain |goto Highmountain/0 48.27,70.64 < 20 |only if walking
Follow the path up |goto Highmountain/0 48.51,74.89 < 20 |only if walking
Follow the narrow path up |goto Highmountain/0 49.80,73.44 < 20 |only if walking
Continue following the path up |goto Highmountain/0 51.41,73.37 < 20 |only if walking
Follow the path up |goto Highmountain/0 50.76,76.11 < 20 |only if walking
Crossing the hanging bridge |goto Highmountain/0 49.89,79.69 < 20 |only if walking
Follow the path |goto Highmountain/0 51.89,83.50 < 20 |only if walking
Follow the path down |goto Highmountain/0 53.52,81.90 < 30 |only if walking
Follow the path |goto Highmountain/0 56.20,80.17 < 30 |only if walking
Follow the path down |goto Highmountain/0 56.21,81.79 < 20 |only if walking
Follow the path up |goto Highmountain/0 55.93,85.31 < 20 |only if walking
talk Poca Firemantle##98966
fpath Ironhorn Enclave |goto Highmountain/0 56.82,83.85
step
talk Ronos Ironhorn##93691
turnin The Highmountain Tauren##38888 |goto 55.09,84.05
accept Where Respect is Due##38786 |goto 55.09,84.05
step
Cross the bridge |goto Thunder Totem/0 51.53,38.18 < 20 |only if walking
Cross the bridge |goto Thunder Totem/0 58.91,14.66 < 20 |only if walking
kill Enraged Ambershard##94507+
|tip Loot and mine them.
Mine for Leystone #35# Times with Ronos' Pick |q 38786/1 |goto Highmountain/0 49.16,54.98
step
talk Ronos Ironhorn##93691
turnin Where Respect is Due##38786 |goto 55.09,84.05
accept The Legend of Rethu Ironhorn##38787 |goto 55.09,84.05
step
talk Ronos Ironhorn##93691
Tell him _"Tell me your story."_
Tell him _"What was he like?"_
Learn About Rethu Ironhorn |q 38787/1 |goto 55.09,84.05
step
talk Ronos Ironhorn##93691
Tell him _"Tell me about Rethu's Mining."_
Learn About Rethu's Mining |q 38787/2 |goto 55.09,84.05
step
talk Ronos Ironhorn##93691
Tell him _"What happened to Rethu?"_
Learn What Happened to Rethu |q 38787/3 |goto 55.09,84.05
step
talk Ronos Ironhorn##93691
turnin The Legend of Rethu Ironhorn##38787 |goto 55.09,84.05
step
Follow the path up |goto Suramar/0 32.91,48.26 < 20 |only if walking
Follow the path up |goto Suramar/0 32.17,49.68 < 30 |only if walking
Follow the path |goto Suramar/0 30.75,53.34 < 30 |only if walking
talk Felsmith Nal'ryssa##92264
|tip She walks around this small camp.
turnin The Felsmiths##38901 |goto Suramar/0 29.94,53.55
accept A Shred of Your Humanity##38798 |goto Suramar/0 29.94,53.55
step
talk Felsmith Nal'ryssa##92264
|tip She walks around this small camp.
Tell her _"I am ready. Drive the felslate shard into my shoulder."_
Tell her _"Yes. Hammer the felslate into my elbow."_
Tell her _"Ready. Imbue my wrist with felslate."_
Have Felsmith Nal'ryssa Imbue Your Body with Felslate #3# Times |q 38798/1 |goto 29.94,53.55
step
talk Felsmith Nal'ryssa##92264
|tip She walks around this small camp.
turnin A Shred of Your Humanity##38798 |goto 29.94,53.55
accept Nal'ryssa's Sisters##38799 |goto 29.94,53.55
step
_Enter the Darkheart Thicket Dungeon:_
|tip Use the Group Finder to enter the dungeon.
|tip Use the Darkheart Thicket dungeon guide to accomplish this.
kill Shade of Xavius##101403 |q 38799/2
collect Lyrelle's Signet Ring##126940 |q 38799/1
step
talk Felsmith Nal'ryssa##92264
|tip She walks around this small camp.
turnin Nal'ryssa's Sisters##38799 |goto 29.94,53.55
step
map Val'sharah/0
path	follow smart; loop on; ants curved; dist 20
path	55.74,56.76	54.98,53.52	53.82,50.33
path	51.50,50.94	49.04,53.18	47.20,54.90
path	44.81,58.33	42.84,59.05	40.95,58.71
path	39.00,58.35	37.22,58.36	34.20,54.81
path	32.10,56.40	31.81,59.48	33.68,61.81
path	35.73,62.31	37.16,64.34	38.03,65.36
path	39.31,64.67	40.07,62.55	42.03,63.65
path	42.90,64.59	43.51,63.91	44.47,63.50
path	44.97,64.11	47.08,65.90	47.28,67.56
path	48.36,68.94	50.04,70.56	48.31,71.48
path	47.71,72.38	46.81,72.89	46.81,76.90
path	49.12,78.34	49.31,80.39	49.67,83.57
path	50.60,84.56	51.82,88.65	52.22,87.49
path	53.19,88.54	54.64,88.29	56.37,89.53
path	58.03,89.16	58.13,86.50	59.72,86.38
path	63.64,89.41	64.92,88.49	66.51,87.67
path	66.73,84.38	65.28,83.15	64.45,82.25
path	63.30,83.00	62.00,82.29	60.89,80.01
path	59.34,79.01	61.10,76.27	63.36,75.12
path	64.24,73.67	64.69,74.48	65.99,76.79
path	66.83,75.38	66.83,73.63	66.43,72.56
path	66.63,70.44	66.53,68.16	65.89,66.89
path	63.11,65.99	60.87,64.61	59.26,64.27
path	57.76,64.16	56.07,61.60	56.10,58.30
click Leystone Deposits##241726
click Felslate Deposits##241743
|tip Track them on your minimap with "Find Minerals".
|tip Felslate Deposits are rare spawns of Leystone Deposits.
accept Rethu's Journal##38789
accept Rin'thissa's Eye##38800
|tip You will eventually automatically accept these quests after gathering.
step
talk Ronos Ironhorn##93691
turnin Rethu's Journal##38789 |goto Highmountain/0 55.09,84.05
step
Follow the path up |goto Suramar/0 32.91,48.26 < 20 |only if walking
Follow the path up |goto Suramar/0 32.17,49.68 < 30 |only if walking
Follow the path |goto Suramar/0 30.75,53.34 < 30 |only if walking
talk Felsmith Nal'ryssa##92264
|tip She walks around this small camp.
turnin Rin'thissa's Eye##38800 |goto Suramar/0 29.94,53.55
step
kill Infernal Brutalizer##93619+
|tip They're the big rock demon enemies.
|tip Loot and mine them.
accept Ondri's Still-Beating Heart##38802 |goto Azsuna/0 42.55,44.25
|tip You will eventually automatically accept this quest after gathering.
step
Enter the cave |goto 48.54,23.63 < 30 |walk
Follow the path |goto 48.38,21.88 < 20 |walk
kill Burrowing Leyworm##106630+
|tip Loot and mine them.
accept Rethu's Horn##38791 |goto 42.55,44.25
|tip You will eventually automatically accept this quest after gathering.
step
talk Ronos Ironhorn##93691
turnin Rethu's Horn##38791 |goto Highmountain/0 55.09,84.05
step
Follow the path up |goto Suramar/0 32.91,48.26 < 20 |only if walking
Follow the path up |goto Suramar/0 32.17,49.68 < 30 |only if walking
Follow the path |goto Suramar/0 30.75,53.34 < 30 |only if walking
talk Felsmith Nal'ryssa##92264
|tip She walks around this small camp.
turnin Ondri's Still-Beating Heart##38802 |goto Suramar/0 29.94,53.55
step
click Leystone Seams##253280
click Felslate Seams##255344
|tip Use the "Leystone" or "Felslate" guides to accomplish this.
|tip Track them on your minimap with "Find Minerals".
|tip Felslate Seams are rare spawns of Leystone Seams.
accept Rethu's Pick##38790
accept Lyrelle's Right Arm##38801
|tip You will eventually automatically accept these quests after gathering.
step
talk Ronos Ironhorn##93691
turnin Rethu's Pick##38790 |goto Highmountain/0 55.09,84.05
step
Follow the path up |goto Suramar/0 32.91,48.26 < 20 |only if walking
Follow the path up |goto Suramar/0 32.17,49.68 < 30 |only if walking
Follow the path |goto Suramar/0 30.75,53.34 < 30 |only if walking
talk Felsmith Nal'ryssa##92264
|tip She walks around this small camp.
turnin Lyrelle's Right Arm##38801 |goto Suramar/0 29.94,53.55
step
map Val'sharah/0
path	follow smart; loop on; ants curved; dist 20
path	55.74,56.76	54.98,53.52	53.82,50.33
path	51.50,50.94	49.04,53.18	47.20,54.90
path	44.81,58.33	42.84,59.05	40.95,58.71
path	39.00,58.35	37.22,58.36	34.20,54.81
path	32.10,56.40	31.81,59.48	33.68,61.81
path	35.73,62.31	37.16,64.34	38.03,65.36
path	39.31,64.67	40.07,62.55	42.03,63.65
path	42.90,64.59	43.51,63.91	44.47,63.50
path	44.97,64.11	47.08,65.90	47.28,67.56
path	48.36,68.94	50.04,70.56	48.31,71.48
path	47.71,72.38	46.81,72.89	46.81,76.90
path	49.12,78.34	49.31,80.39	49.67,83.57
path	50.60,84.56	51.82,88.65	52.22,87.49
path	53.19,88.54	54.64,88.29	56.37,89.53
path	58.03,89.16	58.13,86.50	59.72,86.38
path	63.64,89.41	64.92,88.49	66.51,87.67
path	66.73,84.38	65.28,83.15	64.45,82.25
path	63.30,83.00	62.00,82.29	60.89,80.01
path	59.34,79.01	61.10,76.27	63.36,75.12
path	64.24,73.67	64.69,74.48	65.99,76.79
path	66.83,75.38	66.83,73.63	66.43,72.56
path	66.63,70.44	66.53,68.16	65.89,66.89
path	63.11,65.99	60.87,64.61	59.26,64.27
path	57.76,64.16	56.07,61.60	56.10,58.30
click Leystone Deposits##241726
click Felslate Deposits##241743
|tip Track them on your minimap with "Find Minerals".
|tip Felslate Deposits are rare spawns of Leystone Deposits.
accept Rethu's Lesson##38792
accept Rin'thissa##38803
|tip You will eventually automatically accept these quests after gathering.
|tip You will likely have to gather for a long time.
step
talk Ronos Ironhorn##93691
turnin Rethu's Lesson##38792 |goto Highmountain/0 55.09,84.05
step
Follow the path |goto Suramar/0 33.06,47.44 < 30 |only if walking
Follow the path |goto Suramar/0 32.03,42.43 < 30 |only if walking
Follow the path |goto Suramar/0 32.79,40.18 < 30 |only if walking
Follow the path up |goto Suramar/0 34.61,39.03 < 30 |only if walking
Follow the water |goto Suramar/0 37.65,36.97 < 30 |only if walking
Follow the path up |goto Suramar/0 39.10,33.36 < 30 |only if walking
Enter the cave |goto Suramar/0 40.39,29.33 < 20 |walk
click Rin'thissa's Summoning Stone##242410
|tip She hits hard, you may need help killing her.
kill Rin'thissa##93893 |q 38803/1 |goto Suramar/0 39.92,27.53
step
Follow the path up |goto 32.91,48.26 < 20 |only if walking
Follow the path up |goto 32.17,49.68 < 30 |only if walking
Follow the path |goto 30.75,53.34 < 30 |only if walking
talk Felsmith Nal'ryssa##92264
|tip She walks around this small camp.
turnin Rin'thissa##38803 |goto 29.94,53.55
step
Enter the cave |goto Azsuna/0 48.54,23.63 < 30 |walk
Follow the path |goto 48.38,21.88 < 20 |walk
kill Burrowing Leyworm##106630+
|tip Loot and mine them.
accept Rethu's Sacrifice##38794 |goto 42.55,44.25
|tip You will eventually automatically accept this quest after gathering.
|tip You will likely have to gather for a long time.
step
talk Ronos Ironhorn##93691
turnin Rethu's Sacrifice##38794 |goto Highmountain/0 55.09,84.05
step
kill Infernal Brutalizer##93619+
|tip They're the big rock demon enemies.
|tip Loot and mine them.
accept Ondri##38805 |goto Azsuna/0 42.55,44.25
|tip You will eventually automatically accept this quest after gathering.
|tip You will likely have to gather for a long time.
step
Follow the path down |goto Suramar/0 64.22,43.00 < 20 |only if walking
Follow the path |goto Suramar/0 64.41,47.82 < 30 |only if walking
Follow the path up |goto Suramar/0 65.18,52.25 < 30 |only if walking
Enter the cave |goto Suramar/0 64.21,54.30 < 20 |walk
click Ondri's Summoning Stone##242412
|tip She hits hard, you may need help killing her.
kill Ondri##93895 |q 38805/1 |goto Suramar/0 63.04,53.64 |indoors Crimson Thicket
step
Follow the path up |goto 32.91,48.26 < 20 |only if walking
Follow the path up |goto 32.17,49.68 < 30 |only if walking
Follow the path |goto 30.75,53.34 < 30 |only if walking
talk Felsmith Nal'ryssa##92264
|tip She walks around this small camp.
turnin Ondri##38805 |goto 29.94,53.55
step
click Leystone Seams##253280
click Felslate Seams##255344
|tip Use the "Leystone" or "Felslate" guides to accomplish this.
|tip Track them on your minimap with "Find Minerals".
|tip Felslate Seams are rare spawns of Leystone Seams.
accept Rethu's Experience##38793
accept Lyrelle##38804
|tip You will eventually automatically accept these quests after gathering.
|tip You will likely have to gather for a long time.
step
Follow the path |goto 34.93,51.14 < 30 |only if walking
Follow the path up |goto 34.07,54.39 < 20 |only if walking
Follow the path down |goto 32.80,58.75 < 20 |only if walking
Follow the path |goto 32.00,63.64 < 20 |only if walking
Follow the path |goto 33.44,65.99 < 30 |only if walking
Follow the path down |goto 31.56,68.59 < 30 |only if walking
Follow the path down |goto 30.11,74.97 < 30 |only if walking
Cross the bridge |goto 30.38,79.70 < 30 |only if walking
Follow the path down |goto 33.39,81.88 < 20 |only if walking
Follow the path down |goto 35.62,78.70 < 20 |only if walking
Follow the path |goto 33.27,74.24 < 30 |only if walking
Enter the cave |goto 34.49,73.87 < 20 |walk
Follow the path up |goto 36.02,73.00 < 20 |walk
Follow the path up |goto 36.88,72.40 < 20 |walk
Follow the path up |goto 36.84,71.55 < 20 |walk
click Lyrelle's Summoning Stone##242411
|tip She hits hard, you may need help killing her.
kill Lyrelle##93894 |q 38804/1 |goto 37.13,70.69
step
Follow the path up |goto 32.91,48.26 < 20 |only if walking
Follow the path up |goto 32.17,49.68 < 30 |only if walking
Follow the path |goto 30.75,53.34 < 30 |only if walking
talk Felsmith Nal'ryssa##92264
|tip She walks around this small camp.
turnin Lyrelle##38804 |goto 29.94,53.55
step
talk Ronos Ironhorn##93691
turnin Rethu's Experience##38793 |goto Highmountain/0 55.09,84.05
step
_Complete a "Brimstone Destroyer" World Quest:_
|tip Look on your world map in all of the Legion zones.
|tip The world quest will have a Mining icon.
|tip Use the "World Quests" dailies guide to accomplish this.
accept Infernal Brimstone Sample##38806
|tip You will automatically accept this quest after gathering.
step
talk Mama Diggs##93189
|tip Upstairs inside the building.
turnin Infernal Brimstone Sample##38806 |goto Dalaran L/10 46.06,26.67
accept Infernal Brimstone Analysis##38807 |goto Dalaran L/10 46.06,26.67
step
click Portal to Deepholm |goto Stormwind City/0 73.20,19.64 |n |only Alliance
click Portal to Deepholm |goto Orgrimmar/1 50.8,36.4 |n |only Horde
Travel to Deepholm |goto Deepholm/0 48.73,53.56 < 10000 |noway |c |q 38807
step
Enter the cave |goto Deepholm/0 58.33,25.58 < 30 |walk
Follow the path |goto Deepholm/0 60.45,26.28 < 30 |walk
talk Forinn Stoneheart##95893
collect Deepholm Mineral Analysis##128392 |q 38807/1 |goto Deepholm/0 60.90,26.99
step
Follow the path |goto Deepholm/0 60.60,26.23 < 20 |walk
Leave the cave |goto Deepholm/0 58.35,25.59 < 30 |walk
Enter the building |goto Deepholm/0 49.97,55.32 < 30 |walk
clicknpc Portal to Stormwind##103186 |goto Deepholm/0 48.53,53.84 |n |only Alliance
Travel to Stormwind City |goto Stormwind City/0 73.20,19.64 < 10000 |noway |c |q 38807 |only Alliance
clicknpc Portal to Orgrimmar##103191 |goto Deepholm/0 50.94,53.10 |n |only Horde
Travel to Orgrimmar |goto Orgrimmar/1 50.8,36.4 < 10000 |noway |c |q 38807 |only Horde
step
click Portal to Twilight Highlands |goto Stormwind City/0 75.35,16.43 |n |only Alliance
Travel to Twilight Highlands |goto Twilight Highlands/0 75.35,16.43 < 10000 |noway |c |q 38807 |only Alliance
click Portal to Twilight Highlands |goto Orgrimmar/1 50.2,39.4 |n |only Horde
Travel to Twilight Highlands |goto Twilight Highlands/0 73.57,53.53 < 10000 |noway |c |q 38807 |only Horde
step
talk Rhol Landers##95928
collect Obsidian Forest Analysis##128396 |q 38807/2 |goto Twilight Highlands/0 64.82,77.66
step
Enter the cave |goto Icecrown/0 56.92,57.34 < 30 |walk
Follow the path |goto Icecrown/0 55.34,58.54 < 30 |walk
talk Krul Rockhorn##95959
collect Saronite Composition Analysis##128405 |q 38807/3 |goto Icecrown/0 54.04,58.62
step
talk Mama Diggs##93189
|tip Upstairs inside the building.
turnin Infernal Brimstone Analysis##38807 |goto Dalaran L/10 46.06,26.67
accept Infernal Brimstone Theory##39790 |goto 46.09,26.65
step
Enter The Underbelly |goto 34.93,45.45 < 10 |walk
Follow the path |goto Dalaran L/11 31.77,43.33 < 10 |walk
talk Matthew Rabis##97360
turnin Infernal Brimstone Theory##39790 |goto 46.51,55.97
accept For Whom the Fel Tolls##39763 |goto 46.51,55.97
step
Follow the path |goto Suramar/0 33.03,53.06 < 25 |only if walking
Follow the path down |goto 32.54,58.93 < 15 |only if walking
kill Abhorrent Artificer##106339+
|tip You can find these all over Felsoul Hold.
collect 10 Fel Energy Core##128813 |q 39763/1 |goto 32.89,67.68
step
Enter The Underbelly |goto Dalaran L/10 34.93,45.45 < 10 |walk
Follow the path |goto Dalaran L/11 31.77,43.33 < 10 |walk
talk Matthew Rabis##97360
turnin For Whom the Fel Tolls##39763 |goto 46.51,55.97
accept The Brimstone's Secret##39817 |goto 46.51,55.97
step
talk Mama Diggs##93189
|tip Upstairs inside the building.
turnin The Brimstone's Secret##39817 |goto Dalaran L/10 46.06,26.67
accept Hellfire and Brimstone##39830 |goto 46.06,26.67
step
_Enter the Hellfire Citadel Raid:_
|tip Use the Hellfire Citadel raid guide to accomplish this.
kill Archimonde##91331
|tip You may need help from a group to do this.
collect The Infernal Codex##136389 |q 39830/1
step
talk Mama Diggs##93189
|tip Upstairs inside the building.
turnin Hellfire and Brimstone##39830 |goto Dalaran L/10 46.06,26.67
step
_Congratulations!_
You completed the Mining questline.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Quest Guides\\Argus Mining Quest Line",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the Argus Mining quest line.",
startlevel=45,
condition_end=function() return completedq(48039) end,
condition_suggested=function() return skill('Legion Mining') > 0 and level >= 45 and not completedq(48039) end,
},[[
step
talk Mama Diggs##93189
|tip Upstairs inside the building.
Learn the Mining Profession |complete skill("Legion Mining")>=1 |goto Dalaran L/10 46.06,26.67
step
map Krokuun/0
path	follow smart; loop on; ants curved; dist 20
path	60.29,62.13	60.33,58.77	60.60,55.77
path	60.84,53.31	61.56,50.24	61.67,46.89
path	61.10,44.41	59.99,42.34	58.89,40.71
path	59.04,38.44	57.33,37.83	55.56,37.63
path	54.08,35.90	52.73,34.42	51.11,33.93
path	49.58,35.06	48.83,36.81	48.10,39.04
path	47.01,41.65	46.40,44.16	45.69,46.45
path	44.50,49.93	44.17,52.56	45.27,55.51
path	46.35,57.38	48.07,61.05	50.61,63.67
path	52.12,64.90	54.80,62.36	56.82,61.36
path	58.98,61.82
click Empyrium Deposit##272768
|tip Track them on your minimap with "Find Minerals".
|tip Watch out for Garothi Obliterator while following this path.
collect Empyrium Deposit Chunk##151860 |n |use Empyrium Deposit Chunk##151860
accept Empyrium Deposit Chunk##48034
step
talk Khamir##125341
turnin Empyrium Deposit Chunk##48034 |goto Krokuun/2 42.78,77.69
step
map Krokuun/0
path	follow smart; loop on; ants curved; dist 20
path	60.29,62.13	60.33,58.77	60.60,55.77
path	60.84,53.31	61.56,50.24	61.67,46.89
path	61.10,44.41	59.99,42.34	58.89,40.71
path	59.04,38.44	57.33,37.83	55.56,37.63
path	54.08,35.90	52.73,34.42	51.11,33.93
path	49.58,35.06	48.83,36.81	48.10,39.04
path	47.01,41.65	46.40,44.16	45.69,46.45
path	44.50,49.93	44.17,52.56	45.27,55.51
path	46.35,57.38	48.07,61.05	50.61,63.67
path	52.12,64.90	54.80,62.36	56.82,61.36
path	58.98,61.82
click Empyrium Seam##272780
|tip Track them on your minimap with "Find Minerals".
|tip Watch out for Garothi Obliterator while following this path.
collect Empyrium Seam Chunk##151863 |n |use Empyrium Seam Chunk##151863
accept Empyrium Seam Chunk##48037
step
talk Khamir##125341
turnin Empyrium Seam Chunk##48037 |goto Krokuun/2 42.78,77.69
step
map Krokuun/0
path	follow smart; loop on; ants curved; dist 20
path	60.29,62.13	60.33,58.77	60.60,55.77
path	60.84,53.31	61.56,50.24	61.67,46.89
path	61.10,44.41	59.99,42.34	58.89,40.71
path	59.04,38.44	57.33,37.83	55.56,37.63
path	54.08,35.90	52.73,34.42	51.11,33.93
path	49.58,35.06	48.83,36.81	48.10,39.04
path	47.01,41.65	46.40,44.16	45.69,46.45
path	44.50,49.93	44.17,52.56	45.27,55.51
path	46.35,57.38	48.07,61.05	50.61,63.67
path	52.12,64.90	54.80,62.36	56.82,61.36
path	58.98,61.82
click Empyrium Deposit##272768
|tip Track them on your minimap with "Find Minerals".
|tip Watch out for Garothi Obliterator while following this path.
collect Empyrium Dust##151861 |n |use Empyrium Dust##151861
accept Angling For a Better Strike##48035
step
talk Khamir##125341
turnin Angling For a Better Strike##48035 |goto Krokuun/2 42.78,77.69
step
map Krokuun/0
path	follow smart; loop on; ants curved; dist 20
path	60.29,62.13	60.33,58.77	60.60,55.77
path	60.84,53.31	61.56,50.24	61.67,46.89
path	61.10,44.41	59.99,42.34	58.89,40.71
path	59.04,38.44	57.33,37.83	55.56,37.63
path	54.08,35.90	52.73,34.42	51.11,33.93
path	49.58,35.06	48.83,36.81	48.10,39.04
path	47.01,41.65	46.40,44.16	45.69,46.45
path	44.50,49.93	44.17,52.56	45.27,55.51
path	46.35,57.38	48.07,61.05	50.61,63.67
path	52.12,64.90	54.80,62.36	56.82,61.36
path	58.98,61.82
click Empyrium Seam##272780
|tip Track them on your minimap with "Find Minerals".
|tip Watch out for Garothi Obliterator while following this path.
collect Embedded Empyrium Ore##151864 |n |use Embedded Empyrium Ore##151864
accept Don't Just Pick At It##48038
step
talk Khamir##125341
turnin Don't Just Pick At It##48038 |goto Krokuun/2 42.78,77.69
step
map Krokuun/0
path	follow smart; loop on; ants curved; dist 20
path	60.29,62.13	60.33,58.77	60.60,55.77
path	60.84,53.31	61.56,50.24	61.67,46.89
path	61.10,44.41	59.99,42.34	58.89,40.71
path	59.04,38.44	57.33,37.83	55.56,37.63
path	54.08,35.90	52.73,34.42	51.11,33.93
path	49.58,35.06	48.83,36.81	48.10,39.04
path	47.01,41.65	46.40,44.16	45.69,46.45
path	44.50,49.93	44.17,52.56	45.27,55.51
path	46.35,57.38	48.07,61.05	50.61,63.67
path	52.12,64.90	54.80,62.36	56.82,61.36
path	58.98,61.82
click Empyrium Deposit##272768
|tip Track them on your minimap with "Find Minerals".
|tip Watch out for Garothi Obliterator while following this path.
collect Unusable Empyrium Core##151862 |n |use Unusable Empyrium Core##151862
accept Precision Perfected##48036
step
talk Khamir##125341
turnin Precision Perfected##48036 |goto Krokuun/2 42.78,77.69
step
map Krokuun/0
path	follow smart; loop on; ants curved; dist 20
path	60.29,62.13	60.33,58.77	60.60,55.77
path	60.84,53.31	61.56,50.24	61.67,46.89
path	61.10,44.41	59.99,42.34	58.89,40.71
path	59.04,38.44	57.33,37.83	55.56,37.63
path	54.08,35.90	52.73,34.42	51.11,33.93
path	49.58,35.06	48.83,36.81	48.10,39.04
path	47.01,41.65	46.40,44.16	45.69,46.45
path	44.50,49.93	44.17,52.56	45.27,55.51
path	46.35,57.38	48.07,61.05	50.61,63.67
path	52.12,64.90	54.80,62.36	56.82,61.36
path	58.98,61.82
click Empyrium Seam##272780
|tip Track them on your minimap with "Find Minerals".
|tip Watch out for Garothi Obliterator while following this path.
collect Empyrium Bits##151865 |n |use Empyrium Bits##151865
accept Balancing the Break##48039
step
talk Khamir##125341
turnin Balancing the Break##48039 |goto Krokuun/2 42.78,77.69
step
_Congratulations!_
You completed the Argus Mining questline.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Fiendish Leather",{
author="support@zygorguides.com",
description="\nFiendish Leather can be gathered from Krokuun in Argus.",
condition_end=function() return skill('Legion Skinning') >= 50 end,
},[[
step
Kill Duskcloak enemies around this area
|tip They are found all around the Petrified Forest.
collect Fiendish Leather##151566 |n |goto Krokuun/0 72.45,70.40
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Stonehide Leather",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Stonehide Leather for various Leatherworking recipes.",
startlevel=100.0,
},[[
step
Kill enemies around this area
|tip There are wolves and deer.
|tip Loot and skin them.
collect Stonehide Leather##124113 |n |goto Stormheim/0 49.36,56.91
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Stormscale",{
author="support@zygorguides.com",
description="\nStormscale can be gathered from Highmountain in the Broken Isles.",
condition_end=function() return skill('Legion Skinning') >= 50 end,
},[[
step
label "Start_Farming"
map Highmountain/0
path follow smart; loop off; ants curved
path	50.00,67.89	50.54,65.90	51.38,65.22	51.85,64.31	52.01,63.31
path	51.96,62.31	51.73,61.05	51.76,60.02	51.20,59.23	51.28,57.98
kill Coldscale Gazecrawler##108185+
collect Stormscale##124115 |n
'|goto 51.28,57.98 < 25 |noway |c
step
map Highmountain/0
path follow smart; loop off; ants curved
path	51.28,57.98	51.20,59.23	51.76,60.02	51.73,61.05	51.96,62.31
path	52.01,63.31	51.85,64.31	51.38,65.22	50.54,65.90	50.00,67.89
kill Coldscale Gazecrawler##108185+
collect Stormscale##124115 |n
'|goto 50.00,67.89 < 25 |noway |c |next "Start_Farming"
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Leveling Guides\\Legion Skinning 1-100",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Legion Skinning profession from 1-100.",
startlevel=10.0,
condition_end=function() return skill('Legion Skinning') >= 100 end,
condition_suggested=function() return skill('Legion Skinning') > 0 and skill('Legion Skinning') < 100 and level >= 10 end,
},[[
step
Load the "Legion Skinning Quest Line" Guide |confirm |next "Profession Guides\\Skinning\\Quest Guides\\Legion Skinning Quest Line"
|tip Click the line above to load the guide.
Complete the Legion Skinning Quest Line |q 40140 |future
step
Kill Direbeak enemies around this area
|tip Loot and skin them.
Reach 100 Legion Skinning |skill Legion Skinning,100
You can find more around here [77.00,83.11]
step
label "Congratulations_Skinning"
_Congratulations!_
You Reached 100 Legion Skinning Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Quest Guides\\Legion Skinning Quest Line",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the Legion Skinning quest line.",
startlevel=10.0,
condition_end=function() return completedq(40140) end,
condition_suggested=function() return skill('Legion Skinning') > 0 and level >= 10 and not completedq(40140) end,
},[[
step
talk Kondal Huntsworn##93541
|tip Inside the building.
Learn the Skinning Profession |skillmax Skinning,300 |goto Dalaran L/10 36.09,27.92
step
Reach Level 10 |ding 10
|tip You must be level 10 to start this questline.
|tip Use the leveling guides to accomplish this.
step
Kill Bloodgazer enemies around this area
|tip Loot and skin them.
accept Stonehide Leather Sample##40131 |goto Azsuna/0 35.63,7.06
|tip You will eventually automatically accept this quest after skinning.
step
Kill Bloodgazer enemies around this area
|tip Loot and skin them.
collect 10 Stonehide Leather##124113 |q 40131/1 |goto 35.63,7.06
step
talk Kondal Huntsworn##93541
|tip Inside the building.
turnin Stonehide Leather Sample##40131 |goto Dalaran L/10 36.06,27.96
step
Train Legion Skinning |skillmax Legion Skinning,100 |goto 36.06,27.96
|tip You will learn this after turning in the Stonehide Leather Sample quest.
step
talk Kondal Huntsworn##93541
|tip Inside the building.
accept In One Piece##40132 |goto 36.06,27.96
step
Kill Bloodgazer enemies around this area
|tip Loot and skin them.
collect 20 Undivided Hide##129888 |q 40132/1 |goto Azsuna/0 35.63,7.06
step
Kill Bloodgazer enemies around this area
|tip Loot and skin them.
collect Skinning Technique: Unbroken Claw##139894 |goto 35.63,7.06 |q 40132
step
use the Skinning Technique: Unbroken Claw##139894
Learn to Gather Unbroken Claws |learn Unbroken Claw##194171
step
Kill Pinerock enemies around this area
collect Skinning Technique: Unbroken Tooth##139893 |goto Highmountain/0 42.98,49.26 |q 40132
step
use the Skinning Technique: Unbroken Tooth##139893
Learn to Gather Unbroken Teeth |learn Unbroken Tooth##194170
You can find more here [39.47,49.34]
step
talk Kondal Huntsworn##93541
|tip Inside the building.
turnin In One Piece##40132 |goto Dalaran L/10 36.06,27.96
step
kill Rampaging Squallhunter##107469+
|tip Loot and skin them.
accept Stormscale Sample##40141 |goto Stormheim/0 51.43,31.45
|tip You will eventually automatically accept this quest after skinning.
step
kill Galecrested Eagle##97755+
kill Foothills Greatstag##97516+
|tip Loot and skin them.
accept Scrap of Pants##40133 |goto 49.74,34.70
|tip You will eventually automatically accept this quest after skinning.
step
talk Kondal Huntsworn##93541
|tip Inside the building.
turnin Stormscale Sample##40141 |goto Dalaran L/10 36.06,27.96
accept The Core of the Stormscale##40142 |goto Dalaran L/10 36.06,27.96
step
talk Hemet Nesingwary##94409
turnin Scrap of Pants##40133 |goto Highmountain/0 40.05,52.24
accept The Freedom to Roam##40135 |goto Highmountain/0 40.05,52.24
accept Highmountain Hides##40134 |goto Highmountain/0 40.05,52.24
step
kill Pinerock Prowler##94149+
kill Pinerock Stalker##99481+
|tip Loot and skin them.
collect 5 Saber Hide##129903 |q 40134/3 |goto 42.98,49.26
step
kill Pinerock Elderhorn##94151+
|tip Loot and skin them.
collect 5 Elderhorn Hide##129901 |q 40134/2 |goto 42.03,48.45
step
Enter the cave |goto 41.55,46.86 < 20 |walk
Cross the hanging bridge |goto Highmountain/16 42.20,82.32 < 20 |walk
Leave the cave |goto Highmountain/0 38.45,42.70 < 20 |walk
kill Bristlefur Bear##96146+
kill Insatiable Bristlefur##99571+
|tip Loot and skin them.
collect 5 Bear Hide##129900 |q 40134/1 |goto Highmountain/0 37.65,42.57
step
kill Rampaging Squallhunter##107469+
|tip Loot and skin them.
collect 20 Stormscale Spark##129894 |q 40142/1 |goto Stormheim/0 51.43,31.45
step
kill Foothills Greatstag##97516+
|tip Loot and skin them.
collect 5 Deer Hide##129905 |q 40135/3 |goto 49.74,34.70
step
kill Wild Plains Runehorn##107803+
|tip Loot and skin them.
collect 5 Musken Hide##140856 |q 40135/1 |goto 58.07,50.81
step
Cross the bridge |goto 56.73,51.16 < 20 |only if walking
kill Duskpelt Snarler##97091+
|tip Loot and skin them.
collect 5 Wolf Hide##129904 |q 40135/4 |goto 49.77,55.26
step
Follow the path down |goto 55.58,86.09 < 20 |only if walking
Continue down the path |goto 59.37,86.79 < 20 |only if walking
Follow the path |goto 59.81,88.49 < 30 |only if walking
Follow the path down |goto 63.19,90.17 < 20 |only if walking
Follow the water |goto 66.30,91.09 < 30 |only if walking
Follow the water |goto 72.67,92.12 < 40 |only if walking
kill Salthide Seal##108423+
|tip Loot and skin them.
collect 5 Lion Seal Hide##129906 |q 40135/2 |goto 77.57,87.12
step
talk Kondal Huntsworn##93541
|tip Inside the building.
turnin The Core of the Stormscale##40142 |goto Dalaran L/10 36.06,27.96
step
talk Hemet Nesingwary##94409
turnin The Freedom to Roam##40135 |goto Highmountain/0 40.05,52.24
turnin Highmountain Hides##40134 |goto Highmountain/0 40.05,52.24
step
kill Rampaging Squallhunter##107469+
|tip Loot and skin them.
accept Unfinished Treatise on the Properties of Stormscale##40143 |goto Stormheim/0 51.43,31.45
|tip You will eventually automatically accept this quest after skinning.
step
talk Kondal Huntsworn##93541
|tip Inside the building.
turnin Unfinished Treatise on the Properties of Stormscale##40143 |goto Dalaran L/10 36.06,27.96
accept Glielle##40144 |goto Dalaran L/10 36.06,27.96
accept Seymour and Agnes##40146 |goto Dalaran L/10 36.06,27.96
step
talk Glielle##98791
turnin Glielle##40144 |goto Azsuna/0 47.01,45.11
accept Under Down##40145 |goto Azsuna/0 47.01,45.11
step
Follow the road |goto 43.56,42.16 < 20 |only if walking
Follow the road |goto 40.79,36.70 < 20 |only if walking
kill Cliffwing Hippogryph##89386+
|tip They are on the ground and flying around this area.
|tip Loot and skin them.
collect 20 Hippogryph Scale##129908 |q 40145/1 |goto 41.75,34.72
step
Follow the road |goto 41.28,38.37 < 40 |only if walking
Follow the road |goto 43.04,41.60 < 20 |only if walking
talk Glielle##98791
turnin Under Down##40145 |goto 47.01,45.11
step
Follow the path |goto Stormheim/0 49.36,32.64 < 20 |only if walking
Follow the path up |goto Stormheim/0 48.26,30.08 < 15 |only if walking
Follow the path |goto Stormheim/0 47.61,32.16 < 20 |only if walking
Follow the path down |goto Stormheim/0 45.25,31.08 < 20 |only if walking
Continue down the path |goto Stormheim/0 44.74,29.43 < 20 |only if walking
Follow the path down |goto Stormheim/0 45.96,26.86 < 20 |only if walking
talk Seymour##98721
turnin Seymour and Agnes##40146 |goto Stormheim/0 45.75,25.68
accept Mother's Prized Knife##40147 |goto Stormheim/0 45.75,25.68
accept Red-Eyed Revenge##40148 |goto Stormheim/0 45.75,25.68
stickystart "Adult_Squallhunters_Skinning"
step
Follow the path up |goto 46.01,27.01 < 20 |only if walking
Follow the path up |goto 44.70,29.46 < 15 |only if walking
Follow the path up |goto 44.35,31.77 < 20 |only if walking
click Agnes' Skinning Knife##245171
collect Agnes' Skinning Knife##129910 |q 40147/1 |goto 46.15,33.74
step
click Grapply Point |goto 46.13,33.71 |n
|tip It's on on the rock next to you, to the southeast.
Grapple up onto the Rock |goto 46.51,34.13 < 5 |noway |c |q 40148
step
label "Adult_Squallhunters_Skinning"
kill 15 Adult Squallhunter##99223 |q 40148/1 |goto 46.19,36.35
|tip They are all around this area.
step
Follow the path |goto 49.36,32.64 < 20 |only if walking
Follow the path up |goto 48.26,30.08 < 15 |only if walking
Follow the path |goto 47.61,32.16 < 20 |only if walking
Follow the path down |goto 45.25,31.08 < 20 |only if walking
Continue down the path |goto 44.74,29.43 < 20 |only if walking
Follow the path down |goto 45.96,26.86 < 20 |only if walking
talk Seymour##98721
|tip Skip the travel lines for this step if you ended up close to him after killing the Adult Squallhunters.
turnin Mother's Prized Knife##40147 |goto 45.75,25.68
turnin Red-Eyed Revenge##40148 |goto 45.75,25.68
accept Drakol'nir Must Die##40149 |goto 45.75,25.68
step
Follow the path up |goto 45.95,26.87 < 20 |only if walking
Follow the path up |goto 46.02,28.17 < 15 |only if walking
Enter the cave |goto 47.37,28.63 < 20 |walk
kill Drakol'nir##99224
collect Scale of Drakol'nir##129911 |q 40149/1 |goto 46.83,29.85
step
Leave the cave |goto 47.41,28.50 < 20 |walk
Follow the path down |goto 45.93,27.95 < 20 |only if walking
Follow the path down |goto 45.97,26.95 < 20 |only if walking
talk Seymour##98721
turnin Drakol'nir Must Die##40149 |goto 45.74,25.68
step
Reach Level 45 |ding 45
|tip Use the Leveling guides to accomplish this.
step
Unlock World Quests |complete completedq(43341)
|tip Use the "World Quests" dailies guide to accomplish this.
step
_Complete a "Felhide" World Quest:_
|tip Look on your world map in all of the Legion zones.
|tip The world quest will have a Skinning icon.
|tip Use the "World Quests" dailies guide to accomplish this.
kill Felhide Gargantuan##103675
|tip Loot and skin it.
accept Felhide Sample##40156
|tip You will automatically accept this quest after skinning.
step
talk Kondal Huntsworn##93541
|tip Inside the building.
turnin Felhide Sample##40156 |goto Dalaran L/10 36.06,27.96
accept An Unseemly Task##40157 |goto Dalaran L/10 36.06,27.96
step
talk Ske'rit##98720
turnin An Unseemly Task##40157 |goto Suramar/0 30.64,33.38
accept Demons Be Different##40158 |goto Suramar/0 30.64,33.38
step
Enter the Darkheart Thicket Dungeon |goto Darkheart Thicket/0 65.7,46.1 < 10000 |c |q 40158
|tip Use the Group Finder to enter the dungeon.
step
kill Dresaron##99200
|tip Use the Darkheart Thicket dungeon guide to accomplish this.
collect Hide of Dresaron##136578 |q 40158/1 |goto Darkheart Thicket/0 65.7,46.1
step
talk Ske'rit##98720
turnin Demons Be Different##40158 |goto Suramar/0 30.64,33.38
step
talk Kondal Huntsworn##93541
|tip Inside the building.
accept The Pestilential Hide of Nythendra##40159 |goto Dalaran L/10 36.06,27.96
step
_Enter the Emerald Nightmare Raid:_
|tip Use the Group Finder to enter the raid.
kill Nythendra##103160
|tip She is the first boss, immediately upon entering the raid.
collect Pestilential Hide of Nythendra##140654 |q 40159/1
step
talk Kondal Huntsworn##93541
|tip Inside the building.
turnin The Pestilential Hide of Nythendra##40159 |goto Dalaran L/10 36.06,27.96
step
kill Coldscale Gazecrawler##108185+
|tip You will likely have to farm these for a long time.
accept Immaculate Stormscale##40151 |goto Highmountain/0 51.54,64.13
|tip You will eventually automatically accept this quest after skinning.
step
talk Kondal Huntsworn##93541
turnin Immaculate Stormscale##40151 |goto Dalaran L/10 36.06,27.96
accept Scales for Ske'rit##40152 |goto Dalaran L/10 36.06,27.96
step
talk Ske'rit##98720
accept Scales of Legend##40153 |goto Suramar/0 30.64,33.38
accept The Scales of Serpentrix##40154 |goto Suramar/0 30.64,33.38
step
_Enter the Eye of Azshara Dungeon:_
|tip Use the Group Finder to enter the dungeon.
kill Serpentrix##91808
collect Scales of Serpentrix##129921 |q 40154/1 |goto Eye of Azshara/1 56.3,35.0
step
kill Wrath of Azshara##96028 |q 40154/2 |goto Eye of Azshara/1 55.69,53.20
step
Walk into the swirling portal |goto Dread Wastes/0 38.75,35.04 |n
Enter the Heart of Fear Raid |goto Heart of Fear/1 34.29,87.20 < 10000 |noway |c |q 40153
|tip This is an old raid, so you can likely solo it.
step
kill Garalon##63191
|tip Use the Heart of Fear raid guide to accomplish this.
|tip Loot and skin him.
collect Scales of Garalon##129917 |q 40153/3 |goto Heart of Fear/2 66.35,14.90
step
Walk into the swirling portal |goto Deadwind Pass/0 46.75,74.43 |n
Enter the Karazhan Raid |goto Karazhan/1 58.76,76.11 < 10000 |noway |c |q 40153
|tip This is an old raid, so you can likely solo it.
step
kill Netherspite##15689
|tip Use the Karazhan raid guide to accomplish this.
|tip Loot and skin him.
collect Scale of Netherspite##129915 |q 40153/1
step
Follow the path |goto Dragonblight/0 59.59,51.14 < 30 |walk
|tip In the trench in the ground.
Walk into the swirling portal |goto Dragonblight/0 60.02,57.04 |n
Enter the Obsidian Sanctum Raid |goto The Obsidian Sanctum/0 63.55,50.11 < 10000 |noway |c |q 40153
|tip This is an old raid, so you can likely solo it.
step
kill Sartharion##28860
|tip Loot and skin him.
collect Scale of Sartharion##129916 |q 40153/2 |goto The Obsidian Sanctum/0 50.17,47.80
step
talk Ske'rit##98720
turnin Scales of Legend##40153 |goto Suramar/0 30.64,33.38
turnin The Scales of Serpentrix##40154 |goto Suramar/0 30.64,33.38
accept Ske'rit's Scale-Skinning Suggestions##40155 |goto Suramar/0 30.64,33.38
step
talk Kondal Huntsworn##93541
|tip Inside the building.
turnin Ske'rit's Scale-Skinning Suggestions##40155 |goto Dalaran L/10 36.06,27.96
step
kill Azsuna Lion Seal##89013+
|tip You will likely have to farm these for a long time.
accept Immaculate Stonehide Leather##40136 |goto Azsuna/0 32.93,18.07
|tip You will eventually automatically accept this quest after skinning.
step
talk Kondal Huntsworn##93541
|tip Inside the building.
turnin Immaculate Stonehide Leather##40136 |goto Dalaran L/10 36.06,27.96
accept Leather for Ske'rit##40137 |goto Dalaran L/10 36.06,27.96
step
talk Ske'rit##98720
turnin Leather for Ske'rit##40137 |goto Suramar/0 30.64,33.38
accept Hides of Legend##40138 |goto Suramar/0 30.64,33.38
accept The Hide of Fenryr##40139 |goto Suramar/0 30.64,33.38
step
Enter the Halls of Valor Dungeon |goto Halls of Valor/2 47.72,8.68 < 10000 |noway |c
|tip Use the Group Finder to enter the dungeon.
step
kill Fenryr##99868
|tip Use the Halls of Valor dungeon guide to accomplish this.
|tip Loot and skin him.
collect Hide of Fenryr##129920 |q 40139/1
step
kill Odyn##95676 |q 40139/2
|tip Use the Halls of Valor dungeon guide to accomplish this.
step
Walk into the swirling portal |goto Icecrown/0 75.01,21.81 |n
Enter the Trial of the Crusade Raid |goto Trial of the Crusader/1 63.96,52.47 < 10000 |noway |c |q 40138
|tip This is an old raid, so you can likely solo it.
step
kill Icehowl##34797
|tip Use the Trial of the Crusader raid guide to accomplish this.
|tip Loot and skin him.
collect Hide of Icehowl##129912 |q 40138/1
step
Follow the path down |goto Tol Barad/0 46.24,47.92 < 15
Walk into the swirling portal |goto Tol Barad/0 47.66,52.91 |n
|tip Tol Barad must be controled by your faction for you to be able to enter this raid.
Enter the Baradin Hold Raid |goto Baradin Hold/1 47.93,91.49 < 10000 |noway |c |q 40138
|tip This is an old raid, so you can likely solo it.
step
Follow the path |goto Baradin Hold/1 40.67,62.77 < 25 |walk
kill Occu'thar##52363
|tip Loot and skin him.
collect Hide of Occu'thar##129913 |q 40138/2 |goto Baradin Hold/1 10.41,63.08
step
talk Vereesa Windrunner##70360
accept The Storm Gathers##32681 |goto Townlong Steppes/0 49.93,69.04
|only Alliance
step
talk Vereesa Windrunner##70360
Speak with Vereesa |q 32681/1 |goto 49.93,69.04
|only Alliance
step
Discover the Isle of Thunder |q 32681/2
|tip She will fly you there automatically.
|only Alliance
step
talk Lady Jaina Proudmoore##67992
turnin The Storm Gathers##32681 |goto Isle of Thunder/0 34.60,89.44
|only Alliance
step
talk Scout Captain Elsia##70358
accept The Storm Gathers##32680 |goto Townlong Steppes/0 50.80,73.39
|only Horde
step
talk Scout Captain Elsia##70358
Speak with Elsia |q 32680/1 |goto 50.80,73.39
|only Horde
step
Discover the Isle of Thunder |q 32680/2
|tip She will fly you there automatically.
|only Horde
step
talk Lor'themar Theron##67990
turnin The Storm Gathers##32680 |goto Isle of Thunder/0 28.4,52.2
|only Horde
step
Follow the path |goto Isle of Thunder/0 50.98,47.05 < 30 |walk
Walk into the swirling portal |goto Isle of Thunder/0 52.09,45.01 |n
Teleport to the Throne of Thunder Raid Entrance |goto Isle of Thunder/0 62.85,32.36 < 50 |noway |c |q 40138
step
Walk into the swirling portal |goto 63.74,32.17 |n
Enter the Throne of Thunder Raid |goto Throne of Thunder/1 32.05,25.82 < 10000 |noway |c |q 40138
|tip This is an old raid, so you can likely solo it.
step
kill Horridon##68476
|tip Use the Throne of Thunder raid guide to accomplish this.
|tip Loot and skin him.
collect Hide of Horridon##129914 |q 40138/3 |goto Throne of Thunder/2 29.17,79.13
step
talk Ske'rit##98720
turnin The Hide of Fenryr##40139 |goto Suramar/0 30.64,33.38
turnin Hides of Legend##40138 |goto Suramar/0 30.64,33.38
accept Ske'rit's Leather Handbook##40140 |goto Suramar/0 30.64,33.38
step
talk Kondal Huntsworn##93541
|tip Inside the building.
turnin Ske'rit's Leather Handbook##40140 |goto Dalaran L/10 36.06,27.96
step
_Congratulations!_
You completed the Skinning questline.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Quest Guides\\Argus Skinning Quest Line",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the Argus Skinning quest line.",
startlevel=45.0,
condition_end=function() return completedq(48042) end,
condition_suggested=function() return skill('Legion Skinning') > 0 and level >= 45 and not completedq(48042) end,
},[[
step
talk Kondal Huntsworn##93541
|tip Inside the building.
Learn the Skinning Profession |complete skill("Legion Skinning")>=1 |goto Dalaran L/10 36.04,27.96
step
Follow the path |goto Krokuun/0 61.70,46.61 < 15 |only if walking
Follow the path |goto 62.84,44.72 < 15 |only if walking
Follow the path up |goto 65.46,37.95 < 20 |only if walking
Follow the path |goto 68.66,36.07 < 20 |only if walking
Kill Beast enemies around this area
|tip Loot and skin them.
collect Tainted Scraps##151866 |n |use Tainted Scraps##151866
accept Tainted Scraps##48040 |goto 70.2,34.8
step
talk Enstraa##125349
turnin Tainted Scraps##48040 |goto Krokuun/2 38.81,73.68
step
Follow the path |goto Krokuun/0 61.70,46.61 < 15 |only if walking
Follow the path |goto 62.84,44.72 < 15 |only if walking
Follow the path up |goto 65.46,37.95 < 20 |only if walking
Follow the path |goto 68.66,36.07 < 20 |only if walking
Kill Beast enemies around this area
|tip Loot and skin them.
collect Spoiled Fiendish Leather##151867 |n |use Spoiled Fiendish Leather##151867
accept A Larger Cut##48041 |goto Krokuun/0 70.2,34.8
step
talk Enstraa##125349
turnin A Larger Cut##48041 |goto Krokuun/2 38.81,73.68
step
Follow the path |goto Krokuun/0 61.70,46.61 < 15 |only if walking
Follow the path |goto 62.84,44.72 < 15 |only if walking
Follow the path up |goto 65.46,37.95 < 20 |only if walking
Follow the path |goto 68.66,36.07 < 20 |only if walking
Kill Beast enemies around this area
|tip Loot and skin them.
collect Corrupted Tooth##151868 |n |use Corrupted Tooth##151868
accept Order of Operations##48042 |goto Krokuun/0 70.2,34.8
step
talk Enstraa##125349
turnin Order of Operations##48042 |goto Krokuun/2 38.81,73.68
step
_Congratulations!_
You completed the Argus Skinning questline.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Leveling Guides\\Legion Tailoring 1-100",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Legion Tailoring skill from 1-100.",
condition_end=function() return skill('Legion Tailoring') >= 100 end,
condition_suggested=function() return skill('Legion Tailoring') > 0 and skill('Legion Tailoring') < 100 end,
},[[
step
talk Tanithria##93542
|tip Inside the building.
Train Legion Tailoring |skillmax Legion Tailoring,100 |goto Dalaran L/10 34.99,34.61
step
Load the "Legion Tailoring Quest Line" Guide |confirm |next "Profession Guides\\Tailoring\\Quest Guides\\Legion Tailoring Quest Line"
|tip Click the line above to load the guide.
|tip After completing the Legion Tailoring Quest Line, you should be around level 45 Legion Tailoring.
Complete the Legion Tailoring Quest Line |q 38974 |future
step
collect 600 Shal'dorei Silk##124437
|tip Use the "Shal'dorei Silk" farming guide to accomplish this.
|tip You can also purchase them from the Auction House.
If You Have "Blood of Sargeras", You Can Also Trade One For 10 Cloth Here [Dalaran L/10 44.79,31.91]
|only if skill("Legion Tailoring") < 40
step
talk Olisarra the Kind##93529
|tip Inside the building.
learn Silkweave Bandage##202853 |goto Dalaran L/10 35.96,37.53
step
Open Your Tailoring Crafting Panel:
_<Create 29 Silkweave Bandages>_
Reach Level 30 Legion Tailoring |skill Legion Tailoring,30
step
talk Lalla Brightweave##93524
|tip Inside the building.
buy Pattern: Silkweave Pantaloons##137956 |n
use the Pattern: Silkweave Pantaloons##137956
learn Silkweave Pantaloons Rank 2##185937 |goto Dalaran L/10 36.07,32.93
step
Open Your Tailoring Crafting Panel:
_<Create 10 Silkweave Pantaloons>_
Reach Level 40 Legion Tailoring |skill Legion Tailoring,40
step
talk Lalla Brightweave##93524
|tip Inside the building.
buy 10 Runic Catgut##127037 |goto Dalaran L/10 36.05,32.89
step
Open Your Tailoring Crafting Panel:
_<Create 10 Silkweave Bracers>_
Reach Level 50 Legion Tailoring |skill Legion Tailoring,50
step
collect 30 Arkhana##124440 |c
|tip You can get these by disenchanting Legion level Uncommon (green) armor and weapons.
|tip You can also purchase them from the Auction House.
If You Have "Blood of Sargeras", You Can Also Trade One For 10 Arkhana Here [Dalaran L/10 44.79,31.91]
|only if skill("Legion Tailoring") < 60
step
Open Your Tailoring Crafting Panel:
_<Create 10 Imbued Silkweaves>_
Reach Level 60 Legion Tailoring |skill Legion Tailoring,60
step
talk Olisarra the Kind##93529
|tip Inside the building.
learn Silkweave Splint##202854 |goto Dalaran L/10 35.96,37.53
step
collect 95 Leystone Ore##123918 |c
|tip Use the "Leystone Ore & Felslate (Mining Route)" guide to gather them, if you have Mining.
|tip You can also purchase them from the Auction House.
If You Have "Blood of Sargeras", You Can Also Trade One For 10 Ore Here [Dalaran L/10 44.79,31.91]
|only if skill("Legion Tailoring") < 90
step
Open Your Tailoring Crafting Panel:
_<Create 30 Silkweave Splints>_
Reach Level 90 Legion Tailoring |skill Legion Tailoring,90
step
talk Lalla Brightweave##93524
|tip Inside the building.
buy Pattern: Imbued Silkweave Bracers##137965 |n
use the Pattern: Imbued Silkweave Bracers##137965
learn Silkweave Bracers##185946 |goto Dalaran L/10 36.05,32.89
step
Load "The Nightfallen" Reputation Guide |confirm |next "Reputations Guides\\Legion Reputations\\The Nightfallen"
|tip Click the line above to load the guide.
Gain Exalted Reputation with The Nighfallen |complete rep("The Nighfallen")>=Exalted
step
talk First Arcanist Thalyssra##115736
buy Pattern: Imbued Silkweave Bracers##137973 |n
use the Pattern: Imbued Silkweave Bracers##137973
learn Imbued Silkweave Bracers##185954 |goto Suramar/0 36.49,45.83
step
collect 850 Shal'dorei Silk##124437
|tip Use the "Shal'dorei Silk" farming guide to accomplish this.
|tip You can also purchase them from the Auction House.
If You Have "Blood of Sargeras", You Can Also Trade One For 10 Cloth Here [Dalaran L/10 44.79,31.91]
|only if skill("Legion Tailoring") < 100
step
collect 30 Arkhana##124440 |c
|tip You can get these by disenchanting Legion level Uncommon (green) armor and weapons.
|tip You can also purchase them from the Auction House.
If You Have "Blood of Sargeras", You Can Also Trade One For 10 Arkhana Here [Dalaran L/10 44.79,31.91]
|only if skill("Legion Tailoring") < 100
step
collect 800 Stormscale##124115
|tip Use the "Stormscale" farming guide to accomplish this.
|tip You can also purchase them from the Auction House.
If You Have "Blood of Sargeras", You Can Also Trade One For 10 Scales Here [Dalaran L/10 44.79,31.91]
|only if skill("Legion Tailoring") < 100
step
talk Lalla Brightweave##93524
|tip Inside the building.
buy 10 Runic Catgut##127037 |goto Dalaran L/10 36.05,32.89
|only if skill("Legion Tailoring") < 100
step
Open Your Tailoring Crafting Panel:
_<Create 85 Imbued Silkweaves>_
collect 85 Imbued Silkweave##127004
|only if skill("Legion Tailoring") < 100
step
Open Your Tailoring Crafting Panel:
_<Create 10 Imbued Silkweave Bracers>_
Reach Level 100 Legion Tailoring |skill Legion Tailoring,100
step
_Congratulations!_
You Reached Level 100 Legion Tailoring Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Farming Guides\\Lightweave Cloth",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Lightweave Cloth for various Tailoring recipes.",
startlevel=10.0,
},[[
step
talk Khaela##125351
accept Looming Over Me##48074 |goto Krokuun/2 40.95,69.20
step
Follow the path |goto Eredath/0 56.95,28.38 < 25 |only if walking
Follow the path |goto 54.85,24.83 < 25 |only if walking
click Lightweave Loom##272745
collect Lightweave Loom##151874 |q 48074/1 |goto 53.81,23.29
step
talk Khaela##125351
turnin Looming Over Me##48074 |goto Eredath/4 42.23,62.07
step
label "loop"
kill Shadow-Touched Krokul##123301, Void-Addled Krokul##123302, Voidscarred Krokul##119749
It is important to note that you should pick up tailoring if you want to farm cloth, even if it is level 1
The drop rate will be incredibly low otherwise
map Eredath/0
path loop off
path	45.98,70.24	44.45,69.35	46.69,66.21
path	45.80,64.31	43.84,66.04	43.01,66.99
path	41.91,69.09
collect Lightweave Cloth##151567 |n
|tip Enter the buildings near the provided path.
Click here to continue |confirm
step
kill Shadow-Touched Krokul##123301, Void-Addled Krokul##123302, Voidscarred Krokul##119749
It is important to note that you should pick up tailoring if you want to farm cloth, even if it is level 1
The drop rate will be incredibly low otherwise
map Eredath/0
path loop off
path	41.91,69.09	43.01,66.99	43.84,66.04
path	45.80,64.31	46.69,66.21	44.45,69.35
path	45.98,70.24
collect Lightweave Cloth##151567 |n
Click here to continue |confirm |next "loop"
|tip Enter the buildings near the provided path.
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Farming Guides\\Shal'dorei Silk",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Shal'dorei Silk for various Tailoring recipes.",
startlevel=10.0,
},[[
step
map Highmountain/0
path	follow smart; loop off; ants curved; dist 20
path	52.31,36.51	52.74,35.07	52.50,34.00
path	51.76,34.16	50.53,33.75	49.71,35.51
path	48.89,36.53	46.51,37.97	45.37,38.88
kill Crawliac Hagfeather##95266+, Crawliac Deathscreamer##95265+, Skywhisker Loyalist##95277+
|tip Enchant your shoulders with the "Enchant Shoulder - Boon of the Scavenger" enchant.
|tip This will allow Scavenged Cloth packs to drop for you, which contain a good amount of Shal'dorei Silk.
|tip You can create the enchant, if you have Enchanting.
|tip You can also purchase it from the Auction House.
collect Shal'dorei Silk##124437 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Quest Guides\\Legion Tailoring Quest Line",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the Legion Tailoring quest line.",
startlevel=10.0,
condition_end=function() return completedq(38974) end,
condition_suggested=function() return skill('Legion Tailoring') > 0 and level >= 10 and not completedq(38974) end,
},[[
step
talk Tanithria##93542
|tip Inside the building.
accept Sew It Begins##38944 |goto Dalaran L/10 34.99,34.61
step
collect 10 Shal'dorei Silk##124437 |q 38944/1
|tip Use the "Shal'dorei Silk" farming guide to accomplish this.
|tip You can also purchase them from the Auction House.
step
talk Tanithria##93542
|tip Inside the building.
turnin Sew It Begins##38944 |goto 34.99,34.61
accept This Should Be Simple... Right?##38945 |goto 34.99,34.61
step
click Tanithria's Red Dye##242638
|tip It looks like a small glass bottle with red liquid in it on the shelf.
collect Tanithria's Red Dye##127291 |goto 35.39,34.96 |q 38945
step
click Tanithria's Purple Dye##242636
|tip It looks like a small glass bottle with purple liquid in it on the shelf.
collect Tanithria's Purple Dye##127289 |goto 35.56,34.90 |q 38945
step
click Tanithria's Thread##242634
|tip It looks like a spool of thread sitting on a box.
collect Tanithria's Thread##127287 |goto 35.75,34.74 |q 38945
step
click Tanithria's Silkweave##242633
|tip It looks like a green rectangle board leaning against the table.
collect 20 Tanithria's Silkweave##127286 |goto 35.39,33.81 |q 38945
step
click Tanithria's Finishing Table
_<Create 1 Handcrafted Silkweave Robe>_
|tip It will be under the "Training" section.
Craft a Silkweave Robe at Tanithria's Finishing Table |q 38945/5 |goto 35.13,33.86
step
talk Tanithria##93542
|tip Inside the building.
turnin This Should Be Simple... Right?##38945 |goto 35.00,34.57
accept Consult the Locals##38946 |goto 35.00,34.57
step
Follow the road |goto Azsuna/0 63.29,33.86 < 30 |only if walking
talk Lyndras##93967
|tip He walks around.
turnin Consult the Locals##38946 |goto Azsuna/0 59.99,34.49
accept Runic Catgut##38947 |goto Azsuna/0 59.99,34.49
accept Hard Times##38948 |goto Azsuna/0 59.99,34.49
step
Kill Hatecoil enemies around this area
|tip Avoid the Hatecoil Skrog giants that patrol around.
|tip They will not drop the quest item.
collect Hatecoil Wristwraps##127039 |q 38948/2 |goto 62.53,37.42
step
Follow the path up |goto 61.74,35.40 < 30 |only if walking
Follow the road |goto 62.98,34.32 < 30 |only if walking
Follow the road |goto 63.48,31.79 < 30 |only if walking
Follow the path |goto 64.00,26.60 < 30 |only if walking
Continue following the road |goto 60.25,20.58 < 30 |only if walking
Follow the path |goto 56.90,18.64 < 30 |only if walking
Kill enemies around this area
collect Stained Silken Robe##127038 |q 38948/1 |goto 55.73,17.29
step
Follow the path up |goto 54.76,16.44 < 30 |only if walking
Follow the road |goto 51.71,17.11 < 30 |only if walking
Continue following the road |goto 50.76,19.42 < 30 |only if walking
Follow the road |goto 50.35,24.62 < 30 |only if walking
Follow the path |goto 50.94,27.44 < 30 |only if walking
kill Llothien Prowler##90313+
collect 3 Runic Catgut##127037 |q 38947/1 |goto 53.81,28.52
step
Follow the path |goto 55.15,28.94 < 40 |only if walking
Follow the path up |goto 55.93,27.79 < 30 |only if walking
Follow the road |goto 57.89,27.39 < 30 |only if walking
Continue following the road |goto 58.66,31.13 < 30 |only if walking
talk Lyndras##93967
|tip He walks around.
turnin Runic Catgut##38947 |goto 60.07,34.85
turnin Hard Times##38948 |goto 60.07,34.90
accept So You Think You Can Sew##38949 |goto 60.07,34.90
step
click Lyndras' Runic Catgut##242657
|tip It looks like a spool of red thread on the table.
collect Lyndras' Runic Catgut##127343 |goto 60.05,34.64 |q 38949
step
click Lyndras' Finishing Table
_<Create 1 Rune-Threaded Silkweave Robe>_
collect Rune-Threaded Silkweave Robe##127344 |q 38949/1 |goto 60.04,34.66
step
click Lyndras' Finishing Table
_<Create 1 Rune-Threaded Silkweave Bracers>_
collect Rune-Threaded Silkweave Bracers##127345 |q 38949/2 |goto 60.04,34.66
step
talk Lyndras##93967
|tip He walks around.
turnin So You Think You Can Sew##38949 |goto 60.08,34.87
accept The Wayward Tailor##38950 |goto 60.08,34.87
step
talk Lalla Brightweave##93524
|tip Inside the building.
Tell her _"I need somebody summoned up to Dalaran. Can you help me?"_
Speak with Lalla Brightweave |q 38950/1 |goto Dalaran L/10 36.07,32.92
step
talk Tanithria##93542
|tip Inside the building.
turnin The Wayward Tailor##38950 |goto 35.00,34.59
step
talk Lyndras##93967
|tip Inside the building.
accept A Needle Need##38951 |goto 36.12,33.90
step
Follow the path |goto Val'sharah/0 54.83,75.14 < 30 |only if walking
Follow the path |goto Val'sharah/0 54.33,78.97 < 30 |only if walking
Kill enemies around this area
collect 150 Spritethorn##127042 |q 38951/1 |goto Val'sharah/0 53.66,82.22
step
talk Tanithria##93542
|tip Inside the building.
turnin A Needle Need##38951 |goto Dalaran L/10 35.00,34.59
accept Meticulous Precision##38952 |goto Dalaran L/10 35.00,34.59
step
talk Tiffany Cartier##93526
|tip Inside the building.
Tell her _"I was told you can sharpen these needles for me."_
Watch the dialogue
collect Sharpened Spritethorn##127043 |q 38952/1 |goto 40.27,34.68
step
talk Lyndras##93967
|tip Inside the building.
turnin Meticulous Precision##38952 |goto 36.13,33.94
accept Advanced Needlework##38953 |goto 36.13,33.94
step
talk Lalla Brightweave##93524
|tip Inside the building.
buy 2 Runic Catgut##127037 |n
collect 2 Runic Catgut##127037 |goto 36.07,32.93 |q 38953
step
click Tanithria's Sharpened Spritethorns##242686
|tip It looks like a small brown wooden crate on the floor.
collect Tanithria's Sharpened Spritethorn##127382 |goto 35.67,34.59 |q 38953
step
click Tanithria's Blue Dye##242637
|tip It looks like a small glass bottle with blue liquid in it on the shelf.
collect Tanithria's Blue Dye##127290 |goto 35.46,34.94 |q 38953
step
click Tanithria's Green Dye##242639
|tip It looks like a small glass bottle with green liquid in it on the shelf.
collect Tanithria's Green Dye##127292 |goto 35.30,34.99 |q 38953
step
collect 20 Shal'dorei Silk##124437 |q 38953
|tip Use the "Shal'dorei Silk" farming guide to accomplish this.
|tip You can also purchase them from the Auction House.
step
click Tanithria's Finishing Table
_<Create 1 Basic Silkweave Robe>_
collect Basic Silkweave Robe##127359 |goto 35.11,33.79 |q 38953
step
click Tanithria's Finishing Table
_<Create 1 Embroidered Silkweave Robe>_
collect Embroidered Silkweave Robe##127360 |q 38953/1 |goto 35.11,33.79
step
talk Lyndras##93967
|tip Inside the building.
turnin Advanced Needlework##38953 |goto 36.12,33.94
step
talk Tanithria##93542
|tip Inside the building.
accept Where's Lyndras?##38954 |goto 34.97,34.59
step
talk Raethan##97359
Tell him _"I want to hire a personal bodyguard."_
|tip This will cost 5 gold, but will prevent other players from attacking you, for 5 minutes, in this PvP area.
Click Here After Hiring a Bodyguard |confirm |goto Dalaran L/11 68.99,58.38 |q 38954
step
Follow the path down |goto 64.50,58.65 < 15 |walk
Run up the stairs |goto 59.30,76.35 < 15 |walk
Run down the stairs |goto 68.61,80.17 < 15 |walk
talk Lyndras##93967
Find Lyndras |q 38954/1 |goto Dalaran L/11 78.02,88.62
step
Run up the stairs |goto 73.02,82.95 < 15 |walk
Follow the path |goto 46.40,47.08 < 20 |walk
Follow the path |goto 34.58,43.57 < 15 |walk
Follow the path |goto 29.44,49.33 < 15 |walk
talk Lyndras##93967
|tip Inside the building.
turnin Where's Lyndras?##38954 |goto Dalaran L/10 36.12,33.94
accept Sew Far, Sew Good##38955 |goto Dalaran L/10 36.12,33.94
step
talk Lalla Brightweave##93524
|tip Inside the building.
buy 1 Runic Catgut##127037 |n
collect Runic Catgut##127037 |goto 36.07,32.93 |q 38955
step
talk Lalla Brightweave##93524
|tip Inside the building.
buy 1 Sharp Spritethorn##127681 |n
collect Sharp Spritethorn##127681 |goto 36.07,32.93 |q 38955
step
click Tanithria's Blue Dye##242637
|tip It looks like a small glass bottle with blue liquid in it on the shelf.
collect Tanithria's Blue Dye##127290 |goto 35.46,34.94 |q 38955
step
collect 20 Shal'dorei Silk##124437 |q 38955
|tip Use the "Shal'dorei Silk" farming guide to accomplish this.
|tip You can also purchase them from the Auction House.
step
click Tanithria's Finishing Table
_<Create 1 Handcrafted Silkweave Bag>_
collect Handcrafted Silkweave Bag##127361 |q 38955/1 |goto 35.11,33.79
step
talk Lyndras##93967
|tip Inside the building.
turnin Sew Far, Sew Good##38955 |goto 36.13,33.94
step
talk Tanithria##93542
|tip Inside the building.
accept Where's Lyndras Again?##38956 |goto 35.01,34.59
step
talk Lyndras##93967
|tip Upstairs inside the building.
Find Lyndras Again |q 38956/1 |goto 49.99,39.46
step
talk Lyndras##93967
|tip Inside the building.
turnin Where's Lyndras Again?##38956 |goto 36.12,33.92
accept Taking Inspiration##38957 |goto 36.12,33.92
step
talk Ainderu Summerleaf##93525
accept The Right Color##38958 |goto 36.48,34.36
step
Follow the path down |goto Stormheim/0 60.46,52.05 < 20 |only if walking
Jump down here |goto Stormheim/0 63.99,53.10 < 20 |only if walking
Kill Bonespeaker enemies around this area
|tip You can find more to the southeast.
collect 6 Runed Breeches##127044 |q 38957/1 |goto Stormheim/0 64.42,51.44
step
Follow the path down |goto 63.33,48.89 < 30 |only if walking
Carefully jump down here |goto 62.08,48.02 < 20 |only if walking
Follow the path down |goto 61.16,48.33 < 30 |only if walking
Follow the path |goto 59.49,46.58 < 30 |only if walking
Jump down here |goto 58.53,45.27 < 20 |only if walking
kill Fleshripper Helsquid##110981+
|tip They are spread out underwater around this area.
collect 10 Helsquid Ink##127046 |q 38958/1 |goto 57.72,41.84
step
talk Ainderu Summerleaf##93525
|tip Inside the building.
turnin The Right Color##38958 |goto Dalaran L/10 36.49,34.36
step
talk Lyndras##93967
|tip Inside the building.
turnin Taking Inspiration##38957 |goto 36.13,33.94
step
talk Lyndras##93967
|tip Inside the building.
accept Left Behind##38959 |goto 36.13,33.94
accept Lining Them Up##38960 |goto 36.13,33.94
step
Jump down here |goto Azsuna/0 61.99,32.35 < 20 |only if walking
kill Llothien Grizzly##90134+
|tip Curiously, it seems most of these bears do not have fur.
|tip /cry
collect 15 Bear Fur##127047 |q 38960/1 |goto Azsuna/0 59.73,32.03
step
click Box of Measuring Tools##248092
collect Box of Measuring Tools##135526 |q 38959/2 |goto 59.93,34.50
step
click Lyndras' Threading Needles##248091
collect Lyndras' Threading Needles##135527 |q 38959/3 |goto 59.93,34.73
step
click Lyndras' Shears##248090
collect Lyndras' Pinking Shears##135525 |q 38959/1 |goto 60.10,34.88
step
talk Lyndras##93967
|tip Inside the building.
turnin Left Behind##38959 |goto Dalaran L/10 36.12,33.95
turnin Lining Them Up##38960 |goto Dalaran L/10 36.12,33.95
accept The Final Lesson?##38963 |goto Dalaran L/10 36.12,33.95
step
click Tanithria's Blue Dye##242637
|tip It looks like a small glass bottle with blue liquid in it on the shelf.
collect Tanithria's Blue Dye##127290 |goto 35.45,34.96 |q 38963
step
talk Lalla Brightweave##93524
|tip Inside the building.
buy 3 Runic Catgut##127037 |n
collect 3 Runic Catgut##127037 |goto 36.07,32.93 |q 38963
step
talk Lalla Brightweave##93524
|tip Inside the building.
buy 1 Sharp Spritethorn##127681 |n
collect Sharp Spritethorn##127681 |goto 36.07,32.93 |q 38963
step
click Box of Bear Fur##248093
|tip It looks like a red crate on the floor.
collect 5 Bear Fur##135538 |q 38963 |goto 35.45,33.70
step
collect 15 Shal'dorei Silk##124437 |q 38963
|tip Use the "Shal'dorei Silk" farming guide to gather these.
|tip You can also purchase them from the Auction House.
step
click Tanithria's Finishing Table
_<Create 1 Silkweave Hood: Outer Layer>_
collect Silkweave Hood: Outer Layer##127363 |goto 35.11,33.79 |q 38963
step
click Tanithria's Finishing Table
_<Create 1 Silkweave Hood Lining>_
collect Silkweave Hood Lining##127364 |goto 35.11,33.79 |q 38963
step
click Tanithria's Finishing Table
_<Create 1 Handcrafted Silkweave Hood>_
collect Handcrafted Silkweave Hood##127367 |q 38963/1 |goto 35.11,33.79
step
talk Lyndras##93967
|tip Inside the building.
turnin The Final Lesson?##38963 |goto 36.10,33.92
accept The Depraved Nightfallen##38961 |goto 36.10,33.92
step
_Enter the Eye of Azshara Dungeon:_
|tip Use the Group Finder to enter the dungeon.
kill Wrath of Azshara##96028
|tip Use the Eye of Azshara dungeon guide to accomplish this.
collect Heart of the Storm##127048 |q 38961/1
step
talk Tanithria##93542
|tip Inside the building.
turnin The Depraved Nightfallen##38961 |goto Dalaran L/10 35.00,34.57
step
Reach Level 45 |ding 45
|tip Use the Leveling guides to accomplish this.
step
Unlock World Quests |complete completedq(43341)
|tip Use the "World Quests" dailies guide to accomplish this.
step
talk Tanithria##93542
|tip Inside the building.
accept Where's Lyndras Now?##38964 |goto 35.00,34.57
step
talk Linzy Blackbolt##92456
|tip Inside the building.
Tell her _"I heard you may have seen Lyndras?"_
Talk to Linzy |q 38964/1 |goto 42.02,31.79
step
_Click the Quest Complete Box:_
turnin Where's Lyndras Now?##38964
accept Where's Lyndras: Sewer Sleuthing##39602
step
talk Raethan##97359
Tell him _"I want to hire a personal bodyguard."_
|tip This will cost 5 gold, but will prevent other players from attacking you, for 5 minutes, in this PvP area.
Hire a Bodyguard |havebuff 237433 |goto Dalaran L/11 68.99,58.38 |q 39602
step
Follow the path down |goto 64.48,58.65 < 15 |walk
talk Flitz##96347
|tip Under the wooden stairs and platform.
Track Down Lyndras |q 39602/1 |goto 67.23,67.80
step
_Click the Quest Complete Box:_
turnin Where's Lyndras: Sewer Sleuthing##39602
accept Where's Lyndras: Downward Spiral##39605
step
Follow the path |goto Dalaran L/10 56.85,56.91 < 20 |only if walking
click Broken Ley Flame Burner##243899
turnin Where's Lyndras: Downward Spiral##39605 |goto Dalaran L/10 55.82,68.45
accept Where's Lyndras: Leyflame Larceny##39667 |goto Dalaran L/10 55.82,68.45
step
talk Violet Hold Guard##96444
Ask About Lyndras |q 39667/1 |goto 65.28,67.99
step
talk Violet Hold Guard##96444
turnin Where's Lyndras: Leyflame Larceny##39667 |goto 65.28,67.99
accept Into the Hold##38965 |goto 65.28,67.99
step
_Enter the Assault on Violet Hold Dungeon:_
|tip Use the Group Finder to enter the dungeon.
Kill the Final Boss in the Dungeon
|tip Use the Assault on Violet Hold dungeon guide to accomplish this.
collect Violet Hold Prison Key##135556 |q 38965/1
|tip WARNING: Don't leave the dungeon after looting the prison key, there's more to do for the quest.
step
click Prison Barrier
Open Lyndras' Cell |q 38965/2 |goto Violet Hold/1 42.29,36.18
step
kill Lyndras##104529
End Lyndras' Misery |q 38965/3 |goto 41.93,35.27
step
talk Tanithria##93542
|tip Inside the building.
turnin Into the Hold##38965 |goto Dalaran L/10 35.01,34.57
accept Secret Silkweaving Methods##38966 |goto Dalaran L/10 35.01,34.57
step
click Tanithria's Green Dye##242639
|tip It looks like a small glass bottle with green liquid in it on the shelf.
collect Tanithria's Green Dye##127292 |goto 35.31,34.96 |q 38966
step
click Tanithria's Sharpened Spritethorns##242686
|tip It looks like a small brown wooden crate on the floor.
collect Tanithria's Sharpened Spritethorn##127382 |goto 35.67,34.61 |q 38966
step
talk Alard Schmied##92183
|tip Inside the building.
collect Alard's Brimstone Shavings##127680 |goto 44.17,28.71 |q 38966
step
talk Lalla Brightweave##93524
buy 5 Runic Catgut##127037 |n
collect 5 Runic Catgut##127037 |goto 36.07,32.93 |q 38966
step
click Tanithria's Dyeing Tub##242641
|tip Click the dialogue options.
|tip Do this twice.
collect 2 Bolt of Brimstone-Soaked Silkweave##127368 |q 38966 |goto 35.16,34.76
step
collect 10 Shal'dorei Silk##124437 |q 38966
|tip Use the "Shal'dorei Silk" farming guide to accomplish this.
|tip You can also purchase them from the Auction House.
step
click Tanithria's Finishing Table
_<Create 2 Silkweave Bracer Lining>_
collect 2 Silkweave Bracer Lining##127372 |goto 35.13,33.81 |q 38966
step
click Tanithria's Finishing Table
_<Create 1 Silkweave Bracer: Outer Layer>_
collect Silkweave Bracer: Outer Layer##127370 |goto 35.13,33.81 |q 38966
step
click Tanithria's Finishing Table
_<Create 1 Masterwork Silkweave Bracers>_
collect Masterwork Silkweave Bracers##127373 |q 38966/1 |goto 35.13,33.81
step
talk Tanithria##93542
|tip Inside the building.
turnin Secret Silkweaving Methods##38966 |goto 35.00,34.59
accept The Path to Suramar City##38962 |goto 35.00,34.59
step
_Using the Suramar Questing Guide:_
|tip Use the Suramar questing guide to complete quests until you complete the quest titled "Masquerade".
|tip This is the quest when you unlock the action button ability to disguise yourself in Suramar City.
Complete the "Masquerade" Quest in Suramar |complete completedq(42079)
step
Find a Safe Way to Move within Suramar City |q 38962/1
step
talk Tanithria##93542
|tip Inside the building.
turnin The Path to Suramar City##38962 |goto 34.99,34.59
accept The Nightborne Connection##38967 |goto 34.99,34.59
step
talk Tanithria##93542
|tip Inside the building.
Learn the Bolt of Linen Cloth Recipe |learn Bolt of Linen Cloth##2963 |goto 34.99,34.59
step
talk Tanithria##93542
|tip Inside the building.
Learn the Brown Linen Robe Recipe |learn Brown Linen Robe##7623 |goto 34.99,34.59
step
talk Tanithria##93542
|tip Inside the building.
Learn the Bolt of Woolen Cloth Recipe |learn Bolt of Woolen Cloth##2964 |goto 34.99,34.59
step
talk Tanithria##93542
|tip Inside the building.
Learn the White Woolen Dress Recipe |learn White Woolen Dress##8467 |goto 34.99,34.59
step
talk Tanithria##93542
|tip Inside the building.
Learn the Bolt of Mageweave Recipe |learn Bolt of Mageweave##3865 |goto 34.99,34.59
step
talk Tanithria##93542
|tip Inside the building.
Learn the Simple Black Dress Recipe |learn Simple Black Dress##12077 |goto 34.99,34.59
step
talk Tanithria##93542
|tip Inside the building.
Learn the Bolt of Frostweave Recipe |learn Bolt of Frostweave##55899 |goto 34.99,34.59
step
talk Tanithria##93542
|tip Inside the building.
Learn the Frostwoven Robe Recipe |learn Frostwoven Robe##55903 |goto 34.99,34.59
step
talk Tanithria##93542
|tip Inside the building.
Learn the Bolt of Embersilk Cloth Recipe |learn Bolt of Embersilk Cloth##74964 |goto 34.99,34.59
step
talk Tanithria##93542
|tip Inside the building.
Learn the Spiritmend Robe Recipe |learn Spiritmend Robe##75267 |goto 34.99,34.59
step
collect 6 Linen Cloth##2589 |q 38975 |future
|tip Use the "Linen Cloth" farming guide to gather these.
|tip You can also purchase them from the Auction House.
step
collect 9 Wool Cloth##2592 |q 38975 |future
|tip Use the "Wool Cloth" farming guide to gather these.
|tip You can also purchase them from the Auction House.
step
collect 12 Mageweave Cloth##4338 |q 38975 |future
|tip Use the "Mageweave Cloth" farming guide to gather these.
|tip You can also purchase them from the Auction House.
step
collect 20 Frostweave Cloth##33470 |q 38975 |future
|tip Use the "Frostweave Cloth" farming guide to gather these.
|tip You can also purchase them from the Auction House.
step
collect 30 Embersilk Cloth##53010 |q 38975 |future
|tip Use the "Embersilk Cloth" farming guide to gather these.
|tip You can also purchase them from the Auction House.
step
collect 157 Shal'dorei Silk##124437 |q 38975 |future
|tip Use the "Shal'dorei Silk" farming guide to gather these.
|tip You can also purchase them from the Auction House.
step
Follow the path |goto Suramar/0 42.75,78.56 < 20 |only if walking
Follow the road |goto Suramar/0 41.13,77.24 < 30 |only if walking
Follow the path down |goto Suramar/0 39.75,72.32 < 20 |only if walking
Follow the path |goto Suramar/0 41.11,71.13 < 20 |only if walking
Follow the path |goto Suramar/0 40.88,70.26 < 20 |only if walking
talk Leyweaver Tytallo##93969
|tip Inside the building.
turnin The Nightborne Connection##38967 |goto Suramar/0 40.33,69.49
accept Proof of Loyalty##38968 |goto Suramar/0 40.33,69.49
step
talk Leyweaver Inondra##93971
|tip Inside the building.
accept Master of Silkweave##38969 |goto 40.32,69.73
step
talk Leyweaver Mithrogane##93976
|tip Inside the building.
buy 1 Shal'dorei Mannequin##127266 |n
collect Shal'dorei Mannequin##127266 |goto 40.20,69.55 |q 38969
step
talk Leyweaver Mithrogane##93976
|tip Inside the building.
buy 10 Runic Catgut##127037 |n
collect 10 Runic Catgut##127037 |goto 40.20,69.55 |q 38969
step
talk Leyweaver Mithrogane##93976
|tip Inside the building.
buy 2 Sharp Spitethorn##127681 |n
collect 2 Sharp Spitethorn##127681 |goto 40.20,69.55 |q 38969
step
Open Your Tailoring Crafting Panel:
_<Create 1 Silkweave Gloves>_
collect Silkweave Gloves##126989 |goto 40.20,69.55 |q 38969
step
Open Your Tailoring Crafting Panel:
_<Create 1 Silkweave Hood>_
collect Silkweave Hood##126990 |goto 40.20,69.55 |q 38969
step
Open Your Tailoring Crafting Panel:
_<Create 1 Silkweave Pantaloons>_
collect Silkweave Pantaloons##126991 |goto 40.20,69.55 |q 38969
step
Open Your Tailoring Crafting Panel:
_<Create 1 Silkweave Slippers>_
collect Silkweave Slippers##126988 |goto 40.20,69.55 |q 38969
step
Open Your Tailoring Crafting Panel:
_<Create 1 Silkweave Bracers>_
collect Silkweave Bracers##126994 |goto 40.20,69.55 |q 38969
step
Open Your Tailoring Crafting Panel:
_<Create 1 Silkweave Robe>_
collect Silkweave Robe##126987 |goto 40.20,69.55 |q 38969
step
Open Your Tailoring Crafting Panel:
_<Create 1 Silkweave Cinch>_
collect Silkweave Cinch##126993 |goto 40.20,69.55 |q 38969
step
Open Your Tailoring Crafting Panel:
_<Create 1 Silkweave Epaulets>_
collect Silkweave Epaulets##126992 |goto 40.20,69.55 |q 38969
step
Use the Shal'dorei Mannequin |use Shal'dorei Mannequin##127266
Assemble the Silkweave Set |q 38969/1 |goto 40.20,69.55
step
talk Leyweaver Inondra##93971
turnin Master of Silkweave##38969 |goto 40.32,69.73
step
kill Withered Shambler##98555+
Slay #25# Suramar Withered |q 38968/1 |goto 34.78,51.96
step
Follow the path |goto Suramar/0 42.75,78.56 < 20 |only if walking
Follow the road |goto Suramar/0 41.13,77.24 < 30 |only if walking
Follow the path down |goto Suramar/0 39.75,72.32 < 20 |only if walking
Follow the path |goto Suramar/0 41.11,71.13 < 20 |only if walking
Follow the path |goto Suramar/0 40.88,70.26 < 20 |only if walking
talk Leyweaver Tytallo##93969
|tip Inside the building.
turnin Proof of Loyalty##38968 |goto 40.33,69.49
accept The Queen's Grace Loom##38970 |goto 40.33,69.48
step
click Teleportation Crystal##273787 |goto 40.24,69.73 |n
Click Here After You Teleport |confirm |q 38970
step
talk Leyweaver Azayna##94242
|tip Upstairs inside the building.
Learn About the Queen's Grace Loom |q 38970/1 |goto 40.37,69.65
step
click Teleportation Crystal##273787 |goto 40.44,69.49 |n
Click Here After You Teleport |confirm |q 38970
step
talk Leyweaver Tytallo##93969
|tip Inside the building.
turnin The Queen's Grace Loom##38970 |goto 40.33,69.49
accept Return to Karazhan: The Big Bag Theory##44741 |goto 40.33,69.49
step
talk Leyweaver Mithrogane##93976
|tip Inside the building.
accept Inspire Me!##38975 |goto 40.19,69.55
step
talk Leyweaver Mithrogane##93976
|tip Inside the building.
buy 1 Coarse Thread##2320 |n
collect Coarse Thread##2320 |goto 40.19,69.55 |q 38975
step
talk Leyweaver Mithrogane##93976
|tip Inside the building.
buy 1 Fine Thread##2321 |n
collect Fine Thread##2321 |goto 40.19,69.55 |q 38975
step
talk Leyweaver Mithrogane##93976
|tip Inside the building.
buy 1 Heavy Silken Thread##8343 |n
collect Heavy Silken Thread##8343 |goto 40.19,69.55 |q 38975
step
talk Leyweaver Mithrogane##93976
|tip Inside the building.
buy 3 Eternium Thread##38426 |n
collect 3 Eternium Thread##38426 |goto 40.19,69.55 |q 38975
step
talk Leyweaver Mithrogane##93976
|tip Inside the building.
buy 5 Bleach##2324 |n
collect 5 Bleach##2324 |goto 40.19,69.55 |q 38975
step
talk Leyweaver Mithrogane##93976
|tip Inside the building.
buy 1 Black Dye##2325 |n
collect Black Dye##2325 |goto 40.19,69.55 |q 38975
step
Open Your Tailoring Crafting Panel:
_<Create 3 Bolt of Linen Cloth>_
collect 3 Bolt of Linen Cloth##2996 |goto 40.19,69.55 |q 38975
step
Open Your Tailoring Crafting Panel:
_<Create 3 Bolt of Woolen Cloth>_
collect 3 Bolt of Woolen Cloth##2997 |goto 40.19,69.55 |q 38975
step
Open Your Tailoring Crafting Panel:
_<Create 3 Bolt of Mageweave>_
collect 3 Bolt of Mageweave##4339 |goto 40.19,69.55 |q 38975
step
Open Your Tailoring Crafting Panel:
_<Create 4 Bolt of Frostweave>_
collect 4 Bolt of Frostweave##41510 |goto 40.19,69.55 |q 38975
step
Open Your Tailoring Crafting Panel:
_<Create 6 Bolt of Embersilk Cloth>_
collect 6 Bolt of Embersilk Cloth##53643 |goto 40.19,69.55 |q 38975
step
Open Your Tailoring Crafting Panel:
_<Create 1 Brown Linen Robe>_
Craft a Brown Linen Robe Near Leyweaver Mithrogane |q 38975/1 |goto 40.19,69.55
step
Open Your Tailoring Crafting Panel:
_<Create 1 White Woolen Dress>_
Craft a White Woolen Dress Near Leyweaver Mithrogane |q 38975/2 |goto 40.19,69.55
step
Open Your Tailoring Crafting Panel:
_<Create 1 Simple Black Dress>_
Craft a Simple Black Dress Near Leyweaver Mithrogane |q 38975/3 |goto 40.19,69.55
step
Open Your Tailoring Crafting Panel:
_<Create 1 Frostwoven Robe>_
Craft a Frostwoven Robe Near Leyweaver Mithrogane |q 38975/4 |goto 40.19,69.55
step
Open Your Tailoring Crafting Panel:
_<Create 1 Spiritmend Robe>_
Craft a Spiritmend Robe Near Leyweaver Mithrogane |q 38975/5 |goto 40.19,69.55
step
talk Leyweaver Mithrogane##93976
|tip Inside the building.
turnin Inspire Me!##38975 |goto 40.19,69.55
step
kill Moroes##114312
|tip Moroes is located in the Lower Return to Karazhan dungeon.
|tip You can use the Looking for Group tool to complete this dungeon.
collect 1 Bag of a Thousand Pockets##142122 |q 44741/1 |goto Deadwind Pass/0 46.68,70.22
step
kill Viz'aduum the Watcher##114790
|tip Viz'aduum the Watcher is located in the Upper Return to Karazhan dungeon.
|tip You can use the Looking for Group tool to complete this dungeon.
collect 1 Fel Sinew Bag##143548 |q 44741/2 |goto Deadwind Pass/0 46.68,70.22
step
talk Leyweaver Tytallo##93969
|tip Inside the building.
turnin Return to Karazhan: The Big Bag Theory##44741 |goto Suramar/0 40.33,69.49
step
Follow the path |goto Azsuna/0 66.99,26.52 < 50 |only if walking
Follow the path down |goto Azsuna/0 69.07,26.09 < 20 |only if walking
Follow the path up |goto Suramar/0 26.29,74.09 < 20 |only if walking
Enter the cave |goto Suramar/0 27.31,72.95 < 15 |walk
talk Leyweaver Athystro##93978
accept Exotic Textiles##38971 |goto Suramar/0 26.63,71.40
step
Leave the cave |goto 27.11,72.41 < 15 |walk
Follow the path down |goto 28.29,73.12 < 20 |only if walking
Follow the path down |goto 30.03,72.68 < 30 |only if walking
Cross the bridge |goto 30.31,79.52 < 20 |only if walking
Follow the path |goto Suramar/23 36.46,87.73 < 20 |walk
Follow the path |goto Suramar/23 59.75,78.14 < 20 |walk
Follow the path |goto Suramar/23 51.59,72.60 < 20 |walk
Follow the path |goto Suramar/23 42.00,67.76 < 20 |walk
kill Djin'zal##94282
collect Fel Inscribed Shroud##127281 |q 38971/1 |goto Suramar/23 35.46,40.17
step
Follow the path |goto 40.47,52.99 < 20 |walk
Follow the path |goto 46.08,73.01 < 20 |walk
Follow the path |goto 59.78,78.19 < 20 |walk
Follow the path |goto 53.15,85.04 < 20 |walk
Follow the path up |goto Suramar/0 33.98,81.62 < 30 |only if walking
Cross the bridge |goto Suramar/0 31.81,81.58 < 20 |only if walking
Follow the path up |goto 30.03,78.58 < 20 |only if walking
Follow the path up |goto 29.30,71.88 < 20 |only if walking
Enter the cave |goto 27.31,72.95 < 15 |walk
talk Leyweaver Athystro##93978
turnin Exotic Textiles##38971 |goto Suramar/0 26.63,71.40
step
Follow the road |goto Stormheim/0 60.39,53.98 < 30 |only if walking
Follow the road |goto Stormheim/0 61.60,55.11 < 30 |only if walking
Follow the road |goto Stormheim/0 65.43,54.73 < 30 |only if walking
talk Leyweaver Tellumi##93977
accept The Right Question##38974 |goto Stormheim/0 65.59,56.30
step
Enter the Halls of Valor Dungeon |goto Halls of Valor/2 47.72,8.68 < 10000 |noway |c |q 38974
|tip Use the Group Finder to enter the dungeon.
step
kill Hymdall##107987
|tip Use the Halls of Valor dungeon guide to accomplish this.
collect Hymdall's Loincloth##135575 |q 38974/1 |goto Halls of Valor/2 47.73,43.41
step
kill Odyn##95676
|tip Use the Halls of Valor dungeon guide to accomplish this.
Defeat Odyn |q 38974/2
step
talk Leyweaver Tellumi##93977
turnin The Right Question##38974 |goto Stormheim/0 65.59,56.30
step
_Congratulations!_
You completed the Tailoring questline.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Quest Guides\\Argus Tailoring Quest Line",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the Argus Tailoring quest line.",
startlevel=45.0,
condition_end=function() return completedq(48074) end,
condition_suggested=function() return skill('Legion Tailoring') > 0 and level >= 45 and not completedq(48074) end,
},[[
step
talk Tanithria##93542
|tip Inside the building.
Learn the Tailoring Profession |complete skill("Legion Tailoring")>=1 |goto Dalaran L/10 34.97,34.63
step
Complete the Quest _"The Sigil of Awakening"_ |complete completedq(48107)
|tip This is part of the Argus campaign guide.
Check out our Argus campaign guide to accomplish this |confirm |next "Leveling Guides\\Legion (10-50)\\Argus Campaign"
step
talk Khaela##125351
accept Looming Over Me##48074 |goto Eredath/4 42.28,62.16
step
Follow the path |goto Eredath/0 58.64,33.38 < 15 |only if walking
Follow the path |goto 57.36,32.89 < 15 |only if walking
Follow the path |goto 56.60,26.70 < 15 |only if walking
Follow the path |goto 54.89,25.09 < 10 |only if walking
Enter the building |goto 54.47,22.88 < 7 |walk
click Lightweave Loom##272745
collect Lightweave Loom##151874 |q 48074/1 |goto 53.78,23.38
step
talk Khaela##125351
turnin Looming Over Me##48074 |goto Eredath/4 42.28,62.16
step
_Congratulations!_
You completed the Argus Tailoring questline.
]])
