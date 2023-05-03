local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("ProfessionsABFA") then return end
ZygorGuidesViewer.GuideMenuTier = "BFA"
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Alchemy\\Leveling Guides\\Kul Tiran Alchemy 1-175",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Kul Tiran Alchemy profession from 1-175.",
startlevel=5.0,
condition_end=function() return skill('Kul Tiran Alchemy') >= 175 end,
condition_suggested=function() return skill('Kul Tiran Alchemy') > 0 and skill('Kul Tiran Alchemy') < 175 and level >= 5 end,
},[[
step
talk Elric Whalgrene##132228
Train Kul Tiran Alchemy |skillmax Kul Tiran Alchemy,175 |goto Boralus/0 74.21,6.53
step
talk Elric Whalgrene##132228
buy 200 Crystal Vial##3371 |goto 74.21,6.53
step
collect 1300 Siren's Pollen##152509
|tip You get these by gathering from Siren's Sting flowers that grow attached to trees on the ground, if you have Herbalism.
|tip You can also purchase them from the Auction House.
step
collect 240 Riverbud##152505
|tip You get these by gathering from Riverbud flowers that grow on the ground along rivers, if you have Herbalism.
|tip You can also purchase them from the Auction House.
step
collect 475 Anchor Weed##152510
|tip You get these by gathering from Anchor Weed plants that grow near water, if you have Herbalism.
|tip You can also purchase them from the Auction House.
step
collect 225 Winter's Kiss##152508
|tip You get these by gathering from Winter's Kiss plants that grow in snowy areas, if you have Herbalism.
|tip You can also purchase them from the Auction House.
step
collect 300 Star Moss##152506
|tip You get these by gathering from Star Moss plants that grow on the sides of walls and bridges, if you have Herbalism.
|tip You can also purchase them from the Auction House.
step
collect 575 Akunda's Bite##152507
|tip You get these by gathering from Akunda's Bite plants that grow in mountainous areas of Vol'dun, if you have Herbalism.
|tip You can also purchase them from the Auction House.
step
collect 375 Sea Stalk##152511
|tip You get these by gathering from Sea Stalk plants that grow on ocean shores, if you have Herbalism.
|tip You can also purchase them from the Auction House.
step
Open Your Alchemy Crafting Panel:
_<Create 25 Coastal Healing Potion>_
Reach Level 25 Kul Tiran Alchemy |skill Kul Tiran Alchemy,25
step
talk Elric Whalgrene##132228
Train Potion of Concealment (Rank 1) |learn Potion of Concealment##252400 |goto 74.21,6.53
step
Open Your Alchemy Crafting Panel:
_<Create 15 Potion of Concealment>_
Reach Level 40 Kul Tiran Alchemy |skill Kul Tiran Alchemy,40
step
talk Elric Whalgrene##132228
Train Coastal Healing Potion (Rank 2) |learn Coastal Healing Potion##252383 |goto 74.21,6.53
step
Open Your Alchemy Crafting Panel:
_<Create 10 Coastal Healing Potion>_
Reach Level 50 Kul Tiran Alchemy |skill Kul Tiran Alchemy,50
step
talk Elric Whalgrene##132228
Train Potion of Concealment (Rank 2) |learn Potion of Concealment##252401 |goto 74.21,6.53
step
Open Your Alchemy Crafting Panel:
_<Create 10 Potion of Concealment>_
Reach Level 60 Kul Tiran Alchemy |skill Kul Tiran Alchemy,60
step
talk Elric Whalgrene##132228
Train Potion of Bursting Blood (Rank 1) |learn Potion of Bursting Blood##252341 |goto 74.21,6.53
step
talk Elric Whalgrene##132228
Train Potion of Bursting Blood (Rank 2) |learn Potion of Bursting Blood##252342 |goto 74.21,6.53
step
Open Your Alchemy Crafting Panel:
_<Create 15 Potion of Bursting Blood>_
Reach Level 75 Kul Tiran Alchemy |skill Kul Tiran Alchemy,75
step
talk Elric Whalgrene##132228
Train Battle Potion of Agility (Rank 1) |learn Battle Potion of Agility##279159 |goto 74.21,6.53
step
talk Elric Whalgrene##132228
Train Battle Potion of Agility (Rank 2) |learn Battle Potion of Agility##279160 |goto 74.21,6.53
step
Open Your Alchemy Crafting Panel:
_<Create 15 Battle Potion of Agility>_
Reach Level 90 Kul Tiran Alchemy |skill Kul Tiran Alchemy,90
step
talk Elric Whalgrene##132228
Train Flask of the Vast Horizon (Rank 1) |learn Flask of the Vast Horizon##252354 |goto 74.21,6.53
step
Open Your Alchemy Crafting Panel:
_<Create 15 Flask of the Vast Horizon>_
Reach Level 105 Kul Tiran Alchemy |skill Kul Tiran Alchemy,105
step
talk Elric Whalgrene##132228
Train Flask of the Currents (Rank 1) |learn Flask of the Currents##252348 |goto 74.21,6.53
step
Open Your Alchemy Crafting Panel:
_<Create 15 Flask of the Currents>_
Reach Level 115 Kul Tiran Alchemy |skill Kul Tiran Alchemy,115
step
talk Elric Whalgrene##132228
Train Flask of the Undertow (Rank 1) |learn Flask of the Undertow##252357 |goto 74.21,6.53
step
talk Elric Whalgrene##132228
Train Flask of the Undertow (Rank 2) |learn Flask of the Undertow##252358 |goto 74.21,6.53
step
Open Your Alchemy Crafting Panel:
_<Create 30 Flask of the Undertow>_
Reach Level 145 Kul Tiran Alchemy |skill Kul Tiran Alchemy,145
step
Reach Level 50 |ding 50
step
Complete the Quest "A Way Home" |complete completedq(54972)
|tip Use the "Nazjatar" leveling guide to accomplish this.
step
collect 100 Zin'anthid##168487
|tip Farm them in Nazjatar with Herbalism or purchase them from the Auction House.
step
talk Instructor Okanu##153811
Train Abyssal Healing Potion (Rank 1) |learn Abyssal Healing Potion##301310 |goto Nazjatar/0 37.92,53.19
step
Open Your Alchemy Crafting Panel:
_<Create 15 Abyssal Healing Potion>_
|tip You may need to make a few more.
Reach Level 160 Kul Tiran Alchemy |skill Kul Tiran Alchemy,160
step
talk Instructor Okanu##153811
Train Abyssal Healing Potion (Rank 2) |learn Abyssal Healing Potion##301311 |goto 37.92,53.19
step
Open Your Alchemy Crafting Panel:
_<Create 25 Abyssal Healing Potion>_
|tip You may need to make a few more.
Reach Level 175 Kul Tiran Alchemy |skill Kul Tiran Alchemy,175
step
_Congratulations!_
You Reached 175 Kul Tiran Alchemy Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Alchemy\\Leveling Guides\\Tools of the Trade - Alchemy",{
author="support@zygorguides.com",
description="\nUpon completion of this guide, you will learn Silas' Sphere of Transformation. This allows you to interact "..
"with various cauldrons around Zandalar and Kul Tiras, as well as the ability to transmute the sphere temporarily.",
startlevel=50.0,
condition_end=function() return completedq(50129) end,
condition_suggested=function() return skill('Kul Tiran Alchemy') >= 150 and level >= 50 and not completedq(50129) end,
condition_visible=function() return skill('Kul Tiran Alchemy') >= 1 end,
},[[
step
Reach Level 150 Kul Tiran Alchemy |skill Kul Tiran Alchemy,175
|tip Use the "Kul Tiran Alchemy 1-150" profession guide to accomplish this.
step
talk Elric Whalgrene##132228
accept Casting the First Stone##50121 |goto Boralus/0 74.21,6.54
step
click Sack of Dried Star Moss##316423
collect 10 Dried Star Moss Leaves##166371 |goto 74.38,6.75 |q 50121
step
click Crate of Test Vials##316422
collect 2 Test Vial##166374 |goto 74.39,6.56 |q 50121
step
click Storm Silver Shards##316430
collect 3 Storm Silver Shards##166373 |goto 73.94,6.47 |q 50121
step
click Sand Shifter Scales##316424
collect 3 Sand Shifter Scales##166372 |goto 73.87,6.36 |q 50121
step
Open Your Alchemy Crafting Panel:
_<Create 1 Potion of Durability>_
Create a Potion of Durability |q 50121/1
step
Open Your Alchemy Crafting Panel:
_<Create 1 Potion of Shifting States>_
Create a Potion of Shifting States |q 50121/2
step
talk Elric Whalgrene##132228
turnin Casting the First Stone##50121 |goto 74.21,6.54
step
Watch the dialogue
talk Elric Whalgrene##132228
accept Ocular Extracts##50122 |goto 74.21,6.54
accept Changing the Scenery##50124 |goto 74.21,6.54
stickystart "Collect_Highlands_Mauler_Eyes"
step
click Barberry Shrub+
|tip They look like large green bushes on the ground around this area.
clicknpc Shrubbery Bubble##132309+
|tip They spawn after you click the shrub.
collect 6 Shrubbery Bubble##156660 |q 50124/1 |goto Stormsong Valley/0 70.97,71.07
step
label "Collect_Highlands_Mauler_Eyes"
Kill Mauler enemies around this area
collect 10 Highlands Mauler Eye##156657 |q 50122/1 |goto 69.91,72.02
step
talk Elric Whalgrene##132228
turnin Ocular Extracts##50122 |goto Boralus/0 74.21,6.54
turnin Changing the Scenery##50124 |goto 74.21,6.54
step
Watch the dialogue
talk Elric Whalgrene##132228
accept A Possible Solution##50125 |goto 74.21,6.54
step
Follow the road down |goto Drustvar/0 37.06,49.15 < 20 |only if walking
Follow the path down |goto 31.81,47.38 < 20 |only if walking
talk Quintin Whalgrene##132347
|tip He walks around inside and outside the building.
turnin A Possible Solution##50125 |goto 30.72,49.66
accept A Deathly Draught##50126 |goto 30.72,49.66
accept A Stone's Throw##50127 |goto 30.72,49.66
stickystart "Collect_Vials_of_Altered_Blood"
step
Jump down here |goto 30.21,48.99 < 10 |only if walking
Jump down here |goto 28.71,48.73 < 15 |only if walking
Jump down here |goto 27.97,49.34 < 10 |only if walking
Follow the road |goto 23.89,54.88 < 20 |only if walking
click Deathshroom##325490+
|tip They look like small blue mushrooms with flat tops on the ground around this area.
collect 15 Deathshroom##156658 |q 50126/1 |goto 21.71,56.64
step
label "Collect_Vials_of_Altered_Blood"
use the Bag of Transmutation Stones##156665
|tip Use it on Hexwood witches around this area.
kill Puny Trogg##133112+
|tip They appear after transmuting witches.
collect 8 Vial of Altered Blood##156664 |q 50127/1 |goto 21.71,56.64
step
Follow the road down |goto Drustvar/0 37.06,49.15 < 20 |only if walking
Follow the path down |goto 31.81,47.38 < 20 |only if walking
talk Quintin Whalgrene##132347
|tip Inside the cave.
turnin A Deathly Draught##50126 |goto 30.72,49.66
turnin A Stone's Throw##50127 |goto 30.72,49.66
accept Chemically Compounded##50128 |goto 30.72,49.66
step
Follow the path |goto 38.96,49.80 < 20 |only if walking
Continue following the path |goto 43.14,39.85 < 20 |only if walking
Enter the cave |goto 43.37,36.28 < 10 |walk
Meet Quintin at the Cave |q 50128/1 |goto 42.35,36.62
step
Watch the dialogue
Witness Quintin's Transformation |q 50128/2 |goto 42.35,36.62
step
kill Nightmare of the Woods##132347 |q 50128/3 |goto 42.35,36.62
|tip Inside the cave.
step
click Quintin's Satchel
|tip Inside the cave.
turnin Chemically Compounded##50128 |goto 42.25,36.69
accept A Recipe for Success##50129 |goto 42.25,36.69
step
talk Elric Whalgrene##132228
turnin A Recipe for Success##50129 |goto Boralus/0 74.21,6.54
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Archaeology\\Leveling Guides\\Archaeology 800-950",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Archaeology skill from 800-950.",
condition_end=function() return skill('Archaeology') >= 950 end,
condition_suggested=function() return skill('Archaeology') < 950 and level >= 5 end,
},[[
step
Reach Level 5 |ding 5
step
talk Jane Hudson##136106
|tip Inside the building.
Train Battle for Azeroth Archaeology |skillmax Archaeology,950 |goto Boralus/0 68.34,8.47
step
Search for dig sites on your world map
|tip You can earn points from any dig site in Kul Tiras and Zandalar.
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
Reach 950 Archaeology Skill |skill Archaeology,950
step
_Congratulations!_
You Reached 950 Archaeology Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Blacksmithing\\Leveling Guides\\Kul Tiran Blacksmithing 1-175",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Kul Tiran Blacksmithing profession from 1-175.",
startlevel=5.0,
condition_end=function() return skill('Kul Tiran Blacksmithing') >= 175 end,
condition_suggested=function() return skill('Kul Tiran Blacksmithing') > 0 and skill('Kul Tiran Blacksmithing') < 175 and level >= 5 end,
},[[
step
talk Grix "Ironfists" Barlow##133536
Train Kul Tiran Blacksmithing |skillmax Kul Tiran Blacksmithing,175 |goto Boralus/0 73.40,8.45
step
collect 1249 Monelite Ore##152512
|tip Use the Battle for Azeroth ore farming guides to gather them, if you have Mining.
|tip You can also purchase them from the Auction House.
step
collect 2150 Storm Silver Ore##152579
|tip Use the Battle for Azeroth ore farming guides to gather them, if you have Mining.
|tip You can also purchase them from the Auction House.
step
collect 300 Platinum Ore##152513
|tip Use the Battle for Azeroth ore farming guides to gather them, if you have Mining.
|tip You can also purchase them from the Auction House.
step
talk Grix "Ironfists" Barlow##133536
buy 7 Durable Flux##160298 |goto 73.40,8.45
step
talk Grix "Ironfists" Barlow##133536
buy 750 Elemental Flux##18567 |goto 73.40,8.45
step
Open Your Blacksmithing Crafting Panel:
_<Create 15 Monel-Hardened Armguards>_
Reach Level 15 Kul Tiran Blacksmithing |skill Kul Tiran Blacksmithing,15 |goto 73.52,8.54
step
talk Grix "Ironfists" Barlow##133536
Train Monel-Hardened Waistguard |learn Monel-Hardened Waistguard##253180 |goto 73.40,8.45
step
Open Your Blacksmithing Crafting Panel:
_<Create 13 Monel-Hardened Waistguard>_
Reach Level 28 Kul Tiran Blacksmithing |skill Kul Tiran Blacksmithing,28 |goto 73.52,8.54
step
talk Grix "Ironfists" Barlow##133536
Train Monel-Hardened Greaves |learn Monel-Hardened Greaves##253174 |goto 73.40,8.45
step
Open Your Blacksmithing Crafting Panel:
_<Create 7 Monel-Hardened Greaves>_
Reach Level 35 Kul Tiran Blacksmithing |skill Kul Tiran Blacksmithing,35 |goto 73.52,8.54
step
talk Grix "Ironfists" Barlow##133536
Train Monel-Hardened Breastplate |learn Monel-Hardened Breastplate##253162 |goto 73.40,8.45
step
Open Your Blacksmithing Crafting Panel:
_<Create 15 Monel-Hardened Breastplate>_
Reach Level 50 Kul Tiran Blacksmithing |skill Kul Tiran Blacksmithing,50 |goto 73.52,8.54
step
talk Grix "Ironfists" Barlow##133536
Train Monelite Skeleton Key |learn Monelite Skeleton Key##269064 |goto 73.40,8.45
step
Open Your Blacksmithing Crafting Panel:
_<Create 20 Monelite Skeleton Key>_
|tip You may need to craft a few more to reach level 60.
Reach Level 60 Kul Tiran Blacksmithing |skill Kul Tiran Blacksmithing,60 |goto 73.52,8.54
step
Open Your Blacksmithing Crafting Panel:
_<Create 25 Monel-Hardened Breastplate>_
|tip You may need to craft a few more to reach level 85.
Reach Level 85 Kul Tiran Blacksmithing |skill Kul Tiran Blacksmithing,85 |goto 73.52,8.54
step
talk Grix "Ironfists" Barlow##133536
Train Honorable Combatant's Plate Armguards |learn Honorable Combatant's Plate Armguards##269451 |goto 73.40,8.45
step
Open Your Blacksmithing Crafting Panel:
_<Create 15 Honorable Combatant's Plate Armguards>_
Reach Level 100 Kul Tiran Blacksmithing |skill Kul Tiran Blacksmithing,100 |goto 73.52,8.54
step
talk Grix "Ironfists" Barlow##133536
Train Honorable Combatant's Plate Boots |learn Honorable Combatant's Plate Boots##269424 |goto 73.40,8.45
step
Open Your Blacksmithing Crafting Panel:
_<Create 10 Honorable Combatant's Plate Boots>_
Reach Level 110 Kul Tiran Blacksmithing |skill Kul Tiran Blacksmithing,110 |goto 73.52,8.54
step
talk Grix "Ironfists" Barlow##133536
Train Honorable Combatant's Plate Greaves |learn Honorable Combatant's Plate Greaves##269444 |goto 73.40,8.45
step
Open Your Blacksmithing Crafting Panel:
_<Create 10 Honorable Combatant's Plate Greaves>_
Reach Level 120 Kul Tiran Blacksmithing |skill Kul Tiran Blacksmithing,120 |goto 73.52,8.54
step
talk Grix "Ironfists" Barlow##133536
Train Stormsteel Dagger (Rank 1) |learn Stormsteel Dagger##253156 |goto 73.40,8.45
step
talk Grix "Ironfists" Barlow##133536
Train Stormsteel Dagger (Rank 2) |learn Stormsteel Dagger##253157 |goto 73.40,8.45
step
Reach Revered with the 7th Legion |complete rep("7th Legion") >= Revered
|tip Use our "7th Legion" reputation guide to accomplish this.
step
talk Vindicator Jaelaana##135446
buy 1 Recipe: Stormsteel Dagger##162275 |goto 69.32,24.94
step
use Recipe: Stormsteel Dagger##162275
Train Stormsteel Dagger (Rank 3) |learn Stormsteel Dagger##253158
step
click Scrap-O-Matic 1000##293132
|tip Use this device to destroy old gear and turn it into Expulsom.
|tip You can purchase level 50+ gear from the Auction House to use if you don't have any.
collect 50 Expulsom##152668 |goto 77.13,16.32
step
Open Your Blacksmithing Crafting Panel:
_<Create 50 Stormsteel Dagger>_
|tip You may need to craft more or less of these to reach 150.
Reach Level 150 Kul Tiran Blacksmithing |skill Kul Tiran Blacksmithing,150 |goto 73.52,8.54
step
Reach Level 50 |ding 50
step
Complete the Quest "A Way Home" |complete completedq(54972)
|tip Use the "Nazjatar" leveling guide to accomplish this.
step
talk Instructor Alikana##153817
Train Inflatable Mount Shoes |learn Inflatable Mount Shoes##301413 |goto Nazjatar/0 38.01,53.59
step
collect 40 Monel-Hardened Hoofplates##152812
|tip Craft them with Blacksmithing or purchase them from the Auction House.
|tip These require 15-25 Monelite Ore and 2 Durable Flux each.
step
collect 320 Dredged Leather Bladder##169445
|tip Craft them with Leatherworking or purchase them from the Auction House.
|tip These require 10 Dredged Leather and 5 Nylon Thread each.
step
Open Your Blacksmithing Crafting Panel:
_<Create 40 Inflatable Mount Shoes>_
|tip You may need to craft more or less of these to reach 175.
Reach Level 175 Kul Tiran Blacksmithing |skill Kul Tiran Blacksmithing,175
step
_Congratulations!_
You Reached 175 Kul Tiran Blacksmithing Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Blacksmithing\\Leveling Guides\\Tools of the Trade - Blacksmithing",{
author="support@zygorguides.com",
description="\nUpon completion of this guide, you will earn Khaz'gorian Smithing Hammer. This allows you to repair a piece of "..
"your equipment instantly, as well as granting a chance for your Blacksmithing-created items to be Indestructible.",
startlevel=50.0,
condition_end=function() return completedq(50275) end,
condition_suggested=function() return skill('Kul Tiran Blacksmithing') >= 150 and level >= 50 and not completedq(50275) end,
condition_visible=function() return skill('Kul Tiran Blacksmithing') >= 1 end,
},[[
step
Reach Level 150 Kul Tiran Blacksmithing |skill Kul Tiran Blacksmithing,175
|tip Use the "Kul Tiran Blacksmithing 1-150" profession guide to accomplish this.
step
talk Grix "Ironfists" Barlow##133536
accept A Recipe For the Ages##50123 |goto Boralus/0 73.43,8.47
step
Follow the path up |goto Drustvar/0 67.28,55.07 < 30 |only if walking
Continue up the path |goto 63.82,57.96 < 30 |only if walking
Kill Awoken enemies around this area
collect 30 Revlis Ore##156875 |q 50123/1 |goto 61.16,62.
step
talk Grix "Ironfists" Barlow##133536
turnin A Recipe For the Ages##50123 |goto Boralus/0 73.43,8.47
accept Hammering Out Information##50114 |goto 73.43,8.47
step
talk Grix "Ironfists" Barlow##133536
Tell him _"I'd really like to know more about the anvil."_
Press Grix for More Information |q 50114/1 |goto 73.43,8.47
step
talk Grix "Ironfists" Barlow##133536
turnin Hammering Out Information##50114 |goto 73.43,8.47
accept Deep In the Core##50270 |goto 73.43,8.47
step
click Portal to Deepholm
Travel to Stormwind and Take the Portal to Deepholm |q 50270/1 |goto Stormwind City/0 73.20,19.65
step
Leave the building |goto Deepholm/0 49.98,55.49 < 30
talk Ormhun Stonehammer##133489
Seek Out Ormhun Stonehammer |q 50270/2 |goto 53.98,50.09
step
talk Ormhun Stonehammer##133489
turnin Deep In the Core##50270 |goto 53.98,50.09
accept Smash and Grab##50271 |goto 53.98,50.09
accept An Ear to the Ground##50272 |goto 53.98,50.09
step
use the Earthen Thumper##157556
|tip Place it near rumbling smoky areas on the ground around this area.
kill Endurite Gyreworm##133562+
collect 30 Endurite##156886 |q 50272/1 |goto 51.01,41.65
step
click Diaminium Pillar+
|tip They look like crystal and stone pillars on the ground around this area.
click Diaminium Fragment##281232+
|tip They look like small grey rocks on the ground around this area.
|tip They spawn after clicking Diaminium Pillars.
collect 60 Diaminium##156887 |q 50271/1 |goto 55.06,85.58
step
talk Ormhun Stonehammer##133489
turnin Smash and Grab##50271 |goto 53.98,50.09
turnin An Ear to the Ground##50272 |goto 53.98,50.09
accept Titanic Forging##50274 |goto 53.98,50.09
step
Meet Ormhun Near the Shuddering Spires |q 50274/1 |goto 27.77,49.70
step
talk Ormhun Stonehammer##133489
Tell him _"I'm ready to make the anvil."_
Speak with Ormhun to Craft the Anvil |q 50274/2 |goto 27.77,49.71
step
Watch the dialogue
click Heated Metal
|tip Stand still until the crafting completes.
Craft the Anvil |q 50274/3 |goto 27.88,49.73
step
Watch the dialogue
talk Ormhun Stonehammer##133489
turnin Titanic Forging##50274 |goto 27.82,49.75
step
Watch the dialogue
talk Therazane##133796
accept Therazane's Choice##50288 |goto 27.59,50.81
step
Watch the dialogue
Hear Therazane's Proposal |q 50288/1 |goto 27.59,50.81
step
clicknpc Khaz'gorian Anvil##133677
|tip
_Or_
|tip
clicknpc Ormhun Stonehammer##133673
Make Your Choice |q 50288/2 |goto 27.66,50.56
|tip Either choice yields the same result.
step
Watch the dialogue
talk Therazane##133796
turnin Therazane's Choice##50288 |goto 27.59,50.81
accept Anvil's Away##50275 |goto 27.59,50.81
step
talk Grix "Ironfists" Barlow##133536
turnin Anvil's Away##50275 |goto Boralus/0 73.43,8.47
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Leveling Guides\\Kul Tiran Cooking 1-175",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Kul Tiran Cooking profession from 1-175.",
startlevel=5.0,
condition_end=function() return skill('Kul Tiran Cooking') >= 175 end,
condition_suggested=function() return skill('Kul Tiran Cooking') > 0 and skill('Kul Tiran Cooking') < 175 and level >= 5 end,
},[[
step
talk "Cap'n" Byron Mehlsack##136052
Learn Kul Tiran Cooking |skillmax Kul Tiran Cooking,175 |goto Boralus/0 71.21,10.70
step
Load the "Aromatic Fish Oil" guide |confirm |next "Profession Guides\\Fishing\\Farming Guides\\Aromatic Fish Oil"
|tip Click the line above to load the guide.
|tip You will need the "Fishing" skill in order to utilize the guide.
collect 98 Aromatic Fish Oil##160711
|tip These are gathered from using fish caught in Zandalar and Kul Tiras.
|tip You can also purchase them from the Auction House.
|only if skill("Kul Tiran Cooking") < 50
step
talk Sara Bartlett##123635
buy 245 Foosaka##160400 |goto 72.96,15.58
|only if skill("Kul Tiran Cooking") < 50
step
talk Sara Bartlett##123635
buy 196 Powdered Sugar##160712 |goto 72.96,15.58
|only if skill("Kul Tiran Cooking") < 50
step
talk Sara Bartlett##123635
buy 490 Wild Flour##160399 |goto 72.96,15.58
|only if skill("Kul Tiran Cooking") < 50
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 34 Mon'Dazi>_
|tip Be sure to save any Mon'Dazi you craft.
Reach Level 35 Kul Tiran Cooking |skill Kul Tiran Cooking,35
step
talk "Cap'n" Byron Mehlsack##136052
Learn the Rank 2 Recipe for Mon'Dazi |learn Mon'Dazi##259443 |goto 71.22,10.69
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 15 Mon'Dazi>_
|tip Be sure to save any Mon'Dazi you craft.
Reach Level 50 Kul Tiran Cooking |skill Kul Tiran Cooking,50
step
talk "Cap'n" Byron Mehlsack##136052
Learn the Recipe for Honey-Glazed Haunches |learn Honey-Glazed Haunches##259414 |goto 71.22,10.69
step
Load the "Meaty Haunch" guide |confirm |next "Profession Guides\\Cooking\\Farming Guides\\Meaty Haunch"
|tip Click the line above to load the guide.
collect 600 Meaty Haunch##154898
|tip You can also purchase them from the Auction House.
|only if skill("Kul Tiran Cooking") < 110
step
talk Sara Bartlett##123635
buy 300 Choral Honey##160398 |goto 72.96,15.58
|only if skill("Kul Tiran Cooking") < 110
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 40 Honey-Glazed Haunches>_
Reach Level 90 Kul Tiran Cooking |skill Kul Tiran Cooking,90
step
talk "Cap'n" Byron Mehlsack##136052
Learn the Rank 2 Recipe for Honey-Glazed Haunches |learn Honey-Glazed Haunches##259415 |goto 71.22,10.69
step
talk "Cap'n" Byron Mehlsack##136052
Learn the Recipe for Kul Tiramisu |learn Kul Tiramisu##259411 |goto 71.22,10.69
step
talk "Cap'n" Byron Mehlsack##136052
Learn the Rank 2 Recipe for Kul Tiramisu |learn Kul Tiramisu##259412 |goto 71.22,10.69
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 20 Honey-Glazed Haunches>_
Reach Level 110 Kul Tiran Cooking |skill Kul Tiran Cooking,110
step
talk "Cap'n" Byron Mehlsack##136052
Learn the Recipe for the Bountiful Captain's Feast |learn Bountiful Captain's Feast##259421 |goto 71.22,10.69
step
collect 420 Mon'Dazi##154885
|tip You can also purchase them from the Auction House.
|tip You should have at least 275 saved from crafting.
|tip To craft the rest, you will need:
|tip 60 Aromatic Fish.
|tip 120 Powdered Sugar.
|tip 150 Foosaka.
|tip 300 Wild Flour.
|only if skill("Kul Tiran Cooking") < 150
step
collect 420 Kul Tiramisu##154881
|tip You can also purchase them from the Auction House.
|tip To craft the rest, you will need:
|tip 690 Wild Flour.
|tip 345 Foosaka.
|tip 138 Aromatic Fish Oil.
|tip 345 Major's Frothy Coffee.
|only if skill("Kul Tiran Cooking") < 145
step
Load the "Redtail Loach" guide |confirm |next "Profession Guides\\Fishing\\Farming Guides\\Redtail Loach"
|tip Click the line above to load the guide.
|tip You will need the "Fishing" skill in order to utilize the guide.
collect 700 Redtail Loach##152549
|tip You can also purchase them from the Auction House.
only if skill("Kul Tiran Cooking") < 145
step
Load the "Frenzied Fangtooth" guide |confirm |next "Profession Guides\\Fishing\\Farming Guides\\Frenzied Fangtooth"
|tip Click the line above to load the guide.
|tip You will need the "Fishing" skill in order to utilize the guide.
collect 700 Frenzied Fangtooth##152545
|tip You can also purchase them from the Auction House.
only if skill("Kul Tiran Cooking") < 145
step
Load the "Stringy Loins" guide |confirm |next "Profession Guides\\Cooking\\Farming Guides\\Stringy Loins"
|tip Click the line above to load the guide.
|tip You will need the "Fishing" skill in order to utilize the guide.
collect 700 Stringy Loins##154897
|tip You can also purchase them from the Auction House.
only if skill("Kul Tiran Cooking") < 145
step
Load the "Meaty Haunch" guide |confirm |next "Profession Guides\\Cooking\\Farming Guides\\Meaty Haunch"
|tip Click the line above to load the guide.
|tip You will need the "Fishing" skill in order to utilize the guide.
collect 700 Meaty Haunch##154898
|tip You can also purchase them from the Auction House.
only if skill("Kul Tiran Cooking") < 145
step
Load the "Midnight Salmon" guide |confirm |next "Profession Guides\\Fishing\\Farming Guides\\Midnight Salmon"
|tip Click the line above to load the guide.
|tip You will need the "Fishing" skill in order to utilize the guide.
collect 185 Midnight Salmon##162515
|tip You can also purchase them from the Auction House.
only if skill("Kul Tiran Cooking") < 145
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 35 Bountiful Captain's Feasts>_
Reach Level 145 Kul Tiran Cooking |skill Kul Tiran Cooking,145
step
Reach Level 50 |ding 50
step
Complete the Quest "A Way Home" |complete completedq(54972)
|tip Use the "Nazjatar" leveling guide to accomplish this.
step
collect 360 Moist Fillet##168645
|tip Farm them from Beast mobs in Nazjatar or purchase them from the Auction House.
step
talk Instructor Ulooaka##154257
buy 135 Foosaka##160400 |goto Nazjatar/0 37.98,52.91
buy 225 Wild Flour##160399 |goto 37.98,52.91
step
talk Instructor Ulooaka##154257
Train Abyssal-Fried Rissole (Rank 1) |learn Abyssal-Fried Rissole##297084 |goto 37.98,52.91
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 20 Abyssal-Fried Rissole>_
Reach Level 155 Kul Tiran Cooking |skill Kul Tiran Cooking,155
step
talk Instructor Ulooaka##154257
Train Abyssal-Fried Rissole (Rank 2) |learn Abyssal-Fried Rissole##297085 |goto 37.98,52.91
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 35 Abyssal-Fried Rissole>_
|tip You may need to make more or less of these.
Reach Level 175 Kul Tiran Cooking |skill Kul Tiran Cooking,175
step
_Congratulations!_
You Reached 175 Kul Tiran Cooking Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Aberrant Voidfin",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Aberrant Voidfin for various Cooking recipes.",
startlevel=10.0,
},[[
step
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96
step
cast Fishing##131474
collect Aberrant Voidfin##174328 |n |goto 72.64,58.11
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Briny Flesh",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Briny Flesh for various Cooking recipes.",
startlevel=10.0,
},[[
step
kill Venomous Coilscale##130232
|tip If you have the "Skinning" skill, you can gather extra meat.
collect Briny Flesh##152631 |n |goto Tiragarde Sound/0 58.4,32.6
You can find more around [57.18,33.28]
confirm
step
kill Razorjaw Chomper##123083
map Nazmir/0
path follow smart; loop off; ants curved; dist 20
path	55.99,77.68	55.59,76.57	56.96,76.63	57.99,75.50	61.75,71.02
path	63.96,67.56	65.65,60.20
collect Briny Flesh##152631 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Malformed Gnasher",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Malformed Gnasher for various Cooking recipes.",
startlevel=10.0,
},[[
step
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14
step
cast Fishing##131474
collect Malformed Gnasher##174327 |n |goto 82.96,58.25
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Meaty Haunch",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Meaty Haunch for various Cooking recipes.",
startlevel=10.0,
},[[
step
Kill enemies around this area
|tip If you have the "Skinning" skill, you can gather extra meat.
collect Meaty Haunch##154898 |n |goto Zuldazar/0 69.82,26.34
You can find more around [70.34,23.77]
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Moist Fillet",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Moist Fillet for various Cooking recipes.",
startlevel=10.0,
},[[
step
kill Deeptide Frenzy##144647+
|tip In the lake and inside the underwater cave.
|tip Surface for air inside the cave and outside.
collect Moist Fillet##168645 |goto Nazjatar/0 46.43,84.11 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Questionable Meat",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Questionable Meat for various Cooking recipes.",
startlevel=10.0,
},[[
step
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96
step
kill Thundermaw##156778+
collect Questionable Meat##174353 |n |goto 25.12,75.08
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Rubbery Flank",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Rubbery Flank for various Cooking recipes.",
startlevel=10.0,
},[[
step
map Nazjatar/0
path follow smart; loop on; ants curved; dist 30
path	62.96,50.71	66.11,47.80	69.29,49.53	68.62,52.14	70.82,54.52
path	72.14,51.63	71.10,48.28	69.29,46.42	66.92,46.06	65.14,44.42
path	63.47,45.03	62.50,43.95	61.42,44.30	61.26,46.34
Kill enemies around this area
|tip Kill Turtles and Snapdragons.
collect Rubbery Flank##168303 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Stringy Loins",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Stringy Loins for various Cooking recipes.",
startlevel=10.0,
},[[
step
kill Shallows Saurolisk##125452
|tip You will need the "Skinning" skill in order to gather these.
collect Stringy Loins##154897 |n |goto Drustvar/0 68.2,40.6
You can find more around [65.33,40.57]
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Thick Paleo Steak",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Thick Paleo Steak for various Cooking recipes.",
startlevel=10.0,
},[[
step
kill Venomous Diemetradon##123098+
|tip If you have the "Skinning" skill, you can gather extra meat.
collect Thick Paleo Steak##154899 |n |goto Zuldazar/0 68.15,25.53
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Enchanting\\Leveling Guides\\Kul Tiran Enchanting 1-175",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Kul Tiran Enchanting profession from 1-175.",
startlevel=5.0,
condition_end=function() return skill('Kul Tiran Enchanting') >= 175 end,
condition_suggested=function() return skill('Kul Tiran Enchanting') > 0 and skill('Kul Tiran Enchanting') < 175 and level >= 5 end,
},[[
step
talk Emily Fairweather##136041
Train Kul Tiran Enchanting |skillmax Kul Tiran Enchanting,175 |goto Boralus/0 74.02,11.56
step
talk Emily Fairweather##136041
buy 160 Enchanting Vellum##38682 |goto 74.02,11.56
step
talk Emily Fairweather##136041
buy Copper Rod##6217 |goto 74.02,11.56 |only if itemcount(6218) == 0
step
talk Emily Fairweather##136041
buy Strange Dust##10940 |goto 74.02,11.56 |only if itemcount(6218) == 0
step
talk Emily Fairweather##136041
buy Lesser Magic Essence##10938 |goto 74.02,11.56 |only if itemcount(6218) == 0
step
Open Your Enchanting Crafting Panel:
_<Create 1 Runed Copper Rod>_
collect Runed Copper Rod##6218
step
collect 3135 Gloom Dust##152875
|tip You can get these by disenchanting Battle for Azeroth level Uncommon (green) armor and weapons.
|tip You can also purchase them from the Auction House.
step
collect 684 Umbra Shard##152876
|tip You can get these by disenchanting Battle for Azeroth level Rare (blue) armor and weapons.
|tip You can also purchase them from the Auction House.
step
collect 425 Veiled Crystal##152877
|tip You can get these by disenchanting Battle for Azeroth level Epic (purple) armor and weapons.
|tip You can also purchase them from the Auction House.
step
Open Your Enchanting Crafting Panel:
_<Create 9 Kul Tiran Crafting>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach Level 10 Kul Tiran Enchanting |skill Kul Tiran Enchanting,10
step
Open Your Enchanting Crafting Panel:
_<Create 15 Seal of Versatility>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach Level 25 Kul Tiran Enchanting |skill Kul Tiran Enchanting,25
step
talk Emily Fairweather##136041
Train Safe Hearthing |learn Safe Hearthing##271366 |goto 74.02,11.56
step
Open Your Enchanting Crafting Panel:
_<Create 10 Safe Hearthing>_
|tip Click your bracers place the selected enchantment on them.
|tip Keep doing this, overwriting the existing enchant.
Reach Level 35 Kul Tiran Enchanting |skill Kul Tiran Enchanting,35
step
talk Emily Fairweather##136041
Train Seal of Versatility (Rank 2) |learn Seal of Versatility##255089 |goto 74.02,11.56
step
Open Your Enchanting Crafting Panel:
_<Create 5 Seal of Versatility>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach Level 40 Kul Tiran Enchanting |skill Kul Tiran Enchanting,40
step
talk Emily Fairweather##136041
Train Weapon Enchant - Gale-Force Striking |learn Weapon Enchant - Gale-Force Striking##255141 |goto 74.02,11.56
step
Open Your Enchanting Crafting Panel:
_<Create 20 Weapon Enchant - Gale-Force Striking>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach Level 60 Kul Tiran Enchanting |skill Kul Tiran Enchanting,60
step
talk Emily Fairweather##136041
Train Weapon Enchant - Deadly Navigation |learn Weapon Enchant - Deadly Navigation##268907 |goto 74.02,11.56
step
Open Your Enchanting Crafting Panel:
_<Create 15 Weapon Enchant - Deadly Navigation>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach Level 75 Kul Tiran Enchanting |skill Kul Tiran Enchanting,75
step
talk Emily Fairweather##136041
Train Pact of Critical Strike |learn Pact of Critical Strike##255075 |goto 74.02,11.56
step
Open Your Enchanting Crafting Panel:
_<Create 25 Pact of Critical Strike>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach Level 100 Kul Tiran Enchanting |skill Kul Tiran Enchanting,100
step
talk Emily Fairweather##136041
Train Pact of Critical Strike (Rank 2) |learn Pact of Critical Strike##255090 |goto 74.02,11.56
step
Open Your Enchanting Crafting Panel:
_<Create 25 Pact of Critical Strike>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach Level 125 Kul Tiran Enchanting |skill Kul Tiran Enchanting,125
step
talk Emily Fairweather##136041
Train Weapon Enchant - Quick Navigation (Rank 1) |learn Weapon Enchant - Quick Navigation##268894 |goto 74.02,11.56
step
talk Emily Fairweather##136041
Train Weapon Enchant - Quick Navigation (Rank 2) |learn Weapon Enchant - Quick Navigation##268895 |goto 74.02,11.56
step
Open Your Enchanting Crafting Panel:
_<Create 25 Weapon Enchant - Quick Navigation>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach Level 150 Kul Tiran Enchanting |skill Kul Tiran Enchanting,150
step
Reach Level 50 |ding 50
step
Complete the Quest "A Way Home" |complete completedq(54972)
|tip Use the "Nazjatar" leveling guide to accomplish this.
step
talk Instructor Okanu##153811
Train Accord of Critical Strike (Rank 1) |learn Accord of Critical Strike##298009 |goto Nazjatar/0 37.93,53.18
step
Open Your Enchanting Crafting Panel:
_<Create 5 Accord of Critical Strike>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach Level 155 Kul Tiran Enchanting |skill Kul Tiran Enchanting,155
step
collect 17 Monel-Hardened Hoofplates##152812
|tip Create them with Blacksmithing or purchase them from the Auction House.
step
talk Instructor Okanu##153811
Train Light-Step Hoofplates |learn Light-Step Hoofplates##301412 |goto 37.93,53.18
step
Open Your Enchanting Crafting Panel:
_<Create 17 Light-Step Hoofplates>_
Reach Level 170 Kul Tiran Enchanting |skill Kul Tiran Enchanting,170
step
talk Instructor Okanu##153811
Train Machinist's Brilliance (Rank 1) |learn Machinist's Brilliance##298433 |goto 37.93,53.18
step
talk Instructor Okanu##153811
Train Machinist's Brilliance (Rank 2) |learn Machinist's Brilliance##300769 |goto 37.93,53.18
step
Open Your Enchanting Crafting Panel:
_<Create 5 Machinist's Brilliance>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach Level 175 Kul Tiran Enchanting |skill Kul Tiran Enchanting,175
step
_Congratulations!_
You Reached 175 Kul Tiran Enchanting Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Enchanting\\Leveling Guides\\Tools of the Trade - Enchanting",{
author="support@zygorguides.com",
description="\nUpon completion of this guide, you will earn Iwen's Enchanting Rod. This allows you to animate golems "..
"found in various locations around Zandalar and Kul Tiras, as well as granting additional Enchanting "..
"resources from Disenchanting.",
startlevel=50.0,
condition_end=function() return completedq(54002) end,
condition_suggested=function() return skill('Kul Tiran Enchanting') >= 150 and level >= 50 and not completedq(54002) end,
condition_visible=function() return skill('Kul Tiran Enchanting') >= 1 end,
},[[
step
Reach Level 150 Kul Tiran Enchanting |skill Kul Tiran Enchanting,175
|tip Use the "Kul Tiran Enchanting 1-150" profession guide to accomplish this.
step
collect 3 Veiled Crystal##152877 |q 54005 |future
|tip You will need these later.
step
talk Emily Fairweather##136041
accept What the Drust Knew##54005 |goto Boralus/0 74.03,11.55
step
talk Emily Fairweather##136041
Tell her _"Show me this Drust relic."_
Speak to Emily Fairweather |q 54005/1 |goto 74.03,11.55
step
Watch the dialogue
click Ancient Drust Relic
|tip Stand stil while channeling.
Learn the Secrets to the Ancient Drust Relic's Construction |q 54005/2 |goto 74.21,11.44
step
talk Emily Fairweather##136041
turnin What the Drust Knew##54005 |goto 74.03,11.55
step
_Click the Accept Quest Box:_
accept A Voice on the Wind##53993 |goto 74.03,11.55
step
Cross the bridge |goto Drustvar/0 54.55,36.59 < 15 |only if walking
talk Sef Iwen##146053
turnin A Voice on the Wind##53993 |goto 53.39,40.14
accept Pick Up Sticks##53996 |goto 53.39,40.14
step
Follow the path |goto 52.45,39.25 < 20 |only if walking
Continue following the path |goto 51.75,36.45 < 20 |only if walking
click Bundle of Hard Wood+
|tip They look like small stacks of wood at the base of trees around this area.
collect 9 Bundle of Hard Wood##164979 |q 53996/1 |goto 51.88,33.50
step
Follow the path |goto 51.63,36.86 < 20 |only if walking
Cross the water |goto 52.54,39.39 < 20 |only if walking
talk Sef Iwen##146053
turnin Pick Up Sticks##53996 |goto 53.39,40.14
accept The Sixth Sense##53997 |goto 53.39,40.14
step
talk Sef Iwen##146053
Choose _<Lead the way.>_
Speak with Sef Iwen |q 53997/1 |goto 53.39,40.14
step
Follow Sef Iwen to Her Grave |q 53997/2 |goto 54.04,41.90
|tip Stay close to Sef as you walk.
step
click Grisly Ward
Disenchant the Grisly Ward to Free Sef Iwen |q 53997/3 |goto 54.05,41.89
step
click Grisly Ward+
|tip They look like totems made of branches and cloth on the ground around this area.
|tip Stay close to Sef as you walk.
Continue to Sef Iwen's Grave |q 53997/4 |goto 55.34,46.05
step
talk Sef Iwen##146091
turnin The Sixth Sense##53997 |goto 55.34,46.05
accept Exhumed##53998 |goto 55.34,46.05
step
click Ancient Grave
Dig Up Sef's Remains |q 53998/1 |goto 55.31,46.02
step
click Sef Iwen's Remains
Cleanse the Remains |q 53998/2 |goto 55.30,46.03
step
talk Sef Iwen##146091
turnin Exhumed##53998 |goto 55.34,46.06
accept The Threads That Bind##53999 |goto 55.34,46.06
step
Cross the bridge |goto 69.45,59.26 < 20 |only if walking
Follow the path up |goto 67.44,55.39 < 30 |only if walking
kill Venomous Weaver##125130+
collect 55 Durable Spider Silk##164985 |q 53999/1 |goto 65.63,54.37
step
Follow the road up |goto 64.72,55.43 < 20 |only if walking
talk Sef Iwen##146093
turnin The Threads That Bind##53999 |goto 62.97,59.44
accept The Beat Goes On##54000 |goto 62.97,59.44
step
click Smooth River Stone##310446
|tip They look like tiny glowing stones at the edge of the water around this area.
collect Smooth River Stone##165022 |q 54000/1 |goto 62.84,61.54
step
Open Your Enchanting Crafting Panel:
_<Create 1 Enchant Runic Power Core>_
Create a Runic Power Core |q 54000/2
step
Kill enemies around this area
use the Runic Power Core##165023
|tip Use it near enemy corpses.
Consume #12# Souls |q 54000/3 |goto 61.17,62.18
step
talk Sef Iwen##146094
turnin The Beat Goes On##54000 |goto 58.93,62.87
accept We're Going In##54001 |goto 58.93,62.87
step
click Runic Ward+
|tip Click them in this order: top left, top right, bottom left, bottom right.
Activate the Sigils |q 54001/1 |goto 58.86,62.94
step
click Portal to Sef Iwen's Sanctum
Use Portal to Sef Iwen's Sanctum |q 54001/2 |goto 58.88,62.98
step
talk Sef Iwen##146094
|tip Inside the cave.
turnin We're Going In##54001 |goto 57.76,80.76
accept Putting It All Together##54002 |goto 57.76,80.76
step
click Bundle of Hard Wood
|tip Inside the cave.
Place the Wood |q 54002/1 |goto 57.80,80.66
step
click Spider Silk Ties
|tip Inside the cave.
Place the Silk Wrappings |q 54002/2 |goto 57.80,80.66
step
click Power Core
|tip Inside the cave.
Place the Runic Power Core |q 54002/3 |goto 57.80,80.66
step
Watch the dialogue
Assemble the Golem |q 54002/4 |goto 57.80,80.66
|tip Click the action button that appears on-screen.
step
Watch the dialogue
kill Animated Golem##147286 |q 54002/5 |goto 57.79,80.59
|tip Inside the cave.
step
Watch the dialogue
talk Sef Iwen##146094
|tip Inside the cave.
turnin Putting It All Together##54002 |goto 57.76,80.76
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Engineering\\Leveling Guides\\Kul Tiran Engineering 1-175",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Kul Tiran Engineering profession from 1-175.",
startlevel=5.0,
condition_end=function() return skill('Kul Tiran Engineering') >= 175 end,
condition_suggested=function() return skill('Kul Tiran Engineering') > 0 and skill('Kul Tiran Engineering') < 175 and level >= 5 end,
},[[
step
Follow the path |goto Boralus/0 68.18,15.66 < 7 |only if walking
Continue following the path |goto 70.62,16.90 < 10 |only if walking
Continue following the path |goto 72.31,14.46 < 7 |only if walking
Continue following the path |goto 75.35,15.76 < 10 |only if walking
talk Layla Evenkeel##136059
Learn Kul Tiran Engineering |skillmax Kul Tiran Engineering,175 |goto 77.63,14.32
step
Follow the path |goto 75.64,15.50 < 10 |only if walking
Run down the stairs |goto 74.98,17.38 < 5 |only if walking
Continue down the stairs |goto 74.46,17.38 < 5 |only if walking
talk Layla Evenkeel##136059
buy 165 Chemical Blasting Cap##160502 |goto 77.63,14.32
|only if skill("Kul Tiran Engineering") < 50
step
talk Layla Evenkeel##136059
buy 687 Insulated Wiring##163569 |goto 77.63,14.32
|only if skill("Kul Tiran Engineering") < 85
step
Load the "Monelite Ore" guide |confirm |next "Profession Guides\\Mining\\Farming Guides\\Monelite"
|tip Click the line above to load the guide.
|tip You will need the "Mining" skill in order to utilize the guide.
collect 920 Monelite Ore##152512
|tip You can also purchase them from the Auction House.
|only if skill("Kul Tiran Engineering") < 100
step
Open Your Engineering Crafting Panel:
_<Create 24 F.R.I.E.D.s>_
Reach Level 25 Kul Tiran Engineering |skill Kul Tiran Engineering,25
step
Run up the stairs |goto 74.46,17.38 < 5 |only if walking
Continue up the stairs |goto 74.98,17.38 < 5 |only if walking
Follow the path |goto 75.64,15.50 < 10 |only if walking
talk Layla Evenkeel##136059
Learn the Recipe for the Deployable Attire Rearranger |learn Deployable Attire Rearranger##256154 |goto 77.63,14.32
step
Load the "Storm Silver Ore" guide |confirm |next "Profession Guides\\Mining\\Farming Guides\\Storm Silver Ore"
|tip Click the line above to load the guide.
|tip You will need the "Mining" skill in order to utilize the guide.
collect 930 Storm Silver##152579
|tip You can also purchase them from the Auction House.
|only if skill("Kul Tiran Engineering") < 149
step
Open Your Engineering Crafting Panel:
_<Create 10 Deployable Attire Rearrangers>_
Reach Level 35 Kul Tiran Engineering |skill Kul Tiran Engineering,35
step
talk Layla Evenkeel##136059
Learn the Recipe for Crow's Nest Scope |learn Crow's Nest Scope##264960 |goto 77.63,14.32
step
talk Layla Evenkeel##136059
Learn the Rank 2 Recipe for the F.R.I.E.D. |learn F.R.I.E.D.##255393 |goto 77.63,14.32
step
Open Your Engineering Crafting Panel:
_<Create 15 F.R.I.E.D.s>_
Reach Level 50 Kul Tiran Engineering |skill Kul Tiran Engineering,50
step
talk Layla Evenkeel##136059
Learn the Rank 2 Recipe for the Deployable Attire Rearranger |learn Deployable Attire Rearrangers##256155 |goto 77.63,14.32
step
Open Your Engineering Crafting Panel:
_<Create 35 Deployable Attire Rearrangers>_
|tip You may need to create more to reach 85.
Reach Level 85 Kul Tiran Engineering |skill Kul Tiran Engineering,85
step
talk Layla Evenkeel##136059
Learn the Rank 2 Recipe for the Crow's Nest Scope |learn Crow's Nest Scope##264961 |goto 77.63,14.32
step
Open Your Engineering Crafting Panel:
_<Create 15 Crow's Nest Scope>_
Reach Level 100 Kul Tiran Engineering |skill Kul Tiran Engineering,100
step
talk Layla Evenkeel##136059
Learn the Recipe for Honorable Combatant's Discombobulator |learn Honorable Combatant's Discombobulator##269724 |goto 77.63,14.32
step
Load the "Platinum Ore" guide |confirm |next "Profession Guides\\Mining\\Farming Guides\\Platinum Ore"
|tip Click the line above to load the guide.
|tip You will need the "Mining" skill in order to utilize the guide.
collect 270 Platinum Ore##152513
|tip You can also purchase them from the Auction House.
|only if skill("Kul Tiran Engineering") < 149
step
collect 575 Expulsom##152668
|tip These are obtained from World Quests, Salvaging Gear, Milling Herbs and Disenchanting magical items.
You can find the Shred-Master Mk1 here [77.13,16.34]
|only if skill("Kul Tiran Engineering") < 149
step
Open Your Engineering Crafting Panel:
_<Create 10 Honorable Combatant's Discombobulator>_
Reach Level 110 Kul Tiran Engineering |skill Kul Tiran Engineering,110
step
talk Layla Evenkeel##136059
Learn the Recipe for Precision Attitude Adjuster |learn Precision Attitude Adjuster##253150 |goto 77.63,14.32
step
Open Your Engineering Crafting Panel:
_<Create 15 Precision Attitude Adjuster>_
Reach Level 125 Kul Tiran Engineering |skill Kul Tiran Engineering,125
step
talk Layla Evenkeel##136059
Learn the Recipe for AZ3-R1-T3 Bionic Bifocals |learn AZ3-R1-T3 Bionic Bifocals##272062 |goto 77.63,14.32
|tip Learn whichever is most suitable for your class.
step
Open Your Engineering Crafting Panel:
_<Create 15 AZ3-R1-T3 Bionic Bifocals>_
|tip Create whichever you decided to learn.
Reach Level 150 Kul Tiran Engineering |skill Kul Tiran Engineering,175
step
Complete the "Tools of the Trade - Engineering" Guide |complete completedq(53949)
step
kill Coin-Operated Crowd Pummeler##139904
collect 1 Coin Return Flipper##168153 |goto The MOTHERLODE!!/0 45.69,47.61
step
kill Galvazzt##133389
collect 1 Static Induction Matrix##168154 |goto Temple of Sethraliss/0 44.93,30.03
step
kill P4-N73R4##139205
collect 1 Miniaturized Power Core##168152 |goto Tiragarde Sound/0 65.21,64.52
step
Enter the cave |goto Stormsong Valley/0 34.93,32.60 < 10 |walk
kill Sabertron Technician##139334
|tip He walks around this area inside the cave.
kill Sabertron##139328
|tip One of the nearby metal cats will attack after you kill the Sabertron Technician.
collect 2 Miniaturized Power Core##168152 |goto 33.88,31.89
step
collect 185 Storm Silver Ore##152579
|tip Farm them with Mining or purchase them from the Auction House.
step
collect 425 Monelite Ore##152512
|tip Farm them with Mining or purchase them from the Auction House.
step
collect 10 Platinum Ore##152513
|tip Farm them with Mining or purchase them from the Auction House.
step
collect 10 Expulsom##152668
|tip These can be acquired from profession world quests and scrapping gear at the Scrap-O-Matic.
step
talk Layla Evenkeel##136059
buy 1325 Insulated Wiring##163569 |goto Boralus/0 77.63,14.32
buy 850 Chemical Blasting Cap##160502 |goto 77.63,14.32
step
Open Your Engineering Crafting Panel:
_<Create 1 Ub3r-Spanner>_
collect 1 Ub3r-Spanner
step
Reach Level 50 |ding 50
step
Complete the Quest "Welcome to the Resistance" |complete completedq(55736)
|tip Use the "Mechagon Island" leveling guide to accomplish this.
step
Reach Revered with the Rustbolt Resistance |complete rep('Rustbolt Resistance') >= Revered
|tip Use the "Rustbolt Resistance" reputation guide to accomplish this.
step
talk Stolen Royal Vendorbot##150716
buy 1 Schematic: Ub3r-Module: Scrap Cannon##168535 |goto Mechagon Island/0 73.68,36.90
step
use the Schematic: Ub3r-Module: Scrap Cannon##168535
Train Ub3r-Module: Scrap Cannon |learn Ub3r-Module: Scrap Cannon##298256
step
Open Your Engineering Crafting Panel:
_<Create 85 Ub3r-Module: Scrap Cannon>_
|tip You may need to make more or less of these.
Reach Level 175 Kul Tiran Engineering |skill Kul Tiran Engineering,175
step
_Congratulations!_
You Reached 175 Kul Tiran Engineering Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Engineering\\Leveling Guides\\Tools of the Trade - Engineering",{
author="support@zygorguides.com",
description="\nUpon completion of this guide, you will earn the ability to create The Ub3r-Spanner. This allows you to summon "..
"and craft Ub3r inventions with Engineering.",
startlevel=50.0,
condition_end=function() return completedq(53949) end,
condition_suggested=function() return skill('Kul Tiran Engineering') >= 150 and level >= 50 and not completedq(53949) end,
condition_visible=function() return skill('Kul Tiran Engineering') >= 1 end,
},[[
step
Reach Level 150 Kul Tiran Engineering |skill Kul Tiran Engineering,175
|tip Use the "Kul Tiran Engineering 1-150" profession guide to accomplish this.
step
talk Layla Evenkeel##136059
accept It's Scrap Work...##55028 |goto Boralus/0 77.63,14.34
step
Cross the bridge |goto Tiragarde Sound/0 59.40,59.74 < 20 |only if walking
Follow the path up |goto 62.05,57.89 < 20 |only if walking
Continue following the path |goto 63.97,60.36 < 20 |only if walking
kill V-300 SENTRY##137743+
use the Coiled Current Culler##167041
|tip Use it on their corpses.
Harvest #8# Unstable Currents |q 55028/1 |goto 64.44,62.36
step
Overcharge the Reinforced Schematic Cache |q 55028/2 |goto 65.28,64.18
|tip Use the "Overcharge" ability that appears on-screen.
step
click Reinforced Schematic Cache##321837
collect Encrypted Ub3r-Spanner Schematic##167037 |q 55028/3 |goto 65.28,64.17
step
talk Layla Evenkeel##136059
turnin It's Scrap Work...##55028 |goto Boralus/0 77.63,14.34
accept In the Dunes##53947 |goto 77.63,14.34
step
Follow the path down |goto Vol'dun/0 27.12,49.75 < 20 |only if walking
talk Dataguru Gryzix##145131
turnin In the Dunes##53947 |goto 26.26,47.35
accept Sethrak Persuasion##53802 |goto 26.26,47.35
accept Heavy is the Head##53806 |goto 26.26,47.35
accept Mechanical Liberation##54930 |goto 26.26,47.35
stickystart "Liberate_Mechs"
stickystart "Collect_Faithless_Lightning_Rods"
step
Follow the path |goto Vol'dun/0 38.12,83.11 < 20 |only if walking
Continue following the path |goto 35.64,79.08 < 20 |only if walking
Continue following the path |goto 33.21,76.75 < 20 |only if walking
kill Warlord Surgios##145280
collect Goblin "Mind Enhancer"##166882 |q 53806/1 |goto 30.87,76.86
step
label "Liberate_Mechs"
clicknpc Mecha-Golem##145697+
|tip They look like inactive mechanical constructs around this area.
Liberate #5# Mechs |q 54930/1 |goto 31.09,76.47
step
label "Collect_Faithless_Lightning_Rods"
click Faithless Cache##307425+
|tip They look like medium-sized chests on the ground around this area.
Kill Scalefang enemies around this area
collect 7 Faithless Lightning Rod##164770 |q 53802/1 |goto 31.09,76.47
step
Follow the path down |goto 27.12,49.75 < 20 |only if walking
talk Dataguru Gryzix##145131
turnin Sethrak Persuasion##53802 |goto 26.24,47.32
turnin Heavy is the Head##53806 |goto 26.24,47.32
turnin Mechanical Liberation##54930 |goto 26.24,47.32
accept Tooling Around Vol'dun##53848 |goto 26.24,47.32
step
click Goblin "Mind Enhancer"
Equip the Goblin "Mind Enhancer" |q 53848/1 |goto 26.24,47.34
step
Follow the path |goto 25.20,49.24 < 20 |only if walking
click Gryzix's Toolbox##321009
collect Gryzix's Toolbox##166881 |q 53848/2 |goto 25.12,51.88
step
Follow the path |goto 25.29,49.81 < 20 |only if walking
talk Dataguru Gryzix##145131
turnin Tooling Around Vol'dun##53848 |goto 26.24,47.32
step
click Venture Co. Letter
accept Vengeful Venture##53948 |goto 26.26,47.30
step
Follow the path up |goto 27.45,48.42 < 20 |only if walking
Cross the bridge |goto 30.69,54.99 < 20 |only if walking
Follow the path up |goto 33.04,57.47 < 20 |only if walking
Continue following the path |goto 34.78,58.37 < 20 |only if walking
Find the Venture Co. In Vol'dun |q 53948/1 |goto 35.93,58.07
step
kill Chief Expedition Officer McCormick##145148
collect Gryzix's Decoder##164773 |q 53948/2 |goto 35.94,58.04
step
collect Encrypted Ub3r-Spanner Schematic##166886 |q 53948/3 |goto 35.94,58.04
step
talk Layla Evenkeel##136059
turnin Vengeful Venture##53948 |goto Boralus/0 77.63,14.34
accept The Ub3r-Spanner##53949 |goto 77.63,14.34
step
Watch the dialogue
Wait for Layla Evenkeel to Decode the Schematic |q 53949/1 |goto 77.63,14.34
step
talk Layla Evenkeel##136059
turnin The Ub3r-Spanner##53949 |goto 77.63,14.34
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Leveling Guides\\Kul Tiran Fishing 1-175",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Kul Tiran Fishing profession from 1-175.",
startlevel=5.0,
condition_end=function() return skill('Kul Tiran Fishing') >= 175 end,
condition_suggested=function() return skill('Kul Tiran Fishing') > 0 and skill('Kul Tiran Fishing') < 175 and level >= 5 end,
},[[
step
Follow the road |goto Boralus/0 68.11,15.59 < 10 |only if walking
Continue following the road |goto 70.61,16.60 < 10 |only if walking
Continue following the road |goto 71.34,14.73 < 7 |only if walking
Continue following the road |goto 69.86,9.45 < 10 |only if walking
Continue following the road |goto 71.59,7.92 < 7 |only if walking
Continue following the path |goto 72.45,3.49 < 7 |only if walking
Continue following the path |goto 73.74,4.33 < 7 |only if walking
talk Alan Goyle##136102
Learn Kul Tiran Fishing |skillmax Kul Tiran Fishing,175 |goto 74.18,5.51
step
Fish in the open water
|tip You can fish anywhere and gain skill.
|tip If you want to fish up specific fish, refer to one of our farming guides.
Reach Level 175 Kul Tiran Fishing |skill Kul Tiran Fishing,175 |goto 74.18,5.51
step
_Congratulations!_
You Reached 175 Kul Tiran Fishing Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Aromatic Fish Oil",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Aromatic Fish Oil for various Cooking recipes.",
startlevel=10.0,
},[[
step
Follow the path |goto Boralus/0 68.05,15.62 < 5 |only if walking
Run down the stairs |goto 71.29,16.44 < 5 |only if walking
Continue down the stairs |goto 71.66,17.04 < 5 |only if walking
Continue following the path |goto 71.40,18.04 < 5 |only if walking
Continue following the path |goto 74.58,18.92 < 7 |only if walking
Continue following the path |goto 75.81,22.01 < 5 |only if walking
Run down the stairs |goto 75.66,22.97 < 5 |only if walking
use the Lane Snapper##152546
use the Frenzied Fangtooth##152545
collect Aromatic Fish Oil##160711 |n |goto 73.64,23.12
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Frenzied Fangtooth",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Frenzied Fangtooth for various Cooking recipes.",
startlevel=10.0,
},[[
step
Fish in the open water
|tip You will occassionally catch Lane Snappers as well as Frenzied Fangtooth.
collect Frenzied Fangtooth##152545 |n |goto Stormsong Valley/0 52.51,25.97
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Great Sea Catfish",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Great Sea Catfish for various Cooking recipes.",
startlevel=10.0,
},[[
step
label "Start"
map Nazmir/0
path follow smart; loop off; ants curved; dist 30
path	39.12,84.85	40.75,87.50	44.45,87.52	46.38,86.58	47.92,82.26
path	52.34,80.48	55.22,81.01	55.99,77.68	58.95,74.33	60.40,71.18
path	60.81,70.35	64.07,68.70	65.11,63.06 	65.93,60.32
Fish in Great Sea Catfish Schools
|tip They share spawn points with Redtail Loach School.
|tip You will need fishing to gather from this path.
|tip You may need water walking in order to farm from some of the pools.
|tip They look like small circular swirling spots in the water along the coast.
collect Great Sea Catfish##152547 |n
'|goto Nazmir/0 65.93,60.32 < 30 |c |noway
step
map Nazmir/0
path follow smart; loop off; ants curved; dist 30
path	65.93,60.32	65.11,63.06	64.07,68.70	60.81,70.35	60.40,71.18
path	58.95,74.33	55.99,77.68	55.22,81.01	52.34,80.48	47.92,82.26
path	46.38,86.58	44.45,87.52	40.75,87.50	39.12,84.85
Fish in Great Sea Catfish Schools
|tip They share spawn points with Redtail Loach School.
|tip You will need fishing to gather from this path.
|tip You may need water walking in order to farm from some of the pools.
|tip They look like small circular swirling spots in the water along the coast.
collect Great Sea Catfish##152547 |n
'|goto Nazmir/0 39.12,84.85 < 30 |c |noway |next "Start"
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Ionized Minnow",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Ionized Minnow for Spare Parts.",
startlevel=10.0,
},[[
step
cast Fishing##131474
collect Ionized Minnow##167562 |n |goto Mechagon Island/0 35.99,49.21
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Lane Snapper",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Lane Snapper for various Cooking recipes.",
startlevel=10.0,
},[[
step
Fish in the open water
|tip You will occassionally catch Lane Snappers as well as Frenzied Fangtooth.
collect Lane Snapper##152546 |n |goto Stormsong Valley/0 52.51,25.97
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Mauve Stinger",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Mauve Stinger for various Cooking recipes.",
startlevel=10.0,
},[[
step
cast Fishing##131474
|tip You will catch Viper Fish as well as Mauve Stinger.
collect Mauve Stinger##168646 |n |goto Nazjatar/0 72.86,24.71
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Midnight Salmon",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Midnight Salmon for various Cooking recipes.",
startlevel=10.0,
},[[
step
label "Start"
map Stormsong Valley/0
path follow smart; loop off; ants curved; dist 20
path	56.42,19.69	58.70,17.84	61.38,15.17	63.06,14.62	64.28,16.06
path	66.47,18.99	69.95,34.95	69.56,36.85	69.24,40.52	66.68,48.49
path	68.08,50.14	70.34,48.58	72.69,48.96	73.83,52.22	73.82,53.81
path	72.18,57.68	73.81,59.71	75.43,60.95	77.58,61.04	78.25,61.57
path	79.24,61.77	80.76,61.45
Fish in pools found in Stormsong Valley
|tip You can also fish in one spot for these.
|tip Midnight Salmon are rare, so it will take a while to collect them.
|tip They look like small circular swirling spots in the water along the coast.
|tip These can be found along the coasts of Stormsong Valley.
collect Midnight Salmon##162515 |n
'|goto Stormsong Valley/0 80.76,61.45 < 20 |c |noway
step
map Stormsong Valley/0
path follow smart; loop off; ants curved; dist 20
path	80.76,61.45	79.24,61.77	78.25,61.57	77.58,61.04	75.43,60.95
path	73.81,59.71	72.18,57.68	73.82,53.81	73.83,52.22	72.69,48.96
path	70.34,48.58	68.08,50.14	66.68,48.49	69.24,40.52	69.56,36.85
path	69.95,34.95	66.47,18.99	64.28,16.06	63.06,14.62	61.38,15.17
path	58.70,17.84	56.42,19.69
Fish in pools found in Stormsong Valley
|tip You can also fish in one spot for these.
|tip Midnight Salmon are rare, so it will take a while to collect them.
|tip They look like small circular swirling spots in the water along the coast.
|tip These can be found along the coasts of Stormsong Valley.
collect Midnight Salmon##162515 |n
'|goto Stormsong Valley/0 56.42,19.69 < 20 |c |noway |next "Start"
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Redtail Loach",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Redtail Loach for various Cooking recipes.",
startlevel=10.0,
},[[
step
label "loop"
map Nazmir/0
path follow smart; loop off; ants curved; dist 20
path	39.12,84.85	40.75,87.50	44.45,87.52	46.38,86.58	47.92,82.26
path	52.34,80.48	55.22,81.01	55.99,77.68	55.27,75.45	57.93,76.83
path	57.99,75.50	58.95,74.33	60.40,71.18	60.81,70.35	64.07,68.70
path	65.11,63.06 	65.93,60.32	67.41,57.61	65.46,55.63
Fish in Redtail Loach Schools
|tip They share spawn points with Great Sea Catfish School.
|tip You will need fishing to gather from this path.
|tip You may need water walking in order to farm from some of the pools.
|tip They look like small circular swirling spots in the water along the river.
collect Redtail Loach##152549 |n
Click here to continue |confirm
step
map Nazmir/0
path follow smart; loop off; ants curved; dist 20
path	65.46,55.63	67.41,57.61	65.93,60.32	65.11,63.06	64.07,68.70
path	60.81,70.35	60.40,71.18	58.95,74.33	57.99,75.50	57.93,76.83
path	55.27,75.45	55.99,77.68	55.22,81.01	52.34,80.48	47.92,82.26
path	46.38,86.58	44.45,87.52	40.75,87.50	39.12,84.85
Fish in Redtail Loach Schools
|tip They share spawn points with Great Sea Catfish School.
|tip You will need fishing to gather from this path.
|tip You may need water walking in order to farm from some of the pools.
|tip They look like small circular swirling spots in the water along the river.
collect Redtail Loach##152549 |n
Click here to continue |confirm |next "loop"
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Sand Shifter",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Sand Shifter for various Cooking recipes.",
startlevel=10.0,
},[[
step
Fish in the open water
|tip You will occassionally catch Slimy Mackerel as well as Sand Shifters.
collect Sand Shifter##152543 |n |goto Nazmir/0 40.78,81.97
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Slimy Mackerel",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Slimy Mackerel for various Cooking recipes.",
startlevel=10.0,
},[[
step
Fish in the open water
|tip You will occassionally catch Sand Shifters as well as Sand Shifters.
collect Slimy Mackerel##152544 |n |goto Nazmir/0 40.78,81.97
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Tiragarde Perch",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Tiragarde Perch for various Cooking recipes.",
startlevel=10.0,
},[[
step
Fish in the small pond
|tip You will occassionally catch Great Sea Catfish as well as Tiragarde Perch.
collect Tiragarde Perch##152548 |n |goto Tiragarde Sound/0 77.67,67.30
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Viper Fish",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Viper Fish for various Cooking recipes.",
startlevel=10.0,
},[[
step
cast Fishing##131474
|tip You will catch Mauve Stinger as well as Viper Fish.
collect Viper Fish##168302 |n |goto Nazjatar/0 72.86,24.71
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Mauve Stinger",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Mauve Stinger for various Cooking recipes.",
startlevel=10.0,
},[[
step
cast Fishing##131474
|tip You will catch Viper Fish as well as Mauve Stinger.
collect Mauve Stinger##168646 |n |goto Nazjatar/0 72.86,24.71
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Leveling Guides\\Kul Tiran Herbalism 1-175",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Kul Tiran Herbalism profession from 1-175.",
startlevel=5.0,
condition_end=function() return skill('Kul Tiran Herbalism') >= 175 end,
condition_suggested=function() return skill('Kul Tiran Herbalism') > 0 and skill('Kul Tiran Herbalism') < 175 and level >= 5 end,
},[[
step
talk Declan Senal##136096
|tip He walks around this area.
Train Kul Tiran Herbalism |skillmax Kul Tiran Herbalism,175 |goto Boralus/0 71.25,5.33
step
map Tiragarde Sound/0
path	follow smart; loop on; ants curved; dist 20
path	65.34,23.21	64.72,21.34	64.34,20.77	63.50,19.34	62.24,17.97
path	61.78,18.18	60.61,19.46	59.39,20.01	57.49,20.81	55.72,22.05
path	54.26,23.40	54.48,25.24	54.88,26.05	55.23,27.39	55.63,29.55
path	56.25,29.69	57.26,28.03	58.35,28.47	59.65,29.39	61.62,29.99
path	63.39,28.98	64.73,27.39	65.28,26.38	64.97,25.70	65.12,24.33
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
Reach Level 175 Kul Tiran Herbalism |skill Kul Tiran Herbalism,175
step
_Congratulations!_
You Reached 175 Kul Tiran Herbalism Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Quest Guides\\Kul Tiran Herbalism Quest Line",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the Kul Tiran Herbalism quest line.",
startlevel=10.0,
condition_end=function() return completedq(48763) end,
condition_suggested=function() return skill('Kul Tiran Herbalism') > 0 and level >= 10 and not completedq(48763) end,
},[[
step
talk Declan Senal##136096
|tip He walks around this area.
Train Kul Tiran Herbalism |skillmax Kul Tiran Herbalism,175 |goto Boralus/0 71.25,5.33
step
talk Declan Senal##136096
|tip He walks around this area.
Train Akunda's Bite |learn Akunda's Bite##252411 |goto 71.25,5.33
step
talk Declan Senal##136096
|tip He walks around this area.
Train Riverbud |learn Riverbud##252405 |goto 71.25,5.33
step
talk Declan Senal##136096
|tip He walks around this area.
Train Sea Stalk |learn Sea Stalk##252421 |goto 71.25,5.33
step
talk Declan Senal##136096
|tip He walks around this area.
Train Siren's Pollen |learn Siren's Pollen##252418 |goto 71.25,5.33
step
talk Declan Senal##136096
|tip He walks around this area.
Train Star Moss |learn Star Moss##252408 |goto 71.25,5.33
step
talk Declan Senal##136096
|tip He walks around this area.
Train Winter's Kiss |learn Winter's Kiss##252415 |goto 71.25,5.33
step
map Tiragarde Sound/0
path	follow smart; loop on; ants curved; dist 20
path	65.34,23.21	64.72,21.34	64.34,20.77	63.50,19.34	62.24,17.97
path	61.78,18.18	60.61,19.46	59.39,20.01	57.49,20.81	55.72,22.05
path	54.26,23.40	54.48,25.24	54.88,26.05	55.23,27.39	55.63,29.55
path	56.25,29.69	57.26,28.03	58.35,28.47	59.65,29.39	61.62,29.99
path	63.39,28.98	64.73,27.39	65.28,26.38	64.97,25.70	65.12,24.33
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
Reach Level 50 Kul Tiran Herbalism |skill Kul Tiran Herbalism,50
step
talk Declan Senal##136096
|tip He walks around this area.
Train Anchor Weed |learn Anchor Weed##252424 |goto Boralus/0 71.25,5.33
step
talk Declan Senal##136096
|tip He walks around this area.
accept Emergency Transplants##48753 |goto Boralus/0 71.25,5.33
accept An Unusual Mentor##51398 |goto 71.25,5.33
accept Here In Spirit##48756 |goto 71.25,5.33
accept Cultural Significance##51365 |goto 71.25,5.33
accept Meet Sweetflower##48762 |goto 71.25,5.33
step
Jump down here |goto 70.42,17.63 < 10 |only if walking
Enter the building |goto Tiragarde Sound/0 73.98,24.88 < 7 |walk
talk Provisioner Fray##135808
|tip Inside the building.
Ask her _"What can you tell me about this sea stalk?"_
Ask Provisioner Fray About Sea Stalks |q 51365/1 |goto 73.68,24.99
step
talk Flynn Fairwind##131290
Ask him _"What can you tell me about this sea stalk?"_
Ask Flynn Fairwind About Sea Stalks |q 51365/2 |goto Boralus/0 66.86,33.24
step
talk Joseph Furlong##122072
Ask him _"What can you tell me about this sea stalk?"_
Ask Joseph Furlong About Sea Stalks |q 51365/3 |goto 65.99,37.71
step
click Rivermud##290136+
|tip They look like small brown mounds of dirt on the ground around this area.
|tip They will appear on your minimap as a yellow dot.
Plant #10# Riverbud Seeds |q 48753/1 |goto Tiragarde Sound/0 62.82,18.67
step
talk Declan Senal##136096
|tip He walks around this area.
turnin Emergency Transplants##48753 |goto Boralus/0 71.25,5.33
turnin Cultural Significance##51365 |goto 71.25,5.33
step
Follow the path |goto Vol'dun/0 61.49,24.58 < 20 |only if walking
Enter the cave |goto 62.31,26.00 < 10 |walk
talk Patu##137572
|tip Inside the cave.
turnin An Unusual Mentor##51398 |goto 62.34,25.72
accept Foul Harvest##51399 |goto 62.34,25.72
step
Follow the path |goto 61.43,29.70 < 30 |only if walking
Continue following the path |goto 60.64,36.25 < 30 |only if walking
click Sun Baked Dung##289448+
|tip They look like small brown piles of poop with flies coming off them on the ground around this area.
|tip They will appear on your minimap as a yellow dot.
collect 12 Digested Akunda's Bite Seed##160108 |q 51399/1 |goto 59.37,40.63
step
Follow the path |goto 60.64,36.25 < 30 |only if walking
Continue following the path |goto 61.43,29.70 < 30 |only if walking
Enter the cave |goto 62.31,26.00 < 5 |walk
talk Patu##137572
|tip Inside the cave.
turnin Foul Harvest##51399 |goto 62.34,25.72
accept Giving Back to Nature##51408 |goto 62.34,25.72
step
Follow the path |goto 61.43,29.70 < 30 |only if walking
Continue following the path |goto 60.64,36.25 < 30 |only if walking
use the Akunda's Bite Sapling##160187
Defeat the enemies that attack in waves
Defend Akunda's Bite Sapling |q 51408/1 |goto 59.66,45.16
step
Follow the path |goto 60.64,36.25 < 30 |only if walking
Continue following the path |goto 61.43,29.70 < 30 |only if walking
Enter the cave |goto 62.31,26.00 < 5 |walk
talk Patu##137572
|tip Inside the cave.
turnin Giving Back to Nature##51408 |goto 62.34,25.72
step
click Star Moss##276236+
|tip They look like green plants with red flowers that grow on the sides of walls and bridges.
|tip Track them on your minimap with "Find Herbs".
collect 10 Fresh Star Moss##159830 |q 48756/1 |goto Tiragarde Sound/0 80.32,49.37
step
talk Xun Xun Sweetflower##136141
turnin Meet Sweetflower##48762 |goto Drustvar/0 20.68,45.59
accept Can't Teach on an Empty Stomach##51376 |goto 20.68,45.59
step
Fish in the open water |cast Fishing##131474
|tip You will occassionally catch Lane Snappers.
|tip You can also purchase them from the Auction House.
collect 8 Lane Snapper##152546 |q 51376/1 |goto 19.95,44.86
step
talk Xun Xun Sweetflower##136141
turnin Can't Teach on an Empty Stomach##51376 |goto 20.68,45.59
step
talk Declan Senal##136096
|tip He walks around this area.
turnin Here In Spirit##48756 |goto Boralus/0 71.25,5.33
step
map Tiragarde Sound/0
path	follow smart; loop on; ants curved; dist 20
path	65.34,23.21	64.72,21.34	64.34,20.77	63.50,19.34	62.24,17.97
path	61.78,18.18	60.61,19.46	59.39,20.01	57.49,20.81	55.72,22.05
path	54.26,23.40	54.48,25.24	54.88,26.05	55.23,27.39	55.63,29.55
path	56.25,29.69	57.26,28.03	58.35,28.47	59.65,29.39	61.62,29.99
path	63.39,28.98	64.73,27.39	65.28,26.38	64.97,25.70	65.12,24.33
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
Reach Level 100 Kul Tiran Herbalism |skill Kul Tiran Herbalism,100
step
talk Declan Senal##136096
|tip He walks around this area.
accept Seeking More Knowledge##51016 |goto Boralus/0 71.25,5.33
step
Press _I_ and Queue for Waycrest Manor or Enter the Dungeon with your Group |goto Waycrest Manor/0 0.00,0.00 < 1000 |q 51016
step
click A Treatise on Anchor Weed##288621
|tip It looks like a small brown book with an anchor symbol on the front in the Waycrest Manor dungeon.
|tip It is in a room with the fourth boss, Lord Waycrest.
collect A Treatise on Anchor Weed##159960 |q 51016/1
step
kill Gorak Tul##144324
|tip It is the last boss of the Waycrest Manor dungeon.
Slay Gorak Tul |q 51016/2
step
talk Declan Senal##136096
|tip He walks around this area.
turnin Seeking More Knowledge##51016 |goto Boralus/0 71.25,5.33
step
map Tiragarde Sound/0
path	follow smart; loop on; ants curved; dist 20
path	65.34,23.21	64.72,21.34	64.34,20.77	63.50,19.34	62.24,17.97
path	61.78,18.18	60.61,19.46	59.39,20.01	57.49,20.81	55.72,22.05
path	54.26,23.40	54.48,25.24	54.88,26.05	55.23,27.39	55.63,29.55
path	56.25,29.69	57.26,28.03	58.35,28.47	59.65,29.39	61.62,29.99
path	63.39,28.98	64.73,27.39	65.28,26.38	64.97,25.70	65.12,24.33
click Siren's Sting##281869+
|tip They look like green plants with purple flowers that grow attached to trees on the ground.
use the Dead Pollen-Covered Wasp##160250
accept Aromatic Pollenator##51312
|tip You will eventually accept this quest after looting.
step
talk Declan Senal##136096
|tip He walks around this area.
turnin Aromatic Pollenator##51312 |goto Boralus/0 71.25,5.33
accept Learn From the Best##51313 |goto 71.25,5.33
step
use Jahden's Potion of Plant Shape##159881
Harvest Pollen |q 51313/1 |goto Stormsong Valley/0 72.50,69.76
step
talk Declan Senal##136096
|tip He walks around this area.
turnin Learn From the Best##51313 |goto Boralus/0 71.25,5.33
step
map Tiragarde Sound/0
path	follow smart; loop on; ants curved; dist 20
path	65.34,23.21	64.72,21.34	64.34,20.77	63.50,19.34	62.24,17.97
path	61.78,18.18	60.61,19.46	59.39,20.01	57.49,20.81	55.72,22.05
path	54.26,23.40	54.48,25.24	54.88,26.05	55.23,27.39	55.63,29.55
path	56.25,29.69	57.26,28.03	58.35,28.47	59.65,29.39	61.62,29.99
path	63.39,28.98	64.73,27.39	65.28,26.38	64.97,25.70	65.12,24.33
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
Reach Level 145 Kul Tiran Herbalism |skill Kul Tiran Herbalism,145
step
talk Declan Senal##136096
|tip He walks around this area.
accept Breaking The Food Chain##48754 |goto Boralus/0 71.25,5.33
accept Ghost Busting##48757 |goto 71.25,5.33
accept Gathering Mementos##48769 |goto 71.25,5.33
step
Jump down here |goto Boralus/0 53.04,57.66 < 20 |only if walking
Enter the building |goto 53.90,52.26 < 5 |walk
use the Smoldering Bundle of Star Moss##159833
|tip Inside the building.
Summon the Angry Spirit |q 48757/1 |goto 54.04,51.73
step
kill Angry Spirit##137832
|tip Inside the building.
Put the Angry Spirit to Rest |q 48757/2 |goto 54.04,51.73
step
Follow the path |goto Tiragarde Sound/0 66.06,22.53 < 30 |only if walking
Continue following the path |goto 64.60,21.09 < 30 |only if walking
Continue following the path |goto 62.91,18.48 < 30 |only if walking
kill 15 Freshwater Snapper##127626 |q 48754/1 |goto 61.38,17.55
step
click Flotsam##289322+
|tip They look like brown piles of wood and boxes floating in the water around this area.
collect Sailor's Cutlass##160057 |q 48769/1 |goto 86.65,84.96
step
talk Declan Senal##136096
|tip He walks around this area.
turnin Breaking The Food Chain##48754 |goto Boralus/0 71.25,5.33
turnin Ghost Busting##48757 |goto 71.25,5.33
turnin Gathering Mementos##48769 |goto 71.25,5.33
step
map Tiragarde Sound/0
path	follow smart; loop on; ants curved; dist 20
path	65.34,23.21	64.72,21.34	64.34,20.77	63.50,19.34	62.24,17.97
path	61.78,18.18	60.61,19.46	59.39,20.01	57.49,20.81	55.72,22.05
path	54.26,23.40	54.48,25.24	54.88,26.05	55.23,27.39	55.63,29.55
path	56.25,29.69	57.26,28.03	58.35,28.47	59.65,29.39	61.62,29.99
path	63.39,28.98	64.73,27.39	65.28,26.38	64.97,25.70	65.12,24.33
click Siren's Sting##281869+
|tip Track them on your minimap with "Find Herbs".
use the Disgustingly Damp Flower##160301
accept Disgustingly Damp Flower##48758
|tip You will eventually accept this quest after looting.
step
talk Declan Senal##136096
|tip He walks around this area.
turnin Disgustingly Damp Flower##48758 |goto Boralus/0 71.25,5.33
accept Pollen Punching##48755 |goto 71.25,5.33
step
map Tiragarde Sound/0
path	follow smart; loop on; ants curved; dist 20
path	65.34,23.21	64.72,21.34	64.34,20.77	63.50,19.34	62.24,17.97
path	61.78,18.18	60.61,19.46	59.39,20.01	57.49,20.81	55.72,22.05
path	54.26,23.40	54.48,25.24	54.88,26.05	55.23,27.39	55.63,29.55
path	56.25,29.69	57.26,28.03	58.35,28.47	59.65,29.39	61.62,29.99
path	63.39,28.98	64.73,27.39	65.28,26.38	64.97,25.70	65.12,24.33
click Siren's Sting##281869+
|tip Track them on your minimap with "Find Herbs".
collect 12 Heaping Handful of Damp Pollen##159957 |q 48755/1
step
Click the Complete Quest Box
turnin Pollen Punching##48755
step
map Vol'dun/0
path follow smart; loop off; ants curved; dist 20
path	49.82,41.45	48.88,41.67	48.29,41.13	47.67,41.21	48.23,39.70
path	48.42,38.67	48.15,37.58	48.47,36.49	49.41,35.76	49.67,34.73
path	48.70,34.35	47.76,34.60	47.19,34.79	46.70,34.51	46.16,33.27
path	46.45,33.23	47.21,33.88	48.03,33.12	48.41,32.77	48.21,30.92
path	49.83,32.93	51.34,33.27	52.31,33.74	54.00,33.67	55.22,34.82
path	56.00,35.16	55.54,37.65	55.22,39.94	54.38,41.84	51.56,41.24
click Akunda's Bite##276237+
|tip Track them on your minimap with "Find Herbs".
accept What Happens Next##51404
|tip You will eventually automatically accept this quest after looting.
step
map Vol'dun/0
path follow smart; loop off; ants curved; dist 20
path	49.82,41.45	48.88,41.67	48.29,41.13	47.67,41.21	48.23,39.70
path	48.42,38.67	48.15,37.58	48.47,36.49	49.41,35.76	49.67,34.73
path	48.70,34.35	47.76,34.60	47.19,34.79	46.70,34.51	46.16,33.27
path	46.45,33.23	47.21,33.88	48.03,33.12	48.41,32.77	48.21,30.92
path	49.83,32.93	51.34,33.27	52.31,33.74	54.00,33.67	55.22,34.82
path	56.00,35.16	55.54,37.65	55.22,39.94	54.38,41.84	51.56,41.24
click Akunda's Bite##276237+
|tip Track them on your minimap with "Find Herbs".
Harvest #10# Akunda's Bite Without Being Shocked |q 51404/1
step
Click the Complete Quest Box
turnin What Happens Next##51404
step
map Drustvar/0
path follow smart; loop on; ants straight
path	37.71,32.38	37.35,33.65	36.33,33.70	35.90,35.33	35.46,37.46
path	36.51,38.06	37.46,37.66	38.32,39.05	39.03,38.22	39.36,36.75
path	39.94,35.21	40.37,32.97	40.21,31.42	39.21,32.37
click Winter's Kiss##276238+
|tip Track them on your minimap with "Find Herbs".
accept The Frigid Boon##48763
|tip You will eventually automatically accept this quest after looting.
step
map Drustvar/0
path follow smart; loop on; ants curved; dist 20
path	37.71,32.38	37.35,33.65	36.33,33.70	35.90,35.33	35.46,37.46
path	36.51,38.06	37.46,37.66	38.32,39.05	39.03,38.22	39.36,36.75
path	39.94,35.21	40.37,32.97	40.21,31.42	39.21,32.37
click Winter's Kiss##276238+
|tip Track them on your minimap with "Find Herbs".
Harvest #10# Winter's Kiss Without Taking Cold Damage |q 48763/1
step
Click the Complete Quest Box
turnin The Frigid Boon##48763
step
map Tiragarde Sound/0
path	follow smart; loop on; ants curved; dist 20
path	65.34,23.21	64.72,21.34	64.34,20.77	63.50,19.34	62.24,17.97
path	61.78,18.18	60.61,19.46	59.39,20.01	57.49,20.81	55.72,22.05
path	54.26,23.40	54.48,25.24	54.88,26.05	55.23,27.39	55.63,29.55
path	56.25,29.69	57.26,28.03	58.35,28.47	59.65,29.39	61.62,29.99
path	63.39,28.98	64.73,27.39	65.28,26.38	64.97,25.70	65.12,24.33
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
Reach Level 150 Kul Tiran Herbalism |skill Kul Tiran Herbalism,175
step
map Tiragarde Sound/0
path follow smart; loop on; ants curved; dist 20
path	53.51,25.36	52.57,24.24	51.38,22.97	51.07,22.30	50.76,22.19
path	49.12,22.09	47.55,24.06	47.77,25.77	48.56,27.47	49.63,29.79
path	50.64,30.76	50.95,31.57	50.94,32.34	51.11,33.86	51.28,35.04
path	52.23,37.41	53.13,37.13	53.54,35.14	54.98,34.75	56.54,33.97
path	56.75,32.19	57.32,31.41	56.89,30.43	56.29,30.69	55.65,30.29
path	55.26,29.30	53.79,26.86
click Anchor Weed##276242+
|tip Track them on your minimap with "Find Herbs".
use the Enormous Anchor Pod##160550
accept Enormous Anchor Pod##51360
|tip You will eventually accept this quest after looting.
step
talk Declan Senal##136096
|tip He walks around this area.
turnin Enormous Anchor Pod##51360 |goto Boralus/0 71.25,5.33
accept More Anchor Pods##51361 |goto 71.25,5.33
step
map Tiragarde Sound/0
path follow smart; loop on; ants curved; dist 20
path	53.51,25.36	52.57,24.24	51.38,22.97	51.07,22.30	50.76,22.19
path	49.12,22.09	47.55,24.06	47.77,25.77	48.56,27.47	49.63,29.79
path	50.64,30.76	50.95,31.57	50.94,32.34	51.11,33.86	51.28,35.04
path	52.23,37.41	53.13,37.13	53.54,35.14	54.98,34.75	56.54,33.97
path	56.75,32.19	57.32,31.41	56.89,30.43	56.29,30.69	55.65,30.29
path	55.26,29.30	53.79,26.86
click Anchor Weed##276242+
|tip Track them on your minimap with "Find Herbs".
collect 9 Mature Anchor Pod##160036 |q 51361/1
step
talk Declan Senal##136096
|tip He walks around this area.
turnin More Anchor Pods##51361 |goto Boralus/0 71.25,5.33
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Akunda's Bite",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Akunda's Bite for various Alchemy recipes.",
startlevel=10.0,
},[[
step
map Vol'dun/0
path follow smart; loop off; ants curved; dist 20
path	49.82,41.45	48.88,41.67	48.29,41.13	47.67,41.21	48.23,39.70
path	48.42,38.67	48.15,37.58	48.47,36.49	49.41,35.76	49.67,34.73
path	48.70,34.35	47.76,34.60	47.19,34.79	46.70,34.51	46.16,33.27
path	46.45,33.23	47.21,33.88	48.03,33.12	48.41,32.77	48.21,30.92
path	49.83,32.93	51.34,33.27	52.31,33.74	54.00,33.67	55.22,34.82
path	56.00,35.16	55.54,37.65	55.22,39.94	54.38,41.84	51.56,41.24
click Akunda's Bite
|tip Track them on your minimap with "Find Herbs".
collect Akunda's Bite##152507 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Anchor Weed",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Anchor Weed for various Alchemy recipes.",
startlevel=10.0,
},[[
step
map Nazmir/0
path follow smart; loop on; ants curved; dist 20
path	41.31,79.88	42.35,78.69	44.42,78.71	47.60,78.67	48.60,80.32
path	50.17,82.02	51.84,81.36	53.57,76.46	54.89,74.29	55.29,74.00
path	57.19,72.89	58.20,71.35	59.37,69.45	60.23,67.62	61.67,63.67
path	63.04,62.18	64.06,60.53	64.90,59.48	64.39,56.65	63.79,55.18
path	63.28,54.08	63.15,52.14	64.06,51.01	64.03,48.68	64.45,46.84
path	64.42,44.37	61.01,42.16	59.45,39.19	57.75,38.05	55.70,36.87
path	54.24,35.95	54.06,35.01	52.74,34.09	50.38,31.37	49.29,29.24
path	47.90,25.91	46.44,24.92	45.39,28.74	44.84,31.93	44.00,33.91
path	43.70,35.47	43.63,37.42	43.59,39.81	42.54,41.42	41.33,42.08
path	40.15,41.19	37.77,41.65
click Anchor Weed
|tip Track them on your minimap with "Find Herbs".
collect Anchor Weed##152510 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Riverbud",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Riverbud for various Alchemy recipes.",
startlevel=10.0,
},[[
step
label "loop"
map Tiragarde Sound/0
path	follow smart; loop off; ants curved; dist 20
path	51.69,31.84	51.12,31.38	50.21,30.71	49.57,29.61	49.35,28.68
path	48.77,27.41	48.81,26.17	48.23,23.45	49.07,22.58	50.57,22.86
path	52.15,23.99	53.14,22.64	55.43,22.49	56.43,21.70	58.85,20.89
path	60.12,18.40	61.27,18.03	62.73,18.29	64.03,19.48	64.51,20.95
path	65.38,21.75
click Riverbud
|tip Track them on your minimap with "Find Herbs".
collect Riverbud##152505+ |n
Click here to continue |confirm
step
map Tiragarde Sound/0
path	follow smart; loop off; ants curved; dist 20
path	63.87,19.66	63.23,17.77	62.39,17.21	61.78,16.40	60.28,17.20
path	60.43,18.49	60.10,19.18	59.27,19.94	58.35,21.16	57.25,21.04
path	55.87,22.00	54.73,22.97	53.14,22.66	53.25,24.12	52.35,25.02
path	53.29,26.07	53.54,26.64	54.02,27.35	54.71,28.75	54.96,29.30
path	55.40,30.20	55.60,30.76	54.75,31.73	53.65,32.78	52.72,32.47
click Riverbud
|tip Track them on your minimap with "Find Herbs".
collect Riverbud##152505+ |n
Click here to continue |confirm |next "loop"
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Sea Stalk",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Sea Stalk for various Alchemy recipes.",
startlevel=10.0,
},[[
step
map Zuldazar/0
path	follow smart; loop on; ants curved; dist 20
path	70.56,64.15	71.41,65.42	72.20,65.36	73.23,66.61	73.80,65.36
path	74.88,66.24	76.25,66.34	77.44,66.50	77.35,63.75	75.76,64.34
path	74.96,63.20	73.08,63.26	72.06,62.91
click Sea Stalk##
|tip Track them on your minimap with "Find Herbs".
collect Sea Stalk##152511 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Siren's Pollen",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Siren's Pollen for various Alchemy recipes.",
startlevel=10.0,
},[[
step
map Zuldazar/0
path follow smart; loop on; ants curved; dist 20
path	53.29,29.09	53.90,28.49	54.76,28.21	55.94,27.53	57.14,26.19
path	58.55,25.49	59.14,24.60	58.52,23.26	58.62,21.68	58.95,21.21
path	59.48,20.31	60.41,20.27	61.04,20.56	61.05,21.94	61.03,24.10
path	61.58,24.56	62.36,24.45	62.99,23.80	63.49,23.68	64.05,23.77
path	64.54,24.42	65.70,25.12	66.63,25.18	67.37,23.75	67.83,23.40
path	68.54,23.34	68.82,21.99	68.24,20.37	68.12,19.31	67.49,18.36
path	66.46,18.11	65.94,17.30	65.11,18.00	64.25,18.18	63.40,18.49
path	62.76,18.29	62.50,17.18	62.44,15.74	61.50,16.16	60.83,17.04
path	60.82,17.52	60.50,18.43	59.90,19.26	58.91,18.81	57.67,19.79
path	56.80,19.71	56.11,19.16	55.91,19.37	55.51,19.52	55.33,19.92
path	54.74,20.13	54.36,20.47	54.08,19.83	53.78,19.57	53.53,19.83
path	52.65,20.71	51.19,21.06	51.25,21.74	51.87,22.12	52.53,22.27
path	52.89,22.81	53.57,23.70	54.35,25.18	54.43,26.35
click Siren's Sting
|tip Track them on your minimap with "Find Herbs".
|tip They grow on trees.
collect Siren's Pollen##152509 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Star Moss",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Star Moss for various Alchemy recipes.",
startlevel=10.0,
},[[
step
map Vol'dun/0
path follow smart; loop on; ants curved; dist 20
path	50.34,43.91	48.49,43.69	47.64,43.44	47.64,42.48	47.20,42.14
path	46.93,42.62	46.80,43.24	46.41,44.28	45.64,44.84	45.27,45.78
path	45.13,46.85	46.60,47.72	48.10,47.80	49.58,47.00	50.07,45.22
click Star Moss
|tip Track them on your minimap with "Find Herbs".
collect Star Moss##152506 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Winter's Kiss",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Winter's Kiss for various Alchemy recipes.",
startlevel=10.0,
},[[
step
map Drustvar/0
path follow smart; loop on; ants curved; dist 20
path	60.97,63.86	61.78,65.57	60.96,67.00	60.65,68.53	58.93,67.74
path	58.69,66.13	58.89,63.16	58.74,62.51	59.45,61.83
click Winter's Kiss
|tip Track them on your minimap with "Find Herbs".
collect Winter's Kiss##152508 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Zin'anthid",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Zin'anthid for various Alchemy recipes.",
startlevel=10.0,
},[[
step
map Nazjatar/0
path follow smart; loop on; ants curved; dist 30
path	62.39,49.58	61.06,45.00	62.27,43.98	63.79,45.02	65.59,44.96
path	68.40,43.76	70.65,43.43	71.77,43.85	73.39,45.10	75.78,45.87
path	77.60,45.99	78.45,43.36	79.40,42.50	80.38,40.48	81.28,38.00
path	83.32,37.55	84.99,37.21	85.06,35.40	83.82,34.11	82.49,34.33
path	80.19,34.48	79.04,33.97	77.98,31.77	75.92,30.67	74.81,27.65
path	74.02,27.17	73.13,30.50	71.67,37.02	70.78,37.48	69.55,37.27
path	68.95,35.58	69.38,31.81	69.79,29.10	66.20,29.74	67.20,27.05
path	67.75,24.98	66.11,20.90	65.62,17.59	65.00,14.73	63.75,16.57
path	62.60,18.17	62.11,21.89	62.28,26.89	62.12,28.42	58.93,30.01
path	60.52,33.30	59.83,38.93	59.26,44.77	56.89,49.64	58.31,50.90
path	55.98,52.57	57.64,54.84	59.17,56.89	59.89,58.74	62.72,58.70
path	63.73,54.64	62.29,52.13
click Zin'anthid##326598+
|tip Track them on your minimap with "Find Herbs".
collect Zin'anthid##168487 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Inscription\\Leveling Guides\\Kul Tiran Inscription 1-175",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Kul Tiran Inscription profession from 1-175.",
startlevel=5.0,
condition_end=function() return skill('Kul Tiran Inscription') >= 175 end,
condition_suggested=function() return skill('Kul Tiran Inscription') > 0 and skill('Kul Tiran Inscription') < 175 and level >= 5 end,
},[[
step
talk Zooey Inksprocket##130399
Train Kul Tiran Inscription |skillmax Kul Tiran Inscription,175 |goto Boralus/0 73.39,6.32
step
talk Henrick Wyther##142095
buy 900 Distilled Water##158186 |goto 73.22,11.36
step
collect 30 Ultramarine Pigment##153635
|tip You get these by gathering and milling herbs found in Kul Tiras and Zuldazar, if you have Herbalism.
|tip You can also purchase them from the Auction House.
|tip Use your Milling ability on Kul Tiras or Zuldazar herbs to accomplish this.
step
Open Your Inscription Crafting Panel:
_<Create 30 Ultramarine Ink>_
Reach Level 30 Kul Tiran Inscription |skill Kul Tiran Inscription,30
step
talk Zooey Inksprocket##130399
Train Scroll of Unlocking |learn Scroll of Unlocking##269065 |goto 73.39,6.32
step
talk Zooey Inksprocket##130399
buy 200 Light Parchment##39354 |n
collect 200 Light Parchment##39354 |goto 73.39,6.32
step
collect 20 Ultramarine Pigment##153635
|tip You get these by gathering and milling herbs found in Kul Tiras and Zuldazar, if you have Herbalism.
|tip You can also purchase them from the Auction House.
|tip Use your Milling ability on Kul Tiras or Zuldazar herbs to accomplish this.
step
Open Your Inscription Crafting Panel:
_<Create 20 Ultramarine Ink>_
collect 50 Ultramarine Ink##158187
step
Open Your Inscription Crafting Panel:
_<Create 10 Scroll of Unlocking>_
Reach Level 50 Kul Tiran Inscription |skill Kul Tiran Inscription,50
step
talk Zooey Inksprocket##130399
Train Mass Mill Akunda's Bite |learn Mass Mill Akunda's Bite##256219 |goto 73.39,6.32
step
Open Your Inscription Crafting Panel:
Use _<Mass Mill Akunda's Bite>_
|tip Use it to mill Akunda's Bite herbs you've gathered in Kul Tiras.
|tip You can gather other herbs and use a different Mass Mill ability to level if you want.
|tip You can also purchase them from the Auction House.
Reach Level 75 Kul Tiran Inscription |skill Kul Tiran Inscription,75
step
talk Zooey Inksprocket##130399
Train Contract: Order of Embers |learn Contract: Order of Embers##256278 |goto 73.39,6.32
step
talk Zooey Inksprocket##130399
buy Virtuoso Inking Set##39505 |n
collect Virtuoso Inking Set##39505 |goto 73.39,6.32
step
collect 280 Ultramarine Pigment##153635
|tip You get these by gathering and milling herbs found in Kul Tiras and Zuldazar, if you have Herbalism.
|tip You can also purchase them from the Auction House.
|tip Use your Milling ability on Kul Tiras or Zuldazar herbs to accomplish this.
step
Open Your Inscription Crafting Panel:
_<Create 280 Ultramarine Ink>_
collect 280 Ultramarine Ink##158187
step
collect 100 Crimson Pigment##153636
|tip You get these by gathering and milling herbs found in Kul Tiras and Zuldazar, if you have Herbalism.
|tip You can also purchase them from the Auction House.
|tip Use your Milling ability on Kul Tiras or Zuldazar herbs to accomplish this.
step
Open Your Inscription Crafting Panel:
_<Create 100 Crimson Ink>_
collect 100 Crimson Ink##158188
step
Open Your Inscription Crafting Panel:
_<Create 10 Contract: Order of Embers>_
Reach Level 85 Kul Tiran Inscription |skill Kul Tiran Inscription,85
step
talk Zooey Inksprocket##130399
Train Darkmoon Card of War (Rank 1) |learn Darkmoon Card of War##278527 |goto 73.39,6.32
step
talk Henrick Wyther##142095
buy 180 Acacia Powder##158205 |n
collect 180 Acacia Powder##158205 |goto 73.22,11.36
step
collect 180 Viridescent Pigment##153669
|tip You get these as a rare drop by gathering and milling herbs found in Kul Tiras and Zuldazar, if you have Herbalism.
|tip You can also purchase them from the Auction House.
|tip Use your Milling ability on Kul Tiras or Zuldazar herbs to accomplish this.
step
Open Your Inscription Crafting Panel:
_<Create 180 Viridescent Ink>_
collect 180 Viridescent Ink##158189
step
click Scrap-O-Matic 1000##293132
|tip Use this device to destroy old gear and turn it into Expulsom.
|tip You can purchase level 50+ gear from the Auction House to use if you don't have any.
collect 15 Expulsom##152668 |goto 77.13,16.32
step
Open Your Inscription Crafting Panel:
_<Create 15 Darkmoon Card of War>_
Reach Level 100 Kul Tiran Inscription |skill Kul Tiran Inscription,100
step
talk Zooey Inksprocket##130399
Train Darkmoon Card of War (Rank 2) |learn Darkmoon Card of War##256245 |goto 73.39,6.32
step
collect 450 Viridescent Pigment##153669
|tip You get these as a rare drop by gathering and milling herbs found in Kul Tiras and Zuldazar, if you have Herbalism.
|tip You can also purchase them from the Auction House.
|tip Use your Milling ability on Kul Tiras or Zuldazar herbs to accomplish this.
step
Open Your Inscription Crafting Panel:
_<Create 450 Viridescent Ink>_
collect 450 Viridescent Ink##158189
step
click Scrap-O-Matic 1000##293132
|tip Use this device to destroy old gear and turn it into Expulsom.
|tip You can purchase level 50+ gear from the Auction House to use if you don't have any.
collect 45 Expulsom##152668 |goto 77.13,16.32
step
Open Your Inscription Crafting Panel:
_<Create 45 Darkmoon Card of War>_
Reach Level 150 Kul Tiran Inscription |skill Kul Tiran Inscription,175
step
Reach Level 50 |ding 50
step
Complete the Quest "A Way Home" |complete completedq(54972)
|tip Use the "Nazjatar" leveling guide to accomplish this.
step
collect 400 Maroon Pigment##168662
|tip These can be milled from herbs found in Nazjatar.
|tip Farm them with Herbalism or purchase them from the Auction House.
step
talk Instructor Okanu##153811
Train Maroon Ink |learn Maroon Ink##298929 |goto Nazjatar/0 37.92,53.18
step
Open Your Inscription Crafting Panel:
_<Create 400 Maroon Ink>_
collect 400 Viridescent Ink##158189
step
Reach Revered Waveblade Ankoan |complete rep('Waveblade Ankoan') >= Revered
|tip Use the "Waveblade Ankoan" reputation guide to accomplish this.
step
talk Speaker Utia##154140
|tip Inside the building.
buy 1 Recipe: Contract: Ankoan##169548 |goto 38.02,55.70
step
use the Recipe: Contract: Ankoan##169548
Train Contract: Ankoan |learn Contract: Ankoan##299665
step
Open Your Inscription Crafting Panel:
_<Create 20 Contract: Ankoan>_
|tip You may need to make more or less of these to reach 175.
Reach Level 175 Kul Tiran Inscription |skill Kul Tiran Inscription,175
step
_Congratulations!_
You Reached 175 Kul Tiran Inscription Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Inscription\\Leveling Guides\\Tools of the Trade - Inscription",{
author="support@zygorguides.com",
description="\nUpon completion of this guide, you will earn the Sanguine Feather Quill of Lana'thel. This allows you to create "..
"Blood Contracts and siphon the blood of nearby slain enemies.",
startlevel=50.0,
condition_end=function() return completedq(49882) end,
condition_suggested=function() return skill('Kul Tiran Inscription') >= 150 and level >= 50 and not completedq(49882) end,
condition_visible=function() return skill('Kul Tiran Inscription') >= 1 end,
},[[
step
Reach Level 150 Kul Tiran Inscription |skill Kul Tiran Inscription,175
|tip Use the "Kul Tiran Inscription 1-150" profession guide to accomplish this.
step
talk Zooey Inksprocket##130399
accept Drawing Blood##40537 |goto Boralus/0 73.39,6.33
step
click Bloodbound Ledger
|tip Stand still until you finish channeling.
Sign the Bloodbound Ledger |q 40537/1 |goto 73.17,6.40
step
talk Zooey Inksprocket##130399
turnin Drawing Blood##40537 |goto 73.39,6.33
accept Turn to Drust##49694 |goto 73.39,6.33
step
talk Kronah##131386
turnin Turn to Drust##49694 |goto Drustvar/0 20.66,44.09
step
click Tome of Sacrifice
accept Sacrificial Writes##49873 |goto 20.63,44.09
step
click Bloodshed Compendium
accept By the Book##49874 |goto 20.73,44.11
step
click Bloodshed Compendium
Choose _"Turn a few more pages."_
Turn the Pages |q 49874/1 |goto 20.72,44.10
step
click Bloodshed Compendium
Choose _"Thumb through the entire book."_
Look Through the Entire Book |q 49874/2 |goto 20.72,44.10
step
talk Kronah##131386
Ask him _"Why is the Bloodshed Compendium blank?"_
Ask Kronah About the Book |q 49874/3 |goto 20.66,44.09
step
Watch the dialogue
talk Kronah##131386
Ask him _"What am I supposed to do with the Writ of Sacrifice?"_
Ask Kronah About the Writ of Sacrifice |q 49873/1 |goto 20.66,44.09
step
click Bloodshed Compendium
Choose _"Begin writing in the book."_
Begin Writing In the Book |q 49874/4 |goto 20.72,44.10
step
Teleport to The Prison of Ink |goto Prison of Ink/0 77.85,25.12 |c |noway |q 49874
step
Watch the dialogue
Kill Sanguine enemies around this area
collect 12 Sanguine Ink##156509 |q 49874/5 |goto 45.37,24.64
step
click Cryptic Rune+
|tip Click all four of them.
|tip Stand still until you finish channeling.
Complete the Ritual |q 49874/6 |goto 46.21,73.27
step
Return to Anyport |goto Drustvar/0 20.71,44.02 |c |noway |q 49874
step
Follow the path down |goto 37.16,27.92 < 20 |only if walking
Continue down the path |goto 39.12,36.68 < 30 |only if walking
kill Chillfur Yeti##127682+
collect Fresh Heart##168046 |n
use the Writ of Sacrifice##156549
|tip Use it on Wounded Greatstags.
|tip They look like injured stags laying on the ground around this area.
|tip Stand still until you finish channeling.
|tip You will take small amounts of damage while channeling.
Heal #8# Wounded Greatstags with the Writ of Sacrifice |q 49873/2 |goto 44.80,30.55
step
talk Kronah##131386
turnin Sacrificial Writes##49873 |goto 20.66,44.09
turnin By the Book##49874 |goto 20.66,44.09
accept Lines In the Sand##49876 |goto 20.66,44.09
step
Enter the building |goto Vol'dun/0 27.21,51.40 < 20 |walk
talk Veriss##150318
|tip Inside the building.
turnin Lines In the Sand##49876 |goto 27.63,52.34
accept Temple of Sethraliss: Booking on a Favor##49877 |goto 27.63,52.34
step
Enter the Temple of Sethraliss |goto Temple of Sethraliss/0 0.00,0.00 |c |noway |q 49877
|tip Use the Dungeon Finder tool to queue for this dungeon.
step
click Tome of Oblivion##322534
|tip In The Bazaar of Watchful Eyes under a tent to the right of the giant skull gate.
collect Tome of Oblivion##156512 |q 49877/1
step
Restore the Avatar of Sethraliss |q 49877/2
|tip Complete the final encounter of the dungeon.
step
Enter the building |goto Vol'dun/0 27.21,51.40 < 20 |walk
talk Veriss##150318
|tip Inside the building.
turnin Temple of Sethraliss: Booking on a Favor##49877 |goto 27.63,52.34
step
click Bloodguard Chronicles
|tip Inside the building.
accept Penning In Protection##49878 |goto 27.65,52.28
step
click Tome of Oblivion
|tip Inside the building.
accept Brush With Death##49879 |goto 27.60,52.35
step
click Quill
|tip Inside the building.
Use the Quill |q 49879/1 |goto 27.62,52.36
step
Draw the First Rune |q 49879/2
|tip Move around as the quill, tracing the rings on the ground.
step
Draw the Second Rune |q 49879/3
|tip Move around as the quill, tracing the rings on the ground.
step
Draw the Third Rune |q 49879/4
|tip Move around as the quill, tracing the rings on the ground.
step
Kill enemies around this area
collect 15 Zem'lan Pirate Bone##156601 |q 49878/1 |goto 36.36,80.72
step
use the Zem'lan Pirate Bones##156601
collect Pile of Fine Bone Dust##156598 |q 49878
step
use the Pile of Fine Bone Dust##156598
Make a Vial of Ossein Ink |q 49878/2
step
Enter the building |goto Vol'dun/0 27.21,51.40 < 20 |walk
click Bloodguard Chronicles
|tip Inside the building.
Sign the Bloodguard Chronicles |q 49878/3 |goto 27.65,52.28
step
talk Veriss##150318
|tip Inside the building.
turnin Penning In Protection##49878 |goto 27.63,52.34
turnin Brush With Death##49879 |goto 27.63,52.34
accept The Final Verse##49881 |goto 27.63,52.34
step
talk Miju##131397
turnin The Final Verse##49881 |goto Zuldazar/0 32.62,86.04
accept A Test of Quills##49882 |goto 32.62,86.04
step
talk Miju##131397
Tell him _"I'm ready to begin the trial."_
Speak with Miju |q 49882/1 |goto 32.62,86.04
step
Watch the dialogue
click Rune of the Bloodguard
kill Avatar of the Bloodguard##150835 |q 49882/2 |goto 33.04,85.71
step
click Rune of Sacrifice
kill Avatar of Sacrifice##150836 |q 49882/3 |goto 33.32,85.71
step
click Rune of Bloodshed
kill Avatar of Bloodshed##150837 |q 49882/4 |goto 33.33,85.34
step
click Rune of Oblivion
kill Avatar of Oblivion##150838 |q 49882/5 |goto 33.09,85.32
step
talk Miju##152261
turnin A Test of Quills##49882 |goto 33.00,85.68
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Jewelcrafting\\Leveling Guides\\Kul Tiran Jewelcrafting 1-175",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Kul Tiran Jewelcrafting profession from 1-175.",
startlevel=5.0,
condition_end=function() return skill('Kul Tiran Jewelcrafting') >= 175 end,
condition_suggested=function() return skill('Kul Tiran Jewelcrafting') > 0 and skill('Kul Tiran Jewelcrafting') < 175 and level >= 5 end,
},[[
step
talk Samuel D. Colton III##130368
Train Kul Tiran Jewelcrafting |skillmax Kul Tiran Jewelcrafting,175 |goto Boralus/0 75.21,9.87
step
talk Samuel D. Colton III##130368
buy Jeweler's Kit##20815 |n
collect Jeweler's Kit##20815 |goto 75.21,9.87
step
collect 24 Viridium##153704
|tip You get these by gathering and prospecting ore found in Kul Tiras and Zuldazar, if you have Mining.
|tip You can also purchase them from the Auction House.
|tip Use your Prospecting ability on Kul Tiras or Zuldazar ore to accomplish this.
step
Open Your Jewelcrafting Crafting Panel:
_<Create 24 Straddling Viridium>_
Reach Level 25 Kul Tiran Jewelcrafting |skill Kul Tiran Jewelcrafting,25
step
talk Samuel D. Colton III##130368
Train Rubellite Staff of Intuition |learn Rubellite Staff of Intuition##256254 |goto 75.21,9.87
step
collect 100 Rubellite##153701
|tip You get these by gathering and prospecting ore found in Kul Tiras and Zuldazar, if you have Mining.
|tip You can also purchase them from the Auction House.
|tip Use your Prospecting ability on Kul Tiras or Zuldazar ore to accomplish this.
step
collect 50 Golden Beryl##153700
|tip You get these by gathering and prospecting ore found in Kul Tiras and Zuldazar, if you have Mining.
|tip You can also purchase them from the Auction House.
|tip Use your Prospecting ability on Kul Tiras or Zuldazar ore to accomplish this.
step
collect 50 Solstone##153703
|tip You get these by gathering and prospecting ore found in Kul Tiras and Zuldazar, if you have Mining.
|tip You can also purchase them from the Auction House.
|tip Use your Prospecting ability on Kul Tiras or Zuldazar ore to accomplish this.
step
collect 375 Monelite Ore##152512
|tip Use the Battle for Azeroth ore farming guides to gather them, if you have Mining.
|tip You can also purchase them from the Auction House.
step
Open Your Jewelcrafting Crafting Panel:
_<Create 25 Rubellite Staff of Intuition>_
Reach Level 50 Kul Tiran Jewelcrafting |skill Kul Tiran Jewelcrafting,50
step
talk Samuel D. Colton III##130368
Train Royal Quartz Loop |learn Royal Quartz Loop##256513 |goto 75.21,9.87
step
collect 25 Royal Quartz##154125
|tip You get these as a rare drop by gathering and prospecting ore found in Kul Tiras and Zuldazar, if you have Mining.
|tip You can also purchase them from the Auction House.
|tip Use your Prospecting ability on Kul Tiras or Zuldazar ore to accomplish this.
step
collect 300 Storm Silver Ore##152579
|tip Use the Battle for Azeroth ore farming guides to gather them, if you have Mining.
|tip You can also purchase them from the Auction House.
step
click Scrap-O-Matic 1000##293132
|tip Use this device to destroy old gear and turn it into Expulsom.
|tip You can purchase level 50+ gear from the Auction House to use if you don't have any.
collect 50 Expulsom##152668 |goto 77.13,16.32
step
Open Your Jewelcrafting Crafting Panel:
_<Create 25 Royal Quartz Loop>_
Reach Level 75 Kul Tiran Jewelcrafting |skill Kul Tiran Jewelcrafting,75
step
talk Samuel D. Colton III##130368
Train Deadly Amberblaze |learn Deadly Amberblaze##256696 |goto 75.21,9.87
step
collect 30 Amberblaze##154123
|tip You get these as a rare drop by gathering and prospecting ore found in Kul Tiras and Zuldazar, if you have Mining.
|tip You can also purchase them from the Auction House.
|tip Use your Prospecting ability on Kul Tiras or Zuldazar ore to accomplish this.
step
Open Your Jewelcrafting Crafting Panel:
_<Create 30 Deadly Amberblaze>_
Reach Level 105 Kul Tiran Jewelcrafting |skill Kul Tiran Jewelcrafting,105
step
talk Samuel D. Colton III##130368
Train Honorable Combatant's Staff of Intuition |learn Honorable Combatant's Staff of Intuition##269734 |goto 75.21,9.87
step
collect 200 Scarlet Diamond##154121
|tip You get these as a rare drop by gathering and prospecting ore found in Kul Tiras and Zuldazar, if you have Mining.
|tip You can also purchase them from the Auction House.
|tip Use your Prospecting ability on Kul Tiras or Zuldazar ore to accomplish this.
step
collect 200 Owlseye##154120
|tip You get these as a rare drop by gathering and prospecting ore found in Kul Tiras and Zuldazar, if you have Mining.
|tip You can also purchase them from the Auction House.
|tip Use your Prospecting ability on Kul Tiras or Zuldazar ore to accomplish this.
step
collect 200 Amberblaze##154123
|tip You get these as a rare drop by gathering and prospecting ore found in Kul Tiras and Zuldazar, if you have Mining.
|tip You can also purchase them from the Auction House.
|tip Use your Prospecting ability on Kul Tiras or Zuldazar ore to accomplish this.
step
collect 400 Storm Silver Ore##152579
|tip Use the Battle for Azeroth ore farming guides to gather them, if you have Mining.
|tip You can also purchase them from the Auction House.
step
collect 200 Platinum Ore##152513
|tip Use the Battle for Azeroth ore farming guides to gather them, if you have Mining.
|tip You can also purchase them from the Auction House.
step
click Scrap-O-Matic 1000##293132
|tip Use this device to destroy old gear and turn it into Expulsom.
|tip You can purchase level 50+ gear from the Auction House to use if you don't have any.
collect 60 Expulsom##152668 |goto 77.13,16.32
step
Open Your Jewelcrafting Crafting Panel:
_<Create 20 Honorable Combatant's Staff of Intuition>_
Reach Level 125 Kul Tiran Jewelcrafting |skill Kul Tiran Jewelcrafting,125
step
talk Samuel D. Colton III##130368
Train Kraken's Eye of Agility |learn Kraken's Eye of Agility##256701 |goto 75.21,9.87
step
collect 25 Kraken's Eye##153706
|tip You get these as an epic drop by gathering and prospecting ore found in Kul Tiras and Zuldazar, if you have Mining.
|tip You can also purchase them from the Auction House.
|tip Use your Prospecting ability on Kul Tiras or Zuldazar ore to accomplish this.
step
Open Your Jewelcrafting Crafting Panel:
_<Create 25 Kraken's Eye of Agility>_
Reach Level 150 Kul Tiran Jewelcrafting |skill Kul Tiran Jewelcrafting,175
step
Reach Level 50 |ding 50
step
Complete the Quest "A Way Home" |complete completedq(54972)
|tip Use the "Nazjatar" leveling guide to accomplish this.
step
Choose the Stat Gem You Would Like to Craft:
Mastery |next "Collect_Sea_Currant"
Versatility |next "Collect_Dark_Opal"
step
label "Collect_Sea_Currant"
collect 5 Sea Currant##168191
|tip These can be prospected from Osmenite Ore in Nazjatar.
|tip Prospect them with Jewelcrafting or purchase them from the Auction House.
step
talk Instructor Okanu##153811
Train Masterful Sea Currant |learn Masterful Sea Currant##298797 |goto Nazjatar/0 37.93,53.18
step
Open Your Jewelcrafting Crafting Panel:
_<Create 5 Masterful Sea Currant>_
Reach Level 155 Kul Tiran Jewelcrafting |skill Kul Tiran Jewelcrafting,155 |next "Choose_Gem_To_Craft"
step
label "Collect_Dark_Opal"
collect 5 Dark Opal##168189
|tip These can be prospected from Osmenite Ore in Nazjatar.
|tip Prospect them with Jewelcrafting or purchase them from the Auction House.
step
talk Instructor Okanu##153811
Train Versatile Dark Opal |learn Versatile Dark Opal##298794 |goto 37.93,53.18
step
Open Your Jewelcrafting Crafting Panel:
_<Create 5 Versatile Dark Opal>_
Reach Level 155 Kul Tiran Jewelcrafting |skill Kul Tiran Jewelcrafting,155
step
label "Choose_Gem_To_Craft"
Choose the Stat Gem You Would Like to Craft:
Haste |next "Collect_Sand_Spinel"
Movement Speed |next "Collect_Sage_Agate"
Critical Strike |next "Collect_Lava_Lazuli"
step
label "Collect_Sand_Spinel"
collect 20 Sand Spinel##168192
|tip These can be prospected from Osmenite Ore in Nazjatar.
|tip Prospect them with Jewelcrafting or purchase them from the Auction House.
step
talk Instructor Okanu##153811
Train Quick Sand Spinel |learn Quick Sand Spinel##298796 |goto 37.93,53.18
step
Open Your Jewelcrafting Crafting Panel:
_<Create 20 Quick Sand Spinel>_
Reach Level 170 Kul Tiran Jewelcrafting |skill Kul Tiran Jewelcrafting,170 |next "Collect_Leviathan's_Eye"
step
label "Collect_Sage_Agate"
collect 20 Sage Agate##168188
|tip These can be prospected from Osmenite Ore in Nazjatar.
|tip Prospect them with Jewelcrafting or purchase them from the Auction House.
step
talk Instructor Okanu##153811
Train Straddling Sage Agate |learn Straddling Sage Agate##300756 |goto 37.93,53.18
step
Open Your Jewelcrafting Crafting Panel:
_<Create 20 Straddling Sage Agate>_
Reach Level 170 Kul Tiran Jewelcrafting |skill Kul Tiran Jewelcrafting,170 |next "Collect_Leviathan's_Eye"
step
label "Collect_Lava_Lazuli"
collect 20 Lava Lazuli##168190
|tip These can be prospected from Osmenite Ore in Nazjatar.
|tip Prospect them with Jewelcrafting or purchase them from the Auction House.
step
talk Instructor Okanu##153811
Train Deadly Lava Lazuli |learn Deadly Lava Lazuli##298798 |goto 37.93,53.18
step
Open Your Jewelcrafting Crafting Panel:
_<Create 20 Deadly Lava Lazuli>_
Reach Level 170 Kul Tiran Jewelcrafting |skill Kul Tiran Jewelcrafting,170
step
label "Collect_Leviathan's_Eye"
collect 5 Leviathan's Eye##168635
|tip These can be prospected from Osmenite Ore in Nazjatar.
|tip Prospect them with Jewelcrafting or purchase them from the Auction House.
step
Choose the Stat Gem You Would Like to Craft:
Strength |next "Craft_Strength_Eye"
Intellect |next "Craft_Intellect_Eye"
Agility |next "Craft_Agility_Eye"
step
label "Craft_Strength_Eye"
step
talk Instructor Okanu##153811
Train Leviathan's Eye of Strength |learn Leviathan's Eye of Strength##298799 |goto 37.93,53.18
step
Open Your Jewelcrafting Crafting Panel:
_<Create 5 Leviathan's Eye of Strength>_
Reach Level 175 Kul Tiran Jewelcrafting |skill Kul Tiran Jewelcrafting,175 |next "Congratulations"
step
label "Craft_Intellect_Eye"
step
talk Instructor Okanu##153811
Train Leviathan's Eye of Intellect |learn Leviathan's Eye of Intellect##298801 |goto 37.93,53.18
step
Open Your Jewelcrafting Crafting Panel:
_<Create 5 Leviathan's Eye of Intellect>_
Reach Level 175 Kul Tiran Jewelcrafting |skill Kul Tiran Jewelcrafting,175 |next "Congratulations"
step
label "Craft_Agility_Eye"
step
talk Instructor Okanu##153811
Train Leviathan's Eye of Agility |learn Leviathan's Eye of Agility##298800 |goto 37.93,53.18
step
Open Your Jewelcrafting Crafting Panel:
_<Create 5 Leviathan's Eye of Agility>_
Reach Level 175 Kul Tiran Jewelcrafting |skill Kul Tiran Jewelcrafting,175
step
label "Congratulations"
_Congratulations!_
You Reached 175 Kul Tiran Jewelcrafting Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Jewelcrafting\\Leveling Guides\\Tools of the Trade - Jewelcrafting",{
author="support@zygorguides.com",
description="\nUpon completion of this guide, you will earn the Jewelhammer's Focus. This allows you to interact with shrines in various "..
"locations in Zandalar and Kul Tiras, as well as extract a gem socketed into your gear.",
startlevel=50.0,
condition_end=function() return completedq(49584) end,
condition_suggested=function() return skill('Kul Tiran Jewelcrafting') >= 150 and level >= 50 and not completedq(49584) end,
condition_visible=function() return skill('Kul Tiran Jewelcrafting') >= 1 end,
},[[
step
Reach Level 150 Kul Tiran Jewelcrafting |skill Kul Tiran Jewelcrafting,175
|tip Use the "Kul Tiran Jewelcrafting 1-150" profession guide to accomplish this.
step
collect 4 Rubellite##153701 |q 49583 |future
|tip You get these by gathering and prospecting ore found in Kul Tiras and Zuldazar, if you have Mining.
|tip You can also purchase them from the Auction House.
|tip Use your Prospecting ability on Kul Tiras or Zuldazar ore to accomplish this.
step
click Ancient Journal
accept A Rocky Start##49570 |goto Boralus/0 75.16,10.04
step
talk Zooey Inksprocket##130399
turnin A Rocky Start##49570 |goto 73.40,6.32
accept Digging Through the Past##49571 |goto 73.40,6.32
step
Enter the building |goto 68.87,8.72 < 10 |walk
talk Jane Hudson##136106
|tip Inside the building.
Ask her _"I'm looking for a book you have on runes and carvings. Could I borrow it?"_
Watch the dialogue
collect Primordial Races: Runes and Writings##155587 |q 49571/1 |goto 68.33,8.47
step
talk Chronicler Toopa##144383
Ask him _"I was told you came across an ancient earthen codex in your recent travels. Could I please borrow it?"_
collect 1 The Dungard Codex##155589 |q 49571/3 |goto 74.09,14.18
step
talk Tal'ana##142117
buy 1 Scrolls of the Stonefather##155588 |q 49571/2 |goto 70.70,23.80
step
talk Zooey Inksprocket##130399
Tell her _"Here are the books you asked for."_
Watch the dialogue
Have Zooey Translate the Ancient Journal |q 49571/4 |goto 73.40,6.32
step
click Ancient Journal Transcription
collect 1 Ancient Journal Transcription##155678 |q 49571/5 |goto 73.25,6.17
step
talk Samuel D. Colton III##130368
turnin Digging Through the Past##49571 |goto 75.20,9.88
accept The Shrine of Storms##49574 |goto 75.20,9.88
step
Follow the path |goto Stormsong Valley/0 62.18,54.02 < 30 |only if walking
click Shrine of the Storms
turnin The Shrine of Storms##49574 |goto 60.70,58.51
accept Cracking the Surface##49577 |goto 60.70,58.51
step
Follow the path up |goto 60.75,56.74 < 20 |only if walking
click Prospectable Rock+
|tip They look like large sparkling rocks on the ground around this area.
collect 20 Shard of Golden Beryl##155590 |q 49577/1 |goto 55.87,51.82
step
Follow the path down |goto 60.75,56.74 < 20 |only if walking
click Shrine of the Storms
turnin Cracking the Surface##49577 |goto 60.70,58.51
accept A Promising Beginning##55585 |goto 60.70,58.51
step
talk Samuel D. Colton III##130368
turnin A Promising Beginning##55585 |goto Boralus/0 75.20,9.88
accept The Shrine of the Eventide##49573 |goto 75.20,9.88
accept The Shrine of the Sea##49572 |goto 75.20,9.88
step
click Shrine of Eventide
turnin The Shrine of the Eventide##49573 |goto Drustvar/0 34.10,35.35
accept High Prospects##49576 |goto 34.10,35.35
step
Follow the path up |goto 38.50,53.85 < 20 |only if walking
clicknpc Runic Warrior##151330
Investigate the Runic Warrior |q 49576/1 |goto 39.97,56.15
step
kill Runic Warrior##130848+
collect 10 Runic Core##155830 |goto 38.21,59.00 |q 49576
step
cast Prospecting##31252
|tip Use your "Prospecting" ability and click on the cores in your bags.
collect 6 Pristine Kubiline Shards##155661 |q 49576/2
step
click Shrine of Eventide
turnin High Prospects##49576 |goto 34.10,35.35
accept Polished Up##55586 |goto 34.10,35.35
step
Follow the path |goto Tiragarde Sound/0 43.87,23.64 < 20 |only if walking
click Shrine of the Sea
turnin The Shrine of the Sea##49572 |goto 46.35,23.46
accept Tol Dagor: Jewel of the Tides##49575 |goto 46.35,23.46
step
talk "Slippery" Salton##130464
|tip He stumbles around this area.
Ask him _"Where's this person who took the jewel?"_
Speak with "Slippery" Salton |q 49575/1 |goto 46.33,23.47
step
Press _I_ and Queue for Tol Dagor or Enter the Dungeon with your Group |goto Tol Dagor/0 0.00,0.00 < 1000 |noway |q 49575
step
kill Jes Howlis##127484
|tip Jes is the second boss in the dungeon.
collect Jewel of the Tides##155648 |q 49575/2
step
kill Overseer Korgus##127503 |q 49575/3
|tip The final boss of the instance.
step
Follow the path |goto Tiragarde Sound/0 43.87,23.64 < 20 |only if walking
click Shrine of the Sea
turnin Tol Dagor: Jewel of the Tides##49575 |goto 46.35,23.46
accept Setting Things Right##55590 |goto 46.35,23.46
step
talk Samuel D. Colton III##130368
turnin Polished Up##55586 |goto Boralus/0 75.20,9.88
turnin Setting Things Right##55590 |goto 75.20,9.88
step
Watch the dialogue
talk Samuel D. Colton III##130368
accept The Missing Chapter##49584 |goto 75.20,9.88
step
Travel to Dustwallow Marsh |q 49584/1 |goto Dustwallow Marsh/0 65.90,17.96
step
click Weathered Diving Helmet
Equip the Diving Helmet |havebuff 133151 |goto 65.90,17.96 |q 49584
step
click Weathered Journal
|tip Click the Diving Helmet for an underwater breathing buff.
Search for Clues |q 49584/2 |goto 65.90,17.96
step
Enter the underwater cave |goto 74.14,8.36 < 30 |walk
Enter the building |goto 77.10,17.07 < 20 |walk
Locate the Cave and Investigate |q 49584/3 |goto 78.52,17.85
step
kill Vault Guardian##130711 |q 49584/4 |goto 78.97,18.08
step
click Jewelhammer's Chest
collect The Missing Chapter##155668 |q 49584/5 |goto 79.39,18.32
step
talk Zooey Inksprocket##130399
Ask him _"Can you translate this please?"_
Watch the dialogue
Take the Missing Chapter to Zooey Inksprocket |q 49584/6 |goto Boralus/0 73.40,6.32
step
talk Samuel D. Colton III##130368
turnin The Missing Chapter##49584 |goto 75.20,9.88
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Leatherworking\\Leveling Guides\\Kul Tiran Leatherworking 1-175",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Kul Tiran Leatherworking profession from 1-175.",
startlevel=5.0,
condition_end=function() return skill('Kul Tiran Leatherworking') >= 175 end,
condition_suggested=function() return skill('Kul Tiran Leatherworking') > 0 and skill('Kul Tiran Leatherworking') < 175 and level >= 5 end,
},[[
step
talk Cassandra Brennor##136063
Train Kul Tiran Leatherworking |skillmax Kul Tiran Leatherworking,175 |goto Boralus/0 75.48,12.61
step
collect 150 Coarse Leather##152541
|tip Use the "Coarse Leather" farming guide to collect them, if you have Skinning.
|tip You can also purchase them from the Auction House.
step
collect 100 Blood-Stained Bone##154164
|tip Use the "Blood-Stained Bone" farming guides to collect them, if you have Skinning.
|tip You can also purchase them from the Auction House.
step
Open Your Leatherworking Crafting Panel:
_<Create 25 Coarse Leather Armguards>_
Reach Level 25 Kul Tiran Leatherworking |skill Kul Tiran Leatherworking,25
step
talk Cassandra Brennor##136063
Train Coarse Leather Pauldrons |learn Coarse Leather Pauldrons##256754 |goto 75.48,12.61
step
collect 200 Coarse Leather##152541
|tip Use the "Coarse Leather" farming guide to collect them, if you have Skinning.
|tip You can also purchase them from the Auction House.
step
collect 150 Blood-Stained Bone##154164
|tip Use the "Blood-Stained Bone" farming guide to collect them, if you have Skinning.
|tip You can also purchase them from the Auction House.
step
Open Your Leatherworking Crafting Panel:
_<Create 25 Coarse Leather Pauldrons>_
Reach Level 50 Kul Tiran Leatherworking |skill Kul Tiran Leatherworking,50
step
talk Cassandra Brennor##136063
Train Hardened Tempest Hide |learn Hardened Tempest Hide##272278 |goto 75.48,12.61
step
collect 20 Tempest Hide##154722
|tip Use the "Tempest Hide" farming guide to collect them, if you have Skinning.
|tip You can also purchase them from the Auction House.
step
talk Cassandra Brennor##136063
buy 20 Amber Tanning Oil##160059 |goto 75.48,12.61
step
Open Your Leatherworking Crafting Panel:
_<Create 20 Hardened Tempest Hide>_
Reach Level 70 Kul Tiran Leatherworking |skill Kul Tiran Leatherworking,70
step
talk Cassandra Brennor##136063
Train Coarse Leather Barding |learn Coarse Leather Barding##256790 |goto 75.48,12.61
step
collect 375 Coarse Leather##152541
|tip Use the "Coarse Leather" farming guides to collect them, if you have Skinning.
|tip You can also purchase them from the Auction House.
step
Open Your Leatherworking Crafting Panel:
_<Create 15 Coarse Leather Barding>_
Reach Level 85 Kul Tiran Leatherworking |skill Kul Tiran Leatherworking,85
step
talk Cassandra Brennor##136063
Train Drums of the Maelstrom |learn Drums of the Maelstrom##256791 |goto 75.48,12.61
step
collect 1625 Coarse Leather##152541
|tip Use the "Coarse Leather" farming guide to collect them, if you have Skinning.
|tip You can also purchase them from the Auction House.
step
collect 650 Blood-Stained Bone##154164
|tip Use the "Blood-Stained Bone" farming guide to collect them, if you have Skinning.
|tip You can also purchase them from the Auction House.
step
Open Your Leatherworking Crafting Panel:
_<Create 65 Drums of the Maelstrom>_
Reach Level 150 Kul Tiran Leatherworking |skill Kul Tiran Leatherworking,175
step
Reach Level 50 |ding 50
step
Complete the Quest "A Way Home" |complete completedq(54972)
|tip Use the "Nazjatar" leveling guide to accomplish this.
step
collect 350 Dredged Leather##168649
|tip Skin them from Beast mobs in Nazjatar with Skinning or purchase them from the Auction House.
step
talk Instructor Alikana##153817
buy 175 Nylon Thread##159959 |goto Nazjatar/0 38.01,53.60
step
talk Instructor Alikana##153817
Train Dredged Leather Bladder |learn Dredged Leather Bladder##301405 |goto 38.01,53.60
step
Open Your Leatherworking Crafting Panel:
_<Create 35 Dredged Leather Bladder>_
|tip You may need to make more or less of these to reach 175.
Reach Level 175 Kul Tiran Leatherworking |skill Kul Tiran Leatherworking,175
step
_Congratulations!_
You Reached 175 Kul Tiran Leatherworking Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Leatherworking\\Leveling Guides\\Tools of the Trade - Leatherworking",{
author="support@zygorguides.com",
description="\nUpon completion of this guide, you will earn the RE-USE ME. This allows you to interact with drums in various "..
"locations around Zandalar and Kul Tiras, as well as summon a special mount in Zandalar and Kul Tiras.",
startlevel=50.0,
condition_end=function() return completedq(55235) end,
condition_suggested=function() return skill('Kul Tiran Leatherworking') >= 150 and level >= 50 and not completedq(55235) end,
condition_visible=function() return skill('Kul Tiran Leatherworking') >= 1 end,
},[[
step
Reach Level 150 Kul Tiran Leatherworking |skill Kul Tiran Leatherworking,175
|tip Use the "Kul Tiran Leatherworking 1-150" profession guide to accomplish this.
step
talk Cassandra Brennor##136063
accept The Aeonian Artisan##55227 |goto Boralus/0 75.47,12.60
step
talk Daniss Ghostdancer##151173
turnin The Aeonian Artisan##55227 |goto 69.43,29.97
accept The Audition##55228 |goto 69.43,29.97
step
collect 75 Coarse Leather##152541 |q 55228
|tip Use the "Coarse Leather" farming guide to collect them, if you have Skinning.
|tip You can also purchase them from the Auction House.
step
collect 30 Blood-Stained Bone##154164 |q 55228
|tip Use the "Blood-Stained Bone" farming guide to collect them, if you have Skinning.
|tip You can also purchase them from the Auction House.
step
Open Your Leatherworking Crafting Panel:
_<Create 3 Drums of the Maelstrom>_
Craft 3 Drums of the Maelstrom |q 55228/1
step
talk Daniss Ghostdancer##151173
turnin The Audition##55228 |goto 69.43,29.97
accept Repaying the Debt##55229 |goto 69.45,29.97
accept The Other Ghostdancer##55231 |goto 69.45,29.97
accept Picking Bones##55233 |goto 69.45,29.97
step
Jump down here |goto Tiragarde Sound/0 53.91,28.59 < 20 |only if walking
Follow the path |goto 56.21,29.72 < 20 |only if walking
click Box of Harvested Bones##325392+
|tip They look like large brown crates with red Horde symbols on the ground around this area.
Kill enemies around this area
collect 18 Unwaning Bones##167549 |q 55233/1 |goto 58.04,32.20
step
talk Telonis##151287
turnin Repaying the Debt##55229 |goto Stormwind City/0 42.59,60.44
accept Telonis' Prized Leather##55230 |goto 42.59,60.44
step
talk "Avarice"##151298
Tell him _"Give me the skins or the world has a few less thieves to worry about."_
Then tell him _"The Hard Way."_
|tip Kill the bandits that attack, then "Avarice."
collect "Avarice's" Chest Key##167550 |q 55230 |goto Elwynn Forest/0 47.71,12.47
step
click Locked Chest
collect Rare Hides##167541 |q 55230/1 |goto 47.76,12.49
step
talk Mevris Ghostdancer##151285
turnin The Other Ghostdancer##55231 |goto Val'sharah/0 53.59,54.40
accept Mevris' Menace##55232 |goto 53.59,54.40
step
kill Gluttonous Hydra##151252
collect Brilliant Azure Scales##167542 |q 55232/1 |goto 25.76,56.00
step
talk Daniss Ghostdancer##151173
|tip She will walk away after turning in each quest.
turnin Telonis' Prized Leather##55230 |goto Boralus/0 69.45,29.97
turnin Mevris' Menace##55232 |goto 69.45,29.97
turnin Picking Bones##55233 |goto 69.45,29.97
accept Make Some Noise##55234 |goto 69.45,29.97
step
talk Daniss Ghostdancer##151173
Tell her _"Begin the ritual."_
Talk to Daniss to Begin the Ritual |q 55234/1 |goto 69.44,29.96
step
Watch the dialogue
click Bucket of Hides
collect 12 Supple Hides##167559 |goto 69.29,30.55 |q 55234
step
click Pail of Scales
collect 6 Cleaned Brilliant Scales##167560 |goto 69.28,30.43 |q 55234
step
click Crate of Bones
collect 18 Etched Bones##167558 |goto 69.28,30.33 |q 55234
step
Open Your Leatherworking Crafting Panel:
_<Create 6 Drum of Primal Might>_
Craft 6 Drums of Primal Might |q 55234/2
step
talk Daniss Ghostdancer##151173
turnin Make Some Noise##55234 |goto 69.28,30.25
accept Instruments of Destruction##55235 |goto 69.28,30.25
step
click Drum of Primal Might
Place the Drum at Tradewinds Market |q 55235/1 |goto 76.06,13.84
step
click Drum of Primal Might
Place the Drum at Deadwash |q 55235/3 |goto Stormsong Valley/0 42.98,57.31
step
click Drum of Primal Might
Place the Drum at Arom's Stand |q 55235/2 |goto Drustvar/0 37.73,48.76
step
click Drum of Primal Might
Place the Drum at Terrace of the Devoted |q 55235/4 |goto Vol'dun/0 28.05,50.74
step
click Drum of Primal Might
Place the Drum at Fort Victory |q 55235/6 |goto Nazmir/0 61.81,40.77
step
click Drum of Primal Might
Place the Drum at Scaletrader Post |q 55235/5 |goto Zuldazar/0 71.05,30.34
step
talk Daniss Ghostdancer##151173
turnin Instruments of Destruction##55235 |goto Boralus/0 69.44,29.97
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Leveling Guides\\Kul Tiran Mining 1-175",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Kul Tiran Mining profession from 1-175.",
startlevel=5.0,
condition_end=function() return skill('Kul Tiran Mining') >= 175 end,
condition_suggested=function() return skill('Kul Tiran Mining') > 0 and skill('Kul Tiran Mining') < 175 and level >= 5 end,
},[[
step
talk Myra Cabot##136091
Train Kul Tiran Mining |skillmax Kul Tiran Mining,175 |goto Boralus/0 75.23,7.56
step
Complete the "A Way Home" Quest in Nazjatar |complete completedq(54972)
|tip Use the "Nazjatar" leveling guide to accomplish this.
step
map Nazjatar/0
path follow smart; loop on; ants curved; dist 30
path	28.83,39.87	31.51,43.22	29.32,45.41	29.55,47.18	31.92,48.81
path	33.70,48.29	34.82,47.79	37.36,47.10	37.81,45.15	36.82,42.03
path	36.63,38.28	35.96,34.45	35.69,33.11	37.23,33.20	37.60,35.48
path	37.92,38.06	39.01,40.23	38.83,41.72	39.71,43.92	41.15,45.25
path	42.13,43.71	42.23,39.91	43.01,38.07	44.32,37.34	44.75,34.35
path	45.00,31.47	44.62,28.04	45.72,26.65	44.26,22.47	43.50,19.61
path	41.56,13.40	40.57,12.20	39.30,14.85	39.56,17.37	39.51,21.66
path	38.09,22.88	39.11,25.13	36.66,30.97	34.90,32.15	34.79,29.16
path	33.41,28.70	31.62,30.47	30.07,30.61	29.06,31.10	27.79,29.29
path	25.92,30.83	26.63,32.10	27.99,33.03	28.34,35.43
click Osmenite Deposit##325875+
click Rich Osmenite Deposit##325873+
click Osmenite Seam##325874+
|tip Track them on your minimap with "Find Minerals".
|tip Enter caves along the path for additional nodes.
collect Osmenite Ore##168185 |n
Reach Level 175 Kul Tiran Mining |skill Kul Tiran Mining,175
step
_Congratulations!_
You Reached 175 Kul Tiran Mining Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Quest Guides\\Kul Tiran Mining Quest Line",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the Legion Mining quest line.",
startlevel=10.0,
condition_end=function() return completedq(39830) end,
condition_suggested=function() return skill('Mining') > 0 and level >= 10 and not completedq(39830) end,
},[[
step
Follow the path |goto Boralus/0 68.14,15.61 < 10 |only if walking
Continue following the path |goto 70.70,16.57 < 10 |only if walking
Enter the building |goto 73.52,13.77 < 3 |walk
talk Wesley Rockhold##135153
home Snug Harbor Inn |goto Tiragarde Sound/0 75.28,22.84
step
Leave the building |goto 75.13,23.09 < 3 |walk
Follow the path |goto Boralus/0 73.39,14.58 < 7 |only if walking
Continue following the path |goto 71.27,14.65 < 10 |only if walking
Continue following the path |goto 70.80,12.19 < 10 |only if walking
Continue following the path |goto 74.57,10.27 < 10 |only if walking
talk Myra Cabot##136091
Train Kul Tiran Mining |skillmax Kul Tiran Mining,150 |goto Boralus/0 75.23,7.56
step
talk Myra Cabot##136091
Learn the Rank 1 Monelite Deposit Mining Technique |learn Monelite Deposit##253333 |goto 75.23,7.56
step
talk Myra Cabot##136091
Learn the Rank 1 Storm Silver Deposit Mining Technique |learn Storm Silver Deposit##253336 |goto 75.23,7.56
step
Follow the road |goto 74.53,10.80 < 10 |only if walking
Continue following the road |goto 72.12,11.02 < 7 |only if walking
Continue following the road |goto 70.76,13.27 < 7 |only if walking
Continue following the road |goto 71.35,15.18 < 7 |only if walking
Continue following the road |goto 70.21,16.51 7 |only if walking
talk Joan Weber##124725 |goto 66.97,15.00
Fly to Millstone Hamlet |goto Stormsong Valley/0 30.82,66.55 < 200 |q 48752 |future |c |noway
step
map Stormsong Valley/0
path follow smart; loop on; ants curved; dist 20
path	72.75,65.64	73.49,68.74	72.43,73.58	71.16,72.66	70.21,71.78
path	69.66,72.11	69.75,73.46	68.77,75.11	68.48,76.96	67.36,77.43
path	66.41,76.44	65.18,76.96	63.64,75.77	61.94,76.88	60.41,76.91
path	60.24,75.35	58.68,75.55	58.05,76.22	56.49,76.79	54.78,74.97
path	53.32,75.77	52.49,76.26	51.06,76.57	50.27,75.41	49.45,74.99
path	48.73,74.57	48.12,72.12	47.90,70.35	47.34,71.31	46.53,72.85
path	45.84,72.58	44.89,72.13	43.94,72.32	42.48,73.73	41.20,73.06
path	41.97,72.57	42.36,72.30	42.96,71.84	43.50,71.07	42.74,68.93
path	42.35,66.92	41.35,66.51	40.15,66.30	39.35,66.18	38.65,65.20
path	37.64,65.67	35.95,66.70	34.02,67.76	33.28,69.58	32.69,70.87
path	31.54,71.48	31.43,73.40	30.50,75.11	29.26,75.62	27.97,76.40
path	26.84,76.46	26.09,75.71	25.83,75.24	25.33,73.64	26.73,73.24
path	27.07,72.29	26.83,70.19	28.31,68.70	28.87,67.37	29.39,65.53
path	29.28,63.58	30.37,61.43	32.41,60.80	34.59,60.11	36.20,60.50
path	38.05,59.37	39.72,60.59	40.73,61.84	42.38,62.04	43.94,62.33
path	45.05,61.34	46.43,60.93	47.56,61.92	47.66,63.27	47.20,63.94
path	46.79,64.36	47.42,65.26	48.20,65.35	49.07,65.49	49.76,65.51
path	50.85,65.76	51.99,66.56	53.42,69.29	55.17,71.38	56.73,73.48
path	58.19,72.11	58.93,72.79	60.41,72.63	61.92,73.01	62.80,71.42
path	63.75,70.57	65.44,69.22	66.17,69.37	67.28,70.41	67.83,70.27
path	69.27,67.37	70.71,67.08
click Storm Silver Deposit##276617
click Monelite Seam##276619
click Platinum Deposit##276618
|tip Track them on your minimap with "Find Minerals".
|tip Enter caves along the path for additional nodes.
Reach Level 25 Kul Tiran Mining |skill Kul Tiran Mining,25
step
Follow the path |goto Boralus/0 68.14,15.66 < 7 |only if walking
Continue following the path |goto 70.91,16.43 < 10 |only if walking
Continue following the path |goto 71.32,14.78 < 7 |only if walking
Continue following the path |goto 70.69,12.51 < 7 |only if walking
Continue following the path |goto 74.63,10.12 < 7 |only if walking
talk Myra Cabot##136091
Learn the Rank 1 Monelite Seam Mining Tichnique |learn Monelite Seam##253342 |goto 75.23,7.56
step
talk Myra Cabot##136091
Learn the Rank 1 Platinum Deposit Mining Technique |learn Platinum Deposit##253339 |goto 75.23,7.56
step
talk Myra Cabot##136091
Learn the Rank 1 Storm Silver Seam Mining Technique |learn Storm Silver Seam##253345 |goto 75.23,7.56
step
Follow the road |goto 74.53,10.80 < 10 |only if walking
Continue following the road |goto 72.12,11.02 < 7 |only if walking
Continue following the road |goto 70.76,13.27 < 7 |only if walking
Continue following the road |goto 71.35,15.18 < 7 |only if walking
Continue following the road |goto 70.21,16.51 7 |only if walking
talk Joan Weber##124725 |goto 66.97,15.00
Fly to Millstone Hamlet |goto Stormsong Valley/0 30.82,66.55 < 200 |q 48752 |future |c |noway
step
map Stormsong Valley/0
path follow smart; loop on; ants curved; dist 20
path	72.75,65.64	73.49,68.74	72.43,73.58	71.16,72.66	70.21,71.78
path	69.66,72.11	69.75,73.46	68.77,75.11	68.48,76.96	67.36,77.43
path	66.41,76.44	65.18,76.96	63.64,75.77	61.94,76.88	60.41,76.91
path	60.24,75.35	58.68,75.55	58.05,76.22	56.49,76.79	54.78,74.97
path	53.32,75.77	52.49,76.26	51.06,76.57	50.27,75.41	49.45,74.99
path	48.73,74.57	48.12,72.12	47.90,70.35	47.34,71.31	46.53,72.85
path	45.84,72.58	44.89,72.13	43.94,72.32	42.48,73.73	41.20,73.06
path	41.97,72.57	42.36,72.30	42.96,71.84	43.50,71.07	42.74,68.93
path	42.35,66.92	41.35,66.51	40.15,66.30	39.35,66.18	38.65,65.20
path	37.64,65.67	35.95,66.70	34.02,67.76	33.28,69.58	32.69,70.87
path	31.54,71.48	31.43,73.40	30.50,75.11	29.26,75.62	27.97,76.40
path	26.84,76.46	26.09,75.71	25.83,75.24	25.33,73.64	26.73,73.24
path	27.07,72.29	26.83,70.19	28.31,68.70	28.87,67.37	29.39,65.53
path	29.28,63.58	30.37,61.43	32.41,60.80	34.59,60.11	36.20,60.50
path	38.05,59.37	39.72,60.59	40.73,61.84	42.38,62.04	43.94,62.33
path	45.05,61.34	46.43,60.93	47.56,61.92	47.66,63.27	47.20,63.94
path	46.79,64.36	47.42,65.26	48.20,65.35	49.07,65.49	49.76,65.51
path	50.85,65.76	51.99,66.56	53.42,69.29	55.17,71.38	56.73,73.48
path	58.19,72.11	58.93,72.79	60.41,72.63	61.92,73.01	62.80,71.42
path	63.75,70.57	65.44,69.22	66.17,69.37	67.28,70.41	67.83,70.27
path	69.27,67.37	70.71,67.08
click Storm Silver Deposit##276617
click Monelite Seam##276619
click Platinum Deposit##276618
|tip Track them on your minimap with "Find Minerals".
|tip Enter caves along the path for additional nodes.
Reach Level 50 Kul Tiran Mining |skill Kul Tiran Mining,50
step
Leave the building |goto 75.13,23.09 < 3 |walk
Follow the path |goto Boralus/0 73.39,14.58 < 7 |only if walking
Continue following the path |goto 71.27,14.65 < 10 |only if walking
Continue following the path |goto 70.80,12.19 < 10 |only if walking
Continue following the path |goto 74.57,10.27 < 10 |only if walking
talk Myra Cabot##136091
accept A Need For Coal##48752 |goto 75.22,7.55
accept Ritualistic Preparations##51568 |goto 75.22,7.55
step
Follow the path |goto 74.64,10.77 < 10 |only if walking
Continue following the path |goto 71.95,11.09 < 10 |only if walking
Continue following the path |goto 70.70,13.26 < 10 |only if walking
Continue following the path |goto 71.57,15.39 < 10 |only if walking
Continue following the path |goto 70.19,16.59 < 10 |only if walking
Fly to Bridgeport |goto Tiragarde Sound/0 75.79,48.58 < 200 |q 48752 |c |noway
step
Follow the path |goto 75.90,49.05 < 10 |only if walking
Continue following the path |goto 76.66,48.97 < 10 |only if walking
Follow the path up |goto 77.36,49.50 < 10 |only if walking
click Barrel of Coal##291242
|tip They look like barrels with rope tied around them around this area.
collect 1 Ashvane Coal##160902 |q 48752/1 |goto 78.17,48.97
step
click Barrel of Coal##291242
|tip They look like barrels with rope tied around them around this area.
collect 2 Ashvane Coal##160902 |q 48752/1 |goto 79.03,48.20
step
click Barrel of Coal##291242
|tip They look like barrels with rope tied around them around this area.
collect 3 Ashvane Coal##160902 |q 48752/1 |goto 79.21,47.29
step
click Barrel of Coal##291242
|tip They look like barrels with rope tied around them around this area.
collect 4 Ashvane Coal##160902 |q 48752/1 |goto 79.74,47.42
step
click Barrel of Coal##291242
|tip They look like barrels with rope tied around them around this area.
collect 5 Ashvane Coal##160902 |q 48752/1 |goto 80.09,47.07
step
Follow the path up |goto 79.75,46.57 < 10 |only if walking
click Barrel of Coal##291242
|tip They look like barrels with rope tied around them around this area.
collect 6 Ashvane Coal##160902 |q 48752/1 |goto 79.82,45.91
step
click Barrel of Coal##291242
|tip They look like barrels with rope tied around them around this area.
collect 7 Ashvane Coal##160902 |q 48752/1 |goto 80.67,46.71
step
Follow the path |goto 80.57,47.46 < 10 |only if walking
click Barrel of Coal##291242
|tip They look like barrels with rope tied around them around this area.
collect 8 Ashvane Coal##160902 |q 48752/1 |goto 80.15,48.78
step
click Barrel of Coal##291242
|tip They look like barrels with rope tied around them around this area.
collect 9 Ashvane Coal##160902 |q 48752/1 |goto 79.57,49.14
step
Follow the path down |goto 78.89,48.45 < 10 |only if walking
Continue following the path |goto 77.99,48.26 < 10 |only if walking
Continue down the path |goto 77.30,49.47 < 10 |only if walking
Continue down the path |goto 76.59,48.93 < 10 |only if walking
Continue following the path |goto 75.90,49.06 < |only if walking
talk Jeb Johnson##134226
Fly to Millstone Hamlet |goto Stormsong Valley/0 30.82,66.55 < 200 |q 51568 |c |noway
step
map Stormsong Valley/0
path follow smart; loop on; ants curved; dist 20
path	72.75,65.64	73.49,68.74	72.43,73.58	71.16,72.66	70.21,71.78
path	69.66,72.11	69.75,73.46	68.77,75.11	68.48,76.96	67.36,77.43
path	66.41,76.44	65.18,76.96	63.64,75.77	61.94,76.88	60.41,76.91
path	60.24,75.35	58.68,75.55	58.05,76.22	56.49,76.79	54.78,74.97
path	53.32,75.77	52.49,76.26	51.06,76.57	50.27,75.41	49.45,74.99
path	48.73,74.57	48.12,72.12	47.90,70.35	47.34,71.31	46.53,72.85
path	45.84,72.58	44.89,72.13	43.94,72.32	42.48,73.73	41.20,73.06
path	41.97,72.57	42.36,72.30	42.96,71.84	43.50,71.07	42.74,68.93
path	42.35,66.92	41.35,66.51	40.15,66.30	39.35,66.18	38.65,65.20
path	37.64,65.67	35.95,66.70	34.02,67.76	33.28,69.58	32.69,70.87
path	31.54,71.48	31.43,73.40	30.50,75.11	29.26,75.62	27.97,76.40
path	26.84,76.46	26.09,75.71	25.83,75.24	25.33,73.64	26.73,73.24
path	27.07,72.29	26.83,70.19	28.31,68.70	28.87,67.37	29.39,65.53
path	29.28,63.58	30.37,61.43	32.41,60.80	34.59,60.11	36.20,60.50
path	38.05,59.37	39.72,60.59	40.73,61.84	42.38,62.04	43.94,62.33
path	45.05,61.34	46.43,60.93	47.56,61.92	47.66,63.27	47.20,63.94
path	46.79,64.36	47.42,65.26	48.20,65.35	49.07,65.49	49.76,65.51
path	50.85,65.76	51.99,66.56	53.42,69.29	55.17,71.38	56.73,73.48
path	58.19,72.11	58.93,72.79	60.41,72.63	61.92,73.01	62.80,71.42
path	63.75,70.57	65.44,69.22	66.17,69.37	67.28,70.41	67.83,70.27
path	69.27,67.37	70.71,67.08
click Storm Silver Deposit##276617
|tip These share a spawn with Monelite and Platinum Ore Deposits, so be sure to mine them as well.
collect 20 Unsanctified Storm Silver Ore##160440 |q 51568
step
Leave the building |goto Tiragarde Sound/0 75.13,23.09 < 10 |only if walking
Follow the road |goto Boralus/0 73.39,14.78 < 10 |only if walking
Continue following the road |goto 71.29,14.63 < 10 |only if walking
Run down the stairs |goto 72.95,9.02 < 5 |only if walking
use the Unsanctified Storm Silver Ore##160440
Use Forge to smelt Unsanctified Storm Silver Ore into Ingots |q 51568/1 |goto 73.64,8.40
step
Follow the path up |goto 73.35,9.09 < 5 |only if walking
Follow the path |goto 72.60,9.13 < 7 |only if walking
Continue following the path |goto 70.78,13.11 < 10 |only if walking
Continue following the path |goto 71.37,15.28 < 10 |only if walking
Continue following the path |goto 69.80,16.47 < 10 |only if walking
Fly to the Roughneck Camp |goto Tiragarde Sound/0 42.48,23.02 < 200 |q 51568 |c |noway
step
Follow the path down |goto 43.18,22.57 < 10 |only if walking
Continue down the path |goto 43.37,23.29 < 10 |only if walking
Continue down the path |goto 43.83,24.97 < 10 |only if walking
Continue down the path |goto 44.02,25.93 < 10 |only if walking
Jump down carefully here |goto 44.19,26.29 < 10 |only if walking
Continue following the path |goto 43.25,27.90 < 10 |only if walking
Continue following the path |goto 42.67,29.43 < 7 |only if walking
talk Diligent Tidesage##126667
Ask him _"Could you bless these storm silver ingots?"_
Bless the Storm Silver Ingots |q 51568/2 |goto 41.86,30.04
step
Follow the path |goto 42.72,29.34 < 10 |only if walking
Continue up the path |goto 43.74,27.31 < 10 |only if walking
Continue up the path |goto 44.58,28.17 < 10 |only if walking
Continue up the path |goto 45.94,28.19 < 10 |only if walking
Continue up the path |goto 45.91,26.40 10 |only if walking
Continue up the path |goto 44.49,25.37 < 10 |only if walking
Continue up the path |goto 43.57,23.65 < 10 |only if walking
Continue up the path |goto 43.05,22.37 < 10 |only if walking
talk Dagin##129163
Fly to Boralus Harbor |goto Boralus/0 67.10,15.08 < 200 |q 51568 |c |noway
step
Follow the path |goto 68.11,15.61 < 10 |only if walking
Continue following the path |goto 70.61,16.51 < 10 |only if walking
Continue following the path |goto 71.42,14.87 < 10 |only if walking
Continue following the path |goto 74.61,10.20 < 10 |only if walking
talk Myra Cabot##136091
turnin A Need For Coal##48752 |goto 75.22,7.56
turnin Ritualistic Preparations##51568 |goto 75.22,7.56
step
Follow the road |goto 74.53,10.80 < 10 |only if walking
Continue following the road |goto 72.12,11.02 < 7 |only if walking
Continue following the road |goto 70.76,13.27 < 7 |only if walking
Continue following the road |goto 71.35,15.18 < 7 |only if walking
Continue following the road |goto 70.21,16.51 7 |only if walking
talk Joan Weber##124725 |goto 66.97,15.00
Fly to Millstone Hamlet |goto Stormsong Valley/0 30.82,66.55 < 200 |q 48764 |future |c |noway
step
map Stormsong Valley/0
path follow smart; loop on; ants curved; dist 20
path	72.75,65.64	73.49,68.74	72.43,73.58	71.16,72.66	70.21,71.78
path	69.66,72.11	69.75,73.46	68.77,75.11	68.48,76.96	67.36,77.43
path	66.41,76.44	65.18,76.96	63.64,75.77	61.94,76.88	60.41,76.91
path	60.24,75.35	58.68,75.55	58.05,76.22	56.49,76.79	54.78,74.97
path	53.32,75.77	52.49,76.26	51.06,76.57	50.27,75.41	49.45,74.99
path	48.73,74.57	48.12,72.12	47.90,70.35	47.34,71.31	46.53,72.85
path	45.84,72.58	44.89,72.13	43.94,72.32	42.48,73.73	41.20,73.06
path	41.97,72.57	42.36,72.30	42.96,71.84	43.50,71.07	42.74,68.93
path	42.35,66.92	41.35,66.51	40.15,66.30	39.35,66.18	38.65,65.20
path	37.64,65.67	35.95,66.70	34.02,67.76	33.28,69.58	32.69,70.87
path	31.54,71.48	31.43,73.40	30.50,75.11	29.26,75.62	27.97,76.40
path	26.84,76.46	26.09,75.71	25.83,75.24	25.33,73.64	26.73,73.24
path	27.07,72.29	26.83,70.19	28.31,68.70	28.87,67.37	29.39,65.53
path	29.28,63.58	30.37,61.43	32.41,60.80	34.59,60.11	36.20,60.50
path	38.05,59.37	39.72,60.59	40.73,61.84	42.38,62.04	43.94,62.33
path	45.05,61.34	46.43,60.93	47.56,61.92	47.66,63.27	47.20,63.94
path	46.79,64.36	47.42,65.26	48.20,65.35	49.07,65.49	49.76,65.51
path	50.85,65.76	51.99,66.56	53.42,69.29	55.17,71.38	56.73,73.48
path	58.19,72.11	58.93,72.79	60.41,72.63	61.92,73.01	62.80,71.42
path	63.75,70.57	65.44,69.22	66.17,69.37	67.28,70.41	67.83,70.27
path	69.27,67.37	70.71,67.08
click Storm Silver Deposit##276617
click Monelite Seam##276619
click Platinum Deposit##276618
|tip Track them on your minimap with "Find Minerals".
|tip Enter caves along the path for additional nodes.
Reach Level 100 Kul Tiran Mining |skill Kul Tiran Mining,100
step
Leave the building |goto Boralus/0 75.13,23.09 < 3 |walk
Follow the path |goto Boralus/0 73.39,14.58 < 7 |only if walking
Continue following the path |goto 71.27,14.65 < 10 |only if walking
Continue following the path |goto 70.80,12.19 < 10 |only if walking
Continue following the path |goto 74.57,10.27 < 10 |only if walking
talk Myra Cabot##136091
accept Don't Pick a Fight##48764  |goto 75.23,7.56
step
Follow the road |goto 74.53,10.80 < 10 |only if walking
Continue following the road |goto 72.12,11.02 < 7 |only if walking
Continue following the road |goto 70.76,13.27 < 7 |only if walking
Continue following the road |goto 71.35,15.18 < 7 |only if walking
Continue following the road |goto 70.21,16.51 7 |only if walking
talk Joan Weber##124725 |goto 66.97,15.00
Fly to Millstone Hamlet |goto Stormsong Valley/0 30.82,66.55 < 200 |q 48764 |c |noway
step
Follow the road up |goto 31.34,68.03 < 10 |only if walking
Continue following the road |goto 32.06,68.47 < 10 |only if walking
Continue following the road |goto 33.41,69.87 < 10 |only if walking
Continue following the road |goto 34.26,70.30 < 10 |only if walking
Continue following the road |goto 35.07,70.40 < 10 |only if walking
Continue following the path |goto 36.08,71.36 < 10 |only if walking
click Myra's Favorite Pick##291260
|tip It looks like a pick axe laying against a cart.
collect Myra's Favorite Pick##160904 |q 48764/1 |goto 36.67,72.00
step
Follow the path |goto 36.08,71.36 < 10 |only if walking
Follow the road down |goto 35.07,70.40 < 10 |only if walking
Continue following the road |goto 34.26,70.30 < 10 |only if walking
Continue following the road |goto 33.41,69.87 < 10 |only if walking
Continue following the road |goto 32.06,68.47 < 10 |only if walking
Continue following the road |goto 31.34,68.03 < 10 |only if walking
talk Alexa Davenport##138180 |goto 30.75,66.57
Fly to Tradewinds Market, Tirigarde Sound |goto Boralus/0 67.10,15.08 |q 48764 |c
step
Follow the road |goto 68.14,15.64 < 7 |only if walking
Continue following the road |goto 70.81,16.40 < 10 |only if walking
Continue following the road |goto 71.35,14.77 < 10 |only if walking
Continue following the road |goto 70.93,12.39 < 10 |only if walking
Continue following the road |goto 74.60,10.14 < 7 |only if walking
talk Myra Cabot##136091
turnin Don't Pick a Fight##48764 |goto 75.22,7.55
step
Follow the road |goto 74.53,10.80 < 10 |only if walking
Continue following the road |goto 72.12,11.02 < 7 |only if walking
Continue following the road |goto 70.76,13.27 < 7 |only if walking
Continue following the road |goto 71.35,15.18 < 7 |only if walking
Continue following the road |goto 70.21,16.51 7 |only if walking
talk Joan Weber##124725 |goto 66.97,15.00
Fly to Millstone Hamlet |goto Stormsong Valley/0 30.82,66.55 < 200 |q 48768 |future |c |noway
step
map Stormsong Valley/0
path follow smart; loop on; ants curved; dist 20
path	72.75,65.64	73.49,68.74	72.43,73.58	71.16,72.66	70.21,71.78
path	69.66,72.11	69.75,73.46	68.77,75.11	68.48,76.96	67.36,77.43
path	66.41,76.44	65.18,76.96	63.64,75.77	61.94,76.88	60.41,76.91
path	60.24,75.35	58.68,75.55	58.05,76.22	56.49,76.79	54.78,74.97
path	53.32,75.77	52.49,76.26	51.06,76.57	50.27,75.41	49.45,74.99
path	48.73,74.57	48.12,72.12	47.90,70.35	47.34,71.31	46.53,72.85
path	45.84,72.58	44.89,72.13	43.94,72.32	42.48,73.73	41.20,73.06
path	41.97,72.57	42.36,72.30	42.96,71.84	43.50,71.07	42.74,68.93
path	42.35,66.92	41.35,66.51	40.15,66.30	39.35,66.18	38.65,65.20
path	37.64,65.67	35.95,66.70	34.02,67.76	33.28,69.58	32.69,70.87
path	31.54,71.48	31.43,73.40	30.50,75.11	29.26,75.62	27.97,76.40
path	26.84,76.46	26.09,75.71	25.83,75.24	25.33,73.64	26.73,73.24
path	27.07,72.29	26.83,70.19	28.31,68.70	28.87,67.37	29.39,65.53
path	29.28,63.58	30.37,61.43	32.41,60.80	34.59,60.11	36.20,60.50
path	38.05,59.37	39.72,60.59	40.73,61.84	42.38,62.04	43.94,62.33
path	45.05,61.34	46.43,60.93	47.56,61.92	47.66,63.27	47.20,63.94
path	46.79,64.36	47.42,65.26	48.20,65.35	49.07,65.49	49.76,65.51
path	50.85,65.76	51.99,66.56	53.42,69.29	55.17,71.38	56.73,73.48
path	58.19,72.11	58.93,72.79	60.41,72.63	61.92,73.01	62.80,71.42
path	63.75,70.57	65.44,69.22	66.17,69.37	67.28,70.41	67.83,70.27
path	69.27,67.37	70.71,67.08
click Storm Silver Deposit##276617
click Monelite Seam##276619
click Platinum Deposit##276618
|tip Track them on your minimap with "Find Minerals".
|tip Enter caves along the path for additional nodes.
Reach Level 135 Kul Tiran Mining |skill Kul Tiran Mining,135
step
Leave the building |goto Boralus/0 75.13,23.09 < 3 |walk
Follow the path |goto Boralus/0 73.39,14.58 < 7 |only if walking
Continue following the path |goto 71.27,14.65 < 10 |only if walking
Continue following the path |goto 70.80,12.19 < 10 |only if walking
Continue following the path |goto 74.57,10.27 < 10 |only if walking
talk Myra Cabot##136091
accept Three Sheets to the Wind##48770 |goto 75.23,7.54
step
Follow the road |goto 74.96,10.72 < 10 |only if walking
Continue following the road |goto 76.84,14.16 < 10 |only if walking
Continue following the road |goto 74.95,15.85 < 10 |only if walking
Enter the building |goto 74.87,14.41 < 3 |walk
talk Harold Atkey##123639
buy Brennadam Apple Brandy##159845 |q 48770 |goto 75.39,14.47
step
Leave the building |goto 74.86,14.40 < 3 |walk
Run down the stairs |goto 74.98,17.37 < 5 |only if walking
Continue down the stairs |goto 74.50,17.83 < 5 |only if walking
Jump down here |goto 74.53,21.68 < 5 |only if walking
Follow the path |goto 74.20,23.43 < 7 |only if walking
talk Franklin The Drunk##139375
Choose _"Offer Brennadam Apple Brandy"
Give Franklin The Drunk his favorite drink |q 48770/1 |goto 75.82,23.69
step
talk Franklin The Drunk##139375
turnin Three Sheets to the Wind##48770 |goto 75.82,23.69
step
Follow the path |goto 74.20,23.23 < 7 |only if walking
Run up the stairs |goto 73.74,21.68 < 5 |only if walking
Continue following the path |goto 73.75,23.02 < 5 |only if walking
Continue up the stairs |goto 74.92,23.03 < 5 |only if walking
Continue following the path |goto 75.84,22.96 < 5 |only if walking
Continue following the road |goto 75.77,20.37 < 10 |only if walking
Continue following the road |goto 73.76,18.44 < 10 |only if walking
Continue up the stairs |goto 71.43,17.86 < 5 |only if walking
Continue up the stairs |goto 71.70,16.81 < 5 |only if walking
Continue following the path |goto 70.99,16.17 < 7 |only if walking
talk Joan Weber##124725 |goto 66.97,15.00
Fly to Millstone Hamlet |goto Stormsong Valley/0 30.82,66.55 < 200 |q 51889 |future |c
stickystart "Accept_Seams_Familiar"
step
map Stormsong Valley/0
path follow smart; loop on; ants curved; dist 20
path	72.75,65.64	73.49,68.74	72.43,73.58	71.16,72.66	70.21,71.78
path	69.66,72.11	69.75,73.46	68.77,75.11	68.48,76.96	67.36,77.43
path	66.41,76.44	65.18,76.96	63.64,75.77	61.94,76.88	60.41,76.91
path	60.24,75.35	58.68,75.55	58.05,76.22	56.49,76.79	54.78,74.97
path	53.32,75.77	52.49,76.26	51.06,76.57	50.27,75.41	49.45,74.99
path	48.73,74.57	48.12,72.12	47.90,70.35	47.34,71.31	46.53,72.85
path	45.84,72.58	44.89,72.13	43.94,72.32	42.48,73.73	41.20,73.06
path	41.97,72.57	42.36,72.30	42.96,71.84	43.50,71.07	42.74,68.93
path	42.35,66.92	41.35,66.51	40.15,66.30	39.35,66.18	38.65,65.20
path	37.64,65.67	35.95,66.70	34.02,67.76	33.28,69.58	32.69,70.87
path	31.54,71.48	31.43,73.40	30.50,75.11	29.26,75.62	27.97,76.40
path	26.84,76.46	26.09,75.71	25.83,75.24	25.33,73.64	26.73,73.24
path	27.07,72.29	26.83,70.19	28.31,68.70	28.87,67.37	29.39,65.53
path	29.28,63.58	30.37,61.43	32.41,60.80	34.59,60.11	36.20,60.50
path	38.05,59.37	39.72,60.59	40.73,61.84	42.38,62.04	43.94,62.33
path	45.05,61.34	46.43,60.93	47.56,61.92	47.66,63.27	47.20,63.94
path	46.79,64.36	47.42,65.26	48.20,65.35	49.07,65.49	49.76,65.51
path	50.85,65.76	51.99,66.56	53.42,69.29	55.17,71.38	56.73,73.48
path	58.19,72.11	58.93,72.79	60.41,72.63	61.92,73.01	62.80,71.42
path	63.75,70.57	65.44,69.22	66.17,69.37	67.28,70.41	67.83,70.27
path	69.27,67.37	70.71,67.08
click Storm Silver Deposit##276617
click Monelite Seam##276619
click Platinum Deposit##276618
click Monelite Seam##276619
|tip Track them on your minimap with "Find Minerals".
|tip Enter caves along the path for additional nodes.
Reach Level 150 Kul Tiran Mining |skill Kul Tiran Mining,150
step
label "Accept_Seams_Familiar"
map Stormsong Valley/0
path follow smart; loop on; ants curved; dist 20
path	72.75,65.64	73.49,68.74	72.43,73.58	71.16,72.66	70.21,71.78
path	69.66,72.11	69.75,73.46	68.77,75.11	68.48,76.96	67.36,77.43
path	66.41,76.44	65.18,76.96	63.64,75.77	61.94,76.88	60.41,76.91
path	60.24,75.35	58.68,75.55	58.05,76.22	56.49,76.79	54.78,74.97
path	53.32,75.77	52.49,76.26	51.06,76.57	50.27,75.41	49.45,74.99
path	48.73,74.57	48.12,72.12	47.90,70.35	47.34,71.31	46.53,72.85
path	45.84,72.58	44.89,72.13	43.94,72.32	42.48,73.73	41.20,73.06
path	41.97,72.57	42.36,72.30	42.96,71.84	43.50,71.07	42.74,68.93
path	42.35,66.92	41.35,66.51	40.15,66.30	39.35,66.18	38.65,65.20
path	37.64,65.67	35.95,66.70	34.02,67.76	33.28,69.58	32.69,70.87
path	31.54,71.48	31.43,73.40	30.50,75.11	29.26,75.62	27.97,76.40
path	26.84,76.46	26.09,75.71	25.83,75.24	25.33,73.64	26.73,73.24
path	27.07,72.29	26.83,70.19	28.31,68.70	28.87,67.37	29.39,65.53
path	29.28,63.58	30.37,61.43	32.41,60.80	34.59,60.11	36.20,60.50
path	38.05,59.37	39.72,60.59	40.73,61.84	42.38,62.04	43.94,62.33
path	45.05,61.34	46.43,60.93	47.56,61.92	47.66,63.27	47.20,63.94
path	46.79,64.36	47.42,65.26	48.20,65.35	49.07,65.49	49.76,65.51
path	50.85,65.76	51.99,66.56	53.42,69.29	55.17,71.38	56.73,73.48
path	58.19,72.11	58.93,72.79	60.41,72.63	61.92,73.01	62.80,71.42
path	63.75,70.57	65.44,69.22	66.17,69.37	67.28,70.41	67.83,70.27
path	69.27,67.37	70.71,67.08
click Monelite Seam##276619
|tip Track them on your minimap with "Find Minerals".
|tip These are only found in caves.
|tip They are sparse throughout the area.
accept Seams Familiar##48767
|tip You will eventually automatically accept this quest after mining Monelite Seams.
step
Leave the building |goto Boralus/0 73.52,13.73 < 3 |walk
Follow the path |goto 73.40,14.87 < 5 |only if walking
Follow the road |goto 75.69,15.52 < 7 |only if walking
Continue following the road |goto 76.66,13.93 < 7 |only if walking
Continue following the road |goto 74.81,10.07 < 7 |only if walking
talk Myra Cabot##136091
turnin Seams Familiar##48767 |goto 75.23,7.55
accept Spiderphobia##48761 |goto 75.23,7.55
accept Brined Justice##48768 |goto 75.23,7.55
stickystart "Kill_Enthralled_Mossfang"
step
Follow the path |goto 72.48,7.20 < 7 |only if walking
Continue following the path |goto 71.98,4.43 < 7 |only if walking
Continue up the path |goto 73.27,1.64 < 7 |only if walking
Continue up the path |goto Tiragarde Sound/0 74.64,19.08 < 7 |only if walking
Continue down the path |goto 74.25,17.80 < 7 |only if walking
Jump down here |goto 73.40,17.14 < 7 |only if walking
kill 15 Mossfang Egg##129842 |q 48761/2 |goto 71.94,17.40
step
label "Kill_Enthralled_Mossfang"
kill 8 Enthralled Mossfang##129626 |q 48761/1 |goto 71.71,17.56
step
Follow the path up |goto 71.28,18.90 < 10 |only if walking
Continue up the path |goto 71.81,19.52 < 7 |only if walking
Continue up the path |goto 72.59,19.35 < 7 |only if walking
Continue up the path |goto 72.81,19.74 < 7 |only if walking
Jump down here |goto 73.96,20.90 < 7 |only if walking
Follow the road |goto Boralus/0 70.55,6.00 < 7 |only if walking
Continue following the road |goto 71.57,6.45 < 7 |only if walking
Continue following the road |goto 72.86,7.31 < 7 |only if walking
talk Myra Cabot##136091
turnin Spiderphobia##48761 |goto 75.23,7.56
step
Follow the path |goto 74.49,10.61 < 7 |only if walking
Continue following the road |goto 71.61,11.23 < 10 |only if walking
Continue following the road |goto 70.69,13.29 < 10 |only if walking
Continue following the road |goto 71.48,15.37 < 7 |only if walking
Continue following the road |goto 69.98,16.47 < 7 |only if walking
talk Joan Weber##124725 |goto 66.96,15.01
Fly to Freehold, Tiragarde Sound |goto Tiragarde Sound/0 77.08,82.91 < 200 |q 48768 |c
step
Jump down here |goto 76.91,83.56 < 5 |only if walking
kill Ookin Crewman##129140
Kill enemies around this area
collect Stolen Storm Silver Bar##160453 |q 48768/1 |goto 76.61,83.26
You can find more around [75.42,83.13]
step
Run up the stairs |goto 76.79,83.61 < 5 |only if walking
Enter the building |goto 77.00,83.56 < 3 |walk
Run up the stairs |goto 77.07,83.41 < 3 |walk
Run up the stairs |goto 77.06,83.24 < 3 |walk
Leave the building |goto 76.94,83.25 < 3 |walk
Continue following the path |goto 76.86,83.35 < 5 |only if walking
Continue up the stairs |goto 76.94,83.51 < 3 |only if walking
Continue up the stairs |goto 77.09,83.48 < 3 |only if walking
talk Rodrigo##129098 |goto 77.04,82.90
Fly to Tradewinds Market, Tirigarde Sound |goto Boralus/0 67.10,15.08 |q 48768 |c
step
Follow the road |goto Boralus/0 68.08,15.57 < 7 |only if walking
Continue following the road |goto 70.91,16.35 < 7 |only if walking
Continue following the road |goto 71.36,14.67 < 7 |only if walking
Continue following the road |goto 70.87,12.47 < 7 |only if walking
Continue following the road |goto 74.69,9.99 < 7 |only if walking
talk Myra Cabot##136091
turnin Brined Justice##48768 |goto 75.23,7.55
step
Follow the road |goto 74.96,10.72 < 10 |only if walking
Continue following the road |goto 76.84,14.16 < 10 |only if walking
Continue following the road |goto 74.95,15.85 < 10 |only if walking
Run down the stairs |goto 74.98,17.37 < 5 |only if walking
Continue down the stairs |goto 74.50,17.83 < 5 |only if walking
Jump down here |goto 74.53,21.68 < 5 |only if walking
Follow the path |goto 74.20,23.43 < 7 |only if walking
talk Franklin The Drunk##139375
accept The Wrath of Grapes##51889 |goto 75.83,23.66
step
Follow the path |goto 74.21,23.22 < 7 |only if walking
Continue following the path |goto 74.12,21.43 < 3
Run up the stairs |goto 73.74,21.65 < 3 |only if walking
Continue following the path |goto 73.76,22.99 < 5 |only if walking
Run up the stairs |goto 74.91,22.97 < 5 |only if walking
Continue following the path |goto 75.83,22.95 < 7 |only if walking
Continue following the path |goto 75.72,20.97 < 7 |only if walking
Run up the stairs |goto 74.56,18.62 < 3 |only if walking
Continue up the stairs |goto 74.61,17.56 < 3 |only if walking
Continue following the path |goto 75.25,17.30 < 7 |only if walking
Enter the building |goto 73.52,13.74 < 5 |only if walking
click Jar of Pickle Juice
collect Jar of Pickle Juice##160995 |q 51889/1 |goto 74.03,12.80
step
Leave the building |goto 73.51,13.75 < 3 |only if walking
Follow the path |goto 73.37,14.51 < 7 |only if walking
Continue following the path |goto 71.24,14.52 < 7 |only if walking
click Hillock of Eggs
collect Hillock of Eggs##160998 |q 51889/4 |goto 69.38,13.03
step
click Mountain of Bacon
collect Mountain of Bacon##160996 |q 51889/2 |goto 70.49,9.70
step
click Pile of Sausages
collect Pile of Sausages##160997 |q 51889/3 |goto 72.54,11.66
step
Follow the road |goto 72.97,10.81 < 7 |only if walking
Continue following the road |goto 75.78,11.71 < 7 |only if walking
Continue following the road |goto 76.37,13.97 < 7 |only if walking
Run down the stairs |goto 75.00,17.40 < 3 |only if walking
Continue down the stairs |goto 74.54,17.80 < 3 |only if walking
Follow the path |goto 75.78,22.11 < 5 |only if walking
Run down the stairs |goto 75.65,22.96 < 3 |only if walking
Jump down here |goto 74.16,23.94 < 5 |only if walking
Follow the path |goto 74.28,23.34 < 7 |only if walking
talk Franklin The Drunk##139375
turnin The Wrath of Grapes##51889 |goto 75.82,23.68
step
Follow the path |goto 74.22,22.92 < 5 |only if walking
Run up the stairs |goto 73.78,21.52 < 3 |only if walking
Continue following the path |goto 73.78,22.93 < 5 |only if walking
Run up the stairs |goto 74.94,22.99 < 3 |only if walking
Continue following the path |goto 75.81,22.94 < 5 |only if walking
Follow the road |goto 74.52,18.97 < 5 |only if walking
Run up the stairs |goto 71.44,17.82 < 3 |only if walking
Continue up the stairs |goto 71.64,16.77 < 3 |only if walking
Follow the road |goto 71.06,16.24 < 5 |only if walking
talk Joan Weber##124725 |goto 66.97,15.00
Fly to Millstone Hamlet |goto Stormsong Valley/0 30.82,66.55 < 200 |q 52049 |future |c
step
map Stormsong Valley/0
path follow smart; loop on; ants curved; dist 20
path	72.75,65.64	73.49,68.74	72.43,73.58	71.16,72.66	70.21,71.78
path	69.66,72.11	69.75,73.46	68.77,75.11	68.48,76.96	67.36,77.43
path	66.41,76.44	65.18,76.96	63.64,75.77	61.94,76.88	60.41,76.91
path	60.24,75.35	58.68,75.55	58.05,76.22	56.49,76.79	54.78,74.97
path	53.32,75.77	52.49,76.26	51.06,76.57	50.27,75.41	49.45,74.99
path	48.73,74.57	48.12,72.12	47.90,70.35	47.34,71.31	46.53,72.85
path	45.84,72.58	44.89,72.13	43.94,72.32	42.48,73.73	41.20,73.06
path	41.97,72.57	42.36,72.30	42.96,71.84	43.50,71.07	42.74,68.93
path	42.35,66.92	41.35,66.51	40.15,66.30	39.35,66.18	38.65,65.20
path	37.64,65.67	35.95,66.70	34.02,67.76	33.28,69.58	32.69,70.87
path	31.54,71.48	31.43,73.40	30.50,75.11	29.26,75.62	27.97,76.40
path	26.84,76.46	26.09,75.71	25.83,75.24	25.33,73.64	26.73,73.24
path	27.07,72.29	26.83,70.19	28.31,68.70	28.87,67.37	29.39,65.53
path	29.28,63.58	30.37,61.43	32.41,60.80	34.59,60.11	36.20,60.50
path	38.05,59.37	39.72,60.59	40.73,61.84	42.38,62.04	43.94,62.33
path	45.05,61.34	46.43,60.93	47.56,61.92	47.66,63.27	47.20,63.94
path	46.79,64.36	47.42,65.26	48.20,65.35	49.07,65.49	49.76,65.51
path	50.85,65.76	51.99,66.56	53.42,69.29	55.17,71.38	56.73,73.48
path	58.19,72.11	58.93,72.79	60.41,72.63	61.92,73.01	62.80,71.42
path	63.75,70.57	65.44,69.22	66.17,69.37	67.28,70.41	67.83,70.27
path	69.27,67.37	70.71,67.08
click Platinum Deposit##276618
click Rich Platinum Deposit##276623
|tip Track them on your minimap with "Find Minerals".
|tip Enter caves along the path for additional nodes.
|tip Platinum Deposits are rare and share a spawn with other ore around this path.
accept An Exceptional Platinum Shard##52044
|tip You will eventually automatically accept this quest after mining from Platinum Deposits.
step
Leave the building |goto Boralus/0 73.52,13.71 < 3 |only if walking
Follow the road |goto 73.52,14.88 < 7 |only if walking
Continue following the road |goto 75.62,15.45 < 7 |only if walking
Continue following the road |goto 76.45,13.21 < 7 |only if walking
Continue following the road |goto 74.86,10.33 < 7 |only if walking
talk Myra Cabot##136091
turnin An Exceptional Platinum Shard##52044 |goto 75.22,7.56
step
Follow the road |goto 74.53,10.80 < 10 |only if walking
Continue following the road |goto 72.12,11.02 < 7 |only if walking
Continue following the road |goto 70.76,13.27 < 7 |only if walking
Continue following the road |goto 71.35,15.18 < 7 |only if walking
Continue following the road |goto 70.21,16.51 7 |only if walking
talk Joan Weber##124725 |goto 66.97,15.00
Fly to Millstone Hamlet |goto Stormsong Valley/0 30.82,66.55 < 200 |q 52050 |future |c |noway
step
map Stormsong Valley/0
path follow smart; loop on; ants curved; dist 20
path	72.75,65.64	73.49,68.74	72.43,73.58	71.16,72.66	70.21,71.78
path	69.66,72.11	69.75,73.46	68.77,75.11	68.48,76.96	67.36,77.43
path	66.41,76.44	65.18,76.96	63.64,75.77	61.94,76.88	60.41,76.91
path	60.24,75.35	58.68,75.55	58.05,76.22	56.49,76.79	54.78,74.97
path	53.32,75.77	52.49,76.26	51.06,76.57	50.27,75.41	49.45,74.99
path	48.73,74.57	48.12,72.12	47.90,70.35	47.34,71.31	46.53,72.85
path	45.84,72.58	44.89,72.13	43.94,72.32	42.48,73.73	41.20,73.06
path	41.97,72.57	42.36,72.30	42.96,71.84	43.50,71.07	42.74,68.93
path	42.35,66.92	41.35,66.51	40.15,66.30	39.35,66.18	38.65,65.20
path	37.64,65.67	35.95,66.70	34.02,67.76	33.28,69.58	32.69,70.87
path	31.54,71.48	31.43,73.40	30.50,75.11	29.26,75.62	27.97,76.40
path	26.84,76.46	26.09,75.71	25.83,75.24	25.33,73.64	26.73,73.24
path	27.07,72.29	26.83,70.19	28.31,68.70	28.87,67.37	29.39,65.53
path	29.28,63.58	30.37,61.43	32.41,60.80	34.59,60.11	36.20,60.50
path	38.05,59.37	39.72,60.59	40.73,61.84	42.38,62.04	43.94,62.33
path	45.05,61.34	46.43,60.93	47.56,61.92	47.66,63.27	47.20,63.94
path	46.79,64.36	47.42,65.26	48.20,65.35	49.07,65.49	49.76,65.51
path	50.85,65.76	51.99,66.56	53.42,69.29	55.17,71.38	56.73,73.48
path	58.19,72.11	58.93,72.79	60.41,72.63	61.92,73.01	62.80,71.42
path	63.75,70.57	65.44,69.22	66.17,69.37	67.28,70.41	67.83,70.27
path	69.27,67.37	70.71,67.08
click Platinum Deposit##276618
click Rich Platinum Deposit##276623
|tip Track them on your minimap with "Find Minerals".
|tip Enter caves along the path for additional nodes.
|tip Platinum Deposits are rare and share a spawn with other ore around this path.
collect Tattered Map##161085
accept X Marks the Plat!##52049
|tip You will eventually automatically accept this quest after mining from Platinum Deposits.
step
Leave the building |goto Boralus/0 73.52,13.68 < 3 |only if walking
Follow the road |goto 73.39,14.39 < 7 |only if walking
Continue following the road |goto 70.00,16.50 < 7 |only if walking
talk Joan Weber##124725 |goto 66.97,15.00
Fly to Anyport, Drustvar |goto Drustvar/0 19.82,44.57 < 500 |q 52049 |future |c |noway
step
talk First Mate Cinderfuse##139746
turnin X Marks the Plat!##52049 |goto Drustvar/0 19.82,44.57
accept A More Challenging Career##52050
step
Run up the stairs |goto Drustvar/0 19.82,43.78 < 3 |only if walking
Continue up the stairs |goto 19.50,43.93 < 3 |only if walking
Follow the path |goto 19.37,43.95 < 5 |only if walking
Run up the stairs |goto 19.26,43.34 < 3 |only if walking
Continue up the stairs |goto 19.06,43.64 < 3 |only if walking
Continue following the path |goto 19.24,43.64 5 |only if walking
Continue up the stairs |goto 19.25,43.46 < 5 |only if walking
talk Tan Lotuswind##135988 |goto Drustvar/0 19.14,43.31
Fly to Millstone Hamlet |goto Stormsong Valley/0 30.82,66.55 < 200 |q 52050 |c |noway
step
map Stormsong Valley/0
path follow smart; loop on; ants curved; dist 20
path	72.75,65.64	73.49,68.74	72.43,73.58	71.16,72.66	70.21,71.78
path	69.66,72.11	69.75,73.46	68.77,75.11	68.48,76.96	67.36,77.43
path	66.41,76.44	65.18,76.96	63.64,75.77	61.94,76.88	60.41,76.91
path	60.24,75.35	58.68,75.55	58.05,76.22	56.49,76.79	54.78,74.97
path	53.32,75.77	52.49,76.26	51.06,76.57	50.27,75.41	49.45,74.99
path	48.73,74.57	48.12,72.12	47.90,70.35	47.34,71.31	46.53,72.85
path	45.84,72.58	44.89,72.13	43.94,72.32	42.48,73.73	41.20,73.06
path	41.97,72.57	42.36,72.30	42.96,71.84	43.50,71.07	42.74,68.93
path	42.35,66.92	41.35,66.51	40.15,66.30	39.35,66.18	38.65,65.20
path	37.64,65.67	35.95,66.70	34.02,67.76	33.28,69.58	32.69,70.87
path	31.54,71.48	31.43,73.40	30.50,75.11	29.26,75.62	27.97,76.40
path	26.84,76.46	26.09,75.71	25.83,75.24	25.33,73.64	26.73,73.24
path	27.07,72.29	26.83,70.19	28.31,68.70	28.87,67.37	29.39,65.53
path	29.28,63.58	30.37,61.43	32.41,60.80	34.59,60.11	36.20,60.50
path	38.05,59.37	39.72,60.59	40.73,61.84	42.38,62.04	43.94,62.33
path	45.05,61.34	46.43,60.93	47.56,61.92	47.66,63.27	47.20,63.94
path	46.79,64.36	47.42,65.26	48.20,65.35	49.07,65.49	49.76,65.51
path	50.85,65.76	51.99,66.56	53.42,69.29	55.17,71.38	56.73,73.48
path	58.19,72.11	58.93,72.79	60.41,72.63	61.92,73.01	62.80,71.42
path	63.75,70.57	65.44,69.22	66.17,69.37	67.28,70.41	67.83,70.27
path	69.27,67.37	70.71,67.08
click Platinum Deposit##276618
click Rich Platinum Deposit##276623
|tip Track them on your minimap with "Find Minerals".
|tip Enter caves along the path for additional nodes.
|tip Platinum Deposits are rare and share a spawn with other ore around this path.
collect 20 Platinum Nuggets##161082 |q 52050/1
step
Leave the building |goto Boralus/0 73.52,13.68 < 3 |only if walking
Follow the road |goto 73.39,14.39 < 7 |only if walking
Continue following the road |goto 70.00,16.50 < 7 |only if walking
talk Joan Weber##124725 |goto 66.97,15.00
Fly to Anyport, Drustvar |goto Drustvar/0 19.82,44.57 < 500 |q 52050 |future |c |noway
step
talk First Mate Cinderfuse##139746
turnin A More Challenging Career##52050
step
_Congratulations!_
You completed the Kul Tiran Mining questline.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Monelite",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Monelite for various Blacksmithing recipes.",
startlevel=10.0,
},[[
step
label "loop"
map Stormsong Valley/0
path follow smart; loop on; ants curved; dist 20
path	72.75,65.64	73.49,68.74	72.43,73.58	71.16,72.66	70.21,71.78
path	69.66,72.11	69.75,73.46	68.77,75.11	68.48,76.96	67.36,77.43
path	66.41,76.44	65.18,76.96	63.64,75.77	61.94,76.88	60.41,76.91
path	60.24,75.35	58.68,75.55	58.05,76.22	56.49,76.79	54.78,74.97
path	53.32,75.77	52.49,76.26	51.06,76.57	50.27,75.41	49.45,74.99
path	48.73,74.57	48.12,72.12	47.90,70.35	47.34,71.31	46.53,72.85
path	45.84,72.58	44.89,72.13	43.94,72.32	42.48,73.73	41.20,73.06
path	41.97,72.57	42.36,72.30	42.96,71.84	43.50,71.07	42.74,68.93
path	42.35,66.92	41.35,66.51	40.15,66.30	39.35,66.18	38.57,66.93
path	37.42,66.90	35.83,66.96	34.02,67.76	33.28,69.58	32.69,70.87
path	31.54,71.48	31.43,73.40	30.50,75.11	29.26,75.62	27.97,76.40
path	26.84,76.46	26.09,75.71	25.83,75.24	25.33,73.64	26.73,73.24
path	27.07,72.29	26.83,70.19	28.31,68.70	28.87,67.37	29.39,65.53
path	29.28,63.58	30.37,61.43	32.41,60.80	34.59,60.11	36.20,60.50
path	38.05,59.37	39.72,60.59	40.73,61.84	42.38,62.04	43.94,62.33
path	45.05,61.34	46.43,60.93	47.56,61.92	47.66,63.27	47.20,63.94
path	46.79,64.36	47.42,65.26	48.20,65.35	49.07,65.49	49.76,65.51
path	50.85,65.76	51.99,66.56	53.42,69.29	55.17,71.38	56.73,73.48
path	58.19,72.11	58.93,72.79	60.41,72.63	61.92,73.01	62.80,71.42
path	63.75,70.57	65.44,69.22	66.17,69.37	67.28,70.41	67.83,70.27
path	69.27,67.37	70.71,67.08
click Monelite Seam##276619
|tip Track them on your minimap with "Find Minerals".
|tip Enter caves along the path for additional nodes.
collect Monelite Ore##152512 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Osmenite Ore",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Osmenite Ore for various Blacksmithing recipes.",
startlevel=10.0,
},[[
step
map Nazjatar/0
path follow smart; loop on; ants curved; dist 30
path	28.83,39.87	31.51,43.22	29.32,45.41	29.55,47.18	31.92,48.81
path	33.70,48.29	34.82,47.79	37.36,47.10	37.81,45.15	36.82,42.03
path	36.63,38.28	35.96,34.45	35.69,33.11	37.23,33.20	37.60,35.48
path	37.92,38.06	39.01,40.23	38.83,41.72	39.71,43.92	41.15,45.25
path	42.13,43.71	42.23,39.91	43.01,38.07	44.32,37.34	44.75,34.35
path	45.00,31.47	44.62,28.04	45.72,26.65	44.26,22.47	43.50,19.61
path	41.56,13.40	40.57,12.20	39.30,14.85	39.56,17.37	39.51,21.66
path	38.09,22.88	39.11,25.13	36.66,30.97	34.90,32.15	34.79,29.16
path	33.41,28.70	31.62,30.47	30.07,30.61	29.06,31.10	27.79,29.29
path	25.92,30.83	26.63,32.10	27.99,33.03	28.34,35.43
click Osmenite Deposit##325875+
click Rich Osmenite Deposit##325873+
click Osmenite Seam##325874+
|tip Track them on your minimap with "Find Minerals".
|tip Enter caves along the path for additional nodes.
collect Osmenite Ore##168185 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Platinum Ore",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Platinum for various Blacksmithing recipes.",
startlevel=10.0,
},[[
step
label "loop"
map Stormsong Valley/0
path follow smart; loop on; ants curved; dist 20
path	72.75,65.64	73.49,68.74	72.43,73.58	71.16,72.66	70.21,71.78
path	69.66,72.11	69.75,73.46	68.77,75.11	68.48,76.96	67.36,77.43
path	66.41,76.44	65.18,76.96	63.64,75.77	61.94,76.88	60.41,76.91
path	60.24,75.35	58.68,75.55	58.05,76.22	56.49,76.79	54.78,74.97
path	53.32,75.77	52.49,76.26	51.06,76.57	50.27,75.41	49.45,74.99
path	48.73,74.57	48.12,72.12	47.90,70.35	47.34,71.31	46.53,72.85
path	45.84,72.58	44.89,72.13	43.94,72.32	42.48,73.73	41.20,73.06
path	41.97,72.57	42.36,72.30	42.96,71.84	43.50,71.07	42.74,68.93
path	42.35,66.92	41.35,66.51	40.15,66.30	39.35,66.18	38.57,66.93
path	37.42,66.90	35.83,66.96	34.02,67.76	33.28,69.58	32.69,70.87
path	31.54,71.48	31.43,73.40	30.50,75.11	29.26,75.62	27.97,76.40
path	26.84,76.46	26.09,75.71	25.83,75.24	25.33,73.64	26.73,73.24
path	27.07,72.29	26.83,70.19	28.31,68.70	28.87,67.37	29.39,65.53
path	29.28,63.58	30.37,61.43	32.41,60.80	34.59,60.11	36.20,60.50
path	38.05,59.37	39.72,60.59	40.73,61.84	42.38,62.04	43.94,62.33
path	45.05,61.34	46.43,60.93	47.56,61.92	47.66,63.27	47.20,63.94
path	46.79,64.36	47.42,65.26	48.20,65.35	49.07,65.49	49.76,65.51
path	50.85,65.76	51.99,66.56	53.42,69.29	55.17,71.38	56.73,73.48
path	58.19,72.11	58.93,72.79	60.41,72.63	61.92,73.01	62.80,71.42
path	63.75,70.57	65.44,69.22	66.17,69.37	67.28,70.41	67.83,70.27
path	69.27,67.37	70.71,67.08
click Platinum Deposit##276618
|tip Track them on your minimap with "Find Minerals".
|tip Enter caves along the path for additional nodes.
|tip These are rare spawn nodes, so you likely won't find them in bulk.
collect Platinum Ore##152513 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Storm Silver Ore",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Storm Silver for various Blacksmithing recipes.",
startlevel=10.0,
},[[
step
label "loop"
map Stormsong Valley/0
path follow smart; loop on; ants curved; dist 20
path	72.75,65.64	73.49,68.74	72.43,73.58	71.16,72.66	70.21,71.78
path	69.66,72.11	69.75,73.46	68.77,75.11	68.48,76.96	67.36,77.43
path	66.41,76.44	65.18,76.96	63.64,75.77	61.94,76.88	60.41,76.91
path	60.24,75.35	58.68,75.55	58.05,76.22	56.49,76.79	54.78,74.97
path	53.32,75.77	52.49,76.26	51.06,76.57	50.27,75.41	49.45,74.99
path	48.73,74.57	48.12,72.12	47.90,70.35	47.34,71.31	46.53,72.85
path	45.84,72.58	44.89,72.13	43.94,72.32	42.48,73.73	41.20,73.06
path	41.97,72.57	42.36,72.30	42.96,71.84	43.50,71.07	42.74,68.93
path	42.35,66.92	41.35,66.51	40.15,66.30	39.35,66.18	38.65,65.20
path	37.64,65.67	35.95,66.70	34.02,67.76	33.28,69.58	32.69,70.87
path	31.54,71.48	31.43,73.40	30.50,75.11	29.26,75.62	27.97,76.40
path	26.84,76.46	26.09,75.71	25.83,75.24	25.33,73.64	26.73,73.24
path	27.07,72.29	26.83,70.19	28.31,68.70	28.87,67.37	29.39,65.53
path	29.28,63.58	30.37,61.43	32.41,60.80	34.59,60.11	36.20,60.50
path	38.05,59.37	39.72,60.59	40.73,61.84	42.38,62.04	43.94,62.33
path	45.05,61.34	46.43,60.93	47.56,61.92	47.66,63.27	47.20,63.94
path	46.79,64.36	47.42,65.26	48.20,65.35	49.07,65.49	49.76,65.51
path	50.85,65.76	51.99,66.56	53.42,69.29	55.17,71.38	56.73,73.48
path	58.19,72.11	58.93,72.79	60.41,72.63	61.92,73.01	62.80,71.42
path	63.75,70.57	65.44,69.22	66.17,69.37	67.28,70.41	67.83,70.27
path	69.27,67.37	70.71,67.08
click Storm Silver Deposit##276617
|tip Track them on your minimap with "Find Minerals".
|tip Enter caves along the path for additional nodes.
collect Storm Silver Ore##152579 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Leveling Guides\\Kul Tiran Skinning 1-175",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Kul Tiran Skinning profession from 1-175.",
startlevel=5.0,
condition_end=function() return skill('Kul Tiran Skinning') >= 175 end,
condition_suggested=function() return skill('Kul Tiran Skinning') > 0 and skill('Kul Tiran Skinning') < 175 and level >= 5 end,
},[[
step
talk Camilla Darksky##136061
Train Kul Tiran Skinning |skillmax Kul Tiran Skinning,175 |goto Boralus/0 75.66,13.39
step
map Tiragarde Sound/0
path	follow smart; loop on; ants curved; dist 20
path	65.67,22.53	64.64,20.71	64.18,19.49	63.18,17.74	61.91,17.00
path	61.42,15.95	60.55,17.04	59.21,16.74	58.88,17.93	59.12,19.16
path	58.57,20.86	56.91,21.29	55.34,22.45	53.29,22.73	53.42,25.84
path	53.90,27.15	55.39,29.32	56.01,30.94	56.90,30.44	57.33,31.38
path	58.26,32.14	59.32,31.97	60.26,30.95	61.08,30.67	61.86,29.97
path	63.35,29.04	65.23,26.54	64.99,25.68	65.27,25.09	65.08,24.23
Kill enemies as you follow the path around this area
|tip Only Freshwater Snappers, Hillborn Saurolisks, Cragbound Foxes and Venomous Coilscales are skinnable.
|tip Loot and skin them.
Reach Level 175 Kul Tiran Skinning |skill Kul Tiran Skinning,175
step
_Congratulations!_
You Reached 175 Kul Tiran Skinning Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Quest Guides\\Kul Tiran Skinning Quest Guide",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the Kul Tiran Skinning quest line.",
startlevel=10.0,
condition_end=function() return skill('Kul Tiran Skinning') >= 150 end,
condition_suggested=function() return skill('Kul Tiran Skinning') > 0 and skill('Kul Tiran Skinning') < 150 and level >= 10 end,
},[[
step
talk Camilla Darksky##136061
Train Kul Tiran Skinning |skillmax Kul Tiran Skinning,175 |goto Boralus/0 75.66,13.39
step
talk Camilla Darksky##136061
Train Bone Gathering |learn Bone Gathering##257152 |goto 75.66,13.39
step
talk Camilla Darksky##136061
Train Leather Gathering |learn Leather Gathering##257146 |goto 75.66,13.39
step
talk Camilla Darksky##136061
Train Scale Gathering |learn Scale Gathering##257149 |goto 75.66,13.39
step
map Tiragarde Sound/0
path	follow smart; loop on; ants curved; dist 20
path	65.67,22.53	64.64,20.71	64.18,19.49	63.18,17.74	61.91,17.00
path	61.42,15.95	60.55,17.04	59.21,16.74	58.88,17.93	59.12,19.16
path	58.57,20.86	56.91,21.29	55.34,22.45	53.29,22.73	53.42,25.84
path	53.90,27.15	55.39,29.32	56.01,30.94	56.90,30.44	57.33,31.38
path	58.26,32.14	59.32,31.97	60.26,30.95	61.08,30.67	61.86,29.97
path	63.35,29.04	65.23,26.54	64.99,25.68	65.27,25.09	65.08,24.23
Kill enemies as you follow the path around this area
|tip Only Freshwater Snappers, Hillborn Saurolisks, Cragbound Foxes, and Venomous Coilscales are skinnable.
|tip Loot and skin them.
Reach Level 50 Kul Tiran Skinning |skill Kul Tiran Skinning,50
step
talk Camilla Darksky##136061
accept Brinepinch##52223 |goto Boralus/0 75.66,13.39
accept In Pursuit of Fashion##52225 |goto 75.66,13.39
accept Bone Needle##52227 |goto 75.66,13.39
step
Jump down here |goto Tiragarde Sound/0 54.06,28.80 < 15 |only if walking
Jump down here |goto 56.14,31.38 < 15 |only if walking
kill Brinepinch##140612
collect Brinepinch's "Head"##161423 |q 52223/1 |goto 56.35,34.58
stickystart "Collect_Pristine_Saurlisk_Skins"
step
kill Invasive Quillrat##125401+
collect Immaculate Quill##161427 |q 52227/1 |goto Drustvar/0 67.79,41.58
step
label "Collect_Pristine_Saurlisk_Skins"
kill Shallows Saurolisk##125452+
collect 3 Pristine Saurlisk Skin##161425 |q 52225/1 |goto 69.42,39.93
step
talk Camilla Darksky##136061
turnin Brinepinch##52223 |goto Boralus/0 75.66,13.39
turnin In Pursuit of Fashion##52225 |goto 75.66,13.39
turnin Bone Needle##52227 |goto 75.66,13.39
step
map Tiragarde Sound/0
path	follow smart; loop on; ants curved; dist 20
path	65.67,22.53	64.64,20.71	64.18,19.49	63.18,17.74	61.91,17.00
path	61.42,15.95	60.55,17.04	59.21,16.74	58.88,17.93	59.12,19.16
path	58.57,20.86	56.91,21.29	55.34,22.45	53.29,22.73	53.42,25.84
path	53.90,27.15	55.39,29.32	56.01,30.94	56.90,30.44	57.33,31.38
path	58.26,32.14	59.32,31.97	60.26,30.95	61.08,30.67	61.86,29.97
path	63.35,29.04	65.23,26.54	64.99,25.68	65.27,25.09	65.08,24.23
Kill enemies as you follow the path around this area
|tip Only Freshwater Snappers, Hillborn Saurolisks, Cragbound Foxes and Venomous Coilscales are skinnable.
|tip Loot and skin them.
Reach Level 150 Kul Tiran Skinning |skill Kul Tiran Skinning,175
step
talk Camilla Darksky##136061
accept Turtle Soup##52226 |goto Boralus/0 75.66,13.39
accept An Unbreakable Bone Needle##52228 |goto 75.66,13.39
step
kill Enriched Rockshell##130776+
collect 5 Sulphur Speckled Turtle Skin##161426 |q 52226/1 |goto Tiragarde Sound/0 66.82,56.37
step
kill Invasive Quillrat##125401+
|tip Loot and skin them.
|tip This item can be looted after skinning any creature in Zandalar or Kul Tiras.
accept Ivory Handled Dagger##52224 |goto Drustvar/0 67.76,41.56
|tip You will eventually automatically accept this quest after looting.
step
Press _I_ and Queue for Atal'Dazar or Enter the Dungeon with your Group |goto Atal'Dazar/0 0.00,0.00 < 1000 |q 52228
step
kill Rezan##143577
|tip It is the third boss of the Atal'Dazar dungeon.
collect Rezan's Bone Splinter##161429 |q 52228/1
step
kill Yazma##122968
|tip She is the last boss of the Atal'Dazar dungeon.
Slay Yazma |q 52228/2
step
talk Camilla Darksky##136061
turnin Ivory Handled Dagger##52224 |goto Boralus/0 75.66,13.39
turnin Turtle Soup##52226 |goto 75.66,13.39
turnin An Unbreakable Bone Needle##52228 |goto 75.66,13.39
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Blood-Stained Bone",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Blood-Stained Bone for various Leatherworking recipes.",
startlevel=10.0,
},[[
step
map Nazmir/0
path	follow smart; loop on; ants curved; dist 20
path	37.83,75.77	38.34,73.13	37.42,70.76	36.12,70.02	34.90,71.78
path	34.14,74.34	32.61,75.16	32.44,77.12	34.80,79.08	36.71,79.39
Kill enemies around this area
|tip Make sure you loot them so you can skin them after.
collect Blood-Stained Bone##154164 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Calcified Bone",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Calcified Bone for various Leatherworking recipes.",
startlevel=10.0,
},[[
step
map Nazmir/0
path	follow smart; loop on; ants curved; dist 20
path	37.83,75.77	38.34,73.13	37.42,70.76	36.12,70.02	34.90,71.78
path	34.14,74.34	32.61,75.16	32.44,77.12	34.80,79.08	36.71,79.39
Kill enemies around this area
|tip Make sure you loot them so you can skin them after.
collect Calcified Bone##154165 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Coarse Leather",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Coarse Leather for various Leatherworking recipes.",
startlevel=10.0,
},[[
step
map Stormsong Valley/0
path	follow smart; loop on; ants curved; dist 20
path	54.55,52.05	54.53,54.26	55.37,55.61	56.52,55.94	57.73,57.66
path	58.45,58.57	59.24,56.75	59.23,54.33	59.03,52.62	56.67,51.10
Kill Coldtooth enemies around this area
|tip Make sure you loot them so you can skin them after.
collect Coarse Leather##152541 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Dredged Leather",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Dredged Leather for various Leatherworking recipes.",
startlevel=10.0,
},[[
step
map Nazjatar/0
path follow smart; loop on; ants curved; dist 30
path	62.96,50.71	66.11,47.80	69.29,49.53	68.62,52.14	70.82,54.52
path	72.14,51.63	71.10,48.28	69.29,46.42	66.92,46.06	65.14,44.42
path	63.47,45.03	62.50,43.95	61.42,44.30	61.26,46.34
Kill enemies around this area
|tip Make sure you loot them so you can skin them after.
collect Dredged Leather##168649 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Mistscale",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Mistscale for various Leatherworking recipes.",
startlevel=10.0,
},[[
step
map Nazmir/0
path	follow smart; loop on; ants curved; dist 20
path	37.83,75.77	38.34,73.13	37.42,70.76	36.12,70.02	34.90,71.78
path	34.14,74.34	32.61,75.16	32.44,77.12	34.80,79.08	36.71,79.39
Kill enemies around this area
|tip Make sure you loot them so you can skin them after.
collect Mistscale##153051 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Shimmerscale",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Shimmerscale for various Leatherworking recipes.",
startlevel=10.0,
},[[
step
map Nazmir/0
path follow smart; loop on; ants curved; dist 20
path	37.83,75.77	38.34,73.13	37.42,70.76	36.12,70.02	34.90,71.78
path	34.14,74.34	32.61,75.16	32.44,77.12	34.80,79.08	36.71,79.39
Kill enemies around this area
|tip Make sure you loot them so you can skin them after.
collect Shimmerscale##153050 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Tempest Hide",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Tempest Hide for various Leatherworking recipes.",
startlevel=10.0,
},[[
step
map Stormsong Valley/0
path	follow smart; loop on; ants curved; dist 20
path	54.55,52.05	54.53,54.26	55.37,55.61	56.52,55.94	57.73,57.66
path	58.45,58.57	59.24,56.75	59.23,54.33	59.03,52.62	56.67,51.10
Kill Coldtooth enemies around this area
|tip Make sure you loot them so you can skin them after.
collect Tempest Hide##154722  |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Leveling Guides\\Kul Tiran Tailoring 1-175",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Kul Tiran Tailoring profession from 1-175.",
startlevel=5.0,
condition_end=function() return skill('Kul Tiran Tailoring') >= 175 end,
condition_suggested=function() return skill('Kul Tiran Tailoring') > 0 and skill('Kul Tiran Tailoring') < 175 and level >= 5 end,
},[[
step
talk Daniel Brineweaver##136071
Train Kul Tiran Tailoring |skillmax Kul Tiran Tailoring,175 |goto Boralus/0 76.93,11.16
step
talk Henrick Wyther##142095
buy 4615 Nylon Thread##159959 |goto 73.22,11.36
step
collect 2630 Tidespray Linen##152576
|tip Use the "Tidespray Linen" farming guides to accomplish this.
|tip You can also purchase them from the Auction House.
step
collect 655 Deep Sea Satin##152577
|tip Use the "Deep Sea Satin" farming guides to accomplish this.
|tip You can also purchase them from the Auction House.
step
Open Your Tailoring Crafting Panel:
_<Create 25 Tidespray Linen Bracers>_
Reach Level 25 Kul Tiran Tailoring |skill Kul Tiran Tailoring,25
step
talk Daniel Brineweaver##136071
Train Tidespray Linen Cloak |learn Tidespray Linen Cloak##257107 |goto 76.93,11.16
step
Open Your Tailoring Crafting Panel:
_<Create 25 Tidespray Linen Cloak>_
Reach Level 50 Kul Tiran Tailoring |skill Kul Tiran Tailoring,50
step
talk Daniel Brineweaver##136071
Train Deep Sea Bandage |learn Deep Sea Bandage##267202 |goto 76.93,11.16
step
Open Your Tailoring Crafting Panel:
_<Create 25 Deep Sea Bandage>_
Reach Level 75 Kul Tiran Tailoring |skill Kul Tiran Tailoring,75
step
talk Daniel Brineweaver##136071
Train Embroidered Deep Sea Satin |learn Embroidered Deep Sea Satin##272440 |goto 76.93,11.16
step
Open Your Tailoring Crafting Panel:
_<Create 25 Embroidered Deep Sea Satin>_
Reach Level 100 Kul Tiran Tailoring |skill Kul Tiran Tailoring,100
step
talk Daniel Brineweaver##136071
Train Battle Flag: Phalanx Defense (Rank 1) |learn Battle Flag: Phalanx Defense##257134 |goto 76.93,11.16
step
talk Daniel Brineweaver##136071
Train Battle Flag: Phalanx Defense (Rank 2) |learn Battle Flag: Phalanx Defense##257135 |goto 76.93,11.16
step
Open Your Tailoring Crafting Panel:
_<Create 555 Embroidered Deep Sea Satin>_
collect 580 Embroidered Deep Sea Satin##158378
step
Open Your Tailoring Crafting Panel:
_<Create 50 Battle Flag: Phalanx Defense>_
Reach Level 150 Kul Tiran Tailoring |skill Kul Tiran Tailoring,175
step
Reach Level 50 |ding 50
step
Complete the Quest "A Way Home" |complete completedq(54972)
|tip Use the "Nazjatar" leveling guide to accomplish this.
step
collect 1175 Gilded Seaweave##167738
|tip Farm them from Humanoid mobs in Nazjatar or purchase them from the Auction House.
step
collect 180 Dredged Leather##168649
|tip Skin them from Beast mobs in Nazjatar with Skinning or purchase them from the Auction House.
step
collect 5 Expulsom##152668
|tip These can be acquired from profession world quests and scrapping gear at the Scrap-O-Matic.
step
talk Instructor Alikana##153817
Train Seabreeze Saddle Blanket |learn Seabreeze Saddle Blanket##301403 |goto Nazjatar/0 38.01,53.59
step
Open Your Tailoring Crafting Panel:
_<Create 20 Seabreeze Saddle Blanket>_
Reach Level 162 Kul Tiran Tailoring |skill Kul Tiran Tailoring,162
step
talk Instructor Alikana##153817
Train Saddlechute |learn Saddlechute##301409 |goto 38.01,53.59
step
Open Your Tailoring Crafting Panel:
_<Create 12 Saddlechute>_
Reach Level 170 Kul Tiran Tailoring |skill Kul Tiran Tailoring,170
step
collect 6 Mark of Honor##137642
|tip You can get these from completing Battlegrounds and various PvP quests.
|tip You can also continue making the previous item, though it will take many casts.
step
talk Instructor Alikana##153817
Train Notorious Combatant's Satin Mittens (Rank 1) |learn Notorious Combatant's Satin Mittens##294835 |goto 38.01,53.59
step
talk Tomas Riogain##154653
|tip Inside the building.
buy 1 Recipe: Notorious Combatant's Satin Mittens##169580 |goto 38.11,55.37
buy 1 Recipe: Notorious Combatant's Satin Mittens##169581 |goto 38.11,55.37
step
use the Recipe: Notorious Combatant's Satin Mittens##169580
Train Notorious Combatant's Satin Mittens (Rank 2) |learn Notorious Combatant's Satin Mittens##294836
step
use the Recipe: Notorious Combatant's Satin Mittens##169581
Train Notorious Combatant's Satin Mittens (Rank 3) |learn Notorious Combatant's Satin Mittens##294837
step
Open Your Tailoring Crafting Panel:
_<Create 5 Notorious Combatant's Satin Mittens>_
Reach Level 175 Kul Tiran Tailoring |skill Kul Tiran Tailoring,175
step
_Congratulations!_
You Reached 175 Kul Tiran Tailoring Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Leveling Guides\\Tools of the Trade - Tailoring",{
author="support@zygorguides.com",
description="\nUpon completion of this guide, you will earn the Synchronous Thread. This grants you increased cloth drops "..
"from humanoid enemies.",
startlevel=50.0,
condition_end=function() return completedq(53881) end,
condition_suggested=function() return skill('Kul Tiran Tailoring') >= 150 and level >= 50 and not completedq(53881) end,
condition_visible=function() return skill('Kul Tiran Tailoring') >= 1 end,
},[[
step
Reach Level 150 Kul Tiran Tailoring |skill Kul Tiran Tailoring,175
|tip Use the "Kul Tiran Tailoring 1-150" profession guide to accomplish this.
step
talk Timeweaver Delormi##145022
accept A Friend in Needle##53805 |goto Boralus/0 76.73,11.75
step
collect 5 Tidespray Linen##152576 |q 53805/1
|tip Farm them from humanoid mobs or purchase them from the Auction House.
|tip Use the "Tidespray Linen" farming guide to accomplish this.
step
collect 5 Deep Sea Satin##152577 |q 53805/2
|tip Farm them from humanoid mobs or purchase them from the Auction House.
|tip Use the "Deep Sea Satin" farming guide to accomplish this.
step
talk Timeweaver Delormi##145022
turnin A Friend in Needle##53805 |goto 76.73,11.75
step
Watch the dialogue
talk Timeweaver Delormi##145022
accept A Stitch in Time##53807 |goto 76.73,11.75
step
Follow the path |goto 72.43,10.08 < 15 |only if walking
Watch the dialogue
Track Down a Tear in Time |q 53807/1 |goto 72.07,4.87
step
use Delormi's Synchronous Thread##167231
|tip Stand still until you finish channeling.
Repair the Zul'Farrak Time Rift |q 53807/2 |goto 72.80,8.70 |count 1
step
use Delormi's Synchronous Thread##167231
|tip Stand still until you finish channeling.
Repair the Gadgetzan Time Rift |q 53807/2 |goto 69.58,5.78 |count 2
step
use Delormi's Synchronous Thread##167231
|tip Stand still until you finish channeling.
Repair the Valley of Watchers Time Rift |q 53807/2 |goto 70.34,9.80 |count 3
step
use Delormi's Synchronous Thread##167231
|tip Stand still until you finish channeling.
Repair the Sandsorrow Watch Time Rift |q 53807/2 |goto 70.75,13.64 |count 4
step
_Next to you:_
talk Timeweaver Delormi##151137
turnin A Stitch in Time##53807
accept Tearing at the Seams##55177
step
_Next to you:_
talk Timeweaver Delormi##151137
Tell her _"I'm ready, Delormi."_
Speak with Delormi to Leave with Her |q 55177/1
step
Watch the dialogue
Teleport to Caverns of Time |goto Tanaris/18 62.11,54.13 |c |noway |q 55177
step
talk Timeweaver Delormi##151134
turnin Tearing at the Seams##55177 |goto 61.96,53.86
accept Rolling Up the Sleeves##53813 |goto 61.96,53.86
accept The Severed Thread##53810 |goto 61.96,53.86
stickystart "Kill_Chronal_Anomalies"
step
clicknpc Seamstress Delormi##145166
Investigate Seamstress Delormi |q 53810/1 |goto 60.04,53.42
step
clicknpc Delormi##145149
Investigate Delormi |q 53810/2 |goto 52.11,61.13
step
clicknpc Chronomancer Delormi##145151
Investigate Delormi |q 53810/3 |goto 42.81,63.93
step
label "Kill_Chronal_Anomalies"
kill 12 Chronal Anomaly##145902+ |q 53813/1 |goto 51.56,61.83
step
Watch the dialogue
talk Timeweaver Delormi##151134
turnin Rolling Up the Sleeves##53813 |goto 39.12,63.29
turnin The Severed Thread##53810 |goto 39.12,63.29
accept Step Into Her Shoes##53858 |goto 39.12,63.29
step
Enter the Time Rift |q 53858/1 |goto 39.06,63.75
step
Teleport to the Jeweled Estate |goto Suramar/0 63.63,68.69 |c |noway |q 53858
step
talk Timeweaver Delormi##151134
turnin Step Into Her Shoes##53858 |goto 63.77,68.84
accept If The Shoe Fits...##53866 |goto 63.77,68.84
step
kill Shade of Delormi##145135
Stop the Shade of Delormi |q 53866/1 |goto 64.09,69.41
step
Watch the dialogue
talk Timeweaver Delormi##151134
turnin If The Shoe Fits...##53866 |goto 64.16,69.53
accept Seam Stress##55214 |goto 64.16,69.53
step
Follow Delormi Through the Time Rift |q 55214/1 |goto 64.00,69.50
step
Teleport to Fate's End |goto Stormsong Valley/0 7.47,25.14 |c |noway |q 55214
step
click Delormi's Synchronous Thread##322771
collect Delormi's Synchronous Thread##167231 |q 55214/2 |goto 7.20,24.54
step
use Delormi's Synchronous Thread##167231
|tip Use it on the six Anomalous Time Rifts.
|tip Stand still until you finish channeling.
Mend the Time Rifts |q 55214/3 |goto 7.18,24.49
step
Watch the dialogue
talk Timeweaver Delormi##151134
turnin Seam Stress##55214 |goto 7.18,24.50
accept Saving Nine##53868 |goto 7.18,24.50
step
Enter the Time Rift |q 53868/1 |goto 7.08,24.75
step
Teleport to the Bronze Dragonshrine |goto Dragonblight/0 71.52,40.10 |c |noway |q 53868
step
talk Timeweaver Delormi##151134
turnin Saving Nine##53868 |goto 71.58,39.78
accept Killing Time##53869 |goto 71.58,39.78
step
kill Shade of Delormi##145507 |q 53869/1 |goto 71.78,39.38
step
talk Timeweaver Delormi##151134
turnin Killing Time##53869 |goto 71.58,39.77
accept Cut from the Same Cloth##53881 |goto 71.58,39.77
step
talk Timeweaver Delormi##151134
Tell her _"I'm ready to leave."_
Ask Timeweaver Delormi to Return You to Your Time |q 53881/1 |goto 71.58,39.77
step
Teleport to Boralus |goto Boralus/0 76.57,11.99 |c |noway |q 53881
step
Click the Complete Quest Box
turnin Cut from the Same Cloth##53881 |goto 76.49,11.92
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Farming Guides\\Deep Sea Satin",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Deep Sea Satin for various Tailoring recipes.",
startlevel=10.0,
},[[
step
map Vol'dun/0
path follow smart; loop on; ants curved; dist 20
path	51.94,29.15	52.47,28.79	52.63,27.89	52.53,26.28	51.49,26.15
path	51.07,26.49	50.33,26.19	49.64,25.26	49.10,25.05	48.79,26.35
path	49.21,27.05	49.95,27.53	50.61,28.29
Kill enemies around this area
|tip Only humanoid mobs drop cloth.
|tip These are a rare drop.
collect Deep Sea Satin##152577 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Farming Guides\\Gilded Seaweave",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Gilded Seaweave for various Tailoring recipes.",
startlevel=10.0,
},[[
step
Kill Shirakess enemies around this area
|tip Only humanoid mobs drop cloth.
|tip These are a rare drop.
collect Gilded Seaweave##167738 |goto Nazjatar/0 60.45,58.06 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Farming Guides\\Tidespray Linen",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Tidespray Linen for various Tailoring recipes.",
startlevel=10.0,
},[[
step
map Vol'dun/0
path follow smart; loop on; ants curved; dist 20
path	51.94,29.15	52.47,28.79	52.63,27.89	52.53,26.28	51.49,26.15
path	51.07,26.49	50.33,26.19	49.64,25.26	49.10,25.05	48.79,26.35
path	49.21,27.05	49.95,27.53	50.61,28.29
Kill enemies around this area
|tip Only humanoid mobs drop cloth.
collect Tidespray Linen##152576 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\General Farming Guides\\Void Focus",{
author="support@zygorguides.com",
description="This guide will walk you through unlocking the Void Focus, required for crafting 8.3 gear.",
keywords={"8.3","N'zoth","Nzoth","Corruption"},
condition_suggested=function() return level == 50 and completedq(56540) and not completedq(57462) end,
condition_end=function() return completedq(57462) end,
startlevel=50.0,
},[[
step
Complete the "Proof of Tenacity" Quest |complete completedq(56540)
|tip This will unlock assault areas in Uldum and Vale of Eternal Blossoms.
|tip Use the "Magni's Plan" leveling guide to accomplish this.
step
collect 1 Recipe: Void Focus##171312 |or
|tip Kill mobs in Lesser Visions and Uldum or Vale of Eternal Blossoms assault areas until it drops.
|tip Use our "Lesser Visions of N'Zoth," "Uldum Assaults," and "Vale of Eternal Blossoms Assaults" guides to accomplish this.
'|learn Void Focus##307172 |or
'|learn Void Focus##307220 |or
'|learn Void Focus##307221 |or
'|learn Void Focus##307176 |or
'|learn Void Focus##307219 |or
'|learn Void Focus##307175 |or
step
use the Recipe: Void Focus##171312
Learn the Void Focus Recipe |q 57275 |future |or
'|learn Void Focus##307172 |or
'|learn Void Focus##307220 |or
'|learn Void Focus##307221 |or
'|learn Void Focus##307176 |or
'|learn Void Focus##307219 |or
'|learn Void Focus##307175 |or
step
collect 10 Void Focus Splinter##170553 |q 57275 |future |or
|tip Kill mobs in Lesser Visions and Uldum or Vale of Eternal Blossoms assault areas.
|tip Use our "Lesser Visions of N'Zoth," "Uldum Assaults," and "Vale of Eternal Blossoms Assaults" guides to accomplish this.
'|complete haveq(57275) |or
step
Open Your Crafting Panel:
_<Create 1 Void Focus>_
accept Something in Your Mind##57275
|tip You will accept this quest automatically.
|tip This quest will unlock normal level crafting gear.
step
talk Wrathion##155496
turnin Something in Your Mind##57275 |goto Chamber of Heart/0 46.11,64.05
accept Maintaining Focus##57276 |goto 46.11,64.05 |or
|tip This quest will unlock heroic level crafting gear.
'|accept Maintaining Focus##57464 |goto 46.11,64.05 |or
step
collect 20 Shred of Insanity##171176 |q 57276/1 |only if haveq(57276) or completedq(57276)
collect 20 Shred of Insanity##171176 |q 57464/1 |only if haveq(57464) or completedq(57464)
|tip World bosses can drop one per week.
|tip Normal raid bosses drop one each per week.
|tip Heroic raid bosses drop ten each per week.
|tip Mythic raid bosses drop twenty each per week.
|tip You have a 50% chance to receive one for each Arena PvP win.
|tip There is also an extremely low chance to receive one from each honorable kill.
step
talk Wrathion##155496
turnin Maintaining Focus##57276 |goto 46.11,64.05 |only if haveq(57276) or completedq(57276)
turnin Maintaining Focus##57464 |goto 46.11,64.05 |only if haveq(57464) or completedq(57464)
accept Dream Catcher##57462 |goto 46.11,64.05
|tip This quest will unlock mythic level crafting gear.
step
collect 200 Shred of Insanity##171176 |q 57462/1
|tip World bosses can drop one per week.
|tip Normal raid bosses drop one each per week.
|tip Heroic raid bosses drop ten each per week.
|tip Mythic raid bosses drop twenty each per week.
|tip You have a 50% chance to receive one for each Arena PvP win.
|tip There is also an extremely low chance to receive one from each honorable kill.
step
talk Wrathion##155496
turnin Dream Catcher##57462 |goto 46.11,64.05
]])
