local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if ZGV:DoMutex("ProfessionsCDRAGON") then return end
ZygorGuidesViewer.GuideMenuTier = "SHA"
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Alchemy\\Leveling Guides\\Dragon Isles Alchemy 1-100",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Dragon Isles Alchemy profession from 1-100.",
startlevel=60.0,
condition_end=function() return skill('Dragon Isles Alchemy') >= 100 end,
condition_suggested=function() return skill('Dragon Isles Alchemy') > 0 and skill('Dragon Isles Alchemy') < 100 and level >= 60 end,
},[[
step
talk Gohfyrr##185569
buy 50 Draconic Vial##191474 |goto Valdrakken/0 35.99,67.97 |or
|tip Jewelcrafters can create higher quality vials, but they are not necessary for skill-ups.
|tip You will need more than this, but this should get you through the first half.
'|complete skill("Dragon Isles Alchemy") >= 65 |or |only if default
'|complete skill("Dragon Isles Alchemy") >= 70 |or |only if KulTiran
'|complete skill("Dragon Isles Alchemy") >= 80 |or |only if Goblin
step
talk Conflago##185545
Train Alchemy |skillmax Alchemy,300 |goto Valdrakken/0 36.39,71.70
step
talk Conflago##185545
Train Dragon Isles Alchemy |skillmax Dragon Isles Alchemy,100 |goto 36.39,71.70
stickystart "Collect_Hochenblume_7"
step
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	47.57,59.13	48.18,61.09	49.82,61.61	50.26,59.59	48.84,59.09
Follow the path
kill Angered Steam##190694+
kill Steam Reaver##190700+
collect 4 Rousing Frost##190328 |or
'|complete skill("Dragon Isles Alchemy") >= 7 |or |only if default
'|complete skill("Dragon Isles Alchemy") >= 12 |or |only if KulTiran
'|complete skill("Dragon Isles Alchemy") >= 22 |or |only if Goblin
step
label "Collect_Hochenblume_7"
map The Azure Span
path	15.75,46.71	17.58,41.19	16.46,39.23	18.69,29.45	17.11,26.36
path	21.19,25.67	25.00,30.93	31.47,36.84	37.16,29.24	42.99,36.12
path	46.49,32.25	49.87,29.25	52.99,26.54	55.46,24.84	58.80,24.19
path	61.63,22.73	63.67,22.82	65.40,19.81	68.93,23.31	72.46,26.81
path	66.18,31.47	62.44,37.47	63.50,40.89	58.10,49.22	58.80,55.63
path	49.27,61.93	45.62,56.80	45.00,53.05	35.88,49.80	34.69,47.15
path	29.79,46.25	24.62,47.46	17.61,48.43
click Hochenblume##381209+
collect 16 Hochenblume##191460 |or
_Or_
collect 16 Hochenblume##191461 |or
_Or_
collect 16 Hochenblume##191462 |or
|tip Farm them with Herbalism or purchase them from the auction house.
|tip Any quality will work, you only need one.
'|complete skill("Dragon Isles Alchemy") >= 7 |or |only if default
'|complete skill("Dragon Isles Alchemy") >= 12 |or |only if KulTiran
'|complete skill("Dragon Isles Alchemy") >= 22 |or |only if Goblin
step
create 2 Refreshing Healing Potion##370539,Dragon Isles Alchemy,7 |or |only if default
create 2 Refreshing Healing Potion##370539,Dragon Isles Alchemy,12 |or |only if KulTiran
create 2 Refreshing Healing Potion##370539,Dragon Isles Alchemy,22 |or |only if Goblin
step
talk Conflago##185545
Train Aerated Mana Potion |learn Aerated Mana Potion##370547 |goto Valdrakken/0 36.39,71.70
stickystart "Collect_Hochenblume_11"
step
map The Azure Span/0
path follow smart; loop on; ants curved; dist 20
path	45.78,57.35	46.18,56.13	46.66,55.42	47.13,54.48	47.01,55.77
path	47.22,56.47	46.80,57.01	46.88,57.82	47.45,58.16	47.64,58.70
path	47.22,58.92	46.98,59.34	46.57,59.35	46.34,57.62
kill Restless Wind##186397+
collect 2 Rousing Air##190326 |or
'|complete skill("Dragon Isles Alchemy") >= 11 |or |only if default
'|complete skill("Dragon Isles Alchemy") >= 16 |or |only if KulTiran
'|complete skill("Dragon Isles Alchemy") >= 26 |or |only if Goblin
step
label "Collect_Hochenblume_11"
map The Azure Span
path	15.75,46.71	17.58,41.19	16.46,39.23	18.69,29.45	17.11,26.36
path	21.19,25.67	25.00,30.93	31.47,36.84	37.16,29.24	42.99,36.12
path	46.49,32.25	49.87,29.25	52.99,26.54	55.46,24.84	58.80,24.19
path	61.63,22.73	63.67,22.82	65.40,19.81	68.93,23.31	72.46,26.81
path	66.18,31.47	62.44,37.47	63.50,40.89	58.10,49.22	58.80,55.63
path	49.27,61.93	45.62,56.80	45.00,53.05	35.88,49.80	34.69,47.15
path	29.79,46.25	24.62,47.46	17.61,48.43
click Hochenblume##381209+
collect 16 Hochenblume##191460 |or
_Or_
collect 16 Hochenblume##191461 |or
_Or_
collect 16 Hochenblume##191462 |or
|tip Farm them with Herbalism or purchase them from the auction house.
|tip Any quality will work, you only need one.
'|complete skill("Dragon Isles Alchemy") >= 11 |or |only if default
'|complete skill("Dragon Isles Alchemy") >= 16 |or |only if KulTiran
'|complete skill("Dragon Isles Alchemy") >= 26 |or |only if Goblin
step
create 2 Aerated Mana Potion##370547,Dragon Isles Alchemy,11 |or |only if default
create 2 Aerated Mana Potion##370547,Dragon Isles Alchemy,16 |or |only if KulTiran
create 2 Aerated Mana Potion##370547,Dragon Isles Alchemy,26 |or |only if Goblin
step
talk Conflago##185545
Train Reclaim Concoctions |learn Reclaim Concoctions##370748 |goto Valdrakken/0 36.39,71.70
step
create Reclaim Concoctions##370748,Dragon Isles Alchemy,15 |or |only if default
create Reclaim Concoctions##370748,Dragon Isles Alchemy,20 |or |only if KulTiran
create Reclaim Concoctions##370748,Dragon Isles Alchemy,30 |or |only if Goblin
|tip Choose the Refreshing Healing Potions and Aerated Mana Potions you created.
step
talk Conflago##185545
Train Transmute: Awakened Air |learn Transmute: Awakened Air##370711 |goto Valdrakken/0 36.39,71.70
step
talk Conflago##185545
Train Omnium Draconis |learn Omnium Draconis##370722 |goto Valdrakken/0 36.39,71.70
stickystart "Collect_Wakened_Fire_16"
step
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	47.57,59.13	48.18,61.09	49.82,61.61	50.26,59.59	48.84,59.09
kill Angered Steam##190694+
kill Steam Reaver##190700+
collect 10 Rousing Frost##190328 |n
use Rousing Frost##190328
collect Awakened Frost##190329 |or
'|complete skill("Dragon Isles Alchemy") >= 16 |or |only if default
'|complete skill("Dragon Isles Alchemy") >= 21 |or |only if KulTiran
'|complete skill("Dragon Isles Alchemy") >= 31 |or |only if Goblin
step
label "Collect_Wakened_Fire_16"
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	37.99,69.37	37.76,71.40	36.96,72.21	35.90,72.27	36.61,73.66
path	37.17,73.87	37.94,76.03	38.65,74.48	38.52,72.73	38.76,70.86
kill Blazing Manifestation##186336+
collect 10 Rousing Fire##190320 |n |notinsticky
|tip They can also be gathered from "Molten" and "Primal" Mining nodes.
use Rousing Fire##190320 |notinsticky
collect Awakened Fire##190321 |or
'|complete skill("Dragon Isles Alchemy") >= 16 |or |only if default
'|complete skill("Dragon Isles Alchemy") >= 21 |or |only if KulTiran
'|complete skill("Dragon Isles Alchemy") >= 31 |or |only if Goblin
step
create 1 Transmute: Awakened Air##370711,Dragon Isles Alchemy,16 |goto Valdrakken/0 36.71,72.18 |or |only if default
create 1 Transmute: Awakened Air##370711,Dragon Isles Alchemy,21 |goto Valdrakken/0 36.71,72.18 |or |only if KulTiran
create 1 Transmute: Awakened Air##370711,Dragon Isles Alchemy,31 |goto Valdrakken/0 36.71,72.18 |or |only if Goblin
|tip You must be standing near the Alchemist's Lab Bench to create this.
stickystart "Collect_Saxifrage_25"
step
map The Waking Shores
path follow smart; loop off; ants curved; dist 20
path	36.92,89.27	37.93,84.73	38.97,77.03	42.45,76.05	47.14,76.93
path	50.08,68.71	53.04,61.02	58.64,62.85	64.08,69.87	69.45,72.53
path	74.07,67.94	76.06,62.90	78.51,57.95	78.12,52.67	75.69,47.78
path	70.28,42.66	67.21,47.71	68.79,55.52	66.42,60.25	61.47,55.31
path	60.03,47.41	59.98,39.24	55.17,35.69	50.97,36.67	49.38,41.87
path	51.32,48.73	54.07,55.64
click Bubble Poppy##375241+
|tip These share a spawn with Hochenblume.
collect 12 Bubble Poppy##191467 |or
_Or_
collect 12 Bubble Poppy##191468 |or
_Or_
collect 12 Bubble Poppy##191469 |or
|tip Farm them with Herbalism or purchase them from the auction house.
|tip Any quality will work, you only need one.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Dragon Isles Alchemy") >= 25 |or |only if default
'|complete skill("Dragon Isles Alchemy") >= 30 |or |only if KulTiran
'|complete skill("Dragon Isles Alchemy") >= 40 |or |only if Goblin
step
label "Collect_Saxifrage_25"
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	36.92,89.27	37.93,84.73	38.97,77.03	42.45,76.05	47.14,76.93
path	50.08,68.71	53.04,61.02	58.64,62.85	64.08,69.87	69.45,72.53
path	74.07,67.94	76.06,62.90	78.51,57.95	78.12,52.67	75.69,47.78
path	70.28,42.66	67.21,47.71	68.79,55.52	66.42,60.25	61.47,55.31
path	60.03,47.41	59.98,39.24	55.17,35.69	54.76,26.16	48.60,26.12
path	48.31,28.56	47.41,33.27	45.80,37.32	41.99,46.05	42.12,53.30
path	48.40,53.13	46.03,62.63	41.39,67.41	38.32,62.16	27.06,71.21
click Saxifrage##381207+
|tip It grows on top of rocks.
collect 12 Saxifrage##191464 |or
_Or_
collect 12 Saxifrage##191465 |or
_Or_
collect 12 Saxifrage##191466 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip Any quality will work, you only need one. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Dragon Isles Alchemy") >= 25 |or |only if default
'|complete skill("Dragon Isles Alchemy") >= 30 |or |only if KulTiran
'|complete skill("Dragon Isles Alchemy") >= 40 |or |only if Goblin
stickystart "Collect_Hochenblume_25"
step
map The Azure Span/0
path follow smart; loop on; ants curved; dist 20
path	23.67,48.05	22.43,48.08	19.37,46.87	17.35,42.24	19.66,38.24
path	19.97,33.96	21.71,28.38	25.63,32.27	25.90,41.19	28.80,36.28
path	29.86,34.48	33.69,35.89	34.56,33.74	37.99,33.57	39.06,38.48
path	40.53,44.13	35.55,42.66	32.68,42.15	30.07,45.87	27.81,46.14
click Writhebark##381154+
|tip These share a spawn with other herbs.
collect 12 Writhebark##191470 |or
_Or_
collect 12 Writhebark##191471 |or
_Or_
collect 12 Writhebark##191472 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip Any quality will work, you only need one. |notinsticky
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Dragon Isles Alchemy") >= 25 |or |only if default
'|complete skill("Dragon Isles Alchemy") >= 30 |or |only if KulTiran
'|complete skill("Dragon Isles Alchemy") >= 40 |or |only if Goblin
step
label "Collect_Hochenblume_25"
map The Azure Span
path	15.75,46.71	17.58,41.19	16.46,39.23	18.69,29.45	17.11,26.36
path	21.19,25.67	25.00,30.93	31.47,36.84	37.16,29.24	42.99,36.12
path	46.49,32.25	49.87,29.25	52.99,26.54	55.46,24.84	58.80,24.19
path	61.63,22.73	63.67,22.82	65.40,19.81	68.93,23.31	72.46,26.81
path	66.18,31.47	62.44,37.47	63.50,40.89	58.10,49.22	58.80,55.63
path	49.27,61.93	45.62,56.80	45.00,53.05	35.88,49.80	34.69,47.15
path	29.79,46.25	24.62,47.46	17.61,48.43
click Hochenblume##381209+
collect 60 Hochenblume##191460 |or
_Or_
collect 60 Hochenblume##191461 |or
_Or_
collect 60 Hochenblume##191462 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip Any quality will work, you only need one. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Dragon Isles Alchemy") >= 25 |or |only if default
'|complete skill("Dragon Isles Alchemy") >= 30 |or |only if KulTiran
'|complete skill("Dragon Isles Alchemy") >= 40 |or |only if Goblin
step
create 12 Omnium Draconis##370722,Dragon Isles Alchemy,25 |goto Valdrakken/0 36.71,72.18 |or |only if default
create 12 Omnium Draconis##370722,Dragon Isles Alchemy,30 |goto Valdrakken/0 36.71,72.18 |or |only if KulTiran
create 12 Omnium Draconis##370722,Dragon Isles Alchemy,40 |goto Valdrakken/0 36.71,72.18 |or |only if Goblin
|tip You must be standing near the Alchemist's Lab Bench to create this.
step
talk Conflago##185545
Train Primal Convergent |learn Primal Convergent##370717 |goto Valdrakken/0 36.39,71.70
step
talk Conflago##185545
Train Phial of Tepid Versatility |learn Phial of Tepid Versatility##370465 |goto Valdrakken/0 36.39,71.70
step
talk Conflago##185545
Train Basic Phial Experimentation |learn Basic Phial Experimentation##370746 |goto Valdrakken/0 36.39,71.70
step
talk Conflago##185545
Train Basic Potion Experimentation |learn Basic Potion Experimentation##370743 |goto Valdrakken/0 36.39,71.70
stickystart "Collect_Wakened_Fire_26"
stickystart "Collect_Wakened_Frost_26"
step
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	52.19,32.87	50.73,33.22	49.95,33.73	49.29,33.52	49.63,31.58
path	50.23,30.93	50.98,31.30	52.49,30.87	53.65,31.43	53.34,32.31
path	52.55,32.60	51.81,33.07
Kill Elemental enemies around this area
collect 10 Rousing Earth##190315 |n
use Rousing Earth##190315
collect Awakened Earth##190316 |or
'|complete skill("Dragon Isles Alchemy") >= 26 |or |only if default
'|complete skill("Dragon Isles Alchemy") >= 31 |or |only if KulTiran
'|complete skill("Dragon Isles Alchemy") >= 41 |or |only if Goblin
step
label "Collect_Wakened_Fire_26"
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	37.99,69.37	37.76,71.40	36.96,72.21	35.90,72.27	36.61,73.66
path	37.17,73.87	37.94,76.03	38.65,74.48	38.52,72.73	38.76,70.86
kill Blazing Manifestation##186336+ |notinsticky
collect 10 Rousing Fire##190320 |n |notinsticky
|tip They can also be gathered from "Molten" and "Primal" Mining nodes. |notinsticky
use Rousing Fire##190320 |notinsticky
collect Awakened Fire##190321 |or
'|complete skill("Dragon Isles Alchemy") >= 26 |or |only if default
'|complete skill("Dragon Isles Alchemy") >= 31 |or |only if KulTiran
'|complete skill("Dragon Isles Alchemy") >= 41 |or |only if Goblin
step
label "Collect_Wakened_Frost_26"
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	47.57,59.13	48.18,61.09	49.82,61.61	50.26,59.59	48.84,59.09
kill Angered Steam##190694+ |notinsticky
kill Steam Reaver##190700+ |notinsticky
collect 10 Rousing Frost##190328 |n
use Rousing Frost##190328 |notinsticky
collect Awakened Frost##190329 |or
'|complete skill("Dragon Isles Alchemy") >= 26 |or |only if default
'|complete skill("Dragon Isles Alchemy") >= 31 |or |only if KulTiran
'|complete skill("Dragon Isles Alchemy") >= 41 |or |only if Goblin
step
map The Azure Span/0
path follow smart; loop on; ants curved; dist 20
path	45.78,57.35	46.18,56.13	46.66,55.42	47.13,54.48	47.01,55.77
path	47.22,56.47	46.80,57.01	46.88,57.82	47.45,58.16	47.64,58.70
path	47.22,58.92	46.98,59.34	46.57,59.35	46.34,57.62
kill Restless Wind##186397+
collect 10 Rousing Air##190326 |n
use Rousing Air##190326
collect Awakened Air##190327 |or
'|complete skill("Dragon Isles Alchemy") >= 26 |or |only if default
'|complete skill("Dragon Isles Alchemy") >= 31 |or |only if KulTiran
'|complete skill("Dragon Isles Alchemy") >= 41 |or |only if Goblin
step
collect Awakened Order##190324 |or
|tip This can be gathered from herbs with a Titan-Touched aura around them.
'|complete skill("Dragon Isles Alchemy") >= 26 |or |only if default
'|complete skill("Dragon Isles Alchemy") >= 31 |or |only if KulTiran
'|complete skill("Dragon Isles Alchemy") >= 41 |or |only if Goblin
step
create Primal Convergent##370717,Dragon Isles Alchemy,1 total |goto Valdrakken/0 36.71,72.18 |q 71249 |future
|tip You must be standing near the Alchemist's Lab Bench to create this.
stickystart "Collect_Hochenblume_27"
step
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	47.57,59.13	48.18,61.09	49.82,61.61	50.26,59.59	48.84,59.09
kill Angered Steam##190694+
kill Steam Reaver##190700+
collect 10 Rousing Frost##190328 |n
use Rousing Frost##190328
collect 2 Awakened Frost##190329 |or
'|complete skill("Dragon Isles Alchemy") >= 27 |or |only if default
'|complete skill("Dragon Isles Alchemy") >= 32 |or |only if KulTiran
'|complete skill("Dragon Isles Alchemy") >= 42 |or |only if Goblin
step
label "Collect_Hochenblume_27"
map The Azure Span
path	15.75,46.71	17.58,41.19	16.46,39.23	18.69,29.45	17.11,26.36
path	21.19,25.67	25.00,30.93	31.47,36.84	37.16,29.24	42.99,36.12
path	46.49,32.25	49.87,29.25	52.99,26.54	55.46,24.84	58.80,24.19
path	61.63,22.73	63.67,22.82	65.40,19.81	68.93,23.31	72.46,26.81
path	66.18,31.47	62.44,37.47	63.50,40.89	58.10,49.22	58.80,55.63
path	49.27,61.93	45.62,56.80	45.00,53.05	35.88,49.80	34.69,47.15
path	29.79,46.25	24.62,47.46	17.61,48.43
click Hochenblume##381209+
collect 16 Hochenblume##191460 |or
_Or_
collect 16 Hochenblume##191461 |or
_Or_
collect 16 Hochenblume##191462 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip Any quality will work, you only need one. |notinsticky
'|complete skill("Dragon Isles Alchemy") >= 27 |or |only if default
'|complete skill("Dragon Isles Alchemy") >= 32 |or |only if KulTiran
'|complete skill("Dragon Isles Alchemy") >= 42 |or |only if Goblin
step
create Phial of Tepid Versatility##370465,Dragon Isles Alchemy,1 total |q 71271 |future
stickystart "Collect_Dragon's_Alchemical_Solution_71252"
stickystart "Collect_Omnium_Draconis_71252"
step
collect 10 Artisan's Mettle##190456 |or
|tip This can be gained by increasing your Alchemy Knowledge through first-time crafts.
|tip Khadin in Ohn'ahran Plains offers 50 in exchange for each Dragon Shard of Knowledge provided.
'|complete completedq(71252,71250) |or
step
label "Collect_Dragon's_Alchemical_Solution_71252"
collect 4 Dragon's Alchemical Solution##191570 |or
|tip This can obtained by using the "Reclaim Concoctions" Alchemy recipe on potions.
'|complete completedq(71252,71250) |or
step
label "Collect_Omnium_Draconis_71252"
collect 2 Omnium Draconis##191496 |or
_Or_
collect 2 Omnium Draconis##191497 |or
_Or_
collect 2 Omnium Draconis##191498 |or
|tip This can be crafted with the "Omnium Draconis" Alchemy recipe.
|tip Any quality will work, you only need one.
'|complete completedq(71252,71250) |or
step
create Basic Potion Experimentation##370743,Dragon Isles Alchemy,1 total |goto Valdrakken/0 36.71,72.18 |q 71252 |future
|tip You must be standing near the Alchemist's Lab Bench to create this.
step
create Basic Phial Experimentation##370746,Dragon Isles Alchemy,1 total |goto Valdrakken/0 36.71,72.18 |q 71250 |future
|tip You must be standing near the Alchemist's Lab Bench to create this.
step
Continue experimenting and crafting
|tip From this point, you will discover recipes at random with Experimentation recipes.
|tip Keep experimenting until you find a useful phial or potion to level to skill 50 with. |only if default
|tip Keep experimenting until you find a useful phial or potion to level to skill 55 with. |only if KulTiran
|tip Keep experimenting until you find a useful phial or potion to level to skill 65 with. |only if Goblin
|tip Making each potion you discover once is a good idea to unlock the Alchemy Knowledge granted.
Reach Skill 50 in Dragon Isles Alchemy |skill Dragon Isles Alchemy,50 |or |only if default
Reach Skill 55 in Dragon Isles Alchemy |skill Dragon Isles Alchemy,55 |or |only if KulTiran
Reach Skill 65 in Dragon Isles Alchemy |skill Dragon Isles Alchemy,65 |or |only if Goblin
step
talk Conflago##185545
accept Examination Week##70530 |goto 36.39,71.70
step
collect 5 Dragon's Alchemical Solution##191570 |q 70530/1 |goto 36.39,71.70
|tip This can obtained by using the "Reclaim Concoctions" Alchemy recipe on potions.
step
talk Conflago##185545
turnin Examination Week##70530 |goto 36.39,71.70
step
talk Conflago##185545
Train Elemental Potion of Power |learn Elemental Potion of Power##370551 |goto Valdrakken/0 36.39,71.70
stickystart "Collect_Primal_Convergent_56"
step
collect 6 Omnium Draconis##191496 |or
_Or_
collect 6 Omnium Draconis##191497 |or
_Or_
collect 6 Omnium Draconis##191498 |or
|tip This can be crafted with the "Omnium Draconis" Alchemy recipe.
|tip Any quality will work, you only need one.
'|complete skill("Dragon Isles Alchemy") >= 56 |or |only if default
'|complete skill("Dragon Isles Alchemy") >= 61 |or |only if KulTiran
'|complete skill("Dragon Isles Alchemy") >= 71 |or |only if Goblin
step
label "Collect_Primal_Convergent_56"
collect 2 Primal Convergent##191493 |or
_Or_
collect 2 Primal Convergent##191494 |or
_Or_
collect 2 Primal Convergent##191495 |or
|tip This can be crafted with the "Primal Convergent" Alchemy recipe.
|tip Any quality will work, you only need one.
'|complete skill("Dragon Isles Alchemy") >= 56 |or |only if default
'|complete skill("Dragon Isles Alchemy") >= 61 |or |only if KulTiran
'|complete skill("Dragon Isles Alchemy") >= 71 |or |only if Goblin
step
create 2 Elemental Potion of Power##370551,Dragon Isles Alchemy,56 |goto Valdrakken/0 36.71,72.18 |or |only if default
create 2 Elemental Potion of Power##370551,Dragon Isles Alchemy,61 |goto Valdrakken/0 36.71,72.18 |or |only if KulTiran
create 2 Elemental Potion of Power##370551,Dragon Isles Alchemy,71 |goto Valdrakken/0 36.71,72.18 |or |only if Goblin
|tip You must be standing near the Alchemist's Lab Bench to create this.
step
Continue experimenting and crafting
|tip From this point, you will discover recipes at random with Experimentation recipes.
|tip Keep experimenting until you find a useful phial or potion to level to skill 65 with. |only if default
|tip Keep experimenting until you find a useful phial or potion to level to skill 70 with. |only if KulTiran
|tip Keep experimenting until you find a useful phial or potion to level to skill 80 with. |only if Goblin
|tip Making each potion you discover once is a good idea to unlock the Alchemy Knowledge granted.
|tip Check the auction house and try to make potions you can sell for extra profit.
Reach Skill 65 in Dragon Isles Alchemy |skill Dragon Isles Alchemy,65 |or |only if default
Reach Skill 70 in Dragon Isles Alchemy |skill Dragon Isles Alchemy,70 |or |only if KulTiran
Reach Skill 80 in Dragon Isles Alchemy |skill Dragon Isles Alchemy,80 |or |only if Goblin
step
create Basic Potion Experimentation##370743,Dragon Isles Alchemy,100 |or |only if default
create Basic Potion Experimentation##370743,Dragon Isles Alchemy,105 |or |only if KulTiran
create Basic Potion Experimentation##370743,Dragon Isles Alchemy,115 |or |only if Goblin
_Or_
create Basic Phial Experimentation##370746,Dragon Isles Alchemy,100 |or |only if default
create Basic Phial Experimentation##370746,Dragon Isles Alchemy,105 |or |only if KulTiran
create Basic Phial Experimentation##370746,Dragon Isles Alchemy,115 |or |only if Goblin
|tip From this point, you will need to continue experimenting to reach maximum skill level.
|tip For the final 10 points these recipes will be green, so this may take a while.
]])
ZGV.BETAEND()
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Alchemy\\Leveling Guides\\Alchemy Knowledge Treasures",{
author="support@zygorguides.com",
description="\nThis guide will walk you through collecting one-time treasures that grant Knowledge Points.",
startlevel=60.0,
condition_end=function() return completedallq(70274,70289,70305,70208,70309,70278) end,
condition_suggested=function() return skill('Dragon Isles Alchemy') >= 25 and not completedallq(70274,70289,70305,70208,70309,70278) end,
},[[
step
talk Conflago##185545
Train Alchemy |skillmax Alchemy,300 |goto Valdrakken/0 36.39,71.70
step
talk Conflago##185545
Train Dragon Isles Alchemy |skillmax Dragon Isles Alchemy,100 |goto 36.39,71.70
step
Reach Skill Level 25 in Dragon Isles Alchemy |complete skill("Dragon Isles Alchemy") >= 25 |or
|tip You must be at least skill level 25 to interact with profession treasures.
|tip Use the "Dragon Isles Alchemy 1-100" 1-100 guide to accomplish this.
Click Here to Load the "Dragon Isles Alchemy 1-100" Guide |confirm |loadguide "Profession Guides\\Alchemy\\Leveling Guides\\Dragon Isles Alchemy 1-100" |or
step
click Frostforged Potion##380559
collect Frostforged Potion##198663 |goto The Waking Shores/0 55.15,81.12 |q 70274 |future
step
use the Frostforged Potion##198663
Study the Frostforged Potion |complete itemcount(198663) == 0
step
click Well Insulated Mug##380590
collect Well Insulated Mug##198685 |goto The Waking Shores/0 25.11,74.11 |q 70289 |future
step
use the Well Insulated Mug##198685
Study the Well Insulated Mug |complete itemcount(198685) == 0
step
Enter the building |goto Ohn'ahran Plains/0 77.18,82.85 < 30 |walk
click Canteen of Suspicious Water##380611
|tip In the back of the cave.
collect Canteen of Suspicious Water##198710 |goto Ohn'ahran Plains/0 79.24,83.75 |q 70305 |future
step
use the Canteen of Suspicious Water##198710
Study the Canteen of Suspicious Water |complete itemcount(198710) == 0
step
click Experimental Decay Cauldron##380457
collect Experimental Decay Sample##198599 |goto The Azure Span/0 16.31,38.50 |q 70208 |future
step
use the Experimental Decay Sample##198599
Study the Experimental Decay Sample |complete itemcount(198599) == 0
step
click Small Basket of Firewater Powder##380616
collect Firewater Powder Sample##198712 |goto The Azure Span/0 67.06,13.16 |q 70309 |future
step
use the Firewater Powder Sample##198712
Study the Firewater Powder Sample |complete itemcount(198712) == 0
step
clicknpc Docile Cub##194855+
|tip Click Docile Cubs around the camp and drop one into each cauldron.
click Mysterious Cauldron+
|tip Click each cauldron to drop a carried cub in.
click Furry Gloop
collect Furry Gloop##201003 |goto Thaldraszus/0 55.23,30.54 |q 70278 |future
step
use the Furry Gloop##201003
Study the Furry Gloop |complete itemcount(201003) == 0
]])
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Blacksmithing\\Leveling Guides\\Dragon Isles Blacksmithing 1-100",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Dragon Isles Blacksmithing profession from 1-100.",
startlevel=60.0,
condition_end=function() return skill('Dragon Isles Blacksmithing') >= 100 end,
condition_suggested=function() return skill('Dragon Isles Blacksmithing') > 0 and skill('Dragon Isles Blacksmithing') < 100 and level >= 60 end,
},[[
step
Approximate bill of materials:
|tip Draconium Ore: 114
|tip Serevite Ore: 272
|tip Primal Flux: 106
|tip These totals are approximate.
|tip You are encouraged to make each recipe at least once and utilize the Crafting Order system, which will vary the materials needed.
|tip These materials will get you to aproximately 56 skill level. |only if default
|tip These materials will get you to aproximately 61 skill level. |only if DarkIronDwarf or KulTiran
|tip These materials will get you to aproximately 66 skill level. |only if LightforgedDraenei
Click Here to Continue |confirm
step
talk Metalshaper Kuroko##185546
Train Blacksmithing |skillmax Blacksmithing,300 |goto Valdrakken/0 36.96,47.08
step
talk Metalshaper Kuroko##185546
Train Dragon Isles Blacksmithing |skillmax Dragon Isles Blacksmithing,100 |goto 36.96,47.08
step
talk Provisioner Thom##193659
|tip Inside the building.
buy 1 Blacksmith Hammer##5956 |goto Valdrakken/0 36.57,50.64 |or
'|complete skill("Dragon Isles Blacksmithing") >= 7 |or |only if default
'|complete skill("Dragon Isles Blacksmithing") >= 12 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Dragon Isles Blacksmithing") >= 17 |or |only if LightforgedDraenei
step
talk Provisioner Thom##193659
|tip Inside the building.
buy 106 Primal Flux##190452 |goto 36.57,50.64 |or
'|complete skill("Dragon Isles Blacksmithing") >= 7 |or |only if default
'|complete skill("Dragon Isles Blacksmithing") >= 12 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Dragon Isles Blacksmithing") >= 17 |or |only if LightforgedDraenei
step
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	66.99,56.32	72.07,57.48	76.01,51.77	77.00,48.25	78.52,39.32
path	76.25,38.51	77.05,29.45	67.70,30.98	64.98,38.14	62.93,41.23
path	50.62,39.10	45.45,41.52	40.65,48.92	34.18,51.79	30.72,51.38
path	28.48,64.72	28.12,69.86	30.23,75.73	33.29,80.37	36.68,80.94
path	37.23,84.57	37.03,90.38	40.06,92.50	43.83,87.39	50.72,77.14
path	55.12,78.57	56.50,71.05	60.66,63.30	64.02,60.01
click Draconium Deposit##379248
|tip These share a spawn with Serevite Deposits.
collect 5 Draconium Ore##189143 |or
_Or_
collect 5 Draconium Ore##188658 |or
_Or_
collect 5 Draconium Ore##190311 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip Any quality will work, you only need one.
'|complete completedallq(71315,71361) |or
step
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	66.99,56.32	72.07,57.48	76.01,51.77	77.00,48.25	78.52,39.32
path	76.25,38.51	77.05,29.45	67.70,30.98	64.98,38.14	62.93,41.23
path	50.62,39.10	45.45,41.52	40.65,48.92	34.18,51.79	30.72,51.38
path	28.48,64.72	28.12,69.86	30.23,75.73	33.29,80.37	36.68,80.94
path	37.23,84.57	37.03,90.38	40.06,92.50	43.83,87.39	50.72,77.14
path	55.12,78.57	56.50,71.05	60.66,63.30	64.02,60.01
click Serevite Deposit##381102
|tip These share a spawn with Draconium Deposits.
collect 18 Serevite Ore##190395 |or
_Or_
collect 18 Serevite Ore##190396 |or
_Or_
collect 18 Serevite Ore##190394 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip Any quality will work, you only need one.
'|complete completedallq(71315,71361) |or
step
talk Provisioner Thom##193659
|tip Inside the building.
buy 6 Primal Flux##190452 |goto Valdrakken/0 36.57,50.64 |or
'|complete completedallq(71315,71361) |or
step
create 1 Draconium Blacksmith's Hammer##371344,Dragon Isles Blacksmithing |q 71361 |future |goto Valdrakken/0 37.07,47.59
|tip Equip this in your profession window and you will no longer need the Blacksmith Hammer you purchased.
|tip You need to stand next to an anvil to craft this.
step
create 1 Explorer's Plate Bracers##367609,Dragon Isles Blacksmithing |q 71315 |future |goto Valdrakken/0 37.07,47.59
|tip You need to stand next to an anvil to craft this.
step
talk Metalshaper Kuroko##185546
Train Draconium Pickaxe |learn Draconium Pickaxe##371309 |goto Valdrakken/0 36.96,47.08
step
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	66.99,56.32	72.07,57.48	76.01,51.77	77.00,48.25	78.52,39.32
path	76.25,38.51	77.05,29.45	67.70,30.98	64.98,38.14	62.93,41.23
path	50.62,39.10	45.45,41.52	40.65,48.92	34.18,51.79	30.72,51.38
path	28.48,64.72	28.12,69.86	30.23,75.73	33.29,80.37	36.68,80.94
path	37.23,84.57	37.03,90.38	40.06,92.50	43.83,87.39	50.72,77.14
path	55.12,78.57	56.50,71.05	60.66,63.30	64.02,60.01
click Draconium Deposit##379248
|tip These share a spawn with Serevite Deposits.
collect 2 Draconium Ore##189143 |or |q 71367 |future
_Or_
collect 2 Draconium Ore##188658 |or |q 71367 |future
_Or_
collect 2 Draconium Ore##190311 |or |q 71367 |future
|tip Farm them with Mining or purchase them from the auction house.
|tip Any quality will work, you only need one.
step
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	66.99,56.32	72.07,57.48	76.01,51.77	77.00,48.25	78.52,39.32
path	76.25,38.51	77.05,29.45	67.70,30.98	64.98,38.14	62.93,41.23
path	50.62,39.10	45.45,41.52	40.65,48.92	34.18,51.79	30.72,51.38
path	28.48,64.72	28.12,69.86	30.23,75.73	33.29,80.37	36.68,80.94
path	37.23,84.57	37.03,90.38	40.06,92.50	43.83,87.39	50.72,77.14
path	55.12,78.57	56.50,71.05	60.66,63.30	64.02,60.01
click Serevite Deposit##381102
|tip These share a spawn with Draconium Deposits.
collect 10 Serevite Ore##190395 |or |q 71367 |future
_Or_
collect 10 Serevite Ore##190396 |or |q 71367 |future
_Or_
collect 10 Serevite Ore##190394 |or |q 71367 |future
|tip Farm them with Mining or purchase them from the auction house.
|tip Any quality will work, you only need one.
step
talk Provisioner Thom##193659
|tip Inside the building.
buy 4 Primal Flux##190452 |goto Valdrakken/0 36.57,50.64 |q 71367 |future
|tip You need to stand next to an anvil to craft this.
step
create 1 Draconium Pickaxe##371309,Dragon Isles Blacksmithing |q 71367 |future |goto Valdrakken/0 37.07,47.59
|tip You need to stand next to an anvil to craft this.
step
talk Metalshaper Kuroko##185546
Train Draconium Sickle |learn Draconium Sickle##371343 |goto Valdrakken/0 36.96,47.08
step
talk Metalshaper Kuroko##185546
Train Explorer's Plate Chestguard |learn Explorer's Plate Chestguard##395886 |goto Valdrakken/0 36.96,47.08
step
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	66.99,56.32	72.07,57.48	76.01,51.77	77.00,48.25	78.52,39.32
path	76.25,38.51	77.05,29.45	67.70,30.98	64.98,38.14	62.93,41.23
path	50.62,39.10	45.45,41.52	40.65,48.92	34.18,51.79	30.72,51.38
path	28.48,64.72	28.12,69.86	30.23,75.73	33.29,80.37	36.68,80.94
path	37.23,84.57	37.03,90.38	40.06,92.50	43.83,87.39	50.72,77.14
path	55.12,78.57	56.50,71.05	60.66,63.30	64.02,60.01
click Draconium Deposit##379248
|tip These share a spawn with Serevite Deposits.
collect 5 Draconium Ore##189143 |or
_Or_
collect 5 Draconium Ore##188658 |or
_Or_
collect 5 Draconium Ore##190311 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip Any quality will work, you only need one.
'|complete completedallq(71313,71363) |or
step
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	66.99,56.32	72.07,57.48	76.01,51.77	77.00,48.25	78.52,39.32
path	76.25,38.51	77.05,29.45	67.70,30.98	64.98,38.14	62.93,41.23
path	50.62,39.10	45.45,41.52	40.65,48.92	34.18,51.79	30.72,51.38
path	28.48,64.72	28.12,69.86	30.23,75.73	33.29,80.37	36.68,80.94
path	37.23,84.57	37.03,90.38	40.06,92.50	43.83,87.39	50.72,77.14
path	55.12,78.57	56.50,71.05	60.66,63.30	64.02,60.01
click Serevite Deposit##381102
|tip These share a spawn with Draconium Deposits.
collect 20 Serevite Ore##190395 |or
_Or_
collect 20 Serevite Ore##190396 |or
_Or_
collect 20 Serevite Ore##190394 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip Any quality will work, you only need one.
'|complete completedallq(71313,71363) |or
step
talk Provisioner Thom##193659
|tip Inside the building.
buy 6 Primal Flux##190452 |goto Valdrakken/0 36.57,50.64 |or
'|complete completedallq(71313,71363) |or
step
create 1 Draconium Sickle##371343,Dragon Isles Blacksmithing |q 71363 |future |goto Valdrakken/0 37.07,47.59
|tip You need to stand next to an anvil to craft this.
step
create 1 Explorer's Plate Chestguard##395886,Dragon Isles Blacksmithing |q 71313 |future |goto Valdrakken/0 37.07,47.59
|tip You need to stand next to an anvil to craft this.
step
talk Metalshaper Kuroko##185546
Train Draconium Skinning Knife |learn Draconium Skinning Knife##371304 |goto Valdrakken/0 36.96,47.08
step
talk Metalshaper Kuroko##185546
Train Draconium Blacksmith's Toolbox |learn Draconium Blacksmith's Toolbox##371364 |goto Valdrakken/0 36.96,47.08
step
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	66.99,56.32	72.07,57.48	76.01,51.77	77.00,48.25	78.52,39.32
path	76.25,38.51	77.05,29.45	67.70,30.98	64.98,38.14	62.93,41.23
path	50.62,39.10	45.45,41.52	40.65,48.92	34.18,51.79	30.72,51.38
path	28.48,64.72	28.12,69.86	30.23,75.73	33.29,80.37	36.68,80.94
path	37.23,84.57	37.03,90.38	40.06,92.50	43.83,87.39	50.72,77.14
path	55.12,78.57	56.50,71.05	60.66,63.30	64.02,60.01
click Draconium Deposit##379248
|tip These share a spawn with Serevite Deposits.
collect 5 Draconium Ore##189143 |or
_Or_
collect 5 Draconium Ore##188658 |or
_Or_
collect 5 Draconium Ore##190311 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip Any quality will work, you only need one.
'|complete completedallq(71345,71369) |or
step
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	66.99,56.32	72.07,57.48	76.01,51.77	77.00,48.25	78.52,39.32
path	76.25,38.51	77.05,29.45	67.70,30.98	64.98,38.14	62.93,41.23
path	50.62,39.10	45.45,41.52	40.65,48.92	34.18,51.79	30.72,51.38
path	28.48,64.72	28.12,69.86	30.23,75.73	33.29,80.37	36.68,80.94
path	37.23,84.57	37.03,90.38	40.06,92.50	43.83,87.39	50.72,77.14
path	55.12,78.57	56.50,71.05	60.66,63.30	64.02,60.01
click Serevite Deposit##381102
|tip These share a spawn with Draconium Deposits.
collect 20 Serevite Ore##190395 |or
_Or_
collect 20 Serevite Ore##190396 |or
_Or_
collect 20 Serevite Ore##190394 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip Any quality will work, you only need one.
'|complete completedallq(71345,71369) |or
step
talk Provisioner Thom##193659
|tip Inside the building.
buy 7 Primal Flux##190452 |goto Valdrakken/0 36.57,50.64 |or
'|complete completedallq(71345,71369) |or
step
create 1 Draconium Skinning Knife##371304,Dragon Isles Blacksmithing |q 71369 |future |goto Valdrakken/0 37.07,47.59
|tip You need to stand next to an anvil to craft this.
step
create 1 Draconium Blacksmith's Toolbox##371364,Dragon Isles Blacksmithing |q 71345 |future |goto Valdrakken/0 37.07,47.59
|tip Equip this in your profession window after crafting it.
|tip You need to stand next to an anvil to craft this.
step
talk Metalshaper Kuroko##185546
Train Draconium Leatherworker's Knife |learn Draconium Leatherworker's Knife##371338 |goto Valdrakken/0 36.96,47.08
step
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	66.99,56.32	72.07,57.48	76.01,51.77	77.00,48.25	78.52,39.32
path	76.25,38.51	77.05,29.45	67.70,30.98	64.98,38.14	62.93,41.23
path	50.62,39.10	45.45,41.52	40.65,48.92	34.18,51.79	30.72,51.38
path	28.48,64.72	28.12,69.86	30.23,75.73	33.29,80.37	36.68,80.94
path	37.23,84.57	37.03,90.38	40.06,92.50	43.83,87.39	50.72,77.14
path	55.12,78.57	56.50,71.05	60.66,63.30	64.02,60.01
click Draconium Deposit##379248
|tip These share a spawn with Serevite Deposits.
collect 3 Draconium Ore##189143 |or |q 71365 |future
_Or_
collect 3 Draconium Ore##188658 |or |q 71365 |future
_Or_
collect 3 Draconium Ore##190311 |or |q 71365 |future
|tip Farm them with Mining or purchase them from the auction house.
|tip Any quality will work, you only need one.
step
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	66.99,56.32	72.07,57.48	76.01,51.77	77.00,48.25	78.52,39.32
path	76.25,38.51	77.05,29.45	67.70,30.98	64.98,38.14	62.93,41.23
path	50.62,39.10	45.45,41.52	40.65,48.92	34.18,51.79	30.72,51.38
path	28.48,64.72	28.12,69.86	30.23,75.73	33.29,80.37	36.68,80.94
path	37.23,84.57	37.03,90.38	40.06,92.50	43.83,87.39	50.72,77.14
path	55.12,78.57	56.50,71.05	60.66,63.30	64.02,60.01
click Serevite Deposit##381102
|tip These share a spawn with Draconium Deposits.
collect 12 Serevite Ore##190395 |or |q 71365 |future
_Or_
collect 12 Serevite Ore##190396 |or |q 71365 |future
_Or_
collect 12 Serevite Ore##190394 |or |q 71365 |future
|tip Farm them with Mining or purchase them from the auction house.
|tip Any quality will work, you only need one.
step
talk Provisioner Thom##193659
|tip Inside the building.
buy 4 Primal Flux##190452 |goto Valdrakken/0 36.57,50.64 |q 71365 |future
step
create 1 Draconium Leatherworker's Knife##371338,Dragon Isles Blacksmithing |q 71365 |future |goto Valdrakken/0 37.07,47.59
|tip You need to stand next to an anvil to craft this.
step
talk Metalshaper Kuroko##185546
Train Draconium Axe |learn Draconium Axe##367600 |goto Valdrakken/0 36.96,47.08
step
talk Metalshaper Kuroko##185546
Train Draconium Leatherworker's Toolset |learn Draconium Leatherworker's Toolset##371360 |goto Valdrakken/0 36.96,47.08
step
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	66.99,56.32	72.07,57.48	76.01,51.77	77.00,48.25	78.52,39.32
path	76.25,38.51	77.05,29.45	67.70,30.98	64.98,38.14	62.93,41.23
path	50.62,39.10	45.45,41.52	40.65,48.92	34.18,51.79	30.72,51.38
path	28.48,64.72	28.12,69.86	30.23,75.73	33.29,80.37	36.68,80.94
path	37.23,84.57	37.03,90.38	40.06,92.50	43.83,87.39	50.72,77.14
path	55.12,78.57	56.50,71.05	60.66,63.30	64.02,60.01
click Draconium Deposit##379248
|tip These share a spawn with Serevite Deposits.
collect 12 Draconium Ore##189143 |or
_Or_
collect 12 Draconium Ore##188658 |or
_Or_
collect 12 Draconium Ore##190311 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip Any quality will work, you only need one.
'|complete completedallq(71347,71332) |or
step
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	66.99,56.32	72.07,57.48	76.01,51.77	77.00,48.25	78.52,39.32
path	76.25,38.51	77.05,29.45	67.70,30.98	64.98,38.14	62.93,41.23
path	50.62,39.10	45.45,41.52	40.65,48.92	34.18,51.79	30.72,51.38
path	28.48,64.72	28.12,69.86	30.23,75.73	33.29,80.37	36.68,80.94
path	37.23,84.57	37.03,90.38	40.06,92.50	43.83,87.39	50.72,77.14
path	55.12,78.57	56.50,71.05	60.66,63.30	64.02,60.01
click Serevite Deposit##381102
|tip These share a spawn with Draconium Deposits.
collect 24 Serevite Ore##190395 |or
_Or_
collect 24 Serevite Ore##190396 |or
_Or_
collect 24 Serevite Ore##190394 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip Any quality will work, you only need one.
'|complete completedallq(71347,71332) |or
step
talk Provisioner Thom##193659
|tip Inside the building.
buy 8 Primal Flux##190452 |goto Valdrakken/0 36.57,50.64 |or
'|complete completedallq(71347,71332) |or
step
create 1 Draconium Axe##367600,Dragon Isles Blacksmithing |q 71332 |future |goto Valdrakken/0 37.07,47.59
|tip You need to stand next to an anvil to craft this.
step
create 1 Draconium Leatherworker's Toolset##371360,Dragon Isles Blacksmithing |q 71347 |future |goto Valdrakken/0 37.07,47.59
|tip You need to stand next to an anvil to craft this.
step
talk Metalshaper Kuroko##185546
Train Draconium Needle Set |learn Draconium Needle Set##371302 |goto Valdrakken/0 36.96,47.08
step
talk Metalshaper Kuroko##185546
Train Explorer's Expert Clasp |learn Explorer's Expert Clasp##367611 |goto Valdrakken/0 36.96,47.08
step
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	66.99,56.32	72.07,57.48	76.01,51.77	77.00,48.25	78.52,39.32
path	76.25,38.51	77.05,29.45	67.70,30.98	64.98,38.14	62.93,41.23
path	50.62,39.10	45.45,41.52	40.65,48.92	34.18,51.79	30.72,51.38
path	28.48,64.72	28.12,69.86	30.23,75.73	33.29,80.37	36.68,80.94
path	37.23,84.57	37.03,90.38	40.06,92.50	43.83,87.39	50.72,77.14
path	55.12,78.57	56.50,71.05	60.66,63.30	64.02,60.01
click Draconium Deposit##379248
|tip These share a spawn with Serevite Deposits.
collect 8 Draconium Ore##189143 |or
_Or_
collect 8 Draconium Ore##188658 |or
_Or_
collect 8 Draconium Ore##190311 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip Any quality will work, you only need one.
'|complete completedallq(72489,71349) |or
step
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	66.99,56.32	72.07,57.48	76.01,51.77	77.00,48.25	78.52,39.32
path	76.25,38.51	77.05,29.45	67.70,30.98	64.98,38.14	62.93,41.23
path	50.62,39.10	45.45,41.52	40.65,48.92	34.18,51.79	30.72,51.38
path	28.48,64.72	28.12,69.86	30.23,75.73	33.29,80.37	36.68,80.94
path	37.23,84.57	37.03,90.38	40.06,92.50	43.83,87.39	50.72,77.14
path	55.12,78.57	56.50,71.05	60.66,63.30	64.02,60.01
click Serevite Deposit##381102
|tip These share a spawn with Draconium Deposits.
collect 20 Serevite Ore##190395 |or
_Or_
collect 20 Serevite Ore##190396 |or
_Or_
collect 20 Serevite Ore##190394 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip Any quality will work, you only need one.
'|complete completedallq(72489,71349) |or
step
talk Provisioner Thom##193659
|tip Inside the building.
buy 5 Primal Flux##190452 |goto Valdrakken/0 36.57,50.64 |or
'|complete completedallq(72489,71349) |or
step
create 1 Draconium Needle Set##371302,Dragon Isles Blacksmithing |q 71349 |future |goto Valdrakken/0 37.07,47.59
|tip You need to stand next to an anvil to craft this.
step
create 1 Explorer's Expert Clasp##367611,Dragon Isles Blacksmithing |q 72489 |future |goto Valdrakken/0 37.07,47.59
|tip You need to stand next to an anvil to craft this.
step
talk Metalshaper Kuroko##185546
Train Explorer's Expert Greaves |learn Explorer's Expert Greaves##395881 |goto Valdrakken/0 36.96,47.08
step
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	66.99,56.32	72.07,57.48	76.01,51.77	77.00,48.25	78.52,39.32
path	76.25,38.51	77.05,29.45	67.70,30.98	64.98,38.14	62.93,41.23
path	50.62,39.10	45.45,41.52	40.65,48.92	34.18,51.79	30.72,51.38
path	28.48,64.72	28.12,69.86	30.23,75.73	33.29,80.37	36.68,80.94
path	37.23,84.57	37.03,90.38	40.06,92.50	43.83,87.39	50.72,77.14
path	55.12,78.57	56.50,71.05	60.66,63.30	64.02,60.01
click Draconium Deposit##379248
|tip These share a spawn with Serevite Deposits.
collect 3 Draconium Ore##189143 |or
_Or_
collect 3 Draconium Ore##188658 |or
_Or_
collect 3 Draconium Ore##190311 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip Any quality will work, you only need one.
'|complete skill("Dragon Isles Blacksmithing") >= 41 |or |only if default
'|complete skill("Dragon Isles Blacksmithing") >= 46 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Dragon Isles Blacksmithing") >= 51 |or |only if LightforgedDraenei
step
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	66.99,56.32	72.07,57.48	76.01,51.77	77.00,48.25	78.52,39.32
path	76.25,38.51	77.05,29.45	67.70,30.98	64.98,38.14	62.93,41.23
path	50.62,39.10	45.45,41.52	40.65,48.92	34.18,51.79	30.72,51.38
path	28.48,64.72	28.12,69.86	30.23,75.73	33.29,80.37	36.68,80.94
path	37.23,84.57	37.03,90.38	40.06,92.50	43.83,87.39	50.72,77.14
path	55.12,78.57	56.50,71.05	60.66,63.30	64.02,60.01
click Serevite Deposit##381102
|tip These share a spawn with Draconium Deposits.
collect 42 Serevite Ore##190395 |or
_Or_
collect 42 Serevite Ore##190396 |or
_Or_
collect 42 Serevite Ore##190394 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip Any quality will work, you only need one.
'|complete skill("Dragon Isles Blacksmithing") >= 41 |or |only if default
'|complete skill("Dragon Isles Blacksmithing") >= 46 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Dragon Isles Blacksmithing") >= 51 |or |only if LightforgedDraenei
step
talk Provisioner Thom##193659
|tip Inside the building.
buy 6 Primal Flux##190452 |goto Valdrakken/0 36.57,50.64 |or
'|complete skill("Dragon Isles Blacksmithing") >= 41 |or |only if default
'|complete skill("Dragon Isles Blacksmithing") >= 46 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Dragon Isles Blacksmithing") >= 51 |or |only if LightforgedDraenei
step
create 1 Explorer's Expert Greaves##395881,Dragon Isles Blacksmithing |q 72494 |future |goto Valdrakken/0 37.07,47.59
|tip You need to stand next to an anvil to craft this.
step
create 2 Explorer's Expert Greaves##395881,Dragon Isles Blacksmithing,41 |goto Valdrakken/0 37.07,47.59 |only if default
create 2 Explorer's Expert Greaves##395881,Dragon Isles Blacksmithing,46 |goto Valdrakken/0 37.07,47.59 |only if DarkIronDwarf or KulTiran
create 2 Explorer's Expert Greaves##395881,Dragon Isles Blacksmithing,51 |goto Valdrakken/0 37.07,47.59 |only if LightforgedDraenei
|tip You need to stand next to an anvil to craft this.
step
talk Metalshaper Kuroko##185546
Train Draconium Great Axe |learn Draconium Great Axe##393416 |goto Valdrakken/0 36.96,47.08
step
talk Metalshaper Kuroko##185546
Train Explorer's Expert Gauntlets |learn Explorer's Expert Gauntlets##395879 |goto Valdrakken/0 36.96,47.08
step
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	66.99,56.32	72.07,57.48	76.01,51.77	77.00,48.25	78.52,39.32
path	76.25,38.51	77.05,29.45	67.70,30.98	64.98,38.14	62.93,41.23
path	50.62,39.10	45.45,41.52	40.65,48.92	34.18,51.79	30.72,51.38
path	28.48,64.72	28.12,69.86	30.23,75.73	33.29,80.37	36.68,80.94
path	37.23,84.57	37.03,90.38	40.06,92.50	43.83,87.39	50.72,77.14
path	55.12,78.57	56.50,71.05	60.66,63.30	64.02,60.01
click Draconium Deposit##379248
|tip These share a spawn with Serevite Deposits.
collect 16 Draconium Ore##189143 |or
_Or_
collect 16 Draconium Ore##188658 |or
_Or_
collect 16 Draconium Ore##190311 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip Any quality will work, you only need one.
'|complete completedallq(72562,72186) |or
step
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	66.99,56.32	72.07,57.48	76.01,51.77	77.00,48.25	78.52,39.32
path	76.25,38.51	77.05,29.45	67.70,30.98	64.98,38.14	62.93,41.23
path	50.62,39.10	45.45,41.52	40.65,48.92	34.18,51.79	30.72,51.38
path	28.48,64.72	28.12,69.86	30.23,75.73	33.29,80.37	36.68,80.94
path	37.23,84.57	37.03,90.38	40.06,92.50	43.83,87.39	50.72,77.14
path	55.12,78.57	56.50,71.05	60.66,63.30	64.02,60.01
click Serevite Deposit##381102
|tip These share a spawn with Draconium Deposits.
collect 32 Serevite Ore##190395 |or
_Or_
collect 32 Serevite Ore##190396 |or
_Or_
collect 32 Serevite Ore##190394 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip Any quality will work, you only need one.
'|complete completedallq(72562,72186) |or
step
talk Provisioner Thom##193659
|tip Inside the building.
buy 8 Primal Flux##190452 |goto Valdrakken/0 36.57,50.64 |or
'|complete completedallq(72562,72186) |or
step
create 1 Draconium Great Axe##393416,Dragon Isles Blacksmithing |q 72186 |future |goto Valdrakken/0 37.07,47.59
|tip You need to stand next to an anvil to craft this.
step
create 1 Explorer's Expert Gauntlets##395879,Dragon Isles Blacksmithing |q 72562 |future |goto Valdrakken/0 37.07,47.59
|tip You need to stand next to an anvil to craft this.
step
talk Metalshaper Kuroko##185546
Train Draconium Stiletto |learn Draconium Stiletto##367597 |goto Valdrakken/0 36.96,47.08
step
talk Metalshaper Kuroko##185546
Train Explorer's Expert Spaulders |learn Explorer's Expert Spaulders##395880 |goto Valdrakken/0 36.96,47.08
step
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	66.99,56.32	72.07,57.48	76.01,51.77	77.00,48.25	78.52,39.32
path	76.25,38.51	77.05,29.45	67.70,30.98	64.98,38.14	62.93,41.23
path	50.62,39.10	45.45,41.52	40.65,48.92	34.18,51.79	30.72,51.38
path	28.48,64.72	28.12,69.86	30.23,75.73	33.29,80.37	36.68,80.94
path	37.23,84.57	37.03,90.38	40.06,92.50	43.83,87.39	50.72,77.14
path	55.12,78.57	56.50,71.05	60.66,63.30	64.02,60.01
click Draconium Deposit##379248
|tip These share a spawn with Serevite Deposits.
collect 12 Draconium Ore##189143 |or
_Or_
collect 12 Draconium Ore##188658 |or
_Or_
collect 12 Draconium Ore##190311 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip Any quality will work, you only need one.
'|complete completedallq(72568,71335) |or
step
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	66.99,56.32	72.07,57.48	76.01,51.77	77.00,48.25	78.52,39.32
path	76.25,38.51	77.05,29.45	67.70,30.98	64.98,38.14	62.93,41.23
path	50.62,39.10	45.45,41.52	40.65,48.92	34.18,51.79	30.72,51.38
path	28.48,64.72	28.12,69.86	30.23,75.73	33.29,80.37	36.68,80.94
path	37.23,84.57	37.03,90.38	40.06,92.50	43.83,87.39	50.72,77.14
path	55.12,78.57	56.50,71.05	60.66,63.30	64.02,60.01
click Serevite Deposit##381102
|tip These share a spawn with Draconium Deposits.
collect 24 Serevite Ore##190395 |or
_Or_
collect 24 Serevite Ore##190396 |or
_Or_
collect 24 Serevite Ore##190394 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip Any quality will work, you only need one.
'|complete completedallq(72568,71335) |or
step
talk Provisioner Thom##193659
|tip Inside the building.
buy 8 Primal Flux##190452 |goto Valdrakken/0 36.57,50.64 |or
'|complete completedallq(72568,71335) |or
step
create 1 Draconium Stiletto##367597,Dragon Isles Blacksmithing |q 71335 |future |goto Valdrakken/0 37.07,47.59
|tip You need to stand next to an anvil to craft this.
step
create 1 Explorer's Expert Spaulders##395880,Dragon Isles Blacksmithing |q 72568 |future |goto Valdrakken/0 37.07,47.59
|tip You need to stand next to an anvil to craft this.
step
talk Metalshaper Kuroko##185546
Train Draconium Great Mace |learn Draconium Great Mace##367598 |goto Valdrakken/0 36.96,47.08
step
talk Metalshaper Kuroko##185546
Train Explorer's Expert Helm |learn Explorer's Expert Helm##395883 |goto Valdrakken/0 36.96,47.08
step
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	66.99,56.32	72.07,57.48	76.01,51.77	77.00,48.25	78.52,39.32
path	76.25,38.51	77.05,29.45	67.70,30.98	64.98,38.14	62.93,41.23
path	50.62,39.10	45.45,41.52	40.65,48.92	34.18,51.79	30.72,51.38
path	28.48,64.72	28.12,69.86	30.23,75.73	33.29,80.37	36.68,80.94
path	37.23,84.57	37.03,90.38	40.06,92.50	43.83,87.39	50.72,77.14
path	55.12,78.57	56.50,71.05	60.66,63.30	64.02,60.01
click Draconium Deposit##379248
|tip These share a spawn with Serevite Deposits.
collect 12 Draconium Ore##189143 |or
_Or_
collect 12 Draconium Ore##188658 |or
_Or_
collect 12 Draconium Ore##190311 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip Any quality will work, you only need one.
'|complete skill("Dragon Isles Blacksmithing") >= 56 |or |only if default
'|complete skill("Dragon Isles Blacksmithing") >= 61 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Dragon Isles Blacksmithing") >= 66 |or |only if LightforgedDraenei
step
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	66.99,56.32	72.07,57.48	76.01,51.77	77.00,48.25	78.52,39.32
path	76.25,38.51	77.05,29.45	67.70,30.98	64.98,38.14	62.93,41.23
path	50.62,39.10	45.45,41.52	40.65,48.92	34.18,51.79	30.72,51.38
path	28.48,64.72	28.12,69.86	30.23,75.73	33.29,80.37	36.68,80.94
path	37.23,84.57	37.03,90.38	40.06,92.50	43.83,87.39	50.72,77.14
path	55.12,78.57	56.50,71.05	60.66,63.30	64.02,60.01
click Serevite Deposit##381102
|tip These share a spawn with Draconium Deposits.
collect 24 Serevite Ore##190395 |or
_Or_
collect 24 Serevite Ore##190396 |or
_Or_
collect 24 Serevite Ore##190394 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip Any quality will work, you only need one.
'|complete skill("Dragon Isles Blacksmithing") >= 56 |or |only if default
'|complete skill("Dragon Isles Blacksmithing") >= 61 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Dragon Isles Blacksmithing") >= 66 |or |only if LightforgedDraenei
step
talk Provisioner Thom##193659
|tip Inside the building.
buy 10 Primal Flux##190452 |goto Valdrakken/0 36.57,50.64 |or
'|complete skill("Dragon Isles Blacksmithing") >= 56 |or |only if default
'|complete skill("Dragon Isles Blacksmithing") >= 61 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Dragon Isles Blacksmithing") >= 66 |or |only if LightforgedDraenei
step
create 1 Draconium Great Mace##367598,Dragon Isles Blacksmithing |q 71334 |future |goto Valdrakken/0 37.07,47.59
|tip You need to stand next to an anvil to craft this.
step
create 1 Explorer's Expert Helm##395883,Dragon Isles Blacksmithing |q 72490 |future |goto Valdrakken/0 37.07,47.59
|tip You need to stand next to an anvil to craft this.
step
create 1 Explorer's Expert Helm##395883,Dragon Isles Blacksmithing,56 |goto Valdrakken/0 37.07,47.59 |only if default
create 1 Explorer's Expert Helm##395883,Dragon Isles Blacksmithing,61 |goto Valdrakken/0 37.07,47.59 |only if DarkIronDwarf or KulTiran
create 1 Explorer's Expert Helm##395883,Dragon Isles Blacksmithing,66 |goto Valdrakken/0 37.07,47.59 |only if LightforgedDraenei
|tip You need to stand next to an anvil to craft this.
step
Reach Skill Level 100 in Dragon Isles Blacksmithing |skill Dragon Isles Blacksmithing,100 |or |only if default
Reach Skill Level 105 in Dragon Isles Blacksmithing |skill Dragon Isles Blacksmithing,105 |or |only if DarkIronDwarf or KulTiran
Reach Skill Level 105 in Dragon Isles Blacksmithing |skill Dragon Isles Blacksmithing,110 |or |only if LightforgedDraenei
|tip From this point, it becomes very difficult to continue gaining points as soulbound materials are required.
|tip Your best path is the Crafting Order system in Valdrakken to craft items for other players with provided materials.
|tip This makes it much cheaper to craft one of each recipe for the first craft bonus.
]])
ZGV.BETAEND()
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Blacksmithing\\Leveling Guides\\Blacksmithing Knowledge Treasures",{
author="support@zygorguides.com",
description="\nThis guide will walk you through collecting one-time treasures that grant Knowledge Points.",
startlevel=60.0,
condition_end=function() return completedallq(70230,70312,70296,70310,70246,70313,70353,70314,70311) end,
condition_suggested=function() return skill('Dragon Isles Blacksmithing') >= 25 and not completedallq(70230,70312,70296,70310,70246,70313,70353,70314,70311) end,
},[[
step
Click Here to Continue |confirm
|tip The next to last treasure is in a cave with an entrance blocked by debris.
|tip You will need mining or the assistance of another player with Mining to open it.
step
talk Metalshaper Kuroko##185546
Train Blacksmithing |skillmax Blacksmithing,300 |goto Valdrakken/0 36.96,47.08
step
talk Metalshaper Kuroko##185546
Train Dragon Isles Blacksmithing |skillmax Dragon Isles Blacksmithing,100 |goto 36.96,47.08
step
Reach Skill Level 25 in Dragon Isles Blacksmithing |skill Dragon Isles Blacksmithing,25 |goto 36.96,47.08 |or
|tip You must be at least skill level 25 to interact with profession treasures.
step
talk Metalshaper Kuroko##185546
Train Primal Molten Alloy |learn Primal Molten Alloy##365735 |goto 36.96,47.08
step
talk Provisioner Thom##193659
buy 4 Primal Flux##190452 |goto 36.58,50.64
label "Collect_Khaz'gorite_Ore_71433"
step
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	66.99,56.32	72.07,57.48	76.01,51.77	77.00,48.25	78.52,39.32
path	76.25,38.51	77.05,29.45	67.70,30.98	64.98,38.14	62.93,41.23
path	50.62,39.10	45.45,41.52	40.65,48.92	34.18,51.79	30.72,51.38
path	28.48,64.72	28.12,69.86	30.23,75.73	33.29,80.37	36.68,80.94
path	37.23,84.57	37.03,90.38	40.06,92.50	43.83,87.39	50.72,77.14
path	55.12,78.57	56.50,71.05	60.66,63.30	64.02,60.01
Follow the path
click Draconium Deposit##379248
|tip These share a spawn with Serevite Deposits.
collect 5 Draconium Ore##189143 |or |q 70230 |future
_Or_
collect 5 Draconium Ore##188658 |or |q 70230 |future
_Or_
collect 5 Draconium Ore##190311 |or |q 70230 |future
|tip Farm them with Mining or purchase them from the auction house.
|tip Any quality will work, you only need one.
step
label "Collect_Khaz'gorite_Ore_71433"
collect 4 Khaz'gorite Ore##190312 |or |q 70230 |future
_Or_
collect 4 Khaz'gorite Ore##190313 |or |q 70230 |future
_Or_
collect 4 Khaz'gorite Ore##190314 |or |q 70230 |future
|tip Farm them with Mining or purchase them from the auction house.
|tip Any quality will work, you only need one.
step
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	52.19,32.87	50.73,33.22	49.95,33.73	49.29,33.52	49.63,31.58
path	50.23,30.93	50.98,31.30	52.49,30.87	53.65,31.43	53.34,32.31
path	52.55,32.60	51.81,33.07
Kill Elemental enemies around this area
collect 10 Rousing Earth##190315 |n
use Rousing Earth##190315
collect Awakened Earth##190316 |q 70230 |future
|tip These have a chance to be gathered from "Hardened" and "Primal" nodes.
step
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	37.99,69.37	37.76,71.40	36.96,72.21	35.90,72.27	36.61,73.66
path	37.17,73.87	37.94,76.03	38.65,74.48	38.52,72.73	38.76,70.86
kill Blazing Manifestation##186336+
collect 10 Rousing Fire##190320 |n
|tip They can also be gathered from "Molten" and "Primal" Mining nodes.
use Rousing Fire##190320
collect Awakened Fire##190321 |q 70230 |future
step
create 1 Primal Molten Alloy##365735,Dragon Isles Blacksmithing,1 total |n
|tip Craft this next to the forge inside the base of the broken tower.
|tip The glimmer will awaken and become clickable.
click Glimmer of Wisdom##380516
|tip It looks like a tiny sparkle in the Slack Tub.
|tip Your cursor will change to a bag icon when you are hovering over it.
collect Glimmer of Blacksmithing Wisdom##198791 |goto The Waking Shores/0 56.35,19.50 |q 70230 |future
step
use the Glimmer of Blacksmithing Wisdom##198791
Study the Glimmer of Blacksmithing Wisdom |complete itemcount(198791) == 0
step
click Curious Ingots##380619
collect Curious Ingots##201005 |goto The Waking Shores/0 65.60,25.69 |q 70312 |future
step
use the Curious Ingots##201005
Study the Curious Ingots |complete itemcount(201005) == 0
step
click Appetizing Ingot+
|tip Click the three ingots on the ground.
kill Hungry Hungry Lava##194878
|tip It will spawn when the ingots melt.
click Singed Chest##380598
|tip The Hungry Hungry Lava will drop it.
collect Molten Ingot##201008 |goto The Waking Shores/0 35.53,64.27 |q 70296 |future
step
use the Molten Ingot##201008
Study the Molten Ingot |complete itemcount(201008) == 0
step
click Qalashi Weapon Diagram##380617
collect Qalashi Weapon Diagram##201010 |goto The Waking Shores/0 34.52,67.16 |q 70310 |future
step
use the Qalashi Weapon Diagram##201010
Study the Qalashi Weapon Diagram |complete itemcount(201010) == 0
step
kill Enchanted Bulwark##188648+
click Ancient Monument##376657
collect Ancient Monument##201007 |goto The Waking Shores/0 22.25,87.62 |q 70246 |future
|tip If you do not receive this treasure, skip this step and the next and check your mail later.
step
use the Ancient Monument##201007
Study the Ancient Monument |complete itemcount(201007) == 0
step
Enter the cave |goto Ohn'ahran Plains/0 79.35,36.50 < 15 |walk
click Ancient Spear Shards##380620
|tip Inside the cave.
collect Ancient Spear Shards##201004 |goto Ohn'ahran Plains/0 81.11,37.87 |q 70313 |future
step
use the Ancient Spear Shards##201004
Study the Ancient Spear Shards |complete itemcount(201004) == 0
step
click Falconer Gauntlet Drawings##380709
|tip Inside the hut.
collect Falconer Gauntlet Drawings##201009 |goto Ohn'ahran Plains/0 50.91,66.48 |q 70353 |future
step
use the Falconer Gauntlet Drawings##201009
Study the Falconer Gauntlet Drawings |complete itemcount(201009) == 0
step
click Rock Wall
|tip A skill level of 1 in Dragon Isles Mining is required to remove the wall.
click Spelltouched Tongs##380623
|tip This object is in a cave with an entrance blocked by debris.
|tip You will need mining or the assistance of another player with Mining to open it.
collect Spelltouched Tongs##201011 |goto The Azure Span/0 53.14,66.14 |q 70314 |future
step
use the Spelltouched Tongs##201011
Study the Spelltouched Tongs |complete itemcount(201011) == 0
step
click Draconic Flux##380618
|tip Inside the upper building.
|tip Collect it quickly, you will take damage while in this area.
collect Draconic Flux##201006 |goto Thaldraszus/0 52.22,80.56 |q 70311 |future
step
use the Draconic Flux##201006
Study the Draconic Flux |complete itemcount(201006) == 0
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Maybe Meat",{
author="support@zygorguides.com",
description="\nThis guide will walk you through gathering Maybe Meat.",
startlevel=60.0,
},[[
step
map Ohn'ahran Plains
path follow smart; loop on; ants curved; dist 35
path	52.74,47.58	53.89,48.74	55.34,49.75	54.56,50.46	53.31,50.98
path	52.68,51.27	51.57,49.66	50.25,49.15	51.34,47.16
Follow the path
Kill Thunderspine enemies around this area
collect Maybe Meat##197741 |n
confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Basilisk Eggs",{
author="support@zygorguides.com",
description="\nThis guide will walk you through gathering Basilisk Eggs.",
startlevel=60.0,
},[[
step
map The Waking Shores/0
path follow smart; loop on; ants curved; dist 35
path	68.87,52.63	69.43,49.88	68.26,49.94	67.65,51.68
Follow the path
Kill Basilisk enemies around this area
collect Basilisk Eggs##197745 |n
confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Bruffalon Flank",{
author="support@zygorguides.com",
description="\nThis guide will walk you through gathering Bruffalon Flank.",
startlevel=60.0,
},[[
step
map Ohn'ahran Plains
path follow smart; loop on; ants curved; dist 20
path	49.19,28.29	49.75,26.91	50.73,27.09	51.23,28.08	50.78,29.19
path	50.84,30.69	50.38,31.76	49.32,32.24	48.74,31.32	48.75,30.02
Follow the path
Kill Bruffalon enemies around this area
collect Bruffalon Flank##197746 |n
confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Burly Bear Haunch",{
author="support@zygorguides.com",
description="\nThis guide will walk you through gathering Burly Bear Haunch.",
startlevel=60.0,
},[[
step
label "Azure"
map The Azure Span
path follow smart; loop on; ants curved; dist 25
path	46.62,44.15	46.58,45.08	47.30,46.55	47.18,47.50	48.04,47.61
path	50.21,47.11	51.78,46.21	53.22,45.54	54.27,45.63	55.31,43.59
path	55.19,41.31	56.21,39.90	56.29,39.19	57.14,37.90	53.30,39.30
path	51.27,40.30	50.10,40.44	49.59,40.59
Follow the path
kill Time-Charged Bear##195635
collect Burly Bear Haunch##197748 |n
Click here for alternative spots in Thaldraszus |confirm
step
Kill enemies around this area
collect Burly Bear Haunch##197748 |n
[Thaldraszus/0 53.49,76.61]
[Thaldraszus/0 53.29,77.50]
[Thaldraszus/0 55.02,79.07]
[Thaldraszus/0 57.02,74.85]
Click here to return to The Azure Span |confirm |next "Azure"
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Hornswog Hunk",{
author="support@zygorguides.com",
description="\nThis guide will walk you through gathering Hornswog Hunk.",
startlevel=60.0,
},[[
step
map The Azure Span
path follow smart; loop on; ants curved; dist 25
map The Azure Span
path	38.75,64.45	39.20,64.72	39.62,64.02	40.46,62.99	41.27,63.47
path	41.79,62.93	41.21,61.04	40.79,61.36	40.10,59.66	39.64,59.27
path	39.67,60.98	38.84,61.16	37.82,60.92	38.17,62.18	38.75,62.30
path	39.49,62.33
Follow the path
Kill Hornswog enemies around this area
|tip They look like blue frogs with black horns.
|tip There are a few near the base of the giant crystal.
collect Hornswog Hunk##197744 |n
confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Mighty Mammoth Ribs",{
author="support@zygorguides.com",
description="\nThis guide will walk you through gathering Mighty Mammoth Ribs.",
startlevel=60.0,
},[[
step
map Ohn'ahran Plains
path follow smart; loop on; ants curved; dist 20
path	70.49,51.94	71.40,53.89	73.09,52.32	73.80,54.24	75.48,52.43
path	73.61,51.25	74.67,50.39	75.63,49.32	74.34,48.90	72.99,45.89
path	70.73,45.81	70.67,48.49	70.03,49.53
Follow the path
Kill mammoth enemies around this area
collect Mighty Mammoth Ribs##197747 |n
confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Waterfowl Filet",{
author="support@zygorguides.com",
description="\nThis guide will walk you through gathering Waterfowl Filet.",
startlevel=60.0,
},[[
step
map Ohn'ahran Plains
path follow smart; loop on; ants curved; dist 20
path	69.38,35.87	69.40,36.96	69.42,37.88	69.89,38.54	70.45,39.28
path	70.63,38.13	70.51,36.59	70.35,35.43
Follow the path
kill Jadethroat Mallard##190708
collect Waterfowl Filet##197743 |n
confirm
]])
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Enchanting\\Leveling Guides\\Dragon Isles Enchanting 1-100",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Dragon Isles Enchanting profession from 1-100.",
startlevel=60.0,
condition_end=function() return skill('Dragon Isles Enchanting') >= 100 end,
condition_suggested=function() return skill('Dragon Isles Enchanting') > 0 and skill('Dragon Isles Enchanting') < 100 and level >= 60 end,
},[[
step
Approximate bill of materials:
|tip Chromatic Dust: 367
|tip Vibrant Shard: 34
|tip Resonant Crystal: 34
|tip Writhebark: 7
|tip Draconium Ore: 3
|tip Rousing Air: 21
|tip Rousing Earth: 21
|tip Rousing Fire: 21
|tip Rousing Frost: 21
|tip Awakened Air: 52
|tip Awakened Earth: 52
|tip Awakened Fire: 52
|tip Awakened Frost: 52
|tip Awakened Order: 39
|tip These totals are approximate.
|tip You are encouraged to make each recipe at least once and utilize the Crafting Order system, which will vary the materials needed.
|tip These materials will get you to aproximately 65 skill level. |only if default
|tip These materials will get you to aproximately 70 skill level. |only if KulTiran
|tip These materials will get you to aproximately 75 skill level. |only if BloodElf
Click Here to Continue |confirm
step
talk Andoris##198587
buy 100 Enchanting Vellum##38682 |goto Valdrakken/0 30.81,60.81
buy 1 Serevite Rod##201584 |goto 30.81,60.81
|only if skill("Dragon Isles Enchanting") < 100 and itemcount(201601) == 0
step
talk Soragosa##193744
Train Enchanting |skillmax Enchanting,300 |goto 31.06,61.38
step
talk Soragosa##193744
Train Dragon Isles Enchanting |skillmax Dragon Isles Enchanting,100 |goto 31.06,61.38
step
cast Disenchant##13262
collect 3 Chromatic Dust##194123 |q 71945 |future
|tip Disenchant uncommon (green) items from the Dragon Isles or purchase them from the auction house.
step
create 1 Runed Serevite Rod##394189,Dragon Isles Enchanting,1 total |q 71945 |future
|tip Keep this item in your inventory for enchanting purposes.
step
cast Disenchant##13262
collect 3 Chromatic Dust##194123 |q 71414 |future
|tip Disenchant uncommon (green) items from the Dragon Isles or purchase them from the auction house.
step
create 1 Writ of Versatility##389151,Dragon Isles Enchanting,1 total |q 71414 |future
|tip Place this on a ring item or on an Encanting Vellum in your inventory.
stickystart "Collect_Writhebark_71884"
stickystart "Collect_Chromatic_Dust_71884"
step
collect 3 Rousing Earth##190315 |q 71884 |future
|tip Farm them with Mining or purchase them from the auction house.
|tip Hardened Draconium Deposits and Hardened Serevite Deposites contain this.
|tip They can rarely be dropped by powerful earth elemental enemies.
step
label "Collect_Writhebark_71884"
collect 1 Writhebark##191470 |or |q 71884 |future
_Or_
collect 1 Writhebark##191471 |or |q 71884 |future
_Or_
collect 1 Writhebark##191472 |or |q 71884 |future
|tip Farm them with Herbalism or purchase them from the auction house.
|tip Any quality will work, you only need one.
step
label "Collect_Chromatic_Dust_71884"
cast Disenchant##13262
collect 1 Chromatic Dust##194123 |q 71884 |future
|tip Disenchant uncommon (green) items from the Dragon Isles or purchase them from the auction house.
step
create 1 Scepter of Spectacle: Earth##391807,Dragon Isles Enchanting,1 total |q 71884 |future
stickystart "Collect_Writhebark_71883"
stickystart "Collect_Chromatic_Dust_71883"
step
collect 3 Rousing Fire##190320 |q 71883 |future
|tip Farm them with Mining or purchase them from the auction house.
|tip Hardened Draconium Deposits and Hardened Serevite Deposites contain this.
|tip They can rarely be dropped by powerful earth elemental enemies.
step
label "Collect_Writhebark_71883"
collect 1 Writhebark##191470 |or |q 71883 |future
_Or_
collect 1 Writhebark##191471 |or |q 71883 |future
_Or_
collect 1 Writhebark##191472 |or |q 71883 |future
|tip Farm them with Herbalism or purchase them from the auction house.
|tip Any quality will work, you only need one.
step
label "Collect_Chromatic_Dust_71883"
cast Disenchant##13262
collect 1 Chromatic Dust##194123 |q 71883 |future
|tip Disenchant uncommon (green) items from the Dragon Isles or purchase them from the auction house.
step
create 1 Scepter of Spectacle: Fire##391196,Dragon Isles Enchanting,1 total |q 71883 |future
step
talk Soragosa##193744
Train Enchanted Writhebark Wand |learn Enchanted Writhebark Wand##391176 |goto 31.06,61.38
step
talk Soragosa##193744
Train Writ of Critical Strike |learn Writ of Critical Strike##388930 |goto 31.06,61.38
step
talk Soragosa##193744
Train Writ of Haste |learn Writ of Haste##389135 |goto 31.06,61.38
step
talk Soragosa##193744
Train Writ of Mastery |learn Writ of Mastery##389136 |goto 31.06,61.38
stickystart "Collect_Writhebark_71435"
step
cast Disenchant##13262
collect 6 Chromatic Dust##194123 |q 71435 |future
|tip Disenchant uncommon (green) items from the Dragon Isles or purchase them from the auction house.
step
label "Collect_Writhebark_71435"
collect 1 Writhebark##191470 |or |q 71435 |future
_Or_
collect 1 Writhebark##191471 |or |q 71435 |future
_Or_
collect 1 Writhebark##191472 |or |q 71435 |future
|tip Farm them with Herbalism or purchase them from the auction house.
|tip Any quality will work, you only need one.
step
create 1 Enchanted Writhebark Wand##391176,Dragon Isles Enchanting,1 total |q 71435 |future
step
cast Disenchant##13262
collect 3 Chromatic Dust##194123 |q 71408 |future
|tip Disenchant uncommon (green) items from the Dragon Isles or purchase them from the auction house.
step
create 1 Writ of Critical Strike##388930,Dragon Isles Enchanting,1 total |q 71408 |future
|tip Place this on a ring item or on an Encanting Vellum in your inventory.
step
cast Disenchant##13262
collect 3 Chromatic Dust##194123 |q 71410 |future
|tip Disenchant uncommon (green) items from the Dragon Isles or purchase them from the auction house.
step
create 1 Writ of Haste##389135,Dragon Isles Enchanting,1 total |q 71410 |future
|tip Place this on a ring item or on an Encanting Vellum in your inventory.
step
cast Disenchant##13262
collect 3 Chromatic Dust##194123 |q 71412 |future
|tip Disenchant uncommon (green) items from the Dragon Isles or purchase them from the auction house.
step
create 1 Writ of Mastery##389136,Dragon Isles Enchanting,1 total |q 71412 |future
|tip Place this on a ring item or on an Encanting Vellum in your inventory.
step
cast Disenchant##13262
collect 21 Chromatic Dust##194123 |or
|tip Disenchant uncommon (green) items from the Dragon Isles or purchase them from the auction house.
|tip This total is approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Dragon Isles Enchanting") >= 15 |or |only if default
'|complete skill("Dragon Isles Enchanting") >= 20 |or |only if KulTiran
'|complete skill("Dragon Isles Enchanting") >= 25 |or |only if BloodElf
step
create Writ of Critical Strike##388930,Dragon Isles Enchanting,15 |or |only if default
create Writ of Critical Strike##388930,Dragon Isles Enchanting,20 |or |only if KulTiran
create Writ of Critical Strike##388930,Dragon Isles Enchanting,25 |or |only if BloodElf
_Or_
create Writ of Haste##389135,Dragon Isles Enchanting,15 |or |only if default
create Writ of Haste##389135,Dragon Isles Enchanting,20 |or |only if KulTiran
create Writ of Haste##389135,Dragon Isles Enchanting,25 |or |only if BloodElf
_Or_
create Writ of Mastery##389136,Dragon Isles Enchanting,15 |or |only if default
create Writ of Mastery##389136,Dragon Isles Enchanting,20 |or |only if KulTiran
create Writ of Mastery##389136,Dragon Isles Enchanting,25 |or |only if BloodElf
|tip Place this on a ring item or on an Encanting Vellum in your inventory.
step
talk Soragosa##193744
Train Runed Draconium Rod |learn Runed Draconium Rod##390823 |goto 31.06,61.38
step
talk Soragosa##193744
Train Writ of Avoidance |learn Writ of Avoidance##389297 |goto 31.06,61.38
step
talk Soragosa##193744
Train Writ of Leech |learn Writ of Leech##389298 |goto 31.06,61.38
step
talk Soragosa##193744
Train Writ of Speed |learn Writ of Speed##389300 |goto 31.06,61.38
stickystart "Collect_Draconium_Ore_71433"
stickystart "Collect_Writhebark_71433"
step
cast Disenchant##13262
collect 4 Chromatic Dust##194123 |q 71433 |future
|tip Disenchant uncommon (green) items from the Dragon Isles or purchase them from the auction house.
step
label "Collect_Draconium_Ore_71433"
collect 3 Draconium Ore##189143 |or |q 71433 |future
_Or_
collect 3 Draconium Ore##188658 |or |q 71433 |future
_Or_
collect 3 Draconium Ore##190311 |or |q 71433 |future
|tip Farm them with Mining or purchase them from the auction house.
|tip Any quality will work, you only need one.
step
label "Collect_Writhebark_71433"
collect 2 Writhebark##191470 |or |q 71433 |future
_Or_
collect 2 Writhebark##191471 |or |q 71433 |future
_Or_
collect 2 Writhebark##191472 |or |q 71433 |future
|tip Farm them with Herbalism or purchase them from the auction house.
|tip Any quality will work, you only need one.
step
create 1 Runed Draconium Rod##390823,Dragon Isles Enchanting,1 total |q 71433 |future
step
cast Disenchant##13262
collect 1 Vibrant Shard##194124 |q 71392 |future
|tip Disenchant rare (blue) items from the Dragon Isles or purchase them from the auction house.
step
create 1 Writ of Avoidance##389297,Dragon Isles Enchanting,1 total |q 71392 |future
|tip Place this on a bracer item or on an Encanting Vellum in your inventory.
step
cast Disenchant##13262
collect 1 Vibrant Shard##194124 |q 71394 |future
|tip Disenchant rare (blue) items from the Dragon Isles or purchase them from the auction house.
step
create 1 Writ of Leech##389298,Dragon Isles Enchanting,1 total |q 71394 |future
|tip Place this on a bracer item or on an Encanting Vellum in your inventory.
step
cast Disenchant##13262
collect 1 Vibrant Shard##194124 |q 71396 |future
|tip Disenchant rare (blue) items from the Dragon Isles or purchase them from the auction house.
step
create 1 Writ of Speed##389300,Dragon Isles Enchanting,1 total |q 71396 |future
|tip Place this on a bracer item or on an Encanting Vellum in your inventory.
step
talk Soragosa##193744
Train Scepter of Spectacle: Air |learn Scepter of Spectacle: Air##391806 |goto 31.06,61.38
step
talk Soragosa##193744
Train Scepter of Spectacle: Frost |learn Scepter of Spectacle: Frost##391197 |goto 31.06,61.38
stickystart "Collect_Writhebark_71881"
stickystart "Collect_Chromatic_Dust_71881"
step
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	47.57,59.13	48.18,61.09	49.82,61.61	50.26,59.59	48.84,59.09
Follow the path
kill Angered Steam##190694+
kill Steam Reaver##190700+
collect 3 Rousing Frost##190328 |q 71881 |future
step
label "Collect_Writhebark_71881"
collect 1 Writhebark##191470 |or |q 71881 |future
_Or_
collect 1 Writhebark##191471 |or |q 71881 |future
_Or_
collect 1 Writhebark##191472 |or |q 71881 |future
|tip Farm them with Herbalism or purchase them from the auction house.
|tip Any quality will work, you only need one.
step
label "Collect_Chromatic_Dust_71881"
cast Disenchant##13262
collect 1 Chromatic Dust##194123 |q 71881 |future
|tip Disenchant uncommon (green) items from the Dragon Isles or purchase them from the auction house.
step
create 1 Scepter of Spectacle: Frost##391197,Dragon Isles Enchanting,1 total |q 71881 |future
stickystart "Collect_Writhebark_71886"
stickystart "Collect_Chromatic_Dust_71886"
step
map The Azure Span/0
path follow smart; loop on; ants curved; dist 20
path	45.78,57.35	46.18,56.13	46.66,55.42	47.13,54.48	47.01,55.77
path	47.22,56.47	46.80,57.01	46.88,57.82	47.45,58.16	47.64,58.70
path	47.22,58.92	46.98,59.34	46.57,59.35	46.34,57.62
Follow the path
kill Restless Wind##186397+
collect 3 Rousing Air##190326 |q 71886 |future
step
label "Collect_Writhebark_71886"
collect 1 Writhebark##191470 |or |q 71886 |future
_Or_
collect 1 Writhebark##191471 |or |q 71886 |future
_Or_
collect 1 Writhebark##191472 |or |q 71886 |future
|tip Farm them with Herbalism or purchase them from the auction house.
|tip Any quality will work, you only need one.
step
label "Collect_Chromatic_Dust_71886"
cast Disenchant##13262
collect 1 Chromatic Dust##194123 |q 71886 |future
|tip Disenchant uncommon (green) items from the Dragon Isles or purchase them from the auction house.
step
create 1 Scepter of Spectacle: Air##391806,Dragon Isles Enchanting,1 total |q 71886 |future
step
cast Disenchant##13262
collect 4 Vibrant Shard##194124 |or
|tip Disenchant rare (blue) items from the Dragon Isles or purchase them from the auction house.
|tip This total is approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Dragon Isles Enchanting") >= 25 |or |only if default
'|complete skill("Dragon Isles Enchanting") >= 30 |or |only if KulTiran
'|complete skill("Dragon Isles Enchanting") >= 35 |or |only if BloodElf
step
create Writ of Leech##389298,Dragon Isles Enchanting,25 |or |only if default
create Writ of Leech##389298,Dragon Isles Enchanting,30 |or |only if KulTiran
create Writ of Leech##389298,Dragon Isles Enchanting,35 |or |only if BloodElf
|tip Place this on a bracer item or on an Encanting Vellum in your inventory.
step
You can now unlock enchanting specializations
|confirm
step
talk Soragosa##193744
Train Writ of Avoidance |learn Writ of Avoidance##389397 |goto 31.06,61.38
step
talk Soragosa##193744
Train Writ of Leech |learn Writ of Leech##389398 |goto 31.06,61.38
step
talk Soragosa##193744
Train Writ of Speed |learn Writ of Speed##389400 |goto 31.06,61.38
step
cast Disenchant##13262
collect 12 Chromatic Dust##194123 |q 71404 |future
|tip Disenchant uncommon (green) items from the Dragon Isles or purchase them from the auction house.
step
create 1 Writ of Leech##389398,Dragon Isles Enchanting,1 total |q 71404 |future
|tip Place this on a cloak item or on an Encanting Vellum in your inventory.
step
cast Disenchant##13262
collect 12 Chromatic Dust##194123 |q 71406 |future
|tip Disenchant uncommon (green) items from the Dragon Isles or purchase them from the auction house.
step
create 1 Writ of Speed##389400,Dragon Isles Enchanting,1 total |q 71406 |future
|tip Place this on a cloak item or on an Encanting Vellum in your inventory.
step
cast Disenchant##13262
collect 12 Chromatic Dust##194123 |q 71402 |future
|tip Disenchant uncommon (green) items from the Dragon Isles or purchase them from the auction house.
step
create 1 Writ of Avoidance##389397,Dragon Isles Enchanting,1 total |q 71402 |future
|tip Place this on a cloak item or on an Encanting Vellum in your inventory.
step
cast Disenchant##13262
collect 36 Chromatic Dust##194123 |or
|tip Disenchant uncommon (green) items from the Dragon Isles or purchase them from the auction house.
|tip This total is approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Dragon Isles Enchanting") >= 31 |or |only if default
'|complete skill("Dragon Isles Enchanting") >= 36 |or |only if KulTiran
'|complete skill("Dragon Isles Enchanting") >= 41 |or |only if BloodElf
step
create Writ of Leech##389398,Dragon Isles Enchanting,31 |or |only if default
create Writ of Leech##389398,Dragon Isles Enchanting,36 |or |only if KulTiran
create Writ of Leech##389398,Dragon Isles Enchanting,41 |or |only if BloodElf
_Or_
create Writ of Speed##389400,Dragon Isles Enchanting,31 |or |only if default
create Writ of Speed##389400,Dragon Isles Enchanting,36 |or |only if KulTiran
create Writ of Speed##389400,Dragon Isles Enchanting,41 |or |only if BloodElf
_Or_
create Writ of Avoidance##389397,Dragon Isles Enchanting,31 |or |only if default
create Writ of Avoidance##389397,Dragon Isles Enchanting,36 |or |only if KulTiran
create Writ of Avoidance##389397,Dragon Isles Enchanting,41 |or |only if BloodElf
|tip Place this on a cloak item or on an Encanting Vellum in your inventory.
step
talk Soragosa##193744
Train Devotion of Versatility |learn Devotion of Versatility##389295 |goto 31.06,61.38
stickystart "Collect_Chromatic_Dust_71415"
step
cast Disenchant##13262
collect 12 Vibrant Shard##194124 |q 71415 |future
|tip Disenchant rare (blue) items from the Dragon Isles or purchase them from the auction house.
step
label "Collect_Chromatic_Dust_71415"
cast Disenchant##13262
collect 20 Chromatic Dust##194123 |q 71415 |future
|tip Disenchant uncommon (green) items from the Dragon Isles or purchase them from the auction house.
step
create Devotion of Versatility##389295,Dragon Isles Enchanting,1 total |q 71415 |future
|tip Place this on a ring item or on an Encanting Vellum in your inventory.
step
create Devotion of Versatility##389295,Dragon Isles Enchanting,35 |or |only if default
create Devotion of Versatility##389295,Dragon Isles Enchanting,40 |or |only if KulTiran
create Devotion of Versatility##389295,Dragon Isles Enchanting,45 |or |only if BloodElf
|tip Place this on a ring item or on an Encanting Vellum in your inventory.
step
talk Soragosa##193744
Train Devotion of Critical Strike |learn Devotion of Critical Strike##389292 |goto 31.06,61.38
step
talk Soragosa##193744
Train Devotion of Haste |learn Devotion of Haste##389293 |goto 31.06,61.38
step
talk Soragosa##193744
Train Devotion of Mastery |learn Devotion of Mastery##389294 |goto 31.06,61.38
stickystart "Collect_Chromatic_Dust_71409"
step
cast Disenchant##13262
collect 3 Vibrant Shard##194124 |q 71409 |future
|tip Disenchant rare (blue) items from the Dragon Isles or purchase them from the auction house.
step
label "Collect_Chromatic_Dust_71409"
cast Disenchant##13262
collect 5 Chromatic Dust##194123 |q 71409 |future
|tip Disenchant uncommon (green) items from the Dragon Isles or purchase them from the auction house.
step
create Devotion of Critical Strike##389292,Dragon Isles Enchanting,1 total |q 71409 |future
|tip Place this on a ring item or on an Encanting Vellum in your inventory.
stickystart "Collect_Chromatic_Dust_71411"
step
cast Disenchant##13262
collect 3 Vibrant Shard##194124 |q 71411 |future
|tip Disenchant rare (blue) items from the Dragon Isles or purchase them from the auction house.
step
label "Collect_Chromatic_Dust_71411"
cast Disenchant##13262
collect 5 Chromatic Dust##194123 |q 71411 |future
|tip Disenchant uncommon (green) items from the Dragon Isles or purchase them from the auction house.
step
create Devotion of Haste##389293,Dragon Isles Enchanting,1 total |q 71411 |future
|tip Place this on a ring item or on an Encanting Vellum in your inventory.
stickystart "Collect_Chromatic_Dust_71413"
step
cast Disenchant##13262
collect 3 Vibrant Shard##194124 |q 71413 |future
|tip Disenchant rare (blue) items from the Dragon Isles or purchase them from the auction house.
step
label "Collect_Chromatic_Dust_71413"
cast Disenchant##13262
collect 5 Chromatic Dust##194123 |q 71413 |future
|tip Disenchant uncommon (green) items from the Dragon Isles or purchase them from the auction house.
step
create Devotion of Mastery##389294,Dragon Isles Enchanting,1 total |q 71413 |future
|tip Place this on a ring item or on an Encanting Vellum in your inventory.
stickystart "Collect_Chromatic_Dust_40"
step
cast Disenchant##13262
collect 6 Vibrant Shard##194124 |or
|tip Disenchant rare (blue) items from the Dragon Isles or purchase them from the auction house.
|tip This total is approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Dragon Isles Enchanting") >= 40 |or |only if default
'|complete skill("Dragon Isles Enchanting") >= 45 |or |only if KulTiran
'|complete skill("Dragon Isles Enchanting") >= 50 |or |only if BloodElf
step
label "Collect_Chromatic_Dust_40"
cast Disenchant##13262
collect 10 Chromatic Dust##194123 |or
|tip Disenchant uncommon (green) items from the Dragon Isles or purchase them from the auction house.
|tip This total is approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Dragon Isles Enchanting") >= 40 |or |only if default
'|complete skill("Dragon Isles Enchanting") >= 45 |or |only if KulTiran
'|complete skill("Dragon Isles Enchanting") >= 50 |or |only if BloodElf
step
create Devotion of Critical Strike##389292,Dragon Isles Enchanting,40 |or |only if default
create Devotion of Critical Strike##389292,Dragon Isles Enchanting,45 |or |only if KulTiran
create Devotion of Critical Strike##389292,Dragon Isles Enchanting,50 |or |only if BloodElf
_Or_
create Devotion of Haste##389293,Dragon Isles Enchanting,40 |or |only if default
create Devotion of Haste##389293,Dragon Isles Enchanting,45 |or |only if KulTiran
create Devotion of Haste##389293,Dragon Isles Enchanting,50 |or |only if BloodElf
_Or_
create Devotion of Mastery##389294,Dragon Isles Enchanting,40 |or |only if default
create Devotion of Mastery##389294,Dragon Isles Enchanting,45 |or |only if KulTiran
create Devotion of Mastery##389294,Dragon Isles Enchanting,50 |or |only if BloodElf
_Or_
create Devotion of Versatility##389295,Dragon Isles Enchanting,40 |or |only if default
create Devotion of Versatility##389295,Dragon Isles Enchanting,45 |or |only if KulTiran
create Devotion of Versatility##389295,Dragon Isles Enchanting,50 |or |only if BloodElf
|tip Place this on a ring item or on an Encanting Vellum in your inventory.
step
talk Soragosa##193744
Train Illusory Adornment: Air |learn Illusory Adornment: Air##391810 |goto 31.06,61.38
step
talk Soragosa##193744
Train Illusory Adornment: Earth |learn Illusory Adornment: Earth##391811 |goto 31.06,61.38
step
talk Soragosa##193744
Train Illusory Adornment: Fire |learn Illusory Adornment: Fire##390951 |goto 31.06,61.38
step
talk Soragosa##193744
Train Illusory Adornment: Frost |learn Illusory Adornment: Frost##391809 |goto 31.06,61.38
stickystart "Collect_Chromatic_Dust_71931"
step
map The Azure Span/0
path follow smart; loop on; ants curved; dist 20
path	45.78,57.35	46.18,56.13	46.66,55.42	47.13,54.48	47.01,55.77
path	47.22,56.47	46.80,57.01	46.88,57.82	47.45,58.16	47.64,58.70
path	47.22,58.92	46.98,59.34	46.57,59.35	46.34,57.62
Follow the path
kill Restless Wind##186397+
collect 2 Rousing Air##190326 |q 71931 |future
step
label "Collect_Chromatic_Dust_71931"
cast Disenchant##13262
collect 2 Chromatic Dust##194123 |q 71931 |future
|tip Disenchant uncommon (green) items from the Dragon Isles or purchase them from the auction house.
step
create Illusory Adornment: Air##391810,Dragon Isles Enchanting,1 total |q 71931 |future
|tip Place this on a shoulder item or on an Encanting Vellum in your inventory.
stickystart "Collect_Chromatic_Dust_71932"
step
collect 2 Rousing Earth##190315 |q 71932 |future
|tip Farm them with Mining or purchase them from the auction house.
|tip Hardened Draconium Deposits and Hardened Serevite Deposites contain this.
|tip They can rarely be dropped by powerful earth elemental enemies.
step
label "Collect_Chromatic_Dust_71932"
cast Disenchant##13262
collect 2 Chromatic Dust##194123 |q 71932 |future
|tip Disenchant uncommon (green) items from the Dragon Isles or purchase them from the auction house.
step
create Illusory Adornment: Earth##391811,Dragon Isles Enchanting,1 total |q 71932 |future
|tip Place this on a shoulder item or on an Encanting Vellum in your inventory.
stickystart "Collect_Chromatic_Dust_71432"
step
collect 2 Rousing Fire##190320 |q 71432 |future
|tip Farm them with Mining or purchase them from the auction house.
|tip Hardened Draconium Deposits and Hardened Serevite Deposites contain this.
|tip They can rarely be dropped by powerful earth elemental enemies.
step
label "Collect_Chromatic_Dust_71432"
cast Disenchant##13262
collect 2 Chromatic Dust##194123 |q 71432 |future
|tip Disenchant uncommon (green) items from the Dragon Isles or purchase them from the auction house.
step
create Illusory Adornment: Fire##390951,Dragon Isles Enchanting,1 total |q 71432 |future
|tip Place this on a shoulder item or on an Encanting Vellum in your inventory.
stickystart "Collect_Chromatic_Dust_71930"
step
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	47.57,59.13	48.18,61.09	49.82,61.61	50.26,59.59	48.84,59.09
Follow the path
kill Angered Steam##190694+
kill Steam Reaver##190700+
collect 2 Rousing Frost##190328 |q 71930 |future
step
label "Collect_Chromatic_Dust_71930"
cast Disenchant##13262
collect 2 Chromatic Dust##194123 |q 71930 |future
|tip Disenchant uncommon (green) items from the Dragon Isles or purchase them from the auction house.
step
create Illusory Adornment: Frost##391809,Dragon Isles Enchanting,1 total |q 71930 |future
|tip Place this on a shoulder item or on an Encanting Vellum in your inventory.
stickystart "Collect_Chromatic_Dust_40"
step
collect 16 Rousing Air##190326 |or
|tip Farm them from air elementals or purchase them from the auction house.
_Or_
collect 16 Rousing Earth##190315 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip Hardened Draconium Deposits and Hardened Serevite Deposites contain this.
|tip They can rarely be dropped by powerful earth elemental enemies.
_Or_
collect 16 Rousing Fire##190320 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip Hardened Draconium Deposits and Hardened Serevite Deposites contain this.
|tip They can rarely be dropped by powerful earth elemental enemies.
_Or_
collect 16 Rousing Frost##190328 |or
|tip This total is approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Dragon Isles Enchanting") >= 50 |or |only if default
'|complete skill("Dragon Isles Enchanting") >= 55 |or |only if KulTiran
'|complete skill("Dragon Isles Enchanting") >= 60 |or |only if BloodElf
step
label "Collect_Chromatic_Dust_40"
cast Disenchant##13262
collect 16 Chromatic Dust##194123 |or
|tip Disenchant uncommon (green) items from the Dragon Isles or purchase them from the auction house.
|tip This total is approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Dragon Isles Enchanting") >= 50 |or |only if default
'|complete skill("Dragon Isles Enchanting") >= 55 |or |only if KulTiran
'|complete skill("Dragon Isles Enchanting") >= 60 |or |only if BloodElf
step
create Illusory Adornment: Air##391810,Dragon Isles Enchanting,50 |or |only if default
create Illusory Adornment: Air##391810,Dragon Isles Enchanting,55 |or |only if KulTiran
create Illusory Adornment: Air##391810,Dragon Isles Enchanting,60 |or |only if BloodElf
_Or_
create Illusory Adornment: Earth##391811,Dragon Isles Enchanting,50 |or |only if default
create Illusory Adornment: Earth##391811,Dragon Isles Enchanting,55 |or |only if KulTiran
create Illusory Adornment: Earth##391811,Dragon Isles Enchanting,60 |or |only if BloodElf
_Or_
create Illusory Adornment: Fire##390951,Dragon Isles Enchanting,50 |or |only if default
create Illusory Adornment: Fire##390951,Dragon Isles Enchanting,55 |or |only if KulTiran
create Illusory Adornment: Fire##390951,Dragon Isles Enchanting,60 |or |only if BloodElf
_Or_
create Illusory Adornment: Frost##391809,Dragon Isles Enchanting,50 |or |only if default
create Illusory Adornment: Frost##391809,Dragon Isles Enchanting,55 |or |only if KulTiran
create Illusory Adornment: Frost##391809,Dragon Isles Enchanting,60 |or |only if BloodElf
|tip Place this on a ring item or on an Encanting Vellum in your inventory.
step
talk Soragosa##193744
accept Essence, Shards, and Chromatic Dust##72172 |goto 31.06,61.38
step
cast Disenchant##13262
collect 10 Chromatic Dust##194123 |q 72172/1
|tip Disenchant uncommon (green) items from the Dragon Isles or purchase them from the auction house.
step
talk Soragosa##193744
turnin Essence, Shards, and Chromatic Dust##72172 |goto 31.06,61.38
step
talk Soragosa##193744
Train Burning Writ |learn Burning Writ##389537 |goto 31.06,61.38
step
talk Soragosa##193744
Train Earthen Writ |learn Earthen Writ##389540 |goto 31.06,61.38
step
talk Soragosa##193744
Train Frozen Writ |learn Frozen Writ##389543 |goto 31.06,61.38
step
talk Soragosa##193744
Train Sophic Writ |learn Sophic Writ##389542 |goto 31.06,61.38
step
talk Soragosa##193744
Train Wafting Writ |learn Wafting Writ##389546 |goto 31.06,61.38
stickystart "Collect_Chromatic_Dust_71425"
stickystart "Collect_Resonant_Crystal_71425"
step
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	37.99,69.37	37.76,71.40	36.96,72.21	35.90,72.27	36.61,73.66
path	37.17,73.87	37.94,76.03	38.65,74.48	38.52,72.73	38.76,70.86
kill Blazing Manifestation##186336+
collect 10 Rousing Fire##190320 |n
|tip They can also be gathered from "Molten" and "Primal" Mining nodes.
use Rousing Fire##190320
collect 4 Awakened Fire##190321 |q 71425 |future
step
label "Collect_Chromatic_Dust_71425"
cast Disenchant##13262
collect 15 Chromatic Dust##194123 |q 71425 |future
|tip Disenchant uncommon (green) items from the Dragon Isles or purchase them from the auction house.
step
label "Collect_Resonant_Crystal_71425"
cast Disenchant##13262
collect 2 Resonant Crystal##200113 |q 71425 |future
|tip Disenchant epic (purple) items from the Dragon Isles or purchase them from the auction house.
step
create Burning Writ##389537,Dragon Isles Enchanting,1 total |q 71425 |future
|tip Place this on a weapon item or on an Encanting Vellum in your inventory.
stickystart "Collect_Chromatic_Dust_71429"
stickystart "Collect_Resonant_Crystal_71429"
step
collect 3 Awakened Order##190324 |q 71429 |future
step
label "Collect_Chromatic_Dust_71429"
cast Disenchant##13262
collect 15 Chromatic Dust##194123 |q 71429 |future
|tip Disenchant uncommon (green) items from the Dragon Isles or purchase them from the auction house.
step
label "Collect_Resonant_Crystal_71429"
cast Disenchant##13262
collect 2 Resonant Crystal##200113 |q 71429 |future
|tip Disenchant epic (purple) items from the Dragon Isles or purchase them from the auction house.
step
create Sophic Writ##389542,Dragon Isles Enchanting,1 total |q 71429 |future
|tip Place this on a weapon item or on an Encanting Vellum in your inventory.
stickystart "Collect_Chromatic_Dust_71423"
stickystart "Collect_Resonant_Crystal_71423"
step
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	52.19,32.87	50.73,33.22	49.95,33.73	49.29,33.52	49.63,31.58
path	50.23,30.93	50.98,31.30	52.49,30.87	53.65,31.43	53.34,32.31
path	52.55,32.60	51.81,33.07
Follow the path
Kill Elemental enemies around this area
collect 10 Rousing Earth##190315 |n
use Rousing Earth##190315
collect 4 Awakened Earth##190316 |q 71423 |future
|tip These have a chance to be gathered from "Hardened" and "Primal" nodes.
step
label "Collect_Chromatic_Dust_71423"
cast Disenchant##13262
collect 15 Chromatic Dust##194123 |q 71423 |future
|tip Disenchant uncommon (green) items from the Dragon Isles or purchase them from the auction house.
step
label "Collect_Resonant_Crystal_71423"
cast Disenchant##13262
collect 2 Resonant Crystal##200113 |q 71423 |future
|tip Disenchant epic (purple) items from the Dragon Isles or purchase them from the auction house.
step
create Earthen Writ##389540,Dragon Isles Enchanting,1 total |q 71423 |future
|tip Place this on a weapon item or on an Encanting Vellum in your inventory.
stickystart "Collect_Chromatic_Dust_71427"
stickystart "Collect_Resonant_Crystal_71427"
step
collect 4 Awakened Frost##190329 |q 71427 |future
step
label "Collect_Chromatic_Dust_71427"
cast Disenchant##13262
collect 15 Chromatic Dust##194123 |q 71427 |future
|tip Disenchant uncommon (green) items from the Dragon Isles or purchase them from the auction house.
step
label "Collect_Resonant_Crystal_71427"
cast Disenchant##13262
collect 2 Resonant Crystal##200113 |q 71427 |future
|tip Disenchant epic (purple) items from the Dragon Isles or purchase them from the auction house.
step
create Frozen Writ##389543,Dragon Isles Enchanting,1 total |q 71427 |future
|tip Place this on a weapon item or on an Encanting Vellum in your inventory.
stickystart "Collect_Chromatic_Dust_71421"
stickystart "Collect_Resonant_Crystal_71421"
step
map The Azure Span/0
path follow smart; loop on; ants curved; dist 20
path	45.78,57.35	46.18,56.13	46.66,55.42	47.13,54.48	47.01,55.77
path	47.22,56.47	46.80,57.01	46.88,57.82	47.45,58.16	47.64,58.70
path	47.22,58.92	46.98,59.34	46.57,59.35	46.34,57.62
Follow the path
kill Restless Wind##186397+
collect 10 Rousing Air##190326 |n
use Rousing Air##190326
collect 4 Awakened Air##190327 |q 71421 |future
step
label "Collect_Chromatic_Dust_71421"
cast Disenchant##13262
collect 15 Chromatic Dust##194123 |q 71421 |future
|tip Disenchant uncommon (green) items from the Dragon Isles or purchase them from the auction house.
step
label "Collect_Resonant_Crystal_71421"
cast Disenchant##13262
collect 2 Resonant Crystal##200113 |q 71421 |future
|tip Disenchant epic (purple) items from the Dragon Isles or purchase them from the auction house.
step
create Wafting Writ##389546,Dragon Isles Enchanting,1 total |q 71421 |future
|tip Place this on a weapon item or on an Encanting Vellum in your inventory.
stickystart "Collect_Chromatic_Dust_60"
stickystart "Collect_Resonant_Crystal_60"
step
collect 48 Awakened Fire##190321 |or
collect 36 Awakened Order##190324 |or
collect 48 Awakened Earth##190316 |or
collect 48 Awakened Frost##190329 |or
collect 48 Awakened Air##190327 -|or
|tip This total is approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Dragon Isles Enchanting") >= 65 |or |only if default
'|complete skill("Dragon Isles Enchanting") >= 70 |or |only if KulTiran
'|complete skill("Dragon Isles Enchanting") >= 75 |or |only if BloodElf
step
label "Collect_Chromatic_Dust_60"
cast Disenchant##13262
collect 91 Chromatic Dust##194123 |or
|tip Disenchant uncommon (green) items from the Dragon Isles or purchase them from the auction house.
|tip This total is approximate.
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Dragon Isles Enchanting") >= 65 |or |only if default
'|complete skill("Dragon Isles Enchanting") >= 70 |or |only if KulTiran
'|complete skill("Dragon Isles Enchanting") >= 75 |or |only if BloodElf
step
label "Collect_Resonant_Crystal_60"
cast Disenchant##13262
collect 24 Resonant Crystal##200113 |or
|tip Disenchant epic (purple) items from the Dragon Isles or purchase them from the auction house.
|tip This total is approximate.
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Dragon Isles Enchanting") >= 65 |or |only if default
'|complete skill("Dragon Isles Enchanting") >= 70 |or |only if KulTiran
'|complete skill("Dragon Isles Enchanting") >= 75 |or |only if BloodElf
step
create Burning Writ##389537,Dragon Isles Enchanting,65 |or |only if default
create Burning Writ##389537,Dragon Isles Enchanting,70 |or |only if KulTiran
create Burning Writ##389537,Dragon Isles Enchanting,75 |or |only if BloodElf
_Or_
create Sophic Writ##389542,Dragon Isles Enchanting,65 |or |only if default
create Sophic Writ##389542,Dragon Isles Enchanting,70 |or |only if KulTiran
create Sophic Writ##389542,Dragon Isles Enchanting,75 |or |only if BloodElf
_Or_
create Earthen Writ##389540,Dragon Isles Enchanting,65 |or |only if default
create Earthen Writ##389540,Dragon Isles Enchanting,70 |or |only if KulTiran
create Earthen Writ##389540,Dragon Isles Enchanting,75 |or |only if BloodElf
_Or_
create Frozen Writ##389543,Dragon Isles Enchanting,65 |or |only if default
create Frozen Writ##389543,Dragon Isles Enchanting,70 |or |only if KulTiran
create Frozen Writ##389543,Dragon Isles Enchanting,75 |or |only if BloodElf
_Or_
create Wafting Writ##389546,Dragon Isles Enchanting,65 |or |only if default
create Wafting Writ##389546,Dragon Isles Enchanting,70 |or |only if KulTiran
create Wafting Writ##389546,Dragon Isles Enchanting,75 |or |only if BloodElf
|tip Place this on a weapon item or on an Encanting Vellum in your inventory.
|tip You can also make numerous alternative recipes from renown or Enchanting specialization.
|tip Feel free to make whatever you like to reach this skill level.
step
create Plainsrunner's Breeze##389479,Dragon Isles Enchanting,80 |goto Ohn'ahran Plains/0 60.40,37.72 |or |only if default
create Plainsrunner's Breeze##389479,Dragon Isles Enchanting,85 |goto Ohn'ahran Plains/0 60.40,37.72 |or |only if KulTiran
create Plainsrunner's Breeze##389479,Dragon Isles Enchanting,90 |goto Ohn'ahran Plains/0 60.40,37.72 |or |only if BloodElf
|tip This recipe can be purchased from Quartermaster Huseng in Maruukai at renown level 8 with the Maruuk Centaur.
_Or_
create Rider's Reassurance##389480,Dragon Isles Enchanting,80 |goto The Waking Shores/0 47.11,82.58 |or |only if default
create Rider's Reassurance##389480,Dragon Isles Enchanting,85 |goto The Waking Shores/0 47.11,82.58 |or |only if KulTiran
create Rider's Reassurance##389480,Dragon Isles Enchanting,90 |goto The Waking Shores/0 47.11,82.58 |or |only if BloodElf
|tip This recipe can be purchased from Cataloger Jakes in Dragonscale Basecamp at renown level 9 with the Dragonscale Expedition.
_Or_
create Watcher's Loam##389484,Dragon Isles Enchanting,80 |goto Valdrakken/0 36.43,62.79 |or |only if default
create Watcher's Loam##389484,Dragon Isles Enchanting,85 |goto Valdrakken/0 36.43,62.79 |or |only if KulTiran
create Watcher's Loam##389484,Dragon Isles Enchanting,90 |goto Valdrakken/0 36.43,62.79 |or |only if BloodElf
|tip This recipe can be purchased from Dothenos in Valdrakken at renown level 11 with the Valdrakken Accord.
|tip Each recipe requires 4 Vibrant Shards, 1 Awakened Air, and 1 Awakened Earth.
|tip If you unlock other enchanting formula from other sources, craft at least one of them for the initial bonus and chance at a skill up.
step
create Sophic Devotion##389550,Dragon Isles Enchanting,100 |or |only if default
create Sophic Devotion##389550,Dragon Isles Enchanting,105 |or |only if KulTiran
create Sophic Devotion##389550,Dragon Isles Enchanting,110 |or |only if BloodElf
|tip Each requires 5 Vibrant Shards, 4 Resonant Crystals, 4 Awakened Order, and 3 Glowing Titan Orbs.
_Or_
create Frozen Devotion##389551,Dragon Isles Enchanting,100 |or |only if default
create Frozen Devotion##389551,Dragon Isles Enchanting,105 |or |only if KulTiran
create Frozen Devotion##389551,Dragon Isles Enchanting,110 |or |only if BloodElf
|tip Each requires 5 Vibrant Shards, 4 Resonant Crystals, 6 Awakened Frost, and 3 Glowing Titan Orbs.
_Or_
create Wafting Devotion##389558,Dragon Isles Enchanting,100 |or |only if default
create Wafting Devotion##389558,Dragon Isles Enchanting,105 |or |only if KulTiran
create Wafting Devotion##389558,Dragon Isles Enchanting,110 |or |only if BloodElf
|tip Each requires 5 Vibrant Shards, 4 Resonant Crystals, 6 Awakened Air, and 3 Glowing Titan Orbs.
_Or_
create Burning Devotion##389547,Dragon Isles Enchanting,100 |or |only if default
create Burning Devotion##389547,Dragon Isles Enchanting,105 |or |only if KulTiran
create Burning Devotion##389547,Dragon Isles Enchanting,110 |or |only if BloodElf
|tip Each requires 5 Vibrant Shards, 4 Resonant Crystals, 6 Awakened Fire, and 3 Glowing Titan Orbs.
_Or_
create Earthen Devotion##389549,Dragon Isles Enchanting,100 |or |only if default
create Earthen Devotion##389549,Dragon Isles Enchanting,105 |or |only if KulTiran
create Earthen Devotion##389549,Dragon Isles Enchanting,110 |or |only if BloodElf
|tip Each requires 5 Vibrant Shards, 4 Resonant Crystals, 6 Awakened Earth, and 3 Glowing Titan Orbs.
|tip Place this on a weapon item or on an Encanting Vellum in your inventory.
|tip If you unlock other enchanting formula from other sources, craft at least one of them for the initial bonus and chance at a skill up.
|tip You can also make Primal Illusion enchants from formula that drop from Primal Storm mobs in various storm locations across the Dragon Isles.
]])
ZGV.BETAEND()
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Enchanting\\Leveling Guides\\Enchanting Knowledge Treasures",{
author="support@zygorguides.com",
description="\nThis guide will walk you through collecting one-time treasures that grant Knowledge Points for Dragon Isles Enchanting.",
startlevel=60.0,
condition_end=function() return completedallq(70283,70272,70320,70291,70298,70336,70290,70342) end,
condition_suggested=function() return skill('Dragon Isles Enchanting') >= 25 and not completedallq(70283,70272,70320,70291,70298,70336,70290,70342) end,
},[[
step
talk Soragosa##193744
Train Enchanting |skillmax Enchanting,300 |goto 31.06,61.38
step
talk Soragosa##193744
Train Dragon Isles Enchanting |skillmax Dragon Isles Enchanting,100 |goto 31.06,61.38
step
Reach Skill Level 25 in Dragon Isles Enchanting |complete skill("Dragon Isles Enchanting") >= 25 |or
|tip You must be at least skill level 25 to interact with profession treasures.
|tip Use the "Dragon Isles Enchanting 1-100" 1-100 guide to accomplish this.
Click Here to Load the "Dragon Isles Enchanting 1-100" Guide |confirm |loadguide "Profession Guides\\Enchanting\\Leveling Guides\\Dragon Isles Enchanting 1-100" |or
step
click Lava-Infused Seed##380580
|tip Inside the flower.
collect Lava-Infused Seed##198675 |goto The Waking Shores/0 67.91,26.78 |q 70283 |future
step
cast Disenchant##13262
Disenchant the Lava-Infused Seed |complete itemcount(198675) == 0
step
click Disenchanted Broom
|tip Click the broom and follow it to the end of the path.
click Disenchanted Broom##380558
collect Enchanted Debris##201012 |goto The Waking Shores/0 57.48,58.48 |q 70272 |future
Follow the broom to [59.87,57.09]
step
use the Enchanted Debris##201012
Study the Enchanted Debris |complete itemcount(201012) == 0
step
click Flashfrozen Scroll##380643
|tip You may not be able to normally interact with this object.
|tip If you can't click it, in the escape menu, go to "Options."
|tip Under "Controls" check "Enable Interact Key."
|tip Bind a key under "Interact With Target."
|tip Place your mouse over the scroll and use the key you bound to loot it.
collect Flashfrozen Scroll##198798 |goto The Waking Shores/0 57.44,83.62 |q 70320 |future
step
cast Disenchant##13262
Disenchant the Flashfrozen Scroll |complete itemcount(198798) == 0
step
click Stormbound Horn##380592
collect Stormbound Horn##198689 |goto Ohn'ahran Plains/0 61.55,67.70 |q 70291 |future
step
cast Disenchant##13262
Disenchant the Stormbound Horn |complete itemcount(198689) == 0
step
click Enriched Earthen Shard##380600
collect Enriched Earthen Shard##198694 |goto The Azure Span/0 21.57,45.55 |q 70298 |future
step
cast Disenchant##13262
Disenchant the Enriched Earthen Shard |complete itemcount(198694) == 0
step
Enter the building |goto The Azure Span/0 38.55,59.74 < 15 |walk
click Forgotten Arcane Tome##380647
|tip Inside the building.
collect Forgotten Arcane Tome##198799 |goto The Azure Span/0 38.52,59.13 |q 70336 |future
step
cast Disenchant##13262
Disenchant the Forgotten Arcane Tome |complete itemcount(198799) == 0
step
clicknpc Mana-Starved Crystal Cluster##194882
|tip This will spawn a mob that will attack you.
|tip Kill the mob and loot the remains.
click Faintly Enchanted Remains##380589
collect Faintly Enchanted Remains##201013 |goto The Azure Span/0 45.16,61.11 |q 70290 |future
step
use the Disenchant##201013
Study the Faintly Enchanted Remains |complete itemcount(201013) == 0
step
Enter the building |goto Thaldraszus/0 59.42,69.78 < 15 |walk
click Fractured Titanic Sphere##380652
|tip Inside the building.
collect Fractured Titanic Sphere##198800 |goto Thaldraszus/0 59.89,70.33 |q 70342 |future
step
cast Disenchant##13262
Disenchant the Fractured Titanic Sphere |complete itemcount(198800) == 0
]])
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Engineering\\Leveling Guides\\Dragon Isles Engineering 1-100",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Dragon Isles Engineering profession from 1-100.",
startlevel=60.0,
condition_end=function() return skill('Dragon Isles Engineering') >= 100 end,
condition_suggested=function() return skill('Dragon Isles Engineering') > 0 and skill('Dragon Isles Engineering') < 100 and level >= 60 end,
},[[
step
Approximate bill of materials:
|tip Draconium Ore: 74
|tip Serevite Ore: 320
|tip Khaz'gorite Ore: 4
|tip Rousing Earth: 64
|tip Rousing Fire: 52
|tip Awakened Earth: 1
|tip Awakened Order: 2
|tip These totals are approximate.
|tip You are encouraged to make each recipe at least once and utilize the Crafting Order system, which will vary the materials needed.
|tip These materials will get you to aproximately 50 skill level. |only if default
|tip These materials will get you to aproximately 55 skill level. |only if KulTiran
|tip These materials will get you to aproximately 65 skill level. |only if Gnome
Click Here to Continue |confirm
step
talk Clinkyclick Shatterboom##185548
Train Engineering |skillmax Engineering,300 |goto Valdrakken/0 42.25,48.64
step
talk Clinkyclick Shatterboom##185548
Train Dragon Isles Engineering |skillmax Dragon Isles Engineering,100 |goto 42.25,48.64
step
talk Kognir##198580
buy Arclight Spanner##6219 |goto Valdrakken/0 41.52,48.81
buy Gyromatic Micro-Adjustor##10498 |goto 41.52,48.81
|tip You can also make or purchase a "Gnomish Army Knife" or "Utimate Gnomish Army Knife" from the auction house and skip this step.
step
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	66.99,56.32	72.07,57.48	76.01,51.77	77.00,48.25	78.52,39.32
path	76.25,38.51	77.05,29.45	67.70,30.98	64.98,38.14	62.93,41.23
path	50.62,39.10	45.45,41.52	40.65,48.92	34.18,51.79	30.72,51.38
path	28.48,64.72	28.12,69.86	30.23,75.73	33.29,80.37	36.68,80.94
path	37.23,84.57	37.03,90.38	40.06,92.50	43.83,87.39	50.72,77.14
path	55.12,78.57	56.50,71.05	60.66,63.30	64.02,60.01
click Serevite Deposit##381102
|tip These share a spawn with Draconium Deposits.
collect 320 Serevite Ore##190395 |or
_Or_
collect 320 Serevite Ore##190396 |or
_Or_
collect 320 Serevite Ore##190394 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip Any quality will work, you only need one.
|tip This total is approximate.
'|complete skill("Dragon Isles Engineering") >= 15 |or |only if default
'|complete skill("Dragon Isles Engineering") >= 20 |or |only if KulTiran
'|complete skill("Dragon Isles Engineering") >= 30 |or |only if Gnome
step
create Handful of Serevite Bolts##382375,Dragon Isles Engineering,200 total
step
create Handful of Serevite Bolts##382375,Dragon Isles Engineering,15 |only if default
create Handful of Serevite Bolts##382375,Dragon Isles Engineering,20 |only if KulTiran
create Handful of Serevite Bolts##382375,Dragon Isles Engineering,30 |only if Gnome
step
talk Clinkyclick Shatterboom##185548
Train Shock-Spring Coil |learn Shock-Spring Coil##382376 |goto Valdrakken/0 42.25,48.64
step
talk Clinkyclick Shatterboom##185548
Train Greased-Up Gears |learn Greased-Up Gears##382378 |goto Valdrakken/0 42.25,48.64
step
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	66.99,56.32	72.07,57.48	76.01,51.77	77.00,48.25	78.52,39.32
path	76.25,38.51	77.05,29.45	67.70,30.98	64.98,38.14	62.93,41.23
path	50.62,39.10	45.45,41.52	40.65,48.92	34.18,51.79	30.72,51.38
path	28.48,64.72	28.12,69.86	30.23,75.73	33.29,80.37	36.68,80.94
path	37.23,84.57	37.03,90.38	40.06,92.50	43.83,87.39	50.72,77.14
path	55.12,78.57	56.50,71.05	60.66,63.30	64.02,60.01
click Draconium Deposit##379248
|tip These share a spawn with Serevite Deposits.
collect 36 Draconium Ore##189143 |or
_Or_
collect 36 Draconium Ore##188658 |or
_Or_
collect 36 Draconium Ore##190311 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip Any quality will work, you only need one.
'|complete skill("Dragon Isles Engineering") >= 25 |or |only if default
'|complete skill("Dragon Isles Engineering") >= 30 |or |only if KulTiran
'|complete skill("Dragon Isles Engineering") >= 40 |or |only if Gnome
step
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	52.19,32.87	50.73,33.22	49.95,33.73	49.29,33.52	49.63,31.58
path	50.23,30.93	50.98,31.30	52.49,30.87	53.65,31.43	53.34,32.31
path	52.55,32.60	51.81,33.07
Kill Elemental enemies around this area
collect 64 Rousing Earth##190315 |or
'|complete skill("Dragon Isles Engineering") >= 25 |or |only if default
'|complete skill("Dragon Isles Engineering") >= 30 |or |only if KulTiran
'|complete skill("Dragon Isles Engineering") >= 40 |or |only if Gnome
step
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	37.99,69.37	37.76,71.40	36.96,72.21	35.90,72.27	36.61,73.66
path	37.17,73.87	37.94,76.03	38.65,74.48	38.52,72.73	38.76,70.86
kill Blazing Manifestation##186336+
collect 27 Rousing Fire##190320 |or
'|complete skill("Dragon Isles Engineering") >= 25 |or |only if default
'|complete skill("Dragon Isles Engineering") >= 30 |or |only if KulTiran
'|complete skill("Dragon Isles Engineering") >= 40 |or |only if Gnome
step
collect 156 Handful of Serevite Bolts##198183 |or
_Or_
collect 156 Handful of Serevite Bolts##198184 |or
_Or_
collect 156 Handful of Serevite Bolts##198185 |or
|tip You created these in a previous step.
|tip Any quality will work, you only need one.
'|complete skill("Dragon Isles Engineering") >= 25 |or |only if default
'|complete skill("Dragon Isles Engineering") >= 30 |or |only if KulTiran
'|complete skill("Dragon Isles Engineering") >= 40 |or |only if Gnome
step
create Shock-Spring Coil##382376,Dragon Isles Engineering,34 total
step
create Greased-Up Gears##382378,Dragon Isles Engineering,12 total
step
create Shock-Spring Coil##382376,Dragon Isles Engineering,25 |only if default
create Shock-Spring Coil##382376,Dragon Isles Engineering,30 |only if KulTiran
create Shock-Spring Coil##382376,Dragon Isles Engineering,40 |only if Gnome
_Or_
create Greased-Up Gears##382378,Dragon Isles Engineering,25 |only if default
create Greased-Up Gears##382378,Dragon Isles Engineering,30 |only if KulTiran
create Greased-Up Gears##382378,Dragon Isles Engineering,40 |only if Gnome
|tip You may need to create a few more of these to continue.
step
talk Clinkyclick Shatterboom##185548
Train Bottomless Stonecrust Ore Satchel |learn Bottomless Stonecrust Ore Satchel##382393 |goto Valdrakken/0 42.25,48.64
step
talk Clinkyclick Shatterboom##185548
Train Draconium Delver's Helmet |learn Draconium Delver's Helmet##382392 |goto Valdrakken/0 42.25,48.64
step
talk Clinkyclick Shatterboom##185548
Train Draconium Encased Samophlange |learn Draconium Encased Samophlange##382397 |goto Valdrakken/0 42.25,48.64
step
talk Clinkyclick Shatterboom##185548
Train Lapidary's Draconium Clamps |learn Lapidary's Draconium Clamps##382395 |goto Valdrakken/0 42.25,48.64
step
talk Clinkyclick Shatterboom##185548
Train Draconium Brainwave Amplifier |learn Draconium Brainwave Amplifier##382398 |goto Valdrakken/0 42.25,48.64
step
talk Clinkyclick Shatterboom##185548
Train Spring-Loaded Draconium Fabric Cutters |learn Spring-Loaded Draconium Fabric Cutters##382396 |goto Valdrakken/0 42.25,48.64
step
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	66.99,56.32	72.07,57.48	76.01,51.77	77.00,48.25	78.52,39.32
path	76.25,38.51	77.05,29.45	67.70,30.98	64.98,38.14	62.93,41.23
path	50.62,39.10	45.45,41.52	40.65,48.92	34.18,51.79	30.72,51.38
path	28.48,64.72	28.12,69.86	30.23,75.73	33.29,80.37	36.68,80.94
path	37.23,84.57	37.03,90.38	40.06,92.50	43.83,87.39	50.72,77.14
path	55.12,78.57	56.50,71.05	60.66,63.30	64.02,60.01
click Draconium Deposit##379248
|tip These share a spawn with Serevite Deposits.
collect 18 Draconium Ore##189143 |or
_Or_
collect 18 Draconium Ore##188658 |or
_Or_
collect 18 Draconium Ore##190311 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip Any quality will work, you only need one.
'|complete completedallq(71495,71493,71487,71491,71485,71497) |or
step
collect 13 Handful of Serevite Bolts##198183 |or
_Or_
collect 13 Handful of Serevite Bolts##198184 |or
_Or_
collect 13 Handful of Serevite Bolts##198185 |or
|tip You created these in a previous step.
|tip Any quality will work, you only need one.
'|complete completedallq(71495,71493,71487,71491,71485,71497) |or
step
collect 7 Shock-Spring Coil##198186 |or
_Or_
collect 7 Shock-Spring Coil##198187 |or
_Or_
collect 7 Shock-Spring Coil##198188 |or
|tip You created these in a previous step.
|tip Any quality will work, you only need one.
'|complete completedallq(71495,71493,71487,71491,71485,71497) |or
step
collect 2 Greased-Up Gears##198192 |or
_Or_
collect 2 Greased-Up Gears##198193 |or
_Or_
collect 2 Greased-Up Gears##198194 |or
|tip You created these in a previous step.
|tip Any quality will work, you only need one.
'|complete completedallq(71495,71493,71487,71491,71485,71497) |or
step
talk Kognir##198580
buy 2 Smudged Lens##201832 |goto Valdrakken/0 41.52,48.81 |or
'|complete completedallq(71495,71493,71487,71491,71485,71497) |or
step
create Bottomless Stonecrust Ore Satchel##382393,Dragon Isles Engineering |q 71495 |future
step
create Draconium Delver's Helmet##382392,Dragon Isles Engineering |q 71493 |future
step
create Draconium Encased Samophlange##382397,Dragon Isles Engineering |q 71487 |future
step
create Lapidary's Draconium Clamps##382395,Dragon Isles Engineering |q 71491 |future
step
create Draconium Brainwave Amplifier##382398,Dragon Isles Engineering |q 71485 |future
step
create Spring-Loaded Draconium Fabric Cutters##382396,Dragon Isles Engineering |q 71497 |future
step
talk Clinkyclick Shatterboom##185548
Train Draconium Fisherfriend |learn Draconium Fisherfriend##382394 |goto Valdrakken/0 42.25,48.64
step
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	66.99,56.32	72.07,57.48	76.01,51.77	77.00,48.25	78.52,39.32
path	76.25,38.51	77.05,29.45	67.70,30.98	64.98,38.14	62.93,41.23
path	50.62,39.10	45.45,41.52	40.65,48.92	34.18,51.79	30.72,51.38
path	28.48,64.72	28.12,69.86	30.23,75.73	33.29,80.37	36.68,80.94
path	37.23,84.57	37.03,90.38	40.06,92.50	43.83,87.39	50.72,77.14
path	55.12,78.57	56.50,71.05	60.66,63.30	64.02,60.01
click Draconium Deposit##379248
|tip These share a spawn with Serevite Deposits.
collect 18 Draconium Ore##189143 |or |q 71489 |future
_Or_
collect 18 Draconium Ore##188658 |or |q 71489 |future
_Or_
collect 18 Draconium Ore##190311 |or |q 71489 |future
|tip Farm them with Mining or purchase them from the auction house.
|tip Any quality will work, you only need one.
step
collect 13 Handful of Serevite Bolts##198183 |or |q 71489 |future
_Or_
collect 13 Handful of Serevite Bolts##198184 |or |q 71489 |future
_Or_
collect 13 Handful of Serevite Bolts##198185 |or |q 71489 |future
|tip You created these in a previous step.
|tip Any quality will work, you only need one.
step
collect 7 Shock-Spring Coil##198186 |or |q 71489 |future
_Or_
collect 7 Shock-Spring Coil##198187 |or |q 71489 |future
_Or_
collect 7 Shock-Spring Coil##198188 |or |q 71489 |future
|tip You created these in a previous step.
|tip Any quality will work, you only need one.
step
collect 2 Greased-Up Gears##198192 |or |q 71489 |future
_Or_
collect 2 Greased-Up Gears##198193 |or |q 71489 |future
_Or_
collect 2 Greased-Up Gears##198194 |or |q 71489 |future
|tip You created these in a previous step.
|tip Any quality will work, you only need one.
step
create Draconium Fisherfriend##382394,Dragon Isles Engineering |q 71489 |future
step
talk Clinkyclick Shatterboom##185548
Train Arclight Capacitor |learn Arclight Capacitor##382379 |goto Valdrakken/0 42.25,48.64
step
talk Clinkyclick Shatterboom##185548
Train Reinforced Machine Chassis |learn Reinforced Machine Chassis##382380 |goto Valdrakken/0 42.25,48.64
step
collect 2 Awakened Order##190324 |or
|tip This can be gathered from herbs with a Titan-Touched aura around them.
'|complete completedallq(71482,71483) |or
step
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	52.19,32.87	50.73,33.22	49.95,33.73	49.29,33.52	49.63,31.58
path	50.23,30.93	50.98,31.30	52.49,30.87	53.65,31.43	53.34,32.31
path	52.55,32.60	51.81,33.07
Kill Elemental enemies around this area
collect 10 Rousing Earth##190315 |n
use Rousing Earth##190315
collect Awakened Earth##190316 |or
'|complete completedallq(71482,71483) |or
step
collect 4 Khaz'gorite Ore##190312 |or
_Or_
collect 4 Khaz'gorite Ore##190313 |or
_Or_
collect 4 Khaz'gorite Ore##190314 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip Any quality will work, you only need one.
'|complete completedallq(71482,71483) |or
step
collect 4 Handful of Serevite Bolts##198183 |or
_Or_
collect 4 Handful of Serevite Bolts##198184 |or
_Or_
collect 4 Handful of Serevite Bolts##198185 |or
|tip You created these in a previous step.
|tip Any quality will work, you only need one.
'|complete completedallq(71482,71483) |or
step
collect 5 Shock-Spring Coil##198186 |or
_Or_
collect 5 Shock-Spring Coil##198187 |or
_Or_
collect 5 Shock-Spring Coil##198188 |or
|tip You created these in a previous step.
|tip Any quality will work, you only need one.
'|complete completedallq(71482,71483) |or
step
collect 3 Greased-Up Gears##198192 |or
_Or_
collect 3 Greased-Up Gears##198193 |or
_Or_
collect 3 Greased-Up Gears##198194 |or
|tip You created these in a previous step.
|tip Any quality will work, you only need one.
'|complete completedallq(71482,71483) |or
step
create Arclight Capacitor##382379,Dragon Isles Engineering |q 71482 |goto Valdrakken/0 42.29,48.81 |future
|tip Save these if you intend to make goggles later.
step
create Arclight Capacitor##382379,Dragon Isles Engineering,2 total
|tip Save these if you intend to make goggles later.
step
create Reinforced Machine Chassis##382380,Dragon Isles Engineering |q 71483 |goto Valdrakken/0 42.29,48.81 |future
|tip Save these if you intend to make goggles later.
step
create Reinforced Machine Chassis##382380,Dragon Isles Engineering,1 total
|tip Save these if you intend to make goggles later.
step
talk Clinkyclick Shatterboom##185548
Train Tinker Removal Kit |learn Tinker Removal Kit##396777 |goto Valdrakken/0 42.25,48.64
step
talk Clinkyclick Shatterboom##185548
Train Overcharged Overclocker |learn Overcharged Overclocker##382348 |goto Valdrakken/0 42.25,48.64
step
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	66.99,56.32	72.07,57.48	76.01,51.77	77.00,48.25	78.52,39.32
path	76.25,38.51	77.05,29.45	67.70,30.98	64.98,38.14	62.93,41.23
path	50.62,39.10	45.45,41.52	40.65,48.92	34.18,51.79	30.72,51.38
path	28.48,64.72	28.12,69.86	30.23,75.73	33.29,80.37	36.68,80.94
path	37.23,84.57	37.03,90.38	40.06,92.50	43.83,87.39	50.72,77.14
path	55.12,78.57	56.50,71.05	60.66,63.30	64.02,60.01
click Draconium Deposit##379248
|tip These share a spawn with Serevite Deposits.
collect 2 Draconium Ore##189143 |or
_Or_
collect 2 Draconium Ore##188658 |or
_Or_
collect 2 Draconium Ore##190311 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip Any quality will work, you only need one.
'|complete completedallq(72711,71469) |or
step
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	37.99,69.37	37.76,71.40	36.96,72.21	35.90,72.27	36.61,73.66
path	37.17,73.87	37.94,76.03	38.65,74.48	38.52,72.73	38.76,70.86
kill Blazing Manifestation##186336+
collect 25 Rousing Fire##190320 |or
|tip They can also be gathered from "Molten" and "Primal" Mining nodes.
'|complete completedallq(72711,71469) |or
step
collect 15 Handful of Serevite Bolts##198183 |or
_Or_
collect 15 Handful of Serevite Bolts##198184 |or
_Or_
collect 15 Handful of Serevite Bolts##198185 |or
|tip You created these in a previous step.
|tip Any quality will work, you only need one.
'|complete completedallq(72711,71469) |or
step
collect 17 Shock-Spring Coil##198186 |or
_Or_
collect 17 Shock-Spring Coil##198187 |or
_Or_
collect 17 Shock-Spring Coil##198188 |or
|tip You created these in a previous step.
|tip Any quality will work, you only need one.
'|complete completedallq(72711,71469) |or
step
create Tinker Removal Kit##396777,Dragon Isles Engineering |q 72711 |goto Valdrakken/0 42.29,48.81 |future
step
create Overcharged Overclocker##382348,Dragon Isles Engineering |q 71469 |goto Valdrakken/0 42.29,48.81 |future
step
create Overcharged Overclocker##382348,Dragon Isles Engineering,50 |only if default
create Overcharged Overclocker##382348,Dragon Isles Engineering,55 |only if KulTiran
create Overcharged Overclocker##382348,Dragon Isles Engineering,65 |only if Gnome
step
Reach Skill Level 100 in Dragon Isles Engineering |skill Dragon Isles Engineering,100 |goto Valdrakken/0 42.29,48.81 |or |only if default
Reach Skill Level 105 in Dragon Isles Engineering |skill Dragon Isles Engineering,105 |goto Valdrakken/0 42.29,48.81 |or |only if KulTiran
Reach Skill Level 115 in Dragon Isles Engineering |skill Dragon Isles Engineering,115 |goto Valdrakken/0 42.29,48.81 |or |only if Gnome
|tip From this point, it becomes very difficult to continue gaining points as soulbound materials are required.
|tip Your best path is the Crafting Order system in Valdrakken to craft items for other players with provided materials.
|tip This makes it much cheaper to craft one of each recipe for the first craft bonus.
|tip You can also continue crafting Overcharged Overclockers until 60, but they will turn green for the last few points.
]])
ZGV.BETAEND()
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Engineering\\Leveling Guides\\Engineering Knowledge Treasures",{
author="support@zygorguides.com",
description="\nThis guide will walk you through collecting one-time treasures that grant Knowledge Points.",
startlevel=60.0,
condition_end=function() return completedallq(70270,70275) end,
condition_suggested=function() return skill('Dragon Isles Engineering') >= 25 and not completedallq(70270,70275) end,
},[[
step
talk Clinkyclick Shatterboom##185548
Train Engineering |skillmax Engineering,300 |goto Valdrakken/0 42.25,48.64
step
talk Clinkyclick Shatterboom##185548
Train Dragon Isles Engineering |skillmax Dragon Isles Engineering,100 |goto 42.25,48.64
step
Reach Skill Level 25 in Dragon Isles Engineering |skill Dragon Isles Engineering,25 |goto 36.96,47.08 |or
|tip You must be at least skill level 25 to interact with profession treasures.
step
click Boom Fumes##380650
|tip Inside the building.
collect Boom Fumes##198814 |goto The Waking Shores/0 57.83,44.58 |q 70270 |future
step
click Durable Crystal##380649
|tip Inside the building.
collect Durable Crystal##198817 |goto The Waking Shores/0 58.13,44.54 |q 70270 |future
step
click Aerospace Grade Draconium##380651
|tip Inside the building.
collect Aerospace Grade Draconium##198816 |goto The Waking Shores/0 57.99,44.36 |q 70270 |future
step
click Ash##380603
|tip It looks like 3 small stones on the floor inside the building.
collect Ash##198815 |goto The Waking Shores/0 55.91,45.29 |q 70270 |future
step
click Boomthyr Rocket##380571
|tip Inside the building.
collect Boomthyr Rocket##201014 |goto The Waking Shores/0 56.02,44.81 |q 70270 |future
step
use the Boomthyr Rocket##201014
Study the Boomthyr Rocket |complete itemcount(201014) == 0
step
click Exposed Wire |goto The Waking Shores/0 49.08,78.01
click Exposed Wire |goto The Waking Shores/0 48.87,77.52
click Exposed Wire |goto The Waking Shores/0 49.24,77.33
click Disabled Tesla Coil##380560
collect Intact Coil Capacitor##198789 |goto The Waking Shores/0 49.09,77.53 |q 70275 |future
step
use the Intact Coil Capacitor##198789
Study the Intact Coil Capacitor |complete itemcount(198789) == 0
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Ribbed Mollusk Meat",{
author="support@zygorguides.com",
description="\nThis guide will walk you through gathering Ribbed Mollusk Meat.",
startlevel=60.0,
},[[
step
cast Fishing##131474
|tip Click the Fishing Bobber when it bounces in the water.
|tip Keep repeating this process.
|tip Don't fish from pools.
collect Dull Spined Clam##198395 |n
use Dull Spined Clam##198395
collect Ribbed Mollusk Meat##197742 |n |goto The Waking Shores/0 63.13,77.21
confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Aileron Seamoth",{
author="support@zygorguides.com",
description="\nThis guide will walk you through gathering Aileron Seamoth.",
startlevel=60.0,
},[[
step
map The Waking Shores
path follow strictbounce; loop on; ants curved; dist 30
path	66.39,74.10	64.76,74.42	63.35,77.00	63.41,80.03	62.94,82.80
Follow the path
cast Fishing##131474
|tip Click the Fishing Bobber when it bounces in the water.
|tip Keep repeating this process.
|tip Schools share a spawn with Thousandbite Piranhas.
|tip You can also catch them in the open water.
collect Aileron Seamoth##194967 |n
confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Cerulean Spinefish",{
author="support@zygorguides.com",
description="\nThis guide will walk you through gathering Cerulean Spinefish.",
startlevel=60.0,
},[[
step
cast Fishing##131474
|tip Click the Fishing Bobber when it bounces in the water.
|tip Keep repeating this process.
|tip Don't fish from pools.
collect Cerulean Spinefish##194968 |n |goto The Waking Shores/0 63.13,77.21
|tip You will also catch Scalebelly Mackerel.
confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Islefin Dorado",{
author="support@zygorguides.com",
description="\nThis guide will walk you through gathering Islefin Dorado.",
startlevel=60.0,
},[[
step
collect Islefin Dorado Lure##198403 |n
|tip These are made by Dragon Isles Skinning: Harvesting - Lure Crafters.
|tip They require 2 "Exceptional Morsel", which are gathered by Lure Crafters as well.
|tip It also requires 1 "Flawless Proto Dragon Scale".
Click Here to Continue |confirm
step
use the Islefin Dorado Lure##198403
cast Fishing##131474
|tip Click the Fishing Bobber when it bounces in the water.
|tip Keep repeating this process.
collect Islefin Dorado##194970 |n |goto The Azure Span/0 12.40,50.11
confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Lava Beetle",{
author="support@zygorguides.com",
description="\nThis guide will walk you through gathering Lava Beetle.",
startlevel=60.0,
},[[
step
cast Fishing##131474
|tip Click the Fishing Bobber when it bounces in the lava.
|tip Keep repeating this process.
collect Lava Beetle##197755 |n |goto The Waking Shores/0 37.34,67.75
confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Magma Thresher",{
author="support@zygorguides.com",
description="\nThis guide will walk you through gathering Magma Thresher.",
startlevel=60.0,
},[[
step
Reach Renown Level 15 with the Iskaara Tuskarr |complete factionrenown(2511) >= 15
step
click Sea-Polished Basalt
|tip They are on the ground around this area.
collect 3 Sea-Polished Basalt##200079 |q 67140 |future |goto The Waking Shores/0 81.26,31.32
More can be around here [81.16,27.95]
step
talk Tavio##195935
Craft the _"Polished Basalt Bracelet"_ |q 67140 |future |goto The Azure Span/0 12.82,49.18
step
map The Waking Shores
path follow strictbounce; loop off; ants curved; dist 25
path	55,24	62,25	67,30	68,26
Follow the path
cast Fishing##131474
|tip Click the Fishing Bobber when it bounces in the water.
|tip Keep repeating this process.
Another School can spawn here [33,63]
confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Thousandbite Piranha",{
author="support@zygorguides.com",
description="\nThis guide will walk you through gathering Thousandbite Piranha.",
startlevel=60.0,
},[[
step
map The Waking Shores
path follow strictbounce; loop off; ants curved; dist 25
path	66.39,74.10	64.76,74.42	63.35,77.00	63.41,80.03	62.94,82.80
Follow the path
cast Fishing##131474
|tip Click the Fishing Bobber when it bounces in the water.
|tip Keep repeating this process.
|tip Schools share a spawn with Cerulean Spinefish.
collect Thousandbite Piranha##194966 |n
|tip These can be fished anywhere and spawn with other Schools.
confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Temporal Dragonhead",{
author="support@zygorguides.com",
description="\nThis guide will walk you through gathering Temporal Dragonhead.",
startlevel=60.0,
},[[
step
map The Waking Shores
path follow strictbounce; loop off; ants curved; dist 25
path	52.81,35.05	50.11,38.80	49.39,42.93	50.88,47.58	52.53,51.10
path	54.40,55.92	55.83,60.49	54.18,62.21	54.46,66.63
Follow the path
cast Fishing##131474
|tip Click the Fishing Bobber when it bounces in the water.
|tip Keep repeating this process.
|tip Schools share a spawn with Thousandbite Piranha.
collect Temporal Dragonhead##194969 |n
confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Scalebelly Mackerel",{
author="support@zygorguides.com",
description="\nThis guide will walk you through gathering Scalebelly Mackerel.",
startlevel=60.0,
},[[
step
cast Fishing##131474
|tip Click the Fishing Bobber when it bounces in the water.
|tip Keep repeating this process.
|tip Don't fish from pools.
collect Scalebelly Mackerel##194730 |n |goto The Waking Shores/0 63.13,77.21
|tip You will also catch Cerulean Spinefish.
confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Prismatic Leaper",{
author="support@zygorguides.com",
description="\nThis guide will walk you through gathering Prismatic Leaper.",
startlevel=60.0,
},[[
step
click Flying Fish Bones
collect Flying Fish Bones##200075 |q 67139 |future |goto The Azure Span/0 12.52,49.95
step
talk Tavio##195935
Craft the _"Flying Fish Bone Charm"_ |q 67139 |future |goto The Azure Span/0 12.82,49.18
step
label "Loop"
map Ohn'ahran Plains/0
path follow smart; loop off; ants curved; dist 25
path	58.4,31.4	64.6,38.7	86.2,51.9	56.7,80.5
Follow the path
cast Fishing##131474
|tip Click the Fishing Bobber when it bounces in the water.
|tip Keep repeating this process.
collect Prismatic Leaper##200061 |n
Check these spots for _"Prismatic Leaper Schools"_ |goto Ohn'ahran Plains/0 56.7,80.5 < 5 |noway |c
step
cast Fishing##131474
|tip Click the Fishing Bobber when it bounces in the water.
|tip Keep repeating this process.
|tip Fish from the schools.
collect Prismatic Leaper##200061 |n |goto The Azure Span/0 30.5,24.9
Check this spot for a _"Prismatic Leaper School"_ |goto The Azure Span/0 30.55,25.10 < 5 |noway |c
step
cast Fishing##131474
|tip Click the Fishing Bobber when it bounces in the water.
|tip Keep repeating this process.
|tip Fish from the schools.
collect Prismatic Leaper##200061 |n |goto Thaldraszus/0 64.3,59.8
Check this spot for a _"Prismatic Leaper School"_ |noway |c '|goto Thaldraszus/0 64.3,59.8 < 5 |next "Loop"
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Rimefin Tuna",{
author="support@zygorguides.com",
description="\nThis guide will walk you through gathering Rimefin Tuna.",
startlevel=60.0,
},[[
step
Reach Renown Level 10 with the Iskaara Tuskarr |complete factionrenown(2511) >= 10
step
Reach Dragon Flight Fishing Rank 50 |skill Dragon Flight Fishing,50
step
click Pickaxe Blade
|tip On the ground next to several barrels.
collect Pickaxe Blade##200078 |q 67141 |future |goto The Azure Span/0 18.88,24.29
step
talk Tavio##195935
Craft the _"Iskaaran Ice Axe"_ |q 67141 |future |goto The Azure Span/0 12.82,49.18
step
cast Fishing##131474
|tip Use the Iskaaran Ice Axe to reveal Rimefin Tuna Pools around this area.
|tip Click the Fishing Bobber when it bounces in the water.
|tip Keep repeating this process.
collect Rimefin Tuna##199345 |n |goto The Azure Span/0 72.81,45.78
confirm
]])
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Leveling Guides\\Dragon Isles Herbalism 1-100",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Dragon Isles Herbalism profession from 1-100.",
startlevel=60.0,
condition_end=function() return skill('Dragon Isles Herbalism') >= 100 end,
condition_suggested=function() return skill('Dragon Isles Herbalism') > 0 and skill('Dragon Isles Herbalism') < 100 and level >= 60 end,
},[[
step
talk Agrikus##185549
|tip He walks around this area.
Train Herbalism |skillmax Herbalism,300 |goto Valdrakken/0 38.08,68.68
step
talk Agrikus##185549
|tip He walks around this area.
Train Dragon Isles Herbalism |skillmax Dragon Isles Herbalism,100 |goto 38.08,68.68
step
Reach Skill Level 100 in Dragon Isles Herbalism |skill Dragon Isles Herbalism,100 |only if default
Reach Skill Level 105 in Dragon Isles Herbalism |skill Dragon Isles Herbalism,105 |only if KulTiran
Reach Skill Level 115 in Dragon Isles Herbalism |skill Dragon Isles Herbalism,115 |only if Tauren
|tip Load any Herbalism farming guide you choose up to skill level 60 and farm for points. |only if default
|tip Load any Herbalism farming guide you choose up to skill level 65 and farm for points. |only if KulTiran
|tip Load any Herbalism farming guide you choose up to skill level 75 and farm for points. |only if Tauren
|tip At skill level 60, you will need to farm Decayed, Frigid, Lush, Windswept, or Titan-Touched nodes for points. |only if default
|tip At skill level 65, you will need to farm Decayed, Frigid, Lush, Windswept, or Titan-Touched nodes for points. |only if KulTiran
|tip At skill level 75, you will need to farm Decayed, Frigid, Lush, Windswept, or Titan-Touched nodes for points. |only if Tauren
|tip These nodes are rare spawn and share locations with normal nodes.
|tip At skill level 25, open your profession window and decide which path you want to take in the Specializations tab. |only if default
|tip At skill level 30, open your profession window and decide which path you want to take in the Specializations tab. |only if KulTiran
|tip At skill level 40, open your profession window and decide which path you want to take in the Specializations tab. |only if Tauren
|tip Choose your points wisely, as they are currently permanent, even if you abandon and re-learn Herbalism.
|tip You can eventually unlock all specialization points.
]])
ZGV.BETAEND()
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Hochenblume",{
author="support@zygorguides.com",
description="\nThis guide will walk you through gathering Hochenblume.",
startlevel=60.0,
},[[
step
map The Azure Span
path	15.75,46.71	17.58,41.19	16.46,39.23	18.69,29.45	17.11,26.36
path	21.19,25.67	25.00,30.93	31.47,36.84	37.16,29.24	42.99,36.12
path	46.49,32.25	49.87,29.25	52.99,26.54	55.46,24.84	58.80,24.19
path	61.63,22.73	63.67,22.82	65.40,19.81	68.93,23.31	72.46,26.81
path	66.18,31.47	62.44,37.47	63.50,40.89	58.10,49.22	58.80,55.63
path	49.27,61.93	45.62,56.80	45.00,53.05	35.88,49.80	34.69,47.15
path	29.79,46.25	24.62,47.46	17.61,48.43
Follow the path
click Hochenblume##381209
collect Hochenblume##191460 |n
collect Hochenblume##191461 |n
collect Hochenblume##191462 |n
confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Bubble Poppy",{
author="support@zygorguides.com",
description="\nThis guide will walk you through gathering Bubble Poppy.",
startlevel=60.0,
},[[
step
map The Waking Shores
path follow smart; loop off; ants curved; dist 20
path	36.92,89.27	37.93,84.73	38.97,77.03	42.45,76.05	47.14,76.93
path	50.08,68.71	53.04,61.02	58.64,62.85	64.08,69.87	69.45,72.53
path	74.07,67.94	76.06,62.90	78.51,57.95	78.12,52.67	75.69,47.78
path	70.28,42.66	67.21,47.71	68.79,55.52	66.42,60.25	61.47,55.31
path	60.03,47.41	59.98,39.24	55.17,35.69	50.97,36.67	49.38,41.87
path	51.32,48.73	54.07,55.64
Follow the path
click Bubble Poppy##375241
|tip These share a spawn with Hochenblume.
collect Bubble Poppy##191467 |n
collect Bubble Poppy##191468 |n
collect Bubble Poppy##191469 |n
confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Saxifrage",{
author="support@zygorguides.com",
description="\nThis guide will walk you through gathering Saxifrage.",
startlevel=60.0,
},[[
step
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	36.92,89.27	37.93,84.73	38.97,77.03	42.45,76.05	47.14,76.93
path	50.08,68.71	53.04,61.02	58.64,62.85	64.08,69.87	69.45,72.53
path	74.07,67.94	76.06,62.90	78.51,57.95	78.12,52.67	75.69,47.78
path	70.28,42.66	67.21,47.71	68.79,55.52	66.42,60.25	61.47,55.31
path	60.03,47.41	59.98,39.24	55.17,35.69	54.76,26.16	48.60,26.12
path	48.31,28.56	47.41,33.27	45.80,37.32	41.99,46.05	42.12,53.30
path    48.40,53.13    46.03,62.63    41.39,67.41    38.32,62.16    27.06,71.21
click Saxifrage##381207
|tip Tends to grow on top of rocks.
collect Saxifrage##191464 |n
collect Saxifrage##191465 |n
collect Saxifrage##191466 |n
confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Writhebark",{
author="support@zygorguides.com",
description="\nThis guide will walk you through gathering Writhebark.",
startlevel=60.0,
},[[
step
map The Azure Span/0
path follow smart; loop on; ants curved; dist 20
path	23.67,48.05	22.43,48.08	19.37,46.87	17.35,42.24	19.66,38.24
path	19.97,33.96	21.71,28.38	25.63,32.27	25.90,41.19	28.80,36.28
path	29.86,34.48	33.69,35.89	34.56,33.74	37.99,33.57	39.06,38.48
path	40.53,44.13	35.55,42.66	32.68,42.15	30.07,45.87	27.81,46.14
Follow the path
click Writhebark##381154
|tip These share a spawn with other herbs.
collect Writhebark##191470 |n
collect Writhebark##191471 |n
collect Writhebark##191472 |n
confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Inscription\\Leveling Guides\\Inscription Knowledge Treasures",{
author="support@zygorguides.com",
description="\nThis guide will walk you through collecting one-time treasures that grant Knowledge Points.",
startlevel=60.0,
condition_end=function() return completedallq(70281,70264,70287,70248,70306,70307,70297,70293) end,
condition_suggested=function() return skill('Dragon Isles Inscription') >= 25 and not completedallq(70281,70264,70287,70248,70306,70307,70297,70293) end,
},[[
step
talk Talendara##185540
Train Inscription |skillmax Inscription,300 |goto Valdrakken/0 38.84,73.41
step
talk Talendara##185540
Train Dragon Isles Inscription |skillmax Dragon Isles Inscription,100 |goto 38.84,73.41
step
Reach Skill Level 25 in Dragon Isles Inscription |skill Dragon Isles Inscription,25 |goto 36.96,47.08 |or
|tip You must be at least skill level 25 to interact with profession treasures.
step
click How to Train Your Whelpling
collect How to Train Your Whelpling##198669 |goto Valdrakken/0 13.42,63.26 |q 70281 |future
step
use the How to Train Your Whelpling##198669
Study the How to Train Your Whelpling |complete itemcount(198669) == 0
step
click Forgetful Apprentice's Tome##380550
|tip At the top of the platform.
collect Forgetful Apprentice's Tome##198659 |goto Thaldraszus/0 56.26,41.18 |q 70264 |future
step
use the Forgetful Apprentice's Tome##198659
Study the Forgetful Apprentice's Tome |complete itemcount(198659) == 0
step
talk Siennagosa##194856
Tell her _"Yes."_
|tip You must click the cards in the order that follows.
Click Here to Confirm |confirm |goto Thaldraszus/0 56.08,41.02 |q 70287 |future
step
click Ace of Storms
Click Here to Confirm |confirm |goto Thaldraszus/0 56.11,41.01 |q 70287 |future
step
click Two of Storms
Click Here to Confirm |confirm |goto Thaldraszus/0 56.15,40.98 |q 70287 |future
step
click Three of Storms
Click Here to Confirm |confirm |goto Thaldraszus/0 56.03,40.97 |q 70287 |future
step
click Four of Storms
Click Here to Confirm |confirm |goto Thaldraszus/0 56.02,40.99 |q 70287 |future
step
click Five of Storms
Click Here to Confirm |confirm |goto Thaldraszus/0 56.07,41.00 |q 70287 |future
step
click Six of Storms
Click Here to Confirm |confirm |goto Thaldraszus/0 56.10,41.02 |q 70287 |future
step
click Seven of Storms
Click Here to Confirm |confirm |goto Thaldraszus/0 56.09,40.93 |q 70287 |future
step
click Eight of Storms
Click Here to Confirm |confirm |goto Thaldraszus/0 56.10,41.06 |q 70287 |future
step
talk Siennagosa##194856
Tell her _"Yes, here they are."_
collect Counterfeit Darkmoon Deck##201015 |goto Thaldraszus/0 56.08,41.02 |q 70287 |future
step
use the Counterfeit Darkmoon Deck##201015
Study the Counterfeit Darkmoon Deck |complete itemcount(201015) == 0
step
click Curious Glyph
|tip Inside the building.
Gain the "Curious Connections" Buff |havebuff spell:384818 |goto Thaldraszus/0 47.09,40.07 |q 70248 |future
step
kill Confusion Manifest##194880
|tip Inside the building.
collect Decryption Key##198672 |goto Thaldraszus/0 49.83,40.31 |q 70248 |future
step
click Curious Glyph
|tip Inside the building.
|tip You may need to click this again to loot the treasure.
collect Forgetful Apprentice's Tome##198659 |goto Thaldraszus/0 47.09,40.07 |q 70248 |future
step
use the Forgetful Apprentice's Tome##198659
Study the Forgetful Apprentice's Tome |complete itemcount(198659) == 0
step
click Pulsing Earth Rune##380610
|tip Just under the table.
collect Pulsing Earth Rune##198704 |goto The Waking Shores/0 67.86,57.95 |q 70306 |future
step
use the Pulsing Earth Rune##198704
Study the Pulsing Earth Rune |complete itemcount(198704) == 0
step
click Sign Language Reference Sheet##380612
collect Sign Language Reference Sheet##198703 |goto Ohn'ahran Plains/0 85.75,25.21 |q 70307 |future
step
use the Sign Language Reference Sheet##198703
Study the Sign Language Reference Sheet |complete itemcount(198703) == 0
step
click Dusty Darkmoon Card##380601
|tip Up the stairs inside the building.
|tip There are elites inside, so you may need help.
collect Dusty Darkmoon Card##198693 |goto The Azure Span/0 46.19,24.00 |q 70297 |future
step
use the Dusty Darkmoon Card##198693
Study the Dusty Darkmoon Card |complete itemcount(198693) == 0
step
click Frosted Parchment##380595
|tip There are elites around, so you may need help.
collect Frosted Parchment##198686 |goto The Azure Span/0 43.65,30.82 |q 70293 |future
step
use the Frosted Parchment##198686
Study the Frosted Parchment |complete itemcount(198686) == 0
]])
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Jewelcrafting\\Leveling Guides\\Dragon Isles Jewelcrafting 1-100",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Dragon Isles Jewelcrafting profession from 1-100.",
startlevel=60.0,
condition_end=function() return skill('Dragon Isles Jewelcrafting') >= 100 end,
condition_suggested=function() return skill('Dragon Isles Jewelcrafting') > 0 and skill('Dragon Isles Jewelcrafting') < 100 and level >= 60 end,
},[[
step
Approximate bill of materials:
|tip Serevite Ore: 244
|tip Rousing Earth: 9
|tip These totals are approximate.
|tip You are encouraged to make each recipe at least once and utilize the Crafting Order system, which will vary the materials needed.
|tip These materials will get you to aproximately 30 skill level. |only if default
|tip These materials will get you to aproximately 35 skill level. |only if KulTiran
|tip These materials will get you to aproximately 40 skill level. |only if Draenei
|tip Beyond this point your best method of gaining points are vendor recipes or Crafting Orders.
Click Here to Continue |confirm
step
talk Tuluradormi##190094
|tip Inside the building.
Train Jewelcrafting |skillmax Jewelcrafting,300 |goto Valdrakken/0 40.81,61.12
step
talk Tuluradormi##190094
|tip Inside the building.
Train Dragon Isles Jewelcrafting |skillmax Dragon Isles Jewelcrafting,100 |goto 40.81,61.12
step
talk Shakey Flatlap##198586
buy 1 Jeweler's Toolset##20815 |goto Valdrakken/0 39.06,61.82 |or
'|complete skill("Dragon Isles Jewelcrafting") >= 100 |or |only if default
'|complete skill("Dragon Isles Jewelcrafting") >= 105 |or |only if KulTiran
'|complete skill("Dragon Isles Jewelcrafting") >= 110 |or |only if Draenei
step
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	66.99,56.32	72.07,57.48	76.01,51.77	77.00,48.25	78.52,39.32
path	76.25,38.51	77.05,29.45	67.70,30.98	64.98,38.14	62.93,41.23
path	50.62,39.10	45.45,41.52	40.65,48.92	34.18,51.79	30.72,51.38
path	28.48,64.72	28.12,69.86	30.23,75.73	33.29,80.37	36.68,80.94
path	37.23,84.57	37.03,90.38	40.06,92.50	43.83,87.39	50.72,77.14
path	55.12,78.57	56.50,71.05	60.66,63.30	64.02,60.01
click Serevite Deposit##381102
|tip These share a spawn with Draconium Deposits.
collect 240 Serevite Ore##190395 |or
_Or_
collect 240 Serevite Ore##190396 |or
_Or_
collect 240 Serevite Ore##190394 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip Any quality will work, you only need one.
'|complete skill("Dragon Isles Jewelcrafting") >= 15 |or |only if default
'|complete skill("Dragon Isles Jewelcrafting") >= 20 |or |only if KulTiran
'|complete skill("Dragon Isles Jewelcrafting") >= 25 |or |only if Draenei
step
create Dragon Isles Prospecting##374627,Dragon Isles Jewelcrafting,48 total |n
|tip Prospect all 240 Serevite Ore.
Click Here to Continue |confirm |or
'|complete skill("Dragon Isles Jewelcrafting") >= 50 |or |only if default
'|complete skill("Dragon Isles Jewelcrafting") >= 55 |or |only if KulTiran
'|complete skill("Dragon Isles Jewelcrafting") >= 60 |or |only if Draenei
step
create Dragon Isles Crushing##395696,Dragon Isles Jewelcrafting,8 total |n
|tip Crush the green gems you got from prospecting.
|tip Reserve the following gems if you have them:
|tip 3 Queen's Ruby, 2 Sundered Onyx, 3 Mystic Sapphire, 10 Eternity Amber.
collect 8 Silken Gemdust##193368 |or
_Or_
collect 8 Silken Gemdust##193369 |or
_Or_
collect 8 Silken Gemdust##193370 |or
|tip Any quality will work, you only need one.
'|complete skill("Dragon Isles Jewelcrafting") >= 30 |or |only if default
'|complete skill("Dragon Isles Jewelcrafting") >= 35 |or |only if KulTiran
'|complete skill("Dragon Isles Jewelcrafting") >= 40 |or |only if Draenei
step
talk Tuluradormi##190094
|tip Inside the building.
Train Frameless Lens |learn Frameless Lens##374478 |goto Valdrakken/0 40.81,61.12
step
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	52.19,32.87	50.73,33.22	49.95,33.73	49.29,33.52	49.63,31.58
path	50.23,30.93	50.98,31.30	52.49,30.87	53.65,31.43	53.34,32.31
path	52.55,32.60	51.81,33.07
Kill Elemental enemies around this area
collect 2 Rousing Earth##190315 |or
'|complete skill("Dragon Isles Jewelcrafting") >= 20 |or |only if default
'|complete skill("Dragon Isles Jewelcrafting") >= 25 |or |only if KulTiran
'|complete skill("Dragon Isles Jewelcrafting") >= 30 |or |only if Draenei
step
collect 4 Silken Gemdust##193368 |or
_Or_
collect 4 Silken Gemdust##193369 |or
_Or_
collect 4 Silken Gemdust##193370 |or
|tip You created these in a previous step.
|tip Any quality will work, you only need one.
'|complete skill("Dragon Isles Jewelcrafting") >= 20 |or |only if default
'|complete skill("Dragon Isles Jewelcrafting") >= 25 |or |only if KulTiran
'|complete skill("Dragon Isles Jewelcrafting") >= 30 |or |only if Draenei
step
talk Shakey Flatlap##198586
buy 6 Fractured Glass##192872 |goto Valdrakken/0 39.06,61.82 |or
'|complete skill("Dragon Isles Jewelcrafting") >= 20 |or |only if default
'|complete skill("Dragon Isles Jewelcrafting") >= 25 |or |only if KulTiran
'|complete skill("Dragon Isles Jewelcrafting") >= 30 |or |only if Draenei
step
create Frameless Lens##374478,Dragon Isles Jewelcrafting,2 total
step
create Frameless Lens##374478,Dragon Isles Jewelcrafting,20 |only if default
create Frameless Lens##374478,Dragon Isles Jewelcrafting,25 |only if KulTiran
create Frameless Lens##374478,Dragon Isles Jewelcrafting,30 |only if Draenei
step
talk Tuluradormi##190094
|tip Inside the building.
Train Bold-Print Bifocals |learn Bold-Print Bifocals##374530 |goto Valdrakken/0 40.81,61.12
step
talk Tuluradormi##190094
|tip Inside the building.
Train Sundered Onyx Loupe |learn Sundered Onyx Loupe##374532 |goto Valdrakken/0 40.81,61.12
step
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	66.99,56.32	72.07,57.48	76.01,51.77	77.00,48.25	78.52,39.32
path	76.25,38.51	77.05,29.45	67.70,30.98	64.98,38.14	62.93,41.23
path	50.62,39.10	45.45,41.52	40.65,48.92	34.18,51.79	30.72,51.38
path	28.48,64.72	28.12,69.86	30.23,75.73	33.29,80.37	36.68,80.94
path	37.23,84.57	37.03,90.38	40.06,92.50	43.83,87.39	50.72,77.14
path	55.12,78.57	56.50,71.05	60.66,63.30	64.02,60.01
click Serevite Deposit##381102
|tip These share a spawn with Draconium Deposits.
collect 4 Serevite Ore##190395 |or
_Or_
collect 4 Serevite Ore##190396 |or
_Or_
collect 4 Serevite Ore##190394 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip Any quality will work, you only need one.
'|complete completedallq(71661,71665) |or
step
collect 1 Sundered Onyx##192846 |or
_Or_
collect 1 Sundered Onyx##192847 |or
_Or_
collect 1 Sundered Onyx##192848 |or
|tip Prospect them from ore with Jewelcrafting or purchase them from the auction house.
|tip Any quality will work, you only need one.
'|complete completedallq(71661,71665) |or
step
collect 4 Frameless Lens##192876 |or
_Or_
collect 4 Frameless Lens##192877 |or
_Or_
collect 4 Frameless Lens##192878 |or
|tip You created these in a previous step.
|tip Any quality will work, you only need one.
'|complete completedallq(71661,71665) |or
step
create Bold-Print Bifocals##374530,Dragon Isles Jewelcrafting |q 71661 |future
step
create Sundered Onyx Loupe##374532,Dragon Isles Jewelcrafting |q 71665 |future
|tip Equip this in your profession window after crafting it.
step
talk Tuluradormi##190094
|tip Inside the building.
Train Timewatcher's Patience |learn Timewatcher's Patience##374550 |goto Valdrakken/0 40.81,61.12
step
talk Tuluradormi##190094
|tip Inside the building.
Train Revitalizing Red Carving |learn Revitalizing Red Carving##374506 |goto Valdrakken/0 40.81,61.12
step
talk Tuluradormi##190094
|tip Inside the building.
Train Glossy Stone |learn Glossy Stone##374480 |goto Valdrakken/0 40.81,61.12
step
talk Tuluradormi##190094
|tip Inside the building.
Train Shimmering Clasp |learn Shimmering Clasp##374475 |goto Valdrakken/0 40.81,61.12
step
collect 4 Eternity Amber##192849 |or |q 71653 |future
_Or_
collect 4 Eternity Amber##192850 |or |q 71653 |future
_Or_
collect 4 Eternity Amber##192851 |or |q 71653 |future
|tip Prospect them from ore with Jewelcrafting or purchase them from the auction house.
|tip Any quality will work, you only need one.
step
collect 1 Silken Gemdust##193368 |or |q 71653 |future
_Or_
collect 1 Silken Gemdust##193369 |or |q 71653 |future
_Or_
collect 1 Silken Gemdust##193370 |or |q 71653 |future
|tip You created these in a previous step.
|tip Any quality will work, you only need one.
step
talk Shakey Flatlap##198586
buy 3 Fractured Glass##192872 |goto Valdrakken/0 39.06,61.82 |q 71653 |future
step
create Timewatcher's Patience##374550,Dragon Isles Jewelcrafting |q 71653 |goto Valdrakken/0 39.58,63.92 |future
|tip You need to be standing at a Jeweler's Bench to craft this.
step
collect 12 Crumbled Stone##192880 |q 71612 |future
|tip Prospect them from ore with Jewelcrafting or purchase them from the auction house.
step
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	52.19,32.87	50.73,33.22	49.95,33.73	49.29,33.52	49.63,31.58
path	50.23,30.93	50.98,31.30	52.49,30.87	53.65,31.43	53.34,32.31
path	52.55,32.60	51.81,33.07
Kill Elemental enemies around this area
collect 6 Rousing Earth##190315 |q 71612 |future
step
create Glossy Stone##374480,Dragon Isles Jewelcrafting,6 total |q 71612 |future
|tip Save these, you will need them later.
step
collect 3 Mystic Sapphire##192840 |or |q 71612 |future
_Or_
collect 3 Mystic Sapphire##192841 |or |q 71612 |future
_Or_
collect 3 Mystic Sapphire##192842 |or |q 71612 |future
|tip Prospect them from ore with Jewelcrafting or purchase them from the auction house.
|tip Any quality will work, you only need one.
step
talk Shakey Flatlap##198586
buy 3 Misshapen Filigree##192833 |goto Valdrakken/0 39.06,61.82 |q 71612 |future
step
create Shimmering Clasp##374475,Dragon Isles Jewelcrafting,3 total |q 71612 |future
|tip Save these, you will need them later.
step
collect 3 Queen's Ruby##192837 |or |q 71612 |future
_Or_
collect 3 Queen's Ruby##192838 |or |q 71612 |future
_Or_
collect 3 Queen's Ruby##192839 |or |q 71612 |future
|tip Prospect them from ore with Jewelcrafting or purchase them from the auction house.
|tip Any quality will work, you only need one.
step
collect 3 Silken Gemdust##193368 |or |q 71612 |future
_Or_
collect 3 Silken Gemdust##193369 |or |q 71612 |future
_Or_
collect 3 Silken Gemdust##193370 |or |q 71612 |future
|tip You created these in a previous step.
|tip Any quality will work, you only need one.
step
collect 6 Glossy Stone##192883 |or |q 71612 |future
_Or_
collect 6 Glossy Stone##192884 |or |q 71612 |future
_Or_
collect 6 Glossy Stone##192885 |or |q 71612 |future
|tip You created these in a previous step.
|tip Any quality will work, you only need one.
step
create Revitalizing Red Carving##374506,Dragon Isles Jewelcrafting |q 71612 |goto Valdrakken/0 39.58,63.92 |future
|tip You need to be standing at a Jeweler's Bench to craft this.
step
create Revitalizing Red Carving##374506,Dragon Isles Jewelcrafting,30 |goto Valdrakken/0 39.58,63.92 |only if default
create Revitalizing Red Carving##374506,Dragon Isles Jewelcrafting,35 |goto Valdrakken/0 39.58,63.92 |only if KulTiran
create Revitalizing Red Carving##374506,Dragon Isles Jewelcrafting,40 |goto Valdrakken/0 39.58,63.92 |only if Draenei
|tip You need to be standing at a Jeweler's Bench to craft this.
step
Reach Skill Level 75 in Dragon Isles Jewelcrafting |skill Dragon Isles Jewelcrafting,75 |only if default
Reach Skill Level 80 in Dragon Isles Jewelcrafting |skill Dragon Isles Jewelcrafting,80 |only if KulTiran
Reach Skill Level 85 in Dragon Isles Jewelcrafting |skill Dragon Isles Jewelcrafting,85 |only if Draenei
|tip From this point, it becomes very difficult to continue gaining points from trainer recipes.
|tip The 4 trainer recipes won't sell as well as gems cut from specializations.
|tip You can unlock gems with the Faceting specialization in Jewelcrafting.
|tip Cataloger Jakes at Dragonscale Basecamp sells designs at renown level 9 with the Dragonscale Expedition.
|tip Rokktutuk in Iskaara sells designs at renown 10 with the Iskaara Tuskarr.
step
Reach Skill Level 100 in Dragon Isles Jewelcrafting |skill Dragon Isles Jewelcrafting,100 |only if default
Reach Skill Level 105 in Dragon Isles Jewelcrafting |skill Dragon Isles Jewelcrafting,105 |only if KulTiran
Reach Skill Level 110 in Dragon Isles Jewelcrafting |skill Dragon Isles Jewelcrafting,110 |only if Draenei
|tip From this point, rare gems stop giving points.
|tip Your best path is the Crafting Order system in Valdrakken to craft items for other players with provided materials.
|tip The only recipe that isn't BoP is Tiered Medallion Setting from the Setting specialization.
|tip Cataloger Jakes at Dragonscale Basecamp sells designs at renown level 15 with the Dragonscale Expedition.
|tip Rokktutuk in Iskaara sells designs at renown 18 with the Iskaara Tuskarr.
]])
ZGV.BETAEND()
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Jewelcrafting\\Leveling Guides\\Jewelcrafting Knowledge Treasures",{
author="support@zygorguides.com",
description="\nThis guide will walk you through collecting one-time treasures that grant Knowledge Points.",
startlevel=60.0,
condition_end=function() return completedallq(70292,70273,70263,70282,70277,70271,70285,70261) end,
condition_suggested=function() return skill('Dragon Isles Jewelcrafting') >= 25 and not completedallq(70292,70273,70263,70282,70277,70271,70285,70261) end,
},[[
step
talk Tuluradormi##190094
|tip Inside the building.
Train Jewelcrafting |skillmax Jewelcrafting,300 |goto Valdrakken/0 40.81,61.12
step
talk Tuluradormi##190094
|tip Inside the building.
Train Dragon Isles Jewelcrafting |skillmax Dragon Isles Jewelcrafting,100 |goto 40.81,61.12
step
Reach Skill Level 25 in Dragon Isles Jewelcrafting |skill Dragon Isles Jewelcrafting,25 |goto 36.96,47.08 |or
|tip You must be at least skill level 25 to interact with profession treasures.
step
click Closely Guarded Shiny##380591
|tip Behind the fallen log.
collect Closely Guarded Shiny##198687 |goto The Waking Shores/0 50.36,45.06 |q 70292 |future
step
use the Closely Guarded Shiny##198687
Study the Closely Guarded Shiny |complete itemcount(198687) == 0
step
kill Charred Hornspike##191479+
|tip Kill any nearby frogs before continuing.
Click Here to Continue |confirm |goto The Waking Shores/0 33.82,63.79 |q 70273 |future
step
click Focusing Crystal
|tip Move quickly, they only channel for a limited duration and you need to activate all three at once.
Click Here to Continue |confirm |goto The Waking Shores/0 34.38,64.60 |q 70273 |future
step
click Focusing Crystal
|tip Move quickly, they only channel for a limited duration and you need to activate all three at once.
Click Here to Continue |confirm |goto The Waking Shores/0 33.22,62.58 |q 70273 |future
step
click Focusing Crystal
|tip Move quickly, they only channel for a limited duration and you need to activate all three at once.
Click Here to Continue |confirm |goto The Waking Shores/0 33.01,64.10 |q 70273 |future
step
click Igneous Gem##380822
collect Igneous Gem##201017 |goto The Waking Shores/0 33.96,63.66 |q 70273 |future
step
use the Igneous Gem##201017
Study the Igneous Gem |complete itemcount(201017) == 0
step
click Forgotten Jewelry Box##380548
|tip This also includes a Forgotten Jewlery Box which can be unlocked with lockpicking and contains various Jewelcrafting materials.
collect Fragmented Key##198660 |goto Ohn'ahran Plains/0 61.76,13.03 |q 70263 |future
step
use the Fragmented Key##198660
Study the Fragmented Key |complete itemcount(198660) == 0
step
Walk up the rocks |goto Ohn'ahran Plains/0 25.17,34.08 < 5 |walk
click Lofty Malygite##380577
collect Lofty Malygite##198670 |goto Ohn'ahran Plains/0 25.11,34.78 |q 70282 |future
step
use the Lofty Malygite##198670
Study the Lofty Malygite |complete itemcount(198670) == 0
step
click Crystalline Overgrowth##380569
collect Crystalline Overgrowth##198664 |goto The Azure Span/0 45.02,61.24 |q 70277 |future
step
use the Crystalline Overgrowth##198664
Study the Crystalline Overgrowth |complete itemcount(198664) == 0
step
click Resonant Key
Gain the "Resonant Key" Buff |havebuff spell:384802 |goto The Azure Span/0 44.62,61.31 |q 70271 |future
step
click Humming Crystal
Click Here to Continue |confirm |goto The Azure Span/0 44.68,60.18 |q 70271 |future
step
click Humming Crystal
Click Here to Continue |confirm |goto The Azure Span/0 44.17,62.03 |q 70271 |future
step
click Humming Crystal
Click Here to Continue |confirm |goto The Azure Span/0 44.72,62.14 |q 70271 |future
step
click Harmonic Chest##380556
collect Harmonic Crystal Harmonizer##201016 |goto The Azure Span/0 44.65,61.37 |q 70271 |future
step
use the Harmonic Crystal Harmonizer##201016
Study the Harmonic Crystal Harmonizer |complete itemcount(201016) == 0
step
click Erupted Alexstraszite Cluster##380585
collect Alexstraszite Cluster##198682 |goto Thaldraszus/0 59.85,65.17 |q 70285 |future
step
use the Alexstraszite Cluster##198682
Study the Alexstraszite Cluster |complete itemcount(198682) == 0
step
click Painter's Pretty Jewel##380545
|tip Inside the vase.
|tip Point your camera towards the ground to mouse over it easier.
collect Painter's Pretty Jewel##198656 |goto Thaldraszus/0 56.91,43.66 |q 70261 |future
step
use the Painter's Pretty Jewel##198656
Study the Painter's Pretty Jewel |complete itemcount(198656) == 0
]])
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Leatherworking\\Leveling Guides\\Dragon Isles Leatherworking 1-100",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Dragon Isles Leatherworking profession from 1-100.",
startlevel=60.0,
condition_end=function() return skill('Dragon Isles Leatherworking') >= 100 end,
condition_suggested=function() return skill('Dragon Isles Leatherworking') > 0 and skill('Dragon Isles Leatherworking') < 100 and level >= 60 end,
},[[
step
talk Hideshaper Koruz##185551
Train Leatherworking |skillmax Leatherworking,300 |goto Valdrakken/0 28.50,61.34
step
talk Hideshaper Koruz##185551
Train Dragon Isles Leatherworking |skillmax Dragon Isles Leatherworking,100 |goto 28.50,61.34
Test |complete skill("Dragon Isles Leatherworking") >= 1
step
map Ohn'ahran Plains/0
path follow smart; loop on; ants curved; dist 20
path	48.35,34.04	48.35,36.35	50.16,38.65	52.36,38.77	52.28,35.91
path	53.50,34.79	53.10,32.32	51.74,31.27	50.41,30.72	49.13,28.85
Follow the path
Kill enemies around this area
|tip Make sure you loot them so you can skin them after.
collect 20 Resilient Leather##193208 |or
_Or_
collect 20 Resilient Leather##193210 |or
_Or_
collect 20 Resilient Leather##193211 |or
|tip Farm them with Skinning or purchase them from the auction house.
|tip Any quality will work, you only need one.
'|complete completedallq(72569,71731) |or
step
map Thaldraszus/0
path follow smart; loop on; ants curved; dist 20
path	56.64,77.91	55.56,78.52	54.53,77.51	54.36,76.16	56.13,75.27
path	57.16,76.41	57.20,77.57
Follow the path
Kill enemies around this area
|tip Make sure you loot them so you can skin them after.
collect 20 Adamant Scales##193213 |or
_Or_
collect 20 Adamant Scales##193214 |or
_Or_
collect 20 Adamant Scales##193215 |or
|tip Farm them with Skinning or purchase them from the auction house.
|tip Any quality will work, you only need one.
'|complete completedallq(72569,71731) |or
step
create Pioneer's Leather Wristguards##375104,Dragon Isles Leatherworking,1 total |q 72569 |future
step
create Trailblazer's Scale Bracers##375107,Dragon Isles Leatherworking,1 total |q 71731 |future
step
talk Hideshaper Koruz##185551
Train Trailblazer's Scale Boots |learn Trailblazer's Scale Boots##375106 |goto Valdrakken/0 28.50,61.34
step
map Ohn'ahran Plains/0
path follow smart; loop on; ants curved; dist 20
path	48.35,34.04	48.35,36.35	50.16,38.65	52.36,38.77	52.28,35.91
path	53.50,34.79	53.10,32.32	51.74,31.27	50.41,30.72	49.13,28.85
Follow the path
Kill enemies around this area
|tip Make sure you loot them so you can skin them after.
collect 10 Resilient Leather##193208 |or
_Or_
collect 10 Resilient Leather##193210 |or
_Or_
collect 10 Resilient Leather##193211 |or
|tip Farm them with Skinning or purchase them from the auction house.
|tip Any quality will work, you only need one.
'|complete completedq(71730) |or
step
map Thaldraszus/0
path follow smart; loop on; ants curved; dist 20
path	56.64,77.91	55.56,78.52	54.53,77.51	54.36,76.16	56.13,75.27
path	57.16,76.41	57.20,77.57
Follow the path
Kill enemies around this area
|tip Make sure you loot them so you can skin them after.
collect 20 Adamant Scales##193213 |or
_Or_
collect 20 Adamant Scales##193214 |or
_Or_
collect 20 Adamant Scales##193215 |or
|tip Farm them with Skinning or purchase them from the auction house.
|tip Any quality will work, you only need one.
'|complete completedq(71730) |or
step
create Trailblazer's Scale Boots##375106,Dragon Isles Leatherworking,1 total |q 71730 |future
step
talk Hideshaper Koruz##185551
Train Pioneer's Leather Tunic |learn Pioneer's Leather Tunic##375105 |goto Valdrakken/0 28.50,61.34
step
talk Hideshaper Koruz##185551
Train Trailblazer's Scale Vest |learn Trailblazer's Scale Vest##375108 |goto Valdrakken/0 28.50,61.34
step
map Ohn'ahran Plains/0
path follow smart; loop on; ants curved; dist 20
path	48.35,34.04	48.35,36.35	50.16,38.65	52.36,38.77	52.28,35.91
path	53.50,34.79	53.10,32.32	51.74,31.27	50.41,30.72	49.13,28.85
Follow the path
Kill enemies around this area
|tip Make sure you loot them so you can skin them after.
collect 40 Resilient Leather##193208 |or
_Or_
collect 40 Resilient Leather##193210 |or
_Or_
collect 40 Resilient Leather##193211 |or
|tip Farm them with Skinning or purchase them from the auction house.
|tip Any quality will work, you only need one.
'|complete completedallq(71703,71729) |or
step
map Thaldraszus/0
path follow smart; loop on; ants curved; dist 20
path	56.64,77.91	55.56,78.52	54.53,77.51	54.36,76.16	56.13,75.27
path	57.16,76.41	57.20,77.57
Follow the path
Kill enemies around this area
|tip Make sure you loot them so you can skin them after.
collect 40 Adamant Scales##193213 |or
_Or_
collect 40 Adamant Scales##193214 |or
_Or_
collect 40 Adamant Scales##193215 |or
|tip Farm them with Skinning or purchase them from the auction house.
|tip Any quality will work, you only need one.
'|complete completedallq(71703,71729) |or
step
create Pioneer's Leather Tunic##375105,Dragon Isles Leatherworking,1 total |q 71703 |future
step
create Trailblazer's Scale Vest##375108,Dragon Isles Leatherworking,1 total |q 71729 |future
step
talk Hideshaper Koruz##185551
Train Durable Pack |learn Durable Pack##375182 |goto Valdrakken/0 28.50,61.34
step
map Ohn'ahran Plains/0
path follow smart; loop on; ants curved; dist 20
path	48.35,34.04	48.35,36.35	50.16,38.65	52.36,38.77	52.28,35.91
path	53.50,34.79	53.10,32.32	51.74,31.27	50.41,30.72	49.13,28.85
Follow the path
Kill enemies around this area
|tip Make sure you loot them so you can skin them after.
collect 40 Resilient Leather##193208 |or
_Or_
collect 40 Resilient Leather##193210 |or
_Or_
collect 40 Resilient Leather##193211 |or
|tip Farm them with Skinning or purchase them from the auction house.
|tip Any quality will work, you only need one.
'|complete completedq(71767) |or
step
map Ohn'ahran Plains/0
path follow smart; loop on; ants curved; dist 20
path	48.35,34.04	48.35,36.35	50.16,38.65	52.36,38.77	52.28,35.91
path	53.50,34.79	53.10,32.32	51.74,31.27	50.41,30.72	49.13,28.85
Follow the path
Kill enemies around this area
|tip Make sure you loot them so you can skin them after.
collect 2 Dense Hide##193216 |or
_Or_
collect 2 Dense Hide##193217 |or
_Or_
collect 2 Dense Hide##193218 |or
|tip Farm them with Skinning or purchase them from the auction house.
|tip Any quality will work, you only need one.
|tip They have a low drop rate.
'|complete completedq(71767) |or
step
create Durable Pack##375182,Dragon Isles Leatherworking,1 total |q 71767 |future
step
create 1 Durable Pack##375182,Dragon Isles Leatherworking,22 |only if default
create 1 Durable Pack##375182,Dragon Isles Leatherworking,27 |only if KulTiran
step
talk Hideshaper Koruz##185551
Train Trailblazer's Toughened Chainbelt |learn Trailblazer's Toughened Chainbelt##395844 |goto Valdrakken/0 28.50,61.34
step
map Thaldraszus/0
path follow smart; loop on; ants curved; dist 20
path	56.64,77.91	55.56,78.52	54.53,77.51	54.36,76.16	56.13,75.27
path	57.16,76.41	57.20,77.57
Follow the path
Kill enemies around this area
|tip Make sure you loot them so you can skin them after.
collect 16 Adamant Scales##193213 |or
_Or_
collect 16 Adamant Scales##193214 |or
_Or_
collect 16 Adamant Scales##193215 |or
|tip Farm them with Skinning or purchase them from the auction house.
|tip Any quality will work, you only need one.
'|complete completedq(71705) |or
step
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	78.03,30.28	78.81,28.96	79.59,29.70	79.84,28.19	79.25,25.76
path	78.42,24.63	77.85,26.26	77.58,28.05	77.61,29.20
Follow the path
Kill enemies around this area
|tip Make sure you loot them so you can skin them after.
collect 2 Lustrous Scaled Hide##193222 |or
_Or_
collect 2 Lustrous Scaled Hide##193223 |or
_Or_
collect 2 Lustrous Scaled Hide##193224 |or
|tip Farm them with Skinning or purchase them from the auction house.
|tip Any quality will work, you only need one.
|tip They have a low drop rate.
'|complete completedq(71705) |or
step
create Trailblazer's Toughened Chainbelt##395844,Dragon Isles Leatherworking,1 total |q 71705 |future
step
talk Hideshaper Koruz##185551
Train Pioneer's Practiced Gloves |learn Pioneer's Practiced Gloves##395865 |goto Valdrakken/0 28.50,61.34
step
talk Hideshaper Koruz##185551
Train Trailblazer's Toughened Grips |learn Trailblazer's Toughened Grips##395845 |goto Valdrakken/0 28.50,61.34
step
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	78.03,30.28	78.81,28.96	79.59,29.70	79.84,28.19	79.25,25.76
path	78.42,24.63	77.85,26.26	77.58,28.05	77.61,29.20
Follow the path
Kill enemies around this area
|tip Make sure you loot them so you can skin them after.
collect 2 Lustrous Scaled Hide##193222 |or
_Or_
collect 2 Lustrous Scaled Hide##193223 |or
_Or_
collect 2 Lustrous Scaled Hide##193224 |or
|tip Farm them with Skinning or purchase them from the auction house.
|tip Any quality will work, you only need one.
|tip They have a low drop rate.
'|complete completedallq(72496,72500) |or
step
map Ohn'ahran Plains/0
path follow smart; loop on; ants curved; dist 20
path	48.35,34.04	48.35,36.35	50.16,38.65	52.36,38.77	52.28,35.91
path	53.50,34.79	53.10,32.32	51.74,31.27	50.41,30.72	49.13,28.85
Follow the path
Kill enemies around this area
|tip Make sure you loot them so you can skin them after.
collect 16 Resilient Leather##193208 |or
_Or_
collect 16 Resilient Leather##193210 |or
_Or_
collect 16 Resilient Leather##193211 |or
|tip Farm them with Skinning or purchase them from the auction house.
|tip Any quality will work, you only need one.
'|complete completedallq(72496,72500) |or
step
map Ohn'ahran Plains/0
path follow smart; loop on; ants curved; dist 20
path	48.35,34.04	48.35,36.35	50.16,38.65	52.36,38.77	52.28,35.91
path	53.50,34.79	53.10,32.32	51.74,31.27	50.41,30.72	49.13,28.85
Follow the path
Kill enemies around this area
|tip Make sure you loot them so you can skin them after.
collect 2 Dense Hide##193216 |or
_Or_
collect 2 Dense Hide##193217 |or
_Or_
collect 2 Dense Hide##193218 |or
|tip Farm them with Skinning or purchase them from the auction house.
|tip Any quality will work, you only need one.
|tip They have a low drop rate.
'|complete completedallq(72496,72500) |or
step
map Thaldraszus/0
path follow smart; loop on; ants curved; dist 20
path	56.64,77.91	55.56,78.52	54.53,77.51	54.36,76.16	56.13,75.27
path	57.16,76.41	57.20,77.57
Follow the path
Kill enemies around this area
|tip Make sure you loot them so you can skin them after.
collect 16 Adamant Scales##193213 |or
_Or_
collect 16 Adamant Scales##193214 |or
_Or_
collect 16 Adamant Scales##193215 |or
|tip Farm them with Skinning or purchase them from the auction house.
|tip Any quality will work, you only need one.
'|complete completedallq(72496,72500) |or
step
create Pioneer's Practiced Gloves##395865,Dragon Isles Leatherworking,1 total |q 72496 |future
step
create Trailblazer's Toughened Grips##395845,Dragon Isles Leatherworking,1 total |q 72500 |future
step
talk Hideshaper Koruz##185551
Train Jeweler's Cover |learn Jeweler's Cover##375184 |goto Valdrakken/0 28.50,61.34
step
talk Hideshaper Koruz##185551
Train Protective Gloves |learn Protective Gloves##375185 |goto Valdrakken/0 28.50,61.34
step
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	78.03,30.28	78.81,28.96	79.59,29.70	79.84,28.19	79.25,25.76
path	78.42,24.63	77.85,26.26	77.58,28.05	77.61,29.20
Follow the path
Kill enemies around this area
|tip Make sure you loot them so you can skin them after.
collect 2 Lustrous Scaled Hide##193222 |or
_Or_
collect 2 Lustrous Scaled Hide##193223 |or
_Or_
collect 2 Lustrous Scaled Hide##193224 |or
|tip Farm them with Skinning or purchase them from the auction house.
|tip Any quality will work, you only need one.
|tip They have a low drop rate.
'|complete completedallq(71753,71749) |or
step
map Ohn'ahran Plains/0
path follow smart; loop on; ants curved; dist 20
path	48.35,34.04	48.35,36.35	50.16,38.65	52.36,38.77	52.28,35.91
path	53.50,34.79	53.10,32.32	51.74,31.27	50.41,30.72	49.13,28.85
Follow the path
Kill enemies around this area
|tip Make sure you loot them so you can skin them after.
collect 10 Resilient Leather##193208 |or
_Or_
collect 10 Resilient Leather##193210 |or
_Or_
collect 10 Resilient Leather##193211 |or
|tip Farm them with Skinning or purchase them from the auction house.
|tip Any quality will work, you only need one.
'|complete completedallq(71753,71749) |or
step
map Ohn'ahran Plains/0
path follow smart; loop on; ants curved; dist 20
path	48.35,34.04	48.35,36.35	50.16,38.65	52.36,38.77	52.28,35.91
path	53.50,34.79	53.10,32.32	51.74,31.27	50.41,30.72	49.13,28.85
Follow the path
Kill enemies around this area
|tip Make sure you loot them so you can skin them after.
collect 2 Dense Hide##193216 |or
_Or_
collect 2 Dense Hide##193217 |or
_Or_
collect 2 Dense Hide##193218 |or
|tip Farm them with Skinning or purchase them from the auction house.
|tip Any quality will work, you only need one.
|tip They have a low drop rate.
'|complete completedallq(71753,71749) |or
step
map Thaldraszus/0
path follow smart; loop on; ants curved; dist 20
path	56.64,77.91	55.56,78.52	54.53,77.51	54.36,76.16	56.13,75.27
path	57.16,76.41	57.20,77.57
Follow the path
Kill enemies around this area
|tip Make sure you loot them so you can skin them after.
collect 10 Adamant Scales##193213 |or
_Or_
collect 10 Adamant Scales##193214 |or
_Or_
collect 10 Adamant Scales##193215 |or
|tip Farm them with Skinning or purchase them from the auction house.
|tip Any quality will work, you only need one.
'|complete completedallq(71753,71749) |or
step
create Jeweler's Cover##375184,Dragon Isles Leatherworking,1 total |q 71753 |future
step
create Protective Gloves##375185,Dragon Isles Leatherworking,1 total |q 71749 |future
step
talk Hideshaper Koruz##185551
Train Smithing Apron |learn Smithing Apron##375187 |goto Valdrakken/0 28.50,61.34
step
talk Hideshaper Koruz##185551
Train Alchemist's Hat |learn Alchemist's Hat##375188 |goto Valdrakken/0 28.50,61.34
step
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	78.03,30.28	78.81,28.96	79.59,29.70	79.84,28.19	79.25,25.76
path	78.42,24.63	77.85,26.26	77.58,28.05	77.61,29.20
Follow the path
Kill enemies around this area
|tip Make sure you loot them so you can skin them after.
collect 2 Lustrous Scaled Hide##193222 |or
_Or_
collect 2 Lustrous Scaled Hide##193223 |or
_Or_
collect 2 Lustrous Scaled Hide##193224 |or
|tip Farm them with Skinning or purchase them from the auction house.
|tip Any quality will work, you only need one.
|tip They have a low drop rate.
'|complete completedallq(71744,71683) |or
step
map Ohn'ahran Plains/0
path follow smart; loop on; ants curved; dist 20
path	48.35,34.04	48.35,36.35	50.16,38.65	52.36,38.77	52.28,35.91
path	53.50,34.79	53.10,32.32	51.74,31.27	50.41,30.72	49.13,28.85
Follow the path
Kill enemies around this area
|tip Make sure you loot them so you can skin them after.
collect 2 Dense Hide##193216 |or
_Or_
collect 2 Dense Hide##193217 |or
_Or_
collect 2 Dense Hide##193218 |or
|tip Farm them with Skinning or purchase them from the auction house.
|tip Any quality will work, you only need one.
|tip They have a low drop rate.
'|complete completedallq(71744,71683) |or
step
map Thaldraszus/0
path follow smart; loop on; ants curved; dist 20
path	56.64,77.91	55.56,78.52	54.53,77.51	54.36,76.16	56.13,75.27
path	57.16,76.41	57.20,77.57
Follow the path
Kill enemies around this area
|tip Make sure you loot them so you can skin them after.
collect 20 Adamant Scales##193213 |or
_Or_
collect 20 Adamant Scales##193214 |or
_Or_
collect 20 Adamant Scales##193215 |or
|tip Farm them with Skinning or purchase them from the auction house.
|tip Any quality will work, you only need one.
'|complete completedallq(71744,71683) |or
step
create Smithing Apron##375187,Dragon Isles Leatherworking,1 total |q 71744 |future
step
create Alchemist's Hat##375188,Dragon Isles Leatherworking,1 total |q 71683 |future
step
talk Hideshaper Koruz##185551
Train Trailblazer's Toughened Spikes |learn Trailblazer's Toughened Spikes##395851 |goto Valdrakken/0 28.50,61.34
step
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	78.03,30.28	78.81,28.96	79.59,29.70	79.84,28.19	79.25,25.76
path	78.42,24.63	77.85,26.26	77.58,28.05	77.61,29.20
Follow the path
Kill enemies around this area
|tip Make sure you loot them so you can skin them after.
collect 2 Lustrous Scaled Hide##193222 |or
_Or_
collect 2 Lustrous Scaled Hide##193223 |or
_Or_
collect 2 Lustrous Scaled Hide##193224 |or
|tip Farm them with Skinning or purchase them from the auction house.
|tip Any quality will work, you only need one.
|tip They have a low drop rate.
'|complete completedq(72503) |or
step
map Thaldraszus/0
path follow smart; loop on; ants curved; dist 20
path	56.64,77.91	55.56,78.52	54.53,77.51	54.36,76.16	56.13,75.27
path	57.16,76.41	57.20,77.57
Follow the path
Kill enemies around this area
|tip Make sure you loot them so you can skin them after.
collect 16 Adamant Scales##193213 |or
_Or_
collect 16 Adamant Scales##193214 |or
_Or_
collect 16 Adamant Scales##193215 |or
|tip Farm them with Skinning or purchase them from the auction house.
|tip Any quality will work, you only need one.
'|complete completedq(72503) |or
step
create Trailblazer's Toughened Spikes##395851,Dragon Isles Leatherworking,1 total |q 72503 |future
step
talk Hideshaper Koruz##185551
Train Pioneer's Practiced Leggings |learn Pioneer's Practiced Leggings##395867 |goto Valdrakken/0 28.50,61.34
step
talk Hideshaper Koruz##185551
Train Trailblazer's Toughened Legguards |learn Trailblazer's Toughened Legguards##395847 |goto Valdrakken/0 28.50,61.34
step
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	78.03,30.28	78.81,28.96	79.59,29.70	79.84,28.19	79.25,25.76
path	78.42,24.63	77.85,26.26	77.58,28.05	77.61,29.20
Follow the path
Kill enemies around this area
|tip Make sure you loot them so you can skin them after.
collect 2 Lustrous Scaled Hide##193222 |or
_Or_
collect 2 Lustrous Scaled Hide##193223 |or
_Or_
collect 2 Lustrous Scaled Hide##193224 |or
|tip Farm them with Skinning or purchase them from the auction house.
|tip Any quality will work, you only need one.
|tip They have a low drop rate.
'|complete completedallq(72497,72502) |or
step
map Ohn'ahran Plains/0
path follow smart; loop on; ants curved; dist 20
path	48.35,34.04	48.35,36.35	50.16,38.65	52.36,38.77	52.28,35.91
path	53.50,34.79	53.10,32.32	51.74,31.27	50.41,30.72	49.13,28.85
Follow the path
Kill enemies around this area
|tip Make sure you loot them so you can skin them after.
collect 32 Resilient Leather##193208 |or
_Or_
collect 32 Resilient Leather##193210 |or
_Or_
collect 32 Resilient Leather##193211 |or
|tip Farm them with Skinning or purchase them from the auction house.
|tip Any quality will work, you only need one.
'|complete completedallq(72497,72502) |or
step
map Ohn'ahran Plains/0
path follow smart; loop on; ants curved; dist 20
path	48.35,34.04	48.35,36.35	50.16,38.65	52.36,38.77	52.28,35.91
path	53.50,34.79	53.10,32.32	51.74,31.27	50.41,30.72	49.13,28.85
Follow the path
Kill enemies around this area
|tip Make sure you loot them so you can skin them after.
collect 4 Dense Hide##193216 |or
_Or_
collect 4 Dense Hide##193217 |or
_Or_
collect 4 Dense Hide##193218 |or
|tip Farm them with Skinning or purchase them from the auction house.
|tip Any quality will work, you only need one.
|tip They have a low drop rate.
'|complete completedallq(72497,72502) |or
step
map Thaldraszus/0
path follow smart; loop on; ants curved; dist 20
path	56.64,77.91	55.56,78.52	54.53,77.51	54.36,76.16	56.13,75.27
path	57.16,76.41	57.20,77.57
Follow the path
Kill enemies around this area
|tip Make sure you loot them so you can skin them after.
collect 16 Adamant Scales##193213 |or
_Or_
collect 16 Adamant Scales##193214 |or
_Or_
collect 16 Adamant Scales##193215 |or
|tip Farm them with Skinning or purchase them from the auction house.
|tip Any quality will work, you only need one.
'|complete completedallq(72497,72502) |or
step
create Pioneer's Practiced Leggings##395867,Dragon Isles Leatherworking,1 total |q 72497 |future
step
create Trailblazer's Toughened Legguards##395847,Dragon Isles Leatherworking,1 total |q 72502 |future
step
create Pioneer's Practiced Leggings##395867,Dragon Isles Leatherworking,52 |only if default
create Pioneer's Practiced Leggings##395867,Dragon Isles Leatherworking,57 |only if KulTiran
step
talk Hideshaper Koruz##185551
Train Pioneer's Practiced Cowl |learn Pioneer's Practiced Cowl##395864 |goto Valdrakken/0 28.50,61.34
step
map Ohn'ahran Plains/0
path follow smart; loop on; ants curved; dist 20
path	48.35,34.04	48.35,36.35	50.16,38.65	52.36,38.77	52.28,35.91
path	53.50,34.79	53.10,32.32	51.74,31.27	50.41,30.72	49.13,28.85
Follow the path
Kill enemies around this area
|tip Make sure you loot them so you can skin them after.
collect 16 Resilient Leather##193208 |or
_Or_
collect 16 Resilient Leather##193210 |or
_Or_
collect 16 Resilient Leather##193211 |or
|tip Farm them with Skinning or purchase them from the auction house.
|tip Any quality will work, you only need one.
'|complete completedq(72505) |or
step
map Ohn'ahran Plains/0
path follow smart; loop on; ants curved; dist 20
path	48.35,34.04	48.35,36.35	50.16,38.65	52.36,38.77	52.28,35.91
path	53.50,34.79	53.10,32.32	51.74,31.27	50.41,30.72	49.13,28.85
Follow the path
Kill enemies around this area
|tip Make sure you loot them so you can skin them after.
collect 2 Dense Hide##193216 |or
_Or_
collect 2 Dense Hide##193217 |or
_Or_
collect 2 Dense Hide##193218 |or
|tip Farm them with Skinning or purchase them from the auction house.
|tip Any quality will work, you only need one.
|tip They have a low drop rate.
'|complete completedq(72505) |or
step
create Pioneer's Practiced Cowl##395864,Dragon Isles Leatherworking,1 total |q 72505 |future
step
Reach Skill Level 100 in Dragon Isles Leatherworking |skill Dragon Isles Leatherworking,100 |or |only if default
Reach Skill Level 105 in Dragon Isles Leatherworking |skill Dragon Isles Leatherworking,105 |or |only if KulTiran
|tip From this point, it becomes very difficult to continue gaining points as soulbound materials are required.
|tip Your best path is the Crafting Order system in Valdrakken to craft items for other players with provided materials.
|tip This makes it much cheaper to craft one of each recipe for the first craft bonus.
]])
ZGV.BETAEND()
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Leatherworking\\Leveling Guides\\Leatherworking Knowledge Treasures",{
author="support@zygorguides.com",
description="\nThis guide will walk you through collecting one-time treasures that grant Knowledge Points.",
startlevel=60.0,
condition_suggested=function() return skill('Dragon Isles Leatherworking') >= 25 end,
},[[
step
talk Hideshaper Koruz##185551
Train Leatherworking |skillmax Leatherworking,300 |goto Valdrakken/0 28.50,61.34
step
talk Hideshaper Koruz##185551
Train Dragon Isles Leatherworking |skillmax Dragon Isles Leatherworking,100 |goto 28.50,61.34
step
Reach Skill Level 25 in Dragon Isles Leatherworking |skill Dragon Isles Leatherworking,25 |goto 36.96,47.08 |or
|tip You must be at least skill level 25 to interact with profession treasures.
|tip Use the "Dragon Isles Leatherworking 1-100" 1-100 guide to accomplish this.
Click Here to Load the "Dragon Isles Leatherworking 1-100" Guide |confirm |loadguide "Profession Guides\\Leatherworking\\Leveling Guides\\Dragon Isles Leatherworking 1-100" |or
step
click Poacher's Pack##380615
collect Poacher's Pack##198711 |goto The Waking Shores/0 39.36,86.38 |q 70308 |future
step
use the Poacher's Pack##198711
Study the Poacher's Pack |complete itemcount(198711) == 0
step
click Spare Djaradin Tools##380579
collect Spare Djaradin Tools##198667 |goto The Waking Shores/0 64.36,25.77 |q 70280 |future
step
use the Spare Djaradin Tools##198667
Study the Spare Djaradin Tools |complete itemcount(198667) == 0
step
click Wind-Blessed Hide##380602
collect Wind-Blessed Hide##198696 |goto Ohn'ahran Plains/0 86.28,53.62 |q 70300 |future
step
use the Wind-Blessed Hide##198696
Study the Wind-Blessed Hide |complete itemcount(198696) == 0
step
Enter the building |goto The Azure Span/0 12.80,49.34 < 7 |walk
click Broken Drum
|tip Inside the building.
Choose _<Repair the drum.>_
|tip Wait for Raq to dance on it.
click Well-Danced Drum##380554
|tip It will spawn after Raq dances and jumps off.
collect Well-Danced Drum##201018 |goto The Azure Span/0 12.51,49.41 |q 70269 |future
step
use the Well-Danced Drum##201018
Study the Well-Danced Drum |complete itemcount(201018) == 0
step
click Decay-Infused Tanning Oil##380547
collect Decay-Infused Tanning Oil##198658 |goto The Azure Span/0 16.73,38.79 |q 70266 |future
step
use the Decay-Infused Tanning Oil##198658
Study the Decay-Infused Tanning Oil |complete itemcount(198658) == 0
step
click Crate of Treated Hides##380587
collect Treated Hides##198683 |goto The Azure Span/0 57.50,41.34 |q 70286 |future
step
use the Treated Hides##198683
Study the Treated Hides |complete itemcount(198683) == 0
step
click Bag of Decayed Scales##380593
collect Decayed Scales##198690 |goto Thaldraszus/0 56.82,30.55 |q 70294 |future
step
use the Decayed Scales##198690
Study the Decayed Scales |complete itemcount(198690) == 0
]])
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Leveling Guides\\Dragon Isles Mining 1-100",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Dragon Isles Mining profession from 1-100.",
startlevel=60.0,
condition_end=function() return skill('Dragon Isles Mining') >= 100 end,
condition_suggested=function() return skill('Dragon Isles Mining') > 0 and skill('Dragon Isles Mining') < 100 and level >= 60 end,
},[[
step
talk Sekita the Burrower##185553
Train Mining |skillmax Mining,300 |goto Valdrakken/0 38.86,51.47
step
talk Sekita the Burrower##185553
Train Dragon Isles Mining |skillmax Dragon Isles Mining,100 |goto 38.86,51.47
step
Reach Skill Level 100 in Dragon Isles Mining |skill Dragon Isles Mining,100 |only if default
Reach Skill Level 105 in Dragon Isles Mining |skill Dragon Isles Mining,105 |only if KulTiran
Reach Skill Level 115 in Dragon Isles Mining |skill Dragon Isles Mining,115 |only if HighmountainTauren
|tip Load any Mining farming guide you choose up to skill level 60 and farm for points. |only if default
|tip Load any Mining farming guide you choose up to skill level 65 and farm for points. |only if KulTiran
|tip Load any Mining farming guide you choose up to skill level 75 and farm for points. |only if HighmountainTauren
|tip At skill level 60, you will need to farm Hardened, Molten, Primal, Rich, or Titan-Touched nodes for points. |only if default
|tip At skill level 65, you will need to farm Hardened, Molten, Primal, Rich, or Titan-Touched nodes for points. |only if KulTiran
|tip At skill level 75, you will need to farm Hardened, Molten, Primal, Rich, or Titan-Touched nodes for points. |only if HighmountainTauren
|tip These nodes are rare spawn and share locations with normal nodes.
|tip At skill level 25, open your profession window and decide which path you want to take in the Specializations tab. |only if default
|tip At skill level 30, open your profession window and decide which path you want to take in the Specializations tab. |only if KulTiran
|tip At skill level 40, open your profession window and decide which path you want to take in the Specializations tab. |only if HighmountainTauren
|tip Choose your points wisely, as they are currently permanent, even if you abandon and re-learn Mining.
|tip You can eventually unlock all specialization points.
]])
ZGV.BETAEND()
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Rousing Air",{
author="support@zygorguides.com",
description="\nThis guide will walk you through gathering Rousing Air.",
startlevel=60.0,
},[[
step
map The Azure Span/0
path follow smart; loop on; ants curved; dist 20
path	45.78,57.35	46.18,56.13	46.66,55.42	47.13,54.48	47.01,55.77
path	47.22,56.47	46.80,57.01	46.88,57.82	47.45,58.16	47.64,58.70
path	47.22,58.92	46.98,59.34	46.57,59.35	46.34,57.62
Follow the path
kill Restless Wind##186397+
collect 10 Rousing Air##190326 |n
use Rousing Air##190326
collect Awakened Air##190327  |n
confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Rousing Earth",{
author="support@zygorguides.com",
description="\nThis guide will walk you through gathering Rousing Earth.",
startlevel=60.0,
},[[
step
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	52.19,32.87	50.73,33.22	49.95,33.73	49.29,33.52	49.63,31.58
path	50.23,30.93	50.98,31.30	52.49,30.87	53.65,31.43	53.34,32.31
path	52.55,32.60	51.81,33.07
Follow the path
Kill Elemental enemies around this area
collect 10 Rousing Earth##190315 |n
use Rousing Earth##190315
collect Awakened Earth##190316  |n
|tip These have a chance to be gathered from "Hardened" and "Primal" nodes.
confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Rousing Fire",{
author="support@zygorguides.com",
description="\nThis guide will walk you through gathering Rousing Fire.",
startlevel=60.0,
},[[
step
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	37.99,69.37	37.76,71.40	36.96,72.21	35.90,72.27	36.61,73.66
path	37.17,73.87	37.94,76.03	38.65,74.48	38.52,72.73	38.76,70.86
kill Blazing Manifestation##186336
collect 10 Rousing Fire##190320 |n
|tip These have a chance to be gathered from "Molten" and "Primal" nodes.
use Rousing Fire##190320
collect Awakened Fire##190321 |n
cast Fishing##131474
|tip Click the Fishing Bobber when it bounces in the lava.
|tip Keep repeating this process.
Fish in the lava here [goto 37.34,67.75]
confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Rousing Frost",{
author="support@zygorguides.com",
description="\nThis guide will walk you through gathering Rousing Frost.",
startlevel=60.0,
},[[
step
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	47.57,59.13	48.18,61.09	49.82,61.61	50.26,59.59	48.84,59.09
Follow the path
kill Angered Steam##190694
kill Steam Reaver##190700
collect 10 Rousing Frost##190328 |n
use Rousing Frost##190328
collect Awakened Frost##190329 |n
confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Serevite",{
author="support@zygorguides.com",
description="\nThis guide will walk you through gathering Serevite.",
startlevel=60.0,
},[[
step
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	66.99,56.32	72.07,57.48	76.01,51.77	77.00,48.25	78.52,39.32
path	76.25,38.51	77.05,29.45	67.70,30.98	64.98,38.14	62.93,41.23
path	50.62,39.10	45.45,41.52	40.65,48.92	34.18,51.79	30.72,51.38
path	28.48,64.72	28.12,69.86	30.23,75.73	33.29,80.37	36.68,80.94
path	37.23,84.57	37.03,90.38	40.06,92.50	43.83,87.39	50.72,77.14
path	55.12,78.57	56.50,71.05	60.66,63.30	64.02,60.01
Follow the path
click Serevite Deposit##381102
|tip These share a spawn with Draconium Deposits.
collect Serevite Ore##190395 |n
collect Serevite Ore##190396 |n
collect Serevite Ore##190394 |n
confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Draconium",{
author="support@zygorguides.com",
description="\nThis guide will walk you through gathering Draconium.",
startlevel=60.0,
},[[
step
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	66.99,56.32	72.07,57.48	76.01,51.77	77.00,48.25	78.52,39.32
path	76.25,38.51	77.05,29.45	67.70,30.98	64.98,38.14	62.93,41.23
path	50.62,39.10	45.45,41.52	40.65,48.92	34.18,51.79	30.72,51.38
path	28.48,64.72	28.12,69.86	30.23,75.73	33.29,80.37	36.68,80.94
path	37.23,84.57	37.03,90.38	40.06,92.50	43.83,87.39	50.72,77.14
path	55.12,78.57	56.50,71.05	60.66,63.30	64.02,60.01
Follow the path
click Draconium Deposit##379248
|tip These share a spawn with Serevite Deposits.
collect Draconium Ore##189143 |n
collect Draconium Ore##188658 |n
collect Draconium Ore##190311 |n
confirm
]])
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Leveling Guides\\Dragon Isles Skinning 1-100",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Dragon Isles Skinning profession from 1-100.",
startlevel=60.0,
condition_end=function() return skill('Dragon Isles Skinning') >= 100 end,
condition_suggested=function() return skill('Dragon Isles Skinning') > 0 and skill('Dragon Isles Skinning') < 100 and level >= 60 end,
},[[
step
talk Ralathor the Rugged##193846
Train Skinning |skillmax Skinning,300 |goto Valdrakken/0 28.54,60.39
step
talk Ralathor the Rugged##193846
Train Dragon Isles Skinning |skillmax Dragon Isles Skinning,100 |goto 28.54,60.39
step
Reach Skill Level 100 in Dragon Isles Skinning |skill Dragon Isles Skinning,100 |only if default
Reach Skill Level 105 in Dragon Isles Skinning |skill Dragon Isles Skinning,105 |only if KulTiran
Reach Skill Level 115 in Dragon Isles Skinning |skill Dragon Isles Skinning,115 |only if Worgen
|tip Load any Skinning farming guide you choose and farm for points.
|tip At skill level 25, open your profession window and decide which path you want to take in the Specializations tab. |only if default
|tip At skill level 30, open your profession window and decide which path you want to take in the Specializations tab. |only if KulTiran
|tip At skill level 40, open your profession window and decide which path you want to take in the Specializations tab. |only if Worgen
|tip Choose your points wisely, as they are currently permanent, even if you abandon and re-learn Skinning.
|tip You can eventually unlock all specialization points.
]])
ZGV.BETAEND()
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Resilient Leather",{
author="support@zygorguides.com",
description="\nThis guide will walk you through gathering Resilient Leather.",
startlevel=60.0,
},[[
step
map Ohn'ahran Plains/0
path follow smart; loop on; ants curved; dist 20
path	48.35,34.04	48.35,36.35	50.16,38.65	52.36,38.77	52.28,35.91
path	53.50,34.79	53.10,32.32	51.74,31.27	50.41,30.72	49.13,28.85
Follow the path
Kill enemies around this area
|tip Make sure you loot them so you can skin them after.
collect Resilient Leather##193208 |n
collect Resilient Leather##193210 |n
collect Resilient Leather##193211 |n
confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Adamant Scales",{
author="support@zygorguides.com",
description="\nThis guide will walk you through gathering Adamant Scales.",
startlevel=60.0,
},[[
step
map Thaldraszus/0
path follow smart; loop on; ants curved; dist 20
path	56.64,77.91	55.56,78.52	54.53,77.51	54.36,76.16	56.13,75.27
path	57.16,76.41	57.20,77.57
Follow the path
Kill enemies around this area
|tip Make sure you loot them so you can skin them after.
collect Adamant Scales##193213 |n
collect Adamant Scales##193214 |n
collect Adamant Scales##193215 |n
confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Dense Hide",{
author="support@zygorguides.com",
description="\nThis guide will walk you through gathering Dense Hide.",
startlevel=60.0,
},[[
step
map Ohn'ahran Plains/0
path follow smart; loop on; ants curved; dist 20
path	48.35,34.04	48.35,36.35	50.16,38.65	52.36,38.77	52.28,35.91
path	53.50,34.79	53.10,32.32	51.74,31.27	50.41,30.72	49.13,28.85
Follow the path
Kill enemies around this area
|tip Make sure you loot them so you can skin them after.
collect Dense Hide##193216 |n
collect Dense Hide##193217 |n
collect Dense Hide##193218 |n
|tip These have a low drop rate.
confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Lustrous Scaled Hide",{
author="support@zygorguides.com",
description="\nThis guide will walk you through gathering Lustrous Scaled Hide.",
startlevel=60.0,
},[[
step
map The Waking Shores
path follow smart; loop on; ants curved; dist 20
path	78.03,30.28	78.81,28.96	79.59,29.70	79.84,28.19	79.25,25.76
path	78.42,24.63	77.85,26.26	77.58,28.05	77.61,29.20
Follow the path
Kill enemies around this area
|tip Make sure you loot them so you can skin them after.
collect Lustrous Scaled Hide##193222 |n
collect Lustrous Scaled Hide##193223 |n
collect Lustrous Scaled Hide##193224 |n
|tip These have a low drop rate.
confirm
]])
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Leveling Guides\\Dragon Isles Tailoring 1-100",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Dragon Isles Tailoring profession from 1-100.",
startlevel=60.0,
condition_end=function() return skill('Dragon Isles Tailoring') >= 100 end,
condition_suggested=function() return skill('Dragon Isles Tailoring') > 0 and skill('Dragon Isles Tailoring') < 100 and level >= 60 end,
},[[
step
talk Threadfinder Pax##195850
Train Tailoring |skillmax Tailoring,300 |goto Valdrakken/0 32.13,66.24
step
talk Threadfinder Pax##195850
Train Dragon Isles Tailoring |skillmax Dragon Isles Tailoring,100 |goto Valdrakken/0 32.13,66.24
step
talk Threadfinder Pax##195850
Train Dragon Isles Cloth Scavenging |complete knowspell(392396) |goto Valdrakken/0 32.13,66.24
step
collect 340 Tattered Wildercloth##193050 |or
|tip Farm them from humanoid enemies in Dragon Isles zones or purchase them from the auction house.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
|tip This won't take you to 100, but it's best to use crafting orders to level later.
'|complete skill("Dragon Isles Tailoring") >= 15 |or |only if default
'|complete skill("Dragon Isles Tailoring") >= 20 |or |only if KulTiran
step
create 68 Dragon Isles Unravelling##376562,Dragon Isles Tailoring,15 |or |only if default
create 68 Dragon Isles Unravelling##376562,Dragon Isles Tailoring,20 |or |only if KulTiran
|tip Convert all 340 Tattered Wildercloth 68 times.
|tip Save these, you will need them for future steps.
step
talk Threadfinder Pax##195850
Train Surveyor's Cloth Robe |learn Surveyor's Cloth Robe##376507 |goto Valdrakken/0 32.13,66.24
step
talk Threadfinder Pax##195850
Train Wildercloth Gardening Hat |learn Wildercloth Gardening Hat##376553 |goto Valdrakken/0 32.13,66.24
stickystart "Collect_Wildercloth_21"
stickystart "Collect_Spool_of_Wilderthread_21"
step
map The Azure Span
path	15.75,46.71	17.58,41.19	16.46,39.23	18.69,29.45	17.11,26.36
path	21.19,25.67	25.00,30.93	31.47,36.84	37.16,29.24	42.99,36.12
path	46.49,32.25	49.87,29.25	52.99,26.54	55.46,24.84	58.80,24.19
path	61.63,22.73	63.67,22.82	65.40,19.81	68.93,23.31	72.46,26.81
path	66.18,31.47	62.44,37.47	63.50,40.89	58.10,49.22	58.80,55.63
path	49.27,61.93	45.62,56.80	45.00,53.05	35.88,49.80	34.69,47.15
path	29.79,46.25	24.62,47.46	17.61,48.43
click Hochenblume##381209+
collect 5 Hochenblume##191460 |or
_Or_
collect 5 Hochenblume##191461 |or
_Or_
collect 5 Hochenblume##191462 |or
|tip Farm them with Herbalism or purchase them from the auction house.
|tip Any quality will work, you only need one.
'|complete skill("Dragon Isles Tailoring") >= 21 |or |only if default
'|complete skill("Dragon Isles Tailoring") >= 26 |or |only if KulTiran
step
label "Collect_Wildercloth_21"
collect 13 Wildercloth##193922 |or
|tip Farm them from humanoid enemies in Dragon Isles zones or purchase them from the auction house.
'|complete skill("Dragon Isles Tailoring") >= 21 |or |only if default
'|complete skill("Dragon Isles Tailoring") >= 26 |or |only if KulTiran
step
label "Collect_Spool_of_Wilderthread_21"
collect 10 Spool of Wilderthread##192095 |or
_Or_
collect 10 Spool of Wilderthread##192096 |or
_Or_
collect 10 Spool of Wilderthread##192097 |or
|tip You created these in a previous step. |notinsticky
|tip Any quality will work, you only need one. |notinsticky
'|complete skill("Dragon Isles Tailoring") >= 21 |or |only if default
'|complete skill("Dragon Isles Tailoring") >= 26 |or |only if KulTiran
step
create 1 Surveyor's Cloth Robe##376507,Dragon Isles Tailoring,1 total |q 71793 |future
step
create 1 Wildercloth Gardening Hat##376553,Dragon Isles Tailoring,1 total |q 71839 |future
step
talk Threadfinder Pax##195850
Train Wildercloth Chef's Hat |learn Wildercloth Chef's Hat##376547 |goto Valdrakken/0 32.13,66.24
step
talk Threadfinder Pax##195850
Train Surveyor's Tailored Cloak |learn Surveyor's Tailored Cloak##376506 |goto Valdrakken/0 32.13,66.24
stickystart "Collect_Spool_of_Wilderthread_27"
step
collect 13 Wildercloth##193922 |or
|tip Farm them from humanoid enemies in Dragon Isles zones or purchase them from the auction house.
'|complete skill("Dragon Isles Tailoring") >= 27 |or |only if default
'|complete skill("Dragon Isles Tailoring") >= 32 |or |only if KulTiran
step
label "Collect_Spool_of_Wilderthread_27"
collect 10 Spool of Wilderthread##192095 |or
_Or_
collect 10 Spool of Wilderthread##192096 |or
_Or_
collect 10 Spool of Wilderthread##192097 |or
|tip You created these in a previous step. |notinsticky
|tip Any quality will work, you only need one. |notinsticky
'|complete skill("Dragon Isles Tailoring") >= 27 |or |only if default
'|complete skill("Dragon Isles Tailoring") >= 32 |or |only if KulTiran
step
create 1 Wildercloth Chef's Hat##376547,Dragon Isles Tailoring,1 total |q 71833 |future
step
create 1 Surveyor's Tailored Cloak##376506,Dragon Isles Tailoring,1 total |q 71792 |future
step
talk Threadfinder Pax##195850
Train Wildercloth Fishing Cap |learn Wildercloth Fishing Cap##376551 |goto Valdrakken/0 32.13,66.24
stickystart "Collect_Spool_of_Wilderthread_30"
step
collect 5 Wildercloth##193922 |or
|tip Farm them from humanoid enemies in Dragon Isles zones or purchase them from the auction house.
'|complete skill("Dragon Isles Tailoring") >= 30 |or |only if default
'|complete skill("Dragon Isles Tailoring") >= 35 |or |only if KulTiran
step
label "Collect_Spool_of_Wilderthread_30"
collect 4 Spool of Wilderthread##192095 |or
_Or_
collect 4 Spool of Wilderthread##192096 |or
_Or_
collect 4 Spool of Wilderthread##192097 |or
|tip You created these in a previous step. |notinsticky
|tip Any quality will work, you only need one. |notinsticky
'|complete skill("Dragon Isles Tailoring") >= 30 |or |only if default
'|complete skill("Dragon Isles Tailoring") >= 35 |or |only if KulTiran
step
create 1 Wildercloth Fishing Cap##376551,Dragon Isles Tailoring,1 total |q 71837 |future
step
talk Threadfinder Pax##195850
Train Surveyor's Seasoned Cord |learn Surveyor's Seasoned Cord##395809 |goto Valdrakken/0 32.13,66.24
step
talk Threadfinder Pax##195850
Train Wildercloth Alchemist's Robe |learn Wildercloth Alchemist's Robe##376543 |goto Valdrakken/0 32.13,66.24
stickystart "Collect_Spool_of_Wilderthread_36"
step
collect 20 Wildercloth##193922 |or
|tip Farm them from humanoid enemies in Dragon Isles zones or purchase them from the auction house.
'|complete skill("Dragon Isles Tailoring") >= 36 |or |only if default
'|complete skill("Dragon Isles Tailoring") >= 41 |or |only if KulTiran
step
label "Collect_Spool_of_Wilderthread_36"
collect 14 Spool of Wilderthread##192095 |or
_Or_
collect 14 Spool of Wilderthread##192096 |or
_Or_
collect 14 Spool of Wilderthread##192097 |or
|tip You created these in a previous step. |notinsticky
|tip Any quality will work, you only need one. |notinsticky
'|complete skill("Dragon Isles Tailoring") >= 36 |or |only if default
'|complete skill("Dragon Isles Tailoring") >= 41 |or |only if KulTiran
step
create 1 Surveyor's Seasoned Cord##395809,Dragon Isles Tailoring,1 total |q 72504 |future
step
create 1 Wildercloth Alchemist's Robe##376543,Dragon Isles Tailoring,1 total |q 71829 |future
step
create 1 Wildercloth Alchemist's Robe##376543,Dragon Isles Tailoring,36 |or |only if default
create 1 Wildercloth Alchemist's Robe##376543,Dragon Isles Tailoring,41 |or |only if KulTiran
step
talk Threadfinder Pax##195850
Train Surveyor's Seasoned Gloves |learn Surveyor's Seasoned Gloves##395813 |goto Valdrakken/0 32.13,66.24
step
talk Threadfinder Pax##195850
Train Wildercloth Enchanter's Hat |learn Wildercloth Enchanter's Hat##376549 |goto Valdrakken/0 32.13,66.24
stickystart "Collect_Wildercloth_40"
stickystart "Collect_Spool_of_Wilderthread_40"
cast Disenchant##13262
collect 3 Chromatic Dust##194123 |or
|tip Disenchant uncommon (green) items from the Dragon Isles or purchase them from the auction house.
'|complete skill("Dragon Isles Tailoring") >= 40 |or |only if default
'|complete skill("Dragon Isles Tailoring") >= 45 |or |only if KulTiran
step
label "Collect_Wildercloth_40"
collect 11 Wildercloth##193922 |or
|tip Farm them from humanoid enemies in Dragon Isles zones or purchase them from the auction house.
'|complete skill("Dragon Isles Tailoring") >= 40 |or |only if default
'|complete skill("Dragon Isles Tailoring") >= 45 |or |only if KulTiran
step
label "Collect_Spool_of_Wilderthread_40"
collect 10 Spool of Wilderthread##192095 |or
_Or_
collect 10 Spool of Wilderthread##192096 |or
_Or_
collect 10 Spool of Wilderthread##192097 |or
|tip You created these in a previous step. |notinsticky
|tip Any quality will work, you only need one. |notinsticky
'|complete skill("Dragon Isles Tailoring") >= 40 |or |only if default
'|complete skill("Dragon Isles Tailoring") >= 45 |or |only if KulTiran
step
create 1 Surveyor's Seasoned Gloves##395813,Dragon Isles Tailoring,1 total |goto Valdrakken/0 31.96,67.25 |q 72506 |future
|tip You must be standing near a Tailor's Work Table to craft this.
step
create 1 Wildercloth Enchanter's Hat##376549,Dragon Isles Tailoring,1 total |q 71835 |future
step
talk Threadfinder Pax##195850
Train Surveyor's Seasoned Shoulders |learn Surveyor's Seasoned Shoulders##395815 |goto Valdrakken/0 32.13,66.24
stickystart "Collect_Spool_of_Wilderthread_46"
step
collect 24 Wildercloth##193922 |or
|tip Farm them from humanoid enemies in Dragon Isles zones or purchase them from the auction house.
|tip This total is approximate.
|tip You may need slightly more than the indicated amount.
'|complete skill("Dragon Isles Tailoring") >= 46 |or |only if default
'|complete skill("Dragon Isles Tailoring") >= 51 |or |only if KulTiran
step
label "Collect_Spool_of_Wilderthread_46"
collect 18 Spool of Wilderthread##192095 |or
_Or_
collect 18 Spool of Wilderthread##192096 |or
_Or_
collect 18 Spool of Wilderthread##192097 |or
|tip You created these in a previous step. |notinsticky
|tip Any quality will work, you only need one. |notinsticky
|tip This total is approximate.
|tip You may need slightly more than the indicated amount. |notinsticky
'|complete skill("Dragon Isles Tailoring") >= 46 |or |only if default
'|complete skill("Dragon Isles Tailoring") >= 51 |or |only if KulTiran
step
create 1 Surveyor's Seasoned Shoulders##395815,Dragon Isles Tailoring,1 total |goto Valdrakken/0 31.96,67.25 |q 72509 |future
|tip You must be standing near a Tailor's Work Table to craft this.
step
create 2 Surveyor's Seasoned Shoulders##395815,Dragon Isles Tailoring,46 |goto Valdrakken/0 31.96,67.25 |or |only if default
create 2 Surveyor's Seasoned Shoulders##395815,Dragon Isles Tailoring,51 |goto Valdrakken/0 31.96,67.25 |or |only if KulTiran
|tip You must be standing near a Tailor's Work Table to craft this.
|tip You can also make Wildercloth Bags if you need them or wish to sell them.
step
talk Threadfinder Pax##195850
Train Abrasive Polishing Cloth |learn Abrasive Polishing Cloth##376533 |goto Valdrakken/0 32.13,66.24
step
talk Threadfinder Pax##195850
Train Surveyor's Seasoned Pants |learn Surveyor's Seasoned Pants##395814 |goto Valdrakken/0 32.13,66.24
stickystart "Collect_Fractured_Glass_51"
stickystart "Collect_Wildertcloth_Bolt_51"
stickystart "Collect_Spool_of_Wilderthread_51"
step
collect 20 Wildercloth##193922 |or
|tip Farm them from humanoid enemies in Dragon Isles zones or purchase them from the auction house.
'|complete skill("Dragon Isles Tailoring") >= 51 |or |only if default
'|complete skill("Dragon Isles Tailoring") >= 56 |or |only if KulTiran
step
label "Collect_Fractured_Glass_51"
collect 3 Fractured Glass##192872 |or
|tip Prospect them from Dragon Isles ore with Jewelcrafting or purchase them from the auction house.
'|complete skill("Dragon Isles Tailoring") >= 51 |or |only if default
'|complete skill("Dragon Isles Tailoring") >= 56 |or |only if KulTiran
step
label "Collect_Wildertcloth_Bolt_51"
collect 1 Wildertcloth Bolt##193926 |or
_Or_
collect 1 Wildertcloth Bolt##193927 |or
_Or_
collect 1 Wildertcloth Bolt##193928 |or
|tip Create it with Tailoring or purchase them from the auction house.
|tip Any quality will work, you only need one.
'|complete skill("Dragon Isles Tailoring") >= 51 |or |only if default
'|complete skill("Dragon Isles Tailoring") >= 56 |or |only if KulTiran
step
label "Collect_Spool_of_Wilderthread_51"
collect 14 Spool of Wilderthread##192095 |or
_Or_
collect 14 Spool of Wilderthread##192096 |or
_Or_
collect 14 Spool of Wilderthread##192097 |or
|tip You created these in a previous step. |notinsticky
|tip Any quality will work, you only need one. |notinsticky
'|complete skill("Dragon Isles Tailoring") >= 51 |or |only if default
'|complete skill("Dragon Isles Tailoring") >= 56 |or |only if KulTiran
step
create 1 Abrasive Polishing Cloth##376533,Dragon Isles Tailoring,1 total |goto Valdrakken/0 31.96,67.25 |q 71819 |future
|tip You must be standing near a Tailor's Work Table to craft this.
step
create 1 Surveyor's Seasoned Pants##395814,Dragon Isles Tailoring,1 total |goto Valdrakken/0 31.96,67.25 |q 72508 |future
|tip You must be standing near a Tailor's Work Table to craft this.
step
create 1 Surveyor's Seasoned Pants##395814,Dragon Isles Tailoring,51 |goto Valdrakken/0 31.96,67.25 |or |only if default
create 1 Surveyor's Seasoned Pants##395814,Dragon Isles Tailoring,56 |goto Valdrakken/0 31.96,67.25 |or |only if KulTiran
|tip You must be standing near a Tailor's Work Table to craft this.
step
talk Threadfinder Pax##195850
Train Surveyor's Seasoned Hood |learn Surveyor's Seasoned Hood##395807 |goto Valdrakken/0 32.13,66.24
step
talk Threadfinder Pax##195850
Train Vibrant Spellthread |learn Vibrant Spellthread##376538 |goto Valdrakken/0 32.13,66.24
stickystart "Collect_Vibrant_Shard_53"
stickystart "Collect_Vibrant_Wildertcloth_Bolt_53"
stickystart "Collect_Spool_of_Wilderthread_53"
step
collect 10 Wildercloth##193922 |or
|tip Farm them from humanoid enemies in Dragon Isles zones or purchase them from the auction house.
'|complete skill("Dragon Isles Tailoring") >= 53 |or |only if default
'|complete skill("Dragon Isles Tailoring") >= 58 |or |only if KulTiran
step
label "Collect_Vibrant_Shard_53"
collect 1 Vibrant Shard##194124 |or
|tip Disenchant them from rare (blue) items from the Dragon Isles or purchase them from the auction house.
'|complete skill("Dragon Isles Tailoring") >= 53 |or |only if default
'|complete skill("Dragon Isles Tailoring") >= 58 |or |only if KulTiran
step
label "Collect_Vibrant_Wildertcloth_Bolt_53"
collect 2 Vibrant Wildercloth Bolt##193929 |or
_Or_
collect 2 Vibrant Wildercloth Bolt##193930 |or
_Or_
collect 2 Vibrant Wildercloth Bolt##193931 |or
|tip Create it with Tailoring or purchase them from the auction house.
|tip Any quality will work, you only need one.
'|complete skill("Dragon Isles Tailoring") >= 53 |or |only if default
'|complete skill("Dragon Isles Tailoring") >= 58 |or |only if KulTiran
step
label "Collect_Spool_of_Wilderthread_53"
collect 7 Spool of Wilderthread##192095 |or
_Or_
collect 7 Spool of Wilderthread##192096 |or
_Or_
collect 7 Spool of Wilderthread##192097 |or
|tip You created these in a previous step. |notinsticky
|tip Any quality will work, you only need one. |notinsticky
'|complete skill("Dragon Isles Tailoring") >= 53 |or |only if default
'|complete skill("Dragon Isles Tailoring") >= 58 |or |only if KulTiran
step
create 1 Surveyor's Seasoned Hood##395807,Dragon Isles Tailoring,1 total |goto Valdrakken/0 31.96,67.25 |q 72507 |future
|tip You must be standing near a Tailor's Work Table to craft this.
step
create 1 Vibrant Spellthread##376538,Dragon Isles Tailoring,1 total |goto Valdrakken/0 31.96,67.25 |q 71824 |future
|tip You must be standing near a Tailor's Work Table to craft this.
stickystart "Collect_Spool_of_Wilderthread_65"
step
collect 250 Wildercloth##193922 |or
|tip Farm them from humanoid enemies in Dragon Isles zones or purchase them from the auction house.
|tip You can skip this and finish leveling to 100 slower with crafting order to save gold if you'd like. |only if default
|tip You can skip this and finish leveling to 105 slower with crafting order to save gold if you'd like. |only if KulTiran
'|complete skill("Dragon Isles Tailoring") >= 65 |or |only if default
'|complete skill("Dragon Isles Tailoring") >= 70 |or |only if KulTiran
step
label "Collect_Spool_of_Wilderthread_65"
collect 175 Spool of Wilderthread##192095 |or
_Or_
collect 175 Spool of Wilderthread##192096 |or
_Or_
collect 175 Spool of Wilderthread##192097 |or
|tip Any quality will work, you only need one. |notinsticky
|tip Create them with Tailoring or purchase them from the auction house.
|tip You can skip this and finish leveling to 100 slower with crafting order to save gold if you'd like. |only if default
|tip You can skip this and finish leveling to 105 slower with crafting order to save gold if you'd like. |only if KulTiran
'|complete skill("Dragon Isles Tailoring") >= 65 |or |only if default
'|complete skill("Dragon Isles Tailoring") >= 70 |or |only if KulTiran
step
create Surveyor's Seasoned Hood##395807,Dragon Isles Tailoring,65 |goto Valdrakken/0 31.96,67.25 |or |only if default
create Surveyor's Seasoned Hood##395807,Dragon Isles Tailoring,70 |goto Valdrakken/0 31.96,67.25 |or |only if KulTiran
|tip You must be standing near a Tailor's Work Table to craft this.
|tip You can skip this and finish leveling to 100 slower with crafting order to save gold if you'd like. |only if default
|tip You can skip this and finish leveling to 105 slower with crafting order to save gold if you'd like. |only if KulTiran
step
Reach Skill Level 100 in Dragon Isles Tailoring |skill Dragon Isles Tailoring,100 |goto Valdrakken/0 31.96,67.25 |or |only if default
Reach Skill Level 105 in Dragon Isles Tailoring |skill Dragon Isles Tailoring,105 |goto Valdrakken/0 31.96,67.25 |or |only if KulTiran
|tip From this point, it becomes very difficult to continue gaining points.
|tip Your best path is the Crafting Order system in Valdrakken to craft items for other players with provided materials.
|tip The only recipe that doesn't require BoP materials is Master's Wildercloth Fishing Cap from Cataloger Jakes in Dragonscale Base Camp at renown level 15 with Dragonscale Expedition.
]])
ZGV.BETAEND()
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Leveling Guides\\Tailoring Knowledge Treasures",{
author="support@zygorguides.com",
description="\nThis guide will walk you through collecting one-time treasures that grant Knowledge Points.",
startlevel=60.0,
condition_end=function() return completedallq(70302,70304,70295,70303,70284,70267,70288,70372) end,
condition_suggested=function() return skill('Dragon Isles Tailoring') >= 25 and not completedallq(70302,70304,70295,70303,70284,70267,70288,70372) end,
},[[
step
talk Threadfinder Pax##195850
Train Tailoring |skillmax Tailoring,300 |goto Valdrakken/0 32.13,66.24
step
talk Threadfinder Pax##195850
Train Dragon Isles Tailoring |skillmax Dragon Isles Tailoring,100 |goto Valdrakken/0 32.13,66.24
step
talk Threadfinder Pax##195850
Train Dragon Isles Cloth Scavenging |complete knowspell(392396) |goto Valdrakken/0 32.13,66.24
step
Reach Skill Level 25 in Dragon Isles Tailoring |skill Dragon Isles Tailoring,25 |goto 36.96,47.08 |or
|tip You must be at least skill level 25 to interact with profession treasures.
|tip Use the "Dragon Isles Tailoring 1-100" 1-100 guide to accomplish this.
Click Here to Load the "Dragon Isles Tailoring 1-100" Guide |confirm |loadguide "Profession Guides\\Tailoring\\Leveling Guides\\Dragon Isles Tailoring 1-100" |or
step
click Mysterious Banner##380604
|tip On the dome of the tower.
collect Mysterious Banner##198699 |goto The Waking Shores/0 74.73,37.91 |q 70302 |future
step
use the Mysterious Banner##198699
Study the Mysterious Banner |complete itemcount(198699) == 0
step
click Itinerant Singed Fabric##380607
|tip Hanging from the branch of the tree.
|tip You will need to be carefule flying if Dragonbane Keep is not controlled to avoid cannons.
collect Itinerant Singed Fabric##198702 |goto The Waking Shores/0 25.11,69.72 |q 70304 |future
step
use the Itinerant Singed Fabric##198702
Study the Itinerant Singed Fabric |complete itemcount(198702) == 0
step
click Battle Hardened Centaur Carpet##380597
|tip This is surrounded by elites, so you may need help.
collect Noteworthy Scrap of Carpet##198692 |goto Ohn'ahran Plains/0 35.34,40.12 |q 70295 |future
step
use the Noteworthy Scrap of Carpet##198692
Study the Noteworthy Scrap of Carpet |complete itemcount(198692) == 0
step
click Catnip Frond##380599+
|tip They look like tlal stringy plants outlined in purple around this area.
collect 5 Catnip Leaf##198688 |q 70303 |future
step
use the Catnip Leaf##198688
|tip Use it near the Playful Prowler.
click Silky Surprise##380608
collect Silky Surprise##201020 |goto Ohn'ahran Plains/0 65.59,53.01 |q 70303 |future
step
use the Silky Surprise##201020
Study the Silky Surprise |complete itemcount(201020) == 0
step
click Decaying Brackenhide Blanket##380583
|tip It looks like a blanket hanging inside the hut.
collect Decaying Brackenhide Blanket##198680 |goto The Azure Span/0 16.21,38.92 |q 70284 |future
step
use the Decaying Brackenhide Blanket##198680
Study the Decaying Brackenhide Blanket |complete itemcount(198680) == 0
step
Enter the building |goto The Azure Span/0 41.00,55.03 < 7 |walk
click Intriguing Bolt of Blue Cloth##380549
|tip Inside the building up the stairs to the left.
collect Intriguing Bolt of Blue Cloth##198662 |goto The Azure Span/0 40.67,54.93 |q 70267 |future
step
use the Intriguing Bolt of Blue Cloth##198662
Study the Intriguing Bolt of Blue Cloth |complete itemcount(198662) == 0
step
click Miniature Bronze Dragonflight Banner##380588
|tip The tiny banner on top of the sand on the platform.
collect Miniature Bronze Dragonflight Banner##198684 |goto Thaldraszus/0 60.41,79.67 |q 70288 |future
step
use the Miniature Bronze Dragonflight Banner##198684
Study the Miniature Bronze Dragonflight Banner |complete itemcount(198684) == 0
step
click Ancient Dragonweave Loom
|tip Inside the building.
|tip This begins a minigame.
|tip Connect the threads to the gem in the center to collect the treasure.
|tip Clicking spools rotates the thread.
|tip Clicking triangles that intercept the thread will connect them to other nearby parts.
|tip Click each spool until it connects to something, then click what it connects to until that connects to something else.
|tip Keep doing this with each color until it connects to the center.
|tip Triangles will only allow one color of thread to connect to them, so you can use this to your advantage.
|tip Click the center gem when the threads all connect to it to complete the stage.
collect Ancient Dragonweave Bolt##201019 |goto Thaldraszus/0 58.69,45.90 |q 70372 |future
step
use the Ancient Dragonweave Bolt##201019
Study the Ancient Dragonweave Bolt |complete itemcount(201019) == 0
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Farming Guides\\Tattered Wildercloth",{
author="support@zygorguides.com",
description="\nThis guide will walk you through gathering Tattered Wildercloth.",
startlevel=60.0,
},[[
step
Kill Brinetooth enemies around this area
collect Tattered Wildercloth##193050 |n |goto The Azure Span/0 10.08,43.41
confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Farming Guides\\Wildercloth",{
author="support@zygorguides.com",
description="\nThis guide will walk you through gathering Wildercloth.",
startlevel=60.0,
},[[
step
Kill Brinetooth enemies around this area
collect Wildercloth##193922 |n |goto The Azure Span/0 10.08,43.41
confirm
]])
