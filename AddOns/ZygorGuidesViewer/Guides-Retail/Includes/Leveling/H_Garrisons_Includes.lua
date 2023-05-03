if UnitFactionGroup("player")~="Horde" then return end
local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end

----------------
----- NPCs -----
----------------

ZygorGuidesViewer:RegisterInclude("Garrison_Rokhan",[[
		talk Rokhan##78487 |goto Frostwall/0 51.26,51.35 |only if garrisonlvl(1)
		talk Rokhan##78487 |goto Frostwall/0 45.9,42.8 |only if garrisonlvl(2)
		talk Rokhan##78487 |goto Frostwall/0 45.89,42.86 |only if garrisonlvl(3)
]])

ZygorGuidesViewer:RegisterInclude("Garrison_Gazlowe",[[
		talk Gazlowe##78466 |goto Frostwall/0 52.5,53.4 |only if garrisonlvl(1)
		talk Gazlowe##78466 |goto Frostwall/0 42.2,55.5 |only if garrisonlvl(2)
		talk Gazlowe##78466 |goto Frostwall/0 37.6,50.3 |only if garrisonlvl(3)
		|tip Inside the building. |only if garrisonlvl(2) or garrisonlvl(3)
]])

ZygorGuidesViewer:RegisterInclude("Garrison_WarmasterZog",[[
		talk Warmaster Zog##79740 |goto Frostwall/0 53.9,55.1 |only if garrisonlvl(1)
		talk Warmaster Zog##79740 |goto Frostwall/0 40.4,54.7 |only if garrisonlvl(2)
		talk Warmaster Zog##79740 |goto Frostwall/0 39.3,55.4 |only if garrisonlvl(3) and not hasbuilding(207)
		talk Warmaster Zog##79740 |goto Frostwall/0 38.8,56.8 |only if garrisonlvl(3) and hasbuilding(207)
		|tip Inside the building.
]])

ZygorGuidesViewer:RegisterInclude("Garrison_BlueprintVendor",[[
		talk Rezlak##79619 |goto Frostwall/0 59.1,39.5 |only if garrisonlvl(1)
		talk Rezlak##79619 |goto Frostwall/0 42.7,54.6 |only if garrisonlvl(2)
		talk Rezlak##79619 |goto Frostwall/0 38.5,49.1 |only if garrisonlvl(3)
		|tip Inside the building. |only if garrisonlvl(2) or garrisonlvl(3)
]])

ZygorGuidesViewer:RegisterInclude("Garrison_ShadowHunterUkambe",[[
		Shadow Hunter Ukambe doesn't join your Garrison until Level 2! |only if garrisonlvl(1)
		talk Shadow Hunter Ukambe##78495 |goto Frostwall/0 41.5,51.3 |only if garrisonlvl(2)
		talk Shadow Hunter Ukambe##78495 |goto Frostwall/0 40.9,51.4 |only if garrisonlvl(3)
		|tip Inside the building. |only if garrisonlvl(2) or garrisonlvl(3)
]])

ZygorGuidesViewer:RegisterInclude("Garrison_Flightmaster",[[
		talk Bron Skyhorn##79407 |goto Frostwall/0 45.8,50.8 |only if garrisonlvl(1)
		talk Bron Skyhorn##79407 |goto Frostwall/0 45.8,50.8 |only if garrisonlvl(2)
		talk Bron Skyhorn##79407 |goto Frostwall/0 45.8,50.9 |only if garrisonlvl(3)
]])

ZygorGuidesViewer:RegisterInclude("Garrison_Grimjaw",[[
		talk Sergeant Grimjaw##88228 |goto Frostwall/0 54.1,48.7 |only if garrisonlvl(1)
		talk Sergeant Grimjaw##88228 |goto Frostwall/0 43.7,47.8 |only if garrisonlvl(2)
		talk Sergeant Grimjaw##88228 |goto Frostwall/0 43.8,47.5 |only if garrisonlvl(3)
]])

ZygorGuidesViewer:RegisterInclude("Garrison_Saurfang",[[
		talk High Overlord Saurfang##89753 |goto Frostwall/0 40.2,56.6 |only if garrisonlvl(3)
		|tip Inside the building. |only if garrisonlvl(3)
]])

ZygorGuidesViewer:RegisterInclude("Garrison_Drix",[[
		talk Drix Bassbolter##91072 |goto Frostwall/0 41.0,47.2 |only if garrisonlvl(3)
]])

ZygorGuidesViewer:RegisterInclude("Garrison_Harrison",[[
		talk Harrison Jones##89793 |goto Frostwall/0 40.2,56.0
		|tip Inside the building.
]])

ZygorGuidesViewer:RegisterInclude("Garrison_ShadowHunter",[[
		talk Shadow Hunter Ty'jin##89806 |goto Frostwall/0 40.2,56.0
		|tip Inside the building.
]])

ZygorGuidesViewer:RegisterInclude("Garrison_Makjin",[[
		talk Mak'jin##79892 |goto Frostwall/0 38.0,72.2 |only if garrisonlvl(2)
		talk Mak'jin##79892 |goto Frostwall/0 38.0,72.2 |only if garrisonlvl(3)
		|tip He walks around this area.
]])

ZygorGuidesViewer:RegisterInclude("Garrison_Pagle",[[
		talk Nat Pagle##85984 |goto Frostwall/0 38.2,72.0 |only if garrisonlvl(2)
		talk Nat Pagle##85984 |goto Frostwall/0 38.2,72.0 |only if garrisonlvl(3)
]])

ZygorGuidesViewer:RegisterInclude("Garrison_Durotan",[[
		talk Durotan##74163 |goto Frostwall/0 50.2,37.9
]])

ZygorGuidesViewer:RegisterInclude("Garrison_Farseer_Drek'Thar",[[
		talk Farseer Drek'Thar##76411 |goto Frostwall/0 49.7,49.7 |only if garrisonlvl(1)
]])

-------------------
----- Objects -----
-------------------

ZygorGuidesViewer:RegisterInclude("Garrison_ArchitectTable",[[
		clicknpc Architect Table##86017 |goto Frostwall/0 52.3,53.7 |only if garrisonlvl(1)
		clicknpc Architect Table##86017 |goto Frostwall/0 41.9,55.6 |only if garrisonlvl(2)
		clicknpc Architect Table##86017 |goto Frostwall/0 37.4,50.6 |only if garrisonlvl(3)
		|tip Inside the building. |only if garrisonlvl(2) or garrisonlvl(3)
]])

ZygorGuidesViewer:RegisterInclude("Garrison_Cache",[[
		click Garrison Cache##237191 |goto Frostwall/0 54.6,52.1 |only if garrisonlvl(1)
		click Garrison Cache##237191 |goto Frostwall/0 41.3,47.4 |only if garrisonlvl(2)
		click Garrison Cache##237191 |goto Frostwall/0 42.6,46.8 |only if garrisonlvl(3)
]])

ZygorGuidesViewer:RegisterInclude("Garrison_CommandTable",[[
		clicknpc Command Table##86062 |goto Frostwall/0 53.8,54.7 |only if garrisonlvl(1)
		clicknpc Command Table##86062 |goto Frostwall/0 40.7,54.3 |only if garrisonlvl(2)
		clicknpc Command Table##86062 |goto Frostwall/0 39.7,54.8 |only if garrisonlvl(3) and not hasbuilding(207)
		clicknpc Command Table##86062 |goto Frostwall/0 39.1,56.2 |only if garrisonlvl(3) and hasbuilding(207)
		|tip Inside the building.
]])

ZygorGuidesViewer:RegisterInclude("Garrison_Warplans",[[
		_You don't have access to Garrison dailies until Garrison level 2!_ |only if garrisonlvl(1)
		click War Planning Map##236206 |goto Frostwall/0 41.8,50.7 |only if garrisonlvl(2)
		click War Planning Map##236206 |goto Frostwall/0 41.0,50.7 |only if garrisonlvl(3)
		|tip Inside the building. |only if garrisonlvl(2) or garrisonlvl(3)
]])

------------------------------
----- Garrison Buildings -----
------------------------------

ZygorGuidesViewer:RegisterInclude("Garrison_Small_Building",[[
		%action% |goto Frostwall/0 54.0,36.5 |only if ZGV.Garrison_GetBuildingLocation("%building%")==18
		%action% |goto Frostwall/0 48.0,32.4 |only if ZGV.Garrison_GetBuildingLocation("%building%")==19
		%action% |goto Frostwall/0 53.3,41.9 |only if ZGV.Garrison_GetBuildingLocation("%building%")==20
		%action% |goto Frostwall/0 53.1,36.5 |only if default
]])

ZygorGuidesViewer:RegisterInclude("Garrison_Finalize_Small",[[
		click Finalize Garrison Plot##236190 |goto Frostwall/0 52.3,36.8 |only if ZGV.Garrison_GetBuildingLocation("%building%")==18
		click Finalize Garrison Plot##236190 |goto Frostwall/0 49.3,34.8 |only if ZGV.Garrison_GetBuildingLocation("%building%")==19
		click Finalize Garrison Plot##236190 |goto Frostwall/0 52.0,40.0 |only if ZGV.Garrison_GetBuildingLocation("%building%")==20
		click Finalize Garrison Plot##236190 |goto Frostwall/0 52.3,36.8 |only if default
		|tip It looks like a huge floating scroll in a column of yellow light.
]])

ZygorGuidesViewer:RegisterInclude("Garrison_Medium_Building",[[
		%action% |goto Frostwall/0 51.6,60.8 |only if ZGV.Garrison_GetBuildingLocation("%building%")==22
		%action% |goto Frostwall/0 58.1,27.0 |only if ZGV.Garrison_GetBuildingLocation("%building%")==25
		%action% |goto Frostwall/0 51.6,60.8 |only if default
]])

ZygorGuidesViewer:RegisterInclude("Garrison_Finalize_Medium",[[
		click Finalize Garrison Plot##236190 |goto Frostwall/0 51.7,56.8 |only if ZGV.Garrison_GetBuildingLocation("%building%")==22
		click Finalize Garrison Plot##236190 |goto Frostwall/0 56.6,29.2 |only if ZGV.Garrison_GetBuildingLocation("%building%")==25
		click Finalize Garrison Plot##236190 |goto Frostwall/0 51.7,56.8 |only if default
		|tip It looks like a huge floating scroll in a column of yellow light.
]])

ZygorGuidesViewer:RegisterInclude("Garrison_Large_Building",[[
		%action% |goto Frostwall/0 59.6,49.7 |only if ZGV.Garrison_GetBuildingLocation("%building%")==23 and garrisonlvl(1)
		%action% |goto Frostwall/0 59.7,50.1 |only if ZGV.Garrison_GetBuildingLocation("%building%")==23 and garrisonlvl() >= 2
		%action% |goto Frostwall/0 61.9,35.6 |only if ZGV.Garrison_GetBuildingLocation("%building%")==24
		%action% |goto Frostwall/0 59.6,49.7 |only if default
]])

ZygorGuidesViewer:RegisterInclude("Garrison_Finalize_Large",[[
		click Finalize Garrison Plot##236190 |goto Frostwall/0 58.4,48.5 |only if ZGV.Garrison_GetBuildingLocation("%building%")==23 and garrisonlvl(1)
		click Finalize Garrison Plot##236190 |goto Frostwall/0 58.1,48.4 |only if ZGV.Garrison_GetBuildingLocation("%building%")==23 and garrisonlvl() >= 2
		click Finalize Garrison Plot##236190 |goto Frostwall/0 59.1,36.9 |only if ZGV.Garrison_GetBuildingLocation("%building%")==24
		click Finalize Garrison Plot##236190 |goto Frostwall/0 58.4,48.5 |only if default
		|tip It looks like a huge floating scroll in a column of yellow light.
]])

ZygorGuidesViewer:RegisterInclude("Garrison_Fishing_Finalize",[[
		click Finalize Garrison Plot##236190 |goto Frostwall/0 39.2,71.5 |only if garrisonlvl() >= 2
		|tip It looks like a huge floating scroll in a column of yellow light. |only if garrisonlvl() >= 2
]])

ZygorGuidesViewer:RegisterInclude("Garrison_HerbGarden_Finalize",[[
		click Finalize Garrison Plot##236190 |goto Frostwall/0 44.6,81.2 |only if garrisonlvl() >= 2
		|tip It looks like a huge floating scroll in a column of yellow light. |only if garrisonlvl() >= 2
]])

ZygorGuidesViewer:RegisterInclude("Garrison_FrostwallMines_Finalize",[[
		click Finalize Garrison Plot##236190 |goto Frostwall/0 62.6,72.3|only if garrisonlvl() >= 2
		|tip It looks like a huge floating scroll in a column of yellow light. |only if garrisonlvl() >= 2
]])

-----------------------------
----- Garrison Campaign -----
-----------------------------

ZygorGuidesViewer:RegisterInclude("Garrison_Campaign",[[
	step
	label "start"
		Routing to Campaigns |only if default
		Routing to End |next "end" |only if completedq(35197) and completedq(36290) and completedq(34450) and completedq(34078) and completedq(34319) and completedq(33427) and completedq(35687) and completedq(35842) and completedq(36248) and completedq(36136) and completedq(36117) and completedq(34341)
	step
		talk Khadgar's Servant##83858
		|tip He walks up and down this path.
		accept Garrison Campaign: The Sargerei##35186 |goto Frostwall/0 47.1,47.2 |next "sargerei"
		If this Campaign is not available, click here to continue |confirm
		only if not completedq(35197)
	step
		click Overly Gaudy Note##234243
		Accept Garrison Campaign: The Ring of Blood |repeatable |complete haveq(36280) or haveq(36219) or haveq(36281) or haveq(36282) |goto Frostwall/0 44.20,48.20 |next "ringofblood"
		If this Campaign is not available, click here to continue |confirm
		only if not completedq(36290)
	step
		#include "Garrison_Rokhan"
		accept Garrison Campaign: Darktide Roost##35876 |next "darktideroost"
		If this Campaign is not available, click here to continue |confirm
		only if not completedq(34450)
	step
		#include "Garrison_Rokhan"
		accept Garrison Campaign: Grinding Gears##34034 |next "ironsiegeworks"
		If this Campaign is not available, click here to continue |confirm
		only if not completedq(34078)
	step
		#include "Garrison_Rokhan"
		accept Garrison Campaign: The Search for Shadow Hunter Bwu'ja##34309 |next "bloodmaulcompound"
		If this Campaign is not available, click here to continue |confirm
		only if not completedq(34319)
	step
		talk Thrall##74808
		accept Garrison Campaign: Farseer's Rock##32979 |goto Frostwall/0 50.8,37.6 |next "oursisthefury"
		If this Campaign is not available, click here to continue |confirm
		only if not completedq(33427)
	step
		talk Khadgar's Servant##83858
		|tip He walks up and down this path.
		accept Garrison Campaign: The Fall of Shattrath##35680 |goto Frostwall/0 47.1,47.2 |next "fallofshatt"
		If this Campaign is not available, click here to continue |confirm
		only if not completedq(35687)
	step
		#include "Garrison_Rokhan"
		accept Garrison Campaign: Deep Recon##35843 |next "warlordscouncil"
		If this Campaign is not available, click here to continue |confirm
		only if not completedq(35842)
	step
		#include "Garrison_WarmasterZog"
		accept Garrison Campaign: Missing Grunt##36261 |next "strikeattheheart"
		If this Campaign is not available, click here to continue |confirm
		only if not completedq(36248)
	step
		#include "Garrison_Rokhan"
		accept Garrison Campaign: Awakening##36136 |next "primalfury"
		If this Campaign is not available, click here to continue |confirm
		only if not completedq(36136)
	step
		talk Nixxie##88892
		accept Garrison Campaign: The Broken Precipice##36117 |goto Frostwall 54.7,14.1 |next "brokenprecipice"
		If this Campaign is not available, click here to continue |confirm
		only if not completedq(36117)
	step
		talk Choluna##78192
		accept Garrison Campaign: Crows In The Field##34335 |goto Frostwall 42.2,45.8 |next "heartofbreakers"
		If this Campaign is not available, click here to restart this guide |next "start" |confirm
		only if not completedq(34341)
	---//Garrison Campaign: The Sargerei Campaign\\---
	step
	label "sargerei"
		#include "Garrison_Flightmaster"
		Tell him _"Take me to Shadowmoon Valley."_
		Speak to Bron Skyhorn |q 35186/1
	step
		talk Archmage Modera##88276
		turnin Garrison Campaign: The Sargerei##35186 |goto Shadowmoon Valley D 43.6,77.2
		accept Infiltrating the Sargerei##35187 |goto 43.58,77.28
	step
		kill Sargerei Darkblade##84945+, Sargerei Acolyte##85168+, Sargerei Binder##81542+, Sargerei Initiate##81541+
		collect 1 Sargerei Slippers##112893 |q 35187/1 |goto Shadowmoon Valley D/0 48.6,76.5
		collect 1 Sargerei Robe##112891 |q 35187/2 |goto Shadowmoon Valley D/0 48.6,76.5
		collect 1 Sargerei Cowl##112791 |q 35187/3 |goto Shadowmoon Valley D/0 48.6,76.5
	step
		use Sargerei Cowl##112791
		use Sargerei Disguise##112904
		Create and Put On A Sargerei Disguise |q 35187/4 |goto Shadowmoon Valley D/0 48.6,76.5
	step
		talk Soulbinder Zamaya##81499
		Tell her, _"I'd like to join the Sargerei."_
		Speak to Soulbinder Zamaya |q 35187/5 |goto Shadowmoon Valley D/0 49.79,81.46
	step
		talk Anchorite Laanda##81530
		Tell him, _"The rain falls on Shadowmoon."_
		Speak to Anchorite Laanda |q 35187/6 |goto Shadowmoon Valley D/0 50.0,81.2
	step
		talk Anchorite Laanda##81530
		turnin Infiltrating the Sargerei##35187 |goto Shadowmoon Valley D/0 50.0,81.2
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
		kill Eldermoss##81481 |q 35190/1 |goto Shadowmoon Valley D/0 45.4,73.8
	step
	label "spear"
		kill Shadowglen Thornshooter##81502+, Shadowglen Spitter##81637+
		collect 8 Wooden Spear##103994 |q 35188/1 |goto Shadowmoon Valley D/0 47.1,77.7
	stickystart "crystals"
	step
		clicknpc The Eredar Destiny##88388
		Read "The Eredar Destiny" |q 35189/1 |goto Shadowmoon Valley D/0 51.4,75.7
	step
		clicknpc The Purpose of Unity##88389
		Read "The Purpose of Unity" |q 35189/2 |goto Shadowmoon Valley D/0 50.1,72.5
	step
		clicknpc The Promise of Eternity##88390
		Read "The Promise of Eternity" |q 35189/3 |goto Shadowmoon Valley D/0 50.8,79.7
	step
	label "crystals"
		clicknpc Felstorm Crystal##88370
		|tip These can bef found inside the buildings or small tents in this area.
		Destroy #6# Felstorm Crystals |q 35191/1 |goto Shadowmoon Valley D/0 49.6,73.2
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
		_Follow the path_ up |goto Shadowmoon Valley D/0 46.9,79.8 < 10
		kill Invokaz##81697 |q 35194/1 |goto Shadowmoon Valley D/0 46.1,80.6
	step
		clicknpc Demon Gate##88399
		Destroy the Demon Gate |q 35194/2 |goto Shadowmoon Valley D/0 46.3,80.6
	step
		click Laanda's Scroll##231918
		turnin Facing Demons##35194 |goto Shadowmoon Valley D/0 50.0,81.2
		accept Socrethar's Fury##35195 |goto Shadowmoon Valley D/0 50.0,81.2
	step
		click Othaar's Door |goto Shadowmoon Valley D/0 50.1,81.6 < 5
		Confront Socrethar |q 35195/1 |goto Shadowmoon Valley D/0 50.4,82.1
	step
		kill Soulbinder Zamaya##81858
		collect Sargerei Battle Plans##119127 |q 35195/2 |goto Shadowmoon Valley D/0 50.7,82.4
	step
		talk Anchorite Laanda##81530
		turnin Socrethar's Fury##35195 |goto Shadowmoon Valley D/0 50.6,82.3
		accept Forging Ahead##35197 |goto Shadowmoon Valley D/0 50.6,82.3
	step
		talk Khadgar's Servant##83858 |tip He walks up and down this path.
		turnin Forging Ahead##35197 |goto Frostwall/0 47.1,47.2
	step
		You have completed the _Sargerei Campaign_
		Click here to return to the start of this guide |confirm |next "start"
	---//Garrison Campaign: Ring of Blood Campaign\\---
	step
	label "ringofblood"
		talk Gurgthock##84783
		turnin Garrison Campaign: The Ring of Blood##36219 |goto Nagrand D/0 63.0,36.0 |only if haveq(36219)
		turnin Garrison Campaign: The Ring of Blood##36280 |goto Nagrand D/0 63.0,36.0 |only if haveq(36280)
		turnin Garrison Campaign: The Ring of Blood##36281 |goto Nagrand D/0 63.0,36.0 |only if haveq(36281)
		turnin Garrison Campaign: The Ring of Blood##36282 |goto Nagrand D/0 63.0,36.0 |only if haveq(36282)
		accept How Tough Are You?##36220 |goto Nagrand D/0 63.00,35.99
	step
		kill Lug'dol##84675
		collect Lug'dol's Head##114976 |q 36220/1 |goto Nagrand D/0 64.4,22.6
	step
		clicknpc Lug'dol's Head##84750
		Present Lug'dol's Head |q 36220/2 |goto Nagrand D/0 56.9,19.2
	step
		talk Kroggol the Wall##84720
		turnin How Tough Are You?##36220 |goto Nagrand D/0 56.90,19.11
		accept Entry Fee##36221 |goto 56.90,19.11
	step
		kill Rampant Gladiator##84764+, Bloodied Slayer##84765+
		collect 50 Blood Stone##114996 |q 36221/1 |goto Nagrand D/0 58.5,18.5
	step
		_Go down_ the stairs |goto Nagrand D/0 58.3,13.8 < 10
		talk Wodin the Troll-Servant##84784
		turnin Entry Fee##36221 |goto 56.78,12.90
		accept The Champion of Blood##36222 |goto 56.78,12.90
	step
		talk Gurgthock##84783
		Speak to Gurgthock |q 36222/1 |goto Nagrand D/0 56.9,13.1
	step
		kill Katsuo##84791, Azuka Bladefury##84800
		Win The Blood Championship |q 36222/2 |goto Nagrand D/0 56.1,13.8
	step
		talk Wodin the Troll-Servant##84784
		turnin The Champion of Blood##36222 |goto Nagrand D/0 56.78,12.90
		accept Out of the Shadows##36290 |goto 56.78,12.90
	step
		#include "Garrison_Rokhan"
		turnin Out of the Shadows##36290
	step
		You have completed the _Ring of Blood Campaign_
		Click here to return to the start of this guide |confirm |next "start"
	---//Garrison Campaign: Darktide Roost Campaign\\---
	step
	label "darktideroost"
		#include "Garrison_Flightmaster"
		Tell him, _"Take me to Darktide Roost."_
		Fly to Darktide Roost |goto Shadowmoon Valley D 57.6,83.5 < 30 |noway |c
		only if not completedq(35876)
	step
		talk Rexxar##77982
		turnin Garrison Campaign: Darktide Roost##35876 |goto 59.23,82.25
		accept Shredder Suppressor##34353 |goto 59.23,82.25
	step
		talk Darktide Pilferer##83494
		accept Darktide Defender##34352 |goto 59.08,82.27
	step
		kill Darktide Rylakinator-3000##78328+
		Destroy #3# Shredders |q 34353/1 |goto Shadowmoon Valley D/0 57.7,86.5
	step
		kill Darktide Engineer##78999+, Darktide Pilferer##78148+
		Slay #5# Pilferers |q 34352/1 |goto Shadowmoon Valley D/0 57.7,86.5
		Slay #5# Engineers |q 34352/2 |goto Shadowmoon Valley D/0 57.7,86.5
	step
		Click the _Quest Complete_ Box:
		turnin Darktide Defender##34352
	step
		talk Rexxar##77982
		turnin Shredder Suppressor##34353 |goto 59.22,82.23
		accept Dirty Rats##34355 |goto 59.23,82.24
	step
		use Rat Bait##110268
		|tip Use the Rat Bait near Unmanned Iron Shredders to destroy them.
		Destroy #5# Unmanned Iron Shredders |q 34355/1 |goto Shadowmoon Valley D/0 55.8,89.2
	step
		talk Rexxar##78258
		turnin Dirty Rats##34355 |goto 58.14,93.89
		accept Releasing Rylak##34365 |goto 58.14,93.89
		accept Downsizing the Darktide##34397 |goto 58.14,93.89
	step
		click Rylak Cage##229042
		Free the First Rylak |q 34365/1 |count 1 |goto 58.69,94.96
	step
		click Rylak Cage##229042
		Free the Second Rylak |q 34365/1 |count 2 |goto 59.5,95.8
	step
		click Rylak Cage##229042
		Free the Third Rylak |q 34365/1 |count 3 |goto 61.6,95.5
	step
		kill Assistant Fexfuse##78409 |q 34397/1 |goto 60.7,93.0
	step
		kill Captain Killrath##78410 |q 34397/2 |goto 62.43,93.93
	step
		kill Ra'ka Bloodspear##78475 |q 34397/3 |goto 59.25,99.04
	step
		click Goblin Mind Control Device##229314
		accept Free their Minds##34455 |goto 59.78,94.47
	step
		clicknpc Controlled Darkwing##78550+
		use Rylak Mind Controller##110447
		|tip Use the Rylak Mind Controller to free the minds of the Rylaks in this area. Most can be found flying above you.
		Free #5# Controlled Rylak Minds |q 34455/1 |goto 60.25,95.24
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
		|tip You will ride Nisha to the top of the mountain.
		Ride Nisha |q 34450/1 |goto 58.14,93.89
	step
		kill Razz Ricketroz##78973 |q 34450/2 |goto 60.1,90.5
	step
		clicknpc Nisha##79168 |goto 60.34,90.33
		Ride Nisha To Safety |goto 67.9,90.0 < 20 |c |noway
		only if not completedq(34450)
	step
		talk Rexxar##78937
		turnin Rylak Rescue##34450 |goto 67.96,90.12
	step
		You have completed the _Darktide Roost Campaign_
		Click here to return to the start of this guide |confirm |next "start"
	---//Garrison Campaign: Iron Siegeworks Campaign\\---
	step
	label "ironsiegeworks"
		talk Gazlowe##77928
  		turnin Garrison Campaign: Grinding Gears##34034 |goto Frostfire Ridge/0 78.2,55.1
		accept I Know The Drill!##34035 |goto Frostfire Ridge/0 78.2,55.1
	step
		click Drill Clutch##228562
		Release the Drill Clutch |q 34035/1 |goto Frostfire Ridge/0 80.0,56.3
	step
		kill Kruk Ironjaw##78040 |q 34035/2 |goto Frostfire Ridge/0 80.6,57.0
	step
		kill Nakeeta Coldtalon##78041 |q 34035/3 |goto Frostfire Ridge/0 80.5,56.5
	step
		click Drill Clutch##228562
		Re-engage the Drill Clutch |q 34035/4 |goto Frostfire Ridge/0 80.0,56.3
	step
		talk Gazlowe##77928
		turnin I Know The Drill!##34035 |goto Frostfire Ridge/0 80.0,56.2
		accept Maker's Mark##34040 |goto Frostfire Ridge/0 80.0,56.2
		accept Four Finger Discount##34041 |goto Frostfire Ridge/0 80.0,56.2
	stickystart "siegeparts"
	step
		click Blackrock Cog##228733
		collect Blackrock Cog##228733 |q 34041/1 |goto Frostfire Ridge/0 87.5,55.7
	step
		click Condensed Geyser Gas##228735
		collect Condensed Geyser Gas##228735 |q 34041/2 |goto Frostfire Ridge/0 87.3,53.1
	step
		_Go up_ the path |goto Frostfire Ridge/0 85.7,55.8 < 10
		click Carbonfrost Flamecore##228736
		collect Carbonfrost Flamecore##228736 |q 34041/3 |goto Frostfire Ridge/0 85.2,58.3
	step
	label "siegeparts"
		click Siege Parts##228862
		|tip These can be found all around the Iron Siegeworks.
		Inspect #5# Siege Parts |q 34040/1 |goto Frostfire Ridge/0 86.7,55.5
	step
		Next to you:
		talk Gazlowe##77928
		turnin Four Finger Discount##34041
		turnin Maker's Mark##34040
		accept A Fellow Gearhead##34042
	step
		Find Thaelin Darkanvil |q 34042/1 |goto Frostfire Ridge/0 88.4,49.4
	step
		Next to you:
		talk Gazlowe##77928
		turnin A Fellow Gearhead##34042
		accept Wanted: Overlord Blackhammer##34039
	step
		Follow the path _north_ |goto Frostfire Ridge/0 86.8,51.9 < 20
		kill Overlord Blackhammer##77175 |q 34039/1 |goto Frostfire Ridge/0 86.6,45.5
	step
		Next to you:
		talk Gazlowe##77928
		turnin Wanted: Overlord Blackhammer##34039
		accept Payment Due for Services Rendered##34078
	step
		_Go up_ the stairs |goto Frostfire Ridge/0 86.8,45.2 < 10
		Bring Gazlowe to the Roof |q 34078/1 |goto Frostfire Ridge/0 85.9,45.9
	step
		clicknpc Rocket Chicken XL##78392 |goto Frostfire Ridge/0 86.0,46.1 < 5
		|tip You will ride the Rocket Chicken back to your Garrison.
		#include "Garrison_Gazlowe"
		turnin Payment Due for Services Rendered##34078
	step
		You have completed the _Iron Siegeworks Campaign_
		Click here to return to the start of this guide |confirm |next "start"
	---//Garrison Campaign: Bloodmaul Compound Campaign\\---
	step
	label "bloodmaulcompound"
		Locate Shadow Hunter Bwu'ja |q 34309/1 |goto Frostfire Ridge 51.8,16.8
	step
		talk Shadow Hunter Bwu'ja##78659
		turnin Garrison Campaign: The Search for Shadow Hunter Bwu'ja##34309 |goto Frostfire Ridge 51.8,16.8
		accept Out of the Chains##34314 |goto Frostfire Ridge 51.8,16.8
	step
		kill Rugrum the Pit Boss##78778
		collect Bloodmaul Slave Key##110664 |q 34314/1 |goto Frostfire Ridge/0 52.7,18.4
	step
		click Bwu'ja's Shackle##229414
		Unlock Bwu'ja's Shackle |q 34314/2 |goto Frostfire Ridge/0 51.8,16.7
	step
		talk Shadow Hunter Bwu'ja##78659
		turnin Out of the Chains##34314 |goto Frostfire Ridge/0 51.8,16.8
		accept Gearing Up##34315 |goto Frostfire Ridge/0 51.8,16.8
	step
		_Follow_ the path up |goto Frostfire Ridge/0 47.1,18.4 < 20
		click Ogre Chest##229416
		|tip It is found behind the tower and looks like a box with leather stretched over it.
		collect Shadow Hunter's Glaive##110607 |q 34315/2 |goto Frostfire Ridge/0 47.7,18.8
	step
		click Ogre Chest##229415
		|tip It looks like a box with leather stretched over it.
		collect Shadow Hunter Garb##110606 |q 34315/1 |goto Frostfire Ridge/0 45.5,22.2
	step
		click Shadow Hunter's Mask##229421
		|tip It is on a small table outside the tower.
		Shadow Hunter's Mask |q 34315/3 |goto Frostfire Ridge/0 43.9,15.2
	step
		talk Shadow Hunter Bwu'ja##78659
		turnin Gearing Up##34315 |goto Frostfire Ridge/0 51.8,16.8
		accept Seeking the Truth##34316 |goto Frostfire Ridge/0 51.8,16.8
	step
		Locate Borgal Doomfist |q 34316/1 |goto Frostfire Ridge/0 40.4,21.8
	step
		talk Shadow Hunter Bwu'ja##78785
		turnin Seeking the Truth##34316 |goto Frostfire Ridge/0 40.6,21.8
		accept The Shadow Gate##34381 |goto Frostfire Ridge/0 40.6,21.8
	step
		kill Grubnor Wargut##78003 |q 34381/1 |goto Frostfire Ridge/0 39.5,23.2
	step
		click Shadow Gate##229026
		Enter the Shadow Gate |q 34381/2 |goto Frostfire Ridge/0 39.6,23.8
	step
		talk Shadow Hunter Bwu'ja##78785
		turnin The Shadow Gate##34381 |goto Frostfire Ridge/0 39.5,23.6
	step
		talk Orlana Strongbrow##78428
		accept The Totems That Bind##34318 |goto Frostfire Ridge/0 39.4,23.5
		accept Cleansing the Souls##34469 |goto Frostfire Ridge/0 39.4,23.5
	stickystart "totemsthatbind"
	step
		kill Crazed Soul##77958+
		|tip These can be found all around Bloodmaul Stronghold.
		use Luminescent Soul Shard##110394
		|tip You must use this on their corpses.
		Cleanse #10# Crazed Souls |q 34469/1 |goto Frostfire Ridge/0 40.6,17.7
	step
	label "totemsthatbind"
		click Borgal's Totem##229131
		collect 5 Borgal's Totem##110378 |q 34318/1 |goto Frostfire Ridge/0 40.6,17.7
	step
		talk Orlana Strongbrow##78428
		turnin The Totems That Bind##34318 |goto Frostfire Ridge/0 39.4,23.5
		turnin Cleansing the Souls##34469 |goto Frostfire Ridge/0 39.4,23.5
		accept Soulgrinder Survivor##34319 |goto Frostfire Ridge/0 39.4,23.5
	step
		clicknpc Borgal's Spiritbinder Totems##78386
		|tip These are two totems you must place.
		Place Borgal's Totems |q 34319/1 |goto Frostfire Ridge/0 38.0,13.8
	step
		kill Borgal Doomfist##77997 |q 34319/2 |goto Frostfire Ridge/0 38.0,13.8
	step
		talk Shadow Hunter Bwu'ja##78785
		turnin Soulgrinder Survivor##34319 |goto Frostfire Ridge/0 37.6,14.0
	step
		You have completed the _Bloodmaul Compound Campaign_
		Click here to return to the start of this guide |confirm |next "start"
	---//Garrison Campaign: Ours Is The Fury Campaign\\---
	step
	label "oursisthefury"
		Find Draka and Drek'Thar |q 32979/1 |goto Frostfire Ridge/0 57.1,41.5
	step
		talk Draka##72230
		turnin Garrison Campaign: Farseer's Rock##32979 |goto Frostfire Ridge/0 57.1,41.5
		accept Eaters of the Elements##32980 |goto Frostfire Ridge/0 57.1,41.5
	step
		Defend Drek'Thar as he performs his ritual:
		kill Icejaw Rockbiter##72297+, Goren Shardback##74689+
		First Half of the Ritual Completed |q 32980/1 |goto Frostfire Ridge/0 57.6,41.6
		Second Half of the Ritual Completed |q 32980/2 |goto Frostfire Ridge/0 57.6,41.6
	step
		kill Flaming Goren##74352
		Rescue Child of the Fury |q 32980/3 |goto Frostfire Ridge/0 57.6,41.6
	step
		talk Farseer Drek'Thar##74253
		turnin Eaters of the Elements##32980 |goto Frostfire Ridge/0 57.67,41.59
	step
		talk Draka##72230
		accept Eatercology##33444 |goto Frostfire Ridge/0 57.4,41.5
	step
		talk Farseer Drek'Thar##74253
		accept In the Shadow of Giants##32983 |goto Frostfire Ridge/0 57.4,41.4
	stickystart "mote"
	step
		clicknpc Kindler##74591
		Rescue Kindler |q 32983/2 |goto Frostfire Ridge/0 70.1,27.5
	step
		clicknpc Flamrog##74589
		Rescue Flamerog |q 32983/1 |goto Frostfire Ridge/0 70.8,23.6
	step
	label "mote"
		kill Burning Slagmaw##72348+, Vicious Acidmaw##76905+
		collect 10 Mote of Frostfire##102091 |q 33444/1 |goto Frostfire Ridge/0 70.1,29.8
	step
		talk Draka##72230
		turnin Eatercology##33444 |goto Frostfire Ridge/0 74.02,29.64
	step
		talk Farseer Drek'Thar##74253
		turnin In the Shadow of Giants##32983 |goto Frostfire Ridge/0 73.94,29.57
		accept The Ascent##32984 |goto Frostfire Ridge/0 73.94,29.57
	step
		Bring Drek'That to the First Anvil |q 32984/1 |goto Frostfire Ridge/0 71.4,37.9
	step
		talk Farseer Drek'Thar##74330
		turnin The Ascent##32984 |goto Frostfire Ridge/0 70.1,38.2
		accept Fury of Frostfire##32985 |goto Frostfire Ridge/0 70.1,38.2
	step
		kill Kron##72631 |q 32985/1 |goto Frostfire Ridge/0 70.2,39.1
	step
		talk Farseer Drek'Thar##74330
		turnin Fury of Frostfire##32985 |goto Frostfire Ridge/0 70.08,38.15
	step
		talk Thrall##76622
		accept Ours is the Fury##33427 |goto Frostfire Ridge/0 70.1,38.3
	step
		#include "Garrison_WarmasterZog"
		turnin Ours is the Fury##33427
	step
		You have completed the _Ours Is The Fury Campaign_
		Click here to return to the start of this guide |confirm |next "start"
	---//Garrison Campaign: Fall of Shattrath Campaign\\---
	step
	label "fallofshatt"
		talk Lady Liadrin##76804
		turnin Garrison Campaign: The Fall of Shattrath##35680 |goto Talador 50.0,48.6
		accept Reclaiming the City##35684 |goto Talador 50.0,48.6
	step
		kill Fel Seer##84873+, Shadowbourne Felcaster##84871+, Gorebound Insurgent##87337+, Fel Cannoneer##84880+
		collect 100 Sargerei Insignia##113294 |q 35684/1 |goto Talador 44.2,37.8
	step
		_Ride_ up the elevator |goto Talador/0 47.4,44.0 < 15 |only if walking
		talk Lady Liadrin##76804
		turnin Reclaiming the City##35684 |goto Talador 50.0,48.6
		accept Socrethar's Demise##35687 |goto Talador 50.0,48.6
	step
		_Ride_ down the elevator |goto Talador/0 47.3,44.0 < 15 |only if walking
		_Cross_ the bridge |goto Talador/0 44.3,34.4 < 20 |only if walking
		clicknpc Sha'tari Banner##82695
		Challenge Socrethar |q 35687/1 |goto Talador 42.3,33.0 < 7
		kill Socrethar##82662 |q 35687/2 |goto Talador 41.6,32.4
	step
		_Ride_ up the elevator |goto Talador/0 47.4,44.0 < 15 |only if walking
		talk Lady Liadrin##76804
		turnin Socrethar's Demise##35687 |goto Talador 50.0,48.6
	step
		You have completed the _Fall of Shattrath Campaign_
		Click here to return to the start of this guide |confirm |next "start"
	---//Garrison Campaign: Warlord's Council Campaign\\---
	step
	label "warlordscouncil"
		_Follow the path_ up the small hill |goto Nagrand D/0 50.8,37.7 < 20 |only if walking
		talk Shadow Hunter Zasta##83052
		turnin Garrison Campaign: Deep Recon##35843 |goto Nagrand D 49.8,37.0
		accept The Warlord's Council##35844 |goto Nagrand D 49.8,37.0
	step
		Wait To Be Captured |goto Nagrand D/0 41.9,37.0 |noway |c
		|tip You will be caught in a net and teleported after roughly 10 seconds.
		only if haveq(35844)
	step
		Watch the dialogue
		|tip You will need to wait until Shadow Hunter Kajassa releases you from the cage.
		Discover the Iron Horde's Plans |q 35844/1 |goto Nagrand D/0 41.9,37.0
	step
		talk Shadow Hunter Kajassa##83054
		turnin The Warlord's Council##35844 |goto Nagrand D/0 41.8,37.0
		accept Plans of War##35845 |goto Nagrand D/0 41.8,37.0
		accept Intercepting the Orders##35846 |goto Nagrand D/0 41.8,37.0
		accept Putting Down the Packleader##35842 |goto Nagrand D/0 41.8,37.0
	step
		clicknpc Miniature War Machine##83541
		|tip it is located inside the hut on top of the maps.
		Retrieve the Miniature War Machine |q 35845/2 |goto 42.63,38.56
	step
		kill Packleader Vor'gash##83049 |q 35842/1 |goto Nagrand D/0 44.8,37.7
	step
		clicknpc Map of Tanaan Jungle##83563
		|tip It is located inside the hut next to the table.
		Retrieve the Map of Tanaan Jungle |q 35845/3 |goto 45.85,36.70
	step
		clicknpc Scale Model of Gorgorek##83534
		|tip It is located inside the hut on the table.
		Retrieve the Scale Model of Gorgorek |q 35845/1 |goto 43.24,34.21
	step
		kill Mok'gol Raider##87385+, Mok'gol Pack-Leader##87584+, Mok'gol Brutalizer##72571+
		|tip These drop from mobs around Mok'gol Watchpost.
		collect Frostfire Mission Orders##113492 |q 35846/1 |goto Nagrand D/0 45.2,36.4
		collect Shadowmoon Mission Orders##113494 |q 35846/2 |goto Nagrand D/0 45.2,36.4
		collect Spires of Arak Mission Orders##113493 |q 35846/3 |goto Nagrand D/0 45.2,36.4
	step
		#include "Garrison_Rokhan"
		turnin Plans of War##35845
		turnin Intercepting the Orders##35846
		turnin Putting Down the Packleader##35842
	step
		You have completed the _Warlord's Council Campaign_
		Click here to return to the start of this guide |confirm |next "start"
	---//Garrison Campaign: A Strike At The Heart Campaign\\---
	step
	label "strikeattheheart"
		clicknpc Dul'zak##84787
		Find Dul'zak |q 36261/1 |goto Frostwall 63.6,44.6
	step
		Click the _Quest Complete_ Box:
		turnin Garrison Campaign: Missing Grunt##36261
		accept Where There Is Smoke...##36242
	step
		kill Akatha Blazeburn##84741 |q 36242/2 |goto Frostwall 72.6,49.1
	step
		kill Rag'sla Thunkblade##84738 |q 36242/1 |goto Frostwall 55.4,15.6
	step
		_Follow the path_ back |goto Frostwall/0 43.4,67.0 < 20
		kill Drek the Firecaller##84742 |q 36242/3 |goto Frostwall 44.6,84.4
	step
		#include "Garrison_WarmasterZog"
		turnin Where There Is Smoke...##36242
		accept A Stolen Heart##36248
	step
		kill Azuka Bladefury##84757 |q 36248/1 |goto Frostwall/0 52.1,36.1
	step
		#include "Garrison_WarmasterZog"
		turnin A Stolen Heart##36248
	step
		You have completed the _A Strike At The Heart Campaign_
		Click here to return to the start of this guide |confirm |next "start"
	---//Garrison Campaign: Primal Fury Campaign\\---
	step
	label "primalfury"
		talk Choluna##88530
		Ask her _"What's the situation?"_
		Speak to Choluna |q 36136/1 |goto Gorgrond 40.93,43.0
	step
		kill Duurg##84153 |q 36136/2 |goto Gorgrond 37.8,44.6
	step
		_Follow the path_ back up |goto Gorgrond/0 41.4,46.8 < 15 |only if walking
		talk Choluna##88530
		turnin Garrison Campaign: Awakening##36136 |goto Gorgrond 40.93,43.0
		accept Primal Fury##36342 |goto Gorgrond 40.93,43.0
	step
		talk Rokhan##85054
		Tell him _"Reporting for battle!"_
		Meet Rokhan |q 36342/1 |goto Talador 66.9,9.1
	step
		_Enter_ Bladefury's Command |goto Talador/0 68.3,5.6 < 15 |walk
		kill Gorgorek##85042 |q 36342/2 |goto Talador 69.2,3.2
	step
		_Continue further_ into Bladefury's Command |goto Talador/0 69.4,4.5 < 15
		kill Azuka Bladefury##85046 |q 36342/3 |goto Talador 69.6,5.8
	step
		clicknpc Sanketsu##87764
		|tip It's a sword stuck in the ground that is dropped after Azuka is killed.
		accept Sanketsu, The Burning Blade##37192 |goto Talador/0 69.5,5.8
	step
		talk Choluna##85334
		Ask her _"Where is the rest of the army?"_
		Speak to Choluna |q 36342/4 |goto Talador 67.5,7.6
	step
		Watch the dialogue
		Witness Grommash Hellscream's Challenge |q 36342/5 |goto Talador/0 69.5,9.1
	step
		#include "Garrison_WarmasterZog"
		turnin Primal Fury##36342
		turnin Sanketsu, The Burning Blade##37192
	step
		You have completed the _Primal Fury Campaign_
		Click here to return to the start of this guide |confirm |next "start"
	---//Garrison Campaign: Broken Precipice Campaign\\---
	step
	label "brokenprecipice"
		_Follow_ the path north |goto Nagrand D/0 42.0,27.8 < 20 |only if walking
		talk Greblin Fastfizzle##83686
		turnin Garrison Campaign: The Broken Precipice##36117 |goto Nagrand D 39.6,24.6
		accept Greblin Fastfizzle##35945 |goto Nagrand D 39.6,24.6
	step
		clicknpc Greblin Fastfizzle##83686
		Unhook Greblin Fastfizzle |q 35945/1 |goto Nagrand D 39.6,24.6
	step
		talk Greblin Fastfizzle##83686
		turnin Greblin Fastfizzle##35945/1 |goto Nagrand D 39.6,24.6
		accept Preservation Capitalization##35970 |goto Nagrand D 39.6,24.6
		accept Ogre Onslaught##35972 |goto Nagrand D 39.6,24.6
	stickystart "ogreonslaught"
	step
		click Redtooth Necklace##233510
		collect Redtooth Necklace##113594 |q 35970/1 |goto Nagrand D 37.9,25.6
	step
		_Go up_ the path |goto Nagrand D/0 36.1,23.6 < 20 |only if walking
		_Enter_ the small hut |goto 36.4,20.7 < 10 |walk
		click Ogre Bust##233516
		collect Ogre Bust##113603 |q 35970/3 |goto Nagrand D 36.7,21.2
	step
		click Purpletooth Necklace##233554
		collect Purpletooth Necklace##113615 |q 35970/2 |goto Nagrand D 35.7,18.9
	step
	label "ogreonslaught"
		kill 3 Sledgebasher##83575+, Slave-Grinder##88187+, Arcanist Earthsmasher##83577+ |q 35972/1 |goto Nagrand D/0 35.5,20.4
		kill 3 Defiant Drudge##83570+, Broken Drudge##83831+, Dominating Drudge##83640+ |q 35972/2 |goto Nagrand D/0 35.5,20.4
		|tip These can be found all around the Broken Precipice.
	step
		talk Greblin Fastfizzle##83734
		turnin Preservation Capitalization##35970 |goto Nagrand D 39.6,24.6
		turnin Ogre Onslaught##35972 |goto Nagrand D 39.6,24.6
		accept Dizzy Sparkshift##37511 |goto Nagrand D 39.6,24.6
	step
		talk Dizzy Sparkshift##76508
		turnin Dizzy Sparkshift##37511 |goto Nagrand D 40.8,12.9
		accept Brokyo Beatdown##35973 |goto Nagrand D 40.8,12.9
	step
		clicknpc Brokyo's Prized Possessionn##83750
		Select _"Challenge Brokyo."_
		Provoke Brokyo |q 35973/1 |goto 41.0,14.2
	step
		kill Brokyo##83655
		collect Brokyo's Ring##114121 |q 35973/2 |goto 41.0,14.4
	step
		talk Dizzy Sparkshift##76508
		turnin Brokyo Beatdown##35973 |goto Nagrand D 40.8,12.9
		accept News for Nixxie##37516 |goto Nagrand D 40.8,12.9
	step
		talk Nixxie##88892
		turnin News for Nixxie##37516 |goto Frostwall 54.7,14.1
	step
		You have completed the _Broken Precipice Campaign_
		Click here to return to the start of this guide |confirm |next "start"
	---//Garrison Campaign: Heart of the Breakers Campaign\\---
	step
	label "heartofbreakers"
		talk Thisalee Crow##78187
		turnin Garrison Campaign: Crows In The Field##34335 |goto Gorgrond 39.9,37.1
		accept Ambushing the Enemy##34336 |goto Gorgrond 39.9,37.1
	stickystart "caravanshipments"
	step
		_Follow_ the path around the cliffs |goto Gorgrond/0 41.2,37.5 < 30 |only if walking
		kill Lieutenant O'rok##78195
		collect O'rok's Head##110231 |q 34336/2 |goto Gorgrond 40.4,40.2
	step
		click Bladefury's Orders##237821
		|tip It looks like a small, rolled up scroll sitting on a box.
		accept Bladefury's Orders##34347 |goto Gorgrond 40.3,40.3
	step
	label "caravanshipments"
		click Caravan Shipment##229018
		|tip They look like large stacks of grey crates.
		collect 5 Caravan Shipment##110230 |q 34336/1 |goto Gorgrond 41.6,40.6
	step
		_Follow_ the path around the cliffs |goto Gorgrond/0 41.9,38.8 < 30 |only if walking
		talk Thisalee Crow##78187
		turnin Ambushing the Enemy##34336 |goto Gorgrond 39.9,37.1
		turnin Bladefury's Orders##34347 |goto Gorgrond 39.9,37.1
		accept The Giant Cauldron##34337 |goto Gorgrond 39.9,37.1
	step
		talk Choluna##78192
		Tell her _"Take me to Cragplume Cauldron."_
		Speak to Chaluna |q 34337/1 |goto Gorgrond 39.9,37.2
	step
		talk Thisalee Crow##78187
		turnin The Giant Cauldron##34337 |goto Gorgrond 54.2,56.1
		accept The Descent##34338 |goto Gorgrond 54.2,56.1
	step
		talk Aren Mistshade##74125
		accept Heating Up##34340 |goto Gorgrond 54.2,55.9
	step
		talk Choluna##89179
		accept A Goren's Feast##34339 |goto Gorgrond 54.2,55.8
	stickystart "gorenfeast"
	step
		_Follow the ramp_ to the very bottom of the cave |goto Gorgrond/20 45.8,60.6 < 20 |walk
		use Aren's Thermometer##110288
		|tip Use Aren's Thermometer in this spot to take the temperature reading.
		Take the Temperature of the Hissing Geyser |q 34340/1 |goto Gorgrond/21 38.0,75.7
	step
		_Continue down_ the side passage |goto Gorgrond/21 46.6,54.1 < 15
		Investigate the Cauldron |q 34338/1 |goto Gorgrond/21 46.2,40.5
	step
	label "gorenfeast"
		kill Dryback Acidroller##78255+, Dryback Devourer##78256+
		collect 8 Engorged Stomach##110278 |q 34339/1 |goto Gorgrond/21 55.1,76.1
	step
		kill Abyssal Earthwarden##78257 |q 34338/2 |goto Gorgrond/21 37.0,46.5
	step
		click Heart of Gorgorek##229161
		|tip It is a huge gold circular plate leaning against the cave wall.
		collect Heart of Gorgorek##110295 |q 34338/3 |goto Gorgrond/21 29.3,45.2
	step
		_Leave_ the cave room |goto Gorgrond/21 47.0,40.1 < 15 |walk
		_Follow Thisalee Crow_ |goto Gorgrond/21 48.4,56.4 < 10
		|tip Watch the cutscene.
		_Step onto_ the geyser |goto Gorgrond/21 53.8,59.2 < 10
		Escape Belcher Cauldron |q 34338/4
	step
		talk Aren Mistshade##74125
		turnin Heating Up##34340 |goto Gorgrond 54.2,55.9
	step
		talk Choluna##89179
		turnin A Goren's Feast##34339 |goto Gorgrond 54.2,55.8
	step
		talk Thisalee Crow##78187
		turnin The Descent##34338 |goto Gorgrond 54.2,56.1
		accept The Beating Heart##34341 |goto Gorgrond 54.2,56.1
	step
		#include "Garrison_WarmasterZog"
		turnin The Beating Heart##34341
	step
		You have completed the _Heart of the Breakers Campaign_
		Click here to return to the start of this guide |confirm |next "start"
	-----Guide End
	step
	label "end"
		Congratulations, you now have _The Garrison Campaign_ Achievement! |only if achieved(9492)
		You have reached the end of the guide |only if default
]])

----------------------
----- Inn Quests -----
----------------------

ZygorGuidesViewer:RegisterInclude("Garrison_Inn_Quests",[[
	-- Auchindoun --
	step
		Use the Group Finder for _Heroic Dungeons_:
		Enter the Auchindoun Dungeon |goto Auchindoun/1 |noway |c
		|tip This could take a long time.
		only if haveq(37156) or haveq(37154)
	step
		click Soulsever Blade##237464
		|tip It's a purple void blade laying near the water.
		collect Soulsever Blade##118619 |q 37156/1 |goto Auchindoun/1 53.5,63.1
	step
		click Soulweave Vessel##237465
		|tip It's a floating purple and pink crystal structure.
		collect Soulweave Vessel##118620 |q 37154/1 |goto Auchindoun/1 24.1,32.5
	step
		kill Teron'gor##77734 |q 37156/2 |goto Auchindoun/1 49.6,33.5
		|tip Teron'gor is the final boss of the dungeon.
	step
		kill Teron'gor##77734 |q 37154/2 |goto Auchindoun/1 49.6,33.5
		|tip Teron'gor is the final boss of the dungeon.
	step
		Leave the Dungeon
		|tip Click the green eye button on your minimap and choose "Leave Instance Group".
		Return to your Garrison |goto Frostwall 50.3,46.9 < 1000 |c
		only if haveq(37156) or haveq(37154)
	step
		#include "Garrison_Medium_Building", action="talk Lilian Voss##87996", building="Inn"
		|tip If you can't find them, check upstairs and in the basement of the inn. The door to the basement is in the kitchen of the Frostwall Inn.
		turnin The Soulcutter##37156
	step
		#include "Garrison_Medium_Building", action="talk Leonid Barthalomew the Revered##87997", building="Inn"
		|tip If you can't find them, check upstairs and in the basement of the inn. The door to the basement is in the kitchen of the Frostwall Inn.
		turnin The Cure For Death##37154
	-- Bloodmaul Slag Mines --
	step
		Use the Group Finder for _Heroic Dungeons_:
		Enter the Bloodmaul Slag Mines Dungeon |goto Bloodmaul Slag Mines/1 |noway |c
		|tip This could take a long time.
		only if haveq(37152) or haveq(37153)
	step
		kill Bloodmaul Enforcer##84978+, Bloodmaul Slaver##75191+
		collect Giant Ogre Head##118534 |q 37152/1 |goto Bloodmaul Slag Mines 45,55
	step
		click Olaf's Shield##237461
		|tip It's a small brown buckler shield found laying on the ground.
		collect Olaf's Shield##118616 |q 37153/1 |goto Bloodmaul Slag Mines/1 45.6,56.5
	step
		kill Gug'rokk##74790 |q 37152/2 |goto Bloodmaul Slag Mines/1 65.4,22.7
		|tip Gug'rokk is the final boss of the dungeon.
	step
		kill Gug'rokk##74790 |q 37153/2 |goto Bloodmaul Slag Mines/1 65.4,22.7
		|tip Gug'rokk is the final boss of the dungeon.
	step
		Leave the Dungeon
		|tip Click the green eye button on your minimap and choose "Leave Instance Group".
		Return to your Garrison |goto Frostwall 50.3,46.9 < 1000 |c
		only if haveq(37152) or haveq(37153)
	step
		#include "Garrison_Medium_Building", action="talk Cro Threadstrong##87991", building="Inn"
		|tip If you can't find them, check upstairs and in the basement of the inn. The door to the basement is in the kitchen of the Frostwall Inn.
		turnin Cro's Revenge##37152
	step
		#include "Garrison_Medium_Building", action="talk Olaf##87992", building="Inn"
		|tip If you can't find them, check upstairs and in the basement of the inn. The door to the basement is in the kitchen of the Frostwall Inn.
		turnin Time-Lost Vikings##37153
	-- Everbloom --
	step
		Use the Group Finder for _Heroic Dungeons_:
		Enter the Everbloom Dungeon |goto The Everbloom/1 |noway |c
		only if haveq(37150) or haveq(37165) or haveq(37166)
	step
		click Overgrown Artifact##237473
		|tip It's a bright yellow crate found inside one of the trees.
		collect Overgrown Artifact##118628 |q 37166/1 |goto The Everbloom/1 60.9,66.5
	step
		click Strangely-Glowing Frond##237472
		|tip It's a green and yellow plant growing at the base of a tree.
		collect Strangely-Glowing Frond##118627 |q 37165/1 |goto The Everbloom/1 64.3,20.4
	step
		click Rustling Peachick Nest##237483
		|tip It's a small yellow nest found amongst roots and bushes.
		collect Tiny Peachick Hatchling##118652 |q 37150/1 |goto The Everbloom/1 55.5,22.2
	step
		kill Yalnu##83846 |q 37166/2 |goto The Everbloom/2 47.0,67.0
		|tip Yalnu is the final boss of the dungeon.
	step
		kill Yalnu##83846 |q 37165/2 |goto The Everbloom/2 47.0,67.0
		|tip Yalnu is the final boss of the dungeon.
	step
		kill Yalnu##83846 |q 37150/2 |goto The Everbloom/2 47.0,67.0
		|tip Yalnu is the final boss of the dungeon.
	step
		Leave the Dungeon
		|tip Click the green eye button on your minimap and choose "Leave Instance Group".
		Return to your Garrison |goto Frostwall 50.3,46.9 < 1000 |c
		only if haveq(37166) or haveq(37165) or haveq(37150)
	step
		#include "Garrison_Medium_Building", action="talk Lorewalker Cho##88005", building="Inn"
		|tip If you can't find them, check upstairs and in the basement of the inn. The door to the basement is in the kitchen of the Frostwall Inn.
		turnin Titanic Evolution##37166
	step
		#include "Garrison_Medium_Building", action="talk Zen'kiki##88004", building="Inn"
		|tip If you can't find them, check upstairs and in the basement of the inn. The door to the basement is in the kitchen of the Frostwall Inn.
		turnin Cenarion Concerns##37165
	step
		#include "Garrison_Medium_Building", action="talk Mylune##88025", building="Inn"
		|tip If you can't find them, check upstairs and in the basement of the inn. The door to the basement is in the kitchen of the Frostwall Inn.
		turnin For the Birds##37150
	-- Grimrail Depot --
	step
		Use the Group Finder for _Heroic Dungeons_:
		Enter the Grimrail Depot Dungeon |goto Grimrail Depot/1 |noway |c
		|tip This could take a long time.
		only if haveq(37167) or haveq(37160) or haveq(37151)
	step
		click Huge Crate of Weapons##237474
		|tip It's a glowing crate found just before the first boss, Rocketspark and Borka.
		collect Huge Crate of Weapons##118643 |q 37167/1 |goto Grimrail Depot/1 54.7,38.9
	step
		click Iron Limbcleaver##237475
		|tip It's a large spiked axe found in a weapon crate.
		collect Iron Limbcleaver##118644 |q 37160/1 |goto Grimrail Depot/3 53.8,52.5
	step
		click Iron Autocannon##237484
		|tip It's a small, dark colored cannon sitting on top of a crate.
		collect Iron Autocannon##118653 |q 37151/1 |goto Grimrail Depot/4 67.4,47.5
	step
		kill Skylord Tovra##80005 |q 37167/2 |goto Grimrail Depot/4 15.3,51.7
		|tip Skylord Tovra is the final boss of the dungeon.
	step
		kill Skylord Tovra##80005 |q 37160/2 |goto Grimrail Depot/4 15.3,51.7
		|tip Skylord Tovra is the final boss of the dungeon.
	step
		kill Skylord Tovra##80005 |q 37151/2 |goto Grimrail Depot/4 15.3,51.7
		|tip Skylord Tovra is the final boss of the dungeon.
	step
		Leave the Dungeon
		|tip Click the green eye button on your minimap and choose "Leave Instance Group".
		Return to your Garrison |goto Frostwall 50.3,46.9 < 1000 |c
		only if haveq(37167) or haveq(37160) or haveq(37151)
	step
		#include "Garrison_Medium_Building", action="talk Lonika Stillblade##88006", building="Inn"
		|tip If you can't find them, check upstairs and in the basement of the inn. The door to the basement is in the kitchen of the Frostwall Inn.
		turnin And No Maces!##37167
	step
		#include "Garrison_Medium_Building", action="talk Gamon##88007", building="Inn"
		|tip If you can't find them, check upstairs and in the basement of the inn. The door to the basement is in the kitchen of the Frostwall Inn.
		turnin Cleaving Time##37160
	step
		#include "Garrison_Medium_Building", action="talk John J. Keeshan##88026", building="Inn"
		|tip If you can't find them, check upstairs and in the basement of the inn. The door to the basement is in the kitchen of the Frostwall Inn.
		turnin Cold Steel##37151
	-- Iron Docks --
	step
		Use the Group Finder for _Heroic Dungeons_:
		Enter the Iron Docks Dungeon |goto Iron Docks/1 |noway |c
		|tip This could take a long time.
		only if haveq(37155) or haveq(37157)
	step
		click Strange Brass Compass##237463
		|tip It's a small gold compass found laying near a barrel.
		collect Strange Brass Compass##118618 |q 37155/1 |goto Iron Docks/1 47.2,26.3
	step
		click Horribly Acidic Solution##237462
		|tip It's a small glowing vial sitting on a barrel.
		collect Horribly Acidic Solution##118617 |q 37157/1 |goto Iron Docks/1 50.2,52.2
	step
		kill Skulloc##83612 |q 37155/2 |goto Iron Docks/1 68.4,43.6
		|tip Skulloc is the final boss of the dungeon.
	step
		kill Skulloc##83612 |q 37157/2 |goto Iron Docks/1 68.4,43.6
		|tip Skulloc is the final boss of the dungeon.
	step
		Leave the Dungeon
		|tip Click the green eye button on your minimap and choose "Leave Instance Group".
		Return to your Garrison |goto Frostwall 50.3,46.9 < 1000 |c
		only if haveq(37155) or haveq(37157)
	step
		#include "Garrison_Medium_Building", action="talk Fleet Master Seahorn##87995", building="Inn"
		|tip If you can't find them, check upstairs and in the basement of the inn. The door to the basement is in the kitchen of the Frostwall Inn.
		turnin The Brass Compass##37155
	step
		#include "Garrison_Medium_Building", action="talk Moroes##87994", building="Inn"
		|tip If you can't find them, check upstairs and in the basement of the inn. The door to the basement is in the kitchen of the Frostwall Inn.
		turnin Feeling A Bit Morose##37157
	-- Shadowmoon Burial Grounds --
	step
		Use the Group Finder for _Heroic Dungeons_:
		Enter the Shadowmoon Burial Ground Dungeon |goto Shadowmoon Burial Grounds/1 |noway |c
		|tip This could take a long time.
		only if haveq(37149) or haveq(37164) or haveq(37163)
	step
		Jump down the hole |goto Shadowmoon Burial Grounds/1 52.5,77.6 < 10
		click Void-Gate Key##237482
		|tip It's a floating purple crystal found in a small underground room.
		collect Void-Gate Key##118651 |q 37149/1 |goto Shadowmoon Burial Grounds/1 38.0,50.8
	step
		click Silver-Lined Arrow##237471
		|tip It's a small arrow laying on a table next to candles and a skull.
		collect Silver-Lined Arrow##118626 |q 37164/1 |goto Shadowmoon Burial Grounds/1 83.6,80.6
	step
		click Dark Parchment##237470
		|tip It's a small rolled up paper found on the ground inside the dungeon's first room.
		collect Dark Parchment##118625 |q 37163/1 |goto Shadowmoon Burial Grounds/1 30.0,42.9
	step
		kill Ner'zhul##76407 |q 37149/2 |goto Shadowmoon Burial Grounds/3 48.1,47.1
		|tip Ner'zhul is the final boss of the dungeon.
	step
		kill Ner'zhul##76407 |q 37164/2 |goto Shadowmoon Burial Grounds/3 48.1,47.1
		|tip Ner'zhul is the final boss of the dungeon.
	step
		kill Ner'zhul##76407 |q 37163/2 |goto Shadowmoon Burial Grounds/3 48.1,47.1
		|tip Ner'zhul is the final boss of the dungeon.
	step
		Leave the Dungeon
		|tip Click the green eye button on your minimap and choose "Leave Instance Group".
		Return to your Garrison |goto Frostwall 50.3,46.9 < 1000 |c
		only if haveq(37149) or haveq(37164) or haveq(37163)
	step
		#include "Garrison_Medium_Building", action="talk Impsy##88027", building="Inn"
		|tip If you can't find them, check upstairs and in the basement of the inn. The door to the basement is in the kitchen of the Frostwall Inn.
		turnin The Void-Gate##37149
	step
		#include "Garrison_Medium_Building", action="talk Cowled Ranger##88003", building="Inn"
		|tip If you can't find them, check upstairs and in the basement of the inn. The door to the basement is in the kitchen of the Frostwall Inn.
		turnin The Huntresses##37164
	step
		#include "Garrison_Medium_Building", action="talk Highlord Darion Mograine##88002", building="Inn"
		|tip If you can't find them, check upstairs and in the basement of the inn. The door to the basement is in the kitchen of the Frostwall Inn.
		turnin Shadowy Secrets##37163
	-- Skyreach --
	step
		Use the Group Finder for _Heroic Dungeons_:
		Enter the Skyreach Dungeon |goto Skyreach/1 |noway |c
		|tip This could take a long time.
		only if haveq(37159) or haveq(37158)
	step
		click Pristine Plumage##237467
		|tip It's a small blue quill sitting on a table before the first boss, Ranjit.
		collect Pristine Plumage##118622 |q 37159/1 |goto Skyreach/1 63.8,24.9
	step
		click Sun Crystal##237466
		|tip It's a small gold crystal found sitting on the right side of the platform.
		collect Sun Crystal##118621 |q 37158/1 |goto Skyreach/1 52.9,48.6
	step
		kill High Sage Viryx##76266 |q 37159/2 |goto Skyreach/2 48.8,33.3
		|tip High Sage Viryx is the final boss of the dungeon.
	step
		kill High Sage Viryx##76266 |q 37158/2 |goto Skyreach/2 48.8,33.3
		|tip High Sage Viryx is the final boss of the dungeon.
	step
		Leave the Dungeon
		|tip Click the green eye button on your minimap and choose "Leave Instance Group".
		Return to your Garrison |goto Frostwall 50.3,46.9 < 1000 |c
		only if haveq(37159) or haveq(37158)
	step
		#include "Garrison_Medium_Building", action="talk Skylord Omnuron##87999", building="Inn"
		|tip If you can't find them, check upstairs and in the basement of the inn. The door to the basement is in the kitchen of the Frostwall Inn.
		turnin Aviana's Request##37159
	step
		#include "Garrison_Medium_Building", action="talk Sunwalker Dezco##87998", building="Inn"
		|tip If you can't find them, check upstairs and in the basement of the inn. The door to the basement is in the kitchen of the Frostwall Inn.
		turnin Gloriously Incandescent##37158
	-- Upper Blackrock Spire --
	step
		Use the Group Finder for _Heroic Dungeons_:
		Enter the Upper Blackrock Spire Dungeon |goto Upper Blackrock Spire 2/1 |noway |c
		|tip This could take a long time.
		only if haveq(37161) or haveq(37162) or haveq(37148) or haveq(37179)
	step
		click Bottled Flamefly##237481
		|tip It's a glass jar with small twigs inside found sitting on a barrel.
		collect Spire Flamefly##118650 |q 37148/1 |goto Upper Blackrock Spire 2/1 36.0,16.7
	step
		click Finkle's Improved Skinner##237468
		|tip It's a small knife laying near bones found before the dungeon's second boss, Kyrak.
		collect Finkle's Immproved Skinner##118623 |q 37161/1 |goto Upper Blackrock Spire 2/2 30.3,38.3
	step
		click Shed Proto-Dragon Claw##237469
		|tip It's a small black claw laying on the ground of the Blackrock Stadium.
		collect Shed Proto-Dragon Claw##118624 |q 37162/1 |goto Upper Blackrock Spire 2/3 48.5,19.52
	step
		click Miniature Iron Star##237476
		|tip It looks like a dark metal cannon ball with spikes on it on the ground.
		collect Miniature Iron Star##118645 |q 37179/1 |goto Upper Blackrock Spire 2/3 33.4,54.2
	step
		kill Warlord Zaela##77120 |q 37148/2 |goto Upper Blackrock Spire 2/3 14.1,47.7
		|tip Warlord Zaela is the final boss of the dungeon.
	step
		kill Warlord Zaela##77120 |q 37161/2 |goto Upper Blackrock Spire 2/3 14.1,47.7
		|tip Warlord Zaela is the final boss of the dungeon.
	step
		kill Warlord Zaela##77120 |q 37162/2 |goto Upper Blackrock Spire 2/3 14.1,47.7
		|tip Warlord Zaela is the final boss of the dungeon.
	step
		kill Warlord Zaela##77120 |q 37179/2 |goto Upper Blackrock Spire 2/3 14.1,47.7
		|tip Warlord Zaela is the final boss of the dungeon.
	step
		Leave the Dungeon
		|tip Click the green eye button on your minimap and choose "Leave Instance Group".
		Return to your Garrison |goto Frostwall 50.3,46.9 < 1000 |c
		only if haveq(37161) or haveq(37162) or haveq(37148) or haveq(37179)
	step
		#include "Garrison_Medium_Building", action="talk Oralius##88024", building="Inn"
		|tip If you can't find them, check upstairs and in the basement of the inn. The door to the basement is in the kitchen of the Frostwall Inn.
		turnin Oralius' Adventure##37148
	step
		#include "Garrison_Medium_Building", action="talk Finkle Einhorn##88000", building="Inn"
		|tip If you can't find them, check upstairs and in the basement of the inn. The door to the basement is in the kitchen of the Frostwall Inn.
		turnin Family Traditions##37161
	step
		#include "Garrison_Medium_Building", action="talk Maximillian of Northshire##88001", building="Inn"
		|tip If you can't find them, check upstairs and in the basement of the inn. The door to the basement is in the kitchen of the Frostwall Inn.
		turnin Damsels and Dragons##37162
	step
		#include "Garrison_Medium_Building", action="talk Millhouse Manastorm##88009", building="Inn"
		|tip He's upstairs in the Frostwall Inn.
		turnin For The Children!##37179
]])