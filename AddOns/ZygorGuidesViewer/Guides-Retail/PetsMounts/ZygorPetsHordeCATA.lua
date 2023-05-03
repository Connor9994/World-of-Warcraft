local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("PetsHCATA") then return end
ZGV.CommonPets=true
ZygorGuidesViewer.GuideMenuTier = "CAT"
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Magical Crawdad",{
patch='20100',
source='Profession',
author="support@zygorguides.com",
description="\nThis battle pet has a 1 in 5 chance to drop as a reward for catching Mr. Pinchy or it can be purchased from the Auction House.",
keywords={"Aquatic","Mr.","Pinchy"},
pet=132,
},[[
step
cast Fishing##7620
|tip You must have a fishing level of 430 to catch Mr. Pinchy.
|tip He has a 1 in 500 chance to drop from Highland Mixed Schools, it may take some time to catch him.
collect Mr. Pinchy##27388 |goto Terokkar Forest/0 66.88,81.11
step
use the Mr. Pinchy##27388
|tip You can use him 3 times, but he has a 4 hour cooldown period between uses.
|tip He is in your inventory.
collect Magical Crawdad Box##27445 |n
|tip This has a 1 in 5 chance to drop from Mr. Pinchy, it may take you several attempts to get this.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Magical Crawdad Box##27445
|tip It is in your inventory.
Learn the "Magical Crawdad" Battle Pet |learnpet Magical Crawdad##132
step
_Congratulations!_
You Collected the "Magical Crawdad" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Pengu",{
patch='30200',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a vendor in Howling Fjord after reaching Exalted reputation with the Kalu'ak.",
keywords={"Aquatic","Howling","Fjord"},
pet=198,
},[[
step
talk Tanaika##31916
buy Nurtured Penguin Egg##44723 |goto Howling Fjord/0 25.52,58.71
|tip You need to have exalted reputation with the Kalu'ak in order to purchase this.
|tip You can use our Kalu'ak reputation guide to help you increase your level.
step
collect Nurtured Penguin Egg##44723 |n
use the Nurtured Penguin Egg##44723
|tip It is in your inventory.
Learn the "Pengu" Battle Pet |learnpet Pengu##198
step
_Congratulations!_
You Collected the "Pengu" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Sea Pony",{
patch='43000',
source='Profession',
author="support@zygorguides.com",
description="\nThis battle pet can be caught along the coastal beach of Darkmoon Island using the fishing profession.",
keywords={"Aquatic","Darkmoon","Faire"},
pet=340,
},[[
step
click Portal to the Darkmoon Faire |goto Mulgore/0 36.85,35.84
|tip The Darkmoon Faire is only available during the first week of every month.
Teleport to the Darkmoon Faire |goto Darkmoon Island/0 51.29,23.86 |c
step
cast Fishing##7620
|tip Cast out anywhere in the open water along the docks and beaches.
collect Sea Pony##73953 |n
|tip This has a 1 in 250 chance to be caught, it may take some time to get this.
use the Sea Pony##73953
|tip It is in your inventory.
Learn the "Sea Pony" Battle Pet |learnpet Sea Pony##340 |goto 51.80,91.19
step
_Congratulations!_
You Collected the "Sea Pony" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Shore Crawler",{
patch='50100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be trained from a Battle Pet Trainer in Orgrimmar if you are a goblin or you can purchase it from the Auction House.",
keywords={"Aquatic","Orgrimmar"},
pet=629,
},[[
step
talk Matty##63086
Choose _"Interested in catching some rare pets?"_
Choose _<Shore Crawler>_
|tip You have to be a goblin in order to learn this pet.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
Learn the "Shore Crawler" Battle Pet |learnpet Shore Crawler##629 |goto Orgrimmar/1 36.78,77.13
step
_Congratulations!_
You Collected the "Shore Crawler" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Small Frog",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around the Overgrowth in Southern Barrens.",
keywords={"Aquatic","Southern","Barrens"},
pet=419,
},[[
step
clicknpc Small Frog##61071
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Small Frog" Battle Pet |learnpet Small Frog##419 |goto Southern Barrens/0 42.85,29.89
step
_Congratulations!_
You Collected the "Small Frog" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Speedy",{
patch='111100',
source='WorldEvent',
author="support@zygorguides.com",
description="\nThis battle pet is a reward for completing Children's Week Quests.",
keywords={"Aquatic","Children's","Week"},
pet=125,
},[[
step
collect Turtle Box##23002 |n
|tip This pet is a reward for completing the Children's Week quests in Orgrimmar.
|tip You can use our Children's Week Orgrimmar Quests guide to help you complete these quests.
|tip You can only choose 3 pets a year as a reward for Children's Week.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Turtle Box##23002
|tip It will be in your mailbox.
Learn the "Speedy" Battle Pet |learnpet Speedy##125
step
_Congratulations!_
You Collected the "Speedy" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Strand Crawler",{
patch='31000',
source='Profession',
author="support@zygorguides.com",
description="\nThis battle pet can be looted from rewards given out for completing any Northrend fishing daily quest or it can be purchased from the Auction House.",
keywords={"Aquatic","Northrend"},
pet=211,
},[[
step
collect Bag of Fishing Treasures##46007 |n
|tip This is given as a reward for completeing any Northrend fishing daily quest.
|tip You can use our Dalaran fishing guide to help you with the daily quests.
use the Bag of Fishing Treasures##46007
collect Strand Crawler##44983 |n
|tip This has a 1 in 100 chance to drop from the Bag of Fishing Treasures, it may take a few tries to get this.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Strand Crawler##44983
Learn the "Strand Crawler" Battle Pet |learnpet Strand Crawler##211
step
_Congratulations!_
You Collected the "Strand Crawler" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Black Kingsnake",{
patch='111100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet is sold by a vendor in Orgrimmar.",
keywords={"Beast","Orgrimmar"},
pet=75,
},[[
step
talk Xan'tish##8404
|tip He walks around this area.
buy Black Kingsnake##10360 |goto Orgrimmar/1 33.13,67.51
step
collect Black Kingsnake##10360 |n
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Black Kingsnake##10360
|tip It is in your inventory.
Learn the "Black Kingsnake" Battle Pet |learnpet Black Kingsnake##75 |goto Orgrimmar/1 33.13,67.51
step
_Congratulations!_
You Collected the "Black Kingsnake" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Bombay Cat",{
patch='111100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet is sold by an Alliance vendor and can only be purchased from the Auction House if you are Horde.",
keywords={"Beast","Auction","House"},
pet=40,
},[[
step
collect Cat Carrier (Bombay)##8485 |n
|tip You can only purchase this pet from a vendor in Elwynn Forest with an Alliance character.
|tip If you do not have an Alliance character you can purchase it from the Auction House.
use the Cat Carrier (Bombay)##8485
|tip It is in your inventory.
Learn the "Bombay Cat" Battle Pet |learnpet Bombay Cat##40
step
_Congratulations!_
You Collected the "Bombay Cat" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Brown Snake",{
patch='111100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet is sold by a vendor in Orgrimmar.",
keywords={"Beast","Orgrimmar"},
pet=77,
},[[
step
talk Xan'tish##8404
|tip He walks around this area.
buy Brown Snake##10361 |goto Orgrimmar/1 33.13,67.51
step
collect Brown Snake##10361 |n
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Brown Snake##10361
|tip It is in your inventory.
Learn the "Brown Snake" Battle Pet |learnpet Brown Snake##77
step
_Congratulations!_
You Collected the "Brown Snake" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Cornish Rex Cat",{
patch='111100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet is sold by an Alliance vendor and can only be purchased from the Auction House if you are Horde.",
keywords={"Beast","Auction","House"},
pet=41,
},[[
step
collect Cat Carrier (Cornish Rex)##8486 |n
|tip You can only purchase this pet from a vendor in Elwynn Forest with an Alliance character.
|tip If you do not have an Alliance character you can purchase it from the Auction House.
use the Cat Carrier (Cornish Rex)##8486
|tip It is in your inventory.
Learn the "Cornish Rex Cat" Battle Pet |learnpet Cornish Rex Cat##41
step
_Congratulations!_
You Collected the "Cornish Rex Cat" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Crimson Snake",{
patch='111100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a vendor in Orgrimmar.",
keywords={"Beast","Orgrimmar"},
pet=78,
},[[
step
talk Xan'tish##8404
|tip He walks around this area.
buy Crimson Snake##10392 |goto Orgrimmar/1 33.13,67.51
step
collect Crimson Snake##10392 |n
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Crimson Snake##10392
|tip It is in your inventory.
Learn the "Crimson Snake" Battle Pet |learnpet Crimson Snake##78
step
_Congratulations!_
You Collected the "Crimson Snake" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Dun Morogh Cub",{
patch='31100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet is sold by an Alliance vendor and can only be purchased from the Auction House if you are Horde.",
keywords={"Beast","Auction","House"},
pet=205,
},[[
step
collect Dun Morogh Cub##44970 |n
|tip You can only purchase this pet from a vendor in Northrend with an Alliance character.
|tip If you do not have an Alliance character you can purchase it from the Auction House.
use the Dun Morogh Cub##44970
|tip It is in your inventory.
Learn the "Dun Morogh Cub" Battle Pet |learnpet Dun Morogh Cub##205
step
_Congratulations!_
You Collected the "Dun Morogh Cub" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Durotar Scorpion",{
patch='31100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet is sold by a vendor in Icecrown.",
keywords={"Beast","Icecrown"},
pet=207,
},[[
step
Enter the tent |goto Icecrown/0 75.90,23.56 < 30 |walk
talk Freka Bloodaxe##33553
|tip She is inside the tent.
buy Durotar Scorpion##44973 |goto 76.42,24.36
|tip Before you can purchase this pet you must Champion a Orc character by completeing Argent Tournament quests and dailies.
|tip You can use our Argent Tournament guides to help you complete quests and earn Champion's Seals.
|tip This costs 40 Champion's Seals.
|tip You can only purchase this pet with a Horde Orc character.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
collect Durotar Scorpion##44973 |n
use the Durotar Scorpion##44973
|tip It is in your inventory.
Learn the "Durotar Scorpion" Battle Pet |learnpet Durotar Scorpion##207
step
_Congratulations!_
You Collected the "Durotar Scorpion" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Feline Familiar",{
patch='42200',
source='WorldEvent',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a vendor during the Hollow's End world event.",
keywords={"Beast","Hollow's","End"},
pet=319,
},[[
step
talk Woim##109688
|tip He is only available to talk to during the Hollow's End event.
buy Feline Familiar##70908 |goto Tirisfal Glades/0 62.2,66.6
|tip This costs 150 Tricky Treats.
|tip You can get Tricky Treats by doing dailies, use our Hollow's End daily guides to help you out.
|tip This pet cageable, meaning you can purchase it from the Auction House.
step
collect Feline Familiar##70908 |n
use the Feline Familiar##70908
|tip It is in your inventory.
Learn the "Feline Familiar" Battle Pet |learnpet Feline Familiar##319
step
_Congratulations!_
You Collected the "Feline Familiar" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Hyjal Bear Cub",{
patch='42000',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a vendor in the Molten Front.",
keywords={"Beast","Molten","Front"},
pet=317,
},[[
step
Complete the Quest _Calling the Ancients_ |complete completedq(29283)
|tip You will have to grind Firelands dailies and quests to earn 445 Marks of the World Tree.
|tip You can use the Firelands quest and dailies guides to help you.
|tip This will take about a month to grind.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
talk Varlan Highbough##53882
buy Hyjal Bear Cub##70140 |goto Molten Front/0 44.6, 88.6
step
collect Hyjal Bear Cub##70140 |n
use the Hyjal Bear Cub##70140
|tip It is in your inventory.
Learn the "Hyjal Bear Cub" Battle Pet |learnpet Hyjal Bear Cub##317
step
_Congratulations!_
You Collected the "Hyjal Bear Cub" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Lashtail Hatchling",{
patch='41000',
source='Quest',
author="support@zygorguides.com",
description="\nThis battle pet is rewarded to you after you have completed the quest An Old Friend.",
keywords={"Beast","An","Old","Friend"},
pet=307,
},[[
step
talk Commander Aggro'gosh##2464
accept The Defense of Grom'gol: Raptor Risk##26278 |goto Northern Stranglethorn/0 38.42,50.48
step
kill 12 Lashtail Egg##42620 |q 26278/1 |goto 36.50,42.85
step
Click the Quest Discovered Box
|tip This will appear after you kill the 12 Lashtail Eggs.
accept A Lashtail Hatchling##26317
step
talk Commander Aggro'gosh##2464
turnin The Defense of Grom'gol: Raptor Risk##26278 |goto 38.46,50.45
step
talk Far Seer Mok'thardin##2465
turnin A Lashtail Hatchling##26317 |goto 38.36,51.07
accept I Think She's Hungry##26321 |goto 38.36,51.07
step
Kill Murkgill enemies around this area
|tip Make sure the Lashtail Hatchling is next to you when you kill the Murkgills.
|tip If you lose your Lashtail Hatchling you can use the "Lashtail Raptor Egg Fragment" in your inventory to summon him.
Feed the Lashtail Hatchling #40# Bites of Meat |q 26321/1 |goto 41.51,38.91
step
talk Far Seer Mok'thardin##2465
turnin I Think She's Hungry##26321 |goto 38.36,51.07
step
talk Lashtail Hatchling##42736
|tip He will provide a quest when you bring him to the pile of skulls around this area.
accept Favored Skull##26323 |goto 33.75,37.25
step
talk Nimboya##2497
turnin Favored Skull##26323 |goto 38.42,48.72
step
Watch the dialogue
talk Bubbling Cauldron##243855
accept A Nose for This Sort of Thing##26325 |goto 38.51,48.52
step
collect Zuuldaian Fetish##58171 |q 26325/1 |goto 20.64,26.19
|tip Follow the Lashtail Hatchling around this area, he will collect the fetishes for you.
step
talk Bubbling Cauldron##243855
turnin A Nose for This Sort of Thing##26325 |goto 38.51,48.52
accept Who's a Big Troll?##26330 |goto 38.51,48.52
step
kill Gan'zulah##1061
collect Gan'zulah's Body##58179 |q 26330/1 |goto 24.84,18.23
step
talk Bubbling Cauldron##243855
turnin Who's a Big Troll?##26330 |goto 38.51,48.51
accept Skullsplitter Mojo##26332 |goto 38.51,48.51
step
Kill Skullsplitter enemies around this area
collect Skullsplitter Mojo##58201 |q 26332/1 |goto 58.43,57.75
step
talk Bubbling Cauldron##243855
turnin Skullsplitter Mojo##26332 |goto 38.51,48.52
step
talk Bloodlord Mandokir##42790
accept Bloodlord Mandokir##26334 |goto 38.47,48.62
turnin Bloodlord Mandokir##26334 |goto 38.47,48.62
step
talk Nimboya##2497
accept Priestess Hu'rala##26350 |goto 38.42,48.72
step
talk Priestess Hu'rala##42812
turnin Priestess Hu'rala##26350 |goto 63.47,39.04
accept Mind Vision##26351 |goto 63.47,39.04
step
kill Jungle Stalker##687+
collect Jungle Stalker Feather##3863 |q 26351/1 |goto 54.99,49.75
step
talk Priestess Hu'rala##42812
turnin Mind Vision##26351 |goto 63.47,39.04
accept See Raptor##26359 |goto 63.47,39.04
step
talk Priestess Hu'rala##42812
Tell her _"I am ready for the Mind Vision ritual, Hu'rala."_
Watch the dialogue
Complete the Mind Vision |q 26359/1
step
talk Priestess Hu'rala##42812
turnin See Raptor##26359 |goto 63.47,39.05
accept Mind Control##26360 |goto 63.47,39.05
step
kill Braddok##42858
|tip He walks around this area.
collect Braddok's Big Brain##58225 |q 26360/1 |goto 62.86,74.53
step
talk Priestess Hu'rala##42812
turnin Mind Control##26360 |goto 63.47,39.04
accept Be Raptor##26362 |goto 63.47,39.04
step
talk Priestess Hu'rala##42812
Tell her _"I am ready for the Mind Control ritual, Hu'rala."_
Take Control of the Lashtail Hatchling |invehicle |goto 62.86,74.53 |q 26362 |future
step
talk Tan'shang##42881
|tip Stay away from the trolls around this area or you will be forced to restart.
Choose _<Learn to bite through nets from the elder raptor.>_
Speak with Tan'shang |q 26362/1 |goto 89.10,46.30
step
talk Tenjiyu##42882
|tip Stay away from the trolls around this area or you will be forced to restart.
|tip Use the "Eat Through Net" ability on your action bar to chew through the nets if you get captured by a troll.
Tell it _"Alright, Tenjiyu. I'll go get you some food from the sleeping trolls."_
Click Here When You Agree to Steal Food for Tenjiyu |confirm |goto 86.92,44.67 |q 26362 |future
step
Enter the tent |goto 86.98,49.46 < 30 |only if walking
clicknpc Gurubashi Soldier##42871
|tip He is inside the tent.
Steal the Raptor Food Pouch |havebuff spell:80210 |goto 86.88,49.99 |q 26362 |future
step
talk Tenjiyu##42882
Tell it _"I've brought some food for you."_
Choose _<Learn to light fires from the elder raptor.>_
Help Tenjiyu |q 26362/2 |goto 86.92,44.65
step
click Gurubashi Brazier
|tip It looks like a square pieces of metal on the ground with a flame in the center.
collect Burning Twig##58250 |n
use the Burning Twig##58250
|tip The Burning Twig will burn out after 5 seconds so you will have to move quickly.
|tip Use the "Light Tiki Fire" ability on your action bar on the wooden tiki masks around this area.
|tip Quickly run passed the guards when they are distracted by the fire.
|tip Some masks you will have to use your "Dash" ability on your action bar to reach it before the stick burns out.
talk Chiyu##42883
Choose _<Learn to drop skulls from the elder raptor.>_
Speak with Chiyu |q 26362/3 |goto 82.83,37.54
step
click Giant Skullpile
|tip It looks like giant piles of skulls around this area.
collect Gurubashi Skull##58251 |n
use the Gurubashi Skull##58251
|tip Use the "Drop Skull" ability on your action bar to drop a skull on the bridge to trip the trolls around this area.
|tip You only have 30 seconds to place the skull after you pick it up.
|tip Use this technique to cross 2 bridges then hug the left wall to run past the next set of guards.
|tip Finally there is one last tiki mask you need to set on fire using the "Burning Twig".
|tip The Gurubashi Brazier and tiki mask are located to the right of the guards that are blocking the stairs to the exit.
Watch the dialogue
Escape from Zul'Gurub |q 26362/4 |goto 73.57,32.92
step
talk Priestess Hu'rala##42812
turnin Be Raptor##26362 |goto 63.47,39.05
accept Surkhan##26386 |goto 63.47,39.05
step
talk Surkhan##42811
|tip He is up the stairs.
turnin Surkhan##26386 |goto 63.25,38.78
step
Enter the Heroic Dungeon Zul'Gurub |goto Zul'Gurub/0 0.00,0.00 |q 29208 |future
step
kill Bloodlord Mandokir##52151
|tip You can use our Zul'Gurub dungeon guide if you need help getting through the dungeon.
talk Lashtail Hatchling##52877
accept An Old Friend##29208 |goto 0.00,0.00
turnin An Old Friend##29208 |goto 0.00,0.00
step
collect Lashtail Hatchling##69251 |n
use the Lashtail Hatchling##69251
|tip It is in your inventory.
Learn the "Lashtail Hatchling" Battle Pet |learnpet Lashtail Hatchling##307
step
_Congratulations!_
You Collected the "Lashtail Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Orange Tabby Cat",{
patch='111100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet is sold by an Alliance vendor and can only be purchased from the Auction House if you are Horde.",
keywords={"Beast","Auction","House"},
pet=43,
},[[
step
collect Cat Carrier (Orange Tabby)##8487 |n
|tip You can only purchase this pet from a vendor in Elwynn Forest with an Alliance character.
|tip If you do not have an Alliance character you can purchase it from the Auction House.
use the Cat Carrier (Orange Tabby)##8487
|tip It is in your inventory.
Learn the "Orange Tabby Cat" Battle Pet |learnpet Orange Tabby Cat##43
step
_Congratulations!_
You Collected the "Orange Tabby Cat" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Panther Cub",{
patch='41000',
source='Quest',
author="support@zygorguides.com",
description="\nThis battle pet is given as a reward for completing the quest Some Good Will Come.",
keywords={"Beast","Some","Good","Will","Come"},
pet=301,
},[[
step
talk Bwemba##53081
accept Bwemba's Spirit##29219 |goto Orgrimmar/1 32.61,68.14
accept To Bambala##29220 |goto 32.61,68.14
step
talk Kil'karil##52980
|tip He walks around this area.
turnin To Bambala##29220 |goto Northern Stranglethorn/0 64.69,40.49
accept Serpents and Poison##29221 |goto 64.69,40.49
stickystart "Heal_10_Headhunters"
step
kill Jungle Serpent##52224 |q 29221/1 |goto 61.68,41.96
step
label "Heal_10_Headhunters"
clicknpc Injured Bambala Headhunter##52978+
|tip They look like injured trolls with green bodies laying on the ground around this area.
Heal #10# Headhunters |q 29221/2 |goto 61.68,41.96
step
talk Kil'karil##52980
|tip He walks around this area.
turnin Serpents and Poison##29221 |goto 64.14,39.73
step
talk Bwemba##52234
_Next to you_
accept Spirits Are With Us##29222
step
click Bonfire
Watch the dialogue
Use the Bonfire Near Bambala |q 29222/1 |goto 65.10,39.94
step
talk Bwemba##52234
_Next to you_
turnin Spirits Are With Us##29222
step
talk Kil'karil##52980
|tip He walks around this area.
accept Nesingwary Will Know##29223 |goto 63.73,39.81
step
talk Hemet Nesingwary Jr.##52294
turnin Nesingwary Will Know##29223 |goto 44.12,22.90
accept Track the Tracker##29226 |goto 44.12,22.90
step
talk Grent Direhammer##52346
turnin Track the Tracker##29226 |goto 50.37,21.74
accept The Hunter's Revenge##29227 |goto 50.37,21.74
step
kill Mauti?##52349
|tip He walks around this area.
Bring Grent Direhammer to the Body of Mauti |q 29227/1 |goto 64.05,20.39
step
Watch the dialogue
Click the Complete Quest Box
turnin The Hunter's Revenge##29227
step
Click the Quest Discovered Box
accept Follow That Cat##29228
step
Find Mauti's Lair |q 29228/1 |goto 77.11,69.10
step
talk Bwemba##52234
_Next to you_
turnin Follow That Cat##29228
accept Mauti##29230
step
kill Mauti##52372
Watch the dialogue
Let Bwemba Inspect the Cat |q 29230/1 |goto 77.11,69.10
step
talk Bwemba##52234
_Next to you_
turnin Mauti##29230
accept How's the Hunter Holding Up?##29231
step
Enter the cave |goto 76.49,67.46 > 30 |walk
talk Grent Direhammer##52371
|tip He is inside the cave.
turnin How's the Hunter Holding Up?##29231 |goto 76.09,66.66
accept Bury Me With Me Boots...##29232 |goto 76.09,66.66
step
click Direhammer's Boots##68937
Collect Direhammer's Boots |q 29232/1 |goto 76.05,66.50
step
talk Grent Direhammer##52371
turnin Bury Me With Me Boots...##29232 |goto 76.09,66.66
step
talk Panther Cub##52374
accept Some Good Will Come##29268 |goto 76.12,66.69
turnin Some Good Will Come##29268 |goto 76.12,66.69
step
collect Panther Cub##68833 |n
use the Panther Cub##68833
|tip It is in your inventory.
Learn the "Panther Cub" Battle Pet |learnpet Panther Cub##301
step
_Congratulations!_
You Collected the "Panther Cub" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Silver Tabby Cat",{
patch='111100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet is sold by an Alliance vendor and can only be purchased from the Auction House if you are Horde.",
keywords={"Beast","Auction","House"},
pet=45,
},[[
step
collect Cat Carrier (Silver Tabby)##8488 |n
|tip You can only purchase this pet from a vendor in Elwynn Forest with an Alliance character.
|tip If you do not have an Alliance character you can purchase it from the Auction House.
use the Cat Carrier (Silver Tabby)##8488
|tip It is in your inventory.
Learn the "Silver Tabby Cat" Battle Pet |learnpet Silver Tabby Cat##45
step
_Congratulations!_
You Collected the "Silver Tabby Cat" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\White Kitten",{
patch='111100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet is sold by an Alliance vendor and can only be purchased from the Auction House if you are Horde.",
keywords={"Beast","Auction","House"},
pet=46,
},[[
step
collect Cat Carrier (White Kitten)##8489 |n
|tip You can only purchase this pet from a vendor in Stormwind City with an Alliance character.
|tip If you do not have an Alliance character you can purchase it from the Auction House.
use the Cat Carrier (White Kitten)##8489
|tip It is in your inventory.
Learn the "White Kitten" Battle Pet |learnpet White Kitten##46
step
_Congratulations!_
You Collected the "White Kitten" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Armadillo Pup",{
patch='40300',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a guild vendor after you earn the Critter Kill Squad guild achievement.",
keywords={"Critter","Guild","Vendor"},
pet=272,
},[[
step
Earn the Critter Kill Squad Guild Achievement |complete achieved(5144)
|tip You earn this by killing 50,000 critters.
step
talk Goram##46572
buy Armadillo Pup##63398 |goto Orgrimmar/1 48.46,75.58
|tip You need to have revered reputation with your guild in order to purchase this.
step
collect Armadillo Pup##63398 |n
use the Armadillo Pup##63398
|tip It is in your inventory.
Learn the "Armadillo Pup" Battle Pet |learnpet Armadillo Pup##272
step
_Congratulations!_
You Collected the "Armadillo Pup" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Brown Prairie Dog",{
patch='111100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet is sold by a vendor in Thunder Bluff.",
keywords={"Critter","Thunder","Bluff"},
pet=70,
},[[
step
talk Halpa##8401
|tip He is inside the tent.
buy Prairie Dog Whistle##10394 |goto Thunder Bluff/0 62.00,58.39
step
collect Prairie Dog Whistle##10394 |n
use the Prairie Dog Whistle##10394
|tip It is in your inventory.
Learn the "Brown Prairie Dog" Battle Pet |learnpet Brown Prairie Dog##70
step
_Congratulations!_
You Collected the "Brown Prairie Dog" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Dung Beetle",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild all around Orgrimmar.",
keywords={"Critter","Orgrimmar"},
pet=467,
},[[
step
clicknpc Dung Beetle##62115
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Dung Beetle" Battle Pet |learnpet Dung Beetle##467 |goto Orgrimmar/1 39.77,38.04
step
_Congratulations!_
You Collected the "Dung Beetle" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Egbert",{
patch='21000',
source='WorldEvent',
author="support@zygorguides.com",
description="\nThis battle pet is a reward for completing Children's Week Quests.",
keywords={"Critter","Children's","Week"},
pet=158,
},[[
step
collect Egbert's Egg##32616 |n
|tip This pet is a reward for completing the Children's Week quests in Shattrath.
|tip You can use our Children's Week Shattrath Quests guide to help you complete these quests.
|tip You can only choose 3 pets a year as a reward for Children's Week.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Egbert's Egg##32616
|tip It will be in your mailbox.
Learn the "Egbert" Battle Pet |learnpet Egbert##158
step
_Congratulations!_
You Collected the "Egbert" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Elwynn Lamb",{
patch='31100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet is sold by an Alliance vendor and can only be purchased from the Auction House if you are Horde.",
keywords={"Critter","Auction","House"},
pet=209,
},[[
step
collect Elwynn Lamb##44974 |n
|tip You can only purchase this pet from a vendor in Northrend with an Alliance character.
|tip If you do not have an Alliance character you can purchase it from the Auction House.
use the Elwynn Lamb##44974
|tip It is in your inventory.
Learn the "Elwynn Lamb" Battle Pet |learnpet Elwynn Lamb##209
step
_Congratulations!_
You Collected the "Elwynn Lamb" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Hare",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild all around Durotar.",
keywords={"Critter","Durotar"},
pet=448,
},[[
step
clicknpc Hare##61751
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Hare" Battle Pet |learnpet Hare##448 |goto Durotar/0 45.26,21.67
step
_Congratulations!_
You Collected the "Hare" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Mr. Wiggles",{
patch='111100',
source='WorldEvent',
author="support@zygorguides.com",
description="\nThis battle pet is a reward for completing Children's Week Quests.",
keywords={"Critter","Children's","Week"},
pet=126,
},[[
step
collect Piglet's Collar##23007 |n
|tip This pet is a reward for completing the Children's Week quests in Orgrimmar.
|tip You can use our Children's Week Orgrimmar Quests guide to help you complete these quests.
|tip You can only choose 3 pets a year as a reward for Children's Week.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Piglet's Collar##23007
|tip It will be in your mailbox.
Learn the "Mr. Wiggles" Battle Pet |learnpet Mr. Wiggles##126
step
_Congratulations!_
You Collected the "Mr. Wiggles" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Mulgore Hatchling",{
patch='31100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet is sold by a Horde vendor in Icecrown or you can purchase it from the Auction House.",
keywords={"Critter","Icecrown"},
pet=210,
},[[
step
Enter the tent |goto Icecrown/0 75.90,23.56 < 30 |walk
talk Doru Thunderhorn##33556
|tip He is inside the tent.
buy Mulgore Hatchling##44980 |n
collect Mulgore Hatchling##44980 |n
|tip Before you can purchase this pet you must Champion a Tauren character by completeing Argent Tournament quests and dailies.
|tip You can use our Argent Tournament guides to help you complete quests and earn Champion's Seals.
|tip This costs 40 Champion's Seals.
|tip You can only purchase this pet with a Horde Tauren character.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Mulgore Hatchling##44980
|tip It is in your inventory.
Learn the "Mulgore Hatchling" Battle Pet |learnpet Mulgore Hatchling##210 |goto 76.25,24.52
step
_Congratulations!_
You Collected the "Mulgore Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Peanut",{
patch='21000',
source='WorldEvent',
author="support@zygorguides.com",
description="\nThis battle pet is a reward for completing Children's Week Quests.",
keywords={"Critter","Children's","Week"},
pet=159,
},[[
step
collect Elekk Training Collar##32622 |n
|tip This pet is a reward for completing the Children's Week quests in Shattrath.
|tip You can use our Children's Week Shattrath Quests guide to help you complete these quests.
|tip You can only choose 3 pets a year as a reward for Children's Week.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Elekk Training Collar##32622
|tip It will be in your mailbox.
Learn the "Peanut" Battle Pet |learnpet Peanut##159
step
_Congratulations!_
You Collected the "Peanut" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Pint-Sized Pink Pachyderm",{
patch='24000',
source='WorldEvent',
author="support@zygorguides.com",
description="\nYou can purchase this battle pet from a vendor in Durotar during the Brewfest event.",
keywords={"Critter","Brewfest"},
pet=166,
},[[
step
talk Blix Fixwidget##24495
buy Pint-Sized Pink Pachyderm##46707 |goto Durotar/0 41.06,16.96
|tip You can purchase this pet for 100 Brewfest Prize Tokens during the Brewfest event.
|tip You can use our Brewfest quest and daily guides to help you earn tokens.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
collect Pint-Sized Pink Pachyderm##46707 |n
use the Pint-Sized Pink Pachyderm##46707
|tip It is in your inventory.
Learn the "Pint-Sized Pink Pachyderm" Battle Pet |learnpet Pint-Sized Pink Pachyderm##166
step
_Congratulations!_
You Collected the "Pint-Sized Pink Pachyderm" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Porcupette",{
patch='50100',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a 1 in 335 chance to drop from a Sack of Pet Supplies or you can purchase it from the Auction House.",
keywords={"Critter","Auction","House"},
pet=381,
},[[
step
collect Porcupette##89587 |n
|tip This has a 1 in 335 chance to drop from a Sack of Pet Supplies, it may take a while to get this.
|tip You can earn a Sack of Pet Supplies from Battle Pet Tamer quests and Battle Pet Daily quests.
|tip You can use our Battle Pet Tamer guides as well as our Battle Pet Daily guides to help you complete quests.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Porcupette##89587
|tip It is in your inventory.
Learn the "Porcupette" Battle Pet |learnpet Porcupette##381
step
_Congratulations!_
You Collected the "Porcupette" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Scooter the Snail",{
patch='41000',
source='WorldEvent',
author="support@zygorguides.com",
description="\nThis battle pet is a reward for completing Children's Week Quests.",
keywords={"Critter","Children's","Week"},
pet=289,
},[[
step
collect Snail Shell##66073 |n
|tip This pet is a reward for completing the Children's Week quests in Orgrimmar.
|tip You can use our Children's Week Orgrimmar Quests guide to help you complete these quests.
|tip You can only choose 3 pets a year as a reward for Children's Week.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Snail Shell##66073
|tip It will be in your mailbox.
Learn the "Scooter the Snail" Battle Pet |learnpet Scooter the Snail##289
step
_Congratulations!_
You Collected the "Scooter the Snail" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Snowshoe Rabbit",{
patch='111100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet is sold by an Alliance vendor and can only be purchased from the Auction House if you are Horde.",
keywords={"Critter","Auction","House"},
pet=72,
},[[
step
collect Rabbit Crate (Snowshoe)##8497 |n
|tip You can only purchase this pet from a vendor in Dun Morogh with an Alliance character.
|tip If you do not have an Alliance character you can purchase it from the Auction House.
use the Rabbit Crate (Snowshoe)##8497
|tip It is in your inventory.
Learn the "Snowshoe Rabbit" Battle Pet |learnpet Snowshoe Rabbit##72
step
_Congratulations!_
You Collected the "Snowshoe Rabbit" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Undercity Cockroach",{
patch='111100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a vendor in Netherstorm.",
keywords={"Critter","Netherstorm"},
pet=55,
},[[
step
talk Dealer Rashaad##20980
buy Undercity Cockroach##10393 |goto Netherstorm/0 43.51,35.27
step
collect Undercity Cockroach##10393 |n
|tip This pet is cageable, meaning it can be purchased from the Auction House.
use the Undercity Cockroach##10393
|tip It is inside your inventory.
Learn the "Undercity Cockroach" Battle Pet |learnpet Undercity Cockroach##55
step
_Congratulations!_
You Collected the "Undercity Cockroach" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Undercity Rat",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around the Canals in the Undercity.",
keywords={"Critter","Undercity"},
pet=454,
},[[
step
clicknpc Undercity Rat##61889
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Undercity Rat" Battle Pet |learnpet Undercity Rat##454 |goto Undercity/0 59.92,38.00
step
_Congratulations!_
You Collected the "Undercity Rat" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Whiskers the Rat",{
patch='111100',
source='WorldEvent',
author="support@zygorguides.com",
description="\nThis battle pet is a reward for completing Children's Week Quests.",
keywords={"Critter","Children's","Week"},
pet=127,
},[[
step
collect Rat Cage##23015 |n
|tip This pet is a reward for completing the Children's Week quests in Orgrimmar.
|tip You can use our Children's Week Orgrimmar Quests guide to help you complete these quests.
|tip You can only choose 3 pets a year as a reward for Children's Week.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Rat Cage##23015
|tip It will be in your mailbox.
Learn the "Whiskers the Rat" Battle Pet |learnpet Whiskers the Rat##127
step
_Congratulations!_
You Collected the "Whiskers the Rat" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Winter Reindeer",{
patch='111100',
source='WorldEvent',
author="support@zygorguides.com",
description="\nThis battle pet has a 1 in 4 chance to drop from a Gaily Wrapped Present during the Feast of Winter Veil event.",
keywords={"Critter","Feast","Of","Winter","Veil"},
pet=118,
},[[
step
collect Jingling Bell##21308 |n
|tip This has a 1 in 4 chance to drop from a "Gaily Wrapped Present" during the Feast of Winter Veil event.
|tip The Gaily Wrapped Present can be found under the giant Christmas tree in Orgrimmar.
|tip The Gaily Wrapped presents are only available from Dec 25th through Jan 1st.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Jingling Bell##21308
|tip It is in your inventory.
Learn the "Winter Reindeer" Battle Pet |learnpet Winter Reindeer##118
step
_Congratulations!_
You Collected the "Winter Reindeer" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Wolpertinger",{
patch='22200',
source='WorldEvent',
author="support@zygorguides.com",
description="\nThis battle pet is rewarded to you after completing the quest Catch the Wild Wolpertinger! during the Brewfest event.",
keywords={"Critter","Brewfest"},
pet=153,
},[[
step
talk Snipehunter Goro##155269
Tell him _"What are Synthbrew Goggles?"_
Tell him _"I'd like a pair of Synthbrew Goggles."_
accept Catch the Wild Wolpertinger!##11431 |goto Durotar/0 41.27,18.47
|tip This quest is not available on the Eu servers, you will have to purchase this pet from the Brewfest vendor Blix Fixwidget.
step
Equip the Synthbrew Goggles |havebuff spell:65607
|tip It is in your inventory.
step
use the Wolpertinger Net##32907
|tip Use it on the Wolpertingers around this area.
|tip You need to be wearing the Synthbrew Goggles to see them.
Catch #5# Stunned Wolpertingers |q 11431/1 |goto 40.89,17.19
step
talk Snipehunter Goro##155269
turnin Catch the Wild Wolpertinger!##11431 |goto 41.27,18.47
step
collect Wolpertinger's Tankards##32233 |n
use the Wolpertinger's Tankards##32233
|tip It is in your inventory.
Learn the "Wolpertinger" Battle Pet |learnpet Wolpertinger##153
step
_Congratulations!_
You Collected the "Wolpertinger" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Golden Dragonhawk Hatchling",{
patch='20100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a vendor in Eversong Woods.",
keywords={"Dragonkin","Eversong","Woods"},
pet=142,
},[[
step
Enter the building |goto Eversong Woods/0 44.77,71.44 > 30 |walk
talk Jilanne##16860
|tip She is inside the building.
buy Golden Dragonhawk Hatchling##29953 |goto 44.81,71.81
step
collect Golden Dragonhawk Hatchling##29953 |n
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Golden Dragonhawk Hatchling##29953
|tip It is in your inventory.
Learn the "Golden Dragonhawk Hatchling" Battle Pet |learnpet Golden Dragonhawk Hatchling##142
step
_Congratulations!_
You Collected the "Golden Dragonhawk Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Lil' Tarecgosa",{
patch='42000',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a guild vendor after you earn the Dragonwrath, Tarecgosa's Rest- Guild Edition achievement.",
keywords={"Dragonkin","Guild","Vendor"},
pet=320,
},[[
step
Earn the Dragonwrath, Tarecgosa's Rest- Guild Edition Achievement |complete achieved(5840)
|tip In order to earn this achievement someone in your guild needs to have the legendary weapon "Dragonwrath, Tarecgosa's Rest".
step
talk Goram##46572
buy Lil' Tarecgosa##71033 |goto Orgrimmar/1 48.46,75.58
|tip You need exalted reputation with your guild in order to purchase this.
step
collect Lil' Tarecgosa##71033 |n
use the Lil' Tarecgosa##71033
|tip It is in your inventory.
Learn the "Lil' Tarecgosa" Battle Pet |learnpet Lil' Tarecgosa##320
step
_Congratulations!_
You Collected the "Lil' Tarecgosa" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Red Dragonhawk Hatchling",{
patch='20100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a vendor in Eversong Woods.",
keywords={"Dragonkin","Eversong","Woods"},
pet=143,
},[[
step
Enter the building |goto Eversong Woods/0 44.77,71.44 > 30 |walk
talk Jilanne##16860
|tip She is inside the building.
buy Red Dragonhawk Hatchling##29956 |goto 44.81,71.81
step
collect Red Dragonhawk Hatchling##29956 |n
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Red Dragonhawk Hatchling##29956
|tip It is in your inventory.
Learn the "Red Dragonhawk Hatchling" Battle Pet |learnpet Red Dragonhawk Hatchling##143
step
_Congratulations!_
You Collected the "Red Dragonhawk Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Silver Dragonhawk Hatchling",{
patch='20100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a vendor in Eversong Woods.",
keywords={"Dragonkin","Eversong","Woods"},
pet=144,
},[[
step
Enter the building |goto Eversong Woods/0 44.77,71.44 > 30 |walk
talk Jilanne##16860
|tip She is inside the building.
buy Silver Dragonhawk Hatchling##29957 |goto 44.81,71.81
step
collect Silver Dragonhawk Hatchling##29957 |n
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Silver Dragonhawk Hatchling##29957
|tip It is in your inventory.
Learn the "Silver Dragonhawk Hatchling" Battle Pet |learnpet Silver Dragonhawk Hatchling##144
step
_Congratulations!_
You Collected the "Silver Dragonhawk Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Thundering Serpent Hatchling",{
patch='50100',
source='BlackMarket',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from Unclaimed Black Market Container.",
keywords={"Dragonkin","Black","Market"},
pet=802,
},[[
step
talk Madam Goya##100986
buy Unclaimed Black Market Container##127995 |n
|tip There is a chance this will not be available to purchase, you may have to come back and check in from time to time.
use the Unclaimed Black Market Container##127995
|tip It is in your inventory.
collect Thundering Serpent Hatchling##85513 |n
|tip This is a very rare drop.
use the Thundering Serpent Hatchling##85513
|tip It is in your inventory.
Learn the "Thundering Serpent Hatchling" Battle Pet |learnpet Thundering Serpent Hatchling##802 |goto Dalaran L/11 71.39,17.92
step
_Congratulations!_
You Collected the "Thundering Serpent Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Ammen Vale Lashling",{
patch='31100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet is sold by an Alliance vendor and can only be purchased from the Auction House if you are Horde.",
keywords={"Elemental","Auction","House"},
pet=212,
},[[
step
collect Ammen Vale Lashling##44984 |n
|tip You can only purchase this pet from a vendor in Northrend with an Alliance character.
|tip If you do not have an Alliance character you can purchase it from the Auction House.
use the Ammen Vale Lashling##44984
|tip It is in your inventory.
Learn the "Ammen Vale Lashling" Battle Pet |learnpet Ammen Vale Lashling##212
step
_Congratulations!_
You Collected the "Ammen Vale Lashling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Dark Phoenix Hatchling",{
patch='40300',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a guild vendor after you earn the United Nations guild achievement.",
keywords={"Elemental","Guild","Vendor"},
pet=270,
},[[
step
Earn the United Nations Guild Achievement |complete achieved(5892)
|tip In order to earn this achievement someone in your guild must raise 55 reputations to exalted.
step
talk Goram##46572
buy Dark Phoenix Hatchling##63138 |goto Orgrimmar/1 48.46,75.58
|tip You need exalted reputation with your guild in order to purchase this.
step
collect Dark Phoenix Hatchling##63138 |n
use the Dark Phoenix Hatchling##63138
|tip It is in your inventory.
Learn the "Dark Phoenix Hatchling" Battle Pet |learnpet Dark Phoenix Hatchling##270
step
_Congratulations!_
You Collected the "Dark Phoenix Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Elementium Geode",{
patch='40300',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from mining Elementium Veins or you can purchase it from the Auction House.",
keywords={"Elemental","Auction","House"},
pet=293,
},[[
step
collect Elementium Geode##67282 |n
|tip This has a very rare chance to drop from mining Elementium Veins, it may take you a long time to get this.
|tip If you plan on mining the Elementium Veins you can use our Elementium Mining Profession guide for the best route to farm them in the Twilight Highlands.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Elementium Geode##67282
|tip It is in your inventory.
Learn the "Elementium Geode" Battle Pet |learnpet Elementium Geode##293
step
_Congratulations!_
You Collected the "Elementium Geode" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Lumpy",{
patch='43000',
source='WorldEvent',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from Stolen Presents during the Feast of Winter Veil event or you can purchase it from the Auction House.",
keywords={"Elemental","Feast","Of","Winter","Veil"},
pet=337,
},[[
step
collect Stolen Present##116762 |n
|tip You can earn this by completing the daily quest "You're a Mean One..." during the Feast of Winter Veil event.
|tip You can use our Feast of Winter Veil Daily Quest guides to help you complete the quest.
use the Stolen Present##116762
|tip It is in your inventory.
collect Lump of Coal##73797 |n
|tip This has a 1 in 65 chance to drop from a Stolen Present, it may take several attempts to get this.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Lump of Coal##73797
|tip It is in your inventory.
Learn the "Lumpy" Battle Pet |learnpet Lumpy##337
step
_Congratulations!_
You Collected the "Lumpy" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Pebble",{
patch='40300',
source='Achievement',
author="support@zygorguides.com",
description="\nThis battle pet is a reward for completing the Rock Lover achievement.",
keywords={"Elemental","Rock","Lover"},
pet=265,
},[[
step
collect Pebble##60869 |n
|tip This pet is a reward for completing the achievement "Rock Lover".
|tip To get this achievement you must complete the Therazane daily quest "Lost In The Deeps" 10 times.
|tip You can use our "Rock Lover" achievement guide to help you complete the achievement.
use the Pebble##60869
|tip It will be in your mailbox.
Learn the "Pebble" Battle Pet |learnpet Pebble##265
step
_Congratulations!_
You Collected the "Pebble" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Searing Scorchling",{
patch='24000',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a vendor in the Molten Front.",
keywords={"Elemental","Molten","Front"},
pet=172,
},[[
step
Complete the Quest _Calling the Ancients_ |complete completedq(29283)
|tip You will have to grind Firelands dailies and quests to earn 445 Marks of the World Tree.
|tip You can use the Firelands quest and dailies guides to help you.
|tip This will take about a month to grind.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
talk Zen'Vorka##52822
buy Zen'Vorka's Cache##71631 |n
|tip This costs 30 Mark of the World Tree.
collect Zen'Vorka's Cache##71631 |n
use the Zen'Vorka's Cache##71631
|tip It is in your inventory.
collect Scorched Stone##34955 |n
|tip This has a 1 in 65 chance to drop, it may take several attempts to get this.
use the Scorched Stone##34955
|tip It is in your inventory.
Learn the "Searing Scorchling" Battle Pet |learnpet Searing Scorchling##172 |goto Molten Front/0 47.0,90.6
step
_Congratulations!_
You Collected the "Searing Scorchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Teldrassil Sproutling",{
patch='31100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet is sold by an Alliance vendor and can only be purchased from the Auction House if you are Horde.",
keywords={"Elemental","Auction","House"},
pet=204,
},[[
step
collect Teldrassil Sproutling##44965 |n
|tip You can only purchase this pet from a vendor in Northrend with an Alliance character.
|tip If you do not have an Alliance character you can purchase it from the Auction House.
use the Teldrassil Sproutling##44965
|tip It is in your inventory.
Learn the "Teldrassil Sproutling" Battle Pet |learnpet Teldrassil Sproutling##204
step
_Congratulations!_
You Collected the "Teldrassil Sproutling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Tiny Snowman",{
patch='111100',
source='WorldEvent',
author="support@zygorguides.com",
description="\nThis battle pet has a 1 in 4 chance to drop from Gaily Wrapped Present during the Feast of Winter Veil event.",
keywords={"Elemental","Feast","Of","Winter","Veil"},
pet=117,
},[[
step
collect Snowman Kit##21309 |n
|tip This has a 1 in 4 chance to drop from Gaily Wrapped Present during the Feast of Winter Veil event.
|tip The Gaily Wrapped Present is found under the giant Christmas tree in Orgrimmar.
|tip The Gaily Wrapped presents are only available from Dec 25th through Jan 1st.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Snowman Kit##21309
|tip It is in your inventory.
Learn the "Tiny Snowman" Battle Pet |learnpet Tiny Snowman##117
step
_Congratulations!_
You Collected the "Tiny Snowman" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Withers",{
patch='40100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet is sold by an vendor in Darkshore.",
keywords={"Elemental","Darkshore"},
pet=220,
},[[
step
talk Zidormi##141489
Tell her _"Can you show me what Darkshore was like before the battle?"_
Travel to the past |complete ZGV.InPhase("Old Darnassus") |goto Darkshore/0 48.86,24.46
step
Enter the cave |goto 56.78,31.12 < 30 |walk
talk Apothecary Furrows##33980
|tip He walks around this area at the bottom of the cave.
|tip There is a chance he may not be around and you will have to wait until he spawns again because he is a part of an Alliance quest chain that requires him to be killed.
buy Withers##46325 |goto 57.42,33.78
step
collect Withers##46325 |n
use the Withers##46325
|tip It is in your inventory.
Learn the "Withers" Battle Pet |learnpet Withers##220
step
_Congratulations!_
You Collected the "Withers" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Alliance Balloon",{
patch='42000',
source='Quest',
author="support@zygorguides.com",
description="\nThis battle pet can only be earned with an Alliance character after completing the quest Blown Away.",
keywords={"Flying","Blown","Away"},
pet=331,
},[[
step
collect Alliance Balloon##72042 |n
|tip This pet can only be obtained by an alliance character after completing the quest "Blown Away".
use the Alliance Balloon##72042
|tip It is in your inventory.
Learn the "Alliance Balloon" Battle Pet |learnpet Alliance Balloon##331
step
_Congratulations!_
You Collected the "Alliance Balloon" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Blue Mini Jouster",{
patch='40300',
source='Quest',
author="support@zygorguides.com",
description="\nThis battle pet can be chosen as a reward when you complete the achievement Beware of the 'Unbeatable?' Pterodactyl or complete the achievement The 'Unbeatable?' Pterodactyl: BEATEN.",
keywords={"Flying","Beware","The","Unbeatable","Pterodactyl","Beaten"},
pet=259,
},[[
step
Earn the Beware of the 'Unbeatable?' Pterodactyl Achievement |complete achieved(4959)
|tip You can use our achievement guide to help you earn this.
step
collect Blue Mini Jouster##65661 |n
|tip This is one of two rewards you can choose from after completing the achievement "Beware of the 'Unbeatable?' Pterodactyl".
|tip The pet you did not choose can be earned as a reward by getting the achievement "The 'Unbeatable?' Pterodacyl: BEATEN".
use the Blue Mini Jouster##65661
|tip It is in your inventory.
Learn the "Blue Mini Jouster" Battle Pet |learnpet Blue Mini Jouster##259
step
_Congratulations!_
You Collected the "Blue Mini Jouster" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Blue Moth",{
patch='20100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet is sold by an Alliance vendor and can only be purchased from the Auction House if you are Horde.",
keywords={"Flying","Auction","House"},
pet=138,
},[[
step
collect Blue Moth Egg##29901 |n
|tip You can only purchase this pet from a vendor in Kalimdor with an Alliance character.
|tip If you do not have an Alliance character you can purchase it from the Auction House.
use the Blue Moth Egg##29901
|tip It is in your inventory.
Learn the "Blue Moth" Battle Pet |learnpet Blue Moth##138
step
_Congratulations!_
You Collected the "Blue Moth" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Darkmoon Balloon",{
patch='43000',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a vendor at the Darkmoon Faire.",
keywords={"Flying","Darkmoon","Faire"},
pet=336,
},[[
step
click Portal to the Darkmoon Faire |goto Mulgore/0 36.85,35.84
|tip The Darkmoon Faire is only available during the first week of every month.
Teleport to the Darkmoon Faire |goto Darkmoon Island/0 51.29,23.86 |c
step
talk Lhara##14846
buy Darkmoon Balloon##73762 |goto 48.25,69.52
|tip It costs 90 Darkmoon Faire tickets.
|tip To earn tickets you have to complete daily quests.
|tip You can use our Darkmoon Faire guides to help you earn tickets.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
collect Darkmoon Balloon##73762 |n
use the Darkmoon Balloon##73762
|tip It is in your inventory.
Learn the "Darkmoon Balloon" Battle Pet |learnpet Darkmoon Balloon##336
step
_Congratulations!_
You Collected the "Darkmoon Balloon" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Gilnean Raven",{
patch='50100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet is obtainable through an Alliance battle pet trainer in Darkshore and can only be purchased from the Auction House if you are Horde.",
keywords={"Flying","Auction","House"},
pet=630,
},[[
step
buy Gilnean Raven##63098 |n
|tip This pet can only be obtained with an Alliance Worgen character through a battle pet trainer in Darkshore.
|tip If you do not have an Alliance Worgen character you can purchase it from the Auction House.
|tip It will be in your mailbox after you purchase it from the Auction House.
Learn the "Gilnean Raven" Battle Pet |learnpet Gilnean Raven##630
step
_Congratulations!_
You Collected the "Gilnean Raven" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Gold Mini Jouster",{
patch='40300',
source='Quest',
author="support@zygorguides.com",
description="\nThis battle pet can be chosen as a reward when you complete the achievement Beware of the 'Unbeatable?' Pterodactyl or complete the achievement The 'Unbeatable?' Pterodactyl: BEATEN.",
keywords={"Flying","Beware","The","Unbeatable","Pterodactyl","Beaten"},
pet=260,
},[[
step
Earn the Beware of the 'Unbeatable?' Pterodactyl Achievement |complete achieved(4959)
|tip You can use our achievement guide to help you earn this.
step
collect Gold Mini Jouster##65662 |n
|tip This is one of two rewards you can choose from after completing the achievement "Beware of the 'Unbeatable?' Pterodactyl".
|tip The pet you did not choose can be earned as a reward by getting the achievement "The 'Unbeatable?' Pterodacyl: BEATEN".
use the Gold Mini Jouster##65662
|tip It is in your inventory.
Learn the "Gold Mini Jouster" Battle Pet |learnpet Gold Mini Jouster##260
step
_Congratulations!_
You Collected the "Gold Mini Jouster" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Great Horned Owl",{
patch='111100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet is sold by an Alliance vendor and can only be purchased from the Auction House if you are Horde.",
keywords={"Flying","Auction","House"},
pet=68,
},[[
step
collect Great Horned Owl##8500 |n
|tip You can only purchase this pet from a vendor in Darnassus with an Alliance character.
|tip If you do not have an Alliance character you can purchase it from the Auction House.
use the Great Horned Owl##8500
|tip It is in your inventory.
Learn the "Great Horned Owl" Battle Pet |learnpet Great Horned Owl##68
step
_Congratulations!_
You Collected the "Great Horned Owl" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Hawk Owl",{
patch='111100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet is sold by an Alliance vendor and can only be purchased from the Auction House if you are Horde.",
keywords={"Flying","Auction","House"},
pet=67,
},[[
step
collect Hawk Owl##8501 |n
|tip You can only purchase this pet from a vendor in Darnassus with an Alliance character.
|tip If you do not have an Alliance character you can purchase it from the Auction House.
use the Hawk Owl##8501
|tip It is in your inventory.
Learn the "Hawk Owl" Battle Pet |learnpet Hawk Owl##67
step
_Congratulations!_
You Collected the "Hawk Owl" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Plump Turkey",{
patch='32200',
source='WorldEvent',
author="support@zygorguides.com",
description="\nThis battle pet is given as a reward when you complete the Pilgrim achievement during the Pilgrim's Bounty world event.",
keywords={"Flying","Pilgrim's","Bounty"},
pet=201,
},[[
step
collect Turkey Cage##44810 |n
|tip This is a reward for completing the achievement "Pilgrim" during the Pilgrim's Bounty world event.
|tip You can use our "Pilgrim" achievement guide to help you complete the achievement.
use the Turkey Cage##44810
|tip It will be in your mailbox after you complete the achievement.
Learn the "Plump Turkey" Battle Pet |learnpet Plump Turkey##201
step
_Congratulations!_
You Collected the "Plump Turkey" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Pterrordax Hatchling",{
patch='41000',
source='Profession',
author="support@zygorguides.com",
description="\nThis battle pet is obtained by finding and solving the Pterrordax Hatchling rare Archaeology Fossil artifact.",
keywords={"Flying","Archaeology"},
pet=309,
},[[
step
cast Survery##80451
|tip Open your world map and search for areas that have shovel icons in either Kalimdor or the Eastern Kingdoms.
|tip When you arrive, the area where you can survey, will be sectioned off in red on your mini map.
|tip Use the Survey ability to summon a telescope, the telescope will point you in the direction an artifact is buried.
|tip Use the Survey ability to pinpoint buried artifacts in the area, you can dig up to 6 artifacts in an area.
collect Pterrordax Hatchling##69821 |n
|tip Keep going from dig site to dig site collecting fragments and using them to solve artifacts until you discover the Pterrordax Hatchling artifact.
|tip When you discover the Pterrordax Hatchling artifact it will show up in the fossils tab in your archaeology book.
|tip This is a rare artifact that takes 120 Fossil Fragments to solve.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Pterrordax Hatchling##69821
|tip It is in your inventory.
Learn the "Pterrordax Hatchling" Battle Pet |learnpet Pterrordax Hatchling##309
step
_Congratulations!_
You Collected the "Pterrordax Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Rustberg Gull",{
patch='40100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a vendor in Tol Barad Peninsula.",
keywords={"Flying","Tol","Barad","Peninsula"},
pet=271,
},[[
step
talk Pogg##48531
buy Rustberg Gull##64996 |goto Tol Barad Peninsula/0 54.50,81.32
|tip This pet costs 50 Tol Barad Commendation Badges.
|tip You must have reputation level Honor with Hellscream's Reach in order to purchase this from the vendor.
|tip You must complete PVP dailies to earn the badges and increase your rep.
|tip You can use our Tol Barad Dailies guide to help you earn badges and increase your rep.
|tip This pet is cageable, meaning it can be purchased from the Auction House.
step
collect Rustberg Gull##64996 |n
use the Rustberg Gull##64996
|tip It is in your inventory.
Learn the "Rustberg Gull" Battle Pet |learnpet Rustberg Gull##271
step
_Congratulations!_
You Collected the "Rustberg Gull" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Tiny Flamefly",{
patch='40300',
source='Quest',
author="support@zygorguides.com",
description="\nThis battle pet rewarded to you after completing the quest Not Fireflies, Flameflies.",
keywords={"Flying","Not","Fireflies","Flameflies"},
pet=287,
},[[
step
talk Ariok##48559
accept Burning Vengeance##28418 |goto Burning Steppes/0 17.47,51.61
step
talk Mouton Flamestar##47779
accept Done Nothing Wrong##28417 |goto 16.98,51.29
step
clicknpc Fettered Green Whelpling##47820
|tip It flies around this area.
Free the Green Whelpling |q 28417/2 |goto 17.58,60.46
step
clicknpc Fettered Blue Whelpling##47821
|tip It flies around this area.
Free the Blue Whelpling |q 28417/3 |goto 19.21,61.66
step
clicknpc Fettered Bronze Whelpling##47822
|tip It flies around this area.
Free the Bronze Whelpling |q 28417/4 |goto 21.25,61.50
step
clicknpc Fettered Red Whelpling##47814
|tip It flies around this area.
Free the Red Whelpling |q 28417/1 |goto 23.20,60.22
stickystart "Kill_Flamescale_Broodlings"
step
kill Blackrock Whelper##47782 |q 28418/1 |goto 22.01,59.24
step
label "Kill_Flamescale_Broodlings"
kill Flamescale Broodling##7049 |q 28418/2 |goto 22.01,59.24
step
talk Ariok##48559
turnin Burning Vengeance##28418 |goto 17.46,51.61
accept Stocking Up##28419 |goto 17.46,51.61
accept A Future Project##28420 |goto 17.46,51.61
accept Mud Hunter##28421 |goto 17.46,51.61
step
talk Mouton Flamestar##47779
turnin Done Nothing Wrong##28417 |goto 16.98,51.29
step
click Obsidian-Flecked Mud##206853+
|tip They look like little brown piles of mud on the ground around this area.
collect Obsidian-Flecked Mud##63124 |q 28421/1 |goto 16.73,42.64
stickystart "Collect_Ember_Worg_Hides"
step
kill Venomtip Scorpid##9691+
collect Razor-Sharp Scorpid Barb##63135 |q 28419/1 |goto 11.02,50.46
step
label "Collect_Ember_Worg_Hides"
kill Ember Worg##9690+
collect Ember Worg Hide##63136 |q 28420/1 |goto 10.15,52.54
step
talk Ariok##48559
turnin Stocking Up##28419 |goto 17.46,51.60
turnin A Future Project##28420 |goto 17.46,51.60
turnin Mud Hunter##28421 |goto 17.46,51.60
accept The Sand, the Cider, and the Orb##28422 |goto 17.46,51.60
step
talk Gorzeeki Wildeyes##14437
turnin The Sand, the Cider, and the Orb##28422 |goto 8.39,35.78
accept Warlocks Have the Neatest Stuff##28423 |goto 8.39,35.78
accept Shadow Boxing##28424 |goto 8.39,35.78
step
kill Ner'gosh the Shadow##47805 |q 28424/1 |goto 9.93,29.67
step
Kill enemies around this area
collect Clear Glass Orb##63134 |q 28423/1 |goto 7.92,30.49
step
click Slumber Sand##206881
collect Slumber Sand##63132 |q 28423/2 |goto 5.36,31.97
step
click Fel Slider Cider##206882
collect Fel Slider Cider##63133 |q 28423/3 |goto 5.15,30.95
step
talk Gorzeeki Wildeyes##14437
turnin Warlocks Have the Neatest Stuff##28423 |goto 8.40,35.78
turnin Shadow Boxing##28424 |goto 8.40,35.78
accept Return to Ariok##28425 |goto 8.40,35.78
step
talk Ariok##48559
turnin Return to Ariok##28425 |goto 17.46,51.60
accept Chiselgrip, the Heart of the Steppes##28426 |goto 17.46,51.60
step
Kill enemies around this area
Slay #15# Blackrock Troops |q 28426/1 |goto 38.28,54.09
step
talk Stebben Oreknuckle##48033
turnin Chiselgrip, the Heart of the Steppes##28426 |goto 46.81,44.07
accept Prove Yer Allegiance##28225 |goto 46.81,44.07
accept Scrapped Golems##28226 |goto 46.81,44.07
step
talk Grimly Singefeather##48321
fpath Chiselgrip |goto 46.14,41.80
stickystart "Collect_Obsidian_Pistons"
stickystart "Collect_Flux_Exhaust_Sieves"
stickystart "Collect_Thorium_Gearshafts"
stickystart "Collect_Stone_Power_Core"
step
Kill Thaurissan enemies around this area
Slay #10# Thaurissan Dwarves |q 28225/1 |goto 49.13,38.03
step
label "Collect_Obsidian_Pistons"
kill War Reaver##7039+
click War Reaver Parts##206973
|tip They look like metal parts that fall off of War Reavers after you kill them.
Choose _<Salvage the Obsidian Piston>_
|tip This option may not be available each time.
collect Obsidian Piston##63333 |q 28226/1 |goto 51.32,38.76
step
label "Collect_Flux_Exhaust_Sieves"
kill War Reaver##7039+
click War Reaver Parts##206973
|tip They look like metal parts that fall off of War Reavers after you kill them.
Choose _<Salvage the Flux Exhaust Sieve>_
|tip This option may not be available each time.
collect Flux Exhaust Sieve##63336 |q 28226/2 |goto 51.32,38.76
step
label "Collect_Thorium_Gearshafts"
kill War Reaver##7039+
click War Reaver Parts##206973
|tip They look like metal parts that fall off of War Reavers after you kill them.
Choose _<Salvage the Thorium Gearshaft>_
|tip This option may not be available each time.
collect Thorium Gearshaft##63335 |q 28226/3 |goto 51.32,38.76
step
label "Collect_Stone_Power_Core"
kill War Reaver##7039+
click War Reaver Parts##206973
|tip They look like metal parts that fall off of War Reavers after you kill them.
Choose _<Salvage the Stone Power Core. These are rare!>_
|tip This option may not be available each time.
collect Stone Power Core##63334 |q 28226/4 |goto 51.32,38.76
step
talk Stebben Oreknuckle##48033
turnin Prove Yer Allegiance##28225 |goto 46.81,44.07
turnin Scrapped Golems##28226 |goto 46.81,44.07
accept Golem Training##28227 |goto 46.81,44.07
step
talk Chiseled Golem##48037+
|tip They look like rock golems standing guard around this area.
Tell them _"I'm here to help you with your combat training, golem."_
|tip After talking to the golem you will have to fight it for a bit and it will eventually teleport away to complete it's training.
step
talk Stebben Oreknuckle##48033
turnin Golem Training##28227 |goto 46.81,44.08
Train #4# Chiseled Golems |q 28227/1 |goto 45.72,44.46
step
talk Eitrigg##48568
accept A Needle in a Hellhole##28427 |goto 44.53,44.42
step
talk Thelaron Direneedle##48001
turnin A Needle in a Hellhole##28427
|tip He will offer you one of four quests based on what race your character is.
accept A Perfect Costume##28428 |goto 45.5,46.4 |or
accept A Perfect Costume##28429 |goto 45.5,46.4 |or
accept A Perfect Costume##28430 |goto 45.5,46.4 |or
accept A Perfect Costume##28431 |goto 45.5,46.4 |or
step
click Tailor's Table##206947
|tip It is next to Thelaron Direneedle.
Choose _<Investigate the hides.>_
Choose _<Take two hides.>_
Choose _<Take four handfuls of mud.>_
Choose _<Take two spools of thread.>_
talk Thelaron Direneedle##48001
Tell him _"I brought you some hides, mud, and thread."_
Create the Perfect Costume |only if Orc or Undead |q 28428/1 |goto 45.45,46.34
step
click Tailor's Table##206947
|tip It is next to Thelaron Direneedle.
Choose _<Investigate the hides.>_
Choose _<Take three hides.>_
Choose _<Take two handfuls of mud.>_
Choose _<Take one spools of thread.>_
talk Thelaron Direneedle##48001
Tell him _"I brought you some hides, mud, and thread."_
Create the Perfect Costume |only if BloodElf or Troll |q 28431/1 |goto 45.45,46.34
step
click Tailor's Table##206947
|tip It is next to Thelaron Direneedle.
Choose _<Investigate the hides.>_
Choose _<Take one hides.>_
Choose _<Take three handfuls of mud.>_
Choose _<Take four spools of thread.>_
talk Thelaron Direneedle##48001
Tell him _"I brought you some hides, mud, and thread."_
Create the Perfect Costume |only if Goblin |q 28430/1 |goto 45.45,46.34
step
click Tailor's Table##206947
|tip It is next to Thelaron Direneedle.
Choose _<Investigate the hides.>_
Choose _<Take four hides.>_
Choose _<Take one handfuls of mud.>_
Choose _<Take three spools of thread.>_
talk Thelaron Direneedle##48001
Tell him _"I brought you some hides, mud, and thread."_
Create the Perfect Costume |only if Tauren or Pandaren |q 28429/1 |goto 45.45,46.34
step
talk Eitrigg##48568
turnin A Perfect Costume##28428 |goto 44.54,44.41 |or
turnin A Perfect Costume##28429 |goto 44.54,44.41 |or
turnin A Perfect Costume##28430 |goto 44.54,44.41 |or
turnin A Perfect Costume##28431 |goto 44.54,44.41 |or
accept Into the Black Tooth Hovel##28432 |goto 44.54,44.41
step
use the Blackrock Disguise##63357
|tip It is in your inventory.
Wear the Blackrock Orc Disguise |havebuff 236452 |q 28432 |or
Wear the Blackrock Orc Disguise |havebuff 236451 |q 28432 |or
Wear the Blackrock Orc Disguise |havebuff 236456 |q 28432 |or
Wear the Blackrock Orc Disguise |havebuff 236455 |q 28432 |or
Wear the Blackrock Orc Disguise |havebuff 236695 |q 28432 |or
step
talk Quartermaster Kaoshin##48085
turnin Into the Black Tooth Hovel##28432 |goto 45.32,51.73
accept Grunt Work##28433 |goto 45.32,51.73
step
Click the Quest Discovered box
accept Strategic Cuts##28434
step
Enter the building |goto 45.44,51.65 < 30 |only if walking
use the Razor-Sharp Scorpid Barb##63350
|tip Use it on Voodooist Timan.
|tip He is at the top of the tower around this area.
Slay Voodooist Timan |q 28434/3 |goto 45.01,52.51
step
use the Razor-Sharp Scorpid Barb##63350
|tip Use it on Worgmistress Othana.
|tip She walks around this area.
Slay Worgmistress Othana |q 28434/2 |goto 39.20,56.18
step
use the Razor-Sharp Scorpid Barb##63350
|tip Use it on Gorlop.
|tip He walks between the two lava pools around this area.
Slay Gorlop |q 28434/1 |goto 40.08,60.43
step
Click the Complete Quest Box
turnin Strategic Cuts##28434
step
click Blackrock Boots##28433+
|tip They look like pairs of boots laying on the ground around this area.
Polish #7# Pairs of Blackrock Boots |q 28433/1 |goto 37.31,54.07
step
talk Quartermaster Kaoshin##48085
turnin Grunt Work##28433 |goto 45.32,51.74
accept The Kodocaller's Horn##28435 |goto 45.32,51.74
step
use the Horn of the Callers##63356
|tip Use it on the Blackrock War Kodos around this area.
|tip If a Kodo becomes hostile you can fight it until it submits.
Summon #7# Blackrock War Kodos Back to Camp |q 28435/1 |goto 45.67,60.58
step
Click the Complete Quest Box
turnin The Kodocaller's Horn##28435
accept Taking the Horn For Ourselves##28436
step
talk Eitrigg##48568
turnin Taking the Horn For Ourselves##28436 |goto 44.54,44.41
accept General Thorg'izog##28437 |goto 44.54,44.41
step
Enter the building |goto 32.37,34.94 > 30 |walk
talk General Thorg'izog##48133
|tip He is inside the building.
turnin General Thorg'izog##28437 |goto 30.68,33.72
accept Trial by Magma##28438 |goto 30.68,33.72
step
talk Wyrtle Spreelthonket##48159
|tip He is standing next to General Thorg'izog.
Tell him _"I'd like to challenge your magma lord to a fight."_
kill Magma Lord Kolob##48156 |q 28438/1 |goto 31.09,33.98
step
talk General Thorg'izog##48133
turnin Trial by Magma##28438 |goto 30.68,33.72
accept I Am the Law and I Am the Lash##28439 |goto 30.68,33.72
step
Click the Quest Discovered box
accept Abuse of Power##28440
stickystart "Cudgel_20_Blackrock_Minions"
step
use the Blackrock Cudgel of Discipline##63390
|tip Use it on the Blackrock Sergeants around this area.
Slay #5# Blackrock Sergeants |q 28440/1 |goto 33.68,35.20
step
label "Cudgel_20_Blackrock_Minions"
use the Blackrock Cudgel of Discipline##63390
|tip You can use it to kill anyone around this area.
Cudgel #20# Blackrock Minions |q 28439/1 |goto 36.68,36.56
step
Click the Complete Quest Box
turnin Abuse of Power##28440 |goto 34.31,34.60
accept Enough Damage For One Day##28441 |goto 34.31,34.60
step
Enter the building |goto 32.42,35.01 > 30 |walk
talk General Thorg'izog##48133
turnin I Am the Law and I Am the Lash##28439 |goto 30.69,33.72
step
talk Eitrigg##48568
turnin Enough Damage For One Day##28441 |goto 44.54,44.40
accept Flame Crest##28442 |goto 44.54,44.40
step
Enter the cave |goto 54.48,23.91 > 30 |walk
talk Kibler##10260
|tip He is inside the cave.
turnin Flame Crest##28442 |goto 54.95,22.54
accept Not Fireflies, Flameflies##28491 |goto 54.95,22.54
step
talk Vahgruk##13177
fpath Flame Crest |goto 54.17,24.23
step
clicknpc Flamefly##48671+
|tip They look like tiny yellow and black flies, flying around this area.
collect Flamefly##64409	|q 28491/1 |goto 55.71,32.93
step
Enter the cave |goto 54.57,23.78 > 30 |walk
talk Kibler##10260
|tip He is inside the cave.
turnin Not Fireflies, Flameflies##28491 |goto 54.95,22.55
step
collect Tiny Flamefly##66080 |n
use the Tiny Flamefly##66080
|tip It is in your inventory.
Learn the "Tiny Flamefly" Battle Pet |learnpet Tiny Flamefly##287
step
_Congratulations!_
You Collected the "Tiny Flamefly" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Tirisfal Batling",{
patch='31100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet is sold by a vendor in Icecrown.",
keywords={"Flying","Icecrown"},
pet=206,
},[[
step
Enter the tent |goto Icecrown/0 75.90,23.56 < 30 |walk
talk Eliza Killian##33555
|tip He is inside the tent.
buy Tirisfal Batling##44971 |goto 76.44,24.11
|tip Before you can purchase this pet you must Champion a Undead character by completeing Argent Tournament quests and dailies.
|tip You can use our Argent Tournament guides to help you complete quests and earn Champion's Seals.
|tip This costs 40 Champion's Seals.
|tip You can only purchase this pet with a Horde Undead character.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
collect Tirisfal Batling##44971 |n
use the Tirisfal Batling##44971
|tip It is in your inventory.
Learn the "Tirisfal Batling" Battle Pet |learnpet Tirisfal Batling##44971
step
_Congratulations!_
You Collected the "Tirisfal Batling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Westfall Chicken",{
patch='30200',
source='Quest',
author="support@zygorguides.com",
description="\nThis battle pet is rewarded to you after you complete the quest CLUCK!.",
keywords={"Flying","CLUCK"},
pet=84,
},[[
step
step
talk William Saldean##33996
buy Special Chicken Feed##11109 |goto Tirisfal Glades/0 61.19,51.97
step
click Chicken##620
|tip Spam the "Chicken" emote on a chicken walking around this area.
|tip The chicken will eventually give you a quizzical look and offer you a quest.
|tip It may take a while to get the quest.
accept CLUCK!##3861 |goto 53.24,56.58
turnin CLUCK!##3861 |goto 53.24,56.58
step
click Farm Chicken Egg##161513
|tip It looks like a brown egg underneath the chicken you are speaking to.
collect Chicken Egg##11110 |n
use the Chicken Egg##11110
|tip It is in your inventory.
Learn the "Westfall Chicken" Battle Pet |learnpet Westfall Chicken##84
step
_Congratulations!_
You Collected the "Westfall Chicken" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\White Moth",{
patch='20100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet is sold by an Alliance vendor and can only be purchased from the Auction House if you are Horde.",
keywords={"Flying","Auction","House"},
pet=141,
},[[
step
collect White Moth Egg##29904 |n
|tip You can only purchase this pet from a vendor in Kalimdor with an Alliance character.
|tip If you do not have an Alliance character you can purchase it from the Auction House.
use the White Moth Egg##29904
|tip It is in your inventory.
Learn the "White Moth" Battle Pet |learnpet White Moth##141
step
_Congratulations!_
You Collected the "White Moth" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Yellow Moth",{
patch='20100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet is sold by an Alliance vendor and can only be purchased from the Auction House if you are Horde.",
keywords={"Flying","Auction","House"},
pet=140,
},[[
step
collect Yellow Moth Egg##29903 |n
|tip You can only purchase this pet from a vendor in Kalimdor with an Alliance character.
|tip If you do not have an Alliance character you can purchase it from the Auction House.
use the Yellow Moth Egg##29903
|tip It is in your inventory.
Learn the "Yellow Moth" Battle Pet |learnpet Yellow Moth##140
step
_Congratulations!_
You Collected the "Yellow Moth" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Argent Squire",{
patch='31000',
source='Quest',
author="support@zygorguides.com",
description="\nThis battle pet is rewarded to you after you complete the quest A Champion Rises.",
keywords={"Humanoid","Argent","Tournament"},
pet=214,
},[[
step
collect Argent Squire##44998 |n
|tip This pet can only be obtained with an Alliance character after you complete the quest "A Champion Rises".
|tip You can use our Argent Tournament Daily Guides to help you complete the quests and earn the Champion title for your character's race.
use the Argent Squire##44998
|tip It is in your inventory.
Learn the "Argent Squire" Battle Pet |learnpet Argent Squire##214
step
_Congratulations!_
You Collected the "Argent Squire" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Argent Gruntling",{
patch='31000',
source='Quest',
author="support@zygorguides.com",
description="\nThis battle pet is rewarded to you after you complete the quest A Champion Rises.",
keywords={"Humanoid","Argent","Tournament"},
pet=216,
},[[
step
collect Argent Gruntling##45022 |n
|tip This pet is rewarded to you after you complete the quest "A Champion Rises".
|tip You can use our Argent Tournament Daily Guides to help you complete the quests and earn the Champion title for your character's race.
use the Argent Gruntling##45022
|tip It is in your inventory.
Learn the "Argent Gruntling" Battle Pet |learnpet Argent Gruntling##216
step
_Congratulations!_
You Collected the "Argent Gruntling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Curious Oracle Hatchling",{
patch='32000',
source='WorldEvent',
author="support@zygorguides.com",
description="\nThis battle pet is given as a reward after completing Children's Week Quests.",
keywords={"Humanoid","Children's","Week"},
pet=225,
},[[
step
collect Curious Oracle Hatchling##46545 |n
|tip This pet is a reward for completing the Children's Week quests in Northrend.
|tip You can use our Children's Week Dalaran Oracles Quests guide to help you complete these quests.
|tip You can only choose 3 pets a year as a reward for Children's Week.
use the Curious Oracle Hatchling##46545
|tip It will be in your mailbox.
Learn the "Curious Oracle Hatchling" Battle Pet |learnpet Curious Oracle Hatchling##225
step
_Congratulations!_
You Collected the "Curious Oracle Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Father Winter's Helper",{
patch='111100',
source='WorldEvent',
author="support@zygorguides.com",
description="\nThis battle pet has a 1 in 4 chance to drop from a Gaily Wrapped Present during the Feast of Winter Veil event.",
keywords={"Flying","Feast","Of","Winter","Veil"},
pet=119,
},[[
step
collect Green Helper Box##21301 |n
|tip This has a 1 in 4 chance to drop from a "Gaily Wrapped Present" during the Feast of Winter Veil event.
|tip The Gaily Wrapped Present can be found under the giant Christmas tree in Orgrimmar.
|tip The Gaily Wrapped presents are only available from Dec 25th through Jan 1st.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Green Helper Box##21301
|tip It is in your inventory.
Learn the "Father Winter's Helper" Battle Pet |learnpet Father Winter's Helper##119
step
_Congratulations!_
You Collected the "Father Winter's Helper" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Guild Herald (Horde)",{
patch='40300',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a guild vendor after you earn the Profit Sharing guild achievement.",
keywords={"Humanoid","Guild","Vendor"},
pet=283,
},[[
step
Earn the Profit Sharing Guild Achievement |complete achieved(5201)
|tip In order to earn this achievement you must loot 100,000 gold from creatures.
step
talk Goram##46572
buy Guild Herald##65364 |goto Orgrimmar/1 48.46,75.58
|tip You need Revered reputation with your guild in order to purchase this.
step
collect Guild Herald##65364 |n
use the Guild Herald##65364
|tip It is in your inventory.
Learn the "Guild Herald" Battle Pet |learnpet Guild Herald##283
step
_Congratulations!_
You Collected the "Guild Herald" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Guild Herald (Alliance)",{
patch='40300',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can only be obtained with an Alliance character.",
keywords={"Humanoid","Guild","Vendor"},
pet=280,
},[[
step
collect Guild Herald##65363 |n
|tip This can only be obtained with an Alliance character.
use the Guild Herald##65363
|tip It is in your inventory.
Learn the "Guild Herald" Battle Pet |learnpet Guild Herald##282
step
_Congratulations!_
You Collected the "Guild Herald" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Guild Page (Horde)",{
patch='40300',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a guild vendor after you earn the Alliance Slayer guild achievement.",
keywords={"Humanoid","Guild","Vendor"},
pet=283,
},[[
step
Earn the Alliance Slayer Guild Achievement |complete achieved(5179)
|tip In order to earn this achievement you must earn an honorable kill on a level 35+ Alliance character of each race and class.
step
talk Goram##46572
buy Guild Page##65362 |goto Orgrimmar/1 48.46,75.58
|tip You need Honored reputation with your guild in order to purchase this.
step
collect Guild Page##65362 |n
use the Guild Page##65362
|tip It is in your inventory.
Learn the "Guild Page" Battle Pet |learnpet Guild Page##281
step
_Congratulations!_
You Collected the "Guild Page" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Guild Page (Alliance)",{
patch='40300',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can only be obtained with an Alliance character.",
keywords={"Humanoid","Guild","Vendor"},
pet=282,
},[[
step
collect Guild Page##65361 |n
|tip This can only be obtained with an Alliance character.
use the Guild Page##65361
|tip It is in your inventory.
Learn the "Guild Page" Battle Pet |learnpet Guild Page##280
step
_Congratulations!_
You Collected the "Guild Page" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Moonkin Hatchling (Horde)",{
patch='40300',
source='In-GameShop',
author="support@zygorguides.com",
description="\nThis battle pet used to be available to purchase from the Bizzard store.",
keywords={"Humanoid","Blizzard","Store"},
pet=298,
},[[
step
collect Moonkin Hatchling##68619 |n
|tip This pet used to be available to purchase from the Blizzard store but is no longer available.
|tip Check your mailbox after you purchase this battle pet from the Blizzard website.
use the Moonkin Hatchling##68619
Learn the "Moonkin Hatchling" Battle Pet |learnpet Moonkin Hatchling##298
step
_Congratulations!_
You Collected the "Moonkin Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Moonkin Hatchling (Alliance)",{
patch='40300',
source='In-GameShop',
author="support@zygorguides.com",
description="\nThis battle pet used to be available to purchase from the Bizzard store.",
keywords={"Humanoid","Blizzard","Store"},
pet=296,
},[[
step
collect Moonkin Hatchling##68618 |n
|tip This battle pet could only be purchased and used on an Alliance account.
|tip This pet is no longer available to purchase.
use the Moonkin Hatchling##68618
Learn the "Moonkin Hatchling" Battle Pet |learnpet Moonkin Hatchling##296
step
_Congratulations!_
You Collected the "Moonkin Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Peddlefeet",{
patch='111100',
source='WorldEvent',
author="support@zygorguides.com",
description="\nYou can purchase this battle pet from a vendor in Thunder Bluff during the Love is in the Air event.",
keywords={"Humanoid","Love","is","In","The","Air"},
pet=122,
},[[
step
talk Lovely Merchant##37674
buy Truesilver Shafted Arrow##22235 |goto Thunder Bluff/0 42.76,55.09
|tip This costs 40 Love Tokens, you can earn tokens by completing daily quests during the Love is in the Air event.
|tip You can use our Love is in the Air guides to help you complete the dailies.
step
collect Truesilver Shafted Arrow##22235 |n
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Truesilver Shafted Arrow##22235
|tip It is in your inventory.
Learn the "Peddlefeet" Battle Pet |learnpet Peddlefeet##122
step
_Congratulations!_
You Collected the "Peddlefeet" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Rotten Little Helper",{
patch='54000',
source='Quest',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from a Stolen Present during the Feast of Winter Veil event.",
keywords={"Humanoid","Feast","Of","Winter","Veil"},
pet=1349,
},[[
step
collect Stolen Present##116762 |n
|tip This is a reward given to you after completing the daily quest "You're A Mean One..." during the Feast of Winter Veil event.
|tip You can use our Feast of Winter Veil Daily Guides to help you complete this quest.
use the Stolen Present##116762
|tip It is in your inventory.
collect Rotten Helper Box##104317 |n
|tip This has a 1 in 65 chance to drop from the "Stolen Present", it may take a few tries to get this.
use the Rotten Helper Box##104317
|tip It is in your inventory.
Learn the "Rotten Little Helper" Battle Pet |learnpet Rotten Little Helper##1349
step
_Congratulations!_
You Collected the "Rotten Little Helper" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Winter's Little Helper",{
patch='111100',
source='WorldEvent',
author="support@zygorguides.com",
description="\nThis battle pet has a 1 in 4 chance to drop from a Gaily Wrapped Present during the Feast of Winter Veil event.",
keywords={"Humanoid","Feast","Of","Winter","Veil"},
pet=120,
},[[
step
collect Red Helper Box##21305 |n
|tip This has a 1 in 4 chance to drop from a "Gaily Wrapped Present" during the Feast of Winter Veil event.
|tip The Gaily Wrapped Present can be found under the giant Christmas tree in Orgrimmar.
|tip The Gaily Wrapped presents are only available from Dec 25th through Jan 1st.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Red Helper Box##21305
|tip It is in your inventory.
Learn the "Winter's Little Helper" Battle Pet |learnpet Winter's Little Helper##120
step
_Congratulations!_
You Collected the "Winter's Little Helper" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Enchanted Broom",{
patch='31100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a vendor in Icecrown after you champion a Blood Elf in the Argent Tournament.",
keywords={"Magic","Icecrown"},
pet=213,
},[[
step
Enter the tent |goto Icecrown/0 75.90,23.56 < 30 |walk
talk Trellis Morningsun##33557
|tip He is inside the tent.
buy Enchanted Broom##44982 |goto 76.34,23.89
|tip Before you can purchase this pet you must Champion a Blood Elf character by completeing Argent Tournament quests and dailies.
|tip You can use our Argent Tournament guides to help you complete quests and earn Champion's Seals.
|tip This costs 40 Champion's Seals.
|tip You can only purchase this pet with a Horde Blood Elf character.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
collect Enchanted Broom##44982 |n
use the Enchanted Broom##44982
|tip It is in your inventory.
Learn the "Enchanted Broom" Battle Pet |learnpet Enchanted Broom##213
step
_Congratulations!_
You Collected the "Enchanted Broom" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Enchanted Lantern",{
patch='40300',
source='Profession',
author="support@zygorguides.com",
description="\nThis battle pet can be created if you have a Cataclysm Enchanting level of 75 or purchased from the Auction House.",
keywords={"Magic","Auction","House"},
pet=267,
},[[
step
collect Enchanted Lantern##67274 |n
|tip You can create this pet if you have a Cataclysm Enchanting level of 75 or you can purchase it from the Auction House.
|tip You can purchase the formula to create this pet for 20 Hypnotic Dust from any Enchanting vendor in all of the major Horde cities.
use the Enchanted Lantern##67274
|tip It is in your inventory.
Learn the "Enchanted Lantern" Battle Pet |learnpet Enchanted Lantern##267
step
_Congratulations!_
You Collected the "Enchanted Lantern" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Festival Lantern",{
patch='43000',
source='WorldEvent',
author="support@zygorguides.com",
description="\nThis battle pet can be purchaed from a vendor in Moonglade during the Lunar Festival event.",
keywords={"Magic","Lunar","Festival"},
pet=342,
},[[
step
talk Valadar Starsong##15864
buy Festival Lantern##74611 |goto Moonglade/0 54.0,35.0
|tip This costs 50 "Coin of Ancestry", which you can earn by completing quests during the Lunar Festival event.
|tip You can use our Lunar Festival guides to help you complete quests.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
collect Festival Lantern##74611 |n
use the Festival Lantern##74611
|tip It is in your inventory.
Learn the "Festival Lantern" Battle Pet |learnpet Festival Lantern##342
step
_Congratulations!_
You Collected the "Festival Lantern" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Legs",{
patch='41000',
source='WorldEvent',
author="support@zygorguides.com",
description="\nThis battle pet is a reward for completing Children's Week Quests.",
keywords={"Magic","Children's","Week"},
pet=308,
},[[
step
collect Legs##69648 |n
|tip This pet is a reward for completing the Children's Week quests in Shattrath.
|tip You can use our Children's Week Shattrath Quests guide to help you complete these quests.
|tip You can only choose 3 pets a year as a reward for Children's Week.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Legs##69648
|tip It will be in your mailbox.
Learn the "Legs" Battle Pet |learnpet Legs##308
step
_Congratulations!_
You Collected the "Legs" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Lunar Lantern",{
patch='43000',
source='WorldEvent',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from an Alliance vendor during the Lunar Festival event or purchased at the Auction House if you are Horde.",
keywords={"Magic","Lunar","Festival"},
pet=341,
},[[
step
collect Lunar Lantern##74610 |n
|tip This pet can only be purchased from a vendor during the Lunar Festival with an Alliance character.
|tip If you do not have an Alliance character you can purchase this from the Auction House.
use the Lunar Lantern##74610
|tip It is in your inventory.
Learn the "Lunar Lantern" Battle Pet |learnpet Lunar Lantern##341
step
_Congratulations!_
You Collected the "Lunar Lantern" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Magic Lamp",{
patch='40300',
source='Profession',
author="support@zygorguides.com",
description="\nThis battle pet can only be created with an Alliance Enchanting recipe or purchased at the Auction House if you are Horde.",
keywords={"Magic","Auction","House"},
pet=292,
},[[
step
collect Magic Lamp##67275 |n
|tip This pet can only be created with an Alliance Enchanting recipe.
|tip If you do not have an Alliance character you can purchase this from the Auction House.
use the Magic Lamp##67275
|tip It is in your inventory.
Learn the "Magic Lamp" Battle Pet |learnpet Magic Lamp##292
step
_Congratulations!_
You Collected the "Magic Lamp" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Shimmering Wyrmling",{
patch='32000',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a vendor in Icecrown.",
keywords={"Magic","Icecrown"},
pet=229,
},[[
step
You Must Have Exalted Reputation With the Sunreavers in Order to Purchase This Pet |complete rep("The Sunreavers")>=Exalted
|tip You can use our Sunreavers Daily Guide to help you gain Exalted rep.
|tip If you do not want to grind rep you can purchase this pet from the Auction House.
step
Enter the tent |goto Icecrown/0 75.90,23.56 < 30 |walk
talk Vasarin Redmorn##34772
|Tip He is inside the tent.
buy Shimmering Wyrmling##46821 |goto 76.16,23.91
|tip This costs 40 Champion's Seals.
step
collect Shimmering Wyrmling##46821 |n
use the Shimmering Wyrmling##46821
|tip It is in your inventory.
Learn the "Shimmering Wyrmling" Battle Pet |learnpet Shimmering Wyrmling##229
step
_Congratulations!_
You Collected the "Shimmering Wyrmling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Willy",{
patch='21000',
source='WorldEvent',
author="support@zygorguides.com",
description="\nThis battle pet is a reward for completing Children's Week Quests.",
keywords={"Magic","Children's","Week"},
pet=157,
},[[
step
collect Sleepy Willy##32617 |n
|tip This pet is a reward for completing the Children's Week quests in Shattrath.
|tip You can use our Children's Week Shattrath Quests guide to help you complete these quests.
|tip You can only choose 3 pets a year as a reward for Children's Week.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Sleepy Willy##32617
|tip It will be in your mailbox.
Learn the "Willy" Battle Pet |learnpet Willy##157
step
_Congratulations!_
You Collected the "Willy" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Clockwork Gnome",{
patch='40100',
source='Profession',
author="support@zygorguides.com",
description="\nThis battle pet is obtained by finding and solving the Clockwork Gnome rare Archaeology Dwarf artifact.",
keywords={"Mechanical","Archaeology"},
pet=277,
},[[
step
cast Survery##80451
|tip Open your world map and search for areas that have shovel icons in either Kalimdor or the Eastern Kingdoms.
|tip When you arrive, the area where you can survey, will be sectioned off in red on your mini map.
|tip Use the Survey ability to summon a telescope, the telescope will point you in the direction an artifact is buried.
|tip Use the Survey ability to pinpoint buried artifacts in the area, you can dig up to 6 artifacts in an area.
collect Clockwork Gnome##64372 |n
|tip Keep going from dig site to dig site collecting fragments and using them to solve artifacts until you discover the Clockwork Gnome artifact.
|tip When you discover the Clockwork Gnome artifact it will show up in the Drawf artifacts tab in your archaeology book.
|tip This is a rare artifact that takes 100 Dwarf Archaeology Fragments to solve.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Clockwork Gnome##64372
|tip It is in your inventory.
Learn the "Clockwork Gnome" Battle Pet |learnpet Clockwork Gnome##277
step
_Congratulations!_
You Collected the "Clockwork Gnome" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Clockwork Rocket Bot",{
patch='23000',
source='WorldEvent',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from a Stolen Present during the Feast of Winter Veil event.",
keywords={"Mechanical","Feast","Of","Winter","Veil"},
pet=191,
},[[
step
collect Stolen Present##116762 |n
|tip This is a reward given to you after completing the daily quest "You're A Mean One..." during the Feast of Winter Veil event.
|tip You can use our Feast of Winter Veil Daily Guides to help you complete this quest.
use the Stolen Present##116762
|tip It is in your inventory.
collect Clockwork Rocket Bot##34425 |n
|tip This has a 1 in 65 chance to drop from the "Stolen Present", it may take a few tries to get this.
use the Clockwork Rocket Bot##34425
|tip It is in your inventory.
Learn the "Clockwork Rocket Bot" Battle Pet |learnpet Clockwork Rocket Bot##191
step
_Congratulations!_
You Collected the "Clockwork Rocket Bot" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Mechanopeep",{
patch='31100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet is sold by an Alliance vendor in Icecrown and can only be purchased from the Auction House if you are Horde.",
keywords={"Mechanical","Auction","House"},
pet=215,
},[[
step
collect Mechanopeep##45002 |n
|tip You can only purchase this pet from a vendor in Icecrown with an Alliance character.
|tip If you do not have an Alliance character you can purchase it from the Auction House.
use the Mechanopeep##45002
|tip It is in your inventory.
Learn the "Mechanopeep" Battle Pet |learnpet Mechanopeep##215
step
_Congratulations!_
You Collected the "Mechanopeep" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Crawling Claw",{
patch='40300',
source='Profession',
author="support@zygorguides.com",
description="\nThis battle pet is obtained by finding and solving the Crawling Claw rare Archaeology Tol'vir artifact.",
keywords={"Undead","Archaeology"},
pet=264,
},[[
step
talk Zidormi##141489
Tell her _"Can you show me what Uldum was like during the time of the Cataclysm?"_
Travel to the past |complete ZGV.InPhase("Old Uldum") |goto Uldum New/0 56.02,35.14
step
cast Survery##80451
|tip Open your world map and search for areas that have shovel icons in Uldum.
|tip You must have an Archaeology skill level of 450 in order for dig sites to appear in Uldum.
|tip When you arrive, the area where you can survey, will be sectioned off in red on your mini map.
|tip Use the Survey ability to summon a telescope, the telescope will point you in the direction an artifact is buried.
|tip Use the Survey ability to pinpoint buried artifacts in the area, you can dig up to 6 artifacts in an area.
collect Crawling Claw##60847 |n
|tip Keep going from dig site to dig site collecting fragments and using them to solve artifacts until you discover the Crawling Claw artifact.
|tip When you discover the Crawling Claw artifact it will show up in the Tol'Vir tab in your archaeology book.
|tip This is a rare artifact that takes 150 Tol'vir Archaeology Fragments to solve.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Crawling Claw##60847
|tip It is in your inventory.
Learn the "Crawling Claw" Battle Pet |learnpet Crawling Claw##264
step
_Congratulations!_
You Collected the "Crawling Claw" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Creepy Crate",{
patch='42200',
source='WorldEvent',
author="support@zygorguides.com",
description="\nThis battle pet is a reward for completing the quest The Creepy Crate during the Hallow's End event.",
keywords={"Undead","Hallow's","End"},
pet=321,
},[[
step
collect Creepy Crate##71076 |n
|tip This pet is rewarded to you after you complete the quest "The Creepy Crate" during the Hallow's End event.
|tip You can use our Hallow's End Quest guide to help you complete the quest chain.
use the Creepy Crate##71076
|tip It is in your inventory.
Learn the "Creepy Crate" Battle Pet |learnpet Creepy Crate##321
step
_Congratulations!_
You Collected the "Creepy Crate" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Fossilized Hatchling",{
patch='40100',
source='Profession',
author="support@zygorguides.com",
description="\nThis battle pet is obtained by finding and solving the Fossilized Hatchling rare Archaeology Fossil artifact.",
keywords={"Undead","Archaeology"},
pet=266,
},[[
step
cast Survery##80451
|tip Open your world map and search for areas that have shovel icons in either Kalimdor or the Eastern Kingdoms.
|tip When you arrive, the area where you can survey, will be sectioned off in red on your mini map.
|tip Use the Survey ability to summon a telescope, the telescope will point you in the direction an artifact is buried.
|tip Use the Survey ability to pinpoint buried artifacts in the area, you can dig up to 6 artifacts in an area.
collect Fossilized Hatchling##60955 |n
|tip Keep going from dig site to dig site collecting fragments and using them to solve artifacts until you discover the Fossilized Hatchling artifact.
|tip When you discover the Fossilized Hatchling artifact it will show up in the fossils tab in your archaeology book.
|tip This is a rare artifact that takes 85 Fossil Fragments to solve.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Fossilized Hatchling##60955
|tip It is in your inventory.
Learn the "Fossilized Hatchling" Battle Pet |learnpet Fossilized Hatchling##266
step
_Congratulations!_
You Collected the "Fossilized Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Macabre Marionette",{
patch='32200',
source='WorldEvent',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Undead pet: Macabre Marionette.",
pet=1351,
},[[
step
You can only obtain this pet during the Day of the Dead event, which only runs for one weekend a year.
confirm
step
talk Innkeeper Gryshka##6929
buy Ice Cold Milk##1179 |goto Orgrimmar/1 53.5,78.8
step
talk Suja##46708
buy Simple Flour##30817 |goto Orgrimmar/1 56.5,61.1
step
talk Chapman##34382
buy Orange Marigold##46718 |goto Dalaran/1 34.7,39.1
|tip You may want to buy a few of these due to their short duration.
buy Recipe: Bread of the Dead##46710 |goto Dalaran/1 34.7,39.1
step
Use the recipe in your bags to learn the Bread of the Dead. |use Recipe: Bread of the Dead##46710
learn Bread of the Dead##65454
step
#include "cooking_fire"
create 1 Bread of the Dead##65454,Cooking,1 total
step
talk Cheerful Dalaran Spirit##35256
accept The Grateful Dead##14166 |goto Dalaran/1 34.5,38.5
turnin The Grateful Dead##14166 |goto Dalaran/1 34.5,38.5
step
Use the Macabre Marionette in your bags. |use Macabre Marionette##46831
learnpet Macabre Marionette##1351
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Sen'jin Fetish",{
patch='31100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a vendor in Icecrown after you champion a Troll in the Argent Tournament.",
keywords={"Undead","Icecrown"},
pet=218,
},[[
step
Enter the tent |goto Icecrown/0 75.90,23.56 < 30 |walk
talk Samamba##33554
|tip She is inside the tent.
buy Sen'jin Fetish##45606 |goto 76.10,24.46
|tip Before you can purchase this pet you must Champion a Troll character by completeing Argent Tournament quests and dailies.
|tip You can use our Argent Tournament guides to help you complete quests and earn Champion's Seals.
|tip This costs 40 Champion's Seals.
|tip You can only purchase this pet with a Horde Troll character.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
collect Sen'jin Fetish##45606 |n
use the Sen'jin Fetish##45606
|tip It is in your inventory.
Learn the "Sen'jin Fetish" Battle Pet |learnpet Sen'jin Fetish##218
step
_Congratulations!_
You Collected the "Sen'jin Fetish" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Voodoo Figurine",{
patch='41000',
source='Profession',
author="support@zygorguides.com",
description="\nThis battle pet is obtained by finding and solving the Voodoo Figurine rare Archaeology Troll artifact.",
keywords={"Undead","Archaeology"},
pet=310,
},[[
step
cast Survery##80451
|tip Open your world map and search for areas that have shovel icons in either Kalimdor or the Eastern Kingdoms.
|tip When you arrive, the area where you can survey, will be sectioned off in red on your mini map.
|tip Use the Survey ability to summon a telescope, the telescope will point you in the direction an artifact is buried.
|tip Use the Survey ability to pinpoint buried artifacts in the area, you can dig up to 6 artifacts in an area.
collect Voodoo Figurine##69824 |n
|tip Keep going from dig site to dig site collecting fragments and using them to solve artifacts until you discover the Voodoo Figurine artifact.
|tip When you discover the Voodoo Figurine artifact it will show up in the Troll tab in your archaeology book.
|tip This is a rare artifact that takes 100 Troll Archaeology Fragments to solve.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Voodoo Figurine##69824
|tip It is in your inventory.
Learn the "Voodoo Figurine" Battle Pet |learnpet Voodoo Figurine##310
step
_Congratulations!_
You Collected the "Voodoo Figurine" Battle Pet.
]])
