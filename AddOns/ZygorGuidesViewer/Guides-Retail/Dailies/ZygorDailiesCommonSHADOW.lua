local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if ZGV:DoMutex("DailiesCSHADOW") then return end
ZygorGuidesViewer.GuideMenuTier = "SHA"
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Shadowlands (50-60)\\Ardenweald World Quests",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing world quests in Ardenweald.",
condition_suggested=function() return level >= 50 end,
startlevel=50.0,
worldquestzone={1550,1565},
patch='90001',
},[[
step
label "Choose_World_Quest"
#include "Shadow_Choose_World_Quests"
step
label quest-60872
accept A Dangerous Harvest##60872 |goto Ardenweald/0 50.90,38.01
|tip You will accept this quest automatically.
step
Transform into an Ardenmoth |invehicle |goto 50.90,38.01 |q 60872
|tip Use the "Ardenmoth Transformation" ability that appears on-screen.
step
click Animacone##353874+
|tip They look like glowing blue acorns on the ground around this area.
collect 10 Animacone##180447 |q 60872/1 |goto 50.90,38.01
|next "Shadow_World_Quest_Emissaries"
step
label quest-60950
accept A Matter of Stealth##60950 |goto Ardenweald/0 70.94,33.05
|tip You will accept this quest automatically.
step
talk Amberfoot##170928
Tell her _"I'm ready for the disguise."_
Obtain a Disguise from Amberfoot |q 60950/1 |goto 70.94,33.05
step
click Dread Rose Bush+
|tip They look like clusters of shrubs on the ground around this area.
Enrage #8# Fallen Sylvar |q 60950/2 |goto 72.15,34.95
|tip Avoid the large purple circles surrounding Blighted Hunters.
|tip Use the "Shake it Off!" ability that appears on-screen after clicking Dread Rose Bushes near Fallen Sylvar.
|next "Shadow_World_Quest_Emissaries"
step
label quest-60899
accept A Night in the Woods##60899 |goto Ardenweald/0 27.30,58.05
|tip You will accept this quest automatically.
step
Search around for the patrol
|tip They appear on your minimap as a yellow dot.
|tip A group of six NPCs walk around.
Kill enemies around this area
|tip They will attack your patrol.
|tip They are elite, so you may need help with this.
Go on patrol |q 60899/1 |goto Ardenweald/0 27.30,58.05
|next "Shadow_World_Quest_Emissaries"
step
label quest-60649
accept A Thorn In Their Side##60649 |goto Ardenweald/0 45.26,72.35
|tip You will accept this quest automatically.
step
click Pulsing Animacone##353194+
|tip They look like white acorns on the ground around this area.
use the Pulsing Animacone##180170+
|tip Use them standing on top of Enervated Spirits around this area.
Kill enemies around this area
Disrupt the Drust's Efforts |q 60649/1 |goto 45.26,72.35
|next "Shadow_World_Quest_Emissaries"
step
label quest-61948
accept Airborne Defense Force##61948 |goto Ardenweald/0 51.27,44.07
|tip You will accept this quest automatically.
step
talk Faryl##173377
Tell him _"Begin pet battle."_
Defeat Faryl in a Pet Battle |q 61948/1 |goto 51.27,44.07
|next "Shadow_World_Quest_Emissaries"
step
label quest-61595
accept Alchemy: Potion of Hibernal Rest##61595 |goto Ardenweald/0 48.33,51.28
|tip You will accept this quest automatically.
|polish
step
click Crafter's Basket##356878
collect 18 Fresh Dreamroot Trimmings##181985 |goto 48.33,51.28 |q 61595
step
Open Your Alchemy Crafting Panel:
_<Create 9 Powdered Dreamroot>_
|tip It is in the Quest Recipes category under Shadowlands Alchemy.
collect 9 Powdered Dreamroot##181984 |goto 48.33,51.28 |q 61595
step
Open Your Alchemy Crafting Panel:
_<Create 3 Liquid Sleep>_
|tip It is in the Quest Recipes category under Shadowlands Alchemy.
collect 3 Liquid Sleep##181983 |goto 48.33,51.28 |q 61595
step
Open Your Alchemy Crafting Panel:
_<Create 1 Potion of Hibernal Rest>_
|tip It is in the Quest Recipes category under Shadowlands Alchemy.
collect 1 Potion of Hibernal Rest##181375 |goto 48.33,51.28 |q 61595
|next "Shadow_World_Quest_Emissaries"
step
label quest-61949
accept Ardenweald's Tricksters##61949 |goto Ardenweald/0 40.17,28.74
|tip You will accept this quest automatically.
step
clicknpc Rascal##173381
Defeat Rascal in a Pet Battle |q 61949/1 |goto 40.17,28.74
|next "Shadow_World_Quest_Emissaries"
step
label quest-61435
accept Blacksmithing: Stalker Arrowheads##61435 |goto Ardenweald/0 48.33,51.28
|tip You will accept this quest automatically.
|polish
step
click Crafter's Basket##356878
collect 1 Wooden Arrowhead Mold##181789 |goto 48.33,51.28 |q 61435
collect 5 Borrowed Twilight Bark##181860 |goto 48.33,51.28 |q 61435
collect 10 Borrowed Phaedrum Ore##181783 |goto 48.33,51.28 |q 61435
step
Open Your Blacksmithing Crafting Panel:
_<Create 5 Molten Phaedrum>_
|tip It is in the Quest Recipes category under Shadowlands Blacksmithing.
collect 5 Molten Phaedrum##181787 |goto 48.50,51.66 |q 61435
step
Open Your Blacksmithing Crafting Panel:
_<Create 5 Unrefined Arrowheads>_
|tip It is in the Quest Recipes category under Shadowlands Blacksmithing.
collect 5 Unrefined Arrowheads##181788 |goto 48.50,51.66 |q 61435
step
Open Your Blacksmithing Crafting Panel:
_<Create 1 Bundle of Stalker Arrowheads>_
|tip It is in the Quest Recipes category under Shadowlands Blacksmithing.
collect 1 Bundle of Stalker Arrowheads##181784 |goto 48.50,51.66 |q 61435
|next "Shadow_World_Quest_Emissaries"
step
label quest-61596
accept Cooking: Arden Apple Pie##61596 |goto Ardenweald/0 48.33,51.28
|tip You will accept this quest automatically.
step
click Crafter's Basket##356878
collect 1 Sack of Arden Oats##181988 |goto 48.33,51.28 |q 61596
collect 3 Fresh Arden Apples##181987 |goto 48.33,51.28 |q 61596
step
cast Cooking Fire##818
Open Your Cooking Crafting Panel:
<Create 1 Oat Pie Crust>_
|tip It is in the Quest Recipes category under Shadowlands Cooking.
|tip Stand next to the fire while cooking.
collect 1 Oat Pie Crust##182101 |goto 48.33,51.28 |q 61596
step
Open Your Cooking Crafting Panel:
_<Create 3 Sliced Arden Apples>_
|tip It is in the Quest Recipes category under Shadowlands Cooking.
|tip Stand next to the fire while cooking.
collect 3 Sliced Arden Apples##181986 |goto 48.33,51.28 |q 61596
step
cast Cooking Fire##818
Open Your Cooking Crafting Panel:
_<Create 1 Arden Apple Pie>_
|tip It is in the Quest Recipes category under Shadowlands Cooking.
|tip Stand next to the fire while cooking.
collect 1 Arden Apple Pie##181381 |goto 48.33,51.28 |q 61596
|next "Shadow_World_Quest_Emissaries"
step
label quest-61631
accept Drust Between You and Me##61631 |goto Ardenweald/0 45.31,63.99
|tip You will accept this quest automatically.
stickystart "Slay_15_Drust_Forces"
step
kill Ingra Krazic##174732 |q 61631/2 |goto 45.26,65.76
step
label "Slay_15_Drust_Forces"
Kill enemies around this area
Slay #15# Drust Forces |q 61631/1 |goto 45.31,63.99
|next "Shadow_World_Quest_Emissaries"
step
label quest-61440
accept Enchanting: Boundless Basket##61440 |goto Ardenweald/0 48.33,51.28
|tip You will accept this quest automatically.
step
click Crafter's Basket##356878
collect Antique Stalker's Bow##181991 |goto 48.33,51.28 |q 61440
step
cast Disenchant##324750
|tip Cast it on the Antique Stalker's Bow in your bags.
collect 1 Twilight Dust##181990 |goto 48.33,51.28 |q 61440
step
Open Your Enchanting Crafting Panel:
_<Create 1 Boundless Basket>_
|tip It is in the Quest Recipes category under Shadowlands Enchanting.
collect 1 Boundless Basket##181384 |goto 48.33,51.28 |q 61440
|next "Shadow_World_Quest_Emissaries"
step
label quest-61597
accept Engineering: Bug Zapifier##61597 |goto Ardenweald/0 48.33,51.28
|tip You will accept this quest automatically.
|polish
step
click Crafter's Basket##356878
collect 5 Machined Phaedrum Bar##181994 |goto 48.33,51.28 |q 61597
step
Open Your Engineering Crafting Panel:
_<Create 5 Electro Cable>_
|tip It is in the Quest Recipes category under Shadowlands Engineering.
collect 5 Electro Cable##181992 |goto 48.53,51.66 |q 61597
step
Open Your Engineering Crafting Panel:
_<Create 2 Energized Battery>_
|tip It is in the Quest Recipes category under Shadowlands Engineering.
collect 2 Energized Battery##181993 |goto 48.53,51.66 |q 61597
step
Open Your Engineering Crafting Panel:
_<Create 1 Bug Zapifier>_
|tip It is in the Quest Recipes category under Shadowlands Engineering.
collect 1 Bug Zapifier##181385 |goto 48.53,51.66 |q 61597
|next "Shadow_World_Quest_Emissaries"
step
label quest-61598
accept Fishing: Speckled Flametail##61598 |goto Ardenweald/0 56.61,54.80
|tip You will accept this quest automatically.
step
cast Fishing##131474
|tip Fish in the water until you catch enough fish.
collect 10 Speckled Flametail##181387 |q 61598/1 |goto 56.61,54.80
|next "Shadow_World_Quest_Emissaries"
step
label quest-60855
accept Gormageddon##60855 |goto Ardenweald/0 60.73,31.76
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip Use the "Wrath of Nature" ability to transform into a cat if you wish.
Clear the Dusty Burrows |q 60855/1 |goto 60.73,31.76
|next "Shadow_World_Quest_Emissaries"
step
label quest-62068
accept Gormling Piper: Crumbled Ridge##62068 |goto Ardenweald/0 62.92,36.23
|tip You will accept this quest automatically.
step
talk Master Sha'lor##158969
Tell her _"I need a flute."_
collect Fae Flute##182611 |q 62068/1 |goto 62.92,36.23
step
use the Fae Flute##182611
|tip Use it near Fresh Gormling Burrows.
|tip They look like piles of loose dirt on the ground around this area.
clicknpc Burrowing Gormling##173561+
Coax and Bag #8# Burrowing Gormlings |q 62068/2 |goto 71.97,35.77
|next "Shadow_World_Quest_Emissaries"
step
label quest-61717
accept Gormling Piper: Tranquil Pools##61717 |goto Ardenweald/0 62.92,36.23
|tip You will accept this quest automatically.
step
talk Master Sha'lor##158969
Tell her _"I need a flute."_
collect Fae Flute##182189 |q 61717/1 |goto 62.92,36.23
You can also find her at [64.84,38.84]
step
use the Fae Flute##182189
|tip Use it near Fresh Gormling Burrows.
|tip They look like piles of loose dirt on the ground around this area.
Coax and Bag #8# Burrowing Gormlings |q 61717/2 |goto 62.36,40.97
|next "Shadow_World_Quest_Emissaries"
step
label quest-62051
accept Gormling Toss: Spirit Glen##62051 |goto Ardenweald/0 65.30,38.66
|tip You will accept this quest automatically.
step
clicknpc Gormling##173520
collect Gormling in a Bag##182600 |q 62051/1 |goto 65.30,38.66
step
Follow the path up |goto 66.94,38.91 < 30 |only if walking
use the Gormling in a Bag##182600
|tip Use it on Wayward Gormlings.
|tip They look like green and yellow glowing slugs on objects around this area.
clicknpc Wayward Gormling##168254
|tip Click them after knocking them down to bag them.
Knock and Bag #8# Wayward Gormlings |q 62051/2 |goto 67.58,33.53
|next "Shadow_World_Quest_Emissaries"
step
label quest-61394
accept Gormling Toss: Tranquil Pools##61394 |goto Ardenweald/0 65.30,38.78
|tip You will accept this quest automatically.
step
clicknpc Gormling##172175
collect Gormling in a Bag##181284 |q 61394/1 |goto 65.30,38.78
step
use the Gormling in a Bag##181284
|tip Use it on Wayward Gormlings.
|tip They look like green and yellow glowing slugs on objects around this area.
clicknpc Wayward Gormling##168254
|tip Click them after knocking them down to bag them.
Knock and Bag #8# Wayward Gormlings |q 61394/2 |goto 63.79,40.61
|next "Shadow_World_Quest_Emissaries"
step
label quest-61543
accept Herbalism: Lambent Vigil's Torch##61543 |goto Ardenweald/0 39.42,55.14
|tip You will accept this quest automatically.
|polish
step
click Lambent Vigil's Torch##356538+
|tip They look like glowing pink flowers on the ground around this area.
collect 10 Lambent Vigil's Torch##181757 |q 61543/1 |goto 39.42,55.14
|next "Shadow_World_Quest_Emissaries"
step
label quest-61599
accept Inscription: Hymnal of Reprise##61599 |goto Ardenweald/0 48.33,51.28
|tip You will accept this quest automatically.
step
click Crafter's Basket##356878
collect 10 Twilight Parchment##182286 |goto 48.33,51.28 |q 61599
collect 10 Ardenberry Pigment##181997 |goto 48.33,51.28 |q 61599
step
Open Your Inscription Crafting Panel:
_<Create 10 Ardenberry Ink>_
|tip It is in the Quest Recipes category under Shadowlands Inscription.
collect 10 Ardenberry Ink##181996 |goto 48.33,51.28 |q 61599
step
Open Your Inscription Crafting Panel:
_<Create 10 Scroll of Calming Lyrics>_
|tip It is in the Quest Recipes category under Shadowlands Inscription.
collect 10 Scroll of Calming Lyrics##181995 |goto 48.33,51.28 |q 61599
step
Open Your Inscription Crafting Panel:
_<Create 1 Hymnal of Respite>_
|tip It is in the Quest Recipes category under Shadowlands Inscription.
collect 1 Hymnal of Respite##181397 |goto 48.33,51.28 |q 61599
|next "Shadow_World_Quest_Emissaries"
step
label quest-61303
accept It's Raining Sparkles##61303 |goto Ardenweald/0 68.47,57.32
|tip You will accept this quest automatically.
step
talk Lady Moonberry##171946
Tell her _"I'm ready to rain sparkly terror."_
Speak to Lady Moonberry |q 61303/1 |goto 68.47,57.32
step
Kill Mustering enemies around this area
|tip Use the abilities on your action bar.
Slay #100# Mustering Enemies |q 61303/2 |goto 70.26,54.72
|next "Shadow_World_Quest_Emissaries"
step
label quest-61601
step
accept Jewelcrafting: Gem Studded Bangle##61601 |goto Ardenweald/0 48.33,51.28
|tip You will accept this quest automatically.
|polish
step
click Crafter's Basket##356878
collect 1 Polished Phedrum Rod##182000 |goto 48.33,51.28 |q 61601
collect 3 Handful of Glimmering Gemstones##182289 |goto 48.33,51.28 |q 61601
step
Open Your Jewelcrafting Crafting Panel:
_<Create 1 Engraved Phaedrum Band>_
|tip It is in the Quest Recipes category under Shadowlands Jewelcrafting.
collect 1 Engraved Phaedrum Band##181998 |goto 48.33,51.28 |q 61601
step
Open Your Jewelcrafting Crafting Panel:
_<Create 3 Polished Gemstones>_
|tip It is in the Quest Recipes category under Shadowlands Jewelcrafting.
collect 3 Polished Gemstones##181999 |goto 48.33,51.28 |q 61601
step
Open Your Jewelcrafting Crafting Panel:
_<Create 1 Gem Studded Bangle>_
|tip It is in the Quest Recipes category under Shadowlands Jewelcrafting.
collect 1 Gem Studded Bangle##181431 |goto 48.33,51.28 |q 61601
|next "Shadow_World_Quest_Emissaries"
step
label quest-61602
accept Leatherworking: Stalker's Leather Quiver##61602 |goto Ardenweald/0 48.33,51.28
|tip You will accept this quest automatically.
step
click Crafter's Basket##356878
collect 1 Bottle of Leather Dye##182290 |goto 48.33,51.28 |q 61602
collect 3 Runestag Leather##182003 |goto 48.33,51.28 |q 61602
step
Open Your Leatherworking Crafting Panel:
_<Create 1 Dyed Runestag Leather>_
|tip It is in the Quest Recipes category under Shadowlands Leatherworking.
collect 1 Dyed Runestag Leather##182002 |goto 48.33,51.28 |q 61602
step
Open Your Leatherworking Crafting Panel:
_<Create 2 Runestag Leather Strap>_
|tip It is in the Quest Recipes category under Shadowlands Leatherworking.
collect 2 Runestag Leather Strap##182001 |goto 48.33,51.28 |q 61602
step
Open Your Leatherworking Crafting Panel:
_<Create 1 Stalker's Leather Quiver>_
|tip It is in the Quest Recipes category under Shadowlands Leatherworking.
collect 1 Stalker's Leather Quiver##181434 |goto 48.33,51.28 |q 61602
|next "Shadow_World_Quest_Emissaries"
step
label quest-61947
accept Lurking In The Shadows##61947 |goto Ardenweald/0 39.96,64.49
|tip You will accept this quest automatically.
step
clicknpc Nightfang##173376
Defeat Nightfang in a Pet Battle |q 61947/1 |goto 39.96,64.49
|next "Shadow_World_Quest_Emissaries"
step
label quest-61530
accept Mining: Ligneous Phaedrum Cluster##61530 |goto Ardenweald/0 52.23,37.19
|tip You will accept this quest automatically.
|polish
step
click Ligneous Phaedrum Deposit##356400+
|tip They look like crystal-covered roots coming out of the ground around this area.
collect 10 Ligneous Phaedrum Ore##181718 |q 61530/1 |goto 52.23,37.19
|next "Shadow_World_Quest_Emissaries"
step
label quest-61946
accept Natural Defenders##61946 |goto Ardenweald/0 58.23,56.91
|tip You will accept this quest automatically.
step
talk Glitterdust##173372
Tell it _"Begin pet battle."_
Defeat Glitterdust in a Pet Battle |q 61946/1 |goto 58.23,56.91
|next "Shadow_World_Quest_Emissaries"
step
label quest-61815
accept Oranomonos the Everbranching##61815 |goto Ardenweald/0 20.23,63.66
|tip You will accept this quest automatically.
step
_EVERYONE:_ |grouprole EVERYONE
|tip Run away when "Seeds of Sorrow" is cast. |grouprole EVERYONE
|tip Avoid tornados from "Withered Winds." |grouprole EVERYONE
|tip Interrupt "Regrowth" whenever possible. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip At 50% health, be ready to group heal heavily for "Dirge of the Fallen Sanctum." |grouprole HEALER
|tip Dispel "Rapid Growth" on cooldown. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Manage stacks of "Implant" and swap with another tank when necessary. |grouprole TANK
kill Oranomonos the Everbranching##167527 |q 61815/1 |goto 20.23,63.66
|next "Shadow_World_Quest_Emissaries"
step
label quest-61411
accept Our Heart Will Go On##61411 |goto Ardenweald/0 67.71,24.74
|tip You will accept this quest automatically.
step
talk Zayhad, The Builder##172185
Tell it _"I'll take this acorn and recover memories within Heartwood Grove."_
Speak to Zayhad |q 61411/1 |goto 67.71,24.74
stickystart "Slay_Drust_Invaders_61411"
step
Collect #3# Good Memories |q 61411/3 |goto 68.90,25.90
|tip Use the "Recovering Memories" ability that appears on-screen at memory spots.
|tip They appear on your minimap as yellow dots.
step
label "Slay_Drust_Invaders_61411"
Kill enemies around this area
Slay #12# Drust Invaders |q 61411/2 |goto 68.90,25.90
step
talk Zayhad, The Builder##172185
Tell it _"Here are the joyful memories I collected from Heartwood Grove."_
Return the Good Memories to Zayhad |q 61411/4 |goto 67.71,24.74
|next "Shadow_World_Quest_Emissaries"
step
label quest-58975
accept Pest Removal##58975 |goto Ardenweald/0 54.66,49.10
|tip You will accept this quest automatically.
stickystart "Slay_Mature_Gorm_58975"
step
clicknpc Burrowing Mite Leg##163197+
|tip They look like wiggling bug legs sticking out of the ground around this area.
|tip Run away after clicking them to pull them out of the ground.
|tip A burrowing mite will attack you after extraction.
Extract #8# Burrowing Mites |q 58975/1 |goto 54.66,49.10
step
label "Slay_Mature_Gorm_58975"
Kill Darkwarren enemies around this area
Slay #12# Mature Gorm |q 58975/2 |goto 54.66,49.10
|next "Shadow_World_Quest_Emissaries"
step
label quest-60337
accept Pupa Trooper##60337 |goto Ardenweald/0 52.67,57.52
|tip You will accept this quest automatically.
step
label "Borrow_a_Pair_of_Enchanted_Wings"
click Basket of Enchanted Wings
|tip They appear on your minimap as yellow dots.
Borrow a Pair of Enchanted Wings |havebuff spell:313053 |goto 52.67,57.52 |q 60337 |or
'|complete completedq(60337) |or
step
click Ardenmoth Cocoon##352047+
|tip They look like large brown cocoons hanging underneath trees and platforms in the air around this area.
collect 10 Ardenmoth Cocoon##178717 |q 60337/2 |goto 52.60,60.15 |or
'|complete not hasbuff("spell:313053") and not completedq(60337) and questactive(60337) |next "Borrow_a_Pair_of_Enchanted_Wings" |or
|next "Shadow_World_Quest_Emissaries"
step
label quest-59600
accept Rotbriar Trouble##59600 |goto Ardenweald/0 62.36,24.23
|tip You will accept this quest automatically.
step
clicknpc Nature Soul##165320+
|tip They look like small sparkling animals on the ground around this area.
Kill enemies around this area
Defend the Grove of Memory |q 59600/1 |goto Ardenweald/0 62.36,24.23
|next "Shadow_World_Quest_Emissaries"
step
label quest-59825
accept Seed Hunting##59825 |goto Ardenweald/0 43.73,23.59
|tip You will accept this quest automatically.
|polish
step
click Animacone+
|tip They look like large white-topped acorns on the ground around this area.
|tip Return them to the coordinates indicated.
|tip Players will know you are carrying an Animacone because you will be illuminated.
Kill enemy players around this area
Return Animacones to Alascene and Kill Players |q 59825/1 |goto 43.73,23.59
|next "Shadow_World_Quest_Emissaries"
step
label quest-60476
accept Seize the Means of Production##60476 |goto Ardenweald/0 55.34,27.52
|tip You will accept this quest automatically.
step
Use the _"Sprigganize"_ ability
|tip It appears as a button on the screen.
Shrink to Spriggan Size |havebuff spell:347565 |goto 55.34,27.52 |q 60476
step
kill Brittlebark Mischief-Maker##168490+
Click objects around this area
|tip Look for small weapons laying on tables and benches around this area.
Collect #20# Spriggan-Sized Weaponry |q 60476/1 |goto 55.34,27.52
|next "Shadow_World_Quest_Emissaries"
step
label quest-60574
accept Shaking 'Shrooms##60574 |goto Ardenweald/0 31.42,35.25
|tip You will accept this quest automatically.
stickystart "Slay_Invading_Fae_60574"
step
click Swollen Mushroom Stalk+
|tip They look like tall green mushrooms on the ground around this area.
Shake #8# Swollen Mushroom Stalks |q 60574/1 |goto 31.42,35.25
step
label "Slay_Invading_Fae_60574"
Kill enemies around this area
Slay #16# Invading Fae |q 60574/2 |goto 31.42,35.25
|next "Shadow_World_Quest_Emissaries"
step
label quest-61603
accept Skinning: Thick Gormhide##61603 |goto Ardenweald/0 51.72,76.33
|tip You will accept this quest automatically.
step
Kill Gorm enemies around this area
|tip Skin their corpses.
collect 10 Thick Gormhide##181452 |q 61603/1 |goto 51.72,76.33
|next "Shadow_World_Quest_Emissaries"
step
label quest-60585
accept Spriggan Riot##60585 |goto Ardenweald/0 37.05,28.58
|tip You will accept this quest automatically.
stickystart "Slay_Blackthorn_Spriggans_60585"
step
talk Silkstrider Caretaker##169273
Tell them _"You're safe now."_
Rescue #6# Silkstrider Caretakers |q 60585/2 |goto 37.05,28.58
step
label "Slay_Blackthorn_Spriggans_60585"
Kill Blackthorn enemies around this area
Slay #12# Blackthorn Spriggans |q 60585/1 |goto 37.05,28.58
step
Save #25# Silkstrider Grubbies |q 60585/3 |goto 37.05,28.58
|tip Use the "Harmonious Harp" ability on-screen near Silkstrider Grubbies.
|tip They look like small blue caterpillars on the ground around this area.
|next "Shadow_World_Quest_Emissaries"
step
label quest-60770
accept Squish and Burn##60770 |goto Ardenweald/0 60.32,32.25
|tip You will accept this quest automatically.
stickystart "Squish_Larvae_60770"
step
use the Torch##180274
|tip Use it on the white egg sacks on the ground around this area.
Burn #12# Gorm Eggs |q 60770/1 |goto 60.32,32.25
step
label "Squish_Larvae_60770"
Squish #50# Larvae |q 60770/2 |goto 60.32,32.25
|tip Walk or ride over them.
|next "Shadow_World_Quest_Emissaries"
step
label quest-58993
accept Swarm Defense##58993 |goto Ardenweald/0 50.97,72.67
|tip You will accept this quest automatically.
step
clicknpc Veilwing Sentry##163633
Mount the Veilwing Sentry |q 58993/1 |goto 50.97,72.67
step
kill 45 Rootstinger Swarmling##163616 |q 58993/2 |goto 50.97,72.67
|tip They are in the air.
|tip Use the ability on your action bar.
|next "Shadow_World_Quest_Emissaries"
step
label quest-60786
accept Swarm Defense##60786 |goto Ardenweald/0 25.04,60.90
|tip You will accept this quest automatically.
step
clicknpc Veilwing Sentry##163633
Mount the Veilwing Sentry |q 60786/1 |goto 25.04,60.90
step
kill 45 Rootstinger Swarmling##163616 |q 60786/2
|tip They fly through the air towards you.
|tip Use the abilities on your action bar.
|next "Shadow_World_Quest_Emissaries"
step
label quest-61604
accept Tailoring: Cloak of Camouflage##61604 |goto Ardenweald/0 48.33,51.28
|tip You will accept this quest automatically.
|polish
step
click Crafter's Basket##356878
collect 13 Spool of Ardensilk##182006 |goto 48.33,51.28 |q 61604
step
Open Your Tailoring Crafting Panel:
_<Create 6 Ardensilk Cloth>_
|tip It is in the Quest Recipes category under Shadowlands Tailoring.
collect 6 Ardensilk Cloth##182005 |goto 48.33,51.28 |q 61604
step
Open Your Tailoring Crafting Panel:
_<Create 3 Bolt of Ardensilk Cloth>_
|tip It is in the Quest Recipes category under Shadowlands Tailoring.
collect 3 Bolt of Ardensilk Cloth##182004 |goto 48.33,51.28 |q 61604
step
Open Your Tailoring Crafting Panel:
_<Create 1 Cloak of Camouflage>_
|tip It is in the Quest Recipes category under Shadowlands Tailoring.
collect 1 Cloak of Camouflage##181453 |goto 48.33,51.28 |q 61604
|next "Shadow_World_Quest_Emissaries"
step
label quest-60533
accept Terrors in Tirna Scithe##60533 |goto Ardenweald/0 32.45,55.21
|tip You will accept this quest automatically.
step
Kill enemies around this area
Cleanse Tirna Scithe |q 60533/1 |goto 32.45,55.21
|next "Shadow_World_Quest_Emissaries"
step
label quest-60564
accept Three Gorm Enter, No One Leaves##60564 |goto Ardenweald/0 51.65,76.27
|tip You will accept this quest automatically.
stickystart "Kill_Contender_Brahn"
stickystart "Kill_Contender_Melia"
step
kill Contender Karnek##169041 |q 60564/1 |goto 51.65,76.27
step
label "Kill_Contender_Brahn"
kill Contender Brahn##169042 |q 60564/2 |goto 51.45,75.34
step
label "Kill_Contender_Melia"
kill Contender Melia##169043 |q 60564/3 |goto 52.19,75.55
|next "Shadow_World_Quest_Emissaries"
step
label quest-60842
accept To Serve Spriggan##60842 |goto Ardenweald/0 39.32,56.27
|tip You will accept this quest automatically.
step
Use the _"Throw Frog"_ ability
|tip It appears as a button on the screen.
|tip Use it on weakened Sicklethorn enemies.
collect 10 Bagged Frog##180439 |goto 39.32,56.27 |q 60842
step
Use the _"Throw Frog"_ ability
|tip It appears as a button on the screen.
Feed #10# Spriggan to The Craw |q 60842/1 |goto 40.47,52.70
|next "Shadow_World_Quest_Emissaries"
step
label quest-60739
accept Tough Crowd##60739 |goto Ardenweald/0 41.60,46.46
|tip You will accept this quest automatically.
step
Click NPCs around this area
|tip Keep clicking them until one of them reacts to you.
Kill enemies around this area
|tip Some of them will become hostile and attack you.
Slay #8# Exposed Boggart |q 60739/1 |goto 41.60,46.46
|next "Shadow_World_Quest_Emissaries"
step
label quest-60597
accept Trouble at the Gormling Corral##60597 |goto Ardenweald/0 48.01,24.26
|tip You will accept this quest automatically.
step
click Modified Gormling Lure
Take the Modified Gormling Lure |q 60597/1 |goto 48.01,24.26
step
Collect 8 Gormdaughters |havebuff 1 spell:309806 |goto 45.45,25.14 |q 60597
|tip Walk near Gormdaughters.
|tip They look like smaller neutral Gorms.
step
Collect 7 Gormdaughters |havebuff 2 spell:309806 |goto 45.45,25.14 |q 60597
|tip Walk near Gormdaughters.
|tip They look like smaller neutral Gorms.
step
Collect 6 Gormdaughters |havebuff 3 spell:309806 |goto 45.45,25.14 |q 60597
|tip Walk near Gormdaughters.
|tip They look like smaller neutral Gorms.
step
Collect 5 Gormdaughters |havebuff 4 spell:309806 |goto 45.45,25.14 |q 60597
|tip Walk near Gormdaughters.
|tip They look like smaller neutral Gorms.
step
Collect 4 Gormdaughters |havebuff 5 spell:309806 |goto 45.45,25.14 |q 60597
|tip Walk near Gormdaughters.
|tip They look like smaller neutral Gorms.
step
Collect 3 Gormdaughters |havebuff 6 spell:309806 |goto 45.45,25.14 |q 60597
|tip Walk near Gormdaughters.
|tip They look like smaller neutral Gorms.
step
Collect 2 Gormdaughters |havebuff 7 spell:309806 |goto 45.45,25.14 |q 60597
|tip Walk near Gormdaughters.
|tip They look like smaller neutral Gorms.
step
Collect 1 Gormdaughter |havebuff 8 spell:309806 |goto 45.45,25.14 |q 60597
|tip Walk near Gormdaughters.
|tip They look like smaller neutral Gorms.
step
Deliver #8# Gormdaughters to the Wrangler |q 60597/2 |goto 47.07,28.69
|tip Run into the yellow circle.
|next "Shadow_World_Quest_Emissaries"
step
label quest-60475
accept We'll Workshop It##60475 |goto Ardenweald/0 55.65,26.48
|tip You will accept this quest automatically.
step
click Supply Baskets##352089+
|tip They look like light-colored containers and sacks on the ground around this area.
collect 10 Sack of Supplies##178876 |q 60475/1 |goto 55.65,26.48
step
Click NPCs around this area
Tell them _"I would like you to have the supplies."_
Deliver the Supplies |q 60475/2 |goto 50.98,33.43 |future
|next "Shadow_World_Quest_Emissaries"
step
label quest-60609
accept Who Devours the Devourers?##60609 |goto Ardenweald/0 27.04,48.03
|tip You will accept this quest automatically.
step
Kill enemies around this area
collect Resonating Anima Mote##180009 |n
|tip Five Resonating Anima Motes are required to make one core.
use the Resonating Anima Mote##180009
collect Resonating Anima Core##180008 |goto 27.04,48.03 |q 60609
step
use the Resonating Anima Core##180008
|tip Use them on the Devourer Rifts around this area.
|tip They look like giant swirling blue portals around this area.
|tip They appear on your minimap as yellow dots.
Close #5# Devourer Rifts |q 60609/1 |goto 27.04,48.03 |count 1
step
Kill enemies around this area
collect Resonating Anima Mote##180009 |n
|tip Five Resonating Anima Motes are required to make one core.
use the Resonating Anima Mote##180009
collect Resonating Anima Core##180008 |goto 27.04,48.03 |q 60609
step
use the Resonating Anima Core##180008
|tip Use them on the Devourer Rifts around this area.
|tip They look like giant swirling blue portals around this area.
|tip They appear on your minimap as yellow dots.
Close #5# Devourer Rifts |q 60609/1 |goto 27.04,48.03 |count 2
step
Kill enemies around this area
collect Resonating Anima Mote##180009 |n
|tip Five Resonating Anima Motes are required to make one core.
use the Resonating Anima Mote##180009
collect Resonating Anima Core##180008 |goto 27.04,48.03 |q 60609
step
use the Resonating Anima Core##180008
|tip Use them on the Devourer Rifts around this area.
|tip They look like giant swirling blue portals around this area.
|tip They appear on your minimap as yellow dots.
Close #5# Devourer Rifts |q 60609/1 |goto 27.04,48.03 |count 3
step
Kill enemies around this area
collect Resonating Anima Mote##180009 |n
|tip Five Resonating Anima Motes are required to make one core.
use the Resonating Anima Mote##180009
collect Resonating Anima Core##180008 |goto 27.04,48.03 |q 60609
step
use the Resonating Anima Core##180008
|tip Use them on the Devourer Rifts around this area.
|tip They look like giant swirling blue portals around this area.
|tip They appear on your minimap as yellow dots.
Close #5# Devourer Rifts |q 60609/1 |goto 27.04,48.03 |count 4
step
Kill enemies around this area
collect Resonating Anima Mote##180009 |n
|tip Five Resonating Anima Motes are required to make one core.
use the Resonating Anima Mote##180009
collect Resonating Anima Core##180008 |goto 27.04,48.03 |q 60609
step
use the Resonating Anima Core##180008
|tip Use them on the Devourer Rifts around this area.
|tip They look like giant swirling blue portals around this area.
|tip They appear on your minimap as yellow dots.
Close #5# Devourer Rifts |q 60609/1 |goto 27.04,48.03
|next "Shadow_World_Quest_Emissaries"
step
label quest-60837
accept Wrath of Aliothe##60837 |goto Ardenweald/0 39.33,55.77
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip You can use the button that appears on-screen to turn into a bear if you wish.
Cleanse the Garden of Night |q 60837/1 |goto 39.33,55.77
|next "Shadow_World_Quest_Emissaries"
step
label "Shadow_World_Quest_Emissaries"
#include "Shadow_World_Quest_Emissaries"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Shadowlands (50-60)\\Bastion World Quests",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing world quests in Bastion.",
condition_suggested=function() return level >= 50 end,
startlevel=50.0,
worldquestzone={1550,1533,1690},
patch='90001',
},[[
step
label "Choose_World_Quest"
#include "Shadow_Choose_World_Quests"
step
label quest-61593
accept A Crisis of Memory##61593 |goto Bastion/0 43.39,26.09
|tip You will accept this quest automatically.
step
Enter the building |goto 42.18,25.53 < 15 |walk
kill Iristia the Unburdened##172913 |q 61593/3 |goto 41.08,26.78
|tip Inside the building.
|tip Neutral mobs may become hostile if you approach too closely.
step
kill Sybigone the Awakened##172914 |q 61593/2 |goto 43.34,25.74
|tip Neutral mobs may become hostile if you approach too closely.
|tip She flies around this area.
step
kill Olyssion the Reclaimer##172912 |q 61593/1 |goto Path of Wisdom/0 48.11,9.82
|tip All the way in the back of the building.
|tip Neutral mobs may become hostile if you approach too closely.
|next "Shadow_World_Quest_Emissaries"
step
label quest-61689
accept A Crisis of Memory##61689 |goto Bastion/0 42.98,26.10
|tip You will accept this quest automatically.
stickystart "Slay_Hostile_Memories_61689"
step
kill Doubtful Acolyte##172872
|tip They will surrender before they die.
Subdue #8# Doubtful Acolytes |q 61689/1 |goto 42.98,26.10
step
label "Slay_Hostile_Memories_61689"
Kill enemies around this area
Slay #24# Hostile Memories |q 61689/2 |goto 42.98,26.10
|next "Shadow_World_Quest_Emissaries"
step
label quest-60565
accept A Steward for Every Occasion##60565 |goto Bastion/0 52.66,46.81 |region heros_rest
|tip You will accept this quest automatically.
step
talk Helpful Steward##169078
|tip They look like large walking owls around this area.
Ask it _"Can you help me with something?_"
|tip This will cause it to follow you.
Ask it _"Can you help with this problem?_"
|tip You need to be standing near one of the various glowing NPCs around this area.
|tip The steward with the empty basket catches the scrolls.
|tip The steward with the hammer repairs the malfunctioning NPC.
|tip The steward with the broom sweeps the glass.
|tip The steward with the crate provides drink to the Thirsty Aspirant.
|tip The steward with the basket of fruit feeds the Hungry Aspirant
|tip The steward with the bundle of scrolls entertains the Bored Aspirant.
Do #6# Chores |q 60565/1 |goto 52.66,46.81 |region heros_rest
|next "Shadow_World_Quest_Emissaries"
step
label quest-60623
accept AHHH! Real Monsters!##60623 |goto Bastion/0 67.53,30.18
|tip You will accept this quest automatically.
step
clicknpc Terrified Shrine Tender##171480+
|tip They look like cowering giant owls on the ground around this area.
clicknpc Gleaming Phalynx##169563+
|tip They look like cat-shaped constructs on the ground around this area.
Kill enemies around this area
Repel the Devourer threat |q 60623/1 |goto 67.53,30.18
|next "Shadow_World_Quest_Emissaries"
step
label quest-61220
accept AHHH! Real Monsters!##61220 |goto Bastion/0 66.63,31.43
|tip You will accept this quest automatically.
stickystart "Repel_the_Devourer_Threat"
step
talk Aspirant Thetes##171834
|tip He will appear on your minimap as a yellow dot.
|tip Follow him wherever he runs.
Tell him _"I will accompany you."_
Assist Aspirant Thetes |q 61220/1 |goto 67.53,30.18
step
label "Repel_the_Devourer_Threat"
clicknpc Terrified Shrine Tender##171480+
|tip They look like cowering giant owls on the ground around this area.
clicknpc Gleaming Phalynx##169563+
|tip They look like cat-shaped constructs on the ground around this area.
Kill enemies around this area
Repel the Devourer threat |q 61220/2 |goto 67.53,30.18
|next "Shadow_World_Quest_Emissaries"
step
label quest-61148
accept AHHH! Real Monsters!##61148 |goto Bastion/0 67.54,30.25
|tip You will accept this quest automatically.
step
Kill enemies around this area
collect 100 Devoured Anima##180789 |q 61148/1 |goto 67.54,30.25
step
click Devourer Rift
|tip Use the "Create Rift" ability that appears on-screen.
Enter a Rift |q 61148/2
step
kill Visk the All-Consuming##171513 |q 61148/3 |goto 67.11,27.92
|tip Running over orbs on the ground will grant you a stacking buff.
|tip Each stack will increase your speed, damage, and healing, up to 20 stacks.
|tip Stacks will also increase your damage taken.
step
click Devourer Rift
Exit the Rift |q 61148/4 |goto 67.31,28.49
|next "Shadow_World_Quest_Emissaries"
step
label quest-60929
accept Air Supremacy##60929 |goto Bastion/0 40.92,55.54
|tip You will accept this quest automatically.
step
click Weapon Rack
collect Xandria's Reach##180465 |q 60929/1 |goto 40.92,55.54
step
Kill enemies around this area
|tip Look up and target Flayedwing Wraiths.
|tip Use the "Xandria's Reach" ability that appears on-screen to reach them.
|tip After killing the rider, use the ability again to reach another rider.
Slay #5# Flayedwing Riders |q 60929/2 |goto 39.60,55.34
|next "Shadow_World_Quest_Emissaries"
step
label quest-61434
accept Alchemy: Flask of Measured Discipline##61434 |goto Bastion/0 52.43,46.53 |region heros_rest
|tip You will accept this quest automatically.
|polish
step
click Crafter's Crate##356553
collect 3 Fresh Breezebloom Trimmings##182027 |goto 52.43,46.53 |region heros_rest |q 61434
step
Open Your Alchemy Crafting Panel:
_<Create 3 Pulverized Breezebloom>_
|tip It is in the Quest Recipes category under Shadowlands Alchemy.
collect 3 Pulverized Breezebloom##182026 |goto 52.43,46.53 |region heros_rest |q 61434
step
Open Your Alchemy Crafting Panel:
_<Create 1 Distilled Resolve>_
|tip It is in the Quest Recipes category under Shadowlands Alchemy.
collect 1 Distilled Resolve##182025 |goto 52.43,46.53 |region heros_rest |q 61434
step
Open Your Alchemy Crafting Panel:
_<Create 1 Flask of Measured Discipline>_
|tip It is in the Quest Recipes category under Shadowlands Alchemy.
collect 1 Flask of Measured Discipline##181859 |goto 52.43,46.53 |region heros_rest |q 61434
|next "Shadow_World_Quest_Emissaries"
step
label quest-62235
accept Allay Their Fears##62235 |goto Bastion/0 51.29,59.60
|tip You will accept this quest automatically.
step
click Korinna's Allaying Crook##357754
collect Korinna's Allaying Crook##183045 |q 62235/1 |goto 51.29,59.60
step
Kill enemies around this area
use Korinna's Allaying Crook##183045
|tip Use it near floating blue orbs and enemy corpses around this area.
Charge the Allaying Crook |q 62235/2 |goto 50.06,57.43
step
Complete the Allaying Ritual |q 62235/3 |goto 49.59,59.88
|tip Stand here and use the "Korinna's Release" ability that appears on-screen.
|next "Shadow_World_Quest_Emissaries"
step
label quest-59601
accept Assault on the Vestibule##59601 |goto Bastion/0 43.38,78.75
|tip You will accept this quest automatically.
stickystart "Collect_Centurion_Armor_Fragment"
step
click Depleted Anima Canister##348830+
|tip They look like large brown and blue canisters on the ground around this area.
collect 3 Weak Anima Mote##172451 |q 59601/2 |goto 43.38,78.75
step
label "Collect_Centurion_Armor_Fragment"
Kill Forsworn enemies around this area
collect 3 Centurion Armor Fragment##176805 |q 59601/1 |goto 43.38,78.75
step
clicknpc Herculon##165467
|tip It walks around this area.
Empower Herculon |q 59601/3 |goto 42.69,80.41
step
Kill enemies around this area
|tip Follow Herculon and protect him, killing anything that attacks him.
Assist Herculon |q 59601/4 |goto 41.79,78.55
|next "Shadow_World_Quest_Emissaries"
step
label quest-62451
accept Assault on the Vestibule##62451 |goto Bastion/0 44.43,79.20
|tip You will accept this quest automatically.
step
clicknpc Steward Mechanic##174303
Take the Colossal Core |q 62451/1 |goto 44.43,79.20
step
Kill Forsworn enemies around this area
Charge the Colossal Core |q 62451/2 |goto 42.36,78.48
step
clicknpc Centurion Colossus##174305
Insert the Colossal Core |q 62451/3 |goto 42.80,78.54
step
clicknpc Centurion Colossus##174318
Enter the Centurion Colossus |invehicle |goto 42.46,78.39 |q 62451
step
Push the Button |q 62451/4 |goto 42.41,78.37
|tip Use "The Button" ability on your action bar.
step
Cross the bridge |goto 40.65,77.66 < 30 |only if walking
kill Andromede, Herald of the Forsworn##174307 |q 62451/5 |goto 37.81,76.56
|next "Shadow_World_Quest_Emissaries"
step
label quest-61564
accept Blacksmithing: Polished Kyrian Shield##61564 |goto Bastion/0 52.43,46.53 |region heros_rest
|tip You will accept this quest automatically.
|polish
step
click Crafter's Crate##356553
collect 5 Shattered Kyrian Shield Fragment##181793 |goto 52.43,46.53 |region heros_rest |q 61564
step
Open Your Blacksmithing Crafting Panel:
_<Create 1 Reforged Kyrian Shield>_
|tip It is in the Quest Recipes category under Shadowlands Blacksmithing.
collect 1 Reforged Kyrian Shield##181790 |goto 52.48,46.77 |region heros_rest |q 61564
step
Open Your Blacksmithing Crafting Panel:
_<Create 1 Tarnished Kyrian Shield>_
|tip It is in the Quest Recipes category under Shadowlands Blacksmithing.
collect 1 Tarnished Kyrian Shield##181792 |goto 52.48,46.77 |region heros_rest |q 61564
step
Open Your Blacksmithing Crafting Panel:
_<Create 1 Polished Kyrian Shield>_
|tip It is in the Quest Recipes category under Shadowlands Blacksmithing.
collect 1 Polished Kyrian Shield##181791 |goto 52.48,46.77 |region heros_rest |q 61564
|next "Shadow_World_Quest_Emissaries"
step
label quest-62058
accept Centurions, Assemble!##62058 |goto Bastion/0 50.11,20.55
|tip You will accept this quest automatically.
step
Select a Centurion |q 62058/1 |goto 50.11,20.55
|tip Click any centurion you wish to select it.
step
Watch the dialogue
Pilot your Centurion |q 62058/2 |goto 50.11,20.55
stickystart "Repel_the_Forsworn_Threat_62058"
step
Follow the path up |goto 50.69,16.62 < 30 |walk
kill Overseer Phoneira##173575 |q 62058/4 |goto 48.99,15.53
step
label "Repel_the_Forsworn_Threat_62058"
Kill enemies around this area
Repel the Forsworn Threat |q 62058/3 |goto 51.10,17.11
|next "Shadow_World_Quest_Emissaries"
step
label quest-61784
accept Cliffs of Bastion##61784 |goto Bastion/0 34.83,62.83
|tip You will accept this quest automatically.
step
talk Stratios##173131
Tell him _"Begin pet battle."_
Defeat Stratios in a Pet Battle |q 61784/1 |goto 34.83,62.83
|next "Shadow_World_Quest_Emissaries"
step
label quest-61439
accept Cooking: Steward Stew##61439 |goto Bastion/0 52.43,46.53 |region heros_rest
|tip You will accept this quest automatically.
step
click Crafter's Crate##356553
collect 1 Grazer Bones##182024 |goto 52.43,46.53 |region heros_rest |q 61439
collect 1 Fresh Carrots##182098 |goto 52.43,46.53 |region heros_rest |q 61439
collect 1 Fresh Turnips##182099 |goto 52.43,46.53 |region heros_rest |q 61439
collect 1 Fresh Mushrooms##182100 |goto 52.43,46.53 |region heros_rest |q 61439
step
cast Cooking Fire##818
Open Your Cooking Crafting Panel:
_<Create 1 Grazer Bone Broth>_
|tip It is in the Quest Recipes category under Shadowlands Cooking.
|tip Stand next to the fire while cooking.
collect 1 Grazer Bone Broth##182023 |goto 52.48,46.77 |region heros_rest |q 61439
step
Open Your Cooking Crafting Panel:
_<Create 1 Diced Vegetables>_
|tip It is in the Quest Recipes category under Shadowlands Cooking.
|tip Stand next to the fire while cooking.
collect 1 Diced Vegetables##182022 |goto 52.48,46.77 |region heros_rest |q 61439
step
Open Your Cooking Crafting Panel:
_<Create 1 Steward Stew>_
|tip It is in the Quest Recipes category under Shadowlands Cooking.
|tip Stand next to the fire while cooking.
collect 1 Steward Stew##181945 |goto 52.48,46.77 |region heros_rest |q 61439
|next "Shadow_World_Quest_Emissaries"
step
label quest-60534
accept Disloyal Denizens##60534 |goto Bastion/0 26.82,23.34
|tip You will accept this quest automatically.
step
Kill enemies around this area
Click objects around this area
|tip Various glowing objects will give credit towards the objective.
Disrupt the Citadel of Loyalty |q 60534/1 |goto 26.82,23.34
|next "Shadow_World_Quest_Emissaries"
step
label quest-61549
accept Drought Conditions##61549 |goto Bastion/0 51.51,41.14
|tip You will accept this quest automatically.
stickystart "Slay_Etherwyrms_61549"
step
talk Trapped Caretaker##172714
Tell them _"I've cleared a path for you. You should leave."_
Evacuate #8# Caretakers |q 61549/2 |goto 51.51,41.14
step
label "Slay_Etherwyrms_61549"
Kill Etherwyrm enemies around this area
Slay #15# Etherwyrms |q 61549/1 |goto 51.51,41.14
|next "Shadow_World_Quest_Emissaries"
step
label quest-61629
accept Enchanting: True Aim##61629 |goto Bastion/0 52.43,46.53 |region heros_rest
|tip You will accept this quest automatically.
step
click Crafter's Crate##356553
collect Antique Kyrian Javelin##182021 |goto 52.43,46.53 |region heros_rest |q 61629
step
cast Disenchant##324750
|tip Cast it on the Antique Kyrian Javelin in your bags.
collect 1 Transcendent Dust##182020 |goto 52.43,46.53 |region heros_rest |q 61629
step
Open Your Enchanting Crafting Panel:
_<Create 1 True Aim Spear>_
|tip It is in the Quest Recipes category under Shadowlands Enchanting.
collect 1 Enchant: True Aim##181948 |goto 52.43,46.53 |region heros_rest |q 61629
|next "Shadow_World_Quest_Emissaries"
step
label quest-61520
accept Enemy of My Mnemis##61520 |goto Bastion/0 50.71,20.71
|tip You will accept this quest automatically.
step
click Inert Centurion Core##356395
collect Inert Centurion Core##181710 |q 61520/1 |goto 50.71,20.71
step
Kill enemies around this area
|tip Keep killing enemies until the bar that appears on-screen is full.
Charge the Core |q 61520/2 |goto 51.62,17.67
step
Activate Forge-Keeper Mnemis |q 61520/3 |goto 51.01,20.63
|tip Use the "Charge Unit" ability on Forge-Keeper Mnemis.
|next "Shadow_World_Quest_Emissaries"
step
label quest-61441
accept Engineering: Power Hammer##61441 |goto Bastion/0 52.43,46.53 |region heros_rest
|tip You will accept this quest automatically.
|polish
step
click Crafter's Crate##356553
collect 14 Machined Solenium Bar##182018 |goto 52.43,46.53 |region heros_rest |q 61441
step
Open Your Engineering Crafting Panel:
_<Create 2 Hardened Bolts>_
|tip It is in the Quest Recipes category under Shadowlands Engineering.
collect 2 Hardened Bolts##182017 |goto 52.48,46.77 |region heros_rest |q 61441
step
Open Your Engineering Crafting Panel:
_<Create 1 Piston Assembly>_
|tip It is in the Quest Recipes category under Shadowlands Engineering.
collect 1 Piston Assembly##182016 |goto 52.48,46.77 |region heros_rest |q 61441
step
Open Your Engineering Crafting Panel:
_<Create 1 Power Hammer>_
|tip It is in the Quest Recipes category under Shadowlands Engineering.
collect 1 Power Hammer##181951 |goto 52.48,46.77 |region heros_rest |q 61441
|next "Shadow_World_Quest_Emissaries"
step
label quest-59658
accept Express Dominance##59658 |goto Bastion/0 49.91,48.69
|tip You will accept this quest automatically.
|polish
step
Kill enemies around this area
|tip Both beasts and enemy players cound towards this objective.
Conquer Beasts or Slay Enemies |q 59658/1 |goto 49.91,48.69
|next "Shadow_World_Quest_Emissaries"
step
label quest-61442
accept Fishing: Glorious Shimmerfin##61442 |goto Bastion/0 53.66,32.50
|tip You will accept this quest automatically.
step
cast Fishing##131474
|tip Fish in the water until you catch enough fish.
collect 5 Glorious Shimmerfin##181954 |q 61442/1 |goto 53.66,32.50
|next "Shadow_World_Quest_Emissaries"
step
label quest-60844
accept Flight School: Falling With Style##60844 |goto Bastion/0 58.02,29.37
|tip You will accept this quest automatically.
step
label "Gain_Soaring_Ambition_Buff"
Launch Yourself into the Air |havebuff spell:331960 |goto 58.02,29.37
|tip Click the "Soaring Ambition" button that appears on-screen.
step
Earn #100# Points |q 60844/1 |goto 58.02,29.37 |or
|tip As you float towards the ground, fly through the rings floating in the air.
|tip Each ring is worth 10 points.
|tip Gold rings are worth 20 points.
'|complete not hasbuff("spell:331963") and not hasbuff("spell:331960") and not completedq(60844) and questactive(60844) |next "Gain_Soaring_Ambition_Buff" |or
|next "Shadow_World_Quest_Emissaries"
step
label quest-60911
accept Flight School: Flapping Frenzy##60911 |goto Bastion/0 58.84,10.61
|tip You will accept this quest automatically.
step
label "Speak_to_Instructor_Malo_60911"
talk Instructor Malo##170721
Tell her _"I'd like a lighter course today."_
Speak to Instructor Malo |invehicle |goto 58.84,10.61 |q 60911
step
Reach the Goal |q 60911/2 |goto 45.90,3.06 |or
|tip Use the "Begin" ability to start.
|tip Use the "Flap" ability to gain a slight amount of elevation.
|tip Use the "Soar" ability to surge forward quickly if you have at least 10 stacks of "Flap."
|tip Avoid the spears on your way to the destination.
'|complete not invehicle() and not completedq(60911) and questactive(60911) |next "Speak_to_Instructor_Malo_60911" |or
|next "Shadow_World_Quest_Emissaries"
step
label quest-60858
accept Flight School: Up and Away!##60858 |goto Bastion/0 41.66,23.33
|tip You will accept this quest automatically.
step
label "Enter_the_Updraft"
Enter the Updraft |havebuff spell:332463 |goto 41.63,23.13 |q 60858
|tip Walk onto the white air current.
step
Reach the Temple |q 60858/2 |goto 39.46,18.76 |or |notravel
|tip Bounce on top of each of the flowers, following the spiral upward path.
'|complete not hasbuff("spell:332463") and not completedq(60858) and questactive(60858) |next "Enter_the_Updraft" |or
|next "Shadow_World_Quest_Emissaries"
step
label quest-59804
accept Gateways of Horror##59804 |goto Bastion/0 47.02,63.38
|tip You will accept this quest automatically.
step
click Vesper of History
Ring the Vesper of History |q 59804/1 |goto 47.02,63.38
step
click Void Gateway+
|tip They look like large void portals around this area.
|tip Kill any enemies and stand still while channeling.
Close #3# Void Gateways |q 59804/2 |goto 45.84,66.45
|next "Shadow_World_Quest_Emissaries"
step
label quest-61443
accept Herbalism: Windswept Rising Glory##61443 |goto Bastion/0 36.24,48.04
|tip You will accept this quest automatically.
|polish
step
click Windswept Rising Glory##356536+
|tip They look like white plants growing out of the ground around this area.
collect 40 Windswept Rising Glory##181749 |q 61443/1 |goto 36.24,48.04
|next "Shadow_World_Quest_Emissaries"
step
label quest-59771
accept History of Corruption##59771 |goto Bastion/0 47.03,63.38
|tip You will accept this quest automatically.
step
click Vesper of History
Ring the Vesper of History |q 59771/1 |goto 47.03,63.38
stickystart "Kill_Voidbound_Defenders_59771"
step
use the Wingpierce Javelin##177836
|tip Throw it at enemies to weaken them.
kill 4 Corrupted Cloudfeather##158256 |q 59771/2 |goto 45.85,65.30
step
label "Kill_Voidbound_Defenders_59771"
kill 6 Voidbound Defender##166120 |q 59771/3 |goto 45.85,65.30
|next "Shadow_World_Quest_Emissaries"
step
label quest-61446
accept Inscription: Invocation of Duty##61446 |goto Bastion/0 52.43,46.53 |region heros_rest
|tip You will accept this quest automatically.
step
click Crafter's Crate##356553
collect 10 Borrowed Parchment##182202 |goto 52.43,46.53 |region heros_rest |q 61446
collect 10 Opalescent Pigment##182015 |goto 52.43,46.53 |region heros_rest |q 61446
step
Open Your Inscription Crafting Panel:
_<Create 10 Opalescent Ink>_
|tip It is in the Quest Recipes category under Shadowlands Inscription.
collect 10 Opalescent Ink##182014 |goto 52.43,46.53 |region heros_rest |q 61446
step
Open Your Inscription Crafting Panel:
_<Create 10 Poem on Duty>_
|tip It is in the Quest Recipes category under Shadowlands Inscription.
collect 10 Poem on Duty##182013 |goto 52.43,46.53 |region heros_rest |q 61446
step
Open Your Inscription Crafting Panel:
_<Create 1 Invocation of Duty>_
|tip It is in the Quest Recipes category under Shadowlands Inscription.
collect 1 Invocation of Duty##181957 |goto 52.43,46.53 |region heros_rest |q 61446
|next "Shadow_World_Quest_Emissaries"
step
label quest-61447
accept Jewelcrafting: Gleaming Kyranite Necklace##61447 |goto Bastion/0 52.43,46.53 |region heros_rest
|tip You will accept this quest automatically.
|polish
step
click Crafter's Crate##356553
collect 5 Borrowed Solenium Nugget##182012 |goto 52.43,46.53 |region heros_rest |q 61447
collect 3 Borrowed Kyranite##182197 |goto 52.43,46.53 |region heros_rest |q 61447
step
Open Your Jewelcrafting Crafting Panel:
_<Create 5 Solenium Wire>_
|tip It is in the Quest Recipes category under Shadowlands Jewelcrafting.
collect 5 Solenium Wire##182011 |goto 52.43,46.53 |region heros_rest |q 61447
step
Open Your Jewelcrafting Crafting Panel:
_<Create 3 Kyranite Dangle>_
|tip It is in the Quest Recipes category under Shadowlands Jewelcrafting.
collect 3 Kyranite Dangle##182010 |goto 52.43,46.53 |region heros_rest |q 61447
step
Open Your Jewelcrafting Crafting Panel:
_<Create 1 Gleaming Kyranite Necklace>_
|tip It is in the Quest Recipes category under Shadowlands Jewelcrafting.
collect 1 Gleaming Kyranite Necklace##181960 |goto 52.43,46.53 |region heros_rest |q 61447
|next "Shadow_World_Quest_Emissaries"
step
label quest-61449
accept Leatherworking: Steelhide Leather Harness##61449 |goto Bastion/0 52.43,46.53 |region heros_rest
|tip You will accept this quest automatically.
|polish
step
click Crafter's Crate##356553
collect 1 Thick Steelhide Leather##182193 |goto 52.43,46.53 |region heros_rest |q 61449
collect 6 Steelhide Sinew##182194 |goto 52.43,46.53 |region heros_rest |q 61449
collect 1 Fresh Steelhide##182009 |goto 52.43,46.53 |region heros_rest |q 61449
step
Open Your Leatherworking Crafting Panel:
_<Create 1 Steelhide Leather Strap>_
|tip It is in the Quest Recipes category under Shadowlands Leatherworking.
collect 1 Steelhide Leather Strap##182008 |goto 52.43,46.53 |region heros_rest |q 61449
step
Open Your Leatherworking Crafting Panel:
_<Create 3 Steelhide Leather Belt>_
|tip It is in the Quest Recipes category under Shadowlands Leatherworking.
collect 3 Steelhide Leather Belt##182007 |goto 52.43,46.53 |region heros_rest |q 61449
step
Open Your Leatherworking Crafting Panel:
_<Create 1 Steelhide Leather Harness>_
|tip It is in the Quest Recipes category under Shadowlands Leatherworking.
collect 1 Steelhide Leather Harness##181965 |goto 52.43,46.53 |region heros_rest |q 61449
|next "Shadow_World_Quest_Emissaries"
step
label quest-59578
accept Let's Get Ready to Humble##59578 |goto Bastion/0 51.16,80.41
|tip You will accept this quest automatically.
stickystart "Spar_With_Aspirants_59578"
step
kill Archilon##158867 |q 59578/2 |goto 50.52,82.20
step
kill Straticus##158870 |q 59578/4 |goto 50.07,80.52
step
kill Epilon##158869 |q 59578/3 |goto 50.53,78.83
step
label "Spar_With_Aspirants_59578"
talk Sparring Aspirant##159505+
Ask them _"Will you spar with me?"_
|tip Defeat them in a sparring duel.
Spar with #8# Aspirants |q 59578/1 |goto 51.16,80.41
step
kill Athanos##158891 |q 59578/5 |goto 51.26,80.48
|tip You will be defeated and then healed.
|next "Shadow_World_Quest_Emissaries"
step
label quest-62280
accept Limbo##62280 |goto Bastion/0 66.41,47.64
|tip You will accept this quest automatically.
|polish
step
click Pass to Shadowlands
Assess the First Soul |q 62280/1 |goto 66.47,47.60
step
click Return to Life
Assess the Second Soul |q 62280/2 |goto 66.39,47.73
step
click Return to Life
Assess the Third Soul |q 62280/3 |goto 66.39,47.73
|next "Shadow_World_Quest_Emissaries"
step
label quest-61337
accept March of the Eternal Protector##61337 |goto Bastion/0 57.14,54.23
|tip Search up and down this road for Heraclor.
|tip Heraclor is a giant boss-level construct that patrols the road.
|tip You will accept this quest automatically.
step
Kill enemies around Heraclor
|tip Search up and down this road for Heraclor.
|tip Heraclor is a giant boss-level construct that patrols the road.
|tip Waves of enemies will attack relentlessly.
|tip You may need help with this.
Defend Heraclor |q 61337/1 |goto 57.14,54.23
|next "Shadow_World_Quest_Emissaries"
step
label quest-61783
accept Mega Bite##61783 |goto Bastion/0 36.51,31.70
|tip You will accept this quest automatically.
step
clicknpc Jawbone##173133
Defeat Jawbone in a Pet Battle |q 61783/1 |goto 36.51,31.70
|next "Shadow_World_Quest_Emissaries"
step
label quest-61787
accept Micro Defense Force##61787 |goto Bastion/0 51.40,38.33
|tip You will accept this quest automatically.
step
talk Zolla##173130
Tell it _"Begin pet battle."_
Defeat Zolla in a Pet Battle |q 61787/1 |goto 51.40,38.33
|next "Shadow_World_Quest_Emissaries"
step
label quest-61467
accept Mining: Luminous Solenium Cluster##61467 |goto Bastion/0 53.35,73.61
|tip You will accept this quest automatically.
|polish
step
click Luminous Solenium Deposit##356393+
|tip They look like gold-covered rocks on the ground around this area.
collect 10 Luminous Solenium Ore##181450 |q 61467/1 |goto 53.35,73.61
|next "Shadow_World_Quest_Emissaries"
step
label quest-61967
accept Remedial Lessons##61967 |goto Bastion/0 64.06,43.61
|tip You will accept this quest automatically.
stickystart "Slay_Manifestations_of_Pride_61967"
step
Kill enemies around this area
|tip Everything but Aberration mobs drop fragments.
collect Mirror Fragment##182457+ |n
|tip Three fragments are required to make one mirror.
use the Mirror Fragment##182457
collect 3 Mirror of Ancient Teachings##182458 |n
click Instruction Dais+
|tip They look like stone platforms on the ground around this area.
|tip They appear on your minimap as yellow dots.
Restore #3# Instructors |q 61967/1 |goto 64.06,43.61
step
label "Slay_Manifestations_of_Pride_61967"
Kill Pride enemies around this area
Slay #15# Manifestations of Pride |q 61967/2 |goto 64.06,43.61
step
talk Voitha##156327
Tell her _"I will retrieve the scrolls."_
Speak to Voitha |q 61967/3 |goto 66.04,47.09
step
Watch the dialogue
|tip The Disciple of Humility will carry you to the archive.
click Sacred Text##357469+
|tip They look like rolled up scrolls on shelves on the side of the building.
|tip Wait for the Disciple of Humility to stop at each shelf.
collect 5 Sacred Text##182477 |q 61967/4 |goto 67.73,42.96
|next "Shadow_World_Quest_Emissaries"
step
label quest-61468
accept Skinning: Plush Copperfur Pelts##61468 |goto Bastion/0 42.48,59.62
|tip You will accept this quest automatically.
step
kill Copperfur Vulpin##169390+
|tip Skin their corpses.
collect 7 Plush Copperfur Pelts##181968 |q 61468/1 |goto 42.48,59.62
|next "Shadow_World_Quest_Emissaries"
step
label quest-62258
accept Soaring Over Bastion##62258 |goto Bastion/0 57.53,44.69
|tip You will accept this quest automatically.
step
kill Gilded Cloudstrider##159298+
collect 4 Cloudstrider Antler##183140 |q 62258/1 |goto 57.53,44.69
step
Follow the path up |goto Bastion/0 56.69,43.23 < 30 |only if walking
click Tray
Place the Antlers |q 62258/2 |goto 56.94,39.33
step
label "Mount_Andira"
clicknpc Andira##160255
Mount Andira |invehicle |goto 56.88,39.35
step
Fly Through the Rings |q 62258/4 |goto 56.86,44.15 |or
|tip Fly through the blue rings in the air around this area.
|tip If you go more than 10 seconds without flying through a ring, Andira will lose patience and throw you off.
'|complete not invehicle() and not completedq(62258) and questactive(62258) |next "Mount_Andira" |or
|next "Shadow_World_Quest_Emissaries"
step
label quest-61469
accept Tailoring: Woven Gossamer Tunic##61469 |goto Bastion/0 52.43,46.53 |region heros_rest
|tip You will accept this quest automatically.
|polish
step
click Crafter's Crate##356553
collect 19 Gossamer Thread##182104 |goto 52.43,46.53 |region heros_rest |q 61469
step
Open Your Tailoring Crafting Panel:
_<Create 9 Gossamer Cloth>_
|tip It is in the Quest Recipes category under Shadowlands Tailoring.
collect 9 Gossamer Cloth##182103 |goto 52.43,46.53 |region heros_rest |q 61469
step
Open Your Tailoring Crafting Panel:
_<Create 3 Bolt of Woven Gossamer>_
|tip It is in the Quest Recipes category under Shadowlands Tailoring.
collect 3 Bolt of Woven Gossamer##182102 |goto 52.43,46.53 |region heros_rest |q 61469
step
Open Your Tailoring Crafting Panel:
_<Create 1 Woven Gossamer Tunic>_
|tip It is in the Quest Recipes category under Shadowlands Tailoring.
collect 1 Woven Gossamer Tunic##181971 |goto 52.43,46.53 |region heros_rest |q 61469
|next "Shadow_World_Quest_Emissaries"
step
label quest-61791
accept Thenia's Loyal Companions##61791 |goto Bastion/0 54.55,56.10
|tip You will accept this quest automatically.
step
talk Thenia##173129
Tell her _"Begin pet battle."_
Defeat Thenia in a Pet Battle |q 61791/1 |goto 54.55,56.10
|next "Shadow_World_Quest_Emissaries"
step
label quest-59717
accept Things Remembered##59717 |goto Bastion/0 59.66,62.02
|tip You will accept this quest automatically.
step
click Forgotten Memorandum##349274+
|tip They look like rolled up scrolls around this area.
collect 10 Forgotten Memorandum##177186 |q 59717/1 |goto 59.66,62.02
|next "Shadow_World_Quest_Emissaries"
step
label quest-59705
accept Things Remembered##59705 |goto Bastion/0 56.06,62.21
|tip You will accept this quest automatically.
step
click Forgotten Memorandum##349136+
|tip They look like small scrolls on the ground around this area.
collect 10 Forgotten Memorandum##177186 |q 59705/1 |goto 56.06,62.21
|next "Shadow_World_Quest_Emissaries"
step
label quest-62241
accept Training Regimen##62241 |goto Bastion/0 55.30,41.94
|tip You will accept this quest automatically.
step
clicknpc Gatamatos##159697
Retreive Gatamatos |q 62241/1 |goto 55.39,42.05
stickystart "Kill_Agitated_Etherwyrms_62241"
step
Enter the building |goto 55.69,42.88 < 10 |walk
Use the _"Order Search"_ ability
|tip Inside the building.
|tip It appears as a button on-screen.
|tip Follow Gatamatos to the gem.
Retreive #6# Training Gems |q 62241/3 |goto 56.32,40.81
step
label "Kill_Agitated_Etherwyrms_62241"
kill 8 Agitated Etherwyrm##159610 |q 62241/2 |goto 56.32,40.81
|tip Inside the building.
step
Leave the building |goto 55.70,42.84 < 10 |walk
talk Pelodis##158765
Tell him _"I'm ready for formation training."_
Speak to Pelodis |q 62241/4 |goto 54.96,41.38
step
clicknpc Gatamatos##173806
|tip Sometimes the formation is slightly different.
|tip Look at the active Phalanx NPCs and pick one that completes the pattern.
Complete the First Formation |q 62241/5 |goto 55.06,41.56
Click Gatamatos At [55.40,42.06]
|tip Gatamatos must be at your side to complete a formation.
step
clicknpc Gatamatos##173803
|tip Sometimes the formation is slightly different.
|tip Look at the active Phalanx NPCs and pick one that completes the pattern.
Complete the Second Formation |q 62241/6 |goto 55.05,41.65
Click Gatamatos At [55.40,42.06]
|tip Gatamatos must be at your side to complete a formation.
step
clicknpc Gatamatos##173803
|tip Sometimes the formation is slightly different.
|tip Look at the active Phalanx NPCs and pick one that completes the pattern.
Complete the Third Formation |q 62241/7 |goto 55.23,41.58
Click Gatamatos At [55.40,42.06]
|tip Gatamatos must be at your side to complete a formation.
step
clicknpc Gatamatos##159675
Place Gatamatos |q 62241/8 |goto 55.39,42.06
|next "Shadow_World_Quest_Emissaries"
step
label quest-61813
accept Valinor, the Light of Eons##61813 |goto Bastion/0 26.43,22.86
|tip You will accept this quest automatically.
step
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid standing in the path of "Anima Charge." |grouprole EVERYONE
|tip Spread out to chaining damage from "Charged Anima Blast." |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip "Mark of Penitence" will cause the active tank to 20% reduced healing per stack. |grouprole HEALER
|tip "Vent Anima" and "Unleashed Anima" will deal heavy raid damage. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip When stacks of "Mark of Penitence" become unmanageable, swap with another tank. |grouprole TANK
kill Valinor##167524 |q 61813/1 |goto 26.43,22.86
|next "Shadow_World_Quest_Emissaries"
step
label quest-59680
accept Vesiphone's Vicious Vesper##59680 |goto Bastion/0 59.54,74.33
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip Use the "Purity Charm" ability that appears on-screen and kill enemies near the bell.
Empower the Purity Chime |q 59680/1 |goto 59.54,74.33
step
Cross the bridge |goto 60.89,74.69 < 20
kill Coalesced Fury##165720 |q 59680/2 |goto 63.96,71.95
|tip Use the "Empowered Purity Charm" ability that appears on-screen next to the Coalesced Fury.
|tip Images created by "Externalized Rage" will stun you if they reach you.
|next "Shadow_World_Quest_Emissaries"
step
label quest-60958
accept We Send Only You##60958 |goto Bastion/0 40.01,50.80
|tip You will accept this quest automatically.
step
Kill enemies around this area
Click objects around this area
|tip Large bone spikes look like bony fingers coming out of the ground around this area.
|tip Banners are large flags with skulls and chains on them on the ground around this area.
|tip Noxious Barrels look like bone-covered barrels on the ground around this area.
Disrupt the House of Constructs Forces |q 60958/ |goto 40.01,50.80
|next "Shadow_World_Quest_Emissaries"
step
label quest-59585
accept We'll Make an Aspirant Out of You##59585 |goto Bastion/0 45.63,80.24
|tip You will accept this quest automatically.
step
click Training Spear
Equip Yourself |q 59585/1 |goto 45.47,80.44
step
Follow the instructions
|tip Trainer Ikaros will tell you which ability to use.
|tip If you have chat bubbles enabled, they will also appear over her head.
|tip Completing four in a row successfully will give you a boost to your progress.
Complete the Training Session |q 59585/2 |goto 45.62,80.11
|next "Shadow_World_Quest_Emissaries"
step
label "Shadow_World_Quest_Emissaries"
#include "Shadow_World_Quest_Emissaries"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Shadowlands (50-60)\\Maldraxxus World Quests",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing world quests in Maldraxxus.",
condition_suggested=function() return level >= 50 end,
startlevel=50.0,
worldquestzone={1550,1536},
patch='90001',
},[[
step
label "Choose_World_Quest"
#include "Shadow_Choose_World_Quests"
step
label quest-57205
accept A Few Bumps Along the Way##57205 |goto Maldraxxus/0 37.59,50.90
|tip You will accept this quest automatically.
step
Kill enemies inside the yellow circle
|tip Each enemy killed will increase your progress.
Defend the Artillery Location |q 57205/1 |goto 37.59,50.90 |count 1
step
Kill enemies inside the yellow circle
|tip Each enemy killed will increase your progress.
Defend the Artillery Location |q 57205/1 |goto 37.13,47.83 |count 2
|next "Shadow_World_Quest_Emissaries"
step
label quest-59703
accept Abombing Run##59703 |goto Maldraxxus/0 37.34,29.36
|tip You will accept this quest automatically.
step
talk Kynthia##160272
Tell her _"Let us begin."_
Speak with Kynthia |q 59703/1 |goto 37.34,29.36
step
Kill enemies around this area
|tip Use the ability on your action bar.
Slay #50# Lumbering Siegebeasts |q 59703/2 |goto 29.02,32.97
step
kill Anima Conduit##165684 |q 59703/3 |goto 28.64,24.32
|tip Use the ability on your action bar.
step
kill Champion Shenrak##165747 |q 59703/4 |goto 27.43,23.66
|tip Inside the building.
|next "Shadow_World_Quest_Emissaries"
step
label quest-61605
accept Alchemy: Draught of Grotesque Strength##61605 |goto Maldraxxus/0 50.26,53.26
|tip You will accept this quest automatically.
|polish
step
click Crafter's Crate##356879
collect 6 Bones of Defeated Enemies##182049 |goto 50.26,53.26 |q 61605
step
Open Your Alchemy Crafting Panel:
_<Create 6 Crushed Bones>_
|tip It is in the Quest Recipes category under Shadowlands Alchemy.
collect 6 Crushed Bones##182048 |goto 50.26,53.26 |q 61605
step
Open Your Alchemy Crafting Panel:
_<Create 2 Brutal Oil>_
|tip It is in the Quest Recipes category under Shadowlands Alchemy.
collect 2 Brutal Oil##182047 |goto 50.26,53.26 |q 61605
step
Open Your Alchemy Crafting Panel:
_<Create 1 Draught of Grotesque Strength>_
|tip It is in the Quest Recipes category under Shadowlands Alchemy.
collect 1 Draught of Grotesque Strength##181858 |goto 50.26,53.26 |q 61605
|next "Shadow_World_Quest_Emissaries"
step
label quest-61352
accept All Will Be Consumed##61352 |goto Maldraxxus/0 45.32,34.22
|tip You will accept this quest automatically.
|polish
stickystart "Slay_15_Devourers_61352"
stickystart "Kill_Gurg_61352"
step
click Sepulcher Collector##175808+
|tip They look like hunched over humanoids around this area.
Rescue #6# Collectors |q 61352/3 |goto 45.32,34.22
step
label "Slay_15_Devourers_61352"
kill Enraged Glutton##163415+
Slay #15# Devourers |q 61352/1 |goto 45.32,34.22
step
label "Kill_Gurg_61352"
kill Gurg##172074 |q 61352/2 |goto 41.92,32.23
|tip It patrols this area.
|tip It will appear on your minimap as a yellow dot.
|next "Shadow_World_Quest_Emissaries"
step
label quest-61353
accept All Will Be Consumed##61353 |goto Maldraxxus/0 44.27,29.86
|tip You will accept this quest automatically.
step
click Shimmering Rift+
|tip They look like large blue and white portals around this area.
Kill enemies around this area
Stop the Devourer Invasion |q 61353/1 |goto 44.27,29.86
|next "Shadow_World_Quest_Emissaries"
step
label quest-58605
accept Amateur Night##58605 |goto Maldraxxus/0 50.37,47.27
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip Elite enemies will spawn one at a time in the center of the arena.
|tip You may need a group for this.
Slay #2# Arena Opponents |q 58605/1 |goto 50.37,47.27
|next "Shadow_World_Quest_Emissaries"
step
label quest-59836
accept Battles Won Long Ago##59836 |goto Maldraxxus/0 46.16,59.08
|tip You will accept this quest automatically.
step
Kill Unbound enemies around this area
Kill #15# Iron Trench Enemies |q 59836/1 |goto 46.16,59.08
step
click Banner of Remembrance
Plant the Banner at the Iron Trench |q 59836/2 |goto 47.24,58.63
step
kill Mierina##161537 |q 59836/3 |goto 47.04,58.50
|next "Shadow_World_Quest_Emissaries"
step
label quest-61343
accept Battles Won Long Ago##61343 |goto Maldraxxus/0 44.66,32.64
|tip You will accept this quest automatically.
step
Kill enemies around this area
Kill #15# Sepulcher of Knowledge Enemies |q 61343/1 |goto 44.66,32.64
step
click Banner of Remembrance
Plant the Banner at the Sepulcher of Knowledge |q 61343/2 |goto 43.49,33.26
step
kill Asmorda##161531 |q 61343/3 |goto 43.43,32.97
|next "Shadow_World_Quest_Emissaries"
step
label quest-61342
accept Battles Won Long Ago##61342 |goto Maldraxxus/0 27.63,59.06
|tip You will accept this quest automatically.
step
Kill Unbound enemies around this area
Kill #15# Burning Thicket Enemies |q 61342/1 |goto 27.63,59.06
step
click Banner of Remembrance
Plant the Banner at the Burning Thicket |q 61342/2 |goto 27.63,59.06
step
kill Sycorex##157510 |q 61342/3 |goto 27.63,59.06
|next "Shadow_World_Quest_Emissaries"
step
label quest-57650
accept Better Off Dead##57650 |goto Maldraxxus/0 50.39,63.04
|tip You will accept this quest automatically.
stickystart "Destroy_Siege_Artillery_57650"
stickystart "Slay_Enemy_Troops_57650"
step
kill Siegemaster Traxon##161410 |q 57650/3 |goto 50.37,63.23
step
label "Destroy_Siege_Artillery_57650"
click Necrotic Charge+
|tip They look like small yellow landmines on the ground around this area.
Destroy #5# Siege Artillery |q 57650/2 |goto 50.39,63.04
step
label "Slay_Enemy_Troops_57650"
Kill enemies around this area
Slay #15# Enemy Troops |q 57650/1 |goto 50.39,63.04
|next "Shadow_World_Quest_Emissaries"
step
label quest-61606
accept Blacksmithing: Soul Razor##61606 |goto Maldraxxus/0 50.26,53.26
|tip You will accept this quest automatically.
|polish
step
click Crafter's Crate##356879
collect 5 Borrowed Oxxein Ore##182088 |goto 50.26,53.26 |q 61606
step
Open Your Blacksmithing Crafting Panel:
_<Create 1 Soft Heavy Razor>_
|tip It is in the Quest Recipes category under Shadowlands Blacksmithing.
collect 1 Soft Heavy Razor##182087 |goto 49.96,52.46 |q 61606
step
Open Your Blacksmithing Crafting Panel:
_<Create 1 Hardened Heavy Razor>_
|tip It is in the Quest Recipes category under Shadowlands Blacksmithing.
collect 1 Hardened Heavy Razor##182086 |goto 49.96,52.46 |q 61606
step
Open Your Blacksmithing Crafting Panel:
_<Create 1 Soul Razor>_
|tip It is in the Quest Recipes category under Shadowlands Blacksmithing.
collect 1 Soul Razor##181862 |goto 49.96,52.46 |q 61606
|next "Shadow_World_Quest_Emissaries"
step
label quest-58207
accept Buggin' Out##58207 |goto Maldraxxus/0 53.01,22.57
|tip You will accept this quest automatically.
step
clicknpc Twigin##160349
Gain Twigin's Aid |q 58207/1 |goto 53.01,22.57
stickystart "Slay_Bony_Spindel_Insects_58207"
step
clicknpc Injured Scout##159739+
|tip They look like wounded bugs on the ground around this area.
|tip Use the "Twigin's Wings" button on-screen to fly high in the air.
|tip Use it again to crash down to the ground, dealing damage.
Save #6# Injured Spinners |q 58207/2 |goto 54.75,20.20
step
label "Slay_Bony_Spindel_Insects_58207"
Kill enemies around this area
|tip Use the "Twigin's Wings" button on-screen to fly high in the air. |notinsticky
|tip Use it again to crash down to the ground, dealing damage. |notinsticky
Slay #12# Bony Spindel Insects |q 58207/3 |goto 54.75,20.20
|next "Shadow_World_Quest_Emissaries"
step
label quest-61477
accept Calling the Champions##61477 |goto Maldraxxus/0 50.10,55.69
|tip You will accept this quest automatically.
step
label "Retrieve_the_Flame_1"
click Brazier of Challenge
Retrieve the Flame |havebuff spell:336414 |goto 50.10,55.69 |q 61477
step
click Unlit Brazier of Challenge
|tip Follow the road.
|tip DO NOT MOUNT, you will lose the flame buff.
|tip Walk over the yellow circle runes that appear on the ground to increase your speed.
|tip Avoid the Slimelets as you run, they will make you lose the flame buff.
Light the Flame of Challenge |q 61477/1 |goto 46.57,53.69 |count 1 |or
'|complete not hasbuff("spell:336414") and countremains(61477,5) and questactive(61477) |next "Retrieve_the_Flame_1" |or
step
label "Retrieve_the_Flame_2"
click Brazier of Challenge
Retrieve the Flame |havebuff spell:336414 |goto 46.57,53.69 |q 61477
step
click Unlit Brazier of Challenge
|tip Follow the road.
|tip DO NOT MOUNT, you will lose the flame buff.
|tip Walk over the yellow circle runes that appear on the ground to increase your speed.
|tip Avoid the Slimelets as you run, they will make you lose the flame buff.
Light the Flame of Challenge |q 61477/1 |goto 44.74,45.04 |count 2 |or
'|complete not hasbuff("spell:336414") and countremains(61477,4) and questactive(61477) |next "Retrieve_the_Flame_2" |or
step
label "Retrieve_the_Flame_3"
click Brazier of Challenge
Retrieve the Flame |havebuff spell:336414 |goto 44.74,45.04 |q 61477
step
click Unlit Brazier of Challenge
|tip Follow the road.
|tip DO NOT MOUNT, you will lose the flame buff.
|tip Walk over the yellow circle runes that appear on the ground to increase your speed.
|tip Avoid the Slimelets as you run, they will make you lose the flame buff.
Light the Flame of Challenge |q 61477/1 |goto 49.84,39.11 |count 3 |or
'|complete not hasbuff("spell:336414") and countremains(61477,3) and questactive(61477) |next "Retrieve_the_Flame_3" |or
step
label "Retrieve_the_Flame_4"
click Brazier of Challenge
Retrieve the Flame |havebuff spell:336414 |goto 49.84,39.11 |q 61477
step
click Unlit Brazier of Challenge
|tip Follow the road.
|tip DO NOT MOUNT, you will lose the flame buff.
|tip Walk over the yellow circle runes that appear on the ground to increase your speed.
|tip Avoid the Slimelets as you run, they will make you lose the flame buff.
Light the Flame of Challenge |q 61477/1 |goto 56.27,44.19 |count 4 |or
'|complete not hasbuff("spell:336414") and countremains(61477,2) and questactive(61477) |next "Retrieve_the_Flame_4" |or
step
label "Retrieve_the_Flame_5"
click Brazier of Challenge
Retrieve the Flame |havebuff spell:336414 |goto 56.27,44.19 |q 61477
step
click Unlit Brazier of Challenge
|tip Follow the road.
|tip DO NOT MOUNT, you will lose the flame buff.
|tip Walk over the yellow circle runes that appear on the ground to increase your speed.
|tip Avoid the Slimelets as you run, they will make you lose the flame buff.
Light the Flame of Challenge |q 61477/1 |goto 54.33,54.24 |count 5 |or
'|complete not hasbuff("spell:336414") and countremains(61477,1) and questactive(61477) |next "Retrieve_the_Flame_5" |or
|next "Shadow_World_Quest_Emissaries"
step
label quest-60531
Follow the path |goto Maldraxxus/0 41.84,59.54 < 75 |only if walking
Continue following the path |goto 39.97,66.52 < 30 |only if walking
accept Chosen Champions##60531 |goto 34.92,75.46
|tip You will accept this quest automatically.
step
Click objects around this area
|tip Various objects glowing around this area will grant you buffs.
Kill enemies around this area
Disrupt the House of the Chosen |q 60531/1 |goto 34.92,75.46
|next "Shadow_World_Quest_Emissaries"
step
label quest-61607
accept Cooking: Spider Jerky##61607 |goto Maldraxxus/0 50.26,53.26
|tip You will accept this quest automatically.
step
click Crafter's Crate##356879
collect 1 Grave Dust##182046 |goto 50.26,53.26 |q 61607
collect 3 Thick Spider Legs##182045 |goto 50.26,53.26 |q 61607
step
cast Cooking Fire##818
Open Your Cooking Crafting Panel:
_<Create 3 Thick Spider Meat>_
|tip It is in the Quest Recipes category under Shadowlands Cooking.
|tip Stand next to the fire while cooking.
collect 3 Thick Spider Meat##182044 |goto 50.26,53.26 |q 61607
step
Open Your Cooking Crafting Panel:
_<Create 1 Spider Jerky>_
|tip It is in the Quest Recipes category under Shadowlands Cooking.
|tip Stand next to the fire while cooking.
collect 1 Spider Jerky##181946 |goto 50.26,53.26 |q 61607
|next "Shadow_World_Quest_Emissaries"
step
label quest-58490
accept Deadly Reminder##58490 |goto Maldraxxus/0 50.37,64.66
|tip You will accept this quest automatically.
step
click Empowering Crystal+
|tip They look like large floating green crystals around this area.
Kill enemies around this area
Eliminate the Lich Forces |q 58490/1 |goto 50.37,64.66
|next "Shadow_World_Quest_Emissaries"
step
label quest-61141
accept Deathfang's Favorite Toy##61141 |goto Maldraxxus/0 56.53,52.28
|tip You will accept this quest automatically.
step
Kill Bloodtusk enemies around this area
collect Throwin' Skull##180810 |q 61141/1 |goto 56.53,52.28
step
clicknpc Deathfang##171450
|tip If you lose the skull after using it, click Deathfang again to retrieve it.
use the Throwin' Skull##180810
|tip Throw it nearby.
|tip Click it when Deathfang spits it out to pick it back up.
Play with Deathfang #5# Times |q 61141/2 |goto 55.30,53.62
|next "Shadow_World_Quest_Emissaries"
step
label quest-61708
accept Drawing Out the Poison##61708 |goto Maldraxxus/0 53.94,31.31
|tip You will accept this quest automatically.
step
clicknpc Grimshadow##160917
Choose _<Ride Grimshadow.>_
Ride Grimshadow to the Flayedwing Nesting Grounds |q 61708/1 |goto 53.94,31.31
step
Watch the dialogue
Reach the Flayedwing Nesting Grounds |nobuff spell:313986 |q 61708
step
click Golden Egg+
|tip They look like giant yellow eggs on the ground around this area.
collect Phylactery of Arin'gore##174043 |q 61708/2 |goto 58.75,26.68
step
use the Phylactery of Arin'gore##174043
Destroy the Phylactery of Arin'gore |q 61708/3
step
kill Arin'gore##161196 |q 61708/4 |goto 59.43,27.06
|next "Shadow_World_Quest_Emissaries"
step
label quest-61608
accept Enchanting: Unbreakable Crystal##61608 |goto Maldraxxus/0 50.26,53.26
|tip You will accept this quest automatically.
step
click Crafter's Crate##356879
collect Antique Necromancer's Staff##182043 |goto 50.26,53.26 |q 61608
step
cast Disenchant##324750
|tip Cast it on the Antique Necromancer's Staff in your bags.
collect 1 Necrotic Essence##182042 |goto 50.26,53.26 |q 61608
step
Open Your Enchanting Crafting Panel:
_<Create 1 Unbreakable Crystal>_
|tip It is in the Quest Recipes category under Shadowlands Enchanting.
collect 1 Unbreakable Crystal##181949 |goto 50.26,53.26 |q 61608
|next "Shadow_World_Quest_Emissaries"
step
label quest-61609
accept Engineering: Boneclad Stake Launcher##61609 |goto Maldraxxus/0 50.26,53.26
|tip You will accept this quest automatically.
|polish
step
click Crafter's Crate##356879
collect 9 Machined Oxxein Bar##182040 |goto 50.26,53.26 |q 61609
step
Open Your Engineering Crafting Panel:
_<Create 2 Bone Reinforced Oxxein Tubing>_
|tip It is in the Quest Recipes category under Shadowlands Engineering.
collect 2 Bone Reinforced Oxxein Tubing##182038 |goto 49.96,52.46 |q 61609
step
Open Your Engineering Crafting Panel:
_<Create 5 Handful of Oxxein Bolts>_
|tip It is in the Quest Recipes category under Shadowlands Engineering.
collect 5 Handful of Oxxein Bolts##182039 |goto 49.96,52.46 |q 61609
step
Open Your Engineering Crafting Panel:
_<Create 1 Boneclad Stake Launcher>_
|tip It is in the Quest Recipes category under Shadowlands Engineering.
collect 1 Boneclad Stake Launcher##181952 |goto 49.96,52.46 |q 61609
|next "Shadow_World_Quest_Emissaries"
step
label quest-61867
accept Extra Pieces##61867 |goto Maldraxxus/0 34.01,55.27
|tip You will accept this quest automatically.
step
talk Rotgut##173263
Tell it _"Begin pet battle."_
Defeat Rotgut in a Pet Battle |q 61867/1 |goto 34.01,55.27
|next "Shadow_World_Quest_Emissaries"
step
label quest-61870
accept Failed Experiment##61870 |goto Maldraxxus/0 54.07,28.06
|tip You will accept this quest automatically.
step
clicknpc Gorgemouth##173274
Defeat Gorgemouth in a Pet Battle |q 61870/1 |goto 54.07,28.06
|next "Shadow_World_Quest_Emissaries"
step
label quest-61610
accept Fishing: Skeletal Mudskipper##61610 |goto Maldraxxus/0 51.52,19.78
|tip You will accept this quest automatically.
step
cast Fishing##131474
|tip Fish in the water until you catch enough fish.
collect 5 Skeletal Mudskipper##181955 |q 61610/1 |goto 51.52,19.78
|next "Shadow_World_Quest_Emissaries"
step
label quest-61667
Follow the path up |goto Maldraxxus/0 44.27,63.49 < 30 |only if walking
Enter the cave |goto 44.59,65.46 < 20 |walk
accept Forged in Secret##61667 |goto 44.45,67.81
|tip You will accept this quest automatically.
step
talk Specialist Entra##166129
Ask her _"What should I do?"_
Speak with the Forgemaster |q 61667/1 |goto 44.45,67.81
step
Kill enemies that attack in waves
Protect the Forgemaster |q 61667/2 |goto 44.51,67.74
step
kill Nasho##166437 |q 61667/3 |goto 44.51,67.74
|next "Shadow_World_Quest_Emissaries"
step
label quest-61189
accept Further Gelatinous Research##61189 |goto Maldraxxus/0 65.38,54.92
|tip You will accept this quest automatically.
step
talk Project Lead Allen##171747
Tell him _"I will assist you."_
Acquire the Accumulator |q 61189/1 |goto 65.38,54.92
step
Kill enemies around this area
use the Aqueous Material Accumulator##180876
|tip Use it on tiny slimes that spawn after killing large slimes around this area.
Gather #30# Slimes |q 61189/2 |goto 63.92,52.48
|next "Shadow_World_Quest_Emissaries"
step
label quest-58221
accept Gettin' Even##58221 |goto Maldraxxus/0 50.26,21.38
|tip You will accept this quest automatically.
stickystart "Slay_Bonefused_Constructs_58221"
step
click Crate of Salvaged Explosives+
|tip They look like crates encased in bone on the ground around this area.
Pick Up Some Explosives |complete hasbuff("spell:346686") or not haveq(58221) |goto 51.10,19.12
step
kill Salvage Hauler##164798+
|tip They fly around this area.
|tip Target one and use the "Throw Bomb" ability that appears on-screen.
collect 3 Stolen Equipment##184576 |q 58221/2 |goto 50.26,21.38 |count 3
step
click Crate of Salvaged Explosives+
|tip They look like crates encased in bone on the ground around this area.
Pick Up Some Explosives |complete hasbuff("spell:346686") or not haveq(58221) |goto 51.10,19.12
step
kill Salvage Hauler##164798+
|tip They fly around this area.
|tip Target one and use the "Throw Bomb" ability that appears on-screen.
collect 6 Stolen Equipment##184576 |q 58221/2 |goto 50.26,21.38 |count 6
step
click Crate of Salvaged Explosives+
|tip They look like crates encased in bone on the ground around this area.
Pick Up Some Explosives |complete hasbuff("spell:346686") or not haveq(58221) |goto 51.10,19.12
step
kill Salvage Hauler##164798+
|tip They fly around this area.
|tip Target one and use the "Throw Bomb" ability that appears on-screen.
collect 9 Stolen Equipment##184576 |q 58221/2 |goto 50.26,21.38 |count 9
step
click Crate of Salvaged Explosives+
|tip They look like crates encased in bone on the ground around this area.
Pick Up Some Explosives |complete hasbuff("spell:346686") or not haveq(58221) |goto 51.10,19.12
step
kill Salvage Hauler##164798+
|tip They fly around this area.
|tip Target one and use the "Throw Bomb" ability that appears on-screen.
collect 12 Stolen Equipment##184576 |q 58221/2 |goto 50.26,21.38 |count 12
step
click Crate of Salvaged Explosives+
|tip They look like crates encased in bone on the ground around this area.
Pick Up Some Explosives |complete hasbuff("spell:346686") or not haveq(58221) |goto 51.10,19.12
step
kill Salvage Hauler##164798+
|tip They fly around this area.
|tip Target one and use the "Throw Bomb" ability that appears on-screen.
collect 15 Stolen Equipment##184576 |q 58221/2 |goto 50.26,21.38 |or
step
label "Slay_Bonefused_Constructs_58221"
Kill enemies around this area
Slay #12# Bonefused Constructs |q 58221/1 |goto 50.26,21.38
step
kill Loose Stitch##165568 |q 58221/3 |goto 49.18,24.53
|tip It walks around this area.
|next "Shadow_World_Quest_Emissaries"
step
label quest-61545
accept Herbalism: Engorged Marrowroot##61545 |goto Maldraxxus/0 63.22,35.02
|tip You will accept this quest automatically.
|polish
step
click Engorged Marrowroot##356540+
|tip They look like tumors with claws on the ground around this area.
collect 20 Lush Marrowroot##181388 |q 61545/1 |goto 63.22,35.02
|next "Shadow_World_Quest_Emissaries"
step
label quest-61611
accept Inscription: Litany of Might##61611 |goto Maldraxxus/0 50.26,53.26
|tip You will accept this quest automatically.
step
click Crafter's Crate##356879
collect 10 Flayed Flesh##182297 |goto 50.26,53.26 |q 61611
collect 10 Necrotic Pigment##182037 |goto 50.26,53.26 |q 61611
step
Open Your Inscription Crafting Panel:
_<Create 10 Necrotic Ink>_
|tip It is in the Quest Recipes category under Shadowlands Inscription.
collect 10 Necrotic Ink##182036 |goto 50.26,53.26 |q 61611
step
Open Your Inscription Crafting Panel:
_<Create 10 Scroll of Unyielding Strength>_
|tip It is in the Quest Recipes category under Shadowlands Inscription.
collect 10 Scroll of Unyielding Strength##182035 |goto 50.26,53.26 |q 61611
step
Open Your Inscription Crafting Panel:
_<Create 1 Litany of Might>_
|tip It is in the Quest Recipes category under Shadowlands Inscription.
collect 1 Litany of Might##181958 |goto 50.26,53.26 |q 61611
|next "Shadow_World_Quest_Emissaries"
step
label quest-61612
accept Jewelcrafting: Carved Crystal Ring##61612 |goto Maldraxxus/0 50.26,53.26
|tip You will accept this quest automatically.
|polish
step
click Crafter's Crate##356879
collect 1 Jagged Necrotic Crystal##182034 |goto 50.26,53.26 |q 61612
step
Open Your Jewelcrafting Crafting Panel:
_<Create 1 Faceted Crystal>_
|tip It is in the Quest Recipes category under Shadowlands Jewelcrafting.
collect 1 Faceted Crystal##182033 |goto 50.26,53.26 |q 61612
step
Open Your Jewelcrafting Crafting Panel:
_<Create 1 Hollowed Crystal>_
|tip It is in the Quest Recipes category under Shadowlands Jewelcrafting.
collect 1 Hollowed Crystal##182032 |goto 50.26,53.26 |q 61612
step
Open Your Jewelcrafting Crafting Panel:
_<Create 1 Carved Crystal Ring>_
|tip It is in the Quest Recipes category under Shadowlands Jewelcrafting.
collect 1 Carved Crystal Ring##181961 |goto 50.26,53.26 |q 61612
|next "Shadow_World_Quest_Emissaries"
step
label quest-61540
accept Just Winging It##61540 |goto Maldraxxus/0 59.34,33.73
|tip You will accept this quest automatically.
step
Follow the path up |goto 59.34,33.73 < 15 |only if walking
talk Taloned Flayedwing##172871
Choose _<Ride the flayedwing back to the seat of the Primus.>_
Ride the Flayedwing |q 61540/1 |goto 59.03,33.98
step
Tame the Flayedwing |q 61540/2
|tip Use the first ability when it gets scared.
|tip Use the second ability when it tries to shake you off.
|tip Use the third ability when it is flying smoothly.
|next "Shadow_World_Quest_Emissaries"
step
label quest-61613
accept Leatherworking: Bonestudded Fists##61613 |goto Maldraxxus/0 50.26,53.26
|tip You will accept this quest automatically.
step
click Crafter's Crate##356879
collect 2 Corpsestitch Thread##182029 |goto 50.26,53.26 |q 61613
collect 6 Unused Flesh##182031 |goto 50.26,53.26 |q 61613
step
Open Your Leatherworking Crafting Panel:
_<Create 6 Cleaned Hide>_
|tip It is in the Quest Recipes category under Shadowlands Leatherworking.
collect 6 Cleaned Hide##182030 |goto 50.26,53.26 |q 61613
step
Open Your Leatherworking Crafting Panel:
_<Create 2 Bonestudded Fist>_
|tip It is in the Quest Recipes category under Shadowlands Leatherworking.
collect 2 Bonestudded Fist##181966 |goto 50.26,53.26 |q 61613
|next "Shadow_World_Quest_Emissaries"
step
label quest-61539
accept Liches Get Stitches##61539 |goto Maldraxxus/0 67.17,28.54
|tip You will accept this quest automatically.
step
Kill enemies around this area
Disrupt the Sin'dane's Forces |q 61539/1 |goto 67.17,28.54
|next "Shadow_World_Quest_Emissaries"
step
label quest-61866
accept Mighty Minions of Maldraxxus##61866 |goto Maldraxxus/0 46.86,50.00
|tip You will accept this quest automatically.
step
talk Caregiver Maximillian##173257
Tell him _"Begin pet battle."_
Defeat Caregiver Maximillian in a Pet Battle |q 61866/1 |goto 46.86,50.00
|next "Shadow_World_Quest_Emissaries"
step
label quest-61537
accept Mining: Monolithic Oxxein Cluster##61537 |goto Maldraxxus/0 37.77,49.50
|tip You will accept this quest automatically.
|polish
step
click Monolithic Oxxein Deposit##356401+
|tip They look like green orbs stuck in stone on the ground around this area.
collect 30 Monolithic Oxxein Ore##181719 |q 61537/1 |goto 37.77,49.50
|next "Shadow_World_Quest_Emissaries"
step
label quest-59234
accept Mixing A Mess##59234 |goto Maldraxxus/0 60.71,77.24
|tip You will accept this quest automatically.
step
kill Burning Extract##165027+
|tip Click the oil, goo, or ooze that sometimes spawns after killing extracts.
Collect an Oozing Ingredient |q 59234/1 |goto 60.71,77.24 |count 1
step
Deliver #3# Viscous Oil, Mephitic Goo, or Miscible Ooze to the Pool |q 59234/2 |goto 58.43,74.31 |count 1
|tip Walk near the pool of blood.
step
kill Burning Extract##165027+
|tip Click the oil, goo, or ooze that sometimes spawns after killing extracts.
Collect an Oozing Ingredient |q 59234/1 |goto 60.71,77.24 |count 2
step
Deliver #3# Viscous Oil, Mephitic Goo, or Miscible Ooze to the Pool |q 59234/2 |goto 58.43,74.31 |count 2
|tip Walk near the pool of blood.
step
kill Burning Extract##165027+
|tip Click the oil, goo, or ooze that sometimes spawns after killing extracts.
Collect an Oozing Ingredient |q 59234/1 |goto 60.71,77.24 |count 3
step
Deliver #3# Viscous Oil, Mephitic Goo, or Miscible Ooze to the Pool |q 59234/2 |goto 58.43,74.31 |count 3
|tip Walk near the pool of blood.
|next "Shadow_World_Quest_Emissaries"
step
label quest-61816
accept Mortanis##61816 |goto Maldraxxus/0 32.26,67.13
|tip You will accept this quest automatically.
step
kill Necrotic Ritualist##173414+
|tip Killing the ritualists will spawn Mortanis.
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid standing in the path of "Spine Crawl." |grouprole EVERYONE
|tip Move out of "Unruly Remains" areas on the ground. |grouprole EVERYONE
|tip When affected by "Screaming Skull," group up with the raid. |grouprole EVERYONE
|tip Dispel "Unholy Frenzy" on Mortanis whenever possible. |grouprole EVERYONE
_TANK:_ |grouprole TANK
|tip Stack with the other tanks to split damage from "Bone Cleave." |grouprole TANK
kill Mortanis##167525 |q 61816/1 |goto 32.04,66.98 |future
|next "Shadow_World_Quest_Emissaries"
step
label quest-61841
click Translocation Sphere: House of Plagues |goto Maldraxxus/0 59.79,71.22 < 7 |only if walking
Enter the House of Plagues |goto 62.03,68.46 < 40 |c |noway |q 61841 |future
accept Not Much to Goo On##61841 |goto 65.14,66.36
|tip You will accept this quest automatically.
|polish
stickystart "Kill_Green_Slimes_61841"
step
kill Compressed Plague##157509 |q 61841/2 |goto 65.14,66.36
step
label "Kill_Green_Slimes_61841"
kill 10 Green Slime##166358 |q 61841/1 |goto 64.81,66.45
|next "Shadow_World_Quest_Emissaries"
step
label quest-61699
click Translocation Sphere: House of Plagues |goto Maldraxxus/0 59.79,71.22 < 7 |only if walking
Enter the House of Plagues |goto 62.03,68.46 < 40 |c |noway |q 61699 |future
|polish
step
accept Not Much to Goo On##61699 |goto Maldraxxus/0 65.14,66.36
|tip You will accept this quest automatically.
step
click Unbroken Plague Sample+
|tip They look like large bottles on the ground around this area.
Kill enemies around this area
Reclaim the House of Plagues |q 61699/1 |goto 65.14,66.36
|next "Shadow_World_Quest_Emissaries"
step
label quest-58437
accept Parts to a Whole##58437 |goto Maldraxxus/0 25.55,33.23
|tip You will accept this quest automatically.
step
Kill enemies around this area
use the Disassembly Flag##174110
|tip use it on the corpses of the enmies you kill.
Mark #15# Corpses for Harvesting |q 58437/1 |goto 25.55,33.23
|next "Shadow_World_Quest_Emissaries"
step
label quest-58505
accept Planned Demise##58505 |goto Maldraxxus/0 53.76,66.01
|tip You will accept this quest automatically.
step
Kill enemies around this area
collect Lich Battle Plan##174231 |q 58505/1 |goto 53.76,66.01
step
Kill enemies around this area
collect Construct Field Plan##174233 |q 58505/3 |goto 51.71,64.62
step
Kill enemies around this area
collect Varyz Tactical Plan##174232 |q 58505/2 |goto 48.76,64.71
|next "Shadow_World_Quest_Emissaries"
step
label quest-59642
accept Pulling Hairs##59642 |goto Maldraxxus/0 55.30,37.03
|tip You will accept this quest automatically.
stickystart "Collect_Stringy_Growth_59642"
stickystart "Collect_Corpselouse_Bristles_59642"
step
kill Sour Suckle##165549
collect Sour Suckle's Antenni##176847 |q 59642/3 |goto 55.30,37.03
step
label "Collect_Stringy_Growth_59642"
clicknpc Stringy Growth##165440+
|tip They look like tall thin weeds on the ground around this area.
|tip Run away after clicking them to pull them out of the ground.
|tip They appear on your minimap as yellow dots.
collect 8 Stringy Growth##176808 |q 59642/1 |goto 55.88,38.33
step
label "Collect_Corpselouse_Bristles_59642"
Kill Corpselouse enemies around this area
collect 8 Corpselouse Bristles##176846 |q 59642/2 |goto 55.88,38.33
|next "Shadow_World_Quest_Emissaries"
step
label quest-61614
accept Skinning: Rugged Carapace##61614 |goto Maldraxxus/0 54.00,58.99
|tip You will accept this quest automatically.
step
kill Virulent Pest##159856+
|tip Skin their corpses.
collect 10 Rugged Carapace##181969 |q 61614/1 |goto 54.00,58.99
|next "Shadow_World_Quest_Emissaries"
step
label quest-61060
accept Spore Losers##61060 |goto Maldraxxus/0 76.10,55.83
|tip You will accept this quest automatically.
step
click Fungret Mushroom
Eat the Fungret Mushroom |q 61060/1 |goto 76.10,55.83
step
Kill enemies around this area
|tip Use the abilities on your action bar.
|tip Use the "Fungarian Furor" ability near Fungret Mushrooms.
Get Revenge for the Fungrets |q 61060/2 |goto 73.17,51.10
|next "Shadow_World_Quest_Emissaries"
step
label quest-60211
accept Spore Losers##60211 |goto Maldraxxus/0 76.10,55.83
|tip You will accept this quest automatically.
step
click Fungret Mushroom
Eat the Fungret Mushroom |q 60211/1 |goto 76.10,55.83
step
Kill enemies around this area
|tip Use the abilities on your action bar.
|tip Use the "Fungarian Furor" ability near Fungret Mushrooms.
Get Revenge for the Fungrets |q 60211/2 |goto 73.17,51.10
|next "Shadow_World_Quest_Emissaries"
step
label quest-60231
accept State of Decay##60231 |goto Maldraxxus/0 66.64,57.69
|tip You will accept this quest automatically.
|polish
step
click Spike Door
|tip Go inside the building.
clicknpc Toxic Slime##167563+
|tip They look like small green slimes on the ground inside the building.
Kill Slimed enemies and enemy players around this area
|tip Use the "Throw Slime" button that appears after clicking Toxic Slimes.
|tip Throw the slime on players and unslimed enemies.
Kill Slimed Enemies or Players |q 60231/1 |goto 66.64,57.69
|next "Shadow_World_Quest_Emissaries"
step
label quest-61615
accept Tailoring: Haunting Hood##61615 |goto Maldraxxus/0 50.26,53.26
|tip You will accept this quest automatically.
step
click Crafter's Crate##356879
collect 13 Bleakthread##182028 |goto 50.26,53.26 |q 61615
step
Open Your Tailoring Crafting Panel:
_<Create 4 Bleakcloth>_
|tip It is in the Quest Recipes category under Shadowlands Tailoring.
collect 4 Bleakcloth##182117 |goto 50.26,53.26 |q 61615
step
Open Your Tailoring Crafting Panel:
_<Create 2 Bolt of Bleakcloth>_
|tip It is in the Quest Recipes category under Shadowlands Tailoring.
collect 2 Bolt of Bleakcloth##182116 |goto 50.26,53.26 |q 61615
step
Open Your Tailoring Crafting Panel:
_<Create 1 Haunting Hood>_
|tip It is in the Quest Recipes category under Shadowlands Tailoring.
collect 1 Haunting Hood##181972 |goto 50.26,53.26 |q 61615
|next "Shadow_World_Quest_Emissaries"
step
label quest-59743
accept The Spider on the Wall##59743 |goto Maldraxxus/0 31.69,59.44
|tip You will accept this quest automatically.
step
label "Speak_with_Khaliiq"
talk Khaliiq##165966
Tell it _"Hide me in the shadows, Khaliiq."_
|tip If you lose your buff, use the "Strategic Retreat" button on-screen to return to Khaliiq.
Speak with Khaliiq |havebuff spell:323591 |goto 31.69,59.44 |q 59743
step
Use the _"Widow Venom"_ ability
|tip It appears as a button on the screen.
|tip Use it on Requisitioner Kem to loot him without having to kill him.
|tip Avoid enemies with blue circles around them as you move.
collect Requisitioner's Scroll##177693 |q 59743/2 |goto 37.54,73.35 |or
'|complete not hasbuff("spell:323591") and haveq(59743) and not completedq(59743) |next "Speak_with_Khaliiq" |or
step
Use the _"Widow Venom"_ ability
|tip It appears as a button on the screen.
|tip Use it on Captain Hawken to loot him without having to kill him.
|tip Avoid enemies with blue circles around them as you move.
collect Patrol Schedule##177710 |q 59743/3 |goto 35.40,79.44 |or
'|complete not hasbuff("spell:323591") and haveq(59743) and not completedq(59743) |next "Speak_with_Khaliiq" |or
step
Use the _"Widow Venom"_ ability
|tip It appears as a button on the screen.
|tip Use it on Mel'san to loot him without having to kill him.
|tip Avoid enemies with blue circles around them as you move.
collect Envoy's Letter##177712 |q 59743/4 |goto 33.54,74.10 |or
'|complete not hasbuff("spell:323591") and haveq(59743) and not completedq(59743) |next "Speak_with_Khaliiq" |or
|next "Shadow_World_Quest_Emissaries"
step
label quest-61868
accept Uncomfortably Undercover##61868 |goto Maldraxxus/0 63.23,46.88
|tip You will accept this quest automatically.
step
talk Dundley Stickyfingers##173267
Tell him _"Begin pet battle."_
Defeat Dundley Stickyfingers in a Pet Battle |q 61868/1 |goto 63.23,46.88
|next "Shadow_World_Quest_Emissaries"
step
label quest-58601
accept Web of Information##58601 |goto Maldraxxus/0 55.65,18.83
|tip You will accept this quest automatically.
step
click Necrotic Sentry+
|tip The circle in the center will show you how close you are to a hidden Necrosentry.
|tip The closer to 100/100 you are, the closer you are to the sentry.
|tip They look like skulls that are invisible around this area.
Destroy #5# Necrotic Sentries |q 58601/1 |goto 55.65,18.83
|next "Shadow_World_Quest_Emissaries"
step
label "Shadow_World_Quest_Emissaries"
#include "Shadow_World_Quest_Emissaries"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Shadowlands (50-60)\\The Maw World Quests",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing world quests in The Maw.",
condition_suggested=function() return level >= 50 end,
startlevel=50.0,
worldquestzone={1550,1543},
patch='90100',
},[[
step
label "Choose_World_Quest"
#include "Shadow_Choose_World_Quests"
step
label quest-64273
accept Containing the Helsworn##64273 |goto The Maw/0 65.06,51.46
|tip You will accept this quest automatically.
step
Kill enemies around this area
Discrupt Destmotaeron |q 64273/1 |goto 65.06,51.46
|next "Shadow_World_Quest_Emissaries"
step
label quest-64531
accept Mor'geth##64531 |goto The Maw/0 68.87,43.94
|tip You will accept this quest automatically.
step
_EVERYONE:_ |grouprole EVERYONE
|tip Areas walled off by "Soul Chains" are obscured from the outside and can't be interacted with. |grouprole EVERYONE
|tip At 100 energy, Mor'geth will cast "Damnation," requiring the group to stay away from his frontal cone as he rotates. |grouprole EVERYONE
_DPS:_ |grouprole DAMAGE
|tip Kill activated Soul Cages quickly to return them to their starting positions. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Dispel "Unleashed Suffering" whenever possible. |grouprole HEALER
|tip Anyone standing in the path of "Damnation" will take heavy damage and be knocked back. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Pick up Loose Souls as they are released from Soul Cages. |grouprole TANK
|tip Stay in melee range to avoid damage from "Tortuous Reach." |grouprole TANK
kill Mor'geth##178958 |q 64531/1 |goto 68.87,43.94
|next "Shadow_World_Quest_Emissaries"
step
label "Shadow_World_Quest_Emissaries"
#include "Shadow_World_Quest_Emissaries"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Shadowlands (50-60)\\Revendreth World Quests",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing world quests in Revendreth.",
condition_suggested=function() return level >= 50 end,
startlevel=50.0,
worldquestzone={1550,1525},
patch='90001',
},[[
step
label "Choose_World_Quest"
#include "Shadow_Choose_World_Quests"
step
label quest-61619
accept Alchemy: Elixir of Humility##61619 |goto Revendreth/0 32.68,49.02
|tip You will accept this quest automatically.
|polish
step
click Crafter's Crate##356880
collect 3 Fresh Bramblethorn Trimmings##182073 |goto 32.68,49.02 |q 61619
step
Open Your Alchemy Crafting Panel:
_<Create 3 Bramblethorn Juice>_
|tip It is in the Quest Recipes category under Shadowlands Alchemy.
collect 3 Bramblethorn Juice##182072 |goto 32.68,49.02 |q 61619
step
Open Your Alchemy Crafting Panel:
_<Create 1 Refined Submission>_
|tip It is in the Quest Recipes category under Shadowlands Alchemy.
collect 1 Refined Submission##182071 |goto 32.68,49.02 |q 61619
step
Open Your Alchemy Crafting Panel:
_<Create 1 Elixir of Humility>_
|tip It is in the Quest Recipes category under Shadowlands Alchemy.
collect 1 Elixir of Humility##181857 |goto 32.68,49.02 |q 61619
|next "Shadow_World_Quest_Emissaries"
step
label quest-59904
accept A Curious Cache##59904 |goto Revendreth/0 45.21,67.20
|tip You will accept this quest automatically.
step
Kill enemies around this area
Slay #10# Banewood Wildlife |q 59904/1 |goto 45.21,67.20
|next "Shadow_World_Quest_Emissaries"
step
label quest-59905
accept A Curious Cache##59905 |goto Revendreth/0 45.21,67.20
|tip You will accept this quest automatically.
step
Kill enemies around this area
Slay #10# Banewood Wildlife |q 59905/1 |goto 45.21,67.20
|next "Shadow_World_Quest_Emissaries"
step
label quest-59902
accept A Curious Cache##59902 |goto Revendreth/0 45.21,67.20
|tip You will accept this quest automatically.
step
Kill enemies around this area
Slay #10# Banewood Wildlife |q 59902/1 |goto 45.21,67.20
|next "Shadow_World_Quest_Emissaries"
step
label quest-60655
accept A Stolen Stone Fiend##60655 |goto Revendreth/0 57.23,39.76
|tip You will accept this quest automatically.
step
use the Stone Fiend Tracker##180249
|tip Use it to display a trail leading to the Missing Stone Fiend.
click Lid
Find the Missing Stone Fiend |q 60655/1 |goto 57.23,39.76
step
use the Stone Fiend Tracker##180249
|tip Use it to display a trail leading to the Missing Stone Fiend.
Enter the building |goto 54.49,38.88 < 7 |walk
click Lid
|tip Inside the building.
Find the Missing Stone Fiend |q 60655/2 |goto 54.31,38.33
step
use the Stone Fiend Tracker##180249
|tip Use it to display a trail leading to the Missing Stone Fiend.
Enter the building |goto 52.64,47.20 < 7 |walk
click Lid
|tip Inside the building.
Find the Missing Stone Fiend |q 60655/3 |goto 52.46,46.92
step
use the Stone Fiend Tracker##180249
|tip Use it to display a trail leading to the Missing Stone Fiend.
click Lid
Find the Missing Stone Fiend |q 60655/4 |goto 46.53,48.44
step
kill Edgar the Collector##170079
Rescue the Missing Stone Fiend |q 60655/5 |goto 46.08,48.99
|next "Shadow_World_Quest_Emissaries"
step
label quest-60657
accept Aid From Above##60657 |goto Revendreth/0 71.44,41.08
|tip You will accept this quest automatically.
step
clicknpc Darkwing Legionnaire##
Ride the Legionnaire |invehicle |goto 71.44,41.08 |q 60657
step
Deliver #10# Supplies |q 60657/1 |goto 67.21,43.89
|tip Use the "Deploy Supplier" ability on your action bar directly over the blue circles with arrows over them around this area.
|tip You have to drop the supplier in the circles to get credit.
|tip Facing your camera straight down can help.
|next "Shadow_World_Quest_Emissaries"
step
label quest-60658
accept An Endless Appetite##60658 |goto Revendreth/0 63.09,56.06
|tip You will accept this quest automatically.
|polish
step
click Endmire Blossom
|tip It looks like a glowing red and orange flower on the ground around this area.
collect Endmire Blossom##181496 |q 60658/1 |goto 64.51,56.24
step
talk Morgan##172495
Choose _<Give the Endmire Blossom to Morgan.>_
Speak to Morgan |q 60658/2 |goto 59.25,59.92
step
label "Become_the_Ravenous_Devourer"
talk Morgan##172495
Tell her _"I am ready."_
Become the Ravenous Devourer |invehicle |goto 59.25,59.92 |q 60658
step
Kill enemies around this area
|tip Use the abilities on your action bar.
|tip Use the "Devour Flower" ability on glowing red an orange flowers to restore health and your docility bar.
Devour Enemies |q 60658/3 |goto 58.95,56.51 |or
You can find more around [65.13,56.37]
'|complete not invehicle() and not completedq(60658) and questactive(60658) |next "Become_the_Ravenous_Devourer" |or
|next "Shadow_World_Quest_Emissaries"
step
label quest-61879
accept Ashes Will Fall##61879 |goto Revendreth/0 25.26,38.00
|tip You will accept this quest automatically.
step
clicknpc Scorch##173303
Defeat Scorch in a Pet Battle |q 61879/1 |goto 25.26,38.00
|next "Shadow_World_Quest_Emissaries"
step
label quest-58144
accept Battered and Bruised##58144 |goto Revendreth/0 24.37,38.68
|tip You will accept this quest automatically.
step
click Iron Chains
Collect the Chains |q 58144/1 |goto 24.37,38.68
stickystart "Slay_Ash_Ghouls_58144"
step
clicknpc Neglected Soul##160400
|tip Each soul will give you a debuff increasing your damage taken by 20%.
Retrieve #8# Neglected Souls |q 58144/2 |goto 22.71,35.96
Return the souls to [24.30,38.63]
step
label "Slay_Ash_Ghouls_58144"
Kill enemies around this area
Slay #12# Ash Ghouls |q 58144/3 |goto 22.71,35.96
|next "Shadow_World_Quest_Emissaries"
step
label quest-61620
accept Blacksmithing: Prideful Manacles##61620 |goto Revendreth/0 32.67,48.98
|tip You will accept this quest automatically.
|polish
step
click Crafter's Crate##356880
collect 1 Enchanted Rivets##182089 |goto 32.67,48.98 |q 61620
collect 2 Borrowed Sinvyr Bar##182091 |goto 32.67,48.98 |q 61620
collect 3 Borrowed Sinvyr Rod##182094 |goto 32.67,48.98 |q 61620
step
Open Your Blacksmithing Crafting Panel:
_<Create 3 Soft Manacle Chains>_
|tip It is in the Quest Recipes category under Shadowlands Blacksmithing.
collect 3 Soft Manacle Chains##182093 |goto 32.62,49.31 |q 61620
step
Open Your Blacksmithing Crafting Panel:
_<Create 1 Tempered Manacle Chains>_
|tip It is in the Quest Recipes category under Shadowlands Blacksmithing.
collect 1 Tempered Manacle Chains##182092 |goto 32.62,49.31 |q 61620
step
Open Your Blacksmithing Crafting Panel:
_<Create 2 Binding Cuffs>_
|tip It is in the Quest Recipes category under Shadowlands Blacksmithing.
collect 2 Binding Cuffs##182090 |goto 32.62,49.31 |q 61620
step
Open Your Blacksmithing Crafting Panel:
_<Create 1 Prideful Manacles>_
|tip It is in the Quest Recipes category under Shadowlands Blacksmithing.
collect 1 Prideful Manacles##181378 |goto 32.62,49.31 |q 61620
|next "Shadow_World_Quest_Emissaries"
step
label quest-61621
accept Cooking: Skewered Meats##61621 |goto Revendreth/0 32.67,48.98
|tip You will accept this quest automatically.
step
click Crafter's Crate##356880
collect 1 Ember Chilis##182096 |goto 32.67,48.98 |q 61621
collect 4 Fresh Beast Steak##182070 |goto 32.67,48.98 |q 61621
step
cast Cooking Fire##818
Open Your Cooking Crafting Panel:
_<Create 1 Ember Sauce>_
|tip It is in the Quest Recipes category under Shadowlands Cooking.
|tip Stand next to the fire while cooking.
collect 1 Ember Sauce##182068 |goto 32.67,48.98 |q 61621
step
Open Your Cooking Crafting Panel:
_<Create 4 Seared Cutlets>_
|tip It is in the Quest Recipes category under Shadowlands Cooking.
|tip Stand next to the fire while cooking.
collect 4 Seared Cutlets##182069 |goto 32.67,48.98 |q 61621
step
Open Your Cooking Crafting Panel:
_<Create 1 Skewered Meats>_
|tip It is in the Quest Recipes category under Shadowlands Cooking.
|tip Stand next to the fire while cooking.
collect 1 Skewered Meats##181947 |goto 32.67,48.98 |q 61621
|next "Shadow_World_Quest_Emissaries"
step
label quest-60601
accept Darkwing Drills##60601 |goto Revendreth/0 58.64,43.28
|tip You will accept this quest automatically.
step
talk Darkwing Assassin##169419
_Or_
talk Darkwing Aggressor##169420
Tell it _"I am ready."_
Choose a Trainee |q 60601/1 |goto 58.64,43.28
step
Kill enemies around this area
|tip Use the abilities on your action bar.
Train the Trainee |q 60601/2 |goto 58.91,49.55
|next "Shadow_World_Quest_Emissaries"
step
label quest-60532
accept Destroy the Dominant##60532 |goto Revendreth/0 33.03,20.99
|tip You will accept this quest automatically.
|tip This quest is elite, so you may need a group.
step
Kill enemies around this area
|tip Avoid the large stone watchers that look like gargoyles.
Disrupt Dominance Keep |q 60532/1 |goto 33.03,20.99
|next "Shadow_World_Quest_Emissaries"
step
label quest-57443
accept Dirty Job: Demolition Detail##57443 |goto Revendreth/0 53.64,73.49
|tip You will accept this quest automatically.
step
clicknpc Ripened Laborer##172929+
|tip They look like small humanoids around this area.
Grab a Dredger |q 57443/1 |goto 53.64,73.49
step
clicknpc Ripened Laborer##172929+
|tip They look like small humanoids around this area.
Demolish #3# Rubble Wreckages |q 57443/2 |goto 53.64,73.49
|tip Use the "Throw Dredger" ability on-screen to toss a dredger at the piles of rocks.
|tip Defend the dredger from any enemies that attack it until it destroys the tree.
|next "Shadow_World_Quest_Emissaries"
step
label quest-57465
accept Dirty Job: Wood Work##57465 |goto Revendreth/0 73.97,75.44
|tip You will accept this quest automatically.
step
clicknpc Ripened Laborer##172929+
|tip They look like small humanoids around this area.
Grab a Dredger |q 57465/1 |goto 74.13,75.18
step
clicknpc Ripened Laborer##172929+
|tip They look like small humanoids around this area.
Destroy #3# Infested Horror Saps |q 57465/2 |goto 74.13,75.18
|tip Use the "Throw Dredger" ability on-screen to toss a dredger at the giant trees.
|tip Defend the dredger from any enemies that attack it until it destroys the tree.
|next "Shadow_World_Quest_Emissaries"
step
label quest-61630
accept Enchanting: Everburning Brand##61630 |goto Revendreth/0 32.67,48.98
|tip You will accept this quest automatically.
step
click Crafter's Crate##356880
collect 1 Antique Duelist's Rapier##182067 |goto 32.67,48.98 |q 61630
step
cast Disenchant##324750
|tip Cast it on the Antique Duelist's Rapier in your bags.
collect 1 Sanguine Crystal##182066 |goto 32.67,48.98 |q 61630
step
Open Your Enchanting Crafting Panel:
_<Create 1 Everburning Brand>_
|tip It is in the Quest Recipes category under Shadowlands Enchanting.
collect 1 Everburning Brand##181950 |goto 32.67,48.98 |q 61630
|next "Shadow_World_Quest_Emissaries"
step
label quest-61622
accept Engineering: Duelist's Pistol##61622 |goto Revendreth/0 32.67,48.98
|tip You will accept this quest automatically.
|polish
step
click Crafter's Crate##356880
collect 8 Machined Sinvyr Bar##182064 |goto 32.67,48.98 |q 61622
step
Open Your Engineering Crafting Panel:
_<Create 1 Sinvyr Barrel>_
|tip It is in the Quest Recipes category under Shadowlands Engineering.
collect 1 Sinvyr Barrel##182062 |goto 32.62,49.31 |q 61622
step
Open Your Engineering Crafting Panel:
_<Create 1 Sinvyr Trigger Mechanism>_
|tip It is in the Quest Recipes category under Shadowlands Engineering.
collect 1 Sinvyr Trigger Mechanism##182063 |goto 32.62,49.31 |q 61622
step
Open Your Engineering Crafting Panel:
_<Create 1 Duelist's Pistol>_
|tip It is in the Quest Recipes category under Shadowlands Engineering.
collect 1 Duelist's Pistol##181953 |goto 32.62,49.31 |q 61622
|next "Shadow_World_Quest_Emissaries"
step
label quest-61885
accept Eyegor's Special Friends##61885 |goto Revendreth/0 67.63,66.08
|tip You will accept this quest automatically.
step
talk Eyegor##173324
Tell him _"Begin pet battle."_
Defeat Eyegor in a Pet Battle |q 61885/1 |goto 67.63,66.08
|next "Shadow_World_Quest_Emissaries"
step
label quest-61623
accept Fishing: Bloodthroated Grouper##61623 |goto Revendreth/0 68.99,61.53
|tip You will accept this quest automatically.
step
cast Fishing##131474
|tip Fish in the water until you catch enough fish.
collect 5 Bloodthroated Grouper##181956 |q 61623/1 |goto 68.99,61.53
|next "Shadow_World_Quest_Emissaries"
step
label quest-59803
accept For Honor##59803 |goto Revendreth/0 42.29,33.43
|tip You will accept this quest automatically.
|polish
step
Kill Honored Duelists or enemy players around this area
Win Duels Against Players or Honorable Duelists |q 59803/1 |goto 42.29,33.43
|next "Shadow_World_Quest_Emissaries"
step
label quest-61544
accept Herbalism: Lush Widowbloom##61544 |goto Revendreth/0 40.97,78.00
|tip You will accept this quest automatically.
|polish
step
click Lush Widowbloom##356539+
|tip They look like red and white flowers on the ground around this area.
collect 35 Lush Widowbloom##181762 |q 61544/1 |goto 40.97,78.00
step
label quest-61624
accept Inscription: Catalog of Sins##61624 |goto Revendreth/0 32.67,48.98
|tip You will accept this quest automatically.
step
click Crafter's Crate##356880
collect 10 Rigid Vellum##182309 |goto 32.67,48.98 |q 61624
collect 10 Prideful Pigment##182061 |goto 32.67,48.98 |q 61624
step
Open Your Inscription Crafting Panel:
_<Create 10 Prideful Ink>_
|tip It is in the Quest Recipes category under Shadowlands Inscription.
collect 10 Prideful Ink##182060 |goto 32.67,48.98 |q 61624
step
Open Your Inscription Crafting Panel:
_<Create 10 Scroll of Castigation>_
|tip It is in the Quest Recipes category under Shadowlands Inscription.
collect 10 Scroll of Castigation##182059 |goto 32.67,48.98 |q 61624
step
Open Your Inscription Crafting Panel:
_<Create 1 Catalog of Sins>_
|tip It is in the Quest Recipes category under Shadowlands Inscription.
collect 1 Catalog of Sins##181959 |goto 32.67,48.98 |q 61624
|next "Shadow_World_Quest_Emissaries"
step
label quest-59643
accept It's Race Day in the Ramparts!##59643 |goto Revendreth/0 40.56,46.88
|tip You will accept this quest automatically.
step
talk Grand Marshal Mudrag##165419
Speak to Grand Marshal Mudrag |q 59643/1 |goto 40.56,46.88
step
label "Hop_in_a_Wheelbarrow"
talk Grand Marshal Mudrag##165419
Tell him _"I'm ready."_
Hop in a Wheelbarrow |invehicle |goto 40.56,46.88 |q 59643
step
Follow the path down |goto 39.20,50.93 < 30 |walk
Continue down the path |goto 40.57,55.61 < 30 |walk
Continue down the path |goto 40.83,57.27 < 30 |walk
Win the Wheelbarrow Race |q 59643/2 |or |goto 39.99,59.06
|tip Avoid the bubbling black tar spots on the ground.
|tip Pick up the speed boosts that look like boots with wings on them.
|tip Run over shiny piles of rubble to enable the "Throw Rubble" ability.
|tip Use the "Throw Rubble" ability on your action bar to disrupt your opponent's progress.
'|complete outvehicle() and not completedq(59643) and questactive(59643) |next "Hop_in_a_Wheelbarrow" |or
|next "Shadow_World_Quest_Emissaries"
step
label quest-61625
accept Jewelcrafting: Sinister Choker##61625 |goto Revendreth/0 32.67,48.98
|tip You will accept this quest automatically.
|polish
step
click Crafter's Crate##356880
collect 5 Polished Sinvyr Bar##182058 |goto 32.67,48.98 |q 61625
collect 3 Garnet Shard##182308 |goto 32.67,48.98 |q 61625
step
Open Your Jewelcrafting Crafting Panel:
_<Create 5 Fine Sinvyr Chain>_
|tip It is in the Quest Recipes category under Shadowlands Jewelcrafting.
collect 5 Fine Sinvyr Chain##182057 |goto 32.67,48.98 |q 61625
step
Open Your Jewelcrafting Crafting Panel:
_<Create 3 Brilliant Bauble>_
|tip It is in the Quest Recipes category under Shadowlands Jewelcrafting.
collect 3 Brilliant Bauble##182056 |goto 32.67,48.98 |q 61625
step
Open Your Jewelcrafting Crafting Panel:
_<Create 1 Sinister Choker>_
|tip It is in the Quest Recipes category under Shadowlands Jewelcrafting.
collect 1 Sinister Choker##181964 |goto 32.67,48.98 |q 61624
|next "Shadow_World_Quest_Emissaries"
step
label quest-61626
accept Leatherworking: Courtly Leather Boots##61626 |goto Revendreth/0 32.67,48.98
|tip You will accept this quest automatically.
step
click Crafter's Crate##356880
collect 8 Ragged Sinrunner Leather##182055 |goto 32.67,48.98 |q 61626
step
Open Your Leatherworking Crafting Panel:
_<Create 8 Softened Leather>_
|tip It is in the Quest Recipes category under Shadowlands Leatherworking.
collect 8 Softened Leather##182054 |goto 32.67,48.98 |q 61626
step
Open Your Leatherworking Crafting Panel:
_<Create 2 Tortured Sole>_
|tip It is in the Quest Recipes category under Shadowlands Leatherworking.
collect 2 Tortured Sole##182053 |goto 32.67,48.98 |q 61626
step
Open Your Leatherworking Crafting Panel:
_<Create 1 Courtly Leather Boots>_
|tip It is in the Quest Recipes category under Shadowlands Leatherworking.
collect 1 Courtly Leather Boots##181967 |goto 32.67,48.98 |q 61626
|next "Shadow_World_Quest_Emissaries"
step
label quest-60659
accept Light Defense##60659 |goto Revendreth/0 38.32,39.79
|tip You will accept this quest automatically.
step
label "Secure_the_Mirror"
click Ornate Mirror
Secure the Mirror |invehicle |goto 38.32,39.79 |q 60659
step
Kill enemies around this area
|tip Use the abilities on your action bar to shine the light on them.
|tip Carved Tricksters will appear and attempt to attack you.
|tip Shine the light on the Carved Tricksters first.
Slay the Enemies |q 60659/2 |goto 38.32,39.79 |or
'|complete outvehicle() and not completedq(60659) and questactive(60659) |next "Secure_the_Mirror" |or
|next "Shadow_World_Quest_Emissaries"
step
label quest-62203
accept Major Mirror Disruptions##62203 | |goto Revendreth/0 31.98,46.71
|tip You will accept this quest automatically.
|polish
step
label "Enter_The_Forgotten_Chamber"
Run down the stairs |goto 32.00,46.69 < 15 |walk |only if dist("Revendreth/0 31.25,46.68") > 45
Enter the Mirror |goto 31.12,46.68 < 2
|tip Downstairs inside the building.
Enter the Forgotten Chamber |goto 30.82,47.95 < 5 |c |noway |q 62203 |future
step
Enter the Right Mirror |goto 30.91,48.43 < 2
Enter the Second Chamber |goto 30.86,46.63 < 5 |c |noway |q 62203 |or
'|goto 31.25,46.68 |c |noway |next "Enter_The_Forgotten_Chamber" |or |only if questactive(62203)
'|goto 30.86,46.63 > 100 |c |noway |next "Enter_The_Forgotten_Chamber" |or |only if questactive(62203)
step
Enter the Front-Left Mirror |goto 31.10,46.37 < 2
Enter the Third Chamber |goto 31.70,46.62 < 5 |c |noway |q 62203 |or
'|goto 31.25,46.68 |c |noway |next "Enter_The_Forgotten_Chamber" |or |only if questactive(62203)
'|goto 31.70,46.62 > 100 |c |noway |next "Enter_The_Forgotten_Chamber" |or |only if questactive(62203)
step
Enter the Front-Right Mirror |goto 32.01,46.88 < 2
Enter the Fourth Chamber |goto 30.85,47.96 < 5 |c |noway |q 62203 |or
'|goto 31.25,46.68 |c |noway |next "Enter_The_Forgotten_Chamber" |or |only if questactive(62203)
'|goto 30.85,47.96 > 100 |c |noway |next "Enter_The_Forgotten_Chamber" |or |only if questactive(62203)
step
Enter the Front-Center Mirror |goto 31.09,47.96 < 2
Enter the Fifth Chamber |goto 31.75,47.96 < 5 |c |noway |q 62203 |or
'|goto 31.25,46.68 |c |noway |next "Enter_The_Forgotten_Chamber" |or |only if questactive(62203)
'|goto 30.85,47.96 > 100 |c |noway |next "Enter_The_Forgotten_Chamber" |or |only if questactive(62203)
step
Enter the Left Mirror |goto 31.80,47.50 < 2
Reach the End of the Maze |q 62203/1 |goto 31.80,48.38 |or
step
kill Krengaath##163921 |q 62203/2 |goto 26.58,58.88
|next "Shadow_World_Quest_Emissaries"
step
label quest-62204
accept Major Mirror Disruptions##62204 |goto Revendreth/0 31.98,46.71
|tip You will accept this quest automatically.
|polish
step
label "Enter_The_Forgotten_Chamber"
Run down the stairs |goto 32.00,46.69 < 15 |walk |only if dist("Revendreth/0 31.25,46.68") > 45
Enter the Mirror |goto 31.12,46.68 < 2
|tip Downstairs inside the building.
Enter the Forgotten Chamber |goto 30.82,47.95 < 5 |c |noway |q 62204 |future
step
Enter the Left Mirror |goto 31.11,47.70 < 2
Enter the Second Chamber |goto 30.86,46.63 < 5 |c |noway |q 62204 |or
'|goto 31.25,46.68 |c |noway |next "Enter_The_Forgotten_Chamber" |or |only if questactive(62204)
'|goto 30.86,46.63 > 100 |c |noway |next "Enter_The_Forgotten_Chamber" |or |only if questactive(62204)
step
Enter the Center Mirror |goto 31.11,46.63 < 2
Enter the Third Chamber |goto 31.70,46.62 < 5 |c |noway |q 62204 |or
'|goto 31.25,46.68 |c |noway |next "Enter_The_Forgotten_Chamber" |or |only if questactive(62204)
'|goto 31.70,46.62 > 100 |c |noway |next "Enter_The_Forgotten_Chamber" |or |only if questactive(62204)
step
Enter the Front-Right Mirror |goto 32.01,46.88 < 2
Enter the Fourth Chamber |goto 30.85,47.96 < 5 |c |noway |q 62204 |or
'|goto 31.25,46.68 |c |noway |next "Enter_The_Forgotten_Chamber" |or |only if questactive(62204)
'|goto 30.85,47.96 > 100 |c |noway |next "Enter_The_Forgotten_Chamber" |or |only if questactive(62204)
step
Enter the Front-Left Mirror |goto 31.12,47.71 < 2
Enter the Fifth Chamber |goto 31.75,47.96 < 5 |c |noway |q 62204 |or
'|goto 31.25,46.68 |c |noway |next "Enter_The_Forgotten_Chamber" |or |only if questactive(62204)
'|goto 30.85,47.96 > 100 |c |noway |next "Enter_The_Forgotten_Chamber" |or |only if questactive(62204)
step
Enter the Right Mirror |goto 31.80,48.38 < 2
Reach the End of the Maze |q 62204/1 |goto 31.80,48.38 |or
step
kill Krengaath##163921 |q 62204/2 |goto 26.58,58.88
|next "Shadow_World_Quest_Emissaries"
step
label quest-59855
accept Major Mirror Disruptions##59855 |goto Revendreth/0 31.98,46.71
|tip You will accept this quest automatically.
|polish
step
label "Enter_The_Forgotten_Chamber"
Run down the stairs |goto 32.00,46.69 < 15 |walk |only if dist("Revendreth/0 31.25,46.68") > 45
Enter the Mirror |goto 31.12,46.68 < 2
|tip Downstairs inside the building.
Enter the Forgotten Chamber |goto 30.82,47.95 < 5 |c |noway |q 59855 |future
step
Enter the Right-Front Mirror |goto 31.12,48.21 < 2
Enter the Second Chamber |goto 30.86,46.63 < 5 |c |noway |q 59855 |or
'|goto 31.25,46.68 |c |noway |next "Enter_The_Forgotten_Chamber" |or |only if questactive(59855)
'|goto 30.86,46.63 > 100 |c |noway |next "Enter_The_Forgotten_Chamber" |or |only if questactive(59855)
step
Enter the Left Mirror |goto 30.91,46.17 < 2
Enter the Third Chamber |goto 31.70,46.62 < 5 |c |noway |q 59855 |or
'|goto 31.25,46.68 |c |noway |next "Enter_The_Forgotten_Chamber" |or |only if questactive(59855)
'|goto 31.70,46.62 > 100 |c |noway |next "Enter_The_Forgotten_Chamber" |or |only if questactive(59855)
step
Enter the Left Mirror |goto 31.80,46.15 < 2
Enter the Fourth Chamber |goto 30.85,47.96 < 5 |c |noway |q 59855 |or
'|goto 31.25,46.68 |c |noway |next "Enter_The_Forgotten_Chamber" |or |only if questactive(59855)
'|goto 30.85,47.96 > 100 |c |noway |next "Enter_The_Forgotten_Chamber" |or |only if questactive(59855)
step
Enter the Front-Center Mirror |goto 31.12,47.96 < 2
Enter the Fifth Chamber |goto 31.75,47.96 < 5 |c |noway |q 59855 |or
'|goto 31.25,46.68 |c |noway |next "Enter_The_Forgotten_Chamber" |or |only if questactive(59855)
'|goto 30.85,47.96 > 100 |c |noway |next "Enter_The_Forgotten_Chamber" |or |only if questactive(59855)
step
Enter the Front-Left Mirror |goto 31.98,47.71 < 2
Reach the End of the Maze |q 59855/1 |goto 31.80,48.38 |or
step
kill Krengaath##163921 |q 59855/2 |goto 26.58,58.88
|next "Shadow_World_Quest_Emissaries"
step
label quest-61538
accept Mining: Menacing Sinvyr Cluster##61538 |goto Revendreth/0 31.39,51.72
|tip You will accept this quest automatically.
|polish
step
click Menacing Sinvyr Deposit##356402+
|tip They look like spiked blue and red rocks on the ground around this area.
collect 10 Menacing Sinvyr Ore##181720 |q 61538/1 |goto 31.39,51.72
|next "Shadow_World_Quest_Emissaries"
step
label quest-60653
accept Mirror Restoration##60653 |goto Revendreth/0 24.12,52.56
|tip You will accept this quest automatically.
step
Kill enemies around this area
collect 10 Glass Shard##175384 |q 60653/1 |goto 24.12,52.56
step
Enter the building |goto 24.79,53.45 < 7 |walk
click Broken Mirror
|tip Downstairs inside the building.
Restore the Broken Mirror |q 60653/2 |goto 24.57,52.52
step
Enter the Ornate Mirror |q 60653/3 |goto 24.57,52.52
step
kill Torval##169885 |q 60653/4 |goto 32.04,45.28
|next "Shadow_World_Quest_Emissaries"
step
label quest-59808
accept Muck It Up##59808 |goto Revendreth/0 35.55,32.37
|tip You will accept this quest automatically.
stickystart "Kill_Primordial_Sludge_59808"
step
kill Primordial Sludge##166206+
collect Primordial Muck##177880 |n
use the Primordial Muck##177880
Throw #5# Recovered Primordial Mucks |q 59808/1 |goto 35.55,32.37
step
label "Kill_Primordial_Sludge_59808"
kill 8 Primordial Sludge##166206 |q 59808/2 |goto 35.55,32.37
|next "Shadow_World_Quest_Emissaries"
step
label quest-61814
accept Nurgash Muckformed##61814 |goto Revendreth/0 26.98,14.32
|tip You will accept this quest automatically.
step
_EVERYONE:_ |grouprole EVERYONE
|tip Don't stand in areas targeted by "Earthen Blast." |grouprole EVERYONE
|tip Stay close to Nurgash for the duration of the encounter. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Be prepared to raid heal following "Stone Stomp." |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Use a defensive cooldown for "Stone Fist" casts. |grouprole TANK
kill Nurgash Muckformed##167526 |q 61814/1 |goto 26.98,14.32
|next "Shadow_World_Quest_Emissaries"
step
label quest-59718
Run up the stairs |goto Revendreth/0 58.76,50.75 < 20 |only if walking
|tip This world quest is on a platform far up on a higher tier.
Cross the bridge |goto 56.66,52.66 < 20 |only if walking
accept Parasol Peril##59718 |goto Revendreth/0 57.65,55.64
|tip You will accept this quest automatically.
step
click "Totally Safe" Anima-Draining Parasol
Collect a "Totally Safe" Anima-Draining Parasol |q 59718/1 |goto 57.65,55.64
step
Land Safely |q 59718/2 |goto 56.51,62.50
|tip Use the ability that appears on-screen to begin.
|tip Fly through red anima orbs to gain a slight altitude boost and fill your anima bar.
|next "Shadow_World_Quest_Emissaries"
step
label quest-61883
accept Resilient Survivors##61883 |goto Revendreth/0 39.98,52.59
|tip You will accept this quest automatically.
step
talk Sylla##173315
|tip Up on the platform.
Tell her _"Begin pet battle."_
Defeat Sylla in a Pet Battle |q 61883/1 |goto 39.98,52.59
|next "Shadow_World_Quest_Emissaries"
step
label quest-59599
accept Retaining the Court##59599 |goto Revendreth/0 42.67,41.37
|tip You will accept this quest automatically.
stickystart "Slay_Court_Attackers_59599"
step
click Anima Container+
|tip They look like small to large lanerns filled with red anima around this area.
click Darkwing Rebel+
|tip They look like large winged stone legion statues on the ground around this area.
|tip You need 10-15 anima on your bar to awaken a Darkwing Rebel.
Awaken #4# Darkwing Rebels |q 59599/1 |goto 42.67,41.37
step
label "Slay_Court_Attackers_59599"
Kill enemies around this area
Slay #12# Court Attackers |q 59599/2 |goto 42.67,41.37
|next "Shadow_World_Quest_Emissaries"
step
label quest-60602
accept Secret Service##60602 |goto Revendreth/0 56.81,32.37
|tip You will accept this quest automatically.
step
label "Acquire_the_Servant's_Basic_Kit"
click Servant's Basic Kit##349089
|tip Inside the building.
Acquire the Servant's Basic Kit |invehicle |goto 56.81,32.37 |q 60602
step
kill Muck Rat##169623+
|tip When they appear, use the "Left Hook" ability on them.
|tip Avoid the patrolling Stone Legion Security.
|tip Use "Serve Food," and "Serve Drink" abilities on guests.
|tip Guests that are in dire need will have three red warning lines above their head.
|tip Guests that that can wait longer will have three yellow warning lines above their head.
|tip Check their buff to see if they need food or a drink.
|tip Use the "Clean" ability on muck piles on the ground around this area.
Make the Guests Happy |q 60602/2 |goto 55.95,30.39 |or
'|complete outvehicle() and not completedq(60602) and questactive(60602) |next "Acquire_the_Servant's_Basic_Kit" |or
|next "Shadow_World_Quest_Emissaries"
step
label quest-61627
accept Skinning: Horrific Leather Hide##61627 |goto Revendreth/0 73.48,75.91
|tip You will accept this quest automatically.
|polish
step
Kill Bonemauler enemies around this area
|tip Skin their corpses.
collect 10 Horrific Leather Hide##181970 |q 61627/1 |goto 73.48,75.91
|next "Shadow_World_Quest_Emissaries"
step
label quest-58084
accept Soul Snares##58084 |goto Revendreth/0 41.61,78.30
|tip You will accept this quest automatically.
stickystart "Slay_Dreadhollow_Threats_58084"
step
click Soul Snare+
|tip They look like tall pointed urns with Snared Souls shackled to them on the ground around this area.
Liberate #8# Souls |q 58084/2 |goto 41.61,78.30
step
label "Slay_Dreadhollow_Threats_58084"
Kill enemies around this area
Slay #12# Dreadhollow Threats |q 58084/1 |goto 41.61,78.30
|next "Shadow_World_Quest_Emissaries"
step
label quest-59617
accept Stone Fiend Saboteurs##59617 |goto Revendreth/0 55.70,37.36
|tip You will accept this quest automatically.
step
kill Stone Fiend Saboteur##165373+
|tip They fly all over this area.
collect Stolen Missive##176582 |n
Deliver #7# Stolen Missives |q 59617/1 |goto 55.70,37.36
|tip Use the "Deliver Missive" ability on-screen next to mailboxes with Fiendish Servants on top.
|tip They appear on your minimap as yellow dots.
|next "Shadow_World_Quest_Emissaries"
step
label quest-60656
accept Summon Your Sins##60656 |goto Revendreth/0 65.74,30.70
|tip You will accept this quest automatically.
step
click Sinstone Fragment##353655+
|tip They look like small broken stone tablets on the ground around this area.
Kill Sinstone enemies around this area
collect 20 Sinstone Fragment##180279 |q 60656/1 |goto 65.74,30.70
step
Enter the building |goto 65.93,29.37 < 7 |walk
Click an object on the table
|tip Inside the building.
Choose a Catalyst |q 60656/2 |goto 65.69,29.15
step
talk Alchemist Leticia##170291
|tip Inside the building.
Tell her _"I am ready."_
Watch the dialogue
Create an Amalgamation |q 60656/3 |goto 65.74,28.98
|next "Shadow_World_Quest_Emissaries"
step
label quest-60654
accept Swarming Souls##60654 |goto Revendreth/0 50.84,31.99
|tip You will accept this quest automatically.
stickystart "Slay_Manifestations_60654"
step
clicknpc Lost Soul##169916+
|tip They look like floating ghosts around this area.
talk Avowed Ritualist##169917
Tell him _"I have a soul for you."_
Recover #6# Lost Souls |q 60654/1 |goto 50.84,31.99
Return them to [49.02,34.86]
step
label "Slay_Manifestations_60654"
Kill Manifestation enemies around this area
Slay #15# Manifestations |q 60654/2 |goto 50.00,33.34
|next "Shadow_World_Quest_Emissaries"
step
label quest-61628
accept Tailoring: Looming Tapestry##61628 |goto Revendreth/0 32.67,48.98
|tip You will accept this quest automatically.
step
click Crafter's Crate##356880
collect 32 Thread of Pride##182052 |goto 32.67,48.98 |q 61628
step
Open Your Tailoring Crafting Panel:
_<Create 10 Prideweave Cloth>_
|tip It is in the Quest Recipes category under Shadowlands Tailoring.
collect 10 Prideweave Cloth##182050 |goto 32.67,48.98 |q 61628
step
Open Your Tailoring Crafting Panel:
_<Create 5 Bolt of Prideweave>_
|tip It is in the Quest Recipes category under Shadowlands Tailoring.
collect 5 Bolt of Prideweave##182051 |goto 32.67,48.98 |q 61628
step
Open Your Tailoring Crafting Panel:
_<Create 1 Looming Tapestry>_
|tip It is in the Quest Recipes category under Shadowlands Tailoring.
collect 1 Looming Tapestry##181973 |goto 32.67,48.98 |q 61628
|next "Shadow_World_Quest_Emissaries"
step
label quest-59852
Enter the building |goto Revendreth/0 31.15,57.12 < 10 |walk
accept Tea Tales: Gubbins and Tubbins##59852 |goto 31.33,57.42
|tip You will accept this quest automatically.
step
label "Hear_Gubbins_and_Tubbins'_Story"
clicknpc Tubbins##166558
|tip Inside the building.
Ask Gubbins and Tubbins to Tell Their Story |invehicle |goto 31.33,57.42 |q 59852
step
click Tubbins's Lost Teapot
Find the Lost Teapot |q 59852/2 |goto 35.09,57.79 |or
'|complete outvehicle() and not completedq(59852) and questactive(59852) and haveq(59852) |next "Hear_Gubbins_and_Tubbins'_Story" |or
step
Enter the building |goto 31.15,57.12 < 10 |walk
Watch the dialogue
Get to the Tea Party On Time |q 59852/3 |goto 31.33,57.42 |or
'|complete outvehicle() and not completedq(59852) and questactive(59852) and haveq(59852) |next "Hear_Gubbins_and_Tubbins'_Story" |or
|next "Shadow_World_Quest_Emissaries"
step
label quest-59853
Enter the building |goto Revendreth/0 31.15,57.12 < 10 |walk
accept Tea Tales: Lost Sybille##59853 |goto 30.88,57.28
|tip You will accept this quest automatically.
step
label "Hear_Sybille's_Story"
Enter the building |goto 31.15,57.12 < 10 |walk
clicknpc Lost Sybille##166538
|tip Inside the building.
Ask Lost Sybille to Tell Her Story |invehicle |goto 30.88,57.28 |q 59853
step
kill Smug Francise##166819
collect Theotar's Parasol##177947 |q 59853/2 |goto 35.51,52.90 |or
'|complete outvehicle() and not completedq(59853) and questactive(59853) and haveq(59853) |next "Hear_Sybille's_Story" |or
step
click Theotar's Parasol
Place Theotar's Parasol |q 59853/3 |goto 34.98,52.33 |or
'|complete outvehicle() and not completedq(59853) and questactive(59853) and haveq(59853) |next "Hear_Sybille's_Story" |or
step
collect Vulca's Lost Toolkit##177948 |q 59853/4 |goto 33.89,61.35 |or
'|complete outvehicle() and not completedq(59853) and questactive(59853) and haveq(59853) |next "Hear_Sybille's_Story" |or
step
click Vulca's Glazier Toolkit
Place Vulca's Toolkit |q 59853/5 |goto 35.28,60.35 |or
'|complete outvehicle() and not completedq(59853) and questactive(59853) and haveq(59853) |next "Hear_Sybille's_Story" |or
step
click Tubbins's Lucky Teapot
collect Tubbins's Lost Teapot##177949 |q 59853/6 |goto 38.21,61.34 |or
'|complete outvehicle() and not completedq(59853) and questactive(59853) and haveq(59853) |next "Hear_Sybille's_Story" |or
step
click Tubbins's Lucky Teapot
Place Tubbins's Teapot |q 59853/7 |goto 35.10,57.80 |or
'|complete outvehicle() and not completedq(59853) and questactive(59853) and haveq(59853) |next "Hear_Sybille's_Story" |or
step
Enter the building |goto 31.15,57.12 < 10 |walk
Watch the dialogue
Get to the Tea Party |q 59853/8 |goto 30.89,57.26 |or
'|complete outvehicle() and not completedq(59853) and questactive(59853) and haveq(59853) |next "Hear_Sybille's_Story" |or
|next "Shadow_World_Quest_Emissaries"
step
label quest-59848
Enter the building |goto Revendreth/0 31.15,57.12 < 10 |walk
accept Tea Tales: Theotar##59848 |goto 31.03,57.47
|tip You will accept this quest automatically.
step
label "Hear_Theotar's_Story"
clicknpc Theotar##166555
|tip Inside the building.
Ask Theotar to Tell His Story |invehicle |goto 31.03,57.47 |q 59848
stickystart "Kill_Scorched_Scavenger_59848"
stickystart "Slay_Very_Rude_Ash_Ghouls_59848"
step
click Theotar's Parasol
Recover the Stolen Parasol |q 59848/2 |goto 34.98,52.32 |or
|tip Use the "Spot of Tea" ability out-of-combat to recover health and mana.
|tip Use "Bolt of Madness" for single-target ranged attacking.
|tip Use "Duke's Descent" for AoE damage and stuns.
|tip Try to stay close to objects out of bright light.
'|complete outvehicle() and not completedq(59848) and questactive(59848) and haveq(59848) |next "Hear_Theotar's_Story" |or
step
label "Kill_Scorched_Scavenger_59848"
kill 5 Scorched Scavenger##157731 |q 59848/3 |goto 34.95,57.32 |or
|tip Use the "Spot of Tea" ability out-of-combat to recover health and mana. |notinsticky
|tip Use "Bolt of Madness" for single-target ranged attacking. |notinsticky
|tip Use "Duke's Descent" for AoE damage and stuns. |notinsticky
|tip Use the "Raise Parasol" ability out-of-combat to shield yourself from the sun. |notinsticky
'|complete outvehicle() and not completedq(59848) and questactive(59848) and haveq(59848) |next "Hear_Theotar's_Story" |or
step
label "Slay_Very_Rude_Ash_Ghouls_59848"
Slay #5# Very Rude Ash Ghouls |q 59848/4 |goto 34.95,57.32 |or
|tip Use the "Spot of Tea" ability out-of-combat to recover health and mana. |notinsticky
|tip Use "Bolt of Madness" for single-target ranged attacking. |notinsticky
|tip Use "Duke's Descent" for AoE damage and stuns. |notinsticky
|tip Use the "Raise Parasol" ability out-of-combat to shield yourself from the sun. |notinsticky
'|complete outvehicle() and not completedq(59848) and questactive(59848) and haveq(59848) |next "Hear_Theotar's_Story" |or
step
Follow the path down |goto 31.12,56.46 < 20 |only if walking
Enter the building |goto 31.15,57.12 < 10 |walk
Watch the dialogue
Get to the Tea Party On Time |q 59848/5 |goto 31.03,57.47 |or
'|complete outvehicle() and not completedq(59848) and questactive(59848) and haveq(59848) |next "Hear_Theotar's_Story" |or
|next "Shadow_World_Quest_Emissaries"
step
label quest-59850
Enter the building |goto Revendreth/0 31.15,57.12 < 10 |walk
accept Tea Tales: Vulca##59850 |goto 31.17,57.59
|tip You will accept this quest automatically.
step
label "Hear_Vulca's_Story"
clicknpc Vulca##166556
|tip Inside the building.
Ask Vulca to Tell Her Story |invehicle |goto 31.17,57.59 |q 59850
stickystart "Slay_Ash_Ghouls_59850"
step
click Vulca's Glazier Toolkit
|tip Avoid areas of direct light.
Recover Glazier's Toolkit |q 59850/2 |goto 35.28,60.35 |or
'|complete outvehicle() and not completedq(59850) and questactive(59850) and haveq(59850) |next "Hear_Vulca's_Story" |or
step
label "Slay_Ash_Ghouls_59850"
Kill Ash Ghoul enemies around this area
|tip Use the abilities on your action bar.
|tip Avoid areas of direct light.
Slay #10# Ash Ghouls |q 59850/3 |goto 35.96,58.58 |or
'|complete outvehicle() and not completedq(59850) and questactive(59850) and haveq(59850) |next "Hear_Vulca's_Story" |or
step
Enter the building |goto 31.15,57.12 < 10 |walk
Watch the dialogue
Get to the Tea Party |q 59850/4 |goto 31.17,57.59 |or
'|complete outvehicle() and not completedq(59850) and questactive(59850) and haveq(59850) |next "Hear_Vulca's_Story" |or
|next "Shadow_World_Quest_Emissaries"
step
label quest-61886
accept The Mind Games of Addius##61886 |goto Revendreth/0 61.29,41.10
|tip You will accept this quest automatically.
step
talk Addius the Tormentor##173331
Tell him _"Begin pet battle."_
Defeat Addius the Tormentor in a Pet Battle |q 61886/1 |goto 61.29,41.10
|next "Shadow_World_Quest_Emissaries"
step
label quest-59581
accept The Strength of Sinfall##59581 |goto Revendreth/0 49.97,50.72
|tip You will accept this quest automatically.
step
Kill enemies around this area
clicknpc Chalice Dredger##161258+
|tip They look like small humanoids around this area.
click Anima Stores+
|tip They look like small metal cages on the ground around this area.
Disrupt the Chalice District |q 59581/1 |goto 49.97,50.72
|next "Shadow_World_Quest_Emissaries"
step
label quest-59789
accept Tithe and Taxes##59789 |goto Revendreth/0 73.50,68.89
|tip You will accept this quest automatically.
step
click Misplaced Anima Collector
Obtain the Anima Collector |q 59789/1 |goto 73.50,68.89
stickystart "Slay_Manor_Guests_59789"
stickystart "Kill_Cruel_Collector_59789"
step
kill 3 Callous Peacekeeper##165830 |q 59789/2 |goto 76.91,68.43
|tip Use the "Siphon" ability on-screen to weaken them.
step
label "Slay_Manor_Guests_59789"
Kill enemies around this area
Slay #12# Manor Guests |q 59789/3 |goto 75.12,67.88
step
label "Kill_Cruel_Collector_59789"
kill 5 Cruel Collector##165831 |q 59789/4 |goto 75.12,67.88
|tip Use the "Siphon" ability on-screen to weaken them.
|next "Shadow_World_Quest_Emissaries"
step
label quest-57328
accept Trashin' the Camp##57328 |goto Revendreth/0 45.83,59.05
|tip You will accept this quest automatically.
step
Kill enemies around this area
collect Soul Cage Key##171249+ |n
|tip They drop from enemies around this area.
click Soul Cage+
|tip They look like large metal cages on the ground around this area.
clicknpc Inert Stonestalker##157477+
|tip They look like sleeping white bears around this area.
Assault Stalker's Lodge |q 57328/1 |goto 45.83,59.05
step
Run down the stairs |goto 46.29,57.14 < 15 |walk
kill Sara Wight##157405 |q 57328/2 |goto 45.39,57.17
|next "Shadow_World_Quest_Emissaries"
step
label "Shadow_World_Quest_Emissaries"
#include "Shadow_World_Quest_Emissaries"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Shadowlands (50-60)\\Zereth Mortis World Quests",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing world quests in Zereth Mortis.",
condition_suggested=function() return level >= 60 end,
condition_valid=function() return completedq(64230) end,
condition_valid_msg="You must Complete the \"Cyphers of the First Ones\" quest in the third chapter of the Zereth Mortis campaign first!",
startlevel=60.0,
worldquestzone={1550,1970},
patch='90200',
},[[
step
label "Choose_World_Quest"
#include "Shadow_Choose_World_Quests"
step
label quest-65081
accept An Apple A Day##65081 |goto Zereth Mortis/0 45.48,88.41
|tip You will accept this quest automatically.
step
kill Crispin##182409
|tip It patrols all over this area.
|tip Attacking it will cause apples to fall to the ground.
click Catalyzed Apple##373466+
collect 12 Catalyzed Apple##187949 |q 65081/2 |goto 45.48,88.41
You can also find it around [46.35,93.72]
|next "Shadow_World_Quest_Emissaries"
step
label quest-65232
accept Annelid-ilation##65232 |goto Zereth Mortis/0 57.08,69.27
|tip You will accept this quest automatically.
step
Kill Annelid enemies around this area
Cull #12# Annelid |q 65232/1 |goto 57.08,69.27
You can find more around [55.90,75.74]
|next "Shadow_World_Quest_Emissaries"
step
label quest-65143
accept Antros##65143 |goto Zereth Mortis/0 48.96,4.79
|tip You will accept this quest automatically.
step
kill Sav'thul##182863
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid standing in front of Antros during "Furious Slam" casts. |grouprole EVERYONE
|tip Don't stand in areas targeted on the ground. |grouprole EVERYONE
|tip Avoid standing near Destruction Cores. |grouprole EVERYONE
|tip Move away from others if debuffed with "Banishment Mark." |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Players with "Banishment Mark" will deal damage to anyone near them. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip "Dark Deterrence" stacks and increases damage taken. |grouprole TANK
kill Antros##182466 |q 65143/1 |goto 48.96,4.79
|next "Shadow_World_Quest_Emissaries"
step
label quest-65119
accept Automa Ops##65119 |goto Zereth Mortis/0 57.64,32.16
|tip You will accept this quest automatically.
|polish
step
Meet Up with Rana |q 65119/1 |goto 57.64,32.16
step
click Targeting Relic
collect Targeting Relic##188137 |q 65119/2 |goto 57.61,32.16
step
Kill enemies around this area
Destroy the Mawsorn Forces |q 65119/3 |goto 60.85,29.60
|next "Shadow_World_Quest_Emissaries"
step
label quest-65117
accept Bad Samples##65117 |goto Zereth Mortis/0 42.25,25.54
|tip You will accept this quest automatically.
stickystart "Rescue_8_Injured_Enlightened"
stickystart "Collect_20_Warped_Anima_Samples"
step
click Sample Container
Recover the Sample Container |q 65117/3 |goto 45.06,22.13
step
label "Collect_20_Warped_Anima_Samples"
Kill enemies around this area
collect 20 Warped Anima Sample##188121 |q 65117/1 |goto 42.25,25.54
step
label "Rescue_8_Injured_Enlightened"
clicknpc Injured Enlightened##182719+
|tip They look like enlightened NPCs laying on the ground around this area.
Rescue #8# Injured Enlightened |q 65117/2 |goto 42.25,25.54
|next "Shadow_World_Quest_Emissaries"
step
label quest-65230
accept Bot-any##65230 |goto Zereth Mortis/0 49.05,83.97
|tip You will accept this quest automatically.
stickystart "Slay_12_Vine-Choked_or_Overgrown_Creatures"
step
kill 4 Creeping Brambles##182326 |q 65230/2 |goto 49.05,83.97
You can find more around [49.52,88.47]
step
label "Slay_12_Vine-Choked_or_Overgrown_Creatures"
Kill Vine-Choked and Overgrown enemies around this area
Slay #12# Vine-Choked or Overgrown Creatures |q 65230/1 |goto 49.05,83.97
You can find more around: |notinsticky
[49.33,92.27]
[45.37,87.00]
|next "Shadow_World_Quest_Emissaries"
step
label quest-64974
accept Clean Up, Automa Aisle##64974 |goto Zereth Mortis/0 57.71,46.91
|tip You will accept this quest automatically.
stickystart "Clear_the_Plain_of_Actualization"
step
Follow the path up |goto 58.98,47.95 < 20 |only if walking
kill Malfunctioned Constructor##181870 |q 64974/2 |goto 61.58,42.63
|tip Save your interrupt for the "Emergency Repairs" ability.
step
label "Clear_the_Plain_of_Actualization"
Click Failed NPCs around this area
|tip They are laying all over the ground around this area.
Kill enemies around this area
collect Explosive Core##187841 |n
|tip They drop from Defective Reformatters.
click Surplus Protector+
|tip They look like standing mechanical NPCs in small groups.
|tip Explosive cores are required to blow them up.
Clear the Plain of Actualization |q 64974/1 |goto 56.34,46.78
|next "Shadow_World_Quest_Emissaries"
step
label quest-65416
accept Connecting It All##65416 |goto Zereth Mortis/0 52.99,45.58
|tip You will accept this quest automatically.
step
click Cantaric Cache
Choose _<Encourage Pocopoc to grant you access to the Cache...>_
|tip This will cost 2 Pocopoc energy.
|tip You can also choose the other option and expend 9 energy to automatically solve the puzzle.
|tip Solve the puzzle.
|tip Clicking a circle will invert the tiles from that row or column.
|tip Turn all of the tiles dark in seven moves to solve the puzzle.
Unlock the Creation Cache |q 65416/1 |goto 52.99,45.58
|next "Shadow_World_Quest_Emissaries"
step
label quest-65406
accept Connecting It All##65406 |goto Zereth Mortis/0 65.68,40.96
|tip You will accept this quest automatically.
|polish
step
click Cantaric Cache
Choose _<Encourage Pocopoc to grant you access to the Cache...>_
|tip This will cost 2 Pocopoc energy.
|tip You can also choose the other option and expend 9 energy to automatically solve the puzzle.
|tip Solve the puzzle.
|tip Clicking a circle will invert the tiles from that row or column.
|tip Turn all of the tiles dark in seven moves to solve the puzzle.
Unlock the Creation Cache |q 65406/1 |goto 65.68,40.96
|next "Shadow_World_Quest_Emissaries"
step
label quest-65417
accept Connecting It All##65417 |goto Zereth Mortis/0 54.97,47.99
|tip You will accept this quest automatically.
step
click Cantaric Cache
Choose _<Encourage Pocopoc to grant you access to the Cache...>_
|tip This will cost 2 Pocopoc energy.
|tip You can also choose the other option and expend 9 energy to automatically solve the puzzle.
|tip Solve the puzzle.
|tip Clicking a circle will invert the tiles from that row or column.
|tip Turn all of the tiles dark in seven moves to solve the puzzle.
Unlock the Creation Cache |q 65417/1 |goto 54.97,47.99
|next "Shadow_World_Quest_Emissaries"
step
label quest-65244
accept Devourable##65244 |goto Zereth Mortis/0 41.67,72.07
|tip You will accept this quest automatically.
step
Kill enemies around this area
Slay #15# Devourers |q 65244/1 |goto 41.67,72.07
|next "Shadow_World_Quest_Emissaries"
step
label quest-64960
accept Feed the Annelids##64960 |goto Zereth Mortis/0 54.57,34.34
|tip You will accept this quest automatically.
step
Kill Tarachnid enemies around this area
|tip Inside and outside of the building.
collect 6 Piece of Goop##187820 |goto 54.57,34.34 |q 64960
step
use the Piece of Goop##187820
collect Irresistible Goop##187816 |q 64960/1 |goto 54.57,34.34
step
use the Irresistible Goop##187816
|tip Throw it on Mawsworn enemies around this area.
|tip You can hit multiple enemies at once with it.
|tip Kill them after.
Feed the Hungry Annelid with #10# Mawsworn |q 64960/2 |goto 60.96,28.92
|next "Shadow_World_Quest_Emissaries"
step
label quest-65102
accept Fish Eyes##65102 |goto Zereth Mortis/0 46.63,54.21
|tip You will accept this quest automatically.
step
use the Fishing Portal##187999
|tip Use it on the surface of the water above the Blind Souldrinkers.
|tip Click it to fish until it attacks you.
kill 6 Blind Souldrinker##182616 |q 65102/2 |goto 46.63,54.21
step
use the Fishing Portal##187999
|tip Use it on the surface of the water above Octolus.
|tip Click it to fish until it attacks you.
kill Octolus##182689 |q 65102/3 |goto 47.49,64.31
|tip Avoid standing in front of it when it casts "Corruption Beam."
|next "Shadow_World_Quest_Emissaries"
step
label quest-65089
accept Frog'it##65089 |goto Zereth Mortis/0 59.95,68.86
|tip You will accept this quest automatically.
step
clicknpc Bounding Bufonid##182443
Mount the Bounding Bufonid |q 65089/1 |goto 59.95,68.86
step
Watch the dialogue
Leap to the Platform |goto 63.27,72.46 < 10 |c |noway |q 65089
step
Use the abilities on your vehicle bar
|tip Use the "Sticky Tongue" ability to recover symbols and attack enemies.
|tip Symbols look like small statues around nests on the platforms.
|tip Use the "Leap for Distance" and "High Hop" abilities to move to different platforms.
Recover #30# Stolen Amocite Symbols |q 65089/2 |goto 63.33,72.31
step
Exit the Vehicle |outvehicle |q 65089
|tip Use the "Return to Highpoint" ability or click the "Exit" button on your vehicle bar.
|next "Shadow_World_Quest_Emissaries"
step
label quest-65408
accept Pattern Recognition##65408 |goto Zereth Mortis/0 53.24,86.86
|tip You will accept this quest automatically.
step
click Toccatian Cache
Choose _<Encourage Pocopoc to grant you access to the Cache...>_
|tip This will cost 2 Pocopoc energy.
|tip You can also choose the other option and expend 9 energy to automatically solve the puzzle.
|tip Solve the puzzle.
|tip Click one connection point, and then another to swap them.
|tip Separate the lines so none of them overlap.
Unlock the Creation Cache |q 65408/1 |goto 53.24,86.86
|next "Shadow_World_Quest_Emissaries"
step
label quest-65402
accept Pattern Recognition##65402 |goto Zereth Mortis/0 32.04,52.59
|tip You will accept this quest automatically.
step
click Toccatian Cache
Choose _<Encourage Pocopoc to grant you access to the Cache...>_
|tip This will cost 2 Pocopoc energy.
|tip You can also choose the other option and expend 9 energy to automatically solve the puzzle.
|tip Solve the puzzle.
|tip Click one connection point, and then another to swap them.
|tip Separate the lines so none of them overlap.
Unlock the Creation Cache |q 65402/1 |goto 32.04,52.59
|next "Shadow_World_Quest_Emissaries"
step
label quest-65407
accept Pattern Recognition##65407 |goto Zereth Mortis/0 52.43,57.07
|tip You will accept this quest automatically.
|polish
step
click Toccatian Cache
Choose _<Encourage Pocopoc to grant you access to the Cache...>_
|tip This will cost 2 Pocopoc energy.
|tip You can also choose the other option and expend 9 energy to automatically solve the puzzle.
|tip Solve the puzzle.
|tip Click one connection point, and then another to swap them.
|tip Separate the lines so none of them overlap.
Unlock the Creation Cache |q 65407/1 |goto 52.43,57.07
|next "Shadow_World_Quest_Emissaries"
step
label quest-65405
accept Perplexing Problem##65405 |goto Zereth Mortis/0 57.47,65.77
|tip You will accept this quest automatically.
step
click Fugueal Cache
Choose _<Encourage Pocopoc to grant you access to the Cache...>_
|tip This will cost 2 Pocopoc energy.
|tip You can also choose the other option and expend 9 energy to automatically solve the puzzle.
|tip Solve the puzzle.
|tip The objective is to deactivate all of the runes.
|tip Runes must be matched in phrases of 3.
|tip Each phrase must be either all identical or all different in each of the four properties.
|tip The properties are core shape, border shape, number of core shapes, and number of border shapes.
Unlock the Creation Cache |q 65405/1 |goto 57.47,65.77
|next "Shadow_World_Quest_Emissaries"
step
label quest-65414
accept Perplexing Problem##65414 |goto Zereth Mortis/0 63.10,37.38
|tip You will accept this quest automatically.
step
click Fugueal Cache
Choose _<Encourage Pocopoc to grant you access to the Cache...>_
|tip This will cost 2 Pocopoc energy.
|tip You can also choose the other option and expend 9 energy to automatically solve the puzzle.
|tip Solve the puzzle.
|tip The objective is to deactivate all of the runes.
|tip Runes must be matched in phrases of 3.
|tip Each phrase must be either all identical or all different in each of the four properties.
|tip The properties are core shape, border shape, number of core shapes, and number of border shapes.
Unlock the Creation Cache |q 65414/1 |goto 63.10,37.38
|next "Shadow_World_Quest_Emissaries"
step
label quest-65415
accept Perplexing Problem##65415 |goto Zereth Mortis/0 47.67,38.83
|tip You will accept this quest automatically.
step
click Fugueal Cache
Choose _<Encourage Pocopoc to grant you access to the Cache...>_
|tip This will cost 2 Pocopoc energy.
|tip You can also choose the other option and expend 9 energy to automatically solve the puzzle.
|tip Solve the puzzle.
|tip The objective is to deactivate all of the runes.
|tip Runes must be matched in phrases of 3.
|tip Each phrase must be either all identical or all different in each of the four properties.
|tip The properties are core shape, border shape, number of core shapes, and number of border shapes.
Unlock the Creation Cache |q 65415/1 |goto 47.67,38.83
|next "Shadow_World_Quest_Emissaries"
step
label quest-65231
accept Plundered Knowledge##65231 |goto Zereth Mortis/0 65.77,32.57
|tip You will accept this quest automatically.
step
Kill enemies around this area
collect 12 Ancient Archive##188522 |q 65231/1 |goto 65.77,32.57
|next "Shadow_World_Quest_Emissaries"
step
label quest-65404
accept Puzzling It Out##65404 |goto Zereth Mortis/0 58.89,36.35
|tip You will accept this quest automatically.
step
click Glissandian Cache
Choose _<Encourage Pocopoc to grant you access to the Cache...>_
|tip This will cost 2 Pocopoc energy.
|tip You can also choose the other option and expend 9 energy to automatically solve the puzzle.
|tip Solve the puzzle.
Unlock the Creation Cache |q 65404/1 |goto 58.89,36.35
|next "Shadow_World_Quest_Emissaries"
step
label quest-65412
accept Puzzling It Out##65412 |goto Zereth Mortis/0 44.10,37.42
|tip You will accept this quest automatically.
step
click Glissandian Cache
Choose _<Encourage Pocopoc to grant you access to the Cache...>_
|tip This will cost 2 Pocopoc energy.
|tip You can also choose the other option and expend 9 energy to automatically solve the puzzle.
|tip Solve the puzzle.
Unlock the Creation Cache |q 65412/1 |goto 44.10,37.42
|next "Shadow_World_Quest_Emissaries"
step
label quest-65413
accept Puzzling It Out##65413 |goto Zereth Mortis/0 55.99,84.15
|tip You will accept this quest automatically.
|polish
step
click Glissandian Cache
Choose _<Encourage Pocopoc to grant you access to the Cache...>_
|tip This will cost 2 Pocopoc energy.
|tip You can also choose the other option and expend 9 energy to automatically solve the puzzle.
|tip Solve the puzzle.
Unlock the Creation Cache |q 65413/1 |goto 55.99,84.15
|next "Shadow_World_Quest_Emissaries"
step
label quest-65410
accept Puzzling Situation##65410 |goto Zereth Mortis/0 55.67,50.03
|tip You will accept this quest automatically.
step
click Mezzonic Cache
Choose _<Encourage Pocopoc to grant you access to the Cache...>_
|tip This will cost 2 Pocopoc energy.
|tip You can also choose the other option and expend 9 energy to automatically solve the puzzle.
|tip Solve the puzzle.
|tip Turn all of the tiles dark.
|tip Clicking a tile will invert the tile immediately up, down, left, and right of it.
Unlock the Creation Cache |q 65410/1 |goto 55.67,50.03
|next "Shadow_World_Quest_Emissaries"
step
label quest-65403
accept Puzzling Situation##65403 |goto Zereth Mortis/0 38.38,70.38
|tip You will accept this quest automatically.
step
click Mezzonic Cache
Choose _<Encourage Pocopoc to grant you access to the Cache...>_
|tip This will cost 2 Pocopoc energy.
|tip You can also choose the other option and expend 9 energy to automatically solve the puzzle.
|tip Solve the puzzle.
|tip Turn all of the tiles dark.
|tip Clicking a tile will invert the tile immediately up, down, left, and right of it.
Unlock the Creation Cache |q 65403/1 |goto 38.38,70.38
|next "Shadow_World_Quest_Emissaries"
step
label quest-65411
accept Puzzling Situation##65411 |goto Zereth Mortis/0 35.81,59.09
|tip You will accept this quest automatically.
step
click Mezzonic Cache
Choose _<Encourage Pocopoc to grant you access to the Cache...>_
|tip This will cost 2 Pocopoc energy.
|tip You can also choose the other option and expend 9 energy to automatically solve the puzzle.
|tip Solve the puzzle.
|tip Turn all of the tiles dark.
|tip Clicking a tile will invert the tile immediately up, down, left, and right of it.
Unlock the Creation Cache |q 65411/1 |goto 35.81,59.09
|next "Shadow_World_Quest_Emissaries"
step
label quest-65115
accept Researching The Solution##65115 |goto Zereth Mortis/0 43.00,27.30
|tip You will accept this quest automatically.
stickystart "Collect_12_Enigmatic_Scrolls"
stickystart "Slay_12_Warped_Creatures"
step
kill Twisted World Burster##182728 |q 65115/3 |goto 43.85,22.00
step
label "Collect_12_Enigmatic_Scrolls"
click Enigmatic Scrolls##373485+
|tip They look like small bundles of scrolls on the ground around this area.
collect 8 Enigmatic Scrolls##188118 |q 65115/1 |goto 43.00,27.30
step
label "Slay_12_Warped_Creatures"
Kill Warped enemies around this area
Slay #12# Warped Creatures |q 65115/2 |goto 43.00,27.30
|next "Shadow_World_Quest_Emissaries"
step
label quest-65262
accept Save the Vombata##65262 |goto Zereth Mortis/0 44.06,59.64
|tip You will accept this quest automatically.
step
clicknpc Frightened Vombata Cub##183838+
|tip They look like small bear cubs on the ground around this area.
|tip They appear on your minimap as yellow dots.
Save #8# Vombata Cubs |q 65262/1 |goto 44.06,59.64
|next "Shadow_World_Quest_Emissaries"
step
label quest-65252
accept Stomp It Now##65252 |goto Zereth Mortis/0 39.19,38.99
|tip You will accept this quest automatically.
step
click Devourer Fissure+
|tip They look like white and blue orbs floating in swirling pools on the ground around this area.
|tip They appear on your minimap as yellow dots.
Close #8# Fissures |q 65252/1 |goto 39.19,38.99
|next "Shadow_World_Quest_Emissaries"
step
label quest-65234
accept Sweet On Them##65234 |goto Zereth Mortis/0 63.29,59.43
|tip You will accept this quest automatically.
step
click Ripening Nectar+
|tip They look like small round wasp nests near hives around this area.
collect 40 Hexagonal Nectar##188529 |q 65234/1 |goto 63.29,59.43
|next "Shadow_World_Quest_Emissaries"
step
label "Shadow_World_Quest_Emissaries"
#include "Shadow_World_Quest_Emissaries"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Shadowlands (50-60)\\Ve'nari Daily Quests (The Maw)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the various daily quests in The Maw.",
condition_suggested=function() return level >= 60 end,
patch='90001',
},[[
step
label "Begin_Dailies"
talk Ve'nari##162804
accept A Dark Song##60902 |goto The Maw/0 46.91,41.69 |only if questactive(60902) or completedq(60902)
accept A Suitable Demise##60775 |goto The Maw/0 46.91,41.69 |only if questactive(60775) or completedq(60775)
accept Misery Business##60646 |goto 46.91,41.69 |only if questactive(60646) or completedq(60646)
accept Death Motes##60762 |goto 46.91,41.69 |only if questactive(60762) or completedq(60762)
accept Dust to Dust##61088 |goto 46.91,41.69 |only if questactive(61088) or completedq(61088)
accept Grathalax, The Extractor##61104 |goto 46.91,41.69 |only if questactive(61104) or completedq(61104)
accept Thin Their Numbers##61103 |goto 46.91,41.69 |only if questactive(61103) or completedq(61103)
accept Eye of the Scryer##60622 |goto 46.91,41.69 |only if questactive(60622) or completedq(60622)
accept The Jailer's Share##61079 |goto 46.91,41.69 |only if questactive(61079) or completedq(61079)
accept A Spark of Light##61075 |goto 46.91,41.69 |only if questactive(61075) or completedq(61075)
accept Power of the Colossus##62234 |goto 46.91,41.69 |only if questactive(62234) or completedq(62234)
accept Words of Warding##61765 |goto 46.91,41.69 |only if questactive(61765) or completedq(61765)
accept Forces of Perdition##62214 |goto 46.91,41.69 |only if questactive(62214) or completedq(62214)
accept Soulless Husks##63206 |goto 46.91,41.69 |only if questactive(63206) or completedq(63206)
|only if questactive(60902,60775,60646,60762,61088,61104,61103,60622,61079,61075,62234,61765,62214,63206) or completedq(60902,60775,60646,60762,61088,61104,61103,60622,61079,61075,62234,61765,62214,63206)
step
click Tormentor's Pike
accept Rodent Removal##62239 |goto The Maw/0 60.33,72.13
|only if questactive(62239)
step
use Tormentor's Rod##183105
|tip Use it on weakened Mawrat enemies around this area.
Explode #8# Mawrats |q 62239/1 |goto 61.43,72.06
You can find more around [56.61,83.10]
|only if haveq(62239) and not readyq(62239) and not completedq(62239)
step
click Broker Journal
accept What They Know##63069 |goto 46.44,62.27
|only if questactive(63069)
step
click Torn Pages##364991+
|tip They look like small pieces of paper on the ground around this area.
collect 18 Torn Journal Page##184579 |q 63069/1 |goto 46.98,66.13
|only if questactive(63069)
step
click Spectral Pick
accept Acquisition: Stygic Ore##63072 |goto 47.18,82.66
|only if questactive(63072)
step
click Stygic Ore Vein##364995+
|tip They look like glowing blue veins of ore on rock around this area.
collect 15 Stygic Ore##184585 |q 63072/1 |goto 47.65,81.61
|only if questactive(63072)
step
Enter the cave |goto 30.56,59.24 < 10 |walk
talk Deceased Broker##175797
accept Guaranteed Delivery##63040 |goto 30.73,58.35 |only if questactive(63040)
accept Guaranteed Delivery##63038 |goto 30.73,58.35 |only if questactive(63038)
|only if questactive(63040,63038)
stickystart "Send_8_Imprisoned_Essences"
stickystart "Send_3_Tools_of_Constraint"
stickystart "Send_5_Scrolls_of_Subjugation"
step
kill Spectral Assassin##170694
|tip You may need a group for this.
collect 1 Assassin's Soulcloak##182303 |q 61765 |goto 33.56,67.41
|only if haveq(61765) and not readyq(61765) and not completedq(61765)
step
label "Put_on_the _Assassin's_Soulcloak"
use Assassin's Soulcloak##182303
Put on the Assassin's Soulcloak |havebuff spell:338784 |q 61765
|only if haveq(61765) and not readyq(61765) and not completedq(61765)
step
'|use Assassin's Soulcloak##182303
click Cloaked Ward+
|tip They look like blue runes with floating black orbs above them on the ground around this area.
|tip Dispelling a rune will remove your cloak.
|tip Reapplying your cloak will drop threat.
Dispel #4# Cloaked Wards |q 61765/2 |goto 31.28,62.44 |or
'|complete not hasbuff("spell:338784") and not readyq(61765) |next "Put_on_the _Assassin's_Soulcloak" |or
|only if haveq(61765) and not readyq(61765) and not completedq(61765)
stickystart "Kill_3_Mawsworn_Instructors"
stickystart "Kill_5_Mawsworn_Myrmidons"
step
kill Mawsworn Eviscerator##175700 |q 62214/3 |goto 29.76,61.40
|tip It walks around this area.
|tip You may need a group for this.
|only if haveq(62214)
step
label "Send_8_Imprisoned_Essences"
use the Containment Orb##184513
|tip Use it on Imprisoned Essences.
|tip They look like brown urns on the ground around this area.
Send #8# Imprisoned Essences |q 63038/1 |goto 31.56,62.76
|only if haveq(63038)
step
label "Send_3_Tools_of_Constraint"
use the Containment Orb##184513
|tip Use it on Tools of Constraint.
|tip They look like hook-bladed knives on the ground around this area.
Send #3# Tools of Constraint |q 63040/2 |goto 31.56,62.76
|only if haveq(63040)
step
label "Send_5_Scrolls_of_Subjugation"
use the Containment Orb##184513 |notinsticky
|tip Use it on Scrolls of Subjugation. |notinsticky
|tip They look like open scrolls floating above the ground around this area. |notinsticky
Send #5# Scrolls of Subjugation |q 63040/1 |goto 31.56,62.76
|only if haveq(63040)
step
label "Kill_3_Mawsworn_Instructors"
kill 3 Mawsworn Instructor##175707 |q 62214/2 |goto 29.76,61.40
|tip You may need a group for this. |notinsticky
|only if haveq(62214)
step
label "Kill_5_Mawsworn_Myrmidons"
kill 5 Mawsworn Myrmidon##175701 |q 62214/1 |goto 29.76,61.40
|tip You may need a group for this. |notinsticky
|only if haveq(62214)
step
talk Vengeful Soul##175866
accept Feed Your Soul##63045 |goto 25.11,66.63
|only if questactive(63045)
step
kill Soulsteel Colossus##169286
|tip You may need a group for this.
collect Colossal Power Core##183042 |q 62234/1 |goto 22.76,65.34
|only if haveq(62234)
step
Kill enemies around this area
click Sealed Urns+
|tip They look like small and large jars on the ground around this area.
Strengthen the Vengeful Soul with Anima |q 63045/1 |goto 24.45,68.87
|only if haveq(63045)
step
Enter the building |goto 23.02,68.39 < 15 |walk
kill Inquisitor Moorlac##175863 |q 63045/2 |goto Altar of Domination/0 25.70,54.64
|tip Inside the building.
|only if haveq(63045)
stickystart "Destroy_5_Soulforged_Cores"
stickystart "Disrupt_the_Mawsworn"
step
talk Doomed Soul##176164
accept Disrupting the Flow##60732 |goto The Maw/0 39.30,45.85
|only if questactive(60732)
step
click Blazing Ingot
accept Acquisiton: Blazing Ingots##63050 |goto 38.90,39.90
|only if questactive(63050)
stickystart "Collect_12_Blazing_Ingots"
step
Kill Stygian enemies around this area
collect Stygian Hammer##184622 |q 63206/1 |goto 38.16,38.88
|only if questactive(63206)
step
use the Stygian Hammer##184622
|tip Use it on Armored Husks.
|tip They look like Suits of Stygian armor on the ground around this area.
Destroy #10# Armored Husks |q 63206/2 |goto 38.16,38.88
You can find more around [34.71,41.69]
|only if questactive(63206)
step
label "Collect_12_Blazing_Ingots"
click Blazing Ingot+
|tip They look like small flaming metal bars on the ground around this area.
collect 12 Blazing Ingot##184556 |q 63050/1 |goto 40.69,42.30
You can find more around [35.40,43.52]
|only if haveq(63050)
step
label "Destroy_5_Soulforged_Cores"
Kill Soulforger enemies around this area
collect Soulforged Core##180280 |n
use the Soulforged Core##180280
|tip Throw them in a Soulsteel Forge.
|tip They look like giant skulls with flames in the mouth around this area.
Destroy #5# Soulforged Cores |q 60775/1 |goto 35.34,43.42
You can find forges at:
[41.85,42.31]
[38.85,39.78]
[36.18,37.29]
[36.52,43.62]
[35.92,45.27]
[34.99,44.82]
|only if haveq(60775)
step
label "Disrupt_the_Mawsworn"
Kill enemies around this area
Disrupt the Mawsworn |q 60732/1 |goto 34.75,39.96
|only if haveq(60732)
stickystart "Collect_Essences_of_Misery"
step
click Misery Conduit
Destroy the Northern Misery Conduit |q 60646/3 |goto 35.30,26.08
|only if haveq(60646)
step
talk Disciple Kimonas##176144
accept Drowned and Torn Asunder##63179 |goto 38.88,23.55
|only if questactive(63179)
step
click Grasping Tentacle+
|tip They look like tentacles grasping Kyrian NPCs on the ground around this area.
Release #8# Drowned Kyrian |q 63179/1 |goto 44.55,22.34
|only if haveq(63179)
step
talk Disciple Kimonas##176144
turnin Drowned and Torn Asunder##63179 |goto 38.88,23.55
|only if readyq(63179) or completedq(63179)
stickystop "Collect_Essences_of_Misery"
stickystart "Kill_Mawsworn_Shacklers"
stickystart "Kill_Mawsworn_Deadeyes"
stickystart "Disable_Pain_Conduits"
step
talk Trapped Soul##175813
accept Sundered Souls##63043 |goto 28.11,14.68
|only if questactive(63043)
step
label "Kill_Mawsworn_Shacklers"
kill 8 Mawsworn Shackler##167322 |q 61103/1 |goto 29.68,15.18
|only if haveq(61103)
step
label "Kill_Mawsworn_Deadeyes"
kill 4 Mawsworn Deadeye##167323 |q 61103/2 |goto 29.68,15.18
|only if haveq(61103)
step
click Soulrend Trap+
|tip They look like square tiles with smoking purple centers on the ground around this area.
Disable #10# Soulrend Traps |q 63043/1 |goto 28.26,14.97
|only if haveq(63043)
step
Click the Complete Quest Box
turnin Sundered Souls##63043
|only if readyq(63043) or completedq(63043)
step
label "Disable_Pain_Conduits"
click Pain Conduit##354937+
|tip They look like large spiked stone pedestals on the ground around this area.
|tip They appear on your minimap as yellow dots.
Disable #3# Pain Conduits |q 61104/1 |goto 28.82,14.55
|only if haveq(61104)
step
talk Tormented Soul##176029
accept A Shadowed Fate##63166 |goto 29.71,20.91
|only if questactive(63166)
step
kill Grathalax##171307 |q 61104/2 |goto Extractor's Sanatorium/0 62.09,33.31
|tip Inside the building.
|tip You may need a group for this.
|only if haveq(61104)
stickystart "Release_6_Tormented_Souls"
stickystart "Collect_9_Runeforged_Shackles"
stickystart "Collect_12_Death_Motes"
step
click Runeforged Shackles##364921+
accept Acquisiton: Runeforged Shackles##63047 |goto The Maw/0 25.62,24.21
|only if questactive(63047)
step
label "Release_6_Tormented_Souls"
click Circle of Agony+
|tip They look like circles of runes surrounded by stones with spirits inside on the ground around this area.
kill Tormented Shade##176025+
|tip They sometimes spawn from Circles of Agony.
Release #6# Tormented Souls |q 63166/1 |goto 26.50,24.96
|only if haveq(63166)
step
label "Collect_9_Runeforged_Shackles"
click Runeforged Shackles##364921+
|tip They look like long chains hanging from objects around this area.
collect 9 Runeforged Shackles##184552 |q 63047/1 |goto 26.47,26.00
|only if haveq(63047)
step
label "Collect_12_Death_Motes"
clicknpc Death Mote##170169+
|tip They look like swirling black and white orbs floating above the ground around this area.
Collect #12# Death Motes |q 60762/1 |goto 27.30,24.65
|only if haveq(60762)
step
talk Tormented Soul##176029
turnin A Shadowed Fate##63166 |goto 29.71,20.91
|only if readyq(63166) or completedq(63166)
stickystart "Rescue_Half-Buried_Souls"
step
click Stygia Conduit
Place the Stygia Conduit |q 61079/1 |goto 26.98,31.73 |count 1
|only if haveq(61079)
step
Enter the cave |goto 25.51,32.61 < 20 |walk
kill Leerok the Scryer##169551
|tip Inside the cave.
collect Eye of the Scryer##180035 |q 60622/1 |goto 24.83,36.79
|only if haveq(60622)
step
Enter the cave |goto 25.51,32.61 < 20 |walk |only if not haveq(60622)
click Stygia Conduit
|tip Inside the cave.
Place the Stygia Conduit |q 61079/1 |goto 24.12,37.35 |count 2
|only if haveq(61079)
step
Leave the cave |goto 25.51,32.61 < 20 |walk
click Stygia Conduit
Place the Stygia Conduit |q 61079/1 |goto 22.89,34.73 |count 3
|only if haveq(61079)
step
click Crystallized Stygia##364900
accept Acquisition: Crystallized Stygia##63031 |goto 21.17,34.12
|only if questactive(63031)
step
label "Rescue_Half-Buried_Souls"
click Dirt Pile+
|tip They look like light brown piles of loose dirt on the ground around this area.
Rescue #6# Half-Buried Souls |q 61088/1 |goto 21.85,34.76
|only if haveq(61088)
stickystart "Collect_10_Crystallized_Stygia"
step
click Stygia Conduit
Place the Stygia Conduit |q 61079/1 |goto 19.44,34.39 |count 4
|only if haveq(61079)
step
label "Collect_10_Crystallized_Stygia"
click Crystallized Stygia##364900+
|tip They look like blue and white crystals on the ground around this area.
collect 10 Crystallized Stygia##184510 |q 63031/1 |goto 21.44,34.97
|only if haveq(63031)
stickystart "Collect_Essences_of_Misery"
step
talk Hopeless Vessel##176069
accept Misery's Company##63100 |goto 24.73,45.37
|only if questactive(63100)
step
kill 10 Hopeless Vessel##176027 |q 63100/1 |goto 24.07,44.52
|tip They spawn all along the River of Souls.
|only if haveq(63100)
step
Click the Complete Quest Box
turnin Misery's Company##63100
|only if readyq(63100) or completedq(63100)
step
click Misery Conduit
Destroy the Southern Misery Conduit |q 60646/2 |goto 26.50,43.62
|only if haveq(60646)
stickystart "Kill_8_Crucible_Soulseekers"
step
talk Knight of the Ebon Blade##175807
|tip On the bridge.
accept A Monument to Vengeance##63039 |goto 22.17,47.94
|only if questactive(63039)
step
click Ebon Runeblade##364901+
|tip They look like discarded weapons laying on the ground around this area.
collect 8 Ebon Runeblade##184511 |q 63039/1 |goto 19.48,48.48
|only if haveq(63039)
step
label "Kill_8_Crucible_Soulseekers"
kill 8 Crucible Soulseeker##171179 |q 61075/1 |goto 19.48,48.48
|only if haveq(61075)
step
use the Cypher of Melody##180626
Lure Souls East of the River |q 60902/2 |goto 19.80,54.35
|only if haveq(60902)
step
click Twisted Mawstone
turnin A Monument to Vengeance##63039 |goto 23.39,49.85
|only if haveq(63039) or completedq(63039)
step
use the Cypher of Melody##180626
Lure Souls West of the River |q 60902/1 |goto 18.27,50.44
|only if haveq(60902)
step
click Phasic Siphoner
accept Torment for the Taking##63062 |goto 27.99,46.98
|only if questactive(63062)
step
click Soul Fissure+
|tip They look like white patches surrounded by black stones on the ground around this area.
Fill the Phasic Siphoner |q 63062/1 |goto 27.95,46.98
|only if haveq(63062)
step
label "Collect_Essences_of_Misery"
kill Resonant Misery##169780+
collect 10 Essence of Misery##184614 |q 60646/1 |goto 33.24,29.93
|only if haveq(60646)
step
talk Ve'nari##162804
turnin A Dark Song##60902 |goto The Maw/0 46.91,41.69 |only if readyq(60902)
turnin A Suitable Demise##60775 |goto The Maw/0 46.91,41.69 |only if readyq(60775)
turnin Rodent Removal##62239 |goto The Maw/0 46.91,41.69 |only if readyq(62239)
turnin Misery Business##60646 |goto 46.91,41.69 |only if readyq(60646)
turnin Death Motes##60762 |goto 46.91,41.69 |only if readyq(60762)
turnin Dust to Dust##61088 |goto 46.91,41.69 |only if readyq(61088)
turnin Grathalax, The Extractor##61104 |goto 46.91,41.69 |only if readyq(61104)
turnin Disrupting the Flow##60732 |goto 46.91,41.69 |only if readyq(60732)
turnin Eye of the Scryer##60622 |goto 46.91,41.69 |only if readyq(60622)
turnin The Jailer's Share##61079 |goto 46.91,41.69 |only if readyq(61079)
turnin A Spark of Light##61075 |goto 46.91,41.69 |only if readyq(61075)
turnin Thin Their Numbers##61103 |goto 46.91,41.69 |only if readyq(61103)
turnin Acquisiton: Blazing Ingots##63050 |goto 46.91,41.69 |only if readyq(63050)
turnin Acquisiton: Runeforged Shackles##63047 |goto 46.91,41.69 |only if readyq(63047)
turnin Acquisition: Crystallized Stygia##63031 |goto 46.91,41.69 |only if readyq(63031)
turnin Torment for the Taking##63062 |goto 46.91,41.69 |only if readyq(63062)
turnin Guaranteed Delivery##63040 |goto 46.91,41.69 |only if readyq(63040)
turnin Guaranteed Delivery##63038 |goto 46.91,41.69 |only if readyq(63038)
turnin Feed Your Soul##63045 |goto 46.91,41.69 |only if readyq(63045)
turnin Power of the Colossus##62234 |goto 46.91,41.69 |only if readyq(62234)
turnin Words of Warding##61765 |goto 46.91,41.69 |only if readyq(61765)
turnin What They Know##63069 |goto 46.91,41.69 |only if readyq(63069)
turnin Acquisition: Stygic Ore##63072 |goto 46.91,41.69 |only if readyq(63072)
turnin Forces of Perdition##62214 |goto 46.91,41.69 |only if readyq(62214)
turnin Soulless Husks##63206 |goto 46.91,41.69 |only if readyq(63206)
|only if readyq(60902,60775,62239,60646,60762,61088,61104,60732,61103,60622,61079,61075,63050,63047,63031,63062,63040,63038,63045,62234,61765,63069,63072,62214,63206)
step
You have completed all daily quests in The Maw
|tip This guide will reset when more become available.
'|complete not completedq(63062,62239,63050,63179,63043,63047,63166,63031,63100,63040,63038,63045,63069,63072,60732,63039) |next "Begin_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Shadowlands (50-60)\\Kyrian Covenant\\Kyrian Daily Quests",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the various daily quests for the Kyrian Covenant.",
condition_suggested=function() return level >= 60 and completedq(57904) end,
patch='90001',
},[[
step
label "Begin_Dailies"
talk Haephus##167745
accept Replenish the Reservoir##61982 |goto Elysian Hold/0 42.57,53.11
step
talk Soulguide Daelia##160212
|tip Downstairs inside the Sanctum of Binding.
accept Storm the Maw##60454 |goto Elysian Hold/1 59.52,34.26 |only if questactive(60454) or completedq(60454)
accept Anima Salvage##60458 |goto Elysian Hold/1 59.52,34.26 |only if questactive(60458) or completedq(60458)
accept Return Lost Souls##62863 |goto Elysian Hold/1 59.52,34.26
|only if questactive(60454,60458,62863) or completedq(60454,60458,62863)
step
talk Kalisthene##168517
accept Training in Ardenweald##60403 |goto Elysian Hold/0 37.09,61.17 |only if questactive(60403) or completedq(60403)
accept Training in Maldraxxus##60407 |goto Elysian Hold/0 37.09,61.17 |only if questactive(60407) or completedq(60407)
accept Training in Revendreth##60412 |goto Elysian Hold/0 37.09,61.17 |only if questactive(60412) or completedq(60412)
accept Training Our Forces##60404 |goto Elysian Hold/0 37.09,61.17 |only if questactive(60404) or completedq(60404)
|only if questactive(60403,60407,60412,60404) or completedq(60403,60407,60412,60404)
step
talk Polemarch Adrestes##160037
|tip Upstairs on Archon's Rise.
accept A Call to Ardenweald##60424 |goto Elysian Hold/0 55.64,41.96 |only if questactive(60424) or completedq(60424)
accept A Call to Revendreth##60434 |goto Elysian Hold/0 55.64,41.96 |only if questactive(60434) or completedq(60434)
accept A Call to Maldraxxus##60430 |goto Elysian Hold/0 55.64,41.96 |only if questactive(60430) or completedq(60430)
accept Troubles at Home##60425 |goto Elysian Hold/0 55.64,41.96 |only if questactive(60425) or completedq(60425)
|only if questactive(60424,60434,60430,60425) or completedq(60424,60434,60430,60425)
step
talk Xandria##154627
|tip Upstairs on Archon's Rise.
accept Challenges in Ardenweald##60439 |goto Elysian Hold/0 62.21,37.77 |only if questactive(60439) or completedq(60439)
accept Challenges in Bastion##60442 |goto Elysian Hold/0 62.21,37.77 |only if questactive(60442) or completedq(60442)
accept Challenges in Maldraxxus##60447 |goto Elysian Hold/0 62.21,37.77 |only if questactive(60447) or completedq(60447)
accept Challenges in Revendreth##60450 |goto Elysian Hold/0 62.21,37.77 |only if questactive(60450) or completedq(60450)
|only if questactive(60439,60442,60447,60450) or completedq(60439,60442,60447,60450)
step
talk Hermestes##160387
accept Aiding Ardenweald##60391 |goto Elysian Hold/0 40.95,40.90 |only if questactive(60391) or completedq(60391)
accept Aiding Bastion##60392 |goto Elysian Hold/0 40.95,40.90 |only if questactive(60392) or completedq(60392)
accept Aiding Maldraxxus##60395 |goto Elysian Hold/0 40.95,40.90 |only if questactive(60395) or completedq(60395)
accept Aiding Revendreth##60400 |goto Elysian Hold/0 40.95,40.90 |only if questactive(60400) or completedq(60400)
|only if questactive(60391,60392,60395,60400) or completedq(60391,60392,60395,60400)
step
talk Capheus##158773
accept Anima Appeal##60465 |goto Elysian Hold/0 37.89,67.50
|only if questactive(60465) or completedq(60465)
step
talk Sika##168519
accept A Wealth of Wealdwood##60372 |goto Elysian Hold/0 33.67,44.60 |only if questactive(60372) or completedq(60372)
accept Gildenite Grab##60358 |goto Elysian Hold/0 33.67,44.60 |only if questactive(60358) or completedq(60358)
accept A Source of Sorrowvine##60380 |goto Elysian Hold/0 33.67,44.60 |only if questactive(60380) or completedq(60380)
accept Rare Resources##60415 |goto Elysian Hold/0 33.67,44.60 |only if questactive(60415) or completedq(60415)
accept Bonemetal Bonanza##60377 |goto Elysian Hold/0 33.67,44.60 |only if questactive(60377) or completedq(60377)
|only if questactive(60372,60358,60380,60415,60377) or completedq(60372,60358,60380,60415,60377)
stickystart "Complete_World_Quests_in_Bastion_with_Trainee"
stickystart "Complete_World_Quests_in_Bastion"
stickystart "Defeat_the_Powerful_Foes_of_Bastion"
stickystart "Defend_Bastion"
stickystart "Collect_4_Gildenite"
stickystart "Collect_4_Bonemetal"
stickystart "Collect_4_Sorrowvine"
stickystart "Collect_4_Wealdwood"
stickystart "Collect_Coins_of_Brokerage"
stickystart "Complete_World_Quests_in_Maldraxxus_with_Trainee"
stickystart "Complete_World_Quests_in_Revendreth_with_Trainee"
stickystart "Complete_World_Quests_in_Ardenweald"
stickystart "Complete_World_Quests_in_Maldraxxus"
stickystart "Complete_World_Quests_in_Revendreth"
stickystart "Defeat_the_Powerful_Foes_of_Ardenweald"
stickystart "Defeat_the_Powerful_Foes_of_Maldraxxus"
stickystart "Defeat_the_Powerful_Foes_of_Revendreth"
stickystart "Defend_Ardenweald"
stickystart "Defend_Maldraxxus"
stickystart "Defend_Revendreth"
step
Complete #3# World Quests in Ardenweald with Your Trainee |q 60403/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Ardenweald map to load the guide for it.
|only if haveq(60403) or completedq(60403)
step
label "Complete_World_Quests_in_Maldraxxus_with_Trainee"
Complete #3# World Quests in Maldraxxus with Your Trainee |q 60407/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Maldraxxus map to load the guide for it.
|only if haveq(60407) or completedq(60407)
step
label "Complete_World_Quests_in_Revendreth_with_Trainee"
Complete #3# World Quests in Revendreth with Your Trainee |q 60412/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Revendreth map to load the guide for it.
|only if haveq(60412) or completedq(60412)
step
label "Complete_World_Quests_in_Bastion_with_Trainee"
Complete #3# World Quests in Bastion with Your Trainee |q 60404/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Bastion map to load the guide for it.
|only if haveq(60404) or completedq(60404)
step
label "Complete_World_Quests_in_Ardenweald"
Complete #3# World Quests in Ardenweald |q 60391/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Ardenweald map to load the guide for it.
|only if haveq(60391) or completedq(60391)
step
label "Complete_World_Quests_in_Bastion"
Complete #3# World Quests in Bastion |q 60392/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Bastion map to load the guide for it.
|only if haveq(60392) or completedq(60392)
step
label "Complete_World_Quests_in_Maldraxxus"
Complete #3# World Quests in Maldraxxus |q 60395/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Maldraxxus map to load the guide for it.
|only if haveq(60395) or completedq(60395)
step
label "Complete_World_Quests_in_Revendreth"
Complete #3# World Quests in Revendreth |q 60400/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Revendreth map to load the guide for it.
|only if haveq(60400) or completedq(60400)
step
label "Defeat_the_Powerful_Foes_of_Ardenweald"
Defeat the Powerful Foes of Ardenweald |q 60439/1
|tip Complete the "Terrors in Tirna Scithe" world quest in Ardenweald using the world quest guide if it is active.
|tip Alternatively, you may also complete the "Mists of Tirna Scithe" or "De Other Side" dungeons using their respective dungeon guides.
|tip Completing any one of these will fulfill the quest requirements.
|only if haveq(60439) or completedq(60439)
step
label "Defeat_the_Powerful_Foes_of_Bastion"
Defeat the Powerful Foes of Bastion |q 60442/1
|tip Complete the "Disloyal Denizens" world quest in Bastion using the world quest guide if it is active.
|tip Alternatively, you may also complete the "Spires of Ascension Dungeon" or "Necrotic Wake" dungeons using their respective dungeon guides.
|tip Completing any one of these will fulfill the quest requirements.
|only if haveq(60442) or completedq(60442)
step
label "Defeat_the_Powerful_Foes_of_Maldraxxus"
Defeat the Powerful Foes of Maldraxxus |q 60447/1
|tip Complete the "Chosen Champions" world quest in Maldraxxus using the world quest guide if it is active.
|tip Alternatively, you may also complete the "Theater of Pain" or "Plaguefall" dungeons using their respective dungeon guides.
|tip Completing any one of these will fulfill the quest requirements.
|only if haveq(60447) or completedq(60447)
step
label "Defeat_the_Powerful_Foes_of_Revendreth"
Defeat the Powerful Foes of Revendreth |q 60450/1
|tip Complete the "Destroy the Dominant" world quest in Revendreth using the world quest guide if it is active.
|tip Alternatively, you may also complete the "Sanguine Depths" or "Halls of Atonement" dungeons using their respective dungeon guides.
|tip Completing any one of these will fulfill the quest requirements.
|only if haveq(60450) or completedq(60450)
step
label "Defend_Ardenweald"
Defend Ardenweald |q 60424/1
|tip You can accomplish this several ways.
|tip Complete world quests in Ardenweald using the "Ardenweald World Quests" guide.
|tip Loot treasures or kill rare enemies across Ardenweald.
|tip You can also kill bosses in the "Mists of Tirna Scithe" and "De Other Side" dungeons using their respective dungeon guides.
|only if haveq(60424) or completedq(60424)
step
label "Defend_Bastion"
Defend Bastion |q 60425/1
|tip You can accomplish this several ways.
|tip Complete world quests in Bastion using the "Bastion World Quests" guide.
|tip Loot treasures or kill rare enemies across Bastion.
|tip You can also kill bosses in the "Spires of Ascension" and "Necrotic Wake" dungeons using their respective dungeon guides.
|only if haveq(60425) or completedq(60425)
step
label "Defend_Maldraxxus"
Defend Maldraxxus |q 60430/1
|tip You can accomplish this several ways.
|tip Complete world quests in Maldraxxus using the "Maldraxxus World Quests" guide.
|tip Loot treasures or kill rare enemies across Maldraxxus.
|tip You can also kill bosses in the "Plaguefall" and "Theatre of Pain" dungeons using their respective dungeon guides.
|only if haveq(60430) or completedq(60430)
step
label "Defend_Revendreth"
Defend Revendreth |q 60434/1
|tip You can accomplish this several ways.
|tip Complete world quests in Revendreth using the "Revendreth World Quests" guide.
|tip Loot treasures or kill rare enemies across Revendreth.
|tip You can also kill bosses in the "Sanguine Depths" and "Halls of Atonement" dungeons using their respective dungeon guides.
|only if haveq(60434) or completedq(60434)
step
label "Collect_4_Gildenite"
collect 3 Gildenite##179321 |q 60358/1
|tip This ore drops from rare spawns and treasures all over Bastion.
|only if haveq(60358) or completedq(60358)
step
label "Collect_4_Bonemetal"
collect 3 Bonemetal##179317 |q 60377/1
|tip This drops from rare spawns and treasures all over Maldraxxus.
|only if haveq(60377) or completedq(60377)
step
label "Collect_4_Sorrowvine"
collect 3 Sorrowvine##179318 |q 60380/1
|tip Loot treasures or kill rare enemies across Revendreth.
|only if haveq(60380) or completedq(60380)
step
label "Collect_4_Wealdwood"
collect 3 Wealdwood##179320 |q 60372/1
|tip Loot treasures or kill rare enemies across Ardenweald.
|only if haveq(60372) or completedq(60372)
step
label "Collect_Coins_of_Brokerage"
collect 3 Coin of Brokerage##179327 |q 60415/1
|tip These coins drop from rare spawns and treasures all over Shadowlands zones.
|only if haveq(60415) or completedq(60415)
stickystart "Defeat_3_Rare_or_Special_Encounter_Bosses"
stickystart "Collect_150_Soul_Embers_from_Torghast"
step
kill Stone Prison##176145+
|tip They look like pyramids made of rocks on the ground around this area.
click Soul Cage+
|tip They look like tall grey metal cages on the ground around this area.
|tip They will appear on your minimap as white ghost icons.
click Soul+
|tip They look like white spirits that float out of the cages and stone prisons.
|tip You can also click Souls that other players free.
Rescue #20# Lost Souls in the Maw |q 62863/1 |goto The Maw/0 39.52,46.74
|only if haveq(62863) or completedq(62863)
step
label "Defeat_3_Rare_or_Special_Encounter_Bosses"
Defeat #3# Rare or Special Encounter Bosses |q 60454/1
|tip Encounters periodically show on the map in The Maw.
|tip The Wrath of the Jailer and Hunt events don't count.
|tip Any rare with a skull or star minimap icon counts.
|only if haveq(60454) or completedq(60454)
step
label "Collect_150_Soul_Embers_from_Torghast"
Gather #150# Anima Embers from Torghast, Tower of the Damned |q 60458/1
|tip Run Torghast and collect them from mobs throughout the tower.
|only if haveq(60458) or completedq(60458)
step
talk Soulguide Daelia##160212
|tip Downstairs inside the Sanctum of Binding.
turnin Storm the Maw##60454 |goto Elysian Hold/1 59.52,34.26 |only if readyq(60454) or completedq(60454)
turnin Anima Salvage##60458 |goto Elysian Hold/1 59.52,34.26 |only if readyq(60458) or completedq(60458)
turnin Return Lost Souls##62863 |goto Elysian Hold/1 59.52,34.26 |only if readyq(62863) or completedq(62863)
|only if readyq(60454,60458,62863) or completedq(60454,60458,62863)
step
talk Xandria##154627
|tip Upstairs on Archon's Rise.
turnin Challenges in Ardenweald##60439 |goto Elysian Hold/0 62.21,37.77 |only if readyq(60439) or completedq(60439)
turnin Challenges in Bastion##60442 |goto Elysian Hold/0 62.21,37.77 |only if readyq(60442) or completedq(60442)
turnin Challenges in Maldraxxus##60447 |goto Elysian Hold/0 62.21,37.77 |only if readyq(60447) or completedq(60447)
turnin Challenges in Revendreth##60450 |goto Elysian Hold/0 62.21,37.77 |only if readyq(60450) or completedq(60450)
|only if readyq(60439,60442,60447,60450) or completedq(60439,60442,60447,60450)
step
talk Kalisthene##168517
turnin Training in Ardenweald##60403 |goto Elysian Hold/0 37.09,61.17 |only if readyq(60403) or completedq(60403)
turnin Training in Maldraxxus##60407 |goto Elysian Hold/0 37.09,61.17 |only if readyq(60407) or completedq(60407)
turnin Training in Revendreth##60412 |goto Elysian Hold/0 37.09,61.17 |only if readyq(60412) or completedq(60412)
turnin Training Our Forces##60404 |goto Elysian Hold/0 37.09,61.17 |only if readyq(60404) or completedq(60404)
|only if readyq(60403,60407,60412,60404) or completedq(60403,60407,60412,60404)
step
talk Polemarch Adrestes##160037
|tip Upstairs on Archon's Rise.
turnin A Call to Ardenweald##60424 |goto Elysian Hold/0 55.64,41.96 |only if readyq(60424) or completedq(60424)
turnin A Call to Revendreth##60434 |goto Elysian Hold/0 55.64,41.96 |only if readyq(60434) or completedq(60434)
turnin A Call to Maldraxxus##60430 |goto Elysian Hold/0 55.64,41.96 |only if readyq(60430) or completedq(60430)
turnin Troubles at Home##60425 |goto Elysian Hold/0 55.64,41.96 |only if readyq(60425) or completedq(60425)
|only if readyq(60424,60434,60430,60425) or completedq(60424,60434,60430,60425)
step
talk Sika##168519
turnin A Wealth of Wealdwood##60372 |goto Elysian Hold/0 33.67,44.60 |only if readyq(60372) or completedq(60372)
turnin Gildenite Grab##60358 |goto Elysian Hold/0 33.67,44.60 |only if readyq(60358) or completedq(60358)
turnin A Source of Sorrowvine##60380 |goto Elysian Hold/0 33.67,44.60 |only if readyq(60380) or completedq(60380)
turnin Rare Resources##60415 |goto Elysian Hold/0 33.67,44.60 |only if readyq(60415) or completedq(60415)
turnin Bonemetal Bonanza##60377 |goto Elysian Hold/0 33.67,44.60 |only if readyq(60377) or completedq(60377)
|only if readyq(60372,60358,60380,60415,60377) or completedq(60372,60358,60380,60415,60377)
step
talk Hermestes##160387
turnin Aiding Ardenweald##60391 |goto Elysian Hold/0 40.95,40.90 |only if readyq(60391) or completedq(60391)
turnin Aiding Bastion##60392 |goto Elysian Hold/0 40.95,40.90 |only if readyq(60392) or completedq(60392)
turnin Aiding Maldraxxus##60395 |goto Elysian Hold/0 40.95,40.90 |only if readyq(60395) or completedq(60395)
turnin Aiding Revendreth##60400 |goto Elysian Hold/0 40.95,40.90 |only if readyq(60400) or completedq(60400)
|only if readyq(60391,60392,60395,60400) or completedq(60391,60392,60395,60400)
stickystart "Collect_1000_Anima"
step
talk Haephus##167745
Tell him _"Show me the Sanctum."_
|tip Click the "Deposit" button to deposit anima from your bags.
Deposit #600# Anima in the Anima Reservoir |q 60465/1 |goto Elysian Hold/0 42.60,53.06 |or
|tip Gather anima by completing world quests, killing rare enemies, and looting treasures across the Shadowlands.
'|complete countcompletedq(60458,60415,60358,60439,60442,60447,60450,60403,60407,60412,60404,60424,60434,60377,60430,60425,60380,60372,60465,60391,60392,60395,60400,60454) < 3 |next "Begin_Dailies" |or
|only if haveq(60465) or completedq(60465)
step
talk Haephus##167745
turnin Anima Appeal##60465 |goto Elysian Hold/0 42.60,53.06
|only if readyq(60465) or completedq(60465)
step
label "Collect_1000_Anima"
Collect #1000# Anima |q 61982/1 |or
|tip Gather anima by completing world quests, killing rare enemies, and looting treasures across the Shadowlands. |notinsticky
'|complete countcompletedq(60458,60415,60358,60439,60442,60447,60450,60403,60407,60412,60404,60424,60434,60377,60430,60425,60380,60372,60465,60391,60392,60395,60400,60454) < 3 |next "Begin_Dailies" |or
|only if haveq(61982) or completedq(61982)
step
talk Haephus##167745
turnin Replenish the Reservoir##61982 |goto Elysian Hold/0 42.60,53.06
|only if readyq(61982) or completedq(61982)
step
You have completed all covenant daily quests
|tip This guide will reset when more become available.
'|complete countcompletedq(60458,60415,60358,60439,60442,60447,60450,60403,60407,60412,60404,60424,60434,60377,60430,60425,60380,60372,60465,60391,60392,60395,60400,60454) < 3 |next "Begin_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Shadowlands (50-60)\\Necrolords Covenant\\Necrolord Daily Quests",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the various daily quests for the Necrolord Covenant.",
condition_suggested=function() return level >= 60 and completedq(59609) end,
patch='90001',
},[[
step
label "Begin_Dailies"
talk Osbourne Black##167748
accept Return Lost Souls##62866 |goto Seat of the Primus/0 46.66,42.38
step
talk Arkadia Moa##161909
accept Replenish the Reservoir##61983 |goto Seat of the Primus/0 52.74,38.28
step
talk Sabbath Nightshade##167207
accept Storm the Maw##60455 |goto Seat of the Primus/0 43.18,47.80 |only if questactive(60455) or completedq(60455)
accept Anima Salvage##60459 |goto Seat of the Primus/0 43.18,47.80 |only if questactive(60459) or completedq(60459)
|only if questactive(60455,60459) or completedq(60455,60459)
step
talk Niall Kugal##167209
accept Training in Ardenweald##60402 |goto Seat of the Primus/0 51.82,28.76 |only if questactive(60402) or completedq(60402)
accept Training in Bastion##60405 |goto Seat of the Primus/0 51.82,28.76 |only if questactive(60405) or completedq(60405)
accept Training in Revendreth##60411 |goto Seat of the Primus/0 51.82,28.76 |only if questactive(60411) or completedq(60411)
accept Training Our Forces##60408 |goto Seat of the Primus/0 51.82,28.76 |only if questactive(60408) or completedq(60408)
|only if questactive(60402,60405,60411,60408) or completedq(60402,60405,60411,60408)
step
talk Tabulator Killham##167210
accept A Call to Ardenweald##60423 |goto Seat of the Primus/0 59.97,43.53 |only if questactive(60423) or completedq(60423)
accept A Call to Bastion##60426 |goto Seat of the Primus/0 59.97,43.53 |only if questactive(60426) or completedq(60426)
accept A Call to Revendreth##60433 |goto Seat of the Primus/0 59.97,43.53 |only if questactive(60433) or completedq(60433)
accept Troubles at Home##60429 |goto Seat of the Primus/0 59.97,43.53 |only if questactive(60429) or completedq(60429)
|only if questactive(60423,60426,60433,60429) or completedq(60423,60426,60433,60429)
step
talk Grandmaster Vole##167208
accept Challenges in Ardenweald##60440 |goto Seat of the Primus/0 56.62,43.92 |only if questactive(60440) or completedq(60440)
accept Challenges in Bastion##60443 |goto Seat of the Primus/0 56.62,43.92 |only if questactive(60443) or completedq(60443)
accept Challenges in Maldraxxus##60445 |goto Seat of the Primus/0 56.62,43.92 |only if questactive(60445) or completedq(60445)
accept Challenges in Revendreth##60449 |goto Seat of the Primus/0 56.62,43.92 |only if questactive(60449) or completedq(60449)
|only if questactive(60440,60443,60445,60449) or completedq(60440,60443,60445,60449)
step
talk Sergeant Romark##158339
accept Aiding Ardenweald##60390 |goto Seat of the Primus/0 47.62,28.72 |only if questactive(60390) or completedq(60390)
accept Aiding Bastion##60393 |goto Seat of the Primus/0 47.62,28.72 |only if questactive(60393) or completedq(60393)
accept Aiding Maldraxxus##60396 |goto Seat of the Primus/0 47.62,28.72 |only if questactive(60396) or completedq(60396)
accept Aiding Revendreth##60398 |goto Seat of the Primus/0 47.62,28.72 |only if questactive(60398) or completedq(60398)
|only if questactive(60390,60393,60396,60398) or completedq(60390,60393,60396,60398)
step
talk Yondare Hex##167205
accept Anima Appeal##60464 |goto Seat of the Primus/0 48.95,35.95
|only if questactive(60464) or completedq(60464)
step
talk Gatherer Zaya##167201
accept A Wealth of Wealdwood##60371 |goto Seat of the Primus/0 46.69,38.51 |only if questactive(60371) or completedq(60371)
accept A Source of Sorrowvine##60379 |goto Seat of the Primus/0 46.69,38.51 |only if questactive(60379) or completedq(60379)
accept Gildenite Grab##60363 |goto Seat of the Primus/0 46.69,38.51 |only if questactive(60363) or completedq(60363)
accept Rare Resources##60416 |goto Seat of the Primus/0 46.69,38.51 |only if questactive(60416) or completedq(60416)
accept Bonemetal Bonanza##60376 |goto Seat of the Primus/0 46.69,38.51 |only if questactive(60376) or completedq(60376)
|only if questactive(60371,60379,60363,60416,60376) or completedq(60371,60379,60363,60416,60376)
stickystart "Complete_World_Quests_in_Maldraxxus_with_Trainee"
stickystart "Complete_World_Quests_in_Maldraxxus"
stickystart "Defeat_the_Powerful_Foes_of_Maldraxxus"
stickystart "Defend_Maldraxxus"
stickystart "Collect_4_Gildenite"
stickystart "Collect_4_Bonemetal"
stickystart "Collect_4_Sorrowvine"
stickystart "Collect_4_Wealdwood"
stickystart "Collect_Coins_of_Brokerage"
stickystart "Complete_World_Quests_in_Bastion_with_Trainee"
stickystart "Complete_World_Quests_in_Revendreth_with_Trainee"
stickystart "Complete_World_Quests_in_Ardenweald"
stickystart "Complete_World_Quests_in_Bastion"
stickystart "Complete_World_Quests_in_Revendreth"
stickystart "Defeat_the_Powerful_Foes_of_Ardenweald"
stickystart "Defeat_the_Powerful_Foes_of_Bastion"
stickystart "Defeat_the_Powerful_Foes_of_Revendreth"
stickystart "Defend_Ardenweald"
stickystart "Defend_Bastion"
stickystart "Defend_Revendreth"
step
Complete #3# World Quests in Ardenweald with Your Trainee |q 60402/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Ardenweald map to load the guide for it.
|only if haveq(60402) or completedq(60402)
step
label "Complete_World_Quests_in_Bastion_with_Trainee"
Complete #3# World Quests in Bastion with Your Trainee |q 60405/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Bastion map to load the guide for it.
|only if haveq(60405) or completedq(60405)
step
label "Complete_World_Quests_in_Revendreth_with_Trainee"
Complete #3# World Quests in Revendreth with Your Trainee |q 60411/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Revendreth map to load the guide for it.
|only if haveq(60411) or completedq(60411)
step
label "Complete_World_Quests_in_Maldraxxus_with_Trainee"
Complete #3# World Quests in Maldraxxus with Your Trainee |q 60408/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Maldraxxus map to load the guide for it.
|only if haveq(60408) or completedq(60408)
step
label "Complete_World_Quests_in_Ardenweald"
Complete #3# World Quests in Ardenweald |q 60390/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Ardenweald map to load the guide for it.
|only if haveq(60390) or completedq(60390)
step
label "Complete_World_Quests_in_Bastion"
Complete #3# World Quests in Bastion |q 60393/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Bastion map to load the guide for it.
|only if haveq(60393) or completedq(60393)
step
label "Complete_World_Quests_in_Maldraxxus"
Complete #3# World Quests in Maldraxxus |q 60396/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Maldraxxus map to load the guide for it.
|only if haveq(60396) or completedq(60396)
step
label "Complete_World_Quests_in_Revendreth"
Complete #3# World Quests in Revendreth |q 60398/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Revendreth map to load the guide for it.
|only if haveq(60398) or completedq(60398)
step
label "Defeat_the_Powerful_Foes_of_Ardenweald"
Defeat the Powerful Foes of Ardenweald |q 60440/1
|tip Complete the "Terrors in Tirna Scithe" world quest in Ardenweald using the world quest guide if it is active.
|tip Alternatively, you may also complete the "Mists of Tirna Scithe" or "De Other Side" dungeons using their respective dungeon guides.
|tip Completing any one of these will fulfill the quest requirements.
|only if haveq(60440) or completedq(60440)
step
label "Defeat_the_Powerful_Foes_of_Bastion"
Defeat the Powerful Foes of Bastion |q 60443/1
|tip Complete the "Disloyal Denizens" world quest in Bastion using the world quest guide if it is active.
|tip Alternatively, you may also complete the "Spires of Ascension Dungeon" or "Necrotic Wake" dungeons using their respective dungeon guides.
|tip Completing any one of these will fulfill the quest requirements.
|only if haveq(60443) or completedq(60443)
step
label "Defeat_the_Powerful_Foes_of_Maldraxxus"
Defeat the Powerful Foes of Maldraxxus |q 60445/1
|tip Complete the "Chosen Champions" world quest in Maldraxxus using the world quest guide if it is active.
|tip Alternatively, you may also complete the "Theater of Pain" or "Plaguefall" dungeons using their respective dungeon guides.
|tip Completing any one of these will fulfill the quest requirements.
|only if haveq(60445) or completedq(60445)
step
label "Defeat_the_Powerful_Foes_of_Revendreth"
Defeat the Powerful Foes of Revendreth |q 60449/1
|tip Complete the "Destroy the Dominant" world quest in Revendreth using the world quest guide if it is active.
|tip Alternatively, you may also complete the "Sanguine Depths" or "Halls of Atonement" dungeons using their respective dungeon guides.
|tip Completing any one of these will fulfill the quest requirements.
|only if haveq(60449) or completedq(60449)
step
label "Defend_Ardenweald"
Defend Ardenweald |q 60423/1
|tip You can accomplish this several ways.
|tip Complete world quests in Ardenweald using the "Ardenweald World Quests" guide.
|tip Loot treasures or kill rare enemies across Ardenweald.
|tip You can also kill bosses in the "Mists of Tirna Scithe" and "De Other Side" dungeons using their respective dungeon guides.
|only if haveq(60423) or completedq(60423)
step
label "Defend_Bastion"
Defend Bastion |q 60426/1
|tip You can accomplish this several ways.
|tip Complete world quests in Bastion using the "Bastion World Quests" guide.
|tip Loot treasures or kill rare enemies across Bastion.
|tip You can also kill bosses in the "Spires of Ascension" and "Necrotic Wake" dungeons using their respective dungeon guides.
|only if haveq(60426) or completedq(60426)
step
label "Defend_Maldraxxus"
Defend Maldraxxus |q 60429/1
|tip You can accomplish this several ways.
|tip Complete world quests in Maldraxxus using the "Maldraxxus World Quests" guide.
|tip Loot treasures or kill rare enemies across Maldraxxus.
|tip You can also kill bosses in the "Plaguefall" and "Theatre of Pain" dungeons using their respective dungeon guides.
|only if haveq(60429) or completedq(60429)
step
label "Defend_Revendreth"
Defend Revendreth |q 60433/1
|tip You can accomplish this several ways.
|tip Complete world quests in Revendreth using the "Revendreth World Quests" guide.
|tip Loot treasures or kill rare enemies across Revendreth.
|tip You can also kill bosses in the "Sanguine Depths" and "Halls of Atonement" dungeons using their respective dungeon guides.
|only if haveq(60433) or completedq(60433)
step
label "Collect_4_Gildenite"
collect 3 Gildenite##179321 |q 60363/1
|tip This ore drops from rare spawns and treasures all over Bastion.
|only if haveq(60363) or completedq(60363)
step
label "Collect_4_Bonemetal"
collect 3 Bonemetal##179317 |q 60376/1
|tip This drops from rare spawns and treasures all over Maldraxxus.
|only if haveq(60376) or completedq(60376)
step
label "Collect_4_Sorrowvine"
collect 3 Sorrowvine##179318 |q 60379/1
|tip Loot treasures or kill rare enemies across Revendreth.
|only if haveq(60379) or completedq(60379)
step
label "Collect_4_Wealdwood"
collect 3 Wealdwood##179320 |q 60371/1
|tip Loot treasures or kill rare enemies across Ardenweald.
|only if haveq(60371) or completedq(60371)
step
label "Collect_Coins_of_Brokerage"
collect 3 Coin of Brokerage##179327 |q 60416/1
|tip These coins drop from rare spawns and treasures all over Shadowlands zones.
|only if haveq(60416) or completedq(60416)
stickystart "Defeat_3_Rare_or_Special_Encounter_Bosses"
stickystart "Collect_150_Soul_Embers_from_Torghast"
step
kill Stone Prison##176145+
|tip They look like pyramids made of rocks on the ground around this area.
click Soul Cage+
|tip They look like tall grey metal cages on the ground around this area.
|tip They will appear on your minimap as white ghost icons.
click Soul+
|tip They look like white spirits that float out of the cages and stone prisons.
|tip You can also click Souls that other players free.
Rescue #20# Lost Souls in the Maw |q 62866/1 |goto The Maw/0 39.52,46.74
|only if haveq(62866) or completedq(62866)
step
label "Defeat_3_Rare_or_Special_Encounter_Bosses"
Defeat #3# Rare or Special Encounter Bosses |q 60455/1
|tip Encounters periodically show on the map in The Maw.
|tip The Wrath of the Jailer and Hunt events don't count.
|tip Any rare with a skull or star minimap icon counts.
|only if haveq(60455) or completedq(60455)
step
label "Collect_150_Soul_Embers_from_Torghast"
Gather #150# Anima Embers from Torghast, Tower of the Damned |q 60459/1
|tip Run Torghast and collect them from mobs throughout the tower.
|only if haveq(60459) or completedq(60459)
step
talk Sabbath Nightshade##167207
turnin Storm the Maw##60455 |goto Seat of the Primus/0 43.18,47.80 |only if readyq(60455) or completedq(60455)
turnin Anima Salvage##60459 |goto Seat of the Primus/0 43.18,47.80 |only if readyq(60459) or completedq(60459)
|only if readyq(60455,60459) or completedq(60455,60459)
step
talk Osbourne Black##167748
turnin Return Lost Souls##62866 |goto Seat of the Primus/0 46.66,42.38
|only if readyq(62866) or completedq(62866)
step
talk Arkadia Moa##161909
turnin Replenish the Reservoir##61983 |goto Seat of the Primus/0 52.74,38.28
|only if readyq(61983) or completedq(61983)
step
talk Grandmaster Vole##167208
turnin Challenges in Ardenweald##60440 |goto Seat of the Primus/0 56.62,43.92 |only if readyq(60440) or completedq(60440)
turnin Challenges in Bastion##60443 |goto Seat of the Primus/0 56.62,43.92 |only if readyq(60443) or completedq(60443)
turnin Challenges in Maldraxxus##60445 |goto Seat of the Primus/0 56.62,43.92 |only if readyq(60445) or completedq(60445)
turnin Challenges in Revendreth##60449 |goto Seat of the Primus/0 56.62,43.92 |only if readyq(60449) or completedq(60449)
|only if readyq(60440,60443,60445,60449) or completedq(60440,60443,60445,60449)
step
talk Niall Kugal##167209
turnin Training in Ardenweald##60402 |goto Seat of the Primus/0 51.82,28.76 |only if readyq(60402) or completedq(60402)
turnin Training in Bastion##60405 |goto Seat of the Primus/0 51.82,28.76 |only if readyq(60405) or completedq(60405)
turnin Training in Revendreth##60411 |goto Seat of the Primus/0 51.82,28.76 |only if readyq(60411) or completedq(60411)
turnin Training Our Forces##60408 |goto Seat of the Primus/0 51.82,28.76 |only if readyq(60408) or completedq(60408)
|only if readyq(60402,60405,60411,60408) or completedq(60402,60405,60411,60408)
step
talk Tabulator Killham##167210
turnin A Call to Ardenweald##60423 |goto Seat of the Primus/0 59.97,43.53 |only if readyq(60423) or completedq(60423)
turnin A Call to Bastion##60426 |goto Seat of the Primus/0 59.97,43.53 |only if readyq(60426) or completedq(60426)
turnin A Call to Revendreth##60433 |goto Seat of the Primus/0 59.97,43.53 |only if readyq(60433) or completedq(60433)
turnin Troubles at Home##60429 |goto Seat of the Primus/0 59.97,43.53 |only if readyq(60429) or completedq(60429)
|only if readyq(60423,60426,60433,60429) or completedq(60423,60426,60433,60429)
step
talk Gatherer Zaya##167201
turnin A Wealth of Wealdwood##60371 |goto Seat of the Primus/0 46.69,38.51 |only if readyq(60371) or completedq(60371)
turnin A Source of Sorrowvine##60379 |goto Seat of the Primus/0 46.69,38.51 |only if readyq(60379) or completedq(60379)
turnin Gildenite Grab##60363 |goto Seat of the Primus/0 46.69,38.51 |only if readyq(60363) or completedq(60363)
turnin Rare Resources##60416 |goto Seat of the Primus/0 46.69,38.51 |only if readyq(60416) or completedq(60416)
turnin Bonemetal Bonanza##60376 |goto Seat of the Primus/0 46.69,38.51 |only if readyq(60376) or completedq(60376)
|only if readyq(60371,60379,60363,60416,60376) or completedq(60371,60379,60363,60416,60376)
step
talk Sergeant Romark##158339
turnin Aiding Ardenweald##60390 |goto Seat of the Primus/0 47.62,28.72 |only if readyq(60390) or completedq(60390)
turnin Aiding Bastion##60393 |goto Seat of the Primus/0 47.62,28.72 |only if readyq(60393) or completedq(60393)
turnin Aiding Maldraxxus##60396 |goto Seat of the Primus/0 47.62,28.72 |only if readyq(60396) or completedq(60396)
turnin Aiding Revendreth##60398 |goto Seat of the Primus/0 47.62,28.72 |only if readyq(60398) or completedq(60398)
|only if readyq(60390,60393,60396,60398) or completedq(60390,60393,60396,60398)
step
talk Yondare Hex##167205
turnin Anima Appeal##60464 |goto Seat of the Primus/0 48.95,35.95
|only if readyq(60464) or completedq(60464)
stickystart "Collect_1000_Anima"
step
talk Arkadia Moa##161909
|tip Click the "Deposit" button to deposit anima from your bags.
Deposit #600# Anima in the Anima Reservoir |q 60464/1 |goto Seat of the Primus/0 52.71,38.30 |or
|tip Gather anima by completing world quests, killing rare enemies, and looting treasures across the Shadowlands.
'|complete countcompletedq(60459,60440,60443,60445,60449,60402,60405,60411,60408,60423,60426,60376,60433,60429,60371,60379,60416,60363,60390,60393,60396,60398,60464,60455) < 3 |next "Begin_Dailies" |or
|only if haveq(60464) or completedq(60464)
step
talk Yondare Hex##167205
turnin Anima Appeal##60464 |goto Seat of the Primus/0 48.95,35.95
|only if readyq(60464) or completedq(60464)
step
label "Collect_1000_Anima"
Collect #1000# Anima |q 61983/1 |or
|tip Gather anima by completing world quests, killing rare enemies, and looting treasures across the Shadowlands. |notinsticky
'|complete countcompletedq(60459,60440,60443,60445,60449,60402,60405,60411,60408,60423,60426,60376,60433,60429,60371,60379,60416,60363,60390,60393,60396,60398,60464,60455) < 3 |next "Begin_Dailies" |or
|only if haveq(61983) or completedq(61983)
step
talk Arkadia Moa##161909
turnin Replenish the Reservoir##61983 |goto Seat of the Primus/0 52.71,38.30
|only if readyq(61983) or completedq(61983)
step
You have completed all covenant daily quests
|tip This guide will reset when more become available.
'|complete countcompletedq(60459,60440,60443,60445,60449,60402,60405,60411,60408,60423,60426,60376,60433,60429,60371,60379,60416,60363,60390,60393,60396,60398,60464,60455) < 3 |next "Begin_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Shadowlands (50-60)\\Night Fae Covenant\\Night Fae Daily Quests",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the various daily quests for the Night Fae Covenant.",
condition_suggested=function() return level >= 60 and completedq(62899) end,
patch='90001',
},[[
step
label "Begin_Dailies"
talk Elder Shaper An'wyn##168513
accept A Wealth of Wealdwood##60369 |goto Ardenweald/0 43.56,52.43 |only if questactive(60369) or completedq(60369)
accept Gildenite Grab##60364 |goto Ardenweald/0 43.56,52.43 |only if questactive(60364) or completedq(60364)
accept A Source of Sorrowvine##60373 |goto Ardenweald/0 43.56,52.43 |only if questactive(60373) or completedq(60373)
accept Rare Resources##60414 |goto Ardenweald/0 43.56,52.43 |only if questactive(60414) or completedq(60414)
accept Bonemetal Bonanza##60374 |goto Ardenweald/0 43.56,52.43 |only if questactive(60374) or completedq(60374)
|only if questactive(60369,60364,60373,60414,60374) or completedq(60369,60364,60373,60414,60374)
step
talk Lord Herne##158544
|tip He walks around this area.
accept Training in Bastion##60387 |goto Heart of the Forest/0 39.66,71.34 |only if questactive(60387) or completedq(60387)
accept Training in Maldraxxus##60386 |goto Heart of the Forest/0 39.66,71.34 |only if questactive(60386) or completedq(60386)
accept Training in Revendreth##60385 |goto Heart of the Forest/0 39.66,71.34 |only if questactive(60385) or completedq(60385)
accept Training Our Forces##60388 |goto Heart of the Forest/0 39.66,71.34 |only if questactive(60388) or completedq(60388)
|only if questactive(60387,60386,60385,60388) or completedq(60387,60386,60385,60388)
step
talk Sesselie##167196
|tip Downstairs inside the tree.
accept Replenish the Reservoir##61984 |goto Heart of the Forest/1 50.62,62.62 |only if not completedq(61984)
accept Anima Appeal##60462 |goto Heart of the Forest/1 50.62,62.62 |only if questactive(60462) or completedq(60462)
|only if questactive(60462) or completedq(60462,61984) or not completedq(61984)
step
talk Flutterby##158553
accept Return Lost Souls##62860 |goto Heart of the Forest/0 33.91,43.49
accept Anima Salvage##60457 |goto Heart of the Forest/0 33.91,43.49 |only if questactive(60457) or completedq(60457)
accept Storm the Maw##60452 |goto Heart of the Forest/0 33.91,43.49 |only if questactive(60452) or completedq(60452)
|only if questactive(62860,60457,60452) or completedq(62860,60457,60452)
step
talk Yanlar##167206
accept Challenges in Ardenweald##60438 |goto 36.84,25.12 |only if questactive(60438) or completedq(60438)
accept Challenges in Bastion##60437 |goto 36.84,25.12 |only if questactive(60437) or completedq(60437)
accept Challenges in Maldraxxus##60436 |goto 36.84,25.12 |only if questactive(60436) or completedq(60436)
accept Challenges in Revendreth##60435 |goto 36.84,25.12 |only if questactive(60435) or completedq(60435)
|only if questactive(60438,60437,60436,60435) or completedq(60438,60437,60436,60435)
step
talk Featherlight##167193
accept A Call to Revendreth##60421 |goto 60.04,31.87 |only if questactive(60421) or completedq(60421)
accept A Call to Bastion##60418 |goto 60.04,31.87 |only if questactive(60418) or completedq(60418)
accept A Call to Maldraxxus##60420 |goto 60.04,31.87 |only if questactive(60420) or completedq(60420)
accept Troubles at Home##60419 |goto 60.04,31.87 |only if questactive(60419) or completedq(60419)
|only if questactive(60421,60418,60420,60419) or completedq(60421,60418,60420,60419)
step
talk Blodwyn##167195
accept Aiding Ardenweald##60381 |goto 53.81,5.98 |only if questactive(60381) or completedq(60381)
accept Aiding Bastion##60384 |goto 53.81,5.98 |only if questactive(60384) or completedq(60384)
accept Aiding Maldraxxus##60383 |goto 53.81,5.98 |only if questactive(60383) or completedq(60383)
accept Aiding Revendreth##60382 |goto 53.81,5.98 |only if questactive(60382) or completedq(60382)
|only if questactive(60381,60384,60383,60382) or completedq(60381,60384,60383,60382)
stickystart "Complete_World_Quests_in_Ardenweald_with_Trainee"
stickystart "Complete_World_Quests_in_Ardenweald"
stickystart "Defeat_the_Powerful_Foes_of_Ardenweald"
stickystart "Defend_Ardenweald"
stickystart "Collect_4_Gildenite"
stickystart "Collect_4_Bonemetal"
stickystart "Collect_4_Sorrowvine"
stickystart "Collect_4_Wealdwood"
stickystart "Collect_Coins_of_Brokerage"
stickystart "Complete_World_Quests_in_Maldraxxus_with_Trainee"
stickystart "Complete_World_Quests_in_Revendreth_with_Trainee"
stickystart "Complete_World_Quests_in_Bastion"
stickystart "Complete_World_Quests_in_Maldraxxus"
stickystart "Complete_World_Quests_in_Revendreth"
stickystart "Defeat_the_Powerful_Foes_of_Bastion"
stickystart "Defeat_the_Powerful_Foes_of_Maldraxxus"
stickystart "Defeat_the_Powerful_Foes_of_Revendreth"
stickystart "Defend_Bastion"
stickystart "Defend_Maldraxxus"
stickystart "Defend_Revendreth"
step
label "Complete_World_Quests_in_Bastion_with_Trainee"
Complete #3# World Quests in Bastion with Your Trainee |q 60387/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Bastion map to load the guide for it.
|only if haveq(60387) or completedq(60387)
step
label "Complete_World_Quests_in_Maldraxxus_with_Trainee"
Complete #3# World Quests in Maldraxxus with Your Trainee |q 60386/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Maldraxxus map to load the guide for it.
|only if haveq(60386) or completedq(60386)
step
label "Complete_World_Quests_in_Revendreth_with_Trainee"
Complete #3# World Quests in Revendreth with Your Trainee |q 60385/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Revendreth map to load the guide for it.
|only if haveq(60385) or completedq(60385)
step
label "Complete_World_Quests_in_Ardenweald_with_Trainee"
Complete #3# World Quests in Ardenweald with Your Trainee |q 60388/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Ardenweald map to load the guide for it.
|only if haveq(60388) or completedq(60388)
step
label "Complete_World_Quests_in_Ardenweald"
Complete #3# World Quests in Ardenweald |q 60381/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Ardenweald map to load the guide for it.
|only if haveq(60381) or completedq(60381)
step
label "Complete_World_Quests_in_Bastion"
Complete #3# World Quests in Bastion |q 60384/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Bastion map to load the guide for it.
|only if haveq(60384) or completedq(60384)
step
label "Complete_World_Quests_in_Maldraxxus"
Complete #3# World Quests in Maldraxxus |q 60383/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Maldraxxus map to load the guide for it.
|only if haveq(60383) or completedq(60383)
step
label "Complete_World_Quests_in_Revendreth"
Complete #3# World Quests in Revendreth |q 60382/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Revendreth map to load the guide for it.
|only if haveq(60382) or completedq(60382)
step
label "Defeat_the_Powerful_Foes_of_Ardenweald"
Defeat the Powerful Foes of Ardenweald |q 60438/1
|tip Complete the "Terrors in Tirna Scithe" world quest in Ardenweald using the world quest guide if it is active.
|tip Alternatively, you may also complete the "Mists of Tirna Scithe" or "De Other Side" dungeons using their respective dungeon guides.
|tip Completing any one of these will fulfill the quest requirements.
|only if haveq(60438) or completedq(60438)
step
label "Defeat_the_Powerful_Foes_of_Bastion"
Defeat the Powerful Foes of Bastion |q 60437/1
|tip Complete the "Disloyal Denizens" world quest in Bastion using the world quest guide if it is active.
|tip Alternatively, you may also complete the "Spires of Ascension Dungeon" or "Necrotic Wake" dungeons using their respective dungeon guides.
|tip Completing any one of these will fulfill the quest requirements.
|only if haveq(60437) or completedq(60437)
step
label "Defeat_the_Powerful_Foes_of_Maldraxxus"
Defeat the Powerful Foes of Maldraxxus |q 60436/1
|tip Complete the "Chosen Champions" world quest in Maldraxxus using the world quest guide if it is active.
|tip Alternatively, you may also complete the "Theater of Pain" or "Plaguefall" dungeons using their respective dungeon guides.
|tip Completing any one of these will fulfill the quest requirements.
|only if haveq(60436) or completedq(60436)
step
label "Defeat_the_Powerful_Foes_of_Revendreth"
Defeat the Powerful Foes of Revendreth |q 60435/1
|tip Complete the "Destroy the Dominant" world quest in Revendreth using the world quest guide if it is active.
|tip Alternatively, you may also complete the "Sanguine Depths" or "Halls of Atonement" dungeons using their respective dungeon guides.
|tip Completing any one of these will fulfill the quest requirements.
|only if haveq(60435) or completedq(60435)
step
label "Defend_Ardenweald"
Defend Ardenweald |q 60419/1
|tip You can accomplish this several ways.
|tip Complete world quests in Ardenweald using the "Ardenweald World Quests" guide.
|tip Loot treasures or kill rare enemies across Ardenweald.
|tip You can also kill bosses in the "Mists of Tirna Scithe" and "De Other Side" dungeons using their respective dungeon guides.
|only if haveq(60419) or completedq(60419)
step
label "Defend_Bastion"
Defend Bastion |q 60418/1
|tip You can accomplish this several ways.
|tip Complete world quests in Bastion using the "Bastion World Quests" guide.
|tip Loot treasures or kill rare enemies across Bastion.
|tip You can also kill bosses in the "Spires of Ascension" and "Necrotic Wake" dungeons using their respective dungeon guides.
|only if haveq(60418) or completedq(60418)
step
label "Defend_Maldraxxus"
Defend Maldraxxus |q 60420/1
|tip You can accomplish this several ways.
|tip Complete world quests in Maldraxxus using the "Maldraxxus World Quests" guide.
|tip Loot treasures or kill rare enemies across Maldraxxus.
|tip You can also kill bosses in the "Plaguefall" and "Theatre of Pain" dungeons using their respective dungeon guides.
|only if haveq(60420) or completedq(60420)
step
label "Defend_Revendreth"
Defend Revendreth |q 60421/1
|tip You can accomplish this several ways.
|tip Complete world quests in Revendreth using the "Revendreth World Quests" guide.
|tip Loot treasures or kill rare enemies across Revendreth.
|tip You can also kill bosses in the "Sanguine Depths" and "Halls of Atonement" dungeons using their respective dungeon guides.
|only if haveq(60421) or completedq(60421)
step
label "Collect_4_Gildenite"
collect 3 Gildenite##179321 |q 60364/1
|tip This ore drops from rare spawns and treasures all over Bastion.
|only if haveq(60364) or completedq(60364)
step
label "Collect_4_Bonemetal"
collect 3 Bonemetal##179317 |q 60374/1
|tip This drops from rare spawns and treasures all over Maldraxxus.
|only if haveq(60374) or completedq(60374)
step
label "Collect_4_Sorrowvine"
collect 3 Sorrowvine##179318 |q 60373/1
|tip Loot treasures or kill rare enemies across Revendreth.
|only if haveq(60373) or completedq(60373)
step
label "Collect_4_Wealdwood"
collect 3 Wealdwood##179320 |q 60369/1
|tip Loot treasures or kill rare enemies across Ardenweald.
|only if haveq(60369) or completedq(60369)
step
label "Collect_Coins_of_Brokerage"
collect 3 Coin of Brokerage##179327 |q 60414/1
|tip These coins drop from rare spawns and treasures all over Shadowlands zones.
|only if haveq(60414) or completedq(60414)
stickystart "Collect_150_Soul_Embers_from_Torghast"
stickystart "Defeat_3_Rare_or_Special_Encounter_Bosses"
step
kill Stone Prison##176145+
|tip They look like pyramids made of rocks on the ground around this area.
click Soul Cage+
|tip They look like tall grey metal cages on the ground around this area.
|tip They will appear on your minimap as white ghost icons.
click Soul+
|tip They look like white spirits that float out of the cages and stone prisons.
|tip You can also click Souls that other players free.
Rescue #20# Lost Souls from the Maw |q 62860/1 |goto The Maw/0 39.52,46.74
|only if haveq(62860) or completedq(62860)
step
label "Collect_150_Soul_Embers_from_Torghast"
Gather #150# Anima Embers from Torghast, Tower of the Damned |q 60457/1
|tip Run Torghast and collect them from mobs throughout the tower.
|only if haveq(60457) or completedq(60457)
step
label "Defeat_3_Rare_or_Special_Encounter_Bosses"
Defeat #3# Rare or Special Encounter Bosses |q 60452/1
|tip Encounters periodically show on the map in The Maw.
|tip The Wrath of the Jailer and Hunt events don't count.
|tip Any rare with a skull or star minimap icon counts.
|only if haveq(60452) or completedq(60452)
step
talk Blodwyn##167195
turnin Aiding Ardenweald##60381 |goto Heart of the Forest/0 53.81,5.98 |only if readyq(60381) or completedq(60381)
turnin Aiding Bastion##60384 |goto 53.81,5.98 |only if readyq(60384) or completedq(60384)
turnin Aiding Maldraxxus##60383 |goto 53.81,5.98 |only if readyq(60383) or completedq(60383)
turnin Aiding Revendreth##60382 |goto 53.81,5.98 |only if readyq(60382) or completedq(60382)
|only if readyq(60381,60384,60383,60382) or completedq(60381,60384,60383,60382)
step
talk Featherlight##167193
turnin A Call to Revendreth##60421 |goto 60.04,31.87 |only if readyq(60421) or completedq(60421)
turnin A Call to Bastion##60418 |goto 60.04,31.87 |only if readyq(60418) or completedq(60418)
turnin A Call to Maldraxxus##60420 |goto 60.04,31.87 |only if readyq(60420) or completedq(60420)
turnin Troubles at Home##60419 |goto 60.04,31.87 |only if readyq(60419) or completedq(60419)
|only if readyq(60421,60418,60420,60419) or completedq(60421,60418,60420,60419)
step
talk Yanlar##167206
turnin Challenges in Ardenweald##60438 |goto 36.84,25.12 |only if readyq(60438) or completedq(60438)
turnin Challenges in Bastion##60437 |goto 36.84,25.12 |only if readyq(60437) or completedq(60437)
turnin Challenges in Maldraxxus##60436 |goto 36.84,25.12 |only if readyq(60436) or completedq(60436)
turnin Challenges in Revendreth##60435 |goto 36.84,25.12 |only if readyq(60435) or completedq(60435)
|only if readyq(60438,60437,60436,60435) or completedq(60438,60437,60436,60435)
step
talk Flutterby##158553
turnin Return Lost Souls##62860 |goto 33.91,43.49 |only if readyq(62860) or completedq(62860)
turnin Anima Salvage##60457 |goto 33.91,43.49 |only if readyq(60457) or completedq(60457)
turnin Storm the Maw##60452 |goto 33.91,43.49 |only if readyq(60452) or completedq(60452)
|only if readyq(62860,60457,60452) or completedq(62860,60457,60452)
step
talk Lord Herne##158544
|tip He walks around this area.
turnin Training in Bastion##60387 |goto 39.66,71.34 |only if readyq(60387) or completedq(60387)
turnin Training in Maldraxxus##60386 |goto 39.66,71.34 |only if readyq(60386) or completedq(60386)
turnin Training in Revendreth##60385 |goto 39.66,71.34 |only if readyq(60385) or completedq(60385)
turnin Training Our Forces##60388 |goto 39.66,71.34 |only if readyq(60388) or completedq(60388)
|only if readyq(60387,60386,60385,60388) or completedq(60387,60386,60385,60388)
step
talk Elder Shaper An'wyn##168513
turnin A Wealth of Wealdwood##60369 |goto Ardenweald/0 43.56,52.43 |only if readyq(60369) or completedq(60369)
turnin Gildenite Grab##60364 |goto 43.56,52.43 |only if readyq(60364) or completedq(60364)
turnin A Source of Sorrowvine##60373 |goto 43.56,52.43 |only if readyq(60373) or completedq(60373)
turnin Rare Resources##60414 |goto 43.56,52.43 |only if readyq(60414) or completedq(60414)
turnin Bonemetal Bonanza##60374 |goto 43.56,52.43 |only if readyq(60374) or completedq(60374)
|only if readyq(60369,60364,60373,60414,60374) or completedq(60369,60364,60373,60414,60374)
step
talk Sesselie##167196
|tip Downstairs inside the tree.
turnin Anima Appeal##60462 |goto Heart of the Forest/1 50.62,62.62 |only if readyq(60462) or completedq(60462)
turnin Replenish the Reservoir##61984 |goto Heart of the Forest/1 50.60,62.63 |only if readyq(61984) or completedq(61984)
|only if readyq(60462) or completedq(60462)
stickystart "Collect_1000_Anima"
step
talk Zayhad, The Builder##165702
Tell it _"Show me the Sanctum."_
|tip Click the "Deposit" button to deposit anima from your bags.
Deposit #600# Anima in the Anima Reservoir |q 60462/1 |goto Heart of the Forest/1 38.93,54.72 |or
|tip Gather anima by completing world quests, killing rare enemies, and looting treasures across the Shadowlands.
'|complete countcompletedq(60457,60369,60373,60414,60364,60438,60437,60436,60435,60387,60386,60374,60385,60388,60421,60418,60420,60419,60381,60384,60383,60382,60462,60452) < 3 |next "Begin_Dailies" |or
|only if haveq(60462) or completedq(60462)
step
talk Sesselie##167196
|tip Downstairs inside the tree.
turnin Anima Appeal##60462 |goto Heart of the Forest/1 50.62,62.62
|only if readyq(60462) or completedq(60462)
step
label "Collect_1000_Anima"
Collect #1000# Anima |q 61984/1 |or
|tip Gather anima by completing world quests, killing rare enemies, and looting treasures across the Shadowlands. |notinsticky
'|complete countcompletedq(60457,60369,60373,60414,60364,60438,60437,60436,60435,60387,60386,60374,60385,60388,60421,60418,60420,60419,60381,60384,60383,60382,60462,60452) < 3 |next "Begin_Dailies" |or
|only if haveq(61984) or completedq(61984)
step
talk Sesselie##167196
|tip Downstairs inside the tree.
turnin Replenish the Reservoir##61984 |goto Heart of the Forest/1 50.60,62.63
|only if readyq(61984) or completedq(61984)
step
You have completed all covenant daily quests
|tip This guide will reset when more become available.
'|complete countcompletedq(60457,60369,60373,60414,60364,60438,60437,60436,60435,60387,60386,60374,60385,60388,60421,60418,60420,60419,60381,60384,60383,60382,60462,60452) < 3 |next "Begin_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Shadowlands (50-60)\\Night Fae Covenant\\Fungal Terminus Daily Quests",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing Fungal Terminus daily quests unlocked "..
"by upgrading your covenant transport network.",
condition_suggested=function() return level >= 60 end,
},[[
step
label "Begin_Dailies"
talk Marasmius##167455
accept Hyphae Patrol: Eventide Grove##62614 |goto Fungal Terminus/0 50.75,53.29 |only if questpossible |or
accept Hyphae Patrol: Gossamer Cliffs##62615 |goto 50.75,53.29 |only if questpossible |or
accept Hyphae Patrol: Heartwood Grove##62611 |goto 50.75,53.29 |only if questpossible |or
accept Hyphae Patrol: The Stalks##62610 |goto 50.75,53.29 |only if questpossible |or
accept A Taste of Tirna Noch##60175 |goto 50.75,53.29 |only if questpossible |or
accept Glittering Gritty Goodness##62607 |goto 50.75,53.29 |only if questpossible |or
accept A Royal Treat##62608 |goto 50.75,53.29 |only if questpossible |or
accept A Blackthorn Blend##62606 |goto 50.75,53.29 |only if questpossible |or
Accept the Daily Quest |complete false |goto 50.75,53.29 |or
step
talk Marasmius##167455
accept Into the Unknown##60153 |goto 50.75,53.29 |only if questpossible |or
accept Into the Unknown##62296 |goto 50.75,53.29 |only if questpossible |or
accept Into the Unknown##62382 |goto 50.75,53.29 |only if questpossible |or
accept Into the Unknown##62453 |goto 50.75,53.29 |only if questpossible |or
Accept the Daily Quest |complete false |goto 50.75,53.29 |or
|only if covenantfeature("Transport Network") >= 2
step
talk Marasmius##167455
accept Go Beyond!##62459 |goto 50.75,53.29 |only if questpossible |or
accept Go Beyond!##62400 |goto 50.75,53.29 |only if questpossible |or
accept Go Beyond!##62417 |goto 50.75,53.29 |only if questpossible |or
accept Go Beyond!##62466 |goto 50.75,53.29 |only if questpossible |or
accept Go Beyond!##60188 |goto 50.75,53.29 |only if questpossible |or
accept Go Beyond!##62263 |goto 50.75,53.29 |only if questpossible |or
accept Go Beyond!##62465 |goto 50.75,53.29 |only if questpossible |or
Accept the Daily Quest |complete false |goto 50.75,53.29 |or
|only if covenantfeature("Transport Network") == 3
step
talk Marasmius##167455
Tell it _"Let's ride."_
Speak to Marasmius |invehicle |goto 50.75,53.29 |q 62615
|only if (haveq(62615) or completedq(62615)) and not readyq(62615)
step
talk Marasmius##167455
Tell it _"Let's ride."_
Speak to Marasmius |invehicle |goto 50.75,53.29 |q 62611
|only if (haveq(62611) or completedq(62611)) and not readyq(62611)
step
talk Marasmius##167455
Tell it _"Let's ride."_
Speak to Marasmius |invehicle |goto 50.75,53.29 |q 62614
|only if (haveq(62614) or completedq(62614)) and not readyq(62614)
step
talk Marasmius##167455
Tell it _"Let's ride."_
Speak to Marasmius |invehicle |goto 50.75,53.29 |q 62610
|only if (haveq(62610) or completedq(62610)) and not readyq(62610)
step
Kill enemies around this area
Slay #30# Possessed Invaders |q 62614/2 |goto Ardenweald/0 45.89,73.33 |notravel
|tip Use the abilities on your action bar.
|only if haveq(62614) or completedq(62614)
step
Kill enemies around this area
Slay #30# Blackthorn Assailants |q 62615/2 |goto Ardenweald/0 36.69,28.30 |notravel
|tip Use the abilities on your action bar.
|only if haveq(62615) or completedq(62615)
step
Kill enemies around this area
Slay #30# Possessed Desecrators |q 62611/2 |goto 69.55,23.41 |notravel
|tip Use the abilities on your action bar.
|only if haveq(62611) or completedq(62611)
step
Kill enemies around this area
Slay #30# Masked Invaders |q 62610/2 |goto Ardenweald/0 30.72,35.47 |notravel
|tip Use the abilities on your action bar.
|only if haveq(62610) or completedq(62610)
step
Use the _"Traverse to the Unknown"_ ability |goto Fungal Terminus/0 60.27,52.90
|tip It appears as a button on-screen.
Travel to the Unknown |goto Ardenweald/0 47.12,55.72 < 30 |c |noway |q 60153
|only if haveq(60153) or completedq(60153)
step
Approach the Young Matriarch |q 60153/1 |goto Ardenweald/0 47.12,55.72
|only if haveq(60153) or completedq(60153)
stickystart "Destroy_Pulsing_Gorm_Eggs"
step
kill Young Matriarch##161971 |q 60153/2 |goto Ardenweald/0 47.12,54.89
|only if haveq(60153) or completedq(60153)
step
label "Destroy_Pulsing_Gorm_Eggs"
click Pulsing Gorm Eggs
|tip They look like large wiggling eggs on the ground inside the cave.
Destroy #6# Pulsing Gorm Eggs |q 60153/3 |goto 47.12,54.89
|only if haveq(60153) or completedq(60153)
step
Use the _"Traverse to The Ring"_ ability |goto 47.12,55.65
|tip It appears as a button on-screen.
Return to The Ring |goto Fungal Terminus/0 65.75,73.60 < 100 |c |noway |q 60153
|only if haveq(60153) or completedq(60153)
step
Use the _"Traverse to the Unknown"_ ability
|tip It appears as a button on-screen.
Travel to the Unknown |q 62296/1 |goto Fungal Terminus/0 60.27,52.90
|only if haveq(62296) or completedq(62296)
step
kill 20 Scouring Dustlet##173766 |q 62296/2 |goto The Root Cellar/0 56.52,42.26
|only if haveq(62296) or completedq(62296)
step
Use the _"Traverse to The Ring"_ ability |goto 50.14,73.20
|tip It appears as a button on-screen.
Return to The Ring |goto Fungal Terminus/0 65.75,73.60 < 100 |c |noway |q 62296
|only if haveq(62296) or completedq(62296)
step
Use the _"Traverse to the Unknown"_ ability
|tip It appears as a button on-screen.
Travel to the Unknown |q 62382/1 |goto Fungal Terminus/0 60.27,52.90
|only if haveq(62382) or completedq(62382)
step
kill Bagoom##174131 |q 62382/2 |goto The Root Cellar/1 54.88,31.86
|tip Inside the cave.
|only if haveq(62382) or completedq(62382)
step
Use the _"Traverse to The Ring"_ ability |goto 48.25,72.90
|tip It appears as a button on-screen.
Return to The Ring |goto Fungal Terminus/0 65.75,73.60 < 100 |c |noway |q 62382
|only if haveq(62382) or completedq(62382)
step
Use the _"Traverse to the Unknown"_ ability
|tip It appears as a button on-screen.
Travel to the Unknown |q 62453/1 |goto Fungal Terminus/0 60.27,52.90
|only if haveq(62453) or completedq(62453)
step
clicknpc Squeezums##174362
collect 1 Gorm "Juice"##183961 |goto The Root Cellar/3 48.31,59.54 |q 62453
|only if haveq(62453) or completedq(62453)
step
talk Daffodil##174365
Choose the following options:
_"How can I help?"_
_"Its three maws agog?"_
_"Before his next quest!"_
_"Oh night fae in unity?"_
Relax! |q 62453/2 |goto 43.73,32.82 |count 1
|only if haveq(62453) or completedq(62453)
step
click Harp
|tip Stand still until you finish playing.
Relax! |q 62453/2 |goto The Root Cellar/3 51.50,29.92 |count 2
|only if haveq(62453) or completedq(62453)
step
talk Mixy Mak##174371
Choose the following options:
_"Can you make me something special??"_
_"Here's your gorm juice. This won't kill me will it?"_
Relax! |q 62453/2 |goto The Root Cellar/3 62.93,32.81 |count 3
|only if haveq(62453) or completedq(62453)
step
Use the _"Traverse to The Ring"_ ability |goto 50.48,76.36
|tip It appears as a button on-screen.
Return to The Ring |goto Fungal Terminus/0 65.75,73.60 < 100 |c |noway |q 62453
|only if haveq(62453) or completedq(62453)
step
click Pile of Loam##350997+
|tip They look like small piles of brown dirt on the ground around this area.
collect 6 Leafy Loam##178215 |q 60175/1 |goto Ardenweald/0 70.81,54.62
|only if haveq(60175) or completedq(60175)
step
click Cracked Vertosol##358528+
|tip They look like piles of loose dirt on the ground around this area.
collect 6 Blackthorn Clay##183840 |q 62606/1 |goto 42.43,32.71
|only if haveq(62606) or completedq(62606)
step
click Shimmering Soil##358526+
|tip They look like pale patches of soil on the ground around this area.
collect 6 Shimmersilt##183836 |q 62607/1 |goto 52.51,61.14
|only if haveq(62607) or completedq(62607)
step
click Rich Topsoil##358527+
|tip They look like small patches of brown soil on the ground around this area.
collect 6 Royal Peat##183837 |q 62608/1 |goto 38.99,57.84
|only if haveq(62608) or completedq(62608)
step
Use the _"Traverse to the Unknown"_ ability
|tip It appears as a button on-screen.
Travel to the Great Unknown |q 62459/1 |goto Fungal Terminus/0 38.81,55.29
|only if haveq(62459) or completedq(62459)
step
use the Moth Net##183725
|tip Use it on Selenia Moths around this area.
|tip They look like tiny moths flying above the ground around this area.
|tip Get close to them to catch them with the net.
Net #8# Selenia Moths |q 62459/2 |goto Ardenweald/0 20.35,37.67
|only if haveq(62459) or completedq(62459)
step
Use the _"Traverse to The Ring"_ ability |goto 19.39,36.72
|tip It appears as a button on-screen.
Return to The Ring |goto Fungal Terminus/0 65.75,73.60 < 100 |c |noway |q 62459
|only if haveq(62459) or completedq(62459)
step
Use the _"Traverse to the Unknown"_ ability
|tip It appears as a button on-screen.
Travel to the Great Unknown |q 62400/1 |goto Fungal Terminus/0 38.81,55.29
|only if haveq(62400) or completedq(62400)
step
click Portal from Thros
|tip They look like large black and blue swirling portals on the ground around this area.
|tip Various glittering objects such as moths and portals will cleanse the pools.
Kill enemies around this area
|tip Use the "Bomblete" ability that appears on-screen to inflict heavy damage.
Cleanse the Faraway Pools |q 62400/2 |goto Ardenweald/0 25.30,74.16
|only if haveq(62400) or completedq(62400)
step
Use the _"Traverse to The Ring"_ ability |goto 26.69,73.68
|tip It appears as a button on-screen.
Return to The Ring |goto Fungal Terminus/0 65.75,73.60 < 100 |c |noway |q 62400
|only if haveq(62400) or completedq(62400)
step
Use the _"Traverse to the Unknown"_ ability
|tip It appears as a button on-screen.
Travel to the Great Unknown |q 62417/1 |goto Fungal Terminus/0 38.81,55.29
|only if haveq(62417) or completedq(62417)
step
click Night Lily+
|tip They look like small blue flowers on the ground around this area.
collect 8 Night Lily##183697 |q 62417/2 |goto Ardenweald/0 49.02,8.34
|only if haveq(62417) or completedq(62417)
step
Use the _"Traverse to The Ring"_ ability |goto 50.92,7.45
|tip It appears as a button on-screen.
Return to The Ring |goto Fungal Terminus/0 65.75,73.60 < 100 |c |noway |q 62417
|only if haveq(62417) or completedq(62417)
step
Use the _"Traverse to the Unknown"_ ability
|tip It appears as a button on-screen.
Travel to the Great Unknown |q 62466/1 |goto Fungal Terminus/0 38.81,55.29
|only if haveq(62466) or completedq(62466)
step
talk Arkelios##173939
Ask it _"How can I help?"_
Speak with Arkelios |q 62466/2 |goto Ardenweald/0 54.25,91.76
|only if haveq(62466) or completedq(62466)
step
click Fear Focus
Find the Fear Focus |q 62466/3 |goto 52.34,90.59
|only if haveq(62466) or completedq(62466)
step
click Sadness Focus
Find the Sadness Focus |q 62466/4 |goto 54.09,89.21
|only if haveq(62466) or completedq(62466)
step
click Acceptance Focus
Find the Acceptance Focus |q 62466/5 |goto 54.52,89.86
|only if haveq(62466) or completedq(62466)
step
click Fear Focus
Place the Place the Fear Focus |q 62466/6 |goto 54.18,91.73
|only if haveq(62466) or completedq(62466)
step
click Sadness Focus
Place the Sadness Focus |q 62466/7 |goto 54.17,91.78
|only if haveq(62466) or completedq(62466)
step
click Acceptance Focus
Place the Acceptance Focus |q 62466/8 |goto 54.17,91.83
|only if haveq(62466) or completedq(62466)
step
Use the _"Traverse to The Ring"_ ability |goto 54.21,93.66
|tip It appears as a button on-screen.
Return to The Ring |goto Fungal Terminus/0 65.75,73.60 < 100 |c |noway |q 62466
|only if haveq(62466) or completedq(62466)
step
Use the _"Traverse to the Unknown"_ ability
|tip It appears as a button on-screen.
Travel to the Great Unknown |q 60188/1 |goto Fungal Terminus/0 38.81,55.29
|only if haveq(60188) or completedq(60188)
step
click Discarded Harp##351425
collect Discarded Harp##178464 |goto Ardenweald/0 18.62,39.89 |q 60188
|only if haveq(60188) or completedq(60188)
step
use Discarded Harp##178464
Soothe the Lonely Matriarch |q 60188/2 |goto 18.11,37.65
|only if haveq(60188) or completedq(60188)
step
click Very Large Silk Bundle##351427
collect Giant Silk Bundle##178465 |q 60188/3 |goto 18.27,37.60
|only if haveq(60188) or completedq(60188)
step
Use the _"Traverse to The Ring"_ ability |goto 19.39,36.72
|tip It appears as a button on-screen.
Return to The Ring |goto Fungal Terminus/0 65.75,73.60 < 100 |c |noway |q 60188
|only if haveq(60188) or completedq(60188)
step
Use the _"Traverse to the Unknown"_ ability
|tip It appears as a button on-screen.
Travel to the Great Unknown |q 62263/1 |goto Fungal Terminus/0 38.81,55.29
|only if haveq(62263) or completedq(62263)
step
talk Arkelios##173939
Ask it _"How can I help?"_
Speak with Arkelios |q 62263/2 |goto Ardenweald/0 54.25,91.76
|only if haveq(62263) or completedq(62263)
step
click Compassion Focus
Find the Compassion Focus |q 62263/3 |goto 52.97,90.60
|only if haveq(62263) or completedq(62263)
step
click Forgiveness Focus
Find the Forgiveness Focus |q 62263/4 |goto 53.73,89.38
|only if haveq(62263) or completedq(62263)
step
click Patience Focus
Find the Patience Focus |q 62263/5 |goto 54.53,89.92
|only if haveq(62263) or completedq(62263)
step
click Compassion Focus
Place the Place the Compassion Focus |q 62263/6 |goto 54.18,91.73
|only if haveq(62263) or completedq(62263)
step
click Forgiveness Focus
Place the Forgiveness Focus |q 62263/7 |goto 54.17,91.78
|only if haveq(62263) or completedq(62263)
step
click Patience Focus
Place the Patience Focus |q 62263/8 |goto 54.19,91.84
|only if haveq(62263) or completedq(62263)
step
Use the _"Traverse to The Ring"_ ability |goto 54.21,93.63
|tip It appears as a button on-screen.
Return to The Ring |goto Fungal Terminus/0 65.75,73.60 < 100 |c |noway |q 62263
|only if haveq(62263) or completedq(62263)
step
Use the _"Traverse to the Unknown"_ ability
|tip It appears as a button on-screen.
Travel to the Great Unknown |q 62465/1 |goto Fungal Terminus/0 38.81,55.29
|only if haveq(62465) or completedq(62465)
step
talk Lyri##174417
Ask her _"How can I help?"_
Speak with Lyri |q 62465/2 |goto Ardenweald/0 50.46,7.54
|only if haveq(62465) or completedq(62465)
stickystart "Collect_6_Pilfered_Materials"
step
kill Shifting Dread##174383
collect Artisan's Implement##183792 |q 62465/4 |goto 48.92,9.25
|only if haveq(62465) or completedq(62465)
step
label "Collect_6_Pilfered_Materials"
Kill Stranded enemies around this area
collect 6 Pilfered Materials##183791 |q 62465/3 |goto 49.10,8.32
|only if haveq(62465) or completedq(62465)
step
talk Lyri##174417
Tell her _"Here are your things."_
Return with Lyri |q 62465/5 |goto 50.46,7.54
|only if haveq(62465) or completedq(62465)
step
Use the _"Traverse to The Ring"_ ability |goto 50.90,7.44
|tip It appears as a button on-screen.
Return to The Ring |goto Fungal Terminus/0 65.75,73.60 < 100 |c |noway |q 62465
|only if haveq(62465) or completedq(62465)
step
talk Marasmius##167455
turnin Hyphae Patrol: Eventide Grove##62614 |goto Fungal Terminus/0 50.75,53.29 |only if readyq(62614) or completedq(62614)
turnin Hyphae Patrol: Gossamer Cliffs##62615 |goto 50.75,53.29 |only if readyq(62615) or completedq(62615)
turnin Hyphae Patrol: Heartwood Grove##62611 |goto 50.75,53.29 |only if readyq(62611) or completedq(62611)
turnin Hyphae Patrol: The Stalks##62610 |goto 50.75,53.29 |only if readyq(62610) or completedq(62610)
turnin A Taste of Tirna Noch##60175 |goto 50.75,53.29 |only if readyq(60175) or completedq(60175)
turnin Glittering Gritty Goodness##62607 |goto 50.75,53.29 |only if readyq(62607) or completedq(62607)
turnin A Royal Treat##62608 |goto 50.75,53.29 |only if readyq(62608) or completedq(62608)
turnin A Blackthorn Blend##62606 |goto 50.75,53.29 |only if readyq(62606) or completedq(62606)
turnin Into the Unknown##60153 |goto 50.75,53.29 |only if readyq(60153) or completedq(60153)
turnin Into the Unknown##62296 |goto 50.75,53.29 |only if readyq(62296) or completedq(62296)
turnin Into the Unknown##62382 |goto 50.75,53.29 |only if readyq(62382) or completedq(62382)
turnin Into the Unknown##62453 |goto 50.75,53.29 |only if readyq(62453) or completedq(62453)
turnin Go Beyond!##62459 |goto 50.75,53.29 |only if readyq(62459) or completedq(62459)
turnin Go Beyond!##62400 |goto 50.75,53.29 |only if readyq(62400) or completedq(62400)
turnin Go Beyond!##62417 |goto 50.75,53.29 |only if readyq(62417) or completedq(62417)
turnin Go Beyond!##62466 |goto 50.75,53.29 |only if readyq(62466) or completedq(62466)
turnin Go Beyond!##60188 |goto 50.75,53.29 |only if readyq(60188) or completedq(60188)
turnin Go Beyond!##62263 |goto 50.75,53.29 |only if readyq(62263) or completedq(62263)
turnin Go Beyond!##62465 |goto 50.75,53.29 |only if readyq(62465) or completedq(62465)
|only if readyq(62614,62615,62610,60153,62296,62382,62453,62611,62607,60175,62608,62606,62459,62400,62417,62466,60188,62263,62465) or completedq(62614,62615,62610,60153,62296,62382,62453,62611,62607,60175,62608,62606,62459,62400,62417,62466,60188,62263,62465)
step
You have completed all Fungal Terminus daily quests
|tip This guide will reset when more become available.
'|complete not completedq(62614,62615,62610,60153,62296,62382,62453,62611,62607,60175,62608,62606,62459,62400,62417,62466,60188,62263,62465) |next "Begin_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Shadowlands (50-60)\\Venthyr Covenant\\Venthyr Daily Quests",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the various daily quests for the Venthyr Covenant.",
condition_suggested=function() return level >= 60 end,
patch='90001',
},[[
step
label "Begin_Dailies"
talk Tenaval##164738
accept Return Lost Souls##61334 |goto Sinfall/0 45.41,28.47 |only if  Venthyr and covenantrenown() < 15
accept Return Lost Souls##62867 |goto 45.41,28.47 |only if  Venthyr and covenantrenown() >= 15 and covenantrenown() < 24 and not completedq(61334)
accept Return Lost Souls##62868 |goto 45.41,28.47 |only if  Venthyr and covenantrenown() >= 24 and covenantrenown() < 32 and not completedq(62867)
accept Return Lost Souls##62869 |goto 45.41,28.47 |only if  Venthyr and covenantrenown() >= 32 and not completedq(62868)
accept Storm the Maw##60456 |goto 45.41,28.47 |only if questactive(60456) or completedq(60456)
accept Anima Salvage##60460 |goto 45.41,28.47 |only if questactive(60460) or completedq(60460)
|only if questactive(61334,62867,62868,62869,60456,60460) or completedq(61334,62867,62868,62869,60456,60460)
step
talk Foreman Flatfinger##172605
accept Replenish the Reservoir##61981 |goto 55.70,26.04
step
talk Tactician Sakaa##164741
accept Training in Ardenweald##60401 |goto 58.10,59.69 |only if questactive(60401) or completedq(60401)
accept Training in Maldraxxus##60409 |goto 58.10,59.69 |only if questactive(60409) or completedq(60409)
accept Training in Bastion##60406 |goto 58.10,59.69 |only if questactive(60406) or completedq(60406)
accept Training Our Forces##60410 |goto 58.10,59.69 |only if questactive(60410) or completedq(60410)
|only if questactive(60401,60409,60406,60410) or completedq(60401,60409,60406,60410)
step
talk Prince Renathal##158653
accept A Call to Ardenweald##60422 |goto 51.77,37.54 |only if questactive(60422) or completedq(60422)
accept A Call to Bastion##60427 |goto 51.77,37.54 |only if questactive(60427) or completedq(60427)
accept A Call to Maldraxxus##60431 |goto 51.77,37.54 |only if questactive(60431) or completedq(60431)
accept Troubles at Home##60432 |goto 51.77,37.54 |only if questactive(60432) or completedq(60432)
|only if questactive(60422,60427,60431,60432) or completedq(60422,60427,60431,60432)
step
talk The Curator##158713
accept Rare Resources##60417 |goto Sinfall/1 61.67,66.72 |only if questactive(60417) or completedq(60417)
accept A Wealth of Wealdwood##60370 |goto 61.67,66.72 |only if questactive(60370) or completedq(60370)
accept A Source of Sorrowvine##60378 |goto 61.67,66.72 |only if questactive(60378) or completedq(60378)
accept Gildenite Grab##60358 |goto 61.67,66.72 |only if questactive(60358) or completedq(60358)
accept Bonemetal Bonanza##60375 |goto 61.67,66.72 |only if questactive(60375) or completedq(60375)
|only if questactive(60417,60370,60378,60358,60375) or completedq(60417,60370,60378,60358,60375)
step
talk The Accuser##165291
accept Challenges in Ardenweald##60441 |goto 56.02,78.61 |only if questactive(60441) or completedq(60441)
accept Challenges in Bastion##60444 |goto 56.02,78.61 |only if questactive(60444) or completedq(60444)
accept Challenges in Maldraxxus##60446 |goto 56.02,78.61 |only if questactive(60446) or completedq(60446)
accept Challenges in Revendreth##60448 |goto 56.02,78.61 |only if questactive(60448) or completedq(60448)
|only if questactive(60441,60444,60446,60448) or completedq(60441,60444,60446,60448)
step
talk Rendle##165302
accept Aiding Ardenweald##60389 |goto 62.44,76.57 |only if questactive(60389) or completedq(60389)
accept Aiding Bastion##60394 |goto 62.44,76.57 |only if questactive(60394) or completedq(60394)
accept Aiding Maldraxxus##60397 |goto 62.44,76.57 |only if questactive(60397) or completedq(60397)
accept Aiding Revendreth##60399 |goto 62.44,76.57 |only if questactive(60399) or completedq(60399)
|only if questactive(60389,60394,60397,60399) or completedq(60389,60394,60397,60399)
step
talk Devahia##164739
accept Anima Appeal##60463 |goto 47.67,57.39
|only if questactive(60463) or completedq(60463)
stickystart "Complete_World_Quests_in_Revendreth_with_Trainee"
stickystart "Complete_World_Quests_in_Revendreth"
stickystart "Defeat_the_Powerful_Foes_of_Revendreth"
stickystart "Defend_Revendreth"
stickystart "Collect_4_Gildenite"
stickystart "Collect_4_Bonemetal"
stickystart "Collect_4_Sorrowvine"
stickystart "Collect_4_Wealdwood"
stickystart "Collect_Coins_of_Brokerage"
stickystart "Complete_World_Quests_in_Maldraxxus_with_Trainee"
stickystart "Complete_World_Quests_in_Bastion_with_Trainee"
stickystart "Complete_World_Quests_in_Ardenweald"
stickystart "Complete_World_Quests_in_Bastion"
stickystart "Complete_World_Quests_in_Maldraxxus"
stickystart "Defeat_the_Powerful_Foes_of_Ardenweald"
stickystart "Defeat_the_Powerful_Foes_of_Bastion"
stickystart "Defeat_the_Powerful_Foes_of_Maldraxxus"
stickystart "Defend_Ardenweald"
stickystart "Defend_Bastion"
stickystart "Defend_Maldraxxus"
step
Complete #3# World Quests in Ardenweald with Your Trainee |q 60401/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Ardenweald map to load the guide for it.
|only if haveq(60401) or completedq(60401)
step
label "Complete_World_Quests_in_Maldraxxus_with_Trainee"
Complete #3# World Quests in Maldraxxus with Your Trainee |q 60409/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Maldraxxus map to load the guide for it.
|only if haveq(60409) or completedq(60409)
step
label "Complete_World_Quests_in_Bastion_with_Trainee"
Complete #3# World Quests in Bastion with Your Trainee |q 60406/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Bastion map to load the guide for it.
|only if haveq(60406) or completedq(60406)
step
label "Complete_World_Quests_in_Revendreth_with_Trainee"
Complete #3# World Quests in Revendreth with Your Trainee |q 60410/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Revendreth map to load the guide for it.
|only if haveq(60410) or completedq(60410)
step
label "Complete_World_Quests_in_Ardenweald"
Complete #3# World Quests in Ardenweald |q 60389/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Ardenweald map to load the guide for it.
|only if haveq(60389) or completedq(60389)
step
label "Complete_World_Quests_in_Bastion"
Complete #3# World Quests in Bastion |q 60394/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Bastion map to load the guide for it.
|only if haveq(60394) or completedq(60394)
step
label "Complete_World_Quests_in_Maldraxxus"
Complete #3# World Quests in Maldraxxus |q 60397/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Maldraxxus map to load the guide for it.
|only if haveq(60397) or completedq(60397)
step
label "Complete_World_Quests_in_Revendreth"
Complete #3# World Quests in Revendreth |q 60399/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Revendreth map to load the guide for it.
|only if haveq(60399) or completedq(60399)
step
label "Defeat_the_Powerful_Foes_of_Ardenweald"
Defeat the Powerful Foes of Ardenweald |q 60441/1
|tip Complete the "Terrors in Tirna Scithe" world quest in Ardenweald using the world quest guide if it is active.
|tip Alternatively, you may also complete the "Mists of Tirna Scithe" or "De Other Side" dungeons using their respective dungeon guides.
|tip Completing any one of these will fulfill the quest requirements.
|only if haveq(60441) or completedq(60441)
step
label "Defeat_the_Powerful_Foes_of_Bastion"
Defeat the Powerful Foes of Bastion |q 60444/1
|tip Complete the "Disloyal Denizens" world quest in Bastion using the world quest guide if it is active.
|tip Alternatively, you may also complete the "Spires of Ascension Dungeon" or "Necrotic Wake" dungeons using their respective dungeon guides.
|tip Completing any one of these will fulfill the quest requirements.
|only if haveq(60444) or completedq(60444)
step
label "Defeat_the_Powerful_Foes_of_Maldraxxus"
Defeat the Powerful Foes of Maldraxxus |q 60446/1
|tip Complete the "Chosen Champions" world quest in Maldraxxus using the world quest guide if it is active.
|tip Alternatively, you may also complete the "Theater of Pain" or "Plaguefall" dungeons using their respective dungeon guides.
|tip Completing any one of these will fulfill the quest requirements.
|only if haveq(60446) or completedq(60446)
step
label "Defeat_the_Powerful_Foes_of_Revendreth"
Defeat the Powerful Foes of Revendreth |q 60448/1
|tip Complete the "Destroy the Dominant" world quest in Revendreth using the world quest guide if it is active.
|tip Alternatively, you may also complete the "Sanguine Depths" or "Halls of Atonement" dungeons using their respective dungeon guides.
|tip Completing any one of these will fulfill the quest requirements.
|only if haveq(60448) or completedq(60448)
step
label "Defend_Ardenweald"
Defend Ardenweald |q 60422/1
|tip You can accomplish this several ways.
|tip Complete world quests in Ardenweald using the "Ardenweald World Quests" guide.
|tip Loot treasures or kill rare enemies across Ardenweald.
|tip You can also kill bosses in the "Mists of Tirna Scithe" and "De Other Side" dungeons using their respective dungeon guides.
|only if haveq(60422) or completedq(60422)
step
label "Defend_Bastion"
Defend Bastion |q 60427/1
|tip You can accomplish this several ways.
|tip Complete world quests in Bastion using the "Bastion World Quests" guide.
|tip Loot treasures or kill rare enemies across Bastion.
|tip You can also kill bosses in the "Spires of Ascension" and "Necrotic Wake" dungeons using their respective dungeon guides.
|only if haveq(60427) or completedq(60427)
step
label "Defend_Maldraxxus"
Defend Maldraxxus |q 60431/1
|tip You can accomplish this several ways.
|tip Complete world quests in Maldraxxus using the "Maldraxxus World Quests" guide.
|tip Loot treasures or kill rare enemies across Maldraxxus.
|tip You can also kill bosses in the "Plaguefall" and "Theatre of Pain" dungeons using their respective dungeon guides.
|only if haveq(60431) or completedq(60431)
step
label "Defend_Revendreth"
Defend Revendreth |q 60432/1
|tip You can accomplish this several ways.
|tip Complete world quests in Revendreth using the "Revendreth World Quests" guide.
|tip Loot treasures or kill rare enemies across Revendreth.
|tip You can also kill bosses in the "Sanguine Depths" and "Halls of Atonement" dungeons using their respective dungeon guides.
|only if haveq(60432) or completedq(60432)
step
label "Collect_4_Gildenite"
collect 3 Gildenite##179321 |q 60358/1
|tip This ore drops from rare spawns and treasures all over Bastion.
|only if haveq(60358) or completedq(60358)
step
label "Collect_4_Bonemetal"
collect 3 Bonemetal##179317 |q 60375/1
|tip This drops from rare spawns and treasures all over Maldraxxus.
|only if haveq(60375) or completedq(60375)
step
label "Collect_4_Sorrowvine"
collect 3 Sorrowvine##179318 |q 60378/1
|tip Loot treasures or kill rare enemies across Revendreth.
|only if haveq(60378) or completedq(60378)
step
label "Collect_4_Wealdwood"
collect 3 Wealdwood##179320 |q 60370/1
|tip Loot treasures or kill rare enemies across Ardenweald.
|only if haveq(60370) or completedq(60370)
step
label "Collect_Coins_of_Brokerage"
collect 3 Coin of Brokerage##179327 |q 60417/1
|tip These coins drop from rare spawns and treasures all over Shadowlands zones.
|only if haveq(60417) or completedq(60417)
stickystart "Collect_150_Soul_Embers_from_Torghast"
stickystart "Defeat_3_Rare_or_Special_Encounter_Bosses"
step
kill Stone Prison##176145+
|tip They look like pyramids made of rocks on the ground around this area.
click Soul Cage+
|tip They look like tall grey metal cages on the ground around this area.
|tip They will appear on your minimap as white ghost icons.
click Soul+
|tip They look like white spirits that float out of the cages and stone prisons.
|tip You can also click Souls that other players free.
Rescue #5# Lost Souls in the Maw |q 61334/1 |goto The Maw/0 39.52,46.74
|only if haveq(61334) or completedq(61334)
step
kill Stone Prison##176145+
|tip They look like pyramids made of rocks on the ground around this area.
click Soul Cage+
|tip They look like tall grey metal cages on the ground around this area.
|tip They will appear on your minimap as white ghost icons.
click Soul+
|tip They look like white spirits that float out of the cages and stone prisons.
|tip You can also click Souls that other players free.
Rescue #10# Lost Souls in the Maw |q 62867/1 |goto The Maw/0 39.52,46.74
|only if haveq(62867) or completedq(62867)
step
kill Stone Prison##176145+
|tip They look like pyramids made of rocks on the ground around this area.
click Soul Cage+
|tip They look like tall grey metal cages on the ground around this area.
|tip They will appear on your minimap as white ghost icons.
click Soul+
|tip They look like white spirits that float out of the cages and stone prisons.
|tip You can also click Souls that other players free.
Rescue #15# Lost Souls in the Maw |q 62868/1 |goto The Maw/0 39.52,46.74
|only if haveq(62868) or completedq(62868)
step
kill Stone Prison##176145+
|tip They look like pyramids made of rocks on the ground around this area.
click Soul Cage+
|tip They look like tall grey metal cages on the ground around this area.
|tip They will appear on your minimap as white ghost icons.
click Soul+
|tip They look like white spirits that float out of the cages and stone prisons.
|tip You can also click Souls that other players free.
Rescue #20# Lost Souls in the Maw |q 62869/1 |goto The Maw/0 39.52,46.74
|only if haveq(62869) or completedq(62869)
step
label "Collect_150_Soul_Embers_from_Torghast"
Gather #150# Anima Embers from Torghast, Tower of the Damned |q 60460/1
|tip Run Torghast and collect them from mobs throughout the tower.
|only if haveq(60460) or completedq(60460)
step
label "Defeat_3_Rare_or_Special_Encounter_Bosses"
Defeat #3# Rare or Special Encounter Bosses in the Maw |q 60456/1
|tip Encounters periodically show on the map in The Maw.
|tip The Wrath of the Jailer and Hunt events don't count.
|tip Any rare with a skull or star minimap icon counts.
|only if haveq(60456) or completedq(60456)
step
talk Tenaval##164738
turnin Storm the Maw##60456 |goto Sinfall/0 45.41,28.47 |only if readyq(60456) or completedq(60456)
turnin Return Lost Souls##61334 |goto 45.41,28.47 |only if readyq(61334) or completedq(61334)
turnin Return Lost Souls##62867 |goto 45.41,28.47 |only if readyq(62867) or completedq(62867)
turnin Return Lost Souls##62868 |goto 45.41,28.47 |only if readyq(62868) or completedq(62868)
turnin Return Lost Souls##62869 |goto 45.41,28.47 |only if readyq(62869) or completedq(62869)
turnin Anima Salvage##60460 |goto 45.41,28.47 |only if readyq(60460) or completedq(60460)
|only if readyq(60456,61334,62867,62868,62869,60460) or completedq(60456,61334,62867,62868,62869,60460)
step
talk Foreman Flatfinger##172605
turnin Replenish the Reservoir##61981 |goto 55.70,26.04
|only if readyq(61981) or completedq(61981)
step
talk Tactician Sakaa##164741
turnin Training in Ardenweald##60401 |goto 58.10,59.69 |only if readyq(60401) or completedq(60401)
turnin Training in Maldraxxus##60409 |goto 58.10,59.69 |only if readyq(60409) or completedq(60409)
turnin Training in Bastion##60406 |goto 58.10,59.69 |only if readyq(60406) or completedq(60406)
turnin Training Our Forces##60410 |goto 58.10,59.69 |only if readyq(60410) or completedq(60410)
|only if readyq(60401,60409,60406,60410) or completedq(60401,60409,60406,60410)
step
talk Prince Renathal##158653
turnin A Call to Ardenweald##60422 |goto 51.77,37.54 |only if readyq(60422) or completedq(60422)
turnin A Call to Bastion##60427 |goto 51.77,37.54 |only if readyq(60427) or completedq(60427)
turnin A Call to Maldraxxus##60431 |goto 51.77,37.54 |only if readyq(60431) or completedq(60431)
turnin Troubles at Home##60432 |goto 51.77,37.54 |only if readyq(60432) or completedq(60432)
|only if readyq(60422,60427,60431,60432) or completedq(60422,60427,60431,60432)
step
talk Devahia##164739
turnin Anima Appeal##60463 |goto Sinfall/1 47.67,57.39
|only if readyq(60463) or completedq(60463)
step
talk The Curator##158713
turnin Rare Resources##60417 |goto 61.67,66.72 |only if readyq(60417) or completedq(60417)
turnin A Wealth of Wealdwood##60370 |goto 61.67,66.72 |only if readyq(60370) or completedq(60370)
turnin A Source of Sorrowvine##60378 |goto 61.67,66.72 |only if readyq(60378) or completedq(60378)
turnin Gildenite Grab##60358 |goto 61.67,66.72 |only if readyq(60358) or completedq(60358)
turnin Bonemetal Bonanza##60375 |goto 61.67,66.72 |only if readyq(60375) or completedq(60375)
|only if readyq(60417,60370,60378,60358,60375) or completedq(60417,60370,60378,60358,60375)
step
talk The Accuser##165291
turnin Challenges in Ardenweald##60441 |goto 56.02,78.61 |only if readyq(60441) or completedq(60441)
turnin Challenges in Bastion##60444 |goto 56.02,78.61 |only if readyq(60444) or completedq(60444)
turnin Challenges in Maldraxxus##60446 |goto 56.02,78.61 |only if readyq(60446) or completedq(60446)
turnin Challenges in Revendreth##60448 |goto 56.02,78.61 |only if readyq(60448) or completedq(60448)
|only if readyq(60441,60444,60446,60448) or completedq(60441,60444,60446,60448)
step
talk Rendle##165302
turnin Aiding Ardenweald##60389 |goto 62.44,76.57 |only if readyq(60389) or completedq(60389)
turnin Aiding Bastion##60394 |goto 62.44,76.57 |only if readyq(60394) or completedq(60394)
turnin Aiding Maldraxxus##60397 |goto 62.44,76.57 |only if readyq(60397) or completedq(60397)
turnin Aiding Revendreth##60399 |goto 62.44,76.57 |only if readyq(60399) or completedq(60399)
|only if readyq(60389,60394,60397,60399) or completedq(60389,60394,60397,60399)
stickystart "Collect_1000_Anima"
step
talk Foreman Flatfinger##172605
Tell him _"Show me the Sanctum."_
|tip Click the "Deposit" button to deposit anima from your bags.
Deposit #600# Anima in the Anima Reservoir |q 60463/1 |goto Sinfall/0 55.70,26.04 |or
|tip Gather anima by completing world quests, killing rare enemies, and looting treasures across the Shadowlands.
'|complete countcompletedq(60460,60401,60409,60406,60410,60422,60427,60431,60432,60463,60417,60370,60375,60378,60358,60441,60444,60446,60448,60389,60394,60397,60399,60456) < 3 |next "Begin_Dailies" |or
|only if haveq(60463) or completedq(60463)
step
talk Devahia##164739
turnin Anima Appeal##60463 |goto Sinfall/1 47.67,57.39
|only if readyq(60463) or completedq(60463)
step
label "Collect_1000_Anima"
Collect #1000# Anima |q 61981/1 |or
|tip Gather anima by completing world quests, killing rare enemies, and looting treasures across the Shadowlands. |notinsticky
'|complete countcompletedq(60460,60401,60409,60406,60410,60422,60427,60431,60432,60463,60417,60370,60375,60378,60358,60441,60444,60446,60448,60389,60394,60397,60399,60456) < 3 |next "Begin_Dailies" |or
|only if readyq(61981) or completedq(61981)
step
talk Foreman Flatfinger##172605
turnin Replenish the Reservoir##61981 |goto 55.70,26.04
|only if readyq(61981) or completedq(61981)
step
You have completed all covenant daily quests
|tip This guide will reset when more become available.
'|complete countcompletedq(60460,60401,60409,60406,60410,60422,60427,60431,60432,60463,60417,60370,60375,60378,60358,60441,60444,60446,60448,60389,60394,60397,60399,60456) < 3 |next "Begin_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Shadowlands (50-60)\\Kyrian Covenant\\Kyrian Anima Conductor Daily Quests",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the various daily quests unlocked through the Kyrian Anima Conductor.",
condition_suggested=function() return level >= 60 end,
condition_valid=function() return covenantfeature("Anima Conductor") >= 1 end,
condition_valid_msg="You must unlock the Anima Conductor using the \"Kyrian Anima Conductor\" guide first!",
patch='90001',
},[[
step
label "Begin_Dailies"
Talk to NPCs around this area
accept Where There's a Quill...##61156 |only if questpossible
accept Signs of Demise##61159 |only if questpossible
accept Straight to the Point##61157 |only if questpossible
accept Arms Day##61199 |only if questpossible
accept Reduce, Reuse, Recycle##61166 |only if questpossible
accept A Light Touch##61193 |only if questpossible
accept Pollen Your Weight##61182 |only if questpossible
accept Manifesting Power##61146 |only if questpossible
accept The Secret Ingredient##61196 |only if questpossible
accept A Somber Melody##61209 |only if questpossible
Click Here After Accepting the Available Dailies |confirm always |goto Bastion/0 50.29,21.28
stickystart "Collect_20_Resonant_Alloy"
step
Kill Forsworn enemies around this area
collect 20 Forsworn Insignia##180816 |q 61159/1 |goto Bastion/0 50.94,17.68
You can find more around [58.20,74.96]
|only if haveq(61159) or completedq(61159)
step
label "Collect_20_Resonant_Alloy"
click Goliath Parts
|tip They look like mechanical goliath parts on the ground around this area.
Kill enemies around this area
collect 20 Resonant Alloy##180830 |q 61166/1 |goto 51.84,17.19
|only if haveq(61166) or completedq(61166)
stickystart "Collect_30_Twirlpetal_Pollen"
step
Kill flying enemies around this area
|tip Any mob that flies will drop quills.
collect 30 Shimmerflight Quill##180796 |q 61156/1 |goto 55.28,24.26
|only if haveq(61156) or completedq(61156)
step
label "Collect_30_Twirlpetal_Pollen"
click Blooming Twirlpetal##355425+
|tip They look like sparkling and rotating flowers floating above the ground around this area.
collect 30 Twirlpetal Pollen##180851 |q 61182/1 |goto Bastion/0 53.01,25.77
You can find more around:
[46.44,41.92]
[62.64,34.71]
[58.45,51.47]
|only if haveq(61182) or completedq(61182)
stickystart "Collect_15_Firstborne's_Light"
stickystart "Collect_12_Elysian_Horns"
stickystart "Collect_20_Blessed_Armaments"
stickystart "Collect_15_Condensed_Essences"
stickystart "Collect_15_Ephemeral_Draught"
step
map Bastion/0
path follow smart; loop on; ants curved; dist 30
path	49.99,25.31	52.76,27.56	54.41,32.59	56.61,36.37	58.11,37.26
path	59.88,43.57	59.13,47.44	57.78,50.27	57.70,52.32	54.96,56.90
path	52.35,62.34	50.26,61.45	46.45,59.28	45.67,56.56	43.88,54.91
path	44.67,50.74	44.80,47.75	44.96,42.31	44.50,36.94	43.61,31.74
path	44.25,30.23	46.02,29.30	46.89,27.10	48.61,25.85
use the Eonian Lyre##180990
|tip Use it on Passing Echoes along the road.
|tip They look like ghostly blue winged humans along the road.
Dissipate #15# Kyrian Echoes |q 61209/1
|only if haveq(61209) or completedq(61209)
step
label "Collect_15_Firstborne's_Light"
click Firstborne's Light##355450+
|tip They look like light purple flowers with white light emitting from the tops in the water around this area.
collect 15 Firstborne's Light##180897 |q 61193/1 |goto 43.91,30.18
You can find more around:
[50.73,39.58]
[50.16,57.67]
[53.92,73.64]
[58.07,75.63]
|only if haveq(61193) or completedq(61196)
step
label "Collect_12_Elysian_Horns"
kill Silverplume Ridgeback##172200+
collect 12 Elysian Horn##180809 |q 61157/1 |goto Bastion/0 37.71,28.09
You can find more around [65.68,36.10]
|only if haveq(61157) or completedq(61157)
step
label "Collect_20_Blessed_Armaments"
click Blessed Armament##355497+
|tip They look like weapons sticking out of the ground around this area.
collect 20 Blessed Armament##180946 |q 61199/1 |goto Bastion/0 26.78,22.79
|only if haveq(61199) or completedq(61199)
step
label "Collect_15_Condensed_Essences"
Enter the building |goto Bastion/0 47.71,71.64 < 20 |walk
Kill Aberration enemies around this area
|tip Inside the building.
collect 15 Condensed Essence##180785 |q 61146/1 |goto Bastion/1 47.04,55.11
You can find more around [Bastion/0 58.86,75.57]
|only if haveq(61146) or completedq(61146)
step
label "Collect_15_Ephemeral_Draught"
click Ephemeral Draught##355453+
|tip They look like bottles filled various colored liquids on the ground around this area.
collect 15 Ephemeral Draught##180898 |q 61196/1 |goto Bastion/0 58.33,75.10
You can find more around [41.66,23.32]
|only if haveq(61196) or completedq(61196)
step
talk Galakamos##171676
turnin Where There's a Quill...##61156 |goto Bastion/0 50.37,21.31 |only if readyq(61156) or completedq(61156)
turnin Signs of Demise##61159 |goto Bastion/0 50.37,21.31 |only if readyq(61159) or completedq(61159)
turnin Straight to the Point##61157 |goto Bastion/0 50.37,21.31 |only if readyq(61157) or completedq(61157)
|only if readyq(61156,61159,61157) or completedq(61156,61159,61157)
step
talk Kofi##171671
turnin Arms Day##61199 |goto Bastion/0 50.33,21.35 |only if readyq(61199) or completedq(61199)
turnin Reduce, Reuse, Recycle##61166 |goto Bastion/0 50.33,21.35 |only if readyq(61166) or completedq(61166)
turnin A Light Touch##61193 |goto Bastion/0 50.33,21.35 |only if readyq(61193) or completedq(61193)
turnin Pollen Your Weight##61182 |goto Bastion/0 50.33,21.35 |only if readyq(61182) or completedq(61182)
|only if readyq(61199,61166,61193,61182) or completedq(61199,61166,61193,61182)
step
talk Forgelite Selene##171677
turnin Manifesting Power##61146 |goto Bastion/0 50.22,21.27 |only if readyq(61146) or completedq(61146)
turnin The Secret Ingredient##61196 |goto Bastion/0 50.22,21.27 |only if readyq(61196) or completedq(61196)
turnin A Somber Melody##61209 |goto 50.21,21.27 |only if readyq(61209) or completedq(61209)
|only if readyq(61146,61196,61209) or completedq(61146,61196,61209)
step
You have completed all Anima Conductor daily quests
|tip This guide will reset when more become available.
'|complete not completedq(61156,61159,61157,61199,61166,61193,61182,61146,61196,61209) |next "Begin_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Shadowlands (50-60)\\Necrolords Covenant\\Necrolords Anima Conductor Daily Quests",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the various daily quests unlocked through the Necrolords Anima Conductor.",
condition_suggested=function() return level >= 60 end,
condition_valid=function() return covenantfeature("Anima Conductor") >= 1 end,
condition_valid_msg="You must unlock the Anima Conductor using the \"Necrolords Anima Conductor\" guide first!",
patch='90001',
},[[
step
label "Begin_Dailies"
Talk to NPCs around this area
accept Boared to Death##62403 |only if questpossible
accept Body Count##62390 |only if questpossible
accept Volatile Reactions##62362 |only if questpossible
accept Queens And Future Kings##58260 |only if questpossible
accept Heavy Lifting##62363 |only if questpossible
accept Dire Learning##62364 |only if questpossible
accept Back Again!##62563 |only if questpossible
accept Revenge Is Easy##57964 |only if questpossible
accept See With My Eyes##60482 |only if questpossible
accept Spider's Lair##60505 |only if questpossible
accept Pumped Up##58211 |only if questpossible
Click Here After Accepting the Available Dailies |confirm always |goto Maldraxxus/0 51.30,16.52
step
clicknpc Twigin##168615
Gain Twigin's Aid |q 58260/1 |goto 51.39,16.44
|only if haveq(58260) or completedq(58260)
step
kill Gorgantus the Gutter##171814 |q 62563/1 |goto 50.35,15.73
|only if haveq(62563) or completedq(62563)
stickystart "Collect_10_Hidden_Weapons"
stickystart "Slay_8_Razorweb_Weavers"
step
kill Manipulator Zalisar##168723 |q 60505/2 |goto Sightless Hold/0 79.81,84.34
|only if haveq(60505) or completedq(60505)
step
label "Collect_10_Hidden_Weapons"
use Sightless Vision##178993
|tip Use it as often as needed to maintain the buff.
click Hidden Weapon##352443+
|tip They look like various types of weapons in the building around this area.
|tip They glow red through objects while the buff is active.
collect 10 Hidden Weapons##178992 |q 60482/1 |goto 57.29,55.81
|only if haveq(60482) or completedq(60482)
step
label "Slay_8_Razorweb_Weavers"
Kill Razorweb enemies around this area
Slay #8# Razorweb Weavers |q 60505/1 |goto 57.29,56.06
|only if haveq(60505) or completedq(60505)
stickystart "Slay_15_Bonefused_Forces"
step
use the Sludge Pump##173881
|tip Use it near Bubbling Sludge spots.
kill Irritated Sludge##160702+
|tip They spawn from the Sludge Pump.
click Salvaged Gear##339387+
|tip They drop after killing Irritated Sludges.
collect 15 Mysterious Hooks##173899 |q 58211/1 |goto Maldraxxus/0 51.18,19.02
|only if haveq(58211) or completedq(58211)
step
label "Slay_15_Bonefused_Forces"
Kill Bonefused enemies around this area
Slay #15# Bonefused Forces |q 57964/1 |goto 50.21,20.80
|only if haveq(57964) or completedq(57964)
stickystart "Collect_10_Marrowbore_Larva"
step
kill 5 Marrowbore Queen##159747 |q 58260/2 |goto 54.77,18.39
|tip Use the "Twigin's Wings" ability on-screen to fly up in the air and engage Marrowbore Queens.
|only if haveq(58260) or completedq(58260)
step
label "Collect_10_Marrowbore_Larva"
Kill Marrowbore enemies around this area
|tip They fly around this area.
collect 10 Marrowbore Larva##173942 |q 58260/3 |goto 55.08,21.67
|only if haveq(58260) or completedq(58260)
stickystart "Collect_15_Animated_Catalyst"
step
click Tome of Rituals+
|tip They look like open books floating above the ground around this area.
Destroy #15# Tomes of Rituals |q 62364/1 |goto 67.35,29.33
You can find more around:
[69.58,51.63]
[62.78,43.29]
|only if haveq(62364) or completedq(62364)
step
label "Collect_15_Animated_Catalyst"
kill Flawed Rancor##169992+
collect 15 Animated Catalyst##183436 |q 62362/1 |goto 69.80,51.68
You can find more around [63.42,44.00]
|only if haveq(62362) or completedq(62362)
stickystart "Slay_15_Bonefused_Forces"
step
Kill Boar enemies around this area
collect 25 Bloody Tusks##183620 |q 62403/1 |goto 55.72,38.35
|only if haveq(62403) or completedq(62403)
step
talk Au'narim##159830
accept Spoiling For A Fight##58454 |goto 53.60,47.51 |or
|tip
Click Here if you Have Not Channeled the Theater of Pain |confirm |or
|tip You must channel the Theater of Pain at the Anima Conductor in your covenant or permanently reinforce that location.
|only if covenantfeature("Anima Conductor") >= 3
step
kill Sabriel the Bonecleaver##168147 |q 58454/1 |goto 50.36,47.28
|tip Kill champions in the Theater of Pain until Sabriel spawns.
|tip It will spawn following the Drolkrad encounter.
|only if haveq(58454) or completedq(58454)
step
Click the Complete Quest Box
turnin Spoiling For A Fight##58454
|only if readyq(58454) or completedq(58454)
step
Kill Chosen enemies around this area
Slay #20# House of the Chosen Warriors |q 62363/1 |goto 38.93,65.13
|only if haveq(62363) or completedq(62363)
step
click Barrel of Parts##358341+
|tip They look like bone-clad barrels on the ground around this area.
click Spare Part##358342+
|tip They look like random body parts on the ground around this area.
collect 30 Abomination Parts##183600 |q 62390/1 |goto 29.44,30.72
|only if haveq(62390) or completedq(62390)
step
talk Varzisk Lidless##168675
turnin See With My Eyes##60482 |goto 51.16,16.89 |only if readyq(60482) or completedq(60482)
turnin Spider's Lair##60505 |goto 51.16,16.89 |only if readyq(60505) or completedq(60505)
turnin Pumped Up##58211 |goto 51.16,16.89 |only if readyq(58211) or completedq(58211)
|only if readyq(60482,60505,58211) or completedq(60482,60505,58211)
step
talk Fixer Bixie##167603
turnin Boared to Death##62403 |goto 51.24,16.81 |only if readyq(62403) or completedq(62403)
turnin Body Count##62390 |goto 51.24,16.81 |only if readyq(62390) or completedq(62390)
turnin Volatile Reactions##62362 |goto 51.24,16.81 |only if readyq(62362) or completedq(62362)
turnin Queens And Future Kings##58260 |goto 51.24,16.81 |only if readyq(58260) or completedq(58260)
turnin Heavy Lifting##62363 |goto 51.24,16.81 |only if readyq(62363) or completedq(62363)
turnin Dire Learning##62364 |goto 51.24,16.81 |only if readyq(62364) or completedq(62364)
|only if readyq(62403,62390,62362,58260,62363,62364) or completedq(62403,62390,62362,58260,62363,62364)
step
talk Cyrin Smirk##160523
turnin Back Again!##62563 |goto 51.42,16.10 |only if readyq(62563) or completedq(62563)
turnin Revenge Is Easy##57964 |goto 51.42,16.10 |only if readyq(57964) or completedq(57964)
|only if readyq(62563,57964) or completedq(62563,57964)
step
You have completed all Anima Conductor daily quests
|tip This guide will reset when more become available.
'|complete not completedq(60482,60505,58211,62403,62390,62362,58260,62363,62364,62563,57964) |next "Begin_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Shadowlands (50-60)\\Night Fae Covenant\\Night Fae Anima Conductor Daily Quests",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the various daily quests unlocked through the Night Fae Anima Conductor.",
condition_suggested=function() return level >= 60 end,
condition_valid=function() return covenantfeature("Anima Conductor") >= 1 end,
condition_valid_msg="You must unlock the Anima Conductor using the \"Night Fae Anima Conductor\" guide first!",
patch='90001',
},[[
step
label "Begin_Dailies"
Talk to NPCs around this area
accept A Bundle of Lilies##62160 |only if questpossible
accept Catch A Star##62188 |only if questpossible
accept Doing the Dew##61875 |only if questpossible
accept Wake The Sleepers##61985 |only if questpossible
accept A Thread Of Hope##62224 |only if questpossible
accept Just Wing It##61968 |only if questpossible
accept Return Those Animacones!##62081 |only if questpossible
accept Hunting the Wilds##61950 |only if questpossible
accept Those Who Hunger##62057 |only if questpossible
accept Runestone Roundup##62155 |only if questpossible
Click Here After Accepting the Available Dailies |confirm always |goto Ardenweald/0 59.67,52.81
step
Kill Gormling enemies around this area
Slay #25# Gormlings |q 62057/1 |goto 66.63,55.88
You can find more around [60.71,31.52]
|only if haveq(62057) or completedq(62057)
stickystart "Collect_30_Perfect_Ardenmoth_Wing_Scale"
stickystart "Collect_40_Thistledrop_Dew"
step
clicknpc Glittering Starfly##173656+
|tip They look like sparkling butterflies flying around this area.
Capture #15# Glittering Starflies |q 62188/1 |goto 57.35,59.35
You can find more around [50.97,45.79]
|only if haveq(62188) or completedq(62188)
stickystop "Collect_30_Perfect_Ardenmoth_Wing_Scale"
step
label "Collect_40_Thistledrop_Dew"
click Thistledrop Frond##357255+
|tip They look like green and blue plants shaped like a question mark on the ground around this area.
collect 40 Thistledrop Dew##182333 |q 61875/1 |goto 53.02,59.27
|only if haveq(61875) or completedq(61875)
step
Kill Drustcrazed and Possessed enemies around this area
collect 20 Runestone Spike##182647 |q 62155/1 |goto 37.88,68.93
|only if haveq(62155) or completedq(62155)
stickystart "Collect_15_Night_Lilly"
stickystart "Collect_12_Feral_Anima"
step
clicknpc Slumbering Soul##173452+
|tip They look like sparkling blue animals on the ground around this area.
Awaken #10# Slumbering Souls |q 61985/1 |goto 57.53,43.66
You can find more around:
[46.93,63.33]
[32.51,53.27]
|only if haveq(61985) or completedq(61985)
step
label "Collect_12_Feral_Anima"
kill Runestag##165907+
collect 12 Feral Anima##182387 |q 61950/1 |goto 57.71,42.46
|only if haveq(61950) or completedq(61950)
step
label "Collect_15_Night_Lilly"
click Night Lilly##357582+
|tip They look like translucent blue and purple flowers around this area.
|tip You can find them near areas of water.
collect 15 Night Lilly##182659 |q 62160/1 |goto 61.89,40.92
You can find more around:
[56.84,52.85]
[61.25,56.89]
[62.48,52.79]
|only if haveq(62160) or completedq(62160)
stickystart "Collect_30_Perfect_Ardenmoth_Wing_Scale"
step
click Collector##357729+
|tip They look like twisted branches with blue silk on them around this area.
|tip They appear on your minimap as yellow dots.
collect 15 Anima Infused Silk##183041 |q 62224/1 |goto 70.53,30.99
You can find more around [43.50,35.56]
|only if haveq(62224) or completedq(62224)
step
label "Collect_30_Perfect_Ardenmoth_Wing_Scale"
kill Withering Ardenmoth##170730+
collect 30 Perfect Ardenmoth Wing Scale##182450 |q 61968/1 |goto 63.47,27.79
|only if haveq(61968) or completedq(61968)
step
Kill Bristlebark and Rotbriar enemies around this area
collect 50 Looted Animacone##182619 |q 62081/1 |goto 56.73,26.10
You can find more around [62.16,24.23]
|only if haveq(62081) or completedq(62081)
step
talk Teendynneetll##173277
turnin A Bundle of Lilies##62160 |goto 59.64,52.76 |only if readyq(62160) or completedq(62160)
turnin Catch A Star##62188 |goto 59.64,52.76 |only if readyq(62188) or completedq(62188)
turnin Doing the Dew##61875 |goto 59.64,52.76 |only if readyq(61875) or completedq(61875)
turnin Wake The Sleepers##61985 |goto 59.64,52.76 |only if readyq(61985) or completedq(61985)
turnin A Thread Of Hope##62224 |goto 59.64,52.76 |only if readyq(62224) or completedq(62224)
|only if readyq(62160,62188,61875,61985,62224) or completedq(62160,62188,61875,61985,62224)
step
talk Guardian Dazzlewing##173282
turnin Just Wing It##61968 |goto 59.72,52.76 |only if readyq(61968) or completedq(61968)
turnin Return Those Animacones!##62081 |goto 59.72,52.76 |only if readyq(62081) or completedq(62081)
turnin Hunting the Wilds##61950 |goto 59.72,52.76 |only if readyq(61950) or completedq(61950)
turnin Those Who Hunger##62057 |goto 59.72,52.76 |only if readyq(62057) or completedq(62057)
turnin Runestone Roundup##62155 |goto 59.72,52.76 |only if readyq(62155) or completedq(62155)
|only if readyq(61968,62081,61950,62057,62155) or completedq(61968,62081,61950,62057,62155)
step
You have completed all Anima Conductor daily quests
|tip This guide will reset when more become available.
'|complete not completedq(62160,62188,61875,61985,62224,61968,62081,61950,62057,62155) |next "Begin_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Shadowlands (50-60)\\Venthyr Covenant\\Venthyr Anima Conductor Daily Quests",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the various daily quests unlocked through the Venthyr Anima Conductor.",
condition_suggested=function() return level >= 60 end,
condition_valid=function() return covenantfeature("Anima Conductor") >= 1 end,
condition_valid_msg="You must unlock the Anima Conductor using the \"Venthyr Anima Conductor\" guide first!",
patch='90001',
},[[
step
label "Begin_Dailies"
Talk to NPCs around this area
accept Awaken Our Allies##61735 |only if questpossible
accept Edict of Doom: Devourers##61845 |only if questpossible
accept Edict of Doom: Sinstone Golems##61848 |only if questpossible
accept Edict of Doom: Dredbats##61846 |only if questpossible
accept Census of Sins##61734 |only if questpossible
accept Old Habits Never Die##61732 |only if questpossible
accept Overdue Purging##61847 |only if questpossible
accept Crumbled Reality##61707 |only if questpossible
accept Take the Bite Out of 'Em##61849 |only if questpossible
accept Big Bag of Creepers##61733 |only if questpossible
Click Here After Accepting the Available Dailies |confirm always |goto Revendreth/0 71.84,75.98
stickystart "Collect_100_Infused_Rubble"
stickystart "Slay_20_Devourers"
stickystart "Destroy_30_Manifestations"
stickystart "Collect_40_Venthyr_Fangs"
stickystart "Pillage_10_Hoarded_Anima_Cages"
stickystart "Awaken_15_Stoneborn_Allies"
stickystart "Destroy_4_Sinstone_Golems"
stickystart "Collect_20_Mire_Creepers"
stickystart "Slay_25_Dreadbats"
step
click High Priestess Navi DeRolan |goto 74.02,76.96
Inspect #7# Lost Sinstones |q 61734/1 |count 1
|only if haveq(61734) or completedq(61734)
step
click Sentinel Shal'raven |goto 75.28,75.09
Inspect #7# Lost Sinstones |q 61734/1 |count 2
|only if haveq(61734) or completedq(61734)
step
click Tazerath of Seven Seas of Sand |goto 70.08,70.21
Inspect #7# Lost Sinstones |q 61734/1 |count 3
|only if haveq(61734) or completedq(61734)
step
click Archetus the Mad Designer |goto 71.70,61.19
Inspect #7# Lost Sinstones |q 61734/1 |count 4
|only if haveq(61734) or completedq(61734)
step
label "Collect_100_Infused_Rubble"
click Infused Rubble##356882+
|tip They look like large piles of stone on the ground around this area.
collect 100 Infused Rubble##182158 |q 61707/1 |goto 66.05,60.85
You can find more around:
[56.53,68.90]
[74.53,75.23]
|only if haveq(61707) or completedq(61707)
step
label "Slay_20_Devourers"
Slay Devourer enemies around this area
Slay #20# Devourers |q 61845/1 |goto 66.08,59.76
|only if haveq(61845) or completedq(61845)
step
label "Destroy_30_Manifestations"
Kill Manifestation enemies around this area
Destroy #30# Manifestations |q 61847/1 |goto 66.14,59.33
|only if haveq(61847) or completedq(61847)
step
label "Collect_40_Venthyr_Fangs"
Kill Depraved enemies around this area
collect 40 Venthyr Fang##182692 |q 61849/1 |goto 70.05,54.21
|only if haveq(61849) or completedq(61849)
step
click Prophet Kheva |goto 69.67,53.34
Inspect #7# Lost Sinstones |q 61734/1 |count 5
|only if haveq(61734) or completedq(61734)
step
label "Pillage_10_Hoarded_Anima_Cages"
click Hoarded Anima Cage+
|tip They look like small cages filled with red anima near objects around this area.
Pillage #10# Hoarded Anima Cages |q 61732/1 |goto 71.92,49.85
|only if haveq(61732) or completedq(61732)
step
click Lord Valthalak |goto 75.29,47.16
Inspect #7# Lost Sinstones |q 61734/1 |count 6
|only if haveq(61734) or completedq(61734)
step
click General Dugall |goto 78.49,36.18
Inspect #7# Lost Sinstones |q 61734/1 |count 7
|only if haveq(61734) or completedq(61734)
step
label "Awaken_15_Stoneborn_Allies"
click Stoneborn Ally+
|tip They look like statues of Stoneborn perched on ledges around this area.
Awaken #15# Stoneborn Allies |q 61735/1 |goto 57.62,37.25
You can find more around:
[53.81,48.12]
[41.24,41.53]
|only if haveq(61735) or completedq(61735)
step
label "Destroy_4_Sinstone_Golems"
kill 4 Sinstone Construct##159233 |q 61848/1 |goto 30.26,20.61
|only if haveq(61848) or completedq(61848)
step
label "Collect_20_Mire_Creepers"
click Mire Creeper+
|tip They look like tiny hunched-over humanoids walking in watery areas around this area.
collect 20 Mire Creeper##182583 |q 61733/1 |goto 46.12,68.41
You can find more around [62.54,52.80]
|only if haveq(61733) or completedq(61733)
step
label "Slay_25_Dreadbats"
Slay Dreadbat enemies around this area
|tip They fly or perch on objects around this area.
Slay #25# Dreadbats |q 61846/1 |goto 49.94,70.24
|only if haveq(61846) or completedq(61846)
step
talk Ironwing Fraado##173087
turnin Overdue Purging##61847 |goto 71.49,76.29
|only if readyq(61847) or completedq(61847)
step
talk John the Reanimator##173038
turnin Awaken Our Allies##61735 |goto 71.54,76.36
|only if readyq(61735) or completedq(61735)
step
talk Lord Harris##173248
turnin Edict of Doom: Devourers##61845 |goto 71.64,76.94 |only if readyq(61845) or completedq(61845)
turnin Edict of Doom: Sinstone Golems##61848 |goto 71.64,76.94 |only if readyq(61848) or completedq(61848)
turnin Edict of Doom: Dredbats##61846 |goto 71.64,76.94 |only if readyq(61846) or completedq(61846)
|only if readyq(61845,61848,61846) or completedq(61845,61848,61846)
step
talk Lady Sinrender##173532
turnin Census of Sins##61734 |goto 72.26,75.83
|only if readyq(61734) or completedq(61734)
step
talk Second Talon Shenraa##173042
turnin Old Habits Never Die##61732 |goto 72.37,76.03
|only if readyq(61732) or completedq(61732)
step
talk Thickman##173036
turnin Crumbled Reality##61707 |goto 71.33,74.45 |only if readyq(61707) or completedq(61707)
turnin Big Bag of Creepers##61733 |goto 71.33,74.45 |only if readyq(61733) or completedq(61733)
|only if readyq(61707,61733) or completedq(61707,61733)
step
talk Partially-eaten Iger##173630
turnin Take the Bite Out of 'Em##61849 |goto 71.21,74.34
|only if readyq(61849) or completedq(61849)
step
You have completed all Anima Conductor daily quests
|tip This guide will reset when more become available.
'|complete not completedq(61847,61735,61845,61848,61846,61734,61732,61707,61733,61849) |next "Begin_Dailies"
]])
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Shadowlands (50-60)\\Necrolords Covenant\\Necrolords Abomination Factory Weekly Quests",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the various daily quests unlocked through the Necrolords Abomination Factory.",
condition_suggested=function() return level >= 60 end,
condition_valid=function() return completedq(60041) end,
condition_valid_msg="You must unlock the Abomination Factory using the \"Necrolord Abomination Factory\" guide first!",
patch='90001',
},[[
step
label "Begin_Weekly_Quests"
talk Chordy##161270
accept Something Old, Something Used##58432 |goto Maldraxxus/0 55.15,68.61 |only if questpossible |or
accept A Bountiful Haul##61510 |goto 55.15,68.61 |only if questpossible |or
accept Shinies of Bastion##61509 |goto 55.15,68.61 |only if questpossible |or
accept Things They Leave Behind##61511 |goto 55.15,68.61 |only if questpossible |or
Accept the Weekly Quest |complete false or completedq(58432,61510,61509,61511) |goto 55.15,68.61 |or
|only if completedq(60041)
step
talk Chordy##161270
Tell it _"Let's go find some things."_
Recruit Chordy |q 58432/1 |goto Maldraxxus/0 55.15,68.61 |only if haveq(58432)
Recruit Chordy |q 61510/1 |goto 55.15,68.61 |only if haveq(61510)
Recruit Chordy |q 61509/1 |goto 55.15,68.61 |only if haveq(61509)
Recruit Chordy |q 61511/1 |goto 55.15,68.61 |only if haveq(61511)
|only if haveq(58432,61510,61509,61511)
step
talk Atticus##159238
accept A Brokered Deal##62213 |goto Maldraxxus/0 55.27,68.32 |only if questpossible |or
accept Asset Extraction##62256 |goto 55.27,68.32 |only if questpossible |or
accept Supply Chain##59126 |goto 55.27,68.32 |only if questpossible |or
Accept the Weekly Quest |complete false or completedq(62213,62256,59126) |goto 55.27,68.32 |or
|only if completedq(58410)
step
talk Atticus##159238
Tell it _"I need your assistance."_
Recruit Atticus |q 62213/1 |goto Maldraxxus/0 55.27,68.32 |only if haveq(62213)
Recruit Atticus |q 62256/1 |goto 55.27,68.32 |only if haveq(62256)
Recruit Atticus |q 59126/1 |goto 55.27,68.32 |only if haveq(59126)
|only if haveq(62213,62256,59126)
step
talk The Professor##159198
accept One Lich's Trash...##62294 |goto Maldraxxus/0 55.39,68.16 |only if questpossible |or
accept Scrounging for Scrolls##58515 |goto 55.39,68.16 |only if questpossible |or
accept The Two Sides of History##58525 |goto 55.39,68.16 |only if questpossible |or
Accept the Weekly Quest |complete false or completedq(62294,58515,58525) |goto 55.39,68.16 |or
|only if completedq(57601)
step
talk The Professor##159198
Tell it _"I need your assistance."_
Recruit The Professor |q 62294/1 |goto Maldraxxus/0 55.39,68.16 |only if haveq(62294)
Recruit The Professor |q 58515/1 |goto 55.39,68.16 |only if haveq(58515)
Recruit The Professor |q 58525/1 |goto 55.39,68.16 |only if haveq(58525)
|only if haveq(62294,58515,58525)
step
talk Roseboil##159241
accept Cure For All Ills##60765 |goto Maldraxxus/0 55.11,68.07 |only if questpossible |or
accept In A Bad Light##62041 |goto 55.11,68.07 |only if questpossible |or
Accept the Weekly Quest |complete false or completedq(60765,62041) |goto 55.11,68.07 |or
|only if completedq(57605)
step
talk Roseboil##159241
Tell it _"I need your assistance."_
Recruit Roseboil |q 60765/1 |goto Maldraxxus/0 55.11,68.07 |only if haveq(60765)
Recruit Roseboil |q 62041/1 |goto 55.11,68.07 |only if haveq(62041)
|only if haveq(60765,62041)
step
talk Toothpick##159212
accept Digging Around##62244 |goto Maldraxxus/0 54.90,67.80 |only if questpossible |or
accept Old Stomping Grounds##60237 |goto 54.90,67.80 |only if questpossible |or
Accept the Weekly Quest |complete false or completedq(62244,60237) |goto 54.90,67.80 |or
|only if completedq(58414)
step
talk Toothpick##159212
Tell it _"I need your assistance."_
Recruit Toothpick |q 62244/1 |goto Maldraxxus/0 54.90,67.80 |only if haveq(62244)
Recruit Toothpick |q 60237/1 |goto 54.90,67.80 |only if haveq(60237)
|only if haveq(62244,60237)
step
talk Sabrina##159226
accept Fighting Words##62194 |goto Maldraxxus/0 54.76,68.90 |only if questpossible |or
accept Say The Magic Words##61996 |goto 54.76,68.90 |only if questpossible |or
accept The Last Word##62195 |goto 54.76,68.90 |only if questpossible |or
Accept the Weekly Quest |complete false or completedq(62194,61996,62195) |goto 54.76,68.90 |or
|only if completedq(57600)
step
talk Sabrina##159226
Tell it _"I need your assistance."_
Recruit Sabrina |q 62194/1 |goto Maldraxxus/0 54.76,68.90 |only if haveq(62194)
Recruit Sabrina |q 61996/1 |goto 54.76,68.90 |only if haveq(61996)
Recruit Sabrina |q 62195/1 |goto 54.76,68.90 |only if haveq(62195)
|only if haveq(62194,61996,62195)
step
talk Marz##158301
accept Arboreal Tactics##62232 |goto Maldraxxus/0 54.24,68.65 |only if questpossible |or
accept Field Training##62217 |goto 54.24,68.65 |only if questpossible |or
accept Training Program##62216 |goto 54.24,68.65 |only if questpossible |or
Accept the Weekly Quest |complete false or completedq(62232,62217,62216) |goto 54.24,68.65 |or
|only if completedq(57611)
step
talk Marz##158301
Tell it _"I need your assistance."_
Recruit Marz |q 62232/1 |goto Maldraxxus/0 54.24,68.65 |only if haveq(62232)
Recruit Marz |q 62217/1 |goto 54.24,68.65 |only if haveq(62217)
Recruit Marz |q 62216/1 |goto 54.24,68.65 |only if haveq(62216)
|only if haveq(62232,62217,62216)
step
talk Flytrap##158300
|tip It walks around this area.
accept Corpse Run##60291 |goto Maldraxxus/0 54.31,68.11 |only if questpossible |or
accept Corpse Run##61522 |goto 54.31,68.11 |only if questpossible |or
accept Corpse Run##61523 |goto 54.31,68.11 |only if questpossible |or
Accept the Weekly Quest |complete false or completedq(60291,61522,61523) |goto 54.31,68.11 |or
|only if completedq(57597)
step
talk Flytrap##158300
Tell it _"I need your assistance."_
Recruit Flytrap |q 60291/1 |goto Maldraxxus/0 54.31,68.11 |only if haveq(60291)
Recruit Flytrap |q 61522/1 |goto 54.31,68.11 |only if haveq(61522)
Recruit Flytrap |q 61523/1 |goto 54.31,68.11 |only if haveq(61523)
|only if haveq(60291,61522,61523)
step
talk Gas Bag##159240
accept Herbicidal Tendencies##62407 |goto Maldraxxus/0 54.20,68.00 |only if questpossible |or
accept Special Formula##59293 |goto 54.20,68.00 |only if questpossible |or
Accept the Weekly Quest |complete false or completedq(62407,59293) |goto 54.20,68.00 |or
|only if completedq(57608)
step
talk Gas Bag##159240
Tell it _"I need your assistance."_
Recruit Gas Bag |q 62407/1 |goto Maldraxxus/0 54.90,67.80 |only if haveq(62407)
Recruit Gas Bag |q 59293/1 |goto 54.90,67.80 |only if haveq(59293)
|only if haveq(62407,59293)
step
talk Mama Tomalin##161678
accept Give A Dog A Bone##56470 |goto Maldraxxus/0 55.20,68.61 |only if questpossible |or
accept Pie Not?##58992 |goto 55.20,68.61 |only if questpossible |or
Accept the Weekly Quest |complete false or completedq(56470,58992) |goto 55.20,68.61 |or
|only if completedq(60216)
step
talk Naxx##158301
accept Drink to the Dead##62276 |goto Maldraxxus/0 54.19,68.59
|only if completedq(58413)
step
talk Naxx##158301
Tell it _"I need your assistance."_
Recruit Naxx |q 62276/1 |goto Maldraxxus/0 54.19,68.59
|only if haveq(62276)
step
talk Iron Phillip##159199
accept Bring Your Own##57634 |goto Maldraxxus/0 55.4,68.2
|only if completedq(58411)
step
talk Iron Phillip##159199
Tell it _"I need your assistance."_
Recruit Iron Phillip |q 57634/1 |goto Maldraxxus/0 55.4,68.2
|only if haveq(57634)
step
talk Guillotine##159214
accept Cut 'Em Down to Size##60342 |goto Maldraxxus/0 54.43,67.89 |only if questpossible |or
accept Grinder##62261 |goto 54.43,67.89 |only if questpossible |or
accept Hands on Approach##60340 |goto 54.43,67.89 |only if questpossible |or
Accept the Weekly Quest |complete false or completedq(60342,62261,60340) |goto 54.43,67.89 |or
|only if completedq(58416)
step
talk Guillotine##159214
Tell it _"I need your assistance."_
Recruit Guillotine |q 60342/1 |goto Maldraxxus/0 54.43,67.89 |only if haveq(60342)
Recruit Guillotine |q 62261/1 |goto 54.43,67.89 |only if haveq(62261)
Recruit Guillotine |q 60340/1 |goto 54.43,67.89 |only if haveq(60340)
|only if haveq(60342,62261,60340)
step
'|use Call Chordy##178554
Use the _"Lucky Note"_ ability
|tip It appears as a button on the screen.
|tip Use it to have Chordy salvage for items.
|tip Try to stay in flat areas to avoid something spawning in an inacessible spot.
|tip You can have Chordy search anywhere in Maldraxxus.
|tip You can complete this quest while mounted.
|tip Use the "Call Chordy" item if it dies or disappears.
|tip To switch abominations, dismiss your current companion by talking to it and telling it to go home.
click Salvageable Goods##167828
|tip They look like small sacks on the ground after Chordy searches.
|tip Chordy will not always find something.
Collect #10# Valuable Salvage in Maldraxxus |q 58432/2 |goto Maldraxxus/0 44.30,50.86
|only if haveq(58432)
step
'|use Call Roseboil##178680
Use the _"Regenerative Molt"_ ability
|tip It appears as a button on the screen.
|tip Use it near Plague-ridden Survivor NPCs around this area.
|tip They look like humanoid NPCs standing and laying down around this area.
|tip Use the "Call Roseboil" item if it dies or disappears.
|tip To switch abominations, dismiss your current companion by talking to it and telling it to go home.
Cure #15# Plague-ridden Survivors with Roseboil |q 60765/2 |goto Maldraxxus/0 58.11,63.29
|only if haveq(60765)
step
click Broker Portal |goto Maldraxxus/0 53.70,47.21
Use the Broker Portal |goto Chill's Reach/0 37.07,75.72 < 1000 |c |noway
|only if haveq(62213)
step
'|use Call Atticus##178678
_Next to you:_
talk Atticus##159238
|tip Use the "Call Atticus" item if it dies or disappears.
|tip To switch abominations, dismiss your current companion by talking to it and telling it to go home.
buy 1 Strength of Fire##183857 |q 62213
|only if haveq(62213)
step
'|use Call Atticus##178678
use the Strength of Fire##183857
|tip Use the "Call Atticus" item if it dies or disappears.
|tip To switch abominations, dismiss your current companion by talking to it and telling it to go home.
Gain the Strength of Fire |havebuff spell:343191 |q 62213
|only if haveq(62213)
step
'|use Call Atticus##178678
talk Acquisition Facilitator##173839+
|tip They look like corpspes on the ground all over Chill's Reach.
|tip Use the "Call Atticus" item if it dies or disappears.
|tip To switch abominations, dismiss your current companion by talking to it and telling it to go home.
Choose _Search the body._
Search #4# Broker Corpses |q 62213/3 |goto 49.71,45.75
|only if haveq(62213)
step
'|use Call Atticus##178678
kill Chilled Crustburster##173834
|tip Avoid standing in front of it when it casts "Frozen Sweep."
|tip Standing in "Frost Patch" on the ground will make it difficult to avoid the sweep.
|tip Use the "Call Atticus" item if it dies or disappears.
|tip To switch abominations, dismiss your current companion by talking to it and telling it to go home.
collect Broker Bauble##183119 |q 62213/4 |goto 60.83,41.02
|only if haveq(62213)
step
click Broker Portal |goto 36.60,78.27
Return to Maldraxxus |goto Maldraxxus/0 53.77,47.53 < 1000 |c |noway
|only if haveq(62213)
step
talk Au'narim##159830
turnin A Brokered Deal##62213 |goto Maldraxxus/0 53.60,47.51
|only if haveq(62213)
step
'|use Call Atticus##178678
_Next to you:_
talk Atticus##159238
|tip Use the "Call Atticus" item if it dies or disappears.
|tip To switch abominations, dismiss your current companion by talking to it and telling it to go home.
buy 1 Slim Shinbone##178681 |q 59126
|only if haveq(59126)
stickystart "Collect_Ossien_Battlemail"
step
'|use Call Atticus##178678
click Atticus's Lockbox##352018
|tip Use the "Call Atticus" item if it dies or disappears.
|tip To switch abominations, dismiss your current companion by talking to it and telling it to go home.
collect Atticus's Ledger##178682 |q 59126/3 |goto Maldraxxus/0 55.11,55.08
|only if haveq(59126)
step
label "Collect_Ossien_Battlemail"
'|use Call Atticus##178678
click Ossien Battlemail##352021+
|tip They look like discarded pieces of armor on the ground around this area.
|tip Use the "Call Atticus" item if it dies or disappears.
|tip To switch abominations, dismiss your current companion by talking to it and telling it to go home.
collect 10 Ossien Battlemail##175133 |q 59126/2 |goto Maldraxxus/0 54.77,56.82
|only if haveq(59126)
step
'|use Call Flytrap##178599
Use the _"Uber Lift"_ ability
|tip It appears as a button on the screen.
|tip Use the "Call Flytrap" item if it dies or disappears.
|tip To switch abominations, dismiss your current companion by talking to it and telling it to go home.
Ride Flytrap |q 60291/2 |goto Maldraxxus/0 63.44,57.77
|only if haveq(60291)
step
'|use Call Flytrap##178599
click Salvageable Carcass##334899
|tip Use the "Call Flytrap" item if it dies or disappears.
|tip To switch abominations, dismiss your current companion by talking to it and telling it to go home.
Pick Up the Carcass |havebuff spell:307787 |q 60291 |goto Maldraxxus/0 63.44,57.77
|only if haveq(60291)
step
Follow the road |goto 60.50,59.64 < 30 |walk
Continue following the road |goto 56.47,58.79 < 30 |walk
Run up the stairs |goto 55.62,63.44 < 20 |walk
Run up the stairs |goto 53.82,67.07 < 20 |walk
'|use Call Flytrap##178599
Return a Salvageable Carcass to Rathan in Butcher's Block |q 60291/3 |goto Maldraxxus/0 54.98,68.63 |notravel
|tip Use the "Monstrous Effort" ability to build up a stacking speed buff.
|tip The "Sudden Stop" ability will stop you instantly.
|tip Avoid enemies when possible and use "Mindless Strikes" to defend yourself when necessary.
|tip Avoid outpacing the carcass too far or it will disappear.
|tip Use the "Call Flytrap" item if it dies or disappears.
|tip To switch abominations, dismiss your current companion by talking to it and telling it to go home.
|only if haveq(60291)
step
'|use Call Flytrap##178599
Use the _"Uber Lift"_ ability
|tip It appears as a button on the screen.
|tip Use the "Call Flytrap" item if it dies or disappears.
|tip To switch abominations, dismiss your current companion by talking to it and telling it to go home.
Ride Flytrap |q 61522/2 |goto Maldraxxus/0 43.89,47.52
|only if haveq(61522)
step
'|use Call Flytrap##178599
click Salvageable Carcass##334899
|tip Use the "Call Flytrap" item if it dies or disappears.
|tip To switch abominations, dismiss your current companion by talking to it and telling it to go home.
Pick Up the Carcass |havebuff spell:307787 |q 61522 |goto Maldraxxus/0 43.89,47.52
|only if haveq(61522)
step
'|use Call Flytrap##178599
Follow the path |goto 46.13,51.84 < 30 |only if walking
Follow the path |goto 48.29,55.07 < 30 |only if walking
Cross the bridge |goto 50.40,57.21 < 30 |only if walking
Run up the stairs |goto 50.39,65.34 < 20 |only if walking
Follow the path |goto 50.82,66.90 < 30 |only if walking
Return a Salvageable Carcass to Rathan in Butcher's Block |q 61522/3 |goto Maldraxxus/0 54.98,68.63 |notravel
|tip Use the "Monstrous Effort" ability to build up a stacking speed buff.
|tip The "Sudden Stop" ability will stop you instantly.
|tip Avoid enemies when possible and use "Mindless Strikes" to defend yourself when necessary.
|tip Avoid outpacing the carcass too far or it will disappear.
|tip Use the "Call Flytrap" item if it dies or disappears.
|tip To switch abominations, dismiss your current companion by talking to it and telling it to go home.
|only if haveq(61522)
step
'|use Call Flytrap##178599
Use the _"Uber Lift"_ ability
|tip It appears as a button on the screen.
|tip Use the "Call Flytrap" item if it dies or disappears.
|tip To switch abominations, dismiss your current companion by talking to it and telling it to go home.
Ride Flytrap |q 61523/2 |goto Maldraxxus/0 55.66,44.25
|only if haveq(61523)
step
'|use Call Flytrap##178599
click Salvageable Carcass##334899
|tip Use the "Call Flytrap" item if it dies or disappears.
|tip To switch abominations, dismiss your current companion by talking to it and telling it to go home.
Pick Up the Carcass |havebuff spell:307787 |q 61523 |goto Maldraxxus/0 55.66,44.25
|only if haveq(61523)
step
'|use Call Flytrap##178599
Follow the path |goto 56.16,57.02 < 30 |only if walking
Run up the stairs |goto 55.67,64.32 < 20 |only if walking
Return a Salvageable Carcass to Rathan in Butcher's Block |q 61523/3 |goto Maldraxxus/0 54.98,68.63 |notravel
|tip Use the "Monstrous Effort" ability to build up a stacking speed buff.
|tip The "Sudden Stop" ability will stop you instantly.
|tip Avoid enemies when possible and use "Mindless Strikes" to defend yourself when necessary.
|tip Avoid outpacing the carcass too far or it will disappear.
|tip Use the "Call Flytrap" item if it dies or disappears.
|tip To switch abominations, dismiss your current companion by talking to it and telling it to go home.
|only if haveq(61523)
step
'|use Call Gas Bag##183133
use the Slime Siphon##175842
|tip Use it near the Absorbing Pox.
|tip Use the "Call Gas Bag" item if it dies or disappears.
|tip To switch abominations, dismiss your current companion by talking to it and telling it to go home.
collect 100 Pox Nodules##175843 |q 59293/2 |goto Maldraxxus/0 61.34,81.63
|only if haveq(59293)
step
use the Tasty Bone##174270
|tip Use it next to Marrowgrub Nibblers.
|tip They look like small white maggots on the ground around these areas.
kill Giant Marrowgrub##161566+
|tip They will spawn from Nibblers after Dog Bone pounces on them.
collect 12 Marrowgrub Flesh##183796 |q 56470/1 |goto Maldraxxus/0 51.72,54.36
You can find more around [54.93,50.29]
|only if haveq(56470)
step
Enter the cave |goto Maldraxxus/0 58.31,33.65 < 20 |walk
click Maldraxxi Bone Marrow##349574+
|tip Inside the cave.
collect 4 Maldraxxi Bone Marrow##177879 |q 58992/1 |goto 57.30,34.49
|only if haveq(58992)
step
'|use Call Professor##183142
click Pile of Debris##358339+
|tip They look like piles of dirt and bones on the ground around this area.
|tip Use the "Call Professor" item if it dies or disappears.
|tip To switch abominations, dismiss your current companion by talking to it and telling it to go home.
collect 1 Intriguing Ancient Relic##183398 |q 62294/2 |goto Maldraxxus/0 70.31,34.16
|only if haveq(62294)
step
Enter the crypt |goto Revendreth/0 41.87,50.13 < 15 |walk
'|use Call Professor##183142
click The Malice of Maldraxxus##358321
|tip Downstairs inside the crypt.
|tip Use the "Call Professor" item if it dies or disappears.
|tip To switch abominations, dismiss your current companion by talking to it and telling it to go home.
Recover "The Malice of Maldraxxus" |q 58525/3 |goto 42.06,49.14
|only if haveq(58525)
step
'|use Call Professor##183142
click On Bone and Stone
|tip Downstairs inside the crypt.
|tip Use the "Call Professor" item if it dies or disappears.
|tip To switch abominations, dismiss your current companion by talking to it and telling it to go home.
Recover "On Bone and Stone" |q 58525/2 |goto 42.60,50.77
|only if haveq(58525)
step
'|use Call Marz##178679
kill Decadious##171381 |q 62216/2 |goto Maldraxxus/0 66.38,52.41
|tip This enemy is elite and may require a group.
|tip Use the "Call Marz" item if it dies or disappears.
|tip To switch abominations, dismiss your current companion by talking to it and telling it to go home.
|only if haveq(62216)
step
'|use Call Iron Phillip##182959
kill Scunner##158406 |q 57634/2 |goto Maldraxxus/0 62.11,75.81
|tip This enemy is elite and may require a group.
|tip Use the "Call Iron Phillip" item if it dies or disappears.
|tip To switch abominations, dismiss your current companion by talking to it and telling it to go home.
|only if haveq(57634)
stickystart "Collect_Chosen_Razorstones"
step
'|use Call Guillotine##183127
click Bonesheared Grinder##335503+
|tip Use the "Call Guillotine" item if it dies or disappears.
|tip To switch abominations, dismiss your current companion by talking to it and telling it to go home.
Collect #3# Bonesheared Grinders |q 62261/3 |goto Maldraxxus/0 41.03,61.11
|only if haveq(62261)
step
label "Collect_Chosen_Razorstones"
'|use Call Guillotine##183127
Kill enemies around this area
|tip Use the "Call Guillotine" item if it dies or disappears.
|tip To switch abominations, dismiss your current companion by talking to it and telling it to go home.
collect 12 Chosen Razorstone##183138 |q 62261/2 |goto Maldraxxus/0 38.94,65.12
|only if haveq(62261)
step
'|use Call Guillotine##183127
kill Wurtzog Soultap##168324 |q 60340/2 |goto Maldraxxus/0 37.03,38.58
|tip Use the "Call Guillotine" item if it dies or disappears.
|tip To switch abominations, dismiss your current companion by talking to it and telling it to go home.
|only if haveq(60340)
step
'|use Call Guillotine##183127
click Anima Traces##352070+
|tip They look like bowls of crystals around this area.
|tip Use the "Call Guillotine" item if it dies or disappears.
|tip To switch abominations, dismiss your current companion by talking to it and telling it to go home.
collect 12 Anima Traces##178788 |q 60340/3 |goto Maldraxxus/0 36.73,37.87
|only if haveq(60340)
step
'|use Call Chordy##178554
Use the _"Lucky Note"_ ability
|tip It appears as a button on the screen.
|tip Use it to have Chordy salvage for items.
|tip Try to stay in flat areas to avoid something spawning in an inacessible spot.
|tip You can have Chordy search anywhere in Bastion.
|tip You can complete this quest while mounted.
|tip Use the "Call Chordy" item if it dies or disappears.
|tip To switch abominations, dismiss your current companion by talking to it and telling it to go home.
click Salvageable Goods##167828
|tip They look like small sacks on the ground after Chordy searches.
|tip Chordy will not always find something.
Collect #10# Valuable Salvage in Bastion |q 61509/2 |goto Bastion/0 58.70,52.90
|only if haveq(61509)
stickystart "Collect_8_Scrolls_of_the_Path"
step
'|use Call Professor##183142
click The Roles of Kyrian and Their Importance to the Shadowlands: Volume 1##358377
|tip Use the "Call Professor" item if it dies or disappears.
|tip To switch abominations, dismiss your current companion by talking to it and telling it to go home.
collect 1 The Roles of Kyrian and Their Importance to the Shadowlands: Volume 1##358377 |q 58515/3 |goto Bastion/0 67.66,43.24
|only if haveq(58515)
step
label "Collect_8_Scrolls_of_the_Path"
Kill Humanoid enemies around this area
|tip Use the "Call Professor" item if it dies or disappears.
|tip To switch abominations, dismiss your current companion by talking to it and telling it to go home.
collect 8 Scroll of the Path##175275 |q 58515/2 |goto Bastion/0 65.18,46.30
|only if haveq(58515)
step
'|use Call Marz##178679
Kill enemies around this area
|tip Use the "Call Marz" item if it dies or disappears.
|tip To switch abominations, dismiss your current companion by talking to it and telling it to go home.
Slay #15# Forsworn Forces |q 62217/2 |goto Bastion/0 51.32,17.33
|only if haveq(62217)
stickystart "Impart_Ancient_Teachings_Upon_Sabrina"
step
'|use Call Sabrina##182474
Kill enemies around this area
|tip Use the "Call Sabrina" item if it dies or disappears.
|tip To switch abominations, dismiss your current companion by talking to it and telling it to go home.
Defeat #8# Forsworn Forces |q 62194/3 |goto Bastion/0 64.22,43.36
|only if haveq(62194)
step
label "Impart_Ancient_Teachings_Upon_Sabrina"
'|use Call Sabrina##182474
clicknpc Kyrian Steward##173683+
|tip They look like short bipedal owls carrying scrolls around this area.
|tip Use the "Call Sabrina" item if it dies or disappears.
|tip To switch abominations, dismiss your current companion by talking to it and telling it to go home.
Impart #8# Ancient Teachings Upon Sabrina |q 62194/2 |goto Bastion/0 64.22,43.36
|only if haveq(62194)
stickystart "Slay_Bristlecone_Sprigans"
step
'|use Call Naxx##183128
Recruit #2# Kyrian Stewards |q 62276/2
|tip Use the "Call Naxx" item if it dies or disappears.
|tip To switch abominations, dismiss your current companion by talking to it and telling it to go home.
|only if haveq(62276)
step
label "Slay_Bristlecone_Sprigans"
'|use Call Naxx##183128
collect 24 Purified Nectar##183186 |q 62276/3
|tip Use the "Call Naxx" item if it dies or disappears.
|tip To switch abominations, dismiss your current companion by talking to it and telling it to go home.
|only if haveq(62276)
step
'|use Call Chordy##178554
Use the _"Lucky Note"_ ability
|tip It appears as a button on the screen.
|tip Use it to have Chordy salvage for items.
|tip Try to stay in flat areas to avoid something spawning in an inacessible spot.
|tip You can have Chordy search anywhere in Ardenweald.
|tip You can complete this quest while mounted.
|tip Use the "Call Chordy" item if it dies or disappears.
|tip To switch abominations, dismiss your current companion by talking to it and telling it to go home.
click Salvageable Goods##167828
|tip They look like small sacks on the ground after Chordy searches.
|tip Chordy will not always find something.
Collect #10# Valuable Salvage in Ardenweald |q 61510/2 |goto Ardenweald/0 66.29,40.51
|only if haveq(61510)
step
'|use Call Atticus##178678
talk Tabithia##173918
Tell her _"I was told you have something for Au'larrynar..."_
|tip Use the "Call Atticus" item if it dies or disappears.
|tip To switch abominations, dismiss your current companion by talking to it and telling it to go home.
Locate Tabitha |q 62256/2 |goto Ardenweald/0 49.19,20.82
|only if haveq(62256)
step
'|use Call Atticus##178678
kill Izik the Dissolver##173940
|tip Use the "Call Atticus" item if it dies or disappears.
|tip To switch abominations, dismiss your current companion by talking to it and telling it to go home.
collect Otherworldly Egg##183130 |q 62256/3 |goto Ardenweald/0 47.56,20.52
|only if haveq(62256)
step
'|use Call Toothpick##183043
Use the _"World Shaker"_ ability
|tip It appears as a button on the screen.
|tip Use it within the quest circles indicated on the minimap.
clicknpc Lost Animacone##173787+
|tip They look like silver and blue acorns that appear from the ground around this area.
|tip They will sometimes appear after using "World Shaker."
|tip Use the "Call Toothpick" item if it dies or disappears.
|tip To switch abominations, dismiss your current companion by talking to it and telling it to go home.
collect 15 Lost Animacone##183074 |q 60237/2 |goto Ardenweald/0 51.85,75.78
|only if haveq(60237)
step
'|use Call Gas Bag##183133
Kill Rotbloom enemies around this area.
|tip Make sure Gas Bag is next to you.
|tip Use the "Call Gas Bag" item if it dies or disappears.
|tip To switch abominations, dismiss your current companion by talking to it and telling it to go home.
collect 18 Rotbloom Petal##183719 |q 62407/2 |goto Ardenweald/0 71.73,28.30
|only if haveq(62407)
stickystart "Slay_Bristlecone_Sprigans"
step
'|use Call Marz##178679
kill Deranged Guardian##166735 |q 62232/3 |goto Ardenweald/0 28.47,53.57
|tip This enemy is elite and may require a group.
|tip Use the "Call Marz" item if it dies or disappears.
|tip To switch abominations, dismiss your current companion by talking to it and telling it to go home.
|only if haveq(62232)
step
label "Slay_Bristlecone_Sprigans"
'|use Call Marz##178679
Kill Bristlecone enemies around this area
|tip Use the "Call Marz" item if it dies or disappears.
|tip To switch abominations, dismiss your current companion by talking to it and telling it to go home.
Slay #12# Bristlecone Sprigans |q 62232/2 |goto Ardenweald/0 28.47,53.57
|only if haveq(62232)
step
'|use Call Chordy##178554
Use the _"Lucky Note"_ ability
|tip It appears as a button on the screen.
|tip Use it to have Chordy salvage for items.
|tip Try to stay in flat areas to avoid something spawning in an inacessible spot.
|tip You can have Chordy search anywhere in Revendreth.
|tip You can complete this quest while mounted.
|tip Use the "Call Chordy" item if it dies or disappears.
|tip To switch abominations, dismiss your current companion by talking to it and telling it to go home.
click Salvageable Goods##167828
|tip They look like small sacks on the ground after Chordy searches.
|tip Chordy will not always find something.
Collect #10# Valuable Salvage in Revendreth |q 61511/2 |goto Revendreth/0 45.98,67.67
|only if haveq(61511)
step
'|use Call Roseboil##178680
Use the _"Regenerative Molt"_ ability
|tip It appears as a button on the screen.
|tip Use it near Light-Seared Exile NPCs around this area.
|tip They look like scared ghouls around this area.
|tip Use the "Call Roseboil" item if it dies or disappears.
|tip To switch abominations, dismiss your current companion by talking to it and telling it to go home.
Cure #15# Light-Seared Exiles with Roseboil |q 62041/2 |goto Revendreth/0 35.73,56.36
|only if haveq(62041)
step
'|use Call Toothpick##183043
Use the _"Toothpick's World Shaker"_ ability
|tip It appears as a button on the screen.
|tip Use it within the quest circles indicated on the minimap.
clicknpc Anima Cache##173801+
|tip They look like black lanterns with red gems on them that appear from the ground around this area.
|tip They will sometimes appear after using "Toothpick's World Shaker."
|tip Use the "Call Toothpick" item if it dies or disappears.
|tip To switch abominations, dismiss your current companion by talking to it and telling it to go home.
Collect #15# Lost Anima Caches |q 62244/2 |goto Revendreth/0 43.90,64.99
|only if haveq(62244)
step
Enter the crypt |goto Revendreth/0 41.88,50.12 < 7 |walk
'|use Call Professor##183142
click On Bone and Stone##340019
|tip Downstairs inside the crypt.
|tip Use the "Call Professor" item if it dies or disappears.
|tip To switch abominations, dismiss your current companion by talking to it and telling it to go home.
Recover "On Bone and Stone" |q 58525/2 |goto Revendreth/0 42.61,50.77
|only if haveq(58525)
step
'|use Call Guillotine##183127
kill Charthox##157869 |q 60342/2 |goto Revendreth/0 75.46,76.46
|tip This enemy is elite and may require a group.
|tip Use the "Call Guillotine" item if it dies or disappears.
|tip To switch abominations, dismiss your current companion by talking to it and telling it to go home.
|only if haveq(60342)
step
'|use Call Sabrina##182474
Kill Nefarious enemies around this area
click Archivam Tome+
|tip They look like small books on the ground around this area.
|tip Sabrina must be with you for this quest.
|tip Use the "Call Sabrina" item if it dies or disappears.
|tip To switch abominations, dismiss your current companion by talking to it and telling it to go home.
Give #12# Archivam Tomes to Sabrina |q 61996/2 |goto Revendreth/0 78.40,37.75
|only if haveq(61996)
step
'|use Call Sabrina##182474
Kill Depraved enemies around this area
|tip Use the "Call Sabrina" item if it dies or disappears.
|tip To switch abominations, dismiss your current companion by talking to it and telling it to go home.
collect Inquisitor's Crypt Key##182957 |q 62195/2 |goto Revendreth/0 69.12,43.98
|only if haveq(62195)
step
'|use Call Sabrina##182474
click Inquisitor's Crypt Door
|tip Use the "Call Sabrina" item if it dies or disappears.
|tip To switch abominations, dismiss your current companion by talking to it and telling it to go home.
Free Inquisitor Darksion |q 62195/3 |goto Revendreth/0 67.55,39.23
|only if haveq(62195)
step
'|use Call Sabrina##182474
Use the "Hungering Heart" ability
|tip It appears as a button on the screen.
Kill Depraved enemies around this area
|tip Kill them next to the big red orb.
|tip Use the "Call Sabrina" item if it dies or disappears.
|tip To switch abominations, dismiss your current companion by talking to it and telling it to go home.
Slay #12# Depraved Forces |q 62195/4 |goto Revendreth/0 69.12,43.98
|only if haveq(62195)
step
talk Au'larrynar##166640
turnin Asset Extraction##62256 |goto Maldraxxus/0 53.63,47.92
|only if haveq(62256)
step
talk Rathan##167150
turnin Something Old, Something Used##58432 |goto Maldraxxus/0 55.10,68.78 |only if haveq(58432)
turnin A Bountiful Haul##61510 |goto 55.10,68.78 |only if haveq(61510)
turnin Shinies of Bastion##61509 |goto 55.10,68.78 |only if haveq(61509)
turnin Things They Leave Behind##61511 |goto 55.10,68.78 |only if haveq(61511)
turnin Cure For All Ills##60765 |goto 55.10,68.78 |only if haveq(60765)
turnin In A Bad Light##62041 |goto 55.10,68.78 |only if haveq(62041)
turnin Supply Chain##59126 |goto 55.10,68.78 |only if haveq(59126)
turnin Corpse Run##60291 |goto 55.10,68.78 |only if haveq(60291)
turnin Corpse Run##61522 |goto 55.10,68.78 |only if haveq(61522)
turnin Corpse Run##61523 |goto 55.10,68.78 |only if haveq(61523)
turnin Digging Around##62244 |goto 55.10,68.78 |only if haveq(62244)
turnin Old Stomping Grounds##60237 |goto 55.10,68.78 |only if haveq(60237)
turnin Herbicidal Tendencies##62407 |goto 55.10,68.78 |only if haveq(62407)
turnin Special Formula##59293 |goto 55.10,68.78 |only if haveq(59293)
turnin Give A Dog A Bone##56470 |goto 55.20,68.61 |only if haveq(56470)
turnin Pie Not?##58992 |goto 55.20,68.61 |only if haveq(58992)
turnin One Lich's Trash...##62294 |goto 55.10,68.78 |only if haveq(62294)
turnin Scrounging for Scrolls##58515 |goto 55.10,68.78 |only if haveq(58515)
turnin The Two Sides of History##58525 |goto 55.10,68.78 |only if haveq(58525)
turnin Arboreal Tactics##62232 |goto 55.10,68.78 |only if haveq(62232)
turnin Field Training##62217 |goto 55.10,68.78 |only if haveq(62217)
turnin Training Program##62216 |goto 55.10,68.78 |only if haveq(62216)
turnin Drink to the Dead##62276 |goto 55.10,68.78 |only if haveq(62276)
turnin Bring Your Own##57634 |goto 55.10,68.78 |only if haveq(57634)
turnin Fighting Words##62194 |goto 55.10,68.78 |only if haveq(62194)
turnin Say The Magic Words##61996 |goto 55.10,68.78 |only if haveq(61996)
turnin The Last Word##62195 |goto 55.10,68.78 |only if haveq(62195)
turnin Cut 'Em Down to Size##60342 |goto 55.10,68.78 |only if haveq(60342)
turnin Grinder##62261 |goto 55.10,68.78 |only if haveq(62261)
turnin Hands on Approach##60340 |goto 55.10,68.78 |only if haveq(60340)
|only if haveq(58432,61510,61509,61511,60765,62041,59126,60291,61522,61523,62244,60237,62407,59293,56470,58992,62294,58515,58525,62232,62217,62216,62276,57634,62194,61996,62195,60342,62261,60340)
step
You have completed all available weekly quests
|tip This guide will reset when more become available.
'|complete completedq(60041) and not completedq(58432,61510,61509,61511) |next "Begin_Weekly_Quests" |or
'|complete completedq(57605) and not completedq(60765,62041) |next "Begin_Weekly_Quests" |or
'|complete completedq(58410) and not completedq(62213,62256,59126) |next "Begin_Weekly_Quests" |or
'|complete completedq(57597) and not completedq(60291,61522,61523) |next "Begin_Weekly_Quests" |or
'|complete completedq(58414) and not completedq(62244,60237) |next "Begin_Weekly_Quests" |or
'|complete completedq(57608) and not completedq(62407,59293) |next "Begin_Weekly_Quests" |or
'|complete completedq(60216) and not completedq(56470,58992) |next "Begin_Weekly_Quests" |or
'|complete completedq(57601) and not completedq(62294,58515,58525) |next "Begin_Weekly_Quests" |or
'|complete completedq(57611) and not completedq(62232,62217,62216) |next "Begin_Weekly_Quests" |or
'|complete completedq(58413) and not completedq(62276) |next "Begin_Weekly_Quests" |or
'|complete completedq(58411) and not completedq(57634) |next "Begin_Weekly_Quests" |or
'|complete completedq(57600) and not completedq(62194,61996,62195) |next "Begin_Weekly_Quests" |or
'|complete completedq(58416) and not completedq(60342,62261,60340) |next "Begin_Weekly_Quests" |or
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Shadowlands (50-60)\\Night Fae Covenant\\Night Fae Queen's Conservatory Daily Quests",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the various daily quests unlocked through the Night Fae Queen's Conservatory.",
condition_suggested=function() return level >= 60 end,
condition_valid=function() return covenantfeature("Covenant Unique") >= 1 end,
condition_valid_msg="You must unlock the Queen's Conservatory to use this guide!",
patch='90001',
},[[
step
label "Begin_Dailies"
talk Warden Casad##166476
accept Fair Exchange for a Soul##62441 |goto Queen's Conservatory/0 33.35,62.31
step
talk Conservator Aoni##174324
accept Aid the Covenant##62444 |goto 32.06,61.97 |only if questpossible |or
accept Aid the Covenant##62442 |goto 32.06,61.97 |only if questpossible |or
accept Aid the Covenant##62443 |goto 32.06,61.97 |only if questpossible |or
Accept the Daily Quest |complete false |goto 32.06,61.97 |or
|only if covenantfeature("Covenant Unique") >= 2
step
talk Falir the Shifting##174273
|tip Inside the building.
accept A Spirit's Duty##62449 |goto 24.02,53.02 |only if questactive(62449) |or
accept A Spirit's Might##62452 |goto 24.02,53.02 |only if questactive(62452) |or
accept A Spirit's Pride##62445 |goto 24.02,53.02 |only if questactive(62445) |or
accept A Spirit's Heart##62450 |goto 24.02,53.02 |only if questactive(62450) |or
Accept the Weekly Quest |complete false or not questactive(62449,62452,62445,62450) |goto 24.02,53.02 |or
|only if completedq(62454)
step
Collect a Dutiful Spirit |complete itemcount(178881,178879,178880) >= 1
|tip You can collect these from mobs in The Maw, quests in The Maw, or the Queen's Conservatory daily quests.
|only if haveq(62449)
step
use the Dutiful Spirit##178881 |only if itemcount(178881) >= 1
use the Greater Dutiful Spirit##178880 |only if itemcount(178880) >= 1
use the Divine Dutiful Spirit##178879 |only if itemcount(178879) >= 1
|tip Use it on a Wildseed of Regrowth.
Place a Dutiful Spirit in a Wildseed |q 62449/1 |goto 37.39,45.72
|only if haveq(62449)
step
Collect a Martial Spirit |complete itemcount(178874,178878,178877) >= 1
|tip You can collect these from mobs in The Maw, quests in The Maw, or the Queen's Conservatory daily quests.
|only if haveq(62452)
step
use the Martial Spirit##178874 |only if itemcount(178874) >= 1
use the Greater Martial Spirit##178877 |only if itemcount(178877) >= 1
use the Divine Martial Spirit##178878 |only if itemcount(178878) >= 1
|tip Use it on a Wildseed of Regrowth.
Place a Martial Spirit in a Wildseed |q 62452/1 |goto 37.39,45.72
|only if haveq(62452)
step
Collect a Prideful Spirit |complete itemcount(178882,178884,178883) >= 1
|tip You can collect these from mobs in The Maw, quests in The Maw, or the Queen's Conservatory daily quests.
|only if haveq(62445)
step
use the Prideful Spirit##178882 |only if itemcount(178882) >= 1
use the Greater Prideful Spirit##178883 |only if itemcount(178883) >= 1
use the Divine Prideful Spirit##178884 |only if itemcount(178884) >= 1
|tip Use it on a Wildseed of Regrowth.
Place a Prideful Spirit in a Wildseed |q 62445/1 |goto 37.39,45.72
|only if haveq(62445)
step
Collect a Untamed Spirit |complete itemcount(177698,177700,177699) >= 1
|tip You can collect these from mobs in The Maw, quests in The Maw, or the Queen's Conservatory daily quests.
|only if haveq(62450)
step
use the Untamed Spirit##177698 |only if itemcount(177698) >= 1
use the Greater Untamed Spirit##177699 |only if itemcount(177699) >= 1
use the Divine Untamed Spirit##177700 |only if itemcount(177700) >= 1
|tip Use it on a Wildseed of Regrowth.
Place a Untamed Spirit in a Wildseed |q 62450/1 |goto 37.39,45.72
|only if haveq(62450)
step
talk Falir the Shifting##174273
|tip Inside the building.
turnin A Spirit's Duty##62449 |goto 24.02,53.02 |only if haveq(62449)
turnin A Spirit's Might##62452 |goto 24.02,53.02 |only if haveq(62452)
turnin A Spirit's Pride##62445 |goto 24.02,53.02 |only if haveq(62445)
turnin A Spirit's Heart##62450 |goto 24.02,53.02 |only if haveq(62450)
|only if haveq(62449,62452,62445,62450)
stickystart "Collect_1000_Anima"
step
Complete a World Quest in Ardenweald |q 62444/1
|tip Use the "Ardenweald World Quests" daily guide to accomplish this.
|tip Click a world quest icon on the map to load it.
|only if haveq(62444)
step
Complete a World Quest in Ardenweald |q 62442/1
|tip Use the "Ardenweald World Quests" daily guide to accomplish this.
|tip Click a world quest icon on the map to load it.
|only if haveq(62442)
step
Complete a World Quest in Ardenweald |q 62443/1
|tip Use the "Ardenweald World Quests" daily guide to accomplish this.
|tip Click a world quest icon on the map to load it.
|only if haveq(62443)
step
talk Conservator Aoni##174324
turnin Aid the Covenant##62444 |goto 32.06,61.97 |only if haveq(62444)
turnin Aid the Covenant##62442 |goto 32.06,61.97 |only if haveq(62442)
turnin Aid the Covenant##62443 |goto 32.06,61.97 |only if haveq(62443)
|only if haveq(62444,62442,62443)
step
label "Collect_1000_Anima"
Collect #1000# Anima |q 62441/1 |or
|tip Gather anima by completing world quests, killing rare enemies, and looting treasures across the Shadowlands.
|only if haveq(62441) and not completedq(62441)
'|complete not completedq(62444,62442,62443) |only if covenantfeature("Covenant Unique") >= 2 and not haveq(62444,62442,62443) |or |next "Begin_Dailies"
step
talk Warden Casad##166476
turnin Fair Exchange for a Soul##62441 |goto 33.35,62.31
|only if haveq(62441)
step
You have completed the weekly Queen's Conservatory quest |only if covenantfeature("Covenant Unique") == 1
You have completed the daily Queen's Conservatory quest |only if default
|tip This guide will reset when another becomes available.
'|complete not completedq(62444,62442,62443) |only if default |or |next "Begin_Dailies"
'|complete not completedq(62441) |only if covenantfeature("Covenant Unique") == 1 |or |next "Begin_Dailies"
]])
ZGV.BETAEND()
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Shadowlands (50-60)\\Chains of Domination\\Korthia Daily Quests",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the various daily quests in Korthia.",
condition_suggested=function() return level == 60 and completedq(64556) end,
patch='90100',
},[[
step
Unlock Korthia Daily Quests |complete completedq(64556)
|tip Complete the "In Need of Assistance" quest.
|tip Use the "Chains of Domination Questline" guide to accomplish this.
step
label "Begin_Dailies"
talk Ta'nasi##178844
accept Observational Records##63960 |goto Korthia/0 64.81,25.42 |only if questactive(63960)
accept Observational Records##63962 |goto 64.81,25.42 |only if questactive(63962)
accept Observational Records##63958 |goto 64.81,25.42 |only if questactive(63958)
accept Observational Records##63957 |goto 64.81,25.42 |only if questactive(63957)
accept Observational Records##63959 |goto 64.81,25.42 |only if questactive(63959)
accept Observational Records##63776 |goto 64.81,25.42 |only if questactive(63776)
|only if questactive(63960,63962,63958,63957,63959,63776)
step
talk Xy'lonu##178845
accept Sealed Secrets##63955 |goto 64.64,25.55 |only if questactive(63955)
accept Sealed Secrets##63954 |goto 64.64,25.55 |only if questactive(63954)
accept Sealed Secrets##63961 |goto 64.64,25.55 |only if questactive(63961)
accept Sealed Secrets##63956 |goto 64.64,25.55 |only if questactive(63956)
accept Sealed Secrets##63777 |goto 64.64,25.55 |only if questactive(63777)
|only if questactive(63955,63954,63961,63956,63777)
step
click Sigilscored Scroll
accept Broker's Bounty: Grimtalon##63964 |goto 64.74,25.62 |only if questactive(63964)
accept Broker's Bounty: Nocturnus the Unraveler##63792 |goto 64.74,25.62 |only if questactive(63792)
accept Broker's Bounty: Ensydius the Defiler##63793 |goto 64.74,25.62 |only if questactive(63793)
accept Broker's Bounty: Ripmaul##63963 |goto 64.74,25.62 |only if questactive(63963)
accept Broker's Bounty: Valdinar the Curseborn##63791 |goto 64.74,25.62 |only if questactive(63791)
accept Broker's Bounty: Lord Azzorak##63790 |goto 64.74,25.62 |only if questactive(63790)
accept Broker's Bounty: Hungering Behemoth##63794 |goto 64.74,25.62 |only if questactive(63794)
|only if questactive(63964,63792,63793,63963,63791,63790,63794)
step
talk Bonesmith Heirmir##179214
accept Staying Scrappy##64070 |goto 63.29,25.30 |only if questactive(64070)
accept Strength to Weakness##64432 |goto 63.29,25.30 |only if questactive(64432)
|only if questactive(64070,64432)
step
talk Tal-Galan##177927
accept Shaping Fate##63949 |goto 62.66,24.74
step
talk Tal-Rahl##179082
accept Cryptograms and Keys##63775 |goto 64.10,22.88
|only if questactive(63775)
step
talk Messenger Mnemis##178802
accept Assail Mail##63934 |goto 61.46,22.34
|only if questactive(63934)
step
talk Archivist Roh-Suir##178257
|tip Inside the cave.
accept Lost Research##65266 |goto Korthia/0 62.78,22.60
|only if rep("The Archivists' Codex") >= Tier4
step
talk Archivist Roh-Suir##178257
|tip Inside the cave.
buy Repaired Riftkey##186731 |goto 62.78,22.60 |q 65266
|only if haveq(65266)
step
talk Dreamweaver##178839
accept Slitherwing Egg Rescue##63965 |goto 61.46,21.34 |only if questactive(63965)
accept Think of the Critters##64104 |goto 61.46,21.34 |only if questactive(64104)
|only if questactive(63965,64104)
step
talk Lord Herne##178837
accept Razorwing Talons##63950 |goto 61.41,21.13
|only if questactive(63950)
step
talk Lady Moonberry##178838
accept See How THEY Like It!##63780 |goto 61.27,21.19
|only if questactive(63780)
step
talk Niya##178840
accept We Move Forward##63778 |goto 61.06,21.10 |only if questactive(63778)
accept Charge of the Wild Hunt##64129 |goto 61.06,21.10 |only if questactive(64129)
|only if questactive(63778,64129)
step
talk Aldermeigh##179404
Tell it _"Let's ride."_
Mount Aldermeigh |q 64129/1 |goto 60.98,21.17
|only if haveq(64129)
step
Kill enemies around this area
|tip Use the abilities on your action bar.
Slay #60# Mawsworn |q 64129/2 |goto 53.05,39.65
You can find more around [48.16,38.19]
|only if haveq(64129)
step
Watch the dialogue
Return to the Keeper's Respite |outvehicle |goto 61.06,21.10 |q 64129
|only if haveq(64129)
step
talk Niya##178840
turnin Charge of the Wild Hunt##64129 |goto 61.06,21.10
|only if haveq(64129)
step
talk Zayhad, The Builder##178842
accept Precious Roots##63935 |goto 60.83,21.31
|only if questactive(63935)
step
talk Hunt-Captain Korayn##178841
accept Continued Efforts: Seeker's Quorum##63785 |goto 60.86,21.66 |only if questactive(63785)
accept Down to Earth##64080 |goto 60.86,21.66 |only if questactive(64080)
|only if questactive(63785,64080)
step
talk Arios Riftbearer##178799
accept Mawsworn Rituals##63782 |goto 61.63,23.48
|only if questactive(63782)
step
talk Voitha##178800
accept Continued Efforts: Sanctuary of Guidance##63788 |goto 61.78,23.64
|only if questactive(63788)
step
talk Sika##178797
accept Devoured Anima##63936 |goto 61.76,23.88
|only if questactive(63936)
step
talk Kleia##179194
accept Once More, with Healing##64040 |goto Korthia/0 61.73,24.05 |only if questactive(64040)
accept Flight of the Kyrian##64240 |goto 61.73,24.05 |only if questactive(64240)
|only if questactive(64040,64240)
step
talk Mikanikos##179216
accept We Need a Healer - You!##64043 |goto 61.53,24.04 |only if questactive(64043)
accept War Prototype##64194 |goto 61.53,24.04 |only if questactive(64194)
|only if questactive(64043,64194)
step
talk Pelagos##179134
accept A Semblance of Normal##63779 |goto 61.84,24.05 |only if questactive(63779)
accept Random Memory Access##64166 |goto 61.84,24.05 |only if questactive(64166)
|only if questactive(63779,64166)
step
talk General Draven##178794
accept Sweep the Windswept Aerie##63786 |goto 61.50,25.08
accept The Weight of Stone##64018 |goto 61.50,25.08
|only if questactive(63786,64018)
step
talk Nadjia the Mistblade##178795
accept Mawsworn Battle Plans##63781 |goto 61.85,25.09 |only if questactive(63781)
accept A More Civilized Way##64271 |goto 61.85,25.09 |only if questactive(64271)
|only if questactive(63781,64271)
step
talk The Accuser##178790
accept The Proper Procedures##64101 |goto 61.88,25.37
|only if questactive(64101)
step
talk Kael'thas Sunstrider##178793
accept Anima Reclaimation##63783 |goto 61.96,25.60
|only if questactive(63783)
step
talk Theotar##179218
accept Teas and Tinctures##64089 |goto 61.72,25.89 |only if questactive(64089)
accept Spill the Tea##64430 |goto 61.72,25.89 |only if questactive(64430)
|only if questactive(64089,64430)
step
talk Rendle##179221
accept Gold's No Object##63784 |goto 61.71,26.02
|only if questactive(63784)
step
talk Baroness Vashj##179149
accept Continued Efforts: Mauler's Outlook##63787 |goto 60.98,28.06
|only if questactive(63787)
step
talk Baroness Draka##178808
accept Old Tricks Work Best##64103 |goto 60.74,28.05
|only if questactive(64103)
step
talk Plague Deviser Marileth##178806
accept Oozing with Character##64016 |goto 60.44,27.79 |only if questactive(64016)
accept Oozing with Character##64017 |goto 60.44,27.79 |only if questactive(64017)
accept Oozing with Character##63989 |goto 60.44,27.79 |only if questactive(63989)
accept Local Reagents##64065 |goto 60.44,27.79 |only if questactive(64065)
|only if questactive(64016,64017,63989,64065)
step
talk Alexandros Mograine##178807
accept Continued Efforts: Scholar's Den##63789 |goto 60.41,28.68
|only if questactive(63789)
step
talk Emeni##178805
accept Nasty, Big, Pointy Teeth##63937 |goto 60.07,27.64 |only if questactive(63937)
accept Into the Meat Grinder##64015 |goto 60.07,27.64 |only if questactive(64015)
|only if questactive(63937,64015)
step
talk Kleia##179194
Tell her _"Send out the Kyrian."_
Speak to Kleia to Begin Flight |q 64240/1 |goto 61.73,24.05
|only if haveq(64240)
stickystart "Shock_Corrupted_Colossi"
stickystart "Heal_Allies"
step
Shield #6# Soulfused Abominations |q 64240/2 |goto 61.73,24.05 |region vault_of_secrets
|tip Use the "Shield Shell" ability on Soulfused Abominations.
|only if haveq(64240)
step
label "Shock_Corrupted_Colossi"
Shock #3# Corrupted Colossi |q 64240/3 |goto 61.73,24.05 |region vault_of_secrets
|tip Use the "Shocking Spear" ability on Corrupted Colossi.
|only if haveq(64240)
step
label "Heal_Allies"
Heal #40# Allies |q 64240/4 |goto 61.73,24.05 |region vault_of_secrets
|tip Use the "Healing Strike" ability on friendly NPCs around the Vault of Secrets.
|only if haveq(64240)
step
Watch the dialogue
Return to Keeper's Respite |outvehicle |q 64240
|only if haveq(64240)
stickystart "Collect_Residual_Anima_63935"
stickystart "Collect_Stolen_Cryptographs_63775"
stickystart "Collect_Observation_Devices_63958"
stickystart "Collect_Sealed_Containers_63955"
stickystart "Restore_Covenant_Wounded_64040"
step
kill Lord Azzorak##177917 |q 63790/1 |goto 43.89,67.61 |region vault_of_secrets
|tip Inside the building.
|tip This enemy is elite and may require a group.
|only if haveq(63790)
step
label "Collect_Observation_Devices_63958"
click Observation Device##368626+
|tip They look like glowing white balls floating above the ground around this area.
collect 5 Observation Device##186170 |q 63958/1 |goto 51.20,69.65 |region vault_of_secrets
|only if haveq(63958)
step
label "Collect_Sealed_Containers_63955"
click Drop Box##368630+
|tip They look like brown crates on the ground around this area.
collect 5 Sealed Container##186174 |q 63955/1 |goto 51.20,69.65 |region vault_of_secrets
|only if haveq(63955)
step
label "Restore_Covenant_Wounded_64040"
use Mikanikos' Restorative Contraption##186445
|tip Use it on friendly NPCs laying on the ground around this area.
Restore #10# Covenant Wounded |q 64040/1 |goto 51.20,69.65 |region vault_of_secrets
|only if haveq(64040)
stickystop "Collect_Residual_Anima_63935"
stickystop "Collect_Stolen_Cryptographs_63775"
stickystart "Collect_Observation_Devices_63959"
stickystart "Collect_Shrine_Offerings_63779"
stickystart "Cleanse_the_Sanctuary_of_Guidance_63788"
stickystart "Propagate_Bloop"
step
Kill enemies around this area
collect 8 Devoured Anima##185754 |q 63783/1 |goto 54.62,20.44
|only if haveq(63783)
step
label "Collect_Observation_Devices_63959"
click Observation Device##368626+
|tip They look like glowing white balls floating above the ground around this area.
collect 5 Observation Device##186171 |q 63959/1 |goto 54.56,21.27
|only if haveq(63959)
step
label "Collect_Shrine_Offerings_63779"
click Offering##368596+
|tip They look like small stone animals on the ground around this area.
collect 6 Shrine Offering##185750 |q 63779/1 |goto 54.37,18.54
|only if haveq(63779)
step
label "Cleanse_the_Sanctuary_of_Guidance_63788"
Kill enemies around this area
click Anima Offering+
|tip They look like large glowing vases with blue-white crystals on top.
Cleanse the Sanctuary of Guidance |q 63788/1 |goto 54.28,18.78
|only if haveq(63788)
step
label "Propagate_Bloop"
Use the _"Command Bloop"_ ability
|tip It appears as a button on your screen.
|tip Use it on Shardhide Growlers or Fierce Gromits to apply a debuff to them for thirty seconds.
|tip Each stack of the debuff will propagate Bloop once.
Kill Shardhide and Fierce enemies around this area
Propagate Bloop #10# Times |q 64017/1 |goto 54.30,28.72
|only if haveq(64017)
stickystart "Collect_Observation_Devices_63776"
stickystart "Clear_Scholar's_Den"
stickystart "Collect_Scrap_Metal_64070"
stickystart "Collect_Stolen_Messages_63934"
stickystart "Collect_Mawsworn_Emblem_63780"
stickystart "Collect_Sealed_Containers_63777"
stickystart "Collect_Plundered_Anima_63778"
step
Follow the path |goto Caverns of Contemplation/0 42.87,57.80 < 15 |walk
kill Nocturnus the Unraveler##176669 |q 63792/1 |goto 31.86,34.97
|tip Inside the cave.
|only if haveq(63792)
step
label "Collect_Observation_Devices_63776"
click Observation Device##368177+
|tip They look like glowing white balls floating above the ground around this area.
collect 5 Observation Device##185758 |q 63776/1 |goto Korthia/0 60.2,34.8
|only if haveq(63776)
step
label "Clear_Scholar's_Den"
Kill enemies around this area
Clear Scholar's Den |q 63789/1 |goto 59.44,35.83
|only if haveq(63789)
step
label "Collect_Scrap_Metal_64070"
kill Mawsworn Torturer##177293+
kill Mawsworn Mutilator##177292+
|tip You can find more inside the cave.
collect 12 Scrap Metal##186458 |q 64070/1 |goto 59.44,35.83
|only if haveq(64070)
step
label "Collect_Stolen_Messages_63934"
click Stolen Message##368601+
|tip They look like rolled up scrolls on the ground around this area.
collect 6 Stolen Message##186164 |q 63934/1 |goto 59.94,33.83
|only if haveq(63934)
step
label "Collect_Mawsworn_Emblem_63780"
Kill Mawsworn enemies around this area
collect 12 Mawsworn Emblem##185751 |q 63780/1 |goto 59.09,35.61
You can find more around [48.84,52.84]
|only if haveq(63780)
step
label "Collect_Sealed_Containers_63777"
click Drop Box##368630+
|tip They look like brown crates on the ground around this area.
collect 5 Sealed Container##185763 |q 63777/1 |goto 59.79,34.25
|only if haveq(63777)
step
label "Collect_Plundered_Anima_63778"
click Anima Urn##368293+
|tip They look like large stone urns on the ground around this area.
collect 8 Plundered Anima##185749 |q 63778/1 |goto 59.82,34.26
|only if haveq(63778)
stickystart "Care_For_Critters_64104"
stickystart "Collect_Korthian_Herbs_64089"
stickystart "Clear_Mauler's_Outlook_63787"
stickystart "Grow_Ooz"
stickystart "Infect_Shardhide"
stickystart "Collect_Sealed_Containers_63961"
stickystart "Collect_Observation_Devices_63962"
stickystart "Collect_Hopper_Teeth_63937"
step
clicknpc Drab Hopper##179344+
|tip They look like gold and white Hopper creatures on the ground around this area.
Capture #7# Drab Hoppers |q 63784/1 |goto 53.31,39.78
|only if haveq(63784)
step
label "Care_For_Critters_64104"
use the Korthian Treat##186561
|tip Drop treats on Hungry Hoppers around this area.
|tip Don't get too close or you will scare them away.
|tip When they become wary of you, target them and spam the "Offer Treat" button that appears on your screen.
kill Scavenging Slitherwing##179359+
|tip They will spawn just before the bar fills up and attack.
Care for #6# Critters|q 64104/1 |goto 52.63,35.45
|only if haveq(64104)
step
label "Collect_Korthian_Herbs_64089"
click Korthian Herb##368957+
|tip They look like large brown, white, and blue plants on the ground around this area.
collect 12 Korthian Herbs##186486 |q 64089/1 |goto 51.50,35.63
|only if haveq(64089)
step
label "Clear_Mauler's_Outlook_63787"
Kill enemies around this area
Clear Mauler's Outlook |q 63787/1 |goto 49.95,28.83
|only if haveq(63787)
step
label "Grow_Ooz"
Use the _"Command Ooz"_ ability
|tip It appears as a button on your screen.
|tip Use it on Shardhide bear corpses to make Ooz consume them.
|tip Each stack of the debuff will grow Ooz once.
Kill Shardhide enemies around this area
Grow Ooz #10# Times |q 64016/1 |goto 50.91,27.92
|only if haveq(64016)
step
label "Infect_Shardhide"
Kill Shardhide enemies around this area
|tip Reduce them below 30% health, but do not kill them.
Use the _"Command Plaguey"_ ability
|tip It appears as a button on your screen.
|tip Use it on Shardhide bears to apply a debuff to them for thirty seconds.
|tip Each stack of the debuff will propagate Bloop once.
Infect #10# Shardhide |q 63989/1 |goto 49.31,28.50
|only if haveq(63989)
step
kill Ripmaul##178907
|tip Inside the cave.
|tip This enemy is elite and may require a group.
collect Heavy Spiked Hide##187238 |q 63963/1 |goto 46.52,31.02
|only if haveq(63963)
step
label "Collect_Sealed_Containers_63961"
click Drop Box##368631+
|tip They look like brown crates on the ground around this area.
collect 5 Sealed Container##186175 |q 63961/1 |goto 48.00,29.43
|only if haveq(63961)
step
label "Collect_Observation_Devices_63962"
click Observation Device##368628+
|tip They look like glowing white balls floating above the ground around this area.
collect 5 Observation Device##186172 |q 63962/1 |goto 47.03,29.17
|only if haveq(63962)
step
label "Collect_Hopper_Teeth_63937"
kill Fierce Hopper##178528+
collect 6 Hopper Teeth##186095 |q 63937/1 |goto 47.51,35.81
You can find more around [53.10,28.86]
|only if haveq(63937)
step
label "Collect_Mawsworn_Battle_Plans_Path_1"
map Korthia/0
path follow smart; loop off; ants curved; dist 30
path	44.99,55.94	45.29,53.37	49.46,52.83	49.54,47.90	49.35,44.71
path	48.36,42.00	45.33,38.93	43.74,37.57	41.83,37.30	41.24,34.71
path	39.77,32.02	39.53,30.70
kill Mawsworn Lieutenant##178294
|tip Follow the path, searching for the Lieutenant.
|tip He rides back and forth on a bear mount.
collect Mawsworn Battle Plans##185752 |q 63781/1 |or
'|goto 39.53,30.70 < 30 |c |noway |next "Collect_Mawsworn_Battle_Plans_Path_2" |or
|only if haveq(63781)
step
label "Collect_Mawsworn_Battle_Plans_Path_2"
map Korthia/0
path follow smart; loop off; ants curved; dist 30
path	39.53,30.70	39.77,32.02	41.24,34.71	41.83,37.30	43.74,37.57
path	45.33,38.93	48.36,42.00	49.35,44.71	49.54,47.90	49.46,52.83
path	45.29,53.37	44.99,55.94
kill Mawsworn Lieutenant##178294
|tip Follow the path, searching for the Lieutenant.
|tip He rides back and forth on a bear mount.
collect Mawsworn Battle Plans##185752 |q 63781/1 |or
'|goto 44.99,55.94 < 30 |c |noway |next "Collect_Mawsworn_Battle_Plans_Path_1" |or
|only if haveq(63781)
step
Meet Nadjia |q 64271/1 |goto 40.97,31.68
|only if haveq(64271)
step
click Venthyr Rapier
Pick up the rapier |q 64271/2 |goto 41.02,31.58
|only if haveq(64271)
step
Use the abilities on your action bar
|tip Watch the chat log and execute the abilities as Nadjia calls them out.
Defeat Nadjia in a Duel |q 64271/3 |goto 41.03,31.97
|only if haveq(64271)
stickystart "Spear_and_Slay_Mawsworn_Harbingers"
step
Enter the cave |goto 42.24,40.91 < 10 |walk
kill Apate##179424 |q 64103/3 |goto 40.64,40.90
|tip Inside the cave.
|only if haveq(64103)
step
kill Moros##179423 |q 64103/1 |goto 44.12,42.37
|only if haveq(64103)
step
label "Spear_and_Slay_Mawsworn_Harbingers"
use Korayn's Javelin##186474
|tip Use it on Mawsworn Harbingers flying in the air around this area.
kill Mawsworn Harbinger##179347+
Spear and Slay #4# Mawsworn Harbingers |q 64080/1 |goto 48.41,44.88
|only if haveq(64080)
step
talk Darkwing Legionnaire##180126
Talk to the Darkwing Legionnaire |q 64018/1 |goto 48.22,44.12
|only if haveq(64018)
stickystart "Deploy_Anima_64018"
step
Use the _"Deploy Supplier"_ ability
|tip It's the first ability on your vehicle bar.
|tip Drop them in blue areas on the ground around this area.
Deliver #10# Supplies |q 64018/2 |goto 51.17,69.41 |notravel
|only if haveq(64018)
step
label "Deploy_Anima_64018"
Use the _"Deploy Anima"_ ability
|tip It's the second ability on your vehicle bar.
|tip Drop them in red areas on the ground around this area.
Deploy #10# Anima |q 64018/3 |goto 51.17,69.41 |notravel
|only if haveq(64018)
stickystart "Collect_Shardhide_Talons"
stickystart "Collect_Gromit_Feet"
stickystart "Collect_Razorwing_Spine"
step
click Maldraxxi Barricade
Build the Maldraxxi Barricade |q 64015/1 |goto 62.73,47.14 |count 1
|only if haveq(64015)
step
click Maldraxxi Barricade
Build the Maldraxxi barricade |q 64015/1 |goto 63.16,46.83 |count 2
|only if haveq(64015)
step
Kill enemies that attack in waves
|tip Two waves of enemies will attack before an elite spawns.
Defend the Bulwark |q 64015/2 |goto 63.06,47.32
|only if haveq(64015)
step
kill Skullspike Devastator##179824 |q 64015/3 |goto 63.06,47.32
|tip This enemy is elite and may require a group.
|only if haveq(64015)
step
kill Ensydius the Defiler##177910 |q 63793/1 |goto 60.53,51.31
|tip This enemy is elite and may require a group.
|only if haveq(63793)
step
kill Oizys##179422 |q 64103/2 |goto 59.93,53.65
|only if haveq(64103)
step
label "Collect_Shardhide_Talons"
kill Shardhide Growler##177299+
collect 8 Shardhide Talon##186455 |q 64065/1 |goto 59.94,44.86
|only if haveq(64065)
step
label "Collect_Gromit_Feet"
kill Crested Gromit##177185+
collect 6 Gromit Foot##186456 |q 64065/2 |goto 59.94,44.86
|only if haveq(64065)
step
label "Collect_Razorwing_Spine"
kill Predatory Razorwing##177319+
|tip They fly around this area.
collect Razorwing Spine##186457 |q 64065/3 |goto 63.36,48.25
|only if haveq(64065)
stickystart "Repel_the_Seeker's_Quorum_Forces"
stickystart "Collect_Observation_Devices_63957"
stickystart "Restore_Covenant_Wounded_64043"
stickystart "Collect_Mawstone_Grimoire_63782"
stickystart "Collect_Anima_Vessels_64101"
stickystart "Collect_Stolen_Cryptographs_63775"
stickystart "Collect_Residual_Anima_63935"
stickystart "Collect_Sealed_Containers_63954"
step
kill Valdinar the Curseborn##177911 |q 63791/1 |goto 54.64,53.54
|tip This enemy is elite and may require a group.
|only if haveq(63791)
step
label "Repel_the_Seeker's_Quorum_Forces"
Kill enemies around this area
click Mawsworn Weapons
|tip They look like large racks of weapons on the ground around this area.
Repel the Seeker's Quorum Forces |q 63785/1 |goto 51.08,52.84
|only if haveq(63785)
step
label "Collect_Observation_Devices_63957"
click Observation Device##368626+
|tip They look like glowing white balls floating above the ground around this area.
collect 5 Observation Device##186168 |q 63957/1 |goto 49.37,52.84
|only if haveq(63957)
step
label "Restore_Covenant_Wounded_64043"
use Mikanikos' Restorative Contraption##186448
|tip Use it on Kyrian Guardians, Fae Enchanters, Stoneborn Enforcers, and Prime Bladeguards.
|tip Kyrian Guardians look like wounded Kyrian NPCs laying on the ground around this area.
|tip Stoneborn Enforcers look like wounded Stoneborn NPCs laying on the ground around this area.
|tip Fae Enchanters look like wounded fairy NPCs laying on the ground around this area.
|tip Prime Bladeguards look like wounded undead NPCs laying on the ground around this area.
Restore #10# Covenant Wounded |q 64043/1 |goto 49.66,52.77
|only if haveq(64043)
step
label "Collect_Mawstone_Grimoire_63782"
kill Mawsworn Interrogator##177204+
collect 8 Mawsworn Grimoire##185753 |q 63782/1 |goto 49.66,52.77
|only if haveq(63782)
step
label "Collect_Anima_Vessels_64101"
click Anima Vessel+
|tip They look like vases with blue and white crystals on top on the ground around this area.
Collect #5# Anima Vessels |q 64101/1 |goto 49.83,52.83
|only if haveq(64101)
step
label "Collect_Stolen_Cryptographs_63775"
click Cryptogram##368166+
|tip They look like small boxes with curved lines on them on the ground around this area.
collect 6 Stolen Cryptograph##185746 |q 63775/1 |goto 49.67,52.74
|only if haveq(63775)
step
label "Collect_Residual_Anima_63935"
click Seeping Cone##368602+
|tip They look like sparkling brown plants on the ground around this area.
collect 8 Residual Anima##186165 |q 63935/1 |goto 46.75,52.90
|only if haveq(63935)
step
label "Collect_Sealed_Containers_63954"
click Drop Box##368623+
|tip They look like brown crates on the ground around this area.
collect 8 Sealed Container##186167 |q 63954/1 |goto 49.73,52.85
You can find more around [45.12,54.14]
|only if haveq(63954)
stickystart "Collect_Devoured_Anima_63936"
stickystart "Clear_the_Windswept_Aerie_63786"
step
kill Hungering Behemoth##177913
|tip It walks around this area.
|tip This enemy is elite and may require a group.
collect Substantial Amount of Devourer Blood##186245 |q 63794/1 |goto 35.63,47.31
|only if haveq(63794)
stickystop "Collect_Devoured_Anima_63936"
stickystop "Clear_the_Windswept_Aerie_63786"
stickystart "Recover_Korthian_Memories_64166"
step
Watch the dialogue
Find Tubbins and Gubbins |q 64430/1 |goto 36.57,37.45
|only if haveq(64430)
step
click Experimental Korthian Tea##369688
collect Experimental Tea##187353 |q 64430/2 |goto 36.57,37.45
|only if haveq(64430)
step
use the Experimental Tea##187353
|tip Use it on Shardhide Maulers around this area.
Test the Tea #5# times |q 64430/3 |goto 35.82,36.41
|only if haveq(64430)
step
label "Recover_Korthian_Memories_64166"
use the Ephemeral Wings##186672
|tip Jump from high spots and use the Ephemeral Wings to glide through Korthian Memories.
|tip Korthian Memoris look like large swirling black and white orbs.
Recover #10# Korthian Memories |q 64166/1 |goto 37.59,37.50
|only if haveq(64166)
stickystart "Collect_Observation_Devices_63960"
stickystart "Collect_Razorwing_Talons_63950"
stickystart "Collect_Abandoned_Slitherwing_Eggs_63965"
stickystart "Collect_Devoured_Anima_63936"
stickystart "Clear_the_Windswept_Aerie_63786"
stickystart "Collect_Sealed_Containers_63956"
step
clicknpc Atleos##179579
Activate Atleos in the Windswept Aerie |q 64194/1 |goto 28.83,52.63
|only if haveq(64194)
stickystop "Collect_Observation_Devices_63960"
stickystop "Collect_Razorwing_Talons_63950"
stickystop "Collect_Abandoned_Slitherwing_Eggs_63965"
stickystop "Collect_Devoured_Anima_63936"
stickystop "Clear_the_Windswept_Aerie_63786"
stickystop "Collect_Sealed_Containers_63956"
step
kill Kraxis##179552 |q 64194/2 |goto 26.36,52.77
|tip It walks around this area.
|only if haveq(64194)
step
Exit Atleos |outvehicle |q 64194
|tip Click the "Exit" button on your action bar.
|only if haveq(64194)
stickystart "Collect_Observation_Devices_63960"
stickystart "Collect_Razorwing_Talons_63950"
stickystart "Collect_Abandoned_Slitherwing_Eggs_63965"
stickystart "Collect_Devoured_Anima_63936"
stickystart "Clear_the_Windswept_Aerie_63786"
stickystart "Collect_Sealed_Containers_63956"
step
kill Grimtalon##178906
|tip This enemy is elite and may require a group.
collect 1 Mature Ossified Beak##187239 |q 63964/1 |goto 31.23,59.28
|only if haveq(63964)
step
label "Collect_Observation_Devices_63960"
click Observation Device##368626+
|tip They look like glowing white balls floating above the ground around this area.
collect 5 Observation Device##186170 |q 63960/1 |goto 33.53,53.11
|only if haveq(63960)
step
label "Collect_Razorwing_Talons_63950"
Kill Razorwing enemies around this area
collect 10 Razorwing Talons##186105 |q 63950/1 |goto 33.53,53.11
|only if haveq(63950)
step
label "Collect_Abandoned_Slitherwing_Eggs_63965"
click Abandoned Slitherwing Egg+
|tip They look like large multi-colored eggs on the ground around this area.
Collect #5# Abandoned Slitherwing Eggs |q 63965/1 |goto 30.87,51.26
|only if haveq(63965)
step
label "Collect_Devoured_Anima_63936"
Kill Ravenous enemies around this area
collect 12 Devoured Anima##186166 |q 63936/1 |goto 31.04,50.90
|only if haveq(63936)
step
label "Clear_the_Windswept_Aerie_63786"
Kill Shardhide and Razorwing enemies around this area
click Territorial Leafpile+
|tip They look like large piles of brown leaves on the ground around this area.
Clear the Windswept Aerie |q 63786/1 |goto 32.59,56.17
|only if haveq(63786)
step
label "Collect_Sealed_Containers_63956"
click Drop Box##368629+
|tip They look like brown crates on the ground around this area.
collect 5 Sealed Container##186173 |q 63956/1 |goto 30.03,52.77
|only if haveq(63956)
step
Run up the chain |goto 34.22,50.82 < 30 |only if walking
Energize the Lightning Rod |q 64432/1 |goto 34.49,49.89 |count 1
|tip Stand in the blue swirling lightning strike on the chain.
|only if haveq(64432)
step
Energize the Lightning Rod |q 64432/1 |goto 35.43,48.24 |count 2
|tip Stand in the blue swirling lightning strike on the chain.
|only if haveq(64432)
step
Energize the Lightning Rod |q 64432/1 |goto 35.50,46.34 |count 3
|tip Stand in the blue swirling lightning strike on the chain.
|only if haveq(64432)
step
Energize the Lightning Rod |q 64432/1 |goto 36.37,44.86 |count 4
|tip Stand in the blue swirling lightning strike on the chain.
|only if haveq(64432)
step
Energize the Lightning Rod |q 64432/1 |goto 36.45,43.01 |count 5
|tip Stand in the blue swirling lightning strike on the chain.
|only if haveq(64432)
step
clicknpc Borrhas the Cold##180307
Mount Borrhas |q 64432/2 |goto 34.34,53.60
|only if haveq(64432)
step
Kill enemies around this area
|tip Use the abilities on your vehicle bar.
Slay #50# Mawsworn |q 64432/3 |goto 49.28,53.11
|only if haveq(64432)
step
talk Ta'nasi##178844
turnin Observational Records##63960 |goto Korthia/0 64.81,25.42 |only if haveq(63960)
turnin Observational Records##63962 |goto 64.81,25.42 |only if haveq(63962)
turnin Observational Records##63958 |goto 64.81,25.42 |only if haveq(63958)
turnin Observational Records##63957 |goto 64.81,25.42 |only if haveq(63957)
turnin Observational Records##63959 |goto 64.81,25.42 |only if haveq(63959)
turnin Observational Records##63776 |goto 64.81,25.42 |only if haveq(63776)
turnin Broker's Bounty: Grimtalon##63964 |goto 64.81,25.42 |only if haveq(63964)
turnin Broker's Bounty: Hungering Behemoth##63794 |goto 64.81,25.42 |only if haveq(63794)
turnin Broker's Bounty: Ripmaul##63963 |goto 64.81,25.42 |only if haveq(63963)
|only if haveq(63960,63962,63958,63957,63959,63776,63964,63794,63963)
step
talk Xy'lonu##178845
turnin Broker's Bounty: Nocturnus the Unraveler##63792 |goto 64.64,25.55 |only if haveq(63792)
turnin Broker's Bounty: Ensydius the Defiler##63793 |goto 64.64,25.55 |only if haveq(63793)
turnin Broker's Bounty: Valdinar the Curseborn##63791 |goto 64.64,25.55 |only if haveq(63791)
turnin Broker's Bounty: Lord Azzorak##63790 |goto 64.64,25.55 |only if haveq(63790)
|only if haveq(63792,63793,63791,63790)
step
talk Ve'lonu##178845
turnin Sealed Lockboxes##63954 |goto 64.64,25.55 |only if haveq(63954)
turnin Sealed Lockboxes##63955 |goto 64.64,25.55 |only if haveq(63955)
turnin Sealed Lockboxes##63777 |goto 64.64,25.55 |only if haveq(63777)
turnin Sealed Lockboxes##63961 |goto 64.64,25.55 |only if haveq(63961)
turnin Sealed Lockboxes##63956 |goto 64.64,25.55 |only if haveq(63956)
|only if haveq(63954,63955,63777,63961,63956)
step
talk Bonesmith Heirmir##179214
turnin Staying Scrappy##64070 |goto 63.29,25.30 |only if haveq(64070)
turnin Strength to Weakness##64432 |goto 63.29,25.30 |only if haveq(64432)
|only if haveq(64070,64432)
step
talk Tal-Rahl##179082
turnin Cryptograms and Keys##63775 |goto 64.10,22.88
|only if haveq(63775)
step
talk Messenger Mnemis##178802
turnin Assail Mail##63934 |goto 61.46,22.34
|only if haveq(63934)
step
talk Dreamweaver##178839
turnin Slitherwing Egg Rescue##63965 |goto 61.46,21.34 |only if haveq(63965)
turnin Think of the Critters##64104 |goto 61.46,21.34 |only if haveq(64104)
|only if haveq(63965,64104)
step
talk Lord Herne##178837
turnin Razorwing Talons##63950 |goto 61.41,21.13
|only if haveq(63950)
step
talk Lady Moonberry##178838
turnin See How THEY Like It!##63780 |goto 61.27,21.19
|only if haveq(63780)
step
talk Niya##178840
turnin We Move Forward##63778 |goto 61.06,21.10
|only if haveq(63778)
step
talk Zayhad, The Builder##178842
turnin Precious Roots##63935 |goto 60.83,21.31
|only if haveq(63935)
step
talk Hunt-Captain Korayn##178841
turnin Continued Efforts: Seeker's Quorum##63785 |goto 60.86,21.66 |only if haveq(63785)
turnin Down to Earth##64080 |goto 60.86,21.66 |only if haveq(64080)
|only if haveq(63785,64080)
step
talk Arios Riftbearer##178799
turnin Mawsworn Rituals##63782 |goto 61.63,23.48
|only if haveq(63782)
step
talk Voitha##178800
turnin Continued Efforts: Sanctuary of Guidance##63788 |goto 61.78,23.64
|only if haveq(63788)
step
talk Sika##178797
turnin Devoured Anima##63936 |goto 61.76,23.88
|only if haveq(63936)
step
talk Kleia##179194
turnin Once More, with Healing##64040 |goto Korthia/0 61.73,24.05 |only if haveq(64040)
turnin Flight of the Kyrian##64240 |goto 61.73,24.05 |only if haveq(64240)
|only if haveq(64040,64240)
step
talk Mikanikos##179216
turnin We Need a Healer - You!##64043 |goto 61.53,24.04 |only if haveq(64043)
turnin War Prototype##64194 |goto 61.53,24.04 |only if haveq(64194)
|only if haveq(64043,64194)
step
talk Pelagos##179134
turnin A Semblance of Normal##63779 |goto 61.84,24.05 |only if haveq(63779)
turnin Random Memory Access##64166 |goto 61.84,24.05 |only if haveq(64166)
|only if haveq(63779,64166)
step
talk General Draven##178794
turnin Sweep the Windswept Aerie##63786 |goto 61.50,25.08 |only if haveq(63786)
turnin The Weight of Stone##64018 |goto 61.50,25.08 |only if haveq(64018)
|only if haveq(63786,64018)
step
talk Nadjia the Mistblade##178795
turnin Mawsworn Battle Plans##63781 |goto 61.85,25.09 |only if haveq(63781)
turnin A More Civilized Way##64271 |goto 61.85,25.09 |only if haveq(64271)
|only if haveq(63781,64271)
step
talk The Accuser##178790
turnin The Proper Procedures##64101 |goto 61.88,25.37
|only if haveq(64101)
step
talk Kael'thas Sunstrider##178793
turnin Anima Reclaimation##63783 |goto 61.96,25.60
|only if haveq(63783)
step
talk Theotar##179218
turnin Teas and Tinctures##64089 |goto 61.72,25.89 |only if haveq(64089)
turnin Spill the Tea##64430 |goto 61.72,25.89 |only if haveq(64430)
|only if haveq(64089,64430)
step
talk Rendle##179221
turnin Gold's No Object##63784 |goto 61.71,26.02
|only if haveq(63784)
step
talk Baroness Vashj##179149
turnin Continued Efforts: Mauler's Outlook##63787 |goto 60.98,28.06
|only if haveq(63787)
step
talk Baroness Draka##178808
turnin Old Tricks Work Best##64103 |goto 60.74,28.05
|only if haveq(64103)
step
talk Plague Deviser Marileth##178806
turnin Oozing with Character##64016 |goto 60.44,27.79 |only if haveq(64016)
turnin Oozing with Character##64017 |goto 60.44,27.79 |only if haveq(64017)
turnin Oozing with Character##63989 |goto 60.44,27.79 |only if haveq(63989)
turnin Local Reagents##64065 |goto 60.44,27.79 |only if haveq(64065)
|only if haveq(64016,64017,63989,64065)
step
talk Alexandros Mograine##178807
turnin Continued Efforts: Scholar's Den##63789 |goto 60.41,28.68
|only if haveq(63789)
step
talk Emeni##178805
turnin Nasty, Big, Pointy Teeth##63937 |goto 59.91,27.02 |only if haveq(63937)
turnin Into the Meat Grinder##64015 |goto 59.91,27.02 |only if haveq(64015)
|only if haveq(63937,64015)
step
Enter the cave |goto 42.12,41.00 < 7 |walk
click Rift Portal
|tip Inside the cave.
Enter a Rift Portal |q 65266/2 |goto 41.09,42.28 |or
'|complete not completedq(63960,63962,63958,63957,63959,63776,63964,63794,63963,63792,63793,63791,63790,63954,63955,63777,63961,63956,64070,64432,63775,63934,63965,64104,63950,63780,63778,63935,63785,64080,63782,63788,63936,64040,64240,64043,64194,63779,64166,63786,64018,63781,64271,64101,63783,64089,64430,63784,63787,64103,64016,64017,63989,64065,63789,63937,64015) |next "Begin_Dailies" |or
|only if haveq(65266)
step
click Riftbound Cache##369437+
|tip They look like large chests all over Korthia.
|tip Caches drop the most repositories.
Kill enemies around this area
|tip All over Korthia.
collect 25 Korthian Repository##188740 |q 65266/3 |goto 62.78,22.60 |or
|tip You have 15 minutes in the rift to collect these.
|tip If you exceed that time you will need to buy another key and enter the rift again.
'|complete not completedq(63960,63962,63958,63957,63959,63776,63964,63794,63963,63792,63793,63791,63790,63954,63955,63777,63961,63956,64070,64432,63775,63934,63965,64104,63950,63780,63778,63935,63785,64080,63782,63788,63936,64040,64240,64043,64194,63779,64166,63786,64018,63781,64271,64101,63783,64089,64430,63784,63787,64103,64016,64017,63989,64065,63789,63937,64015) |next "Begin_Dailies" |or
|only if haveq(65266)
step
Use the _"Exit the Rift"_ ability
|tip It appears as a button on-screen.
Leave the Rift |nobuff spell:354870 |q 65266 |or
'|complete not completedq(63960,63962,63958,63957,63959,63776,63964,63794,63963,63792,63793,63791,63790,63954,63955,63777,63961,63956,64070,64432,63775,63934,63965,64104,63950,63780,63778,63935,63785,64080,63782,63788,63936,64040,64240,64043,64194,63779,64166,63786,64018,63781,64271,64101,63783,64089,64430,63784,63787,64103,64016,64017,63989,64065,63789,63937,64015) |next "Begin_Dailies" |or
|only if haveq(65266)
step
talk Archivist Roh-Suir##178257
turnin Lost Research##65266 |goto 62.78,22.60
|only if haveq(65266)
step
Subdue the Jailer's Efforts |q 63949/1 |or
|tip Complete covenant assault quests in The Maw and daily quests in Korthia.
|tip Use the "Covenant Assaults" and "Korthia Daily Quests" guides to accomplish this.
|tip You can also loot treasures, kill rares, and kill Torghast bosses.
'|complete not completedq(63960,63962,63958,63957,63959,63776,63964,63794,63963,63792,63793,63791,63790,63954,63955,63777,63961,63956,64070,64432,63775,63934,63965,64104,63950,63780,63778,63935,63785,64080,63782,63788,63936,64040,64240,64043,64194,63779,64166,63786,64018,63781,64271,64101,63783,64089,64430,63784,63787,64103,64016,64017,63989,64065,63789,63937,64015) |next "Begin_Dailies" |or
|only if haveq(63949)
step
talk Tal-Galan##177927
turnin Shaping Fate##63949 |goto 62.66,24.74
|only if haveq(63949)
step
You have completed all daily quests in Korthia
|tip This guide will reset when more become available.
'|complete not completedq(63960,63962,63958,63957,63959,63776,63964,63794,63963,63792,63793,63791,63790,63954,63955,63777,63961,63956,64070,64432,63775,63934,63965,64104,63950,63780,63778,63935,63785,64080,63782,63788,63936,64040,64240,64043,64194,63779,64166,63786,64018,63781,64271,64101,63783,64089,64430,63784,63787,64103,64016,64017,63989,64065,63789,63937,64015) |next "Begin_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Shadowlands (50-60)\\Eternity's End\\Zereth Mortis Daily Quests",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the various daily quests in Zereth Mortis.",
condition_suggested=function() return level == 60 and completedq(64230) end,
patch='90200',
},[[
step
label "Begin_Dailies"
Unlock Zereth Mortis Daily Quests |complete completedq(64230)
|tip Complete the "Cyphers of the First Ones" quest in the third chapter of the Zereth Mortis campaign.
|tip Use the "Zereth Mortis" guide to accomplish this.
step
talk Highlord Bolvar Fordragon##181183
accept Patterns Within Patterns##65324 |goto Zereth Mortis/0 34.99,64.75 |only if questactive(65324) or completedq(65324)
accept Patterns Within Patterns##66042 |goto Zereth Mortis/0 34.99,64.75 |only if questactive(66042) or completedq(66042)
|only if questactive(65324,66042) or completedq(65324,66042)
step
talk Firim##177958
|tip Inside the cave.
accept Forcing the Cycle##65255 |goto Zereth Mortis/0 34.22,48.64 |only if questactive(65255) or completedq(65255)
accept Portal Play##65142 |goto 34.22,48.64 |only if questactive(65142) or completedq(65142)
accept Fleet-footed and Fastidious##65226 |goto 34.22,48.64 |only if questactive(65226) or completedq(65226)
accept Fruit of the Bloom##65177 |goto 34.22,48.64 |only if questactive(65177) or completedq(65177)
accept Overgrown Story##64785 |goto 34.22,48.64 |only if questactive(64785) or completedq(64785)
accept Step Into the Ring##64977 |goto 34.22,48.64 |only if questactive(64977) or completedq(64977)
accept Materials of Creation##64717 |goto 34.22,48.64 |only if questactive(64717) or completedq(64717)
accept Hollow Efforts##64579 |goto 34.22,48.64 |only if questactive(64579) or completedq(64579)
accept Cluck, Cluck, Boom##65256 |goto 34.22,48.64 |only if questactive(65256) or completedq(65256)
accept Trappings of Success##64854 |goto 34.22,48.64 |only if questactive(64854) or completedq(64854)
|only if questactive(65255,65142,65226,65177,64785,64977,64717,64579,65256,64854) or completedq(65255,65142,65226,65177,64785,64977,64717,64579,65256,64854)
stickystart "Assist_Your_Allies"
stickystart "Assist_Your_Allies_2"
step
Meet up with Rana |q 65226/1 |goto 36.57,56.28
|only if haveq(65226) or completedq(65226)
step
clicknpc Fleet-Feather##183475
Mount the Fleet-footed Strider |q 65226/2 |goto 36.71,56.53
|only if haveq(65226) or completedq(65226)
stickystart "Kill_80_Thieving_Mawrats"
step
map Zereth Mortis/0
path follow smart; loop on; ants curved; dist 30
path	37.53,59.53	39.93,65.43	43.01,69.01	48.51,69.60	52.23,68.13
path	56.32,61.52	57.64,56.96	56.84,47.67	55.24,44.83	52.67,41.64
path	49.43,39.65	43.90,39.75	41.34,41.65	39.04,45.97	37.62,48.64
path	36.66,53.50
Recover #6# Stolen Relics |q 65226/3 |goto 36.83,56.59
|tip They look like small objects with light coming out of the top.
|tip Follow the path, running over top of them on the Fleet-Footed Strider.
|tip They appear on your minimap as yellow dots.
|only if haveq(65226) or completedq(65226)
step
label "Kill_80_Thieving_Mawrats"
kill 80 Thieving Mawrat##183466 |q 65226/4 |goto 36.83,56.59
|tip Use the abilities on your vehicle bar.
|only if haveq(65226) or completedq(65226)
stickystart "Kill_5_Mawsworn_Cryptoseers"
stickystart "Collect_40_Neomotes"
stickystart "Recalibrate_10_Malfunctioned_Poultrid"
step
use the Containment Trap##187684
|tip Use it on Runefur.
clicknpc Runefur##181344
Examine Runefur |q 64854/2 |goto 39.77,52.09
|only if haveq(64854) or completedq(64854)
step
use the Containment Trap##187684
|tip Use it on Cipherclad.
clicknpc Cipherclad##181349
Examine Cipherclad |q 64854/4 |goto 38.92,58.61
|only if haveq(64854) or completedq(64854)
step
use the Containment Trap##187684
|tip Use it on Bitterbeak.
clicknpc Bitterbeak##181352
Examine Bitterbeak |q 64854/3 |goto 41.65,62.36
|only if haveq(64854) or completedq(64854)
step
label "Kill_5_Mawsworn_Cryptoseers"
kill 5 Mawsworn Cryptoseer##181346 |q 64854/1 |goto 40.47,63.61
You can find more around [39.40,49.01]
|only if haveq(64854) or completedq(64854)
step
label "Collect_40_Neomotes"
use Firim's Forge-tap##187516
|tip Use it near Progenitor Forges.
|tip They look like large half-buried spheres on the ground around this area.
|tip They appear on your minimap as yellow dots.
Collect #40# Neomotes |q 64579/1 |goto 36.81,45.60
You can find more around:
[39.06,50.28]
[38.06,55.28]
[38.12,64.21]
[39.80,62.87]
|only if haveq(64579) or completedq(64579)
step
label "Recalibrate_10_Malfunctioned_Poultrid"
use the Kinematic Micro-Life Recalibrator##188697
|tip Use it on Malfunctioned Poultrid.
|tip They look like sparking robotic chickens on the ground around this area.
|tip They appear on your minimap as yellow dots.
Recalibrate #10# Malfunctioned Poultrid |q 65256/1 |goto 39.08,51.27
You can find more around:
[38.40,55.45]
[40.56,64.28]
[44.13,67.52]
|only if haveq(65256) or completedq(65256)
step
talk Firim##177958
|tip Inside the cave.
turnin Fleet-footed and Fastidious##65226 |goto 34.22,48.64 |only if haveq(65226) or completedq(65226)
turnin Hollow Efforts##64579 |goto 34.22,48.64 |only if haveq(64579) or completedq(64579)
turnin Trappings of Success##64854 |goto 34.22,48.64 |only if haveq(64854) or completedq(64854)
turnin Cluck, Cluck, Boom##65256 |goto 34.22,48.64 |only if haveq(65256) or completedq(65256)
|only if haveq(65226,64579,64854,65256) or completedq(65226,64579,64854,65256)
step
click Firim's Portal
Use the Firim's Portal |q 65142/2 |goto 34.78,48.63
|only if haveq(65142) or completedq(65142)
step
use Portal Initiator##188170
click Emergency Broker Portal
|tip When there are no more Prying Eyes in the area, travel to a new one with the portal.
clicknpc Prying Eye##183146+
|tip They look like small Automa around each teleport area.
|tip Each time you teleport to a new area, you will find more Prying Eyes nearby.
|tip They appear on your minimap as yellow dots.
Collect #12# Research Data |q 65142/3
|only if haveq(65142) or completedq(65142)
step
talk Elder Amir##180630
accept Your Death Or Mine##65096 |goto 61.37,51.55 |only if questactive(65096) or completedq(65096)
accept Not Safe for Work##65072 |goto 61.37,51.55 |only if questactive(65072) or completedq(65072)
|only if questactive(65096,65072) or completedq(65096,65072)
stickystart "Collect_8_Relics_65072"
stickystart "Kill_Punisher_Makaris"
stickystart "Collect_6_Sacred_Relics"
step
kill Cartel Xy Plunderer##182378+
|tip Rana walks around this area.
|tip Follow Rana, killing them as they attack.
Escort Rana Searching for Relics |q 65072/1 |goto 65.15,45.12
|only if haveq(65072) or completedq(65072)
step
label "Collect_8_Relics_65072"
click Progenitor Relic##373463+
|tip Rana will periodically reveal them as you follow.
Collect #8# Relics |q 65072/2 |goto 65.15,45.12
|only if haveq(65072) or completedq(65072)
step
label "Kill_Punisher_Makaris"
kill Punisher Makaris##182563 |q 65096/1 |goto 65.94,45.75
|tip He floats around this area.
|tip Avoid the large metal landmines on the ground around this area.
|only if haveq(65096) or completedq(65096)
step
label "Collect_6_Sacred_Relics"
click Progenitor Relic##373479+
|tip They look like small glowing statues around this area.
|tip The large metal landmines can be used to knock you onto platforms to reach these.
collect 6 Sacred Relic##187996 |q 65096/2 |goto 65.41,45.27
|only if haveq(65096) or completedq(65096)
step
talk Elder Amir##180630
turnin Your Death Or Mine##65096 |goto 61.37,51.55 |only if haveq(65096) or completedq(65096)
turnin Not Safe for Work##65072 |goto 61.37,51.55 |only if haveq(65072) or completedq(65072)
|only if haveq(65096,65072) or completedq(65096,65072)
step
talk Elder Nirav##181179
accept Bzzzzt!##65268 |goto 61.25,51.60 |only if questactive(65268) or completedq(65268)
accept Choose Your Fighter##64964 |goto 61.25,51.58 |only if questactive(64964) or completedq(64964)
accept Buried Remnants##65265 |goto 61.25,51.58 |only if questactive(65265) or completedq(65265)
accept Operation: Relocation##65264 |goto 61.25,51.58 |only if questactive(65264) or completedq(65264)
accept Obvious Plant##65269 |goto 61.25,51.58 |only if questactive(65269) or completedq(65269)
|only if questactive(65268,64964,65265,65264,65269) or completedq(65268,64964,65265,65264,65269)
step
talk Mai Ber##184434
accept Necessary Resourcing##65445 |goto 58.43,49.83 |only if questactive(65445) or completedq(65445)
accept Dangerous State##65363 |goto 58.43,49.83 |only if questactive(65363) or completedq(65363)
accept Super Jiro##65364 |goto 58.39,49.71 |only if questactive(65364) or completedq(65364)
|only if questactive(65445,65363,65364) or completedq(65445,65363,65364)
step
clicknpc Jiro Prime##184432
Mount Jiro Prime |q 65364/1 |goto 58.50,49.40
|only if haveq(65364) or completedq(65364)
stickystart "Slay_5_Mawbroken_Automa"
stickystart "Slay_100_Mawsworn_Forces"
step
Use the _"Grappling Beam"_ ability
|tip Use it on Jiro standing on objects around this area.
|tip They appear on your minimap as yellow dots.
Rescue #7# Distressed Jiro |q 65364/4 |goto 50.39,45.12
|only if haveq(65364) or completedq(65364)
step
label "Slay_5_Mawbroken_Automa"
Kill enemies around this area
|tip Use the abilities on your vehicle bar.
Slay #5# Mawbroken Automa |q 65364/2 |goto 50.39,45.12
|only if haveq(65364) or completedq(65364)
step
label "Slay_100_Mawsworn_Forces"
Kill enemies around this area
|tip Use the abilities on your vehicle bar.
Slay #100# Mawsworn Forces |q 65364/3 |goto 50.39,45.12
|only if haveq(65364) or completedq(65364)
step
Watch the dialogue
Return to Mai Ber |outvehicle |goto 58.39,49.92 |q 65364
|only if haveq(65364) or completedq(65364)
step
talk Mai Ber##184434
turnin Super Jiro##65364 |goto 58.39,49.71
|only if haveq(65364) or completedq(65364)
step
talk Mai Soh##180289
accept Not of the Body##65362 |goto Zereth Mortis/0 58.32,49.94 |only if questactive(65362) or completedq(65362)
accept Motes of Knowledge##65325 |goto 58.32,49.94 |only if questactive(65325) or completedq(65325)
accept Circle of Strife##65326 |goto 58.32,49.94 |only if questactive(65326) or completedq(65326)
accept Historic Protection##64592 |goto 58.32,49.94 |only if questactive(64592) or completedq(64592)
|only if questactive(65362,65325,65326,64592) or completedq(65362,65325,65326,64592)
stickystart "Collect_3_Solidified_Neomotes"
stickystart "Collect_30_Neomote_Residue"
step
Kill enemies around this area
Charge the Progenitor Orb |q 65255/1 |goto 49.90,58.77
|only if haveq(65255) or completedq(65255)
step
click Progenitor Orb
kill Coalesced Corruption##183804
Purify the Progenitor Orb |q 65255/2 |goto 49.30,58.07
|only if haveq(65255) or completedq(65255)
step
click Coiled Rope
Collect the Ropes |q 65264/1 |goto 52.63,49.92
|only if haveq(65264) or completedq(65264)
stickystart "Kill_6_Soul-Parched_Gorgers"
stickystart "Kill_2_Reality_Breachers"
step
use Proto Wrangler Rope##189554
|tip Use it on Wild Proto Avians flying around this area.
|tip Each one reduces your walking and mounted speed.
|tip Wrangle the ones far from Pilgrim Arizh first.
Wrangle 8 Wild Proto Avians |havebuff 8 spell:363307 |goto 53.98,56.94 |or
You can find more around:
[54.83,53.71]
[54.27,50.98]
[51.42,51.13]
'|complete completedq("65264/2") |or
|only if haveq(65264) or completedq(65264)
step
Deliver #8# Wild Proto Avians |q 65264/2 |goto 52.68,49.72
|only if haveq(65264) or completedq(65264)
step
label "Kill_6_Soul-Parched_Gorgers"
kill 6 Soul-Parched Gorger##184198 |q 65264/3 |goto 54.19,53.54
|only if haveq(65264) or completedq(65264)
step
label "Kill_2_Reality_Breachers"
kill 2 Reality Breacher##184185 |q 65264/4 |goto 54.19,53.54
|only if haveq(65264) or completedq(65264)
step
label "Collect_3_Solidified_Neomotes"
Kill Gorger and Breacher enemies around this area
collect 3 Solidified Neomote##189536 |q 65445/2 |goto 54.19,53.54
|only if haveq(65445) or completedq(65445)
step
label "Collect_30_Neomote_Residue"
Kill enemies around this area
collect 30 Neomote Residue##189535 |q 65445/1 |goto 54.19,53.54
|only if haveq(65445) or completedq(65445)
step
click Sequence Generator
|tip It looks like a large console in the back of the room.
Choose _<Start the sequence.>_
|tip This will cause Automentals to attack one at a time.
Kill Generated enemies inside the building.
Slay #3# Generated Creations |q 64977/2 |goto Nexus of Actualization/0 54.52,29.87
|only if haveq(64977) or completedq(64977)
stickystart "Slay_12_Dominated_Jiro"
stickystart "Retrieve_30_Debris"
step
kill Leashkeeper Helzid##184426 |q 65363/2 |goto Zereth Mortis/0 44.92,42.24
|only if haveq(65363) or completedq(65363)
step
label "Slay_12_Dominated_Jiro"
kill 12 Dominated Jiro##184425 |q 65363/1 |goto 47.70,39.66
|tip They appear as yellow dots on your minimap.
|only if haveq(65363) or completedq(65363)
step
label "Retrieve_30_Debris"
use the Zephyreal Generator##188788
|tip Use it near glittering wasp hives around this area.
Retrieve #30# Debris |q 65268/1 |goto 63.13,58.82
You can find more around:
[52.06,42.00]
[52.66,43.87]
|only if haveq(65268) or completedq(65268)
stickystart "Collect_10_Strange_Artifacts"
stickystart "Collect_10_Eidolic_Fragments"
stickystart "Collect_300_Minor_Enigmets"
step
talk Custodian Taj##181780
Speak to Custodian Taj at the Primal Wasteland |q 64964/1 |goto 48.59,50.13
|only if haveq(64964) or completedq(64964)
step
clicknpc Automa Mender##181728
|tip This Automa is a healer.
clicknpc Automa Protector##181729
|tip This Automa is a tank.
clicknpc Automa Harrier##181727
|tip This Automa is DPS.
Choose an Automa |q 64964/2 |goto 48.85,50.30
|only if haveq(64964) or completedq(64964)
step
Kill enemies around this area
Slay #10# Mawsworn |q 64964/3 |goto 49.48,46.64
|only if haveq(64964) or completedq(64964)
step
label "Collect_10_Strange_Artifacts"
click Buried Artifact+
|tip They look like large mounds of dirt on the ground around this area.
collect 10 Strange Artifact##188738 |q 65265/1 |goto 49.47,45.86
|only if haveq(65265) or completedq(65265)
stickystart "Inspect_10_Automa"
step
use the Jiro Scan##189449
|tip Use it on Automa Menders and Servitors around this area.
|tip Some of them will be Dreadlords in disguise, attacking you.
kill 6 Dreadlord Infiltrator##182324 |q 65362/1 |goto 44.13,52.79
|only if haveq(65362) or completedq(65362)
step
label "Inspect_10_Automa"
clicknpc Unknown##177723+
|tip They look like large dormant Automa around this area.
Inspect #10# Automa |q 65326/1 |goto 43.07,52.17
|only if haveq(65326) or completedq(65326)
step
label "Collect_10_Eidolic_Fragments"
use Firim's Forge-tap##187516
|tip Use it near spent forges.
|tip They look like enormous spheres half-buried in the ground.
collect 10 Eidolic Fragment##187782 |q 64717/1 |goto 44.22,46.22
You can find more around:
[50.74,47.75]
[50.50,60.08]
[45.47,61.14]
|only if haveq(64717) or completedq(64717)
step
label "Collect_300_Minor_Enigmets"
use Firim's Forge-tap##187516
|tip Use it near Progenitor Forges.
|tip They look like large half-buried spheres.
|tip They appear on your minimap as yellow dots.
collect 300 Minor Enigmet##187779 |q 64717/2 |goto 43.38,49.05
You can find more around: |notinsticky
[50.74,47.75] |notinsticky
[50.50,60.08] |notinsticky
[45.47,61.14] |notinsticky
|only if haveq(64717) or completedq(64717)
step
click Terraforming Record+
|tip They look like large obelisks with spheres floating above them on the ground around this area.
|tip They appear on your minimap as yellow dots.
Retrieve #6# Terraforming Records |q 64592/1 |goto Zereth Mortis/0 61.46,25.29
|only if haveq(64592) or completedq(64592)
stickystart "Examine_12_Geomentals"
stickystart "Collect_10_Composition_Motes"
step
use the Containment Trap##187684
|tip Use it on Gaiagantic.
|tip Gaiagantic looks like a rock elemental patrolling a small area.
clicknpc Gaiagantic##181223
|tip Click it after containing it with the trap.
Examine the Gaiagantic |q 64785/2 |goto 60.53,64.64
|only if haveq(64785) or completedq(64785)
step
label "Examine_12_Geomentals"
use the Containment Trap##187684
|tip Use it on Forgotten Geomentals.
clicknpc Overgrown Geomental##179007+
|tip Click them after containing them with the trap.
Examine #12# Geomentals |q 64785/3 |goto 60.53,64.64
You can find more around: |notinsticky
[62.15,69.61] |notinsticky
[63.01,72.44] |notinsticky
|only if haveq(64785) or completedq(64785)
step
kill Toadious##184395
|tip Interrupt "Play Dead."
collect Compilation Nodule##189439 |q 65325/1 |goto 64.47,68.51
|only if haveq(65325) or completedq(65325)
step
label "Collect_10_Composition_Motes"
kill Forgotten Geomental##180930+
kill Annelid Mudborer##182360+
click Instructional Bit##375106+
|tip They look like small spheres with light shining on them.
|tip Mai Obet will occasionally reveal them around this area.
collect 10 Composition Mote##189438 |q 65325/2 |goto 59.51,68.72
You can find more around:
[61.09,66.10]
[61.73,70.24]
|only if haveq(65325) or completedq(65325)
stickystart "Collect_8_Catamelon_Seeds"
stickystart "Slay_12_Overgrowths"
step
click Catalyst Energy Sensor+
|tip They look like green spheres with stalks growing from the top on the ground around this area.
Place #8# Sensors |q 65269/1 |goto Zereth Mortis/0 49.78,92.76
You can find more around:
[52.30,89.76]
[51.05,86.61]
|only if haveq(65269) or completedq(65269)
step
label "Collect_8_Catamelon_Seeds"
Kill Overgrowth enemies around this area
click Seedling of Catamelon+
|tip They look like seed pods with a green top on the ground around this area.
|tip They appear on your minimap as yellow dots.
collect 8 Catamelon Seed##188230 |q 65177/2 |goto 45.19,86.79
You can find more around [49.61,89.56]
|only if haveq(65177) or completedq(65177)
step
label "Slay_12_Overgrowths"
Kill Overgrowth enemies around this area
Slay #12# Overgrowths |q 65177/1 |goto 45.19,86.79
You can find more around [49.61,89.56] |notinsticky
|only if haveq(65177) or completedq(65177)
step
talk Elder Nirav##181179
turnin Bzzzzt!##65268 |goto 61.25,51.60 |only if haveq(65268) or completedq(65268)
turnin Choose Your Fighter##64964 |goto 61.25,51.58 |only if haveq(64964) or completedq(64964)
turnin Buried Remnants##65265 |goto 61.25,51.58 |only if haveq(65265) or completedq(65265)
turnin Operation: Relocation##65264 |goto 61.25,51.58 |only if haveq(65264) or completedq(65264)
turnin Obvious Plant##65269 |goto 61.25,51.58 |only if haveq(65269) or completedq(65269)
|only if haveq(65268,64964,65265,65264,65269) or completedq(65268,64964,65265,65264,65269)
step
talk Mai Ber##184434
turnin Necessary Resourcing##65445 |goto 58.43,49.83 |only if haveq(65445) or completedq(65445)
turnin Dangerous State##65363 |goto 58.43,49.83 |only if haveq(65363) or completedq(65363)
|only if haveq(65445,65363) or completedq(65445,65363)
step
talk Mai Soh##180289
turnin Not of the Body##65362 |goto Zereth Mortis/0 58.32,49.94 |only if haveq(65362) or completedq(65362)
turnin Motes of Knowledge##65325 |goto 58.32,49.94 |only if haveq(65325) or completedq(65325)
turnin Circle of Strife##65326 |goto 58.32,49.94 |only if haveq(65326) or completedq(65326)
turnin Historic Protection##64592 |goto 58.32,49.94 |only if haveq(64592) or completedq(64592)
|only if haveq(65362,65325,65326,64592) or completedq(65362,65325,65326,64592)
step
talk Firim##177958
|tip Inside the cave.
turnin Forcing the Cycle##65255 |goto Zereth Mortis/0 34.22,48.64 |only if haveq(65255) or completedq(65255)
turnin Portal Play##65142 |goto 34.22,48.64 |only if haveq(65142) or completedq(65142)
turnin Fruit of the Bloom##65177 |goto 34.22,48.64 |only if haveq(65177) or completedq(65177)
turnin Overgrown Story##64785 |goto 34.22,48.64 |only if haveq(64785) or completedq(64785)
turnin Step Into the Ring##64977 |goto 34.22,48.64 |only if haveq(64977) or completedq(64977)
turnin Materials of Creation##64717 |goto 34.22,48.64 |only if haveq(64717) or completedq(64717)
|only if haveq(65255,65142,65177,64785,64977,64717) or completedq(65255,65142,65177,64785,64977,64717)
step
label "Assist_Your_Allies"
Assist Your Allies |q 65324/1 |or
|tip Complete daily quests with the "Zereth Mortis Daily Quests" guide.
|tip Complete world quests with the "Zereth Mortis World Quests" guide.
|tip You can also kill rare mobs and loot treasures using the POI system on your map.
|only if haveq(65324) or completedq(65324)
'|complete not completedq(65255,65142,65226,65177,65096,65072,65268,65445,64785,64977,64717,65256,64854,64579,65362,65325,65326,64592,64964,65265,65264,65269,65363,65364) |next "Begin_Dailies" |or
step
label "Assist_Your_Allies_2"
Assist Your Allies |q 66042/1 |or
|tip Complete daily quests with the "Zereth Mortis Daily Quests" guide.
|tip Complete world quests with the "Zereth Mortis World Quests" guide.
|tip You can also kill rare mobs and loot treasures using the POI system on your map.
|only if haveq(66042) or completedq(66042)
'|complete not completedq(65255,65142,65226,65177,65096,65072,65268,65445,64785,64977,64717,65256,64854,64579,65362,65325,65326,64592,64964,65265,65264,65269,65363,65364) |next "Begin_Dailies" |or
step
talk Highlord Bolvar Fordragon##181183
turnin Patterns Within Patterns##65324 |goto 34.98,64.76 |only if haveq(65324) or completedq(65324)
turnin Patterns Within Patterns##66042 |goto 34.98,64.76 |only if haveq(66042) or completedq(66042)
|only if haveq(65324,66042) or completedq(65324,66042)
step
You have completed all daily quests in Zereth Mortis
|tip This guide will reset when more become available.
'|complete not completedq(65255,65142,65226,65177,65096,65072,65268,65445,64785,64977,64717,65256,64854,64579,65362,65325,65326,64592,64964,65265,65264,65269,65363,65364) |next "Begin_Dailies"
]])
