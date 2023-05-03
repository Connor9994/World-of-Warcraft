local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if ZGV:DoMutex("PetsCLEGION") then return end
if ZGV:DoMutex("PetsCommonLEGION") then return end
ZGV.CommonPets=true
ZygorGuidesViewer.GuideMenuTier = "LEG"
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Benax",{
patch='70300',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Aquatic pet: Benax",
pet=1934,
},[[
step
kill Anax##111197
collect Benax##140934 |n |goto Suramar/0 33.69,51.75
learnpet Benax##1934 |use Benax##140934
step
Congratulations!
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Bleakwater Jelly",{
patch='70300',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Aquatic pet: Bleakwater Jelly",
pet=1753,
},[[
step
Enter the Helheim portal |goto Stormheim/0 73.38,39.74
kill Soulthirster##97630
collect Bleakwater Jelly##129188 |n |goto Helheim/0 29.29,63.96
|tip This pet has a small chance to drop.
learnpet Bleakwater Jellsuny##98116 |use Bleakwater Jelly##129188
step
Congratulations!
You have collected the _Bleakwater Jelly_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Blorp",{
patch='62000',
source='Vendor',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Aquatic pet: Blorp",
pet=1666,
},[[
step
talk Galissa Sundew##55103
buy 1 Blorp's Bubble##126925 |n |goto Darkmoon Island/0 52.52,88.59
|tip This pet costs 50 Darkmoon Daggermaw.
|tip These can either be bought from the auction house or farmed by fishing in the water on Darkmoon Island.
collect Blorp's Bubble##126925 |n
learnpet Blorp##1666 |use Blorp's Bubble##126925
step
Congratulations!
You have collected the _Blorp_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Coralback Fiddler",{
patch='70300',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Aquatic pet: Coralback Fiddler",
pet=1775,
},[[
step
The _Coralback Fiddler_ is level 25
|tip It is a crab found along this coast
|tip Challenge one to a pet battle and capture it.
learnpet Coralback Fiddler##1775 |goto Highmountain/0 38.29,12.79
step
Congratulations!
You have collected the _Coralback Fiddler_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Ghost Shark",{
patch='73000',
source='Profession',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Aquatic pet: Ghost Shark.",
pet=2077,
},[[
step
Click here to load the "Ilyssia of the Waters" reputation guide |confirm |next "Reputations Guides\\Legion Reputations\\Fishing\\Ilyssia of the Waters"
|tip You can gain favor with Ilyssia of the Waters by turning in Fragmented Enchantments.
Reach "Good Friend" status with Ilyssia of the Waters |complete rep("Ilyssia of the Waters")>=GoodFriend
step
collect 50 Fragmented Enchantment##146848
|tip Fragmented Enchantments are acquired by fishing in the pool near Ilyssia of the Waters.
|tip 50 are required to purchase the Ghost Shark battle pet.
step
talk Ilyssia of the Waters##120266
buy 1 Ghost Shark##152555 |n
Use the Ghost Shark |use Ghost Shark##152555
learnpet Ghost Shark##2077
step
Congratulations!
You have collected the _Ghost Shark_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Ghostshell Crab",{
patch='62000',
source='Vendor',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Aquatic pet: Ghostshell Crab",
pet=1665,
},[[
step
talk Galissa Sundew##55103
buy 1 Translucent Shell##126926 |n |goto Darkmoon Island/0 52.52,88.59
|tip This pet costs 100 Darkmoon Daggermaw.
|tip These can either be bought from the auction house or farmed by fishing in the water on Darkmoon Island.
collect Translucent Shell##126926 |n
learnpet Ghostshell Crab##1665 |use Translucent Shell##126926
step
Congratulations!
You have collected the _Ghostshell Crab_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Juvenile Scuttleback",{
patch='70300',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Aquatic pet: Juvenile Scuttleback",
pet=1728,
},[[
step
The _Juvenile Scuttleback_ is level 25
|tip It is a crab found around this area.
|tip Challenge one to a pet battle and capture it.
learnpet Juvenile Scuttleback##1728 |goto Azsuna/0 60.70,59.03
step
Congratulations!
You have collected the _Juvenile Scuttleback_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Plump Jelly",{
patch='70300',
source='Vendor',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Aquatic pet: Plump Jelly",
pet=1755,
},[[
step
talk Draemus##107326
buy 1 Plump Jelly##129798 |n |goto Dalaran L/10 58.75,39.17
|tip This costs 50 Pet Charms.
learnpet Plump Jelly##1755 |use Plump Jelly##129798
step
Congratulations!
You have collected the _Plump Jelly_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Sewer-Pipe Jelly",{
patch='70300',
source='Vendor',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Aquatic pet: Sewer-Pipe Jelly",
pet=1754,
},[[
step
talk Laura Malley##97364
buy 1 Sewer-Pipe Jelly##136904 |n |goto Dalaran L/11 58.16,57.74
|tip This pet costs 250 Sightless Eyes. Sightless Eyes can be obtained by completing objectives in the Underbelly.
learnpet Sewer-Pipe Jelly##1754 |use Sewer-Pipe Jelly##136904 |goto Dalaran L/11 58.16,57.74
step
Congratulations!
You have collected the _Sewer-Pipe Jelly_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Spring Strider",{
patch='70300',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Aquatic pet: Spring Strider",
pet=1739,
},[[
step
The _Spring Strider_ is level 25
|tip It is a strider found around this area.
|tip Challenge one to a pet battle and capture it.
learnpet Spring Strider##1739 |goto Val'sharah/0 49.03,69.11
step
Congratulations!
You have collected the _Spring Strider_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Sting Ray Pup",{
patch='70300',
source='Vendor',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Aquatic pet: Sting Ray Pup",
pet=1911,
},[[
step
This pet requires both a Good Friend reputation with Conjurer Margoss and 50 Drowned Mana
Gain Good Friend Reputation with Conjurer Margoss |complete rep("Conjurer Margoss")>=GoodFriend |goto Dalaran L/10 22.65,-11.70
|tip To gain reputation with Conjurer Margoss you will need to fish up and turn in Drowned Mana on this Island.
step
Once you are a Good Friend with Conjurer Margoss, you will need to collect 50 more Drowned Mana to buy this pet
Fish from the lake on this island |cast Fishing##131474 |goto Dalaran L/10 22.67,-12.00
collect 50 Drowned Mana##138777 |n
talk Conjurer Margoss##108825
buy 1 Sting Ray Pup##138810 |n |goto Dalaran L/10 23.03,-11.30
learnpet Sting Ray Pup##1911 |use Sting Ray Pup##138810
step
Congratulations!
You have collected the _Sting Ray Pup_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Young Mutant Warturtle",{
patch='70300',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Aquatic pet: Young Mutant Warturtle",
pet=1912,
},[[
step
This pet can be battled by buying an item in the Underbelly
This item costs 1,500 Sighless Eyes and summons 4 Young Mutant Warturtles
|tip You can either farm for the item to summon these turtles, or you can wait around for someone else to.
Click here to continue |confirm
step
talk Laura Malley##97364
buy 1 Young Mutant Warturtles##139412 |n |goto Dalaran L/11 58.13,57.95
|tip This costs 1,500 Sightless Eyes.
|tip These can be obtained by killing players, killing enemies, or looting chests in the Underbelly.
|tip This item will summon 4 Young Mutant Warturtles.
The _Young Mutant Warturtles_ are level 25
|tip Challenge one to a pet battle and capture it.
learnpet Young Mutant Warturtle##1912 |goto Dalaran L/11 58.13,57.95
step
Congratulations!
You have collected the _Young Mutant Warturtle_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Antoran Bile Larva",{
patch='73000',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Beast pet: Antoran Bile Larva",
pet=2122,
},[[
step
The _Antoran Bile Larva_ is level 25
|tip It is a Larva found along the Defiled Path.
|tip Challenge one to a pet battle and capture it.
learnpet Antoran Bile Larva##2122 |goto Antoran Wastes/0 72.06,46.10
step
Congratulations!
You have collected the _Antoran Bile Larva_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Ash'ana",{
patch='24000',
source='Vendor',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Beast pet: Ash'ana",
pet=1927,
},[[
step
Earn Revered reputation with the Dreamweavers |complete rep("Dreamweavers")>=Revered
talk Sylvia Hartshorn##106901
buy 1 Ash'ana##23712 |n |goto Val'sharah/0 54.69,73.25
|tip This pet costs 500 gold.
learnpet Ash'ana##1927 |use Ash'ana##23712
step
Congratulations!
You have collected the _Ash'ana_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Ashmaw Cub",{
patch='70300',
source='Quest',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Beast pet: Ashmaw Cub",
pet=1706,
},[[
step
Follow the path |goto Val'sharah/0 56.33,81.10 < 20 |only if walking
Follow the path |goto 56.87,88.04 < 25 |only if walking
Enter the cave |goto Val'sharah/0 53.07,87.82 |walk
talk Shivering Ashmaw Cub##93677
Tell it "I'll save you poor little thing." |goto Val'sharah/0 52.81,87.46
Kill the waves of enemies |q 38889
step
talk Shivering Ashmaw Cub##93677
accept Adopting the Adorable##38889 |goto 52.81,87.46
collect Ashmaw Cub##128690 |n |use Ashmaw Cub##128690
learnpet Ashmaw Cub##1706 |use Ashmaw Cub##128690 |goto 52.81,87.46
step
Congratulations!
You have collected the _Ashmaw Cub_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Baby Elderhorn",{
patch='70300',
source='Vendor',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Beast pet: Baby Elderhorn",
pet=1884,
},[[
step
Earn Revered reputation with the Highmountain Tribe |complete rep("Highmountain Tribe")>=Revered
talk Ransa Greyfeather##106902
buy 1 Baby Elderhorn##136919 |n |goto Thunder Totem/0 38.25,46.02
|tip This pet costs 500 gold.
learnpet Baby Elderhorn##1884 |use Baby Elderhorn##136919
step
Congratulations!
You have collected the _Baby Elderhorn_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Ban-Fu, Cub of Ban-Lu",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Beast pet: Ban-Fu, Cub of Ban-Lu",
pet=2047,
},[[
step
This pet is only available to Monks |confirm
|tip You can earn it by completing this guide on a Horde or Alliance Monk.
|only if not Monk
step
You must first complete the Broken Shore Campaign quest line before being able to start the quest line to obtain your Class Hall mount
Check out our "Broken Shore Campaign" guide to accomplish this |confirm |or |next "Leveling Guides\\Legion (10-50)\\Broken Shore Campaign"
|tip You must complete the Broken Shore Campaign and 7.2 Order Hall quests to purchase this pet.
Complete the "Broken Shore Campaign" guide |complete completedq(46246)
|only Monk
step
Once the Broken Shore Campaign is completed, you will then need to complete your Class Hall mount quest line
Click here to load the "Monk 7.2 Order Hall Quest" leveling guide |confirm |next "Leveling Guides\\Legion (10-50)\\Monk\\Monk 7.2 Order Hall Quests"
|tip You must complete the Broken Shore Campaign and 7.2 Order Hall quests to purchase this pet.
Complete the "7.2 Order Hall Quests" guide |complete completedq(46246)
|only Monk
step
This pet can be bought after achieving _Power Ascended_ in one of the 3 specs
|tip To earn the "Power Ascended" achievement, you will need to unlock 52 artifact weapon traits from a single artifact weapon.
|tip Once you accomplish this, you will be able to purchase this pet.
Earn the _"Power Ascended"_ achievement |achieve 11772
|only Monk
step
talk Mei Chele##99154
buy 1 Ban-Fu, Cub of Ban-Lu##147542 |n |use Ban-Fu, Cub of Ban-Lu##147542 |goto The Wandering Isle/0 54.8,62.2
|tip This pet costs 1,000 Order Resources.
learnpet Ban-Fu, Cub of Ban-Lu##240794
|only Monk
step
Congratulations!
You are now the proud owner of Ban-Fu, Cub of Ban-Lu.
|only Monk
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Bile Larva",{
patch='73000',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Beast pet: Bile Larva",
pet=2123,
},[[
step
Enter the cave |goto Krokuun/0 55.43,68.43 < 25
Leave the cave |goto 54.04,68.23 < 25
The _Bile Larva_ is level 25
|tip They are generally by the green lava.
|tip Challenge one to a pet battle and capture it.
learnpet Bile Larva##2123 |goto 53.35,67.88
step
Congratulations!
You have collected the _Bile Larva_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Black-Footed Fox Kit",{
patch='70300',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Beast pet: Black-Footed Fox Kit",
pet=1743,
},[[
step
The _Black-Footed Fox Kit_ is level 25
|tip It is a fox that can be found around this area.
|tip Challenge one to a pet battle and capture it.
learnpet Black-Footed Fox Kit##1743 |goto Highmountain/0 52.66,43.07
step
Congratulations!
You have collected the _Black-Footed Fox Kit_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Burrow Spiderling",{
patch='70300',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Beast pet: Burrow Spiderling",
pet=1726,
},[[
step
The _Burrow Spiderling_ is level 25
|tip It is a spider found around this area.
|tip Challenge one to a pet battle and capture it.
learnpet Burrow Spiderling##1726 |goto Highmountain/0 43.54,30.36
step
Congratulations!
You have collected the _Burrow Spiderling_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Cavern Moccasin",{
patch='72000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Beast pet: Cavern Moccasin",
pet=1999,
},[[
step
Complete the Wailing Caverns daily quest
collect Damp Pet Supplies##143753 |n
Open up the Damp Pet Supplies |use Damp Pet Supplies##143753
|tip There is a chance for this pet to be within this bag of pet supplies.
collect Cavern Moccasin##143754 |n |use Cavern Moccasin##143754
learnpet Cavern Moccasin##1999
step
Congratulations!
You have collected the _Cavern Moccasin_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Corgi Pup",{
patch='70300',
source='Vendor',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Beast pet: Corgi Pup",
pet=1890,
},[[
step
This pet was available during the WoW 12th Aniversity Event
|tip You can no longer obtain this pet.
learnpet Corgi Pup##1890 |use Corgi Pup##136925
step
Congratulations!
You have collected the _Corgi Pup_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Corgnelius",{
patch='70300',
source='Discovery',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Beast pet: Corgnelius",
pet=1929,
},[[
step
This pet is a reward for completing the Order Hall Mission _It's so FLUFFY!_
collect Corgnelius##140320 |n
learnpet Corgnelius##1929 |use Corgnelius##140320
step
Congratulations!
You have collected the _Corgnelius_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Crystalline Broodling",{
patch='70300',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Beast pet: Crystalline Broodling",
pet=1809,
},[[
step
The _Crystalline Broodling_ is level 25
|tip It is a spider found around this area.
|tip Challenge one to a pet battle and capture it.
learnpet Crystalline Broodling##1809 |goto Suramar/33 50.98,34.09
step
Congratulations!
You have collected the _Crystalline Broodling_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Dreadmaw",{
patch='71000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Beast pet: Dreadmaw",
pet=1952,
},[[
step
Enter the Trial of the Crusader raid |goto Icecrown/0 75.05,21.81 < 5 |c
|tip You can get this pet on any difficulty.
step
kill Icehowl##34797
|tip Icehowl is the first boss in the instance.
collect Giant Worm Egg##142083 |n |use Giant Worm Egg##142083
|tip Giant Worm Egg has a very low chance to drop.
learnpet Dreadmaw##1952
step
Congratulations!
You have collected the _Dreadmaw_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Fel Piglet",{
patch='70300',
source='Vendor',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Beast pet: Fel Piglet",
pet=1760,
},[[
step
talk Draemus##107326
buy 1 Fel Piglet##129760 |n |goto Dalaran L/10 58.75,39.17
|tip This costs 200 Pet Charms.
learnpet Fel Piglet##1760 |use Fel Piglet##129760
step
Congratulations!
You have collected the _Fel Piglet_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Felspider",{
patch='70300',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Beast pet: Felspider",
pet=1731,
},[[
step
The _Felspider_ is level 25
|tip It is a spider found around this area.
|tip Challenge one to a pet battle and capture it.
learnpet Felspider##1731 |goto Azsuna/0 31.62,52.24
step
Congratulations!
You have collected the _Felspider_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Fossorial Bile Larva",{
patch='73000',
source='Profession',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Beast pet: Fossorial Bile Larva",
pet=2121,
},[[
step
Learn the Skinning profession |skill Skinning,1
|tip You must have the Skinning profession to loot this pet.
step
Kill Duskcloak Panthara around this area
|tip You must have skinning to acquire this pet.
|tip You may have to kill a lot of these.
collect Fossorial Bile Larva##153057 |n
Use the Fossorial Bile Larva |use Fossorial Bile Larva##153057
learnpet Fossorial Bile Larva##2121 |goto Krokuun/0 71.95,33.40
step
Congratulations!
You have collected the _Fossorial Bile Larva_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Grumpy",{
patch='70300',
source='Quest',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Beast pet: Grumpy",
pet=1705,
},[[
step
This pet is a reward for completing the quest _Grumpy_ in Val'sharah |goto Val'sharah/0 38.63,65.66
talk Grumpy##92738
|tip Up the stairs in the building.
|tip Move quickly through the fire.
accept Grumpy##39015 |n
collect Grumpy's Leash##128354 |n
learnpet Grumpy##1705 |use Grumpy's Leash##128354
step
Congratulations!
You have collected the _Grumpy_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Infernal Pyreclaw",{
patch='73000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Beast pet: Infernal Pyreclaw",
pet=2089,
},[[
step
kill Majordomo Staghelm##52571
|tip Refer to the Firelands raiding guide to accomplish this.
Click here to load the "Firelands" raid guide |confirm |next "Dungeon Guides\\Cataclysm Raids\\Firelands"
collect Fandral's Pet Carrier##152978 |n
learnpet Infernal Pyreclaw##2089 |goto Firelands/3 50.9,72.4 |use Fandral's Pet Carrier##152978
step
Congratulations!
You have collected the _Infernal Pyreclaw_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Leyline Broodling",{
patch='70300',
source='Profession',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Beast pet: Leyline Broodling",
pet=1808,
},[[
step
This pet is obtained from the chest at the end of the Withered Army Training scenario
This event is located in Suramar and can be completed every 3 days
|tip You must complete the quest "Building an Army", which is part of the main Suramar quest line.
|tip Check out our Suramar quest line guide to accomplish this.
Click here to continue |confirm
step
When inside the scenario, you will need to extract the chest at the end near First Arcanist Thalyssra
|tip This chest requries 5 Withered to extract.
collect Leyline Broodling##136914 |n
learnpet Leyline Broodling##1808 |use Leyline Broodling##136914
step
Congratulations!
You have collected the _Leyline Broodling_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Lurking Owl Kitten",{
patch='70300',
source='Quest',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Beast pet: Lurking Owl Kitten",
pet=1922,
},[[
step
talk Mayruna Moonwing##103568
accept Feline Frantic##41452 |goto Suramar/0 25.67,30.88
step
click Ransacked Crate##248064
Tidy the Ransacked Crate |q 41452/1 |goto 25.61,30.81
step
click Toppled Bench##248065
Correct the Toppled Bench |q 41452/2 |goto 26.14,31.66
step
click Spilled Grain##248063
Collect the Spilled Grain |q 41452/3 |goto 26.44,31.76
step
click Fallen Wagon##248055
Right the Fallen Wagon |q 41452/4 |goto 26.75,30.62
step
talk Mayruna Moonwing##103568
turnin Feline Frantic##41452 |goto 25.67,30.88
accept Missing Along the Way##41463 |goto 25.67,30.88
step
talk Mardranel Forestheart##103570
accept Homeward Bounding##41453 |goto 25.66,30.93
step
Chase the Lost Owlkitten Across the Bridge |q 41453/1 |goto 24.49,32.03
|tip Position yourself and run towards the Lost Owlkin so that it runs toward the other side of the bridge.
step
Follow the Lost Owlkitten Home |q 41453/2 |goto 21.40,30.50
step
talk Mardranel Forestheart##103570
turnin Homeward Bounding##41453 |goto 21.40,30.62
accept You've Got to Be Kitten Me Right Meow##41197 |goto 21.40,30.62
step
Chase Lost Feathermoon Kittens
|tip They're running around on the ground all around this area.
|tip Position yourself and run towards the Lost Feathermoon Kittens so that they run back to where you picked up the quest.
Herd #7# Lost Feathermane Kittens |q 41197/1 |goto 22.35,28.23
step
talk Mardranel Forestheart##103570
turnin You've Got to Be Kitten Me Right Meow##41197 |goto 21.40,30.62
collect Lurking Owl Kitten##139791 |n
learnpet Lurking Owl Kitten##1922 |use Lurking Owl Kitten##139791
step
Congratulations!
You have collected the _Lurking Owl Kitten_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Mining Monkey",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Beast pet: Mining Monkey",
pet=2064,
},[[
step
This pet is a reward for completing the Pet Battle Challenge: Deadmines achievement
|tip After completing the first run, you will receive it as a weekly. Completing this weekly for the first time will reward this achievement.
Click here to check out our guide to accomplish this |confirm |or |next "Pets & Mounts Guides\\Battle Pets\\Battle Pet Dungeons\\Deadmines"
Complete the _"Pet Battle Challenge: Deadmines"_ achievement |achieve 11856
step
collect Mining Monkey##151632 |n |use Mining Monkey##151632
learnpet Mining Monkey##247452
step
Congratulations!
You are now the proud owner of a Mining Monkey.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Mischief",{
patch='71000',
source='In-GameShop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Beast pet: Mischief",
pet=1936,
},[[
step
Mischief is available for purchase from the Blizzard store for _$10_
learnpet Mischief##1936 |use Mischief##141893
step
Congratulations!
You have collected the _Mischief_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Mist Fox Kit",{
patch='70300',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Beast pet: Mist Fox Kit",
pet=1744,
},[[
step
The _Mist Fox Kit_ is level 25
|tip It is a fox found around this area.
|tip Challenge one to a pet battle and capture it.
learnpet Mist Fox Kit##1744 |goto Highmountain/0 46.57,32.62
step
Congratulations!
You have collected the _Mist Fox Kit_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Nursery Spider",{
patch='70300',
source='Vendor',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Beast pet: Nursery Spider",
pet=1727,
},[[
step
talk Breanni##96479
buy 1 Nursery Spider##129826 |n |goto Dalaran L/10 58.42,39.26
|tip This pet costs 200 gold.
learnpet Nursery Spider##1727 |use Nursery Spider##129826
step
Congratulations!
You have collected the _Nursery Spider_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\River Calf",{
patch='60100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Beast pet: River Calf",
pet=1453,
},[[
step
talk Draemus##107326
buy 1 River Calf##140274 |n |goto Dalaran L/10 58.75,39.17
|tip This costs 50 Pet Charms.
learnpet River Calf##1453 |use River Calf##140274
step
Congratulations!
You have collected the _River Calf_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Rose Taipan",{
patch='70300',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Beast pet: Rose Taipan",
pet=1749,
},[[
step
The _Rose Taipan_ is level 25
|tip It is a snake found all around this area.
|tip Challenge one to a pet battle and capture it.
learnpet Rose Taipan##1749 |goto Stormheim/0 52.06,59.86
step
Congratulations!
You have collected the _Rose Taipan_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Slithering Brownscale",{
patch='70300',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Beast pet: Slithering Brownscale",
pet=1736,
},[[
step
The _Slithering Brownscale_ is level 25
|tip It is a snake found around this section of Stormheim.
|tip Search around the base of trees.
|tip Challenge one to a pet battle and capture it.
learnpet Slithering Brownscale##1736 |goto Stormheim/0 40.92,35.43
step
Congratulations!
You have collected the _Slithering Brownscale_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Snowfang",{
patch='70300',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Beast pet: Snowfang",
pet=1941,
},[[
step
This pet can only be obtained by Shamans
You must beat Snowfang in combat
Click here to continue |confirm
step
clicknpc Snowfang##114064 |goto The Maelstrom L/0 36.19,79.50
Defeat Snowfang in combat
|tip Snowfang is a Epic Beast type.
collect Snowfang's Trust##141530 |n |goto The Maelstrom L/0 36.19,79.50
learnpet Snowfang##1941 |use Snowfang's Trust##141530
step
Congratulations!
You have collected the _Snowfang_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Son of Skum",{
patch='72000',
source='Achievement',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Beast pet: Son of Skum",
pet=2049,
},[[
step
Complete the Wailing Caverns daily quest
collect Damp Pet Supplies##143753 |n
Open up the Damp Pet Supplies |use Damp Pet Supplies##143753
|tip There is a chance for this pet to be within this bag of pet supplies.
collect Son of Skum##147543 |n |use Son of Skum##147543
learnpet Son of Skum##2049
step
Congratulations!
You have collected the _Son of Skum_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Spiketail Beaver",{
patch='70300',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Beast pet: Spiketail Beaver",
pet=1763,
},[[
step
The _Spiketail Beaver_ is level 25
|tip It is a beaver found around this area.
|tip Challenge one to a pet battle and capture it.
learnpet Spiketail Beaver##1763 |goto Highmountain/0 41.38,50.53
step
Congratulations!
You have collected the _Spiketail Beaver_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Terror Larva",{
patch='70300',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Beast pet: Terror Larva",
pet=1735,
},[[
step
The _Terror Larva_ is level 25
|tip It is a worm found all around this area.
|tip Challenge one to a pet battle and capture it.
learnpet Terror Larva##1735 |goto Val'sharah/0 62.71,42.63
step
Congratulations!
You have collected the _Terror Larva_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Thornclaw Broodling",{
patch='70300',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Beast pet: Thornclaw Broodling",
pet=1810,
},[[
step
The _Thornclaw Broodling_ is level 25
|tip It is a spider found around this area.
|tip Challenge one to a pet battle and capture it.
learnpet Thornclaw Broodling##1810 |goto Suramar/0 29.96,63.40
step
Congratulations!
You have collected the _Thornclaw Broodling_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Vicious Broodling",{
patch='70300',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Beast pet: Vicious Broodling",
pet=1807,
},[[
step
The _Vicious Broodling_ is level 25
|tip This is a rare spawn of the Thornclaw Broodling found in the same area.
|tip It is a spider found around this area.
|tip Challenge one to a pet battle and capture it.
learnpet Vicious Broodling##1807 |goto Suramar/0 32.83,75.27
step
Congratulations!
You have collected the _Vicious Broodling_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Voidstalker Runt",{
patch='73000',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Beast pet: Voidstalker Runt",
pet=2129,
},[[
step
The _Voidstalker Runt_ is level 25
|tip There are a few around the area.
|tip Challenge one to a pet battle and capture it.
learnpet Voidstalker Runt##2129 |goto Eredath/0 41.6,59.32
step
Congratulations!
You have collected the _Voidstalker Runt_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Silithid Mini-Tank",{
patch='73500',
source='Drop',
author="support@zygorguides.com",
description="\nTo collect this pet, you will need to kill rare spawns in the Wound in the World version of Silithus.",
pet=2163,
},[[
step
Load the "Argus Campaign" Leveling Guide |confirm |next "Leveling Guides\\Legion (10-50)\\Argus Campaign"
|tip Click the line above to load the guide.
Complete the Quest "The Death of a Titan" |complete completedq(49015)
step
label "Kill_Xaarshej"
kill Xaarshej##132584
|tip Wait for respawn if needed. It doesn't take long.
collect 1 Silithid Mini-Tank##156851 |goto Silithus/0 29.54,34.91 |next "Learn_Pet" |only if not haspet(2163)
|tip This has a small chance to drop from this rare.
|tip You can only loot these rares once per day.
Click here if this rare spawn is not up or if the pet did not drop |next "Kill_Ssinkrix" |confirm |only if not haspet(2163)
step
label "Kill_Ssinkrix"
kill Ssinkrix##132580
|tip Wait for respawn if needed. It doesn't take long.
collect 1 Silithid Mini-Tank##156851 |goto Silithus/0 54.54,79.60 |next "Learn_Pet" |only if not haspet(2163)
|tip This has a small chance to drop from this rare.
|tip You can only loot these rares once per day.
Click here if this rare spawn is not up or if the pet did not drop |next "Kill_Qroshekx" |confirm |only if not haspet(2163)
step
label "Kill_Qroshekx"
kill Qroshekx##132578
|tip Wait for respawn if needed. It doesn't take long.
collect 1 Silithid Mini-Tank##156851 |goto Silithus/0 58.44,12.45 |next "Learn_Pet" |only if not haspet(2163)
|tip This has a small chance to drop from this rare.
|tip You can only loot these rares once per day.
Click here if this rare spawn is not up or if the pet did not drop |next "Kill_Xaarshej" |confirm |only if not haspet(2163)
step
label "Learn_Pet"
Use the Silithid Mini-Tank |use Silithid Mini-Tank##133064
learnpet Silithid Mini-Tank##2163
step
_Congratulations!_
You Collected the "Silithid Mini-Tank" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Twilight",{
patch='72500',
source='In-GameShop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Beast pet: Twilight",
pet=2051,
},[[
step
This pet can be purchased for $10.00 from the official _Blizzard Store_.
collect Twilight##147900 |n
|tip After purchasing, check your in-game mailbox.
learnpet Twilight##2051 |use Twilight##147900
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Warpstalker Runt",{
patch='73000',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Beast pet: Warpstalker Runt",
pet=2128,
},[[
step
The _Warpstalker Runt_ is level 25
|tip There are a few around the area.
|tip Challenge one to a pet battle and capture it.
learnpet Warpstalker Runt##2128 |goto Eredath/0 51.45,75.91
step
Congratulations!
You have collected the _Warpstalker Runt_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Auburn Ringtail",{
patch='70300',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Critter pet: Auburn Ringtail",
pet=1738,
},[[
step
The _Auburn Ringtail_ is level 25
|tip It is a racoon that can be found around this area.
|tip Challenge one to a pet battle and capture it.
learnpet Auburn Ringtail##1738 |goto Val'sharah/0 62.02,72.70
step
Congratulations!
You have collected the _Auburn Ringtail_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Blind Rat",{
patch='70300',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Critter pet: Blind Rat",
pet=1915,
},[[
step
Enter the Underbelly |goto Dalaran L/10 59.65,47.58
The _Blind Rat_ is level 25
|tip This pet can be found anywhere within the Underbelly in Dalaran.
|tip The Blind Rat can be difficult to find, as it can be killed by other players.
|tip Hire a guard to protect you while you capture this pet.
|tip Challenge one to a pet battle and capture it.
learnpet Blind Rat##1915 |goto Dalaran L/11 52.26,59.35
step
Congratulations!
You have collected the _Blind Rat_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Crispin",{
patch='70300',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Critter pet: Crispin",
pet=1752,
},[[
step
Follow the path up |goto Highmountain/0 51.96,34.12 < 20 |only if walking
Continue following the path up |goto Highmountain/0 49.98,34.58 < 20 |only if walking
Continue following the path up |goto Highmountain/0 47.98,37.45 < 20 |only if walking
Follow the path |goto Highmountain/0 44.57,39.02 < 25 |only if walking
kill Tenpak Flametotem##97203
collect Crispin##129175 |n |goto Highmountain/0 41.97,41.57
|tip This has a small chance to drop.
learnpet Crispin##1752 |use Crispin##129175
step
Congratulations!
You have collected the _Crispin_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Dig Rat",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Critter pet: Dig Rat",
pet=2065,
},[[
step
This pet is only available to Rogues |confirm
|tip You can earn it by completing this guide on a Horde or Alliance Rogue.
|only if not Rogue
step
To obtain this pet, you will first need to complete the Rogue pickpocketing quest line
Click here to accomplish this |confirm |or |next "Leveling Guides\\Legion (10-50)\\Rogue Pickpocketing Quest Line"
Complete the Rogue pickpocketing quest line |complete completedq(47594)
|only Rogue
step
talk Griftah##103792
buy 1 Dig Rat##151633 |n |use Dig Rat##151633
|tip This pet costs 10,000 Coins of Air.
|tip These are obtained by pick pocketing humanoids and demons around the Broken Isles.
learnpet Dig Rat##247474 |goto Dalaran L/4 45.41,26.64
|only Rogue
step
Congratulations!
You are now the proud owner of a Dig Rat.
|only Rogue
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Dust Bunny",{
patch='70300',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Critter pet: Dust Bunny",
pet=1778,
},[[
step
click Dusty Rug##244950 |goto Dalaran L/10 52.58,30.22
Check the Barber Shop |goto 52.55,30.11
Check the Legerdemain Lounge |goto 48.31,40.88
|tip On the second floor.
Check the Magical menagerie |goto 59.09,37.95
Check the courtyard |goto 46.93,18.80
Check Greymane Enclave |goto 30.76,73.73 |only Alliance
Check next to The Filthy Animal |goto 64.25,38.04 |only Horde
|tip These rugs are a rare spawn.
|tip They are circle rugs that can be found here and in other buildings around Dalaran.
|tip Once the rug is clicked, you will receive a buff that will last for 15 minutes. This allows you to see the Dust Bunnies.
The _Dust Bunny_ is level 25
|tip It is a critter found all around Dalaran.
|tip Challenge one to a pet battle and capture it.
learnpet Dust Bunny##1778 |goto Dalaran L/10 45.48,34.94
step
Congratulations!
You have collected the _Dust Bunny_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Felclaw Marsuul",{
patch='73000',
source='Achievement',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Critter pet: Felclaw Marsuul",
pet=2113,
},[[
step
This pet is a reward for completing the "Family Fighter" achievement
Click here to load the "Family Fighter" achievement guide |confirm |next "Achievement Guides\\Pet Battles\\Battle\\Legion\\Family Fighter"
collect Felclaw Marsuul##153040 |n
learnpet Felclaw Marsuul##2113 |use Felclaw Marsuul##153040
step
Congratulations!
You have collected the _Felclaw Marsuul_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Gleamhoof Fawn",{
patch='70300',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Critter pet: Gleamhoof Fawn",
pet=1913,
},[[
step
The _Gleamhoof Fawn_ is level 25
|tip It is a fawn found around this area.
|tip Challenge one to a pet battle and capture it.
learnpet Gleamhoof Fawn##1913 |goto Val'sharah/0 52.76,75.16
step
Congratulations!
You have collected the _Gleamhoof Fawn_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Mudshell Conch",{
patch='70300',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Critter pet: Mudshell Conch",
pet=1776,
},[[
step
The _Mudshell Conch_ is level 25
|tip It is a snail found all along the northern coast of Highmountain.
|tip Challenge one to a pet battle and capture it.
learnpet Mudshell Conch##1776 |goto Highmountain/0 42.54,9.62
step
Congratulations!
You have collected the _Mudshell Conch_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Olivetail Hare",{
patch='70300',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Critter pet: Olivetail Hare",
pet=1729,
},[[
step
The _Olivetail Hare_ is level 25
|tip It is a rabbit found all around this area.
|tip Challenge one to a pet battle and capture it.
learnpet Olivetail Hare##1729 |goto Azsuna/0 60.36,20.25
step
Congratulations!
You have collected the _Olivetail Hare_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Orphaned Marsuul",{
patch='73000',
source='Vendor',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Critter pet: Orphaned Marsuul",
pet=2116,
},[[
step
Click here to load the "Argussian Reach" reputation guide |confirm |next "Reputations Guides\\Legion Reputations\\Argussian Reach"
|tip In order to get this pet, you will need to be Honored with the Argussian Reach.
Gain Honored reputation with the Argussian Reach |complete rep("Argussian Reach")>=Honored
step
talk Toraan the Revered##127151
buy Orphaned Marsuul##153027 |n
Use the Orphaned Marsuul |use Orphaned Marsuul##153027
learnpet Orphaned Marsuul##2116 |goto Krokuun/1 68.10,56.90
step
Congratulations!
You have collected the _Orphaned Marsuul_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Pygmy Marsuul",{
patch='73000',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Critter pet: Pygmy Marsuul",
pet=2133,
},[[
step
Follow the path up |goto Eredath/0 64.09,41.78 < 25
The _Pygmy Marsuul_ is level 25
|tip There are a few around the area.
|tip Challenge one to a pet battle and capture it.
learnpet Pygmy Marsuul##2133 |goto 69.45,38.50
step
Congratulations!
You have collected the _Pygmy Marsuul_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Rescued Fawn",{
patch='70300',
source='Achievement',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Critter pet: Rescued Fawn",
pet=1938,
},[[
step
This pet is a reward for completing the pet collection achievement _Broken Isles Safari_
Check out our achievement guides to accomplish this
Click here to continue |confirm
step
Once this achievement is complete, this pet will be in your mailbox
collect Rescued Fawn##141352 |n
learnpet Rescued Fawn##1938 |use Rescued Fawn##141352
step
Congratulations!
You have collected the _Rescued Fawn_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Sneaky Marmot",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Critter pet: Sneaky Marmot",
pet=2063,
},[[
step
This pet is only available to Rogues |confirm
|tip You can earn it by completing this guide on a Horde or Alliance Rogue.
|only if not Rogue
step
To obtain this pet, you will first need to complete the Rogue pickpocketing quest line
Click here to accomplish this |confirm |or |next "Leveling Guides\\Legion (10-50)\\Rogue Pickpocketing Quest Line"
Complete the Rogue pickpocketing quest line |complete completedq(47594)
|only Rogue
step
talk Griftah##103792
buy 1 Sneaky Marmot##151569 |n |use Sneaky Marmot##151569
|tip This pet costs 10,000 Coins of Air.
|tip These are obtained by pick pocketing humanoids and demons around the Broken Isles.
learnpet Sneaky Marmot##247123 |goto Dalaran L/4 45.41,26.64
|only Rogue
step
Congratulations!
You are now the proud owner of a Sneaky Marmot.
|only Rogue
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Sun Darter Hatchling",{
patch='50100',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Critter pet: Sun Darter Hatchling",
pet=382,
},[[
step
To obtain this pet, you will need to get several items
|tip These items are needed to pass challenges that are protecting the location of the Sun Darter Hatchling.
Click here to proceed |confirm
step
First you will need to purchase or craft 6 different Major Protection potions
|tip You may buy these from the AH or craft them with the Alchemy profession, if you have the recipes.
collect 1 Major Arcane Protection Potion##22845
collect 1 Major Holy Protection Potion##22847
collect 1 Major Fire Protection Potion##22841
collect 1 Major Nature Protection Potion##22844
collect 1 Major Frost Protection Potion##22842
collect 1 Major Shadow Protection Potion##22846
step
Next, you will need a Winterfall Firewater potion
|tip This can be bought from the AH or farmed from Winterfall enemies.
kill High Chief Winterfall##10738+, Winterfall Pathfinder##7442+, Winterfall Shaman##7439+, Winterfall Totemic##7441+, Winterfall Den Watcher##7440+, Winterfall Runner##10916+, Winterfall Ursa##7438+
collect Winterfall Firewater##12820 |goto Winterspring/0 25.5,48.5
step
Now you need an Ethereal Oil.
|tip This can be bought from the AH or crafted with the Alchemy profession, if you have the recipe.
collect Ethereal Oil##44958
step
You will also need 10 Pygmy Oil
|tip These can be bought from the AH or crafted with the Alchemy profession, if you have the recipe.
collect 10 Pygmy Oil##40195
step
You will then need a "Little Princess" costume
|tip This can be bought from the AH or bought at the Magical Menagerie in new Dalaran for 1 Pet Charm.
talk Lio the Lioness##98725
collect "Little Princess" Costume##103789 |goto Dalaran L/10 59.31,39.57
step
You will also need a Scroll of Intellect (the level 1 version)
|tip This can be bought from the AH or crafted with the Inscription profession.
collect Scroll of Intellect##955
step
Enter the cave |goto Townlong Steppes/0 21.33,46.93
kill Scotty##66162
|tip If he is not there, wait a few minutes. He has a short respawn timer.
collect Scotty's Lucky Coin##89373 |goto Townlong Steppes/0 21.85,46.08
step
talk Sprinkle Noggenfogger##98844
buy 20 Noggenfogger Elixir##8529 |n
collect 20 Noggenfogger Elixir##8529 |goto Tanaris/0 51.2,29.8
step
Enter Dire Maul North |goto Dire Maul/1 71.1,93.8 < 10000 |c
step
map Dire Maul/1
path follow loose; loop off; ants curved; dist 10
path	71.5,90.1	69.3,86.8	62.0,87.2
path	56.3,85.4	43.5,88.4	42.2,78.6
Follow the path |goto 42.2,78.6 < 6
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Go through the Gordok Courtyard Door
map Dire Maul/1
path follow loose; loop off; ants curved; dist 10
path	28.1,76.6	27.0,70.0	26.3,57.7
path	23.8,60.4
Follow the path |goto 23.8,60.4 < 6
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Run up the ramp
click Ogre Tannin Basket##179499
collect Ogre Tannin##18240 |goto 23.1,56.3
step
Jump down here |goto 25.2,58.4
talk Knot Thimblejack##14338
turnin The Gordok Ogre Suit##27120 |goto 28.5,55.8
collect Gordok Ogre Suit##18258 |n
|tip This is a reward for completing this quest.
step
Enter Blackrock Depths |goto Blackrock Depths/1 34.7,78.1 < 10000 |c
step
map Blackrock Depths/1
path follow smart; loop off; ants curved; dist 15
path	38.2,76.2	41.2,72.4
Go through the East Garrison Door |goto Blackrock Depths/1 40.7,67.1 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
click The Shadowforge Lock
Unlock The Shadowforge Lock |scenariogoal 1/25080 |goto Blackrock Depths/1 40.7,61.4
step
map Blackrock Depths/1
path follow smart; loop off; ants curved; dist 15
path	41.5,65.8	43.1,63.0	45.5,60.2
path	Blackrock Depths/2 46.1,86.6	Blackrock Depths/2 47.7,82.1	Blackrock Depths/2 42.5,73.5
path	Blackrock Depths/2 38.6,76.1	Blackrock Depths/2 36.7,77.9	Blackrock Depths/2 41.5,68.3
path	Blackrock Depths/1 41.1,39.5	Blackrock Depths/1 45.3,37.3	Blackrock Depths/2 45.9,65.9
path	Blackrock Depths/2 50.4,66.5
Follow this path to the Grim Guzzler |goto Blackrock Depths/2 50.4,66.5	< 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Dark Iron Brewer##28067
|tip Select the dialogue options until he passes out.
click Mug of Dire Brew##190394
collect Dire Brew##38320 |goto Blackrock Depths/2 50.0,61.0
step
Now that you have collected all of the materials, you can start going through the challenges to obtain this pet
Enter the cave |goto Winterspring/0 48.74,-2.44 |walk
|tip It is a cave to the very North of Winterspring over the mountains and all the way down on the ground.
|tip You will need a flying mount to get here.
confirm
step
_Warning:_ Make sure you follow the paths
|tip Do not take any shortcuts. It seems that if you drop down at any point during this puzzle, you will get teleported to the beginning.
|tip Go through the cave until you get to the Fire Barrier.
|tip To get through the barrier, you must use your Major Fire Protection Potion.
Use your Major Fire Protection Potion |havebuff 28511 |use Major Fire Protection Potion##22841 |goto Winterspring/0 48.96,0.17
step
Next will be a Fel Barrier
|tip To get through this barrier, you will need to use all of the other Major Protection potions you aquired.
Use your Major Arcane Protection Potion |havebuff 28536 |use Major Arcane Protection Potion##22845 |goto 49.27,0.56
Use your Major Holy Protection Potion |havebuff 28538 |use Major Holy Protection Potion##22847 |goto 49.27,0.56
Use your Major Nature Protection Potion |havebuff 28513 |use Major Nature Protection Potion##22844 |goto 49.27,0.56
Use your Major Frost Protection Potion |havebuff 28512 |use Major Frost Protection Potion##22842 |goto 49.27,0.56
Use your Major Shadow Protection Potion |havebuff 28537 |use Major Shadow Protection Potion##22846 |goto 49.27,0.56
|tip You will have to wait 5 minutes in between using each of these potions.
|tip These potion buffs will last 2 hours only while inside the cave.
|tip Do not log out.
|tip Once you have all of these buffs go through the barrier.
step
The next puzzle requires you to use your Noggenfogger Elixir to walk past a _Diligent Watcher_
|tip It looks like a Gargoyle in a corner along the path, past the Fel Barrier.
|tip Use the elixir as soon as you get past the Fel Barrier.
_Warning:_ You must use the Noggenfogger Elixir until you get the Skeleton disguise buff!
Use your Noggenfogger Elixir |use Noggenfogger Elixir##8529
Gain the skeleton disguise buff |havebuff 16591
step
Once you get past the water, there will be 2 paths: one on the right and one on the left
Use your Scotty's Lucky Coin |use Scotty's Lucky Coin##89373
Take the path on the right with the vines |havebuff 130121
|tip Once past the barrier, click the water coin in the small pond within this room.
|tip DO NOT touch the water.
click Water Stone##272434
|tip It is a very small blue stone in the water.
collect Water Stone##147455 |goto Winterspring/0 47.68,1.47
step
Once the Water Stone is collected, you will need to leave this room
Use the Water Stone |use Water Stone##147455
Go through the Water Barrier |goto Winterspring/0 48.30,2.99
confirm
step
Next, you will need to run by the Stone Watcher. To do this you will need to use your Dire Brew
Use your Dire Brew |use Dire Brew##38320
Gain the Dire Brew buff |havebuff 51010 |goto Winterspring/0 48.67,5.05
step
Run up the left path until you get to the Ethereal Barrier
Use your Ethereal Oil |use Ethereal Oil##44958
Gain the Ethereal Oil buff |havebuff 62408 |goto Winterspring/0 49.67,4.66
step
Go to the Strange Stone |goto Winterspring/0 50.50,4.63
Use your Gordok Ogre Suit |use Gordok Ogre Suit##18258
Use your Winterfall Firewater |use Winterfall Firewater##12820
clicknpc Strange Stone##54213
Gain the Winterfall Firewater buff |havebuff 17038
click the dialogue box
confirm
step
Go back out to this gate |goto Winterspring/0 49.55,4.31
Use your Pygmy Oil until you turn into a Pygmy |use Pygmy Oil##40195
Gain the Pygmy Oil buff |havebuff 53806
|tip Once you're a Pygmy, you can run through this gate.
step
Summon your Perky Pug
|tip Apply your Little Princess costume to your Perky Pug.
clicknpc the Wisdom Cube##53730 |goto Winterspring/0 49.17,3.71
Click the Dialogue box _"Place Hand beneath Cube"_
confirm
step
Go back out the gate and go down the bottom path
|tip Make sure you follow the path down.
_CANCEL_ your Winterfall Firewater buff |nobuff 17038
|tip You can do this by right-clicking the buff icon located on the upper-right corner of your screen.
Once the Winterfall Firewater buff is canceled, use your Scroll of Intellect |use Scroll of Intellect##955
Gain the Intellect buff |havebuff 8096
click Tarnished Plaque##272483
|tip Do this after gaining the buff.
confirm
step
Once you do this, follow the path down to the water, making sure you do not drop down
click Oddly-Colored Egg##272487
|tip Go through the water and click the Oddly-Colored Egg.
collect Sun Darter Hatchling##142223 |n |use Sun Darter Hatchling##142223
learnpet Sun Darter Hatchling##382
step
Congratulations!
You are now the proud owner of a Sun Darter Hatchling.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Trashy",{
patch='71500',
source='Vendor',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Critter pet: Trashy",
pet=2004,
},[[
step
talk Conjurer Margoss##108825
|tip To reach Margoss, you will need to use a Goblin Glider to fly to the island |only if walking
buy 1 Trashy##143842 |n
|tip This pet costs 50 Drowned Mana.
|tip Drowned Mana is fished up in the pond on the island.
learnpet Trashy##2004 |goto Dalaran L/10 23.10,-11.40 |use Trashy##143842
step
Congratulations!
You have collected the _Trashy_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Tricorne",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Critter pet: Tricorne",
pet=2057,
},[[
step
This pet can be bought with the currency obtained from completing the Pet Battle dungeon "Deadmines"
|tip You can only obtain one Old Bottle Cap per week. You will need 2 Old Bottle Caps to purchase this pet.
Check out our Pet Battle dungeon guide to accomplish this |confirm |or |next "Pets & Mounts Guides\\Battle Pets\\Battle Pet Dungeons\\Deadmines"
collect 2 Old Bottle Cap##151191 |or
step
talk Marcus "Bagman" Brown##119390
buy 1 Tricorne##150741 |n |use Tricorne##150741
learnpet Tricorne##244440 |goto Westfall/0 41.47,71.13
step
Congratulations!
You are now the proud owner of a Tricorne.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Zoom",{
patch='70300',
source='Achievement',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Critter pet: Zoom",
pet=1903,
},[[
step
Enter the cave |goto Highmountain/0 42.61,25.37 < 20 |walk
Follow the path |goto Highmountain/31 41.60,60.70 < 15 |walk
Follow the path |goto 58.91,42.30 < 25 |walk
Help Zoom win the snail race in Stonedark Grotto |achieve 10626 |goto 71.84,62.00
|tip You need to block the path of the other snails by standing in front of them.
|tip Using size-increasing items will help you accomplish this.
step
Once this achievement is complete, this pet should be in your mailbox
collect Zoom##137298 |n
learnpet Zoom##1903 |use Zoom##137298
step
Congratulations!
You have collected the _Zoom_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Ageless Bronze Drake",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Dragonkin pet: Ageless Bronze Drake",
pet=2072,
},[[
step
This pet has a chance to drop from Time-Lost Wallets
|tip These can be obtained by running the Death to Chromie scenario.
|tip You have a chance to select the Time-Lost Wallets when using Sands of Time when inside the scenario.
Check out our Death to Chromie Portal guide to accomplish this |confirm |or |next "Dungeon Guides\\Legion Scenarios\\The Deaths of Chromie Portals"
Or, if you have completed the Portal guide, check out our Death to Chromie Speed Run guide |confirm |or |next "Dungeon Guides\\Legion Scenarios\\The Deaths of Chromie Speed Run"
|confirm |or
step
collect Time-Lost Wallet##151482+ |n
Open up the Time-Lost Wallet |use Time-Lost Wallet##151482
collect Ageless Bronze Drake##151828 |n |use Ageless Bronze Drake##151828
learnpet Ageless Bronze Drake##248240
step
Congratulations!
You have collected the _Ageless Bronze Drake_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Bronze Proto-Whelp",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Dragonkin pet: Bronze Proto-Whelp",
pet=2071,
},[[
step
This pet has a chance to drop from Time-Lost Wallets
|tip These can be obtained by running the Death to Chromie scenario.
|tip You have a chance to select the Time-Lost Wallets when using Sands of Time inside the scenario.
Check out our Death to Chromie Portal guide to accomplish this |confirm |or |next "Dungeon Guides\\Legion Scenarios\\The Deaths of Chromie Portals"
Or, if you have completed the Portal guide, check out our Death to Chromie Speed Run guide |confirm |or |next "Dungeon Guides\\Legion Scenarios\\The Deaths of Chromie Speed Run"
|confirm |or
step
collect Time-Lost Wallet##151482+ |n
Open up the Time-Lost Wallet |use Time-Lost Wallet##151482
collect Bronze Proto-Whelp##151829 |n |use Bronze Proto-Whelp##151829
learnpet Bronze Proto-Whelp##248025
step
Congratulations!
You have collected the _Bronze Proto-Whelp_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Discarded Experiment",{
patch='73000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Dragonkin pet: Discarded Experiment",
pet=2079,
},[[
step
kill Maloriak##41378
|tip Refer to the Blackwing Descent raiding guide to accomplish this.
Click here to load the "Blackwing Descent" raid guide |confirm |next "Dungeon Guides\\Cataclysm Raids\\Blackwing Descent"
collect Experiment-In-A-Jar##152967 |use Experiment-In-A-Jar##152967
learnpet Discarded Experiment##2079 |goto Blackwing Descent/2 71.4,70.2
step
Congratulations!
You have collected the _Discarded Experiment_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Dream Whelpling",{
patch='70300',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Dragonkin pet: Dream Whelpling",
pet=1722,
},[[
step
Enter the Emerald Dream raid instance |goto Val'sharah/0 56.39,36.97
The _Dream Whelpling_ is level 25
This pet is at the end of the instance after defeating the last boss, _Xavius_
|tip It is a dragonkin found in the last room of the instance.
|tip Challenge one to a pet battle and capture it.
learnpet Dream Whelpling##1722
step
Congratulations!
You have collected the _Dream Whelpling_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Infinite Hatchling",{
patch='71500',
source='Vendor',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Dragonkin pet: Infinite Hatchling",
pet=2017,
},[[
step
This pet can only be purchased during the _Mists of Pandaria Timewalking_ week
|tip You will need to collect 2,200 Timewarped Badges by completing timewalking dungeons.
|confirm
step
talk Mistweaver Xia##118828
buy 1 Infinite Hatchling##143953 |n
learnpet Infinite Hatchling##2017 |goto Timeless Isle/0 43.09,55.23 |use Infinite Hatchling##143953
step
Congratulations!
You have collected the _Infinite Hatchling_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Ironbound Proto-Whelp",{
patch='71000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Dragonkin pet: Ironbound Proto-Whelp",
pet=1956,
},[[
step
Enter the Ulduar raid |goto The Storm Peaks/0 41.56,17.79 < 15 |c
|tip You can get this pet on any difficulty.
step
kill Razorscale##33186
|tip Razorscale is across the hall from Ignis the Furnace Master.
collect Ironbound Collar##142087 |n |use Ironbound Collar##142087
|tip Ironbound Collar has a very low chance to drop.
learnpet Ironbound Proto-Whelp##1956
step
Congratulations!
You have collected the _Ironbound Proto-Whelp_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Nightmare Whelpling",{
patch='70300',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Dragonkin pet: Nightmare Whelpling",
pet=1723,
},[[
step
Enter the Emerald Dream raid instance |goto Val'sharah/0 56.39,36.97
This pet is a rare drop from the boss _Dragons of Nightmare_ within the Emerald Dream
collect Nightmare Whelpling##136903 |n
learnpet Nightmare Whelpling##1723 |use Nightmare Whelpling##136903
step
Congratulations!
You have collected the _Nightmare Whelpling_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Stormborne Whelpling",{
patch='70300',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Dragonkin pet: Stormborne Whelpling",
pet=1721,
},[[
step
Follow the path |goto Stormheim/0 53.53,83.62 < 20 |only if walking
Follow the path |goto 51.97,80.31 < 20 |only if walking
Follow the path |goto 50.63,76.63 < 20 |only if walking
kill Stormwing Matriarch##91795
collect Stormborne Whelpling##129208 |n
learnpet Stormborne Whelpling##1721 |use Stormborne Whelpling##129208 |goto Stormheim/0 49.58,72.41
step
Congratulations!
You have collected the _Stormborne Whelpling_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Twilight Clutch-Sister",{
patch='73000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Dragonkin pet: Twilight Clutch-Sister",
pet=2081,
},[[
step
kill Valiona##45992, Theralion##45993
|tip Refer to The Bastion of Twilight raiding guide to accomplish this.
Click here to load "The Bastion of Twilight" raid guide |confirm |next "Dungeon Guides\\Cataclysm Raids\\The Bastion of Twilight"
collect Odd Twilight Egg##152969 |n |use Odd Twilight Egg##152969
learnpet Twilight Clutch-Sister##2081 |goto The Bastion of Twilight/1 53.9,78.4
step
Congratulations!
You have collected the _Twilight Clutch-Sister_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Amalgam of Destruction",{
patch='73000',
source='Achievement',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Elemental pet: Amalgam of Destruction",
pet=2093,
},[[
step
Click here to load the "Raiding with Leashes V: Cuteaclysm" achievement guide |confirm |next "Achievement Guides\\Pet Battles\\Collect\\Legion\\Raiding with Leashes V: Cuteaclysm"
|tip Amalgam of Destruction is rewarded after earning this achievement.
Earn the _Raiding with Leashes V: Cuteaclysm_ achievement |achieve 12079
step
collect Amalgam of Destruction##152963 |use Amalgam of Destruction##152963
learnpet Amalgam of Destruction##2093
step
Congratulations!
You have collected the _Amalgam of Destruction_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Autumnal Sproutling",{
patch='60100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Elemental pet: Autumnal Sproutling",
pet=1429,
},[[
step
talk Draemus##107326
buy 1 Autumnal Sproutling##113569 |n |goto Dalaran L/10 58.75,39.17
|tip This costs 100 Pet Charms.
learnpet Autumnal Sproutling##1429 |use Autumnal Sproutling##113569
step
Congratulations!
You have collected the _Autumnal Sproutling_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Blazehound",{
patch='73000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Elemental pet: Blazehound",
pet=2086,
},[[
step
kill Shannox##53691
|tip Refer to the Firelands raiding guide to accomplish this.
Click here to load the "Firelands" raid guide |confirm |next "Dungeon Guides\\Cataclysm Raids\\Firelands"
collect Smoldering Treat##152975 |n |use Smoldering Treat##152975
learnpet Blazehound##2086 |goto Firelands/1 49.2,46
step
Congratulations!
You have collected the _Blazehound_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Bound Stream",{
patch='73000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Elemental pet: Bound Stream",
pet=2082,
},[[
step
kill Elemental Monstrosity##43735
|tip Refer to The Bastion of Twilight raiding guide to accomplish this.
Click here to load "The Bastion of Twilight" raid guide |confirm |next "Dungeon Guides\\Cataclysm Raids\\The Bastion of Twilight"
collect Lesser Circle of Binding##152970 |n |use Lesser Circle of Binding##152970
learnpet Bound Stream##2082 |goto The Bastion of Twilight/2 42.5,45.5
step
Congratulations!
You have collected the _Bound Stream_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Broot",{
patch='70300',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Elemental pet: Broot",
pet=1777,
},[[
step
This pet can only be obtained by Druids
This requires the Tier 2 Order Hall upgrade ability _Evergreen_
This upgrade allows you to harvest and plant 2 plots every 3 days
|tip Harvesting from these plots has a chance to give you this pet.
Click here to continue |confirm
step
Harvest from the plots in your Druid Order Hall
collect Broot##129362 |n
|tip There is a low chance to obtain this pet from each harvest.
learnpet Broot##1777 |use Broot##129362
step
Congratulations!
You have collected the _Broot_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Cinderweb Recluse",{
patch='73000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Elemental pet: Cinderweb Recluse",
pet=2087,
},[[
step
kill Beth'tilac##52498
Refer to the Firelands raiding guide to accomplish this
Click here to load the "Firelands" raid guide |confirm |next "Dungeon Guides\\Cataclysm Raids\\Firelands"
collect Cinderweb Egg##152976 |n |use Cinderweb Egg##152976
learnpet Cinderweb Recluse##2087 |goto Firelands/1 20.8,32
step
Congratulations!
You have collected the _Cinderweb Recluse_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Corrupted Blood",{
patch='73000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Elemental pet: Corrupted Blood",
pet=2091,
},[[
step
kill Deathwing##46471
|tip This comes from the Deathwing's Spine encounter.
|tip Refer to the Dragon Soul raiding guide to accomplish this.
Click here to load the "Dragon Soul" raid guide |confirm |next "Dungeon Guides\\Cataclysm Raids\\Throne of the Four Winds"
collect Elementium Back Plate##152980 |n |use Elementium Back Plate##152980
learnpet Corrupted Blood##2091 |goto Dragon Soul/7 47.8,53.8
step
Congratulations!
You have collected the _Corrupted Blood_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Drafty",{
patch='73000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Elemental pet: Drafty",
pet=2085,
},[[
step
kill Nezir##45871
|tip Refer to the Throne of the Four Winds raiding guide to accomplish this.
Click here to load the "Throne of the Four Winds" raid guide |confirm |next "Dungeon Guides\\Cataclysm Raids\\Throne of the Four Winds"
collect Breezy Essence##152974 |n |use Breezy Essence##152974
learnpet Drafty##2085 |goto Throne of the Four Winds/1 47.5,26
step
Congratulations!
You have collected the _Drafty_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Everliving Spore",{
patch='72000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Elemental pet: Everliving Spore",
pet=1998,
},[[
step
Complete the Wailing Caverns daily quest
collect Damp Pet Supplies##143753 |n
Open up the Damp Pet Supplies |use Damp Pet Supplies##143753
|tip There is a chance for this pet to be within this bag of pet supplies.
collect Everliving Spore##143756 |n |use Everliving Spore##143756
learnpet Everliving Spore##1998
step
Congratulations!
You have collected the _Everliving Spore_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Fel Lasher",{
patch='73000',
source='Profession',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Elemental pet: Fel Lasher",
pet=2117,
},[[
step
Learn the Herbalism profession |skill Herbalism,1
|tip You must have the Herbalism profession to loot this pet.
step
label "path"
map Krokuun/0
path loop off; ants curved; dist 20
path	59.69,61.63	58.57,57.77	58.09,54.90
path	60.47,53.83	61.68,49.79	61.62,46.21
path	62.70,44.86	64.21,41.74	64.72,38.52
path	67.08,36.65	69.20,34.09	71.48,34.17
click Fel-Encrusted Herb##273052
|tip This pet has a small chance to drop from Argus herb nodes.
Follow the path until you reach the end |goto 71.48,34.17 |noway |c |or
collect Fel Lasher##153045 |n
Use the Fel Lasher |use Fel Lasher##153045
learnpet Fel Lasher##2117 |use Fel Lasher##153045 |next "end" |or
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
|tip This pet has a small chance to drop from Argus herb nodes.
Follow the path until you reach the end |goto 57.97,61.39 |noway |c |next "path" |or
collect Fel Lasher##153045 |n
Use the Fel Lasher |use Fel Lasher##153045
learnpet Fel Lasher##2117 |use Fel Lasher##153045 |or
step
label "end"
Congratulations!
You have collected the _Fel Lasher_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Fetid Waveling",{
patch='70300',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Elemental pet: Fetid Waveling",
pet=1802,
},[[
step
talk Filandras Mistcaller##94480 |goto Val'sharah/0 67.56,44.87
kill Pollous the Fetid##94485 |goto Val'sharah/0 67.56,44.87
collect Fetid Waveling##130168 |n
learnpet Fetid Waveling##1802 |use Fetid Waveling##130168
step
Congratulations!
You have collected the _Fetid Waveling_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Flickering Argunite",{
patch='73000',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flickering Argunite pet.",
condition_suggested=function() return level<=45 end,
pet=2127,
},[[
step
The _Flickering Argunite_ is level 25
|tip It floats around this area.
|tip Challenge one to a pet battle and capture it.
learnpet Flickering Argunite##2127 |goto Krokuun/0 39.11,61.10
step
Congratulations!
You have collected the _Flickering Argunite_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Magma Rageling",{
patch='71000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Elemental pet: Magma Rageling",
pet=1955,
},[[
step
Enter the Ulduar raid |goto The Storm Peaks/0 41.56,17.79 < 15 |c
|tip You can get this pet on any difficulty.
step
kill Ignis the Furnace Master##33118
|tip Ignis the Furnace Master is the final boss of the instance.
collect Red-Hot Coal##142086 |n |use Red-Hot Coal##142086
|tip Red-Hot Coal has a very low chance to drop.
learnpet Magma Rageling##1955
step
Congratulations!
You have collected the _Magma Rageling_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Nightmare Lasher",{
patch='70300',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Elemental pet: Nightmare Lasher",
pet=1932,
},[[
step
This pet can only be obtained by Druids
This requires the Tier 2 Order Hall Advancement upgrade ability _Evergreen_
This upgrade allows you to harvest and plant 2 plots every 3 days
|tip Harvesting from these plots has a chance to give you this pet.
Click here to continue |confirm
step
Harvest from the plots in your Druid Order Hall
collect Nightmare Lasher##140741 |n
|tip There is a low chance to obtain this pet from each harvest.
learnpet Nightmare Lasher##1932 |use Nightmare Lasher##140741
step
Congratulations!
You have collected the _Nightmare Lasher_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Nightmare Treant",{
patch='71000',
source='Achievement',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Elemental pet: Nightmare Treant",
pet=1933,
},[[
step
This pet is a reward for completing the Pet Battle achievement _Family Familiar_
Check out our achievement guides to accomplish this
Click here to continue |confirm
step
Once this achievement is complete, this pet will be in your mailbox
collect Nightmare Treant##140761 |n
learnpet Nightmare Treant##1933 |use Nightmare Treant##140761
step
Congratulations!
You have collected the _Nightmare Treant_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Paradox Spirit",{
patch='71500',
source='Vendor',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Elemental pet: Paradox Spirit",
pet=2018,
},[[
step
This pet can only be purchased during the _Mists of Pandaria Timewalking_ week
|tip You will need to collect 2,200 Timewarped Badges by completing timewalking dungeons.
|confirm
step
talk Mistweaver Xia##118828
buy 1 Paradox Spirit##143954 |n
learnpet Paradox Spirit##2018 |goto Timeless Isle/0 43.09,55.23 |use Paradox Spirit##143954
step
Congratulations!
You have collected the _Paradox Spirit_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Snaplasher",{
patch='71000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Elemental pet: Snaplasher",
pet=1960,
},[[
step
Enter the Ulduar raid |goto The Storm Peaks/0 41.56,17.79 < 15 |c
|tip You can get this pet on any difficulty.
step
kill Freya##32906
|tip Freya is in the room opposite of Kologarn.
collect Blessed Seed##142091 |n |use Blessed Seed##142091
|tip Blessed Seed has a very low chance to drop.
learnpet Snaplasher##1960
step
Congratulations!
You have collected the _Snaplasher_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Stormstruck Beaver",{
patch='70300',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Elemental pet: Stormstruck Beaver",
pet=1917,
},[[
step
Check around Stonescar Gorge |goto Stormheim/0 41.77,61.65 < 25 |walk
Check around the waterfall |goto 47.10,61.79 < 25 |walk
Check around Ashlid's Bay |goto 51.95,64.77 < 25 |walk
Check around Amberfal Mesa |goto 47.76,52.41 < 25 |walk
Check around the Weeping Bluffs |goto 34.98,51.66 < 25 |walk
Check around the water |goto 29.25,45.01 < 25 |walk
The _Stormstruck Beaver_ is level 25
|tip This is a rare spawn from the Bucktooth Flappers.
|tip You will find them around the water of the coordinates indicated.
|tip Challenge one to a pet battle and capture it.
learnpet Stormstruck Beaver##1917
step
Congratulations!
You have collected the _Stormstruck Beaver_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Surger",{
patch='73000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Elemental pet: Surger",
pet=2088,
},[[
step
kill Baleroc##53494
|tip Refer to the Firelands raiding guide to accomplish this.
Click here to load the "Firelands" raid guide |confirm |next "Dungeon Guides\\Cataclysm Raids\\Firelands"
collect Vibrating Stone##152977 |n |use Vibrating Stone##152977
learnpet Surger##2088 |goto Firelands/1 49.2,32.8
step
Congratulations!
You have collected the _Surger_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Unstable Tendril",{
patch='73000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Elemental pet: Unstable Tendril",
pet=2092,
},[[
step
kill Deathwing##46471
Refer to the Dragon Soul raiding guide to accomplish this
Click here to load the "Dragon Soul" raid guide |confirm |next "Dungeon Guides\\Cataclysm Raids\\Throne of the Four Winds"
collect Severed Tentacle##152981 |n |use Severed Tentacle##152981
learnpet Unstable Tendril##2092 |goto Dragon Soul/7 47.8,53.8
step
Congratulations!
You have collected the _Unstable Tendril_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Winter Rageling",{
patch='71000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Elemental pet: Winter Rageling",
pet=1959,
},[[
step
Enter the Ulduar raid |goto The Storm Peaks/0 41.56,17.79 < 15 |c
|tip You can get this pet on any difficulty.
step
kill Hodir##32845
|tip Hodir is down the right passageway after Kologarn
click Cache of Winter##194307
collect Ominous Pile of Snow##142090 |n |use Ominous Pile of Snow##142090
|tip Ominous Pile of Snow has a very low chance to drop.
learnpet Winter Rageling##1959
step
Congratulations!
You have collected the _Winter Rageling_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Zephyrian Prince",{
patch='73000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Elemental pet: Zephyrian Prince",
pet=2084,
},[[
step
kill Al'Akir##46753
|tip Refer to the Throne of the Four Winds raiding guide to accomplish this.
Click here to load the "Throne of the Four Winds" raid guide |confirm |next "Dungeon Guides\\Cataclysm Raids\\Throne of the Four Winds"
collect Zephyr's Call##152973 |n |use Zephyr's Call##152973
learnpet Zephyrian Prince##2084 |goto Throne of the Four Winds/1 47.5,50
step
Congratulations!
You have collected the _Zephyrian Prince_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Albatross Chick",{
patch='70300',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Albatross Chick",
pet=1708,
},[[
step
Follow the path |goto Azsuna/0 31.17,45.50 < 25 |only if walking
Follow the path |goto 32.07,41.31 < 25 |only if walking
The _Albatross Chick_ is level 25
|tip It is a bird that can be found around this area.
|tip Some of these are flying in the air and can not be battled. Look for the ones that are close to the ground.
|tip Challenge one to a pet battle and capture it.
learnpet Albatross Chick##1708 |goto 30.72,35.67
step
Congratulations!
You have collected the _Albatross Chick_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Albino Buzzard",{
patch='71000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Albino Buzzard",
pet=1984,
},[[
step
You must completed the quest _Battle Pet Tamers: Eastern Kingdoms_ to unlock this quest
Click here to load the Battle Pet quest guide to accomplish this |next "Pets & Mounts Guide\\Battle Pet Quests\\Battle Pet Tamers: Eastern Kingdoms" |confirm |only Alliance
Click here to load the Battle Pet quest guide to accomplish this |next "Pets & Mounts Guide\\Battle Pet Quests\\Battle Pet Tamers: Kalimdor" |confirm |only Horde
confirm
step
talk Crysa##115286
accept Crysa's Flyers##45083 |goto Northern Barrens/0 63.59,35.81
step
talk Crysa##115286
Tell him "_Think you can take me in a pet battle? Let's fight!_"
|tip You will not be able to challenge Crysa if you have the "Pet Recovery" debuff, wait for it to fall off.
Defeat Crysa |q 45083/1 |goto 63.59,35.81
step
talk Crysa##115286
turnin Crysa's Flyers##45083 |goto 63.59,35.81
step
collect Torn Sack of Pet Supplies##142447 |n |use Torn Sack of Pet Supplies##142447
|tip The Albino Buzzard has a small chance to drop from the Torn Sack.
learnpet Albino Buzzard##1984 |use Albino Buzzard##142448 |goto Northern Barrens 63.6,35.8
step
Congratulations!
You have collected the _Albino Buzzard_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Antoran Bilescourge",{
patch='73000',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Antoran Bilescourge",
pet=2126,
},[[
step
The _Antoran Bilescourge_ is level 25
|tip They fly around the area.
|tip Challenge one to a pet battle and capture it.
learnpet Antoran Bilescourge##2126 |goto Antoran Wastes/0 68.42,31.34
step
Congratulations!
You have collected the _Antoran Bilescourge_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Bilescourge",{
patch='73000',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Bilescourge",
pet=2124,
},[[
step
Follow the path |goto Krokuun/0 59.11,68.30 < 25
Follow the path |goto 59.67,65.02 < 25
Follow the path |goto 62.03,62.20 < 25
The _Bilescourge_ is level 25
|tip They fly around the area.
|tip Challenge one to a pet battle and capture it.
learnpet Bilescourge##2124 |goto 66.81,67.41
step
Congratulations!
You have collected the _Bilescourge_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Bloodgazer Hatchling",{
patch='71000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Bloodgazer Hatchling",
pet=1977,
},[[
step
The world quest _Bloodgazer Swarm!_ must be active to earn this pet
Click here to continue |confirm
step
talk Applebough##96990
buy 1 Azsunian Grapes##128843 |n
collect 1 Azsunian Grapes##128843 |goto Dalaran L/10 42.94,57.40
|tip You need this in your inventory to lure the Orphaned Bloodgazer.
step
kill Bloodgazer Matriarch##115674 |goto Azsuna/0 35.6,5.6
talk Orphaned Bloodgazer##115741
|tip The Orphan will spawn shortly after killing the Matriarch.
Choose _"<Give the orphaned bloodgazer some of your Azsunian Grapes.>"_
learnpet Bloodgazer Hatchling##1977 |goto 35.5,7.5
step
Congratulations!
You have collected the _Bloodgazer Hatchling_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Coastal Sandpiper",{
patch='70300',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Coastal Sandpiper",
pet=1914,
},[[
step
The _Coastal Sandpiper_ is level 25
|tip It is a bird found around this area.
|tip Challenge one to a pet battle and capture it.
learnpet Coastal Sandpiper##1914 |goto Azsuna/0 54.18,32.77
step
Congratulations!
You have collected the _Coastal Sandpiper_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Crackers",{
patch='72000',
source='Quest',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Crackers",
pet=1997,
},[[
step
You must be a Rogue to obtain this pet
confirm
step
talk Maiev Shadowsong##116576
accept Champions of Legionfall##47137
|only Rogue
step
talk Lord Jorach Ravenholdt##101513
accept The Pirate's Bay##46322 |goto Dalaran L/4 41.31,77.29
|only Rogue
step
talk Lilian Voss##119822
turnin The Pirate's Bay##46322 |goto Azsuna/0 57.67,63.46
accept What's the Cache?##46323 |goto Azsuna/0 57.67,63.46
accept False Orders##46324 |goto Azsuna/0 57.67,63.46
|only Rogue
step
talk Fleet Admiral Tethys##118125
accept Loot and Plunder!##45073 |goto 57.65,63.55
|only Rogue
stickystart "Blacksail Booty"
step
Go onto the ship |goto 60.59,68.50 |only if walking
Plant the First False Orders |q 46324/1 |goto 61.01,68.29
|only Rogue
step
Follow the path |goto 60.07,70.87 |only if walking
Plant the Second False Orders |q 46324/2 |goto 59.48,72.60
|only Rogue
step
Follow the path |goto 58.04,76.27 |only if walking
Go onto the ship |goto 58.68,77.42 |only if walking
kill Master Gunner Prix##115242
collect Fel-Infused Gunpowder Cache##142116 |q 46323/1 |goto 59.22,77.93
|only Rogue
step
label "Blacksail Booty"
clicknpc Blacksail Booty##116035
Burn 8 Blacksail Booty |q 45073/1
|only Rogue
step
talk Lilian Voss##119822
turnin What's the Cache?##46323 |goto Azsuna/0 57.67,63.46
turnin False Orders##46324 |goto Azsuna/0 57.67,63.46
|only Rogue
step
talk Fleet Admiral Tethys##118125
turnin Loot and Plunder!##45073 |goto 57.65,63.55
|only Rogue
step
talk Crackers##118126
accept Fit For a Pirate##45848 |goto 57.67,63.54
collect Crackers##143679 |n |use Crackers##143679
learnpet Crackers##1997
|only Rogue
step
Congratulations!
You have collected the _Crackers_ battle pet
|only Rogue
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Direbeak Hatchling",{
patch='71000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Direbeak Hatchling",
pet=1975,
},[[
step
The world quest _Direbeak Swarm!_ must be active to earn this pet
Click here to continue |confirm
step
talk Fialla Sweetberry##96784
buy 1 Pungent Vrykul Gamalost##128763 |n
collect 1 Pungent Vrykul Gamalost##128763 |goto Dalaran L/10 53.06,34.76
|tip You need this in your inventory to lure the Orphaned Direbeak.
step
kill Direbeak Matriarch##115671 |goto Stormheim/0 78.8,75.8
talk Orphaned Direbeak##
|tip The Orphan will spawn shortly after killing the Matriarch.
Choose _"<Give the orphaned snowfeather some of your Pungent Vrykul Gamalost.>"_
learnpet Direbeak Hatchling##1975 |goto 79.74,69.56
step
Congratulations!
You have collected the _Direbeak Hatchling_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Docile Skyfin",{
patch='73000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Docile Skyfin",
pet=2118,
},[[
stickystart "Fel_Spotted_Egg"
step
label "first"
Follow the path |goto Antoran Wastes/0 70.76,46.43
Follow the path |goto 67.46,45.27
Follow the path |goto 64.14,46.68
Enter the cave |goto 64.33,48.83
|tip Avoid the lava when possible.
kill Varga##126208
collect Fel-Spotted Egg##153190 |n |goto 65.01,50.78
Use the Cracked Fel-Spotted Egg |use Cracked Fel-Spotted Egg##153191
learnpet Docile Skyfin##2118 |use Docile Skyfin##153054 |next "finish"
Click here try for another egg |confirm
step
Enter the cave |goto Eredath/0 38.63,55.46
kill Kaara the Pale##126860
collect Fel-Spotted Egg##153190 |n |goto 37.34,55.10
Use the Cracked Fel-Spotted Egg |use Cracked Fel-Spotted Egg##153191
learnpet Docile Skyfin##2118 |use Docile Skyfin##153054 |next "finish"
Click here try for another egg |confirm
step
kill Sabuul##126898
collect Fel-Spotted Egg##153190 |n |goto 43.8,48.2
Use the Cracked Fel-Spotted Egg |use Cracked Fel-Spotted Egg##153191
learnpet Docile Skyfin##2118 |use Docile Skyfin##153054 |next "finish"
Click here try for another egg |confirm
step
Follow the path |goto Krokuun/0 63.41,43.68
Follow the path |goto 66.41,37.26 |goto 71.16,32.53
kill Naroua##126419
collect Fel-Spotted Egg##153190 |n |goto 70.8,33.4
Use the Cracked Fel-Spotted Egg |use Cracked Fel-Spotted Egg##153191
learnpet Docile Skyfin##2118 |use Docile Skyfin##153054 |next "finish"
Click here try for another egg |confirm |next "first"
step
label "Fel_Spotted_Egg"
This pet comes from the the item "Fel-Spotted Egg"
|tip When you get one, they will take 5 days to become cracked.
|tip Looting the Cracked Fel-Spotted Egg will give you the chance to collect the Docile Skyfine battle pet.
|tip There are 4 rare spawns that can drop these.
|tip NOTE: You can only loot each rare once per day.
Click here to continue |confirm
step
label "finish"
Congratulations!
You have collected the _Docile Skyfin_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Echo Batling",{
patch='60100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Echo Batling",
pet=1761,
},[[
step
Enter the cave |goto Highmountain/0 51.59,37.54 < 15 |walk
The _Echo Batling_ is level 25
|tip These can be found in any of the big caves in Highmountain.
|tip It is a bat found around this area.
|tip Challenge one to a pet battle and capture it.
learnpet Echo Batling##1761 |goto 50.05,35.31
step
Congratulations!
You have collected the _Echo Batling_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Fel-Afflicted Skyfin",{
patch='73000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Fel-Afflicted Skyfin",
pet=2119,
},[[
stickystart "Fel_Spotted_Egg"
step
label "first"
Follow the path |goto Antoran Wastes/0 70.76,46.43
Follow the path |goto 67.46,45.27
Follow the path |goto 64.14,46.68
Enter the cave |goto 64.33,48.83
|tip Avoid the lava when possible.
kill Varga##126208
collect Fel-Spotted Egg##153190 |n |goto 65.01,50.78
Use the Cracked Fel-Spotted Egg |use Cracked Fel-Spotted Egg##153191
learnpet Fel-Afflicted Skyfin##2119 |use Fel-Afflicted Skyfin##153055 |next "finish"
Click here try for another egg |confirm
step
Enter the cave |goto Eredath/0 38.63,55.46
kill Kaara the Pale##126860
collect Fel-Spotted Egg##153190 |n |goto 37.34,55.10
Use the Cracked Fel-Spotted Egg |use Cracked Fel-Spotted Egg##153191
learnpet Fel-Afflicted Skyfin##2119 |use Fel-Afflicted Skyfin##153055 |next "finish"
Click here try for another egg |confirm
step
kill Sabuul##126898
collect Fel-Spotted Egg##153190 |n |goto 43.8,48.2
Use the Cracked Fel-Spotted Egg |use Cracked Fel-Spotted Egg##153191
learnpet Fel-Afflicted Skyfin##2119 |use Fel-Afflicted Skyfin##153055 |next "finish"
Click here try for another egg |confirm
step
Follow the path |goto Krokuun/0 63.41,43.68
Follow the path |goto 66.41,37.26 |goto 71.16,32.53
kill Naroua##126419
collect Fel-Spotted Egg##153190 |n |goto 70.8,33.4
Use the Cracked Fel-Spotted Egg |use Cracked Fel-Spotted Egg##153191
learnpet Fel-Afflicted Skyfin##2119 |use Fel-Afflicted Skyfin##153055 |next "finish"
Click here try for another egg |confirm |next "first"
step
label "Fel_Spotted_Egg"
This pet comes from the the item "Fel-Spotted Egg"
|tip When you get one, they will take 5 days to become cracked.
|tip Looting the Cracked Fel-Spotted Egg will give you the chance to collect the Docile Skyfine battle pet.
|tip There are 4 rare spawns that can drop these.
|tip NOTE: You can only loot each rare once per day.
Click here to continue |confirm
step
label "finish"
Congratulations!
You have collected the _Fel-Afflicted Skyfin_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Felbat Pup",{
patch='70300',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Felbat Pup",
pet=1889,
},[[
step
The _Felbat Pup_ was only availble during the Legion Invasion pre-event
|tip These are tradable. If you are looking to get one, check your Auction House. They might be sold there.
collect Felbat Pup##136924 |n
learnpet Felbat Pup##1889 |use Felbat Pup##136924
step
Congratulations!
You have collected the _Felbat Pup_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Firebat Pup",{
patch='70300',
source='Discovery',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Firebat Pup",
pet=1928,
},[[
step
This pet is a reward for completing the Order Hall Mission _Friends, Not Food_
collect Firebat Pup##140316 |n
learnpet Firebat Pup##1928 |use Firebat Pup##140316
step
Congratulations!
You have collected the _Firebat Pup_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Fledgling Kingfeather",{
patch='70300',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Fledgling Kingfeather",
pet=1709,
},[[
step
Follow the path up |goto Azsuna/0 39.28,32.70 < 15 |only if walking
The _Fledgling Kingfeather_ is level 25
|tip It is a bird found around this mountaintop.
|tip This is a rare spawn from the other fledgling birds around this area.
|tip Challenge one to a pet battle and capture it.
learnpet Fledgling Kingfeather##1709 |goto Azsuna/0 39.28,29.16
step
Congratulations!
You have collected the _Fledgling Kingfeather_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Fledgling Oliveback",{
patch='70300',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Fledgling Oliveback",
pet=1710,
},[[
step
Follow the path up |goto Azsuna/0 39.28,32.70 < 15 |only if walking
The _Fledgling Oliveback_ is level 25
|tip It is a bird found around this mountaintop.
|tip Challenge one to a pet battle and capture it.
learnpet Fledgling Oliveback##1710 |goto Azsuna/0 39.28,29.16
step
Congratulations!
You have collected the _Fledgling Oliveback_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Fledgling Warden Owl",{
patch='70300',
source='Vendor',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Fledgling Warden Owl",
pet=1716,
},[[
step
Earn Revered reputation with The Wardens |complete rep("The Wardens")>=Revered
talk Marin Bladewing##107379
buy 1 Fledgling Warden Owl##136898 |n |goto Azsuna/0 48.17,73.88
|tip This pet costs 500 gold.
learnpet Fledgling Warden Owl##1716 |use Fledgling Warden Owl##136898
step
Congratulations!
You have collected the _Fledgling Warden Owl_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Golden Eaglet",{
patch='70300',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Golden Eaglet",
pet=1712,
},[[
step
The _Golden Eaglet_ is level 25
|tip It is a bird found around this area.
|tip Challenge one to a pet battle and capture it.
learnpet Golden Eaglet##1712 |goto Stormheim/0 62.03,52.76
step
Congratulations!
You have collected the _Golden Eaglet_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Hog-Nosed Bat",{
patch='70300',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Hog-Nosed Bat",
pet=1762,
},[[
step
The _Hog-Nosed Bat_ is level 25
|tip It is a bat found around this mountainside.
|tip Kill other battle pets to force respawns.
|tip Challenge one to a pet battle and capture it.
learnpet Hog-Nosed Bat##1762 |goto Highmountain/0 52.90,35.35
step
Congratulations!
You have collected the _Hog-Nosed Bat_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Long-Eared Owl",{
patch='70300',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Long-Eared Owl",
pet=1713,
},[[
step
The _Long-Eared Owl_ is level 25
|tip It is a bird found around this area.
|tip Challenge one to a pet battle and capture it.
learnpet Long-Eared Owl##1713 |goto Stormheim/0 44.11,45.55
step
Congratulations!
You have collected the _Long-Eared Owl_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Nightwatch Swooper",{
patch='70300',
source='Vendor',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Nightwatch Swooper",
pet=1715,
},[[
step
talk Draemus##107326
buy 1 Nightwatch Swooper##129878 |n |goto Dalaran L/10 58.75,39.17
|tip This costs 100 Pet Charms.
learnpet Nightwatch Swooper##1715 |use Nightwatch Swooper##129878
step
Congratulations!
You have collected the _Nightwatch Swooper_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Northern Hawk Owl",{
patch='70300',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Northern Hawk Owl",
pet=1714,
},[[
step
The _Northern Hawk Owl_ is level 25
|tip It is a bird found around this area.
|tip Challenge one to a pet battle and capture it.
learnpet Northern Hawk Owl##1714 |goto Highmountain/0 55.11,85.66
step
Congratulations!
You have collected the _Northern Hawk Owl_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Orphaned Felbat",{
patch='72000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Orphaned Felbat",
pet=2050,
},[[
step
Earn exalted reputation with Legionfall |complete rep("Legionfall")>=Exalted
|tip Use the "7.2 New Content" guide to accomplish this.
|tip Complete world quests in the Broken Shore.
|tip Use the "World Quests" dailies guide to accomplish this.
step
Once exalted you will need to obtain 10,000 more reputation.
|tip Use the "7.2 New Content" guide to accomplish this.
|tip Complete world quests in the Broken Shore.
|tip Use the "World Quests" dailies guide to accomplish this.
confirm
step
When you get to 10,000 reputation you will receive a quest.
accept The Bounties of Legionfall##46777
step
talk Captain Ruysantos##120414
turnin The Bounties of Legionfall##46777 |goto Broken Shore/0 42.2,59.0
step
collect Legionfall Chest##147361 |n
Open up your Legionfall Chest |use Legionfall Chest##147361
|tip This pet will have a small chance to be inside.
collect Orphaned Felbat##147841 |use Orphaned Felbat##147841
learnpet Orphaned Felbat##2050
step
Congratulations!
You are now the proud owner of a Orphaned Felbat.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Pygmy Owl",{
patch='70300',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Pygmy Owl",
pet=1907,
},[[
step
talk Lorel Sagefeather##92111 |goto Val'sharah/0 59.80,77.34
Tell her "I will help you defeat Gorebeak."
kill Gorebeak##92117
collect Pygmy Owl##130154 |n
learnpet Pygmy Owl##1907 |use Pygmy Owl##130154 |goto Val'sharah/0 59.80,77.34
step
Congratulations!
You have collected the _Pygmy Owl_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Sharptalon Hatchling",{
patch='71000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Sharptalon Hatchling",
pet=1976,
},[[
step
The world quest _Sharptalon Swarm!_ must be active to earn this pet
Click here to continue |confirm
step
talk Fialla Sweetberry##96784
buy 1 Dried Bilberries##128837 |n
collect 1 Dried Bilberries##128837 |goto Dalaran L/10 53.05,34.72
|tip You need this in your inventory to lure the Orphaned Sharptalon.
step
kill Sharptalon Matriarch##115672 |goto Val'sharah/0 48.00,9.70
talk Orphaned Sharptalon##115740
Choose _"<Give the orphaned sharptalon some of your Dried Bilberries.>"_
learnpet Sharptalon Hatchling##1976 |goto Val'sharah/0 47.0,10.4
step
Congratulations!
You have collected the _Sharptalon Hatchling_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Shimmering Aquafly",{
patch='70300',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Shimmering Aquafly",
pet=1734,
},[[
step
The _Shimmering Aquafly_ is level 25
|tip It is a glowfly found all around this area.
|tip Challenge one to a pet battle and capture it.
learnpet Shimmering Aquafly##1734 |goto Val'sharah/0 53.75,81.20
step
Congratulations!
You have collected the _Shimmering Aquafly_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Skyfin Juvenile",{
patch='73000',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Skyfin Juvenile",
pet=2134,
},[[
step
The _Skyfin Juvenile_ is level 25
|tip There are a few around the area.
|tip Challenge one to a pet battle and capture it.
learnpet Skyfin Juvenile##2134 |goto Eredath/0 45.53,63.40
step
Congratulations!
You have collected the _Skyfin Juvenile_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Skyhorn Nestling",{
patch='70300',
source='Quest',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Skyhorn Nestling",
pet=1711,
},[[
step
Follow the path up |goto Highmountain/0 51.65,43.96 < 20 |only if walking
Enter the cave |goto Highmountain/0 51.58,37.40 < 15 |walk
talk Oren Windstrider##94068
accept Fledgling Worm Guts##40069 |goto 50.89,36.58
accept Eagle Egg Recovery##40070 |goto 50.89,36.58
accept Tamer Takedown##40071 |goto 50.89,36.58
stickystart "Eagle_Eggs"
step
Cross the bridge |goto 50.31,35.69 < 15 |walk
Follow the path down |goto 48.83,35.30 < 20 |walk
kill Fledgling Rockcrawler##98038+
collect 12 Worm Guts##137569 |q 40069/1 |goto 49.51,36.57
step
label "Eagle_Eggs"
click Eagle Eggs##244841
|tip They look like big white eggs on the ground around this area.
collect 10 Eagle Egg##128760 |q 40070/1 |goto 49.91,36.03
step
Walk onto the bridge |goto 49.40,38.04 < 15 |walk
talk Oren Windstrider##94068
turnin Fledgling Worm Guts##40069 |goto 49.46,39.23
turnin Eagle Egg Recovery##40070 |goto 49.46,39.23
accept Going Down, Going Up##42425 |goto 49.46,39.23
step
Follow the path |goto 49.69,40.59 < 20 |walk
kill Tamer Korgrul##94051 |q 40071/1 |goto 49.11,42.25
step
Follow the path |goto 49.51,41.68 < 20 |walk
Walk onto the bridge |goto 49.60,40.14 < 15 |walk
talk Oren Windstrider##94068
turnin Tamer Takedown##40071 |goto 49.46,39.23
step
clicknpc Oren's Rappel Point##116438
|tip You will be lowered down by a rope.
click Oren's Prized Possessions##250413
|tip It's an object sitting in the water directly below you.
|tip You will be pulled back up automatically.
collect Oren's Prized Possessions##137566 |q 42425/1 |goto 49.45,39.30
step
talk Oren Windstrider##94068
turnin Going Down, Going Up##42425 |goto 49.46,39.23
accept Empty Nest##39305 |goto 49.46,39.23
step
Follow the path up |goto 48.81,35.95 < 15 |walk
Cross the bridge |goto 49.69,34.82 < 15 |walk
Leave the cave |goto 51.50,37.31 < 20 |walk
Run up the rocks here |goto 51.92,36.43 < 10 |only if walking
click Eagle Egg##244841
|tip It's on top of the cave entrance.
Place the Eagle Eggs |q 39305/1 |goto 51.70,36.78
step
Enter the cave |goto 51.58,37.40 < 15 |walk
talk Oren Windstrider##94068
turnin Empty Nest##39305 |goto 50.90,36.60
collect Skyhorn Nestling##129277 |n
learnpet Skyhorn Nestling##1711 |use Skyhorn Nestling##129277
step
Congratulations!
You have collected the _Skyhorn Nestling_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Snowfeather Hatchling",{
patch='71000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Snowfeather Hatchling",
pet=1974,
},[[
step
The world quest _Snowfeather Swarm!_ must be active to earn this pet
Click here to continue |confirm
step
talk Amisi Azuregaze##96806
buy 1 Smoked Elderhorn##128839 |n
collect 1 Smoked Elderhorn##128839 |goto Dalaran L/10 49.77,40.15
|tip You will need this later to feed an NPC.
step
kill Snowfeather Matriarch##115673 |goto Highmountain/0 35.0,22.66
talk Oprhaned Snowfeather##115737
|tip The Orphan will spawn shortly after killing the Matriarch.
Choose _"<Give the orphaned snowfeather some of your Smoked Elderhorn.>"_
learnpet Snowfeather Hatchling##1974 |goto 32.6,28.2
step
Congratulations!
You have collected the _Snowfeather Hatchling_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Vale Flitter",{
patch='70300',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Vale Flitter",
pet=1737,
},[[
step
The _Vale Flitter_ is level 25
|tip They are flying mobs around this area.
|tip Challenge one to a pet battle and capture it.
learnpet Vale Flitter##1737 |goto Val'sharah/0 47.93,77.43
step
Congratulations!
You have collected the _Vale Flitter_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Young Venomfang",{
patch='72000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Flying pet: Young Venomfang",
pet=2000,
},[[
step
Complete the Wailing Caverns daily quest
collect Damp Pet Supplies##143753 |n
Open up the Damp Pet Supplies |use Damp Pet Supplies##143753
|tip There is a chance for this pet to be within this bag of pet supplies.
collect Young Venomfang##143755 |n |use Young Venomfang##143755
learnpet Young Venomfang##2000
step
Congratulations!
You have collected the _Young Venomfang_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Rebellious Imp",{
patch='73000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Humanoid pet: Rebellious Imp",
pet=2135,
},[[
step
Follow the path |goto Antoran Wastes/0 67.80,33.77 < 20
Follow the path |goto 65.38,30.91 < 20
Enter the cave |goto 65.61,26.12 < 20
Follow the path |goto 66.44,22.94 < 20
Follow the path up |goto 67.65,20.25 < 20
Follow the path up |goto 65.41,19.91 < 20
kill Mother Rosula##127705
collect Rebellious Imp##153252 |n |use Rebellious Imp##153252
learnpet Rebellious Imp##2135 |goto 66.6,17.8
step
Congratulations!
You have collected the _Rebellious Imp_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Snobold Runt",{
patch='71000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Humanoid pet: Snobold Runt",
pet=1953,
},[[
step
Enter the Trial of the Crusader raid |goto Icecrown/0 75.05,21.81 < 5 |c
|tip You can get this pet on any difficulty.
step
kill Icehowl##34797
|tip Icehowl is the last boss in the instance.
collect Magnataur Hunting Horn##142084 |n |use Magnataur Hunting Horn##142084
|tip Magnataur Hunting Horn has a very low chance to drop.
learnpet Snobold Runt##1953
step
Congratulations!
You have collected the _Snobold Runt_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Squirky",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Humanoid pet: Squirky",
pet=1935,
},[[
step
_Squirky_ is level 25
|tip Many Squirkies can be found on this small island.
|tip Challenge one to a pet battle and capture it.
|tip This island is swarming with elite Murlocs, so watch out!
learnpet Squirky##225663 |goto Azsuna/0 19.56,21.57
step
Congratulations!
You have collected the _Squirky_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Sunborn Val'kyr",{
patch='70300',
source='Vendor',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Humanoid pet: Sunborn Val'kyr",
pet=1885,
},[[
step
Earn Revered reputation with the Valarjar |complete rep("Valarjar")>=Revered
talk Valdemar Stormseeker##106904
buy 1 Sunborn Val'kyr##136920 |n |goto Stormheim/0 60.28,51.35
|tip This pet costs 500 gold.
learnpet Sunborn Val'kyr##106181 |use Sunborn Val'kyr##136920
step
Congratulations!
You have collected the _Sunborn Val'kyr_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Thistleleaf Adventurer",{
patch='70300',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Humanoid pet: Thistleleaf Adventurer",
pet=1803,
},[[
step
This pet has a small chance to drop from the Dreamweaver Provisions emissary quest reward
|tip Emissary quests are available once a day and vary between 6 different factions.
|tip This Emissary cache is rewarded for completing 4 Dreamweaver world quests when the Dreamweaver emissary quest is active.
Click here to continue |confirm
step
talk Sylvia Hartshorn##106901
turnin The Dreamweavers##42170 |goto Val'sharah/0 54.70,73.25
Open the Dreamweaver Provisions |use Dreamweaver Provisions##137560
collect Thistleleaf Adventurer##130167 |n
learnpet Thistleleaf Adventurer##1803 |use Thistleleaf Adventurer##130167
step
Congratulations!
You have collected the _Thistleleaf Adventurer_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Uuna",{
patch='73000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Humanoid pet: Uuna",
},[[
step
Follow the path |goto Antoran Wastes/0 68.36,45.17 < 20
Follow the path |goto 66.63,45.86 < 20
Follow the path |goto 64.12,44.38 < 20
Follow the path |goto 60.00,44.38 < 20
Follow the path |goto 54.58,41.24 < 20
kill Antoran Defender##126193, Tormented Ritualist##126171
collect Call of the Devourer##152786 |goto 52.09,37.68
step
click Intact Fiend Bone##276425
collect Fiend Bone##152991 |goto 52.36,35.29
step
Follow the path |goto 53.34,43.52 < 20
Follow the path |goto 51.57,49.89 < 20
click Intact Ur'zul Bone##276426
collect Ur'zul Bone##152993 |goto 50.45,56.05
step
Follow the path |goto 67.71,33.87 < 20
Follow the path |goto 65.37,30.76 < 20
Enter the cave |goto 65.6,26.3 < 20
Follow the path |goto Antoran Wastes/0 66.49,22.61 < 20
Follow the path |goto 67.73,20.19 < 20
click Intact Imp Bones##276424
collect Imp Bone##152992 |goto 65.89,19.40
step
clicknpc Bone Effigy##127577
|tip You will need to click it twice.
|tip Once you've created the Bone Effigy you won't have to farm the bones from the previous step again.
|tip You will only be able to loot this once per day.
|tip Uuna is a companion pet and cannot battle.
kill The Many-Faced Devourer##127581
collect Uuna's Doll##153195 |n
use Uuna's Doll##153195
Collect the "Uuna" Pet |learnpet Uuna##2136 |goto 54.7,39.1
Click Here to Continue |confirm
step
Congratulations!
You have collected the _Uuna_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Wyrmy Tunkins",{
patch='71000',
source='Profession',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Humanoid pet: Wyrmy Tunkins",
pet=1887,
},[[
step
This pet is a reward for demon Archaeology solves
|tip Keep solving demon artifacts until you encounter the rare that rewards Wyrmy Tunkins.
collect Wyrmy Tunkins##136922 |n
learnpet Wyrmy Tunkins##1887 |use Wyrmy Tunkins##136922
step
Congratulations!
You have collected the _Wyrmy Tunkins_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Arcane Gorger",{
patch='73000',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Magic pet: Arcane Gorger",
pet=2131,
},[[
step
Follow the path up |goto Eredath/0 64.30,41.73
The _Arcane Gorger_ is level 25
|tip They fly around the area.
|tip Challenge one to a pet battle and capture it.
learnpet Arcane Gorger##2131 |goto 64.94,39.89
step
Congratulations!
You have collected the _Arcane Gorger_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Blood Boil",{
patch='71000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Magic pet: Blood Boil",
pet=1964,
},[[
step
Enter the Icecrown Citadel raid |goto Icecrown/0 53.82,87.11 < 10 |c
|tip You can get this pet on any difficulty.
step
kill Deathbringer Saurfang##37813
|tip Deathbringer Saurfang is the fourth boss in the instance.
collect Remains of a Blood Beast##142095 |n |use Remains of a Blood Beast##142095
|tip The Remains of a Blood Beast has a very low chance to drop.
learnpet Blood Boil##1964
step
Congratulations!
You have collected the _Blood Boil_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Celestial Calf",{
patch='70300',
source='Vendor',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Magic pet: Celestial Calf",
pet=1888,
},[[
step
talk Mad Merchant##108468
|tip This is a rare spawn merchant.
|tip Once something is bought from the Mad Merchant, he will stick around for about another hour and then disappear, reseting his respawn timer.
buy 1 Celestial Calf##136923 |n |goto Dalaran L/10 43.31,46.80
|tip This pet costs 1,000,000 gold.
learnpet Celestial Calf##1888 |use Celestial Calf##136923
step
Congratulations!
You have collected the _Celestial Calf_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Court Scribe",{
patch='70300',
source='Vendor',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Magic pet: Court Scribe",
pet=1931,
},[[
step
Earn Revered reputation with the Court of Farondis |complete rep("Court of Farondis")>=Revered
talk Veridis Fallon##107376
buy 1 Court Scribe##140672 |n |goto Azsuna/0 46.91,41.41
|tip This pet costs 500 gold.
learnpet Court Scribe##1931 |use Court Scribe##140672
step
Congratulations!
You have collected the _Court Scribe_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Creeping Tentacle",{
patch='71000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Magic pet: Creeping Tentacle",
pet=1962,
},[[
step
Enter the Ulduar raid |goto The Storm Peaks/0 41.56,17.79 < 15 |c
|tip You can get this pet on any difficulty.
step
kill Yogg-Saron##33288
|tip Yogg-Saron is the final boss of the instance.
collect Wriggling Darkness##142093 |n |use Wriggling Darkness##142093
|tip The Wriggling Darkness has a very low chance to drop.
learnpet Creeping Tentacle##1962
step
Congratulations!
You have collected the _Creeping Tentacle_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Cross Gazer",{
patch='73000',
source='Vendor',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Magic pet: Cross Gazer",
pet=2115,
},[[
step
You will need to farm _1000 Intact Demon Eyes_
|tip To do this, you will need to gain the Agent of the All-Seer buff.
|tip This comes from a Focus that can spawn in random spots in Antoran Wastes.
Click here to continue |confirm
step
label "orb"
Follow the path |goto Antoran Wastes/0 68.29,45.29
Follow the path |goto 65.07,45.53
Follow the path down |goto 60.09,44.99
clicknpc All-Seer's Focus##128151
|tip It's inside of the cave below the bridge.
|tip You need to be at full health or it will kill you.
Gain the Agent of the All-Seer buff |havebuff 237297 |goto 60.22,45.22 |next "farm"
|tip There are multiple spots that the focus can spawn, so some searching will be required.
|tip The buff lasts for one hour.
|tip If you die, enter an instanced area, or leave the zone, you will lose the buff.
If the Focus isn't in the cave, click here for the next location |confirm
step
Follow the path up |goto 58.04,41.45 < 20
Follow the path up |goto 59.26,39.20 < 20
Follow the path |goto 59.33,34.27 < 20
Follow the path up |goto 56.08,34.61 < 20
clicknpc All-Seer's Focus##128151
|tip You need to be at full health or it will kill you.
Gain the Agent of the All-Seer buff |havebuff 237297 |goto 56.7,34.1 |next "farm"
|tip There are multiple spots that the focus can spawn, so some searching will be required.
|tip The buff lasts for one hour.
|tip If you die, enter an instanced area, or leave the zone, you will lose the buff.
If the Focus isn't in the cave, click here for the next location |confirm
step
Enter the building |goto 65.58,26.44 < 25
Follow the path |goto 66.44,23.30 < 20
Follow the path |goto 67.40,19.99 < 20
Follow the path |goto 65.36,19.91 < 20
clicknpc All-Seer's Focus##128151
|tip You need to be at full health or it will kill you.
Gain the Agent of the All-Seer buff |havebuff 237297 |goto 64.41,21.03 |next "farm"
|tip There are multiple spots that the focus can spawn, so some searching will be required.
|tip The buff lasts for one hour.
|tip If you die, enter an instanced area, or leave the zone, you will lose the buff.
If the Focus isn't in the cave, click here for the next location |confirm
step
Enter the cave |goto 67.13,48.73 < 25
clicknpc All-Seer's Focus##128151
Gain the Agent of the All-Seer buff |havebuff 237297 |goto 67.56,47.90 |next "farm"
|tip There are multiple spots that the focus can spawn, so some searching will be required.
|tip The buff lasts for one hour.
|tip If you die, enter an instanced area, or leave the zone, you will lose the buff.
If the Focus isn't in the cave, click here for the next location |confirm
step
Follow the path |goto 68.89,69.44 < 20
Follow the path |goto 64.64,65.82 < 20
Follow the path |goto 61.13,66.83 < 20
clicknpc All-Seer's Focus##128151
|tip You need to be at full health or it will kill you.
Gain the Agent of the All-Seer buff |havebuff 237297 |goto 57.9,66.9 |next "farm"
|tip There are multiple spots that the focus can spawn, so some searching will be required.
|tip The buff lasts for one hour.
|tip If you die, enter an instanced area, or leave the zone, you will lose the buff.
If the Focus isn't in the cave, click here for the next location |confirm |next "orb"
step
label "farm"
'|nobuff 237297 |next "orb" |or
Kill demon enemies around this area
|tip The packs of demons respawn very quickly.
collect 1000 Intact Demon Eyes##153021 |goto 62.21,53.47 |or
|tip If the buff wears off, you will need to get it again.
step
talk Orix the All-Seer##128134
buy 1 Cross Gazer##153026 |n |use Cross Gazer##153026
learnpet Cross Gazer##2115 |goto 60.2,45.4
step
Congratulations!
You have collected the _Cross Gazer_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Eldritch Manafiend",{
patch='70300',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Magic pet: Eldritch Manafiend",
pet=1774,
},[[
step
The _Eldritch Manafiend_ is level 25
|tip This pet only spawns during the night time.
|tip This pet can be found all around the Ley Ruins area.
|tip Challenge one to a pet battle and capture it.
learnpet Eldritch Manafiend##1774 |goto Azsuna/0 55.86,15.33
step
Congratulations!
You have collected the _Eldritch Manafiend_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Erudite Manafiend",{
patch='70300',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Magic pet: Erudite Manafiend",
pet=1773,
},[[
step
The _Erudite Manafiend_ is level 25
|tip This pet only spawns during the day time.
|tip This pet can be found all around the Ley Ruins area.
|tip Challenge one to a pet battle and capture it.
learnpet Erudite Manafiend##1773 |goto Azsuna/0 55.86,15.33
step
Congratulations!
You have collected the _Erudite Manafiend_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Extinguished Eye",{
patch='70300',
source='Vendor',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Magic pet: Extinguished Eye",
pet=1717,
},[[
step
Earn Revered reputation with The Nightfallen |complete rep("The Nightfallen")>=Revered
talk First Arcanist Thalyssra##97140
|tip This NPC's position may differ depending on your progression in Suramar.
buy 1 Extinguished Eye##136899 |n |goto Suramar/0 36.50,46.81
|tip This pet costs 500 gold.
learnpet Extinguished Eye##1717 |use Extinguished Eye##136899
step
Congratulations!
You have collected the _Extinguished Eye_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Eye of Inquisition",{
patch='70300',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Magic pet: Eye of Inquisition",
pet=1719,
},[[
step
kill Felsoul Inquisitor##101878+, Overburdened Taskmaster##106348+, Felsoul Doomguard##100047+, Legion Endbringer##99762+, Wrathguard Fury##99581+, Ravenous Magehunter##99584+, Abhorrent Artificer##106339+, Felsoul Corrupter##110805+
|tip This has around a 0.4% chance to drop.
collect Eye of Inquisition##136901 |n
learnpet Eye of Inquisition##1719 |use Eye of Inquisition##136901 |goto Suramar/0 29.33,61.21
step
Congratulations!
You have collected the _Eye of Inquisition_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Faceless Mindlasher",{
patch='73000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Magic pet: Faceless Mindlasher",
pet=2090,
},[[
step
kill Yor'sahj the Unsleeping##55312
|tip Refer to the Dragon Soul raiding guide to accomplish this.
Click here to load the "Dragon Soul" raid guide |confirm |next "Dungeon Guides\\Cataclysm Raids\\Dragon Soul"
collect Puddle of Black Liquid##152979 |n |use Puddle of Black Liquid##152979
learnpet Faceless Mindlasher##2090 |goto Dragon Soul/3 46.8,49.9
step
Congratulations!
You have collected the _Faceless Mindlasher_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Faceless Minion",{
patch='73000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Magic pet: Faceless Minion",
pet=2083,
},[[
step
kill Cho'gall##43324
|tip Refer to the The Bastion of Twilight raiding guide to accomplish this.
Click here to load "The Bastion of Twilight" raid guide |confirm |next "Dungeon Guides\\Cataclysm Raids\\The Bastion of Twilight"
collect Twilight Summoning Portal##152972 |n |use Twilight Summoning Portal##152972
learnpet Faceless Minion##2083 |goto The Bastion of Twilight/2 73.4,75.4
step
Congratulations!
You have collected the _Faceless Minion_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Felcrazed Wyrm",{
patch='73000',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Magic pet: Felcrazed Wyrm",
pet=2132,
},[[
step
The _Felcrazed Wyrm_ is level 25
|tip They are sparse around the area.
|tip Challenge one to a pet battle and capture it.
learnpet Felcrazed Wyrm##2132 |goto Eredath/0 61.50,23.86
More can also be found around this area |goto 55.63,22.07
step
Congratulations!
You have collected the _Felcrazed Wyrm_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Grasping Manifestation",{
patch='73000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Magic pet: Grasping Manifestation",
pet=2120,
},[[
step
Follow the path |goto Eredath/0 28.63,43.63 < 20 |only if walking
Jump down |goto 29.62,42.49 < 20 |only if walking
kill Ataxon##126887
collect Grasping Manifestation##153056 |n |use Grasping Manifestation##153056
learnpet Grasping Manifestation##2120 |goto 30.12,40.20
step
Congratulations!
You have collected the _Grasping Manifestation_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Hateful Eye",{
patch='70300',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Magic pet: Hateful Eye",
pet=1718,
},[[
step
This pet can only be obtained by Demon Hunters and Warlocks
This requires the Tier 2 Order Hall upgrade ability _Twisting Nether_ for Demon Hunters and _Demonic Offering_ for Warlocks
|tip This upgrade allows you to summon demon bosses that drop various items, including this pet
Click here to continue |confirm
step
Kill the summoned demons
collect Hateful Eye##136900 |n
|tip There is a low chance to obtain this pet from each kill.
learnpet Hateful Eye##1718 |use Hateful Eye##136900
step
Congratulations!
You have collected the _Hateful Eye_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Hungering Claw",{
patch='70300',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Magic pet: Hungering Claw",
pet=1926,
},[[
step
talk Drak'thul##102695 |goto Broken Shore/0 37.08,71.62
|tip Glide down from Dalaran, or buy Water Walking potions to reach him.
Speak with him until he has no more dialogue available
Click here to continue |confirm
step
Follow the path |goto 39.31,77.36 < 30
Follow the path |goto 40.77,77.81 < 30
Follow the path |goto 42.91,74.03 < 30
Follow the path |goto 45.35,69.45 < 30
Follow the path |goto 50.30,64.29 < 30
Follow the path |goto 53.70,59.74 < 30
Follow the path |goto 54.61,53.78 < 30
Enter the cave |goto Broken Shore/0 58.54,54.14 < 30
|tip You can relog to try and get the rocks to disappear if it is blocked off.
|tip You can also die nearby and rez on the other side.
click Mound of Dirt##216161
collect Weathered Relic##139783 |goto 57.40,55.95
|tip It is very difficult to see. It's at the base of the far right bone in the back.
step
Follow the path |goto 51.64,53.24 < 30
Follow the path |goto 54.22,56.63 < 30
Follow the path |goto 53.53,61.42 < 30
Follow the path |goto 50.74,68.94 < 30
Follow the path |goto 39.11,74.66 < 30
Follow the path |goto 37.41,74.29 < 30
talk Drak'thul##102695
Talk with Drak'thul |goto Broken Shore/0 37.08,71.62
Speak with him until he has no more dialogue available
|tip You will need to speak with him multiple times.
Click here to continue |confirm
step
For the next portion of the guide, you _MUST_ attune yourself with the orbs in the order that they are given
Click here to continue |confirm
step
Enter the hidden cave |goto Azsuna/0 37.97,37.41 < 15
|tip The entrance is a bit hidden amongst bushes.
click Hungering Orb##252562
Attune yourself with the Hungering Orb |goto 37.94,35.47
Click here to continue |confirm
step
Follow the path |goto Suramar/0 63.18,34.59 < 10 |notravel
Follow the path |goto 62.54,34.02 < 10 |notravel
Follow the path |goto 62.70,33.17 < 10 |notravel
Enter the cave |goto Stormheim/0 32.79,75.66 < 10 |notravel
click Hungering Orb##252562
Attune yourself with the Hungering Orb |goto Stormheim/0 31.95,74.06
|tip The mob in the cave will likely one shot you, so try to avoid it.
Click here to continue |confirm
step
Follow the path |goto Val'sharah/0 41.39,79.70 < 10
Enter the hidden cave |goto 41.50,81.37 < 10
Go through the narrow passage |goto 41.48,82.11 < 10
click Hungering Orb##252562
Attune yourself with the Hungering Orb |goto 41.93,81.70
|tip There will be an elite that hits fairly hard, try and keep it stunned.
Click here to continue |confirm
step
Enter the cave |goto Broken Shore/0 29.64,78.06 < 15
|tip It is underwater.
|tip You will be fatigued until you go a bit further into the cave.
click Hungering Orb##252562
Attuned yourself with the Hungering Orb |goto 32.98,74.62
|tip Avoid the steam coming out of the ground.
Click here to continue |confirm
step
Enter the hidden cave |goto Azsuna/0 59.37,13.15 < 10
click Hungering Orb##252562
Attune yourself with the Hungering Orb |goto 60.13,14.59
Click here to continue |confirm
step
Enter cave |goto Broken Shore/0 116.60,-210.00 < 30
Swim underwater |goto Broken Shore/0 116.10,-206.00 < 30
click Hungering Orb##252562
Attune yourself with the Hungering Orb |goto 115.90,-205.00
|tip Avoid the steam on the ground.
|tip It will start to mist up when the steam vents are about to shoot.
Click here to continue |confirm
step
Follow the path |goto Highmountain/0 52.39,40.67 < 20
Follow the path |goto Highmountain/0 52.33,38.62 < 20
Follow the path |goto 52.42,36.22 < 20
Follow the path |goto 53.68,35.56 < 20
Follow the path |goto 55.14,37.52 < 20
Jump down here |goto 55.12,38.57 < 20
|tip Use a glider if you have one.
Enter the hidden cave |goto 55.84,38.37 < 5
click Hungering Orb##252562
Attune yourself with the Hungering Orb |goto 55.80,37.92
|tip It's inside of the bones on the ground.
Click here to continue |confirm
step
Enter the hidden cave |goto Azsuna/0 54.06,26.20 < 10
click Hungering Orb##252562
Attune yourself with the Hungering Orb |goto 54.36,24.37
Click here to continue |confirm
step
You will need to glide down from Dalaran if you don't have an Eye of Azshara flight path already
|tip If you already have this flight path, take it.
Follow the path |goto Dalaran L/10 78.76,46.55 < 20
Follow the path |goto 73.44,86.12 < 20
Glide down to Eye of Azshara from here |goto 62.27,99.09 < 30
Reach Eye of Azshara |goto Eye of Azshara Map/0 45.38,-2.13 |notravel
Follow the path |goto Eye of Azshara Map/0 38.25,46.10 < 30
Follow the path |goto 43.83,54.07 < 30
Follow the path |goto 45.16,60.95 < 30
Follow the path |goto 46.22,65.87 < 30
Follow the path |goto 48.62,67.49 < 30
Follow the path |goto 52.00,67.63 < 30
Follow the path |goto 56.86,67.81 < 30
Follow the path |goto 61.01,64.57 < 30
Follow the path |goto 62.62,61.19 < 30
Follow the path |goto 64.43,58.43 < 30
Follow the path |goto 68.51,59.35 < 30
Follow the path |goto 70.86,64.19 < 30
Follow the path |goto 74.29,71.84 < 30
Follow the path |goto 75.91,78.58 < 30
Enter the ship |goto 79.19,89.02 < 5
|tip the Entrance is slightly hidden.
Navigate through and swim through the second hidden hole |goto 77.55,88.96 < 5
|tip Swim up, then back down towards the destination.
click Hungering Orb##252562
Attune yourself with the Hungering Orb |goto 75.02,83.36
Click here to continue |confirm
step
click Hungering Orb##252562
Attune yourself with the Hungering Orb |goto Broken Shore/0 37.49,71.62
|tip Glide down from Dalaran, or buy Water Walking potions to reach him.
Click here to continue |confirm
step
Once you have followed the previous steps, a World Quest for Kosumoth the Hungering will appear in the Eye of Azshara World Map
The reward for the quest resets every 2 weeks, so you will need to wait patiently if what you want isn't available
accept DANGER: Kosumoth the Hungering##43798 |goto Eye of Azshara Map/0 46.6,49.2
step
kill Kosumoth the Hungering##111573 |q 43798/1 |goto Eye of Azshara Map/0 46.6,49.2
|tip He patrols around.
collect Hungering Claw##140261 |n
learnpet Hungering Claw##1926 |use Hungering Claw##140261
step
Congratulations!
You have collected the _Hungering Claw_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Mailemental",{
patch='73500',
source='Achievement',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Magic pet: Mailemental.",
pet=2158,
},[[
step
click Lost Mail##247797
|tip Lost Mail is found near mailboxes in Dalaran.
|tip It spawns randomly and periodically.
|tip In your minimap tracking menu, enable Mailbox under the Townsfolk category.
|tip Go from mailbox to mailbox searching for a tiny letter at the base.
|tip You can also purchase it from the Auction House.
collect Lost Mail##134859 |n
Read the Lost Mail |use Lost Mail##135479 |only if itemcount(135479) >= 1
accept Lost Mail##41368 |goto Dalaran L/10 58.98,48.70 |only if itemcount(135479) == 0
accept Lost Mail##41411 |goto Dalaran L/10 58.98,48.70 |only if itemcount(135479) >= 1
|tip Only one of these will be available.
step
Enter the tunnel |goto 60.41,48.57 < 7 |walk
Go down the stairs |goto Dalaran L/11 76.95,67.93 < 7 |walk
Go down the stairs |goto 73.02,64.98 < 7 |walk
Go down the stairs |goto 70.11,62.34 < 7 |walk
Follow the path |goto 64.82,55.80 < 7 |walk
Follow the path |goto 60.23,49.36 < 10 |walk
Enter the tunnel |goto 59.70,39.41 < 7 |walk
Leave the tunnel |goto 67.27,25.33 < 7 |walk
talk Madam Goya##100986
|tip During periods without guards, The Underbelly is a PvP zone.
|tip Along the path as you reach the bottom of the stairs, talk to Raethan to hire a guard if you desire protection.
|tip Guards last for five minutes.
turnin Lost Mail##41368 |goto 71.41,17.92 |only if haveq(41368)
turnin Lost Mail##41411 |goto 71.41,17.92 |only if haveq(41411)
step
Enter the tunnel |goto 67.39,25.13 < 7 |walk
Leave the tunnel |goto 59.70,39.38 < 7 |walk
Enter the tunnel |goto 55.70,46.98 < 7 |walk
Leave the tunnel |goto 52.95,51.95 < 7 |walk
Follow the path |goto 40.99,42.02 < 7 |walk
Enter the tunnel |goto 34.74,43.60 < 7 |walk
Leave the tunnel |goto 31.30,43.23 < 7 |walk |c |q 41397
step
Enter the tunnel |goto 29.42,49.60 < 7 |walk
Go up the ramp |goto 27.36,53.52 < 7 |walk
Go up the ramp |goto 23.52,55.13 < 7 |walk
Go up the stairs |goto 20.26,57.31 < 7 |walk
Go up the stairs |goto 24.84,57.31 < 7 |walk
Leave the tunnel |goto Dalaran L/10 34.61,45.56 < 7 |walk |c |q 41397
step
Follow the path |goto 33.91,39.18 < 7 |walk
Follow the path |goto 32.05,34.54 < 10 |walk
click Mail Tube##280797 |goto 33.46,31.60 < 7 |walk
Enter The Postmaster's Office |goto 39.46,41.83 < 7 |noway |c |q 41397
step
talk The Postmaster##103976
accept Return to Sender##46278 |goto 37.62,40.15
step
Return #9# letters |q 46278/1 |goto 38.98,40.71
|tip Click letters floating in the air around the room.
|tip Each one you click will return one letter.
step
talk The Postmaster##103976
turnin Return to Sender##46278 |goto 37.62,40.15
accept A Huge Package##41397 |goto 37.62,40.15
step
click Sack of Solid Stone
Heft the Solid Stone |q 41397/1 |goto 39.75,39.07
step
click Mail Tube##280797 |goto 37.87,42.14
Leave The Postmaster's Office |goto 32.99,31.62 |noway |c |q 41397
step
Follow the path |goto 32.12,35.47 < 10 |walk
Follow the path |goto 38.93,44.80 < 10 |walk
Follow the path |goto 48.51,26.70 < 10 |walk
Deliver 1,362 pieces of solid stone |q 41397/2 |goto 44.34,17.78
|tip Use the extra action button that appears on-screen.
step
Follow the path |goto 48.53,26.98 < 10 |only if walking
Follow the path |goto 39.21,45.21 < 10 |only if walking
Follow the path |goto 31.91,35.16 < 10 |only if walking
click Mail Tube##280797 |goto 33.47,31.62 < 7
Enter The Postmaster's Office |goto 39.46,41.83 < 7 |noway |c |q 41397
step
talk The Postmaster##103976
turnin A Huge Package##41397 |goto 37.61,40.15
accept Priority Delivery##41367 |goto 37.61,40.15
step
click Portal to the Frozen Throne
Take the portal to the Frozen Throne |q 41367/1 |goto 38.67,40.17
step
clicknpc The Lich King##103996
Retrieve the Forgotten Loot |q 41367/2 |goto Icecrown Citadel L/4 49.35,70.79
step
kill Nexus-Lord Ashaal##132999
Slay Nexus-Lord Ashaal |q 41367/3 |goto 49.35,70.79
step
click Portal to Dalaran##251123 |goto 49.86,38.98
Return to Dalaran |goto Dalaran L/10 60.92,44.72 < 10 |noway |c |q 41367
step
Locate the Stalwart Adventurer |q 41367/4 |goto Feralas/0 68.69,73.06
step
talk Johnny Awesome##52562
turnin Priority Delivery##41367 |goto 68.69,73.06
accept Service with a Smile##41394 |goto 68.69,73.06
step
Follow the path |goto 70.24,72.59 < 10 |only if walking
Follow the path |goto 70.64,72.70 < 7 |only if walking
talk Gott Weedlespan##51735
Tell him _"I.... have to sell this horse to you."_
Invincible's Reins sold |q 41394/1 |goto 70.76,73.08
step
Follow the path |goto 70.58,72.64 < 10 |only if walking
Follow the path |goto 70.11,72.67 < 10 |only if walking
talk Johnny Awesome##52562
turnin Service with a Smile##41394 |goto 68.69,73.07
accept Due Reward##41395 |goto 68.69,73.07
step
clicknpc Wilson##104110
Honor Twinkles' memory |q 41395/1 |goto Hillsbrad Foothills/0 38.72,59.99
step
Click the Quest Complete Box:
turnin Due Reward##41395
step
click Mail Tube##280797 |goto Dalaran L/10 33.47,31.62 < 7
Enter The Postmaster's Office |goto 39.46,41.83 < 7 |noway |c |q 50247
step
talk The Postmaster##103976
accept The Mail Must Flow##50247 |goto 37.61,40.13
step
talk The Postmaster##103976 |goto 37.61,40.13
Tell him _"I want to sort letters!"_
|tip Each letter will have an address.
|tip Click the portal for the zone that corresponds to the address.
Sort at Least 15 Letters |q 50247/1 |goto 37.59,40.53
step
talk The Postmaster##103976
turnin The Mail Must Flow##50247 |goto 37.61,40.13
step
To earn this achievement, you will need to sort 30 letters within 60 seconds
talk The Postmaster##103976 |goto 37.61,40.13
Tell him _"I want to sort letters!"_
|tip Each letter will have an address.
|tip Click the portal for the zone that corresponds to the address.
Earn the _Post Haste_ achievement |achieve 12431 |goto 37.59,40.53
step
collect Mailemental##156721 |n
|tip The Postmaster will mail this to you. Collect it at the nearest mailbox.
learnpet Mailemental##2158 |use Mailemental##156721
step
Congratulations!
You have collected the _Mailemental_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Sanctum Cub",{
patch='71000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Magic pet: Sanctum Cub",
pet=1958,
},[[
step
Enter the Ulduar raid |goto The Storm Peaks/0 41.56,17.79 < 15 |c
|tip You can get this pet on any difficulty.
step
kill Auriaya##33515
|tip Auriaya patrols the ring past Kologarn.
collect Glittering Ball of Yarn##142089 |n |use Glittering Ball of Yarn##142089
|tip Glittering Ball of Yarn has a very low chance to drop.
learnpet Sanctum Cub##1958
step
Congratulations!
You have collected the _Sanctum Cub_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Shadow",{
patch='73000',
source='In-GameShop',
author="support@zygorguides.com",
description="\nTo collect this pet, you must purchase it from Blizzard store for $10 USD.",
pet=2062,
},[[
step
collect Shadow##151234 |only if not haspet(2062)
|tip You must purchase this pet in the Blizzard store. It costs $10 USD.
|tip After purchasing it, check your in-game mail.
step
Use Shadow |use Shadow##151234
learnpet Shadow##2062
step
_Congratulations!_
You Collected the "Shadow" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Stardust",{
patch='71000',
source='Quest',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Magic pet: Stardust",
pet=1969,
},[[
step
Complete the _Raiding with Leashes IV: Wrath of the Lich King_ achievement |achieve 11320
|tip You will receive a Celestial Invitation in the mail.
step
collect Celestial Invitation##142210 |n
|tip Retrieve this from your mailbox.
accept Celestial Invitation##44767
step
talk Algalon the Observer##115307
Challenge Algalon to a pet battle and defeate him |q 44767/1 |goto The Storm Peaks/0 41.6,24.4
step
talk Algalon the Observer##115307
turnin Celestial Invitation##44767 |goto 41.6,24.4
step
collect Stardust##142100 |n |use Stardust##142100
learnpet Stardust##1969
step
Congratulations!
You have collected the _Stardust_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Void Shardling",{
patch='73000',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Magic pet: Void Shardling",
pet=2130,
},[[
step
The _Void Shardling_ is level 25
|tip They are sparse around the area.
|tip They may appear along the way to the given coordinates.
|tip Challenge one to a pet battle and capture it.
learnpet Void Shardling##2130 |goto Eredath/0 33.23,62.55
More can be found here |goto 41.94,48.44
step
Congratulations!
You have collected the _Void Shardling_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Wonderous Wisdomball",{
patch='70300',
source='Quest',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Magic pet: Wonderous Wisdomball",
pet=1937,
},[[
step
This pet is rewarded for completing a small quest line from the Strange Humming Crystal item
|tip The Strange Humming Crystal has a chance to drop from Kirin Tor Chests.
|tip Emissary quests are available once a day and vary between 6 different factions.
|tip This emissary chest is rewarded for completing 4 Kirin Tor world quests when the Kirin Tor Emissary quest is active.
Click here to continue |confirm
step
Open the Kirin Tor Chest |use Kirin Tor Chest##141350
|tip Complete Kirin Tor Emissary quests to acquire these chests.
collect Strange Humming Crystal##141349 |n
|tip This has a small chance to be in this chest.
accept Strange Humming Crystal##141349
step
talk Archmage Khadgar##90417
turnin Strange Humming Crystal##141349 |goto Dalaran L/10 28.56,48.35
accept Enemies Everywhere##44412 |goto Dalaran L/10 28.56,48.35
step
Enter the Underbelly |goto Dalaran L/10 34.87,45.49
talk Classic Larry##113784
Tell him that you know his secret
kill Classic Larry##113784 |q 44412/5 |goto Dalaran L/11 19.21,58.25
|tip He has around 10 million HP.
step
talk Punchy Lou##113775
|tip He is inside the Lounge.
Tell him that you know his secret
kill Punchy Lou##113775 |q 44412/1 |goto Dalaran L/10 47.05,38.36
|tip He has around 10 million HP.
|tip Run away from him when he jumps around like crazy.
step
talk Li-An Skymirror##113781
Tell her that you know her secret
kill Li-An Skymirror##113781 |q 44412/6 |goto Dalaran L/10 44.72,23.81
|tip She has around 10 million HP.
|tip Interrupt her heal.
step
talk Savash Windcalller##113783
Tell her that you know her secret
kill Savash Windcalller##113783 |q 44412/3 |goto Dalaran L/10 57.97,42.28
|tip She has around 10 million HP.
step
talk Innocent Jim##113780
Tell him that you know his secret
kill Innocent Jim##113780 |q 44412/7 |goto Dalaran L/10 65.35,46.36
|tip He has around 10 million HP.
step
talk Sister Might##113779
|tip She is in the Arsenal building on the 2nd floor.
Tell her that you know her secret
kill Sister Might##113779 |q 44412/8 |goto Dalaran L/10 55.32,64.46
|tip She has around 10 million HP.
step
talk Hannis Shoalwalker##113782
Tell her that you know her secret
kill Hannis Shoalwalker##113782 |q 44412/2 |goto Dalaran L/10 52.33,67.13
|tip She has around 10 million HP.
step
talk Hugh Mann##113785
Tell him that you know his secret
kill Hugh Mann##113785 |q 44412/4 |goto Dalaran L/10 45.53,76.72
|tip He has around 10 million HP.
step
talk Archmage Khadgar##90417
turnin Enemies Everywhere##44412 |goto Dalaran L/10 28.56,48.35
collect Wonderous Wisdomball##141348 |n
learnpet Wonderous Wisdomball##113827 |use Wonderous Wisdomball##141348
step
Congratulations!
You have collected the _Wonderous Wisdomball_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Alarm-o-Bot",{
patch='70300',
source='Vendor',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Mechanical pet: Alarm-o-Bot",
pet=1805,
},[[
step
talk Draemus##107326
buy 1 Alarm-o-Bot##136910 |n |goto Dalaran L/10 58.75,39.17
|tip This costs 200 Pet Charms.
learnpet Alarm-o-Bot##1805 |use Alarm-o-Bot##136910
step
Congratulations!
You have collected the _Alarm-o-Bot_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\G0-R41-0N Ultratonk",{
patch='71000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Mechanical pet: G0-R41-0N Ultratonk",
pet=1961,
},[[
step
Enter the Ulduar raid |goto The Storm Peaks/0 41.56,17.79 < 15 |c
|tip You can get this pet on any difficulty.
step
kill Mimiron##33350
|tip Mimiron is down the upper-left passageway.
click Cache of Innovation##194789
collect Overcomplicated Controller##142092 |n |use Overcomplicated Controller##142092
|tip Overcomplicated Controller has a very low chance to drop.
learnpet G0-R41-0N Ultratonk##1961
step
Congratulations!
You have collected the _G0-R41-0N Ultratonk_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Knockoff Blingtron",{
patch='70300',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Mechanical pet: Knockoff Blingtron",
pet=1806,
},[[
step
This pet is obtained through the new Blingtron daily quest
|tip Engineers can put these down and anyone can receive the gift package once it is placed.
talk Blingtron 6000##101527
collect Blingtron 6000 Gift Package##132892 |n |use Blingtron 6000 Gift Package##132892
collect Knockoff Blingtron##136911 |n
learnpet Knockoff Blingtron##1806 |use Knockoff Blingtron##136911
step
Congratulations!
You have collected the _Knockoff Blingtron_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Micronax",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Mechanical pet: Micronax",
pet=666,
},[[
step
This pet is obtained when completing the "Tomb of Sargeras" raid meta achievement
Complete the Tomb of Sargeras raid meta achievement _Glory of the Tomb Raider_ |achieve 11763
step
collect Micronax Controller##101426 |n
|tip Once this achievement is completed, check your in-game mail.
learnpet Micronax##249870 |use Micronax Controller##101426
step
Congratulations!
You are now the proud owner of a Micronax.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Pet Reaper 0.9",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Mechanical pet: Pet Reaper 0.9",
pet=2058,
},[[
step
This pet can be bought with the currency obtained from completing the Pet Battle dungeon "Deadmines"
|tip You can only obtain one Old Bottle Cap per week. You will need 1 Old Battle Cap to purchase this pet.
Check out our Pet Battle dungeon guide to accomplish this |confirm |or |next "Pets & Mounts Guides\\Battle Pets\\Battle Pet Dungeons\\Deadmines"
collect 1 Old Bottle Cap##151191 |or
step
talk Marcus "Bagman" Brown##119390
buy 1 Pet Reaper 0.9##150742 |n |use Pet Reaper 0.9##150742
learnpet Pet Reaper 0.9##244466 |goto Westfall/0 41.47,71.13
step
Congratulations!
You are now the proud owner of a Pet Reaper 0.9.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Pocket Cannon",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Mechanical pet: Pocket Cannon",
pet=2041,
},[[
step
This pet can be bought with the currency obtained from completing the Pet Battle dungeon "Deadmines"
|tip You can only obtain one Old Bottle Cap per week. You will need 3 Old Bottle Caps to purchase this pet.
Check out our Pet Battle dungeon guide to accomplish this |confirm |or |next "Pets & Mounts Guides\\Battle Pets\\Battle Pet Dungeons\\Deadmines"
collect 3 Old Bottle Cap##151191 |or
step
talk Marcus "Bagman" Brown##119390
buy 1 Pocket Cannon##150739 |n |use Pocket Cannon##150739
learnpet Pocket Cannon##244345 |goto Westfall/0 41.47,71.13
step
Congratulations!
You are now the proud owner of a Pocket Cannon.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Runeforged Servitor",{
patch='71000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Mechanical pet: Runeforged Servitor",
pet=1957,
},[[
step
Enter the Ulduar raid |goto The Storm Peaks/0 41.56,17.79 < 15 |c
|tip You can get this pet on any difficulty.
step
kill Steelbreaker##32867
kill Runemaster Molgeim##32927
kill Stormcaller Brundir##32857
|tip The Assembly of Iron encounter comes after XT-002 Deconstructor.
collect Stormforged Rune##142088 |n |use Stormforged Rune##142088
|tip Stormforged Rune has a very low chance to drop.
learnpet Runeforged Servitor##1957
step
Congratulations!
You have collected the _Runeforged Servitor_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Tinytron",{
patch='73000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Mechanical pet: Tinytron",
pet=2078,
},[[
step
kill Magmatron##42178
|tip Refer to the Blackwing Descent raiding guide to accomplish this.
Click here to load the "Blackwing Descent" raid guide |confirm |next "Dungeon Guides\\Cataclysm Raids\\Blackwing Descent"
collect Rough-Hewn Remote##152966 |n |use Rough-Hewn Remote##152966
learnpet Tinytron##2078 |goto Blackwing Descent/1 65.4,57.4
step
Congratulations!
You have collected the _Tinytron_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Blightbreath",{
patch='71000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Undead pet: Blightbreath",
pet=1965,
},[[
step
Enter the Icecrown Citadel raid |goto Icecrown/0 53.82,87.11 < 10 |c
|tip You can get this pet on any difficulty.
step
kill Professor Putricide##36678
|tip You must kill Festergut and Rotface before you can access Putricide.
|tip Be sure to turn the valve in each room as you leave.
collect Putricide's Alchemy Supplies##142096 |n |use Putricide's Alchemy Supplies##142096
|tip The Remains of a Blood Beast has a very low chance to drop.
learnpet Blightbreath##1965
step
Congratulations!
You have collected the _Blightbreath_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Bloodbrood Whelpling",{
patch='72000',
source='Vendor',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Undead pet: Bloodbrood Whelpling",
pet=2035,
},[[
step
This pet is only available to Death Knights |confirm
|tip You can earn it by completing this guide on a Horde or Alliance Death Knight.
|only if not DeathKnight
step
You must first complete the Broken Shore Campaign quest line before being able to start the quest line to obtain your Class Hall mount
Check out our "Broken Shore Campaign" guide to accomplish this |confirm |or |next "Leveling Guides\\Legion (10-50)\\Broken Shore Campaign"
|tip You must complete the Broken Shore Campaign and 7.2 Order Hall quests to purchase this pet.
Complete the "Broken Shore Campaign" guide |complete completedq(46246)
|only DeathKnight
step
Once the Broken Shore Campaign is completed, you will then need to complete your Class Hall mount quest line
Click here to load the "Death Knight 7.2 Order Hall Quest" leveling guide |confirm |next "Leveling Guides\\Legion (10-50)\\Death Knight\\Death Knight 7.2 Order Hall Quests" |only DeathKnight
|tip You must complete the Broken Shore Campaign and 7.2 Order Hall quests to purchase this pet.
Complete the "7.2 Order Hall Quests" guide |complete completedq(46813)
|only DeathKnight
step
This pet can be bought after achieving _Power Ascended_ as the Blood Spec.
|tip To earn the "Power Ascended" achievement, you will need to unlock 52 artifact weapon traits from your Blood spec artifact weapon.
|tip Once you accomplish this, you will be able to purchase this pet.
Earn the _"Power Ascended"_ achievement |achieve 11772
|only DeathKnight
step
talk Slimy##121752
buy 1 Bloodbrood Whelpling##147539 |n |use Bloodbrood Whelpling##147539
|tip This pet costs 1,000 Order Resources.
learnpet Bloodbrood Whelpling##2035 |goto Broken Shore/2 54.79,28.86
|only DeathKnight
step
Congratulations!
You are now the proud owner of Bloodbrood Whelpling.
|only DeathKnight
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Boneshard",{
patch='71000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Undead pet: Boneshard",
pet=1963,
},[[
step
Enter the Icecrown Citadel raid |goto Icecrown/0 53.82,87.11 < 10 |c
|tip You can get this pet on any difficulty.
step
kill Lord Marrowgar##36612
|tip Lord Marrowgar is the first boss in the instance.
collect Fragment of Frozen Bone##142094 |n |use Fragment of Frozen Bone##142094
|tip The Fragment of Frozen Bone has a very low chance to drop.
learnpet Boneshard##1963 |use Fragment of Frozen Bone##142094
step
Congratulations!
You have collected the _Boneshard_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Drudge Ghoul",{
patch='71000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Undead pet: Drudge Ghoul",
pet=1967,
},[[
step
Enter the Icecrown Citadel raid |goto Icecrown/0 53.82,87.11 < 10 |c
|tip You can get this pet on any difficulty.
step
kill The Lich King ##36853
collect Drudge Remains##142098 |n |use Drudge Remains##142098
|tip The Drudge Remains has a very low chance to drop.
learnpet Drudge Ghoul##1967
step
Congratulations!
You have collected the _Drudge Ghoul_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Frostbrood Whelpling",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Undead pet: Frostbrood Whelpling",
pet=2036,
},[[
step
This pet is only available to Death Knights |confirm
|tip You can earn it by completing this guide on a Horde or Alliance Death Knight.
|only if not DeathKnight
step
You must first complete the Broken Shore Campaign quest line before being able to start the quest line to obtain your Class Hall mount
Check out our "Broken Shore Campaign" guide to accomplish this |confirm |or |next "Leveling Guides\\Legion (10-50)\\Broken Shore Campaign"
|tip You must complete the Broken Shore Campaign and 7.2 Order Hall quests to purchase this pet.
Complete the "Broken Shore Campaign" guide |complete completedq(46246)
|only DeathKnight
step
Once the Broken Shore Campaign is completed, you will then need to complete your Class Hall mount quest line
Click here to load the "Death Knight 7.2 Order Hall Quest" leveling guide |confirm |next "Leveling Guides\\Legion (10-50)\\Death Knight\\Death Knight 7.2 Order Hall Quests" |only DeathKnight
|tip You must complete the Broken Shore Campaign and 7.2 Order Hall quests to purchase this pet.
Complete the "7.2 Order Hall Quests" guide |complete completedq(46813)
|only DeathKnight
step
This pet can be bought after achieving _Power Ascended_ as the Frost Spec.
|tip To earn the "Power Ascended" achievement, you will need to unlock 52 artifact weapon traits from your Frost spec artifact weapon.
|tip Once you accomplish this, you will be able to purchase this pet.
Earn the _"Power Ascended"_ achievement |achieve 11772
|only DeathKnight
step
talk Slimy##121752
buy 1 Frostbrood Whelpling##147540 |n |use Frostbrood Whelpling##147540
|tip This pet costs 1,000 Order Resources.
learnpet Frostbrood Whelpling##237251 |goto Broken Shore/2 54.79,28.86
|only DeathKnight
step
Congratulations!
You are now the proud owner of Frostbrood Whelpling.
|only DeathKnight
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Naxxy",{
patch='72000',
source='WorldEvent',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Undead pet: Naxxy",
pet=2002,
},[[
step
talk Pippi##109685 |goto Elwynn Forest/0 32.0,50.2 |only Alliance
talk Woim##109688 |goto Tirisfal Glades/0 62.2,66.6 |only Horde
buy 1 Naxxy##151269 |n |use Naxxy##151269
learnpet Naxxy##2002
step
Congratulations!
You have collected the _Naxxy_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Nerubian Swarmer",{
patch='71000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Undead pet: Nerubian Swarmer",
pet=1954,
},[[
step
Enter the Trial of the Crusader raid |goto Icecrown/0 75.05,21.81 < 5 |c
|tip You can get this pet on any difficulty.
step
kill Anub'arak##34564
|tip Anub'arak is the last boss in the instance.
collect Nerubian Relic##142085 |n |use Nerubian Relic##142085
|tip Nerubian Relic has a very low chance to drop.
learnpet Nerubian Swarmer##1954
step
Congratulations!
You have collected the _Nerubian Swarmer_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Rattlejaw",{
patch='73000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Undead pet: Rattlejaw",
pet=2080,
},[[
step
kill Nefarian##41376
|tip Refer to the Blackwing Descent raiding guide to accomplish this.
Click here to load the "Blackwing Descent" raid guide |confirm |next "Dungeon Guides\\Cataclysm Raids\\Blackwing Descent"
collect Shadowy Pile of Bones##152968 |n |use Shadowy Pile of Bones##152968
learnpet Rattlejaw##2080 |goto Blackwing Descent/2 48,70.2
step
Congratulations!
You have collected the _Rattlejaw_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Risen Saber Kitten",{
patch='70300',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Undead pet: Risen Saber Kitten",
pet=1804,
},[[
step
kill Darkshade##92965
collect Risen Saber Kitten##130166 |n |goto Val'sharah/0 43.92,52.94
learnpet Risen Saber Kitten##1804 |use Risen Saber Kitten##130166
step
Congratulations!
You have collected the _Risen Saber Kitten_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Scraps",{
patch='72000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Undead pet: Scraps",
pet=2042,
},[[
step
Complete the Excavator Karla Quest Line
|tip Check out our Broken Shore Excavator Karla Quests to accomplish this.
confirm
|only if not completedq(46666)
step
click Peculiar Rope |goto Broken Shore/0 47.86,67.38
Enter the Secret Treasure Lair |goto 44.33,52.10 < 5 |noway |c
step
talk Treasure Master Iks'reeged##120076
buy Wyrmtongue's Cache Key##143559 |n |goto 45.00,52.16
|tip These cost 2,000 Nethershards each.
Choose any chest in this room
click Curious Wyrmtongue Chest
|tip This pet has a very low chance to be within these chests.
collect Scraps##146953 |use Scraps##146953
learnpet Scraps##2042
step
Congratulations!
You are now the proud owner of Scraps.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Soulbroken Whelpling",{
patch='71000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Undead pet: Soulbroken Whelpling",
pet=1966,
},[[
step
Enter the Icecrown Citadel raid |goto Icecrown/0 53.82,87.11 < 10 |c
|tip You can get this pet on any difficulty.
step
kill Sindragosa ##36853
|tip Sindragosa is the last boss before the Lich King.
collect Skull of a Frozen Whelp##142097 |n |use Skull of a Frozen Whelp##142097
|tip The Skull of a Frozen Whelp has a very low chance to drop.
learnpet Soulbroken Whelpling##1966
step
Congratulations!
You have collected the _Soulbroken Whelpling_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Tiny Apparition",{
patch='70300',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Undead pet: Tiny Apparition",
pet=1750,
},[[
step
The _Tiny Apparition_ is level 25
|tip It is a ghost found all around this area.
|tip Challenge one to a pet battle and capture it.
|tip They are flying in the air.
learnpet Tiny Apparition##1750 |goto Stormheim/0 55.68,43.13
step
Congratulations!
You have collected the _Tiny Apparition_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Vilebrood Whelpling",{
patch='72000',
source='Vendor',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Undead pet: Vilebrood Whelpling",
pet=2037,
},[[
step
This pet is only available to Death Knights |confirm
|tip You can earn it by completing this guide on a Horde or Alliance Death Knight.
|only if not DeathKnight
step
You must first complete the Broken Shore Campaign quest line before being able to start the quest line to obtain your Class Hall mount
Check out our "Broken Shore Campaign" guide to accomplish this |confirm |or |next "Leveling Guides\\Legion (10-50)\\Broken Shore Campaign"
|tip You must complete the Broken Shore Campaign and 7.2 Order Hall quests to purchase this pet.
Complete the "Broken Shore Campaign" guide |complete completedq(46246)
|only DeathKnight
step
Once the Broken Shore Campaign is completed, you will then need to complete your Class Hall mount quest line
Click here to load the "Death Knight 7.2 Order Hall Quest" leveling guide |confirm |next "Leveling Guides\\Legion (10-50)\\Death Knight\\Death Knight 7.2 Order Hall Quests" |only DeathKnight
|tip You must complete the Broken Shore Campaign and 7.2 Order Hall quests to purchase this pet.
Complete the "7.2 Order Hall Quests" guide |complete completedq(46813)
|only DeathKnight
step
This pet can be bought after achieving _Power Ascended_ as the Unholy Spec.
|tip To earn the "Power Ascended" achievement, you will need to unlock 52 artifact weapon traits from your Unholy spec artifact weapon.
|tip Once you accomplish this, you will be able to purchase this pet.
Earn the _"Power Ascended"_ achievement |achieve 11772
|only DeathKnight
step
talk Slimy##121752
buy 1 Vilebrood Whelpling##147541 |n |use Vilebrood Whelpling##147541
|tip This pet costs 1,000 Order Resources.
learnpet Vilebrood Whelpling##2037 |goto Broken Shore/2 54.79,28.86
|only DeathKnight
step
Congratulations!
You are now the proud owner of Vilebrood Whelpling.
|only DeathKnight
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Wicked Soul",{
patch='71000',
source='Drop',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Undead pet: Wicked Soul",
pet=1968,
},[[
step
kill The Lich King##36597
|tip The Lich King is the final boss of Icecrown Citadel
collect 1 Call of the Frozen Blade##142099 |n
learnpet Wicked Soul##1968 |use Call of the Frozen Blade##142099
step
Congratulations!
You have collected the _Wicked Soul_ battle pet
]])
