local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if ZGV:DoMutex("PetsCCATA") then return end
if not ZGV.CommonPets then return end
ZygorGuidesViewer.GuideMenuTier = "CAT"
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Biletoad",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis pet can be captured in the wild around River's Heart in Sholazar Basin.",
keywords={"Aquatic","Sholazar","Basin"},
pet=649,
},[[
step
clicknpc Biletoad##62815
Weaken and capture the Biletoad in battle
|tip Use the "Trap" ability once it is below 35% health.
Collect the "Biletoad" Battle Pet |learnpet Biletoad##649 |goto Sholazar Basin/0 46.95,64.99
step
_Congratulations!_
You Collected a "Biletoad" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Chuck",{
patch='23000',
source='Profession',
author="support@zygorguides.com",
description="\nThis battle pet is a reward for completing the quest Crocolisks in the City or can be purchased from the Auction House.",
keywords={"Aquatic","Crocolisks","In","The","City"},
pet=174,
},[[
step
talk Old Man Barlo##25580
accept Crocolisks in the City##11665 |goto Terokkar Forest/0 38.72,12.80
|tip There are 5 daily quests in total, it may take several attempts to get this quest.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
collect Baby Crocolisk##34864 |q 11665/1 |goto Orgrimmar/1 65.98,45.73
|tip Use your fishing skill to catch a Baby Crocolisk.
step
talk Old Man Barlo##25580
turnin Crocolisks in the City##11665 |goto Terokkar Forest/0 38.72,12.80
step
collect Bag of Fishing Treasures##35348 |n
use the Bag of Fishing Treasures##35348
|tip It is in your inventory.
collect Chuck's Bucket##35350 |n
use Chuck's Bucket##35350
|tip It is in your inventory.
|tip This has about a 60% chance to drop, it make take you several attempts to get it.
Learn the "Chuck" Battle Pet |learnpet Chuck##174
step
_Congratulations!_
You Collected the "Chuck" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Darkmoon Turtle",{
patch='43000',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a vendor at the Darkmoon Faire.",
keywords={"Aquatic","Darkmoon","Faire"},
pet=335,
},[[
step
click Portal to the Darkmoon Faire |goto Mulgore/0 36.85,35.84
|tip The Darkmoon Faire is only available during the first week of every month.
Teleport to the Darkmoon Faire |goto Darkmoon Island/0 51.29,23.86 |c
step
talk Lhara##14846
buy Darkmoon Turtle##73765 |n
|tip It costs 90 Darkmoon Faire tickets.
|tip To earn tickets you have to complete daily quests.
|tip You can use our Darkmoon Faire guides to help you earn tickets.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
collect Darkmoon Turtle##73765 |n
use the Darkmoon Turtle##73765
|tip It is in your inventory.
Learn the "Darkmoon Turtle" Battle Pet |learnpet Darkmoon Turtle##335 |goto 48.25,69.52
step
_Congratulations!_
You Collected the "Darkmoon Turtle" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Frog",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis Battle pet can be caught in the wild around Falfarren River in Ashenvale.",
keywords={"Aquatic","Ashenvale"},
pet=495,
},[[
step
clicknpc Frog##62312
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Frog" Battle Pet |learnpet Frog##495 |goto Ashenvale/0 70.67,56.79
step
_Congratulations!_
You Collected the "Frog" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Horny Toad",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis Battle pet can be caught in the wild around Desolace.",
keywords={"Aquatic","Desolace"},
pet=483,
},[[
step
clicknpc Horny Toad##62185
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Horny Toad" Battle Pet |learnpet Horny Toad##483 |goto Desolace/0 71.40,35.05
step
_Congratulations!_
You Collected the "Horny Toad" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Huge Toad",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis Battle pet can be caught in the wild along the eastern river in Hillsbrad Foothills.",
keywords={"Aquatic","Hillsbrad", "Foothills"},
pet=648,
},[[
step
clicknpc Huge Toad##61368
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Huge Toad" Battle Pet |learnpet Huge Toad##648 |goto Hillsbrad Foothills/0 59.28,58.96
step
_Congratulations!_
You Collected the "Huge Toad" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Jubling",{
patch='43000',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet is rewarded to you after completing the Spawn of Morja quest at the Darkmoon Faire.",
keywords={"Aquatic","Darkmoon","Faire"},
pet=106,
},[[
step
collect 2 Dark Iron Ale Mug##11325 |n
|tip These can be purchased from either the Auction House or Plugger Spazzring who is located at the Grim Guzzler in the Blackrock Depths dungeon.
|tip You need at least 2 Dark Iron Ale Mugs for the quest, but it's best to bring extras just in case.
click Portal to the Darkmoon Faire |goto Mulgore/0 36.85,35.84
|tip The Darkmoon Faire is only available during the first week of every month.
Teleport to the Darkmoon Faire |goto Darkmoon Island/0 51.29,23.86 |c
step
use the Dark Iron Ale Mug##11325
|tip Right click on one Ale and use it in front of Morja to Lure Jubjub back to her.
|tip Jubjub can be found around the east forest in the Darkmoon Faire.
|tip There is a chance Jubjub will spawn far away so you will need to use multiple Ales to lure him back to Morja.
|tip You have to save 1 Dark Iron Ale Mug to give to Morja in order to complete her quest.
talk Morja##14871
accept Spawn of Jubjub##7946 |goto 55.93,70.75
turnin Spawn of Jubjub##7946 |goto 55.93,70.75
step
collect Unhatched Jubling Egg##19462 |n
use the Unhatched Jubling Egg##19462
|tip After one week Jubling will hatch from the egg.
|tip It is in your inventory.
collect A Jubling's Tiny Home##19450 |n
use A Jubling's Tiny Home##19450
|tip It is in your inventory.
Learn the "Jubling" Battle Pet |learnpet Jubling##106
step
_Congratulations!_
You Collected the "Jubling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Mac Frog",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis Battle pet can be caught in the wild around Vir'naal Oasis in Uldum.",
keywords={"Aquatic","Uldum"},
pet=542,
},[[
step
clicknpc Mac Frog##62892
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Mac Frog" Battle Pet |learnpet Mac Frog##542 |goto Uldum New/0 59.02,41.61
step
_Congratulations!_
You Collected the "Mac Frog" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Mojo",{
patch='23000',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild inside the heroic dungeon Zul'Aman.",
keywords={"Aquatic","Zul'Aman"},
pet=165,
},[[
step
Enter the Heroic dungeon Zul'Aman |goto Zul'Aman/0 0.00,0.00 |c |or
|tip You can use the Zul'Aman guide if you need help getting through the dungeon.
'|learnpet Mojo##165 |or
step
Kill Amani enemies around this area
collect Amani Hex Stick##33865 |n
|tip You can also purchase these at the Auction House.
use the Amani Hex Stick##33865
|tip Use it on the Forest Frogs inside of Zul'Aman.
|tip The Forest Frogs are located near the water at the beginning of the dungeon.
|tip It may take several attempts to obtain this pet.
|tip This pet is cageable meaning you can purchase it at the Auction House.
Learn the "Mojo" Battle Pet |learnpet Mojo##33865
step
_Congratulations!_
You Collected the "Mojo" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Mr. Chilly",{
patch='31200',
source='Promotion',
author="support@zygorguides.com",
description="\nThis battle pet is available to all players who merge their World of Warcraft account with a Battle.net account.",
keywords={"Aquatic","Merge","Account"},
pet=192,
},[[
step
collect Unhatched Mr. Chilly##41133 |n
use the Unhatched Mr. Chilly##41133
|tip Check your mailbox when you log in after your merge your World of Warcraft account to your Blizzard.net account.
Learn the "Mr. Chilly" Battle Pet |learnpet Mr. Chilly##192
step
_Congratulations!_
You Collected the "Mr. Chilly" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Muckbreath",{
patch='23000',
source='Profession',
author="support@zygorguides.com",
description="\nThis battle pet is a reward for completing the quest Crocolisks in the City or can be purchased from the Auction House.",
keywords={"Aquatic","Crocolisks","In","The","City"},
pet=164,
},[[
step
talk Old Man Barlo##25580
accept Crocolisks in the City##11665 |goto Terokkar Forest/0 38.72,12.80
|tip There are 5 daily quests in total, it may take several attempts to get this quest.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
collect Baby Crocolisk##34864 |q 11665/1 |goto Orgrimmar/1 65.98,45.73
|tip Use your fishing skill to catch a Baby Crocolisk.
step
talk Old Man Barlo##25580
turnin Crocolisks in the City##11665 |goto Terokkar Forest/0 38.72,12.80
step
collect Bag of Fishing Treasures##35348 |n
use the Bag of Fishing Treasures##35348
|tip It is in your inventory.
collect Muckbreath's Bucket##33818 |n
use Muckbreath's Bucket##33818
|tip It is in your inventory.
|tip This has about a 60% chance to drop, it make take you several attempts to get it.
Learn the "Muckbreath" Battle Pet |learnpet Muckbreath##164
step
_Congratulations!_
You Collected the "Muckbreath" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Purple Puffer",{
patch='43000',
source='TradingCardGame',
author="support@zygorguides.com",
description="\nThis battle pet is obtained through the World of Warcraft Trading Card Game.",
keywords={"Aquatic","Trading","Card","Game"},
pet=328,
},[[
step
talk Landro Longshot##17249
Tell him _"What promotions do you have?"_
Tell him _"Throne of Tides"_
Tell him _"Purple Puffer Pet"_
collect Purple Puffer##71624 |n
|tip This pet was a reward in the WoW trading card game.
|tip The trading card game is no longer available but you can purchase a code from a third party site.
|tip This pet is cageable, meaning it can be purchased from the Auction House.
use the Purple Puffer##71624
Learn the "Purple Puffer" Battle Pet |learnpet Purple Puffer##328 |goto The Cape of Stranglethorn/0 42.63,71.50
step
_Congratulations!_
You Collected the "Purple Puffer" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Shore Crab",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around The Shattered Strand in Azshara.",
keywords={"Aquatic","Azshara"},
pet=388,
},[[
step
clicknpc Shore Crab##61158
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Shore Crab" Battle Pet |learnpet Shore Crab##388 |goto Azshara/0 44.86,62.77
step
_Congratulations!_
You Collected the "Shore Crab" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Snarly",{
patch='23000',
source='Profession',
author="support@zygorguides.com",
description="\nThis battle pet is a reward for completing the quest Crocolisks in the City or can be purchased from the Auction House.",
keywords={"Aquatic","Crocolisks","In","The","City"},
pet=173,
},[[
step
talk Old Man Barlo##25580
accept Crocolisks in the City##11665 |goto Terokkar Forest/0 38.72,12.80
|tip There are 5 daily quests in total, it may take several attempts to get this quest.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
collect Baby Crocolisk##34864 |q 11665/1 |goto Orgrimmar/1 65.98,45.73
|tip Use your fishing skill to catch a Baby Crocolisk.
step
talk Old Man Barlo##25580
turnin Crocolisks in the City##11665 |goto Terokkar Forest/0 38.72,12.80
step
collect Bag of Fishing Treasures##35348 |n
use the Bag of Fishing Treasures##35348
|tip It is in your inventory.
collect Snarly's Bucket##35349 |n
use Snarly's Bucket##35349
|tip It is in your inventory.
|tip This has about a 60% chance to drop, it make take you several attempts to get it.
Learn the "Snarly" Battle Pet |learnpet Snarly##173
step
_Congratulations!_
You Collected the "Snarly" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Spotted Bell Frog",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Un'Goro Crater.",
keywords={"Aquatic","Un'Goro","Crater"},
pet=502,
},[[
step
clicknpc Spotted Bell Frog##62370
|tip They can be found around the lakes and rivers in Un'Goro Crater.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Spotted Bell Frog" Battle Pet |learnpet Spotted Bell Frog##502 |goto Un'Goro Crater/0 40.46,27.22
step
_Congratulations!_
You Collected the "Spotted Bell Frog" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Strand Crab",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around The Cape of Stranglethorn.",
keywords={"Aquatic","Cape","Of","Stranglethorn"},
pet=401,
},[[
step
clicknpc Strand Crab##61312
|tip They can be found on the beaches around The Cape of Stranglethorn.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Strand Crab" Battle Pet |learnpet Strand Crab##401 |goto The Cape of Stranglethorn/0 33.95,37.88
step
_Congratulations!_
You Collected the "Strand Crab" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Toad",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Southfury Watershed in Durotar.",
keywords={"Aquatic","Durotar"},
pet=420,
},[[
step
clicknpc Toad##61369
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Toad" Battle Pet |learnpet Toad##420 |goto Durotar/0 38.54,42.37
step
_Congratulations!_
You Collected the "Toad" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Toothy",{
patch='23000',
source='Profession',
author="support@zygorguides.com",
description="\nThis battle pet is a reward for completing the quest Crocolisks in the City or can be purchased from the Auction House.",
keywords={"Aquatic","Crocolisks","In","The","City"},
pet=163,
},[[
step
talk Old Man Barlo##25580
accept Crocolisks in the City##11665 |goto Terokkar Forest/0 38.72,12.80
|tip There are 5 daily quests in total, it may take several attempts to get this quest.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
collect Baby Crocolisk##34864 |q 11665/1 |goto Orgrimmar/1 65.98,45.73
|tip Use your fishing skill to catch a Baby Crocolisk.
step
talk Old Man Barlo##25580
turnin Crocolisks in the City##11665 |goto Terokkar Forest/0 38.72,12.80
step
collect Bag of Fishing Treasures##35348 |n
use the Bag of Fishing Treasures##35348
|tip It is in your inventory.
collect Toothy's Bucket##33816 |n
use Toothy's Bucket##33816
|tip It is in your inventory.
|tip This has about a 60% chance to drop, it make take you several attempts to get it.
Learn the "Toothy" Battle Pet |learnpet Toothy##163
step
_Congratulations!_
You Collected the "Toothy" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Tree Frog",{
patch='111100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from Flik at the Darkmoon Faire.",
keywords={"Aquatic","Darkmoon","Faire"},
pet=65,
},[[
step
click Portal to the Darkmoon Faire |goto Mulgore/0 36.85,35.84
|tip The Darkmoon Faire is only available during the first week of every month.
Teleport to the Darkmoon Faire |goto Darkmoon Island/0 51.29,23.86 |c
step
talk Flik##14860
|tip He is running around this area.
buy Tree Frog Box##11026 |n
collect Tree Frog Box##11026 |n
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Tree Frog Box##11026
|tip It is in your inventory.
Learn the "Tree Frog" Battle Pet |learnpet Tree Frog##65 |goto 59.12,68.26
step
_Congratulations!_
You Collected the "Tree Frog" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Tundra Penguin",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Coldwind Pass in Borean Tundra.",
keywords={"Aquatic","Borean","Tundra"},
pet=536,
},[[
step
clicknpc Tundra Penguin##62835
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Tundra Penguin" Battle Pet |learnpet Tudra Penguin##62835 |goto Borean Tundra/0 92.96,43.46
step
_Congratulations!_
You Collected the "Tundra Penguin" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Turquoise Turtle",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around The Shattered Strand in Azshara.",
keywords={"Aquatic","Azshara"},
pet=473,
},[[
step
clicknpc Turquoise Turtle##62121
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Turquoise Turtle" Battle Pet |learnpet Turquoise Turtle##473 |goto Azshara/0 40.11,51.65
step
_Congratulations!_
You Collected the "Turquoise Turtle" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Wood Frog",{
patch='111100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from Flik at the Darkmoon Faire.",
keywords={"Aquatic","Darkmoon","Faire"},
pet=64,
},[[
step
click Portal to the Darkmoon Faire |goto Mulgore/0 36.85,35.84
|tip The Darkmoon Faire is only available during the first week of every month.
Teleport to the Darkmoon Faire |goto Darkmoon Island/0 51.29,23.86 |c
step
talk Flik##14860
|tip He is running around this area.
buy Wood Frog Box##11027 |n
collect Wood Frog Box##11027 |n
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Wood Frog Box##11027
|tip It is in your inventory.
Learn the "Wood Frog" Battle Pet |learnpet Wood Frog##64 |goto 59.12,68.26
step
_Congratulations!_
You Collected the "Wood Frog" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Adder",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Durotar.",
keywords={"Beast","Durotar"},
pet=635,
},[[
step
clicknpc Adder##61325
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Adder" Battle Pet |learnpet Adder##635 |goto Durotar/0 39.36,21.77
step
_Congratulations!_
You Collected the "Adder" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Albino Snake",{
patch='112100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a vendor in Dalaran.",
keywords={"Beast","Dalaran"},
pet=74,
},[[
step
talk Breanni##96479
|tip She is inside the building.
buy Albino Snake##44822 |n
collect Albino Snake##44822 |n
|tip This pet is cageable, meaning it can be purchased from the Auction House.
use the Albino Snake##44822
|tip It is in your inventory.
Learn the "Albino Snake" Battle Pet |learnpet Albino Snake##74 |goto Dalaran L/10 58.47,39.12
step
_Congratulations!_
You Collected the "Albino Snake" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Alterac Brew-Pup",{
patch='54100',
source='In-GameShop',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from the Blizzard store.",
keywords={"Beast","Blizzard","Store"},
pet=1363,
},[[
step
collect Alterac Brandy##106240 |n
|tip Check your mailbox after you purchase this battle pet from the Blizzard website.
use the Alterac Brandy##106240
Learn the "Alterac Brew-Pup" Battle Pet |learnpet Alterac Brew-Pup##1363
step
_Congratulations!_
You Collected the "Alterac Brew-Pup" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Arctic Fox Kit",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Snowdrift Plains in The Storm Peaks.",
keywords={"Beast","Storm","Peaks"},
pet=558,
},[[
step
clicknpc Arctic Fox Kit##62864
|tip This pet will only spawn when it is snowing in The Storm Peaks.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Arctic Fox Kit" Battle Pet |learnpet Arctic Fox Kit##558 |goto The Storm Peaks/0 26.78,40.95
step
_Congratulations!_
You Collected the "Arctic Fox Kit" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Ash Lizard",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Fire Plume Ridge in Un'Goro Crater.",
keywords={"Beast","Un'Goro","Crater"},
pet=632,
},[[
step
clicknpc Ash Lizard##62364
|tip They can be found around the Volcano in this area.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Ash Lizard" Battle Pet |learnpet Ash Lizard##632 |goto Un'Goro Crater/0 48.07,42.93
step
_Congratulations!_
You Collected the "Ash Lizard" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Ash Spiderling",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild all around Searing Gorge.",
keywords={"Beast","Searing","Gorge"},
pet=427,
},[[
step
clicknpc Ash Spiderling##61420
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Ash Spiderling" Battle Pet |learnpet Ash Spiderling##427 |goto Searing Gorge/0 55.95,64.95
step
_Congratulations!_
You Collected the "Ash Spiderling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Ash Viper",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild all around Burning Steppes.",
keywords={"Beast","Burning","Steppes"},
pet=425,
},[[
step
clicknpc Ash Viper##61385
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Ash Viper" Battle Pet |learnpet Ash Viper##425 |goto Burning Steppes/0 44.35,32.47
step
_Congratulations!_
You Collected the "Ash Viper" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Baby Ape",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Jaguero Isle in The Cape of Stranglethorn.",
keywords={"Beast","The","Cape","Of","Stranglethorn"},
pet=411,
},[[
step
clicknpc Baby Ape##61324
|tip This pet only spawns when it is raining on Jaguero Isle.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Baby Ape" Battle Pet |learnpet Baby Ape##411 |goto The Cape of Stranglethorn/0 63.57,78.22
step
_Congratulations!_
You Collected the "Baby Ape" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Baby Blizzard Bear",{
patch='30300',
source='Achievement',
author="support@zygorguides.com",
description="\nThis battle pet can be obtained by logging on during the World of Warcraft 4th year anniversary event.",
keywords={"Beast","World","Of","Warcraft","Anniversary","Event"},
pet=202,
},[[
step
collect Baby Blizzard Bear##44819 |n
|tip This pet is no longer available.
use the Baby Blizzard Bear##44819
Learn the "Baby Blizzard Bear" Battle Pet |learnpet Baby Blizzard Bear##202
step
_Congratulations!_
You Collected the "Baby Blizzard Bear" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Bananas",{
patch='20100',
source='TradingCardGame',
author="support@zygorguides.com",
description="\nThis battle pet can be obtained through the World of Warcraft Trading Card Game.",
keywords={"Beast","Trading","Card","Game"},
pet=156,
},[[
step
talk Landro Longshot##17249
Tell him _"What promotions do you have?"_
Tell him _"Through the Dark Portal"_
Tell him _" Baby Gorilla Pet"_
collect Banana Charm##32588 |n
|tip This pet was a reward in the WoW trading card game.
|tip The trading card game is no longer available but you can purchase a code from a third party site.
|tip This pet is cageable, meaning it can be purchased from the Auction House.
use the Banana Charm##32588
Learn the "Bananas" Battle Pet |learnpet Bananas##156 |goto The Cape of Stranglethorn/0 42.63,71.49
step
_Congratulations!_
You Collected the "Bananas" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Black Tabby Cat",{
patch='111100',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet can be obtained from a random zone drop around Gavin's Naze in Hillsbrad Foothills.",
keywords={"Beast","Hillsbrad","Foothills"},
pet=42,
},[[
step
Kill enemies around this area
collect Cat Carrier (Black Tabby)##8491 |n
|tip This is a random drop from killing mobs in the Hillsbrad Foothills, it may take some time to get this.
use the Cat Carrier (Black Tabby)##8491
Learn the "Black Tabby Cat" Battle Pet |learnpet Black Tabby Cat##42 |goto Hillsbrad Foothills/0 40.96,48.49
step
_Congratulations!_
You Collected the "Black Tabby Cat" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Calico Cat",{
patch='33000',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a vendor in Dalaran.",
keywords={"Beast","Dalaran"},
pet=224,
},[[
step
talk Breanni##96479
|tip She is inside the building.
buy Cat Carrier (Calico Cat)##46398 |n
collect Cat Carrier (Calico Cat)##46398 |n
|tip this pet is cageable, meaning you can purchase it from the Auction House.
use the Cat Carrier (Calico Cat)##46398
|tip It is in your inventory.
Learn the "Calico Cat" Battle Pet |learnpet Calico Cat##224 |goto Dalaran L/10 58.47,39.12
step
_Congratulations!_
You Collected the "Calico Cat" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Cat",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Elwynn Forest.",
keywords={"Beast","Elwynn","Forest"},
pet=459,
},[[
step
clicknpc Cat##62019
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Cat" Battle Pet |learnpet Cat##459 |goto Elwynn Forest/0 44.46,52.50
step
_Congratulations!_
You Collected the "Cat" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Cheetah Cub",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Northern Barrens.",
keywords={"Beast","Northern","Barrens"},
pet=474,
},[[
step
clicknpc Cheetah Cub##62129
|tip You can find them underneath trees with other cheetahs all around the Northern Barrens.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Cheetah Cub" Battle Pet |learnpet Cheetah Cub##474 |goto Northern Barrens/0 49.47,70.19
step
_Congratulations!_
You Collected the "Cheetah Cub" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Clefthoof Runt",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Nagrand.",
keywords={"Beast","Nagrand"},
pet=518,
},[[
step
clicknpc Clefthoof Runt##62620
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Clefthoof Runt" Battle Pet |learnpet Clefthoof Runt##518 |goto Nagrand/0 70.07,70.54
step
_Congratulations!_
You Collected the "Clefthoof Runt" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Cobra Hatchling",{
patch='30200',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a vendor in Sholazar Basin after you reach revered reputation with The Oracles.",
keywords={"Beast","The","Oracles"},
pet=197,
},[[
step
Reach Revered Status with The Oracles |complete rep('The Oracles') >= Revered
|tip Use The Oracles Reputation Guide to help you raise your reputation level.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
talk Geen##31910
buy Mysterious Egg##39878 |n
use the Cracked Egg##39883
|tip After 3 days the "Mysterious Egg" will turn in to a "Cracked Egg".
collect Cobra Hatchling##39898 |n
|tip There are 6 different rewards you can receive from the Cracked Egg, this may take you several attempts.
use the Cobra Hatchling##39898
Learn the "Cobra Hatchling" Battle Pet |learnpet Cobra Hatchling##197 |goto Sholazar Basin/0 54.57,56.13
step
_Congratulations!_
You Collected the "Cobra Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Coral Snake",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Stonetalon Mountains.",
keywords={"Beast","Stonetalon","Mountains"},
pet=488,
},[[
step
clicknpc Coral Snake##62190
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Coral Snake" Battle Pet |learnpet Coral Snake##488 |goto Stonetalon Mountains/0 64.65,51.50
step
_Congratulations!_
You Collected the "Coral Snake" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Crystal Spider",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Lake Kel'Theril in Winterspring.",
keywords={"Beast","Winterspring"},
pet=634,
},[[
step
clicknpc Crystal Spider##62435
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Crystal Spider" Battle Pet |learnpet Crystal Spider##634 |goto Winterspring/0 51.15,55.69
step
_Congratulations!_
You Collected the "Crystal Spider" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Darkmoon Cub",{
patch='43000',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a vendor at the Darkmoon Faire.",
keywords={"Beast","Darkmoon","Faire"},
pet=343,
},[[
step
click Portal to the Darkmoon Faire |goto Mulgore/0 36.85,35.84
|tip The Darkmoon Faire is only available during the first week of every month.
Teleport to the Darkmoon Faire |goto Darkmoon Island/0 51.29,23.86 |c
step
talk Lhara##14846
buy Darkmoon Cub##74981 |n
|tip It costs 90 Darkmoon Faire tickets.
|tip To earn tickets you have to complete daily quests.
|tip You can use our Darkmoon Faire guides to help you earn tickets.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
collect Darkmoon Cub##74981 |n
use the Darkmoon Cub##74981
|tip It is in your inventory.
Learn the "Darkmoon Cub" Battle Pet |learnpet Darkmoon Cub##343 |goto 48.25,69.52
step
_Congratulations!_
You Collected the "Darkmoon Cub" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Darkmoon Monkey",{
patch='43000',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a vendor at the Darkmoon Faire.",
keywords={"Beast","Darkmoon","Faire"},
pet=330,
},[[
step
click Portal to the Darkmoon Faire |goto Mulgore/0 36.85,35.84
|tip The Darkmoon Faire is only available during the first week of every month.
Teleport to the Darkmoon Faire |goto Darkmoon Island/0 51.29,23.86 |c
step
talk Lhara##14846
buy Darkmoon Monkey##73764 |n
|tip It costs 90 Darkmoon Faire tickets.
|tip To earn tickets you have to complete daily quests.
|tip You can use our Darkmoon Faire guides to help you earn tickets.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
collect Darkmoon Monkey##73764 |n
use the Darkmoon Monkey##73764
|tip It is in your inventory.
Learn the "Darkmoon Monkey" Battle Pet |learnpet Darkmoon Monkey##330 |goto 48.25,69.52
step
_Congratulations!_
You Collected the "Darkmoon Monkey" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Darkshore Cub",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Southern Darkshore.",
keywords={"Beast","Darkshore"},
pet=508,
},[[
step
talk Zidormi##141489
Tell her _"Can you show me what Darkshore was like before the battle?"_
Travel to the past |complete ZGV.InPhase("Old Darnassus") |goto Darkshore/0 48.86,24.46
step
clicknpc Darkshore Cub##62250
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Darkshore Cub" Battle Pet |learnpet Darkshore Cub##508 |goto 44.19,78.71
step
_Congratulations!_
You Collected the "Darkshore Cub" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Darting Hatchling",{
patch='32000',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet can be obtained by looting Dart's Nest in Dustwallow Marsh.",
keywords={"Beast","Dustwallow","Marsh"},
pet=232,
},[[
step
click Dart's Nest##202080
|tip It looks like a nest containing purple eggs that spawns near the trees around this area.
|tip Dart's Nest is a rare spawn, it may take some time to find it.
collect Darting Hatchling##48112 |n
use the Darting Hatchling##48112
|tip Inside your inventory.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
Learn the "Darting Hatchling" Battle Pet |learnpet Darting Hatchling##232 |goto Dustwallow Marsh/0 46.52,17.17
It can also spawn around [47.31,20.07]
It can also spawn around [48.84,17.30]
It can also spawn around [47.67,14.22]
step
_Congratulations!_
You Collected the "Darting Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Desert Spider",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild all around Northeastern Desolace.",
keywords={"Beast","Desolace"},
pet=484,
},[[
step
clicknpc Desert Spider##62186
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Desert Spider" Battle Pet |learnpet Desert Spider##484 |goto Desolace/0 75.29,33.84
step
_Congratulations!_
You Collected the "Desert Spider" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Deviate Hatchling",{
patch='32000',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet is a rare loot drop from enemies inside the Wailing Caverns dungeon.",
keywords={"Beast","The","Wailing","Caverns"},
pet=233,
},[[
step
Enter The Wailing Caverns dungeon|goto Wailing Caverns/1 0.00,0.00 |c |or
|tip You can use The Wailing Caverns guide if you need help getting through the dungeon.
'|learnpet Deviate Hatchling##233 |or
step
kill Deviate Ravager##3636+
kill Deviate Guardian##3637+
collect Deviate Hatchling##48114 |n
|tip This is a rare drop, you may need to clear the instance several times before you get this.
|tip To reset the instance right click on your character portrait outside of the dungeon and select "Reset all instances".
use the Deviate Hatchling##48114
|tip It is in your inventory.
|tip This pet is cageable, meaning it can be purchased from the Auction House.
Learn the "Deviate Hatchling" Battle Pet |learnpet Deviate Hatchling##233
step
_Congratulations!_
You Collected the "Deviate Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Devouring Maggot",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Urgarde Catacombs in the Howling Fjord.",
keywords={"Beast","Howling","Fjord"},
pet=523,
},[[
step
Cross the bridge |goto Howling Fjord/0 57.07,53.19 < 30 |only if walking
Enter the cave |goto 56.60,48.99 < 30 |walk
Follow the path down |goto 56.28,51.76 < 30 |only if walking
Run down the stairs |goto 57.00,56.35 < 30 |only if walking
Continue down the stairs |goto 56.50,57.04 < 30 |only if walking
clicknpc Devouring Maggot##62640
|tip They are in the underground catacombs around this area.
|tip A lot of Decomposing Ghouls will surround you when you enter the area, be careful not to kill the maggots on the ground with aoe.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Devouring Maggot" Battle Pet |learnpet Devouring Maggot##523 |goto 57.39,56.22
step
_Congratulations!_
You Collected the "Devouring Maggot" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Diemetradon Hatchling",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Golakka Hot Springs in Un'Goro Crater.",
keywords={"Beast","Un'Goro","Crater"},
pet=504,
},[[
step
clicknpc Diemetradon Hatchling##62375
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Diemetradon Hatchling" Battle Pet |learnpet Diemetradon Hatchling##504 |goto Un'Goro Crater/0 27.11,58.78
step
_Congratulations!_
You Collected the "Diemetradon Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Dusk Spiderling",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Duskwood.",
keywords={"Beast","Duskwood"},
pet=396,
},[[
step
clicknpc Dusk Spiderling##61253
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Dusk Spiderling" Battle Pet |learnpet Dusk Spiderling##396 |goto Duskwood/0 32.53,39.38
step
_Congratulations!_
You Collected the "Dusk Spiderling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Emerald Boa",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around the rivers and lakes in Un'Goro Crater.",
keywords={"Beast","Un'Goro","Crater"},
pet=631,
},[[
step
clicknpc Emerald Boa##62127
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Emerald Boa" Battle Pet |learnpet Emerald Boa##631 |goto Un'Goro Crater/0 64.41,73.51
step
_Congratulations!_
You Collected the "Emerald Boa" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Festering Maggot",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild all around the Eastern Plaguelands.",
keywords={"Beast","Eastern","Plaguelands"},
pet=457,
},[[
step
clicknpc Festering Maggot##61830
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Festering Maggot" Battle Pet |learnpet Festering Maggot##457 |goto Eastern Plaguelands/0 22.27,63.88
step
_Congratulations!_
You Collected the "Festering Maggot" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Fjord Worg Pup",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild all around The Isle of Spears in Howling Fjord.",
keywords={"Beast","Howling","Fjord"},
pet=529,
},[[
step
clicknpc Fjord Worg Pup##62669
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Fjord Worg Pup" Battle Pet |learnpet Fjord Worg Pup##529 |goto Howling Fjord/0 30.33,58.77
step
_Congratulations!_
You Collected the "Fjord Worg Pup" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Forest Spiderling",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Gloomshade Grove in Shadowmoon Valley.",
keywords={"Beast","Shadowmoon","Valley"},
pet=407,
},[[
step
clicknpc Forest Spiderling##61320
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Forest Spiderling" Battle Pet |learnpet Forest Spiderling##407 |goto Shadowmoon Valley D/0 38.71,26.29
step
_Congratulations!_
You Collected the "Forest Spiderling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Fox Kit",{
patch='40300',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet can be looted from Baradin Foxes around Tol Barad Peninsula.",
keywords={"Beast","Tol","Barad","Peninsula"},
pet=278,
},[[
step
click Portal to Tol Barad |goto Orgrimmar/1 47.40,39.31
Teleport to Tol Barad Peninsula	|c |goto Tol Barad Peninsula/0 55.78,80.07 < 30
step
kill Baradin Fox##47676+
|tip They can be found all around Tol Barad Peninsula.
collect Fox Kit##64403 |n
|tip This is a very rare drop, it may take some time to get it.
|tip You can also purchase this from your faction's vendor for 200 Tol Barad Commendation Badges.
|tip You must complete PVP dailies to earn the badges.
|tip You can use our Tol Barad Dailies guide to help you earn badges.
|tip This pet is cageable, meaning it can be purchased from the Auction House.
use the Fox Kit##64403
|tip It is in your inventory.
Learn the "Fox Kit" Battle Pet |learnpet Fox Kit##278 |goto 48.49,40.48
step
_Congratulations!_
You Collected the "Fox Kit" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Giraffe Calf",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around the Southern Barrens.",
keywords={"Beast","Southern","Barrens"},
pet=475,
},[[
step
clicknpc Giraffe Calf##62130
|tip This is a rare spawn, they run in herds with Barren Giraffes.
|tip The best time to find them is right after the servers reset.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Giraffe Calf" Battle Pet |learnpet Giraffe Calf##475 |goto Southern Barrens/0 47.06,63.93
step
_Congratulations!_
You Collected the "Giraffe Calf" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Gundrak Hatchling",{
patch='32000',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet can be looted from Gundrak Raptors around Gundrak in Zul'Drak.",
keywords={"Beast","Zul'Drak"},
pet=234,
},[[
step
kill Gundrak Raptor##29334+
collect Gundrak Hatchling##48116 |n
|tip This is a very rare drop, it may take you a while to get it.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Gundrak Hatchling##48116
|tip It is in your inventory.
Learn the "Gundrak Hatchling" Battle Pet |learnpet Gundrak Hatchling##234 |goto Zul'Drak/0 86.66,25.87
step
_Congratulations!_
You Collected the "Gundrak Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Horned Lizard",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Eastern Uldum.",
keywords={"Beast","Uldum"},
pet=851,
},[[
step
clicknpc Horned Lizard##62894
|tip They can be found around the deset area in eastern Uldum.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Horned Lizard" Battle Pet |learnpet Horned lizard##62894 |goto Uldum New/0 63.44,27.42
step
_Congratulations!_
You Collected the "Horned Lizard" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\King Snake",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around the Badlands.",
keywords={"Beast","Badlands"},
pet=438,
},[[
step
clicknpc King Snake##61443
|tip They can be found all around the Badlands.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "King Snake" Battle Pet |learnpet King Snake##438 |goto Badlands/0 28.39,31.37
step
_Congratulations!_
You Collected the "King Snake" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Larva",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around the Ghostlands.",
keywords={"Beast","Badlands"},
pet=461,
},[[
step
clicknpc Larva##62022
|tip They are a rare spawn that can be found all around the Ghostlands.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Larva" Battle Pet |learnpet Larva##461 |goto Ghostlands/0 28.01,14.67
step
_Congratulations!_
You Collected the "Larva" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Leaping Hatchling",{
patch='32000',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet can be obtained by looting Takk's Nest in the Northern Barrens.",
keywords={"Beast","Dustwallow","Marsh"},
pet=232,
},[[
step
click Takk's Nest##202081
|tip It looks like a nest containing purple eggs that spawns near the trees around this area.
|tip Trakk's Nest is a rare spawn, it may take some time to find it.
collect Leaping Hatchling##48118 |n
use the Leaping Hatchling##48118
|tip It is inside your inventory.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
Learn the "Leaping Hatchling" Battle Pet |learnpet Leaping Hatchling##235 |goto Northern Barrens/0 62.85,20.17
You can find more around [65.34,28.16]
step
_Congratulations!_
You Collected the "Leaping Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Leopard Scorpid",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Uldum.",
keywords={"Beast","Uldum"},
pet=545,
},[[
step
clicknpc Leopard Scorpid##62896
|tip They can be found in sandy desert areas all around Uldum.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Leopard Scorpid" Battle Pet |learnpet Leopard Scorpid##545 |goto Uldum New/0 53.54,21.77
step
_Congratulations!_
You Collected the "Leopard Scorpid" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Little Black Ram",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can only be tamed in the wild during the daytime in Loch Modan.",
keywords={"Beast","Loch","Modan"},
pet=437,
},[[
step
clicknpc Little Black Ram##61459
|tip They can only be found during the daytime.
|tip They can be found on the mountainside hilltops and ridges all around the border of Loch Modan.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Little Black Ram" Battle Pet |learnpet Little Black Ram##437 |goto Loch Modan/0 81.17,45.88
step
_Congratulations!_
You Collected the "Little Black Ram" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Lizard Hatchling",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild all around Northern Stranglethorn.",
keywords={"Beast","Northern","Stranglethorn"},
pet=408,
},[[
step
clicknpc Lizard Hatchling##61321
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Lizard Hatchling" Battle Pet |learnpet Lizard Hatchling##408 |goto Northern Stranglethorn/0 46.44,48.77
step
_Congratulations!_
You Collected the "Lizard Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Maggot",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Felfire Hill in Ashenvale.",
keywords={"Beast","Ashenvale"},
pet=450,
},[[
step
clicknpc Maggot##61753
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Maggot" Battle Pet |learnpet Maggot##450 |goto Ashenvale/0 82.44,67.79
step
_Congratulations!_
You Collected the "Maggot" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Moccasin",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around the rivers in the Swamp of Sorrows.",
keywords={"Beast","Swamp","Of","Sorrows"},
pet=422,
},[[
step
clicknpc Moccasin##61372
|tip You can find them swimming in the rivers all around the Swamp of Sorrows.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Moccasin" Battle Pet |learnpet Moccasin##422 |goto Swamp of Sorrows/0 61.44,32.35
step
_Congratulations!_
You Collected the "Moccasin" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Molten Hatchling",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around pools of lava in the Searing Gorge.",
keywords={"Beast","Searing","Gorge"},
pet=428,
},[[
step
clicknpc Molten Hatchling##61425
|tip You can find them near pools of lava all around the Searing Gorge.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Molten Hatchling" Battle Pet |learnpet Molten Hatchling##428 |goto Searing Gorge/0 46.55,61.51
step
_Congratulations!_
You Collected the "Molten Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Mr. Grubbs",{
patch='40300',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet is a world drop in the Eastern Plaguelands or it can be purchased from the Auction House.",
keywords={"Beast","Eastern","Plaguelands"},
pet=286,
},[[
step
talk Fiona##45417
accept Gidwin Goldbraids##27367 |goto Eastern Plaguelands/0 9.02,66.52
accept Tarenar Sunstrike##27370 |goto 9.02,66.52
step
talk Gidwin Goldbraids##45428
turnin Gidwin Goldbraids##27367 |goto 4.14,36.01
accept Just Encased##27368 |goto 4.14,36.01
step
Kill Crypt enemies around this area
|tip They are inside the tunnel.
collect 8 Crypt Bile##60983 |q 27368/1 |goto 8.00,29.93
step
talk Gidwin Goldbraids##45428
turnin Just Encased##27368 |goto 4.14,36.01
step
talk Gidwin Goldbraids##45428
accept Greasing the Wheel##27369 |goto 4.14,36.00
step
click Banshee's Bells##205423+
|tip They look like little plants around this area.
collect 10 Banshee's Bells##60984 |q 27369/1 |goto 3.91,43.70
step
talk Fiona##45417
turnin Greasing the Wheel##27369 |goto 9.02,66.52
step
talk Tarenar Sunstrike##45429
turnin Tarenar Sunstrike##27370 |goto 18.37,74.86
accept What I Do Best##27371 |goto 18.37,74.86
step
kill 5 Death's Step Miscreation##45444 |q 27371/1 |goto 18.14,79.10
step
Click the Complete Quest Box
turnin What I Do Best##27371
accept A Gift For Fiona##27372
step
kill Plaguehound Runt##8596+
collect 10 Plaguehound Blood##60986 |q 27372/1 |goto 16.81,65.98
step
talk Fiona##45417
turnin A Gift For Fiona##27372 |goto 9.02,66.52
step
talk Fiona's Caravan##45400
turnin Fiona's Lucky Charm##27555 |goto 8.78,66.62
step
Kill enemies around this area
collect Hidden Stash##61387 |n
|tip This has a chance to drop from any mob in the Eastern Plaguelands when you have Fiona's Lucky Charm buff on.
use the Hidden Stash##61387
|tip It is in your inventory.
collect Mr. Grubbs##66076 |n
|tip this has about a 1 in 55 chance to drop, it may take some time to get this.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use Mr. Grubbs##66076
|tip It is in your inventory.
Learn the "Mr. Grubbs" Battle Pet |learnpet Mr. Grubbs##286
step
_Congratulations!_
You Collected the "Mr. Grubbs" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Nightsaber Cub",{
patch='41000',
source='TradingCardGame',
author="support@zygorguides.com",
description="\nThis battle pet is obtained through the World of Warcraft Trading Card Game.",
keywords={"Beast","Trading","Card","Game"},
pet=303,
},[[
step
talk Landro Longshot##17249
Tell him _"What promotions do you have?"_
Tell him _"Twilight of the Dragons"_
Tell him _"Nightsaber Cub"_
collect Nightsaber Cub##68841 |n
|tip This pet was a reward in the WoW trading card game.
|tip The trading card game is no longer available but you can purchase a code from a third party site.
|tip This pet is cageable, meaning it can be purchased from the Auction House.
use the Nightsaber Cub##68841
Learn the "Nightsaber Cub" Battle Pet |learnpet Nightsaber Cub##303 |goto The Cape of Stranglethorn/0 42.63,71.50
step
_Congratulations!_
You Collected the "Nightsaber Cub" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Obsidian Hatchling",{
patch='32000',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a vendor in Dalaran.",
keywords={"Beast","Dalaran"},
pet=236,
},[[
step
talk Breanni##96479
|tip She is inside the building.
buy Obsidian Hatchling##48120 |n
collect Obsidian Hatchling##48120 |n
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Obsidian Hatchling##48120
|tip It is inside your inventory.
Learn the "Obsidian Hatchling" Battle Pet |learnpet Obsidian Hatchling##236 |goto Dalaran L/10 58.47,39.12
step
_Congratulations!_
You Collected the "Obsidian Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Panda Cub",{
patch='111100',
source='Promotion',
author="support@zygorguides.com",
description="\nThis battle pet can be obtained by purchasing the World of Warcraft Collector's Edition.",
keywords={"Beast","World","Of","Warcraft","Collector's","Edition"},
pet=92,
},[[
step
collect Panda Collar##13583 |n
|tip this item will be in your mailbox after you register your collector's edition.
|tip Collector's editions are no longer sold in stores, you will have to use a third party site in order to purchase one.
use the Panda Collar##13583
Learn the "Panda Cub" Battle Pet |learnpet Panda Cub##92
step
_Congratulations!_
You Collected the "Panda Cub" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Poley",{
patch='24000',
source='Promotion',
author="support@zygorguides.com",
description="\nThis battle pet was given out to players who participated in the iCoke promotional event in China.",
keywords={"Beast","Special","Event"},
pet=124,
},[[
step
collect Polar Bear Collar##22781 |n
|tip This was a code given out to people who participated in an iCoke promotion back in 2006.
|tip This was limited to only servers in China and is no longer available.
use the Polar Bear Collar##22781
Learn the "Poley" Battle Pet |learnpet Poley##124
step
_Congratulations!_
You Collected the "Poley" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Rat Snake",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild all around Duskwood.",
keywords={"Beast","Duskwood"},
pet=399,
},[[
step
clicknpc Rat Snake##61258
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Rat Snake" Battle Pet |learnpet Rat Snake##399 |goto Duskwood/0 53.17,60.31
step
_Congratulations!_
You Collected the "Rat Snake" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Rattlesnake",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild all around the Northern parts of Twilight Highlands.",
keywords={"Beast","Twilight","Highlands"},
pet=431,
},[[
step
clicknpc Rattlesnake##61439
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Rattlesnake" Battle Pet |learnpet Rattlesnake##431 |goto Twilight Highlands/0 51.27,39.36
step
_Congratulations!_
You Collected the "Rattlesnake" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Ravager Hatchling",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild all around Bloodmyst Isle.",
keywords={"Beast","Bloodmyst","Isle"},
pet=465,
},[[
step
clicknpc Ravager Hatchling##62051
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Ravager Hatchling" Battle Pet |learnpet Ravager Hatchling##465 |goto Bloodmyst Isle/0 47.20,46.99
step
_Congratulations!_
You Collected the "Ravager Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Ravasaur Hatchling",{
patch='32000',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet can be obtained by looting Ravasaur Matriarch's Nest around The Marshlands in Un'Goro Crater.",
keywords={"Beast","Un'Goro","Crater"},
pet=237,
},[[
step
click Ravasaur Matriarch's Nest##202082
|tip It looks like a nest containing purple eggs that spawns near the trees around this area.
|tip Ravasaur Matriarch's Nest is a rare spawn, it may take a some time to find it.
collect Ravasaur Hatchling##48122 |n
use the Ravasaur Hatchling##48122
|tip It is inside your inventory.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
Learn the "Ravasaur Hatchling" Battle Pet |learnpet Ravasaur Hatchling##237 |goto Un'Goro Crater/0 62.45,69.18
It can also spawn around [61.76,76.24]
It can also spawn around [67.22,69.70]
It can also spawn around [68.99,62.07]
step
_Congratulations!_
You Collected the "Ravasaur Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Razormaw Hatchling",{
patch='32000',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet can be obtained by looting Razormaw Matriarch's Nest around Raptor Ridge in the Wetlands.",
keywords={"Beast","Wetlands"},
pet=238,
},[[
step
Enter the cave |goto Wetlands/0 69.22,35.08 < 30 |walk
Follow the path |goto 68.74,32.95 < 10 |only if walking
Continue following the path |goto 67.42,28.43< 10 |only if walking
Run up the ramp	|goto 68.96,28.59 < 5 |only if walking
click Razormaw Matriarch's Nest##202083
|tip It looks like a nest containing purple eggs around this area inside the cave.
|tip Razormaw Matriarch's Nest is a rare spawn, it may take a some time to find it.
collect Razormaw Hatchling##48124 |n
use the Razormaw Hatchling##48124
|tip It is inside your inventory.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
Learn the "Razormaw Hatchling" Battle Pet |learnpet Razormaw Hatchling##238 |goto 70.08,29.12
step
_Congratulations!_
You Collected the "Razormaw Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Razzashi Hatchling",{
patch='32000',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet is world zone drop for killing enemies in the Northern Stranglethorn and The Cape of Stranglethorn.",
keywords={"Beast","Northern","Stranglethorn","The","Cape","Of"},
pet=239,
},[[
step
Kill enemies around this area
collect Razzashi Hatchling##48126 |n
|tip This is a rare drop, it may take some time to get it.
|tip You can get this by killing any mob in the Northern Stranglethorn and The Cape of Stranglethorn.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Razzashi Hatchling##48126
|tip It is in your inventory.
Learn the "Razzashi Hatchling" Battle Pet |learnpet Razzashi Hatchling##239 |goto Northern Stranglethorn/0 57.64,50.07
step
_Congratulations!_
You Collected the "Razzashi Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Rock Viper",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild all around Desolace.",
keywords={"Beast","Desolace"},
pet=482,
},[[
step
clicknpc Rock Viper##62184
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Rock Viper" Battle Pet |learnpet Rock Viper##482 |goto Desolace/0 61.38,22.74
step
_Congratulations!_
You Collected the "Rock Viper" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Sand Kitten",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around the desert areas in Tanaris.",
keywords={"Beast","Tanaris"},
pet=491,
},[[
step
clicknpc Sand Kitten##62257
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Sand Kitten" Battle Pet |learnpet Sand Kitten##491 |goto Tanaris/0 56.75,46.12
step
_Congratulations!_
You Collected the "Sand Kitten" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Scalded Basilisk Hatchling",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Skald in Blade's Edge Mountains.",
keywords={"Beast","Blade's","Edge","Mountains"},
pet=528,
},[[
step
clicknpc Scalded Basilisk Hatchling##62628
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Scalded Basilisk Hatchling" Battle Pet |learnpet Scalded Basilisk Hatchling##528 |goto Blade's Edge Mountains/0 71.97,24.97
step
_Congratulations!_
You Collected the "Scalded Basilisk Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Scorpid",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild all around the Hellfire Peninsula.",
keywords={"Beast","Hellfire","Peninsula"},
pet=414,
},[[
step
clicknpc Scorpid##61326
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Scorpid" Battle Pet |learnpet Scorpid##414 |goto Hellfire Peninsula/0 60.16,65.38
step
_Congratulations!_
You Collected the "Scorpid" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Scorpling",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around the hills near Dark Portal in the Blasted Lands.",
keywords={"Beast","Blasted","Lands"},
pet=416,
},[[
step
talk Zidormi##141489
Tell her _"Can you show me the Blasted Lands before the invasion?"_
Travel to the past |complete ZGV.InPhase("Old Blasted Lands") |goto Blasted Lands/0 48.16,7.28
step
clicknpc Scorpling##61329
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Scorpling" Battle Pet |learnpet Scorpling##416 |goto 60.40,58.59
step
_Congratulations!_
You Collected the "Scorpling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Siamese Cat",{
patch='111100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a vendor in Netherstorm.",
keywords={"Beast","Netherstorm"},
pet=44,
},[[
step
talk Dealer Rashaad##20980
buy Cat Carrier (Siamese)##8490 |n
collect Cat Carrier (Siamese)##8490 |n
|tip This pet is cageable, meaning it can be purchased from the Auction House.
use the Cat Carrier (Siamese)##8490
|tip It is inside your inventory.
Learn the "Siamese Cat" Battle Pet |learnpet Siamese Cat##44 |goto Netherstorm/0 43.51,35.27
step
_Congratulations!_
You Collected the "Siamese Cat" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Sidewinder",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around sandy areas in Uldum.",
keywords={"Beast","Uldum"},
pet=511,
},[[
step
clicknpc Sidewinder##62523
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Sidewinder" Battle Pet |learnpet Sidewinder##511 |goto Uldum New/0 52.51,16.53
step
_Congratulations!_
You Collected the "Sidewinder" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Silithid Hatchling",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild during sandstorms around the Gaping chasm in Tanaris.",
keywords={"Beast","Tanaris"},
pet=494,
},[[
step
clicknpc Silithid Hatchling##62258
|tip They only spawn around the Gaping Chasm and the Noxious Lair during sandstorms.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Silithid Hatchling" Battle Pet |learnpet Silithid Hatchling##494 |goto Tanaris/0 53.70,64.22
step
_Congratulations!_
You Collected the "Silithid Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Skittering Cavern Crawler",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around the Southern caves of Blade's Edge Mountains.",
keywords={"Beast","Blade's","Edge","Mountains"},
pet=637,
},[[
step
Enter the cave |goto Blade's Edge Mountains/0 37.14,81.34 < 30 |walk
clicknpc Skittering Cavern Crawler##62638
|tip They can be found in the two southern caves around this area.
|tip You may have to kill the non pet crawlers in the area in order to get the pets to spawn.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Skittering Cavern Crawler" Battle Pet |learnpet Skittering Cavern Crawler##637 |goto 34.20,88.77
You can find more by entering this cave	[51.56,75.33]
step
_Congratulations!_
You Collected the "Skittering Cavern Crawler" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Smolderweb Hatchling",{
patch='111100',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet is a drop from Mother Smolderweb inside the Lower Blackrock Spire dungeon.",
keywords={"Beast","Blackrock","Spire"},
pet=90,
},[[
step
Enter the Lower Blackrock Spire Dungeon |goto Blackrock Spire/3 0.00,0.00 |c |or
|tip You can use the Blackrock Spire dungeon guide if you need help getting through the dungeon.
'|learnpet Smolderweb Hatchling##90 |or
step
kill Mother Smolderweb##10596
collect Smolderweb Egg##68673 |n
use the Smolderweb Egg##68673
|tip It is in your inventory.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
Learn the "Smolderweb Hatchling" Battle Pet |learnpet Smolderweb Hatchling##90 |goto Blackrock Spire/1 0.00,0.00
step
_Congratulations!_
You Collected the "Smolderweb Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Snake",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild all around Feralas.",
keywords={"Beast","Feralas"},
pet=387,
},[[
step
clicknpc Snake##61142
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Snake" Battle Pet |learnpet Snake##387 |goto Feralas/0 49.15,15.63
step
_Congratulations!_
You Collected the "Snake" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Snow Cub",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild all around Central and Eastern Dun Morogh.",
keywords={"Beast","Dun","Morogh"},
pet=440,
},[[
step
clicknpc Snow Cub##61689
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Snow Cub" Battle Pet |learnpet Snow Cub##440 |goto Dun Morogh/0 70.32,54.24
step
_Congratulations!_
You Collected the "Snow Cub" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Spider",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Webwinder Hollow in Stonetalon Mountains.",
keywords={"Beast","Stonetalon","Mountains"},
pet=412,
},[[
step
clicknpc Spider##61327
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Spider" Battle Pet |learnpet Spider##412 |goto Stonetalon Mountains/0 56.86,74.32
step
_Congratulations!_
You Collected the "Spider" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Spiky Lizard",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Northern Silithus.",
keywords={"Beast","Silithus"},
pet=433,
},[[
step
talk Zidormi##141489
Tell her _"Can you show me what Silithus was like before the Wound in the World?"_
Travel to the past |complete ZGV.InPhase("Old Silithus") |goto Silithus/0 78.93,21.98
step
clicknpc Spiky Lizard##61441
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Spiky Lizard" Battle Pet |learnpet Spiky Lizard##433 |goto 72.62,32.41
step
_Congratulations!_
You Collected the "Spiky Lizard" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Spiny Lizard",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Deadeye Shore in Durotar.",
keywords={"Beast","Durotar"},
pet=466,
},[[
step
clicknpc Spiny Lizard##62114
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Spiny Lizard" Battle Pet |learnpet Spiny Lizard##466 |goto Durotar/0 58.38,27.90
step
_Congratulations!_
You Collected the "Spiny Lizard" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Striped-Tailed Scorpid",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild all around the sandy areas in Tanaris.",
keywords={"Beast","Tanaris"},
pet=432,
},[[
step
clicknpc Striped-Tailed Scorpid##61440
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Striped-Tailed Scorpid" Battle Pet |learnpet Striped-Tailed Scorpid##61440 |goto Tanaris/0 66.03,57.04
step
_Congratulations!_
You Collected the "Striped-Tailed Scorpid" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Stunted Shardhorn",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around the Western parts of Sholazar Basin.",
keywords={"Beast","Sholazar","Basin"},
pet=532,
},[[
step
clicknpc Stunted Shardhorn##62816
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Stunted Shardhorn" Battle Pet |learnpet Stunted Shardhorn##532 |goto Sholazar Basin/0 39.52,44.58
step
_Congratulations!_
You Collected the "Stunted Shardhorn" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Tree Python",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild all around Northern Stranglethorn.",
keywords={"Beast","Northern","Stranglethorn"},
pet=405,
},[[
step
clicknpc Tree Python##61318
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Tree Python" Battle Pet |learnpet Tree Python##405 |goto Northern Stranglethorn/0 46.61,49.51
step
_Congratulations!_
You Collected the "Tree Python" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Twilight Iguana",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Twilight Withering and Twilight Bulwark in Thousand Needles.",
keywords={"Beast","Thousand","Needles"},
pet=505,
},[[
step
clicknpc Twilight Iguana##62255
You can find more around [33.00,57.27]
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Twilight Iguana" Battle Pet |learnpet Twilight Iguana##505 |goto Thousand Needles/0 59.09,61.38
step
_Congratulations!_
You Collected the "Twilight Iguana" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Twilight Spider",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around The Devouring Breach in Twilight Highlands.",
keywords={"Beast","Twilight","Highlands"},
pet=470,
},[[
step
clicknpc Twilight Spider##62117
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Twilight Spider" Battle Pet |learnpet Twilight Spider##470 |goto Twilight Highlands/0 57.56,52.37
step
_Congratulations!_
You Collected the "Twilight Spider" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Venomspitter Hatchling",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Webwinder Hollow in Stonetalon Mountains.",
keywords={"Beast","Stonetalon","Mountains"},
pet=506,
},[[
step
clicknpc Venomspitter Hatchling##62191
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Venomspitter Hatchling" Battle Pet |learnpet Venomspitter Hatchling##506 |goto Stonetalon Mountains/0 57.99,70.82
step
_Congratulations!_
You Collected the "Venomspitter Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Warpstalker Hatchling",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild all around Terokkar Forest.",
keywords={"Beast","Terokkar","Forest"},
pet=517,
},[[
step
clicknpc Warpstalker Hatchling##62583
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Warpstalker Hatchling" Battle Pet |learnpet Warpstalker Hatchling##517 |goto Terokkar Forest/0 45.12,29.75
step
_Congratulations!_
You Collected the "Warpstalker Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Water Snake",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Southfury Watershed in Durotar.",
keywords={"Beast","Durotar"},
pet=418,
},[[
step
clicknpc Water Snake##61367
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Water Snake" Battle Pet |learnpet Water Snake##418 |goto Durotar/0 36.40,40.88
step
_Congratulations!_
You Collected the "Water Snake" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Widow Spiderling",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild after nightfall in Duskwood.",
keywords={"Beast","Duskwood"},
pet=400,
},[[
step
clicknpc Widow Spiderling##61259
|tip They spawn around 9:30 pm server time.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Widow Spiderling" Battle Pet |learnpet Widow Spiderling##400 |goto Duskwood/0 32.29,47.77
You can find more around [60.96,22.60]
step
_Congratulations!_
You Collected the "Widow Spiderling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Wind Rider Cub",{
patch='33200',
source='In-GameShop',
author="support@zygorguides.com",
description="\nThis battle pet was previously purchasable on the Blizzard store but is currently no longer available.",
keywords={"Beast","Blizzard","Store"},
pet=246,
},[[
step
collect Wind Rider Cub##49663 |n
|tip This was a code given out when you purchased the Wind Rider Plushy from the Blizzard store.
|tip This is no longer available to purchase from the Blizzard store.
|tip After you reedeem the code on the Blizzard store your Wind Rider Cub will be in your inventory or mailbox.
use the Wind Rider Cub##49663
Learn the "Wind Rider Cub" Battle Pet |learnpet Wind Rider Cub##69536
step
_Congratulations!_
You Collected the "Wind Rider Cub" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Winterspring Cub",{
patch='41000',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a vendor in Winterspring.",
keywords={"Beast","Winterspring"},
pet=306,
},[[
step
talk Michelle De Rum##52830
|tip She is inside the building.
buy Winterspring Cub##69239 |n
collect Winterspring Cub##69239 |n
|tip This pet is cageable, meaning it can be purchased from the Auction House.
use the Winterspring Cub##69239
|tip It is inside your inventory.
Learn the "Winterspring Cub" Battle Pet |learnpet Winterspring Cub##306 |goto Winterspring/0 59.92,51.59
step
_Congratulations!_
You Collected the "Winterspring Cub" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Worg Pup",{
patch='111100',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet is a drop from Mother Smolderweb inside the Lower Blackrock Spire dungeon.",
keywords={"Beast","Blackrock","Spire"},
pet=89,
},[[
step
Enter the Lower Blackrock Spire Dungeon |goto Blackrock Spire/3 0.00,0.00 |c |or
|tip You can use the Blackrock Spire dungeon guide if you need help getting through the dungeon.
'|learnpet Worg Pup##89 |or
step
kill Quartermaster Zigris##9736
collect Worg Carrier##12264 |n
use the Worg Carrier##12264
|tip It is in your inventory.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
Learn the "Worg Pup" Battle Pet |learnpet Worg Pup##89 |goto Blackrock Spire/5 0.00,0.00
step
_Congratulations!_
You Collected the "Worg Pup" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Alpine Chipmunk",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild all around Winterspring.",
keywords={"Critter","Winterspring"},
pet=487,
},[[
step
clicknpc Alpine Chipmunk##62189
|tip You can find them running around the trees in Winterspring.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Alpine Chipmunk" Battle Pet |learnpet Alpine Chipmunk##487 |goto Winterspring/0 46.73,48.37
step
_Congratulations!_
You Collected the "Alpine Chipmunk" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Alpine Hare",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild all around Winterspring.",
keywords={"Critter","Winterspring"},
pet=441,
},[[
step
clicknpc Alpine Hare##61690
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Alpine Hare" Battle Pet |learnpet Alpine Hare##441 |goto Winterspring/0 63.96,37.84
step
_Congratulations!_
You Collected the "Alpine Hare" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Arctic Hare",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Transborea in the Borean Tundra.",
keywords={"Critter","Borean","Tundra"},
pet=641,
},[[
step
clicknpc Arctic Hare##62693
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Arctic Hare" Battle Pet |learnpet Arctic Hare##641 |goto Borean Tundra/0 83.78,35.16
step
_Congratulations!_
You Collected the "Arctic Hare" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Baneling",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet was given out to people who purchased the Starcraft II Heart of the Swarm Collector's Edition.",
keywords={"Critter","Collector's","Edition"},
pet=903,
},[[
step
collect Baneling##90177 |n
|tip This battle pet was given out to players who purchased the Starcraft II Heart of the Swarm Collector's Edition.
|tip The collector's edition is no longer sold in stores but you may get lucky and find one on a third party website.
use the Baneling##90177
Learn the "Baneling" Battle Pet |learnpet Baneling##903
step
_Congratulations!_
You Collected the "Baneling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Beetle",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild all around the Northern Stranglethorn.",
keywords={"Critter","Northern","Stranglethorn"},
pet=406,
},[[
step
clicknpc Beetle##61319
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Beetle" Battle Pet |learnpet Beetle##406 |goto Northern Stranglethorn/0 58.50,33.54
step
_Congratulations!_
You Collected the "Beetle" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Black Lamb",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild all around Elwynn Forest.",
keywords={"Critter","Elwynn","Forest"},
pet=374,
},[[
step
clicknpc Black Lamb##60649
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Black Lamb" Battle Pet |learnpet Black Lamb##374 |goto Elwynn Forest/0 46.46,73.87
step
_Congratulations!_
You Collected the "Black Lamb" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Black Rat",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Thundermar Ruins in the Twilight Highlands.",
keywords={"Critter","Twilight","Highlands"},
pet=398,
},[[
step
clicknpc Black Rat##61257
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Black Rat" Battle Pet |learnpet Black Rat##398 |goto Twilight Highlands/0 45.15,38.13
step
_Congratulations!_
You Collected the "Black Rat" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Borean Marmot",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around the plains areas in the Borean Tundra.",
keywords={"Critter","Borean","Tundra"},
pet=639,
},[[
step
clicknpc Borean Marmot##62695
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Borean Marmot" Battle Pet |learnpet Borean Marmot##639 |goto Borean Tundra/0 59.25,31.69
step
_Congratulations!_
You Collected the "Borean Marmot" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Brown Marmot",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild all around The Hinterlands.",
keywords={"Critter","The","Hinterlands"},
pet=449,
},[[
step
clicknpc Brown Marmot##61752
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Brown Marmot" Battle Pet |learnpet Brown Marmot##449 |goto The Hinterlands/0 52.56,56.01
step
_Congratulations!_
You Collected the "Brown Marmot" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Brown Rabbit",{
patch='20100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a vendor in Netherstorm.",
keywords={"Critter","Netherstorm"},
pet=137,
},[[
step
talk Dealer Rashaad##20980
buy Brown Rabbit Crate##29364 |n
collect Brown Rabbit Crate##29364 |n
|tip This pet is cageable, meaning it can be purchased from the Auction House.
use the Brown Rabbit Crate##29364
|tip It is inside your inventory.
Learn the "Brown Rabbit" Battle Pet |learnpet Brown Rabbit##137 |goto Netherstorm/0 43.51,35.27
step
_Congratulations!_
You Collected the "Brown Rabbit" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Carrion Rat",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Sethria's Roost in Mount Hyjal.",
keywords={"Critter","Mount","Hyjal"},
pet=540,
},[[
step
clicknpc Carrion Rat##62885
|tip This is a rare spawn, you may have to defeat the other pets in the area in order to get one.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Carrion Rat" Battle Pet |learnpet Carrion Rat##540 |goto Mount Hyjal/0 30.50,79.48
You can find more around [54.95,85.91]
You can find more around [58.94,78.32]
step
_Congratulations!_
You Collected the "Carrion Rat" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Cockroach",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild all around Zun'watha in The Hinterlands.",
keywords={"Critter","The","Hinterlands"},
pet=393,
},[[
step
clicknpc Cockroach##61384
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Cockroach" Battle Pet |learnpet Cockroach##393 |goto The Hinterlands/0 23.43,58.07
step
_Congratulations!_
You Collected the "Cockroach" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Creepy Crawly",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild all around Durotar.",
keywords={"Critter","Durotar"},
pet=468,
},[[
step
clicknpc Creepy Crawly##62116
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Creepy Crawly" Battle Pet |learnpet Creepy Crawly##468 |goto Durotar/0 50.72,36.72
step
_Congratulations!_
You Collected the "Creepy Crawly" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Crystal Beetle",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild all around Deepholm.",
keywords={"Critter","Deepholm"},
pet=556,
},[[
step
clicknpc Crystal Beetle##62925
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Crystal Beetle" Battle Pet |learnpet Crystal Beetle##556 |goto Deepholm/0 56.10,46.97
step
_Congratulations!_
You Collected the "Crystal Beetle" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Darkmoon Hatchling",{
patch='51000',
source='Vendor',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a vendor at the Darkmoon Faire.",
keywords={"Critter","Darkmoon","Faire"},
pet=1061,
},[[
step
click Portal to the Darkmoon Faire |goto Mulgore/0 36.85,35.84
|tip The Darkmoon Faire is only available during the first week of every month.
Teleport to the Darkmoon Faire |goto Darkmoon Island/0 51.29,23.86 |c
step
talk Lhara##14846
buy Darkmoon Hatchling##91003 |n
|tip It costs 90 Darkmoon Faire tickets.
|tip To earn tickets you have to complete daily quests.
|tip You can use our Darkmoon Faire guides to help you earn tickets.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
collect Darkmoon Hatchling##91003 |n
use the Darkmoon Hatchling##91003
|tip It is in your inventory.
Learn the "Darkmoon Hatchling" Battle Pet |learnpet Darkmoon Hatchling##1061 |goto 48.25,69.52
step
_Congratulations!_
You Collected the "Darkmoon Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Darkmoon Rabbit",{
patch='50100',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet is a drop from a elite raid boss at the Darkmoon Faire.",
keywords={"Critter","Darkmoon","Faire"},
pet=848,
},[[
step
click Portal to the Darkmoon Faire |goto Mulgore/0 36.85,35.84
|tip The Darkmoon Faire is only available during the first week of every month.
Teleport to the Darkmoon Faire |goto Darkmoon Island/0 51.29,23.86 |c
step
kill Darkmoon Rabbit##58336
|tip He hops around this area.
|tip He has very high hp, so you may need to find a group to help kill it.
collect Darkmoon Rabbit##80008 |n
|tip This is not a guaranteed drop, it may take you several attempts to get it.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Darkmoon Rabbit##80008
|tip It is in your inventory.
Learn the "Darkmoon Rabbit" Battle Pet |learnpet Darkmoon Rabbit##848 |goto 77.12,79.69
step
_Congratulations!_
You Collected the "Darkmoon Rabbit" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Death's Head Cockroach",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around the Lightning Ledge in Mount Hyjal.",
keywords={"Critter","Mount","Hyjal"},
pet=755,
},[[
step
clicknpc Death's Head Cockroach##62887
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Death's Head Cockroach" Battle Pet |learnpet Death's Head Cockroach##755 |goto Mount Hyjal/0 31.76,39.46
step
_Congratulations!_
You Collected the "Death's Head Cockroach" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Deepholm Cockroach",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild all around Deepholm.",
keywords={"Critter","Deepholm"},
pet=555,
},[[
step
clicknpc Deepholm Cockroach##62924
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Deepholm Cockroach" Battle Pet |learnpet Deepholm Cockroach##555 |goto Deepholm/0 46.30,62.44
step
_Congratulations!_
You Collected the "Deepholm Cockroach" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Elfin Rabbit",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Northeast Mount Hyjal.",
keywords={"Critter","Mount","Hyjal"},
pet=479,
},[[
step
clicknpc Elfin Rabbit##62178
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Elfin Rabbit" Battle Pet |learnpet Elfin Rabbit##479 |goto Mount Hyjal/0 57.66,16.47
step
_Congratulations!_
You Collected the "Elfin Rabbit" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Fawn",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around the Northwest areas of Elwynn Forest.",
keywords={"Critter","Mount","Hyjal"},
pet=447,
},[[
step
clicknpc Fawn##61165
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Fawn" Battle Pet |learnpet Fawn##447 |goto Elwynn Forest/0 36.76,56.37
step
_Congratulations!_
You Collected the "Fawn" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Fire Beetle",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild all around the Blasted Lands.",
keywords={"Critter","Blasted","Lands"},
pet=415,
},[[
step
clicknpc Fire Beetle##61328
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Fire Beetle" Battle Pet |learnpet Fire Beetle##415 |goto Blasted Lands/0 56.22,33.04
step
_Congratulations!_
You Collected the "Fire Beetle" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Fire-Proof Roach",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild all around Southern Mount Hyjal.",
keywords={"Critter","Mount","Hyjal"},
pet=541,
},[[
step
clicknpc Fire-Proof Roach##62886
|tip They tend to spawn around the lava pools around southern Mount Hyjal.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Fire-Proof Roach" Battle Pet |learnpet Fire-Proof Roach##541 |goto Mount Hyjal/0 54.68,81.11
step
_Congratulations!_
You Collected the "Fire-Proof Roach" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Fjord Rat",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Wyrmskull Village in the Howling Fjord.",
keywords={"Critter","Howling","Fjord"},
pet=644,
},[[
step
clicknpc Fjord Rat##62641
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Fjord Rat" Battle Pet |learnpet Fjord Rat##644 |goto Howling Fjord/0 57.61,54.31
step
_Congratulations!_
You Collected the "Fjord Rat" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Gazelle Fawn",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild all around Mulgore.",
keywords={"Critter","Mulgore"},
pet=477,
},[[
step
clicknpc Gazelle Fawn##62176
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Gazelle Fawn" Battle Pet |learnpet Gazelle Fawn##477 |goto Mulgore/0 47.99,34.84
step
_Congratulations!_
You Collected the "Gazelle Fawn" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Giant Sewer Rat",{
patch='30200',
source='Profession',
author="support@zygorguides.com",
description="\nThis battle pet is a rare drop from a fishing spot located in the Underbelly in Dalaran (Northrend).",
keywords={"Critter","Dalaran"},
pet=193,
},[[
step
Enter the Underbelly |goto Dalaran/1 35.44,45.19 < 30 |walk
Cast your Fishing Pole |cast Fishing##131474
|tip Click on the bobber when it goes down.
collect Giant Sewer Rat##43698 |n
|tip This is a very rare drop, it may take some time to get it.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Giant Sewer Rat##43698
|tip It is in your inventory.
Learn the "Giant Sewer Rat" Battle Pet |learnpet Giant Sewer Rat##193 |goto Dalaran/2 44.38,66.17
step
_Congratulations!_
You Collected the "Giant Sewer Rat" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Gold Beetle",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild all around Tanaris.",
keywords={"Critter","Tanaris"},
pet=430,
},[[
step
clicknpc Gold Beetle##61438
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Gold Beetle" Battle Pet |learnpet Gold Beetle##430 |goto Tanaris/0 49.16,45.10
step
_Congratulations!_
You Collected the "Gold Beetle" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Golden Pig",{
patch='24000',
source='Promotion',
author="support@zygorguides.com",
description="\nThis battle pet was obtained through the recruit a friend program but is no longer available.",
keywords={"Critter","Recruit","A","Friend"},
pet=170,
},[[
step
collect Golden Pig Coin##34518 |n
|tip This was a reward from the recruit a friend program but is no longer available.
use the Golden Pig Coin##34518
Learn the "Golden Pig" Battle Pet |learnpet Golden Pig##45174
step
_Congratulations!_
You Collected the "Golden Pig" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Grasslands Cottontail",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild all around the Arathi Highlands.",
keywords={"Critter","Arathi","Highlands"},
pet=443,
},[[
step
clicknpc Grasslands Cottontail##61704
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Grasslands Cottontail" Battle Pet |learnpet Grasslands Cottontail##443 |goto Arathi Highlands/0 60.62,42.14
step
_Congratulations!_
You Collected the "Grasslands Cottontail" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Grizzly Squirrel",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild all around the Grizzly Hills.",
keywords={"Critter","Grizzly","Hills"},
pet=647,
},[[
step
clicknpc Grizzly Squirrel##62818
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Grizzly Squirrel" Battle Pet |learnpet Grizzly Squirrel##647 |goto Grizzly Hills/0 58.29,47.40
step
_Congratulations!_
You Collected the "Grizzly Squirrel" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Grotto Vole",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around the Hyjal Barrow Den in Mount Hyjal.",
keywords={"Critter","Mount","Hyjal"},
pet=539,
},[[
step
Enter the cave |goto Mount Hyjal/0 52.45,17.33 < 30 |walk
clicknpc Grotto Vole##62884
|tip They are inside the cave.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Grotto Vole" Battle Pet |learnpet Grotto Vole##539 |goto 54.64,20.94
step
_Congratulations!_
You Collected the "Grotto Vole" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Highlands Mouse",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Vermillion Redoubt in the Twilight Highlands.",
keywords={"Critter","Twilight","Highlands"},
pet=550,
},[[
step
clicknpc Highlands Mouse##62905
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Highlands Mouse" Battle Pet |learnpet Highlands Mouse##550 |goto Twilight Highlands/0 22.43,17.15
You can find more around [44.90,40.73]
step
_Congratulations!_
You Collected the "Highlands Mouse" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Highlands Skunk",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Thundermar Ruins in the Twilight Highlands.",
keywords={"Critter","Twilight","Highlands"},
pet=823,
},[[
step
clicknpc Highlands Skunk##62907
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Highlands Skunk" Battle Pet |learnpet Highlands Skunk##823 |goto Twilight Highlands/0 50.04,32.45
step
_Congratulations!_
You Collected the "Highlands Skunk" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Irradiated Roach",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around The Toxic Airfield in New Tinkertown.",
keywords={"Critter","New","Tinkertown"},
pet=442,
},[[
step
clicknpc Irradiated Roach##61691
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Irradiated Roach" Battle Pet |learnpet Irradiated Roach##442 |goto New Tinkertown/0 37.95,51.96
step
_Congratulations!_
You Collected the "Irradiated Roach" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Lava Beetle",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around all around the Burning Steppes.",
keywords={"Critter","Burning","Steppes"},
pet=429,
},[[
step
clicknpc Lava Beetle##61386
|tip They can be found near lava streams and pools all around the Burning Steppes.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Lava Beetle" Battle Pet |learnpet Lava Beetle##429 |goto Burning Steppes/0 53.74,34.81
step
_Congratulations!_
You Collected the "Lava Beetle" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Little Fawn",{
patch='30800',
source='Achievement',
author="support@zygorguides.com",
description="\nThis battle pet is rewarded to you after you have collected 75 unique battle pets.",
keywords={"Critter","Lil'","Game","Hunter"},
pet=203,
},[[
step
collect Little Fawn's Salt Lick##44841 |n
|tip This will be in your mailbox after you have collected 75 unique battle pets.
|tip You can use our battle pets guides to help you collect more pets.
use the Little Fawn's Salt Lick##44841
Learn the "Little Fawn" Battle Pet |learnpet Little Fawn##203
step
_Congratulations!_
You Collected the "Little Fawn" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Locust",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around all around Vir'naal Oasis in Uldum.",
keywords={"Critter","Uldum"},
pet=543,
},[[
step
clicknpc Locust##62893
|tip They can be found near the grassy areas all around Vir'naal Oasis.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Locust" Battle Pet |learnpet Locust##543 |goto Uldum/0 56.50,27.74
step
_Congratulations!_
You Collected the "Locust" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Long-tailed Mole",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Booty Bay in The Cape of Stranglethorn.",
keywords={"Critter","The","Cape","Of","Stranglethorn"},
pet=404,
},[[
step
clicknpc Long-tailed Mole##61317
|tip They can be found all around the dock in Booty Bay.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Long-tailed Mole" Battle Pet |learnpet Long-tailed Mole##404 |goto The Cape of Stranglethorn/0 42.55,70.67
step
_Congratulations!_
You Collected the "Long-tailed Mole" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Lucky",{
patch='21000',
source='Promotion',
author="support@zygorguides.com",
description="\nThis battle pet was gifted out to people who attended the 2007 Blizzard World Invitational.",
keywords={"Critter","Blizzard","World","Invitational"},
pet=155,
},[[
step
collect Fortune Coin##32498 |n
|tip This was given out to people who attended the 2007 Blizzard World Invitational in South Korea.
|tip This pet is only available on Korean Servers.
use the Fortune Coin##32498
Learn the "Lucky" Battle Pet |learnpet Lucky##155
step
_Congratulations!_
You Collected the "Lucky" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Lucky Quilen Cub",{
patch='50100',
source='Promotion',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from the Blizzard store.",
keywords={"Critter","Blizzard","Store"},
pet=671,
},[[
step
collect Lucky Quilen Cub##85871 |n
|tip Check your mailbox after you purchase this battle pet from the Blizzard website.
use the Lucky Quilen Cub##85871
Learn the "Lucky Quilen Cub" Battle Pet |learnpet Lucky Quilen Cub##671
step
_Congratulations!_
You Collected the "Lucky Quilen Cub" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Mountain Cottontail",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild all around the Redridge Mountains.",
keywords={"Critter","Redridge","Mountains"},
pet=391,
},[[
step
clicknpc Mountain Cottontail##61167
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Mountain Cottontail" Battle Pet |learnpet Mountain Cottontail##391 |goto Redridge Mountains/0 32.57,65.57
step
_Congratulations!_
You Collected the "Mountain Cottontail" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Mountain Skunk",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around the Wetlands.",
keywords={"Critter","Wetlands"},
pet=633,
},[[
step
clicknpc Mountain Skunk##61677
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Mountain Skunk" Battle Pet |learnpet Mountain Skunk##633 |goto Wetlands/0 66.63,52.05
You can find more around [50.55,15.03]
step
_Congratulations!_
You Collected the "Mountain Skunk" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Mouse",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around The Dragonmurk in Dustwallow Marsh.",
keywords={"Critter","Dustwallow","Marsh"},
pet=385,
},[[
step
clicknpc Mouse##61143
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Mouse" Battle Pet |learnpet Mouse##385 |goto Dustwallow Marsh/0 49.74,72.86
step
_Congratulations!_
You Collected the "Mouse" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Nether Roach",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild all around the Netherstorm.",
keywords={"Critter","Netherstorm"},
pet=638,
},[[
step
clicknpc Nether Roach##62625
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Nether Roach" Battle Pet |learnpet Nether Roach##638 |goto Netherstorm/0 64.22,31.95
step
_Congratulations!_
You Collected the "Nether Roach" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Nuts",{
patch='42000',
source='Achievement',
author="support@zygorguides.com",
description="\nThis battle pet is rewarded to you after you have collected 100 unique battle pets.",
keywords={"Critter","Petting","Zoo"},
pet=323,
},[[
step
collect Nuts' Acorn##71140 |n
|tip This will be in your mailbox after you have collected 100 unique battle pets.
|tip You can use our Battle Pets Guides to help you collect more pets.
use the Nuts' Acorn##71140
Learn the "Nuts" Battle Pet |learnpet Nuts##323
step
_Congratulations!_
You Collected the "Nuts" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Perky Pug",{
patch='33000',
source='Achievement',
author="support@zygorguides.com",
description="\nThis battle pet is rewarded to you after you complete the Looking For Multitudes achievement.",
keywords={"Critter","Looking","For","Multitudes"},
pet=250,
},[[
step
collect Perky Pug##49912 |n
|tip This will be in your mailbox after you complete the Looking For Multitudes achievement.
|tip Use the dungeon finder tool to group up with 100 random players and complete heroic dungeons.
|tip You can use our dungeon guides to help you complete heroic dungeons.
use the Perky Pug##49912
Learn the "Perky Pug" Battle Pet |learnpet Perky Pug##250
step
_Congratulations!_
You Collected the "Perky Pug" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Prairie Dog",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild all around the Southern Barrens.",
keywords={"Critter","Southern","Barrens"},
pet=386,
},[[
step
clicknpc Prairie Dog##61141
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Prairie Dog" Battle Pet |learnpet Prairie Dog##386 |goto Southern Barrens/0 43.84,57.17
step
_Congratulations!_
You Collected the "Prairie Dog" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Rabbit",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around the Northwest parts of Elwynn Forest.",
keywords={"Critter","Elwynn","Forest"},
pet=378,
},[[
step
clicknpc Rabbit##61080
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Rabbit" Battle Pet |learnpet Rabbit##378 |goto Elwynn Forest/0 41.97,56.77
step
_Congratulations!_
You Collected the "Rabbit" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Rat",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Dabyrie's Farmstead in the Arathi Highlands.",
keywords={"Critter","Arathi","Highlands"},
pet=417,
},[[
step
clicknpc Rat##61366
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Rat" Battle Pet |learnpet Rat##417 |goto Arathi Highlands/0 49.09,41.02
You can find more around [25.92,29.37]
You can find more around [13.31,35.20]
step
_Congratulations!_
You Collected the "Rat" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Red-Tailed Chipmunk",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild all around the Hillsbrad Foothills.",
keywords={"Critter","Hillsbrad","Foothills"},
pet=452,
},[[
step
clicknpc Red-Tailed Chipmunk##61757
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Red-Tailed Chipmunk" Battle Pet |learnpet Red-Tailed Chipmunk##452 |goto Hillsbrad Foothills/0 61.32,72.30
step
_Congratulations!_
You Collected the "Red-Tailed Chipmunk" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Redridge Rat",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Galardell Valley in the Redridge Mountains.",
keywords={"Critter","Redridge","Mountains"},
pet=392,
},[[
step
clicknpc Redridge Rat##61168
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Redridge Rat" Battle Pet |learnpet Redridge Rat##392 |goto Redridge Mountains/0 67.50,37.51
step
_Congratulations!_
You Collected the "Redridge Rat" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Roach",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Alther's Mill in the Redridge Mountains.",
keywords={"Critter","Redridge","Mountains"},
pet=424,
},[[
step
clicknpc Roach##61169
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Roach" Battle Pet |learnpet Roach##424 |goto Redridge Mountains/0 50.45,39.49
step
_Congratulations!_
You Collected the "Roach" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Rusty Snail",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around The Zoram Strand in Ashenvale.",
keywords={"Critter","Ashenvale"},
pet=496,
},[[
step
clicknpc Rusty Snail##62313
|tip They can be found all around the west coast beaches in Ashenvale.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Rusty Snail" Battle Pet |learnpet Rusty Snail##496 |goto Ashenvale/0 12.67,29.10
step
_Congratulations!_
You Collected the "Rusty Snail" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Sand Scarab",{
patch='50100',
source='TradingCardGame',
author="support@zygorguides.com",
description="\nThis battle pet can be obtained through the World of Warcraft Trading Card Game.",
keywords={"Critter","Trading","Card","Game"},
pet=665,
},[[
step
talk Landro Longshot##17249
Tell him _"What promotions do you have?"_
Tell him _"Tomb of the Forgotten"_
Tell him _"Sand Scarab Pet"_
collect Sand Scarab##72153 |n
|tip This pet was a reward in the WoW trading card game.
|tip The trading card game is no longer available but you can purchase a code from a third party site.
|tip This pet is cageable, meaning it can be purchased from the Auction House.
use the Sand Scarab##72153
Learn the "Sand Scarab" Battle Pet |learnpet Sand Scarab##665 |goto The Cape of Stranglethorn/0 42.63,71.49
step
_Congratulations!_
You Collected the "Sand Scarab" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Scarab Hatchling",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Ahn' Qiraj: The Fallen Kingdom.",
keywords={"Critter","Ahn'Qiraj","The","Fallen","Kingdom"},
pet=512,
},[[
step
talk Rhonormu##133263
Tell him _"Can you show me what Silithus was like before the Wound in the World?"_
Travel to the past |complete ZGV.InPhase("Old Silithus") |goto Silithus/0 33.33,80.69
step
clicknpc Scarab Hatchling##62524
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Scarab Hatchling" Battle Pet |learnpet Scarab Hatchling##512 |goto Ahn'Qiraj: The Fallen Kingdom/0 58.30,8.53
step
_Congratulations!_
You Collected the "Scarab Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Shimmershell Snail",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild along the west coast beaches in Darkshore.",
keywords={"Critter","Darkshore"},
pet=493,
},[[
step
talk Zidormi##141489
Tell her _"Can you show me what Darkshore was like before the battle?"_
Travel to the past |complete ZGV.InPhase("Old Darnassus") |goto Darkshore/0 48.86,24.46
step
clicknpc Shimmershell Snail##62246
|tip They can be found along all of the west coast beaches in Old Darkshore.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Shimmershell Snail" Battle Pet |learnpet Shimmershell Snail##493 |goto 43.99,26.68
step
_Congratulations!_
You Collected the "Shimmershell Snail" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Silver Pig",{
patch='24000',
source='Promotion',
author="support@zygorguides.com",
description="\nThis battle pet was obtained through the recruit a friend program but is no longer available.",
keywords={"Critter","Recruit","A","Friend"},
pet=171,
},[[
step
collect Silver Pig Coin##34519 |n
|tip This was a reward from the recruit a friend program but is no longer available.
use the Silver Pig Coin##34519
Learn the "Silver Pig" Battle Pet |learnpet Silver Pig##45175
step
_Congratulations!_
You Collected the "Silver Pig" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Singing Cricket",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet is rewarded to you after you level 75 battle pets to level 25.",
keywords={"Critter","Pro","Pet","Mob"},
pet=820,
},[[
step
collect Singing Cricket Cage##88147 |n
|tip This is rewarded to you after you level 75 battle pets to level 25.
use the Singing Cricket Cage##88147
Learn the "Singing Cricket" Battle Pet |learnpet Singing Cricket##820
step
_Congratulations!_
You Collected the "Singing Cricket" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Skunk",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild all around Azshara.",
keywords={"Critter","Azshara"},
pet=397,
},[[
step
clicknpc Skunk##61255
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Skunk" Battle Pet |learnpet Skunk##397 |goto Azshara/0 32.72,67.76
step
_Congratulations!_
You Collected the "Skunk" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Snowshoe Hare",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Crushridge Hold in the Hillsbrad Foothills.",
keywords={"Critter","Hillsbrad","Foothills"},
pet=640,
},[[
step
clicknpc Snowshoe Hare##61755
|tip This is a very rare spawn, so it may take some time to get it.
|tip In this area only 3 Battle pets can be spawned at a time.
|tip You can try forcing the Snowshoe Hare to spawn by defeating the Rats in Strahnbrad.
|tip When the Rats are defeated the Snowshoe Hares will spawn, and will despawn in about 1 minute.
|tip Quickly fly around the Ruins of Alterac and Crushridge Hold areas.
|tip If they don't spawn as battle pets then go back to Strahnbrad and check to see if the Rats spawned again.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Snowshoe Hare" Battle Pet |learnpet Snowshoe Hare##640 |goto Hillsbrad Foothills/0 52.21,23.05
You can find the Rats around this area [57.62,25.09]
step
_Congratulations!_
You Collected the "Snowshoe Hare" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Spring Rabbit",{
patch='31100',
source='WorldEvent',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a vendor during the Noblegarden world event or purchased from the Auction House.",
keywords={"Critter","Noblegarden"},
pet=200,
},[[
step
talk Noblegarden Merchant##32837
|tip They are only available to talk to during the Noblegarden event.
|tip They can be found in the starter towns in Eversong Woods, Durotar, Mulgore, and Tirisfal Glades.
buy Spring Rabbit's Foot##44794 |n
collect Spring Rabbit's Foot##44794 |n
|tip This costs 100 Noblegarden Chocolate.
|tip You can get Noblegarden Chocolate by collecting Brightly Colored Eggs around each of the starter towns during the event.
|tip This pet also has a 1 in 200 chance to drop from the Brightly Colored Eggs.
|tip This pet cageable, meaning you can purchase it from the Auction House.
use the Spring Rabbit's Foot##44794
Learn the "Spring Rabbit" Battle Pet |learnpet Spring Rabbit##200 |goto Durotar/0 51.8,41.8
step
_Congratulations!_
You Collected the "Spring Rabbit" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Squirrel",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around the Northwest parts of Elwynn Forest.",
keywords={"Critter","Elwynn","Forest"},
pet=379,
},[[
step
clicknpc Squirrel##61081
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Squirrel" Battle Pet |learnpet Squirrel##379 |goto Elwynn Forest/0 43.66,55.77
step
_Congratulations!_
You Collected the "Squirrel" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Stinkbug",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild all around Tanaris.",
keywords={"Critter","Tanaris"},
pet=492,
},[[
step
clicknpc Stinkbug##62256
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Stinkbug" Battle Pet |learnpet Stinkbug##492 |goto Tanaris/0 50.52,45.03
step
_Congratulations!_
You Collected the "Stinkbug" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Stinker",{
patch='24000',
source='Achievement',
author="support@zygorguides.com",
description="\nThis battle pet is rewarded to you after you have collected 50 unique battle pets.",
keywords={"Critter","Shop","Smart","Pet"},
pet=160,
},[[
step
collect Reeking Pet Carrier##40653 |n
|tip This will be in your mailbox after you have collected 50 unique battle pets.
|tip You can use our battle pets guides to help you collect more pets.
use the Reeking Pet Carrier##40653
Learn the "Stinker" Battle Pet |learnpet Stinker##160
step
_Congratulations!_
You Collected the "Stinker" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Stone Armadillo",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild at night time around Eastern Desolace.",
keywords={"Critter","Desolace"},
pet=485,
},[[
step
clicknpc Stone Armadillo##62187
|tip They only spawn during night hours, server time.
|tip You can find them all around the eastern parts of Desolace.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Stone Armadillo" Battle Pet |learnpet Stone Armadillo##485 |goto Desolace/0 74.12,44.84
step
_Congratulations!_
You Collected the "Stone Armadillo" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Stormwind Rat",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Old Town in Stormwind City.",
keywords={"Critter","Stormwind","City"},
pet=675,
},[[
step
clicknpc Stormwing Rat##62954
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Stormwind Rat" Battle Pet |learnpet Stormwind Rat##675 |goto Stormwind City/0 73.12,55.31
step
_Congratulations!_
You Collected the "Stormwind Rat" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Stowaway Rat",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Storm's Fury Wreckage in Deepholm.",
keywords={"Critter","Deepholm"},
pet=553,
},[[
step
clicknpc Stowaway Rat##62921
|tip They can also be found inside the destroyed ships around this area.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Stowaway Rat" Battle Pet |learnpet Stowaway Rat##553 |goto Deepholm/0 56.43,75.64
step
_Congratulations!_
You Collected the "Stowaway Rat" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Tainted Cockroach",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild all around Felwood.",
keywords={"Critter","Felwood"},
pet=497,
},[[
step
clicknpc Tainted Cockroach##62314
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Tainted Cockroach" Battle Pet |learnpet Tainted Cockroach##497 |goto Felwood/0 48.59,89.77
step
_Congratulations!_
You Collected the "Tainted Cockroach" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Tainted Rat",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild all around Felwood.",
keywords={"Critter","Felwood"},
pet=499,
},[[
step
clicknpc Tainted Rat##62316
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Tainted Rat" Battle Pet |learnpet Tainted Rat##499 |goto Felwood/0 39.28,43.58
step
_Congratulations!_
You Collected the "Tainted Rat" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Tol'vir Scarab",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around the Northeast parts of Uldum.",
keywords={"Critter","Uldum"},
pet=546,
},[[
step
talk Zidormi##141489
Tell her _"Can you show me what Uldum was like during the time of the Cataclysm?"_
Travel to the past |complete ZGV.InPhase("Old Uldum") |goto Uldum New/0 56.02,35.14
step
clicknpc Tol'vir Scarab##62899
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Tol'vir Scarab" Battle Pet |learnpet Tol'vir Scarab##546 |goto Uldum/0 62.51,24.37
step
_Congratulations!_
You Collected the "Tol'vir Scarab" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Twilight Beetle",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Gar'gol's Hovel in Mount Hyjal.",
keywords={"Critter","Mount","Hyjal"},
pet=469,
},[[
step
clicknpc Twilight Beetle##62118
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Twilight Beetle" Battle Pet |learnpet Twilight Beetle##469 |goto Mount Hyjal/0 27.57,34.57
step
_Congratulations!_
You Collected the "Twilight Beetle" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Wharf Rat",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Booty Bay in The Cape of Stranglethorn.",
keywords={"Critter","The","Cape","Of","Stranglethorn"},
pet=410,
},[[
step
clicknpc Wharf Rat##61323
|tip They can be found all around the docks in Booty Bay.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Wharf Rat" Battle Pet |learnpet Wharf Rat##410 |goto The Cape of Stranglethorn/0 42.49,70.46
step
_Congratulations!_
You Collected the "Wharf Rat" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Yellow-Bellied Marmot",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around the Southern parts of the Twilight Highlands.",
keywords={"Critter","Twilight","Highlands"},
pet=549,
},[[
step
clicknpc Yellow-Bellied Marmot##62904
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Yellow-Bellied Marmot" Battle Pet |learnpet Yellow-Bellied Marmot##549 |goto Twilight Highlands/0 69.68,66.57
step
_Congratulations!_
You Collected the "Yellow-Bellied Marmot" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Zergling",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet is obtained by purchasing the World of Warcraft Collector's Edition.",
keywords={"Critter","Collector's","Edition"},
pet=94,
},[[
step
collect Zergling Leash##13582 |n
|tip This battle pet is a part of the World of Warcraft Collector's Edition.
|tip The collector's edition is no longer sold in stores but you may get lucky and find it on a third party site.
use the Zergling Leash##13582
Learn the "Zergling" Battle Pet |learnpet Zergling##94
step
_Congratulations!_
You Collected the "Zergling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Azure Whelpling",{
patch='112100',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet is a zone drop in Winterspring.",
keywords={"Dragonkin","Winterspring"},
pet=57,
},[[
step
Kill enemies around this area
collect Azure Whelpling##34535 |n
|tip This is a rare drop from killing any mob in Winterspring, it may take some time to get this.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Azure Whelpling##34535
|tip It is in your inventory.
Learn the "Azure Whelpling" Battle Pet |learnpet Azure Whelpling##57 |goto Winterspring/0 50.29,56.67
step
_Congratulations!_
You Collected the "Azure Whelpling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Blue Dragonhawk Hatchling",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a vendor in Netherstorm.",
keywords={"Dragonkin","Netherstorm"},
pet=145,
},[[
step
talk Dealer Rashaad##20980
buy Blue Dragonhawk Hatchling##29958 |n
collect Blue Dragonhawk Hatchling##29958 |n
|tip This pet is cageable, meaning it can be purchased from the Auction House.
use the Blue DragonHawk Hatchling##29958
|tip It is inside your inventory.
Learn the "Blue Dragonhawk Hatchling" Battle Pet |learnpet Blue DragonHawk Hatchling##21056 |goto Netherstorm/0 43.51,35.27
step
_Congratulations!_
You Collected the "Blue Dragonhawk Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Celestial Dragon",{
patch='42000',
source='Achievement',
author="support@zygorguides.com",
description="\nThis battle pet is rewarded to you after you have collected 150 unique battle pets.",
keywords={"Dragonkin","Littlest","Pet","Shop"},
pet=255,
},[[
step
collect Celestial Dragon##54810 |n
|tip This will be in your mailbox after you have collected 150 unique battle pets.
|tip You can use our battle pets guides to help you collect more pets.
use the Celestial Dragon##54810
Learn the "Celestial Dragon" Battle Pet |learnpet Celestial Dragon##255
step
_Congratulations!_
You Collected the "Celestial Dragon" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Chrominius",{
patch='51000',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet is a drop from the raid boss Chromaggus inside the Blackwing Lair raid.",
keywords={"Dragonkin","Blackwing","Lair"},
pet=1152,
},[[
step
click Orb of Command##179879
Choose _<Place my hand on the orb.>_
Enter the Blackwing Lair Raid |goto Blackwing Lair/1 0.00,0.00 |c |or
|tip You can use the Blackwing Lair guide if you need help getting through the raid.
'|learnpet Chrominius##1152 |or
step
kill Chromaggus##14020
collect Whistle of Chromatic Bone##93038 |n
|tip This has a 23.96% chance to drop, it may take you a few attempts to get it.
use the Whistle of Chromatic Bone##93038
|tip It is in your inventory.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
Learn the "Chrominius" Battle Pet |learnpet Chrominius##1152
step
_Congratulations!_
You Collected the "Chrominius" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Crimson Whelpling",{
patch='111100',
source='Drop',
author="support@zygorguides.com",
description="\nThis battle pet is a zone drop in the Wetlands.",
keywords={"Dragonkin","Wetlands"},
pet=58,
},[[
step
Kill enemies around this area
collect Tiny Crimson Whelpling##8499 |n
|tip This is a rare drop from killing any mob in the Wetlands, it may take some time to get this.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Tiny Crimson Whelpling##8499
|tip It is in your inventory.
Learn the "Crimson Whelpling" Battle Pet |learnpet Crimson Whelpling##58 |goto Wetlands/0 61.79,40.87
step
_Congratulations!_
You Collected the "Crimson Whelpling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Dark Whelpling",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet is a zone drop in the Badlands.",
keywords={"Dragonkin","Badlands"},
pet=56,
},[[
step
Kill enemies around this area
collect Dark Whelpling##10822 |n
|tip This is a very rare drop from killing mobs in the Badlands, it may take some time to get this.
|tip This only drops from Scalding Whelps, Nyxondra's Broodling, and Raging Whelps.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Dark Whelpling##10822
|tip It is in your inventory.
Learn the "Dark Whelpling" Battle Pet |learnpet Dark Whelpling##56 |goto Badlands/0 70.92,44.53
step
_Congratulations!_
You Collected the "Dark Whelpling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Death Talon Whelpguard",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet is a drop from the raid boss Broodlord Lashlayer inside the Blackwing Lair raid.",
keywords={"Dragonkin","Blackwing","Lair"},
pet=1153,
},[[
step
click Orb of Command##179879
Choose _<Place my hand on the orb.>_
Enter the Blackwing Lair Raid |goto Blackwing Lair/1 0.00,0.00 |c |or
|tip You can use the Blackwing Lair guide if you need help getting through the raid.
'|learnpet Death Talon Whelpguard##1153 |or
step
kill Broodlord Lashlayer##12017
collect Blackwing Banner##93037 |n
|tip This has a 24.62% chance to drop, it may take a few attempts to get it.
use the Blackwing Banner##93037
|tip It is in your inventory.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
Learn the "Death Talon Whelpguard" Battle Pet |learnpet Death Talon Whelpguard##1153
step
_Congratulations!_
You Collected the "Death Talon Whelpguard" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Emerald Proto-Whelp",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around The Savage Thicket in Sholazar Basin.",
keywords={"Dragonkin","Sholazar","Basin"},
pet=1167,
},[[
step
clicknpc Emerald Proto-Whelp##68850
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Emerald Proto-Whelp" Battle Pet |learnpet Emerald Proto-Whelp##1167 |goto Sholazar Basin/0 47.23,26.03
step
_Congratulations!_
You Collected the "Emerald Proto-Whelp" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Emerald Whelpling",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet is a zone drop in Feralas.",
keywords={"Dragonkin","Feralas"},
pet=59,
},[[
step
kill Noxious Whelp##39384+
collect Emerald Whelpling##8498 |n
|tip This is a rare drop, it may take some time to get this.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Emerald Whelpling##8498
|tip It is in your inventory.
Learn the "Emerald Whelpling" Battle Pet |learnpet Emerald Whelpling##59 |goto Feralas/0 47.17,9.94
step
_Congratulations!_
You Collected the "Emerald Whelpling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Essence of Competition",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet was given out as a code to players on the Chinese server during the 2008 Olympics.",
keywords={"Dragonkin","The","Spirit","Of","Competition"},
pet=180,
},[[
step
collect Competitor's Souvenir##37298 |n
|tip This pet was given out as a code to players on the Chinese Server during the 2008 Olympics.
|tip This pet is no longer available.
use the Competitor's Souvenir##37298
Learn the "Essence of Competition" Battle Pet |learnpet Essence of Competition##180
step
_Congratulations!_
You Collected the "Essence of Competition" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Infinite Whelpling",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around the Caverns of Times in Tanaris.",
keywords={"Dragonkin","Tanaris"},
pet=1161,
},[[
step
clicknpc Infinite Whelpling##68820
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Infinite Whelpling" Battle Pet |learnpet Infinite Whelpling##1161 |goto Tanaris/0 60.78,50.55
step
_Congratulations!_
You Collected the "Infinite Whelpling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Lil' Deathwing",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet was given out to people who purchase the Cataclysm Collector's Edition.",
keywords={"Dragonkin","Cataclysm","Collector's","Edition"},
pet=268,
},[[
step
collect Lil' Deathwing##62540 |n
|tip This pet was given to players who purchase the Cataclysm Collector's Edition.
|tip It will be in your mailbox after you purchase the Collector's Edition.
use the Lil' Deathwing##62540
Learn the "Lil' Deathwing" Battle Pet |learnpet Lil' Deathwing##268
step
_Congratulations!_
You Collected the "Lil' Deathwing" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Netherwhelp",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet was given out to people who purchase the Burning Crusade Collector's Edition.",
keywords={"Dragonkin","Burning","Crusade","Collector's","Edition"},
pet=131,
},[[
step
collect Netherwhelp's Collar##25535 |n
|tip This pet was given to players who purchase the Burning Crusade Collector's Edition.
|tip It will be in your mailbox after you purchase the Collector's Edition.
use the Netherwhelp's Collar##25535
Learn the "Netherwhelp" Battle Pet |learnpet Netherwhelp##131
step
_Congratulations!_
You Collected the "Netherwhelp" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Nexus Whelpling",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild all around Coldarra in the Borean Tundra.",
keywords={"Dragonkin","Borean","Tundra"},
pet=1165,
},[[
step
clicknpc Nexus Whelpling##68845
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Nexus Whelpling" Battle Pet |learnpet Nexus Whelpling##1165 |goto Borean Tundra/0 25.64,34.85
step
_Congratulations!_
You Collected the "Nexus Whelpling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Onyxian Whelpling",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet was given out to players who logged in during the WoW 5th Anniversary event.",
keywords={"Dragonkin","Anniversary","Event"},
pet=243,
},[[
step
collect Onyxian Whelpling##49362 |n
|tip This pet was given to players who logged in during the WoW 5th anniversary event.
|tip This pet is no longer available.
use the Onyxian Whelpling##49362
Learn the "Onyxian Whelpling" Battle Pet |learnpet Onyxian Whelpling##243
step
_Congratulations!_
You Collected the "Onyxian Whelpling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Proto-Drake Whelp",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a vendor in Sholazar Basin after you reach revered reputation with The Oracles.",
keywords={"Dragonkin","The","Oracles"},
pet=196,
},[[
step
Reach Revered Status with The Oracles |complete rep('The Oracles') >= Revered
|tip Use The Oracles Reputation Guide to help you raise your reputation level.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
talk Geen##31910
buy Mysterious Egg##39878 |n
use the Cracked Egg##39883
|tip After 3 days the "Mysterious Egg" will turn in to a "Cracked Egg".
collect Proto-Drake Whelp##44721 |n
|tip There are 6 different rewards you can receive from the Cracked Egg, this may take you several attempts.
use the Proto-Drake Whelp##44721
Learn the "Proto-Drake Whelp" Battle Pet |learnpet Proto-Drake Whelp##196 |goto Sholazar Basin/0 54.57,56.13
step
_Congratulations!_
You Collected the "Proto-Drake Whelp" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Soul of the Aspects",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from the Blizzard store.",
keywords={"Dragonkin","Blizzard","Store"},
pet=347,
},[[
step
collect Soul of the Aspects##78916 |n
|tip Check your mailbox after you purchase this battle pet from the Blizzard website.
use the Soul of the Aspects##78916
Learn the "Soul of the Aspects" Battle Pet |learnpet Soul of the Aspects##347
step
_Congratulations!_
You Collected the "Soul of the Aspects" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Spawn of Onyxia",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Wyrmbog in Dustwallow Marsh.",
keywords={"Dragonkin","Dustwallow","Marsh"},
pet=489,
},[[
step
clicknpc Spawn of Onyxia##62201
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Spawn of Onyxia" Battle Pet |learnpet Spawn of Onyxia##489 |goto Dustwallow Marsh/0 50.62,74.74
step
_Congratulations!_
You Collected the "Spawn of Onyxia" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Spirit of Competition",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet was given out as a code to players on the Chinese server during the 2008 Olympics.",
keywords={"Dragonkin","The","Spirit","Of","Competition"},
pet=179,
},[[
step
collect Gold Medallion##37297 |n
|tip This pet was given out as a code to players on the Chinese Server during the 2008 Olympics.
|tip This pet is no longer available.
use the Gold Medallion##37297
Learn the "Spirit of Competition" Battle Pet |learnpet Spirit of Competition##179
step
_Congratulations!_
You Collected the "Spirit of Competition" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Sprite Darter Hatchling",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet is a zone drop in Feralas.",
keywords={"Dragonkin","Feralas"},
pet=87,
},[[
step
Kill enemies around this area
collect Sprite Darter Egg##11474 |n
|tip This is a rare drop from killing any mob in Feralas, it may take some time to get this.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Sprite Darter Egg##11474
|tip It is in your inventory.
Learn the "Sprite Darter Hatchling" Battle Pet |learnpet Sprite Darter Hatchling##87 |goto Feralas/0 47.22,9.55
step
_Congratulations!_
You Collected the "Sprite Darter Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Tiny Green Dragon",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet was given out to players who participated in the iCoke promotional event in China.",
keywords={"Dragonkin","Special","Event"},
pet=757,
},[[
step
collect Green Dragon Orb##19055 |n
|tip This was a code given out to people who participated in an iCoke promotion back in 2006.
|tip This was limited to only servers in China and is no longer available.
use the Green Dragon Orb##19055
Learn the "Tiny Green Dragon" Battle Pet |learnpet Tiny Green Dragon##757
step
_Congratulations!_
You Collected the "Tiny Green Dragon" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Tiny Red Dragon",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet was given out to players who participated in the iCoke promotional event in China.",
keywords={"Dragonkin","Special","Event"},
pet=758,
},[[
step
collect Red Dragon Orb##19054 |n
|tip This was a code given out to people who participated in an iCoke promotion back in 2006.
|tip This was limited to only servers in China and is no longer available.
use the Red Dragon Orb##19054
Learn the "Tiny Red Dragon" Battle Pet |learnpet Tiny Red Dragon##758
step
_Congratulations!_
You Collected the "Tiny Red Dragon" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Untamed Hatchling",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet is a drop from the raid boss Razorgore the Untamed inside the Blackwing Lair raid.",
keywords={"Dragonkin","Blackwing","Lair"},
pet=1151,
},[[
step
click Orb of Command##179879
Choose _<Place my hand on the orb.>_
Enter the Blackwing Lair Raid |goto Blackwing Lair/1 0.00,0.00 |c |or
|tip You can use the Blackwing Lair guide if you need help getting through the raid.
'|learnpet Untamed Hatchling##1151 |or
step
kill Razorgore the Untamed##12435
collect Unscathed Egg##93036 |n
|tip This has a 26.39% chance to drop, it may take a few attempts to get it.
use the Unscathed Egg##93036
|tip It is in your inventory.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
Learn the "Untamed Hatchling" Battle Pet |learnpet Untamed Hatchling##1151
step
_Congratulations!_
You Collected the "Untamed Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Amethyst Shale Hatchling",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Therazane's Throne in Deepholm.",
keywords={"Elemental","Deepholm"},
pet=838,
},[[
step
clicknpc Amethyst Shale Hatchling##62182
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Amethyst Shale Hatchling" Battle Pet |learnpet Amethyst Shale Hatchling##838 |goto Deepholm/0 56.59,12.93
step
_Congratulations!_
You Collected the "Amethyst Shale Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Ashstone Core",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet is a drop from the raid boss Golemagg the Incinerator inside the Molten Core raid.",
keywords={"Elemental","Molten","Core"},
pet=1150,
},[[
step
talk Lothos Riftwaker##14387
Tell him _"Transport me to the Molten Core, Lothos."_
|tip You can use the Molten Core guide if you need help getting through the raid.
Teleport to the Molten Core Raid |goto Molten Core/1 0.00,0.00  |c |or
'|learnpet Ashstone Core##1150 |or
step
kill Golemagg the Incinerator##11988
collect Core of Hardened Ash##93035 |n
|tip This has a 19.76% chance to drop, it may take a few attempts to get it.
use the Core of Hardened Ash##93035
|tip It is in your inventory.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
Learn the "Ashstone Core" Battle Pet |learnpet Ashstone Core##1150
step
_Congratulations!_
You Collected the "Ashstone Core" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Blossoming Ancient",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from the Blizzard store.",
keywords={"Elemental","Blizzard","Store"},
pet=1248,
},[[
step
collect Blossoming Ancient##98550 |n
|tip Check your mailbox after you purchase this battle pet from the Blizzard website.
use the Blossoming Ancient##98550
Learn the "Blossoming Ancient" Battle Pet |learnpet Blossoming Ancient##142880
step
_Congratulations!_
You Collected the "Blossoming Ancient" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Core Hound Pup",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet is given to players that have a Battle.net account linked to a Blizzard Authenticator.",
keywords={"Elemental","Blizzard","Authenticator"},
pet=244,
},[[
step
collect Core Hound Pup##49646 |n
|tip This pet will be sent to the mailbox of every character attached to a Battle.net account that is linked to a Blizzard Authenticator.
|tip If the Authenticator is removed, the pet will also be removed from all of the characters associated with the account.
use the Core Hound Pup##49646
Learn the "Core Hound Pup" Battle Pet |learnpet Core Hound Pup##244
step
_Congratulations!_
You Collected the "Core Hound Pup" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Crimson Geode",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around the Crimson Expanse in Deepholm.",
keywords={"Elemental","Deepholm"},
pet=559,
},[[
step
clicknpc Crimson Geode##62927
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Crimson Geode" Battle Pet |learnpet Crimson Geode##559 |goto Deepholm/0 71.04,47.18
step
_Congratulations!_
You Collected the "Crimson Geode" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Crimson Lasher",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a vendor in the Molten Front.",
keywords={"Elemental","Molten","Front"},
pet=318,
},[[
step
Complete the Quest _Filling the Moonwell_ |complete completedq(29279)
|tip You will have to grind Firelands dailies and quests to earn 445 Marks of the World Tree.
|tip You can use the Firelands quest and dailies guides to help you.
|tip This will take about a month to grind.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
talk Ayla Shadowstorm##53881
buy Crimson Lasher##70160 |n
collect Crimson Lasher##70160 |n
use the Crimson Lasher##70160
|tip It is in your inventory.
Learn the "Crimson Lasher" Battle Pet |learnpet Crimson Lasher##318 |goto Molten Front/0 44.8,86.6
step
_Congratulations!_
You Collected the "Crimson Lasher" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Crimson Shale Hatchling",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around the Crimson Expanse in Deepholm.",
keywords={"Elemental","Deepholm"},
pet=554,
},[[
step
clicknpc Crimson Shale Hatchling##62922
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Crimson Shale Hatchling" Battle Pet |learnpet Crimson Shale Hatchling##554 |goto Deepholm/0 72.08,49.57
step
_Congratulations!_
You Collected the "Crimson Shale Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Emerald Shale Hatchling",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around The Quaking Fields in Deepholm.",
keywords={"Elemental","Deepholm"},
pet=837,
},[[
step
clicknpc Emerald Shale Hatchling##62915
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Emerald Shale Hatchling" Battle Pet |learnpet Emerald Shale Hatchling##837 |goto Deepholm/0 47.50,84.93
step
_Congratulations!_
You Collected the "Emerald Shale Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Fel Flame",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around The Fel Pits in Shadowmoon Valley.",
keywords={"Elemental","Shadowmoon","Valley"},
pet=519,
},[[
step
clicknpc Fel Flame##62621
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Fel Flame" Battle Pet |learnpet Fel Flame##519 |goto Shadowmoon Valley/0 47.50,46.63
step
_Congratulations!_
You Collected the "Fel Flame" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Frigid Frostling",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet is a drop from a boss in The Slave Pens dungeon during the Midsummer Fire Festival.",
keywords={"Elemental","Midsummer","Fire","Festival"},
pet=253,
},[[
step
Enter The Slave Pens dungeon |complete isevent("Midsummer Fire Festival") |goto The Slave Pens/1 0.00,0.00 |c |or
|tip This pet can only be obtained during the Midsummer Fire Festival.
|tip You can use The Slave Pens guide if you need help getting through the dungeon.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
'|learnpet Frigid Frostling##253 |or
step
kill Ahane##25740
collect Satchel of Chilled Goods##54536 |n
|tip You can only receive this once a day during the Midsummer Fire Festival.
use the Satchel of Chilled Goods##54536
|tip It is in your inventory.
collect Ice Chip##53641 |n
|tip This is not a guaranteed drop, it may take you several attempts to get it.
use the Ice Chip##53641
Learn the "Frigid Frostling" Battle Pet |learnpet Frigid Frostling##253
step
_Congratulations!_
You Collected the "Frigid Frostling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Jade Tentacle",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet is rewarded to you after you have collected 400 pet battle achievement points.",
keywords={"Elemental","Time","To","Open","A","Pet","Store"},
pet=856,
},[[
step
collect Jade Tentacle##89686 |n
|tip This will be in your mailbox after you have collected 400 pet battle achievement points.
|tip You can use our achievement guides to help you complete more achievements.
use the Jade Tentacle##89686
Learn the "Jade Tentacle" Battle Pet |learnpet Jade Tentacle##89686
step
_Congratulations!_
You Collected the "Jade Tentacle" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Kirin Tor Familiar",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet is rewarded to you after you have completed the Higher Learning achievement.",
keywords={"Elemental","Higher","Learning"},
pet=199,
},[[
step
use The Schools of Arcane Magic - Mastery##43824
|tip This will be in your inventory when you complete the Higher Learning achievement.
|tip You can use the Higher Learning achievement guide to help you complete the achievement.
Teleport to the Violet Citadel |complete achieved(1956) |goto Dalaran/1 21.8,55.3
step
talk Archmage Vargoth##19481
|tip He walks around this area.
Tell him _"I have a book that might interest you. Would you like to take a look?"_
Tell him _"Thank you! I will be sure to notify you if I find anything else."_
collect 1 Kirin Tor Familiar##44738 |n
use the Kirin Tor Familiar##44738
|tip It is in your inventory.
Learn the "Kirin Tor Familiar" Battle Pet |learnpet Kirin Tor Famliar##32643 |goto 21.8,55.3
step
_Congratulations!_
You Collected the "Kirin Tor Familiar" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Lava Crab",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around the lava pools in the Searing Gorge.",
keywords={"Elemental","Searing","Gorge"},
pet=423,
},[[
step
clicknpc Lava Crab##61383
|tip They can be found near pools of lava all around the Searing Gorge.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Lava Crab" Battle Pet |learnpet Lava Crab##423 |goto Searing Gorge/0 39.70,57.34
step
_Congratulations!_
You Collected the "Lava Crab" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Lil' Ragnaros",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from the Blizzard store.",
keywords={"Elemental","Blizzard","Store"},
pet=297,
},[[
step
collect Lil' Ragnaros##68385 |n
|tip Check your mailbox after you purchase this battle pet from the Blizzard website.
use the Lil' Ragnaros##68385
Learn the "Lil' Ragnaros" Battle Pet |learnpet Lil' Ragnaros##297
step
_Congratulations!_
You Collected the "Lil' Ragnaros" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Phoenix Hatchling",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet is a drop from Kael'thas Sunstrider inside the Magisters' Terrace dungeon.",
keywords={"Elemental","Magisters'","Terrace"},
pet=175,
},[[
step
Enter the Magisters' Terrace Dungeon |goto Magisters' Terrace/2 0.00,0.00 |c |or
|tip You can use the Magisters' Terrace dungeon guide if you need help getting through the dungeon.
'|learnpet Phoenix Hatchling##175 |or
step
kill Kael'thas Sunstrider##24664
collect Phoenix Hatchling##35504 |n
|tip This has a 7.69% chance to drop, it may take you several attempts to get it.
use the Phoenix Hatchling##35504
|tip It is in your inventory.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
Learn the "Phoenix Hatchling" Battle Pet |learnpet Phoenix Hatchling##175
step
_Congratulations!_
You Collected the "Phoenix Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Ruby Sapling",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild all around the Eversong Woods.",
keywords={"Elemental","Eversong","Woods"},
pet=460,
},[[
step
clicknpc Ruby Sapling##62020
|tip They can be found all around Eversong Woods.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Ruby Sapling" Battle Pet |learnpet Ruby Sapling##460 |goto Eversong Woods/0 64.81,60.42
step
_Congratulations!_
You Collected the "Ruby Sapling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Singing Sunflower",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet is a reward for completing a quest chain for Brazie the Botanist in the Hillsbrad Foothills.",
keywords={"Elemental","Hillsbrad","Foothills"},
pet=291,
},[[
step
talk Brazie the Botanist##49687
accept Basic Botany##28733 |goto Hillsbrad Foothills/0 33.53,49.35
step
Survive the Massive Wave |q 28733/1 |goto 33.59,49.28
|tip Right click on the yellow Solar Power to gain energy.
|tip Use the abilities on your action bar to summon new plants and spend your energy.
|tip Every Lane has a safety lawnmower, if a zombie reaches it all zombies in the lane at that time will die.
step
talk Brazie the Botanist##49687
turnin Basic Botany##28733 |goto 33.53,49.35
accept Flower Power##28617 |goto 33.53,49.35
step
Survive the Massive Wave |q 28617/1 |goto 33.59,49.28
|tip Right click on the yellow Solar Power to gain energy.
|tip Use the abilities on your action bar to summon new plants and spend your energy.
|tip Every Lane has a safety lawnmower, if a zombie reaches it all zombies in the lane at that time will die.
|tip Plant a row of Sunflowers to help you gain more energy.
|tip Plant 2 rows of Spitters for dps, prioritize the lanes that have more zombies in them.
|tip Part way through a zombie will drop a giant brown bag containing a Freezya Plant, right click on it.
|tip Plant a row of Freezya plants, prioritizing the lanes with the most zombies in it.
step
talk Brazie the Botanist##49687
turnin Flower Power##28617 |goto 33.53,49.35
accept Ghouls Hate My Grains##28744 |goto 33.53,49.35
step
Survive the Massive Wave |q 28744/1 |goto 33.59,49.28
|tip Right click on the yellow Solar Power to gain energy.
|tip Use the abilities on your action bar to summon new plants and spend your energy.
|tip Every Lane has a safety lawnmower, if a zombie reaches it all zombies in the lane at that time will die.
|tip Plant a row of Sunflowers to help you gain more energy.
|tip Plant Rocknuts further up the lane to help you stall the zombies so you can farm energy and add more plants.
|tip Plant 3 rows of Spitters for dps, prioritize the lanes that have more zombies in them.
|tip Plant a row of Freezya plants, prioritizing the lanes with the most zombies in it.
|tip Part way through a zombie will drop a giant brown bag containing Strangler Vine, right click on it.
|tip Use the Strangler Vine behind the Rocknuts to grab Ghouls.
|tip When Abberations spawn plant a Rocknut in that lane immediately to stall it.
step
talk Brazie the Botanist##49687
turnin Ghouls Hate My Grains##28744 |goto 33.53,49.35
accept Someone Setup the Pumpkin Bomb##28747 |goto 33.53,49.35
step
Survive the Massive Wave |q 28747/1 |goto 33.59,49.28
|tip Right click on the yellow Solar Power to gain energy.
|tip Use the abilities on your action bar to summon new plants and spend your energy.
|tip Every Lane has a safety lawnmower, if a zombie reaches it all zombies in the lane at that time will die.
|tip Plant a row of Sunflowers to help you gain more energy.
|tip Plant Rocknuts further up the lane to help you stall the zombies so you can farm energy and add more plants.
|tip Plant 3 rows of Spitters for dps, prioritize the lanes that have more zombies in them.
|tip Plant a row of Freezya plants, prioritizing the lanes with the most zombies in it.
|tip Use the Strangler Vine behind the Rocknuts to grab Ghouls.
|tip When Abberations spawn plant a Rocknut in that lane immediately to stall it.
|tip If a lane is getting over whelmed the two best options are to either quickly plant a Rocknut with a Pumpkin Bomb on top of the cluster of zombies or let them run through the lane and trigger the safety lawnmower.
|tip Use Rocknuts and Pumpkin Bombs on Abominations as soon as they enter a lane.
step
talk Brazie the Botanist##49687
turnin Someone Setup the Pumpkin Bomb##28747 |goto 33.53,49.35
accept Lawn of the Dead##28748 |goto 33.53,49.35
step
Defeat Warden Stillwater |q 28748/1 |goto 33.59,49.28
|tip Right click on the yellow Solar Power to gain energy.
|tip Use the abilities on your action bar to summon new plants and spend your energy.
|tip Every Lane has a safety lawnmower, if a zombie reaches it all zombies in the lane at that time will die.
|tip Plant a row of Sunflowers to help you gain more energy.
|tip Plant Rocknuts further up the lane to help you stall the zombies so you can farm energy and add more plants.
|tip Plant 3 rows of Spitters for dps, prioritize the lanes that have more zombies in them.
|tip Plant a row of Freezya plants, prioritizing the lanes with the most zombies in it.
|tip When Warden Stillwater shows up use the Pumpkin Bombs directly on him.
|tip It takes about 3 Pumpkin Bombs to kill him.
step
talk Brazie the Botanist##49687
turnin Lawn of the Dead##28748 |goto 33.53,49.35
step
collect Brazie's Sunflower Seeds##66067 |n
use Brazie's Sunflower Seeds##66067
|tip It is in your inventory.
Learn the "Singing Sunflower" Battle Pet |learnpet Singing Sunflower##291
step
_Congratulations!_
You Collected the "Singing Sunflower" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Sinister Squashling",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a vendor during the Hollow's End world event or purchased from the Auction House.",
keywords={"Elemental","Hollow's","End"},
pet=162,
},[[
step
talk Pippi##109685
|tip She is only available to talk to during the Hollow's End event.
buy Sinister Squashling##33154 |n
collect Sinister Squashling##33154 |n
|tip This costs 150 Tricky Treats.
|tip You can get Tricky Treats by doing dailies, use our Hollow's End daily guides to help you out.
|tip This pet has an 8% chance to drop from the Headless Horseman boss in the Scarlet Monastary instance.
|tip This pet also has a 3% chance to drop from Treat Bags and Crudely Wrapped Gifts.
|tip This pet cageable, meaning you can purchase it from the Auction House.
use the Sinister Squashling##33154
|tip It is in your inventory.
Learn the "Sinister Squashling" Battle Pet |learnpet Sinister Squashling##162 |goto Elwynn Forest/0 32.0,50.2
step
_Congratulations!_
You Collected the "Sinister Squashling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Spirit of Summer",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a vendor during the Midsummer Fire Festival world event or purchased from the Auction House.",
keywords={"Elemental","Midsummer","Fire","Festival"},
pet=128,
},[[
step
talk Midsummer Merchant##26124
|tip She is only available to talk to during the Midsummer Fire Festival event.
buy Captured Flame##23083 |n
collect Captured Flame##23083 |n
|tip This costs 350 Burning Blossoms.
|tip You can get Burning Blossoms by doing dailies, use our Midsummer Fire Festival daily guides to help you out.
|tip This pet cageable, meaning you can purchase it from the Auction House.
use the Captured Flame##23083
|tip It is in your inventory.
Learn the "Spirit of Summer" Battle Pet |learnpet Spirit of Summer##128 |goto Orgrimmar/1 47.6,38.6
step
_Congratulations!_
You Collected the "Spirit of Summer" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Tiny Bog Beast",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around The Green Belt in the Wetlands.",
keywords={"Elemental","Wetlands"},
pet=509,
},[[
step
clicknpc Tiny Bog Beast##61686
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Tiny Bog Beast" Battle Pet |learnpet Tiny Bog Beast##509 |goto Wetlands/0 52.79,29.80
step
_Congratulations!_
You Collected the "Tiny Bog Beast" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Tiny Shale Spider",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet is a dropped from Jadefang in Deepholm.",
keywords={"Elemental","Deepholm"},
pet=279,
},[[
step
Enter the cave |goto Deepholm/0 58.16,25.39 < 30 |walk
talk Ricket##44968
|tip She is inside the cave.
|tip You need to have the Therazane daily quests unlocked to gain access to this quest.
|tip You can use our Therazane reputation guide to help you gain access to the daily quests.
|tip This quest is not available everyday, you may have to come back and check again if she isn't here.
accept Underground Economy##27048 |goto 61.39,26.16
step
Follow the path |goto 62.90,27.20 < 30 |only if walking
Continue following the path |goto 63.82,24.47 < 30 |only if walking
Enter the tunnel |goto 64.38,21.77 < 20 |only if walking
Jump to the green cystal using your mount |goto 62.91,20.96 < 15 |only if walking
use the Ricket's Tickers##65514
|tip Use it on top of the right green crystal.
|tip Make sure the bomb is in front of you and your back in facing the ledge with Deep Spiders on it.
kill Jadefang##49822
|tip This is a rare spawn, if it's not there you will have to come back another time and check again.
|tip You can hold on to your daily quest to keep the item to help you get back here.
collect Tiny Shale Spider##64494 |n
use the Tiny Shale Spider##64494
|tip It is in your inventory.
Learn the "Tiny Shale Spider" Battle Pet |learnpet Tiny Shale Spider##279 |goto 61.19,22.64
step
_Congratulations!_
You Collected the "Tiny Shale Spider" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Tiny Twister",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around the Circle of Outer Binding in the Arathi Highlands.",
keywords={"Elemental","Arathi","Highlands"},
pet=445,
},[[
step
clicknpc Tiny Twister##61703
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Tiny Twister" Battle Pet |learnpet Tiny Twister##445 |goto Arathi Highlands/0 46.93,49.32
step
_Congratulations!_
You Collected the "Tiny Twister" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Topaz Shale Hatchling",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around the Upper Silvermarsh in Deepholm.",
keywords={"Elemental","Deepholm"},
pet=480,
},[[
step
clicknpc Topaz Shale Hatchling##62181
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Topaz Shale Hatchling" Battle Pet |learnpet Topaz Shale Hatchling##480 |goto Deepholm/0 72.88,63.09
You can find more around [69.02,38.38]
You can find more around [56.23,12.80]
step
_Congratulations!_
You Collected the "Topaz Shale Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Venus",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet is rewarded to you after you have collected 400 unique battle pets.",
keywords={"Elemental","Time","To","Open","A","Pet","Store"},
pet=855,
},[[
step
collect Venus##89736 |n
|tip This will be in your mailbox after you have collected 400 unique battle pets.
|tip You can use our battle pets guides to help you collect more pets.
use the Venus##89736
Learn the "Venus" Battle Pet |learnpet Venus##855
step
_Congratulations!_
You Collected the "Venus" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Water Waveling",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around the Drak'Sotra Fields in Zul'Drak.",
keywords={"Elemental","Zul'Drak"},
pet=535,
},[[
step
clicknpc Water Waveling##62820
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Water Waveling" Battle Pet |learnpet Water Waveling##535 |goto Zul'Drak/0 39.72,75.84
step
_Congratulations!_
You Collected the "Water Waveling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Ancona Chicken",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a vendor in Thousand Needles.",
keywords={"Flying","Thousand","Needles"},
pet=52,
},[[
step
talk "Plucky" Johnson##41135
|tip He looks like a chicken running around this area.
Tell him _"I hear that you sell Ancona chickens?"_
buy Ancona Chicken##11023 |n
collect Anconca Chicken##11023 |n
|tip It is inside your inventory.
|tip This pet is cageable, meaning it can be purchased from the Auction House.
use the Anconca Chicken##11023
Learn the "Ancona Chicken" Battle Pet |learnpet Ancona Chicken##52 |goto Thousand Needles/0 85.00,91.50
step
_Congratulations!_
You Collected the "Ancona Chicken" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Bat",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild in the Tirisfal Glades.",
keywords={"Flying","Tirisfal","Glades"},
pet=626,
},[[
step
clicknpc Bat##61829
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Bat" Battle Pet |learnpet Bat##626 |goto Tirisfal Glades/0 49.55,59.27
step
_Congratulations!_
You Collected the "Bat" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Brilliant Kaliri",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet is rewarded to you after you have collected 125 unique battle pets.",
keywords={"Flying","Menagerie"},
pet=325,
},[[
step
collect Brilliant Kaliri##71387 |n
|tip This will be in your mailbox after you have collected 125 unique battle pets.
|tip You can use our battle pets guides to help you collect more pets.
use the Brilliant Kaliri##71387
Learn the "Brilliant Kaliri" Battle Pet |learnpet Brilliant Kaliri##325
step
_Congratulations!_
You Collected the "Brilliant Kaliri" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Cenarion Hatchling",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet used to be available to purchase from the Blizzard store.",
keywords={"Flying","Blizzard","Store"},
pet=316,
},[[
step
collect Cenarion Hatchling##70099 |n
|tip This pet is no longer availble to purchase from the Blizzard store.
|tip Blizzard may bring it back at some point in the future.
|tip Check your mailbox after you purchase this battle pet from the Blizzard website.
use the Cenarion Hatchling##70099
Learn the "Cenarion Hatchling" Battle Pet |learnpet Cenarion Hatchling##316
step
_Congratulations!_
You Collected the "Cenarion Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Chicken",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Eastvale Logging Camp in Elwynn Forest.",
keywords={"Flying","Elwynn","Forest"},
pet=646,
},[[
step
clicknpc Chicken##62664
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Chicken" Battle Pet |learnpet Chicken##646 |goto Elwynn Forest/0 78.21,66.55
step
_Congratulations!_
You Collected the "Chicken" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Cockatiel",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a vendor in Booty Bay.",
keywords={"Flying","Booty","Bay"},
pet=47,
},[[
step
talk Narkk##2663
|tip He is inside the building.
buy Parrot Cage (Cockatiel)##8496 |n
collect Parrot Cage (Cockatiel)##8496 |n
|tip This pet is cageable, meaning it can be purchased from the Auction House.
use the Parrot Cage (Cockatiel)##8496
|tip It is inside your inventory.
Learn the "Cockatiel" Battle Pet |learnpet Cockatiel##47 |goto The Cape of Stranglethorn/0 42.64,69.10
step
_Congratulations!_
You Collected the "Cockatiel" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Crested Owl",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild all around Teldrassil.",
keywords={"Flying","Teldrassil"},
pet=507,
},[[
step
talk Zidormi##141489
Tell her _"Can you show me what Darkshore was like before the battle?"_
Travel to the past |complete ZGV.InPhase("Old Darnassus") |goto Darkshore/0 48.86,24.46
step
clicknpc Crested Owl##62242
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Crested Owl" Battle Pet |learnpet Crested Owl##507 |goto Teldrassil/0 52.69,58.06
step
_Congratulations!_
You Collected the "Crested Owl" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Crimson Moth",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around the Kal'ai Ruins in Northern Stranglethorn.",
keywords={"Flying","Northern","Stranglethorn"},
pet=421,
},[[
step
clicknpc Crimson Moth##61314
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Crimson Moth" Battle Pet |learnpet Crimson Moth##421 |goto Northern Stranglethorn/0 38.92,40.06
step
_Congratulations!_
You Collected the "Crimson Moth" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Crow",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around the forest areas in Darkmoon Island.",
keywords={"Flying","Darkmoon","Faire"},
pet=1068,
},[[
step
click Portal to the Darkmoon Faire |goto Mulgore/0 36.85,35.84
|tip The Darkmoon Faire is only available during the first week of every month.
Teleport to the Darkmoon Faire |goto Darkmoon Island/0 51.29,23.86 |c
step
clicknpc Crow##67443
|tip They appear more often as a secondary pet, try battling any pet you find in the forest areas.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Crow" Battle Pet |learnpet Crow##1068 |goto 37.39,70.52
step
_Congratulations!_
You Collected the "Crow" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Darkmoon Glowfly",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around the forest areas in Darkmoon Island.",
keywords={"Flying","Darkmoon","Faire"},
pet=1062,
},[[
step
click Portal to the Darkmoon Faire |goto Mulgore/0 36.85,35.84
|tip The Darkmoon Faire is only available during the first week of every month.
Teleport to the Darkmoon Faire |goto Darkmoon Island/0 51.29,23.86 |c
step
clicknpc Darkmoon Glowfly##67329
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Darkmoon Glowfly" Battle Pet |learnpet Darkmoon Glowfly##1062 |goto 45.73,50.78
step
_Congratulations!_
You Collected the "Darkmoon Glowfly" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Dragon Kite",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be obtained through the World of Warcraft Trading Card Game.",
keywords={"Beast","Trading","Card","Game"},
pet=169,
},[[
step
talk Landro Longshot##17249
Tell him _"What promotions do you have?"_
Tell him _"March of the Legion"_
Tell him _"Kite"_
collect Dragon Kite##34493 |n
|tip This pet was a reward in the WoW trading card game.
|tip The trading card game is no longer available but you can purchase a code from a third party site.
|tip This pet is cageable, meaning it can be purchased from the Auction House.
use the Dragon Kite##34493
Learn the "Dragon Kite" Battle Pet |learnpet Dragon Kite##169 |goto The Cape of Stranglethorn/0 42.63,71.49
step
_Congratulations!_
You Collected the "Dragon Kite" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Dragonbone Hatchling",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around The Dragon Wastes in Dragonblight.",
keywords={"Flying","Dragonblight"},
pet=537,
},[[
step
clicknpc Dragonbone Hatchling##62852
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Dragonbone Hatchling" Battle Pet |learnpet Dragonbone Hatchling##537 |goto Dragonblight/0 54.41,40.55
step
_Congratulations!_
You Collected the "Dragonbone Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Firefly",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet is a zone drop in Zangarmarsh.",
keywords={"Flying","Zangarmarsh"},
pet=146,
},[[
step
kill Bogflare Needler##20197+
You can find more around [48.18,31.58]
collect Captured Firefly##29960 |n
|tip This has a 0.08% chance to drop, it may take some time to get this.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Captured Firefly##29960
|tip It is in your inventory.
Learn the "Firefly" Battle Pet |learnpet Firefly##146 |goto Zangarmarsh/0 42.42,34.43
step
_Congratulations!_
You Collected the "Firefly" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Fledgling Buzzard",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around the hills in northern Redridge Mountains.",
keywords={"Flying","Redridge","Mountains"},
pet=395,
},[[
step
clicknpc Fledgling Buzzard##61171
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Fledgling Buzzard" Battle Pet |learnpet Fledgling Buzzard##395 |goto Redridge Mountains/0 28.48,23.10
step
_Congratulations!_
You Collected the "Fledgling Buzzard" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Fledgling Nether Ray",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around most Manaforges in Netherstorm.",
keywords={"Flying","Netherstorm"},
pet=521,
},[[
step
clicknpc Fledgling Nether Ray##62627
|tip They can be found around most Manaforges in Netherstorm.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Fledgling Nether Ray" Battle Pet |learnpet Fledgling Nether Ray##521 |goto Netherstorm/0 28.14,44.61
You can find more around [25.55,66.82]
You can find more around [46.21,80.68]
You can find more around [57.10,66.61]
step
_Congratulations!_
You Collected the "Fledgling Nether Ray" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Forest Moth",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild all around Ashenvale.",
keywords={"Flying","Ashenvale"},
pet=478,
},[[
step
clicknpc Forest Moth##62177
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Forest Moth" Battle Pet |learnpet Forest Moth##478 |goto Ashenvale/0 57.96,72.29
step
_Congratulations!_
You Collected the "Forest Moth" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Fungal Moth",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Upper Silvermarsh in Deepholm.",
keywords={"Flying","Deepholm"},
pet=756,
},[[
step
clicknpc Fungal Moth##62916
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Fungal Moth" Battle Pet |learnpet Fungal Moth##756 |goto Deepholm/0 70.92,64.16
step
_Congratulations!_
You Collected the "Fungal Moth" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Green Wing Macaw",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from Defias Pirates inside the Deadmines dungeon.",
keywords={"Flying","Deadmines"},
pet=50,
},[[
step
Enter the Deadmines Dungeon |goto The Deadmines/1 0.00,0.00 |c |or
|tip You can use the Deadmines dungeon guide if you need help getting through the dungeon.
'|learnpet Green Wing Macaw##50 |or
step
kill Defias Pirate##48522+
collect Parrot Cage (Green Wing Macaw)##8492 |n
|tip This has a 2.67% chance to drop, it may take some time to get it.
use the Parrot Cage (Green Wing Macaw)##8492
|tip It is in your inventory.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
Learn the "Green Wing Macaw" Battle Pet |learnpet Green Wing Macaw##50
step
_Congratulations!_
You Collected the "Green Wing Macaw" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Grey Moth",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild all around Azuremyst Isle.",
keywords={"Flying","Azuremyst","Isle"},
pet=464,
},[[
step
clicknpc Grey Moth##62050
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Grey Moth" Battle Pet |learnpet Grey Moth##464 |goto Azuremyst Isle/0 44.34,31.29
step
_Congratulations!_
You Collected the "Grey Moth" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Gryphon Hatchling",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet was previously purchasable on the Blizzard store but is currently no longer available.",
keywords={"Flying","Blizzard","Store"},
pet=245,
},[[
step
collect Gryphon Hatchling##49662 |n
|tip This was a code given out when you purchased the Wind Rider Plushy from the Blizzard store.
|tip This is no longer available to purchase from the Blizzard store.
|tip After you reedeem the code on the Blizzard store your Wind Rider Cub will be in your inventory or mailbox.
use the Gryphon Hatchling##49662
Learn the "Gryphon Hatchling" Battle Pet |learnpet Gryphon Hatchling##245
step
_Congratulations!_
You Collected the "Gryphon Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Guardian Cub",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet used to be available to purchase on the Blizzard Store but is no longer available.",
keywords={"Flying","Blizzard","Store"},
pet=311,
},[[
step
collect Guardian Cub##72068 |n
|tip This battle pet used to be available to purchase from the Blizzard store but is no longer available.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
|tip Check your mailbox after you purchase this battle pet from the Auction House.
use the Guardian Cub##72068
Learn the "Guardian Cub" Battle Pet |learnpet Guardian Cub##311
step
_Congratulations!_
You Collected the "Guardian Cub" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Highlands Turkey",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Vermillion Redoubt in the Twilight Highlands.",
keywords={"Flying","Twilight","Highlands"},
pet=645,
},[[
step
clicknpc Highlands Turkey##62906
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Highlands Turkey" Battle Pet |learnpet Highlands Turkey##645 |goto Twilight Highlands/0 27.95,32.82
step
_Congratulations!_
You Collected the "Highlands Turkey" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Hippogryph Hatchling",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be obtained through the World of Warcraft Trading Card Game.",
keywords={"Flying","Trading","Card","Game"},
pet=130,
},[[
step
talk Landro Longshot##17249
Tell him _"What promotions do you have?"_
Tell him _"Heroes of Azeroth"_
Tell him _"Hippogryph Hatchling"_
collect Hippogryph Hatchling##23713 |n
|tip This pet was a reward in the WoW trading card game.
|tip The trading card game is no longer available but you can purchase a code from a third party site.
|tip This pet is cageable, meaning it can be purchased from the Auction House.
use the Hippogryph Hatchling##23713
Learn the "Hippogryph Hatchling" Battle Pet |learnpet Hippogryph Hatchling##130 |goto The Cape of Stranglethorn/0 42.63,71.49
step
_Congratulations!_
You Collected the "Hippogryph Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Horde Balloon",{
patch='unknown',
source='Quest',
author="support@zygorguides.com",
description="\nThis battle pet is given as a reward for completing the Horde quest Blown Away.",
keywords={"Flying","Blown","Away"},
pet=332,
},[[
step
talk Jaga##54004
accept Blown Away##29401 |goto Orgrimmar/1 48.11,46.84
step
click Windswept Balloon##209058+
|tip They look like red balloons floating in the air around this area.
|tip You can find them all around Orgrimmar.
collect Windswept Balloon##71034 |q 29401/1 |goto 49.86,56.60
step
talk Jaga##54004
turnin Blown Away##29401 |goto 48.11,46.85
step
collect Horde Balloon##72045 |n
use the Horde Balloon##72045
|tip It is in your inventory.
Learn the "Horde Balloon" Battle Pet |learnpet Horde Balloon##332
step
_Congratulations!_
You Collected the "Horde Balloon" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Hyacinth Macaw",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet is a zone drop in Northern Stranglethorn and The Cape of Stranglethorn.",
keywords={"Flying","Northern","Stranglethorn"},
pet=49,
},[[
step
Kill enemies around this area
collect Parrot Cage (Hyacinth Macaw)##8494 |n
|tip This is a rare drop from killing any mob in Northern Stranglethorn and The Cape of Stranglethorn.
|tip It may take some time to get this.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Parrot Cage (Hyacinth Macaw)##8494
|tip It is in your inventory.
Learn the "Hyacinth Macaw" Battle Pet |learnpet Hyacinth Macaw##49 |goto Northern Stranglethorn/0 59.50,57.80
step
_Congratulations!_
You Collected the "Hyacinth Macaw" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Imperial Eagle Chick",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild all around the Grizzly Hills.",
keywords={"Flying","Grizzly","Hills"},
pet=534,
},[[
step
clicknpc Imperial Eagle Chick##62819
|tip You can find them flying around rocks and trees all around the Grizzly Hills.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Imperial Eagle Chick" Battle Pet |learnpet Imperial Eagle Chick##534 |goto Grizzly Hills/0 65.10,51.55
step
_Congratulations!_
You Collected the "Imperial Eagle Chick" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Miniwing",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet is given as a reward for completing the quest Skywing in Terokkar Forest.",
keywords={"Flying","Terokkar","Forest"},
pet=149,
},[[
step
talk Skywing##22424
|tip He flies around this area.
accept Skywing##10898 |goto Terokkar Forest/0 53.77,72.43
step
Kill Shalassi enemies around this area
|tip Escort Skywing and kill any Shalassi enemies you encounter with him.
kill Luanga the Imprisoner##18533
Watch the dialogue
Escort Skywing |q 10898/1 |goto 55.68,69.58
step
talk Rilak the Redeemed##22292
turnin Skywing##10898 |goto Shattrath City/0 52.56,20.99
step
collect Miniwing##31760 |n
use the Miniwing##31760
|tip It is in your inventory.
Learn the "Miniwing" Battle Pet |learnpet Miniwing##149
step
_Congratulations!_
You Collected the "Miniwing" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Nether Faerie Dragon",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Dire Maul in Feralas.",
keywords={"Flying","Feralas"},
pet=557,
},[[
step
clicknpc Nether Faerie Dragon##62395
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Nether Faerie Dragon" Battle Pet |learnpet Nether Faerie Dragon##557 |goto Feralas/0 59.07,45.83
step
_Congratulations!_
You Collected the "Nether Faerie Dragon" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Nether Ray Fry",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a vendor in Terokkar Forest after you reach Exalted reputation with the Sha'tari Skyguard.",
keywords={"Flying","Sha'tari","Skyguard"},
pet=186,
},[[
step
talk Grella##23367
buy Nether Ray Fry##38628 |n
|tip You have to have exalted reputation with the Sha'tari Skyguard faction in order to purchase items from this vendor.
|tip Use the Sha'tari Skyguard reputation guide to help you raise your reputation level.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
collect Nether Ray Fry##38628 |n
use the Nether Ray Fry##38628
|tip It is in your inventory.
Learn the "Nether Ray Fry" Battle Pet |learnpet Nether Ray Fry##186 |goto Terokkar Forest/0 64.29,66.24
step
_Congratulations!_
You Collected the "Nether Ray Fry" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Oasis Moth",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild all around Uldum.",
keywords={"Flying","Uldum"},
pet=544,
},[[
step
talk Zidormi##141489
Tell her _"Can you show me what Uldum was like during the time of the Cataclysm?"_
Travel to the past |complete ZGV.InPhase("Old Uldum") |goto Uldum New/0 56.02,35.14
step
clicknpc Oasis Moth##62895
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Oasis Moth" Battle Pet |learnpet Oasis Moth##544 |goto Uldum/0 55.28,49.20
step
_Congratulations!_
You Collected the "Oasis Moth" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Parrot",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Misty Reed Farm in the Swamp of Sorrows.",
keywords={"Flying","Swamp","Of","Sorrows"},
pet=403,
},[[
step
clicknpc Parrot##61313
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Parrot" Battle Pet |learnpet Parrot##403 |goto Swamp of Sorrows/0 79.51,76.53
You can find more around [68.16,68.17]
You can find more around [39.95,49.89]
You can find more around [33.65,52.62]
step
_Congratulations!_
You Collected the "Parrot" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Polly",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild all around Northern Stranglethorn.",
keywords={"Flying","Northern","Stranglethorn"},
pet=409,
},[[
step
clicknpc Polly##61322
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Polly" Battle Pet |learnpet Polly##409 |goto Northern Stranglethorn/0 62.50,31.59
step
_Congratulations!_
You Collected the "Polly" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Red Moth",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a vendor in Netherstorm.",
keywords={"Flying","Netherstorm"},
pet=139,
},[[
step
talk Dealer Rashaad##20980
buy Red Moth Egg##29902 |n
collect Red Moth Egg##29902 |n
|tip This pet is cageable, meaning it can be purchased from the Auction House.
use the Red Moth Egg##29902
|tip It is inside your inventory.
Learn the "Red Moth" Battle Pet |learnpet Red Moth##139 |goto Netherstorm/0 43.51,35.27
step
_Congratulations!_
You Collected the "Red Moth" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Sea Gull",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around the Northeast coast of Tanaris.",
keywords={"Flying","Tanaris"},
pet=560,
},[[
step
clicknpc Sea Gull##62953
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Sea Gull" Battle Pet |learnpet Sea Gull##560 |goto Tanaris/0 53.14,33.30
step
_Congratulations!_
You Collected the "Sea Gull" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Senegal",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a vendor in Booty Bay.",
keywords={"Flying","Booty","Bay"},
pet=51,
},[[
step
talk Narkk##2663
|tip He is inside the building.
buy Parrot Cage (Senegal)##8495 |n
collect Parrot Cage (Senegal)##8495 |n
|tip This pet is cageable, meaning it can be purchased from the Auction House.
use the Parrot Cage (Senegal)##8495
|tip It is inside your inventory.
Learn the "Senegal" Battle Pet |learnpet Senegal##51 |goto The Cape of Stranglethorn/0 42.64,69.10
step
_Congratulations!_
You Collected the "Senegal" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Silky Moth",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around The Verdant Thicket in Mount Hyjal.",
keywords={"Flying","Mount","Hyjal"},
pet=503,
},[[
step
clicknpc Silky Moth##62373
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Silky Moth" Battle Pet |learnpet Silky Moth##503 |goto Mount Hyjal/0 41.32,24.75
step
_Congratulations!_
You Collected the "Silky Moth" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Snowy Owl",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild during the winter months in Winterspring.",
keywords={"Flying","Winterspring"},
pet=69,
},[[
step
clicknpc Snowy Owl##7554
|tip This pet only spawns during the winter months of the year.
|tip They will start spawning on December 21st and end spawning March 20th.
|tip They spawn all over Winterspring.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Snowy Owl" Battle Pet |learnpet Snowy Owl##69 |goto Winterspring/0 56.22,37.86
step
_Congratulations!_
You Collected the "Snowy Owl" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Swamp Moth",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild all around the Swamp of Sarrows.",
keywords={"Flying","Swamp","Of","Sorrows"},
pet=402,
},[[
step
clicknpc Swamp Moth##61370
|tip This is a rare spawn, it may take you some time to get it.
|tip They tend to pop up as secondary pets so you may find one faster through battles.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Swamp Moth" Battle Pet |learnpet Swamp Moth##402 |goto Swamp of Sorrows/0 42.10,43.70
You can find more around [35.84,44.13]
You can find more around [29.09,48.78]
You can find more around [26.93,56.61]
You can find more around [38.72,55.93]
step
_Congratulations!_
You Collected the "Swamp Moth" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Tainted Moth",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild all around Felwood.",
keywords={"Flying","Felwood"},
pet=498,
},[[
step
clicknpc Tainted Moth##62315
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Tainted Moth" Battle Pet |learnpet Tainted Moth##498 |goto Felwood/0 42.33,52.15
step
_Congratulations!_
You Collected the "Tainted Moth" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Tickbird Hatchling",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a vendor in Sholazar Basin after you reach revered reputation with The Oracles.",
keywords={"Flying","The","Oracles"},
pet=194,
},[[
step
Reach Revered Status with The Oracles |complete rep('The Oracles') >= Revered
|tip Use The Oracles Reputation Guide to help you raise your reputation level.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
talk Geen##31910
buy Mysterious Egg##39878 |n
use the Cracked Egg##39883
|tip After 3 days the "Mysterious Egg" will turn in to a "Cracked Egg".
collect Tickbird Hatchling##39896 |n
|tip There are 6 different rewards you can receive from the Cracked Egg, this may take you several attempts.
use the Tickbird Hatchling##39896
Learn the "Tickbird Hatchling" Battle Pet |learnpet Tickbird Hatchling##194 |goto Sholazar Basin/0 54.57,56.13
step
_Congratulations!_
You Collected the "Tickbird Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Tiny Sporebat",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a vendor in Zangarmarsh after reaching Exalted reputation with Sporeggar.",
keywords={"Flying","Sporeggar"},
pet=167,
},[[
step
Reach Exalted Status with the Sporeggar Faction |complete rep('Sporeggar') >= Exalted
|tip Use the Sporeggar reputation guide to help you raise your reputation level.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
talk Mycah##18382
buy Tiny Sporebat##34478 |n
|tip It costs 30 Glowcaps.
collect Tiny Sporebat##34478 |n
use the Tiny Sporebat##34478
|tip It is in your inventory.
Learn the "Tiny Sporebat" Battle Pet |learnpet Tiny Sporebat##167 |goto Zangarmarsh/0 18.27,51.12
step
_Congratulations!_
You Collected the "Tiny Sporebat" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Turkey",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Valgarde and Westguard Keep in the Howling Fjord.",
keywords={"Flying","Howling","Fjord"},
pet=525,
},[[
step
clicknpc Turkey##62648
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Turkey" Battle Pet |learnpet Turkey##525 |goto Howling Fjord/0 59.62,61.79
You can find more around [31.66,42.88]
step
_Congratulations!_
You Collected the "Turkey" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Tuskarr Kite",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be obtained through the World of Warcraft Trading Card Game.",
keywords={"Flying","Trading","Card","Game"},
pet=241,
},[[
step
talk Landro Longshot##17249
Tell him _"What promotions do you have?"_
Tell him _"Scourgewar"_
Tell him _"Tuskarr Kite"_
collect Tuskarr Kite##49287 |n
|tip This pet was a reward in the WoW trading card game.
|tip The trading card game is no longer available but you can purchase a code from a third party site.
|tip This pet is cageable, meaning it can be purchased from the Auction House.
use the Tuskarr Kite##49287
Learn the "Tuskarr Kite" Battle Pet |learnpet Tuskarr Kite##241 |goto The Cape of Stranglethorn/0 42.63,71.49
step
_Congratulations!_
You Collected the "Tuskarr Kite" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\White Tickbird Hatchling",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a vendor in Sholazar Basin after you reach revered reputation with The Oracles.",
keywords={"Flying","The","Oracles"},
pet=195,
},[[
step
Reach Revered Status with The Oracles |complete rep('The Oracles') >= Revered
|tip Use The Oracles Reputation Guide to help you raise your reputation level.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
step
talk Geen##31910
buy Mysterious Egg##39878 |n
use the Cracked Egg##39883
|tip After 3 days the "Mysterious Egg" will turn in to a "Cracked Egg".
collect White Tickbird Hatchling##39899 |n
|tip There are 6 different rewards you can receive from the Cracked Egg, this may take you several attempts.
use the White Tickbird Hatchling##39899
Learn the "White Tickbird Hatchling" Battle Pet |learnpet White Tickbird Hatchling##195 |goto Sholazar Basin/0 54.57,56.13
step
_Congratulations!_
You Collected the "White Tickbird Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Wildhammer Gryphon Hatchling",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Kirthaven and Thundermar in the Twilight Highlands.",
keywords={"Flying","Twilight","Highlands"},
pet=548,
},[[
step
clicknpc Wildhammer Gryphon Hatchling##62900
|tip You can not battle them in the city if you are Horde, instead you will have to battle pets around the area and try to get one to show up as a secondary.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Wildhammer Gryphon Hatchling" Battle Pet |learnpet Wildhammer Gryphon Hatchling##548 |goto Twilight Highlands/0 56.53,15.63
You can find more around [48.43,28.49]
step
_Congratulations!_
You Collected the "Wildhammer Gryphon Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Anubisath Idol",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from Emperor Vek'lor inside the Ahn'Qiraj raid.",
keywords={"Humanoid","Ahn'Qiraj"},
pet=1155,
},[[
step
Enter the Ahn'Qiraj Raid |goto Ahn'Qiraj/2 0.00,0.00 |c |or
|tip You can use the Ahn'Qiraj raid guide if you need help getting through the raid.
'|learnpet Anubisath Idol##1155 |or
step
kill Emperor Vek'lor##15276
collect Anubisath Idol##93040 |n
|tip This has a 1 in 10 chance to drop, it may take several attempts to get it.
use the Anubisath Idol##93040
|tip It is in your inventory.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
Learn the "Anubisath Idol" Battle Pet |learnpet Anubisath Idol##1155
step
_Congratulations!_
You Collected the "Anubisath Idol" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Corefire Imp",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from the raid boss Magmadar inside the Molten Core raid.",
keywords={"Humanoid","Molten","Core"},
pet=1149,
},[[
step
talk Lothos Riftwaker##14387
Tell him _"Transport me to the Molten Core, Lothos."_
|tip You can use the Molten Core guide if you need help getting through the raid.
Teleport to the Molten Core Raid |goto Molten Core/1 0.00,0.00  |c |or
'|learnpet Corefire Imp##1149 |or
step
kill Magmadar##11982
collect Blazing Rune##93034 |n
|tip This has a 21.14% chance to drop, it may take a few attempts to get it.
use the Blazing Rune##93034
|tip It is in your inventory.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
Learn the "Corefire Imp" Battle Pet |learnpet Corefire Imp##1149
step
_Congratulations!_
You Collected the "Corefire Imp" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Curious Wolvar Pup",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet is given as a reward after completing Children's Week Quests.",
keywords={"Humanoid","Children's","Week"},
pet=226,
},[[
step
collect Curious Wolvar Pup##46544 |n
|tip This pet is a reward for completing the Children's Week quests in Northrend.
|tip You can use our Children's Week Dalaran Wolvar Quests guide to help you complete these quests.
|tip You can only choose 3 pets a year as a reward for Children's Week.
use the Curious Wolvar Pup##46544
|tip It will be in your mailbox.
Learn the "Curious Wolvar Pup" Battle Pet |learnpet Curious Wolvar Pup##226
step
_Congratulations!_
You Collected the "Curious Wolvar Pup" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Deathy",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet was given out to people who attended the 2010 Blizzcon Event.",
keywords={"Humanoid","Blizzcon","Event"},
pet=294,
},[[
step
collect Smoldering Murloc Egg##67418 |n
|tip This battle pet was given out as a code to people who attended the 2010 Blizzcon Event.
|tip This code is no longer given out, but you may find one online on a third party website.
|tip Check your mailbox after you enter the code on the Blizzard website.
use the Smoldering Murloc Egg##67418
Learn the "Deathy" Battle Pet |learnpet Deathy##294
step
_Congratulations!_
You Collected the "Deathy" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Feral Vermling",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet is rewarded to you after you have collected 250 unique battle pets.",
keywords={"Humanoid","Going","To","Need","More","Leases"},
pet=821,
},[[
step
collect Feral Vermling##85578 |n
|tip This will be in your mailbox after you have collected 250 unique battle pets.
|tip You can use our battle pets guides to help you collect more pets.
use the Feral Vermling##85578
Learn the "Feral Vermling" Battle Pet |learnpet Feral Vermling##821
step
_Congratulations!_
You Collected the "Feral Vermling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Flayer Youngling",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Razorthorn Rise in Terokkar Forest.",
keywords={"Humanoid","Terokkar","Forest"},
pet=514,
},[[
step
clicknpc Flayer Youngling##62555
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Flayer Youngling" Battle Pet |learnpet Flayer Youngling##514 |goto Terokkar Forest/0 53.41,12.89
step
_Congratulations!_
You Collected the "Flayer Youngling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Gregarious Grell",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be obtained through the World of Warcraft Trading Card Game.",
keywords={"Humanoid","Trading","Card","Game"},
pet=333,
},[[
step
talk Landro Longshot##17249
Tell him _"What promotions do you have?"_
Tell him _"Crown of Heaven"_
Tell him _"Gregarious Grell Pet"_
collect Grell Moss##72134 |n
|tip This pet was a reward in the WoW trading card game.
|tip The trading card game is no longer available but you can purchase a code from a third party site.
|tip This pet is cageable, meaning it can be purchased from the Auction House.
use the Grell Moss##72134
Learn the "Gregarious Grell" Battle Pet |learnpet Gregarious Grell##333 |goto The Cape of Stranglethorn/0 42.63,71.49
step
_Congratulations!_
You Collected the "Gregarious Grell" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Grunty",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet was given out to people who attended the 2009 Blizzcon Event.",
keywords={"Humanoid","Blizzcon","Event"},
pet=228,
},[[
step
collect Heavy Murloc Egg##46802 |n
|tip This battle pet was given out as a code to people who attended the 2009 Blizzcon Event.
|tip This code is no longer given out, but you may find one online on a third party website.
|tip Check your mailbox after you enter the code on the Blizzard website.
use the Heavy Murloc Egg##46802
Learn the "Grunty" Battle Pet |learnpet Grunty##228
step
_Congratulations!_
You Collected the "Grunty" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Gurky",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet was given out to people who participated in fansite contests on the European servers.",
keywords={"Humanoid","Fansite","Contest"},
pet=121,
},[[
step
collect Pink Murloc Egg##22114 |n
|tip This battle pet was given out as a prize to people who participated in WoW fansite contests in Europe.
|tip This code is no longer given out, but you may find one online on a third party website.
|tip Check your mailbox after you enter the code on the Blizzard website.
use the Pink Murloc Egg##22114
Learn the "Gurky" Battle Pet |learnpet Gurky##121
step
_Congratulations!_
You Collected the "Gurky" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Harbinger of Flame",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from the raid boss Sulfuron Harbinger inside the Molten Core raid.",
keywords={"Humanoid","Molten","Core"},
pet=1147,
},[[
step
talk Lothos Riftwaker##14387
Tell him _"Transport me to the Molten Core, Lothos."_
|tip You can use the Molten Core guide if you need help getting through the raid.
Teleport to the Molten Core Raid |goto Molten Core/1 0.00,0.00  |c |or
'|learnpet Harbinger of Flame##1147 |or
step
kill Sulfuron Harbinger##12098
collect Mark of Flame##93033 |n
|tip This has a 19.26% chance to drop, it may take a few attempts to get it.
use the Mark of Flame##93033
|tip It is in your inventory.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
Learn the "Harbinger of Flame" Battle Pet |learnpet Harbinger of Flame##1147
step
_Congratulations!_
You Collected the "Harbinger of Flame" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Harpy Youngling",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around The Dry Hills in the Northern Barrens.",
keywords={"Humanoid","Northern","Barrens"},
pet=1157,
},[[
step
clicknpc Harpy Youngling##68804
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Harpy Youngling" Battle Pet |learnpet Harpy Youngling##1157 |goto Northern Barrens/0 25.85,35.22
step
_Congratulations!_
You Collected the "Harpy Youngling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Hopling",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet is a reward for completing the achievement Ling-Ting's Herbal Journey.",
keywords={"Humanoid","Ling-Ting's","Herbal","Journey"},
pet=835,
},[[
step
Complete the Achievement Ling-Tings's Herbal Journey |complete achieved(6402)
|tip The Hopling battle pet is a reward given to you after you complete the achievement Ling-Ting's Herbal Journey.
|tip You can use the Ling-Ting's Herbal Journey achievement guide to help you complete it.
step
collect Hopling##86562 |n
use the Pink Murloc Egg##22114
|tip It is in your inventory.
Learn the "Hopling" Battle Pet |learnpet Hopling##835
step
_Congratulations!_
You Collected the "Hopling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Kun-Lai Runt",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around the central mountain areas in Kun-Lai Summit.",
keywords={"Humanoid","Kun-Lai","Summit"},
pet=1166,
},[[
step
clicknpc Kun-Lai Runt##68846
|tip This is a rare spawn, it may take some time to find them.
|tip If you are having trouble finding them try battling a few other pets in the area to refresh the spawns.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Kun-Lai Runt" Battle Pet |learnpet Kun-Lai Runt##1166 |goto Kun-Lai Summit/0 48.35,48.86
step
_Congratulations!_
You Collected the "Kun-Lai Runt" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Lurky",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet was given out to people who purchased the Burning Crusade Collector's Edition on the European servers.",
keywords={"Humanoid","Collector's","Edition"},
pet=111,
},[[
step
collect Lurky's Egg##30360 |n
|tip This battle pet was given out as compensation due to and error to Eu players who purchased the Burning Crusade Collector's Edition.
|tip This battle pet is no longer available.
use the Lurky's Eggs##30360
Learn the "Lurky" Battle Pet |learnpet Lurky##24988
step
_Congratulations!_
You Collected the "Lurky" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Mini Tyrael",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet was given out to people who attended the 2008 Blizzard World Wide Event.",
keywords={"Humanoid","Blizzard","Event"},
pet=189,
},[[
step
collect Tyrael's Hilt##39656 |n
|tip This battle pet was given out as a code to people who attended the 2008 Blizzard Worldwide Event.
|tip This code is no longer given out, but you may find one online on a third party website.
|tip Check your mailbox after you enter the code on the Blizzard website.
use the Tyrael's Hilt##39656
Learn the "Mini Tyrael" Battle Pet |learnpet Mini Tyrael##189
step
_Congratulations!_
You Collected the "Mini Tyrael" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Murkablo",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet was given out to people who attended the 2011 Blizzcon Event.",
keywords={"Humanoid","Blizzcon","Event"},
pet=329,
},[[
step
collect Murky's Little Soulstone##71726 |n
|tip This battle pet was given out as a code to people who attended the 2011 Blizzcon Event.
|tip This code is no longer given out, but you may find one online on a third party website.
|tip Check your mailbox after you enter the code on the Blizzard website.
use the Murky's Little Soulstone##71726
Learn the "Murkablo" Battle Pet |learnpet Murkablo##329
step
_Congratulations!_
You Collected the "Murkablo" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Murkalot",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet was given out to people who purchased a 2013 Blizzcon virtual ticket.",
keywords={"Humanoid","Blizzcon","Event"},
pet=1364,
},[[
step
collect Murkalot's Flail##106244 |n
|tip This battle pet was given out as a code to people who purchased a virtual ticket to the 2013 Blizzcon Event.
|tip This code is no longer given out, but you may find one online on a third party website.
|tip Check your mailbox after you enter the code on the Blizzard website.
use the Murkalot's Flail##106244
Learn the "Murkalot" Battle Pet |learnpet Murkalot##1364
step
_Congratulations!_
You Collected the "Murkalot" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Murkimus the Gladiator",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet was given out to people who participated in the World of Warcraft Arena Pass.",
keywords={"Humanoid","Arena","Pass"},
pet=217,
},[[
step
collect Murkimus' Tiny Spear##46892 |n
|tip This battle pet was given out to people who competed in 50 matches during the WoW Arena Pass in 2009 and 2013.
|tip This battle pet is no longer given out but they may bring the event back at some point.
use the Murkimus' Tiny Spear##46892
Learn the "Murkimus the Gladiator" Battle Pet |learnpet Murkimus the Gladiator##217
step
_Congratulations!_
You Collected the "Murkimus the Gladiator" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Murki",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet was given out to players who participated in a promotional event in Korea.",
keywords={"Humanoid","Promotional","Event"},
pet=1168,
},[[
step
collect Orange Murloc Egg##20651 |n
|tip This battle pet was given out to players on the Korean servers during a promotional event.
|tip This battle pet is no longer available.
use the Orange Murloc Egg##20651
Learn the "Murki" Battle Pet |learnpet Murki##1168
step
_Congratulations!_
You Collected the "Murki" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Murky",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet was given out to people who attended the 2005 Blizzcon Event.",
keywords={"Humanoid","Blizzcon","Event"},
pet=107,
},[[
step
collect Blue Murloc Egg##20371 |n
|tip This battle pet was given out as a code to people who attended the 2005 Blizzcon Event.
|tip This code is no longer given out, but you may find one online on a third party website.
|tip Check your mailbox after you enter the code on the Blizzard website.
use the Blue Murloc Egg##20371
Learn the "Murky" Battle Pet |learnpet Murky##107
step
_Congratulations!_
You Collected the "Murky" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Pandaren Monk",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from the Blizzard store.",
keywords={"Humanoid","Blizzard","Store"},
pet=248,
},[[
step
collect Pandaren Monk##49665 |n
|tip Check your mailbox after you purchase this battle pet from the Blizzard website.
use the Pandaren Monk##49665
Learn the "Pandaren Monk" Battle Pet |learnpet Pandaren Monk##248
step
_Congratulations!_
You Collected the "Pandaren Monk" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Qiraji Guardling",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around the Scarab Wall in Silithus during the Summer.",
keywords={"Humanoid","Silithus"},
pet=513,
},[[
step
talk Zidormi##141489
Tell her _"Can you show me what Silithus was like before the Wound in the World?"_
Travel to the past |complete ZGV.InPhase("Old Silithus") |goto Silithus/0 78.93,21.98
step
clicknpc Qiraji Guardling##62526
|tip This pet will only spawn during the summer time.
|tip They will start spawning on June 21st and stop on September 23rd.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Qiraji Guardling" Battle Pet |learnpet Qiraji Guardling##513 |goto 35.71,79.65
step
_Congratulations!_
You Collected the "Qiraji Guardling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Sporeling Sprout",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Sporeggar in Zangarmarsh.",
keywords={"Humanoid","Zangarmarsh"},
pet=515,
},[[
step
clicknpc Sporeling Sprout##62564
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Sporeling Sprout" Battle Pet |learnpet Sporeling Sprout##515 |goto Zangarmarsh/0 17.43,49.97
step
_Congratulations!_
You Collected the "Sporeling Sprout" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Stunted Yeti",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Feral Scar Vale in Feralas.",
keywords={"Humanoid","Feralas"},
pet=1158,
},[[
step
clicknpc Stunted Yeti##68805
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Stunted Yeti" Battle Pet |learnpet Stunted Yeti##1158 |goto Feralas/0 53.73,55.18
step
_Congratulations!_
You Collected the "Stunted Yeti" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Arcane Eye",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Karazhan in Deadwind Pass.",
keywords={"Magic","Deadwind","Pass"},
pet=1160,
},[[
step
clicknpc Arcane Eye##68819
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Arcane Eye" Battle Pet |learnpet Arcane Eye##1160 |goto Deadwind Pass/0 48.31,75.72
step
_Congratulations!_
You Collected the "Arcane Eye" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Darkmoon Eye",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet is a reward for defeating Jeremy Feasel in a pet battle at the Darkmoon Faire.",
keywords={"Magic","Darkmoon","Faire"},
pet=1063,
},[[
step
click Portal to the Darkmoon Faire |goto Mulgore/0 36.85,35.84
|tip The Darkmoon Faire is only available during the first week of every month.
Teleport to the Darkmoon Faire |goto Darkmoon Island/0 51.29,23.86 |c
step
talk Jeremy Feasel##67370
accept Darkmoon Pet Battle!##32175 |goto 47.04,62.76
step
talk Jeremy Feasel##67370
Tell him _"I challenge you to a pet battle!"_
|tip This costs one Darkmoon Game token.
|tip Jeremy's pets are all level 25 epic.
|tip He has a magic, a mechanical, and a beast pet.
Defeat Jeremy Feasel |q 32175/1 |goto 47.56,62.55
step
talk Jeremy Feasel##67370
turnin Darkmoon Pet Battle!##32175 |goto 47.04,62.75
step
collect Darkmoon Pet Supplies##91086 |n
|tip You can only get this once a day.
use the Darkmoon Pet Supplies##91086
|tip It is in your inventory.
collect Darkmoon Eye##91040 |n
|tip This has a 1 in 56 chance to drop, it may take you several attempts to get this.
use the Darkmoon Eye##91040
|tip It is in your inventory.
Learn the "Darkmoon Eye" Battle Pet |learnpet Darkmoon Eye##1063
step
_Congratulations!_
You Collected the "Darkmoon Eye" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Disgusting Oozeling",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet is a zone drop in the Swamp of Sorrows.",
keywords={"Magic","Swamp","Of","Sorrows"},
pet=114,
},[[
step
Kill enemies around this area
collect Oozing Bag##20768 |n
|tip This is a random drop from killing mobs in the Swamp of Sorrows.
use the Oozing Bag##20768
|tip It is in your inventory.
collect Disgusting Oozeling##20769 |n
|tip This is a rare reward contained in the Oozing Bag, it may take several attempts to get this.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
use the Disgusting Oozeling##20769
|tip It is in your inventory.
Learn the "Disgusting Oozeling" Battle Pet |learnpet Disgusting Oozeling##114 |goto Swamp of Sorrows/0 34.84,40.67
step
_Congratulations!_
You Collected the "Disgusting Oozeling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Ethereal Soul-Trader",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be obtained through the World of Warcraft Trading Card Game.",
keywords={"Magic","Trading","Card","Game"},
pet=183,
},[[
step
talk Landro Longshot##17249
Tell him _"What promotions do you have?"_
Tell him _"Hunt for Illidan"_
Tell him _"Ethereal Summoner"_
collect Solo-Trader Beacon##38050 |n
|tip This pet was a reward in the WoW trading card game.
|tip The trading card game is no longer available but you can purchase a code from a third party site.
|tip This pet is cageable, meaning it can be purchased from the Auction House.
use the Solo-Trader Beacon##38050
Learn the "Ethereal Soul-Trader" Battle Pet |learnpet Ethereal Soul-Trader##183 |goto The Cape of Stranglethorn/0 42.63,71.49
step
_Congratulations!_
You Collected the "Ethereal Soul-Trader" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Jade Oozeling",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Skull Rock The Hinterlands.",
keywords={"Magic","The","Hinterlands"},
pet=446,
},[[
step
clicknpc Jade Oozeling##61718
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Jade Oozeling" Battle Pet |learnpet Jade Oozeling##446 |goto The Hinterlands/0 57.35,38.20
step
_Congratulations!_
You Collected the "Jade Oozeling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Jade Tiger",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet was obtained through the recruit a friend program but is no longer available.",
keywords={"Magic","Recruit","A","Friend"},
pet=231,
},[[
step
collect Jade Tiger |n
|tip This was a reward from the recruit a friend program but is no longer available.
use the Jade Tiger
Learn the "Jade Tiger" Battle Pet |learnpet Jade Tiger##231
step
_Congratulations!_
You Collected the "Jade Tiger" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Lofty Libram",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around the Dalaran Crater in Hillsbrad Foothills.",
keywords={"Magic","Hillsbrad","Foothills"},
pet=1159,
},[[
step
clicknpc Lofty Libram##68806
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Lofty Libram" Battle Pet |learnpet Lofty Libram##1159 |goto Hillsbrad Foothills/0 30.98,31.74
step
_Congratulations!_
You Collected the "Lofty Libram" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Mana Wyrmling",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a vendor in Netherstorm.",
keywords={"Magic","Netherstorm"},
pet=136,
},[[
step
talk Dealer Rashaad##20980
buy Mana Wyrmling##29363 |n
collect Mana Wyrmling##29363 |n
|tip This pet is cageable, meaning it can be purchased from the Auction House.
use the Mana Wyrmling##29363
|tip It is inside your inventory.
Learn the "Mana Wyrmling" Battle Pet |learnpet Mana Wyrmling##136 |goto Netherstorm/0 43.51,35.27
step
_Congratulations!_
You Collected the "Mana Wyrmling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Minfernal",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around the Shatter Scar Vale in Felwood.",
keywords={"Magic","Felwood"},
pet=500,
},[[
step
clicknpc Minfernal##62317
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Minfernal" Battle Pet |learnpet Minfernal##500 |goto Felwood/0 42.96,42.33
step
_Congratulations!_
You Collected the "Minfernal" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Mini Diablo",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet is obtained by purchasing the World of Warcraft Collector's Edition.",
keywords={"Magic","Collector's","Edition"},
pet=93,
},[[
step
collect Diablo Stone##13584 |n
|tip This battle pet is a part of the World of Warcraft Collector's Edition.
|tip The collector's edition is no longer sold in stores but you may get lucky and find it on a third party site.
use the Diablo Stone##13584
Learn the "Mini Diablo" Battle Pet |learnpet Mini Diablo##93
step
_Congratulations!_
You Collected the "Mini Diablo" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Mini Mindslayer",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from The Prophet Skeram inside the Ahn'Qiraj raid.",
keywords={"Magic","Ahn'Qiraj"},
pet=1156,
},[[
step
Enter the Ahn'Qiraj Raid |goto Ahn'Qiraj/2 0.00,0.00 |c |or
|tip You can use the Ahn'Qiraj raid guide if you need help getting through the raid.
'|learnpet Mini Mindslayer##1156 |or
step
kill The Prophet Skeram##15263
collect Jewel of Maddening Whispers##93041 |n
|tip This has a 20.21% chance to drop, it may take several attempts to get it.
use the Jewel of Maddening Whispers##93041
|tip It is in your inventory.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
Learn the "Mini Mindslayer" Battle Pet |learnpet Mini Mindslayer##1156
step
_Congratulations!_
You Collected the "Mini Mindslayer" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Nordrassil Wisp",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Nordrassil in Mount Hyjal.",
keywords={"Magic","Mount","Hyjal"},
pet=547,
},[[
step
clicknpc Nordrassil Wisp##62888
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Nordrassil Wisp" Battle Pet |learnpet Nordrassil Wisp##547 |goto Mount Hyjal/0 62.14,29.04
step
_Congratulations!_
You Collected the "Nordrassil Wisp" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Oily Slimeling",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around the Scalding Pools in the Borean Tundra.",
keywords={"Magic","Borean","Tundra"},
pet=530,
},[[
step
clicknpc Oily Slimeling##62697
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Oily Slimeling" Battle Pet |learnpet Oily Slimeling##530 |goto Borean Tundra/0 64.18,34.74
step
_Congratulations!_
You Collected the "Oily Slimeling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Onyx Panther",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet was given out to players who participated in a promotional event in Korea.",
keywords={"Magic","Promotional","Event"},
pet=240,
},[[
step
collect Enchanted Onyx##48527 |n
|tip This battle pet was given out to players on the Korean servers during a promotional event.
|tip This battle pet is no longer available.
use the Enchanted Onyx##48527
Learn the "Onyx Panther" Battle Pet |learnpet Onyx Panther##240
step
_Congratulations!_
You Collected the "Onyx Panther" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Spectral Tiger Cub",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be obtained through the World of Warcraft Trading Card Game.",
keywords={"Magic","Trading","Card","Game"},
pet=242,
},[[
step
talk Landro Longshot##17249
Tell him _"What promotions do you have?"_
Tell him _"Scourgewar"_
Tell him _"Spectral Tiger Cub"_
collect Spectral Tiger Cub##49343 |n
|tip This pet was a reward in the WoW trading card game.
|tip The trading card game is no longer available but you can purchase a code from a third party site.
|tip This pet is cageable, meaning it can be purchased from the Auction House.
use the Spectral Tiger Cub##49343
Learn the "Spectral Tiger Cub" Battle Pet |learnpet Spectral Tiger Cub##242 |goto The Cape of Stranglethorn/0 42.63,71.49
step
_Congratulations!_
You Collected the "Spectral Tiger Cub" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Toxic Wasteling",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet is a drop from the boss Apothecary Hummel in the Shadowfang Keep dungeon during the Love is in the Air event.",
keywords={"Magic","Love","Is","In","The","Air"},
pet=251,
},[[
step
Enter the Shadowfang Keep Dungeon |complete isevent("Love is in the Air") |goto Shadowfang Keep/1 0.00,0.00 |c |or
|tip This pet can only be obtained during the Love is in the Air event.
|tip You can use The Shadowfang Keep guide if you need help getting through the dungeon.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
'|learnpet Toxic Wasteling##251 |or
step
kill Apothecary Hummel##36296
collect Heart-Shaped Box##54537 |n
use the Satchel of Chilled Goods##54536
|tip It is in your inventory.
collect Toxic Wasteling##50446 |n
|tip This is not a guaranteed drop, it may take you several attempts to get it.
use the Toxic Wasteling##50446
Learn the "Toxic Wasteling" Battle Pet |learnpet Toxic Wasteling##251
step
_Congratulations!_
You Collected the "Toxic Wasteling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Twilight Fiendling",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around corrupted areas in the Twilight Highlands.",
keywords={"Magic","Twilight","Highlands"},
pet=552,
},[[
step
clicknpc Twilight Fiendling##62914
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Twilight Fiendling" Battle Pet |learnpet Twilight Fiendling##552 |goto Twilight Highlands/0 41.19,45.78
You can find more around [58.21,32.35]
You can find more around [60.03,50.97]
step
_Congratulations!_
You Collected the "Twilight Fiendling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Viscidus Globule",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from Viscidus inside the Ahn'Qiraj raid.",
keywords={"Magic","Ahn'Qiraj"},
pet=1154,
},[[
step
Enter the Ahn'Qiraj Raid |goto Ahn'Qiraj/2 0.00,0.00 |c |or
|tip You can use the Ahn'Qiraj raid guide if you need help getting through the raid.
'|learnpet Viscidus Globule##1154 |or
step
kill Viscidus##15299
collect Viscidus Globule##93039 |n
|tip This has a 28.42% chance to drop, it may take several attempts to get it.
use the Viscidus Globule##93039
|tip It is in your inventory.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
Learn the "Viscidus Globule" Battle Pet |learnpet Viscidus Globule##1154
step
_Congratulations!_
You Collected the "Viscidus Globule" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Zipao Tiger",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet was obtained through the recruit a friend program but is no longer available.",
keywords={"Magic","Recruit","A","Friend"},
pet=247,
},[[
step
collect Enchanted Purple Jade##49664 |n
|tip This was a reward from the recruit a friend program but is no longer available.
use the Enchanted Purple Jade##49664
Learn the "Zipao Tiger" Battle Pet |learnpet Zipao Tiger##247
step
_Congratulations!_
You Collected the "Zipao Tiger" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Anodized Robo Cub",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Everlook in Winterspring.",
keywords={"Mechanical","Winterspring"},
pet=1163,
},[[
step
clicknpc Anodized Robo Cub##68839
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Anodized Robo Cub" Battle Pet |learnpet Anodized Robo Cub##1163 |goto Winterspring/0 58.23,47.24
step
_Congratulations!_
You Collected the "Anodized Robo Cub" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Blue Clockwork Rocket Bot",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a world vendor in Orgrimmar and Stormwind City.",
keywords={"Mechanical","World","Vendor"},
pet=254,
},[[
step
talk Blax Bottlerocket##52809
|tip He walks around this area.
buy Blue Clockwork Rocket Bot##54436 |n
collect Blue Clockwork Rocket Bot##54436 |n
|tip You can also purchase this from the vendor Craggle Wobbletop who walks around the Trade District in Stormwind City.
|tip This pet is cageable, meaning it can be purchased from the Auction House.
use the Blue Clockwork Rocket Bot##54436
|tip It is inside your inventory.
Learn the "Blue Clockwork Rocket Bot" Battle Pet |learnpet Blue Clockwork Rocket Bot##254 |goto Orgrimmar/1 58.76,58.70
step
_Congratulations!_
You Collected the "Blue Clockwork Rocket Bot" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Cogblade Raptor",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Scalewing Shelf in Blade's Edge Mountains.",
keywords={"Mechanical","Blade's","Edge","Mountains"},
pet=1164,
},[[
step
clicknpc Cogblade Raptor##68841
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Cogblade Raptor" Battle Pet |learnpet Cogblade Raptor##1164 |goto Blade's Edge Mountains/0 68.56,71.98
step
_Congratulations!_
You Collected the "Cogblade Raptor" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Darkmoon Tonk",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a vendor at the Darkmoon Faire.",
keywords={"Mechanical","Darkmoon","Faire"},
pet=338,
},[[
step
click Portal to the Darkmoon Faire |goto Mulgore/0 36.85,35.84
|tip The Darkmoon Faire is only available during the first week of every month.
Teleport to the Darkmoon Faire |goto Darkmoon Island/0 51.29,23.86 |c
step
talk Lhara##14846
buy Darkmoon Tonk##73903 |n
|tip It costs 90 Darkmoon Faire tickets.
|tip To earn tickets you have to complete daily quests.
|tip You can use our Darkmoon Faire guides to help you earn tickets.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
collect Darkmoon Tonk##73903 |n
use the Darkmoon Tonk##73903
|tip It is in your inventory.
Learn the "Darkmoon Tonk" Battle Pet |learnpet Darkmoon Tonk##338 |goto 48.25,69.52
step
_Congratulations!_
You Collected the "Darkmoon Tonk" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Darkmoon Zeppelin",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a vendor at the Darkmoon Faire.",
keywords={"Mechanical","Darkmoon","Faire"},
pet=339,
},[[
step
click Portal to the Darkmoon Faire |goto Mulgore/0 36.85,35.84
|tip The Darkmoon Faire is only available during the first week of every month.
Teleport to the Darkmoon Faire |goto Darkmoon Island/0 51.29,23.86 |c
step
talk Lhara##14846
buy Darkmoon Zeppelin##73905 |n
|tip It costs 90 Darkmoon Faire tickets.
|tip To earn tickets you have to complete daily quests.
|tip You can use our Darkmoon Faire guides to help you earn tickets.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
collect Darkmoon Zeppelin##73905 |n
use the Darkmoon Zeppelin##73905
|tip It is in your inventory.
Learn the "Darkmoon Zeppelin" Battle Pet |learnpet Darkmoon Zeppelin##339 |goto 48.25,69.52
step
_Congratulations!_
You Collected the "Darkmoon Zeppelin" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\De-Weaponized Mechanical Companion",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be created if your Engineering skill level is 475 or it can be purchased from the Auction House.",
keywords={"Mechanical","Auction","House"},
pet=262,
},[[
step
collect De-Weaponized Mechanical Companion##60216 |n
|tip You can create this pet if you have an engineering skill level of 475 or you can purchase it from the Auction House.
use the De-Weaponized Mechanical Companion##60216
|tip It is in you inventory.
Learn the "De-Weaponized Mechanical Companion" Battle Pet |learnpet De-Weaponized Mechanical Companion##262
step
_Congratulations!_
You Collected the "De-Weaponized Mechanical Companion" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Fluxfire Feline",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Chill Breeze Valley in New Tinkertown.",
keywords={"Mechanical","New","Tinkertown"},
pet=1162,
},[[
step
clicknpc Fluxfire Feline##68838
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Fluxfire Feline" Battle Pet |learnpet Fluxfire Feline##1162 |goto New Tinkertown/0 42.19,37.65
step
_Congratulations!_
You Collected the "Fluxfire Feline" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Landro's Lil' XT",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be obtained through the World of Warcraft Trading Card Game.",
keywords={"Mechanical","Trading","Card","Game"},
pet=285,
},[[
step
talk Landro Longshot##17249
Tell him _"What promotions do you have?"_
Tell him _"Worldbreaker"_
Tell him _"Landro's Lil' XT"_
collect Landro's Lil' XT##67128 |n
|tip This pet was a reward in the WoW trading card game.
|tip The trading card game is no longer available but you can purchase a code from a third party site.
|tip This pet is cageable, meaning it can be purchased from the Auction House.
use the Landro's Lil' XT##67128
Learn the "Landro's Lil' XT" Battle Pet |learnpet Landro's Lil' XT##285 |goto The Cape of Stranglethorn/0 42.63,71.49
step
_Congratulations!_
You Collected the "Landro's Lil' XT" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Lil' XT",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet used to be available to purchase on the Blizzard store but is no longer available.",
keywords={"Mechanical","Blizzard","Store"},
pet=256,
},[[
step
collect Lil' XT##54847 |n
|tip This battle pet used to be available to purchase from the Blizzard store but is no longer available.
|tip It may come back to the store in the future.
use the Lil' XT##54847
Learn the "Lil' XT" Battle Pet |learnpet Lil' XT##256
step
_Congratulations!_
You Collected the "Lil' XT" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Lifelike Toad",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be crafted if you have an engineering level of 265 or purchased from the Auction House.",
keywords={"Mechanical","Auction","House"},
pet=95,
},[[
step
collect Lifelike Mechanical Toad##15996 |n
|tip You can create this pet if you have an engineering skill level of 265 or you can purchase it from the Auction House.
use the Lifelike Mechanical Toad##15996
|tip It is in your inventory.
Learn the "Lifelike Toad" Battle Pet |learnpet Lifelike Toad##95
step
_Congratulations!_
You Collected the "Lifelike Toad" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Lil' Smoky",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be crafted if you have an engineering level of 205 or purchased from the Auction House.",
keywords={"Mechanical","Auction","House"},
pet=86,
},[[
step
collect Lil' Smoky##11826 |n
|tip You can create this pet if you have an engineering skill level of 205 or you can purchase it from the Auction House.
use the Lil' Smoky##11826
|tip It is in your inventory.
Learn the "Lil' Smoky" Battle Pet |learnpet Lil' Smoky##86
step
_Congratulations!_
You Collected the "Lil' Smoky" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Mechanical Chicken",{
patch='unknown',
source='unknown',	author="support@zygorguides.com",
description="\nThis battle pet is a reward for completeing the quest An OOX of Your Own.",
keywords={"Mechanical","An","OOX","Of","Your","Own"},
pet=83,
},[[
step
Kill enemies around this area
collect OOX-09/HL Distress Beacon##8704 |n
|tip This can drop from any enemy in the Hinterlands but it is a low drop rate.
|tip It may take some time to get this.
Click the Quest Discovered box
accept Find OOX-09/HL!##485 |goto The Hinterlands/0 67.65,56.97
step
talk Homing Robot OOX-09/HL##7806
turnin Find OOX-09/HL!##485 |goto 49.34,37.65
accept Rescue OOX-09/HL!##836 |goto 49.34,37.65
step
Kill enemies around this area
|tip Stay close to OOX-09/HL and kill any enemies that attack it.
Escort OOX-09/HL to safety |q 836/1 |goto 57.85,50.19
step
Kill enemies around this area
collect OOX-22/FE Distress Beacon##8705 |n
|tip This can drop from any enemy in Feralas but it is a low drop rate.
|tip It may take some time to get this.
Click the Quest Discovered box
accept Find OOX-22/FE!##25475 |goto Feralas/0 56.24,57.25
step
talk Homing Robot OOX-22/FE##7807
turnin Find OOX-22/FE!##25475 |goto 53.35,55.70
accept Rescue OOX-22/FE!##25476 |goto 53.35,55.70
step
Kill enemies around this area
|tip Stay close to OOX-22/FE and kill any enemies that attack it.
Escort OOX-22/FE to safety |q 25476/1 |goto 55.60,51.37
step
Kill enemies around this area
collect OOX-17/TN Distress Beacon##8623 |n
|tip This can drop from any enemy in Tanaris but it is a low drop rate.
|tip It may take some time to get this.
Click the Quest Discovered box
accept Find OOX-17/TN!##351 |goto Tanaris/0 38.96,54.02
step
talk Homing Robot OOX-17/TN##7784
turnin Find OOX-17/TN!##351 |goto 59.79,64.08
accept Rescue OOX-17/TN!##648 |goto 59.79,64.08
step
Kill enemies around this area
|tip Stay close to OOX-17/TN and kill any enemies that attack it.
Escort OOX-17/TN to safety |q 648/1 |goto 60.78,53.68
step
talk Oglethorpe Obnoticus##7406
|tip He is inside the building.
turnin Rescue OOX-09/HL!##836 |goto The Cape of Stranglethorn/0 43.01,72.22
turnin Rescue OOX-22/FE!##25476 |goto 43.01,72.22
turnin Rescue OOX-17/TN!##648 |goto 43.01,72.22
turnin An OOX of Your Own##3721 |goto 43.01,72.22
step
collect Mechanical Chicken##10398 |n
use the Mechanical Chicken##10398
|tip It is in your inventory.
Learn the "Mechanical Chicken" Battle Pet |learnpet Mechanical Chicken##83
step
_Congratulations!_
You Collected the "Mechanical Chicken" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Mechanical Pandaren Dragonling",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be crafted if you have a Pandaria engineering level of 50 or purchased from the Auction House.",
keywords={"Mechanical","Auction","House"},
pet=844,
},[[
step
collect Mechanical Pandaren Dragonling##87526 |n
|tip You can create this pet if you have an Pandaria engineering skill level of 50 or you can purchase it from the Auction House.
use the Mechanical Pandaren Dragonling##87526
|tip It is in your inventory.
Learn the "Mechanical Pandaren Dragonling" Battle Pet |learnpet Mechanical Pandaren Dragonling##844
step
_Congratulations!_
You Collected the "Mechanical Pandaren Dragonling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Mechanical Squirrel",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be crafted if you have an engineering level of 75 or purchased from the Auction House.",
keywords={"Mechanical","Auction","House"},
pet=39,
},[[
step
collect Mechanical Squirrel Box##4401 |n
|tip You can create this pet if you have an engineering skill level of 75 or you can purchase it from the Auction House.
use the Mechanical Squirrel Box##4401
|tip It is in your inventory.
Learn the "Mechanical Squirrel" Battle Pet |learnpet Mechanical Squirrel##39
step
_Congratulations!_
You Collected the "Mechanical Squirrel" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Mini Thor",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet is obtained by purchasing the Starcraft 2 Collector's Edition.",
keywords={"Mechanical","Collector's","Edition"},
pet=258,
},[[
step
collect Mini Thor##56806 |n
|tip This battle pet is a part of the Starcraft 2 Collector's Edition.
|tip The collector's edition is no longer sold in stores but you may get lucky and find it on a third party site.
use the Mini Thor##56806
Learn the "Mini Thor" Battle Pet |learnpet Mini Thor##258
step
_Congratulations!_
You Collected the "Mini Thor" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Personal World Destroyer",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be crafted if you have a Cataclysm engineering level of 25 or purchased from the Auction House.",
keywords={"Mechanical","Auction","House"},
pet=261,
},[[
step
collect Personal World Destroyer##59597 |n
|tip You can create this pet if you have a Cataclysm engineering skill level of 25 or you can purchase it from the Auction House.
use the Personal World Destroyer##59597
|tip It is in your inventory.
Learn the "Personal World Destroyer" Battle Pet |learnpet Personal World Destroyer##261
step
_Congratulations!_
You Collected the "Personal World Destroyer" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Pet Bombling",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be crafted if you have an engineering level of 205 or purchased from the Auction House.",
keywords={"Mechanical","Auction","House"},
pet=85,
},[[
step
collect Pet Bombling##11825 |n
|tip You can create this pet if you have an engineering skill level of 205 or you can purchase it from the Auction House.
use the Pet Bombling##11825
|tip It is in your inventory.
Learn the "Pet Bombling" Battle Pet |learnpet Pet Bombling##85
step
_Congratulations!_
You Collected the "Pet Bombling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Rabid Nut Varmint 5000",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Everlook in Winterspring.",
keywords={"Mechanical","Winterspring"},
pet=472,
},[[
step
clicknpc Rabid Nut Varmint 5000##62120
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Rabid Nut Varmint 5000" Battle Pet |learnpet Rabid Nut Varmint 5000##472 |goto Winterspring/0 60.79,48.07
step
_Congratulations!_
You Collected the "Rabid Nut Varmint 5000" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Robo-Chick",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Everlook in Winterspring.",
keywords={"Mechanical","Winterspring"},
pet=471,
},[[
step
clicknpc Robo-Chick##62119
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Robo-Chick" Battle Pet |learnpet Robo-Chick##471 |goto Winterspring/0 58.73,52.16
step
_Congratulations!_
You Collected the "Robo-Chick" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Rocket Chicken",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be obtained through the World of Warcraft Trading Card Game.",
keywords={"Mechanical","Trading","Card","Game"},
pet=168,
},[[
step
talk Landro Longshot##17249
Tell him _"What promotions do you have?"_
Tell him _"March of the Legion"_
Tell him _"Rocket Chicken"_
collect Rocket Chicken##34492 |n
|tip This pet was a reward in the WoW trading card game.
|tip The trading card game is no longer available but you can purchase a code from a third party site.
|tip This pet is cageable, meaning it can be purchased from the Auction House.
use the Rocket Chicken##34492
Learn the "Rocket Chicken" Battle Pet |learnpet Rocket Chicken##168 |goto The Cape of Stranglethorn/0 42.63,71.49
step
_Congratulations!_
You Collected the "Rocket Chicken" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Tiny Harvester",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around The Dead Acre in Westfall.",
keywords={"Mechanical","Westfall"},
pet=389,
},[[
step
clicknpc Tiny Harvester##61160
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Tiny Harvester" Battle Pet |learnpet Tiny Harvester##389 |goto Westfall/0 62.68,60.65
step
_Congratulations!_
You Collected the "Tiny Harvester" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Tranquil Mechanical Yeti",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from the Auction House.",
keywords={"Mechanical","Auction","House"},
pet=116,
},[[
step
collect Tranquil Mechanical Yeti##21277 |n
|tip Currently this pet can only be purchased from the Auction House.
use the Tranquil Mechanical Yeti##21277
Learn the "Tranquil Mechanical Yeti" Battle Pet |learnpet Tranquil Mechanical Yeti##116
step
_Congratulations!_
You Collected the "Tranquil Mechanical Yeti" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Warbot",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from various world vendors.",
keywords={"Mechanical","World","Vendor"},
pet=227,
},[[
step
talk Blax Bottlerocket##52809
|tip He walks around this area.
buy Warbot Ignition Key##95621 |n
collect Warbot Ignition Key##95621 |n
use the Warbot Ignition Key##95621
|tip It is inside your inventory.
Learn the "Warbot" Battle Pet |learnpet Warbot##227 |goto Orgrimmar/1 58.76,58.70
step
_Congratulations!_
You Collected the "Warbot" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Blighted Squirrel",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild all around Silverpine Forest.",
keywords={"Undead","Silverpine","Forest"},
pet=455,
},[[
step
clicknpc Blighted Squirrel##61890
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Blighted Squirrel" Battle Pet |learnpet Blighted Squirrel##455 |goto Silverpine Forest/0 51.28,52.86
step
_Congratulations!_
You Collected the "Blighted Squirrel" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Blighthawk",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Andorhal in the Western Plaguelands.",
keywords={"Undead","Western","Plaguelands"},
pet=456,
},[[
step
clicknpc Blighthawk##61826
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Blighthawk" Battle Pet |learnpet Blighthawk##456 |goto Western Plaguelands/0 45.46,69.67
step
_Congratulations!_
You Collected the "Blighthawk" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Eye of the Legion",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be obtained through the World of Warcraft Trading Card Game.",
keywords={"Undead","Trading","Card","Game"},
pet=348,
},[[
step
talk Landro Longshot##17249
Tell him _"What promotions do you have?"_
Tell him _"Timewalkers: War of the Ancients"_
Tell him _"Eye of the Legion"_
collect Eye of the Legion##79744 |n
|tip This pet was a reward in the WoW trading card game.
|tip The trading card game is no longer available but you can purchase a code from a third party site.
|tip This pet is cageable, meaning it can be purchased from the Auction House.
use the Eye of the Legion##79744
Learn the "Eye of the Legion" Battle Pet |learnpet Eye of the Legion##348 |goto The Cape of Stranglethorn/0 42.63,71.49
step
_Congratulations!_
You Collected the "Eye of the Legion" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Fetish Shaman",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet is obtained by purchasing the Diablo 3 Collector's Edition.",
keywords={"Undead","Collector's","Edition"},
pet=346,
},[[
step
collect Fetish Shaman's Spear##76062 |n
|tip This battle pet is a part of the Diablo 3 Collector's Edition.
|tip The collector's edition is no longer sold in stores but you may get lucky and find it on a third party site.
use the Fetish Shaman's Spear##76062
Learn the "Fetish Shaman" Battle Pet |learnpet Fetish Shaman##346
step
_Congratulations!_
You Collected the "Fetish Shaman" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Frosty",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet is obtained by purchasing the Wrath of the Lich King Collector's Edition.",
keywords={"Undead","Collector's","Edition"},
pet=188,
},[[
step
collect Frosty's Collar##39286 |n
|tip This battle pet is a part of the Wrath of the Lich King Collector's Edition.
|tip The collector's edition is no longer sold in stores but you may get lucky and find it on a third party site.
use the Frosty's Collar##39286
Learn the "Frosty" Battle Pet |learnpet Frosty##188
step
_Congratulations!_
You Collected the "Frosty" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Fungal Abomination",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from Loatheb inside the Naxxramas raid.",
keywords={"Undead","Naxxramas"},
pet=1144,
},[[
step
Enter the Naxxramas Raid |goto Naxxramas/5 0.00,0.00 |c |or
|tip You can use the Naxxramas raid guide if you need help getting through the raid.
'|learnpet Fungal Abomination##1144 |or
step
kill Loatheb##16011
collect Blighted Spore##93032 |n
|tip This has a 26.45% chance to drop, it may take several attempts to get it.
use the Blighted Spore##93032
|tip It is in your inventory.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
Learn the "Fungal Abomination" Battle Pet |learnpet Fungal Abomination##1144
step
_Congratulations!_
You Collected the "Fungal Abomination" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Ghostly Skull",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from a vendor in The Black Market in Dalaran.",
keywords={"Mechanical","Dalaran"},
pet=190,
},[[
step
talk Darahir##29537
|tip He is in the Underbelly in Dalaran (Northrend).
buy Ghostly Skull##39973 |n
collect Ghostly Skull##39973 |n
use the Ghostly Skull##39973
|tip It is inside your inventory.
Learn the "Ghostly Skull" Battle Pet |learnpet Ghostly Skull##190 |goto Dalaran/2 64.18,16.63
step
_Congratulations!_
You Collected the "Ghostly Skull" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Giant Bone Spider",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from Maexxna inside the Naxxramas raid.",
keywords={"Undead","Naxxramas"},
pet=1143,
},[[
step
Enter the Naxxramas Raid |goto Naxxramas/5 0.00,0.00 |c |or
|tip You can use the Naxxramas raid guide if you need help getting through the raid.
'|learnpet Giant Bone Spider##1143 |or
step
kill Maexxna##15952
collect Dusty Clutch of Eggs##93030 |n
|tip This has a 27.15% chance to drop, it may take several attempts to get it.
use the Dusty Clutch of Eggs##93030
|tip It is in your inventory.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
Learn the "Giant Bone Spider" Battle Pet |learnpet Giant Bone Spider##1143
step
_Congratulations!_
You Collected the "Giant Bone Spider" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Infected Fawn",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild all around the Eastern Plaguelands.",
keywords={"Undead","Eastern","Plaguelands"},
pet=628,
},[[
step
clicknpc Infected Fawn##61827
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Infected Fawn" Battle Pet |learnpet Infected Fawn##628 |goto Eastern Plaguelands/0 53.12,49.04
step
_Congratulations!_
You Collected the "Infected Fawn" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Infected Squirrel",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild all around the Eastern Plaguelands.",
keywords={"Undead","Eastern","Plaguelands"},
pet=627,
},[[
step
clicknpc Infected Squirrel##61828
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Infected Squirrel" Battle Pet |learnpet Infected Squirrel##627 |goto Eastern Plaguelands/0 50.11,50.03
step
_Congratulations!_
You Collected the "Infected Squirrel" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Infested Bear Cub",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around the Southwest part of the Hillsbrad Foothills.",
keywords={"Undead","Hillsbrad","Foothills"},
pet=453,
},[[
step
clicknpc Infested Bear Cub##61758
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Infested Bear Cub" Battle Pet |learnpet Infested Bear Cub##453 |goto Hillsbrad Foothills/0 31.81,67.28
step
_Congratulations!_
You Collected the "Infested Bear Cub" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Landro's Lichling",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be obtained through the World of Warcraft Trading Card Game.",
keywords={"Undead","Trading","Card","Game"},
pet=302,
},[[
step
talk Landro Longshot##17249
Tell him _"What promotions do you have?"_
Tell him _"War of the Elements"_
Tell him _"Landro's Lichling"_
collect Landro's Lichling##68840 |n
|tip This pet was a reward in the WoW trading card game.
|tip The trading card game is no longer available but you can purchase a code from a third party site.
|tip This pet is cageable, meaning it can be purchased from the Auction House.
use Landro's Lichling##68840
Learn the "Landro's Lichling" Battle Pet |learnpet Landro's Lichling##302 |goto The Cape of Stranglethorn/0 42.63,71.49
step
_Congratulations!_
You Collected the "Landro's Lichling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Lil' K.T.",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be purchased from the Blizzard store.",
keywords={"Undead","Blizzard","Store"},
pet=249,
},[[
step
collect Lil' Phylactery##49693 |n
|tip Check your mailbox after you purchase this battle pet from the Blizzard website.
use the Lil' Phylactery##49693
Learn the "Lil' K.T." Battle Pet |learnpet Lil' K.T.##249
step
_Congratulations!_
You Collected the "Lil' K.T." Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Lost of Lordaeron",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around the Ruins of Lordaeron in Tirisfal Glades.",
keywords={"Undead","Tirisfal","Glades"},
pet=458,
},[[
step
talk Zidormi##141488
Tell her _"Can you show me what Tirisfal Glades was like before the Battle for Lordaeron?"_
Travel to the past |complete ZGV.InPhase("Old Tirisfal Glades") |goto Tirisfal Glades/0 69.45,62.81
step
clicknpc Lost of Lordaeron##61905
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Lost of Lordaeron" Battle Pet |learnpet Lost of Lordaeron##458 |goto 58.97,63.95
step
_Congratulations!_
You Collected the "Lost of Lordaeron" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Mr. Bigglesworth",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet is given to you after you get the achievement Raiding With Leashes.",
keywords={"Undead","Raiding","With","Leashes"},
pet=1145,
},[[
step
collect Mr. Bigglesworth##93031 |n
|tip This is given to you after you get the achievement Raiding With Leases.
|tip You can use our Raiding With Leases achievement guide, as well as our pet guides to help you get the remaining pets you need.
use the Mr. Bigglesworth##93031
Learn the "Mr. Bigglesworth" Battle Pet |learnpet Mr. Bigglesworth##1145
step
_Congratulations!_
You Collected the "Mr. Bigglesworth" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Restless Shadeling",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Karazhan in Deadwind Pass during the hours of 12am-9am server time.",
keywords={"Undead","Deadwind","Pass"},
pet=439,
},[[
step
clicknpc Restless Shadeling##61375
|tip They only spawn between the hours of 12am-9am server time.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Restless Shadeling" Battle Pet |learnpet Restless Shadeling##439 |goto Deadwind Pass/0 54.15,77.93
step
_Congratulations!_
You Collected the "Restless Shadeling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Scourged Whelpling",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Sindragosa's Fall in Icecrown.",
keywords={"Undead","Icecrown"},
pet=538,
},[[
step
clicknpc Scourged Whelpling##62854
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Scourged Whelpling" Battle Pet |learnpet Scourged Whelpling##538 |goto Icecrown/0 73.66,32.66
step
_Congratulations!_
You Collected the "Scourged Whelpling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Spirit Crab",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around the west coast beach in the Ghostlands.",
keywords={"Undead","Ghostlands"},
pet=463,
},[[
step
clicknpc Spirit Crab##62034
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Spirit Crab" Battle Pet |learnpet Spirit Crab##463 |goto Ghostlands/0 13.96,38.62
step
_Congratulations!_
You Collected the "Spirit Crab" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Stitched Pup",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet has a chance to drop from Gluth inside the Naxxramas raid.",
keywords={"Undead","Naxxramas"},
pet=1146,
},[[
step
Enter the Naxxramas Raid |goto Naxxramas/5 0.00,0.00 |c |or
|tip You can use the Naxxramas raid guide if you need help getting through the raid.
'|learnpet Stitched Pup##1146 |or
step
kill Gluth##15932
collect Gluth's Bone##93029 |n
|tip This has a 29.41% chance to drop, it may take several attempts to get it.
use the Gluth's Bone##93029
|tip It is in your inventory.
|tip This pet is cageable, meaning you can purchase it from the Auction House.
Learn the "Stitched Pup" Battle Pet |learnpet Stitched Pup##1146
step
_Congratulations!_
You Collected the "Stitched Pup" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Vampiric Batling",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis battle pet was a drop from killing Tenris Mirkblood during The Scourge Invasion event.",
keywords={"Undead","The","Scourge","Invasion"},
pet=206,
},[[
step
collect Vampiric Batling##38658 |n
|tip This pet was a reward for killing Tenris Mirkblood in the Scourge Invasion event.
|tip This pet is no longer available.
use the Vampiric Batling##38658
Learn the "Vampiric Batling" Battle Pet |learnpet Vampiric Batling##187
step
_Congratulations!_
You Collected the "Vampiric Batling" Battle Pet.
]])
