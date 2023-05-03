local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("PetsHCATA") then return end
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
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Speedy")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Strand Crawler")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Black Kingsnake")
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
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Brown Snake")
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
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Panther Cub")
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
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\White Kitten")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Armadillo Pup")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Brown Prairie Dog")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Dung Beetle")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Egbert")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Elwynn Lamb")
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
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Undercity Cockroach")
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
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Whiskers the Rat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Winter Reindeer")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Wolpertinger")
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
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Crawling Claw")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Creepy Crate")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Fossilized Hatchling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Macabre Marionette")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Sen'jin Fetish")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Voodoo Figurine")
