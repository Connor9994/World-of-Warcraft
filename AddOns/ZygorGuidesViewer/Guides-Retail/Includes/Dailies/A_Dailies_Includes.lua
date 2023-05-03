if UnitFactionGroup("player")~="Alliance" then return end
local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end

------------------------
----- Baradin Hold -----
------------------------

ZygorGuidesViewer:RegisterInclude("A_Baradin_Hold_Dailies",[[
	step
	label "begin"
		You will only be able to accept a total of 6 quests in the following guide steps.
		confirm
	step
		talk Sergeant Gray##48254
		accept Bomb's Away!##28275 |goto Tol Barad Peninsula 72.9,60.9
		accept Cannonball!##27987 |goto Tol Barad Peninsula 72.9,60.9
		accept Ghostbuster##27978 |goto Tol Barad Peninsula 72.9,60.9
		accept Taking the Overlook Back##27991 |goto Tol Barad Peninsula 72.9,60.9
		accept WANTED: Foreman Wellson##27975 |goto Tol Barad Peninsula 72.9,60.9
		accept Watch Out For Splinters!##27973 |goto Tol Barad Peninsula 72.9,60.9
		Click here when no more quests are available |confirm --noquest
	step
		talk Commander Marcus Johnson##47240
		accept Claiming The Keep##28059 |goto 73.4,59.2
		accept Leave No Weapon Behind##28063 |goto 73.4,59.2
		accept Not The Friendliest Town##28130 |goto 73.4,59.2
		accept Teach A Man To Fish.... Or Steal##28137 |goto 73.4,59.2
		accept Walk A Mile In Their Shoes##28065 |goto 73.4,59.2
		Click here when no more quests are available |confirm --noquest
	step
		talk Camp Coordinator Brack##48255
		accept A Sticky Task##27948 |goto 73.7,57.6
		accept Boosting Morale##27972 |goto 73.7,57.6
		accept Captain P. Harris##27970 |goto 73.7,57.6
		accept Rattling Their Cages##27971 |goto 73.7,57.6
		accept Shark Tank##28050 |goto 73.7,57.6
		accept Thinning the Brood##27944 |goto 73.7,57.6
		Click here when no more quests are available |confirm --noquest
	step
		talk Lieutenant Farnsworth##48250
		accept Finish The Job##28046 |goto 74.8,59.6
		accept First Lieutenant Connor##27967 |goto 74.8,59.6
		accept Magnets, How Do They Work?##27992 |goto 74.8,59.6
		accept Salvaging the Remains##27966 |goto 74.8,59.6
		accept The Forgotten##27949 |goto 74.8,59.6
		Click here when no more quests are available |confirm --noquest
	stickystart "largosghosts"
	step
		Follow the path up |goto 74.3,42.8 < 10 |only if walking
		kill Commander Largo##47304 |q 27991/1 |goto 78.6,42.0
		|tip He's at the top of the tower.
	step
	label "largosghosts"
		kill Overlook Spectre##47182+, Ghastly Worker##47183+, Overlook Spirit##47181+ |only if haveq(27978)
		Slay #14# Largo's Overlook Ghosts |q 27978/1 |goto 78.2,49.0 |only if haveq(27978)
		click Cannonball Stack##176215 |only if haveq(27987)
		collect 4 Stack of Cannonballs##62818 |q 27987/1 |goto 78.2,49.0 |only if haveq(27987)
		|only if haveq(27978) or haveq(27987)
	step
		click String of Fish##206754
		|tip They look like small fish hanging from simple wooden structures on the docks around this area.
		collect 22 Rustberg Seabass##63047 |q 28137/1 |goto 67.72,23.63
	step
		kill Suspicious Villager##47657+, Apprehensive Worker##47659+, Rustberg Bandit##47627+
		kill 14 Rustberg Village Residents |q 28130/1 |goto 67.6,37.1
		|only if haveq(28130)
	stickystart "stickysilk"
	step
		kill 12 Darkwood Lurker##46508+ |q 27944/1 |goto 54.2,47.0
		|only if haveq(27944)
	step
	label "stickysilk"
		kill Darkwood Broodmother##46507+
		collect 4 Sticky Silk Gland##62803 |q 27948/1 |goto 54.2,47.0
		|only if haveq(27948)
	step
		kill Captain P. Harris##47287 |q 27970/1 |goto 47.9,8.1
		|tip He's walking around on this broken boat.
		|only if haveq(27970)
	step
		kill Tank##46608 |q 28050/1  |only if haveq(28050)
		|tip He's an elite shark that swims in the water around this area. This is a group quest, so you will probably need help. |only if haveq(28050)
		click Barrel of Southsea Rum##206580 |only if haveq(27972)
		collect 6 Barrel of Southsea Rum##62810 |q 27972/1 |goto 49.4,19.8 |only if haveq(27972)
		|only if haveq(28050) or haveq(27972)
	step
		kill 8 Shipwrecked Sailor##46605+ |q 27971/1 |goto 49.0,29.4
		|only if haveq(27971)
	step
		kill Keep Lord Farson##47447 |q 28059/1 |goto 36.1,27.3
		|tip He's upstairs in the fort.
		|only if haveq(28059)
	step
		talk Farson Hold Prisoner##48308
		Tell you're here to help him escape
		Escort the Farson Prisoner |q 28065/1 |goto 37.8,29.1
		|tip Follow the Farson Hold Prisoner and protect him.
		|only if haveq(28065)
	step
		click Rack of Rifles##206664
		collect 12 Rusty Rifle##62921 |q 28063/1 |goto 41.2,35.8
		|only if haveq(28063)
	step
		kill Foreman Wellson##46648 |q 27975/1 |goto 27.2,47.7
		|only if haveq(27975)
	step
		clicknpc Wellson Cannon##48283
		Shoot the boats
		Destroy #10# Wellson Supply Boats |q 28275/1 |goto 22.2,36.3
		|only if haveq(28275)
	step
		click Shipyard Lumber##206583
		collect 15 Shipyard Lumber##62811 |q 27973/1 |goto 30.1,43.9
		|only if haveq(27973)
	step
		kill 5 Restless Infantry##46823 |q 28046/1 |goto 40.2,57.9 |only if haveq(28046)
		Use your Magnatized Scrap Collector |use Magnatized Scrap Collector##62829 |only if haveq(27992)
		click Siege Scrap##206652 |only if haveq(27992)
		collect 7 Siege Engine Scrap##52285 |q 27992/1 |goto 40.2,57.9 |only if haveq(27992)
		|only if haveq(28046) or haveq(27992)
	step
		kill First Lieutenant Connor##46571 |q 27967/1 |goto 38.4,77.6
		|only if haveq(27967)
	step
		kill Wandering Soul##46586+, Forgotten Ghoul##46569+ |only if haveq(27966)
		collect 9 Cursed Femur##62808 |q 27966/1 |goto 38.1,71.5 |only if haveq(27966)
		click Forgotten Soldier's Tombstone##206570 |only if haveq(27949)
		Release #6# Tortured Souls |q 27949/1 |goto 38.1,71.5 |only if haveq(27949)
		|only if haveq(27966) or haveq(27949)
	step
		talk Sergeant Gray##48254
		turnin Bomb's Away!##28275 |goto 72.9,60.9 |only if haveq(28275)
		turnin Cannonball!##27987 |goto 72.9,60.9 |only if haveq(27987)
		turnin Ghostbuster##27978 |goto 72.9,60.9 |only if haveq(27978)
		turnin Taking the Overlook Back##27991 |goto 72.9,60.9 |only if haveq(27991)
		turnin WANTED: Foreman Wellson##27975 |goto 72.9,60.9 |only if haveq(27975)
		turnin Watch Out For Splinters!##27973 |goto 72.9,60.9 |only if haveq(27973)
	step
		talk Commander Marcus Johnson##47240
		turnin Claiming The Keep##28059 |goto 73.4,59.2 |only if haveq(28059)
		turnin Leave No Weapon Behind##28063 |goto 73.4,59.2 |only if haveq(28063)
		turnin Not The Friendliest Town##28130 |goto 73.4,59.2 |only if haveq(28130)
		turnin Teach A Man To Fish.... Or Steal##28137 |goto 73.4,59.2 |only if haveq(28137)
		turnin Walk A Mile In Their Shoes##28065 |goto 73.4,59.2 |only if haveq(28065)
	step
		talk Camp Coordinator Brack##48255
		turnin A Sticky Task##27948 |goto 73.7,57.6 |only if haveq(27948)
		turnin Boosting Morale##27972 |goto 73.7,57.6 |only if haveq(27972)
		turnin Captain P. Harris##27970 |goto 73.7,57.6 |only if haveq(27970)
		turnin Rattling Their Cages##27971 |goto 73.7,57.6 |only if haveq(27971)
		turnin Shark Tank##28050 |goto 73.7,57.6 |only if haveq(28050)
		turnin Thinning the Brood##27944 |goto 73.7,57.6 |only if haveq(27944)
	step
		talk Lieutenant Farnsworth##48250
		turnin Finish The Job##28046 |goto 74.8,59.6 |only if haveq(28046)
		turnin First Lieutenant Connor##27967 |goto 74.8,59.6 |only if haveq(27967)
		turnin Magnets, How Do They Work?##27992 |goto 74.8,59.6 |only if haveq(27992)
		turnin Salvaging the Remains##27966 |goto 74.8,59.6 |only if haveq(27966)
		turnin The Forgotten##27949 |goto 74.8,59.6 |only if haveq(27949)
	step
		The following daily quests will only be available if the Alliance faction currently controls Tol Barad
		Click here to continue |confirm
		Click here if your faction does not control Tol Barad |confirm |next "end"
	step
		talk Sergeant Parker##48066
		accept A Huge Problem##28122 |goto Tol Barad 50.9,49.7
		accept Swamp Bait##28162 |goto Tol Barad 50.9,49.7
		accept The Leftovers##28163 |goto Tol Barad 50.9,49.7
	step
		goto 51.4,49.6
		Click here if 2nd Lieutenant Wansworth is present |confirm |next "wansworth_is_here"
		Click here if Commander Stevens is present |confirm |next "stevens_is_here"
		Click here if Marshal Fallows is present |confirm |next "fallows_is_here"
		|tip Only one of these NPCs will be available
	step
	label "wansworth_is_here"
		talk 2nd Lieutenant Wansworth##48061
		accept D-Block##28165 |goto 51.4,49.6
		accept Svarnos##28185 |goto 51.4,49.6
		accept Cursed Shackles##28186 |goto 51.4,49.6
		|next "exit"
	step
	label "stevens_is_here"
		talk Commander Stevens##48039
		accept Clearing the Depths##28117 |goto 51.5,49.5
		accept Learning From The Past##28120 |goto 51.5,49.5
		accept The Imprisoned Archmage##28118 |goto 51.5,49.5
		|next "exit"
	step
	label "fallows_is_here"
		goto 51.5,49.6
		talk Marshal Fallows##48074
		accept Food From Below##28232
		accept Prison Revolt##28188
		accept The Warden##28223
		|next "exit"
	step
	label "exit"
		Continuing...
	step
		Enter the underground jail |goto 42.7,39.1 < 10 |walk
		|only if haveq(28185) or haveq(28165) or haveq(28186)
	stickystart "slaydemons"
	step
		kill Svarnos##47544+
		collect Svarnos' Cursed Collar##63143 |q 28185/1 |goto 48.3,30.7
		|only if haveq(28185)
	step
	label "slaydemons"
		kill Imprisoned Imp##47549+, Cell Watcher##47542+, Shivan Destroyer##47540+, Jailed Wrathguard##47548+ |only if haveq(28165)
		Slay #10# Demons |q 28165/1 |goto 44.4,30.5 |only if haveq(28165)
		click Cursed Shackle##181 |only if haveq(28186)
		collect 8 Cursed Shackles##63149 |q 28186/1 |goto 44.4,30.5 |only if haveq(28186)
		|only if haveq(28165) or haveq(28186)
	step
		kill Baradin Crocolisk##47591+
		collect 8 Crocolisk Hide##63103 |q 28162/1 |goto 42.1,41.8
		|only if haveq(28162)
	step
		Enter the underground jail |goto 44.0,69.2 |walk
		kill Warden Silva##48036
		collect Warden's Keys##63309 |q 28223/1 |goto 37.5,71.7
		|only if haveq(28223)
	step
		kill Imprisoned Worker##47550+, Exiled Mage##47552+ |only if haveq(28188)
		Slay 10 Prisoners |q 28188/1 |goto 40.9,78.2 |only if haveq(28188)
		click Crate of Cellblock Rations##206996 |only if haveq(28232)
		collect 12 Cellblock Ration##63315 |q 28232/1 |goto 40.9,78.2 |only if haveq(28232)
		|only if haveq(28188) or haveq(28232)
	step
		Enter the underground jail |goto 60.8,50.1 |walk
		kill Archmage Galus##47537
		collect Archmage Galus' Staff##63033 |q 28118/1 |goto 56.8,54.8
		|only if haveq(28118)
	step
		kill Captive Spirit##47531+, Ghastly Convict##47590+ |only if haveq(28117)
		Slay #9# Ghosts |q 28117/1 |goto 51.4,49.5 |only if haveq(28117)
		click Dusty Prison Journal##206890 |only if haveq(28120)
		collect 4 Dusty Prison Journal##63034 |q 28120/1 |goto 51.4,49.5 |only if haveq(28120)
		|only if haveq(28117) or haveq(28120)
	step
		kill Horde Mage Infantry##47608+, Horde Shaman Infantry##47610+, Horde Rogue Infantry##47609+, Horde Druid Infantry##47607+
		Kill #12# Horde Infantry |q 28163/1 |goto 51.1,29.7
		|only if haveq(28163)
	step
		kill Problim##47593 |q 28122/1 |goto 52.8,36.7
		|tip He patrols around Baradin Hold. Some searching may be required.
		|only if haveq(28122)
	step
		talk Sergeant Parker##48066
		turnin A Huge Problem##28122 |goto Tol Barad 50.9,49.7
		turnin Swamp Bait##28162 |goto Tol Barad 50.9,49.7
		turnin The Leftovers##28163 |goto Tol Barad 50.9,49.7
	step
		talk 2nd Lieutenant Wansworth##48061
		turnin D-Block##28165 |goto 51.4,49.6
		turnin Svarnos##28185 |goto 51.4,49.6
		turnin Cursed Shackles##28186 |goto 51.4,49.6
		|only if haveq(28165) or haveq(28185) or haveq(28186)
	step
		talk Commander Stevens##48039
		turnin Clearing the Depths##28117 |goto 51.5,49.5
		turnin Learning From The Past##28120 |goto 51.5,49.5
		turnin The Imprisoned Archmage##28118 |goto 51.5,49.5
		|only if haveq(28117) or haveq(28120) or haveq(28118)
	step
		talk Marshal Fallows##48074
		turnin Food From Below##28232 |goto 51.5,49.6
		turnin Prison Revolt##28188 |goto 51.5,49.6
		turnin The Warden##28223 |goto 51.5,49.6
		|only if haveq(28232) or haveq(28188) or haveq(28223)
	step
	label "end"
		You have reached the end of the dailies for today
		Click here to return to the beginning of the guide |confirm |next "begin"
]])

---------------------------
----- Cooking Dailies -----
---------------------------

ZygorGuidesViewer:RegisterInclude("SW_Cooking_Dailies",[[
		You will only be able to complete 1 of the following quests per day
		confirm
	step
		talk Robby Flay##42288
		You will only be able to complete 1 of the following quests per day
		accept A Fisherman's Feast##26190 |or |goto Stormwind City 50.6,71.9
		accept Feeling Crabby?##26177 |or |goto Stormwind City 50.6,71.9
		accept Orphans Like Cookies Too!##26192 |or |goto Stormwind City 50.6,71.9
		accept Penny's Pumpkin Pancakes##26153 |or |goto Stormwind City 50.6,71.9
		accept The King's Cider##26183 |or |goto Stormwind City 50.6,71.9
	step
		click Barrel of Canal Fish##203800
		|tip They look like dark wooden barrels near fishermen all along the canals.
		collect 5 Gigantic Catfish##57245 |q 26190/1 |goto 54.9,68.2
	step
		clicknpc Canal Crab##42339+
		|tip They look like small crabs underwater all along in the canals.
		collect 10 Canal Crab##57175 |q 26177/1 |goto 54.5,66.7
	step
		click Sack of Confectioner's Sugar##203801
		|tip They look like cloth white sacks. This one is laying on the ground inside The Slaughtered Lamb building.
		collect 4 Confectioner's Sugar##57246 |q 26192/1 |goto 41.2,83.6
		You can find more Sacks of Confectioner's Sugar:
		At [51.0,96.2]
		|tip Laying on the floor, next to the fireplace in The Blue Recluse building.
		At [77.8,53.2]
		|tip Laying on the floor, next to the fireplace in Pig and Whistle Tavern building.
		At [66.0,31.9]
		|tip Laying on the bar inside The Golden Keg building.
	step
		click Stormwind Pumpkin##203751
		|tip They look like big orange pumpkins on the ground around this area.
		collect 6 Stormwind Pumpkin##57137 |q 26153/1 |goto 54.3,12.3
	step
		click Juicy Apples##203762
		|tip They look like red apples laying on the ground under apple trees along the streets of Stormwind City. There are different types of trees in Stormwind, so only look under the rounder shaped trees with red apples in them.
		collect 12 Juicy Apple##57197 |q 26183/1 |goto 55.0,74.0
	step
		talk Robby Flay##42288
		You will only be able to complete 1 of the following quests per day
		turnin A Fisherman's Feast##26190 |goto 50.6,71.9
		turnin Feeling Crabby?##26177 |goto 50.6,71.9
		turnin Orphans Like Cookies Too!##26192 |goto 50.6,71.9
		turnin Penny's Pumpkin Pancakes##26153 |goto 50.6,71.9
		turnin The King's Cider##26183 |goto 50.6,71.9
]])

ZygorGuidesViewer:RegisterInclude("IF_Cooking_Dailies",[[
	step
		talk Daryl Riknussun##5159
		accept A Fowl Shortage##29352 |or |goto Ironforge 60.1,36.4
		accept A Round for the Guards##29351 |or |goto Ironforge 60.1,36.4
		accept Can't Get Enough Spice Bread##29355 |or |goto Ironforge 60.1,36.4
		accept I Need to Cask a Favor##29356 |or |goto Ironforge 60.1,36.4
		accept Keepin' the Haggis Flowin'##29353 |or |goto Ironforge 60.1,36.4
	step
		click Cask of Drugan's IPA##208872
		|tip This is a timed quest. You will be forced to run automatically and have 3 mins to run the IPA back to the quest giver.
		Pick up the Cask of Drugan's IPA |havebuff 132620 |goto Dun Morogh 53.9,50.7 --INV_Cask_01
		only if haveq(29356)
	step
		Deliver the Cask of Drugan's IPA |q 29356/2 |goto Ironforge 60.1,36.5
	step
		Click on the Sack of Oatmeal
		collect 4 Sack of Oatmeal##69985 |q 29353/2 |goto Ironforge 58.9,41.2
		|tip They look like shinning white bags on the ground all around Ironforge
		only if haveq(29353)
	step
		talk Sognar Cliffbeard##5124
		collect 1 Bag o' Sheep Innards##69984 |q 29353/1 |goto Ironforge 61.9,72.5
		|only if haveq(29353)
	step
		talk Emrul Riknussun##5160
		collect 5 Mild Spices##2678 |q 29353/3 |goto Ironforge 59.9,37.6
		|only if haveq(29353)
	step
		use Ironforge Rations##69981
		|tip Offer your Ironforge Rations to the Ironforge Guards around Ironforge.
		Feed #6# Ironforge Guards |q 29351/1 |goto Ironforge 57.9,50.0
		only if haveq(29351)
	step
		talk Emrul Riknussun##5160
		buy 10 Simple Flour##30817 |q 29355 |goto Ironforge 59.9,37.6
		buy 10 Mild Spices##2678 |q 29355 |goto Ironforge 59.9,37.6
		only if haveq(29355)
	step
		create Spice Bread##37836,Cooking,10 total
		collect 10 Spice Bread##30816 |q 29355/1
		only if haveq(29355)
	step
		clicknpc Dun Morogh Chicken##53568
		collect 6 Dun Morogh Chicken##69982 |q 29352/1 |goto Dun Morogh 59.8,35.2
	step
		talk Daryl Riknussun##29351
		turnin A Fowl Shortage##29352 |or |goto Ironforge 60.1,36.5
		turnin A Round for the Guards##29351 |or |goto Ironforge 60.1,36.5
		turnin Can't Get Enough Spice Bread##29355 |or |goto Ironforge 60.1,36.5
		turnin I Need to Cask a Favor##29356 |or |goto Ironforge 60.1,36.5
		turnin Keepin' the Haggis Flowin'##29353 |or |goto Ironforge 60.1,36.5
]])

ZygorGuidesViewer:RegisterInclude("Darn_Cooking_Dailies",[[
		talk Alegorn##4210
		accept The Secret to Perfect Kimchi##29313 |or |goto Darnassus 50.0,36.6
		accept Remembering the Ancestors##29314 |or |goto Darnassus 50.0,36.6
		accept Back to Basics##29316 |or |goto Darnassus 50.0,36.6
		accept Ribs for the Sentinels##29318 |or |goto Darnassus 50.0,36.6
		accept Spice Bread Aplenty##29357 |or |goto Darnassus 50.0,36.6
	step
		click Blessed Rice Cakes##208819
		collect Blessed Rice Cakes##69900 |q 29314/1 |goto Darnassus 43.2,78.4
	step
		click Buried Kimchi Jar##208814
		|tip They look like shinning jars covered in dirt all over Darnassus
		collect 8 Buried Kimchi Jar##69898 |q 29313/1 |goto 48.0,37.0
	step
		talk Fyldan##4223
		buy 10 Simple Flour##30817 |q 29357 |n
		buy 10 Mild Spices##2678 |q 29357 |n
		create Spice Bread##37836,Cooking,10 total |n
		collect 10 Spice Bread##30816 |q 29357/1 |goto 49.6,36.6
	step
		Click on the Rice Baskets found on the Craftmen's Terrace and the Warrior's Terrace
		|tip They look like shinning light-brown baskets.
		Practice Making Rice Flour |q 29316/1
	step
		Create a basic campfire |cast Basic Campfire##818
		Cook your Uncooked Ribs |use Uncooked Ribs##69904
		collect 5 Delicious Ribs##69906 |n
		use Delicious Ribs##69906
		|tip Feed the Delicious Ribs to the Darnassus Sentinels, located all over Darnassus.
		Feed #5# Ribs to Sentinels |q 29318/1 |goto 52.2,35.6
	step
		talk Alegorn##4210
		turnin The Secret to Perfect Kimchi##29313 |goto Darnassus 50.0,36.6
		turnin Back to Basics##29316 |goto Darnassus 50.0,36.6
		turnin Ribs for the Sentinels##29318 |goto Darnassus 50.0,36.6
		turnin Spice Bread Aplenty##29357 |goto Darnassus 50.0,36.6
	step
		click Shrine of the Ancestors##208825
		turnin Remembering the Ancestors##29314 |goto Darnassus 69.2,39.9
]])

ZygorGuidesViewer:RegisterInclude("A_Shattrath_Cooking_Dailies",[[
	step
		talk The Rokk##24393
		You will only be able to accept one of these daily quests per day
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
		You can find more Clefthooves at  45.5,72.7
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
		collect 4 Raptor Ribs##31670 |q 11379 |goto Blade's Edge Mountains 49.6,46.2
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
		collect 15 Mana Berry##33849+ |q 11380/1 |goto Netherstorm 45.6,54.2
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
		create Warp Burger##33288,Cooking,3 total |q 11377
		use Cooking Pot##33837
		|tip Use your Cooking Pot to Cook up some Kaliri Stew.
		create Kaliri Stew##43718,Cooking,1 total |q 11377/1 |goto 25.9,59.5
		|next "turnin"
	step
	label "turnin"
		talk The Rokk##24393
		turnin Soup for the Soul##11381 |goto Shattrath City 61.8,15.6
		turnin Super Hot Stew##11379 |goto Shattrath City 61.8,15.6
		turnin Manalicious##11380 |goto Shattrath City 61.8,15.6
		turnin Revenge is Tasty##11377 |goto Shattrath City 61.8,15.6
]])

---------------------
----- Firelands -----
---------------------

ZygorGuidesViewer:RegisterInclude("A_Firelands_PreQuests", [[
		Click the Hero's Call Board
		|tip It's a big white stone hanging board with a gold lion head on it.
		accept Hero's Call: Mount Hyjal!##27726 |goto Stormwind City/0 62.91,71.53
	step
		talk Cenarion Emissary Jademoon##15187 |goto Stormwind City/0 82.69,29.57
		Ask her "_Send me to Moonglade._"
		Teleport to Moonglade |goto Moonglade |noway |c |q 39865
	step
		talk Emissary Windsong##39865
		turnin Hero's Call: Mount Hyjal!##27726 |goto Moonglade 45.5,44.9
		accept As Hyjal Burns##25316 |goto Moonglade 45.5,44.9
	step
		clicknpc Aronus##39128 |goto Moonglade 46.1,45.6
		|tip It's a green dragon flying in place in this spot.
		You will fly to Mount Hyjal |goto Mount Hyjal |noway |c
	step
		talk Sebelia##40843
		home Nordrassil |goto Mount Hyjal 63.1,24.1
	step
		talk Ysera##40928
		turnin As Hyjal Burns##25316 |goto Mount Hyjal 62.0,24.9
		accept Protect the World Tree##25317 |goto Mount Hyjal 62.0,24.9
	step
		talk Anren Shadowseeker##39925
		accept The Earth Rises##25460 |goto Mount Hyjal 64.0,22.7
	step
		talk Tholo Whitehoof##40278
		accept Inciting the Elements##25370 |goto Mount Hyjal 64.1,22.5
	step
		kill 8 Scalding Rock Elemental##40229 |q 25460/1 |goto Mount Hyjal 67.1,22.6
		click Juniper Berries##202754
		collect 4 Juniper Berries##53009 |c
	step
		Use your Juniper Berries on Faerie Dragons |use Juniper Berries##53009
		Follow the Faerie Dragons to find Twilight Inciters
		kill 4 Twilight Inciter##39926 |q 25370/1 |goto Mount Hyjal 67.1,22.6
	step
		talk Tholo Whitehoof##40278
		turnin Inciting the Elements##25370 |goto Mount Hyjal 64.1,22.5
		accept Flames from Above##25574 |goto Mount Hyjal 64.1,22.5
	step
		talk Anren Shadowseeker##39925
		turnin The Earth Rises##25460 |goto Mount Hyjal 64.0,22.7
	step
		Use Tholo's Horn to call for an emerald dragon |use Tholo's Horn##55122
		Burn the Infiltrators' Encampment |q 25574/1 |goto Mount Hyjal 55.8,15.4
	step
		talk Tholo Whitehoof##40278
		turnin Flames from Above##25574 |goto Mount Hyjal 64.1,22.5
	step
		talk Malfurion Stormrage##15362
		turnin Protect the World Tree##25317 |goto Mount Hyjal 47.7,35.5
		accept War on the Twilight's Hammer##25319 |goto Mount Hyjal 47.7,35.5
	step
		talk Windspeaker Tamila##39869
		accept The Flameseer's Staff##25472 |goto Mount Hyjal 47.6,35.5
	stickystart "twilightflamecaller"
	step
		click Charred Staff Fragment##202846
		collect 8 Charred Staff Fragment##54461 |q 25472/1 |goto Mount Hyjal 43.3,27.4
	step
	label "twilightflamecaller"
		kill 4 Twilight Flamecaller##38926 |q 25319/1 |goto Mount Hyjal 47.2,25.6
		kill 10 Twilight Vanquisher##38913 |q 25319/2 |goto Mount Hyjal 47.2,25.6
	step
		talk Malfurion Stormrage##15362
		turnin War on the Twilight's Hammer##25319 |goto Mount Hyjal 47.7,35.5
		turnin The Flameseer's Staff##25472 |goto Mount Hyjal 47.7,35.5
		accept Flamebreaker##25323 |goto Mount Hyjal 47.7,35.5
	step
		Use your Flameseer's Staff on Blazebound Elementals |use Flameseer's Staff##53107
		kill 30 Unbound Flame Spirit##40065 |q 25323/1 |goto Mount Hyjal 48.5,29.2
	step
		talk Malfurion Stormrage##15362
		turnin Flamebreaker##25323 |goto Mount Hyjal 47.7,35.5
		accept The Return of Baron Geddon##25464 |goto Mount Hyjal 47.7,35.5
	step
		Use your Flameseer's Staff on Baron Geddon |use Flameseer's Staff##54463
		Weaken Baron Geddon #20# Times |q 25464/1 |goto Mount Hyjal 44.1,26.8
		|tip Run away when you see Galrond of the Claw yell "Look out!".
	step
		talk Malfurion Stormrage##15362
		turnin The Return of Baron Geddon##25464 |goto Mount Hyjal 47.7,35.5
	step
		talk Windspeaker Tamila##39869
		accept Emerald Allies##25430 |goto Mount Hyjal 47.6,35.5
	step
		talk Alysra##38917
		turnin Emerald Allies##25430 |goto Mount Hyjal 48.4,18.9
		accept The Captured Scout##25320 |goto Mount Hyjal 48.4,18.9
	step
		talk Scout Larandia##40096
		turnin The Captured Scout##25320 |goto Mount Hyjal 44.5,18.9
		accept Twilight Captivity##25321 |goto Mount Hyjal 44.5,18.9
	step
		kill Twilight Overseer##40123
		collect Twilight Overseer's Key##53139 |q 25321/1 |goto Mount Hyjal 44.5,21.5
	step
		talk Scout Larandia##40096
		turnin Twilight Captivity##25321 |goto Mount Hyjal 44.5,18.9
		accept Return to Alysra##25424 |goto Mount Hyjal 44.5,18.9
	step
		talk Alysra##38917
		turnin Return to Alysra##25424 |goto Mount Hyjal 48.4,18.9
		accept A Prisoner of Interest##25324 |goto Mount Hyjal 48.4,18.9
	step
		Enter the cave |goto Mount Hyjal 52.5,17.3 < 10 |walk
		talk Captain Saynna Stormrunner##40139
		turnin A Prisoner of Interest##25324 |goto Mount Hyjal 56.8,18.8 |indoors Hyjal Barrow Dens
		accept Through the Dream##25325 |goto Mount Hyjal 56.8,18.8 |indoors Hyjal Barrow Dens
	step
		Leave the cave |goto Mount Hyjal 52.5,17.3 < 10 |walk
		talk Alysra##40178
		turnin Through the Dream##25325 |goto Mount Hyjal 52.2,17.4
		accept Return to Nordrassil##25578 |goto Mount Hyjal 52.2,17.4
	step
		talk Ysera##40928
		turnin Return to Nordrassil##25578 |goto Mount Hyjal 62.0,24.9
		accept The Return of the Ancients##25584 |goto Mount Hyjal 62.0,24.9
	step
		talk Oomla Whitehorn##39429
		turnin The Return of the Ancients##25584 |goto Mount Hyjal 35.7,19.4
		accept Harrying the Hunters##25255 |goto Mount Hyjal 35.7,19.4
	step
		talk Jadi Falaryn##39427
		accept End of the Supply Line##25233 |goto Mount Hyjal 35.7,19.7
		accept In the Rear With the Gear##25234 |goto Mount Hyjal 35.7,19.7
	stickystart "goodss"
	step
		kill 6 Twilight Hunter##39437 |q 25255/1 |goto Mount Hyjal 38.1,23.0
		kill 4 Twilight Proveditor##39436 |q 25233/1 |goto Mount Hyjal 38.1,23.0
	step
	label "goodss"
		click Twilight Supplies##202652
		|tip You can get the supplies after you kill the Twilight Proveditor and Twilight Slavedriver.
		collect 36 Twilight Supplies##52568 |q 25234/1 |goto Mount Hyjal 38.1,23.0
	step
		talk Jadi Falaryn##39427
		turnin End of the Supply Line##25233 |goto Mount Hyjal 35.7,19.7
		turnin In the Rear With the Gear##25234 |goto Mount Hyjal 35.7,19.7
		accept The Voice of Goldrinn##25268 |goto Mount Hyjal 35.7,19.7
	step
		talk Oomla Whitehorn##39429
		turnin Harrying the Hunters##25255 |goto Mount Hyjal 35.7,19.4
	step
		talk Ian Duran##39433
		turnin The Voice of Goldrinn##25268 |goto Mount Hyjal 30.1,31.3
		accept Goldrinn's Ferocity##25271 |goto Mount Hyjal 30.1,31.3
	step
		kill Lycanthoth Vandal##39445+
		collect 6 Polluted Incense##52658 |q 25271/1 |goto Mount Hyjal 29.3,30.3
	step
		talk Ian Duran##39433
		turnin Goldrinn's Ferocity##25271 |goto Mount Hyjal 30.1,31.3
		accept Lycanthoth the Corruptor##25273 |goto Mount Hyjal 30.1,31.3
	step
		Use Lycanthoth's Incense next to Lycanthoth's Altar |use Lycanthoth's Incense##52682
		|tip Inside the cave.
		kill Lycanthoth##39446 |q 25273/1 |goto Mount Hyjal 32.4,37.3
	step
		talk Spirit of Goldrinn##39627
		turnin Lycanthoth the Corruptor##25273 |goto Mount Hyjal 32.3,37.0
	step
		talk Spirit of Goldrinn##39627
		accept The Shrine Reclaimed##25280 |goto Mount Hyjal 29.6,29.3
	step
		talk Ian Duran##39433
		turnin The Shrine Reclaimed##25280 |goto Mount Hyjal 28.2,29.8
		accept Cleaning House##25278 |goto Mount Hyjal 28.2,29.8
	step
		talk Rio Duran##39434
		accept From the Mouth of Madness##25297 |goto Mount Hyjal 28.2,29.9
	step
		talk Royce Duskwhisper##39435
		accept The Eye of Twilight##25300 |goto Mount Hyjal 28.6,30.2
	step
		click Bitterblossom##202703
		collect Bitterblossom##52727 |q 25297/2 |goto Mount Hyjal 28.9,32.2
	step
		click Stonebloom##202702
		collect Stonebloom##52726 |q 25297/1 |goto Mount Hyjal 27.6,34.2
	step
		Click the Eye of Twilight
		|tip It looks like a glowing purple ball in a metal rod with a hook on it.
		turnin The Eye of Twilight##25300 |goto Mount Hyjal 27.2,35.2
		accept Mastering Puppets##25301 |goto Mount Hyjal 27.2,35.2
	step
		click Darkflame Ember##202705
		collect Darkflame Ember##52728 |q 25297/3 |goto Mount Hyjal 28.4,35.8
	step
		click Twilight Cauldron##202706
		turnin From the Mouth of Madness##25297 |goto Mount Hyjal 28.4,36.4
		accept Free Your Mind, the Rest Follows##25298 |goto Mount Hyjal 28.4,36.4
	step
		Enter the cave |goto Mount Hyjal 27.0,36.0 < 10 |walk
		talk Kristoff Manheim##39797
		accept Gar'gol's Gotta Go##25328 |goto Mount Hyjal 27.2,40.8 |indoors Gar'gol's Hovel
	step
		click Gar'gol's Personal Treasure Chest##204580
		collect Rusted Skull Key##52789 |q 25328/1 |goto Mount Hyjal 26.5,38.5 |indoors Gar'gol's Hovel
	step
		click The Twilight Apocrypha##202712
		turnin Mastering Puppets##25301 |goto Mount Hyjal 25.8,41.7 |indoors Gar'gol's Hovel
		accept Elementary!##25303 |goto Mount Hyjal 25.8,41.7 |indoors Gar'gol's Hovel
	step
		clicknpc Crucible of Fire##39730
		Activate the Crucible of Fire |q 25303/3 |goto Mount Hyjal/0 26.0,41.8 |indoors Gar'gol's Hovel
	step
		clicknpc Crucible of Earth##39737
		Activate the Crucible of Earth |q 25303/1 |goto 25.7,41.7 |indoors Gar'gol's Hovel
	step
		clicknpc Crucible of Air##39736
		Activate the Crucible of Air |q 25303/2 |goto 25.8,41.9 |indoors Gar'gol's Hovel
	step
		clicknpc Crucible of Water##39738
		Activate the Crucible of Water |q 25303/4 |goto 26.0,41.6 |indoors Gar'gol's Hovel
	step
		click The Twilight Apocrypha##202712
		turnin Elementary!##25303 |goto 25.8,41.7 |indoors Gar'gol's Hovel
		accept Return to Duskwhisper##25312 |goto 25.8,41.7 |indoors Gar'gol's Hovel
	step
		While inside the cave do the following
		kill Hovel Brute##39642+, Hovel Shadowcaster##39643+
		Slay #8# Minion of Gar'gol |q 25278/1
		talk Twilight Servitor##39644
		Administor the drought
		Free #8# Twilight Servitors |q 25298/1
	step
		talk Kristoff Manheim##39797
		turnin Gar'gol's Gotta Go##25328 |goto Mount Hyjal 27.2,40.8 |indoors Gar'gol's Hovel
		accept Get Me Outta Here!##25332 |goto Mount Hyjal 27.2,40.8 |indoors Gar'gol's Hovel
	step
		Escort Kristoff Out |q 25332/1 |goto Mount Hyjal 27.1,36.0 |indoors Gar'gol's Hovel
	step
		talk Royce Duskwhisper##39435
		turnin Return to Duskwhisper##25312 |goto Mount Hyjal 28.6,30.2
		turnin Get Me Outta Here!##25332 |goto Mount Hyjal 28.6,30.2
	step
		talk Ian Duran##39433
		turnin Cleaning House##25278 |goto Mount Hyjal 28.2,29.8
		accept Sweeping the Shelf##25352 |goto Mount Hyjal 28.2,29.8
		accept Lightning in a Bottle##25353 |goto Mount Hyjal 28.2,29.8
	step
		talk Rio Duran##39434
		turnin Free Your Mind, the Rest Follows##25298 |goto Mount Hyjal 28.2,29.9
	step
		kill 8 Twilight Stormcaller |q 25352/1 |goto Mount Hyjal 27.4,39.2
		kill 5 Howling Riftdweller |q 25352/2 |goto Mount Hyjal 27.4,39.2
		Click a Lightning Channel
		|tip They look like rods standing upright around this area, with lamps at the top of them.
		collect Charged Condenser Jar##52834 |q 25353/1 |goto Mount Hyjal 27.4,39.2
	step
		Use your Totem of Goldrinn |use Totem of Goldrinn##52853
		talk Spirit of Goldrinn##39627
		turnin Lightning in a Bottle##25353
		accept Into the Maw!##25618
	step
		Go inside the blue portal |goto 26.2,41.0 < 10 |walk
		talk Jordan Olafson##40834
		turnin Into the Maw!##25618 |goto Mount Hyjal 26.3,41.9
		accept Forged of Shadow and Flame##25575 |goto Mount Hyjal 26.3,41.9
		accept Crushing the Cores##25577 |goto Mount Hyjal 26.3,41.9
	step
		talk Yargra Blackscar##40837
		accept Rage of the Wolf Ancient##25576 |goto Mount Hyjal 26.3,42.0
	stickystep "cores"
	stickystep "crates"
	step
		Do the following in the Firelands Forgeworks
		kill 12 Dark Iron Laborer##40838 |q 25576/1 |goto Mount Hyjal/0 28.89,40.29
		kill Searing Guardian##40841+
		collect 8 Smoldering Core##55123 |complete itemcount(55123) >= 8 |q 25577
	step
	label "cores"
		Use your Smoldering Cores next to Twilight Anvils |use Smoldering Core##55123
		|tip They are small anvils sitting on the ground around this area.
		Destroy #8# Smoldering Cores |q 25577/1 |goto 27.67,42.92
	step
	label "crates"
		Click Twilight Arms Crates
		|tip They look like wooden boxes sitting on the ground around this area.
		Destroy #10# Twilight Arms Crates |q 25575/1
	step
		talk Yargra Blackscar##40837
		turnin Rage of the Wolf Ancient##25576 |goto Mount Hyjal 26.3,42.0
	step
		talk Jordan Olafson##40834
		turnin Forged of Shadow and Flame##25575 |goto Mount Hyjal 26.3,41.9
		turnin Crushing the Cores##25577 |goto Mount Hyjal 26.3,41.9
		accept Cindermaul, the Portal Master##25599 |goto Mount Hyjal 26.3,41.9
	step
		kill Cindermaul##40844 |q 25599/1 |goto Mount Hyjal 30.7,41.7
		click Battered Stone Chest##203089
		collect Tome of Openings##55136 |q 25599/2 |goto Mount Hyjal 30.7,41.7
	step
		talk Jordan Olafson##40834
		turnin Cindermaul, the Portal Master##25599 |goto Mount Hyjal 26.3,41.9
		accept Forgemaster Pyrendius##25600 |goto Mount Hyjal 26.3,41.9
	step
		Click the Portal Runes
		|tip They are brown metal plates on the ground on this small circular island in the lava.
		Lure Forgemaster Pyrendius onto the activated Portal Runes
		|tip This will weaken him and allow you to kill him.
		kill Forgemaster Pyrendius |q 25600/1 |goto Mount Hyjal 31.6,46.0
	step
		talk Jordan Olafson##40834
		turnin Forgemaster Pyrendius##25600 |goto Mount Hyjal 26.3,41.9
		accept Return from the Firelands##25611 |goto Mount Hyjal 26.3,41.9
	step
		Go inside the blue portal |goto Mount Hyjal 25.9,40.9 <10
		talk Ian Duran##39433
		turnin Sweeping the Shelf##25352 |goto Mount Hyjal 28.2,29.8
		turnin Return from the Firelands##25611 |goto Mount Hyjal 28.2,29.8
	step
		talk Vision of Ysera##46987
		accept Aviana's Legacy##27874 |goto Mount Hyjal 28.2,29.8
	step
		talk Rio Duran##39434
		accept The Fires of Mt. Hyjal##25630 |goto Mount Hyjal 28.2,29.9
	step
		talk Laina Nightsky##39927
		turnin The Fires of Mt. Hyjal##25630 |goto Mount Hyjal 19.0,40.9
		accept Fighting Fire With ... Anything##25381 |goto Mount Hyjal 19.0,40.9
		accept Disrupting the Rituals##25382 |goto Mount Hyjal 19.0,40.9
	step
		talk Mylune##39930
		accept Save the Wee Animals##25385 |goto Mount Hyjal 19.2,37.9
	step
		talk Matoclaw##39928
		accept If You're Not Against Us...##25404 |goto Mount Hyjal 19.0,37.0
	step
		talk Tyrus Blackhorn##39933
		Tell him "_I've been sent to request his aid._"
		Then tell him "_You could be destroyed._"
		Then ask him "_Will you help me?_"
		Persuade Blackhorn |q 25404/1 |goto Mount Hyjal 22.3,44.9
	step
		talk Tyrus Blackhorn##39933
		turnin If You're Not Against Us...##25404 |goto Mount Hyjal 22.3,44.9
		accept Seeds of Their Demise##25408 |goto Mount Hyjal 22.3,44.9
	step
		kill Wailing Weed##40066+
		collect 8 Bileberry##53102 |q 25408/1 |goto Mount Hyjal 21.8,43.7
	step
		talk Tyrus Blackhorn##39933
		turnin Seeds of Their Demise##25408 |goto Mount Hyjal 22.3,44.9
		accept A New Master##25411 |goto Mount Hyjal 22.3,44.9
	stickystart "ragingfirestorm"
	step
		kill Twilight Inferno Lord##39974
		Use your Bottled Bileberry Brew on the corpse of a Twilight Inferno Lord |use Bottled Bileberry Brew##53120
		Subjugate a Twilight Inferno Lord |q 25411/1 |goto Mount Hyjal 14.4,45.4
	step
		talk Subjugated Inferno Lord##40093
		turnin A New Master##25411 |goto Mount Hyjal 14.4,45.4
		accept The Name Never Spoken##25412 |goto Mount Hyjal 14.4,45.4
	step
		click Southern Firestone##202763
		|tip It looks like a metal stand with a small flame at the top of it.
		Examine the Southern Firestone |q 25412/3 |goto Mount Hyjal 14.3,45.4
	step
		click Central Firestone##202764
		|tip It looks like a metal stand with a small flame at the top of it.
		Examine the Central Firestone |q 25412/2 |goto Mount Hyjal 11.6,41.5
	step
		click the Northern Firestone##202765
		|tip It looks like a metal stand with a small flame at the top of it.
		Examine the Northern Firestone |q 25412/1 |goto Mount Hyjal 9.6,36.5
	step
	label "ragingfirestorm"
		kill 10 Raging Firestorm |q 25381/1 |goto Mount Hyjal 13.3,41.4
		kill 6 Twilight Inferno Lord |q 25382/1 |goto Mount Hyjal 13.3,41.4
		Click Panicked Bunnies and Terrified Squirrels
		|tip They are small and run around this area.
		collect 10 Frightened Animal##53060 |q 25385/1 |goto Mount Hyjal 13.3,41.4
	step
		talk Laina Nightsky##39927
		turnin Fighting Fire With ... Anything##25381 |goto Mount Hyjal 19.0,40.9
		turnin Disrupting the Rituals##25382 |goto Mount Hyjal 19.0,40.9
	step
		talk Mylune##39930
		turnin Save the Wee Animals##25385 |goto Mount Hyjal 19.2,37.9
		accept Oh, Deer!##25392 |goto Mount Hyjal 19.2,37.9
	step
		talk Tyrus Blackhorn##39933
		turnin The Name Never Spoken##25412 |goto Mount Hyjal 22.3,44.9
		accept Black Heart of Flame##25428 |goto Mount Hyjal 22.3,44.9
	stickystart "injuredfawns"
	step
		Use your Charred Branch while in the burning forest area |use Charred Branch##53464
		kill Thol'embaar##40107
		collect Black Heart of Thol'embaar##53454 |q 25428/1 |goto Mount Hyjal 12.9,41.4
	step
	label "injuredfawns"
		Click 3 Injured Fawns
		|tip They look like tiny deer laying on the ground around this area.
		Lead the Injured Fawns back to Mylune at [19.2,37.9]
		Escort 3 Injured Fawns Home |q 25392/1 |goto 14.5,40.8
	step
		talk Mylune##39930
		turnin Oh, Deer!##25392 |goto 19.2,37.9
	step
		talk Tyrus Blackhorn##39933
		turnin Black Heart of Flame##25428 |goto 22.3,44.9
	step
		talk Laina Nightsky##39927
		accept Last Stand at Whistling Grove##25940 |goto 19.0,40.9
	step
		talk Keeper Taldros##39932
		turnin Last Stand at Whistling Grove##25940 |goto 13.6,32.8
		accept The Bears Up There##25462 |goto 13.6,32.8
	step
		Click the Climbing Tree
		|tip They look like small ladders leaning aginst the trees around this area.
		Click Hyjal Bear Cubs in the tree
		Use your Climb Up ability to climb to the top of the tree
		Use your Chuck-a-bear ability to throw the cubs down
		|tip Aim the yellow arrow at the bearskin trampoline on the ground.
		Rescue 6 Hyjal Bear Cubs |q 25462/1 |goto 14.2,32.1
	step
		talk Keeper Taldros##39932
		turnin The Bears Up There##25462 |goto 13.6,32.8
		accept Smashing Through Ashes##25490 |goto 13.6,32.8
	step
		kill 8 Charbringer |q 25490/1 |goto 21.6,59.1
	step
		talk Arch Druid Hamuul Runetotem##39858
		turnin Smashing Through Ashes##25490 |goto 27.1,62.6
		accept Durable Seeds##25491 |goto 27.1,62.6
		accept Fresh Bait##25493 |goto 27.1,62.6
	step
		talk Rayne Feathersong##40331
		accept Firebreak##25492 |goto 27.1,63.0
	step
		kill 10 Lava Surger |q 25492/1 |goto 36.2,58.6
		kill Core Hound##+
		collect 4 Core Hound Entrails##54609 |q 25493/1 |goto 36.2,58.6
		Click Scorched Soil
		|tip They look like piles of dirt around this area.
		collect 10 Hyjal Seedling##54574 |q 25491/1 |goto 36.2,58.6
	step
		talk Arch Druid Hamuul Runetotem##39858
		turnin Durable Seeds##25491 |goto 27.1,62.6
		turnin Fresh Bait##25493 |goto 27.1,62.6
		accept Hell's Shells##25507 |goto 27.1,62.6
	step
		talk Rayne Feathersong##40331
		turnin Firebreak##25492 |goto 27.1,63.0
		accept Prepping the Soil##25502 |goto 27.1,63.0
	step
		Click the Flameward
		|tip It's a floating stone in a golden claw stand.
		Activate the Flameward |q 25502/1 |goto 33.0,64.6
		Defend the Flameward |q 25502/2 |goto 33.0,64.6
	step
		Use your Heap of Incendosaur Innards near Nemesis |use Heap of Incendosaur Innards##54744
		|tip Nemesis is a huge turtle that walks all around The Flamewake area, so you may need to search for him.
		Click Nemesis when he becomes friendly
		collect Nemesis Shell Fragment##54745 |q 25507/1 |goto 39.3,54.1
	step
		talk Arch Druid Hamuul Runetotem##39858
		turnin Hell's Shells##25507 |goto 27.1,62.6
		accept Tortolla Speaks##25510 |goto 27.1,62.6
	step
		talk Rayne Feathersong##40331
		turnin Prepping the Soil##25502 |goto 27.1,63.0
	step
		talk Tortolla##41504
		turnin Tortolla Speaks##25510 |goto 24.7,55.7
		accept Breaking the Bonds##25514 |goto 24.7,55.7
		accept Children of Tortolla##25519 |goto 24.7,55.7
	step
		Click the Rod of Subjugation
		|tip It's a huge metal rod with an orange spinning ball on top of it.
		Disable Rod of Subjugation 1 |q 25514/1 |goto 23.8,56.0
	step
		Click the Rod of Subjugation
		|tip It's a huge metal rod with an orange spinning ball on top of it.
		Disable Rod of Subjugation 2 |q 25514/2 |goto 25.3,54.8
	step
		talk Tortolla##41504
		turnin Breaking the Bonds##25514 |goto 24.7,55.7
	step
		kill Deep Corruptor##40561+
		|tip They are found underwater
		Save 6 Tortolla's Eggs |q 25519/1 |goto 24.4,57.4
	step
		talk Tortolla##41504
		turnin Children of Tortolla##25519 |goto 24.7,55.7
		accept An Ancient Awakens##25520 |goto 24.7,55.7
	step
		talk Arch Druid Hamuul Runetotem##39858
		turnin An Ancient Awakens##25520 |goto 27.1,62.6
	step
		talk Choluna##41005
		turnin Aviana's Legacy##27874 |goto 44.4,46.2
		accept An Offering for Aviana##25663 |goto 44.4,46.2
	step
		talk Thisalee Crow##41006
		accept The Wormwing Problem##25655 |goto 42.2,45.5
		accept Scrambling for Eggs##25656 |goto 42.2,45.5
	stickystart "hyjalegg"
	step
		Use your Sacred Nectar next to Aviana's Burial Circle |use Sacred Nectar##55208
		Offer the Nectar |q 25663/1 |goto 40.3,44.3
		talk Mysterious Winged Spirit##41068
		turnin An Offering for Aviana##25663 |goto 40.3,44.3
		accept A Plea From Beyond##25665 |goto 40.3,44.3
	step
	label "hyjalegg"
		kill Wormwing Screecher##41027+, Wormwing Swifttalon##41028+
		Kill 10 Wormwing Harpies |q 25655/1 |goto 38.5,43.0
		Click Stolen Hyjal Eggs
		|tip They look like big white eggs sitting at the base of trees around this area.
		collect 8 Hyjal Egg##55189 |q 25656/1 |goto 38.5,43.0
	step
		talk Thisalee Crow##41006
		turnin The Wormwing Problem##25655 |goto 42.2,45.5
		turnin Scrambling for Eggs##25656 |goto 42.2,45.5
		accept A Bird in Hand##25731 |goto 42.2,45.5
	step
		talk Choluna##41005
		turnin A Plea From Beyond##25665 |goto 44.4,46.2
		accept A Prayer and a Wing##25664 |goto 44.4,46.2
	step
		Click the Harpy Signal Fire
		|tip It's a brazier with red fire in it.
		Fight Marion Wormwing until she gets captured |q 25731/1 |goto 38.3,44.2
		talk Marion Wormwing##41112
		Ask her why she is stealing eggs, then tell Thisalee to kill her
		Interrogate Marion Wormwing |q 25731/2 |goto 38.3,44.2
	step
		Use your Enormous Bird Call in Blaithe's Roost |use Enormous Bird Call##55211
		|tip It's a huge bird nest sitting on top of this mountain peak.
		kill Blaithe##41084
		collect Ancient Feather##55210 |q 25664/1 |goto 35.7,42.3
	step
		talk Thisalee Crow##41006
		turnin A Bird in Hand##25731 |goto 42.2,45.5
	step
		talk Choluna##41005
		turnin A Prayer and a Wing##25664 |goto 44.4,46.2
	step
		talk Skylord Omnuron##40997
		|tip He is up on the platform above Choluna.
		accept Fact-Finding Mission##25740 |goto 43.5,45.9
	step
		talk Thisalee Crow##41006
		turnin Fact-Finding Mission##25740 |goto 32.8,70.8
		accept Sethria's Brood##25746 |goto 32.8,70.8
		accept A Gap in Their Armor##25758 |goto 32.8,70.8
	step
		Click the Codex of Shadows
		|tip It's an open book sitting on a wooden box.
		accept The Codex of Shadows##25763 |goto 31.3,77.1
	step
		kill Twilight Dragonkin##41029+, Twilight Dragonkin Armorers##41030+
		Slay 12 Sethria's Minions |q 25746/1 |goto 30.9,76.9
		Click Twilight Armor Plates
		|tip They look like tan pieces of metal laying on the ground around this area.
		collect 8 Twilight Armor Plate##55809 |q 25758/1 |goto 30.9,76.9
	step
		talk Thisalee Crow##41006
		turnin Sethria's Brood##25746 |goto 32.8,70.8
		turnin A Gap in Their Armor##25758 |goto 32.8,70.8
		accept Disassembly##25761 |goto 32.8,70.8
		turnin The Codex of Shadows##25763 |goto 32.8,70.8
		accept Egg Hunt##25764 |goto 32.8,70.8
	step
		Use Thisalee's Shiv on Twilight Juggernauts |use Thisalee's Shiv##55883
		|tip Use Thisalee's Shive multiple times to remove the Twilight Juggernauts' Armor Plating and make them weaker.
		kill 3 Twilight Juggernaut |q 25761/1 |goto 31.6,75.8
		Click Shadow Cloak Generators
		|tip They look like blue glowing machines around this area.
		Unveil and Defend Aviana's Egg |q 25764/1 |goto 31.6,75.8
	step
		talk Thisalee Crow##41006
		turnin Disassembly##25761 |goto 32.8,70.8
		turnin Egg Hunt##25764 |goto 32.8,70.8
		accept Sethria's Demise##25776 |goto 32.8,70.8
	step
		Fight Sethria
		Use Thisalee's Signal Rocket when Sethria turns into a dragon |use Thisalee's Signal Rocket##56003
		kill Sethria |q 25776/1 |goto 35.5,98.0
	step
		talk Thisalee Crow##41006
		turnin Sethria's Demise##25776 |goto 32.8,70.8
		accept Return to the Shrine##25795 |goto 32.8,70.8
	step
		talk Choluna##41005
		turnin Return to the Shrine##25795 |goto 44.4,46.2
		accept An Ancient Reborn##25807 |goto 44.4,46.2
	step
		Use Herald's Incense next to Aviana's Egg |use Herald's Incense##56016
		|tip Aviana's Egg is in the tree tower, in a side room.
		Burn Herald's Incense |q 25807/1 |goto 44.3,48.0
	step
		talk Aviana##41308
		turnin An Ancient Reborn##25807 |goto 44.2,47.8
	step
		talk Morthis Whisperwing##41003
		accept The Hatchery Must Burn##25810 |goto 44.1,45.9
	step
		talk Vision of Ysera##47002
		accept The Last Living Lorekeeper##25830 |goto 43.8,46.0
		If you cannot pick up the quest, go here to get it: [62.0,24.9]
	step
		Go inside the blue portal |goto 39.1,58.3 < 10 |walk
		talk Farden Talonshrike##40578
		turnin The Hatchery Must Burn##25810 |goto 37.2,56.2
		accept Flight in the Firelands##25523 |goto 37.2,56.2
	step
		Click the Twilight Weapon Rack
		|tip It's a wooden stand with some weapons leaning against it.
		collect Twilight Firelance##52716 |q 25523 |goto 37.2,56.1
	step
		Equip the Twilight Firelance |equipped Twilight Firelance##52716 |q 25523 |goto 37.4,56.0
		Click Aviana's Guardian to ride it |invehicle
		|tip They are hippogryphs.
	step
		Use your Flap ability on your hotbar repeatedly to fly to this green flag
		Land next to the Guardian Flag
		|tip It's a green flag on this small floating island.
		Visit the Guardian Flag |q 25523/1 |goto 36.6,53.4
	step
		Use your Flap ability on your hotbar repeatedly to fly to this spot
		talk Farden Talonshrike##40578
		turnin Flight in the Firelands##25523 |goto 37.2,56.2
		accept Wave One##25525 |goto 37.2,56.2
	step
		Use your Flap ability on your hotbar repeatedly to fly around this area
		Fly into Twilight Buzzards to joust them
		kill 10 Twilight Knight Rider |q 25525/1 |goto 35.4,51.7
	step
		Use your Flap ability on your hotbar repeatedly to fly to this spot
		talk Farden Talonshrike##40578
		turnin Wave One##25525 |goto 37.2,56.2
		accept Wave Two##25544 |goto 37.2,56.2
	step
		Use your Flap ability on your hotbar repeatedly to fly around this area
		Fly into Twilight Firebirds to joust them |tip Be careful, don't let the burning Falling Boulders hit you.
		kill 10 Twilight Lancer |q 25544/1 |goto 35.4,51.7
	step
		Use your Flap ability on your hotbar repeatedly to fly to this spot
		talk Farden Talonshrike##40578
		turnin Wave Two##25544 |goto 37.2,56.2
		accept Egg Wave##25560 |goto 37.2,56.2
	step
		Use your Flap ability on your hotbar repeatedly to fly around this area
		Run over Firelands Eggs
		|tip They look like blue eggs on the ground around this area.
		Destroy 40 Firelands Eggs |q 25560/1 |goto 36.6,53.3
		You can find more Firelands Eggs at [39.3,54.1]
	step
		Use your Flap ability on your hotbar repeatedly to fly to this spot
		talk Farden Talonshrike##40578
		turnin Egg Wave##25560 |goto 37.2,56.2
		accept Return to Aviana##25832 |goto 37.2,56.2
	step
		Click the red arrow on your hotbar to get off the hippogryph |outvehicle |c
	step
		Go inside the blue glowing orb |goto 39.1,58.1 < 10 |walk
		|tip Don't forget to equip your real weapon again.
		talk Aviana##41308
		turnin Return to Aviana##25832 |goto 44.3,48.0
	step
		talk Nordu##41381
		turnin The Last Living Lorekeeper##25830 |goto 27.4,55.6
		accept Firefight##25842 |goto 27.4,55.6
	step
		kill 5 Fiery Tormentor |q 25842/1 |goto 27.1,54.5
	step
		talk Nordu##41381
		turnin Firefight##25842 |goto 27.4,55.6
		accept Aessina's Miracle##25372 |goto 27.4,55.6
	step
		talk Arch Druid Hamuul Runetotem##39858
		turnin Aessina's Miracle##25372 |goto 19.5,37.8
]])

-----------------------
----- Frenzyheart -----
-----------------------

ZygorGuidesViewer:RegisterInclude("A_Frenzyheart_PreQuests", [[
		talk Tamara Wobblesprocket##28568
		accept The Part-time Hunter##12654 |goto Sholazar Basin 50.5,62.1
	step
		kill Pitch##28097
		collect Pitch's Remains##38703 |q 12654/1 |goto Sholazar Basin 50.5,77.3
	step
		talk Tracker Gekgek##28095
		accept Playing Along##12528 |goto Sholazar Basin 50.5,76.6
	step
		talk High-Shaman Rakjak##28082
		turnin Playing Along##12528 |goto Sholazar Basin 55,69.1
		accept The Ape Hunter's Slave##12529 |goto Sholazar Basin 55,69.1
	step
		Talk to Goregek the Gorilla Hunter who is following you
		accept Tormenting the Softknuckles##12530
	stickystart "hardmatriarch"
	step
		kill 8 Hardknuckle Forager##28098 |q 12529/1 |goto Sholazar Basin 57.5,73.3
	step
		kill 6 Hardknuckle Charger##28096 |q 12529/2 |goto Sholazar Basin 61.1,71.7
	step
	label "hardmatriarch"
		Use your Softknuckle Poker on Softknuckles |use Softknuckle Poker##38467
		|tip Softknuckles are baby gorillas.
		A Hardknuckle Matriarch will spawn eventually
		kill Hardknuckle Matriarch |q 12530/1 |goto Sholazar Basin 66.9,73.2
	step
		talk High-Shaman Rakjak##28082
		turnin The Ape Hunter's Slave##12529 |goto Sholazar Basin 55,69.1
		turnin Tormenting the Softknuckles##12530 |goto Sholazar Basin 55,69.1
		accept The Wasp Hunter's Apprentice##12533 |goto Sholazar Basin 55,69.1
	step
		talk Elder Harkek##28138
		accept The Sapphire Queen##12534 |goto Sholazar Basin 55.5,69.7
	step
		kill 6 Sapphire Hive Wasp##28086 |q 12533/1 |goto Sholazar Basin 59.6,75.8
		kill 9 Sapphire Hive Drone##28085 |q 12533/2 |goto Sholazar Basin 59.6,75.8
	step
		Go down the path |goto Sholazar Basin 59.4,79.1 < 10 |only if walking
		Follow the path down to here |goto Sholazar Basin 57.1,79.3 < 10 |only if walking
		kill Sapphire Hive Queen##28087
		collect Stinger of the Sapphire Queen##38477 |q 12534/1
	step
		Go outside |goto Sholazar Basin 55.0,69.1 < 10 |walk
		talk High-Shaman Rakjak##28082
		turnin The Wasp Hunter's Apprentice##12533
		turnin The Sapphire Queen##12534
	step
		talk Elder Harkek##28138
		accept Flown the Coop!##12532 |goto Sholazar Basin 55.5,69.7
	step
		clicknpc Chicken Escapee##28161
		|tip They are all around the village.
		collect 12 Captured Chicken##38483 |q 12532/1
	step
		talk Elder Harkek##28138
		turnin Flown the Coop!##12532 |goto Sholazar Basin 55.5,69.7
		accept The Underground Menace##12531 |goto Sholazar Basin 55.5,69.7
	step
		talk High-Shaman Rakjak##28082
		accept Mischief in the Making##12535 |goto Sholazar Basin 55,69.1
	step
		click Skyreach Crystal Formation##190500
		get 8 Skyreach Crystal Cluster##38504 |q 12535/1 |goto Sholazar Basin 56.6,84.6
	step
		kill Serfex the Reaver##28083
		collect Claw of Serfex##38473 |q 12531/1 |goto Sholazar Basin 49.8,85
	step
		talk High-Shaman Rakjak##28082
		turnin The Underground Menace##12531 |goto Sholazar Basin 55,69.1
		turnin Mischief in the Making##12535 |goto Sholazar Basin 55,69.1
		accept A Rough Ride##12536 |goto Sholazar Basin 55,69.1
	step
		talk Captive Crocolisk##28298
		Tell him "_Let's do this_".
		Travel to Mistwhisper Refuge |q 12536/1 |goto Sholazar Basin 57.3,68.4
	step
		When you jump off the crocodile:
		talk Zepik the Gorloc Hunter##28668
		turnin A Rough Ride##12536
		accept Lightning Definitely Strikes Twice##12537
		accept The Mist Isn't Listening##12538
	stickystart "mistgorlocs"
	step
		Use your Skyreach Crystal Clusters next to the stone monument |use Skyreach Crystal Clusters##38510
		|tip It's a tall rectangle stone monument.
		click Arranged Crystal Formation##190502
		Sabotage the Mistwhisper Weather Shrine |q 12537/1 |goto Sholazar Basin 45.4,37.2
	step
	label "mistgorlocs"
		kill Mistwhisper Warrior##28109+, Mistwhisper Oracle##28110+
		Kill #12# Mistwhisper Gorlocs |q 12538/1 |goto Sholazar Basin 45.5,39.8
	step
		Use Zepik's Hunting Horn if Zepik is not standing next to you: |use Zepik's Hunting Horn##38512
		talk Zepik the Gorloc Hunter##28216
		turnin Lightning Definitely Strikes Twice##12537
		turnin The Mist Isn't Listening##12538
		accept Hoofing It##12539
	step
		talk High-Shaman Rakjak##28082
		turnin Hoofing It##12539 |goto Sholazar Basin 55,69.1
		accept Just Following Orders##12540 |goto Sholazar Basin 55,69.1
	step
		talk Injured Rainspeaker Oracle##28217
		Pull it to its feet
		Kill the crocodile that spawns
		Locate the Injured Rainspeaker Oracle |q 12540/1 |goto Sholazar Basin 55.7,64.9
	step
		talk Injured Rainspeaker Oracle##28217
		turnin Just Following Orders##12540
		accept Fortunate Misunderstandings##12570
		Tell him "_I am ready to travel to your village now_".
		Escort the Injured Rainspeaker Oracle to Rainspeaker Canopy |q 12570/1 |goto Sholazar Basin 55.7,64.9
	step
		talk High-Oracle Soo-say##28027
		turnin Fortunate Misunderstandings##12570 |goto Sholazar Basin 54.6,56.3
		accept Make the Bad Snake Go Away##12571 |goto Sholazar Basin 54.6,56.3
	step
		Use Lafoo's Bug Bag if Lafoo is not standing next to you |use Lafoo's Bug Bag##38622
		talk Lafoo##28120
		accept Gods like Shiny Things##12572
	stickystart "shinycobra"
	step
		kill Venomtip##28358 |q 12571/2 |goto Sholazar Basin 57.5,52.4
		|tip He walks back and forth on this small path near the waterfall.
	step
	label "shinycobra"
		Use Lafoo's Bug Bag if Lafoo is not standing next to you: |use Lafoo's Bug Bag##38622
		Stand on top of the twinkles of light on the ground around this area
		Lafoo will dig up the treasure
		Click the random items that appear on the ground
		collect 6 Shiny Treasures##38575 |q 12572/1 |goto Sholazar Basin 52.4,53.2
		kill 10 Emperor Cobra##28011 |q 12571/1 |goto Sholazar Basin 52.4,53.2
	step
		talk High-Oracle Soo-say##28027
		turnin Make the Bad Snake Go Away##12571 |goto Sholazar Basin 54.6,56.3
		accept Making Peace##12573 |goto Sholazar Basin 54.6,56.3
		turnin Gods like Shiny Things##12572 |goto Sholazar Basin 54.6,56.3
	step
		talk Shaman Vekjik##28315
		Tell him "_I've brought an offering._"
		Extend the Peace Offering to Shaman Vekjik |q 12573/1 |goto Sholazar Basin 51.3,64.6
	step
		talk Tamara Wobblesprocket##28568
		turnin The Part-time Hunter##12654 |goto Sholazar Basin 50.5,62.1
	step
		talk High-Oracle Soo-say##28027
		turnin Making Peace##12573 |goto Sholazar Basin 54.6,56.3
		accept Back So Soon?##12574 |goto Sholazar Basin 54.6,56.3
	step
		talk Mistcaller Soo-gan##28114
		turnin Back So Soon?##12574 |goto Sholazar Basin 42.1,38.6
		accept The Lost Mistwhisper Treasure##12575 |goto Sholazar Basin 42.1,38.6
		accept Forced Hand##12576 |goto Sholazar Basin 42.1,38.6
	stickystart "frenzyspear"
	step
		kill Warlord Tartek##28105 |q 12575/1 |goto Sholazar Basin 41.3,19.8
		|tip He comes walking up on a red dragon.
	step
		click Mistwhisper Treasure##190578
		|tip It's a yellow glowing floating orb, hovering over a tree stump altar.
		collect Mistwhisper Treasure##38601 |q 12575/2 |goto Sholazar Basin 41.6,19.5
	step
	label "frenzyspear"
		kill 8 Frenzyheart Spearbearer##28080 |q 12576/1 |goto Sholazar Basin 40.4,26.4
		kill 6 Frenzyheart Scavenger##28081 |q 12576/2 |goto Sholazar Basin 40.4,26.4
	step
		talk Mistcaller Soo-gan##28114
		turnin The Lost Mistwhisper Treasure##12575 |goto Sholazar Basin 42.1,38.6
		turnin Forced Hand##12576 |goto Sholazar Basin 42.1,38.6
		accept Home Time!##12577 |goto Sholazar Basin 42.1,38.6
	step
		talk High-Oracle Soo-say##28027
		turnin Home Time!##12577 |goto Sholazar Basin 54.6,56.3
		accept The Angry Gorloc##12578 |goto Sholazar Basin 54.6,56.3
	step
		Travel to Mosswalker Village |q 12578/1 |goto Sholazar Basin 75.3,54.1
	step
		Use Moodle's Stress Ball if Moodle is not standing next to you |use Moodle's Stress Ball##38624
		talk Moodle##28122
		turnin The Angry Gorloc##12578
		accept The Mosswalker Savior##12580
		accept Lifeblood of the Mosswalker Shrine##12579
	step
		talk Mosswalker Victim##28113
		Rescue #6# Mosswalker Victims |q 12580/1 |goto Sholazar Basin 75.4,52.4
	step
		Use Moodle's Stress Ball if Moodle is not standing next to you |use Moodle's Stress Ball##38624
		talk Moodle##28122
		turnin The Mosswalker Savior##12580
	step
		click Lifeblood Shard##190702
		|tip They look like small red crystals on the ground around this area.
		collect 10 Lifeblood Shard##39063 |q 12579/1 |goto Sholazar Basin 68.9,54.6
	step
		You can also use Moodle's Stress Ball if you have it in your bags |use Moodle's Stress Ball##38624
		talk Moodle##28122
		turnin Lifeblood of the Mosswalker Shrine##12579 |goto Sholazar Basin 54.5,56.6
		accept A Hero's Burden##12581 |goto Sholazar Basin 54.5,56.6
	step
		During this next part you will fight a boss
		If you kill Jaloot during the fight, you will be able to pick up the Frenzyheart Tribe quest and vice versa
		NOTE** _You must kill Artuis Slowly if you are high level_. This will decrease your Reputation with the Oracles to Hated
		kill Jaloot##28667
		confirm
	step
		Enter the cave here
		Follow the path inside the cave up to [72.2,57.3]
		kill Artruis the Heartless##28659 |q 12581/1 |goto Sholazar Basin 70.8,58.7
		click Artruis' Phylactery##190777 |tip This will spawn after the fight
		turnin A Hero's Burden##12581
]])

ZygorGuidesViewer:RegisterInclude("A_Frenzyheart_Dailies", [[
		talk Zepik the Gorloc Hunter##28668
		accept Frenzyheart Champion##12582 |goto Sholazar Basin 72.0,57.0
		accept Return of the Lich Hunter##12692 |goto Sholazar Basin 72.0,57.0
	step
		talk Elder Harkek##28138
		turnin Return of the Lich Hunter##12692 |goto Sholazar Basin 55.4,69.6
	step
		talk Elder Harkek##28138
		accept Chicken Party!##12702
		Tell him, "_I need to find Goregek_".
		collect Goregek's Shackles##38619 |goto Sholazar Basin 55.5,69.7
	step
		talk Rejek##29043
		You will only be able to accept 1 of these 4 daily quests per day
		accept A Hero's Headgear##12758 |or |goto Sholazar Basin 55.7,69.5
		accept Rejek: First Blood##12734 |or |goto Sholazar Basin 55.7,69.5
		accept Strength of the Tempest##12741 |or |goto Sholazar Basin 55.7,69.5
		accept The Heartblood's Strength##12732 |or |goto Sholazar Basin 55.7,69.5
	step
		talk Vekgar##29146
		You will only be able to accept 1 of these 4 daily quests per day
		accept Kartak's Rampage##12703 |or |goto Sholazar Basin 55.5,68.7
		accept Secret Strength of the Frenzyheart##12760 |or |goto Sholazar Basin 55.5,68.7
		accept Tools of War##12759 |or |goto Sholazar Basin 55.5,68.7
	step
		Use your Chicken Net on the Chicken Escapees if you cannot catch them easily |use Chicken Net##38689
		clicknpc Chicken Escapee##28161
		collect 12 Captured Chicken##38483 |q 12702/1
		only if haveq(12702)
	step
		kill Venture Co. Ruffian##28124+, Venture Co. Excavator##28123+
		collect Venture Co. Explosives##39651 |c |goto Sholazar Basin 33.1,47.3
	step
		kill Stormwatcher##28877+
		Use your Venture Co. Explosives on a Stormwatcher's corpse |use Venture Co. Explosives##39651
		click Stormwatcher's Head##191179
		collect Stormwatcher's Head##39667 |q 12758/1 |goto Sholazar Basin 26.0,35.4
		only if haveq(12758)
	step
		kill Hardknuckle Charger##28096+
		Use Rejek's Blade on a Hardknuckle Charger's corpse |use Rejek's Blade##39577
		Blood your Blade on a Hardknuckle Charger |q 12734/2 |goto Sholazar Basin 59.7,70.9
		only if haveq(12734)
	step
		kill Sapphire Hive Wasp##28086+
		Use Rejek's Blade on a Sapphire Hive Wasp's corpse |use Rejek's Blade##39577
		Blood your Blade on a Sapphire Hive Wasp |q 12734/1 |goto Sholazar Basin 59.3,75.7
		only if haveq(12734)
	step
		kill Mistwhisper Warrior##28109+, Mistwhisper Oracle##28110+
		Use Rejek's Blade on 3 Mistwhisper mob's corpse |use Rejek's Blade##39577
		Blood your Blade on #3# Mistwhisper Members |q 12734/3 |goto Sholazar Basin 43.1,40.4
		only if haveq(12734)
	step
		kill Aqueous Spirit##28862+
		collect 3 Essence of the Monsoon##39616 |c |goto Sholazar Basin 26.5,35.1
		kill Storm Revenant##28858+
		collect 3 Essence of the Storm##39643 |c |goto Sholazar Basin 26.5,35.1
		only if haveq(12741)
	step
		Stand right up next to the tall stone altar
		|tip You may even need to rub against, or stand next to it so that you are touching it.
		Feel the True Power of the Tempest |q 12741/1 |goto Sholazar Basin 22.4,33.8
		only if haveq(12741)
	step
		kill Goretalon Matriarch##29044 |tip It looks like a white eagle perched up on a hill, next to a nest with 1 egg in it.
		collect Matriarch's Heartblood##39573 |c |goto Sholazar Basin 59.7,23.9
		only if haveq(12732)
	step
		Use Rejek's Vial while standing in the water at the top of the Suntouched Pillar |use Rejek's Vial##39574
		collect Suntouched Water##39576 |n
		Click the Suntouched Water in your bags |use Suntouched Water##39576
		collect Suntouched Heartblood##39575 |q 12732/1 |goto Sholazar Basin 33.8,52.1
		only if haveq(12732)
	step
		kill Sparktouched Warrior##28111+, Sparktouched Oracle##28112+
		collect Oracle Blood##39265 |c |goto Sholazar Basin 31.6,69.5
		only if haveq(12703)
	step
		Use your Oracle Blood next to the Altar of Kartak |use Oracle Blood##39265
		|tip The Altar of Kartak has a big skull on top of it, with long curved horns. There are 3 small fires at the base of the altar, also.
		Take Control of Kartak |invehicle |c |goto Sholazar Basin 23.3,83.0
		only if haveq(12703)
	step
		Use Kartak's abilities to kill Oracle mobs around this area
		kill Sparktouched Oracle##28112+, Sparktouched Warrior##28111+
		Kill #50# Sparktouched Gorlocs |q 12703/1 |goto Sholazar Basin 30.7,78.0
		only if haveq(12703)
	step
		Drink the Secret Strength of the Frenzyheart in your bags |use Secret Strength of the Frenzyheart##39737
		kill Sparktouched Warrior##28111+, Sparktouched Oracle##28112+
		Kill #30# Sparktouched Gorlocs |q 12760/1 |goto Sholazar Basin 30.1,70.7
		only if haveq(12760)
	step
		click Zepik's Trap Stash##191210
		collect Spike Bomb##39697 |c |goto Sholazar Basin 24.0,83.1
		collect Ensnaring Trap##39695 |c |goto Sholazar Basin 24.0,83.1
		collect Volatile Trap##39696 |c |goto Sholazar Basin 24.0,83.1
		only if haveq(12759)
	step
		Use your Spike Bomb |use Spike Bomb##39697
		Use your Ensnaring Trap |use Ensnaring Trap##39695
		Use your Volatile Trap |use Volatile Trap##39696
		Use your traps near Oracles mobs around this area
		kill Sparktouched Warrior##28111+, Sparktouched Oracle##28112+
		Kill #50# Sparktouched Gorlocs |q 12759/1 |goto Sholazar Basin 28.4,76.1
		only if haveq(12759)
	step
		talk Shaman Jakjek##28106
		turnin Kartak's Rampage##12703 |goto Sholazar Basin 23.4,83.3 |only if haveq(12703)
		turnin Secret Strength of the Frenzyheart##12760 |goto Sholazar Basin 23.4,83.3 |only if haveq(12760)
		turnin Tools of War##12759 |goto Sholazar Basin 23.4,83.3 |only if haveq(12759)
	step
		talk Elder Harkek##28138
		turnin Chicken Party!##12702 |goto Sholazar Basin 55.5,69.7 |only if haveq(12702)
	step
		talk Rejek##29043
		turnin A Hero's Headgear##12758 |goto Sholazar Basin 55.7,69.5 |only if haveq(12758)
		turnin Rejek: First Blood##12734 |goto Sholazar Basin 55.7,69.5 |only if haveq(12734)
		turnin Strength of the Tempest##12741 |goto Sholazar Basin 55.7,69.5 |only if haveq(12741)
		turnin The Heartblood's Strength##12732 |goto Sholazar Basin 55.7,69.5 |only if haveq(12732)
]])

-----------------------------
----- Sha'tari Skyguard -----
-----------------------------

-------------------------
----- Sons of Hodir -----
-------------------------

ZygorGuidesViewer:RegisterInclude("Hodir_Quests",[[
		talk Jeer Sparksocket##29431
		turnin Luxurious Getaway!##12853 |goto The Storm Peaks 41,86.4
		accept Clean Up##12818 |goto The Storm Peaks 41,86.4
	step
		talk Smilin' Slirk Brassknob##29904
		home K3 |goto The Storm Peaks 41.1,85.9
	step
		talk Gretchen Fizzlespark##29473
		|tip She's inside the inn.
		accept They Took Our Men!##12843 |goto 41.1,86.1
		accept Equipment Recovery##12844 |goto 41.1,86.1
	step
		talk Ricket##29428
		accept Reclaimed Rations##12827 |goto 40.9,85.3
		accept Expression of Gratitude##12836 |goto 40.9,85.3
	step
		talk Skizzle Slickslide##29721
		fpath K3 |goto 40.8,84.5
	stickystart "gnollration"
	stickystart "charredwreck"
	step
		kill 1 Gnarlhide |q 12836/1 |goto 30.3,85.7
		|tip Standing in front of a tent.
	step
	label "charredwreck"
		Click the Charred Wreckage
		|tip They look like various metal parts on the ground around this area.
		collect 10 Charred Wreckage##40603 |q 12818/1 |goto 39.8,86.4
	step
	label "gnollration"
		kill Savage Hill gnolls |n
		Click Dried Gnoll Rations crates
		|tip The Dried Gnoll Rations crates look like wooden boxes sitting on the ground around this area.
		collect 16 Dried Gnoll Rations##40645 |q 12827/1 |goto 35,83.8
	step
		talk Jeer Sparksocket##29431
		turnin Clean Up##12818 |goto 41,86.4
		accept Just Around the Corner##12819 |goto 41,86.4
	step
		talk Ricket##29428
		turnin Reclaimed Rations##12827 |goto 40.9,85.3
		turnin Expression of Gratitude##12836 |goto 40.9,85.3
		accept Ample Inspiration##12828 |goto 40.9,85.3
	step
		click Sparksocket's Tools##191519
		collect Sparksocket's Tools##40642 |q 12819/1 |goto 35.1,87.8
	step
		talk Jeer Sparksocket##29431
		turnin Just Around the Corner##12819 |goto 41,86.4
		accept Slightly Unstable##12826 |goto 41,86.4
	step
		talk Ricket##29428
		turnin Slightly Unstable##12826 |goto 40.9,85.3
		accept A Delicate Touch##12820 |goto 40.9,85.3
	step
		Use your Improved Land Mines to place mines on the ground close to each other |use Improved Land Mines##40676
		|tip Garm Invaders and Snowblind Followers will run over the mines and die.
		kill 12 Garm Attackers |q 12820/1 |goto 43.1,81.2
	step
		talk Tore Rumblewrench##29430
		accept Moving In##12829 |goto 41.7,80
		accept Ore Repossession##12830 |goto 41.7,80
	step
		click the U.D.E.D. Dispenser##191553
		Retrieve a bomb from the dispenser
		collect U.D.E.D.##40686 |q 12828 |goto 41.7,80
	step
		Go to [43.9,79.0] quickly
		Use your U.D.E.D. on an Ironwool Mammoth |use U.D.E.D.##40686
		|tip They walk around this area spread out.
		click  Mammoth Meat##191567
		collect 8 Hearty Mammoth Meat##40728|q 12828/1
	step
		Go into the cave |goto 40.4,77.8 < 10 |walk
		kill 12 Crystalweb Spider##29412 |q 12829/1
	step
		talk Injured Goblin Miner##29434
		accept Only Partly Forgotten##12831 |goto 41.5,74.9
	step
		kill Icetip Crawler##29461
		collect 1 Icetip Venom Sac##40944 |q 12831/1 |goto 47.1,72.3
	step
		kill Snowblind Diggers##29413 |n
		collect 5 Impure Saronite Ore##40744 |q 12830/1 |goto 44,75.9
	step
		talk Injured Goblin Miner##29434
		turnin Only Partly Forgotten##12831 |goto 43.5,75.2
		accept Bitter Departure##12832 |goto 43.5,75.2
	step
		talk Injured Goblin Miner##29434
		Tell the miner you're ready
		Escort the Injured Goblin Miner to K3 |q 12832/1 |goto 43.5,75.2
	step
		kill Sifreldar Storm Maiden##29323+ |n
		collect 5 Cold Iron Key##40641 | n
		click Rusty Cage##191544
		Free 5 Goblin Prisoners |q 12843/1 |goto 39.8,73.3
		click K3 Equipment##191568
		collect 8 K3 Equipment##40726 |q 12844/1 |goto 39.8,73.3
	step
		talk Tore Rumblewrench##29430
		turnin Moving In##12829 |goto 41.7,80
		turnin Ore Repossession##12830 |goto 41.7,80
	step
		talk Ricket##29428
		turnin A Delicate Touch##12820 |goto 40.9,85.3
		turnin Ample Inspiration##12828 |goto 40.9,85.3
		turnin Bitter Departure##12832 |goto 40.9,85.3
		accept Cell Block Tango##12821 |goto 40.9,85.3
	step
		talk Gretchen Fizzlespark##29473
		turnin They Took Our Men!##12843 |goto 41.1,86.1
		accept Leave No Goblin Behind##12846 |goto 41.1,86.1
		turnin Equipment Recovery##12844 |goto 41.1,86.1
	step
		click Transporter Power Cell##191576
		collect Transporter Power Cell##40731 |q 12821/2 |goto 45.1,82.4
	step
		Use your Transporter Power Cell next to the Teleportation Pad |use Transporter Power Cell##40731
		|tip It looks like a tall machine with a fan in the bottom of it.
		Activate the Garm Teleporter |q 12821/1 |goto 50.7,81.9
	step
		talk Ricket##29428
		turnin Cell Block Tango##12821 |goto 40.9,85.3
		accept Know No Fear##12822 |goto 40.9,85.3
	step
		talk Gino##29432
		accept A Flawless Plan##12823 |goto 50.0,81.8
	step
		Use your Hardpacked Explosive Bundle next to Frostgut's Altar |use Hardpacked Explosive Bundle##41431
		|tip It's a stone altar with a bunch of melted red candles on it. Follow the path in the cave that spirals up all the way to the top of the cave to find it.
		kill Tormar Frostgut##29626 |q 12823/2 |goto 50.5,77.8
	step
		kill 6 Garm Watcher##29409+ |q 12822/1 |goto 48.1,81.9
		kill 8 Snowblind Devotee##29407+ |q 12822/2 |goto 48.1,81.9
	step
		talk Gino##29432
		turnin A Flawless Plan##12823 |goto 50.0,81.8
		accept Demolitionist Extraordinaire##12824 |goto 50.0,81.8
	step
		talk Lok'lira the Crone##29481
		turnin Leave No Goblin Behind##12846 |goto 42.8,68.9
		accept The Crone's Bargain##12841 |goto 42.8,68.9
	step
		kill Overseer Syra##29518
		collect 1 Runes of the Yrkvinn##40690 |q 12841/1 |goto 44.2,68.9
	step
		talk Lok'lira the Crone##29481
		turnin The Crone's Bargain##12841 |goto 42.8,68.9
		accept Mildred the Cruel##12905 |goto 42.8,68.9
	step
		talk Mildred the Cruel##29885
		turnin Mildred the Cruel##12905 |goto 44.4,68.9
		accept Discipline##12906 |goto 44.4,68.9
	step
		Use your Disciplining Rod on Exhausted Vrykul|use Disciplining Rod##42837
		|tip They are sitting on the ground inside these side tunnels inside this mine.
		Discipline 6 Exhausted Vrykul |q 12906/1 |goto 44.8,70.3
	step
		talk Mildred the Cruel##29885
		turnin Discipline##12906 |goto 44.4,68.9
		accept Examples to be Made##12907 |goto 44.4,68.9
	step
		kill 1 Garhal##30147 |q 12907/1 |goto 45.4,69.1
	step
		talk Mildred the Cruel##29885
		turnin Examples to be Made##12907 |goto 44.4,68.9
		accept A Certain Prisoner##12908 |goto 44.4,68.9
	step
		talk Lok'lira the Crone##29481
		turnin A Certain Prisoner##12908 |goto 42.8,68.9
		accept A Change of Scenery##12921 |goto 42.8,68.9
	step
		talk Lok'lira the Crone##29975
		turnin A Change of Scenery##12921 |goto 47.5,69.1
		accept Is That Your Goblin?##12969 |goto 47.5,69.1
	step
		talk Agnetta Tyrsdottar##30154
		Tell her to skip the warmup
		kill 1 Agnetta Tyrsdottar##30154 |q 12969/1 |goto 48.2,69.8
	step
		talk Lok'lira the Crone##29975
		turnin Is That Your Goblin?##12969 |goto 47.5,69.1
		accept The Hyldsmeet##12970 |goto 47.5,69.1
	step
		talk Lok'lira the Crone##29975
		Ask her about her proposal
		Listen to Lok'lira's proposal |q 12970/1 |goto 47.5,69.1
	step
		talk Lok'lira the Crone##29975
		turnin The Hyldsmeet##12970 |goto 47.5,69.1
		accept Taking on All Challengers##12971 |goto 47.5,69.1
	step
		talk Victorious Challenger##30012
		kill 6 Victorious Challenger##30012+ |q 12971/1 |goto 51,66.4
	step
		talk Lok'lira the Crone##29975
		turnin Taking on All Challengers##12971 |goto 47.5,69.1
		accept You'll Need a Bear##12972 |goto 47.5,69.1
	step
		talk Iva the Vengeful##29997
		accept Off With Their Black Wings##12942 |goto 48.4,72.1
		accept Yulda's Folly##12968 |goto 48.4,72.1
	step
		talk Thyra Kvinnshal##30041
		accept Aberrations##12925 |goto 48.4,72.1
	step
		talk Brijana##29592
		turnin You'll Need a Bear##12972 |goto 53.1,65.7
		accept Bearly Hanging On##12851 |goto 53.1,65.7
	step
		clicknpc Icefang##29598
		While riding Icefang, use the Flaming Arrow ability on your hotbar to shoot arrows at the Frostworgs and Frost Giants |petaction Flaming Arrow
		Burn 7 Frostworgs |q 12851/1 |goto 53.1,65.7
		Burn 15 Frost Giants |q 12851/2 |goto 53.1,65.7
	step
		talk Brijana##29592
		turnin Bearly Hanging On##12851 |goto 53.1,65.7
		accept Cold Hearted##12856 |goto 53.1,65.7
	step
		clicknpc Captive Proto-Drake##29708
		Use your Ice Shard ability on the Brunnhildar Prisoners |petaction Ice Shard
		|tip The Brunnhildar Prisoners look like blue blocks of ice around this area on the ground.
		When your Proto-Drake is holding 3 Brunnhildar Prisoners, start flying toward Brunnhildar Village, the drake will eventually go on autopilot. Repeat this process 2 more times.
		Rescue 9 Brunnhildar Prisoners |q 12856/1 |goto 63.9,62.5
		Free 3 Proto-Drakes |q 12856/2 |goto 63.9,62.5
	step
		talk Brijana##29592
		turnin Cold Hearted##12856 |goto 53.1,65.7
		accept Deemed Worthy##13063 |goto 53.1,65.7
	step
		talk Astrid Bjornrittar##29839
		turnin Deemed Worthy##13063 |goto 49.7,71.8
		accept Making a Harness##12900 |goto 49.7,71.8
	step
		kill Icemane Yeti##29875+ |n
		collect 3 Icemane Yeti Hide##41424 |q 12900/1 |goto 47.9,74.7
	step
		talk Astrid Bjornrittar##29839
		turnin Making a Harness##12900 |goto 49.7,71.8
		accept The Last of Her Kind##12983 |goto 49.7,71.8
		accept The Slithering Darkness##12989 |goto 49.7,71.8
	step
		Kill 8 Ravenous Jormungar##29605+ |q 12989/1 |goto 55.8,63.9
		|tip They are inside the cave.
	step
		clicknpc Injured Icemaw Matriarch##29563
		The bear runs back to Brunnhildar Village
		Rescue the Icemaw Matriarch |q 12983/1 |goto 54.8,60.4
	step
		talk Astrid Bjornrittar##29839
		turnin The Last of Her Kind##12983 |goto 49.7,71.8
		accept The Warm-Up##12996 |goto 49.7,71.8
		turnin The Slithering Darkness##12989 |goto 49.7,71.8
	step
		Use your Reins of the Warbear Matriarch outside the building to ride a bear |invehicle |c |use Reins of the Warbear Matriarch##42481
	step
		Use the abilities on your hotbar to fight Kirgaraak
		|tip He's a big white yeti.
		Defeat Kirgaraak |q 12996/1 |goto 50.8,67.7
	step
		Click the red arrow to get off the bear |script VehicleExit() |outvehicle |c
	step
		talk Astrid Bjornrittar##29839
		turnin The Warm-Up##12996 |goto 49.7,71.8
		accept Into the Pit##12997 |goto 49.7,71.8
	step
		Use your Reins of the Warbear Matriarch inside The Pit of the Fang to ride a bear |use Reins of the Warbear Matriarch##42499
		Use the abilities on your hotbar to fight Hyldsmeet Warbears
		kill 6 Hyldsmeet Warbear##30174+ |q 12997/1 |goto 49.1,69.4
	step
		Click the red arrow to get off the bear |script VehicleExit() |outvehicle |c
	step
		talk Astrid Bjornrittar##29839
		turnin Into the Pit##12997 |goto 49.7,71.8
		accept Prepare for Glory##13061 |goto 49.7,71.8
	step
		talk Lok'lira the Crone##29975
		turnin Prepare for Glory##13061 |goto 47.5,69.1
		accept Lok'lira's Parting Gift##13062 |goto 47.5,69.1
	step
		talk Gretta the Arbiter##29796
		turnin Lok'lira's Parting Gift##13062 |goto 50.9,65.6
		accept The Drakkensryd##12886 |goto 50.9,65.6
	step
		You fly off on a drake and start flying in circles around a tower:
		Use your Hyldnir Harpoon in your bags on Hyldsmeet Proto-Drakes to harpoon over to a new drake |use Hyldnir Harpoon##41058
		kill Hyldsmeet Drakerider##29694+ |n
		Repeat this process 9 more times
		Defeat 10 Hyldsmeet Drakeriders |q 12886/1
	step
		They look like light fixtures on the side of the stone columns
		Use your Hyldnir Harpoon in your bags on a Column Ornament to get off the drake |outvehicle |c |use Hyldnir Harpoon##41058
	step
		talk Thorim##29445
		turnin The Drakkensryd##12886 |goto 33.4,58
		accept Sibling Rivalry##13064 |goto 33.4,58
	step
		talk Thorim##29445
		Ask him what became of Sif
		Hear Thorim's History |q 13064/1 |goto 33.4,58
	step
		talk Thorim##29445
		turnin Sibling Rivalry##13064 |goto 33.4,58
		accept Mending Fences##12915 |goto 33.4,58
	step
		kill 12 Nascent Val'kyr##29570+ |q 12942/1
		kill Valkyrion Aspirant##29569+ |n
		collect 6 Vial of Frost Oil##41612 |q 12925 |goto 27.3,63.7
	step
		Use your Vials of Frost Oil on the Plagued Proto-Drake Eggs |use Vial of Frost Oil##41612
		|tip They look like brown spiked eggs sitting in the yellow water around this area.
		Try to get 6 at a time
		Destroy 30 Plagued Proto-Drake Eggs |q 12925/1 |goto 23.7,58.3
	step
		kill Yulda the Stormspeaker##30046 |q 12968/1
		click Harpoon Crate##192072
		accept Valkyrion Must Burn##12953 |goto 24,61.8
	step
		clicknpc Valkyrion Harpoon Gun##30066
		Use the Flaming Harpoon ability on your hotbar to shoot the tan bundles of straw near buildings and in wagons around this area |petaction Flaming Harpoon
		Start 6 Fires |q 12953/1 |goto 26,59.8
	step
		Click the red arrow to get off the gun |script VehicleExit() |outvehicle |c
	step
		talk Ricket##29428
		turnin Demolitionist Extraordinaire##12824 |goto The Storm Peaks 40.9,85.3
		turnin Know No Fear##12822 |goto The Storm Peaks 40.9,85.3
		accept Overstock##12833 |goto The Storm Peaks 40.9,85.3
	step
		Use your Improved Land Mines to place mines on the ground close to each other |use Improved Land Mines##40676
		|tip Garm Invaders and Snowblind Followers will run over the mines and die.
		kill 12 Garm Invader |q 12833/1 |goto 43.1,81.2
	step
		talk Ricket##29428
		turnin Overstock##12833 |goto 40.9,85.3
	step
		talk Thyra Kvinnshal##30041
		turnin Aberrations##12925 |goto 48.4,72.1
	step
		talk Iva the Vengeful##29997
		turnin Off With Their Black Wings##12942 |goto 48.4,72.1
		turnin Yulda's Folly##12968 |goto 48.4,72.1
		turnin Valkyrion Must Burn##12953 |goto 48.4,72.1
	step
		click Granite Boulder##191815
		Use Thorim's Charm of Earth on the Stormforged Iron Giants |use Thorim's Charm of Earth##41505
		Help the dwarves kill them
		kill 5 Stormforged Iron Giant##29375+  |q 12915/2 |goto 75.8,63
		collect Slag Covered Metal##41556 |q 12922 |future |n
		use Slag Covered Metal##41556
		accept The Refiner's Fire##12922
	step
		kill Seething Revenant##29504+
		collect 10 Furious Spark##41558 |q 12922/1 |goto 75.4,63.5
	step
		click Granite Boulder##191815
		Use Thorim's Charm of Earth on Fjorn |use Thorim's Charm of Earth##41505
		|tip He's a huge fire giant, holding a huge smithing hammer.
		Help the dwarves kill him
		kill Fjorn##29503 |q 12915/1 |goto 77.2,62.9
	step
		click Fjorn's Anvil##192071
		turnin The Refiner's Fire##12922 |goto 77.2,62.9
		accept A Spark of Hope##12956 |goto 77.2,62.9
	step
		talk Thorim##29445
		turnin A Spark of Hope##12956 |goto 33.4,58
		turnin Mending Fences##12915 |goto 33.4,58
		accept Forging an Alliance##12924 |goto 33.4,58
	step
		talk Halvdan##32571 |goto 62.6,60.9
		fpath Dun Niffelem
	step
		talk King Jokkum##30105
		accept You Can't Miss Him##12966 |goto 65.4,60.2
	step
		talk Njormeld##30099
		turnin You Can't Miss Him##12966 |goto 75.4,63.6
		accept Battling the Elements##12967 |goto 75.4,63.6
	step
		goto 75.7,63.9
		clicknpc Snorri##30123 |invehicle |c
	step
		Use the Gather Snow ability on your hotbar to gather snow from Snowdrifts |petaction Gather Snow
		|tip The Snowdrifts look like piles of snow on the ground.
		Use the Throw Snowball ability on your hotbar to throw the snow at Seething Revenants |petaction Throw Snowball
		kill 10 Seething Revenant##30120+ |q 12967/1 |goto 76.7,63.4
	step
		Click the red arrow on your hotbar to leave Snorri |script VehicleExit() |outvehicle |c
	step
		talk Njormeld##30099
		turnin Battling the Elements##12967 |goto 75.4,63.6
	step
		talk Njormeld##30127
		turnin Forging an Alliance##12924 |goto 63.2,63.2
		accept A New Beginning##13009 |goto 63.2,63.2
	step
		click Fjorn's Anvil##192071
		accept Hot and Cold##12981 |goto 63.2,62.9
	step
		talk King Jokkum##30105
		accept In Memoriam##12975 |goto 65.4,60.2
	step
		kill Brittle Revenant##30160+ |n
		collect 6 Essence of Ice##42246 |q 12981 |goto 69.7,60.2
	step
		Use your Essences of Ice next to Smoldering Scraps |use Essence of Ice##42246
		click  Frozen Iron Scrap##192127
		collect 6 Frozen Iron Scrap##42252 |q 12981/1 |goto 75.3,62.8
	step
		click Horn Fragment##192082
		collect 8 Horn Fragment##42162 |q 12975/1 |goto 72.1,49.4
	step
		talk King Jokkum##30105
		turnin In Memoriam##12975 |goto 65.4,60.2
		accept A Monument to the Fallen##12976 |goto 65.4,60.2
	step
		talk Njormeld##30127
		turnin A Monument to the Fallen##12976 |goto 63.2,63.2
	step
		click Fjorn's Anvil##192071
		turnin Hot and Cold##12981 |goto 63.2,62.9
	step
		click Hodir's Horn##192078
		accept Hodir's Call##12977 |goto 64.1,65.1
	step
		kill Niffelem Forefather##29974+, Restless Frostborn Ghost##30144+ |n
		Use Hodir's Horn on their corpses |use Hodir's Horn##42164
		Free 5 Niffelem Forefathers |q 12977/1 |goto 72.1,51.8
		Free 5 Restless Frostborn |q 12977/2 |goto 72.1,51.8
	step
		click Hodir's Horn##192078
		turnin Hodir's Call##12977 |goto 64.1,65.1
	step
		talk Njormeld##30127
		accept Forging a Head##12985 |goto 63.2,63.2
	step
		talk King Jokkum##30105
		accept Culling Jorcuttar##13011 |goto 65.4,60.2
	step
		Use your Diamond Tipped Pick on Dead Iron Giants |use Diamond Tipped Pick##42424
		kill Stormforged Ambusher##30208+ |n
		collect 8 Stormforged Eye##42423 |q 12985/1 |goto 69.7,58.9
	step
		talk Njormeld##30127
		turnin Forging a Head##12985 |goto 63.2,63.2
		accept Placing Hodir's Helm##12987 |goto 63.2,63.2
	step
		Fly to the tip of this ice spike
		Use the Tablets of Pronouncement in your bags |use Tablets of Pronouncement##42442
		Mount Hodir's Helm |q 12987/1 |goto 64.3,59.2
	step
		talk Njormeld##30127
		turnin Placing Hodir's Helm##12987 |goto 63.2,63.2
	step
		click Hodir's Helm##192080
		accept A Viscious Cleaning##13006 |goto 64.2,59.2
	step
		kill Viscous Oil##30325+ |n
		collect 5 Viscous Oil##42640 |q 13006/1 |goto 55.6,63.4
		Use your Everfrost Razor on Dead Icemaw Bears |use Everfrost Razor##42732
		collect 1 Icemaw Bear Flank##42733 |q 13011 |goto 55.6,63.4
	step
		Follow the path inside the cave to this spot
		Use your Icemaw Bear Flank while standing on the small frozen pond with a bunch of rocks on it |use Icemaw Bear Flank##42733
		kill 1 Jorcuttar##30340 |q 13011/1 |goto 54.7,60.8
	step
		talk Thorim##29445
		turnin A New Beginning##13009 |goto 33.4,58
		accept Veranus##13050 |goto 33.4,58
	step
		click Small Proto-Drake Egg##192536
		collect 5 Small Proto-Drake Egg##42784 |q 13050/1 |goto 43.7,67.4
		You can find more Small Proto-Drake Eggs at [45.2,66.9] |n
	step
		talk Thorim##29445
		turnin Veranus##13050 |goto 33.4,58
		accept Territorial Trespass##13051 |goto 33.4,58
	step
		Stand in this big nest
		use the Stolen Proto-Dragon Eggs in your bags|use Stolen Proto-Dragon Eggs##42797
		Lure Veranus |q 13051/1 |goto 38.7,65.6
	step
		talk Thorim##29445
		turnin Territorial Trespass##13051 |goto 33.4,58
		accept Krolmir, Hammer of Storms##13010 |goto 33.4,58
	step
		click Hodir's Helm##192080
		turnin A Viscious Cleaning##13006 |goto 64.2,59.2
	step
		talk King Jokkum##30105
		turnin Culling Jorcuttar##13011 |goto 65.4,60.2
	step
		talk King Jokkum##30105
		Ask him what has become of Krolmir
		Discover Krolmir's Fate |q 13010/1 |goto 65.4,60.2
	step
		talk Thorim##30390
		turnin Krolmir, Hammer of Storms##13010 |goto 71.4,48.8
		accept The Terrace of the Makers##13057 |goto 71.4,48.8
	step
		talk Thorim##30295
		turnin The Terrace of the Makers##13057 |goto 56.3,51.4
		accept The Earthen Oath##13005 |goto 56.3,51.4
		accept Loken's Lackeys##13035 |goto 56.3,51.4
	step
		Use your Horn of the Peaks to summon earthen helpers |use Horn of the Peaks##42840
		Fight mobs around this area
		kill 7 Iron Sentinel##29984+ |q 13005/1 |goto 57.3,46.7
		kill 20 Iron Dwarf Assailant##29978+ |q 13005/2 |goto 57.3,46.7
	step
		Use your Horn of the Peaks to summon earthen helpers |use Horn of the Peaks##42840
		kill Eisenfaust##30341 |q 13035/1 |goto 55.3,43.3
	step
		Use your Horn of the Peaks to summon earthen helpers |use Horn of the Peaks##42840
		kill Halefnir the Windborn##30376 |q 13035/2 |goto 48.6,45.6
	step
		Use your Horn of the Peaks to summon earthen helpers |use Horn of the Peaks##42840
		kill Duronn the Runewrought##30353 |q 13035/3 |goto 45,38.1
	step
		talk Thorim##30295
		turnin The Earthen Oath##13005 |goto 56.3,51.4
		turnin Loken's Lackeys##13035 |goto 56.3,51.4
		accept The Reckoning##13047 |goto 56.3,51.4
	step
		talk Thorim##30399
		Tell him you are with him
		Witness the Reckoning |q 13047/1 |goto 35.9,31.5
	step
		talk King Jokkum##30105
		turnin The Reckoning##13047 |goto 65.4,60.2
	step
		talk Ricket##29428
		accept When All Else Fails##12862 |goto 40.9,85.3
	step
		talk Ricket##29428 |goto 40.9,85.3
		Tell her you are ready to head further into Storm Peaks
		You will fly to Frosthold |goto 28.6,74.6 < 10 |noway |c
	step
		talk Faldorf Bitterchill##29750
		fpath Frosthold |goto 29.5,74.3
	step
		talk Archaeologist Andorin##29650
		accept On Brann's Trail##12854 |goto 29.5,74.1
	step
		talk Lagnus##29743
		accept Offering Thanks##12863 |goto 29.4,73.8
	step
		talk Rork Sharpchin##29744
		turnin When All Else Fails##12862 |goto 28.8,74.1
		accept Ancient Relics##12870 |goto 28.8,74.1
	step
		talk Gunda Boldhammer##29926
		home Frosthold |goto The Storm Peaks 28.7,74.4
	step
		talk Glorthal Stiffbeard##29727
		turnin Offering Thanks##12863 |goto 29.2,74.9
		accept Missing Scouts##12864 |goto 29.2,74.9
	step
		talk Fjorlin Frostbrow##29732
		accept Loyal Companions##12865 |goto 29.8,75.7
	step
		talk Frostborn Scout##29811
		Ask him if he is okay
		Locate the Missing Scout |q 12864/1 |goto 36.4,77.3
	step
		kill Vrykuls |n
		Get 10 Relics of Ulduar |q 12870/1 |goto 46.5,68.3
	step
		kill Ice Steppe Rhino##29469+, Ice Steppe Bull##30445+ |n
		collect 8 Fresh Ice Rhino Meat##41340 |q 12865 |goto 44.5,60.4
	step
		click Disturbed Snow##191708
		collect Burlap-Wrapped Note##40947 |q 12854/1 |goto 36.1,64.1
	step
		Use your Fresh Ice Rhino Meat on Stormcrest Eagles at the top of this mountain |use Fresh Ice Rhino Meat##41340
		Feed 8 Stormcrest Eagles |q 12865/1 |goto 33.2,73.7
	step
		talk Archaeologist Andorin##29650
		turnin On Brann's Trail##12854 |goto 29.5,74.1
		accept Sniffing Out the Perpetrator##12855 |goto 29.5,74.1
	step
		talk Rork Sharpchin##29744
		turnin Ancient Relics##12870 |goto 28.8,74.1
	step
		talk Glorthal Stiffbeard##29727
		turnin Missing Scouts##12864 |goto 29.2,74.9
		accept Stemming the Aggressors##12866 |goto 29.2,74.9
	step
		talk Fjorlin Frostbrow##29732
		turnin Loyal Companions##12865 |goto 29.8,75.7
		accept Baby Stealers##12867 |goto 29.8,75.7
	step
		click Eagle Egg##244841
		collect 15 Stormcrest Eagle Egg##41341 |q 12867/1 |goto 33,66.8
		kill 8 Frostfeather Screecher##29792+ |q 12866/1 |goto 33,66.8
		kill 8 Frostfeather Witch##29793+ |q 12866/2 |goto 33,66.8
	step
		Use the Frosthound's Collar in your bags next to this broken down tent |use Frosthound's Collar##41430
		Use the abilities on your hotbar to keep the dwarves away from you
		Track down the thief |q 12855/1 |goto 36.4,64.1
	step
		kill Tracker Thulin##29695 |q 12855/2 |goto 48.5,60.8
		collect Brann's Communicator##40971 |q 12871 |goto 48.5,60.8
	step
		Use Brann's Communicator in your bags |use Brann's Communicator##40971
		talk Brann Bronzebeard##29579
		turnin Sniffing Out the Perpetrator##12855
		accept Pieces to the Puzzle##12858
	step
		kill Library Guardian##29724 |n
		collect 6 Inventor's Disk Fragment##41130 |n
		Click the Inventor's Disk Fragments in your bags to combine them |use Inventor's Disk Fragment##41130
		collect The Inventor's Disk##41132 |q 12858/1 |goto 37.6,43.5
	step
		Use Brann's Communicator in your bags |use Brann's Communicator##40971
		talk Brann Bronzebeard##29579
		turnin Pieces to the Puzzle##12858
		accept Data Mining##12860
	step
		Use The Inventor's Disk on Databanks |use The Inventor's Disk##41179
		|tip They look like floating round star things.
		Gather 7 Hidden Data |q 12860/1 |goto 38.5,44.2
	step
		Use Brann's Communicator in your bags |use Brann's Communicator##40971
		talk Brann Bronzebeard##29579
		turnin Data Mining##12860
		accept The Library Console##13415
	step
		click Inventor's Library Console##191760
		turnin The Library Console##13415 |goto 37.4,46.8
		accept Norgannon's Shell##12872 |goto 37.4,46.8
	step
		Click the Charged Disk in your bags |use Charged Disk##44704
		kill Archivist Mechaton##29775
		collect Norgannon's Shell##41258 |q 12872/1
	step
		Use Brann's Communicator in your bags |use Brann's Communicator##40971
		talk Brann Bronzebeard##29579
		turnin Norgannon's Shell##12872
		accept Aid from the Explorers' League##12871
		accept The Exiles of Ulduar##12885
	step
		talk Breck Rockbrow##29950
		fpath Bouldercrag's Refuge |goto 30.6,36.3
	step
		talk Bouldercrag the Rockshaper##29801
		turnin The Exiles of Ulduar##12885 |goto 31.4,38.1
		accept Rare Earth##12930 |goto 31.4,38.1
	step
		talk Lagnus##29743
		turnin Aid from the Explorers' League##12871 |goto The Storm Peaks 29.4,73.8
		accept The Frostborn King##12873 |goto The Storm Peaks 29.4,73.8
	step
		talk Glorthal Stiffbeard##29727
		turnin Stemming the Aggressors##12866 |goto 29.2,74.9
	step
		talk Fjorlin Frostbrow##29732
		turnin Baby Stealers##12867 |goto 29.8,75.7
	step
		talk Yorg Stormheart##29593
		turnin The Frostborn King##12873 |goto 30.31,74.8
		accept Fervor of the Frostborn##12874 |goto 30.31,74.8
	step
		talk Fjorlin Frostbrow##29732 |goto 29.8,75.7
		Tell him you are ready for your test |goto The Storm Peaks 53.5,35.1 < 10 |c
	step
		click Battered Storm Hammer##192243
		collect Battered Storm Hammer##42624 |q 12874 |goto 53.6,35.1
	step
		Use your Battered Storm Hammer on The Iron Watcher repeatedly |use Battered Storm Hammer##42624
		While he is stunned, run away so the Hammer can recharge
		When his health is low enough, he will run to the end of the bridge. Throw your hammer one last time and he will fall off
		kill The Iron Watcher##30142 |q 12874/1 |goto 53.5,37.9
	step
		talk Yorg Stormheart##29593
		turnin Fervor of the Frostborn##12874 |goto 30.31,74.8
		accept An Experienced Guide##12875 |goto 30.31,74.8
	step
		talk Fjorlin Frostbrow##29732
		accept Unwelcome Guests##12876 |goto 29.8,75.7
	step
		Go up the path |goto The Storm Peaks 27.0,66.9 < 10 |only if walking
		kill 10 Stormforged Invaders |q 12876/1
		kill Stormforged Pillager##29586+, Stormforged Loreseeker##29843+
		collect 5 Frostweave Cloth##33470 |q 12930/2 |goto 26.3,66.7
	step
		talk Drom Frostgrip##29751
		turnin An Experienced Guide##12875 |goto 25.2,68.5
		accept The Lonesome Watcher##12877 |goto 25.2,68.5
	step
		kill the Stormforged Monitor##29862
		collect Frostgrip's Signet Ring##41393 |q 12877/1 |goto 27.1,67.3
	step
		talk Creteus##30052
		turnin The Lonesome Watcher##12877 |goto 39.6,59.8
		accept Fate of the Titans##12986 |goto 39.6,59.8
	step
		Use Creteus's Mobile Databank at the top of this temple |use Creteus's Mobile Databank##42679
		Investigate the Temple of Winter |q 12986/2 |goto 52.6,56.9
	step
		Use Creteus's Mobile Databank in this broken temple |use Creteus's Mobile Databank##42679
		Investigate the Temple of Life |q 12986/3 |goto 64.3,46.7
	step
		Use Creteus's Mobile Databank Databank at the top of this temple |use Creteus's Mobile Databank##42679
		Investigate the Temple of Order |q 12986/4 |goto 53.5,42.3
	step
		Use Creteus's Mobile Databank Databank at the top of this temple |use Creteus's Mobile Databank##42679
		Investigate the Temple of Invention |q 12986/1 |goto 45.6,49.2
	step
		talk Creteus##30052
		turnin Fate of the Titans##12986 |goto 39.6,59.8
		accept The Hidden Relic##12878 |goto 39.6,59.8
	step
		Follow the path |goto The Storm Peaks 41.5,62.1 < 10 |only if walking
		click The Guardian's Charge##192076
		turnin The Hidden Relic##12878 |goto 44.5,64.5
		accept Fury of the Frostborn King##12879 |goto 44.5,64.5
	step
		talk Creteus##30082
		turnin Fury of the Frostborn King##12879 |goto 38.2,61.7
		accept The Master Explorer##12880 |goto 38.2,61.7
	step
		talk Brann Bronzebeard##30382
		turnin The Master Explorer##12880 |goto 39.6,56.4
		accept The Brothers Bronzebeard##12973 |goto 39.6,56.4
	step
		clicknpc Brann's Flying Machine##34120
		kill the dwarves that jump on the plane as you fly |n
		Accompany Brann Bronzebeard to Frosthold |q 12973/1
	step
		talk Velog Icebellow##30401
		turnin The Brothers Bronzebeard##12973 |goto 30.3,74.8
	step
		talk Fjorlin Frostbrow##29732
		turnin Unwelcome Guests##12876 |goto 29.8,75.7
		accept Pushed Too Far##12869 |goto 29.8,75.7
	step
		Use the abilities on your hotbar to fight Stormpeak Wyrms flying in the air around this area
		kill 16 Stormpeak Wyrm##29753+ |q 12869/1 |goto 44.6,59.8
	step
		Click the red arrow on your hotbar to get off the eagle |script VehicleExit()
		talk Fjorlin Frostbrow##29732
		turnin Pushed Too Far##12869 |goto 29.8,75.7
	step
		click Enchanted Earth##191845
		collect 7 Enchanted Earth##41614 |q 12930/1 |goto 28.3,29.4
	step
		talk Bouldercrag the Rockshaper##29801
		turnin Rare Earth##12930 |goto 31.4,38.1
		accept Fighting Back##12931 |goto 31.4,38.1
		accept Relief for the Fallen##12937 |goto 31.4,38.1
	step
		talk Magorn##29963 |goto The Storm Peaks 30.9,37.3
		home Bouldercrag's Refuge
	step
		kill Stormforged Raider##29377+, Stormforged Reaver##29382+
		kill 10 Stormforged Attacker |q 12931/1 |goto 28.1,36.7
		Use your Telluric Poultice on Fallen Earthen Defenders |use Telluric Poultice##41988
		Heal 8 Fallen Earthen Defenders |q 12937/1 |goto 28.1,36.7
	step
		talk Bouldercrag the Rockshaper##29801
		turnin Fighting Back##12931 |goto 31.4,38.1
		turnin Relief for the Fallen##12937 |goto 31.4,38.1
		accept Slaves of the Stormforged##12957 |goto 31.4,38.1
		accept The Dark Ore##12964 |goto 31.4,38.1
	step
		kill 3 Stormforged Taskmaster##29369+ |q 12957/2 |goto 27.5,49.7
		talk Captive Mechagnome##29384
		Attempt to free 8 Captive Mechagnomes |q 12957/1 |goto 27.5,49.7
		clicknpc Ore Cart##25986
		collect 5 Dark Ore Sample##42109 |q 12964/1 |goto 27.5,49.7
	step
		talk Bouldercrag the Rockshaper##29801
		turnin Slaves of the Stormforged##12957 |goto 31.4,38.1
		turnin The Dark Ore##12964 |goto 31.4,38.1
		accept The Gifts of Loken##12965 |goto 31.4,38.1
	step
		talk Bruor Ironbane##30152
		accept Facing the Storm##12978 |goto 31.3,38.2
	step
		kill Stormforged Champion##29370+, Stormforged Magus##29374+, Stormforged War Golem##29380+
		kill 10 Nidavelir Stormforged |q 12978/1 |goto 25,42.9
	step
		click Loken's Fury##192120
		Destroy Loken's Fury |q 12965/1 |goto 24,42.6
	step
		click Loken's Power##192121
		Destroy Loken's Power |q 12965/2 |goto 26.2,47.7
	step
		click Loken's Favor##192122
		Destroy Loken's Favor |q 12965/3 |goto 24.6,48.4
	step
		kill Stormforged War Golem##29380+, Stormforged Champion##29370+, Stormforged Magus##29374+
		kill 10 Nidavelir Stormforged |q 12978/1
		kill Stormforged War Golem##29380+
		collect 1 Dark Armor Plate##42203 |n
		Click the Dark Armor Plate in your bags |use Dark Armor Plate##42203
		accept Armor of Darkness##12979 |goto 25,42.9
	step
		kill Stormforged War Golem##29380+
		collect 4 Dark Armor Sample##42204 |q 12979/1 |goto 28.7,43.3
	step
		talk Bouldercrag the Rockshaper##29801
		turnin The Gifts of Loken##12965 |goto 31.4,38.1
	step
		talk Bruor Ironbane##30152
		turnin Facing the Storm##12978 |goto 31.3,38.2
		turnin Armor of Darkness##12979 |goto 31.3,38.2
		accept The Armor's Secrets##12980 |goto 31.3,38.2
	step
		Go up the path |goto 33.6,39.6 < 10 |only if walking
		talk Attendant Tock##30190
		Tell him you found a strange armor plate
		Investigate the Armor Plate |q 12980/1 |goto 32.0,40.7
	step
		Leave Mimir's Workshop |goto 33.6,39.6 < 10 |only if walking
		talk Bruor Ironbane##30152
		turnin The Armor's Secrets##12980 |goto 31.3,38.2
	step
		talk Bouldercrag the Rockshaper##29801
		accept Valduran the Stormborn##12984 |goto 31.4,38.1
	step
		Use Bouldercrag's War Horn inside this building near Valduran the Stormborn |use Bouldercrag's War Horn##42419
		Help fight Valduran the Stormborn
		kill Valduran the Stormborn##29368 |q 12984/1 |goto 24.4,52.1
	step
		talk Bouldercrag the Rockshaper##29801
		turnin Valduran the Stormborn##12984 |goto 31.4,38.1
		accept Destroy the Forges!##12988 |goto 31.4,38.1
	step
		talk Bruor Ironbane##30152
		accept Hit Them Where it Hurts##12991 |goto 31.3,38.2
	step
		Use Bouldercrag's Bomb next to the Lightning Forge |use Bouldercrag's Bomb##42441
		|tip The Lightning Forge looks like a big brown dwarf head with a big blue crystal on top of it.
		Damage the North Lightning Forge |q 12988/1 |goto 29.0,45.8
	step
		Use Bouldercrag's Bomb next to the Lightning Forge |use Bouldercrag's Bomb##42441
		|tip The Lightning Forge looks like a big brown dwarf head with a big blue crystal on top of it.
		Damage the Central Lightning Forge |q 12988/2 |goto 29.5,45.9
	step
		Use Bouldercrag's Bomb next to the Lightning Forge |use Bouldercrag's Bomb##42441
		|tip The Lightning Forge looks like a big brown dwarf head with a big blue crystal on top of it.
		Damage the South Lightning Forge |q 12988/3 |goto 30.2,46.1
	step
		kill 10 Stormforged Artificer##29376 |q 12991/1 |goto 30.0,46.3
	step
		talk Bouldercrag the Rockshaper##29801
		turnin Destroy the Forges!##12988 |goto 31.4,38.1
	step
		talk Bruor Ironbane##30152
		turnin Hit Them Where it Hurts##12991 |goto 31.3,38.2
	step
		talk Bouldercrag the Rockshaper##29801
		accept A Colossal Threat##12993 |goto 31.4,38.1
	step
		click Colossus Attack Specs##192171
		collect Colossus Attack Specs##42475 |q 12993/1 |goto 28.9,44.1
	step
		click Colossus Defense Specs##192172
		collect Colossus Defense Specs##42476 |q 12993/2 |goto 29.9,45.8
	step
		talk Bouldercrag the Rockshaper##29801
		turnin A Colossal Threat##12993 |goto 31.4,38.1
		accept The Heart of the Storm##12998 |goto 31.4,38.1
	step
		Go through the big round metal door |goto 32.4,63.9 < 10 |walk
		|tip It's a big metal hole on in the side of the mountain.
		click Heart of the Storm##7800
		Attempt to Secure the Heart of the Storm |q 12998/1 |goto 36.2,60.9
	step
		talk Bouldercrag the Rockshaper##29801
		turnin The Heart of the Storm##12998 |goto 31.4,38.1
		accept The Iron Colossus##13007 |goto 31.4,38.1
	step
		click Jormungar Control Orb##192262
		Start controlling a Jormungar |invehicle |c |q 13007 |goto 27.2,35.9
	step
		In order to move as the Jormungar, use the Submerge ability on your hotbar. When you want to come back up to the surface, use the Emerge ability while submerged underground.
		kill Iron Colossus##30300 |q 13007/1 |goto 27.2,42.0
		|tip In order to kill the Iron Colossus, simply spam your Jormungar Strike and Acid Breath abilities when the Iron Colossus is close to you. When he jumps up to do a ground slam, quickly use your Submerge ability and run away from the Iron Colossus. Do not try to get behind him, as well will just spin around and ground slam you. Repeat this process.
	step
		Click the red arrow button on your hotbar to stop controlling the Jormungar |outvehicle |c |q 13007
	step
		talk Bouldercrag the Rockshaper##29801
		turnin The Iron Colossus##13007 |goto 31.4,38.1
]])

---------------------
----- Therazane -----
---------------------

ZygorGuidesViewer:RegisterInclude("A_Therazane_PreQuest",[[
	step
		click Hero's Call Board##250720
		accept Hero's Call: Deepholm!##27727 |goto Stormwind City 62.9,71.6
	step
		talk Naraat the Earthspeaker##45226
		turnin Hero's Call: Deepholm!##27727 |goto 74.5,19.0
		accept The Maelstrom##27203 |goto 74.5,19.0
	step
		talk Thrall##45042
		turnin The Maelstrom##27203 |goto The Maelstrom 33.4,50.2
		accept Deepholm, Realm of Earth##27123 |goto The Maelstrom 33.4,50.2
	step
		clicknpc Wyvern##45005 |goto 32.5,52.0
		You will fly into Deepholm |goto Deepholm 49.9,54.7 < 10 |noway |c
	step
		talk Maruut Stonebinder##43065
		turnin Deepholm, Realm of Earth##27123 |goto Deepholm 49.6,53.0
		accept Gunship Down##26245 |goto Deepholm 49.6,53.0
	step
		talk Seer Kormo##43397
		accept Elemental Energy##27136 |goto 49.7,52.9
		accept The Earth Claims All##26244 |goto 49.7,52.9
	step
		talk Earthcaller Yevaa##42573
		accept Where's Goldmine?##26409 |goto 49.5,53.3
	step
		talk Caretaker Nuunwa##45300
		home Temple of Earth |goto 49.2,51.9
	step
		talk Initiate Goldmine##42574
		turnin Where's Goldmine?##26409 |goto 46.5,57.3
		accept Explosive Bonding Compound##26410 |goto 46.5,57.3
		accept Something that Burns##27135 |goto 46.5,57.3
	step
		kill Rockslice Flayer##42606+, Rockslice Ripper##42607+
		collect 5 Quartzite Resin##58501 |q 26410/1 |goto 45.5,57.9
		You can find more Rockslice Flayers around [42.5,55.6]
	step
		Use your Depleted Totem |use Depleted Totem##60835
		kill Lodestone Elemental##43258+, Energized Geode##43254+
		|tip Kill them next to your Depleted Totems.
		Energize the Totem 8 Times |q 27136/1 |goto 51.1,61.6
	step
		Use Goldmine's Fire Totem in the red lava spot |use Goldmines's Fire Totem##60834
		kill Magmatooth##45099
		collect The Burning Heart##60837 |q 27135/1 |goto 52.0,58.9
	step
		talk Initiate Goldmine##42574
		turnin Explosive Bonding Compound##26410 |goto 46.5,57.3
		turnin Something that Burns##27135 |goto 46.5,57.3
		accept Apply and Flash Dry##26411 |goto 46.5,57.3
	step
		Use your Explosive Bonding Compound on Flint Oremantle |use Explosive Bonding Compound##58502
		Apply the Explosive Bonding Compound |q 26411/1 |goto 46.6,57.2
	step
		talk Initiate Goldmine##42574
		turnin Apply and Flash Dry##26411 |goto 46.5,57.3
		accept Take Him to the Earthcaller##26413 |goto 46.5,57.3
	step
		Introduce Flint Oremantle to Earthcaller Yevaa |q 26413/1 |goto 49.5,53.3
	step
		talk Earthcaller Yevaa##42573
		turnin Take Him to the Earthcaller##26413 |goto 49.5,53.3
		accept To Stonehearth's Aid##26484 |goto 49.5,53.3
	step
		talk Seer Kormo##43397
		turnin Elemental Energy##27136 |goto 49.7,52.9
	step
		clicknpc Slain Cannoneer##43032
		Receive the Second Clue |q 26245/2 |goto 56.1,74.2
	step
		clicknpc Captain Skullshatter##43048
		Receive the First Clue |q 26245/1 |goto 53.5,73.8
	step
		click Captain's Log##211413
		accept Captain's Log##26246 |goto 53.6,73.8
	stickystart "deepstoneelement"
	step
		clicknpc Unexploded Artillery Shell##43044
		Receive the Third Clue |q 26245/3 |goto 56.7,76.4
	step
	label "deepstoneelement"
		kill 5 Deepstone Elemental##43026+ |q 26244/1 |goto 55.9,74.9
	step
		talk Maruut Stonebinder##43065
		turnin Gunship Down##26245 |goto 49.6,52.9
		turnin Captain's Log##26246 |goto 49.6,52.9
	step
		talk Seer Kormo##43397
		turnin The Earth Claims All##26244 |goto 49.7,52.9
	step
		talk Maruut Stonebinder##43065
		accept Diplomacy First##26247 |goto 49.6,53.0
	step
		talk Stormcaller Mylra##42684
		|tip She's up above in an airship patrolling this area.
		turnin Diplomacy First##26247 |goto 62.4,52.6
		accept All Our Friends Are Dead##26248 |goto 62.4,52.6
		accept The Admiral's Cabin##26249 |goto 62.4,52.6
	step
		All around on this air ship:
		Use your Spirit Totem on Slain Crew Members |use Spirit Totem##58167
		Receive 6 Slain Crew Member Information |q 26248/1
	step
		Enter the doorway on the main deck of the air ship:
		talk First Mate Moody##43082
		turnin The Admiral's Cabin##26249
		accept Without a Captain or Crew##26427
	step
		Leave through the doorway and immediately turn right:
		click Bottle of Whiskey##204280
		|tip Located on the life boat.
		collect Bottle of Whiskey##58798 |q 26427/1
	step
		All around on the deck of the air ship:
		click Spool of Rope##204279
		collect Spool of Rope##58806 |q 26427/2
	step
		Enter the doorway on the main deck of the air ship:
		talk First Mate Moody##43082
		turnin Without a Captain or Crew##26427
	step
		Go to the very top of the air ship:
		talk Stormcaller Mylra##42684
		turnin All Our Friends Are Dead##26248
		accept Take No Prisoners##26251
		accept On Second Thought, Take One Prisoner##26250
	step
		Go onto the main deck of the ship and go down the stairs to the deck below:
		Fight Mor'norokk the Hateful until he surrenders
		|tip He's downstairs in the airship, in the very back of the first level you come to.
		talk Mor'norokk the Hateful##42801
		Subdue Mor'norokk the Hateful |q 26250/1
	step
		All around on this lower deck of the air ship:
		kill 6 Twilight Saboteur##42885 |q 26251/1
	step
		Go to the very top of the air ship:
		talk Stormcaller Mylra##42684
		turnin Take No Prisoners##26251
		turnin On Second Thought, Take One Prisoner##26250
		accept Some Spraining to Do##26254
	step
		Next to Stormcaller Mylra:
		clicknpc Stormbeak##42887
		Interrogate Mok'norrok |q 26254/1
	step
		When you land on the air ship again:
		talk Stormcaller Mylra##42684
		turnin Some Spraining to Do##26254
		accept Return to the Temple of Earth##26255
	step
		talk Maruut Stonebinder##43065
		turnin Return to the Temple of Earth##26255 |goto 49.6,53.0
		accept Deathwing's Fall##26258 |goto 49.6,53.0
	step
		talk Seer Kormo##43397
		accept Blood of the Earthwarder##26259 |goto 49.7,52.9
	step
		Go to this spot
		Reach Deathwing's Fall |q 26258/1 |goto 59.4,58.2
	step
		Click the _Quest Complete_ Box:
		turnin Deathwing's Fall##26258
		accept Bleed the Bloodshaper##26256
	step
		kill Twilight Bloodshaper##43218+
		collect Twilight Orders##60264 |q 26256/1 |goto 61.5,60.6
	step
		Click the _Quest Complete_ Box:
		turnin Bleed the Bloodshaper##26256 |goto 61.5,60.6
		accept Question the Slaves##26261 |goto 61.5,60.6
	stickystart "bloodneltharion"
	step
		click Slavemaster's Coffer##205097
		collect 1 Twilight Slaver's Key##60739 |q 26261 |goto 62.8,59.5
	step
	label "bloodneltharion"
		kill Living Blood##43123+
		collect 5 Blood of Neltharion##133127 |q 26259/1 |goto 61.2,60.1
	step
		click Ball and Chain##207079
		Free 6 Enslaved Miners |q 26261/1 |goto 64.5,65.5
	step
		Click the _Quest Complete_ Box:
		turnin Question the Slaves##26261
		accept The Forgemaster's Log##26260
	step
		click Forgemaster's Log##205134
		turnin The Forgemaster's Log##26260 |goto 63.7,55.4
		accept Silvermarsh Rendezvous##27007 |goto 63.7,55.4
	step
		Go to this spot
		Reach Upper Silvermarsh |q 27007/1
	step
		Click the _Quest Complete_ Box:
		turnin Silvermarsh Rendezvous##27007 |goto 70.6,61.2
		accept Quicksilver Submersion##27010 |goto 70.6,61.2
	step
		click Trogg Crate##205197
		collect Trogg Crate##60809 |q 27010 |goto 71.8,64.3
		kill Murkstone Trogg##44936
		collect 1 Maziel's Research##60816 |n
		Click Maziel's Research in your bags |use Maziel's Research##60816
		accept Twilight Research##27100 |goto 71.8,64.3
	step
		Use your Trogg Crate in the water and swim to this spot |use Trogg Crate##60809
		Watch the dialogue
		Uncover the World Pillar Fragment Clue |q 27010/1 |goto 74.9,64.8
	step
		Click the _Quest Complete_ Box:
		turnin Quicksilver Submersion##27010
		accept The Twilight Overlook##27061
	step
		kill Mercurial Ooze##43158+
		collect 4 Twilight Research Notes##60814 |q 27100/1 |goto 72.5,65.2
	step
		Click the _Quest Complete_ Box:
		turnin Twilight Research##27100
		accept Maziel's Revelation##27101
	step
		click Maziel's Journal##205207
		turnin Maziel's Revelation##27101 |goto 67.2,70.2
		accept Maziel's Ascendancy##27102 |goto 67.2,70.2
	step
		Enter the cave |goto 69.5,68.0 < 10 |walk
		kill Maziel##44967 |q 27102/1 |goto 72.8,62.0
	step
		Click the _Quest Complete_ Box:
		turnin Maziel's Ascendancy##27102
	step
		Leave the cave |goto 69.5,68.0 < 10 |walk
		talk Stormcaller Mylra##44010
		turnin The Twilight Overlook##27061 |goto 64.5,82.1
		accept Big Game, Big Bait##26766 |goto 64.5,82.1
		accept To Catch a Dragon##26768 |goto 64.5,82.1
	step
		kill Jadecrest Basilisk##43981+
		Use Mylra's Knife on Jadecrest Basilisk corpses |use Mylra's Knife##60382
		collect 5 Side of Basilisk Meat##60297 |q 26766/1 |goto 58.0,84.8
		kill Twilight Dragonstalker##43992+
		collect Twilight Snare##60383 |q 26768/1 |goto 58.0,84.8
	step
		talk Stormcaller Mylra##44010
		turnin Big Game, Big Bait##26766 |goto 64.5,82.1
		turnin To Catch a Dragon##26768 |goto 64.5,82.1
		accept Testing the Trap##26771 |goto 64.5,82.1
	step
		Use your Trapped Basilisk Meat |use Trapped Basilisk Meat##60773
		kill Stonescale Matriarch##44148 |q 26771/1 |goto 50.9,85.3
	step
		talk Stormcaller Mylra##44010
		turnin Testing the Trap##26771 |goto 64.5,82.1
		accept Abyssion's Minions##26857 |goto 64.5,82.1
	step
		talk Seer Galekk##44222
		accept Block the Gates##26861 |goto 64.6,82.2
	stickystart "abyssionunder"
	step
		Use your Stormstone next to the swirling blue portal |use Stormstone##60501
		Disrupt the Twilight Gate |q 26861/1 |goto 68.7,75.0
	step
		Use your Stormstone next to the structure with the floating yellow crystal |use Stormstone##60501
		Disrupt the Elemental Gate |q 26861/2 |goto 71.2,75.1
	step
	label "abyssionunder"
		kill Scalesworn Cultist##44221+, Twilight Scalesister##43967+, Twilight Dragonspawn##43966+
		Defeat 8 Abyssion's Underlings |q 26857/1 |goto 69.9,76.7
	step
		talk Seer Galekk##44222
		turnin Block the Gates##26861 |goto 64.6,82.2
	step
		talk Stormcaller Mylra##44010
		turnin Abyssion's Minions##26857 |goto 64.5,82.2
		accept The World Pillar Fragment##26876 |goto 64.5,82.2
	step
		Use your Earthen Ring Banner |use Earthen Ring Banner##60810
		kill Abyssion##44289
		click The First Fragment of the World Pillar##204967
		collect The Upper World Pillar Fragment##60574 |q 26876/1 |goto 69.9,76.9
	step
		talk Maruut Stonebinder##43065
		turnin The World Pillar Fragment##26876 |goto 49.6,53.0
	step
		talk Seer Kormo##43397
		turnin Blood of the Earthwarder##26259 |goto 49.7,52.9
	step
		talk Crag Rockcrusher##43071
		turnin To Stonehearth's Aid##26484 |goto 27.9,68.7
		accept The Quaking Fields##27931 |goto 27.9,68.7
	step
		talk Slate Quicksand##47195
		turnin The Quaking Fields##27931 |goto 30.6,77.7
		accept The Axe of Earthly Sundering##27932 |goto 30.6,77.7
		accept Elemental Ore##27933 |goto 30.6,77.7
	step
		Use The Axe of Earthly Sundering on Emerald Colossi |use The Ace of Earthly Sundering##60490
		kill 5 Sundered Emerald Colossus##44229 |q 27932/1 |goto 32.2,79.1
		kill Jade Rager##44220+
		collect 6 Elemental Ore##60487 |q 27933/1 |goto 32.2,79.1
	step
		talk Slate Quicksand##47195
		turnin The Axe of Earthly Sundering##27932 |goto 30.6,77.7
		turnin Elemental Ore##27933 |goto 30.6,77.7
		accept One With the Ground##27934 |goto 30.6,77.7
	step
		talk Slate Quicksand##47195
		Tell him you are ready for the ritual
		Complete the One With the Ground Ritual |q 27934/1 |goto 30.6,77.7
	step
		Click the _Quest Complete_ Box:
		turnin One With the Ground##27934
		accept Bring Down the Avalanche##27935
	step
		kill Avalanchion##44372 |q 27935/1 |goto 46.9,89.1
	step
		Leave the cave |goto 43.4,82.0 < 10 |walk
		talk Crag Rockcrusher##43071
		turnin Bring Down the Avalanche##27935 |goto 27.9,68.7
		accept Stonefather's Boon##26499 |goto 27.9,68.7
	step
		talk Earthbreaker Dolomite##43160
		accept We're Surrounded##26500 |goto 28.2,69.6
	step
		kill 12 Stone Trogg Ambusher##43134+ |q 26500/1 |goto 29.7,68.8
		Use Stonefather's Banner next to Stone Hearth Defenders |use Stonefather's Banner##58884
		Grant the Stonefather's Boon 12 times |q 26499/1 |goto 29.7,68.8
	step
		talk Earthbreaker Dolomite##43160
		turnin We're Surrounded##26500 |goto 28.2,69.6
		accept Thunder Stones##26502 |goto 28.2,69.6
	step
		talk Crag Rockcrusher##43071
		turnin Stonefather's Boon##26499 |goto 27.9,68.7
		accept Sealing the Way##26501 |goto 27.9,68.7
	stickystart "thunderstone"
	step
		Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885
		Seal the Shrine |q 26501/4 |goto 27.3,67.8
	step
		Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885
		Seal the Barracks |q 26501/3 |goto 26.0,68.8
	step
		Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885
		Seal the Inn |q 26501/2 |goto 26.2,69.8
	step
	label "thunderstone"
		Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885
		Seal the Armory |q 26501/1
		click Thunder Stone##204348
		collect 12 Thunder Stone##58886 |q 26502/1 |goto 27.3,70.1
	step
		talk Gravel Longslab##43168
		turnin Sealing the Way##26501 |goto 24.5,62.4
		accept Shatter Them!##26537 |goto 24.5,62.4
	step
		talk Clay Mudaxle##43169
		turnin Thunder Stones##26502 |goto 24.8,62.2
		accept Fixer Upper##26564 |goto 24.8,62.2
	step
		talk Earthmender Deepvein##43319
		accept Battlefront Triage##26591 |goto 24.6,62.2
	step
		Use Deepvein's Patch Kit on Injured Earthens |use Deepvein's Patch Kit##58965
		Patch up 10 Injured Earthen |q 26591/1 |goto 23.9,60.3
		Click Catapult Parts
		|tip They look kind of like big metal parts laying on the ground around this area.
		collect 6 Catapult Part##58944 |q 26564/1 |goto 23.9,60.3
		kill Stone Trogg Berserker##43228+, Stone Trogg Geomancer##43234+, Needlerock Rider##43250+
		kill 12 Fractured Battlefront stone troggs |q 26537/1 |goto 23.9,60.3
		You can also look around 23.1,53.9 for more
	step
		talk Gravel Longslab##43168
		turnin Shatter Them!##26537 |goto 24.5,62.4
	step
		talk Earthmender Deepvein##43319
		turnin Battlefront Triage##26591 |goto 24.6,62.2
	step
		talk Clay Mudaxle##43169
		turnin Fixer Upper##26564 |goto 24.8,62.2
	step
		talk Gravel Longslab##43168
		accept Troggzor the Earthinator##26625 |goto 24.5,62.4
	step
		kill Troggzor the Earthinator##43456
		collect The Earthinator's Cudgel##59144 |q 26625/1 |goto 22.6,56.9
	step
		talk Gravel Longslab##43168
		turnin Troggzor the Earthinator##26625 |goto 24.5,62.4
	step
		talk Clay Mudaxle##43169
		accept Rush Delivery##27126 |goto 24.8,62.2
	step
		talk Peak Grindstone##45043
		turnin Rush Delivery##27126 |goto 20.7,61.6
		accept Close Escort##26632 |goto 20.7,61.6
	step
		talk Peak Grindstone##45043
		Tell him you're ready to escort the catapult
		|tip You need to be near the catapult or it will stop
		Safely Escort the Earthen Catapult |q 26632/1 |goto 20.7,61.6
	step
		talk Pyrium Lodestone##43897
		turnin Close Escort##26632 |goto 22.7,52.0
		accept Keep Them off the Front##26755 |goto 22.7,52.0
	step
		clicknpc Earthen Catapult##43509
		Use your Fire Catapult ability on your hotbar on the Stone Trogg and Fungal mobs
		Bombard #30# Reinforcements |q 26755/1 |goto 22.4,52.0
	step
		talk Pyrium Lodestone##43897
		turnin Keep Them off the Front##26755 |goto 22.7,52.0
		accept Reactivate the Constructs##26762 |goto 22.7,52.0
	step
		talk Flint Oremantle##43898
		accept Mystic Masters##26770 |goto 22.8,52.1
	step
		clicknpc Deactivated War Construct##43984
		Reactivate 5 Deactivated War Constructs |q 26762/1 |goto 22.6,47.6
		kill 5 Needlerock Mystic |q 26770/1 |goto 22.6,47.6
		|tip Activate the golems before attacking mystics.
	step
		talk Flint Oremantle##43898
		turnin Mystic Masters##26770 |goto 22.8,52.1
	step
		talk Pyrium Lodestone##43897
		turnin Reactivate the Constructs##26762 |goto 22.7,52.0
		accept Down Into the Chasm##26834 |goto 22.7,52.0
	step
		talk Slate Quicksand##44143
		turnin Down Into the Chasm##26834 |goto 27.6,44.8
		accept Sprout No More##26791 |goto 27.6,44.8
		accept Fungal Monstrosities##26792 |goto 27.6,44.8
	step
		clicknpc War Guardian##44126
		Obtain a War Guardian for the Sprout No More quest |q 26791/1 |goto 27.6,44.7
		Obtain a War Guardian for the Fungal Monstrosities quest |q 26792/1 |goto 27.6,44.7
	step
		kill 5 Fungal Monstrosity##44035+ |q 26792/2 |goto 26.8,41.8
		clicknpc Giant Mushroom##44049+
		Destroy 5 Giant Mushrooms |q 26791/2 |goto 26.8,41.8
	step
		talk Slate Quicksand##44143
		turnin Sprout No More##26791 |goto 27.6,44.8
		turnin Fungal Monstrosities##26792 |goto 27.6,44.8
		accept A Slight Problem##26835 |goto 27.6,44.8
	step
		talk Pyrium Lodestone##43897
		turnin A Slight Problem##26835 |goto 22.7,52.0
		accept Rescue the Stonefather... and Flint##26836 |goto 22.7,52.0
	step
		kill Bouldergut##44151
		Rescue Stonefather Oremantle |q 26836/1 |goto 24.5,31.1
	step
		talk Pyrium Lodestone##43897
		turnin Rescue the Stonefather... and Flint##26836 |goto 22.7,52.0
		accept The Hero Returns##27937 |goto 22.7,52.0
	step
		talk Stonefather Oremantle##44204
		turnin The Hero Returns##27937 |goto 28.0,68.6
		accept The Middle Fragment##27938 |goto 28.0,68.6
	step
		click The Stonefather's Safe##206562
		collect The Middle Fragment of the World Pillar##60575 |q 27938/1 |goto 28.0,68.7
	step
		talk Earthcaller Yevaa##42573
		turnin The Middle Fragment##27938 |goto 49.5,53.3
	step
		talk Maruut Stonebinder##43065
		accept The Very Earth Beneath Our Feet##26326 |goto 49.6,53.0
	step
		talk Earthcaller Torunscar##42730
		turnin The Very Earth Beneath Our Feet##26326 |goto 46.1,45.6
		accept Crumbling Defenses##26312 |goto 46.1,45.6
		accept On Even Ground##26314 |goto 46.1,45.6
	step
		talk Earthmender Norsala##42731
		accept Core of Our Troubles##26313 |goto 46.2,45.7
	step
		kill Irestone Rumbler##42780+
		collect Irestone Core##58168 |q 26313/1 |n
		Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169
		|tip Run away from the Servants of Therazane to bring them down.
		Relieve Stormcaller Mylra |q 26312/2 |goto 44.3,43.7
	step
		kill Irestone Rumbler##42780+
		collect Irestone Core##58168 |q 26313/1 |n |goto 44.5,41.3
		Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169
		|tip Run away from the Servants of Therazane to bring them down.
		Relieve Tawn Winterbluff |q 26312/1 |goto 44.5,41.3
	step
		kill Irestone Rumbler##42780+
		collect Irestone Core##58168 |q 26313/1 |n |goto 47.6,42.8
		Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169
		|tip Run away from the Servants of Therazane to bring them down.
		Relieve Hargoth Dimblaze |q 26312/3 |goto 47.6,42.8
	step
		kill Irestone Rumbler##42780+
		collect 6 Irestone Core##58168 |q 26313/1 |goto 46.2,42.2
		Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169
		|tip Run away from the Servants of Therazane to bring them down.
		Bring down 3 Servants of Therazane |q 26314/1 |goto 46.2,42.2
	step
		talk Earthmender Norsala##42731
		turnin Core of Our Troubles##26313 |goto 46.2,45.7
	step
		talk Earthcaller Torunscar##42730
		turnin Crumbling Defenses##26312 |goto 46.1,45.6
		turnin On Even Ground##26314 |goto 46.1,45.6
	step
		talk Earthmender Norsala##42731
		accept Imposing Confrontation##26315 |goto 46.2,45.7
	step
		Use your Earthen Ring Proclamation on Boden the Imposing |use Earthen Ring Proclamation##58177
		|tip He's a huge rock giant that walks around this area.
		Seek Peace with Boden the Imposing |q 26315/1 |goto 49.2,40.1
	step
		talk Earthmender Norsala##42731
		turnin Imposing Confrontation##26315 |goto 46.2,45.7
		accept Rocky Relations##26328 |goto 46.2,45.7
	step
		talk Diamant the Patient##42467
		turnin Rocky Relations##26328 |goto 56.5,42.7
		accept Hatred Runs Deep##26376 |goto 56.5,42.7
		accept Unsolid Ground##26377 |goto 56.5,42.7
	step
		talk Quartz Stonetender##42899
		accept Loose Stones##26375 |goto 56.5,41.0
	stickystart "quartzrockling"
	step
		kill Dragul Giantbutcher##42921 |q 26376/1 |goto 60.2,39.4
	step
	label "quartzrockling"
		click Jade Crystal Cluster##204253
		collect 6 Jade Crystal Cluster##58500 |q 26377 |goto 59.5,41.5
		Use your Delicate Chain Smasher next to Quartz Rocklings |use Delicate Chain Smasher##58254
		|tip They look like small rock giants around this area.
		Release 6 Quartz Rocklings |q 26375/1 |goto 59.5,41.5
	step
		Use the Jade Crystal Clusters |use Jade Crystal Cluster##58500
		collect Jade Crystal Composite##58783 |q 26377
	step
		Use your Jade Crystal Composite |use Jade Crystal Composite##58783
		Lure an Agitated Tunneler |q 26377/1 |goto 59.6,41.4
	step
		kill Twilight Laborer##42924+, Twilight Priestess##42823+, Twilight Duskwarden##42917+
		kill 12 Lorthuna's Gate Cultists |q 26376/2 |goto 59.3,40.6
	step
		talk Quartz Stonetender##42899
		turnin Loose Stones##26375 |goto 56.5,41.0
	step
		talk Diamant the Patient##42467
		turnin Hatred Runs Deep##26376 |goto 56.5,42.7
		turnin Unsolid Ground##26377 |goto 56.5,42.7
		accept Violent Gale##26426 |goto 56.5,42.7
	step
		Get next to Felsen the Enduring
		Find Felsen the Enduring |q 26426/1 |goto 51.7,31.6
	step
		Fly to the mouth of this cave
		Find the entrance to the Crumbling Depths |q 26426/2 |goto 58.4,25.7
	step
		Click the _Quest Complete_ Box:
		turnin Violent Gale##26426 |goto 58.4,25.7
		accept Depth of the Depths##26869 |goto 58.4,25.7
	step
		Follow the path |goto 64.5,21.7 < 10 |only if walking
		Follow the path |goto 65.3,18.4 < 10 |only if walking
		click Gigantic Painite Cluster##204959
		turnin Depth of the Depths##26869 |goto 66.4,20.6
		accept A Rock Amongst Many##26871 |goto 66.4,20.6
	step
		Jump down at this spot |goto 64.3,23.5 < 10 |only if walking
		Leave the cave |goto 58.3,25.5 < 10 |walk
		talk Diamant the Patient##42467
		turnin A Rock Amongst Many##26871 |goto 56.5,42.7
		accept Entrenched##26436 |goto 56.5,42.7
	step
		talk Kor the Immovable##42469
		turnin Entrenched##26436 |goto 34.3,34.3
		accept Intervention##26438 |goto 34.3,34.3
		accept Making Things Crystal Clear##26437 |goto 34.3,34.3
	step
		talk Berracite##43344
		accept Putting the Pieces Together##26439 |goto 34.1,35.2
	step
		kill Jaspertip Borer##42524+, Jaspertip Swarmer##42521+, Jaspertip Ravager##42525+
		kill 12 Jaspertip flayers |q 26438/1 |goto 30.5,46.8
		click Chalky Crystal Formation##204297
		collect 8 Chalky Crystal Formation##58845 |q 26437/1 |goto 30.5,46.8
		clicknpc Dormant Stonebound Elemental##43115
		Reform 6 Stonebound Elementals |q 26439/1 |goto 30.5,46.8
	step
		talk Kor the Immovable##42469
		turnin Intervention##26438 |goto 34.3,34.3
		turnin Making Things Crystal Clear##26437 |goto 34.3,34.3
	step
		talk Berracite##43344
		turnin Putting the Pieces Together##26439 |goto 34.1,35.2
	step
		Next to you:
		talk Pebble##43116
		accept Clingy##26440
	step
		Get next to the huge green crystals
		Bring Pebble to the crystal formation |q 26440/1 |goto 30.1,47.7
	step
		Next to you:
		talk Pebble##43116
		turnin Clingy##26440
		accept So Big, So Round...##26441
	step
		talk Kor the Immovable##42469
		turnin So Big, So Round...##26441 |goto 34.3,34.3
		accept Petrified Delicacies##26507 |goto 34.3,34.3
		accept Rock Bottom##26575 |goto 34.3,34.3
	stickystart "petrifiedstonebat"
	step
		kill Gorgonite##43339 |q 26575/1 |goto 47.6,26.8
	step
	label "petrifiedstonebat"
		clicknpc Petrified Stone Bat##43182+
		collect 12 Petrified Stone Bat##58959 |q 26507/1 |goto 47.5,26.8
	step
		Next to you:
		talk Pebble##43116
		turnin Petrified Delicacies##26507
	step
		talk Kor the Immovable##42469
		turnin Rock Bottom##26575 |goto 34.3,34.3
		accept Steady Hand##26576 |goto 34.3,34.3
		accept Rocky Upheaval##26577 |goto 34.3,34.3
	step
		talk Terrath the Steady##42466
		turnin Steady Hand##26576 |goto 39.9,19.4
		accept Don't. Stop. Moving.##26656 |goto 39.9,19.4
	step
		talk Terrath the Steady##42466
		Tell him you are ready to escort a group of elementals across the open.
		Speak to Terrath the Steady |q 26656/1 |goto 39.9,19.4
	step
		Go to this spot
		Escort 5 Opalescent Guardians to safety |q 26656/2 |goto 51.1,14.7
		|tip Run on the ground with your mount, don't fly or you the rock elementals will disappear when you get too far away from them.
	step
		talk Terrath the Steady##42466
		turnin Don't. Stop. Moving.##26656 |goto 39.9,19.4
		accept Hard Falls##26657 |goto 39.9,19.4
		accept Fragile Values##26658 |goto 39.9,19.4
	stickystart "stonedrake"
	step
		kill Stone Trogg Beast Tamer##43598
		|tip He moves all around this area capturing basilisks, so you may need to look around a bit for him.
		collect Stonework Mallet##59323 |q 26658/1 |goto 35.4,22.5
	step
	label "stonedrake"
		kill 6 Stone Drake##42522 |q 26657/1 |goto 36.5,18.8
		|tip They will fall to the ground with half health, so you can kill them, even though they are elite.
	step
		talk Terrath the Steady##42466
		turnin Hard Falls##26657 |goto 40.0,19.4
		turnin Fragile Values##26658 |goto 40.0,19.4
		accept Resonating Blow##26659 |goto 40.0,19.4
	step
		Use your Stonework Mallet next to the Pale Resonating Crystal |use Stonework Mallet##60266
		Strike the Pale Resonating Crystal |q 26659/1 |goto 32.7,24.3
		kill Aeosera##43641
		|tip Click the Boulder Platforms to jump from rock to rock while fighting Aeosera. When she is casting her Searing Breath ability, jump to another rock and attack her while she is breathing fire to the other rock. Repeat this until she surrenders.
		Defeat Aeosera |q 26659/2 |goto 32.7,24.3
	step
		talk Terrath the Steady##42466
		turnin Resonating Blow##26659 |goto 33.1,24.1
		If Terrath the Steady doesn't spawn at the appropriate spot, go to [40.0,19.4]
	step
		talk Gorsik the Tumultuous##42472
		turnin Rocky Upheaval##26577 |goto 72.2,54.0
		accept Doomshrooms##26578 |goto 72.2,54.0
		accept Gone Soft##26579 |goto 72.2,54.0
		accept Familiar Intruders##26580 |goto 72.2,54.0
	step
		talk Windspeaker Lorvarius##43395
		turnin Familiar Intruders##26580 |goto 71.8,47.6
		accept A Head Full of Wind##26581 |goto 71.8,47.6
	step
		kill 8 Fungal Behemoth##42475+ |q 26579/1
		kill Doomshroom##43388+
		Destroy 10 Doomshrooms |q 26578/1 |goto 73.6,40.8
		Gather a sample of the red mist |q 26581/1 |goto 73.6,40.8
		|tip There are small clouds of red mist that float around on the ground around this area. Walk into one of them to gather a sample.
		You will be able to find more Fungal Behemoths and Doomshrooms around [76.6,44.4]
	step
		talk Windspeaker Lorvarius##43395
		turnin A Head Full of Wind##26581 |goto 71.8,47.6
		accept Unnatural Causes##26582 |goto 71.8,47.6
	step
		talk Gorsik the Tumultuous##42472
		turnin Doomshrooms##26578 |goto 72.2,54.0
		turnin Gone Soft##26579 |goto 72.2,54.0
		turnin Unnatural Causes##26582 |goto 72.2,54.0
		accept Shaken and Stirred##26584 |goto 72.2,54.0
		accept Corruption Destruction##26585 |goto 72.2,54.0
	step
		talk Ruberick##43442
		accept Wrath of the Fungalmancer##26583 |goto 68.5,26.4
	step
		Enter the cave |goto 68.6,29.1 < 10 |walk
		talk Earthmender Norsala##43503
		Tell her you're ready when she is |q 26583/1 |goto 69.8,31.9
		kill Fungalmancer Glop##43372 |q 26583/2 |goto 69.8,31.9
		|tip Follow him each time he runs away. Avoid the mushrooms as you walk, they will give you a debuff. While fighting Fungalmancer Glop, avoid the Boomshrooms he creates.
	step
		Follow the path up |goto 70.2,33.8 < 10 |only if walking
		Leave the cave |goto 68.6,29.1 < 10 |only if walking
		talk Ruberick##43442
		turnin Wrath of the Fungalmancer##26583 |goto 68.5,26.3
	step
		kill 8 Verlok Pillartumbler##43513+ |q 26584/1
		click Verlok Miracle-Grow##204410
		collect 8 Verlok Miracle-Grow##59123 |q 26585/1 |goto 69.4,24.8
	step
		talk Gorsik the Tumultuous##42472
		turnin Shaken and Stirred##26584 |goto 72.2,54.0
		turnin Corruption Destruction##26585 |goto 72.2,54.0
		accept At the Stonemother's Call##26750 |goto 72.2,54.0
	step
		talk Therazane##42465
		turnin At the Stonemother's Call##26750 |goto 56.3,12.2
		accept Audience with the Stonemother##26752 |goto 56.3,12.2
	step
		Watch the dialogue
		Attend the Stonemother's Audience |q 26752/1
	step
		talk Earthcaller Torunscar##43809
		turnin Audience with the Stonemother##26752 |goto 56.1,13.5
		accept Rallying the Earthen Ring##26827 |goto 56.1,13.5
	step
		ding 83
	step
		talk Explorer Mowi##44799
		accept The Twilight Plot##27004 |goto 47.3,51.4
	step
		talk Prospector Brewer##44802
		accept Fly Over##27006 |goto 47.3,51.4
	stickystart "masterplans"
	step
		Go to this spot next to the big white portal
		Investigate the Master's Gate |q 27006/1 |goto 39.0,74.2
	step
	label "masterplans"
		kill Twilight Cryptomancer##44855+, Twilight Crusher##44849+, Twilight Armsman##44847+
		collect Masters' Gate Plans##60745 |q 27004/1 |goto 40.1,72.2
	step
		talk Explorer Mowi##44799
		turnin The Twilight Plot##27004 |goto 47.3,51.4
	step
		talk Prospector Brewer##44802
		turnin Fly Over##27006 |goto 47.3,51.4
		accept Fight Fire and Water and Air with...##27042 |goto 47.3,51.4
	step
		talk Explorer Mowi##44799
		accept Decryption Made Easy##27040 |goto 47.3,51.4
	stickystart "decryptplans"
	step
		kill Bound Water Elemental##44886
		Acquire the Water Ward |q 27042/2 |goto 40.8,66.3
	step
		kill Bound Fire Elemental##44887
		Acquire the Fire Ward |q 27042/1 |goto 36.0,67.4
	step
		kill Bound Air Elemental##44885
		Acquire the Air Ward |q 27042/3 |goto 40.5,72.4
	step
	label "decryptplans"
		click One-Time Decryption Engine##205145
		Decrypt 6 Plans |q 27040/1 |goto 40.2,67.5
	step
		Click the _Quest Complete_ Box:
		turnin Decryption Made Easy##27040
		accept The Wrong Sequence##27058
	step
		click the Waygate Controller##205161
		Destroy the Waygate |q 27058/1 |goto 39.1,73.9
	step
		kill Haethen Kaul##44835 |q 27042/4 |goto 39.9,62.2
		|tip He's up on a huge floating rock.
	step
		talk Explorer Mowi##44799
		turnin The Wrong Sequence##27058 |goto 47.3,51.4
		accept That's No Pyramid!##28292 |goto 47.3,51.4
	step
		talk Prospector Brewer##44802
		turnin Fight Fire and Water and Air with...##27042 |goto 47.3,51.4
	step
		Talk with Windspeaker Lorvarius, Yuldris Smolderfury, Tawn Winterbluff, Earthcaller Yevaa and Tharm Wildfire at the below locations:
		[48.5,50.1]
		[47.4,50.9]
		[48.1,49.9]
		Tell them you are joining an assault on Lorthuna's Gate and they are needed.
		Rally 5 Earthen Ring |q 26827/1 |goto 48.0,53.7
	step
		talk Maruut Stonebinder##43065
		turnin Rallying the Earthen Ring##26827 |goto 49.6,53.0
		accept Our Part of the Bargain##26828 |goto 49.6,53.0
	step
		talk Therazane##44025
		turnin Our Part of the Bargain##26828 |goto 63.3,25.0
		accept The Stone March##26829 |goto 63.3,25.0
		accept Therazane's Mercy##26832 |goto 63.3,25.0
	step
		talk Boden the Imposing##44080
		accept The Twilight Flight##26831 |goto 62.6,26.9
	step
		kill High Priestess Lorthuna##42914
		|tip She is in a small room on the top of this building. She is elite, but you can still kill her. She will run away when she is almost dead.
		Defeat High Priestess Lorthuna |q 26832/2 |goto 62.4,31.8
	step
		kill Boldrich Stonerender##42923
		Defeat Boldrich Stonerender |q 26832/1 |goto 58.9,32.9
	step
		kill Zoltrik Drakebane##42918
		|tip You will eventually get on a stone drake and fly after Zoltrik Drakebane. You can use your Jump ability to jump onto his drake, if you are a melee class. Either way, you will land on a rock with him and kill him there.
		Defeat Zoltrik Drakebane |q 26831/1 |goto 63.1,38.1
	step
		talk Terrath the Steady##42614
		turnin The Twilight Flight##26831 |goto 64.1,36.9
	step
		kill Defaced Earthrager##44076+, Twilight Soulreaper##42916+, Twilight Priestess##42823+
		kill 15 Twilight Precipice Cultists |q 26829/1 |goto 60.3,33.2
	step
		talk Therazane##44025
		turnin The Stone March##26829 |goto 63.3,25.0
		turnin Therazane's Mercy##26832 |goto 63.3,25.0
		accept Word In Stone##26833 |goto 63.3,25.0
	step
		talk Maruut Stonebinder##43818
		turnin Word In Stone##26833 |goto 49.6,53.0
		accept Undying Twilight##26875 |goto 49.6,53.0
	step
		kill 12 Twilight Invaders |q 26875/1 |goto 50.7,49.6
		kill Desecrated Earthrager##44683 |q 26875/2 |goto 50.7,49.6
	step
		Click the _Quest Complete_ Box:
		turnin Undying Twilight##26875
		accept The Binding##26971
	step
		kill High Priestess Lorthuna##43837 |q 26971/1 |goto 49.6,52.9
	step
		talk Earthcaller Torunscar##43835
		turnin The Binding##26971 |goto 49.6,52.9
	step
		talk Therazane##43792
		accept The Stone Throne##26709 |goto 49.8,53.4
	step
		talk Therazane##42465
		turnin The Stone Throne##26709 |goto 56.4,12.1
]])

-----------------------
----- The Tillers -----
-----------------------

ZygorGuidesViewer:RegisterInclude("Tillers_Dailies",[[
		Proceeding to the Tiller's Dailies  |next "dailies" |complete completedq(31945) |only if completedq(31945)
		Proceeding to the Tiller's Prequests |next |complete not completedq(31945) |only if not completedq(31945)
	step
	label "Tillers_Prequests"
		talk Farmer Yoon##58721
		accept A Helping Hand##30252 |goto Valley of the Four Winds/0 52.02,48.01
	step
		clicknpc Unbudging Rock##58719
		Clear the First Unbudging Rock |q 30252/1 |goto 52.23,47.66 |count 1
	step
		clicknpc Unbudging Rock##58719
		Clear the Second Unbudging Rock |q 30252/1 |goto 52.10,48.02 |count 2
	step
		clicknpc Unbudging Rock##58719
		Clear the Third Unbudging Rock |q 30252/1 |goto 51.89,48.39 |count 3
	step
		clicknpc Unbudging Rock##58719
		Clear the Fourth Unbudging Rock |q 30252/1 |goto 51.70,48.70 |count 4
	step
		clicknpc Unbudging Rock##58719
		Clear the Fifth Unbudging Rock |q 30252/1 |goto 51.55,49.30 |count 5
	step
		clicknpc Unbudging Rock##58719
		Clear the Sixth Unbudging Rock |q 30252/1 |goto 51.90,49.16 |count 6
	step
		clicknpc Unbudging Rock##58719
		Clear the Seventh Unbudging Rock |q 30252/1 |goto 52.36,49.23 |count 7
	step
		clicknpc Unbudging Rock##58719
		Clear the Final Unbudging Rock |q 30252/1 |goto 52.83,49.86 |count 8
	step
		Go up the stairs |goto 52.22,48.47 < 7 |only if walking
		Enter the building |goto 52.56,48.12 < 7 |walk
		talk Farmer Yoon##58646
		turnin A Helping Hand##30252 |goto 52.75,47.94
	step
		Leave the building |goto 52.53,48.15 < 5 |walk
		Go down the stairs |goto 52.20,48.49 < 7 |only if walking
		talk Farmer Yoon##58646
		|tip Wait for the dialogue to complete.
		accept Learn and Grow I: Seeds##30535 |goto 52.25,48.79
	step
		Follow the path |goto 52.64,50.43 < 10 |only if walking
		Follow the path |goto 53.16,51.39 < 10 |only if walking
		talk Merchant Greenfield##58718
		Tell him _"I'm here to pick up seeds for Farmer Yoon."_
		Get a Packet of Green Cabbage Seeds |q 30535/1 |goto 52.88,52.14
	step
		Follow the path |goto 53.15,51.03 < 10 |only if walking
		talk Farmer Yoon##58646
		turnin Learn and Grow I: Seeds##30535 |goto 52.25,48.78
		accept Learn and Grow II: Tilling and Planting##30254 |goto 52.25,48.78
	step
		clicknpc Untilled Soil##59985
		Till the Soil |q 30254/1 |goto 52.01,48.44 |count 1
	step
		use EZ-Gro Green Cabbage Seeds##80302
		Plant the First EZ-Gro Green Cabbage Seed |q 30254/2 |goto 52.01,48.44 |count 1
	step
		clicknpc Untilled Soil##59985
		Till the Soil |q 30254/1 |goto 52.03,48.25 |count 2
	step
		use EZ-Gro Green Cabbage Seeds##80302
		Plant the First EZ-Gro Green Cabbage Seed |q 30254/2 |goto 52.03,48.25 |count 2
	step
		talk Farmer Yoon##58646
		turnin Learn and Grow II: Tilling and Planting##30254 |goto 52.25,48.79
		accept Learn and Grow III: Tending Crops##30255 |goto 52.25,48.79
	step
		use Rusty Watering Can##79104
		Water the First Parched EZ-Gro Green Cabbage |q 30255/1 |goto 52.01,48.44 |count 1
	step
		use Rusty Watering Can##79104
		Water the Second Parched EZ-Gro Green Cabbage |q 30255/1 |goto 52.03,48.23 |count 2
	step
		talk Farmer Yoon##58646
		turnin Learn and Grow III: Tending Crops##30255 |goto 52.25,48.79
		accept Learn and Grow IV: Harvesting##30256 |goto 52.25,48.79
	step
		clicknpc Ripe EZ-Gro Green Cabbage##59833
		|tip Wait a moment for it to ripen fully.
		collect 2 EZ-Gro Green Cabbage##80314 |q 30256/1 |goto 52.01,48.44 |count 1
	step
		clicknpc Ripe EZ-Gro Green Cabbage##59833
		collect 2 EZ-Gro Green Cabbage##80314 |q 30256/1 |goto 52.03,48.23 |count 2
	step
		talk Farmer Yoon##58646
		turnin Learn and Grow IV: Harvesting##30256 |goto 52.25,48.79
		accept Learn and Grow V: Halfhill Market##30257 |goto 52.25,48.79
	step
		Follow the path |goto 52.91,48.41 < 5 |only if walking
		click Dark Soil##210582
		collect Marsh Lily##79268 |q 30257/1 |goto 52.83,48.00
	step
		talk Gina Mudclaw##58706
		turnin Learn and Grow V: Halfhill Market##30257 |goto 53.16,51.80
		accept Learn and Grow VI: Gina's Vote##31945 |goto 53.16,51.80
	step
		talk Merchant Greenfield##58718
		buy 1 Scallion Seeds##80591 |n
		collect 1 Scallion Seeds##80591 |goto 52.88,52.14 |q 31945 |future
	step
		Follow the path |goto 53.09,51.01 < 7 |only if walking
		clicknpc Untilled Soil##58562
		Use your Scallion Seeds on the Tilled Soil |use Scallion Seeds##80591
		Plant Scallion Seeds |q 31945/1 |goto 52.0,48.4
	step
	label "info"
		Click here for information on Bursting Crops |next "bursting" |confirm
		Click here for information on Parched Crops |next "parched" |confirm
		Click here for information on Infested Crops |next "infested" |confirm
		Click here for information on Wiggling Crops |next "wiggling" |confirm
		Click here for information on Alluring Crops |next "alluring" |confirm
		Click here for information on Smothered Crops |next "smothered" |confirm
		Click here for information on Wild Crops |next "wild" |confirm
		Click here for information on Runty Crops |next "runty" |confirm
		Click here for information on Tangled Crops |next "tangled" |confirm
	step
	label "bursting"
		Unless you got a Bursting Scallion immediately after planting your Scallions, you will have to wait a full day until you can pick your crops
		Click here if you are ready to harvest your crops |confirm
		Click here to start doing dailies |next "dailies" |confirm
	stickystart "Collect_Scallions"
	step
		clicknpc Bursting Scallions##63160
		clicknpc Ripe Scallions##63165
		Harvest Ripe Scallions |q 31945/2 |goto 52.0,48.4
	step
	label "Collect_Scallions"
		clicknpc Bursting Scallions##63160
		clicknpc Ripe Scallions##63165
		collect 5 Scallion##74843 |q 31945/3 |goto 52.0,48.4
		|next "exit"
	step
	label "runty"
		clicknpc Runty Scallions##63166 |goto 52.0,48.4
		Press your Space Bar and jump
		Click here to return to the information page |next "info" |confirm
		Click here when you are have tilled your crops |next "bursting" |confirm
	step
	label "wiggling"
		clicknpc Wiggling Scallions##63169 |goto 52.0,48.4
		kill Voracious Virmen##60039 |goto 52.0,48.4
		Click here to return to the information page |next "info" |confirm
		Click here when you are have tilled your crops |next "bursting" |confirm
	step
	label "infested"
		click Vintage Bug Sprayer##211331
		collect Vintage Bug Sprayer##80513 |n |goto 52.2,48.3
		Use your Vintage Bug Sprayer on the Infested Scallions |use Vintage Bug Sprayer##80513
		Click here to return to the information page |next "info" |confirm
		Click here when you are have tilled your crops |next "bursting" |confirm
	step
	label "alluring"
		clicknpc Alluring Scallions##63159
		kill Swooping Plainshawk##60072 |goto 52.2,48.3
		Click here to return to the information page |next "info" |confirm
		Click here when you are have tilled your crops |next "bursting" |confirm
	step
	label "wild"
		clicknpc Wild Scallions##63170 |goto 52.0,48.4
		Ride the Scallion |invehicle |c
	step
		Spam the Flex ability on your new hotbar, when the plant tries to cast Vine Slam, interrupt it with your Gnaw ability
		Build 50 stacks on Dominance |outvehicle |c
	step
		Click here to return to the information page |next "info" |confirm
		Click here when you are have tilled your crops |next "bursting" |confirm
	step
	label "tangled"
		clicknpc Tangled Scallions##63168 |goto 52.0,48.4 |n
		Run here |goto 51.7,48.9 < 5 |walk
	step
		Click here to return to the information page |next "info" |confirm
		Click here when you are have tilled your crops |next "bursting" |confirm
	step
	label "parched"
		Use the Rusty Watering Can on the Parched Scallions |use Rusty Watering Can##79104 |goto 52.0,48.4
		Click here to return to the information page |next "info" |confirm
		Click here when you are have tilled your crops |next "bursting" |confirm
	step
	label "smothered"
		clicknpc Encroaching Weed##60185 |goto 52.0,48.4
		Ride the Weed |invehicle |c
	step
		Spam the Pull ability on your new hotbar.
		Pull the Weed |outvehicle |c
	step
		Click here to return to the information page |next "info" |confirm
		Click here when you are have tilled your crops |next "bursting" |confirm
	step
	label "exit"
		Follow the path |goto 53.15,51.25 < 7 |only if walking
		talk Gina Mudclaw##58706
		turnin Learn and Grow VI: Gina's Vote##31945 |goto 53.16,51.80
	step
	label "dailies"
		Start each day out by harvesting the crops from the previous day |goto 51.96,48.34
		confirm
	step
		talk Farmer Yoon##58646
		|tip He will only have 2 quests a day.
		accept The Kunzen Hunter-Chief##30336 |or 2 |goto 52.25,48.79
		accept That Dangling Carrot##31670 |or 2 |goto 52.25,48.79
		accept Stealing is Bad... Re-Stealing is OK##30334 |or 2 |goto 52.25,48.79
		accept The Cabbage Test##31669 |or 2 |goto 52.25,48.79
		accept It's Melon Time##31942 |or 2 |goto 52.25,48.79
		accept A Pumpkin-y Perfume##31672 |or 2 |goto 52.25,48.79
		accept Stalling the Ravage##30335 |or 2 |goto 52.25,48.79
		accept Red Blossom Leeks, You Make the Croc-in' World Go Down##31673 |or 2 |goto 52.25,48.79
		accept Squash Those Foul Odors##31941 |or 2 |goto 52.25,48.79
		accept The Lesser of Two Evils##30333 |or 2 |goto 52.25,48.79
		accept The White Turnip Treatment##31675 |or 2 |goto 52.25,48.79
		accept The Pink Turnip Challenge##31674 |or 2 |goto 52.25,48.79
		accept Which Berries? Witchberries.##31943 |or 2 |goto 52.25,48.79
		accept Why Not Scallions?##31671 |or 2 |goto 52.25,48.79
		accept Simian Sabotage##30337 |or 2 |goto 52.25,48.79
		only if not completedq(32682)
	step
		talk Farmer Yoon##58646
		|tip He will only have 1 quest a day.
		accept The Kunzen Hunter-Chief##30336 |or |goto 53.0,51.8
		accept Stealing is Bad... Re-Stealing is OK##30334 |or |goto 53.0,51.8
		accept Stalling the Ravage##30335 |or |goto 53.0,51.8
		accept The Lesser of Two Evils##30333 |or |goto 53.0,51.8
		accept Simian Sabotage##30337 |or |goto 53.0,51.8
		only if not completedq(32682)
	step
		talk Andi##64464
		|tip He will only have 1 quest a day.
		accept A Gift For Fung##30475 |or |goto 52.7,50.5
		accept A Gift For Chee Chee##30471 |or |goto 52.7,50.5
		accept A Gift For Haohan##30477 |or |goto 52.7,50.5
		accept A Gift For Jogu##30478 |or |goto 52.7,50.5
		accept A Gift For Sho##30472 |or |goto 52.7,50.5
		accept A Gift For Tina##30470 |or |goto 52.7,50.5
		accept A Gift For Ella##30474 |or |goto 52.7,50.5
		accept A Gift For Old Hillpaw##30476 |or |goto 52.7,50.5
		accept A Gift For Fish##30473 |or |goto 52.7,50.5
		accept A Gift For Gina##30479 |or |goto 52.7,50.5
	step
		talk Ella##58647
		accept You Have to Burn the Ropes##30327 |goto 53.1,51.7
		Click here if Ella is not in town |confirm
	step
		talk Haohan Mudclaw##57402
		accept Pest Problems##30319 |goto 53.0,51.7
		Click here if Haohan is not in town |confirm
	step
		talk Tina Mudclaw##58761
		accept They Don't Even Wear Them##30323 |goto 53.1,51.7
		Click here if Tina is not in town |confirm
	step
		talk Chee Chee##58709
		accept Not in Chee-Chee's Backyard##30324 |goto 53.1,52.1
		Click here if Chee-Chee is not in town |confirm
	step
		talk Fish Fellreed##58705
		accept The Kunzen Legend-Chief##30326 |goto 52.8,51.8
		Click here if Fish Felreed is not in town |confirm
	step
		talk Farmer Fung##57298
		accept Water, Water Everywhere##30317 |goto 52.9,51.7
		Click here if Farmer Fung is not in town |confirm
	step
		talk Sho##58708
		accept Where It Counts##30325 |goto 53.1,52.1
		Click here if Sho is not in town |confirm
	step
		talk Jogu the Drunk##58710
		accept Weed War II##30321 |goto 53.6,52.5
		Click here if Jogu has no available quests |confirm
	step
		talk Old Hillpaw##58707
		accept Chasing the Chicken##30318 |goto 53.0,51.8
		Click here if Old Hillpaw is not in town |confirm
	step
		talk Gina Mudclaw##58706
		accept Money Matters##30322 |goto 53.2,51.8
		If this quest is unavailable click here |confirm
	step
		talk Innkeeper Lei Lan##59582
		Tell her you are here on behalf of Gina Mudclaw.
		Innkeeper Lei Lan's Payment |q 30322/3 |goto 55.1,50.3
		only if haveq(30322)
	step
		talk Lolo Lio##59585
		Tell him you are here on behalf of Gina Mudclaw.
		Lolo Lio's Payment |q 30322/4 |goto 55.6,52.1
		only if haveq(30322)
	step
		talk Trader Jambeezi##59583
		Tell him you are here on behalf of Gina Mudclaw.
		Trader Jambeezi's Payment |q 30322/2 |goto 56.1,49.6
		only if haveq(30322)
	step
		talk Spicemaster Jin Jao##59581
		Tell him you are here on behalf of Gina Mudclaw.
		Spicemaster Jin Jao's Payment |q 30322/1 |goto 56.7,47.1
		only if haveq(30322)
	step
		talk Merchant Greenfield##58718
		buy 1 Juicycrunch Carrot Seeds##80590 |goto 52.9,52.1
		only if haveq(31670)
	step
		talk Merchant Greenfield##58718
		buy 1 Green Cabbage Seeds##79102 |goto 52.9,52.1
		only if haveq(31669)
	step
		talk Merchant Greenfield##58718
		buy 1 Witchberry Seeds##89326 |goto 52.9,52.1
		only if haveq(31943)
	step
		talk Merchant Greenfield##58718
		buy 1 Scallion Seeds##80591 |goto 52.9,52.1
		only if haveq(31671)
	step
		talk Merchant Greenfield##58718
		buy 1 White Turnip Seeds##80595 |goto 52.9,52.1
		only if haveq(31675)
	step
		talk Merchant Greenfield##58718
		buy 1 Pink Turnip Seeds##80594 |goto 52.9,52.1
		only if haveq(31674)
	step
		talk Merchant Greenfield##58718
		buy 1 Jade Squash Seeds##89328 |goto 52.9,52.1
		only if haveq(31941)
	step
		talk Merchant Greenfield##58718
		buy 1 Striped Melon Seeds##89329 |goto 52.9,52.1
		only if haveq(31942)
	step
		talk Merchant Greenfield##58718
		buy 1 Mogu Pumpkin Seeds##80592 |goto 52.9,52.1
		only if haveq(31672)
	step
		talk Merchant Greenfield##58718
		buy 1 Red Blossom Leek Seeds##80593 |goto 52.9,52.1
		only if haveq(31673)
	step
		talk Wing Nga##60231 |goto 56.5,50.4
		Tell her that you'd like to borrow one of Farmer Fung's kites.
		Ride a kite |invehicle |c
		only if haveq(30317)
	step
		Use your Water Buckest ability on the Dusty Spots below you |tip They are outlined by a yellow circle.
		Water 35 Dusty Spots |q 30317/1
		only if haveq(30317)
	step
		clicknpc Untilled Soil##58562
		Use your Scallion Seeds on the Tilled Soil |use Scallion Seeds##80591
		Plant Scallion Seeds |q 31671/1 |goto 52.0,48.4
		only if haveq(31671)
	step
		clicknpc Untilled Soil##58562
		Use your Juicycrunch Carrot Seed on the Tilled Soil |use Juicycrunch Carrot Seeds##80590
		Plant 1 Juicycrunch Carrot Seed |q 31670/1 |goto 52.0,48.4
		only if haveq(31670)
	step
		clicknpc Untilled Soil##58562
		Use your Witchberry Seeds on the Tilled Soil |use Witchberry Seeds##89326
		Plant Witchberry Seeds |q 31943/1 |goto 52.0,48.4
		only if haveq(31943)
	step
		clicknpc Untilled Soil##58562
		Use your Mogu Pumpkin Seeds on the Tilled Soil |use Mogu Pumpkin Seeds##80592
		Plant Mogu Pumpkin Seeds |q 31672/1 |goto 52.0,48.4
		only if haveq(31672)
	step
		clicknpc Untilled Soil##58562
		Use your Jade Squash Seeds on the Tilled Soil |use Jade Squash Seeds##89328
		Plant Jade Squash Seeds |q 31941/1 |goto 52.0,48.4
		only if haveq(31941)
	step
		clicknpc Untilled Soil##58562
		Use your White Turnip Seeds on the Tilled Soil |use White Turnip Seeds##80595
		Plant White Turnip Seeds |q 31675/1 |goto 52.0,48.4
		only if haveq(31675)
	step
		clicknpc Untilled Soil##58562
		Use your Pink Turnip Seeds on the Tilled Soil |use Pink Turnip Seeds##80594
		Plant Pink Turnip Seeds |q 31674/1 |goto 52.0,48.4
		only if haveq(31674)
	step
		clicknpc Untilled Soil##58562
		Use your Green Cabbage Seeds on the Tilled Soil |use Green Cabbage Seeds##79102
		Plant Green Cabbage Seeds |q 31669/1 |goto 52.0,48.4
		only if haveq(31669)
	step
		clicknpc Untilled Soil##58562
		Use your Striped Melon Seeds on the Tilled Soil |use Striped Melon Seeds##89329
		Plant Striped Melon Seeds |q 31942/1 |goto 52.0,48.4
		only if haveq(31942)
	step
		clicknpc Untilled Soil##58562
		Use your Red Blossom Leek Seeds on the Tilled Soil |use Red Blossom Leek Seeds##80593
		Plant Red Blossom Leek Seeds |q 31673/1 |goto 52.0,48.4
		only if haveq(31673)
	step
		click Goldenfire Orchid##211025
		collect Goldenfire Orchid##80231 |q 30479/1 |goto 45.9,48.5
		You can also find this here: [41.6,42.8]
		or here: [37.5,37.3]
		only if haveq(30479)
	step
		talk Lost Dog##59533
		accept Lost and Lonely##30526 |goto 42.4,50.0
		only if repval('The Tillers','Revered')>=13000
	step
		talk Gai Lan##57385 |goto 38.5,51.7
		Ask him, "What Weeds?"
		Get the Weed War buff. |havebuff 134185 --Inv_misc_herb_05
		only if haveq(30321)
	step
		clicknpc Ugly Weed##57306
		clicknpc Nasty Weed##57308
		click Weed-B-Gone Gas Bomb##210057
		|tip Use the new button available to you to clear a lot of weeds at once.
		Pull 100 Weeds |q 30321/1
		only if haveq(30321)
	step
		clicknpc Hillpaw's Chicken##58918
		|tip Most of these chickens are disguised animals. When you pick one up click the button that appears on your screen.
		You can deliver lost hens to the chicken coop here [30.4,52.5]
		collect Old Hillpaw's Prize Chicken##80223 |q 30318/1 |goto 31.3,53.2
		only if haveq(30318)
	step
		kill Monstrous Plainshawk##59641
		collect 1 Bloody Plainshawk Leg##80232 |goto 37.4,37.3
		only if haveq(30475)
	step
		talk Wika-Wika##59532 |goto 39.6,45.3
		Mook-mooks?
		Get the Pest Problems buff |havebuff 538518 --spell_nature_insect_swarm2
		only if haveq(30319)
	step
		clicknpc Black-Nose Marmot##59530
		Stomp 25 Black-Nose Marmot |q 30319/1 |goto 39.6,45.3
		only if haveq(30319)
	step
		kill Teeku##59130, Jim-Jim##59128, Jokka-Jokka##59126, Kon-Kon##59127
		Kill the Kunzen-Hunter Chief. |q 30336/1 |goto 30.2,46.0
		only if haveq(30336)
	step
		kill Skyrange Mushan##64309+
		collect 20 Tasty T-Bone##80144 |q 30526/1 |goto 29.2,38.2
		only if haveq(30526)
	step
		click Kunzen Rope
		Burn 6 ropes |q 30327/1 |goto 32.0,32.1
		only if haveq(30327)
	stickystart "yupingsoup"
	step
		click Yu-Ping Soup Cauldron##210873
		collect Yu-Ping Soup##79870 |q 30472/1 |goto 29.7,34.5
		only if haveq(30472)
	step
	label "yupingsoup"
		kill 1 Kunzen Ritualist##59123 |q 30325/3 |goto 29.7,34.5
		click Blazing Ember##210890
		Kick 4 Blazing Ember |q 30325/2 |goto 29.7,34.5
		click Kunzen Ritual Candle##210955
		Throw 8 Kunzen Ritual Candles |q 30325/1 |goto 29.7,34.5
		only if haveq(30325)
	step
		kill Buk-Buk##59133+, Bimba##59135+, Yammo##59134+, Rit-Rit##59132+
		collect 1 Kunzen Legend-Book##79866 |q 30326/1 |goto 31.6,28.7
		only if haveq(30326)
	step
		click Authentic Valley Stir Fry##210803
		collect Authentic Valley Stir Fry##79827 |q 30471/1 |goto 33.6,23.9
		only if haveq(30471)
	step
		clicknpc Yak Statuette##59154
		collect Yak Statuette##79828 |q 30473/1 |goto 34.0,24.1
		only if haveq(30473)
	stickystart "kunzenhozen"
	stickystart "spicyshrimp"
	step
		talk Zidormi##163463
		Ask her _"Can you show me what the Vale was like before the Black Empire assault?"_
		Trave to the Past |complete ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms New/0 80.97,29.48 |q 30337
		only if haveq(30337)
	step
		use Barrel of Fireworks##79885
		Explode the Stolen Tools |q 30337/2 |goto Valley of the Four Winds/0 32.7,30.6
		only if haveq(30337)
	step
		Use the Barrel of Fireworks in your bags |use Barrel of Fireworks##79885
		Stolen weapons exploded |q 30337/1 |goto 30.4,28.1
		only if haveq(30337)
	step
		Use the Barrel of Fireworks in your bags |use Barrel of Fireworks##79885
		Stolen beer exploded |q 30337/3 |goto 32.1,25.9
		only if haveq(30337)
	step
		Use the Barrel of Fireworks in your bags |use Barrel of Fireworks##79885
		Stolen grain exploded |q 30337/4 |goto 35.0,22.0
		only if haveq(30337)
	step
	label "kunzenhozen"
		kill Kunzen Rockflinger##59120+, Kunzen Collector##59124+, Kunzen Ravager##59119+, Kunzen Hunter##59121+
		Kill 12 Kunzen hozen |q 30335/1 |goto 34.2,23.5
		only if haveq(30335)
	step
	label "spicyshrimp"
		click Stolen Vegetable##210768 |only if haveq(30334)
		collect 16 Stolen Vegetable##79824 |q 30334/1 |only if haveq(30334) |goto 34.2,23.5
		kill Kunzen Rockflinger##59120+, Kunzen Collector##59124+, Kunzen Ravager##59119+ |only if haveq(30324) or haveq(30474)
		Kill 8 Kunzen tribe members |q 30324/1 |only if haveq(30324) |goto 34.2,23.5
		collect Spicy Shrimp Dumplings##79871 |q 30474/1 |only if haveq(30474) |goto 34.2,23.5
		only if haveq(30474) or haveq(30334) or haveq(30324)
	step
		kill Enormous Cattail Grouper##59639
		collect Enormous Cattail Grouper Tooth##80228 |q 30477/1 |goto 44.1,29.1
		only if haveq(30477)
	stickystart "uncutchrysoberyl"
	step
		Enter this warren |goto 46.9,21.1 < 5 |walk
		kill Springtail Warren-Mother##59516 |q 30333/1 |goto 48.7,18.7
		only if haveq(30333)
	step
		Leave the warren |goto 46.9,21.1 < 5 |walk
		Enter this warren |goto 44.0,22.3 < 5 |walk
		kill Springtail Littlewhisker##59515+, Springtail Trapper##59513+, Springtail Burrower##59514+
		collect Stolen Circlet##80138 |q 30323/1 |goto 44.7,19.6
		collect Ransacked Ring##80137 |q 30323/2 |goto 44.7,19.6
		collect Buglarized Bracelet##80139 |q 30323/3 |goto 44.7,19.6
		only if haveq(30323)
	step
	label "uncutchrysoberyl"
		Leave the warren |goto 44.0,22.3 < 5 |walk
		This item could be in either warren or the patch of land seperating the two entrances.
		click Chrysoberyl Outcropping##210960
		collect Uncut Chrysoberyl##80134 |q 30470/1
		only if haveq(30470)
	step
		click Freshwater Oyster##211021
		collect Blue Freshwater Pearl## |q 30476/1 |goto 44.2,28.8
		only if haveq(30476)
	step
		talk Lost Dog##59533
		turnin Lost and Lonely##30526 |goto 42.4,50.0
		only if haveq(30526)
	step
		click Yoon's Apples##211020
		collect 8 Yoon's Apple##80234 |goto 52.6,47.8
		only if haveq(30478)
	step
		click Yoon's Craneberries##211022
		collect 50 Yoon's Craneberry##80235 |goto 52.8,47.9
		only if haveq(30478)
	step
		talk Bobo Ironpaw##58717
		Tell him you've got all this fruit here
		collect Apple-Berry Hooch##80236 |q 30478/1 |goto 53.2,52.2
		only if haveq(30478)
	step
		talk Kol Ironpaw##58712
		Ask him if he could grill your plainshawk leg
		collect Grilled Plainshawk Leg##80233 |q 30475/1 |goto 53.0,51.3
		only if haveq(30475)
	step
		talk Farmer Yoon##58646
		turnin The Kunzen Hunter-Chief##30336 |goto 52.25,48.79
		turnin That Dangling Carrot##31670 |goto 52.25,48.79
		turnin Stealing is Bad... Re-Stealing is OK##30334 |goto 52.25,48.79
		turnin The Cabbage Test##31669 |goto 52.25,48.79
		turnin It's Melon Time##31942 |goto 52.25,48.79
		turnin A Pumpkin-y Perfume##31672 |goto 52.25,48.79
		turnin Stalling the Ravage##30335 |goto 52.25,48.79
		turnin Red Blossom Leeks, You Make the Croc-in' World Go Down##31673 |goto 52.25,48.79
		turnin Squash Those Foul Odors##31941 |goto 52.25,48.79
		turnin The Lesser of Two Evils##30333 |goto 52.25,48.79
		turnin The White Turnip Treatment##31675 |goto 52.25,48.79
		turnin The Pink Turnip Challenge##31674 |goto 52.25,48.79
		turnin Which Berries? Witchberries.##31943 |goto 52.25,48.79
		turnin Why Not Scallions?##31671 |goto 52.25,48.79
		turnin Simian Sabotage##30337 |goto 52.25,48.79
		only if not completedq(32682)
	step
		talk Farmer Yoon##58646
		|tip He will only have 1 quest a day.
		turnin The Kunzen Hunter-Chief##30336 |or |goto 53.0,51.8
		turnin Stealing is Bad... Re-Stealing is OK##30334 |or |goto 53.0,51.8
		turnin Stalling the Ravage##30335 |or |goto 53.0,51.8
		turnin The Lesser of Two Evils##30333 |or |goto 53.0,51.8
		turnin Simian Sabotage##30337 |or |goto 53.0,51.8
		only if not completedq(32682)
	step
		talk Farmer Fung##57298
		turnin Water, Water Everywhere##30317 |goto 52.9,51.7
		turnin A Gift For Fung##30475 |only if haveq(30475) |goto 52.9,51.7
	step
		talk Fish Fellreed##58705
		turnin The Kunzen Legend-Chief##30326 |goto 52.8,51.8
		turnin A Gift For Fish##30473 |only if haveq(30473) |goto 52.8,51.8
	step
		talk Ella##58647
		turnin You Have to Burn the Ropes##30327 |goto  53.0,51.7
		turnin A Gift For Ella##30474 |only if haveq(30474) |goto  53.0,51.7
	step
		talk Sho##58708
		turnin Where It Counts##30325 |goto 53.1,52.1
		turnin A Gift For Sho##30472 |only if haveq(30472) |goto 53.1,52.1
	step
		talk Gina Mudclaw##58706
		turnin Money Matters##30322 |goto 53.2,51.8
		turnin A Gift For Gina##30479 |only if haveq(30479) |goto 53.2,51.8
	step
		talk Old Hillpaw##58707
		turnin Chasing the Chicken##30318 |goto 53.1,51.9
		turnin A Gift For Old Hillpaw##30476 |only if haveq(30476) |goto 53.1,51.9
	step
		talk Tina Mudclaw##58761
		turnin A Gift For Tina##30470 |only if haveq(30470) |goto 53.1,51.7
		turnin They Don't Even Wear Them##30323 |goto 53.1,51.7
	step
		talk Haohan Mudclaw##57402
		turnin Pest Problems##30319 |goto 53.0,51.7
		turnin A Gift For Haohan##30477 |only if haveq(30477) |goto 53.0,51.7
	step
		talk Jogu the Drunk##58710
		turnin Weed War II##30321 |goto 53.6,52.5
		turnin A Gift For Jogu##30478 |only if haveq(30478) |goto 53.6,52.5
	step
		talk Chee Chee##58709
		turnin Not in Chee-Chee's Backyard##30324 |goto 53.1,52.1
		turnin A Gift For Chee Chee##30471 |only if haveq(30471) |goto 53.1,52.1
		|next "honored" |only if rep('The Tillers')==Honored
		|next "revered" |only if rep('The Tillers')==Revered
		|next "exalted" |only if rep('The Tillers')==Exalted
		|next "end" |only if rep('The Tillers')<=Friendly
	step
	label "honored"
		talk Farmer Yoon##58646
		accept Growing the Farm I: The Weeds##30260 |goto 52.25,48.79
	step
		Follow the path |goto 50.84,49.23 < 10 |only if walking
		Continue following the path |goto 47.48,52.43 < 10 |only if walking
		Continue following the path |goto 46.76,52.04 < 7 |only if walking
		Continue following the path |goto 45.18,51.93 < 7 |only if walking
		Continue following the path |goto 41.26,50.16 < 10 |only if walking
		talk Gai Lan##57385
		turnin Growing the Farm I: The Weeds##30260 |goto 38.59,51.72
		accept Growing the Farm I: A Little Problem##30516 |goto 38.59,51.72
	step
		Follow the path up |goto 38.45,48.59 < 10 |only if walking
		Continue following the path |goto 37.20,49.07 < 10 |only if walking
		click Spideroot##211117
		collect 6 Spideroot##80122 |q 30516/1 |goto 36.19,51.19
	step
		Follow the path |goto 37.20,49.07 < 10 |only if walking
		Follow the path down |goto 38.45,48.59 < 10 |only if walking
		Follow the path |goto 38.74,49.95 < 10 |only if walking
		talk Gai Lan##57385
		turnin Growing the Farm I: A Little Problem##30516 |goto 38.59,51.72
		|next "revered" |only if rep('The Tillers')>=Revered
		|next |only if default
	step
		When you arrive at Sunsong Ranch you will get a buff. After 15 minutes your ranch will be expanded |goto 51.9,48.3
		|tip You cannot buy your farm upgrade until the expansion is done.
		confirm
		only if not completedq(31936)
	step
		talk Gina Mudclaw##58706
		buy 1 "Jinyu Princess" Irrigation System##89812 |q 31936 |goto 53.2,51.8
	step
		Click the "Jinyu Princess" Irrigation System in your bags. |use "Jinyu Princess" Irrigation System##89812
		accept The "Jinyu Princess" Irrigation System##31936
	step
		talk Farmer Yoon##58646
		turnin The "Jinyu Princess" Irrigation System##31936 |goto 52.3,48.8
		|next "mungmung" |only if repval('The Tillers','Honored')>=5600 and completedq(31936) and not completedq(31946)
		|next "end" |only if default
	step
	label "revered"
		talk Gina Mudclaw##58706 |goto 53.2,51.8
		buy 1 Grand Commendation of the Tillers##93226 |n
		Use the Commendation of the Tillers you just purchased |complete ZGV:GetReputation("The Tillers").hasBonus |use Grand Commendation of the Tillers##93226
		|only if rep("The Tillers")>=Revered
	step
		talk Farmer Yoon##58646
		accept Growing the Farm II: The Broken Wagon##30523 |goto 52.3,48.8
		|next "fung" |only if repval('The Tillers','Revered')>=4200
		|next "mungmung" |only if completedq(31936) and not completedq(31946)
		|only if completedq(30516) and rep('The Tillers')>=Revered
	step
		talk Fish Fellreed##58705
		turnin Growing the Farm II: The Broken Wagon##30523 |goto 41.7,30.0
		accept Growing the Farm II: Knock on Wood##30524 |goto 41.7,30.0
	step
		click Boat Planks##211122
		collect 100 Waxed Plank##80136 |q 30524/1 |goto 42.8,29.1
	step
		talk Fish Fellreed##58705
		turnin Growing the Farm II: Knock on Wood##30524 |goto 41.7,30.0
	step
		When you arrive at Sunsong Ranch you will get a buff. After 15 minutes your ranch will be expanded |goto 51.9,48.3
		|tip You cannot buy your farm upgrade until the expansion is done.
		confirm
		only if not completedq(31937)
	step
		talk Gina Mudclaw##58706
		buy 1 "Thunder King" Pest Repellers##89813 |q 31937 |goto 53.2,51.8
	step
		Click the "Thunder King" Pest Repellers in your bags |use "Thunder King" Pest Repellers##89813
		accept "Thunder King" Pest Repellers##31937
	step
		talk Farmer Yoon##58646
		turnin "Thunder King" Pest Repellers##31937 |goto 52.3,48.8
		|next "end"
	step
	label "mungmung"
		talk Farmer Yoon##58646
		accept Mung-Mung's Vote I: A Hozen's Problem##30258 |goto 52.3,48.8
		|next "fung" |only if completedq(31946)
	step
		talk Mung-Mung##57401
		turnin Mung-Mung's Vote I: A Hozen's Problem##30258 |goto 44.2,34.3
		accept Mung-Mung's Vote II: Rotten to the Core##30259 |goto 44.2,34.3
	step
		click Partially Chewed Carrot##210942
		collect 10 Partially Chewed Carrot##80116 |q 30259/1 |goto 42.7,38.2
	step
		talk Mung-Mung##57401
		turnin Mung-Mung's Vote II: Rotten to the Core##30259 |goto 44.2,34.3
		accept Mung-Mung's Vote III: The Great Carrot Caper##31946 |goto 44.2,34.3
	step
		talk Merchant Greenfield##58718
		buy 2 Juicycrunch Carrot Seeds##80590 |q 31946 |goto 52.9,52.1
	step
		clicknpc Untilled Soil##58562
		Use your Juicycrunch Carrot Seeds on the Tilled Soil |use Juicycrunch Carrot Seeds##80590
		Plant 2 Juicycrunch Carrot Seeds |q 31946/1 |goto 52.0,48.4
	step
		Wait a day for the carrots to grow and then harvest them.
		Harvest 2 Ripe Juicycrunch Carrots |q 31946/2
		collect 10 Juicycrunch Carrot##74841 |q 31946/3
	step
		talk Mung-Mung##57401
		turnin Mung-Mung's Vote III: The Great Carrot Caper##31946 |goto 44.2,34.3
		|next "end"
	step
	label "fung"
		talk Farmer Yoon##58646
		accept Farmer Fung's Vote I: Yak Attack##30517 |goto 52.3,48.8
		|next "nana" |only if repval('The Tillers','Revered')>=8400
		Click here if this quest is not available yet |confirm |next "end"
	step
		talk Farmer Fung##57298
		turnin Farmer Fung's Vote I: Yak Attack##30517 |goto 48.3,33.9
		accept Farmer Fung's Vote II: On the Loose##30518 |goto 48.3,33.9
	step
		clicknpc Escaped Shagskin##59491
		Ride 5 Escaped Shagskin to [50.4,34.7] |q 30518/1 |goto 51.0,36.7
	step
		talk Farmer Fung##57298
		turnin Farmer Fung's Vote II: On the Loose##30518 |goto 48.3,33.9
		accept Farmer Fung's Vote III: Crazy For Cabbage##31947 |goto 48.3,33.9
	step
		talk Merchant Greenfield##58718
		buy 3 Green Cabbage Seeds##79102 |q 31947 |goto 52.9,52.1
	step
		clicknpc Untilled Soil##58562
		Use your Green Cabbage Seeds on the Tilled Soil |use Green Cabbage Seeds##79102
		Plant 3 Green Cabbage Seeds |q 31947/1 |goto 52.0,48.4
	step
		Wait a day for the Green Cabbage to grow and then harvest them
		Harvest 3 Green Cabbage |q 31947/2
		collect 15 Green Cabbage##74840 |q 31947/3
	step
		talk Farmer Fung##57298
		turnin Farmer Fung's Vote III: Crazy For Cabbage##31947 |goto 48.3,33.9
	step
	label "nana"
		talk Farmer Yoon##58646
		accept Nana's Vote I: Nana's Secret Recipe##30519 |goto 52.2,48.8
		|next "haohan" |only if repval('The Tillers','Revered')>=16800
		Click here if this quest is not available yet |confirm |next "end"
	step
		talk Nana Mudclaw##64597
		turnin Nana's Vote I: Nana's Secret Recipe##30519 |goto 54.7,47.0
		accept Nana's Vote II: The Sacred Springs##31948 |goto 54.7,47.0
	step
		kill Thousand-Year Guardian##66850+
		You may have to kill the Guardian first, then collect the water
		Use the Empty Pitcher while standing under the waterfall |use Empty Pitcher##89902
		Thousand-Year Water |q 31948/1 |goto 56.7,21.7
	step
		talk Nana Mudclaw##64597
		turnin Nana's Vote II: The Sacred Springs##31948 |goto 54.7,47.0
		accept Nana's Vote III: Witchberry Julep##31949 |goto 54.7,47.0
	step
		talk Merchant Greenfield##58718
		buy 3 Witchberry Seeds##89326 |q 31949 |goto 52.9,52.1
	step
		clicknpc Untilled Soil##58562
		Use your Witchberry Seeds on the Tilled Soil |use Witchberry Seeds##89326
		Plant 3 Witchberry Seeds |q 31949/1 |goto 52.0,48.4
		only if haveq(31949)
	step
		Wait a day for the Witchberries to grow and then harvest them.
		Harvest 3 Witchberries |q 31949/2
		collect 15 Witchberries##74846 |q 31949/3
	step
		talk Nana Mudclaw##64597
		turnin Nana's Vote III: Witchberry Julep##31949 |goto 54.7,47.0
	step
	label "haohan"
		talk Farmer Yoon##58646
		accept Haohan's Vote I: Bungalow Break-In##30521 |goto 52.2,48.8
		Click here if this quest is not available yet |confirm |next "end"
	step
		talk Haohan Mudclaw##57402
		turnin Haohan's Vote I: Bungalow Break-In##30521 |goto 44.6,34.1
		accept Haohan's Vote II: The Real Culprits##30522 |goto 44.6,34.1
	step
		clicknpc Muddy Tracks##52171
		Investigate 8 Suspicious Footprints. |q 30522/1 |goto 39.4,43.6
		|tip When you click the eighth footprint a hozen will attack you.
	step
		talk Farmer Yoon##58646
		turnin Haohan's Vote II: The Real Culprits##30522 |goto 52.2,48.8
		accept Haohan's Vote III: Pure Poison##30525 |goto 52.2,48.8
	step
		Enter this warren |goto 47.0,20.9 < 5 |walk
		click Cave Lily##210969
		collect Cave Lily##80141 |q 30525/2
	step
		Leave this warren |goto 47.0,20.9 < 5 |walk
		Enter this warren |goto 44.0,22.2 < 5 |walk
		click Bloodbloom##210968
		collect Bloodbloom##80140 |q 30525/1
	step
		Leave this warren |goto 44.0,22.2 < 5 |walk
		click Violet Lichen##210971
		collect Violet Lichen##80143 |q 30525/4 |goto 42.5,22.3
	step
		Enter this warren |goto 39.4,20.4 < 5 |walk
		click Ghostcap##210970
		collect Ghostcap##80142 |q 30525/3
	step
		Leave this warren |goto 39.4,20.4 < 5 |walk
		talk Farmer Yoon##58646
		turnin Haohan's Vote III: Pure Poison##30525 |goto 52.2,48.8
		accept Haohan's Vote IV: Melons For Felons##30527 |goto 52.2,48.8
	step
		talk Merchant Greenfield##58718
		buy 4 Striped Melon Seeds##89329 |q 30527 |goto 52.9,52.1
	step
		clicknpc Untilled Soil##58562
		Use your Striped Melon Seeds on the Tilled Soil |use Striped Melon Seeds##89329
		Plant 4 Striped Melon Seeds |q 30527/1 |goto 52.0,48.4
	step
		Wait a day for the Striped Melons to grow and then harvest them.
		Harvest 4 Striped Melons |q 30527/2
		collect 20 Striped Melon##74848 |q 30527/3
	step
		talk Farmer Yoon##58646
		turnin Haohan's Vote IV: Melons For Felons##30527 |goto 52.2,48.8
		accept Haohan's Vote V: Chief Yip-Yip##30528 //20000 Revered? |goto 52.2,48.8
	step
		Enter the cave here |goto 33.1,20.2 < 5 |walk
		kill Chief Yip-Yip##59567 |q 30528/1 |goto 32.4,20.6
		Use the _Throw Melon_ button on your screen when he begins casting _Charging Up_. This will cause him to stop attacking and take increased damage for a few seconds
	step
		talk Farmer Yoon##58646
		turnin Haohan's Vote V: Chief Yip-Yip##30528 |goto 52.2,48.8
	step
		After some talking, the Offering Bowl should light up for you to click.
		click Offering Bowl##241877 |goto 52.0,49.0
		confirm
		|next "end"
	step
	label "exalted"
		talk Farmer Yoon##58646
		accept Growing the Farm III: The Mossy Boulder##30529 |goto 52.2,48.8
		Click here if this quest is not available yet |confirm |next "end"
		|next |only if default
	step
		talk Haohan Mudclaw##57402
		turnin Growing the Farm III: The Mossy Boulder##30529 |goto 44.6,34.1
	step
		When you arrive at Sunsong Ranch you will get a buff. After 15 minutes your ranch will be expanded |goto 51.9,48.3
		|tip You cannot buy your farm upgrade until the expansion is done.
		confirm
		only if not completedq(31938)
	step
		talk Gina Mudclaw##58706
		buy 1 "Earth-Slasher" Master Plow##89814 |q 31938 |goto 53.2,51.8
	step
		Click the "Earth-Slasher" Master Plow in your bags. |use "Earth-Slasher" Master Plow##89814
		accept The "Earth-Slasher" Master Plow##31938
	step
		talk Farmer Yoon##58646
		turnin The "Earth-Slasher" Master Plow##31938 |goto 52.3,48.8
	step
		talk Nana Mudclaw##64597
		accept Inherit the Earth##32682 |goto Valley of the Four Winds 54.7,47.0
		only if rep('The Tillers')==Exalted and not completedq(32682)
	step
		talk Farmer Yoon##58646
		Ask him if he will join the council of the Tillers Union. |q 32682/1 |goto Valley of the Four Winds 52.2,48.8
		only if rep('The Tillers')==Exalted and not completedq(32682)
	step
		talk Nana Mudclaw##64597
		turnin Inherit the Earth##32682 |goto Valley of the Four Winds 54.7,47.0
		|tip This quest opens up the farm to you, granting you a place to rest and set your hearthstone, as well as opening up new quests known as work orders that allow you to gain reputation with other factions through farming.
		only if rep('The Tillers')==Exalted and not completedq(32682)
	step
		click Tillers Shrine##215705
		accept A Second Hand##30534 |goto 52.0,49.0
	step
		For this quest you must be _Best Friends_ with one of the 10 Tiller NPCs. Please refer to the Reputations guides for assistance in gaining rep for an individual
		confirm
	step
		Go to your _Best Friend's_ home
		Ask them: <Friend>, how'd you like to help us run the farm? |q 30534/1
	step
		click Tillers Shrine##215705
		turnin A Second Hand##30534 |goto 52.0,49.0
	step
	label "end"
		The last thing to do with The Tillers each day is to plant as many crops as your farm can hold. Each crop harvest will award reputation so do this every day
		Click here to go back to the beginning of the dailies section |next "dailies" |confirm
]])

---------------------------
----- Wyrmrest Accord -----
---------------------------

ZygorGuidesViewer:RegisterInclude("WAccord_Quests",[[
		talk Image of Archmage Aethas Sunreaver##26471
		accept Rifle the Bodies##12000 |goto Dragonblight 29.0,55.4
	step
		Loot the Dead Mage Hunter bodies on the ground
		collect Mage Hunter Personal Effects##35792+ |n
		Use the Mage Hunter Personal Effects bags |use Mage Hunter Personal Effects##35792
		collect Moonrest Gardens Plans##35783 |q 12000/1 |goto 22.3,54.1
	step
		talk Image of Archmage Modera##26673
		turnin Rifle the Bodies##12000 |goto 29.0,55.4
		accept Prevent the Accord##12004 |goto 29.0,55.4
	step
		kill Wind Trader Mu'fah##26496
		collect Wind Trader Mu'fah's Remains##35800 |q 12004/1 |goto 18.4,58.9
	step
		Go inside the building |goto Dragonblight 19.4,58.1 < 10 |walk
		kill Goramosh##26349
		collect The Scales of Goramosh##35801 |q 12004/2
		collect Goramosh's Strange Device##36746 |n
		Click Goramosh's Strange Device |use Goramosh's Strange Device##36746
		accept A Strange Device##12055
	step
		talk Image of Archmage Modera##26673
		turnin A Strange Device##12055 |goto 29.0,55.4
		turnin Prevent the Accord##12004 |goto 29.0,55.4
		accept Projections and Plans##12060 |goto 29.0,55.4
	step
		Use your Surge Needle Teleporter anywhere inside Moonrest Gardens |use Surge Needle Teleporter##36747
		Move toward the center of the platform you get teleported onto
		Observe the Object on the Surge Needle |goal Object on the Surge Needle observed |q 12060/1 |goto 22.2,54.8
	step
		Use your Surge Needle Teleporter to go back down to the ground |use Surge Needle Teleporter##36747 |goto 22.6,57.0 |noway |c
	step
		talk Image of Archmage Modera##26673
		turnin Projections and Plans##12060 |goto 29.0,55.4
		accept The Focus on the Beach##12065 |goto 29.0,55.4
	step
		kill Captain Emmy Malin##26762
		collect Ley Line Focus Control Ring##36751 |n
		Use the Ley Line Focus Control Ring next to the half-circle |use Ley Line Focus Control Ring##36751
		|tip It's a big half-circle purple glowing thing.
		Retrieve ley line focus information |goal Ley line focus information retrieved |q 12065/1 |goto 26.4,65
	step
		talk Image of Archmage Modera##26673
		turnin The Focus on the Beach##12065 |goto 29.0,55.4
		accept Atop the Woodlands##12083 |goto 29.0,55.4
	step
		kill Lieutenant Ta'zinni##26815
		collect Ley Line Focus Amulet##36779 |n
		confirm |only if not completedq(12083)
		collect Lieutenant Ta'zinni's Letter##36780 |n |only if not completedq(12083)
		Click Lieutenant Ta'zinni's Letter |use Lieutenant Ta'zinni's Letter##36780 |only if not completedq(12083)
		accept A Letter for Home##12067 |only if not completedq(12083) |goto 32.2,70.6
	step
		Use your Ley Line Focus Control Amulet on the Ley Line Focus |use Ley Line Focus Control Amulet##36779
		|tip It's a big half-circle purple glowing thing.
		Retrieve Ley Line Focus information |goal Ley line focus information retrieved |q 12083/1 |goto 32.2,71.2
	step
		talk Image of Archmage Modera##26673
		turnin Atop the Woodlands##12083 |goto 29.0,55.4
		accept Search Indu'le Village##12098 |goto 29.0,55.4
	step
		talk Commander Saia Azuresteel##26459
		turnin A Letter for Home##12067 |only if not completedq(12083) |goto 29,55.5
	step
		Click Mage-Commander Evenstar's body floating underwater
		turnin Search Indu'le Village##12098 |goto 40.3,66.9
		accept The End of the Line##12107 |goto 40.3,66.9
	step
		Use your Ley Line Focus Control Talisman on the Ley Line Focus |use Ley Line Focus Control Talisman##36815
		|tip It's a big half-circle purple glowing thing underwater.
		Retrieve Ley Line Focus information |goal Ley Line Focus information retrieved |q 12107/1 |goto 39.8,66.9
	step
		Go to this spot on the cliff to Observe Azure Dragonshrine |goal Azure Dragonshrine observed |q 12107/2 |goto 53,66.4
	step
		talk Image of Archmage Modera##26673
		turnin The End of the Line##12107 |goto 29.0,55.4
		accept Gaining an Audience##12119 |goto 29.0,55.4
	step
		talk Tariolstrasz##26443
		turnin Gaining an Audience##12119 |goto 57.9,54.2
		accept Speak with your Ambassador##12766 |goto 57.9,54.2
	step
		talk Lauriel Trueblade##27803
		turnin Speak with your Ambassador##12766 |goto Dragonblight/0 60.0,55.1
		accept Report to the Ruby Dragonshrine##12461 |goto Dragonblight/0 60.0,55.1
	step
		talk Ceristrasz##27506
		turnin Report to the Ruby Dragonshrine##12461 |goto Dragonblight/0 52.2,50.0
		accept Heated Battle##12416 |goto Dragonblight/0 52.2,50.0
	step
		Help kill the following:
		12 Frigid Ghoul Attackers |kill 12 Frigid Ghoul Attacker |q 12448/1 |goto Dragonblight/0 50.4,52.2
		8 Frigid Geist Attackers |kill 8 Frigid Geist Attacker |q 12448/2 |goto Dragonblight/0 50.4,52.2
		1 Frigid Abomination Attacker |kill 1 Frigid Abomination Attacker |q 12448/3 |goto Dragonblight/0 50.4,52.2
	step
		talk Ceristrasz##27506
		turnin Heated Battle##12416 |goto Dragonblight/0 52.2,50.0
		accept Return to the Earth##12449 |goto Dragonblight/0 52.2,50.0
	step
		Click the Ruby Acorns
		|tip The Ruby Acorns look like red stones on the ground around this area.
		collect 6 Ruby Acorn##37727 |n
		Use the Ruby Acorns on the Ruby Keeper corpses |use Ruby Acorn##37727
		|tip The Ruby Keepers look like huge red dragons on fire.
		Return 6 Ruby Keepers to the Earth |goal 6 Ruby Keeper Returned to the Earth |q 12449/1 |goto 46.7,52.8
	step
		talk Ceristrasz##27506
		turnin Return to the Earth##12449 |goto Dragonblight/0 52.2,50.0
		accept Through Fields of Flame##12450 |goto Dragonblight/0 52.2,50.0
	step
		Go into the valley to 48.2,47.8 |goto 48.2,47.8
		kill 6 Frigid Necromancer |q 12450/1
	step
		Go into the tree trunk to 47.7,49.1 |goto 47.7,49.1
		kill Dahlia Suntouch##27680
		Cleanse the Ruby Corruption |goal Ruby Corruption Cleansed |q 12450/2
	step
		talk Ceristrasz##27506
		turnin Through Fields of Flame##12450 |goto Dragonblight/0 52.2,50.0
		accept The Steward of Wyrmrest Temple##12768 |goto Dragonblight/0 52.2,50.0
	step
		talk Tariolstrasz##26443
		turnin The Steward of Wyrmrest Temple##12768 |goto 57.9,54.2
		accept Informing the Queen##12123 |goto 57.9,54.2
	step
		talk Tariolstrasz##26443 |goto 57.9,54.2
		Tell him you want to go to the top of the temple |goto 59.7,53.1 < 10 |noway |c
	step
		talk Alexstrasza the Life-Binder##26917
		turnin Informing the Queen##12123 |goto 59.8,54.7
		accept Report to Lord Devrestrasz##12435 |goto 59.8,54.7
	step
		talk Torastrasza##26949 |goto 59.5,53.3
		Tell him you want to go to Lord Afrasastrasz |goto 59.2,54.3 < 10 |noway |c
]])

ZygorGuidesViewer:RegisterInclude("WAccord_Dailies", [[
		talk Lord Afrasastrasz##27575
		turnin Report to Lord Devrestrasz##12435 |goto Dragonblight 59.2,54.3
		accept Defending Wyrmrest Temple##12372 |goto Dragonblight 59.2,54.3
	step
		talk Wyrmrest Defender##27629
		Tell him you are ready to get into the fight
		Fly around Wyrmrest Temple fighting the blue dragons in the sky using your abilities on your hotbar
		kill 3 Azure Dragon |q 12372/1 |goto 58.3,55.2
		kill 5 Azure Drake |q 12372/2 |goto 58.3,55.2
	step
		Fly southwest to 55.1,66.4 |goto 55.1,66.4
		Fly into the huge purple swirling column
		Use your Destabilize Azure Dragonshrine ability |petaction Destabilize Azure Dragonshrine
		Destabilize the Azure Dragonshrine |q 12372/3
	step
		goto 58.7,54.5 |n
		Click the red arrow to get off the dragon on the middle level of the temple |script VehicleExit() |outvehicle |c
	step
		talk Lord Afrasastrasz##27575
		turnin Defending Wyrmrest Temple##12372 |goto 59.2,54.3
]])

ZygorGuidesViewer:RegisterInclude("A_Beasts_of_Fable_D",[[
		talk Sara Finkleswitch##64572
		accept Beasts of Fable Book I##32604 |goto Vale of Eternal Blossoms 86.6,60.0
		accept Beasts of Fable Book II##32868 |goto Vale of Eternal Blossoms 86.6,60.0
		accept Beasts of Fable Book III##32869 |goto Vale of Eternal Blossoms 86.6,60.0
		accept Pandaren Spirit Tamer##32428 |only if not completedq(32428) |goto Vale of Eternal Blossoms 86.6,60.0
	step
		_No-No_
		This enemy is aquatic
		It is strong against undead and weak to flying attacks
		I would suggest that you use flying pets against this enemy
		Defeat No-No |q 32869/2 |goto Vale of Eternal Blossoms 11.0,70.9
	step
		_Lucky Yi_
		This enemy is a critter
		Is is strong against Elementals and weak to beast attacks
		I would suggest using beast pets against this enemy
		Defeat Lucky Yi |q 32868/2 |goto Valley of the Four Winds 40.5,43.7
	step
		_Greyhoof_
		This enemy is a beast
		It is strong against humanoids and weak against mechanical pets
		I would suggest using a team of mechanical pets against this enemy
		Defeat Greyhoof |q 32868/1 |goto Valley of the Four Winds 25.3,78.5
	step
		_Skitterer Xi'a_
		This enemy is aquatic
		It is strong against undead and weak to flying pets
		I would suggest using flying pets against this enemy
		Defeat Xi'a |q 32868/3 |goto Krasarang Wilds 36.3,37.3
	step
		_Flowing Pandaren Spirit_
		This enemy uses aquatic and elemental pets
		They are strong against undead and mechanical and weak to flying and aquatic pets
		I would suggest using flying and aquatic pets against this enemy
		Defeat Flowing Pandaren Spirit |q 32428/4 |goto Dread Wastes 61.1,87.5
		only if haveq(32428)
	step
		talk Flowing Pandaren Spirit##68462
		accept Flowing Pandaren Spirit##32439 |goto Dread Wastes 61.1,87.5
		only if completedq(32428)
	step
		_Flowing Pandaren Spirit_
		This enemy uses aquatic and elemental pets
		They are strong against undead and mechanical and weak to flying and aquatic pets
		I would suggest using flying and aquatic pets against this enemy
		Defeat Flowing Pandaren Spirit |q 32439/1 |goto Dread Wastes 61.1,87.5
		only if haveq(32439)
	step
		talk Flowing Pandaren Spirit##68462
		turnin Flowing Pandaren Spirit##32439 |goto Dread Wastes 61.1,87.5
		only if haveq(32439)
	step
		_Gorespine_
		This enemy is a beast
		They are strong against undead and mechanical and weak to flying and aquatic pets
		I would suggest using flying and aquatic pets against this enemy
		Defeat Gorespine |q 32869/1 |goto Dread Wastes 26.1,50.2
	step
		_Ti'un the Wanderer_
		This enemy is aquatic
		It is strong against undead and weak to flying pets
		I would suggest using flying pets against this enemy
		Defeat Ti'un the Wanderer |q 32869/3 |goto Townlong Steppes 72.3,79.8
	step
		_Burning Pandaren Spirit_
		This enemy uses a dragonkin, flying and elemental pet
		They are strong against flying, beast, and mechanical pets, respectively
		They are weak against humanoid, magic, and aquatic pets, respectively
		I would suggest using a humanoid, magic, and aquatic pet against this enemy
		Defeat Burning Pandaren Spirit |quest 32428/1 |goto Townlong Steppes 57.1,42.1
		only if haveq(32428)
	step
		talk Burning Pandaren Spirit##68463
		accept Burning Pandaren Spirit##32434 |goto Townlong Steppes 57.1,42.1
		only if completedq(32428)
	step
		_Burning Pandaren Spirit_
		This enemy uses a dragonkin, flying and elemental pet
		They are strong against flying, beast, and mechanical pets, respectively
		They are weak against humanoid, magic, and aquatic pets, respectively
		I would suggest using a humanoid, magic, and aquatic pet against this enemy
		Defeat Burning Pandaren Spirit |quest 32434/1 |goto Townlong Steppes 57.1,42.1
		only if haveq(32434)
	step
		talk Burning Pandaren Spirit##68463
		turnin Burning Pandaren Spirit##32434 |goto Townlong Steppes 57.1,42.1
		only if haveq(32434)
	step
		_Kafi_
		This enemy is a beast
		It is strong against humanoids and weak against mechanical pets
		I would suggest using a team of mechanical pets against this enemy
		Defeat Kafi |q 32604/2 |goto Kun-Lai Summit 35.2,56.2
	step
		_Thundering Pandaren Spirit_
		This enemy uses a beast, elemental, and magic pet
		They are strong against humanoids, mechanical, and aquatic pets, respectively
		They are weak against mechanical, aquatic, and dragonkin pets, respectively
		I would suggest using a mechanical, aquatic, and dragonkin pet against this enemy
		Defeat Thundering Pandaren Spirit |q 32428/2 |goto Kun-Lai Summit 64.9,93.8
		only if haveq(32428)
	step
		talk Thundering Pandaren Spirit##68465
		accept Thundering Pandaren Spirit##32441 |goto Kun-Lai Summit 64.9,93.8
		only if completedq(32428)
	step
		_Thundering Pandaren Spirit_
		This enemy uses a beast, elemental, and magic pet
		They are strong against humanoids, mechanical, and aquatic pets, respectively
		They are weak against mechanical, aquatic, and dragonkin pets, respectively
		I would suggest using a mechanical, aquatic, and dragonkin pet against this enemy
		Defeat Thundering Pandaren Spirit |q 32441/1 |goto Kun-Lai Summit 64.9,93.8
		only if haveq(32441)
	step
		talk Thundering Pandaren Spirit##68465
		turnin Thundering Pandaren Spirit##32441 |goto Kun-Lai Summit 64.9,93.8
		only if haveq(32441)
	step
		_Dos-Ryga_
		This enemy is aquatic
		It is strong against undead and weak to flying pets
		I would suggest using flying pets against this enemy
		Defeat Dos-Ryga |q 32604/3 |goto Kun-Lai Summit 67.9,84.7
	step
		_Whispering Pandaren Spirit_
		This enemy uses a flying, elemental, and dragonkin pet
		They are strong against beast, mechanical, and flying pets, respectively
		They are weak against magic, aquatic, and humanoid pets, respectively
		I would suggest using a magic, aquatic, and humanoid pet against this enemy
		Defeat Whispering Pandaren Spirit |q 32428/3 |goto The Jade Forest 28.9,36
		only if haveq(32428)
	step
		talk Whispering Pandaren Spirit##68464
		accept Whispering Pandaren Spirit##32440 |goto The Jade Forest 28.9,36
		only if completedq(32428)
	step
		_Whispering Pandaren Spirit_
		This enemy uses a flying, elemental, and dragonkin pet
		They are strong against beast, mechanical, and flying pets, respectively
		They are weak against magic, aquatic, and humanoid pets, respectively
		I would suggest using a magic, aquatic, and humanoid pet against this enemy
		Defeat Whispering Pandaren Spirit |q 32440/1 |goto The Jade Forest 28.9,36
		only if haveq(32440)
	step
		talk Whispering Pandaren Spirit##68464
		turnin Whispering Pandaren Spirit##32440 |goto The Jade Forest 28.9,36
		only if haveq(32440)
	step
		_Ka'wi the Gorger_
		This enemy is a critter
		Is is strong against Elementals and weak to beast attacks
		I would suggest using a team of mechanical pets against this enemy
		Defeat Ka'wi the Gorger |q 32604/1 |goto The Jade Forest 48.4,71.0
	step
		_Nitun_
		This enemy is a critter
		Is is strong against Elementals and weak to beast attacks
		I would suggest using beast pets against this enemy
		Defeat Nitun |q 32604/4 |goto The Jade Forest 57.0,29.1
	step
		talk Sara Finkleswitch##64572
		turnin Beasts of Fable Book I##32604 |goto Vale of Eternal Blossoms 86.6,60.0
		turnin Beasts of Fable Book II##32868 |goto Vale of Eternal Blossoms 86.6,60.0
		turnin Beasts of Fable Book III##32869 |goto Vale of Eternal Blossoms 86.6,60.0
		turnin Pandaren Spirit Tamer##32428 |only if not completedq(32428) |goto Vale of Eternal Blossoms 86.6,60.0
]])

-------------------------
----- World  Quests -----
-------------------------

-- LEGION
ZygorGuidesViewer:RegisterInclude("Legion_Choose_World_Quests",[[
		Choose a World Quest to Complete |confirm
		|tip With the "World Quests" guide loaded, open your world map.
		|tip Left-click on a world quest icon to select that world quest.
		|tip The guide will automatically load the steps for that world quest.
		'|confirm |next "Court_of_Farondis_WQ" |complete readyq(42420) and not ZGV.WorldQuests:QuestsQueued()
		'|confirm |next "Dreamweavers_WQ" |complete readyq(42170) and not ZGV.WorldQuests:QuestsQueued()
		'|confirm |next "Highmountain_Tribe_WQ" |complete readyq(42233) and not ZGV.WorldQuests:QuestsQueued()
		'|confirm |next "Valarjar_WQ" |complete readyq(42234) and not ZGV.WorldQuests:QuestsQueued()
		'|confirm |next "Nightfallen_WQ" |complete readyq(42421) and not ZGV.WorldQuests:QuestsQueued()
		'|confirm |next "Wardens_WQ" |complete readyq(42422) and not ZGV.WorldQuests:QuestsQueued()
		'|confirm |next "Kirin_Tor_WQ" |complete readyq(43179) and not ZGV.WorldQuests:QuestsQueued()
		'|confirm |next "Armies_of_Legionfall_WQ" |complete readyq(48641) and not ZGV.WorldQuests:QuestsQueued()
		'|confirm |next "Argussian_Reach_WQ" |complete readyq(48642) and not ZGV.WorldQuests:QuestsQueued()
		'|confirm |next "Army_of_the_Light_WQ" |complete readyq(48639) and not ZGV.WorldQuests:QuestsQueued()
		|worldquestqueue
]])

ZygorGuidesViewer:RegisterInclude("Legion_World_Quest_Emissaries",[[
		-- if we are running queued world quests, do not move to emissary turnins
		'|confirm |next "Choose_World_Quest" |complete true |only if ZGV.WorldQuests:QuestsQueued()
	step
	label "Court_of_Farondis_WQ"
		talk Veridis Fallon##107376
		|tip Inside the building.
		turnin Court of Farondis##42420 |goto Azsuna/0 46.90,41.43
		|only if readyq(42420)
	step
		talk Veridis Fallon##107376
		|tip Inside the building.
		turnin Supplies From the Court##46745 |goto Azsuna/0 46.90,41.43
		|only if haveq(46745)
	step
	label "Dreamweavers_WQ"
		talk Sylvia Hartshorn##106901
		turnin The Dreamweavers##42170 |goto Val'sharah/0 54.70,73.25
		|only if readyq(42170)
	step
		talk Sylvia Hartshorn##106901
		turnin Supplies From the Dreamweavers##46747 |goto Val'sharah/0 54.70,73.25
		|only if haveq(46747)
	step
	label "Highmountain_Tribe_WQ"
		talk Ransa Greyfeather##106902
		turnin Highmountain Tribes##42233 |goto Thunder Totem/0 38.06,46.04
		|only if readyq(42233)
	step
		talk Ransa Greyfeather##106902
		turnin Supplies From Highmountain##46743 |goto Thunder Totem/0 38.06,46.04
		|only if haveq(46743)
	step
	label "Valarjar_WQ"
		talk Valdemar Stormseeker##106904
		turnin The Valarjar##42234 |goto Stormheim/0 60.26,51.38
		|only if readyq(42234)
	step
		talk Valdemar Stormseeker##106904
		turnin Supplies From the Valarjar##46746 |goto Stormheim/0 60.26,51.38
		|only if haveq(46746)
	step
	label "Nightfallen_WQ"
		talk First Arcanist Thalyssra##97140
		turnin The Nightfallen##42421 |goto Suramar/0 36.88,46.61 |region suramar_shalaran
		|only if readyq(42421)
	step
		talk First Arcanist Thalyssra##97140
		turnin Supplies From the Nightfallen##46748 |goto Suramar/0 36.88,46.61 |region suramar_shalaran
		|only if haveq(46748)
	step
	label "Wardens_WQ"
		talk Marin Bladewing##107379
		turnin The Wardens##42422 |goto Azsuna/0 48.17,73.90
		|only if readyq(42422)
	step
		talk Marin Bladewing##107379
		turnin Supplies From the Wardens##46749 |goto Azsuna/0 48.17,73.90
		|only if haveq(46749)
	step
	label "Kirin_Tor_WQ"
		talk Warmage Silva##32725
		turnin The Kirin Tor of Dalaran##43179 |goto Dalaran L/10 33.44,47.35
		|only if readyq(43179)
	step
	label "Armies_of_Legionfall_WQ"
		talk Commander Chambers##120183
		turnin Armies of Legionfall##48641 |goto Broken Shore/0 44.54,63.15
		|only if readyq(48641)
	step
		talk Captain Ruysantos##120414
		turnin The Bounties of Legionfall##46777 |goto Broken Shore/0 42.13,58.84
		|only if haveq(46777)
	step
	label "Argussian_Reach_WQ"
		talk Toraan the Revered##127151
		#include "Toraan_the_Revered"
		|only if readyq(48642)
	step
		talk Toraan the Revered##127151
		#include "Toraan_the_Revered_Paragon"
		|only if haveq(48976)
	step
	label "Army_of_the_Light_WQ"
		talk Vindicator Jaelaana##127120
		#include "Vindicator_Jaelaana"
		|only if readyq(48639)
	step
		talk Vindicator Jaelaana##127120
		#include "Vindicator_Jaelaana_Paragon"
		|only if haveq(48977)
	step
		|next "Choose_World_Quest"
]])

-- BATTLE FOR AZEROTH
ZygorGuidesViewer:RegisterInclude("BFA_Choose_World_Quests",[[
		Choose a World Quest to Complete |confirm
		|tip With the "World Quests" guide loaded, open your world map.
		|tip Left-click on a world quest icon to select that world quest.
		|tip The guide will automatically load the steps for that world quest.
		'|confirm |next "Tortollan_Seekers_WQ" |complete (readyq(50604) or readyq(54451)) and not ZGV.WorldQuests:QuestsQueued()
		'|confirm |next "Alliance_War_Effort_WQ" |complete (readyq(50605) or readyq(54454)) and not ZGV.WorldQuests:QuestsQueued()
		'|confirm |next "Order_of_Embers_WQ" |complete (readyq(50600) or readyq(54456)) and not ZGV.WorldQuests:QuestsQueued()
		'|confirm |next "Proudmoore_Admiralty_WQ" |complete (readyq(50599) or readyq(54458)) and not ZGV.WorldQuests:QuestsQueued()
		'|confirm |next "Storms_Wake_WQ" |complete (readyq(50601) or readyq(54457)) and not ZGV.WorldQuests:QuestsQueued()
		'|confirm |next "Champions_of_Azeroth_WQ" |complete (readyq(50562) or readyq(54453)) and not ZGV.WorldQuests:QuestsQueued()
		'|confirm |next "Nevin_Tideheart_Turnin" |complete (readyq(55663) or readyq(55768)) and not ZGV.WorldQuests:QuestsQueued()
		'|confirm |next "Lieutenant_Hawkins_Turnin" |complete (readyq(55845) or readyq(55777) or readyq(55770) or readyq(55776) or readyq(55773) or readyq(55775) or readyq(55774) or readyq(55772) or readyq(55750) or readyq(55771)) and not ZGV.WorldQuests:QuestsQueued()
		'|confirm |next "The_Ankoan_WQ" |complete (readyq(56119) or readyq(55976)) and not ZGV.WorldQuests:QuestsQueued()
		'|confirm |next "Rustbolt_Resistance_WQ" |complete readyq(55348) and not ZGV.WorldQuests:QuestsQueued()
		'|confirm |next "Rajani_WQ" |complete readyq(58096) and not ZGV.WorldQuests:QuestsQueued()
		'|confirm |next "Uldum_Accord_WQ" |complete readyq(58097) and not ZGV.WorldQuests:QuestsQueued()
		'|confirm |next "Nazjatar_Battle_Pet_Drop_Q" |complete (haveq(56444,56446,56447,56448,56449,56450,56451,56452,56453,56454,56455,56456)) and not ZGV.WorldQuests:QuestsQueued()
		'|confirm |next "Mechagon_Battle_Pet_Drop_Q" |complete (haveq(56437,56443,56442,56440,56441,56438,56439,56436)) and not ZGV.WorldQuests:QuestsQueued()
		|worldquestqueue
]])

ZygorGuidesViewer:RegisterInclude("BFA_World_Quest_Emissaries",[[
		-- if we are running queued world quests, do not move to emissary turnins
		'|confirm |next "Choose_World_Quest" |complete true |only if ZGV.WorldQuests:QuestsQueued()
	step
	label "Tortollan_Seekers_WQ"
		talk Collector Kojo##135793
		turnin Tortollan Seekers##50604 |goto Stormsong Valley/0 40.54,36.41
		|only if readyq(50604)
	step
		talk Collector Kojo##135793
		turnin Baubles from the Seekers##54451 |goto Stormsong Valley/0 40.54,36.41
		|only if haveq(54451)
	step
	label "Alliance_War_Effort_WQ"
		talk Vindicator Jaelaana##135446
		turnin Alliance War Effort##50605 |goto Boralus/0 68.97,24.71
		|only if readyq(50605)
	step
		talk Vindicator Jaelaana##135446
		turnin Supplies from the 7th Legion##54454 |goto Boralus/0 68.97,24.71
		|only if haveq(54454)
	step
	label "Order_of_Embers_WQ"
		talk Quartermaster Alcorn##135815
		turnin Order of Embers##50600 |goto Drustvar/0 37.90,49.00
		|only if readyq(50600)
	step
		talk Quartermaster Alcorn##135815
		turnin Supplies from the Order of Embers##54456 |goto Drustvar/0 37.90,49.00
		|only if haveq(54456)
	step
	label "Proudmoore_Admiralty_WQ"
		talk Provisioner Fray##135808
		|tip Inside the building.
		turnin Proudmoore Admiralty##50599 |goto Tiragarde Sound/0 73.68,24.99
		|only if readyq(50599)
	step
		talk Provisioner Fray##135808
		|tip Inside the building.
		turnin Supplies from the Proudmoore Admiralty##54458 |goto Tiragarde Sound/0 73.68,24.99
		|only if haveq(54458)
	step
	label "Storms_Wake_WQ"
		talk Sister Lilyana##135800
		turnin Storm's Wake##50601 |goto Stormsong Valley/0 59.29,69.33
		|only if readyq(50601)
	step
		talk Sister Lilyana##135800
		turnin Supplies from Storm's Wake##54457 |goto Stormsong Valley/0 59.29,69.33
		|only if haveq(54457)
	step
	label "Champions_of_Azeroth_WQ"
		talk Zidormi##128607
		Ask her _"Can you return me to the present time?"_
		Return to the Present |complete not ZGV.InPhase("Old Silithus") |goto Silithus/0 78.93,21.97
		|only if readyq(50562) or haveq(54453)
	step
		talk Magni Bronzebeard##130216
		turnin Champions of Azeroth##50562 |goto Silithus/0 42.22,44.27
		|only if readyq(50562)
	step
		talk Magni Bronzebeard##130216
		turnin Supplies from Magni##54453 |goto Silithus/0 42.22,44.27
		|only if haveq(54453)
	step
	label "Nevin_Tideheart_Turnin"
		talk Nevin Tideheart##151614
		|tip He walks around inside the cave.
		turnin Broken Controller##55663 |goto Nazjatar/0 50.18,66.32 |only if haveq(55663)
		turnin Emergent Sea Weeds##55768 |goto Nazjatar/0 50.18,66.32 |only if haveq(55768)
		|only if haveq(55663,55768)
	step
	label "The_Ankoan_WQ"
		talk Speaker Utia##154140
		|tip Inside the building.
		turnin The Ankoan##56119 |goto Nazjatar/0 38.02,55.70
		|only if readyq(56119)
	step
		talk Speaker Utia##154140
		|tip Inside the building.
		turnin Supplies From the Ankoans##55976 |goto Nazjatar/0 38.02,55.70
		|only if haveq(55976)
	step
	label "Rustbolt_Resistance_WQ"
		turnin Supplies from the Rustbolt Resistance##55348 |goto Mechagon Island/0 74.12,37.01
		|only if haveq(55348)
	step
	label "Rajani_WQ"
		talk Zidormi##163463
		Ask her _"Can you return me to the present time?"_
		Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |or
		|only if haveq(58096)
	step
		Enter the building |goto Vale of Eternal Blossoms New/0 40.24,75.24 < 20 |walk
		talk Zhang Ku##160711
		|tip Inside the building.
		turnin Supplies from the Rajani##58096 |goto 44.45,75.42
		|only if haveq(58096)
	step
	label "Uldum_Accord_WQ"
		talk Zidormi##162419
		Ask her _"Can you return me to the present time?"_
		Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14
		|only if haveq(58097)
	step
		talk Provisioner Qorra##160714
		|tip Inside the building.
		turnin Supplies from the Uldum Accord##58097 |goto Uldum New/0 55.11,32.86
		|only if haveq(58097)
	step
	label "Nazjatar_Battle_Pet_Drop_Q"
		talk Artisan Itanu##153510
		|tip Inside the building.
		turnin Wiggletail's Poking Fork##56444 |goto Nazjatar/0 37.85,55.71 |only if haveq(56444)
		turnin Leathery Venom Gland##56446 |goto 37.85,55.71 |only if haveq(56446)
		turnin Half-Digested Deepcoral Pod##56447 |goto 37.85,55.71 |only if haveq(56447)
		turnin Molted Spineshell##56448 |goto 37.85,55.71 |only if haveq(56448)
		turnin Pearlescent Shell##56449 |goto 37.85,55.71 |only if haveq(56449)
		turnin Eel Jelly##56450 |goto 37.85,55.71 |only if haveq(56450)
		turnin Mottled Hydra Scale##56451 |goto 37.85,55.71 |only if haveq(56451)
		turnin Strange Organ##56452 |goto 37.85,55.71 |only if haveq(56452)
		turnin Overgrown Stone##56453 |goto 37.85,55.71 |only if haveq(56453)
		turnin Crackling Mandible##56454 |goto 37.85,55.71 |only if haveq(56454)
		turnin Frenzy Fang##56455 |goto 37.85,55.71 |only if haveq(56455)
		turnin Opaline Conch##56456 |goto 37.85,55.71 |only if haveq(56456)
		|only if haveq(56444,56446,56447,56448,56449,56450,56451,56452,56453,56454,56455,56456)
	step
	label "Mechagon_Battle_Pet_Drop_Q"
		talk Vera Lonelycog##150629
		turnin Rusty Tube##56437 |goto Mechagon Island/0 69.27,30.65 |only if haveq(56437)
		turnin Mechanical Eye##56443 |goto 69.27,30.65 |only if haveq(56443)
		turnin Broken Unit 6##56442 |goto 69.27,30.65 |only if haveq(56442)
		turnin Can of Critter Spray##56440 |goto 69.27,30.65 |only if haveq(56440)
		turnin Cluckbox##56441 |goto 69.27,30.65 |only if haveq(56441)
		turnin Flashing Siren##56438 |goto 69.27,30.65 |only if haveq(56438)
		turnin Mechanical Egg Sac##56439 |goto 69.27,30.65 |only if haveq(56439)
		turnin Small Skull##56436 |goto 69.27,30.65 |only if haveq(56436)
		|only if haveq(56437,56443,56442,56440,56441,56438,56439,56436)
	step
	label "Lieutenant_Hawkins_Turnin"
		talk Lieutenant Hawkins##152942
		|tip Inside the building.
		turnin WANTED: Braxicus##55777 |goto Nazjatar/0 40.04,55.53 |only if haveq(55777)
		turnin WANTED: Commander Sarj'eth##55770 |goto Nazjatar/0 40.04,55.53 |only if haveq(55770)
		turnin WANTED: Emorneth##55776 |goto Nazjatar/0 40.04,55.53 |only if haveq(55776)
		turnin WANTED: Gler'thogg##55773 |goto Nazjatar/0 40.04,55.53 |only if haveq(55773)
		turnin WANTED: Haggronar##55775 |goto Nazjatar/0 40.04,55.53 |only if haveq(55775)
		turnin WANTED: Inquisitor Ithriza##55774 |goto Nazjatar/0 40.04,55.53 |only if haveq(55774)
		turnin WANTED: Lady Narjiss##55772 |goto Nazjatar/0 40.04,55.53 |only if haveq(55772)
		turnin WANTED: Lady Naz'jess##55750 |goto Nazjatar/0 40.04,55.53 |only if haveq(55750)
		turnin WANTED: Lord Ha'kass##55771 |goto Nazjatar/0 40.04,55.53 |only if haveq(55771)
		turnin Plans of Attack##55845 |goto Nazjatar/0 40.04,55.53 |only if haveq(55845)
		|only if haveq(55777,55770,55776,55773,55775,55774,55772,55750,55771,55845)
	step
		|next "Choose_World_Quest"
]])

--SHADOWLANDS
ZygorGuidesViewer:RegisterInclude("Shadow_Choose_World_Quests",[[
		Choose a World Quest to Complete |confirm
		|tip With the "World Quests" guide loaded, open your world map.
		|tip Left-click on a world quest icon to select that world quest.
		|tip The guide will automatically load the steps for that world quest.
		'|confirm |next "The_Ascended_WQ" |complete readyq(61097) and not ZGV.WorldQuests:QuestsQueued()
		'|confirm |next "Court_of_Harvesters_WQ" |complete readyq(61100) and not ZGV.WorldQuests:QuestsQueued()
		'|confirm |next "The_Undying_Army_WQ" |complete readyq(61095) and not ZGV.WorldQuests:QuestsQueued()
		'|confirm |next "The_Wild_Hunt_WQ" |complete readyq(61098) and not ZGV.WorldQuests:QuestsQueued()
		'|confirm |next "Death's_Advance_WQ" |complete readyq(64012) and not ZGV.WorldQuests:QuestsQueued()
		'|confirm |next "Enlightened_WQ" |complete readyq(64867) and not ZGV.WorldQuests:QuestsQueued()
		|worldquestqueue
]])

ZygorGuidesViewer:RegisterInclude("Shadow_World_Quest_Emissaries",[[
		-- if we are running queued world quests, do not move to emissary turnins
		'|confirm |next "Choose_World_Quest" |complete true |only if ZGV.WorldQuests:QuestsQueued()
	step
	label "The_Ascended_WQ"
		talk Adjutant Nikos##168820
		turnin Supplies from The Ascended##61097 |goto Bastion/0 52.24,47.10 |region heros_rest
		|only if readyq(61097)
	step
	label "Court_of_Harvesters_WQ"
		talk Mistress Mihaela##156822
		turnin Supplies from the Court of Harvesters##61100 |goto Revendreth/0 61.31,63.78
		|only if readyq(61100)
	step
	label "The_Undying_Army_WQ"
		talk Nalcorn Talsen##173003
		turnin Supplies from The Undying Army##61095 |goto Maldraxxus/0 50.76,53.38
		|only if readyq(61095)
	step
	label "The_Wild_Hunt_WQ"
		talk Aithlyn##158556
		turnin Supplies from The Wild Hunt##61098 |goto Ardenweald/0 48.48,50.42 |only if not NightFae
		turnin Supplies from The Wild Hunt##61098 |goto Heart of the Forest/0 59.47,31.80 |only if  NightFae
		|only if readyq(61098)
	step
	label "Death's_Advance_WQ"
		talk Duchess Mynx##179321
		turnin Supplies from Death's Advance##64012 |goto Korthia/0 63.31,23.34
		|only if readyq(64012)
	step
	label "Enlightened_WQ"
		talk Vilo##182257
		turnin Supplies from The Enlightened##64867 |goto Zereth Mortis/0 34.75,64.13
		|only if readyq(64867)
	step
		|next "Choose_World_Quest"
]])