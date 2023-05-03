local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("PetsHLEGION") then return end
ZygorGuidesViewer.GuideMenuTier = "LEG"
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Lagan",{
patch='70300',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Aquatic pet: Lagan.",
condition_suggested=function() return level>=40 and level<=45 end,
pet=1930,
},[[
step
This pet is a reward for completing the dungeon achievement _Poor Unfortunate Souls_
Click here to go to the guide for this achievement |next "Achievement Guides\\Dungeons & Raids\\Legion Dungeons\\Poor Unfortunate Souls" |confirm
Click here to continue |confirm
step
Once this achievement is complete, this pet will be in your mailbox
collect Lagan##140323 |n
learnpet Lagan##1930 |use Lagan##140323
step
Congratulations!
You have collected the _Lagan_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Ridgeback Piglet",{
patch='70300',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Beast pet: Ridgeback Piglet.",
condition_suggested=function() return level>=10 and level<=40 end,
pet=1756,
},[[
step
label "Start"
This pet is crafted by players with the _Alchemy_ profession
|tip You can either make this pet with the Alchemy profession or buy it from the Auction House.
Click here if you have Alchemy and want to craft this pet |next "Alchemy Pet" |confirm
|tip If you are going the Alchemy way, it takes 7 days before it can be opened.
|tip There is a chance for this pet to be inside.
Click here if you would like to purchase this from the Auction House |next "AH Ridgeback" |confirm
step
label "Alchemy Pet"
First you will need to learn the _Transmute: Meat to Pet_ recipe
|tip This recipe is learned randomly through Alchemy crafting.
Once this recipe is learned, you will need to collect the following items:
collect 3 Fatty Bearsteak##124118 |c
collect 20 Unbroken Claw##124438 |c
collect 20 Unbroken Tooth##124439 |c
collect 1 Viscous Transmutagen##137595 |c
collect 1 Black Transmutagen##137596 |c
collect 1 Oily Transmutagen##137597 |c
step
Open Your Alchemy Crafting Panel:
_<Craft 1 Transmute: Meat to Pet>_
collect 1 Pulsating Sac##137599 |c
|tip Once created, you must wait 7 days before it can be opened.
|only if itemcount(137599) < 1
step
Open the Growling Sac |use Growling Sac##137608
|tip There is a chance for this pet to be in the sac.
collect 1 Ridgeback Piglet##136905 |c
Click here if you did not receive a Ridgeback Piglet |next "Start" |confirm
|next "Congratz"
step
label "AH Ridgeback"
talk Auctioneer Drezmit##44866
buy 1 Ridgeback Piglet##136905 |n
collect 1 Ridgeback Piglet##136905 |c |goto Orgrimmar/1 54.06,73.34
|tip This may be a little on the expensive side as it takes awhile to get.
|only if itemcount(136905) < 1
step
label "Congratz"
learnpet Ridgeback Piglet##1756 |use Ridgeback Piglet##136905
step
Congratulations!
You have collected the _Ridgeback Piglet_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Thaumaturgical Piglet",{
patch='70300',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Beast pet: Thaumaturgical Piglet.",
condition_suggested=function() return level>=10 and level<=40 end,
pet=1759,
},[[
step
label "Start"
This pet is crafted by players with the _Alchemy_ profession
|tip You can either make this pet with the Alchemy profession or buy it from the Auction House.
Click here if you have Alchemy and want to craft this pet |next "Alchemy Pet 2" |confirm
|tip If you are going the Alchemy way, it takes 7 days before it can be opened.
|tip There is a chance for this pet to be inside.
Click here if you would like to purchase this from the Auction House |next "AH Thaumaturgical" |confirm
step
label "Alchemy Pet 2"
First you will need to learn the _Transmute: Meat to Pet_ recipe
|tip This recipe is learned randomly through Alchemy crafting.
Once this recipe is learned, you will need to collect the following items:
collect 3 Fatty Bearsteak##124118 |c
collect 20 Unbroken Claw##124438 |c
collect 20 Unbroken Tooth##124439 |c
collect 1 Viscous Transmutagen##137595 |c
collect 1 Black Transmutagen##137596 |c
collect 1 Oily Transmutagen##137597 |c
step
Open Your Alchemy Crafting Panel:
_<Craft 1 Transmute: Meat to Pet>_
collect 1 Pulsating Sac##137599 |c
|tip Once created, you must wait 7 days before it can be opened.
|only if itemcount(137599) < 1
step
Open the Growling Sac |use Growling Sac##137608
|tip There is a chance for this pet to be in the sac.
collect 1 Thaumaturgical Piglet##136908 |c
Click here if you did not receive a Thaumaturgical Piglet |next "Start" |confirm
|next "Congratz 2"
step
label "AH Thaumaturgical"
talk Auctioneer Drezmit##44866
buy 1 Thaumaturgical Piglet##136908 |n
collect 1 Thaumaturgical Piglet##136908 |c |goto Orgrimmar/1 54.06,73.34
|tip This may be a little on the expensive side as it takes awhile to get.
|only if itemcount(136908) < 1
step
label "Congratz 2"
learnpet Thaumaturgical Piglet##1759 |use Thaumaturgical Piglet##136908
step
Congratulations!
You have collected the _Thaumaturgical Piglet_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Noblegarden Bunny",{
patch='54200',
source='WorldEvent',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Critter pet: Noblegarden Bunny.",
condition_suggested=function() return level>=10 and level<=60 end,
pet=1943,
},[[
step
This pet can only be purchased during the _Noblegarden_ event
|tip This event occurs from March 28 - April 4.
confirm
step
talk Noblegarden Merchant##32836
buy 1 Noblegarden Bunny##141532 |n
|tip This pet costs 100 Noblegarden Chocolate.
learnpet Noblegarden Bunny##1943 |goto Durotar 51.8,41.8 |use Noblegarden Bunny##141532
step
Congratulations!
You have collected the _Noblegarden Bunny_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Emmigosa",{
patch='70300',
source='Quest',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Dragonkin pet: Emmigosa.",
condition_suggested=function() return level>=10 and level<=45 end,
pet=1720,
},[[
step
This pet is a reward for completing the quest _On the Brink_ in Azsuna.
Click here to proceed to the Azsuna quest guide |next "Leveling Guides\\Legion (10-50)\\Azsuna" |confirm
collect Emmigosa##129178 |n
learnpet Emmigosa##1720 |use Emmigosa##129178
step
Congratulations!
You have collected the _Emmigosa_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Igneous Flameling",{
patch='71000',
source='WorldEvent',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Elemental pet: Igneous Flameling.",
condition_suggested=function() return level>=10 and level<=60 end,
pet=1949,
},[[
step
This pet can only be purchased during the _Midsummer Fire Festival_ event
|tip This event occurs from June 21 - July 5.
confirm
step
talk Midsummer Merchant##26124
buy 1 Igneous Flameling##141714 |n
|tip This pet costs 350 Burning Blossoms.
|tip Refer to our Midsummer Fire Festival guide to obtain this currency.
Use the Igneous Flameling |use Igneous Flameling##141714
learnpet Igneous Flameling##1949 |goto Orgrimmar 47.6,37.8
step
Congratulations!
You have collected the _Igneous Flameling_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Alliance Enthusiast",{
patch='70300',
source='Achievement',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Humanoid pet: Alliance Enthusiast.",
condition_suggested=function() return level>=10 and level<=60 end,
pet=1918,
},[[
step
This pet is a reward for obtaining Honor level 50 for the first time
You must complete this on an Alliance character
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Dutiful Gruntling",{
patch='71000',
source='Achievement',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Humanoid pet: Dutiful Gruntling.",
condition_suggested=function() return level>=10 and level<=60 end,
},[[
step
This pet is a reward for reaching PvP Prestige level 7 for the first time
collect Dutiful Gruntling##142380 |n
|tip This will be in your mailbox.
learnpet Dutiful Gruntling##1979 |use Dutiful Gruntling##142380
step
Congratulations!
You have collected the _Dutiful Gruntling_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Dutiful Squire",{
patch='71000',
source='Achievement',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Humanoid pet: Dutiful Squire.",
condition_suggested=function() return level>=10 and level<=60 end,
},[[
step
This pet is a reward for reaching PvP Prestige level 7 for the first time
|tip You must complete this on an _Alliance_ character.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Globe Yeti",{
patch='73000',
source='WorldEvent',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Humanoid pet: Globe Yeti.",
condition_suggested=function() return level>=10 and level<=60 and isevent('Feast of Winter Veil') end,
pet=2114,
},[[
step
Feast of the Winter Veil is not currently active! |only if not isevent('Feast of Winter Veil')
|tip Feast of Winter Veil runs from Dec 12 - Jan 02. |only if not isevent('Feast of Winter Veil')
Wait for Feast of Winter Veil to start |complete isevent('Feast of Winter Veil')
step
When the Feast of Winter Veil event is active, a globe will appear in Orgrimmar
|tip Within this Globe, the Globe Yeti will periodically spawn.
|tip The Globe Yeti will spawn once every 30 minutes.
|tip You must be inside the globe to battle the Globe Yeti.
|tip Once the Globe Yeti spawns, challenge it to a battle.
learnpet Globe Yeti##2114 |goto Orgrimmar/1 49.01,54.96
step
Congratulations!
You have collected the _Globe Yeti_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Horde Fanatic",{
patch='70300',
source='Achievement',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Humanoid pet: Horde Fanatic.",
condition_suggested=function() return level>=10 and level<=60 end,
pet=1919,
},[[
step
This pet is a reward for obtaining honor level 50 for the first time
collect Strange Crate##139777 |n
Open the Strange Crate |use Strange Crate##139777
collect Horde Fanatic##139776 |n
learnpet Horde Fanatic##1919 |use Horde Fanatic##139776
step
Congratulations!
You have collected the _Horde Fanatic_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Knight-Captain Murky",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Humanoid pet: Knight-Captain Murky.",
condition_suggested=function() return level>=10 and level<=45 end,
pet=1940,
},[[
step
This pet was a reward for attending US or EU BlizzCon 2016 event
|tip This pet can no longer be obtained.
|tip This is the Alliance-only version of the reward.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Legionnaire Murky",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Humanoid pet: Legionnaire Murky.",
condition_suggested=function() return level>=10 and level<=45 end,
pet=1939,
},[[
step
This pet was a reward for attending US or EU BlizzCon 2016 event
|tip This pet can no longer be obtained.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Tylarr Gronnden",{
patch='71500',
source='Vendor',
author="support@zygorguides.com",
description="\nThis guide will help you acquire the Humanoid pet: Tylarr Gronnden.",
condition_suggested=function() return level>=10 and level<=45 end,
pet=2022,
},[[
step
You will need to gain _Rank 4_ with the Legion Brawler's Guild
Click here to be taken to the Brawler's guild event guide. |confirm |next "Events Guides\\Brawler's Guild\\Legion Brawler's Guild"
|tip This will show you strategies on how to defeat each boss.
only if ZGV:GetReputation(2010).friendRep<7000
step
talk Paul North##68364
buy 1 Tylarr Gronnden##144394 |goto Brawl'gar Arena/1 50.79,28.44 |n
|tip This pet costs 400 gold.
learnpet Tylarr Gronnden##2022 |use Tylarr Gronnden##144394
step
Congratulations!
You have collected the _Tylarr Gronnden_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Enchanted Cauldron",{
patch='70300',
source='Profession',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Magic pet: Enchanted Cauldron.",
condition_suggested=function() return level>=10 and level<=60 end,
pet=1699,
},[[
step
This pet is crafted by players with the _Enchanting_ profession
|tip You can either make this pet with the Enchanting profession or buy it from the Auction House.
Click here if you have Enchanting and want to craft this pet |next "Enchanting craft" |confirm
Click here if you would like to purchase this from the Auction House |next "AH cauldron" |confirm
step
label "Enchanting craft"
To obtain the formula to make this pet, click here to go to our Enchanting Quest Line guide |next "Profession Guides\\Enchanting\\Quest Guides\\Enchanting Quest Line" |confirm |or
collect 5 Chaos Crystal##124442 |c
collect 20 Leylight Shard##124441 |c
collect 50 Arkhana##124440 |c
collect 10 Infernal Brimstone##124444 |c
step
Open Your Enchanting Crafting Panel:
_<Create 1 Enchanted Cauldron>_
collect 1 Enchanted Cauldron##128533 |c
|only if itemcount(128533) < 1
|next "end cauldron"
step
label "AH cauldron"
talk Auctioneer Drezmit##44866
buy 1 Enchanted Cauldron##128533 |n
collect 1 Enchanted Cauldron##128533 |c |goto Orgrimmar/1 54.06,73.34
|only if itemcount(128533) < 1
|next "end cauldron"
step
label "end cauldron"
learnpet Enchanted Cauldron##1699 |use Enchanted Cauldron##128533
step
Congratulations!
You have collected the _Enchanted Cauldron_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Enchanted Pen",{
patch='70300',
source='Profession',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Magic pet: Enchanted Pen.",
condition_suggested=function() return level>=10 and level<=60 end,
pet=1701,
},[[
step
This pet is crafted by players with the _Enchanting_ profession
|tip You can either make this pet with the Enchanting profession or buy it from the Auction House.
Click here if you have Enchanting and want to craft this pet |next "Enchanting craft 2" |confirm
Click here if you would like to purchase this from the Auction House |next "AH pen" |confirm
step
label "Enchanting craft 2"
To obtain the formula to make this pet, click here to go to our Enchanting Quest Line guide |next "Profession Guides\\Enchanting\\Quest Guides\\Enchanting Quest Line" |confirm |or
collect 5 Chaos Crystal##124442 |c
collect 20 Leylight Shard##124441 |c
collect 50 Arkhana##124440 |c
collect 10 Felhide##124116 |c
step
Open Your Enchanting Crafting Panel:
_<Create 1 Enchanted Pen>_
collect 1 Enchanted Pen##128535 |c
|only if itemcount(128535) < 1
|next "end pen"
step
label "AH pen"
talk Auctioneer Drezmit##44866
buy 1 Enchanted Pen##128535 |n
collect 1 Enchanted Pen##128535 |c |goto Orgrimmar/1 54.06,73.34
|only if itemcount(128535) < 1
|next "end pen"
step
label "end pen"
learnpet Enchanted Pen##1701 |use Enchanted Pen##128535
step
Congratulations!
You have collected the _Enchanted Pen_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Enchanted Torch",{
patch='70300',
source='Profession',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Magic pet: Enchanted Torch.",
condition_suggested=function() return level>=10 and level<=60 end,
pet=1700,
},[[
step
This pet is crafted by players with the _Enchanting_ profession
|tip You can either make this pet with the Enchanting profession or buy it from the Auction House.
Click here if you have Enchanting and want to craft this pet |next "Enchanting craft 3" |confirm
Click here if you would like to purchase this from the Auction House |next "AH torch" |confirm
step
label "Enchanting craft 3"
To obtain the formula to make this pet, click here to go to our Enchanting Quest Line guide |next "Profession Guides\\Enchanting\\Quest Guides\\Enchanting Quest Line" |confirm |or
collect 5 Chaos Crystal##124442 |c
collect 20 Leylight Shard##124441 |c
collect 50 Arkhana##124440 |c
collect 10 Felwort##124106 |c
step
Open Your Enchanting Crafting Panel:
_<Create 1 Enchanted Torch>_
collect 1 Enchanted Torch##128534 |c
|only if itemcount(128534) < 1
|next "end torch"
step
label "AH torch"
talk Auctioneer Drezmit##44866
buy 1 Enchanted Pen##128534 |n
collect 1 Enchanted Pen##128534 |c |goto Orgrimmar/1 54.06,73.34
|only if itemcount(128534) < 1
|next "end torch"
step
label "end torch"
learnpet Enchanted Torch##1700 |use Enchanted Torch##128534
step
Congratulations!
You have collected the _Enchanted Torch_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Transmutant",{
patch='70300',
source='Profession',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Magic pet: Transmutant.",
condition_suggested=function() return level>=10 and level<=60 end,
pet=1920,
},[[
step
label "Start"
This pet is crafted by players with the _Alchemy_ profession
|tip You can either make this pet with the Alchemy profession or buy it from the Auction House.
Click here if you have Alchemy and want to craft this pet |next "Alchemy Pet 3" |confirm
|tip If you are going the Alchemy way, it takes 7 days before it can be opened.
|tip There is a chance for this pet to be inside.
Click here if you would like to purchase this from the Auction House |next "AH Transmutant" |confirm
step
label "Alchemy Pet 3"
First you will need to learn the _Transmute: Meat to Pet_ recipe
|tip This recipe is learned randomly through Alchemy crafting.
Once this recipe is learned, you will need to collect the following items:
collect 3 Fatty Bearsteak##124118 |c
collect 20 Unbroken Claw##124438 |c
collect 20 Unbroken Tooth##124439 |c
collect 1 Viscous Transmutagen##137595 |c
collect 1 Black Transmutagen##137596 |c
collect 1 Oily Transmutagen##137597 |c
step
Open Your Alchemy Crafting Panel:
_<Craft 1 Transmute: Meat to Pet>_
collect 1 Pulsating Sac##137599 |c
|tip Once created, you must wait 7 days before it can be opened.
|only if itemcount(137599) < 1
step
Open the Growling Sac |use Growling Sac##137608
|tip There is a chance for this pet to be in the sac.
collect 1 Transmutant##139789 |c
Click here if you did not receive a Transmutant |next "Start" |confirm
|only if itemcount(139789) < 1
|next "Congratz 3"
step
label "AH Transmutant"
talk Auctioneer Fitch##8719
buy 1 Transmutant##139789 |n
collect 1 Transmutant##139789 |c |goto Orgrimmar/1 54.06,73.34
|only if itemcount(139789) < 1
|tip This may be a little on the expensive side as it takes awhile to get.
step
label "Congratz 3"
learnpet Transmutant##1920 |use Transmutant##139789
step
Congratulations!
You have collected the _Transmutant_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Untethered Wyrmling",{
patch='70300',
source='Quest',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Magic pet: Untethered Wyrmling.",
condition_suggested=function() return level>=45 and level<=50 end,
pet=1921,
},[[
step
This pet is a reward for completing the quest _Balance to Spare_ in Suramar
|tip This quest requires you to be Honored with The Nightfallen before being able to start it.
Reach Honored with The Nightfallen |complete rep("The Nightfallen")>=Honored
Click here to proceed to the Suramar Quest guide |next "Leveling Guides\\Legion (10-50)\\Suramar (45-50)" |confirm
collect Untethered Wyrmling##139790 |n
learnpet Untethered Wyrmling##1921 |use Untethered Wyrmling##139790
step
Congratulations!
You have collected the _Untethered Wyrmling_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Trigger",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Mechanical pet: Trigger.",
condition_suggested=function() return level>=10 and level<=60 end,
pet=1886,
},[[
step
This pet is crafted by players with the _Engineering_ profession
|tip You can either make this pet with the Engineering profession or buy it from the Auction House.
Click here if you have Engineering and want to craft this pet |next "Engineering Pet" |confirm
Click here if you would like to purchase this from the Auction House |next "AH Trigger" |confirm
step
label "Engineering Pet"
To obtain the schematic to make this pet, click here to go to our Engineering Quest Line guide |next "Profession Guides\\Engineering\\Quest Guides\\Engineering Quest Line" |confirm |or
Once this schematic is learned, you will need to collect the following items:
collect 50 Leystone Ore##123918 |c
collect 50 Blood of Sargeras##124124 |c
collect 10 Infernal Brimstone##124444 |c
step
talk Hobart Grapplehammer##93539
buy 20 Oversized Blasting Cap##136637 |n
buy 30 Loose Trigger##136633 |n
buy 2 Sniping Scope##136636 |n
collect 20 Oversized Blasting Cap##136637 |c |goto Dalaran L/10 38.42,24.70
collect 30 Loose Trigger##136633 |c |goto Dalaran L/10 38.42,24.70
collect 2 Sniping Scope##136636 |c |goto Dalaran L/10 38.42,24.70
step
Open Your Engineering Crafting Panel:
_<Craft 1 Trigger>_
collect 1 Trigger##136921 |c
|only if itemcount(136921) < 1
|next "Congrats"
step
label "AH Trigger"
talk Auctioneer Drezmit##44866
buy 1 Trigger##136921 |n
collect 1 Trigger##136921 |c |goto Orgrimmar/1 54.06,73.34
|only if itemcount(136921) < 1
|tip This may be a little on the expensive side as it takes awhile to get.
step
label "Congrats"
learnpet Trigger##210696 |use Trigger##136921
step
Congratulations!
You have collected the _Trigger_ battle pet
]])
