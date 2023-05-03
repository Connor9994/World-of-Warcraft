if UnitFactionGroup("player")~="Alliance" then return end
local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end



--------------------------------------------
----- BFA WAR CAMPAIGN FOOTHOLD QUESTS -----
--------------------------------------------

ZygorGuidesViewer:RegisterInclude("Choose_Foothold_1",[[
		accept Foothold: Zuldazar##51570 |goto 69.38,26.98 |or |only if not completedq(51570) and not completedq(51569)
		accept Foothold: Nazmir##51571 |goto 69.38,26.98 |or |only if not completedq(51571) and not completedq(51569)
		accept Foothold: Vol'dun##51572 |goto 69.38,26.98 |or |only if not completedq(51572) and not completedq(51569)
	step
		_Which Zone Did You Choose?_
		|tip Click the line with the name of the zone you chose.
		Zuldazar |confirm |or |next "Zuldazar_Foothold_1"
		Nazmir |confirm |or |next "Nazmir_Foothold_1"
		Vol'dun |confirm |or |next "Voldun_Foothold_1"
		|only if not completedq(51961)
]])



ZygorGuidesViewer:RegisterInclude("Choose_Foothold_2",[[
		accept Foothold: Zuldazar##51570 |goto 69.38,26.98 |or |only if not completedq(51570) and not completedq(51961)
		accept Foothold: Nazmir##51571 |goto 69.38,26.98 |or |only if not completedq(51571) and not completedq(51961)
		accept Foothold: Vol'dun##51572 |goto 69.38,26.98 |or |only if not completedq(51572) and not completedq(51961)
	step
		_Which Zone Did You Choose?_
		|tip Click the line with the name of the zone you chose.
		Zuldazar |confirm |or |next "Zuldazar_Foothold_2" |only if not completedq(51968)
		Nazmir |confirm |or |next "Nazmir_Foothold_2" |only if not completedq(51967)
		Vol'dun |confirm |or |next "Voldun_Foothold_2" |only if not completedq(51969)
		|only if not completedq(52443)
]])



ZygorGuidesViewer:RegisterInclude("Choose_Foothold_3",[[
		accept Foothold: Zuldazar##51570 |goto 69.38,26.98 |or |only if not completedq(51570)
		accept Foothold: Nazmir##51571 |goto 69.38,26.98 |or |only if not completedq(51571)
		accept Foothold: Vol'dun##51572 |goto 69.38,26.98 |or |only if not completedq(51572)
	step
		_Which Zone Did You Choose?_
		|tip Click the line with the name of the zone you chose.
		Zuldazar |confirm |or |next "Zuldazar_Foothold_3" |only if not completedq(51968)
		Nazmir |confirm |or |next "Nazmir_Foothold_3" |only if not completedq(51967)
		Vol'dun |confirm |or |next "Voldun_Foothold_3" |only if not completedq(51969)
]])



ZygorGuidesViewer:RegisterInclude("Zuldazar_Foothold_Quests",[[
		Click the Complete Quest Box:
		turnin Foothold: Zuldazar##51570
	step
		Choose a Foothold |q 51569/1 |goto Boralus/0 69.38,26.98 |only if haveq(51569)
		Choose a Foothold |q 51961/1 |goto Boralus/0 69.38,26.98 |only if haveq(51961)
		Review the Final Foothold |q 52443/1 |goto Boralus/0 69.38,26.98 |only if haveq(52443)
	step
		talk Halford Wyrmbane##135612
		turnin The Zandalar Campaign##51569 |goto 69.27,26.99 |only if haveq(51569)
		turnin The Ongoing Campaign##51961 |goto 69.27,26.99 |only if haveq(51961)
		turnin The Final Foothold##52443 |goto 69.28,26.99 |only if haveq(52443)
		accept Zuldazar Foothold##51308 |goto 69.27,26.99
	step
		talk Halford Wyrmbane##135612
		Ask him _"What's your plan, High Commander?"_
		Watch the dialogue
		Listen to Halford Wyrmbane's Battle Plan |q 51308/1 |goto 69.27,26.99
	step
		talk Grand Admiral Jes-Tereth##135681
		|tip At the top of the ship.
		Tell her _"Set sail for Zuldazar."_
		Speak with Jes-Tereth to Travel to Zuldazar |q 51308/2 |goto 67.95,26.70
	step
		Travel to Zuldazar |goto Zuldazar/0 80.22,55.23 < 10 |noway |c |q 51308
	step
		Follow the path up |goto 78.30,55.45 < 20 |only if walking
		talk Brigadier Thom##136197
		turnin Zuldazar Foothold##51308 |goto 77.54,54.58
		accept The Troll's Tale##51201 |goto 77.54,54.58
	step
		talk Captured Zandalari Troll##143690
		Tell him _"Tell us everything, Zandalari."_
		Watch the dialogue
		Speak with the Captured Zandalari Troll |q 51201/1 |goto 77.50,54.60
	step
		talk Brigadier Thom##136197
		turnin The Troll's Tale##51201 |goto 77.54,54.58
		accept Granting a Reprieve##51190 |goto 77.54,54.58
		accept Disarming the Cannons##51544 |goto 77.54,54.58
	step
		talk Kaolin##138128
		fpath Castaway Encampment |goto 77.66,54.45 |q 51544
	step
		talk Medic Feorea##136195
		accept Save Them All##51191 |goto 77.13,55.54
	step
		talk Degdod##136192
		accept A Lack of Surplus##51192 |goto 77.13,55.60
		accept That One's Mine##51193 |goto 77.13,55.60
	stickystart "Collect_Bundles_Of_Supplies"
	stickystart "Heal_Injured_Sailors"
	stickystart "Slay_Forsaken"
	stickystart "Slay_Zandalari"
	step
		click Rappelling Rope
		Board the Ship |goto 83.29,54.64 < 3 |c |q 51544
	step
		click Cannon
		|tip On the deck of the ship.
		Destroy the Cannon |q 51544/1 |goto 83.34,54.67 |count 1
	step
		click Cannon
		|tip On the deck of the ship.
		Destroy the Cannon |q 51544/1 |goto 83.32,54.47 |count 2
	step
		click Cannon
		|tip On the deck of the ship.
		Destroy the Cannon |q 51544/1 |goto 83.31,54.29 |count 3
	step
		kill Major Alan Hawkins##136906
		|tip He walks around this area.
		collect Degdod's Hammer##159779 |q 51193/1 |goto 81.93,51.33
	step
	label "Collect_Bundles_Of_Supplies"
		click 7th Legion Supply Crate+
		|tip They look like brown wooden boxes on the ground and underwater around this area.
		collect 8 Bundle of Supplies##160249 |q 51192/1 |goto 80.72,52.75
	step
	label "Heal_Injured_Sailors"
		clicknpc Injured Shipwrecked Sailor##136075+
		|tip They look like dead human soldiers on the ground around this area.
		Heal #8# Injured Sailors |q 51191/1 |goto 80.72,52.75
	step
	label "Slay_Forsaken"
		Kill Forsaken enemies around this area
		Slay #8# Forsaken |q 51190/1 |goto 80.72,52.75
	step
	label "Slay_Zandalari"
		Kill Zandalari enemies around this area
		Slay #8# Zandalari |q 51190/2 |goto 80.72,52.75
	step
		Follow the path up |goto 78.30,55.45 < 20 |only if walking
		talk Brigadier Thom##136197
		turnin Granting a Reprieve##51190 |goto 77.54,54.58
		turnin Disarming the Cannons##51544 |goto 77.54,54.58
	step
		talk Medic Feorea##136195
		turnin Save Them All##51191 |goto 77.13,55.54
	step
		talk Degdod##136192
		turnin A Lack of Surplus##51192 |goto 77.13,55.59
		turnin That One's Mine##51193 |goto 77.13,55.59
	step
		Watch the dialogue
		talk Kelsey Steelspark##135620
		accept Xibala##51418 |goto 77.50,55.22
	step
		click Kul Tiran Rowboat
		Take the Rowboat to Xibala |q 51418/1 |goto 80.32,55.39
	step
		Watch the dialogue
		Travel to Xibala |goto 38.32,72.80 < 10 |c |q 51418 |notravel
	step
		talk Paula Waverunner##128041
		fpath Xibala |goto 40.59,71.45 |q 51418
	step
		talk Anvil-Thane Thurgaden##137401
		turnin Xibala##51418 |goto 40.75,70.84
		accept Mole Machinations##51331 |goto 40.75,70.84
		accept Rocks of Ragnaros##51309 |goto 40.75,70.84
	stickystart "Collect_Firelands_Slags"
	step
		click Dark Iron Mole Machine+
		|tip They look like huge drilling machines on the ground around this area.
		Open #4# Dark Iron Mole Machines |q 51331/1 |goto 39.29,73.05
	step
	label "Collect_Firelands_Slags"
		click Firelands Slag+
		|tip They look like small metal lanterns on the ground around this area.
		collect 9 Firelands Slag##159910 |q 51309/1 |goto 39.29,73.05
	step
		talk Anvil-Thane Thurgaden##137401
		turnin Mole Machinations##51331 |goto 40.75,70.84
		turnin Rocks of Ragnaros##51309 |goto 40.75,70.84
		accept Fragment of the Firelands##51359 |goto 40.75,70.84
	step
		clicknpc Unstable Magma##137378
		Stabilize the Magma Elemental |q 51359/1 |goto 40.65,70.88
	step
		Follow the path |goto 38.61,72.41 < 30 |only if walking
		Kill Bilgewater enemies around this area
		|tip Use the abilities on your action bar.
		Slay #200# Bilgewater Goblins |q 51359/2 |goto 36.49,71.64
	step
		Stop Controlling the Magma Elemental |goto 40.65,70.88 < 30 |noway |c |q 51359
		|tip Use the "Dismiss Magma Elemental" ability on your action bar.
	step
		talk Anvil-Thane Thurgaden##137401
		turnin Fragment of the Firelands##51359 |goto 40.75,70.84
	step
		talk Kelsey Steelspark##135620
		accept Champion: Kelsey Steelspark##52003 |goto 40.76,70.67 |instant
	step
		talk Kelsey Steelspark##135620
		accept Return to Boralus##51968 |goto 40.76,70.67
	step
		talk Daria Smithson##143334
		Tell her _"Take us back to Boralus."_
		Speak to Daria Smithson |q 51968/1 |goto 40.46,71.03
	step
		Return to Boralus |goto Boralus/0 70.22,27.06 < 15 |noway |c |q 51968
	step
		talk Halford Wyrmbane##135612
		turnin Return to Boralus##51968 |goto 69.27,27.00
]])



ZygorGuidesViewer:RegisterInclude("Nazmir_Foothold_Quests",[[
		Click the Quest Complete Box:
		turnin Foothold: Nazmir##51571
	step
		Choose a Foothold |q 51569/1 |goto Boralus/0 69.38,26.98 |only if haveq(51569)
		Choose a Foothold |q 51961/1 |goto Boralus/0 69.38,26.98 |only if haveq(51961)
		Review the Final Foothold |q 52443/1 |goto Boralus/0 69.38,26.98 |only if haveq(52443)
	step
		talk Halford Wyrmbane##135612
		turnin The Zandalar Campaign##51569 |goto 69.27,26.99 |only if haveq(51569)
		turnin The Ongoing Campaign##51961 |goto 69.27,26.99 |only if haveq(51961)
		turnin The Final Foothold##52443 |goto 69.28,26.99 |only if haveq(52443)
		accept Heart of Darkness##51088 |goto 69.27,26.99
	step
		talk Grand Admiral Jes-Tereth##135681
		|tip At the top of the ship.
		Tell her _"Set sail for Nazmir."_
		Speak with Jes-Tereth to Travel to Nazmir |q 51088/1 |goto 67.95,26.69
	step
		Watch the dialogue
		Travel Down the Razorjaw River |goto Nazmir/0 61.08,37.72 < 7 |c |q 51088 |notravel
	step
		Watch the dialogue
		Travel to Fort Victory |q 51088/2 |goto 61.95,40.79
	step
		talk Priestess Islara##135082
		home Fort Victory |goto 61.95,40.79 |q 51177 |future
	step
		talk Selina Duskraven##134451
		fpath Fort Victory |goto 62.35,41.38 |q 51088
	step
		talk Brann Bronzebeard##136432
		turnin Heart of Darkness##51088 |goto 62.03,41.60
		accept Dubious Offering##51129 |goto 62.03,41.60
	step
		clicknpc Zalamar Messenger Bat##136457
		Fly the Bat to Zalamar |q 51129/1 |goto 62.12,42.49
	step
		Fly to Zalamar |goto 31.44,47.04 < 7 |c |q 51129 |notravel
	step
		talk Brann Bronzebeard##136641
		|tip Inside the cave.
		turnin Dubious Offering##51129 |goto 31.16,46.71
		accept Blood of Hir'eek##51167 |goto 31.16,46.71
		accept Honoring the Fallen##51150 |goto 31.16,46.71
	stickystart "Recover_Dog_Tags"
	step
		kill Blood Witch Pakkala##136565 |q 51167/1 |goto 29.15,46.58
		|tip Inside the cave.
	step
	label "Recover_Dog_Tags"
		clicknpc Fort Victory Footman##136575+
		|tip They look like dead Alliance soldiers on the ground around this area inside the cave.
		Recover #7# Dog Tags |q 51150/1 |goto 30.42,46.16
	step
		talk Brann Bronzebeard##136641
		|tip Inside the cave.
		turnin Blood of Hir'eek##51167 |goto 31.15,46.71
		turnin Honoring the Fallen##51150 |goto 31.15,46.71
		accept Zealots of Zala'mar##51168 |goto 31.15,46.71
	step
		Follow the path up |goto 31.54,46.11 < 10 |walk
		Kill Zalamar enemies around this area
		|tip Upstairs inside the cave.
		Slay #10# Zalamar Zealots |q 51168/1 |goto 30.71,48.06
	step
		_Next to you:_
		talk Brann Bronzebeard
		turnin Zealots of Zala'mar##51168
		accept Flight from the Fall##51169
	step
		clicknpc Zalamar Messenger Bat##136573
		|tip They look like huge bats hanging upside down on wooden poles around this area inside the cave.
		Fly a Bat to Fort Victory |q 51169/1 |goto 31.04,47.98
	step
		Return to Fort Victory |goto 62.16,42.49 < 10 |c |q 51169 |notravel
	step
		talk Brann Bronzebeard##136432
		turnin Flight from the Fall##51169 |goto 62.03,41.60
		accept Zul'Nazman##51281 |goto 62.03,41.60
	step
		Follow the path down |goto 55.50,45.78 < 20 |only if walking
		talk Brann Bronzebeard##136675
		turnin Zul'Nazman##51281 |goto 49.97,50.90
		accept Nazmani Cultists##51279 |goto 49.97,50.90
		accept Offerings to G'huun##51280 |goto 49.97,50.90
	stickystart "Slay_Nazmani_Trolls"
	step
		click Offering to G'huun+
		|tip They look like red and grey vases with red mist bubbling out of the top of them inside the buildings around this area.
		Destroy #8# Offerings to G'huun |q 51280/1 |goto 48.62,52.58
	step
	label "Slay_Nazmani_Trolls"
		Kill Nazmani enemies around this area
		Slay #15# Nazmani Trolls |q 51279/1 |goto 48.62,52.58
	step
		Cross the bridge |goto 45.99,56.50 < 15 |only if walking
		talk Brann Bronzebeard##136675
		turnin Nazmani Cultists##51279 |goto 45.71,57.46
		turnin Offerings to G'huun##51280 |goto 45.71,57.46
		accept Captain Conrad##51282 |goto 45.71,57.46
	step
		Run up the ramp |goto 44.96,58.54 < 10 |only if walking
		talk Captain Conrad##136568
		|tip Inside the building.
		turnin Captain Conrad##51282 |goto 45.00,57.15
		accept Lessons of the Damned##51177 |goto 45.00,57.15
	step
		Watch the dialogue
		|tip Follow Captain Conrad as she walks.
		Follow Captain Conrad |q 51177/1 |goto 45.70,59.73
	step
		kill Captain Conrad##136568 |q 51177/2 |goto 45.70,59.74
	step
		talk Brann Bronzebeard##136432
		turnin Lessons of the Damned##51177 |goto 62.03,41.59
	step
		talk John J. Keeshan##139609
		accept Champion: John J. Keeshan##52013 |goto 61.78,41.32
	step
		talk Brann Bronzebeard##136432
		accept Return to Boralus##51967 |goto 62.03,41.60
	step
		talk Desha Stormwallow##139620
		Tell her _"Take us back to Boralus."_
		Speak to Desha Stormwallow |q 51967/1 |goto 62.06,40.07
	step
		Return to Boralus |goto Boralus/0 70.22,27.06 < 10 |noway |c |q 51967
	step
		talk Halford Wyrmbane##135612
		turnin Return to Boralus##51967 |goto 69.27,27.00
]])



ZygorGuidesViewer:RegisterInclude("Voldun_Foothold_Quests",[[
		Click the Quest Complete Box:
		turnin Foothold: Vol'dun##51572
	step
		Choose a Foothold |q 51569/1 |goto Boralus/0 69.38,26.98 |only if haveq(51569)
		Choose a Foothold |q 51961/1 |goto Boralus/0 69.38,26.98 |only if haveq(51961)
		Review the Final Foothold |q 52443/1 |goto Boralus/0 69.38,26.98 |only if haveq(52443)
	step
		talk Halford Wyrmbane##135612
		turnin The Zandalar Campaign##51569 |goto 69.27,26.99 |only if haveq(51569)
		turnin The Ongoing Campaign##51961 |goto 69.27,26.99 |only if haveq(51961)
		turnin The Final Foothold##52443 |goto 69.28,26.99 |only if haveq(52443)
		accept Voyage to the West##51283 |goto 69.27,26.99
	step
		talk Grand Admiral Jes-Tereth##135681
		|tip At the top of the ship.
		Tell her _"Set sail for Vol'dun."_
		Speak with Jes-Tereth to Sail to Vol'dun |q 51283/1 |goto 67.95,26.71
	step
		Travel to Vol'dun |goto Vol'dun/0 32.86,34.90 < 7 |noway |c |q 51283
	step
		talk Halford Wyrmbane##137867
		turnin Voyage to the West##51283 |goto Vol'dun/0 32.91,34.86
		accept Ooh Rah!##51170 |goto Vol'dun/0 32.91,34.86
	step
		click Rope Coil
		Board the Landing Craft |q 51170/1 |goto 32.99,34.87
	step
		Watch the dialogue
		Ride the Boat to Shore |goto 35.28,33.16 < 7 |c |q 51170 |notravel
	step
		Kill Sethrak enemies around this area
		|tip Use the "Flare Gun" ability on them.
		|tip It appears as a button on the screen.
		Slay #15# Sethrak Forces |q 51170/2 |goto 37.50,33.08
	step
		Enter the building |goto 39.40,35.66 < 10 |walk
		talk Sergeant Ermey##137008
		|tip Inside the building.
		turnin Ooh Rah!##51170 |goto 39.65,35.69
		accept Establish a Beachhead##51229 |goto 39.65,35.69
	step
		click Alliance Banner
		Plant the Alliance Banner |q 51229/1 |goto 37.55,35.32
	step
		talk Halford Wyrmbane##137213
		turnin Establish a Beachhead##51229 |goto 37.71,35.83
		accept Honor Bound##51349 |goto 37.71,35.83
	step
		talk Barnard "The Smasher" Baysworth##135383
		fpath Shatterstone Harbor |goto 36.68,34.28 |q 51349
	step
		Follow the path |goto 36.69,36.60 < 20 |only if walking
		talk Sergeant Ermey##137337
		turnin Honor Bound##51349 |goto 38.96,42.92
		accept Unexpected Aid##51350 |goto 38.96,42.92
		accept Poisoned Barbs##51351 |goto 38.96,42.92
	stickystart "Collect_Saltspine_Barbs"
	step
		click Prickly Pear##288646+
		|tip They look like green plants with white flower bulbs on them on the ground around this area.
		collect 8 Prickly Pear Root##160044 |q 51350/1 |goto 40.63,42.15
	step
	label "Collect_Saltspine_Barbs"
		kill Saltspine Krolusk##136553+
		collect 8 Saltspine Barb##159958 |q 51351/1 |goto 40.63,42.15
	step
		talk Sergeant Ermey##137337
		turnin Unexpected Aid##51350 |goto 38.96,42.93
		turnin Poisoned Barbs##51351 |goto 38.96,42.93
		accept Antidote Application##51366 |goto 38.96,42.93
	step
		use the Antidote Salve##160045
		|tip Use it on Vorrik.
		Apply the Antidote Salve |q 51366/1 |goto 38.96,42.98
	step
		Watch the dialogue
		talk Vorrik##137434
		turnin Antidote Application##51366 |goto 38.96,42.98
		accept Friends in Strange Places##51369 |goto 38.96,42.98
	step
		Watch the dialogue
		clicknpc Tamed Pterrordax##137501
		Mount the Pterrordax |q 51369/1 |goto 39.08,43.07
	step
		Watch the dialogue
		Fly to the Sanctuary of the Devoted |q 51369/2 |goto 27.24,54.18 |notravel
	step
		talk Vorrik##137537
		turnin Friends in Strange Places##51369 |goto 27.22,53.93
		accept Defang the Faithless##51391 |goto 27.22,53.93
		accept Break the Siege##51394 |goto 27.22,53.93
	step
		talk Sergeant Ermey##137543
		accept Breaking Free##51389 |goto 27.18,53.91
	step
		talk Vethiss##128695
		fpath Sanctuary of the Devoted |goto 27.65,50.33 |q 51389
	stickystart "Burn_Banners"
	stickystart "Crush_Cannons"
	stickystart "Shatter_Spires"
	stickystart "Slay_Faithless"
	step
		click Sethrak Cage
		Rescue Private James |q 51389/1 |goto 30.07,53.62
	step
	label "Burn_Banners"
		click Sethrak War Banner+
		|tip They look like metal poles with 2 red flags hanging from them on the ground around this area.
		|tip They will appear on your minimap as yellow dots.
		Burn #4# Banners |q 51394/1 |goto 29.57,53.15
	step
	label "Crush_Cannons"
		click Sethrak Cannon+
		|tip They look like metal snake cannons on the ground around this area.
		|tip They will appear on your minimap as yellow dots.
		Crush #4# Cannons |q 51394/2 |goto 29.57,53.15
	step
	label "Shatter_Spires"
		click Sethrak Spire+
		|tip They look like tall pointed stone statues getting struck by lightning on the ground around this area.
		|tip They will appear on your minimap as yellow dots.
		Shatter #2# Spires |q 51394/3 |goto 29.57,53.15
	step
	label "Slay_Faithless"
		Kill Faithless enemies around this area
		Slay #12# Faithless |q 51391/1 |goto 29.57,53.15
	step
		Run up the stairs |goto 28.82,54.04 < 15 |only if walking
		Enter the building |goto 27.22,53.72 < 15 |walk
		talk Private James##137559
		|tip Inside the building.
		turnin Breaking Free##51389 |goto 27.56,52.61
	step
		talk Vorrik##129519
		|tip Inside the building.
		turnin Defang the Faithless##51391 |goto 27.61,52.57
		turnin Break the Siege##51394 |goto 27.61,52.57
		accept The Keepers' Keys##51395 |goto 27.61,52.57
	step
		talk Private James##137559
		|tip Inside the building.
		Ask him _"Is there anything in your pockets?"_
		Speak to Private James |q 51395/1 |goto 27.56,52.62
	step
		Watch the dialogue
		Begin Following Vorrik |goto 27.56,52.62 > 10 |c |q 51395
	step
		Watch the dialogue
		|tip Follow Vorrik as he walks.
		|tip He goes upstairs.
		Follow Vorrik |q 51395/2 |goto 27.12,52.57
	step
		talk Vorrik##128694
		|tip Upstairs inside the building.
		turnin The Keepers' Keys##51395 |goto 27.12,52.56
	step
		talk Sergeant Ermey##137543
		|tip Upstairs inside the building.
		accept Reporting In##51402 |goto 27.02,52.50
	step
		Run down the stairs |goto 26.56,51.96 < 10 |only if walking
		talk Halford Wyrmbane##137213
		turnin Reporting In##51402 |goto 37.71,35.83
	step
		talk Magister Umbric##139568
		accept Champion: Magister Umbric##52008 |goto 37.47,35.84 |instant
	step
		talk Halford Wyrmbane##137213
		accept Return to Boralus##51969 |goto 37.71,35.83
	step
		talk Grand Admiral Jes-Tereth##135681
		|tip At the top of the ship.
		Tell her _"Take us back to Boralus."_
		Speak to Jes-Tereth |q 51969/1 |goto 34.91,33.76
	step
		Return to Boralus |goto Boralus/0 70.22,27.06 < 10 |noway |c |q 51969
	step
		talk Halford Wyrmbane##135612
		turnin Return to Boralus##51969 |goto Boralus/0 69.27,26.99
]])