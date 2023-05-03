local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end

---------------------
------ Alchemy ------
---------------------



-------------------------
------ Archaeology ------
-------------------------



---------------------------
------ Blacksmithing ------
---------------------------

ZygorGuidesViewer:RegisterInclude("trainer_Blacksmithing_Shatt",[[
		talk Kradu Grimblade##20124 |goto Shattrath City 69.4,43.3
]])

---------------------
------ Cooking ------
---------------------

ZygorGuidesViewer:RegisterInclude("Pandarian_Cooking_1-520",[[
		talk Sungshin Ironpaw##64231
		skillmax Cooking,75 |goto Valley of the Four Winds 53.58,51.23
	// Cooking 30
	step
		talk Sungshin Ironpaw##64231
		accept So You Want to Be a Chef...##31281 |goto Valley of the Four Winds 53.58,51.23
	step
		talk Sungshin Ironpaw##64231
		learn Sliced Peaches##125117 |goto Valley of the Four Winds 53.58,51.23 |complete _G.IsSpellKnown(125117) or skill("Cooking")>=30
	step
		talk Sungshin Ironpaw##64231
		buy 6 Pandaren Peach##74660 |goto Valley of the Four Winds 53.58,51.23 |complete skill("Cooking")>=30 or itemcount(74660)>=6
	step
		#include cooking_fire
		create 6 Sliced Peaches##125117,Cooking,5 total |q 31281/1
	step
		collect 6 Sliced Peaches##86057 |q 31281/2
		skill Cooking,30
		|tip You may need to buy another peach if your cooking skill is not 30 yet.
	step
		talk Sungshin Ironpaw##64231
		turnin So You Want to Be a Chef...##31281 |goto Valley of the Four Winds 53.58,51.23
	// Cooking 60 or itemcount() > 5
	step
		talk Sungshin Ironpaw##64231
		learn Perfectly Cooked Instant Noodles##125067 |goto Valley of the Four Winds 53.58,51.23 |complete _G.IsSpellKnown(125067) or skill("Cooking")>=60
		only if skill('Cooking')<=59
	step
		talk Sungshin Ironpaw##64231
		buy 6 Instant Noodles##74854 |goto Valley of the Four Winds 53.58,51.23 |complete skill("Cooking")>=60 or itemcount(74854)>=6
	step
		create 6 Perfectly Cooked Instant Noodles##125067,Cooking,60
	// Cooking 90
	step
		talk Sungshin Ironpaw##64231
		skillmax Cooking,150 |goto Valley of the Four Winds 53.58,51.23
		only if skill('Cooking')<=89
	step
		talk Sungshin Ironpaw##64231
		learn Toasted Fish Jerky##124225 |goto Valley of the Four Winds 53.58,51.23
	step
		Equip your Fishing Pole |use Fishing Pole##6256
		Fish here, you can also fish along the beach |cast Fishing##131474
		collect 6 Golden Carp##74866 |goto Valley of the Four Winds 58.9,47.1 |complete skill("Cooking")>=90 or itemcount(74866)>=6
	step
		#include cooking_fire
		create Toasted Fish Jerky##124225,Cooking,90
	// Cooking 120
	step
		talk Sungshin Ironpaw##64231
		learn Dried Needle Mushrooms##124227 |goto Valley of the Four Winds 53.58,51.23
		only if skill('Cooking')<=119
	step
		talk Sungshin Ironpaw##64231
		buy 6 Needle Mushrooms##85583 |goto Valley of the Four Winds 53.58,51.23 |complete skill("Cooking")>=120 or itemcount(85583)>=6
	step
		create Dried Needle Mushrooms##124227,Cooking,120
	// Cooking 150
	step
		talk Sungshin Ironpaw##64231
		learn Pounded Rice Cake##124223 |goto Valley of the Four Winds 53.58,51.23
		only if skill('Cooking')<=149
	step
		talk Sungshin Ironpaw##64231
		buy 6 Rice##74851 |goto Valley of the Four Winds 53.58,51.23 |complete skill("Cooking")>=150 or itemcount(74851)>=6
	step
		talk Sungshin Ironpaw##64231
		create Pounded Rice Cake##124223,Cooking,150 |goto Valley of the Four Winds 53.58,51.23
	// Cooking 180
	step
		talk Sungshin Ironpaw##64231
		skillmax Cooking,225 |goto Valley of the Four Winds 53.58,51.23
	step
		talk Sungshin Ironpaw##64231
		learn Yak Cheese Curds##124224 |goto Valley of the Four Winds 53.58,51.23
		only if skill('Cooking')<=179
	step
		talk Sungshin Ironpaw##64231
		buy 6 Yak Milk##74852 |goto Valley of the Four Winds 53.58,51.23 |complete skill("Cooking")>=180 or itemcount(74852)>=6
	step
		talk Sungshin Ironpaw##64231
		create Yak Cheese Curds##124224,Cooking,180 |goto Valley of the Four Winds 53.58,51.23
	// Cooking 210
	step
		talk Sungshin Ironpaw##64231
		learn Dried Peaches##124226 |goto Valley of the Four Winds 53.58,51.23
		only if skill('Cooking')<=209
	step
		talk Sungshin Ironpaw##64231
		buy 6 Pandaren Peach##74660 |goto Valley of the Four Winds 53.58,51.23 |complete skill("Cooking")>=210 or itemcount(74660)>=6
	step
		talk Sungshin Ironpaw##64231
		create Dried Peaches##124226,Cooking,210 |goto Valley of the Four Winds 53.58,51.23
	// Cooking 240
	step
		skillmax Cooking,300
		only if skill('Cooking')<=225
	step
		talk Sungshin Ironpaw##64231
		learn Boiled Silkworm Pupa##124228 |goto Valley of the Four Winds 53.58,51.23
	step
		talk Sungshin Ironpaw##64231
		buy 6 Silkworm Pupa##85584 |goto Valley of the Four Winds 53.58,51.23 |complete skill("Cooking")>=240 or itemcount(85584)>=6
	step
		talk Sungshin Ironpaw##64231
		create Boiled Silkworm Pupa##124228,Cooking,240 |goto Valley of the Four Winds 53.58,51.23
	// Cooking 270
	step
		talk Sungshin Ironpaw##64231
		learn Roasted Barley Tea##125078 |goto Valley of the Four Winds 53.58,51.23
		only if skill('Cooking')<=269
	step
		talk Sungshin Ironpaw##64231
		buy 6 Barley##74832 |goto Valley of the Four Winds 53.58,51.23 |complete skill("Cooking")>=270 or itemcount(74832)>=6
	step
		talk Sungshin Ironpaw##64231
		create Roasted Barley Tea##125078,Cooking,270 |goto Valley of the Four Winds 53.58,51.23
	// Cooking 300
	step
		talk Sungshin Ironpaw##64231
		learn Golden Carp Consomme##104237 |goto Valley of the Four Winds 53.58,51.23
		only if skill('Cooking')<=299
	step

		Equip your Fishing Pole |use Fishing Pole##6256
		Fish here, you can also fish along the beach|cast Fishing##131474 |goto Valley of the Four Winds 58.9,47.1
		collect 24 Golden Carp##74866 |only if skill('Cooking')<=299 |complete skill("Cooking")>=300
		collect 12 Golden Carp##74866 |only if skill('Cooking')>=300 and skill('Cooking')<=329 |complete skill("Cooking")>=300
	step
		#include cooking_fire
		create Golden Carp Consomme##104237,Cooking,300
	// Cooking 330
	step
		talk Sungshin Ironpaw##64231
		skillmax Cooking,375 |goto Valley of the Four Winds 53.58,51.23
	step
		talk Sungshin Ironpaw##64231
		learn Fish Cake##104297 |goto Valley of the Four Winds 53.58,51.23
		only if skill('Cooking')<=329
	step
		Equip your Fishing Pole |use Fishing Pole##6256
		Fish here, you can also fish along the beach |cast Fishing##131474 |goto Valley of the Four Winds 58.9,47.1
		collect 12 Golden Carp##74866 |only if skill('Cooking')>=300 and skill('Cooking')<=329 |complete skill("Cooking")>=300
	step
		talk Sungshin Ironpaw##64231
		create Fish Cake##104297,Cooking,330 |goto Valley of the Four Winds 53.58,51.23
	// Cooking 360
	step
		talk Sungshin Ironpaw##64231
		learn Blanched Needle Mushrooms##124233 |goto Valley of the Four Winds 53.58,51.23
		only if skill('Cooking')<=359
	step
		talk Sungshin Ironpaw##64231
		buy 12 Needle Mushrooms##85583 |goto Valley of the Four Winds 53.58,51.23 |complete skill("Cooking")>=360 or itemcount(85583)>=12
	// Cooking 390
	step
		create 6 Blanched Needle Mushrooms##124233,Cooking,360
	step
		talk Sungshin Ironpaw##64231
		skillmax Cooking,450 |goto Valley of the Four Winds 53.58,51.23
	step
		talk Sungshin Ironpaw##64231
		learn Red Bean Bun##124229 |goto Valley of the Four Winds 53.58,51.23
		only if skill('Cooking')<=389
	step
		talk Sungshin Ironpaw##64231
		buy 6 Red Beans##85585 |goto Valley of the Four Winds 53.58,51.23 |complete skill("Cooking")>=390 or itemcount(85585)>=6
	step
		talk Sungshin Ironpaw##64231
		create Red Bean Bun##124229,Cooking,390 |goto Valley of the Four Winds 53.58,51.23
	// Cooking 420
	step
		talk Sungshin Ironpaw##64231
		learn Skewered Peanut Chicken##124234 |goto Valley of the Four Winds 53.58,51.23
		only if skill('Cooking')<=419
	step
		talk Sungshin Ironpaw##64231
		buy 6 Farm Chicken##74659 |goto Valley of the Four Winds 53.58,51.23 |complete skill("Cooking")>=420 or itemcount(74659)>=6
	step
		#include cooking_fire
		create Skewered Peanut Chicken##124234,Cooking,420
	// Cooking 450 |complete skill("Cooking")>=270
	step
		talk Sungshin Ironpaw##64231
		learn Green Curry Fish##124231 |goto Valley of the Four Winds 53.58,51.23
	step
		talk Sungshin Ironpaw##64231
		buy 6 Rice##74851 |goto Valley of the Four Winds 53.58,51.23 |complete skill("Cooking")>=450 or itemcount(74851)>=6
	step
		Equip your Fishing Pole |use Fishing Pole##6256
		Fish here, you can also fish along the beach |cast Fishing##131474 |goto Valley of the Four Winds 58.9,47.1
		collect 12 Golden Carp##74866 |only if skill('Cooking')<=449
	step
		#include cooking_fire
		create Green Curry Fish##124231,Cooking,450
	// Cooking 480
	step
		talk Sungshin Ironpaw##64231
		skillmax Cooking,525 |goto Valley of the Four Winds 53.58,51.23
	step
		talk Sungshin Ironpaw##64231
		learn Peach Pie##124232 |goto Valley of the Four Winds 53.58,51.23
		only if skill('Cooking')<=479
	step
		talk Sungshin Ironpaw##64231
		buy 12 Pandaren Peach##74660 |goto Valley of the Four Winds 53.58,51.23 |complete skill("Cooking")>=480 or itemcount(74660)>=12
	step
		talk Sungshin Ironpaw##64231
		create Peach Pie##124232,Cooking,480 |goto Valley of the Four Winds 53.58,51.23
	// Cooking 495
	step
		talk Sungshin Ironpaw##64231
		learn Tangy Yogurt##124230 |goto Valley of the Four Winds 53.58,51.23
		only if skill('Cooking')<=494
	step
		talk Sungshin Ironpaw##64231
		buy 3 Pandaren Peach##74660 |goto Valley of the Four Winds 53.58,51.23 |complete skill("Cooking")>=495 or itemcount(74660)>=3
		buy 3 Yak Milk##74852 |goto Valley of the Four Winds 53.58,51.23 |complete skill("Cooking")>=495 or itemcount(74852)>=3
	step
		talk Sungshin Ironpaw##64231
		create 6 Tangy Yogurt##124230,Cooking,495 |goto Valley of the Four Winds 53.58,51.23
	// Cooking 510
	step
		talk Sungshin Ironpaw##64231
		learn Pearl Milk Tea##125080 |goto Valley of the Four Winds 53.58,51.23
		only if skill('Cooking')<=509
	step
		talk Sungshin Ironpaw##64231
		buy 6 Yak Milk##74852 |goto Valley of the Four Winds 53.58,51.23 |complete skill("Cooking")>=510 or itemcount(74852)>=6
	step
		talk Sungshin Ironpaw##64231
		create Pearl Milk Tea##125080,Cooking,510 |goto Valley of the Four Winds 53.58,51.23
	// Cooking
	step
		talk Sungshin Ironpaw##64231
		learn Wildfowl Ginseng Soup##125121 |goto Valley of the Four Winds 53.58,51.23
		only if skill('Cooking')<=519
	step
		talk Sungshin Ironpaw##64231
		buy 2 Ginseng##74845 |goto Valley of the Four Winds 53.58,51.23 |complete skill("Cooking")>=520 or itemcount(74845)>=2
		only if skill('Cooking')<=519
	step
		Kill Glade mobs and Carp Hunters
		You canfind Carp Hunters at this location |goto Valley of the Four Winds 54.81,36.81
		collect 15 Wildfowl Breast##74839 |goto Krasarang Wilds 64.6,29.3 |complete skill("Cooking")>=520 or itemcount(74839)>=15
		only if skill('Cooking')<=519
	step
		talk Sungshin Ironpaw##64231
		create Wildfowl Ginseng Soup##125121,Cooking,520 |goto Valley of the Four Winds 53.58,51.23
]])

ZygorGuidesViewer:RegisterInclude("Cooking_PreMasteries",[[
		talk Sungshin Ironpaw##64231
		accept Ready for Greatness##31302 |goto Valley of the Four Winds 53.7,51.0
	step
		talk Sungshin Ironpaw##64231
		learn Rice Pudding##125122
	step
		talk Sungshin Ironpaw##64231
		buy 5 Rice##74851 |q 31302 |goto 53.6,51.2 |complete itemcount(74851)>=5 or completedq(31302)
		buy 5 Yak Milk##74852 |q 31302 |goto 53.6,51.2 |complete itemcount(74852)>=5 or completedq(31302)
	step
		#include cooking_fire
		create 5 Rice Pudding##125122,Cooking,5 total |q 31302/1
		collect 5 Rice Pudding##86069 |q 31302/2
	step
		talk Sungshin Ironpaw##64231
		turnin Ready for Greatness##31302 |goto 53.7,51.0
		accept Way of the Grill##31311 |goto 53.7,51.0
		accept Way of the Wok##31470 |goto 53.7,51.0
		accept Way of the Pot##31472 |goto 53.7,51.0
		accept Way of the Steamer##31475 |goto 53.7,51.0
		accept Way of the Oven##31478 |goto 53.7,51.0
		accept Way of the Brew##31479 |goto 53.7,51.0
	step
		talk Sungshin Ironpaw##64231
		buy 1 Ginseng##74845 |q 31480 |goto 53.7,51.0 |complete itemcount(74845)>=1 or completedq(31480)
	step
		talk Nam Ironpaw##64395
		buy 1 Sack of Raw Tiger Steaks##87701 |n
		use Sack of Raw Tiger Steaks##87701
		collect 5 Raw Tiger Steak##74833 |q 31311/1 |goto 53.5,51.2 |complete itemcount(74833)>=5 or completedq(31311)
	step
		talk Kol Ironpaw##58712
		turnin Way of the Grill##31311 |goto 53.0,51.3
		accept Strong as a Tiger##31467 |goto 53.0,51.3
	step
		talk Kol Ironpaw##58712
		learn Charbroiled Tiger Steak##104298 |q 31467/1 |goto 53.0,51.3 |complete _G.IsSpellKnown(104298) or completedq(31467)
	step
		#include cooking_fire
		create Charbroiled Tiger Steak##104298,Cooking,535
		Create #5# Charboiled Tiger Steaks |q 31467/2
	step
		talk Kol Ironpaw##58712
		turnin Strong as a Tiger##31467 |goto 53.0,51.3
	step
		talk Bobo Ironpaw##58717
		turnin Way of the Brew##31479 |goto 53.2,52.2
		accept Have a Drink##31480 |goto 53.2,52.2
	step
		talk Bobo Ironpaw##58717
		learn Ginseng Tea##124052 |q 31480/1 |goto 53.0,51.3 |complete _G.IsSpellKnown(124052) or completedq(31480)
	step
		#include cooking_fire
		create 1 Ginseng Tea##124052,Way of the Brew,531
		collect 1 Ginseng Tea##75026 |q 31480/2
	step
		talk Bobo Ironpaw##58717
		turnin Have a Drink##31480 |goto 53.2,52.2
	step
		talk Nam Ironpaw##64395
		buy 1 Sack of Juicycrunch Carrots##87707 |n
		Use the Sack of Juicycrunch Carrots |use Sack of Juicycrunch Carrots##87707
		collect 5 Juicycrunch Carrot##74841 |q 31470/1 |goto 53.5,51.2
	step
		talk Anthea Ironpaw##58713
		turnin Way of the Wok##31470 |goto 52.7,52.0
		accept Agile as a Tiger##31471 |goto 52.7,52.0
	step
		talk Anthea Ironpaw##58713
		learn Sauteed Carrots##104301 |q 31471/1 |goto 52.7,52.0 |complete _G.IsSpellKnown(104301) or completedq(31471)
	step
		#include cooking_fire
		create 5 Sauteed Carrots##104301,Way of the Wok,535
		Cook #5# Sauteed Carrots |q 31471/2
	step
		talk Anthea Ironpaw##58713
		turnin Agile as a Tiger##31471 |goto 52.7,52.0
	step
		talk Nam Ironpaw##64395
		buy 1 Sack of Jade Lungfish##87721 |n
		Use the Sack of Jade Lungfish |use Sack of Jade Lungfish##87721
		collect 5 Jade Lungfish##74856 |q 31472/1 |goto 53.5,51.2

		buy 1 Sack of Mantis Shrimp##87722 |n
		Use the Sack of Mantis Shrimp |use Sack of Mantis Shrimp##87722
		collect 5 Giant Mantis Shrimp##74857 |q 31475/1 |goto 53.5,51.2

		buy 1 Sack of Wildfowl Breasts##87705 |n
		Use the Sack of Wildfowl Breasts |use Sack of Wildfowl Breasts##87705
		collect 5 Wildfowl Breast##74839 |q 31478/1 |goto 53.5,51.2
	step
		talk Jian Ironpaw##58716
		turnin Way of the Oven##31478 |goto 53.4,51.6
		accept Endurance##31477 |goto 53.4,51.6
	step
		talk Jian Ironpaw##58716
		learn Wildfowl Roast##104310 |q 31477/1 |goto 53.4,51.6
	step
		#include cooking_fire
		create 5 Wildfowl Roast##104310,Way of the Oven,535
		Cook #5# Wildfowl Roasts |q 31477/2
	step
		talk Jian Ironpaw##58716
		turnin Endurance##31477 |goto 53.4,51.6
	step
		talk Yan Ironpaw##58715
		turnin Way of the Steamer##31475 |goto 52.5,51.8
		accept The Spirit of Cooking##31476 |goto 52.5,51.8
	step
		talk Yan Ironpaw##58715
		learn Shrimp Dumplings##104307 |q 31476/1 |goto 52.5,51.8
	step
		#include cooking_fire
		create 5 Shrimp Dumplings##104307,Way of the Steamer,535
		Cook #5# Shrimp Dumplings |q 31476/2
	step
		talk Yan Ironpaw##58715
		turnin The Spirit of Cooking##31476 |goto 52.5,51.8
	step
		talk Mei Mei Ironpaw##58714
		turnin Way of the Pot##31472 |goto 52.6,51.5
		accept The Soup of Contemplation##31474 |goto 52.6,51.5
	step
		talk Mei Mei Ironpaw##58714
		learn Swirling Mist Soup##104304 |q 31474/1 |goto 52.6,51.5
	step
		#include cooking_fire
		create 5 Swirling Mist Soup##104304,Way of the Pot,535
		Cook #5# Swirling Mist Soup |q 31474/2
	step
		talk Mei Mei Ironpaw##58714
		turnin The Soup of Contemplation##31474 |goto 52.6,51.5
	step
		talk Nam Ironpaw##64395
		accept Preserving Freshness##31536 |goto 53.5,51.2
	step
		talk Merchant Cheng##64940
		buy 1 Empty Raw Tiger Steak Container##87658 |q 31536/1 |goto 53.0,52.4
	step
	label "final_quest"
		talk Nam Ironpaw##64395
		turnin Preserving Freshness##31536 |goto 53.5,51.2
]])

ZygorGuidesViewer:RegisterInclude("Cooking_520-600",[[
		talk Sungshin Ironpaw##64231
		skillmax Cooking,525 |goto Valley of the Four Winds/0 53.6,51.2
	step
		talk Sungshin Ironpaw##64231
		learn Rice Pudding##125122 |goto Valley of the Four Winds/0 53.6,51.2 |complete _G.IsSpellKnown(125122) or skill("Cooking")>=530
	step
		talk Sungshin Ironpaw##64231
		collect 2 Rice##74851 |goto Valley of the Four Winds/0 53.6,51.2 |complete skill("Cooking")>=530
		collect 2 Yak Milk##74852 |goto Valley of the Four Winds/0 53.6,51.2 |complete skill("Cooking")>=530
	step
		create Rice Pudding##125122,Cooking,530
		#include "Cooking_PreMasteries"
	step
		Before you continue, _open your cooking window_ so the guide can determine what level your cooking mastery is. |cast Cooking##2550
		confirm always
	step
		talk Bobo Ironpaw##58717
		learn Ginseng Tea##124052 |goto Valley of the Four Winds 53.0,52.0
	step
		talk Sungshin Ironpaw##64231
		buy 19 Ginseng##74845 |goto Valley of the Four Winds 53.6,51.2 |complete itemcount(74845)>=19 or skill("Way of the Brew")>=550
	step
		#include cooking_fire
		create Ginseng Tea##124052,Cooking,19 total |n
		skill Way of the Brew,550
	step
		talk Bobo Ironpaw##58717
		learn Jade Witch Brew##124053 |goto Valley of the Four Winds 53.2,52.2
	step
		You will need _11 Ironpaw Tokens_ in order to reach 600 Cooking
		talk Merchant Cheng##64940
		buy 9 Empty Raw Tiger Steak Container##87658 |goto Valley of the Four Winds/0 53.0,52.4 |complete itemcount(87658)>=6 or skill("Way of the Brew")>=600
	step
		kill Primal Stalker##72805+, Crag Stalker##72807+
		map Timeless Isle/0
		path follow loose; ants curved; loop; dist 50
		path	49.7,48.3	50.0,53.7	50.0,59.4
		path	50.6,64.6	53.5,68.6	58.1,67.2
		path	62.8,59.3	61.5,54.2	57.4,51.9
		path	56.3,45.5
		collect 120 Raw Tiger Steak##74833 |n
		|tip You can also buy these from the Auction House.
		use Empty Raw Tiger Steak Container##87658
		collect 9 Bundle of Groceries##87557 |complete itemcount(87557)>=9 or skill("Way of the Brew")>=576
	step
		talk Nam Ironpaw##64395
		accept Replenishing the Pantry##31535 |complete "incomplete" |or
		earn 9 Ironpaw Tokens##402 |goto Valley of the Four Winds/0 53.5,51.2 |or
	step
	label "brew1"
		talk Nam Ironpaw##64395
		buy Sack of Witchberries##87712 |n
		use Sack of Witchberries##87712
		collect 75 Witchberries##74846 |goto Valley of the Four Winds/0 53.5,51.2 |complete itemcount(74846)>=75 or skill("Way of the Brew")>=576
		|tip You can also buy these from the Auction House.
	step
		talk Nam Ironpaw##64395
		buy Sack of Jade Squash##87713 |n
		use Sack of Jade Squash##87713
		collect 75 Jade Squash##74847 |goto Valley of the Four Winds/0 53.5,51.2 |complete itemcount(74847)>=75 or skill("Way of the Brew")>=576
		|tip You can also buy these from the Auction House.
	step
		#include cooking_fire
		create Jade Witch Brew##124053,Way of the Brew,576
	step
		You will need _65 Striped Melon_ as well as _13 Jade Lungfish_
		Click here to start farming for the _Iron Paw Tokens_ |confirm |complete skill("Way of the Brew")>=600
	step
		You will need _11 Ironpaw Tokens_ in order to reach 600 Cooking
		talk Merchant Cheng##64940
		buy 11 Empty Raw Tiger Steak Container##87658 |goto Valley of the Four Winds/0 53.0,52.4 |complete itemcount(87658)>=11 or skill("Way of the Brew")>=600
	step
		kill Primal Stalker##72805+, Crag Stalker##72807+
		map Timeless Isle/0
		path follow loose; ants curved; loop; dist 50
		path	49.7,48.3	50.0,53.7	50.0,59.4
		path	50.6,64.6	53.5,68.6	58.1,67.2
		path	62.8,59.3	61.5,54.2	57.4,51.9
		path	56.3,45.5
		collect 220 Raw Tiger Steak##74833 |n
		|tip You can also buy these from the Auction House.
		use Empty Raw Tiger Steak Container##87658
		collect 11 Bundle of Groceries##87557 |complete itemcount(87557)>=11 or skill("Way of the Brew")>=600
	step
		talk Nam Ironpaw##64395
		accept Replenishing the Pantry##31535 |complete "incomplete" |or
		earn 11 Ironpaw Tokens##402 |goto Valley of the Four Winds/0 53.5,51.2 |or
	step
		talk Nam Ironpaw##64395
		buy 3 100 Year Soy Sauce##74853 |complete itemcount(74853)>=3 or skill("Way of the Brew")>=600
		|tip You can also buy these from the Auction House.
	step
		talk Nam Ironpaw##64395
		buy Sack of Witchberries##87712 |n
		use Sack of Witchberries##87712
		collect 100 Witchberries##74846 |goto Valley of the Four Winds/0 53.5,51.2 |complete itemcount(74846)>=100 or skill("Way of the Brew")>=600
		|tip You can also buy these from the Auction House.
	step
		talk Nam Ironpaw##64395
		buy Sack of Green Cabbage##87706 |n
		use Sack of Green Cabbages##87706
		collect 100 Green Cabbage##74840 |goto Valley of the Four Winds/0 53.5,51.2 |complete itemcount(74840)>=100 or skill("Way of the Brew")>=600
		|tip You can also buy these from the Auction House.
	step
		talk Bobo Ironpaw##58717
		learn Great banquet of the Brew##125603 |goto Valley of the Four Winds 53.0,52.0
	step
		#include "cooking_fire"
		create Great banquet of the Brew##125603,Way of the Brew,600
]])

ZygorGuidesViewer:RegisterInclude("cooking_fire",[[
		Stand next to a fire, or create one yourself |cast Cooking fire##818
]])

ZygorGuidesViewer:RegisterInclude("Outland_Cooking_Trainer",[[
		talk Jack Trapper##19185 |goto Shattrath City/0 63.09,68.38
		|tip Inside the building.
]])

------------------------
------ Enchanting ------
------------------------



-------------------------
------ Engineering ------
-------------------------



-----------------------
------ First Aid ------
-----------------------



---------------------
------ Fishing ------
---------------------



-----------------------
------ Herbalism ------
-----------------------

ZygorGuidesViewer:RegisterInclude("follow_path_herbs",[[
		Zoom your minimap all the way out and track herbs
		Follow the path and gather from yellow nodes on your minimap
]])

ZygorGuidesViewer:RegisterInclude("FW_DG_Path",[[
	--Felweed // Dreaming Glory
	map Hellfire Peninsula
	path follow loose;loop;ants straight;dist 60
	path 80.6,79.9		73.3,67.0		68.6,76.9
	path 56.1,71.6		48.4,75.2		40.7,84.5
	path 36.6,67.4		32.9,65.6		28.0,78.7
	path 22.9,67.5		13.7,63.0		13.5,38.7
	path 23.8,44.6		30.5,33.1		37.8,30.8
	path 55.8,31.1		67.1,27.3
]])

ZygorGuidesViewer:RegisterInclude("GC_TL_Path",[[
	--Goldclover // Tiger Lily
	map Borean Tundra
	path follow loose;loop;ants straight;dist 60
	path 51.9,47.7		53.7,43.4	53.2,38.8
	path 54.8,29.9		51.3,20.8	49.4,26.2
	path 42.9,41.3		36.5,54.9	44.1,64.2
	path 52.2,60.7		57.7,52.1
]])

ZygorGuidesViewer:RegisterInclude("GC_TL_AT_Path",[[
	--Goldclover // Tiger Lily // Adder's Tongue
	map Sholazar Basin
	path follow loose;loop;ants straight;dist 60
	path 32.0,58.2		36.1,65.3		43.9,57.7
	path 44.5,63.9		39.5,66.3		40.4,71.7
	path 32.8,82.3		36.1,84.4		42.6,76.0
	path 46.8,62.5		51.0,62.0		60.0,73.9
	path 55.7,85.9		66.4,82.3		69.3,65.8
	path 55.2,57.1		48.9,55.0		55.4,48.1
	path 58.1,38.3		34.8,31.4		30.1,43.4
	path 32.1,48.5		26.6,55.4		23.7,60.3
]])

ZygorGuidesViewer:RegisterInclude("Terocone_Path",[[
	--Terocone
	map Terokkar Forest
	path follow loose;loop;ants straight;dist 60
	path 34.4,8.0 		37.5,16.1		41.6,19.9
	path 44.5,11.5		51.0,21.0		48.4,26.9
	path 60.2,22.5		73.1,45.3		61.5,48.6
	path 54.0,37.1		48.0,33.5		39.0,34.8
	path 39.2,44.4		47.3,50.0		47.0,79.8
	path 33.5,76.9		19.6,77.8		21.5,60.7
	path 31.4,39.9		37.4,30.1
]])

ZygorGuidesViewer:RegisterInclude("NB_DG_Path",[[
	--Netherbloom // Dreaming Glory
	map Netherstorm
	path follow loose;loop;ants straight;dist 60
	path 31.5,51.4		25.6,63.5		19.5,67.7
	path 20.3,77.1		40.2,77.2		46.2,82.6
	path 48.0,86.9		58.9,88.8		61.4,79.4
	path 51.6,75.7		46.0,72.1		34.5,55.8
	path 40.1,52.9		50.2,69.0		67.1,60.7
	path 50.8,54.8		46.5,47.1		55.0,39.9
	path 58.5,47.2		62.7,50.3		73.4,40.5
	path 73.2,35.2		62.1,30.5		55.6,31.6
	path 49.8,35.9		48.8,25.5		57.1,24.3
	path 55.5,17.3		49.7,17.4		48.9,12.5
	path 44.9,19.8		42.5,16.2		39.5,15.7
	path 35.7,19.8		32.1,29.2		38.5,42.4
	path 31.1,38.1		23.5,35.4		22.9,44.1
	path 30.2,43.3
]])

ZygorGuidesViewer:RegisterInclude("GC_DN_TL_Path",[[
	--Goldclover // Deadnettle // Tiger Lily
	map Howling Fjord
	path follow loose;loop;ants straight;dist 60
	path	70.1,47.3	75.5,50.8	80.5,46.2
	path	76.3,42.8	70.3,40.5	66.5,33.5
	path	70.5,32.4	73.6,26.7	69.8,19.2
	path	65.8,26.8	61.8,28.5	58.5,22.7
	path	50.2,16.6	48.7,21.2	26.5,7.9
	path	29.2,12.0	23.8,14.0	26.8,14.5
	path	27.2,20.8	29.0,22.2	27.1,29.6
	path	31.3,33.3	34.8,34.1	41.7,34.2
	path	42.1,27.7	46.3,31.5	47.1,29.0
	path	54.1,32.5	49.0,35.8	58.1,37.0
	path	58.3,40.1	43.3,44.1	40.9,40.2
	path	37.0,39.9	37.0,44.9	34.9,46.2
	path	46.4,54.3	45.9,50.2	51.1,48.3
	path	59.5,51.6	59.0,55.6	45.1,59.4
	path	48.7,62.7	46.8,71.6	52.8,71.5

	path	53.4,76.5	60.0,76.8	62.6,80.5
	path	64.8,67.6	67.9,59.7	65.8,72.5
	path	67.1,74.9	69.5,74.5	70.6,66.1
	path	76.4,67.9
]])

ZygorGuidesViewer:RegisterInclude("Tiger_Lily_Path",[[
	--Tiger Lily
	map Sholazar Basin
	path	68.7,66.6	69.4,68.5	71.0,70.3
	path	69.1,73.6	68.1,70.1	65.3,70.5
	path	67.1,75.2	65.3,75.6	61.5,71.2
	path	65.1,79.5	62.9,83.5	59.2,72.5
	path	57.5,83.3	60.1,85.3	51.6,86.5
	path	43.6,75.3	47.9,73.9	50.5,62.6
	path	47.9,60.1	46.2,63.1	46.9,65.5
	path	43.1,62.3	41.3,67.5	37.9,63.6
	path	37.7,66.2	29.8,66.8	31.9,70.1
	path	31.1,71.1	43.7,71.0	40.1,76.5
	path	43.3,77.4	42.5,83.0	41.0,83.9
	path	41.9,86.5	40.8,87.8	37.5,83.3
	path	35.2,87.1	35.2,83.4	28.8,84.8
	path	28.5,79.5	30.5,75.7	28.5,75.5
	path	26.6,77.6	21.6,63.7	22.4,60.3
	path	32.7,64.5	32.4,60.4	29.1,61.7
	path	32.7,64.5	32.4,60.4	29.1,61.7
	path	32.7,64.5	32.4,60.4	29.1,61.7
	path	25.3,59.0	21.5,56.3	25.7,55.9
	path	32.0,41.7	31.2,55.2	28.7,53.5
	path	28.5,60.1	35.2,60.7	35.5,58.7
	path	38.2,60.2	38.6,55.5	41.6,56.2
	path	41.2,58.8	43.5,59.5	49.5,52.3
	path	47.6,49.6	44.6,49.1	46.8,52.1
	path	45.5,51.6	39.6,35.8	33.9,31.6
	path	38.5,29.6	33.8,24.4	35.4,20.9
	path	40.6,26.0	39.9,21.1	43.9,23.5
	path	56.5,31.5	62.7,33.9	57.6,41.3
	path	59.3,42.1	59.6,45.1	57.7,47.2
	path	53.5,44.0	50.5,54.2	52.3,56.8
	path	56.6,54.5	55.6,49.9	64.2,46.4
	path	63.9,48.9
]])

ZygorGuidesViewer:RegisterInclude("T_Rose_Path",[[
	--Talandra's Rose
	map Zul'Drak
	path follow loose;loop;ants straight;dist 60
	path 21.3,84.1		31.2,68.2		39.3,63.7
	path 29.7,52.6		37.1,40.8		43.6,46.7
	path 43.0,62.9		50.7,62.4		58.2,73.5
	path 52.2,83.3		39.5,87.0
]])

ZygorGuidesViewer:RegisterInclude("IT_LB_Path",[[
	--Icethorn // Lichbloom
	map The Storm Peaks
	path follow loose;loop;ants straight;dist 60
	path 31.4,83.1		33.0,93.8		40.0,82.3
	path 52.2,69.5		56.9,71.0		63.0,59.6
	path 65.0,73.2		66.9,58.5		77.2,72.8
	path 77.0,61.3		72.8,53.1		70.9,47.2
	path 64.1,54.1		65.7,41.5		52.5,53.2
	path 47.7,36.0		34.6,40.4		30.4,50.5
	path 29.1,37.4		22.2,36.7		24.3,56.4
	path 30.7,64.5		24.6,72.5		36.3,72.7
]])

ZygorGuidesViewer:RegisterInclude("SV_CB_Path",[[
	--Stormvine // Cinderbloom
	map Mount Hyjal
	path follow loose;loop;ants straight;dist 60
	path 68.2,23.9		57.0,38.9		57.9,17.5
	path 51.5,16.9		52.6,35.5		48.7,36.5
	path 44.0,24.5		39.8,32.5		36.5,21.7
	path 32.3,25.2		34.6,36.9		43.5,42.6
	path 36.2,44.9		25.3,37.8		24.1,31.9
	path 11.8,31.6		19.0,58.5		25.6,62.0
	path 31.9,46.7		36.9,53.5		42.3,55.9
	path 33.8,65.0		31.3,76.5		33.8,98.2
	path 57.1,80.9		59.2,84.5		59.8,77.8
	path 55.8,74.7		59.8,71.6		49.1,51.6
	path 61.9,60.5		67.1,53.5		74.3,58.8
	path 71.9,68.5		77.5,59.5		83.0,64.2
	path 89.9,49.8		80.9,51.8
]])

ZygorGuidesViewer:RegisterInclude("Stormvine_Path",[[
	--Stormvine
	map Shimmering Expanse
	path	42.2,55.2	37.7,67.1	48.2,81.4
	path	57.8,83.2	58.5,69.6	49.6,59.1
	path	68.0,49.7	63.9,39.4	57.9,39.8
	path	50.6,35.3	41.3,34.8	38.1,44.7
	path	32.5,54.7
]])

ZygorGuidesViewer:RegisterInclude("HB_Path",[[
	--Heartblossom
	map Deepholm
	path	69.4,56.0	70.0,60.7	72.9,58.2
	path 	74.7,61.1	75.8,67.5	70.9,62.9
	path 	71.1,70.6	66.0,68.5	26.8,41.5
	path 	26.5,35.6	23.1,35.3	25.9,31.9
	path 	27.5,32.3	27.8,27.0	31.2,32.0
	path 	28.9,35.6	26.8,41.5
]])

ZygorGuidesViewer:RegisterInclude("Whiptail_Path",[[
	--Whiptail
	map Uldum
	path	58.4,31.3	56.2,22.6	57.8,14.5
	path 	61.5,14.0	57.1,44.7	60.5,58.3
	path 	69.8,76.5	65.9,75.9	60.0,83.2
	path 	59.0,58.8	55.3,45.8	52.0,45.6
	path 	50.8,42.5	50.8,36.0	50.8,36.0
]])

ZygorGuidesViewer:RegisterInclude("TJ_Path",[[
	--Twilight Jasmine
	map Twilight Highlands
	path	71.7,48.9	68.1,41.8	61.9,36.0
	path 	53.9,32.0	47.3,40.3	45.6,45.2
	path 	45.3,36.1	41.3,52.0	48.7,54.5
	path 	51.5,45.6	58.2,48.0	59.1,40.1
	path 	70.9,64.8	73.5,64.0	73.7,72.2
	path	69.8,64.7	63.1,60.8	59.5,63.6
	path 	55.3,50.4	57.0,77.5	53.0,79.8
	path 	49.0,70.0	44.2,70.6	47.9,63.4
	path 	33.6,49.9	29.0,40.3	28.6,30.5
	path	46.3,23.2	57.5,27.2	69.1,38.2
	path 	72.9,47.2
]])

ZygorGuidesViewer:RegisterInclude("GT_SW_Path",[[
	--Greentea // Silk
	map Valley of the Four Winds
	path follow loose;loop;ants straight;dist 40
	path 81.4,21.5	76.4,29.2	68.2,33.3
	path 70.6,41.8	65.1,60.1	57.6,65.6
	path 50.8,58.6	48.0,65.9	46.9,61.3
	path 42.5,58.3	33.6,62.1	28.1,72.7
	path 25.7,78.4	18.5,51.0	15.4,53.9
	path 12.8,44.7	14.3,41.2	14.8,35.8
	path 19.6,34.4	24.0,42.2	25.0,50.2
	path 30.1,55.7	 35.8,54.8	41.5,48.9
]])

ZygorGuidesViewer:RegisterInclude("FL_GT_KW_BW_Path",[[
	--Fadeleaf // Goldthorn // Khadgar's Whisker // Blindweed
	map Feralas
	path follow loose;loop;ants straight;dist 60
	path 73.0,42.0		72.9,37.3		70.5,37.1
	path 69.2,42.3		67.3,45.9		63.9,48.1
	path 59.4,46.6		59.8,54.2		56.0,60.1		55.2,66.6
	path 58.6,64.7		61.3,61.9		62.8,58.0
	path 68.8,50.3		69.0,60.1		71.4,60.0
	path 72.1,55.5		75.9,56.6
	path 73.3,50.2
]])

ZygorGuidesViewer:RegisterInclude("GB_Path",[[
	--Gromsblood
	map Felwood
	path follow loose;loop;ants straight;dist 60
	path 50.5,80.9		47.6,75.8		45.4,71.4
	path 44.9,66.4		42.9,58.3		43.6,52.1
	path 45.2,42.1		49.6,33.6		55.3,24.8
	path 57.5,15.5		54.3,14.1		42.7,21.7
	path 40.0,37.5		40.0,46.5		39.6,56.9
	path 39.1,66.2		38.9,71.3		42.7,84.7
]])

ZygorGuidesViewer:RegisterInclude("GT_WS_Path",[[
	--Goldthorn // Wild Steelbloom
	map Arathi Highlands
	path follow loose;loop;ants straight;dist 60
	path	43.3,39.0	57.6,29.0	70.6,28.6
	path	73.6,31.7	75.6,39.6
	path	50.7,74.5	41.0,80.2
	path	28.7,67.9	9.0,70.2	19.9,34.9
	path	29.1,48.4
]])

ZygorGuidesViewer:RegisterInclude("GS_SM_Path",[[
	--Golden Sansam // Sorrow Moss
	map Swamp of Sorrows
	path follow loose;loop;ants straight;dist 60
	path 18.8,60.4		23.9,55.3		27.3,62.0
	path 37.5,53.6		57.5,59.1		77.4,79.5
	path 80.9,60.1		88.6,63.4		79.9,42.4
	path 75.1,23.5		50.7,31.3		24.6,45.3
	path 14.1,33.2		21.5,45.0
]])

ZygorGuidesViewer:RegisterInclude("Kingsblood_Path",[[
	--Kingsblood
	map Western Plaguelands
	path follow loose;loop;ants straight;dist 70
	path	31.8,59.3	43.5,53.2	45.9,44.7
	path	45.2,35.2	49.5,35.1	51.0,47.4
	path	61.8,52.0	67.2,44.5	63.6,56.0
	path	56.6,60.1	52.6,67.5	46.4,59.2
	path	33.7,62.7
]])

ZygorGuidesViewer:RegisterInclude("LR_SK_Path",[[
	--Liferoot
	map Western Plaguelands/0
	path follow loose;loop;ants straight;dist 45
	path	51.0,72.6	55.1,75.8	59.0,81.8
	path	63.1,82.7	66.6,84.2	70.3,83.8
	path	73.6,82.6	78.3,80.7	79.7,75.4
	path	80.0,70.5	78.6,66.6	75.9,65.4
	path	76.6,61.8	73.1,59.7	68.7,61.7
	path	64.3,64.1	60.1,65.3	56.6,69.5
	path	53.8,72.2
]])

ZygorGuidesViewer:RegisterInclude("MR_BW_BT_SK_Path",[[
	--Mageroyal // Bruiseweed // Briarthorn // Stranglekelp
	map Hillsbrad Foothills
	path follow loose;loop;ants straight;dist 70
	path 31.8,62.6		33.9,54.0		29.7,44.1
	path 35.5,37.8		34.5,28.2		39.5,21.0
	path 44.2,8.3		51.3,14.0		57.5,20.9
	path 56.1,34.3		49.9,46.2		41.2,46.6
	path 40.1,55.0		41.3,67.4		31.8,71.9
]])

ZygorGuidesViewer:RegisterInclude("Sungrass_Path",[[
	--Sungrass
	map Searing Gorge
	path follow loose;loop;ants straight;dist 60
	path	66.9,43.2	58.9,53.0	55.6,68.1
	path	49.8,70.1	45.9,61.5	38.1,74.9
	path	31.0,67.8	32.1,56.9	29.4,44.8
	path	37.5,47.8	40.5,39.1	47.2,42.1
	path	53.5,35.4	77.0,19.0
]])

-------------------------
------ Inscription ------
-------------------------



---------------------------
------ Jewelcrafting ------
---------------------------



----------------------------
------ Leatherworking ------
----------------------------



--------------------
------ Mining ------
--------------------

ZygorGuidesViewer:RegisterInclude("follow_path_mine",[[
		Zoom your minimap all the way out, track ore, and follow the path while mining yellow spots on your minimap.
]])

ZygorGuidesViewer:RegisterInclude("Obsidium_Path",[[
	--Obsidium
	map Mount Hyjal
	path follow loose;dist 60
	path	67.2,29.1	61.1,36.7	54.5,17.1
	path	41.2,20.5	42.9,27.5	49.6,25.5
	path	46.6,35.6	40.5,33.6	39.9,29.4
	path	34.9,27.5	35.0,21.7	32.3,28.8
	path	35.0,35.6	31.1,40.4	25.7,40.6
	path	28.7,35.7	24.3,35.8	25.7,29.8
	path	14.7,38.8	13.6,31.6	9.4,36.4
	path	17.6,46.5	12.9,46.5	15.5,52.2
	path	20.7,60.2	21.5,56.8	23.3,61.5
	path	30.3,55.2	27.6,55.0	27.7,51.2
	path	34.1,46.8	34.1,55.2	37.5,54.9
	path	36.0,51.0	40.3,51.6	41.5,63.3
	path	38.9,65.5	36.4,58.6	32.8,61.8
	path	35.2,63.5	32.8,66.6	31.3,90.4
	path	36.6,95.5	50.8,82.1	51.8,75.1
	path	60.6,82.5	59.8,73.0	56.5,69.8
	path	58.9,66.4	53.6,66.8	49.6,51.1
	path	59.7,56.3	55.5,56.8	62.8,60.0
	path	64.5,50.9	67.5,50.6	69.8,56.0
	path	75.9,69.6	75.7,63.6	80.2,67.2
	path	84.3,64.9	88.1,48.5	84.2,47.5
	path	78.5,53.3	84.2,54.5	82.1,60.9
	path	72.9,57.9
]])

ZygorGuidesViewer:RegisterInclude("Iron_Ore_Path",[[
	map Feralas
	path	74.9,48.6	84.0,45.6	84.9,39.9
	path	71.5,34.7	54.3,50.1	48.6,44.0
	path	49.7,34.9	51.6,33.8	50.9,26.2
	path	51.3,19.0	54.9,8.1	49.4,4.0
	path	40.0,7.7	37.1,12.1	38.1,17.6
	path	37.0,25.6	45.1,26.2	46.3,38.6
	path	50.3,52.7	47.9,55.4	46.9,64.1
	path	54.8,53.9	55.2,62.6	52.9,66.2
	path	53.6,73.7	60.8,75.8	62.0,55.0
	path	63.7,61.0	66.4,51.3	68.2,51.3
	path	68.1,61.5	71.6,65.1	77.2,62.1
]])

ZygorGuidesViewer:RegisterInclude("Mithril_Ore_Path",[[
	--Mithril Ore Path
	map Felwood
	path	63.5,24.5	62.6,6.9	55.7,18.6
	path	42.5,17.1	42.0,24.1	39.9,22.1
	path	41.0,27.5	38.6,37.4	38.3,55.6
	path	40.7,59.8	35.0,59.1	41.8,62.6
	path	36.3,66.8	40.7,72.9	37.8,73.5
	path	40.3,77.4	39.1,79.3	43.8,81.5
	path	39.0,81.6	42.3,87.1	45.1,84.6
	path	45.1,89.7	48.1,92.8	51.2,86.1
	path	52.5,88.8	57.7,86.5	58.6,84.8
	path	55.9,81.1	49.6,76.6	43.5,60.9
	path	42.9,50.8	52.9,31.6	59.6,27.2
]])

ZygorGuidesViewer:RegisterInclude("Thorium_Ore_Path",[[
	--Thorium Ore Path
	map Winterspring
	path	52.8,46.2	58.3,41.2	59.7,45.0
	path 	59.9,21.4	58.3,18.4	54.5,21.2
	path 	45.9,13.1	44.8,15.3	44.8,29.0
	path 	47.8,33.2	49.8,42.8	39.5,51.0
	path 	33.5,47.2	30.2,48.6	31.5,53.5
	path 	28.4,51.6	27.3,48.0	23.0,45.7
	path 	22.3,62.4	25.3,61.3	25.9,58.1
	path 	41.2,57.7	42.1,53.2	46.1,60.8
	path 	51.0,61.4	53.7,63.6	51.2,69.9
	path 	55.2,68.9	56.8,81.1	59.0,80.3
	path 	59.0,85.3	62.0,87.6	64.1,81.8
	path 	62.2,77.7	62.3,73.3	67.0,68.5
	path 	67.1,60.1
]])

ZygorGuidesViewer:RegisterInclude("Fel_Iron_Path",[[
	--Fel Iron Ore Path
	map Hellfire Peninsula
	path	69.3,47.5	74.5,38.7	68.2,37.7
	path	62.0,31.0	58.0,32.8	54.0,26.7
	path	46.0,29.3	34.1,29.1	32.0,34.5
	path	38.5,38.2	35.7,40.7	33.4,49.8
	path	30.3,48.6	32.5,43.3	28.5,39.3
	path	26.5,45.5	22.6,45.1	18.0,38.3
	path	12.5,36.1	17.9,46.3	11.8,41.9
	path	12.0,47.0	06.2,49.5	15.4,62.4
	path	20.3,52.9	24.0,61.1	21.2,62.7
	path	28.1,80.8	27.7,69.5	30.5,72.8
	path	30.3,59.9	34.8,66.6	37.7,53.3
	path	46.9,46.3	49.3,49.5	60.3,48.6
	path	60.8,52.8	52.1,52.7	47.2,57.7
	path	45.9,75.5	33.5,89.6	33.1,92.6
	path	49.1,77.5	44.6,86.2	55.5,82.8
	path	58.7,78.8	56.5,72.3	65.8,63.6
	path	67.1,71.7	63.0,73.3	65.8,77.9
	path	68.7,77.6	71.0,71.7	70.1,68.6
	path	65.0,59.8	65.6,56.0	75.0,63.9
	path	78.4,80.2	80.7,77.5	77.3,63.7
	path	72.7,60.2	71.5,53.1	68.3,52.0
]])

ZygorGuidesViewer:RegisterInclude("Adamantite_Path",[[
	--Adamantite Ore Path
	map Nagrand
	path follow loose;dist 30
	path	72.7,64.7	74.3,60.5	69.1,48.6
	path	72.3,43.1	66.1,32.3	59.5,27.3
	path	55.7,23.0	54.8,20.6	50.7,20.0
	path	49.3,24.1	47.1,20.2	39.6,20.4
	path	28.2,12.1	25.7,16.5	26.8,23.6
	path	27.9,25.3	27.5,32.1	23.2,27.8
	path	7.1,39.9	25.2,61.1	31.9,81.9
	path	41.8,81.8	43.5,73.7	48.4,71.4
	path	43.0,62.2	32.2,60.3	29.2,54.1
	path	33.4,49.4	40.8,32.1	45.5,43.9
	path	42.4,50.9	48.0,57.5	51.5,55.6
	path	60.5,56.9	56.7,64.0	70.1,83.3
	path	69.8,72.5
]])

ZygorGuidesViewer:RegisterInclude("Cobalt_Path",[[
	--Cobalt Ore Path
	map Howling Fjord
	path follow loose; dist 40
	path	83.0,44.8	78.1,39.4	72.7,38.3
	path	71.0,31.8	75.3,22.9	70.2,8.3
	path	63.2,13.7	64.4,16.4
	path	61.4,23.6	57.7,18.3
	path	51.4,14.2	45.5,13.3	38.1,18.9
	path	31.1,10.9	28.9,10.3	21.7,12.8
	path	19.4,23.5	24.2,27.4	23.9,33.6
	path	27.3,30.8	38.1,29.0	47.6,32.7
	path	53.0,31.9	63.5,37.1	65.5,48.7
	path	66.9,62.7	64.4,67.8	64.4,72.4
	path	67.9,76.5	69.8,74.7	72.5,67.9
	path	77.3,67.2	77.2,60.8	74.9,55.3
	path	79.1,50.4
]])

ZygorGuidesViewer:RegisterInclude("Saronite_Path",[[
	--Saronite Ore Path
	map Sholazar Basin
	path follow loose;dist 50
	path	77.9,63.8	78.7,52.4	74.3,48.6
	path	58.9,53.9	63.5,44.4	66.7,40.3
	path	65.1,30.5	58.9,27.8	58.9,21.1
	path	40.8,20.8	48.0,33.2	53.8,37.0
	path	47.8,43.1	46.8,39.7	39.6,32.8
	path	32.9,32.8	23.3,48.4	33.5,46.6
	path	35.8,49.9	40.0,50.9	38.0,54.9
	path	30.5,55.3	20.8,56.1	20.4,76.6
	path	22.6,78.5	22.5,84.0	34.2,78.4
	path	33.8,73.4	33.0,67.9	40.9,70.1
	path	34.5,88.9	50.9,88.8	51.5,82.1
	path	46.0,60.9	52.5,68.9	58.7,88.2
	path	62.3,74.5	63.6,84.4
]])

----------------------
------ Skinning ------
----------------------



-----------------------
------ Tailoring ------
-----------------------



-----------------------------------------------
------ Miscellaneous Profession Includes ------
-----------------------------------------------

ZygorGuidesViewer:RegisterInclude("end_of_prof_trial_125",[[
	step
	label "end_of_prof_trial"
		This Trial guides only goes up to 125.
		To continue further, please purchase the full Zygor Profession Guides!
]])

ZygorGuidesViewer:RegisterInclude("end_of_prof_trial_150",[[
	step
	label "end_of_prof_trial"
		This Trial guides only goes up to 150.
		To continue further, please purchase the full Zygor Profession Guides!
]])

------------
-- Anvils --
------------

ZygorGuidesViewer:RegisterInclude("shatt_anvil",[[
		Stand next to this anvil |goto Shattrath City 69.7,42.7
]])







ZygorGuidesViewer:RegisterInclude("Protofom_Synthesis_Pet_Unlock",[[
	step
		Complete "Cyphers of the First Ones" Quest |complete completedq(64230) |or
		|tip This is the final quest of the third chapter of the Zereth Mortis campaign.
		|tip It is required to unlock Protoform Synthesis crafting.
		Click Here to Load the Zereth Mortis Leveling Guide |loadguide "Leveling Guides\\Shadowlands (50-60)\\Eternity's End\\Zereth Mortis" |or
	step
		earn 5 Cyphers of the First Ones##1979 |or
		|tip Earn these by completing daily quests and world quests in Zereth Mortis.
		|tip You can also farm rares and treasures.
		'|specialtalent Metrial Understanding##1901 |or
	step
		click Cypher Console
		|tip Inside the cave.
		|tip Start the "Metrial Understanding" Core Systems upgrade.
		Learn Metrial Understanding |specialtalent Metrial Understanding##1901 |goto Zereth Mortis/0 33.76,49.50
	step
		earn 45 Cyphers of the First Ones##1979 |or
		|tip Earn these by completing daily quests and world quests in Zereth Mortis.
		|tip You can also farm rares and treasures.
		'|specialtalent Aealic Understanding##1904 |or
	step
		click Cypher Console
		|tip Inside the cave.
		|tip Start the "Aealic Understanding" Console Upgrades upgrade.
		|tip This upgrade will require 18 hours to complete.
		Learn Aealic Understanding |specialtalent Aealic Understanding##1904 |goto 33.76,49.50
	step
		earn 200 Cyphers of the First Ones##1979 |or
		|tip Earn these by completing daily quests and world quests in Zereth Mortis.
		|tip You can also farm rares and treasures.
		'|specialtalent Dealic Understanding##1932 |or
	step
		click Cypher Console
		|tip Inside the cave.
		|tip Start the "Dealic Understanding" Wildlife Control upgrade.
		|tip This upgrade will require 3 days 18 hours to complete.
		Learn Dealic Understanding |specialtalent Dealic Understanding##1932 |goto 33.76,49.50
	step
		cast Summon Pocopoc##360078
		Summon Pocopoc |complete spellactive(360078) |q 65419 |future
	step
		_Next to you:_
		talk Pocopoc##181059
		accept Protoform Synthesis##65419 |goto 61.87,58.94
	step
		Enter the tunnel |goto Zereth Mortis/0 61.86,58.93 < 7 |walk
		Locate the Synthesis Forge Chamber |q 65419/1 |goto Zereth Mortis/0 61.79,58.96
	step
		Enter the Synthesis Forge Chamber |q 65419/2 |goto 60.52,59.39
	step
		_Next to you:_
		talk Pocopoc##181059
		|tip Use your "Summon Pocopoc" ability if it is not already present.
		turnin Protoform Synthesis##65419
]])

ZygorGuidesViewer:RegisterInclude("Protofom_Synthesis_Mount_Unlock",[[
	step
		Complete "Cyphers of the First Ones" Quest |complete completedq(64230) |or
		|tip This is the final quest of the third chapter of the Zereth Mortis campaign.
		|tip It is required to unlock Protoform Synthesis crafting.
		Click Here to Load the Zereth Mortis Leveling Guide |loadguide "Leveling Guides\\Shadowlands (50-60)\\Eternity's End\\Zereth Mortis" |or
	step
		earn 5 Cyphers of the First Ones##1979 |or
		|tip Earn these by completing daily quests and world quests in Zereth Mortis.
		|tip You can also farm rares and treasures.
		'|specialtalent Metrial Understanding##1901 |or
	step
		click Cypher Console
		|tip Inside the cave.
		|tip Start the "Metrial Understanding" Core Systems upgrade.
		Learn Metrial Understanding |specialtalent Metrial Understanding##1901 |goto Zereth Mortis/0 33.76,49.50
	step
		earn 45 Cyphers of the First Ones##1979 |or
		|tip Earn these by completing daily quests and world quests in Zereth Mortis.
		|tip You can also farm rares and treasures.
		'|specialtalent Aealic Understanding##1904 |or
	step
		click Cypher Console
		|tip Inside the cave.
		|tip Start the "Aealic Understanding" Console Upgrades upgrade.
		|tip This upgrade will require 18 hours to complete.
		Learn Aealic Understanding |specialtalent Aealic Understanding##1904 |goto 33.76,49.50
	step
		earn 200 Cyphers of the First Ones##1979 |or
		|tip Earn these by completing daily quests and world quests in Zereth Mortis.
		|tip You can also farm rares and treasures.
		'|specialtalent Dealic Understanding##1932 |or
	step
		click Cypher Console
		|tip Inside the cave.
		|tip Start the "Dealic Understanding" Wildlife Control upgrade.
		|tip This upgrade will require 3 days 18 hours to complete.
		Learn Dealic Understanding |specialtalent Dealic Understanding##1932 |goto 33.76,49.50
	step
		cast Summon Pocopoc##360078
		Summon Pocopoc |complete spellactive(360078) |q 65419 |future
	step
		_Next to you:_
		talk Pocopoc##181059
		accept Protoform Synthesis##65419 |goto 61.87,58.94
	step
		Enter the tunnel |goto Zereth Mortis/0 61.86,58.93 < 7 |walk
		Locate the Synthesis Forge Chamber |q 65419/1 |goto Zereth Mortis/0 61.79,58.96
	step
		Enter the Synthesis Forge Chamber |q 65419/2 |goto 60.52,59.39
	step
		_Next to you:_
		talk Pocopoc##181059
		|tip Use your "Summon Pocopoc" ability if it is not already present.
		turnin Protoform Synthesis##65419
	step
		earn 220 Cyphers of the First Ones##1979 |or
		|tip Earn these by completing daily quests and world quests in Zereth Mortis.
		|tip You can also farm rares and treasures.
		'|specialtalent Sopranian Understanding##1931 |or
	step
		click Cypher Console
		|tip Inside the cave.
		|tip Start the "Sopranian Understanding" Wildlife Control upgrade.
		|tip This upgrade will require 5 days 18 hours to complete.
		Learn Sopranian Understanding |specialtalent Sopranian Understanding##1931 |goto 33.76,49.50
	step 
		talk Elder Amir##180630
		accept Finding Tahli##64829 |goto 61.37,51.55
	step
		talk Tahli##181410
		turnin Finding Tahli##64829 |goto 63.94,40.77
		accept Selfless Preservation##64745
	step
		kill Ilgaz the Plunderer##184002
		|tip This enemy is elite and may require a group.
		collect Stolen Artifact##188798 |q 64745/1 |goto 62.48,36.04
	step 
		click Orb of Transference##370406
		Place the Orb |q 64745/2 |goto 61.49,36.72
	step
		Watch the dialogue
		talk Tahli##181273
		|tip Inside the building.
		turnin Selfless Preservation##64745 |goto 61.18,37.63
		accept Junk's Not Dead##64759 |goto 61.18,37.63
		accept Core Competency##64761 |goto 61.18,37.63
	step
		click Orb of Transference##370405
		|tip Inside the building.
		Leave the Building |havebuff spell:364301 |goto 61.37,37.02 |q 64759
	stickystart "Charge_Depleted_Automa_Core"
	step
		click Depleted Servitor##183441+
		|tip They look like small inactive robots on the ground around this area.
		|tip They appear on your minimap as yellow dots.
		Transcribe the First Glyph |q 64759/1 |goto 63.13,38.56 |count 1
	step
		click Depleted Servitor##183441+
		|tip They look like small inactive robots on the ground around this area.
		|tip They appear on your minimap as yellow dots.
		Transcribe the Second Glyph |q 64759/1 |goto 65.78,38.17 |count 2
	step
		click Depleted Servitor##183441+
		|tip They look like small inactive robots on the ground around this area.
		|tip They appear on your minimap as yellow dots.
		Transcribe the Third Glyph |q 64759/1 |goto 67.00,37.40 |count 3
	step
		click Depleted Servitor##183441+
		|tip They look like small inactive robots on the ground around this area.
		|tip They appear on your minimap as yellow dots.
		Transcribe the Fourth Glyph |q 64759/1 |goto 67.40,40.17 |count 4
	step
		click Depleted Servitor##183441+
		|tip They look like small inactive robots on the ground around this area.
		|tip They appear on your minimap as yellow dots.
		Transcribe the Fifth Glyph |q 64759/1 |goto 66.50,41.40 |count 5
	step
		click Depleted Servitor##183441+
		|tip They look like small inactive robots on the ground around this area.
		|tip They appear on your minimap as yellow dots.
		Transcribe the Sixth Glyph |q 64759/1 |goto 65.85,40.38 |count 6
	step
	label "Charge_Depleted_Automa_Core"
		Kill Animate and Scarabid enemies around this area
		|tip Any wild animates in the area will work for this.
		use Depleted Automa Core##187941
		|tip Use it on the slain Animates until it is fully charged.
		Charge the Depleted Automa Core |q 64761/1 |goto 63.98,37.98
	step 
		click Orb of Transference##370406
		Teleport Inside the Building |havebuff spell:364301 |goto 61.49,36.72 |q 64761
	step 
		talk Tahli##181273
		|tip Inside the building.
		turnin Junk's Not Dead##64759 |goto 61.18,37.63
		turnin Core Competency##64761 |goto 61.18,37.63
		accept Revival of the Fittest##64762 |goto 61.18,37.63
	step
		Use the _"Awaken the Servitor"_ ability
		|tip In the gold circle inside the building.
		|tip It appears as a button on your screen.
		Begin the Ritual |q 64762/1 |goto 61.21,37.54
	step
		Watch the dialogue
		|tip Inside the building.
		Awaken the Servitor |q 64762/2 |goto 61.21,37.54
	step
		Watch the dialogue
		talk Kodah##183507
		|tip Inside the building.
		turnin Revival of the Fittest##64762 |goto 61.24,37.63
		accept Maintenance Mode##64763 |goto 61.24,37.63
		accept Access Request##64766 |goto 61.24,37.63
	step
		click Orb of Transference##370405
		|tip Inside the building.
		Leave the Building |havebuff spell:364301 |goto 61.37,37.02 |q 64766
	step
		Enter the building |goto 65.90,36.18 < 10 |walk
		click Chamber Door
		kill Dominated Architect##181045
		|tip The enemies in this room are elite and may require a group.
		|tip Interrupt "Agression Sentry" on cooldown.
		|tip Move out of areas targeted on the ground.
		collect Restoration Matrix##187628 |q 64766/1 |goto 67.24,39.72
	step
		click Chamber Door |goto 66.59,38.00 < 4 |walk
		Kill Mawsworn enemies around this area
		collect Attunement Codex##189492+ |n
		click Arrangement Terminal##370178
		Attune the First Arrangement Terminal |q 64763/1 |goto 66.31,34.47 |count 1
	step
		Kill Mawsworn enemies around this area
		collect Attunement Codex##189492+ |n
		click Arrangement Terminal##370178
		Attune the Second Arrangement Terminal |q 64763/1 |goto 65.37,31.96 |count 2
	step
		Kill Mawsworn enemies around this area
		collect Attunement Codex##189492+ |n
		click Arrangement Terminal##370178
		Attune the Third Arrangement Terminal |q 64763/1 |goto 63.67,32.95 |count 3
	step
		Kill Mawsworn enemies around this area
		collect Attunement Codex##189492+ |n
		click Arrangement Terminal##370178
		Attune the Final Arrangement Terminal |q 64763/1 |goto 63.99,35.58 |count 4
	step
		Enter the building |goto 68.58,30.17 < 10 |walk
		talk Kodah##183508
		|tip Inside the building.
		turnin Maintenance Mode##64763 |goto 68.77,29.71
		turnin Access Request##64766 |goto 68.77,29.71
		accept The Final Song##64767 |goto 68.77,29.71
	step
		talk Kodah##180610
		|tip Inside the building.
		Tell him _"Let's do this!"_
		|tip This will start an event that may require a group.
		Speak to Kodah |q 64767/1 |goto 68.77,29.71
	step
		Kill enemies that attack in waves
		|tip Inside the building.
		|tip You must stand in the circle to progress the event.
		|tip Any enemies inside the circle will halt your progress.
		|tip Try to position yourself in the circle with attacking enemies outside of it.
		|tip You may need help with this.
		Defend Kodah |q 64767/2 |goto 70.53,28.22
	step
		click Restoration Matrix##373519
		|tip Inside the building.
		Activate the Restoration Matrix |q 64767/3 |goto 70.21,28.56
	step
		Watch the dialogue
		talk Tahli##181410
		|tip Inside the building.
		|tip Tahli will run into the room.
		turnin The Final Song##64767 |goto 70.13,28.73
		accept Judgement Call##65420 |goto 70.13,28.73
	step
		talk Elder Amir##180630
		turnin Judgment Call##65420 |goto 61.37,51.55
	step
		Watch the dialogue
		talk Tahli##181273
		accept The Lost Component##65426 |goto 61.46,51.56
		|tip You may need to relog to see this quest.
	step
		click Protoform Catalyst##375227
		collect Protoform Catalyst##189499 |q 65426/1 |goto 61.33,51.67
	step
		Enter the building |goto 68.58,30.17 < 10 |walk
		click Repository Console
		|tip Inside the building.
		Choose _"Insert the Protoform Catalyst."_
		Return the Component |q 65426/2 |goto 70.21,28.57
	step
		talk Servitor Interface##181135
		|tip Inside the building.
		turnin The Lost Component##65426 |goto 70.21,28.57
		accept A New Architect##65427 |goto 70.21,28.57
	step
		click Protoform Tool##375222
		|tip Inside the building.
		collect 1 Protoform Tool##189501 |q 65427/2 |goto 70.01,27.72
	step
		click Repository Vault##375223
		|tip Inside the building.
		collect Cervid Lattice##189500 |q 65427/1 |goto 70.59,27.21
	step
		click Protoform Tool##375222
		|tip Inside the building.
		collect 2 Protoform Tool##189501 |q 65427/2 |goto 71.32,27.72
	step
		click Protoform Tool##375222
		|tip Inside the building.
		collect 3 Protoform Tool##189501 |q 65427/2 |goto 70.73,29.09
	step
		talk Servitor Interface##181135
		|tip Inside the building.
		turnin A New Architect##65427 |goto 70.21,28.57
]])