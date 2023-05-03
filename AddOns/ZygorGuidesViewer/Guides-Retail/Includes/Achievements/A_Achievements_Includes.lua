if UnitFactionGroup("player")~="Alliance" then return end
local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end

-------------------
----- Cooking -----
-------------------

ZygorGuidesViewer:RegisterInclude("the_cake_is_not_a_lie",[[
	step
		Complete dailies in Shattrath City until you get the recipe for the Delicious Chocolate Cake
		confirm
	step
		Routing to the proper section |next "create" |only if _G.IsSpellKnown(43779)
		Routing to the proper section |next "dailies" |only if default
	step
	label "dailies"
		talk The Rokk##24393
		|tip You will only be able to accept one of these daily quests per day.
		accept Soup for the Soul##11381 |or |goto Shattrath City 61.8,15.6 |next "soup"
		accept Super Hot Stew##11379 |or |goto Shattrath City 61.8,15.6 |next "stew"
		accept Manalicious##11380 |or |goto Shattrath City 61.8,15.6 |next "mana"
		accept Revenge is Tasty##11377 |or |goto Shattrath City 61.8,15.6 |next "tasty"
	step
	label "soup"
		talk Uriku##20096
		buy Recipe: Roasted Clefthoof##27691 |n
		use Recipe: Roasted Clefthoof##27691
		learn Roasted Clefthoof##33287 |q 11381 |goto Nagrand 56.2,73.3
	step
		kill Clefthoof##18205+, Clefthoof Calf##19183+
		collect 4 Clefthoof Meat##27678 |q 11381 |goto Nagrand 58.5,46.8
		You can find more Clefthooves at [45.5,72.7]
	step
		Build a Basic Campfire |cast Basic Campfire##818
		create Roasted Clefthoof##33287,Cooking,4 total |q 11381
	step
		use Cooking Pot##33851
		|tip Use your Cooking Pot to Cook up some Spiritual Soup.
		Cook a Spiritual Soup |q 11381/1 |goto 25.9,59.4
		|next "turnin"
	step
	label "stew"
		talk Xerintha Ravenoak##20916
		buy Recipe: Mok'Nathal Shortribs##31675 |n
		use Recipe: Mok'Nathal Shortribs##31675
		learn Mok'Nathal Shortribs##31672 |q 11379 |goto Blade's Edge Mountains 62.5,40.3
	step
		talk Xerintha Ravenoak##20916
		buy Recipe: Crunchy Serpent##31674 |n
		use Recipe: Mok'Nathal Shortribs##31674
		learn Crunchy Serpent##31673 |q 11379 |goto Blade's Edge Mountains 62.5,40.3
	step
		kill Daggermaw Blackhide##22052+, Bladespire Raptor##20728+
		collect 4 Raptor Ribs##31670+ |q 11379 |goto Blade's Edge Mountains 49.6,46.2
	step
		kill Scalewing Serpent##20749+, Felsworn Scalewing##21123+
		collect 1 Serpent Flesh##31671 |q 11379 |goto 68.2,63.2
	step
		Build a Basic Campfire |cast Basic Campfire##818
		create 2 Mok'Nathal Shortribs##38867,Cooking,2 total |q 11379
	step
		Build a Basic Campfire |cast Basic Campfire##818
		create 1 Crunchy Serpent##38868,Cooking,1 total |q 11379
	step
		kill Abyssal Flamebringer##19973+
		use Cooking Pot##33852
		|tip Use your Cooking Pot next to the Abyssal Flamebringer corpse to Cook up some Demon Broiled Surprise.
		collect Demon Broiled Surprise##33848 |q 11379/1 |goto 29.0,84.5
		|next "turnin"
	step
	label "mana"
		click Mana Berry Bush##186729
		collect 15 Mana Berry##33849 |q 11380/1 |goto Netherstorm 45.6,54.2
		|next "turnin"
	step
	label "tasty"
		talk Supply Officer Mills##19038
		buy Recipe: Warp Burger##27692 |n
		use Recipe: Warp Burger##27692
		learn Warp Burger##33288 |q 11377 |goto Terokkar Forest 55.8,53.0
	step
		kill Blackwind Warp Chaser##23219+
		collect 3 Warped Flesh##27681 |q 11377 |goto 64.0,83.5
	step
		kill Monstrous Kaliri##23051+
		|tip They fly around in the sky close to the tree outposts and bridges.
		collect Giant Kaliri Wing##33838 |q 11377 |goto 67.6,74.7
	step
		Build a Basic Campfire |cast Basic Campfire##818
		create Warp Burger##33288,Cooking,3 total |q 11377 |goto 25.9,59.5
		Use your Cooking Pot to Cook up some Kaliri Stew |use Cooking Pot##33837
		create Kaliri Stew##43718,Cooking,1 total |q 11377/1 |goto 25.9,59.5
		|next "turnin"
	step
	label "turnin"
		talk The Rokk##24393
		turnin Soup for the Soul##11381 |goto Shattrath City 61.8,15.6
		turnin Super Hot Stew##11379 |goto Shattrath City 61.8,15.6
		turnin Manalicious##11380 |goto Shattrath City 61.8,15.6
		turnin Revenge is Tasty##11377 |goto Shattrath City 61.8,15.6
	step
		You have completed the maximum amount of Shattrath Cooking dailies you can do today
		collect Recipe: Delicious Chocolate Cake##33925 |n
		|tip You are not guaranteed to get this recipe - it is random, so try to have patience.
		use Recipe: Delicious Chocolate Cake##33925
		learn Delicious Chocolate Cake##43779
		Click here to go back to the beginning of the dailies for today if you haven't received the cake pattern |confirm |next "dailies"
	step
	label "create"
		talk Maegan Tillman##44237
		buy 4 Ice Cold Milk##1179 |goto Stormwind City 75.7,54.1
	step
		talk Reese Langston##1327
		buy 1 Flask of Port##2593 |goto Stormwind City 76.3,53.0
	step
		talk Erika Tate##5483
		buy 8 Simple Flour##30817 |goto Stormwind City 77.6,53.0
		buy 4 Mild Spices##2678 |goto Stormwind City 77.6,53.0
	step
		From the Auction House:
		buy 3 Mageroyal##785
		buy 8 Small Egg##6889 |next "HaveEggs"
		Click this line if you would rather farm the Small Eggs |confirm
	step
		kill Fleshripper##1109+, Young Fleshripper##199+
		collect 8 Small Egg##6889 |goto Westfall 55.8,30.2
		You can find more at [55.0,18.9]
	step
	label "HaveEggs"
		Build a Basic Campfire |cast Basic Campfire##818
		create Delicious Chocolate Cake##43779,Cooking,1 total |n
		Earn The Cake Is Not A Lie Achievement |achieve 877
]])

ZygorGuidesViewer:RegisterInclude("Captain_Rumsey's_Lager",[[
	step
		Use the Shattrath or Dalaran Cooking Dailies, or the Fishing Dailies of this guide to get this recipe:
		|tip It's not always guarenteed to come from these daily prizes so be patient
		collect 1 Recipe: Captain Rumsey's Lager##34834
	step
		use Recipe: Captain Rumsey's Lager##34834
		learn Captain Rumsey's Lager##45695
	step
		talk Reese Langston##1327
		buy 1 Flask of Port##2593 |goto Stormwind City 76.3,53.0
		buy 1 Flagon of Mead##2594 |goto Stormwind City 76.3,53.0
		buy 1 Skin of Dwarven Stout##2596 |goto Stormwind City 76.3,53.0
	step
		create Captain Rumsey's Lager##45695,Cooking,1 total
		Brew up Captain Rumsey's Lager |achieve 1801
	step
		Congratulations! You've earned the Captain Rumsey's Lager achievement!
]])

ZygorGuidesViewer:RegisterInclude("Critter_Gitter",[[
		This requires 10 Critter Bites
		_Click here_ to craft these |confirm |next "farm1"
		_Click here_ to buy these from the Auction House |confirm |next
	step
		talk Auctioneer Chilton##8670
		collect 10 Critter Bites##43004 |goto Stormwind City 61.0,71.6
		|next "gitter"
	step
	label "farm1"
		This requires 20 Chilled Meat and 10 Northern Spices
		_Click here_ to go farm for these |confirm |next "farm2"
		_Click here_ to buy these from the Auction House |confirm |next
	step
		talk Auctioneer Chilton##8670
		collect 20 Chilled Meat##43013 |goto Stormwind City 61.0,71.6
		collect 10 Northern Spices##43007 |goto Stormwind City 61.0,71.6
		|next "make"
	step
	label "farm2"
		kill Scourged Mammoth##25452+
		collect 20 Chilled Meat##43013 |goto Borean Tundra 78.2,24.0
	step
		Use the Dalaran Cooking Dailies guide to get Small Spice Bags
		collect Spice Bag##44113 |n
		collect 10 Northern Spices##43007
	step
	label "make"
		Get someone to make your 10 Critter Bites
		|tip Ask in your guild or in trade for someone to make these. Be sure to tip well!
		Or... |only if skill("Cooking")>=400
		Make a Campfire |cast Basic Campfire##818 |only if skill("Cooking")>=400
		create Critter Bites##57435,Cooking,10 total |only if skill("Cooking")>=400
		collect 10 Critter Bites##43004
		Click here if you don't have the recipe |confirm |next "recipe" |only if skill("Cooking")>=400
		|next "gitter"
	step
	label "recipe"
		Use the Dalaran Cooking Dailies guide to earn 3 Dalaran Cooking Awards
		earn 3 Dalaran Cooking Award##81
	step
		talk Derek Odds##31032
		buy 1 Recipe: Critter Bites##43029 |goto Dalaran 41.6,64.8
	step
		use Recipe: Critter Bites##43029
		learn Critter Bites##57435
	step
		Make a Campfire |cast Basic Campfire##818
		create Critter Bites##57435,Cooking,10 total
		collect 10 Critter Bites##43004
	step
	label "gitter"
		use Critter Bites##43004
		|tip Target the Beetles, Scorpions, and Cockroaches and use the Critter Bites on them.
		|tip Use all 10 Critter Bites as quick as possible. These critters are scattered all throughout the tunnel.
		Coerce #10# Critters to be your pet within 3 minutes or less |achieve 1781 |goto Eastern Plaguelands 4.7,35.5
	step
		Congratulations, you have earned the Critter Gitter achievement!
]])

ZygorGuidesViewer:RegisterInclude("Dinner_Impossible",[[
	step
		You can either buy these items from the auction house or use the Cooking professions guide to reach level 375 Cooking, otherwise you cannot complete this achievement |only if skill("Cooking")<375
		You can either buy these items from the auction house or farm them |only if skill("Cooking")>=375
		collect 5 Great Feast##34753
		Click here to go farm these materials |confirm |next "farm1"
		|next "usefeast"
	step
		#include "Stormwind_Cooking_Trainer"
		learn Great Feast##45554
	step
	label "farm1"
		You can either buy these items from the auction house or farm them
		collect 5 Chunk o'Mammoth##34736
		collect 5 Shoveltusk Flank##43009
		collect 5 Worm Meat##43010
		collect 10 Chilled Meat##43013
		Click here to go farm these materials |confirm |next "farm2"
		|next "makefeast"
	step
	label "farm2"
		kill Scourged Mammoth##25452+
		collect 5 Chunk o'Mammoth##34736 |goto Borean Tundra 78.2,24.0
		collect 10 Chilled Meat##43013 |goto Borean Tundra 78.2,24.0
	step
		kill Tundra Crawler##25454+
		collect 5 Worm Meat##43010 |goto 76.2,23.0
	step
		kill Shoveltusk##23690+
		collect 5 Shoveltusk Flank##43009 |goto Howling Fjord 73.6,40.0
	step
	label "makefeast"
		Have someone make the Great Feasts for you |only if skill("Cooking")<375
		|tip Ask in your guild or in trade for someone to make these |only if skill("Cooking")<375
		Create a basic campfire |cast Basic Campfire##818 |only if skill("Cooking")>=375
		create 5 Great Feast##45554,Cooking,5 total |only if skill("Cooking")>=375
		collect 5 Great Feast##34753
	step
	label "usefeast"
		Push [H] on your keyboard to open your Player vs. Player interface
		Click on Alterac Valley and then click on the Join Battle button on the lower left-hand corner of the Player vs. Player interface
		|tip Wait for the queue to pop-up in the middle of your screen and click on accept.
		Go to Alterac Valley |goto Alterac Valley |noway |c
	step
		Use one of your Great Feasts |use Great Feast##34753
		Present a Great Feast in Alterac Valley |achieve 1785/1
		|tip You can leave the battleground now, but you will have to wait 15 minutes to complete the next step.
	step
		Push [H] on your keyboard to open your Player vs. Player interface
		Click on Arathi Basin and then click on the Join Battle button on the lower left-hand corner of the Player vs. Player interface
		|tip Wait for the queue to pop-up in the middle of your screen and click on accept.
		Go to Arathi Basin |goto Arathi Basin |noway |c
	step
		Use one of your Great Feasts |use Great Feast##34753
		Present a Great Feast in Arathi Basin |achieve 1785/2
		|tip You can leave the battleground now, but you will have to wait 15 minutes to complete the next step.
	step
		Push the [H] key on your keyboard to open your Player vs. Player interface
		Click on Warsong Gulch and then click on the Join Battle button on the lower left-hand corner of the Player vs. Player interface
		|tip Wait for the queue to pop-up in the middle of your screen and click on accept.
		Go to Warsong Gulch |goto Warsong Gulch |noway |c
	step
		Use one of your Great Feasts |use Great Feast##34753
		Present a Great Feast in Warsong Gulch |achieve 1785/3
		|tip You can leave the battleground now, but you will have to wait 15 minutes to complete the next step.
	step
		Push [H] on your keyboard to open your Player vs. Player interface
		Click on Strand of the Ancients and then click on the Join Battle button on the lower left-hand corner of the Player vs. Player interface
		|tip Wait for the queue to pop-up in the middle of your screen and click on accept.
		Go to Strand of the Ancients |goto Strand of the Ancients |noway |c
	step
		Use one of your Great Feasts |use Great Feast##34753
		Present a Great Feast in Strand of the Ancients |achieve 1785/4
		|tip You can leave the battleground now, but you will have to wait 15 minutes to complete the next step.
	step
		Push [H] on your keyboard to open your Player vs. Player interface
		Click on Arathi Basin and then click on the Join Battle button on the lower left-hand corner of the Player vs. Player interface
		|tip Wait for the queue to pop-up in the middle of your screen and click on accept.
		Go to Eye of the Storm |goto Arathi Basin |noway |c
	step
		Use one of your Great Feasts |use Great Feast##34753
		Present a Great Feast in Eye of the Storm |achieve 1785/5
	step
		Congratulations! You've earned the Dinner Impossible achievement!
]])

ZygorGuidesViewer:RegisterInclude("The_Northrend_Gourmet",[[
	//Northern Stew
	step
		#include "Stormwind_Cooking_Trainer"
		learn Dalaran Clam Chowder##58065
		learn Grilled Sculpin##45563
		learn Mammoth Meal##45549
		learn Pickled Fangtooth##45566
		learn Poached Nettlefish##45565
		learn Rhino Dogs##45553
		learn Roasted Worg##45552
	step
		#include "Stormwind_Cooking_Trainer"
		learn Shoveltusk Steak##45550
		learn Smoked Salmon##45564
		learn Worm Delight##45551
		learn Fisherman's Feast##42302
		learn Hot Buttered Trout##42305
		learn Great Feast##45554
		learn Black Jelly##64358
		learn Darkbrew Lager##88015
		learn Blackened Surprise##88006
	step
		talk Rollick MacKreel##26989
		accept Northern Cooking##13088 |goto Borean Tundra 57.8,71.4
	step
		kill Wooly Rhino Matriarch##25487+,Wooly Rhino Calf##25488+
		collect 4 Chilled Meat##43013 |q 13088 |goto 45,47.4
	step
		talk Rollick MacKreel##26989
		turnin Northern Cooking##13088
		learn Northern Stew##57421 |goto 57.8,71.4
	//Emotions food
	step
		kill Crypt Crawler##25227
		collect 1 Recipe: Bad Clams##43509 |goto 54.6,70.0
		collect 1 Recipe: Last Week's Mammoth##43508 |goto 54.6,70.0
		collect 1 Recipe: Haunted Herring##43510 |goto 54.6,70.0
		collect 1 Recipe: Tasty Cupcake##43507 |goto 54.6,70.0
	step
		use Recipe: Bad Clams##43509
		learn Bad Clams##58523
		use Recipe: Haunted Herring##43510
		learn Haunted Herring##58525
		use Recipe: Last Week's Mammoth##43508
		learn Last Week's Mammoth##58521
		use Recipe: Tasty Cupcake##43507
		learn Tasty Cupcake##58512
	step
		talk Grimbooze Thunderbrew##29157
		accept Some Make Lemonade, Some Make Liquor##12634 |goto Sholazar Basin 26.8,60.1
	step
		click Sturdy Vine##190622
		|tip They look like brown vines that hang from trees around this area. Sometimes a Dwarf will fall out and give you fruit you need.
		Click the fruit that falls to the ground or talk to the dwarf that falls
		collect Orange##38656 |q 12634/1 |goto 37.6,61.8
		collect 2 Banana Bunch##38653 |q 12634/2 |goto 37.6,61.8
		collect Papaya##38655 |q 12634/3 |goto 37.6,61.8
	step
		talk Grimbooze Thunderbrew##29157
		turnin Some Make Lemonade, Some Make Liquor##12634 |goto 26.8,60.1
		accept Still At It##12644 |goto 26.8,60.1
	step
		talk "Tipsy" McManus##28566
		Tell him you are ready to start the distillation process
		Click the items on the ground or on the machine that he yells at you during the process, it's random
		Click the barrel on the ground when the process is done
		collect Thunderbrew's Jungle Punch##38688 |q 12644/1 |goto 26.7,60
	step
		talk Grimbooze Thunderbrew##29157
		turnin Still At It##12644 |goto 26.8,60.1
		accept The Taste Test##12645 |goto 26.8,60.1
	step
		use Jungle Punch Sample##38697
		|tip Use your Jungle Punch Sample on Hadrius Harlowe.
		|tip Standing next to a tiki torch.
		Complete Hadrius' Taste Test |q 12645/2 |goto 27.4,59.4
	step
		use Jungle Punch Sample##38697
		|tip Use your Jungle Punch Sample on Hemet Nesingwary.
		|tip Standing in front of a tent.
		Complete Hemet's Taste Test |q 12645/1 |goto 27.1,58.6
	step
		talk Grimbooze Thunderbrew##29157
		turnin The Taste Test##12645 |goto 26.8,60.1
	step
		talk Washed-Up Mage##32516
		accept Fletcher's Lost and Found##13571 |goto Dalaran/2 44.2,25.6
	step
		Use the Professions section of this guide to get to 450 cooking |only if skill("Cooking")<450
		Use the Dalaran Cooking Dailies section of this guide to earn Dalaran Cooking Awards to buy the following recipes:
		|tip You will need a total of 74 Dalaran Cooking Awards to get all of the recipes.
		#include "vendor_Cooking_Dalaran"
		buy 1 Recipe: Mega Mammoth Meal##43018
		buy 1 Recipe: Tender Shoveltusk Steak##43019
		buy 1 Recipe: Spiced Worm Burger##43020
		buy 1 Recipe: Very Burnt Worg##43021
		buy 1 Recipe: Worg Tartare##44954
		buy 1 Recipe: Mighty Rhino Dogs##43022
		buy 1 Recipe: Poached Northern Sculpin##43023 //50
		buy 1 Recipe: Firecracker Salmon##43024
		buy 1 Recipe: Spicy Blue Nettlefish##43025
		buy 1 Recipe: Imperial Manta Steak##43026
		buy 1 Recipe: Spicy Fried Herring##43027
		buy 1 Recipe: Rhinolicious Wormsteak##43028 |goto Dalaran 70.1,38.2
	step
		Use the Professions section of this guide to get to 450 cooking |only if skill("Cooking")<450
		use Recipe: Mega Mammoth Meal##43018 |only if itemcount(43018) >= 1
		learn Mega Mammoth Meal##45555
		use Recipe: Tender Shoveltusk Steak##43019 |only if itemcount(43019) >= 1
		learn Tender Shoveltusk Steak##45556
		use Recipe: Spiced Worm Burger##43020 |only if itemcount(43020) >= 1
		learn Spiced Worm Burger##45557
		use Recipe: Very Burnt Worg##43021 |only if itemcount(43021) >= 1
		learn Very Burnt Worg##45558
		use Recipe: Worg Tartare##44954 |only if itemcount(44954) >= 1
		learn Worg Tartare##62350
		use Recipe: Mighty Rhino Dogs##43022 |only if itemcount(43022) >= 1
		learn Mighty Rhino Dogs##45559
		use Recipe: Poached Northern Sculpin##43023 |only if itemcount(43023) >= 1
		learn Poached Northern Sculpin##45567
		use Recipe: Firecracker Salmon##43024 |only if itemcount(43024) >= 1
		learn Firecracker Salmon##45568
		use Recipe: Spicy Blue Nettlefish##43025 |only if itemcount(43025) >= 1
		learn Spicy Blue Nettlefish##45571
		use Recipe: Imperial Manta Steak##43026 |only if itemcount(43026) >= 1
		learn Imperial Manta Steak##45570
		use Recipe: Spicy Fried Herring##43027 |only if itemcount(43027) >= 1
		learn Spicy Fried Herring##57433
		use Recipe: Rhinolicious Wormsteak##43028 |only if itemcount(43028) >= 1
		learn Rhinolicious Wormsteak##57434
	step
		Use the Professions section of this guide to get to 450 cooking |only if skill("Cooking")<450
		Use the Dalaran Cooking Dailies section of this guide to earn Dalaran Cooking Awards to buy the following recipes:
		|tip You will need a total of 74 Dalaran Cooking Awards to get all of the recipes
		#include "vendor_Cooking_Dalaran"
		buy 1 Recipe: Critter Bites##43029 |goto Dalaran 70.1,38.2
		buy 1 Recipe: Hearty Rhino##43030 |goto Dalaran 70.1,38.2
		buy 1 Recipe: Snapper Extreme##43031 |goto Dalaran 70.1,38.2
		buy 1 Recipe: Blackened Worg Steak##43032 |goto Dalaran 70.1,38.2
		buy 1 Recipe: Cuttlesteak##43033 |goto Dalaran 70.1,38.2
		buy 1 Recipe: Spiced Mammoth Treats##43034 |goto Dalaran 70.1,38.2
		buy 1 Recipe: Blackened Dragonfin##43035 |goto Dalaran 70.1,38.2
		buy 1 Recipe: Dragonfin Fillet##43036 |goto Dalaran 70.1,38.2
		buy 1 Recipe: Tracker Snacks##43037 |goto Dalaran 70.1,38.2
		buy 1 Recipe: Gigantic Feast##43505 |goto Dalaran 70.1,38.2
		buy 1 Recipe: Small Feast##43506 |goto Dalaran 70.1,38.2
		buy 1 Recipe: Fish Feast##43017 |goto Dalaran 70.1,38.2
	step
		Use the Professions section of this guide to get to 450 cooking |only if skill("Cooking")<450
		use Recipe: Critter Bites##43029 |only if itemcount(43029) >= 1
		learn Critter Bites##57435
		use Recipe: Hearty Rhino##43030 |only if itemcount(43030) >= 1
		learn Hearty Rhino##57436
		use Recipe: Snapper Extreme##43031 |only if itemcount(43031) >= 1
		learn Snapper Extreme##57437
		use Recipe: Blackened Worg Steak##43032 |only if itemcount(43032) >= 1
		learn Blackened Worg Steak##57438
		use Recipe: Cuttlesteak##43033 |only if itemcount(43033) >= 1
		learn Cuttlesteak##57439
		use Recipe: Spiced Mammoth Treats##43034 |only if itemcount(43034) >= 1
		learn Spiced Mammoth Treats##57440
		use Recipe: Blackened Dragonfin##43035 |only if itemcount(43035) >= 1
		learn Blackened Dragonfin##57441
		use Recipe: Dragonfin Fillet##43036 |only if itemcount(43036) >= 1
		learn Dragonfin Fillet##57442
		use Recipe: Tracker Snacks##43037 |only if itemcount(43037) >= 1
		learn Tracker Snacks##57443
		use Recipe: Gigantic Feast##43505 |only if itemcount(43505) >= 1
		learn Gigantic Feast##58527
		use Recipe: Small Feast##43506 |only if itemcount(43506) >= 1
		learn Small Feast##58528
		use Recipe: Fish Feast##43017 |only if itemcount(43017) >= 1
		learn Fish Feast##57423
	step
		You can either buy these from the Auction House or farm them
		collect 1 Barrelhead Goby##41812
		collect 4 Bonescale Snapper##41808
		collect 5 Chilled Meat##43013
		collect 8 Chunk o' Mammoth##34736
		collect 2 Deep Sea Monsterbelly##41800
		collect 2 Dragonfin Angelfish##41807
		collect 1 Essence of Undeath##12808
		collect 2 Fangtooth Herring##41810
		collect 6 Glacial Salmon##41809
		collect 2 Imperial Manta Ray##41809
		collect 1 Moonglow Cuttlefish##41801
		collect 1 Mote of Shadow##22577
		collect 4 Musselback Sculpin##41806
		collect 6 Nettlefish##51813
		collect 1 Northern Egg##43501
		collect 23 Northern Spices##43007
		collect 7 Rhino Meat##43012
		collect 3 Rockfin Grouper##41803
		collect 4 Shoveltusk Flank##43009
		collect 3 Succulent Clam Meat##36782
		collect 5 Worg Haunch##43011
		collect 5 Worm Meat##43010
	step
		talk Erika Tate##5483
		buy 2 Simple Flour##30817 |goto 77.6,53.1
	step
		talk Innkeeper Allison##6740
		buy 2 Tundra Berries##35949 |goto Stormwind City 60.8,74.8
		buy 1 Savory Snowplum##35948 |goto Stormwind City 60.8,74.8
	step
		Build a Basic Campfire |cast Basic Campfire##818
		create Bad Clams##58523,Cooking,1 total
		Cook Bad Clams |achieve 1777/1
	step
		create Baked Manta Ray##45569,Cooking,1 total
		Cook Baked Manta Ray |achieve 1777/2
	step
		create Blackened Dragonfin##57441,Cooking,1 total
		Cook Blackened Dragonfin |achieve 1777/3
	step
		create Blackened Worg Steak##57438,Cooking,1 total
		Cook Blackened Worg Steak |achieve 1777/4
	step
		create Critter Bites##57435,Cooking,1 total
		Cook Critter Bites |achieve 1777/5
	step
		create Cuttlesteak##57439,Cooking,1 total
		Cook Cuttlesteak |achieve 1777/6
	step
		create Dalaran Clam Chowder##58065,Cooking,1 total
		Cook Dalaran Clam Chowder |achieve 1777/7
	step
		create Dragonfin Filet##57442,Cooking,1 total
		Cook Dragonfin Filet |achieve 1777/8
	step
		create Firecracker Salmon##45568,Cooking,1 total
		Cook Firecracker Salmon |achieve 1777/9
	step
		create Fish Feast##57423,Cooking,1 total
		Cook Fish Feast |achieve 1777/10
	step
		create Gigantic Feast##58527,Cooking,1 total
		Cook Gigantic Feast |achieve 1777/11
	step
		create Great Feast##45554,Cooking,1 total
		Cook Great Feast |achieve 1777/12
	step
		create Grilled Bonescale##45561,Cooking,1 total
		Cook Grilled Bonescale |achieve 1777/13
	step
		create Grilled Sculpin##45563,Cooking,1 total
		Cook Grilled Sculpin |achieve 1777/14
	step
		create Haunted Herring##58525,Cooking,1 total
		Cook Haunted Herring |achieve 1777/15
	step
		create Hearty Rhino##57436,Cooking,1 total
		Cook Hearty Rhino |achieve 1778/16
	step
		create Imperial Manta Steak##45570,Cooking,1 total
		Cook Imperial Manta Steak |achieve 1778/17
	step
		create Kungaloosh##53056,Cooking,1 total
		Cook Kungaloosh |achieve 1778/18
	step
		create Last Week's Mammoth##58521,Cooking,1 total
		Cook Last Week's Mammoth |achieve 1778/19
	step
		create Mammoth Meal##45549,Cooking,1 total
		Cook Mammoth Meal |achieve 1778/20
	step
		create Mega Mammoth Meal##45555,Cooking,1 total
		Cook Mega Mammoth Meal |achieve 1778/21
	step
		create Mighty Rhino Dogs##45559,Cooking,1 total
		Cook Mighty Rhino Dogs |achieve 1778/22
	step
		create Northern Stew##57421,Cooking,1 total
		Cook Northern Stew |achieve 1778/23
	step
		create Pickeled Fangtooth##45566,Cooking,1 total
		Cook Pickeled Fangtooth |achieve 1778/24
	step
		create Poached Nettlefish##45565,Cooking,1 total
		Cook Poached Nettlefish |achieve 1778/25
	step
		create Poached Northern Sculpin##45567,Cooking,1 total
		Cook Poached Northern Sculpin |achieve 1778/26
	step
		create Rhino Dogs##45553,Cooking,1 total
		Cook Rhino Dogs |achieve 1778/27
	step
		create Rhinolicious Wormsteak##57434,Cooking,1 total
		Cook Rhinolicious Wormsteak |achieve 1778/28
	step
		create Roasted Worg##45552,Cooking,1 total
		Cook Roasted Worg |achieve 1778/29
	step
		create Sauteed Goby##45562,Cooking,1 total
		Cook Sauteed Goby |achieve 1778/30
	step
		create Shoveltusk Steak##45550,Cooking,1 total
		Cook Shoveltusk Steak |achieve 1779/31
	step
		create Small Feast##58528,Cooking,1 total
		Cook Small Feast |achieve 1779/32
	step
		create Smoked Rockfin##45560,Cooking,1 total
		Cook Smoked Rockfin |achieve 1779/33
	step
		create Smoked Salmon##45564,Cooking,1 total
		Cook Smoked Salmon |achieve 1779/34
	step
		create Snapper Extreme##57437,Cooking,1 total
		Cook Snapper Extreme |achieve 1779/35
	step
		create Spiced Mammoth Treats##57440,Cooking,1 total
		Cook Spiced Mammoth |achieve 1779/36
	step
		create Spiced Worm Burger##45557,Cooking,1 total
		Cook Spiced Worm Burger |achieve 1779/37
	step
		create Spicy Blue Nettlefish##45571,Cooking,1 total
		Cook Spicy Blue Nettlefish |achieve 1779/38
	step
		create Spicy Fried Herring##57433,Cooking,1 total
		Cook Spicy Fried Herring |achieve 1779/39
	step
		create Tasty Cupcake##58512,Cooking,1 total
		Cook Tasty Cupcake |achieve 1779/40
	step
		create Tender Shoveltusk Steak##45556,Cooking,1 total
		Cook Tender Shoveltusk Steak |achieve 1779/41
	step
		create Tracker Snacks##57443,Cooking,1 total
		Cook Tracker Snacks |achieve 1779/42
	step
		create Very Burnt Worg##45558,Cooking,1 total
		Cook Very Burnt Worg |achieve 1779/43
	step
		create Worg Tartare##62350,Cooking,1 total
		Cook Worg Tartare |achieve 1779/44
	step
		create Worm Delight##45551,Cooking,1 total
		Cook Worm Delight |achieve 1779/45
		Cook #45# of the Northrend Recipes |achieve 1779
	step
		Congratulations! You've earned the Northrend Gourment achievement!
]])

ZygorGuidesViewer:RegisterInclude("Our_Daily_Bread",[[
	step
	label "begin"
		talk Katherine Lee##28705
		You will only be able to accept, and turn in, 1 of these 5 daily quests per day, and they all require you have 350+ Cooking skill:
		accept Cheese for Glowergold##13103 |or |goto Dalaran 40.8,65.4
		accept Convention at the Legerdemain##13101 |or |goto Dalaran 40.8,65.4
		accept Infused Mushroom Meatloaf##13100 |or |goto Dalaran 40.8,65.4
		accept Mustard Dogs!##13107 |or |goto Dalaran 40.8,65.4
		accept Sewer Stew##13102 |or |goto Dalaran 40.8,65.4
	step
		 Aged Dalaran Limburger##8159+
		|tip They look like piles and pieces of yellow cheese on the tables inside this building.
		collect 1 Aged Dalaran Limburger##43137 |q 13103 |goto 54.7,31.5
		Click the Half Full Glasses of Wine
		|tip They look like small blue-ish wine glasses sitting on tables, and on the ground, inside this building. They spawn in random locations.
		collect 6 Half Full Dalaran Wine Glass##43138 |q 13103 |goto 54.7,31.5
		You can find more Half Full Glasses of Wine inside the building at [49.4,39.3]
	step
		use Empty Cheese Serving Platter##43139
		collect 1 Wine and Cheese Platter##43136 |q 13103/1
	step
		click Full Jug of Wine##192823
		|tip They look like small blue-ish green jugs sitting on the ground inside this building. They spawn in random locations.
		collect 1 Jug of Wine##43128 |q 13101/2 |goto 55.0,30.8
	step
		kill Rabid Grizzly##26643+, Blighted Elk##26616+
		collect 4 Chilled Meat##43013 |q 13101 |goto Dragonblight 30.0,49.8
	step
		Use your Cooking ability to cook 4 Northern Stew
		|tip You will need a cooking fire to do this.
		collect 4 Northern Stew##34747 |q 13101/1
	step
		Enter the Dalaran sewers |goto Dalaran,60.2,47.7 < 10 |walk
		click Infused Mushroom##192818
		collect 4 Infused Mushroom##43100 |q 13100 |goto Dalaran/2 59.5,43.6
	step
		kill Rabid Grizzly##26643+, Blighted Elk##26616+
		collect 2 Chilled Meat##43013 |q 13100 |goto Dragonblight 30.0,49.8
	step
		use Meatloaf Pan##43101
		|tip You will need a cooking fire to do this.
		collect 1 Infused Mushroom Meatloaf##43099 |q 13100/1
	step
		Click the Wild Mustard
		|tip They look like small, and kind of hard to see, bushy yellow flowers on the ground around this area. They spawn randomly in grassy areas.
		collect 4 Wild Mustard##43143 |q 13107 |goto Dalaran 67.7,40.0
		You can find more Wild Mustard flowers:
		At [50.3,48.3]
		At [37.2,43.9]
	step
		kill Wooly Rhino Calf##25488+, Wooly Rhino Matriarch##25487+, Wooly Rhino Bull##25489+
		collect 4 Rhino Meat##43012 |q 13107 |goto Borean Tundra 46.7,43.6
	step
		Use your Cooking ability to cook 4 Rhino Dogs
		|tip You will need a cooking fire to do this.
		collect 4 Rhino Dogs##34752 |q 13107
	step
		use Empty Picnic Basket##43142
		collect 1 Mustard Dog Basket##43144 |q 13107/1
	step
		Click the Crystalsong Carrots
		|tip they look like carrots sticking out of the ground, at the base of trees around this area underneath Dalaran. They spawn in random locations around this area.
		collect 4 Crystalsong Carrot##43148 |q 13102 |goto Crystalsong Forest 26.9,45.5
	step
		kill Rabid Grizzly##26643+, Blighted Elk##26616+
		collect 4 Chilled Meat##43013 |q 13102 |goto Dragonblight 30.0,49.8
	step
		use Stew Cookpot##43147
		|tip You will need a cooking fire to do this.
		collect 1 Vegetable Stew##43149 |q 13102/1
	step
		talk Ranid Glowergold##28718
		turnin Cheese for Glowergold##13103 |goto Dalaran 36.6,27.8
	step
		talk Arille Azuregaze##29049
		turnin Convention at the Legerdemain##13101 |goto Dalaran 48.6,37.5
	step
		talk Orton Bennet##29527
		turnin Infused Mushroom Meatloaf##13100 |goto Dalaran 52.3,55.6
	step
		talk Archmage Pentarus##28160
		turnin Mustard Dogs!##13107 |goto Dalaran 68.6,42.0
	step
		Enter the Dalaran Sewers |goto Dalaran 60.2,47.7 < 10 |walk
		talk Ajay Green##29532
		turnin Sewer Stew##13102 |goto Dalaran 35.5,57.6
	step
		You have completed the daily quest for today
		Click here to go back to the beginning of the guide |confirm |next "begin"
		|next |only if achieved(1782)
	step
		Congratulations, you have obtained the Our Daily Bread achievement!
]])

ZygorGuidesViewer:RegisterInclude("The_Outland_Gourmet",[[
	step
		#include "Stormwind_Cooking_Trainer"
		learn Stewed Trout##42296
		learn Fisherman's Feast##42302
		learn Hot Buttered Trout##42305
	//300 Buzzard Bites TBC
	step
		talk Legassi##19344
		accept Ravager Egg Roundup##9349 |goto Hellfire Peninsula 49.2,74.8
	step
		kill Razorfang Hatchling##16932+,Razorfang Ravager##16933+
		collect 12 Ravager Egg##23217 |q 9349/1 |goto 39.0,88.4
	step
		talk Legassi##19344
		turnin Ravager Egg Roundup##9349 |goto Hellfire Peninsula 49.2,74.8
	step
		talk Legassi##19344
		accept Helboar, the Other White Meat##9361 |goto Hellfire Peninsula 49.2,74.8
	step
		kill Deranged Helboar##16863
		collect 8 Tainted Helboar Meat##23270 |goto 51.2,69.8
	step
		use Purification Mixture##23268
		|tip Use the Purification Mixture on the Tainted Meat.
		collect 8 Purified Helboar Meat##23248 |q 9361/1
	step
		talk Legassi##19344
		turnin Helboar, the Other White Meat##9361 |goto Hellfire Peninsula 49.2,74.8
	step
		talk Legassi##19344
		accept Smooth as Butter##9356 |goto Hellfire Peninsula 49.2,74.8
	step
		kill Bonestripper Buzzard##16972
		collect 12 Plump Buzzard Wing##23239 |q 9356/1 |goto 61.0,66.6
	step
		talk Legassi##19344
		accept Smooth as Butter##9356
		collect 1 Recipe: Buzzard Bites##27684 |n
		use Recipe: Buzzard Bites##27684
		learn Buzzard Bites##33279 |goto Hellfire Peninsula 49.2,74.8
		//300 Ravager Dog TBC
	step
		//alliance:
		talk Sid Limbardi##16826
		buy 1 Recipe: Ravager Dog##27688 |n
		use Recipe: Ravager Dog##27688
		learn Ravager Dog##33284 |goto Hellfire Peninsula 54.2,63.6
	//300 Clam Bar TBC
	step
		talk Mycah##18382
		buy 1 Recipe: Clam Bar##30156 |n
		use Recipe: Clam Bar##30156
		learn Clam Bar##36210 |goto Zangarmarsh 17.8,51.2
	//300 Feltail Delight TBC blackened trout
	step
		//alliance:
		talk Doba##20028
		buy 1 Recipe Feltail Delight##27695 |n
		buy 1 Recipe: Blackened Trout##27694 |n
		use Recipe Feltail Delight##27695
		learn Feltail Delight##33291 |goto Zangarmarsh 42.2,27.8
		use Recipe: Blackened Trout##27694
		learn Blackened Trout##33290 |goto Zangarmarsh 42.2,27.8
	//310 Blackened Sporefish TBC
	step
		//both
		talk Juno Dufrain##18911
		buy 1 Recipe: Blackened Sporefish##27696 |n
		use Recipe: Blackened Sporefish##27696
		learn Blackened Sporefish##33292 |goto Zangarmarsh 78.0,66.0
	//310 Sporeling Snack TBC --help
	//320 Grilled Mudfish TBC, poached bluefish, talbuk steak. roasted clefthoof
	step
		//alliance
		talk Uriku##20096
		//horde
		buy 1 Recipe: Grilled Mudfish##27697 |n
		buy 1 Recipe: Talbuk Steak##27693 |n
		buy 1 Recipe: Poached Bluefish##27698 |n
		buy 1 Recipe: Roasted Clefthoof##27691 |n
		use Recipe: Talbuk Steak##27693 |only if itemcount(27693) >= 1
		learn Talbuk Steak##33289 |goto Nagrand 56.2,73.2
		use Recipe: Grilled Mudfish##27697 |only if itemcount(27697) >= 1
		learn Grilled Mudfish##33293 |goto Nagrand 56.2,73.2
		use Recipe: Poached Bluefish##27698 |only if itemcount(27698) >= 1
		learn Poached Bluefish##33294 |goto Nagrand 56.2,73.2
		use Recipe: Roasted Clefthoof##27691 |only if itemcount(27691)>= 1
		learn Roasted Clefthoof##33287 |goto Nagrand 56.2,73.2
	//325 Golden Fish Sticks TBC + Spicy Crawdad TBC
	step
		//alliance
		talk Innkeeper Biribi##19296
		buy 1 Recipe: Golden Fish Sticks##27699 |n
		buy 1 Recipe: Spicy Crawdad##27700 |n
		use Recipe: Golden Fish Sticks##27699
		learn Golden Fish Sticks##33295 |goto Terokkar Forest 56.6,53.2
		use Recipe: Spicy Crawdad##27700
		learn Spicy Crawdad##33296 |goto Terokkar Forest 56.6,53.2
	//315 Blackened Basilisk TBC + warp burger
	step
		//alliance
		talk Supply Officer Mills##19038
		//horde
		buy 1 Recipe Blackened Basilisk##27690 |n
		buy 1 Recipe: Warp Burger##27692 |n
		use Recipe Blackened Basilisk##27690
		learn Blackened Basilisk##33286 |goto Terokkar Forest 55.8,53.0
		use Recipe: Warp Burger##27692
		learn Warp Burger##33288 |goto Terokkar Forest 55.8,53.0
	//325 Warp Burger TBC
	//335 Crunchy Serpent TBC + Mok'Nathal Shortribs TBC
	step
		talk Xerintha Ravenoak##20916
		buy 1 Recipe: Mok'Nathal Shortribs##31675 |n
		buy 1 Recipe: Crunchy Serpent##31674 |n
		use Recipe: Mok'Nathal Shortribs##31675
		learn Mok'Nathal Shortribs##38867 |goto Blade's Edge Mountains 62.4,40.2
		use Recipe: Crunchy Serpent##31674
		learn Crunchy Serpent##38868 |goto Blade's Edge Mountains 62.4,40.2
	step
		Use the Shattrath Cooking Dailies section of this guide to get these recipes:
		|tip It's not always guarenteed to come from these daily prizes so be patient.
		|tip Make sure to choose the Crate of Meat.
		collect 1 Recipe: Spicy Hot Talbuk##33873 |n
		use Recipe: Spicy Hot Talbuk##33873
		learn Spicy Hot Talbuk##43765
	//300 Broiled Bloodfin TBC + Skullfish Soup TBC
	step
		//Barrel of fish
		Use the Shattrath Cooking Dailies section of this guide to get these recipes:
		|tip It's not always guarenteed to come from these daily prizes so be patient.
		Make sure to choose the Barrel of Fish
		collect 1 Recipe: Broiled Bloodfin##33869 |n
		collect 1 Recipe: Skullfish Soup##33870 |n
		use Recipe: Broiled Bloodfin##33869
		learn Broiled Bloodfin##43761
		use Recipe: Skullfish Soup##33870
		learn Skullfish Soup##43707
	//300 Kibler's Bits TBC
	step
		Use the Shattrath Cooking Dailies section of this guide to get this recipe:
		|tip It's not always guarenteed to come from these daily prizes so be patient.
		|tip You can choose either the Crate of Meat or Barrel of Fish.
		collect 1 Recipe: Kibler's Bits##33875 |n
		use Recipe: Kibler's Bits##33875
		learn Kibler's Bits##43772
	//300 Stormchops TBC
	step
		Use the Shattrath Cooking Dailies or Dalaran Cooking Dailies section of this guide to get these recipes:
		|tip It's not always guarenteed to come from these daily prizes so be patient
		You can choose either Crate of Meat, Barrel of Fish, or Small Spice Bag
		collect 1 Recipe: Stormchops##33871 |n
		collect 1 Recipe: Delicious Chocolate Cake##33925 |n
		use Recipe: Stormchops##33871
		learn Stormchops##43758
		use Recipe: Delicious Chocolate Cake##33925
		learn Delicious Chocolate Cake##43779
	step
		You can either purchase these items from the Acution House or farm them
		collect 8 Small Eggs##6889
		collect 2 Buzzard Meat##27671
		collect 2 Clefthoof Meat##27678
		collect 2 Jaggal Clam Meat##24477
		collect 2 Talbuk Venison##27682
		collect 1 Chunk o' Basilisk##27677
		collect 1 Raptor Ribs##31670
		collect 1 Ravager Flesh##27674
		collect 1 Serpent Flesh##31671
		collect 1 Strange Spores##27676
		collect 1 Warped Flesh##27681
		collect 3 Mageroyal##785
	step
		You can either purchase these items from the Auction House or fish for them
		collect 2 Barbed Gill Trout##27422
		collect 1 Bloodfin Catfish##33823
		collect 1 Crescent-Tail Skullfish##33824
		collect 1 Enormous Barbed Gill Trout##27516
		collect 1 Figluster's Mudfish##27435
		collect 1 Golden Darter##27438
		collect 1 Huge Spotted Feltail##27515
		collect 1 Icefin Bluefish##27437
		collect 1 Lightning Eel##13757
		collect 1 Spotted Feltail##27425
		collect 1 Zangarian Sporefish##27429
	step
		talk Innkeeper Allison##6740
		buy 5 Goldenbark Apple##4539 |goto Stormwind City 60.8,74.8
		buy 4 Ice Cold Milk##1179 |goto Stormwind City 60.8,74.8
	step
		talk Erika Tate##5483
		buy 8 Simple Flour##30817 |goto 77.6,53.1
		buy 4 Mild Spices##2678 |goto 77.6,53.1
	step
		talk Reese Langston##1327
		buy 1 Flask of Port##2593 |goto Stormwind City 76.3,53.0
	step
		Build a Basic Campfire |cast Basic Campfire##818
		create Delicious Chocolate Cake##43779,Cooking,1 total
		Cook Delicious Chocolate Cake |achieve 1800/1
	step
		create Blackened Trout##33290,Cooking,1 total
		Cook Blackened Trout |achieve 1800/2
	step
		create Buzzard Bites##33279,Cooking,1 total
		Cook Buzzard Bites |achieve 1800/3
	step
		create Clam Bar##36210,Cooking,1 total
		Cook Clam Bar |achieve 1800/4
	step
		create Feltail Delight##33291,Cooking,1 total
		Cook Feltail Delight |achieve 1800/5
	step
		create Ravager Dog##33284,Cooking,1 total
		Cook Ravager Dog |achieve 1800/6
	step
		create Stormchops##43758,Cooking,1 total
		Cook Stormchops |achieve 1800/7
	step
		create Blackened Sporefish##33292,Cooking,1 total
		Cook Blackened Sporefish |achieve 1800/8
	step
		create Blackened Basilisk##33286,Cooking,1 total
		Cook Blackened Basilisk |achieve 1800/9
	step
		create Grilled Mudfish##33293,Cooking,1 total
		Cook Grilled Mudfish |achieve 1800/10
	step
		create Poached Bluefish##33294,Cooking,1 total
		Cook Poached Bluefish |achieve 1800/11
	step
		create Broiled Bloodfin##43761,Cooking,1 total
		Cook Broiled Bloodfin |achieve 1800/12
	step
		create Golden Fish Sticks##33295,Cooking,1 total
		Cook Golden Fish Sticks |achieve 1800/13
	step
		create Kibler's Bits##43772,Cooking,1 total
		Cook Kibler's Bits |achieve 1800/14
	step
		create Roasted Clefthoof##33287,Cooking,1 total
		Cook Roasted Clefthoof |achieve 1800/15
	step
		create Talbuk Steak##33289,Cooking,1 total
		Cook Talbuk Steak |achieve 1800/16
	step
		create Warp Burger##33288,Cooking,1 total
		Cook Warp Burger |achieve 1800/17
	step
		create Crunchy Serpent##38868,Cooking,1 total
		Cook Crunchy Serpent |achieve 1800/18
	step
		create Mok'Nathal Shortribs##38867,Cooking,1 total
		Cook Mok'Nathal |achieve 1800/19
	step
		create Fisherman's Feast##42302,Cooking,1 total
		Cook Fisherman's Feast |achieve 1800/20
	step
		create Hot Buttered Trout##42305,Cooking,1 total
		Cook Hot Buttered Trout |achieve 1800/21
	step
		create Skullfish Soup##43707,Cooking,1 total
		Cook Skullfish Soup |achieve 1800/22
	step
		create Spicy Crawdad##33296,Cooking,1 total
		Cook Spicy Crawdad |achieve 1800/23
	step
		create Spicy Hot Talbuk##43765,Cooking,1 total
		Cook Spicy Hot Talbuk |achieve 1800/24
	step
		create Stewed Trout##42296,Cooking,1 total
		Cook Stewed Trout |achieve 1800/25
	step
		Cook each of the Outland cooking recipes |achieve 1800
	step
		Congratulations! You're earned The Outland Gourmet achievement!
]])

ZygorGuidesViewer:RegisterInclude("second_that_emotion",[[
	step
		You can either purchase these from the Auction House or farm for them:
		collect 1 Bad Clams##43491
		collect 1 Haunted Herring##43492
		collect 1 Last Week's Mammoth##43488
		collect 1 Tasty Cupcake##43490
		Click here to go farm for these |confirm |next "farm1"
		|next "eat"
	step
	label "farm1"
		You can either purchase these from the Auction House or farm for them:
		collect 1 Succulent Clam Meat##36782
		collect 1 Mote of Shadow##22577
		collect 1 Chunk o' Mammoth##34736
		collect 1 Northern Egg##43501
		collect 1 Fangtooth Herring##41810
		collect 1 Essence of Undeath##12808
		Click here to go farm for these |confirm |next "farm2"
		|next "make"
	step
	label "farm2"
		kill Winterfin Warrior##25217+
		collect Darkwater Clam##36781 |n
		use Darkwater Clam##36781
		collect 1 Succulent Clam Meat##36782 |goto Borean Tundra 41.2,17.6
	step
		kill Scourged Mammoth##25452+
		collect 1 Chunk o' Mammoth##34736 |goto Borean Tundra 78.2,24.0
	step
		kill Carrion Condor##26174
		collect 1 Northern Egg##43501 |goto Borean Tundra 85.2,36.2
	step
		Fish at this spot
		collect 1 Fangtooth Herring##41810 |goto Howling Fjord 60.2,33.6
	step
		Kill all undead mobs in the dungeon
		collect 1 Essence of Undeath##12808 |goto Scholomance 50,50
	step
	label "make"
		Get someone to make your Bad Clams, Last Week's Mammoth, Haunted Herring, and Tasty Cupcake |only if skill("Cooking")<350
		|tip Ask in your guild or in trade for someone to make these. Be sure to tip well! |only if skill("Cooking")<350
		Make your Bad Clams, Last Week's Mammoth, Haunted Herring, and Tasty Cupcake |only if skill("Cooking")>=350
		Build a Basic Campfire |cast Basic Campfire##818 |only if skill("Cooking")>=350
		create Haunted Herring##58525,Cooking,1 total |only if skill("Cooking")>=350
		create Bad Clams##58523,Cooking,1 total |only if skill("Cooking")>=350
		create Last Week's Mammoth##58521,Cooking,1 total |only if skill("Cooking")>=350
		create Tasty Cupcake##58512,Cooking,1 total |only if skill("Cooking")>=350
		collect 1 Haunted Herring##43492
		collect 1 Bad Clams##43491
		collect 1 Last Week's Mammoth##43488
		collect 1 Tasty Cupcake##43490
		Click here if you don't have these recipes |confirm |next "recipes" |only if skill("Cooking")>=350
		|next "eat"
	step
	label "recipes"
		kill Crypt Crawler##25227
		collect 1 Recipe: Bad Clams##43509 |goto Borean Tundra 54.6,70.0
		collect 1 Recipe: Last Week's Mammoth##43508 |goto Borean Tundra 54.6,70.0
		collect 1 Recipe: Haunted Herring##43510 |goto Borean Tundra 54.6,70.0
		collect 1 Recipe: Tasty Cupcake##43507 |goto Borean Tundra 54.6,70.0
	step
		use Recipe: Bad Clams##43509
		learn Bad Clams##58523
		use Recipe: Haunted Herring##43510
		learn Haunted Herring##58525
		use Recipe: Last Week's Mammoth##43508
		learn Last Week's Mammoth##58521
		use Recipe: Tasty Cupcake##43507
		learn Tasty Cupcake##58512
	step
		Build a Basic Campfire |cast Basic Campfire##818
		create Haunted Herring##58525,Cooking,1 total
		create Bad Clams##58523,Cooking,1 total
		create Last Week's Mammoth##58521,Cooking,1 total
		create Tasty Cupcake##58512,Cooking,1 total
		collect 1 Haunted Herring##43492
		collect 1 Bad Clams##43491
		collect 1 Last Week's Mammoth##43488
		collect 1 Tasty Cupcake##43490
	step
	label "eat"
		use Haunted Herring##43492
		|tip Eat the Haunted Herring to become scared.
		Eat Haunted Herring |achieve 1780/2
	step
		use Bad Clams##43491
		|tip Eat the Bad Clams to become angry.
		Eat Bad Clams |achieve 1780/1
	step
		use Last Week's Mammoth##43488
		|tip Eat the Last Week's Mammoth to become sad.
		Eat Last Week's Mammoth |achieve 1780/3
	step
		use Tasty Cupcake##43490
		|tip Eat the Tasty Cupcake to become happy.
		Eat Tasty Cupcake |achieve 1780/4
		Eat Each One of the "Emotion" Foods |achieve 1780
]])

-------------------
----- Fishing -----
-------------------

ZygorGuidesViewer:RegisterInclude("Old_Gnome_and_the_Sea",[[
		_Walk along_ the lake in Lakeshire until you find Sagefish Schools if you're unable to see one at this spot
		_Use_ your fishing ability |cast Fishing##7620
		_Successfully fish_ from a school |achieve 153 |goto Redridge Mountains 27.6,48.7
	step
		Congratulations, you have _earned_ the _The Old Gnome and the Sea_ achievement!
]])

ZygorGuidesViewer:RegisterInclude("The_Scavenger",[[
		map Zangarmarsh/0
		path	follow smart; loop on; ants curved; dist 30
		path	59.91,42.00	57.21,37.52	48.76,34.23
		path	44.32,34.94	38.46,43.88	40.40,45.77
		path	42.50,43.83	45.72,46.13	56.17,45.12
		Use your fishing ability |cast Fishing##7620
		|tip If you have the Find Fish ability, enable it by clicking the tracking button on your minimap.
		|tip Steam Pump Flotsam can be found in the water near areas of land.
		Follow the path and fish from a Steam Pump Flotsam node |achieve 1257/1
	step
	label "Floating_Wreckage_Path_1"
		map Swamp of Sorrows/0
		path	follow smart; loop off; ants curved; dist 30
		path	72.79,8.86	77.53,11.36	87.57,25.60
		path	90.20,44.04	79.79,45.78	64.91,44.57
		path	62.36,54.45	66.81,62.69	77.73,57.79
		path	89.70,59.76	88.27,71.17	79.40,89.50
		Use your fishing ability |cast Fishing##7620
		|tip If you have the Find Fish ability, enable it by clicking the tracking button on your minimap.
		|tip Floating Wreckage can be found in the water near areas of land.
		'|goto 79.40,89.50 |noway |c |next "Floating_Wreckage_Path_2" |or
		Follow the path and fish from a Floating Wreckage node |achieve 1257/5 |next "Bloodsail_Wreckage_Path_1" |or
	step
	label "Floating_Wreckage_Path_2"
		map Swamp of Sorrows/0
		path	follow smart; loop off; ants curved; dist 30
		path	79.40,89.50	88.27,71.17	89.70,59.76
		path	77.73,57.79	66.81,62.69	62.36,54.45
		path	64.91,44.57	79.79,45.78	90.20,44.04
		path	87.57,25.60	77.53,11.36	72.79,8.86
		Use your fishing ability |cast Fishing##7620
		|tip If you have the Find Fish ability, enable it by clicking the tracking button on your minimap.
		|tip Floating Wreckage can be found in the water near areas of land.
		'|goto 72.79,8.86 |noway |c |next "Floating_Wreckage_Path_1" |or
		Follow the path and fish from a Floating Wreckage node |achieve 1257/5 |next "Bloodsail_Wreckage_Path_1" |or
	step
	label "Bloodsail_Wreckage_Path_1"
		map The Cape of Stranglethorn/0
		path	follow smart; loop off; ants curved; dist 30
		path	64.43,42.56	56.68,62.76	48.00,82.83
		path	38.34,83.76	34.13,73.31	37.88,61.38
		path	32.84,39.04	32.67,25.15	39.80,23.85
		path	39.99,13.37	45.42,7.15
		Use your fishing ability |cast Fishing##7620
		|tip If you have the Find Fish ability, enable it by clicking the tracking button on your minimap.
		|tip Bloodsail Wreckage can be found in the water near areas of land.
		'|goto 45.42,7.15 |noway |c |next "Bloodsail_Wreckage_Path_2" |or
		Follow the path and fish from a Bloodsail Wreckage node |achieve 1257/2 |next "Schooner_Wreckage_Path" |or
	step
	label "Bloodsail_Wreckage_Path_2"
		map The Cape of Stranglethorn/0
		path	follow smart; loop off; ants curved; dist 30
		path	45.42,7.15	39.99,13.37	39.80,23.85
		path	32.67,25.15	32.84,39.04	37.88,61.38
		path	34.13,73.31	38.34,83.76	48.00,82.83
		path	56.68,62.76	64.43,42.56
		Use your fishing ability |cast Fishing##7620
		|tip If you have the Find Fish ability, enable it by clicking the tracking button on your minimap.
		|tip Bloodsail Wreckage can be found in the water near areas of land.
		'|goto 64.43,42.56 |noway |c |next "Bloodsail_Wreckage_Path_1" |or
		Follow the path and fish from a Bloodsail Wreckage node |achieve 1257/2 |next "Schooner_Wreckage_Path" |or
	step
	label "Schooner_Wreckage_Path"
		map Wetlands/0
		path	follow smart; loop on; ants curved; dist 30
		path	13.42,55.76	15.65,62.02	19.72,58.67
		path	16.21,49.92	21.47,37.16	30.52,35.53
		path	41.53,35.54	48.58,37.70	54.56,45.94
		path	59.98,56.87	59.65,69.99	62.65,75.20
		path	65.60,71.36	63.07,52.94	52.79,34.22
		path	36.98,28.14	26.41,22.00	19.64,25.19
		path	15.62,30.52	13.18,43.91
		Use your fishing ability |cast Fishing##7620
		|tip If you have the Find Fish ability, enable it by clicking the tracking button on your minimap.
		|tip Schooner Wreckage can be found in the water near areas of land.
		Follow the path and fish from a Schooner Wreckage node |achieve 1257/3
	step
	label "Waterlogged_Wreckage_Path_1"
		map Western Plaguelands/0
		path	follow smart; loop off; ants curved; dist 30
		path	31.18,65.39	36.72,68.79	40.64,74.08
		path	46.10,74.48	49.70,69.44	54.18,70.51
		path	61.90,63.32	68.09,59.37	68.76,49.57
		path	68.56,41.52
		Use your fishing ability |cast Fishing##7620
		|tip If you have the Find Fish ability, enable it by clicking the tracking button on your minimap.
		|tip Waterlogged Wreckage can be found in the water near areas of land.
		'|goto 68.56,41.52 |noway |c |next "Waterlogged_Wreckage_Path_2" |or
		Follow the path and fish from a Waterlogged Wreckage node |achieve 1257/4 |next "Congratulations" |or
	step
	label "Waterlogged_Wreckage_Path_2"
		map Western Plaguelands/0
		path	follow smart; loop off; ants curved; dist 30
		path	70.01,46.23	70.20,59.35	75.71,60.05
		path	80.25,71.02	77.95,81.15	68.73,84.95
		path	58.29,81.06	54.55,75.91	50.22,74.10
		path	46.09,78.52	37.26,76.75	31.83,71.26
		Use your fishing ability |cast Fishing##7620
		|tip If you have the Find Fish ability, enable it by clicking the tracking button on your minimap.
		|tip Waterlogged Wreckage can be found in the water near areas of land.
		'|goto 31.83,71.26 |noway |c |next "Waterlogged_Wreckage_Path_1" |or
		Follow the path and fish from a Waterlogged Wreckage node |achieve 1257/4 |next "Congratulations" |or
	step
	label "Congratulations"
		Congratulations!
		You have earned _The Scavenger_ achievement
]])

ZygorGuidesViewer:RegisterInclude("The_Fishing_Diplomat",[[
		_Use_ your fishing ability |cast Fishing##7620
		Fish something up in Stormwind City |achieve 150/2 |goto Stormwind City 69.0,92.2
	step
		_Use_ your fishing ability |cast Fishing##7620
		Fish something up in Orgrimmar |achieve 150/1 |goto Orgrimmar 24.8,62.8
	step
		Congratulations, you have _earned_ the _The Fishing Diplomat_ achievement!
]])

ZygorGuidesViewer:RegisterInclude("Mr_Pinchy",[[
		map Terokkar Forest
		path follow loose; loop; ants curved
		path	65.9,73.0	68.5,76.8	68.9,80.9
		path	67.3,83.7	64.5,82.2	63.6,78.3
		path	63.6,73.8	58.9,63.2	58.8,60.7
		path	58.9,58.3	60.2,57.9	60.4,60.2
		path	59.6,62.5
		_Use_ your fishing ability in Highland Mixed Schools |cast Fishing##7620
		collect Mr. Pinchy##27388
		collect Magical Crawdad Box##27445
	step
		Mr. Pinchy will _grant you 3 wishes_ on a four hour cooldown |tip He has a chance to grant you the Magical Crawdad Box
		_If all three wishes fail_ to give you the pet you will have to fish him up again
		use Mr. Pinchy##27388
		collect Magical Crawdad Box##27445 |achieve 726
	step
		Congratulations, you have _earned_ the _Mr. Pinchy's Magical Crawdad Box_ achievement!
]])

ZygorGuidesViewer:RegisterInclude("The_Lurker_Above",[[
		ding 70
	step
		_Swim down_ underwater through the tube to the Coilfang Reservoir |goto Zangarmarsh 50.4,41.0<20
	step
		_Ride_ the elevator down |goto Serpentshrine Cavern 13.5,59.6<10
		_Walk up_ the ramp and ride the elevator up |goto Serpentshrine Cavern 19.6,68.5<20
		_Walk over_ to the wooden circle with the Strange pool in the center |goto Serpentshrine Cavern,38.6,59.5<20
		_Use_ your fishing ability |cast Fishing##7620
		_Fish up_ The Lurker Below |achieve 144 |goto Serpentshrine Cavern,38.6,59.5
	step
		Congratulations, you have _earned_ the _The Lurker Above_ achievement!
]])

ZygorGuidesViewer:RegisterInclude("Old_Man_Barlowned",[[
		talk Old Man Barlo##25580
		You will only be able to _complete 1 of the following quests_ per day
		accept Crocolisks in the City##11665 |or |goto Terokkar Forest 38.7,12.8
		accept Bait Bandits##11666 |or |goto Terokkar Forest 38.7,12.8
		accept Felblood Fillet##11669 |or |goto Terokkar Forest 38.7,12.8
		accept The One That Got Away##11667 |or |goto Terokkar Forest 38.7,12.8
		accept Shrimpin' Ain't Easy##11668 |or |goto Terokkar Forest 38.7,12.8
	step
		_Use_ your fishing ability |cast Fishing##7620
		collect 1 Baby Crocolisk##34864 |q 11665/1 |goto Stormwind City 54.9,69.7
		only if haveq(11665)
	step
		_Use_ your fishing ability |cast Fishing##7620
		collect 1 Blackfin Darter##34865 |q 11666/1 |goto Terokkar Forest 51.8,37.2
		only if haveq(11666)
	step
		_Use_ your fishing ability |cast Fishing##7620
		collect 1 World's Largest Mudfish##34868 |q 11667/1 |goto Nagrand 37.4,47.1
		only if haveq(11667)
	step
		_Use_ your fishing ability |cast Fishing##7620
		collect 10 Giant Freshwater Shrimp##34866 |use Bloated Barbed Gill Trout##35313 |q 11668/1 |goto Zangarmarsh 77.9,79.7
		only if haveq(11668)
	step
		_Use_ your fishing ability |cast Fishing##7620
		collect Monstrous Felblood Snapper##34867 |q 11669/1 |goto Shadowmoon Valley 18.9,22.2
		only if haveq(11669)
	step
		talk Old Man Barlo##25580
		turnin Crocolisks in the City##11665 |only if haveq(11665) |goto Terokkar Forest 38.7,12.8
		turnin Bait Bandits##11666 |only if haveq(11666) |goto Terokkar Forest 38.7,12.8
		turnin Felblood Fillet##11669 |only if haveq(11669) |goto Terokkar Forest 38.7,12.8
		turnin The One That Got Away##11667 |only if haveq(11667) |goto Terokkar Forest 38.7,12.8
		turnin Shrimpin' Ain't Easy##11668 |only if haveq(11668) |goto Terokkar Forest 38.7,12.8
	step
		You'll need to _come back tomorrow_ for another daily |only if not achieved(905)
		Congratulations, you have _earned_ the _Old Man Barlowned_ achievement! |only if achieved(905)
]])

ZygorGuidesViewer:RegisterInclude("Outland_Angler",[[
		_Use_ your fishing ability |cast Fishing##7620
		_Fish_ from a Sporefish school |achieve 1225/6 |goto Zangarmarsh 72.5,59.9
		|tip Check around this area.
	step
		_Use_ your fishing ability |cast Fishing##7620
		_Fish_ from a Highland Mixed school |achieve 1225/5 |goto Terokkar Forest 60.8,59.0
		|tip Check around this area.
	step
		_Use_ your fishing ability |cast Fishing##7620
		_Fish_ from a School of Darter school |achieve 1225/4 |goto Terokkar Forest 55,44
		|tip Check around this area.
		_Fish_ from a Brackish Mixed school |achieve 1225/1 |goto Terokkar Forest 53,38
		|tip Check around this area.
	step
		_Use_ your fishing ability |cast Fishing##7620
		_Fish_ from a Bluefish school |achieve 1225/2 |goto Nagrand 53,39
		|tip Check around this area.
		_Fish_ from a Mudfish school |achieve 1225/3 |goto Nagrand 54,30
		|tip Check around this area.
	step
		Congratulations, you have _earned_ the _Outland Angler_ achievement!
]])

ZygorGuidesViewer:RegisterInclude("Fish_Don't_Leave_Footprints",[[
		cast Fishing##7620
		|tip Fish from various fishing pools.
		collect Weather-Beaten Journal##34109 |achieve 1243 |goto Northern Stranglethorn 31.0,37.7
	step
		use Weather-Beaten Jounral##34109
		Earn the "Fish Don't Leave Footprints" Achievement |achieve 1243
	step
		_Congratulations!_
		You Earned "Fish Don't Leave Footprints" Achievement.
]])

ZygorGuidesViewer:RegisterInclude("The_Coin_Master",[[
	step
		Here is your current progression on The Coin Master
		A Penny For Your Thoughts |achieve 2096/1
		Silver in the City |achieve 2096/2
		There's a Gold In That There Fountain |achieve 2096/3
		Click here to proceed |confirm
	step
		Use your fishing skills to fish up Copper, Silver and Gold Coins |cast Fishing##7620
		|tip This fountain is where you will be fishing from to earn these achievements.
		Earn the A Penny For Your Thoughts achievement |achieve 2096/1 |goto Dalaran 52.6,66.5
		Earn the Silver in the City achievement |achieve 2096/2 |goto Dalaran 52.6,66.5
		Earn the There's Gold In That There Fountain achievement |achieve 2096/3 |goto Dalaran 52.6,66.5
		This achievement takes a lot of time, so try to be patient
	step
		Earn the A Penny For Your Thoughts Achiement |achieve 2094
		Earn the Silver in the City achievement |achieve 2095
		Earn the There's Gold In That There Fountain achievement |achieve 1957
		Earn The Coin Master achievement |achieve 2096
	step
		Congratulation, you have earned The Coin Master achievement!
]])

ZygorGuidesViewer:RegisterInclude("One_That_Didn't_Get_Away",[[
		The fish required by this achievement have a _very low drop rate_ and will be difficult to catch
		confirm
	step
	label "start"
		You only need to _catch one of the below_ to earn this achievement so click one and start fishing!
		_Click here_ to catch a 15 Pound Mud Snapper |achieve 878/2 |confirm |next "Snapper"
		_Click here_ to catch a 22 Pound Lobster |achieve 878/3 |confirm |next "Lobster"
		_Click here_ to catch a 29 Pound Salmon |achieve 878/4 |confirm |next "Salmon"
		_Click here_ to catch a 32 Pound Catfish |achieve 878/5 |confirm |next "Catfish"
		_Click here_ to catch a 52 Pound Redgill |achieve 878/6 |confirm |next "Redgill"
		_Click here_ to catch a 68 Pound Grouper |achieve 878/7 |confirm |next "Grouper"
		_Click here_ to catch a 103 Pound Mightfish |achieve 878/1 |confirm |next "Mightfish"
		_Click here_ to catch a Dark Herring |achieve 878/8 |confirm |next "Herring"
		_Click here_ to catch a Rockhide Strongfish |achieve 878/9 |confirm |next "Strongfish"
		_Click here_ to catch a Steelscale Crushfish |achieve 878/10 |confirm |next "Crushfish"
		|next "end" |only if achieved(878)
	stickystart "shortcut"
	step
	label "Snapper"
		_Use_ your fishing ability |cast Fishing##7620
		_Catch_ a 15 Pound Mud Snapper |achieve 878/2 |goto Elwynn Forest 47.7,62.5
		|next "start"
	step
	label "Lobster"
		_Use_ your fishing ability |cast Fishing##7620
		_Catch_ a 22 Pound Lobster |achieve 878/3 |goto Swamp of Sorrows 84.0,86.4
		|next "start"
	step
	label "Salmon"
		_Use_ your fishing ability |cast Fishing##7620
		_Catch_ a 29 Pound Salmon |achieve 878/4 |goto Blasted Lands 41.4,64.7
		|next "start"
	step
	label "Catfish"
		_Use_ your fishing ability |cast Fishing##7620
		_Catch_ a 32 Pound Catfish |achieve 878/5 |goto Ashenvale 48.1,68.1
		|next "start"
	step
	label "Redgill"
		_Use_ your fishing ability |cast Fishing##7620
		_Catch_ a 52 Pound Redgill |achieve 878/6 |goto Felwood 42.6,46.4
		|next "start"
	step
	label "Grouper"
		_Use_ your fishing ability |cast Fishing##7620
		_Catch_ a 68 Pound Grouper |achieve 878/7 |goto Thousand Needles 39.2,32.2
		|next "start"
	step
	label "Mightfish"
		_Use_ your fishing ability |cast Fishing##7620
		_Catch_ a 103 Pound Mightfish |achieve 878/1 |goto Azshara 60.6,67.7
		|next "start"
	step
	label "Herring"
		_Use_ your fishing ability |cast Fishing##7620
		_Catch_ a Dark Herring |achieve 878/8 |goto Howling Fjord 57.2,33.9
		|next "start"
	step
	label "Strongfish"
		_Use_ your fishing ability |cast Fishing##7620
		_Catch_ a Rockhide Strongfish |achieve 878/9 |goto Northern Stranglethorn 33.8,41.8
		|next "start"
	step
	label "Crushfish"
		_Use_ your fishing ability |cast Fishing##7620
		_Catch_ a Steelscale Crushfish |achieve 878/10 |goto Darkmoon Island 52.1,91.3
		|next "start"
	step
	label "shortcut"
		_Click here_ to return to the start at any time |next "start"
	step
	label "end"
		Congratulations, you have _earned_ the _One That Didn't Get Away_ achievement!
]])

ZygorGuidesViewer:RegisterInclude("Northrend_Fisherman",[[
		Obtain 75 Skill Points in Northrend Fishing |achieve 130
		|tip
		Click Here to Load the "Northrend Fishing 1-75" Guide |confirm |loadguide "Profession Guides\\Fishing\\Leveling Guides\\Northrend Fishing 1-75"
	step
		_Congratulations!_
		You earned the "Northrend Fisherman" achievement.
]])

ZygorGuidesViewer:RegisterInclude("Thousand_Fish",[[
		_Use_ your fishing ability |cast Fishing##7620
		_Catch_ #1000# fish |achieve 1561 |goto Stormwind City 54.9,69.7
	step
		Congratulations, you have _earned_ the _1000 Fish_ achievement!
]])

ZygorGuidesViewer:RegisterInclude("Master_Angler_of_Azeroth",[[
		To earn this Achievement _you need to go_ to Booty Bay |tip You can try this every Sunday from 2pm to 4pm SERVER TIME
		It is recommended you _bring along as many items as you have_ to increase your fishing level
		confirm
	step
		_Use_ your fishing ability on schools of Speckled Tastyfish |cast Fishing##7620
		collect 40 Speckled Tastyfish##19807 |goto The Cape of Stranglethorn 39.1,57.9
		map The Cape of Stranglethorn
		path follow loose; loop off; ants curved
		path	64.9,39.2	64.8,41.0	63.9,45.5
		path	62.3,46.5	61.5,45.3	59.8,48.2
		path	59.5,49.8	58.0,53.1	57.0,57.7
		path	56.6,60.7	55.6,63.5	54.1,66.4
		path	52.5,68.4	52.4,73.4	52.1,74.3
		path	49.9,76.9	49.8,81.0	49.8,81.7
		path	48.0,81.0	46.7,82.8	43.7,83.0
		path	41.8,84.1	39.5,85.0	39.6,81.5
	step
		talk Riggle Bassbait##15077
		turnin Grand Prize##8193 |or |goto The Cape of Stranglethorn 41.7,73.0
		turnin Second Prize##32435 |or |goto The Cape of Stranglethorn 41.7,73.0
		turnin Third Prize##32436 |or |goto The Cape of Stranglethorn 41.7,73.0
		_Earn_ First, Second, or Third prize |achieve 306
	step
		Congratulations, you have _earned_ the _Master Angler of Azeroth_ achievement!
]])

ZygorGuidesViewer:RegisterInclude("Master_Angler_of_Northrend",[[
	step
		To earn this Achievement, you need to go to Northrend, catch a _Blacktip Shark_ and be the first to turn it in
		You can start fishing every _Saturday_ at _2pm SERVER TIME_, you will hear the NPC yell out that the
		contest has started, make sure you are next to a school of fish, and start fishing!
		confirm
	step
		talk Catherine Leland##5494
		buy 1 Fishing Pole##6256 |goto Stormwind City 55.0,69.7
		buy 10 Shiny Bauble##6529 |goto Stormwind City 55.0,69.7
	step
		talk Isirami Fairwind##32413
		home Dalaran |goto Dalaran 44.7,63.3
	step
		talk Elder Clearwater##38294
		turnin Kalu'ak Fishing Derby##24803 |goto Dalaran 52.4,65.2
	step
		click Teleport to Violet Stand Crystal##191229 |goto Dalaran 56.0,46.8 < 7
		Teleport to the Violet Stand |goto Crystalsong Forest |noway |c
	step
		map Crystalsong Forest
		path follow loose;loop off;ants straight
		path	22.5,35.4
		path	25.2,43.4	29.6,45.2	34.0,47.9
		path	38.7,54.4	44.8,56.7	50.3,56.4
		Follow this path and turn your _Track Fishing_ on
		Fish up a _Blacktip Shark_ from any school of fish |use Fishing Pole##6256
		Attach your Shiny Bauble to your fishing pole to increase your fishing skill slightly |use Shiny Bauble##6529
		collect Blacktip Shark##50289
	step
		talk Elder Clearwater##38294
		turnin Kalu'ak Fishing Derby##24803
		|tip If you are the first to turn in this quest you will get an achievement.
		Earn the Achievement Master Angler of Northrend |achieve 306 |goto Dalaran 52.4,65.2
]])

ZygorGuidesViewer:RegisterInclude("Northrend_Angler_Angler",[[
		_Use_ your fishing ability |cast Fishing##7620
		_Fish_ from an Imperial Manta Ray school |achieve 1517/7 |goto Borean Tundra 49.5,79.0
		|tip Check around this area.
		_Fish_ from a Borean Man O' War school |achieve 1517/1 |goto Borean Tundra 40.3,77.0
		|tip Check around this area.
	step
		_Use_ your fishing ability |cast Fishing##7620
		_Fish_ from a Musselback Scuplin school |achieve 1517/9 |goto Borean Tundra 51.2,42.4
		|tip Check around this area.
	step
		_Use_ your fishing ability |cast Fishing##7620
		_Fish_ from a Deep Sea Monsterbelly school |achieve 1517/2 |goto Borean Tundra 82.7,59.5
		|tip Check around this area.
		_Fish_ from a Moonglow Cuttlefish school |achieve 1517/8 |goto Borean Tundra 82.7,59.5
		|tip Check around this area.
	step
		_Use_ your fishing ability |cast Fishing##7620
		_Fish_ from a Nettlefish school |achieve 1517/10 |goto Sholazar Basin 46.8,64.7
		|tip Check around this area.
	step
		_Use_ your fishing ability |cast Fishing##7620
		_Fish_ from a Dragonfin Angelfish school |achieve 1517/3 |goto Dragonblight 42.3,67.8
		|tip Check around this area.
	step
		_Use_ your fishing ability |cast Fishing##7620
		_Fish_ from a Glassfin Minnow school |achieve 1517/6 |goto Crystalsong Forest 49.0,54.1
		|tip Check around this area.
	step
		_Use_ your fishing ability |cast Fishing##7620
		_Fish_ from a Glacial Salmon school |achieve 1517/5 |goto Grizzly Hills 28.6,60.8
		|tip Check around this area.
	step
		_Use_ your fishing ability |cast Fishing##7620
		_Fish_ from a Fangtooth Herring school |achieve 1517/4 |goto Howling Fjord 60.8,60.3
		|tip Check around this area.
	step
		Congratulations, you have _earned_ the _Northrend Angler_ achievement!
]])