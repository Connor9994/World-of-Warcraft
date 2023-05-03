if UnitFactionGroup("player")~="Alliance" then return end
local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end

----------------
----- NPCs -----
----------------

ZygorGuidesViewer:RegisterInclude("Garrison_BAlexston",[[
		talk Baros Alexston##77209 |goto Lunarfall/0 41.2,49.3 |only if garrisonlvl(1)
		talk Baros Alexston##77209 |goto Lunarfall/0 31.7,31.1 |only if garrisonlvl(2)
		talk Baros Alexston##77209 |goto Lunarfall/0 29.2,33.1 |only if garrisonlvl(3)
		|tip Inside the building. |only if garrisonlvl(2) or garrisonlvl(3)
]])

ZygorGuidesViewer:RegisterInclude("Garrison_BGrey",[[
		talk Bodrick Grey##81492 |goto Lunarfall/0 31.5,33.0 |only if garrisonlvl(1)
		talk Bodrick Grey##81492 |goto Lunarfall/0 38.3,37.0 |only if garrisonlvl(2)
		talk Bodrick Grey##81492 |goto Lunarfall/0 38.3,37.0 |only if garrisonlvl(3)
]])

ZygorGuidesViewer:RegisterInclude("Garrison_BlueprintVendor",[[
		_Sparz Boltwist doesn't join your Garrison until Garrison level 2!_ |only if garrisonlvl(1)
		talk Sparz Boltwist##85839 |goto Lunarfall/0 31.9,30.5 |only if garrisonlvl(2)
		talk Sparz Boltwist##85839 |goto Lunarfall/0 29.6,32.6 |only if garrisonlvl(3)
		|tip Inside the building. |only if garrisonlvl(2) or garrisonlvl(3)
]])

ZygorGuidesViewer:RegisterInclude("Garrison_Brightstone",[[
		talk Assistant Brightstone##84455 |goto Lunarfall/0 44.8,53.5 |only if garrisonlvl(1)
		talk Assistant Brightstone##84455 |goto Lunarfall/0 31.4,32.5 |only if garrisonlvl(2)
		talk Assistant Brightstone##84455 |goto Lunarfall/0 29.0,35.4 |only if garrisonlvl(3)
		|tip Inside the building. |only if garrisonlvl(2) or garrisonlvl(3)
]])

ZygorGuidesViewer:RegisterInclude("Garrison_Crowler",[[
		talk Sergeant Crowler##88223 |goto Lunarfall/0 42.3,44.9 |only if garrisonlvl(1)
		talk Sergeant Crowler##88223 |goto Lunarfall/0 37.7,36.0 |only if garrisonlvl(2)
		talk Sergeant Crowler##88223 |goto Lunarfall/0 38.5,31.4 |only if garrisonlvl(3)
		|tip Outside, next to the building. |only if garrisonlvl(3)
]])

ZygorGuidesViewer:RegisterInclude("Garrison_DLongdrink",[[
		talk Dungar Longdrink##81103 |goto Lunarfall/0 48.0,49.8 |only if garrisonlvl(1)
		talk Dungar Longdrink##81103 |goto Lunarfall/0 48.0,49.8 |only if garrisonlvl(2)
		talk Dungar Longdrink##81103 |goto Lunarfall/0 48.0,49.8 |only if garrisonlvl(3)
]])

ZygorGuidesViewer:RegisterInclude("Garrison_Dorn",[[
		_Jr. Surveyor Dorn doesn't join your Garrison until Garrison level 2!_ |only if garrisonlvl(1)
		talk Jr. Surveyor Dorn##77217 |goto Lunarfall/0 64.5,69.9 |only if garrisonlvl(2)
		talk Jr. Surveyor Dorn##77217 |goto Lunarfall/0 64.5,69.9 |only if garrisonlvl(3)
]])

ZygorGuidesViewer:RegisterInclude("Garrison_Harrison",[[
		talk Harrison Jones##89793 |goto Lunarfall/0 34.2,32.7
		|tip Inside the building.
]])

ZygorGuidesViewer:RegisterInclude("Garrison_Inkeeper",[[
		talk Deedree##82776 |goto Lunarfall/0 42.1,52.0 |only if garrisonlvl(1)
		talk Deedree##82776 |goto Lunarfall/0 32.2,32.9 |only if garrisonlvl(2)
		talk Deedree##82776 |goto Lunarfall/0 33.0,35.3 |only if garrisonlvl(3)
		|tip Inside the building. |only if garrisonlvl(2) or garrisonlvl(3)
]])

ZygorGuidesViewer:RegisterInclude("Garrison_KenLoggin",[[
		talk Ken Loggin##80163 |goto Lunarfall/0 48.94,42.25 |only if garrisonlvl(1)
		talk Ken Loggin##80163 |goto Lunarfall/0 37.9,63.8 |only if garrisonlvl(2)
		talk Ken Loggin##80163 |goto Lunarfall/0 40.3,54.4 |only if garrisonlvl(3)
]])

ZygorGuidesViewer:RegisterInclude("Garrison_Lioness",[[
		talk Lio the Lioness##85418 |goto Lunarfall/0 28.5,39.1 |only if garrisonlvl(2)
		talk Lio the Lioness##85418 |goto Lunarfall/0 28.5,39.1 |only if garrisonlvl(3)
]])

ZygorGuidesViewer:RegisterInclude("Garrison_LtThorn",[[
		talk Lieutenant Thorn##79953 |goto Lunarfall/0 40.2,53.6 |only if garrisonlvl(1)
		talk Lieutenant Thorn##79953 |goto Lunarfall/0 31.1,32.9 |only if garrisonlvl(2)
		talk Lieutenant Thorn##79953 |goto Lunarfall/0 28.7,35.1 |only if garrisonlvl(3)
		|tip Inside the building.
]])

ZygorGuidesViewer:RegisterInclude("Garrison_Maraad",[[
		talk Vindicator Maraad##79457 |goto Lunarfall/0 44.1,53.3 |only if garrisonlvl(1)
		talk Vindicator Maraad##79457 |goto Lunarfall/0 41.5,44.9 |only if garrisonlvl(2)
		talk Vindicator Maraad##79457 |goto Lunarfall/0 41.5,45.0 |only if garrisonlvl(3)
]])

ZygorGuidesViewer:RegisterInclude("Garrison_Morthis",[[
		talk Morthis Whisperwing##88112 |goto Lunarfall/0 47.4,89.18 |only if garrisonlvl(2)
		talk Morthis Whisperwing##88112 |goto Lunarfall/0 47.42,89.2 |only if garrisonlvl(3)
		|tip Inside the cave.
]])

ZygorGuidesViewer:RegisterInclude("Garrison_Muradin",[[
		talk Muradin Bronzebeard##89763 |goto Lunarfall/0 34.2,32.7
		|tip Inside the building.
]])

ZygorGuidesViewer:RegisterInclude("Garrison_Nixxie",[[
		talk Nixxie##88892 |goto Lunarfall/0 53.14,69.55 |only if garrisonlvl(2)
		talk Nixxie##88892 |goto Lunarfall/0 61.1,79.3 |only if garrisonlvl(3)
]])

ZygorGuidesViewer:RegisterInclude("Garrison_Pagle",[[
		talk Nat Pagle##85984 |goto Lunarfall/0 54.2,14.3 |only if garrisonlvl(2)
		talk Nat Pagle##85984 |goto Lunarfall/0 54.2,14.3 |only if garrisonlvl(3)
]])

ZygorGuidesViewer:RegisterInclude("Garrison_QMoonshadow",[[
		talk Qiana Moonshadow##81948 |goto Lunarfall/0 40.5,54.0 |only if garrisonlvl(1)
		talk Qiana Moonshadow##79611 |goto Lunarfall/0 50.3,49.4 |only if garrisonlvl(2)
		talk Qiana Moonshadow##79611 |goto Lunarfall/0 50.4,48.8 |only if garrisonlvl(3)
		|tip Inside the building. |only if garrisonlvl(1)
]])

ZygorGuidesViewer:RegisterInclude("Garrison_RAshton",[[
		talk Ron Ashton##77733 |goto Lunarfall/0 54.2,14.3 |only if garrisonlvl() >= 2
]])

ZygorGuidesViewer:RegisterInclude("Garrison_ScoutValdez",[[
		_Scout Valdez doesn't join your Garrison until Garrison level 2!_ |only if garrisonlvl(1)
		talk Scout Valdez##81152 |goto Lunarfall/0 30.9,31.5 |only if garrisonlvl(2)
		talk Scout Valdez##81152 |goto Lunarfall/0 31.0,31.2 |only if garrisonlvl(3)
]])

ZygorGuidesViewer:RegisterInclude("Garrison_Shelly",[[
		talk Shelly Hamby##81441 |goto Lunarfall/0 32.5,34.4 |only if garrisonlvl(1)
		talk Shelly Hamby##81441 |goto Lunarfall/0 31.7,31.1 |only if garrisonlvl(2) --
		talk Shelly Hamby##81441 |goto Lunarfall/0 29.2,33.1 |only if garrisonlvl(3) --
]])

ZygorGuidesViewer:RegisterInclude("Garrison_Shiv",[[
		talk Renzik "The Shiv"##89805 |goto Lunarfall/0 34.2,32.7
		|tip Inside the building.
]])

ZygorGuidesViewer:RegisterInclude("Garrison_Valdez",[[
		talk Scout Valdez##81152 |goto Lunarfall/0 46.5,54.3 |only if garrisonlvl(1)
		talk Scout Valdez##81152 |goto Lunarfall/0 30.9,31.5 |only if garrisonlvl(2)
		talk Scout Valdez##81152 |goto Lunarfall/0 31.0,31.1 |only if garrisonlvl(3)
		|tip Inside the building. |only if garrisonlvl(2) or garrisonlvl(3)
]])

ZygorGuidesViewer:RegisterInclude("Garrison_Yrel",[[
		talk Yrel##80568 |goto Lunarfall/0 47.0,51.0 |only if garrisonlvl(1)
		talk Yrel##80568 |goto Lunarfall/0 48.0,49.8 |only if garrisonlvl(2)--
		talk Yrel##80568 |goto Lunarfall/0 48.0,49.8 |only if garrisonlvl(3)--
]])

-------------------
----- Objects -----
-------------------

ZygorGuidesViewer:RegisterInclude("Garrison_ArchitectTable",[[
		clicknpc Architect Table##86018 |goto Lunarfall/0 41.1,49.0 |only if garrisonlvl(1)
		clicknpc Architect Table##86018 |goto Lunarfall/0 31.7,30.8 |only if garrisonlvl(2)
		clicknpc Architect Table##86018 |goto Lunarfall/0 29.3,32.7 |only if garrisonlvl(3)
		|tip Inside the building. |only if garrisonlvl(2) or garrisonlvl(3)
]])

ZygorGuidesViewer:RegisterInclude("Garrison_BBoard",[[
		click Bounty Board##232398 |goto Lunarfall/0 42.9,44.5 |only if garrisonlvl(1)
		click Bounty Board##232398 |goto Lunarfall/0 42.7,44.8 |only if garrisonlvl(2)
		click Bounty Board##232398 |goto Lunarfall/0 42.7,44.8 |only if garrisonlvl(3)
]])

ZygorGuidesViewer:RegisterInclude("Garrison_Cache",[[
		click Garrison Cache##237191 |goto Lunarfall/0 49.2,43.7 |only if garrisonlvl(1)
		click Garrison Cache##237191 |goto Lunarfall/0 37.16,31.78 |only if garrisonlvl(2)
		click Garrison Cache##237191 |goto Lunarfall/0 37.3,32.0 |only if garrisonlvl(3)
]])

ZygorGuidesViewer:RegisterInclude("Garrison_CommandTable",[[
		clicknpc Command Table##84698 |goto Lunarfall/0 40.4,53.5 |only if garrisonlvl(1)
		clicknpc Command Table##84698 |goto Lunarfall/0 31.3,32.7 |only if garrisonlvl(2)
		clicknpc Command Table##84698 |goto Lunarfall/0 28.9,34.9 |only if garrisonlvl(3)
		|tip Inside the building.
]])

ZygorGuidesViewer:RegisterInclude("Garrison_Warplans",[[
		_You don't have access to Garrison dailies until Garrison level 2!_ |only if garrisonlvl(1)
		click War Planning Map##236206 |goto Lunarfall/0 30.7,31.8 |only if garrisonlvl(2)
		click War Planning Map##236206 |goto Lunarfall/0 31.5,31.0 |only if garrisonlvl(3)
		|tip Inside the building. |only if garrisonlvl(2) or garrisonlvl(3)
]])


------------------------------
----- Garrison Buildings -----
------------------------------

ZygorGuidesViewer:RegisterInclude("Garrison_Small_Building",[[
		%action% |goto Lunarfall/0 46.3,59.6 |only if ZGV.Garrison_GetBuildingLocation("%building%")==18
		%action% |goto Lunarfall/0 50.4,57.3 |only if ZGV.Garrison_GetBuildingLocation("%building%")==19
		%action% |goto Lunarfall/0 51.8,63.0 |only if ZGV.Garrison_GetBuildingLocation("%building%")==20
		%action% |goto Lunarfall/0 48.5,58.7 |only if default
]])

ZygorGuidesViewer:RegisterInclude("Garrison_Finalize_Small",[[
		click Finalize Garrison Plot##236190 |goto Lunarfall/0 47.6,59.0 |only if ZGV.Garrison_GetBuildingLocation("%building%")==18
		click Finalize Garrison Plot##236190 |goto Lunarfall/0 49.2,58.2 |only if ZGV.Garrison_GetBuildingLocation("%building%")==19
		click Finalize Garrison Plot##236190 |goto Lunarfall/0 50.5,64.0 |only if ZGV.Garrison_GetBuildingLocation("%building%")==20
		click Finalize Garrison Plot##236190 |goto Lunarfall/0 47.6,59.0 |only if default
		|tip It looks like a huge floating scroll in a column of yellow light.
]])

ZygorGuidesViewer:RegisterInclude("Garrison_Medium_Building",[[
		%action% |goto Lunarfall/0 34.2,48.9 |only if ZGV.Garrison_GetBuildingLocation("%building%")==22
		%action% |goto Lunarfall/0 52.2,44.8 |only if ZGV.Garrison_GetBuildingLocation("%building%")==25
		%action% |goto Lunarfall/0 34.2,48.9 |only if default
]])

ZygorGuidesViewer:RegisterInclude("Garrison_Finalize_Medium",[[
		click Finalize Garrison Plot##236190 |goto Lunarfall/0 36.4,49.3 |only if ZGV.Garrison_GetBuildingLocation("%building%")==22
		click Finalize Garrison Plot##236190 |goto Lunarfall/0 50.9,47.6 |only if ZGV.Garrison_GetBuildingLocation("%building%")==25
		click Finalize Garrison Plot##236190 |goto Lunarfall/0 50.9,47.6 |only if default
		|tip It looks like a huge floating scroll in a column of yellow light.
]])

ZygorGuidesViewer:RegisterInclude("Garrison_Large_Building",[[
		%action% |goto Lunarfall/0 45.0,42.8 |only if ZGV.Garrison_GetBuildingLocation("%building%")==23 and garrisonlvl(1)
		%action% |goto Lunarfall/0 45.8,39.8 |only if ZGV.Garrison_GetBuildingLocation("%building%")==23 and garrisonlvl() >= 2
		%action% |goto Lunarfall/0 39.4,58.1 |only if ZGV.Garrison_GetBuildingLocation("%building%")==24
		%action% |goto Lunarfall/0 45.0,42.8 |only if default
]])

ZygorGuidesViewer:RegisterInclude("Garrison_Finalize_Large",[[
		click Finalize Garrison Plot##236190 |goto Lunarfall/0 44.4,45.2 |only if ZGV.Garrison_GetBuildingLocation("%building%")==23 and garrisonlvl(1)
		click Finalize Garrison Plot##236190 |goto Lunarfall/0 44.9,43.9 |only if ZGV.Garrison_GetBuildingLocation("%building%")==23 and garrisonlvl() >= 2
		click Finalize Garrison Plot##236190 |goto Lunarfall/0 40.6,55.7 |only if ZGV.Garrison_GetBuildingLocation("%building%")==24
		click Finalize Garrison Plot##236190 |goto Lunarfall/0 44.4,45.2 |only if default
		|tip It looks like a huge floating scroll in a column of yellow light.
]])

ZygorGuidesViewer:RegisterInclude("Garrison_HerbGarden",[[
		|goto Lunarfall/0 65.2,41.9 |only if garrisonlvl(2)
		|goto Lunarfall/0 58.9,53.5 |only if garrisonlvl(3)
]])

ZygorGuidesViewer:RegisterInclude("Garrison_LunarfallExcavation_Talk",[[
		talk %npc% |goto Lunarfall/0 65.2,41.9 |only if garrisonlvl(2)
		talk %npc% |goto Lunarfall/0 65.0,42.0 |only if garrisonlvl(3)
]])

ZygorGuidesViewer:RegisterInclude("Garrison_LunarfallExcavation_Finalize",[[
		click Finalize Garrison Plot##236190 |goto Lunarfall/0 66.3,40.5
		|tip It looks like a huge floating scroll in a column of yellow light. |only if garrisonlvl() >= 2
]])

ZygorGuidesViewer:RegisterInclude("Garrison_LunarfallExcavation_EnterMine",[[
		Enter the mine |goto Lunarfall/23 69.4,67.6 < 10 |only if garrisonlvl(3)
		Follow the path down |goto Lunarfall/23 77.8,75.8 < 10 |only if garrisonlvl(3)
		Go down the stairs |goto Lunarfall/23 77.7,52.9 < 10 |only if garrisonlvl(3)
]])

ZygorGuidesViewer:RegisterInclude("Garrison_LunarfallExcavation_LeaveMine",[[
		_Go up_ the stairs |goto Lunarfall/23 71.3,53.2 < 10 |only if garrisonlvl(3)
		_Follow_ the winding path up |goto Lunarfall/23 77.8,75.8 < 10 |only if garrisonlvl(3)
		_Leave_ the mine |goto Lunarfall/23 69.4,67.6 < 10 |only if garrisonlvl(3)
		_Run further_ into your garrison |goto Lunarfall/23 68.0,63.5 < 20 |only if garrisonlvl(3)
]])

ZygorGuidesViewer:RegisterInclude("Garrison_Fishing_Talk",[[
		talk %npc% |goto Lunarfall/0 54.6,14.9 |only if garrisonlvl() >= 2
]])

ZygorGuidesViewer:RegisterInclude("Garrison_Fishing_Finalize",[[
		click Finalize Garrison Plot##236190 |goto Lunarfall/0 54.4,15.5
		|tip It looks like a huge floating scroll in a column of yellow light. |only if garrisonlvl() >= 2
]])

ZygorGuidesViewer:RegisterInclude("Garrison_HerbGarden_Talk",[[
		talk %npc% |goto Lunarfall/0 58.9,53.4 |only if garrisonlvl() >= 2
]])

ZygorGuidesViewer:RegisterInclude("Garrison_HerbGarden_Finalize",[[
		click Finalize Garrison Plot##236190 |goto Lunarfall/0 58.7,52.2
		|tip It looks like a huge floating scroll in a column of yellow light. |only if garrisonlvl() >= 2
]])

------------------------------
----- Garrison Followers -----
------------------------------

ZygorGuidesViewer:RegisterInclude("Garrison_Weldon_Barov",[[
		In order to recruit this Follower you must have a Lumber Mill and be able to harvest small timber with _Apprentice Logging_
		|tip Use the Garrison Buildings guides to accomplish this.
		Harvest the Fallen Tree |goto Talador 73.7,64.0
		It can also be at these locations:
		Location 1: [Talador/0 59.0,29.8]
		Location 2: [Talador/0 54.3,56.2]
		Location 3: [Talador/0 70.1,54.2]
		_Wait_ for Weldon Barov to appear
		talk Weldon Barov##85378
		accept The Rise and Fall of Barov Industries: Weldon Barov##36429
	step
		Congratulations, you now have Weldon Barov as a Garrison Follower!
]])

-----------------------------
----- Garrison Campaign -----
-----------------------------

ZygorGuidesViewer:RegisterInclude("Garrison_Campaign",[[
	step
	label "Menu"
		Proceeding to end |next "End" |only if completedq(34033) and completedq(34450) and completedq(35196) and completedq(36289) and completedq(35685) and completedq(34289) and completedq(36169) and completedq(37517) and completedq(35841) and completedq(34410) and completedq(36162) and completedq(36341)
	step
	label "Menu1"
		#include "Garrison_BAlexston"
		accept Garrison Campaign: Seismic Matters##34026 |next "Seismic" |or
		If this Campaign is not available, click here to proceed |next "Menu2" |confirm |or
		only if not completedq(34033)
	step
	label "Menu2"
		#include "Garrison_BGrey"
		accept Garrison Campaign: Darktide Roost##35861 |next "Roost" |or
		If this Campaign is not available, click here to proceed |next "Menu3" |confirm |or
		only if not completedq(34450)
	step
	label "Menu3"
		talk Khadgar's Servant##83858
		accept Garrison Campaign: The Sargerei##35185 |goto Lunarfall/0 44.90,52.75 |next "Sargerei" |or
		If this Campaign is not available, click here to proceed |next "Menu4" |confirm |or
		only if not completedq(35196)
	step
	label "Menu4"
		click Overly Gaudy Note##234243
		|tip It has a goblin face on it.
		Accept Garrison Campaign: The Ring of Blood |complete haveq(36280) or haveq(36219) or haveq(36281) or haveq(36282) |goto Lunarfall/0 34.11,32.57 |next "RingofBlood" |or
		If this Campaign is not available, click here to proceed |next "Menu5" |confirm |or
		only if not completedq(36289)
	step
	label "Menu5"
		talk Khadgar's Servant##83858
		|tip This elemental patrols your garrison.
		accept Garrison Campaign: The Fall of Shattrath##35679 |goto Lunarfall/0 44.49,45.58 |next "Shattrath" |or
		If this Campaign is not available, click here to proceed |next "Menu6" |confirm |or
		only if not completedq(35685)
	step
	label "Menu6"
		#include "Garrison_BGrey"
		accept Garrison Campaign: The Search for Owynn Graddock##34284 |next "Bloodmaul" |or
		If this Campaign is not available, click here to proceed |next "Menu7" |confirm |or
		only if not completedq(34289)
	step
	label "Menu7"
		#include "Garrison_Inkeeper"
		accept Garrison Campaign: The Exarch's Call##36163 |next "Exarch" |or
		If this Campaign is not available, click here to proceed |next "Menu8" |confirm |or
		only if not completedq(36169)
	step
	label "Menu8"
		#include "Garrison_Nixxie"
		accept Garrison Campaign: The Broken Precipice##35985 |next "Precipice" |or
		If this Campaign is not available, click here to proceed |next "Menu9" |confirm |or
		only if not completedq(37517)
	step
	label "Menu9"
		#include "Garrison_BGrey"
		accept Garrison Campaign: Deep Recon##35837 |next "Recon" |or
		If this Campaign is not available, click here to proceed |next "Menu10" |confirm |or
		only if not completedq(35841)
	step
	label "Menu10"
		#include "Garrison_Morthis"
		accept Garrison Campaign: Crows in the Field##34409 |next "Crows"
		If this campaign is not available, click here to proceed |next "Menu11" |confirm |or
		only if not completedq(34410)
	step
	label "Menu11"
		#include "Garrison_BAlexston"
		accept Garrison Campaign: Every Rose Has Its Thorn##36160 |next "Thorn"
		If this campaign is not available, click here to proceed |next "Menu12" |confirm |or
		only if not completedq(36162)
	step
	label "Menu12"
		#include "Garrison_BGrey"
		accept Garrison Campaign: Awakening##36134 |next "Fury" |or
		only if not completedq(36341)
	---//Garrison Campaign: Seismic Matters\\--
	step
	label "Seismic"
		_Go through_ the garrison gate |goto Lunarfall/0 52.6,72.1 < 10 |only if garrisonlvl(3)
		#include "Garrison_Dorn"
		turnin Garrison Campaign: Seismic Matters##34026
		accept Groundbreaking Data##34027
	step
		clicknpc Tremor-Tracker##77225
		|tip It looks like a small stack of stone blocks with gold accent lines.
		kill 6 Iron Grunt##77244
		|tip Two mole machines will spawn with 3 Iron Grunts each.
		Complete the Tremor-Tracker Data Analysis |q 34027/1 |goto 64.55,69.33
	step
		#include "Garrison_Dorn"
		turnin Groundbreaking Data##34027
		accept These Look Familiar...##34028
	step
		_Jump down_ here |goto Gorgrond/0 69.5,28.4 < 10 |only if walking
		_Enter_ the cave here |goto Gorgrond/0 69.7,23.9 < 10 |walk
		Find Thaelin Darkanvil's Workshop | q These Look Familiar...##34028/1 |goto Gorgrond/0 69.7,25.7
	step
		talk Hansel Heavyhands##77160
		turnin These Look Familiar...##34028 |goto 69.63,26.11
		accept The Prototype##34029 |goto 69.63,26.11
	step
		click Prototype Mole Machine##227270
		|tip It looks like a huge drilling machine with a pointed metal top.
		Ride the Prototype Mole Machine |q 34029/1 |goto 69.22,25.64
	stickystart "Siegework"
	step
		talk Hansel Heavyhands##77160
		turnin The Prototype##34029 |goto Frostfire Ridge/0 86.38,48.92
		accept The Captive Engineer##34030 |goto Frostfire Ridge/0 86.38,48.92
	step
		_Enter_ the building |goto Frostfire Ridge/0 87.8,48.9 < 10 |walk
		_Jump down_ here |goto Frostfire Ridge/0 88.2,48.9 < 7 |walk
		talk Thaelin Darkanvil##77185
		Find Thaelin Darkanvil |q 34030/1 |goto 88.40,49.48
	step
		talk Thaelin Darkanvil##77185
		turnin The Captive Engineer##34030 |goto 88.40,49.48
	step
		Next to you:
		talk Thaelin Darkanvil##75136
		accept "Mole Machine, Go Home"##34048
		accept Something to Remember Me By##34031
	stickystart "MoleMachine"
	step
		_Go up_ the stairs and _through the doorway_ |goto 88.8,49.2 < 10
		clicknpc Mole Machine##88475
		|tip It looks like a big metal drilling machine with a pointed metal top.
		Send the Mole Machine Home |q 34048/1 |goto Frostfire Ridge/0 87.6,51.2 |count 1
	step
		clicknpc Mole Machine##88475
		|tip It looks like a big metal drilling machine with a pointed metal top.
		Send the Mole Machine Home |q 34048/1 |goto Frostfire Ridge/0 86.4,56.1 |count 2
	step
		clicknpc Mole Machine##88475
		|tip It looks like a big metal drilling machine with a pointed metal top.
		Send the Mole Machine Home |q 34048/1 |goto Frostfire Ridge/0 88.0,58.2 |count 3
	step
		clicknpc Mole Machine##88475
		|tip It looks like a big metal drilling machine with a pointed metal top.
		Send the Mole Machine Home |q 34048/1 |goto Frostfire Ridge/0 86.2,60.5 |count 4
	step
		_Follow_ the path down |goto 87.4,59.0 < 10
		_Go up_ the path |goto 86.0,54.9 < 10
		clicknpc Mole Machine##88475
		|tip It looks like a big metal drilling machine with a pointed metal top.
		Send the Mole Machine Home |q 34048/1 |goto Frostfire Ridge/0 84.7,53.3 |count 5
	step
	label "MoleMachine"
		All around this area:
		click Plant Dark Iron Mines##227183
		|tip They look like yellow-white discs with antennas on the ground.
		Place #4# Dark Iron Mines |q 34031/1 |goto 87.71,51.60
	step
		Next to you:
		talk Thaelin Darkanvil##77167
		turnin "Mole Machine, Go Home"##34048
		turnin Something to Remember Me By##34031
		accept Privileged Information##34032
	step
		_Jump down_ here |goto 85.6,53.2 < 10 |only if walking
		_Follow_ the path up |goto Frostfire Ridge/0 86.3,51.3 < 20 |only if walking
		_Go up_ the wooden ramp |goto Frostfire Ridge/0 86.0,47.6 < 10 |only if walking
		kill Overlord Blackhammer##77175
		Retrieve Thaelin's Notebook |q 34032/1 |goto 86.59,45.63
	step
		Next to you:
		talk Thaelin Darkanvil##77167
		turnin Privileged Information##34032
		accept And The Mole You Rode In On##34033
	step
	label "Siegework"
		accept Assault on the Iron Siegeworks##37585
		Kill everything you see while completing quests |tip You can view your progress in your quest tracker.
		click Kegs of Impaler Ale |tip They look like brown wooden barrels layed on their side.
		click Secret Warplans##234685 |tip They look like paper maps on the ground with daggers stabbed into them all around this area.
		Sabotage the Siegeworks |q 37585/1
	step
		_Follow_ the path down |goto 85.8,49.1 < 20 |only if walking
		_Follow_ the road |goto 87.4,51.7 < 20 |only if walking
		_Enter_ the cave |goto Frostfire Ridge/0 87.1,49.5 < 10 |walk
		Return to Hansel Heavyhands |q 34033/1
	step
		click Prototype Mole Machine##227270 |goto Frostfire Ridge/0 86.4,49.0
		|tip It looks like a big drilling machine with a metal top.
		Ride the Prototype Mole Machine Back to Your Garrison |goto Lunarfall/0 64.23,66.93 < 20 |c |noway
		|only if not completedq(34033)
	step
		talk Thaelin Darkanvil##77161
		turnin And The Mole You Rode In On##34033 |goto Lunarfall/0 64.23,66.93
	step
		You have completed the garrison campaign _"Seismic Matters"_. Click here to return to the main menu |next "Menu" |confirm
	---//Garrison Campaign: Darktide Roost Campaign\\---
	step
	label "Roost"
		#include "Garrison_DLongdrink"
		Ask Dungar to _"Take me to Darktide Roost"_ |goto Shadowmoon Valley D/0 59.4,83.6 |c |noway
		|only if not completedq(35861)
	step
		talk Rexxar##77982
		turnin Garrison Campaign: Darktide Roost##35861 |goto 59.23,82.25
		accept Shredder Suppressor##34353 |goto 59.23,82.25
	step
		talk Darktide Pilferer##83494
		accept Darktide Defender##34352 |goto 59.08,82.27
	stickystart "Assault"
	step
		kill 3 Darktide Rylakinator-3000##78328
		Destroy the Shredders |q 34353/1 |goto Shadowmoon Valley D/0 57.7,86.5
	step
		kill 5 Darktide Engineer##78999
		kill 5 Darktide Pilferer##78148
		Deal with the Pilferers |q 34352/1 |goto Shadowmoon Valley D/0 57.7,86.5
		Deal with the Engineers |q 34352/2 |goto Shadowmoon Valley D/0 57.7,86.5
	step
		Click the _Quest Complete_ Box:
		turnin Darktide Defender##34352
	step
		talk Rexxar##77982
		turnin Shredder Suppressor##34353 |goto 59.22,82.23
		accept Dirty Rats##34355 |goto 59.23,82.24
	step
		use Rat Bait##110268
		Use the Rat Bait near Unmanned Darktide Shredders to destroy them |q 34355/1 |goto Shadowmoon Valley D/0 55.8,89.2
	step
		talk Rexxar##78258
		turnin Dirty Rats##34355 |goto 58.14,93.89
		accept Releasing Rylak##34365 |goto 58.14,93.89
		accept Downsizing the Darktide##34397 |goto 58.14,93.89
	step
		click Rylak Cage##229042
		Free the the Rylak |q 34365/1 |goto 58.69,94.96 |count 1
	step
		click Rylak Cage##229042
		Free the the Rylak |q 34365/1 |goto 59.5,95.8 |count 2
	step
		click Rylak Cage##229042
		Free the the Rylak |q 34365/1 |goto 61.6,95.5 |count 3
	step
		kill Assistant Fexfuse##78409
		Deal with Assistant Fexfuse |q 34397/1 |goto 60.7,93.0
	step
		kill Captain Killrath##78410
		Deal with Captain Killrath |q 34397/2 |goto 62.43,93.93
	step
		kill Ra'ka Bloodspear##78475
		Deal with Ra'ka Bloodspear |q 34397/3 |goto 59.25,99.04
	step
		click Goblin Mind Control Device##229314
		accept Free their Minds##34455 |goto 59.78,94.47
	step
		clicknpc Controlled Darkwing##78550
		use Rylak Mind Controller##110447
		Free the Minds of Controlled Rylaks |q 34455/1 |goto 60.25,95.24
	step
		Click the _Quest Complete_ Box:
		turnin Free their Minds##34455
	step
		talk Rexxar##78258
		turnin Releasing Rylak##34365 |goto 58.14,93.89
		turnin Downsizing the Darktide##34397 |goto 58.14,93.89
		accept Rylak Rescue##34450 |goto 58.14,93.89
	step
		clicknpc Nisha##78678
		Ride Nisha with Rexxar to the top of the mountain |q 34450/1 |goto 58.14,93.89
	step
		kill Razz Ricketroz##78973 |q 34450/2 |q 34450/2 |goto 60.1,90.5
	step
		clicknpc Nisha##79168 |goto 60.34,90.33
		Ride Nisha to Safety |goto 67.9,90.0 |c |noway
		|only if not completedq(34450)
	step
		talk Rexxar##78937
		turnin Rylak Rescue##34450 |goto 67.96,90.12
	step
	label "Assault"
		accept Assault on Darktide Roost##37633 |goto 58.83,84.34
		Darktide Roost Assaulted |q 37633/1 |goto 58.83,84.34
	step
		You have completed the garrison campaign _"Darktide Roost"_. Click here to return to the main menu |next "Menu" |confirm
	---//Garrison Campaign: The Sargerei\\---
	step
	label "Sargerei"
		talk Archmage Modera##88276
		turnin Garrison Campaign: The Sargerei##35185 |goto Shadowmoon Valley D 43.6,77.2
		accept Infiltrating the Sargerei##35187 |goto 43.58,77.28
	stickystart "Rise"
	step
		kill Sargerei Darkblade##84945+, Sargerei Acolyte##85168+, Sargerei Binder##81542+, Sargerei Initiate##81541+
		Sargerei Slippers |q 35187/1 |goto Shadowmoon Valley D/0 48.6,76.5
		Sargerei Robe |q 35187/2 |goto Shadowmoon Valley D/0 48.6,76.5
		Sargerei Cowl |q 35187/3 |goto Shadowmoon Valley D/0 48.6,76.5
	step
		use Sargerei Cowl##112791
		Create a Sargerei Disguise |q 35187/4 |goto Shadowmoon Valley D/0 48.6,76.5
	step
		use Sargerei Disguise##112904
		Put on the Sargerei Disguise |q 35187/5 |goto Shadowmoon Valley D/0 48.6,76.5
	step
		talk Soulbinder Zamaya##81499
		Tell her, _"I'd like to join the Sargerei."_
		Speak to Soulbinder Zamaya |q 35187/6 |goto Shadowmoon Valley D/0 49.79,81.46
	step
		talk Anchorite Laanda##81530
		Tell him, _"The rain falls on Shadowmoon."_
		Speak to Anchorite Laanda |q 35187/7 |goto Shadowmoon Valley D/0 50.0,81.2
	step
		talk Anchorite Laanda##81530
		turnin Infiltrating the Sargerei##35187/7 |goto Shadowmoon Valley D/0 50.0,81.2
	step
		talk Anchorite Laanda##81530
		accept The Word of Socrethar##35189 |goto Shadowmoon Valley D/0 50.0,81.2
		accept Shattering the Enemy##35191 |goto Shadowmoon Valley D/0 50.0,81.2
	step
		talk Soulbinder Zamaya##81499
		accept An Ancient Threat##35190 |goto Shadowmoon Valley D/0 49.8,81.5
		accept Pesky Podlings##35188 |goto Shadowmoon Valley D/0 49.8,81.5
	stickystart "spear"
	step
		kill 1 Eldermoss##81481
		Eldermoos Slain |q 35190/1 |goto Shadowmoon Valley D/0 45.4,73.8
	step
	label "spear"
		kill 1 Shadowglen Thornshooter##81502+
		kill 1 Shadowglen Spitter##81637+
		Wooden Spear |q 35188/1 |goto Shadowmoon Valley D/0 47.1,77.7
	stickystart "crystals"
	step
		clicknpc The Eredar Destiny##88388
		"The Eredar Destiny" read |q 35189/1 |goto Shadowmoon Valley D/0 51.4,75.7
	step
		clicknpc The Purpose of Unity##88389
		"The Purpose of Unity" read |q 35189/2 |goto Shadowmoon Valley D/0 50.1,72.5
	step
		clicknpc The Promise of Eternity##88390
		"The Promise of Eternity" read |q 35189/3 |goto Shadowmoon Valley D/0 50.8,79.7
	step
	label "crystals"
		clicknpc Felstorm Crystal##88370 |tip These can bef found inside the buildings or small tents in this area.
		Felstorm Crystal destroyed |q 35191/1 |goto Shadowmoon Valley D/0 49.6,73.2
	step
		talk Anchorite Laanda##81530
		turnin The Word of Socrethar##35189 |goto Shadowmoon Valley D/0 50.0,81.2
		turnin Shattering the Enemy##35191 |goto Shadowmoon Valley D/0 50.0,81.2
	step
		talk Soulbinder Zamaya##81499
		turnin An Ancient Threat##35190 |goto Shadowmoon Valley D/0 49.8,81.5
		turnin Pesky Podlings##35188 |goto Shadowmoon Valley D/0 49.8,81.5
	step
		talk Anchorite Laanda##81530
		accept Facing Demons##35194 |goto Shadowmoon Valley D/0 50.0,81.2
	step
		Follow the path up |goto Shadowmoon Valley D/0 46.9,79.8 < 10 |only if walking
		kill 1 Invokaz##81697
		Invokaz slain |q 35194/1 |goto Shadowmoon Valley D/0 46.1,80.6
		clicknpc Demon Gate##88399
		Demon Gate destroyed |q 35194/2 |goto Shadowmoon Valley D/0 46.3,80.6
	step
		click Laanda's Scroll##231918
		turnin Facing Demons##35194 |goto Shadowmoon Valley D/0 50.0,81.2
		accept Socrethar's Fury##35195 |goto Shadowmoon Valley D/0 50.0,81.2
	step
		click Othaar's Door |goto Shadowmoon Valley D/0 50.1,81.6 < 5
		Socrethar confronted |q 35195/1 |goto Shadowmoon Valley D/0 50.4,82.1
	step
		kill 1 Soulbinder Zamaya##81858
		Sargerei Battle Plans |q 35195/2 |goto Shadowmoon Valley D/0 50.7,82.4
	step
		talk Anchorite Laanda##81530
		turnin Socrethar's Fury##35195 |goto Shadowmoon Valley D/0 50.6,82.3
		accept Forging Ahead##35196 |goto Shadowmoon Valley D/0 50.6,82.3
	step
	label "Rise"
		accept Assault on Socrethar's Rise##37631 |goto 49.92,72.73
		Kill mobs around the area to fill your progress bar
		Assault Socrethar's Rise |q 37631/1
	step
		talk Khadgar's Servant##83858 |tip He walks up and down this path.
		turnin Forging Ahead##35196 |goto Lunarfall/0 44.90,52.75
	step
		You have completed the garrison campaign _"The Sargerei"_. Click here to return to the main menu |next "Menu" |confirm
	---//Garrison Campaign: The Ring of Blood\\---
	step
	label "RingofBlood"
		talk Gurgthock##84637
		Turn in Garrison Campaign: The Ring of Blood |complete not haveq(36219) and not haveq(36281) and not haveq(36282) and not haveq(34609) |goto Nagrand D/0 62.97,36.00
		turnin Garrison Campaign: The Ring of Blood##36219 |only if garrisonlvl(5)
		turnin Garrison Campaign: The Ring of Blood##36281 |only if garrisonlvl(5)
		turnin Garrison Campaign: The Ring of Blood##36282 |only if garrisonlvl(5)
		turnin Garrison Campaign: The Ring of Blood##36280 |only if garrisonlvl(5)
		turnin Garrison Campaign: The Ring of Blood##36280 |or |goto Nagrand D/0 62.97,36.00
		turnin Garrison Campaign: The Ring of Blood##36281 |or |goto Nagrand D/0 62.97,36.00
		accept How Tough Are You?##36220 |goto Nagrand D/0 62.97,36.00
	step
		kill 1 Lug'dol##84675
		Retrieve Lug'dol's Head |q 36220/1 |goto 64.3,22.6
	stickystart "GProving"
	step
		clicknpc Lug'dol's Head##84750
		Present Lug'dol's Head to Kroggol the Wall |q 36220/2 |goto 56.88,19.22
	step
		talk Kroggol the Wall##84720
		turnin How Tough Are You?##36220 |goto 56.90,19.12
		accept Entry Fee##36221 |goto 56.90,19.12
	step
		kill Nascent Brawler##84760+, Drunken Scrapper##87310+, Bloodied Slayer##84765+, Rampant Gladiator##84764
		collect 50 Blood Stone##114996 |n
		Gather 50 Blood Stones  |q 36221/1 |goto 59.03,14.74
	step
		talk Wodin the Troll-Servant##84784
		turnin Entry Fee##36221 |goto 56.77,12.90
		accept The Champion of Blood##36222 |goto 56.77,12.90
	step
		talk Gurgthock##84783
		Tell him _"I'm ready to fight in the Blood Championship"_ |q 36222/1 |goto 56.85,13.11
	step
		kill 1 Katsuo##84791 |tip Avoid his mirror images.
		kill 1 Azuka Bladefury##84800 |tip This is an endurance fight. Run away from Blazing Coil and avoid Inferno Strike.
		Win the Blood Championship |q 36222/2 |goto 56.10,13.76
	step
		talk Wodin the Troll-Servant##84784
		turnin The Champion of Blood##36222 |goto 56.77,12.90
		accept Out of the Shadows##36289 |goto 56.77,12.90
	step
		#include "Garrison_BGrey"
		turnin Out of the Shadows##36289
	step
	label "GProving"
		accept Assault on the Gorian Proving Grounds##36820 |goto 56.9,19.1
		Dominate the Gorian Proving Grounds |q 36820/1 |goto 56.9,19.1
	step
		You have completed the garrison campaign _"The Ring of Blood"_. Click here to return to the main menu |next "Menu" |confirm
	---//Garrison Campaign: The Fall of Shattrath\\---
	step
	label "Shattrath"
		talk Exarch Maladaar##75028
		turnin Garrison Campaign: The Fall of Shattrath##35679 |goto Talador/0 49.79,48.65
		accept Reclaiming the City##35683 |goto 49.79,48.65
	stickystart "ShadowAssault"
	step
		Kill any mobs you see in this area
		collect Sargerei Insignia##113294 |n
		Loot 100 Sargerei Insignias|q 35683/1 |goto Talador/0 44.29,39.20
	step
		Ride the elevator up here |goto Talador/0 47.4,44.0 |only if walking
		talk Exarch Maladaar##75028
		turnin Reclaiming the City##35683 |goto 49.79,48.65
		accept Socrethar's Demise##35685 |goto 49.79,48.65
	step
		Ride the elevator down |goto 47.4,44.0 |only if walking
		_Go down_ the steps |goto Talador/0 44.8,37.0 |only if walking
		_Cross_ the bridge |goto Talador/0 43.9,34.1 |only if walking
		click Sons of Lothar Banner
		Challenge Socrethar |q 35685/1 |goto 42.35,32.99
	step
		kill 1 Socrethar##82662
		Defeat Socrethar |q 35685/2 |goto Talador/0 41.8,32.6
	step
		_Cross_ the bridge |goto Talador/0 43.9,34.1 |only if walking
		_Go up_ the steps |goto Talador/0 44.8,37.0 |only if walking
		Ride the elevator up |goto 47.4,44.0 |only if walking
		talk Exarch Maladaar##75028
		turnin Socrethar's Demise##35685 |goto 49.79,48.65
	step
	label "ShadowAssault"
		accept Assault on Shattrath Harbor##37635
		Fill the assault bar by killing mobs and destroying Artillery in Shattrath City
		Shadow Council assaulted |q 37635/1 |goto Talador/0 44.3,39.2
	step
		You have completed the garrison campaign _"The Fall of Shattrath"_. Click here to return to the main menu |next "Menu" |confirm
	---//Garrison Campaign: Bloodmaul Compound\\--
	step
	label "Bloodmaul"
		#include "Garrison_DLongdrink"
		Tell Dungar _"I'm searching for Owynn Graddock. Take me to Frostfire Ridge."_ |goto Frostfire Ridge/0 51.5,21.4 |c |noway
		|only if not completedq(34284)
	step
		_Go down_ the path |goto Frostfire Ridge/0 52.1,18.8 < 20 |only if walking
		_Go up_ the hill |goto Frostfire Ridge/0 49.7,17.1 |only if walking
		Follow the path |goto Frostfire Ridge/0 47.6,16.1 |only if walking
		Locate Owynn Graddock |q 34284/1 |goto Frostfire Ridge/0 48.7,14.7
	stickystart "Stonefury"
	step
		talk Owynn Graddock##78056
		turnin Garrison Campaign: The Search for Owynn Graddock##34284 |goto Frostfire Ridge/0 48.7,14.7
		accept Out of the Chains##34281 |goto Frostfire Ridge/0 48.7,14.7
	step
		kill 1 Nub the Torturer##78174
		Bloodmaul Slave Key |q 34281/1 |goto Frostfire Ridge/0 49.9,15.4
	step
		click Owynn's Shackle##228534
		Owynn's Shackle unlocked |q 34281/2 |goto Frostfire Ridge/0 48.7,14.7
	step
		talk Owynn Graddock##78056
		turnin Out of the Chains##34281 |goto Frostfire Ridge/0 48.7,14.7
		accept Gearing Up##34285 |goto Frostfire Ridge/0 48.7,14.7
	step
		click Owynn's Noggenknocker##228577
		Retrieve Owynn's Mace |q 34285/3 |goto 43.87,15.23 |tip It is behind the tower.
	step
		_Go up_ the ramp |goto Frostfire Ridge/0 45.1,19.1 |only if walking
		click Owynn's Dagger##229019
		Retrieve Owynn's Dagger |q 34285/2 |goto 45.23,21.06
	step
		_Cross_ the stone bridge here |goto Frostfire Ridge/0 47.6,20.7 |only if walking
		click Ogre Chest##229416
		Retrieve Owynn's Armor |q 34285/1 |goto Frostfire Ridge/0 49.8,21.3
	step
		_Cross_ the rocks here |goto Frostfire Ridge/0 49.0,16.9 |only if walking
		talk Owynn Graddock##78056
		turnin Gearing Up##34285 |goto Frostfire Ridge/0 48.7,14.7
		accept Seeking the Truth##34286 |goto Frostfire Ridge/0 48.7,14.7
	step
		Locate Borgal Doomfist |q 34286/1 |goto Frostfire Ridge/0 40.4,21.8
	step
		talk Owynn Graddock##78056
		turnin Seeking the Truth##34286 |goto Frostfire Ridge/0 40.2,21.5
		accept The Shadow Gate##34362 |goto Frostfire Ridge/0 40.2,21.5
	step
		kill Grubnor Wargut##78003
		Grubnor Wargut slain |q 34362/1 |goto Frostfire Ridge/0 39.5,23.2
		click Shadow Gate##229026
		Enter the Shadow Gate |q 34362/2 |goto Frostfire Ridge/0 39.6,23.8
	step
		talk Owynn Graddock##78056
		turnin The Shadow Gate##34362 |goto Frostfire Ridge/0 39.5,23.6
	step
		talk Orlana Strongbrow##78428
		accept The Totems That Bind##34288 |goto Frostfire Ridge/0 39.4,23.5
		accept Cleansing the Souls##34287 |goto Frostfire Ridge/0 39.4,23.5
	step
		All around Bloodmaul Stronghold:
		kill Crazed Soul##77958+
		use Luminescent Soul Shard##110394
		|tip You must use this on their corpses.
		Crazed Soul Cleansed |q 34287/1 |goto Frostfire Ridge/0 40.6,17.7
		click Borgal's Totem##229131
		Borgal's Totems |q 34288/1 |goto Frostfire Ridge/0 40.6,17.7
	step
		talk Orlana Strongbrow##78428
		turnin The Totems That Bind##34288 |goto Frostfire Ridge/0 39.4,23.5
		turnin Cleansing the Souls##34287 |goto Frostfire Ridge/0 39.4,23.5
		accept Soulgrinder Survivor##34289 |goto Frostfire Ridge/0 39.4,23.5
	step
		clicknpc Borgal's Spiritbinder Totems##78386
		|tip These are two totems you must place.
		Borgal's Totems Placed |q 34289/1 |goto Frostfire Ridge/0 38.0,13.8
		kill Borgal Doomfist##77997
		Borgal Doomfist slain |q 34289/2 |goto Frostfire Ridge/0 38.0,13.8
	step
		talk Owynn Graddock##78056
		turnin Soulgrinder Survivor##34289 |goto Frostfire Ridge/0 38.0,14.8
	step
	label "Stonefury"
		accept Assault on Stonefury Cliffs##37623 |goto 48.43,15.11
		Fill the assault bar by killing mobs in the Stonefury Cliffs
		Assault the Stonefury Cliffs |q 37623/1
	step
		You have completed the garrison campaign _"The Ring of Blood"_. Click here to return to the main menu |next "Menu" |confirm
	---//Garrison Campaign: The Exarch's Call\\--
	step
	label "Exarch"
		talk Yrel##73395
		turnin Garrison Campaign: The Exarch's Call##36163 |goto Shadowmoon Valley D/0 65.23,26.18
	step
		talk Exarch Akama##80078
		accept The Trial of Courage##36164 |goto 65.33,25.98
	step
		talk Exarch Naielle##80079
		accept The Trial of Heart##36167 |goto 65.40,26.17
	step
		talk Exarch Maladaar##80073
		accept The Trial of Faith##36168 |goto 65.32,26.37
	step
		talk Soulbinder Tuulani##79434
		Speak to Soulbinder Tuulani and tell her "_I'm ready for the Trial of Faith_" |q 36168/1 |goto Talador/0 46.33,74.09
	step
		kill Ancestral Defender##84713+, Ancestral Prelate##84717+, Ancestral Warden##84718+
		kill Spirit of Exarch Hataaru##84719
		You must avoid the red and purple beams Hataaru casts from the prisms.
		Challenge and defeat Exarch Hataaru |q 36168/2
	step
		kill 1 Spirit of Maraad##84814
		Follow Vindicator Yrel and click the Soul Transporter
		Click Maraad's Ashes to challenge Vindicator Maraad
		Avoid the patches Maraad places on the ground
		When Maraad subdues Yrel, click the Hammer of the Naaru to free her
		Defeat the Spirit of Maraad |q 36168/3
	step
		Click the Portal to Auchindoun Entrance |goto Talador/0 46.2,74.0 |noway |c
	step
		talk Yrel##84542
		Tell her: "_Let's do some investigating._" |q 36167/1 |goto Nagrand D/0 49.52,16.64
	step
		map Nagrand D/0
		path follow smart; loop off; ants curved; dist 15
		path	49.4,16.7	49.5,17.2	49.0,16.4
		path	47.6,13.8	46.6,10.9
		kill 1 Plaguebloom##84403
		--click Restorative Goldcap##6478
		use Restorative Goldcap##114926
		_Click the Restorative Glowcaps_ and use them to keep yourself alive
		Defeat Plaguebloom |q 36167/2
	step
		talk Yrel##84542
		Tell her: "_I'm ready to face Everburn._" |q 36164/1 |goto Frostfire Ridge/0 53.11,33.04
	step
		kill 1 Everburn##84364
		Whenever Yrel places a yellow-white pool of Radiant Light on the ground, stand it in to reduce the damage Everburn deals with his abilities
		Defeat Everburn |q 36164/2 |goto 53.04,32.53
	step
		talk Exarch Akama##84973
		turnin The Trial of Courage##36164 |goto Shadowmoon Valley D/0 74.90,57.99
	step
		talk Exarch Maladaar##84974
		turnin The Trial of Faith##36168 |goto 75.13,57.89
	step
		talk Exarch Naielle##84975
		turnin The Trial of Heart##36167 |goto 75.20,57.54
	step
		talk Exarch Maladaar##84974
		accept The Trial of Champions##36169 |goto 75.14,57.89
	stickystart "Exarchs"
	step
		talk Exarch Maladaar##84974
		Tell him: "_I am ready to fight the Exarch Council_" and defeat the council |q 36169/1 |goto 75.13,57.89
	step
	label "Exarchs"
		kill Exarch Naielle##84975, Exarch Maladaar##84974, Exarch Akama##84973
		You will need to avoid the _Explosive Traps_ that are laid on the ground
		You will also need to avoid Akama's _Surge of Light, which is a large circular area targeted on the ground
		Stand in Yrel's yellow-white Radiant Light on the ground when you need healing
	step
		talk Exarch Maladaar##84974
		turnin The Trial of Champions##36169 |goto 75.13,57.89
	step
		You have completed the garrison campaign "_The Exarch's Call_". Click here to return to the main menu |next "Menu" |confirm
	---//Garrison Campaign: The Broken Precipice\\---
	step
	label "Precipice"
		#include "Garrison_DLongdrink"
		Speak to Dungar and ask him: "_Take me to the Broken Precipice in Nagrand_" |goto Nagrand D/0 41.9,28.1 < 10 |noway |c
	stickystart "PrecAssault"
	step
		talk Greblin Fastfizzle##83686
		turnin Garrison Campaign: The Broken Precipice##35985 |goto Nagrand D/0 39.6,24.6
		accept Greblin Fastfizzle##35945 |goto Nagrand D/0 39.63,24.61
	step
		talk Greblin Fastfizzle##83686
		turnin Greblin Fastfizzle##35945 |goto Nagrand D/0 39.6,24.5
		accept Preservation Capitalization##35970 |goto Nagrand D/0 39.6,24.5
		accept Ogre Onslaught##35972 |goto Nagrand D/0 39.6,24.5
	stickystart "Ogre"
	step
		Retrieve a Redtooth Necklace |q 35970/1 |goto Nagrand D/0 37.9,25.7
		|tip It is hanging from a bone sticking out of the pile.
	step
		Retrive an Ogre Bust |q 35970/3 |goto Nagrand D/0 36.7,21.2
	step
		Retrieve a Purpletooth Necklace |tip It is hanging from a bone. |q 35970/2 |goto Nagrand D/0 35.7,18.8
	step
	label "Ogre"
		kill Arcanist Earthsmasher##83577+, Slave-Grinder##88187+, Broken Drudge##83831+, Sledgebasher##83575+
		Slay 3 Ogres |q 35972/1 |goto Nagrand D/0 36.6,20.0
		Slay 3 Ogron |q 35972/2 |goto Nagrand D/0 36.6,20.0
	step
		talk Greblin Fastfizzle##83686
		turnin Preservation Capitalization##35970 |goto Nagrand D/0 39.6,24.5
		turnin Ogre Onslaught##35972 |goto Nagrand D/0 39.6,24.5
		accept Dizzy Sparkshift##37511 |goto Nagrand D/0 39.6,24.5
	step
		talk Dizzy Sparkshift##76508
		turnin Dizzy Sparkshift##37511 |goto 40.75,12.96
		accept Brokyo Beatdown##35973 |goto 40.75,12.96
	step
		kill 1 Brokyo##83655
		Provoke Brokyo |q 35973/1 |goto Nagrand D/0 42.0,14.4
		Retrieve Brokyo's Ring |q 35973/2 |goto Nagrand D/0 42.0,14.4
	step
		talk Dizzy Sparkshift##76508
		turnin Brokyo Beatdown##35973 |goto 40.75,12.96
		accept News for Nixxie##37517 |goto 40.75,12.96
	step
	label "PrecAssault"
		accept Assault on the Broken Precipice##37627 |goto Nagrand D/0 39.63,24.61
		Fill the assault bar by killing mobs and clicking objects in the Broken Precipice
		Exploit the conflict at the Broken Precipice |q 37627/1
	step
		#include "Garrison_Nixxie"
		turnin News for Nixxie##37517
	step
		You have completed the garrison campaign "_The Broken Precipice_". Click here to return to the main menu |next "Menu" |confirm
	step
	label "Recon"
		talk Jeanine Amrell##83051
		turnin Garrison Campaign: Deep Recon##35837 |goto Nagrand D/0 49.91,37.09
		accept The Warlord's Council##35838 |goto Nagrand D/0 49.91,37.09
	step
		You will be caught in a net and teleported after roughly 10 seconds
		Wait to be teleported |goto Nagrand D/0 41.9,37.0 |noway |c
	step
		You will need to wait until Flint Shadowmore releases you from the cage
		Discover the Iron Horde's plans |q 35838/1 |goto Nagrand D/0 41.9,37.0
	step
		talk Flint Shadowmore##83053
		turnin The Warlord's Council##35838 |goto Nagrand D/0 41.82,36.99
		accept Plans of War##35839 |goto Nagrand D/0 41.82,36.99
		accept Putting Down the Packleader##35841 |goto Nagrand D/0 41.82,36.99
		accept Intercepting the Orders##35840 |goto Nagrand D/0 41.82,36.99
	stickystart "Post"
	step
		Retrieve the Miniature War Machine
		|tip it is located inside the hut on top of the maps |q 35839/2 |goto 42.63,38.56
	step
		kill 1 Packleader Vor'gash##83049
		Slay Packleader Vor'gash |q 35841/1 |goto Nagrand D/0 44.8,37.7
	step
		Retrieve the Map of Tanaan Jungle |q 35839/3 |goto 45.85,36.70
		|tip It is located inside the hut next to the table
	step
		Retrieve the Scale Model of Gorgorek |q 35839/1 |goto 43.24,34.21
		|tip It is located inside the hut on the table
	step
		Retrieve the Frostfire Mission Orders |q 35840/1 |goto Nagrand D/0 45.2,36.4
		Retrieve the Shadowmoon Mission Orders |q 35840/2 |goto Nagrand D/0 45.2,36.4
		Retrieve the Spires of Arak Mission Orders |q 35840/3 |goto Nagrand D/0 45.2,36.4
		|tip These drop from mobs around Mok'gol Watchpost
	step
	label "Post"
		kill Mok'gol Brutalizer##72571+, Mok'gol Grunt##86657+, Mok'gol Wolfsong##86659+, Mok'gol Raider##87385+, Mok'gol Pack-Leader##86658+
		accept Assault on Mok'gol Watchpost##37629 |goto Nagrand D/0 45.2,36.4
		Fill the assault bar by killing mobs and clicking objects in the Broken Precipice
		Disrupt the Warsong |q 37629/1 |goto Nagrand D/0 45.2,36.4
	step
		#include "Garrison_BGrey"
		turnin Plans of War##35839
		turnin Putting Down the Packleader##35841
		turnin Intercepting the Orders##35840
	step
		You have completed the garrison campaign "_The Warlord's Council_". Click here to return to the main menu |next "Menu" |confirm
	---//Garrison Campaign: Heart of the Breakers\\--
	step
	label "Crows"
		talk Thisalee Crow##78187
		turnin Garrison Campaign: Crows in the Field##34409 |goto Gorgrond/0 39.92,37.15
		accept Ambushing the Enemy##34336 |goto Gorgrond/0 39.92,37.15
	step
		kill Lieutenant O'rok##78195, Iron Horde Battlebeast##78364
		As you make your way to O'rok, click on the Caravan Shipments along the road
		Gather 5 caravan shipments |q 34336/1 |goto Gorgrond/0 41.66,40.14
		Retrieve O'rok's head |q 34336/2 |goto Gorgrond/0 40.50,40.34
	step
		Click on Bladefury's Orders |tip The are located on a barrel just outside of the tent.
		accept Bladefury's Orders##34347 |goto Gorgrond/0 40.32,40.31
	step
		talk Thisalee Crow##78187
		turnin Ambushing the Enemy##34336 |goto Gorgrond/0 39.92,37.15
		turnin Bladefury's Orders##34347 |goto Gorgrond/0 39.92,37.15
		accept The Giant Cauldron##34337 |goto Gorgrond/0 39.92,37.15
	step
		talk Choluna##78192
		Tell her: "_Take me to Cragplume Cauldron_" |q 34337/1 |goto Gorgrond/0 39.90,37.19
	step
		talk Thisalee Crow##78251
		turnin The Giant Cauldron##34337 |goto Gorgrond/0 54.16,56.07
		accept The Descent##34338 |goto Gorgrond/0 54.16,56.07
	step
		talk Aren Mistshade##74125
		accept Heating Up##34340 |goto Gorgrond/0 54.23,55.93
	step
		talk Choluna##89179
		accept A Goren's Feast##34339 |goto Gorgrond/0 54.24,55.87
	stickystart "Stomach"
	step
		Enter the cave and follow the winding path down to the bottom |goto Gorgrond/0 53.53,55.28
		use Aren's Thermometer##110288
		Take the temperature of the Hissing Geyser |q 34340/1 |goto Gorgrond/0 51.97,55.86
	step
		|tip Stand on the yellow arrow.
		Investigate the cauldron |q 34338/1 |goto Gorgrond/0 52.55,53.79
	step
		kill Abyssal Earthwarden##78257
		Run to a swirling steam vent when the Earthwarden uses Seismic Shockwave
		Destroy the Abyssal Earthwarden |q 34338/2 |goto Gorgrond/0 51.92,54.07
	step
		Retrieve the Heart of Gorgorek |q 34338/3 |goto Gorgrond/0 51.47,54.07
	step
		Follow Thisalee Crow down the right passage and between the pillars |goto Gorgrond/0 52.63,54.72
		tip After the short cutscene, jump in the hole directly in front of you.
		Escape the Belcher Cauldron |q 34338/4 |goto Gorgrond/0 52.63,54.72
	step
	label "Stomach"
		kill Dryback Acidroller##78255+, Dryback Devourer##78256+
		Gather 8 goren stomachs |q 34339 |goto Gorgrond/0 53.53,55.28
	step
		talk Choluna##89179
		turnin A Goren's Feast##34339 |goto Gorgrond/0 54.24,55.87
	step
		talk Aren Mistshade##74125
		turnin Heating Up##34340 |goto Gorgrond/0 54.23,55.93
	step
		talk Thisalee Crow##78251
		turnin The Descent##34338 |goto Gorgrond/0 54.16,56.07
		accept The Beating Heart##34410 |goto Gorgrond/0 54.16,56.07
	step
		#include "Garrison_Morthis"
		turnin The Beating Heart##34410
	step
		You have completed the garrison campaign "_Heart of the Breakers_". Click here to return to the main menu |next "Menu" |confirm
	---//Garrison Campaign: A Strike at the Heart\\--
	step
	label "Thorn"
		Gather the Azerothian Rose by the trellis in your Herb Garden |q 36160/1 |goto Lunarfall/0 58.26,56.60
	step
		talk Baros Alexston##84270
		turnin Garrison Campaign: Every Rose Has Its Thorn##36160 |goto Lunarfall/0 29.3,34.8
	step
		talk Lieutenant Thorn##84684
		accept Where There Is Smoke...##36161 |goto 29.67,34.22
	step
		kill 1 Rag'sla Thunkblade##84352
		Rag'sla Thunkblade |q 36161/1 |goto Lunarfall/0 58.7,52.5
	step
		kill 1 Akatha Blazeburn##84354
		Akatha Blazeburn |q 36161/2 |goto Lunarfall/0 45.9,66.6
	step
		kill 1 Drek the Firecaller##84355
		Drek the Firecaller |q 36161/3 |goto Lunarfall/0 56.9,83.2
	step
		talk Lieutenant Thorn##84511
		turnin Where There Is Smoke...##36161 |goto 31.45,33.71
		accept A Stolen Heart##36162 |goto 31.45,33.71
	step
		kill 1 Azuka Bladefury##84687
		|tip Don't worry, you only need to take Azuka down 40% or so.
		Defeat Azuka Bladefury |q 36162/1 |goto Lunarfall/0 41.4,46.6
	step
		talk Lieutenant Thorn##84268
		turnin A Stolen Heart##36162 |goto 28.72,35.05
	step
		You have completed the garrison campaign "_A Strike at the Heart_". Click here to return to the main menu |next "Menu" |confirm
	---//Garrison Campaign: Primal Fury\\---
	step
	label "Fury"
		talk Thisalee Crow##84185
		Ask her: "_What's the situation?_" |q 36134/1 |goto Gorgrond/0 40.9,43.1
	step
		kill 1 Duurg##84153
		Defeat Duurg |q 36134/2 |goto Gorgrond/0 37.8,44.7
	step
		talk Thisalee Crow##84185
		turnin Garrison Campaign: Awakening##36134 |goto Gorgrond/0 40.95,43.06
		accept Primal Fury##36341 |goto 40.95,43.06
	step
		talk Bodrick Grey##85135
		Tell him: "_Reporting for battle!_" |q 36341/1 |goto Talador/0 66.9,9.1
	step
		kill Gorgorek##85042
		Defeat Gorgorek |q 36341/2 |goto Talador/0 69.2,3.2
	step
		kill Azuka Bladefury##85046
		|tip Do not allow the Burning Blade Initiate's to reach Azuka.
		Defeat Azuka Bladefury |q 36341/3 |goto Talador/0 69.2,3.2
	step
		talk Sanketsu##87764
		accept Sanketsu, The Burning Blade##37191 |goto 69.46,5.80
	step
		talk Thisalee Crow##85251
		Ask her: "_Where is the rest of the army?_" |q 36341/4 |goto Talador/0 67.5,7.6
	step
		tip This will take a short time.
		Witness Hellscream's challenge |q 36341/5 |goto Talador/0 69.4,9.1
	step
		#include "Garrison_LtThorn"
		turnin Primal Fury##36341
		turnin Sanketsu, The Burning Blade##37191
	step
		You have completed the garrison campaign "_Primal Fury_". Click here to return to the main menu |next "Menu" |confirm
	---//Garrison Campaign End\\---
	step
	label "End"
		Congratulations, you have completed the Garrison campaign! |only if achieved(9491)
]])

---------------------------
----- Garrison Quests -----
---------------------------

ZygorGuidesViewer:RegisterInclude("Garrison_Inn_Quests",[[
	--- Auchindoun ---
		Use the Group Finder for _Heroic Dungeons_:
		Enter the Auchindoun Dungeon |goto Auchindoun/1 |noway |c
		|tip This could take a long time.
		|only if haveq(37146) or haveq(37156) or haveq(37154)
	step
		click Nightmare Bell##237479
		|tip It looks like a silver bell hanging on the wall with a chain hanging from.
		collect Nightmare Bell##118648 |q 37146/1 |goto Auchindoun/1 65.0,55.0
	step
		click Soulsever Blade##237464
		|tip It looks like a purple crystal sword laying on a ledge.
		collect Soulsever Blade##118619 |q 37156/1 |goto Auchindoun/1 53.5,63.1
	step
		click Soulweave Vessel##237465
		|tip It looks like a cluster of floating pink-purple crystals.
		collect Soulweave Vessel##118620 |q 37154/1 |goto Auchindoun/1 24.1,32.5
	step
		kill Teron'gor##77734 |q 37146/2
		|tip Teron'gor is the final boss of the dungeon.
	step
		kill Teron'gor##77734 |q 37156/2
		|tip Teron'gor is the final boss of the dungeon.
	step
		kill Teron'gor##77734 |q 37154/2
		|tip Teron'gor is the final boss of the dungeon.
	step
		Leave the Dungeon
		|tip Click the green eye button on your minimap and choose "Leave Instance Group".
		Return to your Garrison |goto Lunarfall/0 30.0,30.0 < 1000 |c
		|only if haveq(37146) or haveq(37156) or haveq(37154)
	step
		#include "Garrison_Medium_Building", action="talk Johnny Awesome##88022", building="Inn"
		|tip If you can't find them, check upstairs and in the basement of the inn. The door to the basement is in the kitchen of the Lunarfall Inn.
		turnin Go Fetch##37146
	step
		#include "Garrison_Medium_Building", action="talk Lilian Voss##87996", building="Inn"
		|tip If you can't find them, check upstairs and in the basement of the inn. The door to the basement is in the kitchen of the Lunarfall Inn.
		turnin The Soulcutter##37156
	step
		#include "Garrison_Medium_Building", action="talk Leonid Barthalomew the Revered##87997", building="Inn"
		|tip If you can't find them, check upstairs and in the basement of the inn. The door to the basement is in the kitchen of the Lunarfall Inn.
		turnin The Cure For Death##37154
	--- Bloodmaul Slag Mines ---
	step
		Use the Group Finder for _Heroic Dungeons_:
		Enter the Bloodmaul Slag Mines Dungeon |goto Bloodmaul Slag Mines/1 |noway |c
		|tip This could take a long time.
		|only if haveq(37152) or haveq(37153)
	step
		kill Bloodmaul Enforcer##84978+, Bloodmaul Slaver##75191+
		collect Giant Ogre Head##118534 |q 37152/1 |goto Bloodmaul Slag Mines 45,55
	step
		click Olaf's Shield##237461
		|tip It looks like a round shield laying flat on the ground next to the wall.
		collect Olaf's Shield##118616 |q 37153/1 |goto Bloodmaul Slag Mines/1 45.6,56.5
	step
		kill Gug'rokk##74790 |q 37152/2
		|tip Gug'rokk is the final boss of the dungeon.
	step
		kill Gug'rokk##74790 |q 37153/2
		|tip Gug'rokk is the final boss of the dungeon.
	step
		Leave the Dungeon
		|tip Click the green eye button on your minimap and choose "Leave Instance Group".
		Return to your Garrison |goto Lunarfall/0 30.0,30.0 < 1000 |c
		|only if haveq(37152) or haveq(37153)
	step
		#include "Garrison_Medium_Building", action="talk Cro Threadstrong##87991", building="Inn"
		|tip If you can't find them, check upstairs and in the basement of the inn. The door to the basement is in the kitchen of the Lunarfall Inn.
		turnin Cro's Revenge##37152
	step
		#include "Garrison_Medium_Building", action="talk Olaf##87992", building="Inn"
		|tip If you can't find them, check upstairs and in the basement of the inn. The door to the basement is in the kitchen of the Lunarfall Inn.
		turnin Time-Lost Vikings##37153
	--- Grimrail Depot ---
	step
		Use the Group Finder for _Heroic Dungeons_:
		Enter the Grimrail Depot Dungeon |goto Grimrail Depot/1 |noway |c
		|tip This could take a long time.
		|only if haveq(37167) or haveq(37160) or haveq(37151)
	step
		click Huge Crate of Weapons##237474
		|tip It looks like a metal crate with orange light coming out of slits in the top of it.
		collect Huge Crate of Weapons##118643 |q 37167/1 |goto Grimrail Depot/1 54.7,38.9
	step
		click Iron Limbcleaver##237475
		|tip It looks like an axe in the middle of a bunch of weapons.
		collect Iron Limbcleaver##118644 |q 37160/1 |goto Grimrail Depot/3 53.8,52.5
	step
		click Iron Autocannon##237484
		|tip It looks like a dark metal cannon with spikes on it, sitting on a crate.
		collect Iron Autocannon##118653 |q 37151/1 |goto Grimrail Depot/4 67.4,47.5
	step
		kill Skylord Tovra##80005 |q 37151/2 |goto Grimrail Depot/4 15.3,51.7
		|tip Skylord Tovra is the final boss of the dungeon.
	step
		kill Skylord Tovra##80005 |q 37167/2 |goto Grimrail Depot/4 15.3,51.7
		|tip Skylord Tovra is the final boss of the dungeon.
	step
		kill Skylord Tovra##80005 |q 37160/2 |goto Grimrail Depot/4 15.3,51.7
		|tip Skylord Tovra is the final boss of the dungeon.
	step
		Leave the Dungeon
		|tip Click the green eye button on your minimap and choose "Leave Instance Group".
		Return to your Garrison |goto Lunarfall/0 30.0,30.0 < 1000 |c
		|only if haveq(37167) or haveq(37160) or haveq(37151)
	step
		#include "Garrison_Medium_Building", action="talk Lonika Stillblade##88006", building="Inn"
		|tip If you can't find them, check upstairs and in the basement of the inn. The door to the basement is in the kitchen of the Lunarfall Inn.
		turnin And No Maces!##37167
	step
		#include "Garrison_Medium_Building", action="talk Gamon##88007", building="Inn"
		|tip If you can't find them, check upstairs and in the basement of the inn. The door to the basement is in the kitchen of the Lunarfall Inn.
		turnin Cleaving Time##37160
	step
		#include "Garrison_Medium_Building", action="talk John J. Keeshan##88026", building="Inn"
		|tip If you can't find them, check upstairs and in the basement of the inn. The door to the basement is in the kitchen of the Lunarfall Inn.
		turnin Cold Steel##37151
	--- Iron Docks ---
	step
		Use the Group Finder for _Heroic Dungeons_:
		Enter the Iron Docks Dungeon |goto Iron Docks/1 |noway |c
		|tip This could take a long time.
		|only if haveq(37155) or haveq(37157)
	step
		click Strange Brass Compass##237463
		|tip It looks like a small gold pocket watch with a white face laying on the ground next to a pile of crates.
		collect Strange Brass Compass##118618 |q 37155/1 |goto Iron Docks/1 47.2,26.3
	step
		click Horribly Acidic Solution##237462
		|tip It looks like a glass container with green mist and bubbles surrounding it, sitting on a barrel.
		collect Horribly Acidic Solution##118617 |q 37157/1 |goto Iron Docks/1 50.2,52.2
	step
		kill Skulloc##83612 |q 37155/2
		|tip Skulloc is the final boss of the dungeon.
	step
		kill Skulloc##83612 |q 37157/2
		|tip Skulloc is the final boss of the dungeon.
	step
		Leave the Dungeon
		|tip Click the green eye button on your minimap and choose "Leave Instance Group".
		Return to your Garrison |goto Lunarfall/0 30.0,30.0 < 1000 |c
		|only if haveq(37155) or haveq(37157)
	step
		#include "Garrison_Medium_Building", action="talk Fleet Master Seahorn##87995", building="Inn"
		|tip If you can't find them, check upstairs and in the basement of the inn. The door to the basement is in the kitchen of the Lunarfall Inn.
		turnin The Brass Compass##37155
	step
		#include "Garrison_Medium_Building", action="talk Moroes##87994", building="Inn"
		|tip If you can't find them, check upstairs and in the basement of the inn. The door to the basement is in the kitchen of the Lunarfall Inn.
		turnin Feeling A Bit Morose##37157
	--- Shadowmoon Burial Grounds ---
	step
		Use the Group Finder for _Heroic Dungeons_:
		Enter the Shadowmoon Burial Ground Dungeon |goto Shadowmoon Burial Grounds/1 |noway |c
		|tip This could take a long time.
		|only if haveq(37149) or haveq(37164) or haveq(37163)
	step
		_Jump down_ the hole |goto Shadowmoon Burial Grounds/1 52.5,77.6 < 10 |walk
		click Void-Gate Key##237482
		|tip It looks like a floating purple crystal.
		collect Void-Gate Key##118651 |q 37149/1 |goto Shadowmoon Burial Grounds/1 38.0,50.8
	step
		click Silver-Lined Arrow##237471
		|tip It looks like a wooden arrow with a stone tip, laying on a stone slab next to some orange candles.
		collect Silver-Lined Arrow##118626 |q 37164/1 |goto Shadowmoon Burial Grounds/1 83.6,80.6
	step
		click Dark Parchment##237470
		|tip It looks like a white scroll with a blue tie laying on the ground around this small area.
		collect Dark Parchment##118625 |q 37163/1 |goto Shadowmoon Burial Grounds/1 30.5,43.8
	step
		kill Ner'zhul##76407 |q 37149/2
		|tip Ner'zhul is the final boss of the dungeon.
	step
		kill Ner'zhul##76407 |q 37164/2
		|tip Ner'zhul is the final boss of the dungeon.
	step
		kill Ner'zhul##76407 |q 37163/2
		|tip Ner'zhul is the final boss of the dungeon.
	step
		Leave the Dungeon
		|tip Click the green eye button on your minimap and choose "Leave Instance Group".
		Return to your Garrison |goto Lunarfall/0 30.0,30.0 < 1000 |c
		|only if haveq(37149) or haveq(37164) or haveq(37163)
	step
		#include "Garrison_Medium_Building", action="talk Impsy##88027", building="Inn"
		|tip If you can't find them, check upstairs and in the basement of the inn. The door to the basement is in the kitchen of the Lunarfall Inn.
		turnin The Void-Gate##37149
	step
		#include "Garrison_Medium_Building", action="talk Highlord Darion Mograine##88002", building="Inn"
		|tip If you can't find them, check upstairs and in the basement of the inn. The door to the basement is in the kitchen of the Lunarfall Inn.
		turnin Shadowy Secrets##37163
	step
		#include "Garrison_Medium_Building", action="talk Cowled Ranger##88003", building="Inn"
		|tip If you can't find them, check upstairs and in the basement of the inn. The door to the basement is in the kitchen of the Lunarfall Inn.
		turnin The Huntresses##37164
	--- Skyreach ---
	step
		Use the Group Finder for _Heroic Dungeons_:
		Enter the Skyreach Dungeon |goto Skyreach/1 |noway |c
		|tip This could take a long time.
		|only if haveq(37147) or haveq(37159) or haveq(37158)
	step
		click Bottled Windstorm##237480
		|tip It looks like a glass container with a white liquid in it.
		collect Bottled Windstorm##118649 |q 37147/1 |goto Skyreach/1 42.6,80.3
	step
		click Pristine Plumage##237467
		|tip It looks like a blue feather in a small ink vial on the steps.
		collect Pristine Plumage##118622 |q 37159/1 |goto Skyreach/1 63.8,24.9
	step
		click Sun Crystal##237466
		|tip It looks like a gold casing with a yellow glowing crystal in it, sitting on a table by the stairs.
		collect Sun Crystal##118621 |q 37158/1 |goto Skyreach/1 52.9,48.6
	step
		kill High Sage Viryx##76266 |q 37147/2 |goto Skyreach/2 48.8,33.3
		|tip High Sage Viryx is the final boss of the dungeon.
	step
		kill High Sage Viryx##76266 |q 37159/2 |goto Skyreach/2 48.8,33.3
		|tip High Sage Viryx is the final boss of the dungeon.
	step
		kill High Sage Viryx##76266 |q 37158/2 |goto Skyreach/2 48.8,33.3
		|tip High Sage Viryx is the final boss of the dungeon.
	step
		Leave the Dungeon
		|tip Click the green eye button on your minimap and choose "Leave Instance Group".
		Return to your Garrison |goto Lunarfall/0 30.0,30.0 < 1000 |c
		|only if haveq(37147) or haveq(37159) or haveq(37158)
	step
		#include "Garrison_Medium_Building", action="talk Taoshi##88023", building="Inn"
		|tip If you can't find them, check upstairs and in the basement of the inn. The door to the basement is in the kitchen of the Lunarfall Inn.
		turnin Sky Dancers##37147
	step
		#include "Garrison_Medium_Building", action="talk Skylord Omnuron##87999", building="Inn"
		|tip If you can't find them, check upstairs and in the basement of the inn. The door to the basement is in the kitchen of the Lunarfall Inn.
		turnin Aviana's Request##37159
	step
		#include "Garrison_Medium_Building", action="talk Sunwalker Dezco##87998", building="Inn"
		|tip If you can't find them, check upstairs and in the basement of the inn. The door to the basement is in the kitchen of the Lunarfall Inn.
		turnin Gloriously Incandescent##37158
	--- The Everbloom ---
	step
		Use the Group Finder for _Heroic Dungeons_:
		Enter the Everbloom Dungeon |goto The Everbloom/1 |noway |c
		|tip This could take a long time.
		|only if haveq(37166) or haveq(37165) or haveq(37150)
	step
		click Overgrown Artifact##237473
		|tip It looks like a small metal box with a yellow glowing dome on top of it, on the ground.
		collect Overgrown Artifact##118628 |q 37166/1 |goto The Everbloom/1 60.9,66.5
	step
		click Strangely-Glowing Frond##237472
		|tip It looks like a large yellow-brown plant at the base of a tree.
		collect Strangely-Glowing Frond##118627 |q 37165/1 |goto The Everbloom/1 64.3,20.4
	step
		click Rustling Peachick Nest##237483
		|tip It looks like a small yellow plant at the base of a tree.
		collect Tiny Peachick Hatchling##118652 |q 37150/1 |goto The Everbloom/1 55.5,22.2
	step
		kill Yalnu##83846 |q 37150/2
		|tip Yalnu is the final boss of the dungeon.
	step
		kill Yalnu##83846 |q 37166/2
		|tip Yalnu is the final boss of the dungeon.
	step
		kill Yalnu##83846 |q 37165/2
		|tip Yalnu is the final boss of the dungeon.
	step
		Leave the Dungeon
		|tip Click the green eye button on your minimap and choose "Leave Instance Group".
		Return to your Garrison |goto Lunarfall/0 30.0,30.0 < 1000 |c
		|only if haveq(37166) or haveq(37165) or haveq(37150)
	step
		#include "Garrison_Medium_Building", action="talk Mylune##88025", building="Inn"
		|tip If you can't find them, check upstairs and in the basement of the inn. The door to the basement is in the kitchen of the Lunarfall Inn.
		turnin For the Birds##37150
	step
		#include "Garrison_Medium_Building", action="talk Lorewalker Cho##88005", building="Inn"
		|tip If you can't find them, check upstairs and in the basement of the inn. The door to the basement is in the kitchen of the Lunarfall Inn.
		turnin Titanic Evolution##37166
	step
		#include "Garrison_Medium_Building", action="talk Zen'kiki##88004", building="Inn"
		|tip If you can't find them, check upstairs and in the basement of the inn. The door to the basement is in the kitchen of the Lunarfall Inn.
		turnin Cenarion Concerns##37165
	--- Upper Blackrock Spire ---
	step
		Use the Group Finder for _Heroic Dungeons_:
		Enter the Upper Blackrock Spire Dungeon |goto Upper Blackrock Spire 2/1 |noway |c
		|tip This could take a long time.
		|only if haveq(37161) or haveq(37162) or haveq(37148) or haveq(37179)
	step
		click Bottled Flamefly##237481
		|tip It looks like a glass jar with some brown twigs in it, sitting on a barrel.
		collect Spire Flamefly##118650 |q 37148/1 |goto Upper Blackrock Spire 2/1 36.0,16.7
	step
		click Finkle's Improved Skinner##237468
		|tip It looks like a jagged knife with a red handle.
		collect Finkle's Immproved Skinner##118623 |q 37161/1 |goto Upper Blackrock Spire 2/2 30.3,38.3
	step
		click Shed Proto-Dragon Claw##237469
		|tip It looks like a medium sized dark colored claw on the ground.
		collect Shed Proto-Dragon Claw##118624 |q 37162/1 |goto Upper Blackrock Spire 2/3 48.5,19.52
	step
		click Miniature Iron Star##237476
		|tip It looks like a dark metal cannon ball with spikes on it on the ground.
		collect Miniature Iron Star##118645 |q 37179/1 |goto Upper Blackrock Spire 2/3 33.4,54.2
	step
		kill Warlord Zaela##77120 |q 37161/2
		|tip Warlord Zaela is the final boss of the dungeon.
	step
		kill Warlord Zaela##77120 |q 37162/2
		|tip Warlord Zaela is the final boss of the dungeon.
	step
		kill Warlord Zaela##77120 |q 37148/2
		|tip Warlord Zaela is the final boss of the dungeon.
	step
		kill Warlord Zaela##77120 |q 37179/2
		|tip Warlord Zaela is the final boss of the dungeon.
	step
		Leave the Dungeon
		|tip Click the green eye button on your minimap and choose "Leave Instance Group".
		Return to your Garrison |goto Lunarfall/0 30.0,30.0 < 1000 |c
		|only if haveq(37161) or haveq(37162) or haveq(37148) or haveq(37179)
	step
		#include "Garrison_Medium_Building", action="talk Finkle Einhorn##88000", building="Inn"
		|tip If you can't find them, check upstairs and in the basement of the inn. The door to the basement is in the kitchen of the Lunarfall Inn.
		turnin Family Traditions##37161
	step
		#include "Garrison_Medium_Building", action="talk Maximillian of Northshire##88001", building="Inn"
		|tip If you can't find them, check upstairs and in the basement of the inn. The door to the basement is in the kitchen of the Lunarfall Inn.
		turnin Damsels and Dragons##37162
	step
		#include "Garrison_Medium_Building", action="talk Oralius##88024", building="Inn"
		|tip If you can't find them, check upstairs and in the basement of the inn. The door to the basement is in the kitchen of the Lunarfall Inn.
		turnin Oralius' Adventure##37148
	step
		#include "Garrison_Medium_Building", action="talk Millhouse Manastorm##88009", building="Inn"
		|tip He's upstairs in the Lunarfall Inn.
		turnin For The Children!##37179
]])