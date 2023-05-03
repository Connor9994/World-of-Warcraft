local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if ZGV:DoMutex("PetsCBFA") then return end
if not ZGV.CommonPets then return end
ZygorGuidesViewer.GuideMenuTier = "BFA"
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Abyssal Slitherling",{
patch='82000',
source='PetBattle',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Aquatic","Nazjatar"},
pet=2678,
description="\nThis battle pet is caught in the wild in Nazjatar around Newhome.",
},[[
step
clicknpc Abyssal Slitherling##154814
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Abyssal Slitherling" Battle Pet |learnpet Abyssal Slitherling##2678 |goto Nazjatar/0 44.05,60.13
step
_Congratulations!_
You Collected the "Abyssal Slitherling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Bloodseeker",{
patch='82000',
source='PetBattle',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Aquatic","Nazjatar"},
pet=2652,
description="\nThis battle pet is caught in the wild in Nazjatar around the Spears of Azshara.",
},[[
step
clicknpc Bloodseeker##154714
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
|tip This spawn is rarer, so keep killing pets and waiting for respawns.
Learn the "Bloodseeker" Battle Pet |learnpet Bloodseeker##2652 |goto Nazjatar/0 69.41,36.75
step
_Congratulations!_
You Collected the "Bloodseeker" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Chitterspine Deepstalker",{
patch='82000',
source='PetBattle',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Aquatic","The","Eternal","Palace"},
pet=2658,
description="\nThis battle pet can be tamed in the wild inside \"The Eternal Palace\" raid.",
},[[
step
Enter "The Eternal Palace" Raid |goto The Eternal Palace/7 0.00,0.00 < 1000 |c |or
|tip Use the Raid Finder tool to form a group.
'|learnpet Chitterspine Deepstalker##2658 |or
step
clicknpc Chitterspine Deepstalker##154720
|tip You can find it throughout the first two levels of the palace.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Chitterspine Deepstalker" Battle Pet |learnpet Chitterspine Deepstalker##2658 |goto The Eternal Palace/6 47.20,55.74
step
_Congratulations!_
You Collected the "Chitterspine Deepstalker" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Caverndark Nightmare",{
patch='82000',
source='Drop',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Aquatic","Terror","Nazjatar"},
pet=2690,
description="\nThis battle pet has a chance to drop from the rare mob Caverndark Terror in Nazjatar.",
},[[
step
Enter the cave |goto Nazjatar/0 42.49,13.03 < 5 |walk
Follow the path |goto 42.75,12.60 < 10 |walk
kill Caverndark Terror##152464
|tip Underwater inside the cave.
collect 1 Caverndark Nightmare##169356 |goto 42.75,12.60 |or
|tip It can be caged, meaning you can purchase it from the Auction House as well.
'|learnpet Caverndark Nightmare##2690 |or
step
use Caverndark Nightmare##169356
Learn the "Caverndark Nightmare" Battle Pet |learnpet Caverndark Nightmare##2690
step
_Congratulations!_
You Collected the "Caverndark Nightmare" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Chitterspine Needler",{
patch='82000',
source='Drop',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Aquatic","Needlespine","Nazjatar"},
pet=2689,
description="\nThis battle pet has a chance to drop from the rare mob Needlespine in Nazjatar.",
},[[
step
kill Needlespine##152465
|tip It can spawn in shallow bodies of water throughout Nazjatar.
collect 1 Chitterspine Needler##169355 |goto Nazjatar/0 52.00,17.20 |or
|tip It can be caged, meaning you can purchase it from the Auction House as well.
You can also find it at [55.84,20.90]
And [46.86,34.01]
And [56.89,7.85]
'|learnpet Chitterspine Needler##2689 |or
step
use the Chitterspine Needler##169355
Learn the "Chitterspine Needler" Battle Pet |learnpet Chitterspine Needler##2689
step
_Congratulations!_
You Collected the "Chitterspine Needler" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Chitterspine Skitterling",{
patch='82000',
source='PetBattle',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Aquatic","Nazjatar"},
pet=2648,
description="\nThis battle pet is caught in the wild in Nazjatar.",
},[[
step
clicknpc Chitterspine Skitterling##154706
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Chitterspine Skitterling" Battle Pet |learnpet Chitterspine Skitterling##2648 |goto Nazjatar/0 44.21,27.83
step
_Congratulations!_
You Collected the "Chitterspine Skitterling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Daggertooth Frenzy",{
patch='82000',
source='Drop',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Aquatic","Terror","Nazjatar"},
pet=2695,
description="\nThis battle pet has a chance to drop from the rare mob Daggertooth Terror in Nazjatar.",
},[[
step
kill Daggertooth Terror##152756
|tip It can spawn in multiple bodies of water throughout Nazjatar.
collect 1 Daggertooth Frenzy##169361 |goto Nazjatar/0 39.00,59.30 |or
|tip It can be caged, meaning you can purchase it from the Auction House as well.
You can also find it at [27.59,30.56]
And [49.05,19.41]
And [71.84,27.95]
And [45.40,70.64]
And [40.52,81.06]
'|learnpet Daggertooth Frenzy##2695 |or
step
use the Daggertooth Frenzy##169361
Learn the "Daggertooth Frenzy" Battle Pet |learnpet Daggertooth Frenzy##2695
step
_Congratulations!_
You Collected the "Daggertooth Frenzy" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Deeptide Fingerling",{
patch='82000',
source='PetBattle',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Aquatic","Nazjatar"},
pet=2651,
description="\nThis battle pet is caught in the wild in Nazjatar around the Spears of Azshara.",
},[[
step
clicknpc Deeptide Fingerling##154712
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Deeptide Fingerling" Battle Pet |learnpet Deeptide Fingerling##2651 |goto Nazjatar/0 46.33,38.68
step
_Congratulations!_
You Collected the "Deeptide Fingerling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Fleeting Frog",{
patch='82000',
source='PetBattle',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Aquatic","Mechagon"},
pet=2665,
description="\nThis battle pet is caught in the wild on Mechagon Island.",
},[[
step
clicknpc Fleeting Frog##154775
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Fleeting Frog" Battle Pet |learnpet Fleeting Frog##2665 |goto Mechagon Island/0 80.43,61.79
step
_Congratulations!_
You Collected the "Fleeting Frog" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Glimmershell Scuttler",{
patch='82000',
source='PetBattle',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Aquatic","Nazjatar"},
pet=2647,
description="\nThis battle pet is caught in the wild in Nazjatar.",
},[[
step
clicknpc Glimmershell Scuttler##154704
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Glimmershell Scuttler" Battle Pet |learnpet Glimmershell Scuttler##2647 |goto Nazjatar/0 54.56,53.29
step
_Congratulations!_
You Collected the "Glimmershell Scuttler" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Glittering Diamondshell",{
patch='82000',
source='Drop',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Aquatic","Sandclaw","Stoneshell","Nazjatar"},
pet=2684,
description="\nThis battle pet has a chance to drop from the rare mob Sandclaw Stoneshell in Nazjatar.",
},[[
step
kill Sandclaw Stoneshell##152795
|tip It can spawn in multiple locations through Nazjatar.
collect 1 Glittering Diamondshell##169350 |goto Nazjatar/0 65.03,40.94 |or
|tip It can be caged, meaning you can purchase it from the Auction House as well.
You can also find it at [62.51,53.47]
And [72.97,45.49]
And [80.23,42.69]
And [82.17,35.87]
And [74.42,30.85]
'|learnpet Glittering Diamondshell##2684 |or
step
use Glittering Diamondshell##169350
Learn the "Glittering Diamondshell" Battle Pet |learnpet Glittering Diamondshell##2684
step
_Congratulations!_
You Collected the "Glittering Diamondshell" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Hissing Chitterspine",{
patch='82000',
source='PetBattle',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Aquatic","Nazjatar"},
pet=2649,
description="\nThis battle pet is caught in the wild in Nazjatar.",
},[[
step
Enter the cave |goto Nazjatar/0 42.43,13.16 < 15 |walk
clicknpc Hissing Chitterspine##154708
|tip Inside the cave.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Hissing Chitterspine" Battle Pet |learnpet Hissing Chitterspine##2649 |goto 42.78,12.56
step
_Congratulations!_
You Collected the "Hissing Chitterspine" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Lightless Ambusher",{
patch='82000',
source='Drop',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Aquatic","Eternal","Palace","Nazjatar"},
pet=2692,
description="\nThis battle pet has a chance to drop from the Lady Ashvane in The Eternal Palace raid.",
},[[
step
kill Lady Ashvane##153142
collect 1 Lightless Ambusher##169358 |goto The Eternal Palace/6 47.86,68.01 |or
|tip This pet is not a guaranteed drop.
|tip It can be caged, meaning you can purchase it from the Auction House as well.
'|complete haspet(2692) |or
step
use the Lightless Ambusher##169358
Learn the "Lightless Ambusher" Battle Pet |learnpet Lightless Ambusher##2692
step
_Congratulations!_
You Collected the "Lightless Ambusher" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Mindlost Bloodfrenzy",{
patch='82000',
source='Drop',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Aquatic","Eternal","Palace","Nazjatar"},
pet=2694,
description="\nThis battle pet has a chance to drop from the Blackwater Behemoth in The Eternal Palace raid.",
},[[
step
kill Blackwater Behemoth##154986
collect 1 Mindlost Bloodfrenzy##169360 |goto The Eternal Palace/5 36.06,19.54 |or
|tip This pet is not a guaranteed drop.
|tip It can be caged, meaning you can purchase it from the Auction House as well.
'|complete haspet(2694) |or
step
use the Mindlost Bloodfrenzy##169360
Learn the "Mindlost Bloodfrenzy" Battle Pet |learnpet Mindlost Bloodfrenzy##2694
step
_Congratulations!_
You Collected the "Mindlost Bloodfrenzy" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Nameless Octopode",{
patch='82000',
source='Drop',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Aquatic","Eternal","Palace","Nazjatar"},
pet=2696,
description="\nThis battle pet has a chance to drop from Za'qul in The Eternal Palace raid.",
},[[
step
kill Za'qul##150859
collect 1 Nameless Octopode##169362 |goto The Eternal Palace/1 17.57,50.79 |or
|tip This pet is not a guaranteed drop.
|tip It can be caged, meaning you can purchase it from the Auction House as well.
'|complete haspet(2680) |or
step
use the Nameless Octopode##169362
Learn the "Nameless Octopode" Battle Pet |learnpet Nameless Octopode##2696
step
_Congratulations!_
You Collected the "Nameless Octopode" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Sandclaw Nestseeker",{
patch='82000',
source='Quest',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from Glimmering Chests hidden throughout Nazjatar.",
startlevel=50.0,
keywords={"Aquatic","Nazjatar"},
pet=2685,
},[[
step
label "Collect_Scrying_Stone"
Kill Rares and open chests throughout Nazjatar
collect Scrying Stone##167077 |or
'|learnpet Sandclaw Nestseeker##2685 |or
step
use Scrying Stone##167077
Start Detecting Hidden Treasures |havebuff spell:300135 |goto Nazjatar/0 77.38,29.50 |or
'|learnpet Sandclaw Nestseeker##2685 |or
step
click Glimmering Chest##322413+
|tip They spawn randomly all over Nazjatar.
|tip When in close proximity a button will appear on-screen.
|tip You will not be able to see them until you reveal them.
|tip When you are near one, click the button that appears on-screen to reveal it.
collect 1 Sandclaw Nestseeker##169351 |goto 77.38,29.50 |or
|tip This pet is not a guaranteed drop.
|tip It can be caged, meaning you can purchase it from the Auction House.
'|complete not hasbuff("spell:300135") and not haspet(2685) |next "Collect_Scrying_Stone" |or
'|learnpet Sandclaw Nestseeker##2685 |or
step
use the Sandclaw Nestseeker##169351
Learn the "Sandclaw Nestseeker" Battle Pet |learnpet Sandclaw Nestseeker##2685
step
_Congratulations!_
You Collected the "Sandclaw Nestseeker" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Sandclaw Pincher",{
patch='82000',
source='PetBattle',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Aquatic","Nazjatar"},
pet=2645,
description="\nThis battle pet is caught in the wild in Nazjatar.",
},[[
step
clicknpc Sandclaw Pincher##154697
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Sandclaw Pincher" Battle Pet |learnpet Sandclaw Pincher##2645 |goto Nazjatar/0 43.73,63.96
step
_Congratulations!_
You Collected the "Sandclaw Pincher" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Sandclaw Sunshell",{
patch='82000',
source='PetBattle',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Aquatic","Nazjatar"},
pet=2646,
description="\nThis battle pet is caught in the wild in Nazjatar.",
},[[
step
clicknpc Sandclaw Sunshell##154702
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
|tip This spawn is rarer, so keep killing pets and waiting for respawns.
Learn the "Sandclaw Sunshell" Battle Pet |learnpet Sandclaw Sunshell##2646 |goto Nazjatar/0 43.73,63.96
step
_Congratulations!_
You Collected the "Sandclaw Sunshell" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Scalebrood Hydra",{
patch='82000',
source='Drop',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Aquatic","Scale","Matriarch","Gratinax","Nazjatar"},
pet=2704,
description="\nThis battle pet has a chance to drop from the rare mob Scale Matriarch Gratinax in Nazjatar.",
},[[
step
kill Scale Matriarch Gratinax##152548
|tip It should respawn about every hour.
collect 1 Scalebrood Hydra##169370 |goto Nazjatar/0 35.60,41.20 |or
|tip It can be caged, meaning you can purchase it from the Auction House as well.
'|learnpet Scalebrood Hydra##2704 |or
step
use Scalebrood Hydra##169370
Learn the "Scalebrood Hydra" Battle Pet |learnpet Scalebrood Hydra##2704
step
_Congratulations!_
You Collected the "Scalebrood Hydra" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Spawn of Nalaada",{
patch='82000',
source='Drop',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Aquatic","Elderspawn","Nazjatar"},
pet=2693,
description="\nThis battle pet has a chance to drop from the rare mob Elderspawn Nalaada in Nazjatar.",
},[[
step
kill Elderspawn Nalaada##152555
|tip It should respawn about every 45 minutes.
|tip It spawns adds during the fight, so clear the area before pulling.
collect 1 Spawn of Nalaada##169359 |goto Nazjatar/0 52.02,75.39 |or
|tip It can be caged, meaning you can purchase it from the Auction House as well.
'|learnpet Spawn of Nalaada##2693 |or
step
use Spawn of Nalaada##169359
Learn the "Spawn of Nalaada" Battle Pet |learnpet Spawn of Nalaada##2693
step
_Congratulations!_
You Collected the "Spawn of Nalaada" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Tottle",{
patch='80100',
source='Promotion',
author="support@zygorguides.com",
startlevel=45.0,
keywords={"aquatic, pet, battle, of, azeroth, preorder, collector, edition"},
pet=2143,
description="\nThis battle pet is acquired by purchasing the collector's edition of the Battle for Azeroth expansion.",
},[[
step
Purchase the Collector's Edition of the Battle for Azeroth Expansion |achieve 12229
|tip This battle pet is awarded for this purchase.
step
collect Tottle##153541 |or
|tip Check your in-game mail.
'|learnpet Tottle##2143 |or
step
use Tottle##153541
Learn the "Tottle" Battle Pet |learnpet Tottle##2143
step
_Congratulations!_
You Collected the "Tottle" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Void-Scarred Toad",{
patch='83000',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from Zekhan's Corrupted Chest in the Horrific Vision of Orgrimmar.",
startlevel=50.0,
keywords={"Aquatic","Horrific","Vision","Orgrimmar"},
pet=2796,
},[[
step
collect 1 Box With Faintly Glowing 'Air' Holes##173726 |or
|tip This has a chance to drop from the "Valley of Spirits" objective chest in the Horrific Vision of Orgrimmar.
|tip Use the "Horrific Vision of Orgrimmar" leveling guide to complete it.
|tip If you only care about the pet, you can skip directly to Zekhan in the Valley of Spirits.
|tip The chest will be available at the end of the run.
|tip Use the "Horrific Vision of Orgrimmar" guide to assist you.
'|learnpet Void-Scarred Toad##2796 |or
step
use the Box With Faintly Glowing 'Air' Holes##173726
Learn the "Void-Scarred Toad" Battle Pet |learnpet Void-Scarred Toad##2796
step
_Congratulations!_
You Collected the "Void-Scarred Toad" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Voidskimmer",{
patch='83000',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be caught in the wild in Vale of Eternal Blossoms.",
keywords={"Aquatic","Vale","of","Eternal","Blossoms","8.3"},
startlevel=50.0,
pet=2865,
},[[
step
label "Time_Travel"
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |or
'|learnpet Voidskimmer##2865 |or
step
map Vale of Eternal Blossoms New/0
path follow smart; loop on; ants curved; dist 30
path	72.01,57.11	78.02,55.10	70.01,34.05	72.03,25.11
clicknpc Voidskimmer##162518
|tip Follow the path, searching for a Voidskimmer.
|tip Stop at each point and check for it.
|tip Kill any critter versions you encounter to increase the chances of one spawning.
|tip These are found around the water.
|tip Use the "Trap" ability once it is below 35% health.
Learn the "Voidskimmer" Battle Pet |learnpet Voidskimmer##2865 |or
'|complete ZGV.InPhase('OldVale') and not haspet(2865) |next "Time_Travel" |or
step
_Congratulations!_
You Collected the "Voidskimmer" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Yellow Junkhopper",{
patch='82000',
source='PetBattle',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Aquatic","Mechagon"},
pet=2666,
description="\nThis battle pet is caught in the wild on Mechagon Island.",
},[[
step
clicknpc Yellow Junkhopper##154777
|tip This is a rare spawn of the Fleeting Frog pet.
|tip Kill any Fleeting Frogs you find and wait for respawns.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Yellow Junkhopper" Battle Pet |learnpet Yellow Junkhopper##2666 |goto Mechagon Island/0 33.85,76.56
step
_Congratulations!_
You Collected the "Yellow Junkhopper" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\C'Thuffer",{
patch='83000',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from Rexxar's Corrupted Chest in the Horrific Vision of Orgrimmar.",
startlevel=50.0,
keywords={"Beast","Horrific","Vision","Orgrimmar"},
pet=2838,
},[[
step
collect 1 C'Thuffer##174457 |or
|tip This has a chance to drop from the "Valley of Honor" objective chest in the Horrific Vision of Orgrimmar.
|tip Use the "Horrific Vision of Orgrimmar" leveling guide to complete it.
|tip If you only care about the pet, you can skip directly to Rexxar in the Valley of Honor.
|tip The chest will be available at the end of the run.
'|learnpet C'Thuffer##2838 |or
step
use C'Thuffer##174457
Learn the "C'Thuffer" Battle Pet |learnpet C'Thuffer##2838
step
_Congratulations!_
You Collected the "C'Thuffer" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Dottie",{
patch='83000',
source='In-GameShop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from the Uldum Accord Supply caches from paragon reputation.",
keywords={"Beast","Blizzard","store","8.3"},
startlevel=50.0,
pet=2623,
},[[
step
Learn the "Dottie" Battle Pet |learnpet Dottie##2623
|tip Dottie can be purchased from the Blizzard store for $10.00 USD.
step
_Congratulations!_
You Collected the "Dottie" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Duskytooth Snooter",{
patch='82000',
source='PetBattle',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Beast","Mechagon"},
pet=2662,
description="\nThis battle pet is caught in the wild on Mechagon Island.",
},[[
step
clicknpc Duskytooth Snooter##154769
|tip This is a rare spawn of the Rustyroot Snooter pet.
|tip Kill any Rustyroot Snooters you see and wait for respawns.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Duskytooth Snooter" Battle Pet |learnpet Duskytooth Snooter##2662 |goto Mechagon Island/0 40.21,41.57
step
_Congratulations!_
You Collected the "Duskytooth Snooter" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Golden Snorf",{
patch='82000',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from King Mechagon in the Mechagon dungeon.",
keywords={"Beast","King","Mechagon"},
startlevel=50.0,
pet=2711,
},[[
step
kill King Mechagon##155438
|tip Queue for Operation: Mechagon - Workshop using the group finder or enter the dungeon with your group.
collect 1 Golden Snorf##169378 |goto Mechagon/0 21.28,64.61 |or
|tip This pet is not a guaranteed drop.
|tip It can be caged, meaning you can purchase it from the Auction House.
'|learnpet Golden Snorf##2711 |or
step
use the Golden Snorf##169378
Learn the "Golden Snorf" Battle Pet |learnpet Golden Snorf##2711
step
_Congratulations!_
You Collected the "Golden Snorf" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Jade Defender",{
patch='83000',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet can be obtained from Rajani Supply caches from Rajani paragon reputation rewards.",
startlevel=50.0,
keywords={"Beast","Paragon","Reputation","Rajani"},
pet=2852,
},[[
step
use the Rajani Supplies##174483
|tip These can be obtained through paragon reputation rewards.
|tip After reaching Exalted reputation with the Rajani, each 10,000 reputation earned will award one supply cache.
|tip This pet is not a guaranteed drop, so you may have to earn several of these.
|tip Use the "Rajani" reputation guide and "Vale of Eternal Blossoms World Quests" guides to earn reputation.
collect 1 Jade Defender##174479 |or
'|learnpet Jade Defender##2852 |or
step
use the Jade Defender##174479
Learn the "Jade Defender" Battle Pet |learnpet Jade Defender##2852
step
_Congratulations!_
You Collected the "Jade Defender" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Mustyfur Snooter",{
patch='82000',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from the Stolen Royal Vendorbot on Mechagon Island after reaching "..
"Honored reputation with the Rustbolt Resistance for 500 gold, modified for reputation.",
startlevel=50.0,
keywords={"Beast","Mechagon"},
pet=2713,
},[[
step
Reach Honored with the Rustbolt Resistance |complete rep('Rustbolt Resistance') >= Honored |or
|tip This can be accomplished by completing daily quests and world quests on Mechagon Island.
'|learnpet Mustyfur Snooter##2713 |or
step
talk Stolen Royal Vendorbot##150716
buy 1 Mustyfur Snooter##169380 |goto Mechagon Island/0 73.68,36.90 |or
|tip It costs 500 gold, modified by reputation.
'|learnpet Mustyfur Snooter##2713 |or
step
use the Mustyfur Snooter##169380
Learn the "Mustyfur Snooter" Battle Pet |learnpet Mustyfur Snooter##2713 |goto Mechagon Island/0 46.25,27.99
step
_Congratulations!_
You Collected the "Mustyfur Snooter" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Pygmy Camel",{
patch='83000',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from Provisioner Qorra in Uldum after obtaining 300 "..
"Polished Pet Charms and reaching revered reputation with the Uldum Accord.",
startlevel=50.0,
keywords={"Beast","Reputation","Uldum","Accord"},
pet=2849,
},[[
step
Reach Revered Reputation with the Uldum Accord |complete rep("Uldum Accord") >= Revered
|tip Use the "Uldum Accord" reputation guide to accomplish this.
step
collect 300 Polished Pet Charm##163036 |or
|tip They can be earned by completing battle pet dailies and world quests.
'|learnpet Pygmy Camel##2849 |or
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |or
'|learnpet Pygmy Camel##2849 |or
step
talk Provisioner Qorra##160714
buy 1 Pygmy Camel##174477 |goto Uldum New/0 55.11,32.86 |or
'|learnpet Pygmy Camel##2849 |or
step
use the Pygmy Camel##174477
Learn the "Pygmy Camel" Battle Pet |learnpet Pygmy Camel##2849
step
_Congratulations!_
You Collected the "Pygmy Camel" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Rikki",{
patch='82500',
source='Promotion',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Beast","Recruit","a","Friend"},
pet=2776,
description="\nThis battle pet is awarded when your Recruit-a-Friend allies have purchased one month of game time.",
},[[
step
collect 1 Rikki's Pith Helmet##173296 |or
|tip Recruit one or more of your friends using the Recruit-a-Friend program.
|tip This should be available in your mailbox after one or more of your Recruit-a-Friends purchase game time.
'|learnpet Rikki##2776 |or
step
use the Rikki's Pith Helmet##173296
Learn the "Rikki" Battle Pet |learnpet Rikki##2776
step
_Congratulations!_
You Collected the "Rikki" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Rotbreath",{
patch='83000',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from the rare mob Lord Aj'qirai in Uldum during the Aqir Unearthed invasion.",
startlevel=50.0,
keywords={"Beast","Lord","Aj'qirai","Uldum","8.3"},
pet=2847,
},[[
step
label "Time_Travel"
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |or
'|learnpet Rotbreath##2847 |or
step
label "Wait_for_Aqir_Invasion"
Wait for the "Assault: Aqir Unearthed" Assault |complete ZGV.InPhase("UldumInvasionLeft") |or
|tip Non-N'zoth assaults alternate every few days.
'|learnpet Rotbreath##2847 |or
'|complete ZGV.InPhase('OldUldum') and not haspet(2847) |next "Time_Travel" |or
step
Enter the building |goto Uldum New/0 36.77,20.79 < 20 |walk
kill Lord Aj'qirai##154604
|tip Lord Aj'qirai is a rare spawn and may not be active.
|tip You can loot this rare spawn once per day.
collect 1 Stinky Sack##174475 |goto 34.67,18.90 |or
|tip This pet is not a guaranteed drop.
'|learnpet Rotbreath##2847 |or
'|complete ZGV.InPhase('OldUldum') and not haspet(2847) |next "Time_Travel" |or
'|complete not ZGV.InPhase("UldumInvasionLeft") and not haspet(2847) |next "Wait_for_Aqir_Invasion" |or
step
use the Stinky Sack##174475
Learn the "Rotbreath" Battle Pet |learnpet Rotbreath##2847
step
_Congratulations!_
You Collected the "Rotbreath" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Rustyroot Snooter",{
patch='82000',
source='PetBattle',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Beast","Mechagon"},
pet=2661,
description="\nThis battle pet is caught in the wild on Mechagon Island.",
},[[
step
clicknpc Rustyroot Snooter##154767
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Rustyroot Snooter" Battle Pet |learnpet Rustyroot Snooter##2661 |goto Mechagon Island/0 46.25,27.99
step
_Congratulations!_
You Collected the "Rustyroot Snooter" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Snowsoft Nibbler",{
patch='82000',
source='Drop',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Beast","Fungarian","Furor","Mechagon"},
pet=2712,
description="\nThis battle pet has a chance to drop from the rare mob Fungarian Furor On Mechagon Island.",
},[[
step
click Mushroom##135497+
|tip These are only clickable when the "Aid from Nordrassil" daily quest is available in Rusbolt from Mylune.
|tip They look like small white mushrooms on the ground all over The Fleeting Forest.
|tip If you have item IDs on tooltips, the mushroom with the ID 135497 will spawn the rare.
|tip If not, keep clicking mushrooms around the area until it spawns.
kill Fungarian Furor##151884
collect 1 Snowsoft Nibbler##169379 |goto Mechagon Island/0 44.78,39.37 |or
|tip It can be caged, meaning you can purchase it from the Auction House as well.
'|learnpet Snowsoft Nibbler##2712 |or
step
use the Snowsoft Nibbler##169379
Learn the "Snowsoft Nibbler" Battle Pet |learnpet Snowsoft Nibbler##2712
step
_Congratulations!_
You Collected the "Snowsoft Nibbler" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Void-Scarred Cat",{
patch='83000',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from Alleria's Corrupted Chest in the Horrific Vision of Stormwind.",
keywords={"Beast","Horrific","Vision","Stormwind","Alleria","8.3"},
startlevel=50.0,
pet=2840,
},[[
step
collect 1 Voidwoven Cat Collar##174459 |or
|tip This has a chance to drop from the main objective chest in the Horrific Vision of Stormwind.
|tip Use the "Horrific Vision of Stormwind" leveling guide to complete it.
|tip If you only care about the pet, you can skip directly to Alleria.
|tip The chest will be available at the end of the run.
'|learnpet Void-Scarred Cat##2840 |or
step
use the Voidwoven Cat Collar##174459
Learn the "Void-Scarred Cat" Battle Pet |learnpet Void-Scarred Cat##2840
step
_Congratulations!_
You Collected the "Void-Scarred Cat" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Void-Scarred Hare",{
patch='83000',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from Umbric's Corrupted Chest in the Horrific Vision of Stormwind.",
keywords={"Beast","Horrific","Vision","Stormwind","Magister","Umbric","8.3"},
startlevel=50.0,
pet=2839,
},[[
step
collect 1 Void-Scarred Hare##174458 |or
|tip This has a chance to drop from the "Mage Quarter" objective chest in the Horrific Vision of Stormwind.
|tip Use the "Horrific Vision of Stormwind" leveling guide to complete it.
|tip If you only care about the pet, you can skip directly to Magister Umbric in the Mage Quarter.
|tip The chest will be available at the end of the run.
'|learnpet Void-Scarred Hare##2839 |or
step
use the Void-Scarred Hare##174458
Learn the "Void-Scarred Hare" Battle Pet |learnpet Void-Scarred Hare##2839
step
_Congratulations!_
You Collected the "Void-Scarred Hare" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Void-Scarred Pup",{
patch='83000',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from Thrall's Corrupted Chest in the Horrific Vision of Orgrimmar.",
startlevel=50.0,
keywords={"Beast","Horrific","Vision","Orgrimmar"},
pet=2797,
},[[
step
collect 1 Void-Link Frostwolf Collar##174646 |or
|tip This has a chance to drop from the main objective chest in the Horrific Vision of Orgrimmar.
|tip Use the "Horrific Vision of Orgrimmar" leveling guide to complete it.
|tip If you only care about the pet, you can skip directly to Thrall.
|tip The chest will be available at the end of the run.
'|learnpet Void-Scarred Pup##2797 |or
step
use the Void-Link Frostwolf Collar##174646
Learn the "Void-Scarred Pup" Battle Pet |learnpet Void-Scarred Pup##2797
step
_Congratulations!_
You Collected the "Void-Scarred Pup" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Void-Scarred Rat",{
patch='83000',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from Kelsey's Corrupted Chest in the Horrific Vision of Stormwind.",
keywords={"Beast","Horrific","Vision","Stormwind","Magister","Umbric","8.3"},
startlevel=50.0,
pet=2841,
},[[
step
collect 1 Box Labeled "Danger: Void Rat Inside"##174460 |or
|tip This has a chance to drop from the "Dwarven District" objective chest in the Horrific Vision of Stormwind.
|tip Use the "Horrific Vision of Stormwind" leveling guide to complete it.
|tip If you only care about the pet, you can skip directly to Therum Deepforge in the Dwarven District.
|tip The chest will be available at the end of the run.
'|learnpet Void-Scarred Rat##2841 |or
step
use the Box Labeled "Danger: Void Rat Inside"##174460
Learn the "Void-Scarred Rat" Battle Pet |learnpet Void-Scarred Rat##2841
step
_Congratulations!_
You Collected the "Void-Scarred Rat" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Wicked Lurker",{
patch='83000',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from the rare mob Amalgamation of Flesh in Uldum during The Black Empire "..
" invasion when the world quest \"Pyre of the Amalgamated One\" is active.",
keywords={"Beast","Amalgamation","of","Flesh","Uldum","8.3"},
startlevel=50.0,
pet=2851,
},[[
step
label "Time_Travel"
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |or
'|learnpet Wicked Lurker##2851 |or
step
label "Wait_for_N'Zoth_Invasion"
Wait for the "Assault: The Black Empire" Assault |complete ZGV.InPhase("UldumInvasionCenter") |or
|tip N'zoth assaults alternate zones every weekly reset.
'|learnpet Wicked Lurker##2851 |or
'|complete ZGV.InPhase('OldUldum') and not haspet(2851) |next "Time_Travel" |or
step
click Pyre of the Amalgamated One
|tip Kill the waves of enemies that spawn.
kill Amalgamation of Flesh##157593
|tip This is a rare spawn and is only active with the world quest "Pyre of the Amalgamated One."
|tip You can loot this rare spawn once per day.
collect 1 Wicked Lurker##174478 |goto Uldum New/0 59.79,72.41 |or
|tip It can be caged, meaning you can purchase it from the Auction House as well.
|tip This pet is not a guaranteed drop.
'|learnpet Wicked Lurker##2851 |or
'|complete ZGV.InPhase('OldUldum') and not haspet(2851) |next "Time_Travel" |or
'|complete not ZGV.InPhase("UldumInvasionCenter") and not haspet(2851) |next "Wait_for_N'Zoth_Invasion" |or
step
use the Wicked Lurker##174478
Learn the "Wicked Lurker" Battle Pet |learnpet Wicked Lurker##2851
step
_Congratulations!_
You Collected the "Wicked Lurker" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Amethyst Softshell",{
patch='82000',
source='Drop',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Critter","Nazjatar","Spireshell"},
pet=2697,
description="\nThis battle pet has a chance to drop from the Amethyst Spireshell rare mob in Nazjatar.",
},[[
step
kill Amethyst Spireshell##152794
|tip It can spawn in countless locations throughout Nazjatar.
collect 1 Amethyst Softshell##169363 |goto Nazjatar/0 72.20,36.20 |or
|tip This pet is common, but not a guaranteed drop.
|tip It can be caged, meaning you can purchase it from the Auction House as well.
'|learnpet Amethyst Softshell##2697 |or
step
use the Amethyst Softshell##169363
Learn the "Amethyst Softshell" Battle Pet |learnpet Amethyst Softshell##2697
step
_Congratulations!_
You Collected the "Amethyst Softshell" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Aqir Hivespawn",{
patch='83000',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from Tek'ris in the Ny'alotha, the Waking City raid.",
keywords={"Critter","Ny'alotha","Tek'ris","8.3"},
startlevel=50.0,
pet=2834,
},[[
step
kill Tek'ris##157254
|tip Tek'ris is part of "The Hivemind" encounter in the Ny'alotha raid.
|tip Use the "Ny'alotha, the Waking City - Halls of Devotion" raid guide to complete the encounter.
collect 1 Aqir Hivespawn##174448 |goto Ny'alotha, the Waking City/4 50.31,53.54 |or
|tip It can be caged, meaning you can purchase it from the Auction House as well.
|tip This pet is not a guaranteed drop.
'|learnpet Aqir Hivespawn##2834 |or
step
use the Aqir Hivespawn##174448
Learn the "Aqir Hivespawn" Battle Pet |learnpet Aqir Hivespawn##2834
step
_Congratulations!_
You Collected the "Aqir Hivespawn" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Aqir Tunneler",{
patch='83000',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from the rare mob Skikx'traz in Uldum during the Aqir Unearthed invasion.",
keywords={"Critter","Skikx'traz","Uldum","8.3"},
startlevel=50.0,
pet=2848,
},[[
step
label "Time_Travel"
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |or
'|learnpet Aqir Tunneler##2848 |or
step
label "Wait_for_Aqir_Invasion"
Wait for the "Assault: Aqir Unearthed" Assault |complete ZGV.InPhase("UldumInvasionLeft") |or
|tip Non-N'zoth assaults alternate every few days.
'|learnpet Aqir Tunneler##2848 |or
'|complete ZGV.InPhase('OldUldum') and not haspet(2848) |next "Time_Travel" |or
step
kill Skikx'traz##162140
|tip Skikx'traz is a rare spawn and may not be active.
|tip You can loot this rare spawn once per day.
collect 1 Black Chitinous Plate##174476 |goto Uldum New/0 20.12,62.97 |or
|tip It flies in the air around this area.
|tip It can be caged, meaning you can purchase it from the Auction House as well.
|tip This pet is not a guaranteed drop.
'|learnpet Aqir Tunneler##2848 |or
'|complete ZGV.InPhase('OldUldum') and not haspet(2848) |next "Time_Travel" |or
'|complete not ZGV.InPhase("UldumInvasionLeft") and not haspet(2848) |next "Wait_for_Aqir_Invasion" |or
step
use the Black Chitinous Plate##174476
Learn the "Aqir Tunneler" Battle Pet |learnpet Aqir Tunneler##2848
step
_Congratulations!_
You Collected the "Aqir Tunneler" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Blackchasm Crawler",{
patch='82000',
source='PetBattle',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Critter","The","Eternal","Palace"},
pet=2657,
description="\nThis battle pet can be tamed in the wild inside \"The Eternal Palace\" raid.",
},[[
step
Enter "The Eternal Palace" Raid |goto The Eternal Palace/7 0.00,0.00 < 1000 |c |or
|tip Use the Raid Finder tool to form a group.
'|learnpet Blackchasm Crawler##2657 |or
step
clicknpc Blackchasm Crawler##154718
|tip You can find it throughout the first two levels of the palace.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Blackchasm Crawler" Battle Pet |learnpet Blackchasm Crawler##2657 |goto The Eternal Palace/6 47.20,55.74
step
_Congratulations!_
You Collected the "Blackchasm Crawler" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Experimental Roach",{
patch='82000',
source='PetBattle',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Critter","Mechagon"},
pet=2664,
description="\nThis battle pet is caught in the wild on Mechagon Island.",
},[[
step
clicknpc Experimental Roach##154773
|tip This is a rare spawn of the Junkheap Roach pet.
|tip Kill any Junkheap Roach you see and wait for respawns.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Experimental Roach" Battle Pet |learnpet Experimental Roach##2664 |goto Mechagon Island/0 34.14,47.78
step
_Congratulations!_
You Collected the "Experimental Roach" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Golden Chirper",{
patch='83000',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be caught in the wild in Vale of Eternal Blossoms.",
keywords={"Critter","Vale","of","Eternal","Blossoms","8.3"},
startlevel=50.0,
pet=2867,
},[[
step
label "Time_Travel"
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |or
'|learnpet Golden Chirper##2867 |or
step
map Vale of Eternal Blossoms New/0
path follow smart; loop on; ants curved; dist 30
path	88.38,47.71	49.33,68.24	16.26,76.15	10.93,67.53	14.44,22.84
path	27.61,21.41	39.49,24.40	55.11,41.24	56.99,47.65	77.55,24.64
clicknpc Golden Chirper##162525
|tip Follow the path, searching for a Chirper.
|tip Stop at each point and check for it.
|tip Only one can be active at any time, although it respawns instantly.
|tip Use the "Trap" ability once it is below 35% health.
Learn the "Golden Chirper" Battle Pet |learnpet Golden Chirper##2867 |or
'|complete ZGV.InPhase('OldVale') and not haspet(2867) |next "Time_Travel" |or
step
_Congratulations!_
You Collected the "Golden Chirper" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Junkheap Roach",{
patch='82000',
source='PetBattle',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Critter","Mechagon"},
pet=2663,
description="\nThis battle pet is caught in the wild on Mechagon Island.",
},[[
step
clicknpc Junkheap Roach##154771
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Junkheap Roach" Battle Pet |learnpet Junkheap Roach##2663 |goto Mechagon Island/0 69.61,58.39
step
_Congratulations!_
You Collected the "Junkheap Roach" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Mechagon Marmot",{
patch='82000',
source='PetBattle',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Critter","Mechagon"},
pet=2670,
description="\nThis battle pet is caught in the wild on Mechagon Island.",
},[[
step
clicknpc Mechagon Marmot##154785
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Mechagon Marmot" Battle Pet |learnpet Mechagon Marmot##2670 |goto Mechagon Island/0 68.02,50.61
step
_Congratulations!_
You Collected the "Mechagon Marmot" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Wriggler",{
patch='82000',
source='Drop',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Critter","Mirecrawler","Nazjatar"},
pet=2700,
description="\nThis battle pet has a chance to drop from the rare mob Mirecrawler in Nazjatar.",
},[[
step
kill Mirecrawler##144644
|tip It spawns inside caves all over Nazjatar.
collect 1 Wriggler##169366 |goto Nazjatar/0 37.20,13.20 |or
|tip It can be caged, meaning you can purchase it from the Auction House as well.
'|learnpet Wriggler##2700 |or
step
use Wriggler##169366
Learn the "Wriggler" Battle Pet |learnpet Wriggler##2700
step
_Congratulations!_
You Collected the "Wriggler" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Muck Slug",{
patch='82000',
source='PetBattle',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Critter","Nazjatar"},
pet=2660,
description="\nThis battle pet is caught in the wild in Nazjatar.",
},[[
step
clicknpc Muck Slug##154724
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Muck Slug" Battle Pet |learnpet Muck Slug##2660 |goto Nazjatar/0 43.75,61.64
step
_Congratulations!_
You Collected the "Muck Slug" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Spireshell Snail",{
patch='82000',
source='PetBattle',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Critter","Nazjatar"},
pet=2653,
description="\nThis battle pet is caught in the wild in Nazjatar.",
},[[
step
clicknpc Spireshell Snail##154716
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Spireshell Snail" Battle Pet |learnpet Spireshell Snail##2653 |goto Nazjatar/0 34.94,47.10
step
_Congratulations!_
You Collected the "Spireshell Snail" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Trench Slug",{
patch='82000',
source='PetBattle',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Critter","The","Eternal","Palace"},
pet=2659,
description="\nThis battle pet can be tamed in the wild inside \"The Eternal Palace\" raid.",
},[[
step
Enter "The Eternal Palace" Raid |goto The Eternal Palace/7 0.00,0.00 < 1000 |c |or
|tip Use the Raid Finder tool to form a group.
'|learnpet Trench Slug##2659 |or
step
clicknpc Trench Slug##154722
|tip You can find it throughout the first two levels of the palace.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Trench Slug" Battle Pet |learnpet Trench Slug##2659 |goto The Eternal Palace/6 47.20,55.74
step
_Congratulations!_
You Collected the "Trench Slug" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Void-Scarred Beetle",{
patch='83000',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from any mob in the Uldum lesser Vision of N'Zoth "..
" when the Black Empire assault is active.",
keywords={"Critter","Lesser","Vision","of","N'Zoth","Uldum","8.3"},
startlevel=50.0,
pet=2843,
},[[
step
label "Time_Travel"
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |or
'|learnpet Wicked Lurker##2851 |or
step
label "Wait_for_N'Zoth_Invasion"
Wait for the "Assault: The Black Empire" Assault |complete ZGV.InPhase("UldumInvasionCenter") |or
|tip N'zoth assaults alternate zones every weekly reset.
'|learnpet Void-Scarred Beetle##2843 |or
'|complete ZGV.InPhase('OldUldum') and not haspet(2843) |next "Time_Travel" |or
step
Kill enemies inside the lesser vision
|tip You can enter this vision once per day.
collect 1 Void Cocoon##174462 |goto Uldum Vision/0 55.91,34.15 |or
|tip It can be caged, meaning you can purchase it from the Auction House as well.
|tip This pet is not a guaranteed drop.
'|learnpet Void-Scarred Beetle##2843 |or
'|complete ZGV.InPhase('OldUldum') and not haspet(2843) |next "Time_Travel" |or
'|complete not ZGV.InPhase("UldumInvasionCenter") and not haspet(2843) |next "Wait_for_N'Zoth_Invasion" |or
step
use the Void Cocoon##174462
Learn the "Void-Scarred Beetle" Battle Pet |learnpet Void-Scarred Beetle##2843
step
_Congratulations!_
You Collected the "Void-Scarred Beetle" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Void-Scarred Locust",{
patch='83000',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be caught in the wild in Uldum.",
keywords={"Critter","Uldum","Battle","8.3"},
startlevel=50.0,
pet=2864,
},[[
step
label "Time_Travel"
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |or
'|learnpet Void-Scarred Locust##2864 |or
step
map Uldum New/0
path follow smart; loop on; ants curved; dist 30
path	59.07,38.41	57.70,45.47	59.71,53.43	60.44,58.37	59.00,59.15
path	57.60,54.26	54.78,47.36	50.53,42.40	49.71,36.24	46.09,29.33
path	46.22,27.56	51.58,33.04	56.65,28.55	55.87,21.18	57.02,16.33
path	58.30,16.65	57.48,21.72	59.44,32.33
clicknpc Void-Scarred Locust##162502
|tip Follow the path, searching for an Void-Scarred Locust.
|tip Stop at each point and check for it.
|tip Kill any critters you encounter to increase the chances of one spawning.
|tip It can also appear as a secondary pet in pet battles.
|tip Use the "Trap" ability once it is below 35% health.
Learn the "Void-Scarred Locust" Battle Pet |learnpet Void-Scarred Locust##2864 |or
'|complete ZGV.InPhase('OldUldum') and not haspet(2864) |next "Time_Travel" |or
step
_Congratulations!_
You Collected the "Void-Scarred Locust" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Anima Wyrmling",{
patch='82500',
source='Promotion',
author="support@zygorguides.com",
description="\nThis battle pet is a reward for purchasing the Epic edition of the Shadowlands expansion.",
keywords={"Dragonkin","Shadowlands","Epic","8.3"},
startlevel=50.0,
pet=2779,
},[[
step
Learn the "Anima Wyrmling" Battle Pet |learnpet Anima Wyrmling##2779
|tip To earn this pet, purchase the "Shadowlands Epic Edition" from the Blizzard store.
|tip You should learn it automatically upon relogging.
step
_Congratulations!_
You Collected the "Anima Wyrmling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Bonebiter",{
patch='82000',
source='Drop',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Dragonkin","Bonepicker","Mechagon"},
pet=2719,
description="\nThis battle pet has a chance to drop from the Bonepicker rare mob on Mechagon Island.",
},[[
step
Enter the cave |goto Mechagon Island/0 65.90,26.56 < 20 |walk
kill Bonepicker##152001
|tip Inside the cave.
|tip Bonepicker is a rare spawn and may not always be available.
collect 1 Bonebiter##169392 |goto 65.74,22.82 |or
|tip It can be caged, meaning you can purchase it from the Auction House as well.
|tip This pet is common, but not a guaranteed drop.
'|learnpet Bonebiter##2719 |or
step
use Bonebiter##169392
Learn the "Bonebiter" Battle Pet |learnpet Bonebiter##2719
step
_Congratulations!_
You Collected the "Bonebiter" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Lil' Nefarian",{
patch='82500',
source='WorldEvent',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Dragonkin","Anniversary","15th"},
pet=2621,
description="\nThis battle pet is contained in the 15th Anniversary Gift sent in the mail.",
},[[
step
collect Anniversary Gift##172014 |or
|tip You can find it in your mailbox.
'|learnpet Lil' Nefarian##2621 |or
step
use the Anniversary Gift##172014
collect 1 Lil' Nefarian##172016 |or
'|learnpet Lil' Nefarian##2621 |or
step
use Lil' Nefarian##172016
Learn the "Lil' Nefarian" Battle Pet |learnpet Lil' Nefarian##2621
step
_Congratulations!_
You Collected the "Lil' Nefarian" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Twilight Whelpling",{
patch='82000',
source='PetBattle',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Dragonkin","Twilight","Highlands"},
pet=2677,
description="\nThis battle pet is caught in the wild in Twilight Highlands.",
},[[
step
clicknpc Twilight Whelpling##154803
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Collect the "Twilight Whelpling" Battle Pet |learnpet Twilight Whelpling##2677 |goto Twilight Highlands/0 20.44,58.54
step
_Congratulations!_
You Collected the "Twilight Whelpling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Brinestone Algan",{
patch='82000',
source='Drop',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Elemental","Avarius","Nazjatar"},
pet=2706,
description="\nThis battle pet has a chance to drop from the rare mob Avarius in Nazjatar.",
},[[
step
Kill Rares and open chests throughout Nazjatar
|tip You can also get the pickaxe from mining nodes.
collect Brinestone Pickaxe##167012 |q 55531 |future
step
click Brinestone Deposit##325615+
|tip They look like dark colored mineral deposits.
|tip They appear on your minimap as yellow dots.
Collect #5# Brinestone Shards |q 55531/1 |goto Nazjatar/0 35.97,11.84
step
click Violet Brinestone Shard
Place the Violet Brinestone Shard |q 55531/2 |goto 36.79,11.32 |count 1
step
click Fiery Brinestone Shard
Place the Fiery Brinestone Shard |q 55531/2 |goto 36.95,11.46 |count 2
step
click Amber Brinestone Shard
Place the Amber Brinestone Shard |q 55531/2 |goto 37.11,11.25 |count 3
step
click Jade Brinestone Shard
Place the Jade Brinestone Shard |q 55531/2 |goto 37.01,10.99 |count 4
step
click Azure Brinestone Shard
Place the Azure Brinestone Shard |q 55531/2 |goto 36.82,11.01 |count 5
step
kill Brinestone Elemental##150308
collect Brinestone Core##168038 |q 55531/3 |goto 36.92,11.21
step
talk Artisan Okata##153509 |only Alliance
talk Finder Pruc##153512 |only Horde
|tip Inside the building. |only Alliance
turnin What Will It Mine?##55531 |goto 37.89,55.84 |only Alliance
turnin What Will It Mine?##55531 |goto 49.08,62.19 |only Horde
step
label "Collect_Brinestone_Pickaxe"
Kill Rares and open chests throughout Nazjatar
|tip You can also get the pickaxe from mining nodes.
collect Brinestone Pickaxe##167012 |q 55584 |future |or
'|learnpet Brinestone Algan##2706 |next "Congratulations_Step" |or
step
click Brinestone Deposit
|tip This deposit will not always be available.
Click Brinestone Shards
|tip Click all five of them.
kill Avarius##150191
|tip Inside the cave.
collect 1 Brinestone Algan##169373 |goto 36.93,11.19 |or
|tip If it does not drop, this guide will reset when you can try again.
'|complete not completedq(55584) and itemcount (167012) == 0 |next "Collect_Brinestone_Pickaxe" |or
step
use Brinestone Algan##169373
Learn the "Brinestone Algan" Battle Pet |learnpet Brinestone Algan##2706
step
label "Congratulations_Step"
_Congratulations!_
You Collected the "Brinestone Algan" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Budding Algan",{
patch='82000',
source='Drop',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Elemental","Rockweed","Shambler","Nazjatar"},
pet=2707,
description="\nThis battle pet has a chance to drop from the rare mob Rockweed Shambler in Nazjatar.",
},[[
step
kill Rockweed Shambler##150583
|tip This rare has a chance to spawn in place of any Algan in the Nazjatar zone.
|tip Routinely checking the group finder and paying attention to chat will help with finding this rare.
|tip It can be caged, meaning you can purchase it from the Auction House as well.
collect 1 Budding Algan##169374 |goto Nazjatar/0 60.60,49.60 |or
'|learnpet Budding Algan##2707 |or
step
use Budding Algan##169374
Learn the "Budding Algan" Battle Pet |learnpet Budding Algan##2707
step
_Congratulations!_
You Collected the "Budding Algan" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Coral Lashling",{
patch='82000',
source='Drop',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Elemental","Carnivorous","Lasher","Nazjatar"},
pet=2708,
description="\nThis battle pet has a chance to drop from the rare mob Carnivorous Lasher in Nazjatar.",
},[[
step
Kill Rares and open chests throughout Nazjatar
collect Germinating Seed##167786 |q 55426 |future
|tip You can also gather this item from Zin'anthid nodes around Nazjatar.
step
click Fertile Soil
Plant the Germinating Seed |q 55426/1 |goto Nazjatar/0 54.71,41.72
step
click Bloated Seafly
Catch a Bloated Seafly |q 55426/2 |goto 54.86,42.03
step
clicknpc Carnivorous Lasher##151769
|tip Use the "Bloated Seafly" ability that appears on-screen.
Feed the Carnivorous Lasher |q 55426/3 |goto 54.70,41.71
step
click Bloated Seafly+
clicknpc Carnivorous Lasher##151769
|tip Use the "Bloated Seafly" ability that appears on-screen.
Keep Feeding #9# Times |q 55426/4 |goto 54.70,41.71
step
kill Carnivorous Lasher##151769
collect Coral Petal##167785 |q 55426/5 |goto 54.72,41.69
step
talk Artisan Okata##153509 |only Alliance
talk Finder Pruc##153512 |only Horde
|tip Inside the building. |only Alliance
turnin What Will It Grow?##55426 |goto 37.89,55.84 |only Alliance
turnin What Will It Grow?##55426 |goto 49.08,62.19 |only Horde
step
label "Collect_Germinating_Seed"
Kill Rares and open chests throughout Nazjatar
collect Germinating Seed##166888 |q 55366 |future |or
|tip You can also gather this item from Zin'anthid nodes around Nazjatar.
'|learnpet Coral Lashling##2708 |next "Congratulations_Step" |or
step
click Fertile Soil##291206
|tip If the Fertile Soil isn't there you'll have to wait for it to respawn.
|tip It's respawn timer is currently unknown.
Plant the Germinating Seed |complete itemcount(166888) == 0 |goto 54.70,41.72
step
clicknpc Bloated Seafly##149856+
|tip They look like small insects flying around this area.
Feed the Flies to the Carnivorous Lasher
|tip Use the "Bloated Seafly" ability next to the Carnivorous Lasher.
|tip It appears as a button on-screen.
kill Carnivorous Lasher##149653
|tip It will become fully grown and attack you after feeding it 10 flies.
collect 1 Coral Lashling##169375 |goto 54.70,41.72 |or
|tip You can only loot once per day.
|tip It is not a guaranteed drop.
|tip It can be caged, meaning you can purchase it from the Auction House as well.
|tip This guide will reset when you can loot the Carnivorous Lasher again.
'|complete not completedq(55366) |next "Collect_Germinating_Seed"
step
use the Coral Lashling##169375
Learn the "Coral Lashling" Battle Pet |learnpet Coral Lashling##2708
step
label "Congratulations_Step"
_Congratulations!_
You Collected the "Coral Lashling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Irradiated Elementaling",{
patch='82000',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from Irradiated Boxes of Assorted Parts upon completion "..
"of the hard mode Reclamation Rig event on Mechagon Island.",
keywords={"Elemental","Mechagon","Island","Reclamation","Rig","Hard","Mode"},
startlevel=50.0,
pet=2756,
},[[
step
use the Irradiated Box of Assorted Parts##168395
|tip This is awarded after completing the hard mode Reclamation Rig event on Mechagon Island.
|tip The Reclamation Rig event occurs several times per day.
|tip Players must donate a total of 4,000 Spare Parts and 5 Energy Cells to start the event.
|tip To activate hard mode, one player will need to use the "Supercollider" weapon on every Irradiated Elemental.
|tip The "Supercollider" weapon can be obtained by completing the "Toys For Destruction" daily quest 4 times.
|tip It can then be picked up from the workbench on days when Rustbolt Armory objects are available.
|tip Several waves of Contaminated Globs and Irradiated Elementals will spawn, followed by three elites.
|tip Defeat all of the waves with your group to earn a Box of Assorted Parts.
collect 1 Melted Irradiated Undercoat##169879 |goto Mechagon Island/0 69.95,61.96 |or
|tip This is not a guaranteed drop.
'|learnpet Irradiated Elementaling##2756 |or
step
use the Melted Irradiated Undercoat##169879
Learn the "Irradiated Elementaling" Battle Pet |learnpet Irradiated Elementaling##2756
step
_Congratulations!_
You Collected the "Irradiated Elementaling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Sandkeep",{
patch='82000',
source='Drop',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Elemental","Sandkeep","Nazjatar"},
pet=2703,
description="\nThis battle pet has a chance to drop from the rare mob Sandkeep in Nazjatar.",
},[[
step
label "Collect_Scrying_Stone"
Kill Rares and open chests throughout Nazjatar
collect Scrying Stone##167077 |q 56276 |future |or
'|learnpet Sandkeep##2703 |next "Congratulations_Step" |or
step
use Scrying Stone##167077
Start Detecting Hidden Treasures |havebuff spell:300135 |goto Nazjatar/0 77.38,29.50 |q 56276 |future
step
Find Glimmering Chests throughout Nazjatar
|tip When you are near one, click the button that appears on-screen to reveal it.
click Glimmering Chest##322413+
|tip They spawn all over Nazjatar.
kill Sandcastle##151870
|tip He has a small chance to spawn nearby when opening a Glimmering Chest.
collect 1 Sandkeep##169369 |goto 77.38,29.50 |or
|tip It can be caged, meaning you can purchase it from the Auction House as well.
|tip This guide will reset when you can loot again.
'|complete not hasbuff("spell:300135") and not completedq(56276) |next "Collect_Scrying_Stone" |or
'|learnpet Sandkeep##2703 |or
step
use Sandkeep##169369
Learn the "Sandkeep" Battle Pet |learnpet Sandkeep##2703
step
label "Congratulations_Step"
_Congratulations!_
You Collected the "Sandkeep" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Seafury",{
patch='82000',
source='Drop',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Elemental","Prince","Typhonus","Nazjatar"},
pet=2701,
description="\nThis battle pet has a chance to drop from the rare mob Prince Typhonus in Nazjatar.",
},[[
step
kill Prince Typhonus##152681
|tip This rare won't spawn every day, but on days it is active it should respawn about every 10-15 minutes.
collect 1 Seafury##169367 |goto Nazjatar/0 43.04,87.93 |or
|tip It can be caged, meaning you can purchase it from the Auction House as well.
'|learnpet Seafury##2701 |or
step
use Seafury##169367
Learn the "Seafury" Battle Pet |learnpet Seafury##2701
step
_Congratulations!_
You Collected the "Seafury" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Stormwrath",{
patch='82000',
source='Drop',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Elemental","Prince","Vortran","Nazjatar"},
pet=2702,
description="\nThis battle pet has a chance to drop from the rare mob Prince Vortran in Nazjatar.",
},[[
step
kill Prince Vortran##152682
|tip This rare won't spawn every day, but on days it is active it should respawn about every 10-15 minutes.
collect 1 Stormwrath##169368 |goto Nazjatar/0 43.00,75.49 |or
|tip It can be caged, meaning you can purchase it from the Auction House as well.
'|learnpet Stormwrath##2702 |or
step
use Stormwrath##169368
Learn the "Stormwrath" Battle Pet |learnpet Stormwrath##2702
step
_Congratulations!_
You Collected the "Stormwrath" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Wailing Lasher",{
patch='83000',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from Burt Macklyn in Blackrock Mountain for "..
"1 Shadowy Gem.",
keywords={"Elemental","Shadowy","Gem","8.3"},
startlevel=50.0,
pet=2870,
},[[
step
collect 1 Shadowy Gem##174360 |or
|tip Complete the "Blackrock Depths" pet battle dungeon guide normally to unlock  Challenge Mode.
|tip You get one gem every week you complete it on Challenge Mode.
|tip Challenge Mode requires you to complete the dungeon without healing your pets.
|tip You can bypass this by logging on a different character and healing your pets before continuing.
'|learnpet Wailing Lasher##2870 |or
step
talk Burt Macklyn##161782
buy 1 Wailing Lasher##174827 |goto Burning Steppes/16 33.07,23.13 |or
'|learnpet Wailing Lasher##2870 |or
step
use the Wailing Lasher##174827
Learn the "Wailing Lasher" Battle Pet |learnpet Wailing Lasher##2870
step
_Congratulations!_
You Collected the "Wailing Lasher" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Crimson Skipper",{
patch='82500',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from the Honey Smasher in Stormsong Valley.",
keywords={"Flying","Honey","Smasher"},
startlevel=50.0,
pet=2794,
},[[
step
label "Kill_Honey_Smasher"
kill Honey Smasher##154154
|tip It walks up and down the coast around this area.
Defeat the Honey Smasher |q 57726 |goto Stormsong Valley/0 61.41,16.20 |future |or
'|learnpet Crimson Skipper##2794 |or
step
You have killed the Honey Smasher for the day
|tip You can only kill it once per day for loot.
|tip This guide will reset when you can kill it again.
'|complete not completedq(57726) and not haspet(2794) and not itemcount(172493) >= 1 |next "Kill_Honey_Smasher" |or
'|complete haspet(2794) or itemcount(172493) >= 1 |or
step
collect 1 Snarling Butterfly Crate##172493 |or
'|learnpet Crimson Skipper##2794 |or
step
use the Snarling Butterfly Crate##172493
Learn the "Crimson Skipper" Battle Pet |learnpet Crimson Skipper##2794
step
_Congratulations!_
You Collected the "Crimson Skipper" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Great Sea Albatross",{
patch='82000',
source='PetBattle',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Flying","Nazjatar"},
pet=2650,
description="\nThis battle pet is caught in the wild in Nazjatar.",
},[[
step
clicknpc Great Sea Albatross##154710
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Great Sea Albatross" Battle Pet |learnpet Great Sea Albatross##2650 |goto Nazjatar/0 48.06,68.97
step
_Congratulations!_
You Collected the "Great Sea Albatross" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Oasis Void-Duster",{
patch='83000',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be caught in the wild in Uldum.",
keywords={"Flying","Uldum","Battle","8.3"},
startlevel=50.0,
pet=2863,
},[[
step
label "Time_Travel"
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |or
'|learnpet Oasis Void-Duster##2863 |or
step
map Uldum New/0
path follow smart; loop on; ants curved; dist 30
path	59.07,38.41	57.70,45.47	59.71,53.43	60.44,58.37	59.00,59.15
path	57.60,54.26	54.78,47.36	50.53,42.40	49.71,36.24	46.09,29.33
path	46.22,27.56	51.58,33.04	56.65,28.55	55.87,21.18	57.02,16.33
path	58.30,16.65	57.48,21.72	59.44,32.33
clicknpc Oasis Void-Duster##162499
|tip Follow the path, searching for an Oasis Void-Duster.
|tip Stop at each point and check for it.
|tip Kill any critters you encounter to increase the chances of one spawning.
|tip It can also appear as a secondary pet in pet battles.
|tip Use the "Trap" ability once it is below 35% health.
Learn the "Oasis Void-Duster" Battle Pet |learnpet Oasis Void-Duster##2863 |or
'|complete ZGV.InPhase('OldUldum') and not haspet(2863) |next "Time_Travel" |or
step
_Congratulations!_
You Collected the "Oasis Void-Duster" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Ra'kim",{
patch='83000',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from Tek'ris in the Ny'alotha, the Waking City raid.",
keywords={"Flying","Ny'alotha","Tek'ris","8.3"},
startlevel=50.0,
pet=2835,
},[[
step
kill Tek'ris##157254
|tip Tek'ris is part of "The Hivemind" encounter in the Ny'alotha raid.
|tip Use the "Ny'alotha, the Waking City - Halls of Devotion" raid guide to complete the encounter.
collect 1 Ra'kim##174449 |goto Ny'alotha, the Waking City/4 50.31,53.54 |or
|tip It can be caged, meaning you can purchase it from the Auction House as well.
|tip This pet is not a guaranteed drop.
'|learnpet Ra'kim##2835 |or
step
use Ra'kim##174449
Learn the "Ra'kim" Battle Pet |learnpet Ra'kim##2835
step
_Congratulations!_
You Collected the "Ra'kim" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Rustbolt Clucker",{
patch='82000',
source='PetBattle',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Flying","Mechagon"},
pet=2669,
description="\nThis battle pet is caught in the wild on Mechagon Island.",
},[[
step
clicknpc Rustbolt Clucker##154783
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Rustbolt Clucker" Battle Pet |learnpet Rustbolt Clucker##2669 |goto Mechagon Island/0 74.86,35.01
step
_Congratulations!_
You Collected the "Rustbolt Clucker" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Shadowbarb Hatchling",{
patch='83000',
source='Quest',
author="support@zygorguides.com",
description="\nThis battle pet can obtained by completing the quest \"They Grow So Fast\" during "..
"the Shadowbarb Drone mount questline.",
startlevel=50.0,
keywords={"Flying","Reputation","Rajani"},
pet=2872,
},[[
step
Wait for the Aqir Invasion in Uldum to Occur |complete ZGV.InPhase('UldumInvasionLeft') |q 58802 |future
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |or
'|learnmount Shadowbarb Drone##316339 |or
step
click Voidtouched Eggs
accept The Incredible Egg##58802 |goto 20.81,61.92
step
talk H'partho Ardoros##161738
turnin The Incredible Egg##58802 |goto 55.61,35.33
step
Watch the dialogue
talk H'partho Ardoros##161738
accept Match the Hatch##58803 |goto 55.61,35.33
step
click Voidtouched Eggs
|tip They look like clutches of shadowy eggs on the ground around this area.
Investigate #7# Voidtouched Eggs |q 58803/1 |goto 35.05,28.88
step
talk H'partho Ardoros##161738
turnin Match the Hatch##58803 |goto 55.61,35.33
step
talk H'partho Ardoros##161738
accept Void Incubation##58804 |goto 55.61,35.33 |only if questpossible
accept Encased in Amber##58808 |goto 55.61,35.33 |only if questpossible
accept Continued Incubation##58805 |goto 55.61,35.33 |only if questpossible
accept Warmth of the Sun##58806 |goto 55.61,35.33 |only if questpossible
accept Wrapping Up##58807 |goto 55.61,35.33 |only if questpossible
Accept the Quest Available Today |complete haveq(58804,58808,58805,58806,58807) |goto Uldum New/0 55.61,35.33 |or
'|complete completedq(58810) |or
step
label "Begin_Stage_1_Quests"
Proceeding |complete haveq(58804,58808,58805,58806,58807) |or
'|complete completedq(58810) |or
step
click Crystallized Void##343589+
|tip They look like tiny black rocks on the ground around this area.
collect 10 Crystallized Void##174993 |q 58804/1 |goto Vale of Eternal Blossoms New/0 81.49,45.77 |or |only if ZGV.InPhase('ValeInvasionRight')
You can find more around [71.25,21.58] |only if ZGV.InPhase('ValeInvasionRight')
collect 10 Crystallized Void##174993 |q 58804/1 |goto Uldum New/0 54.52,50.84 |or |only if ZGV.InPhase('UldumInvasionCenter')
|only if haveq(58804)
step
click Amber Incubator
Watch the dialogue
Airlift the Amber Incubator |q 58808/1 |goto Vale of Eternal Blossoms New/0 10.14,62.95
|only if haveq(58808)
step
click Crystallized Void##343589+
|tip They look like tiny black rocks on the ground around this area.
collect 10 Crystallized Void##174993 |q 58805/1 |goto Vale of Eternal Blossoms New/0 81.49,45.77 |or |only if ZGV.InPhase('ValeInvasionRight')
You can find more around [71.25,21.58] |only if ZGV.InPhase('ValeInvasionRight')
collect 10 Crystallized Void##174993 |q 58805/1 |goto Uldum New/0 54.52,50.84 |or |only if ZGV.InPhase('UldumInvasionCenter')
|only if haveq(58805)
step
click Solar Emanator
|tip Fly down into the Chamber of the Stars.
collect 1 Solar Emanator##174996 |q 58806/1 |goto Uldum/0 61.68,29.80
|only if haveq(58806)
step
kill Aqir Voidcaster##154352+
collect 30 Aqir Webbing##175001 |q 58807/1 |goto Uldum/0 40.27,40.75
|tip You can only complete this during the Aqir assault in Uldum.
|only if haveq(58807)
step
talk H'partho Ardoros##161738
turnin Void Incubation##58804 |goto Uldum New/0 55.61,35.33 |only if haveq(58804)
turnin Encased in Amber##58808 |goto Uldum New/0 55.61,35.33 |only if haveq(58808)
turnin Continued Incubation##58805 |goto Uldum New/0 55.61,35.33 |only if haveq(58805)
turnin Warmth of the Sun##58806 |goto Uldum New/0 55.61,35.33 |only if haveq(58806)
turnin Wrapping Up##58807 |goto Uldum New/0 55.61,35.33 |only if haveq(58807)
|only if haveq(58804,58808,58805,58806,58807)
step
talk H'partho Ardoros##161738
accept Void Incubation##58804 |goto Uldum/0 55.61,35.33 |only if questpossible |next "Begin_Stage_1_Quests"
accept Encased in Amber##58808 |goto Uldum/0 55.61,35.33 |only if questpossible |next "Begin_Stage_1_Quests"
accept Continued Incubation##58805 |goto Uldum/0 55.61,35.33 |only if questpossible |next "Begin_Stage_1_Quests"
accept Warmth of the Sun##58806 |goto Uldum/0 55.61,35.33 |only if questpossible |next "Begin_Stage_1_Quests"
accept Wrapping Up##58807 |goto Uldum/0 55.61,35.33 |only if questpossible |next "Begin_Stage_1_Quests"
accept Coming Out of His Shell##58810 |only if questpossible |next "Begin_Stage_1.5" |or
Accept the Quest Available Today |complete haveq(58804,58808,58805,58806,58807) |goto Uldum New/0 55.61,35.33 |next "Begin_Stage_1_Quests" |or
|tip You must wait until the next daily reset to accept this quest.
'|complete completedq(58810) |or
step
label "Begin_Stage_1.5"
click Amber Incubator
Watch the Voidtouched Egg Hatch |q 58810/1 |goto 55.69,35.34
step
talk H'partho Ardoros##161738
_<Choose a name>_
Name the Shadowbarb Larva |q 58810/2 |goto 55.61,35.33
step
talk H'partho Ardoros##161738
turnin Coming Out of His Shell##58810 |goto 55.61,35.33
step
talk H'partho Ardoros##161738
accept A Balanced Diet##58811 |goto 55.61,35.33
|tip You must wait until the next daily reset to accept this quest.
step
Kill beast enemies around this area
collect 12 Chunk of Meat##175014 |q 58811/1 |goto 68.17,31.96
You can find more around [71.62,60.64]
step
click Place Meat
Feed the Larva |q 58811/2 |goto 55.66,35.24
step
talk H'partho Ardoros##161738
turnin A Balanced Diet##58811 |goto 55.61,35.33
step
talk H'partho Ardoros##161738
accept Meat Alternatives##58812 |goto 55.61,35.33 |only if questpossible
accept Super Jelly##58825 |goto 55.61,35.33 |only if questpossible
accept Bug Buddies##58818 |goto 55.61,35.33 |only if questpossible
accept Fetid Filets##58813 |goto 55.61,35.33 |only if questpossible
accept More Fetid Filets##58858 |goto 55.61,35.33 |only if questpossible
accept A Bloody Treat##58826 |goto 55.61,35.33 |only if questpossible
accept Action Figures##58817 |goto 55.61,35.33 |only if questpossible
Accept the Quest Available Today |complete haveq(58812,58825,58818,58813,58858,58826,58817) |goto Uldum New/0 55.61,35.33 |or
'|complete completedq(58829) |or
step
label "Begin_Stage_2_Quests"
Proceeding |complete haveq(58812,58825,58818,58813,58858,58826,58817) |or
'|complete completedq(58829) |or
step
Kill Aqir enemies around this area
collect 12 Insectoid Meat##175015 |q 58812/1 |goto Uldum/0 42.01,40.38
|only if haveq(58812)
step
click Place Meat
Feed the Larva |q 58812/2 |goto 55.66,35.24
|only if haveq(58812)
step
click Concentrated Royal Jelly##343668+
|tip They look like brown and orange jars on the ground around this area.
collect 8 Concentrated Royal Jelly##175022 |q 58825/1 |goto Vale of Eternal Blossoms New/0 11.42,31.98
|only if haveq(58825)
step
click Concentrated Royal Jelly
Feed the Larva |q 58825/2 |goto Uldum New /0 55.64,35.34
|only if haveq(58825)
step
click Docile Sandstone Hatchling+
|tip They look like tiny red beetles on the ground around this area.
Catch #5# Docile Sandstone Hatchlings |q 58818/1 |goto Uldum/0 11.42,31.98
|only if haveq(58818)
step
Kill enemies around this area
collect 12 Corrupted Flesh##175016 |q 58813/1 |goto Uldum/0 58.39,49.86 |only if ZGV.InPhase('UldumInvasionCenter')
collect 12 Corrupted Flesh##175016 |q 58813/1 |goto Vale of Eternal Blossoms New/0 78.08,49.20 |only if ZGV.InPhase('ValeInvasionRight')
|only if haveq(58813)
step
click Place Meat
Feed the Larva |q 58813/2 |goto Uldum New /0 55.66,35.24
|only if haveq(58813)
step
Kill enemies around this area
collect 12 Corrupted Flesh##175016 |q 58858/1 |goto Uldum/0 58.39,49.86 |only if ZGV.InPhase('UldumInvasionCenter')
collect 12 Corrupted Flesh##175016 |q 58858/1 |goto Vale of Eternal Blossoms New/0 78.08,49.20 |only if ZGV.InPhase('ValeInvasionRight')
|only if haveq(58858)
step
click Place Meat
Feed the Larva |q 58858/2 |goto Uldum New /0 55.66,35.24
|only if haveq(58858)
step
Kill Dokani enemies around this area
collect 8 Vial of Purified Anima##175023 |q 58826/1 |goto Vale of Eternal Blossoms New/0 30.07,37.83
|only if haveq(58826)
step
click Place Meat
Feed the Larva |q 58826/2 |goto Uldum New /0 55.66,35.24
|only if haveq(58826)
step
Kill Amathet enemies around this area
collect 6 Amathet Figurine##175020 |q 58817/1 |goto Uldum New/0 64.47,28.88
|only if haveq(58817)
step
talk H'partho Ardoros##161738
turnin Meat Alternatives##58812 |goto Uldum New/0 55.61,35.33 |only if haveq(58812)
turnin Super Jelly##58825 |goto Uldum New/0 55.61,35.33 |only if haveq(58825)
turnin Bug Buddies##58818 |goto Uldum New/0 55.61,35.33 |only if haveq(58818)
turnin Fetid Filets##58813 |goto Uldum New/0 55.61,35.33 |only if haveq(58813)
turnin More Fetid Filets##58858 |goto Uldum New/0 55.61,35.33 |only if haveq(58858)
turnin A Bloody Treat##58826 |goto Uldum New/0 55.61,35.33 |only if haveq(58826)
turnin Action Figures##58817 |goto Uldum New/0 55.61,35.33 |only if haveq(58817)
|only if haveq(58812,58825,58818,58813,58858,58826,58817)
step
talk H'partho Ardoros##161738
accept Meat Alternatives##58812 |goto 55.61,35.33 |only if questpossible |next "Begin_Stage_2_Quests"
accept Super Jelly##58825 |goto 55.61,35.33 |only if questpossible |next "Begin_Stage_2_Quests"
accept Bug Buddies##58818 |goto 55.61,35.33 |only if questpossible |next "Begin_Stage_2_Quests"
accept Fetid Filets##58813 |goto 55.61,35.33 |only if questpossible |next "Begin_Stage_2_Quests"
accept More Fetid Filets##58858 |goto 55.61,35.33 |only if questpossible |next "Begin_Stage_2_Quests"
accept A Bloody Treat##58826 |goto 55.61,35.33 |only if questpossible |next "Begin_Stage_2_Quests"
accept Action Figures##58817 |goto 55.61,35.33 |only if questpossible |next "Begin_Stage_2_Quests"
accept They Grow So Fast##58829 |goto 55.61,35.33 |only if questpossible |next "Begin_Stage_2.5" |or
Accept the Quest Available Today |complete haveq(58812,58825,58818,58813,58858,58826,58817) |goto Uldum New/0 55.61,35.33 |next "Begin_Stage_2_Quests" |or
|tip You must wait until the next daily reset to accept this quest.
'|complete completedq(58829) |or
step
label "Begin_Stage_2.5"
click Shadowbarb Cocoon
Open the Shadowbarb Cocoon |q 58829/1 |goto 55.71,35.26
step
talk H'partho Ardoros##161738
turnin They Grow So Fast##58829 |goto 55.61,35.33
step
collect 1 Shadowbarb Hatchling##175049 |goto Ny'alotha, the Waking City/5 63.97,67.98 |or
'|learnpet Shadowbarb Hatchling##2872 |or
step
use the Shadowbarb Hatchling##175049
Learn the "Shadowbarb Hatchling" Battle Pet |learnpet Shadowbarb Hatchling##2872
step
_Congratulations!_
You Collected the "Shadowbarb Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Voidglower",{
patch='83000',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be caught in the wild in Vale of Eternal Blossoms.",
keywords={"Flying","Vale","of","Eternal","Blossoms","8.3"},
startlevel=50.0,
pet=2866,
},[[
step
label "Time_Travel"
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |or
'|learnpet Voidglower##2866 |or
step
map Vale of Eternal Blossoms New/0
path follow smart; loop on; ants curved; dist 30
path	47.21,31.02	57.43,46.41	38.61,59.60	27.61,51.22
clicknpc Voidglower##162506
|tip Follow the path, searching for a Voidglower.
|tip Stop at each point and check for it.
|tip Kill any critters you encounter to increase the chances of one spawning.
|tip These are usually found in packs of three.
|tip Use the "Trap" ability once it is below 35% health.
Learn the "Voidglower" Battle Pet |learnpet Voidglower##2866 |or
'|complete ZGV.InPhase('OldVale') and not haspet(2866) |next "Time_Travel" |or
step
_Congratulations!_
You Collected the "Voidglower" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Windfeather Chick",{
patch='83000',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from Zhang Ku in Vale of Eternal Blossoms after obtaining 300 "..
"Polished Pet Charms and reaching exalted reputation with the Rajani.",
startlevel=50.0,
keywords={"Flying","Reputation","Rajani"},
pet=2853,
},[[
step
Reach Exalted Reputation with the Rajani |complete rep("Rajani") >= Exalted
|tip Use the "Rajani" reputation guide to accomplish this.
step
collect 300 Polished Pet Charm##163036 |or
|tip They can be earned by completing battle pet dailies and world quests.
'|learnpet Windfeather Chick##2853 |or
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |or
'|learnpet Windfeather Chick##2853 |or
step
Enter the building |goto Vale of Eternal Blossoms New/0 40.28,75.25 < 15 |walk
talk Zhang Ku##160711
buy 1 Windfeather Quill##174480 |goto 44.46,75.42 |or
'|learnpet Windfeather Chick##2853 |or
step
use the Windfeather Quill##174480
Learn the "Windfeather Chick" Battle Pet |learnpet Windfeather Chick##2853
step
_Congratulations!_
You Collected the "Windfeather Chick" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Adventurous Hopling",{
patch='82000',
source='Drop',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Humanoid","Island","Expedition"},
pet=2755,
description="\nThis battle pet is a random drop from Island Expeditions added in patch 8.2.",
},[[
step
collect 1 Adventurous Hopling Pack##169322 |or
|tip This pet drops randomly from Island Expeditions.
|tip Run them continuously until you get it to drop.
|tip It can be caged, meaning you can purchase it from the Auction House as well.
'|learnpet Adventurous Hopling##2755 |or
step
use the Adventurous Hopling Pack##169322
Learn the "Adventurous Hopling" Battle Pet |learnpet Adventurous Hopling##2755
step
_Congratulations!_
You Collected the "Adventurous Hopling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Cursed Dune Watcher",{
patch='83000',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from the Uldum Accord Supply caches from paragon reputation.",
keywords={"Humanoid","Accord","Paragon","Uldum","8.3"},
startlevel=50.0,
pet=2850,
},[[
step
use the Uldum Accord Supplies##174484 |only if itemcount(174484) >= 1
collect 1 Cursed Dune Watcher##174481 |or
|tip This pet comes from Uldum Accord Supplies.
|tip These caches can be obtained by earning 10,000 rep with the Uldum Accord after reaching exalted.
|tip Complete the "Uldum Accord" reputation guide and both world quests and daily quests in Uldum.
|tip It can be caged, meaning you can purchase it from the Auction House as well.
'|learnpet Cursed Dune Watcher##2850 |or
step
use Cursed Dune Watcher##174481
Learn the "Cursed Dune Watcher" Battle Pet |learnpet Cursed Dune Watcher##2850
step
_Congratulations!_
You Collected the "Cursed Dune Watcher" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\K'uddly",{
patch='83000',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from the rare mob The Forgotten in Vale of Eternal Blossoms.",
keywords={"Humanoid","The","Forgotten","Vale","Eternal","Blossoms","8.3"},
startlevel=50.0,
pet=2845,
},[[
step
label "Time_Travel"
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |or
'|learnpet K'uddly##2845 |or
step
kill The Forgotten##157176
|tip This is a rare spawn and may not be active.
|tip You can loot this rare spawn once per day.
collect 1 K'uddly##174473 |goto Vale of Eternal Blossoms New/0 52.05,41.78 |or
|tip It can be caged, meaning you can purchase it from the Auction House as well.
|tip This pet is not a guaranteed drop.
'|learnpet K'uddly##2845 |or
'|complete ZGV.InPhase('OldVale') and not haspet(2845) |next "Time_Travel" |or
step
use K'uddly##174473
Learn the "K'uddly" Battle Pet |learnpet K'uddly##2845 |or
'|complete ZGV.InPhase('OldVale') and not haspet(2845) |next "Time_Travel" |or
step
_Congratulations!_
You Collected the "K'uddly" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Kelpfin",{
patch='82000',
source='Achievement',
author="support@zygorguides.com",
description="\nThis battle pet is awarded upon completion of the \"Team Aquashock\" achievement.",
keywords={"Humanoid","Team","Aquashock"},
startlevel=50.0,
pet=2683,
},[[
leechsteps "Achievement Guides\\Pet Battles\\Battle for Azeroth\\Team Aquashock" 1-26
step
collect 1 Kelpfin##169349 |or
|tip It should be available in your mailbox.
'|learnpet Kelpfin##2683
step
use Kelpfin##174473
Learn the "Kelpfin" Battle Pet |learnpet Kelpfin##2683
step
_Congratulations!_
You Collected the "Kelpfin" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Murgle",{
patch='82000',
source='Drop',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Humanoid","King","Gakula","Nazjatar"},
pet=2681,
description="\nThis battle pet has a chance to drop from the rare mob King Gakula in Nazjatar.",
},[[
step
clicknpc Bloodfin Tadpole##152275
Shoo a Bloodfin Tadpole |havebuff spell:295625 |goto Nazjatar/0 28.94,31.13 |or
'|learnpet Murgle##2681 |or
step
Main the "Anger of the Bloodfin" debuff
|tip "Shoo" a Bloodfin Tadpole by clicking it to regain the debuff if you lose it.
|tip While the debuff is active, a Murloc will spawn and attack you every 30 seconds.
|tip King Gakula has a small chance to spawn instead of one of the regular Murlocs or when you click a Bloodfin Tadpole.
|tip Maintain the debuff and eventually King Gakula will spawn at this location.
kill King Gakula##152323
collect 1 Murgle##169371 |goto 29.40,29.00 |or
|tip It can be caged, meaning you can purchase it from the Auction House as well.
'|learnpet Murgle##2681 |or
step
use Murgle##169371
Learn the "Murgle" Battle Pet |learnpet Murgle##2681
step
_Congratulations!_
You Collected the "Murgle" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Necrofin Tadpole",{
patch='82000',
source='Drop',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Humanoid","Blindlight","Nazjatar"},
pet=2682,
description="\nThis battle pet has a chance to drop from the rare mob Blindlight in Nazjatar.",
},[[
step
Enter the cave |goto Nazjatar/0 39.62,77.25 < 10 |walk
Follow the path |goto 38.80,78.34 < 10 |walk
kill Blindlight##152712
|tip It walks or swims around this area inside the cave.
collect 1 Necrofin Tadpole##169372 |goto 37.40,82.54 |or
|tip It can be caged, meaning you can purchase it from the Auction House as well.
'|learnpet Necrofin Tadpole##2682 |or
step
use the Necrofin Tadpole##169372
Learn the "Necrofin Tadpole" Battle Pet |learnpet Necrofin Tadpole##2682
step
_Congratulations!_
You Collected the "Necrofin Tadpole" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Void-Scarred Anubisath",{
patch='83000',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from Ra-den in the Ny'alotha, the Waking City raid.",
keywords={"Humanoid","Ny'alotha","Ra-den","8.3"},
startlevel=50.0,
pet=2833,
},[[
step
kill Ra-den##156866
|tip Use the "Ny'alotha, the Waking City - Halls of Devotion" raid guide to complete the encounter.
collect 1 Void-Scarred Anubisath##174447 |goto Ny'alotha, the Waking City/5 63.97,67.98 |or
|tip It can be caged, meaning you can purchase it from the Auction House as well.
|tip This pet is not a guaranteed drop.
'|learnpet Void-Scarred Anubisath##2833 |or
step
use the Void-Scarred Anubisath##174447
Learn the "Void-Scarred Anubisath" Battle Pet |learnpet Void-Scarred Anubisath##2833
step
_Congratulations!_
You Collected the "Void-Scarred Anubisath" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Zanj'ir Poker",{
patch='82000',
source='Drop',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Humanoid","Eternal","Palace","Nazjatar"},
pet=2680,
description="\nThis battle pet has a chance to drop from Queen Azshara's Chest in The Eternal Palace raid.",
},[[
step
kill Queen Azshara##155126
click Azshara's Chest
|tip It spawns after killing Queen Azshara.
collect 1 Zanj'ir Poker##169348 |goto The Eternal Palace/0 48.27,51.72 |or
|tip This pet is not a guaranteed drop.
|tip It can be caged, meaning you can purchase it from the Auction House as well.
'|complete haspet(2680) |or
step
use Zanj'ir Poker##169348
Learn the "Zanj'ir Poker" Battle Pet |learnpet Zanj'ir Poker##2680
step
_Congratulations!_
You Collected the "Zanj'ir Poker" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Anomalus",{
patch='83000',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from Alleria or Thrall's Corrupted Chest in the Horrific Visions "..
"of Stormwind and Orgrimmar.",
keywords={"Magic","Horrific","Vision","Orgrimmar","Stormwind","Alleria","Thrall","8.3"},
startlevel=50.0,
pet=2842,
},[[
step
collect 1 Swirling Black Bottle##174461 |or
|tip This has a chance to drop from the main objective chest in Horrific Visions.
|tip Use the "Horrific Vision of Stormwind" and "Horrific Vision of Orgrimmar" leveling guides to complete them.
|tip If you only care about the pet, you can skip directly to Alleria or Thrall.
|tip The chest will be available at the end of the run.
'|learnpet Anomalus##2842 |or
step
use Swirling Black Bottle##174461
Learn the "Anomalus" Battle Pet |learnpet Anomalus##2842
step
_Congratulations!_
You Collected the "Anomalus" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Corrupted Tentacle",{
patch='83000',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from the rare mob Will of N'Zoth in Vale of Eternal Blossoms.",
keywords={"Magic","Will","of","N'Zoth","Vale","Eternal","Blossoms","8.3"},
startlevel=50.0,
pet=2846,
},[[
step
label "Time_Travel"
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |or
'|learnpet Corrupted Tentacle##2846 |or
step
kill Will of N'Zoth##154495
|tip This is a rare spawn and may not be active.
|tip You can loot this rare spawn once per day.
collect 1 Corrupted Tentacle##174474 |goto Vale of Eternal Blossoms New/0 52.95,62.23 |or
|tip It can be caged, meaning you can purchase it from the Auction House as well.
|tip This pet is not a guaranteed drop.
'|learnpet Corrupted Tentacle##2846 |or
'|complete ZGV.InPhase('OldVale') and not haspet(2846) |next "Time_Travel" |or
step
use the Corrupted Tentacle##174474
Learn the "Corrupted Tentacle" Battle Pet |learnpet Corrupted Tentacle##2846 |or
'|complete ZGV.InPhase('OldVale') and not haspet(2846) |next "Time_Travel" |or
step
_Congratulations!_
You Collected the "Corrupted Tentacle" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Echoing Oozeling",{
patch='82000',
source='Quest',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from Boxes of Assorted Parts upon completion "..
"of the Reclamation Rig event on Mechagon Island.",
keywords={"Magic","Mechagon","Island","Reclamation","Rig"},
startlevel=50.0,
pet=2721,
},[[
step
use the Box of Assorted Parts##168394
|tip This is awarded after completing the normal Reclamation Rig event on Mechagon Island.
|tip The Reclamation Rig event occurs several times per day.
|tip Players must donate a total of 4,000 Spare Parts and 5 Energy Cells to start the event.
|tip Several waves of Contaminated Globs and Irradiated Elementals will spawn, followed by three elites.
|tip Defeat all of the waves with your group to earn a Box of Assorted Parts.
collect 1 Echoing Oozeling##169396 |goto Mechagon Island/0 69.95,61.96 |or
|tip This is not a guaranteed drop.
'|learnpet Echoing Oozeling##2721 |or
step
use the Echoing Oozeling##169396
Learn the "Echoing Oozeling" Battle Pet |learnpet Echoing Oozeling##2721
step
_Congratulations!_
You Collected the "Echoing Oozeling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Eye of Corruption",{
patch='83000',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from the Vault of the Black Empire after killing "..
"N'Zoth the Corruptor in the Ny'alotha, the Waking City raid.",
keywords={"Magic","N'Zoth","the","Corruptor","Vault","Black","Empire","Ny'alotha","8.3"},
startlevel=50.0,
pet=2836,
},[[
step
kill N'Zoth the Corruptor##158041
|tip Use the "Ny'alotha, the Waking City - The Waking Dream" raid guide to complete the encounter.
collect 1 Eye of Corruption##174452 |goto Ny'alotha, the Waking City/3 47.80,25.29 |or
|tip This has a chance to drop from the Vault of the Black Empire after killing N'Zoth.
|tip It can be caged, meaning you can purchase it from the Auction House as well.
|tip This pet is not a guaranteed drop.
'|learnpet Eye of Corruption##2836 |or
step
use the Eye of Corruption##174452
Learn the "Eye of Corruption" Battle Pet |learnpet Eye of Corruption##2836
step
_Congratulations!_
You Collected the "Eye of Corruption" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Gloop",{
patch='83000',
source='Drop',
author="support@zygorguides.com",
description="\nThis pet has a chance to drop from from looted casts from Fishing "..
"in the current Black Empire assault zone.",
keywords={"Magic","Fishing","Black","Empire","8.3"},
startlevel=50.0,
pet=2837,
},[[
step
cast Fishing##7731
collect 1 Bottle of Gloop##174456 |goto Uldum New/0 54.16,37.23 |only if ZGV.InPhase('UldumInvasionCenter') |or
collect 1 Bottle of Gloop##174456 |goto Vale of Eternal Blossoms New/0 72.49,40.87 |only if ZGV.InPhase('ValeInvasionRight') |or
|tip This has a small chance to drop from looted casts from Fishing.
|tip It can be caged, meaning you can purchase it from the Auction House as well.
'|learnpet Gloop##2837 |or
step
use the Bottle of Gloop##174456
Learn the "Gloop" Battle Pet |learnpet Gloop##2837
step
_Congratulations!_
You Collected the "Gloop" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Muar",{
patch='83000',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from Maut in the Ny'alotha, the Waking City raid.",
keywords={"Magic","Maut","the","Waking","City","Ny'alotha","8.3"},
startlevel=50.0,
pet=2832,
},[[
step
kill Maut##156523
|tip Use the "Ny'alotha, the Waking City - Vision of Destiny" raid guide to complete the encounter.
collect 1 Fractured Obsidian Claw##174446 |goto Ny'alotha, the Waking City/9 19.24,60.61 |or
|tip This has a chance to drop from the Maut.
|tip It can be caged, meaning you can purchase it from the Auction House as well.
|tip This pet is not a guaranteed drop.
'|learnpet Muar##2832 |or
step
use the Fractured Obsidian Claw##174446
Learn the "Muar" Battle Pet |learnpet Muar##2832
step
_Congratulations!_
You Collected the "Muar" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Reek",{
patch='83000',
source='Achievement',
author="support@zygorguides.com",
description="\nTo collect this battle pet, you will have to complete all objectives in the Horrific Vision of Orgrimmar "..
"and the Horrific Vision of Stormwind in one visit each.",
startlevel=50.0,
keywords={"Magic","Horrific","Vision","Orgrimmar","Stormwind"},
pet=2844,
},[[
step
Earn the "Reeking of Visions" Achievement |achieve 14143
|tip To earn this achievement, complete all objectives in the Horrific Vision of Orgrimmar and the Horrific Vision of Stormwind in one visit.
|tip Fully complete the "Horrific Vision of Orgrimmar" and "Horrific Vision of Stormwind" leveling guides in one run each to earn this achievement.
step
collect 1 Reek##174463 |or
|tip This should be available in your mailbox.
'|learnpet Reek##2844 |or
step
use Reek##174463
Learn the "Reek" Battle Pet |learnpet Reek##2844
step
_Congratulations!_
You Collected the "Reek" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Shrieker",{
patch='82000',
source='Vendor',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Magic","Stratholme","Battle","Dungeon"},
pet=2750,
description="\nThis battle pet is purchased from Sean Wilkers in Eastern Plaguelands for three Cleansed Remains.",
},[[
step
collect 3 Cleansed Remains##169665 |or
|tip Use the "Stratholme Weekly" daily guide to accomplish this.
|tip You will need to first complete the "Stratholme" pet battle dungeon guide.
|tip You get one for completing the challenge each week.
|tip You can occasionally encounter Fras Sabi, who will drop an additional remains.
'|learnpet Shrieker##2750 |or
step
talk Sean Wilkers##150987
buy 1 Contained Banshee Wail##169676 |goto Eastern Plaguelands/0 43.14,19.93 |or
'|learnpet Shrieker##2750 |or
step
use the Contained Banshee Wail##169676
Learn the "Shrieker" Battle Pet |learnpet Shrieker##2750
step
_Congratulations!_
You Collected the "Shrieker" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Alloyed Alleyrat",{
patch='82000',
source='PetBattle',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Mechanical","Operation","Mechagon"},
pet=2672,
description="\nThis battle pet is caught in the wild inside the \"Operation: Mechagon\" mythic dungeon.",
},[[
step
Enter the "Operation: Mechagon" Dungeon |goto Mechagon 0.00,0.00 |c < 1000 |or
|tip Queue for Operation: Mechagon - Workshop using the group finder or enter the dungeon with your group.
'|learnpet Alloyed Alleyrat##2672 |or
step
clicknpc Alloyed Alleyrat##154789
|tip You can find these underground in the dungeon after defeating Tussle Tonks.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Alloyed Alleyrat" Battle Pet |learnpet Alloyed Alleyrat##2672 |goto Mechagon/1 52.54,43.76
step
_Congratulations!_
You Collected the "Alloyed Alleyrat" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Arachnoid Skitterbot",{
patch='82000',
source='Drop',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Mechanical","Mechagon","Mecharantula"},
pet=2720,
description="\nThis battle pet has a chance to drop from the Mecharantula rare mob on Mechagon Island.",
},[[
step
kill Mecharantula##151672
|tip This is a rare spawn and may not always be avaialable.
|tip You can loot it once per day.
collect 1 Arachnoid Skitterbot##169393 |goto Mechagon Island/0 88.15,20.56 |or
|tip This pet is common, but not a guaranteed drop.
|tip It can be caged, meaning you can purchase it from the Auction House as well.
'|learnpet Arachnoid Skitterbot##2720 |or
step
use the Arachnoid Skitterbot##169393
Learn the "Arachnoid Skitterbot" Battle Pet |learnpet Arachnoid Skitterbot##2720
step
_Congratulations!_
You Collected the "Arachnoid Skitterbot" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Armored Vaultbot",{
patch='82000',
source='Drop',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Mechanical","Mechagon"},
pet=2766,
description="\nThis battle pet has a chance to drop from the Armored Vaultbot rare mob on Mechagon Island.",
},[[
step
kill Armored Vaultbot##150394
|tip It patrols around the road in the area.
|tip The Vaultbot reduces most damage against it.
|tip To kill the Vaultbot, you have to kite it to the electromagnetic pylon in Bondo's Yard.
|tip If you have killed him before and gotten the Vaultbot Key schematic, you can unlock it without kiting.
|tip The Vaultbot Key can be crafted at Pascal-K1N6 in Rustbolt for 2 S.P.A.R.E. Crates.
|tip You can loot it once per day.
Kite the Armored Vaultbot here [63.27,38.87]
click Pile of Coins##322020
|tip It appears after the Vaultbot explodes.
collect 1 Armored Vaultbot##170072 |goto Mechagon Island/0 53.93,49.38 |or
|tip This pet is common, but not a guaranteed drop.
|tip It can be caged, meaning you can purchase it from the Auction House as well.
'|learnpet Armored Vaultbot##154894 |or
step
use the Armored Vaultbot##170072
Learn the "Armored Vaultbot" Battle Pet |learnpet Armored Vaultbot##154894
step
_Congratulations!_
You Collected the "Armored Vaultbot" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Clanking Scrapsorter",{
patch='82000',
source='PetBattle',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Mechanical","Operation","Mechagon"},
pet=2675,
description="\nThis battle pet is caught in the wild inside the \"Operation: Mechagon\" dungeon.",
},[[
step
Enter the "Operation: Mechagon" Dungeon |goto Mechagon 0.00,0.00 |c < 1000 |or
|tip Queue for Operation: Mechagon - Workshop using the group finder or enter the dungeon with your group.
'|learnpet Clanking Scrapsorter##2675 |or
step
clicknpc Clanking Scrapsorter##154796
|tip You can find these underground in the dungeon after defeating Tussle Tonks.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Clanking Scrapsorter" Battle Pet |learnpet Clanking Scrapsorter##2675 |goto Mechagon/1 52.54,43.76
step
_Congratulations!_
You Collected the "Clanking Scrapsorter" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Copper Hopper",{
patch='82000',
source='PetBattle',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Mechanical","Operation","Mechagon"},
pet=2668,
description="\nThis battle pet is caught in the wild inside the \"Operation: Mechagon\" dungeon.",
},[[
step
Enter the "Operation: Mechagon" Dungeon |goto Mechagon 0.00,0.00 |c < 1000 |or
|tip Queue for the Workshop using the group finder or enter the dungeon with your group.
'|learnpet Copper Hopper##2668 |or
step
clicknpc Copper Hopper##154781
|tip You can find these underground in the dungeon after defeating Tussle Tonks.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Copper Hopper" Battle Pet |learnpet Copper Hopper##2668 |goto Mechagon/1 52.54,43.76
step
_Congratulations!_
You Collected the "Copper Hopper" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Experiment 13",{
patch='83000',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from Burt Macklyn in Blackrock Mountain for "..
"3 Shadowy Gems.",
keywords={"Mechanical","Shadowy","Gem","8.3"},
startlevel=50.0,
pet=2868,
},[[
step
collect 3 Shadowy Gem##174360 |or
|tip Complete the "Blackrock Depths" pet battle dungeon guide normally to unlock  Challenge Mode.
|tip You get one gem every week you complete it on Challenge Mode.
|tip Challenge Mode requires you to complete the dungeon without healing your pets.
|tip You can bypass this by logging on a different character and healing your pets before continuing.
'|learnpet Experiment 13##2868 |or
step
talk Burt Macklyn##161782
buy 1 Experiment 13##174828 |goto Burning Steppes/16 33.07,23.13 |or
'|learnpet Experiment 13##2868 |or
step
use Experiment 13##174828
Learn the "Experiment 13" Battle Pet |learnpet Experiment 13##2868
step
_Congratulations!_
You Collected the "Experiment 13" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\H4ND-EE",{
patch='82000',
source='PetBattle',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Mechanical","Operation","Mechagon"},
pet=2674,
description="\nThis battle pet is caught in the wild inside the \"Operation: Mechagon\" dungeon.",
},[[
step
Enter the "Operation: Mechagon" Dungeon |goto Mechagon 0.00,0.00 |c < 1000 |or
|tip Queue for the Workshop using the group finder or enter the dungeon with your group.
'|learnpet H4ND-EE##2674 |or
step
clicknpc H4ND-EE##154794
|tip You can find these underground in the dungeon after defeating Tussle Tonks.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "H4ND-EE" Battle Pet |learnpet H4ND-EE##2674 |goto Mechagon/1 52.54,43.76
step
_Congratulations!_
You Collected the "H4ND-EE" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Lost Robogrip",{
patch='82000',
source='Drop',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Mechanical","Malfunctioning","Beastbot","Mechagon"},
pet=2715,
description="\nThis battle pet has a chance to drop from the rare mob Malfunctioning Beastbot on Mechagon Island.",
},[[
step
clicknpc Malfunctioning Beastbot##151933
|tip To power up the Beastbot, you will need a Beastbot Powerpack.
|tip The schematic is located in front of the Beastbot.
|tip Craft a Powerpack at Pascal-K1N6 in Rustbolt.
|tip It requires 1 S.P.A.R.E. Crate and 1 Energy Cell.
kill Malfunctioning Beastbot##151933
collect 1 Lost Robogrip##169382 |goto Mechagon Island/0 60.68,42.12 |or
|tip It can be caged, meaning you can purchase it from the Auction House as well.
|tip This pet is common, but not a guaranteed drop.
'|learnpet Lost Robogrip##2715 |or
step
use Lost Robogrip##169382
Learn the "Lost Robogrip" Battle Pet |learnpet Lost Robogrip##2715
step
_Congratulations!_
You Collected the "Lost Robogrip" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Malfunctioning Microbot",{
patch='82000',
source='PetBattle',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Mechanical","Mechagon"},
pet=2676,
description="\nThis battle pet is caught in the wild on Mechagon Island.",
},[[
step
clicknpc Malfunctioning Microbot##154798
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Malfunctioning Microbot" Battle Pet |learnpet Malfunctioning Microbot##2676 |goto Mechagon Island/0 64.47,54.22
step
_Congratulations!_
You Collected the "Malfunctioning Microbot" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Mechantula",{
patch='81000',
source='Profession',
author="support@zygorguides.com",
description="\nThis battle pet can be crafted by an engineer who has purchased the schematic from "..
"Micro Zoox, the Gnomeregan pet battle dungeon vendor.",
keywords={"Mechanical","Gnomeregan","Challenge"},
startlevel=50.0,
pet=2530,
},[[
step
collect 1 Mechantula##165849 |or
|tip You will need an engineer to craft this or you will need to purchase it from the Auction House.
|tip It can be crafted by an Engineer with 1 Explulsom, 5 Umbra Shards, and 20 Gloom Dust.
|tip The schematic can be purchased from Micro Zoox, the Gnomeregan pet battle dungeon vendor.
|tip Use the "Gnomeregan" pet battle dungeon guide to collect a Pristine Gizmo and purchase the schematic if you have Engineering.
'|learnpet Mechantula##2530 |or
step
use Mechantula##165849
Learn the "Mechantula" Battle Pet |learnpet Mechantula##2530
step
_Congratulations!_
You Collected the "Mechantula" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Microbot 8D",{
patch='82000',
source='Drop',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Mechanical","Operation","Mechagon"},
pet=2718,
description="\nThis battle pet has a chance to drop from the HK-8 Aerial Oppression Unit in Operation: Mechagon.",
},[[
step
kill HK-8 Aerial Oppression Unit##155157
|tip Queue for Operation: Mechagon - Junkyard using the group finder or enter the dungeon with your group.
collect 1 Microbot 8D##169385 |goto Mechagon/3 56.43,59.27 |or
|tip This pet is not a guaranteed drop.
|tip It can be caged, meaning you can purchase it from the Auction House.
'|learnpet Microbot 8D##2718 |or
step
use the Microbot 8D##169385
Learn the "Microbot 8D" Battle Pet |learnpet Microbot 8D##2718
step
_Congratulations!_
You Collected the "Microbot 8D" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Motorized Croaker",{
patch='82000',
source='PetBattle',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Mechanical","Mechagon"},
pet=2667,
description="\nThis battle pet is caught in the wild on Mechagon Island.",
},[[
step
clicknpc Motorized Croaker##154779
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Motorized Croaker" Battle Pet |learnpet Motorized Croaker##2667 |goto Mechagon Island/0 82.48,62.99
step
_Congratulations!_
You Collected the "Motorized Croaker" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\OOX-35/MG",{
patch='82000',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet is sometimes awarded after repairing Dismantled OOX-35/MGs on Mechagon Island "..
"when the \"My Chickens are Not for Eating!\" daily quest is active.",
keywords={"Mechanical","Dismantled","Mechagon","Island"},
startlevel=50.0,
pet=2714,
},[[
step
Wait for the "My Chickens are Not for Eating!" Daily Quest to Spawn on Mechagon Island |complete questactive(56523) |or
'|learnpet OOX-35/MG##2714 |or
step
clicknpc Dismantled OOX-35/MG##155253
|tip They can be found all over Mechagon Island.
|tip You must choose "Yes" to repair them until one of them grants you the pet.
|tip Each repair will cost 25 Spare Parts.
collect 1 OOX-35/MG##169381 |goto Mechagon Island/0 64.39,48.52 |or
'|learnpet OOX-35/MG##2714 |or
step
use OOX-35/MG##169381
Learn the "OOX-35/MG" Battle Pet |learnpet OOX-35/MG##2714
step
_Congratulations!_
You Collected the "OOX-35/MG" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Scrapyard Tunneler",{
patch='82000',
source='PetBattle',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Mechanical","Mechagon"},
pet=2673,
description="\nThis battle pet is caught in the wild on Mechagon Island.",
},[[
step
clicknpc Scrapyard Tunneler##154791
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Scrapyard Tunneler" Battle Pet |learnpet Scrapyard Tunneler##2673 |goto Mechagon Island/0 62.71,56.98
step
_Congratulations!_
You Collected the "Scrapyard Tunneler" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Specimen 97",{
patch='82000',
source='PetBattle',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Mechanical","Mechagon"},
pet=2671,
description="\nThis battle pet is caught in the wild on Mechagon Island.",
},[[
step
clicknpc Specimen 97##154787
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Specimen 97" Battle Pet |learnpet Specimen 97##2671 |goto Mechagon Island/0 59.56,26.88
step
_Congratulations!_
You Collected the "Specimen 97" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Tinyclaw",{
patch='83000',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from Burt Macklyn in Blackrock Mountain for "..
"2 Shadowy Gems.",
keywords={"Mechanical","Shadowy","Gem","8.3"},
startlevel=50.0,
pet=2869,
},[[
step
collect 2 Shadowy Gem##174360 |or
|tip Complete the "Blackrock Depths" pet battle dungeon guide normally to unlock  Challenge Mode.
|tip You get one gem every week you complete it on Challenge Mode.
|tip Challenge Mode requires you to complete the dungeon without healing your pets.
|tip You can bypass this by logging on a different character and healing your pets before continuing.
'|learnpet Tinyclaw##2869 |or
step
talk Burt Macklyn##161782
buy 1 Tinyclaw##174829 |goto Burning Steppes/16 33.07,23.13 |or
'|learnpet Tinyclaw##2869 |or
step
use Tinyclaw##174829
Learn the "Tinyclaw" Battle Pet |learnpet Tinyclaw##2869
step
_Congratulations!_
You Collected the "Tinyclaw" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Burnout",{
patch='82000',
source='Achievement',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Undead","Malowned","Stratholme"},
pet=2767,
description="\nThis battle pet is a reward for earning the \"Malowned\" achievement.",
},[[
step
Earn the "Malowned" Achievement |achieve 13766
|tip Use the "Malowned" Achievement guide to accomplish this.
step
collect 1 Burnout##170102 |or
'|learnpet Burnout##2767 |or
step
use Burnout##170102
Learn the "Burnout" Battle Pet |learnpet Burnout##2767
step
_Congratulations!_
You Collected the "Burnout" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Crypt Fiend",{
patch='82000',
source='Vendor',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Undead","Stratholme","Battle","Dungeon"},
pet=2749,
description="\nThis battle pet is purchased from Sean Wilkers in Eastern Plaguelands for two Cleansed Remains.",
},[[
step
collect 2 Cleansed Remains##169665 |or
|tip Use the "Stratholme Weekly" daily guide to accomplish this.
|tip You will need to first complete the "Stratholme" pet battle dungeon guide.
|tip You get one for completing the challenge each week.
|tip You can occasionally encounter Fras Sabi, who will drop an additional remains.
'|learnpet Crypt Fiend##2749 |or
step
talk Sean Wilkers##150987
buy 1 Crypt Fiend##169677 |goto Eastern Plaguelands/0 43.14,19.93 |or
'|learnpet Crypt Fiend##2749 |or
step
use the Crypt Fiend##169677
Learn the "Crypt Fiend" Battle Pet |learnpet Crypt Fiend##2749
step
_Congratulations!_
You Collected the "Crypt Fiend" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Drowned Hatchling",{
patch='82000',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from Feylana the Handler in Nazjatar for 40 Prismatic Manapearls.",
startlevel=50.0,
keywords={"Undead","Feylana","the","Handler"},
pet=2710,
},[[
step
Collect 40 Prismatic Manapearls |complete curcount(1721) >= 40 |or
|tip These are awarded upon completion of world quests and daily quests in Nazjatar.
'|learnpet Drowned Hatchling##2710 |or
step
talk Feylana the Handler##154860
buy 1 Drowned Hatchling##169377 |goto Nazjatar/0 73.70,46.05 |or
'|learnpet Drowned Hatchling##2710 |or
step
use the Drowned Hatchling##169377
Learn the "Drowned Hatchling" Battle Pet |learnpet Drowned Hatchling##2710
step
_Congratulations!_
You Collected the "Drowned Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Ghostly Whelpling",{
patch='82000',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from Crestfall Salvage crates awarded for completing the "..
"Crestfall Island Expedition.",
startlevel=50.0,
keywords={"Undead","Crestfall","Island","Expedition"},
pet=2754,
},[[
step
use the Crestfall Salvage##173950
|tip Queue for Island Expeditions and collect Crestfall Salvage crates.
|tip These only come from the completion of the Crestfall expedition.
collect 1 Ghostly Whelpling##169205 |or
|tip This pet is not a guaranteed drop.
|tip It can be caged, meaning you can purchase it from the Auction House.
'|learnpet Ghostly Whelpling##2754 |or
step
use Ghostly Whelpling##169205
Learn the "Ghostly Whelpling" Battle Pet |learnpet Ghostly Whelpling##2754
step
_Congratulations!_
You Collected the "Ghostly Whelpling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Gruesome Belcher",{
patch='82000',
source='Vendor',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Undead","Stratholme","Battle","Dungeon"},
pet=2747,
description="\nThis battle pet is purchased from Sean Wilkers in Eastern Plaguelands for three Cleansed Remains.",
},[[
step
collect 3 Cleansed Remains##169665 |or
|tip Use the "Stratholme Weekly" daily guide to accomplish this.
|tip You will need to first complete the "Stratholme" pet battle dungeon guide.
|tip You get one for completing the challenge each week.
|tip You can occasionally encounter Fras Sabi, who will drop an additional remains.
'|learnpet Gruesome Belcher##2747 |or
step
talk Sean Wilkers##150987
buy 1 Smelly Cleaver##169679 |goto Eastern Plaguelands/0 43.14,19.93 |or
'|learnpet Gruesome Belcher##2747 |or
step
use the Smelly Cleaver##169679
Learn the "Gruesome Belcher" Battle Pet |learnpet Gruesome Belcher##2747
step
_Congratulations!_
You Collected the "Gruesome Belcher" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Leper Rat",{
patch='81000',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from Micro Zoox outside the Gnomeregan dungeon for "..
"2 Pristine Gizmos.",
keywords={"Undead","Gnomeregan","Challenge"},
startlevel=50.0,
pet=2532,
},[[
step
collect 2 Pristine Gizmo##165835
|tip These are earned by completing the quest "Pet Battle Challenge: Gnomeregan" each week.
|tip Every completion awards 1 gizmo and the quest can be completed once per week.
|tip Use the "Gnomeregan" pet battle dungeon guide to collect them.
step
talk Micro Zoox##147070
|tip Inside the Gnomeregan dungeon area by the entrance to the dungeon.
buy 1 Leper Rat Tail##165855 |goto Dun Morogh/10 31.06,71.44 |or
'|learnpet Leper Rat##2532
step
use the Leper Rat Tail##165855
Learn the "Leper Rat" Battle Pet |learnpet Leper Rat##2532
step
_Congratulations!_
You Collected the "Leper Rat" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Minimancer",{
patch='82000',
source='Achievement',
author="support@zygorguides.com",
description="\nThis battle pet can be collected by completing the Pet Battle Challenge: Stratholme for the first time.",
startlevel=50.0,
keywords={"Undead","Stratholme","Pet","Battle","Challenge"},
pet=2638,
},[[
step
Enter the building |goto Dazar'alor/0 56.82,31.15 < 10 |walk |only Horde
talk Radek Fuselock##147641 |only Horde
talk Tizzy Gearjolt##147645 |only Alliance
|tip Inside the building.
accept Restless Dead##56490 |goto 56.26,30.82 |only Horde |or
accept Restless Dead##56489 |goto Boralus/0 50.18,46.75 |only Alliance |or
'|learnpet Minimancer##2638 |or
step
talk Sean Wilkers##150987
turnin Restless Dead##56490 |goto Eastern Plaguelands/0 43.13,19.93 |only Horde |or
turnin Restless Dead##56489 |goto Eastern Plaguelands/0 43.13,19.93 |only Alliance |or
'|learnpet Minimancer##2638 |or
step
label "Begin_Pet_Battle_Challenge"
talk Sean Wilkers##150987
accept Tiny Terrors of Stratholme##56491 |goto 43.13,19.93 |only if not completedq(56491) |or
accept Pet Battle Challenge: Stratholme##56492 |goto 43.13,19.93 |only if completedq(56491) |or
|tip You cannot heal your pets during a pet battle challenge. |only if completedq(56491)
|tip You can bypass this by logging out without leaving the dungeon and healing your pets on another character. |only if completedq(56491)
'|learnpet Minimancer##2638 |or
step
talk Sean Wilkers##150987
Tell him _"I'm ready, send me into Stratholme!"_
Ask Sean Wilkers to Open the Stratholme Service Entrance |scenariostart |goto 43.13,19.94 |q 56492 |future |or
'|learnpet Minimancer##2638 |or
step
clicknpc Belchling##150923
Defeat Belchling |scenariogoal 1/45436 |goto Stratholme Battle Pet/0 66.62,52.79 |q 56492 |future |or
'|learnpet Minimancer##2638 |or
step
clicknpc Sludge Belcher##150922
Defeat the Sludge Belcher |scenariogoal 2/45437 |goto 66.71,52.62 |q 56492 |future |or
'|learnpet Minimancer##2638 |or
step
clicknpc Wandering Phantasm##150914
|tip It wanders around this area.
Defeat the Wandering Phantasm |scenariogoal 3/45439 |goto 60.24,44.45 |q 56492 |future |or
'|learnpet Minimancer##2638 |or
step
clicknpc Crypt Fiend##150911
Defeat the Crypt Fiend |scenariogoal 3/45438 |goto 58.07,43.11 |q 56492 |future |or
'|learnpet Minimancer##2638 |or
step
clicknpc Liz the Tormentor##150925
Defeat Liz the Tormentor |scenariogoal 4/45441 |goto 57.73,45.81 |q 56492 |future |or
'|learnpet Minimancer##2638 |or
step
Reach Slaughter Square |scenariogoal 5/45442 |goto 58.14,37.47 |q 56492 |future |or
'|learnpet Minimancer##2638 |or
step
clicknpc Plagued Critters##155145
Choose _"Extermination Time!"_
Defeat the Plagued Critters |scenariogoal 6/45444 |goto 57.71,37.11 |q 56492 |future |or
'|learnpet Minimancer##2638 |or
step
clicknpc Risen Guard##155267
Defeat the Risen Guard |scenariogoal 7/45490 |goto 59.90,30.25 |q 56492 |future |or
'|learnpet Minimancer##2638 |or
step
clicknpc Nefarious Terry##150929
Defeat Nefarious Terry |scenariogoal 8/45446 |goto 56.59,22.00 |q 56492 |future |or
'|learnpet Minimancer##2638 |or
step
clicknpc Cleansed Sludge Belcher##151191
Control the Cleansed Sludge Belcher |invehicle |goto 52.65,20.12 |q 56492 |future |or
'|learnpet Minimancer##2638 |or
step
Kill enemies around this area
|tip Use the abilities on your vehicle bar.
Clear the Courtyard of Undead |scenariostage 9 |goto 46.72,20.33 |q 56492 |future |or
'|learnpet Minimancer##2638 |or
step
Stop Controlling the Cleansed Sludge Belcher |outvehicle |q 56492 |future |or
|tip Click the "Exit" button on your vehicle bar.
'|learnpet Minimancer##2638 |or
step
Enter the building |goto 42.75,20.32 < 5 |walk
clicknpc Tommy the Cruel##150918
|tip Inside the building.
Defeat Tommy the Cruel |scenariogoal 10/45447 |goto 38.46,21.58 |q 56492 |future |or
'|learnpet Minimancer##2638 |or
step
clicknpc Huncher##150917
|tip Inside the building.
Defeat Huncher |scenariogoal 10/45448 |goto 38.54,19.03 |q 56492 |future |or
'|learnpet Minimancer##2638 |or
step
Watch the dialogue
clicknpc Blackmane##150858
|tip Inside the building.
|tip Blackmane will resurrect after being killed.
|tip After resurrection, Blackmane will gain the Undead pet ability to return to life for one round after being killed.
Defeat Blackmane |scenariogoal 11/45449 |goto 37.49,20.45 |q 56492 |future |or
'|learnpet Minimancer##2638 |or
step
talk Sean Wilkers##155346
Tell him _"This place is scary, get me out of here!"_
Leave Stratholme |goto 37.35,21.34 > 100 |c |q 56492 |future |or
'|learnpet Minimancer##2638 |or
step
talk Sean Wilkers##150987
turnin Tiny Terrors of Stratholme##56491 |goto Eastern Plaguelands/0 43.13,19.93 |next "Begin_Pet_Battle_Challenge" |or
'|learnpet Minimancer##2638 |or
|only if not completedq(56491)
step
talk Sean Wilkers##150987
turnin Pet Battle Challenge: Stratholme##56492 |goto 43.13,19.93 |or
'|learnpet Minimancer##2638 |or
|only if completedq(56491)
step
collect 1 Evil Wizard Hat##169670 |goto Nazjatar/0 73.70,46.05 |or
'|learnpet Minimancer##2638 |or
step
use the Evil Wizard Hat##169670
Learn the "Minimancer" Battle Pet |learnpet Minimancer##2638
step
_Congratulations!_
You Collected the "Minimancer" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Ziggy",{
patch='82000',
source='Vendor',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Undead","Stratholme","Battle","Dungeon"},
pet=2748,
description="\nThis battle pet is purchased from Sean Wilkers in Eastern Plaguelands for one Cleansed Remains.",
},[[
step
collect 1 Cleansed Remains##169665 |or
|tip Use the "Stratholme Weekly" daily guide to accomplish this.
|tip You will need to first complete the "Stratholme" pet battle dungeon guide.
|tip You get one for completing the challenge each week.
|tip You can occasionally encounter Fras Sabi, who will drop an additional remains.
'|learnpet Ziggy##2748 |or
step
talk Sean Wilkers##150987
buy 1 Ziggy##169678 |goto Eastern Plaguelands/0 43.14,19.93 |or
'|learnpet Ziggy##2748 |or
step
use Ziggy##169678
Learn the "Ziggy" Battle Pet |learnpet Ziggy##2748
step
_Congratulations!_
You Collected the "Ziggy" Battle Pet.
]])
