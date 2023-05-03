local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end

--------------------------------------------------------------------------------------------------------------------------------------
-- Quest Includes
--------------------------------------------------------------------------------------------------------------------------------------

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("FrenzyheartPreQuests",[[
	step
		talk Tamara Wobblesprocket##28568
		accept The Part-time Hunter##12654 |goto Sholazar Basin 50.5,62.1
	step
		kill Pitch##28097
		collect Pitch's Remains##38703 |q 12654/1 |goto 50.5,77.3
	step
		talk Tracker Gekgek##28095
		accept Playing Along##12528 |goto 50.5,76.6
	step
		talk High-Shaman Rakjak##28082
		turnin Playing Along##12528 |goto 55,69.1
		accept The Ape Hunter's Slave##12529 |goto 55,69.1
	step
		Talk to Goregek the Gorilla Hunter who is following you
		accept Tormenting the Softknuckles##12530
	step
		kill 8 Hardknuckle Forager |q 12529/1 |goto 57.5,73.3
	step
		kill 6 Hardknuckle Charger |q 12529/2 |goto 61.1,71.7
	step
		Use your Softknuckle Poker on Softknuckles |use Softknuckle Poker##38467 
		|tip Softknuckles are baby gorillas.
		A Hardknuckle Matriarch will spawn eventually
		kill 1 Hardknuckle Matriarch |q 12530/1 |goto 66.9,73.2
	step
		talk High-Shaman Rakjak##28082
		turnin The Ape Hunter's Slave##12529 |goto 55,69.1
		turnin Tormenting the Softknuckles##12530 |goto 55,69.1
		accept The Wasp Hunter's Apprentice##12533 |goto 55,69.1
	step		
		talk Elder Harkek##28138
		accept The Sapphire Queen##12534 |goto 55.5,69.7
	step		
		kill 6 Sapphire Hive Wasp |q 12533/1 |goto 59.6,75.8
		kill 9 Sapphire Hive Drone |q 12533/2 |goto 59.6,75.8
	step
		Follow the path _down_ |goto 59.4,79.1 < 5 |only if walking
		Continue _down_ the path |goto 57.1,79.3 < 5 |only if walking
		kill Sapphire Hive Queen##28087
		collect Stinger of the Sapphire Queen##38477 |q 12534/1
	step
		Follow the path _up_ |goto 55.0,69.1 |only if walking
		talk High-Shaman Rakjak##28082
		turnin The Wasp Hunter's Apprentice##12533
		turnin The Sapphire Queen##12534
	step		
		talk Elder Harkek##28138
		accept Flown the Coop!##12532 |goto 55.5,69.7
	step
		They are all around the village
		Click the Chicken Escapees
		collect 12 Captured Chicken##38483 |q 12532/1
	step
		talk Elder Harkek##28138
		turnin Flown the Coop!##12532 |goto 55.5,69.7
		accept The Underground Menace##12531 |goto 55.5,69.7
	step		
		talk High-Shaman Rakjak##28082
		accept Mischief in the Making##12535 |goto 55,69.1
	step
		Click the Skyreach Crystal Formations 
		|tip They look like white crystal cluster on the ground along the river bank.
		collect 8 Skyreach Crystal Cluster##38504 |q 12535/1 |goto 56.6,84.6
	step
		kill Serfex the Reaver##28083
		collect Claw of Serfex##38473 |q 12531/1 |goto 49.8,85
	step		
		talk High-Shaman Rakjak##28082
		turnin The Underground Menace##12531 |goto 55,69.1
		turnin Mischief in the Making##12535 |goto 55,69.1
		accept A Rough Ride##12536 |goto 55,69.1
	step
		talk Captive Crocolisk##28298
		Tell him let's do this
		Travel to Mistwhisper Refuge |q 12536/1 |goto 57.3,68.4
	step
		When you jump off the crocodile:
		talk Zepik the Gorloc Hunter##28668
		turnin A Rough Ride##12536
		accept Lightning Definitely Strikes Twice##12537
		accept The Mist Isn't Listening##12538
	step
		Use your Skyreach Crystal Clusters next to the stone monument |use Skyreach Crystal Clusters##38510
		|tip It's a tall rectangle stone monument.
		Click the Arranged Crystal Formation that appears
		Sabotage the Mistwhisper Weather Shrine |q 12537/1 |goto 45.4,37.2
	step
		Kill 12 Mistwhisper Gorlocs |q 12538/1 |goto 45.5,39.8
	step
		Use Zepik's Hunting Horn if Zepik is not standing next to you: |use Zepik's Hunting Horn##38512
		talk Zepik the Gorloc Hunter##28216
		turnin Lightning Definitely Strikes Twice##12537
		turnin The Mist Isn't Listening##12538
		accept Hoofing It##12539
	step
		talk High-Shaman Rakjak##28082
		turnin Hoofing It##12539 |goto 55,69.1
		accept Just Following Orders##12540 |goto 55,69.1
	step
		talk Injured Rainspeaker Oracle##28217
		Pull it to its feet
		Kill the crocodile that spawns
		Locate the Injured Rainspeaker Oracle |q 12540/1 |goto 55.7,64.9
	step
		talk Injured Rainspeaker Oracle##28217
		turnin Just Following Orders##12540 |goto 55.7,64.9
		accept Fortunate Misunderstandings##12570 |goto 55.7,64.9
		Tell him you are ready to travel to his village now.
		Escort the Injured Rainspeaker Oracle to Rainspeaker Canopy |q 12570/1
	step
		talk High-Oracle Soo-say##28027
		turnin Fortunate Misunderstandings##12570 |goto 54.6,56.3
		accept Make the Bad Snake Go Away##12571 |goto 54.6,56.3
	step
		Use Lafoo's Bug Bag if Lafoo is not standing next to you |use Lafoo's Bug Bag##38622
		talk Lafoo##28120
		accept Gods like Shiny Things##12572
	step
		kill 1 Venomtip |q 12571/2 |goto 57.5,52.4
		|tip He walks back and forth on this small path near the waterfall.
	step
		Use Lafoo's Bug Bag if Lafoo is not standing next to you |use Lafoo's Bug Bag##38622
		Stand on top of the twinkles of light on the ground around this area
		Lafoo will dig up the treasure
		Click the random items that appear on the ground
		collect 6 Shiny Treasures##38575 |q 12572/1 |goto 52.4,53.2
		kill 10 Emperor Cobra |q 12571/1 |goto 52.4,53.2
	step
		talk High-Oracle Soo-say##28027
		turnin Make the Bad Snake Go Away##12571 |goto 54.6,56.3
		accept Making Peace##12573 |goto 54.6,56.3
		turnin Gods like Shiny Things##12572 |goto 54.6,56.3
	step
		talk Shaman Vekjik##28315
		Tell him you brought an offering
		Extend the Peace Offering to Shaman Vekjik |q 12573/1 |goto 51.3,64.6
	step
		talk Tamara Wobblesprocket##28568
		turnin The Part-time Hunter##12654 |goto 50.5,62.1
	step
		talk High-Oracle Soo-say##28027
		turnin Making Peace##12573 |goto 54.6,56.3
		accept Back So Soon?##12574 |goto 54.6,56.3
	step
		talk Mistcaller Soo-gan##28114
		turnin Back So Soon?##12574 |goto 42.1,38.6
		accept The Lost Mistwhisper Treasure##12575 |goto 42.1,38.6
		accept Forced Hand##12576 |goto 42.1,38.6
	step
		kill 8 Frenzyheart Spearbearer |q 12576/1 |goto 40.4,26.4
		kill 6 Frenzyheart Scavenger |q 12576/2 |goto 40.4,26.4
	step
		kill 1 Warlord Tartek |q 12575/1 |goto 41.3,19.8
		|tip He comes walking up on a red dragon.
	step
		Click the Mistwhisper Treasure 
		|tip It's a yellow glowing floating orb, hovering over a tree stump altar.
		collect Mistwhisper Treasure##38601 |q 12575/2 |goto 41.6,19.5
	step
		talk Mistcaller Soo-gan##28114
		turnin The Lost Mistwhisper Treasure##12575 |goto 42.1,38.6
		turnin Forced Hand##12576 |goto 42.1,38.6
		accept Home Time!##12577 |goto 42.1,38.6
	step
		talk High-Oracle Soo-say##28027
		turnin Home Time!##12577 |goto 54.6,56.3
		accept The Angry Gorloc##12578 |goto 54.6,56.3
	step
		Travel to Mosswalker Village |q 12578/1 |goto 75.3,54.1
	step
		Use Moodle's Stress Ball if Moodle is not standing next to you |use Moodle's Stress Ball##38624
		talk Moodle##28122
		turnin The Angry Gorloc##12578
		accept The Mosswalker Savior##12580
		accept Lifeblood of the Mosswalker Shrine##12579
	step		
		talk Mosswalker Victim##28113
		Rescue 6 Mosswalker Victims |q 12580/1 |goto 75.4,52.4
	step
		Use Moodle's Stress Ball if Moodle is not standing next to you |use Moodle's Stress Ball##38624
		talk Moodle##28122
		turnin The Mosswalker Savior##12580
	step
		Click Lifeblood Shards on the ground
		|tip They look like small red crystals on the ground around this area.
		collect 10 Lifeblood Shard##39063 |q 12579/1 |goto 68.9,54.6
	step
		You can also use Moodle's Stress Ball if you have it in your bags |use Moodle's Stress Ball##38624 
		talk Moodle##28122
		turnin Lifeblood of the Mosswalker Shrine##12579 |goto 54.5,56.6
		accept A Hero's Burden##12581 |goto 54.5,56.6
	step		
		_Enter_ the cave here |goto 70.8,58.7 |walk
		Follow the path _up_ |goto 72.2,57.3 |walk
		kill Artruis the Heartless |q 12581/1 
		|tip Kill Jaloot, who will spawn during the fight. Killing Jaloot will make you allied with the Frenzyheart Tribe.
		Click Artruis's Phylactery that spawns after the fight
		turnin A Hero's Burden##12581
	step
		talk Zepik the Gorloc Hunter##28668
		accept Frenzyheart Champion##12582
		accept Return of the Lich Hunter##12692
]])

-- This don't appear to be used in any of our files. 
ZygorGuidesViewer:RegisterInclude("FrenzyheartDailies",[[
	step
		talk Elder Harkek##28138
		turnin Return of the Lich Hunter##12692 |goto Sholazar Basin 55.5,69.7 |only if not ZGV.completedQuests[12692]
		accept Chicken Party!##12702 |goto Sholazar Basin 55.5,69.7
		Tell him you need to find Goregek
		collect Goregek's Shackles##38619 |q 12702 |goto Sholazar Basin 55.5,69.7
	step
		talk Rejek##29043
		You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
		accept A Hero's Headgear##12758 |goto 55.7,69.5 |or
		accept Rejek: First Blood##12734 |goto 55.7,69.5 |or
		accept Strength of the Tempest##12741 |goto 55.7,69.5 |or
		accept The Heartblood's Strength##12732 |goto 55.7,69.5 |or
	step
		talk Vekgar##29146
		You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		accept Kartak's Rampage##12703 |goto 55.5,68.7 |or
		accept Secret Strength of the Frenzyheart##12760 |goto 55.5,68.7 |or
		accept Tools of War##12759 |goto 55.5,68.7 |or
	step
		They are all around the village
		Use your Chicken Net on the Chicken Escapees if you cannot catch them easily |use Chicken Net##38689
		Click the Chicken Escapees
		collect 12 Captured Chicken##38483 |q 12702/1
	step
		kill Venture Co. Ruffian##28124+, Venture Co. Excavator##28123+
		collect Venture Co. Explosives##39651 |q 12758 |goto 33.1,47.3
	step
		kill Stormwatcher##28877+
		Use your Venture Co. Explosives on a Stormwatcher's corpse |use Venture Co. Explosives##39651
		Click the Stormwatcher's Head that spawns
		collect Stormwatcher's Head##39667 |q 12758/1 |goto 26.0,35.4
	step
		kill Hardknuckle Charger##28096+
		Use Rejek's Blade on a Hardknuckle Charger's corpse |use Rejek's Blade##39577
		Blood your Blade on a Hardknuckle Charger |q 12734/2 |goto 59.7,70.9
	step
		kill Sapphire Hive Wasp##28086+
		Use Rejek's Blade on a Sapphire Hive Wasp's corpse |use Rejek's Blade##39577
		Blood your Blade on a Sapphire Hive Wasp |q 12734/1 |goto 59.3,75.7
	step
		kill Mistwhisper Warrior##28109+, Mistwhisper Oracle##28110+
		Use Rejek's Blade on 3 Mistwhisper mob's corpse |use Rejek's Blade##39577
		Blood your Blade on 3 Mistwhisper Members |q 12734/3 |goto 43.1,40.4
	step
		kill Aqueous Spirit##28862+
		collect 3 Essence of the Monsoon##39616 |q 12741 |goto 26.5,35.1
		kill Storm Revenant##28858+
		collect 3 Essence of the Storm##39643 |q 12741 |goto 26.5,35.1
	step
		Stand right up next to the tall stone altar 
		|tip You may even need to rub against, or stand next to it so that you are touching it.
		Feel the True Power of the Tempest |q 12741/1 |goto 22.4,33.8
	step
		kill Goretalon Matriarch##29044 
		|tip It looks like a white eagle perched up on a hill, next to a nest with 1 egg in it.
		collect Matriarch's Heartblood##39573 |q 12732 |goto 59.7,23.9
	step
		Use Rejek's Vial while standing in the water at the top of the Suntouched Pillar |use Rejek's Vial##39574
		collect Suntouched Water##39576 |n
		Click the Suntouched Water in your bags |use Suntouched Water##39576
		collect Suntouched Heartblood##39575 |q 12732/1 |goto 33.8,52.1
	step
		kill Sparktouched Warrior##28111+, Sparktouched Oracle##28112+
		collect Oracle Blood##39265 |q 12703 |goto 31.6,69.5
	step
		Use your Oracle Blood next to the Altar of Kartak |use Oracle Blood##39265
		|tip The Altar of Kartak has a big skull on top of it, with long curved horns. There are 3 small fires at the base of the altar, also.
		Take Control of Kartak |invehicle |c |q 12703 |goto 23.3,83.0
	step
		Use Kartak's abilities to kill Oracle mobs around this area
		kill #50# Sparktouched Gorloc |q 12703/1 |goto 30.7,78.0
	step
		talk Grimbooze Thunderbrew##29157
		Ask him for some booze
		collect Thunderbrew's Hard Ale##39738 |n
		Click the Wolvar Berries in your bags |use Wolvar Berries##39739
		collect Secret Strength of the Frenzyheart##39737 |q 12760/2 |goto 26.8,60.1
	step
		Drink the Secret Strength of the Frenzyheart in your bags |use Secret Strength of the Frenzyheart##39737
		kill Sparktouched Warrior##28111+, Sparktouched Oracle##28112+
		Kill #30# Sparktouched Gorlocs |q 12760/1 |goto 30.1,70.7
	step	
		Click Zepik's Trap Stash 
		|tip Zepik's Trap Stash looks like a small brown chest on the ground, next to some wiry stick huts.
		collect Spike Bomb##39697 |q 12759 |goto 24.0,83.1
		collect Ensnaring Trap##39695 |q 12759 |goto 24.0,83.1
		collect Volatile Trap##39696 |q 12759 |goto 24.0,83.1
	step
		Use your Spike Bomb |use Spike Bomb##39697
		Use your Ensnaring Trap |use Ensnaring Trap##39695
		Use your Volatile Trap |use Volatile Trap##39696
		Use your traps near Oracles mobs around this area
		Kill #50# Sparktouched Gorlocs |q 12759/1 |goto 28.4,76.1
	step
		talk Shaman Jakjek##28106
		You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		turnin Kartak's Rampage##12703 |goto 23.4,83.3
		turnin Secret Strength of the Frenzyheart##12760 |goto 23.4,83.3
		turnin Tools of War##12759 |goto 23.4,83.3
	step
		talk Elder Harkek##28138
		turnin Chicken Party!##12702 |goto 55.5,69.7
	step
		talk Rejek##29043
		You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
		turnin A Hero's Headgear##12758 |goto 55.7,69.5
		turnin Rejek: First Blood##12734 |goto 55.7,69.5
		turnin Strength of the Tempest##12741 |goto 55.7,69.5
		turnin The Heartblood's Strength##12732 |goto 55.7,69.5
]])

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("OraclePreQuests",[[
	step
		talk Tamara Wobblesprocket##28568
		accept The Part-time Hunter##12654 |goto Sholazar Basin,50.5,62.1
	step
		kill Pitch##28097
		collect Pitch's Remains##38703 |q 12654/1 |goto 50.5,77.3
	step
		talk Tracker Gekgek##28095
		accept Playing Along##12528 |goto 50.5,76.6
	step
		talk High-Shaman Rakjak##28082
		turnin Playing Along##12528 |goto 55,69.1
		accept The Ape Hunter's Slave##12529 |goto 55,69.1
	step
		Talk to Goregek the Gorilla Hunter who is following you
		accept Tormenting the Softknuckles##12530
	step
		kill 8 Hardknuckle Forager |q 12529/1 |goto 57.5,73.3
	step
		kill 6 Hardknuckle Charger |q 12529/2 |goto 61.1,71.7
	step		
		Use your Softknuckle Poker on Softknuckles |use Softknuckle Poker##38467
		|tip Softknuckles are baby gorillas.
		A Hardknuckle Matriarch will spawn eventually
		kill 1 Hardknuckle Matriarch |q 12530/1 |goto 66.9,73.2
	step
		talk High-Shaman Rakjak##28082
		turnin The Ape Hunter's Slave##12529 |goto 55,69.1
		turnin Tormenting the Softknuckles##12530 |goto 55,69.1
		accept The Wasp Hunter's Apprentice##12533 |goto 55,69.1
	step
		talk Elder Harkek##28138
		accept The Sapphire Queen##12534 |goto 55.5,69.7
	step		
		kill 6 Sapphire Hive Wasp |q 12533/1 |goto 59.6,75.8
		kill 9 Sapphire Hive Drone |q 12533/2 |goto 59.6,75.8
	step
		Follow the path down _down_ |goto 59.4,79.1,0.3 |only if walking
		Continue _down_ the path |goto 57.1,79.3 |only if walking
		kill Sapphire Hive Queen##28087
		collect Stinger of the Sapphire Queen##38477 |q 12534/1
	step
		talk High-Shaman Rakjak##28082
		turnin The Wasp Hunter's Apprentice##12533 |goto 55.0,69.1
		turnin The Sapphire Queen##12534 |goto 55.0,69.1
	step
		talk Elder Harkek##28138
		accept Flown the Coop!##12532 |goto 55.5,69.7
	step
		They are all around the village
		Click the Chicken Escapees
		collect 12 Captured Chicken##38483 |q 12532/1
	step
		talk Elder Harkek##28138
		turnin Flown the Coop!##12532 |goto 55.5,69.7
		accept The Underground Menace##12531 |goto 55.5,69.7
	step
		talk High-Shaman Rakjak##28082
		accept Mischief in the Making##12535 |goto 55,69.1
	step
		Click the Skyreach Crystal Formations 
		|tip They look like white crystal cluster on the ground along the river bank.
		collect 8 Skyreach Crystal Cluster##38504 |q 12535/1 |goto 56.6,84.6
	step
		kill Serfex the Reaver##28083
		collect Claw of Serfex##38473 |q 12531/1 |goto 49.8,85
	step
		talk High-Shaman Rakjak##28082
		turnin The Underground Menace##12531 |goto 55,69.1
		turnin Mischief in the Making##12535 |goto 55,69.1
		accept A Rough Ride##12536 |goto 55,69.1
	step
		talk Captive Crocolisk##28298
		Tell him let's do this
		Travel to Mistwhisper Refuge |q 12536/1 |goto 57.3,68.4
	step
		When you jump off the crocodile:
		talk Zepik the Gorloc Hunter##28668
		turnin A Rough Ride##12536
		accept Lightning Definitely Strikes Twice##12537
		accept The Mist Isn't Listening##12538
	step
		Use your Skyreach Crystal Clusters next to the stone monument |use Skyreach Crystal Clusters##38510 
		|tip It's a tall rectangle stone monument.
		Click the Arranged Crystal Formation that appears
		Sabotage the Mistwhisper Weather Shrine |q 12537/1 |goto 45.4,37.2
	step
		Kill 12 Mistwhisper Gorlocs |q 12538/1 |goto 45.5,39.8
	step
		Use Zepik's Hunting Horn if Zepik is not standing next to you |use Zepik's Hunting Horn##38512
		talk Zepik the Gorloc Hunter##28216
		turnin Lightning Definitely Strikes Twice##12537
		turnin The Mist Isn't Listening##12538
		accept Hoofing It##12539
	step
		talk High-Shaman Rakjak##28082
		turnin Hoofing It##12539 |goto 55,69.1
		accept Just Following Orders##12540 |goto 55,69.1
	step
		talk Injured Rainspeaker Oracle##28217
		Pull it to its feet
		Kill the crocodile that spawns
		Locate the Injured Rainspeaker Oracle |q 12540/1 |goto 55.7,64.9
	step
		talk Injured Rainspeaker Oracle##28217
		turnin Just Following Orders##12540 |goto 55.7,64.9
		accept Fortunate Misunderstandings##12570 |goto 55.7,64.9
		Tell him you are ready to travel to his village now
		Escort the Injured Rainspeaker Oracle to Rainspeaker Canopy |q 12570/1 |goto 55.7,64.9
	step
		talk High-Oracle Soo-say##28027
		turnin Fortunate Misunderstandings##12570 |goto 54.6,56.3
		accept Make the Bad Snake Go Away##12571 |goto 54.6,56.3
	step
		Use Lafoo's Bug Bag if Lafoo is not standing next to you |use Lafoo's Bug Bag##38622
		talk Lafoo##28120
		accept Gods like Shiny Things##12572
	step
		kill 1 Venomtip |q 12571/2 |goto 57.5,52.4
		|tip He walks back and forth on this small path near the waterfall.
	step
		Use Lafoo's Bug Bag if Lafoo is not standing next to you |use Lafoo's Bug Bag##38622
		Stand on top of the twinkles of light on the ground around this area
		Lafoo will dig up the treasure
		Click the random items that appear on the ground
		collect 6 Shiny Treasures##38575 |q 12572/1 |goto 52.4,53.2
		kill 10 Emperor Cobra |q 12571/1 |goto 52.4,53.2
	step	
		talk High-Oracle Soo-say##28027
		turnin Make the Bad Snake Go Away##12571 |goto 54.6,56.3
		accept Making Peace##12573 |goto 54.6,56.3
		turnin Gods like Shiny Things##12572 |goto 54.6,56.3
	step
		talk Shaman Vekjik##28315
		Tell him you brought an offering
		Extend the Peace Offering to Shaman Vekjik |q 12573/1 |goto 51.3,64.6
	step
		talk Tamara Wobblesprocket##28568
		turnin The Part-time Hunter##12654 |goto 50.5,62.1
	step
		talk High-Oracle Soo-say##28027
		turnin Making Peace##12573 |goto 54.6,56.3
		accept Back So Soon?##12574 |goto 54.6,56.3
	step
		talk Mistcaller Soo-gan##28114
		turnin Back So Soon?##12574 |goto 42.1,38.6
		accept The Lost Mistwhisper Treasure##12575 |goto 42.1,38.6
		accept Forced Hand##12576 |goto 42.1,38.6
	step
		kill 8 Frenzyheart Spearbearer |q 12576/1 |goto 40.4,26.4
		kill 6 Frenzyheart Scavenger |q 12576/2 |goto 40.4,26.4
	step
		kill 1 Warlord Tartek |q 12575/1 |goto 41.3,19.8
		|tip He comes walking up on a red dragon.
	step		
		Click the Mistwhisper Treasure 
		|tip It's a yellow glowing floating orb, hovering over a tree stump altar.
		collect Mistwhisper Treasure##38601 |q 12575/2 |goto 41.6,19.5
	step
		talk Mistcaller Soo-gan##28114
		turnin The Lost Mistwhisper Treasure##12575 |goto 42.1,38.6
		turnin Forced Hand##12576 |goto 42.1,38.6
		accept Home Time!##12577 |goto 42.1,38.6
	step
		talk High-Oracle Soo-say##28027
		turnin Home Time!##12577 |goto 54.6,56.3
		accept The Angry Gorloc##12578 |goto 54.6,56.3
	step
		Travel to Mosswalker Village |q 12578/1 |goto 75.3,54.1
	step
		Use Moodle's Stress Ball if Moodle is not standing next to you |use Moodle's Stress Ball##38624
		talk Moodle##28122
		turnin The Angry Gorloc##12578
		accept The Mosswalker Savior##12580
		accept Lifeblood of the Mosswalker Shrine##12579
	step		
		talk Mosswalker Victim##28113
		Rescue 6 Mosswalker Victims |q 12580/1 |goto 75.4,52.4
	step
		Use Moodle's Stress Ball if Moodle is not standing next to you |use Moodle's Stress Ball##38624
		talk Moodle##28122
		turnin The Mosswalker Savior##12580
	step
		Click Lifeblood Shards on the ground
		|tip They look like small red crystals on the ground around this area.
		collect 10 Lifeblood Shard##39063 |q 12579/1 |goto 68.9,54.6
	step
		You can also use Moodle's Stress Ball if you have it in your bags |use Moodle's Stress Ball##38624 
		talk Moodle##28122
		turnin Lifeblood of the Mosswalker Shrine##12579 |goto 54.5,56.6
		accept A Hero's Burden##12581 |goto 54.5,56.6
	step
		_Enter_ the cave |goto 70.8,58.7 |walk
		Follow the path inside the cave up to 72.2,57.3 |walk
		kill Artruis the Heartless |q 12581/1
		|tip Kill either Zepik the Gorloc Hunter who spawns during the fight. Killing Zepik the Gorloc Hunter will make you allied with The Oracles.
		Click Artruis's Phylactery that spawns after the fight
		turnin A Hero's Burden##12581
	step
		talk Jaloot##28667
		accept Hand of the Oracles##12689
		accept Return of the Friendly Dryskin##12695
]])

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("OracleDailies",[[
	step
		talk High-Oracle Soo-say##28027
		turnin Return of the Friendly Dryskin##12695 |only if not ZGV.completedQuests[12695] |goto Sholazar Basin 54.6,56.4
		accept Appeasing the Great Rain Stone##12704 |goto Sholazar Basin 54.6,56.4
		Tell him you need to find Lafoo
		collect Lafoo's Bug Bag##38622 |q 12704 |goto Sholazar Basin 54.6,56.4
	step
		talk Oracle Soo-nee##29006
		You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
		accept A Cleansing Song##12735 |goto 53.3,56.5 |or
		accept Song of Fecundity##12737 |goto 53.3,56.5 |or
		accept Song of Reflection##12736 |goto 53.3,56.5 |or
		accept Song of Wind and Water##12726 |goto 53.3,56.5 |or
	step
		talk Oracle Soo-dow##29149
		You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		accept Mastery of the Crystals##12761 |goto 54.2,53.8 |or
		accept Power of the Great Ones##12762 |goto 54.2,53.8 |or
		accept Will of the Titans##12705 |goto 54.2,53.8 |or
	step
		Use Lafoo's Bug Bag if Lafoo is not standing next to you: |use Lafoo's Bug Bag##38622
		Stand on top of the twinkles of light on the ground around this area
		Lafoo will dig up the treasure
		Click the random items that appear on the ground
		collect 6 Shiny Treasures##38575|q 12704/1 |goto 52.4,53.2
	step
		Use your Chime of Cleansing in this spot |use Chime of Cleansing##39572
		kill Spirit of Atha |q 12735/1 |goto 42.7,42.8
	step
		Use your Chime of Cleansing in this spot |use Chime of Cleansing##39572
		kill Spirit of Ha-Khalan |q 12735/2 |goto 49.4,62.7
	step
		Use your Chime of Cleansing in this spot |use Chime of Cleansing##39572
		kill Spirit of Koosu |q 12735/3 |goto 48.8,70.5
	step
		Use your Horn of Fecundity next to Soaked Fertile Dirt piles |use Horn of Fecundity##39599
		Play the Song of Fecundity 8 Times |q 12737/1 |goto 26.2,37.1
	step
		Use your Didgeridoo of Contemplation at the top of The Glimmering Pillar |use Didgeridoo of Contemplation##39598
		Contemplate at the Glimmering Pillar |q 12736/1 |goto 50.0,37.4
	step
		Use your Didgeridoo of Contemplation at the top of The Suntouched Pillar |use Didgeridoo of Contemplation##39598
		Contemplate at the Suntouched Pillar |q 12736/4 |goto 33.6,52.3
	step
		Use your Didgeridoo of Contemplation at the top of The Mosslight Pillar |use Didgeridoo of Contemplation##39598
		Contemplate at the Mosslight Pillar |q 12736/2 |goto 36.4,74.7
	step
		Use your Didgeridoo of Contemplation at the top of The Skyreach Pillar |use Didgeridoo of Contemplation##39598
		Contemplate at the Skyreach Pillar |q 12736/3 |goto 53.3,79.4
	step	
		Use your Drums of the Tempest to take control of Haiphoon, the Great Tempest |use Drums of the Tempest##39571
		Haiphoon has 2 forms: Water and Air 
		|tip When in Haiphoon's Water form, use Haiphoon's abilities to fight Storm Revenants around this area. When the Storm Revenants are weak, use Haiphoon's Devour Wind ability to eat them.  When in Haiphoon's Air form, use Haiphoon's abilities to fight Aqueous Spirits around this area.  When the Aqueous Spirits are weak, use Haiphoon's Devour Water ability to eat them.  After eating an elemental, you will take on Haiphoon's matching form of that elemental you last ate.  Keep repeating this process.
		Devour 3 Aqueous Spirits |q 12726/1 |goto 26.2,37.1
		Devour 3 Storm Revenants |q 12726/2 |goto 26.2,37.1
	step		
		Click the Sparktouched Crystal Defenses 
		|tip It looks like a small bamboo chest sitting at the base of a tree, next to a small hut.
		collect 1 Crystal of the Violent Storm##39694 |q 12761 |goto 33.0,75.7
		collect 1 Crystal of Unstable Energy##39693 |q 12761 |goto 33.0,75.7
		collect 1 Crystal of the Frozen Grip##39689 |q 12761 |goto 33.0,75.7
	step
		Use your Crystal of the Frozen Grip |use Crystal of the Frozen Grip##39689
		Use your Crystal of the Violent Storm |use Crystal of the Violent Storm##39694
		Use your Crystal of Unstable Energy |use Crystal of Unstable Energy##39693
		Use your crystals near Frenzyheart mobs around this area
		Kill #50# Frenzyheart Attackers |q 12761 /1 |goto 22.2,78.0
	step		
		Use your Dormant Polished Crystal at the top of the Lifeblood Pillar, next to the big red crystal |use Dormant Polished Crystal##39747
		collect Energized Polished Crystal##39748 |q 12762/2 |goto 65.5,60.2
	step
		Use your Energized Polished Crystal |use Energized Polished Crystal##39748
		|tip This will give you a buff that will heal you a lot every time you do damage to an enemy, so you can fight a LOT of mobs at once.
		Kill 30 Frenzyheart Attackers |q 12762/1 |goto 22.2,78.0
	step
		kill Frenzyheart Ravager##28078+, Frenzyheart Hunter##28079+ 
		collect 1 Tainted Crystal##39266 |q 12705 |goto 22.9,76.0
	step
		Use your Tainted Crystal next to the tall stone altar |use Tainted Crystal##39266
		Take control of Soo-holu |invehicle |c |q 12705 |goto 33.7,75.0
	step
		Use Soo-holu's abilities to kill Frenzyheart mobs around this area
		kill 50 Frenzyheart Attacker |q 12705/1 |goto 22.2,78.0
	step
		talk Lightningcaller Soo-met##28107
		turnin Mastery of the Crystals##12761 |goto 33.5,74.8
		turnin Power of the Great Ones##12762 |goto 33.5,74.8
		turnin Will of the Titans##12705 |goto 33.5,74.8
	step
		talk Oracle Soo-nee##29006
		You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
		turnin A Cleansing Song##12735 |goto 53.3,56.5
		turnin Song of Fecundity##12737 |goto 53.3,56.5
		turnin Song of Reflection##12736 |goto 53.3,56.5
		turnin Song of Wind and Water##12726 |goto 53.3,56.5
	step
		talk High-Oracle Soo-say##28027
		turnin Appeasing the Great Rain Stone##12704 |goto 54.6,56.4
]])

ZygorGuidesViewer:RegisterInclude("CleansingDrakTharon",[[
	step
		talk Samir##26424
		accept Filling the Cages##11984 |goto Grizzly Hills 16.2,47.6
	step
		talk Budd##26429
		Tell him it's time to play with the ice trolls |havebuff 134177 |c |goto 16.4,48.3
	step
		Use Budd's pet bar skill Tag Troll to have him stun a troll |petaction Tag Troll
		Use your Bounty Hunter's Cage on the stunned troll |use Bounty Hunter's Cage##35736
		Capture a Live Ice Troll |q 11984/1 |goto 13.2,60.5
	step
		talk Samir##26424
		turnin Filling the Cages##11984 |goto 16.2,47.6
	step
		talk Drakuru##26423
		accept Truce?##11989 |goto 16.4,47.8
	step
		Click the Dull Carving Knife
		|tip It's a knife stuck in the side of this tree trunk.
		collect Dull Carving Knife##38083 |q 11989 |goto 16.5,47.8
	step		
		Use your Dull Carving Knife next to the yellow cage |use Dull Carving Knife##38083
		talk Drakuru##26423
		Shake his hand
		Make a Blood Pact With Drakuru |q 11989/1 |goto 16.4,47.8
	step		
		talk Drakuru##26423
		turnin Truce?##11989
		accept Vial of Visions##11990 |goto 16.4,47.8
	step		
		talk Ameenah##26474
		buy 1 Crystal Vial##3371 |q 11990/1 |goto 16,47.8
	step
		Click the Hazewood Bushes
		|tip They look like small flower bushes on the ground around this area.
		collect 3 Haze Leaf##37085|q 11990/2 |goto 14.6,45.3
	step		
		Click a Waterweed|tip They look like big green bushes underwater around this area.
		collect Waterweed Frond##35795|q 11990/3 |goto 15.2,40.3
	step
		talk Drakuru##26423
		turnin Vial of Visions##11990 |goto 16.4,47.8
		accept Subject to Interpretation##11991 |goto 16.4,47.8
	step
		kill trolls |n
		collect #5# Frozen Mojo##35799 |q 11991 |goto 13.3,58.5
	step
		Use Drakuru's Elixir next to Drakuru's Brazier |use Drakuru's Elixir##35797
		talk Image of Drakuru##26500
		turnin Subject to Interpretation##11991 |goto 13.2,60.9
		accept Sacrifices Must be Made##12007 |goto 13.2,60.9
	step
		kill Warlord Zim'bo##26544
		collect Zim'bo's Mojo##35836 |q 12007 |goto 14.5,38
	step		
		Click the Seer of Zeb'Halak statue
		|tip It's a huge blue glowing statue at the top of the stairs.
		collect Eye of the Prophets##35806|q 12007/1 |goto 17.9,36.5
		|tip Go up the huge stairs.
	step		
		Use Drakuru's Elixir next to Drakuru's Brazier |use Drakuru's Elixir##35797
		talk Image of Drakuru##26543
		turnin Sacrifices Must be Made##12007 |goto 17.4,36.4
		accept Heart of the Ancients##12042 |goto 17.4,36.4
	step
		Click the Heart of the Ancients
		|tip It's a small pointed stone laying on the floor at the top of this control station, in a small room, next to a dead goblin.
		turnin Heart of the Ancients##12042 |goto 36.9,32.4
		accept My Heart is in Your Hands##12802 |goto 36.9,32.4
	step
		kill Drakkari Defenders |n
		collect 5 Desperate Mojo##36743 |q 12802 |goto 44.2,30.4
	step		
		Use Drakuru's Elixir next to Drakuru's Brazier |use Drakuru's Elixir##35797
		talk Image of Drakuru##26701
		turnin My Heart is in Your Hands##12802 |goto 45.0,28.4
		accept Voices From the Dust##12068 |goto 45.0,28.4
	step
		kill Drakkari Protector##26797+, Drakkari Oracle##26795+
		collect 5 Sacred Mojo##36758|q 12068 |goto 70.5,27.4
	step
		_Enter_ the crypt |goto 69.4,18.2 |walk
		Click the Drakkari Tablets
		|tip It's a big stone tablet in the corner of a small room inside this underground crypt.
		collect Drakkari Tablets##36757|q 12068/1
	step
		Use Drakuru's Elixir next to Drakuru's Brazier |use Drakuru's Elixir##35797
		talk Image of Drakuru##26787
		turnin Voices From the Dust##12068 |goto 71.7,26.2
		accept Cleansing Drak'Tharon##12238 |goto 71.7,26.2
	step
		_Enter_ Drak'Tharon Keep |goto Grizzly Hills 17.4,21.2 |walk
		kill Drakkari Shaman##26639+, Drakarri Guardian##26620+, Drakarri Commander##27431+ |q 12238
		collect 5 Enduring Mojo##38303
	step
		kill The Prophet Tharon'ja##26632 |n
		|tip He's at the end of the instance
		Go behind the boss to Drakuru's Brazier
		Use Drakuru's Elixir next to Drakuru's Brazier |use Drakuru's Elixir##35797
		|tip It's a square bowl at the top of the stairs.
		talk Drakuru##28016
		turnin Cleansing Drak'Tharon##12238
]])

ZygorGuidesViewer:RegisterInclude("BetrayalDrakuru",[[
	step
		kill Withered Trolls
		collect Writhing Choker##38673 |n
		use Writhing Choker##38673
		accept Darkness Calling##12633 |goto Zul'Drak,15.5,69.8
	step
		talk Stefan Vadu##28518
		turnin Darkness Calling##12633 |goto 14.1,73.8
		accept Close Call##12638 |goto 14.1,73.8
	step
		talk Bloodrose Datura##28532
		Tell her Stefan said she would demonstrate the item's purpose
		Expose the Choker's Purpose |q 12638/1 |goto 14.3,74
	step
		talk Stefan Vadu##28518
		turnin Close Call##12638 |goto 14.1,73.8
		accept Silver Lining##12643 |goto 14.1,73.8
	step
		kill Putrid Abominations |n
		collect 5 Putrid Abomination Guts##38686 |q 12643/1 |goto 19.9,73.5 |or
		Click the Gooey Ghoul Drool on the ground
		|tip They look like jelly blobs on the ground around this area.
		collect 5 Gooey Ghoul Drool##38687 |q 12643/2 |goto 19.9,73.5
	step
		talk Stefan Vadu##28518
		turnin Silver Lining##12643 |goto 14.1,73.8
		accept Suit Up!##12649 |goto 14.1,73.8
	step		
		Use the Ensorcelled Choker to wear a ghoul costume |use Ensorcelled Choker##38699
		talk Gristlegut##28589
		buy 1 Bitter Plasma##38698|q 12649/1 |goto 19.9,75.5
	step
		talk Stefan Vadu##28518
		You will only be able to turn in 1 of these quests
		turnin Suit Up!##12649
		accept Infiltrating Voltarus##12661 |goto 14.1,73.8
	step
		Use your Ensorcelled Choker to become a ghoul |use Ensorcelled Choker##38699 |goto 28.4,44.9
		Stand on this green circle
		Get teleported up to Overlord Drakuru |goto Zul'Drak,28.1,45.2
		talk Overlord Drakuru##28503
		accept Reunited##12663 |goto 27.1,46.2
	step
		talk Gorebag##28666
		Go on the tour of Zul'Drak
		Complete the tour of Zul'Drak |q 12663/1 |goto 29.9,47.8
	step
		talk Overlord Drakuru##28503
		turnin Reunited##112663 |goto 27.1,46.2
		Complete Overlord Drakuru's task |q 12661/1 |c
	step
		_Teleport_ back down to the ground 
		Use Stefan's Horn in your bags |use Stefan's Horn##41390
		talk Stefan Vadu##28518
		turnin Infiltrating Voltarus##12661 |goto 28.1,44.9,0.5
		accept So Far, So Bad##12669 |goto 28.1,44.9,0.5
	step
		_Teleport_ up to Overlord Drakuru |goto 28.1,45.2,0.5
		talk Overlord Drakuru##28503
		accept It Rolls Downhill##12673 |goto 27.1,46.2
	step
		_Teleport_ back down to the ground |goto 28.0,44.9
		Use your Scepter of Suggestion on Blight Geists |use Scepter of Suggestion##39157
		Use the Harvest Blight Crystal ability near Crystallized Blight |petaction Harvest Blight Crystal 
		|tip The Crystallized Blight look like orange crystals on the ground around this area.
		Follow the Blight Geists back to the teleport pad
		Collect 7 Blight Crystals |q 12673/1 |goto 27.2,45.1
	step
		Use your Diluting Additive next to the big cauldron 5 times |use Diluting Additive##39154
		|tip It's a big cauldron on the back of this cart vehicle thing. Several Blightguards may pop out for you to fight. Wait about a minute and use your Diluting Additive next to the cauldron again. Keep repeating this process.
		Dilute the Cauldron #5# times |q 12669/2 |goto 26.8,47
	step
		Stand on this green circle
		Get teleported up to Overlord Drakuru |goto 28.1,45.2
	step		
		talk Overlord Drakuru##28503
		turnin It Rolls Downhill##12673
		Complete Drakuru's task |q 12669/1 |goto 27.1,46.2
	step
		Teleport back down to the ground |goto 28.0,44.9
		Use Stefan's Horn in your bags |use Stefan's Horn##41390
		talk Stefan Vadu##28518
		turnin So Far, So Bad##12669
		accept Hazardous Materials##12677
	step
		_Teleport_ up to Overlord Drakuru |goto 28.1,45.2		
		talk Overlord Drakuru##28503
		accept Zero Tolerance##12686 |goto 27.1,46.2
	step
		Click the Harvested Blight Crystal crates
		|tip They look like big wooden crates around this area in the halls and rooms.
		collect 5 Harvested Blight Crystal##39159 |q 12677/2 |goto 27.1,43.9
	step
		Teleport back down to the ground |goto 28.0,44.9		
		Use your Scepter of Empowerment on a Servant of Drakaru |use Scepter of Empowerment##39206
		Take control of a Servant of Drakaru
		Use the abilities on your Servant of Drakaru's pet bar to fight Darmuk |goto 30.4,51.5
		Kill Darmuk |q 12686/1 |goto 29.7,49.6
		|tip He's a huge undead mob walking around on this platform.
	step
		Get teleported up to Overlord Drakuru |goto 28.1,45.2		
		talk Overlord Drakuru##28503
		turnin Zero Tolerance##12686 |goto 27.1,46.2
	step
		Teleport back down to the ground |goto 28.0,44.9
		Use Stefan's Horn in your bags |use Stefan's Horn##41390
		talk Stefan Vadu##28518
		turnin Hazardous Materials##12677
		accept Sabotage##12676
	step
		_Teleport_ up to Overlord Drakuru |goto 28.1,45.2
		talk Overlord Drakuru##28503
		accept Fuel for the Fire##12690 |goto 27.1,46.2
	step
		_Teleport_ back down to the ground |goto 28.0,44.9		
		Use your Scepter of Command on a Bloated Abomination |use Scepter of Command##39238
		Take control of the Bloated Abomination
		Go up the hill
		Send your Bloated Abomination into groups of Drakkari Skullcrushers
		Use the Burst at the Seams ability on your pet hotbar |petaction Burst at the Seams
		Kill 60 Drakkari Skullcrushers |q 12690/1 |goto 32.1,40.6
		Lure 3 Drakkari Chieftains |q 12690/2 |goto 32.1,40.6
	step
		Use your Explosive Charges next to Scourgewagons |use Explosive Charges##39165 
		|tip They look like small catapult carts.
		Destroy 5 Scourgewagons |q 12676/1 |goto 30.6,45.3
	step
		Get teleported up to Overlord Drakuru |goto 28.1,45.2
		talk Overlord Drakuru##28503
		turnin Fuel for the Fire##12690 |goto 27.1,46.2
		accept Disclosure##12710 |goto 27.1,46.2
		Complete Drakuru's task |q 12676/2 |goto 27.1,46.2
	step
		_Teleport_ up to Drakuru's upper chamber |goto 27.4,42.5		
		Click the Musty Coffin
		|tip It's a brown coffin.
		Explore Drakuru's upper chamber |q 12710/1 |goto 27.2,42.3
	step
		Stand on this green circle to go to the bottom level of Voltarus |goto 28.1,45.2
		talk Overlord Drakuru##28503
		turnin Disclosure##12710
		Learn Drakuru's secret |q 12676/3 |goto 27.1,46.2
	step
		Teleport back down to the ground |goto 28.0,44.9
		Use Stefan's Horn in your bags |use Stefan's Horn##41390
		talk Stefan Vadu##28518
		turnin Sabotage##12676
		accept Betrayal##12713
	step
		Stand on this green circle to go to the bottom level of Voltarus |goto 28.1,45.2
		talk Overlord Drakuru##28503
		Tell him you're ready to accompany him |goto 28.3,45.3
		Use your Scepter of Domination on Blightblood Trolls |use Scepter of Domination##39664
		Use the following abilities when they are off cooldown:
		Powerful Strike |use spell##54135
		Concussion Blow |use spell##54132
		Blightblood Infusion |use spell##54136
		Use the Scepter on another Blightblood Troll if yours dies.
		collect 1 Drakuru's Skull##40425 |q 12713/1
]])

ZygorGuidesViewer:RegisterInclude("Explorer_Pandaria",[[
	step
		Discover Nectarbreeze Orchard |achieve 6351/8 |goto The Jade Forest 40.0,73.0
	step
		Discover Garrosh'ar Point |achieve 6351/15 |goto 46.0,90.0
	step		
		Discover Dreamer's Pavilion |achieve 6351/3 |goto 52.1,90.8
	step
		Discover Slingtail Pits |achieve 6351/12 |goto 52.0,82.0
	step
		Discover Pearl Lake |achieve 6351/5 |goto 58.0,80.0
	step
		Discover Temple of the Jade Serpent |achieve 6351/13 |goto 57.0,57.0
	step
		Discover Serpent's Heart |achieve 6351/11 |goto 47.0,60.0
	step
		Discover Dawn's Blossom |achieve 6351/2 |goto 48.0,45.0
	step
		Discover The Arboretum |achieve 6351/14 |goto 57.0,44.0
	step
		Discover Windward Isle |achieve 6351/16 |goto 65.0,30.0
	step
		Discover Emperor's Omen |achieve 6351/4 |goto 50.0,26.2
	step
		Discover Greenstone Quarry |achieve 6351/7 |goto 46.0,29.0
	step
		Discover Tian Monastery |achieve 6351/1 |goto The Jade Forest 41.2,21.5
	step
		Discover Terrace of Ten Thunders |achieve 6351/10 |goto 40.0,13.0
	step
		Discover Honeydew Village |achieve 6351/17 |goto 29.0,13.0
	step
		Discover Camp Nooka Nooka |achieve 6351/9 |goto 25.0,37.0
	step
		Discover Grookin Hill |achieve 6351/6 |goto 25.0,48.0
// Valley
	step
		Discover the Thunderfoot Ranch |achieve 6969/17 |goto Valley of the Four Winds 75.7,24.9
	step
		Discover the Pools of Purity |achieve 6969/11 |goto 60.7,27.6
	step
		Discover Mudmug's Place |achieve 6969/8 |goto 68.6,43.3
	step
		Discover Zhu's Watch |achieve 6969/18 |goto 81.53,47.92
	step
		Discover the Rumbling Terrace |achieve 6969/12 |goto 73.2,58.3
	step
		Discover Silken Fields |achieve 6969/13 |goto 65.2,57.4
	step
		Discover Halfhill |achieve 6969/5 |goto 56.1,49.8
	step
		Discover the Gilded Fan |achieve 6969/3 |goto 54.2,38.7
	step
		Discover the Heartland |achieve 6969/16 |goto 40.4,43.1
	step
		Discover the Kunzen Village |achieve 6969/7 |goto 33.1,23.5
	step
		Discover Paoquan Hollow |achieve 6969/10 |goto 16.6,38.7
	step
		Discover Singing Marshes |achieve 6969/14 |goto 25.0,43.6
	step
		Discover Stoneplow |achieve 6969/6 |goto 19.0,57.0
	step
		Discover Dustback Gorge |achieve 6969/2 |goto 13.0,75.5
	step
		Discover the Nesingwary Safari |achieve 6969/9 |goto 16.1,82.7
	step
		Discover Stormstout Brewery |achieve 6969/15 |goto 35.9,68.0
	step
		Discover The Imperial Granary |achieve 6969/4 |goto 52.4,63.0
	step
		Discover Winds' Edge |achieve 6969/1 |goto 50.1,75.1
// Krasarang
	step
		Discover Zhu's Watch |achieve 6975/16 |goto Krasarang Wilds 76.6,8.7
	step
		Discover Krasarang Cove |achieve 6975/5 |goto 80.6,25.6
	step
		Discover The Krasari Ruins |achieve 6975/6 |goto 68.5,22.8
	step
		Discover the Dojan River |achieve 6975/3 |goto 65.3,32.9
	step		
		Discover the Anglers Wharf |achieve 6975/1 |goto 68.0,44.2
	step
		Discover the Ruins of Dojan |achieve 6975/9 |goto 53.9,37.4
	step
		Discover The Deepwild |achieve 6975/12 |goto 45.5,31.8
	step
		Discover Crane Wing Refuge |achieve 6975/8 |goto 40.0,32.5
	step
		Discover the Temple of the Red Crane |achieve 6975/11 |goto 39.1,56.8
	step
		Discover Unga Ingoo |achieve 6975/15 |goto 43.3,90.2
	step
		Discover Nayeli Lagoon |achieve 6975/7 |goto 40.7,82.9
	step
		Discover the Cradle of Chi-Ji |achieve 6975/2 |goto 31.2,63.2
	step
		Discover The Southern Isle |achieve 6975/14 |goto 12.7,59.9
	step
		Discover the Ruins of Korja |achieve 6975/10 |goto 24.0,47.1
	step
		Discover Fallsong Village |achieve 6975/4 |goto 30.2,38.3
	step
		Discover The Forbidden Jungle |achieve 6975/13 |goto 14.1,39.0
// Kun-Lai
	step
		Discover Binan Village |achieve 6976/1 |goto Kun-Lai Summit 71.8,92.2
	step
		Discover Muskpaw Ranch |achieve 6976/8 |goto 68.1,73.2
	step
		Discover the Temple of the White Tiger |achieve 6976/11 |goto 68.6,46.6
	step
		Discover the Isle of Reckoning |achieve 6976/4 |goto 75.5,11.9
	step
		Discover Zouchin Village |achieve 6976/14 |goto 62.4,29.4
	step
		Discover the Valley of Emperors |achieve 6976/13 |goto 53.4,48.3
	step
		Discover Peak of Serenity |achieve 6976/9 |goto 49.3,42.9
	step
		Discover Shado-Pan Monastery |achieve 6976/10 |goto 36.7,47.9
	step
		Discover Mount Neverest |achieve 6976/7 |goto 44.5,55.9
	step
		Discover the Burlap Trail |achieve 6976/12 |goto 55.4,65.9
	step
		Discover Mogujia |achieve 6976/6 |goto 58.0,74.8
	step
		 Discover the Gate of the August Celestials |achieve 6976/3 |goto 55.5,92.0
	step
		Discover Firebough Nook |achieve 6976/2 |goto 45.4,86.2
	step
		Discover Kota Peak |achieve 6976/5 |goto 38.0,75.1
// Townlong
	step
		Discover Fire Camp Osul |achieve 6977/5 |goto Townlong Steppes 67.3,44.9
	step
		Discover Kri'vess |achieve 6977/2 |goto 56.1,53.5
	step
		Discover Niuzao Temple |achieve 6977/4 |goto 39.3,62.0
	step
		Discover Shan'ze Dao |achieve 6977/8 |goto Townlong Steppes 28.6,25.8
	step
		Discover Sra'vess |achieve 6977/10 |goto 26.3,39.1
	step
		Discover Shado-Pan Garrison |achieve 6977/7 |goto 49.2,71.0
	step
		Discover Sik'vess |achieve 6977/9 |goto 44.6,77.5
	step
		Discover Rensai's Watchpost |achieve 6977/3 |goto 54.3,79.0
	step
		Follow the path |goto 66.3,69.3 |only if walking --Check this 
		Discover the Slumprushes |achieve 6977/11 |goto 71.3,70.5
	step		
		Discover Hatred's Vice |achieve 6977/6 |goto 82.5,72.4
	step		
		Discover the Gao-Ran Battlefront |achieve 6977/1 |goto 75.5,82.5
// Dread
	step
		Discover Kypari Vor |achieve 6978/3 |goto Dread Wastes 63.2,18.4
	step
		Discover The Sunset Brewgarden |achieve 6978/10 |goto 50.5,12.2
	step
		Discover Rikkitun Village |achieve 6978/5 |goto 34.6,20.0
	step
		Discover the Heart of Fear |achieve 6978/1 |goto 39.6,35.0
	step
		Discover The Clutches of Shek'zeer |achieve 6978/9 |goto 46.2,34.5
	step
		Discover Klaxxi'vess |achieve 6978/2 |goto 53.6,34.9
	step
		Discover The Briny Muck |achieve 6978/8 |goto 38.7,62.2
	step
		Discover Zan'vess |achieve 6978/12 |goto 30.5,73.6
	step
		Discover Soggy's Gamble |achieve 6978/6 |goto 55.9,70.3
	step
		Discover Kypari Zar |achieve 6978/4 |goto 59.2,60.6
	step
		Discover Writhingwood |achieve 6978/11 |goto 66.0,42.2
	step		
		Discover Terace of Gurthan |achieve 6978/7 |goto 68.3,30.4
// Vale
	step
		Discover the Shrine of Seven Stars |achieve 6979/6 |goto Vale of Eternal Blossoms 86.4,62.5
	step
		Discover the Mogu'shan Palace |achieve 6979/3 |goto 79.1,36.1
	step
		Discover the Shrine of Two Moons |achieve 6979/9 |goto 62.0,22.6
	step
		Discover the Golden Pagoda |achieve 6979/7 |goto 56.7,43.2
	step
		Discover The Golden Stair |achieve 6979/5 |goto 44.2,15.2
	step
		Discover Whitepetal Lake |achieve 6979/10 |goto 40.5,47.0
	step		
		Discover the Ruins of Guo-Lai |achieve 6979/1 |goto 26.6,37.2
	step
		Discover The Five Sisters |achieve 6979/11 |goto 17.4,47.9
	step
		Discover the Setting Sun Garrison |achieve 6979/4 |goto 18.5,71.7
	step
		Discover Mistfall Village |achieve 6979/2 |goto 36.3,72.0
	step
		Discover the Tu Shen Burial Ground |achieve 6979/8 |goto 48.3,69.1
]])

------------------------------------------------------------------------------
-- Removed Achievements
------------------------------------------------------------------------------
--[=[
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\Chapter I: Trial of the Black Prince",{
	condition_end="achieved(7533)",
	description="Prove your worth to Wrathion and acquire a sha-touched gem upgrade.",
},[[
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\Chapter I: Trial of the Black Prince",
	step		
		talk Wrathion##64616
		accept The Strength of One's Foes##31473 |goto The Veiled Stair/0 54.5,72.6
		accept Trial of the Black Prince##31468 |goto The Veiled Stair/0 54.5,72.6
	step
		kill Krik'thik Needler##63976+, Krik'thik Locust-Guard##63974+
		Reach _Honored_ with the Black Prince |q 31468/1 |goto Vale of Eternal Blossoms/0 11.5,58.4
		|tip This will take a lot of grinding. You start out Neutral with The Black Prince, and you will have to gain about 6200 rep in order to reach Honored.
	step
		For this next quest, you will need to join raids
		|tip You can go through the raid finder to get these items.
		You will need to run _Mogu'shan Vaults_, _Heart of Fear_, and _Terrace of Endless Spring_ and kill bosses to get 10 _Sigil of Power_ and 10 _Sigil of Wisdom_
		collect 10 Sigil of Power##87208 |q 31473/1
		collect 10 Sigil of Wisdom##87209 |q 31473/2
	step
		talk Wrathion##64616
		turnin The Strength of One's Foes##31473 |goto The Veiled Stair/0 54.5,72.6
		turnin Trial of the Black Prince##31468 |goto The Veiled Stair/0 54.5,72.6
		accept Fear Itself##31481 |goto The Veiled Stair/0 54.5,72.6
	step
		This will require you to go into the _Terrace of Endless Spring_ and take down the _Sha of Fear_
		|tip You can use the Raid finder to take down this boss.
		kill Sha of Fear##60999 
		collect Chimera of Fear##87210 |q 31481/1 |goto Terrace of Endless Spring 39.1,48.3
	step
		talk Wrathion##64616
		turnin Fear Itself##31481 |goto The Veiled Stair/0 54.5,72.6
		accept Breath of the Black Prince##31482 |goto The Veiled Stair/0 54.5,72.6
	step
		talk Wrathion##64616
		turnin Breath of the Black Prince##31482 |goto The Veiled Stair/0 75.2,76.4
	step
		Congratulations, you have obtained the _Chapter 1: Trial of the Black Prince_ achievement!
]])

ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\Chapter II: Wrathion's War (Horde)",{
	condition_end="achieved(7533)",
	description="Prove your worth to Wrathion and acquire a sha-touched gem upgrade.",
},[[
	step
		talk Wrathion##64616
		accept A Test of Valor##32476 |goto The Veiled Stair/0 54.5,72.6
		accept The Measure of a Leader##32427 |goto The Veiled Stair/0 54.5,72.6
	step
		talk Wrathion##64616
		Talk to Wrathion about the Horde. |q 32427/1 |goto The Veiled Stair/0 54.5,72.6
	step
		talk Wrathion##64616
		turnin The Measure of a Leader##32427 |goto The Veiled Stair/0 54.5,72.6
		accept The Prince's Pursuit##32429 |goto The Veiled Stair/0 54.5,72.6
	step
		kill Lion's Landing Priest##67512+, Dwarven Mortar Team Engineer##67545+, Shieldwall Rifleman##67297+, Shieldwall Vindicator##67296+, Shieldwall Footman##67304+, Thane Stonehearth##67636+
		Gain _Revered_ status with The Black Prince |q 32429/1 |goto Krasarang Wilds/0 82.3,25.6
	step
		talk Wrathion##64616
		turnin The Prince's Pursuit##32429 |goto The Veiled Stair/0 54.5,72.6
	step
		You will need to acquire _3000 Valor Points_ from the time you pick up the _A Test of Valor_ quest.
		This quest will take around 3 weeks to complete if you hit the valor cap every week. 
		|tip Previous valor points you acquired before accepting this quest will not count.
		|achieve 8031/1
	step
		talk Wrathion##64616
		turnin A Test of Valor##32476 |goto The Veiled Stair/0 54.5,72.6
		accept Glory to the Horde##32431 |goto The Veiled Stair/0 54.5,72.6
		accept A Change of Command##32430 |goto The Veiled Stair/0 54.5,72.6
	step
		Open your PvP menu [H], go to the War Games Tab, and queue up for either _Temple of Kotmogu_ and _Silvershard Mines_. 
		|tip You will need to win a battle at both locations to complete this quest.
		Win a battle at _Temple of Kotmogu_. |q 32431/1
		Win a battle at _Silvershard Mines_. |q 32431/2
	step
		kill High Marshal Twinbraid##67801 |q 32430/1 |goto Krasarang Wilds 86.6,25.4
		|tip You may want to have someone help you to make this a little easier.
	step
		talk Wrathion##64616
		turnin Glory to the Horde##32431 |goto The Veiled Stair/0 54.5,72.6
		turnin A Change of Command##32430 |goto The Veiled Stair/0 54.5,72.6
		accept The Soul of the Horde##32432 |goto The Veiled Stair/0 54.5,72.6
	step
		talk Wrathion##64616
		turnin The Soul of the Horde##32432 |goto The Veiled Stair/0 54.9,72.6
	step
		Congratulations, you have obtained the _Chapter 2: Trial of the Black Prince_ achievement!
]])

ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\Chapter II: Wrathion's War (Alliance)",{
	condition_end="achieved(7533)",
	description="Prove your worth to Wrathion and acquire a sha-touched gem upgrade.",
},[[
	step
		talk Wrathion##64616
		accept A Test of Valor##32474 |goto The Veiled Stair/0 54.5,72.6
		accept The Measure of a Leader##32423 |goto The Veiled Stair/0 54.5,72.6
	step
		talk Wrathion##64616
		Talk to Wrathion about the Horde. |q 32423/1 |goto The Veiled Stair/0 54.5,72.6
	step
		talk Wrathion##64616
		turnin The Measure of a Leader##32423 |goto The Veiled Stair/0 54.5,72.6
		accept The Prince's Pursuit##32374 |goto The Veiled Stair/0 54.5,72.6
	step
		kill Grease Worker##67281+, Drudge Mook##67284+, Refining Specialist##67283+, Dominance Raider##67346+, Bilgewater Logger##67869+
		Earn _Revered_ status with The Black Prince |q 32374/1 |goto Krasarang Wilds/0 22.1,55.9
	step
		talk Wrathion##64616
		turnin The Prince's Pursuit##32374 |goto The Veiled Stair/0 54.5,72.6
	step
		You will need to acquire _3000 Valor Points_ from the time you pick up the _A Test of Valor_ quest.
		This quest will take around 3 weeks to complete if you hit the valor cap every week. 
		|tip Previous valor points you acquired before accepting this quest will not count.
		|achieve 8030/1
	step
		talk Wrathion##64616
		turnin A Test of Valor##32474 |goto The Veiled Stair/0 54.5,72.6
		accept The Lion Roars##32389 |goto The Veiled Stair/0 54.5,72.6
		accept A Change of Command##32388 |goto The Veiled Stair/0 54.5,72.6
	step
		Open your PvP menu [H], go to the War Games Tab, and queue up for either _Temple of Kotmogu_ and _Silvershard Mines_. 
		|tip You will need to win a battle at both locations to complete this quest.
		Win a battle at _Temple of Kotmogu_. |q 32389/1
		Win a battle at _Silvershard Mines_. |q 32389/2
	step
		kill Warlord Bloodhilt##67461 |q 32388/1 |goto Krasarang Wilds 12.2,54.6
		|tip You may want to have someone help you to make this a little easier.
	step
		talk Wrathion##64616
		turnin The Lion Roars##32389 |goto The Veiled Stair/0 54.5,72.6
		turnin A Change of Command##32388 |goto The Veiled Stair/0 54.5,72.6
		accept Call of the Packmaster##32390 |goto The Veiled Stair/0 54.5,72.6
	step
		talk Wrathion##64616
		turnin Call of the Packmaster##32390 |goto The Veiled Stair/0 54.9,72.6
	step
		Congratulations, you have obtained the _Chapter 2: Trial of the Black Prince_ achievement!
]])

ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\Chapter III: Two Princes",{
	condition_end="achieved(7533)",
	description="Prove your worth to Wrathion and acquire a sha-touched gem upgrade.",
},[[
	step
		talk Wrathion##64616
		accept Meet Me Upstairs##32590 |goto The Veiled Stair/0 54.5,72.6
	step 
		talk Wrathion##64616 |tip Upstairs in this Tavern.
		turnin Meet Me Upstairs##32590 |goto The Veiled Stair/0 54.6,71.8
		accept Secrets of the First Empire##32591 |goto The Veiled Stair/0 54.6,71.8
		accept I Need a Champion##32592 |goto The Veiled Stair/0 54.6,71.8
	step
		You can either _buy_ these _materials_ from the _ Auction House_ or _farm_ to obtain them:
		buy 40 Trillium Bar##102167 |next "done"
		Click here to farm these materials yourself |confirm |next |only if skill("Mining")>=600
	step
		map Townlong Steppes
		path	61.6,76.3	59.6,68.3	59.2,58.7
		path	63.3,51.7	62.2,44.1	66.8,39.5
		path	73.2,46.9	73.2,55.5	75.0,62.7
		path	70.5,67.1	68.5,70.7
		Follow the provided path.
		collect 80 Black Trillium Ore##72094
		collect 80 White Trillium Ore##72103
	step
		create 40 Trillium Bar##102167 |goto Shrine of Seven Stars/1 71.5,51.0
	step
	label "done"
		For this next quest, you will need to join raids. 
		|tip You can go through the raid finder to get these items.
		You will need to run _Throne of Thunder_ and _Siege of Orgrimmar_ and kill bosses to get 20 _Secrets of the Empire_.
		collect 20 Secrets of the Empire##94593
	step
		kill Animated Warrior##67473+, Shan'ze Bloodseeker##69431+, Shan'ze Animator##70069+
		Reach _Exalted_ with The Black Prince. |q 32592/1  |goto Isle of Thunder 43.0,55.2
	step
		talk Wrathion##64616
		turnin Secrets of the First Empire##32591 |goto The Veiled Stair/0 54.5,72.6
		turnin I Need a Champion##32592 |goto The Veiled Stair/0 54.5,72.6
		accept The Thunder Forge##32593 |goto The Veiled Stair/0 54.5,72.6
	step
		talk Wrathion##64616 |goto The Veiled Stair/0 54.5,72.6
		Tell him you're ready to go.
		|confirm
//INSERT SCENARIO INFORMATION HERE
	step
		talk Wrathion##64616
		turnin The Thunder Forge##32593 |goto The Veiled Stair/0 54.5,72.6
		accept Spirit of the Storm Lord##32594 |goto The Veiled Stair/0 54.5,72.6
	step
		Engage _Nalak_ and use your _Lightning Lance_ on him to charge it. |use Lightning Lance##95432
		kill Nalak##69099
		collect Tempered Lightning Lance##95433 |goto Isle of Thunder 60.0,37.4
	step
		talk Wrathion##64616
		turnin Spirit of the Storm Lord##32594 |goto The Veiled Stair/0 54.5,72.6
		accept The Crown of Heaven##32595 |goto The Veiled Stair/0 54.5,72.6
	step
		talk Wrathion##64616
		turnin The Crown of Heaven##32595 |goto The Veiled Stair/0 75.2,76.4
	step
		talk Wrathion##64616
		accept Echoes of the Titans##32596 |goto The Veiled Stair/0 54.5,72.6
		accept Heart of the Thunder King##32597 |goto The Veiled Stair/0 54.5,72.6
	step
		For this next quest, you will need to join raids. 
		|tip You can go through the raid finder to get these items.
		You will need to run _Throne of Thunder_ and _Siege of Orgrimmar_ and kill bosses to get 12 _Titan Runestones_.
		You will also need to kill _Lei Shen_ in the _Throne of Thunder_ and get the _Heart of the Thunder King_.
		collect 12 Titan Runestone##94594
		collect Heart of the Thunder King##94867 
	step
		talk Wrathion##64616
		turnin Echoes of the Titans##32596 |goto The Veiled Stair/0 54.5,72.6
		turnin Heart of the Thunder King##32597 |goto The Veiled Stair/0 54.5,72.6
	step
		Congratulations, you have obtained the _Chapter III: Trial of the Black Prince_ achievement!
]])

ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\Chapter IV: Two Princes",{
	condition_end="achieved(7533)",
	description="Prove your worth to Wrathion and acquire a sha-touched gem upgrade.",
},[[
	step
		talk Wrathion##64616
		accept A Reckoning##32598 |goto The Veiled Stair/0 54.5,72.6
	step 
		talk Wrathion##64616
		turnin A Reckoning##32598 |goto The Veiled Stair/0 54.5,72.6
		accept Celestial Blessings##32805 |goto The Veiled Stair/0 54.5,72.6
	step
		Click here if you wish to do the _Healing_ challenge. |confirm |next "heals"
		Click here if you wish to do the _Tanking_ challenge. |confirm |next "tank"
		Click here if you wish to do the _Melee DPS_ challenge. |confirm |next "meldps"
		Click here if you wish to do the _Ranged DPS_ challenge. |confirm |next "randps"
	step
	label "heals"
		talk Yu'lon##70989
		Speak with Yu'lon |q 32805/1 |goto The Jade Forest 59.2,59.4
	step
		talk Xuen##71107
		Speak with Xuen |q 32805/3 |goto Kun-Lai Summit 68.8,43.0
	step
		talk Niuzao##71144
		Speak with Niuzao |q 32805/4 |goto Townlong Steppes 41.8,59.2
	step
		talk Chi-Ji##71169
		Speak with Chi-Ji |q 32805/2 |goto Krasarang Wilds 40.4,53.4
	step
		talk Chi-Ji##71169 |goto Krasarang Wilds 40.4,53.4
		Accept Chi-Ji's challenge
		|confirm
	step
		During this challenge, you will be fighting the humanoid Deathwing alongside Wrathion. You will need to keep both Wrathion and yourself alive during this fight. Deathwing has 4 main abilities:
		_Eyes of the Destroyer_ will cause Deathwing to fixate on Wrathion. Deathwing deals bonus damage to Wrathion, so heal him as much as possible.
		_Molten Fury_ is a stacking DoT that will be cast on you every time you are struck by Deathwing.
		_Reign of Fire_ summons a large fire storm which does a lot of damage. This attack is fairly easy to avoid.
		_Blood of the Deathborn_ is an interruptable spell, that will spawn a pool of dark red, and deal a ton of damage.
		Defeat Deathwing alongside Wrathion. |q 32805/5
	step
		talk Wrathion##71404
		turnin Celestial Blessings##32805 |goto Krasarang Wilds 40.4,54.2
		|next "chalcomp"
	step
	label "tank"
		talk Xuen##71107
		Speak with Xuen |q 32805/3 |goto Kun-Lai Summit 68.8,43.0
	step
		talk Yu'lon##70989
		Speak with Yu'lon |q 32805/1 |goto The Jade Forest 59.2,59.4
	step
		talk Chi-Ji##71169
		Speak with Chi-Ji |q 32805/2 |goto Krasarang Wilds 40.4,53.4
	step
		talk Niuzao##71144
		Speak with Niuzao |q 32805/4 |goto Townlong Steppes 41.8,59.2
	step
		talk Niuzao##71144 |goto Townlong Steppes 41.8,59.2
		Accept Niuzao's challenge
		|confirm
	step
		During this challenge, you will be fighting the humanoid Deathwing alongside Wrathion. You will need to keep both Wrathion and yourself alive during this fight. Deathwing has 4 main abilities:
		_Eyes of the Destroyer_ will cause Deathwing to fixate on Wrathion. Deathwing deals bonus damage to Wrathion, so taunt him when this is casted.
		_Molten Fury_ is a stacking DoT that will be cast on you every time you are struck by Deathwing.
		_Reign of Fire_ summons a large fire storm which does a lot of damage. This attack is fairly easy to avoid.
		_Blood of the Deathborn_ is an interruptable spell, that will spawn a pool of dark red, and deal a ton of damage.
		Defeat Deathwing alongside Wrathion. |q 32805/5
	step
		talk Wrathion##71387
		turnin Celestial Blessings##32805 |goto Townlong Steppes 41.4,59.6
		|next "chalcomp" 
	step
	label "meldps"
		talk Yu'lon##70989
		Speak with Yu'lon |q 32805/1 |goto The Jade Forest 59.2,59.4
	step
		 
		talk Chi-Ji##71169
		Speak with Chi-Ji |q 32805/2
	step
		talk Niuzao##71144
		Speak with Niuzao |q 32805/4 |goto Townlong Steppes 41.8,59.2
	step
		talk Xuen##71107
		Speak with Xuen |q 32805/3 |goto Kun-Lai Summit 68.8,43.0
	step
		talk Xuen##71107 |goto Kun-Lai Summit 68.8,43.0
		Accept Xuen's challenge
		|confirm
	step
		During this challenge, you will be fighting against Wrathion. You will need to keep yourself alive during this fight, and dps Wrathion as much as possible. He has roughly 31 million health. Wrathion has 5 main abilities:
		_Blindside_ allows you to do bonus damage to Wrathion while you're behind him. Take advantage of this as much as possible.
		_Crumbling Arc_ is a frontal cone attack that will deal roughly 200k to you. Move out of this immediately.
		_Reign of Fire_ summons a large fire storm which does a lot of damage. This attack is fairly easy to avoid.
		_Blood of the Deathborn_ is an interruptable spell, that will spawn a pool of dark blood, and deal a ton of damage. Run out of this if you can't interrupt it.
		Defeat Wrathion. |q 32805/5
	step
		talk Wrathion##71317
		turnin Celestial Blessings##32805 |goto Kun-Lai Summit 68.8,43.4
		|next "chalcomp"
	step
	label "randps"
		talk Xuen##71107
		Speak with Xuen |q 32805/3 |goto Kun-Lai Summit 68.8,43.0
	step
		talk Niuzao##71144
		Speak with Niuzao |q 32805/4 |goto Townlong Steppes 41.8,59.2
	step
		talk Chi-Ji##71169
		Speak with Chi-Ji |q 32805/2 |goto Krasarang Wilds 40.4,53.4
	step
		talk Yu'lon##70989
		Speak with Yu'lon |q 32805/1 |goto The Jade Forest 59.2,59.4
	step
		talk Yu'lon##70989 |goto The Jade Forest 59.2,59.4
		Accept Yu'lon's challenge 
		|confirm
	step
		During this challenge, you will be fighting against Wrathion. You will need to keep yourself alive during this fight, and dps Wrathion as much as possible. He has roughly 31 million health. Wrathion has 5 main abilities:
		_Blindside_ allows you to do bonus damage to Wrathion while you're behind him. Take advantage of this as much as possible.
		_Crumbling Arc_ is a frontal cone attack that will deal roughly 200k to you. Move out of this immediately.
		_Reign of Fire_ summons a large fire storm which does a lot of damage. This attack is fairly easy to avoid.
		_Blood of the Deathborn_ is an interruptable spell, that will spawn a pool of dark blood, and deal a ton of damage. Run out of this if you can't interrupt it.
		Defeat Wrathion. |q 32805/5
	step
		talk Wrathion##71352
		turnin Celestial Blessings##32805 |goto The Jade Forest 58.6,59.2
		|next "chalcomp"
	step
	label "chalcomp"
		talk Wrathion##71424
		accept Cloak of Virtue##32861 |goto The Veiled Stair 73.2,79.4
	step
		talk Wrathion##71424
		turnin Cloak of Virtue##32861 |goto The Veiled Stair 75.2,76.4
		accept Preparing to Strike##32870 |goto The Veiled Stair 75.2,76.4
	step
		Congratulations, you have obtained the _Chapter IV: Celestial Blessings_ achievement!
]])

ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Mists of Pandaria\\Chapter V: Judgement of the Black Prince",{
	condition_end="achieved(7533)",
	description="Prove your worth to Wrathion and acquire a sha-touched gem upgrade.",
},[[
	step
		talk Wrathion##64616
		turnin Preparing to Strike##32870 |goto The Veiled Stair/0 54.5,72.6
		accept A Timeless Discovery##33088 |goto The Veiled Stair/0 54.5,72.6
	step
		talk Wrathion##72695
		turnin A Timeless Discovery##33088 |goto Timeless Isle/0 34.4,53.9
		accept Secrets of the Timeless Isle##33098 |goto Timeless Isle/0 34.4,53.9
		accept The Emperor's Way##33100 |goto Timeless Isle/0 34.4,53.9
	step
		Kill any creatures on the Timeless Isle, and loot treasure chests to get Timeless Coins.
		earn 5000 Timeless Coin##777 |q 33098/1
	step
		You will need a very large group of people on your faction to help you with this quest.
		|confirm
	step
		kill Yu'lon##71955+ |q 33100/1 |goto Timeless Isle/0 38.1,54.7
		kill Niuzao##71954+ |q 33100/4 |goto Timeless Isle/0 38.1,54.7
		kill Chi-Ji##71952+ |q 33100/2 |goto Timeless Isle/0 38.1,54.7
		kill Xuen##71953+ |q 33100/3 |goto Timeless Isle/0 38.1,54.7
	step
		talk Wrathion##72695
		turnin Secrets of the Timeless Isle##33098 |goto Timeless Isle/0 34.4,53.9
		turnin The Emperor's Way##33100 |goto Timeless Isle/0 34.4,53.9
		accept A Pandaren Legend##33104 |goto Timeless Isle/0 34.4,53.9
	step
		talk Wrathion##72695
		turnin A Pandaren Legend##33104 |goto Vale of Eternal Blossoms 83.2,29.6
		accept Judgement of the Black Prince##33105 |goto Vale of Eternal Blossoms 83.2,29.6
	step
		Use the Timeless Essence of the Black Dragonflight on your Epic Cape you got previously. |use Timeless Essence of the Black Dragonflight##102457
		|confirm
	step
		For this next quest, you will need to join a _Siege of Orgrimmar_ raid. 
		|tip You can go through the raid finder to get these items.
		You will need to run the _Siege of Orgrimmar_ and kill _Garrosh Hellscream_ at the end.
		kill Garrosh Hellscream##71865 |q 33105/1
	step
		talk Wrathion##72695
		turnin Judgement of the Black Prince##33105 |goto Vale of Eternal Blossoms 83.2,29.6
	step
		Congratulations, you have obtained the _Chapter V: Judgement of the Black Prince_ achievement!
]])

ZygorGuidesViewer:RegisterGuide("Achievement Guides\\FARMING",{},[[
//INSTANCE // // TIME PER RUN
//-------------------------------
//COMPLETE
//-------------------------------
//Scarlet Monastery (6m 1s)
	step
		Run through the Scarlet Monastery dungeon, killing all mobs along the way. |goto Scarlet Monastery/1 75.7,45.8
		collect 60 Soul Dust##11083
		collect 10 Lesser Mystic Essence##11134
		collect 40 Small Glowing Shard##11138
		collect 820 Silk Cloth##4306
		collect 20 Wool Cloth##2592
		|meta crap_items_follow=1
		collect 50 Stormwind Brie##1707
//Scarlet Halls (5m 36s)
	step
		Run through the Scarlet Halls dungeon, killing all mobs along the way. |goto Scarlet Halls/1 34.3,90.1
		collect 32 Greater Astral Essence##11082 
		collect 86 Soul Dust##11083
		collect 43 Small Glowing Shard##11138
		collect 289 Silk Cloth##4306
		collect 86 Wool Cloth##2592
		|meta crap_items_follow=1
		collect 96 Thick Furry Mane##4583
		collect 182 Lean Wolf Flank##1015
		collect 139 Ruined Pelt##4865
//Scholomance (7m 29s)
	step
		Run through the Scholomance dungeon, killing all mobs along the way. |goto Scholomance/1 18.1,60.9
		collect 48 Small Radiant Shard##11177
		collect 88 Vision Dust##11137
		collect 216 Mageweave Cloth##4338
		|meta crap_items_follow=1
		collect 312 Soft Banana Bread##4601
		collect 152 Moonberry Juice##1645
		collect 144 Bone Fragments##22526
//Stratholme (9m 48s)
	step
		Run through the Stratholme dungeon, killing all mobs along the way. |goto Stratholme/1 68.02,88.46
		collect 42 Large Radiant Shard##11178
		collect 24 Vision Dust##11137
		collect 24 Dream Dust##11176
		collect 6 Small Brilliant Shard##14343
		collect 1032 Mageweave Cloth##4338
		collect 30 Ichor of Undeath##7972
		collect 18 Righteous Orb##12811
		|meta crap_items_follow=1
		collect 222 Moonberry Juice##1645
		collect 222 Superior Healing Potion##3928
		collect 96 Greater Mana Potion##6149
		collect 168 Bone Fragments##22526
		collect 54 Nightcrawlers##6530
		collect 474 Raw Black Truffle##4608
		collect 102 Fine Aged Cheddar##3927
//Shadowfang Keep (9m 47s)
	step
		Run through the Scholomance dungeon, killing all mobs along the way. |goto Shadowfang Keep 69.46,60.97
		collect 78 Strange Dust##10940
		collect 18 Greater Magic Essence##10939
		collect 42 Small Glimmering Shard##10978
		collect 24 Lesser Astral Essence##10998
		collect 432 Wool Cloth##2592
		collect 12 Silk Cloth##4306
		collect 204 Linen Cloth##2589
		collect 42 Copper Ore##2770
		|meta crap_items_follow=1
		collect 24 Spongy Morel##4606
//Stockade (4m 16s)
	step
		Run through the Scholomance dungeon, killing all mobs along the way. |goto The Stockade 50.1,68.1
		collect 56 Small Glimmering Shard##10978
		collect 140 Strange Dust##10940
		collect 840 Wool Cloth##2592
		collect 420 Linen Cloth##2589
		collect 70 Silk Cloth##4306
		|meta crap_items_follow=1
		collect 84 Healing Potion##929
		collect 252 Melon Juice##1205
		collect 84 Inert Elemental Particle##55974
		collect 126 Inert Elemental Granule##55982
		collect 112 Inert Elemental Grain##55975
		collect 98 Inert Elemental Flake##55978
		collect 504 Mutton Chop##3770
		collect 84 Lesser Mana Potion##3385
//The Deadmines (7m 16s)
	step
		Run through the Deadmines dungeon, killing all mobs along the way. |goto The Deadmines/1 26.5,13.4
		collect 149 Strange Dust##10940
		collect 33 Greater Magic Essence##10939
		collect 58 Small Glimmering Shard##10978
		collect 8 Lesser Magic Essence##10938
		collect 289 Wool Cloth##2592
		collect 339 Linen Cloth##2589
		collect 25 Tigerseye##818
		collect 33 Copper Ore##2770
		|meta crap_items_follow=1
		collect 50 Haunch of Meat##2287
		collect 50 Dalaran Sharp##414
		collect 41 Ice Cold Milk##1179
//Gnomeregan (14m 11s)
	step
		Run through the Deadmines dungeon, killing all mobs along the way. |goto Gnomeregan 64.33,28.96
		collect 17 Large Glimmering Shard##11084
		collect 25 Vision Dust##11137
		collect 34 Greater Astral Essence##11082
		collect 415 Silk Cloth##4306
		collect 157 Wool Cloth##2592
		|meta crap_items_follow=1
		collect 165 Grime-Encrusted Object##9308
		collect 51 Moist Cornbread##4542
		collect 25 Mutton Chop##3770
		collect 25 Lesser Mana Potion##3385
		collect 8 Healing Potion##929
//Uldaman (9m 20s)
	step
		Run through the Uldaman dungeon, killing all mobs along the way. |goto Uldaman 67.03,72.71
		collect 13 Greater Mystic Essence##11135
		collect 84 Vision Dust##11137
		collect 6 Small Glowing Shard##11138
		collect 39 Large Glowing Shard##11139
		collect 412 Silk Cloth##4306
		collect 26 Deeprock Salt##8150
		collect 219 Mageweave Cloth##4338
		collect 58 Solid Stone##7912
		collect 96 Mystery Meat##12037
		|meta crap_items_follow=1
		collect 13 Super Healing Potion##22829
		collect 13 Soft Banana Bread##4601
		collect 19 Moonberry Juice##1645
		collect 26 Shiny Pebble##54831
		collect 64 Broken Scorpid Leg##4867
		collect 26 Broken Basilisk Teeth##11384
//Blackrock Depths (12m 55s) 4.65
	step
		Run through the Blackrock Depths dungeon, killing all mobs along the way. |goto Blackrock Depths 34.7,77.8
		collect 153 Illusion Dust##16204
		collect 37 Large Brilliant Shard##14344
		collect 9 Greater Eternal Essence##16203
		collect 1051 Runecloth##14047
		collect 33 Thick Spider's Silk##4337
		collect 23 Ironweb Spider Silk##14227
		collect 33 Shadow Silk##10285
		collect 23 Mystery Meat##12037
		|meta crap_items_follow=1
		collect 70 White Spider Meat##12205
		collect 56 Tender Wolf Meat##12208
		collect 60 Red Wolf Meat##12203
		collect 14 Spider Palp##4428
		collect 33 Dripping Spider Mandible##4585
		collect 214 Immature Venom Sac##12586
		collect 9 Greater Mana Potion##6149
		collect 33 Major Mana Potion##13444
		collect 42 Roasted Quail##8952
//Blackrock Spire (12m 4s) 4.97
	step
		Run through the Blackrock Spire dungeon, killing all mobs along the way. |goto Blackrock Spire/4 26.77,38.23
		collect 25 Greater Eternal Essence##16203
		collect 45 Large Brilliant Shard##14344
		collect 35 Illusion Dust##16204
		collect 338 Runecloth##14047
		|meta crap_items_follow=1
		collect 15 Fiery Gland##4557
		collect 10 Major Healing Potion##13446
		collect 35 Roasted Quail##8952
		collect 25 Morning Glory Dew##8766
		collect 10 Major Mana Potion##13444
//The Shattered Halls (6m 27s) 9.30
	step
		Run through the Shattered Halls dungeon, killing all mobs along the way. |goto The Shattered Halls/1 61.14,92.81
		collect 65 Greater Planar Essence##22446
		collect 214 Arcane Dust##22445
		collect 37 Large Prismatic Shard##22449
		collect 697 Netherweave Cloth##21877
		|meta crap_items_follow=1
		collect 93 Wretched Ichor##25445
		collect 65 Broken Skull##25447
		collect 28 Smoked Talbuk Venison##27854
		collect 28 Purified Draenic Water##27860
//Throne of Tides (11m 30s) 5.22
	step
		Run through the Throne of the Tides dungeon, killing all mobs along the way. |goto Throne of the Tides/1 49.85,88.23
		collect 31 Small Heavenly Shard##52720
		collect 16 Hypnotic Dust##52555
		collect 5 Lesser Celestial Essence##52718
		collect 73 Embersilk Cloth##53010
		|meta crap_items_follow=1
		collect 10 Sliced Raw Billfish##58262
		collect 31 Ruined Embersilk Scraps##68198
		collect 63 Abyssal Clam##52340
		collect 57 Shiny Fish Scales##17057
		collect 5 Greasy Whale Milk##59029
		collect 57 Fish Oil##17058
//The Slave Pens (7m 15s) 8.28
	step
		Run through the Slave Pens dungeon, killing all mobs along the way. |goto The Slave Pens 19.95,13.37
		collect 17 Lesser Planar Essence##22447
		collect 25 Small Prismatic Shard##22448
		collect 75 Arcane Dust##22445
		collect 207 Netherweave Cloth##21877
		|meta crap_items_follow=1
		collect 282 Jaggal Clam##24476
		collect 240 Shiny Fish Scales##17057
		collect 17 Tarnished Plate Helmet##25386
		collect 199 Fish Oil##17058
		collect 248 Grime-Encrusted Scale##25429
		collect 108 Ripped Fin##25431
		collect 25 Major Healing Potion##13446
		collect 66 Sunspring Carp##27858
		collect 17 Filtered Draenic Water##28399
//The Steamvault (6m 50s) 8.78
	step
		Run through the Steamvault dungeon, killing all mobs along the way. |goto The Steamvault 17.59,29.76
		collect 35 Large Prismatic Shard##22449
		collect 105 Arcane Dust##22445
		collect 9 Greater Planar Essence##22446
		collect 158 Mote of Water##22578
		collect 53 Mote of Life##22575
		|meta crap_items_follow=1
		collect 158 Coilfang Armaments##24368
		collect 158 Elemental Fragment##24508
		collect 211 Jaggal Clam##24476
		collect 193 Shiny Fish Scales##17057
		collect 35 Primordial Essence##24511
		collect 44 Sunspring Carp##27858
		collect 140 Fish Oil##17058
		collect 61 Swamp Moss##25451
		collect 17 Death Cap Fungus##25453
//The Underbog (8m 26s) 7.11
	step
		Run through the Underbog dungeon, killing all mobs along the way. |goto The Underbog 29.68,67.88
		collect 28 Small Prismatic Shard##22448
		collect 142 Arcane Dust##22445
		collect 14 Lesser Planar Essence##22447
		collect 185 Netherweave Cloth##21877
		collect 92 Mote of Life##22575
		collect 7 Living Essence##12803
		collect 149 Sanguine Hibiscus##24246
		|meta crap_items_follow=1
		collect 434 Creeping Moss##25450
		collect 242 Blighted Fungus##25452
		collect 21 Luminescent Globe##25454
		collect 14 Fish Oil##17058
		collect 21 Jaggal Clam##24476
		collect 128 Glowing Spores##25456
		collect 57 Pheromone Sample##56205
		collect 107 Insect Nociceptor Sample##56206
//Mana-Tombs (5m 51s) 10.26
	step
		Run through the Mana Tombs dungeon, killing all mobs along the way. |goto Mana-Tombs 33.52,17.29
		collect 31 Small Prismatic Shard##22448 
		collect 92 Lesser Planar Essence##22447
		collect 103 Arcane Dust##22445
		collect 687 Netherweave Cloth##21877
		collect 82 Mote of Shadow##22577
		|meta crap_items_follow=1
		collect 195 Shredded Wyrm Wing##28058
		collect 51 Iridescent Eye##28059
		collect 72 Smoked Talbuk Venison##27854
		collect 31 Filtered Draenic Water##28399
//Auchenai Crypts (5m 58s) 10.06
	step
		Run through the Auchenai Crypts dungeon, killing all mobs along the way. |goto Auchenai Crypts/1 44.12,75.10
		collect 40 Large Prismatic Shard##22449
		collect 50 Lesser Planar Essence##22447
		collect 483 Netherweave Cloth##21877
		|meta crap_items_follow=1
		collect 30 Mag'har Grainbread##27855
//Sethekk Halls (4m 15s) 14.12
	step
		Run through the Sethekk Halls dungeon, killing all mobs along the way. |goto Sethekk Halls 73.35,36.47
		collect 56 Large Prismatic Shard##22449
		collect 42 Greater Planar Essence##22446
		collect 127 Arcane Dust##22445
		collect 537 Netherweave Cloth##21877
		collect 99 Light Feather##17056
		|meta crap_items_follow=1
		collect 678 Brilliant Feather##25426
		collect 56 Super Healing Potion##22829
		collect 155 Savage Talon##25428
		collect 28 Serpent Flesh##31671
		collect 42 Iridescent Scale##30812
		collect 56 Spirit Shard##28558
//Shadow Labyrinth (6m 59s) 8.59
	step
		Run through the Shadow Labyrinth dungeon, killing all mobs along the way. |goto Shadow Labyrinth 22.01,12.45
		collect 43 Large Prismatic Shard##22449
		collect 34 Greater Planar Essence##22446
		collect 146 Arcane Dust##22445
		collect 722 Netherweave Cloth##21877
		|meta crap_items_follow=1
		collect 515 Mark of Sargeras##30809
		collect 86 Fel Armament##29740
		collect 17 Smoked Talbuk Venison##27854
		collect 34 Purified Draenic Water##27860
		collect 17 Super Healing Potion##22829
		collect 69 Spirit Shard##28558
//The Mechanar (5m 36s) 10.71
	step
		Run through the Mechanar dungeon, killing all mobs along the way. |goto The Mechanar/1 49.41,83.51
		collect 64 Large Prismatic Shard##22449
		collect 161 Arcane Dust##22445
		collect 11 Greater Planar Essence##22446
		collect 568 Netherweave Cloth##21877
		|meta crap_items_follow=1
		collect 86 Bottled Nethergon Energy##32902
		collect 139 Mark of Sargeras##30809
		collect 43 Mag'har Grainbread##27855
		collect 21 Bottled Nethergon Vapor##32905
		collect 171 Sunfury Signet##30810
//The Arcatraz (9m 2s) 6.64
	step
		Run through the Arcatraz dungeon, killing all mobs along the way. |goto The Arcatraz/1 41.26,81.70
		collect 33 Large Prismatic Shard##22449 
		collect 33 Arcane Dust##22445
		collect 13 Greater Planar Essence##22446
		collect 106 Netherweave Cloth##21877
		collect 86 Mote of Shadow##22577
		|meta crap_items_follow=1
		collect 33 Sunfury Signet##30810
		collect 40 Gnarled Claw##25421
		collect 60 Lifeless Tendril##29799
		collect 13 Evil Eye##29800
		collect 13 Purified Draenic Water##27860
		collect 60 Bottled Nethergon Energy##32902
		collect 166 Razor Sharp Fang##25418
//The Botanica (6m 7s) 9.81
	step
		Run through the Botanica dungeon, killing all mobs along the way. |goto The Botanica/1 89.59,41.09
		collect 57 Large Prismatic Shard##22449
		collect 39 Greater Planar Essence##22446
		collect 196 Arcane Dust##22445
		collect 657 Netherweave Cloth##21877
		|meta crap_items_follow=1
		collect 29 Arcane Tome##29739
		collect 157 Brilliant Feather##25426
		collect 59 Serrated Petal##18223
		collect 39 Gnarled Claw##25421
		collect 20 Mag'har Grainbread##27855
		collect 137 Razor Sharp Fang##25418
		collect 186 Thorny Vine##18222
		collect 294 Sunfury Signet##30810
		collect 128 Bottled Nethergon Energy##32902
		collect 98 Bottled Nethergon Vapor##32905
		collect 461 Lasher Blossom##18224
//Magisters' Terrace (7m 22s) 8.14
	step
		Run through the Magisters' Terrace dungeon, killing all mobs along the way. |goto Magisters' Terrace/2 42.53,90.01
		collect 16 Void Crystal##22450
		collect 33 Large Prismatic Shard##22449
		collect 81 Arcane Dust##22445
		collect 16 Greater Planar Essence##22446
		collect 358 Netherweave Cloth##21877
		|meta crap_items_follow=1
		collect 33 Mag'har Grainbread##27855
		collect 16 Elemental Fragment##24508
		collect 24 Glimmering Scale##25430
		collect 16 Purified Draenic Water##27860
//The Oculus (8m 24s) 7.14
	step
		Run through the Oculus dungeon, killing all mobs along the way. |goto The Oculus 61.30,47.58
		collect 36 Dream Shard##34052
		collect 7 Greater Cosmic Essence##34055
		collect 57 Infinite Dust##34054
		collect 29 Crystallized Fire##37702
		collect 29 Crystallized Water##37705
		collect 29 Frostweave Cloth##33470
		|meta crap_items_follow=1
		collect 207 Scintillating Stone Shard##39209
		collect 271 Frosted Claw##33631
		collect 93 Icicle Fang##33632
		collect 36 Shattered Stone##39210
		collect 21 Thick Fur Clothing Scraps##43852
		collect 50 Rubicund Scale##39567
		collect 50 Hoary Crytals##39512
		collect 21 Poached Emperor Salmon##35951
		collect 21 Serrated Fang##39211
		collect 14 Efflorescing Shards##39513
//Azjol-Nerub (4m 4s) 14.75
	step
		Run through the Azjol-Nerub dungeon, killing all mobs along the way. |goto Azjol-Nerub/3 9.44,93.32
		collect 44 Small Dream Shard##34053
		collect 29 Lesser Cosmic Essence##34056
		collect 88 Infinite Dust##34054
		|meta crap_items_follow=1
		collect 14 Super Healing Potion##22829
		collect 14 Thick Fur Clothing Scraps##43852
//Ahn'Kahet: The Old Kingdom (6m 57s) 8.63
	step
		Run through the Ahn'Kahet: The Old Kingdom dungeon, killing all mobs along the way. |goto Ahn'kahet: The Old Kingdom 88.99,79.12
		collect 35 Dream Shard##34052
		collect 17 Lesser Cosmic Essence##34056
		collect 242 Frostweave Cloth##33470
		|meta crap_items_follow=1
		collect 9 Super Mana Potion##22832
		collect 43 Thick Fur Clothing Scraps##43852
		collect 268 Frosty Spinneret##33629
		collect 26 Honey-Spiced Lichen##33452
		collect 17 Pungent Seal Whey##33444
		collect 52 Icy Fang##33630
//The Violet Hold (7m 39s) 7.84
	step
		Run through the Violet Hold dungeon, killing all mobs along the way. |goto The Violet Hold 46.15,98.03
		collect 55 Dream Shard##34052
		collect 63 Infinite Dust##34054
		collect 94 Frostweave Cloth##33470
		|meta crap_items_follow=1
		collect 71 Thick Fur Clothing Scraps##43852
//Forge of Souls (6m 12s) 9.68
	step
		Run through the Forge of Souls dungeon, killing all mobs along the way. |goto The Forge of Souls 66.05,88.89
		collect 29 Abyss Crystal##34057
		collect 58 Infinite Dust##34054
		collect 10 Greater Cosmic Essence##34055
		collect 223 Frostweave Cloth##33470
		|meta crap_items_follow=1
		collect 19 Runic Healing Potion##33447
		collect 19 Thick Fur Clothing Scraps##43852
//Pit of Saron (8m 53s) 6.75
	step
		Run through the Pit of Saron dungeon, killing all mobs along the way. |goto Pit of Saron 40.91,80.52
		collect 27 Abyss Crystal##34057
		collect 7 Greater Cosmic Essence##34055
		collect 142 Infinite Dust##34054
		collect 94 Frostweave Cloth##33470
		|meta crap_items_follow=1
		collect 121 Thick Fur Clothing Scraps##43852
		collect 13 Honeymint Tea##33445
		collect 13 Sparkling Frostcap##35947
//Halls of Reflection (10m 48s) 5.56
	step
		Run through the Halls of Reflection dungeon, killing all mobs along the way. |goto Halls of Reflection 47.33,80.81
		collect 22 Abyss Crystal##34057
		collect 78 Infinite Dust##34054
		collect 17 Frostweave Cloth##33470
		|meta crap_items_follow=1
		collect 39 Thick Fur Clothing Scraps##43852
		collect 11 Sparkling Frostcap##35947
//Halls of Stone (11m 58s) 5
	step
		Run through the Halls of Stone dungeon, killing all mobs along the way. |goto Halls of Stone 34.4,36.2
		collect 30 Dream Shard##34052
		collect 5 Small Dream Shard##34053
		collect 100 Infinite Dust##34054
		collect 5 Greater Cosmic Essence##34055
		collect 170 Frostweave Cloth##33470
		|meta crap_items_follow=1
		collect 220 Relic of Ulduar##42780
		collect 10 Honeymint Tea##33445
		collect 45 Shattered Stone##39210
		collect 15 Salted Venison##33454
//Halls of Lightning (8m 8s) 7.38
	step
		Run through the Halls of Lightning dungeon, killing all mobs along the way. |goto Halls of Lightning 7.38,53.81
		collect 59 Dream Shard##34052 (5 from bosses)
		collect 66 Greater Cosmic Essence##34055
		collect 192 Infinite Dust##34054
		collect 207 Frostweave Cloth##33470
		collect 37 Crystallized Fire##37702
		collect 30 Crystallized Water##37705
		collect 30 Crystallized Air##37700
		|meta crap_items_follow=1
		collect 605 Relic of Ulduar##42780
		collect 244 Scintillating Stone Shard##39209
		collect 15 Honeymint Tea##33445
		collect 52 Thick Fur Clothing Scraps##43852
		collect 517 Hoary Crystals##39512
		collect 52 Efflorescing Shards##39513
		collect 30 Salted Venison##33454
//Drak'Tharon Keep (6m 28s) 9.28
	step
		Run through the Drak'tharon Keep dungeon, killing all mobs along the way. |goto Drak'Tharon Keep 29.38,80.96
		collect 37 Dream Shard##34052
		collect 130 Infinite Dust##34054
		collect 37 Lesser Cosmic Essence##34056
		collect 176 Frostweave Cloth##33470
		collect 19 Iceweb Spider Silk##42253
		|meta crap_items_follow=1
		collect 19 Honey-Spiced Lichen##33452
		collect 93 Bent Raptor Talon##44782
		collect 37 Thick Fur Clothing Scraps##43852
		collect 19 Vicious Fang##33546
		collect 74 Icy Fang##33630
		collect 28 Pungent Seal Whey##33444
		collect 93 Frosty Spinneret##33629
		collect 37 Barbed Fang##33569
		collect 28 Rending Talon##33571
		collect 28 Blood-Soaked Raptor War Feather##44783
//Utgarde Pinnacle (9m 24s) 6.38
	step
		Run through the Utgarde Pinnacle dungeon, killing all mobs along the way. |goto Utgarde Pinnacle 44.49,16.12
		collect 32 Dream Shard##34052
		collect 70 Infinite Dust##34054
		collect 19 Greater Cosmic Essence##34055
		collect 26 Worg Haunch##43011
		collect 108 Frostweave Cloth##33470
		|meta crap_items_follow=1
		collect 26 Thick Fur Clothing Scraps##
		collect 13 Honeymint Tea##33445
		collect 115 Serrated Fang##39211
//Utgarde Keep (6m 33s) 9.16
	step
		Run through the Utgarde Keep dungeon, killing all mobs along the way. |goto Utgarde Keep 69.27,73.00
		collect 37 Small Dream Shard##34053
		collect 55 Lesser Cosmic Essence##34056
		collect 46 Infinite Dust##34054
		collect 27 Worg Haunch##43011
		collect 128 Frostweave Cloth##33470
		|meta crap_items_follow=1
		collect 46 Vicious Fang##33546
		collect 27 Fur-Clothing Scraps##43851
		collect 27 Salted Venison##33454
		collect 18 Super Healing Potion##22829
		collect 27 Pungent Seal Whey##33444
		collect 18 Hardened Claw##33547
		collect 165 Caustic Claw##39532
//Blackrock Caverns (9m 13s) 6.51
	step
		Run through the Blackrock Caverns dungeon, killing all mobs along the way. |goto Blackrock Caverns 32.02,70.10
		collect 33 Hypnotic Dust##52555
		collect 46 Small Heavenly Shard##52720
		collect 124 Embersilk Cloth##53010
		collect 20 Volatile Fire##52325
		|meta crap_items_follow=1
		collect 59 Ruined Embersilk Scraps##68198
		collect 26 Roasted Beef##58268
//Lost City of the Tol'vir (10m 35s) 5.67
	step
		Run through the Lost City of Tol'vir dungeon, killing all mobs along the way. |goto Lost City of the Tol'vir 31.78,16.78
		collect 28 Heavenly Shard##52721
		collect 17 Lesser Celestial Essence##52718
		collect 11 Hypnotic Dust##52555
		collect 108 Embersilk Cloth##53010
		|meta crap_items_follow=1
		collect 51 Rending Fang##60576
		collect 28 Toughened Flesh##62778
		collect 11 Wispy Tail Hair##60392
		collect 40 Ruined Embersilk Scraps##68198
//The Vortex Pinnacle (10M 34S) 5.68
	step
		Run through the Vortex Pinnacle dungeon, killing all mobs along the way. |goto The Vortex Pinnacle 54.12,16.81
		collect 102 Hypnotic Dust##52555
		collect 11 Lesser Celestial Essence##52718
		collect 23 Small Heavenly Shard##52720
		collect 62 Embersilk Cloth##53010
		collect 57 Volatile Air##52328
//Grim Batol (13m 31s) 4.44
	step
		Run through the Grim Batol dungeon, killing all mobs along the way. |goto Grim Batol 12.15,55.67
		collect 27 Heavenly Shard##52721
		collect 80 Hypnotic Dust##52555
		collect 9 Lesser Celestial Essence##52718
		collect 275 Embersilk Cloth##53010
		|meta crap_items_follow=1
		collect 58 Ruined Embersilk Scraps##68198
		collect 13 Wolk's Blunted Shiv##62066
		collect 9 Singed Gloves##62113
		collect 31 Scavenged Animal Parts##68197
		collect 22 Roasted Beef##58268
//The Stonecore (13m 6s) 4.58
	step
		Run through the Stonecore dungeon, killing all mobs along the way. |goto The Stonecore 54.27,93.90
		collect 32 Small Heavenly Shard##52720
		collect 32 Hypnotic Dust##52555
		collect 27 Lesser Celestial Essence##52718
		collect 137 Embersilk Cloth##53010
		collect 9 Volatile Fire##52325
		|meta crap_items_follow=1
		collect 32 Ruined Embersilk Scraps##68198
		collect 18 Roasted Beef##58268
//Ragefire Chasm (3m00s)
	step
		Run through the Ragefire Chasm dungeon, killing all mobs along the way. |goto Ragefire Chasm 62.41,7.88
		collect 100 Small Glimmering Shard##10978
		collect 60 Strange Dust##10940
		collect 80 Greater Magic Essence##10939
		collect 960 Linen Cloth##2589
		|meta crap_items_follow=1
		collect 40 Haunch of Meat##2287
//Wailing Caverns (9m 11s) 6.53
	step
		Run through the Wailing Caverns dungeon, killing all mobs along the way. |goto Wailing Caverns 45.8,59.7
		collect 170 Strange Dust##10940
		collect 46 Small Glimmering Shard##10978
		collect 39 Greater Magic Essence##10939
		collect 20 Light Feather##17056
		collect 78 Linen Cloth##2589
		collect 59 Wool Cloth##2592
		collect 13 Shadowgem##1210
		|meta crap_items_follow=1
		collect 98 Small Raptor Tooth##5124
		collect 33 Flecked Raptor Scale##3180
		collect 20 Deviate Scale##6470
		collect 13 Decomposed Boot##3674
		collect 20 Slimy Ichor##3676
		collect 33 Partially Digested Meat##3181
		collect 33 Rough Crocolisk Scale##3401
		collect 26 Brittle Molting##6445
		collect 91 Forked Tongue##6444
		collect 39 Forest Mushroom Cap##4604
//The Blood Furnace (8m30s) 7.06
	step
		Run through the Blood Furnace dungeon, killing all mobs along the way. |goto The Blood Furnace/1 47.75,90.56
		collect 28 Small Prismatic Shard##22448
		collect 99 Arcane Dust##22445
		collect 21 Lesser Planar Essence##22447
		collect 586 Netherweave Cloth##21877
		|meta crap_items_follow=1
		collect 35 Roasted Quail##8952
		collect 21 Morning Glory Dew##8766
//Gundrak (8m43s) 6.88
	step
		Run through the Gundrak dungeon, killing all mobs along the way. |goto Gundrak 58.99,30.92
		collect 41 Dream Shard##34052
		collect 41 Infinite Dust##34054
		collect 69 Frostweave Cloth##33470
		collect 14 Crystallized Water##37705
		|meta crap_items_follow=1
		collect 21 Salted Venison##33454
		collect 365 Rubicund Scale##39567
		collect 83 Hollow Fang##39568
		collect 55 Thick Fur Clothing Scraps##43852
//Razorfen Kraul (7m 10s) 8.37
	step
		Run through the Razorfen Kraul dungeon, killing all mobs along the way. |goto Razorfen Kraul 69.89,82.97
		collect 59 Small Glowing Shard##11138
		collect 42 Soul Dust##11083
		collect 17 Vision Dust##11137
		collect 8 Lesser Mystic Essence##11134
		collect 8 Greater Magic Essence##10939
		collect 17 Citrine##3864
		collect 301 Silk Cloth##4306
		collect 75 Wool Cloth##2592
		|meta crap_items_follow=1
		collect 25 Small Bat Skull##11393
		collect 42 Severed Bat Claw##11392
		collect 84 Goldenbark Apple##4539
		collect 50 Sweet Nectar##1708
		collect 25 Bat Heart##11394
//Razorfen Downs (8m 48s) 6.82
	step
		Run through the Razorfen Downs dungeon, killing all mobs along the way. |goto Razorfen Downs 23.79,18.80
		collect 116 Vision Dust##11137
		collect 27 Lesser Nether Essence##11174
		collect 14 Greater Nether Essence##11175
		collect 14 Greater Mystic Essence##11135
		collect 34 Small Radiant Shard##11177
		collect 14 Dream Dust##11176
		collect 286 Silk Cloth##4306
		collect 225 Mageweave Cloth##4338
		collect 14 Shadow Silk##10285
		|meta crap_items_follow=1
		collect 27 Dripping Spider Mandible##4585
		collect 136 Raw Black Truffle##4608
		collect 27 Thick Spider Hair##3167
		collect 41 Boar Ribs##2677
		collect 34 Chipped Boar Tusk##771
		collect 170 Moonberry Juice##1645
		collect 136 Moon Harvest Pumpkin##4602
		collect 116 Superior Healing Potion##3928
		collect 75 Greater Mana Potion##6149
//Blackfathom Deeps (7m 38s) 7.86
	step
		Run through the Blackfathom Depths dungeon, killing all mobs along the way. |goto Blackfathom Deeps 44.29,10.66
		collect 31 Lesser Astral Essence##10998
		collect 55 Small Glimmering Shard##10978
		collect 118 Strange Dust##10940
		collect 8 Soul Dust##11083
		collect 55 Crawler Meat##2674
		collect 63 Murloc Fin##1468
		collect 220 Wool Cloth##2592
		collect 24 Silk Cloth##4306
		collect 63 Linen Cloth##2589
		collect 47 Crawler Claw##2675
		|meta crap_items_follow=1
		collect 299 Thick-Shelled Clam##5524
		collect 16 Healing Potion##929
		collect 173 Shiny Fish Scales##17057
		collect 24 Speckled Shell Fragment##4556
		collect 39 Seaweed##5569
		collect 39 Raw Bristle Whisker Catfish##6308
		collect 24 Slimy Murloc Scale##5784
//Zul'Farrak (10m 2s) 5.98
	step
		Run through the Zul'Farrak dungeon, killing all mobs along the way. |goto Zul'Farrak 56.60,90.95
		collect 6 Greater Nether Essence##11175
		collect 42 Large Prismatic Shard##22449
		collect 24 Dream Dust##11176
		collect 48 Basilisk Scale##11385
		collect 54 Compound Eye##56202
		collect 771 Mageweave Cloth##4338
		collect 60 Silk Cloth##4306
		|meta crap_items_follow=1
		collect 36 Crusted Bandages##9332
		collect 84 Flask of Mojo##8151
		collect 18 Large Basilisk Tail##4093
		collect 144 Superior Healing Potion##3928
		collect 72 Greater Mana Potion##6149
		collect 78 Cracked Pottery##9334
		collect 443 Cured Ham Steak##4599
		collect 251 Troll Sweat##1520
		collect 167 Moonberry Juice##1645
		collect 60 Broken Obsidian Club##9335

//NEEDS AREA

//NEEDS MULTIPLIED DOWN

//HAS ISSUES

//The Culling of Stratholme (11m 24s) (MISSING NORMAL DROPS)
		1 Greater Cosmic Essence##
		17 Infinite Dust##
		6 Dream Shard##
//Caverns of Time The Black Morass (10m 20s) (MISSING NORMAL DROPS)
		4 Large Prismatic Shard##
		2 Greater Planar Essence##
//Caverns of Time Old Hillsbrad Foothills (13m 50s) (MISSING NORMAL DROPS)
		3 Large Prismatic Shard##
		8 Arcane Dust##
//The Nexus (7m 49s) 7.68 (NO DISENCHANT LOOT?)
	step
	drop
		15 Vicious Fang##
		5 Hardened Claw##
		16 Frostweave Cloth##
		4 Thick Fur Clothing Scraps##
		5 Salted Venison##
		3 Elemental Husk##
		18 Primordial Infusion##
//Sunken Temple (MISSING TIME)
	step
		collect 2 Dream Dust##
		collect 7 Small Brilliant Shard##
		collect 33 Roasted Quail##
		collect 20 Runecloth##
		collect 17 Morning Glory Dew##
		collect 10 Major Healing Potion##
		collect 7 Troll Sweat##
		collect 2 Brilliant Scale##
		collect 4 Forked Tongue##
//Hellfire Ramparts (MISSING TIME)
	step
		collect 4 Small Prismatic Shard##
		collect 7 Arcane Dust##
		collect 7 Lesser Planar Essence##
		collect 69 Runecloth##
		collect 3 Roasted Quail##
		collect 10 Fractured Canine##
		collect 10 Hardened Claw##
		collect 7 Netherweave Cloth##
		collect 2 Morning Glory Dew##
//Trial of the Champion (MISSING TIME)
	step
		collect 5 abyss crystal##
//Maraudon Purple (4m 38s) (MISSING NORMAL DROPS)
		2 Small Glowing Shard##
		3 Greater Mystic Essence##
		5 Soul Dust##
//Maraudon Falls (6m 37s) (MISSING NORMAL DROPS)
		4 Large Glowing Shard##
		1 Vision Dust##
//Maraudon Orange (3m 29s) (MISSING NORMAL DROPS)
		11 Soul Dust##
		2 Large Glowing Shard##
		2 Greater Mystic Essence##
//Diremaul Gardens (9m 32s) (MISSING NORMAL DROPS)
		7 Small Radiant Shard##
		4 Lesser Nether Essence##
		3 Vision Dust##
		1 Greater Mystical Essence
//Diremaul Warpwood (10m 40s) (MISSING NORMAL DROPS)
		4 Small Radiant shard##
		2 Vision Dust##
//Dire Maul Ogres (10m 35s) (MISSING NORMAL DROPS)
		2 Lesser Nether Essence##
		5 Vision Dust##
		4 Dream Dust##
		8 Large Prismatic Shards##
]])
--]=]