local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("PetsACATA") then return end
ZGV.CommonPets=true
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Magical Crawdad")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Pengu")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Sea Pony")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Shore Crawler")
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Small Frog",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis battle pet can be tamed in the wild around Crystal Lake in Elwynn Forest.",
keywords={"Aquatic","Elwynn","Forest"},
pet=419,
},[[
step
clicknpc Small Frog##61071
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Small Frog" Battle Pet |learnpet Small Frog##419 |goto Elwynn Forest/0 49.97,63.22
step
_Congratulations!_
You Collected the "Small Frog" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Speedy")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Strand Crawler")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Magical Crawdad")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Pengu")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Sea Pony")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Shore Crawler")
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Small Frog",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Aquatic pet: Small Frog.",
pet=419,
},[[
step
Challenge one to a pet battle and capture it
|tip The Small Frog is level 3.
learnpet Small Frog##419 |goto Elwynn Forest 56.0,67.1
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Speedy")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Strand Crawler")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Black Kingsnake")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Bombay Cat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Brown Snake")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Cornish Rex Cat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Crimson Snake")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Dun Morogh Cub")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Durotar Scorpion")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Feline Familiar")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Hyjal Bear Cub")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Lashtail Hatchling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Orange Tabby Cat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Silver Tabby Cat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\White Kitten")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Black Kingsnake")
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Bombay Cat",{
patch='111100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Beast pet: Bombay Cat.",
pet=40,
},[[
step
talk Donni Anthania##6367
buy 1 Cat Carrier (Bombay)##8485 |goto Elwynn Forest,44.2,53.2
step
learnpet Bombay Cat##40 |use Cat Carrier (Bombay)##8485
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Brown Snake")
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Cornish Rex Cat",{
patch='111100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Beast pet: Cornish Rex Cat.",
pet=41,
},[[
step
talk Donni Anthania##6367
buy 1 Cat Carrier (Cornish Rex)##8486 |goto Elwynn Forest,44.2,53.2
step
learnpet Cornish Rex Cat##41 |use Cat Carrier (Cornish Rex)##8486
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Crimson Snake")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Dun Morogh Cub")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Durotar Scorpion")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Feline Familiar")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Hyjal Bear Cub")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Lashtail Hatchling")
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Orange Tabby Cat",{
patch='111100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Beast pet: Orange Tabby Cat.",
pet=43,
},[[
step
talk Donni Anthania##6367
buy 1 Cat Carrier (Orange Tabby)##8487 |goto Elwynn Forest,44.2,53.2
step
learnpet Orange Tabby Cat##43 |use Cat Carrier (Orange Tabby)##8487
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Panther Cub")
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Silver Tabby Cat",{
patch='111100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Beast pet: Silver Tabby Cat.",
pet=45,
},[[
step
talk Donni Anthania##6367
buy 1 Cat Carrier (Silver Tabby)##8488 |goto Elwynn Forest,44.2,53.2
step
learnpet Silver Tabby Cat##45 |use Cat Carrier (Silver Tabby)##8488
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Armadillo Pup")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Brown Prairie Dog")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Dung Beetle")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Egbert")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Elwynn Lamb")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Hare")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Mr. Wiggles")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Mulgore Hatchling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Peanut")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Pint-Sized Pink Pachyderm")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Porcupette")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Scooter the Snail")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Snowshoe Rabbit")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Undercity Cockroach")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Undercity Rat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Whiskers the Rat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Winter Reindeer")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Wolpertinger")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Armadillo Pup")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Brown Prairie Dog")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Dung Beetle")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Egbert")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Elwynn Lamb")
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Hare",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Critter pet: Hare.",
pet=448,
},[[
step
Challenge one to a pet battle and capture it
|tip The Hares in this area are around level 11.
learnpet Hare##448 |goto The Hinterlands 66.9,34.7
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Mr. Wiggles")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Mulgore Hatchling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Peanut")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Pint-Sized Pink Pachyderm")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Porcupette")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Scooter the Snail")
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Snowshoe Rabbit",{
patch='111100',
source='Vendor',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Critter pet: Snowshoe Rabbit.",
pet=72,
},[[
step
talk Yarlyn Amberstill##1263
buy 1 Rabbit Crate (Snowshoe)##8497 |goto Dun Morogh 70.6,49.0
step
learnpet Snowshoe Rabbit##72 |use Rabbit Crate (Snowshoe)##8497
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Undercity Cockroach")
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Undercity Rat",{
patch='50100',
source='PetBattle',
author="support@zygorguides.com",
description="\nThis guide will walk you through obtaining the Critter pet: Undercity Rat.",
pet=454,
},[[
step
This pet is only found inside The Undercity.
|tip You can attempt to capture it yourself, but it is suggested that you use a Horde character to capture it.
confirm
step
Challenge one to a pet battle and capture it
|tip The Undercity Rats are level 2.
learnpet Undercity Rat##454 |goto Undercity 70.9,35.4
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Whiskers the Rat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\White Kitten")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Winter Reindeer")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Wolpertinger")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Golden Dragonhawk Hatchling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Lil' Tarecgosa")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Red Dragonhawk Hatchling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Silver Dragonhawk Hatchling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Thundering Serpent Hatchling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Golden Dragonhawk Hatchling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Lil' Tarecgosa")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Red Dragonhawk Hatchling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Silver Dragonhawk Hatchling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Thundering Serpent Hatchling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Ammen Vale Lashling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Dark Phoenix Hatchling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Elementium Geode")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Lumpy")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Pebble")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Searing Scorchling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Teldrassil Sproutling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Tiny Snowman")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Ammen Vale Lashling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Dark Phoenix Hatchling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Elementium Geode")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Lumpy")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Pebble")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Searing Scorchling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Teldrassil Sproutling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Tiny Snowman")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Withers")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Alliance Balloon")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Blue Mini Jouster")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Blue Moth")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Darkmoon Balloon")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Gilnean Raven")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Gold Mini Jouster")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Great Horned Owl")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Hawk Owl")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Plump Turkey")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Pterrordax Hatchling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Rustberg Gull")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Tirisfal Batling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Westfall Chicken")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\White Moth")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Yellow Moth")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Alliance Balloon")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Blue Mini Jouster")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Blue Moth")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Darkmoon Balloon")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Gilnean Raven")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Gold Mini Jouster")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Great Horned Owl")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Hawk Owl")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Plump Turkey")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Pterrordax Hatchling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Rustberg Gull")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Tiny Flamefly")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Tirisfal Batling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Westfall Chicken")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\White Moth")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Yellow Moth")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Argent Squire")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Argent Gruntling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Curious Oracle Hatchling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Father Winter's Helper")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Guild Herald (Horde)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Guild Herald (Alliance)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Guild Page (Horde)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Guild Page (Alliance)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Moonkin Hatchling (Horde)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Moonkin Hatchling (Alliance)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Peddlefeet")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Rotten Little Helper")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Winter's Little Helper")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Argent Squire")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Argent Gruntling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Curious Oracle Hatchling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Curious Wolvar Pup")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Father Winter's Helper")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Guild Herald (Alliance)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Guild Herald (Horde)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Guild Page (Alliance)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Guild Page (Horde)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Moonkin Hatchling (Alliance)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Moonkin Hatchling (Horde)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Rotten Little Helper")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Winter's Little Helper")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Enchanted Broom")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Enchanted Lantern")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Festival Lantern")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Legs")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Lunar Lantern")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Magic Lamp")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Shimmering Wyrmling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Willy")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Enchanted Broom")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Enchanted Lantern")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Festival Lantern")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Legs")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Lunar Lantern")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Magic Lamp")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Shimmering Wyrmling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Willy")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Clockwork Gnome")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Clockwork Rocket Bot")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Mechanopeep")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Clockwork Gnome")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Clockwork Rocket Bot")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\De-Weaponized Mechanical Companion")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Lifelike Toad")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Lil' Smoky")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Mechanical Pandaren Dragonling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Mechanical Squirrel")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Mechanopeep")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Personal World Destroyer")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Pet Bombling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Tranquil Mechanical Yeti")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Crawling Claw")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Creepy Crate")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Fossilized Hatchling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Sen'jin Fetish")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Voodoo Figurine")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Crawling Claw")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Creepy Crate")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Fossilized Hatchling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Macabre Marionette")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Sen'jin Fetish")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Voodoo Figurine")
