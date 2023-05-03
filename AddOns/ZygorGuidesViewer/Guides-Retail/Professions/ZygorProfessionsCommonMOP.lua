local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end

ZygorGuidesViewer.GuideMenuTier = "MOP"

-------------
-- ALCHEMY --
-------------

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Alchemy\\Leveling Guides\\Pandaria Alchemy 1-75",{
	author="support@zygorguides.com",
	description="\nThis guide will walk you through leveling your Pandaria Alchemy skill from 1-75.",
	condition_end=function() return skill('Pandaria Alchemy') >= 75 end,
	condition_suggested=function() return skill('Alchemy') > 0 and skill('Pandaria Alchemy') < 75 and level >= 78 end,
	},[[
	step
		talk Ni Gentlepaw##56777
		Train Pandaria Alchemy |skillmax Pandaria Alchemy,75 |goto The Jade Forest/0 46.55,46.02
		|tip You must be at least level 5.
	step
		talk Ni Gentlepaw##56777
		buy 100 Crystal Vial##3371 |goto 46.55,46.02
	step
		collect 30 Green Tea Leaf##72234
		|tip Farm them with Herbalism or purchase them from the Auction House.
		|only if skill("Pandaria Alchemy") < 75
	step
		Open Your Alchemy Crafting Panel:
		_<Create 9 Master Healing Potion>_
		Reach Level 10 Pandaria Alchemy |skill Pandaria Alchemy,10
	step
		Open Your Alchemy Crafting Panel:
		_<Create 45+ of the learned recipes>_
		|tip You should have discovered at least one new recipe.
		|tip Prioritize recipes that require cheaper Green Tea Leaf.
		|tip Master Mana Potion is the recipe you need to learn.
		Reach Level 55 Pandaria Alchemy |skill Pandaria Alchemy,55
	step
		collect 20 Snow Lily##79010
		|tip Farm them with Herbalism or purchase them from the Auction House.
		|only if skill("Pandaria Alchemy") < 75
	step
		collect 20 Fool's Cap##79011
		|tip Farm them with Herbalism or purchase them from the Auction House.
		|only if skill("Pandaria Alchemy") < 75
	step
		Open Your Alchemy Crafting Panel:
		_<Create 20 Master Mana Potion>_
		|tip If you haven't learned this recipe yet, keep making the previous recipes until you do.
		Reach Level 75 Pandaria Alchemy |skill Pandaria Alchemy,75
	step
		_Congratulations!_
		You Reached 75 Pandaria Alchemy Skill.
]])

-------------
-- COOKING --
-------------

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Daily Guides\\Pandaria Cooking Daily Guide",{
	},[[
	step
		#include "MoP_Cooking_Dailies"
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Leveling Guides\\Pandaria Cooking 1-75",{
	author="support@zygorguides.com",
	description="\nThis guide will walk you through leveling your Pandaria Cooking skill from 1-75.",
	condition_end=function() return skill('Pandaria Cooking') >= 75 end,
	condition_suggested=function() return skill('Cooking') > 0 and skill('Pandaria Cooking') < 75 and level >= 78 end,
	},[[
		leechsteps "Profession Guides\\Cooking\\Leveling Guides\\Pandaria Way of the Grill 1-75" 1-32
	step
		_Congratulations!_
		You Reached Level 75 Pandaria Cooking Skill.
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Leveling Guides\\Pandaria Way of the Brew 1-75",{
	author="support@zygorguides.com",
	description="\nThis guide will walk you through completing the \"Way of the Brew\" Cooking path.",
	condition_end=function() return skill('Way of the Brew') >= 75 end,
	condition_suggested=function() return skill('Pandaria Cooking') > 0 and skill('Way of the Brew') < 75 and level >= 78 end,
	keywords={"Cooking"},
	achieveid={7305},
	patch='50004',
	},[[
	step
		talk Sungshin Ironpaw##64231
		Train Pandaria Cooking |skillmax Pandaria Cooking,75 |goto Valley of the Four Winds/0 53.58,51.24
		|tip You must be at least level 5.
	step
		Complete the Intro Quests for the Farm |complete completedq(31945)
		|tip Use the Tillers guides to accomplish this.
	step
		talk Sungshin Ironpaw##64231
		accept So You Want to Be a Chef...##31281 |goto 53.58,51.23
	step
		talk Sungshin Ironpaw##64231
		learn Silced Peaches##125117 |goto 53.58,51.23
	step
		talk Sungshin Ironpaw##64231
		buy 5 Pandaren Peach##74660 |q 31281 |goto 53.58,51.23
	step
		_<Create a Cooking Fire>_
		Open Your Cooking Crafting Panel:
		_<Create 5 Sliced Peaches>_
		Make #5# Sliced Peaches |q 31281/1
	step
		collect 5 Sliced Peaches##86057 |q 31281/2
	step
		talk Sungshin Ironpaw##64231
		turnin So You Want to Be a Chef...##31281 |goto 53.58,51.23
		accept Ready for Greatness##31302 |goto 53.58,51.23
	step
		talk Sungshin Ironpaw##64231
		learn Rice Pudding##125122 |goto 53.58,51.23
	step
		talk Sungshin Ironpaw##64231
		buy 5 Rice##74851 |q 31302 |goto 53.58,51.23
	step
		talk Sungshin Ironpaw##64231
		buy 5 Yak Milk##74852 |q 31302 |goto 53.58,51.23
	step
		_<Create a Cooking Fire>_
		Open Your Cooking Crafting Panel:
		_<Create 5 Rice Puddings>_
		Make #5# Rice Pudding |q 31302/1
	step
		collect 5 Rice Pudding##86069 |q 31302/2
	step
		talk Sungshin Ironpaw##64231
		turnin Ready for Greatness##31302 |goto 53.58,51.23
		accept Way of the Brew##31479 |goto 53.58,51.23
	step
		talk Sungshin Ironpaw##64231
		buy 40 Ginseng##74845 |q 31480 |goto 53.58,51.23
	step
		talk Bobo Ironpaw##58717
		turnin Way of the Brew##31479 |goto 53.17,52.23
		accept Have a Drink##31480 |goto 53.17,52.23
	step
		talk Bobo Ironpaw##58717
		learn Ginseng Tea##124052 |q 31480/1 |goto 53.17,52.23
	step
		_<Create a Cooking Fire>_
		Open Your Cooking Crafting Panel:
		_<Create 1 Ginseng Tea>_
		collect 1 Ginseng Tea##75026 |q 31480/2 |goto 52.91,51.44
	step
		talk Bobo Ironpaw##58717
		turnin Have a Drink##31480 |goto 53.17,52.23
	step
		_<Create a Cooking Fire>_
		Open Your Cooking Crafting Panel:
		_<Create 40 Ginseng Tea>_
		|tip You may need to make a few more.
		Reach 30 Way of the Brew Cooking |skill Way of the Brew,30
	step
		talk Bobo Ironpaw##58717
		learn Jade Witch Brew##124053 |goto 53.17,52.23
	step
		collect 100 Jade Squash##74847
		|tip These can be looted from Hozen enemies.
		|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill or grow them at your farm.
		|tip You can also purchase them from the Auction House.
		|only if skill("Way of the Brew") < 50
	step
		collect 350 Witchberries##74846
		|tip These can be looted from Saurok and Sprite enemies.
		|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill or grow them at your farm.
		|tip You can also purchase them from the Auction House.
		|only if skill("Way of the Brew") < 50
	step
		_<Create a Cooking Fire>_
		Open Your Cooking Crafting Panel:
		_<Create 20 Jade Witch Brew>_
		Reach 50 Way of the Brew Cooking |skill Way of the Brew,50
	step
		talk Bobo Ironpaw##58717
		learn Banquet of the Brew##125602 |goto 53.17,52.23
	step
		earn 5 Ironpaw Token##402
		|tip Use the "Pandaria Cooking Dailies" guide to accomplish this.
		|only if skill("Way of the Brew") < 75
	step
		collect 250 Green Cabbage##74840
		|tip These can be looted from Virmen enemies.
		|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill or grow them at your farm.
		|tip You can also purchase them from the Auction House.
		|only if skill("Way of the Brew") < 75
	step
		talk Nam Ironpaw##64395
		buy 5 100 Year Soy Sauce##74853 |goto 53.53,51.25
		|only if skill("Way of the Brew") < 75
	step
		_<Create a Cooking Fire>_
		Open Your Cooking Crafting Panel:
		_<Create 5 Banquet of the Brew>_
		Reach 75 Way of the Brew Cooking |skill Way of the Brew,75
	step
		_Congratulations!_
		You Reached 75 Way of the Brew Cooking Skill.
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Leveling Guides\\Pandaria Way of the Grill 1-75",{
	author="support@zygorguides.com",
	description="\nThis guide will walk you through completing the \"Way of the Grill\" Cooking path.",
	condition_end=function() return skill('Way of the Grill') >= 75 end,
	condition_suggested=function() return skill('Pandaria Cooking') > 0 and skill('Way of the Grill') < 75 and level >= 78 end,
	keywords={"Cooking"},
	achieveid={7300},
	patch='50004',
	},[[
	step
		talk Sungshin Ironpaw##64231
		Train Pandaria Cooking |skillmax Pandaria Cooking,75 |goto Valley of the Four Winds/0 53.58,51.24
		|tip You must be at least level 5.
	step
		Complete the Intro Quests for the Farm |complete completedq(31945)
		|tip Use the Tillers guides to accomplish this.
	step
		talk Sungshin Ironpaw##64231
		accept So You Want to Be a Chef...##31281 |goto 53.58,51.23
	step
		talk Sungshin Ironpaw##64231
		learn Silced Peaches##125117 |goto 53.58,51.23
	step
		talk Sungshin Ironpaw##64231
		buy 5 Pandaren Peach##74660 |q 31281 |goto 53.58,51.23
	step
		_<Create a Cooking Fire>_
		Open Your Cooking Crafting Panel:
		_<Create 5 Sliced Peaches>_
		Make #5# Sliced Peaches |q 31281/1
	step
		collect 5 Sliced Peaches##86057 |q 31281/2
	step
		talk Sungshin Ironpaw##64231
		turnin So You Want to Be a Chef...##31281 |goto 53.58,51.23
		accept Ready for Greatness##31302 |goto 53.58,51.23
	step
		talk Sungshin Ironpaw##64231
		learn Rice Pudding##125122 |goto 53.58,51.23
	step
		talk Sungshin Ironpaw##64231
		buy 5 Rice##74851 |q 31302 |goto 53.58,51.23
	step
		talk Sungshin Ironpaw##64231
		buy 5 Yak Milk##74852 |q 31302 |goto 53.58,51.23
	step
		_<Create a Cooking Fire>_
		Open Your Cooking Crafting Panel:
		_<Create 5 Rice Puddings>_
		Make #5# Rice Pudding |q 31302/1
	step
		collect 5 Rice Pudding##86069 |q 31302/2
	step
		talk Sungshin Ironpaw##64231
		turnin Ready for Greatness##31302 |goto 53.58,51.23
		accept Way of the Grill##31311 |goto 53.58,51.23
	step
		collect 30 Raw Tiger Steak##74833 |q 31311
		|tip These can be farmed from Tigers in the Jade Forest.
		|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill or grow them at your farm.
		|tip You can also purchase them from the Auction House.
	step
		talk Kol Ironpaw##58712
		turnin Way of the Grill##31311 |goto 52.98,51.33
		accept Strong as a Tiger##31467 |goto 52.98,51.33
	step
		talk Kol Ironpaw##58712
		learn Charbroiled Tiger Steak##104298 |q 31467/1 |goto 52.97,51.31
	step
		_<Create a Cooking Fire>_
		Open Your Cooking Crafting Panel:
		_<Create 5 Charbroiled Tiger Steak>_
		collect 5 Charbroiled Tiger Steak##74642 |q 31467/2
	step
		talk Kol Ironpaw##58712
		turnin Strong as a Tiger##31467 |goto 52.97,51.31
	step
		_<Create a Cooking Fire>_
		Open Your Cooking Crafting Panel:
		_<Create 20 Charbroiled Tiger Steak>_
		Reach Level 25 Way of the Grill Cooking |skill Way of the Grill,25
	step
		talk Kol Ironpaw##58712
		Learn Eternal Blossom Fish |learn Eternal Blossom Fish##104299 |goto 52.97,51.31
	step
		collect 25 Jade Lungfish##74856
		|tip These can be fished in rivers in Valley of the Four Winds.
		|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill or grow them at your farm.
		|tip You can also purchase them from the Auction House.
		|only if skill("Way of the Grill") < 50
	step
		collect 125 Striped Melon##74848
		|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill or grow them at your farm.
		|tip You can also purchase them from the Auction House.
		|only if skill("Way of the Grill") < 50
	step
		_<Create a Cooking Fire>_
		Open Your Cooking Crafting Panel:
		_<Create 25 Eternal Blossom Fish>_
		Reach Level 50 Way of the Grill Cooking |skill Way of the Grill,50
	step
		talk Kol Ironpaw##58712
		learn Banquet of the Grill##126492 |goto 52.98,51.34
	step
		earn 5 Ironpaw Token##402
		|tip Use the "Pandaria Cooking Dailies" guide to accomplish this.
		|only if skill("Way of the Grill") < 75
	step
		collect 50 Redbelly Mandarin##74860
		|tip These can be fished in Townlong Steppes near the Fields of Niuzao.
		|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill or grow them at your farm.
		|tip You can also purchase them from the Auction House.
		|only if skill("Way of the Grill") < 75
	step
		collect 50 Raw Crab Meat##74838
		|tip These can be farming from Much Sifters in the Dread Wastes.
		|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill or grow them at your farm.
		|tip You can also purchase them from the Auction House.
		|only if skill("Way of the Grill") < 75
	step
		collect 250 White Turnip##74850
		|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill or grow them at your farm.
		|tip You can also purchase them from the Auction House.
		|only if skill("Way of the Grill") < 75
	step
		talk Nam Ironpaw##64395
		buy 5 100 Year Soy Sauce##74853 |goto 53.53,51.25
		|only if skill("Way of the Grill") < 75
	step
		_<Create a Cooking Fire>_
		Open Your Cooking Crafting Panel:
		_<Create 5 Banquet of the Grill>_
		Reach Level 75 Way of the Grill Cooking |skill Way of the Grill,75
	step
		_Congratulations!_
		You Reached 75 Way of the Grill Cooking Skill.
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Leveling Guides\\Pandaria Way of the Oven 1-75",{
	author="support@zygorguides.com",
	description="\nThis guide will walk you through completing the \"Way of the Oven\" Cooking path.",
	condition_end=function() return skill('Way of the Oven') >= 75 end,
	condition_suggested=function() return skill('Pandaria Cooking') > 0 and skill('Way of the Oven') < 75 and level >= 78 end,
	keywords={"Cooking"},
	achieveid={7304},
	patch='50004',
	},[[
	step
		talk Sungshin Ironpaw##64231
		Train Pandaria Cooking |skillmax Pandaria Cooking,75 |goto Valley of the Four Winds/0 53.58,51.24
		|tip You must be at least level 5.
	step
		Complete the Intro Quests for the Farm |complete completedq(31945)
		|tip Use the Tillers guides to accomplish this.
	step
		talk Sungshin Ironpaw##64231
		accept So You Want to Be a Chef...##31281 |goto Valley of the Four Winds/0 53.58,51.23
	step
		talk Sungshin Ironpaw##64231
		learn Silced Peaches##125117 |goto 53.58,51.23
	step
		talk Sungshin Ironpaw##64231
		buy 5 Pandaren Peach##74660 |q 31281 |goto 53.58,51.23
	step
		_<Create a Cooking Fire>_
		Open Your Cooking Crafting Panel:
		_<Create 5 Sliced Peaches>_
		Make #5# Sliced Peaches |q 31281/1
	step
		collect 5 Sliced Peaches##86057 |q 31281/2
	step
		talk Sungshin Ironpaw##64231
		turnin So You Want to Be a Chef...##31281 |goto 53.58,51.23
		accept Ready for Greatness##31302 |goto 53.58,51.23
	step
		talk Sungshin Ironpaw##64231
		learn Rice Pudding##125122 |goto 53.58,51.23
	step
		talk Sungshin Ironpaw##64231
		buy 5 Rice##74851 |q 31302 |goto 53.58,51.23
	step
		talk Sungshin Ironpaw##64231
		buy 5 Yak Milk##74852 |q 31302 |goto 53.58,51.23
	step
		_<Create a Cooking Fire>_
		Open Your Cooking Crafting Panel:
		_<Create 5 Rice Puddings>_
		Make #5# Rice Pudding |q 31302/1
	step
		collect 5 Rice Pudding##86069 |q 31302/2
	step
		talk Sungshin Ironpaw##64231
		turnin Ready for Greatness##31302 |goto 53.58,51.23
		accept Way of the Oven##31478 |goto 53.58,51.23
	step
		collect 30 Wildfowl Breast##74839 |q 31478
		|tip These can be looted from Whitefisher Cranes in Valley of the Four Winds.
		|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill or grow them at your farm.
		|tip You can also purchase them from the Auction House.
	step
		talk Jian Ironpaw##58716
		turnin Way of the Oven##31478 |goto 53.40,51.60
		accept Endurance##31477 |goto 53.40,51.60
	step
		talk Jian Ironpaw##58716
		learn Wildfowl Roast##104310 |q 31477/1 |goto 53.40,51.60
	step
		_<Create a Cooking Fire>_
		Open Your Cooking Crafting Panel:
		_<Create 5 Wildfowl Roast>_
		collect 5 Wildfowl Roast##74654 |q 31477/2
	step
		talk Jian Ironpaw##58716
		turnin Endurance##31477 |goto 53.40,51.60
	step
		_<Create a Cooking Fire>_
		Open Your Cooking Crafting Panel:
		_<Create 20 Wildfowl Roast>_
		Reach 25 Way of the Oven Cooking |skill Way of the Oven,25
	step
		talk Jian Ironpaw##58716
		learn Twin Fish Platter##104311 |goto 53.40,51.60
	step
		collect 50 Krasarang Paddlefish##74865
		|tip These can be fished from rivers in Krasarang Wilds.
		|tip These can also be fished from schools in the Yan-Zhe River, in Valley of the Four Winds.
		|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill or grow them at your farm.
		|tip You can also purchase them from the Auction House.
		|only if skill("Way of the Oven") < 50
	step
		_<Create a Cooking Fire>_
		Open Your Cooking Crafting Panel:
		_<Create 25 Twin Fish Platter>_
		Reach 50 Way of the Oven Cooking |skill Way of the Oven,50
	step
		talk Jian Ironpaw##58716
		learn Banquet of the Oven##126501 |goto 53.40,51.60
	step
		earn 5 Ironpaw Token##402
		|tip Use the "Pandaria Cooking Dailies" guide to accomplish this.
		|only if skill("Way of the Oven") < 75
	step
		collect 50 Krasarang Paddlefish##74865
		|tip These can be fished from rivers in Krasarang Wilds.
		|tip These can also be fished from schools in the Yan-Zhe River, in Valley of the Four Winds.
		|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill or grow them at your farm.
		|tip You can also purchase them from the Auction House.
		|only if skill("Way of the Oven") < 75
	step
		collect 250 Raw Turtle Meat##74837
		|tip These can be farmed from Young Turtles in the Jade Forest.
		|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill or grow them at your farm.
		|tip You can also purchase them from the Auction House.
		|only if skill("Way of the Oven") < 75
	step
		collect 250 Mogu Pumpkin##74842
		|tip These can be looted from Vermin enemies.
		|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill or grow them at your farm.
		|tip You can also purchase them from the Auction House.
		|only if skill("Way of the Oven") < 75
	step
		talk Nam Ironpaw##64395
		buy 5 100 Year Soy Sauce##74853 |goto 53.53,51.25
		|only if skill("Way of the Oven") < 75
	step
		_<Create a Cooking Fire>_
		Open Your Cooking Crafting Panel:
		_<Create 5 Banquet of the Oven>_
		Reach 75 Way of the Oven Cooking |skill Way of the Oven,75
	step
		_Congratulations!_
		You Reached 75 Way of the Oven Cooking Skill.
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Leveling Guides\\Pandaria Way of the Pot 1-75",{
	author="support@zygorguides.com",
	description="\nThis guide will walk you through completing the \"Way of the Pot\" Cooking path.",
	condition_end=function() return skill('Way of the Pot') >= 75 end,
	condition_suggested=function() return skill('Pandaria Cooking') > 0 and skill('Way of the Pot') < 75 and level >= 78 end,
	keywords={"Cooking"},
	achieveid={7302},
	patch='50004',
	},[[
	step
		talk Sungshin Ironpaw##64231
		Train Pandaria Cooking |skillmax Pandaria Cooking,75 |goto Valley of the Four Winds/0 53.58,51.24
		|tip You must be at least level 5.
	step
		Complete the Intro Quests for the Farm |complete completedq(31945)
		|tip Use the Tillers guides to accomplish this.
	step
		talk Sungshin Ironpaw##64231
		accept So You Want to Be a Chef...##31281 |goto Valley of the Four Winds/0 53.58,51.23
	step
		talk Sungshin Ironpaw##64231
		learn Silced Peaches##125117 |goto 53.58,51.23
	step
		talk Sungshin Ironpaw##64231
		buy 5 Pandaren Peach##74660 |q 31281 |goto 53.58,51.23
	step
		_<Create a Cooking Fire>_
		Open Your Cooking Crafting Panel:
		_<Create 5 Sliced Peaches>_
		Make #5# Sliced Peaches |q 31281/1
	step
		collect 5 Sliced Peaches##86057 |q 31281/2
	step
		talk Sungshin Ironpaw##64231
		turnin So You Want to Be a Chef...##31281 |goto 53.58,51.23
		accept Ready for Greatness##31302 |goto 53.58,51.23
	step
		talk Sungshin Ironpaw##64231
		learn Rice Pudding##125122 |goto 53.58,51.23
	step
		talk Sungshin Ironpaw##64231
		buy 5 Rice##74851 |q 31302 |goto 53.58,51.23
	step
		talk Sungshin Ironpaw##64231
		buy 5 Yak Milk##74852 |q 31302 |goto 53.58,51.23
	step
		_<Create a Cooking Fire>_
		Open Your Cooking Crafting Panel:
		_<Create 5 Rice Puddings>_
		Make #5# Rice Pudding |q 31302/1
	step
		collect 5 Rice Pudding##86069 |q 31302/2
	step
		talk Sungshin Ironpaw##64231
		turnin Ready for Greatness##31302 |goto 53.58,51.23
		accept Way of the Pot##31472 |goto 53.58,51.23
	step
		collect 30 Jade Lungfish##74856 |q 31472
		|tip These can be fished in rivers in Valley of the Four Winds.
		|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill or grow them at your farm.
		|tip You can also purchase them from the Auction House.
	step
		talk Mei Mei Ironpaw##58714
		turnin Way of the Pot##31472 |goto 52.54,51.59
		accept The Soup of Contemplation##31474 |goto 52.54,51.59
	step
		talk Mei Mei Ironpaw##58714
		learn Swirling Mist Soup##104304 |q 31474/1 |goto 52.63,51.51
	step
		_<Create a Cooking Fire>_
		Open Your Cooking Crafting Panel:
		_<Create 5 Swirling Mist Soup>_
		collect 5 Swirling Mist Soup##74644 |q 31474/2 |goto 52.91,51.44
	step
		talk Mei Mei Ironpaw##58714
		turnin The Soup of Contemplation##31474 |goto 52.63,51.51
	step
		_<Create a Cooking Fire>_
		Open Your Cooking Crafting Panel:
		_<Create 15 Swirling Mist Soup>_
		Reach 25 Way of the Pot Cooking |skill Way of the Pot,25
	step
		talk Mei Mei Ironpaw##58714
		learn Braised Turtle##104305 |goto 52.63,51.51
	step
		collect 25 Raw Turtle Meat##74837
		|tip These can be fished from rivers in Krasarang Wilds.
		|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill or grow them at your farm.
		|tip You can also purchase them from the Auction House.
		|only if skill("Way of the Pot") < 50
	step
		collect 325 Juicycrunch Carrot##74841
		|tip These can be looted from Saurok enemies.
		|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill or grow them at your farm.
		|tip You can also purchase them from the Auction House.
		|only if skill("Way of the Pot") < 50
	step
		_<Create a Cooking Fire>_
		Open Your Cooking Crafting Panel:
		_<Create 25 Braised Turtle>_
		Reach 50 Way of the Pot Cooking |skill Way of the Pot,50
	step
		talk Mei Mei Ironpaw##58714
		learn Banquet of the Pot##126497 |goto 52.63,51.51
	step
		earn 5 Ironpaw Token##402
		|tip Use the "Pandaria Cooking Dailies" guide to accomplish this.
		|only if skill("Way of the Pot") < 75
	step
		collect 50 Reef Octopus##74864
		|tip These can be fished from pools in the Jade Forest.
		|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill or grow them at your farm.
		|tip You can also purchase them from the Auction House.
		|only if skill("Way of the Pot") < 75
	step
		collect 50 Mushan Ribs##74834
		|tip These can be farmed from Mushan in the Dread Wastes.
		|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill or grow them at your farm.
		|tip You can also purchase them from the Auction House.
		|only if skill("Way of the Pot") < 75
	step
		talk Nam Ironpaw##64395
		buy 5 100 Year Soy Sauce##74853 |goto 53.53,51.25
		|only if skill("Way of the Pot") < 75
	step
		_<Create a Cooking Fire>_
		Open Your Cooking Crafting Panel:
		_<Create 5 Banquet of the Pot>_
		Reach 75 Way of the Pot Cooking |skill Way of the Pot,75 |goto 52.94,51.41
	step
		_Congratulations!_
		You Reached 75 Way of the Pot Cooking Skill.
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Leveling Guides\\Pandaria Way of the Steamer 1-75",{
	author="support@zygorguides.com",
	description="\nThis guide will walk you through completing the \"Way of the Steamer\" Cooking path.",
	condition_end=function() return skill('Way of the Steamer') >= 75 end,
	condition_suggested=function() return skill('Pandaria Cooking') > 0 and skill('Way of the Steamer') < 75 and level >= 78 end,
	keywords={"Cooking"},
	achieveid={7303},
	patch='50004',
	},[[
	step
		talk Sungshin Ironpaw##64231
		Train Pandaria Cooking |skillmax Pandaria Cooking,75 |goto Valley of the Four Winds/0 53.58,51.24
		|tip You must be at least level 5.
	step
		Complete the Intro Quests for the Farm |complete completedq(31945)
		|tip Use the Tillers guides to accomplish this.
	step
		talk Sungshin Ironpaw##64231
		accept So You Want to Be a Chef...##31281 |goto Valley of the Four Winds/0 53.58,51.23
	step
		talk Sungshin Ironpaw##64231
		learn Silced Peaches##125117 |goto 53.58,51.23
	step
		talk Sungshin Ironpaw##64231
		buy 5 Pandaren Peach##74660 |q 31281 |goto 53.58,51.23
	step
		_<Create a Cooking Fire>_
		Open Your Cooking Crafting Panel:
		_<Create 5 Sliced Peaches>_
		Make #5# Sliced Peaches |q 31281/1
	step
		collect 5 Sliced Peaches##86057 |q 31281/2
	step
		talk Sungshin Ironpaw##64231
		turnin So You Want to Be a Chef...##31281 |goto 53.58,51.23
		accept Ready for Greatness##31302 |goto 53.58,51.23
	step
		talk Sungshin Ironpaw##64231
		learn Rice Pudding##125122 |goto 53.58,51.23
	step
		talk Sungshin Ironpaw##64231
		buy 5 Rice##74851 |q 31302 |goto 53.58,51.23
	step
		talk Sungshin Ironpaw##64231
		buy 5 Yak Milk##74852 |q 31302 |goto 53.58,51.23
	step
		_<Create a Cooking Fire>_
		Open Your Cooking Crafting Panel:
		_<Create 5 Rice Puddings>_
		Make #5# Rice Pudding |q 31302/1
	step
		collect 5 Rice Pudding##86069 |q 31302/2
	step
		talk Sungshin Ironpaw##64231
		turnin Ready for Greatness##31302 |goto 53.58,51.23
		accept Way of the Steamer##31475 |goto 53.58,51.23
	step
		collect 30 Giant Mantis Shrimp##74857 |q 31475
		|tip These can be fished along the coast of The Dread Wastes.
		|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill or grow them at your farm.
		|tip You can also purchase them from the Auction House.
	step
		talk Yan Ironpaw##58715
		turnin Way of the Steamer##31475 |goto 52.54,51.75
		accept The Spirit of Cooking##31476 |goto 52.54,51.75
	step
		talk Yan Ironpaw##58715
		learn Shrimp Dumplings##104307 |q 31476/1 |goto 52.54,51.75
	step
		_<Create a Cooking Fire>_
		Open Your Cooking Crafting Panel:
		_<Create 5 Shrimp Dumplings>_
		collect 5 Shrimp Dumplings##74651 |q 31476/2
	step
		talk Yan Ironpaw##58715
		turnin The Spirit of Cooking##31476 |goto 52.54,51.75
	step
		_<Create a Cooking Fire>_
		Open Your Cooking Crafting Panel:
		_<Create 15 Shrimp Dumplings>_
		|tip Create campfire if there isn't one nearby.
		Reach 25 Way of the Steamer Cooking |skill Way of the Steamer,25
	step
		talk Yan Ironpaw##58715
		learn Fire Spirit Salmon##104308 |goto 52.55,51.75
	step
		collect 75 Emperor Salmon##74859
		|tip These can be fished from rivers in Krasarang Wilds.
		|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill or grow them at your farm.
		|tip You can also purchase them from the Auction House.
		|only if skill("Way of the Steamer") < 50
	step
		collect 125 Scallions##74843
		|tip These can be looted from Saurok enemies.
		|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill or grow them at your farm.
		|tip You can also purchase them from the Auction House.
		|only if skill("Way of the Steamer") < 50
	step
		_<Create a Cooking Fire>_
		Open Your Cooking Crafting Panel:
		_<Create 25 Fire Spirit Salmon>_
		Reach 50 Way of the Steamer Cooking |skill Way of the Steamer,50
	step
		talk Yan Ironpaw##58715
		learn Banquet of the Steamer##126499 |goto 52.54,51.75
	step
		earn 5 Ironpaw Token##402
		|tip Use the "Pandaria Cooking Dailies" guide to accomplish this.
		|only if skill("Way of the Steamer") < 75
	step
		collect 50 Wildfowl Breast##74839
		|tip These can be looted from Whitefisher Cranes in Valley of the Four Winds.
		|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill or grow them at your farm.
		|tip You can also purchase them from the Auction House.
		|only if skill("Way of the Steamer") < 75
	step
		collect 250 Jade Squash##74847
		|tip These can be looted from Hozen enemies.
		|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill or grow them at your farm.
		|tip You can also purchase them from the Auction House.
		|only if skill("Way of the Steamer") < 75
	step
		talk Nam Ironpaw##64395
		buy 5 100 Year Soy Sauce##74853 |goto 53.53,51.25
		|only if skill("Way of the Steamer") < 75
	step
		_<Create a Cooking Fire>_
		Open Your Cooking Crafting Panel:
		_<Create 5 Banquet of the Steamer>_
		Reach 75 Way of the Steamer Cooking |skill Way of the Steamer,75
	step
		_Congratulations!_
		You Reached 75 Way of the Steamer Cooking Skill.
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Leveling Guides\\Pandaria Way of the Wok 1-75",{
	author="support@zygorguides.com",
	description="\nThis guide will walk you through completing the \"Way of the Wok\" Cooking path.",
	condition_end=function() return skill('Way of the Wok') >= 75 end,
	condition_suggested=function() return skill('Pandaria Cooking') > 0 and skill('Way of the Wok') < 75 and level >= 78 end,
	keywords={"Cooking"},
	achieveid={7301},
	patch='50004',
	},[[
	step
		talk Sungshin Ironpaw##64231
		Train Pandaria Cooking |skillmax Pandaria Cooking,75 |goto Valley of the Four Winds/0 53.58,51.24
		|tip You must be at least level 5.
	step
		Complete the Intro Quests for the Farm |complete completedq(31945)
		|tip Use the Tillers guides to accomplish this.
	step
		talk Sungshin Ironpaw##64231
		accept So You Want to Be a Chef...##31281 |goto Valley of the Four Winds/0 53.58,51.23
	step
		talk Sungshin Ironpaw##64231
		learn Silced Peaches##125117 |goto 53.58,51.23
	step
		talk Sungshin Ironpaw##64231
		buy 5 Pandaren Peach##74660 |q 31281 |goto 53.58,51.23
	step
		_<Create a Cooking Fire>_
		Open Your Cooking Crafting Panel:
		_<Create 5 Sliced Peaches>_
		Make #5# Sliced Peaches |q 31281/1
	step
		collect 5 Sliced Peaches##86057 |q 31281/2
	step
		talk Sungshin Ironpaw##64231
		turnin So You Want to Be a Chef...##31281 |goto 53.58,51.23
		accept Ready for Greatness##31302 |goto 53.58,51.23
	step
		talk Sungshin Ironpaw##64231
		learn Rice Pudding##125122 |goto 53.58,51.23
	step
		talk Sungshin Ironpaw##64231
		buy 5 Rice##74851 |q 31302 |goto 53.58,51.23
	step
		talk Sungshin Ironpaw##64231
		buy 5 Yak Milk##74852 |q 31302 |goto 53.58,51.23
	step
		_<Create a Cooking Fire>_
		Open Your Cooking Crafting Panel:
		_<Create 5 Rice Puddings>_
		Make #5# Rice Pudding |q 31302/1
	step
		collect 5 Rice Pudding##86069 |q 31302/2
	step
		talk Sungshin Ironpaw##64231
		turnin Ready for Greatness##31302 |goto 53.58,51.23
		accept Way of the Wok##31470 |goto 53.58,51.23
	step
		collect 55 Juicycruch Carrot##74841 |q 31470
		|tip These can be looted from Zandalari Troll enemies.
		|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill or grow them at your farm.
		|tip You can also purchase them from the Auction House.
	step
		talk Anthea Ironpaw##58713
		turnin Way of the Wok##31470 |goto 52.68,52.01
		accept Agile as a Tiger##31471 |goto 52.68,52.01
	step
		talk Anthea Ironpaw##58713
		learn Sauteed Carrots##104301 |q 31471/1 |goto 52.68,52.01
	step
		_<Create a Cooking Fire>_
		Open Your Cooking Crafting Panel:
		_<Create 5 Sauteed Carrots>_
		collect 5 Sauteed Carrots##74643 |q 31471/2 |goto 52.91,51.44
	step
		talk Anthea Ironpaw##58713
		turnin Agile as a Tiger##31471 |goto 52.68,52.01
	step
		_<Create a Cooking Fire>_
		Open Your Cooking Crafting Panel:
		_<Create 15 Sauteed Carrots>_
		Reach 25 Way of the Wok Cooking |skill Way of the Wok,25
	step
		talk Anthea Ironpaw##58713
		learn Valley Stirfry##104302 |goto 52.69,51.99
	step
		collect 25 Reef Octopus##74864
		|tip These can be fished from pools in the Jade Forest.
		|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill or grow them at your farm.
		|tip You can also purchase them from the Auction House.
		|only if skill("Way of the Wok") < 50
	step
		collect 25 Wildfowl Breast##74839
		|tip These can be looted from Whitefisher Cranes in Valley of the Four Winds.
		|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill or grow them at your farm.
		|tip You can also purchase them from the Auction House.
		|only if skill("Way of the Wok") < 50
	step
		_<Create a Cooking Fire>_
		Open Your Cooking Crafting Panel:
		_<Create 25 Valley Stir Fry>_
		Reach 50 Way of the Wok style cooking |skill Way of the Wok,50
	step
		talk Anthea Ironpaw##58713
		learn Banquet of the Wok##125594 |goto 52.68,51.99
	step
		earn 5 Ironpaw Token##402
		|tip Use the "Pandaria Cooking Dailies" guide to accomplish this.
		|only if skill("Way of the Wok") < 75
	step
		collect 50 Giant Mantis Shrimp##74857
		|tip These can be fished along the coast of The Dread Wastes.
		|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill or grow them at your farm.
		|tip You can also purchase them from the Auction House.
		|only if skill("Way of the Wok") < 75
	step
		collect 50 Raw Crocolisk Belly##75014
		|tip These can be looted from Coldbite Crocolisks in the Dread Wastes.
		|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill or grow them at your farm.
		|tip You can also purchase them from the Auction House.
		|only if skill("Way of the Wok") < 75
	step
		collect 250 Red Blossom Leek##74844
		|tip These can be looted from Jinyu, Sprites and Zandalari enemies.
		|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill or grow them at your farm.
		|tip You can also purchase them from the Auction House.
		|only if skill("Way of the Wok") < 75
	step
		talk Nam Ironpaw##64395
		buy 5 100 Year Soy Sauce##74853 |goto 53.53,51.25
		|only if skill("Way of the Wok") < 75
	step
		_<Create a Cooking Fire>_
		Open Your Cooking Crafting Panel:
		_<Create 5 Banquet of the Wok>_
		Reach 75 Way of the Wok Cooking |skill Way of the Wok,75
	step
		_Congratulations!_
		You Reached 75 Way of the Wok Cooking Skill.
]])

----------------
-- ENCHANTING --
----------------

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Enchanting\\Leveling Guides\\Pandaria Enchanting 1-75",{
	author="support@zygorguides.com",
	description="\nThis guide will walk you through leveling your Pandaria Enchanting skill from 1-75.",
	condition_end=function() return skill('Pandaria Enchanting') >= 75 end,
	condition_suggested=function() return skill('Enchanting') > 0 and skill('Pandaria Enchanting') < 75 and level >= 78 end,
	},[[
	step
		talk Apothecary Sun##62660
		buy 100 Enchanting Vellum##38682 |goto The Jade Forest/0 55.17,63.75
	step
		talk Lai the Spellpaw##65127
		|tip Inside the building.
		Train Pandaria Enchanting |skillmax Pandaria Enchanting,75 |goto 46.85,42.94
		|tip You must be at least level 5.
	step
		collect 208 Spirit Dust##74249
		|tip You can get these by Disenchanting Uncommon (green) items from any Pandaria zone.
		|tip You can also purchase them from the Auction House.
		|only if skill("Pandaria Enchanting") < 40
	step
		talk Lai the Spellpaw##65127
		|tip Inside the building.
		learn Enchant Chest: Mighty Versatility##104393 |goto 46.85,42.94
	step
		Open Your Enchanting Crafting Panel:
		_<Create 40 Enchant Chest: Mighty Versatility>_
		|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
		|tip You may need to make a few more to reach 40.
		Reach Level 40 Pandaria Enchanting |skill Pandaria Enchanting,40
	step
		collect 76 Mysterious Essence##74250
		|tip You can get these by Disenchanting Uncommon (green) items from any Pandaria zone.
		|tip You can combine 5 Spirit Dust to create 1 Mysterious Essence with Enchanting.
		|tip You can also purchase them from the Auction House.
		|only if skill("Pandaria Enchanting") < 55
	step
		talk Lai the Spellpaw##65127
		|tip Inside the building.
		learn Enchant Boots: Greater Haste##104407 |goto 46.85,42.94
	step
		Open Your Enchanting Crafting Panel:
		_<Create 15 Enchant Boots: Greater Haste>_
		|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
		|tip You may need to make a few more to reach 55.
		Reach Level 55 Pandaria Enchanting |skill Pandaria Enchanting,55
	step
		talk Lai the Spellpaw##65127
		|tip Inside the building.
		learn Enchant Gloves: Superior Mastery##104420 |goto 46.85,42.94
	step
		Open Your Enchanting Crafting Panel:
		_<Create 20 Enchant Gloves: Superior Mastery>_
		|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
		Reach Level 75 Pandaria Enchanting |skill Pandaria Enchanting,75
	step
		_Congratulations!_
		You Reached 75 Pandaria Enchanting Skill.
]])

-----------------
-- ENGINEERING --
-----------------

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Engineering\\Leveling Guides\\Pandaria Engineering 1-75",{
	author="support@zygorguides.com",
	description="\nThis guide will walk you through leveling your Pandaria Engineering skill from 1-75.",
	condition_end=function() return skill('Pandaria Engineering') >= 75 end,
	condition_suggested=function() return skill('Engineering') > 0 and skill('Pandaria Engineering') < 75 and level >= 78 end,
	},[[
	step
		talk Sally Fizzlefury##55143
		Train Pandaria Engineering |skillmax Pandaria Engineering,75 |goto Valley of the Four Winds/0 16.06,83.14
		|tip You must be at least level 5.
	step
		collect 406 Ghost Iron Bar##72096
		|tip Farm and Smelt them with Mining or purchase them from the Auction House.
		|only if skill("Pandaria Engineering") < 26
	step
		collect 60 Windwool Cloth##72988
		|tip Farm them from Humanoid mobs in Pandaria or purchase them from the Auction House.
		|only if skill("Pandaria Engineering") < 26
	step
		collect 26 Spirit of Harmony##76061
		|tip These are created by combining 10 Motes of Harmony.
		|tip They drop randomly from mobs and Fishing casts in Pandaria.
		|tip You can also purchase them from the Auction House.
		|only if skill("Pandaria Engineering") < 26
	step
		Open Your Engineering Crafting Panel:
		_<Create 112 Ghost Iron Bolts>_
		|tip Make them all, you will need them later.
		collect 224 Ghost Iron Bolts##77467
		|only if skill("Pandaria Engineering") < 26
	step
		Open Your Engineering Crafting Panel:
		_<Create 70 High-Explosive Gunpowder>_
		|tip Make them all, you will need them later.
		collect 70 High-Explosive Gunpowder##77468
		|only if skill("Pandaria Engineering") < 26
	step
		talk Sally Fizzlefury##55143
		learn Tinker's Kit##131563 |goto 16.06,83.14
	step
		Open Your Engineering Crafting Panel:
		_<Create 25 Tinker's Kit>_
		|tip You may need to make a few more.
		Reach Level 55 Pandaria Engineering |skill Pandaria Engineering,55
	step
		talk Sally Fizzlefury##55143
		learn Thermal Anvil##127131 |goto 16.06,83.14
	step
		Open Your Engineering Crafting Panel:
		_<Create 7 Thermal Anvil>_
		|tip You may need to make a few more.
		Reach Level 62 Pandaria Engineering |skill Pandaria Engineering,62
	step
		talk Sally Fizzlefury##55143
		learn Mist-Piercing Goggles##127130 |goto 16.06,83.14
	step
		Open Your Engineering Crafting Panel:
		_<Create 13 Mist-Piercing Goggles>_
		Reach Level 75 Pandaria Engineering |skill Pandaria Engineering,75
	step
		_Congratulations!_
		You Reached 75 Pandaria Engineering Skill.
]])

---------------
-- HERBALISM --
---------------

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Fool's Cap",{
	author="support@zygorguides.com",
	description="\nFool's Cap can be gathered from the Dread Wastes.",
	condition_end=function() return skill('Pandaria Herbalism') >= 50 end,
	},[[
	step
		map Dread Wastes/0
		path follow smart; loop on; ants curved
		path	62.97,56.16	64.75,55.56	66.39,56.43	66.83,58.38	67.09,61.56
		path	66.02,62.93	64.87,63.23	60.45,64.33	56.84,64.56	53.60,63.54
		path	49.24,61.97	46.73,61.53	45.51,63.50	44.12,63.43	42.64,62.44
		path	41.49,65.06	41.11,68.27	40.51,70.56	39.17,71.24	38.37,69.01
		path	38.01,66.51	36.34,65.38	34.49,66.33	33.15,66.50	32.86,64.84
		path	34.87,62.55	36.84,61.92	38.39,61.56	39.37,59.99	37.26,58.37
		path	34.86,57.70	33.23,59.33	31.43,61.36	30.47,60.43	30.62,58.32
		path	30.12,55.13	30.27,52.48	30.88,52.01	32.40,52.80	34.03,54.12
		path	36.59,54.90	38.85,55.54	40.94,56.72	43.35,57.32	44.83,56.87
		path	48.00,58.14	50.81,54.90	52.77,54.28	55.30,56.63	55.95,55.13
		path	58.42,55.41	59.85,57.63	62.06,58.42
		click Fool's Cap##209355+
		|tip Gather Fool's Cap along the path.
		|tip They spawn in swampy areas.
		collect Fool's Cap##79011 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Golden Lotus",{
	author="support@zygorguides.com",
	description="\nGolden Lotus can be gathered from The Jade Forest in Pandaria.",
	condition_end=function() return skill('Pandaria Herbalism') >= 50 end,
	},[[
	step
		map The Jade Forest/0
		path follow smart; loop on; ants curved
		path	48.49,39.61	49.74,37.75	50.52,36.40	51.37,36.01	52.22,35.17
		path	53.55,33.51	54.90,32.64	55.27,34.18	54.31,35.81	53.75,38.63
		path	53.48,40.44	53.29,43.45	53.30,45.60	53.01,47.88	52.68,50.13
		path	51.79,52.71	51.09,54.22	50.64,55.73	50.88,57.78	51.52,60.10
		path	51.63,63.24	53.21,64.39	54.17,66.55	55.53,68.51	55.74,70.37
		path	56.57,71.12	57.65,70.57	58.64,69.52	59.60,69.57	60.32,71.16
		path	61.46,71.96	61.52,73.58	61.52,75.48	61.82,76.86	63.90,77.73
		path	64.58,79.11	65.10,81.92	66.09,84.47	65.75,88.24	64.42,89.42
		path	63.29,92.12	61.86,93.67	61.05,93.19	60.44,92.39	59.88,91.63
		path	58.02,93.00	56.18,92.82	55.67,91.96	56.77,90.59	58.70,90.09
		path	57.59,86.95	56.68,86.40	55.41,85.78	55.08,84.92	54.87,81.04
		path	54.44,78.82	53.87,79.21	53.77,81.23	52.96,82.40	52.73,84.26
		path	52.06,86.07	51.42,86.38	50.89,88.14	48.57,90.26	47.65,91.06
		path	45.98,91.67	43.99,91.54	43.55,88.83	43.26,83.99	42.97,82.29
		path	43.91,80.49	45.51,79.24	46.76,80.35	48.51,80.69	49.77,79.86
		path	50.69,78.74	50.46,76.22	50.49,73.91	50.65,71.37	50.25,68.97
		path	48.75,67.48	46.90,65.96	44.72,65.10	41.78,63.76	40.23,64.16
		path	38.69,65.76	36.95,66.10	36.15,64.87	36.57,62.40	35.77,62.05
		path	34.41,62.61	33.47,61.06	33.30,59.40	34.65,58.93	35.62,56.72
		path	37.02,56.25	38.57,55.79	39.13,54.07	38.68,53.30	36.89,52.69
		path	34.73,52.60	33.24,52.56	31.48,52.90	30.20,52.19	30.34,50.38
		path	30.78,47.94	30.06,46.05	30.31,44.19	30.86,41.47	31.42,38.92
		path	31.70,35.31	30.81,32.07	30.08,30.56	29.88,28.75	28.39,29.65
		path	27.17,30.13	26.14,28.92	25.98,26.87	26.75,25.87	27.77,26.47
		path	28.75,25.65	29.79,23.64	30.92,21.94	31.00,20.17	30.80,17.33
		path	31.27,14.86	32.51,12.96	34.36,12.77	36.23,11.04	37.80,9.97
		path	39.55,10.57	41.69,11.40	43.19,13.53	43.42,15.06	44.22,15.92
		path	44.38,17.70	45.23,18.51	46.87,18.08	48.54,18.08	49.88,18.66
		path	49.71,20.73	48.88,24.22	47.98,26.68	47.54,28.08	47.20,30.13
		path	47.17,32.69	47.14,35.25	46.96,37.10
		click Golden Lotus##209354+
		|tip Make sure you enable "Find Herbs" in the tracking menu on the minimap.
		|tip Golden Lotus can spawn anywhere in Pandaria zones.
		|tip They will spawn in place of other herbs, so pick everything.
		collect Golden Lotus##72238 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Green Tea Leaf",{
	author="support@zygorguides.com",
	description="\nGreen Tea Leaf can be gathered from The Jade Forest.",
	condition_end=function() return skill('Pandaria Herbalism') >= 50 end,
	},[[
	step
		map The Jade Forest/0
		path follow smart; loop on; ants curved
		path	48.49,39.61	49.74,37.75	50.52,36.40	51.37,36.01	52.22,35.17
		path	53.55,33.51	54.90,32.64	55.27,34.18	54.31,35.81	53.75,38.63
		path	53.48,40.44	53.29,43.45	53.30,45.60	53.01,47.88	52.68,50.13
		path	51.79,52.71	51.09,54.22	50.64,55.73	50.88,57.78	51.52,60.10
		path	51.63,63.24	53.21,64.39	54.17,66.55	55.53,68.51	55.74,70.37
		path	56.57,71.12	57.65,70.57	58.64,69.52	59.60,69.57	60.32,71.16
		path	61.46,71.96	61.52,73.58	61.52,75.48	61.82,76.86	63.90,77.73
		path	64.58,79.11	65.10,81.92	66.09,84.47	65.75,88.24	64.42,89.42
		path	63.29,92.12	61.86,93.67	61.05,93.19	60.44,92.39	59.88,91.63
		path	58.02,93.00	56.18,92.82	55.67,91.96	56.77,90.59	58.70,90.09
		path	57.59,86.95	56.68,86.40	55.41,85.78	55.08,84.92	54.87,81.04
		path	54.44,78.82	53.87,79.21	53.77,81.23	52.96,82.40	52.73,84.26
		path	52.06,86.07	51.42,86.38	50.89,88.14	48.57,90.26	47.65,91.06
		path	45.98,91.67	43.99,91.54	43.55,88.83	43.26,83.99	42.97,82.29
		path	43.91,80.49	45.51,79.24	46.76,80.35	48.51,80.69	49.77,79.86
		path	50.69,78.74	50.46,76.22	50.49,73.91	50.65,71.37	50.25,68.97
		path	48.75,67.48	46.90,65.96	44.72,65.10	41.78,63.76	40.23,64.16
		path	38.69,65.76	36.95,66.10	36.15,64.87	36.57,62.40	35.77,62.05
		path	34.41,62.61	33.47,61.06	33.30,59.40	34.65,58.93	35.62,56.72
		path	37.02,56.25	38.57,55.79	39.13,54.07	38.68,53.30	36.89,52.69
		path	34.73,52.60	33.24,52.56	31.48,52.90	30.20,52.19	30.34,50.38
		path	30.78,47.94	30.06,46.05	30.31,44.19	30.86,41.47	31.42,38.92
		path	31.70,35.31	30.81,32.07	30.08,30.56	29.88,28.75	28.39,29.65
		path	27.17,30.13	26.14,28.92	25.98,26.87	26.75,25.87	27.77,26.47
		path	28.75,25.65	29.79,23.64	30.92,21.94	31.00,20.17	30.80,17.33
		path	31.27,14.86	32.51,12.96	34.36,12.77	36.23,11.04	37.80,9.97
		path	39.55,10.57	41.69,11.40	43.19,13.53	43.42,15.06	44.22,15.92
		path	44.38,17.70	45.23,18.51	46.87,18.08	48.54,18.08	49.88,18.66
		path	49.71,20.73	48.88,24.22	47.98,26.68	47.54,28.08	47.20,30.13
		path	47.17,32.69	47.14,35.25	46.96,37.10
		click Green Tea Leaf##202751+
		|tip Gather Green Tea Leaf along the path.
		collect Green Tea Leaf##72234 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Rain Poppy",{
	author="support@zygorguides.com",
	description="\nRain Poppy can be gathered from The Jade Forest.",
	condition_end=function() return skill('Pandaria Herbalism') >= 50 end,
	},[[
	step
		map The Jade Forest/0
		path follow smart; loop off; ants curved
		path	59.08,79.29	58.99,79.42	56.92,80.52	56.30,77.68	54.63,77.83
		path	53.13,78.12	52.10,78.42	50.31,78.10	48.46,77.34	47.03,75.51
		path	46.26,73.97	46.20,71.22	46.85,67.95	46.83,65.29	47.52,63.68
		path	48.45,62.66	49.64,61.95	49.74,60.76	49.07,58.84	48.34,58.17
		path	46.96,57.78	46.28,58.64	45.47,60.01	45.85,61.80	43.88,64.08
		path	42.90,61.71	42.49,60.07	42.42,57.97	42.21,56.02	41.37,54.60
		path	40.49,54.19	39.46,53.36	38.77,52.41	37.91,50.75	37.26,49.60
		path	36.17,48.09	35.02,47.21	34.00,46.73	32.76,46.15	31.03,45.77
		path	29.35,44.98	27.61,44.04	26.72,43.41	25.63,42.59	24.95,41.72
		path	24.11,39.80	23.58,38.85	23.51,37.42	24.56,36.60	24.85,34.19
		path	25.70,32.83	25.93,30.41	25.19,28.93	23.76,27.10
		click Rain Poppy##209353+
		|tip Gather Rain Poppy along the path.
		|tip They generally spawn along the edge of the water.
		collect Rain Poppy##72237 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Silkweed",{
	author="support@zygorguides.com",
	description="\nSilkweed can be gathered from Valley of the Four Winds.",
	condition_end=function() return skill('Pandaria Herbalism') >= 50 end,
	},[[
	step
		map Valley of the Four Winds/0
		path follow smart; loop on; ants curved
		path	88.58,27.82	87.65,32.05	85.38,35.46	83.66,36.99	82.74,37.10
		path	81.81,39.61	79.78,40.76	77.74,42.37	76.94,45.17	75.11,47.48
		path	73.96,52.78	73.52,55.41	71.51,58.79	68.83,62.28	66.95,65.10
		path	65.06,67.79	62.07,71.16	59.92,72.58	57.05,73.85	54.34,73.13
		path	50.56,71.31	47.71,70.95	44.07,72.46	41.27,73.60	37.35,75.22
		path	34.26,77.98	32.03,75.46	30.69,71.38	30.53,66.91	30.42,59.61
		path	29.95,55.97	31.23,54.34	31.68,50.15	34.41,47.80	34.19,43.20
		path	35.76,39.97	35.07,36.21	36.49,32.61	38.25,30.51	41.21,32.90
		path	43.42,34.39	45.27,35.32	46.79,32.20	47.65,28.82	50.11,26.83
		path	53.59,27.68	53.86,31.45	54.96,35.54	56.22,40.75	58.17,43.56
		path	59.83,43.48	59.66,39.93	58.74,35.73	58.03,31.62	57.21,27.00
		path	59.46,26.70	62.06,29.28	64.18,32.03	70.79,26.74	73.67,24.74
		path	76.64,24.39	79.09,23.01	82.41,21.45	84.23,24.82
		click Silkweed##209350+
		|tip Gather Silkweed along the path.
		collect Silkweed##72235 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Snow Lily",{
	author="support@zygorguides.com",
	description="\nSnow Lily can be gathered from Kun-Lai Summit.",
	condition_end=function() return skill('Pandaria Herbalism') >= 50 end,
	},[[
	step
		map Kun-Lai Summit/0
		path follow smart; loop on; ants curved
		path	39.29,82.16	37.27,80.09	37.75,78.06	37.59,76.19	38.63,75.18
		path	38.61,72.75	36.39,72.41	35.64,72.14	35.74,69.42	37.24,67.72
		path	37.62,63.93	37.96,61.14	38.66,59.93	37.03,58.20	35.01,58.01
		path	33.88,56.85	33.54,55.02	33.61,53.38	34.84,51.60	35.72,51.47
		path	36.86,50.56	38.71,50.38	40.30,51.01	42.55,50.34	43.25,47.88
		path	42.06,46.69	40.63,47.03	39.65,44.95	38.85,42.25	38.41,40.44
		path	37.89,38.62	37.35,37.87	39.50,37.48	41.45,38.83	41.75,35.51
		path	43.31,37.27	44.80,37.80	44.68,41.01	44.23,43.99	45.62,45.28
		path	45.37,47.41	46.52,49.19	46.58,51.79	47.11,54.69	48.73,54.06
		path	50.34,52.79	51.07,50.67	51.84,48.01	52.91,45.84	53.98,43.35
		path	54.91,42.35	56.28,42.69	57.13,44.59	56.42,47.03	57.39,49.03
		path	58.82,51.28	59.91,53.83	58.78,54.61	58.43,56.67	57.22,59.29
		path	55.88,61.23	54.44,61.95	52.91,60.86	52.41,62.65	51.50,63.63
		path	48.60,64.86	46.31,61.58	44.47,62.38	43.84,65.06	43.34,70.11
		path	42.99,73.53	41.49,74.58	40.23,77.23	39.66,79.57
		click Snow Lily##209351+
		|tip Gather Snow Lily along the path.
		|tip Enter caves for better results.
		collect Snow Lily##79010 |n
		'|confirm
]])

-----------------
-- INSCRIPTION --
-----------------

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Inscription\\Leveling Guides\\Pandaria Inscription 1-75",{
	author="support@zygorguides.com",
	description="\nThis guide will walk you through leveling your Pandaria Inscription skill from 1-75.",
	condition_end=function() return skill('Pandaria Inscription') >= 75 end,
	condition_suggested=function() return skill('Inscription') > 0 and skill('Pandaria Inscription') < 75 and level >= 78 end,
	},[[
	step
		talk Veronica Faraday##64081
		|tip Inside the building.
		buy 150 Light Parchment##39354 |goto Shrine of Seven Stars/1 65.27,42.32
		|only if skill("Pandaria Inscription") < 75
	step
		collect 330 Shadow Pigment##79251
		|tip Farm and Mill them with Herbalism or purchase them from the Auction House.
		|tip Shadow Pigment can be Milled from Desecrated Herbs, Fool's Cap, Green Tea Leaf, Rain Poppy, Silkweed, and Snow Lily.
		|only if skill("Pandaria Inscription") < 75
	step
		talk Lorewalker Huynh##64691
		|tip Inside the building.
		Train Pandaria Inscription |skillmax Pandaria Inscription,75 |goto Vale of Eternal Blossoms/0 81.91,29.31
		|tip You must be at least level 5.
	step
		talk Lorewalker Huynh##64691
		|tip Inside the building.
		learn Ink of Dreams##111645 |goto 81.91,29.31
	step
		Open Your Inscription Crafting Panel:
		_<Create 165 Ink of Dreams>_
		|tip Make all of these, you'll need them later.
		Reach Level 20 Pandaria Inscription |skill Pandaria Inscription,20
	step
		Open Your Inscription Crafting Panel:
		_<Create 50 Research: Ink of Dreams>_
		|tip If you have any Misty Pigment, turn it into Starlight Ink and make Greater Ox Horn Inscription after skill 45.
		Reach Level 70 Pandaria Inscription |skill Pandaria Inscription,70
	step
		talk Lorewalker Huynh##64691
		|tip Inside the building.
		learn Secret Crane Wing Inscription##127023 |goto 81.91,29.31
	step
		Open Your Inscription Crafting Panel:
		_<Create 5 Secret Crane Wing Inscription>_
		Reach Level 75 Pandaria Inscription |skill Pandaria Inscription,75
	step
		_Congratulations!_
		You Reached 75 Pandaria Inscription Skill.
]])

-------------------
-- JEWELCRAFTING --
-------------------

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Jewelcrafting\\Leveling Guides\\Pandaria Jewelcrafting 1-75",{
	author="support@zygorguides.com",
	description="\nThis guide will walk you through leveling your Pandaria Jewelcrafting skill from 1-75.",
	condition_end=function() return skill('Pandaria Jewelcrafting') >= 75 end,
	condition_suggested=function() return skill('Jewelcrafting') > 0 and skill('Pandaria Jewelcrafting') < 75 and level >= 78 end,
	},[[
	step
		talk Mai the Jade Shaper##65098
		Train Pandaria Jewelcrafting |skillmax Pandaria Jewelcrafting,75 |goto The Jade Forest/0 48.08,34.95
		|tip You must be at least level 5.
	step
		talk Mai the Jade Shaper##65098
		learn Deadly Tiger Opal##107649 |goto 48.08,34.95
	step
		collect 70 Tiger Opal##76130
		|tip Farm them with Mining or purchase them from the Auction House.
		|tip They can be mined from Ghost Iron and Kyparite Deposits, and Trillium Veins.
		|tip You can prospect 5 Ghost Iron, Kyparite or Trillium Ore to collect them.
		|only if skill("Pandaria Jewelcrafting") < 60
	step
		collect 17 Primordial Ruby##76131
		|tip Farm them with Mining or purchase them from the Auction House.
		|tip They can be mined from Ghost Iron and Kyparite Deposits, and Trillium Veins.
		|tip You can prospect 5 Ghost Iron, Kyparite or Trillium Ore to collect them.
		|only if skill("Pandaria Jewelcrafting") < 75
	step
		Open Your Jewelcrafting Crafting Panel:
		_<Create 59 Deadly Tiger Opal>_
		|tip You may need to create a few more.
		Reach 60 Pandaria Jewelcrafting |skill Pandaria Jewelcrafting,60
	step
		talk Mai the Jade Shaper##65098  
		learn Research: Primordial Ruby##131686 |goto 48.08,34.95
	step
		Open Your Jewelcrafting Crafting Panel:
		_<Research 1 Primordial Ruby>_
		|tip You will learn 1 of 5 recipes after crafting this.
		Reach 61 Pandaria Jewelcrafting |skill Pandaria Jewelcrafting,61
	step
		Open Your Jewelcrafting Crafting Panel:
		_<Create 14 Primordial Ruby Recipe>_
		|tip Create whichever one you learned.
		Reach 75 Pandaria Jewelcrafting |skill Pandaria Jewelcrafting,75
	step
		_Congratulations!_
		You Reached 75 Pandaria Jewelcrafting Skill.
]])

--------------------
-- LEATHERWORKING --
--------------------

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Leatherworking\\Leveling Guides\\Pandaria Leatherworking 1-75",{
	author="support@zygorguides.com",
	description="\nThis guide will walk you through leveling your Pandaria Leatherworking skill from 1-75.",
	condition_end=function() return skill('Pandaria Leatherworking') >= 75 end,
	condition_suggested=function() return skill('Leatherworking') > 0 and skill('Pandaria Leatherworking') < 75 and level >= 78 end,
	},[[
	step
		talk Clean Pelt##65121
		Train Pandaria Leatherworking |skillmax Pandaria Leatherworking,75 |goto Kun-Lai Summit/0 64.66,60.86
		|tip You must be at least level 5.
	step
		collect 658 Exotic Leather##72120
		|tip Farm them with Skinning or purchase them from the Auction House.
		|only if skill("Pandaria Leatherworking") < 11
	step
		talk Clean Pelt##65121
		learn Sha Armor Kit##124628 |goto 64.66,60.86
	step
		Open Your Leatherworking Crafting Panel:
		_<Create 10 Sha Armor Kit>_
		Reach Level 11 Pandaria Leatherworking |skill Pandaria Leatherworking,11
	step
		talk Clean Pelt##65121
		learn Misthide Bracers##124576 |goto 64.66,60.86
	step
		Open Your Leatherworking Crafting Panel:
		_<Create 19 Misthide Bracers>_
		|tip You may need to make a few more.
		Reach Level 30 Pandaria Leatherworking |skill Pandaria Leatherworking,30
	step
		talk Clean Pelt##65121
		learn Misthide Gloves##124574 |goto 64.66,60.86
	step
		Open Your Leatherworking Crafting Panel:
		_<Create 6 Misthide Gloves>_
		Reach Level 36 Pandaria Leatherworking |skill Pandaria Leatherworking,36
	step
		talk Clean Pelt##65121
		learn Misthide Chestguard##124573 |goto 64.66,60.86
	step
		Open Your Leatherworking Crafting Panel:
		_<Create 15 Misthide Chestguard>_
		Reach Level 51 Pandaria Leatherworking |skill Pandaria Leatherworking,51
	step
		collect 1 Spirit of Harmony##76061
		|tip These are created by combining 10 Motes of Harmony.
		|tip They drop randomly from mobs and Fishing casts in Pandaria.
		|tip You can also purchase them from the Auction House.
		|only if skill("Pandaria Leatherworking") < 75
	step
		talk Krogo Darkhide##64054
		|tip Inside the building.
		buy 1 Pattern: Contender's Leather Bracers##86250 |goto Shrine of Two Moons/1 31.72,45.75
		|only if skill("Pandaria Leatherworking") < 75 and Horde
	step
		talk Tanner Pang##64094
		|tip Inside the building.
		buy 1 Pattern: Contender's Leather Bracers##86250 |goto Shrine of Seven Stars/1 76.41,48.35
		|only if skill("Pandaria Leatherworking") < 75 and Alliance
	step
		use the Pattern: Contender's Leather Bracers##86250
		learn Contender's Leather Bracers##124608
	step
		Open Your Leatherworking Crafting Panel:
		_<Create 24 Contender's Leather Bracers>_
		Reach Level 75 Pandaria Leatherworking |skill Pandaria Leatherworking,75
	step
		_Congratulations!_
		You Reached 75 Pandaria Leatherworking Skill.
]])

------------
-- MINING --
------------

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Ghost Iron",{
	author="support@zygorguides.com",
	description="\nGhost Iron can be gathered from Krasarang Wilds.",
	condition_end=function() return skill('Pandaria Mining') >= 50 end,
	},[[
	step
		map Krasarang Wilds/0
		path follow smart; loop on; ants curved
		path	74.53,5.54	72.12,8.18	70.82,10.73	70.71,13.73	69.89,17.75
		path	68.43,18.24	67.22,18.25	63.68,22.21	61.29,23.15	58.91,24.49
		map Valley of the Four Winds/0
		path	60.49,77.81
		map Krasarang Wilds/0
		path	53.03,27.27	50.00,28.59	48.04,28.08	45.11,27.13	42.79,27.35
		path	40.00,28.31	36.50,30.12	32.20,32.68	30.18,36.83	30.21,39.68
		path	27.10,42.82	24.82,43.91	22.84,45.59	21.89,48.24	19.88,51.50
		path	16.69,54.83	13.86,54.52	11.78,53.17	9.90,52.59	9.38,54.81
		path	11.33,57.59	14.85,59.60	19.21,62.30	20.63,62.62	22.89,59.69
		path	24.91,58.33	27.88,57.37	30.00,58.47	32.75,58.77	35.55,57.23
		path	37.67,56.60	39.02,56.72	41.64,59.48	44.77,60.07	49.79,45.20
		path	50.82,40.19	51.87,36.67	53.59,38.00	56.21,39.64	58.66,39.78
		path	60.81,38.95	63.84,37.33	66.77,35.71	68.96,33.56	70.66,30.39
		path	71.72,28.19	73.62,26.47	75.22,29.07	75.28,33.09	76.50,35.92
		path	77.98,35.36	78.00,30.74	77.31,26.44	77.76,20.40	78.86,18.07
		path	80.63,17.48	82.70,17.96	85.01,17.02	84.99,13.71	83.50,9.21
		path	81.52,7.70	78.72,7.35
		click Ghost Iron Deposit##209311+
		click Rich Ghost Iron Deposit##209328+
		|tip Gather Ghost Iron along the path.
		collect Ghost Iron Ore##72092 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Kyparite",{
	author="support@zygorguides.com",
	description="\nKyparite can be gathered from the Dread Wastes.",
	condition_end=function() return skill('Pandaria Mining') >= 50 end,
	},[[
	step
		map Dread Wastes/0
		path follow smart; loop on; ants curved
		path	57.49,14.06	55.81,17.08	54.38,19.53	52.23,20.51	50.71,21.37
		path	49.81,24.40	49.49,26.69	46.99,26.44	45.03,25.92	43.76,28.11
		path	43.89,30.86	45.60,33.15	48.31,36.52	47.25,38.99	46.27,41.47
		path	47.27,43.08	49.19,44.88	50.85,44.37	52.17,43.10	54.43,45.83
		path	56.22,47.60	58.85,46.44	60.98,48.04	63.10,48.13	65.50,49.59
		path	67.62,48.97	67.26,45.82	67.05,42.57	68.26,39.41	70.14,37.17
		path	71.46,33.55	71.77,30.02	70.53,24.75	69.50,21.19	68.67,17.19
		path	67.71,13.20	64.79,12.60	62.17,13.69
		click Kyparite Deposit##209312+
		click Rich Kyparite Deposit##209329+
		|tip Gather Kyparite along the path.
		|tip Kyparite is a rare spawning deposit, so you may need to collect others to get them to spawn.
		collect Kyparite Ore##72093 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Trillium",{
	author="support@zygorguides.com",
	description="\nTrillium can be gathered from Townlong Steppes.",
	condition_end=function() return skill('Pandaria Mining') >= 50 end,
	},[[
	step
		map Townlong Steppes/0
		path follow smart; loop on; ants curved
		path	71.03,55.16	71.68,51.25	71.70,47.07	70.09,44.05	68.31,41.61
		path	66.29,39.66	65.40,36.71	63.40,38.51	63.12,41.82	62.27,44.37
		path	60.95,46.39	59.26,48.65	56.91,50.19	54.59,51.06	52.89,53.47
		path	51.83,56.88	51.29,59.09	52.09,62.79	54.11,64.81	56.18,64.09
		path	58.65,62.12	61.30,60.33	63.04,56.48	63.72,53.53	63.90,49.70
		path	64.55,47.04	65.84,45.99	66.00,49.34	66.35,52.47	68.25,56.29
		path	68.18,59.96	68.95,63.69	70.36,65.99	71.35,68.53	70.12,71.51
		path	68.79,73.42	70.35,77.13	71.04,78.04	73.95,78.15	76.78,76.13
		path	78.74,77.15	79.20,81.71	80.39,84.58	82.24,85.58	83.76,80.93
		path	85.27,78.24	86.78,75.73	86.37,71.85
		map Kun-Lai Summit/0
		path	41.96,89.53	40.08,87.36
		map Townlong Steppes/0
		path	81.19,65.81
		map Kun-Lai Summit/0
		path	37.72,84.20	35.57,83.97	34.14,82.84	32.47,80.63
		map Townlong Steppes/0
		path	73.30,58.00
		click Trillium Vein##209313+
		click Rich Trillium Vein##209330+
		|tip Gather Trillium along the path.
		|tip They spawn in place of Ghost Iron Deposits, so mine any you see.
		|tip These are a rare spawning node.
		collect White Trillium Ore##72103 |n
		collect Black Trillium Ore##72094 |n
		'|confirm
]])

--------------
-- SKINNING --
--------------

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Exotic Leather",{
	author="support@zygorguides.com",
	description="\nExotic Leather can be gathered from Dread Wastes.",
	condition_end=function() return skill('Pandaria Skinning') >= 50 end,
	},[[
	step
		map Dread Wastes/0
		path follow smart; loop on; ants curved
		path	27.20,26.02	28.03,27.66	27.51,30.24	27.02,33.43	27.11,37.22
		path	28.12,42.95	30.91,51.75	28.10,50.11	26.30,47.31	26.13,43.41
		path	25.42,38.43	25.61,34.62	24.31,28.18
		Kill enemies around this area
		collect Exotic Leather##72120 |n
		'|confirm
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Leveling Guides\\Pandaria Skinning 1-75",{
	author="support@zygorguides.com",
	description="\nThis guide will walk you through leveling your Pandaria Skinning skill from 1-75.",
	condition_end=function() return skill('Pandaria Skinning') >= 75 end,
	condition_suggested=function() return skill('Pandaria Skinning') > 0 and skill('Pandaria Skinning') < 75 and level >= 78 end,
	},[[
	step
		talk Mr. Pleeb##63825
		Train Pandaria Skinning |skillmax Pandaria Skinning,75 |goto Valley of the Four Winds/0 15.93,83.09
		|tip You must be at least level 5.
	step
		map Valley of the Four Winds/0
		path follow smart; loop on; ants curved; dist 30
		path	27.42,32.61	28.08,37.04	29.30,41.85	30.27,45.34	30.63,42.30
		path	30.61,38.76	30.74,36.35	31.06,32.68	29.25,30.44
		Kill enemies around this area
		skill Pandaria Skinning,75
	step
		_Congratulations!_
		You Reached 75 Pandaria Skinning Skill.
]])

------------------------
-- Elemental Reagents --
------------------------

ZygorGuidesViewer:RegisterGuide("Profession Guides\\General Farming Guides\\Spirit of Harmony",{
	author="support@zygorguides.com",
	description="\nEternal shadow can be gathered from Kun-Lai Summit.",
	},[[
	step
		Enter the cave |goto Kun-Lai Summit/0 59.14,52.83 < 10
		kill Mischievous Snow Sprite##59693+
		|tip Run over Suspicious Snow Piles to spawn more Mischievous Snow Sprites.
		|tip They are all over the cave.
		collect Mote of Harmony##89112 |n |goto 59.00,51.20
		|tip Combine 10 Motes of Harmony into one Spirit of Harmony
		'|confirm
]])