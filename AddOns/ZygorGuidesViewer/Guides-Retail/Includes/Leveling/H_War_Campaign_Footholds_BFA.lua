if UnitFactionGroup("player")~="Horde" then return end
local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end



--------------------------------------------
----- BFA WAR CAMPAIGN FOOTHOLD QUESTS -----
--------------------------------------------

ZygorGuidesViewer:RegisterInclude("Choose_Foothold_1",[[
		accept Foothold: Tiragarde Sound##51800 |goto Zuldazar/0 58.44,62.62 |or |only if not completedq(51800) and not completedq(51803)
		accept Foothold: Drustvar##51801 |goto Zuldazar/0 58.44,62.62 |or |only if not completedq(51801) and not completedq(51803)
		accept Foothold: Stormsong Valley##51802 |goto Zuldazar/0 58.44,62.62 |or |only if not completedq(51802) and not completedq(51803)
	step
		Tiragarde Sound |complete haveq(51800) and not completedq(51984) |or |next "Tiragarde_Sound_Foothold_1"
		Drustvar |complete haveq(51801) and not completedq(51985) |or |next "Drustvar_Foothold_1"
		Stormsong Valley |complete haveq(51802) and not completedq(51986) |or |next "Stormsong_Valley_Foothold_1"
		|only if not completedq(51979)
]])



ZygorGuidesViewer:RegisterInclude("Choose_Foothold_2",[[
		accept Foothold: Tiragarde Sound##51800 |goto Zuldazar/0 58.44,62.62 |or |only if not completedq(51800) and not completedq(51979)
		accept Foothold: Drustvar##51801 |goto Zuldazar/0 58.44,62.62 |or |only if not completedq(51801) and not completedq(51979)
		accept Foothold: Stormsong Valley##51802 |goto Zuldazar/0 58.44,62.62 |or |only if not completedq(51802) and not completedq(51979)
	step
		Tiragarde Sound |complete haveq(51800) and not completedq(51984) |or |next "Tiragarde_Sound_Foothold_2" |only if not completedq(51984)
		Drustvar |complete haveq(51801) and not completedq(51985) |or |next "Drustvar_Foothold_2" |only if not completedq(51985)
		Stormsong Valley |complete haveq(51802) and not completedq(51986) |or |next "Stormsong_Valley_Foothold_2" |only if not completedq(51986)
		|only if not completedq(52444)
]])



ZygorGuidesViewer:RegisterInclude("Choose_Foothold_3",[[
		accept Foothold: Tiragarde Sound##51800 |goto Zuldazar/0 58.44,62.62 |or |only if not completedq(51800)
		accept Foothold: Drustvar##51801 |goto Zuldazar/0 58.44,62.62 |or |only if not completedq(51801)
		accept Foothold: Stormsong Valley##51802 |goto Zuldazar/0 58.44,62.62 |or |only if not completedq(51802)
	step
		Tiragarde Sound |complete haveq(51800) and not completedq(51984) |or |next "Tiragarde_Sound_Foothold_3" |only if not completedq(51984)
		Drustvar |complete haveq(51801) and not completedq(51985) |or |next "Drustvar_Foothold_3" |only if not completedq(51985)
		Stormsong Valley |complete haveq(51802) and not completedq(51986) |or |next "Stormsong_Valley_Foothold_3" |only if not completedq(51986)
]])



ZygorGuidesViewer:RegisterInclude("Tiragarde_Sound_Foothold_Quests",[[
		_Click the Complete Quest Box:_
		|tip In the quest tracker area.
		turnin Foothold: Tiragarde Sound##51800
	step
		Choose a Foothold |q 51803/2 |goto Zuldazar/0 58.44,62.62 |only if haveq (51803)
		Choose a Foothold |q 51979/1 |goto Zuldazar/0 58.44,62.62 |only if haveq (51979)
		Review the Final Foothold |q 52444/1 |goto Zuldazar/0 58.44,62.62 |only if haveq (52444)
	step
		talk Nathanos Blightcaller##135691
		turnin The Kul Tiras Campaign##51803 |goto 58.44,62.67 |only if haveq(51803)
		turnin The Ongoing Campaign##51979 |goto 58.44,62.67 |only if haveq(51979)
		turnin The Final Foothold##52444 |goto 58.44,62.67 |only if haveq(52444)
		accept Shiver Me Timbers##51421 |goto 58.44,62.67
	step
		talk Dread-Admiral Tattersail##135690
		|tip At the top of the ship.
		Tell her _"Set sail for Tiragarde Sound."_
		Speak with Tattersail to Sail to to Tiragarde Sound |q 51421/1 |goto 58.46,62.99
	step
		Travel to Tiragarde Sound |complete zone("goto Tiragarde Sound") |q 51421
	step
		talk Shadow Hunter Ty'jin##137675
		turnin Shiver Me Timbers##51421 |goto Tiragarde Sound/0 89.34,53.39
		accept Swashbuckling in Style##51435 |goto Tiragarde Sound/0 89.34,53.39
	step
		click Pirate Garb
		Acquire Pirate Garb |q 51435/1 |goto 89.45,53.67
	step
		talk Shadow Hunter Ty'jin##137675
		turnin Swashbuckling in Style##51435 |goto 89.34,53.38
		accept Parleyin' Wit Pirates##51436 |goto 89.34,53.38
	step
		click Canoe Rope##291139
		Begin Riding the Boat to Shore |invehicle |goto 89.33,53.35 |q 51436
	step
		Watch the dialogue
		Use the Mala's Fortune Rope |q 51436/1 |goto 88.22,51.17
	step
		talk Shadow Hunter Ty'jin##137675
		Tell him _"I'm ready to parley, Ty'jin."_
		Begin Following Shadow Hunter Ty'jin |goto 88.21,51.11 > 7 |c |q 51436
	step
		Watch the dialogue
		|tip Follow Shadow Hunter Ty'jin as he walks.
		|tip He eventually walks to this location.
		|tip Inside the building.
		Walk with Ty'jin |q 51436/2 |goto 87.28,50.02
	step
		talk First Mate Owings##137727
		|tip Inside the building.
		turnin Parleyin' Wit Pirates##51436 |goto 87.31,49.98
		accept Spike the Punch##51437 |goto 87.31,49.98
	step
		talk Shadow Hunter Ty'jin##137742
		|tip Inside the building.
		accept Cannonball Collection##51439 |goto 87.28,50.01
	stickystart "Collect_Fogsail_Cannonballs"
	step
		click Keg of Grog##289675+
		|tip They look like brown barrels on the ground around this area.
		Spike #6# Kegs of Grog |q 51437/1 |goto 87.55,50.59
	step
	label "Collect_Fogsail_Cannonballs"
		kill Fogsail Cannoneer##138430+
		collect 3 Fogsail Cannonball##160260 |q 51439/1 |goto 87.55,50.59
	step
		talk Shadow Hunter Ty'jin##137742
		|tip Inside the building.
		turnin Cannonball Collection##51439 |goto 87.28,50.01
	step
		talk First Mate Owings##137727
		|tip Inside the building.
		turnin Spike the Punch##51437 |goto 87.31,49.99
		accept A Change in Direction##51440 |goto 87.31,49.99
	step
		talk Shadow Hunter Ty'jin##137742
		|tip Inside the building.
		accept Thar She Blows!##51441 |goto 87.28,50.01
	stickystart "Sink_Fogsail_Rowboats"
	step
		talk Navigator Swink##137807
		|tip Outside on the dock, next to the water..
		Tell him _"Orders from the captain, sir. He has decided against siding with the Ashvanes!"_
		Watch the dialogue
		kill Navigator Swink##137807
		Order Navigator Swink |q 51440/3 |goto 87.28,49.57
	step
		talk Boatswain Taryn##137798
		|tip Up on the ship deck.
		Tell her _"Got some new orders from the captain for you, boatswain."_
		Watch the dialogue
		kill Boatswain Taryn##137798
		Order Boatswain Taryn |q 51440/1 |goto 87.85,50.08
	step
		talk Quartermaster Killian##137800
		Tell him _"We're saying no to the Ashvane. Here are orders from the captain."_
		Watch the dialogue
		Order Quartermaster Killian |q 51440/2 |goto 87.00,52.01
	step
	label "Sink_Fogsail_Rowboats"
		use the Goblin-Engineered Hand Cannon##160405
		|tip Use it on Fogsail Rowboats in the water around this area.
		|tip They look like wooden boats moving with pirates on them in the water around this area.
		Sink #3# Fogsail Rowboats |q 51441/1 |goto 88.19,50.75
	step
		talk Shadow Hunter Ty'jin##137742
		|tip Inside the building.
		turnin Thar She Blows!##51441 |goto 87.28,50.01
	step
		talk First Mate Owings##137727
		|tip Inside the building.
		turnin A Change in Direction##51440 |goto 87.31,49.99
		accept I'm the Captain Now##51442 |goto 87.31,49.99
	step
		Enter the cave |goto 87.05,52.84 < 10 |only if walking
		kill Captain Rhenik##137776 |q 51442/1 |goto 86.91,53.17
		|tip Inside the cave.
	step
		talk First Mate Owings##137727
		|tip Inside the building.
		turnin I'm the Captain Now##51442 |goto 87.31,49.99
	step
		talk Shadow Hunter Ty'jin##137742
		|tip Inside the building.
		accept Marking our Territory##51438 |goto 87.28,50.01
	step
		click Horde Banner##292390
		Plant the Horde Banner |q 51438/1 |goto 87.46,50.41
	step
		talk Skrash##138265
		fpath Plunder Harbor |goto 87.28,50.66
	step
		talk Shadow Hunter Ty'jin##137742
		|tip Inside the building.
		turnin Marking our Territory##51438 |goto 87.28,50.01
		accept Champion: Shadow Hunter Ty'jin##51975 |goto 87.28,50.01 |instant
		accept Return to Zuldazar##51984 |goto 87.28,50.01
	step
		talk Erul Dawnbrook##139524
		Tell him _"Take us back to Zuldazar."_
		Speak to Erul Dawnbrook |q 51984/1 |goto 87.84,51.18
	step
		Return to Zuldazar |complete zone("Zuldazar") |q 51438
	step
		talk Nathanos Blightcaller##135691
		turnin Return to Zuldazar##51984 |goto Zuldazar/0 58.44,62.67
]])



ZygorGuidesViewer:RegisterInclude("Drustvar_Foothold_Quests",[[
		_Click the Complete Quest Box:_
		|tip In the quest tracker area.
		turnin Foothold: Drustvar##51801
	step
		Choose a Foothold |q 51803/2 |goto Zuldazar/0 58.44,62.62 |only if haveq (51803)
		Choose a Foothold |q 51979/1 |goto Zuldazar/0 58.44,62.62 |only if haveq (51979)
		Review the Final Foothold |q 52444/1 |goto Zuldazar/0 58.44,62.62 |only if haveq (52444)
	step
		talk Nathanos Blightcaller##135691
		turnin The Kul Tiras Campaign##51803 |goto 58.44,62.67 |only if haveq(51803)
		turnin The Ongoing Campaign##51979 |goto 58.44,62.67 |only if haveq(51979)
		turnin The Final Foothold##52444 |goto 58.44,62.67 |only if haveq(52444)
		accept A Trip Across the Ocean##51332 |goto 58.44,62.67
	step
		talk Trade Prince Gallywix##136683
		|tip Downstairs inside the ship.
		turnin A Trip Across the Ocean##51332 |goto 58.45,62.65
		accept Drustvar Ho!##51340 |goto 58.45,62.65
	step
		talk Eitrigg##136725
		|tip On the deck of the ship.
		Tell him _"Yes, I'm ready to go to Drustvar."_
		Speak with Eitrigg |q 51340/1 |goto 58.55,62.72
	step
		talk Dread-Admiral Tattersail##135690
		|tip At the top of the ship.
		Tell her _"Set sail for Drustvar."_
		Speak with Tattersail to Sail to Drustvar |q 51340/2 |goto 58.46,62.99
	step
		Travel to Drustvar |complete zone("Drustvar") |q 51340
	step
		talk Eitrigg##136725
		turnin Drustvar Ho!##51340 |goto Drustvar/0 20.79,43.85
		accept Profit and Reconnaissance##51224 |goto Drustvar/0 20.79,43.85
	step
		talk Tan Lotuswind##135988
		|tip At the top of the tower.
		fpath Anyport |goto 19.14,43.31 |q 51224
	step
		clicknpc Gallywix's War Trike##136723
		Ride with Gallywix |invehicle |goto 20.72,43.73 |q 51224
	step
		clicknpc Bilgewater Azerite Drudge##137079
		|tip At the top of the cliff.
		|tip Follow the path up and out of Anyport.
		Watch the dialogue
		Search for a Goblin Scout |q 51224/1 |goto 22.28,46.29
	step
		clicknpc Gallywix's War Trike##137090
		|tip Nearby, where you got out.
		Ride with Gallywix |invehicle |goto 22.28,46.29 |q 51224
	step
		clicknpc Bilgewater Azerite Drudge##137079
		Watch the dialogue
		kill Wildwood Slaverer##137362
		Search Deeper Into the Woods |q 51224/2 |goto 25.45,46.32
	step
		clicknpc Gallywix's War Trike##137090
		|tip Nearby, where you got out.
		Ride with Gallywix |invehicle |goto 25.45,46.32 |q 51224
	step
		clicknpc Bilgewater Azerite Drudge##137079
		Watch the dialogue
		Find Another Goblin Scout |q 51224/3 |goto 29.46,54.83
	step
		clicknpc Gallywix's War Trike##137090
		|tip Nearby, where you got out.
		Ride with Gallywix |invehicle |goto 29.46,54.83 |q 51224
	step
		Find the Final Goblin Scout |q 51224/4 |goto 32.26,54.27
	step
		Stop Riding with Gallywix |outvehicle |goto 32.33,54.63 |q 51224
		|tip You will exit the vehicle automatically.
	step
		talk Eitrigg##136725
		turnin Profit and Reconnaissance##51224 |goto 32.33,54.57
		accept Wiccaphobia##51231 |goto 32.33,54.57
	step
		Watch the dialogue
		Kill the enemies that attack in waves
		kill Sister Redweather##136715
		Protect Eitrigg and Gallywix |q 51231/1 |goto 32.30,54.57
	step
		talk Eitrigg##136725
		turnin Wiccaphobia##51231 |goto 32.33,54.57
	step
		talk Trade Prince Gallywix##136683
		accept I Hope There's No Witches In The Mountains##51233 |goto 32.36,54.60
	step
		clicknpc Gallywix's War Trike##136723
		Ride with Gallywix |invehicle |goto 32.32,54.76 |q 51233
	step
		talk Hobart Grapplehammer##137613
		Tell him _"Your friends were all tortured and killed by witches."_
		Drive Eitrigg and Gallywix to the Mountains |q 51233/1 |goto 33.58,37.88
	step
		Follow the path up the mountain |goto 37.65,32.48 < 30 |only if walking and not subzone("Krazzlefrazz Outpost")
		Watch the dialogue
		Bring Eitrigg and Gallywix to Krazzlefrazz Outpost |q 51233/2 |goto 37.19,27.45
	step
		Stop Riding with Gallywix |outvehicle |goto 37.27,27.27 |q 51233
		|tip You will exit the vehicle automatically.
	step
		talk Eitrigg##136725
		turnin I Hope There's No Witches In The Mountains##51233 |goto 37.23,27.20
	step
		talk Hobart Grapplehammer##137613
		accept Krazzlefrazz Outpost##51234 |goto 36.90,27.11
	step
		click Kyanite-Laser Embiggener
		|tip You will gain the "Kyanite-Laser Embiggener" ability.
		|tip Use the "Kyanite-Laser Embiggener" ability.
		|tip It appears as a button on the screen.
		Watch the dialogue
		Construct the Supply Hut |q 51234/1 |goto 36.80,26.36
		|tip You will be attacked.
	step
		click Boom Button
		Construct the Engineering Works |q 51234/2 |goto 36.74,25.13
	step
		clicknpc Wormhole##137397
		Choose _<Reach inside and pull something out.>_
		kill Interdimensional Abomination##137454
		clicknpc Wormhole##137397
		Choose _<Reach inside and pull out something that feels more like a building.>_
		Construct the Inn |q 51234/4 |goto 37.63,25.50
	step
		click Plunger##288630
		Watch the dialogue
		Construct the Fishing Hut |q 51234/3 |goto 37.75,24.62
	step
		talk Trade Prince Gallywix##136683
		turnin Krazzlefrazz Outpost##51234 |goto 37.18,27.18
	step
		talk Hobart Grapplehammer##137613
		accept Champion: Hobart Grapplehammer##51987 |goto 36.90,27.11 |instant
	step
		talk Trade Prince Gallywix##136683
		accept Return to Zuldazar##51985 |goto 37.18,27.18
	step
		talk Rixi Rocketboom##138022
		fpath Krazzlefrazz Outpost |goto 37.37,24.04 |q 51985
	step
		talk Swellthrasher##139519
		Tell her _"Take us back to Zuldazar."_
		Speak to Swellthrasher in Anyport |q 51985/1 |goto 20.60,43.35
	step
		Return to Zuldazar |complete zone("Zuldazar") |q 51985
	step
		talk Nathanos Blightcaller##135691
		turnin Return to Zuldazar##51985 |goto Zuldazar/0 58.44,62.67
]])



ZygorGuidesViewer:RegisterInclude("Stormsong_Valley_Foothold_Quests",[[
		_Click the Complete Quest Box:_
		|tip In the quest tracker area.
		turnin Foothold: Stormsong Valley##51802
	step
		Choose a Foothold |q 51803/2 |goto Zuldazar/0 58.44,62.62 |only if haveq (51803)
		Choose a Foothold |q 51979/1 |goto Zuldazar/0 58.44,62.62 |only if haveq (51979)
		Review the Final Foothold |q 52444/1 |goto Zuldazar/0 58.44,62.62 |only if haveq (52444)
	step
		talk Nathanos Blightcaller##135691
		turnin The Kul Tiras Campaign##51803 |goto 58.44,62.67 |only if haveq(51803)
		turnin The Ongoing Campaign##51979 |goto 58.44,62.67 |only if haveq(51979)
		turnin The Final Foothold##52444 |goto 58.44,62.67 |only if haveq(52444)
		accept The Warlord's Call##51526 |goto 58.44,62.67
	step
		talk High Warlord Cromush##138352
		turnin The Warlord's Call##51526 |goto 58.54,62.49
		accept Storming In##51532 |goto 58.54,62.49
	step
		talk Dread-Admiral Tattersail##135690
		|tip At the top of the ship.
		Tell her _"Set sail for Stormsong Valley."_
		Speak with Tattersail to Sail to Stormsong Valley |q 51532/1 |goto 58.46,62.99
	step
		Travel to Stormsong Valley |complete zone("Stormsong Valley") |q 51532
	step
		talk High Warlord Cromush##138365
		turnin Storming In##51532 |goto Stormsong Valley/0 51.10,21.15
		accept A Wall of Iron##51643 |goto Stormsong Valley/0 51.10,21.15
	step
		clicknpc Banshee's Wail Cannon##138312
		|tip Downstairs inside the ship.
		Man the Cannon |q 51643/1 |goto 51.18,21.12
	step
		Kill enemies around this area
		|tip Use the ability on your action bar.
		Slay #40# Kul Tiran Forces |q 51643/2
	step
		talk High Warlord Cromush##138365
		|tip Upstairs on the deck of the ship.
		turnin A Wall of Iron##51643 |goto 51.10,21.15
		accept On the Hunt##51536 |goto 51.10,21.15
	step
		click Rope Coil
		Board the Landing Craft |q 51536/1 |goto 51.00,21.24
	step
		clicknpc Huelo##138137
		Choose _Pull the harpoon free._
		Investigate Seawatch Point |q 51536/2 |goto 50.38,26.19
	step
		Watch the dialogue
		talk Rexxar##138131
		turnin On the Hunt##51536 |goto 50.41,26.17
		accept Onward!##51587 |goto 50.41,26.17
	step
		Watch the dialogue
		|tip Follow Rexxar as he runs.
		|tip He eventually runs to this location.
		Travel with Rexxar |q 51587/1 |goto 51.99,30.20
	step
		talk Centurion Kaga Warmstone##138688
		turnin Onward!##51587 |goto 51.66,29.83
		accept Hunt Them Down##51675 |goto 51.66,29.83
		accept Almost Worth Saving##51691 |goto 51.66,29.83
	step
		talk Rexxar##138677
		accept Douse the Flames##51674 |goto 51.68,29.89
	stickystart "Douse_Flames"
	stickystart "Rescue_Frightened_Peons"
	stickystart "Kill_Storms_Wake_Footmen"
	step
		kill Captain Ara##137910 |q 51675/1 |goto 51.75,33.54
		|tip At the entrance of the building.
	step
	label "Douse_Flames"
		kill Storm's Wake Tidesage##137894+
		collect Fading Umbral Wand##160565 |n
		use Fading Umbral Wand##160565+
		|tip Use them on the fires on buildings around this area.
		Douse #5# Flames |q 51674/1 |goto 50.74,32.16
	step
	label "Rescue_Frightened_Peons"
		clicknpc Frightened Peon##137922+
		|tip They look like friendly Orcs cowering on the ground around this area.
		Rescue #6# Frightened Peons |q 51691/1 |goto 50.74,32.16
	step
	label "Kill_Storms_Wake_Footmen"
		kill 12 Storm's Wake Footman##137893 |q 51675/2 |goto 50.74,32.16
	step
		talk Centurion Kaga Warmstone##138869
		turnin Hunt Them Down##51675 |goto 49.19,34.21
		turnin Almost Worth Saving##51691 |goto 49.19,34.21
	step
		talk Rexxar##138867
		turnin Douse the Flames##51674 |goto 49.25,34.26
		accept Reclaiming What's Ours##51696 |goto 49.25,34.26
	step
		click Warhorn of the Hold
		|tip At the top of the tower.
		Sound the Warhorn of the Hold |q 51696/1 |goto 49.59,34.78
	step
		talk Rexxar##138876
		|tip Inside the building.
		turnin Reclaiming What's Ours##51696 |goto 52.12,33.66
		accept Champion: Rexxar##51753 |goto 52.12,33.66 |instant
		accept Return to Zuldazar##51986 |goto 52.12,33.66
	step
		talk Muka Stormbreaker##138097
		fpath Warfang Hold |goto 51.43,33.74 |q 51986
	step
		talk Muka Stormbreaker##138097
		Tell her _"Take us back to Zuldazar."_
		Speak to Muka Stormbreaker |q 51986/1 |goto 51.43,33.74
	step
		Return to Zuldazar |complete zone("Zuldazar") |q 51986
	step
		talk Nathanos Blightcaller##135691
		turnin Return to Zuldazar##51986 |goto Zuldazar/0 58.44,62.67
]])