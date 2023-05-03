local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("ProfessionsHBFA") then return end
ZygorGuidesViewer.GuideMenuTier = "BFA"
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Alchemy\\Leveling Guides\\Zandalari Alchemy 1-175",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Zandalari Alchemy profession from 1-175.",
startlevel=5.0,
condition_end=function() return skill('Zandalari Alchemy') >= 175 end,
condition_suggested=function() return skill('Zandalari Alchemy') > 0 and skill('Zandalari Alchemy') < 175 and level >= 5 end,
},[[
step
talk Clever Kumali##122703
Train Zandalari Alchemy |skillmax Zandalari Alchemy,175 |goto Dazar'alor/0 42.22,37.96
step
talk Clever Kumali##122703
buy 200 Crystal Vial##3371 |goto 42.22,37.96
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
Reach Level 25 Zandalari Alchemy |skill Zandalari Alchemy,25
step
talk Clever Kumali##122703
Train Potion of Concealment (Rank 1) |learn Potion of Concealment##252400 |goto 42.22,37.96
step
Open Your Alchemy Crafting Panel:
_<Create 15 Potion of Concealment>_
Reach Level 40 Zandalari Alchemy |skill Zandalari Alchemy,40
step
talk Clever Kumali##122703
Train Coastal Healing Potion (Rank 2) |learn Coastal Healing Potion##252383 |goto 42.22,37.96
step
Open Your Alchemy Crafting Panel:
_<Create 10 Coastal Healing Potion>_
Reach Level 50 Zandalari Alchemy |skill Zandalari Alchemy,50
step
talk Clever Kumali##122703
Train Potion of Concealment (Rank 2) |learn Potion of Concealment##252401 |goto 42.22,37.96
step
Open Your Alchemy Crafting Panel:
_<Create 10 Potion of Concealment>_
Reach Level 60 Zandalari Alchemy |skill Zandalari Alchemy,60
step
talk Clever Kumali##122703
Train Potion of Bursting Blood (Rank 1) |learn Potion of Bursting Blood##252341 |goto 42.22,37.96
step
talk Clever Kumali##122703
Train Potion of Bursting Blood (Rank 2) |learn Potion of Bursting Blood##252342 |goto 42.22,37.96
step
Open Your Alchemy Crafting Panel:
_<Create 15 Potion of Bursting Blood>_
Reach Level 75 Zandalari Alchemy |skill Zandalari Alchemy,75
step
talk Clever Kumali##122703
Train Battle Potion of Agility (Rank 1) |learn Battle Potion of Agility##279159 |goto 42.22,37.96
step
talk Clever Kumali##122703
Train Battle Potion of Agility (Rank 2) |learn Battle Potion of Agility##279160 |goto 42.22,37.96
step
Open Your Alchemy Crafting Panel:
_<Create 15 Battle Potion of Agility>_
Reach Level 90 Zandalari Alchemy |skill Zandalari Alchemy,90
step
talk Clever Kumali##122703
Train Flask of the Vast Horizon (Rank 1) |learn Flask of the Vast Horizon##252354 |goto 42.22,37.96
step
Open Your Alchemy Crafting Panel:
_<Create 15 Flask of the Vast Horizon>_
Reach Level 105 Zandalari Alchemy |skill Zandalari Alchemy,105
step
talk Clever Kumali##122703
Train Flask of the Currents (Rank 1) |learn Flask of the Currents##252348 |goto 42.22,37.96
step
Open Your Alchemy Crafting Panel:
_<Create 15 Flask of the Currents>_
Reach Level 115 Zandalari Alchemy |skill Zandalari Alchemy,115
step
talk Clever Kumali##122703
Train Flask of the Undertow (Rank 1) |learn Flask of the Undertow##252357 |goto 42.22,37.96
step
talk Clever Kumali##122703
Train Flask of the Undertow (Rank 2) |learn Flask of the Undertow##252358 |goto 42.22,37.96
step
Open Your Alchemy Crafting Panel:
_<Create 30 Flask of the Undertow>_
Reach Level 145 Zandalari Alchemy |skill Zandalari Alchemy,145
step
Reach Level 50 |ding 50
step
Complete the Quest "A Way Home" |complete completedq(55053)
|tip Use the "Nazjatar" leveling guide to accomplish this.
step
collect 100 Zin'anthid##168487
|tip Farm them in Nazjatar with Herbalism or purchase them from the Auction House.
step
talk Narv##154393
Train Abyssal Healing Potion (Rank 1) |learn Abyssal Healing Potion##301310 |goto Nazjatar/0 49.16,61.45
step
Open Your Alchemy Crafting Panel:
_<Create 15 Abyssal Healing Potion>_
|tip You may need to make a few more.
Reach Level 160 Zandalari Alchemy |skill Zandalari Alchemy,160
step
talk Narv##154393
Train Abyssal Healing Potion (Rank 2) |learn Abyssal Healing Potion##301311 |goto 49.16,61.45
step
Open Your Alchemy Crafting Panel:
_<Create 25 Abyssal Healing Potion>_
|tip You may need to make a few more.
Reach Level 175 Zandalari Alchemy |skill Zandalari Alchemy,175
step
_Congratulations!_
You Reached 175 Zandalari Alchemy Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Alchemy\\Leveling Guides\\Tools of the Trade - Alchemy",{
author="support@zygorguides.com",
description="\nUpon completion of this guide, you will learn Silas' Sphere of Transformation. This allows you to interact "..
"with various cauldrons around Zandalar and Kul Tiras, as well as the ability to transmute the sphere temporarily.",
startlevel=50.0,
condition_end=function() return completedq(50120) end,
condition_suggested=function() return skill('Zandalari Alchemy') >= 150 and level >= 50 and not completedq(50120) end,
condition_visible=function() return skill('Zandalari Alchemy') >= 1 end,
},[[
step
Reach Level 150 Zandalari Alchemy |skill Zandalari Alchemy,175
|tip Use the "Zandalari Alchemy 1-150" profession guide to accomplish this.
step
talk Clever Kumali##122703
accept Casting the First Stone##50112 |goto Dazar'alor/0 42.22,37.96
step
click Sack of Dried Star Moss##316744
collect 10 Dried Star Moss Leaves##166371 |goto 42.05,38.10 |q 50112
step
click Sand Shifter Scales##316745
collect 3 Sand Shifter Scales##166372 |goto 42.08,37.99 |q 50112
step
click Crate of Test Vials##316747
collect 2 Test Vial##166374 |goto 42.13,37.94 |q 50112
step
click Storm Silver Shards##316746
collect 3 Storm Silver Shards##166373 |goto 42.37,37.91 |q 50112
step
Open Your Alchemy Crafting Panel:
_<Create 1 Potion of Durability>_
Create a Potion of Durability |q 50112/1
step
Open Your Alchemy Crafting Panel:
_<Create 1 Potion of Shifting States>_
Create a Potion of Shifting States |q 50112/2
step
talk Clever Kumali##122703
turnin Casting the First Stone##50112 |goto 42.22,37.96
step
Watch the dialogue
talk Clever Kumali##122703
accept Ocular Extracts##50113 |goto 42.22,37.96
accept Changing the Scenery##50115 |goto 42.22,37.96
stickystart "Collect_Razorwing_Eyes"
step
Cross the bridge |goto Zuldazar/0 66.93,43.20 < 20 |only if walking
Follow the path down |goto 65.54,44.09 < 30 |only if walking
Follow the road down |goto 64.75,43.32 < 20 |only if walking
click Barberry Shrub+
|tip They look like large green bushes on the ground around this area.
clicknpc Shrubbery Bubble##132309+
|tip They spawn after you click the shrub.
collect 6 Shrubbery Bubble##156660 |q 50115/1 |goto 63.14,42.34
step
label "Collect_Razorwing_Eyes"
kill Invasive Razorwing##131554+
collect 10 Razorwing Eye##156806 |q 50113/1 |goto 63.14,42.34
step
Watch the dialogue
talk Clever Kumali##122703
turnin Ocular Extracts##50113 |goto Dazar'alor/0 42.22,37.96
turnin Changing the Scenery##50115 |goto 42.22,37.96
step
Watch the dialogue
talk Clever Kumali##122703
accept A Possible Solution##50116 |goto 42.22,37.96
step
Enter the building |goto Nazmir/0 65.00,37.07 < 10 |walk
talk Zukashi##132680
|tip Inside the building.
turnin A Possible Solution##50116 |goto 65.15,36.87
accept A Deathly Draught##50117 |goto 65.15,36.87
accept A Stone's Throw##50118 |goto 65.15,36.87
stickystart "Collect_Vials_of_Altered_Blood"
step
Follow the path |goto 66.26,41.45 < 20 |only if walking
Continue following the path |goto 66.66,44.28 < 20 |only if walking
Continue following the path |goto 68.72,46.88 < 20 |only if walking
click Deathshroom##325489+
|tip They look like small blue mushrooms with flat tops on the ground around this area.
collect 15 Deathshroom##156658 |q 50117/1 |goto 68.41,47.61
step
label "Collect_Vials_of_Altered_Blood"
use the Bag of Transmutation Stones##156831
|tip Use it on Bloodhunter trolls around this area.
kill Puny Saurid##122239+
|tip They appear after transmuting trolls.
collect 8 Vial of Altered Blood##156664 |q 50118/1 |goto 68.39,47.82
step
Enter the building |goto 65.00,37.07 < 10 |walk
talk Zukashi##132680
|tip Inside the building.
turnin A Deathly Draught##50117 |goto 65.15,36.87
turnin A Stone's Throw##50118 |goto 65.15,36.87
accept Chemically Compounded##50119 |goto 65.15,36.87
step
Follow the path |goto 63.94,36.54 < 20 |only if walking
Continue following the path |goto 62.82,31.45 < 20 |only if walking
Enter the cave |goto 63.16,29.12 < 10 |walk
Meet Zukashi at the Cave |q 50119/1 |goto 42.35,36.62
step
Watch the dialogue
Witness Zukashi's Transformation |q 50119/2 |goto 62.95,28.81
step
kill Terror of the Swamp##132680 |q 50119/3 |goto 62.95,28.81
|tip Inside the cave.
step
click Zukashi's Satchel
|tip Inside the cave.
turnin Chemically Compounded##50119 |goto 62.90,28.85
accept A Recipe for Success##50120 |goto 62.90,28.85
step
talk Clever Kumali##122703
turnin A Recipe for Success##50120 |goto Dazar'alor/0 42.22,37.96
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
talk Examiner Alerinda##122701
|tip Inside the building.
|tip She walks around this area.
Train Battle for Azeroth Archaeology |skillmax Archaeology,950 |goto Dazar'alor/1 32.23,36.12
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
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Blacksmithing\\Leveling Guides\\Zandalari Blacksmithing 1-175",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Zandalari Blacksmithing profession from 1-175.",
startlevel=5.0,
condition_end=function() return skill('Zandalari Blacksmithing') >= 175 end,
condition_suggested=function() return skill('Zandalari Blacksmithing') > 0 and skill('Zandalari Blacksmithing') < 175 and level >= 5 end,
},[[
step
talk Forgemaster Zak'aal##127112
Train Zandalari Blacksmithing |skillmax Zandalari Blacksmithing,175 |goto Dazar'alor/0 43.66,38.30
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
talk Forgemaster Zak'aal##127112
buy 7 Durable Flux##160298 |goto 43.66,38.30
step
talk Forgemaster Zak'aal##127112
buy 750 Elemental Flux##18567 |goto 43.66,38.30
step
Open Your Blacksmithing Crafting Panel:
_<Create 15 Monel-Hardened Armguards>_
Reach Level 15 Zandalari Blacksmithing |skill Zandalari Blacksmithing,15 |goto 43.55,38.31
step
talk Forgemaster Zak'aal##127112
Train Monel-Hardened Waistguard |learn Monel-Hardened Waistguard##253180 |goto 43.66,38.30
step
Open Your Blacksmithing Crafting Panel:
_<Create 13 Monel-Hardened Waistguard>_
Reach Level 28 Zandalari Blacksmithing |skill Zandalari Blacksmithing,28 |goto 43.55,38.31
step
talk Forgemaster Zak'aal##127112
Train Monel-Hardened Greaves |learn Monel-Hardened Greaves##253174 |goto 43.66,38.30
step
Open Your Blacksmithing Crafting Panel:
_<Create 7 Monel-Hardened Greaves>_
Reach Level 35 Zandalari Blacksmithing |skill Zandalari Blacksmithing,35 |goto 43.55,38.31
step
talk Forgemaster Zak'aal##127112
Train Monel-Hardened Breastplate |learn Monel-Hardened Breastplate##253162 |goto 43.66,38.30
step
Open Your Blacksmithing Crafting Panel:
_<Create 15 Monel-Hardened Breastplate>_
Reach Level 50 Zandalari Blacksmithing |skill Zandalari Blacksmithing,50 |goto 43.55,38.31
step
talk Forgemaster Zak'aal##127112
Train Monelite Skeleton Key |learn Monelite Skeleton Key##269064 |goto 43.66,38.30
step
Open Your Blacksmithing Crafting Panel:
_<Create 20 Monelite Skeleton Key>_
|tip You may need to craft a few more to reach level 60.
Reach Level 60 Zandalari Blacksmithing |skill Zandalari Blacksmithing,60 |goto 43.66,38.30
step
Open Your Blacksmithing Crafting Panel:
_<Create 25 Monel-Hardened Breastplate>_
|tip You may need to craft a few more to reach level 85.
Reach Level 85 Zandalari Blacksmithing |skill Zandalari Blacksmithing,85 |goto 43.55,38.31
step
talk Forgemaster Zak'aal##127112
Train Honorable Combatant's Plate Armguards |learn Honorable Combatant's Plate Armguards##269451 |goto 43.66,38.30
step
Open Your Blacksmithing Crafting Panel:
_<Create 15 Honorable Combatant's Plate Armguards>_
Reach Level 100 Zandalari Blacksmithing |skill Zandalari Blacksmithing,100 |goto 43.55,38.31
step
talk Forgemaster Zak'aal##127112
Train Honorable Combatant's Plate Boots |learn Honorable Combatant's Plate Boots##269424 |goto 43.66,38.30
step
Open Your Blacksmithing Crafting Panel:
_<Create 10 Honorable Combatant's Plate Boots>_
Reach Level 110 Zandalari Blacksmithing |skill Zandalari Blacksmithing,110 |goto 43.55,38.31
step
talk Forgemaster Zak'aal##127112
Train Honorable Combatant's Plate Greaves |learn Honorable Combatant's Plate Greaves##269444 |goto 43.66,38.30
step
Open Your Blacksmithing Crafting Panel:
_<Create 10 Honorable Combatant's Plate Greaves>_
Reach Level 120 Zandalari Blacksmithing |skill Zandalari Blacksmithing,120 |goto 43.55,38.31
step
talk Forgemaster Zak'aal##127112
Train Stormsteel Dagger (Rank 1) |learn Stormsteel Dagger##253156 |goto 43.66,38.30
step
talk Forgemaster Zak'aal##127112
Train Stormsteel Dagger (Rank 2) |learn Stormsteel Dagger##253157 |goto 43.66,38.30
step
Reach Revered with The Honorbound |complete rep("The Honorbound") >= Revered
|tip Use our "The Honorbound" reputation guide to accomplish this.
step
talk Ransa Greyfeather##135447
buy 1 Recipe: Stormsteel Dagger##162275 |goto 58.06,62.65
step
use Recipe: Stormsteel Dagger##162275
Train Stormsteel Dagger (Rank 3) |learn Stormsteel Dagger##253158
step
click Shred-Master Mk1##293983
|tip Use this device to destroy old gear and turn it into Expulsom.
|tip You can purchase level 50+ gear from the Auction House to use if you don't have any.
collect 50 Expulsom##152668 |goto 45.03,39.93
step
Open Your Blacksmithing Crafting Panel:
_<Create 50 Stormsteel Dagger>_
|tip You may need to craft more or less of these to reach 150.
Reach Level 150 Zandalari Blacksmithing |skill Zandalari Blacksmithing,150 |goto 43.55,38.31
step
Reach Level 50 |ding 50
step
Complete the Quest "A Way Home" |complete completedq(55053)
|tip Use the "Nazjatar" leveling guide to accomplish this.
step
talk Jada##154321
Train Inflatable Mount Shoes |learn Inflatable Mount Shoes##301413 |goto Nazjatar/0 49.09,61.52
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
Reach Level 175 Zandalari Blacksmithing |skill Zandalari Blacksmithing,175
step
_Congratulations!_
You Reached 175 Zandalari Blacksmithing Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Blacksmithing\\Leveling Guides\\Tools of the Trade - Blacksmithing",{
author="support@zygorguides.com",
description="\nUpon completion of this guide, you will earn Khaz'gorian Smithing Hammer. This allows you to repair a piece of "..
"your equipment instantly, as well as granting a chance for your Blacksmithing-created items to be Indestructible.",
startlevel=50.0,
condition_end=function() return completedq(50279) end,
condition_suggested=function() return skill('Zandalari Blacksmithing') >= 150 and level >= 50 and not completedq(50279) end,
condition_visible=function() return skill('Zandalari Blacksmithing') >= 1 end,
},[[
step
Reach Level 150 Zandalari Blacksmithing |skill Zandalari Blacksmithing,175
|tip Use the "Zandalari Blacksmithing 1-150" profession guide to accomplish this.
step
talk Forgemaster Zak'aal##127112
accept A Recipe For the Ages##50276 |goto Dazar'alor/0 43.64,38.29
step
Kill Dreadcoil enemies around this area
collect 30 Revlis Ore##156875 |q 50276/1 |goto Zuldazar/0 80.75,39.86
step
talk Forgemaster Zak'aal##127112
turnin A Recipe For the Ages##50276 |goto Dazar'alor/0 43.64,38.29
accept Hammering Out Information##50277 |goto 43.64,38.29
step
talk Forgemaster Zak'aal##127112
Tell him _"I'd really like to know more about the anvil."_
Press Zak'aal for More Information |q 50277/1 |goto 43.64,38.29
step
talk Forgemaster Zak'aal##127112
turnin Hammering Out Information##50277 |goto 43.64,38.29
accept Deep In the Core##50278 |goto 43.64,38.29
step
click Portal to Deepholm
Travel to Orgrimmar and Take the Portal to Deepholm |q 50278/1 |goto Orgrimmar/1 50.84,36.30
step
Leave the building |goto Deepholm/0 49.98,55.49 < 30
talk Ormhun Stonehammer##133489
Seek Out Ormhun Stonehammer |q 50278/2 |goto 53.98,50.09
step
talk Ormhun Stonehammer##133489
turnin Deep In the Core##50278 |goto 53.98,50.09
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
accept Anvil's Away##50279 |goto 27.59,50.81
step
talk Forgemaster Zak'aal##127112
turnin Anvil's Away##50279 |goto Dazar'alor/0 43.64,38.29
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Leveling Guides\\Zandalari Cooking 1-175",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Zandalari Cooking profession from 1-175.",
startlevel=5.0,
condition_end=function() return skill('Zandalari Cooking') >= 175 end,
condition_suggested=function() return skill('Zandalari Cooking') > 0 and skill('Zandalari Cooking') < 175 and level >= 5 end,
},[[
step
talk T'sarah the Royal Chef##141549
Learn Zandalari Cooking |skillmax Zandalari Cooking,175 |goto Dazar'alor/2 28.45,50.0
step
Load the "Aromatic Fish Oil" guide |confirm |next "Profession Guides\\Fishing\\Farming Guides\\Aromatic Fish Oil"
|tip Click the line above to load the guide.
|tip You will need the "Fishing" skill in order to utilize the guide.
collect 98 Aromatic Fish Oil##160711
|tip These are gathered from using fish caught in Zandalar and Kul Tiras.
|tip You can also purchase them from the Auction House.
|only if skill("Zandalari Cooking") < 50
step
talk Ka'ro the Chopper##142325
buy 245 Foosaka##160400 |goto Dazar'alor/0 52.62,86.00
|only if skill("Zandalari Cooking") < 50
step
talk Ka'ro the Chopper##142325
buy 196 Powdered Sugar##160712 |goto 52.62,86.00
|only if skill("Zandalari Cooking") < 50
step
talk Ka'ro the Chopper##142325
buy 490 Wild Flour##160399 |goto 52.62,86.00
|only if skill("Zandalari Cooking") < 50
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 34 Mon'Dazi>_
|tip Be sure to save any Mon'Dazi you craft.
Reach Level 35 Zandalari Cooking |skill Zandalari Cooking,35
step
talk T'sarah the Royal Chef##141549
Learn the Rank 2 Recipe for Mon'Dazi |learn Mon'Dazi##259443 |goto Dazar'alor/2 28.45,50.0
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 15 Mon'Dazi>_
|tip Be sure to save any Mon'Dazi you craft.
Reach Level 50 Zandalari Cooking |skill Zandalari Cooking,50
step
talk T'sarah the Royal Chef##141549
Learn the Recipe for Honey-Glazed Haunches |learn Honey-Glazed Haunches##259414 |goto 28.45,50.0
step
Load the "Meaty Haunch" guide |confirm |next "Profession Guides\\Cooking\\Farming Guides\\Meaty Haunch"
|tip Click the line above to load the guide.
collect 600 Meaty Haunch##154898
|tip You can also purchase them from the Auction House.
|only if skill("Zandalari Cooking") < 110
step
talk Ka'ro the Chopper##142325
buy 300 Choral Honey##160398 |goto Dazar'alor/0 52.62,86.00
|only if skill("Zandalari Cooking") < 110
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 40 Honey-Glazed Haunches>_
Reach Level 90 Zandalari Cooking |skill Zandalari Cooking,90
step
talk T'sarah the Royal Chef##141549
Learn the Rank 2 Recipe for Honey-Glazed Haunches |learn Honey-Glazed Haunches##259415 |goto Dazar'alor/2 28.45,50.0
step
talk T'sarah the Royal Chef##141549
Learn the Recipe for Kul Tiramisu |learn Kul Tiramisu##259411 |goto 28.45,50.0
step
talk T'sarah the Royal Chef##141549
Learn the Rank 2 Recipe for Kul Tiramisu |learn Kul Tiramisu##259412 |goto 28.45,50.0
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 20 Honey-Glazed Haunches>_
Reach Level 110 Zandalari Cooking |skill Zandalari Cooking,110
step
talk T'sarah the Royal Chef##141549
Learn the Recipe for the Bountiful Captain's Feast |learn Bountiful Captain's Feast##259421 |goto 28.45,50.0
step
collect 420 Mon'Dazi##154885
|tip You can also purchase them from the Auction House.
|tip You should have at least 275 saved from crafting.
|tip To craft the rest, you will need:
|tip 60 Aromatic Fish.
|tip 120 Powdered Sugar.
|tip 150 Foosaka.
|tip 300 Wild Flour.
|only if skill("Zandalari Cooking") < 145
step
collect 420 Kul Tiramisu##154881
|tip You can also purchase them from the Auction House.
|tip To craft the rest, you will need:
|tip 690 Wild Flour.
|tip 345 Foosaka.
|tip 138 Aromatic Fish Oil.
|tip 345 Major's Frothy Coffee.
|only if skill("Zandalari Cooking") < 145
step
Load the "Redtail Loach" guide |confirm |next "Profession Guides\\Fishing\\Farming Guides\\Redtail Loach"
|tip Click the line above to load the guide.
|tip You will need the "Fishing" skill in order to utilize the guide.
collect 700 Redtail Loach##152549
|tip You can also purchase them from the Auction House.
only if skill("Zandalari Cooking") < 145
step
Load the "Frenzied Fangtooth" guide |confirm |next "Profession Guides\\Fishing\\Farming Guides\\Frenzied Fangtooth"
|tip Click the line above to load the guide.
|tip You will need the "Fishing" skill in order to utilize the guide.
collect 700 Frenzied Fangtooth##152545
|tip You can also purchase them from the Auction House.
only if skill("Zandalari Cooking") < 145
step
Load the "Stringy Loins" guide |confirm |next "Profession Guides\\Cooking\\Farming Guides\\Stringy Loins"
|tip Click the line above to load the guide.
|tip You will need the "Fishing" skill in order to utilize the guide.
collect 700 Stringy Loins##154897
|tip You can also purchase them from the Auction House.
only if skill("Zandalari Cooking") < 145
step
Load the "Meaty Haunch" guide |confirm |next "Profession Guides\\Cooking\\Farming Guides\\Meaty Haunch"
|tip Click the line above to load the guide.
|tip You will need the "Fishing" skill in order to utilize the guide.
collect 700 Meaty Haunch##154898
|tip You can also purchase them from the Auction House.
only if skill("Zandalari Cooking") < 145
step
Load the "Midnight Salmon" guide |confirm |next "Profession Guides\\Fishing\\Farming Guides\\Midnight Salmon"
|tip Click the line above to load the guide.
|tip You will need the "Fishing" skill in order to utilize the guide.
collect 185 Midnight Salmon##162515
|tip You can also purchase them from the Auction House.
only if skill("Zandalari Cooking") < 145
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 35 Bountiful Captain's Feasts>_
Reach Level 145 Zandalari Cooking |skill Zandalari Cooking,145
step
Reach Level 50 |ding 50
step
Complete the Quest "A Way Home" |complete completedq(55053)
|tip Use the "Nazjatar" leveling guide to accomplish this.
step
collect 360 Moist Fillet##168645
|tip Farm them from Beast mobs in Nazjatar or purchase them from the Auction House.
step
talk Rolm##154408
buy 135 Foosaka##160400 |goto Nazjatar/0 49.30,61.88
buy 225 Wild Flour##160399 |goto 49.30,61.88
step
talk Rolm##154408
Train Abyssal-Fried Rissole (Rank 1) |learn Abyssal-Fried Rissole##297084 |goto 49.30,61.88
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 20 Abyssal-Fried Rissole>_
Reach Level 155 Zandalari Cooking |skill Zandalari Cooking,155
step
talk Rolm##154408
Train Abyssal-Fried Rissole (Rank 2) |learn Abyssal-Fried Rissole##297085 |goto 49.30,61.88
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 35 Abyssal-Fried Rissole>_
|tip You may need to make more or less of these.
Reach Level 175 Zandalari Cooking |skill Zandalari Cooking,175
step
_Congratulations!_
You Reached 175 Zandalari Cooking Skill.
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
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Enchanting\\Leveling Guides\\Zandalari Enchanting 1-175",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Zandalari Enchanting profession from 1-175.",
startlevel=5.0,
condition_end=function() return skill('Zandalari Enchanting') >= 175 end,
condition_suggested=function() return skill('Zandalari Enchanting') > 0 and skill('Zandalari Enchanting') < 175 and level >= 5 end,
},[[
step
Enter the building |goto Dazar'alor/0 44.50,36.95 < 5 |walk
talk Enchantress Quinni##122702
|tip Inside the building.
|tip She walks around this area.
Train Zandalari Enchanting |skillmax Zandalari Enchanting,175 |goto 46.95,35.85
step
talk Enchantress Quinni##122702
|tip Inside the building.
|tip She walks around this area.
buy 160 Enchanting Vellum##38682 |goto 46.95,35.85
step
talk Enchantress Quinni##122702
|tip Inside the building.
|tip She walks around this area.
buy Copper Rod##6217 |goto 46.95,35.85 |only if itemcount(6218) == 0
step
talk Enchantress Quinni##122702
|tip Inside the building.
|tip She walks around this area.
buy Strange Dust##10940 |goto 46.95,35.85 |only if itemcount(6218) == 0
step
talk Enchantress Quinni##122702
|tip Inside the building.
|tip She walks around this area.
buy Lesser Magic Essence##10938 |goto 46.95,35.85 |only if itemcount(6218) == 0
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
_<Create 9 Zandari Crafting>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach Level 10 Zandalari Enchanting |skill Zandalari Enchanting,10
step
Open Your Enchanting Crafting Panel:
_<Create 15 Seal of Versatility>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach Level 25 Zandalari Enchanting |skill Zandalari Enchanting,25
step
Enter the building |goto 44.50,36.95 < 5 |walk
talk Enchantress Quinni##122702
|tip Inside the building.
|tip She walks around this area.
Train Safe Hearthing |learn Safe Hearthing##271366 |goto 46.95,35.85
step
Open Your Enchanting Crafting Panel:
_<Create 10 Safe Hearthing>_
|tip Click your bracers place the selected enchantment on them.
|tip Keep doing this, overwriting the existing enchant.
Reach Level 35 Zandalari Enchanting |skill Zandalari Enchanting,35
step
talk Enchantress Quinni##122702
|tip Inside the building.
|tip She walks around this area.
Train Seal of Versatility (Rank 2) |learn Seal of Versatility##255089 |goto 46.95,35.85
step
Open Your Enchanting Crafting Panel:
_<Create 5 Seal of Versatility>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach Level 40 Zandalari Enchanting |skill Zandalari Enchanting,40
step
talk Enchantress Quinni##122702
|tip Inside the building.
|tip She walks around this area.
Train Weapon Enchant - Gale-Force Striking |learn Weapon Enchant - Gale-Force Striking##255141 |goto 46.95,35.85
step
Open Your Enchanting Crafting Panel:
_<Create 20 Weapon Enchant - Gale-Force Striking>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach Level 60 Zandalari Enchanting |skill Zandalari Enchanting,60
step
talk Enchantress Quinni##122702
|tip Inside the building.
|tip She walks around this area.
Train Weapon Enchant - Deadly Navigation |learn Weapon Enchant - Deadly Navigation##268907 |goto 46.95,35.85
step
Open Your Enchanting Crafting Panel:
_<Create 15 Weapon Enchant - Deadly Navigation>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach Level 75 Zandalari Enchanting |skill Zandalari Enchanting,75
step
talk Enchantress Quinni##122702
|tip Inside the building.
|tip She walks around this area.
Train Pact of Critical Strike |learn Pact of Critical Strike##255075 |goto 46.95,35.85
step
Open Your Enchanting Crafting Panel:
_<Create 25 Pact of Critical Strike>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach Level 100 Zandalari Enchanting |skill Zandalari Enchanting,100
step
talk Enchantress Quinni##122702
|tip Inside the building.
|tip She walks around this area.
Train Pact of Critical Strike (Rank 2) |learn Pact of Critical Strike##255090 |goto 46.95,35.85
step
Open Your Enchanting Crafting Panel:
_<Create 25 Pact of Critical Strike>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach Level 125 Zandalari Enchanting |skill Zandalari Enchanting,125
step
talk Enchantress Quinni##122702
|tip Inside the building.
|tip She walks around this area.
Train Weapon Enchant - Quick Navigation (Rank 1) |learn Weapon Enchant - Quick Navigation##268894 |goto 46.95,35.85
step
talk Enchantress Quinni##122702
|tip Inside the building.
|tip She walks around this area.
Train Weapon Enchant - Quick Navigation (Rank 2) |learn Weapon Enchant - Quick Navigation##268895 |goto 46.95,35.85
step
Open Your Enchanting Crafting Panel:
_<Create 25 Weapon Enchant - Quick Navigation>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach Level 150 Zandalari Enchanting |skill Zandalari Enchanting,150
step
Reach Level 50 |ding 50
step
Complete the Quest "A Way Home" |complete completedq(55053)
|tip Use the "Nazjatar" leveling guide to accomplish this.
step
talk Narv##154393
Train Accord of Critical Strike (Rank 1) |learn Accord of Critical Strike##298009 |goto Nazjatar/0 49.16,61.45
step
Open Your Enchanting Crafting Panel:
_<Create 5 Accord of Critical Strike>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach Level 155 Zandalari Enchanting |skill Zandalari Enchanting,155
step
collect 17 Monel-Hardened Hoofplates##152812
|tip Create them with Blacksmithing or purchase them from the Auction House.
step
talk Narv##154393
Train Light-Step Hoofplates |learn Light-Step Hoofplates##301412 |goto 49.16,61.45
step
Open Your Enchanting Crafting Panel:
_<Create 17 Light-Step Hoofplates>_
Reach Level 170 Zandalari Enchanting |skill Zandalari Enchanting,170
step
talk Narv##154393
Train Machinist's Brilliance (Rank 1) |learn Machinist's Brilliance##298433 |goto 49.16,61.45
step
talk Narv##154393
Train Machinist's Brilliance (Rank 2) |learn Machinist's Brilliance##300769 |goto 49.16,61.45
step
Open Your Enchanting Crafting Panel:
_<Create 5 Machinist's Brilliance>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach Level 175 Zandalari Enchanting |skill Zandalari Enchanting,175
step
_Congratulations!_
You Reached 175 Zandalari Enchanting Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Enchanting\\Leveling Guides\\Tools of the Trade - Enchanting",{
author="support@zygorguides.com",
description="\nUpon completion of this guide, you will earn Iwen's Enchanting Rod. This allows you to animate golems "..
"found in various locations around Zandalar and Kul Tiras, as well as granting additional Enchanting "..
"resources from Disenchanting.",
startlevel=50.0,
condition_end=function() return completedq(54002) end,
condition_suggested=function() return skill('Zandalari Enchanting') >= 150 and level >= 50 and not completedq(54002) end,
condition_visible=function() return skill('Zandalari Enchanting') >= 1 end,
},[[
step
Reach Level 150 Zandalari Enchanting |skill Zandalari Enchanting,175
|tip Use the "Zandalari Enchanting 1-150" profession guide to accomplish this.
step
collect 3 Veiled Crystal##152877 |q 54161 |future
|tip You will need these later.
step
Enter the building |goto Dazar'alor/0 44.47,36.97 < 15 |walk
talk Enchantress Quinni##122702
|tip Inside the building.
accept What the Drust Knew##54161 |goto 47.08,35.68
step
talk Enchantress Quinni##122702
|tip Inside the building.
Tell her _"Show me this Drust relic."_
Speak to Enchantress Quinni |q 54161/1 |goto 47.08,35.68
step
Watch the dialogue
click Ancient Drust Relic
|tip Inside the building.
|tip Stand stil while channeling.
Remove the Enchantment from the Ancient Drust Relic |q 54161/2 |goto 47.10,35.30
step
talk Enchantress Quinni##122702
|tip Inside the building.
turnin What the Drust Knew##54161 |goto 47.08,35.68
step
_Click the Accept Quest Box:_
accept A Voice on the Wind##55635 |goto 74.03,11.55
step
Follow the path up |goto Drustvar/0 67.51,56.04 < 20 |only if walking
Follow the road down |goto 64.66,51.95 < 20 |only if walking
Follow the path |goto 62.51,44.04 < 30 |only if walking
Jump down here |goto 60.01,42.18 < 20 |only if walking
Follow the path |goto 56.92,41.28 < 20 |only if walking
talk Sef Iwen##146053
turnin A Voice on the Wind##55635 |goto 53.39,40.14
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
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Engineering\\Leveling Guides\\Zandalari Engineering 1-175",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Zandalari Engineering profession from 1-175.",
startlevel=5.0,
condition_end=function() return skill('Zandalari Engineering') >= 175 end,
condition_suggested=function() return skill('Zandalari Engineering') > 0 and skill('Zandalari Engineering') < 175 and level >= 5 end,
},[[
step
Run down the stairs |goto Dazar'alor/0 48.86,40.35 < 7 |only if walking
Jump down here |goto 48.51,37.78 < 7 |only if walking
Jump down here |goto 47.82,37.99 < 7 |only if walking
Continue down the stairs |goto 46.69,37.60 < 5 |only if walking
Continue down the stairs |goto 45.13,37.08 < 7 |only if walking
Continue down the stairs |goto 44.58,35.56 < 5 |only if walking
Follow the path |goto 42.87,35.60 < 10 |only if walking
Continue following the path |goto 43.69,39.78 < 10 |only if walking
talk Shuga Blastcaps##131840
Learn Zandalari Engineering |skillmax Zandalari Engineering,175 |goto 45.13,40.59
step
talk Shuga Blastcaps##131840
buy 165 Chemical Blasting Cap##160502 |goto 45.13,40.59
|only if skill("Zandalari Engineering") < 50
step
talk Shuga Blastcaps##131840
buy 687 Insulated Wiring##163569 |goto 45.13,40.59
|only if skill("Zandalari Engineering") < 85
step
Load the "Monelite Ore" guide |confirm |next "Profession Guides\\Mining\\Farming Guides\\Monelite"
|tip Click the line above to load the guide.
|tip You will need the "Mining" skill in order to utilize the guide.
collect 920 Monelite Ore##152512
|tip You can also purchase them from the Auction House.
|only if skill("Zandalari Engineering") < 100
step
Open Your Engineering Crafting Panel:
_<Create 24 F.R.I.E.D.s>_
Reach Level 25 Zandalari Engineering |skill Zandalari Engineering,25
step
talk Shuga Blastcaps##131840
Learn the Recipe for the Deployable Attire Rearranger |learn Deployable Attire Rearranger##256154 |goto 45.13,40.59
step
Load the "Storm Silver Ore" guide |confirm |next "Profession Guides\\Mining\\Farming Guides\\Storm Silver Ore"
|tip Click the line above to load the guide.
|tip You will need the "Mining" skill in order to utilize the guide.
collect 930 Storm Silver##152579
|tip You can also purchase them from the Auction House.
|only if skill("Zandalari Engineering") < 149
step
Open Your Engineering Crafting Panel:
_<Create 10 Deployable Attire Rearrangers>_
Reach Level 35 Zandalari Engineering |skill Zandalari Engineering,35
step
talk Shuga Blastcaps##131840
Learn the Recipe for Crow's Nest Scope |learn Crow's Nest Scope##264960 |goto 45.13,40.59
step
talk Shuga Blastcaps##131840
Learn the Rank 2 Recipe for the F.R.I.E.D. |learn F.R.I.E.D.##255393 |goto 45.13,40.59
step
Open Your Engineering Crafting Panel:
_<Create 15 F.R.I.E.D.s>_
Reach Level 50 Zandalari Engineering |skill Zandalari Engineering,50
step
talk Shuga Blastcaps##131840
Learn the Rank 2 Recipe for the Deployable Attire Rearranger |learn Deployable Attire Rearrangers##256155 |goto 45.13,40.59
step
Open Your Engineering Crafting Panel:
_<Create 35 Deployable Attire Rearrangers>_
|tip You may need to create more to reach 85.
Reach Level 85 Zandalari Engineering |skill Zandalari Engineering,85
step
talk Shuga Blastcaps##131840
Learn the Rank 2 Recipe for the Crow's Nest Scope |learn Crow's Nest Scope##264961 |goto 45.13,40.59
step
Open Your Engineering Crafting Panel:
_<Create 15 Crow's Nest Scope>_
Reach Level 100 Zandalari Engineering |skill Zandalari Engineering,100
step
talk Shuga Blastcaps##131840
Learn the Recipe for Honorable Combatant's Discombobulator |learn Honorable Combatant's Discombobulator##269724 |goto 45.13,40.59
step
Load the "Platinum Ore" guide |confirm |next
|tip Click the line above to load the guide.
|tip You will need the "Mining" skill in order to utilize the guide.
collect 270 Platinum Ore##152513
|tip You can also purchase them from the Auction House.
|only if skill("Zandalari Engineering") < 149
step
collect 575 Expulsom##152668
|tip These are obtained from World Quests, Salvaging Gear, Milling Herbs and Disenchanting magical items.
You can find the Shred-Master Mk1 here [45.03,40.17]
|only if skill("Zandalari Engineering") < 149
step
Open Your Engineering Crafting Panel:
_<Create 10 Honorable Combatant's Discombobulator>_
Reach Level 110 Zandalari Engineering |skill Zandalari Engineering,110
step
talk Shuga Blastcaps##131840
Learn the Recipe for Precision Attitude Adjuster |learn Precision Attitude Adjuster##253150 |goto 45.13,40.59
step
Open Your Engineering Crafting Panel:
_<Create 15 Precision Attitude Adjuster>_
Reach Level 125 Zandalari Engineering |skill Zandalari Engineering,125
step
talk Shuga Blastcaps##131840
Learn the Recipe for AZ3-R1-T3 Bionic Bifocals |learn AZ3-R1-T3 Bionic Bifocals##272062 |goto 45.13,40.59
step
Open Your Engineering Crafting Panel:
_<Create 15 AZ3-R1-T3 Bionic Bifocals>_
Reach Level 150 Zandalari Engineering |skill Zandalari Engineering,175
step
Complete the "Tools of the Trade - Engineering" Guide |complete completedq(53937)
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
talk Shuga Blastcaps##131840
buy 1325 Insulated Wiring##163569 |goto Dazar'alor/0 45.13,40.59
buy 850 Chemical Blasting Cap##160502 |goto 45.13,40.59
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
Reach Level 175 Zandalari Engineering |skill Zandalari Engineering,175
step
_Congratulations!_
You Reached 175 Zandalari Engineering Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Engineering\\Leveling Guides\\Tools of the Trade - Engineering",{
author="support@zygorguides.com",
description="\nUpon completion of this guide, you will earn the ability to create The Ub3r-Spanner. This allows you to summon "..
"and craft Ub3r inventions with Engineering.",
startlevel=50.0,
condition_end=function() return completedq(53937) end,
condition_suggested=function() return skill('Zandalari Engineering') >= 150 and level >= 50 and not completedq(53937) end,
condition_visible=function() return skill('Zandalari Engineering') >= 1 end,
},[[
step
Reach Level 150 Zandalari Engineering |skill Zandalari Engineering,175
|tip Use the "Zandalari Engineering 1-150" profession guide to accomplish this.
step
talk Shuga Blastcaps##131840
accept It's Scrap Work...##55031 |goto Dazar'alor/0 45.13,40.59
step
Cross the bridge |goto Tiragarde Sound/0 59.40,59.74 < 20 |only if walking
Follow the path up |goto 62.05,57.89 < 20 |only if walking
Continue following the path |goto 63.97,60.36 < 20 |only if walking
kill V-300 SENTRY##137743+
use the Coiled Current Culler##167041
|tip Use it on their corpses.
Harvest #8# Unstable Currents |q 55031/1 |goto 64.44,62.36
step
Overcharge the Reinforced Schematic Cache |q 55031/2 |goto 65.28,64.18
|tip Use the "Overcharge" ability that appears on-screen.
step
click Reinforced Schematic Cache##321837
collect Encrypted Ub3r-Spanner Schematic##167037 |q 55031/3 |goto 65.28,64.17
step
talk Shuga Blastcaps##131840
turnin It's Scrap Work...##55031 |goto Dazar'alor/0 45.13,40.59
accept In the Dunes##53783 |goto 45.13,40.59
step
Follow the path down |goto Vol'dun/0 27.12,49.75 < 20 |only if walking
talk Dataguru Gryzix##145131
turnin In the Dunes##53783 |goto 26.26,47.35
accept Sethrak Persuasion##53802 |goto 26.26,47.35
accept Heavy is the Head##53806 |goto 26.26,47.35
accept Mechanical Liberation##54930 |goto 26.26,47.35
stickystart "Liberate_Mechs"
stickystart "Collect_Faithless_Lightning_Rods"
step
Jump down here |goto Vol'dun/0 41.86,77.70 < 20 |only if walking
Follow the path |goto 37.76,81.20 < 20 |only if walking
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
accept Vengeful Venture##53833 |goto 26.26,47.30
step
Follow the path up |goto 27.45,48.42 < 20 |only if walking
Cross the bridge |goto 30.69,54.99 < 20 |only if walking
Follow the path up |goto 33.04,57.47 < 20 |only if walking
Continue following the path |goto 34.78,58.37 < 20 |only if walking
Find the Venture Co. In Vol'dun |q 53833/1 |goto 35.93,58.07
step
kill Chief Expedition Officer McCormick##145148
collect Gryzix's Decoder##164773 |q 53833/2 |goto 35.94,58.04
step
collect Encrypted Ub3r-Spanner Schematic##166886 |q 53833/3 |goto 35.94,58.04
step
talk Shuga Blastcaps##131840
turnin Vengeful Venture##53833 |goto Dazar'alor/0 45.13,40.59
accept The Ub3r-Spanner##53937 |goto 45.13,40.59
step
Watch the dialogue
Wait for Shuga Blastcaps to Decode the Schematic |q 53937/1 |goto 45.13,40.59
step
talk Shuga Blastcaps##131840
turnin The Ub3r-Spanner##53937 |goto 45.13,40.59
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Leveling Guides\\Zandalari Fishing 1-175",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Zandalari Fishing profession from 1-175.",
startlevel=5.0,
condition_end=function() return skill('Zandalari Fishing') >= 175 end,
condition_suggested=function() return skill('Zandalari Fishing') > 0 and skill('Zandalari Fishing') < 175 and level >= 5 end,
},[[
step
Run up the stairs |goto Dazar'alor/0 52.16,19.80 < 5 |only if walking
Follow the path |goto 51.18,21.74 < 10 |only if walking
talk Silent Tali##122705
Learn Zandalari Fishing |skillmax Zandalari Fishing,175 |goto Dazar'alor/0 50.52,23.35
step
Fish in the open water
|tip You can fish anywhere and gain skill.
|tip If you want to fish up specific fish, refer to one of our farming guides.
Reach Level 175 Zandalari Fishing |skill Zandalari Fishing,175 |goto 50.42,23.43
step
_Congratulations!_
You Reached 175 Zandalari Fishing Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Aromatic Fish Oil",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Aromatic Fish Oil for various Cooking recipes.",
startlevel=10.0,
},[[
step
Jump down here |goto Dazar'alor/0 50.73,88.49
Run down the stairs |goto 50.37,90.91 < 7 |walk
Follow the path |goto 50.67,93.16 < 7 |walk
Fish in the open water
use the Sand Shifter##152543
use the Slimy Mackerel##152544
collect Aromatic Fish Oil##160711 |n |goto 49.34,97.57
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
map Stormsong Valley/0
path follow smart; loop off; ants curved; dist 20
path	56.42,19.69	58.70,17.84	61.38,15.17	63.06,14.62	64.28,16.06
path	66.47,18.99	69.95,34.95	69.56,36.85	69.24,40.52	66.68,48.49
path	68.08,50.14	70.34,48.58	72.69,48.96	73.83,52.22	73.82,53.81
path	72.18,57.68	73.81,59.71	75.43,60.95	77.58,61.04	78.25,61.57
path	79.24,61.77	80.76,61.45
Fish in pool found in Stormsong
|tip You can also fish in one spot for these.
|tip Midnight Salmon are rare, so it will take a while to collect them.
collect Midnight Salmon##162515 |n
|tip They look like small circular swirling spots in the water along the coast.
|tip These can be found along the coasts of Stormsong Valley.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Redtail Loach",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Redtail Loach for various Cooking recipes.",
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
|tip They share spawn points with Great Sea Catfish School.
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
|tip They share spawn points with Great Sea Catfish School.
|tip You will need fishing to gather from this path.
|tip You may need water walking in order to farm from some of the pools.
|tip They look like small circular swirling spots in the water along the coast.
collect Great Sea Catfish##152547 |n
'|goto Nazmir/0 39.12,84.85 < 30 |c |noway |next "Start"
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
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Leveling Guides\\Zandalari Herbalism 1-175",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Zandalari Herbalism profession from 1-175.",
startlevel=5.0,
condition_end=function() return skill('Zandalari Herbalism') >= 175 end,
condition_suggested=function() return skill('Zandalari Herbalism') > 0 and skill('Zandalari Herbalism') < 175 and level >= 5 end,
},[[
step
talk Jahden Fla##122704
|tip He walks around this area.
Train Zandalari Herbalism |skillmax Zandalari Herbalism,175 |goto Dazar'alor/0 42.18,36.05
step
map Zuldazar/0
path	follow smart; loop on; ants curved; dist 20
path	79.87,42.02	78.77,40.79	78.68,39.68	77.44,38.80	77.20,36.98
path	76.32,36.09	76.22,34.67	75.49,32.51	74.66,31.30	73.81,30.02
path	72.90,28.93	72.07,29.24	70.34,29.84	69.95,28.69	68.98,27.22
path	69.22,25.54	69.04,23.76	68.56,23.36	67.65,23.51	66.69,25.26
path	65.62,25.10	63.34,23.65	61.15,25.03	Dazar'alor/0 58.83,0.86	60.95,3.55
path	Zuldazar/0 62.41,32.99	63.73,34.95	63.63,36.68	65.06,37.75	65.90,40.39
path	67.01,39.67	67.81,40.51	68.79,39.54	68.46,37.93	70.34,36.38
path	70.98,36.34	71.10,37.31	72.12,39.58	72.95,39.51	74.54,40.92
path	75.35,41.09	76.63,41.97	77.74,43.01	79.72,43.00
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
Reach Level 175 Zandalari Herbalism |skill Zandalari Herbalism,175
step
_Congratulations!_
You Reached 175 Zandalari Herbalism Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Quest Guides\\Zandalari Herbalism Quest Line",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the Zandalari Herbalism quest line.",
startlevel=10.0,
condition_end=function() return completedq(48763) end,
condition_suggested=function() return skill('Zandalari Herbalism') > 0 and level >= 10 and not completedq(48763) end,
},[[
step
talk Jahden Fla##122704
|tip He walks around this area.
Train Zandalari Herbalism |skillmax Zandalari Herbalism,175 |goto Dazar'alor/0 42.18,36.05
step
talk Jahden Fla##122704
|tip He walks around this area.
Train Akunda's Bite |learn Akunda's Bite##252411 |goto 42.18,36.05
step
talk Jahden Fla##122704
|tip He walks around this area.
Train Riverbud |learn Riverbud##252405 |goto 42.18,36.05
step
talk Jahden Fla##122704
|tip He walks around this area.
Train Sea Stalk |learn Sea Stalk##252421 |goto 42.18,36.05
step
talk Jahden Fla##122704
|tip He walks around this area.
Train Siren's Pollen |learn Siren's Pollen##252418 |goto 42.18,36.05
step
talk Jahden Fla##122704
|tip He walks around this area.
Train Star Moss |learn Star Moss##252408 |goto 42.18,36.05
step
talk Jahden Fla##122704
|tip He walks around this area.
Train Winter's Kiss |learn Winter's Kiss##252415 |goto 42.18,36.05
step
map Zuldazar/0
path	follow smart; loop on; ants curved; dist 20
path	79.87,42.02	78.77,40.79	78.68,39.68	77.44,38.80	77.20,36.98
path	76.32,36.09	76.22,34.67	75.49,32.51	74.66,31.30	73.81,30.02
path	72.90,28.93	72.07,29.24	70.34,29.84	69.95,28.69	68.98,27.22
path	69.22,25.54	69.04,23.76	68.56,23.36	67.65,23.51	66.69,25.26
path	65.62,25.10	63.34,23.65	61.15,25.03	Dazar'alor/0 58.83,0.86	60.95,3.55
path	Zuldazar/0 62.41,32.99	63.73,34.95	63.63,36.68	65.06,37.75	65.90,40.39
path	67.01,39.67	67.81,40.51	68.79,39.54	68.46,37.93	70.34,36.38
path	70.98,36.34	71.10,37.31	72.12,39.58	72.95,39.51	74.54,40.92
path	75.35,41.09	76.63,41.97	77.74,43.01	79.72,43.00
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
Reach Level 50 Zandalari Herbalism |skill Zandalari Herbalism,50
step
talk Jahden Fla##122704
|tip He walks around this area.
Train Anchor Weed |learn Anchor Weed##252424 |goto Dazar'alor/0 42.18,36.05
step
talk Jahden Fla##122704
|tip He walks around this area.
accept Emergency Transplants##51230 |goto Dazar'alor/0 42.18,36.05
accept An Unusual Mentor##51432 |goto 42.18,36.05
accept Meet Sweetflower##51446 |goto 42.18,36.05
accept Here In Spirit##51464 |goto 42.18,36.05
accept Cultural Significance##51498 |goto 42.18,36.05
step
Jump down here |goto 50.73,87.14 < 20 |only if walking
Follow the path |goto Dazar'alor/0 52.20,95.17 < 20 |only if walking
talk Wavesinger De'zan##133538
Ask him _"What can you tell me about sea stalks?"_
Ask Wavesinger De'zan About Sea Stalks |q 51498/1 |goto 52.83,95.78
step
talk Captain Rez'okun##123000
Ask him _"What can you tell me about sea stalks?"_
Ask Captain Rez'okun About Sea Stalks |q 51498/2 |goto 44.48,95.45
step
Run up the stairs |goto 45.76,93.05 < 20 |only if walking
talk Dockmaster Cobo##126009
Ask him _"What can you tell me about sea stalks?"_
Ask Dockmaster Cobo About Sea Stalks |q 51498/3 |goto 45.31,79.78
step
Jump down here |goto Zuldazar/0 65.84,41.18 < 20 |only if walking
Follow the road down |goto 65.08,37.72 < 30 |only if walking
click Rivermud##290136+
|tip They look like small brown mounds of dirt on the ground around this area.
|tip They will appear on your minimap as a yellow dot.
Plant #10# Riverbud Seeds |q 51230/1 |goto 62.70,36.08
step
talk Jahden Fla##122704
|tip He walks around this area.
turnin Emergency Transplants##51230 |goto Dazar'alor/0 42.18,36.05
turnin Cultural Significance##51498 |goto 42.18,36.05
step
Follow the path |goto Vol'dun/0 61.49,24.58 < 20 |only if walking
Enter the cave |goto 62.31,26.00 < 10 |walk
talk Patu##137572
|tip Inside the cave.
turnin An Unusual Mentor##51432 |goto 62.34,25.72
accept Foul Harvest##51399 |goto 62.34,25.72
step
Follow the path |goto 61.40,29.83 < 20 |only if walking
Continue down the path |goto 60.94,35.37 < 10 |only if walking
click Sun Baked Dung##289448+
|tip They look like small brown piles of poop with flies coming off them on the ground around this area.
|tip They will appear on your minimap as a yellow dot.
collect 12 Digested Akunda's Bite Seed##160108 |q 51399/1 |goto 59.37,40.63
step
Follow the path |goto 60.96,35.47 < 20 |only if walking
Continue following the path |goto 61.44,29.83 < 20 |only if walking
Enter the cave |goto 62.31,26.00 < 10 |walk
talk Patu##137572
|tip Inside the cave.
turnin Foul Harvest##51399 |goto 62.34,25.72
accept Giving Back to Nature##51408 |goto 62.34,25.72
step
Follow the path |goto 61.72,28.62 < 20 |only if walking
Continue down the path |goto 60.94,35.37 < 20 |only if walking
use the Akunda's Bite Sapling##160187
Defeat the enemies that attack in waves
Defend Akunda's Bite Sapling |q 51408/1 |goto 59.66,45.16
step
Follow the path |goto 60.95,35.48 < 20 |only if walking
Continue up the path |goto 61.44,29.83 < 20 |only if walking
Enter the cave |goto 62.31,26.00 < 10 |walk
talk Patu##137572
|tip Inside the cave.
turnin Giving Back to Nature##51408 |goto 62.34,25.72
step
map Vol'dun/0
path follow smart; loop on; ants curved; dist 20
path	50.34,43.91	48.49,43.69	47.64,43.44	47.64,42.48	47.20,42.14
path	46.93,42.62	46.80,43.24	46.41,44.28	45.64,44.84	45.27,45.78
path	45.13,46.85	46.60,47.72	48.10,47.80	49.58,47.00	50.07,45.22
click Star Moss##276236+
|tip They look like green plants with red flowers that grow on the sides of walls and bridges.
|tip Track them on your minimap with "Find Herbs".
collect 10 Fresh Star Moss##159830 |q 51464/1
step
Teleport to Drustvar |goto Drustvar/0 20.61,43.69 < 200 |c |q 51446
step
talk Xun Xun Sweetflower##136141
turnin Meet Sweetflower##51446 |goto 20.68,45.59
accept Can't Teach on an Empty Stomach##51376 |goto 20.68,45.59
step
Fish in the open water |cast Fishing##131474
|tip You will occassionally catch Lane Snappers.
|tip You can also purchase them from the Auction House.
collect 8 Lane Snapper##152546 |q 51376/1 |goto 19.95,44.86
step
Run up the stairs |goto 20.08,45.00 < 7 |only if walking
Follow the path |goto 20.34,45.40 < 7 |only if walking
Continue following the path |goto 20.56,45.92 < 7 |only if walking
talk Xun Xun Sweetflower##136141
turnin Can't Teach on an Empty Stomach##51376 |goto 20.68,45.59
step
Return to Zuldazar |goto Zuldazar/0 58.40,62.50 < 200 |c |q 51464
step
talk Jahden Fla##122704
|tip He walks around this area.
turnin Here In Spirit##51464 |goto Dazar'alor/0 42.18,36.05
step
map Zuldazar/0
path	follow smart; loop on; ants curved; dist 20
path	79.87,42.02	78.77,40.79	78.68,39.68	77.44,38.80	77.20,36.98
path	76.32,36.09	76.22,34.67	75.49,32.51	74.66,31.30	73.81,30.02
path	72.90,28.93	72.07,29.24	70.34,29.84	69.95,28.69	68.98,27.22
path	69.22,25.54	69.04,23.76	68.56,23.36	67.65,23.51	66.69,25.26
path	65.62,25.10	63.34,23.65	61.15,25.03	Dazar'alor/0 58.83,0.86	60.95,3.55
path	Zuldazar/0 62.41,32.99	63.73,34.95	63.63,36.68	65.06,37.75	65.90,40.39
path	67.01,39.67	67.81,40.51	68.79,39.54	68.46,37.93	70.34,36.38
path	70.98,36.34	71.10,37.31	72.12,39.58	72.95,39.51	74.54,40.92
path	75.35,41.09	76.63,41.97	77.74,43.01	79.72,43.00
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
Reach Level 100 Zandalari Herbalism |skill Zandalari Herbalism,100
step
talk Jahden Fla##122704
|tip He walks around this area.
accept Seeking More Knowledge##51482 |goto Dazar'alor/0 42.18,36.05
step
Press _I_ and Queue for Waycrest Manor or Enter the Dungeon with your Group |goto Waycrest Manor/0 0.00,0.00 < 1000 |noway |q 51482
step
click A Treatise on Anchor Weed##288621
|tip It looks like a small brown book with an anchor symbol on the front in the Waycrest Manor dungeon.
|tip It is in a room with the fourth boss, Lord Waycrest.
collect A Treatise on Anchor Weed##159960 |q 51482/1
step
kill Gorak Tul##144324
|tip It is the last boss of the Waycrest Manor dungeon.
Slay Gorak Tul |q 51482/2
step
talk Jahden Fla##122704
|tip He walks around this area.
turnin Seeking More Knowledge##51482 |goto Dazar'alor/0 42.18,36.05
step
click Siren's Sting##281869+
|tip They look like green plants with purple flowers that grow attached to trees on the ground.
use the Dead Pollen-Covered Wasp##160250
accept Aromatic Pollenator##51447
|tip You will eventually accept this quest after looting.
step
talk Jahden Fla##122704
|tip He walks around this area.
turnin Aromatic Pollenator##51447 |goto 42.18,36.05
accept Learn From the Best##51448 |goto 42.18,36.05
step
Follow the path |goto Vol'dun/0 56.44,49.94 < 10 |only if walking
Follow the path down |goto 55.91,49.06 < 10 |only if walking
use Jahden's Potion of Plant Shape##160252
Harvest Pollen |q 51448/1 |goto 55.31,48.67
step
talk Jahden Fla##122704
|tip He walks around this area.
turnin Learn From the Best##51448 |goto Dazar'alor/0 42.18,36.05
step
map Zuldazar/0
path	follow smart; loop on; ants curved; dist 20
path	79.87,42.02	78.77,40.79	78.68,39.68	77.44,38.80	77.20,36.98
path	76.32,36.09	76.22,34.67	75.49,32.51	74.66,31.30	73.81,30.02
path	72.90,28.93	72.07,29.24	70.34,29.84	69.95,28.69	68.98,27.22
path	69.22,25.54	69.04,23.76	68.56,23.36	67.65,23.51	66.69,25.26
path	65.62,25.10	63.34,23.65	61.15,25.03	Dazar'alor/0 58.83,0.86	60.95,3.55
path	Zuldazar/0 62.41,32.99	63.73,34.95	63.63,36.68	65.06,37.75	65.90,40.39
path	67.01,39.67	67.81,40.51	68.79,39.54	68.46,37.93	70.34,36.38
path	70.98,36.34	71.10,37.31	72.12,39.58	72.95,39.51	74.54,40.92
path	75.35,41.09	76.63,41.97	77.74,43.01	79.72,43.00
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
Reach Level 145 Zandalari Herbalism |skill Zandalari Herbalism,145
step
talk Jahden Fla##122704
|tip He walks around this area.
accept Breaking The Food Chain##51243 |goto Dazar'alor/0 42.18,36.05
accept Ghost Busting##51478 |goto 42.18,36.05
accept Gathering Mementos##51503 |goto 42.18,36.05
step
Cross the bridge |goto 43.72,29.50 < 25 |only if walking
Jump down here |goto 40.02,28.18 < 15 |only if walking
kill 12 Ravenous Jacunda##131522 |q 51243/1 |goto Zuldazar/0 54.16,39.16
step
Run down the stairs |goto Dazar'alor/0 45.28,24.00 < 10 |only if walking
Continue down the stairs |goto 50.32,21.17 < 10 |only if walking
Enter the building |goto 52.05,87.93 < 7 |walk
Go to Spirits Be With You |q 51478/1 |goto 52.29,85.19
|tip Inside the building.
step
use the Smoldering Bundle of Star Moss##160299
|tip Inside the building.
Summon the Angry Spirit |q 51478/2 |goto 52.28,85.19
step
kill Angry Spirit##137832
|tip Inside the building.
Put the Angry Spirit to Rest |q 51478/3 |goto 52.28,85.19
step
click Ship Wreckage##289767+
|tip They look like brown piles of wood on the ground around this area.
collect Sailor's Necklace##160314 |q 51503/1 |goto Nazmir/0 80.59,32.78
step
talk Jahden Fla##122704
|tip He walks around this area.
turnin Breaking The Food Chain##51243 |goto Dazar'alor/0 42.18,36.05
turnin Ghost Busting##51478 |goto 42.18,36.05
turnin Gathering Mementos##51503 |goto 42.18,36.05
step
map Zuldazar/0
path follow smart; loop on; ants curved; dist 20
path	53.29,29.09	53.90,28.49	54.76,28.21	55.94,27.53	57.14,26.19
path	58.55,25.49	59.14,24.60	58.52,23.26	58.62,21.68	58.95,21.21
path	59.48,20.31	60.41,20.27	61.04,20.56	61.05,21.94	61.03,24.10
path	61.58,24.56	62.36,24.45	62.99,23.80	63.49,23.68	64.05,23.77
path	64.54,24.42	65.70,25.12	66.63,25.18	67.37,23.75	67.83,23.40
path	68.54,23.34	68.82,21.99
path	68.24,20.37	68.12,19.31	67.49,18.36	66.46,18.11	65.94,17.30
path	65.11,18.00	64.25,18.18	63.40,18.49	62.76,18.29
path	62.50,17.18	62.44,15.74	61.50,16.16	60.83,17.04	60.82,17.52
path	60.50,18.43	59.90,19.26	58.91,18.81	57.67,19.79	56.80,19.71
path	56.11,19.16	55.91,19.37	55.51,19.52	55.33,19.92	54.74,20.13
path	54.36,20.47	54.08,19.83	53.78,19.57	53.53,19.83	52.65,20.71
path	51.19,21.06	51.25,21.74	51.87,22.12	52.53,22.27	52.89,22.81
path	53.57,23.70	54.35,25.18	54.43,26.35
click Siren's Sting##281869+
|tip Track them on your minimap with "Find Herbs".
accept Disgustingly Damp Flower##51451
|tip You will eventually accept this quest after looting.
step
talk Jahden Fla##122704
|tip He walks around this area.
turnin Disgustingly Damp Flower##51451 |goto Dazar'alor/0 42.18,36.05
accept Pollen Punching##51452 |goto 42.18,36.05
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
click Siren's Sting##281869+
|tip Track them on your minimap with "Find Herbs".
collect 12 Heaping Handful of Damp Pollen##159957 |q 51452/1
step
Click the Complete Quest Box
turnin Pollen Punching##51452
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
path follow smart; loop on; ants curved; dist 20
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
map Zuldazar/0
path	follow smart; loop on; ants curved; dist 20
path	79.87,42.02	78.77,40.79	78.68,39.68	77.44,38.80	77.20,36.98
path	76.32,36.09	76.22,34.67	75.49,32.51	74.66,31.30	73.81,30.02
path	72.90,28.93	72.07,29.24	70.34,29.84	69.95,28.69	68.98,27.22
path	69.22,25.54	69.04,23.76	68.56,23.36	67.65,23.51	66.69,25.26
path	65.62,25.10	63.34,23.65	61.15,25.03	Dazar'alor/0 58.83,0.86	60.95,3.55
path	Zuldazar/0 62.41,32.99	63.73,34.95	63.63,36.68	65.06,37.75	65.90,40.39
path	67.01,39.67	67.81,40.51	68.79,39.54	68.46,37.93	70.34,36.38
path	70.98,36.34	71.10,37.31	72.12,39.58	72.95,39.51	74.54,40.92
path	75.35,41.09	76.63,41.97	77.74,43.01	79.72,43.00
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
Reach Level 150 Zandalari Herbalism |skill Zandalari Herbalism,175
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
path	40.15,41.19
click Anchor Weed##276242+
|tip Track them on your minimap with "Find Herbs".
use the Enormous Anchor Pod##160550
accept Enormous Anchor Pod##51480
|tip You will eventually accept this quest after looting.
step
talk Jahden Fla##122704
|tip He walks around this area.
turnin Enormous Anchor Pod##51480 |goto Dazar'alor/0 42.18,36.05
accept More Anchor Pods##51481 |goto 42.18,36.05
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
path	40.15,41.19
click Anchor Weed##276242+
|tip Track them on your minimap with "Find Herbs".
collect 9 Mature Anchor Pod##160036 |q 51481/1
step
talk Jahden Fla##122704
|tip He walks around this area.
turnin More Anchor Pods##51481 |goto Dazar'alor/0 42.18,36.05
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
path	40.15,41.19
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
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Inscription\\Leveling Guides\\Zandalari Inscription 1-175",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Zandalari Inscription profession from 1-175.",
startlevel=5.0,
condition_end=function() return skill('Zandalari Inscription') >= 175 end,
condition_suggested=function() return skill('Zandalari Inscription') > 0 and skill('Zandalari Inscription') < 175 and level >= 5 end,
},[[
step
talk Chronicler Grazzul##130901
Train Zandalari Inscription |skillmax Zandalari Inscription,175 |goto Dazar'alor/0 42.33,39.72
step
talk Motla##141914
buy 900 Distilled Water##158186 |goto 42.13,38.99
step
collect 30 Ultramarine Pigment##153635
|tip You get these by gathering and milling herbs found in Kul Tiras and Zuldazar, if you have Herbalism.
|tip You can also purchase them from the Auction House.
|tip Use your Milling ability on Kul Tiras or Zuldazar herbs to accomplish this.
step
Open Your Inscription Crafting Panel:
_<Create 30 Ultramarine Ink>_
Reach Level 30 Zandalari Inscription |skill Zandalari Inscription,30
step
talk Chronicler Grazzul##130901
Train Scroll of Unlocking |learn Scroll of Unlocking##269065 |goto 42.33,39.72
step
talk Motla##141914
buy 200 Light Parchment##39354 |n
collect 200 Light Parchment##39354 |goto 42.13,38.99
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
Reach Level 50 Zandalari Inscription |skill Zandalari Inscription,50
step
talk Chronicler Grazzul##130901
Train Mass Mill Akunda's Bite |learn Mass Mill Akunda's Bite##256219 |goto 42.33,39.72
step
Open Your Inscription Crafting Panel:
Use _<Mass Mill Akunda's Bite>_
|tip Use it to mill Akunda's Bite herbs you've gathered in Kul Tiras.
|tip You can gather other herbs and use a different Mass Mill ability to level if you want.
|tip You can also purchase them from the Auction House.
Reach Level 75 Zandalari Inscription |skill Zandalari Inscription,75
step
talk Chronicler Grazzul##130901
Train Contract: Zandalari Empire |learn Contract: Zandalari Empire##256284 |goto 42.33,39.72
step
talk Motla##141914
buy Virtuoso Inking Set##39505 |n
collect Virtuoso Inking Set##39505 |goto 42.13,38.99
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
_<Create 10 Contract: Zandalari Empire>_
Reach Level 85 Zandalari Inscription |skill Zandalari Inscription,85
step
talk Chronicler Grazzul##130901
Train Darkmoon Card of War (Rank 1) |learn Darkmoon Card of War##278527 |goto 42.33,39.72
step
talk Motla##141914
buy 180 Acacia Powder##158205 |n
collect 180 Acacia Powder##158205 |goto 42.13,38.99
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
click Shred-Master Mk1##293983
|tip Use this device to destroy old gear and turn it into Expulsom.
|tip You can purchase level 50+ gear from the Auction House to use if you don't have any.
collect 15 Expulsom##152668 |goto 45.03,39.93
step
Open Your Inscription Crafting Panel:
_<Create 15 Darkmoon Card of War>_
Reach Level 100 Zandalari Inscription |skill Zandalari Inscription,100
step
talk Chronicler Grazzul##130901
Train Darkmoon Card of War (Rank 2) |learn Darkmoon Card of War##256245 |goto 42.33,39.72
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
click Shred-Master Mk1##293983
|tip Use this device to destroy old gear and turn it into Expulsom.
|tip You can purchase level 50+ gear from the Auction House to use if you don't have any.
collect 45 Expulsom##152668 |goto 45.03,39.93
step
Open Your Inscription Crafting Panel:
_<Create 45 Darkmoon Card of War>_
Reach Level 145 Zandalari Inscription |skill Zandalari Inscription,145
step
Reach Level 50 |ding 50
step
Complete the Quest "A Way Home" |complete completedq(55053)
|tip Use the "Nazjatar" leveling guide to accomplish this.
step
collect 400 Maroon Pigment##168662
|tip These can be milled from herbs found in Nazjatar.
|tip Farm them with Herbalism or purchase them from the Auction House.
step
talk Narv##154393
Train Maroon Ink |learn Maroon Ink##298929 |goto Nazjatar/0 49.16,61.46
step
Open Your Inscription Crafting Panel:
_<Create 400 Maroon Ink>_
collect 400 Viridescent Ink##158189
step
Reach Revered with The Unshackled |complete rep('The Unshackled') >= Revered
|tip Use "The Unshackled" reputation guide to accomplish this.
step
talk Atolia Seapearl##154002
|tip Inside the cave.
buy 1 Recipe: Contract: Unshackled##169549 |goto 50.98,65.26
step
use the Recipe: Contract: Unshackled##169549
Train Contract: Unshackled |learn Contract: Unshackled##299668
step
Open Your Inscription Crafting Panel:
_<Create 20 Contract: Unshackled>_
|tip You may need to make more or less of these to reach 175.
Reach Level 175 Zandalari Inscription |skill Zandalari Inscription,175
step
_Congratulations!_
You Reached 175 Zandalari Inscription Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Inscription\\Leveling Guides\\Tools of the Trade - Inscription",{
author="support@zygorguides.com",
description="\nUpon completion of this guide, you will earn the Sanguine Feather Quill of Lana'thel. This allows you to create "..
"Blood Contracts and siphon the blood of nearby slain enemies.",
startlevel=50.0,
condition_end=function() return completedq(49882) end,
condition_suggested=function() return skill('Zandalari Inscription') >= 150 and level >= 50 and not completedq(49882) end,
condition_visible=function() return skill('Zandalari Inscription') >= 1 end,
},[[
step
Reach Level 150 Zandalari Inscription |skill Zandalari Inscription,175
|tip Use the "Zandalari Inscription 1-150" profession guide to accomplish this.
step
talk Chronicler Grazzul##130901
accept Drawing Blood##49943 |goto Dazar'alor/0 42.33,39.72
step
click Bloodbound Ledger
|tip Stand still until you finish channeling.
Sign the Bloodbound Ledger |q 49943/1 |goto 42.37,39.56
step
talk Chronicler Grazzul##130901
turnin Drawing Blood##49943 |goto 42.33,39.72
accept Turn to Drust##49944 |goto 42.33,39.72
step
talk Kronah##131386
turnin Turn to Drust##49944 |goto Drustvar/0 20.66,44.09
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
accept Lines In the Sand##49946 |goto 20.66,44.09
step
Enter the building |goto Vol'dun/0 27.21,51.40 < 20 |walk
talk Veriss##150318
|tip Inside the building.
turnin Lines In the Sand##49946 |goto 27.63,52.34
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
Jump down here |goto 41.88,77.72 < 20 |only if walking
Follow the path |goto 37.79,81.20 < 20 |only if walking
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
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Jewelcrafting\\Leveling Guides\\Zandalari Jewelcrafting 1-175",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Zandalari Jewelcrafting profession from 1-175.",
startlevel=5.0,
condition_end=function() return skill('Zandalari Jewelcrafting') >= 175 end,
condition_suggested=function() return skill('Zandalari Jewelcrafting') > 0 and skill('Zandalari Jewelcrafting') < 175 and level >= 5 end,
},[[
step
Enter the building |goto Dazar'alor/0 44.50,36.95 < 5 |walk
Run down the ramp |goto 44.98,36.95 < 5 |walk
Follow the path |goto 46.23,36.96 < 5 |walk
talk Seshuli##122695
|tip Inside the building.
Train Zandalari Jewelcrafting |skillmax Zandalari Jewelcrafting,175 |goto 47.06,37.92
step
talk Lona##144187
|tip Inside the building.
buy Jeweler's Kit##20815 |n
collect Jeweler's Kit##20815 |goto 47.10,38.63
step
collect 24 Viridium##153704
|tip You get these by gathering and prospecting ore found in Kul Tiras and Zuldazar, if you have Mining.
|tip You can also purchase them from the Auction House.
|tip Use your Prospecting ability on Kul Tiras or Zuldazar ore to accomplish this.
step
Open Your Jewelcrafting Crafting Panel:
_<Create 24 Straddling Viridium>_
Reach Level 25 Zandalari Jewelcrafting |skill Zandalari Jewelcrafting,25
step
Enter the building |goto 44.50,36.95 < 5 |walk
Run down the ramp |goto 44.98,36.95 < 5 |walk
Follow the path |goto 46.23,36.96 < 5 |walk
talk Seshuli##122695
|tip Inside the building.
Train Rubellite Staff of Intuition |learn Rubellite Staff of Intuition##256254 |goto 47.06,37.92
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
Reach Level 50 Zandalari Jewelcrafting |skill Zandalari Jewelcrafting,50
step
Enter the building |goto 44.50,36.95 < 5 |walk
Run down the ramp |goto 44.98,36.95 < 5 |walk
Follow the path |goto 46.23,36.96 < 5 |walk
talk Seshuli##122695
|tip Inside the building.
Train Royal Quartz Loop |learn Royal Quartz Loop##256513 |goto 47.06,37.92
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
click Shred-Master Mk1##293983
|tip Use this device to destroy old gear and turn it into Expulsom.
|tip You can purchase level 50+ gear from the Auction House to use if you don't have any.
collect 50 Expulsom##152668 |goto 45.03,39.93
step
Open Your Jewelcrafting Crafting Panel:
_<Create 25 Royal Quartz Loop>_
Reach Level 75 Zandalari Jewelcrafting |skill Zandalari Jewelcrafting,75
step
Enter the building |goto 44.50,36.95 < 5 |walk
Run down the ramp |goto 44.98,36.95 < 5 |walk
Follow the path |goto 46.23,36.96 < 5 |walk
talk Seshuli##122695
|tip Inside the building.
Train Deadly Amberblaze |learn Deadly Amberblaze##256696 |goto 47.06,37.92
step
collect 30 Amberblaze##154123
|tip You get these as a rare drop by gathering and prospecting ore found in Kul Tiras and Zuldazar, if you have Mining.
|tip You can also purchase them from the Auction House.
|tip Use your Prospecting ability on Kul Tiras or Zuldazar ore to accomplish this.
step
Open Your Jewelcrafting Crafting Panel:
_<Create 30 Deadly Amberblaze>_
Reach Level 105 Zandalari Jewelcrafting |skill Zandalari Jewelcrafting,105
step
Enter the building |goto 44.50,36.95 < 5 |walk
Run down the ramp |goto 44.98,36.95 < 5 |walk
Follow the path |goto 46.23,36.96 < 5 |walk
talk Seshuli##122695
|tip Inside the building.
Train Honorable Combatant's Staff of Intuition |learn Honorable Combatant's Staff of Intuition##269734 |goto 47.06,37.92
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
click Shred-Master Mk1##293983
|tip Use this device to destroy old gear and turn it into Expulsom.
|tip You can purchase level 50+ gear from the Auction House to use if you don't have any.
collect 60 Expulsom##152668 |goto 45.03,39.93
step
Open Your Jewelcrafting Crafting Panel:
_<Create 20 Honorable Combatant's Staff of Intuition>_
Reach Level 125 Zandalari Jewelcrafting |skill Zandalari Jewelcrafting,125
step
Enter the building |goto 44.50,36.95 < 5 |walk
Run down the ramp |goto 44.98,36.95 < 5 |walk
Follow the path |goto 46.23,36.96 < 5 |walk
talk Seshuli##122695
|tip Inside the building.
Train Kraken's Eye of Agility |learn Kraken's Eye of Agility##256701 |goto 47.06,37.92
step
collect 25 Kraken's Eye##153706
|tip You get these as an epic drop by gathering and prospecting ore found in Kul Tiras and Zuldazar, if you have Mining.
|tip You can also purchase them from the Auction House.
|tip Use your Prospecting ability on Kul Tiras or Zuldazar ore to accomplish this.
step
Open Your Jewelcrafting Crafting Panel:
_<Create 25 Kraken's Eye of Agility>_
Reach Level 150 Zandalari Jewelcrafting |skill Zandalari Jewelcrafting,175
step
Reach Level 50 |ding 50
step
Complete the Quest "A Way Home" |complete completedq(55053)
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
talk Narv##154393
Train Masterful Sea Currant |learn Masterful Sea Currant##298797 |goto Nazjatar/0 49.16,61.46
step
Open Your Jewelcrafting Crafting Panel:
_<Create 5 Masterful Sea Currant>_
Reach Level 155 Zandalari Jewelcrafting |skill Zandalari Jewelcrafting,155 |next "Choose_Gem_To_Craft"
step
label "Collect_Dark_Opal"
collect 5 Dark Opal##168189
|tip These can be prospected from Osmenite Ore in Nazjatar.
|tip Prospect them with Jewelcrafting or purchase them from the Auction House.
step
talk Narv##154393
Train Versatile Dark Opal |learn Versatile Dark Opal##298794 |goto 49.16,61.46
step
Open Your Jewelcrafting Crafting Panel:
_<Create 5 Versatile Dark Opal>_
Reach Level 155 Zandalari Jewelcrafting |skill Zandalari Jewelcrafting,155
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
talk Narv##154393
Train Quick Sand Spinel |learn Quick Sand Spinel##298796 |goto 49.16,61.46
step
Open Your Jewelcrafting Crafting Panel:
_<Create 20 Quick Sand Spinel>_
Reach Level 170 Zandalari Jewelcrafting |skill Zandalari Jewelcrafting,170 |next "Collect_Leviathan's_Eye"
step
label "Collect_Sage_Agate"
collect 20 Sage Agate##168188
|tip These can be prospected from Osmenite Ore in Nazjatar.
|tip Prospect them with Jewelcrafting or purchase them from the Auction House.
step
talk Narv##154393
Train Straddling Sage Agate |learn Straddling Sage Agate##300756 |goto 49.16,61.46
step
Open Your Jewelcrafting Crafting Panel:
_<Create 20 Straddling Sage Agate>_
Reach Level 170 Zandalari Jewelcrafting |skill Zandalari Jewelcrafting,170 |next "Collect_Leviathan's_Eye"
step
label "Collect_Lava_Lazuli"
collect 20 Lava Lazuli##168190
|tip These can be prospected from Osmenite Ore in Nazjatar.
|tip Prospect them with Jewelcrafting or purchase them from the Auction House.
step
talk Narv##154393
Train Deadly Lava Lazuli |learn Deadly Lava Lazuli##298798 |goto 49.16,61.46
step
Open Your Jewelcrafting Crafting Panel:
_<Create 20 Deadly Lava Lazuli>_
Reach Level 170 Zandalari Jewelcrafting |skill Zandalari Jewelcrafting,170
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
talk Narv##154393
Train Leviathan's Eye of Strength |learn Leviathan's Eye of Strength##298799 |goto 49.16,61.46
step
Open Your Jewelcrafting Crafting Panel:
_<Create 5 Leviathan's Eye of Strength>_
Reach Level 175 Zandalari Jewelcrafting |skill Zandalari Jewelcrafting,175 |next "Congratulations"
step
label "Craft_Intellect_Eye"
step
talk Narv##154393
Train Leviathan's Eye of Intellect |learn Leviathan's Eye of Intellect##298801 |goto 49.16,61.46
step
Open Your Jewelcrafting Crafting Panel:
_<Create 5 Leviathan's Eye of Intellect>_
Reach Level 175 Zandalari Jewelcrafting |skill Zandalari Jewelcrafting,175 |next "Congratulations"
step
label "Craft_Agility_Eye"
step
talk Narv##154393
Train Leviathan's Eye of Agility |learn Leviathan's Eye of Agility##298800 |goto 49.16,61.46
step
Open Your Jewelcrafting Crafting Panel:
_<Create 5 Leviathan's Eye of Agility>_
Reach Level 175 Zandalari Jewelcrafting |skill Zandalari Jewelcrafting,175
step
label "Congratulations"
_Congratulations!_
You Reached 175 Zandalari Jewelcrafting Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Jewelcrafting\\Leveling Guides\\Tools of the Trade - Jewelcrafting",{
author="support@zygorguides.com",
description="\nUpon completion of this guide, you will earn the Jewelhammer's Focus. This allows you to interact with shrines in various "..
"locations in Zandalar and Kul Tiras, as well as extract a gem socketed into your gear.",
startlevel=50.0,
condition_end=function() return completedq(49599) end,
condition_suggested=function() return skill('Zandalari Jewelcrafting') >= 150 and level >= 50 and not completedq(49599) end,
condition_visible=function() return skill('Zandalari Jewelcrafting') >= 1 end,
},[[
step
Reach Level 150 Zandalari Jewelcrafting |skill Zandalari Jewelcrafting,175
|tip Use the "Zandalari Jewelcrafting 1-150" profession guide to accomplish this.
step
collect 4 Rubellite##153701 |q 49583 |future
|tip You get these by gathering and prospecting ore found in Kul Tiras and Zuldazar, if you have Mining.
|tip You can also purchase them from the Auction House.
|tip Use your Prospecting ability on Kul Tiras or Zuldazar ore to accomplish this.
step
Enter the building |goto Dazar'alor/0 44.49,36.97 < 10 |walk
click Ancient Journal
|tip Inside the building.
accept A Rocky Start##49585 |goto 46.91,38.03
step
Leave the building |goto 44.50,36.95 < 10 |walk
Run up the stairs |goto 42.92,38.49 < 15 |only if walking
talk Chronicler Grazzul##130901
turnin A Rocky Start##49585 |goto 42.32,39.72
accept Digging Through the Past##49586 |goto 42.32,39.72
step
talk Examiner Alerinda##122701
Tell her _"I'm looking for a book you have on runes and carvings. Could I borrow it?"_
Watch the dialogue
collect 1 Primordial Races: Runes and Writings##155587 |q 49586/1 |goto Dazar'alor/1 36.15,46.33
step
talk Koatini##122465
buy 1 Scrolls of the Stonefather##155588 |q 49586/2 |goto Dazar'alor/0 48.88,91.08
step
talk Chronicler Shoopa##144384
Ask him _"I was told you came across an ancient earthen codex in your recent travels. Could I please borrow it?"_
collect 1 The Dungard Codex##155589 |q 49586/3 |goto 56.62,88.59
step
talk Chronicler Grazzul##130901
Tell him _"Here are the books you asked for."_
Watch the dialogue
Have Grazzul Translate the Ancient Journal |q 49586/4 |goto 42.32,39.72
step
click Ancient Journal Transcription
collect 1 Ancient Journal Transcription##155678 |q 49586/5 |goto 42.39,39.69
step
Enter the building |goto 44.51,36.97 < 10 |walk
talk Seshuli##122695
|tip Inside the building.
turnin Digging Through the Past##49586 |goto 47.05,37.92
accept The Shrine of the Dawning##49589 |goto 47.05,37.92
step
Follow the path |goto Nazmir/0 66.88,40.70 < 20 |only if walking
Cross the water |goto 62.99,36.59 < 30 |only if walking
click Shrine of the Dawning
turnin The Shrine of the Dawning##49589 |goto 61.36,37.28
accept Out With the Old##49583 |goto 61.36,37.28
step
Open Your Jewelcrafting Crafting Panel:
_<Create 4 Insightful Rubellite>_
collect 4 Insightful Rubellite##153714 |q 49583
step
click Shrine of the Dawning
turnin Out With the Old##49583 |goto 61.36,37.28
accept A Promising Beginning##55592 |goto 61.36,37.28
step
Enter the building |goto Dazar'alor/0 44.50,36.96 < 10 |walk
talk Seshuli##122695
|tip Inside the building.
turnin A Promising Beginning##55592 |goto 47.06,37.92
accept The Shrine of Nature##49587 |goto 47.06,37.92
accept The Shrine of the Sands##49588 |goto 47.06,37.92
step
Follow the road up |goto Zuldazar/0 43.25,70.47 < 30 |only if walking
Follow the path up |goto 42.24,66.69 < 15 |only if walking
click Shrine of Nature
turnin The Shrine of Nature##49587 |goto 43.15,64.37
accept Atal'Dazar: Not All That Glitters...##49582 |goto 43.15,64.37
step
Press _I_ and Queue for Atal'Dazar or Enter the Dungeon with your Group |goto Atal'Dazar/0 0.00,0.00 < 1000 |c |q 49582
step
click Eye of Dazar
|tip It's on the first platform at the top of the steps before you get to Yazma's top platform.
collect 1 Eye of Dazar##155666 |q 49582/1
step
kill Yazma##122968 |q 49582/2
|tip Yazma is the final boss of the dungeon.
step
Follow the road up |goto Zuldazar/0 43.25,70.47 < 30 |only if walking
Follow the path up |goto 42.24,66.69 < 15 |only if walking
click Shrine of Nature
turnin Atal'Dazar: Not All That Glitters...##49582 |goto 43.15,64.37
accept Setting Things Right##55596 |goto 43.15,64.36
step
Follow the path up |goto Vol'dun/0 45.56,34.71 < 20 |only if walking
Follow the path |goto 44.87,37.87 < 20 |only if walking
Jump down carefully here |goto 44.44,38.59 < 15 |only if walking
click Shrine of the Sands
turnin The Shrine of the Sands##49588 |goto 44.19,38.00
accept Sun-Speckled Dunes##49581 |goto 44.19,38.00
step
Follow the path up |goto 43.49,40.27 < 20 |only if walking
click Rough Fire Spinel##278806+
|tip They look like tiny red crystals on the ground around this area.
collect 8 Rough Fire Spinel##155665 |q 49581 |goto 43.41,45.88
step
use the Rough Fire Spinel##155665
collect 8 Polished Fire Spinel##155664 |q 49581/1
step
Follow the path |goto 43.43,42.37 < 20 |only if walking
Continue up the path |goto 43.62,39.70 < 20 |only if walking
click Shrine of the Sands
turnin Sun-Speckled Dunes##49581 |goto 44.19,38.00
accept Polished Up##55594 |goto 44.19,38.00
step
Enter the building |goto Dazar'alor/0 44.51,36.95 < 10 |walk
talk Seshuli##122695
|tip Inside the building.
turnin Polished Up##55594 |goto 47.05,37.92
turnin Setting Things Right##55596 |goto 47.05,37.92
accept The Missing Chapter##49599 |goto Dazar'alor/0 47.05,37.92
step
Travel to Dustwallow Marsh |q 49599/1 |goto Dustwallow Marsh/0 65.90,17.96
step
click Weathered Diving Helmet
Equip the Diving Helmet |havebuff 133151 |goto 65.90,17.96 |q 49599
step
click Weathered Journal
|tip Click the Diving Helmet for an underwater breathing buff.
Search for Clues |q 49599/2 |goto 65.90,17.96
step
Enter the underwater cave |goto 74.14,8.36 < 30 |walk
Enter the building |goto 77.10,17.07 < 20 |walk
Locate the Cave and Investigate |q 49599/3 |goto 78.52,17.85
step
kill Vault Guardian##130711 |q 49599/4 |goto 78.97,18.08
step
click Jewelhammer's Chest
collect The Missing Chapter##155668 |q 49599/5 |goto 79.39,18.32
step
talk Chronicler Grazzul##130901
Ask him _"Can you translate this please?"_
Watch the dialogue
Take the Missing Chapter to Grazzul |q 49599/6 |goto Dazar'alor/0 42.33,39.73
step
Enter the building |goto Dazar'alor/0 44.51,36.95 < 10 |walk
talk Seshuli##122695
|tip Inside the building.
turnin The Missing Chapter##49599 |goto Dazar'alor/0 47.05,37.92
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Leatherworking\\Leveling Guides\\Zandalari Leatherworking 1-175",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Zandalari Leatherworking profession from 1-175.",
startlevel=5.0,
condition_end=function() return skill('Zandalari Leatherworking') >= 175 end,
condition_suggested=function() return skill('Zandalari Leatherworking') > 0 and skill('Zandalari Leatherworking') < 175 and level >= 5 end,
},[[
step
talk Xanjo##122698
Train Zandalari Leatherworking |skillmax Zandalari Leatherworking,175 |goto Dazar'alor/0 44.07,34.63
step
collect 150 Coarse Leather##152541
|tip Use the "Coarse Leather" farming guide to collect them if you have Skinning.
|tip You can also purchase them from the Auction House.
step
collect 100 Blood-Stained Bone##154164
|tip Use the "Blood-Stained Bone" farming guides to collect them if you have Skinning.
|tip You can also purchase them from the Auction House.
step
Open Your Leatherworking Crafting Panel:
_<Create 25 Coarse Leather Armguards>_
Reach Level 25 Zandalari Leatherworking |skill Zandalari Leatherworking,25
step
talk Xanjo##122698
Train Coarse Leather Pauldrons |learn Coarse Leather Pauldrons##256754 |goto 44.07,34.63
step
collect 200 Coarse Leather##152541
|tip Use the "Coarse Leather" farming guides to collect them if you have Skinning.
|tip You can also purchase them from the Auction House.
step
collect 150 Blood-Stained Bone##154164
|tip Use the "Blood-Stained Bone" farming guides to collect them if you have Skinning.
|tip You can also purchase them from the Auction House.
step
Open Your Leatherworking Crafting Panel:
_<Create 25 Coarse Leather Pauldrons>_
Reach Level 50 Zandalari Leatherworking |skill Zandalari Leatherworking,50
step
talk Xanjo##122698
Train Hardened Tempest Hide |learn Hardened Tempest Hide##272278 |goto 44.07,34.63
step
collect 20 Tempest Hide##154722
|tip Use the "Tempest Hide" farming guide to collect them, if you have Skinning.
|tip You can also purchase them from the Auction House.
step
talk Aman de Child##141609
buy 20 Amber Tanning Oil##160059 |goto 43.96,33.51
step
Open Your Leatherworking Crafting Panel:
_<Create 20 Hardened Tempest Hide>_
Reach Level 70 Zandalari Leatherworking |skill Zandalari Leatherworking,70
step
talk Xanjo##122698
Train Coarse Leather Barding |learn Coarse Leather Barding##256790 |goto 44.07,34.63
step
collect 375 Coarse Leather##152541
|tip Use the "Coarse Leather" farming guides to collect them, if you have Skinning.
|tip You can also purchase them from the Auction House.
step
Open Your Leatherworking Crafting Panel:
_<Create 15 Coarse Leather Barding>_
Reach Level 85 Zandalari Leatherworking |skill Zandalari Leatherworking,85
step
talk Xanjo##122698
Train Drums of the Maelstrom |learn Drums of the Maelstrom##256791 |goto 44.07,34.63
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
Reach Level 150 Zandalari Leatherworking |skill Zandalari Leatherworking,175
step
Reach Level 50 |ding 50
step
Complete the Quest "A Way Home" |complete completedq(55053)
|tip Use the "Nazjatar" leveling guide to accomplish this.
step
collect 350 Dredged Leather##168649
|tip Skin them from Beast mobs in Nazjatar with Skinning or purchase them from the Auction House.
step
talk Jada##154321
buy 175 Nylon Thread##159959 |goto Nazjatar/0 49.09,61.52
step
talk Jada##154321
Train Dredged Leather Bladder |learn Dredged Leather Bladder##301405 |goto 49.09,61.52
step
Open Your Leatherworking Crafting Panel:
_<Create 35 Dredged Leather Bladder>_
|tip You may need to make more or less of these to reach 175.
Reach Level 175 Zandalari Leatherworking |skill Zandalari Leatherworking,175
step
_Congratulations!_
You Reached 175 Zandalari Leatherworking Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Leatherworking\\Leveling Guides\\Tools of the Trade - Leatherworking",{
author="support@zygorguides.com",
description="\nUpon completion of this guide, you will earn the RE-USE ME. This allows you to interact with drums in various "..
"locations around Zandalar and Kul Tiras, as well as summon a special mount in Zandalar and Kul Tiras.",
startlevel=50.0,
condition_end=function() return completedq(55223) end,
condition_suggested=function() return skill('Zandalari Leatherworking') >= 150 and level >= 50 and not completedq(55223) end,
condition_visible=function() return skill('Zandalari Leatherworking') >= 1 end,
},[[
step
Reach Level 150 Zandalari Leatherworking |skill Zandalari Leatherworking,175
|tip Use the "Zandalari Leatherworking 1-150" profession guide to accomplish this.
step
talk Xanjo##122698
accept The Tauren Tanner##53995 |goto Dazar'alor/0 44.07,34.64
step
talk Atikka "Ace" Moonchaser##151162
turnin The Tauren Tanner##53995 |goto 53.40,92.52
accept The Audition##55216 |goto 53.40,92.52
step
collect 75 Coarse Leather##152541 |q 55216
|tip Use the "Coarse Leather" farming guide to collect them, if you have Skinning.
|tip You can also purchase them from the Auction House.
step
collect 30 Blood-Stained Bone##154164 |q 55216
|tip Use the "Blood-Stained Bone" farming guide to collect them, if you have Skinning.
|tip You can also purchase them from the Auction House.
step
Open Your Leatherworking Crafting Panel:
_<Create 3 Drums of the Maelstrom>_
Craft 3 Drums of the Maelstrom |q 55216/1
step
talk Atikka "Ace" Moonchaser##151162
turnin The Audition##55216 |goto 53.40,92.52
accept Repaying the Debt##55217 |goto 53.40,92.52
accept Dropping by the Base##55219 |goto 53.40,92.52
accept Picking Bones##55221 |goto 53.40,92.52
step
Follow the path |goto Zuldazar/0 41.77,71.93 < 30 |only if walking
click Box of Harvested Bones##323537
|tip They look like crates on the ground around this area.
Kill Dark Iron enemies around this area
collect 18 Unwaning Bones##167549 |q 55221/1 |goto 39.27,73.24
step
talk Sheza Wildmane##3037
turnin Repaying the Debt##55217 |goto Thunder Bluff/0 69.71,26.75
accept Sheza's Prized Leather##55218 |goto 69.71,26.75
step
talk Verd Twiceswindle##151214
Tell him _"Give me the skins or the world has a few less thieves to worry about."_
Then tell him _"I asked politely."_
|tip Kill the bandits that attack, then Verd.
collect Verd's Chest Key##167673 |q 55218 |goto Mulgore/0 60.01,15.06
step
click Locked Chest
collect Rare Hides##167541 |q 55218/1 |goto 60.02,14.94
step
talk Torv Dubstomp##108017
|tip Inside Thunder Totem.
turnin Dropping by the Base##55219 |goto Thunder Totem/6 54.87,78.01
accept Bass Fishing##55220 |goto 54.87,78.01
step
kill Bassline##151248
|tip Underwater.
collect Brilliant Golden Scales##167543 |q 55220/1 |goto Highmountain/0 61.26,22.88
step
talk Atikka "Ace" Moonchaser##151162
turnin Sheza's Prized Leather##55218 |goto Dazar'alor/0 53.40,92.52
turnin Bass Fishing##55220 |goto 53.40,92.52
turnin Picking Bones##55221 |goto 53.40,92.52
accept Make Some Noise##55222 |goto 53.40,92.52
step
talk Atikka "Ace" Moonchaser##151162
Tell him _"Begin the ritual."_
Talk to Atikka to Begin the Ritual |q 55222/1 |goto 53.40,92.52
step
Watch the dialogue
click Bucket of Hides
collect 12 Supple Hides##167559 |goto 53.46,92.44 |q 55222
step
click Pail of Scales
collect 6 Cleaned Brilliant Scales##167560 |goto 53.50,92.37 |q 55222
step
click Crate of Bones
collect 18 Etched Bones##167558 |goto 53.54,92.30 |q 55222
step
Open Your Leatherworking Crafting Panel:
_<Create 6 Drum of Primal Might>_
Craft 6 Drums of Primal Might |q 55222/2
step
talk Atikka "Ace" Moonchaser##151162
turnin Make Some Noise##55222 |goto 53.40,92.52
accept Instruments of Destruction##55223 |goto 53.40,92.52
step
click Drum of Primal Might
Place the Drum at Port of Zandalar |q 55223/5 |goto Zuldazar/0 58.06,62.76
step
click Drum of Primal Might
Place the Drum at Timberfell Outpost |q 55223/1 |goto Tiragarde Sound/0 71.69,51.10
step
click Drum of Primal Might
Place the Drum at Krazzlefrazz Outpost |q 55223/2 |goto Drustvar/0 37.63,26.47
step
click Drum of Primal Might
Place the Drum at Warfang Hold |q 55223/3 |goto Stormsong Valley/0 50.35,32.80
step
click Drum of Primal Might
Place the Drum at Zul'jan Ruins |q 55223/6 |goto Nazmir/0 39.59,77.60
step
click Drum of Primal Might
Place the Drum at Terrace of the Devoted |q 55223/4 |goto Vol'dun/0 28.06,50.74
step
talk Atikka "Ace" Moonchaser##151162
turnin Instruments of Destruction##55223 |goto Dazar'alor/0 53.40,92.51
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Leveling Guides\\Zandalari Mining 1-175",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Zandalari Mining profession from 1-175.",
startlevel=5.0,
condition_end=function() return skill('Zandalari Mining') >= 175 end,
condition_suggested=function() return skill('Zandalari Mining') > 0 and skill('Zandalari Mining') < 175 and level >= 5 end,
},[[
step
talk Secott the Goldsmith##122694
Train Zandalari Mining |skillmax Zandalari Mining,175 |goto Dazar'alor/0 44.11,38.98
step
Complete the "A Way Home" Quest in Nazjatar |complete completedq(55053)
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
Reach Level 175 Zandalari Mining |skill Zandalari Mining,175
step
_Congratulations!_
You Reached 175 Zandalari Mining Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Quest Guides\\Zandalari Mining Quest Line",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the Legion Mining quest line.",
startlevel=10.0,
condition_end=function() return completedq(39830) end,
condition_suggested=function() return skill('Mining') > 0 and level >= 10 and not completedq(39830) end,
},[[
step
Enter the building |goto Dazar'alor/0 49.93,42.13 < 7 |only if walking
talk Brillin the Beauty##122690
home The Great Seal |goto Dazar'alor/1 48.67,72.29
step
Leave the building |goto Dazar'alor/0 49.93,42.13 < 7 |only if walking
Run down the stairs |goto 48.86,40.35 < 7 |only if walking
Jump down here |goto 48.51,37.78 < 7 |only if walking
Jump down here |goto 47.82,37.99 < 7 |only if walking
Continue down the stairs |goto 46.69,37.60 < 5 |only if walking
Continue down the stairs |goto 45.13,37.08 < 7 |only if walking
Continue down the stairs |goto 44.58,35.56 < 5 |only if walking
Follow the path |goto 42.87,35.60 < 10 |only if walking
talk Secott the Goldsmith##122694
Train Zandalari Mining |skillmax Zandalari Mining,150 |goto 44.11,38.98
step
talk Secott the Goldsmith##122694
Learn the Rank 1 Monelite Deposit Mining Technique |learn Monelite Deposit##253333 |goto 44.11,38.98
step
talk Secott the Goldsmith##122694
Learn the Rank 1 Storm Silver Deposit Mining Technique |learn Storm Silver Deposit##253336 |goto 44.11,38.98
step
Run up the stairs |goto Dazar'alor/0 43.26,35.58 < 5 |only if walking
Continue up the stairs |goto 45.10,35.90 < 5 |only if walking
Continue up the stairs |goto 45.42,37.62 < 5 |only if walking
Follow the path |goto 46.91,37.62 < 5 |only if walking
Continue up the stairs |goto 47.51,38.11 < 5 |only if walking
Follow the path |goto 47.51,39.64 < 5 |only if walking
Continue up the stairs |goto 48.17,38.96 < 5 |only if walking
Continue up the stairs |goto 48.38,36.93 < 5 |only if walking
Continue following the path |goto 49.59,36.98 < 5 |only if walking
Continue up the stairs |goto 50.13,37.81 < 5 |only if walking
Continue up the stairs |goto 50.99,38.27 < 5 |only if walking
Continue following the path |goto 51.00,40.82 < 5 |only if walking
talk Paku'ai Rokota##122689 |goto 51.91,41.20
Fly to the Temple of Akunda, Vol'dun |goto Vol'dun/0 53.72,89.25 |q 51962 |future |c |noway
step
map Vol'dun/0
path follow smart; loop on; ants curved; dist 20
path	56.25,49.67	55.45,48.68	54.62,47.18	52.65,48.00	52.15,52.13
path	52.59,54.37	53.64,55.26	55.43,57.07	56.00,57.61	56.66,56.82
path	57.61,56.76	57.88,57.74	58.65,59.68	58.00,61.53	58.28,63.38
path	58.10,64.24	57.72,64.40	57.87,66.69	58.08,68.09	57.85,69.06
path	56.69,69.52	55.66,69.51	55.21,71.10	54.55,72.18	55.29,72.74
path	55.54,74.54	55.93,75.47	55.66,77.08	55.84,78.61	55.29,80.19
path	55.29,72.74	55.54,74.54	55.93,75.47	55.66,77.08	55.84,78.61
path	55.29,80.19	54.60,81.50	54.10,82.83	54.26,84.14	52.89,86.15
path	53.00,87.52	52.53,88.34	50.88,88.24	49.71,87.93	48.79,87.51
path	46.71,86.03	45.28,83.53	44.66,82.40	43.13,82.28	41.71,82.54
path	41.47,81.64	40.40,80.16	38.92,79.67	37.86,78.22	35.95,76.00
path	33.80,73.42	32.06,73.13	31.71,72.62	31.69,71.96	31.01,71.01
path	30.20,69.43	29.50,67.63	29.95,66.57	30.15,65.48	30.55,64.80
path	31.02,63.68	30.93,62.41	31.50,61.29	32.32,60.55	32.99,59.34
path	33.77,58.85	35.19,58.20	35.79,57.37	36.55,56.60  	36.68,55.08
path	36.44,53.26	36.62,52.48	37.08,51.29	35.99,50.99	36.15,50.44
path	36.64,50.03	36.50,49.04	36.12,48.62	36.15,48.12	37.15,47.80
path	37.96,47.67	38.34,46.25	39.33,45.10	40.14,44.87	41.01,43.74
path	41.91,42.36	42.52,42.06	43.16,42.79	44.93,41.79	45.23,40.81
path	45.81,41.67	46.33,42.55	46.51,43.74	47.21,44.09	48.35,43.72
path	48.91,43.38	48.98,41.67	50.70,41.14	51.50,41.01	52.71,41.53
path	54.21,41.08	55.75,43.51 	56.99,46.38	57.87,49.77	57.39,50.38
click Storm Silver Deposit##276617
click Monelite Seam##276619
click Platinum Deposit##276618
|tip Track them on your minimap with "Find Minerals".
|tip Enter caves along the path for additional nodes.
Reach Level 25 Zandalari Mining |skill Zandalari Mining,25
step
Leave the building |goto Dazar'alor/0 49.93,42.13 < 7 |only if walking
Run down the stairs |goto 48.86,40.35 < 7 |only if walking
Jump down here |goto 48.51,37.78 < 7 |only if walking
Jump down here |goto 47.82,37.99 < 7 |only if walking
Continue down the stairs |goto 46.69,37.60 < 5 |only if walking
Continue down the stairs |goto 45.13,37.08 < 7 |only if walking
Continue down the stairs |goto 44.58,35.56 < 5 |only if walking
Follow the path |goto 42.87,35.60 < 10 |only if walking
talk Secott the Goldsmith##122694
Learn the Rank 1 Monelite Seam Mining Tichnique |learn Monelite Seam##253342 |goto 44.11,38.98
step
talk Secott the Goldsmith##122694
Learn the Rank 1 Platinum Deposit Mining Technique |learn Platinum Deposit##253339 |goto 44.11,38.98
step
talk Secott the Goldsmith##122694
Learn the Rank 1 Storm Silver Seam Mining Technique |learn Storm Silver Seam##253345 |goto 44.11,38.98
step
Run up the stairs |goto Dazar'alor/0 43.26,35.58 < 5 |only if walking
Continue up the stairs |goto 45.10,35.90 < 5 |only if walking
Continue up the stairs |goto 45.42,37.62 < 5 |only if walking
Follow the path |goto 46.91,37.62 < 5 |only if walking
Continue up the stairs |goto 47.51,38.11 < 5 |only if walking
Follow the path |goto 47.51,39.64 < 5 |only if walking
Continue up the stairs |goto 48.17,38.96 < 5 |only if walking
Continue up the stairs |goto 48.38,36.93 < 5 |only if walking
Continue following the path |goto 49.59,36.98 < 5 |only if walking
Continue up the stairs |goto 50.13,37.81 < 5 |only if walking
Continue up the stairs |goto 50.99,38.27 < 5 |only if walking
Continue following the path |goto 51.00,40.82 < 5 |only if walking
talk Paku'ai Rokota##122689 |goto 51.91,41.20
Fly to the Temple of Akunda, Vol'dun |goto Vol'dun/0 53.72,89.25 |q 51962 |future |c |noway
step
map Vol'dun/0
path follow smart; loop on; ants curved; dist 20
path	56.25,49.67	55.45,48.68	54.62,47.18	52.65,48.00	52.15,52.13
path	52.59,54.37	53.64,55.26	55.43,57.07	56.00,57.61	56.66,56.82
path	57.61,56.76	57.88,57.74	58.65,59.68	58.00,61.53	58.28,63.38
path	58.10,64.24	57.72,64.40	57.87,66.69	58.08,68.09	57.85,69.06
path	56.69,69.52	55.66,69.51	55.21,71.10	54.55,72.18	55.29,72.74
path	55.54,74.54	55.93,75.47	55.66,77.08	55.84,78.61	55.29,80.19
path	55.29,72.74	55.54,74.54	55.93,75.47	55.66,77.08	55.84,78.61
path	55.29,80.19	54.60,81.50	54.10,82.83	54.26,84.14	52.89,86.15
path	53.00,87.52	52.53,88.34	50.88,88.24	49.71,87.93	48.79,87.51
path	46.71,86.03	45.28,83.53	44.66,82.40	43.13,82.28	41.71,82.54
path	41.47,81.64	40.40,80.16	38.92,79.67	37.86,78.22	35.95,76.00
path	33.80,73.42	32.06,73.13	31.71,72.62	31.69,71.96	31.01,71.01
path	30.20,69.43	29.50,67.63	29.95,66.57	30.15,65.48	30.55,64.80
path	31.02,63.68	30.93,62.41	31.50,61.29	32.32,60.55	32.99,59.34
path	33.77,58.85	35.19,58.20	35.79,57.37	36.55,56.60  	36.68,55.08
path	36.44,53.26	36.62,52.48	37.08,51.29	35.99,50.99	36.15,50.44
path	36.64,50.03	36.50,49.04	36.12,48.62	36.15,48.12	37.15,47.80
path	37.96,47.67	38.34,46.25	39.33,45.10	40.14,44.87	41.01,43.74
path	41.91,42.36	42.52,42.06	43.16,42.79	44.93,41.79	45.23,40.81
path	45.81,41.67	46.33,42.55	46.51,43.74	47.21,44.09	48.35,43.72
path	48.91,43.38	48.98,41.67	50.70,41.14	51.50,41.01	52.71,41.53
path	54.21,41.08	55.75,43.51 	56.99,46.38	57.87,49.77	57.39,50.38
click Storm Silver Deposit##276617
click Monelite Seam##276619
click Platinum Deposit##276618
|tip Track them on your minimap with "Find Minerals".
|tip Enter caves along the path for additional nodes.
Reach Level 50 Zandalari Mining |skill Zandalari Mining,50
step
Leave the building |goto Dazar'alor/0 49.93,42.13 < 7 |only if walking
Run down the stairs |goto 48.86,40.35 < 7 |only if walking
Jump down here |goto 48.51,37.78 < 7 |only if walking
Jump down here |goto 47.82,37.99 < 7 |only if walking
Continue down the stairs |goto 46.69,37.60 < 5 |only if walking
Continue down the stairs |goto 45.13,37.08 < 7 |only if walking
Continue down the stairs |goto 44.58,35.56 < 5 |only if walking
Follow the path |goto 42.87,35.60 < 10 |only if walking
talk Secott the Goldsmith##122694
accept Lumbering Away##51962 |goto 44.11,38.98
accept Ritualistic Preparations##52014 |goto 44.11,38.98
step
Run up the stairs |goto 43.36,35.59 < 7 |only if walking
Follow the path |goto 44.70,35.58 < 7 |only if walking
Continue up the stairs |goto 45.10,36.11 < 7 |only if walking
Continue up the stairs |goto 45.44,37.59 < 7 |only if walking
Continue following the path |goto 46.92,37.59 < 10 |only if walking
Continue up the stairs |goto 47.48,38.14 < 7 |only if walking
Continue following the path |goto 47.55,39.41 < 10 |only if walking
Continue up the stairs |goto 48.16,38.83 < 7 |only if walking
Continue up the stairs |goto 48.42,36.95 < 7 |only if walking
Continue following the path |goto 49.78,37.03 < 10 |only if walking
Continue up the stairs |goto 50.19,37.85 < 7 |only if walking
Continue up the stairs |goto 50.99,38.29 < 10 |only if walking
Continue following the path |goto 50.95,40.91 < 10 |only if walking
Fly to the Grand Bazaar |goto 51.99,89.84 < 200 |q 51962 |c
step
Follow the path |goto 51.30,88.23 < 15 |only if walking
Continue up the stairs |goto 50.26,81.56 < 15 |only if walking
Continue following the path |goto 50.22,78.07 < 15 |only if walking
click Dry Firewood
|tip They look like brown bundles of wood wrapped in leather around this area.
collect Dry Firewood##160941 |q 51962/1 |goto 45.91,74.94
step
Run down the stairs |goto 50.00,78.74 < 15 |only if walking
Follow the path |goto 51.15,85.04 < 7 |only if walking
Continue following the path |goto 51.23,88.53 < 7 |only if walking
talk Ripa the Wind Ripper##121252 |goto 52.09,90.12
Fly to the Temple of Akunda, Vol'dun |goto Vol'dun/0 53.72,89.25 |q 52014 |future |c |noway
step
map Vol'dun/0
path follow smart; loop on; ants curved; dist 20
path	56.25,49.67	55.45,48.68	54.62,47.18	52.65,48.00	52.15,52.13
path	52.59,54.37	53.64,55.26	55.43,57.07	56.00,57.61	56.66,56.82
path	57.61,56.76	57.88,57.74	58.65,59.68	58.00,61.53	58.28,63.38
path	58.10,64.24	57.72,64.40	57.87,66.69	58.08,68.09	57.85,69.06
path	56.69,69.52	55.66,69.51	55.21,71.10	54.55,72.18	55.29,72.74
path	55.54,74.54	55.93,75.47	55.66,77.08	55.84,78.61	55.29,80.19
path	55.29,72.74	55.54,74.54	55.93,75.47	55.66,77.08	55.84,78.61
path	55.29,80.19	54.60,81.50	54.10,82.83	54.26,84.14	52.89,86.15
path	53.00,87.52	52.53,88.34	50.88,88.24	49.71,87.93	48.79,87.51
path	46.71,86.03	45.28,83.53	44.66,82.40	43.13,82.28	41.71,82.54
path	41.47,81.64	40.40,80.16	38.92,79.67	37.86,78.22	35.95,76.00
path	33.80,73.42	32.06,73.13	31.71,72.62	31.69,71.96	31.01,71.01
path	30.20,69.43	29.50,67.63	29.95,66.57	30.15,65.48	30.55,64.80
path	31.02,63.68	30.93,62.41	31.50,61.29	32.32,60.55	32.99,59.34
path	33.77,58.85	35.19,58.20	35.79,57.37	36.55,56.60  	36.68,55.08
path	36.44,53.26	36.62,52.48	37.08,51.29	35.99,50.99	36.15,50.44
path	36.64,50.03	36.50,49.04	36.12,48.62	36.15,48.12	37.15,47.80
path	37.96,47.67	38.34,46.25	39.33,45.10	40.14,44.87	41.01,43.74
path	41.91,42.36	42.52,42.06	43.16,42.79	44.93,41.79	45.23,40.81
path	45.81,41.67	46.33,42.55	46.51,43.74	47.21,44.09	48.35,43.72
path	48.91,43.38	48.98,41.67	50.70,41.14	51.50,41.01	52.71,41.53
path	54.21,41.08	55.75,43.51 	56.99,46.38	57.87,49.77	57.39,50.38
click Storm Silver Deposit##276617
|tip These share a spawn with Monelite Ore Deposits, so be sure to mine them as well.
collect 20 Unsanctified Storm Silver Ore##160440 |q 52014
step
Leave the building |goto Dazar'alor/0 49.93,42.13 < 7 |only if walking
Run down the stairs |goto 48.86,40.35 < 7 |only if walking
Jump down here |goto 48.51,37.78 < 7 |only if walking
Jump down here |goto 47.82,37.99 < 7 |only if walking
Continue down the stairs |goto 46.69,37.60 < 5 |only if walking
Continue down the stairs |goto 45.13,37.08 < 7 |only if walking
Continue down the stairs |goto 44.58,35.56 < 5 |only if walking
Follow the path |goto 42.87,35.60 < 10 |only if walking
use the Unsanctified Storm Silver Ore##160440
Use Forge to smelt Unsanctified Storm Silver Ore into Ingots |q 52014/1 |goto Dazar'alor/0 44.04,38.29
step
Run up the stairs |goto Dazar'alor/0 43.26,35.58 < 5 |only if walking
Continue up the stairs |goto 45.10,35.90 < 5 |only if walking
Continue up the stairs |goto 45.42,37.62 < 5 |only if walking
Follow the path |goto 46.91,37.62 < 5 |only if walking
Continue up the stairs |goto 47.51,38.11 < 5 |only if walking
Follow the path |goto 47.51,39.64 < 5 |only if walking
Continue up the stairs |goto 48.17,38.96 < 5 |only if walking
Continue up the stairs |goto 48.38,36.93 < 5 |only if walking
Continue following the path |goto 49.59,36.98 < 5 |only if walking
Continue up the stairs |goto 50.13,37.81 < 5 |only if walking
Continue up the stairs |goto 50.99,38.27 < 5 |only if walking
Continue following the path |goto 51.00,40.82 < 5 |only if walking
talk Paku'ai Rokota##122689 |goto 51.91,41.20
Fly to the Port of Zandalar |goto Dazar'alor/0 52.07,90.10 < 200 |q 52014 |c
step
Jump down here |goto 50.75,88.42 < 5 |only if walking
Follow the road |goto 49.95,88.67 < 7 |only if walking
Run down the stairs |goto 50.30,90.95 < 5 |only if walking
Continue following the road |goto 50.96,93.36 < 5 |only if walking
Continue following the road |goto 52.15,94.53 < 5 |only if walking
Run down the stairs |goto 52.35,95.50 < 3 |only if walking
talk Wavesinger De'zan##133538
Ask him _"Could you bless these storm silver ingots?"_
Storm Silver Ingots Blessed |q 52014/2 |goto Dazar'alor/0 52.83,95.76
step
Run up the stairs |goto 52.76,95.50 < 3 |only if walking
Follow the path |goto 52.21,95.44 < 5 |only if walking
Continue following the road |goto 52.19,94.41 < 5 |only if walking
Run up the stairs |goto 50.86,92.79 < 7 |only if walking
Continue following the road |goto 50.26,90.80 < 7 |only if walking
Run up the stairs |goto 50.26,88.82 < 5 |only if walking
Continue following the road |goto 50.33,85.76 < 5 |only if walking
Continue following the road |goto 51.06,85.77 < 5 |only if walking
Continue following the road |goto 51.26,88.55 < 7 |only if walking
talk Ripa the Wind Ripper##121252 |goto Dazar'alor/0 52.10,90.14
Fly to the Great Seal |goto Dazar'alor/0 51.65,41.21 |q 52014 |c
step
Run down the stairs |goto 48.86,40.35 < 7 |only if walking
Jump down here |goto 48.51,37.78 < 7 |only if walking
Jump down here |goto 47.82,37.99 < 7 |only if walking
Continue down the stairs |goto 46.69,37.60 < 5 |only if walking
Continue down the stairs |goto 45.13,37.08 < 7 |only if walking
Continue down the stairs |goto 44.58,35.56 < 5 |only if walking
Follow the path |goto 42.87,35.60 < 10 |only if walking
talk Secott the Goldsmith##122694
turnin Lumbering Away##51962 |goto Dazar'alor/0 44.11,38.98
turnin Lending a Hand##51965 |goto 44.11,38.98
turnin Ritualistic Preparations##52014 |goto 44.11,38.98
step
Run up the stairs |goto Dazar'alor/0 43.26,35.58 < 5 |only if walking
Continue up the stairs |goto 45.10,35.90 < 5 |only if walking
Continue up the stairs |goto 45.42,37.62 < 5 |only if walking
Follow the path |goto 46.91,37.62 < 5 |only if walking
Continue up the stairs |goto 47.51,38.11 < 5 |only if walking
Follow the path |goto 47.51,39.64 < 5 |only if walking
Continue up the stairs |goto 48.17,38.96 < 5 |only if walking
Continue up the stairs |goto 48.38,36.93 < 5 |only if walking
Continue following the path |goto 49.59,36.98 < 5 |only if walking
Continue up the stairs |goto 50.13,37.81 < 5 |only if walking
Continue up the stairs |goto 50.99,38.27 < 5 |only if walking
Continue following the path |goto 51.00,40.82 < 5 |only if walking
talk Paku'ai Rokota##122689 |goto 51.92,41.22
Fly to Vulpera Hidaway in Vol'dun |goto Vol'dun/0 54.51,56.27 < 200 |q 51964 |c
step
map Vol'dun/0
path follow smart; loop on; ants curved; dist 20
path	56.25,49.67	55.45,48.68	54.62,47.18	52.65,48.00	52.15,52.13
path	52.59,54.37	53.64,55.26	55.43,57.07	56.00,57.61	56.66,56.82
path	57.61,56.76	57.88,57.74	58.65,59.68	58.00,61.53	58.28,63.38
path	58.10,64.24	57.72,64.40	57.87,66.69	58.08,68.09	57.85,69.06
path	56.69,69.52	55.66,69.51	55.21,71.10	54.55,72.18	55.29,72.74
path	55.54,74.54	55.93,75.47	55.66,77.08	55.84,78.61	55.29,80.19
path	55.29,72.74	55.54,74.54	55.93,75.47	55.66,77.08	55.84,78.61
path	55.29,80.19	54.60,81.50	54.10,82.83	54.26,84.14	52.89,86.15
path	53.00,87.52	52.53,88.34	50.88,88.24	49.71,87.93	48.79,87.51
path	46.71,86.03	45.28,83.53	44.66,82.40	43.13,82.28	41.71,82.54
path	41.47,81.64	40.40,80.16	38.92,79.67	37.86,78.22	35.95,76.00
path	33.80,73.42	32.06,73.13	31.71,72.62	31.69,71.96	31.01,71.01
path	30.20,69.43	29.50,67.63	29.95,66.57	30.15,65.48	30.55,64.80
path	31.02,63.68	30.93,62.41	31.50,61.29	32.32,60.55	32.99,59.34
path	33.77,58.85	35.19,58.20	35.79,57.37	36.55,56.60  	36.68,55.08
path	36.44,53.26	36.62,52.48	37.08,51.29	35.99,50.99	36.15,50.44
path	36.64,50.03	36.50,49.04	36.12,48.62	36.15,48.12	37.15,47.80
path	37.96,47.67	38.34,46.25	39.33,45.10	40.14,44.87	41.01,43.74
path	41.91,42.36	42.52,42.06	43.16,42.79	44.93,41.79	45.23,40.81
path	45.81,41.67	46.33,42.55	46.51,43.74	47.21,44.09	48.35,43.72
path	48.91,43.38	48.98,41.67	50.70,41.14	51.50,41.01	52.71,41.53
path	54.21,41.08	55.75,43.51 	56.99,46.38	57.87,49.77	57.39,50.38
click Storm Silver Deposit##276617
click Monelite Seam##276619
click Platinum Deposit##276618
|tip Track them on your minimap with "Find Minerals".
|tip Enter caves along the path for additional nodes.
Reach Level 130 Zandalari Mining |skill Zandalari Mining,130
step
Leave the building |goto Dazar'alor/0 49.93,42.13 < 7 |only if walking
Run down the stairs |goto 48.86,40.35 < 7 |only if walking
Jump down here |goto 48.51,37.78 < 7 |only if walking
Jump down here |goto 47.82,37.99 < 7 |only if walking
Continue down the stairs |goto 46.69,37.60 < 5 |only if walking
Continue down the stairs |goto 45.13,37.08 < 7 |only if walking
Continue down the stairs |goto 44.58,35.56 < 5 |only if walking
Follow the path |goto 42.87,35.60 < 10 |only if walking
talk Secott the Goldsmith##122694
accept Lending a Hand##51965 |goto 44.11,38.98
accept Insufferable Bloodsuckers##51964 |goto 44.12,38.98
accept Three Sheets to the Wind##52016 |goto 44.12,38.98
step
Run up the stairs |goto 43.36,35.59 < 7 |only if walking
Follow the path |goto 44.70,35.58 < 7 |only if walking
Continue up the stairs |goto 45.10,36.11 < 7 |only if walking
Continue up the stairs |goto 45.44,37.59 < 7 |only if walking
Continue following the path |goto 46.92,37.59 < 10 |only if walking
Continue up the stairs |goto 47.48,38.14 < 7 |only if walking
Continue following the path |goto 47.55,39.41 < 10 |only if walking
Continue up the stairs |goto 48.16,38.83 < 7 |only if walking
Continue up the stairs |goto 48.42,36.95 < 7 |only if walking
Continue following the path |goto 49.78,37.03 < 10 |only if walking
Continue up the stairs |goto 50.21,37.84 < 10 |only if walking
Continue up the stairs |goto 51.00,38.33 < 10 |only if walking
Continue following the path |goto 51.03,40.89 < 10 |only if walking
talk Paku'ai Rokota##122689 |goto 51.91,41.20
Fly to the Port of Zandalar |goto Dazar'alor/0 52.07,90.10 < 200 |q 52016 |c
step
Continue following the path |goto 51.31,88.49 < 10
Enter the building |goto 51.55,85.21 < 5 |walk
talk Ximo the Callous##120840
buy Mojo'ito##162574 |q 52016 |goto 52.42,84.95
step
talk Biru The Drunk##139634
Choose _"Offer Mojo'ito"_
Give Biru The Drunk his favorite drink |q 52016/1 |goto 52.70,84.25
step
talk Biru The Drunk##139634
turnin Three Sheets to the Wind##52016 |goto 52.70,84.25
step
Follow the path |goto 52.25,84.65 < 7
Continue following the path |goto 52.49,87.03 < 7 |only if walking
Leave the building |goto 52.53,87.93 < 7 |only if walking
talk Ripa the Wind Ripper##121252 |goto Dazar'alor/0 52.09,90.10
Fly to Scaletrader's Post |goto Zuldazar/0 70.78,29.60 < 200 |q 51965 |c
step
Follow the path |goto 51.17,85.97 < 10 |only if walking
Continue following the path |goto 51.24,88.94 < 10 |only if walking
Follow the road down |goto Zuldazar/0 70.09,28.86 < 10 |only if walking
Continue following the road |goto 69.37,27.98 < 10 |only if walking
Follow the path |goto 68.78,26.62 < 10 |only if walking
kill Venomous Diemetradon##144496
collect Secott's Old Hand##160943 |q 51965/1 |goto 67.92,25.83
stickystart "Slay_Blood_Trolls"
step
Follow the road |goto 66.39,25.23 < 10 |only if walking
Continue following the road |goto 65.67,25.09 < 10 |only if walking
Continue following the road |goto 64.64,24.55 < 10 |only if walking
Continue following the road |goto 64.12,23.74 < 10 |only if walking
Continue following the road |goto 63.09,23.68 < 10 |only if walking
Continue following the road |goto 62.37,24.48 < 10 |only if walking
Continue following the road |goto 61.25,24.44 < 15 |only if walking
Follow the path |goto 59.92,22.91 < 10 |only if walking
Jump down here |goto 59.92,21.84 < 10 |only if walking
kill 8 Bloodbelly Flyer##128344 |q 51964/1 |goto 59.64,20.19
step
label "Slay_Blood_Trolls"
Kill enemies around this area
Slay #8# Blood Trolls |q 51964/2 |goto 57.67,19.97
step
Follow the road |goto 61.12,20.47 < 10 |only if walking
Continue following the road |goto 61.67,20.12 < 10 |only if walking
Continue following the road |goto 61.98,19.16 < 10 |only if walking
Continue following the road |goto 62.30,18.49 7 |only if walking
Continue following the road |goto 62.62,18.20 < 10 |only if walking
Continue following the road |goto 63.33,18.29 < 10 |only if walking
Continue following the road |goto 63.38,19.37 < 10 |only if walking
Continue following the road |goto 64.17,20.41 < 10 |only if walking
Continue following the road |goto 65.01,20.66 < 10 |only if walking
Continue following the road |goto 65.33,20.87 < 10 |only if walking
Continue following the road |goto 66.20,20.88 < 10 |only if walking
Continue following the road |goto 67.76,21.62 < 10 |only if walking
Continue following the road |goto 68.22,20.25 < 10 |only if walking
Continue following the road |goto 68.13,19.29 < 10 |only if walking
Continue following the road |goto 67.49,18.35 < 10 |only if walking
Continue following the road |goto 66.64,18.18 < 10 |only if walking
talk Lasa the Galerider##123006
Fly to the Great Seal |goto Dazar'alor/0 51.65,41.21 |q 51964 |c
step
Run down the stairs |goto Dazar'alor/0 48.86,40.35 < 7 |only if walking
Jump down here |goto 48.51,37.78 < 7 |only if walking
Jump down here |goto 47.82,37.99 < 7 |only if walking
Continue down the stairs |goto 46.69,37.60 < 5 |only if walking
Continue down the stairs |goto 45.13,37.08 < 7 |only if walking
Continue down the stairs |goto 44.58,35.56 < 5 |only if walking
Follow the path |goto 42.87,35.60 < 10 |only if walking
talk Secott the Goldsmith##122694
turnin Lending a Hand##51965 |goto 44.11,38.98
turnin Insufferable Bloodsuckers##51964 |goto 44.12,38.98
turnin Three Sheets to the Wind##52016 |goto 44.12,38.98
step
Run up the stairs |goto Dazar'alor/0 43.26,35.58 < 5 |only if walking
Continue up the stairs |goto 45.10,35.90 < 5 |only if walking
Continue up the stairs |goto 45.42,37.62 < 5 |only if walking
Follow the path |goto 46.91,37.62 < 5 |only if walking
Continue up the stairs |goto 47.51,38.11 < 5 |only if walking
Follow the path |goto 47.51,39.64 < 5 |only if walking
Continue up the stairs |goto 48.17,38.96 < 5 |only if walking
Continue up the stairs |goto 48.38,36.93 < 5 |only if walking
Continue following the path |goto 49.59,36.98 < 5 |only if walking
Continue up the stairs |goto 50.13,37.81 < 5 |only if walking
Continue up the stairs |goto 50.99,38.27 < 5 |only if walking
Continue following the path |goto 51.00,40.82 < 5 |only if walking
talk Paku'ai Rokota##122689 |goto 51.91,41.20
Fly to Vulpera Hidaway in Vol'dun |goto Vol'dun/0 54.51,56.27 < 200 |q 51971 |c
step
map Vol'dun/0
path follow smart; loop on; ants curved; dist 20
path	56.25,49.67	55.45,48.68	54.62,47.18	52.65,48.00	52.15,52.13
path	52.59,54.37	53.64,55.26	55.43,57.07	56.00,57.61	56.66,56.82
path	57.61,56.76	57.88,57.74	58.65,59.68	58.00,61.53	58.28,63.38
path	58.10,64.24	57.72,64.40	57.87,66.69	58.08,68.09	57.85,69.06
path	56.69,69.52	55.66,69.51	55.21,71.10	54.55,72.18	55.29,72.74
path	55.54,74.54	55.93,75.47	55.66,77.08	55.84,78.61	55.29,80.19
path	55.29,72.74	55.54,74.54	55.93,75.47	55.66,77.08	55.84,78.61
path	55.29,80.19	54.60,81.50	54.10,82.83	54.26,84.14	52.89,86.15
path	53.00,87.52	52.53,88.34	50.88,88.24	49.71,87.93	48.79,87.51
path	46.71,86.03	45.28,83.53	44.66,82.40	43.13,82.28	41.71,82.54
path	41.47,81.64	40.40,80.16	38.92,79.67	37.86,78.22	35.95,76.00
path	33.80,73.42	32.06,73.13	31.71,72.62	31.69,71.96	31.01,71.01
path	30.20,69.43	29.50,67.63	29.95,66.57	30.15,65.48	30.55,64.80
path	31.02,63.68	30.93,62.41	31.50,61.29	32.32,60.55	32.99,59.34
path	33.77,58.85	35.19,58.20	35.79,57.37	36.55,56.60  	36.68,55.08
path	36.44,53.26	36.62,52.48	37.08,51.29	35.99,50.99	36.15,50.44
path	36.64,50.03	36.50,49.04	36.12,48.62	36.15,48.12	37.15,47.80
path	37.96,47.67	38.34,46.25	39.33,45.10	40.14,44.87	41.01,43.74
path	41.91,42.36	42.52,42.06	43.16,42.79	44.93,41.79	45.23,40.81
path	45.81,41.67	46.33,42.55	46.51,43.74	47.21,44.09	48.35,43.72
path	48.91,43.38	48.98,41.67	50.70,41.14	51.50,41.01	52.71,41.53
path	54.21,41.08	55.75,43.51 	56.99,46.38	57.87,49.77	57.39,50.38
click Storm Silver Deposit##276617
click Monelite Seam##276619
click Platinum Deposit##276618
|tip Track them on your minimap with "Find Minerals".
|tip Enter caves along the path for additional nodes.
Reach Level 150 Zandalari Mining |skill Zandalari Mining,150
step
Leave the building |goto Dazar'alor/0 49.96,42.34 < 5 |only if walking
Follow the road |goto 50.14,41.33 < 10 |only if walking
talk Paku'ai Rokota##122689 |goto Dazar'alor/0 51.92,41.21
Fly to the Port of Zandalar |goto 52.09,89.94 < 200 |q 52046 |c
step
Jump down here |goto 50.74,88.43 < 7 |only if walking
Follow the road |goto 50.01,88.87 < 10 |only if walking
Run down the stairs |goto 50.35,90.92 < 7 |only if walking
Continue following the road |goto 50.65,93.24 < 7 |only if walking
Continue following the road |goto 50.07,95.92 < 7 |only if walking
Cross the bridge |goto 50.51,99.95 < 5 |only if walking
Run up the stairs |goto 51.22,99.85 < 5 |only if walking
Run up the stairs |goto Zuldazar/0 58.37,62.73 < 5 |only if walking
talk Dread-Admiral Tattersail##135690
Tell her _"Set sail for Stormsong Valley"_ |goto 58.46,62.99
Travel to Stormsong Valley |goto Stormsong Valley/0 51.45,26.87 < 1000 |q 52046 |c
step
Follow the path up |goto Stormsong Valley/0 51.45,26.87 < 10 |only if walking
Continue up the path |goto 51.51,28.38 < 10 |only if walking
Continue up the path |goto 52.43,29.21 < 10 |only if walking
Continue up the path |goto 52.32,30.02 < 10 |only if walking
Continue up the path |goto 51.25,30.88 < 10 |only if walking
Continue up the path |goto 50.83,31.78 < 7 |only if walking
Continue up the path |goto 51.57,32.99 < 7 |only if walking
talk Muka Stormbreaker##138097 |goto Stormsong Valley/0 51.43,33.74
Fly to Ironmaul Overlook, Stormsong Valley |goto Stormsong Valley/0 75.93,64.10 < 200 |q 52046 |c
step
map Stormsong Valley/0
path follow smart; loop on; ants curved; dist 20
path	72.75,65.64	73.49,68.74	72.43,73.58	71.16,72.66	70.21,71.78
path	69.66,72.11	69.75,73.46	68.77,75.11	68.48,76.96	67.36,77.43
path	66.41,76.44	65.18,76.96	63.64,75.77	61.94,76.88	60.41,76.91
path	60.24,75.35	58.68,75.55	58.05,76.22	56.49,76.79	55.25,78.18
path	54.30,77.70	51.72,77.92	51.06,76.57	50.27,75.41	49.45,74.99
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
accept An Exceptional Platinum Shard##52046
|tip You will eventually automatically accept this quest after looting.
step
map Stormsong Valley/0
path follow smart; loop on; ants curved; dist 20
path	72.75,65.64	73.49,68.74	72.43,73.58	71.16,72.66	70.21,71.78
path	69.66,72.11	69.75,73.46	68.77,75.11	68.48,76.96	67.36,77.43
path	66.41,76.44	65.18,76.96	63.64,75.77	61.94,76.88	60.41,76.91
path	60.24,75.35	58.68,75.55	58.05,76.22	56.49,76.79	55.25,78.18
path	54.30,77.70	51.72,77.92	51.06,76.57	50.27,75.41	49.45,74.99
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
|tip These are found in caves.
|tip Be sure to enter caves to mine while following the path.
accept An Exquisite Brooch##51971
|tip You will eventually automatically accept this quest after looting.
step
Run down the stairs |goto Dazar'alor/0 48.86,40.35 < 7 |only if walking
Jump down here |goto 48.51,37.78 < 7 |only if walking
Jump down here |goto 47.82,37.99 < 7 |only if walking
Continue down the stairs |goto 46.69,37.60 < 5 |only if walking
Continue down the stairs |goto 45.13,37.08 < 7 |only if walking
Continue down the stairs |goto 44.58,35.56 < 5 |only if walking
Follow the path |goto 42.87,35.60 < 10 |only if walking
talk Secott the Goldsmith##122694
turnin An Exquisite Brooch##51971 |goto 44.12,38.96
turnin An Exceptional Platinum Shard##52046 |goto 44.12,38.96
accept Back to Biru##52017 |goto 44.12,38.96
accept Brined Justice##52015 |goto 44.11,38.97
step
Run up the stairs |goto 43.36,35.59 < 7 |only if walking
Follow the path |goto 44.70,35.58 < 7 |only if walking
Continue up the stairs |goto 45.10,36.11 < 7 |only if walking
Continue up the stairs |goto 45.44,37.59 < 7 |only if walking
Continue following the path |goto 46.92,37.59 < 10 |only if walking
Continue up the stairs |goto 47.48,38.14 < 7 |only if walking
Continue following the path |goto 47.55,39.41 < 10 |only if walking
Continue up the stairs |goto 48.16,38.83 < 7 |only if walking
Continue up the stairs |goto 48.42,36.95 < 7 |only if walking
Continue following the path |goto 49.78,37.03 < 10 |only if walking
Continue up the stairs |goto 50.21,37.84 < 10 |only if walking
Continue up the stairs |goto 51.00,38.33 < 10 |only if walking
Continue following the path |goto 51.03,40.89 < 10 |only if walking
talk Paku'ai Rokota##122689 |goto Dazar'alor/0 51.90,41.22
Fly to the Port of Zandalar |goto 52.09,89.94 < 200 |q 52017 |c
step
Follow the path |goto 51.31,88.49 < 10
Enter the building |goto 51.55,85.21 < 5 |walk
talk Biru The Drunk##139634
|tip Inside the building.
turnin Back to Biru##52017 |goto 52.71,84.25
accept The Wrath of Grapes##52043 |goto 52.71,84.25
step
Leave the building |goto 51.74,85.19 < 5 |only if walking
Run down the stairs |goto 50.22,86.08 < 10 |only if walking
Follow the path |goto 50.51,90.15 < 10 |only if walking
click Mountain of Bacon
|tip It looks like a slab of meat on a wooden table.
collect Mountain of Bacon##160996 |q 52043/2 |goto 51.69,91.56
step
Follow the path |goto 50.72,90.09 < 10 |only if walking
click Hillock of Eggs
|tip It looks like a basket of white eggs.
collect Hillock of Eggs##160998 |q 52043/4 |goto 47.10,89.58
step
click Pile of Sausages
|tip It looks like a circle of sausage links sitting on a plate.
collect Pile of Sausages##160997 |q 52043/3 |goto 47.37,91.71
step
Follow the path |goto 49.31,90.13 < 10 |only if walking
Run down the stairs |goto 50.32,91.00 < 10 |only if walking
Continue following the path |goto 50.89,93.54 < 10 |only if walking
click Jar of Pickle
|tip It looks like a green vial hidden behind a pillar.
collect Jar of Pickle Juice##160995 |q 52043/1 |goto 52.75,95.08
step
Follow the path |goto 51.88,94.00 < 10 |only if walking
Run up the stairs |goto 50.73,92.89 < 10 |only if walking
Continue up the stairs |goto 50.21,88.89 < 10 |only if walking
Continue following the path |goto 50.37,85.30 < 10 |only if walking
Enter the building |goto 51.55,85.21 < 5 |walk
talk Biru The Drunk##139634
|tip Inside the building.
turnin The Wrath of Grapes##52043 |goto 52.70,84.26
step
Leave the building |goto 52.54,87.89 < 10 |only if walking
talk Ripa the Wind Ripper##121252 |goto Dazar'alor/0 52.10,90.10
Fly to the Forlorn Ruins, Nazmir |goto Nazmir/0 81.77,26.56 < 200 |q 52015 |c
step
Follow the path |goto Nazmir/0 80.73,26.96 < 10 |only if walking
Kill Vilescale enemies around this area
collect 100 Stolen Storm Silver Bar##160453 |q 52015/1 |goto 79.01,26.82
step
talk Zibir the Wingmaster##122198 |goto Nazmir/0 82.15,26.70
Fly to the Great Seal |goto Dazar'alor/0 51.65,41.21 |q 52015 |c
step
Run down the stairs |goto Dazar'alor/0 48.86,40.35 < 7 |only if walking
Jump down here |goto 48.51,37.78 < 7 |only if walking
Jump down here |goto 47.82,37.99 < 7 |only if walking
Continue down the stairs |goto 46.69,37.60 < 5 |only if walking
Continue down the stairs |goto 45.13,37.08 < 7 |only if walking
Continue down the stairs |goto 44.58,35.56 < 5 |only if walking
Follow the path |goto 42.87,35.60 < 10 |only if walking
talk Secott the Goldsmith##122694
turnin Brined Justice##52015 |goto 44.11,38.97
step
Run up the stairs |goto 43.36,35.59 < 7 |only if walking
Follow the path |goto 44.70,35.58 < 7 |only if walking
Continue up the stairs |goto 45.10,36.11 < 7 |only if walking
Continue up the stairs |goto 45.44,37.59 < 7 |only if walking
Continue following the path |goto 46.92,37.59 < 10 |only if walking
Continue up the stairs |goto 47.48,38.14 < 7 |only if walking
Continue following the path |goto 47.55,39.41 < 10 |only if walking
Continue up the stairs |goto 48.16,38.83 < 7 |only if walking
Continue up the stairs |goto 48.42,36.95 < 7 |only if walking
Continue following the path |goto 49.78,37.03 < 10 |only if walking
Continue up the stairs |goto 50.21,37.84 < 10 |only if walking
Continue up the stairs |goto 51.00,38.33 < 10 |only if walking
Continue following the path |goto 51.03,40.89 < 10 |only if walking
talk Paku'ai Rokota##122689 |goto Dazar'alor/0 51.90,41.22
Fly to the Port of Zandalar |goto 52.09,89.94 < 200 |q 52053 |c
step
Jump down here |goto 50.75,88.49 5 |only if walking
Follow the road |goto 50.17,89.21 < 10 |only if walking
Run down the stairs |goto 50.35,90.93 < 5 |only if walking
Continue following the road |goto 50.60,93.14 < 7 |only if walking
Continue following the road |goto 50.03,95.99 < 10 |only if walking
Cross the bridge |goto 50.48,99.96 < 5 |only if walking
Run up the stairs |goto 51.23,99.79 < 5 |only if walking
Run up the stairs |goto Zuldazar/0 58.37,62.73 < 5 |only if walking
talk Dread-Admiral Tattersail##135690 |goto 58.46,62.99
Choose _"Set sail for Stormsong Valley."_ |goto Stormsong Valley/0 51.98,24.49 < 1000 |q 52053 |c |noway
step
Follow the path |goto 51.46,26.73 < 10 |only if walking
Continue follow the path |goto 51.54,28.43 < 10 only if walking
Continue up the path |goto 52.31,29.12 < 10 |only if walking
Continue up the path |goto 52.09,30.08 < 10 |only if walking
Continue up the path |goto 51.35,32.72 < 10 |only if walking
Fly to Ironmaul Overlook |goto 75.93,64.10 < 100 |q 52053 |c |noway
step
map Stormsong Valley/0
path follow smart; loop on; ants curved; dist 20
path	72.75,65.64	73.49,68.74	72.43,73.58	71.16,72.66	70.21,71.78
path	69.66,72.11	69.75,73.46	68.77,75.11	68.48,76.96	67.36,77.43
path	66.41,76.44	65.18,76.96	63.64,75.77	61.94,76.88	60.41,76.91
path	60.24,75.35	58.68,75.55	58.05,76.22	56.49,76.79	55.25,78.18
path	54.30,77.70	51.72,77.92	51.06,76.57	50.27,75.41	49.45,74.99
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
accept The Platinum Map##52053
|tip You will eventually automatically accept this quest after looting.
step
Leave the building |goto Dazar'alor/0 49.93,42.38 < 7 |only if walking
Follow the road |goto 50.02,41.44 < 10 |only if walking
talk Paku'ai Rokota##122689 |goto 51.92,41.20
Fly to the Scorched Sands Outpost, Vol'dun |goto Vol'dun/0 43.90,76.02 < 200 |q 52053 |c
step
Follow the path |goto Vol'dun/0 43.84,75.59 < 7 |only if walking
Run up the stairs |goto 42.38,75.42 < 10 |only if walking
Follow the path down |goto 41.98,75.14 < 10 |only if walking
Continue following the path |goto 40.60,75.01 < 10 |only if walking
Continue following the path |goto 39.16,74.37 < 10 |only if walking
Continue following the path |goto 38.11,73.87 < 10 |only if walking
Continue following the path |goto 36.72,73.25 < 10 |only if walking
Continue following the path |goto 33.71,73.45 < 10 |only if walking
Continue following the path |goto 31.72,72.94 < 10 |only if walking
Continue following the path |goto 30.60,72.89 < 10 |only if walking
Continue following the path |goto 29.58,72.20 < 10 |only if walking
Continue following the path |goto 27.93,71.98 < 10 |only if walking
Continue following the path |goto 27.34,71.01 < 10 |only if walking
Enter the cave |goto 27.49,70.02 < |only if walking
talk Ta'mil Nadu##139792
turnin The Platinum Map##52053 |goto 27.70,69.88
accept An Ore for an Eye##52055 |goto 27.70,69.88
step
Leave the cave |goto 27.49,70.02 < |only if walking
Follow the path |goto 27.34,71.01 < 10 |only if walking
Continue following the path |goto 27.93,71.98 < 10 |only if walking
Continue following the path |goto 29.58,72.20 < 10 |only if walking
Continue following the path |goto 30.60,72.89 < 10 |only if walking
Continue following the path |goto 31.72,72.94 < 10 |only if walking
Continue following the path |goto 33.71,73.45 < 10 |only if walking
Continue following the path |goto 36.72,73.25 < 10 |only if walking
Continue following the path |goto 38.11,73.87 < 10 |only if walking
Continue following the path |goto 39.16,74.37 < 10 |only if walking
Continue following the path |goto 40.60,75.01 < 10 |only if walking
Follow the path down |goto 41.98,75.14 < 10 |only if walking
Run down the stairs |goto 42.38,75.42 < 10 |only if walking
Follow the path |goto Vol'dun/0 43.84,75.59 < 7 |only if walking
talk Makaanji##135654 |goto Vol'dun/0 43.90,75.92
Fly to the Port of Zandalar |goto Dazar'alor/0 52.07,90.10 < 200 |q 52055 |c
step
Jump down here |goto 50.75,88.49 5 |only if walking
Follow the road |goto 50.17,89.21 < 10 |only if walking
Run down the stairs |goto 50.35,90.93 < 5 |only if walking
Continue following the road |goto 50.60,93.14 < 7 |only if walking
Continue following the road |goto 50.03,95.99 < 10 |only if walking
Cross the bridge |goto 50.48,99.96 < 5 |only if walking
Run up the stairs |goto 51.23,99.79 < 5 |only if walking
Run up the stairs |goto Zuldazar/0 58.37,62.73 < 5 |only if walking
talk Dread-Admiral Tattersail##135690 |goto 58.46,62.99
Choose _"Set sail for Stormsong Valley."_ |goto Stormsong Valley/0 51.98,24.49 < 1000 |q 52055 |c
step
Follow the path |goto 51.46,26.73 < 10 |only if walking
Continue follow the path |goto 51.54,28.43 < 10 only if walking
Continue up the path |goto 52.31,29.12 < 10 |only if walking
Continue up the path |goto 52.09,30.08 < 10 |only if walking
Continue up the path |goto 51.35,32.72 < 10 |only if walking
Fly to Ironmaul Overlook |goto 75.93,64.10 < 100 |q 52055 |c
step
map Stormsong Valley/0
path follow smart; loop on; ants curved; dist 20
path	72.75,65.64	73.49,68.74	72.43,73.58	71.16,72.66	70.21,71.78
path	69.66,72.11	69.75,73.46	68.77,75.11	68.48,76.96	67.36,77.43
path	66.41,76.44	65.18,76.96	63.64,75.77	61.94,76.88	60.41,76.91
path	60.24,75.35	58.68,75.55	58.05,76.22	56.49,76.79	55.25,78.18
path	54.30,77.70	51.72,77.92	51.06,76.57	50.27,75.41	49.45,74.99
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
collect 20 Platinum Nugget##161082 |q 52055/1
step
Follow the path |goto Vol'dun/0 43.84,75.59 < 7 |only if walking
Run up the stairs |goto 42.38,75.42 < 10 |only if walking
Follow the path down |goto 41.98,75.14 < 10 |only if walking
Continue following the path |goto 40.60,75.01 < 10 |only if walking
Continue following the path |goto 39.16,74.37 < 10 |only if walking
Continue following the path |goto 38.11,73.87 < 10 |only if walking
Continue following the path |goto 36.72,73.25 < 10 |only if walking
Continue following the path |goto 33.71,73.45 < 10 |only if walking
Continue following the path |goto 31.72,72.94 < 10 |only if walking
Continue following the path |goto 30.60,72.89 < 10 |only if walking
Continue following the path |goto 29.58,72.20 < 10 |only if walking
Continue following the path |goto 27.93,71.98 < 10 |only if walking
Continue following the path |goto 27.34,71.01 < 10 |only if walking
Enter the cave |goto 27.49,70.02 < |only if walking
talk Ta'mil Nadu##139792
turnin An Ore for an Eye##52055 |goto 27.70,69.88
step
_Congratulations!_
You completed the Zandalari Mining questline.
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
path	60.24,75.35	58.68,75.55	58.05,76.22	56.49,76.79	55.25,78.18
path	54.30,77.70	51.72,77.92	51.06,76.57	50.27,75.41	49.45,74.99
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
Temp |confirm
step
map Vol'dun/0
path follow smart; loop on; ants curved; dist 20
path	56.25,49.67	55.45,48.68	54.62,47.18	52.65,48.00	52.15,52.13
path	52.59,54.37	53.64,55.26	55.43,57.07	56.00,57.61	56.66,56.82
path	57.61,56.76	57.88,57.74	58.65,59.68	58.00,61.53	58.28,63.38
path	58.10,64.24	57.72,64.40	57.87,66.69	58.08,68.09	57.85,69.06
path	56.69,69.52	55.66,69.51	55.21,71.10	54.55,72.18	55.29,72.74
path	55.54,74.54	55.93,75.47	55.66,77.08	55.84,78.61	55.29,80.19
path	55.29,72.74	55.54,74.54	55.93,75.47	55.66,77.08	55.84,78.61
path	55.29,80.19	54.60,81.50	54.10,82.83	54.26,84.14	52.89,86.15
path	53.00,87.52	52.53,88.34	50.88,88.24	49.71,87.93	48.79,87.51
path	46.71,86.03	45.28,83.53	44.66,82.40	43.13,82.28	41.71,82.54
path	41.47,81.64	40.40,80.16	38.92,79.67	37.86,78.22	35.95,76.00
path	33.80,73.42	32.06,73.13	31.71,72.62	31.69,71.96	31.01,71.01
path	30.20,69.43	29.50,67.63	29.95,66.57	30.15,65.48	30.55,64.80
path	31.02,63.68	30.93,62.41	31.50,61.29	32.32,60.55	32.99,59.34
path	33.77,58.85	35.19,58.20	35.79,57.37	36.55,56.60  	36.68,55.08
path	36.44,53.26	36.62,52.48	37.08,51.29	35.99,50.99	36.15,50.44
path	36.64,50.03	36.50,49.04	36.12,48.62	36.15,48.12	37.15,47.80
path	37.96,47.67	38.34,46.25	39.33,45.10	40.14,44.87	41.01,43.74
path	41.91,42.36	42.52,42.06	43.16,42.79	44.93,41.79	45.23,40.81
path	45.81,41.67	46.33,42.55	46.51,43.74	47.21,44.09	48.35,43.72
path	48.91,43.38	48.98,41.67	50.70,41.14	51.50,41.01	52.71,41.53
path	54.21,41.08	55.75,43.51 	56.99,46.38	57.87,49.77	57.39,50.38
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
path	60.24,75.35	58.68,75.55	58.05,76.22	56.49,76.79	55.25,78.18
path	54.30,77.70	51.72,77.92	51.06,76.57	50.27,75.41	49.45,74.99
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
path	60.24,75.35	58.68,75.55	58.05,76.22	56.49,76.79	55.25,78.18
path	54.30,77.70	51.72,77.92	51.06,76.57	50.27,75.41	49.45,74.99
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
click Storm Silver Deposit##276617
|tip Track them on your minimap with "Find Minerals".
|tip Enter caves along the path for additional nodes.
collect Storm Silver Ore##152579 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Leveling Guides\\Zandalari Skinning 1-175",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Zandalari Skinning profession from 1-175.",
startlevel=10.0,
condition_end=function() return skill('Zandalari Skinning') >= 175 end,
condition_suggested=function() return skill('Zandalari Skinning') > 0 and skill('Zandalari Skinning') < 175 and level >= 10 end,
},[[
step
talk Rana the Cutta##122699
Train Zandalari Skinning |skillmax Zandalari Skinning,175 |goto Dazar'alor/0 43.76,34.66
step
map Nazmir/0
path	follow smart; loop on; ants curved; dist 20
path	52.37,79.92	54.02,79.33	55.13,79.04	56.31,77.95	57.56,75.80
path	55.54,76.21	53.66,77.68
kill Razorjaw Chomper##123083+
|tip Loot and skin them.
Reach Level 175 Zandalari Skinning |skill Zandalari Skinning,175
step
_Congratulations!_
You Reached 175 Zandalari Skinning Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Quest Guides\\Zandalari Skinning Quest Guide",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the Zandalari Skinning quest line.",
startlevel=10.0,
condition_end=function() return skill('Zandalari Skinning') >= 150 end,
condition_suggested=function() return skill('Zandalari Skinning') > 0 and level >= 10 and not completedq(52213) end,
},[[
step
talk Rana the Cutta##122699
Train Zandalari Skinning |skillmax Zandalari Skinning,175 |goto Dazar'alor/0 43.76,34.66
step
talk Rana the Cutta##122699
Train Bone Gathering |learn Bone Gathering##257152 |goto 43.76,34.66
step
talk Rana the Cutta##122699
Train Leather Gathering |learn Leather Gathering##257146 |goto 43.76,34.66
step
talk Rana the Cutta##122699
Train Scale Gathering |learn Scale Gathering##257149 |goto 43.76,34.66
step
map Nazmir/0
path	follow smart; loop on; ants curved; dist 20
path	52.37,79.92	54.02,79.33	55.13,79.04	56.31,77.95	57.56,75.80
path	55.54,76.21	53.66,77.68
kill Razorjaw Chomper##123083+
|tip Loot and skin them.
Reach Level 50 Zandalari Skinning |skill Zandalari Skinning,50
step
talk Rana the Cutta##122699
accept Lost But Not Forgotten##51575 |goto Dazar'alor/0 43.76,34.66
accept Ceremonial Vestments##52214 |goto 43.76,34.66
accept Hexoskeleton##52216 |goto 43.76,34.66
step
Follow the path |goto Zuldazar/0 48.04,60.37 < 10 |only if walking
Run down the stairs |goto 47.85,60.75 < 10 |only if walking
Continue following the path |goto 47.65,63.58 < 10 |only if walking
Continue following the path |goto 47.85,65.17 < 10 |only if walking
Run down the stairs |goto 48.10,66.30 < 10 |only if walking
Continue following the path |goto 48.74,66.25 < 10 |only if walking
Kill Bittertide enemies around this area
collect Unbroken Makrura Carapace##161434 |q 52216/1 |goto 49.38,69.18
step
Follow the path |goto 48.29,69.93 < 10 |only if walking
Continue following the path |goto 46.52,70.58 < 10 |only if walking
Follow the path up |goto 45.13,71.71 < 10 |only if walking
Continue up the path |goto 45.34,74.37 < 10 |only if walking
Continue up the path |goto 44.53,75.86 < 10 |only if walking
Continue up the path |goto 44.52,77.35 < 10 |only if walking
kill Bonescreamer##140699
|tip It looks like a large purple raptor that walks around this area.
collect Rana's 'Ancient Artifact'##161430 |q 51575/1 |goto 43.78,78.21
step
Follow the path down |goto Nazmir/0 38.75,77.67 < 10 |only if walking
Continue following the path |goto 38.32,77.21 < 10 |only if walking
kill Primal Snapjaw##126723+
collect 3 Pristine Crocolisk Skin##161432 |q 52214/1 |goto 36.36,75.81
step
talk Rana the Cutta##122699
turnin Lost But Not Forgotten##51575 |goto Dazar'alor/0 43.76,34.66
turnin Ceremonial Vestments##52214 |goto 43.76,34.66
turnin Hexoskeleton##52216 |goto 43.76,34.66
step
map Nazmir/0
path	follow smart; loop on; ants curved; dist 20
path	52.37,79.92	54.02,79.33	55.13,79.04	56.31,77.95	57.56,75.80
path	55.54,76.21	53.66,77.68
kill Razorjaw Chomper##123083+
|tip Loot and skin them.
Reach Level 150 Zandalari Skinning |skill Zandalari Skinning,175
step
talk Rana the Cutta##122699
accept A Thicker Thread##52215 |goto Dazar'alor/0 43.76,34.66
accept Loa Fit For A King##52217 |goto 43.76,34.66
step
Follow the path |goto Vol'dun/0 61.82,20.69 < 10 |only if walking
Jump down carefully here |goto 61.99,19.38 < 7 |only if walking
Continue following the path |goto 62.56,17.80 < 10 |only if walking
Continue following the path |goto 62.45,14.99 < 10 |only if walking
Run up the stairs |goto 62.18,14.37 < 10 |only if walking
kill Jungleweb Crawler##123813+
collect 5 Thick Webbing##161433 |q 52215/1 |goto Vol'dun/0 60.60,14.76
step
map Zuldazar/0
path follow smart; loop on; ants straight; dist 20
path	50.32,54.50	49.59,54.28	49.04,53.33	48.20,51.67	47.69,51.64
path	47.35,52.40	47.78,53.44	48.33,53.52	48.37,54.23	48.10,54.79
path	48.84,55.12	49.55,55.12
Kill Da'kani enemies around this area
|tip Loot and skin them.
|tip This item can be looted after skinning any creature in Zandalar or Kul Tiras.
accept Ancient Skinning Knife##52213
|tip You will eventually automatically accept this quest after looting.
step
Press _I_ and Queue for Atal'Dazar or Enter the Dungeon with your Group |goto Atal'Dazar/0 0.00,0.00 < 1000 |q 52217
step
kill Rezan##143577
|tip It is the third boss of the Atal'Dazar dungeon.
collect Rezan's Bone Splinter##161429 |q 52217/1
step
kill Yazma##122968
|tip She is the last boss of the Atal'Dazar dungeon.
Slay Yazma |q 52217/2
step
talk Rana the Cutta##122699
turnin A Thicker Thread##52215 |goto Dazar'alor/0 43.76,34.66
turnin Loa Fit For A King##52217 |goto 43.76,34.66
turnin Ancient Skinning Knife##52213 |goto 43.76,34.66
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
collect Tempest Hide##154722 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Leveling Guides\\Zandalari Tailoring 1-175",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Zandalari Tailoring profession from 1-175.",
startlevel=5.0,
condition_end=function() return skill('Zandalari Tailoring') >= 175 end,
condition_suggested=function() return skill('Zandalari Tailoring') > 0 and skill('Zandalari Tailoring') < 175 and level >= 5 end,
},[[
step
talk Pin'jin the Patient##122700
Train Zandalari Tailoring |skillmax Zandalari Tailoring,175 |goto Dazar'alor/0 44.49,33.90
step
talk Aman de Child##141609
buy 4615 Nylon Thread##159959 |goto 43.96,33.50
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
Reach Level 25 Zandalari Tailoring |skill Zandalari Tailoring,25
step
talk Pin'jin the Patient##122700
Train Tidespray Linen Cloak |learn Tidespray Linen Cloak##257107 |goto 44.49,33.90
step
Open Your Tailoring Crafting Panel:
_<Create 25 Tidespray Linen Cloak>_
Reach Level 50 Zandalari Tailoring |skill Zandalari Tailoring,50
step
talk Pin'jin the Patient##122700
Train Deep Sea Bandage |learn Deep Sea Bandage##267202 |goto 44.49,33.90
step
Open Your Tailoring Crafting Panel:
_<Create 25 Deep Sea Bandage>_
Reach Level 75 Zandalari Tailoring |skill Zandalari Tailoring,75
step
talk Pin'jin the Patient##122700
Train Embroidered Deep Sea Satin |learn Embroidered Deep Sea Satin##272440 |goto 44.49,33.90
step
Open Your Tailoring Crafting Panel:
_<Create 25 Embroidered Deep Sea Satin>_
Reach Level 100 Zandalari Tailoring |skill Zandalari Tailoring,100
step
talk Pin'jin the Patient##122700
Train Battle Flag: Phalanx Defense (Rank 1) |learn Battle Flag: Phalanx Defense##257134 |goto 44.49,33.90
step
talk Pin'jin the Patient##122700
Train Battle Flag: Phalanx Defense (Rank 2) |learn Battle Flag: Phalanx Defense##257135 |goto 44.49,33.90
step
Open Your Tailoring Crafting Panel:
_<Create 555 Embroidered Deep Sea Satin>_
collect 580 Embroidered Deep Sea Satin##158378
step
Open Your Tailoring Crafting Panel:
_<Create 50 Battle Flag: Phalanx Defense>_
Reach Level 150 Zandalari Tailoring |skill Zandalari Tailoring,175
step
Reach Level 50 |ding 50
step
Complete the Quest "A Way Home" |complete completedq(55053)
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
talk Jada##154321
Train Seabreeze Saddle Blanket |learn Seabreeze Saddle Blanket##301403 |goto Nazjatar/0 49.09,61.52
step
Open Your Tailoring Crafting Panel:
_<Create 20 Seabreeze Saddle Blanket>_
Reach Level 162 Zandalari Tailoring |skill Zandalari Tailoring,162
step
talk Jada##154321
Train Saddlechute |learn Saddlechute##301409 |goto 49.09,61.52
step
Open Your Tailoring Crafting Panel:
_<Create 12 Saddlechute>_
Reach Level 170 Zandalari Tailoring |skill Zandalari Tailoring,170
step
collect 6 Mark of Honor##137642
|tip You can get these from completing Battlegrounds and various PvP quests.
|tip You can also continue making the previous item, though it will take many casts.
step
talk Jada##154321
Train Notorious Combatant's Satin Mittens (Rank 1) |learn Notorious Combatant's Satin Mittens##294835 |goto 49.09,61.52
step
talk Dazzerian##154652
buy 1 Recipe: Notorious Combatant's Satin Mittens##169580 |goto 48.81,60.70
buy 1 Recipe: Notorious Combatant's Satin Mittens##169581 |goto 48.81,60.70
step
use the Recipe: Notorious Combatant's Satin Mittens##169580
Train Notorious Combatant's Satin Mittens (Rank 2) |learn Notorious Combatant's Satin Mittens##294836
step
use the Recipe: Notorious Combatant's Satin Mittens##169581
Train Notorious Combatant's Satin Mittens (Rank 3) |learn Notorious Combatant's Satin Mittens##294837
step
Open Your Tailoring Crafting Panel:
_<Create 5 Notorious Combatant's Satin Mittens>_
Reach Level 175 Zandalari Tailoring |skill Zandalari Tailoring,175
step
_Congratulations!_
You Reached 175 Zandalari Tailoring Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Leveling Guides\\Tools of the Trade - Tailoring",{
author="support@zygorguides.com",
description="\nUpon completion of this guide, you will earn the Synchronous Thread. This grants you increased cloth drops "..
"from humanoid enemies.",
startlevel=50.0,
condition_end=function() return completedq(53962) end,
condition_suggested=function() return skill('Zandalari Tailoring') >= 150 and level >= 50 and not completedq(53962) end,
condition_visible=function() return skill('Zandalari Tailoring') >= 1 end,
},[[
step
Reach Level 150 Zandalari Tailoring |skill Zandalari Tailoring,175
|tip Use the "Zandalari Tailoring 1-150" profession guide to accomplish this.
step
talk Timeweaver Delormi##145022
accept A Friend in Needle##53938 |goto Dazar'alor/0 43.51,34.76
step
collect 5 Tidespray Linen##152576 |q 53938/1
|tip Farm them from humanoid mobs or purchase them from the Auction House.
|tip Use the "Tidespray Linen" farming guide to accomplish this.
step
collect 5 Deep Sea Satin##152577 |q 53938/2
|tip Farm them from humanoid mobs or purchase them from the Auction House.
|tip Use the "Deep Sea Satin" farming guide to accomplish this.
step
talk Timeweaver Delormi##145022
turnin A Friend in Needle##53938 |goto 43.51,34.76
step
Watch the dialogue
talk Timeweaver Delormi##145022
accept A Stitch in Time##53940 |goto 43.51,34.76
step
Watch the dialogue
Track Down a Tear in Time |q 53940/1 |goto 42.21,37.26
step
use Delormi's Synchronous Thread##167231
|tip Stand still until you finish channeling.
Repair the Zul'Farrak Time Rift |q 53940/2 |goto 43.41,36.27 |count 1
step
use Delormi's Synchronous Thread##167231
|tip Stand still until you finish channeling.
Repair the Gadgetzan Time Rift |q 53940/2 |goto 42.82,39.20 |count 2
step
use Delormi's Synchronous Thread##167231
|tip Stand still until you finish channeling.
Repair the Sandsorrow Watch Time Rift |q 53940/2 |goto 43.14,41.20 |count 3
step
use Delormi's Synchronous Thread##167231
|tip Stand still until you finish channeling.
Repair the Valley of Watchers Time Rift |q 53940/2 |goto 44.42,40.76 |count 4
step
_Next to you:_
talk Timeweaver Delormi##151137
turnin A Stitch in Time##53940
accept Tearing at the Seams##55188
step
_Next to you:_
talk Timeweaver Delormi##151137
Tell her _"I'm ready, Delormi."_
Speak with Delormi to Leave with Her |q 55188/1
step
Watch the dialogue
Teleport to Caverns of Time |goto Tanaris/18 62.11,54.13 |c |noway |q 55188
step
talk Timeweaver Delormi##151134
turnin Tearing at the Seams##55188 |goto 61.96,53.86
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
accept Cut from the Same Cloth##53962 |goto 71.58,39.77
step
talk Timeweaver Delormi##151134
Tell her _"I'm ready to leave."_
Ask Timeweaver Delormi to Return You to Your Time |q 53962/1 |goto 71.58,39.77
step
Teleport to Dazar'alor |goto Dazar'alor/0 43.13,38.48 |c |noway |q 53962
step
Click the Complete Quest Box
turnin Cut from the Same Cloth##53962 |goto 43.13,38.48
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
