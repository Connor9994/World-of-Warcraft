local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if ZGV:DoMutex("ProfessionsCSHADOW") then return end
ZygorGuidesViewer.GuideMenuTier = "SHA"
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Alchemy\\Leveling Guides\\Shadowlands Alchemy 1-175",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Shadowlands Alchemy profession from 1-175.",
startlevel=50.0,
condition_end=function() return skill('Shadowlands Alchemy') >= 175 end,
condition_suggested=function() return skill('Shadowlands Alchemy') > 0 and skill('Shadowlands Alchemy') < 175 and level >= 50 end,
},[[
step
talk Elixirist Au'pyr##156687
Train Alchemy |skillmax Alchemy,300 |goto Oribos/0 39.24,40.37
step
talk Elixirist Au'pyr##156687
Train Shadowlands Alchemy |skillmax Shadowlands Alchemy,175 |goto 39.24,40.37
step
Click Here if You Would Like to Collect All Materials First |confirm |or
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Shadowlands Alchemy |confirm |next "Begin_Profession_Leveling" |or
'|complete skill("Shadowlands Alchemy") >= 175 |or |next "Begin_Profession_Leveling" |only if default
'|complete skill("Shadowlands Alchemy") >= 180 |or |next "Begin_Profession_Leveling" |only if KulTiran
'|complete skill("Shadowlands Alchemy") >= 190 |or |next "Begin_Profession_Leveling" |only if Goblin
stickystart "Collect_Rising_Glory_Total"
stickystart "Collect_Marrowroot_Total"
stickystart "Collect_Vigil's_Torch_Total"
stickystart "Collect_Widowbloom_Total"
step
collect 344 Death Blossom##169701
|tip Farm them with Herbalism or purchase them from the auction house.
|tip These totals are approximate.
|tip You may need slightly more or less than the indicated amount.
step
label "Collect_Rising_Glory_Total"
collect 169 Rising Glory##168586
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
step
label "Collect_Marrowroot_Total"
collect 104 Marrowroot##168589
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
step
label "Collect_Vigil's_Torch_Total"
collect 98 Vigil's Torch##170554
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
step
label "Collect_Widowbloom_Total"
collect 70 Widowbloom##168583
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
step
talk Distributor Au'naci##156689
buy 147 Rune Etched Vial##180732 |goto 38.92,39.43
buy 114 Distilled Death Extract##183950 |goto 38.92,39.43
step
label "Begin_Profession_Leveling"
collect 32 Death Blossom##169701 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Shadowlands Alchemy") >= 20 |or |only if default
'|complete skill("Shadowlands Alchemy") >= 25 |or |only if KulTiran
'|complete skill("Shadowlands Alchemy") >= 35 |or |only if Goblin
step
talk Distributor Au'naci##156689
buy 24 Rune Etched Vial##180732 |goto 38.92,39.43 |or
'|complete skill("Shadowlands Alchemy") >= 20 |or |only if default
'|complete skill("Shadowlands Alchemy") >= 25 |or |only if KulTiran
'|complete skill("Shadowlands Alchemy") >= 35 |or |only if Goblin
step
Open Your Alchemy Crafting Panel:
_<Create 8 Spiritual Healing Potions>_
|tip Save these, you will need them later.
collect 8 Spiritual Healing Potion##171267 |or
'|complete skill("Shadowlands Alchemy") >= 20 |or |only if default
'|complete skill("Shadowlands Alchemy") >= 25 |or |only if KulTiran
'|complete skill("Shadowlands Alchemy") >= 35 |or |only if Goblin
step
Open Your Alchemy Crafting Panel:
_<Create 8 Spiritual Mana Potions>_
|tip Save these, you will need them later.
collect 8 Spiritual Mana Potion##171268 |or
'|complete skill("Shadowlands Alchemy") >= 20 |or |only if default
'|complete skill("Shadowlands Alchemy") >= 25 |or |only if KulTiran
'|complete skill("Shadowlands Alchemy") >= 35 |or |only if Goblin
step
talk Elixirist Au'pyr##156687
Train Spiritual Rejuvenation Potion |learn Spiritual Rejuvenation Potion##261423 |goto 39.24,40.37
step
Open Your Alchemy Crafting Panel:
_<Create 8 Spiritual Rejuvenation Potions>_
|tip You may need to create a few more or less of these.
|tip Each one will require another Spritual Mana Potion and Spiritual Healing Potion.
|tip Four Death Blossoms are required for each pair of potions.
Reach Skill 20 in Shadowlands Alchemy |skill Shadowlands Alchemy,20 |or |only if default
Reach Skill 25 in Shadowlands Alchemy |skill Shadowlands Alchemy,25 |or |only if KulTiran
Reach Skill 35 in Shadowlands Alchemy |skill Shadowlands Alchemy,35 |or |only if Goblin
step
talk Elixirist Au'pyr##156687
Train Ground Death Blossom |learn Ground Death Blossom##307120 |goto 39.24,40.37
step
collect 26 Death Blossom##169701 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Shadowlands Alchemy") >= 30 |or |only if default
'|complete skill("Shadowlands Alchemy") >= 35 |or |only if KulTiran
'|complete skill("Shadowlands Alchemy") >= 45 |or |only if Goblin
step
Open Your Alchemy Crafting Panel:
_<Create 13 Ground Death Blossoms>_
|tip You may need to create a few more or less of these.
|tip Each one will require another two Death Blossoms.
Reach Skill 30 in Shadowlands Alchemy |skill Shadowlands Alchemy,30 |or |only if default
Reach Skill 35 in Shadowlands Alchemy |skill Shadowlands Alchemy,35 |or |only if KulTiran
Reach Skill 45 in Shadowlands Alchemy |skill Shadowlands Alchemy,45 |or |only if Goblin
step
talk Elixirist Au'pyr##156687
Train Potion of the Hidden Spirit |learn Potion of the Hidden Spirit##261424 |goto 39.24,40.37
step
talk Distributor Au'naci##156689
buy 15 Rune Etched Vial##180732 |goto 38.92,39.43 |or
'|complete skill("Shadowlands Alchemy") >= 45 |or |only if default
'|complete skill("Shadowlands Alchemy") >= 50 |or |only if KulTiran
'|complete skill("Shadowlands Alchemy") >= 60 |or |only if Goblin
stickystart "Collect_Rising_Glory_45"
step
collect 30 Death Blossom##169701 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Shadowlands Alchemy") >= 45 |or |only if default
'|complete skill("Shadowlands Alchemy") >= 50 |or |only if KulTiran
'|complete skill("Shadowlands Alchemy") >= 60 |or |only if Goblin
step
label "Collect_Rising_Glory_45"
collect 45 Rising Glory##168586 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Shadowlands Alchemy") >= 45 |or |only if default
'|complete skill("Shadowlands Alchemy") >= 50 |or |only if KulTiran
'|complete skill("Shadowlands Alchemy") >= 60 |or |only if Goblin
step
Open Your Alchemy Crafting Panel:
_<Create 15 Potions of the Hidden Spirit>_
Reach Skill 45 in Shadowlands Alchemy |skill Shadowlands Alchemy,45 |or |only if default
Reach Skill 50 in Shadowlands Alchemy |skill Shadowlands Alchemy,50 |or |only if KulTiran
Reach Skill 60 in Shadowlands Alchemy |skill Shadowlands Alchemy,60 |or |only if Goblin
step
talk Elixirist Au'pyr##156687
Train Ground Marrowroot |learn Ground Marrowroot##307123 |goto 39.24,40.37
step
collect 20 Marrowroot##168589 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Shadowlands Alchemy") >= 55 |or |only if default
'|complete skill("Shadowlands Alchemy") >= 60 |or |only if KulTiran
'|complete skill("Shadowlands Alchemy") >= 70 |or |only if Goblin
step
Open Your Alchemy Crafting Panel:
_<Create 10 Ground Marrowroots>_
|tip You may need to create a few more or less of these.
|tip Each one will require another two Marrowroots.
Reach Skill 55 in Shadowlands Alchemy |skill Shadowlands Alchemy,55 |or |only if default
Reach Skill 60 in Shadowlands Alchemy |skill Shadowlands Alchemy,60 |or |only if KulTiran
Reach Skill 70 in Shadowlands Alchemy |skill Shadowlands Alchemy,70 |or |only if Goblin
step
talk Elixirist Au'pyr##156687
Train Potion of Soul Purity |learn Potion of Soul Purity##256134 |goto 39.24,40.37
step
talk Distributor Au'naci##156689
buy 5 Rune Etched Vial##180732 |goto 38.92,39.43 |or
'|complete skill("Shadowlands Alchemy") >= 60 |or |only if default
'|complete skill("Shadowlands Alchemy") >= 65 |or |only if KulTiran
'|complete skill("Shadowlands Alchemy") >= 75 |or |only if Goblin
stickystart "Collect_Vigil's_Torch_60"
step
collect 10 Death Blossom##169701 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Shadowlands Alchemy") >= 60 |or |only if default
'|complete skill("Shadowlands Alchemy") >= 65 |or |only if KulTiran
'|complete skill("Shadowlands Alchemy") >= 75 |or |only if Goblin
step
label "Collect_Vigil's_Torch_60"
collect 15 Vigil's Torch##170554 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Shadowlands Alchemy") >= 60 |or |only if default
'|complete skill("Shadowlands Alchemy") >= 65 |or |only if KulTiran
'|complete skill("Shadowlands Alchemy") >= 75 |or |only if Goblin
step
Open Your Alchemy Crafting Panel:
_<Create 5 Potions of Soul Purity>_
Reach Skill 60 in Shadowlands Alchemy |skill Shadowlands Alchemy,60 |or |only if default
Reach Skill 65 in Shadowlands Alchemy |skill Shadowlands Alchemy,65 |or |only if KulTiran
Reach Skill 75 in Shadowlands Alchemy |skill Shadowlands Alchemy,75 |or |only if Goblin
step
talk Elixirist Au'pyr##156687
Train Potion of Specter Swiftness |learn Potion of Specter Swiftness##256133 |goto 39.24,40.37
step
talk Distributor Au'naci##156689
buy 28 Rune Etched Vial##180732 |goto 38.92,39.43 |or
'|complete skill("Shadowlands Alchemy") >= 80 |or |only if default
'|complete skill("Shadowlands Alchemy") >= 85 |or |only if KulTiran
'|complete skill("Shadowlands Alchemy") >= 95 |or |only if Goblin
stickystart "Collect_Marrowroot_80"
step
collect 56 Death Blossom##169701 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Shadowlands Alchemy") >= 80 |or |only if default
'|complete skill("Shadowlands Alchemy") >= 85 |or |only if KulTiran
'|complete skill("Shadowlands Alchemy") >= 95 |or |only if Goblin
step
label "Collect_Marrowroot_80"
collect 84 Marrowroot##168589 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Shadowlands Alchemy") >= 80 |or |only if default
'|complete skill("Shadowlands Alchemy") >= 85 |or |only if KulTiran
'|complete skill("Shadowlands Alchemy") >= 95 |or |only if Goblin
step
Open Your Alchemy Crafting Panel:
_<Create 28 Potions of Specter Swiftness>_
|tip You may need to create a few more or less of these.
|tip Each additional potion will require two Death Blossoms and three Marrowroots.
Reach Skill 80 in Shadowlands Alchemy |skill Shadowlands Alchemy,80 |or |only if default
Reach Skill 85 in Shadowlands Alchemy |skill Shadowlands Alchemy,85 |or |only if KulTiran
Reach Skill 95 in Shadowlands Alchemy |skill Shadowlands Alchemy,95 |or |only if Goblin
step
talk Elixirist Au'pyr##156687
Train Ground Vigil's Torch |learn Ground Vigil's Torch##307121 |goto 39.24,40.37
step
collect 44 Vigil's Torch##170554 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Shadowlands Alchemy") >= 97 |or |only if default
'|complete skill("Shadowlands Alchemy") >= 102 |or |only if KulTiran
'|complete skill("Shadowlands Alchemy") >= 112 |or |only if Goblin
step
Open Your Alchemy Crafting Panel:
_<Create 22 Ground Vigil's Torches>_
|tip You may need to create a few more or less of these.
|tip Each additional one will require two Vigil's Torches.
Reach Skill 97 in Shadowlands Alchemy |skill Shadowlands Alchemy,97 |or |only if default
Reach Skill 102 in Shadowlands Alchemy |skill Shadowlands Alchemy,102 |or |only if KulTiran
Reach Skill 112 in Shadowlands Alchemy |skill Shadowlands Alchemy,112 |or |only if Goblin
step
talk Elixirist Au'pyr##156687
Train Potion of the Psychopomp's Speed |learn Potion of the Psychopomp's Speed##344316 |goto 39.24,40.37
step
talk Distributor Au'naci##156689
buy 3 Rune Etched Vial##180732 |goto 38.92,39.43 |or
'|complete skill("Shadowlands Alchemy") >= 100 |or |only if default
'|complete skill("Shadowlands Alchemy") >= 105 |or |only if KulTiran
'|complete skill("Shadowlands Alchemy") >= 115 |or |only if Goblin
stickystart "Collect_Rising_Glory_100"
step
collect 9 Vigil's Torch##170554 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Shadowlands Alchemy") >= 100 |or |only if default
'|complete skill("Shadowlands Alchemy") >= 105 |or |only if KulTiran
'|complete skill("Shadowlands Alchemy") >= 115 |or |only if Goblin
step
label "Collect_Rising_Glory_100"
collect 9 Rising Glory##168586 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Shadowlands Alchemy") >= 100 |or |only if default
'|complete skill("Shadowlands Alchemy") >= 105 |or |only if KulTiran
'|complete skill("Shadowlands Alchemy") >= 115 |or |only if Goblin
step
Open Your Alchemy Crafting Panel:
_<Create 3 Potions of the Psychopomp's Speed>_
Reach Skill 100 in Shadowlands Alchemy |skill Shadowlands Alchemy,100 |or |only if default
Reach Skill 105 in Shadowlands Alchemy |skill Shadowlands Alchemy,105 |or |only if KulTiran
Reach Skill 115 in Shadowlands Alchemy |skill Shadowlands Alchemy,115 |or |only if Goblin
step
talk Elixirist Au'pyr##156687
Train Potion of Hardened Shadows |learn Potion of Hardened Shadows##307094 |goto 39.24,40.37
step
talk Distributor Au'naci##156689
buy 10 Rune Etched Vial##180732 |goto 38.92,39.43 |or
'|complete skill("Shadowlands Alchemy") >= 110 |or |only if default
'|complete skill("Shadowlands Alchemy") >= 115 |or |only if KulTiran
'|complete skill("Shadowlands Alchemy") >= 125 |or |only if Goblin
stickystart "Collect_Vigil's_Torch_110"
step
collect 30 Rising Glory##168586 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Shadowlands Alchemy") >= 110 |or |only if default
'|complete skill("Shadowlands Alchemy") >= 115 |or |only if KulTiran
'|complete skill("Shadowlands Alchemy") >= 125 |or |only if Goblin
step
label "Collect_Vigil's_Torch_110"
collect 30 Vigil's Torch##170554 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Shadowlands Alchemy") >= 110 |or |only if default
'|complete skill("Shadowlands Alchemy") >= 115 |or |only if KulTiran
'|complete skill("Shadowlands Alchemy") >= 125 |or |only if Goblin
step
Open Your Alchemy Crafting Panel:
_<Create 10 Potions of Hardened Shadows>_
Reach Skill 110 in Shadowlands Alchemy |skill Shadowlands Alchemy,110 |or |only if default
Reach Skill 115 in Shadowlands Alchemy |skill Shadowlands Alchemy,115 |or |only if KulTiran
Reach Skill 125 in Shadowlands Alchemy |skill Shadowlands Alchemy,125 |or |only if Goblin
step
talk Elixirist Au'pyr##156687
Train Ground Widowbloom |learn Ground Widowbloom##307122 |goto 39.24,40.37
step
collect 28 Widowbloom##168583 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Shadowlands Alchemy") >= 120 |or |only if default
'|complete skill("Shadowlands Alchemy") >= 125 |or |only if KulTiran
'|complete skill("Shadowlands Alchemy") >= 135 |or |only if Goblin
step
Open Your Alchemy Crafting Panel:
_<Create 14 Ground Widowbloom>_
|tip You may need to create a few more or less of these.
|tip Each additional one will require two Widowblooms.
Reach Skill 120 in Shadowlands Alchemy |skill Shadowlands Alchemy,120 |or |only if default
Reach Skill 125 in Shadowlands Alchemy |skill Shadowlands Alchemy,125 |or |only if KulTiran
Reach Skill 135 in Shadowlands Alchemy |skill Shadowlands Alchemy,135 |or |only if Goblin
step
talk Elixirist Au'pyr##156687
Train Potion of Sacrificial Anima |learn Potion of Sacrificial Anima##322301 |goto 39.24,40.37
step
talk Distributor Au'naci##156689
buy 7 Rune Etched Vial##180732 |goto 38.92,39.43 |or
'|complete skill("Shadowlands Alchemy") >= 125 |or |only if default
'|complete skill("Shadowlands Alchemy") >= 130 |or |only if KulTiran
'|complete skill("Shadowlands Alchemy") >= 140 |or |only if Goblin
step
collect 42 Widowbloom##168583 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Shadowlands Alchemy") >= 125 |or |only if default
'|complete skill("Shadowlands Alchemy") >= 130 |or |only if KulTiran
'|complete skill("Shadowlands Alchemy") >= 140 |or |only if Goblin
step
Open Your Alchemy Crafting Panel:
_<Create 7 Potions of Sacrificial Anima>_
|tip You may need to create a few more or less of these.
|tip Each additional potion will require six Widowblooms.
Reach Skill 125 in Shadowlands Alchemy |skill Shadowlands Alchemy,125 |or |only if default
Reach Skill 130 in Shadowlands Alchemy |skill Shadowlands Alchemy,130 |or |only if KulTiran
Reach Skill 140 in Shadowlands Alchemy |skill Shadowlands Alchemy,140 |or |only if Goblin
step
talk Elixirist Au'pyr##156687
Train Crafter's Mark I |learn Crafter's Mark I##343679 |goto 39.24,40.37
step
talk Distributor Au'naci##156689
buy 38 Rune Etched Vial##180732 |goto 38.92,39.43 |or 2
buy 114 Distilled Death Extract##183950 |goto 38.92,39.43 |or 2
'|complete skill("Shadowlands Alchemy") >= 157 |or |only if default
'|complete skill("Shadowlands Alchemy") >= 162 |or |only if KulTiran
'|complete skill("Shadowlands Alchemy") >= 172 |or |only if Goblin
step
collect 190 Death Blossom##169701 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Shadowlands Alchemy") >= 157 |or |only if default
'|complete skill("Shadowlands Alchemy") >= 162 |or |only if KulTiran
'|complete skill("Shadowlands Alchemy") >= 172 |or |only if Goblin
step
Open Your Alchemy Crafting Panel:
_<Create 38 Crafter's Mark Is>_
|tip You may need to create a few more or less of these.
|tip Each additional one will require five Death Blossoms, one Rune Etched Vial, and three Distilled Death Extract.
Reach Skill 157 in Shadowlands Alchemy |skill Shadowlands Alchemy,157 |or |only if default
Reach Skill 162 in Shadowlands Alchemy |skill Shadowlands Alchemy,162 |or |only if KulTiran
Reach Skill 172 in Shadowlands Alchemy |skill Shadowlands Alchemy,172 |or |only if Goblin
step
talk Elixirist Au'pyr##156687
Train Potion of Spectral Strength |learn Potion of Spectral Strength##307098 |goto 39.24,40.37
|tip You can make any stat potion if other herbs are cheaper.
step
talk Distributor Au'naci##156689
buy 17 Rune Etched Vial##180732 |goto 38.92,39.43 |or
'|complete skill("Shadowlands Alchemy") >= 170 |or |only if default
'|complete skill("Shadowlands Alchemy") >= 175 |or |only if KulTiran
'|complete skill("Shadowlands Alchemy") >= 185 |or |only if Goblin
step
collect 85 Rising Glory##168586 |or
|tip Farm them with Herbalism or purchase them from the auction house.
|tip You can make any stat potion if other herbs are cheaper.
'|complete skill("Shadowlands Alchemy") >= 170 |or |only if default
'|complete skill("Shadowlands Alchemy") >= 175 |or |only if KulTiran
'|complete skill("Shadowlands Alchemy") >= 185 |or |only if Goblin
step
Open Your Alchemy Crafting Panel:
_<Create 17 Potions of Spectral Strength>_
|tip You may need to create a few more or less of these.
|tip Each additional potion will require five Rising Glorys and one Rune Etched Vial.
|tip You can make any stat potion if other herbs are cheaper.
Reach Skill 170 in Shadowlands Alchemy |skill Shadowlands Alchemy,170 |or |only if default
Reach Skill 175 in Shadowlands Alchemy |skill Shadowlands Alchemy,175 |or |only if KulTiran
Reach Skill 185 in Shadowlands Alchemy |skill Shadowlands Alchemy,185 |or |only if Goblin
step
Reach Skill 175 in Shadowlands Alchemy |skill Shadowlands Alchemy,175 |or |only if default
Reach Skill 180 in Shadowlands Alchemy |skill Shadowlands Alchemy,180 |or |only if KulTiran
Reach Skill 190 in Shadowlands Alchemy |skill Shadowlands Alchemy,190 |or |only if Goblin
|tip At this point, it's best to earn the last five points through world quests.
|tip You can also create Spectral Flasks of Stamina fairly cheaply.
|tip Each one requires one Rune Etched Vial, one Nightshade, three Rising Glorys, and three Marrowroots.
step
_Congratulations!_
You Reached 175 in Shadowlands Alchemy Skill. |only if default
You Reached 180 in Shadowlands Alchemy Skill. |only if KulTiran
You Reached 190 in Shadowlands Alchemy Skill. |only if Goblin
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Blacksmithing\\Leveling Guides\\Shadowlands Blacksmithing 1-100",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Shadowlands Blacksmithing profession from 1-100.",
startlevel=50.0,
condition_end=function() return skill('Shadowlands Blacksmithing') >= 100 end,
condition_suggested=function() return skill('Shadowlands Blacksmithing') > 0 and skill('Shadowlands Blacksmithing') < 100 and level >= 50 end,
},[[
step
talk Smith Au'berk##156666
Train Blacksmithing |skillmax Blacksmithing,300 |goto Oribos/0 40.50,31.48
step
talk Smith Au'berk##156666
Train Shadowlands Blacksmithing |skillmax Shadowlands Blacksmithing,100 |goto 40.50,31.48
step
Click Here if You Would Like to Collect All Materials First |confirm |or
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Shadowlands Alchemy |confirm |next "Begin_Profession_Leveling" |or
'|complete skill("Shadowlands Blacksmithing") >= 100 |or |next "Begin_Profession_Leveling" |only if default
'|complete skill("Shadowlands Blacksmithing") >= 105 |or |next "Begin_Profession_Leveling" |only if DarkIronDwarf or KulTiran
'|complete skill("Shadowlands Blacksmithing") >= 110 |or |next "Begin_Profession_Leveling" |only if LightforgedDraenei
stickystart "Collect_Sinvyr_Ore_Total"
stickystart "Collect_Phaedrum_Ore_Total"
stickystart "Collect_Oxxein_Ore_Total"
stickystart "Collect_Laestrite_Ore_Total"
stickystart "Collect_Elethium_Ore_Total"
step
collect 189 Solenium Ore##171829
|tip Farm them with Mining or purchase them from the Auction House.
|tip These totals are approximate.
|tip You may need slightly more or less than the indicated amount.
step
label "Collect_Sinvyr_Ore_Total"
collect 189 Sinvyr Ore##171832
|tip Farm them with Mining or purchase them from the Auction House. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
step
label "Collect_Phaedrum_Ore_Total"
collect 189 Phaedrum Ore##171831
|tip Farm them with Mining or purchase them from the Auction House. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
step
label "Collect_Oxxein_Ore_Total"
collect 189 Oxxein Ore##171830
|tip Farm them with Mining or purchase them from the Auction House. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
step
label "Collect_Laestrite_Ore_Total"
collect 347 Laestrite Ore##171828
|tip Farm them with Mining or purchase them from the Auction House. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
step
label "Collect_Elethium_Ore_Total"
collect 29 Elethium Ore##171833
|tip Farm them with Mining or purchase them from the Auction House. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
step
talk Distributor Au'til##156777
buy 953 Luminous Flux##180733 |goto 38.58,33.48
step
label "Begin_Profession_Leveling"
collect 20 Laestrite Ore##171828 |or
|tip Farm them with Mining or purchase them from the Auction House.
'|complete skill("Shadowlands Blacksmithing") >= 6 |or |only if default
'|complete skill("Shadowlands Blacksmithing") >= 11 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Shadowlands Blacksmithing") >= 16 |or |only if LightforgedDraenei
step
talk Distributor Au'til##156777
buy 1 Blacksmith's Hammer##5956 |goto 38.58,33.48 |or 2 |only if itemcount(5956,152839,177033,136350,157585,140209,174280,181763,109253,40772,114943) == 0
|tip You can also purchase a "Gnomish Army Knife" or "Utimate Gnomish Army Knife" from the auction house. |only if itemcount(5956,152839,177033,136350,157585,140209,174280,181763,109253,40772,114943) == 0
buy 10 Luminous Flux##180733 |goto 38.58,33.48 |or 2
'|complete skill("Shadowlands Blacksmithing") >= 6 |or |only if default
'|complete skill("Shadowlands Blacksmithing") >= 11 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Shadowlands Blacksmithing") >= 16 |or |only if LightforgedDraenei
step
Open Your Blacksmithing Crafting Panel:
_<Create 5 Ceremonious Armguards>_
Reach Skill 6 in Shadowlands Blacksmithing |skill Shadowlands Blacksmithing,6 |goto 40.52,31.94 |or |only if default
Reach Skill 11 in Shadowlands Blacksmithing |skill Shadowlands Blacksmithing,11 |goto 40.52,31.94 |or |only if DarkIronDwarf or KulTiran
Reach Skill 16 in Shadowlands Blacksmithing |skill Shadowlands Blacksmithing,16 |goto 40.52,31.94 |or |only if LightforgedDraenei
step
talk Smith Au'berk##156666
Train Ceremonious Waistguard |learn Ceremonious Waistguard##307669 |goto 40.50,31.48
step
collect 28 Laestrite Ore##171828 |or
|tip Farm them with Mining or purchase them from the Auction House.
'|complete skill("Shadowlands Blacksmithing") >= 10 |or |only if default
'|complete skill("Shadowlands Blacksmithing") >= 15 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Shadowlands Blacksmithing") >= 20 |or |only if LightforgedDraenei
step
talk Distributor Au'til##156777
buy 4 Luminous Flux##180733 |goto 38.58,33.48 |or
'|complete skill("Shadowlands Blacksmithing") >= 10 |or |only if default
'|complete skill("Shadowlands Blacksmithing") >= 15 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Shadowlands Blacksmithing") >= 20 |or |only if LightforgedDraenei
step
Open Your Blacksmithing Crafting Panel:
_<Create 4 Ceremonious Waistguard>_
Reach Skill 10 in Shadowlands Blacksmithing |skill Shadowlands Blacksmithing,10 |goto 40.52,31.94 |or |only if default
Reach Skill 15 in Shadowlands Blacksmithing |skill Shadowlands Blacksmithing,15 |goto 40.52,31.94 |or |only if DarkIronDwarf or KulTiran
Reach Skill 20 in Shadowlands Blacksmithing |skill Shadowlands Blacksmithing,20 |goto 40.52,31.94 |or |only if LightforgedDraenei
step
talk Smith Au'berk##156666
Train Ceremonious Rapier |learn Ceremonious Rapier##307675 |goto 40.50,31.48
step
collect 24 Laestrite Ore##171828 |or
|tip Farm them with Mining or purchase them from the Auction House.
'|complete skill("Shadowlands Blacksmithing") >= 16 |or |only if default
'|complete skill("Shadowlands Blacksmithing") >= 21 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Shadowlands Blacksmithing") >= 26 |or |only if LightforgedDraenei
step
talk Distributor Au'til##156777
buy 18 Luminous Flux##180733 |goto 38.58,33.48 |or
'|complete skill("Shadowlands Blacksmithing") >= 16 |or |only if default
'|complete skill("Shadowlands Blacksmithing") >= 21 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Shadowlands Blacksmithing") >= 26 |or |only if LightforgedDraenei
step
Open Your Blacksmithing Crafting Panel:
_<Create 3 Ceremonious Rapiers>_
Reach Skill 16 in Shadowlands Blacksmithing |skill Shadowlands Blacksmithing,16 |goto 40.52,31.94 |or |only if default
Reach Skill 21 in Shadowlands Blacksmithing |skill Shadowlands Blacksmithing,21 |goto 40.52,31.94 |or |only if DarkIronDwarf or KulTiran
Reach Skill 26 in Shadowlands Blacksmithing |skill Shadowlands Blacksmithing,26 |goto 40.52,31.94 |or |only if LightforgedDraenei
step
talk Smith Au'berk##156666
Train Laestrite Skeleton Key |learn Laestrite Skeleton Key##307721 |goto 40.50,31.48
step
collect 4 Laestrite Ore##171828 |or
|tip Farm them with Mining or purchase them from the Auction House.
'|complete skill("Shadowlands Blacksmithing") >= 18 |or |only if default
'|complete skill("Shadowlands Blacksmithing") >= 23 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Shadowlands Blacksmithing") >= 28 |or |only if LightforgedDraenei
step
Open Your Blacksmithing Crafting Panel:
_<Create 2 Laestrite Skeleton Keys>_
Reach Skill 18 in Shadowlands Blacksmithing |skill Shadowlands Blacksmithing,18 |goto 40.52,31.94 |or |only if default
Reach Skill 23 in Shadowlands Blacksmithing |skill Shadowlands Blacksmithing,23 |goto 40.52,31.94 |or |only if DarkIronDwarf or KulTiran
Reach Skill 28 in Shadowlands Blacksmithing |skill Shadowlands Blacksmithing,28 |goto 40.52,31.94 |or |only if LightforgedDraenei
step
talk Smith Au'berk##156666
Train Ceremonious Shield |learn Ceremonious Shield##307671 |goto 40.50,31.48
step
collect 9 Laestrite Ore##171828 |or
|tip Farm them with Mining or purchase them from the Auction House.
'|complete skill("Shadowlands Blacksmithing") >= 20 |or |only if default
'|complete skill("Shadowlands Blacksmithing") >= 25 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Shadowlands Blacksmithing") >= 30 |or |only if LightforgedDraenei
step
talk Distributor Au'til##156777
buy 3 Luminous Flux##180733 |goto 38.58,33.48 |or
'|complete skill("Shadowlands Blacksmithing") >= 20 |or |only if default
'|complete skill("Shadowlands Blacksmithing") >= 25 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Shadowlands Blacksmithing") >= 30 |or |only if LightforgedDraenei
step
Open Your Blacksmithing Crafting Panel:
_<Create 1 Ceremonious Shield>_
Reach Skill 20 in Shadowlands Blacksmithing |skill Shadowlands Blacksmithing,20 |goto 40.52,31.94 |or |only if default
Reach Skill 25 in Shadowlands Blacksmithing |skill Shadowlands Blacksmithing,25 |goto 40.52,31.94 |or |only if DarkIronDwarf or KulTiran
Reach Skill 30 in Shadowlands Blacksmithing |skill Shadowlands Blacksmithing,30 |goto 40.52,31.94 |or |only if LightforgedDraenei
step
talk Smith Au'berk##156666
Train Ceremonious Mace |learn Ceremonious Mace##307674 |goto 40.50,31.48
step
collect 24 Laestrite Ore##171828 |or
|tip Farm them with Mining or purchase them from the Auction House.
'|complete skill("Shadowlands Blacksmithing") >= 26 |or |only if default
'|complete skill("Shadowlands Blacksmithing") >= 31 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Shadowlands Blacksmithing") >= 36 |or |only if LightforgedDraenei
step
talk Distributor Au'til##156777
buy 18 Luminous Flux##180733 |goto 38.58,33.48 |or
'|complete skill("Shadowlands Blacksmithing") >= 26 |or |only if default
'|complete skill("Shadowlands Blacksmithing") >= 31 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Shadowlands Blacksmithing") >= 36 |or |only if LightforgedDraenei
step
Open Your Blacksmithing Crafting Panel:
_<Create 3 Ceremonious Maces>_
Reach Skill 26 in Shadowlands Blacksmithing |skill Shadowlands Blacksmithing,26 |goto 40.52,31.94 |or |only if default
Reach Skill 31 in Shadowlands Blacksmithing |skill Shadowlands Blacksmithing,31 |goto 40.52,31.94 |or |only if DarkIronDwarf or KulTiran
Reach Skill 36 in Shadowlands Blacksmithing |skill Shadowlands Blacksmithing,36 |goto 40.52,31.94 |or |only if LightforgedDraenei
step
talk Smith Au'berk##156666
Train Ceremonious Axe |learn Ceremonious Axe##307672 |goto 40.50,31.48
step
collect 16 Laestrite Ore##171828 |or
|tip Farm them with Mining or purchase them from the Auction House.
'|complete skill("Shadowlands Blacksmithing") >= 30 |or |only if default
'|complete skill("Shadowlands Blacksmithing") >= 35 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Shadowlands Blacksmithing") >= 40 |or |only if LightforgedDraenei
step
talk Distributor Au'til##156777
buy 12 Luminous Flux##180733 |goto 38.58,33.48 |or
'|complete skill("Shadowlands Blacksmithing") >= 30 |or |only if default
'|complete skill("Shadowlands Blacksmithing") >= 35 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Shadowlands Blacksmithing") >= 40 |or |only if LightforgedDraenei
step
Open Your Blacksmithing Crafting Panel:
_<Create 2 Ceremonious Axes>_
Reach Skill 30 in Shadowlands Blacksmithing |skill Shadowlands Blacksmithing,30 |goto 40.52,31.94 |or |only if default
Reach Skill 35 in Shadowlands Blacksmithing |skill Shadowlands Blacksmithing,35 |goto 40.52,31.94 |or |only if DarkIronDwarf or KulTiran
Reach Skill 40 in Shadowlands Blacksmithing |skill Shadowlands Blacksmithing,40 |goto 40.52,31.94 |or |only if LightforgedDraenei
step
talk Smith Au'berk##156666
Train Ceremonious Greaves |learn Ceremonious Greaves##307667 |goto 40.50,31.48
step
collect 26 Laestrite Ore##171828 |or
|tip Farm them with Mining or purchase them from the Auction House.
'|complete skill("Shadowlands Blacksmithing") >= 36 |or |only if default
'|complete skill("Shadowlands Blacksmithing") >= 41 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Shadowlands Blacksmithing") >= 46 |or |only if LightforgedDraenei
step
talk Distributor Au'til##156777
buy 6 Luminous Flux##180733 |goto 38.58,33.48 |or
'|complete skill("Shadowlands Blacksmithing") >= 36 |or |only if default
'|complete skill("Shadowlands Blacksmithing") >= 41 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Shadowlands Blacksmithing") >= 46 |or |only if LightforgedDraenei
step
Open Your Blacksmithing Crafting Panel:
_<Create 3 Ceremonious Greaves>_
Reach Skill 36 in Shadowlands Blacksmithing |skill Shadowlands Blacksmithing,36 |goto 40.52,31.94 |or |only if default
Reach Skill 41 in Shadowlands Blacksmithing |skill Shadowlands Blacksmithing,41 |goto 40.52,31.94 |or |only if DarkIronDwarf or KulTiran
Reach Skill 46 in Shadowlands Blacksmithing |skill Shadowlands Blacksmithing,46 |goto 40.52,31.94 |or |only if LightforgedDraenei
step
talk Smith Au'berk##156666
Train Ceremonious Pauldrons |learn Ceremonious Pauldrons##307668 |goto 40.50,31.48
step
collect 14 Laestrite Ore##171828 |or
|tip Farm them with Mining or purchase them from the Auction House.
'|complete skill("Shadowlands Blacksmithing") >= 40 |or |only if default
'|complete skill("Shadowlands Blacksmithing") >= 45 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Shadowlands Blacksmithing") >= 50 |or |only if LightforgedDraenei
step
talk Distributor Au'til##156777
buy 4 Luminous Flux##180733 |goto 38.58,33.48 |or
'|complete skill("Shadowlands Blacksmithing") >= 40 |or |only if default
'|complete skill("Shadowlands Blacksmithing") >= 45 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Shadowlands Blacksmithing") >= 50 |or |only if LightforgedDraenei
step
Open Your Blacksmithing Crafting Panel:
_<Create 2 Ceremonious Pauldrons>_
Reach Skill 40 in Shadowlands Blacksmithing |skill Shadowlands Blacksmithing,40 |goto 40.52,31.94 |or |only if default
Reach Skill 45 in Shadowlands Blacksmithing |skill Shadowlands Blacksmithing,45 |goto 40.52,31.94 |or |only if DarkIronDwarf or KulTiran
Reach Skill 50 in Shadowlands Blacksmithing |skill Shadowlands Blacksmithing,50 |goto 40.52,31.94 |or |only if LightforgedDraenei
step
talk Smith Au'berk##156666
Train Ceremonious Blade |learn Ceremonious Blade##307679 |goto 40.50,31.48
step
collect 35 Laestrite Ore##171828 |or
|tip Farm them with Mining or purchase them from the Auction House.
'|complete skill("Shadowlands Blacksmithing") >= 45 |or |only if default
'|complete skill("Shadowlands Blacksmithing") >= 50 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Shadowlands Blacksmithing") >= 55 |or |only if LightforgedDraenei
step
talk Distributor Au'til##156777
buy 56 Luminous Flux##180733 |goto 38.58,33.48 |or
'|complete skill("Shadowlands Blacksmithing") >= 45 |or |only if default
'|complete skill("Shadowlands Blacksmithing") >= 50 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Shadowlands Blacksmithing") >= 55 |or |only if LightforgedDraenei
step
Open Your Blacksmithing Crafting Panel:
_<Create 7 Ceremonious Blades>_
|tip You may need to create a few more or less of these.
|tip Each additional blade will require five Laestrite Ore and eight Luminous Flux.
Reach Skill 45 in Shadowlands Blacksmithing |skill Shadowlands Blacksmithing,45 |goto 40.52,31.94 |or |only if default
Reach Skill 50 in Shadowlands Blacksmithing |skill Shadowlands Blacksmithing,50 |goto 40.52,31.94 |or |only if DarkIronDwarf or KulTiran
Reach Skill 55 in Shadowlands Blacksmithing |skill Shadowlands Blacksmithing,55 |goto 40.52,31.94 |or |only if LightforgedDraenei
step
talk Smith Au'berk##156666
Train Crafter's Mark I |learn Crafter's Mark I##343184 |goto 40.50,31.48
step
collect 35 Laestrite Ore##171828 |or
|tip Farm them with Mining or purchase them from the Auction House.
'|complete skill("Shadowlands Blacksmithing") >= 50 |or |only if default
'|complete skill("Shadowlands Blacksmithing") >= 55 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Shadowlands Blacksmithing") >= 60 |or |only if LightforgedDraenei
step
talk Distributor Au'til##156777
buy 15 Luminous Flux##180733 |goto 38.58,33.48 |or
'|complete skill("Shadowlands Blacksmithing") >= 50 |or |only if default
'|complete skill("Shadowlands Blacksmithing") >= 55 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Shadowlands Blacksmithing") >= 60 |or |only if LightforgedDraenei
step
Open Your Blacksmithing Crafting Panel:
_<Create 5 Crafter's Mark Is>_
Reach Skill 50 in Shadowlands Blacksmithing |skill Shadowlands Blacksmithing,50 |goto 40.52,31.94 |or |only if default
Reach Skill 55 in Shadowlands Blacksmithing |skill Shadowlands Blacksmithing,55 |goto 40.52,31.94 |or |only if DarkIronDwarf or KulTiran
Reach Skill 60 in Shadowlands Blacksmithing |skill Shadowlands Blacksmithing,60 |goto 40.52,31.94 |or |only if LightforgedDraenei
step
talk Smith Au'berk##156666
Train Shadowghast Ingot |learn Shadowghast Ingot##307611 |goto 40.50,31.48
stickystart "Collect_Sinvyr_Ore_60"
stickystart "Collect_Phaedrum_Ore_60"
stickystart "Collect_Oxxein_Ore_60"
step
collect 189 Solenium Ore##171829 |or
|tip Farm them with Mining or purchase them from the Auction House.
'|complete skill("Shadowlands Blacksmithing") >= 60 |or |only if default
'|complete skill("Shadowlands Blacksmithing") >= 65 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Shadowlands Blacksmithing") >= 70 |or |only if LightforgedDraenei
step
label "Collect_Sinvyr_Ore_60"
collect 189 Sinvyr Ore##171832 |or
|tip Farm them with Mining or purchase them from the Auction House. |notinsticky
'|complete skill("Shadowlands Blacksmithing") >= 60 |or |only if default
'|complete skill("Shadowlands Blacksmithing") >= 65 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Shadowlands Blacksmithing") >= 70 |or |only if LightforgedDraenei
step
label "Collect_Phaedrum_Ore_60"
collect 189 Phaedrum Ore##171831 |or
|tip Farm them with Mining or purchase them from the Auction House. |notinsticky
'|complete skill("Shadowlands Blacksmithing") >= 60 |or |only if default
'|complete skill("Shadowlands Blacksmithing") >= 65 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Shadowlands Blacksmithing") >= 70 |or |only if LightforgedDraenei
step
label "Collect_Oxxein_Ore_60"
collect 189 Oxxein Ore##171830 |or
|tip Farm them with Mining or purchase them from the Auction House. |notinsticky
'|complete skill("Shadowlands Blacksmithing") >= 60 |or |only if default
'|complete skill("Shadowlands Blacksmithing") >= 65 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Shadowlands Blacksmithing") >= 70 |or |only if LightforgedDraenei
step
talk Distributor Au'til##156777
buy 756 Luminous Flux##180733 |goto 38.58,33.48 |or
'|complete skill("Shadowlands Blacksmithing") >= 60 |or |only if default
'|complete skill("Shadowlands Blacksmithing") >= 65 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Shadowlands Blacksmithing") >= 70 |or |only if LightforgedDraenei
step
Open Your Blacksmithing Crafting Panel:
_<Create 189 Shadowghast Ingots>_
|tip Save these, you will need them later.
collect 189 Shadowghast Ingot##171428 |goto 40.52,31.94 |or
'|complete skill("Shadowlands Blacksmithing") >= 61 |or |only if default
'|complete skill("Shadowlands Blacksmithing") >= 66 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Shadowlands Blacksmithing") >= 71 |or |only if LightforgedDraenei
step
talk Smith Au'berk##156666
Train Shadowsteel Waistguard |learn Shadowsteel Waistguard##322594 |goto 40.50,31.48
stickystart "Collect_Elethium_Ore_70"
step
collect 20 Laestrite Ore##171828 |or
|tip Farm them with Mining or purchase them from the Auction House.
'|complete skill("Shadowlands Blacksmithing") >= 70 |or |only if default
'|complete skill("Shadowlands Blacksmithing") >= 75 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Shadowlands Blacksmithing") >= 80 |or |only if LightforgedDraenei
step
label "Collect_Elethium_Ore_70"
collect 5 Elethium Ore##171833 |or
|tip Farm them with Mining or purchase them from the Auction House. |notinsticky
'|complete skill("Shadowlands Blacksmithing") >= 70 |or |only if default
'|complete skill("Shadowlands Blacksmithing") >= 75 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Shadowlands Blacksmithing") >= 80 |or |only if LightforgedDraenei
step
collect 35 Shadowghast Ingot##171428 |or
|tip You made these in a previous step.
'|complete skill("Shadowlands Blacksmithing") >= 70 |or |only if default
'|complete skill("Shadowlands Blacksmithing") >= 75 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Shadowlands Blacksmithing") >= 80 |or |only if LightforgedDraenei
step
talk Distributor Au'til##156777
buy 10 Luminous Flux##180733 |goto 38.58,33.48 |or
'|complete skill("Shadowlands Blacksmithing") >= 70 |or |only if default
'|complete skill("Shadowlands Blacksmithing") >= 75 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Shadowlands Blacksmithing") >= 80 |or |only if LightforgedDraenei
step
Open Your Blacksmithing Crafting Panel:
_<Create 5 Shadowsteel Waistguards>_
Reach Skill 70 in Shadowlands Blacksmithing |skill Shadowlands Blacksmithing,70 |goto 40.52,31.94 |or |only if default
Reach Skill 75 in Shadowlands Blacksmithing |skill Shadowlands Blacksmithing,75 |goto 40.52,31.94 |or |only if DarkIronDwarf or KulTiran
Reach Skill 80 in Shadowlands Blacksmithing |skill Shadowlands Blacksmithing,80 |goto 40.52,31.94 |or |only if LightforgedDraenei
step
talk Smith Au'berk##156666
Train Shadowsteel Gauntlets |learn Shadowsteel Gauntlets##322589 |goto 40.50,31.48
stickystart "Collect_Elethium_Ore_80"
step
collect 50 Laestrite Ore##171828 |or
|tip Farm them with Mining or purchase them from the Auction House.
'|complete skill("Shadowlands Blacksmithing") >= 80 |or |only if default
'|complete skill("Shadowlands Blacksmithing") >= 85 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Shadowlands Blacksmithing") >= 90 |or |only if LightforgedDraenei
step
label "Collect_Elethium_Ore_80"
collect 10 Elethium Ore##171833 |or
|tip Farm them with Mining or purchase them from the Auction House. |notinsticky
'|complete skill("Shadowlands Blacksmithing") >= 80 |or |only if default
'|complete skill("Shadowlands Blacksmithing") >= 85 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Shadowlands Blacksmithing") >= 90 |or |only if LightforgedDraenei
step
collect 70 Shadowghast Ingot##171428 |or
|tip You made these in a previous step.
'|complete skill("Shadowlands Blacksmithing") >= 80 |or |only if default
'|complete skill("Shadowlands Blacksmithing") >= 85 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Shadowlands Blacksmithing") >= 90 |or |only if LightforgedDraenei
step
talk Distributor Au'til##156777
buy 20 Luminous Flux##180733 |goto 38.58,33.48 |or
'|complete skill("Shadowlands Blacksmithing") >= 80 |or |only if default
'|complete skill("Shadowlands Blacksmithing") >= 85 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Shadowlands Blacksmithing") >= 90 |or |only if LightforgedDraenei
step
Open Your Blacksmithing Crafting Panel:
_<Create 10 Shadowsteel Gauntlets>_
|tip You may need to create a few more of these.
|tip Each additional gauntlet will require five Laestrite Ore, seven Shadowghast Ingots, one Elethium Ore and two Luminous Flux.
Reach Skill 80 in Shadowlands Blacksmithing |skill Shadowlands Blacksmithing,80 |goto 40.52,31.94 |or |only if default
Reach Skill 85 in Shadowlands Blacksmithing |skill Shadowlands Blacksmithing,85 |goto 40.52,31.94 |or |only if DarkIronDwarf or KulTiran
Reach Skill 90 in Shadowlands Blacksmithing |skill Shadowlands Blacksmithing,90 |goto 40.52,31.94 |or |only if LightforgedDraenei
step
talk Smith Au'berk##156666
Train Shadowsteel Breastplate |learn Shadowsteel Breastplate##322587 |goto 40.50,31.48
stickystart "Collect_Elethium_Ore_92"
step
collect 24 Laestrite Ore##171828 |or
|tip Farm them with Mining or purchase them from the Auction House.
'|complete skill("Shadowlands Blacksmithing") >= 92 |or |only if default
'|complete skill("Shadowlands Blacksmithing") >= 97 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Shadowlands Blacksmithing") >= 102 |or |only if LightforgedDraenei
step
label "Collect_Elethium_Ore_92"
collect 8 Elethium Ore##171833 |or
|tip Farm them with Mining or purchase them from the Auction House. |notinsticky
'|complete skill("Shadowlands Blacksmithing") >= 92 |or |only if default
'|complete skill("Shadowlands Blacksmithing") >= 97 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Shadowlands Blacksmithing") >= 102 |or |only if LightforgedDraenei
step
collect 48 Shadowghast Ingot##171428 |or
|tip You made these in a previous step.
'|complete skill("Shadowlands Blacksmithing") >= 92 |or |only if default
'|complete skill("Shadowlands Blacksmithing") >= 97 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Shadowlands Blacksmithing") >= 102 |or |only if LightforgedDraenei
step
talk Distributor Au'til##156777
buy 12 Luminous Flux##180733 |goto 38.58,33.48 |or
'|complete skill("Shadowlands Blacksmithing") >= 92 |or |only if default
'|complete skill("Shadowlands Blacksmithing") >= 97 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Shadowlands Blacksmithing") >= 102 |or |only if LightforgedDraenei
step
Open Your Blacksmithing Crafting Panel:
_<Create 4 Shadowsteel Breastplates>_
Reach Skill 92 in Shadowlands Blacksmithing |skill Shadowlands Blacksmithing,92 |goto 40.52,31.94 |or |only if default
Reach Skill 97 in Shadowlands Blacksmithing |skill Shadowlands Blacksmithing,97 |goto 40.52,31.94 |or |only if DarkIronDwarf or KulTiran
Reach Skill 102 in Shadowlands Blacksmithing |skill Shadowlands Blacksmithing,102 |goto 40.52,31.94 |or |only if LightforgedDraenei
step
talk Smith Au'berk##156666
Train Shadowsteel Greaves |learn Shadowsteel Greaves##322591 |goto 40.50,31.48
stickystart "Collect_Elethium_Ore_92"
step
collect 18 Laestrite Ore##171828 |or
|tip Farm them with Mining or purchase them from the Auction House.
'|complete skill("Shadowlands Blacksmithing") >= 100 |or |only if default
'|complete skill("Shadowlands Blacksmithing") >= 105 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Shadowlands Blacksmithing") >= 110 |or |only if LightforgedDraenei
step
label "Collect_Elethium_Ore_92"
collect 6 Elethium Ore##171833 |or
|tip Farm them with Mining or purchase them from the Auction House. |notinsticky
'|complete skill("Shadowlands Blacksmithing") >= 100 |or |only if default
'|complete skill("Shadowlands Blacksmithing") >= 105 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Shadowlands Blacksmithing") >= 110 |or |only if LightforgedDraenei
step
collect 36 Shadowghast Ingot##171428 |or
|tip You made these in a previous step.
'|complete skill("Shadowlands Blacksmithing") >= 100 |or |only if default
'|complete skill("Shadowlands Blacksmithing") >= 105 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Shadowlands Blacksmithing") >= 110 |or |only if LightforgedDraenei
step
talk Distributor Au'til##156777
buy 9 Luminous Flux##180733 |goto 38.58,33.48 |or
'|complete skill("Shadowlands Blacksmithing") >= 100 |or |only if default
'|complete skill("Shadowlands Blacksmithing") >= 105 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Shadowlands Blacksmithing") >= 110 |or |only if LightforgedDraenei
step
Open Your Blacksmithing Crafting Panel:
_<Create 3 Shadowsteel Greaves>_
Reach Skill 100 in Shadowlands Blacksmithing |skill Shadowlands Blacksmithing,100 |goto 40.52,31.94 |or |only if default
Reach Skill 105 in Shadowlands Blacksmithing |skill Shadowlands Blacksmithing,105 |goto 40.52,31.94 |or |only if DarkIronDwarf or KulTiran
Reach Skill 110 in Shadowlands Blacksmithing |skill Shadowlands Blacksmithing,110 |goto 40.52,31.94 |or |only if LightforgedDraenei
step
_Congratulations!_
You Reached 100 in Shadowlands Blacksmithing Skill. |only if default
You Reached 105 in Shadowlands Blacksmithing Skill. |only if DarkIronDwarf or KulTiran
You Reached 110 in Shadowlands Blacksmithing Skill. |only if LightforgedDraenei
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Leveling Guides\\Shadowlands Cooking 1-75",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Shadowlands Cooking profession from 1-75.",
startlevel=50.0,
condition_end=function() return skill('Shadowlands Cooking') >= 75 end,
condition_suggested=function() return skill('Shadowlands Cooking') > 0 and skill('Shadowlands Cooking') < 75 and level >= 50 end,
},[[
step
talk Chef Au'krut##156672
Train Cooking |skillmax Cooking,300 |goto Oribos/0 46.82,22.67
step
talk Chef Au'krut##156672
Train Shadowlands Cooking |skillmax Shadowlands Cooking,75 |goto 46.82,22.67
step
Click Here if You Would Like to Collect All Materials First |confirm |or
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Shadowlands Cooking |confirm |next "Begin_Profession_Leveling" |or
'|complete skill("Shadowlands Cooking") >= 75 |or |next "Begin_Profession_Leveling" |only if default
'|complete skill("Shadowlands Cooking") >= 90 |or |next "Begin_Profession_Leveling" |only if Pandaren
stickystart "Collect_Shadowy_Shank_Total"
stickystart "Collect_Phantasmal_Haunch_Total"
stickystart "Collect_Raw_Seraphic_Wing_Total"
stickystart "Collect_Iridescent_Amberjack_Total"
stickystart "Collect_Lost_Sole_Total"
stickystart "Collect_Silvergill_Pike_Total"
step
collect 66 Aethereal Meat##172052 |or
|tip Farm them from beasts Shadowlands or purchase them from the auction house.
|tip These totals are approximate.
|tip You may need slightly more or less than the indicated amount.
step
label "Collect_Shadowy_Shank_Total"
collect 72 Shadowy Shank##179315
|tip Farm them from beasts Shadowlands or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
step
label "Collect_Phantasmal_Haunch_Total"
collect 45 Phantasmal Haunch##172055
|tip Farm them from beasts Shadowlands or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
step
label "Collect_Raw_Seraphic_Wing_Total"
collect 66 Raw Seraphic Wing##172054
|tip Farm them from beasts Shadowlands or purchase them from the auction house.
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
step
label "Collect_Iridescent_Amberjack_Total"
collect 15 Iridescent Amberjack##173033
|tip Farm them with Fishing or purchase them from the auction house.
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
step
label "Collect_Lost_Sole_Total"
collect 33 Lost Sole##173032
|tip Farm them with Fishing or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
step
label "Collect_Silvergill_Pike_Total"
collect 18 Silvergill Pike##173034
|tip Farm them with Fishing or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
step
talk Distributor Au'van##168353
buy 50 Smuggled Azerothian Produce##172058 |goto 46.29,25.81
buy 46 Inconceivably Aged Vinegar##172057 |goto 46.29,25.81
buy 106 Rich Grazer Milk##172059 |goto 46.29,25.81
buy 96 Lusterwheat Flour##178786 |goto 46.29,25.81
buy 20 Medley of Transplanar Spices##172056 |goto 46.29,25.81
step
label "Begin_Profession_Leveling"
collect 21 Aethereal Meat##172052 |or
|tip Farm them from beasts Shadowlands or purchase them from the auction house.
'|complete skill("Shadowlands Cooking") >= 22 |or |only if default
'|complete skill("Shadowlands Cooking") >= 37 |or |only if Pandaren
step
talk Distributor Au'van##168353
buy 21 Smuggled Azerothian Produce##172058 |goto 46.29,25.81 |or 2
buy 21 Inconceivably Aged Vinegar##172057 |goto 46.29,25.81 |or 2
'|complete skill("Shadowlands Cooking") >= 22 |or |only if default
'|complete skill("Shadowlands Cooking") >= 37 |or |only if Pandaren
step
cast Cooking Fire##818
Open Your Cooking Crafting Panel:
_<Create 21 Pickled Meat Smoothies>_
|tip Save these, you will need them later.
|tip You may need to create a few more or less of these.
|tip Each additional one will require one each of Aethereal Meat, Smuggled Azerothian Produce, and Inconceivably Aged Vinegar.
Reach Skill 22 in Shadowlands Cooking |skill Shadowlands Cooking,22 |or |only if default
Reach Skill 37 in Shadowlands Cooking |skill Shadowlands Cooking,37 |or |only if Pandaren
step
talk Chef Au'krut##156672
Train Meaty Apple Dumplings |learn Meaty Apple Dumplings##308412 |goto 46.82,22.67
step
collect 42 Shadowy Shank##179315
|tip Farm them from beasts Shadowlands or purchase them from the auction house.
'|complete skill("Shadowlands Cooking") >= 36 |or |only if default
'|complete skill("Shadowlands Cooking") >= 51 |or |only if Pandaren
step
talk Distributor Au'van##168353
buy 14 Smuggled Azerothian Produce##172058 |goto 46.29,25.81 |or 3
buy 14 Rich Grazer Milk##172059 |goto 46.29,25.81 |or 3
buy 14 Lusterwheat Flour##178786 |goto 46.29,25.81 |or 3
'|complete skill("Shadowlands Cooking") >= 36 |or |only if default
'|complete skill("Shadowlands Cooking") >= 51 |or |only if Pandaren
step
cast Cooking Fire##818
Open Your Cooking Crafting Panel:
_<Create 14 Meaty Apple Dumplings>_
|tip You may need to create a few more or less of these.
|tip Each additional one will require three Shadowy Shank and one each of Smuggled Azerothian Produce, Lusterwheat Flour, and Rich Grazer Milk.
Reach Skill 36 in Shadowlands Cooking |skill Shadowlands Cooking,36 |or |only if default
Reach Skill 51 in Shadowlands Cooking |skill Shadowlands Cooking,51 |or |only if Pandaren
step
talk Chef Au'krut##156672
Train Banana Beef Pudding |learn Banana Beef Pudding##308415 |goto 46.82,22.67
stickystart "Collect_Phantasmal_Haunch_51"
step
collect 45 Aethereal Meat##172052 |or
|tip Farm them from beasts Shadowlands or purchase them from the auction house.
'|complete skill("Shadowlands Cooking") >= 51 |or |only if default
'|complete skill("Shadowlands Cooking") >= 66 |or |only if Pandaren
step
label "Collect_Phantasmal_Haunch_51"
collect 45 Phantasmal Haunch##172055
|tip Farm them from beasts Shadowlands or purchase them from the auction house. |notinsticky
'|complete skill("Shadowlands Cooking") >= 51 |or |only if default
'|complete skill("Shadowlands Cooking") >= 66 |or |only if Pandaren
step
talk Distributor Au'van##168353
buy 45 Rich Grazer Milk##172059 |goto 46.29,25.81 |or 2
buy 45 Lusterwheat Flour##178786 |goto 46.29,25.81 |or 2
'|complete skill("Shadowlands Cooking") >= 51 |or |only if default
'|complete skill("Shadowlands Cooking") >= 66 |or |only if Pandaren
step
cast Cooking Fire##818
Open Your Cooking Crafting Panel:
_<Create 15 Banana Beef Pudding>_
|tip You may need to create a few more or less of these.
|tip Each additional one will require three each of Aethereal Meat, Phantasmal Haunch, Lusterwheat Flour, and Rich Grazer Milk.
Reach Skill 51 in Shadowlands Cooking |skill Shadowlands Cooking,51 |or |only if default
Reach Skill 66 in Shadowlands Cooking |skill Shadowlands Cooking,66 |or |only if Pandaren
step
talk Chef Au'krut##156672
Train Steak a la Mode |learn Steak a la Mode##308426 |goto 46.82,22.67
stickystart "Collect_Raw_Seraphic_Wing_61"
step
collect 30 Shadowy Shank##179315
|tip Farm them from beasts Shadowlands or purchase them from the auction house.
'|complete skill("Shadowlands Cooking") >= 61 |or |only if default
'|complete skill("Shadowlands Cooking") >= 76 |or |only if Pandaren
step
label "Collect_Raw_Seraphic_Wing_61"
collect 30 Raw Seraphic Wing##172054
|tip Farm them from beasts Shadowlands or purchase them from the auction house.
'|complete skill("Shadowlands Cooking") >= 61 |or |only if default
'|complete skill("Shadowlands Cooking") >= 76 |or |only if Pandaren
step
talk Distributor Au'van##168353
buy 20 Medley of Transplanar Spices##172056 |goto 46.29,25.81 |or 3
buy 20 Inconceivably Aged Vinegar##172057 |goto 46.29,25.81 |or 3
buy 20 Rich Grazer Milk##172059 |goto 46.29,25.81 |or 3
'|complete skill("Shadowlands Cooking") >= 61 |or |only if default
'|complete skill("Shadowlands Cooking") >= 76 |or |only if Pandaren
step
cast Cooking Fire##818
Open Your Cooking Crafting Panel:
_<Create 10 Steak a la Mode>_
|tip You may need to create a few more or less of these.
|tip Each additional one will require three each of Shadowy Shank and Raw Seraphic Wing and two each of Medley of Transplanar Spices, Inconceivably Aged Vinegar, and Rich Grazer Milk.
Reach Skill 61 in Shadowlands Cooking |skill Shadowlands Cooking,61 |or |only if default
Reach Skill 76 in Shadowlands Cooking |skill Shadowlands Cooking,76 |or |only if Pandaren
step
talk Chef Au'krut##156672
Train Iridescent Ravioli with Apple Sauce |learn Iridescent Ravioli with Apple Sauce##308413 |goto 46.82,22.67
stickystart "Collect_Lost_Sole_66"
step
collect 15 Iridescent Amberjack##173033
|tip Farm them with Fishing or purchase them from the auction house.
'|complete skill("Shadowlands Cooking") >= 66 |or |only if default
'|complete skill("Shadowlands Cooking") >= 81 |or |only if Pandaren
step
label "Collect_Lost_Sole_66"
collect 15 Lost Sole##173032
|tip Farm them with Fishing or purchase them from the auction house. |notinsticky
'|complete skill("Shadowlands Cooking") >= 66 |or |only if default
'|complete skill("Shadowlands Cooking") >= 81 |or |only if Pandaren
step
talk Distributor Au'van##168353
buy 15 Smuggled Azerothian Produce##172058 |goto 46.29,25.81 |or 3
buy 10 Lusterwheat Flour##178786 |goto 46.29,25.81 |or 3
buy 5 Inconceivably Aged Vinegar##172057 |goto 46.29,25.81 |or 3
'|complete skill("Shadowlands Cooking") >= 66 |or |only if default
'|complete skill("Shadowlands Cooking") >= 81 |or |only if Pandaren
step
cast Cooking Fire##818
Open Your Cooking Crafting Panel:
_<Create 5 Iridescent Raviolis with Apple Sauce>_
|tip You may need to create a few more or less of these.
|tip Each additional one will require three each of Shadowy Shank, Smuggled Azerothian Produce, and Raw Seraphic Wing, two Lusterwheat Flour, and one Inconceivably Aged Vinegar.
Reach Skill 66 in Shadowlands Cooking |skill Shadowlands Cooking,66 |or |only if default
Reach Skill 81 in Shadowlands Cooking |skill Shadowlands Cooking,81 |or |only if Pandaren
step
talk Chef Au'krut##156672
Train Seraph Tenders |learn Seraph Tenders##308417 |goto 46.82,22.67
stickystart "Collect_Lost_Sole_75"
stickystart "Collect_Silvergill_Pike_75"
step
collect 36 Raw Seraphic Wing##172054
|tip Farm them from beasts Shadowlands or purchase them from the auction house.
'|complete skill("Shadowlands Cooking") >= 75 |or |only if default
'|complete skill("Shadowlands Cooking") >= 90 |or |only if Pandaren
step
label "Collect_Lost_Sole_75"
collect 18 Lost Sole##173032
|tip Farm them with Fishing or purchase them from the auction house.
'|complete skill("Shadowlands Cooking") >= 75 |or |only if default
'|complete skill("Shadowlands Cooking") >= 90 |or |only if Pandaren
step
label "Collect_Silvergill_Pike_75"
collect 18 Silvergill Pike##173034
|tip Farm them with Fishing or purchase them from the auction house. |notinsticky
'|complete skill("Shadowlands Cooking") >= 75 |or |only if default
'|complete skill("Shadowlands Cooking") >= 90 |or |only if Pandaren
step
talk Distributor Au'van##168353
buy 27 Rich Grazer Milk##172059 |goto 46.29,25.81 |or 2
buy 27 Lusterwheat Flour##178786 |goto 46.29,25.81 |or 2
'|complete skill("Shadowlands Cooking") >= 75 |or |only if default
'|complete skill("Shadowlands Cooking") >= 90 |or |only if Pandaren
step
cast Cooking Fire##818
Open Your Cooking Crafting Panel:
_<Create 9 Seraph Tenders>_
Reach Skill 75 in Shadowlands Cooking |skill Shadowlands Cooking,75 |or |only if default
Reach Skill 90 in Shadowlands Cooking |skill Shadowlands Cooking,90 |or |only if Pandaren
step
_Congratulations!_
You Reached 75 in Shadowlands Cooking Skill. |only if default
You Reached 90 in Shadowlands Cooking Skill. |only if Pandaren
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Aethereal Meat (Bastion)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Aethereal Meat for various Cooking recipes.",
startlevel=50.0,
},[[
step
map Bastion/0
path follow smart; loop on; ants curved; dist 30
path	59.20,45.79	59.36,44.21	59.39,42.90	58.77,42.46	58.17,43.36
path	57.88,44.32	57.63,44.46	56.72,44.34	56.08,44.33	55.69,43.48
path	54.89,43.15	54.58,43.82	55.06,44.40	55.66,45.39	56.20,45.79
path	56.70,45.79	57.13,45.51	57.49,45.95
kill Gilded Cloudstrider##159298+
|tip Follow the path, killing and looting along the way.
collect Aethereal Meat##172052 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Aethereal Meat (Revendreth)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Aethereal Meat for various Cooking recipes.",
startlevel=50.0,
},[[
step
map Revendreth/0
path follow smart; loop on; ants curved; dist 30
path	70.11,72.82	69.88,71.57	69.14,71.05	68.52,71.42	67.80,70.62
path	67.28,71.04	66.73,71.69	66.39,72.03	66.50,72.50	66.69,72.84
path	66.52,73.35	66.57,74.27	66.47,74.98	66.54,75.63	66.04,77.18
path	65.80,76.87	65.46,75.66	65.15,74.45	65.15,73.11	65.08,71.99
path	65.16,70.90	65.70,70.21	66.69,69.57	67.57,68.95	68.09,68.02
path	68.73,68.49	69.48,69.00	70.38,69.11	71.32,69.81	72.36,70.30
path	72.89,70.87	73.70,71.32	74.34,71.99	74.74,73.32	74.95,74.00
path	74.95,75.12	74.72,76.41	74.37,76.80	73.75,76.58	73.09,75.86
path	72.77,75.30	72.34,74.20	71.75,73.33	70.82,73.04
Kill Bonemauler enemies around this area
|tip Follow the path, killing and looting along the way.
collect Aethereal Meat##172052 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Creeping Crawler Meat (Maldraxxus)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Creeping Crawler Meat for various Cooking recipes.",
startlevel=50.0,
},[[
step
map Maldraxxus/0
path follow smart; loop on; ants curved; dist 20
path	30.39,59.77	29.94,59.51	29.57,59.67	29.19,60.44	28.63,60.77
path	28.32,60.83	28.01,60.34	27.76,60.03	27.52,60.22	27.28,60.54
path	26.83,60.45	26.50,60.35	26.11,60.29	25.73,60.08	25.43,60.00
path	25.62,58.95	25.52,58.49	25.46,57.71	25.70,57.02	26.09,56.65
path	26.68,56.74	27.13,57.31	27.49,57.53	28.15,57.59	28.49,57.88
path	28.93,57.96	29.42,58.14	29.67,59.06	30.22,58.79
Kill enemies around this area
|tip Follow the path, killing and looting along the way.
collect Creeping Crawler Meat##179314 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Creeping Crawler Meat (Ardenweald)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Creeping Crawler Meat for various Cooking recipes.",
startlevel=50.0,
},[[
step
map Ardenweald/0
path follow smart; loop on; ants curved; dist 20
path	47.77,27.91	47.33,27.73	47.12,26.92	47.30,26.28	47.18,25.61
path	47.23,25.11	47.31,24.45	47.05,23.89	47.34,23.27	47.47,22.68
path	47.37,22.40	47.01,22.11	47.24,21.39	47.68,21.23	48.34,21.71
path	48.91,22.28	48.96,23.04	48.46,23.32	47.98,23.88	47.92,24.37
path	48.27,25.03	48.50,25.62	48.31,26.60	48.06,27.31
Kill enemies around this area
|tip Follow the path, killing and looting Gorm Harriers and Mature Stellarwasps along the way.
collect Creeping Crawler Meat##179314 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Phantasmal Haunch (Ardenweald)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Phantasmal Haunch for various Cooking recipes.",
startlevel=50.0,
},[[
step
map Ardenweald/0
path follow smart; loop on; ants curved; dist 30
path	46.76,27.09	45.90,26.54	45.66,26.19	45.35,26.01	44.98,24.74
path	44.95,24.15	45.12,23.61	45.11,22.91	45.87,21.56	46.69,21.80
path	46.39,23.29	46.12,24.29	45.97,24.65	46.06,25.52	46.37,25.87
path	46.67,26.37
kill Gorm Ravener##158364+
|tip Follow the path, killing and looting along the way.
collect Phantasmal Haunch##172055 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Phantasmal Haunch (Maldraxxus)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Phantasmal Haunch for various Cooking recipes.",
startlevel=50.0,
},[[
step
map Maldraxxus/0
path follow smart; loop on; ants curved; dist 30
path	46.02,53.42	44.86,54.59	44.01,54.73	43.64,53.36	44.11,52.12
path	43.57,50.85	43.80,49.83	43.27,48.48	43.68,47.70	43.82,46.65
path	44.18,45.15	44.71,46.59	44.87,47.76	45.35,48.56	45.53,49.51
path	45.26,50.15	45.35,51.55	45.74,52.59
Kill enemies around this area
|tip Follow the path, killing and looting Bloodskin Tauraluss and Furious Alphahoof enemies along the way.
collect Phantasmal Haunch##172055 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Raw Seraphic Wing",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Raw Seraphic Wing for various Cooking recipes.",
startlevel=50.0,
},[[
step
map Bastion/0
path follow smart; loop on; ants curved; dist 30
path	52.91,79.69	53.60,79.16	54.14,78.74	54.58,78.68	55.10,78.40
path	55.42,77.18	55.82,76.46	56.11,75.86	55.76,75.40	55.24,75.08
path	54.72,75.55	54.38,76.44	53.90,77.03	53.44,77.27	52.91,77.20
path	52.62,77.81	52.13,78.90	52.08,79.77	52.14,80.69	52.05,81.51
path	52.62,81.55	52.86,80.83	52.84,80.06
Kill Etherwyrm enemies around this area
|tip Follow the path, killing and looting along the way.
collect Raw Seraphic Wing##172054 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Shadowy Shank (Ardenweald)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Shadowy Shank for various Cooking recipes.",
startlevel=50.0,
},[[
step
map Ardenweald/0
path follow smart; loop on; ants curved; dist 30
path	46.76,27.09	45.90,26.54	45.66,26.19	45.35,26.01	44.98,24.74
path	44.95,24.15	45.12,23.61	45.11,22.91	45.87,21.56	46.69,21.80
path	46.39,23.29	46.12,24.29	45.97,24.65	46.06,25.52	46.37,25.87
path	46.67,26.37
kill Gorm Ravener##158364+
|tip Follow the path, killing and looting along the way.
collect Shadowy Shank##179315 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Shadowy Shank (Maldraxxus)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Shadowy Shank for various Cooking recipes.",
startlevel=50.0,
},[[
step
map Maldraxxus/0
path follow smart; loop on; ants curved; dist 30
path	46.02,53.42	44.86,54.59	44.01,54.73	43.64,53.36	44.11,52.12
path	43.57,50.85	43.80,49.83	43.27,48.48	43.68,47.70	43.82,46.65
path	44.18,45.15	44.71,46.59	44.87,47.76	45.35,48.56	45.53,49.51
path	45.26,50.15	45.35,51.55	45.74,52.59
Kill enemies around this area
|tip Follow the path, killing and looting Bloodskin Tauraluss and Furious Alphahoof enemies along the way.
collect Shadowy Shank##179315 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Tenebrous Ribs (Maldraxxus)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Tenebrous Ribs for various Cooking recipes.",
startlevel=50.0,
},[[
step
map Maldraxxus/0
path follow smart; loop on; ants curved; dist 30
path	55.27,53.15	56.13,50.85	56.74,49.70	57.18,48.66	57.10,47.30
path	56.49,46.24	56.83,44.87	56.80,43.31	56.13,42.44	56.04,41.67
path	55.21,40.47	54.23,39.66	53.88,38.73	53.55,37.19	53.96,35.45
path	53.97,34.11	54.52,33.48	55.11,33.80	56.32,33.76	57.24,34.28
path	57.57,34.78	57.65,35.64	57.27,36.60	56.71,37.25	56.95,37.92
path	57.61,38.59	57.74,39.65	58.20,40.16	58.74,40.36	58.68,42.44
path	58.61,44.04	58.51,45.71	58.62,47.09	58.07,48.20	57.71,49.22
path	57.40,50.74	57.04,52.08	56.48,53.13	55.67,53.73
Kill Bloodtusk enemies around this area
collect Tenebrous Ribs##172053 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Tenebrous Ribs (Ardenweald)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Tenebrous Ribs for various Cooking recipes.",
startlevel=50.0,
},[[
step
map Ardenweald/0
path follow smart; loop on; ants curved; dist 25
path	50.01,48.77	50.10,47.59	50.31,46.48	50.92,45.91	50.58,44.94
path	50.68,44.22	51.26,44.09	51.69,44.58	52.07,44.55	52.17,43.61
path	52.47,43.19	52.95,43.50	53.25,43.90	53.80,43.82	54.36,42.68
path	54.11,41.83	54.22,41.27	54.58,41.35	54.96,41.37	55.70,41.24
path	56.18,41.41	56.26,41.96	55.71,43.09	55.77,44.23	56.63,44.46
path	57.10,44.56	57.31,43.63	57.08,42.56	56.91,42.08	57.37,41.44
path	57.36,40.69	57.34,39.81	57.49,38.85	57.79,38.43	57.84,37.46
path	57.99,36.82	58.52,36.64	58.95,37.57	59.05,38.75	58.95,39.79
path	58.92,40.98	58.62,42.03	58.28,42.53	58.14,43.32	58.39,43.88
path	58.81,44.17	59.63,44.33	60.23,44.39	60.82,44.70	60.45,45.68
path	59.82,45.55	59.22,45.32	58.57,45.55	58.14,46.26	57.28,46.25
path	56.63,45.66	55.94,45.83	55.22,45.47	54.41,45.78	53.60,45.96
path	53.05,45.39	52.47,45.27	52.04,45.45	51.69,45.97	51.46,46.71
path	51.13,47.20	50.99,47.94	51.01,49.20	50.52,50.03	50.07,49.36
Kill Runestag and Runedeer enemies around this area
collect Tenebrous Ribs##172053 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Iridescent Amberjack",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Iridescent Amberjack for various Cooking recipes.",
startlevel=50.0,
},[[
step
cast Fishing##131474
use Iridescent Amberjack Bait##173039
|tip These have a chance to drop while fishing in Ardenweald.
|tip Use them to inscrease the chances of catching Iridescent Amberjacks.
collect Iridescent Amberjack##173033 |n |goto Ardenweald/0 49.36,52.98
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Lost Sole",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Lost Sole for various Cooking recipes.",
startlevel=50.0,
},[[
step
cast Fishing##131474
use Lost Sole Bait##173038
|tip These have a chance to drop while fishing in Ardenweald.
|tip Use them to inscrease the chances of catching Lost Soles.
collect Lost Sole##173032 |n |goto Ardenweald/0 49.36,52.98
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Pocked Bonefish",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Pocked Bonefish for various Cooking recipes.",
startlevel=50.0,
},[[
step
cast Fishing##131474
use Pocked Bonefish Bait##173041
|tip These have a chance to drop while fishing in Maldraxxus.
|tip Use them to inscrease the chances of catching Pocked Bonefish.
collect Pocked Bonefish##173035 |n |goto Maldraxxus/0 49.57,54.10
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Silvergill Pike",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Silvergill Pike for various Cooking recipes.",
startlevel=50.0,
},[[
step
cast Fishing##131474
use Silvergill Pike Bait##173040
|tip These have a chance to drop while fishing in Bastion.
|tip Use them to inscrease the chances of catching Silvergill Pikes.
collect Silvergill Pike##173034 |n |goto Bastion/0 49.29,64.34
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Spinefin Piranha",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Spinefin Piranha for various Cooking recipes.",
startlevel=50.0,
},[[
step
cast Fishing##131474
use Spinefin Piranha Bait##173042
|tip These have a chance to drop while fishing in Revendreth.
|tip Use them to inscrease the chances of catching Spinefin Piranhas.
collect Spinefin Piranha##173036 |n |goto Revendreth/0 51.31,63.83
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Elysian Thade",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Elysian Thade for various Cooking recipes.",
startlevel=50.0,
},[[
step
cast Fishing##131474
use Elysian Thade Bait##173043
|tip These have a chance to drop while fishing in Ardenweald.
|tip Use them to inscrease the chances of catching Elysian Thades.
collect Elysian Thade##173037 |n |goto Ardenweald/0 49.36,52.98
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Enchanting\\Leveling Guides\\Shadowlands Enchanting 1-115",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Shadowlands Enchanting profession from 1-115.",
startlevel=50.0,
condition_end=function() return skill('Shadowlands Enchanting') >= 115 end,
condition_suggested=function() return skill('Shadowlands Enchanting') > 0 and skill('Shadowlands Enchanting') < 115 and level >= 50 end,
},[[
step
talk Imbuer Au'vresh##156683
Train Enchanting |skillmax Enchanting,300 |goto Oribos/0 48.39,29.43
step
talk Imbuer Au'vresh##156683
Train Shadowlands Enchanting |skillmax Shadowlands Enchanting,125 |goto 48.39,29.43
step
Create an Enchanting Rod |complete itemcount(164766,22462,16207,6218,52723,22463,22461,11130,6339,44452,11145,109253,114943) >= 1 |or
|tip You can use the "Enchanting 1-300" profession guide to create a Runed Copper Rod.
|tip You can also purchase a "Gnomish Army Knife" or "Utimate Gnomish Army Knife" from the auction house.
'|complete skill("Shadowlands Enchanting") >= 115 |or |next "Begin_Profession_Leveling" |only if default
'|complete skill("Shadowlands Enchanting") >= 120 |or |next "Begin_Profession_Leveling" |only if KulTiran
'|complete skill("Shadowlands Enchanting") >= 125 |or |next "Begin_Profession_Leveling" |only if BloodElf
step
Click Here if You Would Like to Collect All Materials First |confirm |or
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Shadowlands Enchanting |confirm |next "Begin_Profession_Leveling" |or
'|complete skill("Shadowlands Enchanting") >= 115 |or |next "Begin_Profession_Leveling" |only if default
'|complete skill("Shadowlands Enchanting") >= 120 |or |next "Begin_Profession_Leveling" |only if KulTiran
'|complete skill("Shadowlands Enchanting") >= 125 |or |next "Begin_Profession_Leveling" |only if BloodElf
stickystart "Disenchanting_Skillup_Notice"
stickystart "Collect_Eternal_Crystal_Total"
stickystart "Collect_Sacred_Shard_Total"
step
collect 238 Soul Dust##172230
|tip Disenchant them from uncommon (green) items with Enchanting or purchase them from the Auction House.
|tip These totals are approximate.
|tip You may need slightly more or less than the indicated amount.
step
label "Collect_Eternal_Crystal_Total"
collect 33 Eternal Crystal##172232
|tip Disenchant them from epic (purple) items with Enchanting or purchase them from the Auction House.
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
step
label "Collect_Sacred_Shard_Total"
collect 140 Sacred Shard##172231
|tip Disenchant them from rare (blue) items with Enchanting or purchase them from the Auction House.
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
step
talk Distributor Au'resh##156694
buy 111 Enchanting Vellum##38682 |goto 47.55,29.05
step
label "Begin_Profession_Leveling"
collect 30 Soul Dust##172230 |or
|tip Disenchant them from uncommon (green) items with Enchanting or purchase them from the Auction House.
'|complete skill("Shadowlands Enchanting") >= 10 |or |only if default
'|complete skill("Shadowlands Enchanting") >= 15 |or |only if KulTiran
'|complete skill("Shadowlands Enchanting") >= 20 |or |only if BloodElf
step
talk Distributor Au'resh##156694
buy 10 Enchanting Vellum##38682 |goto 47.55,29.05 |or
'|complete skill("Shadowlands Enchanting") >= 10 |or |only if default
'|complete skill("Shadowlands Enchanting") >= 15 |or |only if KulTiran
'|complete skill("Shadowlands Enchanting") >= 20 |or |only if BloodElf
step
Open Your Enchanting Crafting Panel:
_<Create 10 Shadowlands Gatherings>_
|tip Click the "Enchant" button in your enchanting window and click an Enchanting Vellum in your inventory to place the enchant on a scroll that can be sold.
Reach Skill 10 in Shadowlands Enchanting |skill Shadowlands Enchanting,10 |only if default
Reach Skill 15 in Shadowlands Enchanting |skill Shadowlands Enchanting,15 |only if KulTiran
Reach Skill 20 in Shadowlands Enchanting |skill Shadowlands Enchanting,20 |only if BloodElf
step
talk Imbuer Au'vresh##156683
Train Illuminated Soul |learn Illuminated Soul##309608 |goto 48.39,29.43
step
collect 33 Soul Dust##172230 |or
|tip Disenchant them from uncommon (green) items with Enchanting or purchase them from the Auction House.
'|complete skill("Shadowlands Enchanting") >= 21 |or |only if default
'|complete skill("Shadowlands Enchanting") >= 26 |or |only if KulTiran
'|complete skill("Shadowlands Enchanting") >= 31 |or |only if BloodElf
step
talk Distributor Au'resh##156694
buy 11 Enchanting Vellum##38682 |goto 47.55,29.05 |or
'|complete skill("Shadowlands Enchanting") >= 21 |or |only if default
'|complete skill("Shadowlands Enchanting") >= 26 |or |only if KulTiran
'|complete skill("Shadowlands Enchanting") >= 31 |or |only if BloodElf
step
Open Your Enchanting Crafting Panel:
_<Create 11 Illuminated Soul>_
|tip Click the "Enchant" button in your enchanting window and click an Enchanting Vellum in your inventory to place the enchant on a scroll that can be sold.
|tip You can create Strength of Soul or Agile Soulwalker if you prefer.
|tip You may need to create a few more of these.
|tip Each additional enchant will require three Soul Dust and one Enchanting Vellum.
Reach Skill 21 in Shadowlands Enchanting |skill Shadowlands Enchanting,21 |only if default
Reach Skill 26 in Shadowlands Enchanting |skill Shadowlands Enchanting,26 |only if KulTiran
Reach Skill 31 in Shadowlands Enchanting |skill Shadowlands Enchanting,31 |only if BloodElf
step
talk Imbuer Au'vresh##156683
Train Celestial Guidance |learn Celestial Guidance##309627 |goto 48.39,29.43
stickystart "Collect_Sacred_Shard_31"
step
collect 25 Soul Dust##172230 |or
|tip Disenchant them from uncommon (green) items with Enchanting or purchase them from the Auction House.
'|complete skill("Shadowlands Enchanting") >= 31 |or |only if default
'|complete skill("Shadowlands Enchanting") >= 36 |or |only if KulTiran
'|complete skill("Shadowlands Enchanting") >= 41 |or |only if BloodElf
step
label "Collect_Sacred_Shard_31"
collect 10 Sacred Shard##172231 |or
|tip Disenchant them from rare (blue) items with Enchanting or purchase them from the Auction House.
'|complete skill("Shadowlands Enchanting") >= 31 |or |only if default
'|complete skill("Shadowlands Enchanting") >= 36 |or |only if KulTiran
'|complete skill("Shadowlands Enchanting") >= 41 |or |only if BloodElf
step
talk Distributor Au'resh##156694
buy 5 Enchanting Vellum##38682 |goto 47.55,29.05 |or
'|complete skill("Shadowlands Enchanting") >= 31 |or |only if default
'|complete skill("Shadowlands Enchanting") >= 36 |or |only if KulTiran
'|complete skill("Shadowlands Enchanting") >= 41 |or |only if BloodElf
step
Open Your Enchanting Crafting Panel:
_<Create 5 Celestial Guidances>_
|tip Click the "Enchant" button in your enchanting window and click an Enchanting Vellum in your inventory to place the enchant on a scroll that can be sold.
Reach Skill 31 in Shadowlands Enchanting |skill Shadowlands Enchanting,31 |only if default
Reach Skill 36 in Shadowlands Enchanting |skill Shadowlands Enchanting,36 |only if KulTiran
Reach Skill 41 in Shadowlands Enchanting |skill Shadowlands Enchanting,41 |only if BloodElf
step
label "Disenchanting_Skillup_Notice"
You can reach skill level 25 by disenchanting items
|tip This slightly reduces the overall material cost required.
|tip Soul Dust and Sacred Shard collect totals will vary slightly if you Disenchant your own materials.
|only if skill("Shadowlands Enchanting") < 25 and default
|only if skill("Shadowlands Enchanting") < 30 and KulTiran
|only if skill("Shadowlands Enchanting") < 35 and BloodElf
step
talk Imbuer Au'vresh##156683
Train Sacred Stats |learn Sacred Stats##323762 |goto 48.39,29.43
step
collect 40 Soul Dust##172230 |or
|tip Disenchant them from uncommon (green) items with Enchanting or purchase them from the Auction House.
'|complete skill("Shadowlands Enchanting") >= 41 |or |only if default
'|complete skill("Shadowlands Enchanting") >= 46 |or |only if KulTiran
'|complete skill("Shadowlands Enchanting") >= 51 |or |only if BloodElf
step
talk Distributor Au'resh##156694
buy 10 Enchanting Vellum##38682 |goto 47.55,29.05 |or
'|complete skill("Shadowlands Enchanting") >= 41 |or |only if default
'|complete skill("Shadowlands Enchanting") >= 46 |or |only if KulTiran
'|complete skill("Shadowlands Enchanting") >= 51 |or |only if BloodElf
step
Open Your Enchanting Crafting Panel:
_<Create 10 Sacred Stats>_
|tip Click the "Enchant" button in your enchanting window and click an Enchanting Vellum in your inventory to place the enchant on a scroll that can be sold.
|tip You may need to create a few more of these.
|tip Each additional enchant will require four Soul Dust and one Enchanting Vellum.
Reach Skill 41 in Shadowlands Enchanting |skill Shadowlands Enchanting,41 |only if default
Reach Skill 46 in Shadowlands Enchanting |skill Shadowlands Enchanting,46 |only if KulTiran
Reach Skill 51 in Shadowlands Enchanting |skill Shadowlands Enchanting,51 |only if BloodElf
step
talk Imbuer Au'vresh##156683
Train Bargain of Critical Strike |learn Bargain of Critical Strike##309612 |goto 48.39,29.43
stickystart "Collect_Sacred_Shard_45"
step
collect 10 Soul Dust##172230 |or
|tip Disenchant them from uncommon (green) items with Enchanting or purchase them from the Auction House.
'|complete skill("Shadowlands Enchanting") >= 45 |or |only if default
'|complete skill("Shadowlands Enchanting") >= 50 |or |only if KulTiran
'|complete skill("Shadowlands Enchanting") >= 55 |or |only if BloodElf
step
label "Collect_Sacred_Shard_45"
collect 5 Sacred Shard##172231 |or
|tip Disenchant them from rare (blue) items with Enchanting or purchase them from the Auction House.
'|complete skill("Shadowlands Enchanting") >= 45 |or |only if default
'|complete skill("Shadowlands Enchanting") >= 50 |or |only if KulTiran
'|complete skill("Shadowlands Enchanting") >= 55 |or |only if BloodElf
step
talk Distributor Au'resh##156694
buy 5 Enchanting Vellum##38682 |goto 47.55,29.05 |or
'|complete skill("Shadowlands Enchanting") >= 45 |or |only if default
'|complete skill("Shadowlands Enchanting") >= 50 |or |only if KulTiran
'|complete skill("Shadowlands Enchanting") >= 55 |or |only if BloodElf
step
Open Your Enchanting Crafting Panel:
_<Create 5 Bargains of Critical Strike>_
|tip Click the "Enchant" button in your enchanting window and click an Enchanting Vellum in your inventory to place the enchant on a scroll that can be sold.
Reach Skill 45 in Shadowlands Enchanting |skill Shadowlands Enchanting,45 |only if default
Reach Skill 50 in Shadowlands Enchanting |skill Shadowlands Enchanting,50 |only if KulTiran
Reach Skill 55 in Shadowlands Enchanting |skill Shadowlands Enchanting,55 |only if BloodElf
step
talk Imbuer Au'vresh##156683
Train Bargain of Haste |learn Bargain of Haste##309613 |goto 48.39,29.43
stickystart "Collect_Sacred_Shard_50"
step
collect 10 Soul Dust##172230 |or
|tip Disenchant them from uncommon (green) items with Enchanting or purchase them from the Auction House.
'|complete skill("Shadowlands Enchanting") >= 50 |or |only if default
'|complete skill("Shadowlands Enchanting") >= 55 |or |only if KulTiran
'|complete skill("Shadowlands Enchanting") >= 60 |or |only if BloodElf
step
label "Collect_Sacred_Shard_50"
collect 5 Sacred Shard##172231 |or
|tip Disenchant them from rare (blue) items with Enchanting or purchase them from the Auction House.
'|complete skill("Shadowlands Enchanting") >= 50 |or |only if default
'|complete skill("Shadowlands Enchanting") >= 55 |or |only if KulTiran
'|complete skill("Shadowlands Enchanting") >= 60 |or |only if BloodElf
step
talk Distributor Au'resh##156694
buy 5 Enchanting Vellum##38682 |goto 47.55,29.05 |or
'|complete skill("Shadowlands Enchanting") >= 50 |or |only if default
'|complete skill("Shadowlands Enchanting") >= 55 |or |only if KulTiran
'|complete skill("Shadowlands Enchanting") >= 60 |or |only if BloodElf
step
Open Your Enchanting Crafting Panel:
_<Create 5 Bargains of Haste>_
|tip Click the "Enchant" button in your enchanting window and click an Enchanting Vellum in your inventory to place the enchant on a scroll that can be sold.
Reach Skill 50 in Shadowlands Enchanting |skill Shadowlands Enchanting,50 |only if default
Reach Skill 55 in Shadowlands Enchanting |skill Shadowlands Enchanting,55 |only if KulTiran
Reach Skill 60 in Shadowlands Enchanting |skill Shadowlands Enchanting,60 |only if BloodElf
step
talk Imbuer Au'vresh##156683
Train Bargain of Mastery |learn Bargain of Mastery##309614 |goto 48.39,29.43
stickystart "Collect_Sacred_Shard_55"
step
collect 10 Soul Dust##172230 |or
|tip Disenchant them from uncommon (green) items with Enchanting or purchase them from the Auction House.
'|complete skill("Shadowlands Enchanting") >= 55 |or |only if default
'|complete skill("Shadowlands Enchanting") >= 60 |or |only if KulTiran
'|complete skill("Shadowlands Enchanting") >= 65 |or |only if BloodElf
step
label "Collect_Sacred_Shard_55"
collect 5 Sacred Shard##172231 |or
|tip Disenchant them from rare (blue) items with Enchanting or purchase them from the Auction House.
'|complete skill("Shadowlands Enchanting") >= 55 |or |only if default
'|complete skill("Shadowlands Enchanting") >= 60 |or |only if KulTiran
'|complete skill("Shadowlands Enchanting") >= 65 |or |only if BloodElf
step
talk Distributor Au'resh##156694
buy 5 Enchanting Vellum##38682 |goto 47.55,29.05 |or
'|complete skill("Shadowlands Enchanting") >= 55 |or |only if default
'|complete skill("Shadowlands Enchanting") >= 60 |or |only if KulTiran
'|complete skill("Shadowlands Enchanting") >= 65 |or |only if BloodElf
step
Open Your Enchanting Crafting Panel:
_<Create 5 Bargains of Mastery>_
|tip Click the "Enchant" button in your enchanting window and click an Enchanting Vellum in your inventory to place the enchant on a scroll that can be sold.
Reach Skill 55 in Shadowlands Enchanting |skill Shadowlands Enchanting,55 |only if default
Reach Skill 60 in Shadowlands Enchanting |skill Shadowlands Enchanting,60 |only if KulTiran
Reach Skill 65 in Shadowlands Enchanting |skill Shadowlands Enchanting,65 |only if BloodElf
step
talk Imbuer Au'vresh##156683
Train Soul Vitality |learn Soul Vitality##323755 |goto 48.39,29.43
step
collect 80 Soul Dust##172230 |or
|tip Disenchant them from uncommon (green) items with Enchanting or purchase them from the Auction House.
'|complete skill("Shadowlands Enchanting") >= 70 |or |only if default
'|complete skill("Shadowlands Enchanting") >= 75 |or |only if KulTiran
'|complete skill("Shadowlands Enchanting") >= 80 |or |only if BloodElf
step
talk Distributor Au'resh##156694
buy 20 Enchanting Vellum##38682 |goto 47.55,29.05 |or
'|complete skill("Shadowlands Enchanting") >= 70 |or |only if default
'|complete skill("Shadowlands Enchanting") >= 75 |or |only if KulTiran
'|complete skill("Shadowlands Enchanting") >= 80 |or |only if BloodElf
step
Open Your Enchanting Crafting Panel:
_<Create 20 Soul Vitality>_
|tip Click the "Enchant" button in your enchanting window and click an Enchanting Vellum in your inventory to place the enchant on a scroll that can be sold.
|tip You may need to create a few more of these.
|tip Each additional enchant will require four Soul Dust and one Enchanting Vellum.
Reach Skill 70 in Shadowlands Enchanting |skill Shadowlands Enchanting,70 |only if default
Reach Skill 75 in Shadowlands Enchanting |skill Shadowlands Enchanting,75 |only if KulTiran
Reach Skill 80 in Shadowlands Enchanting |skill Shadowlands Enchanting,80 |only if BloodElf
step
talk Imbuer Au'vresh##156683
Train Eternal Insight |learn Eternal Insight##342316 |goto 48.39,29.43
stickystart "Collect_Sacred_Shard_75"
step
collect 5 Eternal Crystal##172232 |or
|tip Disenchant them from epic (purple) items with Enchanting or purchase them from the Auction House.
'|complete skill("Shadowlands Enchanting") >= 75 |or |only if default
'|complete skill("Shadowlands Enchanting") >= 80 |or |only if KulTiran
'|complete skill("Shadowlands Enchanting") >= 85 |or |only if BloodElf
step
label "Collect_Sacred_Shard_75"
collect 10 Sacred Shard##172231 |or
|tip Disenchant them from rare (blue) items with Enchanting or purchase them from the Auction House.
'|complete skill("Shadowlands Enchanting") >= 75 |or |only if default
'|complete skill("Shadowlands Enchanting") >= 80 |or |only if KulTiran
'|complete skill("Shadowlands Enchanting") >= 85 |or |only if BloodElf
step
talk Distributor Au'resh##156694
buy 5 Enchanting Vellum##38682 |goto 47.55,29.05 |or
'|complete skill("Shadowlands Enchanting") >= 75 |or |only if default
'|complete skill("Shadowlands Enchanting") >= 80 |or |only if KulTiran
'|complete skill("Shadowlands Enchanting") >= 85 |or |only if BloodElf
step
Open Your Enchanting Crafting Panel:
_<Create 5 Eternal Insights>_
|tip Click the "Enchant" button in your enchanting window and click an Enchanting Vellum in your inventory to place the enchant on a scroll that can be sold.
|tip You can create Eternal Bulwark if you prefer.
|tip You may need to create a few more of these.
|tip Each additional enchant will require one each of Eternal Crystal and Enchanting Vellum and two Sacred Shards.
Reach Skill 75 in Shadowlands Enchanting |skill Shadowlands Enchanting,75 |only if default
Reach Skill 80 in Shadowlands Enchanting |skill Shadowlands Enchanting,80 |only if KulTiran
Reach Skill 85 in Shadowlands Enchanting |skill Shadowlands Enchanting,85 |only if BloodElf
step
talk Imbuer Au'vresh##156683
Train Eternal Agility |learn Eternal Agility##309534 |goto 48.39,29.43
stickystart "Collect_Sacred_Shard_80"
step
collect 5 Eternal Crystal##172232 |or
|tip Disenchant them from epic (purple) items with Enchanting or purchase them from the Auction House.
'|complete skill("Shadowlands Enchanting") >= 80 |or |only if default
'|complete skill("Shadowlands Enchanting") >= 85 |or |only if KulTiran
'|complete skill("Shadowlands Enchanting") >= 90 |or |only if BloodElf
step
label "Collect_Sacred_Shard_80"
collect 10 Sacred Shard##172231 |or
|tip Disenchant them from rare (blue) items with Enchanting or purchase them from the Auction House.
'|complete skill("Shadowlands Enchanting") >= 80 |or |only if default
'|complete skill("Shadowlands Enchanting") >= 85 |or |only if KulTiran
'|complete skill("Shadowlands Enchanting") >= 90 |or |only if BloodElf
step
talk Distributor Au'resh##156694
buy 5 Enchanting Vellum##38682 |goto 47.55,29.05 |or
'|complete skill("Shadowlands Enchanting") >= 80 |or |only if default
'|complete skill("Shadowlands Enchanting") >= 85 |or |only if KulTiran
'|complete skill("Shadowlands Enchanting") >= 90 |or |only if BloodElf
step
Open Your Enchanting Crafting Panel:
_<Create 5 Eternal Agility>_
|tip Click the "Enchant" button in your enchanting window and click an Enchanting Vellum in your inventory to place the enchant on a scroll that can be sold.
|tip You can create Eternal Intellect or Eternal Strength if you prefer.
Reach Skill 80 in Shadowlands Enchanting |skill Shadowlands Enchanting,80 |only if default
Reach Skill 85 in Shadowlands Enchanting |skill Shadowlands Enchanting,85 |only if KulTiran
Reach Skill 90 in Shadowlands Enchanting |skill Shadowlands Enchanting,90 |only if BloodElf
step
talk Imbuer Au'vresh##156683
Train Tenet of Critical Strike |learn Tenet of Critical Strike##309616 |goto 48.39,29.43
step
collect 54 Sacred Shard##172231 |or
|tip Disenchant them from rare (blue) items with Enchanting or purchase them from the Auction House.
'|complete skill("Shadowlands Enchanting") >= 95 |or |only if default
'|complete skill("Shadowlands Enchanting") >= 100 |or |only if KulTiran
'|complete skill("Shadowlands Enchanting") >= 105 |or |only if BloodElf
step
talk Distributor Au'resh##156694
buy 5 Enchanting Vellum##38682 |goto 47.55,29.05 |or
'|complete skill("Shadowlands Enchanting") >= 95 |or |only if default
'|complete skill("Shadowlands Enchanting") >= 100 |or |only if KulTiran
'|complete skill("Shadowlands Enchanting") >= 105 |or |only if BloodElf
step
Open Your Enchanting Crafting Panel:
_<Create 18 Tenets of Critical Strike>_
|tip Click the "Enchant" button in your enchanting window and click an Enchanting Vellum in your inventory to place the enchant on a scroll that can be sold.
|tip You can create Tenets of Haste, Versatility, or Mastery if you prefer.
|tip You may need to create a few more of these.
|tip Each additional enchant will require three Sacred Shards and one Enchanting Vellum.
Reach Skill 95 in Shadowlands Enchanting |skill Shadowlands Enchanting,95 |only if default
Reach Skill 100 in Shadowlands Enchanting |skill Shadowlands Enchanting,100 |only if KulTiran
Reach Skill 105 in Shadowlands Enchanting |skill Shadowlands Enchanting,105 |only if BloodElf
step
talk Imbuer Au'vresh##156683
Train Eternal Stats |learn Eternal Stats##324773 |goto 48.39,29.43
stickystart "Collect_Sacred_Shard_100"
step
collect 5 Eternal Crystal##172232 |or
|tip Disenchant them from epic (purple) items with Enchanting or purchase them from the Auction House.
'|complete skill("Shadowlands Enchanting") >= 100 |or |only if default
'|complete skill("Shadowlands Enchanting") >= 105 |or |only if KulTiran
'|complete skill("Shadowlands Enchanting") >= 110 |or |only if BloodElf
step
label "Collect_Sacred_Shard_100"
collect 10 Sacred Shard##172231 |or
|tip Disenchant them from rare (blue) items with Enchanting or purchase them from the Auction House.
'|complete skill("Shadowlands Enchanting") >= 100 |or |only if default
'|complete skill("Shadowlands Enchanting") >= 105 |or |only if KulTiran
'|complete skill("Shadowlands Enchanting") >= 110 |or |only if BloodElf
step
talk Distributor Au'resh##156694
buy 5 Enchanting Vellum##38682 |goto 47.55,29.05 |or
'|complete skill("Shadowlands Enchanting") >= 100 |or |only if default
'|complete skill("Shadowlands Enchanting") >= 105 |or |only if KulTiran
'|complete skill("Shadowlands Enchanting") >= 110 |or |only if BloodElf
step
Open Your Enchanting Crafting Panel:
_<Create 5 Eternal Stats>_
|tip Click the "Enchant" button in your enchanting window and click an Enchanting Vellum in your inventory to place the enchant on a scroll that can be sold.
|tip You can create Eternal Skirmish or Eternal Bounds if you prefer.
Reach Skill 100 in Shadowlands Enchanting |skill Shadowlands Enchanting,100 |only if default
Reach Skill 105 in Shadowlands Enchanting |skill Shadowlands Enchanting,105 |only if KulTiran
Reach Skill 110 in Shadowlands Enchanting |skill Shadowlands Enchanting,110 |only if BloodElf
step
talk Imbuer Au'vresh##156683
Train Eternal Grace |learn Eternal Grace##309621 |goto 48.39,29.43
stickystart "Collect_Sacred_Shard_110"
step
collect 10 Eternal Crystal##172232 |or
|tip Disenchant them from epic (purple) items with Enchanting or purchase them from the Auction House.
'|complete skill("Shadowlands Enchanting") >= 110 |or |only if default
'|complete skill("Shadowlands Enchanting") >= 115 |or |only if KulTiran
'|complete skill("Shadowlands Enchanting") >= 120 |or |only if BloodElf
step
label "Collect_Sacred_Shard_110"
collect 15 Sacred Shard##172231 |or
|tip Disenchant them from rare (blue) items with Enchanting or purchase them from the Auction House.
'|complete skill("Shadowlands Enchanting") >= 110 |or |only if default
'|complete skill("Shadowlands Enchanting") >= 115 |or |only if KulTiran
'|complete skill("Shadowlands Enchanting") >= 120 |or |only if BloodElf
step
talk Distributor Au'resh##156694
buy 5 Enchanting Vellum##38682 |goto 47.55,29.05 |or
'|complete skill("Shadowlands Enchanting") >= 110 |or |only if default
'|complete skill("Shadowlands Enchanting") >= 115 |or |only if KulTiran
'|complete skill("Shadowlands Enchanting") >= 120 |or |only if BloodElf
step
Open Your Enchanting Crafting Panel:
_<Create 5 Eternal Graces>_
|tip Click the "Enchant" button in your enchanting window and click an Enchanting Vellum in your inventory to place the enchant on a scroll that can be sold.
|tip You can create Lightless Force if you prefer.
Reach Skill 110 in Shadowlands Enchanting |skill Shadowlands Enchanting,110 |only if default
Reach Skill 115 in Shadowlands Enchanting |skill Shadowlands Enchanting,115 |only if KulTiran
Reach Skill 120 in Shadowlands Enchanting |skill Shadowlands Enchanting,120 |only if BloodElf
stickystart "Collect_Sacred_Shard_115"
step
collect 8 Eternal Crystal##172232 |or
|tip Disenchant them from epic (purple) items with Enchanting or purchase them from the Auction House.
'|complete skill("Shadowlands Enchanting") >= 115 |or |only if default
'|complete skill("Shadowlands Enchanting") >= 120 |or |only if KulTiran
'|complete skill("Shadowlands Enchanting") >= 125 |or |only if BloodElf
step
label "Collect_Sacred_Shard_115"
collect 16 Sacred Shard##172231 |or
|tip Disenchant them from rare (blue) items with Enchanting or purchase them from the Auction House.
'|complete skill("Shadowlands Enchanting") >= 115 |or |only if default
'|complete skill("Shadowlands Enchanting") >= 120 |or |only if KulTiran
'|complete skill("Shadowlands Enchanting") >= 125 |or |only if BloodElf
step
talk Distributor Au'resh##156694
buy 5 Enchanting Vellum##38682 |goto 47.55,29.05 |or
'|complete skill("Shadowlands Enchanting") >= 115 |or |only if default
'|complete skill("Shadowlands Enchanting") >= 120 |or |only if KulTiran
'|complete skill("Shadowlands Enchanting") >= 125 |or |only if BloodElf
step
Open Your Enchanting Crafting Panel:
_<Create 8 Eternal Stats>_
|tip Click the "Enchant" button in your enchanting window and click an Enchanting Vellum in your inventory to place the enchant on a scroll that can be sold.
|tip You can create Eternal Bounds or Eternal Skirmish if you prefer.
|tip You may need to create a few more of these.
|tip Each additional enchant will require two Sacred Shards, one Eternal Crystal, and one Enchanting Vellum.
Reach Skill 115 in Shadowlands Enchanting |skill Shadowlands Enchanting,115 |only if default
Reach Skill 120 in Shadowlands Enchanting |skill Shadowlands Enchanting,120 |only if KulTiran
Reach Skill 125 in Shadowlands Enchanting |skill Shadowlands Enchanting,125 |only if BloodElf
step
_Congratulations!_
You Reached 115 in Shadowlands Enchanting Skill. |only if default
You Reached 120 in Shadowlands Enchanting Skill. |only if KulTiran
You Reached 125 in Shadowlands Enchanting Skill. |only if BloodElf
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Engineering\\Leveling Guides\\Shadowlands Engineering 1-100",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Shadowlands Engineering profession from 1-100.",
startlevel=50.0,
condition_end=function() return skill('Shadowlands Engineering') >= 100 end,
condition_suggested=function() return skill('Shadowlands Engineering') > 0 and skill('Shadowlands Engineering') < 100 and level >= 50 end,
},[[
step
talk Machinist Au'gur##156691
Train Engineering |skillmax Engineering,300 |goto Oribos/0 38.05,44.67
step
talk Machinist Au'gur##156691
Train Shadowlands Engineering |skillmax Shadowlands Engineering,100 |goto 38.05,44.67
step
Create an Arclight Spanner |complete itemcount(6219,109253,40772,114943) == 0
|tip You can use the "Engineering 1-300" profession guide to create an Arclight Spanner.
|tip You can also purchase a "Gnomish Army Knife" or "Utimate Gnomish Army Knife" from the auction house.
|only if itemcount(6219,109253,40772,114943) == 0
step
Click Here if You Would Like to Collect All Materials First |confirm |or
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Shadowlands Engineering |confirm |next "Begin_Profession_Leveling" |or
'|complete skill("Shadowlands Engineering") >= 100 |or |next "Begin_Profession_Leveling" |only if default
'|complete skill("Shadowlands Engineering") >= 105 |or |next "Begin_Profession_Leveling" |only if KulTiran
'|complete skill("Shadowlands Engineering") >= 115 |or |next "Begin_Profession_Leveling" |only if Gnome
stickystart "Collect_Twilight_Bark_Total"
stickystart "Collect_Oriblase_Total"
stickystart "Collect_Angerseye_Total"
stickystart "Collect_Umbryl_Total"
stickystart "Collect_Shrouded_Cloth_Total"
step
collect 312 Laestrite Ore##171828
|tip Farm them with Mining or purchase them from the Auction House.
|tip These totals are approximate.
|tip You may need slightly more or less than the indicated amount.
step
label "Collect_Twilight_Bark_Total"
collect 24 Twilight Bark##177061
|tip Farm them with Mining from Phaedrum Deposits in Ardenweald or purchase them from the Auction House.
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
step
label "Collect_Oriblase_Total"
collect 15 Oriblase##173108
|tip Prospect them from Shadowlands ore with Jewelcrafting or purchase them from the Auction House.
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
step
label "Collect_Angerseye_Total"
collect 15 Angerseye##173109
|tip Prospect them from Shadowlands ore with Jewelcrafting or purchase them from the Auction House. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
step
label "Collect_Umbryl_Total"
collect 4 Umbryl##173110
|tip Prospect them from Shadowlands ore with Jewelcrafting or purchase them from the Auction House. |notinsticky
step
label "Collect_Shrouded_Cloth_Total"
collect 20 Shrouded Cloth##173202
|tip Farm them from humanoid mobs in Shadowlands zones or purchase them from the Auction House.
step
talk Distributor Au'burk##156692
buy 30 Machinist's Oil##183952 |goto 37.67,42.95
buy 30 Luminous Flux##180733 |goto 37.67,42.95
step
label "Begin_Profession_Leveling"
collect 150 Laestrite Ore##171828 |or
|tip Farm them with Mining or purchase them from the Auction House.
'|complete skill("Shadowlands Engineering") >= 100 |or |only if default
'|complete skill("Shadowlands Engineering") >= 105 |or |only if KulTiran
'|complete skill("Shadowlands Engineering") >= 115 |or |only if Gnome
step
collect 200 Porous Stone##171840 |or
|tip Farm them with Mining or purchase them from the Auction House.
'|complete skill("Shadowlands Engineering") >= 100 |or |only if default
'|complete skill("Shadowlands Engineering") >= 105 |or |only if KulTiran
'|complete skill("Shadowlands Engineering") >= 115 |or |only if Gnome
step
talk Distributor Au'burk##156692
buy 1 Blacksmith's Hammer##5956 |goto 37.67,42.95 |or |only if itemcount(5956,152839,177033,136350,157585,140209,174280,181763,109253,40772,114943) == 0
|tip You can also purchase a "Gnomish Army Knife" or "Utimate Gnomish Army Knife" from the auction house.
'|complete skill("Shadowlands Engineering") >= 100 |or |only if default
'|complete skill("Shadowlands Engineering") >= 105 |or |only if KulTiran
'|complete skill("Shadowlands Engineering") >= 115 |or |only if Gnome
step
Open Your Engineering Crafting Panel:
_<Create 150 Handful of Laestrite Bolts>_
|tip Save these, you will need them later.
collect 300 Handful of Laestrite Bolts##172934 |or
'|complete skill("Shadowlands Engineering") >= 100 |or |only if default
'|complete skill("Shadowlands Engineering") >= 105 |or |only if KulTiran
'|complete skill("Shadowlands Engineering") >= 115 |or |only if Gnome
step
Open Your Engineering Crafting Panel:
_<Create 100 Porous Polishing Abrasive>_
|tip Save these, you will need them later.
collect 300 Porous Polishing Abrasive##172935 |or
'|complete skill("Shadowlands Engineering") >= 100 |or |only if default
'|complete skill("Shadowlands Engineering") >= 105 |or |only if KulTiran
'|complete skill("Shadowlands Engineering") >= 115 |or |only if Gnome
step
talk Machinist Au'gur##156691
Train Mortal Coiled Spring |learn Mortal Coiled Spring##310525 |goto 38.05,44.67
step
collect 50 Laestrite Ore##171828 |or
|tip Farm them with Mining or purchase them from the Auction House.
'|complete skill("Shadowlands Engineering") >= 35 |or |only if default
'|complete skill("Shadowlands Engineering") >= 40 |or |only if KulTiran
'|complete skill("Shadowlands Engineering") >= 50 |or |only if Gnome
step
collect 30 Porous Polishing Abrasive##172935 |or
|tip You created these in a previous step.
'|complete skill("Shadowlands Engineering") >= 35 |or |only if default
'|complete skill("Shadowlands Engineering") >= 40 |or |only if KulTiran
'|complete skill("Shadowlands Engineering") >= 50 |or |only if Gnome
step
talk Distributor Au'burk##156692
buy 20 Luminous Flux##180733 |goto 37.67,42.95 |or
'|complete skill("Shadowlands Engineering") >= 35 |or |only if default
'|complete skill("Shadowlands Engineering") >= 40 |or |only if KulTiran
'|complete skill("Shadowlands Engineering") >= 50 |or |only if Gnome
step
Open Your Engineering Crafting Panel:
_<Create 10 Mortal Coiled Springs>_
|tip Save these, you will need them later.
Reach Skill 35 in Shadowlands Engineering |skill Shadowlands Engineering,35 |only if default
Reach Skill 40 in Shadowlands Engineering |skill Shadowlands Engineering,40 |only if KulTiran
Reach Skill 50 in Shadowlands Engineering |skill Shadowlands Engineering,50 |only if Gnome
step
talk Machinist Au'gur##156691
Train Precision Lifeforce Inverter |learn Precision Lifeforce Inverter##310536 |goto 38.05,44.67
stickystart "Collect_Twilight_Bark_41"
step
collect 12 Laestrite Ore##171828 |or
|tip Farm them with Mining or purchase them from the Auction House.
'|complete skill("Shadowlands Engineering") >= 41 |or |only if default
'|complete skill("Shadowlands Engineering") >= 46 |or |only if KulTiran
'|complete skill("Shadowlands Engineering") >= 56 |or |only if Gnome
step
label "Collect_Twilight_Bark_41"
collect 24 Twilight Bark##177061 |or
|tip Farm them with Mining from Phaedrum Deposits in Ardenweald or purchase them from the Auction House.
'|complete skill("Shadowlands Engineering") >= 41 |or |only if default
'|complete skill("Shadowlands Engineering") >= 46 |or |only if KulTiran
'|complete skill("Shadowlands Engineering") >= 56 |or |only if Gnome
step
collect 3 Mortal Coiled Spring##172936 |or
|tip You created these in a previous step.
'|complete skill("Shadowlands Engineering") >= 41 |or |only if default
'|complete skill("Shadowlands Engineering") >= 46 |or |only if KulTiran
'|complete skill("Shadowlands Engineering") >= 56 |or |only if Gnome
step
collect 12 Handful of Laestrite Bolts##172934 |or
|tip You created these in a previous step.
'|complete skill("Shadowlands Engineering") >= 41 |or |only if default
'|complete skill("Shadowlands Engineering") >= 46 |or |only if KulTiran
'|complete skill("Shadowlands Engineering") >= 56 |or |only if Gnome
step
Open Your Engineering Crafting Panel:
_<Create 3 Precision Lifeforce Inverters>_
Reach Skill 41 in Shadowlands Engineering |skill Shadowlands Engineering,41 |only if default
Reach Skill 46 in Shadowlands Engineering |skill Shadowlands Engineering,46 |only if KulTiran
Reach Skill 56 in Shadowlands Engineering |skill Shadowlands Engineering,56 |only if Gnome
step
collect 25 Laestrite Ore##171828 |or
|tip Farm them with Mining or purchase them from the Auction House.
'|complete skill("Shadowlands Engineering") >= 46 |or |only if default
'|complete skill("Shadowlands Engineering") >= 51 |or |only if KulTiran
'|complete skill("Shadowlands Engineering") >= 61 |or |only if Gnome
step
collect 15 Porous Polishing Abrasive##172935 |or
|tip You created these in a previous step.
'|complete skill("Shadowlands Engineering") >= 46 |or |only if default
'|complete skill("Shadowlands Engineering") >= 51 |or |only if KulTiran
'|complete skill("Shadowlands Engineering") >= 61 |or |only if Gnome
step
talk Distributor Au'burk##156692
buy 10 Luminous Flux##180733 |goto 37.67,42.95 |or
'|complete skill("Shadowlands Engineering") >= 46 |or |only if default
'|complete skill("Shadowlands Engineering") >= 51 |or |only if KulTiran
'|complete skill("Shadowlands Engineering") >= 61 |or |only if Gnome
step
Open Your Engineering Crafting Panel:
_<Create 5 Mortal Coiled Springs>_
|tip Save these, you will need them later.
Reach Skill 46 in Shadowlands Engineering |skill Shadowlands Engineering,46 |only if default
Reach Skill 51 in Shadowlands Engineering |skill Shadowlands Engineering,51 |only if KulTiran
Reach Skill 61 in Shadowlands Engineering |skill Shadowlands Engineering,61 |only if Gnome
step
talk Machinist Au'gur##156691
Train Wormfed Gear Assembly |learn Wormfed Gear Assembly##310526 |goto 38.05,44.67
step
collect 12 Laestrite Ore##171828 |or
|tip Farm them with Mining or purchase them from the Auction House.
'|complete skill("Shadowlands Engineering") >= 50 |or |only if default
'|complete skill("Shadowlands Engineering") >= 55 |or |only if KulTiran
'|complete skill("Shadowlands Engineering") >= 65 |or |only if Gnome
step
collect 16 Handful of Laestrite Bolts##172934 |or
|tip You created these in a previous step.
'|complete skill("Shadowlands Engineering") >= 50 |or |only if default
'|complete skill("Shadowlands Engineering") >= 55 |or |only if KulTiran
'|complete skill("Shadowlands Engineering") >= 65 |or |only if Gnome
step
collect 20 Porous Polishing Abrasive##172935 |or
|tip You created these in a previous step.
'|complete skill("Shadowlands Engineering") >= 50 |or |only if default
'|complete skill("Shadowlands Engineering") >= 55 |or |only if KulTiran
'|complete skill("Shadowlands Engineering") >= 65 |or |only if Gnome
step
talk Distributor Au'burk##156692
buy 4 Machinist's Oil##183952 |goto 37.67,42.95 |or
'|complete skill("Shadowlands Engineering") >= 50 |or |only if default
'|complete skill("Shadowlands Engineering") >= 55 |or |only if KulTiran
'|complete skill("Shadowlands Engineering") >= 65 |or |only if Gnome
step
Open Your Engineering Crafting Panel:
_<Create 4 Wormfed Gear Assembly>_
Reach Skill 50 in Shadowlands Engineering |skill Shadowlands Engineering,50 |only if default
Reach Skill 55 in Shadowlands Engineering |skill Shadowlands Engineering,55 |only if KulTiran
Reach Skill 65 in Shadowlands Engineering |skill Shadowlands Engineering,65 |only if Gnome
step
talk Machinist Au'gur##156691
Train Disposable Spectrophasic Reanimator |learn Disposable Spectrophasic Reanimator##345179 |goto 38.05,44.67
step
collect 5 Wormfed Gear Assembly##172937 |or
|tip You created these in a previous step.
'|complete skill("Shadowlands Engineering") >= 55 |or |only if default
'|complete skill("Shadowlands Engineering") >= 60 |or |only if KulTiran
'|complete skill("Shadowlands Engineering") >= 70 |or |only if Gnome
step
collect 5 Mortal Coiled Spring##172936 |or
|tip You created these in a previous step.
'|complete skill("Shadowlands Engineering") >= 55 |or |only if default
'|complete skill("Shadowlands Engineering") >= 60 |or |only if KulTiran
'|complete skill("Shadowlands Engineering") >= 70 |or |only if Gnome
step
collect 20 Handful of Laestrite Bolts##172934 |or
|tip You created these in a previous step.
'|complete skill("Shadowlands Engineering") >= 55 |or |only if default
'|complete skill("Shadowlands Engineering") >= 60 |or |only if KulTiran
'|complete skill("Shadowlands Engineering") >= 70 |or |only if Gnome
step
talk Distributor Au'burk##156692
buy 5 Machinist's Oil##183952 |goto 37.67,42.95 |or
'|complete skill("Shadowlands Engineering") >= 55 |or |only if default
'|complete skill("Shadowlands Engineering") >= 60 |or |only if KulTiran
'|complete skill("Shadowlands Engineering") >= 70 |or |only if Gnome
step
Open Your Engineering Crafting Panel:
_<Create 5 Disposable Spectrophasic Reanimators>_
Reach Skill 55 in Shadowlands Engineering |skill Shadowlands Engineering,55 |only if default
Reach Skill 60 in Shadowlands Engineering |skill Shadowlands Engineering,60 |only if KulTiran
Reach Skill 70 in Shadowlands Engineering |skill Shadowlands Engineering,70 |only if Gnome
step
collect 63 Laestrite Ore##171828 |or
|tip Farm them with Mining or purchase them from the Auction House.
'|complete skill("Shadowlands Engineering") >= 76 |or |only if default
'|complete skill("Shadowlands Engineering") >= 81 |or |only if KulTiran
'|complete skill("Shadowlands Engineering") >= 91 |or |only if Gnome
step
collect 84 Handful of Laestrite Bolts##172934 |or
|tip You created these in a previous step.
'|complete skill("Shadowlands Engineering") >= 76 |or |only if default
'|complete skill("Shadowlands Engineering") >= 81 |or |only if KulTiran
'|complete skill("Shadowlands Engineering") >= 91 |or |only if Gnome
step
collect 105 Porous Polishing Abrasive##172935 |or
|tip You created these in a previous step.
'|complete skill("Shadowlands Engineering") >= 76 |or |only if default
'|complete skill("Shadowlands Engineering") >= 81 |or |only if KulTiran
'|complete skill("Shadowlands Engineering") >= 91 |or |only if Gnome
step
talk Distributor Au'burk##156692
buy 21 Machinist's Oil##183952 |goto 37.67,42.95 |or
'|complete skill("Shadowlands Engineering") >= 76 |or |only if default
'|complete skill("Shadowlands Engineering") >= 81 |or |only if KulTiran
'|complete skill("Shadowlands Engineering") >= 91 |or |only if Gnome
step
Open Your Engineering Crafting Panel:
_<Create 21 Wormfed Gear Assembly>_
|tip You may need to create a few more of these.
|tip Each additional assembly will require four Handfuls of Laestrite Bolts and one each of Wormfed Gear Assembly, Mortal Coiled Spring, and Machinist's Oil.
Reach Skill 76 in Shadowlands Engineering |skill Shadowlands Engineering,76 |only if default
Reach Skill 81 in Shadowlands Engineering |skill Shadowlands Engineering,81 |only if KulTiran
Reach Skill 91 in Shadowlands Engineering |skill Shadowlands Engineering,91 |only if Gnome
step
talk Machinist Au'gur##156691
Train Optical Target Embiggener |learn Optical Target Embiggener##310534 |goto 38.05,44.67
step
collect 15 Oriblase##173108 |or
|tip Prospect them from Shadowlands ore with Jewelcrafting or purchase them from the Auction House.
'|complete skill("Shadowlands Engineering") >= 91 |or |only if default
'|complete skill("Shadowlands Engineering") >= 96 |or |only if KulTiran
'|complete skill("Shadowlands Engineering") >= 106 |or |only if Gnome
step
collect 15 Angerseye##173109 |or
|tip Prospect them from Shadowlands ore with Jewelcrafting or purchase them from the Auction House.
'|complete skill("Shadowlands Engineering") >= 91 |or |only if default
'|complete skill("Shadowlands Engineering") >= 96 |or |only if KulTiran
'|complete skill("Shadowlands Engineering") >= 106 |or |only if Gnome
step
collect 75 Handful of Laestrite Bolts##172934 |or
|tip You created these in a previous step.
'|complete skill("Shadowlands Engineering") >= 91 |or |only if default
'|complete skill("Shadowlands Engineering") >= 96 |or |only if KulTiran
'|complete skill("Shadowlands Engineering") >= 106 |or |only if Gnome
step
collect 15 Wormfed Gear Assembly##172937 |or
|tip You created these in a previous step.
'|complete skill("Shadowlands Engineering") >= 91 |or |only if default
'|complete skill("Shadowlands Engineering") >= 96 |or |only if KulTiran
'|complete skill("Shadowlands Engineering") >= 106 |or |only if Gnome
step
Open Your Engineering Crafting Panel:
_<Create 15 Optical Target Embiggeners>_
Reach Skill 91 in Shadowlands Engineering |skill Shadowlands Engineering,91 |only if default
Reach Skill 96 in Shadowlands Engineering |skill Shadowlands Engineering,96 |only if KulTiran
Reach Skill 106 in Shadowlands Engineering |skill Shadowlands Engineering,106 |only if Gnome
step
talk Machinist Au'gur##156691
Train Flexible Ectoplasmic Specs |learn Flexible Ectoplasmic Specs##310501 |goto 38.05,44.67
stickystart "Collect_Umbryl_97"
step
collect 20 Shrouded Cloth##173202 |or
|tip Farm them from humanoid mobs in Shadowlands zones or purchase them from the Auction House.
'|complete skill("Shadowlands Engineering") >= 97 |or |only if default
'|complete skill("Shadowlands Engineering") >= 102 |or |only if KulTiran
'|complete skill("Shadowlands Engineering") >= 112 |or |only if Gnome
step
label "Collect_Umbryl_97"
collect 4 Umbryl##173110 |or
|tip Prospect them from Shadowlands ore with Jewelcrafting or purchase them from the Auction House.
'|complete skill("Shadowlands Engineering") >= 97 |or |only if default
'|complete skill("Shadowlands Engineering") >= 102 |or |only if KulTiran
'|complete skill("Shadowlands Engineering") >= 112 |or |only if Gnome
step
collect 10 Handful of Laestrite Bolts##172934 |or
|tip You created these in a previous step.
'|complete skill("Shadowlands Engineering") >= 97 |or |only if default
'|complete skill("Shadowlands Engineering") >= 102 |or |only if KulTiran
'|complete skill("Shadowlands Engineering") >= 112 |or |only if Gnome
step
collect 6 Wormfed Gear Assembly##172937 |or
|tip You created these in a previous step.
'|complete skill("Shadowlands Engineering") >= 97 |or |only if default
'|complete skill("Shadowlands Engineering") >= 102 |or |only if KulTiran
'|complete skill("Shadowlands Engineering") >= 112 |or |only if Gnome
step
Open Your Engineering Crafting Panel:
_<Create 2 Flexible Ectoplasmic Specs>_
Reach Skill 97 in Shadowlands Engineering |skill Shadowlands Engineering,97 |only if default
Reach Skill 102 in Shadowlands Engineering |skill Shadowlands Engineering,102 |only if KulTiran
Reach Skill 112 in Shadowlands Engineering |skill Shadowlands Engineering,112 |only if Gnome
step
Open Your Engineering Crafting Panel:
_<Create Green Recipes>_
|tip From this point, it's best to finish the last few points from world quests.
|tip You can also create any green recipe until you reach max skill level.
Reach Skill 100 in Shadowlands Engineering |skill Shadowlands Engineering,100 |only if default
Reach Skill 105 in Shadowlands Engineering |skill Shadowlands Engineering,105 |only if KulTiran
Reach Skill 115 in Shadowlands Engineering |skill Shadowlands Engineering,115 |only if Gnome
step
_Congratulations!_
You Reached 100 in Shadowlands Engineering Skill. |only if default
You Reached 105 in Shadowlands Engineering Skill. |only if KulTiran
You Reached 115 in Shadowlands Engineering Skill. |only if Gnome
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Leveling Guides\\Shadowlands Fishing 1-200",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Shadowlands Fishing profession from 1-200.",
startlevel=50.0,
condition_end=function() return skill('Shadowlands Fishing') >= 200 end,
condition_suggested=function() return skill('Shadowlands Fishing') > 0 and skill('Shadowlands Fishing') < 200 and level >= 50 end,
},[[
step
talk Retriever Au'prin##156671
Train Fishing |skillmax Fishing,300 |goto Oribos/0 47.53,23.59
step
talk Retriever Au'prin##156671
Train Shadowlands Fishing |skillmax Shadowlands Fishing,200 |goto 47.53,23.59
step
Fish in the open water
|tip You can fish anywhere and gain skill.
|tip If you want to fish up specific fish, refer to one of our farming guides.
Reach Skill 200 in Shadowlands Fishing |skill Shadowlands Fishing,200 |goto Bastion/0 52.10,76.06
step
_Congratulations!_
You Reached 200 in Shadowlands Fishing Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Iridescent Amberjack",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Iridescent Amberjack for various Cooking recipes.",
startlevel=50.0,
},[[
step
cast Fishing##131474
use Iridescent Amberjack Bait##173039
|tip These have a chance to drop while fishing in Ardenweald.
|tip Use them to inscrease the chances of catching Iridescent Amberjacks.
collect Iridescent Amberjack##173033 |n |goto Ardenweald/0 49.36,52.98
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Lost Sole",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Lost Sole for various Cooking recipes.",
startlevel=50.0,
},[[
step
cast Fishing##131474
use Lost Sole Bait##173038
|tip These have a chance to drop while fishing in Ardenweald.
|tip Use them to inscrease the chances of catching Lost Soles.
collect Lost Sole##173032 |n |goto Ardenweald/0 49.36,52.98
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Pocked Bonefish",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Pocked Bonefish for various Cooking recipes.",
startlevel=50.0,
},[[
step
cast Fishing##131474
use Pocked Bonefish Bait##173041
|tip These have a chance to drop while fishing in Maldraxxus.
|tip Use them to inscrease the chances of catching Pocked Bonefish.
collect Pocked Bonefish##173035 |n |goto Maldraxxus/0 49.57,54.10
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Silvergill Pike",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Silvergill Pike for various Cooking recipes.",
startlevel=50.0,
},[[
step
cast Fishing##131474
use Silvergill Pike Bait##173040
|tip These have a chance to drop while fishing in Bastion.
|tip Use them to inscrease the chances of catching Silvergill Pikes.
collect Silvergill Pike##173034 |n |goto Bastion/0 49.29,64.34
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Spinefin Piranha",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Spinefin Piranha for various Cooking recipes.",
startlevel=50.0,
},[[
step
cast Fishing##131474
use Spinefin Piranha Bait##173042
|tip These have a chance to drop while fishing in Revendreth.
|tip Use them to inscrease the chances of catching Spinefin Piranhas.
collect Spinefin Piranha##173036 |n |goto Revendreth/0 51.31,63.83
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Elysian Thade",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Elysian Thade for various Cooking recipes.",
startlevel=50.0,
},[[
step
cast Fishing##131474
use Elysian Thade Bait##173043
|tip These have a chance to drop while fishing in Ardenweald.
|tip Use them to inscrease the chances of catching Elysian Thades.
collect Elysian Thade##173037 |n |goto Ardenweald/0 49.36,52.98
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Leveling Guides\\Shadowlands Herbalism 1-150",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Shadowlands Herbalism profession from 1-150.",
startlevel=50.0,
condition_end=function() return skill('Shadowlands Herbalism') >= 150 end,
condition_suggested=function() return skill('Shadowlands Herbalism') > 0 and skill('Shadowlands Herbalism') < 150 and level >= 50 end,
},[[
step
talk Selector Au'mar##156686
Train Herbalism |skillmax Herbalism,300 |goto Oribos/0 40.24,38.24
step
talk Selector Au'mar##156686
Train Shadowlands Herbalism |skillmax Shadowlands Herbalism,150 |goto 40.24,38.24
step
map Bastion/0
path follow smart; loop on; ants curved; dist 30
path	55.76,52.18	56.37,50.66	58.19,49.85	57.78,45.05	56.63,42.52
path	55.64,39.59	54.54,37.01	52.41,36.67	51.22,34.53	52.02,31.33
path	51.75,29.16	50.55,28.03	49.98,29.63	50.16,25.77	49.12,24.12
path	48.83,22.06	48.47,18.71	49.28,18.26	51.48,16.92	53.88,14.72
path	53.05,13.19	51.89,12.89	53.55,11.14	54.21,9.93	54.85,10.31
path	56.00,11.44	56.73,11.35	58.27,13.14	56.33,15.19	55.38,15.72
path	54.30,17.56	54.79,20.14	55.19,22.23	55.56,24.22	55.10,26.13
path	54.38,28.12	55.63,31.15	56.81,33.39	57.09,35.98	58.47,36.94
path	60.84,35.65	62.19,34.95	61.92,32.24	63.91,32.28	65.06,30.61
path	65.60,33.10	65.44,35.35	65.72,39.31	67.99,39.77	69.21,38.68
path	70.35,39.31	71.09,40.48	70.07,43.56	69.06,45.07	67.76,46.09
path	66.15,45.81	65.35,46.11	63.70,44.87	63.04,45.97	63.07,43.75
path	61.41,43.73	60.58,45.51	61.13,47.45	61.43,50.62	61.24,52.27
path	59.92,53.74	59.24,54.60	57.93,55.23
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
|tip You can also use any Shadowlands herb farming guide.
Reach Skill 150 in Shadowlands Herbalism |skill Shadowlands Herbalism,150 |only if default
Reach Skill 155 in Shadowlands Herbalism |skill Shadowlands Herbalism,155 |only if KulTiran
Reach Skill 165 in Shadowlands Herbalism |skill Shadowlands Herbalism,165 |only if Tauren
step
_Congratulations!_
You Reached 150 in Shadowlands Herbalism Skill. |only if default
You Reached 155 in Shadowlands Herbalism Skill. |only if KulTiran
You Reached 165 in Shadowlands Herbalism Skill. |only if Tauren
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Death Blossom",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Death Blossom for various profession recipes.",
startlevel=50.0,
},[[
step
map Bastion/0
path follow smart; loop on; ants curved; dist 30
path	55.76,52.18	56.37,50.66	58.19,49.85	57.78,45.05	56.63,42.52
path	55.64,39.59	54.54,37.01	52.41,36.67	51.22,34.53	52.02,31.33
path	51.75,29.16	50.55,28.03	49.98,29.63	50.16,25.77	49.12,24.12
path	48.83,22.06	48.47,18.71	49.28,18.26	51.48,16.92	53.88,14.72
path	53.05,13.19	51.89,12.89	53.55,11.14	54.21,9.93	54.85,10.31
path	56.00,11.44	56.73,11.35	58.27,13.14	56.33,15.19	55.38,15.72
path	54.30,17.56	54.79,20.14	55.19,22.23	55.56,24.22	55.10,26.13
path	54.38,28.12	55.63,31.15	56.81,33.39	57.09,35.98	58.47,36.94
path	60.84,35.65	62.19,34.95	61.92,32.24	63.91,32.28	65.06,30.61
path	65.60,33.10	65.44,35.35	65.72,39.31	67.99,39.77	69.21,38.68
path	70.35,39.31	71.09,40.48	70.07,43.56	69.06,45.07	67.76,46.09
path	66.15,45.81	65.35,46.11	63.70,44.87	63.04,45.97	63.07,43.75
path	61.41,43.73	60.58,45.51	61.13,47.45	61.43,50.62	61.24,52.27
path	59.92,53.74	59.24,54.60	57.93,55.23
click Death Blossom##336686+
|tip Track them on your minimap with "Find Herbs".
|tip Bastion has a lot of cliffs, but this path has no fatal fall damage areas.
|tip Just keep track of your health when you jump down.
collect Death Blossom##169701 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Marrowroot",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Marrowroot for various profession recipes.",
startlevel=50.0,
},[[
step
map Maldraxxus/0
path follow smart; loop on; ants curved; dist 30
path	51.75,59.20	54.32,58.72	54.29,60.31	54.99,61.54	56.59,62.37
path	57.70,62.15	58.66,61.88	59.39,61.36	60.16,62.04	61.26,61.63
path	61.76,58.74	63.57,55.87	65.13,54.42	66.05,54.24	67.19,54.96
path	67.84,53.88	68.46,53.31	69.63,53.71	70.61,54.23	70.52,53.89
path	70.88,52.77	72.05,51.98	72.64,52.42	73.78,52.13	74.60,51.56
path	74.56,48.57	75.20,47.19	76.00,45.71	76.30,44.17	75.47,43.73
path	74.85,44.27	74.24,44.11	73.59,43.10	73.40,44.96	71.07,45.13
path	70.34,46.20	69.08,48.85	67.66,50.46	66.61,51.62	65.54,52.20
path	64.47,49.32	63.74,49.51	62.31,50.34	61.92,49.01	62.06,47.07
path	61.90,46.52	60.28,42.26	58.57,43.00	55.68,42.74	54.62,41.87
path	53.03,40.06	51.19,39.37	50.71,37.72	51.81,35.97	52.85,33.90
path	53.63,33.83	54.25,34.40	54.36,35.70	54.36,36.82	55.88,35.28
path	56.31,36.68	56.47,37.04	56.36,38.16	55.92,39.72	56.69,40.44
path	57.29,40.45	57.82,38.55	58.11,36.42	58.81,35.41	59.82,36.22
path	59.69,33.40	59.01,32.58	57.10,31.54	56.03,30.25	54.37,26.98
path	53.95,23.90	52.74,22.26	53.67,20.67	54.73,20.37	55.71,19.62
path	55.56,16.36	54.46,14.68	52.92,15.79	51.84,18.11	49.75,19.53
path	49.90,20.70	51.12,24.86	48.48,24.64	46.02,24.44	45.16,25.00
path	46.09,27.33	47.42,27.78	47.02,29.96	46.17,30.19	45.48,30.26
path	44.88,27.50	44.61,26.75	42.40,27.99	41.57,29.14	42.10,31.92
path	42.43,32.97	43.55,33.91	42.68,35.62	42.31,37.68	42.01,40.87
path	41.03,41.74	39.89,43.04	39.42,44.53	39.59,45.72	37.92,45.14
path	36.83,46.11	36.50,47.17	36.73,49.58	36.53,51.32	35.58,52.69
path	35.39,54.87	36.69,54.50	37.76,52.98	38.59,51.80	39.69,52.19
path	39.97,50.86	39.54,48.82	40.35,49.13	41.11,50.82	42.05,50.64
path	42.70,51.11	43.49,49.98	43.51,48.23	44.03,46.35	44.85,47.50
path	45.22,50.09	44.27,51.35	44.67,53.53	44.00,55.55	45.28,57.07
path	45.86,58.26	48.26,58.32	49.86,58.34	50.63,59.32
click Marrowroot##336689+
|tip Track them on your minimap with "Find Herbs".
collect Marrowroot##168589 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Vigil's Torch",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Vigil's Torch for various profession recipes.",
startlevel=50.0,
},[[
step
map Ardenweald/0
path follow smart; loop on; ants curved; dist 30
path	37.04,51.70	37.28,49.78	37.51,47.91	37.57,46.73	38.10,45.56
path	38.69,42.99	37.45,43.44	35.88,44.17	35.01,44.83	33.66,45.61
path	32.79,43.88	32.85,42.28	32.87,40.15	32.58,39.27	32.49,38.16
path	31.61,38.65	29.82,38.59	29.29,37.50	28.95,35.72	29.21,34.58
path	30.09,33.58	31.03,33.43	31.76,33.19	32.47,34.02	33.16,33.49
path	33.31,32.09	34.18,32.10	34.69,30.95	35.39,29.98	35.66,28.39
path	36.06,27.42	37.93,27.25	38.11,28.79	39.01,29.30	40.20,29.75
path	40.79,29.42	42.02,28.41	43.54,26.93	43.91,25.04	44.08,23.18
path	46.22,22.42	46.63,26.38	47.06,27.67	48.20,28.79	49.53,28.43
path	49.81,27.25	50.74,26.71	51.96,26.97	53.32,26.74	54.54,26.07
path	55.30,27.32	54.53,28.43	54.51,30.36	54.19,31.73	54.74,34.61
path	56.63,34.61	57.87,35.09	58.36,34.56	59.35,33.77	59.44,32.43
path	60.12,29.30	61.15,30.44	61.33,31.52	61.69,32.84	62.79,30.81
path	63.20,28.13	64.18,26.11	64.45,25.34	64.49,23.62	66.29,23.81
path	67.94,23.06	69.55,23.56	69.58,24.32	68.64,25.17	68.48,26.16
path	68.50,27.13	70.02,28.25	70.42,28.81	71.45,28.09	72.35,26.85
path	73.10,28.00	75.10,30.60	75.01,32.08	74.01,32.76	73.45,33.91
path	73.63,35.04	73.21,35.91	72.02,35.87	71.28,36.70	70.25,37.16
path	69.44,38.07	67.90,38.46	66.14,40.76	65.43,41.92	64.42,43.24
path	63.48,44.33	64.03,46.18	63.94,47.26	64.75,48.95	65.12,49.30
path	65.45,50.28	66.14,52.37	66.24,53.34	65.65,54.71	66.94,54.99
path	67.63,54.60	68.19,53.75	69.08,54.55	69.60,54.84	69.93,53.81
path	70.59,55.02	70.58,56.84	69.49,57.72	68.59,57.78	67.50,59.68
path	66.83,60.28	66.13,59.93	65.60,57.77	65.04,56.01	63.28,56.21
path	61.94,55.99	60.67,57.18	60.26,58.24	59.43,58.65	58.01,58.79
path	57.91,60.30	57.69,62.05	57.25,63.59	56.45,64.93	55.71,66.75
path	55.13,67.67	54.46,68.00	53.98,70.55	53.49,71.28	53.60,73.31
path	52.94,74.38	52.08,75.10	52.20,76.89	51.19,76.86	50.68,76.26
path	50.60,74.55	48.75,75.16	47.43,74.63	46.28,74.89	44.99,74.31
path	44.12,74.09	43.11,72.21	42.62,70.18	41.81,69.39	40.55,66.98
path	40.02,67.25	39.47,67.93	39.03,68.60	38.14,69.34	36.57,69.07
path	36.06,68.60	35.58,67.53	35.38,66.06	35.26,64.23	35.08,62.20
path	34.75,59.78	35.37,58.23	35.33,56.38	35.88,56.38	36.65,57.00
path	37.22,56.80	38.65,55.56	39.10,55.12	40.14,54.94	40.75,54.18
path	39.78,51.99	40.21,51.24	39.77,50.07	38.62,51.06	38.24,51.17
click Vigil's Torch##336688+
|tip Track them on your minimap with "Find Herbs".
collect Vigil's Torch##170554 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Rising Glory",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Rising Glory for various profession recipes.",
startlevel=50.0,
},[[
step
map Bastion/0
path follow smart; loop on; ants curved; dist 30
path	55.76,52.18	56.37,50.66	58.19,49.85	57.78,45.05	56.63,42.52
path	55.64,39.59	54.54,37.01	52.41,36.67	51.22,34.53	52.02,31.33
path	51.75,29.16	50.55,28.03	49.98,29.63	50.16,25.77	49.12,24.12
path	48.83,22.06	48.47,18.71	49.28,18.26	51.48,16.92	53.88,14.72
path	53.05,13.19	51.89,12.89	53.55,11.14	54.21,9.93	54.85,10.31
path	56.00,11.44	56.73,11.35	58.27,13.14	56.33,15.19	55.38,15.72
path	54.30,17.56	54.79,20.14	55.19,22.23	55.56,24.22	55.10,26.13
path	54.38,28.12	55.63,31.15	56.81,33.39	57.09,35.98	58.47,36.94
path	60.84,35.65	62.19,34.95	61.92,32.24	63.91,32.28	65.06,30.61
path	65.60,33.10	65.44,35.35	65.72,39.31	67.99,39.77	69.21,38.68
path	70.35,39.31	71.09,40.48	70.07,43.56	69.06,45.07	67.76,46.09
path	66.15,45.81	65.35,46.11	63.70,44.87	63.04,45.97	63.07,43.75
path	61.41,43.73	60.58,45.51	61.13,47.45	61.43,50.62	61.24,52.27
path	59.92,53.74	59.24,54.60	57.93,55.23
click Rising Glory##336690+
|tip Track them on your minimap with "Find Herbs".
collect Rising Glory##168586 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Widowbloom",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Widowbloom for various profession recipes.",
startlevel=58.0,
},[[
step
map Revendreth/0
path follow smart; loop on; ants curved; dist 30
path	58.15,57.97	57.89,58.73	57.37,59.59	56.55,59.11	54.80,58.99
path	54.05,60.60	52.49,61.57	50.77,64.36	49.51,64.50	48.77,65.26
path	48.13,61.69	46.70,63.95	45.37,64.69	44.11,63.51	42.91,63.46
path	42.81,65.41	40.94,68.67	40.08,70.05	39.75,72.21	39.25,74.19
path	38.97,75.36	39.13,76.45	40.10,76.12	41.43,75.64	43.15,74.08
path	44.82,72.66	45.87,73.47	47.83,72.23	48.81,70.89	48.74,72.33
path	48.10,73.85	48.10,76.85	49.73,76.04	49.87,75.10	50.36,73.36
path	50.50,71.47	51.39,70.26	52.46,72.64	53.90,75.16	54.38,76.14
path	55.38,74.96	56.47,73.34	58.65,72.04	59.82,71.85	60.44,71.15
path	59.90,69.68	59.49,67.51	58.95,65.64	59.72,65.48	61.34,66.44
path	62.49,67.09	63.48,66.90	64.58,66.64	65.95,64.60	66.18,63.15
path	66.30,61.44	68.08,62.84	69.13,63.22	69.99,63.19	70.67,65.46
path	70.47,68.60	68.71,69.55	69.31,70.45	70.03,72.12	73.63,74.33
path	74.89,74.91	72.97,71.82	72.23,70.40	71.99,68.72	73.87,68.48
path	74.93,68.48	75.35,67.14	76.06,66.36	76.98,66.95	78.20,67.22
path	78.19,66.45	79.10,66.47	79.58,65.05	80.36,61.75	81.06,60.03
path	80.52,57.99	79.30,57.84	78.36,58.79	77.81,61.41	77.47,63.43
path	76.43,62.98	75.01,63.06	74.32,63.69	72.83,62.49	72.77,61.51
path	71.22,60.07	70.62,58.72	68.58,57.65	67.01,58.64	66.59,57.84
path	66.08,56.51	64.46,56.06	63.35,55.49	62.71,53.16	61.51,53.41
path	60.81,54.00	60.23,54.86
click Widowbloom##336433+
|tip Track them on your minimap with "Find Herbs".
collect Widowbloom##168583 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Nightshade",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Nightshade for various profession recipes.",
startlevel=53.0,
},[[
step
map The Maw/0
path follow smart; loop on; ants curved; dist 30
path	43.78,41.74	42.90,40.34	41.67,39.92	40.71,39.08	38.80,38.32
path	36.42,36.49	35.38,36.23	35.18,37.40	34.98,39.92	34.58,40.49
path	33.68,40.33	32.94,38.68	31.78,38.54	30.93,37.03	28.94,36.06
path	27.57,34.58	26.88,34.29	27.79,33.51	29.34,33.08	31.15,32.05
path	32.12,32.30	32.90,32.07	32.44,29.66	32.24,28.92	32.59,27.02
path	33.31,25.49	33.75,23.78	34.26,20.34	33.55,18.92	30.96,19.30
path	29.31,20.65	30.28,21.36	31.25,26.77	30.75,30.27	29.78,31.38
path	28.89,32.34	26.89,32.26	24.73,28.78	22.65,27.24	22.58,28.96
path	22.08,30.84	21.14,35.57	22.05,39.01	21.75,40.37	22.92,42.69
path	24.15,43.62	27.44,42.16	30.34,42.67	31.52,44.53	32.31,45.81
path	33.50,48.75	34.40,49.03	36.11,49.32	36.83,47.54	38.41,46.67
path	39.10,46.82	39.71,48.27	40.59,48.60	41.01,49.88	42.60,48.95
path	42.24,47.06	42.65,44.29	43.51,43.06
click Nightshade##336691+
|tip Track them on your minimap with "Find Herbs".
collect Nightshade##171315 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\First Flower",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming First Flower for various profession recipes.",
startlevel=60,
},[[
step
You can find Echoed Jiro Genesii at:
[Zereth Mortis/0 52.48,28.99]
[63.13,19.49]
|tip Echoed Jiro Genesii grant "Gift of the Genesii" which increases Progenitor Essentia drop rate.
You can find Echoed Jiro Nascii at:
[59.72,37.36]
[69.75,33.55]
|tip Echoed Jiro Nascii grant "Gift of the Nascii" which reduces your chance to be seen by enemies, stacking two times.
|tip It is helpful to mark these Jiro with raid markers before beginning.
|tip Maintain one stack of "Gift of the Genesii" and two stacks of "Gift of the Nascii" when possible.
|tip You can only interact with them and gain the buff with Pocopoc summoned.
Click Here to Continue |confirm
|only if specialtalent(1971)
step
map Zereth Mortis/0
path follow smart; loop on; ants curved; dist 30
path	64.26,46.08	65.05,42.15	67.23,37.37	68.59,32.93	68.69,31.01
path	67.34,27.90	66.53,24.65	64.90,22.31	61.70,19.53	61.12,22.99
path	58.91,24.76	57.22,27.65	56.21,29.20	53.51,26.37	51.62,24.66
path	49.67,25.28	49.59,28.69	50.75,30.44	53.18,30.45	55.52,31.15
path	58.17,34.12	61.30,36.46	63.05,38.15	63.88,41.66
click First Flower##370398+
click Lush First Flower##370397+
click Elusive First Flower##375337+ |only if specialtalent(1971)
click Lush Elusive First Flower##375340+ |only if specialtalent(1971)
|tip Track them on your minimap with "Find Herbs".
|tip Occasionally clear the center of the path if spawns become less common.
collect First Flower##187699 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Inscription\\Leveling Guides\\Shadowlands Inscription 1-100",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Shadowlands Inscription profession from 1-100.",
startlevel=50.0,
condition_end=function() return skill('Shadowlands Inscription') >= 100 end,
condition_suggested=function() return skill('Shadowlands Inscription') > 0 and skill('Shadowlands Inscription') < 100 and level >= 50 end,
},[[
step
talk Scribe Au'tehshi##156685
Train Inscription |skillmax Inscription,300 |goto Oribos/0 36.51,36.72
step
talk Scribe Au'tehshi##156685
Train Shadowlands Inscription |skillmax Shadowlands Inscription,100 |goto 36.51,36.72
step
Click Here if You Would Like to Collect All Materials First |confirm |or
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Shadowlands Engineering |confirm |next "Begin_Profession_Leveling" |or
'|complete skill("Shadowlands Inscription") >= 100 |or |next "Begin_Profession_Leveling" |only if default
'|complete skill("Shadowlands Inscription") >= 105 |or |next "Begin_Profession_Leveling" |only if KulTiran
'|complete skill("Shadowlands Inscription") >= 115 |or |next "Begin_Profession_Leveling" |only if Nightborne
step
_Collect 850-950 Shadowlands Herbs_
|tip Farm them with Herbalism or purchase them from the auction house.
|tip These totals are approximate.
|tip You may need slightly more or less than the indicated amount.
|tip If you purchase them, buy the cheapest herbs you can find.
Click Here to Proceed |confirm
step
talk Distributor Au'sha##156732
buy 25 Aerated Water##173060 |goto 35.96,38.54
buy 25 Rune Etched Vial##180732 |goto 35.96,38.54
buy 31 Dark Parchment##175886 |goto 35.96,38.54
step
label "Begin_Profession_Leveling"
Open Your Inscription Crafting Panel:
_<Create Luminous Inks and Umbral Inks>_
|tip Save these, you will need them later.
|tip Mill any Shadowlands herb and create inks until you reach the indicated skill level.
|tip Farm around 200 of them with Herbalism or purchase them from the auction house.
|tip If you purchase them, buy the cheapest ones you can find.
|tip Umbral Ink requires 1 each of Umbral Pigment, Aerated Water, and Rune Etched Vial.
|tip Luminous Ink requires 1 each of Luminous Pigment, Aerated Water, and Rune Etched Vial.
|tip Puchase Rune Etched Vials from Distributor Au'sha at the indicated coordinates.
Reach Skill 25 in Shadowlands Inscription |skill Shadowlands Inscription,25 |goto 35.96,38.54 |or |only if default
Reach Skill 30 in Shadowlands Inscription |skill Shadowlands Inscription,30 |goto 35.96,38.54 |or |only if KulTiran
Reach Skill 40 in Shadowlands Inscription |skill Shadowlands Inscription,40 |goto 35.96,38.54 |or |only if Nightborne
step
talk Scribe Au'tehshi##156685
Train Writ of Grave Robbing |learn Writ of Grave Robbing##311423 |goto 36.51,36.72
step
collect 10 Luminous Ink##173059 |or
|tip You created these in a previous step.
'|complete skill("Shadowlands Inscription") >= 30 |or |only if default
'|complete skill("Shadowlands Inscription") >= 35 |or |only if KulTiran
'|complete skill("Shadowlands Inscription") >= 45 |or |only if Nightborne
step
collect 10 Umbral Ink##173058 |or
|tip You created these in a previous step.
'|complete skill("Shadowlands Inscription") >= 30 |or |only if default
'|complete skill("Shadowlands Inscription") >= 35 |or |only if KulTiran
'|complete skill("Shadowlands Inscription") >= 45 |or |only if Nightborne
step
talk Distributor Au'sha##156732
buy 1 Virtuoso Inking Set##39505 |goto 35.96,38.54 |only if itemcount(39505,109253,114943) == 0
buy 10 Dark Parchment##175886 |goto 35.96,38.54
'|complete skill("Shadowlands Inscription") >= 30 |or |only if default
'|complete skill("Shadowlands Inscription") >= 35 |or |only if KulTiran
'|complete skill("Shadowlands Inscription") >= 45 |or |only if Nightborne
step
label "Begin_Profession_Leveling"
Open Your Inscription Crafting Panel:
_<Create 10 Writs of Grave Robbing>_
Reach Skill 30 in Shadowlands Inscription |skill Shadowlands Inscription,30 |goto 35.96,38.54 |or |only if default
Reach Skill 35 in Shadowlands Inscription |skill Shadowlands Inscription,35 |goto 35.96,38.54 |or |only if KulTiran
Reach Skill 45 in Shadowlands Inscription |skill Shadowlands Inscription,45 |goto 35.96,38.54 |or |only if Nightborne
step
talk Scribe Au'tehshi##156685
Train Mass Mill Deathblossom |learn Mass Mill Deathblossom##311413 |goto 36.51,36.72
Train Mass Mill Marrowroot |learn Mass Mill Marrowroot##311416 |goto 36.51,36.72
Train Mass Mill Nightshade |learn Mass Mill Nightshade##311418 |goto 36.51,36.72
Train Mass Mill Rising Glory |learn Mass Mill Rising Glory##311417 |goto 36.51,36.72
Train Mass Mill Vigil's Torch |learn Mass Mill Vigil's Torch##311414 |goto 36.51,36.72
Train Mass Mill Widowbloom |learn Mass Mill Widowbloom##311415 |goto 36.51,36.72
step
Open Your Inscription Crafting Panel:
_<Mass Mill Shadowlands Herbs>_
|tip Farm around 650-750 Shadowlands herbs with Herbalism or purchase them from the auction house.
|tip Mass Mill them and create Umbral and Luminous inks until you consume all of them.
|tip Save these, you will need them later.
|tip If you purchase herbs, buy the cheapest ones you can find.
|tip Umbral Ink requires 1 each of Umbral Pigment, Aerated Water, and Rune Etched Vial.
|tip Luminous Ink requires 1 each of Luminous Pigment, Aerated Water, and Rune Etched Vial.
|tip Puchase Rune Etched Vials from Distributor Au'sha at the indicated coordinates.
Reach Skill 60 in Shadowlands Inscription |skill Shadowlands Inscription,60 |goto 35.96,38.54 |or |only if default
Reach Skill 65 in Shadowlands Inscription |skill Shadowlands Inscription,65 |goto 35.96,38.54 |or |only if KulTiran
Reach Skill 75 in Shadowlands Inscription |skill Shadowlands Inscription,75 |goto 35.96,38.54 |or |only if Nightborne
step
talk Scribe Au'tehshi##156685
Train Tranquil Ink |learn Tranquil Ink##321029 |goto 36.51,36.72
step
collect 25 Tranquil Pigment##175788 |or
|tip You created some of these in a previous step.
|tip Milling Nightshade with Inscription is the best source of Tranquil Pigment.
'|complete skill("Shadowlands Inscription") >= 75 |or |only if default
'|complete skill("Shadowlands Inscription") >= 80 |or |only if KulTiran
'|complete skill("Shadowlands Inscription") >= 90 |or |only if Nightborne
step
talk Distributor Au'sha##156732
buy 25 Aerated Water##173060 |goto 35.96,38.54 |or 2
buy 25 Rune Etched Vial##180732 |goto 35.96,38.54 |or 2
'|complete skill("Shadowlands Inscription") >= 75 |or |only if default
'|complete skill("Shadowlands Inscription") >= 80 |or |only if KulTiran
'|complete skill("Shadowlands Inscription") >= 90 |or |only if Nightborne
step
Open Your Inscription Crafting Panel:
_<Create 25 Tranquil Ink>_
|tip You may need to create a few more or less of these.
|tip Each additional Tranquil Ink requires 1 each of Tranquil Pigment, Aerated Water, and Rune Etched Vial.
|tip Milling Nightshade with Inscription is the best source of Tranquil Pigment.
Reach Skill 75 in Shadowlands Inscription |skill Shadowlands Inscription,75 |goto 35.96,38.54 |or |only if default
Reach Skill 80 in Shadowlands Inscription |skill Shadowlands Inscription,80 |goto 35.96,38.54 |or |only if KulTiran
Reach Skill 90 in Shadowlands Inscription |skill Shadowlands Inscription,90 |goto 35.96,38.54 |or |only if Nightborne
step
talk Scribe Au'tehshi##156685
Train Missive of Mastery |learn Missive of Mastery##324196 |goto 36.51,36.72
Train Missive of Haste |learn Missive of Haste##324198 |goto 36.51,36.72
step
collect 20 Luminous Ink##173059 |or
|tip You created these in a previous step.
'|complete skill("Shadowlands Inscription") >= 80 |or |only if default
'|complete skill("Shadowlands Inscription") >= 85 |or |only if KulTiran
'|complete skill("Shadowlands Inscription") >= 95 |or |only if Nightborne
step
collect 30 Umbral Ink##173058 |or
|tip You created these in a previous step.
'|complete skill("Shadowlands Inscription") >= 80 |or |only if default
'|complete skill("Shadowlands Inscription") >= 85 |or |only if KulTiran
'|complete skill("Shadowlands Inscription") >= 95 |or |only if Nightborne
step
collect 5 Tranquil Ink##175970 |or
|tip You created these in a previous step.
'|complete skill("Shadowlands Inscription") >= 80 |or |only if default
'|complete skill("Shadowlands Inscription") >= 85 |or |only if KulTiran
'|complete skill("Shadowlands Inscription") >= 95 |or |only if Nightborne
step
talk Distributor Au'sha##156732
buy 5 Dark Parchment##175886 |goto 35.96,38.54
'|complete skill("Shadowlands Inscription") >= 80 |or |only if default
'|complete skill("Shadowlands Inscription") >= 85 |or |only if KulTiran
'|complete skill("Shadowlands Inscription") >= 95 |or |only if Nightborne
step
Open Your Inscription Crafting Panel:
_<Create 5 Missives of Mastery>_
Reach Skill 80 in Shadowlands Inscription |skill Shadowlands Inscription,80 |or |only if default
Reach Skill 85 in Shadowlands Inscription |skill Shadowlands Inscription,85 |or |only if KulTiran
Reach Skill 95 in Shadowlands Inscription |skill Shadowlands Inscription,95 |or |only if Nightborne
step
collect 36 Luminous Ink##173059 |or
|tip You created these in a previous step.
'|complete skill("Shadowlands Inscription") >= 86 |or |only if default
'|complete skill("Shadowlands Inscription") >= 91 |or |only if KulTiran
'|complete skill("Shadowlands Inscription") >= 101 |or |only if Nightborne
step
collect 24 Umbral Ink##173058 |or
|tip You created these in a previous step.
'|complete skill("Shadowlands Inscription") >= 86 |or |only if default
'|complete skill("Shadowlands Inscription") >= 91 |or |only if KulTiran
'|complete skill("Shadowlands Inscription") >= 101 |or |only if Nightborne
step
collect 6 Tranquil Ink##175970 |or
|tip You created these in a previous step.
'|complete skill("Shadowlands Inscription") >= 86 |or |only if default
'|complete skill("Shadowlands Inscription") >= 91 |or |only if KulTiran
'|complete skill("Shadowlands Inscription") >= 101 |or |only if Nightborne
step
talk Distributor Au'sha##156732
buy 6 Dark Parchment##175886 |goto 35.96,38.54
'|complete skill("Shadowlands Inscription") >= 86 |or |only if default
'|complete skill("Shadowlands Inscription") >= 91 |or |only if KulTiran
'|complete skill("Shadowlands Inscription") >= 101 |or |only if Nightborne
step
Open Your Inscription Crafting Panel:
_<Create 6 Missives of Haste>_
|tip You may need to create a one or two more of these.
|tip Each additional Tranquil Ink requires 1 each of Tranquil Pigment, Aerated Water, and Rune Etched Vial.
|tip Milling Nightshade with Inscription is the best source of Tranquil Pigment.
Reach Skill 86 in Shadowlands Inscription |skill Shadowlands Inscription,86 |goto 35.96,38.54 |or |only if default
Reach Skill 91 in Shadowlands Inscription |skill Shadowlands Inscription,91 |goto 35.96,38.54 |or |only if KulTiran
Reach Skill 101 in Shadowlands Inscription |skill Shadowlands Inscription,101 |goto 35.96,38.54 |or |only if Nightborne
step
talk Scribe Au'tehshi##156685
Train Darkmoon Card of Death |learn Darkmoon Card of Death##311441 |goto 36.51,36.72
step
collect 70 Luminous Ink##173059 |or
|tip You created these in a previous step.
'|complete skill("Shadowlands Inscription") >= 100 |or |only if default
'|complete skill("Shadowlands Inscription") >= 105 |or |only if KulTiran
'|complete skill("Shadowlands Inscription") >= 115 |or |only if Nightborne
step
collect 70 Umbral Ink##173058 |or
|tip You created these in a previous step.
'|complete skill("Shadowlands Inscription") >= 100 |or |only if default
'|complete skill("Shadowlands Inscription") >= 105 |or |only if KulTiran
'|complete skill("Shadowlands Inscription") >= 115 |or |only if Nightborne
step
collect 10 Tranquil Ink##175970 |or
|tip You created these in a previous step.
'|complete skill("Shadowlands Inscription") >= 100 |or |only if default
'|complete skill("Shadowlands Inscription") >= 105 |or |only if KulTiran
'|complete skill("Shadowlands Inscription") >= 115 |or |only if Nightborne
step
talk Distributor Au'sha##156732
buy 10 Dark Parchment##175886 |goto 35.96,38.54
'|complete skill("Shadowlands Inscription") >= 100 |or |only if default
'|complete skill("Shadowlands Inscription") >= 105 |or |only if KulTiran
'|complete skill("Shadowlands Inscription") >= 115 |or |only if Nightborne
step
Open Your Inscription Crafting Panel:
_<Create 10 Darkmoon Cards of Death>_
Reach Skill 100 in Shadowlands Inscription |skill Shadowlands Inscription,100 |goto 35.96,38.54 |or |only if default
Reach Skill 105 in Shadowlands Inscription |skill Shadowlands Inscription,105 |goto 35.96,38.54 |or |only if KulTiran
Reach Skill 115 in Shadowlands Inscription |skill Shadowlands Inscription,115 |goto 35.96,38.54 |or |only if Nightborne
step
_Congratulations!_
You Reached 100 in Shadowlands Inscription Skill. |only if default
You Reached 105 in Shadowlands Inscription Skill. |only if KulTiran
You Reached 115 in Shadowlands Inscription Skill. |only if Nightborne
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Jewelcrafting\\Leveling Guides\\Shadowlands Jewelcrafting 1-100",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Shadowlands Jewelcrafting profession from 1-100.",
startlevel=50.0,
condition_end=function() return skill('Shadowlands Jewelcrafting') >= 100 end,
condition_suggested=function() return skill('Shadowlands Jewelcrafting') > 0 and skill('Shadowlands Jewelcrafting') < 100 and level >= 50 end,
},[[
step
talk Appraiser Au'vesk##156670
Train Jewelcrafting |skillmax Jewelcrafting,300 |goto Oribos/0 35.20,41.35
step
talk Appraiser Au'vesk##156670
Train Shadowlands Jewelcrafting |skillmax Shadowlands Jewelcrafting,100 |goto 35.20,41.35
step
Click Here if You Would Like to Collect All Materials First |confirm |or
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Shadowlands Engineering |confirm |next "Begin_Profession_Leveling" |or
'|complete skill("Shadowlands Jewelcrafting") >= 100 |or |next "Begin_Profession_Leveling" |only if default
'|complete skill("Shadowlands Jewelcrafting") >= 105 |or |next "Begin_Profession_Leveling" |only if KulTiran
'|complete skill("Shadowlands Jewelcrafting") >= 110 |or |next "Begin_Profession_Leveling" |only if Draenei
stickystart "Collect_Sinvyr_Ore_Total"
step
collect 200 Laestrite Ore##171828
|tip Farm them with Mining or purchase them from the auction house.
|tip These totals are approximate.
|tip You may need slightly more or less than the indicated amount.
step
label "Collect_Sinvyr_Ore_Total"
collect 100 Sinvyr Ore##171832
|tip Farm them with Mining or purchase them from the auction house.
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
step
You will need varying amounts of additional ore
|tip You will need around 200 of any type of ore for prospecting.
|tip You will also need to create 13 rings and necks, each requiring two ore based upon their type.
Click Here to Proceed |confirm
step
talk Distributor Au'kharn##156733
buy 26 Malleable Wire##183954 |goto 34.54,44.58
buy 14 Laestrite Setting##173168 |goto 34.54,44.58
step
label "Begin_Profession_Leveling"
_<Prospect Shadowlands Ore>_
'|cast Prospecting##325248
|tip Farm them with Mining or purchase them from the auction house.
|tip You will need around 200 ore.
|tip You will also need to save at least 200 Laestrite Ore for the following steps.
|tip Save the materials, you will need them later.
Reach Skill 20 in Shadowlands Jewelcrafting |skill Shadowlands Jewelcrafting,20 |or |only if default
Reach Skill 25 in Shadowlands Jewelcrafting |skill Shadowlands Jewelcrafting,25 |or |only if KulTiran
Reach Skill 30 in Shadowlands Jewelcrafting |skill Shadowlands Jewelcrafting,30 |or |only if Draenei
step
talk Appraiser Au'vesk##156670
Train Mass Prospect Laestrite |learn Mass Prospect Laestrite##311948 |goto 35.20,41.35
step
collect 200 Laestrite Ore##171828 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Shadowlands Jewelcrafting") >= 30 |or |only if default
'|complete skill("Shadowlands Jewelcrafting") >= 35 |or |only if KulTiran
'|complete skill("Shadowlands Jewelcrafting") >= 40 |or |only if Draenei
step
Open Your Jewelcrafting Crafting Panel:
_<Create 10 Mass Prospect Laestrites>_
|tip Save the materials, you will need them later.
Reach Skill 30 in Shadowlands Jewelcrafting |skill Shadowlands Jewelcrafting,30 |or |only if default
Reach Skill 35 in Shadowlands Jewelcrafting |skill Shadowlands Jewelcrafting,35 |or |only if KulTiran
Reach Skill 40 in Shadowlands Jewelcrafting |skill Shadowlands Jewelcrafting,40 |or |only if Draenei
step
talk Appraiser Au'vesk##156670
Train Mass Prospect Sinvyr |learn Mass Prospect Sinvyr##311952 |goto 35.20,41.35
step
collect 100 Sinvyr Ore##171832 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Shadowlands Jewelcrafting") >= 35 |or |only if default
'|complete skill("Shadowlands Jewelcrafting") >= 40 |or |only if KulTiran
'|complete skill("Shadowlands Jewelcrafting") >= 45 |or |only if Draenei
step
Open Your Jewelcrafting Crafting Panel:
_<Create 10 Mass Sinvyr Ore>_
|tip Save the materials, you will need them later.
Reach Skill 35 in Shadowlands Jewelcrafting |skill Shadowlands Jewelcrafting,35 |or |only if default
Reach Skill 40 in Shadowlands Jewelcrafting |skill Shadowlands Jewelcrafting,40 |or |only if KulTiran
Reach Skill 45 in Shadowlands Jewelcrafting |skill Shadowlands Jewelcrafting,45 |or |only if Draenei
step
talk Appraiser Au'vesk##156670
Train Versatile Jewel Doublet |learn Versatile Jewel Doublet##311866 |goto 35.20,41.35
Train Quick Jewel Doublet |learn Quick Jewel Doublet##311871 |goto 35.20,41.35
step
collect 12 Umbryl##173110 |or
|tip You created these in a previous step.
'|complete skill("Shadowlands Jewelcrafting") >= 50 |or |only if default
'|complete skill("Shadowlands Jewelcrafting") >= 55 |or |only if KulTiran
'|complete skill("Shadowlands Jewelcrafting") >= 60 |or |only if Draenei
step
talk Distributor Au'kharn##156733
buy 12 Laestrite Setting##173168 |goto 34.54,44.58
'|complete skill("Shadowlands Jewelcrafting") >= 50 |or |only if default
'|complete skill("Shadowlands Jewelcrafting") >= 55 |or |only if KulTiran
'|complete skill("Shadowlands Jewelcrafting") >= 60 |or |only if Draenei
step
Open Your Jewelcrafting Crafting Panel:
_<Create 6 Masterful Jewel Doublet>_
|tip Save these, you will need them later.
collect 6 Versatile Jewel Doublet##173123
'|complete skill("Shadowlands Jewelcrafting") >= 50 |or |only if default
'|complete skill("Shadowlands Jewelcrafting") >= 55 |or |only if KulTiran
'|complete skill("Shadowlands Jewelcrafting") >= 60 |or |only if Draenei
step
collect 8 Oriblase##173108 |or
|tip You created these in a previous step.
'|complete skill("Shadowlands Jewelcrafting") >= 50 |or |only if default
'|complete skill("Shadowlands Jewelcrafting") >= 55 |or |only if KulTiran
'|complete skill("Shadowlands Jewelcrafting") >= 60 |or |only if Draenei
step
talk Distributor Au'kharn##156733
buy 8 Laestrite Setting##173168 |goto 34.54,44.58
'|complete skill("Shadowlands Jewelcrafting") >= 50 |or |only if default
'|complete skill("Shadowlands Jewelcrafting") >= 55 |or |only if KulTiran
'|complete skill("Shadowlands Jewelcrafting") >= 60 |or |only if Draenei
step
Open Your Jewelcrafting Crafting Panel:
_<Create 4 Quick Jewel Doublet>_
|tip Save these, you will need them later.
collect 4 Versatile Jewel Doublet##173122
'|complete skill("Shadowlands Jewelcrafting") >= 50 |or |only if default
'|complete skill("Shadowlands Jewelcrafting") >= 55 |or |only if KulTiran
'|complete skill("Shadowlands Jewelcrafting") >= 60 |or |only if Draenei
step
collect 10 Laestrite Ore##171828 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Shadowlands Jewelcrafting") >= 50 |or |only if default
'|complete skill("Shadowlands Jewelcrafting") >= 55 |or |only if KulTiran
'|complete skill("Shadowlands Jewelcrafting") >= 60 |or |only if Draenei
step
Open Your Jewelcrafting Crafting Panel:
_<Create 6 Quick Laestrite Chokers>_
_<Create 6 Versatile Laestrite Chokers>_
Reach Skill 50 in Shadowlands Jewelcrafting |skill Shadowlands Jewelcrafting,50 |or |only if default
Reach Skill 55 in Shadowlands Jewelcrafting |skill Shadowlands Jewelcrafting,55 |or |only if KulTiran
Reach Skill 60 in Shadowlands Jewelcrafting |skill Shadowlands Jewelcrafting,60 |or |only if Draenei
step
talk Appraiser Au'vesk##156670
Train Deadly Jewel Cluster |learn Deadly Jewel Cluster##311863 |goto 35.20,41.35
Train Versatile Jewel Cluster |learn Versatile Jewel Cluster##311859 |goto 35.20,41.35
step
collect 24 Oriblase##173108 |or
|tip You should have these from a previous step.
'|complete skill("Shadowlands Jewelcrafting") >= 62 |or |only if default
'|complete skill("Shadowlands Jewelcrafting") >= 67 |or |only if KulTiran
'|complete skill("Shadowlands Jewelcrafting") >= 72 |or |only if Draenei
step
collect 24 Angerseye##173109 |or
|tip You should have these from a previous step.
'|complete skill("Shadowlands Jewelcrafting") >= 62 |or |only if default
'|complete skill("Shadowlands Jewelcrafting") >= 67 |or |only if KulTiran
'|complete skill("Shadowlands Jewelcrafting") >= 72 |or |only if Draenei
step
talk Distributor Au'kharn##156733
buy 12 Laestrite Setting##173168 |goto 34.54,44.58
'|complete skill("Shadowlands Jewelcrafting") >= 62 |or |only if default
'|complete skill("Shadowlands Jewelcrafting") >= 67 |or |only if KulTiran
'|complete skill("Shadowlands Jewelcrafting") >= 72 |or |only if Draenei
step
Open Your Jewelcrafting Crafting Panel:
_<Create 12 Deadly Jewel Cluster>_
|tip You can also create Versatile Jewel Clusters.
|tip Create them in pairs.
|tip Save these, you will need them later.
collect 12 Deadly Jewel Cluster##173127 |or
'|collect 12 Versatile Jewel Cluster##173129 |or
'|complete skill("Shadowlands Jewelcrafting") >= 62 |or |only if default
'|complete skill("Shadowlands Jewelcrafting") >= 67 |or |only if KulTiran
'|complete skill("Shadowlands Jewelcrafting") >= 72 |or |only if Draenei
step
talk Appraiser Au'vesk##156670
Train Quick Jewel Cluster |learn Quick Jewel Cluster##311865 |goto 35.20,41.35
Train Masterful Jewel Cluster |learn Masterful Jewel Cluster##311864 |goto 35.20,41.35
step
collect 28 Umbryl##173110 |or
|tip You should have these from a previous step.
'|complete skill("Shadowlands Jewelcrafting") >= 74 |or |only if default
'|complete skill("Shadowlands Jewelcrafting") >= 79 |or |only if KulTiran
'|complete skill("Shadowlands Jewelcrafting") >= 84 |or |only if Draenei
step
collect 28 Angerseye##173109 |or
|tip You should have these from a previous step.
'|complete skill("Shadowlands Jewelcrafting") >= 74 |or |only if default
'|complete skill("Shadowlands Jewelcrafting") >= 79 |or |only if KulTiran
'|complete skill("Shadowlands Jewelcrafting") >= 84 |or |only if Draenei
step
talk Distributor Au'kharn##156733
buy 14 Laestrite Setting##173168 |goto 34.54,44.58
'|complete skill("Shadowlands Jewelcrafting") >= 74 |or |only if default
'|complete skill("Shadowlands Jewelcrafting") >= 79 |or |only if KulTiran
'|complete skill("Shadowlands Jewelcrafting") >= 84 |or |only if Draenei
step
Open Your Jewelcrafting Crafting Panel:
_<Create 14 Masterful Jewel Cluster>_
|tip You can also create Quick Jewel Clusters.
|tip Create them in pairs.
|tip Save these, you will need them later.
collect 14 Masterful Jewel Cluster##173130 |or
'|collect 14 Quick Jewel Cluster##173128 |or
'|complete skill("Shadowlands Jewelcrafting") >= 74 |or |only if default
'|complete skill("Shadowlands Jewelcrafting") >= 79 |or |only if KulTiran
'|complete skill("Shadowlands Jewelcrafting") >= 84 |or |only if Draenei
stickystart "Ring_And_Neck_Materials"
step
talk Appraiser Au'vesk##156670
Train Deadly Sinvyr Ring |learn Deadly Sinvyr Ring##311884 |goto 35.20,41.35
Train Deadly Sinvyr Necklace |learn Deadly Sinvyr Necklace##311906 |goto 35.20,41.35
step
talk Distributor Au'kharn##156733
buy 26 Malleable Wire##183954 |goto 34.54,44.58 |or
'|complete skill("Shadowlands Jewelcrafting") >= 100 |or |only if default
'|complete skill("Shadowlands Jewelcrafting") >= 105 |or |only if KulTiran
'|complete skill("Shadowlands Jewelcrafting") >= 110 |or |only if Draenei
step
Open Your Jewelcrafting Crafting Panel:
_<Create Deadly Sinvyr Rings>_
|tip You can also create Deadly Sinvyr Necklaces.
Reach Skill 75 in Shadowlands Jewelcrafting |skill Shadowlands Jewelcrafting,75 |or |only if default
Reach Skill 80 in Shadowlands Jewelcrafting |skill Shadowlands Jewelcrafting,80 |or |only if KulTiran
Reach Skill 85 in Shadowlands Jewelcrafting |skill Shadowlands Jewelcrafting,85 |or |only if Draenei
step
talk Appraiser Au'vesk##156670
Train Quick Oxxein Ring |learn Quick Oxxein Ring##311885 |goto 35.20,41.35
Train Quick Oxxein Necklace |learn Quick Oxxein Necklace##311907 |goto 35.20,41.35
step
Open Your Jewelcrafting Crafting Panel:
_<Create Deadly Sinvyr Rings>_
|tip You can also create Deadly Sinvyr Necklaces, Quick Oxxein Ring, or Quick Oxxein Necklaces.
Reach Skill 80 in Shadowlands Jewelcrafting |skill Shadowlands Jewelcrafting,80 |or |only if default
Reach Skill 85 in Shadowlands Jewelcrafting |skill Shadowlands Jewelcrafting,85 |or |only if KulTiran
Reach Skill 90 in Shadowlands Jewelcrafting |skill Shadowlands Jewelcrafting,90 |or |only if Draenei
step
talk Appraiser Au'vesk##156670
Train Masterful Phaedrum Necklace |learn Masterful Phaedrum Necklace##311908 |goto 35.20,41.35
Train Masterful Phaedrum Ring |learn Masterful Phaedrum Ring##311907 |goto 35.20,41.35
step
Open Your Jewelcrafting Crafting Panel:
_<Create Masterful Phaedrum Rings>_
|tip You can also create Deadly Sinvyr Rings, Deadly Sinvyr Necklaces, Quick Oxxein Ring, Quick Oxxein Necklaces, or Masterful Phaedrum Necklaces.
Reach Skill 85 in Shadowlands Jewelcrafting |skill Shadowlands Jewelcrafting,85 |or |only if default
Reach Skill 90 in Shadowlands Jewelcrafting |skill Shadowlands Jewelcrafting,90 |or |only if KulTiran
Reach Skill 95 in Shadowlands Jewelcrafting |skill Shadowlands Jewelcrafting,95 |or |only if Draenei
step
talk Appraiser Au'vesk##156670
Train Versatile Solenium Necklace |learn Versatile Solenium Necklace##311909 |goto 35.20,41.35
Train Versatile Solenium Ring |learn Versatile Solenium Ring##311887 |goto 35.20,41.35
step
Open Your Jewelcrafting Crafting Panel:
_<Create Masterful Phaedrum Rings>_
|tip You can also create any other ring or neck.
Reach Skill 100 in Shadowlands Jewelcrafting |skill Shadowlands Jewelcrafting,100 |or |only if default
Reach Skill 105 in Shadowlands Jewelcrafting |skill Shadowlands Jewelcrafting,105 |or |only if KulTiran
Reach Skill 110 in Shadowlands Jewelcrafting |skill Shadowlands Jewelcrafting,110 |or |only if Draenei
step
label "Ring_And_Neck_Materials"
Ore needed will vary based on what you create
|tip Sinvyr rings and necks require two Sinvyr Ore each.
|tip Oxxein rings and necks require two Oxxein Ore each.
|tip Phaedrum rings and necks require two Phaedrum Ore each.
|tip Solenium rings and necks require two Solenium Ore each.
|tip Farm ore with Mining or purchase them from the auction house.
'|complete skill("Shadowlands Jewelcrafting") >= 100 |or |only if default
'|complete skill("Shadowlands Jewelcrafting") >= 105 |or |only if KulTiran
'|complete skill("Shadowlands Jewelcrafting") >= 110 |or |only if Draenei
step
_Congratulations!_
You Reached 100 in Shadowlands Jewelcrafting Skill. |only if default
You Reached 105 in Shadowlands Jewelcrafting Skill. |only if KulTiran
You Reached 110 in Shadowlands Jewelcrafting Skill. |only if Draenei
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Leatherworking\\Leveling Guides\\Shadowlands Leatherworking 1-100",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Shadowlands Leatherworking profession from 1-100.",
startlevel=50.0,
condition_end=function() return skill('Shadowlands Leatherworking') >= 100 end,
condition_suggested=function() return skill('Shadowlands Leatherworking') > 0 and skill('Shadowlands Leatherworking') < 100 and level >= 50 end,
},[[
step
talk Tanner Au'qil##156669
Train Leatherworking |skillmax Leatherworking,300 |goto Oribos/0 42.27,26.59
step
talk Tanner Au'qil##156669
Train Shadowlands Leatherworking |skillmax Shadowlands Leatherworking,100 |goto 42.27,26.59
step
Click Here if You Would Like to Collect All Materials First |confirm |or
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Shadowlands Leatherworking |confirm |next "Begin_Profession_Leveling" |or
'|complete skill("Shadowlands Leatherworking") >= 100 |or |next "Begin_Profession_Leveling" |only if default
'|complete skill("Shadowlands Leatherworking") >= 105 |or |next "Begin_Profession_Leveling" |only if KulTiran
stickystart "Collect_Pallid_Bone_Total"
stickystart "Collect_Callous_Hide_Total"
step
collect 655 Desolate Leather##172089 |or
|tip Farm them with Skinning or purchase them from the Auction House.
|tip These totals are approximate.
|tip You may need slightly more or less than the indicated amount.
'|complete skill("Shadowlands Leatherworking") >= 100 |or |only if default
'|complete skill("Shadowlands Leatherworking") >= 105 |or |only if KulTiran
step
label "Collect_Pallid_Bone_Total"
collect 28 Pallid Bone##172092 |or
|tip Farm them with Skinning or purchase them from the Auction House. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Shadowlands Leatherworking") >= 100 |or |only if default
'|complete skill("Shadowlands Leatherworking") >= 105 |or |only if KulTiran
step
label "Collect_Callous_Hide_Total"
collect 45 Callous Hide##172094 |or
|tip Farm them with Skinning or purchase them from the Auction House. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Shadowlands Leatherworking") >= 100 |or |only if default
'|complete skill("Shadowlands Leatherworking") >= 105 |or |only if KulTiran
step
talk Distributor Au'tem##156696
buy 72 Penumbra Thread##177062 |goto 44.48,26.50 |or 2
buy 45 Curing Salt##183955 |goto 44.48,26.50 |or 2
'|complete skill("Shadowlands Leatherworking") >= 100 |or |only if default
'|complete skill("Shadowlands Leatherworking") >= 105 |or |only if KulTiran
step
label "Begin_Profession_Leveling"
collect 45 Desolate Leather##172089 |or
|tip Farm them with Skinning or purchase them from the Auction House.
'|complete skill("Shadowlands Leatherworking") >= 11 |or |only if default
'|complete skill("Shadowlands Leatherworking") >= 16 |or |only if KulTiran
step
talk Distributor Au'tem##156696
buy 10 Penumbra Thread##177062 |goto 44.48,26.50 |or
'|complete skill("Shadowlands Leatherworking") >= 11 |or |only if default
'|complete skill("Shadowlands Leatherworking") >= 16 |or |only if KulTiran
step
Open Your Leatherworking Crafting Panel:
_<Create 5 Desolate Leather Treads>_
Reach Skill 11 in Shadowlands Leatherworking |skill Shadowlands Leatherworking,11 |only if default
Reach Skill 16 in Shadowlands Leatherworking |skill Shadowlands Leatherworking,16 |only if KulTiran
step
talk Tanner Au'qil##156669
Train Desolate Leather Gauntlets |learn Desolate Leather Gauntlets##309176 |goto 42.27,26.59
step
collect 45 Desolate Leather##172089 |or
|tip Farm them with Skinning or purchase them from the Auction House.
'|complete skill("Shadowlands Leatherworking") >= 21 |or |only if default
'|complete skill("Shadowlands Leatherworking") >= 26 |or |only if KulTiran
step
talk Distributor Au'tem##156696
buy 5 Penumbra Thread##177062 |goto 44.48,26.50 |or
'|complete skill("Shadowlands Leatherworking") >= 21 |or |only if default
'|complete skill("Shadowlands Leatherworking") >= 26 |or |only if KulTiran
step
Open Your Leatherworking Crafting Panel:
_<Create 5 Desolate Leather Gauntlets>_
Reach Skill 21 in Shadowlands Leatherworking |skill Shadowlands Leatherworking,21 |only if default
Reach Skill 26 in Shadowlands Leatherworking |skill Shadowlands Leatherworking,26 |only if KulTiran
step
talk Tanner Au'qil##156669
Train Desolate Leather Helm |learn Desolate Leather Helm##309177 |goto 42.27,26.59
step
collect 50 Desolate Leather##172089 |or
|tip Farm them with Skinning or purchase them from the Auction House.
'|complete skill("Shadowlands Leatherworking") >= 36 |or |only if default
'|complete skill("Shadowlands Leatherworking") >= 41 |or |only if KulTiran
step
talk Distributor Au'tem##156696
buy 10 Penumbra Thread##177062 |goto 44.48,26.50 |or
'|complete skill("Shadowlands Leatherworking") >= 36 |or |only if default
'|complete skill("Shadowlands Leatherworking") >= 41 |or |only if KulTiran
step
Open Your Leatherworking Crafting Panel:
_<Create 5 Desolate Leather Helm>_
Reach Skill 36 in Shadowlands Leatherworking |skill Shadowlands Leatherworking,36 |only if default
Reach Skill 41 in Shadowlands Leatherworking |skill Shadowlands Leatherworking,41 |only if KulTiran
step
talk Tanner Au'qil##156669
Train Desolate Leather Pauldrons |learn Desolate Leather Pauldrons##309179 |goto 42.27,26.59
step
collect 50 Desolate Leather##172089 |or
|tip Farm them with Skinning or purchase them from the Auction House.
'|complete skill("Shadowlands Leatherworking") >= 51 |or |only if default
'|complete skill("Shadowlands Leatherworking") >= 56 |or |only if KulTiran
step
talk Distributor Au'tem##156696
buy 15 Penumbra Thread##177062 |goto 44.48,26.50 |or
'|complete skill("Shadowlands Leatherworking") >= 51 |or |only if default
'|complete skill("Shadowlands Leatherworking") >= 56 |or |only if KulTiran
step
Open Your Leatherworking Crafting Panel:
_<Create 5 Desolate Leather Pauldrons>_
Reach Skill 51 in Shadowlands Leatherworking |skill Shadowlands Leatherworking,51 |only if default
Reach Skill 56 in Shadowlands Leatherworking |skill Shadowlands Leatherworking,56 |only if KulTiran
step
talk Tanner Au'qil##156669
Train Crafter's Mark I |learn Crafter's Mark I##343195 |goto 42.27,26.59
step
collect 75 Desolate Leather##172089 |or
|tip Farm them with Skinning or purchase them from the Auction House.
'|complete skill("Shadowlands Leatherworking") >= 60 |or |only if default
'|complete skill("Shadowlands Leatherworking") >= 65 |or |only if KulTiran
step
talk Distributor Au'tem##156696
buy 15 Penumbra Thread##177062 |goto 44.48,26.50 |or 2
buy 45 Curing Salt##183955 |goto 44.48,26.50 |or 2
'|complete skill("Shadowlands Leatherworking") >= 60 |or |only if default
'|complete skill("Shadowlands Leatherworking") >= 65 |or |only if KulTiran
step
Open Your Leatherworking Crafting Panel:
_<Create 15 Crafter's Mark Is>_
|tip You may need to create a few more or less of these.
Reach Skill 60 in Shadowlands Leatherworking |skill Shadowlands Leatherworking,60 |only if default
Reach Skill 65 in Shadowlands Leatherworking |skill Shadowlands Leatherworking,65 |only if KulTiran
step
talk Tanner Au'qil##156669
Train Shadebound Waistguard |learn Shadebound Waistguard##309236 |goto 42.27,26.59
stickystart "Collect_Callous_Hide_70"
step
collect 150 Desolate Leather##172089 |or
|tip Farm them with Skinning or purchase them from the Auction House.
'|complete skill("Shadowlands Leatherworking") >= 70 |or |only if default
'|complete skill("Shadowlands Leatherworking") >= 75 |or |only if KulTiran
step
label "Collect_Callous_Hide_70"
collect 5 Callous Hide##172094 |or
|tip Farm them with Skinning or purchase them from the Auction House.
'|complete skill("Shadowlands Leatherworking") >= 70 |or |only if default
'|complete skill("Shadowlands Leatherworking") >= 75 |or |only if KulTiran
step
talk Distributor Au'tem##156696
buy 5 Penumbra Thread##177062 |goto 44.48,26.50 |or
'|complete skill("Shadowlands Leatherworking") >= 70 |or |only if default
'|complete skill("Shadowlands Leatherworking") >= 75 |or |only if KulTiran
step
Open Your Leatherworking Crafting Panel:
_<Create 5 Shadebound Waistguards>_
Reach Skill 70 in Shadowlands Leatherworking |skill Shadowlands Leatherworking,70 |only if default
Reach Skill 75 in Shadowlands Leatherworking |skill Shadowlands Leatherworking,75 |only if KulTiran
step
talk Tanner Au'qil##156669
Train Heavy Desolate Leather |learn Heavy Desolate Leather##308899 |goto 42.27,26.59
step
collect 240 Desolate Leather##172089 |or
|tip Farm them with Skinning or purchase them from the Auction House.
'|complete skill("Shadowlands Leatherworking") >= 85 |or |only if default
'|complete skill("Shadowlands Leatherworking") >= 90 |or |only if KulTiran
step
Open Your Leatherworking Crafting Panel:
_<Create 24 Heavy Desolate Leathers>_
|tip You may need to make more or less of these.
|tip Save these, you will need them later.
Reach Skill 85 in Shadowlands Leatherworking |skill Shadowlands Leatherworking,85 |only if default
Reach Skill 90 in Shadowlands Leatherworking |skill Shadowlands Leatherworking,90 |only if KulTiran
step
talk Tanner Au'qil##156669
Train Heavy Callous Hide |learn Heavy Callous Hide##308897 |goto 42.27,26.59
step
collect 40 Callous Hide##172094 |or
|tip Farm them with Skinning or purchase them from the Auction House.
'|complete skill("Shadowlands Leatherworking") >= 88 |or |only if default
'|complete skill("Shadowlands Leatherworking") >= 93 |or |only if KulTiran
step
Open Your Leatherworking Crafting Panel:
_<Create 4 Heavy Callous Hides>_
|tip You may need to make another if you get unlucky with skillups.
|tip Save these, you will need them later.
Reach Skill 88 in Shadowlands Leatherworking |skill Shadowlands Leatherworking,88 |only if default
Reach Skill 93 in Shadowlands Leatherworking |skill Shadowlands Leatherworking,93 |only if KulTiran
step
talk Tanner Au'qil##156669
Train Shadowscale Vest |learn Shadowscale Vest##309239 |goto 42.27,26.59
step
collect 7 Pallid Bone##172092 |or
|tip Farm them with Skinning or purchase them from the Auction House.
'|complete skill("Shadowlands Leatherworking") >= 91 |or |only if default
'|complete skill("Shadowlands Leatherworking") >= 96 |or |only if KulTiran
step
collect 3 Heavy Callous Hide##172097 |or
|tip You created these in a previous step.
'|complete skill("Shadowlands Leatherworking") >= 91 |or |only if default
'|complete skill("Shadowlands Leatherworking") >= 96 |or |only if KulTiran
step
collect 6 Heavy Desolate Leather##172096 |or
|tip You created these in a previous step.
'|complete skill("Shadowlands Leatherworking") >= 91 |or |only if default
'|complete skill("Shadowlands Leatherworking") >= 96 |or |only if KulTiran
step
talk Distributor Au'tem##156696
buy 3 Penumbra Thread##177062 |goto 44.48,26.50 |or
'|complete skill("Shadowlands Leatherworking") >= 91 |or |only if default
'|complete skill("Shadowlands Leatherworking") >= 96 |or |only if KulTiran
step
Open Your Leatherworking Crafting Panel:
_<Create 1 Shadowscale Vest>_
Reach Skill 91 in Shadowlands Leatherworking |skill Shadowlands Leatherworking,91 |only if default
Reach Skill 96 in Shadowlands Leatherworking |skill Shadowlands Leatherworking,96 |only if KulTiran
step
talk Tanner Au'qil##156669
Train Shadowscale Leggings |learn Shadowscale Leggings##309242 |goto 42.27,26.59
step
collect 21 Pallid Bone##172092 |or
|tip Farm them with Skinning or purchase them from the Auction House.
'|complete skill("Shadowlands Leatherworking") >= 100 |or |only if default
'|complete skill("Shadowlands Leatherworking") >= 105 |or |only if KulTiran
step
collect 3 Heavy Callous Hide##172097 |or
|tip You created these in a previous step.
'|complete skill("Shadowlands Leatherworking") >= 100 |or |only if default
'|complete skill("Shadowlands Leatherworking") >= 105 |or |only if KulTiran
step
collect 18 Heavy Desolate Leather##172096 |or
|tip You created these in a previous step.
'|complete skill("Shadowlands Leatherworking") >= 100 |or |only if default
'|complete skill("Shadowlands Leatherworking") >= 105 |or |only if KulTiran
step
talk Distributor Au'tem##156696
buy 9 Penumbra Thread##177062 |goto 44.48,26.50 |or
'|complete skill("Shadowlands Leatherworking") >= 100 |or |only if default
'|complete skill("Shadowlands Leatherworking") >= 105 |or |only if KulTiran
step
Open Your Leatherworking Crafting Panel:
_<Create 3 Shadowscale Leggings>_
Reach Skill 100 in Shadowlands Leatherworking |skill Shadowlands Leatherworking,100 |only if default
Reach Skill 105 in Shadowlands Leatherworking |skill Shadowlands Leatherworking,105 |only if KulTiran
step
_Congratulations!_
You Reached 100 in Shadowlands Leatherworking Skill. |only if default
You Reached 105 in Shadowlands Leatherworking Skill. |only if KulTiran
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Leveling Guides\\Shadowlands Mining 1-150",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Shadowlands Mining profession from 1-150.",
startlevel=50.0,
condition_end=function() return skill('Shadowlands Mining') >= 150 end,
condition_suggested=function() return skill('Shadowlands Mining') > 0 and skill('Shadowlands Mining') < 150 and level >= 50 end,
},[[
step
talk Excavationist Au'fer##156668
Train Mining |skillmax Mining,300 |goto Oribos/0 39.30,32.95
step
talk Excavationist Au'fer##156668
Train Shadowlands Mining |skillmax Shadowlands Mining,150 |goto 39.30,32.95
step
map Bastion/0
path follow smart; loop on; ants curved; dist 30
path	56.08,53.96	55.17,55.25	54.87,56.40	54.34,56.90	53.78,56.55
path	53.12,57.13	53.00,56.53	54.02,53.97	53.41,52.70	52.78,52.63
path	51.80,53.32	51.21,54.94	50.79,55.47	50.26,54.92	50.14,54.27
path	50.34,52.67	50.57,50.95	51.53,50.65	52.52,50.45	53.08,50.47
path	53.84,50.37	54.61,49.15	54.41,47.06	54.19,45.67	53.52,43.25
path	52.76,41.50	51.84,39.73	50.56,38.10	50.31,37.07	50.74,36.22
path	51.54,35.18	50.98,33.24	51.92,32.65	51.98,30.49	51.02,28.30
path	50.27,28.12	50.45,29.69	49.72,28.95	49.65,27.39	49.05,24.66
path	48.88,22.41	48.81,21.27	49.30,19.17	49.69,18.03	49.95,16.54
path	51.25,16.04	53.15,14.23	53.39,13.63	54.36,11.94	56.29,10.37
path	57.76,10.03	57.77,11.28	58.30,13.27	57.45,14.41	56.37,15.34
path	55.53,15.72	55.24,16.82	55.12,17.68	54.67,19.66	54.07,21.59
path	53.59,22.51	53.72,23.41	56.00,22.90	55.28,25.16	54.77,27.49
path	54.49,28.85	55.28,29.97	56.18,31.71	57.06,33.15	57.65,34.12
path	58.32,34.73	58.98,35.98	60.03,33.66	60.85,33.75	61.50,34.41
path	61.56,35.33	61.45,37.00	61.18,38.10	62.64,38.47	63.32,38.58
path	63.79,35.99	64.15,34.01	63.89,32.56	63.59,31.71	64.39,31.18
path	65.16,30.33	66.53,31.33	67.16,31.72	67.73,30.85	68.42,30.83
path	68.81,31.88	68.73,32.59	67.81,33.15	67.55,33.80	67.71,34.71
path	66.74,35.51	65.80,37.08	65.67,38.48	66.16,39.29	66.57,40.21
path	66.91,41.18	68.26,40.86	70.21,40.52	71.02,40.37	71.25,41.96
path	70.75,42.64	70.00,43.70	69.51,44.82	68.51,45.36	67.50,46.38
path	66.79,46.62	65.73,46.85	64.83,46.32	64.08,45.30	63.23,44.47
path	62.67,43.68	61.82,43.68	61.15,43.27	60.46,43.95	60.58,45.43
path	61.53,46.80	62.54,48.22	62.90,49.19	63.16,49.94	63.24,51.26
path	63.06,52.32	62.32,52.80	61.68,52.77	61.09,53.83	60.08,54.13
path	60.06,53.52	60.45,51.64	60.28,50.07	59.71,48.95	58.86,49.13
path	58.72,50.57	58.33,54.04	57.51,55.41
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
|tip Enter caves along the path for additional nodes.
|tip You can also use any Shadowlands ore farming guide.
Reach Skill 150 in Shadowlands Mining |skill Shadowlands Mining,150 |only if default
Reach Skill 155 in Shadowlands Mining |skill Shadowlands Mining,155 |only if KulTiran
Reach Skill 165 in Shadowlands Mining |skill Shadowlands Mining,165 |only if HighmountainTauren
step
_Congratulations!_
You Reached 150 in Shadowlands Mining Skill. |only if default
You Reached 155 in Shadowlands Mining Skill. |only if KulTiran
You Reached 165 in Shadowlands Mining Skill. |only if HighmountainTauren
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Elethium Ore",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Elethium Ore for various profession recipes.",
startlevel=50.0,
},[[
step
map The Maw/0
path follow smart; loop on; ants curved; dist 30
path	43.44,40.73	41.61,39.96	40.47,39.04	38.99,38.94	38.65,37.64
path	37.53,39.00	36.37,39.46	35.42,39.62	35.09,37.75	34.90,36.15
path	35.13,34.75	35.98,32.22	36.57,30.62	35.51,27.56	34.19,25.20
path	33.43,24.34	32.77,23.79	32.30,22.43	31.00,20.68	30.34,19.84
path	29.36,20.45	30.25,21.33	30.72,22.91	31.15,24.43	31.47,26.14
path	31.63,28.68	31.74,30.94	30.06,32.03	28.38,32.69	27.48,30.62
path	26.68,30.14	25.58,30.09	24.79,28.01	24.20,27.28	23.57,28.60
path	22.77,30.32	21.69,32.12	21.87,33.28	21.32,35.34	21.74,37.16
path	23.90,37.33	25.30,37.13	26.08,36.69	26.91,37.98	27.13,41.11
path	27.43,43.67	28.01,42.72	29.11,42.45	29.95,42.90	31.17,43.92
path	32.13,45.54	35.46,47.33	36.43,48.31	37.43,47.18	38.48,46.58
path	39.18,47.46	39.20,50.43	40.18,51.47	41.54,51.78	42.32,51.19
path	41.85,50.03	42.32,48.36	42.43,46.74	42.54,44.68	43.45,43.21
click Elethium Deposit##349900+
|tip Track them on your minimap with "Find Minerals".
|tip Enter caves along the path for additional nodes.
|tip These are rare spawn nodes, so you likely won't find them in bulk.
collect Elethium Ore##171833 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Laestrite Ore",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Laestrite Ore for various profession recipes.",
startlevel=50.0,
},[[
step
map Bastion/0
path follow smart; loop on; ants curved; dist 30
path	56.08,53.96	55.17,55.25	54.87,56.40	54.34,56.90	53.78,56.55
path	53.12,57.13	53.00,56.53	54.02,53.97	53.41,52.70	52.78,52.63
path	51.80,53.32	51.21,54.94	50.79,55.47	50.26,54.92	50.14,54.27
path	50.34,52.67	50.57,50.95	51.53,50.65	52.52,50.45	53.08,50.47
path	53.84,50.37	54.61,49.15	54.41,47.06	54.19,45.67	53.52,43.25
path	52.76,41.50	51.84,39.73	50.56,38.10	50.31,37.07	50.74,36.22
path	51.54,35.18	50.98,33.24	51.92,32.65	51.98,30.49	51.02,28.30
path	50.27,28.12	50.45,29.69	49.72,28.95	49.65,27.39	49.05,24.66
path	48.88,22.41	48.81,21.27	49.30,19.17	49.69,18.03	49.95,16.54
path	51.25,16.04	53.15,14.23	53.39,13.63	54.36,11.94	56.29,10.37
path	57.76,10.03	57.77,11.28	58.30,13.27	57.45,14.41	56.37,15.34
path	55.53,15.72	55.24,16.82	55.12,17.68	54.67,19.66	54.07,21.59
path	53.59,22.51	53.72,23.41	56.00,22.90	55.28,25.16	54.77,27.49
path	54.49,28.85	55.28,29.97	56.18,31.71	57.06,33.15	57.65,34.12
path	58.32,34.73	58.98,35.98	60.03,33.66	60.85,33.75	61.50,34.41
path	61.56,35.33	61.45,37.00	61.18,38.10	62.64,38.47	63.32,38.58
path	63.79,35.99	64.15,34.01	63.89,32.56	63.59,31.71	64.39,31.18
path	65.16,30.33	66.53,31.33	67.16,31.72	67.73,30.85	68.42,30.83
path	68.81,31.88	68.73,32.59	67.81,33.15	67.55,33.80	67.71,34.71
path	66.74,35.51	65.80,37.08	65.67,38.48	66.16,39.29	66.57,40.21
path	66.91,41.18	68.26,40.86	70.21,40.52	71.02,40.37	71.25,41.96
path	70.75,42.64	70.00,43.70	69.51,44.82	68.51,45.36	67.50,46.38
path	66.79,46.62	65.73,46.85	64.83,46.32	64.08,45.30	63.23,44.47
path	62.67,43.68	61.82,43.68	61.15,43.27	60.46,43.95	60.58,45.43
path	61.53,46.80	62.54,48.22	62.90,49.19	63.16,49.94	63.24,51.26
path	63.06,52.32	62.32,52.80	61.68,52.77	61.09,53.83	60.08,54.13
path	60.06,53.52	60.45,51.64	60.28,50.07	59.71,48.95	58.86,49.13
path	58.72,50.57	58.33,54.04	57.51,55.41
click Laestrite Deposit##349898+
|tip Track them on your minimap with "Find Minerals".
|tip Enter caves along the path for additional nodes.
collect Laestrite Ore##171828 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Oxxein Ore",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Oxxein Ore for various profession recipes.",
startlevel=50.0,
},[[
step
map Maldraxxus/0
path follow smart; loop on; ants curved; dist 30
path	50.42,54.38	52.45,54.31	52.96,54.05	53.99,53.77	55.63,53.64
path	54.99,54.64	54.06,55.93	53.96,56.83	54.46,58.90	54.88,59.96
path	54.95,61.14	55.77,61.43	56.56,61.77	57.24,62.46	57.97,62.35
path	59.48,60.56	60.13,60.21	61.16,61.52	61.81,61.06	61.49,59.37
path	62.09,57.76	63.52,56.65	64.78,55.09	65.04,54.45	67.02,54.05
path	68.28,51.37	69.26,51.26	70.00,52.13	70.61,53.15	70.50,54.94
path	71.44,55.95	72.38,55.58	73.55,55.00	74.48,54.07	74.52,52.67
path	75.20,52.36	74.39,51.56	73.58,51.29	72.51,49.98	72.06,48.83
path	73.62,48.14	74.38,47.33	74.79,46.07	75.54,44.67	74.50,43.38
path	72.94,43.62	71.24,42.55	70.65,41.94	71.05,44.73	70.63,45.85
path	70.01,46.73	69.13,48.55	68.24,49.33	67.64,50.26	66.93,49.45
path	65.92,48.67	64.05,47.38	63.23,48.19	61.96,46.83	61.56,44.84
path	60.79,44.26	60.75,45.32	60.50,45.90	60.07,46.44	59.24,47.15
path	58.09,48.23	55.99,45.89	56.42,44.58	57.35,43.27	59.53,42.68
path	59.98,42.47	60.99,41.75	62.40,40.54	62.96,38.77	63.37,37.09
path	64.39,36.41	63.25,34.33	62.37,32.92	60.88,32.59	59.93,32.32
path	58.89,32.41	57.69,31.79	56.14,30.52	55.24,28.12	54.45,27.12
path	54.19,25.05	53.75,22.99	54.64,21.58	55.14,20.09	55.87,19.30
path	55.74,17.01	54.41,14.99	53.90,14.27	53.14,15.69	52.26,17.39
path	50.65,18.43	49.94,19.43	49.93,20.69	49.04,22.74	49.66,24.58
path	48.74,24.48	47.06,24.58	45.72,24.60	44.33,24.72	42.69,25.53
path	41.73,26.21	41.78,28.41	41.43,30.15	41.44,31.58	42.15,32.30
path	44.80,32.50	45.18,34.37	44.16,34.13	42.88,35.58	42.34,36.31
path	42.36,38.71	42.21,40.49	43.02,42.37	43.47,43.96	45.02,45.83
path	43.51,48.04	44.07,48.75	45.01,49.29	45.43,50.22	46.42,51.58
path	45.03,51.77	42.78,52.82	43.46,53.68	43.90,55.46	44.12,57.16
path	44.59,58.92	45.33,60.66	46.32,61.68	47.31,61.64	47.86,60.08
path	47.69,58.06	48.45,56.58	49.12,55.49	49.92,55.47
click Oxxein Deposit##349981+
|tip Track them on your minimap with "Find Minerals".
|tip Enter caves along the path for additional nodes.
|tip These are uncommon spawn nodes, so you likely won't find them in bulk.
collect Oxxein Ore##171830 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Phaedrum Ore",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Phaedrum Ore for various profession recipes.",
startlevel=50.0,
},[[
step
map Ardenweald/0
path follow smart; loop on; ants curved; dist 30
path	38.02,51.38	38.00,49.56	38.27,48.00	38.87,47.42	38.64,46.13
path	38.33,45.23	38.72,43.25	37.57,40.96	37.87,40.04	38.41,39.39
path	39.22,39.36	39.98,40.61	40.94,40.90	41.93,40.30	42.47,40.64
path	42.41,41.38	43.35,42.04	43.67,42.52	44.68,42.72	44.73,41.95
path	45.93,41.24	47.43,41.94	48.31,42.02	49.56,41.99	50.16,42.14
path	50.85,42.53	51.06,43.15	51.58,44.48	52.53,44.91	51.74,45.87
path	51.51,46.55	50.99,47.35	51.05,48.91	51.39,49.82	51.62,50.34
path	51.70,52.35	52.25,51.79	53.08,50.69	53.69,49.84	54.75,50.02
path	55.60,50.05	56.10,49.06	56.57,48.01	57.69,47.76	58.22,47.17
path	58.82,45.41	60.54,43.41	60.94,44.05	60.98,45.63	61.17,46.92
path	60.39,48.21	59.31,48.71	58.82,49.47	59.58,50.14	60.00,49.39
path	60.82,49.76	61.22,49.01	61.61,49.35	62.02,50.62	62.72,49.86
path	63.01,49.32	63.41,49.38	63.97,49.11	64.65,47.33	65.88,48.28
path	65.95,49.60	65.71,51.00	66.10,52.19	66.26,52.75	67.46,52.97
path	68.09,53.68	68.28,54.37	68.31,55.47	67.87,56.29	68.02,57.92
path	67.70,58.81	66.72,59.61	66.12,59.82	65.71,58.89	65.95,57.38
path	65.73,55.97	64.46,55.94	63.36,56.00	62.57,55.98	62.32,55.19
path	61.63,55.42	61.50,56.38	60.75,56.85	60.39,58.19	59.53,58.70
path	58.87,58.56	58.52,57.47	58.15,56.57	58.02,55.52	57.82,54.78
path	56.74,55.56	57.47,56.95	57.26,58.01	58.04,59.86	57.92,59.73
path	57.97,60.74	57.79,61.86	57.12,62.64	56.47,63.41	55.74,62.68
path	54.85,63.75	53.91,63.71	52.96,64.54	51.90,65.03	51.09,65.36
path	50.73,66.49	50.34,65.38	50.01,64.36	49.59,63.97	48.87,64.79
path	48.82,65.60	49.15,66.91	49.19,68.38	49.09,69.36	48.76,70.80
path	47.69,70.89	47.99,72.47	47.48,72.03	46.11,72.11	46.20,74.91
path	45.33,74.31	44.67,74.33	44.07,75.63	43.77,73.83	43.94,72.13
path	43.88,70.60	44.12,69.39	43.72,67.74	43.83,66.22	44.32,65.44
path	44.36,64.81	44.10,63.32	43.70,63.81	43.07,63.32	42.34,63.85
path	41.24,62.92	40.44,62.71	39.91,62.72	40.01,63.44	40.66,64.71
path	40.71,66.32	40.81,67.61	40.50,68.11	40.06,68.10	39.96,67.69
path	40.04,66.65	40.01,65.29	39.57,64.27	38.90,63.85	37.82,63.25
path	37.12,62.31	36.55,61.35	35.66,60.62	35.38,58.59	35.57,56.93
path	35.82,55.85	36.49,55.01	36.68,54.08	37.21,53.45	37.29,52.33
path	37.53,51.62
click Phaedrum Deposit##349982+
|tip Track them on your minimap with "Find Minerals".
|tip Enter caves along the path for additional nodes.
|tip These are uncommon spawn nodes, so you likely won't find them in bulk.
collect Phaedrum Ore##171831 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Sinvyr Ore",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Sinvyr Ore for various profession recipes.",
startlevel=50.0,
},[[
step
map Revendreth/0
path follow smart; loop on; ants curved; dist 30
path	49.02,72.05	49.47,74.07	49.05,74.69	48.02,75.52	47.84,76.40
path	46.70,75.15	45.72,74.99	45.36,73.38	44.86,72.13	43.72,72.92
path	43.06,74.13	42.52,74.83	41.75,75.14	41.62,76.40	40.39,77.99
path	39.56,77.44	38.89,76.67	39.37,75.73	39.25,74.06	39.51,73.31
path	40.02,72.18	39.99,70.35	40.13,69.50	39.55,69.00	39.72,67.57
path	40.63,67.87	41.99,67.64	42.45,67.96	43.14,68.52	43.57,68.22
path	43.11,66.29	42.46,66.34	42.10,64.88	42.48,63.56	42.81,61.85
path	43.70,63.35	44.38,62.03	45.27,61.43	45.60,62.19	46.74,63.75
path	47.40,64.57	47.88,64.13	48.52,62.45	49.39,62.61	49.72,64.30
path	49.42,65.09	49.74,65.71	50.79,66.99	51.15,67.57	52.40,67.62
path	52.90,66.46	52.59,65.14	52.59,63.91	52.27,63.02	52.53,60.16
path	53.71,60.30	54.22,60.17	54.93,59.28	56.10,58.78	56.46,58.82
path	57.22,59.62	58.82,58.50	59.78,58.66	60.07,57.24	60.13,55.65
path	61.36,55.20	61.95,54.39	62.75,55.01	63.08,54.85	63.67,54.88
path	64.47,56.15	65.05,57.26	65.62,58.88	66.23,58.49	66.87,58.80
path	67.98,60.21	68.78,59.90	69.28,59.35	69.44,58.48	70.04,58.59
path	70.80,58.53	71.51,58.22	72.99,58.18	74.14,58.57	74.77,59.44
path	74.25,60.09	73.04,60.62	72.07,60.90	72.94,62.26	73.36,63.42
path	72.84,63.69	72.03,64.32	72.72,65.51	72.58,66.16	70.90,66.75
path	71.22,68.00	71.23,68.68	72.22,70.12	73.04,71.00	74.12,71.61
path	74.72,73.24	74.94,74.07	74.99,75.42	74.57,76.57	73.71,76.60
path	73.15,75.89	72.61,75.00	72.02,73.62	71.07,73.03	70.12,72.54
path	69.52,70.95	68.95,69.49	68.00,69.42	67.29,68.96	66.71,67.64
path	65.92,67.56	65.27,67.76	64.48,68.54	64.11,68.91	63.80,68.76
path	63.55,67.70	62.60,67.42	62.15,66.92	61.50,66.16	60.80,66.37
path	59.82,65.26	59.01,65.76	59.49,66.74	59.79,69.50	60.14,70.14
path	60.81,70.60	61.31,71.49	60.53,71.65	59.75,72.11	59.65,73.40
path	59.56,74.74	58.77,73.99	58.18,73.13	57.03,73.11	55.38,73.27
path	54.63,74.30	53.72,74.78	53.00,73.64	53.00,72.69	53.40,71.46
path	54.38,70.84	54.82,70.48	54.28,69.08	53.62,68.97	52.31,69.08
path	51.82,69.20	50.96,68.87	50.49,69.41
click Sinvyr Deposit##349983+
|tip Track them on your minimap with "Find Minerals".
|tip Enter caves along the path for additional nodes.
|tip These are uncommon spawn nodes, so you likely won't find them in bulk.
collect Sinvyr Ore##171832 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Solenium Ore",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Solenium Ore for various profession recipes.",
startlevel=50.0,
},[[
step
map Bastion/0
path follow smart; loop on; ants curved; dist 30
path	56.08,53.96	55.17,55.25	54.87,56.40	54.34,56.90	53.78,56.55
path	53.12,57.13	53.00,56.53	54.02,53.97	53.41,52.70	52.78,52.63
path	51.80,53.32	51.21,54.94	50.79,55.47	50.26,54.92	50.14,54.27
path	50.34,52.67	50.57,50.95	51.53,50.65	52.52,50.45	53.08,50.47
path	53.84,50.37	54.61,49.15	54.41,47.06	54.19,45.67	53.52,43.25
path	52.76,41.50	51.84,39.73	50.56,38.10	50.31,37.07	50.74,36.22
path	51.54,35.18	50.98,33.24	51.92,32.65	51.98,30.49	51.02,28.30
path	50.27,28.12	50.45,29.69	49.72,28.95	49.65,27.39	49.05,24.66
path	48.88,22.41	48.81,21.27	49.30,19.17	49.69,18.03	49.95,16.54
path	51.25,16.04	53.15,14.23	53.39,13.63	54.36,11.94	56.29,10.37
path	57.76,10.03	57.77,11.28	58.30,13.27	57.45,14.41	56.37,15.34
path	55.53,15.72	55.24,16.82	55.12,17.68	54.67,19.66	54.07,21.59
path	53.59,22.51	53.72,23.41	56.00,22.90	55.28,25.16	54.77,27.49
path	54.49,28.85	55.28,29.97	56.18,31.71	57.06,33.15	57.65,34.12
path	58.32,34.73	58.98,35.98	60.03,33.66	60.85,33.75	61.50,34.41
path	61.56,35.33	61.45,37.00	61.18,38.10	62.64,38.47	63.32,38.58
path	63.79,35.99	64.15,34.01	63.89,32.56	63.59,31.71	64.39,31.18
path	65.16,30.33	66.53,31.33	67.16,31.72	67.73,30.85	68.42,30.83
path	68.81,31.88	68.73,32.59	67.81,33.15	67.55,33.80	67.71,34.71
path	66.74,35.51	65.80,37.08	65.67,38.48	66.16,39.29	66.57,40.21
path	66.91,41.18	68.26,40.86	70.21,40.52	71.02,40.37	71.25,41.96
path	70.75,42.64	70.00,43.70	69.51,44.82	68.51,45.36	67.50,46.38
path	66.79,46.62	65.73,46.85	64.83,46.32	64.08,45.30	63.23,44.47
path	62.67,43.68	61.82,43.68	61.15,43.27	60.46,43.95	60.58,45.43
path	61.53,46.80	62.54,48.22	62.90,49.19	63.16,49.94	63.24,51.26
path	63.06,52.32	62.32,52.80	61.68,52.77	61.09,53.83	60.08,54.13
path	60.06,53.52	60.45,51.64	60.28,50.07	59.71,48.95	58.86,49.13
path	58.72,50.57	58.33,54.04	57.51,55.41
click Solenium Deposit##349980+
|tip Track them on your minimap with "Find Minerals".
|tip Enter caves along the path for additional nodes.
|tip These are uncommon spawn nodes, so you likely won't find them in bulk.
collect Solenium Ore##171829 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Progenium Ore",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Progenium Ore for various profession recipes.",
startlevel=60,
},[[
step
You can find Echoed Jiro Genesii at:
[Zereth Mortis/0 52.48,28.99]
[63.13,19.49]
|tip Echoed Jiro Genesii grant "Gift of the Genesii" which increases Progenitor Essentia drop rate.
You can find Echoed Jiro Nascii at:
[59.72,37.36]
[69.75,33.55]
|tip Echoed Jiro Nascii grant "Gift of the Nascii" which reduces your chance to be seen by enemies, stacking two times.
|tip It is helpful to mark these Jiro with raid markers before beginning.
|tip Maintain one stack of "Gift of the Genesii" and two stacks of "Gift of the Nascii" when possible.
|tip You can only interact with them and gain the buff with Pocopoc summoned.
Click Here to Continue |confirm
|only if specialtalent(1971)
step
map Zereth Mortis/0
path follow smart; loop on; ants curved; dist 30
path	64.26,46.08	65.05,42.15	67.23,37.37	68.59,32.93	68.69,31.01
path	67.34,27.90	66.53,24.65	64.90,22.31	61.70,19.53	61.12,22.99
path	58.91,24.76	57.22,27.65	56.21,29.20	53.51,26.37	51.62,24.66
path	49.67,25.28	49.59,28.69	50.75,30.44	53.18,30.45	55.52,31.15
path	58.17,34.12	61.30,36.46	63.05,38.15	63.88,41.66
click Progenium Deposit##370400+
click Rich Progenium Deposit##370399+
click Elusive Progenium Deposit##375331+ |only if specialtalent(1971)
click Rich Elusive Progenium Deposit##375332+ |only if specialtalent(1971)
|tip Track them on your minimap with "Find Minerals".
|tip Occasionally clear the center of the path if spawns become less common.
collect Progenium Ore##187700 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Leveling Guides\\Shadowlands Skinning 1-150",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Shadowlands Skinning profession from 1-150.",
startlevel=50.0,
condition_end=function() return skill('Shadowlands Skinning') >= 150 end,
condition_suggested=function() return skill('Shadowlands Skinning') > 0 and skill('Shadowlands Skinning') < 150 and level >= 50 end,
},[[
step
talk Flayer Au'khem##156667
Train Skinning |skillmax Skinning,300 |goto Oribos/0 42.15,28.10
step
talk Flayer Au'khem##156667
Train Shadowlands Skinning |skillmax Shadowlands Skinning,150 |goto 42.15,28.10
step
map Bastion/0
path follow smart; loop on; ants curved; dist 30
path	50.43,73.92	52.22,71.70	54.84,68.53	55.59,66.21	53.35,63.49
path	54.21,61.70	53.49,59.62	54.36,57.91	55.56,55.15	58.51,51.56
path	58.25,44.11	59.82,37.15	56.28,33.72	54.34,30.47	52.67,28.59
path	48.87,31.01	47.62,33.20	46.17,33.87	44.89,35.43	43.34,35.74
path	40.71,37.39	40.80,42.59	42.22,44.71	43.04,47.52	44.85,49.92
path	44.82,53.70	45.77,59.11	46.51,63.47	47.38,68.79	46.05,69.49
path	46.76,71.68
Kill Beast enemies as you follow the path around this area
|tip Loot and skin them.
Reach Skill 150 in Shadowlands Skinning |skill Shadowlands Skinning,150 |only if default
Reach Skill 155 in Shadowlands Skinning |skill Shadowlands Skinning,155 |only if KulTiran
Reach Skill 165 in Shadowlands Skinning |skill Shadowlands Skinning,165 |only if Worgen
step
_Congratulations!_
You Reached 150 in Shadowlands Skinning Skill. |only if default
You Reached 155 in Shadowlands Skinning Skill. |only if KulTiran
You Reached 165 in Shadowlands Skinning Skill. |only if Worgen
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Callous Hide (Bastion)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Callous Hide for various profession recipes.",
startlevel=50.0,
},[[
step
map Bastion/0
path follow smart; loop on; ants curved; dist 30
path	59.20,45.79	59.36,44.21	59.39,42.90	58.77,42.46	58.17,43.36
path	57.88,44.32	57.63,44.46	56.72,44.34	56.08,44.33	55.69,43.48
path	54.89,43.15	54.58,43.82	55.06,44.40	55.66,45.39	56.20,45.79
path	56.70,45.79	57.13,45.51	57.49,45.95
kill Gilded Cloudstrider##159298+
|tip Follow the path, killing and skinning along the way.
collect Callous Hide##172094 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Callous Hide (Ardenweald)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Callous Hide for various profession recipes.",
startlevel=50.0,
},[[
step
map Ardenweald/0
path follow smart; loop on; ants curved; dist 30
path	46.76,27.09	45.90,26.54	45.66,26.19	45.35,26.01	44.98,24.74
path	44.95,24.15	45.12,23.61	45.11,22.91	45.87,21.56	46.69,21.80
path	46.39,23.29	46.12,24.29	45.97,24.65	46.06,25.52	46.37,25.87
path	46.67,26.37
kill Gorm Ravener##158364+
|tip Follow the path, killing and skinning along the way.
collect Callous Hide##172094 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Callous Hide (Maldraxxus)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Callous Hide for various profession recipes.",
startlevel=50.0,
},[[
step
map Maldraxxus/0
path follow smart; loop on; ants curved; dist 30
path	46.02,53.42	44.86,54.59	44.01,54.73	43.64,53.36	44.11,52.12
path	43.57,50.85	43.80,49.83	43.27,48.48	43.68,47.70	43.82,46.65
path	44.18,45.15	44.71,46.59	44.87,47.76	45.35,48.56	45.53,49.51
path	45.26,50.15	45.35,51.55	45.74,52.59
Kill enemies around this area
|tip Follow the path, killing and skinning Bloodskin Tauraluss, Neonate Bonetooth, and Furious Alphahoof enemies along the way.
collect Callous Hide##172094 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Desolate Leather (Bastion)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Desolate Leather for various profession recipes.",
startlevel=50.0,
},[[
step
map Bastion/0
path follow smart; loop on; ants curved; dist 30
path	59.20,45.79	59.36,44.21	59.39,42.90	58.77,42.46	58.17,43.36
path	57.88,44.32	57.63,44.46	56.72,44.34	56.08,44.33	55.69,43.48
path	54.89,43.15	54.58,43.82	55.06,44.40	55.66,45.39	56.20,45.79
path	56.70,45.79	57.13,45.51	57.49,45.95
kill Gilded Cloudstrider##159298+
|tip Follow the path, killing and skinning along the way.
collect Desolate Leather##172089 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Desolate Leather (Ardenweald)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Desolate Leather for various profession recipes.",
startlevel=50.0,
},[[
step
map Ardenweald/0
path follow smart; loop on; ants curved; dist 30
path	39.97,49.65	38.99,49.01	38.25,48.71	37.83,50.55	36.91,50.45
path	37.22,52.87	35.96,59.58	39.83,62.83	42.98,61.06	47.69,60.96
path	48.63,62.05	50.55,61.64	50.97,58.27	46.78,57.26	45.31,58.24
kill Wild Mistrunner##172966+
|tip Follow the path, killing and skinning along the way.
|tip You can kill and skin any deer, vulpin, cat, or frog.
collect Desolate Leather##172089 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Desolate Leather (Maldraxxus)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Desolate Leather for various profession recipes.",
startlevel=50.0,
},[[
step
map Maldraxxus/0
path follow smart; loop on; ants curved; dist 30
path	46.02,53.42	44.86,54.59	44.01,54.73	43.64,53.36	44.11,52.12
path	43.57,50.85	43.80,49.83	43.27,48.48	43.68,47.70	43.82,46.65
path	44.18,45.15	44.71,46.59	44.87,47.76	45.35,48.56	45.53,49.51
path	45.26,50.15	45.35,51.55	45.74,52.59
Kill enemies around this area
|tip Follow the path, killing and skinning Bloodskin Tauraluss, Neonate Bonetooth, and Furious Alphahoof enemies along the way.
collect Desolate Leather##172089 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Heavy Callous Hide (Bastion)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Heavy Callous Hide for various profession recipes.",
startlevel=50.0,
},[[
step
map Bastion/0
path follow smart; loop on; ants curved; dist 30
path	59.20,45.79	59.36,44.21	59.39,42.90	58.77,42.46	58.17,43.36
path	57.88,44.32	57.63,44.46	56.72,44.34	56.08,44.33	55.69,43.48
path	54.89,43.15	54.58,43.82	55.06,44.40	55.66,45.39	56.20,45.79
path	56.70,45.79	57.13,45.51	57.49,45.95
kill Gilded Cloudstrider##159298+
|tip Follow the path, killing and skinning along the way.
collect Heavy Callous Hide##172097 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Heavy Callous Hide (Ardenweald)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Heavy Callous Hide for various profession recipes.",
startlevel=50.0,
},[[
step
map Ardenweald/0
path follow smart; loop on; ants curved; dist 30
path	46.76,27.09	45.90,26.54	45.66,26.19	45.35,26.01	44.98,24.74
path	44.95,24.15	45.12,23.61	45.11,22.91	45.87,21.56	46.69,21.80
path	46.39,23.29	46.12,24.29	45.97,24.65	46.06,25.52	46.37,25.87
path	46.67,26.37
kill Gorm Ravener##158364+
|tip Follow the path, killing and skinning along the way.
collect Heavy Callous Hide##172097 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Heavy Callous Hide (Maldraxxus)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Heavy Callous Hide for various profession recipes.",
startlevel=50.0,
},[[
step
map Maldraxxus/0
path follow smart; loop on; ants curved; dist 30
path	46.02,53.42	44.86,54.59	44.01,54.73	43.64,53.36	44.11,52.12
path	43.57,50.85	43.80,49.83	43.27,48.48	43.68,47.70	43.82,46.65
path	44.18,45.15	44.71,46.59	44.87,47.76	45.35,48.56	45.53,49.51
path	45.26,50.15	45.35,51.55	45.74,52.59
Kill enemies around this area
|tip Follow the path, killing and skinning Bloodskin Tauraluss, Neonate Bonetooth, and Furious Alphahoof enemies along the way.
collect Heavy Callous Hide##172097 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Heavy Desolate Leather (Bastion)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Heavy Desolate Leather for various profession recipes.",
startlevel=50.0,
},[[
step
map Bastion/0
path follow smart; loop on; ants curved; dist 30
path	59.20,45.79	59.36,44.21	59.39,42.90	58.77,42.46	58.17,43.36
path	57.88,44.32	57.63,44.46	56.72,44.34	56.08,44.33	55.69,43.48
path	54.89,43.15	54.58,43.82	55.06,44.40	55.66,45.39	56.20,45.79
path	56.70,45.79	57.13,45.51	57.49,45.95
kill Gilded Cloudstrider##159298+
|tip Follow the path, killing and skinning along the way.
collect Heavy Desolate Leather##172096 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Heavy Desolate Leather (Ardenweald)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Heavy Desolate Leather for various profession recipes.",
startlevel=50.0,
},[[
step
map Ardenweald/0
path follow smart; loop on; ants curved; dist 30
path	46.76,27.09	45.90,26.54	45.66,26.19	45.35,26.01	44.98,24.74
path	44.95,24.15	45.12,23.61	45.11,22.91	45.87,21.56	46.69,21.80
path	46.39,23.29	46.12,24.29	45.97,24.65	46.06,25.52	46.37,25.87
path	46.67,26.37
kill Gorm Ravener##158364+
|tip Follow the path, killing and skinning along the way.
collect Heavy Desolate Leather##172096 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Heavy Desolate Leather (Maldraxxus)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Heavy Desolate Leather for various profession recipes.",
startlevel=50.0,
},[[
step
map Maldraxxus/0
path follow smart; loop on; ants curved; dist 30
path	46.02,53.42	44.86,54.59	44.01,54.73	43.64,53.36	44.11,52.12
path	43.57,50.85	43.80,49.83	43.27,48.48	43.68,47.70	43.82,46.65
path	44.18,45.15	44.71,46.59	44.87,47.76	45.35,48.56	45.53,49.51
path	45.26,50.15	45.35,51.55	45.74,52.59
Kill enemies around this area
|tip Follow the path, killing and skinning Bloodskin Tauraluss, Neonate Bonetooth, and Furious Alphahoof enemies along the way.
collect Heavy Desolate Leather##172096 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Pallid Bone (Bastion)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Pallid Bone for various profession recipes.",
startlevel=50.0,
},[[
step
map Bastion/0
path follow smart; loop on; ants curved; dist 30
path	52.91,79.69	53.60,79.16	54.14,78.74	54.58,78.68	55.10,78.40
path	55.42,77.18	55.82,76.46	56.11,75.86	55.76,75.40	55.24,75.08
path	54.72,75.55	54.38,76.44	53.90,77.03	53.44,77.27	52.91,77.20
path	52.62,77.81	52.13,78.90	52.08,79.77	52.14,80.69	52.05,81.51
path	52.62,81.55	52.86,80.83	52.84,80.06
Kill Etherwyrm enemies around this area
|tip Follow the path, killing and skinning along the way.
collect Pallid Bone##172092 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Pallid Bone (Ardenweald)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Pallid Bone for various profession recipes.",
startlevel=50.0,
},[[
step
map Ardenweald/0
path follow smart; loop on; ants curved; dist 30
path	46.76,27.09	45.90,26.54	45.66,26.19	45.35,26.01	44.98,24.74
path	44.95,24.15	45.12,23.61	45.11,22.91	45.87,21.56	46.69,21.80
path	46.39,23.29	46.12,24.29	45.97,24.65	46.06,25.52	46.37,25.87
path	46.67,26.37
kill Gorm Ravener##158364+
|tip Follow the path, killing and skinning along the way.
collect Pallid Bone##172092 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Pallid Bone (Maldraxxus)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Pallid Bone for various profession recipes.",
startlevel=50.0,
},[[
step
map Maldraxxus/0
path follow smart; loop on; ants curved; dist 30
path	46.02,53.42	44.86,54.59	44.01,54.73	43.64,53.36	44.11,52.12
path	43.57,50.85	43.80,49.83	43.27,48.48	43.68,47.70	43.82,46.65
path	44.18,45.15	44.71,46.59	44.87,47.76	45.35,48.56	45.53,49.51
path	45.26,50.15	45.35,51.55	45.74,52.59
Kill enemies around this area
|tip Follow the path, killing and skinning Bloodskin Tauraluss, Neonate Bonetooth, and Furious Alphahoof enemies along the way.
collect Pallid Bone##172092 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Leveling Guides\\Shadowlands Tailoring 1-100",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Shadowlands Tailoring profession from 1-100.",
startlevel=50.0,
condition_end=function() return skill('Shadowlands Tailoring') >= 100 end,
condition_suggested=function() return skill('Shadowlands Tailoring') > 0 and skill('Shadowlands Tailoring') < 100 and level >= 50 end,
},[[
step
talk Stitcher Au'phes##156681
Train Tailoring |skillmax Tailoring,300 |goto Oribos/0 45.50,31.80
step
talk Stitcher Au'phes##156681
Train Shadowlands Tailoring |skillmax Shadowlands Tailoring,100 |goto 45.50,31.80
step
Click Here if You Would Like to Collect All Materials First |confirm |or
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Shadowlands Tailoring |confirm |next "Begin_Profession_Leveling" |or
'|complete skill("Shadowlands Tailoring") >= 100 |or |next "Begin_Profession_Leveling" |only if default
'|complete skill("Shadowlands Tailoring") >= 105 |or |next "Begin_Profession_Leveling" |only if KulTiran
stickystart "Collect_Lightless_Silk_Total"
step
collect 512 Shrouded Cloth##173202 |or
|tip Farm them from humanoid enemies in Shadowlands zones or purchase them from the Auction House.
|tip These totals are approximate.
|tip You may need slightly more or less than the indicated amount.
'|complete skill("Shadowlands Tailoring") >= 100 |or |only if default
'|complete skill("Shadowlands Tailoring") >= 105 |or |only if KulTiran
step
label "Collect_Lightless_Silk_Total"
collect 76 Lightless Silk##173204 |or
|tip Farm them from humanoid enemies in Shadowlands zones or purchase them from the Auction House. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Shadowlands Tailoring") >= 100 |or |only if default
'|complete skill("Shadowlands Tailoring") >= 105 |or |only if KulTiran
step
talk Distributor Au'tem##156696
buy 167 Penumbra Thread##177062 |goto 44.47,26.51 |or
'|complete skill("Shadowlands Tailoring") >= 100 |or |only if default
'|complete skill("Shadowlands Tailoring") >= 105 |or |only if KulTiran
step
label "Begin_Profession_Leveling"
collect 18 Shrouded Cloth##173202 |or
|tip Farm them from humanoid enemies in Shadowlands zones or purchase them from the Auction House.
'|complete skill("Shadowlands Tailoring") >= 15 |or |only if default
'|complete skill("Shadowlands Tailoring") >= 20 |or |only if KulTiran
step
Open Your Tailoring Crafting Panel:
_<Create 18 Shrouded Cloth Bandage>_
|tip You may need to make a few more or less of these.
Reach Skill 15 in Shadowlands Tailoring |skill Shadowlands Tailoring,15 |only if default
Reach Skill 20 in Shadowlands Tailoring |skill Shadowlands Tailoring,20 |only if KulTiran
step
talk Stitcher Au'phes##156681
Train Shrouded Cloth Cape |learn Shrouded Cloth Cape##310871 |goto 45.50,31.80
step
collect 32 Shrouded Cloth##173202 |or
|tip Farm them from humanoid enemies in Shadowlands zones or purchase them from the Auction House.
'|complete skill("Shadowlands Tailoring") >= 31 |or |only if default
'|complete skill("Shadowlands Tailoring") >= 36 |or |only if KulTiran
step
talk Distributor Au'tem##156696
buy 32 Penumbra Thread##177062 |goto 44.47,26.51 |or
'|complete skill("Shadowlands Tailoring") >= 31 |or |only if default
'|complete skill("Shadowlands Tailoring") >= 36 |or |only if KulTiran
step
Open Your Tailoring Crafting Panel:
_<Create 8 Shrouded Cloth Capes>_
Reach Skill 31 in Shadowlands Tailoring |skill Shadowlands Tailoring,31 |only if default
Reach Skill 36 in Shadowlands Tailoring |skill Shadowlands Tailoring,36 |only if KulTiran
step
talk Stitcher Au'phes##156681
Train Shrouded Cloth Hood |learn Shrouded Cloth Hood##310873 |goto 45.50,31.80
step
collect 12 Shrouded Cloth##173202 |or
|tip Farm them from humanoid enemies in Shadowlands zones or purchase them from the Auction House.
'|complete skill("Shadowlands Tailoring") >= 37 |or |only if default
'|complete skill("Shadowlands Tailoring") >= 42 |or |only if KulTiran
step
talk Distributor Au'tem##156696
buy 8 Penumbra Thread##177062 |goto 44.47,26.51 |or
'|complete skill("Shadowlands Tailoring") >= 37 |or |only if default
'|complete skill("Shadowlands Tailoring") >= 42 |or |only if KulTiran
step
Open Your Tailoring Crafting Panel:
_<Create 2 Shrouded Cloth Hoods>_
Reach Skill 37 in Shadowlands Tailoring |skill Shadowlands Tailoring,37 |only if default
Reach Skill 42 in Shadowlands Tailoring |skill Shadowlands Tailoring,42 |only if KulTiran
step
talk Stitcher Au'phes##156681
Train Shrouded Cloth Spaulders |learn Shrouded Cloth Spaulders##310875 |goto 45.50,31.80
step
collect 30 Shrouded Cloth##173202 |or
|tip Farm them from humanoid enemies in Shadowlands zones or purchase them from the Auction House.
'|complete skill("Shadowlands Tailoring") >= 52 |or |only if default
'|complete skill("Shadowlands Tailoring") >= 57 |or |only if KulTiran
step
talk Distributor Au'tem##156696
buy 20 Penumbra Thread##177062 |goto 44.47,26.51 |or
'|complete skill("Shadowlands Tailoring") >= 52 |or |only if default
'|complete skill("Shadowlands Tailoring") >= 57 |or |only if KulTiran
step
Open Your Tailoring Crafting Panel:
_<Create 5 Shrouded Cloth Spaulders>_
Reach Skill 52 in Shadowlands Tailoring |skill Shadowlands Tailoring,52 |only if default
Reach Skill 57 in Shadowlands Tailoring |skill Shadowlands Tailoring,57 |only if KulTiran
step
talk Stitcher Au'phes##156681
Train Heavy Shrouded Cloth Bandage |learn Heavy Shrouded Cloth Bandage##310923 |goto 45.50,31.80
step
collect 40 Shrouded Cloth##173202 |or
|tip Farm them from humanoid enemies in Shadowlands zones or purchase them from the Auction House.
'|complete skill("Shadowlands Tailoring") >= 65 |or |only if default
'|complete skill("Shadowlands Tailoring") >= 70 |or |only if KulTiran
step
Open Your Tailoring Crafting Panel:
_<Create 20 Heavy Shrouded Cloth Bandages>_
|tip You may need to make a few more or less of these.
Reach Skill 65 in Shadowlands Tailoring |skill Shadowlands Tailoring,65 |only if default
Reach Skill 70 in Shadowlands Tailoring |skill Shadowlands Tailoring,70 |only if KulTiran
step
talk Stitcher Au'phes##156681
Train Shadowlace Cord |learn Shadowlace Cord##310903 |goto 45.50,31.80
stickystart "Collect_Lightless_Silk_52"
step
collect 60 Shrouded Cloth##173202 |or
|tip Farm them from humanoid enemies in Shadowlands zones or purchase them from the Auction House.
'|complete skill("Shadowlands Tailoring") >= 71 |or |only if default
'|complete skill("Shadowlands Tailoring") >= 76 |or |only if KulTiran
step
label "Collect_Lightless_Silk_52"
collect 12 Lightless Silk##173204 |or
|tip Farm them from humanoid enemies in Shadowlands zones or purchase them from the Auction House. |notinsticky
'|complete skill("Shadowlands Tailoring") >= 71 |or |only if default
'|complete skill("Shadowlands Tailoring") >= 76 |or |only if KulTiran
step
talk Distributor Au'tem##156696
buy 9 Penumbra Thread##177062 |goto 44.47,26.51 |or
'|complete skill("Shadowlands Tailoring") >= 71 |or |only if default
'|complete skill("Shadowlands Tailoring") >= 76 |or |only if KulTiran
step
Open Your Tailoring Crafting Panel:
_<Create 3 Shadowlace Cords>_
Reach Skill 71 in Shadowlands Tailoring |skill Shadowlands Tailoring,71 |only if default
Reach Skill 76 in Shadowlands Tailoring |skill Shadowlands Tailoring,76 |only if KulTiran
step
talk Stitcher Au'phes##156681
Train Shadowlace Handwraps |learn Shadowlace Handwraps##310899 |goto 45.50,31.80
stickystart "Collect_Lightless_Silk_75"
step
collect 80 Shrouded Cloth##173202 |or
|tip Farm them from humanoid enemies in Shadowlands zones or purchase them from the Auction House.
'|complete skill("Shadowlands Tailoring") >= 75 |or |only if default
'|complete skill("Shadowlands Tailoring") >= 80 |or |only if KulTiran
step
label "Collect_Lightless_Silk_75"
collect 16 Lightless Silk##173204 |or
|tip Farm them from humanoid enemies in Shadowlands zones or purchase them from the Auction House. |notinsticky
'|complete skill("Shadowlands Tailoring") >= 75 |or |only if default
'|complete skill("Shadowlands Tailoring") >= 80 |or |only if KulTiran
step
talk Distributor Au'tem##156696
buy 24 Penumbra Thread##177062 |goto 44.47,26.51 |or
'|complete skill("Shadowlands Tailoring") >= 75 |or |only if default
'|complete skill("Shadowlands Tailoring") >= 80 |or |only if KulTiran
step
Open Your Tailoring Crafting Panel:
_<Create 4 Shadowlace Handwraps>_
Reach Skill 75 in Shadowlands Tailoring |skill Shadowlands Tailoring,75 |only if default
Reach Skill 80 in Shadowlands Tailoring |skill Shadowlands Tailoring,80 |only if KulTiran
step
talk Stitcher Au'phes##156681
Train Shadowlace Cowl |learn Shadowlace Cowl##310900 |goto 45.50,31.80
stickystart "Collect_Lightless_Silk_87"
step
collect 100 Shrouded Cloth##173202 |or
|tip Farm them from humanoid enemies in Shadowlands zones or purchase them from the Auction House.
'|complete skill("Shadowlands Tailoring") >= 87 |or |only if default
'|complete skill("Shadowlands Tailoring") >= 92 |or |only if KulTiran
step
label "Collect_Lightless_Silk_87"
collect 20 Lightless Silk##173204 |or
|tip Farm them from humanoid enemies in Shadowlands zones or purchase them from the Auction House. |notinsticky
'|complete skill("Shadowlands Tailoring") >= 87 |or |only if default
'|complete skill("Shadowlands Tailoring") >= 92 |or |only if KulTiran
step
talk Distributor Au'tem##156696
buy 24 Penumbra Thread##177062 |goto 44.47,26.51 |or
'|complete skill("Shadowlands Tailoring") >= 87 |or |only if default
'|complete skill("Shadowlands Tailoring") >= 92 |or |only if KulTiran
step
Open Your Tailoring Crafting Panel:
_<Create 4 Shadowlace Cowls>_
Reach Skill 87 in Shadowlands Tailoring |skill Shadowlands Tailoring,87 |only if default
Reach Skill 92 in Shadowlands Tailoring |skill Shadowlands Tailoring,92 |only if KulTiran
step
talk Stitcher Au'phes##156681
Train Shadowlace Tunic |learn Shadowlace Tunic##310897 |goto 45.50,31.80
stickystart "Collect_Lightless_Silk_90"
step
collect 30 Shrouded Cloth##173202 |or
|tip Farm them from humanoid enemies in Shadowlands zones or purchase them from the Auction House.
'|complete skill("Shadowlands Tailoring") >= 90 |or |only if default
'|complete skill("Shadowlands Tailoring") >= 95 |or |only if KulTiran
step
label "Collect_Lightless_Silk_90"
collect 6 Lightless Silk##173204 |or
|tip Farm them from humanoid enemies in Shadowlands zones or purchase them from the Auction House. |notinsticky
'|complete skill("Shadowlands Tailoring") >= 90 |or |only if default
'|complete skill("Shadowlands Tailoring") >= 95 |or |only if KulTiran
step
talk Distributor Au'tem##156696
buy 10 Penumbra Thread##177062 |goto 44.47,26.51 |or
'|complete skill("Shadowlands Tailoring") >= 90 |or |only if default
'|complete skill("Shadowlands Tailoring") >= 95 |or |only if KulTiran
step
Open Your Tailoring Crafting Panel:
_<Create 1 Shadowlace Tunic>_
Reach Skill 90 in Shadowlands Tailoring |skill Shadowlands Tailoring,90 |only if default
Reach Skill 95 in Shadowlands Tailoring |skill Shadowlands Tailoring,95 |only if KulTiran
step
talk Stitcher Au'phes##156681
Train Shadowlace Trousers |learn Shadowlace Trousers##310901 |goto 45.50,31.80
stickystart "Collect_Lightless_Silk_96"
step
collect 60 Shrouded Cloth##173202 |or
|tip Farm them from humanoid enemies in Shadowlands zones or purchase them from the Auction House.
'|complete skill("Shadowlands Tailoring") >= 96 |or |only if default
'|complete skill("Shadowlands Tailoring") >= 101 |or |only if KulTiran
step
label "Collect_Lightless_Silk_96"
collect 12 Lightless Silk##173204 |or
|tip Farm them from humanoid enemies in Shadowlands zones or purchase them from the Auction House. |notinsticky
'|complete skill("Shadowlands Tailoring") >= 96 |or |only if default
'|complete skill("Shadowlands Tailoring") >= 101 |or |only if KulTiran
step
talk Distributor Au'tem##156696
buy 20 Penumbra Thread##177062 |goto 44.47,26.51 |or
'|complete skill("Shadowlands Tailoring") >= 96 |or |only if default
'|complete skill("Shadowlands Tailoring") >= 101 |or |only if KulTiran
step
Open Your Tailoring Crafting Panel:
_<Create 2 Shadowlace Trousers>_
Reach Skill 96 in Shadowlands Tailoring |skill Shadowlands Tailoring,96 |only if default
Reach Skill 101 in Shadowlands Tailoring |skill Shadowlands Tailoring,101 |only if KulTiran
step
talk Stitcher Au'phes##156681
Train Shadowlace Mantle |learn Shadowlace Mantle##310902 |goto 45.50,31.80
stickystart "Collect_Lightless_Silk_100"
step
collect 50 Shrouded Cloth##173202 |or
|tip Farm them from humanoid enemies in Shadowlands zones or purchase them from the Auction House.
'|complete skill("Shadowlands Tailoring") >= 100 |or |only if default
'|complete skill("Shadowlands Tailoring") >= 105 |or |only if KulTiran
step
label "Collect_Lightless_Silk_100"
collect 10 Lightless Silk##173204 |or
|tip Farm them from humanoid enemies in Shadowlands zones or purchase them from the Auction House. |notinsticky
'|complete skill("Shadowlands Tailoring") >= 100 |or |only if default
'|complete skill("Shadowlands Tailoring") >= 105 |or |only if KulTiran
step
talk Distributor Au'tem##156696
buy 20 Penumbra Thread##177062 |goto 44.47,26.51 |or
'|complete skill("Shadowlands Tailoring") >= 100 |or |only if default
'|complete skill("Shadowlands Tailoring") >= 105 |or |only if KulTiran
step
Open Your Tailoring Crafting Panel:
_<Create 2 Shadowlace Mantles>_
Reach Skill 100 in Shadowlands Tailoring |skill Shadowlands Tailoring,100 |only if default
Reach Skill 105 in Shadowlands Tailoring |skill Shadowlands Tailoring,105 |only if KulTiran
step
_Congratulations!_
You Reached 100 in Shadowlands Tailoring Skill. |only if default
You Reached 105 in Shadowlands Tailoring Skill. |only if KulTiran
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Farming Guides\\Lightless Silk (Ardenweald)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Lightless Silk for various profession recipes.",
startlevel=50.0,
},[[
step
map Ardenweald/0
path follow smart; loop on; ants curved; dist 20
path	67.55,34.11	67.83,33.40	68.17,33.90	68.58,34.21	68.70,34.95
path	68.45,36.14	68.17,35.88	67.93,35.92	67.62,35.50
Kill Spriggan enemies around this area
|tip Follow the path, killing and looting along the way.
collect Lightless Silk##173204 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Farming Guides\\Lightless Silk (Revendreth)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Lightless Silk for various profession recipes.",
startlevel=50.0,
},[[
step
map Revendreth/0
path follow smart; loop on; ants curved; dist 20
path	76.37,38.76	76.92,38.41	77.48,37.23	77.70,36.43	78.31,36.50
path	78.89,36.39	79.20,35.80	79.12,34.92	78.18,34.90	77.47,34.75
path	77.41,33.46	77.97,33.31	78.52,33.53	79.18,33.91	79.51,34.32
path	80.28,35.51	80.59,36.37	80.70,37.58	80.56,38.54	79.75,39.01
path	79.57,40.01	80.06,40.79	79.64,41.02	79.42,40.74	78.98,40.61
path	78.32,40.63	77.61,40.35	76.87,39.58
Kill enemies around this area
|tip Follow the path, killing and looting along the way.
collect Lightless Silk##173204 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Farming Guides\\Shrouded Cloth (Ardenweald)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Shrouded Cloth for various profession recipes.",
startlevel=50.0,
},[[
step
map Ardenweald/0
path follow smart; loop on; ants curved; dist 20
path	67.55,34.11	67.83,33.40	68.17,33.90	68.58,34.21	68.70,34.95
path	68.45,36.14	68.17,35.88	67.93,35.92	67.62,35.50
Kill Spriggan enemies around this area
|tip Follow the path, killing and looting along the way.
collect Shrouded Cloth##173202 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Farming Guides\\Shrouded Cloth (Revendreth)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Shrouded Cloth for various profession recipes.",
startlevel=50.0,
},[[
step
map Revendreth/0
path follow smart; loop on; ants curved; dist 20
path	76.37,38.76	76.92,38.41	77.48,37.23	77.70,36.43	78.31,36.50
path	78.89,36.39	79.20,35.80	79.12,34.92	78.18,34.90	77.47,34.75
path	77.41,33.46	77.97,33.31	78.52,33.53	79.18,33.91	79.51,34.32
path	80.28,35.51	80.59,36.37	80.70,37.58	80.56,38.54	79.75,39.01
path	79.57,40.01	80.06,40.79	79.64,41.02	79.42,40.74	78.98,40.61
path	78.32,40.63	77.61,40.35	76.87,39.58
Kill enemies around this area
|tip Follow the path, killing and looting along the way.
collect Shrouded Cloth##173202 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Protoform Synthesis\\Schematic: Bronze Helicid",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming the Schematic: Bronze Helicid for Protoform Sythesis crafting "..
" in Zereth Mortis.",
startlevel=60.0,
},[[
#include "Protofom_Synthesis_Mount_Unlock"
step
use the Tribute of the Enlightened Elders##190610
|tip These are awarded for completing the "Patterns Within Patterns" semi-weekly quest in Zereth Mortis.
|tip This quest is included in the "Zereth Mortis Daily Quests" daily guide.
collect Schematic: Bronze Helicid##189462 |q 65385 |future
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Protoform Synthesis\\Schematic: Bronzewing Vespoid",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming the Schematic: Bronzewing Vespoid for Protoform Sythesis crafting "..
" in Zereth Mortis.",
startlevel=60.0,
},[[
#include "Protofom_Synthesis_Mount_Unlock"
step
Run up the ramp |goto Gravid Repose/0 56.04,30.86 < 10 |walk
click Protoform Schematic##375391
|tip In the alcove inside the building.
collect Schematic: Bronzewing Vespoid##189473 |goto 48.98,40.49
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Protoform Synthesis\\Schematic: Buzz",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming the Schematic: Buzz for Protoform Sythesis crafting "..
" in Zereth Mortis.",
startlevel=60.0,
},[[
#include "Protofom_Synthesis_Mount_Unlock"
step
click Pulp-Covered Relic##375403+
|tip They look like small stone coffers at these locations.
|tip These treasures randomly spawn.
collect Schematic: Buzz##189474 |goto Zereth Mortis/0 42.01,34.20
You can also find them at:
[53.42,25.81]
[52.81,45.80]
[50.35,41.21]
[64.36,63.43]
[42.01,34.17]
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Protoform Synthesis\\Schematic: Deathrunner",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming the Schematic: Deathrunner for Protoform Sythesis crafting "..
" in Zereth Mortis.",
startlevel=60.0,
},[[
#include "Protofom_Synthesis_Mount_Unlock"
step
collect Schematic: Deathrunner##189457
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Protoform Synthesis\\Schematic: Forged Spiteflyer",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming the Schematic: Forged Spiteflyer for Protoform Sythesis crafting "..
" in Zereth Mortis.",
startlevel=60.0,
},[[
#include "Protofom_Synthesis_Mount_Unlock"
step
click Protoform Schematic##375389
|tip At the bottom of the hive.
collect Schematic: Forged Spiteflyer##189475 |goto Zereth Mortis/0 53.31,25.64
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Protoform Synthesis\\Schematic: Genesis Crawler",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming the Schematic: Genesis Crawler for Protoform Sythesis crafting "..
" in Zereth Mortis.",
startlevel=60.0,
},[[
#include "Protofom_Synthesis_Mount_Unlock"
step
Run up the ramp |goto Zereth Mortis/0 30.93,50.02 < 10 |only if walking
click Protoform Schematic##375694
|tip On top of the triangle.
collect Schematic: Genesis Crawler##189465 |goto 31.48,50.34
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Protoform Synthesis\\Schematic: Heartbond Lupine",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming the Schematic: Heartbond Lupine for Protoform Sythesis crafting "..
" in Zereth Mortis.",
startlevel=60.0,
},[[
#include "Protofom_Synthesis_Mount_Unlock"
step
Enter the cave |goto 51.88,62.82 < 10 |walk
kill Maw-Frenzied Lupine##179939
collect Schematic: Heartbond Lupine##190585 |goto 53.21,63.88
|tip This is not a guaranteed drop.
|tip This mob respawns every two minutes and can be farmed for the schematic.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Protoform Synthesis\\Schematic: Pale Regal Cervid",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming the Schematic: Pale Regal Cervid for Protoform Sythesis crafting "..
" in Zereth Mortis.",
startlevel=60.0,
},[[
#include "Protofom_Synthesis_Mount_Unlock"
step
collect Schematic: Pale Regal Cervid##189455
|tip This schematic is awarded for unlocking all Cypher Console abilities.
|tip When all ranks of all abilities are unlocked, you will be given the schematic.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Protoform Synthesis\\Schematic: Raptora Swooper",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming the Schematic: Raptora Swooper for Protoform Sythesis crafting "..
" in Zereth Mortis.",
startlevel=60.0,
},[[
#include "Protofom_Synthesis_Mount_Unlock"
step
Enter the building |goto 65.87,36.17 < 7 |walk
click Chamber Door
click Protoform Schematic##375371
|tip Inside the cave.
|tip This schematic is surrounded by elites.
collect Schematic: Raptora Swooper##189460 |goto 67.39,40.25
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Protoform Synthesis\\Schematic: Russet Bufonid",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming the Schematic: Russet Bufonid for Protoform Sythesis crafting "..
" in Zereth Mortis.",
startlevel=60.0,
},[[
#include "Protofom_Synthesis_Mount_Unlock"
step
use the Enlightened Broker Supplies##187780
collect Schematic: Russet Bufonid##189471
|tip This has a chance to drop from Enlightened Broker Supplies paragon reputation caches.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Protoform Synthesis\\Schematic: Sundered Zerethsteed",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming the Schematic: Sundered Zerethsteed for Protoform Sythesis crafting "..
" in Zereth Mortis.",
startlevel=60.0,
},[[
#include "Protofom_Synthesis_Mount_Unlock"
step
click Protoform Schematic##375889
collect Schematic: Sundered Zerethsteed##189456 |goto Zereth Mortis/0 60.60,30.54
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Protoform Synthesis\\Schematic: Tarachnid Creeper",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming the Schematic: Tarachnid Creeper for Protoform Sythesis crafting "..
" in Zereth Mortis.",
startlevel=60.0,
},[[
#include "Protofom_Synthesis_Mount_Unlock"
step
click Door
click Protoform Schematic##375270
|tip Inside the building.
collect Schematic: Tarachnid Creeper##189466 |goto Zereth Mortis/0 63.02,21.51
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Protoform Synthesis\\Schematic: Vespoid Flutterer",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming the Schematic: Vespoid Flutterer for Protoform Sythesis crafting "..
" in Zereth Mortis.",
startlevel=60.0,
},[[
#include "Protofom_Synthesis_Mount_Unlock"
step
click Protoform Schematic##375390
|tip You will need flying or the Locus transport network unlocked.
|tip It is located on the lower platform of the Resonant Peaks.
collect Schematic: Vespoid Flutterer##189472 |goto Zereth Mortis/0 50.32,27.05 |q 65395 |future
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Protoform Synthesis\\Schematic: Ambystan Darter",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming the Schematic: Ambystan Darter for Protoform Sythesis crafting "..
" in Zereth Mortis.",
startlevel=60.0,
},[[
#include "Protofom_Synthesis_Pet_Unlock"
step
click Protoform Schematic##375479
|tip Under the water to the left of the Ancient Hopper.
|tip The Ancient Hopper is immune to most crowd control and fairly difficult to defeat.
collect Schematic: Ambystan Darter##189418 |goto Zereth Mortis/0 78.17,53.18 |q 65327 |future
step
use the Schematic: Ambystan Darter##189418
accept Schematic Reassimilation: Ambystan Darter##65327
step
Enter the building |goto Zereth Mortis/0 61.85,58.93 < 7 |walk
clicknpc Synthesis Forge##184172
|tip Inside the cave.
turnin Schematic Reassimilation: Ambystan Darter##65327 |goto 60.53,59.39
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Protoform Synthesis\\Schematic: Archetype of Metamorphosis",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming the Schematic: Archetype of Metamorphosis for Protoform Sythesis crafting "..
" in Zereth Mortis.",
startlevel=60.0,
},[[
#include "Protofom_Synthesis_Pet_Unlock"
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Protoform Synthesis\\Schematic: Archetype of Renewal",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming the Schematic: Archetype of Renewal for Protoform Sythesis crafting "..
" in Zereth Mortis.",
startlevel=60.0,
},[[
#include "Protofom_Synthesis_Pet_Unlock"
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Protoform Synthesis\\Schematic: Archetype of Serenity",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming the Schematic: Archetype of Serenity for Protoform Sythesis crafting "..
" in Zereth Mortis.",
startlevel=60.0,
},[[
#include "Protofom_Synthesis_Pet_Unlock"
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Protoform Synthesis\\Schematic: Prototickles",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming the Schematic: Prototickles for Protoform Sythesis crafting "..
" in Zereth Mortis.",
startlevel=60.0,
},[[
#include "Protofom_Synthesis_Pet_Unlock"
step
Jump down here |goto Zereth Mortis/0 53.58,75.52 < 10 |only if walking
Jump across here |goto 53.00,75.79 < 7 |only if walking
click Protoform Schematic##375498
|tip Inch forward towards the foliage with your camera zoomed all the way in.
|tip When your character can see the chains inside, move carefully close to the edge.
|tip Slightly zoom out your camera and turn it until you can click the schematic.
|tip It looks like a tiny scroll case attached to the inside of the bigger chain.
collect Schematic: Prototickles##189442 |goto 52.23,75.32 |q 65354 |future
step
use the Schematic: Prototickles##189442
accept Schematic Reassimilation: Prototickles##65354
step
Enter the building |goto Zereth Mortis/0 61.85,58.93 < 7 |walk
clicknpc Synthesis Forge##184172
|tip Inside the cave.
turnin Schematic Reassimilation: Prototickles##65354 |goto 60.53,59.39
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Protoform Synthesis\\Schematic: Terror Jelly",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming the Schematic: Terror Jelly for Protoform Sythesis crafting "..
" in Zereth Mortis.",
startlevel=60.0,
},[[
#include "Protofom_Synthesis_Pet_Unlock"
step
click Protoform Schematic##375387
|tip On top of the pillar.
|tip You will need to glide with a glider from the triangle arch to the north or fly.
collect Schematic: Terror Jelly##189443 |goto Zereth Mortis/0 67.22,32.62 |q 65355 |future
step
use the Schematic: Terror Jelly##189443
accept Schematic Reassimilation: Terror Jelly##65355
step
Enter the building |goto Zereth Mortis/0 61.85,58.93 < 7 |walk
clicknpc Synthesis Forge##184172
|tip Inside the cave.
turnin Schematic Reassimilation: Terror Jelly##65355 |goto 60.53,59.39
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Protoform Synthesis\\Schematic: Archetype of Cunning",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming the Schematic: Archetype of Cunning for Protoform Sythesis crafting "..
" in Zereth Mortis.",
startlevel=60.0,
},[[
#include "Protofom_Synthesis_Pet_Unlock"
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Protoform Synthesis\\Schematic: Archetype of Discovery",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming the Schematic: Archetype of Discovery for Protoform Sythesis crafting "..
" in Zereth Mortis.",
startlevel=60.0,
},[[
#include "Protofom_Synthesis_Pet_Unlock"
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Protoform Synthesis\\Schematic: Archetype of Predation",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming the Schematic: Archetype of Predation for Protoform Sythesis crafting "..
" in Zereth Mortis.",
startlevel=60.0,
},[[
#include "Protofom_Synthesis_Pet_Unlock"
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Protoform Synthesis\\Schematic: Tunneling Vombata",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming the Schematic: Tunneling Vombata for Protoform Sythesis crafting "..
" in Zereth Mortis.",
startlevel=60.0,
},[[
#include "Protofom_Synthesis_Pet_Unlock"
step
Follow the path |goto Locrian Esper/0 48.64,50.77 < 7 |walk
Continue down the path |goto 56.17,68.70 < 7 |walk
click Protoform Schematic##375693
|tip At the base of the rubble inside the tunnel.
collect Schematic: Tunneling Vombata##189448 |goto 74.78,50.49 |q 65361 |future
step
use the Schematic: Tunneling Vombata##189448
accept Schematic Reassimilation: Tunneling Vombata##65361
step
Enter the building |goto Zereth Mortis/0 61.85,58.93 < 7 |walk
clicknpc Synthesis Forge##184172
|tip Inside the cave.
turnin Schematic Reassimilation: Tunneling Vombata##65361 |goto 60.53,59.39
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Protoform Synthesis\\Schematic: Viperid Menace",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming the Schematic: Viperid Menace for Protoform Sythesis crafting "..
" in Zereth Mortis.",
startlevel=60.0,
},[[
#include "Protofom_Synthesis_Pet_Unlock"
step
Enter the cave |goto Zereth Mortis/0 59.28,81.38
click Tablet
|tip Inside the cave.
Memorize the Tablet |havebuff spell:362062 |goto 57.87,78.90 |q 65360 |future
step
click Library Vault##373543
|tip Inside the cave.
collect Schematic: Viperid Menace##189447 |goto 58.84,77.06 |q 65360 |future
step
use the Schematic: Viperid Menace##189447
accept Schematic Reassimilation: Viperid Menace##65360
step
Enter the building |goto 61.85,58.93 < 7 |walk
clicknpc Synthesis Forge##184172
|tip Inside the cave.
turnin Schematic Reassimilation: Viperid Menace##65360 |goto 60.53,59.39
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Protoform Synthesis\\Schematic: Archetype of Multiplicity",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming the Schematic: Archetype of Multiplicity for Protoform Sythesis crafting "..
" in Zereth Mortis.",
startlevel=60.0,
},[[
#include "Protofom_Synthesis_Pet_Unlock"
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Protoform Synthesis\\Schematic: Archetype of Survival",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming the Schematic: Archetype of Survival for Protoform Sythesis crafting "..
" in Zereth Mortis.",
startlevel=60.0,
},[[
#include "Protofom_Synthesis_Pet_Unlock"
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Protoform Synthesis\\Schematic: Archetype of Vigilance",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming the Schematic: Archetype of Vigilance for Protoform Sythesis crafting "..
" in Zereth Mortis.",
startlevel=60.0,
},[[
#include "Protofom_Synthesis_Pet_Unlock"
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Protoform Synthesis\\Schematic: Fierce Scarabid",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming the Schematic: Fierce Scarabid for Protoform Sythesis crafting "..
" in Zereth Mortis.",
startlevel=60.0,
},[[
#include "Protofom_Synthesis_Pet_Unlock"
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Protoform Synthesis\\Schematic: Leaping Leporid",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming the Schematic: Leaping Leporid for Protoform Sythesis crafting "..
" in Zereth Mortis.",
startlevel=60.0,
},[[
#include "Protofom_Synthesis_Pet_Unlock"
step
click Protoform Schematic##375383
|tip Up on the large round tree branch.
|tip You will need flying or a covenant transport ability to reach this.
|tip You can also reach it using the frog during the "Frog'it" world quest.
collect Schematic: Leaping Leporid##189444 |goto Zereth Mortis/0 58.40,74.42 |q 65357 |future
step
use the Schematic: Leaping Leporid##189444
accept Schematic Reassimilation: Leaping Leporid##65357
step
Enter the building |goto 61.85,58.93 < 7 |walk
clicknpc Synthesis Forge##184172
|tip Inside the cave.
turnin Schematic Reassimilation: Leaping Leporid##65357 |goto 60.53,59.39
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Protoform Synthesis\\Schematic: Shelly",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming the Schematic: Shelly for Protoform Sythesis crafting "..
" in Zereth Mortis.",
startlevel=60.0,
},[[
#include "Protofom_Synthesis_Pet_Unlock"
step
Enter the cave |goto Zereth Mortis/0 59.24,81.48 < 10 |walk
click Protoform Schematic##375486
|tip High up on the back of the book case inside the cave.
|tip Point your camera towards the floor to see the schematic.
|tip You will need a covenant transport ability or Zereth Mortis gear with the Dimensional Translocator ability to reach this.
collect Schematic: Shelly##189446 |goto Zereth Mortis/0 57.83,77.84 |q 65359 |future
step
use the Schematic: Shelly##189446
accept Schematic Reassimilation: Shelly##65359
step
Enter the building |goto Zereth Mortis/0 61.85,58.93 < 7 |walk
clicknpc Synthesis Forge##184172
|tip Inside the cave.
turnin Schematic Reassimilation: Shelly##65359 |goto 60.53,59.39
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Protoform Synthesis\\Schematic: Archetype of Animation",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming the Schematic: Archetype of Animation for Protoform Sythesis crafting "..
" in Zereth Mortis.",
startlevel=60.0,
},[[
#include "Protofom_Synthesis_Pet_Unlock"
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Protoform Synthesis\\Schematic: Stabilized Geomental",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming the Schematic: Stabilized Geomental for Protoform Sythesis crafting "..
" in Zereth Mortis.",
startlevel=60.0,
},[[
#include "Protofom_Synthesis_Pet_Unlock"
step
kill Lihuvim##182169
|tip This is the sixth boss of the Sepulcher of the First Ones raid.
|tip This schematic will drop on any difficulty, but is not guranteed to drop.
collect Schematic: Stabilized Geomental##189437 |q 65336 |future
step
use the Schematic: Stabilized Geomental##189437
accept Schematic Reassimilation: Stabilized Geomental##65336
step
Enter the building |goto Zereth Mortis/0 61.85,58.93 < 7 |walk
clicknpc Synthesis Forge##184172
|tip Inside the cave.
turnin Schematic Reassimilation: Stabilized Geomental##65336 |goto 60.53,59.39
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Protoform Synthesis\\Schematic: Archetype of Malice",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming the Schematic: Archetype of Malice for Protoform Sythesis crafting "..
" in Zereth Mortis.",
startlevel=60.0,
},[[
#include "Protofom_Synthesis_Pet_Unlock"
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Protoform Synthesis\\Schematic: Archetype of Motion",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming the Schematic: Archetype of Motion for Protoform Sythesis crafting "..
" in Zereth Mortis.",
startlevel=60.0,
},[[
#include "Protofom_Synthesis_Pet_Unlock"
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Protoform Synthesis\\Schematic: Archetype of Satisfaction",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming the Schematic: Archetype of Satisfaction for Protoform Sythesis crafting "..
" in Zereth Mortis.",
startlevel=60.0,
},[[
#include "Protofom_Synthesis_Pet_Unlock"
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Protoform Synthesis\\Schematic: Multichicken",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming the Schematic: Multichicken for Protoform Sythesis crafting "..
" in Zereth Mortis.",
startlevel=60.0,
},[[
#include "Protofom_Synthesis_Pet_Unlock"
step
click Lost Ovoid##375538+
|tip They look like small brown orbs usually found on larger metal orbs around Zereth Mortis.
|tip They do not sparkle like normal lootable objects.
collect 5 Lost Ovoid##190239 |q 65624 |future
You can find them at these locations:
[Zereth Mortis/0 41.36,69.38]
[34.54,49.70]
[35.95,46.03]
[39.15,46.99]
[39.35,50.97]
[44.60,51.91]
[34.67,69.25]
[34.30,66.54]
[49.22,71.70]
[50.80,70.86]
[55.14,76.78]
[57.19,77.78]
[60.86,75.90]
[58.87,65.26]
[54.21,65.10]
[60.88,42.98]
[34.52,49.69]
[43.22,84.90]
step
Enter the cave |goto Zereth Mortis/0 52.51,73.41 < 10 |walk
click Missing Ovoid
Return the Missing Ovoids |q 65624 |future |goto 53.62,72.64
step
click Mistaken Ovoid##375411
|tip Inside the cave.
collect Schematic: Multichicken##189435 |goto Zereth Mortis/0 53.66,72.63 |q 65333 |future
step
use the Schematic: Multichicken##189435
accept Schematic Reassimilation: Multichicken##65333
step
Enter the building |goto Zereth Mortis/0 61.85,58.93 < 7 |walk
clicknpc Synthesis Forge##184172
|tip Inside the cave.
turnin Schematic Reassimilation: Multichicken##65333 |goto 60.53,59.39
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Protoform Synthesis\\Schematic: Violent Poultrid",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming the Schematic: Violent Poultrid for Protoform Sythesis crafting "..
" in Zereth Mortis.",
startlevel=60.0,
},[[
#include "Protofom_Synthesis_Pet_Unlock"
step
label "Wait_For_Daily_Quest"
Wait for the "Cluck, Cluck, Boom" Daily Quest |complete questactive(65256) or completedq(65334)
|tip This daily quest has a chance to be offered by Firim each day in Zereth Mortis.
|tip This schematic is not always awarded for completion of this daily quest.
step
talk Firim##177958
|tip Inside the cave.
accept Cluck, Cluck, Boom##65256 |goto Zereth Mortis/0 34.22,48.64 |or
'|complete itemcount(189436) >= 1 or completedq(65334) |or
step
use the Kinematic Micro-Life Recalibrator##188697
|tip Use it on Malfunctioned Poultrid.
|tip They look like sparking robotic chickens on the ground around this area.
|tip They appear on your minimap as yellow dots.
Recalibrate #10# Malfunctioned Poultrid |q 65256/1 |goto 39.08,51.27 |or
You can find more around:
[38.40,55.45]
[40.56,64.28]
[44.13,67.52]
'|complete itemcount(189436) >= 1 or completedq(65334) |or
step
talk Firim##177958
|tip Inside the cave.
turnin Cluck, Cluck, Boom##65256 |goto 34.22,48.64 |or
'|complete itemcount(189436) >= 1 or completedq(65334) |or
step
collect Schematic: Violent Poultrid##189436 |q 65334 |future |or
'|complete completedq(65256) and not (itemcount(189436) >= 1 or completedq(65334)) |next "Wait_For_Daily_Quest" |or
step
use the Schematic: Violent Poultrid##189436
accept Schematic Reassimilation: Violent Poultrid##65334
step
Enter the building |goto Zereth Mortis/0 61.85,58.93 < 7 |walk
clicknpc Synthesis Forge##184172
|tip Inside the cave.
turnin Schematic Reassimilation: Violent Poultrid##65334 |goto 60.53,59.39
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Protoform Synthesis\\Schematic: Archetype of Focus",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming the Schematic: Archetype of Focus for Protoform Sythesis crafting "..
" in Zereth Mortis.",
startlevel=60.0,
},[[
#include "Protofom_Synthesis_Pet_Unlock"
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Protoform Synthesis\\Schematic: Omnipotential Core",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming the Schematic: Omnipotential Core for Protoform Sythesis crafting "..
" in Zereth Mortis.",
startlevel=60.0,
},[[
#include "Protofom_Synthesis_Pet_Unlock"
step
click Rondure Alcove Arrangement
|tip You will need flying or the locus network to reach this.
|tip The symbol is on a pillar underneath the upper platform.
Unlock the Rondure Alcove Arrangement |q 65378 |future |goto Zereth Mortis/0 50.45,27.60
step
Farm 60 cosmic energy
|tip Kill enemies in the white cosmic pools and collect the orbs they drop.
Click Here to Continue |confirm |goto 50.77,28.25 |q 65348 |future
step
click Locus Shift |goto Gravid Repose/0 36.43,31.54
Transport to Rondure Alcove |goto Zereth Mortis/0 43.02,39.78 < 20 |c |noway |q 65348 |future
|tip To the southwest where the roads converge.
step
click Protoform Schematic##375270
|tip Jump from the center sphere on the floor across the smaller spheres to the archway.
|tip Avoid lighter colored floating spheres that knock you back.
|tip You will not be able to jump on top of the arch, but you can land in the air in front of it at the top.
|tip Turn your character sideways and you'll see the schematic against the front of the arch on top.
collect Schematic: Omnipotential Core##189440 |goto Zereth Mortis/0 42.77,40.60 |q 65348 |future
step
use the Schematic: Omnipotential Core##189440
accept Schematic Reassimilation: Omnipotential Core##65348
step
Enter the building |goto Zereth Mortis/0 61.85,58.93 < 7 |walk
clicknpc Synthesis Forge##184172
|tip Inside the cave.
turnin Schematic Reassimilation: Omnipotential Core##65348 |goto 60.53,59.39
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Protoform Synthesis\\Schematic: Resonant Echo",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming the Schematic: Resonant Echo for Protoform Sythesis crafting "..
" in Zereth Mortis.",
startlevel=60.0,
},[[
#include "Protofom_Synthesis_Pet_Unlock"
step
click Crystallized Echo of the First Song##375974+
|tip They look like small rotating white crystals with music notes above them.
|tip You can find them behind waterfalls on Sepulcher Isle.
|tip This schematic is not a guaranteed drop.
collect Schematic: Resonant Echo##189441 |goto Zereth Mortis/0 77.40,45.32 |q 65351 |future
You can find more around:
[78.29,53.16]
[78.19,54.38]
[77.62,59.04]
[77.57,60.43]
step
use the Schematic: Resonant Echo##189441
accept Schematic Reassimilation: Resonant Echo##65351
step
Enter the building |goto Zereth Mortis/0 61.85,58.93 < 7 |walk
clicknpc Synthesis Forge##184172
|tip Inside the cave.
turnin Schematic Reassimilation: Resonant Echo##65351 |goto 60.53,59.39
]])
