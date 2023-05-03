local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if ZGV:DoMutex("PetsCCATA") then return end
if not ZGV.CommonPets then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Biletoad")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Chuck")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Darkmoon Turtle")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Frog")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Horny Toad")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Huge Toad")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Jubling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Mac Frog")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Mojo")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Mr. Chilly")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Muckbreath")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Purple Puffer")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Shore Crab")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Snarly")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Spotted Bell Frog")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Strand Crab")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Toad")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Toothy")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Tree Frog")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Tundra Penguin")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Turquoise Turtle")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Wood Frog")
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
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Albino Snake")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Alterac Brew-Pup")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Arctic Fox Kit")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Ash Lizard")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Ash Spiderling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Ash Viper")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Baby Ape")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Baby Blizzard Bear")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Bananas")
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
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Calico Cat")
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
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Cheetah Cub")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Clefthoof Runt")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Cobra Hatchling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Coral Snake")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Crystal Spider")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Darkmoon Cub")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Darkmoon Monkey")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Darkshore Cub")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Darting Hatchling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Desert Spider")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Deviate Hatchling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Devouring Maggot")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Diemetradon Hatchling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Dusk Spiderling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Emerald Boa")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Festering Maggot")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Fjord Worg Pup")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Forest Spiderling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Fox Kit")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Giraffe Calf")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Gundrak Hatchling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Horned Lizard")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\King Snake")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Larva")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Leaping Hatchling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Leopard Scorpid")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Little Black Ram")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Lizard Hatchling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Maggot")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Moccasin")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Molten Hatchling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Mr. Grubbs")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Nightsaber Cub")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Obsidian Hatchling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Panda Cub")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Poley")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Rat Snake")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Rattlesnake")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Ravager Hatchling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Ravasaur Hatchling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Razormaw Hatchling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Razzashi Hatchling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Rock Viper")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Sand Kitten")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Scalded Basilisk Hatchling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Scorpid")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Scorpling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Siamese Cat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Sidewinder")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Silithid Hatchling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Skittering Cavern Crawler")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Smolderweb Hatchling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Snake")
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
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Spider")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Spiky Lizard")
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
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Striped-Tailed Scorpid")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Stunted Shardhorn")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Tree Python")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Twilight Iguana")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Twilight Spider")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Venomspitter Hatchling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Warpstalker Hatchling")
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
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Widow Spiderling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Wind Rider Cub")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Winterspring Cub")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Worg Pup")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Alpine Chipmunk")
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
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Arctic Hare")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Baneling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Beetle")
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
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Black Rat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Borean Marmot")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Brown Marmot")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Brown Rabbit")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Carrion Rat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Cockroach")
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
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Crystal Beetle")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Darkmoon Hatchling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Darkmoon Rabbit")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Death's Head Cockroach")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Deepholm Cockroach")
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
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Fire Beetle")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Fire-Proof Roach")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Fjord Rat")
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
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Giant Sewer Rat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Gold Beetle")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Golden Pig")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Grasslands Cottontail")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Grizzly Squirrel")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Grotto Vole")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Highlands Mouse")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Highlands Skunk")
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
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Lava Beetle")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Little Fawn")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Locust")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Long-tailed Mole")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Lucky")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Lucky Quilen Cub")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Mountain Cottontail")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Mountain Skunk")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Mouse")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Nether Roach")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Nuts")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Perky Pug")
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
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Rat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Red-Tailed Chipmunk")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Redridge Rat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Roach")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Rusty Snail")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Sand Scarab")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Scarab Hatchling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Shimmershell Snail")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Silver Pig")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Singing Cricket")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Skunk")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Snowshoe Hare")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Spring Rabbit")
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
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Stinkbug")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Stinker")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Stone Armadillo")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Stormwind Rat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Stowaway Rat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Tainted Cockroach")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Tainted Rat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Tol'vir Scarab")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Twilight Beetle")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Wharf Rat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Yellow-Bellied Marmot")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Zergling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Azure Whelpling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Blue Dragonhawk Hatchling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Celestial Dragon")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Chrominius")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Crimson Whelpling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Dark Whelpling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Death Talon Whelpguard")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Emerald Proto-Whelp")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Emerald Whelpling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Essence of Competition")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Infinite Whelpling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Lil' Deathwing")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Netherwhelp")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Nexus Whelpling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Onyxian Whelpling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Proto-Drake Whelp")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Soul of the Aspects")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Spawn of Onyxia")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Spirit of Competition")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Sprite Darter Hatchling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Tiny Green Dragon")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Tiny Red Dragon")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Untamed Hatchling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Amethyst Shale Hatchling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Ashstone Core")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Blossoming Ancient")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Core Hound Pup")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Crimson Geode")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Crimson Lasher")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Crimson Shale Hatchling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Emerald Shale Hatchling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Fel Flame")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Frigid Frostling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Jade Tentacle")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Kirin Tor Familiar")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Lava Crab")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Lil' Ragnaros")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Phoenix Hatchling")
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
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Singing Sunflower")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Sinister Squashling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Spirit of Summer")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Tiny Bog Beast")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Tiny Shale Spider")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Tiny Twister")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Topaz Shale Hatchling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Venus")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Water Waveling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Ancona Chicken")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Bat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Brilliant Kaliri")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Cenarion Hatchling")
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
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Cockatiel")
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
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Crimson Moth")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Crow")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Darkmoon Glowfly")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Dragon Kite")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Dragonbone Hatchling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Firefly")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Fledgling Buzzard")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Fledgling Nether Ray")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Forest Moth")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Fungal Moth")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Green Wing Macaw")
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
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Gryphon Hatchling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Guardian Cub")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Highlands Turkey")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Hippogryph Hatchling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Horde Balloon")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Hyacinth Macaw")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Imperial Eagle Chick")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Miniwing")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Nether Faerie Dragon")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Nether Ray Fry")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Oasis Moth")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Parrot")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Polly")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Red Moth")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Sea Gull")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Senegal")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Silky Moth")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Snowy Owl")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Swamp Moth")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Tainted Moth")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Tickbird Hatchling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Tiny Sporebat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Turkey")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Tuskarr Kite")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\White Tickbird Hatchling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Wildhammer Gryphon Hatchling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Anubisath Idol")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Corefire Imp")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Curious Wolvar Pup")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Deathy")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Feral Vermling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Flayer Youngling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Gregarious Grell")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Grunty")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Gurky")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Harbinger of Flame")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Harpy Youngling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Hopling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Kun-Lai Runt")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Lurky")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Mini Tyrael")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Murkablo")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Murkalot")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Murkimus the Gladiator")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Murki")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Murky")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Pandaren Monk")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Qiraji Guardling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Sporeling Sprout")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Stunted Yeti")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Arcane Eye")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Darkmoon Eye")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Disgusting Oozeling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Ethereal Soul-Trader")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Jade Oozeling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Jade Tiger")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Lofty Libram")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Mana Wyrmling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Minfernal")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Mini Diablo")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Mini Mindslayer")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Nordrassil Wisp")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Oily Slimeling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Onyx Panther")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Spectral Tiger Cub")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Toxic Wasteling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Twilight Fiendling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Viscidus Globule")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Zipao Tiger")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Anodized Robo Cub")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Blue Clockwork Rocket Bot")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Cogblade Raptor")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Darkmoon Tonk")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Darkmoon Zeppelin")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\De-Weaponized Mechanical Companion")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Fluxfire Feline")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Landro's Lil' XT")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Lil' XT")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Lifelike Toad")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Lil' Smoky")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Mechanical Chicken")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Mechanical Pandaren Dragonling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Mechanical Squirrel")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Mini Thor")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Personal World Destroyer")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Pet Bombling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Rabid Nut Varmint 5000")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Robo-Chick")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Rocket Chicken")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Tiny Harvester")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Tranquil Mechanical Yeti")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Warbot")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Blighted Squirrel")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Blighthawk")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Eye of the Legion")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Fetish Shaman")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Frosty")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Fungal Abomination")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Ghostly Skull")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Giant Bone Spider")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Infected Fawn")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Infected Squirrel")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Infested Bear Cub")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Landro's Lichling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Lil' K.T.")
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
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Mr. Bigglesworth")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Restless Shadeling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Scourged Whelpling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Spirit Crab")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Stitched Pup")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Vampiric Batling")
