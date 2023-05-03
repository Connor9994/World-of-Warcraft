if UnitFactionGroup("player")~="Horde" then return end
local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end

-----------------------
----- Battle Pets -----
-----------------------

ZygorGuidesViewer:RegisterInclude("H_Battlepet_quests",[[
		talk Varzok##63626
		accept Learning the Ropes##31588 |goto Orgrimmar/1 52.56,59.27
	step
		talk Varzok##63626
		Learn the Battle Pet Training ability |learnspell Revive Battle Pets##125439 |goto 52.56,59.27
	step
		clicknpc Dung Beetle##62115
		|tip It could also be a Spiny Lizard.
		Win a Pet Battle |q 31588/1 |goto 49.96,57.40
		|tip Open your Pet Journal with "Shift+P" and assign pets to your battle slots if you can't start the battle.
	step
		talk Varzok##63626
		turnin Learning the Ropes##31588 |goto 52.56,59.27
		accept On The Mend##31589 |goto 52.56,59.27
	step
		talk Murog##47764
		Tell him: _"I'd like to heal and revive my battle pets."_
		Heal your Battle Pets |q 31589/1 |goto 62.1,35.3
	step
		talk Varzok##63626
		turnin On The Mend##31589 |goto 52.56,59.27
		accept Level Up!##31827 |goto 52.56,59.27
	step
		clicknpc Dung Beetle##62115
		|tip It could also be a Spiny Lizard.
		Raise a Battle Pet to level 3 |q 31827/1 |goto 49.96,57.40
	step
		_Click the quest completion box that appears_
		accept Varzok##32009
	step
		talk Varzok##63626
		turnin Varzok##32009 |goto Orgrimmar 52.5,59.3
	step
		talk Varzok##63626
		turnin Level Up!##31827 |goto Orgrimmar 52.5,59.3
		accept Zunta, The Pet Tamer##31812 |goto Orgrimmar 52.5,59.3
		accept Got one!##31590 |goto Orgrimmar 52.5,59.3
	step
		clicknpc Dung Beetle##62115
		|tip It could also be a Spiny Lizard.
		|tip When it reaches 35% health or lower, use your Trap ability to capture it.
		Catch a Pet |q 31590/1 |goto 49.96,57.40
	step
		talk Varzok##63626
		turnin Got one!##31590 |goto Orgrimmar 52.5,59.3
	step
		talk Zunta##66126
		Defeat Zunta |q 31812/1 |goto Durotar/0 43.86,28.86
		|tip Zunta's pet team consists of level 2 Beast and Critter battle pets.
		|tip Mechanical battle pets are strong against Beast battle pets.
		|tip Beast battle pets are strong against Critter battle pets.
		|tip Defeat him in battle pet combat.
	step
		talk Zunta##66126
		turnin Zunta, The Pet Tamer##31812 |goto 43.86,28.86
		accept Dagra the Fierce##31813 |goto 43.86,28.86
	step
		talk Dagra the Fierce##66135
		Defeat Dagra the Fierce |q 31813/1 |goto Northern Barrens/0 58.61,53.04
		|tip Dagra's pet team consists of level 3 Beast and Critter battle pets.
		|tip Mechanical battle pets are strong against Beast battle pets.
		|tip Beast battle pets are strong against Critter battle pets.
		|tip Defeat her in battle pet combat.
	step
		talk Dagra the Fierce##66135
		turnin Dagra the Fierce##31813 |goto 58.61,53.04
		accept Analynn##31814 |goto 58.61,53.04
	step
		talk Analynn##66136
		Defeat Analynn |q 31814/1 |goto Ashenvale/0 20.20,29.55
		|tip Analynn's pet team consists of level 5 Aquatic, Critter, and Flying battle pets.
		|tip Flying battle pets are strong against Aquatic battle pets.
		|tip Beast battle pets are strong against Critter battle pets.
		|tip Magic battle pets are strong against Flying battle pets.
		|tip Defeat her in battle pet combat.
	step
		talk Analynn##66136
		turnin Analynn##31814 |goto 20.20,29.55
		accept Zonya the Sadist##31815 |goto 20.20,29.55
	step
		talk Zonya the Sadist##66137
		Defeat Zonya the Sadist |q 31815/1 |goto Stonetalon Mountains/0 59.65,71.58
		|tip Zonya's pet team consists of level 7 Beast and Critter battle pets.
		|tip Mechanical battle pets are strong against Beast battle pets.
		|tip Beast battle pets are strong against Critter battle pets.
		|tip Defeat her in battle pet combat.
	step
		talk Zonya the Sadist##66137
		turnin Zonya the Sadist##31815 |goto 59.65,71.58
		accept Merda Stronghoof##31817 |goto 59.65,71.58
	step
		talk Merda Stronghoof##66372
		Defeat Merda Stronghoof |q 31817/1 |goto Desolace/0 57.11,45.69
		|tip Merda's pet team consists of level 9 Aquatic, Elemental, and Critter battle pets.
		|tip Flying battle pets are strong against Aquatic battle pets.
		|tip Aquatic battle pets are strong against Elemental battle pets.
		|tip Beast battle pets are strong against Critter battle pets.
		|tip Defeat her in battle pet combat.
	step
		talk Merda Stronghoof##66372
		turnin Merda Stronghoof##31817 |goto 57.11,45.69
		accept Cassandra Kaboom##31870 |goto 57.11,45.69
	step
		talk Cassandra Kaboom##66422
		Defeat Cassandra Kaboom |q 31870/1 |goto Southern Barrens/0 39.59,79.14
		|tip Cassandra's pet team consists of level 11 Mechanical battle pets.
		|tip Elemental battle pets are strong against Mechanical battle pets.
		|tip Defeat her in battle pet combat.
	step
		talk Cassandra Kaboom##66422
		turnin Cassandra Kaboom##31870 |goto 39.59,79.14
		accept A Tamer's Homecoming##31918 |goto 39.59,79.14
	step
		talk Varzok##63626
		turnin A Tamer's Homecoming##31918 |goto Orgrimmar/1 52.56,59.27
		accept Battle Pet Tamers: Kalimdor##31891 |goto 52.56,59.27
	step
		talk Traitor Gluk##66352
		Defeat Traitor Gluk |q 31891/1 |goto Feralas/0 59.74,49.65
		|tip Gluk's pet team consists of level 13 Dragonkin, Beast, and Critter battle pets.
		|tip Humanoid battle pets are strong against Dragonkin battle pets.
		|tip Mechanical battle pets are strong against Beast battle pets.
		|tip Beast battle pets are strong against Critter battle pets.
		|tip Defeat him in battle pet combat.
	step
		talk Grazzle the Great ##66436
		Defeat Grazzle the Great  |q 31891/2 |goto Dustwallow Marsh/0 53.85,74.88
		|tip Grazzle's pet team consists of level 14 Dragonkin battle pets.
		|tip Humanoid battle pets are strong against Dragonkin battle pets.
		|tip Defeat him in battle pet combat.
	step
		talk Kela Grimtotem##66452
		Defeat Kela Grimtotem |q 31891/3 |goto Thousand Needles/0 31.87,32.94
		|tip Kela's pet team consists of level 15 Critter and Beast battle pets.
		|tip Beast battle pets are strong against Critter battle pets.
		|tip Mechanical battle pets are strong against Beast battle pets.
		|tip Defeat her in battle pet combat.
	step
		talk Zoltan##66442
		Defeat Zoltan |q 31891/4 |goto Felwood/0 39.95,56.57
		|tip Zoltan's pet team consists of level 16 Mechanical and Magic battle pets.
		|tip Elemental battle pets are strong against Mechanical battle pets.
		|tip Dragonkin battle pets are strong against Magic battle pets.
		|tip Defeat him in battle pet combat.
	step
		talk Elena Flutterfly##66412
		Defeat Elena Flutterfly |q 31891/5 |goto Moonglade/0 46.14,60.26
		|tip Elena's pet team consists of level 17 Dragonkin, Magic, and Flying battle pets.
		|tip Humanoid battle pets are strong against Dragonkin battle pets.
		|tip Dragonkin battle pets are strong against Magic battle pets.
		|tip Magic battle pets are strong against Flying battle pets.
		|tip Defeat her in battle pet combat.
	step
		_Click the quest completion box that appears_
		turnin Battle Pet Tamers: Kalimdor##31891 |goto 46.14,60.26
		accept Grand Master Trixxy##31897 |goto 46.14,60.26
	step
		talk Stone Cold Trixxy##66466
		Defeat Stone Cold Trixxy |q 31897/1 |goto Winterspring/0 65.63,64.52
		|tip Trixxy's pet team consists of level 19 Dragonkin, Beast, and Flying battle pets.
		|tip Humanoid battle pets are strong against Dragonkin battle pets.
		|tip Mechanical battle pets are strong against Beast battle pets.
		|tip Magic battle pets are strong against Flying battle pets.
		|tip Defeat her in battle pet combat.
	step
		talk Stone Cold Trixxy##66466
		turnin Grand Master Trixxy##31897 |goto 65.63,64.52
		accept The Returning Champion##31977 |goto 65.63,64.52 |only if not completedq(31977) and not completedq(31976)
	step
		talk Varzok##63626
		turnin The Returning Champion##31977 |goto Orgrimmar/1 52.56,59.27
		|only if not completedq(31977) and not completedq(31976)
	step
		talk Varzok##63626
		accept Battle Pet Tamers: Eastern Kingdoms##31902 |goto Orgrimmar/1 52.56,59.27
	step
		talk David Kosse##66478
		Defeat David Kosse |q 31902/1 |goto The Hinterlands/0 62.98,54.59
		|tip David's pet team consists of level 13 Critter, Beast, and Magic battle pets.
		|tip Beast battle pets are strong against Critter battle pets.
		|tip Mechanical battle pets are strong against Beast battle pets.
		|tip Dragonkin battle pets are strong against Magic battle pets.
		|tip Defeat him in battle pet combat.
	step
		talk Deiza Plaguehorn##66512
		Defeat Deiza Plaguehorn |q 31902/2 |goto Eastern Plaguelands/0 66.96,52.42
		|tip Deiza's pet team consists of level 14 Beast and Undead battle pets.
		|tip Mechanical battle pets are strong against Beast battle pets.
		|tip Critter battle pets are strong against Undead battle pets.
		|tip Defeat her in battle pet combat.
	step
		talk Kortas Darkhammer##66515
		Defeat Kortas Darkhammer |q 31902/3 |goto Searing Gorge/0 35.31,27.75
		|tip Kortas' pet team consists of level 15 Dragonkin battle pets.
		|tip Humanoid battle pets are strong against Dragonkin battle pets.
		|tip Defeat him in battle pet combat.
	step
		talk Everessa##66518
		Defeat Everessa |q 31902/4 |goto Swamp of Sorrows/0 76.81,41.50
		|tip Magic battle pets are strong against Flying battle pets.
		|tip Flying battle pets are strong against Aquatic battle pets.
		|tip Mechanical battle pets are strong against Beast battle pets.
		|tip Defeat her in battle pet combat.
	step
		talk Durin Darkhammer##66520
		Defeat Durin Darkhammer |q 31902/5 |goto Burning Steppes/0 25.54,47.50
		|tip Durin's pet team consists of level 17 Flying, Critter, and Elemental battle pets.
		|tip Magic battle pets are strong against Flying battle pets.
		|tip Beast battle pets are strong against Critter battle pets.
		|tip Aquatic battle pets are strong against Elemental battle pets.
		|tip Defeat him in battle pet combat.
	step
		_Click the quest completion box that appears_
		turnin Battle Pet Tamers: Eastern Kingdoms##31902 |goto 66.96,52.42
	step
		talk Varzok##63626
		accept Battle Pet Tamers: Outland##31921 |goto Orgrimmar/1 52.56,59.27
	step
		talk Nicki Tinytech##66550
		accept Nicki Tinytech##31922 |goto Hellfire Peninsula/0 64.31,49.30 |only if completedq(31920)
		Defeat Nicki Tinytech |q 31921/1 |goto Hellfire Peninsula/0 64.31,49.30
		|tip Nicki's pet team consists of level 20 Mechanical battle pets.
		|tip Elemental battle pets are strong against Mechanical battle pets.
		|tip Defeat her in battle pet combat.
	step
		talk Nicki Tinytech##66550
		turnin Nicki Tinytech##31922 |goto 64.31,49.30
		|only if completedq(31920)
	step
		talk Ras'an##66551
		accept Ras'an##31923 |goto Zangarmarsh/0 17.24,50.52 |only if completedq(31920)
		Defeat Ras'an |q 31921/2 |goto Zangarmarsh/0 17.24,50.52
		|tip Ras'an's pet team consists of level 21 Flying, Magic, and Humanoid battle pets.
		|tip Magic battle pets are strong against Flying battle pets.
		|tip Dragonkin battle pets are strong against Magic battle pets.
		|tip Undead battle pets are strong against Humanoid battle pets.
		|tip Defeat him in battle pet combat.
	step
		talk Ras'an##66551
		turnin Ras'an##31923 |goto Zangarmarsh/0 17.24,50.52
		|only if completedq(31920)
	step
		talk Narrok##66552
		accept Narrok##31924 |goto Nagrand/0 60.97,49.42 |only if completedq(31920)
		Defeat Narrok |q 31921/3 |goto Nagrand/0 60.97,49.42
		|tip Narrok's pet team consists of level 22 Aquatic, Critter, and Beast battle pets.
		|tip Flying battle pets are strong against Aquatic battle pets.
		|tip Beast battle pets are strong against Critter battle pets.
		|tip Mechanical battle pets are strong against Beast battle pets.
		|tip Defeat him in battle pet combat.
	step
		talk Narrok##66552
		turnin Narrok##31924 |goto 60.97,49.42
		|only if completedq(31920)
	step
		talk Morulu The Elder##66553
		accept Morulu The Elder##31925 |goto Shattrath City/0 58.76,70.05 |only if completedq(31920)
		Defeat Morulu The Elder |q 31921/4 |goto Shattrath City/0 58.76,70.05
		|tip Morulu's pet team consists of level 23 Aquatic battle pets.
		|tip Flying battle pets are strong against Aquatic battle pets.
		|tip Defeat him in battle pet combat.
	step
		talk Morulu The Elder##66553
		turnin Morulu The Elder##31925 |goto 58.76,70.05
		|only if completedq(31920)
	step
		_Click the quest completion box that appears_
		turnin Battle Pet Tamers: Outland##31921 |goto 58.76,70.05
		accept Grand Master Antari##31920 |goto 58.76,70.05 |only if not completedq(31920)
	step
		talk Bloodknight Antari##66557
		Defeat Bloodknight Antari |q 31920/1 |goto Shadowmoon Valley/0 30.51,41.77
		|tip Analynn's pet team consists of level 24 Magic, Elemental, and Dragonkin battle pets.
		|tip Dragonkin battle pets are strong against Magic battle pets.
		|tip Aquatic battle pets are strong against Elemental battle pets.
		|tip Humanoid battle pets are strong against Dragonkin battle pets.
		|tip Defeat him in battle pet combat.
	step
		talk Bloodknight Antari##66557
		turnin Grand Master Antari##31920 |goto 30.51,41.77
		accept Exceeding Expectations##31982 |goto 30.51,41.77 |only if not completedq(31981) and not completedq(31982)
	step
		talk Varzok##63626
		turnin Exceeding Expectations##31982 |goto Orgrimmar/1 52.56,59.27
		|only if not completedq(31981) and not completedq(31982)
	step
		talk Varzok##63626
		accept Battle Pet Tamers: Northrend##31929 |goto Orgrimmar/1 52.56,59.27
	step
		talk Nearly Headless Jacob##66636
		accept Nearly Headless Jacob##31932 |goto Crystalsong Forest/0 50.14,58.97 |only if completedq(31928)
		Defeat Nearly Headless Jacob |q 31929/2 |goto Crystalsong Forest/0 50.14,58.97
		|tip Jacob's pet team consists of level 25 Undead battle pets.
		|tip Critter battle pets are strong against Undead battle pets.
		|tip Defeat him in battle pet combat.
	step
		talk Nearly Headless Jacob##66636
		accept Nearly Headless Jacob##31932 |goto 50.14,58.97
		|only if completedq(31928)
	step
		talk Okrut Dragonwaste##66638
		accept Okrut Dragonwaste##31933 |goto Dragonblight/0 59.02,77.05 |only if completedq(31928)
		Defeat Okrut Dragonwaste |q 31929/3 |goto Dragonblight/0 59.02,77.05
		|tip Okrut's pet team consists of level 25 Dragonkin and Undead battle pets.
		|tip Humanoid battle pets are strong against Dragonkin battle pets.
		|tip Critter battle pets are strong against Undead battle pets.
		|tip Defeat him in battle pet combat.
	step
		talk Okrut Dragonwaste##66638
		turnin Okrut Dragonwaste##31933 |goto Dragonblight/0 59.02,77.05
		|only if completedq(31928)
	step
		talk Beegle Blastfuse##66635
		accept Beegle Blastfuse##31931 |goto Howling Fjord/0 28.61,33.88 |only if completedq(31928)
		Defeat Beegle Blastfuse |q 31929/1 |goto Howling Fjord/0 28.61,33.88
		|tip Beegle's pet team consists of level 25 Flying and Aquatic battle pets.
		|tip Magic battle pets are strong against Flying battle pets.
		|tip Flying battle pets are strong against Aquatic battle pets.
		|tip Defeat him in battle pet combat.
	step
		talk Beegle Blastfuse##66635
		turnin Beegle Blastfuse##31931 |goto Howling Fjord/0 28.61,33.88
		|only if completedq(31928)
	step
		talk Gutretch##66639
		accept Gutretch##31934 |goto Zul'Drak/0 13.22,66.79 |only if completedq(31928)
		Defeat Gutretch |q 31929/4 |goto Zul'Drak/0 13.22,66.79
		|tip Gutretch's pet team consists of level 25 Beast and Critter battle pets.
		|tip Mechanical battle pets are strong against Beast battle pets.
		|tip Beast battle pets are strong against Critter battle pets.
		|tip Defeat him in battle pet combat.
	step
		talk Gutretch##66639
		turnin Gutretch##31934 |goto 13.22,66.79
		|only if completedq(31928)
	step
		_Click the quest completion box that appears_
		turnin Battle Pet Tamers: Northrend##31929 |goto 59.02,77.05
		accept Grand Master Payne##31928 |goto 59.02,77.05 |only if not completedq(31928)
	step
		talk Major Payne##66675
		Defeat Major Payne |q 31928/1 |goto Icecrown/0 77.39,19.56
		|tip Payne's pet team consists of level 25 Beast, Mechanical, and Elemental battle pets.
		|tip Mechanical battle pets are strong against Beast battle pets.
		|tip Elemental battle pets are strong against Mechanical battle pets.
		|tip Aquatic battle pets are strong against Elemental battle pets.
		|tip Defeat him in battle pet combat.
	step
		talk Major Payne##66675
		turnin Grand Master Payne##31928 |goto 77.39,19.56
		accept A Brief Reprieve##31984 |goto 77.39,19.56 |only if not completedq(31929) and not completedq(31927)
	step
		talk Varzok##63626
		turnin A Brief Reprieve##31984 |goto Orgrimmar/1 52.56,59.27
		|only if not completedq(31929) and not completedq(31927)
	step
		talk Varzok##63626
		accept Battle Pet Tamers: Cataclysm##31967 |goto Orgrimmar/1 52.56,59.27
	step
		talk Brok##66819
		accept Brok##31972 |goto Mount Hyjal/0 61.37,32.71 |only if completedq(31970)
		Defeat Brok |q 31967/1 |goto Mount Hyjal/0 61.37,32.71
		|tip Brok's pet team consists of level 25 Magic, Beast, and Critter battle pets.
		|tip Dragonkin battle pets are strong against Magic battle pets.
		|tip Mechanical battle pets are strong against Beast battle pets.
		|tip Beast battle pets are strong against Critter battle pets.
		|tip Defeat him in battle pet combat.
	step
		talk Brok##66819
		turnin Brok##31972 |goto 61.37,32.71
		|only if completedq(31970)
	step
		talk Bordin Steadyfist##66815
		accept Bordin Steadyfist##31973 |goto Deepholm/0 49.87,57.05 |only if completedq(31970)
		Defeat Bordin Steadyfist |q 31967/2 |goto Deepholm/0 49.87,57.05
		|tip Bordin's pet team consists of level 25 Elemental and Critter battle pets.
		|tip Aquatic battle pets are strong against Elemental battle pets.
		|tip Beast battle pets are strong against Critter battle pets.
		|tip Defeat him in battle pet combat.
	step
		talk Bordin Steadyfist##66815
		turnin Bordin Steadyfist##31973 |goto 49.87,57.05
		|only if completedq(31970)
	step
		talk Goz Banefury##66822
		accept Goz Banefury##31974 |goto Twilight Highlands/0 56.59,56.80 |only if completedq(31970)
		Defeat Goz Banefury |q 31967/3 |goto Twilight Highlands/0 56.59,56.80
		|tip Goz's pet team consists of level 25 Elemental, Magic, and Beast battle pets.
		|tip Aquatic battle pets are strong against Elemental battle pets.
		|tip Dragonkin battle pets are strong against Magic battle pets.
		|tip Mechanical battle pets are strong against Beast battle pets.
		|tip Defeat him in battle pet combat.
	step
		talk Goz Banefury##66822
		turnin Goz Banefury##31974 |goto 56.59,56.80
		|only if completedq(31970)
	step
		_Click the quest completion box that appears_
		turnin Battle Pet Tamers: Cataclysm##31967 |goto 56.59,56.80
		accept Grand Master Obalis##31970 |goto 56.59,56.80 |only if not completedq(31970)
	step
		talk Obalis##66824
		Defeat Obalis |q 31970/1 |goto Uldum/0 56.56,41.98
		|tip Payne's pet team consists of level 25 Beast, Flying, and Critter battle pets.
		|tip Mechanical battle pets are strong against Beast battle pets.
		|tip Magic battle pets are strong against Flying battle pets.
		|tip Beast battle pets are strong against Critter battle pets.
		|tip Defeat him in battle pet combat.
	step
		talk Obalis##66824
		turnin Grand Master Obalis##31970 |goto 56.56,41.98
		accept The Triumphant Return##31986 |goto 56.56,41.98 |only if not completedq(31985) and not completedq(31986)
	step
		talk Varzok##63626
		turnin The Triumphant Return##31986 |goto Orgrimmar/1 52.56,59.27
		|only if not completedq(31985) and not completedq(31986)
	step
		talk Varzok##63626
		accept Battle Pet Tamers: Pandaria##31952 |goto Orgrimmar/1 52.56,59.27
	step
		talk Hyuna of the Shrines##66730
		accept Grand Master Hyuna##31953 |goto The Jade Forest/0 47.96,54.17 |only if completedq(31951)
		Defeat Hyuna of the Shrines |q 31952/1 |goto The Jade Forest/0 47.96,54.17
		|tip Hyuna's pet team consists of level 25 Dragonkin and Magic battle pets.
		|tip Humanoid battle pets are strong against Dragonkin battle pets.
		|tip Dragonkin battle pets are strong against Magic battle pets.
		|tip Defeat her in battle pet combat.
	step
		talk Hyuna of the Shrines##66730
		turnin Grand Master Hyuna##31953 |goto 47.96,54.17
		|only if completedq(31951)
	step
		talk Farmer Nishi##66734
		accept Grand Master Nishi##31955 |goto Valley of the Four Winds/0 46.07,43.68 |only if completedq(31951)
		Defeat Farmer Nishi |q 31952/2 |goto Valley of the Four Winds/0 46.07,43.68
		|tip Nishi's pet team consists of level 25 Beast and Elemental battle pets.
		|tip Mechanical battle pets are strong against Beast battle pets.
		|tip Aquatic battle pets are strong against Elemental battle pets.
		|tip Defeat her in battle pet combat.
	step
		talk Farmer Nishi##66734
		turnin Grand Master Nishi##31955 |goto 46.07,43.68
		|only if completedq(31951)
	step
		talk Mo'ruk##66733
		accept Grand Master Mo'ruk##31954 |goto Krasarang Wilds/0 62.23,45.91 |only if completedq(31951)
		Defeat Mo'ruk |q 31952/3 |goto Krasarang Wilds/0 62.23,45.91
		|tip Mo'ruk's pet team consists of level 25 Beast, Flying, and Aquatic battle pets.
		|tip Mechanical battle pets are strong against Beast battle pets.
		|tip Magic battle pets are strong against Flying battle pets.
		|tip Flying battle pets are strong against Aquatic battle pets.
		|tip Defeat him in battle pet combat.
	step
		talk Mo'ruk##66733
		turnin Grand Master Mo'ruk##31954 |goto 62.23,45.91
		|only if completedq(31951)
	step
		talk Wastewalker Shu##66739
		accept Grand Master Shu##31957 |goto Dread Wastes/0 55.11,37.56 |only if completedq(31951)
		Defeat Wastewalker Shu |q 31952/6 |goto Dread Wastes/0 55.11,37.56
		|tip Shu's pet team consists of level 25 Beast, Aquatic, and Elemental battle pets.
		|tip Mechanical battle pets are strong against Beast battle pets.
		|tip Flying battle pets are strong against Aquatic battle pets.
		|tip Aquatic battle pets are strong against Elemental battle pets.
		|tip Defeat him in battle pet combat.
	step
		talk Wastewalker Shu##66739
		turnin Grand Master Shu##31957 |goto 55.11,37.56
		|only if completedq(31951)
	step
		talk Seeker Zusshi##66918
		accept Grand Master Zusshi##31991 |goto Townlong Steppes/0 36.32,52.21 |only if completedq(31951)
		Defeat Seeker Zusshi |q 31952/5 |goto Townlong Steppes/0 36.32,52.21
		|tip Zusshi's pet team consists of level 25 Aquatic, Critter, and Elemental battle pets.
		|tip Flying battle pets are strong against Aquatic battle pets.
		|tip Beast battle pets are strong against Critter battle pets.
		|tip Aquatic battle pets are strong against Elemental battle pets.
		|tip Defeat him in battle pet combat.
	step
		talk Seeker Zusshi##66918
		turnin Grand Master Zusshi##31991 |goto 36.32,52.21
		|only if completedq(31951)
	step
		talk Courageous Yon##66738
		accept Grand Master Yon##31956 |goto Kun-Lai Summit/0 35.84,73.63 |only if completedq(31951)
		Defeat Courageous Yon |q 31952/4 |goto 35.84,73.63
		|tip Yon's pet team consists of level 25 Beast, Critter, and Flying battle pets.
		|tip Mechanical battle pets are strong against Beast battle pets.
		|tip Beast battle pets are strong against Critter battle pets.
		|tip Magic battle pets are strong against Flying battle pets.
		|tip Defeat him in battle pet combat.
	step
		talk Courageous Yon##66738
		turnin Grand Master Yon##31956 |goto Kun-Lai Summit/0 35.84,73.63
		|only if completedq(31951)
	step
		_Click the quest completion box that appears_
		turnin Battle Pet Tamers: Pandaria##31952 |goto 35.84,73.63
		accept Grand Master Aki##31951 |goto 35.84,73.63 |only if not completedq(31951)
	step
		talk Aki the Chosen##66741
		Defeat Aki the Chosen |q 31951/1 |goto Vale of Eternal Blossoms/0 31.27,74.09
		|tip Aki's pet team consists of level 25 Aquatic, Critter, and Dragonkin battle pets.
		|tip Flying battle pets are strong against Aquatic battle pets.
		|tip Beast battle pets are strong against Critter battle pets.
		|tip Humanoid battle pets are strong against Dragonkin battle pets.
		|tip Defeat him in battle pet combat.
	step
		talk Aki the Chosen##66741
		turnin Grand Master Aki##31951 |goto 31.27,74.09
]])

ZygorGuidesViewer:RegisterInclude("H_Beasts_of_Fable_D",[[
		talk Gentle San##64582
		accept Beasts of Fable Book I##32604 |goto Vale of Eternal Blossoms 60.8,23.7
		accept Beasts of Fable Book II##32868 |goto Vale of Eternal Blossoms 60.8,23.7
		accept Beasts of Fable Book III##32869 |goto Vale of Eternal Blossoms 60.8,23.7
		accept Pandaren Spirit Tamer##32428 |goto Vale of Eternal Blossoms 60.8,23.7 |only if not completedq(32428)
	step
		_No-No_
		This enemy is aquatic
		It is strong against undead and weak to flying attacks
		I would suggest that you use flying pets against this enemy
		No-No defeated |q 32869/2 |goto Vale of Eternal Blossoms 11.0,70.9
	step
		_Lucky Yi_
		This enemy is a critter
		Is is strong against Elementals and weak to beast attacks
		I would suggest using beast pets against this enemy
		Lucky Yi defeated |q 32868/2 |goto Valley of the Four Winds 40.5,43.7
	step
		_Greyhoof_
		This enemy is a beast
		It is strong against humanoids and weak against mechanical pets
		I would suggest using a team of mechanical pets against this enemy
		Greyhoof defeated |q 32868/1 |goto Valley of the Four Winds 25.3,78.5
	step
		_Skitterer Xi'a_
		This enemy is aquatic
		It is strong against undead and weak to flying pets
		I would suggest using flying pets against this enemy
		Xi'a defeated |q 32868/3 |goto Krasarang Wilds 36.3,37.3
	step
		_Flowing Pandaren Spirit_
		This enemy uses aquatic and elemental pets
		They are strong against undead and mechanical and weak to flying and aquatic pets
		I would suggest using flying and aquatic pets against this enemy
		Flowing Pandaren Spirit defeated |q 32428/4 |goto Dread Wastes 61.1,87.5
		|only if haveq(32428)
	step
		talk Flowing Pandaren Spirit##68462
		accept Flowing Pandaren Spirit##32439 |goto Dread Wastes 61.1,87.5
		|only if completedq(32428)
	step
		_Flowing Pandaren Spirit_
		This enemy uses aquatic and elemental pets
		They are strong against undead and mechanical and weak to flying and aquatic pets
		I would suggest using flying and aquatic pets against this enemy
		Flowing Pandaren Spirit defeated |q 32439/1 |goto Dread Wastes 61.1,87.5
		|only if haveq(32439)
	step
		talk Flowing Pandaren Spirit##68462
		turnin Flowing Pandaren Spirit##32439 |goto Dread Wastes 61.1,87.5
		|only if haveq(32439)
	step
		_Gorespine_
		This enemy is a beast
		It is strong against humanoids and weak against mechanical pets
		I would suggest using a team of mechanical pets against this enemy
		Gorespine defeated |q 32869/1 |goto Dread Wastes 26.1,50.2
	step
		_Ti'un the Wanderer_
		This enemy is aquatic
		It is strong against undead and weak to flying pets
		I would suggest using flying pets against this enemy
		Ti'un the Wanderer defeated |q 32869/3 |goto Townlong Steppes 72.3,79.8
	step
		_Burning Pandaren Spirit_
		This enemy uses a dragonkin, flying and elemental pet
		They are strong against flying, beast, and mechanical pets, respectively
		They are weak against humanoid, magic, and aquatic pets, respectively
		I would suggest using a humanoid, magic, and aquatic pet against this enemy
		Burning Pandaren Spirit defeated |quest 32428/1 |goto Townlong Steppes 57.1,42.1
		|only if haveq(32428)
	step
		talk Burning Pandaren Spirit##68463
		accept Burning Pandaren Spirit##32434 |goto Townlong Steppes 57.1,42.1
		|only if completedq(32428)
	step
		_Burning Pandaren Spirit_
		This enemy uses a dragonkin, flying and elemental pet
		They are strong against flying, beast, and mechanical pets, respectively
		They are weak against humanoid, magic, and aquatic pets, respectively
		I would suggest using a humanoid, magic, and aquatic pet against this enemy
		Burning Pandaren Spirit defeated |quest 32434/1 |goto Townlong Steppes 57.1,42.1
		|only if haveq(32434)
	step
		talk Burning Pandaren Spirit##68463
		turnin Burning Pandaren Spirit##32434 |goto Townlong Steppes 57.1,42.1
		|only if haveq(32434)
	step
		_Kafi_
		This enemy is a beast
		It is strong against humanoids and weak against mechanical pets
		I would suggest using a team of mechanical pets against this enemy
		Kafi defeated |q 32604/2 |goto Kun-Lai Summit 35.2,56.2
	step
		_Thundering Pandaren Spirit_
		This enemy uses a beast, elemental, and magic pet
		They are strong against humanoids, mechanical, and aquatic pets, respectively
		They are weak against mechanical, aquatic, and dragonkin pets, respectively
		I would suggest using a mechanical, aquatic, and dragonkin pet against this enemy
		Thundering Pandaren Spirit defeated |q 32428/2 |goto Kun-Lai Summit 64.9,93.8
		|only if haveq(32428)
	step
		talk Thundering Pandaren Spirit##68465
		accept Thundering Pandaren Spirit##32441 |goto Kun-Lai Summit 64.9,93.8
		|only if completedq(32428)
	step
		_Thundering Pandaren Spirit_
		This enemy uses a beast, elemental, and magic pet
		They are strong against humanoids, mechanical, and aquatic pets, respectively
		They are weak against mechanical, aquatic, and dragonkin pets, respectively
		I would suggest using a mechanical, aquatic, and dragonkin pet against this enemy
		Thundering Pandaren Spirit defeated |q 32441/1 |goto Kun-Lai Summit 64.9,93.8
		|only if haveq(32441)
	step
		talk Thundering Pandaren Spirit##68465
		turnin Thundering Pandaren Spirit##32441 |goto Kun-Lai Summit 64.9,93.8
		|only if haveq(32441)
	step
		_Dos-Ryga_
		This enemy is aquatic
		It is strong against undead and weak to flying pets
		I would suggest using flying pets against this enemy
		Dos-Ryga defeated |q 32604/3 |goto Kun-Lai Summit 67.9,84.7
	step
		_Whispering Pandaren Spirit_
		This enemy uses a flying, elemental, and dragonkin pet
		They are strong against beast, mechanical, and flying pets, respectively
		They are weak against magic, aquatic, and humanoid pets, respectively
		I would suggest using a magic, aquatic, and humanoid pet against this enemy
		Whispering Pandaren Spirit defeated |q 32428/3 |goto The Jade Forest 28.9,36
		|only if haveq(32428)
	step
		talk Whispering Pandaren Spirit##68464
		accept Whispering Pandaren Spirit##32440 |goto The Jade Forest 28.9,36
		|only if completedq(32428)
	step
		_Whispering Pandaren Spirit_
		This enemy uses a flying, elemental, and dragonkin pet
		They are strong against beast, mechanical, and flying pets, respectively
		They are weak against magic, aquatic, and humanoid pets, respectively
		I would suggest using a magic, aquatic, and humanoid pet against this enemy
		Whispering Pandaren Spirit defeated |q 32440/1 |goto The Jade Forest 28.9,36
		|only if haveq(32440)
	step
		talk Whispering Pandaren Spirit##68464
		turnin Whispering Pandaren Spirit##32440 |goto The Jade Forest 28.9,36
		|only if haveq(32440)
	step
		_Ka'wi the Gorger_
		This enemy is a critter
		Is is strong against Elementals and weak to beast attacks
		I would suggest using a team of mechanical pets against this enemy
		Ka'wi the Gorger defeated |q 32604/1 |goto The Jade Forest 48.4,71.0
	step
		_Nitun_
		This enemy is a critter
		Is is strong against Elementals and weak to beast attacks
		I would suggest using beast pets against this enemy
		Nitun defeated |q 32604/4 |goto The Jade Forest 57.0,29.1
	step
		talk Gentle San##64582
		turnin Beasts of Fable Book I##32604 |goto Vale of Eternal Blossoms 60.8,23.7
		turnin Beasts of Fable Book II##32868 |goto Vale of Eternal Blossoms 60.8,23.7
		turnin Beasts of Fable Book III##32869 |goto Vale of Eternal Blossoms 60.8,23.7
		turnin Pandaren Spirit Tamer##32428 |only if not completedq(32428) |goto Vale of Eternal Blossoms 60.8,23.7
]])

ZygorGuidesViewer:RegisterInclude("H_Battlepet_dailies",[[
		You need to finish defeating the Grand Master tamers. Click to continue |confirm |next "quests" |only if not achieved(6607)
		Moving to Dailies Guides |next "reset" |only if achieved(6607)
	step
	label "quests"
		#include "H_Battlepet_quests"
	step
	label "reset"
		_Click here_ to do the daily set in Kalimdor |confirm |next "kalpets" |only if completedq(31897)
		_Click here_ to do the daily set in the Eastern Kingdoms |confirm |next "ekpets" |only if completedq(31915)
		_Click here_ to do the daily set in Outland |confirm |next "outpets" |only if completedq(31920)
		_Click here_ to do the daily set in Northrend |confirm |next "northpets" |only if completedq(31928)
		_Click here_ to do the daily set in the Cataclysm |confirm |next "catapets" |only if completedq(31970)
		_Click here_ to do the daily set in Pandaria |confirm |next "pandapets" |only if completedq(31951)
	step
	label "kalpets"
		talk Zunta##66126
		accept Zunta##31818 |goto Durotar 43.9,28.7
		only if completedq(31897)
	step
		talk Zunta##66126
		|tip It is suggested to have at least 2 Battle Pets at level 3 or higher. He has a Critter Pet and a Beast Pet. Beast type damage will defeat his critter easily and Mechanical type damage will defeat his beast.
		Tell him "_Think you can take me in a pet battle? Let's fight!_"
		|tip You will not be able to challenge Zunta if you have the "Pet Recovery" debuff, wait for it to fall off.
		Defeat Zunta |q 31818/1 |goto Durotar 43.9,28.7
		only if completedq(31897)
	step
		talk Zunta##66126
		turnin Zunta##31818 |goto Durotar 43.9,28.7
		only if completedq(31897)
	step
		talk Dagra the Fierce##66135
		accept Dagra the Fierce##31819 |goto Northern Barrens 58.6,53.0
		only if completedq(31897)
	step
		talk Dagra the Fierce##66135
		|tip Dagra has 2 Beast type Pets and 1 Critter type Pet. Mechanical damage will defeat the Beasts and Beast damage will defeat the Critter. It is suggested that your pets are at least level 4.
		Tell her "_Think you can take me in a pet battle? Let's fight!_"
		|tip You will not be able to challenge Dagra the Fierce if you have the "Pet Recovery" debuff, wait for it to fall off.
		Defeat Dagra the Fierce |q 31819/1 |goto Northern Barrens 58.6,53.0
		only if completedq(31897)
	step
		talk Dagra the Fierce##66135
		turnin Dagra the Fierce##31819 |goto Northern Barrens 58.6,53.0
		only if completedq(31897)
	step
		talk Stone Cold Trixxy##66466
		accept Grand Master Trixxy##31909 |goto Winterspring 65.6,64.4
		only if completedq(31897)
	step
		talk Stone Cold Trixxy##66466
		|tip Stone Cold Trixxy has a Flying Pet, a Beast Pet, and a Dragonkin Pet. Use Magic type attacks on the Flying Pet, Mechanical type attacks on the Beast Pet, and Humanoid type attacks on the Dragonkin Pet. Your pets should be at least level 19 before fighting Trixxy.
		Tell her "_Think you can take me in a pet battle? Let's fight!_"
		|tip You will not be able to challenge Stone Cold Trixxy if you have the "Pet Recovery" debuff, wait for it to fall off.
		Defeat Stone Cold Trixxy |q 31909/1 |goto Winterspring 65.6,64.4
		only if completedq(31897)
	step
		talk Stone Cold Trixxy##66466
		turnin Grand Master Trixxy##31909 |goto Winterspring 65.6,64.4
		only if completedq(31897)
	step
		talk Elena Flutterfly##66412
		accept Elena Flutterfly##31908 |goto Moonglade 46.1,60.3
		only if completedq(31897)
	step
		talk Elena Flutterfly##66412
		|tip Elena has a Flying Pet, a Magic Pet, and a Dragonkin Pet. Use Magic type attacks on the Flying Pet, Dragonkin type attacks on the Magic Pet, and Humanoid type attacks on the Dragonkin Pet. Your pets should be at least level 17 before fighting Elena.
		Tell her "_Think you can take me in a pet battle? Let's fight!_"
		|tip You will not be able to challenge Elena if you have the "Pet Recovery" debuff, wait for it to fall off.
		Defeat Elena Flutterfly |q 31908/1 |goto Moonglade 46.1,60.3
		only if completedq(31897)
	step
		talk Elena Flutterfly##66412
		turnin Elena Flutterfly##31908 |goto Moonglade 46.1,60.3
		only if completedq(31897)
	step
		talk Zoltan##66442
		accept Zoltan##31907 |goto Felwood 40.0,56.6
		only if completedq(31897)
	step
		talk Zoltan##66442
		|tip Zoltan has 1 Mechanical Pet and 2 Magic Pets. Use Critter type attacks against his Mechanical Pet and use Dragonkin type attacks against his Magic Pets. If you do not have any Dragonkin, use Mechanical type Pets. Your pets should be at least level 16 before fighting Zoltan.
		Tell him "_Think you can take me in a pet battle? Let's fight!_"
		|tip You will not be able to challenge Zoltan if you have the "Pet Recovery" debuff, wait for it to fall off.
		Defeat Zoltan |q 31907/1 |goto Felwood 40.0,56.6
		only if completedq(31897)
	step
		talk Zoltan##66442
		turnin Zoltan##31907 |goto Felwood 40.0,56.6
		only if completedq(31897)
	step
		talk Analynn##66136
		accept Analynn##31854 |goto Ashenvale 20.2,29.5
		only if completedq(31897)
	step
		talk Analynn##66136
		|tip Analynn has a Critter type, an Aquatic type, and a Flying type. Use a Magic Pet or Beast type attacks on the Critter, Flying type attacks on the Aquatic Pet, and Magic type attacks or a Dragonkin Pet against her Flying Pet. It is suggested that all of your Pets are at least level 6 when you fight Analynn.
		Tell her "_Think you can take me in a pet battle? Let's fight!_"
		|tip You will not be able to challenge Analynn if you have the "Pet Recovery" debuff, wait for it to fall off.
		Defeat Analynn |q 31854/1 |goto Ashenvale 20.2,29.5
		only if completedq(31897)
	step
		talk Analynn##66136
		turnin Analynn##31854 |goto Ashenvale 20.2,29.5
		only if completedq(31897)
	step
		talk Zonya the Sadist##66137
		accept Zonya the Sadist##31862 |goto Stonetalon Mountains 59.7,71.5
		only if completedq(31897)
	step
		talk Zonya the Sadist##66137
		|tip Zonya has 2 Beast Pets and 1 Critter Pet. Mechanical type attacks work well against her Beasts and Beast type attacks work well against her Critter. It is suggested that all of your pets are level 7.
		Tell her "_Think you can take me in a pet battle? Let's fight!_"
		|tip You will not be able to challenge Zonya if you have the "Pet Recovery" debuff, wait for it to fall off.
		Defeat Zonya the Sadist |q 31862/1 |goto Stonetalon Mountains 59.7,71.5
		only if completedq(31897)
	step
		talk Zonya the Sadist##66137
		turnin Zonya the Sadist##31862 |goto Stonetalon Mountains 59.7,71.5
		only if completedq(31897)
	step
		talk Merda Stronghoof##66372
		accept Merda Stronghoof##31872 |goto Desolace 57.1,45.7
		only if completedq(31897)
	step
		talk Merda Stronghoof##66372
		|tip Merda has a Critter Pet, an Aquatic Pet, and an Elemental Pet. Use Beast type attacks against the Critter, Flying type attacks against the Aquatic, and Critter type attacks against the Elemental. It is suggested that all of your pets are Level 12 before trying to fight Merda.
		Tell her "_Think you can take me in a pet battle? Let's fight!_"
		|tip You will not be able to challenge Merda if you have the "Pet Recovery" debuff, wait for it to fall off.
		Defeat Merda Stronghoof |q 31872/1 |goto Desolace 57.1,45.7
		only if completedq(31897)
	step
		talk Merda Stronghoof##66372
		turnin Merda Stronghoof##31872 |goto Desolace 57.1,45.7
		only if completedq(31897)
	step
		talk Traitor Gluk##66352
		accept Traitor Gluk##31871 |goto Feralas 59.7,49.6
		only if completedq(31897)
	step
		talk Traitor Gluk##66352
		|tip Gluk has a Beast Pet, a Critter Pet, and a Dragonkin Pet. Use Mechanical type attacks on the Beast Pet, Beast type attacks on the Critter Pet, and Humanoid type attacks on the Dragonkin Pet. Gluk's pets are all around level 11 so your pet team should be able to defeat him easily.
		Tell him "_Think you can take me in a pet battle? Let's fight!_"
		|tip You will not be able to challenge Traitor Gluk if you have the "Pet Recovery" debuff, wait for it to fall off.
		Defeat Traitor Gluk |q 31871/1 |goto Feralas 59.7,49.6
		only if completedq(31897)
	step
		talk Traitor Gluk##66352
		turnin Traitor Gluk##31871 |goto Feralas 59.7,49.6
		only if completedq(31897)
	step
		talk Kela Grimtotem##66452
		accept Kela Grimtotem##31906 |goto Thousand Needles 31.9,33.0
		only if completedq(31897)
	step
		talk Kela Grimtotem##66452
		|tip Kela has a Beast Pet, and 2 Critter type Pets. Use Mechanical type attacks on the Beast Pet, Beast type attacks on the Critter Pets. Kela's pets are all around level 15 so your pet team should be able to defeat her easily.
		Tell her "_Think you can take me in a pet battle? Let's fight!_"
		|tip You will not be able to challenge Kela Grimtotem if you have the "Pet Recovery" debuff, wait for it to fall off.
		Defeat Kela Grimtotem |q 31906/1 |goto Thousand Needles 31.9,33.0
		only if completedq(31897)
	step
		talk Kela Grimtotem##66452
		turnin Kela Grimtotem##31906 |goto Thousand Needles 31.9,33.0
		only if completedq(31897)
	step
		talk Cassandra Kaboom##66422
		accept Cassandra Kaboom##31904 |goto Southern Barrens 39.6,79.1
		only if completedq(31897)
	step
		talk Cassandra Kaboom##66422
		|tip Cassandra Kaboom has 3 Mechanical Pets. Elemental pets are the best choice against Cassandra. It is suggested that all of your Pets are Level 13 when you fight Cassandra.
		Tell her "_Think you can take me in a pet battle? Let's fight!_"
		|tip You will not be able to challenge Cassandra if you have the "Pet Recovery" debuff, wait for it to fall off.
		Defeat Cassandra Kaboom |q 31904/1 |goto Southern Barrens 39.6,79.1
		only if completedq(31897)
	step
		talk Cassandra Kaboom##66422
		turnin Cassandra Kaboom##31904 |goto Southern Barrens 39.6,79.1
		only if completedq(31897)
	step
		talk Grazzle the Great##66436
		accept Grazzle the Great##31905 |goto Dustwallow Marsh 53.9,74.8
		only if completedq(31897)
	step
		talk Grazzle the Great##66436
		|tip Grazzle has 3 Dragonkin type Pets. Use Humanoid type attacks on his pets. Grazzle's pets are all around level 14 so your pet team should be able to defeat him easily.
		Tell him "_Think you can take me in a pet battle? Let's fight!_"
		|tip You will not be able to challenge Grazzle the Great if you have the "Pet Recovery" debuff, wait for it to fall off.
		Defeat Grazzle the Great |q 31905/1 |goto Dustwallow Marsh 53.9,74.8
		only if completedq(31897)
	step
		talk Grazzle the Great##66436
		turnin Grazzle the Great##31905 |goto Dustwallow Marsh 53.9,74.8
		|next "reset"
		only if completedq(31897)
	step
	label "ekpets"
	step
		talk Lydia Accoste##66522
		accept Grand Master Lydia Accost##31916 |goto Deadwind Pass 40.1,76.4
		only if completedq(31915)
	step
		talk Lydia Accoste##66522
		|tip Lydia has an Elemental type Pet and 2 Undead type Pets. Use Aquatic type attacks on the Elemental Pet and Critter type attacks on the Undead Pets. Your pets should be at least level 19 before fighting Lydia.
		Tell her "_Think you can take me in a pet battle? Let's fight!_"
		|tip You will not be able to challenge Lydia if you have the "Pet Recovery" debuff, wait for it to fall off.
		Defeat Lydia Accoste |q 31916/1 |goto Deadwind Pass 40.1,76.4
		only if completedq(31915)
	step
		talk Lydia Accoste##66522
		turnin Grand Master Lydia Accoste##31916 |goto Deadwind Pass 65.7,64.5
		|next "reset"
		only if completedq(31915)
	step
	label "outpets"
		talk Nicki Tinytech##66550
		accept Nicki Tinytech##31922 |goto Hellfire Peninsula 64.3,49.3
		only if completedq(31920)
	step
		talk Nicki Tinytech##66550
		|tip Nicky has 3 Mechanical type Pets. Use Elemental type attacks on her pets. Her pets are all around level 20.
		Tell her "_Think you can take me in a pet battle? Let's fight!_"
		|tip You will not be able to challenge Nicki if you have the "Pet Recovery" debuff, wait for it to fall off.
		Defeat Nicki Tinytech |q 31922/1 |goto Hellfire Peninsula 64.3,49.3
		only if completedq(31920)
	step
		talk Nicki Tinytech##66550
		turnin Nicki Tinytech##31922 |goto Hellfire Peninsula 64.3,49.3
		only if completedq(31920)
	step
		talk Morulu The Elder##66553
		accept Morulu The Elder##31925 |goto Shattrath City 58.8,70.1
		only if completedq(31920)
	step
		talk Morulu The Elder##66553
		|tip Morulu has 3 Aquatic type Pets. Use Flying type attacks on his pets. His pets are all around level 23.
		Tell him "_Think you can take me in a pet battle? Let's fight!_"
		|tip You will not be able to challenge Morulu if you have the "Pet Recovery" debuff, wait for it to fall off.
		Defeat Morulu The Elder |q 31925/1 |goto Shattrath City 58.8,70.1
		only if completedq(31920)
	step
		talk Morulu The Elder##66553
		turnin Morulu The Elder##31925 |goto Shattrath City 58.8,70.1
		only if completedq(31920)
	step
		talk Narrok##66552
		accept Narrok##31924 |goto Nagrand 61.0,49.4
		only if completedq(31920)
	step
		talk Narrok##66552
		|tip Narrok has an Aquatic type Pet, a Beast type Pet, and a Critter type Pet. Use Flying type attacks on his Aquatic pet, Mechanical type attacks on his Beast pet, and Beast type attacks on his Critter pet. His pets are all around level 22.
		Tell him "_Think you can take me in a pet battle? Let's fight!_"
		|tip You will not be able to challenge Narrok if you have the "Pet Recovery" debuff, wait for it to fall off.
		Defeat Narrok |q 31924/1 |goto Nagrand 61.0,49.4
		only if completedq(31920)
	step
		talk Narrok##66552
		turnin Narrok##31924 |goto Nagrand 61.0,49.4
		only if completedq(31920)
	step
		talk Ras'an##66551
		accept Ras'an##31923 |goto Zangarmarsh 17.2,50.5
		only if completedq(31920)
	step
		talk Ras'an##66551
		|tip Ras'an has a Flying type Pet, a Humanoid type Pet, and a Magic type Pet. Use Magic type attacks on his Flying pet, Undead type attacks on his Humanoid pet, and Dragonkin type attacks on his Magic pet. His pets are all around level 21.
		Tell him "_Think you can take me in a pet battle? Let's fight!_"
		|tip You will not be able to challenge Ras'an if you have the "Pet Recovery" debuff, wait for it to fall off.
		Defeat Ras'an |q 31923/1 |goto Zangarmarsh 17.2,50.5
		only if completedq(31920)
	step
		talk Ras'an##66551
		turnin Ras'an##31923 |goto Zangarmarsh 17.2,50.5
		only if completedq(31920)
	step
		talk Bloodknight Antari##66557
		accept Grand Master Antari##31926 |goto Shadowmoon Valley 30.6,42.0
		only if completedq(31920)
	step
		talk Bloodknight Antari##66557
		|tip Bloodknight Antari has an Elemental Pet, a Dragonkin Pet, and a Magic Pet. Use Aquatic type attacks on his Elemental pet, Humanoid type attacks on his Dragonkin pet, and Dragonkin type attacks on his Magic pet. Your pets should be at least level 24 for this fight.
		Tell him "_Think you can take me in a pet battle? Let's fight!_"
		|tip You will not be able to challenge Bloodknight Antari if you have the "Pet Recovery" debuff, wait for it to fall off.
		Defeat Bloodknight Antari |q 31926/1 |goto Shadowmoon Valley 30.6,42.0
		only if completedq(31920)
	step
		talk Bloodknight Antari##66557
		turnin Grand Master Antari##31926 |goto Shadowmoon Valley 30.6,42.0
		|next "reset"
		only if completedq(31920)
	step
	label "northpets"
		talk Beegle Blastfuse##66635
		accept Beegle Blastfuse##31931 |goto Howling Fjord 28.6,33.9
		only if completedq(31928)
	step
		talk Beegle Blastfuse##66635
		|tip Beegle Blastfuse has an Aquatic Pet and 2 Flying Pets. Use Flying type attacks on his Aquatic pet and Magic attacks on his Flying pets.Your pets should all be around level 25 before fighting Beegle.
		Tell him "_Think you can take me in a pet battle? Let's fight!_"
		|tip You will not be able to challenge Beegle Blastfuse if you have the "Pet Recovery" debuff, wait for it to fall off.
		Defeat Beegle Blastfuse |q 31931/1 |goto Howling Fjord 28.6,33.9
		only if completedq(31928)
	step
		talk Beegle Blastfuse##66635
		turnin Beegle Blastfuse##31931 |goto Howling Fjord 28.6,33.9
		only if completedq(31928)
	step
		talk Okrut Dragonwaste##66638
		accept Okrut Dragonwaste##31933 |goto Dragonblight 59.0,77.0
		only if completedq(31928)
	step
		talk Okrut Dragonwaste##66638
		|tip Okrut Dragonwaste has a Dragonkin Pet and 2 Undead Pets. Use Humanoid type attacks on his Dragonkin and Critter type attacks on his Undead. Your pets should all be level 25 before fighting Okrut.
		Tell him "_Think you can take me in a pet battle? Let's fight!_"
		|tip You will not be able to challenge Okrut Dragonwaste if you have the "Pet Recovery" debuff, wait for it to fall off.
		Defeat Okrut Dragonwaste |q 31933/1 |goto Dragonblight 59.0,77.0
		only if completedq(31928)
	step
		talk Okrut Dragonwaste##66638
		accept Okrut Dragonwaste##31933 |goto Dragonblight 59.0,77.0
		only if completedq(31928)
	step
		talk Nearly Headless Jacob##66636
		accept Nearly Headless Jacob##31932 |goto Crystalsong Forest 50.1,59.0
		only if completedq(31928)
	step
		talk Nearly Headless Jacob##66636
		|tip Nearly Headless Jacob has 3 Undead Pets. Critter type attacks will be the most useful against Jacob. You should also consider having an Aquatic pet or two. Your pets should all be level 25 when you fight him.
		Tell him "_Think you can take me in a pet battle? Let's fight!_"
		|tip You will not be able to challenge Nearly Headless Jacob if you have the "Pet Recovery" debuff, wait for it to fall off.
		Defeat Nearly Headless Jacob |q 31932/1 |goto Crystalsong Forest 50.1,59.0
		only if completedq(31928)
	step
		talk Nearly Headless Jacob##66636
		turnin Nearly Headless Jacob##31932 |goto Crystalsong Forest 50.1,59.0
		only if completedq(31928)
	step
		talk Gutretch##66639
		accept Gutretch##31934 |goto Zul'Drak 13.2,66.8
		only if completedq(31928)
	step
		talk Gutretch##66639
		|tip Gutretch has 2 Beast type Pets and a Critter type Pet. Use Mechanical type attacks on his Beasts and Beast type attacks on his Critter. Your pets should all be level 25.
		Tell him "_Think you can take me in a pet battle? Let's fight!_"
		|tip You will not be able to challenge Gutretch if you have the "Pet Recovery" debuff, wait for it to fall off.
		Defeat Gutretch |q 31934/1 |goto Zul'Drak 13.2,66.8
		only if completedq(31928)
	step
		talk Gutretch##66639
		turnin Gutretch##31934 |goto Zul'Drak 13.2,66.8
		only if completedq(31928)
	step
		talk Major Payne##66675
		accept Grand Master Payne##31935 |goto Icecrown 77.4,19.6
		only if completedq(31928)
	step
		talk Major Payne##66675
		|tip Major Payne has a Beast Pet, a Mechanical Pet, and an Elemental Pet. Use Mechanical type attacks on his Beast, Elemental type attacks on his Mechanical, and Aquatic type attacks on his Elemental. Your pets should be level 25 for this fight.
		Tell him "_Think you can take me in a pet battle? Let's fight!_"
		|tip You will not be able to challenge Major Payne if you have the "Pet Recovery" debuff, wait for it to fall off.
		Defeat Major Payne |q 31935/1 |goto Icecrown 77.4,19.6
		only if completedq(31928)
	step
		talk Major Payne##66675
		accept Grand Master Payne##31935 |goto Icecrown 77.4,19.6
		|next "reset"
		only if completedq(31928)
	step
	label "catapets"
		talk Brok##66819
		accept Brok##31972 |goto Mount Hyjal 61.4,32.7
		only if completedq(31970)
	step
		talk Brok##66819
		|tip Brok has a Beast Pet, a Critter Pet, and a Magic Pet. Use Mechanical type attacks on his Beast, Beast type attacks on his Critter, and Dragonkin type attacks on his Magic. Your pets should all be level 25.
		Tell him "_Think you can take me in a pet battle? Let's fight!_"
		|tip You will not be able to challenge Brok if you have the "Pet Recovery" debuff, wait for it to fall off.
		Defeat Brok |q 31972/1 |goto Mount Hyjal 61.4,32.7
		only if completedq(31970)
	step
		talk Brok##66819
		turnin Brok##31972 |goto Mount Hyjal 61.4,32.7
		only if completedq(31970)
	step
		talk Bordin Steadyfist##66815
		accept Bordin Steadyfist##31973 |goto Deepholm 49.9,57.0
		only if completedq(31970)
	step
		talk Bordin Steadyfist##66815
		|tip Bordin Steadyfist has a Critter Pet and 2 Elemental Pets. Use Beast type attacks on his Critter and Aquatic type attacks on his Elementals. Your pets should all be level 25.
		Tell him "_Think you can take me in a pet battle? Let's fight!_"
		|tip You will not be able to challenge Bordin Steadyfist if you have the "Pet Recovery" debuff, wait for it to fall off.
		Defeat Bordin Steadyfist |q 31973/1 |goto Deepholm 49.9,57.0
		only if completedq(31970)
	step
		talk Bordin Steadyfist##66815
		turnin Bordin Steadyfist##31973 |goto Deepholm 49.9,57.0
		only if completedq(31970)
	step
		talk Goz Banefury##66822
		accept Goz Banefury##31974 |goto Twilight Highlands 56.6,56.8
		only if completedq(31970)
	step
		talk Goz Banefury##66822
		|tip Goz Banefury has a Beast Pet, an Elemental Pet, and a Magic Pet. Use Mechanical type attacks on his Beast, Aquatic type attacks on his Elemental, and Dragonkin type attacks on his Magic. Your pets should all be level 25.
		Tell him "_Think you can take me in a pet battle? Let's fight!_"
		|tip You will not be able to challenge Goz Banefury if you have the "Pet Recovery" debuff, wait for it to fall off.
		Defeat Goz Banefury |q 31974/1 |goto Twilight Highlands 56.6,56.8
		only if completedq(31970)
	step
		talk Goz Banefury##66822
		turnin Goz Banefury##31974 |goto Twilight Highlands 56.6,56.8
		only if completedq(31970)
	step
		talk Obalis##66824
		accept Grand Master Obalis##31971 |goto Uldum 56.5,42.0
		only if completedq(31970)
	step
		talk Obalis##66824
		|tip Obalis has a Beast Pet, a Flying Pet, and a Critter Pet. Use Mechanical type attacks on his Beast, Magic type attacks on his Flyer, and Beast type attacks on his Critter. Your pets should all be level 25.
		Tell him "_Think you can take me in a pet battle? Let's fight!_"
		|tip You will not be able to challenge Obalis if you have the "Pet Recovery" debuff, wait for it to fall off.
		Defeat Obalis |q 31971/1 |goto Uldum 56.5,42.0
		only if completedq(31970)
	step
		talk Obalis##66824
		turnin Grand Master Obalis##31971 |goto Uldum 56.5,42.0
		|next "reset"
		only if completedq(31970)
	step
	label "pandapets"
		talk Hyuna of the Shrines##66730
		accept Grand Master Hyuna##31953 |goto The Jade Forest 48.0,54.2
		only if completedq(31951)
	step
		talk Hyuna of the Shrines##66730
		|tip Hyuna of the Shrines has a Beast Pet, a Flying Pet, and an Aquatic Pet. Use Mechanical type attacks on her Beast, Magic type attacks on her Flyer, and Flying type attacks on her Aquatic. Your pets should all be level 25.
		Tell her "_Think you can take me in a pet battle? Let's fight!_"
		|tip You will not be able to challenge Hyuna of the Shrines if you have the "Pet Recovery" debuff, wait for it to fall off.
		Defeat Hyuna of the Shrines |q 31953/1 |goto The Jade Forest 48.0,54.2
		only if completedq(31951)
	step
		talk Hyuna of the Shrines##66730
		turnin Grand Master Hyuna##31953 |goto The Jade Forest 48.0,54.2
		only if completedq(31951)
	step
		talk Farmer Nishi##66734
		accept Grand Master Nishi##31955 |goto Valley of the Four Winds 46.0,43.7
		only if completedq(31951)
	step
		talk Farmer Nishi##66734
		|tip Farmer Nishi has a Beast Pet, and two Elemental Pets. Use Mechanical type attacks on her Beast, and Aquatic type attacks on her Elementals. Your pets should all be level 25.
		Tell her "_Think you can take me in a pet battle? Let's fight!_"
		|tip You will not be able to challenge Farmer Nishi if you have the "Pet Recovery" debuff, wait for it to fall off.
		Defeat Farmer Nishi |q 31955/1 |goto Valley of the Four Winds 46.0,43.7
		only if completedq(31951)
	step
		talk Farmer Nishi##66734
		turnin Grand Master Nishi##31955 |goto Valley of the Four Winds 46.0,43.7
		only if completedq(31951)
	step
		talk Mo'ruk##66733
		accept Mo'ruk##31954 |goto Krasarang Wilds 62.2,45.9
		only if completedq(31951)
	step
		talk Mo'ruk##66733
		|tip Mo'ruk has a Beast Pet, a Flying Pet, and an Aquatic Pet. Use Mechanical type attacks on his Beast, Magic type attacks on his Flyer, and Flying type attacks on his Aquatic. Your pets should all be level 25.
		Tell him "_Think you can take me in a pet battle? Let's fight!_"
		|tip You will not be able to challenge Mo'ruk if you have the "Pet Recovery" debuff, wait for it to fall off.
		Defeat Mo'ruk |q 31954/1 |goto Krasarang Wilds 62.2,45.9
		only if completedq(31951)
	step
		talk Mo'ruk##66733
		turnin Mo'ruk##31954 |goto Krasarang Wilds 62.2,45.9
		only if completedq(31951)
	step
		talk Courageous Yon##66738
		accept Grand Master Yon##31956 |goto Kun-Lai Summit 35.8,73.8
		only if completedq(31951)
	step
		talk Courageous Yon##66738
		|tip Courageous Yon has a Flying Pet, a Critter Pet, and a Beast Pet. Use Beast type attacks on his Critter, Mechanical type attacks on his Beast, and Magic type attacks on his Flying. Your pets should all be level 25.
		Tell him "_Think you can take me in a pet battle? Let's fight!_"
		|tip You will not be able to challenge Courageous Yon if you have the "Pet Recovery" debuff, wait for it to fall off.
		Defeat Courageous Yon |q 31956/1 |goto Kun-Lai Summit 35.8,73.8
		He can also be found at [44.7,52.4]
		only if completedq(31951)
	step
		talk Courageous Yon##66738
		turnin Grand Master Yon##31956 |goto Kun-Lai Summit 35.8,73.8
		only if completedq(31951)
	step
		talk Seeker Zusshi##66918
		accept Grand Master Zusshi##31991 |goto Townlong Steppes 36.3,52.2
		only if completedq(31951)
	step
		talk Seeker Zusshi##66918
		|tip Seeker Zusshi has an Aquatic Pet, a Critter Pet, and an Elemental Pet. Use Flying type attacks on his Aquatic, Aquatic type attacks on his Elemental, and Beast type attacks on his Critter. Your pets should all be level 25.
		Tell him "_Think you can take me in a pet battle? Let's fight!_"
		|tip You will not be able to challenge Seeker Zusshi if you have the "Pet Recovery" debuff, wait for it to fall off.
		Defeat Seeker Zusshi |q 31991/5 |goto Townlong Steppes 36.3,52.2
		only if completedq(31951)
	step
		talk Seeker Zusshi##66918
		turnin Grand Master Zusshi##31991 |goto Townlong Steppes 36.3,52.2
		only if completedq(31951)
	step
		talk Wastewalker Shu##66739
		accept Grand Master Shu##31957 |goto Dread Wastes 55.1,37.6
		only if completedq(31951)
	step
		talk Wastewalker Shu##66739
		|tip Wastewalker Shu has an Aquatic Pet, a Beast Pet, and an Elemental Pet. Use Flying type attacks on his Aquatic, Aquatic type attacks on his Elemental, and Mechanical type attacks on his Beast. Your pets should all be level 25.
		Tell him "_Think you can take me in a pet battle? Let's fight!_"
		|tip You will not be able to challenge Wastewalker Shu if you have the "Pet Recovery" debuff, wait for it to fall off.
		Defeat Wastewalker Shu |q 31957/1 |goto Dread Wastes 55.1,37.6
		only if completedq(31951)
	step
		talk Wastewalker Shu##66739
		turnin Grand Master Shu##31957 |goto Dread Wastes 55.1,37.6
		only if completedq(31951)
	step
		talk Aki the Chosen##66741
		accept Zen Master Aki##31958 |goto Vale of Eternal Blossoms 31.3,74.1
		only if completedq(31951)
	step
		talk Aki the Chosen##66741
		|tip Aki the Chosen has an Aquatic Pet, a Critter Pet, and a Dragonkin Pet. Use Flying type attacks on her Aquatic, Beast type attacks on her Critter, and Humanoid type attacks on her Dragonkin. Your pets should all be level 25.
		Tell her "_Think you can take me in a pet battle? Let's fight!_"
		|tip You will not be able to challenge Aki the Chosen if you have the "Pet Recovery" debuff, wait for it to fall off.
		Defeat Aki the Chosen |q 31958/1 |goto Vale of Eternal Blossoms 31.3,74.1
		only if completedq(31951)
	step
		talk Aki the Chosen##66741
		turnin Zen Master Aki##31958 |goto Vale of Eternal Blossoms 31.3,74.1
		|next "reset"
		only if completedq(31951)
]])

ZygorGuidesViewer:RegisterInclude("H_Beasts_of_Fable",[[
		talk Gentle San##64582
		accept Beasts of Fable##32603 |goto Vale of Eternal Blossoms 60.8,23.7
	step
	label "dailies"
		_No-No_
		This enemy is aquatic
		It is strong against undead and weak to flying attacks
		I would suggest that you use flying pets against this enemy
		Defeat No-No |q 32603/3 |goto Vale of Eternal Blossoms 11.0,70.9
	step
		_Lucky Yi_
		This enemy is a critter
		Is is strong against Elementals and weak to beast attacks
		I would suggest using beast pets against this enemy
		Defeat Lucky Yi |q 32603/5 |goto Valley of the Four Winds 40.5,43.7
	step
		_Greyhoof_
		This enemy is a beast
		It is strong against humanoids and weak against mechanical pets
		I would suggest using a team of mechanical pets against this enemy
		Defeat Greyhoof |q 32603/4 |goto Valley of the Four Winds 25.3,78.5
	step
		_Xi'a_
		This enemy is aquatic
		It is strong against undead and weak to flying pets
		I would suggest using flying pets against this enemy
		Defeat Xi'a |q 32603/10 |goto Krasarang Wilds 36.3,37.3
	step
		_Gorespine_
		This enemy is a beast
		Is is strong against Critters and weak to Mechanical attacks
		I would suggest using Mechanical pets against this enemy
		Defeat Gorespine |q 32603/2 |goto Dread Wastes 26.1,50.2
	step
		_Ti'un the Wanderer_
		This enemy is aquatic
		It is strong against undead and weak to flying pets
		I would suggest using flying pets against this enemy
		Defeat Ti'un the Wanderer |q 32603/6 |goto Townlong Steppes 72.3,79.8
	step
		_Kafi_
		This enemy is a beast
		It is strong against humanoids and weak against mechanical pets
		I would suggest using a team of mechanical pets against this enemy
		Defeat Kafi |q 32603/7 |goto Kun-Lai Summit 35.2,56.2
	step
		_Dos-Ryga_
		This enemy is aquatic
		It is strong against undead and weak to flying pets
		I would suggest using flying pets against this enemy
		Defeat Dos-Ryga |q 32603/8 |goto Kun-Lai Summit 67.9,84.7
	step
		_Ka'wi_
		This enemy is a critter
		Is is strong against Elementals and weak to beast attacks
		I would suggest using a team of mechanical pets against this enemy
		Defeat Ka'wi the Gorger |q 32603/1 |goto The Jade Forest 48.4,71.0
	step
		This enemy is a critter
		Is is strong against Elementals and weak to beast attacks
		I would suggest using beast pets against this enemy
		Defeat Nitun |q 32603/9 |goto The Jade Forest 57.0,29.1
	step
		talk Gentle San##64582
		turnin Beasts of Fable##32603 |goto Vale of Eternal Blossoms 60.8,23.7
]])