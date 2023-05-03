local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("InvasionDailiesHLEGION") then return end

ZygorGuidesViewer.GuideMenuTier = "TRI"

ZygorGuidesViewer:RegisterGuide("Horde Event Guides\\Legion\\Pre-Launch Invasion Event",{
	author="support@zygorguides.com",
	condition_suggested="level==100",
	startlevel=10,
	},[[
	step
	label "Choose_Invasion_Zone"
		Open your map:
		|tip Check Eastern Kingdoms and Kalimdor for green portal icons. This is where invasions are taking place currently.
		|tip Click the line below for a zone with an invasion taking place currently.
		_Kalimdor:_
		Azshara |confirm |or |next "Azshara_Invasion"
		Northern Barrens |confirm |or |next "Northern_Barrens_Invasion"
		Tanaris |confirm |or |next "Tanaris_Invasion"
		.
		_Eastern Kingdoms:_
		Dun Morogh |confirm |or |next "Dun_Morogh_Invasion"
		Hillsbrad Foothills |confirm |or |next "Hillsbrad_Foothills_Invasion"
		Westfall |confirm |or |next "Westfall_Invasion"
		|tip You can earn the "Defender of Azeroth: Legion Invasions" achievement by completing an invasion in all 6 zones.

//HILLSBRAD FOOTHILLS INVASION - START
	step
	label "Hillsbrad_Foothills_Invasion"
		Begin the Invasion: Hillsbrad Foothills Scenario |scenariostart |goto Hillsbrad Foothills/0 56.73,46.32
	step
		Kill enemies around this area
		Defend Tarren Mill |scenariostage 1 |goto 56.73,46.32
	step
		Kill enemies around this area
		Slay #2# Demon Lieutenants |scenariogoal 2/30993 |goto 56.73,46.32
	step
		Kill enemies around this area
		Defeat the Demon Commander |scenariostage 2 |goto 56.73,46.32
	step
		Kill enemies around this whole zone
		|tip Open your map and go to the map markers and kill enemies at those locations.
		Repel the Legion Forces |scenariostage 3 |goto 56.73,46.32
	step
		Kill enemies around this area
		|tip Make sure to open the Small Legion Chest and Large Legion Chest in your inventory after you complete the scenario.
		Defeat the Demon Lord |scenarioend |goto 56.73,46.32 |next "Choose_Invasion_Zone"
//HILLSBRAD FOOTHILLS INVASION - END

//TANARIS INVASION - START
	step
	label "Tanaris_Invasion"
		Begin the Invasion: Tanaris Scenario |scenariostart |goto Tanaris/0 51.83,29.18
	step
		Kill enemies around this area
		Defend Gadgetzan |scenariostage 1 |goto 51.83,29.18
	step
		Kill enemies around this area
		Slay #2# Demon Lieutenants |scenariogoal 2/30993 |goto 51.83,29.18
	step
		Kill enemies around this area
		Defeat the Demon Commander |scenariostage 2 |goto 51.83,29.18
	step
		Kill enemies around this whole zone
		|tip Open your map and go to the map markers and kill enemies at those locations.
		Repel the Legion Forces |scenariostage 3 |goto 51.83,29.18
	step
		Kill enemies around this area
		|tip Make sure to open the Small Legion Chest and Large Legion Chest in your inventory after you complete the scenario.
		Defeat the Demon Lord |scenarioend |goto 51.83,29.18 |next "Choose_Invasion_Zone"
//TANARIS INVASION - END

//NORTHERN BARRENS INVASION - START
	step
	label "Northern_Barrens_Invasion"
		Begin the Invasion: Northern Barrens Scenario |scenariostart |goto Northern Barrens/0 49.64,60.30
	step
		Kill enemies around this area
		Defend Crossroads |scenariostage 1 |goto 49.64,60.30
	step
		Kill enemies around this area
		Slay #2# Demon Lieutenants |scenariogoal 2/30993 |goto 49.64,60.30
	step
		Kill enemies around this area
		Defeat the Demon Commander |scenariostage 2 |goto 49.64,60.30
	step
		Kill enemies around this whole zone
		|tip Open your map and go to the map markers and kill enemies at those locations.
		Repel the Legion Forces |scenariostage 3 |goto 49.64,60.30
	step
		Kill enemies around this area
		|tip Make sure to open the Small Legion Chest and Large Legion Chest in your inventory after you complete the scenario.
		Defeat the Demon Lord |scenarioend |goto 49.64,60.30 |next "Choose_Invasion_Zone"
//NORTHERN BARRENS INVASION - END

//AZSHARA INVASION - START
	step
	label "Azshara_Invasion"
		Begin the Invasion: Azshara Scenario |scenariostart |goto Azshara/0 27.02,76.81
	step
		Kill enemies around this area
		Defend Orgrimmar |scenariostage 1 |goto 27.02,76.81
	step
		Kill enemies around this area
		Slay #2# Demon Lieutenants |scenariogoal 2/30993 |goto 27.02,76.81
	step
		Kill enemies around this area
		Defeat the Demon Commander |scenariostage 2 |goto 27.02,76.81
	step
		Kill enemies around this whole zone
		|tip Open your map and go to the map markers and kill enemies at those locations.
		Repel the Legion Forces |scenariostage 3 |goto 27.02,76.81
	step
		Kill enemies around this area
		|tip Make sure to open the Small Legion Chest and Large Legion Chest in your inventory after you complete the scenario.
		Defeat the Demon Lord |scenarioend |goto 27.02,76.81 |next "Choose_Invasion_Zone"
//AZSHARA INVASION - END

//DUN MOROGH INVASION - START
	step
	label "Dun_Morogh_Invasion"
		Begin the Invasion: Dun Morogh Scenario |scenariostart |goto Dun Morogh/0 53.46,50.37
	step
		Kill enemies around this area
		Defend Kharanos |scenariostage 1 |goto 53.46,50.37
	step
		Kill enemies around this area
		Slay #2# Demon Lieutenants |scenariogoal 2/30993 |goto 53.46,50.37
	step
		Kill enemies around this area
		Defeat the Demon Commander |scenariostage 2 |goto 53.46,50.37
	step
		Kill enemies around this whole zone
		|tip Open your map and go to the map markers and kill enemies at those locations.
		Repel the Legion Forces |scenariostage 3 |goto 53.46,50.37
	step
		Kill enemies around this area
		|tip Make sure to open the Small Legion Chest and Large Legion Chest in your inventory after you complete the scenario.
		Defeat the Demon Lord |scenarioend |goto 53.46,50.37 |next "Choose_Invasion_Zone"
//DUN MOROGH INVASION - END

//WESTFALL INVASION - START
	step
	label "Westfall_Invasion"
		Begin the Invasion: Westfall Scenario |scenariostart |goto Westfall/0 56.76,51.07
	step
		Kill enemies around this area
		Defend Sentinel Kill |scenariostage 1 |goto 56.76,51.07
	step
		Kill enemies around this area
		Defeat #3# Doomguards |scenariogoal 2/30993 |goto 56.76,51.07
	step
		Kill enemies around this area
		Defeat the Demon Commander |scenariostage 2 |goto 56.76,51.07
	step
		Kill enemies around this whole zone
		|tip Open your map and go to the map markers and kill enemies at those locations.
		Repel the Legion Forces |scenariostage 3 |goto 56.76,51.07
	step
		Kill enemies around this area
		|tip Make sure to open the Small Legion Chest and Large Legion Chest in your inventory after you complete the scenario.
		Defeat the Demon Lord |scenarioend |goto 56.76,51.07 |next "Choose_Invasion_Zone"
//WESTFALL INVASION - END
]])



ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Legion (10-50)\\Legion Intro",{
	author="support@zygorguides.com",
	image=ZGV.IMAGESDIR.."The_Broken_Shore",
	startlevel=100.0,
	},[[

	------------------------------------------
	---  Check For Boosted or Non-Boosted  ---
	------------------------------------------

	step
		_Checking for Boosted Character..._
		|next "Boosted_Start" |only if intutorial
		|next "Non_Boosted_Start" |only if not intutorial

	--------------------------------------
	---  Level 100 Boosted Characters  ---
	--------------------------------------

	step
	label "Boosted_Start"
		_On the Deck of the Airship:_
		You Can Skip the Combat Training Scenario
		|tip Use your Hearthstone now if you want to skip the Combat Training scenario.
		|tip You can complete it or skip it, it doesn't matter, and is purely personal preference.
		Click Here to Complete the Combat Training Scenario |confirm |q 44543 |future
		|only if intutorial
	step
		_On the Deck of the Airship:_
		talk Warlord Zakgra##105317
		Talk to Warlord Zakgra |scenariostage 1 |q 44543 |future
		|only if intutorial

	//WARRIOR - START
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Charge ability on the Target Dummy
			|tip It appears on your action bar.
			Use Charge on the Target Dummy |scenariostage 2 |q 44543 |future
			|only if intutorial() and raceclass("Warrior")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Mortal Strike ability on the Target Dummy
			|tip It appears on your action bar.
			Use Mortal Strike on the Target Dummy #3# Times |scenariogoal 3/30116 |q 44543 |future
			|only if intutorial() and raceclass("Warrior")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Slam ability on the Target Dummy
			|tip It appears on your action bar.
			Use Slam on the Target Dummy #3# Times |scenariogoal 4/30117 |q 44543 |future
			|only if intutorial() and raceclass("Warrior")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Colossus Smash ability on the Target Dummy
			|tip It appears on your action bar.
			Use Colossus Smash on the Target Dummy |scenariostage 5 |q 44543 |future
			|only if intutorial() and raceclass("Warrior")
		step
			_On the Deck of the Airship:_
			Use your abilities on the Target Dummy
			Use Colossus Smash #2# Times |scenariogoal 6/30118 |q 44543 |future
			Use Mortal Strike #3# Times |scenariogoal 6/30116 |q 44543 |future
			Use Slam #6# Times |scenariogoal 6/30117 |q 44543 |future
			|only if intutorial() and raceclass("Warrior")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			kill Arcane Construct##101738+
			Use your Victory Rush ability on Arcane Constructs
			|tip It appears on your action bar.
			|tip You can only use the Victory Rush ability after killing an enemy.
			Kill an Arcane Construct and then Use Victory Rush on the Others #2# Times |scenariogoal 7/30119 |q 44543 |future
			|only if intutorial() and raceclass("Warrior")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Whirlwind ability on Arcane Constructs
			|tip It appears on your action bar.
			|tip Stand in the middle of the group of Arcane Constructs.
			Use Whirlwind on the Arcane Constructs |scenariogoal 8/30120 |q 44543 |future
			|only if intutorial() and raceclass("Warrior")
		step
			_On the Deck of the Airship:_
			kill Arcane Construct##101738+
			Destroy the Arcane Constructs |scenariostage 8 |q 44543 |future
			|only if intutorial() and raceclass("Warrior")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Heroic Leap ability
			|tip It appears on your action bar.
			|tip It doesn't matter where you leap to.
			Use Heroic Leap |scenariostage 9 |q 44543 |future
			|only if intutorial() and raceclass("Warrior")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			kill Alliance Infantry##102592
			Defeat the Soldier |scenariostage 10 |q 44543 |future
			|only if intutorial() and raceclass("Warrior")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			kill Alliance Infantry##102592+
			|tip Two of them will attack you.
			Defeat the Attacking Soldiers |scenariostage 11 |q 44543 |future
			|only if intutorial() and raceclass("Warrior")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Kill enemies around this area
			Defend the Airship |scenariostage 12 |q 44543 |future
			|only if intutorial() and raceclass("Warrior")
	//WARRIOR - END

	//PALADIN - START
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Judgement ability on the Target Dummy
			|tip It appears on your action bar.
			Use Judgement on the Target Dummy #2# Times |scenariogoal 2/29793 |q 44543 |future
			|only if intutorial() and raceclass("Paladin")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Blade of Justice ability on the Target Dummy
			|tip It appears on your action bar.
			Use Blade of Justice on the Target Dummy #2# Times |scenariogoal 3/29773 |q 44543 |future
			|only if intutorial() and raceclass("Paladin")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Crusader Strike ability on the Target Dummy
			|tip It appears on your action bar.
			Use Crusader Strike on the Target Dummy #3# Times |scenariogoal 4/29769 |q 44543 |future
			|only if intutorial() and raceclass("Paladin")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Templar's Verdict ability on the Target Dummy
			|tip It appears on your action bar.
			Use Templar's Verdict on the Target Dummy #3# Times |scenariogoal 5/29770 |q 44543 |future
			|only if intutorial() and raceclass("Paladin")
		step
			_On the Deck of the Airship:_
			Use your abilities on the Target Dummy
			Use Judgement #2# Times |scenariogoal 6/29793 |q 44543 |future
			Use Blade of Justice #2# Times |scenariogoal 6/29773 |q 44543 |future
			Use Crusader Strike #2# Times |scenariogoal 6/29769 |q 44543 |future
			Use Templar's Verdict #2# Times |scenariogoal 6/29770 |q 44543 |future
			|only if intutorial() and raceclass("Paladin")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Divine Storm ability on Arcane Constructs
			|tip It appears on your action bar.
			|tip Use your other abilities on the Arcane Constructs to earn 3 Holy Power so that you can use Divine Storm.
			|tip Stand in the middle of the group of Arcane Constructs.
			Earn 3 Holy Power and then Use Divine Storm |scenariogoal 7/32067 |q 44543 |future
			|only if intutorial() and raceclass("Paladin")
		step
			_On the Deck of the Airship:_
			kill Arcane Construct##101738+
			Destroy the Arcane Constructs |scenariostage 7 |q 44543 |future
			|only if intutorial() and raceclass("Paladin")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Divine Shield ability
			|tip It appears on your action bar.
			Use Divine Shield |scenariostage 8 |q 44543 |future
			|only if intutorial() and raceclass("Paladin")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Flash of Light ability
			|tip It appears on your action bar.
			|tip Make sure you're not targeting an NPC.
			Use Flash of Light to Heal Yourself #3# Times |scenariogoal 9/29772 |q 44543 |future
			|only if intutorial() and raceclass("Paladin")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			kill Alliance Infantry##102592
			Defeat the Soldier |scenariostage 10 |q 44543 |future
			|only if intutorial() and raceclass("Paladin")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			kill Alliance Infantry##102592+
			|tip Two of them will attack you.
			Defeat the Attacking Soldiers |scenariostage 11 |q 44543 |future
			|only if intutorial() and raceclass("Paladin")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Kill enemies around this area
			Defend the Airship |scenariostage 12 |q 44543 |future
			|only if intutorial() and raceclass("Paladin")
	//PALADIN - END

	//HUNTER - START
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Call Pet ability
			|tip It is already on your action bar.
			Use Call Pet |scenariostage 2 |q 44543 |future
			|only if intutorial() and raceclass("Hunter")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Kill Command ability on the Target Dummy
			|tip It appears on your action bar.
			Use Kill Command to Command your Pet to Attack the Target Dummy #3# Times |scenariogoal 3/29829 |q 44543 |future
			|only if intutorial() and raceclass("Hunter")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Dire Beast ability on the Target Dummy
			|tip It appears on your action bar.
			Use Dire Beast on the Target Dummy #2# Times |scenariogoal 4/29830 |q 44543 |future
			|only if intutorial() and raceclass("Hunter")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Cobra Shot ability on the Target Dummy
			|tip It appears on your action bar.
			Use Cobra Shot on the Target Dummy #3# Times |scenariogoal 5/29831 |q 44543 |future
			|only if intutorial() and raceclass("Hunter")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Bestial Wrath ability
			|tip It appears on your action bar.
			Use Bestial Wrath |scenariostage 6 |q 44543 |future
			|only if intutorial() and raceclass("Hunter")
		step
			_On the Deck of the Airship:_
			Use your abilities on the Target Dummy
			Use Kill Command #2# Times |scenariogoal 7/29829 |q 44543 |future
			Use Dire Beast #2# Times |scenariogoal 7/29830 |q 44543 |future
			Use Cobra Shot #5# Times |scenariogoal 7/29831 |q 44543 |future
			Use Beastial Wrath |scenariogoal 7/29832 |q 44543 |future
			|only if intutorial() and raceclass("Hunter")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Multi-Shot ability on Arcane Constructs
			|tip It appears on your action bar.
			Use Multi-Shot on the Arcane Constructs |scenariogoal 8/29839 |q 44543 |future
			|only if intutorial() and raceclass("Hunter")
		step
			_On the Deck of the Airship:_
			kill Arcane Construct##101738+
			Destroy the Arcane Constructs |scenariostage 8 |q 44543 |future
			|only if intutorial() and raceclass("Hunter")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Feign Death ability
			|tip It appears on your action bar.
			Use Feign Death |scenariostage 9 |q 44543 |future
			|only if intutorial() and raceclass("Hunter")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			kill Alliance Infantry##102592
			Defeat the Attacker |scenariostage 10 |q 44543 |future
			|only if intutorial() and raceclass("Hunter")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			kill Alliance Infantry##102592+
			|tip Two of them will attack you.
			Defeat Both Attackers |scenariostage 11 |q 44543 |future
			|only if intutorial() and raceclass("Hunter")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Kill enemies around this area
			Defend the Airship |scenariostage 12 |q 44543 |future
			|only if intutorial() and raceclass("Hunter")
	//HUNTER - END

	//ROGUE - START
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Deadly Poison ability
			|tip It is already on your action bar.
			Use Deadly Poison |scenariostage 2 |q 44543 |future
			|only if intutorial() and raceclass("Rogue")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Stealth ability
			|tip It appears on your action bar.
			Use Stealth |scenariostage 3 |q 44543 |future
			|only if intutorial() and raceclass("Rogue")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Garrote ability on the Target Dummy
			|tip It appears on your action bar.
			Use Garrote on the Target Dummy |scenariostage 4 |q 44543 |future
			|only if intutorial() and raceclass("Rogue")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Mutilate ability on the Target Dummy
			|tip It appears on your action bar.
			Use Mutilate on the Target Dummy #3# Times |scenariogoal 5/30646 |q 44543 |future
			|only if intutorial() and raceclass("Rogue")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Rupture ability on the Target Dummy
			|tip It appears on your action bar.
			Use Rupture on the Target Dummy |scenariostage 6 |q 44543 |future
			|only if intutorial() and raceclass("Rogue")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Envenom ability on the Target Dummy
			|tip It appears on your action bar.
			|tip Use your other abilities on the target dummy to build combo points so that you can use Envenom.
			Use Envenom on the Target Dummy |scenariostage 7 |q 44543 |future
			|only if intutorial() and raceclass("Rogue")
		step
			_On the Deck of the Airship:_
			Use your abilities on the Target Dummy
			Use Garrote #2# Times |scenariogoal 8/30645 |q 44543 |future
			Use Mutilate #4# Times |scenariogoal 8/30646 |q 44543 |future
			Use Rupture |scenariogoal 8/30647 |q 44543 |future
			Use Envenom |scenariogoal 8/30648 |q 44543 |future
			|only if intutorial() and raceclass("Rogue")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Vanish ability
			|tip It appears on your action bar.
			Use Vanish |scenariostage 9 |q 44543 |future
			|only if intutorial() and raceclass("Rogue")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			kill Alliance Infantry##102592
			Defeat the Soldier |scenariostage 10 |q 44543 |future
			|only if intutorial() and raceclass("Rogue")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			kill Alliance Infantry##102592+
			|tip Two of them will attack you.
			Defeat the Attacking Soldiers |scenariostage 11 |q 44543 |future
			|only if intutorial() and raceclass("Rogue")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Kill enemies around this area
			Defend the Airship |scenariostage 12 |q 44543 |future
			|only if intutorial() and raceclass("Rogue")
	//ROGUE - END

	//PRIEST - START
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Shadow Word: Pain ability on the Target Dummy
			|tip It appears on your action bar.
			Cast Shadow Word: Pain on the Target Dummy |scenariostage 2 |q 44543 |future
			|only if intutorial() and raceclass("Priest")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Penance ability on the Target Dummy
			|tip It appears on your action bar.
			Cast Penance on the Target Dummy #2# Times |scenariogoal 3/30503 |q 44543 |future
			|only if intutorial() and raceclass("Priest")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Smite ability on the Target Dummy
			|tip It appears on your action bar.
			Cast Smite on the Target Dummy #3# Times |scenariogoal 4/30504 |q 44543 |future
			|only if intutorial() and raceclass("Priest")
		step
			_On the Deck of the Airship:_
			Use your abilities on the Target Dummy
			Cast Shadow Word: Pain |scenariogoal 5/30502 |q 44543 |future
			Cast Penance #2# Times |scenariogoal 5/30503 |q 44543 |future
			Cast Smite #4# Times |scenariogoal 5/30504 |q 44543 |future
			|only if intutorial() and raceclass("Priest")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Psychic Scream ability
			|tip It appears on your action bar.
			Cast Psychic Scream to Fear the Enemies Around You |scenariostage 6 |q 44543 |future
			|only if intutorial() and raceclass("Priest")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Power Word: Shield ability
			|tip It appears on your action bar.
			Cast Power Word: Shield on Yourself |scenariostage 7 |q 44543 |future
			|only if intutorial() and raceclass("Priest")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Plea ability
			|tip It appears on your action bar.
			Cast Plea to Heal Yourself #3# Times |scenariogoal 8/30523 |q 44543 |future
			|only if intutorial() and raceclass("Priest")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			kill Alliance Infantry##102592
			Defeat the Soldier |scenariostage 9 |q 44543 |future
			|only if intutorial() and raceclass("Priest")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			kill Alliance Infantry##102592+
			|tip Two of them will attack you.
			Defeat the Attacking Soldiers |scenariostage 10 |q 44543 |future
			|only if intutorial() and raceclass("Priest")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Kill enemies around this area
			Defend the Airship |scenariostage 11 |q 44543 |future
			|only if intutorial() and raceclass("Priest")
	//PRIEST - END

	//SHAMAN - START
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Flame Shock ability on the Target Dummy
			|tip It appears on your action bar.
			Cast Flame Shock on the Target Dummy |scenariostage 2 |q 44543 |future
			|only if intutorial() and raceclass("Shaman")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Lava Burst ability on the Target Dummy
			|tip It appears on your action bar.
			Cast Lava Burst on the Target Dummy #3# Times |scenariogoal 3/29960 |q 44543 |future
			|only if intutorial() and raceclass("Shaman")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Lightning Bolt ability on the Target Dummy
			|tip It appears on your action bar.
			Cast Lightning Bolt on the Target Dummy #3# Times |scenariogoal 4/29961 |q 44543 |future
			|only if intutorial() and raceclass("Shaman")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Earth Shock ability on the Target Dummy
			|tip It appears on your action bar.
			|tip Use your other abilities on the Target Dummy to generat Maelstrom, so that you can use Earth Shock.
			Cast Earth Shock on the Target Dummy #2# Times |scenariogoal 5/29962 |q 44543 |future
			|only if intutorial() and raceclass("Shaman")
		step
			_On the Deck of the Airship:_
			Use your abilities on the Target Dummy
			Cast Flame Shock |scenariogoal 6/29959 |q 44543 |future
			Cast Lava Burst #2# Times |scenariogoal 6/29960 |q 44543 |future
			Cast Lightning Bolt #4# Times |scenariogoal 6/29961 |q 44543 |future
			Cast Earth Shock #2# Times |scenariogoal 6/29962 |q 44543 |future
			|only if intutorial() and raceclass("Shaman")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Hex ability on the Alliance Infantry
			|tip It appears on your action bar.
			Cast Hex on the Soldier |scenariostage 7 |q 44543 |future
			|only if intutorial() and raceclass("Shaman")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Chain Lightning ability on the Arcane Constructs
			|tip It appears on your action bar.
			Cast Chain Lightning on the Arcane Constructs |scenariogoal 8/29964 |q 44543 |future
			|only if intutorial() and raceclass("Shaman")
		step
			_On the Deck of the Airship:_
			kill Arcane Construct##101738+
			Destroy the Arcane Constructs |scenariostage 8 |q 44543 |future
			|only if intutorial() and raceclass("Shaman")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Healing Surge ability
			|tip It appears on your action bar.
			|tip Make sure you are not targeting an NPC.
			Cast Healing Surge to Heal Yourself #3# Times |scenariogoal 9/32737 |q 44543 |future
			|only if intutorial() and raceclass("Shaman")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Fire Elemental ability
			|tip It appears on your action bar.
			Cast Fire Elemental |scenariostage 10 |q 44543 |future
			|only if intutorial() and raceclass("Shaman")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			kill Alliance Infantry##102592
			Defeat the Soldier |scenariostage 11 |q 44543 |future
			|only if intutorial() and raceclass("Shaman")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			kill Alliance Infantry##102592+
			|tip Two of them will attack you.
			Defeat the Attacking Soldiers |scenariostage 12 |q 44543 |future
			|only if intutorial() and raceclass("Shaman")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Kill enemies around this area
			Defend the Airship |scenariostage 13 |q 44543 |future
			|only if intutorial() and raceclass("Shaman")
	//SHAMAN - END

	//MAGE - START
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Summon Water Elemental ability
			|tip It is already on your action bar.
			Cast Summon Water Elemental |scenariostage 2 |q 44543 |future
			|only if intutorial() and raceclass("Mage")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Frostbolt ability on the Target Dummy
			|tip It appears on your action bar.
			Cast Frostbolt on the Target Dummy #3# Times |scenariogoal 3/30560 |q 44543 |future
			|only if intutorial() and raceclass("Mage")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Ice Lance ability on the Target Dummy
			|tip It appears on your action bar.
			Cast Ice Lance on the Target Dummy #3# Times |scenariogoal 4/30561 |q 44543 |future
			|only if intutorial() and raceclass("Mage")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Ice Lance ability on the Target Dummy
			|tip Use your Frostbolt ability on the Target Dummy to gain the Fingers of Frost buff.
			|tip Fingers of Frost appears as a buff to your character at the top right of the screen.
			|tip The icon for Fingers of Frost is a blue hand.
			Cast Ice Lance with Fingers of Frost #2# Times |scenariogoal 5/30614 |q 44543 |future
			|only if intutorial() and raceclass("Mage")
		step
			_On the Deck of the Airship:_
			Use your abilities on the Target Dummy
			Cast Frostbolt #6# Times |scenariogoal 6/30560 |q 44543 |future
			Cast Ice Lance #2# Times |scenariogoal 6/30561 |q 44543 |future
			|only if intutorial() and raceclass("Mage")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Blink ability
			|tip It appears on your action bar.
			Cast Blink |scenariostage 7 |q 44543 |future
			|only if intutorial() and raceclass("Mage")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Frost Nova ability
			|tip It appears on your action bar.
			|tip Wait untilt he enemy is text to you.
			Cast Frost Nova to Freeze the Enemy |scenariostage 8 |q 44543 |future
			|only if intutorial() and raceclass("Mage")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Blizzard ability on the Arcane Constructs
			|tip It appears on your action bar.
			Cast Blizzard on the Arcane Constructs |scenariogoal 9/30622 |q 44543 |future
			|only if intutorial() and raceclass("Mage")
		step
			_On the Deck of the Airship:_
			kill Arcane Construct##101738+
			Destroy the Arcane Constructs |scenariostage 9 |q 44543 |future
			|only if intutorial() and raceclass("Mage")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			kill Alliance Infantry##102592
			Defeat the Soldier |scenariostage 10 |q 44543 |future
			|only if intutorial() and raceclass("Mage")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			kill Alliance Infantry##102592+
			|tip Two of them will attack you.
			Defeat the Attacking Soldiers |scenariostage 11 |q 44543 |future
			|only if intutorial() and raceclass("Mage")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Kill enemies around this area
			Defend the Airship |scenariostage 12 |q 44543 |future
			|only if intutorial() and raceclass("Mage")
	//MAGE - END

	//WARLOCK - START
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Summon Voidwalker ability
			|tip It is already on your action bar.
			Cast Summon Voidwalker |scenariostage 2 |q 44543 |future
			|only if intutorial() and raceclass("Warlock")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Agony ability on the Target Dummy
			|tip It appears on your action bar.
			Cast Agony on the Target Dummy |scenariostage 3 |q 44543 |future
			|only if intutorial() and raceclass("Warlock")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Corruption ability on the Target Dummy
			|tip It appears on your action bar.
			Cast Corruption on the Target Dummy |scenariostage 4 |q 44543 |future
			|only if intutorial() and raceclass("Warlock")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Drain Life ability on the Target Dummy
			|tip It appears on your action bar.
			Cast Drain Life on the Target Dummy #2# Times |scenariogoal 5/29813 |q 44543 |future
			|only if intutorial() and raceclass("Warlock")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Unstable Affliction ability on the Target Dummy
			|tip It appears on your action bar.
			|tip Use your Agony ability on the Target Dummy to generate Soul Shards, so you can use Unstable Affliction.
			Cast Unstable Affliction on the Target Dummy #3# Times |scenariogoal 6/29814 |q 44543 |future
			|only if intutorial() and raceclass("Warlock")
		step
			_On the Deck of the Airship:_
			Use your abilities on the Target Dummy
			Cast Agony |scenariogoal 7/29811 |q 44543 |future
			Cast Corruption |scenariogoal 7/29812 |q 44543 |future
			Cast Unstable Affliction #2# Times |scenariogoal 7/29814 |q 44543 |future
			Cast Drain Life #2# Times |scenariogoal 7/29813 |q 44543 |future
			|only if intutorial() and raceclass("Warlock")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Life Tap ability
			|tip It appears on your action bar.
			Cast Life Tap #2# Times |scenariogoal 8/29816 |q 44543 |future
			|only if intutorial() and raceclass("Warlock")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Fear ability on the Alliance Infantry
			|tip It appears on your action bar.
			Cast Fear on the Soldier |scenariostage 9 |q 44543 |future
			|only if intutorial() and raceclass("Warlock")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Summon Doomguard ability on the Target Dummy
			|tip It appears on your action bar.
			Cast Summon Doomguard |scenariostage 10 |q 44543 |future
			|only if intutorial() and raceclass("Warlock")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			kill Alliance Infantry##102592
			Defeat the Attacker |scenariostage 11 |q 44543 |future
			|only if intutorial() and raceclass("Warlock")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			kill Alliance Infantry##102592+
			|tip Two of them will attack you.
			Defeat Both Attackers |scenariostage 12 |q 44543 |future
			|only if intutorial() and raceclass("Warlock")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Kill enemies around this area
			Defend the Airship |scenariostage 13 |q 44543 |future
			|only if intutorial() and raceclass("Warlock")
	//WARLOCK - END

	//MONK - START
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Tiger Palm ability on the Target Dummy
			|tip It appears on your action bar.
			Use Tiger Palm on the Target Dummy #3# Times |scenariogoal 2/30392 |q 44543 |future
			|only if intutorial() and raceclass("Monk")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Rising Sun Kick ability on the Target Dummy
			|tip It appears on your action bar.
			|tip Use your Tiger Palm ability to generate Chi, so you can use Rising Sun Kick.
			Use Rising Sun Kick on the Target Dummy #2# Times |scenariogoal 3/30393 |q 44543 |future
			|only if intutorial() and raceclass("Monk")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Blackout Kick ability on the Target Dummy
			|tip It appears on your action bar.
			|tip Use your Tiger Palm ability to generate Chi, so you can use Blackout Kick.
			Use Blackout Kick on the Target Dummy #3# Times |scenariogoal 4/30395 |q 44543 |future
			|only if intutorial() and raceclass("Monk")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Fists of Fury ability on the Target Dummy
			|tip It appears on your action bar.
			|tip Use your Tiger Palm ability to generate Chi, so you can use Fists of Fury.
			Use Fists of Fury on the Target Dummy |scenariostage 5 |q 44543 |future
			|only if intutorial() and raceclass("Monk")
		step
			_On the Deck of the Airship:_
			Use your abilities on the Target Dummy
			Use Tiger Palm #5# Times |scenariogoal 6/30392 |q 44543 |future
			Use Rising Sun Kick #2# Times |scenariogoal 6/30393 |q 44543 |future
			Use Blackout Kick #3# Times |scenariogoal 6/30395 |q 44543 |future
			Use Fists of Fury |scenariogoal 6/30396 |q 44543 |future
			|only if intutorial() and raceclass("Monk")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Roll ability
			|tip It appears on your action bar.
			Use Roll #2# Times |scenariogoal 7/30397 |q 44543 |future
			|only if intutorial() and raceclass("Monk")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Effuse ability
			|tip It appears on your action bar.
			|tip Make sure you are not targeting an NPC.
			Use Effuse to Heal Yourself #3# Times |scenariogoal 8/30409 |q 44543 |future
			|only if intutorial() and raceclass("Monk")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			kill Alliance Infantry##102592
			Defeat the Soldier |scenariostage 9 |q 44543 |future
			|only if intutorial() and raceclass("Monk")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			kill Alliance Infantry##102592+
			|tip Two of them will attack you.
			Defeat the Attacking Soldiers |scenariostage 10 |q 44543 |future
			|only if intutorial() and raceclass("Monk")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Kill enemies around this area
			Defend the Airship |scenariostage 11 |q 44543 |future
			|only if intutorial() and raceclass("Monk")
	//MONK - END

	//DRUID (BALANCE) - START
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Moonkin Form ability
			|tip It is already on your action bar.
			Cast Moonkin Form |scenariostage 2 |q 44543 |future
			|only if intutorial() and raceclass("Druid") and _G.IsPlayerSpell(24858)
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Moonfire ability on the Target Dummy
			|tip It appears on your action bar.
			Cast Moonfire on the Target Dummy |scenariogoal 3/32841 |q 44543 |future
			|only if intutorial() and raceclass("Druid") and _G.IsPlayerSpell(24858)
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Sunfire ability on the Target Dummy
			|tip It is already on your action bar.
			Cast Sunfire on the Target Dummy |scenariostage 3 |q 44543 |future
			|only if intutorial() and raceclass("Druid") and _G.IsPlayerSpell(24858)
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Solar Wrath ability on the Target Dummy
			|tip It appears on your action bar.
			Cast Solar Wrath on the Target Dummy #3# Times |scenariogoal 4/32843 |q 44543 |future
			|only if intutorial() and raceclass("Druid") and _G.IsPlayerSpell(24858)
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Starsurge ability on the Target Dummy
			|tip It appears on your action bar.
			|tip Use your other abilties on the Target Dummy to generate Astral Power, so you can cast Starsurge.
			Cast Starsurge on the Target Dummy #3# Times |scenariogoal 5/32844 |q 44543 |future
			|only if intutorial() and raceclass("Druid") and _G.IsPlayerSpell(24858)
		step
			_On the Deck of the Airship:_
			Use your abilities on the Target Dummy
			Cast Moonfire |scenariogoal 6/32841 |q 44543 |future
			Cast Sunfire |scenariogoal 6/32842 |q 44543 |future
			Cast Solar Wrath #6# Times |scenariogoal 6/32843 |q 44543 |future
			Cast Starsurge #2# Times |scenariogoal 6/32844 |q 44543 |future
			|only if intutorial() and raceclass("Druid") and _G.IsPlayerSpell(24858)
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Healing Touch ability
			|tip It appears on your action bar.
			|tip Make sure you are not targeting an NPC.
			Use Healing Touch to Heal Yourself #3# Times |scenariogoal 7/30432 |q 44543 |future
			|only if intutorial() and raceclass("Druid") and _G.IsPlayerSpell(24858)
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Entangling Roots ability on the Alliance Infantry
			|tip It appears on your action bar.
			Cast Entangling Roots |scenariostage 8 |q 44543 |future
			|only if intutorial() and raceclass("Druid") and _G.IsPlayerSpell(24858)
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			kill Alliance Infantry##102592
			Defeat the Soldier |scenariostage 9 |q 44543 |future
			|only if intutorial() and raceclass("Druid") and _G.IsPlayerSpell(24858)
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			kill Alliance Infantry##102592+
			|tip Two of them will attack you.
			Defeat the Attacking Soldiers |scenariostage 10 |q 44543 |future
			|only if intutorial() and raceclass("Druid") and _G.IsPlayerSpell(24858)
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Kill enemies around this area
			Defend the Airship |scenariostage 11 |q 44543 |future
			|only if intutorial() and raceclass("Druid") and _G.IsPlayerSpell(24858)
	//DRUID (BALANCE) - END

	//DRUID (FERAL) - START
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Cat Form ability
			|tip It is already on your action bar.
			Use Cat Form to Shapeshift into a Cat |scenariostage 2 |q 44543 |future
			|only if intutorial() and raceclass("Druid") and _G.IsPlayerSpell(768)
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Prowl ability on the Target Dummy
			|tip It is already on your action bar.
			Use Prowl to Enter Stealth |scenariostage 3 |q 44543 |future
			|only if intutorial() and raceclass("Druid") and _G.IsPlayerSpell(768)
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Rake ability on the Target Dummy
			|tip It appears on your action bar.
			Use Rake on the Target Dummy |scenariostage 4 |q 44543 |future
			|only if intutorial() and raceclass("Druid") and _G.IsPlayerSpell(768)
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Shred ability on the Target Dummy
			|tip It appears on your action bar.
			Use Shred on the Target Dummy #3# Times |scenariogoal 5/30427 |q 44543 |future
			|only if intutorial() and raceclass("Druid") and _G.IsPlayerSpell(768)
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Ferocious Bite ability on the Target Dummy
			|tip It appears on your action bar.
			|tip Use your other abilities on the Target Dummy to generate Combo Points, so that you can use Ferocious Bite.
			Use Ferocious Bite with Combo Points on the Target Dummy #3# Times |scenariogoal 6/30430 |q 44543 |future
			|only if intutorial() and raceclass("Druid") and _G.IsPlayerSpell(768)
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Rip ability on the Target Dummy
			|tip It appears on your action bar.
			|tip Use your other abilities on the Target Dummy to generate Combo Points, so that you can use Rip.
			Use Rip with Combo Points on the Target Dummy |scenariostage 7 |q 44543 |future
			|only if intutorial() and raceclass("Druid") and _G.IsPlayerSpell(768)
		step
			_On the Deck of the Airship:_
			Use your abilities on the Target Dummy
			Use Rake |scenariogoal 8/30428 |q 44543 |future
			Use Shred #4# Times |scenariogoal 8/30427 |q 44543 |future
			Use Ferocious Bite |scenariogoal 8/30430 |q 44543 |future
			Use Rip |scenariogoal 8/30429 |q 44543 |future
			|only if intutorial() and raceclass("Druid") and _G.IsPlayerSpell(768)
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Dash ability
			|tip It appears on your action bar.
			Use Dash to Move Faster in Cat Form |scenariostage 9 |q 44543 |future
			|only if intutorial() and raceclass("Druid") and _G.IsPlayerSpell(768)
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Healing Touch ability
			|tip It appears on your action bar.
			|tip Make sure you are not targeting an NPC.
			Use Healing Touch to Heal Yourself |scenariostage 10 |q 44543 |future
			|only if intutorial() and raceclass("Druid") and _G.IsPlayerSpell(768)
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			kill Alliance Infantry##102592
			Defeat the Soldier |scenariostage 11 |q 44543 |future
			|only if intutorial() and raceclass("Druid") and _G.IsPlayerSpell(768)
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			kill Alliance Infantry##102592+
			|tip Two of them will attack you.
			Defeat the Attacking Soldiers |scenariostage 12 |q 44543 |future
			|only if intutorial() and raceclass("Druid") and _G.IsPlayerSpell(768)
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Kill enemies around this area
			Defend the Airship |scenariostage 13 |q 44543 |future
			|only if intutorial() and raceclass("Druid") and _G.IsPlayerSpell(768)
	//DRUID (FERAL) - END

	//DEATH KNIGHT - START
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Raise Dead ability
			|tip It is already on your action bar.
			Cast Raise Dead |scenariostage 2 |q 44543 |future
			|only if intutorial() and raceclass("DeathKnight")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Outbreak ability on the Target Dummy
			|tip It appears on your action bar.
			Use Outbreak on the Target Dummy |scenariostage 3 |q 44543 |future
			|only if intutorial() and raceclass("DeathKnight")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Festering Strike ability on the Target Dummy
			|tip It appears on your action bar.
			Use Festering Strike on the Target Dummy #3# Times |scenariogoal 4/30664 |q 44543 |future
			|only if intutorial() and raceclass("DeathKnight")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Scourge Strike ability on the Target Dummy
			|tip It appears on your action bar.
			|tip Use Festering Strike on the Target Dummy, then use Scourge Strike on the Target Dummy.
			Use Festering Strike then Scourge Strike on the Target Dummy #3# Times |scenariogoal 5/30665 |q 44543 |future
			|only if intutorial() and raceclass("DeathKnight")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Death Coil ability on the Target Dummy
			|tip It appears on your action bar.
			|tip Use your other abilities to generate Runic Power, so you can use Death Coil.
			Use Death Coil on the Target Dummy #3# Times |scenariogoal 6/30666 |q 44543 |future
			|only if intutorial() and raceclass("DeathKnight")
		step
			_On the Deck of the Airship:_
			Use your abilities on the Target Dummy
			Use Outbreak |scenariogoal 7/30663 |q 44543 |future
			Use Festering Strike #2# Times |scenariogoal 7/30664 |q 44543 |future
			Use Scourge Strike #4# Times |scenariogoal 7/30665 |q 44543 |future
			Use Death Coil #4# Times |scenariogoal 7/30666 |q 44543 |future
			|only if intutorial() and raceclass("DeathKnight")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Death Strike ability on the Target Dummy
			|tip It appears on your action bar.
			Use Death Strike #2# Times |scenariogoal 8/31703 |q 44543 |future
			|only if intutorial() and raceclass("DeathKnight")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Death Grip ability on the Alliance Infantry
			|tip It appears on your action bar.
			Use Death Grip |scenariostage 9 |q 44543 |future
			|only if intutorial() and raceclass("DeathKnight")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Use your Army of the Dead ability
			|tip It appears on your action bar.
			Use Army of the Dead |scenariostage 10 |q 44543 |future
			|only if intutorial() and raceclass("DeathKnight")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			kill Alliance Infantry##102592
			Defeat the Soldier |scenariostage 11 |q 44543 |future
			|only if intutorial() and raceclass("DeathKnight")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			kill Alliance Infantry##102592+
			|tip Two of them will attack you.
			Defeat the Attacking Soldiers |scenariostage 12 |q 44543 |future
			|only if intutorial() and raceclass("DeathKnight")
		step
			_On the Deck of the Airship:_
			Watch the dialogue
			Kill enemies around this area
			Defend the Airship |scenariostage 13 |q 44543 |future
			|only if intutorial() and raceclass("DeathKnight")
	//DEATH KNIGHT - END


	step
		_On the Airship:_
		Prepare Your Character
		|tip Open your Talents panel (press N) and choose your talents.
		|tip Open your Spellbook (press P) and move the rest of your abilities to your action bars.
		clicknpc Armored Wind Rider##112565
		|tip On the right side at the back of the airship.
		Take the Wind Rider on the Back of the Airship and Join the Fleet |scenarioend |q 44543 |future
		|only if intutorial
	step
		accept The Battle for Broken Shore##44543
		|tip You will accept this quest automatically.
	step
		Travel to the Broken Shore |goto Broken Shore/0 54.26,70.35 < 50 |q 44543 |future
		|next "Begin_Broken_Shore_Scenario"


	--------------------------------
	---  Non-Boosted Characters  ---
	--------------------------------

	step
	label "Non_Boosted_Start"
		click Warchief's Command Board##207325
		accept The Legion Returns##43926 |goto Orgrimmar/1 49.65,76.47
		|only if not haveq(44543)
	step
		talk Holgar Stormaxe##4311
		turnin The Legion Returns##43926 |goto Durotar/0 46.00,13.80
		accept To Be Prepared##44281 |goto Durotar/0 46.00,13.80
		|only if not haveq(44543)
	step
		click Ribs##251255
		Eat your Last Meal |q 44281/3 |goto 47.65,13.54
		|only if not haveq(44543)
	step
		click Keg of Armor Polish##251195
		Polish your Armor |q 44281/1 |goto 49.62,14.15
		|only if not haveq(44543)
	step
		click Light-Infused Crystals##251235
		Empower your Weapon |q 44281/2 |goto 51.37,12.28
		|only if not haveq(44543)
	step
		talk Arienne Black##113948
		|tip Fight her.
		Warm Up with a Duel |q 44281/4 |goto 52.82,11.32
		|only if not haveq(44543)
	step
		talk Stone Guard Mukar##113547
		turnin To Be Prepared##44281 |goto 55.63,11.03
		accept The Battle for Broken Shore##40518 |goto 55.63,11.03
		|only if not haveq(44543)
	step
		talk Captain Russo##113118
		Take the Ship to the Broken Shore |q 40518/1 |goto 57.77,10.49
		|only if not haveq(44543)
	step
	label "Begin_Broken_Shore_Scenario"
		Begin the "Battle for Broken Shore" Scenario |scenariostart |q 40518 |only if haveq(40518) or completedq(40518)
		Begin the "Battle for Broken Shore" Scenario |scenariostart |q 44543 |only if haveq(44543) or completedq(44543)
	step
		Watch the dialogue
		|tip Ride the boat to shore.
		Travel to the Broken Shore |scenariostage 1 |goto Broken Shore/0 54.17,70.25 |q 40518 |only if haveq(40518) or completedq(40518)
		Travel to the Broken Shore |scenariostage 1 |goto Broken Shore/0 54.17,70.25 |q 44543 |only if haveq(44543) or completedq(44543)
	stickystart "fel_lords1"
	stickystart "spires_of_woe"
	step
		Kill enemies around this area
		|tip Follow the group.
		Kill #33# Demons |scenariogoal 2/27653 |goto 52.46,64.91 |q 40518 |only if haveq(40518) or completedq(40518)
		Kill #33# Demons |scenariogoal 2/27653 |goto 52.46,64.91 |q 44543 |only if haveq(44543) or completedq(44543)
	step
	label "fel_lords1"
		Kill enemies around this area
		|tip Follow the group.
		Kill #3# Fel Lords |scenariogoal 2/29377 |goto 52.46,64.91 |q 40518 |only if haveq(40518) or completedq(40518)
		Kill #3# Fel Lords |scenariogoal 2/29377 |goto 52.46,64.91 |q 44543 |only if haveq(44543) or completedq(44543)
	step
	label "spires_of_woe"
		kill Anchoring Crystal##91704+
		|tip Follow the group.
		Destroy #3# Spires of Woe |scenariogoal 2/27619 |goto 52.46,64.91 |q 40518 |only if haveq(40518) or completedq(40518)
		Destroy #3# Spires of Woe |scenariogoal 2/27619 |goto 52.46,64.91 |q 44543 |only if haveq(44543) or completedq(44543)
	step
		kill Fel Commander Azgalor##93719 |scenariogoal 3/30883 |goto 52.46,64.91 |q 40518 |only if haveq(40518) or completedq(40518)
		kill Fel Commander Azgalor##93719 |scenariogoal 3/30883 |goto 52.46,64.91 |q 44543 |only if haveq(44543) or completedq(44543)
	step
		Run up the path |goto 53.36,62.66 < 30
		Watch the dialogue
		|tip Follow the group.
		Find Sylvanas and Baine |scenariostage 4 |goto 53.98,51.09 |q 40518 |only if haveq(40518) or completedq(40518)
		Find Sylvanas and Baine |scenariostage 4 |goto 53.98,51.09 |q 44543 |only if haveq(44543) or completedq(44543)
	step
		kill Shielded Anchor##101667+
		|tip They look like big floating green crystals.
		Shatter #4# Shielded Anchors |scenariogoal 5/32861 |goto 54.43,49.64 |q 40518 |only if haveq(40518) or completedq(40518)
		Shatter #4# Shielded Anchors |scenariogoal 5/32861 |goto 54.43,49.64 |q 44543 |only if haveq(44543) or completedq(44543)
	step
		Watch the dialogue
		|tip Follow the group.
		Kill enemies all around this area
		Assault the Demon City |scenariostage 6 |goto 56.72,50.14 |q 40518 |only if haveq(40518) or completedq(40518)
		Assault the Demon City |scenariostage 6 |goto 56.72,50.14 |q 44543 |only if haveq(44543) or completedq(44543)
	step
		Watch the dialogue
		|tip Follow the group.
		Find Tirion |scenariostage 7 |goto 57.18,35.03 |q 40518 |only if haveq(40518) or completedq(40518)
		Find Tirion |scenariostage 7 |goto 57.18,35.03 |q 44543 |only if haveq(44543) or completedq(44543)
	step
		Kill enemies around this area
		kill Krosus##90544
		Slay Krosus |scenariostage 8 |goto 57.18,35.03 |q 40518 |only if haveq(40518) or completedq(40518)
		Slay Krosus |scenariostage 8 |goto 57.18,35.03 |q 44543 |only if haveq(44543) or completedq(44543)
	step
		Follow the path up |goto 58.08,34.78 < 20
		Follow the path up |goto 64.05,33.37 < 20
		Watch the dialogue
		|tip Follow the group
		Kill the enemies that attack in waves
		Confront Gul'dan |scenarioend |goto 63.31,30.97 |q 40518 |only if haveq(40518) or completedq(40518)
		Confront Gul'dan |scenarioend |goto 63.31,30.97 |q 44543 |only if haveq(44543) or completedq(44543)
		Assault the Broken Shore |q 40518/2 |goto 63.31,30.97 |only if haveq(40518) or completedq(40518)
		Assault the Broken Shore |q 44543/1 |goto 63.31,30.97 |only if haveq(44543) or completedq(44543)
	step
		talk Eitrigg##100453
		turnin The Battle for Broken Shore##40518 |goto Durotar/0 57.17,10.53 |only if haveq(40518) or completedq(40518)
		turnin The Battle for Broken Shore##44543 |goto Durotar/0 57.17,10.53 |only if haveq(44543) or completedq(44543)
		accept Fate of the Horde##40522 |goto Durotar/0 57.17,10.53
	step
		Fly into Orgrimmar |goto 48.01,11.63 > 10000 |walk
		talk High Overlord Saurfang##100636
		Report to Saurfang |q 40522/1 |goto Orgrimmar/1 50.02,75.96
	step
		Enter Grommash Hold |q 40522/2 |goto Orgrimmar/1 49.59,74.74
	step
		Watch the dialogue
		Learn the Fate of the Horde |q 40522/3 |goto 48.35,71.33
	step
		talk Lady Sylvanas Windrunner##100866
		Pledge to Warchief Sylvanas |q 40522/4 |goto Durotar/0 45.71,15.88
	step
		talk Lady Sylvanas Windrunner##100866
		turnin Fate of the Horde##40522 |goto 45.71,15.88
		accept Emissary##40760 |goto 45.71,15.88
	step
		talk Allari the Souleater##100873
		turnin Emissary##40760 |goto 45.82,15.11
		accept Demons Among Us##40607 |goto 45.82,15.11
	step
		talk Allari the Souleater##100873
		Learn what Allari the Souleater Knows |q 40607/1 |goto 45.82,15.11
	step
		Kill enemies around this area
		Slay #12# Demons |q 40607/2 |goto 45.94,14.70
	step
		talk Lady Sylvanas Windrunner##101035
		turnin Demons Among Us##40607 |goto 45.68,15.92
		accept Keep Your Friends Close##40605 |goto 45.68,15.92
	step
		Fly into Orgrimmar |goto 45.95,12.19 > 10000 |walk
		talk Elthyn Da'rai##95234
		|tip Up on the platform near the flight path, she walks around.
		turnin Keep Your Friends Close##40605 |goto Orgrimmar/1 52.91,56.51
	step
		talk Khadgar's Upgraded Servant##114550
		|tip It appears next to you in Orgrimmar.
		accept Calling of the Council##40718 |goto 52.91,56.51
	step
		Enter the Cleft of Shadow |goto 45.79,66.88 > 10000 |walk
		Follow the path |goto Orgrimmar/2 31.71,84.96 < 15 |walk
		click Portal to Dalaran##251123
		Take the Portal to Dalaran over Karazhan in the Cleft of Shadow |q 40718/1 |goto Orgrimmar/2 36.28,71.13
	step
		talk Archmage Khadgar##101425
		Watch the dialogue
		|tip Follow Archmage Khadgar.
		Speak to Archmage Khadgar in Dalaran |q 40718/2 |goto Deadwind Pass/21 31.25,43.78
	step
		talk Archmage Khadgar##101427
		Watch the dialogue
		Have Khadgar Address the Council of Six |q 40718/3 |goto 30.55,48.97
	step
		talk Archmage Khadgar##113637
		turnin Calling of the Council##40718 |goto 29.76,48.83
	step
		Watch the dialogue
		talk Brann Bronzebeard##113655
		accept The Diamond King##42970 |goto 30.82,49.01
	step
		talk Brann Bronzebeard##113655
		Tell Brann It's Time to Go |q 42970/1 |goto 30.82,49.01
	step
		click Ulduar Teleportation Pad##257872
		Take Brann's Portal to Ulduar |q 42970/2 |goto 30.47,48.95
	step
		Begin the Finding Magni Scenario |scenariostart |q 42970
	step
		Watch the dialogue
		Follow the Caretaker through Ulduar's Antechamber |scenariostage 1 |goto Ulduar L/1 37.12,54.93 |q 42970
	step
		Watch the dialogue
		Kill the enemies that attack
		Defeat the Invaders |scenariostage 2 |goto 37.12,54.93 |q 42970
	step
		Find Magni Bronzebeard |scenariostage 3 |goto 45.81,31.83 |q 42970
		|tip Follow your allies.
	step
		talk Archmage Khadgar##107771
		Speak to Khadgar to Bring Down the Fel Barrier |scenariostage 4 |goto 45.81,31.83 |q 42970
	step
		Kill the enemies that attack
		Defeat the Demons Holding Magni Bronzebeard |scenariostage 5 |goto 51.32,33.18 |q 42970
	step
		Watch the dialogue
		|tip Follow your allies.
		Walk to the Entrance of the Celestial Planetarium |scenariostage 6 |goto 59.64,46.15 |q 42970
	step
		talk Magni Bronzebeard##106697
		|tip Wait for Magni to open the door.
		Tell Magni you are Ready to Enter the Celestial Planetarium |scenariostage 7 |goto 59.64,46.15 |q 42970
	step
		Watch the dialogue
		Receive Magni's Important Message |scenarioend |goto 74.95,46.55 |q 42970
		Learn Magni Bronzebeard's Information |q 42970/3 |goto 74.95,46.55
	step
		click Portal to Karazhan##246009
		Take Khadgar's Portal to Karazhan |q 42970/4 |goto 75.36,48.27
	step
		talk Archmage Khadgar##101547
		turnin The Diamond King##42970 |goto Deadwind Pass/0 47.00,75.08
		accept Hiding in the Stacks##40755 |goto Deadwind Pass/0 47.00,75.08
	step
		click Karazhan Gatehouse Portcullis
		|tip Walk into the swirling portal.
		Begin the Return to Karazhan Scenario |scenariostart |goto 46.80,74.56 |q 40755
	step
		Watch the dialogue
		talk Archmage Khadgar##101159
		Meet with Khadgar |scenariostage 1 |goto Karazhan L/1 53.62,64.58 |q 40755
	step
		Run up the stairs |goto 53.19,62.83 > 10000 |walk
		Watch the dialogue
		|tip Follow Archmage Khadgar.
		Listen to the Story of Khadgar's Arrival|scenariostage 2 |goto Karazhan L/2 66.41,50.38 |q 40755
	step
		Kill the enemy that attacks
		Disable the Arcane Protector |scenariostage 3 |goto 61.89,57.87 |q 40755
	step
		Watch the dialogue
		Stay with Khadgar |scenariostage 4 |goto 54.27,67.07 |q 40755
	step
		clicknpc Mark of the Kirin Tor##101407
		Deactivate the Protective Rune |scenariostage 5 |goto 67.51,48.73 |q 40755
	step
		Run up the stairs |goto 71.48,42.35 > 10000 |walk
		Watch the dialogue
		click Guardian's Arcanum##246020
		Escape to the Library |scenariostage 6 |goto Karazhan L/3 67.26,41.90 |q 40755
	step
		kill Agitated Tome##101633+
		Destroy the Agitated Tomes |scenariostage 7 |goto Karazhan L/4 72.40,25.30 |q 40755
	step
		Watch the dialogue
		Kill the enemies that attack
		Subdue the Guardians |scenariostage 8 |goto 72.64,24.73 |q 40755
	step
		Watch the dialogue
		clicknpc Ancient Curator##101792+
		clicknpc Arcane Keeper##101432
		|tip Click all 3 of them. They will be wherever you killed them.
		Reactivate the Guardians |scenariostage 9 |goto 72.64,24.73 |q 40755
	step
		Watch the dialogue
		click Notable Antiquities of Ancient Azeroth##253980
		Recover the Tome |scenariostage 10 |goto 75.32,24.15 |q 40755
		Recover the Knowledge of the Pillars of Creation |q 40755/1 |goto 75.32,24.15
	step
		Watch the dialogue
		Listen to Khadgar's Instructions |scenarioend |goto 72.51,25.45 |q 40755
	step
		click Portal to Dalaran##251123 |goto 71.76,23.99 |n
		Travel to Dalaran |goto 71.76,23.99 > 1000 |noway |c |q 40755
	step
		talk Archmage Modera##113836
		turnin Hiding in the Stacks##40755 |goto Deadwind Pass/21 30.19,51.21
	step
		talk Khadgar's Upgraded Servant##114561
		|tip It appears next to you in Dalaran.
		accept City Under Siege##44182 |goto Deadwind Pass/21 30.19,51.21
	step
		Enter the building |goto 45.73,43.42 < 10
		talk Archmage Khadgar##113986
		turnin City Under Siege##44182 |goto 49.83,48.27
		accept Anomalous Anomalies##44421 |goto 49.83,48.27
	step
		Use your Translocation Anomaly Neutralization Crystal on Unstable Anomalies |use Translocation Anomaly Neutralization Crystal##141411
		|tip They look like purple orbs floating all around Dalaran.
		Neutralize #4# Unstable Anomalies |q 44421/1 |goto 43.47,38.72
	step
		Enter the building |goto 45.73,43.42 < 10
		talk Archmage Khadgar##113986
		turnin Anomalous Anomalies##44421 |goto 49.83,48.27
		accept Author! Author!##44500 |goto 49.76,48.28
	step
		talk Archmage Khadgar##113986
		Watch the dialogue
		Summon Alodi and Learn the Location of the Pillars |q 44500/1 |goto 49.83,48.27
	step
		talk Archmage Khadgar##113986
		turnin Author! Author!##44500 |goto 49.82,48.29
	step
		Congratulations!  You completed the Legion intro.
		|tip See you for more on Augusth 30th!
		.
		|tip Be ready to take on the Burning Legion with Zygor Elite!
]])