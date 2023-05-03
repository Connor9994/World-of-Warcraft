local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("ProfessionsA") then return end
ZygorGuidesViewer.GuideMenuTier = "CAT"
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Alchemy\\Leveling Guides\\Alchemy 1-300",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Classic Alchemy skill from 1-300.",
condition_end=function() return skill('Alchemy') >= 300 end,
condition_suggested=function() return skill('Alchemy') > 0 and skill('Alchemy') < 300 and level >= 5 end,
},[[
step
Enter the building |goto Stormwind City/0 55.12,84.85 < 5 |walk
talk Lilyssia Nightbreeze##5499
|tip Inside the building.
Train Alchemy |skillmax Alchemy,300 |goto 55.66,86.09
|tip You must be at least level 5.
step
talk Eldraeith##5503
buy 340 Crystal Vial##3371 |goto 55.77,85.29
|only if skill("Alchemy") < 300
step
collect 59 Peacebloom##2447
|tip You can farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 60
step
collect 59 Silverleaf##765
|tip You can farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 60
step
Open Your Alchemy Crafting Panel:
_<Create 59 Minor Healing Potions>_
Reach 60 Alchemy |skill Alchemy,60
step
collect 100 Briarthorn##2450
|tip Keep any Mageroyal you find.
|tip You can farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 105
step
Enter the building |goto Stormwind City/0 55.12,84.85 < 5 |walk
talk Lilyssia Nightbreeze##5499
|tip Inside the building.
learn Lesser Healing Potion##2337 |goto 55.66,86.09
step
Open Your Alchemy Crafting Panel:
_<Create 45 Lesser Healing Potions>_
|tip You may need to craft more than 45 to reach 105.
Reach 105 Alchemy |skill Alchemy,105
step
collect 40 Mageroyal##785
|tip You can farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 110
step
collect 40 Bruiseweed##2453
|tip You can farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 140
step
Enter the building |goto Stormwind City/0 55.12,84.85 < 5 |walk
talk Lilyssia Nightbreeze##5499
|tip Inside the building.
learn Elixir of Wisdom##3171 |goto 55.66,86.09
step
Open Your Alchemy Crafting Panel:
_<Create 5 Elixir of Wisdom>_
Reach 110 Alchemy |skill Alchemy,110
step
Enter the building |goto Stormwind City/0 55.12,84.85 < 5 |walk
talk Lilyssia Nightbreeze##5499
|tip Inside the building.
learn Healing Potion##3447 |goto 55.66,86.09
step
Open Your Alchemy Crafting Panel:
_<Create 30 Healing Potions>_
|tip You may need to craft more than 30 to reach 140.
Reach 140 Alchemy |skill Alchemy,140
step
Enter the building |goto Stormwind City/0 55.12,84.85 < 5 |walk
talk Lilyssia Nightbreeze##5499
|tip Inside the building.
learn Lesser Mana Potion##3173 |goto 55.66,86.09
step
collect 45 Stranglekelp##3820
|tip You can farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 205
step
Open Your Alchemy Crafting Panel:
_<Create 15 Lesser Mana Potions>_
|tip You may need to craft more than 15 to reach 155.
Reach 155 Alchemy |skill Alchemy,155
step
Enter the building |goto Stormwind City/0 55.12,84.85 < 5 |walk
talk Lilyssia Nightbreeze##5499
|tip Inside the building.
learn Greater Healing Potion##7181 |goto 55.66,86.09
step
collect 20 Liferoot##3357
|tip You can farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 175
step
collect 30 Kingsblood##3356
|tip You can farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 185
step
Open Your Alchemy Crafting Panel:
_<Create 20 Greater Healing Potions>_
Reach 175 Alchemy |skill Alchemy,175
step
Enter the building |goto Stormwind City/0 55.12,84.85 < 5 |walk
talk Lilyssia Nightbreeze##5499
|tip Inside the building.
learn Mana Potion##3452 |goto 55.66,86.09
step
Open Your Alchemy Crafting Panel:
_<Create 10 Mana Potions>_
Reach 185 Alchemy |skill Alchemy,185
step
collect 30 Goldthorn##3821
|tip You can farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 215
step
Enter the building |goto Stormwind City/0 55.12,84.85 < 5 |walk
talk Lilyssia Nightbreeze##5499
|tip Inside the building.
learn Elixir of Agility##11449 |goto 55.66,86.09
step
Open Your Alchemy Crafting Panel:
_<Create 20 Elixir of Agility>_
Reach 205 Alchemy |skill Alchemy,205
step
collect 10 Wild Steelbloom##3355
|tip You can farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 215
step
Enter the building |goto Stormwind City/0 55.12,84.85 < 5 |walk
talk Lilyssia Nightbreeze##5499
|tip Inside the building.
learn Elixir of Greater Defense##11450 |goto 55.66,86.09
step
Open Your Alchemy Crafting Panel:
_<Create 10 Elixir of Greater Defense>_
Reach 215 Alchemy |skill Alchemy,215
step
collect 25 Sungrass##8838
|tip You can farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 240
step
Enter the building |goto Stormwind City/0 55.12,84.85 < 5 |walk
talk Lilyssia Nightbreeze##5499
|tip Inside the building.
learn Superior Healing Potion##11457 |goto 55.66,86.09
step
Open Your Alchemy Crafting Panel:
_<Create 25 Superior Healing Potion>_
Reach 240 Alchemy |skill Alchemy,240
step
collect 35 Khadgar's Whisker##3358
|tip You can farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 250
step
collect 10 Blindweed##8839
|tip You can farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 250
step
Enter the building |goto Stormwind City/0 55.12,84.85 < 5 |walk
talk Lilyssia Nightbreeze##5499
|tip Inside the building.
learn Elixir of Greater Intellect##11465 |goto 55.66,86.09
step
Open Your Alchemy Crafting Panel:
_<Create 10 Elixir of Greater Intellect>_
Reach 250 Alchemy |skill Alchemy,250
step
collect 40 Gromsblood##8846
|tip You can farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 250
step
Enter the building |goto Stormwind City/0 55.12,84.85 < 5 |walk
talk Lilyssia Nightbreeze##5499
|tip Inside the building.
learn Elixir of Detect Demon##11478 |goto 55.66,86.09
step
Open Your Alchemy Crafting Panel:
_<Create 20 Elixir of Detect Demon>_
Reach 270 Alchemy |skill Alchemy,270
step
collect 40 Sorrowmoss##13466
|tip You can farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 285
step
collect 15 Dreamfoil##13463
|tip You can farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 285
step
Enter the building |goto Stormwind City/0 55.12,84.85 < 5 |walk
talk Lilyssia Nightbreeze##5499
|tip Inside the building.
learn Elixir of the Sages##17555 |goto 55.66,86.09
step
Open Your Alchemy Crafting Panel:
_<Create 15 Elixir of the Sages>_
Reach 285 Alchemy |skill Alchemy,285
step
collect 28 Golden Sansam##13464
|tip You can farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 295
step
collect 14 Mountain Silversage##13465
|tip You can farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 295
step
Enter the building |goto Stormwind City/0 55.12,84.85 < 5 |walk
talk Lilyssia Nightbreeze##5499
|tip Inside the building.
learn Major Healing Potion##17556 |goto 55.66,86.09
step
Open Your Alchemy Crafting Panel:
_<Create 10 Major Healing Potion>_
Reach 295 Alchemy |skill Alchemy,295
step
collect 10 Icecap##13467
|tip You can farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 300
step
Enter the building |goto Stormwind City/0 55.12,84.85 < 5 |walk
talk Lilyssia Nightbreeze##5499
|tip Inside the building.
learn Purification Potion##17572 |goto 55.66,86.09
step
Open Your Alchemy Crafting Panel:
_<Create 5 Purification Potion>_
Reach 300 Alchemy |skill Alchemy,300
step
_Congratulations!_
You Reached 300 Alchemy Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Alchemy\\Leveling Guides\\Outland Alchemy 1-75",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Outland Alchemy skill from 1-75.",
condition_end=function() return skill('Outland Alchemy') >= 75 end,
condition_suggested=function() return skill('Outland Alchemy') > 0 and skill('Outland Alchemy') < 75 and level >= 5 end,
},[[
step
talk Lorokeem##19052
|tip Inside the building.
Train Outland Alchemy |skillmax Outland Alchemy,75 |goto Shattrath City/0 45.62,21.48
|tip You must be at least level 5.
step
talk Skreah##19074
buy 100 Crystal Vial##3371 |goto 45.79,20.03
step
collect 24 Golden Sansam##13464
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Outland Alchemy") < 25
step
collect 44 Felweed##22785
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Outland Alchemy") < 40
step
Open Your Alchemy Crafting Panel:
_<Create 14 Volatile Healing Potion>_
Reach 15 Outland Alchemy |skill Outland Alchemy,15
step
collect 80 Dreaming Glory##22786
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Outland Alchemy") < 75
step
talk Lorokeem##19052
|tip Inside the building.
learn Elixir of Healing Power##28545 |goto 45.62,21.48
step
Open Your Alchemy Crafting Panel:
_<Create 10 Elixir of Healing Power>_
Reach 25 Outland Alchemy |skill Outland Alchemy,25
step
collect 10 Terocone##22789
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Outland Alchemy") < 35
step
talk Lorokeem##19052
|tip Inside the building.
learn Elixir of Draenic Wisdom##39638 |goto 45.62,21.48
step
Open Your Alchemy Crafting Panel:
_<Create 10 Elixir of Draenic Wisdom>_
Reach 35 Outland Alchemy |skill Outland Alchemy,35
step
collect 10 Netherbloom##22791
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Outland Alchemy") < 40
step
talk Lorokeem##19052
|tip Inside the building.
learn Super Healing Potion##28551 |goto 45.62,21.48
step
Open Your Alchemy Crafting Panel:
_<Create 5 Super Healing Potion>_
Reach 40 Outland Alchemy |skill Outland Alchemy,40
step
talk Haalrun##18005
buy 1 Recipe: Super Mana Potion##22907 |goto Zangarmarsh/0 67.81,47.92
|tip If the recipe is sold out it will respawn in about 20-30 minutes.
step
use the Recipe: Super Mana Potion##22907
learn Super Mana Potion##28555
step
Open Your Alchemy Crafting Panel:
_<Create 15 Super Mana Potion>_
Reach 55 Outland Alchemy |skill Outland Alchemy,55
step
talk Leeli Longhaggle##19042
|tip Inside the building.
buy 1 Recipe: Major Dreamless Sleep Potion##22911 |goto Terokkar Forest/0 57.74,53.37
|tip If the recipe is sold out it will respawn in about 20-30 minutes.
step
use the Recipe: Major Dreamless Sleep Potion##22911
learn Major Dreamless Sleep Potion##28562
step
collect 40 Nightmare Vine##22792
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Outland Alchemy") < 60
step
Open Your Alchemy Crafting Panel:
_<Create 40 Major Dreamless Sleep Potion>_
Reach 75 Outland Alchemy |skill Outland Alchemy,75
step
_Congratulations!_
You Reached 75 Outland Alchemy Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Alchemy\\Leveling Guides\\Northrend Alchemy 1-75",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Northrend Alchemy skill from 1-75.",
condition_end=function() return skill('Northrend Alchemy') >= 75 end,
condition_suggested=function() return skill('Northrend Alchemy') > 0 and skill('Northrend Alchemy') < 75 and level >= 5 end,
},[[
step
talk Linzy Blackbolt##28703
|tip Inside the building.
Train Northrend Alchemy |skillmax Northrend Alchemy,75 |goto Dalaran/1 42.63,32.05
|tip You must be at least level 5.
step
talk Patricia Egan##28725
|tip Inside the building.
buy 100 Crystal Vial##3371 |goto 41.52,33.33
step
collect 20 Talandra's Rose##36907
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Northrend Alchemy") < 10
step
Open Your Alchemy Crafting Panel:
_<Create 4 Icy Mana Potion>_
Reach 5 Northrend Alchemy |skill Northrend Alchemy,5
step
collect 20 Goldclover##36901
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Northrend Alchemy") < 10
step
talk Linzy Blackbolt##28703
|tip Inside the building.
learn Potion of Nightmares##53900 |goto 42.63,32.05
step
Open Your Alchemy Crafting Panel:
_<Create 5 Potion of Nightmares>_
Reach 10 Northrend Alchemy |skill Northrend Alchemy,10
step
collect 20 Tiger Lily##36904
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Northrend Alchemy") < 20
step
talk Linzy Blackbolt##28703
|tip Inside the building.
learn Elixir of Mighty Strength##54218 |goto 42.63,32.05
step
Open Your Alchemy Crafting Panel:
_<Create 10 Elixir of Mighty Strength>_
Reach 20 Northrend Alchemy |skill Northrend Alchemy,20
step
collect 24 Goldclover##36901
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Northrend Alchemy") < 30
step
collect 24 Adder's Tongue##36903
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Northrend Alchemy") < 30
step
talk Linzy Blackbolt##28703
|tip Inside the building.
learn Elixir of Mighty Agility##53840 |goto 42.63,32.05
step
Open Your Alchemy Crafting Panel:
_<Create 12 Elixir of Mighty Agility>_
Reach 30 Northrend Alchemy |skill Northrend Alchemy,30
step
collect 20 Icethorn##36906
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Northrend Alchemy") < 40
step
talk Linzy Blackbolt##28703
|tip Inside the building.
learn Indestructible Potion##53905 |goto 42.63,32.05
step
Open Your Alchemy Crafting Panel:
_<Create 10 Indestructible Potion>_
Reach 40 Northrend Alchemy |skill Northrend Alchemy,40
step
collect 30 Lichbloom##36905
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Northrend Alchemy") < 55
step
talk Linzy Blackbolt##28703
|tip Inside the building.
learn Runic Mana Potion##53837 |goto 42.63,32.05
step
Open Your Alchemy Crafting Panel:
_<Create 30 Runic Mana Potion>_
|tip You may need to make more of these to reach 55.
Reach 55 Northrend Alchemy |skill Northrend Alchemy,55
step
collect 5 Dark Jade##36932
|tip Prospect them with Jewelcrafting from Northrend Ore or purchase them from the Auction House.
step
collect 5 Huge Citrine##36929
|tip Prospect them with Jewelcrafting from Northrend Ore or purchase them from the Auction House.
step
talk Linzy Blackbolt##28703
|tip Inside the building.
learn Transmute: Earthsiege Diamond##57427 |goto 42.63,32.05
step
Open Your Alchemy Crafting Panel:
_<Create 5 Transmute: Earthsiege Diamond>_
Reach 60 Northrend Alchemy |skill Northrend Alchemy,60
step
collect 105 Lichbloom##36905
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Northrend Alchemy") < 75
step
collect 15 Frost Lotus##36908
|tip Farm them with Herbalism or purchase them from the Auction House.
|tip These are rare herbs.
|only if skill("Northrend Alchemy") < 75
step
kill Living Lasher##30845
collect 45 Crystallized Life##37704 |goto Wintergrasp/0 9.33,61.10
|tip You can also purchase them from the Auction House.
|only if skill("Northrend Alchemy") < 75
step
talk Linzy Blackbolt##28703
|tip Inside the building.
learn Flask of Stoneblood##53902 |goto 42.63,32.05
step
Open Your Alchemy Crafting Panel:
_<Create 15 Flask of Stoneblood>_
Reach 75 Northrend Alchemy |skill Northrend Alchemy,75
step
_Congratulations!_
You Reached 75 Northrend Alchemy Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Alchemy\\Leveling Guides\\Cataclysm Alchemy 1-75",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Cataclysm Alchemy skill from 1-75.",
condition_end=function() return skill('Cataclysm Alchemy') >= 75 end,
condition_suggested=function() return skill('Cataclysm Alchemy') > 0 and skill('Cataclysm Alchemy') < 75 and level >= 5 end,
},[[
step
talk Lilyssia Nightbreeze##5499
|tip Inside the building.
Train Cataclysm Alchemy |skillmax Cataclysm Alchemy,75 |goto Stormwind City/0 55.66,86.09
|tip You must be at least level 5.
step
talk Maria Lumere##1313
buy 100 Crystal Vial##3371 |goto 55.89,85.63
|only if skill("Cataclysm Alchemy") < 75
step
collect 85 Cinderbloom##52983
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Cataclysm Alchemy") < 65
step
Open Your Alchemy Crafting Panel:
_<Create 4 Draught of War>_
|tip You may need to make a few more.
Reach 5 Cataclysm Alchemy |skill Cataclysm Alchemy,5
step
talk Lilyssia Nightbreeze##5499
|tip Inside the building.
learn Ghost Elixir##80477 |goto 55.66,86.09
step
Open Your Alchemy Crafting Panel:
_<Create 5 Ghost Elixir>_
|tip You may need to make a few more.
Reach 10 Cataclysm Alchemy |skill Cataclysm Alchemy,10
step
collect 15 Azshara's Veil##52985
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Cataclysm Alchemy") < 25
step
talk Lilyssia Nightbreeze##5499
|tip Inside the building.
learn Volcanic Potion##80481 |goto 55.66,86.09
step
Open Your Alchemy Crafting Panel:
_<Create 5 Volcanic Potion>_
Reach 15 Cataclysm Alchemy |skill Cataclysm Alchemy,15
step
talk Lilyssia Nightbreeze##5499
|tip Inside the building.
learn Elixir of the Cobra##80484 |goto 55.66,86.09
step
Open Your Alchemy Crafting Panel:
_<Create 10 Elixir of the Cobra>_
|tip You may need to make a few more.
Reach 25 Cataclysm Alchemy |skill Cataclysm Alchemy,25
step
collect 25 Heartblossom##52986
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Cataclysm Alchemy") < 45
step
talk Lilyssia Nightbreeze##5499
|tip Inside the building.
learn Elixir of Deep Earth##80488 |goto 55.66,86.09
step
Open Your Alchemy Crafting Panel:
_<Create 5 Elixir of Deep Earth>_
Reach 30 Cataclysm Alchemy |skill Cataclysm Alchemy,30
step
talk Lilyssia Nightbreeze##5499
|tip Inside the building.
learn Elixir of Impossible Accuracy##80491 |goto 55.66,86.09
step
Open Your Alchemy Crafting Panel:
_<Create 5 Elixir of Impossible Accuracy>_
Reach 35 Cataclysm Alchemy |skill Cataclysm Alchemy,35
step
collect 60 Whiptail##52988
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Cataclysm Alchemy") < 75
step
talk Lilyssia Nightbreeze##5499
|tip Inside the building.
learn Mythical Mana Potion##80494 |goto 55.66,86.09
step
Open Your Alchemy Crafting Panel:
_<Create 5 Mythical Mana Potion>_
Reach 40 Cataclysm Alchemy |skill Cataclysm Alchemy,40
step
collect 45 Volatile Life##52329
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Cataclysm Alchemy") < 65
step
talk Lilyssia Nightbreeze##5499
|tip Inside the building.
learn Golemblood Potion##80496 |goto 55.66,86.09
step
Open Your Alchemy Crafting Panel:
_<Create 5 Golemblood Potion>_
Reach 45 Cataclysm Alchemy |skill Cataclysm Alchemy,45
step
collect 45 Twilight Jasmine##52987
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Cataclysm Alchemy") < 70
step
talk Lilyssia Nightbreeze##5499
|tip Inside the building.
learn Mythical Healing Potion##80498 |goto 55.66,86.09
step
Open Your Alchemy Crafting Panel:
_<Create 27 Mythical Healing Potion>_
Reach 60 Cataclysm Alchemy |skill Cataclysm Alchemy,60
step
talk Lilyssia Nightbreeze##5499
|tip Inside the building.
learn Flask of Titanic Strength##80723 |goto 55.66,86.09
step
Open Your Alchemy Crafting Panel:
_<Create 5 Flask of Titanic Strength>_
Reach 65 Cataclysm Alchemy |skill Cataclysm Alchemy,65
step
collect 15 Nightstone##52180
|tip Prospect them with Jewelcrafting from Cataclysm Ore, mine them from Cataclysm Mining nodes, or purchase them from the Auction House.
|only if skill("Cataclysm Alchemy") < 70
step
talk Lilyssia Nightbreeze##5499
|tip Inside the building.
learn Transmute: Demonseye##80248 |goto 55.66,86.09
step
Open Your Alchemy Crafting Panel:
_<Create 5 Transmute: Demonseye>_
Reach 70 Cataclysm Alchemy |skill Cataclysm Alchemy,70
step
collect 15 Alicite##52179
|tip Prospect them with Jewelcrafting from Cataclysm Ore, mine them from Cataclysm Mining nodes, or purchase them from the Auction House.
|only if skill("Cataclysm Alchemy") < 75
step
talk Lilyssia Nightbreeze##5499
|tip Inside the building.
learn Transmute: Amberjewel##80247 |goto 55.66,86.09
step
Open Your Alchemy Crafting Panel:
_<Create 5 Transmute: Amberjewel>_
Reach 75 Cataclysm Alchemy |skill Cataclysm Alchemy,75
step
_Congratulations!_
You Reached 75 Cataclysm Alchemy Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Archaeology\\Leveling Guides\\Archaeology 1-600",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Archaeology skill from 1-600.",
condition_end=function() return skill('Archaeology') >= 600 end,
condition_suggested=function() return skill('Archaeology') < 600 and level >= 5 end,
},[[
step
Reach Level 5 |ding 5
step
Enter the building |goto Stormwind City/0 84.14,26.15 < 15 |walk |only if not ZGV.InPhase('BFA')
talk Harrison Jones##44238 |only if not ZGV.InPhase('BFA')
talk Jane Hudson##136106 |only if ZGV.InPhase('BFA')
|tip Inside the building.
Train Apprentice Archaeology |skillmax Archaeology,75 |goto 85.81,25.95 |only if not ZGV.InPhase('BFA')
Train Apprentice Archaeology |skillmax Archaeology,75 |goto Boralus/0 68.34,8.47 |only if ZGV.InPhase('BFA')
step
Search for dig sites on your world map
|tip You can earn points from any dig site in any zone.
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
Reach 50 Archaeology Skill |skill Archaeology,50
step
Enter the building |goto Stormwind City/0 84.14,26.15 < 15 |walk |only if not ZGV.InPhase('BFA')
talk Harrison Jones##44238 |only if not ZGV.InPhase('BFA')
talk Jane Hudson##136106 |only if ZGV.InPhase('BFA')
|tip Inside the building.
Train Journeyman Archaeology |skillmax Archaeology,150 |goto 85.81,25.95 |only if not ZGV.InPhase('BFA')
Train Journeyman Archaeology |skillmax Archaeology,150 |goto Boralus/0 68.34,8.47 |only if ZGV.InPhase('BFA')
step
Search for dig sites on your world map
|tip You can earn points from any dig site in any zone.
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
Reach 125 Archaeology Skill |skill Archaeology,125
step
Enter the building |goto Stormwind City/0 84.14,26.15 < 15 |walk |only if not ZGV.InPhase('BFA')
talk Harrison Jones##44238 |only if not ZGV.InPhase('BFA')
talk Jane Hudson##136106 |only if ZGV.InPhase('BFA')
|tip Inside the building.
Train Expert Archaeology |skillmax Archaeology,225 |goto 85.81,25.95 |only if not ZGV.InPhase('BFA')
Train Expert Archaeology |skillmax Archaeology,225 |goto Boralus/0 68.34,8.47 |only if ZGV.InPhase('BFA')
step
Search for dig sites on your world map
|tip You can earn points from any dig site in any zone.
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
Reach 200 Archaeology Skill |skill Archaeology,200
step
Enter the building |goto Stormwind City/0 84.14,26.15 < 15 |walk |only if not ZGV.InPhase('BFA')
talk Harrison Jones##44238 |only if not ZGV.InPhase('BFA')
talk Jane Hudson##136106 |only if ZGV.InPhase('BFA')
|tip Inside the building.
Train Artisan Archaeology |skillmax Archaeology,300 |goto 85.81,25.95 |only if not ZGV.InPhase('BFA')
Train Artisan Archaeology |skillmax Archaeology,300 |goto Boralus/0 68.34,8.47 |only if ZGV.InPhase('BFA')
step
Search for dig sites on your world map
|tip You can earn points from any dig site in any zone.
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
Reach 275 Archaeology Skill |skill Archaeology,275
step
Enter the building |goto Stormwind City/0 84.14,26.15 < 15 |walk |only if not ZGV.InPhase('BFA')
talk Harrison Jones##44238 |only if not ZGV.InPhase('BFA')
talk Jane Hudson##136106 |only if ZGV.InPhase('BFA')
|tip Inside the building.
Train Master Archaeology |skillmax Archaeology,375 |goto 85.81,25.95 |only if not ZGV.InPhase('BFA')
Train Master Archaeology |skillmax Archaeology,375 |goto Boralus/0 68.34,8.47 |only if ZGV.InPhase('BFA')
step
Search for dig sites on your world map
|tip You can earn points from any dig site in any zone.
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
Reach 350 Archaeology Skill |skill Archaeology,350
step
Enter the building |goto Stormwind City/0 84.14,26.15 < 15 |walk |only if not ZGV.InPhase('BFA')
talk Harrison Jones##44238 |only if not ZGV.InPhase('BFA')
talk Jane Hudson##136106 |only if ZGV.InPhase('BFA')
|tip Inside the building.
Train Grand Master Archaeology |skillmax Archaeology,450 |goto 85.81,25.95 |only if not ZGV.InPhase('BFA')
Train Grand Master Archaeology |skillmax Archaeology,450 |goto Boralus/0 68.34,8.47 |only if ZGV.InPhase('BFA')
step
Search for dig sites on your world map
|tip You can earn points from any dig site in any zone.
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
Reach 425 Archaeology Skill |skill Archaeology,425
step
Enter the building |goto Stormwind City/0 84.14,26.15 < 15 |walk |only if not ZGV.InPhase('BFA')
talk Harrison Jones##44238 |only if not ZGV.InPhase('BFA')
talk Jane Hudson##136106 |only if ZGV.InPhase('BFA')
|tip Inside the building.
Train Illustrious Grand Master Archaeology |skillmax Archaeology,525 |goto 85.81,25.95 |only if not ZGV.InPhase('BFA')
Train Illustrious Grand Master Archaeology |skillmax Archaeology,525 |goto Boralus/0 68.34,8.47 |only if ZGV.InPhase('BFA')
step
Search for dig sites on your world map
|tip You can earn points from any dig site in any zone.
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
Reach 525 Archaeology Skill |skill Archaeology,525
step
Enter the building |goto Stormwind City/0 84.14,26.15 < 15 |walk |only if not ZGV.InPhase('BFA')
talk Harrison Jones##44238 |only if not ZGV.InPhase('BFA')
talk Jane Hudson##136106 |only if ZGV.InPhase('BFA')
|tip Inside the building.
Train Zen Master Archaeology |skillmax Archaeology,600 |goto 85.81,25.95 |only if not ZGV.InPhase('BFA')
Train Zen Master Archaeology |skillmax Archaeology,600 |goto Boralus/0 68.34,8.47 |only if ZGV.InPhase('BFA')
step
Search for dig sites on your world map
|tip You can earn points from any dig site in any zone.
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
Reach 600 Archaeology Skill |skill Archaeology,600
step
_Congratulations!_
You Reached 600 Archaeology Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Blacksmithing\\Leveling Guides\\Blacksmithing 1-300",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Blacksmithing skill from 1-300.",
condition_end=function() return skill('Blacksmithing') >= 300 end,
condition_suggested=function() return skill('Blacksmithing') > 0 and skill('Blacksmithing') < 300 and level >= 5 end,
},[[
step
talk Therum Deepforge##5511
Train Blacksmithing |skillmax Blacksmithing,300 |goto Stormwind City/0 63.67,37.00
|tip You must be at least level 5.
step
talk Kaita Deepforge##5512
buy 1 Blacksmith Hammer##5956 |goto 63.62,37.76
|only if itemcount() == 0
step
collect 130 Rough Stone##2835
|tip Farm them with Mining or purchase them from the Auction House.
|tip You can mine Rough Stone from Copper Veins.
|only if skill("Blacksmithing") < 25
step
Open Your Blacksmithing Crafting Panel:
_<Create 25 Rough Sharpening Stone>_
|tip You may need to craft a few more.
Reach 25 Blacksmithing |skill Blacksmithing,25 |goto 63.71,37.00
step
talk Therum Deepforge##5511
learn Rough Grinding Stone##3320 |goto 63.67,37.00
step
Open Your Blacksmithing Crafting Panel:
_<Create 50 Rough Grinding Stone>_
|tip You may need to craft a few more.
|tip Save at least 20 for later.
Reach 65 Blacksmithing |skill Blacksmithing,65 |goto 63.71,37.00
step
collect 100 Coarse Stone##2836
|tip Farm them with Mining or purchase them from the Auction House.
|tip Coarse Stone can be mined from Tin Veins and Mithril and Truesilver Deposits.
|only if skill("Blacksmithing") < 90
step
talk Therum Deepforge##5511
learn Coarse Sharpening Stone##2665 |goto 63.67,37.00
step
Open Your Blacksmithing Crafting Panel:
_<Create 15 Coarse Sharpening Stone>_
|tip You may need to craft a few more.
Reach 75 Blacksmithing |skill Blacksmithing,75 |goto 63.71,37.00
step
talk Therum Deepforge##5511
learn Coarse Grinding Stone##3326 |goto 63.67,37.00
step
Open Your Blacksmithing Crafting Panel:
_<Create 20 Coarse Grinding Stone>_
|tip You may need to craft a few more.
|tip Save at least 20 for later.
Reach 90 Blacksmithing |skill Blacksmithing,90 |goto 63.71,37.00
step
collect 100 Copper Bar##2840
|tip Farm and Smelt them with Mining or purchase them from the Auction House.
|only if skill("Blacksmithing") < 100
step
collect 10 Silver Bar##2842
|tip Farm and Smelt them with Mining or purchase them from the Auction House.
|only if skill("Blacksmithing") < 105
step
collect 115 Heavy Stone##2838
|tip Farm them with Mining or purchase them from the Auction House.
|only if skill("Blacksmithing") < 140
step
collect 180 Bronze Bar##2841
|tip Farm and Smelt them with Mining or purchase them from the Auction House.
|only if skill("Blacksmithing") < 155
step
talk Therum Deepforge##5511
learn Runed Copper Belt##2666 |goto 63.67,37.00
step
Open Your Blacksmithing Crafting Panel:
_<Create 10 Runed Copper Belt>_
Reach 100 Blacksmithing |skill Blacksmithing,100 |goto 63.71,37.00
step
talk Therum Deepforge##5511
learn Silver Skeleton Key##19666 |goto 63.67,37.00
step
Open Your Blacksmithing Crafting Panel:
_<Create 10 Silver Skeleton Key>_
|tip You may need to make less, collected extra materials just in case.
Reach 105 Blacksmithing |skill Blacksmithing,105 |goto 63.71,37.00
step
talk Therum Deepforge##5511
learn Rough Bronze Leggings##2668 |goto 63.67,37.00
step
Open Your Blacksmithing Crafting Panel:
_<Create 5 Rough Bronze Leggings>_
Reach 110 Blacksmithing |skill Blacksmithing,110 |goto 63.71,37.00
step
talk Therum Deepforge##5511
learn Rough Bronze Shoulders##3328 |goto 63.67,37.00
step
Open Your Blacksmithing Crafting Panel:
_<Create 15 Rough Bronze Shoulders>_
Reach 125 Blacksmithing |skill Blacksmithing,125 |goto 63.71,37.00
step
talk Therum Deepforge##5511
learn Heavy Grinding Stone##3337 |goto 63.67,37.00
step
Open Your Blacksmithing Crafting Panel:
_<Create 35 Heavy Grinding Stone>_
|tip You may need to craft a few more.
|tip Save at least 20 for later.
Reach 140 Blacksmithing |skill Blacksmithing,140 |goto 63.71,37.00
step
talk Therum Deepforge##5511
learn Rough Bronze Shoulders##3328 |goto 63.67,37.00
step
Open Your Blacksmithing Crafting Panel:
_<Create 5 Rough Bronze Shoulders>_
Reach 145 Blacksmithing |skill Blacksmithing,145 |goto 63.71,37.00
step
talk Therum Deepforge##5511
learn Patterned Bronze Bracers##2672 |goto 63.67,37.00
step
Open Your Blacksmithing Crafting Panel:
_<Create 10 Patterned Bronze Bracers>_
Reach 155 Blacksmithing |skill Blacksmithing,155 |goto 63.71,37.00
step
talk Jillian Tanner##5565
|tip Inside the building.
buy 35 Green Dye##2605 |goto 71.57,62.76
|only if skill("Blacksmithing") < 190
step
collect 230 Iron Bar##3575
|tip Farm and Smelt them with Mining or purchase them from the Auction House.
|only if skill("Blacksmithing") < 200
step
talk Therum Deepforge##5511
learn Green Iron Leggings##3506 |goto 63.67,37.00
step
Open Your Blacksmithing Crafting Panel:
_<Create 10 Green Iron Leggings>_
Reach 165 Blacksmithing |skill Blacksmithing,165 |goto 63.71,37.00
step
talk Therum Deepforge##5511
learn Green Iron Bracers##3501 |goto 63.67,37.00
step
Open Your Blacksmithing Crafting Panel:
_<Create 25 Green Iron Bracers>_
Reach 190 Blacksmithing |skill Blacksmithing,190 |goto 63.71,37.00
step
collect 50 Steel Bar##3859
|tip Farm and Smelt them with Mining or purchase them from the Auction House.
|only if skill("Blacksmithing") < 200
step
talk Therum Deepforge##5511
learn Golden Scale Bracers##7223 |goto 63.67,37.00
step
Open Your Blacksmithing Crafting Panel:
_<Create 10 Golden Scale Bracers>_
Reach 200 Blacksmithing |skill Blacksmithing,200 |goto 63.71,37.00
step
collect 20 Solid Stone##7912
|tip Farm them with Mining or purchase them from the Auction House.
|tip Solid Stone can be Mined from Mithril Deposits.
|only if skill("Blacksmithing") < 200
step
collect 144 Mageweave Cloth##4338
|tip Farm them from humanoid mobs or purchase them from the Auction House.
|only if skill("Blacksmithing") < 210
step
collect 318 Mithril Bar##3860
|tip Farm and Smelt them with Mining or purchase them from the Auction House.
|only if skill("Blacksmithing") < 250
step
collect 35 Dense Stone##12365
|tip Farm them with Mining or purchase them from the Auction House.
|tip Solid Stone can be Mined from Small and Rich Thorium Veins.
|only if skill("Blacksmithing") < 260
step
talk Therum Deepforge##5511
learn Solid Sharpening Stone##9918 |goto 63.67,37.00
step
Open Your Blacksmithing Crafting Panel:
_<Create 20 Solid Sharpening Stone>_
Reach 210 Blacksmithing |skill Blacksmithing,210 |goto 63.71,37.00
step
talk Therum Deepforge##5511
learn Heavy Mithril Gauntlet##9928 |goto 63.67,37.00
step
Open Your Blacksmithing Crafting Panel:
_<Create 15 Heavy Mithril Gauntlet>_
Reach 225 Blacksmithing |skill Blacksmithing,225 |goto 63.71,37.00
step
talk Harggan##8161
|tip Inside the building.
buy 1 Plans: Mithril Scale Bracers##7995 |goto The Hinterlands/0 13.44,45.02
|tip If it is not available, it will respawn in 30-40 minutes.
step
use the Plans: Mithril Scale Bracers##7995
learn Mithril Scale Bracers##9937
step
Open Your Blacksmithing Crafting Panel:
_<Create 11 Mithril Scale Bracers>_
Reach 236 Blacksmithing |skill Blacksmithing,236 |goto Stormwind City/0 63.71,37.00
step
talk Therum Deepforge##5511
learn Mithril Coif##9961 |goto 63.67,37.00
step
Open Your Blacksmithing Crafting Panel:
_<Create 14 Mithril Coif>_
Reach 250 Blacksmithing |skill Blacksmithing,250 |goto 63.71,37.00
step
talk Therum Deepforge##5511
learn Dense Sharpening Stone##16641 |goto 63.67,37.00
step
Open Your Blacksmithing Crafting Panel:
_<Create 20 Dense Sharpening Stone>_
|tip You may need to create a few more.
Reach 260 Blacksmithing |skill Blacksmithing,260 |goto 63.71,37.00
step
collect 428 Thorium Bar##12359
|tip Farm and Smelt them with Mining or purchase them from the Auction House.
|only if skill("Blacksmithing") < 300
step
collect 10 Star Ruby##7910
|tip Farm them with Mining or purchase them from the Auction House.
|tip Star Rubies can by mined from Mithril and Truesilver deposits and Small and Rich Thorium Veins.
|only if skill("Blacksmithing") < 300
step
talk Therum Deepforge##5511
learn Thorium Bracers##16644 |goto 63.67,37.00
step
Open Your Blacksmithing Crafting Panel:
_<Create 16 Thorium Bracers>_
Reach 276 Blacksmithing |skill Blacksmithing,276 |goto 63.71,37.00
step
talk Therum Deepforge##5511
learn Imperial Plate Bracers##16649 |goto 63.67,37.00
step
Open Your Blacksmithing Crafting Panel:
_<Create 15 Imperial Plate Bracers>_
Reach 291 Blacksmithing |skill Blacksmithing,291 |goto 63.71,37.00
step
talk Therum Deepforge##5511
learn Thorium Helm##16653 |goto 63.67,37.00
step
Open Your Blacksmithing Crafting Panel:
_<Create 10 Thorium Helm>_
Reach 300 Blacksmithing |skill Blacksmithing,300 |goto 63.71,37.00
step
_Congratulations!_
You Reached 300 Blacksmithing Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Blacksmithing\\Leveling Guides\\Outland Blacksmithing 1-75",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Outland Blacksmithing skill from 1-75.",
condition_end=function() return skill('Outland Blacksmithing') >= 75 end,
condition_suggested=function() return skill('Outland Blacksmithing') > 0 and skill('Outland Blacksmithing') < 75 and level >= 5 end,
},[[
step
talk Zula Slagfury##20125
Train Outland Blacksmithing |skillmax Outland Blacksmithing,75 |goto Shattrath City/0 69.81,41.98
|tip You must be at least level 5.
step
talk Viggz Shinesparked##19661
buy 1 Blacksmith Hammer##5956 |goto 64.96,69.65
|only if itemcount(5956) == 0
step
collect 55 Netherweave Cloth##21877
|tip Farm them from humanoid mobs or purchase them from the Auction House.
|only if skill("Outland Blacksmithing") < 60
step
collect 95 Fel Iron Bar##23445
|tip Farm and Smelt them with Mining or purchase them from the Auction House.
|only if skill("Outland Blacksmithing") < 25
step
collect 115 Adamantite Bar##23446
|tip Farm and Smelt them with Mining or purchase them from the Auction House.
|only if skill("Outland Blacksmithing") < 60
step
talk Zula Slagfury##20125
learn Fel Weightstone##34607 |goto 69.81,41.98
step
Open Your Blacksmithing Crafting Panel:
_<Create 5 Fel Weightstone>_
|tip You may need to craft a few more.
Reach 5 Outland Blacksmithing |skill Outland Blacksmithing,5 |goto 69.46,42.53
step
talk Zula Slagfury##20125
learn Fel Iron Plate Belt##29547 |goto 69.81,41.98
step
Open Your Blacksmithing Crafting Panel:
_<Create 10 Fel Iron Plate Belt>_
Reach 15 Outland Blacksmithing |skill Outland Blacksmithing,15 |goto 69.46,42.53
step
talk Zula Slagfury##20125
learn Fel Iron Chain Gloves##29552 |goto 69.81,41.98
step
Open Your Blacksmithing Crafting Panel:
_<Create 5 Fel Iron Chain Gloves>_
Reach 20 Outland Blacksmithing |skill Outland Blacksmithing,20 |goto 69.46,42.53
step
talk Zula Slagfury##20125
learn Fel Iron Plate Boots##29548 |goto 69.81,41.98
step
Open Your Blacksmithing Crafting Panel:
_<Create 5 Fel Iron Plate Boots>_
Reach 25 Outland Blacksmithing |skill Outland Blacksmithing,25 |goto 69.46,42.53
step
talk Zula Slagfury##20125
learn Lesser Rune of Warding##32284 |goto 69.81,41.98
step
Open Your Blacksmithing Crafting Panel:
_<Create 25 Lesser Rune of Warding>_
|tip You may need to craft a few more.
Reach 35 Outland Blacksmithing |skill Outland Blacksmithing,35 |goto 69.46,42.53
step
talk Aaron Hollman##19662
|tip He walks around this area.
buy 1 Plans: Adamantite Cleaver##23591 |goto 64.07,72.10
|tip If the recipe is sold out it will respawn in 5-10 minutes.
|only if skill("Outland Blacksmithing") < 40
step
use the Plans: Adamantite Cleaver##23591
learn Adamantite Cleaver##29568
step
Open Your Blacksmithing Crafting Panel:
_<Create 5 Adamantite Cleaver>_
Reach 40 Outland Blacksmithing |skill Outland Blacksmithing,40 |goto 69.46,42.53
step
talk Mari Stonehand##19373
buy 1 Plans: Lesser Ward of Shielding##23638 |goto Shadowmoon Valley/0 36.79,55.05
|tip You may have to wait up to one hour for it to restock if it isn't available.
step
use the Plans: Lesser Ward of Shielding##23638
learn Lesser Ward of Shielding##29728
step
Open Your Blacksmithing Crafting Panel:
_<Create 25 Lesser Ward of Shielding>_
|tip You may need to create a few more.
Reach 50 Outland Blacksmithing |skill Outland Blacksmithing,50 |goto 36.77,54.84
step
Reach Honored with the Cenarion Expedition |complete rep ('Cenarion Expedition') >= Honored
|tip Use the "Cenarion Expedition" reputation guide to accomplish this.
step
talk Fedryen Swiftspear##17904
buy 1 Plans: Adamantite Weightstone##28632 |goto Zangarmarsh/0 79.26,63.67
|only if skill("Outland Blacksmithing") < 60
step
use the Plans: Adamantite Weightstone##28632
learn Adamantite Weightstone##34608
step
Open Your Blacksmithing Crafting Panel:
_<Create 25 Adamantite Weightstone>_
|tip You may need to create a few more.
Reach 60 Outland Blacksmithing |skill Outland Blacksmithing,60 |goto Shattrath City/0 69.46,42.53
step
collect 150 Felsteel Bar##23448
|tip Farm and Smelt them with Mining or purchase them from the Auction House.
|only if skill("Outland Blacksmithing") < 75
step
kill Auchenai Monk##18497+
collect 1 Plans: Felsteel Gloves##23605 |goto Auchenai Crypts/2 46.65,83.65
|tip You may need to kill a few before it drops.
|tip Auchenai Monks are found throughout the instance.
|only if skill("Outland Blacksmithing") < 75
step
use the Plans: Felsteel Gloves##23605
learn Felsteel Gloves##29619
step
Open Your Blacksmithing Crafting Panel:
_<Create 15 Felsteel Gloves>_
|tip You may need to craft a few more.
Reach 75 Outland Blacksmithing |skill Outland Blacksmithing,75 |goto Shattrath City/0 69.46,42.53
step
_Congratulations!_
You Reached 75 Outland Blacksmithing Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Blacksmithing\\Leveling Guides\\Northrend Blacksmithing 1-75",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Northrend Blacksmithing skill from 1-75.",
condition_end=function() return skill('Northrend Blacksmithing') >= 75 end,
condition_suggested=function() return skill('Northrend Blacksmithing') > 0 and skill('Northrend Blacksmithing') < 75 and level >= 5 end,
},[[
step
talk Alard Schmied##28694
|tip Inside the building.
Train Northrend Blacksmithing |skillmax Northrend Blacksmithing,75 |goto Dalaran/1 45.33,27.69
|tip You must be at least level 5.
step
collect 180 Cobalt Bar##36916
|tip Farm and Smelt them with Mining or purchase them from the Auction House.
|only if skill("Northrend Blacksmithing") < 30
step
collect 750 Saronite Bar##36913
|tip Farm and Smelt them with Mining or purchase them from the Auction House.
|only if skill("Northrend Blacksmithing") < 75
step
collect 40 Eternal Earth##35624
|tip Farm them from elementals or purchase them from the Auction House.
|tip Combine ten Crystallized Earth into one Eternal Earth.
|only if skill("Northrend Blacksmithing") < 75
step
talk Alard Schmied##28694
|tip Inside the building.
learn Cobalt Gauntlets##55835 |goto 45.33,27.69
step
Open Your Blacksmithing Crafting Panel:
_<Create 4 Cobalt Gauntlets>_
Reach 5 Northrend Blacksmithing |skill Northrend Blacksmithing,5 |goto 45.10,28.67
step
talk Alard Schmied##28694
|tip Inside the building.
learn Spiked Cobalt Boots##54918 |goto 45.33,27.69
step
Open Your Blacksmithing Crafting Panel:
_<Create 5 Spiked Cobalt Boots>_
Reach 10 Northrend Blacksmithing |skill Northrend Blacksmithing,10 |goto 45.10,28.67
step
talk Alard Schmied##28694
|tip Inside the building.
learn Spiked Cobalt Shoulders##54941 |goto 45.33,27.69
step
Open Your Blacksmithing Crafting Panel:
_<Create 5 Spiked Cobalt Shoulders>_
Reach 15 Northrend Blacksmithing |skill Northrend Blacksmithing,15 |goto 45.10,28.67
step
talk Alard Schmied##28694
|tip Inside the building.
learn Notched Cobalt War Axe##55204 |goto 45.33,27.69
step
Open Your Blacksmithing Crafting Panel:
_<Create 5 Notched Cobalt War Axe>_
Reach 20 Northrend Blacksmithing |skill Northrend Blacksmithing,20 |goto 45.10,28.67
step
talk Alard Schmied##28694
|tip Inside the building.
learn Spiked Cobalt Belt##54946 |goto 45.33,27.69
step
Open Your Blacksmithing Crafting Panel:
_<Create 5 Spiked Cobalt Belt>_
Reach 25 Northrend Blacksmithing |skill Northrend Blacksmithing,25 |goto 45.10,28.67
step
talk Alard Schmied##28694
|tip Inside the building.
learn Horned Cobalt Helm##54949 |goto 45.33,27.69
step
Open Your Blacksmithing Crafting Panel:
_<Create 5 Horned Cobalt Helm>_
Reach 30 Northrend Blacksmithing |skill Northrend Blacksmithing,30 |goto 45.10,28.67
step
talk Alard Schmied##28694
|tip Inside the building.
learn Brilliant Saronite Boots##55057 |goto 45.33,27.69
step
Open Your Blacksmithing Crafting Panel:
_<Create 10 Brilliant Saronite Boots>_
Reach 40 Northrend Blacksmithing |skill Northrend Blacksmithing,40 |goto 45.10,28.67
step
talk Alard Schmied##28694
|tip Inside the building.
learn Tempered Saronite Gauntlets##55015 |goto 45.33,27.69
step
Open Your Blacksmithing Crafting Panel:
_<Create 5 Tempered Saronite Gauntlets>_
Reach 45 Northrend Blacksmithing |skill Northrend Blacksmithing,45 |goto 45.10,28.67
step
talk Alard Schmied##28694
|tip Inside the building.
learn Daunting Handguards##55301 |goto 45.33,27.69
step
Open Your Blacksmithing Crafting Panel:
_<Create 10 Daunting Handguards>_
Reach 55 Northrend Blacksmithing |skill Northrend Blacksmithing,55 |goto 45.10,28.67
step
talk Alard Schmied##28694
|tip Inside the building.
learn Daunting Legplates##55303 |goto 45.33,27.69
step
Open Your Blacksmithing Crafting Panel:
_<Create 20 Daunting Legplates>_
|tip You will likely need to craft several more of these to reach max level.
Reach 75 Northrend Blacksmithing |skill Northrend Blacksmithing,75 |goto 45.10,28.67
step
_Congratulations!_
You Reached 75 Northrend Blacksmithing Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Blacksmithing\\Leveling Guides\\Cataclysm Blacksmithing 1-75",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Cataclysm Blacksmithing skill from 1-75.",
condition_end=function() return skill('Cataclysm Blacksmithing') >= 75 end,
condition_suggested=function() return skill('Cataclysm Blacksmithing') > 0 and skill('Cataclysm Blacksmithing') < 75 and level >= 5 end,
},[[
step
talk Therum Deepforge##5511
Train Cataclysm Blacksmithing |skillmax Cataclysm Blacksmithing,75 |goto Stormwind City/0 63.67,37.00
|tip You must be at least level 5.
step
collect 390 Obsidium Bar##54849
|tip Farm and Smelt them with Mining or purchase them from the Auction House.
|only if skill("Cataclysm Blacksmithing") < 5
step
collect 320 Elementium Bar##52186
|tip Farm and Smelt them with Mining or purchase them from the Auction House.
|only if skill("Cataclysm Blacksmithing") < 75
step
collect 10 Volatile Earth##52327
|tip Farm them from elementals or purchase them from the Auction House.
|only if skill("Cataclysm Blacksmithing") < 20
step
collect 150 Volatile Fire##52325
|tip Farm them from elementals or purchase them from the Auction House.
|only if skill("Cataclysm Blacksmithing") < 75
step
collect 2 Hardened Elementium Bar##53039
|tip Farm and Smelt them with Mining or purchase them from the Auction House.
|only if skill("Cataclysm Blacksmithing") < 75
step
Open Your Blacksmithing Crafting Panel:
_<Create 195 Folded Obsidium>_
|tip Make all of these, you will need them later.
Reach 5 Cataclysm Blacksmithing |skill Cataclysm Blacksmithing,5 |goto 63.66,36.64
|only if skill("Cataclysm Blacksmithing") < 60
step
talk Therum Deepforge##5511
learn Redsteel Bracers##76262 |goto 63.67,37.00
step
Open Your Blacksmithing Crafting Panel:
_<Create 5 Redsteel Bracers>_
Reach 10 Cataclysm Blacksmithing |skill Cataclysm Blacksmithing,10 |goto 63.66,36.64
step
talk Therum Deepforge##5511
learn Redsteel Belt##76264 |goto 63.67,37.00
step
Open Your Blacksmithing Crafting Panel:
_<Create 10 Redsteel Belt>_
Reach 20 Cataclysm Blacksmithing |skill Cataclysm Blacksmithing,20 |goto 63.66,36.64
step
talk Therum Deepforge##5511
learn Redsteel Boots##76265 |goto 63.67,37.00
step
Open Your Blacksmithing Crafting Panel:
_<Create 5 Redsteel Boots>_
Reach 25 Cataclysm Blacksmithing |skill Cataclysm Blacksmithing,25 |goto 63.66,36.64
step
talk Therum Deepforge##5511
learn Obsidium Skeleton Key##76438 |goto 63.67,37.00
step
Open Your Blacksmithing Crafting Panel:
_<Create 10 Obsidium Skeleton Key>_
|tip You may need to create a few more.
Reach 35 Cataclysm Blacksmithing |skill Cataclysm Blacksmithing,35 |goto 63.66,36.64
step
talk Therum Deepforge##5511
learn Redsteel Shoulders##76266 |goto 63.67,37.00
step
Open Your Blacksmithing Crafting Panel:
_<Create 5 Redsteel Shoulders>_
Reach 40 Cataclysm Blacksmithing |skill Cataclysm Blacksmithing,40 |goto 63.66,36.64
step
talk Therum Deepforge##5511
learn Redsteel Legguards##76267 |goto 63.67,37.00
step
Open Your Blacksmithing Crafting Panel:
_<Create 10 Redsteel Legguards>_
Reach 50 Cataclysm Blacksmithing |skill Cataclysm Blacksmithing,50 |goto 63.66,36.64
step
talk Therum Deepforge##5511
learn Hardened Obsidium Breastplate##76261 |goto 63.67,37.00
step
Open Your Blacksmithing Crafting Panel:
_<Create 10 Hardened Obsidium Breastplate>_
Reach 60 Cataclysm Blacksmithing |skill Cataclysm Blacksmithing,60 |goto 63.66,36.64
step
talk Kaita Deepforge##5512
buy 1 Plans: Vicious Pyrium Belt##66119 |goto 63.63,37.76
|tip This costs 20 Elementium Bars.
step
use the Plans: Vicious Pyrium Belt##66119
learn Vicious Pyrium Belt##76458
step
Open Your Blacksmithing Crafting Panel:
_<Create 10 Vicious Pyrium Belt>_
Reach 70 Cataclysm Blacksmithing |skill Cataclysm Blacksmithing,70 |goto 63.66,36.64
step
talk Kaita Deepforge##5512
buy 1 Plans: Vicious Pyrium Boots##66120 |goto 63.63,37.76
|tip This costs 2 Hardened Elementium Bars.
step
use the Plans: Vicious Pyrium Boots##66120
learn Vicious Pyrium Boots##76459
step
Open Your Blacksmithing Crafting Panel:
_<Create 5 Vicious Pyrium Boots>_
Reach 75 Cataclysm Blacksmithing |skill Cataclysm Blacksmithing,75 |goto 63.66,36.64
step
_Congratulations!_
You Reached 75 Cataclysm Blacksmithing Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Clam Meat",{
author="support@zygorguides.com",
description="\nClam Meat can be gathered from Nazj'vel in southern Darkshore.",
},[[
step
talk Zidormi##141489
Ask her _"Can you show me what Darkshore was like before the battle?"_
Travel to the Past |complete ZGV.InPhase('Old Darnassus') |goto Darkshore/0 48.86,24.46
step
Kill Darkscale enemies around this area
|tip Along the waterline around this island.
use the Small Barnacled Clam##5523
|tip Clam Meat can be found inside.
collect Clam Meat##5503 |n |goto Darkshore/0 32.51,84.37
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Leveling Guides\\Cooking 1-300",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Cooking skill from 1-300.",
condition_end=function() return skill('Cooking') >= 300 end,
condition_suggested=function() return skill('Cooking') > 0 and skill('Cooking') < 300 and level >= 5 end,
},[[
step
talk Stephen Ryback##5482
|tip Inside the building.
Train Cooking |skillmax Cooking,300 |goto Stormwind City/0 77.28,53.21
|tip You must be at least level 5.
step
talk Erika Tate##5483
|tip Inside the building.
buy 60 Simple Flour##30817 |goto 77.63,53.06
|only if skill("Cooking") < 40
step
talk Erika Tate##5483
|tip Inside the building.
buy 60 Mild Spices##2678 |goto 77.63,53.06
|only if skill("Cooking") < 40
step
talk Stephen Ryback##5482
|tip Inside the building.
learn Spice Bread##37836 |goto 77.28,53.21
step
Open Your Cooking Crafting Panel:
_<Create 60 Spice Bread>_
|tip The recipe will be green by level 35 cooking.
|tip You may not need to craft 60.
Reach 40 Cooking |skill Cooking,40 |goto 56.10,61.33
step
collect 40 Bear Meat##3173
|tip Farm them or purchase them from the Auction House.
|only if skill("Cooking") < 80
step
talk Drac Roughcut##1465
|tip Inside the building.
buy 1 Recipe: Smoked Bear Meat##6892 |goto Loch Modan/0 35.57,49.15
|only if skill("Cooking") < 80
step
use the Recipe: Smoked Bear Meat##6892
learn Smoked Bear Meat##8607
step
Open Your Cooking Crafting Panel:
_<Create 40 Smoked Bear Meat>_
Reach 80 Cooking |skill Cooking,80 |goto Stormwind City/0 77.58,52.85
step
collect 30 Clam Meat##5503
|tip Farm them with the "Clam Meat" farming guide or purchase them from the Auction House.
|only if skill("Cooking") < 130
step
talk Erika Tate##5483
|tip Inside the building.
buy 30 Refreshing Spring Water##159 |goto 77.63,53.06
|only if skill("Cooking") < 130
step
talk Stephen Ryback##5482
|tip Inside the building.
learn Boiled Clams##6499 |goto 77.28,53.21
step
Open Your Cooking Crafting Panel:
_<Create 30 Boiled Clams>_
|tip You may have to make a few more.
collect 30 Boiled Clams##6499 |goto 56.10,61.33
step
collect 60 Crawler Meat##2674
|tip Farm them with the "Crawler Meat" farming guide or purchase them from the Auction House.
|only if skill("Cooking") < 135
step
talk Stephen Ryback##5482
|tip Inside the building.
learn Crab Cake##2544 |goto Stormwind City/0 77.28,53.21
step
Open Your Cooking Crafting Panel:
_<Create 60 Crab Cake>_
|tip You may have to make a few more.
Reach 135 Cooking |skill Cooking,135 |goto 56.10,61.33
step
talk Kendor Kabonka##340
|tip Inside the building.
buy 1 Recipe: Curiously Tasty Omelet##3682 |goto 76.60,52.86
|only if skill("Cooking") < 175
step
use the Recipe: Curiously Tasty Omelet##3682
learn Curiously Tasty Omelet##3376
stickystart "Collect_Raptor_Flesh"
step
collect 50 Raptor Egg##3685
|tip Farm them with the "Raptor Egg" farming guide or purchase them from the Auction House.
|only if skill("Cooking") < 175
step
label "Collect_Raptor_Flesh"
collect 50 Raptor Flesh##12184 |goto Arathi Highlands/0 46,68
|tip Farm them with the "Raptor Flesh" farming guide or purchase them from the Auction House.
|only if skill("Cooking") < 225
step
Open Your Cooking Crafting Panel:
_<Create 50 Curiously Tasty Omelet>_
Reach 175 Cooking |skill Cooking,175 |goto Stormwind City/0 56.10,61.33
step
talk Corporal Bluth##734
buy 1 Recipe: Roast Raptor##12228 |goto Northern Stranglethorn/0 47.44,10.21
|only if skill("Cooking") < 225
step
use the Recipe: Roast Raptor##12228
learn Roast Raptor##15855
step
Open Your Cooking Crafting Panel:
_<Create 50 Roast Raptor>_
Reach 225 Cooking |skill Cooking,225 |goto 56.10,61.33
step
talk Himmik##11187
|tip Inside the building.
buy 1 Recipe: Monster Omelet##16110 |goto Winterspring/0 59.82,51.57
|only if skill("Cooking") < 250
step
use the Recipe: Monster Omelet##16110
learn Monster Omelet##15933
step
collect 25 Giant Egg##12207
|tip Farm them with the "Giant Egg" farming guide or purchase them from the Auction House.
|only if skill("Cooking") < 250
step
Open Your Cooking Crafting Panel:
_<Create 25 Monster Omelet>_
Reach 250 Cooking |skill Cooking,250 |goto Stormwind City/0 56.10,61.33
step
collect 60 Bear Flank##35562
|tip Farm them with the "Bear Flank" farming guide or purchase them from the Auction House.
|only if skill("Cooking") < 285
step
talk Stephen Ryback##5482
|tip Inside the building.
learn Juicy Bear Burger##46688 |goto Stormwind City/0 77.28,53.21
step
Open Your Cooking Crafting Panel:
_<Create 35 Juicy Bear Burger>_
|tip You may need to make a few more.
Reach 285 Cooking |skill Cooking,285 |goto Stormwind City/0 56.10,61.33
step
talk Zidormi##128607
|tip She is at the top of the ramp leading from Un'Goro Crater to Silithus.
Ask her _"Can you show me what Silithus was like before the Wound in the World?"_
Travel to the Past |complete ZGV.InPhase('Old Silithus') |goto Silithus/0 78.93,21.97 |q 8307 |future
step
talk Calandrath##15174
|tip Inside the building.
accept Desert Recipe##8307 |goto 55.52,36.77
step
click Sandy Cookbook##180503
turnin Desert Recipe##8307 |goto 43.56,42.04
accept Sharing the Knowledge##8313 |goto 43.56,42.04
step
talk Calandrath##15174
turnin Sharing the Knowledge##8313 |goto 55.52,36.77
step
learn Smoked Desert Dumplings##24801 |goto 55.52,36.77
step
collect 15 Sandworm Meat##20424
|tip Farm them with the "Sandworm Meat" farming guide or purchase them from the Auction House.
|only if skill("Cooking") < 300
step
Open Your Cooking Crafting Panel:
_<Create 15 Smoked Desert Dumplings>_
Reach 300 Cooking |skill Cooking,300 |goto Stormwind City/0 56.10,61.33
step
_Congratulations!_
You Reached 300 Cooking Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Leveling Guides\\Outland Cooking 1-75",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Outland Cooking skill from 1-75.",
condition_end=function() return skill('Outland Cooking') >= 75 end,
condition_suggested=function() return skill('Outland Cooking') > 0 and skill('Outland Cooking') < 75 and level >= 5 end,
},[[
step
Enter the building |goto Hellfire Peninsula/0 54.91,63.62 < 10 |walk
talk Gaston##18987
|tip Inside the building.
Train Outland Cooking |skillmax Outland Cooking,75 |goto 54.03,63.56
|tip You must be at least level 5.
step
talk Sid Limbardi##16826
|tip Inside the building.
buy 1 Recipe: Ravager Dog##27688 |goto 54.22,63.60
step
use the Recipe: Ravager Dog##27688
learn Ravager Dog##33284
|only if skill("Outland Cooking") < 25
step
collect 30 Ravager Flesh##27674
|tip Farm them with the "Ravager Flesh" farming guide or purchase them from the Auction House.
|only if skill("Outland Cooking") < 25
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 24 Ravager Dog>_
Reach 25 Cooking |skill Outland Cooking,25
step
talk Uriku##20096
buy 1 Recipe: Talbuk Steak##27693 |goto Nagrand/0 56.21,73.33
|only if skill("Outland Cooking") < 55
step
use the Recipe: Talbuk Steak##27693
learn Talbuk Steak##33289
step
collect 40 Talbuk Venison##27682
|tip Farm them with the "Talbuk Venison" farming guide or purchase them from the Auction House.
|only if skill("Outland Cooking") < 55
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 30 Talbuk Steak>_
|tip You may need to make a few more.
Reach 55 Cooking |skill Outland Cooking,55
step
talk Xerintha Ravenoak##20916
buy 1 Recipe: Mok'Nathal Shortribs##31675 |goto Blade's Edge Mountains/0 62.48,40.34
|only if skill("Outland Cooking") < 75
step
use the Recipe: Mok'Nathal Shortribs##31675
learn Mok'Nathal Shortribs##38867
step
collect 60 Raptor Ribs##31670
|tip Farm them with the "Raptor Ribs" farming guide or purchase them from the Auction House.
|only if skill("Outland Cooking") < 75
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 60 Mok'Nathal Shortribs>_
Reach 75 Cooking |skill Outland Cooking,75
step
_Congratulations!_
You Reached 75 Outland Cooking Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Leveling Guides\\Northrend Cooking 1-75",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Northrend Cooking skill from 1-75.",
condition_end=function() return skill('Northrend Cooking') >= 75 end,
condition_suggested=function() return skill('Northrend Cooking') > 0 and skill('Northrend Cooking') < 75 and level >= 5 end,
},[[
step
Enter the building |goto Dalaran/1 45.31,60.12 < 10 |walk
talk Katherine Lee##28705
|tip Inside the building.
Train Northrend Cooking |skillmax Northrend Cooking,75 |goto 40.60,64.87
|tip You must be at least level 5.
step
collect 150 Shoveltusk Flank##43009
|tip Farm them with the "Shoveltusk Flank" farming guide or purchase them from the Auction House.
|only if skill("Northrend Cooking") < 25
step
Enter the building |goto 45.31,60.12 < 10 |walk
talk Katherine Lee##28705
|tip Inside the building.
learn Shoveltusk Steak##45550 |goto 40.60,64.87
|only if skill("Northrend Cooking") < 25
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 24 Shoveltusk Flank>_
Reach 25 Northrend Cooking |skill Northrend Cooking,25
step
earn 6 Epicurean's Award##81
|tip Use the "Dalaran Cooking Daily Guide" and "Main City Cooking Daily Guide" guides to accomplish this.
|tip You will generally earn three to five per day.
step
Enter the building |goto 45.31,60.12 < 10 |walk
talk Derek Odds##31032
|tip Inside the building.
buy 60 Northern Spices##43007 |goto 69.89,38.39
|only if skill("Northrend Cooking") < 75
step
talk Katherine Lee##28705
|tip Inside the building.
learn Tracker Snacks##57443 |goto 40.60,64.87
|only if skill("Northrend Cooking") < 75
step
Open Your Cooking Crafting Panel:
_<Create 100 Tracker Snacks>_
|tip You may not need to create this many.
Reach 75 Northrend Cooking |skill Northrend Cooking,75 |goto 40.33,66.47
step
_Congratulations!_
You Reached 75 Northrend Cooking Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Leveling Guides\\Cataclysm Cooking 1-75",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Cataclysm Cooking skill from 1-75.",
condition_end=function() return skill('Cataclysm Cooking') >= 75 end,
condition_suggested=function() return skill('Cataclysm Cooking') > 0 and skill('Cataclysm Cooking') < 75 and level >= 5 end,
},[[
step
talk Robby Flay##42288
Train Cataclysm Cooking |skillmax Cataclysm Cooking,75 |goto Stormwind City/0 50.56,71.89
|tip You must be at least level 5.
step
talk Robby Flay##42288
learn Darkbrew Lager##88015 |goto 50.56,71.89
step
Enter the building |goto 42.26,81.79 < 10 |walk
talk Jarel Moor##1305
|tip Inside the building.
buy 30 Skin of Dwarven Stout##2596 |goto 41.96,82.72
|only if skill("Cataclysm Cooking") < 10
step
talk Jarel Moor##1305
|tip Inside the building.
buy 15 Jug of Badlands Bourbon##2595 |goto 41.96,82.72
|only if skill("Cataclysm Cooking") < 10
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 9 Darkbrew Lager>_
Reach 10 Cataclysm Cooking |skill Cataclysm Cooking,10
step
earn 9 Epicurean's Award##81
|tip Use the "Dalaran Cooking Daily Guide" and "Main City Cooking Dailies" guides to accomplish this.
|tip You will generally earn three to five per day.
step
collect 25 Snake Eye##62780
|tip Farm them with the "Snake Eye" farming guide or purchase them from the Auction House.
|only if skill("Cataclysm Cooking") < 25
step
collect 40 Giant Turtle Tongue##62781
|tip Farm them with the "Giant Turtle Tongue" farming guide or purchase them from the Auction House.
|only if skill("Cataclysm Cooking") < 50
step
talk Shazdar##49737
buy 1 Recipe: Salted Eye##65410 |goto Stormwind City/0 50.43,71.86
|only if skill("Cataclysm Cooking") < 25
step
use the Recipe: Salted Eye##65410
learn Salted Eye##88035
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 15 Salted Eye>_
|tip You may need to make a few more.
Reach 25 Cataclysm Cooking |skill Cataclysm Cooking,25
step
talk Jon Casper##49701
buy 1 Recipe: Tender Baked Turtle##65419 |goto 50.43,71.86
|only if skill("Cataclysm Cooking") < 50
step
use the Recipe: Tender Baked Turtle##65419
learn Tender Baked Turtle##88046
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 25 Tender Baked Turtle>_
|tip You may need to make a few more.
Reach 50 Cataclysm Cooking |skill Cataclysm Cooking,50
step
collect 35 Crocolisk Tail##62784
|tip Farm them with the "Crocolisk Tail" farming guide or purchase them from the Auction House.
|only if skill("Cataclysm Cooking") < 75
step
talk Jon Casper##49701
buy 1 Recipe: Beer-Basted Crocolisk##65429 |goto 50.43,71.86
|only if skill("Cataclysm Cooking") < 50
step
use the Recipe: Beer-Basted Crocolisk##65429
learn Beer-Basted Crocolisk##88005
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 25 Beer-Basted Crocolisk>_
|tip You may need to make a few more.
Reach 75 Cataclysm Cooking |skill Cataclysm Cooking,75
step
_Congratulations!_
You Reached 75 Cataclysm Cooking Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Enchanting\\Leveling Guides\\Enchanting 1-300",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Enchanting skill from 1-300.",
condition_end=function() return skill('Enchanting') >= 300 end,
condition_suggested=function() return skill('Enchanting') > 0 and skill('Enchanting') < 300 and level >= 5 end,
},[[
step
talk Lucan Cordell##1317
|tip Inside the building.
Train Enchanting |skillmax Enchanting,300 |goto Stormwind City/0 52.90,74.45
|tip You must be at least level 5.
step
talk Jessara Cordell##1318
|tip Inside the building.
buy 1 Copper Rod##6217 |goto 52.80,74.25
|only if skill("Enchanting") < 2
step
talk Jessara Cordell##1318
|tip Inside the building.
buy 1 Strange Dust##10940 |goto 52.80,74.25
|tip These are in limited supply from this vendor, so it may not be available.
|tip You can also purchase them from the Auction House.
|only if skill("Enchanting") < 2
step
talk Jessara Cordell##1318
|tip Inside the building.
buy 1 Lesser Magic Essence##10938 |goto 52.80,74.25
|tip These are in limited supply from this vendor, so it may not be available.
|tip You can also purchase them from the Auction House.
|only if skill("Enchanting") < 2
step
Open Your Enchanting Crafting Panel:
_<Create 1 Runed Copper Rod>_
Reach 2 Enchanting |skill Enchanting,2
step
talk Jessara Cordell##1318
|tip Inside the building.
buy 360 Enchanting Vellum##38682 |goto 52.80,74.25
|only if skill("Enchanting") < 90
step
collect 105 Strange Dust##10940
|tip You can get these by Disenchanting item level 5-16 Uncommon (green) armor and weapons.
|tip You can also purchase them from the Auction House.
|only if skill("Enchanting") < 90
step
Open Your Enchanting Crafting Panel:
_<Create 105 Enchant Bracer: Minor Health>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
|tip The recipe turns yellow at 70, so additional materials may be required.
Reach 90 Enchanting |skill Enchanting,90
step
talk Lucan Cordell##1317
|tip Inside the building.
learn Enchant Bracers: Minor Stamina##7457 |goto 52.90,74.45
step
collect 30 Strange Dust##10940
|tip You can get these by Disenchanting item level 5-16 Uncommon (green) armor and weapons.
|tip You can also purchase them from the Auction House.
|only if skill("Enchanting") < 100
step
Open Your Enchanting Crafting Panel:
_<Create 10 Enchant Bracers: Minor Stamina>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach 100 Enchanting |skill Enchanting,100
step
talk Jessara Cordell##1318
|tip Inside the building.
buy 10 Simple Wood##4470 |goto 52.80,74.25
|only if skill("Enchanting") < 110
step
collect 10 Greater Magic Essence##10939
|tip You can get these by Disenchanting item level 9-16 Uncommon (green) armor and weapons.
|tip They are also created by combining 3 Lesser Magic Essence.
|tip You can also purchase them from the Auction House.
|only if skill("Enchanting") < 110
step
talk Lucan Cordell##1317
|tip Inside the building.
learn Greater Magic Wand##14807 |goto 52.90,74.45
|only if skill("Enchanting") < 110
step
Open Your Enchanting Crafting Panel:
_<Create 10 Greater Magic Wands>_
Reach 110 Enchanting |skill Enchanting,110
step
talk Dalria##3954
buy Formula: Enchant Cloak - Minor Agility##11039 |goto Ashenvale/0 35.12,52.12
|only if skill("Enchanting") < 135
step
use the Formula: Enchant Cloak - Minor Agility##11039
learn Enchant Cloak: Minor Agility##13419
|only if skill("Enchanting") < 135
step
talk Dalria##3954
buy Formula: Enchant Bracer - Lesser Strength##11101 |goto 35.12,52.12
|only if skill("Enchanting") < 220
step
collect 25 Lesser Eternal Essence##16202
|tip You can get these by Disenchanting item level 14-29 armor and weapons.
|tip You can also purchase them from the Auction House.
|only if skill("Enchanting") < 135
step
Open Your Enchanting Crafting Panel:
_<Create 25 Enchant Cloak: Minor Agility>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach 135 Enchanting |skill Enchanting,135
step
collect 180 Light Illusion Dust##16204
|tip You can get these by Disenchanting item level 19-29 Uncommon (green) armor and weapons.
|tip You can also purchase them from the Auction House.
|only if skill("Enchanting") < 220
step
Open Your Enchanting Crafting Panel:
_<Create 20 Enchant Bracers: Lesser Stamina>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach 155 Enchanting |skill Enchanting,155
step
use the Formula: Enchant Bracer - Lesser Strength##11101
learn Enchant Bracer: Lesser Strength##13536
step
Open Your Enchanting Crafting Panel:
_<Create 20 Enchant Bracers: Lesser Strength>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach 180 Enchanting |skill Enchanting,180
step
talk Lucan Cordell##1317
|tip Inside the building.
learn Enchant Bracers: Strength##13661 |goto Stormwind City/0 52.90,74.45
step
Open Your Enchanting Crafting Panel:
_<Create 50 Enchant Bracers: Strength>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach 220 Enchanting |skill Enchanting,220
step
collect 220 Rich Illusion Dust##156930
|tip You can get these by Disenchanting item level 19-35 Uncommon (green) armor and weapons.
|tip You can also purchase them from the Auction House.
|only if skill("Enchanting") < 245
step
talk Lucan Cordell##1317
|tip Inside the building.
learn Enchant Cloak: Greater Defense##13646 |goto 52.90,74.45
step
Open Your Enchanting Crafting Panel:
_<Create 5 Enchant Cloak: Greater Defense>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach 225 Enchanting |skill Enchanting,225
step
talk Lucan Cordell##1317
|tip Inside the building.
learn Enchant Boots: Stamina##13836 |goto 52.90,74.45
step
Open Your Enchanting Crafting Panel:
_<Create 10 Enchant Boots: Stamina>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach 235 Enchanting |skill Enchanting,235
step
talk Lucan Cordell##1317
|tip Inside the building.
learn Enchant Chest: Superior Health##13858 |goto 52.90,74.45
step
Open Your Enchanting Crafting Panel:
_<Create 10 Enchant Chest: Superior Health>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach 245 Enchanting |skill Enchanting,245
step
collect 45 Greater Eternal Essence##16203
|tip You can get these by Disenchanting item level 16-35 Uncommon (green) armor and weapons.
|tip Combine 3 Lesser Eternal Essence to create a Greater Eternal Essence.
|tip You can also purchase them from the Auction House.
|only if skill("Enchanting") < 265
step
talk Lucan Cordell##1317
|tip Inside the building.
learn Enchant Boots: Agility##13935 |goto 52.90,74.45
step
Open Your Enchanting Crafting Panel:
_<Create 10 Enchant Boots: Agility>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach 255 Enchanting |skill Enchanting,255
step
talk Lucan Cordell##1317
|tip Inside the building.
learn Enchant Bracer: Greater Strength##13935 |goto 52.90,74.45
step
Open Your Enchanting Crafting Panel:
_<Create 5 Enchant Bracer: Greater Strength>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach 260 Enchanting |skill Enchanting,260
step
talk Lucan Cordell##1317
|tip Inside the building.
learn Enchant Bracer: Greater Intellect##20008 |goto 52.90,74.45
step
Open Your Enchanting Crafting Panel:
_<Create 5 Enchant Bracer: Greater Intellect>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach 265 Enchanting |skill Enchanting,265
step
talk Zidormi##141489
Ask her _"Can you show me what Darkshore was like before the battle?"_
Travel to the Past |complete ZGV.InPhase('Old Darnassus') |goto Darkshore/0 48.86,24.46
|only if skill("Enchanting") < 300
step
talk Mythrin'dir##4229
buy Formula: Enchant Shield - Greater Stamina##16217 |goto Darnassus/0 58.09,34.16
|only if skill("Enchanting") < 300
step
use the Formula: Enchant Shield - Greater Stamina##16217
learn Enchant Shield: Greater Stamina##20017
step
Open Your Enchanting Crafting Panel:
_<Create 40 Enchant Shield: Greater Stamina>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach 300 Enchanting |skill Enchanting,300
step
_Congratulations!_
You Reached 300 Enchanting Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Enchanting\\Leveling Guides\\Outland Enchanting 1-75",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Outland Enchanting skill from 1-75.",
condition_end=function() return skill('Outland Enchanting') >= 75 end,
condition_suggested=function() return skill('Outland Enchanting') > 0 and skill('Outland Enchanting') < 75 and level >= 5 end,
},[[
step
talk Johan Barnes##18773
|tip Upstairs inside the building.
Train Outland Enchanting |skillmax Outland Enchanting,75 |goto Hellfire Peninsula/0 53.63,66.13
|tip You must be at least level 5.
step
talk Johan Barnes##18773
|tip Upstairs inside the building.
buy 75 Enchanting Vellum##38682 |goto 53.63,66.13
|only if skill("Outland Enchanting") < 75
step
talk Johan Barnes##18773
|tip Upstairs inside the building.
learn Enchant Bracer: Lesser Assault##34002 |goto 53.63,66.13
step
collect 578 Arcane Dust##22445
|tip You can get these by Disenchanting Uncommon (green) items from any Outland zone.
|tip You can also purchase them from the Auction House.
|only if skill("Outland Enchanting") < 50
step
Open Your Enchanting Crafting Panel:
_<Create 9 Enchant Bracer: Lesser Assault>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach 10 Outland Enchanting |skill Outland Enchanting,10
step
talk Johan Barnes##18773
|tip Upstairs inside the building.
learn Enchant Bracer: Brawn##27899 |goto 53.63,66.13
step
Open Your Enchanting Crafting Panel:
_<Create 6 Enchant Bracer: Brawn>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach 16 Outland Enchanting |skill Outland Enchanting,16
step
talk Johan Barnes##18773
|tip Upstairs inside the building.
learn Enchant Cloak: Major Armor##27961 |goto 53.63,66.13
step
Open Your Enchanting Crafting Panel:
_<Create 16 Enchant Cloak: Major Armor>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach 30 Outland Enchanting |skill Outland Enchanting,30
step
talk Madame Ruby##19663
buy 1 Formula: Enchant Shield - Major Stamina##28282 |goto Shattrath City/0 63.28,71.03
buy 1 Formula: Large Prismatic Shard##22565 |goto 63.28,71.03
buy 1 Formula: Superior Wizard Oil##22563 |goto 63.28,71.03
|only if skill("Outland Enchanting") < 50
step
use the Formula: Enchant Shield - Major Stamina##28282
learn Enchant Shield: Major Stamina##34009
step
Open Your Enchanting Crafting Panel:
_<Create 5 Enchant Shield: Major Stamina>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach 35 Outland Enchanting |skill Outland Enchanting,35
step
talk Johan Barnes##18773
|tip Upstairs inside the building.
learn Small Prismatic Shard##42615 |goto Hellfire Peninsula/0 53.63,66.13
learn Armor##44383 |goto 53.63,66.13
step
talk Magus Zabraxis##16829
|tip Downstairs inside the building.
buy 20 Crystal Vial##3371 |goto 53.86,65.74
|only if skill("Outland Enchanting") < 50
step
use the Formula: Large Prismatic Shard##22565
learn Large Prismatic Shard##28022
step
collect 5 Large Prismatic Shard##22449
|tip You can get these by Disenchanting Rare (blue) items from any Outland zone.
|tip You can also purchase them from the Auction House.
|only if skill("Outland Enchanting") < 40
step
collect 20 Lesser Planar Essence##22447
|tip You can get these by Disenchanting Uncommon (green) items from any Outland zone.
|tip You can also purchase them from the Auction House.
|only if skill("Outland Enchanting") < 40
step
Open Your Enchanting Crafting Panel:
_<Create 5 Enchant Shield: Armor>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach 40 Outland Enchanting |skill Outland Enchanting,40
step
use the Formula: Superior Wizard Oil##22563
learn Superior Wizard Oil##28019
step
collect 15 Nightmare Vine##22792
|tip These are gathered by the Herbalism Profession.
|tip You can also purchase them from the Auction House.
|only if skill("Outland Enchanting") < 50
step
Open Your Enchanting Crafting Panel:
_<Create 10 Superior Wizard Oil>_
Reach 50 Outland Enchanting |skill Outland Enchanting,50
step
collect 25 Greater Planar Essence##22446
|tip You can get these by Disenchanting Uncommon (green) items from any Outland zone.
|tip YOu can combine 3 Lesser Planar Essence for 1 Greater Planar Essence.
|tip You can also purchase them from the Auction House.
|only if skill("Outland Enchanting") < 69
step
talk Johan Barnes##18773
|tip Upstairs inside the building.
learn Enchant Gloves: Major Strength##33995 |goto Hellfire Peninsula/0 53.63,66.13
step
Open Your Enchanting Crafting Panel:
_<Create 29 Enchant Gloves: Major Strength>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach 69 Outland Enchanting |skill Outland Enchanting,69
step
collect 2 Void Crystal##22450
|tip You can get these by Disenchanting Epic (purple) items from any Outland raids.
|tip You can also purchase them from the Auction House.
|only if skill("Outland Enchanting") < 70
step
talk Johan Barnes##18773
|tip Upstairs inside the building.
learn Void Sphere##28028 |goto 53.63,66.13
step
Open Your Enchanting Crafting Panel:
_<Create 1 Void Sphere>_
Reach 70 Outland Enchanting |skill Outland Enchanting,70
step
kill Eredar Deathbringer##20880+
collect Formula: Enchant 2H Weapon - Major Agility##22556 |goto The Arcatraz/1 0.00,0.00
|tip This comes from the dungeon "The Arcatraz".
|only if skill("Outland Enchanting") < 75
step
use the Formula: Enchant 2H Weapon - Major Agility##22556
learn Enchant Weapon: Major Agility##27977
step
collect 40 Large Prismatic Shard##22449
|tip You can get these by Disenchanting Rare (blue) items from any Outland dungeons.
|tip You can combine Small Prismatic Shards to make a Large Prismatic Shard.
|tip You can also purchase them from the Auction House.
|only if skill("Outland Enchanting") < 75
step
collect 30 Greater Planar Essence##22446
|tip You can get these by Disenchanting Uncommon (green) items from any Outland zone.
|tip YOu can combine 3 Lesser Planar Essence for 1 Greater Planar Essence.
|tip You can also purchase them from the Auction House.
|only if skill("Outland Enchanting") < 75
step
Open Your Enchanting Crafting Panel:
_<Create 5 Enchant Weapon: Major Agility>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach 75 Outland Enchanting |skill Outland Enchanting,75
step
_Congratulations!_
You Reached 75 Outland Enchanting Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Enchanting\\Leveling Guides\\Northrend Enchanting 1-75",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Northrend Enchanting skill from 1-75.",
condition_end=function() return skill('Northrend Enchanting') >= 75 end,
condition_suggested=function() return skill('Northrend Enchanting') > 0 and skill('Northrend Enchanting') < 75 and level >= 5 end,
},[[
step
talk Enchanter Nalthanis##28693
|tip Inside the building.
Train Northrend Enchanting |skillmax Northrend Enchanting,75 |goto Dalaran/1 39.03,39.78
|tip You must be at least level 5.
step
talk Enchanter Nalthanis##28693
|tip Inside the building.
learn Enchant Gloves: Gatherer##44506 |goto 39.03,39.78
step
talk Ildine Sorrowspear##28714
|tip Inside the building.
buy 75 Enchanting Vellum##38682 |goto 38.79,41.52
|only if skill("Northrend Enchanting") < 75
step
collect 55 Greater Cosmic Essence##34055
|tip You can get these by Disenchanting Uncommon (green) items from any Northrend zone.
|tip You can also purchase them from the Auction House.
|only if skill("Northrend Enchanting") < 15
step
Open Your Enchanting Crafting Panel:
_<Create 14 Enchant Gloves: Gatherer>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach 15 Northrend Enchanting |skill Northrend Enchanting,15
step
collect 30 Abyss Crystal##34057
|tip You can get these by Disenchanting Epic (purple) items from any Northrend Raids.
|tip 25-Man Naxxramas will provide up to 4 Epic drops per boss.
|tip You can also purchase them from the Auction House.
|only if skill("Northrend Enchanting") < 30
step
talk Enchanter Nalthanis##28693
|tip Inside the building.
learn Abyssal Shatter##69412 |goto 39.04,39.76
|only if skill("Northrend Enchanting") < 30
step
Open Your Enchanting Crafting Panel:
_<Create 20 Abyssal Shatter>_
|tip Save any material you collect.
Reach 30 Northrend Enchanting |skill Northrend Enchanting,30
step
collect 430 Infinite Dust##34054
|tip You can get these by Disenchanting Uncommon (green) items from any Northrend zone.
|tip You can also purchase them from the Auction House.
|only if skill("Northrend Enchanting") < 40
step
talk Enchanter Nalthanis##28693
|tip Inside the building.
learn Enchant Gloves: Haste##44484 |goto 39.04,39.76
|only if skill("Northrend Enchanting") < 40
step
Open Your Enchanting Crafting Panel:
_<Cast 10 Enchant Gloves: Haste>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
|tip Save any material you collect.
Reach 40 Northrend Enchanting |skill Northrend Enchanting,40
step
talk Enchanter Nalthanis##28693
|tip Inside the building.
learn Enchant Gloves: Precision##44488 |goto 39.04,39.76
|only if skill("Northrend Enchanting") < 45
step
Open Your Enchanting Crafting Panel:
_<Cast 5 Enchant Gloves: Precision>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
|tip Save any material you collect.
Reach 45 Northrend Enchanting |skill Northrend Enchanting,45
step
collect 40 Lesser Cosmic Essence##34056
|tip You can get these by Disenchanting Uncommon (green) items from any Northrend zone.
|tip You can also purchase them from the Auction House.
|only if skill("Northrend Enchanting") < 55
step
talk Enchanter Nalthanis##28693
|tip Inside the building.
learn Enchant Chest: Greater Versatility##44509 |goto 39.04,39.76
step
Open Your Enchanting Crafting Panel:
_<Cast 10 Enchant Chest: Versatility>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
|tip Save any material you collect.
Reach 55 Northrend Enchanting |skill Northrend Enchanting,55
step
talk Enchanter Nalthanis##28693
|tip Inside the building.
learn Enchant Gloves: Crusher##60668 |goto 39.04,39.76
step
Open Your Enchanting Crafting Panel:
_<Cast 5 Enchant Gloves: Crusher>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
|tip Save any material you collect.
Reach 60 Northrend Enchanting |skill Northrend Enchanting,60
step
collect 8 Dream Shard##34052
|tip You can get these by Disenchanting Rare (blue) items from any Northrend zones or dungeons.
|tip You can also purchase them from the Auction House.
|only if skill("Northrend Enchanting") < 75
step
talk Vanessa Sellers##32514
|tip Inside the building.
buy Formula: Enchant Cloak - Mighty Stamina##44471 |n
use the Formula: Enchant Cloak - Mighty Stamina##44471
learn Enchant Cloak: Mighty Stamina##47672 |goto 38.41,41.09
|only if skill("Northrend Enchanting") < 65
step
Open Your Enchanting Crafting Panel:
_<Cast 5 Enchant Cloak: Mighty Stamina>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach 65 Northrend Enchanting |skill Northrend Enchanting,65
step
talk Vanessa Sellers##32514
|tip Inside the building.
buy Formula: Enchant Cloak - Shadow Armor##37349 |n
use the Formula: Enchant Cloak - Shadow Armor##37349
learn Formula: Enchant Cloak - Shadow Armor##44631 |goto 38.41,41.09
|only if skill("Northrend Enchanting") < 75
step
Open Your Enchanting Crafting Panel:
_<Cast 5 Enchant Cloak: Shadow Armor>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach 75 Northrend Enchanting |skill Northrend Enchanting,75
step
_Congratulations!_
You Reached 75 Northrend Enchanting Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Enchanting\\Leveling Guides\\Cataclysm Enchanting 1-75",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Cataclysm Enchanting skill from 1-75.",
condition_end=function() return skill('Cataclysm Enchanting') >= 75 end,
condition_suggested=function() return skill('Cataclysm Enchanting') > 0 and skill('Cataclysm Enchanting') < 75 and level >= 5 end,
},[[
step
talk Lucan Cordell##1317
|tip Inside the building.
Train Cataclysm Enchanting |skillmax Cataclysm Enchanting,75 |goto Stormwind City/0 52.90,74.45
|tip You must be at least level 5.
step
talk Jessara Cordell##1318
|tip Inside the building.
buy 75 Enchanting Vellum##38682 |goto 52.80,74.25
|only if skill("Cataclysm Enchanting") < 75
step
collect 625 Hypnotic Dust##52555
|tip You can get these by Disenchanting Uncommon (green) items from any Cataclysm zone.
|tip You can also purchase them from the Auction House.
|only if skill("Cataclysm Enchanting") < 75
step
Open Your Enchanting Crafting Panel:
_<Create 4 Enchant Boots: Earthen Vitality>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
|tip You may neeed to make more than 4 as this recipe is yellow.
Reach 5 Cataclysm Enchanting |skill Cataclysm Enchanting,5
step
talk Lucan Cordell##1317
|tip Inside the building.
learn Enchant Cloak: Lesser Power##74192 |goto 52.90,74.45
step
Open Your Enchanting Crafting Panel:
_<Create 5 Enchant Cloak: Lesser Power>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
|tip You may neeed to make more than 5 as this recipe is yellow.
Reach 10 Cataclysm Enchanting |skill Cataclysm Enchanting,10
step
collect 5 Lesser Celestial Essence##52718
|tip You can get these by Disenchanting Uncommon (green) items from any Cataclysm zone.
|tip You can also purchase them from the Auction House.
|only if skill("Cataclysm Enchanting") < 15
step
talk Lucan Cordell##1317
|tip Inside the building.
learn Enchant Gloves: Haste##74198 |goto 52.90,74.45
step
Open Your Enchanting Crafting Panel:
_<Create 5 Enchant Gloves: Haste>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach 15 Cataclysm Enchanting |skill Cataclysm Enchanting,15
step
talk Lucan Cordell##1317
|tip Inside the building.
learn Enchant Cloak: Intellect##74202 |goto 52.90,74.45
step
Open Your Enchanting Crafting Panel:
_<Create 10 Enchant Cloak: Intellect>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach 25 Cataclysm Enchanting |skill Cataclysm Enchanting,25
step
collect 135 Greater Celestial Essence##52719
|tip You can get these by Disenchanting Uncommon (green) items from any Cataclysm zone.
|tip You can combine 3 Lesser Celestial Essence to create a Greater Celestial Essence.
|tip You can also purchase them from the Auction House.
|only if skill("Cataclysm Enchanting") < 30
step
talk Lucan Cordell##1317
|tip Inside the building.
learn Enchant Gloves: Exceptional Strength##74212 |goto 52.90,74.45
step
Open Your Enchanting Crafting Panel:
_<Create 5 Enchant Gloves: Exceptional Strength>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach 30 Cataclysm Enchanting |skill Cataclysm Enchanting,30
step
talk Lucan Cordell##1317
|tip Inside the building.
learn Enchant Boots: Major Agility##74213 |goto 52.90,74.45
step
Open Your Enchanting Crafting Panel:
_<Create 5 Enchant Boots: Major Agility>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach 35 Cataclysm Enchanting |skill Cataclysm Enchanting,35
step
talk Lucan Cordell##1317
|tip Inside the building.
learn Enchant Gloves: Greater Haste##74220 |goto 52.90,74.45
step
Open Your Enchanting Crafting Panel:
_<Create 5 Enchant Gloves: Greater Haste>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach 40 Cataclysm Enchanting |skill Cataclysm Enchanting,40
step
talk Lucan Cordell##1317
|tip Inside the building.
learn Enchant Shield: Mastery##74226 |goto 52.90,74.45
step
Open Your Enchanting Crafting Panel:
_<Create 5 Enchant Shield: Mastery>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach 45 Cataclysm Enchanting |skill Cataclysm Enchanting,45
step
talk Lucan Cordell##1317
|tip Inside the building.
learn Enchant Bracer: Precision##74232 |goto 52.90,74.45
step
Open Your Enchanting Crafting Panel:
_<Create 10 Enchant Bracers: Precision>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach 55 Cataclysm Enchanting |skill Cataclysm Enchanting,55
step
talk Lucan Cordell##1317
|tip Inside the building.
learn Enchant Shield: Superior Intellect##74235 |goto 52.90,74.45
step
Open Your Enchanting Crafting Panel:
_<Create 5 Enchant Shield: Superior Intellect>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach 60 Cataclysm Enchanting |skill Cataclysm Enchanting,60
step
talk Lucan Cordell##1317
|tip Inside the building.
learn Enchant Bracers: Exceptional Versatility##74237 |goto 52.90,74.45
step
Open Your Enchanting Crafting Panel:
_<Create 5 Enchant Bracers: Exceptional Versatility>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach 65 Cataclysm Enchanting |skill Cataclysm Enchanting,65
step
talk Lucan Cordell##1317
|tip Inside the building.
learn Enchant Boots: Mastery##74238 |goto 52.90,74.45
step
Open Your Enchanting Crafting Panel:
_<Create 17 Enchant Boots: Mastery>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
|tip This recipe will be green around the 70s, so you may need to create more.
Reach 75 Cataclysm Enchanting |skill Cataclysm Enchanting,75
step
_Congratulations!_
You Reached 75 Cataclysm Enchanting Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Engineering\\Leveling Guides\\Engineering 1-300",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Engineering skill from 1-300.",
condition_end=function() return skill('Engineering') >= 300 end,
condition_suggested=function() return skill('Engineering') > 0 and skill('Engineering') < 300 and level >= 5 end,
},[[
step
talk Lilliam Sparkspindle##5518
Train Engineering |skillmax Engineering,300 |goto Stormwind City/0 62.84,31.97
|tip You must be at least level 5.
step
talk Billibub Cogspinner##5519
buy 1 Blacksmith Hammer##5956 |goto 63.07,31.99
|only if itemcount(5956) == 0 and skill("Engineering") < 300
step
collect 60 Rough Stone##2835
|tip Farm them with Mining or purchase them from the Auction House.
|tip Rough Stone can be mined from Copper Veins.
|only if skill("Engineering") < 30
step
collect 36 Copper Bar##2840
|tip Farm and Smelt them with Mining or purchase them from the Auction House.
|only if skill("Engineering") < 50
step
collect 20 Coarse Stone##2836
|tip Farm them with Mining or purchase them from the Auction House.
|tip Coarse Stone can be mined from Tin Veins and Mithril and Truesilver Deposits.
|only if skill("Engineering") < 90
step
collect 20 Linen Cloth##2589
|tip Farm them from humanoid mobs or purchase them from the Auction House.
|only if skill("Engineering") < 100
step
Open Your Engineering Crafting Panel:
_<Create 60 Rough Blasting Powder>_
|tip Craft all 60 of them, you will need them later.
Reach 30 Engineering |skill Engineering,30
step
talk Lilliam Sparkspindle##5518
learn Handful of Copper Bolts##3922 |goto 62.84,31.97
step
Open Your Engineering Crafting Panel:
_<Create 30 Handful of Copper Bolts>_
|tip Make all of them, you will need them later.
Reach 50 Engineering |skill Engineering,50 |goto 63.66,36.64
step
talk Lilliam Sparkspindle##5518
learn Arclight Spanner##7430 |goto 62.84,31.97
step
talk Lilliam Sparkspindle##5518
learn Rough Copper Bomb##3923 |goto 62.84,31.97
step
Open Your Engineering Crafting Panel:
_<Create 10 Rough Copper Bomb>_
Reach 60 Engineering |skill Engineering,60 |goto 63.66,36.64
step
Open Your Engineering Crafting Panel:
_<Create 1 Arclight Spanner>_
Reach 61 Engineering |skill Engineering,61 |goto 63.66,36.64
step
Open Your Engineering Crafting Panel:
_<Create 20 Rough Copper Bomb>_
|tip You may need to craft a few more.
Reach 75 Engineering |skill Engineering,75 |goto 63.66,36.64
step
talk Lilliam Sparkspindle##5518
learn Coarse Blasting Powder##3929 |goto 62.84,31.97
step
Open Your Engineering Crafting Panel:
_<Create 20 Coarse Blasting Powder>_
|tip Craft them all, you will need them later.
Reach 90 Engineering |skill Engineering,90 |goto 63.66,36.64
step
talk Lilliam Sparkspindle##5518
learn Coarse Dynamite##3931 |goto 62.84,31.97
step
Open Your Engineering Crafting Panel:
_<Create 20 Coarse Dynamite>_
Reach 100 Engineering |skill Engineering,100 |goto 63.66,36.64
step
collect 107 Bronze Bar##2841
|tip Farm and Smelt them with Mining or purchase them from the Auction House.
|only if skill("Engineering") < 160
step
collect 2 Tigerseye##818
|tip Farm them with Mining or purchase them from the Auction House.
|tip Tigerseye can be mined from Copper Veins.
|only if skill("Engineering") < 130
step
collect 30 Heavy Stone##2838
|tip Farm them with Mining or purchase them from the Auction House.
|tip Heavy Stone can be mined from Iron Deposits.
|only if skill("Engineering") < 150
step
collect 60 Wool Cloth##2592
|tip Farm them from humanoid mobs or purchase them from the Auction House.
|only if skill("Engineering") < 160
step
collect 15 Medium Leather##2319
|tip Farm them with Skinning or purchase them from the Auction House.
|only if skill("Engineering") < 160
step
talk Lilliam Sparkspindle##5518
learn Clockwork Box##8334 |goto 62.84,31.97
step
Open Your Engineering Crafting Panel:
_<Create 13 Clockwork Box>_
|tip Save these for the next step.
Reach 113 Engineering |skill Engineering,113 |goto 63.66,36.64
step
use the Clockwork Box##6712
Reach 125 Engineering |skill Engineering,125
step
talk Lilliam Sparkspindle##5518
learn Flying Tiger Goggles##3934 |goto 62.84,31.97
step
Open Your Engineering Crafting Panel:
_<Create 1 Flying Tiger Goggles>_
Reach 130 Engineering |skill Engineering,130 |goto 63.66,36.64
step
talk Lilliam Sparkspindle##5518
learn Heavy Blasting Powder##3945 |goto 62.84,31.97
step
talk Lilliam Sparkspindle##5518
learn Whirring Bronze Gizmo##3942 |goto 62.84,31.97
step
Open Your Engineering Crafting Panel:
_<Create 30 Heavy Blasting Powder>_
|tip Save these for later.
collect 30 Heavy Blasting Powder##4377 |goto 63.66,36.64
|only if skill("Engineering") < 150
step
Open Your Engineering Crafting Panel:
_<Create 15 Whirring Bronze Gizmo>_
|tip Save these for later.
Reach 150 Engineering |skill Engineering,150 |goto 63.66,36.64
step
talk Lilliam Sparkspindle##5518
learn Bronze Framework##3953 |goto 62.84,31.97
step
Open Your Engineering Crafting Panel:
_<Create 15 Bronze Framework>_
Reach 160 Engineering |skill Engineering,160 |goto 63.66,36.64
step
collect 4 Steel Bar##3859
|tip Farm and Smelt them with Mining or purchase them from the Auction House.
|only if skill("Engineering") < 300
step
collect 120 Solid Stone##7912
|tip Farm them with Mining or purchase them from the Auction House.
|tip Solid Stone can be mined from Mithril Deposits.
|only if skill("Engineering") < 195
step
collect 161 Mithril Bar##3860
|tip Farm and Smelt them with Mining or purchase them from the Auction House.
|only if skill("Engineering") < 240
step
collect 20 Mageweave Cloth##4338
|tip Farm them from humanoid mobs or purchase them from the Auction House.
|only if skill("Engineering") < 216
step
talk Lilliam Sparkspindle##5518
learn Explosive Sheep##3955 |goto 62.84,31.97
step
Open Your Engineering Crafting Panel:
_<Create 15 Explosive Sheep>_
Reach 175 Engineering |skill Engineering,175 |goto 63.66,36.64
step
talk Lilliam Sparkspindle##5518
learn Gyromatic Micro-Adjustor##12590 |goto 62.84,31.97
step
Open Your Engineering Crafting Panel:
_<Create 1 Gyromatic Micro-Adjustor>_
Reach 176 Engineering |skill Engineering,176 |goto 63.66,36.64
step
talk Lilliam Sparkspindle##5518
learn Solid Blasting Powder##12585 |goto 62.84,31.97
step
Open Your Engineering Crafting Panel:
_<Create 60 Solid Blasting Powder>_
|tip Make all 60 of these, you will need them later.
Reach 195 Engineering |skill Engineering,195 |goto 63.66,36.64
step
talk Lilliam Sparkspindle##5518
learn Mithril Tube##12589 |goto 62.84,31.97
step
Open Your Engineering Crafting Panel:
_<Create 7 Mithril Tube>_
|tip Stop making these at 200.
|tip Make a few Iron Grenades if you did not reach 200.
Reach 200 Engineering |skill Engineering,200 |goto 63.66,36.64
step
talk Lilliam Sparkspindle##5518
learn Unstable Trigger##12591 |goto 62.84,31.97
step
Open Your Engineering Crafting Panel:
_<Create 20 Unstable Trigger>_
|tip Make all of these, you will need them later.
Reach 216 Engineering |skill Engineering,216 |goto 63.66,36.64
step
talk Lilliam Sparkspindle##5518
learn Mithril Casing##12599 |goto 62.84,31.97
step
Open Your Engineering Crafting Panel:
_<Create 40 Mithril Casing>_
|tip Make all of these, you will need them later.
Reach 238 Engineering |skill Engineering,238 |goto 63.66,36.64
step
collect 60 Dense Stone##12365
|tip Farm them with Mining or purchase them from the Auction House.
|tip Dense Stone can be mined from Thorium Veins.
|only if skill("Engineering") < 260
step
collect 195 Thorium Bar##12359
|tip Farm and Smelt them with Mining or purchase them from the Auction House.
|only if skill("Engineering") < 300
step
collect 25 Runecloth##14047
|tip Farm them from humanoid mobs or purchase them from the Auction House.
|only if skill("Engineering") < 285
step
talk Lilliam Sparkspindle##5518
learn Hi-Explosive Bomb##12619 |goto 62.84,31.97
step
Open Your Engineering Crafting Panel:
_<Create 20 Hi-Explosive Bomb>_
Reach 250 Engineering |skill Engineering,250 |goto 63.66,36.64
step
talk Lilliam Sparkspindle##5518
learn Dense Blasting Powder##19788 |goto 62.84,31.97
step
Open Your Engineering Crafting Panel:
_<Create 20 Dense Blasting Powder>_
|tip You may need to craft a few more.
Reach 260 Engineering |skill Engineering,260 |goto 63.66,36.64
step
talk Lilliam Sparkspindle##5518
learn Thorium Widget##19791 |goto 62.84,31.97
step
Open Your Engineering Crafting Panel:
_<Create 25 Thorium Widget>_
|tip You may need to craft a few more.
Reach 285 Engineering |skill Engineering,285 |goto 63.66,36.64
step
talk Lilliam Sparkspindle##5518
learn Thorium Tube##19795 |goto 62.84,31.97
step
Open Your Engineering Crafting Panel:
_<Create 15 Thorium Tube>_
|tip You may need to craft a few more.
Reach 300 Engineering |skill Engineering,300 |goto 63.66,36.64
step
_Congratulations!_
You Reached 300 Engineering Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Engineering\\Leveling Guides\\Outland Engineering 1-75",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Outland Engineering skill from 1-75.",
condition_end=function() return skill('Outland Engineering') >= 75 end,
condition_suggested=function() return skill('Outland Engineering') > 0 and skill('Outland Engineering') < 75 and level >= 5 end,
},[[
step
talk Engineer Sinbei##33634 |only if rep ('The Scryers') >= Neutral
talk Technician Mihila##33677 |only if rep ('The Aldor') >= Neutral
|tip Inside the building.
Train Outland Engineering |skillmax Outland Engineering,75 |goto Shattrath City/0 43.84,65.19 |only if rep ('The Scryers') >= Neutral
Train Outland Engineering |skillmax Outland Engineering,75 |goto 37.76,31.80 |only if rep ('The Aldor') >= Neutral
|tip You must be at least level 5.
step
collect 300 Fel Iron Bar##23445
|tip Farm and Smelt them with Mining or purchase them from the Auction House.
|only if skill("Outland Engineering") < 20
step
collect 184 Adamantite Bar##23446
|tip Farm and Smelt them with Mining or purchase them from the Auction House.
|only if skill("Outland Engineering") < 20
step
collect 6 Khorium Bar##23449
|tip Farm and Smelt them with Mining or purchase them from the Auction House.
|only if skill("Outland Engineering") < 20
step
collect 20 Mote of Earth##22573
|tip Farm them from elementals or purchase them from the Auction House.
|only if skill("Outland Engineering") < 20
step
collect 34 Primal Earth##22452
|tip Farm them from elementals or purchase them from the Auction House.
|tip Combine ten Motes of Earth into one Primal Earth.
|only if skill("Outland Engineering") < 20
step
collect 10 Mote of Fire##22574
|tip Farm them from elementals or purchase them from the Auction House.
|only if skill("Outland Engineering") < 20
step
collect 6 Primal Fire##21884
|tip Farm them from elementals or purchase them from the Auction House.
|tip Combine ten Motes of Fire into one Primal Fire.
|only if skill("Outland Engineering") < 20
step
collect 35 Netherweave Cloth##21877
|tip Farm them or purchase them from the Auction House.
|only if skill("Outland Engineering") < 20
step
Open Your Engineering Crafting Panel:
_<Create 10 Elemental Blasting Powder>_
collect 40 Elemental Blasting Powder##23781 |goto 43.40,65.20 |only if rep ('The Scryers') >= Neutral
collect 40 Elemental Blasting Powder##23781 |goto 37.50,31.25 |only if rep ('The Aldor') >= Neutral
|only if skill("Outland Engineering") < 20
step
talk Engineer Sinbei##33634 |only if rep ('The Scryers') >= Neutral
talk Technician Mihila##33677 |only if rep ('The Aldor') >= Neutral
|tip Inside the building.
learn Fel Iron Casing##30304 |goto 43.84,65.19 |only if rep ('The Scryers') >= Neutral
learn Fel Iron Casing##30304 |goto 37.76,31.80 |only if rep ('The Aldor') >= Neutral
step
Open Your Engineering Crafting Panel:
_<Create 56 Fel Iron Casing>_
collect 56 Fel Iron Casing##23782 |goto 43.40,65.20 |only if rep ('The Scryers') >= Neutral
collect 56 Fel Iron Casing##23782 |goto 37.50,31.25 |only if rep ('The Aldor') >= Neutral
|only if skill("Outland Engineering") < 20
step
Open Your Engineering Crafting Panel:
_<Create 126 Handful of Fel Iron Bolts>_
collect 126 Handful of Fel Iron Bolts##23783 |goto 43.40,65.20 |only if rep ('The Scryers') >= Neutral
collect 126 Handful of Fel Iron Bolts##23783 |goto 37.50,31.25 |only if rep ('The Aldor') >= Neutral
|only if skill("Outland Engineering") < 20
step
talk Engineer Sinbei##33634 |only if rep ('The Scryers') >= Neutral
talk Technician Mihila##33677 |only if rep ('The Aldor') >= Neutral
|tip Inside the building.
learn Fel Iron Bomb##30310 |goto 43.84,65.19 |only if rep ('The Scryers') >= Neutral
learn Fel Iron Bomb##30310 |goto 37.76,31.80 |only if rep ('The Aldor') >= Neutral
step
Open Your Engineering Crafting Panel:
_<Create 5 Fel Iron Bomb>_
Reach 25 Outland Engineering |skill Outland Engineering,25 |goto 43.40,65.20 |only if rep ('The Scryers') >= Neutral
Reach 25 Outland Engineering |skill Outland Engineering,25 |goto 37.50,31.25 |only if rep ('The Aldor') >= Neutral
step
talk Engineer Sinbei##33634 |only if rep ('The Scryers') >= Neutral
talk Technician Mihila##33677 |only if rep ('The Aldor') >= Neutral
|tip Inside the building.
learn Adamantite Frame##30306 |goto 43.84,65.19 |only if rep ('The Scryers') >= Neutral
learn Adamantite Frame##30306 |goto 37.76,31.80 |only if rep ('The Aldor') >= Neutral
step
Open Your Engineering Crafting Panel:
_<Create 34 Adamantite Frame>_
|tip Make all 34 of these, you'll need them later.
Reach 35 Outland Engineering |skill Outland Engineering,35 |goto 43.40,65.20 |only if rep ('The Scryers') >= Neutral
Reach 35 Outland Engineering |skill Outland Engineering,35 |goto 37.50,31.25 |only if rep ('The Aldor') >= Neutral
step
talk Wind Trader Lathrai##18484
buy 1 Schematic: White Smoke Flare##23811 |goto 72.22,30.73
step
use the Schematic: White Smoke Flare##23811
learn White Smoke Flare##30341
step
Open Your Engineering Crafting Panel:
_<Create 20 White Smoke Flare>_
|tip You may need to craft more.
Reach 55 Outland Engineering |skill Outland Engineering,55 |goto 43.40,65.20 |only if rep ('The Scryers') >= Neutral
Reach 55 Outland Engineering |skill Outland Engineering,55 |goto 37.50,31.25 |only if rep ('The Aldor') >= Neutral
step
talk Engineer Sinbei##33634 |only if rep ('The Scryers') >= Neutral
talk Technician Mihila##33677 |only if rep ('The Aldor') >= Neutral
|tip Inside the building.
learn Khorium Power Core##30308 |goto 43.84,65.19 |only if rep ('The Scryers') >= Neutral
learn Khorium Power Core##30308 |goto 37.76,31.80 |only if rep ('The Aldor') >= Neutral
step
Open Your Engineering Crafting Panel:
_<Create 5 Khorium Power Core>_
|tip You may need to craft a few more.
Reach 60 Outland Engineering |skill Outland Engineering,60 |goto 43.40,65.20 |only if rep ('The Scryers') >= Neutral
Reach 60 Outland Engineering |skill Outland Engineering,60 |goto 37.50,31.25 |only if rep ('The Aldor') >= Neutral
step
talk Viggz Shinesparked##19661
buy 1 Schematic: Adamantite Rifle##23799 |goto 64.95,69.65
|only if skill("Outland Engineering") < 70
step
use the Schematic: Adamantite Rifle##23799
learn Adamantite Rifle##30313
step
Open Your Engineering Crafting Panel:
_<Create 10 Adamantite Rifle>_
|tip You may need to craft a few more.
Reach 70 Outland Engineering |skill Outland Engineering,70 |goto 43.40,65.20 |only if rep ('The Scryers') >= Neutral
Reach 70 Outland Engineering |skill Outland Engineering,70 |goto 37.50,31.25 |only if rep ('The Aldor') >= Neutral
step
kill Gan'arg Analyzer##23385
collect 1 Schematic: Field Repair Bot 110G##34114 |goto Blade's Edge Mountains/0 27.42,68.57
More can be found here [31.73,63.77]
And here [33.41,51.87]
And here [29.01,47.22]
|only if skill("Outland Engineering") < 75
step
use the Schematic: Field Repair Bot 110G##34114
learn Field Repair Bot 110G##44391
step
Open Your Engineering Crafting Panel:
_<Create 5 Field Repair Bot 110G>_
|tip You may need to craft a few more.
Reach 75 Outland Engineering |skill Outland Engineering,75 |goto 43.40,65.20 |only if rep ('The Scryers') >= Neutral
Reach 75 Outland Engineering |skill Outland Engineering,75 |goto 37.50,31.25 |only if rep ('The Aldor') >= Neutral
step
_Congratulations!_
You Reached 75 Outland Engineering Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Engineering\\Leveling Guides\\Northrend Engineering 1-75",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Northrend Engineering skill from 1-75.",
condition_end=function() return skill('Northrend Engineering') >= 75 end,
condition_suggested=function() return skill('Northrend Engineering') > 0 and skill('Northrend Engineering') < 75 and level >= 5 end,
},[[
step
talk Timofey Oshenko##28697
|tip Inside the building.
Train Northrend Engineering |skillmax Northrend Engineering,75 |goto Dalaran/1 38.50,25.83
|tip You must be at least level 5.
step
collect 260 Cobalt Bar##36916
|tip Farm and Smelt them with Mining or purchase them from the Auction House.
|only if skill("Northrend Engineering") < 60
step
collect 10 Crystallized Earth##37701
|tip Farm them from elementals or purchase them from the Auction House.
|only if skill("Northrend Engineering") < 60
step
collect 35 Crystallized Water##37705
|tip Farm them from elementals or purchase them from the Auction House.
|only if skill("Northrend Engineering") < 50
step
collect 10 Borean Leather##33568
|tip Farm them with Skinning or purchase them from the Auction House.
|only if skill("Northrend Engineering") < 55
step
collect 350 Saronite Bar##36913
|tip Farm and Smelt them with Mining or purchase them from the Auction House.
|only if skill("Northrend Engineering") < 75
step
collect 5 Eternal Shadow##35627
|tip Farm them from elementals or purchase them from the Auction House.
|tip Combine ten Crystallized Shadow into one Eternal Shadow.
|only if skill("Northrend Engineering") < 55
step
collect 8 Frostweave Cloth##33470
|tip Farm them from humanoid mobs or purchase them from the Auction House.
|only if skill("Northrend Engineering") < 15
step
talk Timofey Oshenko##28697
|tip Inside the building.
learn Overcharged Capacitor##56464 |goto 38.50,25.83
step
Open Your Engineering Crafting Panel:
_<Create 35 Handful of Cobalt Bolts>_
|tip You may need to make a few more.
|tip Save them all for later.
collect 50 Handful of Cobalt Bolts##39681 |goto 39.66,26.16
|only if skill("Northrend Engineering") < 60
step
Open Your Engineering Crafting Panel:
_<Create 10 Volatile Blasting Trigger>_
|tip Save them all for later.
collect 20 Volatile Blasting Trigger##39690 |goto 39.66,26.16
|only if skill("Northrend Engineering") < 15
step
Open Your Engineering Crafting Panel:
_<Create 10 Overcharged Capacitor>_
|tip Save them all for later.
collect 10 Overcharged Capacitor##39682 |goto 39.66,26.16
|only if skill("Northrend Engineering") < 15
step
talk Timofey Oshenko##28697
|tip Inside the building.
learn Explosive Decoy##56463 |goto 38.50,25.83
step
Open Your Engineering Crafting Panel:
_<Create 6 Explosive Decoy>_
Reach 15 Northrend Engineering |skill Northrend Engineering,15 |goto 39.66,26.16
step
talk Timofey Oshenko##28697
|tip Inside the building.
learn Froststeel Tube##56471 |goto 38.50,25.83
step
Open Your Engineering Crafting Panel:
_<Create 15 Froststeel Tube>_
|tip Make all 15 of these, you will need them later.
Reach 26 Northrend Engineering |skill Northrend Engineering,26 |goto 39.66,26.16
step
talk Timofey Oshenko##28697
|tip Inside the building.
learn Diamond-cut Refractor Scope##61471 |goto 38.50,25.83
step
Open Your Engineering Crafting Panel:
_<Create 5 Diamond-cut Refractor Scope>_
|tip Only make these until skill 30.
Reach 30 Northrend Engineering |skill Northrend Engineering,30 |goto 39.66,26.16
step
talk Bryan Landers##28722
|tip Inside the building.
buy 45 Tinker's Kit##90146 |goto 38.92,24.54
|only if skill("Northrend Engineering") < 45
step
talk Timofey Oshenko##28697
|tip Inside the building.
learn Nitro Boosts##55016 |goto 38.50,25.83
step
Open Your Engineering Crafting Panel:
_<Create 15 Nitro Boosts>_
|tip Select "Nitro Boost" in the Engineering Panel, then use it on your belt.
Reach 35 Northrend Engineering |skill Northrend Engineering,35 |goto 39.66,26.16
step
talk Timofey Oshenko##28697
|tip Inside the building.
learn Mind Amplification Dish##67839 |goto 38.50,25.83
step
Open Your Engineering Crafting Panel:
_<Create 30 Mind Amplification Dish>_
|tip Select "Mind Amplification Dish" in the Engineering Panel, then use it on your belt.
Reach 45 Northrend Engineering |skill Northrend Engineering,45 |goto 39.66,26.16
step
talk Timofey Oshenko##28697
|tip Inside the building.
learn Mana Injector Kit##56477 |goto 38.50,25.83
step
Open Your Engineering Crafting Panel:
_<Create 5 Mana Injector Kit>_
Reach 50 Northrend Engineering |skill Northrend Engineering,50 |goto 39.66,26.16
step
talk Timofey Oshenko##28697
|tip Inside the building.
learn Mechanized Snow Goggles##61482 |goto 38.50,25.83
step
Open Your Engineering Crafting Panel:
_<Create 5 Mechanized Snow Goggles>_
Reach 55 Northrend Engineering |skill Northrend Engineering,55 |goto 39.66,26.16
step
talk Timofey Oshenko##28697
|tip Inside the building.
learn Noise Machine##56467 |goto 38.50,25.83
step
Open Your Engineering Crafting Panel:
_<Create 5 Noise Machine>_
Reach 60 Northrend Engineering |skill Northrend Engineering,60 |goto 39.66,26.16
step
talk Timofey Oshenko##28697
|tip Inside the building.
buy 25 Mining Pick##2901 |goto 38.93,24.56
step
talk Timofey Oshenko##28697
|tip Inside the building.
buy 25 Blacksmith Hammer##5956 |goto 38.93,24.56
step
talk Ranid Glowergold##28718
|tip Inside the building.
buy 25 Skinning Knife##7005 |goto 36.62,27.85
step
talk Timofey Oshenko##28697
|tip Inside the building.
learn Gnomish Army Knife##56462 |goto 38.50,25.83
step
Open Your Engineering Crafting Panel:
_<Create 25 Gnomish Army Knife>_
|tip You may need to create a few more.
Reach 75 Northrend Engineering |skill Northrend Engineering,75 |goto 39.66,26.16
step
_Congratulations!_
You Reached 75 Northrend Engineering Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Engineering\\Leveling Guides\\Cataclysm Engineering 1-75",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Cataclysm Engineering skill from 1-75.",
condition_end=function() return skill('Cataclysm Engineering') >= 75 end,
condition_suggested=function() return skill('Cataclysm Engineering') > 0 and skill('Cataclysm Engineering') < 75 and level >= 5 end,
},[[
step
talk Lilliam Sparkspindle##5518
Train Cataclysm Engineering |skillmax Cataclysm Engineering,75 |goto Stormwind City/0 62.84,31.97
|tip You must be at least level 5.
step
collect 70 Obsidium Bar##54849
|tip Farm and Smelt them with Mining or purchase them from the Auction House.
|only if skill("Cataclysm Engineering") < 45
step
collect 30 Volatile Air##52328
|tip Farm them from elementals or purchase them from the Auction House.
|only if skill("Cataclysm Engineering") < 30
step
collect 360 Elementium Bar##52186
|tip Farm and Smelt them with Mining or purchase them from the Auction House.
|only if skill("Cataclysm Engineering") < 75
step
collect 15 Volatile Fire##52325
|tip Farm them from elementals or purchase them from the Auction House.
|only if skill("Cataclysm Engineering") < 75
step
Open Your Engineering Crafting Panel:
_<Create 20 Handful of Obsidium Bolts>_
|tip Save them for later.
Reach 15 Cataclysm Engineering |skill Cataclysm Engineering,15 |goto 63.66,36.64
step
talk Lilliam Sparkspindle##5518
learn Electrified Ether##94748 |goto 62.84,31.97
step
Open Your Engineering Crafting Panel:
_<Create 15 Electrified Ether>_
|tip Save them for later.
Reach 30 Cataclysm Engineering |skill Cataclysm Engineering,30 |goto 63.66,36.64
step
talk Lilliam Sparkspindle##5518
learn Volatile Seaforium Blastpack##84409 |goto 62.84,31.97
step
Open Your Engineering Crafting Panel:
_<Create 13 Volatile Seaforium Blastpack>_
Reach 42 Cataclysm Engineering |skill Cataclysm Engineering,42 |goto 63.66,36.64
step
talk Lilliam Sparkspindle##5518
learn Safety Catch Removal Kit##84410 |goto 62.84,31.97
step
Open Your Engineering Crafting Panel:
_<Create 3 Safety Catch Removal Kit>_
Reach 45 Cataclysm Engineering |skill Cataclysm Engineering,45 |goto 63.66,36.64
step
talk Lilliam Sparkspindle##5518
learn Lure Master Tackle Box##84415 |goto 62.84,31.97
step
Open Your Engineering Crafting Panel:
_<Create 15 Lure Master Tackle Box>_
Reach 60 Cataclysm Engineering |skill Cataclysm Engineering,60 |goto 63.66,36.64
step
talk Lilliam Sparkspindle##5518
learn Heat-Treated Spinning Lure##84430 |goto 62.84,31.97
step
Open Your Engineering Crafting Panel:
_<Create 15 Heat-Treated Spinning Lure>_
Reach 75 Cataclysm Engineering |skill Cataclysm Engineering,75 |goto 63.66,36.64
step
_Congratulations!_
You Reached 75 Cataclysm Engineering Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Leveling Guides\\Fishing 1-300",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Fishing skill from 1-300.",
condition_end=function() return skill('Fishing') >= 300 end,
condition_suggested=function() return skill('Fishing') > 0 and skill('Fishing') < 300 and level >= 5 end,
},[[
step
talk Arnold Leland##5493
Train Fishing |skillmax Fishing,300 |goto Stormwind City/0 54.80,69.60
step
talk Catherine Leland##5494
buy Fishing Pole##6256 |goto 55.03,69.70
|only if skill("Fishing") < 2
step
Fish in the open water
|tip You can fish anywhere and gain skill.
Reach 300 Fishing |skill Fishing,300 |goto 54.88,68.10
step
_Congratulations!_
You Reached 300 Fishing Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Leveling Guides\\Outland Fishing 1-75",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Outland Fishing skill from 1-75.",
condition_end=function() return skill('Outland Fishing') >= 75 end,
condition_suggested=function() return skill('Outland Fishing') > 0 and skill('Outland Fishing') < 75 end,
},[[
step
talk Old Man Barlo##25580
Train Outland Fishing |skillmax Outland Fishing,75 |goto Terokkar Forest/0 38.72,12.80
step
Fish in the open water
|tip You can fish anywhere and gain skill.
Reach 75 Outland Fishing |skill Outland Fishing,75 |goto 38.66,12.71
step
_Congratulations!_
You Reached 75 Outland Fishing Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Leveling Guides\\Northrend Fishing 1-75",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Northrend Fishing skill from 1-75.",
condition_end=function() return skill('Northrend Fishing') >= 75 end,
condition_suggested=function() return skill('Northrend Fishing') > 0 and skill('Northrend Fishing') < 75 end,
},[[
step
talk Marcia Chase##28742
Train Northrend Fishing |skillmax Northrend Fishing,75 |goto Dalaran/1 53.05,64.93
step
Fish in the fountain
|tip You need to stand a bit away from it to be able to fish.
Reach 75 Northrend Fishing |skill Northrend Fishing,75 |goto 52.68,65.29
step
_Congratulations!_
You Reached 75 Northrend Fishing Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Leveling Guides\\Cataclysm Fishing 1-75",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Cataclysm Fishing skill from 1-75.",
condition_end=function() return skill('Cataclysm Fishing') >= 75 end,
condition_suggested=function() return skill('Cataclysm Fishing') > 0 and skill('Cataclysm Fishing') < 75 end,
},[[
step
talk Arnold Leland##5493
Train Cataclysm Fishing |skillmax Cataclysm Fishing,75  |goto Stormwind City/0 54.80,69.60
step
Fish in the open water
|tip You can fish anywhere and gain skill.
Reach 75 Cataclysm Fishing |skill Cataclysm Fishing,75 |goto Mount Hyjal/0 62.95,26.60
step
_Congratulations!_
You Reached 75 Cataclysm Fishing Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Earthroot",{
author="support@zygorguides.com",
description="\nEarthroot can be gathered from Elwynn Forest.",
condition_end=function() return skill('Herbalism') >= 115 end,
},[[
step
map Elwynn Forest/0
path follow smart; loop on; ants straight
path	49.88,54.79	50.22,58.11	52.42,59.79	54.83,59.97	57.23,59.09
path	59.37,57.63	60.82,55.70	64.20,54.45	64.94,56.08	65.84,58.71
path	67.06,58.24	68.51,55.03	67.80,51.81	67.95,49.11	67.75,46.56
path	66.32,45.94	65.08,43.80	65.74,39.78	68.22,38.21	71.06,37.25
path	74.01,36.51	77.07,38.11	78.76,40.47	81.23,48.51	80.52,52.16
path	81.74,56.63	83.89,59.58	87.45,62.43	88.99,64.52	89.43,66.64
path	89.50,70.92	91.01,74.84	89.44,79.01	86.21,80.07	84.52,82.62
path	83.29,82.69	82.48,80.40	80.19,79.92	77.64,80.64	75.35,79.26
path	73.48,76.86	71.85,71.75	69.84,68.89	68.20,69.84	66.27,71.92
path	64.32,73.08	62.12,73.92	59.71,78.36	58.75,79.87	56.76,80.70
path	55.34,82.89	51.24,84.24	50.29,82.86	49.92,79.56	51.11,76.38
path	50.20,74.24	47.52,73.40	45.29,72.98	44.02,74.25	43.00,76.51
path	41.52,75.13	40.06,72.85	35.93,77.08	33.52,79.71	27.76,81.38
path	24.75,78.21	22.17,74.76	22.35,70.32	24.28,70.35	26.71,69.42
path	28.22,66.99	29.27,63.95	29.61,58.91	30.49,56.84	32.20,56.15
path	31.44,53.00	35.72,51.53	38.96,52.97	41.60,52.09	44.11,50.33
path	47.39,51.15	49.99,52.88
Gather Earthroot Along the Path
click Earthroot##1619+
|tip Gather Earthroot along the path.
collect Earthroot##2449 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Peacebloom",{
author="support@zygorguides.com",
description="\nPeacebloom can be gathered from Elwynn Forest.",
condition_end=function() return skill('Herbalism') >= 50 end,
},[[
step
map Elwynn Forest/0
path follow smart; loop on; ants straight
path	49.62,59.69	51.74,60.45	55.25,61.20	59.03,61.69	61.94,62.27
path	64.04,63.82	66.53,66.13	67.79,62.24	70.56,61.09	72.89,62.13
path	74.03,66.57	75.31,71.59	77.06,76.32	76.79,78.60	77.58,81.44
path	76.28,82.77	73.19,82.53	70.32,83.21	68.43,81.68	66.51,81.26
path	65.63,78.54	63.56,75.79	61.16,75.51	59.26,77.15	57.07,79.05
path	55.17,83.28	53.19,83.73	50.87,82.55	48.37,84.04	45.95,85.19
path	42.21,81.98	40.57,84.77	37.78,89.01	34.45,89.09	31.24,87.68
path	28.68,86.00	26.12,87.15	25.63,81.55	25.84,78.27	27.03,75.26
path	29.51,69.02	31.72,67.66	33.65,65.85	34.87,61.79	33.61,58.00
path	34.10,54.97	37.31,56.45	40.90,57.15	43.52,55.81	45.93,57.19
Gather Peacebloom Along the Path
click Peacebloom##1618+
|tip Gather Peacebloom along the path.
collect Peacebloom##2447 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Silverleaf",{
author="support@zygorguides.com",
description="\nSilverleaf can be gathered from Tirisfal Glades.",
condition_end=function() return skill('Herbalism') >= 50 end,
},[[
step
map Elwynn Forest/0
path follow smart; loop on; ants straight
path	49.62,59.69	51.74,60.45	55.25,61.20	59.03,61.69	61.94,62.27
path	64.04,63.82	66.53,66.13	67.79,62.24	70.56,61.09	72.89,62.13
path	74.03,66.57	75.31,71.59	77.06,76.32	76.79,78.60	77.58,81.44
path	76.28,82.77	73.19,82.53	70.32,83.21	68.43,81.68	66.51,81.26
path	65.63,78.54	63.56,75.79	61.16,75.51	59.26,77.15	57.07,79.05
path	55.17,83.28	53.19,83.73	50.87,82.55	48.37,84.04	45.95,85.19
path	42.21,81.98	40.57,84.77	37.78,89.01	34.45,89.09	31.24,87.68
path	28.68,86.00	26.12,87.15	25.63,81.55	25.84,78.27	27.03,75.26
path	29.51,69.02	31.72,67.66	33.65,65.85	34.87,61.79	33.61,58.00
path	34.10,54.97	37.31,56.45	40.90,57.15	43.52,55.81	45.93,57.19
Gather Silverleaf Along the Path
click Silverleaf##1617+
|tip Gather Silverleaf along the path.
collect Silverleaf##765 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Leveling Guides\\Herbalism 1-300",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Herbalism skill from 1-300.",
condition_end=function() return skill('Herbalism') >= 300 end,
condition_suggested=function() return skill('Herbalism') > 0 and skill('Herbalism') < 300 and level >= 5 end,
},[[
step
talk Tannysa##5566
Train Herbalism |skillmax Herbalism,300 |goto Stormwind City/0 54.30,84.10
|tip You must be at least level 5.
step
map Felwood/0
path follow smart; loop on; ants curved; dist 30
path	48.25,74.18	45.57,71.52	45.19,67.93	44.99,64.81	43.75,63.75
path	42.60,61.94	42.10,60.44	42.52,58.39	42.19,55.80	42.12,53.77
path	42.52,51.99	42.46,49.04	43.22,46.66	42.28,45.26	43.25,43.10
path	44.86,43.11	46.09,41.05	45.72,36.88	46.03,33.95	47.65,33.39
path	51.14,32.99	51.89,29.81	53.84,27.92	55.31,24.24	55.39,22.27
path	56.09,21.01	57.54,18.62	56.84,16.17	55.09,15.09	53.16,14.49
path	50.54,15.11	49.43,15.94	47.64,18.21	46.30,21.16	45.98,22.93
path	43.76,23.67	42.49,24.58	40.74,26.31	41.42,27.63	41.25,30.12
path	40.28,31.55	39.63,32.74	40.28,34.49	39.88,36.76	39.02,41.56
path	38.95,44.99	40.65,46.99	39.91,49.88	39.07,53.19	38.83,55.66
path	39.72,58.29	41.23,59.18	41.60,60.63	42.10,62.62	41.71,64.52
path	40.58,65.26	40.40,68.00	39.31,70.23	39.26,71.58	41.53,72.75
path	41.89,74.07	40.92,76.49	41.72,78.38	43.01,80.29	44.69,81.19
path	45.84,83.32	47.74,82.92	49.87,80.73
Collect herbs along the path
|tip Turn on your "Find Herbs" ability to see the nodes.
|tip They appear on your minimap as yellow dots.
|tip You will collect leaves from gathering until you reach around 250 skill level.
Reach 300 Herbalism Skill |skill Herbalism,300
step
_Congratulations!_
You Reached 300 Herbalism Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Leveling Guides\\Outland Herbalism 1-75",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Outland Herbalism skill from 1-75.",
condition_end=function() return skill('Outland Herbalism') >= 75 end,
condition_suggested=function() return skill('Outland Herbalism') > 0 and skill('Outland Herbalism') < 75 and level >= 5 end,
},[[
step
Enter the building |goto Hellfire Peninsula/0 54.24,65.33 < 10 |walk
talk Ruak Stronghorn##18748
|tip Inside the building.
Train Outland Herbalism |skillmax Outland Herbalism,75 |goto 53.60,65.79
|tip You must be at least level 5.
step
map Terokkar Forest/0
path follow smart; loop on; ants curved; dist 30
path	31.60,45.71	32.29,42.68	32.86,38.44	32.61,35.72	34.85,34.70
path	36.60,32.54	36.98,30.09	38.61,28.59	39.20,26.76	40.64,25.10
path	41.40,22.16	43.06,19.91	43.81,17.68	43.32,15.01	43.95,12.48
path	45.94,12.75	48.58,14.35	50.45,17.02	49.36,20.09	49.79,22.32
path	50.98,24.83	53.08,25.59	55.63,25.32	58.26,25.33	59.93,23.87
path	61.12,26.59	62.13,28.15	63.46,29.60	65.02,31.32	67.13,31.63
path	69.82,31.74	69.61,35.63	68.73,39.39	69.79,42.02	70.46,45.89
path	70.51,48.71	68.94,53.17	68.11,54.89	65.38,54.27	63.87,51.31
path	61.59,50.51	59.04,49.28	56.48,46.30	53.96,42.43	54.33,38.20
path	53.25,35.66	50.24,35.67	48.92,34.53	46.58,34.04	43.68,34.49
path	40.40,35.76	38.35,36.51	36.62,38.18	36.01,39.93	36.50,42.94
path	35.72,43.53	33.66,44.98
Collect herbs along the path
|tip Turn on your "Find Herbs" ability to see the nodes.
|tip They appear on your minimap as yellow dots.
Reach 75 Outland Herbalism |skill Outland Herbalism,75
step
_Congratulations!_
You Reached 75 Outland Herbalism Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Leveling Guides\\Northrend Herbalism 1-75",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Northrend Herbalism skill from 1-75.",
condition_end=function() return skill('Northrend Herbalism') >= 75 end,
condition_suggested=function() return skill('Northrend Herbalism') > 0 and skill('Northrend Herbalism') < 75 and level >= 5 end,
},[[
step
talk Dorothy Egan##28704
|tip Inside the building.
Train Northrend Herbalism |skillmax Northrend Herbalism,75 |goto Dalaran/1 42.92,34.09
|tip You must be at least level 5.
step
map The Storm Peaks/0
path follow smart; loop on; ants curved; dist 30
path	44.47,82.60	42.57,84.25	41.42,86.29	39.97,87.22	37.79,88.21
path	36.00,88.41	32.16,86.98	31.95,82.81	33.72,82.37	35.34,81.54
path	36.45,79.66	36.48,77.21	36.52,73.41	36.37,68.99	35.66,66.66
path	34.74,66.05	32.67,66.39	30.39,66.66	29.26,68.03	27.94,67.97
path	27.37,65.05	26.09,63.37	24.55,60.75	22.02,59.05	22.06,56.96
path	23.93,56.94	25.56,57.80	27.04,57.17	27.24,55.07	28.06,52.54
path	30.00,50.73	32.13,49.94	33.76,48.08	35.39,47.25	37.39,47.40
path	38.25,51.03	37.79,56.15	37.98,59.55	39.46,61.63	40.85,62.47
path	42.59,61.16	43.97,61.83	45.84,63.90	46.81,66.37	47.88,68.29
path	48.03,71.18	47.95,74.23	48.01,77.09	47.27,81.01	45.03,82.54
Collect herbs along the path
|tip Turn on your "Find Herbs" ability to see the nodes.
|tip They appear on your minimap as yellow dots.
Reach 75 Northrend Herbalism |skill Northrend Herbalism,75
step
_Congratulations!_
You Reached 75 Northrend Herbalism Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Leveling Guides\\Cataclysm Herbalism 1-75",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Cataclysm Herbalism skill from 1-75.",
condition_end=function() return skill('Cataclysm Herbalism') >= 75 end,
condition_suggested=function() return skill('Cataclysm Herbalism') > 0 and skill('Cataclysm Herbalism') < 75 and level >= 5 end,
},[[
step
talk Tannysa##5566
Train Cataclysm Herbalism |skillmax Cataclysm Herbalism,75 |goto Stormwind City/0 54.30,84.10
|tip You must be at least level 5.
step
map Uldum/0
path follow smart; loop on; ants curved; dist 30
path	58.22,32.10	57.88,29.28	56.76,27.53	56.15,25.21	56.13,23.04
path	55.97,19.91	56.87,16.89	57.19,15.89	58.64,17.00	57.41,20.47
path	57.08,23.23	57.34,26.22	58.74,28.50	59.32,30.17	59.65,32.67
path	59.97,34.40	59.36,37.45	59.27,40.08	58.60,41.11	58.70,43.43
path	57.31,45.03	58.03,48.68	58.18,49.37	59.61,53.40	60.32,56.92
path	60.59,61.93	62.19,64.31	63.83,65.81	64.67,68.95	66.90,71.36
path	68.42,73.02	69.88,76.73	68.37,77.06	67.16,78.08	65.68,77.55
path	63.76,78.82	61.65,80.22	60.70,82.13	59.85,81.31	59.45,78.80
path	59.03,76.13	58.98,72.97	58.51,70.86	59.14,67.93	58.95,64.77
path	58.01,63.37	58.07,61.55	58.18,58.80	58.14,55.07	56.61,51.76
path	54.58,46.48	52.35,46.41	50.69,42.73	50.22,35.84	51.93,34.13
path	53.82,35.94	56.31,36.01
Collect herbs along the path
|tip Turn on your "Find Herbs" ability to see the nodes.
|tip They appear on your minimap as yellow dots.
Reach 75 Cataclysm Herbalism |skill Cataclysm Herbalism,75
step
_Congratulations!_
You Reached 75 Cataclysm Herbalism Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Inscription\\Leveling Guides\\Inscription 1-300",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Inscription skill from 1-300.",
condition_end=function() return skill('Inscription') >= 300 end,
condition_suggested=function() return skill('Inscription') > 0 and skill('Inscription') < 300 and level >= 5 end,
},[[
step
talk Catarina Stanford##30713
|tip Inside the building.
Train Inscription |skillmax Inscription,300 |goto Stormwind City/0 49.83,74.82
|tip You must be at least level 5.
step
talk Stanly McCormick##30730
|tip Inside the building.
buy 1 Virtuoso Inking Set##39505 |goto 49.57,74.95
|only if skill("Inscription") < 2
step
talk Stanly McCormick##30730
|tip Inside the building.
buy 300 Light Parchment##39354 |goto 49.57,74.95
|only if skill("Inscription") < 45
step
collect 88 Alabaster Pigment##39151
|tip Farm and Mill them with Herbalism or purchase them from the Auction House.
|tip Alabaster Pigment can be Milled from Earthroot, Peacebloom, and Silverleaf.
|only if skill("Inscription") < 45
step
Open Your Inscription Crafting Panel:
_<Create 44 Moonglow Ink>_
Reach 45 Inscription |skill Inscription,45
step
talk Catarina Stanford##30713
|tip Inside the building.
learn Scroll of Recall##48248 |goto 49.83,74.82
step
Open Your Inscription Crafting Panel:
_<Create 30 Scroll of Recall>_
Reach 75 Inscription |skill Inscription,75
step
talk Catarina Stanford##30713
|tip Inside the building.
learn Midnight Ink##53462 |goto 49.83,74.82
step
collect 74 Dusky Pigment##39334
|tip Farm and Mill them with Herbalism or purchase them from the Auction House.
|tip Dusky Pigment can be Milled from Briarthorn, Bruiseweed, Swiftthistle, Mageroyal, and Stranglekelp.
|only if skill("Inscription") < 80
step
Open Your Inscription Crafting Panel:
_<Create 37 Midnight Ink>_
|tip Make all of these, but stop making them at skill 80 until you hit skill 85.
Reach 80 Inscription |skill Inscription,80
step
talk Catarina Stanford##30713
|tip Inside the building.
learn Vanishing Powder##92026 |goto 49.83,74.82
step
Open Your Inscription Crafting Panel:
_<Create 25 Vanishing Powder>_
Reach 100 Inscription |skill Inscription,100
step
talk Catarina Stanford##30713
|tip Inside the building.
learn Lion's Ink##57704 |goto 49.83,74.82
step
collect 126 Golden Pigment##39338
|tip Farm and Mill them with Herbalism or purchase them from the Auction House.
|tip Golden Pigment can be Milled from Kingsblood, Wild Steelbloom, Grave Moss, and Liferoot.
|tip Keep any Burnt Pigment you gather if you are Milling yourself.
|only if skill("Inscription") < 105
step
Open Your Inscription Crafting Panel:
_<Create 63 Lion's Ink>_
|tip Make all of these, you'll need them later.
Reach 105 Inscription |skill Inscription,105
step
talk Catarina Stanford##30713
|tip Inside the building.
Train Research: Moonglow Ink |learn Research: Moonglow Ink##165564 |goto 49.83,74.82
step
Open Your Inscription Crafting Panel:
_<Create 4 Research: Moonglow Ink>_
Reach 109 Inscription |skill Inscription,109
step
talk Catarina Stanford##30713
|tip Inside the building.
learn Research: Midnight Ink##165304 |goto 49.83,74.82
step
Open Your Inscription Crafting Panel:
_<Create 3 Research: Midnight Ink>_
Reach 112 Inscription |skill Inscription,112
step
talk Catarina Stanford##30713
|tip Inside the building.
learn Research: Lion's Ink##165456 |goto 49.83,74.82
step
Open Your Inscription Crafting Panel:
_<Create 4 Research: Lion's Ink>_
Reach 116 Inscription |skill Inscription,116
step
Open Your Inscription Crafting Panel:
_<Create 34 Newly Discovered Lion's Ink Glyphs>_
|tip Create 34 of whatever glyph was discovered during Research: Lion's Ink from the previous step.
|tip You can also turn any Burnt Pigment you have into Dawnstar Ink and make Strange Tarot cards.
Reach 150 Inscription |skill Inscription,150
step
talk Catarina Stanford##30713
|tip Inside the building.
learn Jadefire Ink##57707 |goto 49.83,74.82
step
collect 80 Emerald Pigment##39339
|tip Farm and Mill them with Herbalism or purchase them from the Auction House.
|tip Emerald Pigment can be Milled from Fadeleaf, Dragon's Teeth, Goldthorn, Khadgar's Whisker.
|only if skill("Inscription") < 155
step
Open Your Inscription Crafting Panel:
_<Create 40 Jadefire Ink>_
|tip Make all of these, you'll need them later.
Reach 155 Inscription |skill Inscription,155
step
talk Catarina Stanford##30713
|tip Inside the building.
learn Scroll of Stamina III##50614 |goto 49.83,74.82
step
Open Your Inscription Crafting Panel:
_<Create 5 Scroll of Stamina III>_
Reach 160 Inscription |skill Inscription,160
step
talk Catarina Stanford##30713
|tip Inside the building.
learn Scroll of Versatility III##50606 |goto 49.83,74.82
step
Open Your Inscription Crafting Panel:
_<Create 5 Scroll of Versatility III>_
Reach 165 Inscription |skill Inscription,165
step
talk Catarina Stanford##30713
|tip Inside the building.
learn Scroll of Intellect III##50599 |goto 49.83,74.82
step
Open Your Inscription Crafting Panel:
_<Create 5 Scroll of Intellect III>_
Reach 170 Inscription |skill Inscription,170
step
talk Catarina Stanford##30713
|tip Inside the building.
learn Scroll of Strength III##58486 |goto 49.83,74.82
step
Open Your Inscription Crafting Panel:
_<Create 5 Scroll of Strength III>_
Reach 175 Inscription |skill Inscription,175
step
talk Catarina Stanford##30713
|tip Inside the building.
learn Scroll of Agility III##58476 |goto 49.83,74.82
step
Open Your Inscription Crafting Panel:
_<Create 5 Scroll of Agility III>_
Reach 180 Inscription |skill Inscription,180
step
talk Catarina Stanford##30713
|tip Inside the building.
learn Research: Jadefire Ink##165460 |goto 49.83,74.82
step
Open Your Inscription Crafting Panel:
_<Create 5 Research: Jadefire Ink>_
Reach 185 Inscription |skill Inscription,185
step
talk Catarina Stanford##30713
|tip Inside the building.
learn Arcane Tarot##59487 |goto 49.83,74.82
step
talk Catarina Stanford##30713
|tip Inside the building.
learn Royal Ink##57708 |goto 49.83,74.82
step
Open Your Inscription Crafting Panel:
_<Create 15 Newly Discovered Jadefire Ink Glyphs>_
|tip Create 15 of whatever glyph was discovered during Research: Jadefire Ink from the previous step.
|tip You can also turn any Indigo Pigment you have into Royal Ink and make Arcane Tarot cards.
Reach 200 Inscription |skill Inscription,200
step
talk Catarina Stanford##30713
|tip Inside the building.
learn Celestial Ink##57709 |goto 49.83,74.82
step
collect 68 Violet Pigment##39340
|tip Farm and Mill them with Herbalism or purchase them from the Auction House.
|tip Violet Pigment can be Milled from Blindweed, Firebloom, Ghost Mushroom, Gromsblood, Purple Lotus, Sungrass, and Arthas' Tears.
|only if skill("Inscription") < 205
step
Open Your Inscription Crafting Panel:
_<Create 33 Celestial Ink>_
|tip Make all of these, you'll need them later.
Reach 205 Inscription |skill Inscription,205
step
talk Catarina Stanford##30713
|tip Inside the building.
learn Scroll of Recall II##60336 |goto 49.83,74.82
step
Open Your Inscription Crafting Panel:
_<Create 10 Scroll of Recall II>_
Reach 215 Inscription |skill Inscription,215
step
talk Catarina Stanford##30713
|tip Inside the building.
learn Scroll of Intellect IV##50600 |goto 49.83,74.82
step
Open Your Inscription Crafting Panel:
_<Create 5 Scroll of Intellect IV>_
Reach 220 Inscription |skill Inscription,220
step
talk Catarina Stanford##30713
|tip Inside the building.
learn Scroll of Strength IV##58487 |goto 49.83,74.82
step
Open Your Inscription Crafting Panel:
_<Create 5 Scroll of Strength IV>_
Reach 225 Inscription |skill Inscription,225
step
talk Catarina Stanford##30713
|tip Inside the building.
learn Scroll of Agility IV##58478 |goto 49.83,74.82
step
Open Your Inscription Crafting Panel:
_<Create 5 Scroll of Agility IV>_
Reach 230 Inscription |skill Inscription,230
step
talk Catarina Stanford##30713
|tip Inside the building.
learn Research: Celestial Ink##165461 |goto 49.83,74.82
step
Open Your Inscription Crafting Panel:
_<Create 3 Research: Celestial Ink>_
Reach 233 Inscription |skill Inscription,233
step
talk Catarina Stanford##30713
|tip Inside the building.
learn Fiery Ink##57710 |goto 49.83,74.82
step
talk Catarina Stanford##30713
|tip Inside the building.
learn Shadowy Tarot##59491 |goto 49.83,74.82
step
Open Your Inscription Crafting Panel:
_<Create 17 Newly Discovered Celestial Ink Glyphs>_
|tip Create 17 of whatever glyph was discovered during Research: Celestial Ink from the previous step.
|tip You can also turn any Ruby Pigment you have into Fiery Ink and make Shadowy Tarot cards.
Reach 250 Inscription |skill Inscription,250
step
talk Catarina Stanford##30713
|tip Inside the building.
learn Shimmering Ink##57711 |goto 49.83,74.82
step
collect 140 Silvery Pigment##39341
|tip Farm and Mill them with Herbalism or purchase them from the Auction House.
|tip Silvery Pigment can be Milled from Dreamfoil, Golden Sansam, Icecap, Mountain Silversage, and Sorrowmoss.
|only if skill("Inscription") < 275
step
Open Your Inscription Crafting Panel:
_<Create 70 Shimmering Ink>_
|tip Make all of these, you'll need them later.
Reach 255 Inscription |skill Inscription,255
step
talk Catarina Stanford##30713
|tip Inside the building.
learn Scroll of Versatility V##50608 |goto 49.83,74.82
step
Open Your Inscription Crafting Panel:
_<Create 5 Scroll of Versatility V>_
Reach 260 Inscription |skill Inscription,260
step
talk Catarina Stanford##30713
|tip Inside the building.
learn Scroll of Intellect V##50601 |goto 49.83,74.82
step
Open Your Inscription Crafting Panel:
_<Create 5 Scroll of Intellect V>_
Reach 265 Inscription |skill Inscription,265
step
talk Catarina Stanford##30713
|tip Inside the building.
learn Scroll of Strength V##58488 |goto 49.83,74.82
step
Open Your Inscription Crafting Panel:
_<Create 5 Scroll of Strength V>_
Reach 270 Inscription |skill Inscription,270
step
talk Catarina Stanford##30713
|tip Inside the building.
learn Scroll of Agility V##58480 |goto 49.83,74.82
step
Open Your Inscription Crafting Panel:
_<Create 5 Scroll of Agility V>_
Reach 275 Inscription |skill Inscription,275
step
talk Catarina Stanford##30713
|tip Inside the building.
learn Research: Shimmering Ink##165463 |goto 49.83,74.82
step
talk Catarina Stanford##30713
|tip Inside the building.
learn Ink of the Sky##57712 |goto 49.83,74.82
step
Open Your Inscription Crafting Panel:
_<Create 4 Research: Shimmering Ink>_
Reach 279 Inscription |skill Inscription,279
step
Open Your Inscription Crafting Panel:
_<Create 11 Newly Discovered Lion's Ink Glyphs>_
|tip Create 11 of whatever glyph was discovered during Research: Shimmering Ink from the previous step.
|tip You can also turn any Sapphire Pigment you have into Ink of the Sky.
Reach 290 Inscription |skill Inscription,290
step
talk Catarina Stanford##30713
|tip Inside the building.
learn Scroll of Stamina VI##50618 |goto 49.83,74.82
step
Open Your Inscription Crafting Panel:
_<Create 10 Scroll of Stamina VI>_
Reach 300 Inscription |skill Inscription,300
step
_Congratulations!_
You Reached 300 Inscription Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Inscription\\Leveling Guides\\Outland Inscription 1-75",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Outland Inscription skill from 1-75.",
condition_end=function() return skill('Outland Inscription') >= 75 end,
condition_suggested=function() return skill('Outland Inscription') > 0 and skill('Outland Inscription') < 75 and level >= 5 end,
},[[
step
Enter the building |goto Shattrath City/0 45.21,84.06 < 5 |walk
clicknpc Inscription##33615
|tip Inside the building.
Train Outland Inscription |skillmax Outland Inscription,75 |goto 43.44,90.54
|tip You must be at least level 5.
only if rep ('The Scryers') >= Neutral
step
Enter the building |goto 35.81,46.17 < 5 |walk
talk Recorder Lidio##33679
|tip Inside the building.
Train Outland Inscription |skillmax Outland Inscription,75 |goto 36.13,43.69
|tip You must be at least level 5.
only if rep ('The Aldor') >= Neutral
step
talk Eral##19197
buy 1 Virtuoso Inking Set##39505 |goto 61.70,71.00
|only if itemcount(39505) == 0
step
talk Eral##19197
buy 200 Light Parchment##39354 |goto 61.70,71.00
step
collect 346 Nether Pigment##39342
|tip Farm and Mill them with Herbalism or purchase them from the Auction House.
|tip Nether Pigment can be Milled from Nightmare Vine, Ancient Lichen, Dreaming Glory, Felweed, Mana Thistle, Netherbloom, Ragveil, and Terocone.
|only if skill("Outland Inscription") < 75
step
Open Your Inscription Crafting Panel:
_<Create 173 Ethereal Ink>_
|tip Make all of these, you'll need them later.
Reach 5 Outland Inscription |skill Outland Inscription,5
step
Enter the building |goto 45.21,84.06 < 5 |walk
clicknpc Inscription##33615
|tip Inside the building.
learn Scroll of Strength VI##58489 |goto 43.44,90.54
only if rep ('The Scryers') >= Neutral
step
Enter the building |goto 35.81,46.17 < 5 |walk
talk Recorder Lidio##33679
|tip Inside the building.
learn Scroll of Strength VI##58489 |goto 36.13,43.69
only if rep ('The Aldor') >= Neutral
step
Open Your Inscription Crafting Panel:
_<Create 10 Scroll of Strength VI>_
Reach 15 Outland Inscription |skill Outland Inscription,15
step
Enter the building |goto 45.21,84.06 < 5 |walk
clicknpc Inscription##33615
|tip Inside the building.
learn Scroll of Agility VI##58481 |goto 43.44,90.54
only if rep ('The Scryers') >= Neutral
step
Enter the building |goto 35.81,46.17 < 5 |walk
talk Recorder Lidio##33679
|tip Inside the building.
learn Scroll of Agility VI##58481 |goto 36.13,43.69
only if rep ('The Aldor') >= Neutral
step
Open Your Inscription Crafting Panel:
_<Create 10 Scroll of Agility VI>_
|tip You may need to create more to reach 25.
Reach 25 Outland Inscription |skill Outland Inscription,25
step
Enter the building |goto 45.21,84.06 < 5 |walk
clicknpc Inscription##33615
|tip Inside the building.
learn Research: Ethereal Ink##165464 |goto 43.44,90.54
only if rep ('The Scryers') >= Neutral
step
Enter the building |goto 35.81,46.17 < 5 |walk
talk Recorder Lidio##33679
|tip Inside the building.
learn Research: Ethereal Ink##165464 |goto 36.13,43.69
only if rep ('The Aldor') >= Neutral
step
Open Your Inscription Crafting Panel:
_<Create 50 Research: Ethereal Ink>_
Reach 75 Outland Inscription |skill Outland Inscription,75
step
_Congratulations!_
You Reached 75 Outland Inscription Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Inscription\\Leveling Guides\\Northrend Inscription 1-75",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Northrend Inscription skill from 1-75.",
condition_end=function() return skill('Northrend Inscription') >= 75 end,
condition_suggested=function() return skill('Northrend Inscription') > 0 and skill('Northrend Inscription') < 75 and level >= 5 end,
},[[
step
talk Professor Pallin##92195
|tip Inside the building.
Train Northrend Inscription |skillmax Northrend Inscription,75 |goto Dalaran/1 41.57,37.16
|tip You must be at least level 5.
step
collect 214 Azure Pigment##39343
|tip These are Milled from Adder's Tongue, Deadnettle, Fire Leaf, Goldclover, Icethorn, Lichbloom, Fire Seed, Talandra's Rose and Tiger Lily.
|tip You can also buy these materials from the Auction House.
|only if skill("Northrend Inscription") < 75
step
Open Your Inscription Crafting Panel:
_<Create 107 Ink of the Sea>_
collect 107 Ink of the Sea##43126
|only if skill("Northrend Inscription") < 75
step
talk Larana Drome##28723
|tip Inside the building.
buy 150 Light Parchment##39354 |goto 41.37,36.68
|only if skill("Northrend Inscription") < 75
step
Open Your Inscription Crafting Panel:
_<Research 5 Ink of the Sea>_
Reach 25 Northrend Inscription |skill Northrend Inscription,25
step
talk Professor Pallin##92195
|tip Inside the building.
learn Scroll of Stamina VIII##50620|goto 41.57,37.16
step
Open Your Inscription Crafting Panel:
_<Create 5 Scroll of Stamina VIII>_
Reach 30 Northrend Inscription |skill Northrend Inscription,30
step
talk Professor Pallin##92195
|tip Inside the building.
learn Scroll of Versatility VIII##50611|goto 41.57,37.16
step
Open Your Inscription Crafting Panel:
_<Create 5 Scroll of Versatility VIII>_
Reach 35 Northrend Inscription |skill Northrend Inscription,35
step
talk Professor Pallin##92195
|tip Inside the building.
learn Scroll of Intellect VIII##50604|goto 41.57,37.16
step
Open Your Inscription Crafting Panel:
_<Create 5 Scroll of Intellect VIII>_
Reach 40 Northrend Inscription |skill Northrend Inscription,40
step
talk Professor Pallin##92195
|tip Inside the building.
learn Scroll of Strength VIII##58491|goto 41.57,37.16
step
Open Your Inscription Crafting Panel:
_<Create 5 Scroll of Strength VIII>_
Reach 45 Northrend Inscription |skill Northrend Inscription,45
step
talk Professor Pallin##92195
|tip Inside the building.
learn Scroll of Agility VIII##58483|goto 41.57,37.16
step
Open Your Inscription Crafting Panel:
_<Create 10 Scroll of Agility VIII>_
|tip You may need to create a few more.
Reach 55 Northrend Inscription |skill Northrend Inscription,55
step
Open Your Inscription Crafting Panel:
_<Research 20 Ink of the Sea>_
Reach 75 Northrend Inscription |skill Northrend Inscription,75
step
_Congratulations!_
You Reached 75 Northrend Inscription Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Inscription\\Leveling Guides\\Cataclysm Inscription 1-75",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Cataclysm Inscription skill from 1-75.",
condition_end=function() return skill('Cataclysm Inscription') >= 75 end,
condition_suggested=function() return skill('Cataclysm Inscription') > 0 and skill('Cataclysm Inscription') < 75 and level >= 5 end,
},[[
step
talk Catarina Stanford##30713
|tip Inside the building.
Train Cataclysm Inscription |skillmax Cataclysm Inscription,75 |goto Stormwind City/0 49.83,74.82
|tip You must be at least level 5.
step
kill Schnottz Infantryman##48629+
|tip They spawn in large groups all around this area.
collect Technique: Origami Beetle##65651 |goto Uldum/0 39.82,11.67
step
use the Technique: Origami Beetle##65651
learn Origami Beetle##86646
step
talk Stanly McCormick##30730
|tip Inside the building.
buy 345 Light Parchment##39354 |goto Stormwind City/0 49.57,74.95
|only if skill("Cataclysm Inscription") < 60
step
Open Your Inscription Crafting Panel:
_<Create 80 Origami Beetle>_
|tip Keep making them until you reach skill 60.
Reach 60 Cataclysm Inscription |skill Cataclysm Inscription,60
step
talk Catarina Stanford##30713
|tip Inside the building.
learn Blackfallow Ink##86004 |goto 49.83,74.82
step
talk Catarina Stanford##30713
|tip Inside the building.
learn Forged Documents##89244 |goto 49.83,74.82
step
collect 43 Blackfallow Ink##61978
|tip Create them with Inscription or purchase them from the Auction House.
|tip Ashen Pigment can be Milled from Azshara's Veil, Cinderbloom, Heartblossom, Stormvine, Twilight Jasmine, and Whiptail.
|only if skill("Cataclysm Inscription") < 75
step
Open Your Inscription Crafting Panel:
_<Create 15 Research: Blackfallow Ink>_
|tip If you are not Pandaren, you can get the first point from creating Forged Documents.
Reach 75 Cataclysm Inscription |skill Cataclysm Inscription,75
step
_Congratulations!_
You Reached 75 Cataclysm Inscription Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Jewelcrafting\\Leveling Guides\\Jewelcrafting 1-300",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Jewelcrafting skill from 1-300.",
condition_end=function() return skill('Jewelcrafting') >= 300 end,
condition_suggested=function() return skill('Jewelcrafting') > 0 and skill('Jewelcrafting') < 300 and level >= 5 end,
},[[
step
talk Theresa Denman##44582
Train Jewelcrafting |skillmax Jewelcrafting,300 |goto Stormwind City/0 63.48,61.84
|tip You must be at least level 5.
step
talk Terrance Denman##44583
buy 1 Jeweler's Kit##20815 |goto 63.20,61.68
|only if itemcount(20815) == 0 and skill("Jewelcrafting") < 300
step
collect 120 Copper Bar##2840
|tip Farm and Smelt them with Mining or purchase them from the Auction House.
|only if skill("Jewelcrafting") < 100
step
collect 20 Tigerseye##818
|tip Farm them with Mining or purchase them from the Auction House.
|tip Tigerseye can be mined from Copper Veins.
|only if skill("Jewelcrafting") < 50
step
collect 120 Bronze Bar##2841
|tip Farm and Smelt them with Mining or purchase them from the Auction House.
|only if skill("Jewelcrafting") < 110
step
collect 60 Shadowgem##1210
|tip Farm them with Mining or purchase them from the Auction House.
|tip Shadowgem can be mined from Copper, Silver, and Tin Veins and Mithril Deposits.
|only if skill("Jewelcrafting") < 110
step
Open Your Jewelcrafting Crafting Panel:
_<Create 60 Delicate Copper Wire>_
|tip Save these for later.
collect 60 Delicate Copper Wire##20816
|only if skill("Jewelcrafting") < 100
step
talk Theresa Denman##44582
learn Tigerseye Band##32179 |goto 63.48,61.84
step
Open Your Jewelcrafting Crafting Panel:
_<Create 20 Tigerseye Band>_
Reach 50 Jewelcrafting |skill Jewelcrafting,50
step
talk Theresa Denman##44582
learn Bronze Setting##25278 |goto 63.48,61.84
step
Open Your Jewelcrafting Crafting Panel:
_<Create 50 Bronze Setting>_
|tip Make all of these, you will need them later.
collect 50 Bronze Setting##20817
|only if skill("Jewelcrafting") < 150
step
talk Theresa Denman##44582
learn Gloom Band##25287 |goto 63.48,61.84
step
Open Your Jewelcrafting Crafting Panel:
_<Create 20 Gloom Band>_
Reach 100 Jewelcrafting |skill Jewelcrafting,100
step
talk Theresa Denman##44582
learn Ring of Twilight Shadows##25318 |goto 63.48,61.84
step
Open Your Jewelcrafting Crafting Panel:
_<Create 10 Ring of Twilight Shadows>_
Reach 110 Jewelcrafting |skill Jewelcrafting,110
step
collect 80 Heavy Stone##2838
|tip Farm them with Mining or purchase them from the Auction House.
|tip Heavy Stone can be mined from Iron Deposits.
|only if skill("Jewelcrafting") < 120
step
collect 140 Mithril Bar##3860
|tip Farm and Smelt them with Mining or purchase them from the Auction House.
|only if skill("Jewelcrafting") < 220
step
collect 30 Moss Agate##1206
|tip Farm them with Mining or purchase them from the Auction House.
|tip Moss Agate can be mined from Silver and Tin Veins and Mithril Deposits.
|tip You can also Prospect Silver, Tin or Mithril Ore with Jewelcrafting.
|only if skill("Jewelcrafting") < 150
step
talk Theresa Denman##44582
learn Heavy Stone Statue##32807 |goto 63.48,61.84
step
Open Your Jewelcrafting Crafting Panel:
_<Create 10 Heavy Stone Statue>_
Reach 120 Jewelcrafting |skill Jewelcrafting,120
step
talk Theresa Denman##44582
learn Pendant of the Agate Shield##25610 |goto 63.48,61.84
step
Open Your Jewelcrafting Crafting Panel:
_<Create 30 Pendant of the Agate Shield>_
Reach 150 Jewelcrafting |skill Jewelcrafting,150
step
talk Theresa Denman##44582
learn Mithril Filigree##25615 |goto 63.48,61.84
step
Open Your Jewelcrafting Crafting Panel:
_<Create 45 Mithril Filigree>_
collect 45 Mithril Filigree##20963
|only if skill("Jewelcrafting") < 250
step
collect 80 Solid Stone##7912
|tip Farm them with Mining or purchase them from the Auction House.
|tip Solid Stone can be mined from Mithril Deposits.
|only if skill("Jewelcrafting") < 185
step
collect 15 Truesilver Bar##6037
|tip Farm and Smelt them with Mining or purchase them from the Auction House.
|only if skill("Jewelcrafting") < 200
step
collect 25 Citrine##3864
|tip Farm them with Mining or purchase them from the Auction House.
|tip Citrine can be mined from Gold Veins and Iron, Mithril and Truesilver Deposits.
|tip You can also Prospect Gold, Iron, Mithril and Truesilver Ore with Jewelcrafting.
|only if skill("Jewelcrafting") < 220
step
collect 5 Aquamarine##7909
|tip Farm them with Mining or purchase them from the Auction House.
|tip Aquamarine can be mined from Truesilver, Mithril and Iron Deposits.
|tip You can also Prospect Truesilver, Mithril and Iron Ore with Jewelcrafting.
|only if skill("Jewelcrafting") < 225
step
collect 50 Thorium Bar##12359
|tip Farm and Smelt them with Mining or purchase them from the Auction House.
|only if skill("Jewelcrafting") < 250
step
talk Theresa Denman##44582
learn Solid Stone Statue##32808 |goto 63.48,61.84
step
Open Your Jewelcrafting Crafting Panel:
_<Create 5 Solid Stone Statue>_
|tip You may need to craft a few more.
Reach 185 Jewelcrafting |skill Jewelcrafting,185
step
talk Theresa Denman##44582
learn Engraved Truesilver Ring##25620 |goto 63.48,61.84
step
Open Your Jewelcrafting Crafting Panel:
_<Create 15 Engraved Truesilver Ring>_
Reach 200 Jewelcrafting |skill Jewelcrafting,200
step
talk Theresa Denman##44582
learn Citrine Ring of Rapid Healing##25621 |goto 63.48,61.84
step
Open Your Jewelcrafting Crafting Panel:
_<Create 20 Citrine Ring of Rapid Healing>_
|tip You may need to craft a few more.
Reach 220 Jewelcrafting |skill Jewelcrafting,220
step
talk Theresa Denman##44582
learn Aquamarine Pendant of the Warrior##26876 |goto 63.48,61.84
step
Open Your Jewelcrafting Crafting Panel:
_<Create 5 Aquamarine Pendant of the Warrior>_
Reach 225 Jewelcrafting |skill Jewelcrafting,225
step
talk Theresa Denman##44582
learn Thorium Setting##26880 |goto 63.48,61.84
step
Open Your Jewelcrafting Crafting Panel:
_<Create 50 Thorium Setting>_
collect 50 Thorium Setting##21752
|only if skill("Jewelcrafting") < 300
step
collect 10 Star Ruby##7910
|tip Farm them with Mining or purchase them from the Auction House.
|tip Star Rubies can be mined from Thorium Veins and Mithril and Truesilver Deposits.
|tip You can also Prospect Truesilver, Mithril and Thorium Ore with Jewelcrafting.
|only if skill("Jewelcrafting") < 260
step
collect 20 Large Opal##12799
|tip Farm them with Mining or purchase them from the Auction House.
|tip Star Rubies can be mined from Thorium Veins.
|tip You can also Prospect Thorium and Mithril Ore with Jewelcrafting.
|only if skill("Jewelcrafting") < 280
step
collect 7 Azerothian Diamond##12800
|tip Farm them with Mining or purchase them from the Auction House.
|tip Azerothian Diamonds can be mined from Thorium Veins.
|tip You can also Prospect Thorium and Mithril Ore with Jewelcrafting.
|only if skill("Jewelcrafting") < 287
step
collect 3 Blue Sapphire##12361
|tip Farm them with Mining or purchase them from the Auction House.
|tip Blue Sapphires can be mined from Thorium Veins.
|tip You can also Prospect Thorium and Mithril Ore with Jewelcrafting.
|only if skill("Jewelcrafting") < 290
step
collect 3 Essence of Undeath##12808
|tip Farm them from undead enemies or purchase them from the Auction House.
|only if skill("Jewelcrafting") < 290
step
collect 20 Huge Emerald##12364
|tip Farm them with Mining or purchase them from the Auction House.
|tip Huge Emeralds can be mined from Thorium Veins.
|tip You can also Prospect Thorium and Mithril Ore with Jewelcrafting.
|only if skill("Jewelcrafting") < 300
step
talk Theresa Denman##44582
learn Ruby Pendant of Fire##26883 |goto 63.48,61.84
step
Open Your Jewelcrafting Crafting Panel:
_<Create 10 Ruby Pendant of Fire>_
Reach 260 Jewelcrafting |skill Jewelcrafting,260
step
talk Theresa Denman##44582
learn Simple Opal Ring##26902 |goto 63.48,61.84
step
Open Your Jewelcrafting Crafting Panel:
_<Create 20 Simple Opal Ring>_
Reach 280 Jewelcrafting |skill Jewelcrafting,280
step
talk Theresa Denman##44582
learn Diamond Focus Ring##36526 |goto 63.48,61.84
step
Open Your Jewelcrafting Crafting Panel:
_<Create 7 Diamond Focus Ring>_
Reach 287 Jewelcrafting |skill Jewelcrafting,287
step
talk Theresa Denman##44582
learn Sapphire Pendant of Winter Night##26908 |goto 63.48,61.84
step
Open Your Jewelcrafting Crafting Panel:
_<Create 3 Sapphire Pendant of Winter Night>_
Reach 290 Jewelcrafting |skill Jewelcrafting,290
step
talk Theresa Denman##44582
learn Emerald Lion Ring##34961 |goto 63.48,61.84
step
Open Your Jewelcrafting Crafting Panel:
_<Create 10 Emerald Lion Ring>_
Reach 300 Jewelcrafting |skill Jewelcrafting,300
step
_Congratulations!_
You Reached 300 Jewelcrafting Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Jewelcrafting\\Leveling Guides\\Outland Jewelcrafting 1-75",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Outland Jewelcrafting skill from 1-75.",
condition_end=function() return skill('Outland Jewelcrafting') >= 75 end,
condition_suggested=function() return skill('Outland Jewelcrafting') > 0 and skill('Outland Jewelcrafting') < 75 and level >= 5 end,
},[[
step
talk Kirembri Silvermane##33637 |only if rep ('The Scryers') >= Neutral
talk Nemiha##33680 |only if rep ('The Aldor') >= Neutral
|tip Inside the building.
Train Outland Jewelcrafting |skillmax Outland Jewelcrafting,75 |goto Shattrath City/0 58.28,75.12 |only if rep ('The Scryers') >= Neutral
Train Outland Jewelcrafting |skillmax Outland Jewelcrafting,75 |goto Shattrath City/0 36.00,48.00 |only if rep ('The Aldor') >= Neutral
|tip You must be at least level 5.
step
collect 40 Blood Garnet##23077
|tip Prospect them with Jewelcrafting or purchase them from the Auction House.
|tip Blood Garnet can be mined from Fel Iron, Nethercite, and Adamantite Deposits and Khorium Veins.
|tip You can also Prospect them from Fel Iron, Adamantite or Khorium Ore with Jewelcrafting.
|only if skill("Outland Jewelcrafting") < 25
step
collect 40 Adamantite Powder##24243
|tip Prospect them with Jewelcrafting or purchase them from the Auction House.
|tip It takes 200 Adamantite Ore to make 40 Adamantite Powder.
|only if skill("Outland Jewelcrafting") < 35
step
collect 10 Primal Earth##22452
|tip Farm them from elementals or purchase them from the Auction House.
|tip Motes of Earth can also be mined from Fel Iron, Nethercite, and Adamantite Deposits and Khorium Veins.
|tip Combine ten Motes of Earth into one Primal Earth.
|only if skill("Outland Jewelcrafting") < 35
step
collect 25 Shadow Draenite##23107
|tip Prospect them with Jewelcrafting or purchase them from the Auction House.
|tip Shadow Draenite can be mined from Fel Iron, Nethercite, and Adamantite Deposits and Khorium Veins.
|tip You can also Prospect them from Fel Iron, Adamantite or Khorium Ore with Jewelcrafting.
|only if skill("Outland Jewelcrafting") < 40
step
collect 10 Adamantite Bar##23446
|tip Farm them with Mining or purchase them from the Auction House.
|only if skill("Outland Jewelcrafting") < 50
step
collect 10 Dawnstone##23440
|tip Prospect them with Jewelcrafting or purchase them from the Auction House.
|tip Dawnstone can be mined from Fel Iron, Nethercite, and Adamantite Deposits and Khorium Veins.
|tip You can also Prospect them from Fel Iron, Adamantite or Khorium Ore with Jewelcrafting.
|only if skill("Outland Jewelcrafting") < 60
step
collect 15 Living Ruby##23436
|tip Prospect them with Jewelcrafting or purchase them from the Auction House.
|tip Living Ruby can be mined from Fel Iron, Nethercite, and Adamantite Deposits and Khorium Veins.
|tip You can also Prospect them from Fel Iron, Adamantite or Khorium Ore with Jewelcrafting.
|only if skill("Outland Jewelcrafting") < 70
step
talk Kirembri Silvermane##33637 |only if rep ('The Scryers') >= Neutral
talk Nemiha##33680 |only if rep ('The Aldor') >= Neutral
|tip Inside the building.
learn Bold Blood Garnet##28905 |goto 58.28,75.12 |only if rep ('The Scryers') >= Neutral
learn Bold Blood Garnet##28905 |goto 36.00,48.00 |only if rep ('The Aldor') >= Neutral
step
Open Your Jewelcrafting Crafting Panel:
_<Create 30 Bold Blood Garnet>_
|tip You may need to craft more of these.
Reach 25 Outland Jewelcrafting |skill Outland Jewelcrafting,25
step
talk Kirembri Silvermane##33637 |only if rep ('The Scryers') >= Neutral
talk Nemiha##33680 |only if rep ('The Aldor') >= Neutral
|tip Inside the building.
learn Mercurial Adamantite##38068 |goto 58.28,75.12 |only if rep ('The Scryers') >= Neutral
learn Mercurial Adamantite##38068 |goto 36.00,48.00 |only if rep ('The Aldor') >= Neutral
step
Open Your Jewelcrafting Crafting Panel:
_<Create 10 Mercurial Adamantite>_
|tip Make all of these, you will need them later.
Reach 35 Outland Jewelcrafting |skill Outland Jewelcrafting,35 |goto 58.51,75.56 |only if rep ('The Scryers') >= Neutral
Reach 35 Outland Jewelcrafting |skill Outland Jewelcrafting,35 |goto 35.75,48.21 |only if rep ('The Aldor') >= Neutral
step
talk Kirembri Silvermane##33637 |only if rep ('The Scryers') >= Neutral
talk Nemiha##33680 |only if rep ('The Aldor') >= Neutral
|tip Inside the building.
learn Sovereign Shadow Draenite##28936 |goto 58.28,75.12 |only if rep ('The Scryers') >= Neutral
learn Sovereign Shadow Draenite##28936 |goto 36.00,48.00 |only if rep ('The Aldor') >= Neutral
step
Open Your Jewelcrafting Crafting Panel:
_<Create 5 Sovereign Shadow Draenite>_
|tip You may need to craft a few more.
Reach 40 Outland Jewelcrafting |skill Outland Jewelcrafting,40
step
talk Kirembri Silvermane##33637 |only if rep ('The Scryers') >= Neutral
talk Nemiha##33680 |only if rep ('The Aldor') >= Neutral
|tip Inside the building.
learn Heavy Adamantite Ring##31052 |goto 58.28,75.12 |only if rep ('The Scryers') >= Neutral
learn Heavy Adamantite Ring##31052 |goto 36.00,48.00 |only if rep ('The Aldor') >= Neutral
step
Open Your Jewelcrafting Crafting Panel:
_<Create 10 Heavy Adamantite Ring>_
Reach 50 Outland Jewelcrafting |skill Outland Jewelcrafting,50
step
talk Aldraan##21485
buy 1 Design: Mystic Dawnstone##24208 |goto Nagrand/0 42.87,42.45
|tip These are in limited supply from this vendor, so it may not be available.
|tip It will respawn in 20-30 minutes.
|only if skill("Outland Jewelcrafting") < 60
step
use the Design: Mystic Dawnstone##24208
learn Mystic Dawnstone##31101
step
Open Your Jewelcrafting Crafting Panel:
_<Create 10 Mystic Dawnstone>_
|tip You may need to craft a few more.
Reach 60 Outland Jewelcrafting |skill Outland Jewelcrafting,60
step
Reach Honored Reputation with The Sha'tar |complete rep ("The Sha'tar") >= Honored
step
talk Almaador##21432
buy 1 Design: Kailee's Rose##33155 |goto Shattrath City/0 50.98,41.71
|only if skill("Outland Jewelcrafting") < 70
step
use the Design: Kailee's Rose##33155
learn Kailee's Rose##42588
step
Open Your Jewelcrafting Crafting Panel:
_<Create 10 Kailee's Rose>_
Reach 70 Outland Jewelcrafting |skill Outland Jewelcrafting,70
step
collect 5 Earthstorm Diamond##25867
|tip Transmute them with Alchemy or purchase them from the Auction House.
|tip Each transmute requires 3 Deep Peridot, 3 Shadow Draenite, 3 Golden Draenite, 2 Primal Earth and 2 Primal Water.
|only if skill("Outland Jewelcrafting") < 75
step
talk Almaador##21432
buy 1 Design: Insightful Earthstorm Diamond##25904 |goto 50.98,41.71
|only if skill("Outland Jewelcrafting") < 75
step
use the Design: Insightful Earthstorm Diamond##25904
learn Insightful Earthstorm Diamond##32870
step
Open Your Jewelcrafting Crafting Panel:
_<Create 5 Insightful Earthstorm Diamond>_
Reach 75 Outland Jewelcrafting |skill Outland Jewelcrafting,75
step
_Congratulations!_
You Reached 75 Outland Jewelcrafting Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Jewelcrafting\\Leveling Guides\\Northrend Jewelcrafting 1-75",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Northrend Jewelcrafting skill from 1-75.",
condition_end=function() return skill('Northrend Jewelcrafting') >= 75 end,
condition_suggested=function() return skill('Northrend Jewelcrafting') > 0 and skill('Northrend Jewelcrafting') < 75 and level >= 5 end,
},[[
step
talk Timothy Jones##28701
|tip Inside the building.
Train Northrend Jewelcrafting |skillmax Northrend Jewelcrafting,75 |goto Dalaran/1 40.66,35.32
|tip You must be at least level 5.
step
collect 40 Bloodstone##36917
|tip These are mined from Saronite and Cobalt Deposits, as well as Titanium Veins.
|tip You can prospect 5 Cobalt, Saronite and Titanium Ore to collect these.
|tip Refer to the Cobalt, Saronite and Titanium Ore farming guide to accomplish this.
|tip You can also purchase them from the Auction House.
|only if skill("Northrend Jewelcrafting") < 25
step
collect 15 Chalcedony##36923
|tip These are mined from Saronite and Cobalt Deposits, as well as Titanium Veins.
|tip You can prospect 5 Cobalt, Saronite and Titanium Ore to collect these.
|tip Refer to the Cobalt, Saronite and Titanium Ore farming guide to accomplish this.
|tip You can also purchase them from the Auction House.
|only if skill("Northrend Jewelcrafting") < 75
step
collect 15 Shadow Crystal##36926
|tip These are mined from Saronite and Cobalt Deposits, as well as Titanium Veins.
|tip You can prospect 5 Cobalt, Saronite and Titanium Ore to collect these.
|tip Refer to the Cobalt, Saronite and Titanium Ore farming guide to accomplish this.
|tip You can also purchase them from the Auction House.
|only if skill("Northrend Jewelcrafting") < 75
step
collect 15 Dark Jade##36932
|tip These are mined from Saronite and Cobalt Deposits, as well as Titanium Veins.
|tip You can prospect 5 Cobalt, Saronite and Titanium Ore to collect these.
|tip Refer to the Cobalt, Saronite and Titanium Ore farming guide to accomplish this.
|tip You can also purchase them from the Auction House.
|only if skill("Northrend Jewelcrafting") < 75
step
collect 10 Crystallized Earth##37701
|tip Refer to the Eternal Earth farming guide to accomplish this.
|tip You can also purchase them from the Auction House.
|only if skill("Northrend Jewelcrafting") < 25
step
collect 46 Eternal Earth##35624
|tip Refer to the Eternal Earth farming guide to accomplish this.
|tip You can also purchase them from the Auction House.
|only if skill("Northrend Jewelcrafting") < 45
step
collect 30 Earthsiege Diamond##41334
|tip Transmute them with Alchemy or purchase them from the Auction House.
|tip Each Earthsiege Diamond takes 1 Dark Jade, 1 Huge Citrine, and 1 Eternal Fire to make.
|tip You can also use Skyflare Diamonds if they are cheaper.
|tip Each Skyflare Diamond takes 1 Bloodstone, 1 Chalcedony, and 1 Eternal Air to make.
|only if skill("Northrend Jewelcrafting") < 70
step
talk Magistrix Lambriesse##31582
buy 15 Frozen Orb##43102 |goto 65.55,22.69
|only if skill("Northrend Jewelcrafting") < 75
step
talk Timothy Jones##28701
|tip Inside the building.
learn Bold Bloodstone##53831 |goto Dalaran/1 40.66,35.32
step
Open Your Jewelcrafting Crafting Panel:
_<Create 20 Bold Bloodstone>_
Reach 20 Northrend Jewelcrafting |skill Northrend Jewelcrafting,20
step
talk Timothy Jones##28701
|tip Inside the building.
learn Bloodstone Band##56193 |goto Dalaran/1 40.66,35.32
step
Open Your Jewelcrafting Crafting Panel:
_<Create 5 Bloodstone Bands>_
Reach 25 Northrend Jewelcrafting |skill Northrend Jewelcrafting,25
step
talk Timothy Jones##28701
|tip Inside the building.
learn Stoneguard Band##58145 |goto Dalaran/1 40.66,35.32
step
Open Your Jewelcrafting Crafting Panel:
_<Create 20 Stoneguard Bands>_
Reach 45 Northrend Jewelcrafting |skill Northrend Jewelcrafting,45
step
talk Timothy Jones##28701
|tip Inside the building.
learn Powerful Earthsiege Diamond##55399 |goto Dalaran/1 40.66,35.32
step
Open Your Jewelcrafting Crafting Panel:
_<Create 30 Powerful Earthsiege Diamonds>_
|tip You can also make Swift Skyflare Diamonds if you have any.
Reach 70 Northrend Jewelcrafting |skill Northrend Jewelcrafting,70
step
talk Timothy Jones##28701
|tip Inside the building.
learn Icy Prism##62242 |goto Dalaran/1 40.66,35.32
step
Open Your Jewelcrafting Crafting Panel:
_<Create 5 Icy Prism>_
Reach 75 Northrend Jewelcrafting |skill Northrend Jewelcrafting,75
step
_Congratulations!_
You Reached 75 Northrend Jewelcrafting Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Jewelcrafting\\Leveling Guides\\Cataclysm Jewelcrafting 1-75",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Cataclysm Jewelcrafting skill from 1-75.",
condition_end=function() return skill('Cataclysm Jewelcrafting') >= 75 end,
condition_suggested=function() return skill('Cataclysm Jewelcrafting') > 0 and skill('Cataclysm Jewelcrafting') < 75 and level >= 5 end,
},[[
step
talk Theresa Denman##44582
Train Cataclysm Jewelcrafting |skillmax Cataclysm Jewelcrafting,75 |goto Stormwind City/0 63.48,61.84
|tip You must be at least level 5.
step
talk Theresa Denman##44582
learn Jasper Ring##73494 |goto 63.48,61.84
step
talk Terrance Denman##44583
buy 70 Jeweler's Setting##52188 |goto 63.20,61.68
|only if skill("Cataclysm Jewelcrafting") < 75
step
collect 30 Jasper##52182
|tip Farm them with Mining or purchase them from the Auction House.
|tip Jasper can be mined from Rich Pyrite and Obsidium Deposits, as well as Elementium Veins.
|tip It can also be Prospected from Pyrite, Elementium or Obsidium Ore with Jewelcrafting.
|only if skill("Cataclysm Jewelcrafting") < 18
step
collect 34 Hessonite##52181
|tip Farm them with Mining or purchase them from the Auction House.
|tip Hessonite can be mined from Rich Pyrite and Obsidium Deposits, as well as Elementium Veins.
|tip It can also be Prospected from Pyrite, Elementium or Obsidium Ore with Jewelcrafting.
|only if skill("Cataclysm Jewelcrafting") < 35
step
collect 40 Nightstone##52180
|tip Farm them with Mining or purchase them from the Auction House.
|tip Nightstone can be mined from Rich Pyrite and Obsidium Deposits, as well as Elementium Veins.
|tip It can also be Prospected from Pyrite, Elementium or Obsidium Ore with Jewelcrafting.
|only if skill("Cataclysm Jewelcrafting") < 50
step
collect 25 Ocean Sapphire##52191
|tip Farm them with Mining or purchase them from the Auction House.
|tip Ocean Sapphires can be mined from Rich Pyrite and Obsidium Deposits, as well as Elementium Veins.
|tip It can also be Prospected from Pyrite, Elementium or Obsidium Ore with Jewelcrafting.
|only if skill("Cataclysm Jewelcrafting") < 75
step
collect 40 Volatile Air##52328
|tip Farm them from elementals or purchase them from the Auction House.
|only if skill("Cataclysm Jewelcrafting") < 75
step
collect 20 Volatile Fire##52325
|tip Farm them from elementals or purchase them from the Auction House.
|only if skill("Cataclysm Jewelcrafting") < 75
step
Open Your Jewelcrafting Crafting Panel:
_<Create 17 Jasper Ring>_
|tip You may need to craft a few more.
Reach 18 Cataclysm Jewelcrafting |skill Cataclysm Jewelcrafting,18
step
talk Theresa Denman##44582
learn Hessonite Band##73495 |goto 63.48,61.84
step
Open Your Jewelcrafting Crafting Panel:
_<Create 17 Hessonite Band>_
Reach 35 Cataclysm Jewelcrafting |skill Cataclysm Jewelcrafting,35
step
talk Theresa Denman##44582
learn Nightstone Choker##73497 |goto 63.48,61.84
step
Open Your Jewelcrafting Crafting Panel:
_<Create 15 Nightstone Choker>_
|tip You may need to craft a few more.
Reach 50 Cataclysm Jewelcrafting |skill Cataclysm Jewelcrafting,50
step
Collect #4# Illustrious Jewelcrafter's Token |complete curcount(361) >= 4
|tip It will take 4 days to collect these.
|tip Use the "Jewelcrafting Daily Guide" to complete dailies.
|only if skill("Cataclysm Jewelcrafting") < 70
step
talk Isabel Jones##50480
buy 1 Design: Forlorn Shadowspirit Diamond##52445 |goto 63.77,61.51
|only if skill("Cataclysm Jewelcrafting") < 70
step
use the Design: Forlorn Shadowspirit Diamond##52445
learn Forlorn Shadowspirit Diamond##73476
step
collect 20 Shadowspirit Diamond##52303
|tip Transmute them with Alchemy or purchase them from the Auction House.
|tip Each Shadowspirit Diamond requires 3 Alicite, 3 Nightstone, 3 Zephyrite, 3 Carnelian, 3 Hessonite and 3 Jasper to make.
|only if skill("Cataclysm Jewelcrafting") < 70
step
Open Your Jewelcrafting Crafting Panel:
_<Create 20 Forlorn Shadowspirit Diamond>_
Reach 70 Cataclysm Jewelcrafting |skill Cataclysm Jewelcrafting,70
step
talk Theresa Denman##44582
learn Vicious Sapphire Necklace##99542 |goto 63.48,61.84
step
Open Your Jewelcrafting Crafting Panel:
_<Create 5 Vicious Sapphire Necklace>_
Reach 75 Cataclysm Jewelcrafting |skill Cataclysm Jewelcrafting,75
step
_Congratulations!_
You Reached 75 Cataclysm Jewelcrafting Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Leatherworking\\Leveling Guides\\Leatherworking 1-300",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Leatherworking skill from 1-300.",
condition_end=function() return skill('Leatherworking') >= 300 end,
condition_suggested=function() return skill('Leatherworking') > 0 and skill('Leatherworking') < 300 and level >= 5 end,
},[[
step
talk Simon Tanner##5564
|tip Inside the building.
Train Leatherworking |skillmax Leatherworking,300 |goto Stormwind City/0 71.69,62.99
|tip You must be at least level 5.
step
talk Jillian Tanner##5565
|tip Inside the building.
buy 115 Coarse Thread##2320 |goto 71.58,62.76
step
collect 280 Light Leather##2318
|tip Farm them with Skinning or purchase them from the Auction House.
|only if skill("Leatherworking") < 100
step
Open Your Leatherworking Crafting Panel:
_<Create 29 Light Armor Kit>_
Reach 30 Leatherworking |skill Leatherworking,30
step
Open Your Leatherworking Crafting Panel:
_<Create 20 Handstitched Leather Cloak>_
|tip This will be yellow at 40, so you may need to create more.
Reach 50 Leatherworking |skill Leatherworking,50
step
talk Simon Tanner##5564
|tip Inside the building.
learn Handstitched Leather Belt##3753 |goto 71.69,62.99
step
Open Your Leatherworking Crafting Panel:
_<Create 5 Handstitched Leather Belt>_
Reach 55 Leatherworking |skill Leatherworking,55
step
talk Simon Tanner##5564
|tip Inside the building.
learn Embossed Leather Gloves##3756 |goto 71.69,62.99
step
Open Your Leatherworking Crafting Panel:
_<Create 30 Embossed Leather Glove>_
Reach 85 Leatherworking |skill Leatherworking,85
step
talk Simon Tanner##5564
|tip Inside the building.
learn Fine Leather Belt##3763 |goto 71.69,62.99
step
Open Your Leatherworking Crafting Panel:
_<Create 15 Fine Leather Belt>_
|tip Keep these, you will need them later.
Reach 100 Leatherworking |skill Leatherworking,100
step
collect 15 Medium Hide##4232
|tip Farm them with Skinning or purchase them from the Auction House.
|only if skill("Leatherworking") < 115
step
talk Jillian Tanner##5565
|tip Inside the building.
buy 15 Salt##4289 |goto 71.58,62.76
|only if skill("Leatherworking") < 115
step
talk Simon Tanner##5564
|tip Inside the building.
learn Cured Medium Hide##3817 |goto 71.69,62.99
step
Open Your Leatherworking Crafting Panel:
_<Create 15 Cured Medium Hide>_
|tip Keep these, you will need them later.
Reach 115 Leatherworking |skill Leatherworking,115
step
collect 160 Medium Leather##2319
|tip Farm them with Skinning or purchase them from the Auction House.
|only if skill("Leatherworking") < 150
step
talk Jillian Tanner##5565
|tip Inside the building.
buy 107 Fine Thread##2321 |goto 71.58,62.76
|only if skill("Leatherworking") < 130
step
talk Jillian Tanner##5565
|tip Inside the building.
buy 31 Gray Dye##4340 |goto 71.58,62.76
|only if skill("Leatherworking") < 130
step
talk Simon Tanner##5564
|tip Inside the building.
learn Dark Leather Boots##2167 |goto 71.69,62.99
step
Open Your Leatherworking Crafting Panel:
_<Create 15 Dark Leather Boot>_
Reach 130 Leatherworking |skill Leatherworking,130
step
talk Simon Tanner##5564
|tip Inside the building.
learn Dark Leather Belt##3766 |goto 71.69,62.99
step
Open Your Leatherworking Crafting Panel:
_<Create 15 Dark Leather Belt>_
Reach 145 Leatherworking |skill Leatherworking,145
step
talk Simon Tanner##5564
|tip Inside the building.
learn Hillman's Leather Gloves##3764 |goto 71.69,62.99
step
Open Your Leatherworking Crafting Panel:
_<Create 5 Hillman's Leather Glove>_
Reach 150 Leatherworking |skill Leatherworking,150
step
talk Simon Tanner##5564
|tip Inside the building.
learn Heavy Leather##20649 |goto 71.69,62.99
step
Open Your Leatherworking Crafting Panel:
_<Create 5 Heavy Leather>_
Reach 155 Leatherworking |skill Leatherworking,155
step
collect 20 Heavy Hide##4235
|tip Farm them with Skinning or purchase them from the Auction House.
|only if skill("Leatherworking") < 165
step
talk Jillian Tanner##5565
|tip Inside the building.
buy 60 Salt##4289 |goto 71.58,62.76
|only if skill("Leatherworking") < 165
step
talk Simon Tanner##5564
|tip Inside the building.
learn Cured Heavy Hide##3818 |goto 71.69,62.99
step
Open Your Leatherworking Crafting Panel:
_<Create 20 Cured Heavy Hide>_
|tip You may need to craft more.
|tip Keep these, you will need them later.
Reach 165 Leatherworking |skill Leatherworking,165
step
collect 195 Heavy Leather##4234
|tip Farm them with Skinning or purchase them from the Auction House.
|only if skill("Leatherworking") < 200
step
talk Simon Tanner##5564
|tip Inside the building.
learn Heavy Armor Kit##3780 |goto 71.69,62.99
step
Open Your Leatherworking Crafting Panel:
_<Create 15 Heavy Armor Kit>_
Reach 180 Leatherworking |skill Leatherworking,180
step
talk Simon Tanner##5564
|tip Inside the building.
learn Barbaric Shoulders##7151 |goto 71.69,62.99
step
Open Your Leatherworking Crafting Panel:
_<Create 10 Barbaric Shoulder>_
Reach 190 Leatherworking |skill Leatherworking,190
step
talk Jillian Tanner##5565
|tip Inside the building.
buy 145 Silken Thread##4291 |goto 71.58,62.76
|only if skill("Leatherworking") < 250
step
talk Simon Tanner##5564
|tip Inside the building.
learn Guardian Gloves##7156 |goto 71.69,62.99
step
Open Your Leatherworking Crafting Panel:
_<Create 10 Guardian Glove>_
Reach 200 Leatherworking |skill Leatherworking,200
step
collect 410 Thick Leather##4304
|tip Farm them with Skinning or purchase them from the Auction House.
|only if skill("Leatherworking") < 250
step
talk Simon Tanner##5564
|tip Inside the building.
learn Thick Armor Kit##10487 |goto 71.69,62.99
step
Open Your Leatherworking Crafting Panel:
_<Create 5 Thick Armor Kit>_
Reach 205 Leatherworking |skill Leatherworking,205
step
talk Simon Tanner##5564
|tip Inside the building.
learn Nightscape Headband##10507 |goto 71.69,62.99
step
Open Your Leatherworking Crafting Panel:
_<Create 35 Nightscape Headband>_
|tip You may need to make more.
Reach 235 Leatherworking |skill Leatherworking,235
step
talk Simon Tanner##5564
|tip Inside the building.
learn Nightscape Pants##10548 |goto 71.69,62.99
step
Open Your Leatherworking Crafting Panel:
_<Create 15 Nightscape Pant>_
Reach 250 Leatherworking |skill Leatherworking,250
step
collect 450 Rugged Leather##8170
|tip Farm them with Skinning or purchase them from the Auction House.
|only if skill("Leatherworking") < 300
step
talk Simon Tanner##5564
|tip Inside the building.
learn Rugged Armor Kit##19058 |goto 71.69,62.99
step
Open Your Leatherworking Crafting Panel:
_<Create 15 Rugged Armor Kit>_
|tip You may need to make more.
Reach 265 Leatherworking |skill Leatherworking,265
step
talk Jillian Tanner##5565
|tip Inside the building.
buy 35 Black Dye##2325 |goto 71.58,62.76
|only if skill("Leatherworking") < 300
step
talk Jillian Tanner##5565
|tip Inside the building.
buy 35 Rune Thread##14341 |goto 71.58,62.76
|only if skill("Leatherworking") < 300
step
talk Simon Tanner##5564
|tip Inside the building.
learn Wicked Leather Bracers##19052 |goto 71.69,62.99
step
Open Your Leatherworking Crafting Panel:
_<Create 30 Wicked Leather Bracer>_
Reach 290 Leatherworking |skill Leatherworking,290
step
talk Simon Tanner##5564
|tip Inside the building.
learn Wicked Leather Headband##19071 |goto 71.69,62.99
step
Open Your Leatherworking Crafting Panel:
_<Create 10 Wicked Leather Headband>_
Reach 300 Leatherworking |skill Leatherworking,300
step
_Congratulations!_
You Reached 300 Leatherworking Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Leatherworking\\Leveling Guides\\Outland Leatherworking 1-75",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Outland Leatherworking skill from 1-75.",
condition_end=function() return skill('Outland Leatherworking') >= 75 end,
condition_suggested=function() return skill('Outland Leatherworking') > 0 and skill('Outland Leatherworking') < 75 and level >= 5 end,
},[[
step
talk Darmari##19187
Train Outland Leatherworking |skillmax Outland Leatherworking,75 |goto Shattrath City/0 67.26,67.41
|tip You must be at least level 5.
step
collect 1340 Knothide Leather##21887
|tip Farm them with Skinning or purchase them from the Auction House.
|only if skill("Outland Leatherworking") < 75
step
Open Your Leatherworking Crafting Panel:
_<Create 5 Comfortable Insoles>_
|tip You may need to create more.
Reach 5 Outland Leatherworking |skill Outland Leatherworking,5
step
talk Darmari##19187
learn Knothide Armor Kit##32456 |goto 67.26,67.41
step
Open Your Leatherworking Crafting Panel:
_<Create 25 Knothide Armor Kit>_
Reach 25 Outland Leatherworking |skill Outland Leatherworking,25
step
talk Darmari##19187
learn Heavy Knothide Leather##32455 |goto 67.26,67.41
step
Open Your Leatherworking Crafting Panel:
_<Create 246 Heavy Knothide Leather>_
|tip Craft all 246 of them, you'll need them later.
Reach 35 Outland Leatherworking |skill Outland Leatherworking,35
step
talk Cro Threadstrong##19196
buy 60 Rune Thread##14341 |goto 67.30,67.85
|only if skill("Outland Leatherworking") < 50
step
collect 60 Heavy Knothide Leather##23793
|tip You should have these from previous steps.
|only if skill("Outland Leatherworking") < 50
step
talk Darmari##19187
learn Thick Draenic Vest##32473 |goto 67.26,67.41
step
Open Your Leatherworking Crafting Panel:
_<Create 20 Thick Draenic Vest>_
|tip You may need to make more.
Reach 50 Outland Leatherworking |skill Outland Leatherworking,50
step
collect 90 Heavy Knothide Leather##23793
|tip You should have these from previous steps.
|only if skill("Outland Leatherworking") < 65
step
talk Darmari##19187
learn Heavy Knothide Armor Kit##44970 |goto 67.26,67.41
step
Open Your Leatherworking Crafting Panel:
_<Create 30 Heavy Knothide Armor Kit>_
Reach 65 Outland Leatherworking |skill Outland Leatherworking,65
step
Reach Honored with The Sha'tar |complete rep("The Sha'tar") >= Honored
|tip Refer to The Sha'tar reputation guide to accomplish this.
step
collect 96 Heavy Knothide Leather##23793
|tip You should have these from previous steps.
|only if skill("Outland Leatherworking") < 75
step
collect 32 Thick Clefthoof Leather##25708
|tip Farm them with Skinning or purchase them from the Auction House.
step
talk Almaador##21432
buy 1 Pattern: Drums of Battle##29717 |goto 50.98,41.70
|only if skill("Outland Leatherworking") < 70
step
use the Pattern: Drums of Battle##29717
learn Drums of Battle##35543
step
Open Your Leatherworking Crafting Panel:
_<Create 8 Drums of Battle>_
Reach 70 Outland Leatherworking |skill Outland Leatherworking,70
step
Reach Honored with the Keepers of Time |complete rep('Keepers of Time') >= Honored
|tip Refer to the Keepers of Time reputation guide to accomplish this.
step
talk Alurmi##21643
|tip Inside the cave.
buy 1 Pattern: Drums of Panic##29713 |goto Tanaris/17 39.95,77.31
|only if skill("Outland Leatherworking") < 75
step
use the Pattern: Drums of Panic##29713
learn Drums of Panic##35538
step
Open Your Leatherworking Crafting Panel:
_<Create 8 Drums of Panic>_
Reach 75 Outland Leatherworking |skill Outland Leatherworking,75
step
_Congratulations!_
You Reached 75 Outland Leatherworking Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Leatherworking\\Leveling Guides\\Northrend Leatherworking 1-75",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Northrend Leatherworking skill from 1-75.",
condition_end=function() return skill('Northrend Leatherworking') >= 75 end,
condition_suggested=function() return skill('Northrend Leatherworking') > 0 and skill('Northrend Leatherworking') < 75 and level >= 5 end,
},[[
step
talk Diane Cannings##28700
|tip Inside the building.
Train Northrend Leatherworking |skillmax Northrend Leatherworking,75 |goto Dalaran/1 34.71,28.65
|tip You must be at least level 5.
step
collect 1996 Borean Leather##33568
|tip Farm them with Skinning or purchase them from the Auction House.
|only if skill("Northrend Leatherworking") < 75
step
Open Your Leatherworking Crafting Panel:
_<Create 4 Borean Armor Kit>_
Reach 5 Northrend Leatherworking |skill Northrend Leatherworking,5
step
talk Diane Cannings##28700
|tip Inside the building.
learn Arctic Boots##50948 |goto 34.71,28.65
step
Open Your Leatherworking Crafting Panel:
_<Create 5 Arctic Boot>_
Reach 10 Northrend Leatherworking |skill Northrend Leatherworking,10
step
talk Diane Cannings##28700
|tip Inside the building.
learn Arctic Gloves##50947 |goto 34.71,28.65
step
Open Your Leatherworking Crafting Panel:
_<Create 5 Arctic Glove>_
Reach 15 Northrend Leatherworking |skill Northrend Leatherworking,15
step
talk Diane Cannings##28700
|tip Inside the building.
learn Heavy Borean Leather##50936 |goto 34.71,28.65
step
Open Your Leatherworking Crafting Panel:
_<Create 300 Heavy Borean Leather>_
|tip Craft all 300 of them.
Reach 30 Northrend Leatherworking |skill Northrend Leatherworking,30
step
talk Diane Cannings##28700
|tip Inside the building.
learn Nerubian Bracers##60622 |goto 34.71,28.65
step
Open Your Leatherworking Crafting Panel:
_<Create 5 Nerubian Bracer>_
|tip You may need to make more.
Reach 35 Northrend Leatherworking |skill Northrend Leatherworking,35
step
collect 52 Heavy Borean Leather##38425
|tip You should have these from previous steps.
|only if skill("Northrend Leatherworking") < 45
step
collect 65 Crystallized Water##37705
|tip Farm these or purchase them from the Auction House.
|only if skill("Northrend Leatherworking") < 45
step
talk Diane Cannings##28700
|tip Inside the building.
learn Dark Frostscale Leggings##60601 |goto 34.71,28.65
step
Open Your Leatherworking Crafting Panel:
_<Create 10 Dark Frostscale Legging>_
|tip You may need to make more of these.
Reach 45 Northrend Leatherworking |skill Northrend Leatherworking,45
step
collect 18 Eternal Water##35622
|tip Farm these or purchase them from the Auction House.
|only if skill("Northrend Leatherworking") < 60
step
collect 40 Heavy Borean Leather##38425
|tip You should have these from previous steps.
|only if skill("Northrend Leatherworking") < 50
step
talk Braeg Stoutbeard##32515
buy 1 Pattern: Overcast Bracers##44524 |goto 37.38,28.71
|only if skill("Northrend Leatherworking") < 50
step
use the Pattern: Overcast Bracers##44524
learn Overcast Bracers##60720
step
Open Your Leatherworking Crafting Panel:
_<Create 5 Overcast Bracer>_
Reach 50 Northrend Leatherworking |skill Northrend Leatherworking,50
step
collect 130 Heavy Borean Leather##38425
|tip You should have these from previous steps.
|only if skill("Northrend Leatherworking") < 60
step
talk Braeg Stoutbeard##32515
buy 1 Pattern: Overcast Handwraps##44525 |goto 37.38,28.71
|only if skill("Northrend Leatherworking") < 60
step
use the Pattern: Overcast Handwraps##44525
learn Overcast Handwraps##60721
step
Open Your Leatherworking Crafting Panel:
_<Create 10 Overcast Handwrap>_
|tip You may need to make more.
Reach 60 Northrend Leatherworking |skill Northrend Leatherworking,60
step
collect 10 Arctic Fur##44128
|tip Farm them with Skinning or purchase them from the Auction House.
|tip You can trade 10 Heavy Borean Leather to Braeg Stoutbeard in Dalaran for 1 fur.
|only if skill("Northrend Leatherworking") < 65
step
collect 10 Nerubian Chitin##38558
|tip Farm them with Skinning or purchase them from the Auction House.
|only if skill("Northrend Leatherworking") < 65
step
talk Magistrix Lambriesse##31582
buy 15 Frozen Orb##43102 |goto 65.55,22.69
|only if skill("Northrend Leatherworking") < 75
step
talk Diane Cannings##28700
|tip Inside the building.
learn Frosthide Leg Armor##50965 |goto 34.71,28.65
step
Open Your Leatherworking Crafting Panel:
_<Create 5 Frosthide Leg Armor>_
|tip You may need to make more of these.
Reach 65 Northrend Leatherworking |skill Northrend Leatherworking,65
step
collect 100 Heavy Borean Leather##38425
|tip You should have these from previous steps.
|only if skill("Northrend Leatherworking") < 75
step
collect 50 Eternal Shadow##35627
|tip Farm them or purchase them from the Auction House.
|only if skill("Northrend Leatherworking") < 75
step
collect 50 Eternal Fire##36860
|tip Farm them or purchase them from the Auction House.
|only if skill("Northrend Leatherworking") < 75
step
collect 2 Arctic Fur##44128
|tip Farm them with Skinning or purchase them from the Auction House.
|tip You can trade 10 Heavy Borean Leather to Braeg Stoutbeard in Dalaran for 1 fur.
|only if skill("Northrend Leatherworking") < 75
step
talk Braeg Stoutbeard##32515
buy 1 Pattern: Trollwoven Girdle##44551 |goto 37.38,28.71
|only if skill("Northrend Leatherworking") < 75
step
use the Pattern: Trollwoven Girdle##44551
learn Trollwoven Girdle##60759
step
Open Your Leatherworking Crafting Panel:
_<Create 10 Trollwoven Girdle>_
Reach 75 Northrend Leatherworking |skill Northrend Leatherworking,75
step
_Congratulations!_
You Reached 75 Northrend Leatherworking Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Leatherworking\\Leveling Guides\\Cataclysm Leatherworking 1-75",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Cataclysm Leatherworking skill from 1-75.",
condition_end=function() return skill('Cataclysm Leatherworking') >= 75 end,
condition_suggested=function() return skill('Cataclysm Leatherworking') > 0 and skill('Cataclysm Leatherworking') < 75 and level >= 5 end,
},[[
step
talk Simon Tanner##5564
|tip Inside the building.
Train Cataclysm Leatherworking |skillmax Cataclysm Leatherworking,75 |goto Stormwind City/0 71.69,62.99
|tip You must be at least level 5.
step
talk Jillian Tanner##5565
|tip Inside the building.
buy 30 Eternium Thread##38426 |goto 71.58,62.77
|only if skill("Cataclysm Leatherworking") < 45
step
collect 1600 Savage Leather##52976
|tip Farm them with Skinning or purchase them from the Auction House.
|only if skill("Cataclysm Leatherworking") < 45
step
Open Your Leatherworking Crafting Panel:
_<Create 4 Savage Armor Kit>_
|tip You may need to make more.
Reach 5 Cataclysm Leatherworking |skill Cataclysm Leatherworking,5
step
talk Simon Tanner##5564
|tip Inside the building.
learn Tsunami Boots##78410 |goto 71.69,62.99
step
Open Your Leatherworking Crafting Panel:
_<Create 5 Tsunami Boots>_
Reach 10 Cataclysm Leatherworking |skill Cataclysm Leatherworking,10
step
talk Simon Tanner##5564
|tip Inside the building.
learn Savage Cloak##78380 |goto 71.69,62.99
step
Open Your Leatherworking Crafting Panel:
_<Create 10 Savage Cloak>_
Reach 20 Cataclysm Leatherworking |skill Cataclysm Leatherworking,20
step
talk Simon Tanner##5564
|tip Inside the building.
learn Darkbrand Boots##78407 |goto 71.69,62.99
step
Open Your Leatherworking Crafting Panel:
_<Create 5 Darkbrand Boots>_
Reach 25 Cataclysm Leatherworking |skill Cataclysm Leatherworking,25
step
talk Simon Tanner##5564
|tip Inside the building.
learn Darkbrand Shoulders##78411 |goto 71.69,62.99
step
Open Your Leatherworking Crafting Panel:
_<Create 10 Darkbrand Shoulders>_
Reach 35 Cataclysm Leatherworking |skill Cataclysm Leatherworking,35
step
talk Simon Tanner##5564
|tip Inside the building.
learn Heavy Savage Leather##78436 |goto 71.69,62.99
step
Open Your Leatherworking Crafting Panel:
_<Create 240 Heavy Savage Leather>_
|tip Keep these, you'll need them later.
Reach 40 Cataclysm Leatherworking |skill Cataclysm Leatherworking,40
step
talk Simon Tanner##5564
|tip Inside the building.
learn Darkbrand Chestguard##78428 |goto 71.69,62.99
step
Open Your Leatherworking Crafting Panel:
_<Create 5 Darkbrand Chestguard>_
Reach 45 Cataclysm Leatherworking |skill Cataclysm Leatherworking,45
step
collect 60 Heavy Savage Leather##56516
|tip You should have these from previous steps.
|only if skill("Cataclysm Leatherworking") < 57
step
talk Simon Tanner##5564
|tip Inside the building.
learn Darkbrand Helm##78424 |goto 71.69,62.99
step
Open Your Leatherworking Crafting Panel:
_<Create 12 Darkbrand Helm>_
|tip You may need to make more.
Reach 57 Cataclysm Leatherworking |skill Cataclysm Leatherworking,57
step
collect 30 Heavy Savage Leather##56516
|tip You should have these from previous steps.
|only if skill("Cataclysm Leatherworking") < 60
step
talk Jillian Tanner##5565
|tip Inside the building.
buy 3 Pristine Hide##52980 |goto 71.58,62.77
|tip These will cost 10 Heavy Savage Leather each.
|only if skill("Cataclysm Leatherworking") < 60
step
collect 112 Volatile Fire##52325
|tip Farm them or purchase them from the Auction House.
|only if skill("Cataclysm Leatherworking") < 70
step
talk Simon Tanner##5564
|tip Inside the building.
learn Vicious Hide Cloak##99535 |goto 71.69,62.99
step
Open Your Leatherworking Crafting Panel:
_<Create 3 Vicious Hide Cloak>_
Reach 60 Cataclysm Leatherworking |skill Cataclysm Leatherworking,60
step
collect 150 Heavy Savage Leather##56516
|tip You should have these from previous steps.
|only if skill("Cataclysm Leatherworking") < 75
step
talk Jillian Tanner##5565
|tip Inside the building.
buy 1 Pattern: Vicious Leather Bracers##67046 |goto 71.58,62.77
step
use the Pattern: Vicious Leather Bracers##67046
learn Vicious Leather Bracers##78446
|only if skill("Cataclysm Leatherworking") < 65
step
Open Your Leatherworking Crafting Panel:
_<Create 5 Vicious Leather Bracers>_
Reach 65 Cataclysm Leatherworking |skill Cataclysm Leatherworking,65
step
talk Jillian Tanner##5565
|tip Inside the building.
buy 1 Pattern: Vicious Leather Boots##67060 |goto 71.58,62.77
|only if skill("Cataclysm Leatherworking") < 70
step
use the Pattern: Vicious Leather Boots##67060
learn Vicious Leather Boots##78454
step
Open Your Leatherworking Crafting Panel:
_<Create 5 Vicious Leather Boots>_
Reach 70 Cataclysm Leatherworking |skill Cataclysm Leatherworking,70
step
collect 50 Volatile Water##52326
|tip Farm them or purchase them from the Auction House.
|only if skill("Cataclysm Leatherworking") < 75
step
talk Jillian Tanner##5565
|tip Inside the building.
buy 1 Pattern: Vicious Leather Helm##67077 |goto 71.58,62.77
|only if skill("Cataclysm Leatherworking") < 75
step
use the Pattern: Vicious Leather Helm##67077
learn Vicious Leather Helm##78469
step
Open Your Leatherworking Crafting Panel:
_<Create 5 Vicious Leather Helm>_
Reach 75 Cataclysm Leatherworking |skill Cataclysm Leatherworking,75
step
_Congratulations!_
You Reached 75 Cataclysm Leatherworking Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Copper",{
author="support@zygorguides.com",
description="\nCopper can be gathered from Darkshore.",
condition_end=function() return skill('Mining') >= 50 end,
},[[
step
talk Zidormi##141489
Ask her _"Can you show me what Darkshore was like before the battle?"_
Gain the Time Traveling Buff |complete ZGV.InPhase('Old Darnassus') |goto Darkshore/0 48.86,24.46
step
map Darkshore/0
path follow smart; loop on; ants straight
path	52.61,27.94	53.56,28.75	53.80,29.20	54.29,28.67	55.85,27.97
path	56.09,27.32	56.32,27.74	56.22,29.46	56.86,30.07	56.82,31.17
path	56.16,32.01	55.59,31.45	54.44,32.59	54.41,33.16	54.17,33.52
path	54.32,33.80	54.40,34.81	53.41,35.26	52.87,34.66	52.42,34.78
path	50.95,33.29	50.85,32.51	50.10,33.83	49.60,34.97	49.33,37.84
path	49.00,40.14	48.60,42.24	48.16,45.68	47.87,47.40	47.44,50.51
path	46.22,53.41	46.38,55.26	45.89,58.34	45.66,62.48	44.88,65.31
path	44.74,67.82	44.17,71.24	45.55,72.72	46.28,74.59	46.75,78.33
path	45.56,80.47	45.97,82.63	45.54,84.91	46.00,86.76	46.66,86.89
path	46.71,89.74	45.87,92.08	43.84,91.78	40.85,92.36	38.52,91.76
path	37.74,89.77	36.33,88.09	36.90,85.08	37.96,85.79	38.87,85.06
path	39.31,83.24	40.82,83.72	41.87,83.24	42.52,81.90	42.41,80.59
path	41.51,80.01	40.96,79.05	40.64,76.93	40.70,74.06	41.14,72.85
path	42.50,70.95	42.73,67.90	42.23,65.79	41.42,62.81	40.32,60.54
path	40.32,58.56	41.36,56.37	42.64,54.89	44.73,55.34	45.89,54.06
path	45.28,50.94	44.76,48.85	44.60,44.24	43.42,42.72	41.93,42.35
path	40.21,41.67	39.03,40.11	38.33,38.56	39.09,36.97	40.19,36.11
path	41.97,35.32	43.34,37.37	43.69,34.26	44.46,33.65	46.27,31.89
path	47.30,31.46	49.17,28.88	50.83,27.23
Mine along the path
|tip Enter caves along the path.
|tip Make sure you enable "Find Minerals" in the tracking menu on the minimap.
click Copper Vein##1731+
collect Copper Ore##2770 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Leveling Guides\\Mining 1-300",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Mining skill from 1-300.",
condition_end=function() return skill('Mining') >= 300 end,
condition_suggested=function() return skill('Mining') > 0 and skill('Mining') < 300 and level >= 5 end,
},[[
step
Enter the building |goto Stormwind City/0 60.25,36.94 < 10 |walk
talk Gelman Stonehand##5513
|tip Inside the building.
Train Mining |skillmax Mining,300 |goto 59.52,37.76
|tip You must be at least level 5.
step
map Un'Goro Crater/0
path follow smart; loop on; ants curved; dist 30
path	65.32,79.10	62.13,80.37	60.77,83.36	58.36,84.11	54.78,86.18
path	51.90,86.42	50.68,85.45	48.10,86.84	43.26,84.67	40.70,83.46
path	38.48,83.31	36.98,81.97	35.14,81.88	33.10,80.12	30.98,78.74
path	29.33,71.78	30.60,70.82	30.23,68.66	26.83,68.56	26.08,63.17
path	24.94,58.80	24.19,54.78	25.05,49.80	24.07,47.50	25.01,40.92
path	26.30,36.98	26.53,32.66	28.25,30.26	29.54,30.83	30.54,29.33
path	29.69,25.07	30.67,20.85	32.45,20.49	34.07,21.27	36.30,20.50
path	37.77,17.78	40.50,16.53	42.50,16.00	44.79,14.19	46.26,14.00
path	49.08,13.66	49.91,17.92	51.81,16.44	52.07,13.57	55.70,14.20
path	58.89,16.09	60.42,16.55	62.87,17.02	63.99,19.91	65.73,21.51
path	66.47,24.59	67.32,24.41	69.31,21.00	71.53,22.09	71.09,24.18
path	71.83,28.89	74.23,31.84	74.58,35.68	76.03,41.74	76.45,47.99
path	76.00,50.19	76.69,53.78	76.33,56.55	74.66,63.96	74.13,68.33
path	72.36,70.60	70.77,71.19	70.67,74.82	70.50,79.10	68.17,79.33
path	66.40,78.60
Mine Thorium along the path
|tip Make sure you enable "Find Minerals" in the tracking menu on the minimap.
|tip You will need Rich Thorium Veins to reach 295.
|tip You can smelt Thorium Ore starting at 275 skill, up to 290.
|tip If your character is lower level, you can use the various farming guides to level in an easier zone.
Reach 295 Mining Skill |skill Mining,295
step
Await the Darkmoon Faire |complete isevent('Darkmoon Faire') |or
|tip This event runs for one week every month.
|tip Check the in-game calendar for the next event.
'|complete skill('Mining') >= 300 |or
step
talk Rinling##14841
accept Rearm, Reuse, Recycle##29518 |goto Darkmoon Island/0 49.25,60.78
step
click Tonk Scrap##209275+
|tip They look like random pieces of metal on the ground around this area.
collect 6 Tonk Scrap##71968 |q 29518/1 |goto 49.47,71.33
step
talk Rinling##14841
turnin Rearm, Reuse, Recycle##29518 |goto 49.25,60.78
step
_Congratulations!_
You Reached 300 Mining Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Leveling Guides\\Outland Mining 1-75",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Outland Mining skill from 1-75.",
condition_end=function() return skill('Outland Mining') >= 75 end,
condition_suggested=function() return skill('Outland Mining') > 0 and skill('Outland Mining') < 75 and level >= 5 end,
},[[
step
talk Hurnak Grimmord##18779
|tip Inside the building.
Train Outland Mining |skillmax Outland Mining,75 |goto Hellfire Peninsula/0 56.69,63.85
|tip You must be at least level 5.
step
map Nagrand/0
path follow smart; loop on; ants curved; dist 30
path	23.03,54.38	25.66,56.17	27.78,59.66	28.97,63.86	29.39,68.96
path	28.60,72.26	28.38,76.04	29.37,79.52	31.84,80.64	35.76,81.91
path	38.66,82.53	41.39,82.08	42.32,78.93	44.21,77.72	46.77,77.25
path	48.80,77.89	50.60,79.08	52.79,80.43	55.35,80.45	57.66,79.43
path	59.67,79.87	61.78,80.22	63.10,78.04	61.50,74.24	60.07,71.40
path	58.21,67.30	56.38,66.12	55.81,62.92	55.80,59.35	55.91,56.41
path	53.97,55.67	51.60,54.83	49.35,54.70	48.34,56.31	46.31,52.84
path	44.76,48.93	44.93,44.85	44.17,41.32	42.03,37.80	40.94,34.11
path	40.52,29.96	38.57,27.00	35.52,23.03	31.65,21.23	28.90,20.10
path	26.95,20.42	25.43,24.53	24.85,26.68	23.88,30.30	21.46,32.74
path	18.92,33.25	16.50,34.01	14.02,35.11	11.60,37.40	9.18,39.21
path	7.43,41.55	7.97,45.14	9.64,44.27	12.78,42.19	13.85,43.23
Mine along the path
|tip Be sure to enter caves for nodes that appear.
|tip Make sure you enable "Find Minerals" in the tracking menu on the minimap.
Reach 75 Outland Mining Skill |skill Outland Mining,75
step
_Congratulations!_
You Reached 75 Outland Mining Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Leveling Guides\\Northrend Mining 1-75",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Northrend Mining skill from 1-75.",
condition_end=function() return skill('Northrend Mining') >= 75 end,
condition_suggested=function() return skill('Northrend Mining') > 0 and skill('Northrend Mining') < 75 and level >= 5 end,
},[[
step
Enter the building |goto Dalaran/1 41.26,27.26 < 5 |walk
talk Jedidiah Handers##28698
|tip Inside the building.
Train Northrend Mining |skillmax Northrend Mining,75 |goto 41.48,25.70
|tip You must be at least level 5.
step
map Sholazar Basin/0
path follow smart; loop on; ants curved; dist 30
path	47.55,60.54	45.98,63.10	47.07,66.19	48.50,67.57	48.06,72.89
path	50.18,79.08	51.11,83.87	50.24,87.27	47.95,87.13	45.88,86.92
path	43.83,87.15	40.80,87.29	38.41,86.20	37.55,82.52	39.01,79.09
path	39.97,76.03	39.89,72.63	38.87,69.59	37.13,68.11	34.77,68.38
path	34.09,71.52	32.47,76.06	30.69,80.02	27.90,83.52	24.95,83.83
path	22.95,82.59	21.27,78.60	20.64,74.21	20.80,69.62	20.99,66.37
path	21.63,60.90	21.93,56.40	23.34,52.96	26.15,53.68	29.38,55.20
path	32.17,55.87	35.01,55.74	37.57,52.39	36.47,49.33	34.26,47.11
path	31.92,44.99	29.37,43.15	30.16,39.22	32.21,35.48	34.85,33.69
path	37.60,32.87	39.99,32.13	41.50,33.05	43.22,37.70	45.00,41.85
path	47.30,42.65	50.33,42.48	52.24,41.57	53.34,38.94	53.09,35.64
path	51.58,32.70	49.27,30.10	47.00,28.68	45.35,26.84	43.66,24.20
path	43.30,21.65	45.46,21.34	48.34,21.59	51.18,22.09	55.10,24.48
path	58.23,26.57	61.53,30.34	63.92,33.33	66.01,36.41	66.75,39.64
path	64.98,42.63	63.15,45.78	60.70,48.14	58.67,48.97	57.04,50.77
path	56.86,53.99	58.78,55.73	61.38,56.54	64.12,55.19	67.02,54.31
path	69.67,56.56	71.72,60.58	75.27,61.51	74.93,65.10	73.11,68.76
path	71.40,71.86	68.77,76.48	66.01,80.90	63.54,80.54	60.96,79.85
path	58.85,81.83	56.78,85.19	55.87,83.09	56.40,78.00	56.32,71.21
path	54.35,65.42	51.00,63.86
Mine along the path
|tip Make sure you enable "Find Minerals" in the tracking menu on the minimap.
Reach 75 Northrend Mining Skill |skill Northrend Mining,75
step
_Congratulations!_
You Reached 75 Northrend Mining Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Leveling Guides\\Cataclysm Mining 1-75",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Cataclysm Mining skill from 1-75.",
condition_end=function() return skill('Cataclysm Mining') >= 75 end,
condition_suggested=function() return skill('Cataclysm Mining') > 0 and skill('Cataclysm Mining') < 75 and level >= 5 end,
},[[
step
Enter the building |goto Stormwind City/0 60.25,36.94 < 10 |walk
talk Gelman Stonehand##5513
|tip Inside the building.
Train Cataclysm Mining |skillmax Cataclysm Mining,75 |goto 59.52,37.76
|tip You must be at least level 5.
step
map Twilight Highlands/0
path follow smart; loop on; ants curved; dist 30
path	67.12,53.71	66.14,50.02	65.32,47.07	63.19,43.30	61.37,40.30
path	57.72,38.31	54.89,37.76	52.17,40.03	50.30,42.97	45.84,49.71
path	43.99,52.61	42.07,54.66	39.00,59.98	38.30,62.37	38.09,66.30
path	38.80,69.49	40.30,74.96	42.18,76.70	44.22,77.22	45.48,79.26
path	46.79,81.59	49.33,82.52	51.97,81.92	54.74,81.61	57.05,79.84
path	59.27,77.24	59.82,73.45	60.56,71.34	62.55,68.61	65.27,68.74
path	66.76,71.13	68.14,74.02	67.67,77.62	65.97,80.72	63.98,83.07
path	61.10,85.08	58.48,86.62	55.40,86.44	52.38,87.05	49.45,86.26
path	46.20,85.56	43.32,86.32	40.64,87.78	37.90,88.35	36.61,86.84
path	36.05,84.16	34.20,82.17	32.33,79.21	30.43,73.67	29.60,69.58
path	31.49,67.23	34.04,65.18	35.81,62.68	37.65,59.14	38.56,55.60
path	38.27,49.23	37.53,43.75	37.42,39.31	39.60,35.31	41.42,31.65
path	41.88,28.18	40.70,25.49	39.36,22.58	40.81,20.45	43.38,20.38
path	47.97,20.48	51.88,22.44	55.55,24.46	58.41,26.99	61.48,30.78
path	64.76,34.88	67.50,38.35	68.75,42.37	69.74,47.06	71.15,50.40
Mine along the path
|tip Make sure you enable "Find Minerals" in the tracking menu on the minimap.
Reach 75 Cataclysm Mining |skill Cataclysm Mining,75
step
_Congratulations!_
You Reached 75 Cataclysm Mining Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Light Leather",{
author="support@zygorguides.com",
description="\nLight Leather can be gathered from Durotar.",
condition_end=function() return skill('Skinning') >= 50 end,
},[[
step
kill Stonetusk Boar##113
|tip Loot and skin the Boars around this area.
|tip They will respawn quickly.
collect Light Leather##2318 |n
Blah blah|goto Wetlands/0 57.03,42.03 |goto Elwynn Forest/0 41.64,86.33
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Leveling Guides\\Skinning 1-300",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Skinning skill from 1-300.",
condition_end=function() return skill('Skinning') >= 300 end,
condition_suggested=function() return skill('Skinning') > 0 and skill('Skinning') < 300 and level >= 5 end,
},[[
step
Enter the building |goto Stormwind City/0 72.51,62.23 < 5 |walk
talk Simon Tanner##5564
|tip Inside the building.
Train Skinning |skillmax Skinning,300 |goto 71.70,62.98
|tip You must be at least level 5.
step
map Un'Goro Crater/0
path follow smart; loop on; ants curved; dist 30
path	60.12,62.42	60.19,57.17	62.20,52.68	64.35,48.85	67.37,49.47
path	71.15,51.30	70.05,55.96	71.16,59.35	70.14,63.32	67.60,66.96
path	65.00,70.11	63.13,71.67	60.58,72.88	58.26,68.80	59.11,63.15
Kill any beasts you see and skin them
Reach Level 300 Skinning |skill Skinning,300
step
_Congratulations!_
You Reached 300 Skinning Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Leveling Guides\\Outland Skinning 1-75",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Outland Skinning skill from 1-75.",
condition_end=function() return skill('Outland Skinning') >= 75 end,
condition_suggested=function() return skill('Outland Skinning') > 0 and skill('Outland Skinning') < 75 and level >= 5 end,
},[[
step
Enter the building |goto Hellfire Peninsula/0 54.89,63.62 < 5 |walk
talk Jelena Nightsky##18777
|tip Inside the building.
Train Outland Skinning |skillmax Outland Skinning,75 |goto 54.50,63.17
|tip You must be at least level 5.
step
map Nagrand/0
path follow smart; loop on; ants curved; dist 30
path	57.33,21.04	55.50,21.42	52.96,22.01	51.01,21.29	51.01,24.49
path	50.76,26.74	49.67,30.04	47.78,30.11	46.24,32.05	47.47,35.93
path	47.56,38.15	47.27,40.25	48.07,41.80	48.95,44.30	50.08,46.11
path	51.96,49.08	53.96,48.26	55.67,48.02	56.56,46.65	59.19,45.09
path	60.78,44.57	62.79,44.63	63.80,42.36	61.59,40.12	59.84,39.87
path	59.09,41.49	56.37,43.26	53.70,42.24	52.45,40.38	51.29,38.45
path	50.62,36.56	51.76,33.94	52.65,32.31	53.67,30.67	53.61,28.33
path	52.97,26.36	54.39,23.67	55.98,23.30
Kill any beasts you see and skin them
skill Outland Skinning,75
step
_Congratulations!_
You Reached 75 Outland Skinning Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Leveling Guides\\Northrend Skinning 1-75",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Northrend Skinning skill from 1-75.",
condition_end=function() return skill('Northrend Skinning') >= 75 end,
condition_suggested=function() return skill('Northrend Skinning') > 0 and skill('Northrend Skinning') < 75 and level >= 5 end,
},[[
step
Enter the building |goto Dalaran/1 36.85,29.74 < 5 |walk
talk Derik Marks##28696
|tip Inside the building.
Train Northrend Skinning |skillmax Northrend Skinning,75 |goto 34.79,28.16
|tip You must be at least level 5.
step
map The Storm Peaks/0
path follow smart; loop on; ants curved; dist 30
path	38.30,58.49	38.01,54.99	39.86,53.06	40.90,53.14	42.63,54.12
path	43.30,55.57	44.95,56.01	46.15,56.38	45.83,58.31	46.83,59.82
path	47.26,62.16	46.46,63.59	45.25,62.62	43.50,60.97	42.12,59.98
path	40.48,60.62	39.18,60.17
Kill any beasts you see and skin them
skill Northrend Skinning,75
step
_Congratulations!_
You Reached 75 Northrend Skinning Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Leveling Guides\\Cataclysm Skinning 1-75",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Cataclysm Skinning skill from 1-75.",
condition_end=function() return skill('Cataclysm Skinning') >= 75 end,
condition_suggested=function() return skill('Cataclysm Skinning') > 0 and skill('Cataclysm Skinning') < 75 and level >= 5 end,
},[[
step
Enter the building |goto Stormwind City/0 72.51,62.23 < 5 |walk
talk Simon Tanner##5564
|tip Inside the building.
Train Cataclysm Skinning |skillmax Cataclysm Skinning,75 |goto 71.70,62.98
|tip You must be at least level 5.
step
map Tol Barad Peninsula/0
path follow smart; loop on; ants curved; dist 30
path	54.41,59.21	52.12,54.28	52.59,46.96	55.75,47.68	57.63,51.37
path	60.84,53.05	62.02,56.70	59.02,60.59	58.06,56.47	55.40,57.09
Kill Darkwood enemies around this area
skill Cataclysm Skinning,75
step
_Congratulations!_
You Reached 75 Cataclysm Skinning Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Farming Guides\\Linen Cloth",{
author="support@zygorguides.com",
description="\nLinen Cloth can be gathered from the Westfall and Darkshore.",
},[[
step
Kill Riverpaw enemies around this area
collect Linen Cloth##2589 |n |goto Westfall/0 51.91,51.00
'|confirm
|only if not completedq(26370)
step
talk Zidormi##141489
Ask her _"Can you show me what Darkshore was like before the battle?"_
Travel to the Past |complete ZGV.InPhase('Old Darnassus') |goto Darkshore/0 48.86,24.46
|only if completedq(26370)
step
kill Twilight Fanatic##32888+
collect Linen Cloth##2589 |n |goto 43.88,31.91
'|confirm
|only if completedq(26370)
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Farming Guides\\Silk Cloth",{
author="support@zygorguides.com",
description="\nSilk Cloth can be gathered from the northrn Dustwallow Marsh.",
},[[
step
Kill enemies around this area
collect Silk Cloth##4306 |n |goto Dustwallow Marsh/0 42.04,15.93
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Leveling Guides\\Tailoring 1-300",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Tailoring skill from 1-300.",
condition_end=function() return skill('Tailoring') >= 300 end,
condition_suggested=function() return skill('Tailoring') > 0 and skill('Tailoring') < 300 and level >= 5 end,
},[[
step
talk Georgio Bolero##1346
|tip Inside the building.
Train Tailoring |skillmax Tailoring,300 |goto Stormwind City/0 53.08,81.35
|tip You must be at least level 5.
step
collect 120 Linen Cloth##2589
|tip Farm them from humanoid mobs or purchase them from the Auction House.
|only if skill("Tailoring") < 80
step
Open Your Tailoring Crafting Panel:
_<Create 49 Linen Bandage>_
|tip You may need to make a few more.
Reach 50 Tailoring |skill Tailoring,50
step
Enter the building |goto 52.94,50.96 < 10 |walk
talk Angela Leifeld##56796
|tip Inside the building.
learn Heavy Linen Bandage##3276 |goto 52.18,45.40
step
Open Your Tailoring Crafting Panel:
_<Create 30 Heavy Linen Bandage>_
|tip You may need to make a few more.
Reach 80 Tailoring |skill Tailoring,80
step
collect 100 Wool Cloth##2592
|tip Farm them from humanoid mobs or purchase them from the Auction House.
|only if skill("Tailoring") < 150
step
talk Angela Leifeld##56796
|tip Inside the building.
learn Wool Bandage##3277 |goto 52.18,45.40
step
Open Your Tailoring Crafting Panel:
_<Create 50 Wool Bandage>_
|tip You may need to make a few more.
Reach 130 Tailoring |skill Tailoring,130
step
talk Angela Leifeld##56796
|tip Inside the building.
learn Heavy Wool Bandage##3278 |goto 52.18,45.40
step
Open Your Tailoring Crafting Panel:
_<Create 20 Heavy Wool Bandage>_
|tip You may need to make a few more.
Reach 150 Tailoring |skill Tailoring,150
step
collect 90 Silk Cloth##4306
|tip Farm them from humanoid mobs or purchase them from the Auction House.
|only if skill("Tailoring") < 210
step
talk Angela Leifeld##56796
|tip Inside the building.
learn Silk Bandage##7928 |goto 52.18,45.40
step
Open Your Tailoring Crafting Panel:
_<Create 40 Silk Bandage>_
|tip You may need to make a few more.
Reach 190 Tailoring |skill Tailoring,190
step
talk Angela Leifeld##56796
|tip Inside the building.
learn Heavy Silk Bandage##7929 |goto 52.18,45.40
step
Open Your Tailoring Crafting Panel:
_<Create 20 Heavy Silk Bandage>_
|tip You may need to make a few more.
Reach 210 Tailoring |skill Tailoring,210
step
collect 70 Mageweave Cloth##4338
|tip Farm them from humanoid mobs or purchase them from the Auction House.
|only if skill("Tailoring") < 260
step
talk Angela Leifeld##56796
|tip Inside the building.
learn Mageweave Bandage##10840 |goto 52.18,45.40
step
Open Your Tailoring Crafting Panel:
_<Create 30 Mageweave Bandage>_
|tip You may need to make a few more.
Reach 240 Tailoring |skill Tailoring,240
step
talk Angela Leifeld##56796
|tip Inside the building.
learn Heavy Mageweave Bandage##10841 |goto 52.18,45.40
step
Open Your Tailoring Crafting Panel:
_<Create 20 Heavy Mageweave Bandage>_
|tip You may need to make a few more.
Reach 260 Tailoring |skill Tailoring,260
step
collect 50 Runecloth##14047
|tip Farm them from humanoid mobs or purchase them from the Auction House.
|only if skill("Tailoring") < 300
step
talk Angela Leifeld##56796
|tip Inside the building.
learn Runecloth Bandage##18629 |goto 52.18,45.40
step
Open Your Tailoring Crafting Panel:
_<Create 30 Runecloth Bandage>_
|tip You may need to make a few more.
Reach 290 Tailoring |skill Tailoring,290
step
talk Angela Leifeld##56796
|tip Inside the building.
learn Heavy Runecloth Bandage##18630 |goto 52.18,45.40
step
Open Your Tailoring Crafting Panel:
_<Create 10 Heavy Runecloth Bandage>_
|tip You may need to make a few more.
Reach 300 Tailoring |skill Tailoring,300
step
_Congratulations!_
You Reached 300 Tailoring Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Leveling Guides\\Outland Tailoring 1-75",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Outland Tailoring skill from 1-75.",
condition_end=function() return skill('Outland Tailoring') >= 75 end,
condition_suggested=function() return skill('Outland Tailoring') > 0 and skill('Outland Tailoring') < 75 and level >= 5 end,
},[[
step
clicknpc Tailoring##33613 |only if rep ('The Scryers') >= Neutral
talk Weaver Aoa##33684 |only if rep ('The Aldor') >= Neutral
|tip Inside the building.
Train Outland Tailoring |skillmax Outland Tailoring,75 |goto Shattrath City/0 44.01,90.91 |only if rep ('The Scryers') >= Neutral
Train Outland Tailoring |skillmax Outland Tailoring,75 |goto Shattrath City/0 37.69,26.99 |only if rep ('The Aldor') >= Neutral
|tip You must be at least level 5.
step
collect 300 Netherweave Cloth##21877
|tip Farm them from humanoid mobs or purchase them from the Auction House.
|only if skill("Outlland Tailoring") < 74
step
clicknpc Bandage Recipes##33621 |only if rep ('The Scryers') >= Neutral
|tip Inside the building. |only if rep ('The Scryers') >= Neutral
talk Mildred Fletcher##19184 |only if rep ('The Aldor') >= Neutral
learn Netherweave Bandage##27032 |goto 43.72,91.38 |only if rep ('The Scryers') >= Neutral
learn Netherweave Bandage##27032 |goto 66.73,13.56 |only if rep ('The Aldor') >= Neutral
step
Open Your Tailoring Crafting Panel:
_<Create 39 Netherweave Bandage>_
|tip You may need to make a few more.
Reach 40 Outland Tailoring |skill Outland Tailoring,40
step
clicknpc Bandage Recipes##33621 |only if rep ('The Scryers') >= Neutral
|tip Inside the building. |only if rep ('The Scryers') >= Neutral
talk Mildred Fletcher##19184 |only if rep ('The Aldor') >= Neutral
learn Heavy Netherweave Bandage##27033 |goto 43.72,91.38 |only if rep ('The Scryers') >= Neutral
learn Heavy Netherweave Bandage##27033 |goto 66.73,13.56 |only if rep ('The Aldor') >= Neutral
step
Open Your Tailoring Crafting Panel:
_<Create 35 Heavy Netherweave Bandage>_
|tip You may need to make a few more.
Reach 75 Outland Tailoring |skill Outland Tailoring,75
step
_Congratulations!_
You Reached 75 Outland Tailoring Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Leveling Guides\\Northrend Tailoring 1-75",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Northrend Tailoring skill from 1-75.",
condition_end=function() return skill('Northrend Tailoring') >= 75 end,
condition_suggested=function() return skill('Northrend Tailoring') > 0 and skill('Northrend Tailoring') < 75 and level >= 5 end,
},[[
step
talk Charles Worth##28699
|tip Inside the building.
Train Northrend Tailoring |skillmax Northrend Tailoring,75|goto Dalaran/1 36.14,33.55
|tip You must be at least level 5.
step
collect 220 Frostweave Cloth##33470
|tip Farm them from humanoid mobs or purchase them from the Auction House.
|only if skill("Northrend Tailoring") < 74
step
talk Olisarra the Kind##28706
|tip Inside the building.
learn Frostweave Bandage##45545 |goto 36.57,37.32
step
Open Your Tailoring Crafting Panel:
_<Create 19 Frostweave Bandage>_
Reach 20 Northrend Tailoring |skill Northrend Tailoring,20
step
talk Olisarra the Kind##28706
|tip Inside the building.
learn Heavy Frostweave Bandage##45546 |goto 36.57,37.32
step
Open Your Tailoring Crafting Panel:
_<Create 55 Heavy Frostweave Bandage>_
|tip You may need to make more.
Reach 75 Northrend Tailoring |skill Northrend Tailoring,75
step
_Congratulations!_
You Reached 75 Northrend Tailoring Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Leveling Guides\\Cataclysm Tailoring 1-75",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Cataclysm Tailoring skill from 1-75.",
condition_end=function() return skill('Cataclysm Tailoring') >= 75 end,
condition_suggested=function() return skill('Cataclysm Tailoring') > 0 and skill('Cataclysm Tailoring') < 75 and level >= 5 end,
},[[
step
talk Georgio Bolero##1346
Train Cataclysm Tailoring |skillmax Cataclysm Tailoring,75 |goto Stormwind City/0 53.08,81.35
|tip You must be at least level 5.
step
collect 200 Embersilk Cloth##53010
|tip Farm them from humanoid mobs or purchase them from the Auction House.
|only if skill("Cataclysm Tailoring") < 75
step
Enter the building |goto 52.91,50.93 < 10 |walk
talk Angela Leifeld##56796
learn Embersilk Bandage##74556 |goto 52.18,45.39
step
Open Your Tailoring Crafting Panel:
_<Create 24 Embersilk Bandage>_
Reach 25 Cataclysm Tailoring |skill Cataclysm Tailoring,25
step
talk Angela Leifeld##56796
learn Heavy Embersilk Bandage##74557 |goto 52.18,45.39
step
Open Your Tailoring Crafting Panel:
_<Create 50 Heavy Embersilk Bandage>_
Reach 75 Cataclysm Tailoring |skill Cataclysm Tailoring,75
step
_Congratulations!_
You Reached 75 Cataclysm Tailoring Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\General Farming Guides\\Volatile Water",{
author="support@zygorguides.com",
description="\nVolatile Water can be gathered from Twilight Highlands in Eastern Kingdoms.",
},[[
step
Complete the "Any Portal in a Storm" Quest |complete completedq(27537)
|tip Refer to the Twilight HIghlands leveling guide to accomplish this.
step
label "Start_Farming"
map Twilight Highlands/0
path follow smart; loop off; ants curved
path	70.82,50.13	69.23,49.38	67.26,48.65	66.70,46.06	66.33,43.95
path	64.63,43.26	63.65,41.34
kill Muddied Water Elemental##44011+
collect Volatile Water##52326 |n
'|goto Twilight Highlands/0 63.65,41.34 < 20 |noway |c
step
map Twilight Highlands/0
path follow smart; loop off; ants curved
path	63.65,41.34	64.63,43.26	66.33,43.95	66.70,46.06	67.26,48.65
path	69.23,49.38	70.82,50.13
kill Muddied Water Elemental##44011+
collect Volatile Water##52326 |n
'|goto 70.82,50.13 < 20 |noway |c |next "Start_Farming"
]])
