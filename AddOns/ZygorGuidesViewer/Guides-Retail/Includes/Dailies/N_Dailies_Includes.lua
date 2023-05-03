local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end

-----------------------------
----- Argent Tournament -----
-----------------------------

ZygorGuidesViewer:RegisterInclude("ArgentT_Quests",[[
	step
		talk Commander Falstaav##28059
		accept Parachutes for the Argent Crusade##12740 |goto Zul'Drak/0 39.42,66.96
	step
		click Argent Shieldman##28028+, Argent Crusader##28029+
		Use your Crusader Parachute |use Crusader Parachute##39615
		|tip It won't work on all of them.
		Equip #10# Argent forces with a parachute |q 12740/1 |goto 38.4,67.1
	step
		talk Commander Falstaav##28059
		turnin Parachutes for the Argent Crusade##12740 |goto 39.42,66.96
	step
		talk Commander Kunz##28039
		accept Pa'Troll##12596 |goto 40.27,66.62
	step
		Follow the path |goto Zul'Drak/0 40.27,61.44 < 30 |only if walking
		Follow the path |goto 39.25,58.68 < 30 |only if walking
		Follow the path |goto 37.29,54.63 < 30 |only if walking
		Enter the building |goto 35.78,52.23 < 7 |walk
		talk Alchemist Finklestein##28205
		accept Lab Work##12557 |goto 35.02,52.10
	step
		Go into the 2 rooms next to you:
		click Muddy Mire Maggot
		|tip Muddy Mire Maggots are contained in bags on the ground.
		_These are items on shelves that you can click_
		collect Muddy Mire Maggot##38386 |q 12557/1 |goto Zul'Drak/0 34.97,53.50
		click Withered Batwing##190473
		collect Withered Batwing##38339 |q 12557/2 |goto 35.09,53.43
		|tip Withered Batwings looks like bone wings.
		click Chilled Serpent Mucus##190462
		collect Chilled Serpent Mucus##38346 |q 12557/4 |goto 35.09,53.42
		|tip Chilled Serpent Mucus looks like a skinny green vial.
		click Amberseed##190459
		collect Amberseed##38340 |q 12557/3 |goto 34.97,51.57
		|tip Amberseeds look like spiked potatoes.
	step
		talk Alchemist Finklestein##28205
		turnin Lab Work##12557
		Complete Alchemist Finklestein's task |q 12596/4 |goto 35.02,52.10
	step
		Leave the building |goto Zul'Drak/0 35.84,52.25 < 7 |walk
		Follow the path |goto 37.23,54.57 < 30 |only if walking
		Follow the path |goto 39.24,58.71 < 30 |only if walking
		Follow the path |goto 40.10,61.34 < 30 |only if walking
		Follow the path |goto 43.58,62.18 < 30 |only if walking
		Follow the path |goto 46.28,64.52 < 20 |only if walking
		Enter the building |goto 47.95,63.59 < 10 |walk
		talk Captain Grondel##28043
		accept Creature Comforts##12599 |goto 48.15,63.89
	step
		click Dead Thornwood+
		|tip They look like curved thorny roots coming out of the water around this area.
		collect 20 Dead Thornwood##38563 |q 12599/1 |goto 46.9,61.4
	step
		Enter the building |goto 47.95,63.59 < 10 |walk
		talk Captain Grondel##28043
		turnin Creature Comforts##12599 |goto 48.15,63.89
		Complete Captain Grondel's Task |q 12596/3 |goto 48.15,63.89
	step
		Leave the building |goto Zul'Drak/0 47.93,63.57 < 7 |walk
		Follow the path |goto 45.92,66.37 < 30 |only if walking
		Go up the stairs |goto 46.48,67.38 < 15 |only if walking
		Go down the stairs |goto 49.77,72.23 < 15 |only if walking
		Follow the path |goto 50.03,75.00 < 30 |only if walking
		Go up the stairs |goto 49.33,77.85 < 20 |only if walking
		talk Captain Brandon##28042
		accept Something for the Pain##12597 |goto 48.77,78.87
	step
		Follow the path |goto Zul'Drak/0 47.27,79.47 < 20 |only if walking
		Click the Mature Water-Poppy plants
		|tip They look like tall white-leaved plants with purple bulbs at the top.
		collect 5 Mature Water-Poppy##38552 |q 12597/1 |goto 44.9,79.5
	step
		Follow the path |goto Zul'Drak/0 47.27,79.47 < 20 |only if walking
		talk Captain Brandon##28042
		turnin Something for the Pain##12597
		Complete Captain Brandon's Task |q 12596/1 |goto 48.77,78.87
	step
		Go down the stairs |goto Zul'Drak/0 49.56,77.54 < 15 |only if walking
		Follow the path |goto 52.26,76.13 < 30 |only if walking
		Go up the stairs |goto 55.45,75.87 < 20 |only if walking
		talk Captain Rupert##28044
		accept Throwing Down##12598 |goto 58.07,72.43
	step
		Go up the stairs |goto Zul'Drak/0 55.78,71.80 < 20 |only if walking
		Use your High Impact Grenade next to Nerubian Tunnels |use High Impact Grenade##38574
		Seal #5# Nerubian Tunnels |q 12598/1 |goto 53.4,68.7
		|tip They look like squarish pyramid dirt mounds around this area.
		|tip They can also be found inside the building.
	step
		Go down the stairs |goto Zul'Drak/0 56.04,72.21 < 15 |only if walking
		talk Captain Rupert##28044
		turnin Throwing Down##12598
		Complete Captain Rupert's Task |q 12596/2 |goto 58.1,72.4
	step
		Go down the stairs |goto 54.69,73.00 < 15 |only if walking
		Follow the path |goto 51.51,72.66 < 20 |only if walking
		Go up the stairs |goto 49.56,71.89 < 15 |only if walking
		Follow the path |goto 47.93,70.14 < 30 |only if walking
		Follow the path |goto 44.61,73.88 < 30 |only if walking
		talk Commander Kunz##28039
		turnin Pa'Troll##12596 |goto 40.27,66.62
]])

---------------------------
----- Cooking Dailies -----
---------------------------

ZygorGuidesViewer:RegisterInclude("MoP_Cooking_Dailies",[[
		Proceeding to Cooking School Bell |only if completedq(31521)
		Proceeding to Cooking Dailies |only if not completedq(31521) |next "dailies"
	step
		use Cooking School Bell##86425
		If you do not have this yet, you can buy it from Nam Ironpaw here: [Valley of the Four Winds 53.6,51.2]
		talk Nomi##64337
		accept Lesson 1: Sliced Peaches##31332
	step
		talk Sungshin Ironpaw##64231
		buy 5 Pandaren Peach##74660 |q 31332/1 |goto Valley of the Four Winds 53.6,51.2
	step
		use Cooking School Bell##86425
		talk Nomi##64337
		turnin Lesson 1: Sliced Peaches##31332
	step
	label "dailies"
		talk Jian Ironpaw##58716
		accept The Truffle Shuffle##30330 |goto Valley of the Four Winds 53.4,51.6
		Click here if this quest is not available today |confirm
	step
		talk Kol Ironpaw##58712
		accept Fatty Goatsteak##30332 |goto 53.0,51.3
		Click here if this quest is not available today |confirm
	step
		talk Yan Ironpaw##58715
		accept The Thousand-Year Dumpling##30328 |goto 52.5,51.7
		Click here if this quest is not available today |confirm
	step
		talk Anthea Ironpaw##58713
		accept Cindergut Peppers##30329 |goto 52.8,51.8
		Click here if this quest is not available today |confirm
	step
		talk Mei Mei Ironpaw##58714
		accept The Mile-High Grub##30331 |goto 52.6,51.6
		Click here if this quest is not available today |confirm
	step
		use Master's Pot##79895
		|tip Use the Master's Pot next to the bonfire.
		Create #20# Mushan Tail Stew |q 30331/1 |goto 32.5,23.9
		only if haveq(30331)
	step
		kill Kunzen Hunter##59121+, Kunzen Herdskeeper##59122+, Kunzen Ritualist##+59123, Kunzen Rockflinger##59120+,Kunzen Collector##59124+
		collect 4 Cindergut Pepper##79864 |q 30329/1 |goto 31.2,36.0
		only if haveq(30329)
	step
		Enter the cave here |goto 44.0,22.2 < 5 |walk
		click Preserved Vegetable##11054+
		collect 7 Preserved Vegetables##80133 |q 30328/1
		only if haveq(30328)
	step
		click Shadelight Truffle##210812
		|tip You can find these aruond the trees here
		collect 8 Shadelight Truffle##79833 |q 30330/2 |goto 28.5,33.3
		only if haveq(30330)
	step
		use Shadelight Truffle Spores##80127
		Plant #8# Shadelight Spores |q 30330/1 |goto 28.5,33.3
		only if haveq(30330)
	step
		kill Stout Shaghorn##59139+
		collect 4 Fatty Goatsteak##79867 |q 30332/1 |goto Valley of the Four Winds 29.7,41.4
		only if haveq(30332)
	step
		talk Anthea Ironpaw##58713
		turnin Cindergut Peppers##30329 |goto Valley of the Four Winds 52.8,51.8
	step
		talk Jian Ironpaw##58716
		turnin The Truffle Shuffle##30330 |goto Valley of the Four Winds 53.4,51.6
	step
		talk Yan Ironpaw##58715
		turnin The Thousand-Year Dumpling##30328 |goto 52.5,51.7
	step
		talk Kol Ironpaw##58712
		turnin Fatty Goatsteak##30332 |goto 53.0,51.3
	step
		talk Mei Mei Ironpaw##58714
		turnin The Mile-High Grub##30331 |goto 52.6,51.6
	step
		You have reached the end of the dailies for today
		Click here to go back to the beginning of the Pandaria Cooking Dailies |confirm |next "dailies"
]])

ZygorGuidesViewer:RegisterInclude("Nomi_Dailies",[[
		Starting Dailies |complete true
	step
	label "nomistart"
		use Cooking School Bell##86425
		talk Nomi##64337
		|tip She's standing next to you if you use the Cooking School Bell.
		accept Lesson 1: Sliced Peaches##31332 |or |next "peach"
		accept Lesson 2: Instant Noodles##31333 |or |next "noodles"
		accept Lesson 3: Toasted Fish Jerky##31334 |or |next "carp"
		accept Lesson 4: Dried Needle Mushrooms##31335 |or |next "mushrooms"
		accept Lesson 5: Pounded Rice Cake##31336 |or |next "rice"
	step
	label "peach"
		talk Sungshin Ironpaw##64231
		buy 5 Pandaren Peach##31332 |q 31332/1 |goto Valley of the Four Winds 53.6,51.2
		|next "nomiTurnin"
	step
	label "noodles"
		talk Sungshin Ironpaw##64231
		buy 5 Instant Noodles##74854 |q 31333/1 |goto Valley of the Four Winds 53.6,51.2
		|next "nomiTurnin"
	step
	label "carp"
		talk Sungshin Ironpaw##64231
		buy 5 Golden Carp##74866 |q 31334/1 |goto Valley of the Four Winds 53.6,51.2
		|next "nomiTurnin"
	step
	label "mushrooms"
		talk Sungshin Ironpaw##64231
		buy 5 Needle Mushrooms##85583 |q 31335/1 |goto Valley of the Four Winds 53.6,51.2
		|next "nomiTurnin"
	step
	label "rice"
		talk Sungshin Ironpaw##64231
		buy 5 Rice##74851 |q 31336/1 |goto Valley of the Four Winds 53.6,51.2
		|next "nomiTurnin"
	step
	label "nomiTurnin"
		talk Nomi##64337
		|tip She's standing next to you if you use the Cooking School Bell.
		use Cooking School Bell##86425
		turnin Lesson 1: Sliced Peaches##31332 |or
		turnin Lesson 2: Instant Noodles##31333 |or
		turnin Lesson 3: Toasted Fish Jerky##31334 |or
		turnin Lesson 4: Dried Needle Mushrooms##31335 |or
		turnin Lesson 5: Pounded Rice Cake##31336 |or
	step
		You have reached the end of the dailies for today
		Click here to go back to the beginning of the Nomi Cooking Dailies |confirm |next "nomistart"
]])

------------------------------
----- Isle of Quel'Danas -----
------------------------------

ZygorGuidesViewer:RegisterInclude("SSO_PreQuest_Dailies",[[
		talk Exarch Nasuun##24932
		accept Maintaining the Sunwell Portal##11514 |goto Shattrath City 49.1,42.5
	step
		talk Lord Torvos##25140
		accept Sunfury Attack Plans##11877 |goto 62.8,36.0
	step
		talk Emissary Mordin##19202
		accept Gaining the Advantage##11875 |goto 62.8,35.6
		only if skill("Skinning")>300 or skill("Mining")>300 or skill("Herbalism")>300
	step
		talk Harbinger Haronem##19475
		accept The Multiphase Survey##11880 |goto Shattrath City 61.7,52.1
	step
		kill Clefthoof Bull##17132+,Talbuk Thorngrazer##17131+,Wild Elekk##18334+
		Skin their corpses in order to collect the Nether Residue.
		collect 8 Nether Residue##35229 |q 11875/1 |goto Nagrand 50.3,40.4
		only if skill("Skinning")>=300
	step
		Mine inside the cave and collect Nether Residue.
		collect 8 Nether Residue##35229 |q 11875/1 |goto 40.8,31.6
		You can check [Nagrand,50.0,56.6] for more Mining Nodes.
		only if skill("Mining")>=300
	step
		Click the Multiphase Spectographic Goggles to wear them. |use Multiphase Spectrographic Goggles##35233 |goto Nagrand 38.3,65.3
		Get the Multiphase Goggles buff |havebuff 135994 --Spell_magic_lesserinvisibility
		|tip You have to be in the Nagrand zone to correctly get the buff.
		only if haveq(11880)
	step
		All around Nagrand:
		Gather _Felweed_ and _Dreaming Glory_ to collect Nether Residue.
		collect 8 Nether Residue##35229 |q 11875/1
		only if skill("Herbalism")>=300
	step
		Fly around the Spirit Fields looking for Fiery Red Orbs on the ground.
		Use your Multiphase Spectrographic Goggles on the Orbs |use Multiphase Spectrographic Goggles##35233
		goal 6 Multiphase Readings Taken |q 11880/1 |goto Nagrand 38.3,65.3
	step
		kill Unbound Ethereal##22244+, Bash'ir Raider##22241+, Bash'ir Arcanist##22243+, Bash'ir Spell-Thief##22242+
		collect 1 Bash'ir Phasing Device##34248 |n
		Use the Bash'ir Phasing Device |use Bash'ir Phasing Device##34248
		Become Out of Phase |havebuff 132220 --Ability_mage_invisibility
		click Smuggled Mana Cell##187039
		Collect 10 Smuggled Mana Cell |q 11514/1 |goto Blade's Edge Mountains 54.0,18.1
	step
		kill Sunfury Bloodwarder##18853+, Sunfury Captain##19453+, Sunfury Magister##18855+, Sunfury Geologist##19779+, Sunfury Astromancer##19643
		collect Sunfury Attack Plans##35231 |q 11877/1 |goto Netherstorm 25.9,66.8
	step
		talk Lord Torvos##25140
		turnin Sunfury Attack Plans##11877 |goto Shattrath City 62.8,36.0
	step
		talk Emissary Mordin##19202
		turnin Gaining the Advantage##11875 |goto 62.8,35.6
	step
		talk Harbinger Haronem##19475
		turnin The Multiphas Survey##11880 |goto 61.6,52.2
	step
		talk Exarch Nasuun##24932
		turnin Maintaining the Sunwell Portal##11514 |goto 49.1,42.5
	step
		talk Astromancer Darnarian##25133
		accept Know Your Ley Lines##11547 |goto Isle of Quel'Danas 47.5,35.4
	step
		talk Battlemage Arynna##25057
		accept The Air Strikes Must Continue##11533 |goto 47.5,35.1
	step
		talk Harbinger Inuuro##25061
		accept The Battle Must Go On##11537 |goto 47.6,35.1
	step
		talk Anchorite Ayuri##25112
		accept Your Continued Support##11548 |goto 48.8,37.2
		This quest requires that you give 10 Gold in trade of reputation with the Shattered Sun Offensive, you should be able to turn it in immidiately.
		turnin Your Continued Support##11548 |goto 48.8,37.2
	step
		talk Vindicator Kaalan##25108
		accept Keeping the Enemy at Bay##11543 |goto 50.6,39.0
	step
		talk Magister Ilastar##25069
		accept Crush the Dawnblade##11540 |goto 49.3,40.4
	step
		talk Smith Hauthaa##25046
		accept Don't Stop Now....##11536 |goto 50.6,40.8
		accept Ata'mal Armaments##11544 |goto 50.6,40.8
	step
		talk Mar'nah##24975
		accept Rediscovering Your Roots##11521 |goto 51.5,32.5
		accept Open for Business##11546 |goto 51.5,32.5
	step
		talk Captain Valindria##25088
		accept Disrupt the Greengill Coast##11541 |goto 53.8,34.3
	step
		talk Captain Theris Dawnhearth##24967
		accept Arm the Wards!##11523 |goto 47.5,30.5
		accept The Missing Magistrix##11526 |goto 47.5,30.5
	step
		talk Vindicator Xayann##24965
		accept Further Conversions##11525 |goto 47.1,30.7
	step
		kill Wretched Fiend##24966+
		collect 4 Mana Remnants##34338 |q 11523 |c
		kill Erratic Sentry##24972+ |n
		Use Attuned Crystal Cores on the Erratic Sentries corpse |use Attuned Crystal Cores##34368
		goal 5 Converted Sentry Deployed |q 11525/1 |goto Isle of Quel'Danas 44.3,28.5
		click Bloodberry Bush##187333
		collect 5 Bloodberry##34502 |q 11546/1 |goto Isle of Quel'Danas 44.3,28.5
		|tip They can be found all around this area on the ground.
	step
		kill 6 Dawnblade Summoner |q 11540/1 |goto Isle of Quel'Danas 42.1,35.7
		kill 6 Dawnblade Blood Knight |q 11540/2 |goto Isle of Quel'Danas 42.1,35.7
		kill 3 Dawnblade Marksman |q 11540/3 |goto Isle of Quel'Danas 42.1,35.7
		Use your Astromancer's Crystal to sample the Bloodcrystal's density |use Astromancer's Crystal##34533
		Bloodcrystal Reading Taken |q 11547/3 |goto Isle of Quel'Danas 42.1,35.7
	step
		Use the Mana Remnants to Energize the Crystal Ward |use Mana Remnants##34338
		Energize a Crystal Ward |q 11523/1 |goto Isle of Quel'Danas 46.5,35.5
	step
		talk Ayren Cloudbreaker##25059
		Tell him you Need to Intercept the Dawnblade Reinforcements.
		Use your Flaming Oil to set fire to the ships sails as you fly around |use Flaming Oil##34489
		Sin'loren sails burned |q 11543/1 |goto 48.5,25.2
		Bloodoath sails burned |q 11543/2 |goto 48.5,25.2
		Dawnchaser sails burned |q 11543/3 |goto 48.5,25.2
	step
		kill 6 Dawnblade Reservist##25087+ |q 11543/4 |goto Isle of Quel'Danas 51.1,9.7
		Another spot for them is at [Isle of Quel'Danas 55.2,11.8]
	step
		talk Unrestrained Dragonhawk##25236 |goto Isle of Quel'Danas,52.4,17.4
		Ride the dragonhawk to Sun's Reach |goto Isle of Quel'Danas 48.4,25.3 |noway |c
	step
		talk Ayren Cloudbreaker##25059
		Tell him you've been ordered to undertake an airstrike.
		Use your Arcane Charges on mobs once you get to the Dead Scar |use Arcane Charges##34475
		kill 2 Pit Overlord##25031+ |q 11533/1 |goto Isle of Quel'Danas 48.5,25.2
		kill 3 Eredar Sorcerer##25033+ |q 11533/2 |goto Isle of Quel'Danas 48.5,25.2
		kill 12 Wrath Enforcer##25030+ |q 11533/3 |goto Isle of Quel'Danas 48.5,25.2
	step
		kill Emissary of Hate##25003 |n
		Use your Shattered Sun Banner on his corpse |use Shattered Sun Banner##34414
		Impale the Emissary of Hate |q 11537/1 |goto Isle of Quel'Danas,48.5,43.7
		kill 6 Burning Legion Demon |q 11537/2 |goto Isle of Quel'Danas,48.5,43.7
		Use your Astromancer's Crystal to sample the Portal's density. |use Astromancer's Crystal##34533
		Portal Reading Taken |q 11547/1 |goto Isle of Quel'Danas 48.5,43.7
	step
		Take this path back to the shoreside |goto Isle of Quel'Danas 57.3,38.6 < 10 |only if walking
		kill Darkspine Myrmidon##25060+
		collect Darkspine Chest Key##34477 |n
		kill Darkspine Siren##25073+
		collect Orb of Murloc Control##34483 |n
		Use your Orbs of Murloc Control on Greengill Slaves along the shore |use Orb of Murloc Control##34483
		Free 10 Greengill Slaves |q 11541/1 |goto Isle of Quel'Danas 64.1,49.9
		Use your Darkspine Chest Keys on the Darkspine Ore Chest
		collect 3 Darkspine Iron Ore##34479 |q 11536/1 |goto Isle of Quel'Danas 64.1,49.9
	step
		Use your Astromancer's Crystal to sample the Shrine's density |use Astromancer's Crystal##34533
		Shrine Reading Taken |q 11547/2 |goto Isle of Quel'Danas 61.1,62.0
	step
		talk Mar'nah##24975
		turnin Open for Business##11546 |goto 51.5,32.5
	step
		talk Captain Valindria##25088
		turnin Disrupt the Greengill Coast##11541 |goto Isle of Quel'Danas 53.8,34.3
	step
		talk Smith Hauthaa##25046
		turnin Don't Stop Now....##11536 |goto 50.6,40.7
	step
		talk Vindicator Kaalan##25108
		turnin Keeping the Enemy at Bay##11543 |goto 50.6,39.0
	step
		talk Magister Ilastar##25069
		turnin Crush the Dawnblade##11540 |goto 49.3,40.4
	step
		talk Astromancer Darnarian##25133
		turnin Know Your Ley Lines##11547 |goto 47.5,35.3
	step
		talk Battlemage Arynna##25057
		turnin The Air Strikes Must Continue##11533 |goto 47.5,35.1
	step
		talk Harbinger Inuuro##25061
		turnin The Battle Must Go On##11537 |goto 47.6,35.1
	step
		talk Captain Theris Dawnhearth##24967
		turnin Arm the Wards!##11523 |goto 47.5,30.5
	step
		talk Vindicator Xayann##24965
		turnin Further Conversions##11525 |goto 47.1,30.7
	step
		|use Captured Legion Scroll##34420 |goto Isle of Quel'Danas 48.5,44.7
		Teleport to Hellfire Peninsula |goto Hellfire Peninsula 58.6,18.7 < 10 |noway |c
	step
		talk Magistrix Seyla##24937
		turnin The Missing Magistrix##11526 |goto Hellfire Peninsula 58.2,17.6
		accept Blood for Blood##11515 |goto Hellfire Peninsula 58.2,17.6
		accept Blast the Gateway##11516 |goto Hellfire Peninsula 58.2,17.6
	stickystart "emaciatedfelblood"
	step
		kill Wrath Herald##24919+
		collect 4 Demonic Blood##34259
		use the Sizzling Embers to summon a Living Flare |use Sizzling Embers##34253
		kill Incandescent Fel Spark##22323+ |n
		Once you see a message that says _"Living Flare becomes unstable with brimming energy!"_ take it to [Hellfire Peninsula 58.6,18.7]
		Legion Gateway Destroyed |q 11516/1 |goto Hellfire Peninsula 66.4,20.1
	step
	label "emaciatedfelblood"
		Use your Fel Siphon on Felblood Initiates |use Fel Siphon##34257
		kill 4 Emaciated Felblood##24918 |q 11515/1 |goto 59.9,21.0
	step
		talk Magistrix Seyla##24937
		turnin Blast the Gateway##11516 |goto Hellfire Peninsula 58.2,17.6
		turnin Blood for Blood##11515 |goto Hellfire Peninsula 58.2,17.6
	step
		kill Razorthorn Flayer##24920+
		collect Razorthorn Flayer Gland##34255 |q 11521 |n
		Use your Razorthorn Flayer Gland on Razorthorn Ravagers |use Razorthorn Flayer Gland##34255
		Use your pets Expose Razorthorn Root ability on mounds of dirt around the area |cast Expose Razorthorn Root##44935
		collect 5 Razorthorn Root##34254 |q 11521/1 |goto Terokkar Forest 59.7,10.3
	step
		kill Shadowmoon Chosen##22084+, Shadowmoon Slayer##22082+, Shadowmoon Darkweaver##22081+
		collect 5 Ata'mal Armament##34500 |q 11544 |goto Shadowmoon Valley 68.5,37.5
	step
		talk Mar'nah##24975
		turnin Rediscovering Your Roots##11521 |goto Isle of Quel'Danas 51.5,32.5
	step
		Click the Ata'mal Armaments and cleanse them at Hauthaa's Anvil |use Ata'mal Armament##34500
		Cleanse 5 Ata'mal Metals |q 11544/1 |goto 50.6,40.7
	step
		talk Smith Hauthaa##25046
		turnin Ata'mal Armaments##11544 |goto 50.6,40.7
]])

-------------------
----- Oracles -----
-------------------

ZygorGuidesViewer:RegisterInclude("Oracles_PreQuests",[[
		talk Tamara Wobblesprocket##28568
		accept The Part-time Hunter##12654 |goto Sholazar Basin/0 50.48,62.13
	step
		kill Pitch##28097
		collect Pitch's Remains##38703 |q 12654/1 |goto 50.53,77.21
	step
		talk Tracker Gekgek##28095
		accept Playing Along##12528 |goto 50.54,76.58
	step
		talk High-Shaman Rakjak##28082
		turnin Playing Along##12528 |goto 54.99,69.11
		accept The Ape Hunter's Slave##12529 |goto 54.99,69.11
	step
		_Next to you:_
		talk Goregek the Gorilla Hunter##28214
		accept Tormenting the Softknuckles##12530
	stickystart "Slay_Hardknuckle_Matriarch"
	step
		kill 8 Hardknuckle Forager##28098 |q 12529/1 |goto 57.49,73.30
	step
		kill 6 Hardknuckle Charger##28096 |q 12529/2 |goto 62.24,72.66
	step
	label "Slay_Hardknuckle_Matriarch"
		use Softknuckle Poker##38467
		|tip Use it on Softknuckle gorrilas.
		|tip They look like baby gorillas around this area.
		|tip Eventually a Hardknuckle Matriarch will spawn.
		kill Hardknuckle Matriarch##28213 |q 12530/1 |goto 66.90,73.41
	step
		talk High-Shaman Rakjak##28082
		turnin The Ape Hunter's Slave##12529 |goto 54.99,69.11
		turnin Tormenting the Softknuckles##12530 |goto 54.99,69.11
		accept The Wasp Hunter's Apprentice##12533 |goto 54.99,69.11
	step
		talk Elder Harkek##28138
		accept The Sapphire Queen##12534 |goto 55.50,69.68
	stickystart "Slay_Sapphire_Hive_Drones"
	step
		kill 6 Sapphire Hive Wasp##28086 |q 12533/1 |goto 61.52,77.75
	step
	label "Slay_Sapphire_Hive_Drones"
		kill 9 Sapphire Hive Drone##28085 |q 12533/2 |goto 61.52,77.75
	step
		Follow the path down |goto 59.41,79.10 < 5 |walk
		Continue down the path |goto 57.55,79.65 |goto 57.51,79.63 < 10 |walk
		kill Sapphire Hive Queen##28087
		|tip Inside the cave.
		collect Stinger of the Sapphire Queen##38477 |q 12534/1 |goto 57.17,79.17
	step
		Follow the path |goto 57.43,81.33 < 15 |only if walking
		Leave the cave |goto 59.33,79.18 < 5 |only if walking
		talk High-Shaman Rakjak##28082
		turnin The Wasp Hunter's Apprentice##12533 |goto 54.99,69.12
		turnin The Sapphire Queen##12534 |goto 54.99,69.12
	step
		talk Elder Harkek##28138
		accept Flown the Coop!##12532 |goto 55.50,69.68
	step
		clicknpc Chicken Escapee##28161+
		|tip They look like small chickens running around this area.
		collect 12 Captured Chicken##38483 |q 12532/1 |goto 55.22,70.15
	step
		talk Elder Harkek##28138
		turnin Flown the Coop!##12532 |goto 55.50,69.68
		accept The Underground Menace##12531 |goto 55.50,69.68
	step
		talk High-Shaman Rakjak##28082
		accept Mischief in the Making##12535 |goto 54.99,69.11
	stickystart "Collect_Claw_of_Serfex"
	step
		click Skyreach Crystal Formation##190500
		|tip They look like small clusters of light purple crystals along the river around this area.
		collect 8 Skyreach Crystal Cluster##38504 |q 12535/1 |goto 56.81,84.57
	step
	label "Collect_Claw_of_Serfex"
		kill Serfex the Reaver##28083
		|tip He looks like a burrowing worm that travels along the river around this area.
		collect Claw of Serfex##38473 |q 12531/1 |goto 49.79,84.96
	step
		talk High-Shaman Rakjak##28082
		turnin The Underground Menace##12531 |goto 54.99,69.11
		turnin Mischief in the Making##12535 |goto 54.99,69.11
		accept A Rough Ride##12536 |goto 54.99,69.11
	step
		talk Captive Crocolisk##28298
		Tell him _"You look safe enough...let's do this."_
		Mount the Crocolisk |invehicle |goto 57.28,68.39 |q 12536
	step
		Watch the dialogue
		Travel to Mistwhisper Refuge |q 12536/1 |goto 46.25,39.47 |notravel
	step
		_Next to you:_
		talk Zepik the Gorloc Hunter##28668
		turnin A Rough Ride##12536
		accept Lightning Definitely Strikes Twice##12537
		accept The Mist Isn't Listening##12538
	stickystart "Slay_Mistwhisper_Gorlocs"
	step
		use Skyreach Crystal Clusters##38510
		|tip Use it next to the stone monument.
		click Arranged Crystal Formation##190502
		Sabotage the Mistwhisper Weather Shrine |q 12537/1 |goto 45.37,37.21
	step
	label "Slay_Mistwhisper_Gorlocs"
		Kill Mistwhisper enemies around this area
		Kill #12# Mistwhisper Gorlocs |q 12538/1 |goto 44.79,36.61
	step
		_Next to you:_
		talk Zepik the Gorloc Hunter##28216
		|tip Use Zepik's Hunting Horn to summon Zepik if he's not already next to you.
		turnin Lightning Definitely Strikes Twice##12537
		turnin The Mist Isn't Listening##12538
		accept Hoofing It##12539
	step
		talk High-Shaman Rakjak##28082
		turnin Hoofing It##12539 |goto 54.99,69.11
		accept Just Following Orders##12540 |goto 54.99,69.11
	step
		clicknpc Injured Rainspeaker Oracle##28217
		Select _<Reach down and pull the Injured Rainspeaker Oracle to its feet.>_
		kill Ravenous Mangal Crocolisk##28325
		Locate the Injured Rainspeaker Oracle |q 12540/1 |goto 55.70,64.97
	step
		talk Injured Rainspeaker Oracle##28217
		turnin Just Following Orders##12540 |goto 55.70,64.97
		accept Fortunate Misunderstandings##12570 |goto 55.70,64.97
	step
		talk Injured Rainspeaker Oracle##28217
		Tell him _"I am ready to travel to your village now."_ |goto 55.70,64.97
		Begin Following the Injured Rainspeaker Oracle |goto 55.24,64.17 < 10 |c |q 12570
	step
		Follow the Injured Rainspeaker as it walks
		Watch the dialogue
		Escort the Injured Rainspeaker Oracle to Rainspeaker Canopy |q 12570/1 |goto 53.52,56.81
	step
		talk High-Oracle Soo-say##28027
		turnin Fortunate Misunderstandings##12570 |goto 54.59,56.35
		accept Make the Bad Snake Go Away##12571 |goto 54.59,56.35
	step
		_Next to you:_
		talk Lafoo##28120
		|tip Use Lafoo's Bug Bag to summon Lafoo if he's not already next to you.
		accept Gods like Shiny Things##12572
	stickystart "Slay_Emperor_Cobras"
	step
		kill Venomtip##28358 |q 12571/2 |goto 57.48,52.50
		|tip It looks like a purple and red cobra near the waterfall in this area.
	step
		_Next to you:_
		talk Lafoo##28120
		|tip Use Lafoo's Bug Bag to summon Lafoo if he's not already next to you.
		Stand on top of the twinkles of light on the ground around this area
		|tip Lafoo will dig up the treasure.
		Click the random items that appear on the ground
		collect 6 Shiny Treasures##38575 |q 12572/1 |goto 52.43,53.13
	step
	label "Slay_Emperor_Cobras"
		kill 10 Emperor Cobra##28011 |q 12571/1 |goto 52.43,53.13
	step
		talk High-Oracle Soo-say##28027
		turnin Make the Bad Snake Go Away##12571 |goto 54.59,56.35
		accept Making Peace##12573 |goto 54.59,56.35
		turnin Gods like Shiny Things##12572 |goto 54.59,56.35
	step
		talk Shaman Vekjik##28315
		Tell him _"Shaman Vekjik, I have spoken with the big-tongues and they desire peace. I have brought this offering on their behalf."_
		Extend the Peace Offering to Shaman Vekjik |q 12573/1 |goto 51.30,64.63
	step
		talk Tamara Wobblesprocket##28568
		turnin The Part-time Hunter##12654 |goto 50.48,62.13
	step
		talk High-Oracle Soo-say##28027
		turnin Making Peace##12573 |goto 54.59,56.35
		accept Back So Soon?##12574 |goto 54.59,56.35
	step
		talk Mistcaller Soo-gan##28114
		turnin Back So Soon?##12574 |goto 42.15,38.65
		accept The Lost Mistwhisper Treasure##12575 |goto 42.15,38.65
		accept Forced Hand##12576 |goto 42.15,38.65
	stickystart "Slay_Frenzyheart_Spearbearers"
	stickystart "Slay_Frenzyheart_Scavengers"
	step
		kill Warlord Tartek##28105 |q 12575/1 |goto 41.29,19.79
		|tip He walks up on a red dragon.
	step
		click Mistwhisper Treasure##190578
		|tip It looks like a yellow glowing floating orb hovering over a tree stump altar.
		collect Mistwhisper Treasure##38601 |q 12575/2 |goto 41.69,19.49
	step
	label "Slay_Frenzyheart_Spearbearers"
		kill 8 Frenzyheart Spearbearer##28080 |q 12576/1 |goto 40.40,22.88
	step
	label "Slay_Frenzyheart_Scavengers"
		kill 6 Frenzyheart Scavenger##28081 |q 12576/2 |goto 40.40,22.88
	step
		talk Mistcaller Soo-gan##28114
		turnin The Lost Mistwhisper Treasure##12575 |goto 42.15,38.65
		turnin Forced Hand##12576 |goto 42.15,38.65
		accept Home Time!##12577 |goto 42.15,38.65
	step
		talk High-Oracle Soo-say##28027
		turnin Home Time!##12577 |goto 54.59,56.35
		accept The Angry Gorloc##12578 |goto 54.59,56.35
	step
		talk High-Oracle Soo-say##28027
		Tell him _"I need to find Moodle, doyou have his stress ball?"_
		collect 1 Moodle's Stress Ball##38624 |goto 54.58,56.36 |q 12578
	step
		Travel to Mosswalker Village |q 12578/1 |goto 75.35,54.23
	step
		use Moodle's Stress Ball##38624
		_Next to you:_
		talk Moodle##28122
		turnin The Angry Gorloc##12578
		accept The Mosswalker Savior##12580
		accept Lifeblood of the Mosswalker Shrine##12579
	step
		talk Mosswalker Victim##28113+
		|tip They look like friendly NPC's laying on the ground around this area.
		Select _<Check for a pulse...>_
		Rescue #6# Mosswalker Victims |q 12580/1 |goto 75.32,52.30
	step
		_Next to you:_
		talk Moodle##28122
		|tip Use Moodle's Stress Ball to summon Moodle if he's not already next to you.
		turnin The Mosswalker Savior##12580
	step
		click Lifeblood Shard##190702
		|tip They look like small red crystals on the ground around this area.
		collect 10 Lifeblood Shard##39063 |q 12579/1 |goto 69.34,57.94
	step
		_Next to you:_
		talk Moodle##28122
		|tip Use Moodle's Stress Ball to summon Moodle if he's not already next to you.
		turnin Lifeblood of the Mosswalker Shrine##12579
		accept A Hero's Burden##12581
	step
		Enter the cave |goto 70.89,58.70 < 10 |walk
		Follow the path down |goto 73.90,59.06 < 10 |only if walking
		kill Artruis the Heartless##28659
		kill Zepik the Gorloc Hunter##28668 |q 12581/1 |goto 72.12,57.61
		|tip Inside the cave.
		|tip This will decrease your Reputation with the Frenzyheart Tribe to Hated.
	step
		click Artruis' Phylactery##190777
		turnin A Hero's Burden##12581 |goto 72.06,57.57
		|tip Inside the cave.
		|tip Completing this quest will allow you to do The Oracles daily quests.
]])

ZygorGuidesViewer:RegisterInclude("Oracles_Dailies",[[
		Enter the cave |goto Sholazar Basin/0 70.89,58.70 < 10 |walk
		Follow the path down |goto 73.90,59.06 < 10 |walk
		kill Artruis the Heartless##28659, Zepik the Gorloc Hunter##28668
		talk Jaloot##28667
		|tip Inside the cave.
		|tip Kill Artruis the Heartless and Zepik the Gorloc Hunter in order to talk to Jaloot.
		|tip This will decrease your Reputation with the Frenzyheart Tribe to Hated.
		accept Hand of the Oracles##12689 |goto 72.46,57.52
		accept Return of the Friendly Dryskin##12695 |goto 72.46,57.52
	step
		talk High-Oracle Soo-say##28027
		turnin Return of the Friendly Dryskin##12695 |goto 54.59,56.36
	step
	label "Oracles_Dailies_Start"
		talk High-Oracle Soo-say##28027
		accept Appeasing the Great Rain Stone##12704 |goto 54.59,56.36
	step
		talk High-Oracle Soo-say##28027
		Tell him _"I need to find Lafoo, do you have his bug bag?"_
		collect 1 Lafoo's Bug Bag##38622 |goto 54.59,56.36
	step
		talk Oracle Soo-nee##29006
		|tip You will only be able to accept and turn in 1 of these 4 daily quests per day.
		accept A Cleansing Song##12735 |or |goto 53.34,56.45
		accept Song of Fecundity##12737 |or |goto 53.34,56.45
		accept Song of Reflection##12736 |or |goto 53.34,56.45
		accept Song of Wind and Water##12726 |or |goto 53.34,56.45
	step
		Enter the building |goto 54.00,54.33 < 5 |walk
		talk Oracle Soo-dow##29149
		|tip Inside the building.
		|tip You will only be able to accept and turn in 1 of these 3 daily quests per day.
		accept Mastery of the Crystals##12761 |or |goto 54.16,53.77
		accept Power of the Great Ones##12762 |or |goto 54.16,53.77
		accept Will of the Titans##12705 |or |goto 54.16,53.77
	step
		Stand on top of the twinkles of light on the ground around this area
		|tip Lafoo will dig up the treasure.
		|tip Use Lafoo's Bug Bag to summon Lafoo if he's not already next to you.
		Click the random items that appear on the ground
		collect 6 Shiny Treasures##38575 |q 12704/1 |goto 52.43,53.15
		only if haveq(12704)
	step
		use Chime of Cleansing##39572
		kill Spirit of Atha##29033 |q 12735/1 |goto 42.70,42.79
		only if haveq(12735)
	step
		use Chime of Cleansing##39572
		kill Spirit of Ha-Khalan##29018 |q 12735/2 |goto 49.41,62.70
		only if haveq(12735)
	step
		use Chime of Cleansing##39572
		kill Spirit of Koosu##29034 |q 12735/3 |goto 48.79,70.54
		only if haveq(12735)
	step
		use Horn of Fecundity##39599
		|tip Use it next to Soaked Fertile Dirt piles.
		|tip They look like mounds of dirt with small trees growing out of them on the ground around this area.
		Play the Song of Fecundity #8# Times |q 12737/1 |goto 26.19,37.14
		only if haveq(12737)
	step
		use Didgeridoo of Contemplation##39598
		Contemplate at the Glimmering Pillar |q 12736/1 |goto 49.98,37.39
		only if haveq(12736)
	step
		use Didgeridoo of Contemplation##39598
		Contemplate at the Suntouched Pillar |q 12736/4 |goto 33.43,52.26
		only if haveq(12736)
	step
		use Didgeridoo of Contemplation##39598
		Contemplate at the Mosslight Pillar |q 12736/2 |goto 36.39,74.88
		only if haveq(12736)
	step
		use Didgeridoo of Contemplation##39598
		Contemplate at the Skyreach Pillar |q 12736/3 |goto 53.30,79.41
		only if haveq(12736)
	step
		use Drums of the Tempest##39571
		Take Control of Haiphoon, the Great Tempest |invehicle |goto 25.35,35.40 |q 12726
		only if haveq(12726)
	stickystart "Devour_Storm_Revenants"
	step
		Haiphoon has 2 forms: Water and Air
		While in Air Form:
		kill Aqueous Spirit##28862+
		|tip When the Aqueous Spirits are weak, use the "Devour Water" ability to eat them.
		|tip After eating an Aqueous Spirit, you will turn into Haiphoon's Water Form.
		Devour #3# Aqueous Spirits |q 12726/1 |goto 25.35,35.40
		only if haveq(12726)
	step
	label "Devour_Storm_Revenants"
		While in Water Form:
		kill Storm Revenant##28858
		|tip When the Storm Revenants are weak, use the "Devour Wind" ability to eat them.
		|tip After eating a Storm Revenant, you will turn into Haiphoon's Air Form.
		Devour #3# Storm Revenants |q 12726/2 |goto 25.35,35.40
		only if haveq(12726)
	step
		click Sparktouched Crystal Defenses##191209
		collect 1 Crystal of the Violent Storm##39694 |complete itemcount(39694)>=1 |q 12761 |goto 33.05,75.69
		collect 1 Crystal of Unstable Energy##39693 |complete itemcount(39693)>=1 |q 12761 |goto 33.05,75.69
		collect 1 Crystal of the Frozen Grip##39689 |complete itemcount(39689)>=1 |q 12761 |goto 33.05,75.69
		only if haveq(12761)
	step
		use Crystal of the Frozen Grip##39689
		use Crystal of the Violent Storm##39694
		use Crystal of Unstable Energy##39693
		|tip Use the crystals to help you defeat Frenzyheart enemies around this area.
		Kill #50# Frenzyheart Attackers |q 12761/1 |goto 22.19,79.42
		only if haveq(12761)
	step
		use Dormant Polished Crystal##39747
		collect Energized Polished Crystal##39748 |q 12762/2 |goto 65.50,60.23
		only if haveq(12762)
	step
		use Energized Polished Crystal##39748
		Gain the Power of the Great Ones Buff |havebuff 134125 |q 12762 |goto 22.19,79.42
		only if haveq(12762)
	step
		Kill Frenzyheart enemies around this area
		Kill #30# Frenzyheart Attackers |q 12762/1 |goto 22.19,79.42
		only if haveq(12762)
	step
		Kill Frenzyheart enemies around this area
		collect 1 Tainted Crystal##39266 |goto 22.19,79.42
		only if haveq(12705)
	step
		use Tainted Crystal##39266 |goto Sholazar Basin 33.60,74.98 < 5 |walk
		|tip Use Soo-holu's abilities to help kill Frenzyheart enemies if you aren't a high level.
		Kill #50# Frenzyheart Attackers |q 12705/1 |goto 22.19,79.42
		only if haveq(12705)
	step
		talk Lightningcaller Soo-met##28107
		turnin Mastery of the Crystals##12761 |or |goto 33.50,74.75 |only if haveq(12761)
		turnin Power of the Great Ones##12762 |or |goto 33.50,74.75 |only if haveq(12762)
		turnin Will of the Titans##12705 |or |goto 33.50,74.75 |only if haveq(12705)
	step
		talk Oracle Soo-nee##29006
		turnin A Cleansing Song##12735 |or |goto 53.34,56.45 |only if haveq(12735)
		turnin Song of Fecundity##12737 |or |goto 53.34,56.45 |only if haveq(12737)
		turnin Song of Reflection##12736 |or |goto 53.34,56.45 |only if haveq(12736)
		turnin Song of Wind and Water##12726 |or |goto 53.34,56.45 |only if haveq(12726)
	step
		talk High-Oracle Soo-say##28027
		turnin Appeasing the Great Rain Stone##12704 |goto 54.59,56.36
	step
		You've completed the daily for today
		Click to restart the dailies guide |confirm |next "Oracles_Dailies_Start"
]])

--------------------------------------
----- Order of the Cloud Serpent -----
--------------------------------------

ZygorGuidesViewer:RegisterInclude("CS_PreQuests",[[
		talk Elder Anli##58564
		accept Wild Things##30134 |goto The Jade Forest/0 57.7,45.0
	step
		talk Instructor Tong##58225
		turnin Wild Things##30134 |goto 65.3,31.7
		accept Beating the Odds##30135 |goto 65.3,31.7
		accept Empty Nests##30136 |goto 65.3,31.7
		accept Egg Collection##30137 |goto 65.3,31.7
	stickystart "serpentegg"
	step
		Use the Silken Rope in your bags on Windward Hatchlings |use Silken Rope##78947
		Get 6 Hatchlings and bring them to this location |goto 65.8,31.2
		Return 6 Windward Hatchlings to their nests. |q 30136/1 |goto 64.4,31.1
	step
	label "serpentegg"
		kill Slitherscale Ripper##58212+, Slitherscale Eggdrinker##63532+
		Kill 8 Slitherscale saurok |q 30135/1 |goto 68.1,31.2
		click Serpent Egg##215392
		collect 6 Serpent Egg##78959 |q 30137/1 |goto 68.1,31.2
	step
		talk Instructor Tong##58225
		turnin Beating the Odds##30135 |goto 65.3,31.7
		turnin Empty Nests##30136 |goto 65.3,31.7
		turnin Egg Collection##30137 |goto 65.3,31.7
		accept Choosing the One##30138 |goto 65.3,31.7
		turnin Choosing the One##30138 |goto 65.3,31.7
	step
		talk Instructor Tong##58225
		|tip You will only accept one of the following quests.
		accept The Rider's Journey##30139 |goto 65.3,31.7 |or
		accept The Rider's Journey##30140 |goto 65.3,31.7 |or
		accept The Rider's Journey##30141 |goto 65.3,31.7 |or
	step
		talk Instructor Skythorn##58228
		|tip You will only turn in one of the following quests.
		turnin The Rider's Journey##30139 |goto 57.6,45.1
		turnin The Rider's Journey##30140 |goto 57.6,45.1
		turnin The Rider's Journey##30141 |goto 57.6,45.1
		accept It's A...##30142 |goto 57.6,45.1
	step
		Watch the scene and see your egg hatch
		Egg Hatched |q 30142/1
	step
		talk Instructor Skythorn##58228
		turnin It's A...##30142 |goto 57.6,45.1
]])

---------------------
----- Therazane -----
---------------------

ZygorGuidesViewer:RegisterInclude("Therazane_Dailies", [[
		Starting Dailies |complete true
	step
	label "dailies"
		talk Felsen the Enduring##43805
		accept Fear of Boring##27046 |goto Deepholm 56.1,14.4
		accept Motes##27047 |goto Deepholm 56.1,14.4
		accept Beneath the Surface##28488 |goto Deepholm 56.1,14.4
		|tip This quest can be offered at random and may not be offered everyday.
	step
		talk Terrath the Steady##43806
		accept The Restless Brood##28391 |goto 56.6,14.1
		|tip This quest can be offered at random if you have at least Revered reputation with Therazane. However, the quest may not be offered everyday.
		only if rep ('Therazane') >= Revered
	step
		talk Pyrite Stonetender##44945
		accept Lost In The Deeps##26710 |goto 55.4,14.2
		|tip This quest can be offered at random and may not be offered everyday.
	step
		talk Gorsik the Tumultuous##43804
		accept Soft Rock##27049 |goto 57.3,12.5
		accept Fungal Fury##27050 |goto 57.3,12.5
	step
		talk Ruberick##44973
		accept Through Persistence##27051 |goto 59.6,14.0
		accept Glop, Son of Glop##28390 |only if rep ('Therazane') >= Revered |goto 59.6,14.0
		|tip This quest can be offered at random if you have at least Revered reputation with Therazane. However, the quest may not be offered everyday.
	step
		Use your Stonework Mallet next to the Pale Resonating Crystal |use Stonework Mallet##60266
		|tip It's a huge green crystal sitting on the ground.
		Strike the Pale Resonating Crystal |q 28391/1 |goto 32.7,24.3
		kill Aeosera##43641
		|tip Click the Boulder Platforms to jump from rock to rock while fighting Aeosera. When she is casting her Breath Fire ability, jump to another rock and attack her while she is breathing fire to the other rock.  Repeat this until she surrenders.
		Defeat Aeosera |q 28391/2
		only if rep ('Therazane') >= Revered
	step
		talk Terrath the Steady##43806
		turnin The Restless Brood##28391 |goto 56.6,14.1
		only if rep ('Therazane') >= Revered
	stickystart "painitemote"
	step
		Enter the cave |goto 58.3,25.6 < 10 |walk
		talk Ricket##44968
		accept Underground Economy##27048 |goto 61.3,26.2
		|tip This quest can be offered at random and may not be offered everyday.
	step
		Follow the path inside the cave
		Click the Ruby Gemstone Cluster
		|tip It looks like 3 dark colored spinning rings with a bunch of red crystals spinning above them.
		kill Enormous Gyreworm##48533
		collect Ruby Crystal Cluster##64404 |q 28488/1 |goto 66.1,28.1
	step
		Use Ricket's Tickers next to Deep Alabaster Crystals |use Ricket's Tickers##65514
		|tip They look like huge white rocks around this area.
		collect 3 Deep Alabaster Crystal##65504 |q 27048/1 |goto 63.6,23.0
	step
		Follow this path |goto 62.6,23.9 < 10 |only if walking
		Use Ricket's Tickers next to Deep Celestite Crystals |use Ricket's Tickers##65514
		|tip They look like huge blue rocks around this area.
		collect 3 Deep Celestite Crystal##65507 |q 27048/2 |goto 61.8,19.7
	step
		Follow this path |goto 62.0,18.0 < 10 |only if walking
		Use Ricket's Tickers next to Deep Amethyst Crystals |use Ricket's Tickers##65514
		|tip They look like huge purple rocks around this area.
		collect 3 Deep Amethyst Crystal##65508 |q 27048/3 |goto 64.4,18.6
	step
		Follow this path |goto 65.3,18.4 < 10 |only if walking
		Use Ricket's Tickers next to Deep Garnet Crystals |use Ricket's Tickers##65514
		|tip They look like huge red rocks around this area.
		collect 3 Deep Garnet Crystal##65510 |q 27048/4 |goto 66.4,20.2
	step
	label "painitemote"
		All around inside this cave:
		kill Gorged Gyreworm##42766+, Gyreworm##44257+
		kill 10 Gyreworm |q 27046/1 |goto 63.6,23.9
		Click Painite Shards
		|tip They look like small green glowing crystals sitting on the ground all around inside this cave.
		collect 10 Painite Mote##60791 |q 27047/1 |goto 63.6,23.9
	step
		talk Pebble##49956 |goto 63.1,20.8
		Tell him to follow you
	step
		Follow this path |goto 64.2,17.6 < 10 |only if walking
		talk Ricket##44968
		turnin Underground Economy##27048 |goto 61.3,26.2
	step
		Leave the cave |goto 58.3,25.6 < 10 |walk
		Wait in this spot until Pebble bobbles around appreciatively and then disappears into the distance
		Bring Pebble to safety |q 26710/1 |goto 58.3,25.6
	step
		kill 8 Fungal Behemoth |q 27049/1 |goto 74.0,41.2
		kill Verlok Grubthumper##43367+, Verlok Shroomtender##43368+
		collect Bag of Verlok Miracle-Grow##60767 |q 27051/1 |goto 74.0,41.2
		Click Sprouting Crimson Mushrooms
		|tip They look like tiny mushrooms on the ground around this area. Try to only click the solid blue, solid red or white-brown ones. The blue ones with red spots will explode and hurt you.
		Destroy 10 Freshly Sprouted Mushrooms |q 27050/1 |goto 74.0,41.2
	step
		Enter the cave |goto 68.6,29.1 < 10 |walk
		talk Earthmender Norsala##43503
		Tell her you're ready when she is
		kill Fungalmancer Glop |q 28390/1 |goto 69.8,31.9
		|tip Follow him each time he runs away. Avoid the mushrooms as you walk, they will give you a debuff. While fighting Fungalmancer Glop, kill the Boomshrooms he creates. Don't let them grow too big, they will explode and deal a lot of damage.
	step
		Follow the path up |goto 70.2,33.8 < 10 |only if walking
		Leave the cave |goto 68.6,29.1 < 10 |walk
		talk Felsen the Enduring##43805
		turnin Fear of Boring##27046 |goto Deepholm 56.1,14.4
		turnin Motes##27047 |goto Deepholm 56.1,14.4
		turnin Beneath the Surface##28488 |goto Deepholm 56.1,14.4
	step
		talk Pyrite Stonetender##44945
		turnin Lost In The Deeps##26710 |goto 55.4,14.2
	step
		talk Gorsik the Tumultuous##43804
		turnin Soft Rock##27049 |goto 57.3,12.5
		turnin Fungal Fury##27050 |goto 57.3,12.5
	step
		talk Ruberick##44973
		turnin Through Persistence##27051 |goto 59.6,14.0
		turnin Glop, Son of Glop##28390 |only if rep ('Therazane') >= Revered |goto 59.6,14.0
	step
		You have reached the end of the dailies for today.
		Click here to be taken back to the beginning of the dailies |confirm |next "dailies"
]])

-----------------------
----- The Tillers -----
-----------------------

ZygorGuidesViewer:RegisterInclude("Tillers_Quests",[[
		talk Tang Ironhoe##64036 |only Alliance
		accept The Tillers##31372 |goto Valley of the Four Winds 87.0,60.8 |only Alliance
		talk Farmhand Dooka##64011 |only Horde
		accept The Tillers##31374 |goto Vale of Eternal Blossoms 60.2,22.9 |only Horde
	step
		talk Farmer Yoon##58721
		turnin The Tillers##31372 |goto Valley of the Four Winds 52.0,48.0 |only Alliance
		turnin The Tillers##31374 |goto Valley of the Four Winds 52.0,48.0 |only Horde
		accept A Helping Hand##30252 |goto Valley of the Four Winds 52.0,48.0
	step
		clicknpc Unbudging Rock##58719
		Clear 8 Unbudging Rocks |q 30252/1 |goto 51.8,48.8
	step
		talk Farmer Yoon##58646
		turnin A Helping Hand##30252 |goto 52.8,47.9
	step
		talk Farmer Yoon##58646
		accept Learn and Grow I: Seeds##30535 |goto 52.3,48.8
	step
		talk Merchant Greenfield##58718
		Tell him you're there to pick up seeds
		Get a Packet of Green Cabbage Seeds |q 30535/1 |goto 52.9,52.2
	step
		talk Farmer Yoon##58646
		turnin Learn and Grow I: Seeds##30535 |goto 52.3,48.8
		accept Learn and Grow II: Tilling and Planting##30254 |goto 52.3,48.8
	step
		clicknpc Untilled Soil##59985+
		Till 2 patches of Soil |q 30254/1 |goto 52.0,48.3
		Use the EZ-Gro Green Cabbage Seeds in your bags on the Tilled Soil |use EZ-Gro Green Cabbage Seeds##80302
		Plant seeds in 2 patches of Tilled Soil |q 30254/2 |goto 52.0,48.3
	step
		talk Farmer Yoon##58646
		turnin Learn and Grow II: Tilling and Planting##30254 |goto 52.3,48.8
		accept Learn and Grow III: Tending Crops##30255 |goto 52.3,48.8
	step
		Use the Rusty Watering Can on the Parched EZ-Gro Green Cabbage |use Rusty Watering Can##79104
		Water 2 parched Ez-Gro Green Cabbage |q 30255/1 |goto 52.0,48.3
	step
		talk Farmer Yoon##58646
		turnin Learn and Grow III: Tending Crops##30255 |goto 52.3,48.8
		accept Learn and Grow IV: Harvesting##30256 |goto 52.3,48.8
	step
		clicknpc Ripe EZ-Gro Green Cabbage##59833
		collect 2 EZ-Gro Green Cabbage##80314 |q 30256/1 |goto 52.0,48.3
	step
		talk Farmer Yoon##58646
		turnin Learn and Grow IV: Harvesting##30256 |goto 52.3,48.8
		accept Learn and Grow V: Halfhill Market##30257 |goto 52.3,48.8
	step
		click Dark Soil##210582
		collect Marsh Lily##79268 |q 30257/1 |goto 52.8,48.0
	step
		talk Gina Mudclaw##58706
		turnin Learn and Grow V: Halfhill Market##30257 |goto 53.1,51.8
		accept Learn and Grow VI: Gina's Vote##31945 |goto 53.1,51.8
	step
		talk Merchant Greenfield##58718
		buy 1 Scallion Seeds##80591 |q 31945 |goto 52.9,52.2
	step
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
	step
		clicknpc Bursting Scallions##63160
		clicknpc Ripe Scallions##63165
		Harvest Ripe Scallions |q 31945/2 |goto 52.0,48.4
		collect 5 Scallion##74843 |q 31945/3 |goto 52.0,48.4
		|next "exit"
	step
	label "runty"
		clicknpc Runty Scallions##63166
		Press your Space Bar and jump |goto 52.0,48.4
		Click here to return to the information page |next "info" |confirm
		Click here when you are have tilled your crops |next "bursting" |confirm
	step
	label "wiggling"
		clicknpc Wiggling Scallions##63169
		kill Voracious Virmen##60039 |goto 52.0,48.4
		Click here to return to the information page |next "info" |confirm
		Click here when you are have tilled your crops |next "bursting" |confirm
	step
	label "infested"
		click Vintage Bug Sprayer##211331
		collect Vintage Bug Sprayer##80513 |n
		Use your Vintage Bug Sprayer on the Infested Scallions |goto 52.2,48.3 |use Vintage Bug Sprayer##80513
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
		clicknpc Wild Scallions##63170
		Ride the Scallion |invehicle |c |goto 52.0,48.4
	step
		Spam the Flex ability on your new hotbar, when the plant tries to cast Vine Slam, interrupt it with your Gnaw ability
		Build 50 stacks on Dominance |outvehicle |c
	step
		Click here to return to the information page. |next "info" |confirm
		Click here when you are have tilled your crops. |next "bursting" |confirm
	step
	label "tangled"
		clicknpc Tangled Scallions##63168 |goto 51.7,48.9 < 5
		confirm
	step
		Click here to return to the information page |next "info" |confirm
		Click here when you are have tilled your crops |next "bursting" |confirm
	step
	label "parched"
		Use the Rusty Watering Can on the Parched Scallions |use Rusty Watering Can##79104
		Click here to return to the information page |next "info" |confirm |goto 52.0,48.4
		Click here when you are have tilled your crops |next "bursting" |confirm |goto 52.0,48.4
	step
	label "smothered"
		clicknpc Encroaching Weed##60185 |goto 52.0,48.4
		Ride the Weed |invehicle |c
	step
		Spam the Pull ability on your new hotbar
		Pull the Weed |outvehicle |c
	step
		Click here to return to the information page |next "info" |confirm
		Click here when you are have tilled your crops |next "bursting" |confirm
	step
	label "exit"
		talk Gina Mudclaw##58706
		turnin Learn and Grow VI: Gina's Vote##31945 |goto 53.1,51.8
]])

--DRAGONFLIGHT
ZygorGuidesViewer:RegisterInclude("Dragon_Choose_World_Quests",[[
		Choose a World Quest to Complete |confirm
		|tip With the "World Quests" guide loaded, open your world map.
		|tip Left-click on a world quest icon to select that world quest.
		|tip The guide will automatically load the steps for that world quest.
		'|confirm |next "Valdrakken_Accord_WQ" |complete readyq(71023) and not ZGV.WorldQuests:QuestsQueued()
		'|confirm |next "Maruuk_Centaur_WQ" |complete readyq(65606) and not ZGV.WorldQuests:QuestsQueued()
		'|confirm |next "Iskaara_Tuskarr_WQ" |complete readyq(66511) and not ZGV.WorldQuests:QuestsQueued()
		'|confirm |next "Dragonscale_Expedition_WQ" |complete readyq(66156) and not ZGV.WorldQuests:QuestsQueued()
		|worldquestqueue
]])

ZygorGuidesViewer:RegisterInclude("Dragon_World_Quest_Emissaries",[[
		-- if we are running queued world quests, do not move to emissary turnins
		'|confirm |next "Choose_World_Quest" |complete true |only if ZGV.WorldQuests:QuestsQueued()
	step
	label "Valdrakken_Accord_WQ"
		Enter the building |goto Valdrakken/0 55.29,46.18 < 30 |walk
		talk Unatos##193015
		|tip Inside the building.
		turnin Renowned with the Valdrakken Accord##71023 |goto 58.17,35.14
		|only if readyq(71023)
	step
	label "Maruuk_Centaur_WQ"
		talk Agari Dotur##185179
		|tip Inside the building.
		turnin Renowned with the Maruuk##65606 |goto Ohn'ahran Plains/0 60.40,37.66
		|only if readyq(65606)
	step
	label "Iskaara_Tuskarr_WQ"
		talk Murik##193006
		turnin Renowned with the Iskaara Tuskarr##66511 |goto The Azure Span/0 13.14,49.26
		|only if readyq(66511)
	step
	label "Dragonscale_Expedition_WQ"
		Enter the building |goto The Waking Shores/0 47.29,82.75 < 7 |walk
		talk Cataloger Jakes##189226
		|tip Inside the building.
		turnin Renowned with the Dragonscale Expedition##66156 |goto 47.10,82.57
		|only if readyq(66156)
	step
		|next "Choose_World_Quest"
]])