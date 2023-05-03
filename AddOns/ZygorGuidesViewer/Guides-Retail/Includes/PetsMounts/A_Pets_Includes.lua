if UnitFactionGroup("player")~="Alliance" then return end
local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end

-----------------------
----- Battle Pets -----
-----------------------

ZygorGuidesViewer:RegisterInclude("Alliance_Battlepet_Quests",[[
		talk Audrey Burnhep##63596
		Learn the Battle Pet Training ability |learnspell Revive Battle Pets##125439 |goto Stormwind City/0 69.48,25.15
	step
		talk Audrey Burnhep##63596
		learnpet Snowshoe Rabbit##7560 |goto 69.48,25.15
		|tip Train it from her.
	step
		talk Audrey Burnhep##63596
		accept Learning the Ropes##31591 |goto 69.48,25.15
	step
		clicknpc Rabbit##61080
		|tip It could also be a Squirrel.
		Win a Pet Battle |q 31591/1 |goto 70.1,23.4
		|tip Open your Pet Journal with "Shift+P" and assign pets to your battle slots if you can't start the battle.
	step
		talk Audrey Burnhep##63596
		turnin Learning the Ropes##31591 |goto 69.48,25.15
		accept On The Mend##31592 |goto 69.48,25.15
	step
		talk Jenova Stoneshield##11069
		Tell her: _"I'd like to heal and revive my battle pets."_
		Heal your Battle Pets |q 31592/1 |goto 67.3,37.7
	step
		talk Audrey Burnhep##63596
		turnin On The Mend##31592 |goto 69.48,25.15
		accept Level Up!##31821 |goto 69.48,25.15
	step
		clicknpc Rabbit##61080
		|tip It could also be a Squirrel.
		Raise a Battle Pet to level 3 |q 31821/1 |goto 70.1,23.4
		|tip Keep battling critters around this area to accomplish this.
	step
		_Click the quest completion box that appears_
		accept Audrey Burnhep##32008
	step
		talk Audrey Burnhep##63596
		turnin Audrey Burnhep##32008 |goto 69.48,25.15
		accept Julia, The Pet Tamer##31316 |goto 69.48,25.15
	step
		talk Julia Stevens##64330
		Defeat Julia Stevens |q 31316/1 |goto Elwynn Forest/0 41.66,83.67
		|tip Julia's pet team consists of level 2 Beast battle pets.
		|tip Mechanical battle pets are strong against Beast battle pets.
		|tip Defeat her in battle pet combat.
	step
		talk Julia Stevens##64330
		turnin Julia, The Pet Tamer##31316 |goto 41.66,83.67
		accept Old MacDonald##31724 |goto 41.66,83.67
	step
		talk Old MacDonald##65648
		Defeat Old MacDonald |q 31724/1 |goto Westfall/0 60.86,18.49
		|tip MacDonald's pet team consists of level 3 Mechanical, Flying, and Critter battle pets.
		|tip Elemental battle pets are strong against Mechanical battle pets.
		|tip Magic battle pets are strong against Flying battle pets.
		|tip Beast battle pets are strong against Critter battle pets.
		|tip Defeat him in battle pet combat.
	step
		talk Old MacDonald##65648
		turnin Old MacDonald##31724 |goto 60.86,18.49
		accept Lindsay##31725 |goto 60.86,18.49
	step
		talk Lindsay##65651
		Defeat Lindsay |q 31725/1 |goto Redridge Mountains/0 33.30,52.58
		|tip Lindsay's pet team consists of level 5 Critter battle pets.
		|tip Beast battle pets are strong against Critter battle pets.
		|tip Defeat her in battle pet combat.
	step
		talk Lindsay##65651
		turnin Lindsay##31725 |goto 33.30,52.58
		accept Eric Davidson##31726 |goto 33.30,52.58
	step
		talk Eric Davidson##65655
		Defeat Eric Davidson |q 31726/1 |goto Duskwood/0 19.88,44.62
		|tip Eric's pet team consists of level 7 Beast battle pets.
		|tip Mechanical battle pets are strong against Beast battle pets.
		|tip Defeat him in battle pet combat.
	step
		talk Eric Davidson##65655
		turnin Eric Davidson##31726 |goto 19.88,44.62
		accept Steven Lisbane##31729 |goto 19.88,44.62
	step
		talk Steven Lisbane##63194
		Defeat Steven Lisbane |q 31729/1 |goto Northern Stranglethorn/0 46.01,40.45
		|tip Steven's pet team consists of level 9 Beast and Magic battle pets.
		|tip Mechanical battle pets are strong against Beast battle pets.
		|tip Dragonkin battle pets are strong against Magic battle pets.
		|tip Defeat him in battle pet combat.
	step
		talk Steven Lisbane##63194
		turnin Steven Lisbane##31729 |goto 46.01,40.45
		accept Bill Buckler##31728 |goto 46.01,40.45
	step
		talk Bill Buckler##65656
		Defeat Bill Buckler |q 31728/1 |goto The Cape of Stranglethorn/0 51.46,73.38
		|tip Bill's pet team consists of level 11 Humanoid and Flying battle pets.
		|tip Undead battle pets are strong against Humanoid battle pets.
		|tip Magic battle pets are strong against Flying battle pets.
		|tip Defeat him in battle pet combat.
	step
		talk Steven Lisbane##63194
		turnin Bill Buckler##31728 |goto 51.46,73.38
		accept A Tamer's Homecoming##31917 |goto 51.46,73.38
	step
		talk Audrey Burnhep##63596
		turnin A Tamer's Homecoming##31917 |goto Stormwind City/0 69.48,25.15
		accept Battle Pet Tamers: Eastern Kingdoms##31902 |goto 69.48,25.15
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
		|tip Everessa's pet team consists of level 16 Flying, Aquatic, and Beast battle pets.
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
		accept Grand Master Lydia Accoste##31915 |goto 66.96,52.42
	step
		talk Lydia Accoste##66522
		Defeat Lydia Accoste |q 31915/1 |goto Deadwind Pass/0 40.05,76.45
		|tip Lydia's pet team consists of level 19 Elemental and Undead battle pets.
		|tip Aquatic battle pets are strong against Elemental battle pets.
		|tip Critter battle pets are strong against Undead battle pets.
		|tip Defeat her in battle pet combat.
	step
		talk Lydia Accoste##66522
		turnin Grand Master Lydia Accoste##31915 |goto 40.05,76.45
		accept The Returning Champion##31976 |goto 40.05,76.45 |only if not completedq(31977) and not completedq(31976)
	step
		talk Audrey Burnhep##63596
		turnin The Returning Champion##31976 |goto Stormwind City/0 69.48,25.15
		|only if not completedq(31977) and not completedq(31976)
	step
		talk Audrey Burnhep##63596
		accept Battle Pet Tamers: Kalimdor##31889 |goto Stormwind City/0 69.48,25.15
	step
		talk Traitor Gluk##66352
		Defeat Traitor Gluk |q 31889/1 |goto Feralas/0 59.74,49.65
		|tip Gluk's pet team consists of level 13 Dragonkin, Beast, and Critter battle pets.
		|tip Humanoid battle pets are strong against Dragonkin battle pets.
		|tip Mechanical battle pets are strong against Beast battle pets.
		|tip Beast battle pets are strong against Critter battle pets.
		|tip Defeat him in battle pet combat.
	step
		talk Grazzle the Great ##66436
		Defeat Grazzle the Great  |q 31889/2 |goto Dustwallow Marsh/0 53.85,74.88
		|tip Grazzle's pet team consists of level 14 Dragonkin battle pets.
		|tip Humanoid battle pets are strong against Dragonkin battle pets.
		|tip Defeat him in battle pet combat.
	step
		talk Kela Grimtotem##66452
		Defeat Kela Grimtotem |q 31889/3 |goto Thousand Needles/0 31.87,32.94
		|tip Kela's pet team consists of level 15 Critter and Beast battle pets.
		|tip Beast battle pets are strong against Critter battle pets.
		|tip Mechanical battle pets are strong against Beast battle pets.
		|tip Defeat her in battle pet combat.
	step
		talk Zoltan##66442
		Defeat Zoltan |q 31889/4 |goto Felwood/0 39.95,56.57
		|tip Zoltan's pet team consists of level 16 Mechanical and Magic battle pets.
		|tip Elemental battle pets are strong against Mechanical battle pets.
		|tip Dragonkin battle pets are strong against Magic battle pets.
		|tip Defeat him in battle pet combat.
	step
		talk Elena Flutterfly##66412
		Defeat Elena Flutterfly |q 31889/5 |goto Moonglade/0 46.14,60.26
		|tip Elena's pet team consists of level 17 Dragonkin, Magic, and Flying battle pets.
		|tip Humanoid battle pets are strong against Dragonkin battle pets.
		|tip Dragonkin battle pets are strong against Magic battle pets.
		|tip Magic battle pets are strong against Flying battle pets.
		|tip Defeat her in battle pet combat.
	step
		_Click the quest completion box that appears_
		turnin Battle Pet Tamers: Kalimdor##31889 |goto 46.14,60.26
	step
		talk Audrey Burnhep##63596
		accept Battle Pet Tamers: Outland##31919 |goto Stormwind City/0 69.48,25.15
	step
		talk Nicki Tinytech##66550
		accept Nicki Tinytech##31922 |goto Hellfire Peninsula/0 64.31,49.30 |only if completedq(31920)
		Defeat Nicki Tinytech |q 31919/1 |goto Hellfire Peninsula/0 64.31,49.30
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
		Defeat Ras'an |q 31919/2 |goto Zangarmarsh/0 17.24,50.52
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
		Defeat Narrok |q 31919/3 |goto Nagrand/0 60.97,49.42
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
		Defeat Morulu The Elder |q 31919/4 |goto Shattrath City/0 58.76,70.05
		|tip Morulu's pet team consists of level 23 Aquatic battle pets.
		|tip Flying battle pets are strong against Aquatic battle pets.
		|tip Defeat him in battle pet combat.
	step
		talk Morulu The Elder##66553
		turnin Morulu The Elder##31925 |goto 58.76,70.05
		|only if completedq(31920)
	step
		_Click the quest completion box that appears_
		turnin Battle Pet Tamers: Outland##31919 |goto 58.76,70.05
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
		accept Exceeding Expectations##31981 |goto 30.51,41.77 |only if not completedq(31981) and not completedq(31982)
	step
		talk Audrey Burnhep##63596
		turnin Exceeding Expectations##31981 |goto Stormwind City/0 69.48,25.15
		|only if not completedq(31981) and not completedq(31982)
	step
		talk Audrey Burnhep##63596
		accept Battle Pet Tamers: Northrend##31927 |goto Stormwind City/0 69.48,25.15
	step
		talk Nearly Headless Jacob##66636
		accept Nearly Headless Jacob##31932 |goto Crystalsong Forest/0 50.14,58.97 |only if completedq(31928)
		Defeat Nearly Headless Jacob |q 31927/2 |goto Crystalsong Forest/0 50.14,58.97
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
		Defeat Okrut Dragonwaste |q 31927/3 |goto Dragonblight/0 59.02,77.05
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
		Defeat Beegle Blastfuse |q 31927/1 |goto Howling Fjord/0 28.61,33.88
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
		Defeat Gutretch |q 31927/4 |goto Zul'Drak/0 13.22,66.79
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
		turnin Battle Pet Tamers: Northrend##31927 |goto 59.02,77.05
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
		talk Audrey Burnhep##63596
		turnin A Brief Reprieve##31984 |goto Stormwind City/0 69.48,25.15
		|only if not completedq(31929) and not completedq(31927)
	step
		talk Audrey Burnhep##63596
		accept Battle Pet Tamers: Cataclysm##31966 |goto Stormwind City/0 69.48,25.15
	step
		talk Brok##66819
		accept Brok##31972 |goto Mount Hyjal/0 61.37,32.71 |only if completedq(31970)
		Defeat Brok |q 31966/1 |goto Mount Hyjal/0 61.37,32.71
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
		Defeat Bordin Steadyfist |q 31966/2 |goto Deepholm/0 49.87,57.05
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
		Defeat Goz Banefury |q 31966/3 |goto Twilight Highlands/0 56.59,56.80
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
		turnin Battle Pet Tamers: Cataclysm##31966 |goto 56.59,56.80
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
		accept The Triumphant Return##31985 |goto 56.56,41.98 |only if not completedq(31985) and not completedq(31986)
	step
		talk Audrey Burnhep##63596
		turnin The Triumphant Return##31985 |goto Stormwind City/0 69.48,25.15
		|only if not completedq(31985) and not completedq(31986)
	step
		talk Audrey Burnhep##63596
		accept Battle Pet Tamers: Pandaria##31930 |goto Stormwind City/0 69.48,25.15
	step
		talk Hyuna of the Shrines##66730
		accept Grand Master Hyuna##31953 |goto The Jade Forest/0 47.96,54.17 |only if completedq(31951)
		Defeat Hyuna of the Shrines |q 31930/1 |goto The Jade Forest/0 47.96,54.17
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
		Defeat Farmer Nishi |q 31930/2 |goto Valley of the Four Winds/0 46.07,43.68
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
		Defeat Mo'ruk |q 31930/3 |goto Krasarang Wilds/0 62.23,45.91
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
		Defeat Wastewalker Shu |q 31930/6 |goto Dread Wastes/0 55.11,37.56
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
		Defeat Seeker Zusshi |q 31930/5 |goto Townlong Steppes/0 36.32,52.21
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
		Defeat Courageous Yon |q 31930/4 |goto 35.84,73.63
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
		turnin Battle Pet Tamers: Pandaria##31930 |goto 35.84,73.63
		accept Grand Master Aki##31951 |goto 35.84,73.63 |only if not completedq(31951)
	step
		talk Aki the Chosen##66741
		Defeat Aki the Chosen |q 31951/1 |goto Vale of Eternal Blossoms/0 31.27,74.09
		|tip Defeat him in battle pet combat.
	step
		talk Aki the Chosen##66741
		turnin Grand Master Aki##31951 |goto 31.27,74.09
		|tip Aki's pet team consists of level 25 Aquatic, Critter, and Dragonkin battle pets.
		|tip Flying battle pets are strong against Aquatic battle pets.
		|tip Beast battle pets are strong against Critter battle pets.
		|tip Humanoid battle pets are strong against Dragonkin battle pets.
]])

ZygorGuidesViewer:RegisterInclude("Alliance_Battlepet_Dailies",[[
		In order to obtain these daily quests, you will need to have defeated Grand Master pet tamers
		If you haven't done so already, please go back and complete the Battle Pet quest guide
		Otherwise, click here to proceed |confirm
	step
	label "reset"
		Click here to do the daily set in the Eastern Kingdoms |confirm |next "ekpets" |only if completedq(31915)
		Click here to do the daily set in Kalimdor |confirm |next "kalimpets" |only if completedq(31915) and completedq(31897)
		Click here to do the daily set in Outland |confirm |next "outpets" |only if completedq(31920)
		Click here to do the daily set in Northrend |confirm |next "northpets" |only if completedq(31928)
		Click here to do the daily set in the Cataclysm |confirm |next "catapets" |only if completedq(31970)
		Click here to do the daily set in Pandaria |confirm |next "pandapets" |only if completedq(31970)
	// First Daily Set: Everessa, Durin Darkhammer, Kortas Darkhammer , David Kosse, Deiza Plaguehorn, Lydia Accoste
	step
	label "ekpets"
		talk Julia Stevens##64330
		accept Julia Stevens##31693 |goto Elwynn Forest 41.6,83.7
		only if completedq(31915)
	step
		talk Julia Stevens##64330
		|tip You will not be able to challenge Julia if you have the "Pet Recovery" debuff, wait for it to fall off.
		_"Let's fight!"_
		|tip Julia has 2 Beast type Pets. Use Mechanical type attacks on the Beast Pets. Julia's pets are level 2 so you shouldn't have any issues here.
		Defeat Julia Stevens |q 31693/1 |goto Elwynn Forest 41.6,83.7
		only if completedq(31915)
	step
		talk Julia Stevens##64330
		turnin Julia Stevens##31693 |goto Elwynn Forest 41.6,83.7
		only if completedq(31915)
	step
		talk Old MacDonald##65648
		accept Old MacDonald##31780 |goto Westfall 60.9,18.6
		only if completedq(31915)
	step
		talk Old MacDonald##65648
		|tip You will not be able to challenge Old MacDonald if you have the "Pet Recovery" debuff, wait for it to fall off.
		_"Let's fight!"_
		|tip Old MacDonald has 3 Beast type Pets. Use Mechanical type attacks on the Beast Pets. Old MacDonald's pets are level 3 so you shouldn't have any issues here.
		Defeat Old MacDonald |q 31780/1 |goto Westfall 60.9,18.6
		only if completedq(31915)
	step
		talk Old MacDonald##65648
		turnin Old MacDonald##31780 |goto Westfall 60.9,18.6
		only if completedq(31915)
	step
		talk Eric Davidson##65655
		accept Eric Davidson##31850 |goto Duskwood 19.9,44.7
		only if completedq(31915)
	step
		talk Eric Davidson##65655
		|tip You will not be able to challenge Eric if you have the "Pet Recovery" debuff, wait for it to fall off.
		_"Let's fight!"_
		|tip Eric has 3 Beast type Pets. Use Mechanical type attacks on the Beast Pets. Eric's pets are level 7 so you shouldn't have any issues here.
		Defeat Eric Davidson |q 31850/1 |goto Duskwood 19.9,44.7
		only if completedq(31915)
	step
		talk Eric Davidson##65655
		turnin Eric Davidson##31850 |goto Duskwood 19.9,44.7
		only if completedq(31915)
	step
		talk Steven Lisbane##63194
		accept Steven Lisbane##31852 |goto Northern Stranglethorn 46.0,40.3
		only if completedq(31915)
	step
		talk Steven Lisbane##63194
		|tip You will not be able to challenge Steven if you have the "Pet Recovery" debuff, wait for it to fall off.
		_"Let's fight!"_
		|tip Steven has a Magic type Pet and 2 Beast type Pets. Use Dragonkin type attacks on the Magic Pet and Mechanical type attacks on the Beast Pets. Steven's pets are level 9 so you shouldn't have any issues here.
		Defeat Steven Lisbane |q 31852/1 |goto Northern Stranglethorn 46.0,40.3
		only if completedq(31915)
	step
		talk Steven Lisbane##63194
		turnin Steven Lisbane##31852 |goto Northern Stranglethorn 46.0,40.3
		only if completedq(31915)
	step
		talk Bill Buckler##65656
		accept Bill Buckler##31851 |goto The Cape of Stranglethorn 51.4,73.3
		only if completedq(31915)
	step
		talk Bill Buckler##65656
		|tip You will not be able to challenge Bill if you have the "Pet Recovery" debuff, wait for it to fall off.
		_"Let's fight!"_
		|tip Bill has a Humanoid type Pet and 2 Flying type Pets. Use Undead type attacks on the Humanoid Pet and Magic type attacks on the Flying Pets. Bill's pets are level 11 so you shouldn't have any issues here.
		Defeat Bill Buckler |q 31851/1 |goto The Cape of Stranglethorn 51.4,73.3
		only if completedq(31915)
	step
		talk Bill Buckler##65656
		turnin Bill Buckler##31851 |goto The Cape of Stranglethorn 51.4,73.3
		only if completedq(31915)
	step
		talk Lydia Accoste##66522
		accept Grand Master Lydia Accost##31916 |goto Deadwind Pass 40.1,76.4
		only if completedq(31915)
	step
		talk Lydia Accoste##66522
		|tip You will not be able to challenge Lydia if you have the "Pet Recovery" debuff, wait for it to fall off.
		_"Let's fight!"_
		|tip Lydia has an Elemental type Pet and 2 Undead type Pets. Use Aquatic type attacks on the Elemental Pet and Critter type attacks on the Undead Pets. Your pets should be at least level 19 before fighting Lydia.
		Defeat Lydia Accoste |q 31916/1 |goto Deadwind Pass 40.1,76.4
		only if completedq(31915)
	step
		talk Lydia Accoste##66522
		turnin Grand Master Lydia Accoste##31916 |goto 40.1,76.4
		only if completedq(31915)
	step
		talk Everessa##66518
		accept Everessa##31913 |goto Swamp of Sorrows 76.8,41.5
		only if completedq(31915)
	step
		talk Everessa##66518
		|tip You will not be able to challenge Everessa if you have the "Pet Recovery" debuff, wait for it to fall off.
		_"Let's fight!"_
		|tip Everessa has a Flying Pet, a Beast Pet, and an Aquatic Pet. Use Magic type attacks on the Flying Pet, Mechanical type attacks on the Beast Pet, and Flying type attacks on the Aquatic Pet. Her pets are all level 16. You should be able to win with ease.
		Defeat Everessa |q 31913/1 |goto Swamp of Sorrows 76.8,41.5
		only if completedq(31915)
	step
		talk Everessa##66518
		turnin Everessa##31913 |goto Swamp of Sorrows 76.8,41.5
		only if completedq(31915)
	step
		talk Lindsay##65651
		accept Lindsay##31781 |goto Redridge Mountains 33.2,52.6
		only if completedq(31915)
	step
		talk Lindsay##65651
		|tip You will not be able to challenge Lindsay if you have the "Pet Recovery" debuff, wait for it to fall off.
		_"Let's fight!"_
		|tip Lindsay has 3 Critter type pets. Use Beast type attacks against the Critter Pets. Her pets are all level 5. You should be able to win with ease.
		Defeat Lindsay |q 31781/1 |goto Redridge Mountains 33.2,52.6
		only if completedq(31915)
	step
		talk Lindsay##65651
		turnin Lindsay##31781 |goto Redridge Mountains 33.2,52.6
		only if completedq(31915)
	step
		talk Durin Darkhammer##66520
		accept Durin Darkhammer##31914 |goto Burning Steppes 25.5,47.4
		only if completedq(31915)
	step
		talk Durin Darkhammer##66520
		|tip You will not be able to challenge Durin if you have the "Pet Recovery" debuff, wait for it to fall off.
		_"Let's fight!"_
		|tip Durin has a Flying type Pet, a Critter Pet, and an Elemental Pet. Use Magic type attacks on the Flying Pet, Beast type attacks on the Critter Pet, and Aquatic type attacks on the Elemental Pet. His pets are all level 17. You should be able to win with ease.
		Defeat Durin Darkhammer |q 31914/1 |goto Burning Steppes 25.5,47.4
		only if completedq(31915)
	step
		talk Durin Darkhammer##66520
		turnin Durin Darkhammer##31914 |goto Burning Steppes 25.5,47.4
		only if completedq(31915)
	step
		talk Kortas Darkhammer##66515
		accept Kortas Darkhammer##31912 |goto Searing Gorge 35.3,27.8
		only if completedq(31915)
	step
		talk Kortas Darkhammer##66515
		|tip You will not be able to challenge Kortas if you have the "Pet Recovery" debuff, wait for it to fall off.
		_"Let's fight!"_
		|tip Kortas has 3 Dragonkin type Pets. Use Humanoid type attacks on his pets. His pets are all around level 15 so your pet team should be able to defeat him easily.
		Defeat Kortas Darkhammer |q 31912/1 |goto Searing Gorge 35.3,27.8
		only if completedq(31915)
	step
		talk Kortas Darkhammer##66515
		turnin Kortas Darkhammer##31912 |goto Searing Gorge 35.3,27.8
		only if completedq(31915)
	step
		talk David Kosse##66478
		accept David Kosse##31910 |goto The Hinterlands 63.0,54.6
		only if completedq(31915)
	step
		talk David Kosse##66478
		|tip You will not be able to challenge David if you have the "Pet Recovery" debuff, wait for it to fall off.
		_"Let's fight!"_
		|tip David has a Beast Pet, a Critter Pet, and an Magic Pet. Use Mechanical type attacks on the Beast Pet, Beast type attacks on the Critter Pet, and Dragonkin type attacks on the Magic Pet. His pets are all around level 13 so your pet team should be able to defeat him easily.
		Defeat David Kosse |q 31910/1 |goto The Hinterlands 63.0,54.6
		only if completedq(31915)
	step
		talk David Kosse##66478
		turnin David Kosse##31910 |goto The Hinterlands 63.0,54.6
		only if completedq(31915)
	step
		talk Deiza Plaguehorn##66512
		accept Deiza Plaguehorn##31911 |goto Eastern Plaguelands 67.0,52.4
		only if completedq(31915)
	step
		talk Deiza Plaguehorn##66512
		|tip You will not be able to challenge Deiza if you have the "Pet Recovery" debuff, wait for it to fall off.
		_"Let's fight!"_
		|tip Deiza has 2 Beast type Pets and an Undead type Pet. Use Mechanical type attacks on the Beast Pets and Critter type attacks on the Undead Pet. Her pets are all around level 14 so your pet team should be able to defeat her easily.
		Defeat Deiza Plaguehorn |q 31911/1 |goto Eastern Plaguelands 67.0,52.4
		only if completedq(31915)
	step
		talk Deiza Plaguehorn##66512
		turnin Deiza Plaguehorn##31911 |goto Eastern Plaguelands 67.0,52.4
		only if completedq(31915)
		|next "reset"
	// Second Daily Set: Traitor Gluk, Grazzle the Great, Kela Grimtotem, Zoltan, Elena Flutterfly
	step
	label "kalimpets"
		talk Stone Cold Trixxy##66466
		accept Grand Master Trixxy##31909 |goto Winterspring 65.6,64.4
		only if completedq(31915)
	step
		talk Stone Cold Trixxy##66466
		Tell her you want to fight!
		She uses level 19 Flying, Beast and Dragonkin pets.
		Defeat Stone Cold Trixxy |q 31909/1 |goto Winterspring 65.6,64.4
		only if completedq(31915)
	step
		talk Stone Cold Trixxy##66466
		turnin Grand Master Trixxy##31909 |goto Winterspring 65.6,64.4
		only if completedq(31915)
	// Third Daily Set: Nicki Tinytech, Morulu The Elder, Narrok, Ras'an, Bloodknight Antari
	step
	label "outpets"
		talk Nicki Tinytech##66550
		accept Nicki Tinytech##31922 |goto Hellfire Peninsula 64.3,49.3
		only if completedq(31920)
	step
		talk Nicki Tinytech##66550
		|tip You will not be able to challenge Nicky if you have the "Pet Recovery" debuff, wait for it to fall off.
		_"Let's fight!"_
		|tip Nicki has 3 Mechanical type Pets. Use Elemental type attacks on her pets. Her pets are all around level 20.
		Defeat Nicki Tinytech |q 31922/1 |goto Hellfire Peninsula 64.3,49.3
		only if completedq(31920)
	step
		talk Nicki Tinytech##66550
		turnin Nicki Tinytech##31922 |goto Hellfire Peninsula 64.3,49.3
		only if completedq(31920)
	step
		talk Ras'an##66551
		accept Ras'an##31923 |goto Zangarmarsh 17.2,50.5
		only if completedq(31920)
	step
		talk Ras'an##66551
		|tip You will not be able to challenge Ras'an if you have the "Pet Recovery" debuff, wait for it to fall off.
		_"Let's fight!"_
		|tip Ras'an has a Flying Pet, a Humanoid Pet, and a Magic Pet. Use Magic type attacks on his Flying pet, Undead type attacks on his Humanoid pet, and Dragonkin type attacks on his Magic pet. His pets are all around level 21.
		Defeat Ras'an |q 31923/1 |goto Zangarmarsh 17.2,50.5
		only if completedq(31920)
	step
		talk Ras'an##66551
		turnin Ras'an##31923 |goto Zangarmarsh 17.2,50.5
		only if completedq(31920)
	step
		talk Narrok##66552
		accept Narrok##31924 |goto Nagrand 61.0,49.4
		only if completedq(31920)
	step
		talk Narrok##66552
		|tip You will not be able to challenge Narrok if you have the "Pet Recovery" debuff, wait for it to fall off.
		_"Let's fight!"_
		|tip Narrok has an Aquatic Pet, a Beast Pet, and a Critter Pet. Use Flying type attacks on his Aquatic pet, Mechanical type attacks on his Beast pet, and Beast type attacks on his Critter pet. His pets are all around level 22.
		Defeat Narrok |q 31924/1 |goto Nagrand 61.0,49.4
		only if completedq(31920)
	step
		talk Narrok##66552
		turnin Narrok##31924 |goto Nagrand 61.0,49.4
		only if completedq(31920)
	step
		talk Morulu The Elder##66553
		accept Morulu The Elder##31925 |goto Shattrath City 58.8,70.1
		only if completedq(31920)
	step
		talk Morulu The Elder##66553
		|tip You will not be able to challenge Morulu if you have the "Pet Recovery" debuff, wait for it to fall off.
		_"Let's fight!"_
		|tip Morulu has 3 Aquatic type Pets. Use Flying type attacks on his pets. His pets are all around level 23.
		Defeat Morulu The Elder |q 31925/1 |goto Shattrath City 58.8,70.1
		only if completedq(31920)
	step
		talk Morulu The Elder##66553
		turnin Morulu The Elder##31925 |goto Shattrath City 58.8,70.1
		only if completedq(31920)
	step
		talk Bloodknight Antari##66557
		accept Grand Master Antari##31926 |goto Shadowmoon Valley 30.6,42.0
		only if completedq(31920)
	step
		talk Bloodknight Antari##66557
		|tip You will not be able to challenge Bloodknight Antari if you have the "Pet Recovery" debuff, wait for it to fall off.
		_"Let's fight!"_
		|tip Bloodknight Antari has an Elemental Pet, a Dragonkin Pet, and a Magic Pet. Use Aquatic type attacks on his Elemental pet, Humanoid type attacks on his Dragonkin pet, and Dragonkin type attacks on his Magic pet. Your pets should all be around level 24.
		Defeat Bloodknight Antari |q 31926/1 |goto Shadowmoon Valley 30.6,42.0
		only if completedq(31920)
	step
		talk Bloodknight Antari##66557
		turnin Grand Master Antari##31926 |goto Shadowmoon Valley 30.6,42.0
		only if completedq(31920)
		|next "reset"
	// Fourth Daily Set: Beegle Blastfuse, Okrut Dragonwaste, Nearly Headless Jacob, Gutretch, Major Payne
	step
	label "northpets"
		talk Beegle Blastfuse##66635
		accept Beegle Blastfuse##31931 |goto Howling Fjord 28.6,33.9
		only if completedq(31928)
	step
		talk Beegle Blastfuse##66635
		|tip You will not be able to challenge Beegle Blastfuse if you have the "Pet Recovery" debuff, wait for it to fall off.
		_"Let's fight!"_
		|tip Beegle Blastfuse has an Aquatic Pet and 2 Flying Pets. Use Flying type attacks on his Aquatic pet and Magic attacks on his Flying pets. Your pets should all be around level 25 before fighting Beegle.
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
		|tip You will not be able to challenge Okrut Dragonwaste if you have the "Pet Recovery" debuff, wait for it to fall off.
		_"Let's fight!"_
		|tip Okrut Dragonwaste has a Dragonkin Pet and 2 Undead Pets. Use Humanoid type attacks on his Dragonkin and Critter type attacks on his Undead. Your pets should all be level 25 before fighting Okrut.
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
		|tip You will not be able to challenge Nearly Headless Jacob if you have the "Pet Recovery" debuff, wait for it to fall off.
		_"Let's fight!"_
		|tip Nearly Headless Jacob has 3 Undead Pets. Critter type attacks will be the most useful against Jacob. You should also consider having an Aquatic pet or two. Your pets should all be level 25.
		Defeat Nearly Headless Jacob |q 31932/1 |goto Crystalsong Forest 50.1,59.0
		only if completedq(31928)
	step
		talk Nearly Headless Jacob##66636
		turnin Nearly Headless Jacob##31932 |goto Crystalsong Forest 50.1,59.0
		only if completedq(31928)
	step
		talk Major Payne##66675
		accept Grand Master Payne##31935 |goto Icecrown 77.4,19.6
		only if completedq(31928)
	step
		talk Major Payne##66675
		|tip You will not be able to challenge Major Payne if you have the "Pet Recovery" debuff, wait for it to fall off.
		_"Let's fight!"_
		|tip Major Payne has a Beast Pet, a Mechanical Pet, and an Elemental Pet. Use Mechanical type attacks on his Beast, Elemental type attacks on his Mechanical, and Aquatic type attacks on his Elemental. Your pets should be level 25 for this fight.
		Defeat Major Payne |q 31935/1 |goto Icecrown 77.4,19.6
		only if completedq(31928)
	step
		talk Major Payne##66675
		accept Grand Master Payne##31935 |goto Icecrown 77.4,19.6
		only if completedq(31928)
	step
		talk Gutretch##66639
		accept Gutretch##31934 |goto Zul'Drak 13.2,66.8
		only if completedq(31928)
	step
		talk Gutretch##66639
		|tip You will not be able to challenge Gutretch if you have the "Pet Recovery" debuff, wait for it to fall off.
		_"Let's fight!"_
		|tip Gutretch has 2 Beast type Pets and a Critter type Pet. Use Mechanical type attacks on his Beasts and Beast type attacks on his Critter. Your pets should all be level 25 for this fight.
		Defeat Gutretch |q 31934/1 |goto Zul'Drak 13.2,66.8
		only if completedq(31928)
	step
		talk Gutretch##66639
		turnin Gutretch##31934 |goto Zul'Drak 13.2,66.8
		only if completedq(31928)
		|next "reset"
	// Fifth Daily Set: Brok, Brodin Steadyfist, Goz Banefury, Obalis
	step
	label "catapets"
		talk Brok##66819
		accept Brok##31972 |goto Mount Hyjal 61.4,32.7
		only if completedq(31970)
	step
		talk Brok##66819
		|tip You will not be able to challenge Brok if you have the "Pet Recovery" debuff, wait for it to fall off.
		_"Let's fight!"_
		|tip Brok has a Beast Pet, a Critter Pet, and a Magic Pet. Use Mechanical type attacks on his Beast, Beast type attacks on his Critter, and Dragonkin type attacks on his Magic. Your pets should all be level 25.
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
		|tip You will not be able to challenge Bordin Steadyfist if you have the "Pet Recovery" debuff, wait for it to fall off.
		_"Let's fight!"_
		|tip Bordin Steadyfist has a Critter Pet and 2 Elemental Pets. Use Beast type attacks on his Critter and Aquatic type attacks on his Elementals. Your pets should all be level 25.
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
		|tip You will not be able to challenge Goz Banefury if you have the "Pet Recovery" debuff, wait for it to fall off.
		_"Let's fight!"_
		|tip Goz Banefury has a Beast Pet, an Elemental Pet, and a Magic Pet. Use Mechanical type attacks on his Beast, Aquatic type attacks on his Elemental, and Dragonkin type attacks on his Magic. Your pets should all be level 25.
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
		|tip You will not be able to challenge Obalis if you have the "Pet Recovery" debuff, wait for it to fall off.
		_"Let's fight!"_
		|tip Obalis has a Beast Pet, a Flying Pet, and a Critter Pet. Use Mechanical type attacks on his Beast, Magic type attacks on his Flyer, and Beast type attacks on his Critter. Your pets should all be level 25.
		Defeat Obalis |q 31971/1 |goto Uldum 56.5,42.0
		only if completedq(31970)
	step
		talk Obalis##66824
		turnin Grand Master Obalis##31971 |goto Uldum 56.5,42.0
		only if completedq(31970)
		|next "reset"
	// Sixth Daily Set: Hyuna of the Shrines, Farmer Nishi, Mo'ruk, Courageous Yon, Seeker Zusshi, Wastewalker Shu, Aki the Chosen
	step
	label "pandapets"
		talk Hyuna of the Shrines##66730
		accept Grand Master Hyuna##31953 |goto The Jade Forest 48.0,54.2
		only if completedq(31970)
	step
		talk Hyuna of the Shrines##66730
		|tip You will not be able to challenge Hyuna of the Shrines if you have the "Pet Recovery" debuff, wait for it to fall off.
		_"Let's fight!"_
		|tip Hyuna of the Shrines has a Beast Pet, a Flying Pet, and an Aquatic Pet. Use Mechanical type attacks on her Beast, Magic type attacks on her Flyer, and Flying type attacks on her Aquatic. Your pets should all be level 25.
		Defeat Hyuna of the Shrines |q 31953/1 |goto The Jade Forest 48.0,54.2
		only if completedq(31970)
	step
		talk Hyuna of the Shrines##66730
		turnin Grand Master Hyuna##31953 |goto The Jade Forest 48.0,54.2
		only if completedq(31970)
	step
		talk Aki the Chosen##66741
		accept Zen Master Aki##31958 |goto Vale of Eternal Blossoms 31.2,74.0
		only if completedq(31970)
	step
		talk Aki the Chosen##66741
		|tip You will not be able to challenge Aki the Chosen if you have the "Pet Recovery" debuff, wait for it to fall off.
		_"Let's fight!"_
		|tip Aki the Chosen has an Aquatic Pet, a Critter Pet, and a Dragonkin Pet. Use Flying type attacks on her Aquatic, Beast type attacks on her Critter, and Humanoid type attacks on her Dragonkin. Your pets should all be level 25.
		Defeat Aki the Chosen |q 31958/1 |goto Vale of Eternal Blossoms 31.2,74.0
		only if completedq(31970)
	step
		talk Aki the Chosen##66741
		turnin Zen Master Aki##31958 |goto Vale of Eternal Blossoms 31.2,74.0
		only if completedq(31970)
	step
		talk Courageous Yon##66738
		accept Grand Master Yon##31956 |goto Kun-Lai Summit 35.8,73.8
		only if completedq(31970)
	step
		talk Courageous Yon##66738
		|tip You will not be able to challenge Courageous Yon if you have the "Pet Recovery" debuff, wait for it to fall off.
		_"Let's fight!"_
		|tip Courageous Yon has a Flying Pet, a Critter Pet, and a Beast Pet. Use Beast type attacks on his Critter, Mechanical type attacks on his Beast, and Magic type attacks on his Flying. Your pets should all be level 25.
		Defeat Courageous Yon |q 31956/1 |goto Kun-Lai Summit 35.8,73.8
		He can also be found at [44.7,52.4]
		only if completedq(31970)
	step
		talk Courageous Yon##66738
		turnin Grand Master Yon##31956 |goto Kun-Lai Summit 35.8,73.8
		only if completedq(31970)
	step
		talk Seeker Zusshi##66918
		accept Grand Master Zusshi##31991 |goto Townlong Steppes 36.3,52.2
		only if completedq(31970)
	step
		talk Seeker Zusshi##66918
		|tip You will not be able to challenge Seeker Zusshi if you have the "Pet Recovery" debuff, wait for it to fall off.
		_"Let's fight!"_
		|tip Seeker Zusshi has an Aquatic Pet, a Critter Pet, and an Elemental Pet. Use Flying type attacks on his Aquatic, Aquatic type attacks on his Elemental, and Beast type attacks on his Critter. Your pets should all be level 25.
		Defeat Seeker Zusshi |q 31991/1 |goto Townlong Steppes 36.3,52.2
		only if completedq(31970)
	step
		talk Seeker Zusshi##66918
		turnin Grand Master Zusshi##31991 |goto Townlong Steppes 36.3,52.2
		only if completedq(31970)
	step
		talk Wastewalker Shu##66739
		accept Grand Master Shu##31957 |goto Dread Wastes 55.1,37.6
		only if completedq(31970)
	step
		talk Wastewalker Shu##66739
		|tip You will not be able to challenge Wastewalker Shu if you have the "Pet Recovery" debuff, wait for it to fall off.
		_"Let's fight!"_
		|tip Wastewalker Shu has an Aquatic Pet, a Beast Pet, and an Elemental Pet. Use Flying type attacks on his Aquatic, Aquatic type attacks on his Elemental, and Mechanical type attacks on his Beast. Your pets should all be level 25.
		Defeat Wastewalker Shu |q 31957/1 |goto Dread Wastes 55.1,37.6
		only if completedq(31970)
	step
		talk Wastewalker Shu##66739
		turnin Grand Master Shu##31957 |goto Dread Wastes 55.1,37.6
		only if completedq(31970)
	step
		talk Mo'ruk##66733
		accept Mo'ruk##31954 |goto Krasarang Wilds 62.2,45.9
		only if completedq(31970)
	step
		talk Mo'ruk##66733
		|tip You will not be able to challenge Mo'ruk if you have the "Pet Recovery" debuff, wait for it to fall off.
		_"Let's fight!"_
		|tip Mo'ruk has a Beast Pet, a Flying Pet, and an Aquatic Pet. Use Mechanical type attacks on his Beast, Magic type attacks on his Flyer, and Flying type attacks on his Aquatic. Your pets should all be level 25.
		Defeat Mo'ruk |q 31954/1 |goto Krasarang Wilds 62.2,45.9
		only if completedq(31970)
	step
		talk Mo'ruk##66733
		turnin Mo'ruk##31954 |goto Krasarang Wilds 62.2,45.9
		only if completedq(31970)
	step
		talk Farmer Nishi##66734
		accept Grand Master Nishi##31955 |goto Valley of the Four Winds 46.0,43.7
		only if completedq(31970)
	step
		talk Farmer Nishi##66734
		|tip You will not be able to challenge Farmer Nishi if you have the "Pet Recovery" debuff, wait for it to fall off.
		_"Let's fight!"_
		|tip Farmer Nishi has a Beast Pet, and two Elemental Pets. Use Mechanical type attacks on her Beast, and Aquatic type attacks on her Elementals. Your pets should all be level 25.
		Defeat Farmer Nishi |q 31955/1 |goto Valley of the Four Winds 46.0,43.7
		only if completedq(31970)
	step
		talk Farmer Nishi##66734
		turnin Grand Master Nishi##31955 |goto Valley of the Four Winds 46.0,43.7
		only if completedq(31970)
		|next "reset"
]])

ZygorGuidesViewer:RegisterInclude("A_Beasts_of_Fable",[[
		talk Sara Finkleswitch##64572
		accept Beasts of Fable##32603 |goto Vale of Eternal Blossoms 86.6,60.0
	step
	label "dailies"
		_No-No_
		This enemy is aquatic.
		It is strong against undead and weak to flying attacks.
		I would suggest that you use flying pets against this enemy.
		Defeat No-No |q 32603/3 |goto Vale of Eternal Blossoms 11.0,70.9
	step
		_Lucky Yi_
		This enemy is a critter.
		Is is strong against Elementals and weak to beast attacks.
		I would suggest using beast pets against this enemy.
		Defeat Lucky Yi |q 32603/5 |goto Valley of the Four Winds 40.5,43.7
	step
		_Greyhoof_
		This enemy is a beast.
		It is strong against humanoids and weak against mechanical pets.
		I would suggest using a team of mechanical pets against this enemy.
		Defeat Greyhoof |q 32603/4 |goto Valley of the Four Winds 25.3,78.5
	step
		_Xi'a_
		This enemy is aquatic.
		It is strong against undead and weak to flying pets.
		I would suggest using flying pets against this enemy.
		Defeat Xi'a |q 32603/10 |goto Krasarang Wilds 36.3,37.3
	step
		_Gorespine_
		This enemy is a beast.
		It is strong against humanoids and weak against mechanical pets.
		I would suggest using a team of mechanical pets against this enemy.
		Defeat Gorespine |q 32603/2 |goto Dread Wastes 26.1,50.2
	step
		_Ti'un the Wanderer_
		This enemy is aquatic.
		It is strong against undead and weak to flying pets.
		I would suggest using flying pets against this enemy.
		Defeat Ti'un the Wanderer |q 32603/6 |goto Townlong Steppes 72.3,79.8
	step
		This enemy is a beast.
		It is strong against humanoids and weak against mechanical pets.
		I would suggest using a team of mechanical pets against this enemy.
		Defeat Kafi |q 32603/7 |goto Kun-Lai Summit 35.2,56.2
	step
		_Dos-Ryga_
		This enemy is aquatic.
		It is strong against undead and weak to flying pets.
		I would suggest using flying pets against this enemy.
		Defeat Dos-Ryga |q 32603/8 |goto Kun-Lai Summit 67.9,84.7
	step
		_Ka'wi_
		This enemy is a critter.
		Is is strong against Elementals and weak to beast attacks.
		I would suggest using a team of mechanical pets against this enemy.
		Defeat Ka'wi the Gorger |q 32603/1 |goto The Jade Forest 48.4,71.0
	step
		This enemy is a critter.
		Is is strong against Elementals and weak to beast attacks.
		I would suggest using beast pets against this enemy.
		Defeat Nitun |q 32603/9 |goto The Jade Forest 57.0,29.1
	step
		talk Sara Finkleswitch##64572
		turnin Beasts of Fable##32603 |goto Vale of Eternal Blossoms 86.6,60.0
]])